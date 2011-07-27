#ifndef WMX11PIXMAP_H_INCLUDED
#define WMX11PIXMAP_H_INCLUDED

#include <X11/Xutil.h>

/* Defines */

#define BOX_SIZE 58

/* Function Prototypes */

XImage * initwmX11pixmap(int argc, char *argv[]);
void RedrawWindow(XImage * xim);
void wmPutPixel(XImage *, int x, int y, unsigned char r, unsigned char g, unsigned char b);

/* Global variables necessary for the event handlers */
Display *wmxp_display;
Window  wmxp_iconwin, wmxp_win;

#endif
