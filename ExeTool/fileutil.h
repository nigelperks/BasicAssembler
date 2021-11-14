// EXE analysis tool
// Copyright (c) 2021 Nigel Perks
// Low-level file functions.

#ifndef FILE_UTIL_H
#define FILE_UTIL_H

#include <stdio.h>
#include "utils.h"

BYTE getbyte(FILE*);
WORD getword(FILE*);

BYTE* read_file(FILE*, unsigned long size);

long file_size(FILE*);

#endif // FILE_UTIL_H