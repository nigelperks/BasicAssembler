// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Instruction decoder.

#include <assert.h>
#include "decoder.h"
#include "token.h"

void decode_modrm(BYTE val, MODRM* p) {
  p->rm = val & 0x07;
  p->reg = (val >> 3) & 0x07;
  p->mod = (val >> 6) & 0x03;

  switch (p->mod) {
  case 0: p->disp_size = (p->rm == 6) ? 2 : 0; break;
  case 1: p->disp_size = 1; break;
  case 2: p->disp_size = 2; break;
  case 3: p->disp_size = 0; break;
  }

  p->disp = 0;
}

static struct insdef_node * new_insdef_node(const INSDEF* def) {
  assert(def != NULL);
  struct insdef_node * p = emalloc(sizeof *p);
  p->def = def;
  p->next = NULL;
  return p;
}

static void delete_insdef_node(struct insdef_node * p) {
  efree(p);
}

static void delete_insdef_list(struct insdef_node * p) {
  while (p) {
    struct insdef_node * next = p->next;
    delete_insdef_node(p);
    p = next;
  }
}

static struct opcode2_node * new_opcode2_node(BYTE opcode2, int modrm) {
  struct opcode2_node * p = emalloc(sizeof *p);
  p->opcode2 = opcode2;
  p->has_modrm = modrm != RMN;
  p->first_def = NULL;
  p->last_def = NULL;
  p->next = NULL;
  return p;
};

static void delete_opcode2_node(struct opcode2_node * p) {
  if (p) {
    delete_insdef_list(p->first_def);
    efree(p);
  }
}

static void delete_opcode2_list(struct opcode2_node * p) {
  while (p) {
    struct opcode2_node * next = p->next;
    delete_opcode2_node(p);
    p = next;
  }
}

static struct opcode2_node * find_opcode2(struct opcode2_node * first, BYTE opcode2) {
  for (struct opcode2_node * p = first; p; p = p->next) {
    if (p->opcode2 == opcode2)
      return p;
  }
  return NULL;
}

// Is this instruction an alternative form that need not be in decoder?
// E.g. do not add XCHG AX, AX as well NOP.
static bool alternative(const INSDEF* def, int opcode1) {
  if (def->op == TOK_XCHG) {
    if (opcode1 == 0x90) // XCHG AX, AX -> NOP
      return true;
    if (def->oper1 == OF_REG16 && def->oper2 == OF_AX) // XCHG r16, AX -> XCHG AX, r16
      return true;
    return false;
  }
  if (def->op == TOK_INT && def->oper1 == OF_3)
    return true; // prefer dedicated opcode INT3
  if (def->op == TOK_LEA && def->oper2 == OF_INDIR)
    return true; // LEA AX, [disp] -> MOV AX, disp
  switch (def->op) {
    case TOK_CMPS:    // CMPSB/W
    case TOK_WAIT:    // FWAIT - prefer FWAIT because usually occurs among FPU instructions
    case TOK_INS:     // INSB/W
    case TOK_JC:      // JB
    case TOK_JNA:     // JBE
    case TOK_JNB:     // JAE
    case TOK_JNC:     // JAE
    case TOK_JNAE:    // JB
    case TOK_JNBE:    // JA
    case TOK_JNG:     // JLE
    case TOK_JNGE:    // JL
    case TOK_JNL:     // JGE
    case TOK_JNLE:    // JG
    case TOK_JNP:     // JPO
    case TOK_JNZ:     // JNE
    case TOK_JP:      // JPE
    case TOK_JZ:      // JE
    case TOK_IRET:    // IRETW
    case TOK_LODS:    // LODSB/W
    case TOK_LOOPNZ:  // LOOPNE
    case TOK_LOOPZ:   // LOOPE
    case TOK_MOVS:    // MOVSB/W
    case TOK_OUTS:    // OUTSB/W
    case TOK_POPA:    // POPAW
    case TOK_POPF:    // POPFW
    case TOK_PUSHA:   // PUSHAW
    case TOK_PUSHF:   // PUSHFW
    case TOK_RET:     // RETN
    case TOK_SAL:     // SHL
    case TOK_SCAS:    // SCASB/W
    case TOK_STOS:    // STOSB/W
      return true;
  }
  return false;
}

