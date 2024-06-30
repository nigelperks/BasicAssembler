// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Intermediate file.

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "ifile.h"
#include "token.h"
#include "utils.h"

IFILE* new_ifile(SOURCE* src, bool case_sensitive) {
  IFILE* ifile = NULL;

  assert(src != NULL);

  ifile = emalloc(sizeof *ifile);

  ifile->source = src;
  ifile->recs = NULL;
  ifile->allocated = 0;
  ifile->used = 0;
  ifile->pos = 0;
  ifile->st = new_symbol_table(case_sensitive);
  ifile->start_label = NULL;
  ifile->provisional_sizes = FALSE;
  ifile->ngroup = 0;
  ifile->nseg = 0;
  ifile->model_group = NULL;
  ifile->codeseg = NULL;
  ifile->dataseg = NULL;
  ifile->udataseg = NULL;
  ifile->injections = new_source("(injections)");

  return ifile;
}

void delete_ifile(IFILE* ifile) {
  if (ifile) {
    efree(ifile->recs);
    delete_symbol_table(ifile->st);
    for (unsigned i = 0; i < ifile->nseg; i++)
      efree(ifile->segments[i].name);
    for (GROUPNO i = 0; i < ifile->ngroup; i++)
      efree(ifile->groups[i]);
    delete_source(ifile->injections);
    efree(ifile);
  }
}

static void init_irec(IREC* irec) {
  irec->si = 0;
  irec->label = NULL;
  irec->rep = TOK_NONE;
  irec->op = TOK_NONE;
  irec->operand_pos = 0;
  irec->near_jump_size = 0;
  irec->def = NULL;
  irec->size = 0;
}

static void ensure_slot(IFILE* ifile) {
  assert(ifile->used <= ifile->allocated);
  if (ifile->used == ifile->allocated) {
    unsigned new_allocated = ifile->allocated ? 2 * ifile->allocated : 128;
    if (new_allocated < ifile->allocated)
      fatal("too many intermediate records\n");
    ifile->allocated = new_allocated;
    ifile->recs = erealloc(ifile->recs, (sizeof ifile->recs[0]) * ifile->allocated);
  }
}

static void spread(IFILE* ifile, unsigned i) {
  assert(ifile != NULL);
  assert(ifile->used < ifile->allocated);
  for (unsigned j = ifile->used; j > i; j--)
    ifile->recs[j] = ifile->recs[j-1];
  ifile->used++;
  init_irec(&ifile->recs[i]);
}

IREC* new_irec(IFILE* ifile) {
  ensure_slot(ifile);
  assert(ifile->used < ifile->allocated);
  IREC* irec = &ifile->recs[ifile->used++];
  init_irec(irec);
  return irec;
}

IREC* insert_irec_after(IFILE* ifile, const IREC* p) {
  ptrdiff_t d = p - ifile->recs;
  unsigned long long i = d;
  if (d < 0 || i >= ifile->used || i > UINT_MAX || UINT_MAX - i < 1)
    fatal("internal error: insert_irec_after: position out of range\n");
  unsigned pos = (unsigned) i + 1;
  ensure_slot(ifile);
  spread(ifile, pos);
  return &ifile->recs[pos];
}

unsigned irec_count(IFILE* ifile) {
  assert(ifile != NULL);
  return ifile->used;
}

IREC* get_irec(IFILE* ifile, unsigned i) {
  assert(ifile != NULL);
  assert(i < ifile->used);
  return &ifile->recs[i];
}

const IREC* get_irec_const(const IFILE* ifile, unsigned i) {
  assert(ifile != NULL);
  assert(i < ifile->used);
  return &ifile->recs[i];
}

void print_intermediate(const IFILE* ifile, const char* descrip, unsigned options) {
  const IREC* irec = NULL;
  unsigned i;

  assert(ifile != NULL);
  assert(descrip != NULL);

  printf("\nINTERMEDIATE FILE: %s\n\n", descrip);

  printf("%-4s  ", "REC#");
  if (options & PRINT_SIZE)
    printf("%-4s  ", "SIZE");
  putchar('\n');

  for (i = 0, irec = ifile->recs; i < ifile->used; i++, irec++) {
    printf("%4u: ", i);
    if (options & PRINT_SIZE)
      printf("%4lu: ", (unsigned long) irec->size);
    if (options & PRINT_SOURCE_NAME) {
      printf("%s: ", source_name(ifile->source));
      printf("%4u: ", irec_lineno(ifile, irec));
    }
    printf("%s", irec_text(ifile, irec));
    putchar('\n');
  }

  putchar('\n');
}

