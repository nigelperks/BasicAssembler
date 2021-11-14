// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Instruction table

#include <assert.h>
#include "instable.h"
#include "operand.h"
#include "token.h"

static const INSDEF instable[] = {
//  instruc     oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_AAA,    OF_NONE,  OF_NONE,  1, NOPR, 0x37, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_AAD,    OF_NONE,  OF_NONE,  2, NOPR, 0xD5, 0x0A, 0,  RMN, 0,  0, 0, P86 },
  { TOK_AAM,    OF_NONE,  OF_NONE,  2, NOPR, 0xD4, 0x0A, 0,  RMN, 0,  0, 0, P86 },
  { TOK_AAS,    OF_NONE,  OF_NONE,  1, NOPR, 0x3F, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_ADC,    OF_AL,    OF_IMM,   1, NOPR, 0x14, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_ADC,    OF_AX,    OF_IMM,   1, NOPR, 0x15, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_ADC,    OF_REG8,  OF_RM,    1, NOPR, 0x12, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_ADC,    OF_RM,    OF_REG8,  1, NOPR, 0x10, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_ADC,    OF_REG16, OF_RM,    1, NOPR, 0x13, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_ADC,    OF_RM,    OF_REG16, 1, NOPR, 0x11, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_ADC,    OF_RM8,   OF_IMM,   1, NOPR, 0x80, 0x00, 0,  RMC, 2,  0, 1, P86 },
  { TOK_ADC,    OF_RM16,  OF_IMM8,  1, NOPR, 0x83, 0x00, 0,  RMC, 2,  0, 1, P86 },
  { TOK_ADC,    OF_RM16,  OF_IMM,   1, NOPR, 0x81, 0x00, 0,  RMC, 2,  0, 2, P86 },

  { TOK_ADD,    OF_AL,    OF_IMM,   1, NOPR, 0x04, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_ADD,    OF_AX,    OF_IMM,   1, NOPR, 0x05, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_ADD,    OF_RM8,   OF_IMM,   1, NOPR, 0x80, 0x00, 0,  RMC, 0,  0, 1, P86 },
  { TOK_ADD,    OF_RM16,  OF_IMM8,  1, NOPR, 0x83, 0x00, 0,  RMC, 0,  0, 1, P86 },
  { TOK_ADD,    OF_RM16,  OF_IMM,   1, NOPR, 0x81, 0x00, 0,  RMC, 0,  0, 2, P86 },
  { TOK_ADD,    OF_REG8,  OF_RM,    1, NOPR, 0x02, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_ADD,    OF_RM,    OF_REG8,  1, NOPR, 0x00, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_ADD,    OF_REG16, OF_RM,    1, NOPR, 0x03, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_ADD,    OF_RM,    OF_REG16, 1, NOPR, 0x01, 0x00, 0,  RMR, 0,  0, 0, P86 },

  { TOK_AND,    OF_AL,    OF_IMM,   1, NOPR, 0x24, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_AND,    OF_AX,    OF_IMM,   1, NOPR, 0x25, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_AND,    OF_RM8,   OF_IMM,   1, NOPR, 0x80, 0x00, 0,  RMC, 4,  0, 1, P86 },
  { TOK_AND,    OF_RM16,  OF_IMM8,  1, NOPR, 0x83, 0x00, 0,  RMC, 4,  0, 1, P86 },
  { TOK_AND,    OF_RM16,  OF_IMM,   1, NOPR, 0x81, 0x00, 0,  RMC, 4,  0, 2, P86 },
  { TOK_AND,    OF_REG8,  OF_RM,    1, NOPR, 0x22, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_AND,    OF_RM,    OF_REG8,  1, NOPR, 0x20, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_AND,    OF_REG16, OF_RM,    1, NOPR, 0x23, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_AND,    OF_RM,    OF_REG16, 1, NOPR, 0x21, 0x00, 0,  RMR, 0,  0, 0, P86 },

//  instruc     oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_CALL,   OF_JUMP,  OF_NONE,  1, NOPR, 0xE8, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_CALL,   OF_RM16,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 2,  0, 0, P86 },
  { TOK_CALL,   OF_RM32,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 3,  0, 0, P86 },
  { TOK_CALL,   OF_FAR,   OF_NONE,  1, NOPR, 0x9A, 0x00, 0,  RMN, 0,  0, 4, P86 },

  { TOK_CBW,    OF_NONE,  OF_NONE,  1, NOPR, 0x98, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_CLC,    OF_NONE,  OF_NONE,  1, NOPR, 0xF8, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_CLD,    OF_NONE,  OF_NONE,  1, NOPR, 0xFC, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_CLI,    OF_NONE,  OF_NONE,  1, NOPR, 0xFA, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_CMC,    OF_NONE,  OF_NONE,  1, NOPR, 0xF5, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_CMP,    OF_AL,    OF_IMM,   1, NOPR, 0x3C, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_CMP,    OF_AX,    OF_IMM,   1, NOPR, 0x3D, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_CMP,    OF_RM8,   OF_IMM,   1, NOPR, 0x80, 0x00, 0,  RMC, 7,  0, 1, P86 },
  { TOK_CMP,    OF_RM16,  OF_IMM8,  1, NOPR, 0x83, 0x00, 0,  RMC, 7,  0, 1, P86 },
  { TOK_CMP,    OF_RM16,  OF_IMM,   1, NOPR, 0x81, 0x00, 0,  RMC, 7,  0, 2, P86 },
  { TOK_CMP,    OF_REG8,  OF_RM,    1, NOPR, 0x3A, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_CMP,    OF_RM,    OF_REG8,  1, NOPR, 0x38, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_CMP,    OF_REG16, OF_RM,    1, NOPR, 0x3B, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_CMP,    OF_RM,    OF_REG16, 1, NOPR, 0x39, 0x00, 0,  RMR, 0,  0, 0, P86 },

  { TOK_CMPSB,  OF_NONE,  OF_NONE,  1, NOPR, 0xA6, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_CMPSW,  OF_NONE,  OF_NONE,  1, NOPR, 0xA7, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_CMPS,   OF_SI8,   OF_DI,    1, NOPR, 0xA6, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_CMPS,   OF_SI,    OF_DI8,   1, NOPR, 0xA6, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_CMPS,   OF_SI16,  OF_DI,    1, NOPR, 0xA7, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_CMPS,   OF_SI,    OF_DI16,  1, NOPR, 0xA7, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_CWD,    OF_NONE,  OF_NONE,  1, NOPR, 0x99, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_DAA,    OF_NONE,  OF_NONE,  1, NOPR, 0x27, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_DAS,    OF_NONE,  OF_NONE,  1, NOPR, 0x2F, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_DEC,    OF_REG16, OF_NONE,  1, NOPR, 0x48, 0x00, 1,  RMN, 0,  0, 0, P86 },
  { TOK_DEC,    OF_RM8,   OF_NONE,  1, NOPR, 0xFE, 0x00, 0,  RMC, 1,  0, 0, P86 },
  { TOK_DEC,    OF_RM16,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 1,  0, 0, P86 },

  { TOK_DIV,    OF_RM8,   OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 6,  0, 0, P86 },
  { TOK_DIV,    OF_RM16,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 6,  0, 0, P86 },

//  instruc      oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_F2XM1,   OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xF0, 0,  RMN, 0,  0, 0, P87 },  
  { TOK_FABS,    OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xE1, 0,  RMN, 0,  0, 0, P87 },

//  instruc      oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_FADD,    OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SCC, 0,  1, 0, P87 },
  { TOK_FADD,    OF_STI,   OF_ST,    1, WAIT, 0xDC, 0x00, 0,  SIS, 0,  0, 0, P87 },
  { TOK_FADD,    OF_ST,    OF_STI,   1, WAIT, 0xD8, 0x00, 0,  SSI, 0,  0, 0, P87 },
  { TOK_FADD,    OF_ST,    OF_ST,    1, WAIT, 0xD8, 0x00, 0,  SSI, 0,  0, 0, P87 },
  { TOK_FADD,    OF_MEM32, OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 0,  0, 0, P87 },
  { TOK_FADD,    OF_MEM64, OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 0,  0, 0, P87 },

  { TOK_FBLD,    OF_MEM80, OF_NONE,  1, WAIT, 0xDF, 0x00, 0,  RMC, 4,  0, 0, P87 },

  { TOK_FCHS,    OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xE0, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FCLEX,   OF_NONE,  OF_NONE,  2, WAIT, 0xDB, 0xE2, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FNCLEX,  OF_NONE,  OF_NONE,  2, NOPR, 0xDB, 0xE2, 0,  RMN, 0,  0, 0, P87 },

//  instruc      oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_FCOM,    OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SCC, 2,  1, 0, P87 },
  { TOK_FCOM,    OF_STI,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SIC, 2,  0, 0, P87 },
  { TOK_FCOM,    OF_ST,    OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SIC, 2,  0, 0, P87 },
  { TOK_FCOM,    OF_MEM32, OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 2,  0, 0, P87 },
  { TOK_FCOM,    OF_MEM64, OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 2,  0, 0, P87 },

//  instruc      oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_FCOMP,   OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SCC, 3,  1, 0, P87 },
  { TOK_FCOMP,   OF_STI,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SIC, 3,  1, 0, P87 },
  { TOK_FCOMP,   OF_ST,    OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SIC, 3,  1, 0, P87 },
  { TOK_FCOMP,   OF_MEM32, OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 3,  0, 0, P87 },
  { TOK_FCOMP,   OF_MEM64, OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 3,  0, 0, P87 },

  { TOK_FCOMPP,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SCC, 3,  1, 0, P87 },

//  instruc      oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_FDIV,    OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SCC, 7,  1, 0, P87 },

  { TOK_FDECSTP, OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xF6, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FDISI,   OF_NONE,  OF_NONE,  2, WAIT, 0xDB, 0xE1, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FNDISI,  OF_NONE,  OF_NONE,  2, NOPR, 0xDB, 0xE1, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FENI,    OF_NONE,  OF_NONE,  2, WAIT, 0xDB, 0xE0, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FNENI,   OF_NONE,  OF_NONE,  2, NOPR, 0xDB, 0xE0, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FINCSTP, OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xF7, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FINIT,   OF_NONE,  OF_NONE,  2, WAIT, 0xDB, 0xE3, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FNINIT,  OF_NONE,  OF_NONE,  2, NOPR, 0xDB, 0xE3, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FLDLG2,  OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xEC, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FLDLN2,  OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xED, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FLDL2E,  OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xEA, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FLDL2T,  OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xE9, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FLDPI,   OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xEB, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FLDZ,    OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xEE, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FLD1,    OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xE8, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FNOP,    OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xD0, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FPATAN,  OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xF3, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FPREM,   OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xF8, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FPTAN,   OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xF2, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FRNDINT, OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xFC, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FSCALE,  OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xFD, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FSQRT,   OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xFA, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FTST,    OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xE4, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FWAIT,   OF_NONE,  OF_NONE,  1, NOPR, 0x9B, 0x00, 0,  RMN, 0,  0, 0, P87 },  
  { TOK_FXAM,    OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xE5, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FXTRACT, OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xF4, 0,  RMN, 0,  0, 0, P87 },
  { TOK_FYL2XP1, OF_NONE,  OF_NONE,  2, WAIT, 0xD9, 0xF9, 0,  RMN, 0,  0, 0, P87 },

  { TOK_HLT,    OF_NONE,  OF_NONE,  1, NOPR, 0xF4, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_IDIV,   OF_RM8,   OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 7,  0, 0, P86 },
  { TOK_IDIV,   OF_RM16,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 7,  0, 0, P86 },

  { TOK_IMUL,   OF_RM8,   OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 5,  0, 0, P86 },
  { TOK_IMUL,   OF_RM16,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 5,  0, 0, P86 },

  { TOK_IN,     OF_AL,    OF_IMM,   1, NOPR, 0xE4, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_IN,     OF_AX,    OF_IMM,   1, NOPR, 0xE5, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_IN,     OF_AL,    OF_DX,    1, NOPR, 0xEC, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_IN,     OF_AX,    OF_DX,    1, NOPR, 0xED, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_INC,    OF_REG16, OF_NONE,  1, NOPR, 0x40, 0x00, 1,  RMN, 0,  0, 0, P86 },
  { TOK_INC,    OF_RM8,   OF_NONE,  1, NOPR, 0xFE, 0x00, 0,  RMC, 0,  0, 0, P86 },
  { TOK_INC,    OF_RM16,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 0,  0, 0, P86 },

  { TOK_INT3,   OF_NONE,  OF_NONE,  1, NOPR, 0xCC, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_INT,    OF_3,     OF_NONE,  1, NOPR, 0xCC, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_INTO,   OF_NONE,  OF_NONE,  1, NOPR, 0xCE, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_INT,    OF_IMM,   OF_NONE,  1, NOPR, 0xCD, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_IRET,   OF_NONE,  OF_NONE,  1, NOPR, 0xCF, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_IRETW,  OF_NONE,  OF_NONE,  1, NOPR, 0xCF, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_JMP,    OF_RM16,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 4,  0, 0, P86 },
  { TOK_JMP,    OF_RM32,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 5,  0, 0, P86 },
  { TOK_JMP,    OF_FAR,   OF_NONE,  1, NOPR, 0xEA, 0x00, 0,  RMN, 0,  0, 4, P86 },

//  instruc     oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_JA,     OF_JUMP,  OF_NONE,  1, NOPR, 0x77, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JAE,    OF_JUMP,  OF_NONE,  1, NOPR, 0x73, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JB,     OF_JUMP,  OF_NONE,  1, NOPR, 0x72, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JBE,    OF_JUMP,  OF_NONE,  1, NOPR, 0x76, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JC,     OF_JUMP,  OF_NONE,  1, NOPR, 0x72, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JCXZ,   OF_JUMP,  OF_NONE,  1, NOPR, 0xE3, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JE,     OF_JUMP,  OF_NONE,  1, NOPR, 0x74, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JG,     OF_JUMP,  OF_NONE,  1, NOPR, 0x7F, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JGE,    OF_JUMP,  OF_NONE,  1, NOPR, 0x7D, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JL,     OF_JUMP,  OF_NONE,  1, NOPR, 0x7C, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JLE,    OF_JUMP,  OF_NONE,  1, NOPR, 0x7E, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNA,    OF_JUMP,  OF_NONE,  1, NOPR, 0x76, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNAE,   OF_JUMP,  OF_NONE,  1, NOPR, 0x72, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNB,    OF_JUMP,  OF_NONE,  1, NOPR, 0x73, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNBE,   OF_JUMP,  OF_NONE,  1, NOPR, 0x77, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNC,    OF_JUMP,  OF_NONE,  1, NOPR, 0x73, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNE,    OF_JUMP,  OF_NONE,  1, NOPR, 0x75, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNG,    OF_JUMP,  OF_NONE,  1, NOPR, 0x7E, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNGE,   OF_JUMP,  OF_NONE,  1, NOPR, 0x7C, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNL,    OF_JUMP,  OF_NONE,  1, NOPR, 0x7D, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNLE,   OF_JUMP,  OF_NONE,  1, NOPR, 0x7F, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNO,    OF_JUMP,  OF_NONE,  1, NOPR, 0x71, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNP,    OF_JUMP,  OF_NONE,  1, NOPR, 0x7B, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNS,    OF_JUMP,  OF_NONE,  1, NOPR, 0x79, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JNZ,    OF_JUMP,  OF_NONE,  1, NOPR, 0x75, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JO,     OF_JUMP,  OF_NONE,  1, NOPR, 0x70, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JP,     OF_JUMP,  OF_NONE,  1, NOPR, 0x7A, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JPE,    OF_JUMP,  OF_NONE,  1, NOPR, 0x7A, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JPO,    OF_JUMP,  OF_NONE,  1, NOPR, 0x7B, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JS,     OF_JUMP,  OF_NONE,  1, NOPR, 0x78, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_JZ,     OF_JUMP,  OF_NONE,  1, NOPR, 0x74, 0x00, 0,  RMN, 0,  0, 1, P86 },

  { TOK_LAHF,   OF_NONE,  OF_NONE,  1, NOPR, 0x9F, 0x00, 0,  RMN, 0,  0, 0, P86 },

  // Optimize LEA r16, [addr] to MOV r16, OFFSET addr
  { TOK_LEA,    OF_REG16, OF_INDIR, 1, NOPR, 0xB8, 0x00, 1,  RMN, 0,  0, 0, P86 },
  { TOK_LEA,    OF_REG16, OF_MEM,   1, NOPR, 0x8D, 0x00, 0,  RRM, 0,  0, 0, P86 },

  { TOK_LOCK,   OF_NONE,  OF_NONE,  1, NOPR, 0xF0, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_LODSB,  OF_NONE,  OF_NONE,  1, NOPR, 0xAC, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_LODSW,  OF_NONE,  OF_NONE,  1, NOPR, 0xAD, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_LODS,   OF_SI8,   OF_NONE,  1, NOPR, 0xAC, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_LODS,   OF_SI16,  OF_NONE,  1, NOPR, 0xAD, 0x00, 0,  RMN, 0,  0, 0, P86 },

//  instruc     oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_LOOP,   OF_JUMP,  OF_NONE,  1, NOPR, 0xE2, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_LOOPE,  OF_JUMP,  OF_NONE,  1, NOPR, 0xE1, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_LOOPZ,  OF_JUMP,  OF_NONE,  1, NOPR, 0xE1, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_LOOPNE, OF_JUMP,  OF_NONE,  1, NOPR, 0xE0, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_LOOPNZ, OF_JUMP,  OF_NONE,  1, NOPR, 0xE0, 0x00, 0,  RMN, 0,  0, 1, P86 },

  { TOK_MOV,    OF_AL,    OF_INDIR, 1, NOPR, 0xA0, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_MOV,    OF_AX,    OF_INDIR, 1, NOPR, 0xA1, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_MOV,    OF_INDIR, OF_AL,    1, NOPR, 0xA2, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_MOV,    OF_INDIR, OF_AX,    1, NOPR, 0xA3, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_MOV,    OF_REG8,  OF_IMM,   1, NOPR, 0xB0, 0x00, 1,  RMN, 0,  0, 1, P86 },
  { TOK_MOV,    OF_REG16, OF_IMM,   1, NOPR, 0xB8, 0x00, 1,  RMN, 0,  0, 2, P86 },
  { TOK_MOV,    OF_REG8,  OF_RM,    1, NOPR, 0x8A, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_MOV,    OF_RM,    OF_REG8,  1, NOPR, 0x88, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_MOV,    OF_REG16, OF_RM,    1, NOPR, 0x8B, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_MOV,    OF_RM,    OF_REG16, 1, NOPR, 0x89, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_MOV,    OF_RM,    OF_SREG,  1, NOPR, 0x8C, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_MOV,    OF_SREG,  OF_RM,    1, NOPR, 0x8E, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_MOV,    OF_RM8,   OF_IMM,   1, NOPR, 0xC6, 0x00, 0,  RMC, 0,  0, 1, P86 },
  { TOK_MOV,    OF_RM16,  OF_IMM,   1, NOPR, 0xC7, 0x00, 0,  RMC, 0,  0, 2, P86 },

  { TOK_MOVSB,  OF_NONE,  OF_NONE,  1, NOPR, 0xA4, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_MOVSW,  OF_NONE,  OF_NONE,  1, NOPR, 0xA5, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_MOVS,   OF_DI8,   OF_SI,    1, NOPR, 0xA4, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_MOVS,   OF_DI,    OF_SI8,   1, NOPR, 0xA4, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_MOVS,   OF_DI16,  OF_SI,    1, NOPR, 0xA5, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_MOVS,   OF_DI,    OF_SI16,  1, NOPR, 0xA5, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_MUL,    OF_RM8,   OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 4,  0, 0, P86 },
  { TOK_MUL,    OF_RM16,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 4,  0, 0, P86 },

  { TOK_NEG,    OF_RM8,   OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 3,  0, 0, P86 },
  { TOK_NEG,    OF_RM16,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 3,  0, 0, P86 },

//  instruc     oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_NOP,    OF_NONE,  OF_NONE,  1, NOPR, 0x90, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_NOT,    OF_RM8,   OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 2,  0, 0, P86 },
  { TOK_NOT,    OF_RM16,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 2,  0, 0, P86 },

  { TOK_OR,     OF_AL,    OF_IMM,   1, NOPR, 0x0C, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_OR,     OF_AX,    OF_IMM,   1, NOPR, 0x0D, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_OR,     OF_RM8,   OF_IMM,   1, NOPR, 0x80, 0x00, 0,  RMC, 1,  0, 1, P86 },
  { TOK_OR,     OF_RM16,  OF_IMM8,  1, NOPR, 0x83, 0x00, 0,  RMC, 1,  0, 1, P86 },
  { TOK_OR,     OF_RM16,  OF_IMM,   1, NOPR, 0x81, 0x00, 0,  RMC, 1,  0, 2, P86 },
  { TOK_OR,     OF_REG8,  OF_RM,    1, NOPR, 0x0A, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_OR,     OF_RM,    OF_REG8,  1, NOPR, 0x08, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_OR,     OF_REG16, OF_RM,    1, NOPR, 0x0B, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_OR,     OF_RM,    OF_REG16, 1, NOPR, 0x09, 0x00, 0,  RMR, 0,  0, 0, P86 },

  { TOK_OUT,    OF_IMM,   OF_AL,    1, NOPR, 0xE6, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_OUT,    OF_IMM,   OF_AX,    1, NOPR, 0xE7, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_OUT,    OF_DX,    OF_AL,    1, NOPR, 0xEE, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_OUT,    OF_DX,    OF_AX,    1, NOPR, 0xEF, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_POP,    OF_MEM16, OF_NONE,  1, NOPR, 0x8F, 0x00, 0,  RMC, 0,  0, 0, P86 },
  { TOK_POP,    OF_REG16, OF_NONE,  1, NOPR, 0x58, 0x00, 1,  RMN, 0,  0, 0, P86 },
  { TOK_POPF,   OF_NONE,  OF_NONE,  1, NOPR, 0x9D, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_POPFW,  OF_NONE,  OF_NONE,  1, NOPR, 0x9D, 0x00, 0,  RMN, 0,  0, 0, P86 },

//  instruc     oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_PUSH,   OF_MEM16, OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 6,  0, 0, P86 },
  { TOK_PUSH,   OF_REG16, OF_NONE,  1, NOPR, 0x50, 0x00, 1,  RMN, 0,  0, 0, P86 },
  { TOK_PUSHF,  OF_NONE,  OF_NONE,  1, NOPR, 0x9C, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_PUSHFW, OF_NONE,  OF_NONE,  1, NOPR, 0x9C, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_RCL,    OF_RM8,   OF_1,     1, NOPR, 0xD0, 0x00, 0,  RMC, 2,  0, 0, P86 },
  { TOK_RCL,    OF_RM8,   OF_CL,    1, NOPR, 0xD2, 0x00, 0,  RMC, 2,  0, 0, P86 },
  { TOK_RCL,    OF_RM16,  OF_1,     1, NOPR, 0xD1, 0x00, 0,  RMC, 2,  0, 0, P86 },
  { TOK_RCL,    OF_RM16,  OF_CL,    1, NOPR, 0xD3, 0x00, 0,  RMC, 2,  0, 0, P86 },

  { TOK_RCR,    OF_RM8,   OF_1,     1, NOPR, 0xD0, 0x00, 0,  RMC, 3,  0, 0, P86 },
  { TOK_RCR,    OF_RM8,   OF_CL,    1, NOPR, 0xD2, 0x00, 0,  RMC, 3,  0, 0, P86 },
  { TOK_RCR,    OF_RM16,  OF_1,     1, NOPR, 0xD1, 0x00, 0,  RMC, 3,  0, 0, P86 },
  { TOK_RCR,    OF_RM16,  OF_CL,    1, NOPR, 0xD3, 0x00, 0,  RMC, 3,  0, 0, P86 },

  { TOK_RET,    OF_NONE,  OF_NONE,  1, NOPR, 0xC3, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_RET,    OF_IMM,   OF_NONE,  1, NOPR, 0xC2, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_RETN,   OF_NONE,  OF_NONE,  1, NOPR, 0xC3, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_RETN,   OF_IMM,   OF_NONE,  1, NOPR, 0xC2, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_RETF,   OF_NONE,  OF_NONE,  1, NOPR, 0xCB, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_RETF,   OF_IMM,   OF_NONE,  1, NOPR, 0xCA, 0x00, 0,  RMN, 0,  0, 2, P86 },

  { TOK_ROL,    OF_RM8,   OF_1,     1, NOPR, 0xD0, 0x00, 0,  RMC, 0,  0, 0, P86 },
  { TOK_ROL,    OF_RM8,   OF_CL,    1, NOPR, 0xD2, 0x00, 0,  RMC, 0,  0, 0, P86 },
  { TOK_ROL,    OF_RM16,  OF_1,     1, NOPR, 0xD1, 0x00, 0,  RMC, 0,  0, 0, P86 },
  { TOK_ROL,    OF_RM16,  OF_CL,    1, NOPR, 0xD3, 0x00, 0,  RMC, 0,  0, 0, P86 },

  { TOK_ROR,    OF_RM8,   OF_1,     1, NOPR, 0xD0, 0x00, 0,  RMC, 1,  0, 0, P86 },
  { TOK_ROR,    OF_RM8,   OF_CL,    1, NOPR, 0xD2, 0x00, 0,  RMC, 1,  0, 0, P86 },
  { TOK_ROR,    OF_RM16,  OF_1,     1, NOPR, 0xD1, 0x00, 0,  RMC, 1,  0, 0, P86 },
  { TOK_ROR,    OF_RM16,  OF_CL,    1, NOPR, 0xD3, 0x00, 0,  RMC, 1,  0, 0, P86 },

  { TOK_SAHF,   OF_NONE,  OF_NONE,  1, NOPR, 0x9E, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_SAL,    OF_RM8,   OF_1,     1, NOPR, 0xD0, 0x00, 0,  RMC, 4,  0, 0, P86 },
  { TOK_SAL,    OF_RM8,   OF_CL,    1, NOPR, 0xD2, 0x00, 0,  RMC, 4,  0, 0, P86 },
  { TOK_SAL,    OF_RM16,  OF_1,     1, NOPR, 0xD1, 0x00, 0,  RMC, 4,  0, 0, P86 },
  { TOK_SAL,    OF_RM16,  OF_CL,    1, NOPR, 0xD3, 0x00, 0,  RMC, 4,  0, 0, P86 },

  { TOK_SAR,    OF_RM8,   OF_1,     1, NOPR, 0xD0, 0x00, 0,  RMC, 7,  0, 0, P86 },
  { TOK_SAR,    OF_RM8,   OF_CL,    1, NOPR, 0xD2, 0x00, 0,  RMC, 7,  0, 0, P86 },
  { TOK_SAR,    OF_RM16,  OF_1,     1, NOPR, 0xD1, 0x00, 0,  RMC, 7,  0, 0, P86 },
  { TOK_SAR,    OF_RM16,  OF_CL,    1, NOPR, 0xD3, 0x00, 0,  RMC, 7,  0, 0, P86 },

  { TOK_SBB,    OF_AL,    OF_IMM,   1, NOPR, 0x1C, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_SBB,    OF_AX,    OF_IMM,   1, NOPR, 0x1D, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_SBB,    OF_RM8,   OF_IMM,   1, NOPR, 0x80, 0x00, 0,  RMC, 3,  0, 1, P86 },
  { TOK_SBB,    OF_RM16,  OF_IMM8,  1, NOPR, 0x83, 0x00, 0,  RMC, 3,  0, 1, P86 },
  { TOK_SBB,    OF_RM16,  OF_IMM,   1, NOPR, 0x81, 0x00, 0,  RMC, 3,  0, 2, P86 },
  { TOK_SBB,    OF_REG8,  OF_RM,    1, NOPR, 0x1A, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_SBB,    OF_RM,    OF_REG8,  1, NOPR, 0x18, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_SBB,    OF_REG16, OF_RM,    1, NOPR, 0x1B, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_SBB,    OF_RM,    OF_REG16, 1, NOPR, 0x19, 0x00, 0,  RMR, 0,  0, 0, P86 },

  { TOK_SCASB,  OF_NONE,  OF_NONE,  1, NOPR, 0xAE, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_SCASW,  OF_NONE,  OF_NONE,  1, NOPR, 0xAF, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_SCAS,   OF_DI8,   OF_NONE,  1, NOPR, 0xAE, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_SCAS,   OF_DI16,  OF_NONE,  1, NOPR, 0xAF, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_SHL,    OF_RM8,   OF_1,     1, NOPR, 0xD0, 0x00, 0,  RMC, 4,  0, 0, P86 },
  { TOK_SHL,    OF_RM8,   OF_CL,    1, NOPR, 0xD2, 0x00, 0,  RMC, 4,  0, 0, P86 },
  { TOK_SHL,    OF_RM16,  OF_1,     1, NOPR, 0xD1, 0x00, 0,  RMC, 4,  0, 0, P86 },
  { TOK_SHL,    OF_RM16,  OF_CL,    1, NOPR, 0xD3, 0x00, 0,  RMC, 4,  0, 0, P86 },

  { TOK_SHR,    OF_RM8,   OF_1,     1, NOPR, 0xD0, 0x00, 0,  RMC, 5,  0, 0, P86 },
  { TOK_SHR,    OF_RM8,   OF_CL,    1, NOPR, 0xD2, 0x00, 0,  RMC, 5,  0, 0, P86 },
  { TOK_SHR,    OF_RM16,  OF_1,     1, NOPR, 0xD1, 0x00, 0,  RMC, 5,  0, 0, P86 },
  { TOK_SHR,    OF_RM16,  OF_CL,    1, NOPR, 0xD3, 0x00, 0,  RMC, 5,  0, 0, P86 },

  { TOK_STC,    OF_NONE,  OF_NONE,  1, NOPR, 0xF9, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_STD,    OF_NONE,  OF_NONE,  1, NOPR, 0xFD, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_STI,    OF_NONE,  OF_NONE,  1, NOPR, 0xFB, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_STOSB,  OF_NONE,  OF_NONE,  1, NOPR, 0xAA, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_STOSW,  OF_NONE,  OF_NONE,  1, NOPR, 0xAB, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_STOS,   OF_DI8,   OF_NONE,  1, NOPR, 0xAA, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_STOS,   OF_DI16,  OF_NONE,  1, NOPR, 0xAB, 0x00, 0,  RMN, 0,  0, 0, P86 },

  { TOK_SUB,    OF_AL,    OF_IMM,   1, NOPR, 0x2C, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_SUB,    OF_AX,    OF_IMM,   1, NOPR, 0x2D, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_SUB,    OF_RM8,   OF_IMM,   1, NOPR, 0x80, 0x00, 0,  RMC, 5,  0, 1, P86 },
  { TOK_SUB,    OF_RM16,  OF_IMM8,  1, NOPR, 0x83, 0x00, 0,  RMC, 5,  0, 1, P86 },
  { TOK_SUB,    OF_RM16,  OF_IMM,   1, NOPR, 0x81, 0x00, 0,  RMC, 5,  0, 2, P86 },
  { TOK_SUB,    OF_REG8,  OF_RM,    1, NOPR, 0x2A, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_SUB,    OF_RM,    OF_REG8,  1, NOPR, 0x28, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_SUB,    OF_REG16, OF_RM,    1, NOPR, 0x2B, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_SUB,    OF_RM,    OF_REG16, 1, NOPR, 0x29, 0x00, 0,  RMR, 0,  0, 0, P86 },

  { TOK_TEST,   OF_AL,    OF_IMM,   1, NOPR, 0xA8, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_TEST,   OF_AX,    OF_IMM,   1, NOPR, 0xA9, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_TEST,   OF_RM8,   OF_IMM,   1, NOPR, 0xF6, 0x00, 0,  RMC, 0,  0, 1, P86 },
  { TOK_TEST,   OF_RM16,  OF_IMM,   1, NOPR, 0xF7, 0x00, 0,  RMC, 0,  0, 2, P86 },
  { TOK_TEST,   OF_REG8,  OF_RM,    1, NOPR, 0x84, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_TEST,   OF_REG16, OF_RM,    1, NOPR, 0x85, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_TEST,   OF_RM,    OF_REG8,  1, NOPR, 0x84, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_TEST,   OF_RM,    OF_REG16, 1, NOPR, 0x85, 0x00, 0,  RMR, 0,  0, 0, P86 },

  { TOK_WAIT,   OF_NONE,  OF_NONE,  1, NOPR, 0x9B, 0x00, 0,  RMN, 0,  0, 0, P86 },
  { TOK_XLATB,  OF_NONE,  OF_NONE,  1, NOPR, 0xD7, 0x00, 0,  RMN, 0,  0, 0, P86 },

//  instruc     oper1     oper2     opcodes             +opc R/M reg rm imm cpu
  { TOK_XCHG,   OF_AX,    OF_REG16, 1, NOPR, 0x90, 0x00, 2,  RMN, 0,  0, 0, P86 },
  { TOK_XCHG,   OF_REG16, OF_AX,    1, NOPR, 0x90, 0x00, 1,  RMN, 0,  0, 0, P86 },
  { TOK_XCHG,   OF_REG8,  OF_RM,    1, NOPR, 0x86, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_XCHG,   OF_RM,    OF_REG8,  1, NOPR, 0x86, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_XCHG,   OF_REG16, OF_RM,    1, NOPR, 0x87, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_XCHG,   OF_RM,    OF_REG16, 1, NOPR, 0x87, 0x00, 0,  RMR, 0,  0, 0, P86 },

  { TOK_XOR,    OF_AL,    OF_IMM,   1, NOPR, 0x34, 0x00, 0,  RMN, 0,  0, 1, P86 },
  { TOK_XOR,    OF_AX,    OF_IMM,   1, NOPR, 0x35, 0x00, 0,  RMN, 0,  0, 2, P86 },
  { TOK_XOR,    OF_RM8,   OF_IMM,   1, NOPR, 0x80, 0x00, 0,  RMC, 6,  0, 1, P86 },
  { TOK_XOR,    OF_RM16,  OF_IMM8,  1, NOPR, 0x83, 0x00, 0,  RMC, 6,  0, 1, P86 },
  { TOK_XOR,    OF_RM16,  OF_IMM,   1, NOPR, 0x81, 0x00, 0,  RMC, 6,  0, 2, P86 },
  { TOK_XOR,    OF_REG8,  OF_RM,    1, NOPR, 0x32, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_XOR,    OF_RM,    OF_REG8,  1, NOPR, 0x30, 0x00, 0,  RMR, 0,  0, 0, P86 },
  { TOK_XOR,    OF_REG16, OF_RM,    1, NOPR, 0x33, 0x00, 0,  RRM, 0,  0, 0, P86 },
  { TOK_XOR,    OF_RM,    OF_REG16, 1, NOPR, 0x31, 0x00, 0,  RMR, 0,  0, 0, P86 },

// end marker
  { TOK_NONE }
};

