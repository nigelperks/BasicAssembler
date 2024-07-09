// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Assembler symbol table.

#ifndef SYMBOL_H
#define SYMBOL_H

#include <stdbool.h>
#include "utils.h"

typedef short SYMBOL_ID;

typedef short SEGNO;
typedef short GROUPNO;

enum symbol_type { SYM_UNKNOWN, SYM_RELATIVE, SYM_ABSOLUTE, SYM_SECTION };

enum defined_status { UNDEFINED = FALSE, DEFINED = TRUE };

enum section_type { ST_UNKNOWN, ST_SEGMENT, ST_GROUP };

enum scope { PRIVATE, PUBLIC };

typedef struct symbol {
  char* name;
  BYTE type;
  BYTE defined;
  unsigned lineno;
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
  struct symbol * next;  // next on hash list
} SYMBOL;

#define SYMBOL_HASH_SIZE (199)

typedef struct {
  SYMBOL* hash[SYMBOL_HASH_SIZE];
  unsigned locals;
  bool case_sensitive;
  SYMBOL* *externals;
  unsigned externals_size;
  unsigned externals_count;
} SYMTAB;

SYMTAB* new_symbol_table(bool case_sensitive);
void delete_symbol_table(SYMTAB*);

SYMBOL* sym_lookup(SYMTAB*, const char* name);
SYMBOL* sym_insert_unknown(SYMTAB*, const char* name, unsigned lineno);
SYMBOL* sym_insert_relative(SYMTAB*, const char* name, unsigned lineno);
SYMBOL* sym_insert_absolute(SYMTAB*, const char* name, unsigned lineno);
SYMBOL* sym_insert_section(SYMTAB*, const char* name, unsigned lineno);

SYMBOL* sym_insert_external(SYMTAB*, const char* name, SEGNO, unsigned lineno);

SYMBOL* sym_insert_local(SYMTAB*, unsigned lineno);

void sym_init_relative(SYMBOL*);

const char* sym_name(const SYMBOL*);
int sym_type(const SYMBOL*);
BOOL sym_defined(const SYMBOL*);
unsigned sym_lineno(const SYMBOL*);

void sym_define_relative(SYMBOL*, int seg, DWORD val);
void sym_update_relative(SYMBOL*, int seg, DWORD val);
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

typedef struct {
  SYMTAB* st;
  unsigned h;
  SYMBOL* sym;
} SYM_FIND;

SYMBOL* sym_first(SYMTAB*, SYM_FIND*);
SYMBOL* sym_next(SYM_FIND*);

SYMBOL* sym_first_external(SYMTAB*, SYM_FIND*);
SYMBOL* sym_next_external(SYM_FIND*);

void report_sym_hash(const SYMTAB*);

#endif // SYMBOL_H
