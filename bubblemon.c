/*  BubbleMon dockapp 1.50r
 *
 * Todo: merge in wmfishtime/bubblefishymon, reduce number of
 * compilation-time settings, make more things configurable via xresources.
 *
 *  - dockapp for Window Maker/Blackbox/E/Afterstep/SawBabble
 *  - Code from Robert Jacobs <rjacobs@eamp.org>, 2010-2011
 *  - Code from the debian maintainers, 2005-2009
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

#define VERSION "1.50r"

/* general includes */
#include <stdio.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h> /* I know tolower isn't i18n, I'm sorry */

/* x11 includes */
#include "wmx11pixmap.h"
#include <X11/Xresource.h>

#include "include/bubblemon.h"
#include "include/sys_include.h"

#include "include/clockfont.h"
#include "include/numbers-2.h"

#include "include/ducks.h"
#include "include/digits.h"
#include "misc/load_58.c"
#include "misc/mem_58.c"
#include "misc/numbers.xpm"

/* #define DEBUG_DUCK 1 */

#ifndef NAME
#define NAME "wmbubble"
#endif

/* local prototypes *INDENT-OFF* */
static void bubblemon_setup_samples(void);
static void bubblemon_allocate_buffers(void);
static void bubblemon_update(int proximity);
static void make_new_bubblemon_dockapp(void);
static void get_memory_load_percentage(void);
static void bubblemon_session_defaults(XrmDatabase x_resource_database);
static int get_screen_selection(void);
/* draw functions for load average / memory screens */
static void draw_pixel(unsigned int x, unsigned int y, unsigned char *buf, char *c);
static void draw_history(int num, int size, unsigned int *history,
			 unsigned char *buf);
static void draw_digit(int num, unsigned char * whither, unsigned char red, unsigned char grn, unsigned char blu);
static void draw_string(char *string, int x, int y, int color);
static void draw_cpudigit(int what, unsigned char *whither);

static void render_secondary(void);
static void realtime_alpha_blend_of_cpu_usage(int cpu, int proximity);
static void roll_membuffer(void);
static void roll_history(void);

static void draw_datetime(unsigned char *display);
static void draw_dtchr(const char letter, unsigned char *where);

static int animate_correctly(void);
static void duck_set(int x, int y, int nr, int rev, int upsidedown);
static void duck_swimmer(int posy);

#if defined(__FreeBSD__) || defined(__linux__)
extern int init_stuff();	/* defined in sys_{freebsd,linux}.c */
#endif
/* local prototypes end *INDENT-ON* */

extern char * optarg;

/* global variables */
BubbleMonData bm;

int duck_enabled = 1;
int upside_down_duck_enabled = 1;
int cpu_enabled = 1;
int memscreen_enabled = 1;
int memscreen_megabytes = 0;
int graph_digit_color;
int graph_digit_warning_color;
int pale = 0;

int shifttime = 0;

int do_help = 0;



XrmOptionDescRec x_resource_options[] = {
	{"-maxbubbles",    "*maxbubbles",     XrmoptionSepArg, (XPointer) NULL},
	{"-air_noswap",    "*air_noswap",     XrmoptionSepArg, (XPointer) NULL},
	{"-air_maxswap",   "*air_maxswap",    XrmoptionSepArg, (XPointer) NULL},
	{"-liquid_noswap", "*liquid_noswap",  XrmoptionSepArg, (XPointer) NULL},
	{"-liquid_maxswap","*liquid_maxswap", XrmoptionSepArg, (XPointer) NULL},
	{"-ripples",       "*ripples",        XrmoptionSepArg, (XPointer) NULL},
	{"-gravity",       "*gravity",        XrmoptionSepArg, (XPointer) NULL},
	{"-volatility",    "*volatility",     XrmoptionSepArg, (XPointer) NULL},
	{"-viscosity",     "*viscosity",      XrmoptionSepArg, (XPointer) NULL},
	{"-speed_limit",   "*speed_limit",    XrmoptionSepArg, (XPointer) NULL},
	{"-help",          ".help",           XrmoptionNoArg,  (XPointer) "1"},
	{"-duck",          "*duck",           XrmoptionSepArg, (XPointer) NULL},
	{"-d",             "*duck",           XrmoptionNoArg,  (XPointer) "no"}, /* disable duck */
	{"-upsidedown",    "*upsidedown",     XrmoptionSepArg, (XPointer) NULL},
	{"-u",             "*upsidedown",     XrmoptionNoArg,  (XPointer) "no"}, /* disable upside-down-ifying */
	{"-cpumeter",      "*cpumeter",       XrmoptionSepArg, (XPointer) NULL},
	{"-c",             "*cpumeter",       XrmoptionNoArg,  (XPointer) "no"}, /* disable numeric cpu gauge */
	{"-graphdigitcolor","*graphdigitcolor",XrmoptionSepArg,(XPointer) NULL},
	{"-graphwarncolor","*graphwarncolor", XrmoptionSepArg, (XPointer) NULL},
	{"-p",             ".graphdigitpale", XrmoptionIsArg,  (XPointer) NULL},
	{"-graphs",        "*graphs",         XrmoptionSepArg, (XPointer) NULL}, /* disable graphs */
	{"-m",             "*graphs",         XrmoptionIsArg,  (XPointer) "no"},
	{"-units",         "*units",          XrmoptionSepArg, (XPointer) NULL}, /* kB or MB */
	{"-k",             "*units",          XrmoptionIsArg,  (XPointer) "m"},
	{"-shifttime",     "*shifttime",      XrmoptionSepArg, (XPointer) NULL},
};	

