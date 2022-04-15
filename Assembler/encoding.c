// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Encoding pass: generate code and data.
// On entry all labels must be resolved already.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <assert.h>
#include <limits.h>
#include "encoding.h"
#include "ifile.h"
#include "lexer.h"
#include "token.h"
#include "symbol.h"
#include "instable.h"
#include "operand.h"
#include "parse.h"
#include "common.h"
#include "options.h"
#include "object.h"

static void emit_groups(IFILE*, OFILE*);
static void emit_segments(IFILE*, OFILE*);
static void emit_externals(SYMTAB*, OFILE*);
static void emit_publics(SYMTAB*, OFILE*);
static void process_irec(STATE*, IFILE*, LEX*, OFILE*);
static void emit_start(IFILE*, OFILE*);

OFILE* encoding_pass(IFILE* ifile, const Options* options) {
  if (options->quiet == FALSE)
    puts("Encoding pass");

  STATE state;
  init_state(&state, options->max_errors);

  reset_pc(ifile);

  OFILE* ofile = new_ofile();
  emit_groups(ifile, ofile);
  emit_segments(ifile, ofile);
  emit_externals(ifile->st, ofile);
  emit_publics(ifile->st, ofile);

  LEX* lex = new_lex(ifile->source);
  for (ifile->pos = 0; ifile->pos < irec_count(ifile); ifile->pos++)
    process_irec(&state, ifile, lex, ofile);

  if (ifile->start_label != NO_SYM)
    emit_start(ifile, ofile);

  delete_lex(lex);

  if (state.errors > 0) {
    fprintf(stderr, "Errors: %u\n", state.errors);
    exit(EXIT_FAILURE);
  }

  return ofile;
}

static void emit_segno(OFILE* ofile, SEGNO segno) {
  assert(segno >= 0);
  if (segno > 0xff)
    fatal("cannot emit segment number > 255\n");
  emit_object_byte(ofile, OBJ_SEGNO, (BYTE)segno);
}

static void emit_groupno(OFILE* ofile, GROUPNO group) {
  assert(group >= 0);
  if (group > 0xff)
    fatal("cannot emit group number beyond 255\n");
  emit_object_byte(ofile, OBJ_GROUPNO, (BYTE) group);
}

static void emit_start(IFILE* ifile, OFILE* ofile) {
  assert(ifile != NULL);
  assert(ifile->start_label != NO_SYM);
  assert(sym_type(ifile->st, ifile->start_label) == SYM_RELATIVE &&
         sym_defined(ifile->st, ifile->start_label) &&
         !sym_external(ifile->st, ifile->start_label));
  assert(ofile != NULL);

  emit_object_signal(ofile, OBJ_BEGIN_START);

  emit_segno(ofile, sym_seg(ifile->st, ifile->start_label));

  DWORD offset = sym_relative_value(ifile->st, ifile->start_label);
  if (offset > (WORD)(-1))
    fatal("cannot emit offset beyond 64K\n");
  emit_object_word(ofile, OBJ_OFFSET, (WORD) offset);

  emit_object_signal(ofile, OBJ_END_START);
}

static void emit_segment(IFILE*, SEGNO, OFILE*);
static void emit_group(GROUPNO, const char* name, OFILE*);

static void emit_segments(IFILE* ifile, OFILE* ofile) {
  for (SEGNO i = 0; i < segment_count(ifile); i++)
    emit_segment(ifile, i, ofile);
}

static void emit_groups(IFILE* ifile, OFILE* ofile) {
  for (unsigned i = 0; i < group_count(ifile); i++)
    emit_group(i, group_name(ifile, i), ofile);
}

static void emit_segment(IFILE* ifile, SEGNO segno, OFILE* ofile) {
  assert(ifile != NULL);
  assert(segno >= 0 && segno < segment_count(ifile));
  assert(ofile != NULL);

  emit_object_signal(ofile, OBJ_BEGIN_SEGMENT);

  assert(segno >= 0);
  if (segno > 0xff)
    fatal("cannot emit segment number beyond 255\n");
  emit_object_byte(ofile, OBJ_ORDINAL, (BYTE) segno);

  const char* name = segment_name(ifile, segno);
  emit_object_data(ofile, OBJ_NAME, name, strlen(name));

  if (segment_public(ifile, segno))
    emit_object_signal(ofile, OBJ_PUBLIC);

  if (segment_stack(ifile, segno))
    emit_object_signal(ofile, OBJ_STACK);

  GROUPNO group = segment_group(ifile, segno);
  if (group != NO_GROUP)
    emit_groupno(ofile, group);

  emit_object_signal(ofile, OBJ_END_SEGMENT);
}

static void emit_group(GROUPNO groupno, const char* name, OFILE* ofile) {
  assert(groupno >= 0);
  assert(name != NULL);
  assert(ofile != NULL);

  emit_object_signal(ofile, OBJ_BEGIN_GROUP);

  if (groupno > 0xff)
    fatal("cannot emit group number beyond 255\n");
  emit_object_byte(ofile, OBJ_ORDINAL, (BYTE) groupno);

  emit_object_data(ofile, OBJ_NAME, name, strlen(name));

  emit_object_signal(ofile, OBJ_END_GROUP);
}

static void emit_external(SYMTAB*, SYMBOL_ID, OFILE*);

static void emit_externals(SYMTAB* st, OFILE* ofile) {
  for (int id = sym_begin(st); id != sym_end(st); id = sym_next(st, id)) {
    if (sym_external(st, id))
      emit_external(st, id, ofile);
  }
}

static void emit_external(SYMTAB* st, SYMBOL_ID sym_id, OFILE* ofile) {
  assert(sym_external(st, sym_id));

  emit_object_signal(ofile, OBJ_BEGIN_EXTRN_DEF);

  SYMBOL_ID ext_id = sym_external_id(st, sym_id);
  assert(ext_id >= 0);
  if (ext_id > (WORD)(-1))
    fatal("cannot emit external symbol ID beyond 64K\n");
  emit_object_word(ofile, OBJ_ID, ext_id);

  emit_object_data(ofile, OBJ_NAME, sym_name(st, sym_id), strlen(sym_name(st, sym_id)));

  emit_segno(ofile, sym_seg(st, sym_id));

  emit_object_signal(ofile, OBJ_END_EXTRN_DEF);
}

static void emit_public(SYMTAB*, int id, OFILE*);

static void emit_publics(SYMTAB* st, OFILE* ofile) {
  for (int id = sym_begin(st); id != sym_end(st); id = sym_next(st, id)) {
    if (sym_public(st, id))
      emit_public(st, id, ofile);
  }
}

static void emit_public(SYMTAB* st, int id, OFILE* ofile) {
  assert(sym_public(st, id));
  assert(sym_type(st, id) == SYM_RELATIVE);
  assert(!sym_external(st, id));
  assert(sym_defined(st, id));

  emit_object_signal(ofile, OBJ_BEGIN_PUBLIC);

  emit_object_data(ofile, OBJ_NAME, sym_name(st, id), strlen(sym_name(st, id)));

  emit_segno(ofile, sym_seg(st, id));

  DWORD offset = sym_relative_value(st, id);
  if (offset > (WORD)(-1))
    fatal("cannot emit offset beyond 64K\n");
  emit_object_word(ofile, OBJ_OFFSET, (WORD) offset);

  emit_object_signal(ofile, OBJ_END_PUBLIC);
}

