/*  WMBubble dockapp 1.2 - FreeBSD specific code
 *  Copyright (C) 2001, oleg dashevskii <od@iclub.nsu.ru>
 *  
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Street #330, Boston, MA 02111-1307, USA.
 *
 */

#include <kvm.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/dkstat.h>
#include <sys/vmmeter.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <sys/sysctl.h>
#include <vm/vm_param.h>
#include <time.h>
#include "include/bubblemon.h"
#include "include/sys_include.h"

extern BubbleMonData bm;

static kvm_t *kd = NULL;
static struct nlist nlst[] = {
    {"_cnt", 0},
    {"_bufspace", 0},
    {0, 0}
};
static int pageshift;

#define pagetob(size) ((size) << pageshift)

int init_stuff()
{
    /* calculate page shift to convert pages into kilobytes */
    int pagesize = getpagesize();
    pageshift = 0;

    while (pagesize > 1) {
	pageshift++;
	pagesize >>= 1;
    }

    /* open kernel memory */
    kd = kvm_open(NULL, NULL, NULL, O_RDONLY, "kvm_open");

    if (kd == NULL) {
	puts("Could not open kernel virtual memory");
	return 1;
    }

    kvm_nlist(kd, nlst);

    if (nlst[0].n_type == 0 || nlst[1].n_type == 0) {
	puts("Error extracting symbols");
	return 2;
    }

    /* drop setgid & setuid (the latter should not be there really) */
    seteuid(getuid());
    setegid(getgid());

    if (geteuid() != getuid() || getegid() != getgid()) {
	puts("Unable to drop privileges");
	return 3;
    }

    return 0;
}

/* Returns the current CPU load in percent */
int system_cpu(void)
{
    int loadPercentage;
    int previous_total, previous_load;
    int total, load;
    unsigned long int cpu_time[CPUSTATES];
    int i;

    static int mib[2];
    size_t len = 2;

    size_t size;

    if (sysctlnametomib("kern.cp_time", mib, &len) < 0)
        return 0;

    size = sizeof (cpu_time);


    if (sysctl(mib, 2, &cpu_time, &size, NULL, 0) < 0)
        return 0;

    load = cpu_time[CP_USER] + cpu_time[CP_SYS] + cpu_time[CP_NICE];
    total = load + cpu_time[CP_IDLE];

    i = bm.loadIndex;
    previous_load = bm.load[i];
    previous_total = bm.total[i];

    bm.load[i] = load;
    bm.total[i] = total;
    bm.loadIndex = (i + 1) % bm.samples;

    if (previous_total == 0)
	loadPercentage = 0;	/* first time here */
    else
	if (total == previous_total)
	    loadPercentage = 100;
    	else
	    loadPercentage = (100 * (load - previous_load)) /
	    	(total - previous_total);

    return loadPercentage;
}

void system_memory(void)
{
    u_int64_t my_mem_used, my_mem_max;
    u_int64_t my_swap_used, my_swap_max;
    struct vmmeter sum;
    int bufspace;
    static int swappgsin = -1;
    static int swappgsout = -1;
    static int swap_firsttime = 1;
    static int swapavail = 0, swapused = 0;
    static time_t last_time_swap = 0;
    time_t curr_time;
	
    if (kvm_read(kd, nlst[0].n_value, &sum, sizeof(sum)) != sizeof(sum))
	return;		/* _cnt */

    if (kvm_read(kd, nlst[1].n_value, &bufspace, sizeof(bufspace)) !=
	sizeof(bufspace))
	return;		/* _bufspace */

    my_mem_max = pagetob((u_int64_t) sum.v_page_count);
    my_mem_used = pagetob((u_int64_t) sum.v_active_count);

    /* only calculate when first time or when changes took place */
    /* do not call it more than 1 time per 2 seconds */
    /* otherwise it can eat up to 50% of CPU time on heavy swap activity */
    curr_time = time(NULL);
    
    if (swap_firsttime ||
	(((sum.v_swappgsin > swappgsin) || (sum.v_swappgsout > swappgsout)) &&
	curr_time > last_time_swap + 1)) {
	
	struct kvm_swap swap;
	int n;

	swapavail = 0;
	swapused = 0;

	n = kvm_getswapinfo(kd, &swap, 1, 0);
	if (n >= 0 && swap.ksw_total != 0) {
	    swapavail = pagetob(swap.ksw_total);
	    swapused = pagetob(swap.ksw_used);
	}

	swap_firsttime = 0;
	last_time_swap = curr_time;
    }

    my_swap_used = swapused;
    my_swap_max = swapavail;

    swappgsin = sum.v_swappgsin;
    swappgsout = sum.v_swappgsout;

    bm.mem_used = my_mem_used;
    bm.mem_max = my_mem_max;
    bm.swap_used = my_swap_used;
    bm.swap_max = my_swap_max;
}

void system_loadavg(void)
{
	struct loadavg loadinfo;
	int i, mib[2];
	size_t size;

	mib[0] = CTL_VM;
	mib[1] = VM_LOADAVG;
	size = sizeof (loadinfo);
	
	if (sysctl(mib, 2, &loadinfo, &size, NULL, 0) >= 0)
		for (i = 0; i < 3; i++) {
			bm.loadavg[i].i = loadinfo.ldavg[i] / loadinfo.fscale;
			bm.loadavg[i].f = ((loadinfo.ldavg[i] * 100 + 
			                    loadinfo.fscale / 2) / loadinfo.fscale) % 100;
		}
}

/* ex:set ts=8: */
