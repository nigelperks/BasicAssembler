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

BYTE* read_file(FILE* fp, unsigned long size) {
  BYTE* buf = emalloc(size);
  unsigned long count = fread(buf, 1, size, fp);
  if (count != size)
    fatal("file out of data: reading %lu bytes, got %lu bytes\n", size, count);
  return buf;
}

long file_size(FILE* fp) {
  long pos = ftell(fp);
  fseek(fp, 0, SEEK_END);
  long size = ftell(fp);
  assert(size >= 0);
  fseek(fp, pos, SEEK_SET);
  return size;
}