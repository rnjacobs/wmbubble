/*  BubbleMon dockapp 1.32
 *
 *  - dockapp for Window Maker/Blackbox/E/Afterstep/SawBabble
 *  - Code outside of bubblemon_update copyright 2000, 2001
 *    timecop@japan.co.jp
 *  - oleg dashevskii <od@iclub.nsu.ru> made changes to collect memory
 *    and cpu information on FreeBSD.  Some major performance improvements
 *    and other cool hacks.  Useful ideas - memscreen, load screen, etc.
 *  - Adrian B <midnight@bigpond.net.au> came up with the idea of load
 *    meter.
 *  - tarzeau@space.ch sent in cute duck gfx and suggestions, plus some
 *    code and duck motion fixes.
 *  - Phil Lu <wplu13@netscape.net> Dan Price <dp@rampant.org> - Solaris/SunOS
 *    port
 *  - Everything else copyright one of the guys below
 *
 *  TODO: Anything else? Add fish?
 *
 *  *************************************************************************
 * 
 *  Bubbling Load Monitoring Applet
 *  - A GNOME panel applet that displays the CPU + memory load as a
 *    bubbling liquid.
 *  Copyright (C) 1999-2000 Johan Walles
 *  - d92-jwa@nada.kth.se
 *  Copyright (C) 1999 Merlin Hughes
 *  - merlin@merlin.org
 *  - http://nitric.com/freeware/
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
#define _GNU_SOURCE

#define VERSION "1.4"

/* general includes */
#include <stdio.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>

/* x11 includes */
#include <gdk/gdk.h>
#include <gdk/gdkx.h>
#include <X11/Xresource.h>

#include "include/master.xpm"
#include "include/bubblemon.h"
#include "include/sys_include.h"

#ifdef ENABLE_DUCK
#include "include/ducks.h"
#endif
#if defined(ENABLE_CPU)
#include "include/digits.h"
#endif
#if defined(ENABLE_MEMSCREEN)
#include "include/load_screen.h"
#include "include/mem_screen.h"
#endif

/* #define DEBUG_DUCK 1 */

/* local prototypes *INDENT-OFF* */
static void bubblemon_setup_samples(void);
static void bubblemon_setup_colors(void);
static void bubblemon_allocate_buffers(void);
static void bubblemon_update(int proximity);
static void make_new_bubblemon_dockapp(void);
static void get_memory_load_percentage(void);
static void bubblemon_session_defaults(void);
static int get_screen_selection(void);
#if defined(ENABLE_CPU) || defined(ENABLE_MEMSCREEN)
/* draw functions for load average / memory screens */
static void draw_pixel(unsigned int x, unsigned int y, unsigned char *buf,
		       unsigned char *c);
static void draw_history(int num, int size, unsigned int *history,
			 unsigned char *buf);
static void draw_digit(int srcx, int srcy, int destx, int desty);
static void draw_string(char *string, int x, int y, int color);
static void draw_cpudigit(const int what, const int where,
			  unsigned char *kit);

static void render_secondary(void);
static void realtime_alpha_blend_of_cpu_usage(int cpu, int proximity);
static void roll_membuffer(void);
static void roll_history(void);
#endif
#ifdef ENABLE_DUCK
static int animate_correctly(void);
static void duck_set(int x, int y, int nr, int rev, int upsidedown);
static void duck_swimmer(int posy);
#endif
#ifdef __FreeBSD__
extern int init_stuff();	/* defined in sys_freebsd.c */
#endif
/* local prototypes end *INDENT-ON* */

/* global variables */
BubbleMonData bm;

/* compiled-in options string */
char options[1024];

#ifdef ENABLE_DUCK
int duck_enabled = 1;
#ifdef UPSIDE_DOWN_DUCK
int upside_down_duck_enabled = 1;
#endif				/* UPSIDE_DOWN_DUCK */
#endif				/* ENABLE_DUCK */
#ifdef ENABLE_CPU
int cpu_enabled = 1;
#endif				/* ENABLE_CPU */
#ifdef ENABLE_MEMSCREEN
int memscreen_enabled = 1;
int memscreen_megabytes = 0;
#endif				/* ENABLE_MEMSCREEN */

#define INT_VAL 0
#define DOUBLE_VAL 1
#define COLOR_VAL 2