static void perform_directive(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void process_instruction(STATE*, IFILE*, IREC*, LEX*, OFILE*);

static void process_irec(STATE* state, IFILE* ifile, LEX* lex, OFILE* ofile) {
  IREC* irec = get_irec(ifile, ifile->pos);

  lex_begin(lex, irec->source, irec->operand_pos);

  if (token_is_directive(irec->op))
    perform_directive(state, ifile, irec, lex, ofile);
  else if (token_is_opcode(irec->op))
    process_instruction(state, ifile, irec, lex, ofile);
  else
    assert(irec->op == TOK_NONE);

  if (lex_token(lex) != TOK_EOL)
    error2(state, lex, "extra on line: %s", token_name(lex_token(lex)));
}

static void do_assume(STATE*, IFILE*, IREC*, LEX*);
static void do_end(STATE*, IFILE*, IREC*, LEX*);
static void do_ends(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_extrn(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_org(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_public(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_segment(STATE*, IFILE*, IREC*, LEX*, OFILE*);

static void define_bytes(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void define_words(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void define_dwords(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void define_qwords(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void define_tbytes(STATE*, IFILE*, IREC*, LEX*, OFILE*);

static void perform_directive(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(token_is_directive(irec->op));

  switch (irec->op) {
    case TOK_IDEAL: break;
    case TOK_ASSUME: do_assume(state, ifile, irec, lex); break;
    case TOK_DB: define_bytes(state, ifile, irec, lex, ofile); break;
    case TOK_DW: define_words(state, ifile, irec, lex, ofile); break;
    case TOK_DD: define_dwords(state, ifile, irec, lex, ofile); break;
    case TOK_DQ: define_qwords(state, ifile, irec, lex, ofile); break;
    case TOK_DT: define_tbytes(state, ifile, irec, lex, ofile); break;
    case TOK_END: do_end(state, ifile, irec, lex); break;
    case TOK_ENDS: do_ends(state, ifile, irec, lex, ofile); break;
    case TOK_EQU: lex_discard_line(lex); break; // already handled
    case TOK_EXTRN: do_extrn(state, ifile, irec, lex, ofile); break;
    case TOK_GROUP: lex_discard_line(lex); break; // already handled
    case TOK_ORG: do_org(state, ifile, irec, lex, ofile); break;
    case TOK_PUBLIC: do_public(state, ifile, irec, lex, ofile); break;
    case TOK_SEGMENT: do_segment(state, ifile, irec, lex, ofile); break;
    default:
      error(state, ifile, "directive not implemented: %s", token_name(irec->op));
  }
}

static void do_equ(STATE* state, IFILE* ifile, LEX* lex) {
  IREC* irec = get_irec(ifile, ifile->pos);

  assert(lex_token(lex) == TOK_EQU);

  if (irec->label == NO_SYM)
    error2(state, lex, "EQU without label");
  else if (sym_type(ifile->st, irec->label) != SYM_ABSOLUTE)
    error2(state, lex, "phase error: non-EQU name: %s", sym_name(ifile->st, irec->label));
  else if (!sym_defined(ifile->st, irec->label))
    error2(state, lex, "phase error: undefined: %s", sym_name(ifile->st, irec->label));
  else if (lex_next(lex) != TOK_NUM)
    error2(state, lex, "only numeric EQU is supported");
  else if (sym_absolute_value(ifile->st, irec->label) != lex_val(lex))
    error2(state, lex, "phase error: EQU value has changed");
  else
    lex_next(lex);
}

static void do_end(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->op == TOK_END);
  assert(lex != NULL);

  if (lex_token(lex) == TOK_LABEL)
    // start label set in pass 1
    lex_next(lex);
}

static void do_segment(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->op == TOK_SEGMENT);
  assert(lex != NULL);

  if (lex_token(lex) != TOK_LABEL) {
    error2(state, lex, "segment name expected");
    return;
  }

  if (state->curseg != NO_SEG)
    error2(state, lex, "segment %s is already open", segment_name(ifile, state->curseg));

  int id = sym_lookup(ifile->st, lex_lexeme(lex));
  if (id == NO_SYM ||
      sym_type(ifile->st, id) != SYM_SECTION ||
      sym_section_type(ifile->st, id) != ST_SEGMENT) {
    error2(state, lex, "segment name expected: %s", lex_lexeme(lex));
    exit(EXIT_FAILURE);
  }

  state->curseg = sym_section_ordinal(ifile->st, id);
  assert(state->curseg >= 0);
  if (state->curseg > 0xff)
    fatal("cannot emit segment number > 255\n");
  emit_object_byte(ofile, OBJ_OPEN_SEGMENT, (BYTE) state->curseg);

  int attr = lex_next(lex);
  if (attr == TOK_PRIVATE || attr == TOK_PUBLIC || attr == TOK_STACK)
    lex_next(lex);
}

static void do_ends(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(state->curseg >= 0 && state->curseg < 0x100);

  emit_object_byte(ofile, OBJ_CLOSE_SEGMENT, (BYTE) state->curseg);
  perform_ends(state, ifile, lex);
}

static void do_org(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->op == TOK_ORG);
  assert(lex != NULL);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "ORG outside segment");
    return;
  }

  if (lex_token(lex) != TOK_NUM) {
    error(state, ifile, "numeric literal origin required");
    return;
  }

  unsigned long val = lex_val(lex);
  set_segment_pc(ifile, state->curseg, val);
  if (val > (WORD)(-1))
    fatal("cannot omit ORG value beyond 64K\n");
  emit_object_word(ofile, OBJ_ORG, (WORD) val);

  lex_next(lex);
}

static void assume(STATE*, IFILE*, LEX*);

static void do_assume(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(irec->op == TOK_ASSUME);

  assume(state, ifile, lex);
  while (lex_token(lex) == ',') {
    lex_next(lex);
    assume(state, ifile, lex);
  }
}

static void assume(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);

  if (lex_token(lex) != TOK_SREG) {
    error2(state, lex, "segment register expected");
    return;
  }

  int reg = lex_reg(lex);
  assert(reg >= 0 && reg < N_SREG);

  if (lex_next(lex) != ':') {
    error2(state, lex, "':' expected");
    return;
  }

  if (lex_next(lex) != TOK_LABEL) {
    error2(state, lex, "segment name expected");
    return;
  }

  int id = sym_lookup(ifile->st, lex_lexeme(lex));
  if (id == NO_SYM ||
      !sym_defined(ifile->st, id) ||
      sym_type(ifile->st, id) != SYM_SECTION) {
    error2(state, lex, "phase error: defined segment or group expected: %s", lex_lexeme(lex));
    exit(EXIT_FAILURE);
  }

  state->assume_sym[reg] = id;

  lex_next(lex);
}

enum db_node_type { DB_VALUE, DB_STR, DB_DUP };

struct db_node {
  int type;
  union {
    BYTE val;
    char* str;
    struct {
      unsigned long long count;
      struct db_node * data;
    } dup;
  } u;
  struct db_node * next;
};

static struct db_node * new_db_node(int type) {
  struct db_node * p = emalloc(sizeof *p);
  p->type = type;
  p->next = NULL;
  return p;
}

static void free_db_node(struct db_node * node) {
  while (node != NULL) {
    struct db_node * next = node->next;

    switch (node->type) {
      case DB_STR:
        efree(node->u.str);
        break;
      case DB_DUP:
        free_db_node(node->u.dup.data);
        break;
    }

    efree(node);
    node = next;
  }
}

static struct db_node * parse_byte_list(STATE*, IFILE*, LEX*);
static DWORD generate_byte_data(STATE*, IFILE*, OFILE*, const struct db_node *);

static void define_bytes(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(irec->op == TOK_DB);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  struct db_node * root = parse_byte_list(state, ifile, lex);

  DWORD size = generate_byte_data(state, ifile, ofile, root);

  if (size != irec->size)
    error(state, ifile, "internal error: data size discrepancy: sized %u, emitted %u",
          (unsigned) irec->size, (unsigned) size);

  free_db_node(root);
}

static struct db_node * parse_byte_datum(STATE*, IFILE*, LEX*);

static struct db_node * parse_byte_list(STATE* state, IFILE* ifile, LEX* lex) {
  struct db_node * const first = parse_byte_datum(state, ifile, lex);

  for (struct db_node * node = first; lex_token(lex) == ','; node = node->next) {
    lex_next(lex);
    node->next = parse_byte_datum(state, ifile, lex);
  }

  return first;
}

static struct db_node * parse_dup(STATE*, IFILE*, LEX*, unsigned long long count);

static struct db_node * parse_byte_datum(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(state->curseg != NO_SEG);

  struct db_node * node = NULL;

  union value val;
  int type = expr(state, ifile, lex, &val);

  switch (type) {
    case ET_STR:
      node = new_db_node(DB_STR);
      node->u.str = estrdup(val.str); // too much copying!
      break;
    case ET_ABS:
      if (lex_token(lex) == TOK_DUP)
        node = parse_dup(state, ifile, lex, val.n);
      else {
        node = new_db_node(DB_VALUE);
        node->u.val = (const BYTE) val.n;
      }
      break;
    case ET_REL:
      error2(state, lex, "invalid expression for byte data");
      break;
    default:
      error2(state, lex, "byte data expected");
      break;
  }

  return node;
}

static struct db_node * parse_dup(STATE* state, IFILE* ifile, LEX* lex, unsigned long long count) {
  assert(lex_token(lex) == TOK_DUP);

  if (lex_next(lex) != '(') {
    error2(state, lex, "parentheses required");
    lex_discard_line(lex);
    return NULL;
  }

  struct db_node * node = new_db_node(DB_DUP);
  node->u.dup.count = count;

  lex_next(lex);
  node->u.dup.data = parse_byte_list(state, ifile, lex);

  if (lex_token(lex) == ')')
    lex_next(lex);
  else
    error2(state, lex, "closing parenthesis expected");

  return node;
}

static DWORD generate_byte_data(STATE* state, IFILE* ifile, OFILE* ofile, const struct db_node * node) {
  DWORD size = 0;

  while (node) {
    struct db_node * next = node->next;

    switch (node->type) {
      case DB_VALUE:
        emit_object_byte(ofile, OBJ_DB, node->u.val);
        inc_segment_pc(ifile, state->curseg, 1);
        size++;
        break;
      case DB_STR: {
        size_t len = strlen(node->u.str);
        emit_object_data(ofile, OBJ_DS, node->u.str, len);
        inc_segment_pc(ifile, state->curseg, len);
        size += len;
        break;
      }
      case DB_DUP:
        for (unsigned i = 0; i < node->u.dup.count; i++)
          size += generate_byte_data(state, ifile, ofile, node->u.dup.data);
        break;
    }

    node = next;
  }

  return size;
}

static size_t word_data(STATE*, IFILE*, LEX*, OFILE*);

static void define_words(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  DWORD size;

  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(irec->op == TOK_DW);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  size = word_data(state, ifile, lex, ofile);
  while (lex_token(lex) == ',') {
    lex_next(lex);
    size += word_data(state, ifile, lex, ofile);
  }

  if (size != irec->size)
    error(state, ifile, "internal error: data size discrepancy: sized %u, emitted %u",
          (unsigned) irec->size, (unsigned) size);
}

static size_t word_data(STATE* state, IFILE* ifile, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(state->curseg != NO_SEG);

  size_t size = 0;

  union value val;
  int type = expr(state, ifile, lex, &val);
  switch (type) {
    case ET_ERR:
      break;
    case ET_ABS:
      emit_object_word(ofile, OBJ_DW, (WORD) val.n); // TODO: is this conversion always desired?
      size = 2;
      break;
    case ET_REL:
    case ET_OFFSET:
      if (relocatable_relative(ifile, val.label)) {
        emit_object_signal(ofile, OBJ_BEGIN_OFFSET);
        emit_object_word(ofile, OBJ_POS, (WORD) segment_pc(ifile, state->curseg));
        emit_segno(ofile, sym_seg(ifile->st, val.label));
        emit_object_signal(ofile, OBJ_END_OFFSET);
      }
      emit_object_word(ofile, OBJ_DW, (WORD) sym_relative_value(ifile->st, val.label));
      size = 2;
      break;
    case ET_SEC:
      if (sym_section_type(ifile->st, val.label) == ST_SEGMENT) {
        emit_object_signal(ofile, OBJ_BEGIN_SEG_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD) segment_pc(ifile, state->curseg));
        emit_segno(ofile, sym_section_ordinal(ifile->st, val.label));
        emit_object_signal(ofile, OBJ_END_SEG_ADDR);
      }
      else {
        assert(sym_section_type(ifile->st, val.label) == ST_GROUP);
        emit_object_signal(ofile, OBJ_BEGIN_GROUP_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD) segment_pc(ifile, state->curseg));
        emit_groupno(ofile, sym_section_ordinal(ifile->st, val.label));
        emit_object_signal(ofile, OBJ_END_GROUP_ADDR);
      }
      emit_object_word(ofile, OBJ_DW, 0);
      size = 2;
      break;
    case ET_SEG: {
      SEGNO segno = sym_seg(ifile->st, val.label);
      GROUPNO groupno = segment_group(ifile, segno);
      if (groupno == NO_GROUP) {
        emit_object_signal(ofile, OBJ_BEGIN_SEG_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD) segment_pc(ifile, state->curseg));
        emit_segno(ofile, segno);
        emit_object_signal(ofile, OBJ_END_SEG_ADDR);
      }
      else {
        emit_object_signal(ofile, OBJ_BEGIN_GROUP_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD) segment_pc(ifile, state->curseg));
        emit_groupno(ofile, groupno);
        emit_object_signal(ofile, OBJ_END_GROUP_ADDR);
      }
      emit_object_word(ofile, OBJ_DW, 0);
      size = 2;
      break;
    }
    default:
      if (make_absolute(type, &val)) {
        emit_object_word(ofile, OBJ_DW, (WORD)val.n);
        size = 2;
      }
      else
        error2(state, lex, "word data expected");
      break;
  }

  inc_segment_pc(ifile, state->curseg, size);
  return size;
}

