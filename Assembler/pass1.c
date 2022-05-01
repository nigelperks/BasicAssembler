// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Pass 1: define labels, determine instruction sizes (provisional).

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <limits.h>
#include <stdbool.h>
#include <assert.h>
#include "pass1.h"
#include "ifile.h"
#include "lexer.h"
#include "token.h"
#include "symbol.h"
#include "instable.h"
#include "operand.h"
#include "parse.h"
#include "common.h"

static void process_irec(STATE*, IFILE*, LEX*);

static void check_symbols_defined(IFILE*);

void pass1(IFILE* ifile, const Options* options) {
  STATE state;
  LEX* lex = NULL;

  if (options->quiet == FALSE)
    puts("Pass 1");

  init_state(&state, options->max_errors);
  lex = new_lex(ifile->source);

  for (ifile->pos = 0; ifile->pos < irec_count(ifile); ifile->pos++)
    process_irec(&state, ifile, lex);

  delete_lex(lex);

  if (state.errors > 0) {
    fprintf(stderr, "Errors: %u\n", state.errors);
    exit(EXIT_FAILURE);
  }

  check_symbols_defined(ifile);
}

static BOOL define_label(STATE*, IFILE*, IREC*, LEX*);

static void perform_directive(STATE*, IFILE*, LEX*);
static void process_instruction(STATE*, IFILE*, LEX*);

static void process_irec(STATE* state, IFILE* ifile, LEX* lex) {
  IREC* irec = get_irec(ifile, ifile->pos);
  BOOL colon = FALSE;

  lex_begin(lex, irec->source, 0);

  if (lex_token(lex) == TOK_LABEL) {
    colon = define_label(state, ifile, irec, lex);
    if (!colon && !token_is_directive(lex_token(lex))) {
      if (irec->label == NULL)
        error2(state, lex, "':' expected after label");
      else
        error2(state, lex, "':' expected after label '%s'", sym_name(irec->label));
    }
  }

  irec->operand_pos = lex_pos(lex);

  if (token_is_directive(lex_token(lex))) {
    perform_directive(state, ifile, lex);
    if (lex_token(lex) != TOK_EOL)
      error2(state, lex, "extra on line: %s", token_name(lex_token(lex)));
  }
  else if (token_is_opcode(lex_token(lex)) || token_is_repeat(lex_token(lex))) {
    process_instruction(state, ifile, lex);
    if (lex_token(lex) != TOK_EOL)
      error2(state, lex, "extra on line: %s", token_name(lex_token(lex)));
  }
  else if (lex_token(lex) != TOK_EOL)
    error(state, ifile, "directive or instruction expected: %s", token_name(lex_token(lex)));
}

static BOOL eat_colon(LEX*);

static BOOL define_label(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_LABEL);

  irec->label = sym_lookup(ifile->st, lex_lexeme(lex));
  if (irec->label == NULL) {
    char* name = estrdup(lex_lexeme(lex));
    BOOL colon = FALSE;
    if (lex_next(lex) == TOK_EQU)
      irec->label = sym_insert_absolute(ifile->st, name);      
    else {
      colon = eat_colon(lex);
      if (state->curseg == NO_SEG)
        error2(state, lex, "label outside segment: %s", name);
      else {
        unsigned data_size = token_data_size(lex_token(lex));
        irec->label = sym_insert_relative(ifile->st, name);
        DWORD val = segment_pc(ifile, state->curseg);
        sym_define_relative(irec->label, state->curseg, data_size, val);
      }
    }
    efree(name);
    return colon;
  }

  lex_next(lex);

  if (sym_defined(irec->label))
    error2(state, lex, "label already defined: %s", sym_name(irec->label));
  else if (sym_type(irec->label) != SYM_RELATIVE)
    error2(state, lex, "not a relative label: %s", sym_name(irec->label));
  else if (lex_token(lex) == TOK_EQU)
    error2(state, lex, "EQU name is a relative label: %s", sym_name(irec->label));
  else if (state->curseg == NO_SEG)
    error2(state, lex, "label outside segment: %s", sym_name(irec->label));
  else {
    BOOL colon = eat_colon(lex);
    unsigned data_size = token_data_size(lex_token(lex));
    DWORD val = segment_pc(ifile, state->curseg);
    sym_define_relative(irec->label, state->curseg, data_size, val);
    return colon;
  }

  return eat_colon(lex);
}

static BOOL eat_colon(LEX* lex) {
    BOOL colon = FALSE;
    if (lex_token(lex) == ':') {
      colon = TRUE;
      lex_next(lex);
    }
    return colon;
}

static void check_symbols_defined(IFILE* ifile) {
  int i;
  unsigned count = 0;

  for (i = sym_begin(ifile->st); i < sym_end(ifile->st); i = sym_next(ifile->st, i)) {
    const SYMBOL* sym = get_sym(ifile->st, i);
    if (!sym_defined(sym)) {
      fprintf(stderr, "Error: %s: symbol used but not defined: %s\n",
              source_name(ifile->source), sym_name(sym));
      count++;
    }
  }

  if (count > 0) {
    fprintf(stderr, "Undefined symbols: %u\n", count);
    exit(EXIT_FAILURE);
  }
}

