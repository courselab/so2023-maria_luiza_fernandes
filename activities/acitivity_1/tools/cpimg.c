/* hex2bin.c - Convert a file from hexadecima ascii to binary.
 
   Copyright (c) 2015, Monaco F. J. <monaco@usp.br>

   This file is part of SYSeg.

   SYSeg is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/* This program copies a stream of bytes to the output (like dd).*/

#include <stdio.h>
#include "debug.h"

#define PROGRAM "cpimg"
#define VERSION "0.1.0"

/* Program usage information. */

void usage()
{
#define msg(s)   fprintf (stderr, s "\n");
  msg("");
  msg("Usage   " PROGRAM " [option] | <input-file> [<output-file>]");
  msg("");
  msg("          <input-file>             if not given, reads from stdin");
  msg("          <output-file>            if not given, writes to stdout (in ascii)");
  msg("");
  msg("          options:   --help        this help");
  msg("                     --version     software version");
  msg("");
}

/* Main program. */


int main(int argc, char **argv)
{
  FILE *fpout, *fpin;
  int c, op;

  fpin = stdin;
  fpout = stdout;

  /* Process options. */
  
  if (argc > 1)
    {
      if (!strcmp (argv[1], "--help"))
	{
	  usage();
	  exit(EXIT_SUCCESS);
	}
      if (!strcmp (argv[1], "--version"))
	{
	  printf ("Version: %s %s\n", PROGRAM, VERSION);
	  exit(EXIT_SUCCESS);
	}
    }


  /* if (argc > 2) */
  /*   { */
  /*     printf ("Overwrite %s (y|N)? ", argv[2]); */
  /*     scanf ("%d", &op); */
  /*     if ( (op != 'y') && (op != 'Y')) */
  /* 	{ */
  /* 	  fprintf (stderr, "Aborted\n"); */
  /* 	  exit(EXIT_FAILURE); */
  /* 	} */
  /*   } */
  
  
  if (argc > 1)
    {
      fpin = fopen(argv[1], "r");
      sysfatal(!fpin);
    }


  if (argc > 2)
    {      
      fpout = fopen(argv[2], "w");
      sysfatal(!fpout);
    }


  while ((c=fgetc(fpin)) != EOF)
    fputc (c, fpout);
  
  fclose(fpin);
  fclose(fpout);
  
  
  return 0;
}
