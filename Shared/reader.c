// Basic Assembler
// Copyright (c) 2024 Nigel Perks
// Buffered file reading.

#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "reader.h"
#include "utils.h"

// Select between standard fgetc, fread or buffered reading functions
// to compare performance.

#define USE_BUFFERED_READER

READER* new_reader(const char* filename) {
  READER* r = ecalloc(sizeof *r);
  r->fp = efopen(filename, "rb", "reading");
  r->filename = estrdup(filename);
  return r;
}

#ifdef USE_BUFFERED_READER

int read_char(READER* r) {
  assert(r != NULL && r->fp != NULL);
  if (r->eof)
    return EOF;
  if (r->pos >= r->count) {
    r->count = fread(r->buf, 1, sizeof r->buf, r->fp);
    r->pos = 0;
  }
  if (r->pos >= r->count) {
    r->eof = true;
    return EOF;
  }
  return r->buf[r->pos++];
}

size_t read_buf(READER* r, BYTE* buffer, size_t size) {
  assert(r != NULL && r->fp != NULL);
  size_t count = 0;
  while (count < size) {
    if (r->eof)
      return count;
    if (r->pos >= r->count) {
      r->count = fread(r->buf, 1, sizeof r->buf, r->fp);
      r->pos = 0;
      if (r->count == 0) {
        r->eof = true;
        return count;
      }
    }
    size_t chunk = r->count - r->pos;
    if (chunk > size - count)
      chunk = size - count;
    memcpy(buffer + count, r->buf + r->pos, chunk);
    count += chunk;
    r->pos += chunk;
  }
  return count;
}

#else // USE_BUFFERED_READER

int read_char(READER* r) {
  assert(r != NULL && r->fp != NULL);
  return getc(r->fp);
}

size_t read_buf(READER* r, BYTE* buffer, size_t size) {
  assert(r != NULL && r->fp != NULL);
  return fread(buffer, 1, size, r->fp);
}

#endif // USE_BUFFERED_READER
