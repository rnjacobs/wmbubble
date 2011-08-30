/*  BubbleMon dockapp 1.2 - SunOS specific code
 *  Copyright 2001 Phil Lu <wplu13@netscape.net>
 *  Copyright 2001 Dan Price <dp@rampant.org>
 *  vim: ts=4 sw=4
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

/*
 * This file is best viewed with tab stop set to 4 spaces ...
 *
 *	For Nedit, from ~/.nedit:
 *		nedit.tabDistance: 4
 *	For vi*, from ~/.exrc:
 *		set ts=4 sw=4
 */

#include <sys/kstat.h>
#include <sys/cpuvar.h>
#include <sys/swap.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <strings.h>
#include <kstat.h>
#include <utmp.h>
#include <math.h>

#include "include/bubblemon.h"
#include "include/sys_include.h"

extern BubbleMonData bm;

static kstat_ctl_t *kc = 0;
static kstat_t **cpu_ksp_list = 0;
static int ncpus = 0;

static void GetMemoryStats(u_int64_t *pMemMax, u_int64_t *pMemFree);
static void GetSwapStats(u_int64_t *pSwapTotal, u_int64_t *pSwapFree);
static void GetCPULoadAverage(float *one_m, float *five_m, float *fift_m);

static int dbg_print_mem = 0;	/* from environment: DBG_PRINT_MEM=interval */
static int dbg_print_cpu = 0;	/* from environment: DBG_PRINT_CPU=interval */
static int dbg_hardcode = 0;	/* from environment: DBG_HARDCODE */


/*
 * setup_system() gets called to initialize everything specific to Solaris,
 * and when kstat_chain_update() indicates that the kernel's kstat chain has
 * altered.
 *
 * When that occurs, CPUs may have come on- or off-line, so we need to
 * rediscover the system cpus.
 */
void setup_system()
{
	char *str = 0;
	kstat_t *ksp = 0;
	static int bootstrap = 1;
	int i = 0;

	if (bootstrap) {
		/* grab debugging flags from environment */
		if ((str = getenv("DBG_PRINT_MEM")))
			dbg_print_mem = atoi(str);
		if ((str = getenv("DBG_PRINT_CPU")))
			dbg_print_cpu = atoi(str);
		if ((str = getenv("DBG_HARDCODE")))
			dbg_hardcode = 1;

		if ((kc = kstat_open()) == NULL) {
			perror("can't open /dev/kstat");
			exit(1);
		}
		bootstrap = 0;
	}

	/*
	 * User selected to monitor all CPUs.  First, count them.
	 */
	for (i = 0, ksp = kc->kc_chain; ksp; ksp = ksp->ks_next) {
		if (strcmp(ksp->ks_module, "cpu_stat") == 0)
			i++;
	}

	if (cpu_ksp_list) {
		free(cpu_ksp_list);
	}

	cpu_ksp_list = (kstat_t **) calloc(i * sizeof (kstat_t *), 1);
	ncpus = i;

	/*
	 * stash the ksp for each CPU.
	 */
	for (i = 0, ksp = kc->kc_chain; ksp; ksp = ksp->ks_next) {
		if (strcmp(ksp->ks_module, "cpu_stat") == 0) {
			cpu_ksp_list[i] = ksp;
			i++;
		}
	}
}

/* returns current CPU load in percent, 0 to 100 */
int system_cpu(void)
{
	static int previous_total = 0, previous_used = 0;
	int used = 0, idle = 0, total = 0, i = 0, t = 0;
	cpu_stat_t stat;

	if (dbg_hardcode)
		return 20;

	if (kc == NULL || kstat_chain_update(kc)) {
		setup_system();
	}

	/*
	 * Read each cpu's data.  If the kstat chain has changed (a state change
	 * has happened, maybe a new cpu was added to the system or one went
	 * away), then reinitialize everything with setup_system().  Finally,
	 * recursively call system_cpu()
	 *
	 * We'll need to do a little better than this in the future, since we
	 * could recurse too much in the pathological case here.
	 */

	for (i = 0; i < ncpus; i++) {
		if (kstat_read(kc, cpu_ksp_list[i], (void *)&stat) == -1) {
			setup_system();
			return (system_cpu());
		}
		used += stat.cpu_sysinfo.cpu[CPU_USER];   /* user */
		used += stat.cpu_sysinfo.cpu[CPU_KERNEL]; /* sys */
		used += stat.cpu_sysinfo.cpu[CPU_WAIT]; /* wait */
		idle += stat.cpu_sysinfo.cpu[CPU_IDLE];   /*idle ("free") */
	}

	total = used + idle;
	t = 100 * (double)(used - previous_used) /
	    (double)(total - previous_total);
	previous_total = total;
	previous_used = used;

	if (dbg_print_cpu) {
		static int i = 0;
		if (0 == (i % dbg_print_cpu)) {
			printf("system_cpu: %d%%, total=%d\n", t, total);
			printf("system_cpu: used=%d, idle=%d\n", used, idle);
		}
		i++;
	}
	return (t);
}

typedef struct TMyMem {
	u_int64_t lMemMax;
	u_int64_t lMemFree;
	u_int64_t lSwapMax;
	u_int64_t lSwapFree;
} MyMem;

