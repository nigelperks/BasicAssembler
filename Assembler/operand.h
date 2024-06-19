// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Assembly operands.

#ifndef OPERAND_H
#define OPERAND_H

#include "opclass.h"
#include "symbol.h"
#include "utils.h"

enum imm_type {
  IMM_ABS, // absolute (non-relative) value
  IMM_OFFSET, // OFFSET of label
  IMM_SEG, // SEG of label
  IMM_SECTION, // segment or group name
};

enum disp_type { NO_DISP, ABS_DISP, REL_DISP };

enum jump_type { ABS_JUMP, LABEL_JUMP, FAR_JUMP };

enum jump_distance { SHORT, NEAR, FAR };

typedef short REGNO;

typedef struct {
  OPERAND_CLASS opclass;
  union {
    // OT_REG, OT_SREG, OT_ST
    struct reg {
      REGNO no;
      short size;
    } reg;
    // OT_MEM
    struct mem {
      short base_reg;
      short index_reg;
      short disp_type;
      union {
        long sval;
        const SYMBOL* label;
      } disp;
      short sreg_override;
      short size_override;
    } mem;
    // OT_IMM
    struct imm {
      short type;
      long sval;
      const SYMBOL* label;
    } imm;
    // OT_JUMP
    struct jump {
      short distance;
      short target_type;
      union {
        DWORD abs;
        const SYMBOL* label;
        struct {
          WORD seg;
          WORD offset;
        } far;
      } target;
    } jump;
  } val;
} OPERAND;

void init_operand(OPERAND*);
void add_flag(OPERAND*, int flag);
BOOL has_flag(const OPERAND*, int flag);

#endif // OPERAND_H