static void add_decoding(DECODER* dec, const INSDEF* def, int opcode1) {
  assert(dec != NULL);
  assert(def != NULL);
  assert(def->wait_prefix >= 0 && def->wait_prefix < WAIT_PREFIXES);
  assert(opcode1 >= 0 && opcode1 < 0x100);

  OPCODE1_INFO* i = &dec->opcodes[opcode1];

  if (alternative(def, opcode1))
    return;

  if (i->first_opcode2 == NULL) {
    i->opcode_inc = def->opcode_inc;
    i->opcode_base = def->opcode1;
    i->has_opcode2 = (def->opcodes > 1);
  }
  else {
    if (def->opcode_inc != i->opcode_inc)
      fatal("internal error: decoding conflict: opcode 0x%02x: opcode_inc %d vs %d\n", opcode1, i->opcode_inc, def->opcode_inc);
    if (def->opcode_inc) {
      if (def->opcode1 == 0xB8 && def->op == TOK_MOV) // LEA r, [addr] == MOV r, addr
        ;
      else if (def->opcode1 == 0x90 && def->op == TOK_XCHG) // NOP == XCHG AX, AX
        ;
      else
        fatal("internal error: multiple definitions for incrementing opcode 0x%02x\n", opcode1);
    }
    if (i->opcode_base != def->opcode1)
      fatal("internal error: decoding conflict: base opcode for opcode 0x%02x\n", opcode1);
    if (i->has_opcode2 != (def->opcodes > 1))
      fatal("internal error: decoding conflict: opcode 0x%02x: has_opcode2 inconsistent\n", opcode1);
  }

  struct opcode2_node * opcode2;
  if (i->has_opcode2)
    opcode2 = find_opcode2(i->first_opcode2, def->opcode2);
  else {
    assert(i->first_opcode2 == NULL || i->first_opcode2->next == NULL);
    opcode2 = i->first_opcode2;
  }
  if (opcode2 == NULL) {
    opcode2 = new_opcode2_node(def->opcode2, def->modrm);
    opcode2->next = i->first_opcode2;
    i->first_opcode2 = opcode2;
  }
  else {
    if (i->has_opcode2 && opcode2->opcode2 != def->opcode2)
      fatal("internal error: decoding: opcode 0x%02x: decoder's opcode2 is 0x%02x: expected 0x%02x\n",
            opcode1, opcode2->opcode2, def->opcode2);
    if (opcode2->has_modrm != (def->modrm != RMN))
      fatal("internal error: decoding: ModR/M byte for opcodes: 0x%02x 0x%02x\n", opcode1, def->opcode2);
  }

  struct insdef_node * def_node = new_insdef_node(def);

  if (opcode2->first_def == NULL) {
    assert(opcode2->last_def == NULL);
    opcode2->first_def = def_node;
    opcode2->last_def = def_node;
  }
  else {
    assert(opcode2->last_def != NULL);
    if (!opcode2->has_modrm)
      fatal("internal error: decoding: opcodes 0x%02x 0x%02x: adding second INSDEF despite no ModR/M byte\n", opcode1, def->opcode2);
    opcode2->last_def->next = def_node;
    opcode2->last_def = def_node;
  }
}

