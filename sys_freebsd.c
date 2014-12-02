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

#include <sys/types.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/resource.h>
#include <sys/sysctl.h>
#include <time.h>
#include <sys/errno.h>
#include <string.h>
#include "include/bubblemon.h"
#include "include/sys_include.h"

extern BubbleMonData bm;

#define GETSYSCTL(name, var) getsysctl(name, &(var), sizeof(var))

static void getsysctl(const char *name, void *ptr, size_t len)
{
    size_t nlen = len;

    if (sysctlbyname(name, ptr, &nlen, NULL, 0) == -1) {
        fprintf(stderr, "sysctl(%s...) failed: %s\n", name,
	        strerror(errno));
	exit(1);
    }
    if (nlen != len) {
	fprintf(stderr, "sysctl(%s...) expected %lu, got %lu\n",
	        name, (unsigned long)len, (unsigned long)nlen);
	exit(1);
    }
}

/* Returns the current CPU load in percent */
int system_cpu(void)
{
    int loadPercentage;
    int previous_total, previous_load;
    int total, load;
    unsigned long int cpu_time[CPUSTATES];
    int i;

    GETSYSCTL("kern.cp_time", cpu_time);

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
    u_int new_swappgsin, new_swappgsout;
    u_int my_mem_used, my_mem_max;
    u_int pagesize;
    static int swappgsin = -1;
    static int swappgsout = -1;
    static int swap_firsttime = 1;
    static int swapavail = 0, swapused = 0;
    static time_t last_time_swap = 0;
    time_t curr_time;

    GETSYSCTL("vm.stats.vm.v_page_count", my_mem_max);
    GETSYSCTL("vm.stats.vm.v_active_count", my_mem_used);
    GETSYSCTL("hw.pagesize", pagesize);

    /* only calculate when first time or when changes took place */
    /* do not call it more than 1 time per 2 seconds */
    /* otherwise it can eat up to 50% of CPU time on heavy swap activity */
    curr_time = time(NULL);

    GETSYSCTL("vm.stats.vm.v_swappgsin", new_swappgsin);
    GETSYSCTL("vm.stats.vm.v_swappgsout", new_swappgsout);

    if (swap_firsttime ||
        (((new_swappgsin > swappgsin) || (new_swappgsout > swappgsout)) &&
        curr_time > last_time_swap + 1)) {
        int mib[2], n;
        size_t mibsize, size;
        struct xswdev xsw;

        mibsize = sizeof(mib) / sizeof(mib[0]);
        if (sysctlnametomib("vm.swap_info", mib, &mibsize) == -1) {
            fprintf(stderr, "sysctlnametomib() failed %s\n",
                    strerror(errno));
            return;
        }

        swapavail = 0;
        swapused = 0;

        for (n = 0; ; n++) {
            mib[mibsize] = n;
            size = sizeof(xsw);
            if (sysctl(mib, mibsize + 1, &xsw, &size, NULL, 0) == -1) {
                if (errno == ENOENT)
                    break;
                fprintf(stderr, "sysctl() failed: %s\n",
                        strerror(errno));
                return;
            }
            swapavail += xsw.xsw_nblks;
            swapused += xsw.xsw_used;
        }

        swap_firsttime = 0;
        last_time_swap = curr_time;
    }

    swappgsin = new_swappgsin;
    swappgsout = new_swappgsout;

    bm.mem_used = my_mem_used * pagesize;
    bm.mem_max = my_mem_max * pagesize;
    bm.swap_used = swapused * pagesize;
    bm.swap_max = swapavail * pagesize;
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
