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
#include <sys/time.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <locale.h>
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
#include "misc/numbers.xpm"
#include "misc/ofmspct.xpm"

/* #define DEBUG_DUCK 1 */

#ifndef NAME
#define NAME "wmbubble"
#endif

/* Want a better way to work with these. But we use them in two places now, so... */
#define GET_RED(x) (((x)>>16)&255)
#define GET_GRN(x) (((x)>> 8)&255)
#define GET_BLU(x) (((x)    )&255)

enum bubblebuf_values { watercolor, antialiascolor, aircolor };

/* local prototypes *INDENT-OFF* */
void bubblemon_allocate_buffers(void);
void bubblemon_update(int cpu);
void bubblebuf_colorspace(void);
void build_graphs(void);

void make_new_bubblemon_dockapp(void);
void get_memory_load_percentage(void);
void bubblemon_session_defaults(XrmDatabase x_resource_database);
int get_screen_selection(void);
/* draw functions for load average / memory screens */
void draw_from_xpm(char **xpm, unsigned char *whither, unsigned int targetw,
                   unsigned int xpmx, unsigned int xpmy, unsigned int xpmw,
                   unsigned int xpmh, unsigned int color);
void draw_history(int num, int size, unsigned int *history,
                  unsigned char *buf);
void draw_digit(unsigned char * from, unsigned char * whither);
void draw_string(char *string, int x, int y, int color);
void draw_cpudigit(int what, unsigned char *whither);
void draw_cpugauge(int cpu);

void render_secondary(void);
void calculate_transparencies(int proximity);
void alpha_cpu(void);
void alpha_graph(void);
void roll_history(void);

void alpha_datetime(void);
void draw_dtchr(const char letter, unsigned char *where);

int animate_correctly(void);
void draw_duck(int x, int y, int frame_no, int flipx, int flipy);
void duck_swimmer(void);

#ifdef __FreeBSD__
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
int graph_digit_color = 0x308cf0;
int graph_warning_digit_color = 0xed1717;
int pale = 0;

int shifttime = 0;

int do_help = 0;

int delay_time = 100000;

int gauge_alpha = CPUMAXBLEND;
int graph_alpha = GRAPHMAXBLEND;

/* duck_colors[0] is always transparent */
int duck_colors[4] = {0,0xF8FC00,0xF8B040,0};
/* 1, 5, 15 on load average graph; m, s on memory utilization graph */
int graph_labels = 0xC1C400;
int graph_field = 0x202020;
int graph_grid = 0x062A00;

int graph_max = 0x20B6AE;
int graph_bar = 0x007D71;
int graph_hundreds = 0x71E371;

unsigned char * empty_loadgraph, * empty_memgraph;
unsigned char * graph_numbers_n_rgb, * graph_numbers_b_rgb;
unsigned char cpu_gauge[25*9*3];

XrmOptionDescRec x_resource_options[] = {
	{"-maxbubbles",    "*maxbubbles",     XrmoptionSepArg, (XPointer) NULL},
	{"-air_noswap",    "*air_noswap",     XrmoptionSepArg, (XPointer) NULL},
	{"-air_maxswap",   "*air_maxswap",    XrmoptionSepArg, (XPointer) NULL},
	{"-liquid_noswap", "*liquid_noswap",  XrmoptionSepArg, (XPointer) NULL},
	{"-liquid_maxswap","*liquid_maxswap", XrmoptionSepArg, (XPointer) NULL},
	{"-duckbody",      "*duckbody",       XrmoptionSepArg, (XPointer) NULL},
	{"-duckbill",      "*duckbill",       XrmoptionSepArg, (XPointer) NULL},
	{"-duckeye",       "*duckeye",        XrmoptionSepArg, (XPointer) NULL},
	{"-delay",         "*delay",          XrmoptionSepArg, (XPointer) NULL},
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
	{"-graphdigit",    "*graphdigit",     XrmoptionSepArg, (XPointer) NULL},
	{"-graphwarn",     "*graphwarn",      XrmoptionSepArg, (XPointer) NULL},
	{"-graphlabel",    "*graphlabel",     XrmoptionSepArg, (XPointer) NULL},
	{"-graphfield",    "*graphfield",     XrmoptionSepArg, (XPointer) NULL},
	{"-graphgrid",     "*graphgrid",      XrmoptionSepArg, (XPointer) NULL},
	{"-graphmax",      "*graphmax",       XrmoptionSepArg, (XPointer) NULL},
	{"-graphbar",      "*graphbar",       XrmoptionSepArg, (XPointer) NULL},
	{"-graphmarkers",  "*graphmarkers",   XrmoptionSepArg, (XPointer) NULL},
	{"-p",             ".graphdigitpale", XrmoptionNoArg,  (XPointer) "1"},
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
	{"-duckbody",       Is_Color, &duck_colors[1], "Color of duck's body" },
	{"-duckbill",       Is_Color, &duck_colors[2], "Color of duck's bill" },
	{"-duckeye",        Is_Color, &duck_colors[3], "Color of duck's eye" },
	{"-delay",          Is_Int,   &delay_time, "delay this number of microseconds between redraws" },
	{"-ripples",        Is_Float, &bm.ripples, "Pixels to disturb the surface when a bubble is formed/pops" },
	{"-gravity",        Is_Float, &bm.gravity, "Pixels/refresh/refresh to accelerate bubbles upwards" },
	{"-volatility",     Is_Float, &bm.volatility, "Restorative force on water surface in proportion/refresh"},
	{"-viscosity",      Is_Float, &bm.viscosity, "Attenuation of surface velocity in proportion/refresh"},
	{"-speed_limit",    Is_Float, &bm.speed_limit, "Maximum water surface velocity in pixels/refresh" },
	{"-help",           Is_Bool, &do_help, "Displays this help" },
	{"-duck",           Is_Bool, &duck_enabled, "Draw the duck?"},
	{"-d",              Is_Bool, &duck_enabled, "Just don't draw the duck" },
	{"-upsidedown",     Is_Bool, &upside_down_duck_enabled, "Can the duck flip when the tank is overfull?" },
	{"-u",              Is_Bool, &upside_down_duck_enabled, "The duck can never flip" },
	{"-cpumeter",       Is_Bool, &cpu_enabled, "Show the current load at the bottom"},
	{"-c",              Is_Bool, &cpu_enabled, "Don't show the current load"},
	{"-graphdigit",     Is_Color, &graph_digit_color, "The color for the digits on the graphs"},
	{"-graphwarn",      Is_Color, &graph_warning_digit_color, "The color for the digits on the memory graph when above 90%" },
	{"-graphlabel",     Is_Color, &graph_labels, "The color for the 1 5 and 15 on load graph and m and s on mem graph" },
	{"-graphfield",     Is_Color, &graph_field, "The background color of the graphs" },
	{"-graphgrid",      Is_Color, &graph_grid, "The color of the grid lines in the graphs" },
	{"-graphmax",       Is_Color, &graph_max, "The color of the top two pixels of the bar graph" },
	{"-graphbar",       Is_Color, &graph_bar, "The color of the rest of the bar graph" },
	{"-graphmarkers",   Is_Color, &graph_hundreds, "The color of the horizontal lines on the graph that indicate each integer load average" },
	{"-p",              Is_Bool, &pale, "Adjust the digit colors to pale blue and cyan"},
	{"-graphs",         Is_Bool, &memscreen_enabled, "Does hovering show the graphs" },
	{"-m",              Is_Bool, &memscreen_enabled, "Graphs are never shown"},
	{"-units",          Is_Bool, &memscreen_megabytes, "Units for memory in KB or MB"},
	{"-k",              Is_Bool, &memscreen_megabytes, "Memory graphs use MB" },
	{"-shifttime",      Is_Int, &shifttime, "Number of hours after midnight that are drawn as part of the previous day" }
};	

