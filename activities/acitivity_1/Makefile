hw-hex.bin : hw.hex ./tools/hex2bin
	./tools/hex2bin $< $@ 

hex2bin : ./tools/hex2bin.c
	gcc $< -o $@

hw-s.bin: hw.S
	as --32 $< -o hw-s.o
	ld -melf_i386 --oformat=binary -Ttext=0x7c00  hw-s.o -o $@
	
.PHONY: clean

clean:
	rm -rf *.bin *.o *.s ./tools/hex2bin