const struct XrmExtras {
	const char const * option; /* same as XrmOptionDescRec option */
	const enum { Is_Int, Is_Color, Is_Float, Is_Bool, No_Param } parse_as;
	void * write_to;
	const char * description;
} x_resource_extras[] = {
	{"-maxbubbles",     Is_Int, &bm.maxbubbles, "Maximum number of simultaneous bubbles in the dockapp" },
	{"-air_noswap",     Is_Color, &bm.air_noswap, "Color of air and bubbles when swap is at 0%" },
	{"-air_maxswap",    Is_Color, &bm.air_maxswap, "Color of air and bubbles when swap is at 100%" },
	{"-liquid_noswap",  Is_Color, &bm.liquid_noswap, "Color of water when swap is at 0%" },
	{"-liquid_maxswap", Is_Color, &bm.liquid_maxswap, "Color of water when swap is at 100%" },
	{"-ripples",        Is_Float, &bm.ripples, "Pixels to disturb the surface when a bubble is formed/pops" },
	{"-gravity",        Is_Float, &bm.gravity, "Pixels/refresh/refresh to accelerate bubbles upwards" },
	{"-volatility",     Is_Float, &bm.volatility, "Restorative force on water surface in proportion/refresh"},
	{"-viscosity",      Is_Float, &bm.viscosity, "Attenuation of surface velocity in proportion/refresh"},
	{"-speed_limit",    Is_Float, &bm.speed_limit, "Maximum water surface velocity in pixels/refresh" },
	{"-help",           Is_Bool, &do_help, "Displays this help" },
	{"-duck",           Is_Bool, &duck_enabled, "Draw the duck?"},
	{"-d",              No_Param, &duck_enabled, "Just don't draw the duck" },
	{"-upsidedown",     Is_Bool, &upside_down_duck_enabled, "Can the duck flip when the tank is overfull?" },
	{"-u",              No_Param, &upside_down_duck_enabled, "The duck can never flip" },
	{"-cpumeter",       Is_Bool, &cpu_enabled, "Show the current load at the bottom"},
	{"-c",              No_Param, &cpu_enabled, "Don't show the current load"},
	{"-graphdigitcolor",Is_Color, &graph_digit_color, "The color for the digits on the graphs"},
	{"-graphwarncolor", Is_Color, &graph_digit_warning_color, "The color for the digits on the memory graph when above 90%" },
	{"-p",              No_Param, &pale, "Adjust the digit colors to pale blue and cyan"},
	{"-graphs",         Is_Bool, &memscreen_enabled, "Does hovering show the graphs" },
	{"-m",              No_Param, &memscreen_enabled, "Graphs are never shown"},
	{"-units",          Is_Bool, &memscreen_megabytes, "Units for memory in KB or MB"},
	{"-k",              No_Param, &memscreen_megabytes, "Memory graphs use MB" },
	{"-shifttime",      Is_Int, &shifttime, "Number of hours after midnight that are drawn as part of the previous day" }
};	

static void bubblemon_session_defaults(XrmDatabase x_resource_database)
{
	/* XResource stuff */
	char name[BUFSIZ] = "";
	XrmValue val;
	XColor colorparsing;
	char *type;
	int i;

	/* number of CPU load samples */
	bm.samples = 16;

	/* default colors.  changeable from Xdefaults */
	bm.air_noswap = 0x2299ff;
	bm.liquid_noswap = 0x0055ff;
	bm.air_maxswap = 0xff0000;
	bm.liquid_maxswap = 0xaa0000;

	/* default bubble engine parameters.  Changeable from Xdefaults */
	bm.maxbubbles = 100;
	bm.ripples = .2;
	bm.gravity = 0.06;
	bm.volatility = 1;
	bm.viscosity = .98;
	bm.speed_limit = 6.0;

	if (sizeof(x_resource_options) / sizeof(x_resource_options[0]) != 
	    sizeof(x_resource_extras) / sizeof(x_resource_extras[0])) {
		fprintf(stderr, "Compilation time error: X resource parser controls arrays don't match (%d, %d entries)\n",
		        sizeof(x_resource_options) / sizeof(x_resource_options[0]),
		        sizeof(x_resource_extras) / sizeof(x_resource_extras[0]));
		abort();
	}

	for (i = 0; i < (sizeof(x_resource_options) / sizeof(x_resource_options[0])); i++) {
		if (strcmp(x_resource_options[i].option,x_resource_extras[i].option) != 0) {
			fprintf(stderr, "Compilation time error: element #%d doesn't match between arrays (%s != %s)\n",
			        i,x_resource_options[i].option,x_resource_extras[i].option);
			abort();
		}
		strncpy(name,NAME,BUFSIZ), strncat(name,x_resource_options[i].specifier,BUFSIZ-strlen(name));
		if (XrmGetResource(x_resource_database, name, name, &type, &val)) {
			/* Type returned by XrmGetResource is useless, it seems to always return "String" */
			if (val.size > 0)	/* prevent empty strings */
				switch (x_resource_extras[i].parse_as) {
				case Is_Int:
					*(int *) x_resource_extras[i].write_to = strtol(val.addr,NULL,0);
					break;
				case Is_Float:
					*(double *) x_resource_extras[i].write_to = strtod(val.addr,NULL);
					break;
				case Is_Color:
					XParseColor(wmxp_display,DefaultColormap(wmxp_display,DefaultScreen(wmxp_display)),
					            val.addr, &colorparsing);
					*(int *) x_resource_extras[i].write_to = 
						((colorparsing.red & 0xFF00) << 8) | 
						((colorparsing.green & 0xFF00)) |
						((colorparsing.blue & 0xFF00) >> 8);
					break;
				case Is_Bool:
					/* yes, on, 1, megabytes   vs  no, off, 0, kilobytes */
					if (tolower(val.addr[0]) == 'y' ||
					    tolower(val.addr[0]) == 'm' ||
					    val.addr[0] == '1' ||
					    (tolower(val.addr[0]) == 'o' && tolower(val.addr[1]) == 'n'))
						*(int *) x_resource_extras[i].write_to = 1; /* bools are stored in ints, sorry */
					else if (tolower(val.addr[0]) == 'n' ||
					         tolower(val.addr[0]) == 'k' ||
					         val.addr[0] == '0' ||
					         (tolower(val.addr[0]) == 'o' && tolower(val.addr[1]) == 'f'))
						*(int *) x_resource_extras[i].write_to = 0;
					else {
						fprintf(stderr,"Couldn't parse %s as a boolean for resource %s\n",val.addr,name);
						exit(-2);
					}
					break;
				default:
					/* fail soft */
					break;
				}
		}
	}

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
	int i;
	printf("BubbleMon version "VERSION"\n"
	       "Usage: "NAME" [switches] [program_1] [program_2]\n\n"
	       "Permitted options are:\n");
	for (i=0; i < sizeof(x_resource_extras) / sizeof(x_resource_extras[0]); i++)
		printf("%-20s %s\n",x_resource_extras[i].option,x_resource_extras[i].description);
}
/* *INDENT-ON* */