unsigned group_count(const IFILE* ifile) {
  assert(ifile != NULL);
  return ifile->ngroup;
}

int create_group(IFILE* ifile, const char* name) {
  assert(ifile != NULL);
  assert(name != NULL);
  if (ifile->ngroup >= MAX_GROUP)
    fatal("too many groups\n");
  int group = ifile->ngroup++;
  ifile->groups[group] = estrdup(name);
  return group;
}

const char* group_name(const IFILE* ifile, GROUPNO group) {
  assert(ifile != NULL);
  assert(group < ifile->ngroup);
  return ifile->groups[group];
}

SEGNO segment_count(const IFILE* ifile) {
  assert(ifile != NULL);
  return ifile->nseg;
}

int create_segment(IFILE* ifile, const char* name) {
  assert(ifile != NULL);
  assert(name != NULL);
  if (ifile->nseg >= MAX_SEGMENT)
    fatal("too many segments\n");
  int seg = ifile->nseg++;
  ASM_SEGMENT* p = &ifile->segments[seg];
  p->name = estrdup(name);
  p->attr = 0;
  p->group = NO_GROUP;
  p->p2align = DEFAULT_SEGMENT_P2ALIGN;
  p->pc = 0;
  return seg;
}

const char* segment_name(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return ifile->segments[seg].name;
}

DWORD segment_pc(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return ifile->segments[seg].pc;
}

void set_segment_pc(IFILE* ifile, unsigned seg, DWORD pc) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ASM_SEGMENT* segment = &ifile->segments[seg];
  segment->pc = pc;
}

void inc_segment_pc(IFILE* ifile, unsigned seg, DWORD size) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ASM_SEGMENT* segment = &ifile->segments[seg];
  if ((DWORD)(-1) - segment->pc < size)
    fatal("PC too high\n");
  segment->pc += size;
}

GROUPNO segment_group(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return ifile->segments[seg].group;
}

void set_segment_group(IFILE* ifile, unsigned seg, GROUPNO group) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  assert(group == NO_GROUP || (group >= 0 && group < ifile->ngroup));
  ifile->segments[seg].group = group;
}

BOOL segment_public(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return (ifile->segments[seg].attr & ATTR_PUBLIC) != 0;
}

void set_segment_public(IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ifile->segments[seg].attr |= ATTR_PUBLIC;
}

BOOL relocatable_relative(const IFILE* ifile, const SYMBOL* sym) {
  assert(ifile != NULL);
  assert(ifile->st != NULL);
  assert(sym != NULL);
  if (sym_type(sym) == SYM_RELATIVE) {
    SEGNO segno = sym_seg(sym);
    if (segno >= 0 && segno < (SEGNO)ifile->nseg) {
      const ASM_SEGMENT* seg = &ifile->segments[segno];
      if ((seg->attr & ATTR_PUBLIC) || seg->group != NO_GROUP)
        return TRUE;
    }
  }
  return FALSE;
}

BOOL segment_stack(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return (ifile->segments[seg].attr & ATTR_STACK) != 0;
}

void set_segment_stack(IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ifile->segments[seg].attr |= ATTR_STACK;
}

BOOL segment_uninit(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return (ifile->segments[seg].attr & ATTR_UNINIT) != 0;
}

void set_segment_uninit(IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ifile->segments[seg].attr |= ATTR_UNINIT;
}

unsigned segment_attributes(const IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return ifile->segments[seg].attr;
}

void set_segment_attributes(IFILE* ifile, unsigned seg, unsigned attr) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ifile->segments[seg].attr = attr;
}

void reset_pc(IFILE* ifile) {
  assert(ifile != NULL);
  for (ASM_SEGMENT* seg = ifile->segments; seg < ifile->segments + ifile->nseg; seg++)
    seg->pc = 0;
}

void set_segment_p2align(IFILE* ifile, unsigned seg, unsigned align) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  ifile->segments[seg].p2align = (align > 12) ? 12 : align;
}

unsigned segment_p2align(IFILE* ifile, unsigned seg) {
  assert(ifile != NULL);
  assert(seg < ifile->nseg);
  return ifile->segments[seg].p2align;
}

unsigned inject(IFILE* ifile, unsigned lineno, const char* text) {
  assert(ifile != NULL);
  assert(ifile->injections != NULL);
  return append_source_line(ifile->injections, lineno, text);
}

