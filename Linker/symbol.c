// Basic Linker
// Copyright (c) 2021 Nigel Perks
// Linker symbol table.

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "symbol.h"

SYMTAB* new_symbol_table(int case_sensitivity) {
  SYMTAB* st = emalloc(sizeof *st);
  st->symbols = NULL;
  st->msym = 0;
  st->nsym = 0;
  st->case_sensitivity = case_sensitivity;
  return st;
}

void delete_symbol_table(SYMTAB* st) {
  if (st) {
    for (SYMBOL_ID i = 0; i < st->nsym; i++)
      free(st->symbols[i].name);
    free(st);
  }
}

SYMBOL_ID sym_next_id(SYMTAB* st) {
  assert(st != NULL);
  return st->nsym;
}

SYMBOL_ID sym_count(const SYMTAB* st) {
  assert(st != NULL);
  return st->nsym;
}

SYMBOL* symbol(SYMTAB* st, SYMBOL_ID id) {
  assert(st != NULL);
  assert(id >= 0 && id < st->nsym);
  return st->symbols + id;
}

const SYMBOL* const_symbol(const SYMTAB* st, SYMBOL_ID id) {
  assert(st != NULL);
  assert(id >= 0 && id < st->nsym);
  return st->symbols + id;
}

const char* sym_name(SYMTAB* st, SYMBOL_ID id) {
  assert(st != NULL);
  assert(id >= 0 && id < st->nsym);
  return st->symbols[id].name;
}

BOOL sym_defined(SYMTAB* st, SYMBOL_ID id) {
  assert(st != NULL);
  assert(id >= 0 && id < (int) st->nsym);
  return st->symbols[id].defined;
}

SEGNO sym_seg(SYMTAB* st, SYMBOL_ID id) {
  assert(st != NULL);
  assert(id >= 0 && id < (int) st->nsym);
  return st->symbols[id].seg;
}

DWORD sym_offset(SYMTAB* st, SYMBOL_ID id) {
  assert(st != NULL);
  assert(id >= 0 && id < (int) st->nsym);
  return st->symbols[id].offset;
}

static SYMBOL_ID insert(SYMTAB* st, const char* name, BOOL defined, SEGNO segno, DWORD offset) {
  assert(st != NULL);
  assert(name != NULL);
  assert(segno != NO_SEG);
  assert(defined || offset == 0);

  assert(st->nsym <= st->msym);
  if (st->nsym == st->msym) {
    st->msym = st->msym ? 2 * st->msym : 32;
    st->symbols = erealloc(st->symbols, st->msym * sizeof st->symbols[0]);
  }

  assert(st->nsym < st->msym);
  st->symbols[st->nsym].name = estrdup(name);
  st->symbols[st->nsym].defined = defined;
  st->symbols[st->nsym].seg = segno;
  st->symbols[st->nsym].offset = offset;
  return st->nsym++;
}

SYMBOL_ID sym_insert_extern(SYMTAB* st, const char* name, SEGNO segno) {
  return insert(st, name, FALSE, segno, 0);
}

SYMBOL_ID sym_insert_public(SYMTAB* st, const char* name, SEGNO segno, WORD offset) {
  return insert(st, name, TRUE, segno, offset);
}

SYMBOL_ID sym_insert_copy(SYMTAB* dest, const SYMTAB* src, SYMBOL_ID src_id) {
  assert(dest != NULL);
  assert(src != NULL);
  assert(src_id < src->nsym);
  const SYMBOL* sym = src->symbols + src_id;
  return insert(dest, sym->name, sym->defined, sym->seg, sym->offset);
}

void sym_define(SYMTAB* st, SYMBOL_ID id, DWORD offset) {
  assert(st != NULL);
  assert(id >= 0 && id < st->nsym);
  SYMBOL* sym = st->symbols + id;
  assert(sym->defined == FALSE);
  assert(sym->seg != NO_SEG);
  sym->defined = TRUE;
  sym->offset = offset;
}

SYMBOL_ID sym_lookup(SYMTAB* st, const char* name) {
  assert(st != NULL);
  assert(name != NULL);
  int (*compare)(const char*, const char*) = st->case_sensitivity ? _stricmp : strcmp;
  for (SYMBOL_ID i = 0; i < st->nsym; i++) {
    if (compare(st->symbols[i].name, name) == 0)
      return i;
  }
  return NO_SYM;
}

#ifdef UNIT_TEST

#include "cutest.h"

static void test_new_symbol_table(CuTest* tc) {
  SYMTAB* st;

  st = new_symbol_table(CASE_INSENSITIVE);

  CuAssertPtrNotNull(tc, st);
  CuAssertPtrEquals(tc, NULL, st->symbols);
  CuAssertIntEquals(tc, 0, st->msym);
  CuAssertIntEquals(tc, 0, st->nsym);
  CuAssertIntEquals(tc, CASE_INSENSITIVE, st->case_sensitivity);

  CuAssertIntEquals(tc, 0, sym_next_id(st));
  CuAssertIntEquals(tc, 0, sym_count(st));

  delete_symbol_table(st);
}

