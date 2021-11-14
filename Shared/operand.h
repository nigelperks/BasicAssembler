// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Assembly operands.

#ifndef OPERAND_H
#define OPERAND_H

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
  // R/M
  OF_RM,
  OF_RM8,
  OF_RM16,
  OF_RM32,
  OF_RM64,
  OF_RM80,
  // register
  OF_AL,
  OF_CL,
  OF_AX,
  OF_DX,
  OF_REG8,
  OF_REG16,
  // segment register
  OF_SREG,
  // memory
  OF_MEM,
  OF_MEM8,
  OF_MEM16,
  OF_MEM32,
  OF_MEM64,
  OF_MEM80,
  OF_INDIR,
  // string
  OF_SI,
  OF_SI8,
  OF_SI16,
  OF_DI,
  OF_DI8,
  OF_DI16,
  // immediate
  OF_IMM,
  OF_IMM8,
  OF_1,
  OF_3,
  // jump
  OF_JUMP,
  OF_FAR,
  // floating point stack
  OF_ST,  // ST, ST(i)
  OF_STI, // ST(i)
};

#define OPERAND_FLAGS (6)

enum imm_type {
  IMM_ABS, // absolute (non-relative) value
  IMM_OFFSET, // OFFSET of label
  IMM_SEG, // SEG of label
  IMM_SECTION, // segment or group name
};

enum disp_type { NO_DISP, ABS_DISP, REL_DISP };

enum jump_type { ABS_JUMP, LABEL_JUMP, FAR_JUMP };

enum jump_distance { SHORT, NEAR, FAR };

#define NO_REG (-1)

typedef struct {
  int type;
  int flags[OPERAND_FLAGS];
  unsigned nflag;
  union {
    // OT_REG, OT_SREG, OT_ST
    int reg;
    // OT_MEM
    struct mem {
      short base_reg;
      short index_reg;
      short disp_type;
      union {
        long sval;
        int label;
      } disp;
      short sreg_override;
      short size_override;
    } mem;
    // OT_IMM
    struct imm {
      short type;
      long sval;
      int label;
    } imm;
    // OT_JUMP
    struct jump {
      short distance;
      short target_type;
      union {
        DWORD abs;
        int label;
        struct {
          WORD seg;
          WORD offset;
        } far;
      } target;
    } jump;
  } val;
} OPERAND;

void init_operand(OPERAND*);

const char* operand_flag_name(int flag);

void add_flag(OPERAND*, int flag);
BOOL has_flag(const OPERAND*, int flag);

int default_sreg(const struct mem *);

#endif // OPERAND_H