static int second_byte(const INSDEF* def) {
  int byte2;

  if (def->opcodes > 1) {
    assert(def->modrm == RMN);
    byte2 = OPCODE_BYTE2;
  }
  else if (def->modrm != RMN)
    byte2 = MODRM_BYTE2;
  else
    byte2 = NO_BYTE2;

  return byte2;
}

static void add_decoding(DECODER* dec, const INSDEF* def, int opcode1) {
  assert(dec != NULL);
  assert(def != NULL);
  assert(def->opcode_prefix >= 0 && def->opcode_prefix < WAIT_PREFIXES);
  assert(opcode1 >= 0 && opcode1 < 0x100);

  OPCODE_INFO* i = &dec->opcodes[def->opcode_prefix][opcode1];

  if (i->defs == NULL) {
    i->opcode_inc = def->opcode_inc;
    i->opcode_base = def->opcode1;
    i->byte2 = second_byte(def);
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
    if (i->byte2 != second_byte(def))
      fatal("internal error: conflicting second byte for opcode 0x%02x\n", opcode1);
    if (i->byte2 == NO_BYTE2)
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

const OPCODE_INFO* opcode_info(const DECODER* dec, int prefix, int opcode) {
  assert(dec != NULL);
  assert(prefix == NOPR || prefix == WAIT);
  assert(opcode >= 0 && opcode < 0x100);
  const OPCODE_INFO* p = &dec->opcodes[prefix][opcode];
  return (p->defs == NULL) ? NULL : p;
}

const INSDEF* find_unique(const OPCODE_INFO* i) {
  assert(i != NULL);
  assert(i->defs != NULL);
  assert(i->defs->next == NULL);

  return i->defs->def;
}

const INSDEF* find_opcode(const DECODER* dec, int prefix, int opcode) {
  const OPCODE_INFO* i = opcode_info(dec, prefix, opcode);
  return find_unique(i);
}

const INSDEF* find_opcode2(const OPCODE_INFO* i, int opcode2) {
  for (const struct insdef_node * p = i->defs; p; p = p->next) {
    if (p->def->opcode2 == opcode2)
      return p->def;
  }

  return NULL;
}

const INSDEF* find_modrm(const OPCODE_INFO* i, int mod, int reg, int rm) {
  for (const struct insdef_node * p = i->defs; p; p = p->next) {
    switch (p->def->modrm) {
      case RRM:
      case RMR:
        return p->def;
      case RMC:
        if (p->def->reg == reg)
          return p->def;
        break;
      case MMC:
        if (mod != 3 && p->def->reg == reg)
          return p->def;
        break;
      case SIS:
      case SSI:
      case SIC:
        if (mod == 3 && p->def->reg == reg)
          return p->def;
        break;
      case SCC:
        if (mod == 3 && p->def->reg == reg && p->def->rm == rm)
          return p->def;
        break;
      case RMN:
      default:
        fatal("internal error: find_modrm: unexpected modrm: %d\n", p->def->modrm);
    }
  }

  return NULL;
}

// opcodes for which segment override can always be suppressed
BOOL opcode_lea(int opcode) {
  return opcode == 0xB8 || opcode == 0x8D;
}

BYTE opcode_prefix_code(int i) {
  assert(i == WAIT);
  return 0x9B;
}

static BOOL flag_matches(const OPERAND*, int flag);

const INSDEF* find_instruc(int op, const OPERAND* oper1, const OPERAND* oper2) {
  const INSDEF* p;

  for (p = instable; p->op != TOK_NONE; p++) {
    if (p->op == op) {
      if (flag_matches(oper1, p->oper1) && flag_matches(oper2, p->oper2))
        return p;
    }
  }

  return NULL;
}

static BOOL flag_matches(const OPERAND* op, int flag) {
  return (flag == OF_NONE && op->type == OT_NONE) || has_flag(op, flag);
}

void print_insdef(const INSDEF* def) {
  printf("%-6s", token_name(def->op));
  printf(" %-6s %-6s", operand_flag_name(def->oper1), operand_flag_name(def->oper2));
  putchar('\n');
}

static const struct rep {
  int prefix;
  int op;
} repeats[] = {
  { TOK_REP,   TOK_MOVSB },
  { TOK_REP,   TOK_MOVSW },
  { TOK_REP,   TOK_STOSB },
  { TOK_REP,   TOK_STOSW },
  { TOK_REPE,  TOK_CMPSB },
  { TOK_REPE,  TOK_CMPSW },
  { TOK_REPE,  TOK_SCASB },
  { TOK_REPE,  TOK_SCASW },
  { TOK_REPNE, TOK_CMPSB },
  { TOK_REPNE, TOK_CMPSW },
  { TOK_REPNE, TOK_SCASB },
  { TOK_REPNE, TOK_SCASW },
};

BOOL valid_prefix(int prefix, int op) {
  const struct rep * p;

  if (prefix == TOK_REPZ)
    prefix = TOK_REPE;
  else if (prefix == TOK_REPNZ)
    prefix = TOK_REPNE;

  for (p = repeats; p->prefix != TOK_NONE; p++) {
    if (p->prefix == prefix && p->op == op)
      return TRUE;
  }

  return FALSE;
}

BYTE repeat_code(int tok) {
  if (tok == TOK_REP || tok == TOK_REPE || tok == TOK_REPZ)
    return 0xF3;

  assert(tok == TOK_REPNE || tok == TOK_REPNZ);

  return 0xF2;
}

int repeat_token(BYTE repcode, int op_token) {
  if (repcode == 0xF2)
    return TOK_REPNE;
  assert(repcode == 0xf3);
  if (valid_prefix(TOK_REPE, op_token))
    return TOK_REPE;
  return TOK_REP;
}

#ifdef UNIT_TEST

#include "cutest.h"

static void test_find_instruc(CuTest* tc) {
  const INSDEF* def;
  OPERAND oper1;
  OPERAND oper2;

  init_operand(&oper1);
  init_operand(&oper2);

  def = find_instruc(TOK_DB, &oper1, &oper2);
  CuAssertTrue(tc, def == NULL);

  def = find_instruc(TOK_NOP, &oper1, &oper2);
  CuAssertPtrNotNull(tc, def);

  oper1.type = OT_SREG;
  oper1.flags[0] = OF_SREG;
  oper1.nflag = 1;

  oper2.type = OT_MEM;
  oper2.flags[0] = OF_IMM; // just to place the real flag at index 1
  oper2.flags[1] = OF_RM;
  oper2.nflag = 2;

  def = find_instruc(TOK_MOV, &oper1, &oper2);
  CuAssertPtrNotNull(tc, def);

  oper2.nflag = 1; // MOV SREG IMM
  def = find_instruc(TOK_MOV, &oper1, &oper2);
  CuAssertTrue(tc, def == NULL);
}

static void test_repeats(CuTest* tc) {
  CuAssertIntEquals(tc, TRUE, valid_prefix(TOK_REP, TOK_MOVSB));
  CuAssertIntEquals(tc, TRUE, valid_prefix(TOK_REP, TOK_MOVSW));
  CuAssertIntEquals(tc, FALSE, valid_prefix(TOK_REPE, TOK_MOVSB));
  CuAssertIntEquals(tc, FALSE, valid_prefix(TOK_REPNZ, TOK_MOVSW));
  CuAssertIntEquals(tc, FALSE, valid_prefix(TOK_LOCK, TOK_MOVSW));
  CuAssertIntEquals(tc, FALSE, valid_prefix(TOK_REP, TOK_CLC));
  CuAssertIntEquals(tc, TRUE, valid_prefix(TOK_REPZ, TOK_SCASB));
  CuAssertIntEquals(tc, TRUE, valid_prefix(TOK_REPNE, TOK_CMPSW));

  CuAssertIntEquals(tc, 0xF3, repeat_code(TOK_REP));
  CuAssertIntEquals(tc, 0xF3, repeat_code(TOK_REPZ));
  CuAssertIntEquals(tc, 0xF2, repeat_code(TOK_REPNE));
}

static void test_none_flag(CuTest* tc) {
  const INSDEF* def;
  OPERAND op1, op2;

  init_operand(&op1);
  init_operand(&op2);
  op1.type = OT_IMM;
  add_flag(&op1, OF_IMM);
  def = find_instruc(TOK_PUSHF, &op1, &op2);
  CuAssertTrue(tc, def == NULL);
}

CuSuite* instable_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_find_instruc);
  SUITE_ADD_TEST(suite, test_repeats);
  SUITE_ADD_TEST(suite, test_none_flag);
  return suite;
}

#endif // UNIT_TEST
