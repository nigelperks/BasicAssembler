// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Pass to resize jumps as necessary.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <assert.h>
#include <limits.h>
#include "resize.h"
#include "common.h"
#include "ifile.h"
#include "lexer.h"
#include "token.h"
#include "symbol.h"
#include "instable.h"
#include "operand.h"
#include "parse.h"

static BOOL process_irec(STATE*, IFILE*, LEX*);

BOOL resize_pass(IFILE* ifile, const Options* options) {
  STATE state;
  LEX* lex = NULL;
  BOOL resized = FALSE;

  if (options->verbose)
    puts("Resizing pass");

  init_state(&state, options->max_errors);
  lex = new_lex(source_name(ifile->source));

  reset_pc(ifile);

  for (ifile->pos = 0; ifile->pos < irec_count(ifile); ifile->pos++) {
    if (process_irec(&state, ifile, lex))
      resized = TRUE;
  }

  delete_lex(lex);

  if (state.errors > 0) {
    fprintf(stderr, "Errors: %u\n", state.errors);
    exit(EXIT_FAILURE);
  }

  return resized;
}

static void define_label(STATE*, IFILE*, IREC*, LEX*);

static BOOL perform_directive(STATE*, IFILE*, IREC*, LEX*);
static BOOL process_instruction(STATE*, IFILE*, IREC*, LEX*);

// TRUE if record resized.
static BOOL process_irec(STATE* state, IFILE* ifile, LEX* lex) {
  IREC* irec = get_irec(ifile, ifile->pos);

  lex_begin(lex, irec_text(ifile, irec), irec_lineno(ifile, irec), irec->operand_pos);

  define_dollar(state, ifile);

  if (irec->label != NULL)
    define_label(state, ifile, irec, lex);

  if (token_is_directive(irec->op))
    return perform_directive(state, ifile, irec, lex);

  if (irec->op == TOK_NONE)
    return FALSE;

  assert(token_is_opcode(irec->op));
  return process_instruction(state, ifile, irec, lex);
}

static void define_label(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->label != NULL);
  assert(sym_defined(irec->label));

  if (irec->op == TOK_EQU || irec->op == '=')
    return;

  if (!sym_defined(irec->label))
    error2(state, lex, "phase error: label undefined: %s", sym_name(irec->label));
  else if (sym_type(irec->label) != SYM_RELATIVE)
    error2(state, lex, "phase error: not a relative label: %s", sym_name(irec->label));
  else if (state->curseg == NO_SEG)
    error2(state, lex, "phase error: label outside segment: %s", sym_name(irec->label));
  else if (sym_seg(irec->label) != state->curseg)
    error2(state, lex, "phase error: label '%s' defined in segment '%s', found in '%s'",
           sym_name(irec->label), segment_name(ifile, sym_seg(irec->label)), segment_name(ifile, state->curseg));
  else {
    unsigned data_size = token_data_size(irec->op);
    DWORD val = segment_pc(ifile, state->curseg);
    sym_define_relative(irec->label, state->curseg, data_size, val);
  }
}

static void do_align(STATE*, IFILE*, IREC*, LEX*);
static void do_assume(STATE*, IFILE*, IREC*, LEX*);
static void do_ends(STATE*, IFILE*, IREC*, LEX*);
static void do_org(STATE*, IFILE*, IREC*, LEX*);
static void do_segment(STATE*, IFILE*, IREC*, LEX*);
static void define_data(STATE*, IFILE*, IREC*, LEX*, const char* descrip, EXPR_SIZE*);