static void do_align(STATE*, IFILE*, LEX*);
static void do_assume(STATE*, IFILE*, LEX*);
static void do_codeseg(STATE*, IFILE*, LEX*);
static void do_dataseg(STATE*, IFILE*, LEX*);
static void do_end(STATE*, IFILE*, LEX*);
static void do_ends(STATE*, IFILE*, LEX*);
static void do_equ(STATE*, IFILE*, LEX*);
static void do_extrn(STATE*, IFILE*, LEX*);
static void do_group(STATE*, IFILE*, LEX*);
static void do_model(STATE*, IFILE*, LEX*);
static void do_org(STATE*, IFILE*, LEX*);
static void do_public(STATE*, IFILE*, LEX*);
static void do_segment(STATE*, IFILE*, LEX*);
static void do_udataseg(STATE*, IFILE*, LEX*);

static void define_bytes(STATE*, IFILE*, LEX*);
static void define_words(STATE*, IFILE*, LEX*);
static void define_dwords(STATE*, IFILE*, LEX*);
static void define_qwords(STATE*, IFILE*, LEX*);
static void define_tbytes(STATE*, IFILE*, LEX*);

static void perform_directive(STATE* state, IFILE* ifile, LEX* lex) {
  IREC* irec = get_irec(ifile, ifile->pos);

  assert(token_is_directive(lex_token(lex)));

  irec->op = lex_token(lex);

  switch (irec->op) {
    case TOK_IDEAL: lex_next(lex); break;
    case TOK_ALIGN: do_align(state, ifile, lex); break;
    case TOK_ASSUME: do_assume(state, ifile, lex); break;
    case TOK_CODESEG: do_codeseg(state, ifile, lex); break;
    case TOK_DATASEG: do_dataseg(state, ifile, lex); break;
    case TOK_DB: define_bytes(state, ifile, lex); break;
    case TOK_DD: define_dwords(state, ifile, lex); break;
    case TOK_DQ: define_qwords(state, ifile, lex); break;
    case TOK_DT: define_tbytes(state, ifile, lex); break;
    case TOK_DW: define_words(state, ifile, lex); break;
    case TOK_END: do_end(state, ifile, lex); break;
    case TOK_ENDS: do_ends(state, ifile, lex); break;
    case TOK_EQU: do_equ(state, ifile, lex); break;
    case TOK_EXTRN: do_extrn(state, ifile, lex); break;
    case TOK_GROUP: do_group(state, ifile, lex); break;
    case TOK_MODEL: do_model(state, ifile, lex); break;
    case TOK_ORG: do_org(state, ifile, lex); break;
    case TOK_PUBLIC: do_public(state, ifile, lex); break;
    case TOK_SEGMENT: do_segment(state, ifile, lex); break;
    case TOK_UDATASEG: do_udataseg(state, ifile, lex); break;
    // select processor
    case TOK_P8086:
    case TOK_P8087:
    case TOK_PNO87:
      select_cpu(state, lex);
      break;
    default:
      error2(state, lex, "directive not implemented: %s", token_name(irec->op));
      lex_discard_line(lex);
      break;
  }
}

static void do_equ(STATE* state, IFILE* ifile, LEX* lex) {
  IREC* irec = get_irec(ifile, ifile->pos);

  assert(lex_token(lex) == TOK_EQU);

  if (irec->label == NULL)
    error2(state, lex, "EQU without label");
  else if (sym_type(irec->label) != SYM_ABSOLUTE)
    error2(state, lex, "name already used as non-EQU: %s", sym_name(irec->label));
  else if (sym_defined(irec->label))
    error2(state, lex, "already defined: %s", sym_name(irec->label));
  else {
    lex_next(lex);
    union value val;
    switch (expr(state, ifile, lex, &val)) {
      case ET_ERR:
        break;
      case ET_ABS:
        sym_define_absolute(irec->label, (long) val.n);
        break;
      default:
        error2(state, lex, "absolute numeric expression expected for EQU");
        break;
    }
  }
}

static void do_end(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_END);

  if (state->curseg != NO_SEG) {
    if (ifile->model_group)
      state->curseg = NO_SEG;
    else
      error2(state, lex, "a segment is open: %s", segment_name(ifile, state->curseg));
  }

  if (lex_next(lex) == TOK_LABEL) {
    if (ifile->start_label != NULL)
      error2(state, lex, "start label has already been set");

    ifile->start_label = sym_lookup(ifile->st, lex_lexeme(lex));
    if (ifile->start_label == NULL)
      error2(state, lex, "start label not found: %s", lex_lexeme(lex));
    else if (sym_type(ifile->start_label) != SYM_RELATIVE)
      error2(state, lex, "start label must be a relative label");
    else if (sym_external(ifile->start_label))
      error2(state, lex, "start label may not be external");
    else if (!sym_defined(ifile->start_label))
      error2(state, lex, "start label is not defined");

    lex_next(lex);
  }
}

static unsigned get_segment_attributes(STATE*, LEX*, unsigned *p2align);
static bool segment_attributes_inconsistent(unsigned attr);
static bool segment_attributes_clash(unsigned attr1, unsigned attr2);