static size_t dword_data(STATE*, IFILE*, LEX*, OFILE*);

static void define_dwords(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  DWORD size;

  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(irec->op == TOK_DD);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  size = dword_data(state, ifile, lex, ofile);
  while (lex_token(lex) == ',') {
    lex_next(lex);
    size += dword_data(state, ifile, lex, ofile);
  }

  if (size != irec->size)
    error(state, ifile, "internal error: data size discrepancy: sized %u, emitted %u",
          (unsigned) irec->size, (unsigned) size);
}

static size_t dword_data(STATE* state, IFILE* ifile, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(state->curseg != NO_SEG);

  size_t size = 0;

  union value val;
  int type = expr(state, ifile, lex, &val);
  if (make_absolute(type, &val)) {
    emit_object_dword(ofile, OBJ_DD, (DWORD) val.n);
    size = 4;
  }
  else
    error2(state, lex, "doubleword data expected");

  inc_segment_pc(ifile, state->curseg, size);
  return size;
}

static size_t qword_data(STATE*, IFILE*, LEX*, OFILE*);

static void define_qwords(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  DWORD size;

  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(irec->op == TOK_DQ);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  size = qword_data(state, ifile, lex, ofile);
  while (lex_token(lex) == ',') {
    lex_next(lex);
    size += qword_data(state, ifile, lex, ofile);
  }

  if (size != irec->size)
    error(state, ifile, "internal error: data size discrepancy: sized %u, emitted %u",
          (unsigned) irec->size, (unsigned) size);
}

