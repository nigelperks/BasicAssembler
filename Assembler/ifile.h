// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Intermediate file.

#ifndef IFILE_H
#define IFILE_H

#include <stdbool.h>
#include "utils.h"
#include "source.h"
#include "instable.h"
#include "symbol.h"

typedef struct {
  long si; // source index: zero => none, positive => source line, negative => injection
  SYMBOL* label;
  int rep;
  int op;
  unsigned short operand_pos;
  unsigned short near_jump_size;
  const INSDEF* def;
  MemSize size;
} IREC;

#define NO_SEG (-1)
#define NO_GROUP (-1)

#define MAX_GROUP (8)
#define MAX_SEGMENT (8)

enum asm_segment_attribute {
  ATTR_PRIVATE = 0x01,
  ATTR_PUBLIC = 0x02,
  ATTR_STACK = 0x04,
  ATTR_UNINIT = 0x08,
};

enum { UNINIT = FALSE, INIT = TRUE };

#define DEFAULT_SEGMENT_P2ALIGN (4)

typedef struct {
  char* name;
  unsigned attr;
  GROUPNO group;
  BYTE p2align;
  DWORD pc;
} ASM_SEGMENT;

typedef struct {
  SOURCE* source;
  IREC* recs;
  unsigned allocated;
  unsigned used;
  unsigned pos;
  SYMTAB* st;
  const SYMBOL* start_label;
  BOOL provisional_sizes;
  char* groups[MAX_GROUP];
  GROUPNO ngroup;
  ASM_SEGMENT segments[MAX_SEGMENT];
  unsigned nseg;
  const SYMBOL* model_group;
  const SYMBOL* codeseg;
  const SYMBOL* dataseg;
  const SYMBOL* udataseg;
  SOURCE* injections;
} IFILE;

IFILE* new_ifile(SOURCE*);
void delete_ifile(IFILE*);

IREC* new_irec(IFILE*);
IREC* insert_irec_after(IFILE*, const IREC*);

unsigned irec_count(IFILE*);
IREC* get_irec(IFILE*, unsigned);
const IREC* get_irec_const(const IFILE*, unsigned);

SEGNO segment_count(const IFILE*);
int create_segment(IFILE*, const char* name);
void reset_pc(IFILE*);

const char* segment_name(const IFILE*, unsigned seg);
DWORD segment_pc(const IFILE*, unsigned seg);
void set_segment_pc(IFILE*, unsigned seg, DWORD pc);
void inc_segment_pc(IFILE*, unsigned seg, DWORD size);
GROUPNO segment_group(const IFILE*, unsigned seg);
void set_segment_group(IFILE*, unsigned seg, GROUPNO);

unsigned segment_attributes(const IFILE*, unsigned seg);
void set_segment_attributes(IFILE*, unsigned seg, unsigned attr);
BOOL segment_public(const IFILE*, unsigned seg);
void set_segment_public(IFILE*, unsigned seg);
BOOL segment_stack(const IFILE*, unsigned seg);
void set_segment_stack(IFILE*, unsigned seg);
BOOL segment_uninit(const IFILE*, unsigned seg);
void set_segment_uninit(IFILE*, unsigned seg);

unsigned segment_p2align(IFILE*, unsigned seg);
void set_segment_p2align(IFILE*, unsigned seg, unsigned align);

BOOL relocatable_relative(const IFILE*, const SYMBOL*);

unsigned group_count(const IFILE*);
int create_group(IFILE*, const char* name);

const char* group_name(const IFILE*, GROUPNO);

enum {
  PRINT_SOURCE_NAME = 0x0001,
  PRINT_SIZE = 0x0002,
};

void print_intermediate(const IFILE*, const char* descrip, unsigned options);

unsigned inject(IFILE*, unsigned lineno, const char*);
unsigned inject_lineno(const IFILE*, unsigned index);
const char* inject_text(const IFILE*, unsigned index);

unsigned irec_lineno(const IFILE*, const IREC*);
const char* irec_text(const IFILE*, const IREC*);

void set_source(IREC*, unsigned source_index);
void set_inject(IREC*, unsigned inject_index);

#endif // IFILE_H