static void do_segment(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_SEGMENT);

  if (lex_next(lex) != TOK_LABEL) {
    error2(state, lex, "segment name expected");
    return;
  }

  if (state->curseg != NO_SEG)
    error2(state, lex, "segment %s is already open", segment_name(ifile, state->curseg));

  int seg = NO_SEG;
  bool reopen = false;

  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym == NULL) {
    sym = sym_insert_section(ifile->st, lex_lexeme(lex));
    seg = create_segment(ifile, lex_lexeme(lex));
    sym_define_section(sym, ST_SEGMENT, seg);
    state->curseg = seg;
  }
  else if (sym_type(sym) == SYM_SECTION) {
    if (sym_defined(sym)) {
      if (sym_section_type(sym) == ST_SEGMENT) {
        state->curseg = seg = sym_section_ordinal(sym);
        reopen = true;
      }
      else {
        error2(state, lex, "segment name expected: %s", sym_name(sym));
        lex_discard_line(lex);
        return;
      }
    }
    else {
      seg = create_segment(ifile, lex_lexeme(lex));
      sym_define_section(sym, ST_SEGMENT, seg);
      state->curseg = seg;
    }
  }
  else {
    error2(state, lex, "segment name expected: %s", sym_name(sym));
    lex_discard_line(lex);
    return;
  }

  assert(seg != NO_SEG);

  int p2align = DEFAULT_SEGMENT_P2ALIGN;
  unsigned attr = get_segment_attributes(state, lex, &p2align);

  if (segment_attributes_inconsistent(attr)) {
    error2(state, lex, "segment attributes are inconsistent");
    return;
  }

  if (reopen) {
    if (attr && attr != segment_attributes(ifile, seg)) {
      error2(state, lex, "segment attributes clash with previous definition");
      return;
    }
    if (p2align != segment_p2align(ifile, seg)) {
      error2(state, lex, "segment alignment clashes with previous definition");
      return;
    }
  }
  else {
    if (attr == 0)
      attr = ATTR_PRIVATE;
    set_segment_attributes(ifile, seg, attr);
    set_segment_p2align(ifile, seg, p2align);
  }
}

static void set_alignment(STATE*, LEX*, int *align_token);

static unsigned get_segment_attributes(STATE* state, LEX* lex, unsigned *p2align) {
  unsigned attr = 0;
  int align_token = TOK_NONE;
  bool done = false;
  for (int tok = lex_next(lex); !done; tok = lex_next(lex)) {
    switch (tok) {
      default:
        done = true;
        break;
      // segment type
      case TOK_PRIVATE:
        attr |= ATTR_PRIVATE;
        break;
      case TOK_PUBLIC:
        attr |= ATTR_PUBLIC;
        break;
      case TOK_STACK:
        attr |= ATTR_STACK;
        break;
      case TOK_UNINIT:
        attr |= ATTR_UNINIT;
        break;
      // segment alignment
      case TOK_BYTE:
      case TOK_WORD:
      case TOK_DWORD:
      case TOK_PAGE:
      case TOK_PARA:
        if (align_token != TOK_NONE && align_token != tok)
          error2(state, lex, "conflicting segment alignments");
        else
          align_token = tok;
        break;
    }
  }

  switch (align_token) {
    case TOK_BYTE: *p2align = 0; break;
    case TOK_WORD: *p2align = 1; break;
    case TOK_DWORD: *p2align = 2; break;
    case TOK_PARA: *p2align = 4; break;
    case TOK_PAGE: *p2align = 8; break;
  }

  return attr;
}

static bool segment_attributes_inconsistent(unsigned attr) {
  if (attr & ATTR_PRIVATE)
    return (attr & ATTR_PUBLIC) || (attr & ATTR_STACK);
  if (attr & ATTR_PUBLIC)
    return (attr & ATTR_STACK) != 0;
  return false;
}

static void do_ends(STATE* state, IFILE* ifile, LEX* lex) {
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_ENDS);

  lex_next(lex);
  perform_ends(state, ifile, lex);
}

static void assume(STATE*, IFILE*, LEX*);

static void do_assume(STATE* state, IFILE* ifile, LEX* lex) {
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_ASSUME);

  do {
    lex_next(lex);
    assume(state, ifile, lex);
  } while (lex_token(lex) == ',');
}

static void assume(STATE* state, IFILE* ifile, LEX* lex) {
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
  if (sym == NULL) {
    sym = sym_insert_section(ifile->st, lex_lexeme(lex));
    state->assume_sym[reg] = sym;
  }
  else if (sym_type(sym) == SYM_SECTION)
    state->assume_sym[reg] = sym;
  else
    error2(state, lex, "not a segment or group: %s", lex_lexeme(lex));

  lex_next(lex);
}

static int get_group(STATE*, IFILE*, LEX*);
static void group_segment(STATE*, IFILE*, LEX*, int group);

static void do_group(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_GROUP);

  lex_next(lex);

  int group = get_group(state, ifile, lex);
  if (group == -1)
    return;

  do {
    lex_next(lex);
    group_segment(state, ifile, lex, group);
  } while (lex_token(lex) == ',');
}

// Parse the GROUP name into a group ordinal; -1 on error.
static int get_group(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);

  if (lex_token(lex) != TOK_LABEL) {
    error2(state, lex, "group name expected");
    return -1;
  }

  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym == NULL) {
    sym = sym_insert_section(ifile->st, lex_lexeme(lex));
    int group = create_group(ifile, lex_lexeme(lex));
    sym_define_section(sym, ST_GROUP, group);
    return group;
  }
  if (sym_type(sym) == SYM_SECTION && !sym_defined(sym)) {
    int group = create_group(ifile, lex_lexeme(lex));
    sym_define_section(sym, ST_GROUP, group);
    return group;
  }
  error2(state, lex, "undefined group name expected: %s", sym_name(sym));
  return -1;
}

