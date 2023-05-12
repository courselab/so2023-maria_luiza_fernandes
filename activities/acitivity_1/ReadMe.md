# Activity 01

1) Implement your own version of the hello world program in machine code.

In this first question, a .hex entry was built and after finishing it, it is necessary to use the hex2bin binary to convert .hex to .bin. To perform this conversion, just run the code below:

```
make hw-hex.bin
```

2) Implement your own version of the hello world program in AT&T assembly.

In the second question, a code was built in Assembly in the AT&T standard. To build a .bin, you first need to obtain the .o using the as utility. With the .o in hand, just use ld to convert the .o into .bin. To perform these steps, just run the code below:

```
make hw-s.bin
```

3) Implement your own version of the hello world program in C.

And finally, in the third question the same logic is built using assembly injected in the c language. Due to having multiple files, gcc is initially used to build the .o of the auxiliary files hw_rt0.c and hw_utils.c. Subsequently, gcc is used to build the .bin based on the auxiliary files and the main hw.c file. To perform these steps, just run the code below:

```
make hw-c.bin
```

4) To run all commands just run the command below:

```
make
```

5) To clear the .s, .o, .bin, hex2bin files, run the command below:

```
make clean
```

6) When executing make, the files hw-hex.bin, hw-s.bin and hw-c.bin will be returned. To check if it was generated correctly just run the command below changing <file_name> for one of the three options returned.

```
qemu-system-i386 -drive format=raw,file=<file_name> -net none
```