// TRUE if record resized
static BOOL perform_directive(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
  assert(state != NULL);
  assert(irec != NULL);
  assert(token_is_directive(irec->op));

  const unsigned provisional_record_size = irec->size;

  switch (irec->op) {
    case TOK_ALIGN: do_align(state, ifile, irec, lex); break;
    case TOK_ASSUME: do_assume(state, ifile, irec, lex); break;
    case TOK_CODESEG: perform_codeseg(state, ifile, lex); break;
    case TOK_DATASEG: perform_dataseg(state, ifile, lex); break;
    case TOK_ENDS: do_ends(state, ifile, irec, lex); break;
    case TOK_JUMPS: state->jumps = true; break;
    case TOK_ORG: do_org(state, ifile, irec, lex); break;
    case TOK_SEGMENT: do_segment(state, ifile, irec, lex); break;
    case TOK_UDATASEG: perform_udataseg(state, ifile, lex); break;
    case TOK_DB: define_data(state, ifile, irec, lex, "byte", byte_expr_size); break;
    case TOK_DW: define_data(state, ifile, irec, lex, "word", word_expr_size); break;
    case TOK_DD: define_data(state, ifile, irec, lex, "dword", dword_expr_size); break;
    case TOK_DQ: define_data(state, ifile, irec, lex, "qword", qword_expr_size); break;
    case TOK_DT: define_data(state, ifile, irec, lex, "tbyte", tbyte_expr_size); break;
    // select processor
    case TOK_P286:
    case TOK_P286N:
    case TOK_P8086:
    case TOK_P8087:
    case TOK_PNO87:
      select_cpu(state, irec->op);
      break;
    // no resize or tracking action required
    case TOK_END:
    case TOK_EQU:
    case '=':
    case TOK_EXTRN:
    case TOK_GROUP:
    case TOK_IDEAL:
    case TOK_MODEL:
    case TOK_PUBLIC:
      break;
    default:
      error(state, ifile, "directive not implemented: %s", token_name(irec->op));
  }

  return irec->size != provisional_record_size;
}

size_t data_size(STATE*, IFILE*, LEX*, const char* descrip, EXPR_SIZE*, BOOL *init);

static void define_data(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, const char* descrip, EXPR_SIZE* expr_size) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(lex != NULL);
  assert(descrip != NULL);
  assert(expr_size != NULL);

  BOOL init;
  irec->size = data_size(state, ifile, lex, descrip, expr_size, &init);
  inc_segment_pc(ifile, state->curseg, irec->size);
}

static void do_segment(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
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
  if (sym == NULL|| !sym_defined(sym) || sym_type(sym) != SYM_SECTION ||
      sym_section_type(sym) != ST_SEGMENT) {
    error2(state, lex, "defined segment name expected: %s", lex_lexeme(lex));
    exit(EXIT_FAILURE);
  }

  state->curseg = sym_section_ordinal(sym);
  lex_next(lex);
}

static void do_ends(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->op == TOK_ENDS);
  assert(lex != NULL);

  if (state->curseg == NO_SEG)
    error(state, ifile, "no segment is open");
  else
    state->curseg = NO_SEG;

  assert(lex_next(lex) == TOK_EOL);
}

static void do_org(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
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

  if (lex_val(lex) < segment_pc(ifile, state->curseg))
    error(state, ifile, "ORG value is less than current location");
  set_segment_pc(ifile, state->curseg, lex_val(lex));

  assert(lex_next(lex) == TOK_EOL);
}

static void do_align(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->op == TOK_ALIGN);
  assert(lex != NULL);

  if (state->curseg == NO_SEG) {
    error(state, ifile, "ALIGN outside segment");
    return;
  }

  unsigned p2 = 0;
  if (parse_alignment(state, lex, &p2)) {
    DWORD pc = segment_pc(ifile, state->curseg);
    DWORD new_pc = p2aligned(pc, p2);
    irec->size = new_pc - pc;
    set_segment_pc(ifile, state->curseg, new_pc);
  }
}

static void assume(STATE*, IFILE*, LEX*);

static void do_assume(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(irec->op == TOK_ASSUME);
  assert(lex != NULL);

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
    error2(state, lex, "defined segment or group expected: %s", lex_lexeme(lex));
    exit(EXIT_FAILURE);
  }

  state->assume_sym[reg] = sym;

  lex_next(lex);
}

static void size_instruction(STATE* state, IFILE* ifile, IREC* irec, LEX* lex,
                             const OPERAND* oper1, const OPERAND* oper2, const OPERAND* oper3);
static void size_near_jump(STATE*, IFILE*, IREC*, LEX*, const OPERAND*);
static bool expand_short_jump(STATE*, IFILE*, IREC*, LEX*,
                              const OPERAND* oper1, const OPERAND* oper2, const OPERAND* oper3);

