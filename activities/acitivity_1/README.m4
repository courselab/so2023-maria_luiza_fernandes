include(docm4.m4)
 Bare-Metal Hello World
 ==============================================
DOCM4_DIR_NOTICE

 Overview
 ------------------------------

 This activity is meant for practicing the concepts and techniques
 addressed in the series of examples covered in 'syseg/eg/hw'.

 Challenge
 ------------------------------

 a) Implement your own version of the hello world program in machine code.

    Edit the file hw.hex using `syseg/eg/hw/eg-00.hex` as reference.
    Avoid copying and pasting the code, though. Try to recreate it from
    your knowledge of x86 real-mode and legacy boot mechanism.

    Edit the Makefile to build hw-hex.bin.

    Test your code using the emulator.

    If it works, try booting it on your physical hardware.

       Note:

       You may need to add some extra code to satisfy idiosyncratic BIOSes.
       Consult the examples in `syseg/eg/hw`

 b) Implement your own version of the hello world program in AT&T assembly.

    Edit the hw.S using `syseg/eg/hw/eg-03.S` as reference.

    Repeat the tests mentioned in part (a).

 c) Implement your own version of the hello world program in C.

    Edit the file hw.c using `syseg/eg/hw/eg-08.c` as reference.

    Repeat the tests mentioned in part (a)

 ===============================================================================

 APPENDIX
 

DOCM4_EXERCISE_DIRECTIONS

DOCM4_BINTOOLS_DOC