static void group_segment(STATE* state, IFILE* ifile, LEX* lex, int group) {
  if (lex_token(lex) != TOK_LABEL) {
    error2(state, lex, "segment name expected");
    return;
  }

  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym == NULL)
    error2(state, lex, "undefined: %s", lex_lexeme(lex));
  else if (sym_type(sym) != SYM_SECTION)
    error2(state, lex, "not a segment: %s", lex_lexeme(lex));
  else if (sym_section_type(sym) != ST_SEGMENT)
      error2(state, lex, "defined segment expected: %s", sym_name(sym));
  else {
    int seg = sym_section_ordinal(sym);
    if (segment_group(ifile, seg) != NO_GROUP)
      error2(state, lex, "already grouped: %s", sym_name(sym));
    else
      set_segment_group(ifile, seg, group);
  }

  lex_next(lex);
}

static void set_model_tiny(STATE*, IFILE*, LEX*);

static void do_model(STATE* state, IFILE* ifile, LEX* lex) {
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_MODEL);

  if (lex_next(lex) != TOK_LABEL) {
    error2(state, lex, "model name expected");
    lex_discard_line(lex);
    return;
  }

  if (ifile->model_group) {
    error2(state, lex, "a memory model has already been set");
    return;
  }

  if (_stricmp(lex_lexeme(lex), "tiny") == 0)
    set_model_tiny(state, ifile, lex);
  else {
    error2(state, lex, "model name expected");
    lex_discard_line(lex);
  }
}

static SYMBOL* model_segment(STATE*, IFILE*, LEX*, const char* name);
static SYMBOL* model_group(STATE*, IFILE*, LEX*, const char* name);

static void set_model_tiny(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_LABEL && _stricmp(lex_lexeme(lex), "tiny") == 0);

  lex_next(lex);

  if (ifile->nseg > 0) {
    error2(state, lex, "a segment has already been created");
    return;
  }

  if (ifile->ngroup > 0) {
    error2(state, lex, "a group has already been created");
    return;
  }

  SYMBOL* code = model_segment(state, ifile, lex, "_CODE");
  SYMBOL* data = model_segment(state, ifile, lex, "_DATA");
  SYMBOL* udata = model_segment(state, ifile, lex, "_BSS");

  SYMBOL* group = model_group(state, ifile, lex, "_GROUP");

  set_segment_group(ifile, sym_section_ordinal(code), sym_section_ordinal(group));
  set_segment_group(ifile, sym_section_ordinal(data), sym_section_ordinal(group));
  set_segment_group(ifile, sym_section_ordinal(udata), sym_section_ordinal(group));

  set_segment_attributes(ifile, sym_section_ordinal(code), ATTR_PUBLIC);
  set_segment_attributes(ifile, sym_section_ordinal(data), ATTR_PUBLIC);
  set_segment_attributes(ifile, sym_section_ordinal(udata), ATTR_PUBLIC | ATTR_UNINIT);

  ifile->codeseg = code;
  ifile->dataseg = data;
  ifile->udataseg = udata;
  ifile->model_group = group;

  state->assume_sym[SR_CS] = group;
  state->assume_sym[SR_DS] = group;
  state->assume_sym[SR_ES] = group;
  state->assume_sym[SR_SS] = group;
}

static SYMBOL* model_segment(STATE* state, IFILE* ifile, LEX* lex, const char* name) {
  SYMBOL* sym = sym_lookup(ifile->st, name);
  if (sym) {
    error2(state, lex, "cannot create segment because name already used: %s", name);
    return NULL;
  }
  sym = sym_insert_section(ifile->st, name);
  int seg = create_segment(ifile, name);
  set_segment_public(ifile, seg);
  set_segment_p2align(ifile, seg, 1);
  sym_define_section(sym, ST_SEGMENT, seg);
  return sym;
}

static SYMBOL* model_group(STATE* state, IFILE* ifile, LEX* lex, const char* name) {
  SYMBOL* sym = sym_lookup(ifile->st, name);
  if (sym) {
    error2(state, lex, "cannot create group because name already used: %s", name);
    return NULL;
  }
  sym = sym_insert_section(ifile->st, name);
  int group = create_group(ifile, name);
  sym_define_section(sym, ST_GROUP, group);
  return sym;
}

static void do_codeseg(STATE* state, IFILE* ifile, LEX* lex) {
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_CODESEG);
  lex_next(lex);
  perform_codeseg(state, ifile, lex);
}

static void do_dataseg(STATE* state, IFILE* ifile, LEX* lex) {
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_DATASEG);
  lex_next(lex);
  perform_dataseg(state, ifile, lex);
}

static void do_udataseg(STATE* state, IFILE* ifile, LEX* lex) {
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_UDATASEG);
  lex_next(lex);
  perform_udataseg(state, ifile, lex);
}

static void do_org(STATE* state, IFILE* ifile, LEX* lex) {
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_ORG);

  if (state->curseg == NO_SEG) {
    error2(state, lex, "ORG outside segment");
    lex_discard_line(lex);
    return;
  }

  if (segment_uninit(ifile, state->curseg)) {
    error2(state, lex, "ORG is not allowed in uninitialised segments");
    lex_discard_line(lex);
    return;
  }

  if (lex_next(lex) != TOK_NUM) {
    error2(state, lex, "numeric literal origin required");
    return;
  }

  if (lex_val(lex) < segment_pc(ifile, state->curseg))
    error2(state, lex, "ORG value is less than current location");

  set_segment_pc(ifile, state->curseg, lex_val(lex));

  lex_next(lex);
}