void bubblemon_session_defaults(XrmDatabase x_resource_database)
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
					if (XParseColor(wmxp_display,
					                DefaultColormap(wmxp_display,
					                                DefaultScreen(wmxp_display)),
					                val.addr, &colorparsing) == 0) {
						fprintf(stderr,"Couldn't parse color %s for control %s\n",
						        val.addr,x_resource_extras[i].option);
						exit(-3);
					}
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
					fprintf(stderr, "Compilation time error: element #%d (%s) has not-understood parse type %d\n",
					        i, x_resource_extras[i].option, x_resource_extras[i].parse_as);
					abort();
					break;
				}
		}
	}

	if (pale) {
		graph_digit_color = 0x9ec4ed;
		graph_warning_digit_color = 0x00ffe9;
	}

	/* convert doubles into integer representation */
	bm.ripples_int = MAKE_INTEGER(bm.ripples);
	bm.gravity_int = MAKE_INTEGER(bm.gravity);
	bm.volatility_int = MAKE_INTEGER(bm.volatility);
	bm.viscosity_int = MAKE_INTEGER(bm.viscosity);
	bm.speed_limit_int = MAKE_INTEGER(bm.speed_limit);
}

void print_usage(void) {
	int i;
	printf("BubbleMon version "VERSION"\n"
	       "Usage: "NAME" [switches] [program_1] [program_2]\n\n"
	       "Permitted options are:\n");
	for (i=0; i < sizeof(x_resource_extras) / sizeof(x_resource_extras[0]); i++)
		printf("%-20s %s\n",x_resource_extras[i].option,x_resource_extras[i].description);
}

