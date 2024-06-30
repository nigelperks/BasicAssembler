// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
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
#include "parsedata.h"
#include "common.h"
#include "options.h"
#include "object.h"

static void emit_groups(IFILE*, OFILE*);
static void emit_segments(IFILE*, OFILE*);
static void emit_externals(SYMTAB*, OFILE*);
static void emit_publics(SYMTAB*, OFILE*);
static void process_irec(STATE*, IFILE*, LEX*, OFILE*);
static void emit_start(IFILE*, OFILE*);
static void emit_uninit_segments(STATE*, IFILE*, OFILE*);

OFILE* encoding_pass(IFILE* ifile, const Options* options) {
  if (options->verbose)
    puts("Encoding pass");

  STATE state;
  init_state(&state, options->max_errors);

  reset_pc(ifile);

  OFILE* ofile = new_ofile();
  emit_groups(ifile, ofile);
  emit_segments(ifile, ofile);

  if (ifile->st->case_sensitive)
    emit_object_signal(ofile, OBJ_CASED);
  emit_externals(ifile->st, ofile);
  emit_publics(ifile->st, ofile);

  LEX* lex = new_lex(source_name(ifile->source));
  for (ifile->pos = 0; ifile->pos < irec_count(ifile); ifile->pos++)
    process_irec(&state, ifile, lex, ofile);

  if (ifile->start_label != NULL)
    emit_start(ifile, ofile);

  emit_uninit_segments(&state, ifile, ofile);

  delete_lex(lex);

  if (state.errors > 0) {
    fprintf(stderr, "Errors: %u\n", state.errors);
    exit(EXIT_FAILURE);
  }

  return ofile;
}