// TRUE if record resized.
static BOOL process_instruction(STATE* state, IFILE* ifile, IREC* irec, LEX* lex) {
  const unsigned provisional_record_size = irec->size;

  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(token_is_opcode(irec->op));
  assert(lex != NULL);

  if (state->curseg == NO_SEG) {
    error2(state, lex, "code outside segment");
    lex_discard_line(lex);
    return FALSE;
  }

  const SYMBOL* cs_assume_sym = state->assume_sym[SR_CS];
  if (cs_assume_sym == NULL) {
    error2(state, lex, "CS has no ASSUME");
    lex_discard_line(lex);
    return FALSE;
  }
  assert(sym_type(cs_assume_sym) == SYM_SECTION);
  switch (sym_section_type(cs_assume_sym)) {
    case ST_SEGMENT:
      if (sym_section_ordinal(cs_assume_sym) != state->curseg) {
        error2(state, lex, "CS is not the current segment");
        return FALSE;
      }
      break;
    case ST_GROUP: {
      int assume_group = sym_section_ordinal(cs_assume_sym);
      if (segment_group(ifile, state->curseg) != assume_group) {
        error2(state, lex, "the current segment is outside the CS assume group");
        return FALSE;
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
    return FALSE;
  }

  if (token_is_jcc_opcode(irec->op) && state->jumps) {
    bool resized = expand_short_jump(state, ifile, irec, lex, &oper1, &oper2, &oper3);
    inc_segment_pc(ifile, state->curseg, irec->size);
    return resized;
  }

  if (irec->near_jump_size) {
    assert(oper2.opclass.type == OT_NONE);
    assert(oper3.opclass.type == OT_NONE);
    size_near_jump(state, ifile, irec, lex, &oper1);
  }
  else
    size_instruction(state, ifile, irec, lex, &oper1, &oper2, &oper3);

  inc_segment_pc(ifile, state->curseg, irec->size);

  return irec->size != provisional_record_size;
}

static long signed_displacement(DWORD from, DWORD to);

static BOOL jump_same_module_segment(STATE*, IFILE*, const struct jump *, DWORD *addr);

static void size_near_jump(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, const OPERAND* oper) {
  assert(irec->op == TOK_JMP);
  assert(oper->opclass.type == OT_JUMP);

  irec->near_jump_size = 0;
  irec->size = 1; // size of instruction except displacement

  DWORD dest;
  if (jump_same_module_segment(state, ifile, &oper->val.jump, &dest)) {
    if (dest > 0xffffL) {
      error2(state, lex, "jump address is out of 16-bit range: %05lx", (unsigned long) dest);
      return;
    }

    // do short jump if possible
    DWORD pc = segment_pc(ifile, state->curseg);
    long disp = signed_displacement(pc + irec->size + 1, dest);
    if (disp >= -0x80 && disp < 0x80) {
      irec->near_jump_size = 1;
      irec->size += 1;
      return;
    }

    if (oper->val.jump.distance == SHORT) {
      error2(state, lex, "jump address is out of short range: displacement %ld", disp);
      return;
    }

    assert(oper->val.jump.distance == NEAR);
  }

  irec->near_jump_size = 2;
  irec->size += 2;
}

static BOOL jump_same_module_segment(STATE* state, IFILE* ifile, const struct jump * p, DWORD *addr) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(p != NULL);
  assert(addr != NULL);

  if (p->target_type == FAR_JUMP)
    return FALSE;

  if (p->target_type == ABS_JUMP) {
    const SYMBOL* cs_sym = state->assume_sym[SR_CS];
    if (sym_section_type(cs_sym) == ST_SEGMENT) {
      *addr = p->target.abs;
      return TRUE;
    }
    assert(sym_section_type(cs_sym) == ST_GROUP);
    return FALSE;
  }

  assert(p->target_type == LABEL_JUMP);
  assert(p->target.label != NULL);
  assert(sym_defined(p->target.label));
  assert(sym_type(p->target.label) == SYM_RELATIVE);

  if (sym_external(p->target.label))
    return FALSE;

  *addr = sym_relative_value(p->target.label);
  return TRUE;
}

static int reverse_jcc(int token);

// Expand short conditional jump when out of short range, when JUMPS directive used.
//   Jcc X
//   ...
// -->
//   Jrr T
//   JMP X
// T:
//   ...
// where rr is reverse condition of cc.
// Return true if change made, false if nothing changed.
static bool expand_short_jump(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, const OPERAND* oper1, const OPERAND* oper2, const OPERAND* oper3) {
  assert(state != NULL);
  assert(irec != NULL);
  assert(token_is_jcc_opcode(irec->op));
  assert(oper1->opclass.type == OT_JUMP);
  assert(oper2->opclass.type == OT_NONE);
  assert(oper3->opclass.type == OT_NONE);

  unsigned previous_errors = state->errors;

  if (state->curseg == NO_SEG)
    error2(state, lex, "cannot expand jump outside segment");

  if (oper1->val.jump.distance != NEAR)
    error2(state, lex, "cannot expand non-near jump");

  if (oper1->val.jump.target_type != LABEL_JUMP)
    error2(state, lex, "cannot expand non-label jump");

  if (irec->rep != TOK_NONE)
    error2(state, lex, "cannot expand jump with repeat prefix");

  if (irec->size != 2) {
    error2(state, lex, "internal error: unexpected short jump instruction size: %u\n", (unsigned) irec->size);
    exit(EXIT_FAILURE);
  }

  const SYMBOL* label = oper1->val.jump.target.label;
  assert(label != NULL);
  assert(sym_defined(label));
  assert(sym_type(label) == SYM_RELATIVE);

  if (sym_external(label))
    error2(state, lex, "cannot expand external-label jump");

  if (sym_seg(label) != state->curseg)
    error2(state, lex, "cannot expand inter-segment jump");

  irec->def = find_instruc(irec->op, &oper1->opclass, &oper2->opclass, &oper3->opclass);
  if (irec->def == NULL)
    error2(state, lex, "instruction not supported with given operands: %s", token_name(irec->op));

  assert(irec->def->oper1 == OF_JUMP);
  assert(irec->def->oper2 == OF_NONE);
  assert(irec->def->oper3 == OF_NONE);
  assert(irec->def->imm1 == 1);
  assert(irec->def->imm2 == 0);
  assert(irec->def->imm3 == 0);

  if (state->errors != previous_errors)
    return false;

  DWORD dest = sym_relative_value(label);

  long disp = (long)dest - (long)(segment_pc(ifile, state->curseg) + irec->size);
  if (disp >= -0x80 && disp < 0x80)
    return false;

//   Jcc X
// -->
//   Jrr T
//   JMP X
// T:

  const unsigned lineno = irec_lineno(ifile, irec);

  SYMBOL* local = sym_insert_local(ifile->st);

  irec->op = reverse_jcc(irec->op);

  set_inject(irec, inject(ifile, lineno, sym_name(local)));
  irec->operand_pos = 0;
  irec->def = NULL;
  irec->size = 2;

  IREC* jmp = insert_irec_after(ifile, irec);
  jmp->op = TOK_JMP;
  set_inject(jmp, inject(ifile, lineno, sym_name(label)));
  jmp->operand_pos = 0;
  jmp->near_jump_size = 2;
  jmp->size = 3;

  IREC* over = insert_irec_after(ifile, jmp);
  over->label = local;
  sym_define_relative(local, state->curseg, 0, segment_pc(ifile, state->curseg) + 5);

  return true;
}

static int reverse_jcc(int token) {
  switch (token) {
    case TOK_JA: return TOK_JBE;
    case TOK_JAE: return TOK_JB;
    case TOK_JB: return TOK_JAE;
    case TOK_JBE: return TOK_JA;
    case TOK_JC: return TOK_JNC;
    case TOK_JE: return TOK_JNE;
    case TOK_JZ: return TOK_JNZ;
    case TOK_JG: return TOK_JLE;
    case TOK_JGE: return TOK_JL;
    case TOK_JL: return TOK_JGE;
    case TOK_JLE: return TOK_JG;
    case TOK_JNA: return TOK_JA;
    case TOK_JNAE: return TOK_JAE;
    case TOK_JNB: return TOK_JB;
    case TOK_JNBE: return TOK_JBE;
    case TOK_JNC: return TOK_JC;
    case TOK_JNE: return TOK_JE;
    case TOK_JNG: return TOK_JG;
    case TOK_JNGE: return TOK_JGE;
    case TOK_JNL: return TOK_JL;
    case TOK_JNLE: return TOK_JLE;
    case TOK_JNO: return TOK_JO;
    case TOK_JNP: return TOK_JP;
    case TOK_JNS: return TOK_JS;
    case TOK_JNZ: return TOK_JZ;
    case TOK_JO: return TOK_JNO;
    case TOK_JP: return TOK_JNP;
    case TOK_JPE: return TOK_JPO;
    case TOK_JPO: return TOK_JPE;
    case TOK_JS: return TOK_JNS;
  }
  fatal("internal error: %s: %d: unknown Jcc token: %d\n", __FILE__, __LINE__, token);
  return TOK_NONE;
}

static long signed_displacement(DWORD from, DWORD to) {
  return to - from; // TODO: can this be made more portable?
}

static unsigned rm_disp_len(STATE*, IFILE*, const OPERAND*);

static unsigned instruction_segment_override_size(STATE*, IFILE*, IREC*, LEX*, const OPERAND* oper1, const OPERAND* oper2);

static void size_instruction(STATE* state, IFILE* ifile, IREC* irec, LEX* lex,
                             const OPERAND* oper1, const OPERAND* oper2, const OPERAND* oper3) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(irec != NULL);
  assert(lex != NULL);

  irec->def = find_instruc(irec->op, &oper1->opclass, &oper2->opclass, &oper3->opclass);

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

  irec->size = 0;

  if (irec->rep != TOK_NONE)
    irec->size += 1;

  irec->size += instruction_segment_override_size(state, ifile, irec, lex, oper1, oper2);

  irec->size += wait_needed(state, irec->def);

  irec->size += irec->def->opcodes;

  // ModR/M byte
  if (irec->def->modrm != RMN) {
    irec->size += 1;
    switch (irec->def->modrm) {
      case RRM:
        irec->size += rm_disp_len(state, ifile, oper2);
        break;
      case RMR:
      case RMC:
      case MMC:
        irec->size += rm_disp_len(state, ifile, oper1);
        break;
      case REG:
      case SSI:
      case SIS:
      case SSC:
      case SIC:
      case STC:
      case STK:
        break;
      default:
        fatal("internal error: %s: %d: unknown modrm type: %d\n", __FILE__, __LINE__, irec->def->modrm);
    }
  }
  else if (irec->def->oper1 == OF_INDIR)
    irec->size += 2;
  else if (irec->def->oper2 == OF_INDIR)
    irec->size += 2;

  irec->size += irec->def->imm1;
  irec->size += irec->def->imm2;
  irec->size += irec->def->imm3;
}

