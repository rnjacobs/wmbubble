ifneq (,)
This makefile requires GNU Make.
endif

PACKAGE = wmbubble
VERSION = $(shell cat VERSION)
INSTALL = -m 755

# where to install this program
DESTDIR =
PREFIX  = /usr/local

# default build flags
# CFLAGS = -ansi -Wall -ggdb
# optimization cflags
CFLAGS = -ansi -Wall -O3
# profiling cflags
# CFLAGS = -ansi -Wall -O3 -pg -DPRO=50000
# test coverage cflags
# CFLAGS = -ansi -Wall -ggdb -fprofile-arcs -ftest-coverage -DPRO=50000

SHELL=sh
OS = $(shell uname -s)
OBJS = bubblemon.o wmx11pixmap.o
CC = gcc

# special things for Linux
ifeq ($(OS), Linux)
	OBJS += sys_linux.o
	LIBS = -lX11 -lm
endif

# special things for FreeBSD
ifeq ($(OS), FreeBSD)
	OBJS += sys_freebsd.o
	LIBS = -lX11 -lkvm -lm
	INSTALL = -c -g kmem -m 2755 -o root
endif

# special things for NetBSD
ifeq ($(OS), NetBSD)
	OBJS += sys_netbsd.o
	LIBS = -lX11 -lkvm -lm
	INSTALL = -c -g kmem -m 2755 -o root
endif

# special things for OpenBSD
ifeq ($(OS), OpenBSD)
	OBJS += sys_openbsd.o
	LIBS = -lX11 -lm
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

	OBJS += sys_sunos.o
	LIBS = -lX11 -lkstat -lm
endif

all: $(PACKAGE)

$(PACKAGE): $(OBJS)
	$(CC) $(CFLAGS) -o $(PACKAGE) $(OBJS) $(LIBS)

bubblemon.o: bubblemon.c wmx11pixmap.h include/bubblemon.h \
 include/sys_include.h include/numbers-2.h include/ducks.h \
 include/digits.h misc/numbers.xpm misc/ofmspct.xpm misc/datefont.xpm

wmx11pixmap.o: wmx11pixmap.c wmx11pixmap.h

sys_%.o: sys_%.c include/bubblemon.h include/sys_include.h

clean:
	rm -f $(PACKAGE) *.o *.bb* *.gcov gmon.* *.da *~

install:
	install -m 755 -d $(DESTDIR)$(PREFIX)/bin
	install $(INSTALL) $(PACKAGE) $(DESTDIR)$(PREFIX)/bin

dist-tar:
	git archive --format=tar --prefix=$(PACKAGE)-$(VERSION)/ master \
	 	> ../$(PACKAGE)-$(VERSION).tar

	gzip --best ../$(PACKAGE)-$(VERSION).tar

	# The Debian *.orig file
	cp -a ../$(PACKAGE)-$(VERSION).tar.gz ../$(PACKAGE)_$(VERSION).orig.tar.gz

dist: dist-tar