static void emit_uninit_segments(STATE* state, IFILE* ifile, OFILE* ofile) {
  for (SEGNO segno = 0; segno < segment_count(ifile); segno++) {
    if (segment_uninit(ifile, segno)) {
      DWORD size = segment_pc(ifile, segno);
      if (size > (WORD)(-1))
        error(state, ifile, "uninitialised segment is too large: %s", segment_name(ifile, segno));
      else {
        emit_object_byte(ofile, OBJ_OPEN_SEGMENT, (BYTE) segno);
        emit_object_word(ofile, OBJ_SPACE, (WORD) size);
        emit_object_byte(ofile, OBJ_CLOSE_SEGMENT, (BYTE) segno);
      }
    }
  }
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
  assert(ifile->start_label != NULL);
  assert(sym_type(ifile->start_label) == SYM_RELATIVE &&
         sym_defined(ifile->start_label) &&
         !sym_external(ifile->start_label));
  assert(ofile != NULL);

  emit_object_signal(ofile, OBJ_BEGIN_START);

  emit_segno(ofile, sym_seg(ifile->start_label));

  DWORD offset = sym_relative_value(ifile->start_label);
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

static void emit_string(OFILE* ofile, int type, const char* s) {
  size_t len = strlen(s);
  if (len > UINT_MAX)
    fatal("object emission: unfeasibly long string\n");
  emit_object_data(ofile, type, s, (unsigned) len);
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
  emit_string(ofile, OBJ_NAME, name);

  if (segment_public(ifile, segno))
    emit_object_signal(ofile, OBJ_PUBLIC);

  if (segment_stack(ifile, segno))
    emit_object_signal(ofile, OBJ_STACK);

  GROUPNO group = segment_group(ifile, segno);
  if (group != NO_GROUP)
    emit_groupno(ofile, group);

  emit_object_byte(ofile, OBJ_P2ALIGN, segment_p2align(ifile, segno));

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

  emit_string(ofile, OBJ_NAME, name);

  emit_object_signal(ofile, OBJ_END_GROUP);
}

static void emit_external(const SYMBOL*, OFILE*);

static void emit_externals(SYMTAB* st, OFILE* ofile) {
  SYM_FIND find;
  for (const SYMBOL* sym = sym_first(st, &find); sym; sym = sym_next(&find)) {
    if (sym_external(sym))
      emit_external(sym, ofile);
  }
}

static void emit_external(const SYMBOL* sym, OFILE* ofile) {
  assert(sym_external(sym));

  emit_object_signal(ofile, OBJ_BEGIN_EXTRN_DEF);

  SYMBOL_ID ext_id = sym_external_id(sym);
  assert(ext_id >= 0);
  if (ext_id > (WORD)(-1))
    fatal("cannot emit external symbol ID beyond 64K\n");
  emit_object_word(ofile, OBJ_ID, ext_id);

  emit_string(ofile, OBJ_NAME, sym_name(sym));

  emit_segno(ofile, sym_seg(sym));

  emit_object_signal(ofile, OBJ_END_EXTRN_DEF);
}

static void emit_public(const SYMBOL*, OFILE*);

static void emit_publics(SYMTAB* st, OFILE* ofile) {
  SYM_FIND find;
  for (const SYMBOL* sym = sym_first(st, &find); sym; sym = sym_next(&find)) {
    if (sym_public(sym))
      emit_public(sym, ofile);
  }
}

static void emit_public(const SYMBOL* sym, OFILE* ofile) {
  assert(sym_public(sym));
  assert(sym_type(sym) == SYM_RELATIVE);
  assert(!sym_external(sym));
  assert(sym_defined(sym));

  emit_object_signal(ofile, OBJ_BEGIN_PUBLIC);

  emit_string(ofile, OBJ_NAME, sym_name(sym));

  emit_segno(ofile, sym_seg(sym));

  DWORD offset = sym_relative_value(sym);
  if (offset > (WORD)(-1))
    fatal("cannot emit offset beyond 64K\n");
  emit_object_word(ofile, OBJ_OFFSET, (WORD) offset);

  emit_object_signal(ofile, OBJ_END_PUBLIC);
}

static void perform_directive(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void process_instruction(STATE*, IFILE*, IREC*, LEX*, OFILE*);

static void process_irec(STATE* state, IFILE* ifile, LEX* lex, OFILE* ofile) {
  IREC* irec = get_irec(ifile, ifile->pos);

  lex_begin(lex, irec_text(ifile, irec), irec_lineno(ifile, irec), irec->operand_pos);

  define_dollar(state, ifile);

  if (token_is_directive(irec->op))
    perform_directive(state, ifile, irec, lex, ofile);
  else if (token_is_opcode(irec->op))
    process_instruction(state, ifile, irec, lex, ofile);
  else
    assert(irec->op == TOK_NONE);

  if (lex_token(lex) != TOK_EOL)
    error2(state, lex, "extra on line: %s", token_name(lex_token(lex)));
}

static void do_align(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_assume(STATE*, IFILE*, IREC*, LEX*);
static void do_codeseg(STATE*, IFILE*, LEX*, OFILE*);
static void do_dataseg(STATE*, IFILE*, LEX*, OFILE*);
static void do_end(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_ends(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_extrn(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_org(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_public(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_segment(STATE*, IFILE*, IREC*, LEX*, OFILE*);
static void do_udataseg(STATE*, IFILE*, LEX*, OFILE*);

typedef DWORD EMIT_EXPR(STATE*, IFILE*, OFILE*, int expr_type, VALUE*);

static void define_data(STATE*, IFILE*, IREC*, LEX*, OFILE*,
                        const char* descrip, bool valid_expr_type(int), EMIT_EXPR*);

static DWORD emit_byte_expr(STATE*, IFILE*, OFILE*, int expr_type, VALUE*);
static DWORD emit_word_expr(STATE*, IFILE*, OFILE*, int expr_type, VALUE*);
static DWORD emit_dword_expr(STATE*, IFILE*, OFILE*, int expr_type, VALUE*);
static DWORD emit_qword_expr(STATE*, IFILE*, OFILE*, int expr_type, VALUE*);
static DWORD emit_tbyte_expr(STATE*, IFILE*, OFILE*, int expr_type, VALUE*);

static void perform_directive(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(irec != NULL);
  assert(token_is_directive(irec->op));

  switch (irec->op) {
    case TOK_IDEAL: break;
    case TOK_ALIGN: do_align(state, ifile, irec, lex, ofile); break;
    case TOK_ASSUME: do_assume(state, ifile, irec, lex); break;
    case TOK_CODESEG: do_codeseg(state, ifile, lex, ofile); break;
    case TOK_DATASEG: do_dataseg(state, ifile, lex, ofile); break;
    case TOK_DB: define_data(state, ifile, irec, lex, ofile, "byte", valid_byte_expr, emit_byte_expr); break;
    case TOK_DW: define_data(state, ifile, irec, lex, ofile, "word", valid_word_expr, emit_word_expr); break;
    case TOK_DD: define_data(state, ifile, irec, lex, ofile, "dword", valid_dword_expr, emit_dword_expr); break;
    case TOK_DQ: define_data(state, ifile, irec, lex, ofile, "qword", valid_qword_expr, emit_qword_expr); break;
    case TOK_DT: define_data(state, ifile, irec, lex, ofile, "tbyte", valid_tbyte_expr, emit_tbyte_expr); break;
    case TOK_END: do_end(state, ifile, irec, lex, ofile); break;
    case TOK_ENDS: do_ends(state, ifile, irec, lex, ofile); break;
    case TOK_EQU: lex_discard_line(lex); break; // already handled
    case '=': lex_discard_line(lex); break; // already handled
    case TOK_EXTRN: do_extrn(state, ifile, irec, lex, ofile); break;
    case TOK_GROUP: lex_discard_line(lex); break; // already handled
    case TOK_JUMPS: state->jumps = true; break;
    case TOK_MODEL: lex_discard_line(lex); break; // already handled
    case TOK_ORG: do_org(state, ifile, irec, lex, ofile); break;
    case TOK_PUBLIC: do_public(state, ifile, irec, lex, ofile); break;
    case TOK_SEGMENT: do_segment(state, ifile, irec, lex, ofile); break;
    case TOK_UDATASEG: do_udataseg(state, ifile, lex, ofile); break;
    // select processor
    case TOK_P286:
    case TOK_P286N:
    case TOK_P287:
    case TOK_P8086:
    case TOK_P8087:
    case TOK_PNO87:
      select_cpu(state, irec->op);
      break;
    default:
      error(state, ifile, "directive not implemented: %s", token_name(irec->op));
  }
}

static void do_end(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->op == TOK_END);
  assert(lex != NULL);

  if (state->curseg != NO_SEG) {
    assert(ifile->model_group); // otherwise caught in pass 1
    assert(state->curseg >= 0 && state->curseg < 0x100);
    emit_object_byte(ofile, OBJ_CLOSE_SEGMENT, (BYTE) state->curseg);
    state->curseg = NO_SEG;
  }

  if (lex_token(lex) == TOK_LABEL)
    // start label set in pass 1
    lex_next(lex);
}

static void skip_segment_attributes(LEX*);

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

  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym == NULL || sym_type(sym) != SYM_SECTION || sym_section_type(sym) != ST_SEGMENT) {
    error2(state, lex, "segment name expected: %s", lex_lexeme(lex));
    exit(EXIT_FAILURE);
  }

  state->curseg = sym_section_ordinal(sym);
  assert(state->curseg >= 0);
  if (state->curseg > 0xff)
    fatal("cannot emit segment number > 255\n");
  if (!segment_uninit(ifile, state->curseg))
    emit_object_byte(ofile, OBJ_OPEN_SEGMENT, (BYTE) state->curseg);

  skip_segment_attributes(lex);
}

static void skip_segment_attributes(LEX* lex) {
  for (;;) {
    switch (lex_next(lex)) {
      default:
        return;
      // segment type
      case TOK_PRIVATE:
      case TOK_PUBLIC:
      case TOK_STACK:
      case TOK_UNINIT:
      // segment alignment
      case TOK_BYTE:
      case TOK_WORD:
      case TOK_DWORD:
      case TOK_PAGE:
      case TOK_PARA:
        break;
    }
  }
}

static void do_ends(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(state->curseg >= 0 && state->curseg < 0x100);

  if (!segment_uninit(ifile, state->curseg))
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

  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym == NULL || !sym_defined(sym) || sym_type(sym) != SYM_SECTION) {
    error2(state, lex, "phase error: defined segment or group expected: %s", lex_lexeme(lex));
    exit(EXIT_FAILURE);
  }

  state->assume_sym[reg] = sym;

  lex_next(lex);
}

static void do_codeseg(STATE* state, IFILE* ifile, LEX* lex, OFILE* ofile) {
  if (state->curseg != NO_SEG) {
    assert(state->curseg >= 0 && state->curseg < 0x100);
    emit_object_byte(ofile, OBJ_CLOSE_SEGMENT, (BYTE) state->curseg);
    state->curseg = NO_SEG;
  }
  perform_codeseg(state, ifile, lex);
  assert(state->curseg >= 0 && state->curseg < 0x100);
  emit_object_byte(ofile, OBJ_OPEN_SEGMENT, (BYTE) state->curseg);
}

static void do_dataseg(STATE* state, IFILE* ifile, LEX* lex, OFILE* ofile) {
  if (state->curseg != NO_SEG) {
    assert(state->curseg >= 0 && state->curseg < 0x100);
    emit_object_byte(ofile, OBJ_CLOSE_SEGMENT, (BYTE) state->curseg);
    state->curseg = NO_SEG;
  }
  perform_dataseg(state, ifile, lex);
  assert(state->curseg >= 0 && state->curseg < 0x100);
  emit_object_byte(ofile, OBJ_OPEN_SEGMENT, (BYTE) state->curseg);
}

static void do_udataseg(STATE* state, IFILE* ifile, LEX* lex, OFILE* ofile) {
  if (state->curseg != NO_SEG) {
    assert(state->curseg >= 0 && state->curseg < 0x100);
    emit_object_byte(ofile, OBJ_CLOSE_SEGMENT, (BYTE) state->curseg);
    state->curseg = NO_SEG;
  }
  perform_udataseg(state, ifile, lex);
  assert(state->curseg >= 0 && state->curseg < 0x100);
  emit_object_byte(ofile, OBJ_OPEN_SEGMENT, (BYTE) state->curseg);
}

static void do_align(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->op == TOK_ALIGN);
  assert(lex != NULL);
  assert(ofile != NULL);

  unsigned p2 = 0;
  if (parse_alignment(state, lex, &p2)) {
    DWORD pc = segment_pc(ifile, state->curseg);
    DWORD new_pc = p2aligned(pc, p2);
    if (irec->size != new_pc - pc)
      error2(state, lex, "internal error: alignment size discrepancy: sized %lu, encoding %lu",
             (unsigned long) irec->size, (unsigned long) (new_pc - pc));
    set_segment_pc(ifile, state->curseg, new_pc);
    if (p2 >= 0x100)
      error2(state, lex, "alignment too big");
    emit_object_byte(ofile, OBJ_P2ALIGN, p2);
  }
}

static DWORD generate_data(STATE* state, IFILE* ifile, OFILE* ofile, const DATA_NODE* node, EMIT_EXPR*);

static void define_data(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile,
                        const char* descrip, bool valid_expr_type(int), EMIT_EXPR* emit_expr) {

  if (state->curseg == NO_SEG) {
    error(state, ifile, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  struct db_node * root = parse_data_list(state, ifile, lex, valid_expr_type, descrip);

  DWORD size = generate_data(state, ifile, ofile, root, emit_expr);

  if (size != irec->size) {
    error(state, ifile, "internal error: data size discrepancy: sized %lu, emitted %lu",
          (unsigned long) irec->size, (unsigned long) size);
    exit(EXIT_FAILURE);
  }

  free_db_node(root);
}

static DWORD generate_data(STATE* state, IFILE* ifile, OFILE* ofile, const DATA_NODE* node, EMIT_EXPR* emit_expr) {
  DWORD size = 0;

  for ( ; node; node = node->next) {
    if (node->type == DB_DUP) {
      for (unsigned i = 0; i < node->u.dup.count; i++)
        size += generate_data(state, ifile, ofile, node->u.dup.data, emit_expr);
    }
    else {
      VALUE val;
      int type = eval(state, ifile, node->u.expr.ast, &val);
      if (type != ET_ERR) {
        assert(type == node->u.expr.type);
        DWORD sz = emit_expr(state, ifile, ofile, type, &val);
        if (sz == 0)
          error(state, ifile, "unexpected expression type");
        size += sz;
      }
    }
  }

  return size;
}

static DWORD emit_byte_expr(STATE* state, IFILE* ifile, OFILE* ofile, int type, VALUE* val) {
  DWORD size = 0;

  switch (type) {
    case ET_UNDEF:
      size = 1;
      break;
    case ET_ABS:
      emit_object_byte(ofile, OBJ_DB, (BYTE) val->n);
      size = 1;
      break;
    case ET_STR:
      emit_object_data(ofile, OBJ_DS, val->string.content, val->string.len);
      size = val->string.len;
      break;
  }

  inc_segment_pc(ifile, state->curseg, size);
  return size;
}

static DWORD emit_word_expr(STATE* state, IFILE* ifile, OFILE* ofile, int type, VALUE* val) {
  DWORD size = 0;

  switch (type) {
    case ET_ERR:
      break;
    case ET_UNDEF:
      size = 2;
      break;
    case ET_ABS:
    case ET_REL_DIFF:
      emit_object_word(ofile, OBJ_DW, (WORD) val->n);
      size = 2;
      break;
    case ET_REL:
    case ET_OFFSET:
      if (relocatable_relative(ifile, val->label)) {
        emit_object_signal(ofile, OBJ_BEGIN_OFFSET);
        emit_object_word(ofile, OBJ_POS, (WORD) segment_pc(ifile, state->curseg));
        emit_segno(ofile, sym_seg(val->label));
        emit_object_signal(ofile, OBJ_END_OFFSET);
      }
      emit_object_word(ofile, OBJ_DW, (WORD) sym_relative_value(val->label));
      size = 2;
      break;
    case ET_SEC:
      if (sym_section_type(val->label) == ST_SEGMENT) {
        emit_object_signal(ofile, OBJ_BEGIN_SEG_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD) segment_pc(ifile, state->curseg));
        emit_segno(ofile, sym_section_ordinal(val->label));
        emit_object_signal(ofile, OBJ_END_SEG_ADDR);
      }
      else {
        assert(sym_section_type(val->label) == ST_GROUP);
        emit_object_signal(ofile, OBJ_BEGIN_GROUP_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD) segment_pc(ifile, state->curseg));
        emit_groupno(ofile, sym_section_ordinal(val->label));
        emit_object_signal(ofile, OBJ_END_GROUP_ADDR);
      }
      emit_object_word(ofile, OBJ_DW, 0);
      size = 2;
      break;
    case ET_SEG: {
      SEGNO segno = sym_seg(val->label);
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
      if (make_absolute(type, val)) {
        emit_object_word(ofile, OBJ_DW, (WORD)val->n);
        size = 2;
      }
      break;
  }

  inc_segment_pc(ifile, state->curseg, size);
  return size;
}

static DWORD emit_dword_expr(STATE* state, IFILE* ifile, OFILE* ofile, int type, VALUE* val) {
  DWORD size = 0;

  if (type == ET_UNDEF)
    size = 4;
  else if (make_absolute(type, val)) {
    emit_object_dword(ofile, OBJ_DD, (DWORD) val->n);
    size = 4;
  }

  inc_segment_pc(ifile, state->curseg, size);
  return size;
}

static DWORD emit_qword_expr(STATE* state, IFILE* ifile, OFILE* ofile, int type, VALUE* val) {
  DWORD size = 0;

  if (type == ET_UNDEF)
    size = 8;
  else if (make_absolute(type, val)) {
    emit_object_qword(ofile, OBJ_DQ, val->n);
    size = 8;
  }

  inc_segment_pc(ifile, state->curseg, size);
  return size;
}

static DWORD emit_tbyte_expr(STATE* state, IFILE* ifile, OFILE* ofile, int type, VALUE* val) {
  DWORD size = 0;

  if (type == ET_UNDEF)
    size = 10;
  else if (make_absolute(type, val)) {
    emit_object_qword(ofile, OBJ_DT, val->n);
    size = 10;
  }

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

  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym == NULL || sym_type(sym) != SYM_RELATIVE || !sym_public(sym))
    error2(state, lex, "phase error: public symbol not set up correctly: %s", lex_lexeme(lex));
  else if (!sym_defined(sym))
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

  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym == NULL || sym_type(sym) != SYM_RELATIVE || !sym_external(sym))
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
  const SYMBOL* symbol;
} RELOC_REQ;

typedef struct {
  DWORD pos;
  short type;
  BOOL jump; // relative to instruction; otherwise data displacement
  const SYMBOL* symbol;
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
  p->relocs[p->count].symbol = req->symbol;
  p->count++;
}

static void emit_relocation(STATE*, IFILE*, const RELOC_INF*, OFILE*);

static unsigned encode_instruction(STATE*, IFILE*, IREC*, LEX*,
                                   const OPERAND* oper1, const OPERAND* oper2, const OPERAND* oper3,
                                   BYTE* buf, RELOC_LIST*);

static unsigned encode_near_direct_jump(STATE*, IFILE*, IREC*, LEX*, const OPERAND*, BYTE* buf, RELOC_LIST*);

static void process_instruction(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, OFILE* ofile) {
  BYTE buf[16];
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

  const SYMBOL* cs_assume_sym = state->assume_sym[SR_CS];
  if (cs_assume_sym == NULL) {
    error2(state, lex, "CS has no ASSUME");
    lex_discard_line(lex);
    return;
  }
  assert(sym_type(cs_assume_sym) == SYM_SECTION);
  switch (sym_section_type(cs_assume_sym)) {
    case ST_SEGMENT:
      if (sym_section_ordinal(cs_assume_sym) != state->curseg) {
        error2(state, lex, "CS is not the current segment");
        return;
      }
      break;
    case ST_GROUP: {
      int assume_group = sym_section_ordinal(cs_assume_sym);
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

  OPERAND oper1, oper2, oper3;
  if (!parse_operands(state, ifile, lex, &oper1, &oper2, &oper3)) {
    lex_discard_line(lex);
    return;
  }

  RELOC_LIST relocs;
  init_reloc_list(&relocs);

  if (irec->near_jump_size) {
    assert(oper2.opclass.type == OT_NONE);
    assert(oper3.opclass.type == OT_NONE);
    encoded = encode_near_direct_jump(state, ifile, irec, lex, &oper1, buf, &relocs);
  }
  else
    encoded = encode_instruction(state, ifile, irec, lex, &oper1, &oper2, &oper3, buf, &relocs);

  if (encoded != irec->size) {
    error2(state, lex, "internal error: instruction size discrepancy: sized %lu encoded %u",
          (unsigned long) irec->size, encoded);
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
      emit_segno(ofile, sym_seg(rel->symbol));
      emit_object_signal(ofile, OBJ_END_OFFSET);
      break;
    case RT_EXTERNAL:
      emit_object_signal(ofile, OBJ_BEGIN_EXTRN_USE);
      emit_object_word(ofile, OBJ_POS, (WORD)pos);
      SYMBOL_ID ext_id = sym_external_id(rel->symbol);
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
      emit_groupno(ofile, sym_section_ordinal(rel->symbol));
      emit_object_signal(ofile, OBJ_END_GROUP_ABS_JUMP);
      break;
    case RT_SECTION:
      if (sym_section_type(rel->symbol) == ST_SEGMENT) {
        emit_object_signal(ofile, OBJ_BEGIN_SEG_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD)pos);
        emit_segno(ofile, sym_section_ordinal(rel->symbol));
        emit_object_signal(ofile, OBJ_END_SEG_ADDR);
      }
      else {
        assert(sym_section_type(rel->symbol) == ST_GROUP);
        emit_object_signal(ofile, OBJ_BEGIN_GROUP_ADDR);
        emit_object_word(ofile, OBJ_POS, (WORD)pos);
        emit_groupno(ofile, sym_section_ordinal(rel->symbol));
        emit_object_signal(ofile, OBJ_END_GROUP_ADDR);
      }
      break;
    case RT_SEG: {
      SEGNO segno = sym_seg(rel->symbol);
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
    const OPERAND* oper, BYTE* buf, RELOC_LIST* relocs) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->op == TOK_JMP);
  assert(lex != NULL);
  assert(oper != NULL);
  assert(oper->opclass.type == OT_JUMP);
  assert(buf != NULL);
  assert(relocs != NULL);

  unsigned i = 0;

  switch (irec->near_jump_size) {
    case 1: buf[i++] = 0xEB; break;
    case 2: buf[i++] = 0xE9; break;
    default: assert(0 && "unexpected jump displacement size"); break;
  }

  return encode_relative(state, ifile, irec, lex, oper, irec->near_jump_size, buf, i, relocs);
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
  assert(oper1->opclass.type == OT_JUMP);
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
    const SYMBOL* CS = state->assume_sym[SR_CS];
    // if CS -> group, absolute address is relative to start of group
    if (sym_section_type(CS) == ST_GROUP) {
      assert(disp_size == 2);
      rel.type = RT_GROUP_ABSOLUTE_JUMP;
      rel.symbol = CS;
      add_reloc(relocs, &rel, JUMP_RELOC, i);
      write_word_le(buf + i, (WORD) dest);
      return i + 2;
    }
    // otherwise absolute address is relative to start of this module segment
    encode_disp(state, lex, dest, pc + i, disp_size, buf + i);
    return i + disp_size;
  }

  assert(oper1->val.jump.target_type == LABEL_JUMP);
  assert(oper1->val.jump.target.label != NULL);
  const SYMBOL* sym = oper1->val.jump.target.label;
  assert(sym_type(sym) == SYM_RELATIVE);

  const char* name = sym_name(sym);

  if (!sym_defined(sym))
    fatal("internal: symbol not defined in encoding pass: %s\n", name);

  rel.symbol = sym;

  if (sym_external(sym)) {
    assert(disp_size == 2);
    rel.type = RT_EXTERNAL;
    add_reloc(relocs, &rel, JUMP_RELOC, i);
    buf[i++] = 0;
    buf[i++] = 0;
    return i;
  }

  assert(sym_seg(sym) != NO_SEG);
  if (sym_seg(sym) == state->curseg) {
    DWORD dest = sym_relative_value(sym);
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
    assert(oper1->opclass.type == OT_JUMP);
    assert(oper1->val.jump.distance == FAR);

    if (oper1->val.jump.target_type == FAR_JUMP) {
      write_word_le(buf + i, oper1->val.jump.target.far.offset);
      i += 2;
      write_word_le(buf + i, oper1->val.jump.target.far.seg);
      i += 2;
      return i;
    }

    assert(oper1->val.jump.target_type == LABEL_JUMP);
    const SYMBOL* label = oper1->val.jump.target.label;
    assert(sym_type(label) == SYM_RELATIVE);

    // offset relocation is DATA_RELOC not JUMP_RELOC
    // because it is offset in segment, not PC-relative
    RELOC_REQ rel;
    rel.symbol = label;

    if (sym_external(label)) {
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
      write_word_le(buf + i, (WORD) sym_relative_value(label));
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

static void encode_immediate(IFILE*, const OPERAND*, unsigned bytes, BYTE* buf, unsigned i, RELOC_LIST*);

static unsigned encode_instruction(STATE* state, IFILE* ifile, IREC* irec, LEX* lex,
                                   const OPERAND* oper1, const OPERAND* oper2, const OPERAND* oper3,
                                   BYTE* buf, RELOC_LIST* relocs) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->def != NULL);
  assert(buf != NULL);
  assert(relocs != NULL);
  assert(relocs->count == 0);

  assert(oper3 != NULL);
  assert(oper3->opclass.type == OT_NONE || oper3->opclass.type == OT_IMM);

  assert(state->curseg != NO_SEG);
  const DWORD pc = segment_pc(ifile, state->curseg);

  unsigned i = 0;
  BYTE sreg_code;

  match_operand_sizes(state, lex, irec->def->oper1, irec->def->oper2, oper1, oper2);

  for (unsigned j = 0; j < wait_needed(state, irec->def); j++)
    buf[i++] = WAIT_OPCODE;

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
    case 1: buf[i] += oper1->val.reg.no; break;
    case 2: buf[i] += oper2->val.reg.no; break;
  }
  i++;

  unsigned disp_len = 0;
  DWORD disp_code;

  RELOC_REQ rel;
  rel.type = RT_NONE;

  if (irec->def->oper1 == OF_JUMP)
    return encode_relative(state, ifile, irec, lex, oper1, irec->def->imm1, buf, i, relocs);

  if (irec->def->oper1 == OF_FAR)
    return encode_far(ifile, oper1, buf, i, relocs);

  // ModR/M byte
  if (irec->def->modrm == CCC)
    buf[i++] = irec->def->opcode2;
  else if (irec->def->modrm != RMN) {
    unsigned mod, rm, reg;
    switch (irec->def->modrm) {
      case RRM:
        compute_rm(state, ifile, oper2, &mod, &rm, &disp_len, &disp_code, &rel);
        reg = oper1->val.reg.no;
        break;
      case RMR:
        compute_rm(state, ifile, oper1, &mod, &rm, &disp_len, &disp_code, &rel);
        reg = oper2->val.reg.no;
        break;
      case RMC:
      case MMC:
        compute_rm(state, ifile, oper1, &mod, &rm, &disp_len, &disp_code, &rel);
        reg = irec->def->reg;
        break;
      case REG:
        reg = oper1->val.reg.no;
        rm = reg;
        mod = 3;
        break;
      case SSI:
        mod = 3;
        reg = irec->def->reg;
        rm = oper2->val.reg.no;
        break;
      case SIS:
        mod = 3;
        reg = irec->def->reg;
        rm = oper1->val.reg.no;
        break;
      case SSC:
        mod = 3;
        reg = irec->def->reg;
        rm = 0;
        break;
      case SIC:
        mod = 3;
        reg = irec->def->reg;
        rm = oper1->val.reg.no;
        break;
      case STC:
        mod = 3;
        reg = irec->def->reg;
        rm = 0;
        break;
      case STK:
        mod = 3;
        reg = irec->def->reg;
        rm = 1;
        break;
      default:
        fatal("internal error: %s: %d: unknown ModR/M type: %d\n", __FILE__, __LINE__, (int) irec->def->modrm);
        break;
    }
    buf[i++] = encode_modrm(mod, reg, rm);
  }
  else if (irec->def->oper1 == OF_INDIR) {
    assert(oper1->opclass.type == OT_MEM);
    disp_code = displacement_code(ifile, &oper1->val.mem, &rel);
    disp_len = 2;
  }
  else if (irec->def->oper2 == OF_INDIR) {
    assert(oper2->opclass.type == OT_MEM);
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

  if (irec->def->imm1) {
    encode_immediate(ifile, oper1, irec->def->imm1, buf, i, relocs);
    i += irec->def->imm1;
  }

  if (irec->def->imm2) {
    encode_immediate(ifile, oper2, irec->def->imm2, buf, i, relocs);
    i += irec->def->imm2;
  }

  if (irec->def->imm3) {
    encode_immediate(ifile, oper3, irec->def->imm3, buf, i, relocs);
    i += irec->def->imm3;
  }

  return i;
}

static long immediate_value(IFILE*, const struct imm *, RELOC_REQ*);

static void encode_immediate(IFILE* ifile, const OPERAND* oper, unsigned bytes, BYTE* buf, unsigned i, RELOC_LIST* relocs) {
  assert(bytes != 0);

  long val = 0;
  WORD w = 0;

  RELOC_REQ rel;
  rel.type = RT_NONE;

  if (oper->opclass.type == OT_IMM)
    val = immediate_value(ifile, &oper->val.imm, &rel);

  if (rel.type != RT_NONE) {
    if (bytes != 2)
      fatal("internal error: relocation length %u\n", bytes);
    add_reloc(relocs, &rel, DATA_RELOC, i);
  }

  w = (WORD) encode_long(val);

  buf[i++] = w & 0xff;
  if (bytes > 1)
    buf[i++] = (w >> 8) & 0xff;
}

static long relative_symbol_value(IFILE*, const SYMBOL*, RELOC_REQ*);

static long immediate_value(IFILE* ifile, const struct imm * imm, RELOC_REQ* rel) {
  assert(ifile != NULL);
  assert(imm != NULL);
  assert(rel != NULL);

  switch (imm->type) {
    case IMM_ABS:
      assert(imm->label == NULL);
      rel->type = RT_NONE;
      return imm->sval;
    case IMM_OFFSET:
      assert(imm->label != NULL);
      return relative_symbol_value(ifile, imm->label, rel);
    case IMM_SEG:
      assert(imm->label != NULL);
      assert(imm->sval == 0);
      rel->type = RT_SEG;
      rel->symbol = imm->label;
      return 0;
    case IMM_SECTION:
      assert(imm->label != NULL);
      assert(imm->sval == 0);
      rel->type = RT_SECTION;
      rel->symbol = imm->label;
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
  assert(m->disp.label != NULL);
  return relative_symbol_value(ifile, m->disp.label, rel);
}

static long relative_symbol_value(IFILE* ifile, const SYMBOL* sym, RELOC_REQ* rel) {
  assert(sym_type(sym) == SYM_RELATIVE);

  const char* name = sym_name(sym);

  if (!sym_defined(sym))
    fatal("internal: symbol not defined in encoding pass: %s\n", name);

  rel->symbol = sym;

  if (sym_external(sym)) {
    rel->type = RT_EXTERNAL;
    return 0;
  }

  DWORD addr = sym_relative_value(sym);
  if (addr > LONG_MAX)
    fatal("address out of range for signed displacement: %s\n", name);

  if (relocatable_relative(ifile, sym))
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

  if (oper1 && oper1->opclass.type == OT_MEM)
    return operand_sreg_override(state, ifile, lex, &oper1->val.mem, code);

  if (oper2 && oper2->opclass.type == OT_MEM)
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

static BOOL addressable(STATE*, IFILE*, const SYMBOL* label, int sreg);

static BOOL addressable_at_all(STATE*, IFILE*, const SYMBOL* label, int *sreg);

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

  error2(state, lex, "not accessible via any segment register: %s", sym_name(m->disp.label));
  return FALSE;
}

static BOOL addressable(STATE* state, IFILE* ifile, const SYMBOL* label, int sreg) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(label != NULL);
  assert(sym_type(label) == SYM_RELATIVE);
  assert(sreg >= 0 && sreg < N_SREG);

  const SYMBOL* assume_sym = state->assume_sym[sreg];
  if (assume_sym == NULL)
    return FALSE;

  SEGNO symbol_seg = sym_seg(label);
  assert(symbol_seg != NO_SEG);

  GROUPNO symbol_group = segment_group(ifile, symbol_seg);
  if (symbol_group == NO_GROUP) {
    if (sym_section_type(assume_sym) == ST_SEGMENT) {
      SEGNO sreg_seg = sym_section_ordinal(assume_sym);
      return symbol_seg == sreg_seg;
    }
    assert(sym_section_type(assume_sym) == ST_GROUP);
    return FALSE;
  }

  if (sym_section_type(assume_sym) == ST_SEGMENT)
    return FALSE;

  GROUPNO sreg_group = sym_section_ordinal(assume_sym);
  return symbol_group == sreg_group;
}

// TODO: efficiency of algorithm.
static BOOL addressable_at_all(STATE* state, IFILE* ifile, const SYMBOL* label, int *sreg) {
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

static void compute_rm(STATE* state, IFILE* ifile, const OPERAND* oper,
                       unsigned *mod, unsigned *rm, unsigned *disp_len,
                       DWORD *disp_code, RELOC_REQ* rel) {
  assert(ifile != NULL);
  assert(oper != NULL);
  assert(oper->opclass.type == OT_MEM || oper->opclass.type == OT_REG);
  assert(mod != NULL);
  assert(rm != NULL);
  assert(disp_len != NULL);
  assert(disp_code != NULL);
  assert(rel != NULL);

  rel->type = RT_NONE;

  if (oper->opclass.type == OT_REG) {
    *mod = 3;
    *rm = oper->val.reg.no;
    *disp_len = 0;
    return;
  }

  if (oper->opclass.type != OT_MEM)
    fatal("internal: compute_rm: unexpected operand type\n");

  const struct mem * const m = &oper->val.mem;

  long disp;
  *disp_len = mem_disp_len(state, ifile, oper, &disp, rel);
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

static unsigned mem_disp_len(STATE* state, IFILE* ifile, const OPERAND* oper, long *disp, RELOC_REQ* rel) {
  assert(ifile != NULL);
  assert(oper != NULL);
  assert(oper->opclass.type == OT_MEM);
  assert(disp != NULL);

  const struct mem * const m = &oper->val.mem;

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
  assert(m->disp.label != NULL);
  assert(sym_type(m->disp.label) == SYM_RELATIVE);
  assert(sym_defined(m->disp.label));

  if (sym_external(m->disp.label)) {
    rel->type = RT_EXTERNAL;
    rel->symbol = m->disp.label;
    *disp = 0;
    return 2;
  }

  DWORD val = sym_relative_value(m->disp.label);
  if (val > LONG_MAX) {
    error(state, ifile, "address out of range for signed displacement\n");
    val = 0;
  }
  *disp = val;

  if (relocatable_relative(ifile, m->disp.label)) {
    rel->type = RT_OFFSET;
    rel->symbol = m->disp.label;
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
  SYMBOL dummy;

  init_reloc_list(&list);
  CuAssertIntEquals(tc, 0, list.count);

  req.type = RT_OFFSET;
  req.symbol = &dummy;
  add_reloc(&list, &req, JUMP_RELOC, 0x1234);
  CuAssertIntEquals(tc, 1, list.count);
  CuAssertIntEquals(tc, RT_OFFSET, list.relocs[0].type);
  CuAssertTrue(tc, list.relocs[0].symbol == &dummy);
  CuAssertIntEquals(tc, 0x1234, list.relocs[0].pos);
  CuAssertIntEquals(tc, TRUE, list.relocs[0].jump);
}

CuSuite* encoding_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_reloc);
  return suite;
}

#endif // UNIT_TEST
