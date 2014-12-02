/*  WMBubble dockapp 1.52
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

#define VERSION "1.52"

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
#include <math.h>
#include <inttypes.h>

/* x11 includes */
#include "wmx11pixmap.h"
#include <X11/Xresource.h>

#include "include/bubblemon.h"
#include "include/sys_include.h"

#include "include/numbers-2.h"

#include "include/ducks.h"
#include "include/digits.h"
#include "misc/numbers.xpm"
#include "misc/ofmspct.xpm"
#include "misc/datefont.xpm"

/* #define DEBUG_DUCK 1 */

#define NAME "wmbubble"

/* Want a better way to work with these. But we use them in two places now, so... */
#define GET_RED(x) (((x)>>16)&255)
#define GET_GRN(x) (((x)>> 8)&255)
#define GET_BLU(x) (((x)    )&255)

enum bubblebuf_values { watercolor, antialiascolor, aircolor };

/* local prototypes *INDENT-OFF* */
void bubblemon_allocate_buffers(void);
void do_water_sim(int cpu);
void draw_watertank(void);
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
void draw_rgba_pixel(unsigned char * whither, int color, float opacity);
void draw_aa_line(float x1,float y1, float x2,float y2, int color);
void draw_clockhands(void);

void render_secondary(void);
void calculate_transparencies(int proximity);
void alpha_cpu(void);
void alpha_graph(void);
void alpha_digitalclock(struct tm * mytime);
void alpha_date(struct tm * mytime);
void roll_history(void);

void draw_dtchr(const char letter, unsigned char *where);

int animate_correctly(void);
void draw_duck(int x, int y, int frame_no, int flipx, int flipy);
void duck_swimmer(void);

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

int do_analog_clock = 0;
int hourcolor = 0xEEEEEE;
int mincolor = 0xBF0000;
int seccolor = 0xC79F2B;
int shifttime = 0;
int do_digital_clock = 0;
int do_date = 0;

int do_help = 0;

int delay_time = 15000;

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

int datefont_widths[256];
char datefont_transparent;
unsigned int datefont_offset;

int duck_blink = 0;
int blinkdelay = 1;