int main(int argc, char **argv) {
	char execute[256];
	char * x_resources_as_string;
	unsigned int loadPercentage;
	int gaugedelay, gaugedivisor, graphdelay, graphdivisor;
	int proximity = 0;
#ifdef FPS
	int frames_count;
	time_t last_time;
#endif
#if defined(PRO) && PRO > 0
	struct timeval start, end;
	int cnt = PRO;
#endif
	XEvent event;
	XrmDatabase x_resource_db;

#ifdef FPS
	frames_count = last_time = 0;
#endif

	/* VERY first thing: zero data structure */
	memset(&bm, 0, sizeof(bm));

	/* Support localized date strings */
	setlocale(LC_ALL,"");

	/* initialize Ximage */
	bm.xim = initwmX11pixmap(argc,argv);
	XrmInitialize();
	x_resources_as_string = XResourceManagerString(wmxp_display);
	if (x_resources_as_string == NULL)
		x_resources_as_string = "";
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

#ifdef __FreeBSD__
	if (init_stuff())
		exit(-1);
#endif

	make_new_bubblemon_dockapp();

	/* the math below makes the cpu gauge try to update at 5 Hz.
	   Originally it was 15ms*10 meaning 7Hz */
	gaugedelay = gaugedivisor = 200000 / delay_time;
	if (gaugedivisor == 0) gaugedivisor = 1;

	graphdelay = graphdivisor = 1000000 / delay_time;
	if (graphdivisor == 0) graphdivisor = 1;

	loadPercentage = 0;

#ifdef PRO
	gettimeofday(&start,NULL);
#endif
	while (
#ifdef PRO
	       cnt--
#else
	       1
#endif
	       ) {
		/* XPending: 1184ns/frame */
		while (XPending(wmxp_display)) {
			XNextEvent(wmxp_display,&event);
			switch (event.type) {
			case ButtonPress:
				if (event.xbutton.button == 3) {
					bm.picture_lock = !bm.picture_lock;
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
		usleep(delay_time);
#endif /*PRO*/
		/* gmlp: 72.53us/frame */
		get_memory_load_percentage();

		if (++gaugedelay >= gaugedivisor) {
			/* on linux, apparently opening /proc/stat is expensive, whodathunk? */
			/* system_cpu: 494.0us/frame */
			loadPercentage = system_cpu();
			gaugedelay = 0;
		}

		if (memscreen_enabled && ++graphdelay >= graphdivisor) {
			/* update graph histories: ? */
			roll_history();
			graphdelay = 0;
		}

		/* bubblemon_update: 2.207us/frame */
		bubblemon_update(loadPercentage);
		/* 18.68us/frame */
		bubblebuf_colorspace();

		/* 1.785us/frame */
		if (duck_enabled) {
			duck_swimmer();
		}

		if (cpu_enabled && gaugedelay == 0)
			/* we don't want to redraw changing digits every update because that
			 * doesn't look so good. we throttle it above because system_cpu is
			 * expensive on linux. */
			draw_cpugauge(loadPercentage);

		/* ? */
		calculate_transparencies(proximity);

		/* ? */
		/* originally, numbers above are updated every (30/66.7)=0.45 s and
		   graphs are rolled every 500/66.7=7.5 s.

		   For now we'll just update everything at the same rate */
		if (memscreen_enabled && graph_alpha < GRAPHMAXBLEND && graphdelay == 0)
			render_secondary();

		if (cpu_enabled)
			alpha_cpu();

		/* if (clock_mode == DIGITAL_CLOCK) */
		alpha_datetime();

		if (memscreen_enabled && graph_alpha < GRAPHMAXBLEND)
			alpha_graph();

#ifdef FPS
		/* 157ns/frame */
		frames_count++;
		if(time(NULL)!=last_time) {
			fprintf(stderr,"%03dfps\n",frames_count);
			frames_count=0;
			last_time=time(NULL);
		}
#endif /*FPS*/

		/* drawing borders: 1.136us/frame */
		int xx,yy;
		unsigned char * from;

		for (from=bm.rgb_buf,xx=0;xx<BOX_SIZE*3-3;from++,xx++) {
			from[0]/=4;
			from[BOX_SIZE*(BOX_SIZE-1)*3+3]=(255+from[BOX_SIZE*(BOX_SIZE-1)*3+3])/2;
		}

		for (from=bm.rgb_buf,yy=0;yy<BOX_SIZE-1;yy++,from+=BOX_SIZE*3) {
			from[0]/=4; from[1]/=4; from[2]/=4;
			from[(2*BOX_SIZE-1)*3  ]=(255+from[(2*BOX_SIZE-1)*3  ])/2;
			from[(2*BOX_SIZE-1)*3+1]=(255+from[(2*BOX_SIZE-1)*3+1])/2;
			from[(2*BOX_SIZE-1)*3+2]=(255+from[(2*BOX_SIZE-1)*3+2])/2;
		}

		/* Our colorspace conversion: 18.17us/frame */
		RGBtoXIm(bm.rgb_buf,bm.xim);
		/* X11 XImage->Pixmap->display: 148.6us/frame */
		RedrawWindow(bm.xim);
	}
#ifdef PRO
	gettimeofday(&end,NULL);
	end.tv_sec -= start.tv_sec;
	end.tv_usec -= start.tv_usec;
	fprintf(stderr,"%d redraws in %f seconds = %f fps, %f us/f\n",PRO,
	        end.tv_sec+end.tv_usec/1000000.0,
	        (float)PRO/(end.tv_sec+end.tv_usec/1000000.0),
	        (end.tv_sec*1000000.0+end.tv_usec)/(float)PRO);
#endif
	return 0;
}	/* main */

/*
 * This determines if the left or right shift keys are depressed.
 */
int get_screen_selection(void) {
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

	if ((keys[lshift_code >> 3] & (1 << (lshift_code % 8))) ||
	    (keys[rshift_code >> 3] & (1 << (rshift_code % 8)))) {
		return 0;
	} else {
		return 1;
	}
}

void make_new_bubblemon_dockapp(void) {
	/* We begin with zero bubbles */
	bm.n_bubbles = 0;

	/* Allocate memory for calculations */
	bubblemon_allocate_buffers();

	build_graphs();
}	/* make_new_bubblemon_dockapp */

/*
 * This function, bubblemon_update, gets the CPU usage and updates
 * the bubble array and main rgb buffer.
 */
void bubblemon_update(int loadPercentage) {
	Bubble *bubbles = bm.bubbles;
	unsigned int i, x, y;
	unsigned char *bubblebuf_ptr;
	unsigned int waterlevels_goal;

	/* These values are for keeping track of where we have to start
	   drawing water. */
	unsigned int waterlevel_min, waterlevel_max;
	unsigned int real_waterlevel_min, real_waterlevel_max;

	/*
	  The bubblebuf is made up of int8s (0..2), corresponding to the enum. A
	  pixel in the bubblebuf is accessed using the formula bubblebuf[row * w
	  + column].
	*/

	/* y coordinates are counted from here multiplied by MULTIPLIER
	   to get actual screen coordinate, use REALY */

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
		     y < REALY(bm.waterlevels[x]); y++)
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
		bubbles[bm.n_bubbles].y = MAKEY(BOX_SIZE-1);
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
		
			/* Yes; nuke it by replacing its properties with those
			   of the last one and deallocate the last one. */
			bubbles[i].x = bubbles[bm.n_bubbles - 1].x;
			bubbles[i].y = bubbles[bm.n_bubbles - 1].y;
			bubbles[i].dy = bubbles[bm.n_bubbles - 1].dy;
			bm.n_bubbles--;

	    /*
	      We must still check what was the next bubble which is 
	      now the current bubble.
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

			bubbles[i].x = bubbles[bm.n_bubbles - 1].x;
			bubbles[i].y = bubbles[bm.n_bubbles - 1].y;
			bubbles[i].dy = bubbles[bm.n_bubbles - 1].dy;
			bm.n_bubbles--;

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
		if (y < MAKEY(BOX_SIZE-1)) {
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
}	/* bubblemon_update */


void bubblebuf_colorspace(void) {
	unsigned char reds[3], grns[3], blus[3];
	unsigned char * bubblebuf_ptr, * rgbbuf_ptr;
	int count, bubblebuf_val;
	/*
	  Vary the colors of air and water with how many percent of the available
	  swap space that is in use.
	*/

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

	for (count = BOX_SIZE*BOX_SIZE, rgbbuf_ptr = bm.rgb_buf, bubblebuf_ptr = bm.bubblebuf;
	     count; count--) {
		bubblebuf_val = *bubblebuf_ptr++; /* -O3 did not optimize away the 3x load of *bubblebuf_ptr */
		*rgbbuf_ptr++ = reds[bubblebuf_val];
		*rgbbuf_ptr++ = grns[bubblebuf_val];
		*rgbbuf_ptr++ = blus[bubblebuf_val];
	}
} /* bubblebuf_colorspace */

void draw_from_xpm(char **xpm, unsigned char *whither, unsigned int targetw,
                   unsigned int xpmx, unsigned int xpmy, unsigned int xpmw, 
                   unsigned int xpmh, unsigned int color) {
	unsigned char r=GET_RED(color),g=GET_GRN(color),b=GET_BLU(color);
	int yy,xx,ncolors,cpp;
	unsigned char * to;
	char * from;
	char transparent=0;

	sscanf(xpm[0],"%u %u %u %u",&xx,&yy,&ncolors,&cpp);
	if (cpp != 1) abort(); /* fuck that */
	if (xpmx+xpmw > xx || xpmy+xpmh > yy) return;

	for (yy=1;yy<=ncolors;yy++) {
		if (strcasestr(xpm[yy],"none")) {
			transparent = xpm[yy][0];
			yy=255;
		}
	}

	for (yy=0;yy<xpmh;yy++) {
		to = whither + targetw*3*yy;
		from = &xpm[1+ncolors+xpmy+yy][xpmx];
		for (xx=0;xx<xpmw;xx++,from++,to+=3) {
			if (*from != transparent) {
				to[0]=r; to[1]=g; to[2]=b;
			}
		}
	}
}

/* draws 3x8 (4x9 padding) digits for the memory/swap panel */
void draw_digit(unsigned char * from, unsigned char * whither) {
	int yy;
	/* assumes layout of from is 3x9x3bpp */
	for (yy = 0; yy < 8; yy++) {
		memcpy(whither, from, 12);
		from += 12;
		whither += 3*BOX_SIZE;
	}
}

/* draws a string using previous function. non-digits and non-K/M = space */
void draw_string(char *string, int x, int y, int color) {
	unsigned char c;
	unsigned char * graph_numbers = graph_numbers_n_rgb;

	if (color) graph_numbers = graph_numbers_b_rgb;

	/* bluish rgb:48,140,240  pale rgb:158,196,237
	   reddish rgb:237,23,23  pale(cyan) rgb:0,255,233 */

	while ((c = *string++)) {
		if (c == 'K') c = 10;
		else if (c == 'M') c = 11;
		else if (c >= '0' && c <= '9') c -= '0';

		if (c <= 11)
			draw_digit(&graph_numbers[3*4*9*c],
			           &bm.mem_buf[3*(y*BOX_SIZE+x)]);
		x += 4;
	}
}

/* draw graph num x size, data taken from history (num long), into rgb
   buffer buf (width BOX_SIZE, height size). */
void draw_history(int num, int size, unsigned int *history, unsigned char *buf) {
	int pixels_per_byte;
	int yy, xx;
	int height;
	unsigned char mr,mg,mb, br,bg,bb;
	unsigned char * graphptr;

	pixels_per_byte = 100;

	for (xx = 0; xx < num; xx++) {
		while (history[xx] > pixels_per_byte) /* autoscaling */
			pixels_per_byte += 100;
	}

	mr = GET_RED(graph_max);
	mg = GET_GRN(graph_max);
	mb = GET_BLU(graph_max);

	br = GET_RED(graph_bar);
	bg = GET_GRN(graph_bar);
	bb = GET_BLU(graph_bar);

	for (xx = 0; xx < num; xx++) {
		height = size - size * history[xx] / pixels_per_byte;

		for (yy = height, graphptr = &buf[(height*BOX_SIZE+xx+2)*3];
		     yy < height+2 && yy < size;
		     yy++, graphptr += 3*BOX_SIZE) {
			graphptr[0] = mr; graphptr[1] = mg; graphptr[2] = mb;
		}

		for (;yy < size; yy++, graphptr += 3*BOX_SIZE) {
			graphptr[0] = br; graphptr[1] = bg; graphptr[2] = bb;
		}
	}

	br = GET_RED(graph_hundreds);
	bg = GET_GRN(graph_hundreds);
	bb = GET_BLU(graph_hundreds);
	
	for (yy = pixels_per_byte - 100; yy > 0; yy -= 100) { /* draw lines for each 100s */
		height = size - size * yy / pixels_per_byte;
		graphptr = &buf[(height*BOX_SIZE+2)*3];
		for (xx = 0; xx < num; xx++, graphptr += 3) {
			graphptr[0] = br; graphptr[1] = bg; graphptr[2] = bb;
		}
	}
}

/* refreshes memory/swap screen */
void render_secondary(void) {
	char percent[4];
	char number[8];
	int i;

	/* make a clean buffer with blank spaces. */
	memcpy(bm.mem_buf, bm.screen_type ? empty_loadgraph : empty_memgraph,
	       BOX_SIZE * BOX_SIZE * 3);

	if (bm.screen_type) {
		for (i = 0; i < 3; i++) {
			sprintf(number, "%2d", bm.loadavg[i].i);
			draw_string(number, 1+(4*4+2+1)*i, 9, 0);
			sprintf(number, "%02d", bm.loadavg[i].f);
			draw_string(number, 1+(4*4+2+1)*i + 4*2 + 2, 9, 0);
		}
		/* render load average graph */
		draw_history(BOX_SIZE-4, BOX_SIZE-4-21, bm.history, &bm.mem_buf[21*BOX_SIZE*3]);
	} else {
		/* draw memory */
		if (memscreen_megabytes || bm.mem_used > (999999<<10))
			snprintf(number, 8, "%6lluM", bm.mem_used >> 20);
		else
			snprintf(number, 8, "%6lluK", bm.mem_used >> 10);
		snprintf(percent, 4, "%03d", bm.mem_percent);
		draw_string(number, 3, 2, (bm.mem_percent > 90) ? 1 : 0);
		draw_string(percent, 39, 2, (bm.mem_percent > 90) ? 1 : 0);

		/* draw swap */
		if (memscreen_megabytes || bm.swap_used > (999999<<10))
			snprintf(number, 8, "%6lluM", bm.swap_used >> 20);
		else
			snprintf(number, 8, "%6lluK", bm.swap_used >> 10);
		snprintf(percent, 4, "%03d", bm.swap_percent);
		draw_string(number, 3, 11, (bm.swap_percent > 90) ? 1 : 0);
		draw_string(percent, 39, 11, (bm.swap_percent > 90) ? 1 : 0);

		/* render memory graph */
		draw_history(BOX_SIZE-4, BOX_SIZE-4-19, bm.memhist, &bm.mem_buf[19*BOX_SIZE*3]);
	}
}

void roll_history(void)  {
	system_loadavg();

	/* roll history buffers */
	bm.history[BOX_SIZE-4] = bm.loadavg[0].f + (bm.loadavg[0].i * 100);
	bm.memhist[BOX_SIZE-4] = bm.mem_percent;

	memmove(&bm.history[0], &bm.history[1], sizeof(bm.history));
	memmove(&bm.memhist[0], &bm.memhist[1], sizeof(bm.memhist));
}

void draw_cpudigit(int what, unsigned char *whither) {
	unsigned int y;
	unsigned char *from = digits + what * 3 * 6;;
	for (y = 0; y < 9; y++) { /* magic numbers suck. */
		memcpy(whither,from,21);
		whither += 3*25;
		from += 3*95;
	}
}

void draw_cpugauge(int cpu) {
	if (cpu >= 100) {
		draw_cpudigit(1, cpu_gauge);
		draw_cpudigit(0, &cpu_gauge[3*6]);
		draw_cpudigit(0, &cpu_gauge[3*12]);
	} else {
		draw_cpudigit(12, cpu_gauge);
		draw_cpudigit(cpu / 10, &cpu_gauge[3*6]);
		draw_cpudigit(cpu % 10, &cpu_gauge[3*12]);
	}
	/* percent sign is always there */
	draw_cpudigit(10, &cpu_gauge[3*18]);
}

int dtchr_width(const char letter) {
	if (letter >= '0' && letter <= '9') {
		return 6;
	} else if (letter >= '@' && letter <= '~') {
		return 5;
	} else if (letter == ':') {
		return 2;
	} else {
		return 1;
	}
}

void draw_dtchr(const char letter, unsigned char * rgbbuf) {
  int x,y;
  unsigned char * attenuator;

  switch (dtchr_width(letter)) {
  case 6:
	  for (y=0;y<7;y++)
		  for (x=0,attenuator=&rgbbuf[y*BOX_SIZE*3];x<5;x++) 
			  if (clockdigit[x+(y*10+(letter-'0'))*6]=='M') {
				  *(attenuator++)>>=1; *(attenuator++)>>=1; *(attenuator++)>>=1;
			  } else {
				  attenuator += 3;
	      }
	  break;
  case 5:
	  for (y=0;y<7;y++)
		  for (x=0,attenuator=&rgbbuf[y*BOX_SIZE*3];x<4;x++) 
			  if (clockalpha[x+(y*63+(letter-'@'))*5]=='M') {
				  *(attenuator++)>>=1; *(attenuator++)>>=1; *(attenuator++)>>=1;
			  } else {
				  attenuator += 3;
	      }
	  break;
  case 2:
	  rgbbuf[3*BOX_SIZE*3  ]>>=1;
	  rgbbuf[3*BOX_SIZE*3+1]>>=1;
	  rgbbuf[3*BOX_SIZE*3+2]>>=1;
	  rgbbuf[5*BOX_SIZE*3  ]>>=1;
	  rgbbuf[5*BOX_SIZE*3+1]>>=1;
	  rgbbuf[5*BOX_SIZE*3+2]>>=1;
	  break;
  }
}

void draw_largedigit(char number, unsigned char * rgbbuf) {
  int x,y;
  int t,v;
  unsigned char * from, * to;

  if (number>='0' && number<='9') number-='0';
  if (number>=0 && number<=9) {
	  for (y=0;y<32;y++)
		  for (x=0,from=&bigdigits[number*13+y*130],to=&rgbbuf[y*BOX_SIZE*3];x<13;x++) {
	      v=*from++>>2;
	      t=*to+v; *(to++)=(t>255)?255:t;
	      t=*to+v; *(to++)=(t>255)?255:t;
	      t=*to+v; *(to++)=(t>255)?255:t;
      }
  }
}

void alpha_datetime(void) {
	char format[11];
  time_t mytt;
  struct tm * mytime;
  int mday=0, hours=0;
  int ii, width;
  unsigned char * rgbptr;

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

  if (strftime(format,11,"%a %b %d",mytime) == 0) /* Sat Jan 04 */
	  strftime(format,11,"%m %d",mytime); /* 01 04   if above fails */

  for (width = ii = 0; ii < strlen(format); ii++) {
	  width += dtchr_width(format[ii]);
  }

  rgbptr = &bm.rgb_buf[3*(2*BOX_SIZE+(BOX_SIZE-width)/2)]; /* calculate centered */

  for (ii = 0; ii < strlen(format); ii++) {
	  draw_dtchr(format[ii],rgbptr);
	  rgbptr += 3*dtchr_width(format[ii]);
  }

  draw_largedigit(mytime->tm_hour/10,&bm.rgb_buf[3*(3+BOX_SIZE*13)]);
  draw_largedigit(mytime->tm_hour%10,&bm.rgb_buf[3*(16+BOX_SIZE*13)]);
  draw_largedigit(mytime->tm_min/10,&bm.rgb_buf[3*(30+BOX_SIZE*13)]);
  draw_largedigit(mytime->tm_min%10,&bm.rgb_buf[3*(43+BOX_SIZE*13)]);
}

void calculate_transparencies(int proximity) {
	static int gauge_rate, graph_transparent_rate, graph_opaque_rate;

	if (gauge_rate == 0) {
		/* gauge rate at 15ms/redraw: 4, or extremum-to-extremum in 0.4125s */
		gauge_rate = delay_time * (CPUMAXBLEND-CPUMINBLEND) / 412500;
		if (gauge_rate == 0) gauge_rate++;
		/* transparenting rate at 15ms/redraw: 6, or opaque-to-transpaernt in 0.54s */
		graph_transparent_rate = delay_time * (GRAPHMAXBLEND-GRAPHMINBLEND) / 540000;
		if (graph_transparent_rate == 0) graph_transparent_rate++;
		/* opacifying rate at 15ms/redraw: 10, or transparent-to-opaque in 0.324s */
		graph_opaque_rate = delay_time * (GRAPHMAXBLEND-GRAPHMINBLEND) / 324000;
		if (graph_opaque_rate == 0) graph_opaque_rate++;
	}

	/* sexy fade effect */
	if (proximity) {
		gauge_alpha -= gauge_rate;
		if (gauge_alpha < CPUMINBLEND) {
			gauge_alpha = CPUMINBLEND;
			if (memscreen_enabled) {
				if (graph_alpha == GRAPHMAXBLEND) {
					/* first time here, update memory stats */
					render_secondary();
				}
				if (!bm.picture_lock)
					graph_alpha -= graph_transparent_rate;
				if (graph_alpha < GRAPHMINBLEND) {
					graph_alpha = GRAPHMINBLEND;
				}
			}
		}
	} else {
		gauge_alpha += gauge_rate;
		if (memscreen_enabled && !bm.picture_lock)
			graph_alpha += graph_opaque_rate;
		if (gauge_alpha > CPUMAXBLEND) {
			gauge_alpha = CPUMAXBLEND;
		}
		if (memscreen_enabled && graph_alpha > GRAPHMAXBLEND) {
			graph_alpha = GRAPHMAXBLEND;
		}
	}
} /* calculate_transparencies */


void alpha_cpu(void) {
	unsigned char * gaugeptr, *rgbptr;
	int y, bob;
	gaugeptr = cpu_gauge;
	for (y = 0; y < 9; y++) {
		rgbptr = &bm.rgb_buf[((y + (BOX_SIZE-10)) * BOX_SIZE + (BOX_SIZE/2-12))*3];
		bob = 75;		/* 25 * 3 */
		while (bob--) {
			*rgbptr = (gauge_alpha * *rgbptr + (256 - gauge_alpha) * *gaugeptr++) >> 8;
			rgbptr++;
		}
	}
}

void alpha_graph(void) {
	unsigned char *graphptr, *rgbptr;
	int bob;
	graphptr = bm.mem_buf;
	rgbptr = bm.rgb_buf;
	bob = BOX_SIZE * BOX_SIZE * 3;
	while (bob--) {
		*rgbptr = (graph_alpha * *rgbptr + (256 - graph_alpha) * *graphptr++) >> 8;
		rgbptr++;
	}
}

void draw_duck(int x, int y, int frame_no, int flipx, int flipy) {
	int xx, yy;
	int real_x;
	int real_y;
	int pos;
	int duck_right, duck_left, duck_bottom, duck_top;
	int cmap;			/* index into duck colors */
	duck_top = 0;
	if (y < 0)
		duck_top = -(y);
	duck_bottom = 17;
	if ((y + 17) > BOX_SIZE)
		duck_bottom = BOX_SIZE - y;
	duck_right = 18;
	if (x > BOX_SIZE-18)
		duck_right = 18 - (x - (BOX_SIZE-18));
	duck_left = 0;
	if (x < 0)
		duck_left = -(x);
	for (yy = duck_top; yy < duck_bottom; yy++) {
		/* calculate this only once */
		int ypos = (yy + y) * BOX_SIZE;
		real_y = (flipy && upside_down_duck_enabled) ? 16 - yy : yy;
		for (xx = duck_left; xx < duck_right; xx++) {
			real_x = flipx ? 17 - xx : xx;
			if ((cmap = duck_data[frame_no][real_y * 18 + real_x]) != 0) {
				unsigned char r, g, b;
				pos = (ypos + xx + x) * 3;

				r = GET_RED(duck_colors[cmap]);
				g = GET_GRN(duck_colors[cmap]);
				b = GET_BLU(duck_colors[cmap]);

				/* and now we'll blend the duck part that in water */
				/* if we use integers here we speed up this function about
				 * 40%. */
				if (yy + y < REALY(bm.waterlevels[xx + x])) {
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
}

int animate_correctly(void) {
	/* returns the correct order of framenumber 0,1,2,1,0,1,2...
	   instead of 0,1,2,0,1,2 <- this way the duck looks really ugly
	   instead of keeping 2 counters we just made it longer */

	const int outp[16] =
		{ 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 1 };
	static int totalcounter = -1;

	if (++totalcounter > 15)
		totalcounter = 0;

	return outp[totalcounter];
}

void duck_swimmer() {
	static int tx = -19;
	static int rp;
	static int rev = 1;
	static int upsidedown = 0;
	int posy, avx;

	avx = tx-2;
	if (avx<0) avx=0;
	if (avx>BOX_SIZE-5) avx=BOX_SIZE-5;

	posy = REALY(bm.waterlevels[avx] + bm.waterlevels[avx+1]*2 + 
	             bm.waterlevels[avx+2]*2 + bm.waterlevels[avx+3]*2 + 
	             bm.waterlevels[avx+4])/8 - 13;

	/* dive */
	if (upside_down_duck_enabled) {
		if (upsidedown == 0 && posy < 3)
			upsidedown = 1;
		else if (upsidedown == 1 && posy > 6)	/* jump out */
			upsidedown = 0;

		if (upsidedown)
			posy += 10;
	}
	if (rp++ < 10) {
		draw_duck(tx, posy, animate_correctly(), rev, upsidedown);
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
	draw_duck(tx, posy, animate_correctly(), rev, upsidedown);
}

void bubblemon_allocate_buffers(void) {
	int ii;

	/* storage for bubbles */
	bm.bubbles = (Bubble *) malloc(sizeof(Bubble) * bm.maxbubbles);

	/* Allocate (zeroed) bubble memory */
	bm.bubblebuf = calloc(BOX_SIZE * (BOX_SIZE+4), sizeof(char));

	/* Allocate water level memory */
	bm.waterlevels = malloc(BOX_SIZE * sizeof(int));
	for (ii = 0; ii < BOX_SIZE; ii++) {
		bm.waterlevels[ii] = MAKEY(BOX_SIZE);
	}

	/* Allocate water level velocity memory */
	bm.waterlevels_dy = calloc(BOX_SIZE, sizeof(int));

	empty_loadgraph = calloc(BOX_SIZE * BOX_SIZE,3);
	empty_memgraph = calloc(BOX_SIZE * BOX_SIZE,3);
	graph_numbers_n_rgb = calloc(3*4*9*12,1);
	graph_numbers_b_rgb = calloc(3*4*9*12,1);

	for (ii = 0; ii < 12; ii++) {
		draw_from_xpm(numbers_xpm,&graph_numbers_n_rgb[ii*3*4*9],4,
		              4*ii,0,3,9,graph_digit_color);
		draw_from_xpm(numbers_xpm,&graph_numbers_b_rgb[ii*3*4*9],4,
		              4*ii,0,3,9,graph_warning_digit_color);
	}

	bm.loadIndex = 0;
	bm.load = calloc(bm.samples, sizeof(u_int64_t));
	bm.total = calloc(bm.samples, sizeof(u_int64_t));
}

void build_graphs(void) {
	int xx, yy;
	unsigned char r,g,b;
	/* Dynamically generate empty graphs for status overlays. This allows us
	   to easily support changing colors at no computational cost and also to
	   later support runtime sizing of the dockapp. (Why would you want it
	   something significantly different than 58x58? dunno) */

	/* For the memory graph, we need to draw the following:
	   - memory line: m and %
	   - swap line: s and %
	   - two hlines
	   - a field of solid color for the graph
	   - gridlines in the graph */

	/* memory */
	draw_from_xpm(ofmspct_xpm,&empty_memgraph[3*(32+4*BOX_SIZE)],BOX_SIZE,
	              6,0,5,5,graph_labels); /* m */
	draw_from_xpm(ofmspct_xpm,&empty_memgraph[3*(51+2*BOX_SIZE)],BOX_SIZE,
	              18,0,4,8,graph_digit_color); /* mem% */
	draw_from_xpm(ofmspct_xpm,&empty_memgraph[3*(32+13*BOX_SIZE)],BOX_SIZE,
	              12,0,5,5,graph_labels); /* s */
	draw_from_xpm(ofmspct_xpm,&empty_memgraph[3*(51+11*BOX_SIZE)],BOX_SIZE,
	              18,0,4,8,graph_digit_color); /* swap% */

	/* load average */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(8+2*BOX_SIZE)],BOX_SIZE,
	              0,0,2,5,graph_labels); /* 1 */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(27+2*BOX_SIZE)],BOX_SIZE,
	              3,0,2,5,graph_labels); /* 5 */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(45+2*BOX_SIZE)],BOX_SIZE,
	              0,0,2,5,graph_labels); /* 1 */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(48+2*BOX_SIZE)],BOX_SIZE,
	              3,0,2,5,graph_labels); /* 5 */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(9+15*BOX_SIZE)],BOX_SIZE,
	              18,0,1,2,graph_digit_color); /* . */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(28+15*BOX_SIZE)],BOX_SIZE,
	              18,0,1,2,graph_digit_color); /* . */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(47+15*BOX_SIZE)],BOX_SIZE,
	              18,0,1,2,graph_digit_color); /* . */

	r = GET_RED(graph_digit_color);
	g = GET_GRN(graph_digit_color);
	b = GET_BLU(graph_digit_color);

	/* the lines above and below the graphs */
	for (xx = 2; xx < BOX_SIZE - 2; xx++) {
		empty_memgraph[3*(xx + 20 * BOX_SIZE)  ] = r;
		empty_memgraph[3*(xx + 20 * BOX_SIZE)+1] = g;
		empty_memgraph[3*(xx + 20 * BOX_SIZE)+2] = b;
		empty_memgraph[3*(xx + (BOX_SIZE-3) * BOX_SIZE)  ] = r;
		empty_memgraph[3*(xx + (BOX_SIZE-3) * BOX_SIZE)+1] = g;
		empty_memgraph[3*(xx + (BOX_SIZE-3) * BOX_SIZE)+2] = b;
		empty_loadgraph[3*(xx + 18 * BOX_SIZE)  ] = r;
		empty_loadgraph[3*(xx + 18 * BOX_SIZE)+1] = g;
		empty_loadgraph[3*(xx + 18 * BOX_SIZE)+2] = b;
		empty_loadgraph[3*(xx + (BOX_SIZE-3) * BOX_SIZE)  ] = r;
		empty_loadgraph[3*(xx + (BOX_SIZE-3) * BOX_SIZE)+1] = g;
		empty_loadgraph[3*(xx + (BOX_SIZE-3) * BOX_SIZE)+2] = b;
	}

	r = GET_RED(graph_field);
	g = GET_GRN(graph_field);
	b = GET_BLU(graph_field);

	/* the main field of the graph */
	for (yy = 22; yy < BOX_SIZE - 4; yy++)
		for (xx = 2; xx < BOX_SIZE - 2; xx++) {
			empty_memgraph[3*(xx+yy*BOX_SIZE)  ] = r;
			empty_memgraph[3*(xx+yy*BOX_SIZE)+1] = g;
			empty_memgraph[3*(xx+yy*BOX_SIZE)+2] = b;
		}

	for (yy = 20; yy < BOX_SIZE - 4; yy++)
		for (xx = 2; xx < BOX_SIZE - 2; xx++) {
			empty_loadgraph[3*(xx+yy*BOX_SIZE)  ] = r;
			empty_loadgraph[3*(xx+yy*BOX_SIZE)+1] = g;
			empty_loadgraph[3*(xx+yy*BOX_SIZE)+2] = b;
		}

	r = GET_RED(graph_grid);
	g = GET_GRN(graph_grid);
	b = GET_BLU(graph_grid);

	/* the horizontal lines in the graph */
	for (yy = 1; yy < 4; yy++)
		for (xx = 2; xx < BOX_SIZE - 2; xx++) {
			empty_memgraph[3*(xx+(22+yy*(BOX_SIZE-4-22)/4)*BOX_SIZE)  ] = r;
			empty_memgraph[3*(xx+(22+yy*(BOX_SIZE-4-22)/4)*BOX_SIZE)+1] = g;
			empty_memgraph[3*(xx+(22+yy*(BOX_SIZE-4-22)/4)*BOX_SIZE)+2] = b;
			empty_loadgraph[3*(xx+(20+yy*(BOX_SIZE-4-20)/4)*BOX_SIZE)  ] = r;
			empty_loadgraph[3*(xx+(20+yy*(BOX_SIZE-4-20)/4)*BOX_SIZE)+1] = g;
			empty_loadgraph[3*(xx+(20+yy*(BOX_SIZE-4-20)/4)*BOX_SIZE)+2] = b;
		}

	/* the vertical lines in the graph */
	for (xx = BOX_SIZE - 3 - 7; xx > 2; xx -= 8)
		for (yy = 22; yy < BOX_SIZE - 4; yy++) {
			empty_memgraph[3*(xx+yy*BOX_SIZE)  ] = r;
			empty_memgraph[3*(xx+yy*BOX_SIZE)+1] = g;
			empty_memgraph[3*(xx+yy*BOX_SIZE)+2] = b;
		}
	for (xx = BOX_SIZE - 3 - 7; xx > 2; xx -= 8)
		for (yy = 20; yy < BOX_SIZE - 4; yy++) {
			empty_loadgraph[3*(xx+yy*BOX_SIZE)  ] = r;
			empty_loadgraph[3*(xx+yy*BOX_SIZE)+1] = g;
			empty_loadgraph[3*(xx+yy*BOX_SIZE)+2] = b;
		}
}

void get_memory_load_percentage(void) {
	system_memory();
	/* new memory/swap data is in, calculate things */
	bm.mem_percent = (100 * bm.mem_used) / bm.mem_max;

	if (bm.swap_max != 0) {
		bm.swap_percent = (100 * bm.swap_used) / bm.swap_max;
	} else {
		bm.swap_percent = 0;
	}
}