static unsigned operand_sreg_override_size(STATE*, IFILE*, LEX*, const struct mem *);

static unsigned string_sreg_override_size(STATE*, IFILE*, LEX*,
    const struct mem * op1, const struct mem * op2);

static unsigned instruction_segment_override_size(STATE* state, IFILE* ifile, IREC* irec, LEX* lex, const OPERAND* oper1, const OPERAND* oper2) {
  assert(ifile != NULL);
  
  unsigned size;

  if (opcode_lea(irec->def->opcode1))
    size = 0;
  else if (string_instruction(irec->def))
    size = string_sreg_override_size(state, ifile, lex, &oper1->val.mem, &oper2->val.mem);
  else if (oper1 && oper1->opclass.type == OT_MEM)
    size = operand_sreg_override_size(state, ifile, lex, &oper1->val.mem);
  else if (oper2 && oper2->opclass.type == OT_MEM)
    size = operand_sreg_override_size(state, ifile, lex, &oper2->val.mem);
  else
    size = 0;

  return size;
}

// Assume DI overrides forbidden in pass 1.
static unsigned string_sreg_override_size(STATE* state, IFILE* ifile, LEX* lex,
    const struct mem * m1, const struct mem * m2) {
  assert(m1 != NULL);
  assert(m2 != NULL);

  if (m1->index_reg == REG_SI)
    return (m1->sreg_override != NO_REG && m1->sreg_override != SR_DS);

  if (m2->index_reg == REG_SI)
    return (m2->sreg_override != NO_REG && m2->sreg_override != SR_DS);

  return 0;
}

