// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Operand types and flags for matching operands in instruction table.

#ifndef OPCLASS_H
#define OPCLASS_H

#include "utils.h"

enum operand_type {
  OT_NONE,
  OT_REG,
  OT_SREG,
  OT_MEM,
  OT_IMM,
  OT_JUMP,
  OT_ST,    // ST, ST(i) 8087 stack
};

const char* operand_type_name(int);

enum operand_flag {
  OF_NONE,
  OF_RM,    // R/M
  OF_RM8,
  OF_RM16,
  OF_RM32,
  OF_RM48,
  OF_RM64,
  OF_RM80,
  OF_AL,    // register
  OF_CL,
  OF_AX,
  OF_DX,
  OF_REG8,
  OF_REG16,
  OF_SREG,  // segment register
  OF_CS,
  OF_SS,
  OF_DS,
  OF_ES,
  OF_MEM,   // memory
  OF_MEM8,
  OF_MEM16,
  OF_MEM32,
  OF_MEM48,
  OF_MEM64,
  OF_MEM80,
  OF_INDIR,
  OF_SI,    // string
  OF_SI8,
  OF_SI16,
  OF_DI,
  OF_DI8,
  OF_DI16,
  OF_IMM,   // immediate
  OF_IMM8,
  OF_IMM8U,
  OF_1,
  OF_3,
  OF_JUMP,  // jump
  OF_FAR,
  OF_STI,   // ST(i)
  OF_STT,   // stack top: ST or ST(0)
};

const char* operand_flag_name(int);

#define OPERAND_FLAGS (6)

typedef struct {
  short type;
  short flags[OPERAND_FLAGS];
  short nflag;
} OPERAND_CLASS;

void init_operand_class(OPERAND_CLASS*);
void add_class_flag(OPERAND_CLASS*, int flag);
BOOL has_class_flag(const OPERAND_CLASS*, int flag);
BOOL flag_matches(const OPERAND_CLASS*, int flag);

#endif // OPCLASS_H
