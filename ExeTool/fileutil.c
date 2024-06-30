// EXE analysis tool
// Copyright (c) 2021 Nigel Perks
// Low-level file functions.

#include <assert.h>
#include "fileutil.h"

BYTE getbyte(FILE* fp)
{
    int c = getc(fp);

    if (c == EOF)
        fatal("unexpected end of file\n");

    return c;
}

WORD getword(FILE* fp)
{
    unsigned int b1 = getbyte(fp);
    unsigned int b2 = getbyte(fp);

    return (b2 << 8) | b1;
}