static BOOL addressable(STATE*, IFILE*, SEGNO symbol_seg, int sreg);

static BOOL addressable_at_all(STATE*, IFILE*, SEGNO symbol_seg, int *sreg);

static unsigned operand_sreg_override_size(STATE* state, IFILE* ifile, LEX* lex, const struct mem * m) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(lex != NULL);
  assert(m != NULL);

  const int default_sreg = (m->base_reg == REG_BP) ? SR_SS : SR_DS;

  if (m->sreg_override != NO_REG)
    return (m->sreg_override != default_sreg);

  if (m->disp_type != REL_DISP)
    return 0;

  int symbol_seg = sym_seg(m->disp.label);
  if (symbol_seg == NO_SEG) {
    error2(state, lex, "symbol has no segment: %s", sym_name(m->disp.label));
    return 0;
  }

  if (addressable(state, ifile, symbol_seg, default_sreg))
    return 0;

  int sreg = NO_REG;
  if (addressable_at_all(state, ifile, symbol_seg, &sreg))
    return (sreg != default_sreg);

  error2(state, lex, "not accessible via any segment register: %s", sym_name(m->disp.label));
  return 0;
}

// Is the given segment addressable via the given segment register?
static BOOL addressable(STATE* state, IFILE* ifile, SEGNO segno, int sreg) {
  assert(state != NULL);
  assert(ifile != NULL);
  assert(ifile->st != NULL);
  assert(segno != NO_SEG);
  assert(sreg >= 0 && sreg < N_SREG);

  const SYMBOL* assume_sym = state->assume_sym[sreg];
  if (assume_sym == NULL)
    return FALSE;

  GROUPNO segno_group = segment_group(ifile, segno);
  if (segno_group == NO_GROUP) {
    if (sym_section_type(assume_sym) == ST_SEGMENT) {
      SEGNO sreg_seg = sym_section_ordinal(assume_sym);
      return segno == sreg_seg;
    }
    assert(sym_section_type(assume_sym) == ST_GROUP);
    return FALSE;
  }

  if (sym_section_type(assume_sym) == ST_SEGMENT)
    return FALSE;

  GROUPNO sreg_group = sym_section_ordinal(assume_sym);
  return segno_group == sreg_group;
}

