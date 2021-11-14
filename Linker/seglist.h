// Basic Linker
// Copyright (c) 2021 Nigel Perks
// Segment list.

#ifndef SEGLIST_H
#define SEGLIST_H

#include "segment.h"
#include "symbol.h"

typedef struct {
  SEGMENT* * seg;
  SEGNO allocated;
  SEGNO used;
  unsigned char case_sensitivity;
} SEGMENT_LIST;

SEGMENT_LIST* new_segment_list(int case_sensitivity);
void delete_segment_list(SEGMENT_LIST*);
SEGNO segment_list_count(SEGMENT_LIST*);
SEGMENT* get_segment(SEGMENT_LIST*, SEGNO);
void set_segment(SEGMENT_LIST*, SEGNO, SEGMENT*);
const char* segment_name(const SEGMENT_LIST*, SEGNO);
BOOL segment_public(const SEGMENT_LIST*, SEGNO);
GROUPNO segment_group(const SEGMENT_LIST*, SEGNO);
BOOL segment_defined(const SEGMENT_LIST*, const char* name);

SEGNO add_segment(SEGMENT_LIST*, const char* name, BOOL public, BOOL stack, GROUPNO);
SEGNO reserve_segment(SEGMENT_LIST*);
void remove_segment(SEGMENT_LIST*, SEGNO);
SEGNO find_public_segment(const SEGMENT_LIST*, const char* name);
SEGNO find_stack_segment(const SEGMENT_LIST*, const char* name);

SEGNO first_proper_segment(SEGMENT_LIST*);
SEGNO next_proper_segment(SEGMENT_LIST*, SEGNO);

void dump_segments(const SEGMENT_LIST*);

#endif // SEGLIST_H