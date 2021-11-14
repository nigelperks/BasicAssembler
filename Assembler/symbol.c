// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Assembler symbol table.

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "symbol.h"

#define NO_SEG (-1)

SYMTAB* new_symbol_table(void) {
  SYMTAB* st = emalloc(sizeof *st);
  st->sym = NULL;
  st->allocated = 0;
  st->used = 0;
  st->next_external_id = 0;
  return st;
}

void delete_symbol_table(SYMTAB* st) {
  if (st) {
    free(st->sym);
    free(st);
  }
}

unsigned sym_count(SYMTAB* st) {
  assert(st != NULL);
  return st->used;
}

SYMBOL* get_sym(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  return &st->sym[id];
}

int sym_lookup(SYMTAB* st, const char* name) {
  unsigned i;
  assert(st != NULL);
  assert(name != NULL);
  for (i = 0; i < st->used; i++) {
    if (_stricmp(st->sym[i].name, name) == 0)
      return i;
  }
  return NO_SYM;
}

static int insert(SYMTAB* st, const char* name, int type) {
  assert(st != NULL);
  assert(name != NULL);

  assert(st->used <= st->allocated);
  if (st->used == st->allocated) {
    st->allocated = st->allocated ? 2 * st->allocated : 64;
    st->sym = realloc(st->sym, st->allocated * sizeof st->sym[0]);
    if (st->sym == NULL)
      fatal("out of memory for symbol table\n");
  }

  assert(st->used < st->allocated);
  int id = st->used++;
  st->sym[id].name = estrdup(name);
  st->sym[id].type = type;
  st->sym[id].defined = UNDEFINED;
  return id;
}

int sym_insert_relative(SYMTAB* st, const char* name) {
  int id = insert(st, name, SYM_RELATIVE);
  st->sym[id].u.rel.val = 0;
  st->sym[id].u.rel.seg = NO_SEG;
  st->sym[id].u.rel.public = PRIVATE;
  st->sym[id].u.rel.external_id = -1;
  st->sym[id].u.rel.data_size = 0;
  return id;
}

SYMBOL_ID sym_insert_external(SYMTAB* st, const char* name, SEGNO seg) {
  assert(st != NULL);
  assert(name != NULL);
  assert(seg != NO_SEG);

  int id = insert(st, name, SYM_RELATIVE);
  st->sym[id].defined = DEFINED;
  st->sym[id].u.rel.val = 0;
  st->sym[id].u.rel.seg = seg;
  st->sym[id].u.rel.public = PRIVATE;
  st->sym[id].u.rel.external_id = st->next_external_id++;
  assert(st->sym[id].u.rel.external_id >= 0);
  st->sym[id].u.rel.data_size = 0;
  return id;
}

int sym_insert_absolute(SYMTAB* st, const char* name) {
  return insert(st, name, SYM_ABSOLUTE);
}

int sym_insert_section(SYMTAB* st, const char* name) {
  int id = insert(st, name, SYM_SECTION);
  st->sym[id].u.sec.type = ST_UNKNOWN;
  st->sym[id].u.sec.ord = 0;
  return id;
}

const char* sym_name(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  return st->sym[id].name;
}

int sym_type(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  return st->sym[id].type;
}

BOOL sym_defined(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  return st->sym[id].defined;
}

void sym_define_relative(SYMTAB* st, int id, int seg, unsigned data_size, DWORD val) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  SYMBOL* sym = st->sym + id;
  assert(sym->type == SYM_RELATIVE);
  assert(data_size == 0 || data_size == 1 || data_size == 2 || data_size == 4 ||
         data_size == 8 || data_size == 10);

  if (sym->u.rel.data_size != 0 && data_size != sym->u.rel.data_size)
    fatal("resizing %s data size from %u to %u\n", sym->name, sym->u.rel.data_size, data_size);

  if (sym->u.rel.seg == NO_SEG) {
    assert(sym->defined == FALSE);
    sym->defined = TRUE;
    sym->u.rel.seg = seg;
  }
  else {
    assert(sym->defined == TRUE);
    assert(sym->u.rel.seg == seg);
  }
  sym->u.rel.val = val;
  sym->u.rel.data_size = data_size;
}

DWORD sym_relative_value(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_RELATIVE);
  return st->sym[id].u.rel.val;
}

SEGNO sym_seg(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_RELATIVE);
  return st->sym[id].u.rel.seg;
}