static void check_initialization_consistent(STATE* state, IFILE* ifile, LEX* lex, BOOL init) {
  assert(state != NULL);
  assert(state->curseg != NO_SEG);
  assert(ifile != NULL);

  if (segment_uninit(ifile, state->curseg)) {
    if (init == INIT)
      error2(state, lex, "initialised data in UNINIT segment");
  }
  else {
    if (init == UNINIT)
      error2(state, lex, "uninitialised data in non-UNINIT segment");
  }
}

static size_t byte_data(STATE*, IFILE*, LEX*, BOOL *init);
static size_t word_data(STATE*, IFILE*, LEX*, BOOL *init);
static size_t dword_data(STATE*, IFILE*, LEX*, BOOL *init);
static size_t qword_data(STATE*, IFILE*, LEX*, BOOL *init);
static size_t tbyte_data(STATE*, IFILE*, LEX*, BOOL *init);

static void define_bytes(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_DB);

  if (state->curseg == NO_SEG) {
    error2(state, lex, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  IREC* irec = get_irec(ifile, ifile->pos);
  assert(irec->size == 0);

  lex_next(lex);
  BOOL init;
  irec->size += byte_data(state, ifile, lex, &init);
  check_initialization_consistent(state, ifile, lex, init);
  inc_segment_pc(ifile, state->curseg, irec->size);
}

static void do_align(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_ALIGN);

  if (state->curseg == NO_SEG) {
    error2(state, lex, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  IREC* irec = get_irec(ifile, ifile->pos);
  assert(irec->size == 0);

  lex_next(lex);
  unsigned p2 = 0;
  if (parse_alignment(state, lex, &p2)) {
    DWORD pc = segment_pc(ifile, state->curseg);
    DWORD new_pc = p2aligned(pc, p2);
    irec->size = new_pc - pc;
    set_segment_pc(ifile, state->curseg, new_pc);
  }
}

static void define_words(STATE* state, IFILE* ifile, LEX* lex) {
  IREC* irec = get_irec(ifile, ifile->pos);

  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_DW);
  assert(irec->size == 0);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  do {
    lex_next(lex);
    BOOL init;
    irec->size += word_data(state, ifile, lex, &init);
    check_initialization_consistent(state, ifile, lex, init);
  } while (lex_token(lex) == ',');

  inc_segment_pc(ifile, state->curseg, irec->size);
}

static void define_dwords(STATE* state, IFILE* ifile, LEX* lex) {
  IREC* irec = get_irec(ifile, ifile->pos);

  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_DD);
  assert(irec->size == 0);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  do {
    lex_next(lex);
    BOOL init;
    irec->size += dword_data(state, ifile, lex, &init);
    check_initialization_consistent(state, ifile, lex, init);
  } while (lex_token(lex) == ',');

  inc_segment_pc(ifile, state->curseg, irec->size);
}

static void define_qwords(STATE* state, IFILE* ifile, LEX* lex) {
  IREC* irec = get_irec(ifile, ifile->pos);

  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_DQ);
  assert(irec->size == 0);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  do {
    lex_next(lex);
    BOOL init;
    irec->size += qword_data(state, ifile, lex, &init);
    check_initialization_consistent(state, ifile, lex, init);
  } while (lex_token(lex) == ',');

  inc_segment_pc(ifile, state->curseg, irec->size);
}

static void define_tbytes(STATE* state, IFILE* ifile, LEX* lex) {
  IREC* irec = get_irec(ifile, ifile->pos);

  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_DT);
  assert(irec->size == 0);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "data outside segment");
    lex_discard_line(lex);
    return;
  }

  do {
    lex_next(lex);
    BOOL init;
    irec->size += tbyte_data(state, ifile, lex, &init);
    check_initialization_consistent(state, ifile, lex, init);
  } while (lex_token(lex) == ',');

  inc_segment_pc(ifile, state->curseg, irec->size);
}

static size_t byte_datum(STATE*, IFILE*, LEX*, BOOL *init);

static size_t byte_data(STATE* state, IFILE* ifile, LEX* lex, BOOL *init) {
  size_t size = byte_datum(state, ifile, lex, init);

  bool reported = false;
  while (lex_token(lex) == ',') {
    lex_next(lex);
    BOOL init2;
    size += byte_datum(state, ifile, lex, &init2);
    if (*init != init2 && !reported) {
      error2(state, lex, "mix of initialised and uninitialised data");
      reported = true;
      *init = INIT;
    }
  }

  return size;
}

static size_t byte_datum(STATE* state, IFILE* ifile, LEX* lex, BOOL *init) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(init != NULL);
  assert(state->curseg != NO_SEG);

  union value val;
  int type = expr(state, ifile, lex, &val);
  
  if (type == ET_ERR)
    return 0;

  if (type == ET_STR) {
    *init = INIT;
    return strlen(val.str);
  }

  if (type == ET_ABS) {
    if (lex_token(lex) != TOK_DUP) {
      *init = INIT;
      return 1;
    }

    if (val.n < 0) {
      error2(state, lex, "negative DUP count");
      val.n = 0;
    }
    if (lex_next(lex) != '(') {
      error2(state, lex, "parentheses required");
      lex_discard_line(lex);
      return 0;
    }
    lex_next(lex);
    size_t size = (size_t) (val.n * byte_data(state, ifile, lex, init)); // TODO: overflow check
    if (lex_token(lex) == ')')
      lex_next(lex);
    else
      error2(state, lex, "closing parenthesis expected");
    return size;
  }

  if (type == ET_REL) {
    error2(state, lex, "invalid expression for byte data");
    return 0;
  }

  if (type == ET_UNDEF) {
    *init = UNINIT;
    return 1;
  }

  assert(0 && "unknown ET");
  return 0;
}

static size_t word_data(STATE* state, IFILE* ifile, LEX* lex, BOOL *init) {
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
    case ET_UNDEF:
      *init = UNINIT;
      size = 2;
      break;
    case ET_ABS:
    case ET_REL:
    case ET_SEC:
    case ET_SEG:
    case ET_OFFSET:
      *init = INIT;
      size = 2;
      break;
    case ET_STR:
      if (make_absolute(type, &val)) {
        *init = INIT;
        size = 2;
      }
      else
        error2(state, lex, "word data expected");
      break;
    default:
      assert(0 && "unknown ET");
  }

  return size;
}

static size_t dword_data(STATE* state, IFILE* ifile, LEX* lex, BOOL *init) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(state->curseg != NO_SEG);

  size_t size = 0;

  union value val;
  int type = expr(state, ifile, lex, &val);
  if (type == ET_UNDEF) {
    *init = UNINIT;
    size = 4;
  }
  else if (make_absolute(type, &val)) {
    *init = INIT;
    size = 4;
  }
  else
    error2(state, lex, "doubleword data expected");

  return size;
}

static size_t qword_data(STATE* state, IFILE* ifile, LEX* lex, BOOL *init) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(state->curseg != NO_SEG);

  size_t size = 0;

  union value val;
  int type = expr(state, ifile, lex, &val);
  if (type == ET_UNDEF) {
    *init = UNINIT;
    size = 8;
  }
  else if (make_absolute(type, &val)) {
    *init = INIT;
    size = 8;
  }
  else
    error2(state, lex, "quadword data expected");

  return size;
}

static size_t tbyte_data(STATE* state, IFILE* ifile, LEX* lex, BOOL *init) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(state->curseg != NO_SEG);

  size_t size = 0;

  // TODO: allow some kind of "long hex" value, not just long or even long long values

  union value val;
  int type = expr(state, ifile, lex, &val);
  if (type == ET_UNDEF) {
    *init = UNINIT;
    size = 10;
  }
  else if (make_absolute(type, &val)) {
    *init = INIT;
    size = 10;
  }
  else
    error2(state, lex, "ten-byte data expected");

  return size;
}

static void public_symbol(STATE*, IFILE*, LEX*);

static void do_public(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_PUBLIC);

  lex_next(lex);
  public_symbol(state, ifile, lex);
  while (lex_token(lex) == ',') {
    lex_next(lex);
    public_symbol(state, ifile, lex);
  }
}

static void public_symbol(STATE* state, IFILE* ifile, LEX* lex) {
  assert(lex != NULL);

  if (lex_token(lex) != TOK_LABEL) {
    error2(state, lex, "label expected");
    return;
  }

  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym == NULL) {
    sym = sym_insert_relative(ifile->st, lex_lexeme(lex));
    sym_set_public(sym);
  }
  else if (sym_type(sym) == SYM_RELATIVE)
    sym_set_public(sym);
  else
    error2(state, lex, "this type of symbol cannot be public: %s", lex_lexeme(lex));

  lex_next(lex);
}

static void external_symbol(STATE*, IFILE*, LEX*);

static void do_extrn(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(lex_token(lex) == TOK_EXTRN);

  lex_next(lex);
  external_symbol(state, ifile, lex);
  while (lex_token(lex) == ',') {
    lex_next(lex);
    external_symbol(state, ifile, lex);
  }
}

static BOOL extern_type(int token);

static void external_symbol(STATE* state, IFILE* ifile, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);

  if (state->curseg == NO_SEG) {
    error2(state, lex, "EXTRN outside segment");
    if (lex_token(lex) == TOK_LABEL) {
      if (lex_next(lex) == ':') {
        if (extern_type(lex_next(lex)))
          lex_next(lex);
      }
    }
    return;
  }

  if (lex_token(lex) != TOK_LABEL) {
    error2(state, lex, "label expected");
    return;
  }

  SYMBOL* sym = sym_lookup(ifile->st, lex_lexeme(lex));
  if (sym != NULL) {
    error2(state, lex, "symbol already %s: %s", sym_defined(sym) ? "defined" : "used", lex_lexeme(lex));
    return;
  }

  sym = sym_insert_external(ifile->st, lex_lexeme(lex), state->curseg);

  if (lex_next(lex) == ':')
    lex_next(lex);
  else
    error2(state, lex, "':' expected");

  unsigned data_size = 0;

  switch (lex_token(lex)) {
  case TOK_BYTE: data_size = 1; lex_next(lex); break;
  case TOK_WORD: data_size = 2; lex_next(lex); break;
  case TOK_DWORD: data_size = 4; lex_next(lex); break;
  case TOK_PROC: data_size = 0; lex_next(lex); break;
  default: error2(state, lex, "data type expected: %s", lex_lexeme(lex));
  }

  sym_set_data_size(sym, data_size);
}

static BOOL extern_type(int t) {
  return t == TOK_BYTE || t == TOK_WORD || t == TOK_PROC;
}

static BOOL direct_near_jump(int op, const OPERAND* oper1, const OPERAND* oper2);
static unsigned rm_disp_len(STATE*, IFILE*, const OPERAND*, BOOL *provisional);

static void compute_instruction_segment_override_size(STATE*, IFILE*, IREC*, LEX*,
    const OPERAND* oper1, const OPERAND* oper2);

static void process_instruction(STATE* state, IFILE* ifile, LEX* lex) {
  IREC* irec = get_irec(ifile, ifile->pos);
  OPERAND oper1, oper2;

  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(token_is_opcode(lex_token(lex)) || token_is_repeat(lex_token(lex)));

  irec->size = 0;

  // Pass 1: do not check CS ASSUME
  if (state->curseg == NO_SEG) {
    error2(state, lex, "code outside segment");
    lex_discard_line(lex);
    return;
  }

  if (segment_uninit(ifile, state->curseg))
    error2(state, lex, "instruction in UNINIT segment");

  if (token_is_repeat(lex_token(lex))) {
    irec->rep = lex_token(lex);
    if (!token_is_opcode(lex_next(lex))) {
      error(state, ifile, "instruction expected after repeat prefix");
      lex_discard_line(lex);
      return;
    }
    irec->operand_pos = lex_pos(lex);
    if (!valid_prefix(irec->rep, lex_token(lex))) {
      error2(state, lex, "invalid prefix for this instruction");
      lex_discard_line(lex);
      return;
    }
    irec->size += 1;
  }

  irec->op = lex_token(lex);
  lex_next(lex);

  if (!parse_operands(state, ifile, lex, &oper1, &oper2)) {
    lex_discard_line(lex);
    return;
  }

  if (direct_near_jump(irec->op, &oper1, &oper2)) {
    // assume short displacement until proven otherwise
    irec->near_jump_size = 1;
    irec->size = 2; // opcode + displacement
    ifile->provisional_sizes = TRUE;
    inc_segment_pc(ifile, state->curseg, irec->size);
    return;
  }

  irec->def = find_instruc(irec->op, &oper1.opclass, &oper2.opclass);

  if (irec->def == NULL) {
    error2(state, lex, "instruction not supported with given operands: %s", token_name(irec->op));
    lex_discard_line(lex);
    return;
  }

  if (!cpu_enabled(state->cpu, irec->def->cpu)) {
    error2(state, lex, "instruction not supported on selected processor");
    lex_discard_line(lex);
    return;
  }

  compute_instruction_segment_override_size(state, ifile, irec, lex, &oper1, &oper2);

  if (irec->def->opcode_prefix) {
    if (!wait_precedes(ifile))
      irec->size += 1;
  }

  irec->size += irec->def->opcodes;

  // ModR/M byte
  if (irec->def->modrm != RMN) {
    BOOL provisional = FALSE;

    irec->size += 1;
    switch (irec->def->modrm) {
      case RRM:
        irec->size += rm_disp_len(state, ifile, &oper2, &provisional);
        break;
      case RMR:
      case RMC:
      case MMC:
        irec->size += rm_disp_len(state, ifile, &oper1, &provisional);
        break;
      case SSI:
      case SIS:
      case SSC:
      case SIC:
      case STC:
      case STK:
        break;
      default:
        fatal("internal: unknown modrm type: %d\n", irec->def->modrm);
    }
    if (provisional)
      ifile->provisional_sizes = TRUE;
  }
  else if (irec->def->oper1 == OF_INDIR)
    irec->size += 2;
  else if (irec->def->oper2 == OF_INDIR)
    irec->size += 2;

  irec->size += irec->def->imm;

  inc_segment_pc(ifile, state->curseg, irec->size);
}

static void compute_segment_override_size(STATE*, IFILE*, IREC*, const struct mem *);

static void compute_string_segment_override_size(STATE*, IFILE*, IREC*, LEX*,
    const struct mem * op1, const struct mem * op2);

static void compute_instruction_segment_override_size(STATE* state, IFILE* ifile, IREC* irec, LEX* lex,
    const OPERAND* oper1, const OPERAND* oper2) {
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->def != NULL);

  if (opcode_lea(irec->def->opcode1))
    ;
  else if (string_instruction(irec->def))
    compute_string_segment_override_size(state, ifile, irec, lex, &oper1->val.mem, &oper2->val.mem);
  else if (oper1 && oper1->opclass.type == OT_MEM)
    compute_segment_override_size(state, ifile, irec, &oper1->val.mem);
  else if (oper2 && oper2->opclass.type == OT_MEM)
    compute_segment_override_size(state, ifile, irec, &oper2->val.mem);
}

static unsigned segment_override_size(STATE*, IFILE*, const struct mem *, BOOL *provisional);

static void compute_segment_override_size(STATE* state, IFILE* ifile, IREC* irec, const struct mem * m) {
  BOOL provisional = FALSE;
  irec->size += segment_override_size(state, ifile, m, &provisional);
  if (provisional)
    ifile->provisional_sizes = TRUE;
}

static void check_di_override(STATE*, LEX*, const struct mem *);

