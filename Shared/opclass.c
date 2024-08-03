// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Operand types and flags for matching operands in instruction table.

#include <stddef.h>
#include <assert.h>
#include "opclass.h"

const char* operand_type_name(int t) {
  const char* s = NULL;

  switch (t) {
    case OT_NONE: s = "OT_NONE"; break;
    case OT_REG: s = "OT_REG"; break;
    case OT_SREG: s = "OT_SREG"; break;
    case OT_MEM: s = "OT_MEM"; break;
    case OT_IMM: s = "OT_IMM"; break;
    case OT_JUMP: s = "OT_JUMP"; break;
    case OT_ST: s = "OT_ST"; break;
  }

  assert(s != NULL);
  return s;
}

const char* operand_flag_name(int flag) {
  const char* s = "???";

  switch (flag) {
    case OF_NONE: s = "OF_NONE"; break;
    // R/M
    case OF_RM: s = "OF_RM"; break;
    case OF_RM8: s = "OF_RM8"; break;
    case OF_RM16: s = "OF_RM16"; break;
    case OF_RM32: s = "OF_RM32"; break;
    // register
    case OF_AL: s = "OF_AL"; break;
    case OF_CL: s = "OF_CL"; break;
    case OF_AX: s = "OF_AX"; break;
    case OF_DX: s = "OF_DX"; break;
    case OF_REG8: s = "OF_REG8"; break;
    case OF_REG16: s = "OF_REG16"; break;
    // segment register
    case OF_SREG: s = "OF_SREG"; break;
    case OF_CS: s = "OF_CS"; break;
    case OF_SS: s = "OF_SS"; break;
    case OF_DS: s = "OF_DS"; break;
    case OF_ES: s = "OF_ES"; break;
    // memory
    case OF_MEM: s = "OF_MEM"; break;
    case OF_MEM8: s = "OF_MEM8"; break;
    case OF_MEM16: s = "OF_MEM16"; break;
    case OF_MEM32: s = "OF_MEM32"; break;
    case OF_INDIR: s = "OF_INDIR"; break;
    // immediate
    case OF_IMM: s = "OF_IMM"; break;
    case OF_IMM8: s = "OF_IMM8"; break;
    case OF_IMM8U: s = "OF_IMM8U"; break;
    case OF_1: s = "OF_1"; break;
    case OF_3: s = "OF_3"; break;
    // jump
    case OF_JUMP: s = "OF_JUMP"; break;
  }

  return s;
}

void init_operand_class(OPERAND_CLASS* op) {
  op->type = OT_NONE;
  op->nflag = 0;
}

void add_class_flag(OPERAND_CLASS* op, int flag) {
  assert(op != NULL);

  if (op->nflag >= OPERAND_FLAGS)
    fatal("internal error: max operand flags\n");

  op->flags[op->nflag++] = flag;
}

BOOL has_class_flag(const OPERAND_CLASS* op, int flag) {
  assert(op != NULL);

  for (int i = 0; i < op->nflag; i++) {
    if (op->flags[i] == flag)
      return TRUE;
  }

  return FALSE;
}

BOOL flag_matches(const OPERAND_CLASS* op, int flag) {
  if (flag == OF_NONE) {
    return op->type == OT_NONE;
  }
  return has_class_flag(op, flag);
}


#ifdef UNIT_TEST

#include <string.h>
#include "CuTest.h"

static void test_init_operand_class(CuTest* tc) {
  OPERAND_CLASS op;

  memset(&op, 0xff, sizeof op);

  init_operand_class(&op);

  CuAssertIntEquals(tc, OT_NONE, op.type);
  CuAssertIntEquals(tc, 0, op.nflag);
}

static void test_operand_flag_name(CuTest* tc) {
  CuAssertStrEquals(tc, "OF_RM8", operand_flag_name(OF_RM8));
  CuAssertStrEquals(tc, "OF_AX", operand_flag_name(OF_AX));
  CuAssertStrEquals(tc, "???", operand_flag_name(-1));
}

static void test_add_class_flag(CuTest* tc) {
  OPERAND_CLASS op;

  init_operand_class(&op);
  CuAssertIntEquals(tc, 0, op.nflag);

  add_class_flag(&op, OF_JUMP);
  CuAssertIntEquals(tc, 1, op.nflag);
  CuAssertIntEquals(tc, OF_JUMP, op.flags[0]);

  add_class_flag(&op, OF_RM16);
  CuAssertIntEquals(tc, 2, op.nflag);
  CuAssertIntEquals(tc, OF_JUMP, op.flags[0]);
  CuAssertIntEquals(tc, OF_RM16, op.flags[1]);
}

CuSuite* operand_class_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_init_operand_class);
  SUITE_ADD_TEST(suite, test_operand_flag_name);
  SUITE_ADD_TEST(suite, test_add_class_flag);
  return suite;
}

#endif // UNIT_TEST