static void bubblemon_session_defaults(void)
{
    /* handy way to collect all this stuff in one place */
    typedef struct {
	char *name;		/* name as appears in Xdefaults */
	int type;		/* int, double, or color, see up */
	void *var;		/* pointer to value - only handles INT atm */
    } xrm_vars;

    /* XResource stuff */
    char name[BUFSIZ] = "", *ptr;
    XrmDatabase db = NULL;
    XrmValue val;
    char *type;
    int i;

    xrm_vars tab[] = {
	{"bubblemon.maxbubbles", INT_VAL, &bm.maxbubbles},
	{"bubblemon.air_noswap", COLOR_VAL, &bm.air_noswap},
	{"bubblemon.air_maxswap", COLOR_VAL, &bm.air_maxswap},
	{"bubblemon.liquid_noswap", COLOR_VAL, &bm.liquid_noswap},
	{"bubblemon.liquid_maxswap", COLOR_VAL, &bm.liquid_maxswap},
	{"bubblemon.ripples", DOUBLE_VAL, &bm.ripples},
	{"bubblemon.gravity", DOUBLE_VAL, &bm.gravity},
	{"bubblemon.volatility", DOUBLE_VAL, &bm.volatility},
	{"bubblemon.viscosity", DOUBLE_VAL, &bm.viscosity},
	{"bubblemon.speed_limit", DOUBLE_VAL, &bm.speed_limit}
    };

    /* number of CPU load samples */
    bm.samples = 16;

    /* default colors.  changeable from Xdefaults */
    bm.air_noswap = 0x2299ff;
    bm.liquid_noswap = 0x0055ff;
    bm.air_maxswap = 0xff0000;
    bm.liquid_maxswap = 0xaa0000;

    /* default bubble engine parameters.  Changeable from Xdefaults */
    bm.maxbubbles = 100;
    bm.ripples = 0.2;
    bm.gravity = 0.01;
    bm.volatility = 1.0;
    bm.viscosity = 0.98;
    bm.speed_limit = 1.0;

    db = NULL;
    XrmInitialize();

    /* get users's local Xdefaults */
    if ((ptr = getenv("HOME")) != NULL) {
	snprintf(name, sizeof(name), "%s/.Xdefaults", ptr);
    }

    /* get the database and parse resources if we have some */
    if ((db = XrmGetFileDatabase(name)) != NULL) {
	for (i = 0; i < (sizeof(tab) / sizeof(tab[0])); i++) {
	    if (XrmGetResource(db, tab[i].name, tab[i].name, &type, &val)) {
		if (val.size > 0)	/* no empty strings and shit like that */
		    switch (tab[i].type) {
		    case INT_VAL:
			*(int *) tab[i].var = atoi(val.addr);
			break;
		    case DOUBLE_VAL:
			*(double *) tab[i].var = atof(val.addr);
			break;
		    case COLOR_VAL:
			sscanf(val.addr, "#%x", (int *) tab[i].var);
			break;
		    default:
			/* WTF? */
			break;
		    }
	    }
	}
    }
#define RANGE_CHECK(x, min, max, def) \
    if ((x) > (max) || (x) < (min)) { \
	fprintf(stderr, #x" value is out of range. Using default value ("#def")\n"); \
	(x) = (def); \
    }

    /* range validation. 3l33t hackerz NO PASARAN */
    RANGE_CHECK(bm.air_noswap, 0, 0xffffff, 0x2299ff);
    RANGE_CHECK(bm.liquid_noswap, 0, 0xffffff, 0x0055ff);
    RANGE_CHECK(bm.air_maxswap, 0, 0xffffff, 0xff0000);
    RANGE_CHECK(bm.liquid_maxswap, 0, 0xffffff, 0xaa0000);

    RANGE_CHECK(bm.maxbubbles, 10, 200, 100);
    RANGE_CHECK(bm.ripples, 0, 1, 0.2);
    RANGE_CHECK(bm.gravity, 0.005, 0.5, 0.01);
    RANGE_CHECK(bm.volatility, 0.1, 2, 1.0);
    RANGE_CHECK(bm.viscosity, 0, 1.0, 0.98);
    RANGE_CHECK(bm.speed_limit, 0.5, 2, 1.0);

#undef RANGE_CHECK

    /* convert doubles into integer representation */
    bm.ripples_int = MAKE_INTEGER(bm.ripples);
    bm.gravity_int = MAKE_INTEGER(bm.gravity);
    bm.volatility_int = MAKE_INTEGER(bm.volatility);
    bm.viscosity_int = MAKE_INTEGER(bm.viscosity);
    bm.speed_limit_int = MAKE_INTEGER(bm.speed_limit);
}

#undef INT_VAL
#undef DOUBLE_VAL
#undef COLOR_VAL

/* *INDENT-OFF* */
static void print_usage(void)
{
    printf( "BubbleMon version "VERSION", features: %s\n"
	    "Usage: bubblemon [switches] [program_1] [program_2]\n\n"
	    "Disable compiled-in features\n"
#ifdef ENABLE_DUCK
	    " -d\tdisable swimming duck\n"
#ifdef UPSIDE_DOWN_DUCK
	    " -u\tdisable upside-down duck\n"
#endif /* UPSIDE_DOWN_DUCK */
#endif /* ENABLE_DUCK */
#ifdef ENABLE_CPU
	    " -c\tdisable CPU meter\n"
#endif /* ENABLE_CPU */
#ifdef ENABLE_MEMSCREEN
	    " -m\tdisable memory screen\n"
#endif /* ENABLE_MEMSCREEN */
	    "\nGeneral options\n"
#ifdef ENABLE_MEMSCREEN
	    " -p\tuse alternative color scheme in memory info screen\n"
	    " -k\tdisplay memory and swap statistics in megabytes\n"
#endif
	    " -h\tdisplay this help\n",
	    options /* this is the global static string with compiled features */
    );
}
/* *INDENT-ON* */

int main(int argc, char **argv)
{
    char execute[256];
    int proximity = 0;
    int ch;
#ifdef FPS
    int f, o;
    time_t y;
#endif
#ifdef PRO
    int cnt = 25000;
#endif
    GdkEvent *event;

#ifdef FPS
    o = f = y = 0;
#endif

    /* initialize GDK */
    if (!gdk_init_check(&argc, &argv)) {
	fprintf(stderr,
		"GDK init failed, bye bye.  Check \"DISPLAY\" variable.\n");
	exit(-1);
    }
    gdk_rgb_init();

    /* dynamically generate getopt string depending on compile options
     * we are going to borrow 256 char string from exec function, and
     * also build up the "compiled features" string */
    memset(execute, 0, 256);
    strcat(execute, "h");	/* help, always in */
#ifdef ENABLE_DUCK
    strcat(options, "DUCK ");
    strcat(execute, "d");
#ifdef UPSIDE_DOWN_DUCK
    strcat(options, "INVERT ");
    strcat(execute, "u");
#endif				/* UPSIDE_DOWN_DUCK */
#endif				/* ENABLE_DUCK */
#ifdef ENABLE_CPU
    strcat(options, "CPU ");
    strcat(execute, "c");
#endif				/* ENABLE_CPU */
#ifdef ENABLE_MEMSCREEN
    strcat(options, "MEMSCREEN ");
    strcat(execute, "pmk");
#endif				/* ENABLE_MEMSCREEN */

    /* command line options */
    while ((ch = getopt(argc, argv, execute)) != -1) {
	switch (ch) {
#ifdef ENABLE_DUCK
	case 'd':
	    duck_enabled = 0;
	    break;
#ifdef UPSIDE_DOWN_DUCK
	case 'u':
	    upside_down_duck_enabled = 0;
	    break;
#endif				/* UPSIDE_DOWN_DUCK */
#endif				/* ENABLE_DUCK */
#ifdef ENABLE_CPU
	case 'c':
	    cpu_enabled = 0;
	    break;
#endif				/* ENABLE_CPU */
#ifdef ENABLE_MEMSCREEN
	case 'm':
	    memscreen_enabled = 0;
	    break;
	case 'p':
	    {
		/* no sense having -p if memscreen isn't compiled in, right?
		 * what we are going to do is to change the colors as follows:
		 * 
		 * (48,140,240) replaced with (158,196,237) - more pale blue
		 * (237,23,23) replaced with (0,255,233) */
		unsigned char *p = mem_screen;

		while (p < mem_screen + sizeof(mem_screen))
		    if (*p == 48) {	/* hopefully no other colors beginning with 48 */
			*p++ = 158;
			*p++ = 196;
			*p++ = 237;
		    } else if (*p == 237) {	/* hopefully no other colors beginning with 237 */
			*p++ = 0;
			*p++ = 255;
			*p++ = 233;
		    } else
			p += 3;

		p = load_screen;

		while (p < load_screen + sizeof(load_screen))
		    if (*p == 48) {	/* hopefully no other colors beginning with 48 */
			*p++ = 158;
			*p++ = 196;
			*p++ = 237;
		    } else
			p += 3;
	    }
	    break;
	case 'k':
	    memscreen_megabytes = 1;
	    break;
#endif				/* ENABLE_MEMSCREEN */
	default:
	    print_usage();
	    exit(-1);
	    break;
	}
    }

    argc -= optind;
    argv += optind;

    /* zero data structure */
    memset(&bm, 0, sizeof(bm));

#ifdef __FreeBSD__
    if (init_stuff())
	exit(-1);
#endif

    /* set default things, from Xresources or compiled-in defaults */
    bubblemon_session_defaults();

    /* create dockapp window. creates windows, allocates memory, etc */
    make_new_bubblemon_dockapp();

#ifdef PRO
    while (cnt--) {
#else
    while (1) {
#endif
	while (gdk_events_pending()) {
	    event = gdk_event_get();
	    if (event) {
		switch (event->type) {
		case GDK_DESTROY:
		    gdk_exit(0);
		    exit(0);
		    break;
		case GDK_BUTTON_PRESS:
		    if (event->button.button == 3) {
			bm.picture_lock = 1;
			break;
		    }
		    if (event->button.button <= argc) {
			snprintf(execute, 250, "%s &",
				 argv[event->button.button - 1]);
			system(execute);
		    }
		    break;
#if defined(ENABLE_CPU) || defined(ENABLE_MEMSCREEN)
		case GDK_ENTER_NOTIFY:
		    /* mouse in: make it darker, and eventually bring up
		     * meminfo */
		    proximity = 1;

		    bm.screen_type = get_screen_selection();
		    bm.picture_lock = 0;
		    break;
		case GDK_LEAVE_NOTIFY:
		    /* mouse out: back to light */
		    proximity = 0;
		    break;
#endif				/* ENABLE_CPU || ENABLE_MEMSCREEN */
		default:
		    break;
		}
	    }
	}
#ifndef PRO
	usleep(15000);
#else
	/* amazingly enough just calling this function takes insane
	 * amount of time.
	 usleep(0); */
#endif
	/* get system statistics */
	get_memory_load_percentage();
	/* update main rgb buffer: bm.rgb_buf */
	bubblemon_update(proximity);

/* *INDENT-OFF* */
#ifdef FPS
	/* render frames per second on bottom-right corner :)
	 * This is GCC-specific (functions inside functions)
	 * and very unoptimized. this is obfuscated 'cause its ugly */
    	f++;{int b;void q(int sx,int sy,int dx,int dy){int i,j;char *from,*to;
	for(j=0;j<8;j++){from=mem_screen+56*3*(sy+j)+sx*3;to=bm.rgb_buf+56*3*
	(dy+j)+dx*3;i=12;while(i--)*to++=*from++;}}b=o;if(b>=100){q((b/100)*4,
	60,43,46);b=b%100;}q((b/10)*4,60,47,46);q((b%10)*4,60,51,46);}if(time(
	NULL)!=y){o=f;f=0;y=time(NULL);}
#endif
/* *INDENT-ON* */

	/* actually draw the screen */
#ifndef BLACKBOX
	gdk_draw_rgb_image(bm.win, bm.gc, 4, 4, 56, 56,
			   GDK_RGB_DITHER_NONE, bm.rgb_buf, 56 * 3);
#endif
	gdk_draw_rgb_image(bm.iconwin, bm.gc, 4, 4, 56, 56,
			   GDK_RGB_DITHER_NONE, bm.rgb_buf, 56 * 3);
#ifdef ENABLE_MEMSCREEN
	/* update graph histories */
	if (memscreen_enabled)
	    roll_history();
#endif				/* ENABLE_MEMSCREEN */
    }
    return 0;
}				/* main */

/*
 * This determines if the left or right shift keys are depressed.
 */
static int get_screen_selection(void)
{
    static KeyCode lshift_code, rshift_code;
    static int first_time = 1;
    char keys[32];

    if (first_time) {
	first_time = 0;
	lshift_code = XKeysymToKeycode(GDK_WINDOW_XDISPLAY(bm.win),
				       XStringToKeysym("Shift_L"));
	rshift_code = XKeysymToKeycode(GDK_WINDOW_XDISPLAY(bm.win),
				       XStringToKeysym("Shift_R"));
    }

    XQueryKeymap(GDK_WINDOW_XDISPLAY(bm.win), keys);

#if 0
    if (0) {			/* debug */
	int i = 0;
	printf("lshift_code = 0x%x (index = %d, bit = %d\n", lshift_code,
	       lshift_code >> 3, lshift_code % 8);
	printf("rshift_code = 0x%x (index = %d, bit = %d\n", rshift_code,
	       rshift_code >> 3, rshift_code % 8);
	for (i = 0; i < (sizeof(keys) / sizeof(keys[0])); i++) {
	    if (0 == (i % 8)) {
		printf("\n%2d:", i);
	    }
	    printf(" %2d", keys[i]);
	}
	printf("\n");
    }
#endif

    if ((keys[lshift_code >> 3] == (1 << (lshift_code % 8))) ||
	(keys[rshift_code >> 3] == (1 << (rshift_code % 8)))) {
	return 0;
    } else {
	return 1;
    }
}

/* This is the function that actually creates the display widgets */
static void make_new_bubblemon_dockapp(void)
{
#define MASK GDK_BUTTON_PRESS_MASK | \
    GDK_ENTER_NOTIFY_MASK | GDK_LEAVE_NOTIFY_MASK

    GdkWindowAttr attr;
    GdkWindowAttr attri;
    Window win;
    Window iconwin;

    XSizeHints sizehints;
    XWMHints wmhints;

    attr.width = 64;
    attr.height = 64;
    attr.title = "bubblemon";
    attr.event_mask = MASK;
    attr.wclass = GDK_INPUT_OUTPUT;
    attr.visual = gdk_visual_get_system();
    attr.colormap = gdk_colormap_get_system();
    attr.wmclass_name = "bubblemon";
    attr.wmclass_class = "bubblemon";
    attr.window_type = GDK_WINDOW_TOPLEVEL;

    sizehints.flags = USSize;
    sizehints.width = 64;
    sizehints.height = 64;

    bm.win = gdk_window_new(NULL, &attr,
			    GDK_WA_TITLE | GDK_WA_WMCLASS |
			    GDK_WA_VISUAL | GDK_WA_COLORMAP);
    if (!bm.win)
	fprintf(stderr, "Cannot make toplevel window\n");

    attri.width = 64;
    attri.height = 64;
    attri.title = "bubblemon";
    attri.event_mask = MASK;
    attri.wclass = GDK_INPUT_OUTPUT;
    attri.visual = gdk_visual_get_system();
    attri.colormap = gdk_colormap_get_system();
    attri.wmclass_name = "bubblemon";
    attri.wmclass_class = "bubblemon";
    attri.window_type = GDK_WINDOW_TOPLEVEL;

    bm.iconwin = gdk_window_new(bm.win, &attri,
				GDK_WA_TITLE | GDK_WA_WMCLASS);
    if (!bm.iconwin)
	fprintf(stderr, "Cannot make icon window\n");

    win = GDK_WINDOW_XWINDOW(bm.win);
    iconwin = GDK_WINDOW_XWINDOW(bm.iconwin);
    XSetWMNormalHints(GDK_WINDOW_XDISPLAY(bm.win), win, &sizehints);

    wmhints.initial_state = WithdrawnState;
    wmhints.icon_window = iconwin;
    wmhints.icon_x = 0;
    wmhints.icon_y = 0;
    wmhints.window_group = win;
    wmhints.flags =
	StateHint | IconWindowHint | IconPositionHint | WindowGroupHint;
    XSetWMHints(GDK_WINDOW_XDISPLAY(bm.win), win, &wmhints);

    bm.gc = gdk_gc_new(bm.win);

    bm.pixmap =
	gdk_pixmap_create_from_xpm_d(bm.win, &(bm.mask), NULL, master_xpm);
    gdk_window_shape_combine_mask(bm.win, bm.mask, 0, 0);
    gdk_window_shape_combine_mask(bm.iconwin, bm.mask, 0, 0);

    gdk_window_set_back_pixmap(bm.win, bm.pixmap, False);
    gdk_window_set_back_pixmap(bm.iconwin, bm.pixmap, False);

    gdk_window_show(bm.win);

    /* We begin with zero bubbles */
    bm.n_bubbles = 0;

    /* Allocate memory for calculations */
    bubblemon_allocate_buffers();

    bubblemon_setup_samples();

    bubblemon_setup_colors();
#undef MASK
}				/* make_new_bubblemon_dockapp */

/*
 * This function, bubblemon_update, gets the CPU usage and updates
 * the bubble array and main rgb buffer.
 */
static void bubblemon_update(int proximity)
{
    Bubble *bubbles = bm.bubbles;
    unsigned int i, loadPercentage, *col, x, y;
    unsigned char *ptr, *buf, *buf_ptr;
    unsigned int aircolor, watercolor, aliascolor;
    unsigned int waterlevels_goal;
    /*int current_waterlevel_goal; */

    /* These values are for keeping track of where we have to start
       drawing water. */
    unsigned int waterlevel_min, waterlevel_max;
    unsigned int real_waterlevel_min, real_waterlevel_max;

    /* These values are for keeping track how deep the duck is inside water */
    unsigned int action_min = 56;
    static unsigned int last_action_min = 0;

    /* Find out the CPU load */
    loadPercentage = system_cpu();

#ifdef ENABLE_MEMSCREEN
    /* get loadavg */
    if (memscreen_enabled)
	system_loadavg();
#endif				/* ENABLE_MEMSCREEN */

    /*
       The buf is made up of ints (0-(NUM_COLORS-1)), each pointing out
       an entry in the color table.  A pixel in the buf is accessed
       using the formula buf[row * w + column].
     */


    /* y coordinates are counted from here multiplied by 256 */
    /* to get actual screen coordinate, divide by 256 */
    buf = bm.bubblebuf;
    col = bm.colors;

    waterlevel_max = 0;
    waterlevel_min = MAKEY(56);

    /* Move the water level with the current memory usage. */
    waterlevels_goal = MAKEY(56) - ((bm.mem_percent * MAKEY(56)) / 100);

    /* Guard against boundary errors */
    waterlevels_goal -= (1 << (POWER2 - 1));

    bm.waterlevels[0] = waterlevels_goal;
    bm.waterlevels[55] = waterlevels_goal;

    for (x = 1; x < 55; x++) {
	/* Accelerate the current waterlevel towards its correct value */
	bm.waterlevels_dy[x] +=
	    (((bm.waterlevels[x - 1] + bm.waterlevels[x + 1] -
	       2 * bm.waterlevels[x]) * bm.volatility_int) >> (POWER2 +
							       1));

	bm.waterlevels_dy[x] *= bm.viscosity_int;
	bm.waterlevels_dy[x] >>= POWER2;

	if (bm.waterlevels_dy[x] > bm.speed_limit_int)
	    bm.waterlevels_dy[x] = bm.speed_limit_int;
	else if (bm.waterlevels_dy[x] < -bm.speed_limit_int)
	    bm.waterlevels_dy[x] = -bm.speed_limit_int;
    }

    for (x = 1; x < 55; x++) {
	/* Move the current water level */
	bm.waterlevels[x] = bm.waterlevels[x] + bm.waterlevels_dy[x];

	if (bm.waterlevels[x] > MAKEY(56)) {
	    /* Stop the wave if it hits the floor... */
	    bm.waterlevels[x] = MAKEY(56);
	    bm.waterlevels_dy[x] = 0;
	} else if (bm.waterlevels[x] < 0) {
	    /* ... or the ceiling. */
	    bm.waterlevels[x] = 0;
	    bm.waterlevels_dy[x] = 0;
	}
	/* Keep track of the highest and lowest water levels */
	if (bm.waterlevels[x] > waterlevel_max)
	    waterlevel_max = bm.waterlevels[x];
	if (bm.waterlevels[x] < waterlevel_min)
	    waterlevel_min = bm.waterlevels[x];
    }

    real_waterlevel_min = REALY(waterlevel_min);
    real_waterlevel_max = REALY(waterlevel_max);

    if (action_min > real_waterlevel_min)
	action_min = real_waterlevel_min;

    /*
       Vary the colors of air and water with how many
       percent of the available swap space that is in use.
       32 = (99_numcolors / 3) - 1
     */

    watercolor = ((32 * bm.swap_percent) / 100) * 3;
    aliascolor = watercolor + 1;
    aircolor = watercolor + 2;

    /*
       Draw the air-and-water background

       The waterlevel_max is the HIGHEST VALUE for the water level, which is
       actually the LOWEST VISUAL POINT of the water.  Confusing enough?

       So we want to draw from top to bottom:
       Just air from (y == 0) to (y <= waterlevel_min)
       Mixed air and water from (y == waterlevel_min) to (y <= waterlevel_max)
       Just water from (y == waterlevel_max) to (y <= h)

       Three loops is more code than one, but should be faster (fewer comparisons)
     */

    /* Air only */
    memset(buf, aircolor, real_waterlevel_min * 56);

    /* Air and water */
    for (x = 0; x < 56; x++) {
	/* Air... */
	for (y = real_waterlevel_min;
	     (signed) y < REALY(bm.waterlevels[x]); y++)
	    buf[y * 56 + x] = aircolor;

	/* ... and water */
	for (; y < real_waterlevel_max; y++)
	    buf[y * 56 + x] = watercolor;
    }

    /* Water only */
    memset(buf + real_waterlevel_max * 56, watercolor,
	   (56 - real_waterlevel_max) * 56);

    /*
       Here comes the bubble magic.  Pixels are drawn by setting values in
       buf to 0-NUM_COLORS.
     */

    /* Create a new bubble if the planets are correctly aligned... */
    if ((bm.n_bubbles < bm.maxbubbles)
	&& ((rand() % 101) <= loadPercentage)) {
	/* We don't allow bubbles on the edges 'cause we'd have to clip them */
	bubbles[bm.n_bubbles].x = (rand() % 54) + 1;
	bubbles[bm.n_bubbles].y = MAKEY(56) - 256;
	bubbles[bm.n_bubbles].dy = 0;
#ifdef DEBUG_DUCK
	fprintf (stderr, "new bubble:  bubbles[bm.n_bubbles].x = %i\n",
			 bubbles[bm.n_bubbles].x);
#endif

	if (bm.ripples_int != 0) {
	    /* Raise the water level above where the bubble is created */
	    if (bubbles[bm.n_bubbles].x > 2)
		bm.waterlevels[bubbles[bm.n_bubbles].x - 2] -=
		    bm.ripples_int;
	    bm.waterlevels[bubbles[bm.n_bubbles].x - 1] -= bm.ripples_int;
	    bm.waterlevels[bubbles[bm.n_bubbles].x] -= bm.ripples_int;
	    bm.waterlevels[bubbles[bm.n_bubbles].x + 1] -= bm.ripples_int;
	    if (bubbles[bm.n_bubbles].x < 53)
		bm.waterlevels[bubbles[bm.n_bubbles].x + 2] -=
		    bm.ripples_int;
	}

	/* Count the new bubble */
	bm.n_bubbles++;
    }

    /* Update and draw the bubbles */
    for (i = 0; i < bm.n_bubbles; i++) {
	/* Accelerate the bubble */
	bubbles[i].dy -= bm.gravity_int;

	/* Move the bubble vertically */
	bubbles[i].y += bubbles[i].dy;

	/* is the bubble grossly out of bounds? */
	if (bubbles[i].x < 1 || bubbles[i].x > 54 ||
			bubbles[i].y > MAKEY(56)) {
#ifdef DEBUG_DUCK
		fprintf (stderr, "bubble out of bounds "
				"bubbles[%i].x=%i, bubbles[%i].y=%i\n", 
				i, bubbles[i].x, i, bubbles[i].y);
#endif
		
	    /* Yes; nuke it */
	    bubbles[i].x = bubbles[bm.n_bubbles - 1].x;
	    bubbles[i].y = bubbles[bm.n_bubbles - 1].y;
	    bubbles[i].dy = bubbles[bm.n_bubbles - 1].dy;
	    bm.n_bubbles--;

	    /*
	       We must check the previously last bubble, which is
	       now the current bubble, also.
	     */
	    i--;
	    continue;
	}
		
	/* Did we lose it? */
	if (bubbles[i].y < bm.waterlevels[bubbles[i].x]) {
	    if (bm.ripples_int != 0) {
		/* Lower the water level around where the bubble is
		   about to vanish */
		bm.waterlevels[bubbles[i].x - 1] += bm.ripples_int;
		bm.waterlevels[bubbles[i].x] += 3 * bm.ripples_int;
		bm.waterlevels[bubbles[i].x + 1] += bm.ripples_int;
	    }

	    /* Yes; nuke it */
	    bubbles[i].x = bubbles[bm.n_bubbles - 1].x;
	    bubbles[i].y = bubbles[bm.n_bubbles - 1].y;
	    bubbles[i].dy = bubbles[bm.n_bubbles - 1].dy;
	    bm.n_bubbles--;

	    /*
	       We must check the previously last bubble, which is
	       now the current bubble, also.
	     */
	    i--;
	    continue;
	}

	/* Draw the bubble */
	x = bubbles[i].x;
	y = bubbles[i].y;

	/*
	   Clipping is not necessary for x, but it *is* for y.
	   To prevent ugliness, we draw aliascolor only on top of
	   watercolor, and aircolor on top of aliascolor.
	 */

	/* Top row */
	buf_ptr = &(buf[(((REALY(y) - 1) * 56) + 56) + x - 1]);
	if (y > bm.waterlevels[x]) {
	    if (*buf_ptr != aircolor) {
		(*buf_ptr)++;
	    }
	    buf_ptr++;

	    *buf_ptr = aircolor;
	    buf_ptr++;

	    if (*buf_ptr != aircolor) {
		(*buf_ptr)++;
	    }
	    buf_ptr += 54;
	} else {
	    buf_ptr += 56;
	}

	/* Middle row - no clipping necessary */
	*buf_ptr = aircolor;
	buf_ptr++;
	*buf_ptr = aircolor;
	buf_ptr++;
	*buf_ptr = aircolor;
	buf_ptr += 54;

	/* Bottom row */
	if (y < (MAKEY(56) - 256)) {
	    if (*buf_ptr != aircolor) {
		(*buf_ptr)++;
	    }
	    buf_ptr++;

	    *buf_ptr = aircolor;
	    buf_ptr++;

	    if (*buf_ptr != aircolor) {
		(*buf_ptr)++;
	    }
	}
    }

    /* Drawing magic resides below this point */
    ptr = bm.rgb_buf;
    buf_ptr = buf;
    i = 56 * 56;

    while (i--) {
	unsigned char *rgb = (unsigned char *) &col[*buf_ptr++];
#if (defined(__BYTE_ORDER) && defined(__LITTLE_ENDIAN) && (__BYTE_ORDER == __LITTLE_ENDIAN)) || defined(_LITTLE_ENDIAN) || (BYTE_ORDER == LITTLE_ENDIAN)
	*ptr++ = rgb[2];
	*ptr++ = rgb[1];
	*ptr++ = rgb[0];
#else				/* big-endian. */
	*ptr++ = rgb[1];
	*ptr++ = rgb[2];
	*ptr++ = rgb[3];
#endif
    }
#ifdef ENABLE_DUCK
    if (duck_enabled) {
	duck_swimmer((last_action_min <
		      action_min) ? last_action_min - 14 : action_min -
		     14);
    }
#endif

    /* damn, thats ugly. Of course, the first solution that comes to mind
     * about this isn't the right one :) */
#if defined(ENABLE_CPU) && defined(ENABLE_MEMSCREEN)
    if (cpu_enabled || memscreen_enabled) {
	realtime_alpha_blend_of_cpu_usage(loadPercentage, proximity);
    }
#endif
#if defined(ENABLE_CPU) && !defined(ENABLE_MEMSCREEN)
    if (cpu_enabled) {
	realtime_alpha_blend_of_cpu_usage(loadPercentage, proximity);
    }
#endif
#if !defined(ENABLE_CPU) && defined(ENABLE_MEMSCREEN)
    if (memscreen_enabled) {
	realtime_alpha_blend_of_cpu_usage(loadPercentage, proximity);
    }
#endif

    /* Remember where we have been poking around this round */
    last_action_min = action_min;
}				/* bubblemon_update */

#ifdef ENABLE_MEMSCREEN
/* draws 4x8 digits for the memory/swap panel */
static void draw_digit(int srcx, int srcy, int destx, int desty)
{
    int i, j;
    char *from, *to;

    for (j = 0; j < 8; j++) {
	from = mem_screen + 56 * 3 * (srcy + j) + srcx * 3;
	to = bm.mem_buf + 56 * 3 * (desty + j) + destx * 3;
	i = 12;
	while (i--)
	    *to++ = *from++;
    }
}

/* draws a string using previous function. non-digits and non-K/M = space */
static void draw_string(char *string, int x, int y, int color)
{
    unsigned char c;

    while ((c = *string++)) {
	if (c == 'K') {
	    draw_digit(40, (color) ? 69 : 60, x, y);
	} else if (c == 'M') {
	    draw_digit(44, (color) ? 69 : 60, x, y);
	} else if (c == ' ') {
	    draw_digit(50, 60, x, y);	/* blank space */
	} else {
	    c -= '0';
	    draw_digit(c * 4, (color) ? 69 : 60, x, y);
	}
	x += 4;
    }
}

static void draw_pixel(unsigned int x, unsigned int y, unsigned char *buf,
		       unsigned char *c)
{
    unsigned char *ptr;
    ptr = buf + y * 56 * 3 + x * 3 + 6;	/* +6 = x + 2 */
    *ptr++ = *c++;
    *ptr++ = *c++;
    *ptr++ = *c++;
}

/* draw graph num x size, data taken from history, into rgb buffer buf.
 * this is called not very often: only 1 time out of 250 */
static void draw_history(int num, int size, unsigned int *history,
			 unsigned char *buf)
{
    int pixels_per_byte;
    int j, k;
    int *p;
    int d;

    pixels_per_byte = 100;
    p = history;

    for (j = 0; j < num; j++) {
	if (p[0] > pixels_per_byte)
	    pixels_per_byte += 100;
	p++;
    }

    p = history;

    for (k = 0; k < num; k++) {
	d = (1.0 * p[0] / pixels_per_byte) * size;

	for (j = 0; j < size; j++) {
	    if (j < d - 2)
		draw_pixel(k, size - j - 1, buf, "\x00\x7d\x71");
	    else if (j < d)
		draw_pixel(k, size - j - 1, buf, "\x20\xb6\xae");
	}
	p++;
    }

    for (j = pixels_per_byte - 100; j > 0; j -= 100) {
	for (k = 0; k < num; k++) {
	    d = ((float) size / pixels_per_byte) * j;
	    draw_pixel(k, size - d - 1, buf, "\x71\xe3\x71");
	}
    }
}

/* refreshes memory/swap screen */
static void render_secondary(void)
{
    char percent[4];
    char number[8];
    int i;
    /* mem: 2, 24
     * mem %: 38, 24
     * swap: 2, 43
     * 38, 43
     * digits: 0, 60 and 0, 69 */

    /* make a clean buffer with blank spaces. */
    memcpy(bm.mem_buf, bm.screen_type ? load_screen : mem_screen,
	   56 * 56 * 3);

    if (bm.screen_type) {
	for (i = 0; i < 3; i++) {
	    sprintf(number, "%2d", bm.loadavg[i].i);
	    draw_string(number, 19 * i, 8, 0);
	    sprintf(number, "%02d", bm.loadavg[i].f);
	    draw_string(number, 19 * i + 10, 8, 0);
	}
	/* copy history graph from previous rollover */
	memcpy(bm.mem_buf + 19 * 56 * 3, bm.his_bufb, 56 * 33 * 3);
    } else {
	/* draw memory */
	if (memscreen_megabytes)
	    snprintf(number, 8, "%6lluM", bm.mem_used >> 20);
	else
	    snprintf(number, 8, "%6lluK", bm.mem_used >> 10);
	snprintf(percent, 4, "%03d", bm.mem_percent);
	draw_string(number, 2, 1, (bm.mem_percent > 90) ? 1 : 0);
	draw_string(percent, 38, 1, (bm.mem_percent > 90) ? 1 : 0);

	/* draw swap */
	if (memscreen_megabytes)
	    snprintf(number, 8, "%6lluM", bm.swap_used >> 20);
	else
	    snprintf(number, 8, "%6lluK", bm.swap_used >> 10);
	snprintf(percent, 4, "%03d", bm.swap_percent);
	draw_string(number, 2, 10, (bm.swap_percent > 90) ? 1 : 0);
	draw_string(percent, 38, 10, (bm.swap_percent > 90) ? 1 : 0);

	/* copy history graph from previous rollover */
	memcpy(bm.mem_buf + 21 * 56 * 3, bm.his_bufa, 56 * 31 * 3);
    }
}

static void roll_membuffer(void)
{
    static int delay;

    if (++delay < 30)
	return;

    delay = 0;
    render_secondary();
}

static void roll_history(void)
{
    unsigned int yep, j;
    static int update, doit;

    if (doit-- <= 0) {
	doit = ROLLVALUE;
	if (update-- <= 0) {

	    /* roll history buffers, averaging last 5 samples */
	    if (bm.history[52])
		bm.history[52] /= bm.hisadd;

	    if (bm.memhist[52])
		bm.memhist[52] /= bm.memadd;

	    for (j = 1; j < 53; j++) {
		bm.history[j - 1] = bm.history[j];
		bm.memhist[j - 1] = bm.memhist[j];
	    }
	    bm.history[52] = 0;
	    bm.hisadd = 0;
	    bm.memhist[52] = 0;
	    bm.memadd = 0;

	    /* refresh backgrounds */
	    memcpy(bm.his_bufa, mem_screen + 21 * 56 * 3, 31 * 56 * 3);
	    memcpy(bm.his_bufb, load_screen + 19 * 56 * 3, 33 * 56 * 3);

	    /* render memory graph */
	    draw_history(52, 31, bm.memhist, bm.his_bufa);
	    /* render load average graph */
	    draw_history(52, 33, bm.history, bm.his_bufb);

	    /* reset counter */
	    update = 5;
	}

	/* do load average history update */
	yep = bm.loadavg[0].f + (bm.loadavg[0].i * 100);
	bm.history[52] += yep;
	bm.hisadd++;

	/* do memory history update */
	yep = bm.mem_percent;
	bm.memhist[52] += yep;
	bm.memadd++;
    }
}
#endif				/* ENABLE_MEMSCREEN */

#ifdef ENABLE_CPU
/* draws digits for the CPU meter. This function is very specific
 * to the meter.  Arguments it takes are not what they seem initially */
static void draw_cpudigit(const int what, const int where,
			  unsigned char *kit)
{
    unsigned int len, y;
    unsigned char *to, *from;
    for (y = 0; y < 9; y++) {
	len = 21;
	to = kit + y * 75 + where;
	from = digits + y * 285 + what;
	while (len--)
	    *to++ = *from++;
    }
}
#endif				/* ENABLE_CPU */

#if defined(ENABLE_CPU) || defined(ENABLE_MEMSCREEN)
static void realtime_alpha_blend_of_cpu_usage(int cpu, int proximity)
{
    /* where is the text going to be (now, bottom-center) */
#define POSX 16
#define POSY 46
    int bob;

    /* memory window */
    static int blend = MAXBLEND;
#ifdef ENABLE_MEMSCREEN
    static int memblend = 256;
    static int showmem = 0;
#endif				/* ENABLE_MEMSCREEN */
#ifdef ENABLE_CPU
    static int yoh;
    static int avg;
    int hibyte, y, pos;

    /* CPU load buffer */
    static unsigned char kit[25 * 3 * 9 + 1];
    unsigned char *kitptr;

    /* the plan is simple.  we don't want to redraw the digits every update
     * because that doesn't look so good.  so we average it, and draw only
     * once every 10 updates. We alpha blend the static buffer so we still
     * get cool transparency effects. */
    avg += cpu;

    while (++yoh > 10) {
	cpu = avg / 10;
	avg ^= avg;		/* zero.  Haha, I guess these are not */
	yoh ^= yoh;		/* register vars, optimizer just zeros them */
	hibyte = cpu / 10;	/* but it's cool to know it understands xor a, a */
	if (hibyte == 10) {
	    draw_cpudigit(18, 0, kit);
	    draw_cpudigit(0, 18, kit);
	    draw_cpudigit(0, 36, kit);
	} else {
	    draw_cpudigit(216, 0, kit);
	    draw_cpudigit(hibyte * 18, 18, kit);
	    draw_cpudigit((cpu % 10) * 18, 36, kit);
	}
	/* percent sign is always there */
	draw_cpudigit(180, 54, kit);
    }
#endif				/* ENABLE_CPU */
    /* sexy fade effect */
    if (proximity) {
	blend -= 4;
	if (blend < MINBLEND) {
	    blend = MINBLEND;
#ifdef ENABLE_MEMSCREEN
	    if (memscreen_enabled) {
		if (!showmem) {
		    /* first time here, update memory stats */
		    render_secondary();
		}
		showmem = 1;
		if (!bm.picture_lock)
		    memblend -= 6;
		if (memblend < 40) {
		    roll_membuffer();
		    memblend = 40;
		}
	    }
#endif				/* ENABLE_MEMSCREEN */
	}
    } else {
	blend += 4;
#ifdef ENABLE_MEMSCREEN
	if (bm.picture_lock)
	    roll_membuffer();

	if (memscreen_enabled && !bm.picture_lock)
	    memblend += 10;
#endif				/* ENABLE_MEMSCREEN */
	if (blend > MAXBLEND) {
	    blend = MAXBLEND;
	}
#ifdef ENABLE_MEMSCREEN
	if (memscreen_enabled && memblend > 256) {
	    memblend = 256;
	    showmem = 0;
	}
#endif				/* ENABLE_MEMSCREEN */
    }

#ifdef ENABLE_CPU
    if (cpu_enabled) {
	/* bit shifts result in smaller and faster code without an extra jns
	 * which appears if we / 128 instead of >> 7. 
	 */
	kitptr = kit;
	for (y = 0; y < 9; y++) {
	    unsigned char src;
	    pos = (y + POSY) * 56 * 3 + (POSX * 3);
	    bob = 75;		/* 25 * 3 */
	    while (bob--) {
		src = bm.rgb_buf[pos];

		if (!src)
		    bm.rgb_buf[pos++] = *kitptr++;
		else
		    bm.rgb_buf[pos++] =
			(blend * src + (256 - blend) * *kitptr++) >> 8;
	    }
	}
    }
#endif				/* ENABLE_CPU */

#ifdef ENABLE_MEMSCREEN
    /* we hovered long enough to print some memory info */
    if (memscreen_enabled && showmem) {
	unsigned char *ptr, *ptr2, src;
	ptr = bm.mem_buf;
	ptr2 = bm.rgb_buf;
	bob = 9408;		/* 56 * 56 * 3 */
	while (bob--) {
	    src = *ptr2;
	    *ptr2++ = (memblend * src + (256 - memblend) * *ptr++) >> 8;
	}
    }
#endif				/* ENABLE_MEMSCREEN */
#undef POSY
#undef POSX
}
#endif

#ifdef ENABLE_DUCK
static void duck_set(int x, int y, int nr, int rev, int upsidedown)
{
    int w, h;
    int rw;
#ifdef UPSIDE_DOWN_DUCK
    int rh;
#endif
    int pos;
    int dw, di, dh, ds;
    int cmap;			/* index into duck colors */
#define _R(idx) ((int)duck_cmap[idx][0])
#define _G(idx) ((int)duck_cmap[idx][1])
#define _B(idx) ((int)duck_cmap[idx][2])
#define GETME(x, y, idx) ((int)duck_data[idx][y * 18 + x])
    ds = 0;
    if (y < 0)
	ds = -(y);
    dh = 17;
    if ((y + 17) > 56)
	dh = 56 - y;
    dw = 18;
    if (x > 38)
	dw = 18 - (x - 38);
    di = 0;
    if (x < 0)
	di = -(x);
    for (h = ds; h < dh; h++) {
	/* calculate this only once */
	int ypos = (h + y) * 56;
#ifdef UPSIDE_DOWN_DUCK
	rh = (upsidedown && upside_down_duck_enabled) ? 17 - h : h;
#endif
	for (w = di; w < dw; w++) {
	    rw = (rev) ? 17 - w : w;
#ifdef UPSIDE_DOWN_DUCK
	    if ((cmap = GETME(rw, rh, nr)) != 0) {
#else
	    if ((cmap = GETME(rw, h, nr)) != 0) {
#endif
		unsigned char r, g, b;
		pos = (ypos + w + x) * 3;

		r = _R(cmap);
		g = _G(cmap);
		b = _B(cmap);

		/* and now we'll blend the duck part that in water */
		/* if we use integers here we speed up this function about
		 * 40%. */
		if (h + y < REALY(bm.waterlevels[w + x])) {
		    bm.rgb_buf[pos++] = r;
		    bm.rgb_buf[pos++] = g;
		    bm.rgb_buf[pos] = b;
		} else {
		    bm.rgb_buf[pos] = (DUCKBLEND * (int) bm.rgb_buf[pos]
				       + (256 - DUCKBLEND) * (int) r) >> 8;
		    bm.rgb_buf[pos + 1] =
			(DUCKBLEND * (int) bm.rgb_buf[pos + 1]
			 + (256 - DUCKBLEND) * (int) g) >> 8;
		    bm.rgb_buf[pos + 2] =
			(DUCKBLEND * (int) bm.rgb_buf[pos + 2]
			 + (256 - DUCKBLEND) * (int) b) >> 8;
		}
	    }
	}
    }
#undef _R
#undef _G
#undef _B
#undef GETME
}

static int animate_correctly(void)
{
    /* returns the correct order of framenumber 0,1,2,1,0,1,2...
       instead of 0,1,2,0,1,2 <- this way the duck looks really ugly
       instead of keeping 2 counters we just made it longer */

    static int outp[48] =
	{ 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0,
	1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2,
	2, 2, 1, 1, 1, 1
    };
    static int totalcounter = -1;

    if (++totalcounter > 47)
	totalcounter = 0;

    return outp[totalcounter];
}

static void duck_swimmer(int posy)
{
    static int tx = -19;
    static int rp;
    static int rev = 1;
    static int upsidedown = 0;

#ifdef UPSIDE_DOWN_DUCK
    /* dive */
    if (upside_down_duck_enabled) {
	if (upsidedown == 0 && posy < 2)
	    upsidedown = 1;
	else if (upsidedown == 1 && posy > 5)	/* jump out */
	    upsidedown = 0;

	if (upsidedown)
	    posy += 10;
    }
#endif
    if (rp++ < 10) {
	duck_set(tx, posy, animate_correctly(), rev, upsidedown);
	return;
    }

    rp = 0;
    if (!rev) {
	if (tx-- < -18) {
	    tx = -18;
	    rev = 1;
	}
    } else {
	if (tx++ > 57) {
	    tx = 57;
	    rev = 0;
	}
    }
    duck_set(tx, posy, animate_correctly(), rev, upsidedown);
}
#endif				/* ENABLE_DUCK */

static void bubblemon_setup_samples(void)
{
    int i;
    u_int64_t load = 0, total = 0;

    if (bm.load) {
	load = bm.load[bm.loadIndex];
	free(bm.load);
    }

    if (bm.total) {
	total = bm.total[bm.loadIndex];
	free(bm.total);
    }

    bm.loadIndex = 0;
    bm.load = malloc(bm.samples * sizeof(u_int64_t));
    bm.total = malloc(bm.samples * sizeof(u_int64_t));
    for (i = 0; i < bm.samples; i++) {
	bm.load[i] = load;
	bm.total[i] = total;
    }
}

static void bubblemon_setup_colors(void)
{
#define NUM_COLORS 99
    int i, j, *col;
    int r_air_noswap, g_air_noswap, b_air_noswap;
    int r_liquid_noswap, g_liquid_noswap, b_liquid_noswap;
    int r_air_maxswap, g_air_maxswap, b_air_maxswap;
    int r_liquid_maxswap, g_liquid_maxswap, b_liquid_maxswap;
    int actual_colors = NUM_COLORS / 3;

    if (!bm.colors)
	bm.colors = malloc(NUM_COLORS * sizeof(int));

    col = bm.colors;

    r_air_noswap = (bm.air_noswap >> 16) & 0xff;
    g_air_noswap = (bm.air_noswap >> 8) & 0xff;
    b_air_noswap = (bm.air_noswap) & 0xff;

    r_liquid_noswap = (bm.liquid_noswap >> 16) & 0xff;
    g_liquid_noswap = (bm.liquid_noswap >> 8) & 0xff;
    b_liquid_noswap = (bm.liquid_noswap) & 0xff;

    r_air_maxswap = (bm.air_maxswap >> 16) & 0xff;
    g_air_maxswap = (bm.air_maxswap >> 8) & 0xff;
    b_air_maxswap = (bm.air_maxswap) & 0xff;

    r_liquid_maxswap = (bm.liquid_maxswap >> 16) & 0xff;
    g_liquid_maxswap = (bm.liquid_maxswap >> 8) & 0xff;
    b_liquid_maxswap = (bm.liquid_maxswap) & 0xff;

    for (i = 0; i < actual_colors; i++) {
	int r, g, b;
	int r_composite, g_composite, b_composite;

	j = i >> 1;

	/* Liquid */
	r = (r_liquid_maxswap * j +
	     r_liquid_noswap * ((actual_colors - 1) -
				j)) / (actual_colors - 1);
	g = (g_liquid_maxswap * j +
	     g_liquid_noswap * ((actual_colors - 1) -
				j)) / (actual_colors - 1);
	b = (b_liquid_maxswap * j +
	     b_liquid_noswap * ((actual_colors - 1) -
				j)) / (actual_colors - 1);

	r_composite = r;
	g_composite = g;
	b_composite = b;
	col[(i * 3)] = (r << 16) | (g << 8) | b;

	/* Air */
	r = (r_air_maxswap * j +
	     r_air_noswap * ((actual_colors - 1) - j)) / (actual_colors -
							  1);
	g = (g_air_maxswap * j +
	     g_air_noswap * ((actual_colors - 1) - j)) / (actual_colors -
							  1);
	b = (b_air_maxswap * j +
	     b_air_noswap * ((actual_colors - 1) - j)) / (actual_colors -
							  1);
	r_composite += r;
	g_composite += g;
	b_composite += b;
	col[(i * 3) + 2] = (r << 16) | (g << 8) | b;

	/* Anti-alias */
	r = r_composite >> 1;
	g = g_composite >> 1;
	b = b_composite >> 1;
	col[(i * 3) + 1] = (r << 16) | (g << 8) | b;
    }
#undef NUM_COLORS
}

static void bubblemon_allocate_buffers(void)
{
    int i;

    /* storage for bubbles */
    bm.bubbles = (Bubble *) malloc(sizeof(Bubble) * bm.maxbubbles);

    /* Allocate (zeroed) bubble memory */
    if (bm.bubblebuf)
	free(bm.bubblebuf);

    bm.bubblebuf = calloc(56 * 60, sizeof(char));

    /* Allocate water level memory */
    if (bm.waterlevels)
	free(bm.waterlevels);

    bm.waterlevels = malloc(56 * sizeof(int));
    for (i = 0; i < 56; i++) {
	bm.waterlevels[i] = MAKEY(56);
    }

    /* Allocate water level velocity memory */
    if (bm.waterlevels_dy)
	free(bm.waterlevels_dy);

    bm.waterlevels_dy = calloc(56, sizeof(int));
}

static void get_memory_load_percentage(void)
{
    /* system_memory() will return true on initial run so that we get
     * correct memory info, but may subsequently return 0 if memory
     * is not changing */
    if (system_memory()) {
	/* new memory/swap data is in, calculate things */
	bm.mem_percent = (100 * bm.mem_used) / bm.mem_max;

	if (bm.swap_max != 0) {
	    bm.swap_percent = (100 * bm.swap_used) / bm.swap_max;
	} else {
	    bm.swap_percent = 0;
	}
    }
}

/* ex:set ts=8: */
