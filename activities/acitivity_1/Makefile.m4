dnl  Makefile.m4 - Makefile template.
dnl    
dnl  Copyright (c) 2021 - Monaco F. J. <monaco@usp.br>
dnl
dnl  This file is part of SYSeg. 
dnl
dnl  SYSeg is free software: you can redistribute it and/or modify
dnl  it under the terms of the GNU General Public License as published by
dnl  the Free Software Foundation, either version 3 of the License, or
dnl  (at your option) any later version.
dnl
dnl  SYSeg is distributed in the hope that it will be useful,
dnl  but WITHOUT ANY WARRANTY; without even the implied warranty of
dnl  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
dnl  GNU General Public License for more details.
dnl
dnl  You should have received a copy of the GNU General Public License
dnl  along with .  If not, see <http://www.gnu.org/licenses/>.
dnl
dnl  ------------------------------------------------------------------
dnl
dnl  Note: this is a source file used to produce either a documentation, item,
dnl        item, script or another source file by m4 macro processor. If you've
dnl	   come across a file named, say foo.m4, while looking for one of the
dnl	   aforementioned items, changes are you've been looking for file foo,
dnl	   instead. If you can't find foo, perhaps it is because you've missed
dnl 	   missed the build steps described in the file README, found in the
dnl	   top source directory of this project.
dnl        
dnl
include(docm4.m4)dnl
DOCM4_HASH_HEAD_NOTICE([Makefile],[Makefile script.])

##
## Relevent files for this exercise.
##

all: # hw-hex hw-s hw-c
	@echo "Edit this rule"

hw-hex.bin : hw.hex
	hex2bin $< $@ 

hw-s.bin : hw.S
	@echo "Edit this rule"

hw-c.bin : hw.c
	@echo "Edit this line"

hex2bin : hex2bin.c
	gcc $< -o $@

%/run : %
	qemu-system-i386 -drive format=raw,file=$< -net none

.PHONY: clean

clean:
	rm -rf *.bin *.o *.s hex2bin