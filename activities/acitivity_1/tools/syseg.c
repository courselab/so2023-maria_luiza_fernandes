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

#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <string.h>
#include <syseg.h>
#include <config.h>

char syseg_error_buffer[2][SYSEG_ERROR_BUFFER_LENGTH] = {"",""};

void fail_ (		    
	    const char *program,	  
	    const char *file,
	    unsigned int line,
	    const char *message
			    )
{
  sprintf (syseg_error_buffer[0], "%s: %s : %d : %s",
	   program, file, line, message);

  fprintf (stderr, "%s\n", syseg_error_buffer[0]);
  fprintf (stderr, "%s\n", syseg_error_buffer[1]);

  
  exit(EXIT_FAILURE);
}


void fault_ (		    
	    const char *lib,	  
	    const char *file,
	    unsigned int line,
	    const char *message			    )
{

  
  sprintf (syseg_error_buffer[1], "%s: %s : %d : %s",
	   lib, file, line, message);

}
