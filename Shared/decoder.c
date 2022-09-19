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
  assert(def->wait_prefix >= 0 && def->wait_prefix < WAIT_PREFIXES);
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
  for (const struct insdef_node * p = i->defs; p; p = p->next) {
    if (p->def->opcodes >= 2 && p->def->opcode2 == opcode2)
      return p->def;
  }

  return NULL;
}

static bool match_modrm(const INSDEF* def, int mod, int reg, int rm);

const INSDEF* find_modrm(BYTE opcode, const OPCODE_INFO* i, bool waiting, int mod, int reg, int rm) {
  for (const struct insdef_node * p = i->defs; p; p = p->next) {
    if (match_modrm(p->def, mod, reg, rm))
      return p->def;
  }

  return NULL;
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