int main(int argc, char **argv)
{
    char execute[256];
    char * x_resources_as_string;
    int proximity = 0;
#ifdef FPS
    int f, o;
    time_t y;
#endif
#ifdef PRO
    time_t start, end;
    int cnt = 10000;
#endif
    XEvent event;
    XrmDatabase x_resource_db;

#ifdef FPS
    o = f = y = 0;
#endif

    if (mem_screen.width != mem_screen.height || mem_screen.width != BOX_SIZE ||
        load_screen.width != load_screen.height || load_screen.width != BOX_SIZE) {
	    fprintf(stderr, "compilation time error: mem_screen (%dx%d) or load_screen (%dx%d) dimensions don't match applet dimensions (%dx%d)",
	            mem_screen.width,mem_screen.height,load_screen.width,load_screen.height,BOX_SIZE,BOX_SIZE);
	    abort();
    }

    /* VERY first thing: zero data structure */
    memset(&bm, 0, sizeof(bm));

    /* initialize Ximage */
    bm.xim = initwmX11pixmap(argc,argv);
    XrmInitialize();
    x_resources_as_string = XResourceManagerString(wmxp_display);
    x_resource_db = XrmGetStringDatabase(x_resources_as_string);
    XrmParseCommand(&x_resource_db, x_resource_options, 
                    sizeof(x_resource_options)/sizeof(x_resource_options[0]), 
                    NAME, &argc, argv);
    /* set default things, from Xresources or compiled-in defaults. Must come after initwmX11pixmap and we have a DISPLAY */
    bubblemon_session_defaults(x_resource_db);

    if (do_help || (argv[1] && argv[1][0] == '-')) { /* That's gotta be wrong. */
	    print_usage();
	    exit(0);
    }

#if defined(__FreeBSD__) || defined(__linux__)
    if (init_stuff())
	exit(-1);
#endif


    /* create dockapp window. creates windows, allocates memory, etc */
    make_new_bubblemon_dockapp();

#ifdef PRO
    start = time(NULL);
    while (cnt--) {
#else
    while (1) {
#endif
	    while (XPending(wmxp_display)) {
		XNextEvent(wmxp_display,&event);
		switch (event.type) {
		case ButtonPress:
		    if (event.xbutton.button == 3) {
			bm.picture_lock = bm.picture_lock ? 0 : 1;
			break;
		    }
		    if (event.xbutton.button <= argc) {
			snprintf(execute, 250, "%s &",
				 argv[event.xbutton.button - 1]);
			system(execute);
		    }
		    break;
		case EnterNotify:
		    /* mouse in: make it darker, and eventually bring up
		     * meminfo */
		    proximity = 1;

		    if (!bm.picture_lock)
			bm.screen_type = get_screen_selection();
		    break;
		    case LeaveNotify:
		    /* mouse out: back to light */
		    proximity = 0;
		    break;
		default:
		    break;
		}
	    }
#ifndef PRO
	usleep(33000);
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
    	f++;
		int b;
		void q(int sx,int sy,int dx,int dy){
			int i,j;
			char *from,*to;
			for(j=0;j<8;j++) { 
				from=NUMBERS+BOX_SIZE*3*(sy+j)+sx*3;
				to=bm.rgb_buf+BOX_SIZE*3*(dy+j)+dx*3;
				i=12;
				while(i--) *to++=*from++;
			}
		}
		b=o;
		if (b>=100) {
			q((b/100)*4,60,43,46);
			b=b%100;
		}
		q((b/10)*4,60,47,46);
		q((b%10)*4,60,51,46);}
	if(time(NULL)!=y) {
		o=f;
		f=0;
		y=time(NULL);
	}
#endif
/* *INDENT-ON* */

	/* actually draw the screen */
	int xx,yy;
	unsigned char * from=bm.rgb_buf;

	for (xx=0;xx<BOX_SIZE*3;xx++) {
		from[xx]/=4;
		from[xx+BOX_SIZE*(BOX_SIZE-1)*3]=(255+from[xx+BOX_SIZE*(BOX_SIZE-1)*3])/2;
	}

	for (yy=0;yy<BOX_SIZE*BOX_SIZE*3;yy+=BOX_SIZE*3) {
		from[yy  ]/=4; from[yy+1]/=4; from[yy+2]/=4;
		from[yy+(BOX_SIZE-1)*3  ]=(255+from[yy+(BOX_SIZE-1)*3]  )/2;
		from[yy+(BOX_SIZE-1)*3+1]=(255+from[yy+(BOX_SIZE-1)*3]+1)/2;
		from[yy+(BOX_SIZE-1)*3+2]=(255+from[yy+(BOX_SIZE-1)*3]+2)/2;
	}

	for (yy=0;yy<BOX_SIZE;yy++)
		for (xx=0;xx<BOX_SIZE;xx++,from+=3)
			wmPutPixel(bm.xim,xx,yy,from[0],from[1],from[2]);

	RedrawWindow(bm.xim);

	/* update graph histories */
	if (memscreen_enabled)
	    roll_history();
    }
#ifdef PRO
    end=time(NULL);
    fprintf(stderr,"10000 redraws in %d seconds = %f fps\n",end-start,10000.0/(end-start));
#endif
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
	lshift_code = XKeysymToKeycode(wmxp_display,
				       XStringToKeysym("Shift_L"));
	rshift_code = XKeysymToKeycode(wmxp_display,
				       XStringToKeysym("Shift_R"));
    }

    XQueryKeymap(wmxp_display, keys);

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
    /* We begin with zero bubbles */
    bm.n_bubbles = 0;

    /* Allocate memory for calculations */
    bubblemon_allocate_buffers();

    bubblemon_setup_samples();
