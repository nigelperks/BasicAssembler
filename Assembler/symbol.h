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
  unsigned char type;
  unsigned char defined;
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
  SYMBOL* sym;
  unsigned allocated;
  unsigned used;
  SYMBOL_ID next_external_id;
} SYMTAB;

SYMTAB* new_symbol_table(void);
void delete_symbol_table(SYMTAB*);

unsigned sym_count(SYMTAB*);
SYMBOL* get_sym(SYMTAB*, int id);
int sym_lookup(SYMTAB*, const char* name);
int sym_insert_relative(SYMTAB*, const char* name);
int sym_insert_absolute(SYMTAB*, const char* name);
int sym_insert_section(SYMTAB*, const char* name);

SYMBOL_ID sym_insert_external(SYMTAB*, const char* name, SEGNO);

const char* sym_name(SYMTAB*, int id);
int sym_type(SYMTAB*, int id);
BOOL sym_defined(SYMTAB*, int id);

void sym_define_relative(SYMTAB*, int id, int seg, unsigned data_size, DWORD val);
DWORD sym_relative_value(SYMTAB*, int id);
SEGNO sym_seg(SYMTAB*, int id);
void sym_set_public(SYMTAB*, int id);
BOOL sym_public(SYMTAB*, int id);
BOOL sym_external(SYMTAB*, int id);
int sym_external_id(SYMTAB*, int id);
unsigned sym_data_size(SYMTAB*, int id);
void sym_set_data_size(SYMTAB*, int id, unsigned data_size);

void sym_define_absolute(SYMTAB*, int id, long val);
long sym_absolute_value(SYMTAB*, int id);

void sym_define_section(SYMTAB*, int id, int type, int ordinal);
int sym_section_type(SYMTAB*, int id);
int sym_section_ordinal(SYMTAB*, int id);

int sym_begin(SYMTAB*);
int sym_end(SYMTAB*);
int sym_next(SYMTAB*, int id);

#endif // SYMBOL_H
