dnl  doc.m4 - Macros for document source files
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
dnl
divert(-1)

changequote(`[',`]')

define([DOCM4_PROJECT],[SYSeg])
define([DOCM4_REPOSITORY],[http://gitlab.com/monaco/syseg])
define([DOCM4_YEAR],[2001])
define([DOCM4_AUTHOR],[Monaco F. J.])
define([DOCM4_EMAIL]),[<monaco@usp.br>])
define([DOCM4_LICENSE],[GNU General Public License vr.3])
define([DOCM4_LICENSE_SHORT],[GNU GPL vr.3])

define([DOCM4_DEPS],TOOL_PATH/docm4.m4 TOOL_PATH/bintools.m4 TOOL_PATH/Makegyver.mk)]

dnl A short head notice that can be used in the README file
dnl describing the contents of a directory.

define(DOCM4_DIR_NOTICE,
[
 The contents of this directory are part of DOCM4_PROJECT,
 copyright (c) DOCM4_YEAR DOCM4_AUTHOR DOCM4_AUTHOR
 DOCM4_PROJECT is Free Software distributed under DOCM4_LICENSE_SHORT.
 Further information: DOCM4_REPOSITORY
])

dnl Copyright notice for Makefiles
dnl
dnl Arguments:
dnl
dnl  $1  file name
dnl  $2  one-line brief description