unsigned inject_lineno(const IFILE* ifile, unsigned index) {
  assert(ifile != NULL);
  assert(ifile->injections != NULL);
  return source_lineno(ifile->injections, index);
}

const char* inject_text(const IFILE* ifile, unsigned index) {
  assert(ifile != NULL);
  assert(ifile->injections != NULL);
  return source_text(ifile->injections, index);
}

unsigned irec_lineno(const IFILE* ifile, const IREC* irec) {
  assert(irec != NULL);
  if (irec->si > 0)
    return source_lineno(ifile->source, irec->si - 1);
  if (irec->si < 0)
    return source_lineno(ifile->injections, -irec->si - 1);
  return 0;
}

const char* irec_text(const IFILE* ifile, const IREC* irec) {
  assert(irec != NULL);
  if (irec->si > 0)
    return source_text(ifile->source, irec->si - 1);
  if (irec->si < 0)
    return source_text(ifile->injections, -irec->si - 1);
  return "";
}

void set_source(IREC* irec, unsigned i) {
  assert(irec != NULL);
  assert((long)(i+1) > 0);
  irec->si = i+1;
}

void set_inject(IREC* irec, unsigned i) {
  assert(irec != NULL);
  assert((long)(i+1) > 0);
  irec->si = -(long)(i+1);
}

#ifdef UNIT_TEST

#include "CuTest.h"

static void test_new_ifile(CuTest* tc) {
  IFILE* ifile;
  SOURCE src;

  ifile = new_ifile(&src, false);
  CuAssertPtrNotNull(tc, ifile);
  CuAssertPtrEquals(tc, &src, ifile->source);
  CuAssertPtrEquals(tc, NULL, ifile->recs);
  CuAssertIntEquals(tc, 0, ifile->allocated);
  CuAssertIntEquals(tc, 0, ifile->used);
  CuAssertIntEquals(tc, 0, ifile->pos);
  CuAssertPtrNotNull(tc, ifile->st);
  CuAssertTrue(tc, ifile->start_label == NULL);
  CuAssertIntEquals(tc, FALSE, ifile->provisional_sizes);
  CuAssertIntEquals(tc, 0, ifile->ngroup);
  CuAssertIntEquals(tc, 0, ifile->nseg);
  CuAssertTrue(tc, ifile->model_group == NULL);
  CuAssertTrue(tc, ifile->codeseg == NULL);
  CuAssertTrue(tc, ifile->dataseg == NULL);
  CuAssertTrue(tc, ifile->udataseg == NULL);
  CuAssertIntEquals(tc, 0, irec_count(ifile));
  CuAssertPtrNotNull(tc, ifile->injections);

  delete_ifile(ifile);
}

static void test_new_irec(CuTest* tc) {
  SOURCE src;
  IFILE* ifile = new_ifile(&src, false);
  IREC* irec = NULL;

  irec = new_irec(ifile);

  CuAssertPtrNotNull(tc, irec);
  CuAssertIntEquals(tc, 0, irec->si);
  CuAssertPtrEquals(tc, NULL, irec->label);
  CuAssertIntEquals(tc, TOK_NONE, irec->rep);
  CuAssertIntEquals(tc, TOK_NONE, irec->op);
  CuAssertIntEquals(tc, 0, irec->operand_pos);
  CuAssertIntEquals(tc, 0, irec->near_jump_size);
  CuAssertTrue(tc, irec->def == NULL);
  CuAssertSizeEquals(tc, 0, irec->size);

  CuAssertPtrNotNull(tc, ifile->recs);
  CuAssertIntEquals(tc, 1, ifile->used);
  CuAssertIntEquals(tc, 128, ifile->allocated);
  CuAssertPtrEquals(tc, irec, ifile->recs + 0);
  CuAssertPtrEquals(tc, irec, get_irec(ifile, 0));

  irec = new_irec(ifile);
  CuAssertPtrNotNull(tc, irec);
  CuAssertIntEquals(tc, 0, irec->si);
  CuAssertPtrEquals(tc, NULL, irec->label);
  CuAssertSizeEquals(tc, 0, irec->size);
  CuAssertPtrNotNull(tc, ifile->recs);
  CuAssertIntEquals(tc, 2, ifile->used);
  CuAssertIntEquals(tc, 128, ifile->allocated);
  CuAssertPtrEquals(tc, irec, ifile->recs + 1);

  ifile->used = ifile->allocated;
  irec = new_irec(ifile);
  CuAssertPtrNotNull(tc, irec);
  CuAssertIntEquals(tc, 0, irec->si);
  CuAssertPtrNotNull(tc, ifile->recs);
  CuAssertIntEquals(tc, 129, ifile->used);
  CuAssertIntEquals(tc, 256, ifile->allocated);
  CuAssertPtrEquals(tc, irec, ifile->recs + 128);

  delete_ifile(ifile);
}

