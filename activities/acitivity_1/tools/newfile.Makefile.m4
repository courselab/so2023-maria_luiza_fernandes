include(docm4.m4)dnl
DOCM4_HASH_HEAD_NOTICE([Makefile],[<oneline>])

init: all 

UPDATE_MAKEFILE

##
## Relevant rules
##

all:

.PHONY: clean

clean :

dnl
dnl Uncomment to include bintools
dnl
dnl
dnl DOCM4_MAKE_BINTOOLS

