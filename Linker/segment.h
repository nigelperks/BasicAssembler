// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// Linker segment-handling.

#ifndef SEGMENT_H
#define SEGMENT_H

#include "utils.h"
#include "symbol.h"
#include "segment_layout.h"

#define DEFAULT_SEGMENT_P2ALIGN (4)
#define MAX_SEGMENT_P2ALIGN (12)

// A segment in the linking process might be a segment loaded from one object file,
// or a public segment or group combining several such segments.
typedef struct {
  char* name;
  BOOL public;
  BOOL stack;
  int group;
  BYTE p2align;

  unsigned long pc; // where to load next data; set by ORG; valid only during loading
  BYTE* data;
  MemSize allocated; // memory allocated to data
  DWORD lo; // lowest address in segment to which data has been written
  DWORD hi; // lowest address from which no data has been written

  // uninitialised space after hi,
  // including any padding after hi to align the uninitialised data
  DWORD space;

  // layout of constituent segments within this segment,
  // for map file
  struct segment_layout layout;
} SEGMENT;

SEGMENT* new_segment(const char* name, BOOL public, BOOL stack, GROUPNO);
void delete_segment(SEGMENT*);

const char* seg_name(const SEGMENT*);

BOOL seg_public(const SEGMENT*);
BOOL seg_stack(const SEGMENT*);
int seg_group(const SEGMENT*);
unsigned seg_p2align(const SEGMENT*);

void inc_p2align(SEGMENT*, const SEGMENT*);

DWORD seg_lo(const SEGMENT*);
DWORD seg_hi(const SEGMENT*);
BOOL segment_has_data(const SEGMENT*);
BYTE* seg_data(SEGMENT*);

DWORD seg_space(const SEGMENT*);

DWORD segment_end(const SEGMENT*);
DWORD segment_end_p2aligned(const SEGMENT*, unsigned p2align);

void align_segment_hi(SEGMENT* seg, unsigned p2align); // add to hi so that hi is aligned
void space_out(SEGMENT* seg, unsigned p2align); // add to space so that hi+space is aligned

void write_segment(SEGMENT*, DWORD offset, const BYTE* buf, unsigned size);

void load_segment_data(SEGMENT*, const BYTE*, unsigned size);
void load_segment_space(SEGMENT*, unsigned size);

void append_segment(SEGMENT* dest, const SEGMENT* src);

void initial_segment_layout(SEGMENT*, const char* module_name);
void fprint_segment_layout(FILE*, const SEGMENT*, const DWORD base, const unsigned indent);

#endif // SEGMENT_H