static size_t qword_data(STATE* state, IFILE* ifile, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(state->curseg != NO_SEG);

  size_t size = 0;

  union value val;
  int type = expr(state, ifile, lex, &val);
  if (make_absolute(type, &val)) {
    emit_object_qword(ofile, OBJ_DQ, val.n);
    size = 8;
  }
  else
    error2(state, lex, "quadword data expected");

  inc_segment_pc(ifile, state->curseg, size);
  return size;
}

static size_t tbyte_data(STATE*, IFILE*, LEX*, OFILE*);

static void define_tbytes(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  DWORD size;

  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(irec->op == TOK_DT);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  size = tbyte_data(state, ifile, lex, ofile);
  while (lex_token(lex) == ',') {
    lex_next(lex);
    size += tbyte_data(state, ifile, lex, ofile);
  }

  if (size != irec->size)
    error(state, ifile, "internal error: data size discrepancy: sized %u, emitted %u",
          (unsigned) irec->size, (unsigned) size);
}

static size_t tbyte_data(STATE* state, IFILE* ifile, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(state->curseg != NO_SEG);

  size_t size = 0;

  union value val;
  int type = expr(state, ifile, lex, &val);
  if (make_absolute(type, &val)) {
    emit_object_qword(ofile, OBJ_DT, val.n);
    size = 10;
  }
  else
    error2(state, lex, "ten-byte data expected");

  inc_segment_pc(ifile, state->curseg, size);
  return size;
}

static void check_public_symbol(STATE*, IFILE*, LEX*);

static void do_public(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(irec != NULL);
  assert(irec->op == TOK_PUBLIC);

  check_public_symbol(state, ifile, lex);
  while (lex_token(lex) == ',') {
    lex_next(lex);
    check_public_symbol(state, ifile, lex);
  }
}

static void check_public_symbol(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);

  if (lex_token(lex) != TOK_LABEL) {
    error2(state, lex, "label expected");
    return;
  }

  int id = sym_lookup(ifile->st, lex_lexeme(lex));
  if (id == NO_SYM || sym_type(ifile->st, id) != SYM_RELATIVE || !sym_public(ifile->st, id))
    error2(state, lex, "phase error: public symbol not set up correctly: %s", lex_lexeme(lex));
  else if (!sym_defined(ifile->st, id))
    error2(state, lex, "public symbol not defined: %s", lex_lexeme(lex));

  lex_next(lex);
}

static void check_external_symbol(STATE*, IFILE*, LEX*);

static void do_extrn(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);

  check_external_symbol(state, ifile, lex);
  while (lex_token(lex) == ',') {
    lex_next(lex);
    check_external_symbol(state, ifile, lex);
  }
}

static void check_external_symbol(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);

  if (lex_token(lex) != TOK_LABEL) {
    error2(state, lex, "label expected");
    return;
  }

  int id = sym_lookup(ifile->st, lex_lexeme(lex));
  if (id == NO_SYM || sym_type(ifile->st, id) != SYM_RELATIVE || !sym_external(ifile->st, id))
    error2(state, lex, "phase error: external symbol not set up correctly: %s", lex_lexeme(lex));

  if (lex_next(lex) == ':')
    lex_next(lex);
  else
    error2(state, lex, "':' expected");

  switch (lex_token(lex)) {
  case TOK_BYTE:
  case TOK_WORD:
  case TOK_DWORD:
  case TOK_PROC:
    lex_next(lex);
    break;
  default:
    error2(state, lex, "data type expected: %s", lex_lexeme(lex));
  }
}

enum reloc_type {
  RT_NONE,
  RT_OFFSET,
  RT_SEG,
  RT_EXTERNAL,
  RT_GROUP_ABSOLUTE_JUMP,  // JMP CS:1234h where CS -> group
  RT_SECTION,
};

typedef struct {
  short type;
  SYMBOL_ID symbol_id;
} RELOC_REQ;

typedef struct {
  DWORD pos;
  short type;
  BOOL jump; // relative to instruction; otherwise data displacement
  SYMBOL_ID symbol_id;
} RELOC_INF;

#define MAX_RELOC (2)

typedef struct {
  RELOC_INF relocs[MAX_RELOC];
  unsigned short count;
} RELOC_LIST;

static void init_reloc_list(RELOC_LIST* p) {
  p->count = 0;
}

enum { JUMP_RELOC = TRUE, DATA_RELOC = FALSE };

static void add_reloc(RELOC_LIST* p, const RELOC_REQ* req, BOOL jump, DWORD pos) {
  assert(p != NULL);
  assert(req != NULL);
  assert(req->type != RT_NONE);

  if (p->count >= MAX_RELOC)
    fatal("too many relocations\n");
  p->relocs[p->count].pos = pos;
  p->relocs[p->count].type = req->type;
  p->relocs[p->count].jump = jump;
  p->relocs[p->count].symbol_id = req->symbol_id;
  p->count++;
}

static void emit_relocation(STATE*, IFILE*, const RELOC_INF*, OFILE*);

static unsigned encode_instruction(STATE*, IFILE*, IREC*, LEX*,
                                   const OPERAND* oper1, const OPERAND* oper2,
                                   BYTE* buf, RELOC_LIST*);

static unsigned encode_near_direct_jump(STATE*, IFILE*, IREC*, LEX*,
    const OPERAND* oper1, const OPERAND* oper2, BYTE* buf, RELOC_LIST*);

static void process_instruction(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  BYTE buf[16];
  OPERAND oper1, oper2;
  unsigned encoded = 0;

  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(token_is_opcode(irec->op));

  if (state->curseg == NO_SEG) {
    error(state, ifile, "code outside segment");
    lex_discard_line(lex);
    return;
  }

  int cs_assume_sym = state->assume_sym[SR_CS];
  if (cs_assume_sym == NO_SYM) {
    error2(state, lex, "CS has no ASSUME");
    return;
  }
  assert(sym_type(ifile->st, cs_assume_sym) == SYM_SECTION);
  switch (sym_section_type(ifile->st, cs_assume_sym)) {
    case ST_SEGMENT:
      if (sym_section_ordinal(ifile->st, cs_assume_sym) != state->curseg) {
        error2(state, lex, "CS is not the current segment");
        return;
      }
      break;
    case ST_GROUP: {
      int assume_group = sym_section_ordinal(ifile->st, cs_assume_sym);
      if (segment_group(ifile, state->curseg) != assume_group) {
        error2(state, lex, "the current segment is outside the CS assume group");
        return;
      }
      break;
    }
    default:
      error2(state, lex, "internal error: CS assume section unresolved to segment or group");
      exit(EXIT_FAILURE);
  }

  if (!parse_operands(state, ifile, lex, &oper1, &oper2)) {
    lex_discard_line(lex);
    return;
  }


  RELOC_LIST relocs;
  init_reloc_list(&relocs);

  if (irec->near_jump_size)
    encoded = encode_near_direct_jump(state, ifile, irec, lex, &oper1, &oper2, buf, &relocs);
  else
    encoded = encode_instruction(state, ifile, irec, lex, &oper1, &oper2, buf, &relocs);

  if (encoded != irec->size) {
    error2(state, lex, "internal error: instruction size discrepancy: sized %u encoded %u",
          (unsigned) irec->size, encoded);
    exit(EXIT_FAILURE);
  }

  emit_object_data(ofile, OBJ_CODE, buf, irec->size);

  for (unsigned i = 0; i < relocs.count; i++)
    emit_relocation(state, ifile, relocs.relocs + i, ofile);

  inc_segment_pc(ifile, state->curseg, irec->size);
}

