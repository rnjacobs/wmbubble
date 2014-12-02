/*
 * wmX11pixmap derived from wmtunlo, from wmgeneral, from wmppp
 *
 *	Authors: 
 *	Martijn Pieterse (pieterse@xs4all.nl) (wmgeneral)
 *  Tomasz Maka <pasp@ll.pl> (wmtunlo)
 *  Mike Henderson <mghenderson@lanl.gov> (wmMand)
 *	Robert Jacobs (rnjacobs@mit.edu)
*/

#include <stdio.h>
#include <stdlib.h>
#include "wmx11pixmap.h"

/* Private variables */
GC      NormalGC;
Pixmap  wmgen;

/* flush_expose
   removes all expose events off the event stack */
static int flush_expose(Window w) {
	XEvent 		dummy;
	int			i=0;

	while (XCheckTypedWindowEvent(wmxp_display, w, Expose, &dummy))
		i++;

	return i;
}

void RGBtoXIm(const unsigned char * from, XImage * ximout) {
	unsigned long * p32 = (unsigned long *)ximout->data;
	unsigned short * p16 = (unsigned short *)ximout->data;
	unsigned long pxl;
	int i, yy;
	/* violatin' the abstractions! */
	switch (ximout->depth | ((ximout->red_mask|ximout->green_mask)<<8)) {
	case 0xFFFF0020: /* 24bpp RGB */
		for (i=0;i<BOX_SIZE*BOX_SIZE;i++,from+=3)
			p32[i] = (from[0]<<16) | (from[1]<<8) | (from[2]);
		break;
	case 0x00FFFF20: /* 24bpp BGR */
		for (i=0;i<BOX_SIZE*BOX_SIZE;i++,from+=3)
			p32[i] = (from[2]<<16) | (from[1]<<8) | (from[0]);
		break;
	case 0xFFE010: /* 16bpp RGB */
		for (i=0;i<BOX_SIZE*BOX_SIZE;i++,from+=3)
			p16[i] = ((from[0]&0xF8)<<8) | ((from[1]&0xFC)<<3) | ((from[2]&0xF8)>>3);
		break;
	case 0x07FF10: /* 16bpp BGR */
		for (i=0;i<BOX_SIZE*BOX_SIZE;i++,from+=3)
			p16[i] = ((from[2]&0xF8)<<8) | ((from[1]&0xFC)<<3) | ((from[0]&0xF8)>>3);
		break;
	case 0x7FE010: /* 15bpp RGB */
		for (i=0;i<BOX_SIZE*BOX_SIZE;i++,from+=3)
			p16[i] = ((from[0]&0xF8)<<7) | ((from[1]&0xF8)<<2) | ((from[2]&0xF8)>>3);
		break;
	case 0x03FF10: /* 15bpp BGR */
		for (i=0;i<BOX_SIZE*BOX_SIZE;i++,from+=3)
			p16[i] = ((from[2]&0xF8)<<7) | ((from[1]&0xF8)<<2) | ((from[0]&0xF8)>>3);
		break;
	default:
		for (yy=0;yy<BOX_SIZE;yy++)
			for (i=0;i<BOX_SIZE;i++,from+=3) {
				pxl = ((from[0]*ximout->red_mask/255)&ximout->red_mask) |
					((from[1]*ximout->green_mask/255)&ximout->green_mask) |
					((from[2]*ximout->blue_mask/255)&ximout->blue_mask);

				XPutPixel(ximout, i, yy, pxl);
			}
		break;
	}
}


/* RedrawWindow
   redraws both windows from the contents of the passed Ximage */
void RedrawWindow(XImage * xim) {
	XPutImage(wmxp_display, wmgen, NormalGC, xim, 0, 0, 0, 0, BOX_SIZE, BOX_SIZE);
	flush_expose(wmxp_iconwin);
	XCopyArea(wmxp_display, wmgen, wmxp_iconwin, NormalGC, 0,0, BOX_SIZE, BOX_SIZE, 0,0);
	flush_expose(wmxp_win);
	XCopyArea(wmxp_display, wmgen,     wmxp_win, NormalGC, 0,0, BOX_SIZE, BOX_SIZE, 0,0);
}