static void test_insert(CuTest* tc) {
  SYMTAB* st = new_symbol_table(CASE_SENSITIVE);
  SYMBOL_ID id;

  id = sym_lookup(st, "FRED");
  CuAssertIntEquals(tc, NO_SYM, id);

  id = sym_insert_extern(st, "FRED", 1);
  CuAssertIntEquals(tc, 0, id);
  CuAssertPtrNotNull(tc, st->symbols);
  CuAssertIntEquals(tc, 1, st->nsym);
  CuAssertTrue(tc, st->msym >= 1);
  CuAssertStrEquals(tc, "FRED", st->symbols[0].name);
  CuAssertIntEquals(tc, FALSE, st->symbols[0].defined);
  CuAssertIntEquals(tc, 1, st->symbols[0].seg);
  CuAssertIntEquals(tc, 0, st->symbols[0].offset);

  CuAssertStrEquals(tc, "FRED", sym_name(st, id));
  CuAssertIntEquals(tc, FALSE, sym_defined(st, id));
  CuAssertIntEquals(tc, 1, sym_seg(st, id));
  CuAssertIntEquals(tc, 0, sym_offset(st, id));

  id = sym_lookup(st, "FRED");
  CuAssertIntEquals(tc, 0, id);

  id = sym_insert_public(st, "Scalar", 3, 0xDEAD);
  CuAssertIntEquals(tc, 1, id);
  CuAssertIntEquals(tc, 2, st->nsym);
  CuAssertStrEquals(tc, "Scalar", st->symbols[id].name);
  CuAssertIntEquals(tc, TRUE, st->symbols[id].defined);
  CuAssertIntEquals(tc, 3, st->symbols[id].seg);
  CuAssertIntEquals(tc, 0xDEAD, st->symbols[id].offset);

  CuAssertStrEquals(tc, "Scalar", sym_name(st, id));
  CuAssertIntEquals(tc, TRUE, sym_defined(st, id));
  CuAssertIntEquals(tc, 3, sym_seg(st, id));
  CuAssertIntEquals(tc, 0xDEAD, sym_offset(st, id));

  SYMTAB* st2 = new_symbol_table(CASE_INSENSITIVE);
  id = sym_insert_copy(st2, st, 1);
  CuAssertPtrNotNull(tc, st2->symbols);
  CuAssertIntEquals(tc, 1, st2->nsym);
  CuAssertTrue(tc, st2->msym >= 1);
  CuAssertIntEquals(tc, 0, id);
  CuAssertStrEquals(tc, "Scalar", st2->symbols[id].name);
  CuAssertIntEquals(tc, TRUE, st2->symbols[id].defined);
  CuAssertIntEquals(tc, 3, st2->symbols[id].seg);
  CuAssertIntEquals(tc, 0xDEAD, st2->symbols[id].offset);
  delete_symbol_table(st2);

  delete_symbol_table(st);
}

static void test_case_sensitive(CuTest* tc) {
  SYMTAB* st = new_symbol_table(CASE_SENSITIVE);

  CuAssertIntEquals(tc, NO_SYM, sym_lookup(st, "FRED"));
  CuAssertIntEquals(tc, NO_SYM, sym_lookup(st, "Fred"));

  sym_insert_extern(st, "FRED", 0);
  CuAssertIntEquals(tc, 0, sym_lookup(st, "FRED"));
  CuAssertIntEquals(tc, NO_SYM, sym_lookup(st, "Fred"));

  sym_insert_extern(st, "Fred", 0);
  CuAssertIntEquals(tc, 0, sym_lookup(st, "FRED"));
  CuAssertIntEquals(tc, 1, sym_lookup(st, "Fred"));

  delete_symbol_table(st);
}

static void test_case_insensitive(CuTest* tc) {
  SYMTAB* st = new_symbol_table(CASE_INSENSITIVE);

  CuAssertIntEquals(tc, NO_SYM, sym_lookup(st, "FRED"));
  CuAssertIntEquals(tc, NO_SYM, sym_lookup(st, "Fred"));

  sym_insert_extern(st, "FRED", 0);
  CuAssertIntEquals(tc, 0, sym_lookup(st, "FRED"));
  CuAssertIntEquals(tc, 0, sym_lookup(st, "Fred"));

  delete_symbol_table(st);
}

static void test_define(CuTest* tc) {
  SYMTAB* st = new_symbol_table(CASE_SENSITIVE);
  SYMBOL_ID id;

  id = sym_insert_extern(st, "FRED", 2);
  CuAssertIntEquals(tc, 0, id);
  CuAssertStrEquals(tc, "FRED", sym_name(st, id));
  CuAssertIntEquals(tc, FALSE, sym_defined(st, id));
  CuAssertIntEquals(tc, 2, sym_seg(st, id));
  CuAssertIntEquals(tc, 0, sym_offset(st, id));

  sym_define(st, id, 0x1234);
  CuAssertStrEquals(tc, "FRED", sym_name(st, id));
  CuAssertIntEquals(tc, TRUE, sym_defined(st, id));
  CuAssertIntEquals(tc, 2, sym_seg(st, id));
  CuAssertIntEquals(tc, 0x1234, sym_offset(st, id));

  delete_symbol_table(st);
}

CuSuite* symbol_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_symbol_table);
  SUITE_ADD_TEST(suite, test_insert);
  SUITE_ADD_TEST(suite, test_case_sensitive);
  SUITE_ADD_TEST(suite, test_case_insensitive);
  SUITE_ADD_TEST(suite, test_define);
  return suite;
}

#endif // UNIT_TEST