static void emit_relocation(STATE* state, IFILE* ifile, const RELOC_INF* rel, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(rel != NULL);
  assert(ofile != NULL);

  DWORD pos = segment_pc(ifile, state->curseg) + rel->pos;
  if (pos > (WORD)(-1))
    fatal("cannot emit relocation position beyond 64K\n");

  switch (rel->type) {
    case RT_OFFSET:
      emit_object_signal(ofile, OBJ_BEGIN_OFFSET);
      emit_object_word(ofile, OBJ_POS, (WORD)pos);
      emit_segno(ofile, sym_seg(ifile->st, rel->symbol_id));
      emit_object_signal(ofile, OBJ_END_OFFSET);
      break;
    case RT_EXTERNAL:
      emit_object_signal(ofile, OBJ_BEGIN_EXTRN_USE);
      emit_object_word(ofile, OBJ_POS, (WORD)pos);
      SYMBOL_ID ext_id = sym_external_id(ifile->st, rel->symbol_id);
      assert(ext_id >= 0);
      if (ext_id > (WORD)(-1))
        fatal("cannot emit external symbol ID beyond 64K\n");
      emit_object_word(ofile, OBJ_ID, ext_id);
      if (rel->jump)
        emit_object_signal(ofile, OBJ_JUMP);
      emit_object_signal(ofile, OBJ_END_EXTRN_USE);
      break;
    case RT_GROUP_ABSOLUTE_JUMP:
      emit_object_signal(ofile, OBJ_BEGIN_GROUP_ABS_JUMP);
      emit_object_word(ofile, OBJ_POS, (WORD)pos);
      emit_groupno(ofile, sym_section_ordinal(ifile->st, rel->symbol_id));
      emit_object_signal(ofile, OBJ_END_GROUP_ABS_JUMP);
      break;
    case RT_SECTION:
      if (sym_section_type(ifile->st, rel->symbol_id) == ST_SEGMENT) {
        emit_object_signal(ofile, OBJ_BEGIN_SEG_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD)pos);
        emit_segno(ofile, sym_section_ordinal(ifile->st, rel->symbol_id));
        emit_object_signal(ofile, OBJ_END_SEG_ADDR);
      }
      else {
        assert(sym_section_type(ifile->st, rel->symbol_id) == ST_GROUP);
        emit_object_signal(ofile, OBJ_BEGIN_GROUP_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD)pos);
        emit_groupno(ofile, sym_section_ordinal(ifile->st, rel->symbol_id));
        emit_object_signal(ofile, OBJ_END_GROUP_ADDR);
      }
      break;
    case RT_SEG: {
      SEGNO segno = sym_seg(ifile->st, rel->symbol_id);
      GROUPNO groupno = segment_group(ifile, segno);
      if (groupno == NO_GROUP) {
        emit_object_signal(ofile, OBJ_BEGIN_SEG_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD)pos);
        emit_segno(ofile, segno);
        emit_object_signal(ofile, OBJ_END_SEG_ADDR);
      }
      else {
        emit_object_signal(ofile, OBJ_BEGIN_GROUP_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD)pos);
        emit_groupno(ofile, groupno);
        emit_object_signal(ofile, OBJ_END_GROUP_ADDR);
      }
      break;
    }
    default:
      assert(0 && "unexpected relocation type");
  }
}

static long signed_displacement(DWORD from, DWORD to);
static DWORD encode_long(long);

static unsigned encode_relative(STATE* state, IFILE* ifile, IREC* irec, LEX* lex,
    const OPERAND* oper1, unsigned disp_size, BYTE* buf, unsigned i,
    RELOC_LIST* relocs);

static unsigned encode_near_direct_jump(STATE* state, IFILE* ifile, IREC* irec, LEX* lex,
    const OPERAND* oper1, const OPERAND* oper2, BYTE* buf, RELOC_LIST* relocs) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->op == TOK_JMP);
  assert(lex != NULL);
  assert(oper1 != NULL);
  assert(oper1->type == OT_JUMP);
  assert(oper2 != NULL);
  assert(oper2->type == OT_NONE);
  assert(buf != NULL);
  assert(relocs != NULL);

  unsigned i = 0;

  switch (irec->near_jump_size) {
    case 1: buf[i++] = 0xEB; break;
    case 2: buf[i++] = 0xE9; break;
    default: assert(0 && "unexpected jump displacement size"); break;
  }

  return encode_relative(state, ifile, irec, lex, oper1, irec->near_jump_size, buf, i, relocs);
}

static void encode_disp(STATE*, LEX*, DWORD dest, DWORD disp_offset, unsigned disp_size, BYTE* buf);

static unsigned encode_relative(STATE* state, IFILE* ifile, IREC* irec, LEX* lex,
    const OPERAND* oper1, unsigned disp_size, BYTE* buf, unsigned i,
    RELOC_LIST* relocs) {
  assert(state != NULL);
  assert(state->curseg != NO_SEG);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(lex != NULL);
  assert(oper1 != NULL);
  assert(oper1->type == OT_JUMP);
  assert(disp_size == 1 || disp_size == 2);
  assert(buf != NULL);
  assert(relocs != NULL);

  if (oper1->val.jump.target_type == FAR_JUMP) {
    write_word_le(buf + i, oper1->val.jump.target.far.offset);
    write_word_le(buf + i + 2, oper1->val.jump.target.far.seg);
    return i + 4;
  }

  RELOC_REQ rel;
  rel.type = RT_NONE;

  DWORD pc = segment_pc(ifile, state->curseg);

  if (oper1->val.jump.target_type == ABS_JUMP) {
    DWORD dest = oper1->val.jump.target.abs;
    if (dest > 0xffff) {
      error(state, ifile, "jump address is out of 16-bit range: %05lx", (unsigned long) dest);
      return i;
    }
    SYMBOL_ID CSID = state->assume_sym[SR_CS];
    // if CS -> group, absolute address is relative to start of group
    if (sym_section_type(ifile->st, CSID) == ST_GROUP) {
      assert(disp_size == 2);
      rel.type = RT_GROUP_ABSOLUTE_JUMP;
      rel.symbol_id = CSID;
      add_reloc(relocs, &rel, JUMP_RELOC, i);
      write_word_le(buf + i, (WORD) dest);
      return i + 2;
    }
    // otherwise absolute address is relative to start of this module segment
    encode_disp(state, lex, dest, pc + i, disp_size, buf + i);
    return i + disp_size;
  }

  assert(oper1->val.jump.target_type == LABEL_JUMP);
  assert(oper1->val.jump.target.label != NO_SYM);
  SYMBOL_ID id = oper1->val.jump.target.label;
  assert(sym_type(ifile->st, id) == SYM_RELATIVE);

  const char* name = sym_name(ifile->st, id);

  if (!sym_defined(ifile->st, id))
    fatal("internal: symbol not defined in encoding pass: %s\n", name);

  rel.symbol_id = id;

  if (sym_external(ifile->st, id)) {
    assert(disp_size == 2);
    rel.type = RT_EXTERNAL;
    add_reloc(relocs, &rel, JUMP_RELOC, i);
    buf[i++] = 0;
    buf[i++] = 0;
    return i;
  }

  assert(sym_seg(ifile->st, id) != NO_SEG);
  if (sym_seg(ifile->st, id) == state->curseg) {
    DWORD dest = sym_relative_value(ifile->st, id);
    encode_disp(state, lex, dest, pc + i, disp_size, buf + i);
    return i + disp_size;
  }

  // TODO: support near jump within group.
  error2(state, lex, "inter-segment jump");
  buf[i++] = 0;
  if (disp_size > 1)
    buf[i++] = 0;
  return i;
}

