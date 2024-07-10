// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// Linker symbol table.

#ifndef SYMBOL_H
#define SYMBOL_H

#include "utils.h"

// Linker symbol table

typedef short SYMBOL_ID;
typedef short SEGNO;
typedef short GROUPNO;

#define NO_SYM (-1)
#define NO_SEG (-1)
#define NO_GROUP (-1)

// Linker symbols are relative (address) labels, not absolute (EQU) definitions.
typedef struct {
  char* name;
  DWORD offset; // symbol value, offset in its segment
  SEGNO seg; // segment in which the symbol is a label
  BOOL defined; // whether defined; if not, external to be resolved
} SYMBOL;

typedef struct {
  SYMBOL* symbols;
  SYMBOL_ID msym;
  SYMBOL_ID nsym;
  unsigned char case_sensitivity;
} SYMTAB;

enum case_sensitivity { CASE_SENSITIVE, CASE_INSENSITIVE };

SYMTAB* new_symbol_table(int case_sensitivity);
void delete_symbol_table(SYMTAB*);

SYMBOL_ID sym_count(const SYMTAB*);
SYMBOL* symbol(SYMTAB*, SYMBOL_ID);
const SYMBOL* const_symbol(const SYMTAB* st, SYMBOL_ID);

SYMBOL_ID sym_next_id(SYMTAB*);
SYMBOL_ID sym_insert_extern(SYMTAB*, const char* name, SEGNO);
SYMBOL_ID sym_insert_public(SYMTAB*, const char* name, SEGNO, WORD offset);
SYMBOL_ID sym_insert_copy(SYMTAB*, const SYMTAB*, SYMBOL_ID);
SYMBOL_ID sym_lookup(SYMTAB*, const char* name);

void sym_define(SYMTAB*, SYMBOL_ID, DWORD offset);

const char* sym_name(SYMTAB*, SYMBOL_ID);
SEGNO sym_seg(SYMTAB*, SYMBOL_ID);
BOOL sym_defined(SYMTAB*, SYMBOL_ID);
DWORD sym_offset(SYMTAB*, SYMBOL_ID);

#endif // SYMBOL_H