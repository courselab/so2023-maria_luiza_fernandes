##   Automake.am - Automake script.
##
##   Copyright (c) 2021 - Monaco F. J. <monaco@usp.br>
##
##   This file is part of SYSeg
##
##   SYSeg is free software: you can redistribute it and/or modify
##   it under the terms of the GNU General Public License as published by
##   the Free Software Foundation, either version 3 of the License, or
##   (at your option) any later version.
##
##   This program is distributed in the hope that it will be useful,
##   but WITHOUT ANY WARRANTY; without even the implied warranty of
##   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##   GNU General Public License for more details.
##
##   You should have received a copy of the GNU General Public License
##   along with this program.  If not, see <http://www.gnu.org/licenses/>.

AM_CPPFLAGS = @CPP_FLAGS@ -DDATADIR=\"${datarootdir}\"
AM_CFLAGS =   @C_FLAGS@ 
AM_LDFLAGS =  @LD_FLAGS@   

# main_bin_CC = @PTHREAD_CC@
# main_bin_CFLAGS = @PTHREAD_CFLAGS@ 

bin_PROGRAMS = hex2bin bin2hex stripcomment cpimg

hex2bin_SOURCES = hex2bin.c debug.h
bin2hex_SOURCES = bin2hex.c debug.h

cpimg_SOURCES = cpimg.c
cpimg_CPPFLAGS = -Wno-unused-result

#syseg_SOUCES = syseg.c debug.h

stripcomment_SOURCES = stripcomment.c stripcomment-funct.c debug.h

lib_LTLIBRARIES = libsyseg.la
libsyseg_la_SOURCES = syseg.c
libsyseg_la_LDFLAGS = -version-info "0:1:0"


bin_SCRIPTS = syseg-export newfile

EXTRA_DIST = docm4.m4

# Wrapper execution script
#
# bin_PROGRAMS += main.bin 
# main_bin_SOURCES = main.c 
# bin_SCRIPTS += main
#
# main: main.sh
# 	cp $< $@
#
# clean-local:
# 	rm -f main
#
# install-exec-hook: 
# 	cd $(DESTDIR)/$(bindir) && mv main.bin main
#
# uninstall-hook:
# 	rm -f $(DESTDIR)/$(bindir)/main
#
# EXTRA_DIST += main.sh

#doc:

