// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Instruction decoder

#include <assert.h>
#include "decoder.h"
#include "token.h"

static void add_decoding(DECODER*, const INSDEF*, int opcode1);

const DECODER* build_decoder(void) {
  DECODER* dec = ecalloc(1, sizeof *dec);

  for (const INSDEF* p = instable; p->op != TOK_NONE; p++) {
    if (p->opcode_inc) {
      for (int reg = 0; reg < 8; reg++)
        add_decoding(dec, p, p->opcode1 + reg);
    }
    else
      add_decoding(dec, p, p->opcode1);
  }

  return dec;
}

static bool opcode2_or_modrm(const INSDEF* def) {
  return def->opcodes > 1 || def->modrm != RMN;
}

static void add_decoding(DECODER* dec, const INSDEF* def, int opcode1) {
  assert(dec != NULL);
  assert(def != NULL);
  assert(def->opcode_prefix >= 0 && def->opcode_prefix < WAIT_PREFIXES);
  assert(opcode1 >= 0 && opcode1 < 0x100);

  OPCODE_INFO* i = &dec->opcodes[opcode1];

  if (i->defs == NULL) {
    i->opcode_inc = def->opcode_inc;
    i->opcode_base = def->opcode1;
    i->opcode2_or_modrm = opcode2_or_modrm(def);
  }
  else {
    if (def->opcode_inc || i->opcode_inc) {
      if (def->opcode1 == 0xB8 && def->op == TOK_MOV) // LEA r, [addr] == MOV r, addr
        ;
      else if (def->opcode1 == 0x90 && def->op == TOK_XCHG) // NOP == XCHG AX, AX
        ;
      else
        fatal("internal error: multiple definitions for incrementing opcode 0x%02x\n", opcode1);
    }
    if (i->opcode_base != def->opcode1)
      fatal("internal error: conflicting base opcode for opcode 0x%02x\n", opcode1);
    if (i->opcode2_or_modrm != opcode2_or_modrm(def))
      fatal("internal error: conflicting second byte for opcode 0x%02x\n", opcode1);
    if (!i->opcode2_or_modrm)
      return;
  }

  struct insdef_node * n = emalloc(sizeof *n);
  n->def = def;
  n->next = NULL;

  struct insdef_node * *p = &i->defs;
  for ( ; *p != NULL; p = &(*p)->next)
    ;
  *p = n;
}

const OPCODE_INFO* opcode_info(const DECODER* dec, BYTE opcode) {
  assert(dec != NULL);
  assert(opcode >= 0 && opcode < 0x100);
  const OPCODE_INFO* p = &dec->opcodes[opcode];
  return (p->defs == NULL) ? NULL : p;
}

const INSDEF* find_unique(const OPCODE_INFO* i) {
  assert(i != NULL);
  assert(i->defs != NULL);
  assert(i->defs->next == NULL);

  return i->defs->def;
}

const INSDEF* find_opcode2(const OPCODE_INFO* i, bool waiting, BYTE opcode2) {
  // first take WAIT prefix into account in case there are distinct defs e.g. FCLEX, FNCLEX
  BYTE wait_prefix = waiting ? WAIT : NOPR;
  for (const struct insdef_node * p = i->defs; p; p = p->next) {
    if (p->def->opcodes >= 2 && p->def->opcode2 == opcode2 && p->def->opcode_prefix == wait_prefix)
      return p->def;
  }

  for (const struct insdef_node * p = i->defs; p; p = p->next) {
    if (p->def->opcodes >= 2 && p->def->opcode2 == opcode2)
      return p->def;
  }

  return NULL;
}

static bool match_modrm(const INSDEF*, int mod, int reg, int rm);

// During disassembly: find INSDEF matching ModR/M values on the opcode's list of encodings.
const INSDEF* find_modrm(BYTE opcode, const OPCODE_INFO* i, bool waiting, int mod, int reg, int rm) {
#ifndef NDEBUG
  const INSDEF* def = NULL;
#endif

  // first take WAIT prefix into account in case there are distinct defs e.g. FSTCW, FNSTCW
  BYTE wait_prefix = waiting ? WAIT : NOPR;
  for (const struct insdef_node * p = i->defs; p; p = p->next) {
    if (p->def->opcode_prefix == wait_prefix && match_modrm(p->def, mod, reg, rm)) {
#ifdef NDEBUG
      return p->def;
#else
      if (def) {
        // OK if second is implicit form of first: IMUL AX, 3 ~ IMUL AX, AX, 3
        if (def->oper1 == OF_REG16 && def->oper2 != OF_RM16 && def->oper3 == OF_NONE &&
            p->def->oper1 == OF_REG16 && p->def->oper2 == OF_RM16 && p->def->oper3 == def->oper2)
          continue;
        // SAL and SHL are synonyms
        if (def->op == TOK_SAL && p->def->op == TOK_SHL)
          continue;
        // TEST operands can be either way around
        if (def->op == TOK_TEST && p->def->op == TOK_TEST &&
            def->oper1 == p->def->oper2 && def->oper2 == p->def->oper1 &&
            def->oper3 == OF_NONE && p->def->oper3 == OF_NONE)
          continue;
        // XCHG operands can be either way around
        if (def->op == TOK_XCHG && p->def->op == TOK_XCHG &&
            def->oper1 == p->def->oper2 && def->oper2 == p->def->oper1 &&
            def->oper3 == OF_NONE && p->def->oper3 == OF_NONE)
          continue;
        putchar('\n');
        fprintf(stderr, "Matching one opcode %02X, wait %s, mod %02X, rm %02X, reg %02X\n",
                opcode, waiting ? "WAIT" : "NOPR", mod, rm, reg);
        fatal("internal error: %s: %d: multiple opcode match\n", __FILE__, __LINE__);
      }
      if (p->def->cpu == P87)
        return p->def;
      def = p->def;
#endif
    }
  }
#ifndef NDEBUG
  if (def)
    return def;
#endif

  for (const struct insdef_node * p = i->defs; p; p = p->next) {
    if (match_modrm(p->def, mod, reg, rm)) {
#ifdef NDEBUG
      return p->def;
#else
      if (def) {
        putchar('\n');
        fprintf(stderr, "Matching one opcode %02X, mod %02X, rm %02X, reg %02X\n", opcode, mod, rm, reg);
        fatal("internal error: %s: %d: multiple opcode match\n", __FILE__, __LINE__, mod, rm, reg);
      }
      def = p->def;
#endif
    }
  }

  return def;
}

static bool match_modrm(const INSDEF* def, int mod, int reg, int rm) {
    switch (def->modrm) {
      case RMN:
        break;
      case RRM:
      case RMR:
        return true;
      case RMC:
        return (def->reg == reg);
      case REG:
        return mod == 3 && rm == reg;
      case MMC:
        return (mod != 3 && def->reg == reg);
      case SSI:
      case SIS:
      case SIC:
        return (mod == 3 && def->reg == reg);
      case SSC:
      case STC:
        return (mod == 3 && def->reg == reg && rm == 0);
      case STK:
        return (mod == 3 && def->reg == reg && rm == 1);
      default:
        fatal("internal error: %s: %d: unexpected modrm: %d\n", __FILE__, __LINE__, def->modrm);
    }

    return false;
}