DECODER* build_decoder(void) {
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

void delete_decoder(DECODER* dec) {
  if (dec) {
    for (unsigned opcode1 = 0; opcode1 < 0x100; opcode1++)
      delete_opcode2_list(dec->opcodes[opcode1].first_opcode2);
    efree(dec);
  }
}

const OPCODE1_INFO* opcode1_info(const DECODER* dec, BYTE opcode1) {
  assert(dec != NULL);
  assert(opcode1 >= 0 && opcode1 < 0x100);
  const OPCODE1_INFO* p = &dec->opcodes[opcode1];
  return (p->first_opcode2 == NULL) ? NULL : p;
}

const OPCODE2_INFO* opcode2_info(const OPCODE1_INFO* i, BYTE opcode2) {
  assert(i != NULL);
  if (!i->has_opcode2)
    fatal("internal error: %s: %d: opcode2 discrepancy\n", __FILE__, __LINE__);
  for (OPCODE2_INFO* p = i->first_opcode2; p; p = p->next) {
    if (p->opcode2 == opcode2)
      return p;
  }
  return NULL;
}

const OPCODE2_INFO* no_opcode2_info(const OPCODE1_INFO* i) {
  assert(i != NULL);
  if (i->has_opcode2)
    fatal("internal error: %s: %d: opcode2 decoding discrepancy\n", __FILE__, __LINE__);
  return i->first_opcode2;
}

const INSDEF* opcode2_no_modrm(int opcode1, const OPCODE2_INFO* i) {
  assert(i != NULL);
  if (i->has_modrm)
    fatal("internal error: opcodes 0x%02x 0x%02x: opcode2_no_modrm called for opcode2 with ModR/M\n", opcode1, i->opcode2);
  if (i->first_def == NULL)
    fatal("internal error: opcodes 0x%02x 0x%02x: opcode2_no_modrm called for opcode2 with no INSDEF\n", opcode1, i->opcode2);
  if (i->first_def->next != NULL)
    fatal("internal error: opcodes 0x%02x 0x%02x: opcode2 has multiple INSDEF despite having no ModR/M byte\n", opcode1, i->opcode2);
  return i->first_def->def;
}

static bool match_modrm(const INSDEF* def, BYTE modrm);

const INSDEF* opcode2_find_modrm(const OPCODE2_INFO* i, BYTE modrm) {
  for (const struct insdef_node * p = i->first_def; p; p = p->next) {
    if (match_modrm(p->def, modrm))
      return p->def;
  }

  return NULL;
}

static bool match_modrm(const INSDEF* def, BYTE byte) {
  if (def->modrm == CCC)
    return byte == def->opcode2;

  MODRM modrm;
  decode_modrm(byte, &modrm);

  switch (def->modrm) {
      case RMN:
        break;
      case RRM:
      case RMR:
        return true;
      case RMC:
        return (def->reg == modrm.reg);
      case REG:
        return modrm.mod == 3 && modrm.rm == modrm.reg;
      case MMC:
        return (modrm.mod != 3 && def->reg == modrm.reg);
      case SSI:
      case SIS:
      case SIC:
        return (modrm.mod == 3 && def->reg == modrm.reg);
      case SSC:
      case STC:
        return (modrm.mod == 3 && def->reg == modrm.reg && modrm.rm == 0);
      case STK:
        return (modrm.mod == 3 && def->reg == modrm.reg && modrm.rm == 1);
      default:
        fatal("internal error: %s: %d: unexpected modrm: %d\n", __FILE__, __LINE__, def->modrm);
  }

  return false;
}


#ifdef UNIT_TEST

#include "CuTest.h"

static void test_new_insdef_node(CuTest* tc) {
  INSDEF def;
  struct insdef_node* node = new_insdef_node(&def);
  CuAssertPtrNotNull(tc, node);
  CuAssertTrue(tc, node->def == &def);
  CuAssertPtrEquals(tc, NULL, node->next);
  delete_insdef_node(node);
}

static void test_insdef_list(CuTest* tc) {
  INSDEF def;
  struct insdef_node *node1, *node2, *node3;

  // null list
  delete_insdef_list(NULL);

  // one node
  node1 = new_insdef_node(&def);
  delete_insdef_list(node1);

  // multi-node
  node1 = new_insdef_node(&def);
  node2 = new_insdef_node(&def);
  node3 = new_insdef_node(&def);
  node1->next = node2;
  node2->next = node3;
  delete_insdef_list(node1);
}

static void test_new_opcode2_node(CuTest* tc) {
  struct opcode2_node * node;
  struct insdef_node *def1, *def2, *def3;
  INSDEF def;

  // no opcode2 or ModR/M
  node = new_opcode2_node(0, RMN);
  CuAssertPtrNotNull(tc, node);
  CuAssertIntEquals(tc, 0, node->opcode2);
  CuAssertIntEquals(tc, false, node->has_modrm);
  CuAssertPtrEquals(tc, NULL, node->first_def);
  CuAssertPtrEquals(tc, NULL, node->last_def);
  CuAssertPtrEquals(tc, NULL, node->next);
  delete_opcode2_node(node);

  // with opcode2 and ModR/M
  node = new_opcode2_node(0x12, RRM);
  CuAssertPtrNotNull(tc, node);
  CuAssertIntEquals(tc, 0x12, node->opcode2);
  CuAssertIntEquals(tc, true, node->has_modrm);
  CuAssertPtrEquals(tc, NULL, node->first_def);
  CuAssertPtrEquals(tc, NULL, node->last_def);
  CuAssertPtrEquals(tc, NULL, node->next);
  delete_opcode2_node(node);

  // delete def list
  node = new_opcode2_node(0x00, MMC);
  def1 = new_insdef_node(&def);
  def2 = new_insdef_node(&def);
  def3 = new_insdef_node(&def);
  def1->next = def2;
  def2->next = def3;
  node->first_def = def1;
  node->last_def = def3;
  delete_opcode2_node(node);
};

static void test_opcode2_list(CuTest* tc) {
  struct opcode2_node * first;
  struct opcode2_node * second;
  struct insdef_node *def1, *def2, *def3;
  INSDEF def;

  // node with no def list
  first = new_opcode2_node(0x12, MMC);

  // node with def list
  def1 = new_insdef_node(&def);
  def2 = new_insdef_node(&def);
  def3 = new_insdef_node(&def);
  def1->next = def2;
  def2->next = def3;
  second = new_opcode2_node(0x00, RMN);
  second->first_def = def1;
  second->last_def = def3;
  first->next = second;

  delete_opcode2_list(first);
}

static void test_find_opcode2(CuTest* tc) {
  struct opcode2_node * node;
  struct opcode2_node *node1, *node2, *node3;

  node = find_opcode2(NULL, 0x12);
  CuAssertPtrEquals(tc, NULL, node);

  node1 = new_opcode2_node(0x73, RMC);
  node2 = new_opcode2_node(0x00, RMR);
  node3 = new_opcode2_node(0x12, RRM);
  node1->next = node2;
  node2->next = node3;

  node = find_opcode2(node1, 0x12);
  CuAssertPtrEquals(tc, node3, node);

  node = find_opcode2(node1, 0x73);
  CuAssertPtrEquals(tc, node1, node);

  node = find_opcode2(node1, 0xff);
  CuAssertPtrEquals(tc, NULL, node);

  delete_opcode2_node(node1);
  delete_opcode2_node(node2);
  delete_opcode2_node(node3);
}

static void test_build_decoder(CuTest* tc) {
  DECODER* dec = build_decoder();
  CuAssertPtrNotNull(tc, dec);
  delete_decoder(dec);
}

CuSuite* decoder_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_new_insdef_node);
  SUITE_ADD_TEST(suite, test_insdef_list);
  SUITE_ADD_TEST(suite, test_new_opcode2_node);
  SUITE_ADD_TEST(suite, test_opcode2_list);
  SUITE_ADD_TEST(suite, test_find_opcode2);
  SUITE_ADD_TEST(suite, test_build_decoder);
  return suite;
}

#endif // UNIT_TEST
