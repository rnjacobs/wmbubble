# bubblemon configuration
EXTRA = -DENABLE_DUCK
EXTRA += -DENABLE_CPU
EXTRA += -DENABLE_MEMSCREEN
EXTRA += -DKERNEL_26
# EXTRA += -DKDE_DOCKAPP
# EXTRA += -DUPSIDE_DOWN_DUCK

# where to install this program
PREFIX = /usr/local

# no user serviceable parts below
EXTRA += $(WMAN)
# optimization cflags
CFLAGS = -O3 -ansi -Wall `gtk-config --cflags` ${EXTRA}
# profiling cflags
# CFLAGS = -ansi -Wall -pg -O3 `gtk-config --cflags` ${EXTRA} -DPRO
# test coverage cflags
# CFLAGS = -fprofile-arcs -ftest-coverage -Wall -ansi -g `gtk-config --cflags` ${EXTRA} -DPRO


SHELL=sh
OS = $(shell uname -s)
OBJS = bubblemon.o
CC = gcc

# special things for Linux
ifeq ($(OS), Linux)
    OBJS += sys_linux.o
    LIBS = `gtk-config --libs | sed "s/-lgtk//g"`
    INSTALL = -m 755
endif

# special things for FreeBSD
ifeq ($(OS), FreeBSD)
    OBJS += sys_freebsd.o
    LIBS = `gtk-config --libs | sed "s/-lgtk//g"` -lkvm
    INSTALL = -c -g kmem -m 2755 -o root
endif

# special things for OpenBSD
ifeq ($(OS), OpenBSD)
    OBJS += sys_openbsd.o
    LIBS = `gtk-config --libs | sed "s/-lgtk//g"`
endif

#special things for SunOS
ifeq ($(OS), SunOS)

    # try to detect if gcc is available (also works if you call gmake CC=cc to
    # select the sun compilers on a system with both)
    COMPILER=$(shell \
        if [ `$(CC) -v 2>&1 | egrep -c '(gcc|egcs|g\+\+)'` = 0 ]; then \
	    echo suncc; else echo gcc; fi)

    # if not, fix up CC and the CFLAGS for the Sun compiler
    ifeq ($(COMPILER), suncc)
	CC=cc
	CFLAGS=-v -xO3
    endif

    ifeq ($(COMPILER), gcc)
	CFLAGS=-O3 -Wall
    endif
    CFLAGS +=`gtk-config --cflags` ${EXTRA}
    OBJS += sys_sunos.o
    LIBS = `gtk-config --libs` -lkstat -lm
    INSTALL = -m 755
endif


all: bubblemon

bubblemon: $(OBJS)
	$(CC) $(CFLAGS) -o bubblemon $(OBJS) $(LIBS)

clean:
	rm -f bubblemon *.o *.bb* *.gcov gmon.* *.da *~

install:
	install $(INSTALL) bubblemon $(PREFIX)/bin
