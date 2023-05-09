/* syseg.c - SYSeg information.
 
   Copyright (c) 2021, Monaco F. J. <monaco@usp.br>

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



#ifndef SYSEG_H
#define SYSEG_H

#include <string.h>
#include <errno.h>

#define SYSEG_ERROR_BUFFER_LENGTH 1024
#define LIBNAME "libsyseg"

#ifdef program_invocation_short_name
#  define program_name program_invocation_short_name
#else
#  ifdef PROGRAM
#    define porigram_name PROGRAM
#  else
#    define program_name "Error"
#  endif
#endif

void fault_ (const char *program, const char *file, unsigned int line, const char *message);

void fail_ (const char *program, const char *file, unsigned int line, const char *message);

/* Macro called by a function to return on error. */

#define sysfault(exp, val) do{if (exp) fault_ (LIBNAME, __FILE__, __LINE__, strerror(errno)); return val; }while(0)

/* Macro called by a program to exit on function call error. */

#define fail(exp) do{if (exp) fail_ (program_name, __FILE__, __LINE__, "system fault");}while(0)

#define fault(exp, val) do{ if (exp) return val;}while(0)


#endif	/* SYSEG_H */
