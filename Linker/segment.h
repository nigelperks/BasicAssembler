// Basic Linker
// Copyright (c) 2021 Nigel Perks
// Linker segment-handling.

#ifndef SEGMENT_H
#define SEGMENT_H

#include "utils.h"
#include "symbol.h"

typedef struct {
  char* name;
  BOOL public;
  BOOL stack;
  int group;

  unsigned long pc;
  BYTE* data;
  unsigned long allocated;
  DWORD lo;
  DWORD hi;
} SEGMENT;

SEGMENT* new_segment(const char* name, BOOL public, BOOL stack, GROUPNO);
void delete_segment(SEGMENT*);

const char* seg_name(const SEGMENT*);
DWORD seg_pc(const SEGMENT*);
DWORD seg_lo(const SEGMENT*);
DWORD seg_hi(const SEGMENT*);
BOOL segment_has_data(const SEGMENT*);
BYTE* seg_data(SEGMENT*);
int seg_group(const SEGMENT*);
BOOL seg_public(const SEGMENT*);
BOOL seg_stack(const SEGMENT*);

DWORD padded_length(const SEGMENT*);
void pad_segment_to_paragraph(SEGMENT*);

void emit_segment_data(SEGMENT*, const BYTE*, unsigned size);
void append_segment_data(SEGMENT* dest, const SEGMENT* src);

#endif // SEGMENT_H