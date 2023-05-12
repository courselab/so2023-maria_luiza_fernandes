# Makefile - Main build script
#
#  Copyright (c) 2023, Maria Luiza Fernandes  mrluiza.fernandes@usp.br
#
#  This file is from SYSeg.
#
#  SYSeg is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  SYSeg is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with .  If not, see <http://www.gnu.org/licenses/>.

TOOL_PATH=./tools

all: hw-hex.bin hw-s.bin hw-c.bin

hex2bin : $(TOOL_PATH)/hex2bin.c
	gcc $< -o $(TOOL_PATH)/$@

hw-hex.bin : hw.hex hex2bin
	$(TOOL_PATH)/hex2bin $< $@ 

hw-s.bin: hw.S
	as --32 $< -o hw-s.o
	ld -melf_i386 --oformat=binary -Ttext=0x7c00  hw-s.o -o $@
	
hw-c.bin : hw.c stdio.h
	gcc -m16 -O0 -I. -Wall -fno-pic -fcf-protection=none -c hw_rt0.c -o hw_rt0.o
	gcc -m16 -O0 -I. -Wall -fno-pic -fcf-protection=none -c hw_utils.c -o hw_utils.o
	gcc -m16 -O0 -I. -Wall -fno-pic -fcf-protection=none  --freestanding -nostdlib -T hw.ld -Wl,--orphan-handling=discard hw.c -o hw-c.bin

.PHONY: clean

clean:
	rm -rf *.bin *.o *.s $(TOOL_PATH)/hex2bin
