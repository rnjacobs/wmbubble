#ifndef WMX11PIXMAP_H_INCLUDED
#define WMX11PIXMAP_H_INCLUDED

#include <X11/Xutil.h>

/* Defines */

#ifndef BOX_SIZE
#define BOX_SIZE 58
#endif

/* Function Prototypes */

XImage * initwmX11pixmap(int argc, char *argv[]);
void RedrawWindow(XImage * xim);
void RGBtoXIm(const unsigned char * from, XImage * ximout);

#define wmPutPixel(xim, x, y, r, g, b) {\
	unsigned long pxl;\
\
	pxl = ((r*xim->red_mask/255)&xim->red_mask) |\
		((g*xim->green_mask/255)&xim->green_mask) |\
		((b*xim->blue_mask/255)&xim->blue_mask);\
\
	XPutPixel(xim, x, y, pxl);\
}

/* Global variables necessary for the event handlers */
Display *wmxp_display;
Window  wmxp_iconwin, wmxp_win;

#endif
