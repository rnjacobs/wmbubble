/*  BubbleMon dockapp 1.2
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

#ifndef _BUBBLEMON_H_
#define _BUBBLEMON_H_

#include <gdk/gdk.h>
#include <gdk/gdkx.h>

/* CPU load alpha-blending: smaller values = ligher text
 * minblend = mouseout
 * maxblend = mousein 
 * min = 0
 * max = 128 */
#if defined(ENABLE_CPU) || defined(ENABLE_MEMSCREEN)
# define MINBLEND 80
# define MAXBLEND 190
#endif

#ifdef ENABLE_DUCK
#define DUCKBLEND 100
#endif

#define MULTIPLIER 4096.0
#define POWER2 12
#define REALY(y) ((y) >> POWER2)
#define MAKEY(y) ((y) << POWER2)
#define MAKE_INTEGER(x) ((int)((x)*MULTIPLIER+0.5))
#define ROLLVALUE 100		/* frequency of history rollover */

#ifdef sun
#include <sys/types.h>
#if defined (uint64_t)
  typedef uint64_t u_int64_t;
#else
  typedef unsigned long long u_int64_t;
#endif /* defined (uint64_t) */
#endif

typedef struct {
    int x;			/* Horizontal coordinate */
    int y;			/* Vertical coordinate   */
    int dy;			/* Vertical velocity     */
} Bubble;

typedef struct {
	int i;			/* integer part */
	int f;			/* fractional part */
} LoadAvg;

typedef struct {
    /* X11 stuff */
    Display *display;
    GdkWindow *win;		/* main window */
    GdkWindow *iconwin;		/* icon window */
    GdkGC *gc;			/* drawing GC */
    GdkPixmap *pixmap;		/* main dockapp pixmap */
    GdkBitmap *mask;		/* dockapp mask */

    /* main image buffer */
    unsigned char rgb_buf[56 * 56 * 3 + 1];

#ifdef ENABLE_MEMSCREEN
    /* memory / swap screen buffer */
    unsigned char mem_buf[56 * 56 * 3 + 1];
    /* memory screen graph buffer */
    unsigned char his_bufa[56 * 31 * 3 + 1];
    /* loadavg screen graph buffer */
    unsigned char his_bufb[56 * 33 * 3 + 1];

    int screen_type;		/* 0 - memory, 1 - cpu */
    int picture_lock;		/* blend coeff not changed when this is not 0 */
#endif

    /* bubble stuff */
    int samples;
    unsigned char *bubblebuf;
    int *colors;
    int *waterlevels;
    int *waterlevels_dy;
    Bubble *bubbles;
    int n_bubbles;

    /* Color definitions */
    int air_noswap, liquid_noswap, air_maxswap, liquid_maxswap;

    /* CPU percentage stuff.  soon to go away */
    int loadIndex;
    u_int64_t *load, *total;

    /* various params */
    int maxbubbles;		/* max bubbles number */
    double ripples;		/* Do we make ripples on the surface after bubbles? */
    double gravity;		/* How fast do the bubbles rise? */
    double volatility;		/* How fast do the water levels accelerate? */
    double viscosity;		/* 0.0 means the liquid never moves.
				   1.0 means the liquid will continue to oscillate forever. */
    double speed_limit;		/* How fast are the water levels allowed to move? */

    /* stuff above in integer format */
    int ripples_int;
    int gravity_int;
    int volatility_int;
    int viscosity_int;
    int speed_limit_int;

    /* system stuff. Moved here because various places need it */
    u_int64_t mem_used;
    u_int64_t mem_max;
    u_int64_t swap_used;
    u_int64_t swap_max;
    unsigned int swap_percent;	/* swap used, in percent */
    unsigned int mem_percent;	/* memory used, in percent */
    /* history of memory use */
    unsigned int memhist[53];
    unsigned int memadd;

    /* loadavg stuff */
    LoadAvg loadavg[3];
    /* history of loadavgs */
    unsigned int history[53];
    unsigned int hisadd;
} BubbleMonData;
#endif				/* _BUBBLEMON_H_ */