static void test_segments(CuTest* tc) {
  SOURCE src;
  IFILE* ifile = new_ifile(&src, false);

  CuAssertIntEquals(tc, 0, segment_count(ifile));
  CuAssertIntEquals(tc, 0, group_count(ifile));

  int seg0 = create_segment(ifile, "CODE");
  CuAssertIntEquals(tc, 0, seg0);
  CuAssertIntEquals(tc, 1, segment_count(ifile));
  CuAssertStrEquals(tc, "CODE", segment_name(ifile, seg0));
  CuAssertIntEquals(tc, 0, segment_attributes(ifile, seg0));
  CuAssertIntEquals(tc, FALSE, segment_public(ifile, seg0));
  CuAssertIntEquals(tc, FALSE, segment_stack(ifile, seg0));
  CuAssertIntEquals(tc, FALSE, segment_uninit(ifile, seg0));
  set_segment_public(ifile, seg0);
  CuAssertIntEquals(tc, TRUE, segment_public(ifile, seg0));
  CuAssertIntEquals(tc, ATTR_PUBLIC, segment_attributes(ifile, seg0));
  CuAssertIntEquals(tc, NO_GROUP, segment_group(ifile, seg0));
  CuAssertIntEquals(tc, 4, segment_p2align(ifile, seg0));
  CuAssertIntEquals(tc, 0, segment_pc(ifile, seg0));

  set_segment_pc(ifile, seg0, 0x213);
  CuAssertIntEquals(tc, 0x213, segment_pc(ifile, seg0));

  inc_segment_pc(ifile, seg0, 0x531);
  CuAssertIntEquals(tc, 0x744, segment_pc(ifile, seg0));

  int group0 = create_group(ifile, "DGROUP");
  CuAssertIntEquals(tc, 0, group0);
  CuAssertIntEquals(tc, 1, group_count(ifile));
  CuAssertStrEquals(tc, "DGROUP", group_name(ifile, group0));

  set_segment_group(ifile, seg0, group0);
  CuAssertIntEquals(tc, group0, segment_group(ifile, seg0));

  int seg1 = create_segment(ifile, "Loserville");
  CuAssertIntEquals(tc, 1, seg1);
  set_segment_pc(ifile, seg1, 0xdead);
  CuAssertIntEquals(tc, 0x744, segment_pc(ifile, seg0));
  CuAssertIntEquals(tc, 0xdead, segment_pc(ifile, seg1));
  reset_pc(ifile);
  CuAssertIntEquals(tc, 0, segment_pc(ifile, seg0));
  CuAssertIntEquals(tc, 0, segment_pc(ifile, seg1));
  set_segment_stack(ifile, seg1);
  CuAssertIntEquals(tc, TRUE, segment_stack(ifile, seg1));
  CuAssertIntEquals(tc, ATTR_STACK, segment_attributes(ifile, seg1));

  delete_ifile(ifile);
}

static void test_injections(CuTest* tc) {
  SOURCE* src = new_source(NULL);
  IFILE* ifile = new_ifile(src, false);

  unsigned i = inject(ifile, 3, "cobblers");
  CuAssertIntEquals(tc, 0, i);
  CuAssertIntEquals(tc, 3, inject_lineno(ifile, i));
  CuAssertStrEquals(tc, "cobblers", inject_text(ifile, i));

  unsigned j = inject(ifile, 7, "lemon zest");
  CuAssertIntEquals(tc, 1, j);
  CuAssertIntEquals(tc, 3, inject_lineno(ifile, i));
  CuAssertStrEquals(tc, "cobblers", inject_text(ifile, i));
  CuAssertIntEquals(tc, 7, inject_lineno(ifile, j));
  CuAssertStrEquals(tc, "lemon zest", inject_text(ifile, j));

  delete_ifile(ifile);
  delete_source(src);
}

CuSuite* ifile_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_ifile);
  SUITE_ADD_TEST(suite, test_new_irec);
  SUITE_ADD_TEST(suite, test_segments);
  SUITE_ADD_TEST(suite, test_injections);
  return suite;
}

#endif // UNIT_TEST