static unsigned encode_far(IFILE* ifile, const OPERAND* oper1, BYTE* buf, unsigned i, RELOC_LIST* relocs) {
    assert(oper1 != NULL);
    assert(oper1->type == OT_JUMP);
    assert(oper1->val.jump.distance == FAR);

    if (oper1->val.jump.target_type == FAR_JUMP) {
      write_word_le(buf + i, oper1->val.jump.target.far.offset);
      i += 2;
      write_word_le(buf + i, oper1->val.jump.target.far.seg);
      i += 2;
      return i;
    }

    assert(oper1->val.jump.target_type == LABEL_JUMP);
    SYMBOL_ID label = oper1->val.jump.target.label;
    assert(sym_type(ifile->st, label) == SYM_RELATIVE);

    // offset relocation is DATA_RELOC not JUMP_RELOC
    // because it is offset in segment, not PC-relative
    RELOC_REQ rel;
    rel.symbol_id = label;

    if (sym_external(ifile->st, label)) {
      rel.type = RT_EXTERNAL;
      add_reloc(relocs, &rel, DATA_RELOC, i);
      buf[i++] = 0;
      buf[i++] = 0;
    }
    else {
      if (relocatable_relative(ifile, label)) {
        rel.type = RT_OFFSET;
        add_reloc(relocs, &rel, DATA_RELOC, i);
      }
      write_word_le(buf + i, (WORD) sym_relative_value(ifile->st, label));
      i += 2;
    }

    rel.type = RT_SEG;
    add_reloc(relocs, &rel, DATA_RELOC, i);
    buf[i++] = 0;
    buf[i++] = 0;
    return i;
}

static void encode_disp(STATE* state, LEX* lex, DWORD dest, DWORD disp_offset, unsigned disp_size, BYTE* buf) {
  assert(disp_size == 1 || disp_size == 2);
  assert(buf != NULL);

  if (disp_offset > 0xffff - disp_size) {
    error2(state, lex, "PC out of 16-bit range");
    return;
  }

  if (dest > 0xffff) {
    error2(state, lex, "target address out of 16-bit range");
    return;
  }

  if (disp_size == 1) {
    long disp = (long)dest - (long)(disp_offset + 1);
    if (disp < -0x80 || disp >= 0x80) {
      const long over = (disp < -0x80) ? -0x80 - disp : disp - 0x7f;
      error2(state, lex, "short jump out of range by %ld = %04lxh bytes", over, over);
      buf[0] = 0;
    }
    else
      buf[0] = (BYTE) disp;
    return;
  }

  assert(disp_size == 2);

  long disp = (long)dest - (long)(disp_offset + 2);
  if (disp < -0xffff || disp > 0xffff) {
    error2(state, lex, "near jump out of 16-bit range");
    return;
  }
  write_word_le(buf, (WORD) disp);
}


static long signed_displacement(DWORD from, DWORD to) {
  return to - from; // TODO: can this be made more portable?
}

static void compute_rm(STATE* state, IFILE* ifile, const OPERAND* op,
                       unsigned *mod, unsigned *rm, unsigned *disp_len,
                       DWORD *disp_code, RELOC_REQ*);

static BYTE encode_modrm(unsigned mod, unsigned reg, unsigned rm);

static DWORD displacement_code(IFILE*, const struct mem * const, RELOC_REQ*);

static BOOL compute_sreg_override(STATE*, IFILE*, IREC*, LEX*, const OPERAND* oper1, const OPERAND* oper2, BYTE *code);

static long immediate_value(IFILE*, const struct imm *, RELOC_REQ*);

static unsigned encode_instruction(STATE* state, IFILE* ifile, IREC* irec, LEX* lex,
                                   const OPERAND* oper1, const OPERAND* oper2,
                                   BYTE* buf, RELOC_LIST* relocs) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->def != NULL);
  assert(buf != NULL);
  assert(relocs != NULL);
  assert(relocs->count == 0);

  assert(state->curseg != NO_SEG);
  const DWORD pc = segment_pc(ifile, state->curseg);

  unsigned i = 0;
  BYTE sreg_code;

  // The WAIT pre-opcode comes first: it is really a separate instruction.
  if (irec->def->opcode_prefix)
    buf[i++] = opcode_prefix_code(irec->def->opcode_prefix);

  if (irec->rep != TOK_NONE)
    buf[i++] = repeat_code(irec->rep);

  if (compute_sreg_override(state, ifile, irec, lex, oper1, oper2, &sreg_code))
    buf[i++] = sreg_code;

  buf[i] = irec->def->opcode1;
  if (irec->def->opcodes > 1) {
    assert(irec->def->opcodes == 2);
    buf[++i] = irec->def->opcode2;
  }
  switch (irec->def->opcode_inc) {
    case 1: buf[i] += oper1->val.reg; break;
    case 2: buf[i] += oper2->val.reg; break;
  }
  i++;

  unsigned disp_len = 0;
  DWORD disp_code;

  RELOC_REQ rel;
  rel.type = RT_NONE;

  if (irec->def->oper1 == OF_JUMP)
    return encode_relative(state, ifile, irec, lex, oper1, irec->def->imm, buf, i, relocs);

  if (irec->def->oper1 == OF_FAR)
    return encode_far(ifile, oper1, buf, i, relocs);

  // ModR/M byte
  if (irec->def->modrm != RMN) {
    unsigned mod, rm, reg;
    switch (irec->def->modrm) {
      case RRM:
        compute_rm(state, ifile, oper2, &mod, &rm, &disp_len, &disp_code, &rel);
        reg = oper1->val.reg;
        break;
      case RMR:
        compute_rm(state, ifile, oper1, &mod, &rm, &disp_len, &disp_code, &rel);
        reg = oper2->val.reg;
        break;
      case RMC:
      case MMC:
        compute_rm(state, ifile, oper1, &mod, &rm, &disp_len, &disp_code, &rel);
        reg = irec->def->reg;
        break;
      case SIS:
      case SIC:
        mod = 3;
        reg = irec->def->reg;
        rm = oper1->val.reg;
        break;
      case SSI:
        mod = 3;
        reg = irec->def->reg;
        rm = oper2->val.reg;
        break;
      case SCC:
        mod = 3;
        reg = irec->def->reg;
        rm = irec->def->rm;
        break;
      default:
        fatal("internal error: unknown ModR/M type\n");
        break;
    }
    buf[i++] = encode_modrm(mod, reg, rm);
  }
  else if (irec->def->oper1 == OF_INDIR) {
    assert(oper1->type == OT_MEM);
    disp_code = displacement_code(ifile, &oper1->val.mem, &rel);
    disp_len = 2;
  }
  else if (irec->def->oper2 == OF_INDIR) {
    assert(oper2->type == OT_MEM);
    disp_code = displacement_code(ifile, &oper2->val.mem, &rel);
    disp_len = 2;
  }

  if (rel.type != RT_NONE) {
    if (disp_len != 2)
      fatal("internal error: relocation length %u\n", disp_len);
    add_reloc(relocs, &rel, DATA_RELOC, i);
  }

  if (disp_len > 0) {
    buf[i++] = disp_code & 0xff;
    if (disp_len > 1)
      buf[i++] = (disp_code >> 8) & 0xff;
  }

  if (irec->def->imm) {
    long val = 0;
    WORD w = 0;

    rel.type = RT_NONE;

    if (oper1->type == OT_IMM)
      val = immediate_value(ifile, &oper1->val.imm, &rel);
    else if (oper2->type == OT_IMM)
      val = immediate_value(ifile, &oper2->val.imm, &rel);
    else
      error2(state, lex, "internal error: no immediate");

    if (rel.type != RT_NONE) {
      if (irec->def->imm != 2)
        fatal("internal error: relocation length %u\n", (unsigned) irec->def->imm);
      add_reloc(relocs, &rel, DATA_RELOC, i);
    }

    w = (WORD) encode_long(val);

    buf[i++] = w & 0xff;
    if (irec->def->imm > 1)
      buf[i++] = (w >> 8) & 0xff;
  }

  return i;
}