#undef MASK
}				/* make_new_bubblemon_dockapp */

/*
 * This function, bubblemon_update, gets the CPU usage and updates
 * the bubble array and main rgb buffer.
 */
static void bubblemon_update(int proximity) {
	Bubble *bubbles = bm.bubbles;
	unsigned int i, loadPercentage, x, y;
	unsigned char reds[3], grns[3], blus[3];
	unsigned char *ptr, *bubblebuf_ptr;
	enum bubblebuf_values { watercolor, antialiascolor, aircolor };
	unsigned int waterlevels_goal;

	/* These values are for keeping track of where we have to start
	   drawing water. */
	unsigned int waterlevel_min, waterlevel_max;
	unsigned int real_waterlevel_min, real_waterlevel_max;

	/* These values are for keeping track how deep the duck is inside water */
	unsigned int action_min = BOX_SIZE;
	static unsigned int last_action_min = 0;

	/* Find out the CPU load */
	loadPercentage = system_cpu();

	/* get loadavg */
	if (memscreen_enabled)
		system_loadavg();

	/*
	  The bubblebuf is made up of int8s (0..2), correspodning to the enum. A
	  pixel in the bubblebuf is accessed using the formula bubblebuf[row * w
	  + column].
	*/

	/* y coordinates are counted from here multiplied by 256
	   to get actual screen coordinate, divide by 256 */

	waterlevel_max = 0;
	waterlevel_min = MAKEY(BOX_SIZE);

	/* Move the water level with the current memory usage. */
	waterlevels_goal = MAKEY(BOX_SIZE) - ((bm.mem_percent * MAKEY(BOX_SIZE)) / 100);

	/* Guard against boundary errors */
	waterlevels_goal -= (1 << (POWER2 - 1));

	bm.waterlevels[0] = waterlevels_goal;
	bm.waterlevels[BOX_SIZE-1] = waterlevels_goal;

	for (x = 1; x < BOX_SIZE-1; x++) {
		/* Accelerate the current waterlevel towards its correct value */
		bm.waterlevels_dy[x] +=
			(((bm.waterlevels[x - 1] + bm.waterlevels[x + 1] - 2 * bm.waterlevels[x])
			  * bm.volatility_int) >> (POWER2 + 1));

		bm.waterlevels_dy[x] *= bm.viscosity_int;
		bm.waterlevels_dy[x] >>= POWER2;

		if (bm.waterlevels_dy[x] > bm.speed_limit_int)
			bm.waterlevels_dy[x] = bm.speed_limit_int;
		else if (bm.waterlevels_dy[x] < -bm.speed_limit_int)
			bm.waterlevels_dy[x] = -bm.speed_limit_int;
	}

	for (x = 1; x < BOX_SIZE-1; x++) {
		/* Move the current water level */
		bm.waterlevels[x] = bm.waterlevels[x] + bm.waterlevels_dy[x];

		if (bm.waterlevels[x] > MAKEY(BOX_SIZE)) {
			/* Stop the wave if it hits the floor... */
			bm.waterlevels[x] = MAKEY(BOX_SIZE);
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
	  Draw the air-and-water background

	  The waterlevel_max is the HIGHEST Y VALUE for the water level, which is
	  actually the LOWEST VISUAL POINT of the water.  Confusing enough?

	  So we want to draw from top to bottom:
	  Just air from (y == 0) to (y <= waterlevel_min)
	  Mixed air and water from (y == waterlevel_min) to (y <= waterlevel_max)
	  Just water from (y == waterlevel_max) to (y <= h)

	  Three loops is more code than one, but should be faster (fewer comparisons)
	*/

	/* Air only */
	memset(bm.bubblebuf, aircolor, real_waterlevel_min * BOX_SIZE);

	/* Air and water */
	for (x = 0; x < BOX_SIZE; x++) {
		/* Air... */
		for (y = real_waterlevel_min;
		     (signed) y < REALY(bm.waterlevels[x]); y++) /* why the (signed) ? */
			bm.bubblebuf[y * BOX_SIZE + x] = aircolor;
		
		/* ... and water */
		for (; y < real_waterlevel_max; y++)
			bm.bubblebuf[y * BOX_SIZE + x] = watercolor;
	}

	/* Water only */
	memset(bm.bubblebuf + real_waterlevel_max * BOX_SIZE, watercolor,
	       (BOX_SIZE - real_waterlevel_max) * BOX_SIZE);

	/* Create a new bubble if the planets are correctly aligned... */
	if ((bm.n_bubbles < bm.maxbubbles)
	    && ((rand() % 101) <= loadPercentage)) {
		/* We don't allow bubbles on the edges 'cause we'd have to clip them */
		bubbles[bm.n_bubbles].x = (rand() % (BOX_SIZE-2)) + 1;
		bubbles[bm.n_bubbles].y = MAKEY(BOX_SIZE) - 256;
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
			if (bubbles[bm.n_bubbles].x < (BOX_SIZE-3))
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
		if (bubbles[i].x < 1 || bubbles[i].x > (BOX_SIZE-2) ||
		    bubbles[i].y > MAKEY(BOX_SIZE)) {
#ifdef DEBUG_DUCK
			fprintf (stderr, "bubble out of bounds "
			         "bubbles[%i].x=%i, bubbles[%i].y=%i\n", 
			         i, bubbles[i].x, i, bubbles[i].y);
#endif
		
			/* Yes; nuke it */
			bubbles[i].x = bubbles[bm.n_bubbles - 1].x;
			bubbles[i].y = bubbles[bm.n_bubbles - 1].y;
			bubbles[i].dy = bubbles[bm.n_bubbles - 1].dy;
			bm.n_bubbles--; /* XXX this can't be right */

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
		  To prevent ugliness, we draw antialiascolor only on top of
		  watercolor, and aircolor on top of antialiascolor.
		*/

		/* Top row */
		bubblebuf_ptr = &(bm.bubblebuf[(((REALY(y) - 1) * BOX_SIZE) + BOX_SIZE) + x - 1]);
		if (y >= bm.waterlevels[x]) {
			if (*bubblebuf_ptr < aircolor) 
				(*bubblebuf_ptr)++; /* water becomes antialias; antialias becomes air for outside corners */
			bubblebuf_ptr++;
			
			*bubblebuf_ptr = aircolor;
			bubblebuf_ptr++;
			
			if (*bubblebuf_ptr < aircolor) 
				(*bubblebuf_ptr)++;
			bubblebuf_ptr += BOX_SIZE-2;
		} else {
			bubblebuf_ptr += BOX_SIZE;
		}
		
		/* Middle row - no color clipping necessary */
		*bubblebuf_ptr = aircolor;
		bubblebuf_ptr++;
		*bubblebuf_ptr = aircolor;
		bubblebuf_ptr++;
		*bubblebuf_ptr = aircolor;
		bubblebuf_ptr += BOX_SIZE-2;

		/* Bottom row */
		if (y < (MAKEY(BOX_SIZE) - 256)) {
			if (*bubblebuf_ptr < aircolor) {
				(*bubblebuf_ptr)++;
			}
			bubblebuf_ptr++;
			
			*bubblebuf_ptr = aircolor;
			bubblebuf_ptr++;
			
			if (*bubblebuf_ptr < aircolor) {
				(*bubblebuf_ptr)++;
			}
		}
	}

	/*
	  Vary the colors of air and water with how many percent of the available
	  swap space that is in use.
	*/
#define GET_RED(x) (((x)>>16)&255)
#define GET_GRN(x) (((x)>> 8)&255)
#define GET_BLU(x) (((x)    )&255)

	reds[watercolor] = 
		(GET_RED(bm.liquid_maxswap) * bm.swap_percent +
		 GET_RED(bm.liquid_noswap) * (100 - bm.swap_percent)) / 100;
	reds[aircolor] = 
		(GET_RED(bm.air_maxswap) * bm.swap_percent +
		 GET_RED(bm.air_noswap) * (100 - bm.swap_percent)) / 100;
	reds[antialiascolor] = ((int)reds[watercolor] + reds[aircolor])/2;

	grns[watercolor] = 
		(GET_GRN(bm.liquid_maxswap) * bm.swap_percent +
		 GET_GRN(bm.liquid_noswap) * (100 - bm.swap_percent)) / 100;
	grns[aircolor] = 
		(GET_GRN(bm.air_maxswap) * bm.swap_percent +
		 GET_GRN(bm.air_noswap) * (100 - bm.swap_percent)) / 100;
	grns[antialiascolor] = ((int)grns[watercolor] + grns[aircolor])/2;

	blus[watercolor] = 
		(GET_BLU(bm.liquid_maxswap) * bm.swap_percent +
		 GET_BLU(bm.liquid_noswap) * (100 - bm.swap_percent)) / 100;
	blus[aircolor] = 
		(GET_BLU(bm.air_maxswap) * bm.swap_percent +
		 GET_BLU(bm.air_noswap) * (100 - bm.swap_percent)) / 100;
	blus[antialiascolor] = ((int)blus[watercolor] + blus[aircolor])/2;

#undef GET_RED
#undef GET_GRN
#undef GET_BLU

	ptr = bm.rgb_buf;
	bubblebuf_ptr = bm.bubblebuf;
	i = BOX_SIZE * BOX_SIZE;

	while (i--) {
		*ptr++ = reds[*bubblebuf_ptr];
		*ptr++ = grns[*bubblebuf_ptr];
		*ptr++ = blus[*bubblebuf_ptr];
		bubblebuf_ptr++;
	}

	if (duck_enabled) {
		duck_swimmer((last_action_min < action_min) ? 
		             last_action_min - 14 : 
		             action_min - 14);
	}

	if (cpu_enabled || memscreen_enabled) {
		realtime_alpha_blend_of_cpu_usage(loadPercentage, proximity);
	}

	/* Remember where we have been poking around this round */
	last_action_min = action_min;
}	/* bubblemon_update */


/* draws 4x8 digits for the memory/swap panel */
static void draw_digit(int num, unsigned char * whither, unsigned char red, unsigned char grn, unsigned char blu)
{
	int xx, yy;
	char *from;
	unsigned char *to;
    
	num *= 4;

	for (yy = 0; yy < 8; yy++) {
		to = whither + BOX_SIZE*3*yy;
		from = &numbers_xpm[3+yy][num];
		for (xx = 0; xx < 4; xx++, from++, to+=3 ) {
			if (*from==' ') { 
				to[0] = red; to[1] = grn; to[2] = blu;
			}
		}
	}
}

/* draws a string using previous function. non-digits and non-K/M = space */
static void draw_string(char *string, int x, int y, int color)
{
	unsigned char c;
	const unsigned char reds[4]={ 48,237,158,  0};
	const unsigned char grns[4]={140, 23,196,255};
	const unsigned char blus[4]={240, 23,237,233};

	if (pale) color += 2;

	/* bluish rgb:48,140,240  pale rgb:158,196,237
	   reddish rgb:237,23,23  pale(cyan) rgb:0,255,233 */

	while ((c = *string++)) {
		if (c == 'K') c = 10;
		else if (c == 'M') c = 11;
		else if (c >= '0' && c <= '9') c -= '0';

		if (c <= 11)
			draw_digit(c, &bm.mem_buf[3*(y*BOX_SIZE+x)], reds[color], grns[color], blus[color]);
		x += 4;
	}
}

static void draw_pixel(unsigned int x, unsigned int y, unsigned char *buf, char *c)
{
    unsigned char *ptr;
    ptr = buf + y * BOX_SIZE * 3 + x * 3 + 6;	/* +6 = x + 2 */
    *ptr++ = *c++;
    *ptr++ = *c++;
    *ptr++ = *c++;
}

/* draw graph num x size, data taken from history, into rgb buffer buf.
 * this is called not very often: only 1 time out of 250 */
static void draw_history(int num, int size, unsigned int *history, unsigned char *buf)
{
	int pixels_per_byte;
	int j, k;
	int d;

	pixels_per_byte = 100;

	for (j = 0; j < num; j++) {
		while (history[j] > pixels_per_byte) /* autoscaling */
			pixels_per_byte += 100;
	}

	for (k = 0; k < num; k++) {
		d = size * history[k] / pixels_per_byte;

		for (j = 0; j < size; j++) {
			if (j < d - 2)
				draw_pixel(k, size - j - 1, buf, "\x00\x7d\x71"); /* dark cyan for lower part of bar graph */
			else if (j < d)
				draw_pixel(k, size - j - 1, buf, "\x20\xb6\xae"); /* seagreen for top two pixels */
		}
	}
	
	for (j = pixels_per_byte - 100; j > 0; j -= 100) { /* draw lines for each 100s */
		for (k = 0; k < num; k++) {
			d = size * j / pixels_per_byte;
			draw_pixel(k, size - d - 1, buf, "\x71\xe3\x71"); /* spring green */ 
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
	memcpy(bm.mem_buf, bm.screen_type ? load_screen.pixel_data : mem_screen.pixel_data,
	       BOX_SIZE * BOX_SIZE * 3);

	if (bm.screen_type) {
		for (i = 0; i < 3; i++) {
			sprintf(number, "%2d", bm.loadavg[i].i);
			draw_string(number, 1+(4*4+2+1)*i, 9, 0);
			sprintf(number, "%02d", bm.loadavg[i].f);
			draw_string(number, 1+(4*4+2+1)*i + 4*2 + 2, 9, 0);
		}
		/* copy history graph from previous rollover */
		memcpy(bm.mem_buf + 19 * BOX_SIZE * 3, bm.his_bufb, BOX_SIZE * 33 * 3);
	} else {
		/* draw memory */
		if (memscreen_megabytes)
			snprintf(number, 8, "%6lluM", bm.mem_used >> 20);
		else
			snprintf(number, 8, "%6lluK", bm.mem_used >> 10);
		snprintf(percent, 4, "%03d", bm.mem_percent);
		draw_string(number, 3, 2, (bm.mem_percent > 90) ? 1 : 0);
		draw_string(percent, 39, 2, (bm.mem_percent > 90) ? 1 : 0);

		/* draw swap */
		if (memscreen_megabytes)
			snprintf(number, 8, "%6lluM", bm.swap_used >> 20);
		else
			snprintf(number, 8, "%6lluK", bm.swap_used >> 10);
		snprintf(percent, 4, "%03d", bm.swap_percent);
		draw_string(number, 3, 11, (bm.swap_percent > 90) ? 1 : 0);
		draw_string(percent, 39, 11, (bm.swap_percent > 90) ? 1 : 0);

		/* copy history graph from previous rollover */
		memcpy(bm.mem_buf + 21 * BOX_SIZE * 3, bm.his_bufa, BOX_SIZE * 31 * 3);
	}
}

static void roll_membuffer(void) {
	static int delay;

	if (++delay < 30)
		return;

	delay = 0;
	render_secondary();
}

static void roll_history(void)  {
	static int update, doit;

	if (--doit <= 0) {
		doit = ROLLVALUE; /* how many redraws before we sample new data */
		if (--update <= 0) {
			/* reset counter; 5 = the number of samples to average into one point on 
			   the bar graph. Probably should be configurable. */
			update = 5;

			/* roll history buffers, averaging last 5 samples */
			if (bm.hisadd)
				bm.history[BOX_SIZE-4] /= bm.hisadd;
			if (bm.memadd)
				bm.memhist[BOX_SIZE-4] /= bm.memadd;

			memmove(&bm.history[0], &bm.history[1], sizeof(bm.history));
			memmove(&bm.memhist[0], &bm.memhist[1], sizeof(bm.memhist));

			bm.history[BOX_SIZE-4] = 0;
			bm.hisadd = 0;
			bm.memhist[BOX_SIZE-4] = 0;
			bm.memadd = 0;

			/* refresh backgrounds */
			memcpy(bm.his_bufa, mem_screen.pixel_data + 21 * BOX_SIZE * 3, 31 * BOX_SIZE * 3);
			memcpy(bm.his_bufb, load_screen.pixel_data + 19 * BOX_SIZE * 3, 33 * BOX_SIZE * 3);

			/* render memory graph */
			draw_history(BOX_SIZE-4, 31, bm.memhist, bm.his_bufa);
			/* render load average graph */
			draw_history(BOX_SIZE-4, 33, bm.history, bm.his_bufb);

		}

		/* do load average history update */
		bm.history[BOX_SIZE-4] += bm.loadavg[0].f + (bm.loadavg[0].i * 100);
		bm.hisadd++;

		/* do memory history update */
		bm.memhist[BOX_SIZE-4] += bm.mem_percent;
		bm.memadd++;
	}
}

static void draw_cpudigit(int what, unsigned char *whither) {
	unsigned int len, y;
	unsigned char *to, *from;
	for (y = 0; y < 9; y++) { /* magic numbers suck. */
		len = 7*3;
		to = whither + y * 3*25;
		from = digits + y * 3*95 + what*3*6;
		while (len--)
			*to++ = *from++;
	}
}

static void draw_dtchr(const char letter, unsigned char * rgbbuf) {
  int x,y;

  if (letter>='0' && letter<='9') {
    for (y=0;y<7;y++)
      for (x=0;x<5;x++) 
	if (clockdigit[x+(y*10+(letter-'0'))*6]=='M') {
	  rgbbuf[(x+y*BOX_SIZE)*3  ]>>=1;
 	  rgbbuf[(x+y*BOX_SIZE)*3+1]>>=1;
 	  rgbbuf[(x+y*BOX_SIZE)*3+2]>>=1;
	}
  } else if (letter>='@' && letter<='~') {
    for (y=0;y<7;y++)
      for (x=0;x<4;x++) 
	if (clockalpha[x+(y*63+(letter-'@'))*5]=='M') {
	  rgbbuf[(x+y*BOX_SIZE)*3  ]>>=1;
 	  rgbbuf[(x+y*BOX_SIZE)*3+1]>>=1;
 	  rgbbuf[(x+y*BOX_SIZE)*3+2]>>=1;
	}
  } else if (letter==':') {
    rgbbuf[3*BOX_SIZE*3  ]>>=1;
    rgbbuf[3*BOX_SIZE*3+1]>>=1;
    rgbbuf[3*BOX_SIZE*3+2]>>=1;
    rgbbuf[5*BOX_SIZE*3  ]>>=1;
    rgbbuf[5*BOX_SIZE*3+1]>>=1;
    rgbbuf[5*BOX_SIZE*3+2]>>=1;
  }
}

static void draw_largedigit(char number, unsigned char * rgbbuf) {
  int x,y;
  int t,v;

  if (number>='0' && number<='9') number-='0';
  if (number>=0 && number<=9) {
    for (y=0;y<32;y++)
      for (x=0;x<13;x++) {
	      v=bigdigits[number*13+x+y*130]>>2;
        t=rgbbuf[(x+y*BOX_SIZE)*3  ]+v; if (t>255) t=255; rgbbuf[(x+y*BOX_SIZE)*3  ]=t;
        t=rgbbuf[(x+y*BOX_SIZE)*3+1]+v; if (t>255) t=255; rgbbuf[(x+y*BOX_SIZE)*3+1]=t;
        t=rgbbuf[(x+y*BOX_SIZE)*3+2]+v; if (t>255) t=255; rgbbuf[(x+y*BOX_SIZE)*3+2]=t;
      }
  }
}

static void draw_datetime(unsigned char * rgbbuf) {
  const char months[12][3]={"Jan","Feb","Mar","Apr","May","Jun",
			 "Jul","Aug","Sep","Oct","Nov","Dec"};
  const char days[7][3]={"Sun","Mon","Tue","Wed","Thu","Fri","Sat"};
  time_t mytt;
  struct tm * mytime;
  int mday=0, hours=0;

  time(&mytt);
  mytime = localtime(&mytt);
  mday = mytime->tm_mday;

  if (mytime->tm_hour<shifttime) {
	  while (mday == mytime->tm_mday) {
		  mytt -= 3600; hours++;
		  mytime = localtime(&mytt);
	  }
	  mytime->tm_hour += hours;
  }

  /* Sat Jan 04 */

#define DOWx  9
#define MONx 25
#define DOMx 41
  /* draw day-of-week (14 px)*/
  draw_dtchr(days[mytime->tm_wday][0],rgbbuf+(DOWx   )*3+56*3);
  draw_dtchr(days[mytime->tm_wday][1],rgbbuf+(DOWx+ 5)*3+56*3);
  draw_dtchr(days[mytime->tm_wday][2],rgbbuf+(DOWx+10)*3+56*3);
  /* draw month (14 px) */
  draw_dtchr(months[mytime->tm_mon][0],rgbbuf+(MONx   )*3+56*3);
  draw_dtchr(months[mytime->tm_mon][1],rgbbuf+(MONx+ 5)*3+56*3);
  draw_dtchr(months[mytime->tm_mon][2],rgbbuf+(MONx+10)*3+56*3);
  /* draw day-of-month (11 px) */
  draw_dtchr((mytime->tm_mday)/10+'0',rgbbuf+(DOMx   )*3+56*3);
  draw_dtchr((mytime->tm_mday)%10+'0',rgbbuf+(DOMx+ 6)*3+56*3);

  draw_largedigit(mytime->tm_hour/10,rgbbuf+3*(3+BOX_SIZE*13));
  draw_largedigit(mytime->tm_hour%10,rgbbuf+3*(16+BOX_SIZE*13));
  draw_largedigit(mytime->tm_min/10,rgbbuf+3*(30+BOX_SIZE*13));
  draw_largedigit(mytime->tm_min%10,rgbbuf+3*(43+BOX_SIZE*13));
}

static void realtime_alpha_blend_of_cpu_usage(int cpu, int proximity)
{
	/* where is the text going to be (now, bottom-center) */
#define POSX (BOX_SIZE/2-12)
#define POSY (BOX_SIZE-10)
	int bob;

	/* memory window */
	static int blend = MAXBLEND;
	static int memblend = 256;
	static int showmem = 0;
	static int yoh;
	static int avg;
	int hibyte, y, pos;

	/* CPU load buffer */
	static unsigned char kit[25 * 3 * 9 + 1]; /* 9 high, 25 wide, 3bpp */
	unsigned char *kitptr;

	/* the plan is simple.  we don't want to redraw the digits every update
	 * because that doesn't look so good.  so we average it, and draw only
	 * once every N updates. 

	 * We alpha blend the static buffer so we still get cool transparency
	 * effects. */
	avg += cpu;

	/* 2 here is adjusted to mean 100ms*2=5Hz. Originally it was 15ms*10 meaning 7Hz */
	while (++yoh > 2) {
		cpu = avg / 2;
		avg = yoh = 0;
		hibyte = cpu / 10;
		if (hibyte == 10) {
			draw_cpudigit(1, kit);
			draw_cpudigit(0, &kit[3*6]);
			draw_cpudigit(0, &kit[3*12]);
		} else {
			draw_cpudigit(12, kit);
			draw_cpudigit(hibyte, &kit[3*6]);
			draw_cpudigit(cpu % 10, &kit[3*12]);
		}
		/* percent sign is always there */
		draw_cpudigit(10, &kit[3*18]);
	}

	/* sexy fade effect */
	if (proximity) {
		blend -= 4*6;
		if (blend < MINBLEND) {
			blend = MINBLEND;
			if (memscreen_enabled) {
				if (!showmem) {
					/* first time here, update memory stats */
					render_secondary();
				}
				showmem = 1;
				if (!bm.picture_lock)
					memblend -= 6*6;
				if (memblend < 40) {
					roll_membuffer();
					memblend = 40;
				}
			}
		}
	} else {
		blend += 4*6;
		if (bm.picture_lock)
			roll_membuffer();

		if (memscreen_enabled && !bm.picture_lock)
			memblend += 10*6;
		if (blend > MAXBLEND) {
			blend = MAXBLEND;
		}
		if (memscreen_enabled && memblend > 256) {
			memblend = 256;
			showmem = 0;
		}
	}

	if (cpu_enabled) {
		/* bit shifts result in smaller and faster code without an extra jns
		 * which appears if we / 128 instead of >> 7. 
		 */
		kitptr = kit;
		for (y = 0; y < 9; y++) {
			unsigned char src;
			pos = (y + POSY) * BOX_SIZE * 3 + (POSX * 3);
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

	draw_datetime(bm.rgb_buf);


	/* we hovered long enough to print some memory info */
	if (memscreen_enabled && showmem) {
		unsigned char *ptr, *ptr2, src;
		ptr = bm.mem_buf;
		ptr2 = bm.rgb_buf;
		bob = BOX_SIZE * BOX_SIZE * 3;
		while (bob--) {
			src = *ptr2;
			*ptr2++ = (memblend * src + (256 - memblend) * *ptr++) >> 8;
		}
	}
#undef POSY
#undef POSX
}

static void duck_set(int x, int y, int nr, int rev, int upsidedown)
{
    int w, h;
    int rw;
    int rh;
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
    if ((y + 17) > BOX_SIZE)
	dh = BOX_SIZE - y;
    dw = 18;
    if (x > BOX_SIZE-18)
	    dw = 18 - (x - (BOX_SIZE-18));
    di = 0;
    if (x < 0)
	di = -(x);
    for (h = ds; h < dh; h++) {
	/* calculate this only once */
	int ypos = (h + y) * BOX_SIZE;
	rh = (upsidedown && upside_down_duck_enabled) ? 16 - h : h;
	for (w = di; w < dw; w++) {
	    rw = (rev) ? 17 - w : w;
	    if ((cmap = GETME(rw, rh, nr)) != 0) {
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

	const int outp[16] =
		{ 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1
		};
	static int totalcounter = -1;

	if (++totalcounter > 15)
		totalcounter = 0;

	return outp[totalcounter];
}

static void duck_swimmer(int posy)
{
    static int tx = -19;
    static int rp;
    static int rev = 1;
    static int upsidedown = 0;

    /* dive */
    if (upside_down_duck_enabled) {
	if (upsidedown == 0 && posy < 2)
	    upsidedown = 1;
	else if (upsidedown == 1 && posy > 5)	/* jump out */
	    upsidedown = 0;

	if (upsidedown)
	    posy += 10;
    }
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
	if (tx++ > BOX_SIZE+1) {
	    tx = BOX_SIZE+1;
	    rev = 0;
	}
    }
    duck_set(tx, posy, animate_correctly(), rev, upsidedown);
}

static void bubblemon_setup_samples(void) {
	bm.loadIndex = 0;
	bm.load = calloc(bm.samples, sizeof(u_int64_t));
	bm.total = calloc(bm.samples, sizeof(u_int64_t));
}

static void bubblemon_allocate_buffers(void)
{
	int i;

	/* storage for bubbles */
	bm.bubbles = (Bubble *) malloc(sizeof(Bubble) * bm.maxbubbles);

	/* Allocate (zeroed) bubble memory */
	if (bm.bubblebuf)
		free(bm.bubblebuf);

	bm.bubblebuf = calloc(BOX_SIZE * (BOX_SIZE+4), sizeof(char));

	/* Allocate water level memory */
	if (bm.waterlevels)
		free(bm.waterlevels);

	bm.waterlevels = malloc(BOX_SIZE * sizeof(int));
	for (i = 0; i < BOX_SIZE; i++) {
		bm.waterlevels[i] = MAKEY(BOX_SIZE);
	}

	/* Allocate water level velocity memory */
	if (bm.waterlevels_dy)
		free(bm.waterlevels_dy);

	bm.waterlevels_dy = calloc(BOX_SIZE, sizeof(int));
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