int system_memory(void)
{
	static MyMem last = { 100, 20, 200, 10, };
	MyMem         cur = { 100, 20, 200, 10, };
	int rc = 0;

	if (dbg_hardcode) {
		bm.mem_max   = 100;
		bm.mem_used  =  20;
		bm.swap_max  = 200;
		bm.swap_used =   0;
		return 1;
	}

	GetSwapStats(&cur.lSwapMax, &cur.lSwapFree);
	bm.swap_max = cur.lSwapMax;
	bm.swap_used = cur.lSwapMax - cur.lSwapFree;

	GetMemoryStats(&cur.lMemMax, &cur.lMemFree);
	bm.mem_max = cur.lMemMax + cur.lSwapMax;
	bm.mem_used = cur.lMemMax - cur.lMemFree + bm.swap_used;

	if (dbg_print_mem) {
		static int i = 0;
		if (0 == (i % dbg_print_mem)) {
			printf("system_memory: mem:  max=%llu used=%llu\n",
			    bm.mem_max, bm.mem_used);
			printf("system_memory: swap: max=%llu used=%llu\n",
			    bm.swap_max, bm.swap_used);
		}
		i++;
	}

	/* if memory info changed - update things */
	rc = (0 == memcmp(&last, &cur, sizeof(last)) ? 0 : 1);

	memcpy(&last, &cur, sizeof(last));
	return rc;
}

#ifdef ENABLE_MEMSCREEN
void system_loadavg(void)
{
	static int avg_delay = 0;
	float one_m = 0, five_m = 0, fift_m = 0;

	if (dbg_hardcode) {
		bm.loadavg[0].i = 0; bm.loadavg[0].f = 53;  /* 0.53 */
		bm.loadavg[1].i = 0; bm.loadavg[1].f = 45;  /* 0.45 */
		bm.loadavg[2].i = 0; bm.loadavg[2].f = 38;  /* 0.38 */
		return;
	}

	if (avg_delay-- <= 0) {
		GetCPULoadAverage(&one_m, &five_m, &fift_m);

		if (dbg_print_cpu) {
			static int i = 0;
			if (0 == (i % dbg_print_cpu))
				printf("loadavg: %0.2f %0.2f %0.2f\n",
				    one_m, five_m, fift_m);
			i++;
		}

		bm.loadavg[0].i = floor(one_m);
		bm.loadavg[0].f = 100 * (one_m - floor(one_m));
		bm.loadavg[1].i = floor(five_m);
		bm.loadavg[1].f = 100 * (five_m - floor(five_m));
		bm.loadavg[2].i = floor(fift_m);
		bm.loadavg[2].f = 100 * (fift_m - floor(fift_m));
		avg_delay = ROLLVALUE;
	}
}
#endif				/* ENABLE_MEMSCREEN */

static void GetMemoryStats(u_int64_t *pMemMax, u_int64_t *pMemFree)
{
	uint_t lPagesToBytesMult = sysconf(_SC_PAGESIZE);

	*pMemMax  = (uint64_t)sysconf(_SC_PHYS_PAGES)   * lPagesToBytesMult;
	*pMemFree = (uint64_t)sysconf(_SC_AVPHYS_PAGES) * lPagesToBytesMult;

	if (dbg_print_mem) {
		static int i = 0;
		if (0 == (i % dbg_print_mem)) {
			printf("GetMemoryStats:  pMemMax=%llu Bytes\n", *pMemMax);
			printf("GetMemoryStats: pMemFree=%llu Bytes\n", *pMemFree);
		}
		i++;
	}
}

static void GetSwapStats(u_int64_t *pSwapTotal, u_int64_t *pSwapFree)
{
	struct anoninfo anon;
	uint_t lPagesToBytesMult = sysconf(_SC_PAGESIZE);

	if (swapctl(SC_AINFO, &anon) == -1) {
		perror("swapctl failed");
		/* let's not blow up code by setting stuff to 0 :) */
		*pSwapTotal = *pSwapFree = 1;
		return;
	}

	*pSwapTotal = lPagesToBytesMult * (anon.ani_max);
	*pSwapFree  = lPagesToBytesMult * (anon.ani_max - anon.ani_resv);

	if (dbg_print_mem) {
		static int i = 0;
		if (0 == (i % dbg_print_mem)) {
			(void) printf("GetSwapStats:  pSwapMax=%llu Bytes\n",
			    *pSwapTotal);
			(void) printf("GetSwapStats: pSwapFree=%llu Bytes\n",
			    *pSwapFree);
		}
		i++;
	}
}

/*
 * we'd prefer to use getloadavg(3C) but it wasn't present in Solaris until
 * sunos 5.7. (sigh)
 */
static void GetCPULoadAverage(float *one_m, float *five_m, float *fift_m)
{
	kstat_named_t *kn = 0;
	kstat_t *ks = 0;

	if (kc == NULL || kstat_chain_update(kc)) {
		setup_system();
	}

	ks = kstat_lookup(kc, "unix", 0, "system_misc");
	if (kstat_read(kc, ks, 0) == -1) {
		perror("kstat_read");
		exit(1);
	}

	/*
	 *  Get the 1, 5 and 15min load average.
	 */
	kn = kstat_data_lookup(ks, "avenrun_1min");
	*one_m = kn->value.ul / (ncpus * 256.0);

	kn = kstat_data_lookup(ks, "avenrun_5min");
	*five_m = kn->value.ul / (ncpus * 256.0);

	kn = kstat_data_lookup(ks, "avenrun_15min");
	*fift_m = kn->value.ul / (ncpus * 256.0);
}