void sym_set_public(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_RELATIVE);
  st->sym[id].u.rel.public = PUBLIC;
}

BOOL sym_public(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);

  return st->sym[id].type == SYM_RELATIVE && st->sym[id].u.rel.public == PUBLIC;
}

BOOL sym_external(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);

  return (st->sym[id].type == SYM_RELATIVE) && (st->sym[id].u.rel.external_id >= 0);
}

int sym_external_id(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_RELATIVE && st->sym[id].u.rel.external_id >= 0);
  return st->sym[id].u.rel.external_id;
}

unsigned sym_data_size(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_RELATIVE);
  return st->sym[id].u.rel.data_size;
}

void sym_set_data_size(SYMTAB* st, int id, unsigned data_size) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_RELATIVE);
  assert(st->sym[id].u.rel.data_size == 0 || st->sym[id].u.rel.data_size == data_size);
  st->sym[id].u.rel.data_size = data_size;
}

void sym_define_absolute(SYMTAB* st, int id, long val) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_ABSOLUTE);
  st->sym[id].u.abs.val = val;
  st->sym[id].defined = TRUE;
}

long sym_absolute_value(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_ABSOLUTE);
  return st->sym[id].u.abs.val;
}

int sym_section_type(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_SECTION);
  return st->sym[id].u.sec.type;
}

int sym_section_ordinal(SYMTAB* st, int id) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_SECTION);
  return st->sym[id].u.sec.ord;
}

void sym_define_section(SYMTAB* st, int id, int type, int ord) {
  assert(st != NULL);
  assert(id >= 0 && (unsigned)id < st->used);
  assert(st->sym[id].type == SYM_SECTION);
  assert(type == ST_SEGMENT || type == ST_GROUP);
  assert(ord >= 0);
  st->sym[id].u.sec.type = type;
  st->sym[id].u.sec.ord = ord;
  st->sym[id].defined = TRUE;
}

int sym_begin(SYMTAB* st) {
  return 0;
}

int sym_end(SYMTAB* st) {
  return st->used;
}

