// Basic Assembler
// Copyright (c) 2022-24 Nigel Perks
// Extendable string in C.

#ifndef ESTRING_H
#define ESTRING_H

#include <stddef.h>

typedef struct {
  char* s;
  size_t allocated;
  size_t used;
  size_t first_alloc;
} ESTRING;

void init_estring(ESTRING*, size_t first_alloc);
void deinit_estring(ESTRING*);

const char* estring_text(const ESTRING*);
void extend_string(ESTRING*, const char*);

#endif // ESTRING_H
