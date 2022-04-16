// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Assembler symbol table.

#ifndef SYMBOL_H
#define SYMBOL_H

#include "utils.h"

typedef short SYMBOL_ID;

#define NO_SYM (-1)

typedef short SEGNO;
typedef short GROUPNO;

enum symbol_type { SYM_RELATIVE, SYM_ABSOLUTE, SYM_SECTION };

enum defined_status { UNDEFINED = FALSE, DEFINED = TRUE };

enum section_type { ST_UNKNOWN, ST_SEGMENT, ST_GROUP };

enum scope { PRIVATE, PUBLIC };

typedef struct {
  char* name;
  BYTE type;
  BYTE defined;
  union {
    struct {
      DWORD val;
      SEGNO seg;
      SYMBOL_ID external_id;
      unsigned char public;
      unsigned char data_size;
    } rel;
    struct {
      long val;
    } abs;
    struct section {
      short type;
      short ord;
    } sec;
  } u;
} SYMBOL;

typedef struct {
  SYMBOL* * sym;
  unsigned allocated;
  unsigned used;
  SYMBOL_ID next_external_id;
} SYMTAB;

SYMTAB* new_symbol_table(void);
void delete_symbol_table(SYMTAB*);

unsigned sym_count(SYMTAB*);
SYMBOL* get_sym(SYMTAB*, int id);
SYMBOL* sym_lookup(SYMTAB*, const char* name);
SYMBOL* sym_insert_relative(SYMTAB*, const char* name);
SYMBOL* sym_insert_absolute(SYMTAB*, const char* name);
SYMBOL* sym_insert_section(SYMTAB*, const char* name);

SYMBOL* sym_insert_external(SYMTAB*, const char* name, SEGNO);

const char* sym_name(const SYMBOL*);
int sym_type(const SYMBOL*);
BOOL sym_defined(const SYMBOL*);

void sym_define_relative(SYMBOL*, int seg, unsigned data_size, DWORD val);
DWORD sym_relative_value(const SYMBOL*);
SEGNO sym_seg(const SYMBOL*);
void sym_set_public(SYMBOL*);
BOOL sym_public(const SYMBOL*);
BOOL sym_external(const SYMBOL*);
int sym_external_id(const SYMBOL*);
unsigned sym_data_size(const SYMBOL*);
void sym_set_data_size(SYMBOL*, unsigned data_size);

void sym_define_absolute(SYMBOL*, long val);
long sym_absolute_value(const SYMBOL*);

void sym_define_section(SYMBOL*, int type, int ordinal);
int sym_section_type(const SYMBOL*);
int sym_section_ordinal(const SYMBOL*);

int sym_begin(SYMTAB*);
int sym_end(SYMTAB*);
int sym_next(SYMTAB*, int id);

#endif // SYMBOL_H