static void compute_string_segment_override_size(STATE* state, IFILE* ifile,
    IREC* irec, LEX* lex, const struct mem * m1, const struct mem * m2) {
  assert(irec != NULL);
  assert(irec->def != NULL);
  
  if (irec->def->oper1 == OF_DI || irec->def->oper1 == OF_DI8 || irec->def->oper1 == OF_DI16)
    check_di_override(state, lex, m1);

  if (irec->def->oper2 == OF_DI || irec->def->oper2 == OF_DI8 || irec->def->oper2 == OF_DI16)
    check_di_override(state, lex, m2);

  if (irec->def->oper1 == OF_SI || irec->def->oper1 == OF_SI8 || irec->def->oper1 == OF_SI16) {
    if (m1->sreg_override != NO_REG && m1->sreg_override != SR_DS)
      irec->size += 1;
  }

  if (irec->def->oper2 == OF_SI || irec->def->oper2 == OF_SI8 || irec->def->oper2 == OF_SI16) {
    if (m2->sreg_override != NO_REG && m2->sreg_override != SR_DS)
      irec->size += 1;
  }
}

static void check_di_override(STATE* state, LEX* lex, const struct mem * m) {
  if (m->sreg_override != NO_REG && m->sreg_override != SR_ES)
    error2(state, lex, "string destination segment override is not allowed");
}

static int addressability(STATE*, IFILE*, const SYMBOL* label, int sreg);

static unsigned segment_override_size(STATE* state, IFILE* ifile, const struct mem * m, BOOL *provisional) {
  const int default_sreg = (m->base_reg == REG_BP) ? SR_SS : SR_DS;

  *provisional = FALSE;

  if (m->sreg_override != NO_REG)
    return (m->sreg_override != default_sreg);

  if (m->disp_type == REL_DISP) {
    switch (addressability(state, ifile, m->disp.label, default_sreg)) {
      case ADDRESSABLE:
        return 0;
      case NOT_ADDRESSABLE:
        return 1;
      case MAYBE_ADDRESSABLE:
        *provisional = TRUE;
        return 0;
      default:
        assert(0 && "unknown addressability");
    }    
  }

  return 0;
}

static int addressability(STATE* state, IFILE* ifile, const SYMBOL* label, int sreg) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(ifile->st != NULL);
  assert(sym_type(label) == SYM_RELATIVE);
  assert(sreg >= 0 && sreg < N_SREG);

  const SYMBOL* assume_id = state->assume_sym[sreg];
  if (assume_id == NULL)
    return NOT_ADDRESSABLE;

  SEGNO symbol_seg = sym_seg(label);
  if (symbol_seg == NO_SEG)
    return MAYBE_ADDRESSABLE;

  // If symbol is in a group, must be addressable via that group.
  // Otherwise must be addressable via its segment.
  GROUPNO symbol_group = segment_group(ifile, symbol_seg);
  if (symbol_group == NO_GROUP)
    // might be put in a group later in the source
    return MAYBE_ADDRESSABLE;

  if (sym_section_type(assume_id) == ST_SEGMENT)
    return NOT_ADDRESSABLE;
    
  if (sym_section_type(assume_id) == ST_GROUP) {
    GROUPNO assume_group = sym_section_ordinal(assume_id);
    assert(assume_group != NO_GROUP);
    return (assume_group == symbol_group) ? ADDRESSABLE : NOT_ADDRESSABLE;
  }

  return MAYBE_ADDRESSABLE;
}

static BOOL direct_near_jump(int op, const OPERAND* oper1, const OPERAND* oper2) {
  if (op == TOK_JMP) {
    if (oper1->opclass.type == OT_JUMP && oper2->opclass.type == OT_NONE)
      if (oper1->val.jump.distance != FAR)
        return TRUE;
  }

  return FALSE;
}

static unsigned disp_length(long disp, unsigned min) {
  if (disp == 0)
    return min;

  if (disp >= -0x80 && disp < 0x80)
    return 1;

  return 2;
}

static unsigned rm_disp_len(STATE* state, IFILE* ifile, const OPERAND* op, BOOL *provisional) {
  assert(ifile != NULL);
  assert(op != NULL);
  assert(op->opclass.type == OT_MEM || op->opclass.type == OT_REG);
  assert(provisional != NULL);

  if (op->opclass.type == OT_REG) {
    *provisional = FALSE;
    return 0;
  }

  if (op->opclass.type != OT_MEM)
    fatal("internal: compute_rm: unexpected operand type\n");

  const struct mem * const m = &op->val.mem;

  // [addr]
  if (m->base_reg == NO_REG && m->index_reg == NO_REG) {
    assert(m->disp_type != NO_DISP);
    *provisional = FALSE;
    return 2;
  }

  unsigned min = (m->base_reg == REG_BP && m->index_reg == NO_REG) ? 1 : 0;

  if (m->disp_type == NO_DISP) {
    *provisional = FALSE;
    return min;
  }

  // [...+disp]

  // Either the displacement is length 2 because the symbol is external or relocatable,
  // or the length is calculated from its value.

  if (m->disp_type == ABS_DISP) {
    *provisional = FALSE;
    return disp_length(m->disp.sval, min);
  }

  assert(m->disp_type == REL_DISP);
  assert(m->disp.label != NULL);
  assert(sym_type(m->disp.label) == SYM_RELATIVE);

  if (sym_external(m->disp.label)) {
    *provisional = FALSE;
    return 2;
  }

  if (!sym_defined(m->disp.label)) {
    *provisional = TRUE;
    return min;
  }

  if (relocatable_relative(ifile, m->disp.label)) {
    *provisional = FALSE;
    return 2;
  }

  DWORD val = sym_relative_value(m->disp.label);
  if (val > LONG_MAX) {
    error(state, ifile, "address out of range for signed displacement");
    *provisional = TRUE;
    return min;
  }
  *provisional = FALSE;
  return disp_length(val, min);
}