static long relative_symbol_value(IFILE*, int id, RELOC_REQ*);

static long immediate_value(IFILE* ifile, const struct imm * imm, RELOC_REQ* rel) {
  assert(ifile != NULL);
  assert(imm != NULL);
  assert(rel != NULL);

  switch (imm->type) {
    case IMM_ABS:
      assert(imm->label == NO_SYM);
      rel->type = RT_NONE;
      return imm->sval;
    case IMM_OFFSET:
      assert(imm->label != NO_SYM);
      return relative_symbol_value(ifile, imm->label, rel);
    case IMM_SEG:
      assert(imm->label != NO_SYM);
      assert(imm->sval == 0);
      rel->type = RT_SEG;
      rel->symbol_id = imm->label;
      return 0;
    case IMM_SECTION:
      assert(imm->label != NO_SYM);
      assert(imm->sval == 0);
      rel->type = RT_SECTION;
      rel->symbol_id = imm->label;
      return 0;
  }
  assert(0 && "unknown immediate value type");
  return 0;
}

static long displacement(IFILE* ifile, const struct mem * const m, RELOC_REQ* rel) {
  assert(ifile != NULL);
  assert(m != NULL);
  assert(m->disp_type != NO_DISP);
  assert(rel != NULL);

  if (m->disp_type == ABS_DISP) {
    rel->type = RT_NONE;
    return m->disp.sval;
  }

  assert(m->disp_type == REL_DISP);
  assert(m->disp.label != NO_SYM);
  return relative_symbol_value(ifile, m->disp.label, rel);
}

static long relative_symbol_value(IFILE* ifile, int id, RELOC_REQ* rel) {
  assert(sym_type(ifile->st, id) == SYM_RELATIVE);

  const char* name = sym_name(ifile->st, id);

  if (!sym_defined(ifile->st, id))
    fatal("internal: symbol not defined in encoding pass: %s\n", name);

  rel->symbol_id = id;

  if (sym_external(ifile->st, id)) {
    rel->type = RT_EXTERNAL;
    return 0;
  }

  DWORD addr = sym_relative_value(ifile->st, id);
  if (addr > LONG_MAX)
    fatal("address out of range for signed displacement: %s\n", name);

  if (relocatable_relative(ifile, id))
    rel->type = RT_OFFSET;

  return addr;
}

static BOOL operand_sreg_override(STATE*, IFILE*, LEX*, const struct mem *, BYTE *code);

static BOOL string_sreg_override(STATE*, IFILE*, LEX*, const struct mem * op1,
    const struct mem * op2, BYTE *code);

static BOOL compute_sreg_override(STATE* state, IFILE* ifile, IREC* irec, LEX* lex,
    const OPERAND* oper1, const OPERAND* oper2, BYTE *code) {
  assert(irec != NULL);
  assert(irec->def != NULL);

  if (opcode_lea(irec->def->opcode1))
    return FALSE;

  if (string_instruction(irec->def))
    return string_sreg_override(state, ifile, lex, &oper1->val.mem, &oper2->val.mem, code);

  if (oper1 && oper1->type == OT_MEM)
    return operand_sreg_override(state, ifile, lex, &oper1->val.mem, code);

  if (oper2 && oper2->type == OT_MEM)
    return operand_sreg_override(state, ifile, lex, &oper2->val.mem, code);

  return FALSE;
}

static BYTE encode_sreg_override(int sreg);

// Assume DI overrides forbidden in pass 1.
static BOOL string_sreg_override(STATE* state, IFILE* ifile, LEX* lex,
    const struct mem * m1, const struct mem * m2, BYTE *code) {
  assert(m1 != NULL);
  assert(m2 != NULL);

  if (m1->index_reg == REG_SI) {
    if (m1->sreg_override != NO_REG && m1->sreg_override != SR_DS) {
      *code = encode_sreg_override(m1->sreg_override);
      return TRUE;
    }
    return FALSE;
  }
      
  if (m2->index_reg == REG_SI) {
    if (m2->sreg_override != NO_REG && m2->sreg_override != SR_DS) {
      *code = encode_sreg_override(m2->sreg_override);
      return TRUE;
    }
    return FALSE;
  }

  return FALSE;
}

static BOOL addressable(STATE*, IFILE*, SYMBOL_ID, int sreg);
static BOOL addressable_at_all(STATE*, IFILE*, SYMBOL_ID, int *sreg);

static BOOL operand_sreg_override(STATE* state, IFILE* ifile, LEX* lex, const struct mem * m, BYTE *code) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(ifile->st != NULL);
  assert(m != NULL);
  assert(code != NULL);

  const int default_sreg = (m->base_reg == REG_BP) ? SR_SS : SR_DS;

  if (m->sreg_override != NO_REG) {
    if (m->sreg_override != default_sreg) {
      *code = encode_sreg_override(m->sreg_override);
      return TRUE;
    }
    return FALSE;
  }

  if (m->disp_type != REL_DISP)
    return FALSE;

  if (addressable(state, ifile, m->disp.label, default_sreg))
    return FALSE;

  int sreg = NO_REG;
  if (addressable_at_all(state, ifile, m->disp.label, &sreg)) {
    if (sreg != default_sreg) {
      *code = encode_sreg_override(sreg);
      return TRUE;
    }
    return FALSE;
  }

  error2(state, lex, "not accessible via any segment register: %s", sym_name(ifile->st, m->disp.label));
  return FALSE;
}