/* initX11pixmap */

XImage * initwmX11pixmap(int argc, char *argv[]) {
	unsigned long	gcm;
	char * wname = argv[0];
	XTextProperty	name;
	XClassHint classHint;
	XGCValues gcv;
	XWMHints mywmhints;
	Window Root;
	Visual * visual;
	long InterestingEvents = NoEventMask;
	int screen;
	unsigned int depth;
	XImage * xim;

	if (!(wmxp_display = XOpenDisplay(NULL))) {
		fprintf(stderr, "%s: can't open display %s\n", wname, XDisplayName(NULL));
		exit(1);
	}
	screen  = DefaultScreen(wmxp_display);
	Root    = RootWindow(wmxp_display, screen);
	/*x_fd    = XConnectionNumber(wmxp_display);*/
	visual  = DefaultVisual(wmxp_display, screen);
	depth   = DefaultDepth(wmxp_display, screen);

	if (visual->red_mask == 0 ||
	    visual->green_mask == 0 ||
	    visual->blue_mask == 0 ||
	    (visual->class != TrueColor && visual->class != DirectColor)) {
		fprintf(stderr, "We require a true- or direct- color display, and yours isn't.\n");
		exit(2);
	}

	wmgen = XCreatePixmap(wmxp_display,Root,BOX_SIZE,BOX_SIZE,depth);
	/* Create an XImage without data. Then allocate space for same. */
	xim = XCreateImage(wmxp_display, visual, depth, ZPixmap, 0, NULL, BOX_SIZE, BOX_SIZE, 32, 0);
	xim->data = (char *)malloc(xim->bytes_per_line * BOX_SIZE );

	/* Create a window to hold the stuff */
	wmxp_win = XCreateSimpleWindow
		(wmxp_display, Root,  0,0,  BOX_SIZE, BOX_SIZE,  0,
		 BlackPixel(wmxp_display,screen), WhitePixel(wmxp_display,screen));
	wmxp_iconwin = XCreateSimpleWindow
		(wmxp_display, wmxp_win,  0,0,  BOX_SIZE, BOX_SIZE,  0,
		 BlackPixel(wmxp_display,screen), WhitePixel(wmxp_display,screen));

	XStoreName(wmxp_display, wmxp_win, wname);
	XStoreName(wmxp_display, wmxp_iconwin, wname);

	/* Activate hints */
	classHint.res_name = wname;
	classHint.res_class = wname;
	XSetClassHint(wmxp_display, wmxp_win, &classHint);

	/* Select acceptable input events */
	InterestingEvents |= KeyPressMask | KeyReleaseMask |
		ButtonPressMask | ButtonReleaseMask |
		EnterWindowMask | LeaveWindowMask | ExposureMask;
	
	XSelectInput(wmxp_display, wmxp_win, InterestingEvents);
	XSelectInput(wmxp_display, wmxp_iconwin, InterestingEvents);

	if (XStringListToTextProperty(&wname, 1, &name) == 0) {
		fprintf(stderr, "%s: can't allocate window name\n", wname);
		exit(3);
	}

	/* Create GC for drawing */
	gcm = GCGraphicsExposures;
	gcv.graphics_exposures = 0;
	NormalGC = XCreateGC(wmxp_display, Root, gcm, &gcv);

	/* Act like a dockapp */
	mywmhints.input = True;
	mywmhints.initial_state = WithdrawnState;
	mywmhints.icon_window = wmxp_iconwin;
	mywmhints.icon_x = 0;
	mywmhints.icon_y = 0;
	mywmhints.window_group = wmxp_win;
	mywmhints.flags = InputHint | StateHint | IconWindowHint | IconPositionHint | WindowGroupHint;
	XSetWMHints(wmxp_display, wmxp_win, &mywmhints);

	XSetCommand(wmxp_display, wmxp_win, argv, argc);

	XMapWindow(wmxp_display, wmxp_win);


	return xim;
}