define(DOCM4_HASH_HEAD_NOTICE,
[changecom(,)dnl
#   $1 - $2
#
#   Copyright (c) DOCM4_YEAR - DOCM4_AUTHOR DOCM4_EMAIL
#
#   This file is part of DOCM4_PROJECT.
#
#   DOCM4_PROJECT is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
changecom([#],[])
])

dnl Copyright notice for shell scripts that use # as comment mark.
dnl
dnl Arguments:
dnl
dnl  $1  full path to the shell
dnl  $2  file name
dnl  $3  one-line brief description

define(DOCM4_SHELL_HEAD_NOTICE,
#!$1
#
[DOCM4_HASH_HEAD_NOTICE($2,$3)]
)

define(DOCM4_FILE_NOTICE,
[
 This file is a derivative part of DOCM4_PROJECT,
 copyright (c) DOCM4_YEAR DOCM4_AUTHOR DOCM4_AUTHOR
 DOCM4_PROJECT is Free Software distributed under GNU GPL vr3.
 Further information: DOCM4_REPOSITORY
])

define(DOCM4_HASH_FILE_NOTICE,
[changecom(,)dnl
## This file is a derivative worl of DOCM4_PROJECT,
## copyright (c) DOCM4_YEAR DOCM4_AUTHOR DOCM4_AUTHOR.
## DOCM4_PROJECT is Free Software distributed under GNU GPL vr3.
## Further information: DOCM4_REPOSITORY
changecom([#],)
])

define([DOCM4_MAKE_BINTOOLS],[DOCM4_BINTOOLS])

define([DOCM4_BINTOOLS],
[changecom(,)dnl
# ------------------------------------------------------------
# The following excerpt of code was copied from MakeBintools,
# part of DOCM4_PROJECT, Copyright DOCM4_YEAR DOCM4_AUTHOR.
# MakeBintools is a collection of handy 'GNU make' rules for
# inspecting and comparing the contents of source and object files.
# Further information: DOCM4_REPOSITORY

include(bintools.m4)
changecom([#],)dnl

# End of MakeBintools.
# -------------------------------------------------------------
])

define([DOCM4_INSTRUCTIONS],
[

 Instructions
 ------------------------------

 The code examples in this directory include explanatory inline comments,
 which are complemented with the additional technical discussions laid
 in this README file. While some examples may be independent one from another,
 there may be also sequences of code snippets in which each example builds on
 its predecessor. In those cases, it is interesting to go hrough the code
 examples in the order suggested in this document.
 
 For convenience, a build script may be provided which contains rules to
 compile, execute and inspect the contents of the source and object files.
 It may be useful to refer to the script to get the details of how the
 examples are built and executed.  Directions for the build script are
 found in the section "How to use the examples" ahead in this document.
 
])


define([DOCM4_UPDATE_AUTHOR_INFO],
[
  Please, *do not* forget to

    - create a file AUTHORS and edit it with your name
    - edit heading comments in all source files with your data

  Open-Source literacy time:

  Every source file of SYSeg contains a copyright and licensing statement. 

  But remember: the authorship of your own source code --- even if you borrow
  parts of SYSeg --- should be assigned to you, the author of your work; not
  to the original SYSeg author(s). Nevertheless, being your source code a
  derivative work of SYSeg, credits are due to SYSeg author(s), whence
  making a propper attribution to SYSeg is order.
  
  Also, bear in mind that the SYSeg's licence requires your derivative
  work to be distributed under terms no more restrictive than those enforced
  by the license of the original work --- if in doubt, keeping the original
  SYSeg licence is perfectly safe.

  One way to claim the copyright of your derivative work and attribute credits
  to the original work is by adding the following notice at the top of every
  source file of your project (e.g. keeping the original DOCM4_PROJECT
  license):

  You can fulfill the requisites above by adding the following note at the
  topmost part of your source files:

```

     Copyright (c) <CURRENT-YEAR>, <YOUR-NAME> 

     This piece of software is a derivative work of DOCM4_PROJECT,
     by DOCM4_AUTHOR. DOCM4_PROJECT is distributed under the license
     <DOCM4_LICENSE_SHORT>, and is available at <DOCM4_REPOSITORY>.

    This file is part of <YOUR-WORK>.

    <YOUR-WORK> is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
   
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
   
    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
```

  By using 'make export' rule, the script will do that for you.
])



##
## Bintools documentation
##

define([DOCM4_MAKE_BINTOOLS_DOC]),[DOCM4_BINTOOLS_DOC])]

define([DOCM4_BINTOOLS_DOC],
[

 SYSeg conventions and conveniences
 ----------------------------------
 
 File names:

     eg-00.ext		contain the main examples;
     egx-00.ext		contain auxiliary extra examples.

     *-alpha.ext	contain incomplete or wrong implementation
     *-beta.ext		working but cumbersome/inelegant implementation 

 File extensions:

     hex		ASCII file containing values
     			in hexadecimal representation;

     asm		manually written assembly code in
     			Intel ASM format;

     S			manually written assembly code
     			in AT&T Gas format;

     s			assembly code in AT&T Gas format
     			generated by the compiler (GCC);

     o			object code produced by the assembler;

     bin		binary file generated by the
     			compiler /linker;

     ld			linker script.

 Some examples allow alternative build recipes which can be selected
 by passing the command-line variable ALT=<number> to 'make'. See bellow.

 NEEDED SOFTWARE

 In order to exercise with the examples in this section, the following
 pieces of software may be needed. The version indications list those with
 which the project was tested. Using a more recent version should be
 ok, but it is not absolutely guaranteed that results won't exhibit minor
 variations. Feedback is always appreciated.

 If required for a particular example, it is safe to use

 - Linux         5.13.0         (any decent ditribution)
 - GCC 	     	 9.3.0	        (the GNU compiler)
 - GNU binutils  2.34		(GNU assembler, linker, disassembler etc.) 
 - nasm		 2.14.02	(NASM assembler)
 - qemu		 4.2.1		(most probably qemu-system-i386)
 - gcc-multilib  9.3.0		(to compile 32-bit code in a 64-bit platform)
 - xorriso	 1.5.2-1	(depending on your computer's BIOS)
 - hexdump	 POSIX.2	(binary editor)
 
 CONVENIENCY RULES FROM BINTOOLS

 The following excerpt of code was copied from Bintools, part of
 DOCM4_PROJECT, Copyright DOCM4_YEAR DOCM4_AUTHOR.
 Bintools is a collection of handy 'GNU make' rules for testing
 inspecting and comparing the contents of source and object files.
 Further information: DOCM4_REPOSITORY


 Build instructions
 

 * For buiding and inspecting, use

   make					     Build the default target.

   make foo				     Build foo.

   make diss IMG=foo 			     Disassemble foo.

   	     	     			     Optionally,

					        ASM  = intel | att  (default)
						BIT  =    16 | 32   (default)

   make dump IMG=foo			     Show the raw contents of foo.
   
   make      			             Build everything (or make all)

   make clean			             Undo make all

   make diff foo bar baz		     Show graphical diff between files

   	     	     			     ASM and BIT variables apply


  * If any example involves the manipulation of a bootable image, use
  

   make run IMG=foo	             	     Test foo (MBR) in the emulator

   make run-fd IMG=foo  		     Test foo (floppy) in the emulator

   make iso IMG=foo	             	     build an iso9660 image with foo

   make stick IMG=foo DEVICE=/dev/sdX        make a bootable USB stick


   SHORTCUTS

   make foo/diss | foo/d		     disassemble .text as 32-bit AT&T

   make foo/diss intel|att		     disassemble as 32-bit Intel or AT&T
   make foo/diss 16|32			     disassemble as 16-bit or 32-bit
   make foo/diss intel|att 16|32	     disassemble as Intel|AT&T 16|32 bit
   make foo/diss 16|32 intel|att	     disassemble as Intel|AT&T 16|32 bit

   make foo/i16	       			     disassemble as Intel 16-bit
   make foo/a16 | foo/16  		     disassemble as AT&T  16-bit
   make foo/a32	| foo/32 | foo/a     	     disassemble as AT&T  32-bit
   make foo/i32	         | foo/i	     disassemble as Intel 32-bit

   		   			     In all disassembly rules, a
					     trailing '*' means disassemble all
					     sections, e.g. foo/d* foo/16* ...

   make foo/hex | foo/raw | foo/dump	     show raw contents in hexadecimal

   make foo/run				     test foo (mbr) with the emulator
   make foo/fd				     test foo (floppy) with the emulator

   make diffi16 | di16 | i16 foo bar baz     make diff with ASM=intel BIT=16
   make diffi32 | di32 | i32 foo bar baz     make diff with ASM=intel BIT=32
   make diffa16 | da16 | a16 foo bar baz     make diff with ASM=att BIT=16
   make diffa32 | da32 | a32 foo bar baz     make diff with ASM=att BIT=32

   make foo/stick dev    	   	     make stick IMG=foo DEVICE=dev

    NOTE ON BOOTING THE REAL HARDWARE

    If any example involves booting from a USB stick, mind following note.

    Unfortunately, not all BIOSes  handle USB boot devices in the same
    way (welcome to system level). Some are likely to emulate it as a floppy
    disk and rely on the original IBM PC boot method we are exploring here.
    If so, you should be able to prepare your stick using 'make stick'
    with the command-line variable IMG=foo.bin. Otherwise, if your computer's
    BIOS emulates your USB stick as a CD-ROM, you should be better served
    by passing it the variable IMG=foo.iso. This rule will create an ISO-9660
    CD image with El Torito extension, which is suitable for bootable CDs.

    Be aware also that some BIOSes assume the floppy contains a volume
    boot record (VBR) entry. If so, your program may not boot or, even
    worse, boot and execute with errors. This being is your case, check if
    your program starts with a VBR entry; if not add one or at lease prepend
    your bootstrap code with the instruction 'jmp 0x3c' followed by 61
    nops (or the binary sequence 0xeb Ox3c' followed by 61 0x90. This will
    create a dummy BPB (Bios Parameter Block); this should suffice to
    satisfy the BIOS. If it still doesn't work, you may try to add a
    real DOS compatible BPB (see syseg/eg/format).

    Finally, notice that not all modern BIOS support legacy boot emulation.
    If your BIOS is one of those, you may test your program using the
    emulator, or else try another computer equipment.


    Words of wisdom

    If you plan to boot the examples in the physical hardware, check which
    device represents your USB stick. You may use, for instance lsblk utility.
    Your devices should possibly list as /dev/sdX, with X being a, b, c etc.

    If you have only one storage device, say your HD, it may appear as
    /dev/sda, and when you plug your USB stick, it'll take the next
    available letter and appears as /dev/sdb.  You should be required
    administrative privileges (sudo) to write directly into your device.

    Be careful: you're entering system-level. 

    If you misspell your stick as /dev/hda, you may end up grieving in
    pitiful misery and hopeless regrets... do not lower your guard.

    Note: in some systems, storage device may also appear as /dev/mmcblk;
    e.g. /dev/mmcblk0p1 is the first partition of the device mmcklk0.

  --- End of MakeBintools
])

##
## Have a good coding
##
define([DOCM4_CLOSING_WORDS],
[
  Good coding.
])

##
## Update Makefile from Makefile.m4
##
define([UPDATE_MAKEFILE],
[
# Update Makefile from Makefile.m4 if needed, and then invoke make again.
# If the source is from a pack-distribution, the lack of Makefile.m4
# inhibits the updating. 

ifndef UPDATED
$(MAKECMDGOALS) : Makefile

Makefile_deps = Makefile.m4 DOCM4_DEPS

Makefile : $(shell if test -f Makefile.m4; then echo $(Makefile_deps); fi);
	@if ! test -f .dist; then\
	  cd .. && make;\
	  make -f Makefile clean;\
	  make -f Makefile UPDATED=1 $(MAKECMDGOAL);\
	fi

endif
])

##
## Programing exercise directions with pack
##
define([DOCM4_EXPORT_DIRECTIONS],
[
 Directions for the exercise
 ------------------------------

 Within the exrcise directory, invoke the make rule

    $ make export             

 This should create a tarball containing the project files.
 Copy it to your own project tree and uncompress the tarball.

 To complete the programming exercise, proceed as indicated
 in both this file and the example source code.

 **Attention** do not simply copy the SYSeg files to your project.
 
     Some programs, build scrips, configuration files etc. may be
     heavily dependent on other parts of SYSeg and have not being
     designed to work properly if not in conjunction with those
     other files. If you merely copy files, they may well be incomplete.
     The syseg-export program should be used to export the SYSeg code
     into a standalone bundle. The above make rule will collect the
     required files, and possibly modify them as needed to work outside
     the SYSeg project tree. Moreover, syseg-export will also modify
     the copyright statement in a form suitable for a derivative work.

  Should you intend to reuse any other file from SYSeg, please use
  the command

     $ syseg-export <input-file> <output-directory>

  found in the directory syseg/tools. It will export SYSeg files
  in a format suitable to be reused by external projects.

DOCM4_UPDATE_AUTHOR_INFO
])

define([DOCM4_DELIVERY_DIRECTIONS],
[
  How to deliver the exercise
  ------------------------------
  
  If you're exploring the exercise as part of a trainning program,
  chances are that your instructor is following the delivery workflow
  suggested by SYSeg. If that is the case, when you're done with the
  activity, you should be asked to upload your work into a repository
  managed by a version-control system (VCS) --- most probably Git.

  For this purpose, you must have already created your online repository
  in the recommended platform (e.g. GitHub or GitLab).

  To deliver your programming exercise just commit your changes and push
  them into to the mainstream repository.

  You may commit partial changes even before completing the exercise. That
  may be a convenient way to share ideias and ask for help.

  When you belive your work is complete, mark your final revision with a
  tag. Each exercise should specify a delivery tag.

  For instance, if the exercise specifies the tag 'final', proceed as follows

     $ git tag final
     $ git push origin final

  The instructor will know you are finished with the exercise.

  If further changes are required, please use 'final.1', 'final.2' etc.

  Note: please, unless otherwise explicitly specified, commit only source
  files (don't commit object or executable files). Usually, the exercise
  specification will list the required files.

  If a delivery tag is not specified, use 'done'.

  Please stick to the following convetion:

  - Unless otherwise specified, create a subdirectory under the root of
    your project tree with the same name as the exercise. For instance,
    if you are working on exercise `syseg/try/foo`, create a subdirectory
    `foo` at the root of your project directory.

])

# Shortcut for export and delivery directions.

define([DOCM4_EXERCISE_DIRECTIONS],

[DOCM4_EXPORT_DIRECTIONS]
[DOCM4_DELIVERY_DIRECTIONS]
)

##
##
##
define([DOCM4_RELEVANT_RULES],
[changecom(,)
###########################################################
##
## These are the rules of interest in this set of examples.
##
changecom([#],)
])

##
## Create pack-distribution (subprojects).
##
define([DOCM4_EXPORT],
[changecom(,)
# Self-contained pack distribution.
#
# make syseg-export     creates a tarball with the essential files, which
#       	        can be distributed independently of the rest of
#			this project.
#
# A pack distribution contain all the items necessary to build and run the
# relevant piece of software. It's useful,a for instance, to bundle
# self-contained subsections of DOCM4_PROJECT meant to be delivered as
# programming exercise assignments or illustrative source code examples.
#		
# In order to select which files should be included in the pack, list them
# in the appropriate variables
# 
# EXPORT_FILES_C    = C files (source, headers, linker scripts)
# EXPORT_FILES_MAKE = Makefiles
# EXPORT_FILES_TEXT = Text files (e.g. README)
# EXPORT_FILES_SH   = Shell scripts (standard /bin/sh)
#
# Except by text files, all other files will have their heading comment
# (the very first comment found in the file) replaced by a corresponding
# standard comments containing boilerplate copyright notice and licensing
# information, with blank fields to be filled in by the pack user.
# Attribution to DOCM4_PROJECT is also included for convenience.

TARNAME=$1-$2

changecom([#],)

syseg-export export:
	@if ! test -f .dist; then\
	  make do_export;\
	 else\
	  echo "This is a distribution pack already. Nothing to be done.";\
	fi

do_export:
	rm -rf $(TARNAME)
	mkdir $(TARNAME)
	(cd .. && make clean && make)
	for i in $(EXPORT_FILES); do\
	  TOOL_PATH/syseg-export $$i $(TARNAME);\
	done
	touch $(TARNAME)/.dist
	tar zcvf $(TARNAME).tar.gz $(TARNAME)

clean-export:
	rm -f $(TARNAME).tar.gz
	rm -rf $(TARNAME)

.PHONY: syseg-export export clean-export

])

## Template for binary and library build using GNU make and gcc capabilities.
## These rules makes use of GNU extensions and are not fully portable.
## The code exceprt if part MAKEGYVER, part [DOCM4_PROJECT].
define([DOCM4_MAKEGYVER],[
## ----------------------------------------------------------------------
## This piece of code is part of MakeGyver.
##
include(Makegyver.mk)

## End of MakeGyver
## ----------------------------------------------------------------------
])
divert(0)dnl