static BOOL addressable(STATE* state, IFILE* ifile, SYMBOL_ID label, int sreg) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(ifile->st != NULL);
  assert(label != NO_SYM);
  assert(sym_type(ifile->st, label) == SYM_RELATIVE);
  assert(sreg >= 0 && sreg < N_SREG);

  SYMBOL_ID assume_id = state->assume_sym[sreg];
  if (assume_id == NO_SYM)
    return FALSE;

  SEGNO symbol_seg = sym_seg(ifile->st, label);
  assert(symbol_seg != NO_SEG);

  GROUPNO symbol_group = segment_group(ifile, symbol_seg);
  if (symbol_group == NO_GROUP) {
    if (sym_section_type(ifile->st, assume_id) == ST_SEGMENT) {
      SEGNO sreg_seg = sym_section_ordinal(ifile->st, assume_id);
      return symbol_seg == sreg_seg;
    }
    assert(sym_section_type(ifile->st, assume_id) == ST_GROUP);
    return FALSE;
  }

  if (sym_section_type(ifile->st, assume_id) == ST_SEGMENT)
    return FALSE;

  GROUPNO sreg_group = sym_section_ordinal(ifile->st, assume_id);
  return symbol_group == sreg_group;
}

// TODO: efficiency of algorithm.
static BOOL addressable_at_all(STATE* state, IFILE* ifile, SYMBOL_ID label, int *sreg) {
  static const int regs[] = { SR_DS, SR_ES, SR_SS, SR_CS };

  for (unsigned i = 0; i < sizeof regs / sizeof regs[0]; i++) {
    if (addressable(state, ifile, label, regs[i])) {
      *sreg = regs[i];
      return TRUE;
    }
  }

  return FALSE;
}

static BYTE encode_sreg_override(int sreg) {
  // enum sreg              { SR_ES, SR_CS, SR_SS, SR_DS }
  static const BYTE code[] = { 0x26,  0x2e,  0x36,  0x3e };
  assert(sreg >= 0 && sreg < 4);
  return code[sreg];
}

static unsigned mem_disp_len(STATE*, IFILE*, const OPERAND*, long *disp, RELOC_REQ* rel);

static void compute_rm(STATE* state, IFILE* ifile, const OPERAND* op,
                       unsigned *mod, unsigned *rm, unsigned *disp_len,
                       DWORD *disp_code, RELOC_REQ* rel) {
  assert(ifile != NULL);
  assert(op != NULL);
  assert(op->type == OT_MEM || op->type == OT_REG);
  assert(mod != NULL);
  assert(rm != NULL);
  assert(disp_len != NULL);
  assert(disp_code != NULL);
  assert(rel != NULL);

  rel->type = RT_NONE;

  if (op->type == OT_REG) {
    *mod = 3;
    *rm = op->val.reg;
    *disp_len = 0;
    return;
  }

  if (op->type != OT_MEM)
    fatal("internal: compute_rm: unexpected operand type\n");

  const struct mem * const m = &op->val.mem;

  long disp;
  *disp_len = mem_disp_len(state, ifile, op, &disp, rel);
  *disp_code = (DWORD) disp;

  // [addr]
  if (m->base_reg == NO_REG && m->index_reg == NO_REG) {
    *mod = 0;
    *rm = 6;
    *disp_len = 2;
    return;
  }

  assert(*disp_len == 0 || *disp_len == 1 || *disp_len == 2);
  *mod = *disp_len;

  if (m->base_reg == REG_BX) {
    if (m->index_reg == REG_SI)
      *rm = 0;
    else if (m->index_reg == REG_DI)
      *rm = 1;
    else if (m->index_reg == NO_REG)
      *rm = 7;
    else
      error(state, ifile, "invalid index register");
  }
  else if (m->base_reg == REG_BP) {
    if (m->index_reg == REG_SI)
      *rm = 2;
    else if (m->index_reg == REG_DI)
      *rm = 3;
    else if (m->index_reg == NO_REG) {
      if (*disp_len == 0) {
        *disp_len = *mod = 1;
        *disp_code = 0;
      }
      *rm = 6;
    }
    else
      error(state, ifile, "invalid index register");
  }
  else if (m->base_reg == NO_REG) {
    if (m->index_reg == REG_SI)
      *rm = 4;
    else if (m->index_reg == REG_DI)
      *rm = 5;
    else
      error(state, ifile, "invalid index register");
  }
  else
    error(state, ifile, "invalid base register");
}

static DWORD encode_long(long disp) {
  assert(sizeof (DWORD) == 4);
  assert(sizeof (long) == sizeof (DWORD));
  return disp;
}

static unsigned disp_length(long disp, unsigned min) {
  if (disp == 0)
    return min;

  if (disp >= -0x80 && disp < 0x80)
    return 1;

  return 2;
}

static unsigned mem_disp_len(STATE* state, IFILE* ifile, const OPERAND* op, long *disp, RELOC_REQ* rel) {
  assert(ifile != NULL);
  assert(op != NULL);
  assert(op->type == OT_MEM);
  assert(disp != NULL);

  const struct mem * const m = &op->val.mem;

  unsigned min = (m->base_reg == REG_BP && m->index_reg == NO_REG) ? 1 : 0;

  if (m->disp_type == NO_DISP) {
    rel->type = RT_NONE;
    *disp = 0;
    return min;
  }

  if (m->disp_type == ABS_DISP) {
    rel->type = RT_NONE;
    *disp = m->disp.sval;
    if (m->base_reg == NO_REG && m->index_reg == NO_REG)
      return 2;
    return disp_length(m->disp.sval, min);
  }

  assert(m->disp_type == REL_DISP);
  assert(m->disp.label != NO_SYM);
  assert(sym_type(ifile->st, m->disp.label) == SYM_RELATIVE);
  assert(sym_defined(ifile->st, m->disp.label));

  if (sym_external(ifile->st, m->disp.label)) {
    rel->type = RT_EXTERNAL;
    rel->symbol_id = m->disp.label;
    *disp = 0;
    return 2;
  }

  DWORD val = sym_relative_value(ifile->st, m->disp.label);
  if (val > LONG_MAX) {
    error(state, ifile, "address out of range for signed displacement\n");
    val = 0;
  }
  *disp = val;

  if (relocatable_relative(ifile, m->disp.label)) {
    rel->type = RT_OFFSET;
    rel->symbol_id = m->disp.label;
    return 2;
  }

  return disp_length(val, min);
}

static DWORD displacement_code(IFILE* ifile, const struct mem * const m, RELOC_REQ* rel) {
  return encode_long(displacement(ifile, m, rel));
}

static BYTE encode_modrm(unsigned mod, unsigned reg, unsigned rm) {
  mod &= 03;
  reg &= 07;
  rm  &= 07;

  return (mod << 6) | (reg << 3) | rm;
}


#ifdef UNIT_TEST

#include "CuTest.h"

static void test_reloc(CuTest* tc) {
  RELOC_LIST list;
  RELOC_REQ req;

  init_reloc_list(&list);
  CuAssertIntEquals(tc, 0, list.count);

  req.type = RT_OFFSET;
  req.symbol_id = 9;
  add_reloc(&list, &req, JUMP_RELOC, 0x1234);
  CuAssertIntEquals(tc, 1, list.count);
  CuAssertIntEquals(tc, RT_OFFSET, list.relocs[0].type);
  CuAssertIntEquals(tc, 9, list.relocs[0].symbol_id);
  CuAssertIntEquals(tc, 0x1234, list.relocs[0].pos);
  CuAssertIntEquals(tc, TRUE, list.relocs[0].jump);
}

CuSuite* encoding_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_reloc);
  return suite;
}

#endif // UNIT_TEST
