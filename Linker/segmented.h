// Basic Linker
// Copyright (c) 2021-2 Nigel Perks
// Segmented program: segments, groups, symbols.

#ifndef SEGMENTED_H
#define SEGMENTED_H

#include "seglist.h"
#include "grouplist.h"
#include "fixup.h"

typedef struct {
  SEGNO segno;
  DWORD offset;
} START;

typedef struct {
  SEGNO segno;
  DWORD offset;
  WORD size;
} STACK;

typedef struct {
  char* name;
  SEGMENT_LIST* segs;
  GROUP_LIST* groups;
  SYMTAB* st;
  FIXUPS* fixups;
  START start;
  STACK stack;
} SEGMENTED;

SEGMENTED* new_segmented(const char* name, int case_sensitivity);
void delete_segmented(SEGMENTED*);

#endif // SEGMENTED_H