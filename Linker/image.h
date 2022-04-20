// Basic Linker
// Copyright (c) 2021-2 Nigel Perks
// Building the output program image.

#ifndef IMAGE_H
#define IMAGE_H

#include "utils.h"
#include "segmented.h"

typedef struct {
  WORD seg;
  WORD offset;
  BOOL set;
} IMAGE_START;

typedef struct {
  WORD seg;
  WORD size;
  BOOL set;
} IMAGE_STACK;

typedef struct {
  BYTE* data;
  size_t allocated;
  DWORD lo;
  DWORD hi;
  IMAGE_START start;
  IMAGE_STACK stack;
  DWORD space;
} IMAGE;

IMAGE* new_image(void);
void delete_image(IMAGE*);

IMAGE* build_image(const SEGMENTED*, int verbose);

#endif // IMAGE_H