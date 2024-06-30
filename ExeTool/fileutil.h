// EXE analysis tool
// Copyright (c) 2021,24 Nigel Perks
// Low-level file functions.

#ifndef FILE_UTIL_H
#define FILE_UTIL_H

#include <stdio.h>
#include "utils.h"

BYTE getbyte(FILE*);
WORD getword(FILE*);

#endif // FILE_UTIL_H