const struct XrmUnified {
	char * const option;
	char * const specifier;
	const char * const valueifnoarg;
	const enum { Is_Int, Is_Color, Is_Float, Is_Bool } parse_as;
	void * write_to;
	const char * const description;
} x_resource_unified[] = {
	{"-maxbubbles",    "*maxbubbles",     NULL,	Is_Int, &bm.maxbubbles, "Maximum number of simultaneous bubbles in the dockapp" },
	{"-air_noswap",    "*air_noswap",     NULL,	Is_Color, &bm.air_noswap, "Color of air and bubbles when swap is at 0%" },
	{"-air_maxswap",   "*air_maxswap",    NULL,	Is_Color, &bm.air_maxswap, "Color of air and bubbles when swap is at 100%" },
	{"-liquid_noswap", "*liquid_noswap",  NULL,	Is_Color, &bm.liquid_noswap, "Color of water when swap is at 0%" },
	{"-liquid_maxswap","*liquid_maxswap", NULL,	Is_Color, &bm.liquid_maxswap, "Color of water when swap is at 100%" },
	{"-duckbody",      "*duckbody",       NULL,	Is_Color, &duck_colors[1], "Color of duck's body" },
	{"-duckbill",      "*duckbill",       NULL,	Is_Color, &duck_colors[2], "Color of duck's bill" },
	{"-duckeye",       "*duckeye",        NULL,	Is_Color, &duck_colors[3], "Color of duck's eye" },
	{"-delay",         "*delay",          NULL,	Is_Int,   &delay_time, "delay this number of microseconds between redraws" },
	{"-ripples",       "*ripples",        NULL,	Is_Float, &bm.ripples, "Pixels to disturb the surface when a bubble is formed/pops" },
	{"-gravity",       "*gravity",        NULL,	Is_Float, &bm.gravity, "Pixels/refresh/refresh to accelerate bubbles upwards" },
	{"-volatility",    "*volatility",     NULL,	Is_Float, &bm.volatility, "Restorative force on water surface in proportion/refresh"},
	{"-viscosity",     "*viscosity",      NULL,	Is_Float, &bm.viscosity, "Attenuation of surface velocity in proportion/refresh"},
	{"-speed_limit",   "*speed_limit",    NULL,	Is_Float, &bm.speed_limit, "Maximum water surface velocity in pixels/refresh" },
	{"-help",          ".help",           "1" ,	Is_Bool, &do_help, "Displays this help" },
	{"-duck",          "*duck",           NULL,	Is_Bool, &duck_enabled, "Draw the duck?"},
	{"-d",             "*duck",           "no",	Is_Bool, &duck_enabled, "Just don't draw the duck" },
	{"-upsidedown",    "*upsidedown",     NULL,	Is_Bool, &upside_down_duck_enabled, "Can the duck flip when the tank is overfull?" },
	{"-u",             "*upsidedown",     "no",	Is_Bool, &upside_down_duck_enabled, "The duck can never flip" },
	{"-cpumeter",      "*cpumeter",       NULL,	Is_Bool, &cpu_enabled, "Show the current load at the bottom"},
	{"-c",             "*cpumeter",       "no",	Is_Bool, &cpu_enabled, "Don't show the current load"},
	{"-graphdigit",    "*graphdigit",     NULL,	Is_Color, &graph_digit_color, "Color of the digits on the graphs"},
	{"-graphwarn",     "*graphwarn",      NULL,	Is_Color, &graph_warning_digit_color, "Color of the digits on the memory graph when above 90%" },
	{"-graphlabel",    "*graphlabel",     NULL,	Is_Color, &graph_labels, "Color of the 1 5 and 15 on load graph and m and s on mem graph" },
	{"-graphfield",    "*graphfield",     NULL,	Is_Color, &graph_field, "Color of the background of the graphs" },
	{"-graphgrid",     "*graphgrid",      NULL,	Is_Color, &graph_grid, "Color of the grid lines in the graphs" },
	{"-graphmax",      "*graphmax",       NULL,	Is_Color, &graph_max, "Color of the top two pixels of the bar graph" },
	{"-graphbar",      "*graphbar",       NULL,	Is_Color, &graph_bar, "Color of the rest of the bar graph" },
	{"-graphmarkers",  "*graphmarkers",   NULL,	Is_Color, &graph_hundreds, "Color of the horizontal lines on the graph that indicate each integer load average" },
	{"-p",             ".graphdigitpale", "1" ,	Is_Bool, &pale, "Adjust the digit colors to pale blue and cyan"},
	{"-graphs",        "*graphs",         NULL,	Is_Bool, &memscreen_enabled, "Does hovering show the graphs" },
	{"-m",             "*graphs",         "no",	Is_Bool, &memscreen_enabled, "Graphs are never shown"},
	{"-units",         "*units",          NULL,	Is_Bool, &memscreen_megabytes, "Units for memory in KB or MB"},
	{"-k",             "*units",          "m" ,	Is_Bool, &memscreen_megabytes, "Memory graphs use MB" },
	{"-shifttime",     "*shifttime",      NULL,	Is_Int, &shifttime, "Number of hours after midnight that are drawn as part of the previous day on digital clock and date" },
	{"-digital",       "*digital",        NULL,	Is_Bool, &do_digital_clock, "Draw 24h digital clock" },
	{"-showdate",      "*showdate",       NULL,	Is_Bool, &do_date, "Draw day-of-week month day-of-month "},
	{"-analog",        "*analog" ,        NULL,	Is_Bool, &do_analog_clock, "Draw analog clock face" },
	{"-hourcolor",     "*hourcolor",      NULL,	Is_Color, &hourcolor, "Color of hour hand on analog clock "},
	{"-mincolor",      "*mincolor",       NULL,	Is_Color, &mincolor, "Color of minute hand on analog clock "},
	{"-seccolor",      "*seccolor",       NULL,	Is_Color, &seccolor, "Color of second hand on analog clock "}};

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

	/* default colors.  changeable from Xresources */
	bm.air_noswap = 0x2299ff;
	bm.liquid_noswap = 0x0055ff;
	bm.air_maxswap = 0xff0000;
	bm.liquid_maxswap = 0xaa0000;

	/* default bubble engine parameters.  Changeable from Xresources */
	bm.maxbubbles = 100;
	bm.ripples = .2;
	bm.gravity = 0.01;
	bm.volatility = 1;
	bm.viscosity = .98;
	bm.speed_limit = 1.0;

	for (i = 0; i < (sizeof(x_resource_unified) / sizeof(x_resource_unified[0])); i++) {
		strncpy(name,NAME,BUFSIZ), strncat(name,x_resource_unified[i].specifier,BUFSIZ-strlen(name));
		if (XrmGetResource(x_resource_database, name, name, &type, &val)) {
			/* Type returned by XrmGetResource is useless, it seems to always return "String" */
			if (val.size > 0)	/* prevent empty strings */
				switch (x_resource_unified[i].parse_as) {
				case Is_Int:
					*(int *) x_resource_unified[i].write_to = strtol(val.addr,NULL,0);
					break;
				case Is_Float:
					*(double *) x_resource_unified[i].write_to = strtod(val.addr,NULL);
					break;
				case Is_Color:
					if (XParseColor(wmxp_display,
					                DefaultColormap(wmxp_display,
					                                DefaultScreen(wmxp_display)),
					                val.addr, &colorparsing) == 0) {
						fprintf(stderr,"Couldn't parse color %s for control %s\n",
						        val.addr,x_resource_unified[i].option);
						exit(-3);
					}
					*(int *) x_resource_unified[i].write_to =
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
						*(int *) x_resource_unified[i].write_to = 1; /* bools are stored in ints, sorry */
					else if (tolower(val.addr[0]) == 'n' ||
					         tolower(val.addr[0]) == 'k' ||
					         val.addr[0] == '0' ||
					         (tolower(val.addr[0]) == 'o' && tolower(val.addr[1]) == 'f'))
						*(int *) x_resource_unified[i].write_to = 0;
					else {
						fprintf(stderr,"Couldn't parse %s as a boolean for resource %s\n",val.addr,name);
						exit(-2);
					}
					break;
				default:
					fprintf(stderr, "Compilation time error: element #%d (%s) has not-understood parse type %d\n",
					        i, x_resource_unified[i].option, x_resource_unified[i].parse_as);
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
	char preformat[32];
	int i;
	printf("WMBubble version "VERSION"\n"
	       "Usage: "NAME" [switches] [program1] [program2] [...] [program(# of mouse buttons)]\n\n"
	       "Permitted options are:\n");
	for (i=0; i < sizeof(x_resource_unified) / sizeof(x_resource_unified[0]); i++) {
		strncpy(preformat,x_resource_unified[i].option,32);
		switch(x_resource_unified[i].parse_as) {
		case Is_Int:
			strncat(preformat," [num]",32-strlen(preformat));
			break;
		case Is_Color:
			strncat(preformat," [color]",32-strlen(preformat));
			break;
		case Is_Float:
			strncat(preformat," [float]",32-strlen(preformat));
			break;
		case Is_Bool:
			if (x_resource_unified[i].valueifnoarg == NULL)
				strncat(preformat," [y/n]",32-strlen(preformat));
			break;
		}
		printf("%-24s %s\n",preformat,x_resource_unified[i].description);
	}
}

int main(int argc, char **argv) {
	char execute[256];
	char * x_resources_as_string;
	unsigned int loadPercentage;
	int gaugedelay, gaugedivisor, graphdelay, graphdivisor;
	int proximity = 0;
	time_t mytt;
	int ii;
	struct tm * mytime;
	int mday=0, hours=0;
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
	XrmOptionDescRec * x_resource_options;

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
	x_resource_options = (XrmOptionDescRec *)calloc(sizeof(XrmOptionDescRec),sizeof(x_resource_unified)/sizeof(x_resource_unified[0]));
	for (ii = 0; ii < sizeof(x_resource_unified)/sizeof(x_resource_unified[0]); ii ++) {
		x_resource_options[ii].option = x_resource_unified[ii].option;
		x_resource_options[ii].specifier = x_resource_unified[ii].specifier;
		x_resource_options[ii].value = (XPointer) x_resource_unified[ii].valueifnoarg;
		x_resource_options[ii].argKind = (x_resource_unified[ii].valueifnoarg == NULL) ? XrmoptionSepArg : XrmoptionNoArg;
	}
	XrmParseCommand(&x_resource_db, x_resource_options,
	                sizeof(x_resource_unified)/sizeof(x_resource_unified[0]),
	                NAME, &argc, argv);
	free(x_resource_options);
	/* set default things, from Xresources or compiled-in defaults. Must come after initwmX11pixmap and we have a DISPLAY */
	bubblemon_session_defaults(x_resource_db);

	if (do_help || (argv[1] && argv[1][0] == '-')) { /* That's gotta be wrong. */
		print_usage();
		exit(0);
	}

	argv++; argc--; /* Otherwise we'll make more of ourselves on a left click */

	make_new_bubblemon_dockapp();

	/* the math below makes the cpu gauge try to update at 5 Hz.
	   Originally it was 15ms*10 meaning 7Hz */
	gaugedelay = gaugedivisor = 200000 / delay_time;
	if (gaugedivisor == 0) gaugedivisor = 1;

	graphdelay = graphdivisor = 1000000 / delay_time;
	if (graphdivisor == 0) graphdivisor = 1;

	blinkdelay = 150000 / delay_time;
	if (blinkdelay == 0) blinkdelay++;

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
				if (memscreen_enabled && event.xbutton.button == 3) {
					bm.picture_lock = !bm.picture_lock;
					break;
				}
				if (event.xbutton.button <= argc) {
					snprintf(execute, 250, "%s &",
					         argv[event.xbutton.button - 1]);
					if (system(execute) == -1)
						duck_blink += 6 * blinkdelay;
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
		do_water_sim(loadPercentage);
		draw_watertank();
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

		if (do_analog_clock)
			draw_clockhands();

		time(&mytt);
		mytime = localtime(&mytt);
		mday = mytime->tm_mday;
		hours = 0;

		if (mytime->tm_hour<shifttime) {
			while (mday == mytime->tm_mday) {
				mytt -= 3600; hours++;
				mytime = localtime(&mytt);
			}
			mytime->tm_hour += hours;
		}

		if (do_digital_clock)
			alpha_digitalclock(mytime);

		if (do_date)
			alpha_date(mytime);

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
		{
			int xx,yy;
			unsigned char * from;

			for (from=bm.rgb_buf,xx=0;xx<BOX_SIZE*3-3;from++,xx++) {
				from[0]/=4;
				from[BOX_SIZE*(BOX_SIZE-1)*3+3]=
					(255+from[BOX_SIZE*(BOX_SIZE-1)*3+3])/2;
			}

			for (from=bm.rgb_buf,yy=0;yy<BOX_SIZE-1;yy++,
				     from+=BOX_SIZE*3) {
				from[0]/=4; from[1]/=4; from[2]/=4;
				from[(2*BOX_SIZE-1)*3  ]=
					(255+from[(2*BOX_SIZE-1)*3  ])/2;
				from[(2*BOX_SIZE-1)*3+1]=
					(255+from[(2*BOX_SIZE-1)*3+1])/2;
				from[(2*BOX_SIZE-1)*3+2]=
					(255+from[(2*BOX_SIZE-1)*3+2])/2;
			}
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
	unsigned int cc, yy, maxwidth;
	int xx;
	/* We begin with zero bubbles */
	bm.n_bubbles = 0;

	/* Allocate memory for calculations */
	bubblemon_allocate_buffers();

	build_graphs();

	sscanf(datefont_xpm[0],"%u %u %u %u",&maxwidth,&yy,&datefont_offset,&cc);
	if (cc != 1) abort(); /* fuck that */

	datefont_offset++; /* include header line */

	for (yy = 1; yy < datefont_offset; yy++) {
		if (strcasestr(datefont_xpm[yy],"none")) {
			datefont_transparent = datefont_xpm[yy][0];
			yy = datefont_offset;
		}
	}

	/* calculate proportional spacing widths of font used for writing date */
	for (cc = 33; cc < 128; cc++)
		for (xx = maxwidth-1; xx >= 0; xx--)
			for (yy = 0; yy < 8; yy++)
				if (datefont_xpm[(cc-32)*8+yy+datefont_offset][xx] != datefont_transparent) {
					datefont_widths[cc] = xx+2;
					xx = -1; yy = 9;
				}
	datefont_widths[' ']=2;
	/* force non-ascii strings to display as MONTH_IN_ROMAN_NUMERALS - DAY_OF_MONTH */
	for (cc = 0; cc < 32; cc++)
		datefont_widths[cc] = BOX_SIZE;
	for (cc = 128; cc < 256; cc++)
		datefont_widths[cc] = BOX_SIZE;
}	/* make_new_bubblemon_dockapp */

/*
 * This function, bubblemon_update, gets the CPU usage and updates
 * the bubble array and main rgb buffer.
 */
void do_water_sim(int loadPercentage) {
	unsigned int i, x;
	unsigned int waterlevels_goal;

	/*
	  The bubblebuf is made up of int8s (0..2), corresponding to the enum. A
	  pixel in the bubblebuf is accessed using the formula bubblebuf[row * w
	  + column].
	*/

	/* y coordinates are counted from here multiplied by MULTIPLIER
	   to get actual screen coordinate, use REALY */

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
	}

	/* Create a new bubble if the planets are correctly aligned... */
	if ((bm.n_bubbles < bm.maxbubbles)
	    && ((rand() % 101) <= loadPercentage)) {
		/* We don't allow bubbles on the edges 'cause we'd have to clip them */
		bm.bubbles[bm.n_bubbles].x = (rand() % (BOX_SIZE-2)) + 1;
		bm.bubbles[bm.n_bubbles].y = MAKEY(BOX_SIZE-1);
		bm.bubbles[bm.n_bubbles].dy = 0;
#ifdef DEBUG_DUCK
		fprintf (stderr, "new bubble:  bm.bubbles[bm.n_bubbles].x = %i\n",
		         bm.bubbles[bm.n_bubbles].x);
#endif

		/* Raise the water level above where the bubble is created */
		if (bm.bubbles[bm.n_bubbles].x > 2)
			bm.waterlevels[bm.bubbles[bm.n_bubbles].x - 2] -= bm.ripples_int;
		bm.waterlevels[bm.bubbles[bm.n_bubbles].x - 1] -= bm.ripples_int;
		bm.waterlevels[bm.bubbles[bm.n_bubbles].x] -= bm.ripples_int;
		bm.waterlevels[bm.bubbles[bm.n_bubbles].x + 1] -= bm.ripples_int;
		if (bm.bubbles[bm.n_bubbles].x < (BOX_SIZE-3))
			bm.waterlevels[bm.bubbles[bm.n_bubbles].x + 2] -= bm.ripples_int;

		/* Count the new bubble */
		bm.n_bubbles++;
	}

	/* Update the bubbles */
	for (i = 0; i < bm.n_bubbles; i++) {
		/* Accelerate the bubble */
		bm.bubbles[i].dy -= bm.gravity_int;

		/* Move the bubble vertically */
		bm.bubbles[i].y += bm.bubbles[i].dy;

		/* is the bubble grossly out of bounds? */
		if (bm.bubbles[i].x < 1 || bm.bubbles[i].x > (BOX_SIZE-2) ||
		    bm.bubbles[i].y > MAKEY(BOX_SIZE)) {
#ifdef DEBUG_DUCK
			fprintf (stderr, "bubble out of bounds "
			         "bm.bubbles[%i].x=%i, bm.bubbles[%i].y=%i\n",
			         i, bm.bubbles[i].x, i, bm.bubbles[i].y);
#endif
		
			/* Yes; nuke it by replacing its properties with those
			   of the last one and deallocate the last one. */
			bm.n_bubbles--;
			bm.bubbles[i].x = bm.bubbles[bm.n_bubbles].x;
			bm.bubbles[i].y = bm.bubbles[bm.n_bubbles].y;
			bm.bubbles[i].dy = bm.bubbles[bm.n_bubbles].dy;

	    /*
	      We must still check what was the next bubble which is 
	      now the current bubble.
	    */
	    i--;
	    continue;
		}
		
		/* Did we lose it? */
		if (bm.bubbles[i].y < bm.waterlevels[bm.bubbles[i].x]) {
			/* Lower the water level around where the bubble is about to vanish */
			bm.waterlevels[bm.bubbles[i].x - 1] += bm.ripples_int;
			bm.waterlevels[bm.bubbles[i].x] += 3 * bm.ripples_int;
			bm.waterlevels[bm.bubbles[i].x + 1] += bm.ripples_int;

			bm.n_bubbles--;
			bm.bubbles[i].x = bm.bubbles[bm.n_bubbles].x;
			bm.bubbles[i].y = bm.bubbles[bm.n_bubbles].y;
			bm.bubbles[i].dy = bm.bubbles[bm.n_bubbles].dy;

			i--;
			continue;
		}
	}
}

void draw_watertank(void) {
	int x, y, i;
	unsigned char *bubblebuf_ptr;

	/* Draw the air-and-water background */
	for (x = 0; x < BOX_SIZE; x++) {
		/* Air... */
		for (y = 0;
		     y < REALY(bm.waterlevels[x]); y++)
			bm.bubblebuf[y * BOX_SIZE + x] = aircolor;
		/* ... and water */
		for (; y < BOX_SIZE; y++)
			bm.bubblebuf[y * BOX_SIZE + x] = watercolor;
	}

	/* Draw the bubbles */
	for (i = 0; i < bm.n_bubbles; i++) {
		/*
		  Clipping is not necessary for x, but it *is* for y.
		  To prevent ugliness, we draw antialiascolor only on top of
		  watercolor, and aircolor on top of antialiascolor.
		*/

		/* Top row */
		bubblebuf_ptr = &(bm.bubblebuf[(((REALY(bm.bubbles[i].y) - 1) * BOX_SIZE) + BOX_SIZE) + bm.bubbles[i].x - 1]);
		if (bubblebuf_ptr[0] < aircolor)
			bubblebuf_ptr[0]++; /* water becomes antialias; antialias becomes air for outside corners */
		bubblebuf_ptr[1] = aircolor;
		if (bubblebuf_ptr[2] < aircolor)
			bubblebuf_ptr[2]++;
		bubblebuf_ptr += BOX_SIZE;
		
		/* Middle row - no color clipping necessary */
		bubblebuf_ptr[0] = aircolor;
		bubblebuf_ptr[1] = aircolor;
		bubblebuf_ptr[2] = aircolor;
		bubblebuf_ptr += BOX_SIZE;

		/* Bottom row */
		if (bm.bubbles[i].y < MAKEY(BOX_SIZE-1)) {
			if (bubblebuf_ptr[0] < aircolor)
				bubblebuf_ptr[0]++;
			bubblebuf_ptr[1] = aircolor;
			if (bubblebuf_ptr[2] < aircolor)
				bubblebuf_ptr[2]++;
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
	unsigned int yy,xx,ncolors,cpp;
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
#if BOX_SIZE >= 55
		for (i = 0; i < 3; i++) {
			sprintf(number, "%2d", bm.loadavg[i].i);
			draw_string(number, ((BOX_SIZE-1)/2-27) + 19*i,      9, 0);
			sprintf(number, "%02d", bm.loadavg[i].f);
			draw_string(number, ((BOX_SIZE-1)/2-27) + 19*i + 10, 9, 0);
		}
#endif
		/* render load average graph */
		draw_history(BOX_SIZE-4, BOX_SIZE-4-21, bm.history, &bm.mem_buf[21*BOX_SIZE*3]);
	} else {
		/* draw memory */
		if (memscreen_megabytes || bm.mem_used > (999999<<10))
			snprintf(number, 8, "%6"PRIu64"M", bm.mem_used >> 20);
		else
			snprintf(number, 8, "%"PRIu64"K", bm.mem_used >> 10);
		snprintf(percent, 4, "%+3d", bm.mem_percent);
		draw_string(number, 3, 2, (bm.mem_percent > 90) ? 1 : 0);
		draw_string(percent, 39, 2, (bm.mem_percent > 90) ? 1 : 0);

		/* draw swap */
		if (memscreen_megabytes || bm.swap_used > (999999<<10))
			snprintf(number, 8, "%6"PRIu64"M", bm.swap_used >> 20);
		else
			snprintf(number, 8, "%6"PRIu64"K", bm.swap_used >> 10);
		snprintf(percent, 4, "%+3d", bm.swap_percent);
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

void draw_dtchr(const char letter, unsigned char * rgbbuf) {
	int x,y;
	unsigned char * attenuator;
	char * xpm_line;

	for (y=0;y<8;y++) {
		xpm_line = datefont_xpm[((unsigned char)letter-32)*8+y+datefont_offset];
		for (x=0,attenuator=&rgbbuf[y*BOX_SIZE*3];x<datefont_widths[(unsigned char)letter]-1;x++)
			if (xpm_line[x] == datefont_transparent) {
				attenuator += 3;
			} else {
				*(attenuator++)>>=1; *(attenuator++)>>=1; *(attenuator++)>>=1;
			}
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

void draw_rgba_pixel(unsigned char * whither, int color, float opacity) {
	whither[0] = (opacity*GET_RED(color) + (1-opacity)*whither[0]);
	whither[1] = (opacity*GET_GRN(color) + (1-opacity)*whither[1]);
	whither[2] = (opacity*GET_BLU(color) + (1-opacity)*whither[2]);
}

float fpart(float in) { return in - floor(in); }

/* Xiaolin Wu's antialiased line-drawing algorithm */
void draw_aa_line(float x1,float y1, float x2,float y2, int color) {
	float dx = x2 - x1;
	float dy = y2 - y1;
	float tmp, gradient;
	float xend, yend, xgap, ygap, intery, interx;
	int x1pxl, x2pxl, y1pxl, y2pxl, xx, yy;

	if (fabsf(dx) > fabsf(dy)) {
		if (x2 < x1) {
			tmp=x1; x1=x2; x2=tmp;
			tmp=y1; y1=y2; y2=tmp;
		}
		gradient = dy / dx;

		/* handle first endpoint */
		xend = floor(x1+.5);
		yend = y1 + gradient * (xend - x1);
		xgap = 1-fpart(x1 + 0.5);

		x1pxl = xend;
		y1pxl = floor(yend);
		draw_rgba_pixel(&bm.rgb_buf[(x1pxl+BOX_SIZE*(y1pxl  ))*3], color, (1-fpart(yend)) * xgap );
		draw_rgba_pixel(&bm.rgb_buf[(x1pxl+BOX_SIZE*(y1pxl+1))*3], color, fpart(yend) * xgap);
		intery = yend + gradient;

		/* handle second endpoint */
		xend = floor(x2+.5);
		yend = y2 + gradient * (xend - x2);
		xgap = fpart(x2 + 0.5);
		x2pxl = xend;
		y2pxl = floor(yend);
		draw_rgba_pixel(&bm.rgb_buf[(x2pxl+BOX_SIZE*(y2pxl  ))*3], color, (1-fpart(yend)) * xgap );
		draw_rgba_pixel(&bm.rgb_buf[(x2pxl+BOX_SIZE*(y2pxl+1))*3], color, fpart(yend) * xgap);

		for(xx = x1pxl + 1; xx <= x2pxl - 1; xx++) {
			draw_rgba_pixel(&bm.rgb_buf[(xx+BOX_SIZE*(int)(intery))*3], color, 1-fpart (intery) );
			draw_rgba_pixel(&bm.rgb_buf[(xx+BOX_SIZE*(int)(intery+1))*3], color, fpart (intery) );
			intery = intery + gradient;
		}
	} else {
		if (y2 < y1) {
			tmp=y1; y1=y2; y2=tmp;
			tmp=x1; x1=x2; x2=tmp;
		}
		gradient = dx / dy;

		/* handle first endpoint */
		yend = floor(y1+.5);
		xend = x1 + gradient * (yend - y1);
		ygap = 1-fpart(y1 + 0.5);

		y1pxl = yend;
		x1pxl = floor(xend);
		draw_rgba_pixel(&bm.rgb_buf[(  x1pxl+BOX_SIZE*y1pxl)*3], color, (1-fpart(xend)) * ygap );
		draw_rgba_pixel(&bm.rgb_buf[(1+x1pxl+BOX_SIZE*y1pxl)*3], color, fpart(xend) * ygap);
		interx = xend + gradient;

		/* handle second endpoint */
		yend = floor(y2+.5);
		xend = x2 + gradient * (yend - y2);
		ygap = fpart(y2 + 0.5);
		y2pxl = yend;
		x2pxl = floor(xend);
		draw_rgba_pixel(&bm.rgb_buf[(  x2pxl+BOX_SIZE*y2pxl)*3], color, (1-fpart(xend)) * ygap );
		draw_rgba_pixel(&bm.rgb_buf[(1+x2pxl+BOX_SIZE*y2pxl)*3], color, fpart(xend) * ygap);

		for(yy = y1pxl + 1; yy <= y2pxl - 1; yy++) {
			draw_rgba_pixel(&bm.rgb_buf[(  (int)interx+BOX_SIZE*yy)*3], color, 1-fpart (interx) );
			draw_rgba_pixel(&bm.rgb_buf[(1+(int)interx+BOX_SIZE*yy)*3], color, fpart (interx) );
			interx = interx + gradient;
		}
	}
}

void draw_clockhands(void) {
	struct tm * mytime;
	struct timeval tv;
	float theta;

	gettimeofday(&tv,NULL);
	mytime = localtime(&tv.tv_sec);

	theta = (mytime->tm_hour * 3600u + mytime->tm_min * 60u + mytime->tm_sec) * (M_PI / 21600.0);
	draw_aa_line(BOX_SIZE/2,
	             (BOX_SIZE-10)/2,
	             BOX_SIZE/2 + 0.6*(BOX_SIZE-10)/2 * sin(theta),
	             (BOX_SIZE-10)/2 - 0.6*(BOX_SIZE-10)/2 * cos(theta),
	             hourcolor);

	theta = (mytime->tm_min * 60000000u + mytime->tm_sec * 1000000u + tv.tv_usec) * (M_PI / 1800000000u);
	/* theta = (mytime->tm_min / 30.0 + mytime->tm_sec / 1800.0)*M_PI; */
	draw_aa_line(BOX_SIZE/2,
	             (BOX_SIZE-10)/2,
	             BOX_SIZE/2 + 0.75*(BOX_SIZE-10)/2 * sin(theta),
	             (BOX_SIZE-10)/2 - 0.75*(BOX_SIZE-10)/2 * cos(theta),
	             mincolor);

	theta = (mytime->tm_sec * 1000000u + tv.tv_usec) * (M_PI / 30000000u);
	/* theta = mytime->tm_sec / 30.0 * M_PI; */
	draw_aa_line(BOX_SIZE/2,
	             (BOX_SIZE-10)/2,
	             BOX_SIZE/2 + 0.95*(BOX_SIZE-10)/2 * sin(theta),
	             (BOX_SIZE-10)/2 - 0.95*(BOX_SIZE-10)/2 * cos(theta),
	             seccolor);
}

void alpha_date(struct tm * mytime) {
	const char *roman[]={"I","II","III","IV","V","VI","VII","VIII","IX","X","XI","XII"};
	char format[32];
	int ii, width;
	unsigned char * rgbptr;

	if (strftime(format,32,"%a %b %d",mytime) != 0) {
		for (width = ii = 0; ii < strlen(format); ii++)
			width += datefont_widths[(unsigned char)format[ii]];
		if (width > BOX_SIZE - 1) { /* if too wide */
			snprintf(format,32,"%s-%d",roman[mytime->tm_mon],mytime->tm_mday);
			for (width = ii = 0; ii < strlen(format); ii++)
				width += datefont_widths[(unsigned char)format[ii]];
		}
	} else { /* if strftime failed */
		snprintf(format,32,"%s-%d",roman[mytime->tm_mon],mytime->tm_mday);
		for (width = ii = 0; ii < strlen(format); ii++)
			width += datefont_widths[(unsigned char)format[ii]];
	}

	rgbptr = &bm.rgb_buf[3*(2*BOX_SIZE+(BOX_SIZE-width)/2)]; /* calculate centered */

	for (ii = 0; ii < strlen(format); ii++) {
		draw_dtchr(format[ii],rgbptr);
		rgbptr += 3*datefont_widths[(unsigned char)format[ii]];
	}
}

void alpha_digitalclock(struct tm * mytime) {
#if BOX_SIZE >= 54
	draw_largedigit(mytime->tm_hour/10,
	                &bm.rgb_buf[3*((BOX_SIZE/2)-26+BOX_SIZE*(BOX_SIZE/2-16))]);
	draw_largedigit(mytime->tm_hour%10,
	                &bm.rgb_buf[3*((BOX_SIZE/2)-13+BOX_SIZE*(BOX_SIZE/2-16))]);
	draw_largedigit(mytime->tm_min/10,
	                &bm.rgb_buf[3*((BOX_SIZE/2)   +BOX_SIZE*(BOX_SIZE/2-16))]);
	draw_largedigit(mytime->tm_min%10,
	                &bm.rgb_buf[3*((BOX_SIZE/2)+13+BOX_SIZE*(BOX_SIZE/2-16))]);
#endif
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
			if (memscreen_enabled && !bm.picture_lock) {
				if (graph_alpha == GRAPHMAXBLEND) {
					/* make sure there's never a stale picture when we first go non-opaque */
					render_secondary();
				}
				graph_alpha -= graph_transparent_rate;
				if (graph_alpha < GRAPHMINBLEND) {
					graph_alpha = GRAPHMINBLEND;
				}
			}
		}
	} else {
		gauge_alpha += gauge_rate;
		if (gauge_alpha > CPUMAXBLEND) {
			gauge_alpha = CPUMAXBLEND;
		}
		if (memscreen_enabled && !bm.picture_lock) {
			graph_alpha += graph_opaque_rate;
			if (memscreen_enabled && graph_alpha > GRAPHMAXBLEND) {
				graph_alpha = GRAPHMAXBLEND;
			}
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
	if (duck_blink > 0) {
		if (duck_blink % blinkdelay == 0)
			duck_colors[1] = 0x808080 ^ duck_colors[1];
		duck_blink--;
	}
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

	/* Allocate water level memory */
	for (ii = 0; ii < BOX_SIZE; ii++) {
		bm.waterlevels[ii] = MAKEY(BOX_SIZE);
	}

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
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(((BOX_SIZE-1)/2-20)+2*BOX_SIZE)],BOX_SIZE,
	              0,0,2,5,graph_labels); /* 1 */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(((BOX_SIZE-1)/2- 1)+2*BOX_SIZE)],BOX_SIZE,
	              3,0,2,5,graph_labels); /* 5 */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(((BOX_SIZE-1)/2+17)+2*BOX_SIZE)],BOX_SIZE,
	              0,0,2,5,graph_labels); /* 1 */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(((BOX_SIZE-1)/2+20)+2*BOX_SIZE)],BOX_SIZE,
	              3,0,2,5,graph_labels); /* 5 */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(((BOX_SIZE-1)/2-19)+15*BOX_SIZE)],BOX_SIZE,
	              18,0,1,2,graph_digit_color); /* . */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(((BOX_SIZE-1)/2   )+15*BOX_SIZE)],BOX_SIZE,
	              18,0,1,2,graph_digit_color); /* . */
	draw_from_xpm(ofmspct_xpm,&empty_loadgraph[3*(((BOX_SIZE-1)/2+19)+15*BOX_SIZE)],BOX_SIZE,
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