// TODO: efficiency of algorithm.
static BOOL addressable_at_all(STATE* state, IFILE* ifile, SEGNO symbol_seg, int *sreg) {
  assert(state != NULL);
  assert(ifile != NULL);

  static const int regs[] = { SR_DS, SR_ES, SR_SS, SR_CS };

  for (unsigned i = 0; i < sizeof regs / sizeof regs[0]; i++) {
    if (addressable(state, ifile, symbol_seg, regs[i])) {
      *sreg = regs[i];
      return TRUE;
    }
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

static unsigned rm_disp_len(STATE* state, IFILE* ifile, const OPERAND* op) {
  assert(ifile != NULL);
  assert(op != NULL);
  assert(op->opclass.type == OT_MEM || op->opclass.type == OT_REG);

  if (op->opclass.type == OT_REG)
    return 0;

  if (op->opclass.type != OT_MEM)
    fatal("internal: compute_rm: unexpected operand type\n");

  const struct mem * const m = &op->val.mem;

  // [addr]
  if (m->base_reg == NO_REG && m->index_reg == NO_REG) {
    assert(m->disp_type != NO_DISP);
    return 2;
  }

  unsigned min = (m->base_reg == REG_BP && m->index_reg == NO_REG) ? 1 : 0;

  if (m->disp_type == NO_DISP)
    return min;

  // [...+disp]

  // Either the displacement is length 2 because the symbol is external or relocatable,
  // or the length is calculated from its value.

  if (m->disp_type == ABS_DISP)
    return disp_length(m->disp.sval, min);

  assert(m->disp_type == REL_DISP);
  assert(m->disp.label != NULL);
  assert(sym_type(m->disp.label) == SYM_RELATIVE);
  assert(sym_defined(m->disp.label));

  if (sym_external(m->disp.label))
    return 2;

  if (relocatable_relative(ifile, m->disp.label))
    return 2;

  DWORD val = sym_relative_value(m->disp.label);
  if (val > LONG_MAX) {
    error(state, ifile, "address out of range for signed displacement\n");
    return min;
  }
  return disp_length(val, min);
}