int sym_next(SYMTAB* st, int id) {
  return id + 1;
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_new_symbol_table(CuTest* tc) {
  SYMTAB* st;

  st = new_symbol_table();
  CuAssertPtrNotNull(tc, st);
  CuAssertPtrEquals(tc, NULL, st->sym);
  CuAssertIntEquals(tc, 0, st->allocated);
  CuAssertIntEquals(tc, 0, st->used);
  CuAssertIntEquals(tc, 0, st->next_external_id);

  delete_symbol_table(st);
}

static void test_sym_lookup(CuTest* tc) {
  SYMTAB* st = new_symbol_table();

  CuAssertIntEquals(tc, NO_SYM, sym_lookup(st, "Fred"));
  CuAssertIntEquals(tc, 0, sym_insert_relative(st, "Fred"));
  CuAssertIntEquals(tc, 0, sym_lookup(st, "Fred"));
  CuAssertIntEquals(tc, 1, sym_insert_relative(st, "Fred"));
  CuAssertIntEquals(tc, 0, sym_lookup(st, "Fred"));
  CuAssertIntEquals(tc, 2, sym_insert_relative(st, "Berk_radish"));
  CuAssertIntEquals(tc, 2, sym_lookup(st, "Berk_radish"));
  CuAssertIntEquals(tc, 3, st->used);
  CuAssertIntEquals(tc, 64, st->allocated);

  CuAssertPtrEquals(tc, st->sym + 0, get_sym(st, 0));
  CuAssertPtrEquals(tc, st->sym + 1, get_sym(st, 1));
  CuAssertPtrEquals(tc, st->sym + 2, get_sym(st, 2));

  CuAssertStrEquals(tc, "Fred", sym_name(st, 0));
  CuAssertIntEquals(tc, SYM_RELATIVE, sym_type(st, 0));
  CuAssertIntEquals(tc, UNDEFINED, sym_defined(st, 0));
  CuAssertIntEquals(tc, FALSE, st->sym[0].defined);
  CuAssertIntEquals(tc, 0, st->sym[0].u.rel.val);
  CuAssertIntEquals(tc, 0, st->sym[0].u.rel.data_size);

  CuAssertStrEquals(tc, "Fred", sym_name(st, 1));
  CuAssertIntEquals(tc, SYM_RELATIVE, sym_type(st, 1));
  CuAssertIntEquals(tc, UNDEFINED, sym_defined(st, 1));
  CuAssertIntEquals(tc, FALSE, st->sym[1].defined);
  CuAssertIntEquals(tc, 0, st->sym[1].u.rel.val);

  CuAssertStrEquals(tc, "Berk_radish", sym_name(st, 2));
  CuAssertIntEquals(tc, SYM_RELATIVE, sym_type(st, 2));
  CuAssertIntEquals(tc, 0, st->sym[2].u.rel.val);
  sym_define_relative(st, 2, 3, 2, -1);
  CuAssertIntEquals(tc, DEFINED, sym_defined(st, 2));
  CuAssertIntEquals(tc, -1, st->sym[2].u.rel.val);
  CuAssertIntEquals(tc, 3, st->sym[2].u.rel.seg);
  CuAssertIntEquals(tc, -1, sym_relative_value(st, 2));
  CuAssertIntEquals(tc, PRIVATE, st->sym[2].u.rel.public);
  CuAssertIntEquals(tc, 2, st->sym[2].u.rel.data_size);
  sym_set_public(st, 2);
  CuAssertIntEquals(tc, PUBLIC, st->sym[2].u.rel.public);
  CuAssertIntEquals(tc, TRUE, sym_public(st, 2));
  CuAssertIntEquals(tc, -1, st->sym[2].u.rel.external_id);

  CuAssertIntEquals(tc, 0, sym_begin(st));
  CuAssertIntEquals(tc, 3, sym_end(st));

  delete_symbol_table(st);
}

static void test_grow_table(CuTest* tc) {
  SYMTAB* st = new_symbol_table();
  unsigned i;

  sym_insert_relative(st, "Toad");
  CuAssertIntEquals(tc, 64, st->allocated);
  sym_insert_relative(st, "Cowslip");
  for (i = 2; i < 64; i++)
    sym_insert_relative(st, "dummy");
  CuAssertIntEquals(tc, 64, st->allocated);
  CuAssertIntEquals(tc, 64, st->used);

  CuAssertIntEquals(tc, 64, sym_insert_relative(st, "Froggy"));
  CuAssertIntEquals(tc, 128, st->allocated);
  CuAssertIntEquals(tc, 65, st->used);

  CuAssertPtrEquals(tc, st->sym + 0, get_sym(st, 0));
  CuAssertPtrEquals(tc, st->sym + 1, get_sym(st, 1));
  CuAssertPtrEquals(tc, st->sym + 64, get_sym(st, 64));

  CuAssertStrEquals(tc, "Toad", sym_name(st, 0));
  CuAssertStrEquals(tc, "Cowslip", sym_name(st, 1));
  CuAssertStrEquals(tc, "Froggy", sym_name(st, 64));

  delete_symbol_table(st);
}

static void test_external_id(CuTest* tc) {
  SYMTAB* st;
  int id;

  st = new_symbol_table();
  CuAssertIntEquals(tc, 0, st->next_external_id);

  id = sym_insert_relative(st, "Kong");
  CuAssertIntEquals(tc, 0, st->next_external_id);
  CuAssertIntEquals(tc, FALSE, sym_external(st, id));

  id = sym_insert_external(st, "Fred", 0);
  CuAssertIntEquals(tc, 1, st->next_external_id);
  CuAssertIntEquals(tc, TRUE, sym_external(st, id));
  CuAssertIntEquals(tc, 0, sym_external_id(st, id));
  CuAssertIntEquals(tc, 0, sym_seg(st, id));
  CuAssertIntEquals(tc, 0, sym_data_size(st, id));
  sym_set_data_size(st, id, 2);
  CuAssertIntEquals(tc, 2, sym_data_size(st, id));

  id = sym_insert_external(st, "Mucky", 1);
  CuAssertIntEquals(tc, 2, st->next_external_id);
  CuAssertIntEquals(tc, TRUE, sym_external(st, id));
  CuAssertIntEquals(tc, 1, sym_external_id(st, id));
  CuAssertIntEquals(tc, 1, sym_seg(st, id));
  CuAssertIntEquals(tc, 0, sym_data_size(st, id));

  delete_symbol_table(st);
}

CuSuite* symbol_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_symbol_table);
  SUITE_ADD_TEST(suite, test_sym_lookup);
  SUITE_ADD_TEST(suite, test_grow_table);
  SUITE_ADD_TEST(suite, test_external_id);
  return suite;
}

#endif // UNIT_TEST
