// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Instruction table

#include <assert.h>
#include "instable.h"
#include "token.h"

static const INSDEF instable[] = {
  // index 0 = not an instruction
  { TOK_NONE },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_AAA,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x37, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_AAD,     OF_NONE,  OF_NONE,  OF_NONE,  2, NOPR, 0xD5, 0x0A, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_AAM,     OF_NONE,  OF_NONE,  OF_NONE,  2, NOPR, 0xD4, 0x0A, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_AAS,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x3F, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_ADC,     OF_AL,    OF_IMM,   OF_NONE,  1, NOPR, 0x14, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_ADC,     OF_AX,    OF_IMM,   OF_NONE,  1, NOPR, 0x15, 0x00, 0,  RMN, 0,  0,  2,  0, P86 },
  { TOK_ADC,     OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x12, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_ADC,     OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x10, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_ADC,     OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x13, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_ADC,     OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x11, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_ADC,     OF_RM8,   OF_IMM,   OF_NONE,  1, NOPR, 0x80, 0x00, 0,  RMC, 2,  0,  1,  0, P86 },
  { TOK_ADC,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0x83, 0x00, 0,  RMC, 2,  0,  1,  0, P86 },
  { TOK_ADC,     OF_RM16,  OF_IMM,   OF_NONE,  1, NOPR, 0x81, 0x00, 0,  RMC, 2,  0,  2,  0, P86 },

  { TOK_ADD,     OF_AL,    OF_IMM,   OF_NONE,  1, NOPR, 0x04, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_ADD,     OF_AX,    OF_IMM,   OF_NONE,  1, NOPR, 0x05, 0x00, 0,  RMN, 0,  0,  2,  0, P86 },
  { TOK_ADD,     OF_RM8,   OF_IMM,   OF_NONE,  1, NOPR, 0x80, 0x00, 0,  RMC, 0,  0,  1,  0, P86 },
  { TOK_ADD,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0x83, 0x00, 0,  RMC, 0,  0,  1,  0, P86 },
  { TOK_ADD,     OF_RM16,  OF_IMM,   OF_NONE,  1, NOPR, 0x81, 0x00, 0,  RMC, 0,  0,  2,  0, P86 },
  { TOK_ADD,     OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x02, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_ADD,     OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x00, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_ADD,     OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x03, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_ADD,     OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x01, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_AND,     OF_AL,    OF_IMM,   OF_NONE,  1, NOPR, 0x24, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_AND,     OF_AX,    OF_IMM,   OF_NONE,  1, NOPR, 0x25, 0x00, 0,  RMN, 0,  0,  2,  0, P86 },
  { TOK_AND,     OF_RM8,   OF_IMM,   OF_NONE,  1, NOPR, 0x80, 0x00, 0,  RMC, 4,  0,  1,  0, P86 },
  { TOK_AND,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0x83, 0x00, 0,  RMC, 4,  0,  1,  0, P86 },
  { TOK_AND,     OF_RM16,  OF_IMM,   OF_NONE,  1, NOPR, 0x81, 0x00, 0,  RMC, 4,  0,  2,  0, P86 },
  { TOK_AND,     OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x22, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_AND,     OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x20, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_AND,     OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x23, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_AND,     OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x21, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },

  { TOK_ARPL,    OF_RM16,  OF_REG16, OF_NONE,  1, NOPR, 0x63, 0x00, 0,  RMR, 0,  0,  0,  0, P286P },

  { TOK_BOUND,   OF_REG16, OF_RM16,  OF_NONE,  1, NOPR, 0x62, 0x00, 0,  RRM, 0,  0,  0,  0, P286N },

  { TOK_CALL,    OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0xE8, 0x00, 0,  RMN, 0,  2,  0,  0, P86 },
  { TOK_CALL,    OF_RM16,  OF_NONE,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 2,  0,  0,  0, P86 },
  { TOK_CALL,    OF_RM32,  OF_NONE,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 3,  0,  0,  0, P86 },
  { TOK_CALL,    OF_FAR,   OF_NONE,  OF_NONE,  1, NOPR, 0x9A, 0x00, 0,  RMN, 0,  4,  0,  0, P86 },

  { TOK_CBW,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x98, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_CLC,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xF8, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_CLD,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xFC, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_CLI,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xFA, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_CMC,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xF5, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_CLTS,    OF_NONE,  OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x06, 0,  RMN, 0,  0,  0,  0, P286P },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_CMP,     OF_AL,    OF_IMM,   OF_NONE,  1, NOPR, 0x3C, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_CMP,     OF_AX,    OF_IMM,   OF_NONE,  1, NOPR, 0x3D, 0x00, 0,  RMN, 0,  0,  2,  0, P86 },
  { TOK_CMP,     OF_RM8,   OF_IMM,   OF_NONE,  1, NOPR, 0x80, 0x00, 0,  RMC, 7,  0,  1,  0, P86 },
  { TOK_CMP,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0x83, 0x00, 0,  RMC, 7,  0,  1,  0, P86 },
  { TOK_CMP,     OF_RM16,  OF_IMM,   OF_NONE,  1, NOPR, 0x81, 0x00, 0,  RMC, 7,  0,  2,  0, P86 },
  { TOK_CMP,     OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x3A, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_CMP,     OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x38, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_CMP,     OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x3B, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_CMP,     OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x39, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },

  { TOK_CMPSB,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xA6, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_CMPSW,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xA7, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_CMPS,    OF_SI8,   OF_DI,    OF_NONE,  1, NOPR, 0xA6, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_CMPS,    OF_SI,    OF_DI8,   OF_NONE,  1, NOPR, 0xA6, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_CMPS,    OF_SI16,  OF_DI,    OF_NONE,  1, NOPR, 0xA7, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_CMPS,    OF_SI,    OF_DI16,  OF_NONE,  1, NOPR, 0xA7, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_CWD,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x99, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_DAA,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x27, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_DAS,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x2F, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_DEC,     OF_REG16, OF_NONE,  OF_NONE,  1, NOPR, 0x48, 0x00, 1,  RMN, 0,  0,  0,  0, P86 },
  { TOK_DEC,     OF_RM8,   OF_NONE,  OF_NONE,  1, NOPR, 0xFE, 0x00, 0,  RMC, 1,  0,  0,  0, P86 },
  { TOK_DEC,     OF_RM16,  OF_NONE,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 1,  0,  0,  0, P86 },

  { TOK_DIV,     OF_RM8,   OF_NONE,  OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 6,  0,  0,  0, P86 },
  { TOK_DIV,     OF_RM16,  OF_NONE,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 6,  0,  0,  0, P86 },

  { TOK_ENTER,   OF_IMM,   OF_IMM8U, OF_NONE,  1, NOPR, 0xC8, 0x00, 0,  RMN, 0,  2,  1,  0, P286N },

  { TOK_FABS,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xE1, 0,  CCC, 0,  0,  0,  0, P87 },

  { TOK_FADD,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 0,  0,  0,  0, P87 },
  { TOK_FADD,    OF_STT,   OF_STI,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSI, 0,  0,  0,  0, P87 },
  { TOK_FADD,    OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  SIS, 0,  0,  0,  0, P87 },
  { TOK_FADD,    OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSC, 0,  0,  0,  0, P87 },
  { TOK_FADD,    OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 0,  0,  0,  0, P87 },
  { TOK_FADD,    OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 0,  0,  0,  0, P87 },

  { TOK_FADDP,   OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SIS, 0,  0,  0,  0, P87 },
  { TOK_FADDP,   OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SSC, 0,  0,  0,  0, P87 },
  { TOK_FADDP,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 0,  0,  0,  0, P87 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_FBLD,    OF_MEM80, OF_NONE,  OF_NONE,  1, WAIT, 0xDF, 0x00, 0,  MMC, 4,  0,  0,  0, P87 },
  { TOK_FBSTP,   OF_MEM80, OF_NONE,  OF_NONE,  1, WAIT, 0xDF, 0x00, 0,  MMC, 6,  0,  0,  0, P87 },
  { TOK_FCHS,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xE0, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FCLEX,   OF_NONE,  OF_NONE,  OF_NONE,  1, W286, 0xDB, 0xE2, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FNCLEX,  OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xDB, 0xE2, 0,  CCC, 0,  0,  0,  0, P87 },

  { TOK_FCOM,    OF_STI,   OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SIC, 2,  0,  0,  0, P87 },
  { TOK_FCOM,    OF_STT,   OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  STC, 2,  0,  0,  0, P87 },
  { TOK_FCOM,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  STK, 2,  0,  0,  0, P87 },
  { TOK_FCOM,    OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 2,  0,  0,  0, P87 },
  { TOK_FCOM,    OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 2,  0,  0,  0, P87 },

  { TOK_FCOMP,   OF_STI,   OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SIC, 3,  0,  0,  0, P87 },
  { TOK_FCOMP,   OF_STT,   OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  STC, 3,  0,  0,  0, P87 },
  { TOK_FCOMP,   OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 3,  0,  0,  0, P87 },
  { TOK_FCOMP,   OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 3,  0,  0,  0, P87 },
  { TOK_FCOMP,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  STK, 3,  0,  0,  0, P87 },

  { TOK_FCOMPP,  OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 3,  0,  0,  0, P87 },

  { TOK_FDECSTP, OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xF6, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FDISI,   OF_NONE,  OF_NONE,  OF_NONE,  1, W286, 0xDB, 0xE1, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FNDISI,  OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xDB, 0xE1, 0,  CCC, 0,  0,  0,  0, P87 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_FDIV,    OF_STT,   OF_STI,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSI, 6,  0,  0,  0, P87 },
  { TOK_FDIV,    OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  SIS, 7,  0,  0,  0, P87 },
  { TOK_FDIV,    OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSC, 6,  0,  0,  0, P87 },
  { TOK_FDIV,    OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 6,  0,  0,  0, P87 },
  { TOK_FDIV,    OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 6,  0,  0,  0, P87 },
  { TOK_FDIVP,   OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SIS, 7,  0,  0,  0, P87 },
  { TOK_FDIVP,   OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SSC, 7,  0,  0,  0, P87 },
  { TOK_FDIV,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 7,  0,  0,  0, P87 },
  { TOK_FDIVP,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 7,  0,  0,  0, P87 },

  { TOK_FDIVR,   OF_STT,   OF_STI,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSI, 7,  0,  0,  0, P87 },
  { TOK_FDIVR,   OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  SIS, 6,  0,  0,  0, P87 },
  { TOK_FDIVR,   OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSC, 7,  0,  0,  0, P87 },
  { TOK_FDIVR,   OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 7,  0,  0,  0, P87 },
  { TOK_FDIVR,   OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 7,  0,  0,  0, P87 },
  { TOK_FDIVRP,  OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SIS, 6,  0,  0,  0, P87 },
  { TOK_FDIVRP,  OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SSC, 6,  0,  0,  0, P87 },
  { TOK_FDIVR,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 6,  0,  0,  0, P87 },
  { TOK_FDIVRP,  OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 6,  0,  0,  0, P87 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_FENI,    OF_NONE,  OF_NONE,  OF_NONE,  1, W286, 0xDB, 0xE0, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FNENI,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xDB, 0xE0, 0,  CCC, 0,  0,  0,  0, P87 },

  { TOK_FFREE,   OF_STI,   OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  SIC, 0,  0,  0,  0, P87 },
  { TOK_FFREE,   OF_STT,   OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  STC, 0,  0,  0,  0, P87 },
  { TOK_FFREE,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  STK, 0,  0,  0,  0, P87 },

  { TOK_FIADD,   OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  MMC, 0,  0,  0,  0, P87 },
  { TOK_FIADD,   OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDA, 0x00, 0,  MMC, 0,  0,  0,  0, P87 },

  { TOK_FICOM,   OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  MMC, 2,  0,  0,  0, P87 },
  { TOK_FICOM,   OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDA, 0x00, 0,  MMC, 2,  0,  0,  0, P87 },

  { TOK_FICOMP,  OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  MMC, 3,  0,  0,  0, P87 },
  { TOK_FICOMP,  OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDA, 0x00, 0,  MMC, 3,  0,  0,  0, P87 },

  { TOK_FIDIV,   OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  MMC, 6,  0,  0,  0, P87 },
  { TOK_FIDIV,   OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDA, 0x00, 0,  MMC, 6,  0,  0,  0, P87 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_FIDIVR,  OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  MMC, 7,  0,  0,  0, P87 },
  { TOK_FIDIVR,  OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDA, 0x00, 0,  MMC, 7,  0,  0,  0, P87 },

  { TOK_FILD,    OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDF, 0x00, 0,  MMC, 0,  0,  0,  0, P87 },
  { TOK_FILD,    OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDB, 0x00, 0,  MMC, 0,  0,  0,  0, P87 },
  { TOK_FILD,    OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDF, 0x00, 0,  MMC, 5,  0,  0,  0, P87 },

  { TOK_FIMUL,   OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  MMC, 1,  0,  0,  0, P87 },
  { TOK_FIMUL,   OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDA, 0x00, 0,  MMC, 1,  0,  0,  0, P87 },

  { TOK_FINCSTP, OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xF7, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FINIT,   OF_NONE,  OF_NONE,  OF_NONE,  1, W286, 0xDB, 0xE3, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FNINIT,  OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xDB, 0xE3, 0,  CCC, 0,  0,  0,  0, P87 },

  { TOK_FIST,    OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDF, 0x00, 0,  MMC, 2,  0,  0,  0, P87 },
  { TOK_FIST,    OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDB, 0x00, 0,  MMC, 2,  0,  0,  0, P87 },
  { TOK_FISTP,   OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDF, 0x00, 0,  MMC, 3,  0,  0,  0, P87 },
  { TOK_FISTP,   OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDB, 0x00, 0,  MMC, 3,  0,  0,  0, P87 },
  { TOK_FISTP,   OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDF, 0x00, 0,  MMC, 7,  0,  0,  0, P87 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_FISUB,   OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  MMC, 4,  0,  0,  0, P87 },
  { TOK_FISUB,   OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDA, 0x00, 0,  MMC, 4,  0,  0,  0, P87 },

  { TOK_FISUBR,  OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  MMC, 5,  0,  0,  0, P87 },
  { TOK_FISUBR,  OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xDA, 0x00, 0,  MMC, 5,  0,  0,  0, P87 },

  { TOK_FLD,     OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  MMC, 0,  0,  0,  0, P87 },
  { TOK_FLD,     OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  MMC, 0,  0,  0,  0, P87 },
  { TOK_FLD,     OF_MEM80, OF_NONE,  OF_NONE,  1, WAIT, 0xDB, 0x00, 0,  MMC, 5,  0,  0,  0, P87 },
  { TOK_FLD,     OF_STI,   OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  SIC, 0,  0,  0,  0, P87 },
  { TOK_FLD,     OF_STT,   OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  STC, 0,  0,  0,  0, P87 },
  { TOK_FLD,     OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  STK, 0,  0,  0,  0, P87 },

  { TOK_FLDCW,   OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  MMC, 5,  0,  0,  0, P87 },
  { TOK_FLDENV,  OF_MEM,   OF_NONE,  OF_NONE,  1, WAI2, 0xD9, 0x00, 0,  MMC, 4,  0,  0,  0, P87 },
  { TOK_FLDLG2,  OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xEC, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FLDLN2,  OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xED, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FLDL2E,  OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xEA, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FLDL2T,  OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xE9, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FLDPI,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xEB, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FLDZ,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xEE, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FLD1,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xE8, 0,  CCC, 0,  0,  0,  0, P87 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_FMUL,    OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 1,  0,  0,  0, P87 },
  { TOK_FMUL,    OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 1,  0,  0,  0, P87 },
  { TOK_FMUL,    OF_STT,   OF_STI,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSI, 1,  0,  0,  0, P87 },
  { TOK_FMUL,    OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSC, 1,  0,  0,  0, P87 },
  { TOK_FMUL,    OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  SIS, 1,  0,  0,  0, P87 },
  { TOK_FMULP,   OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SIS, 1,  0,  0,  0, P87 },
  { TOK_FMULP,   OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SSC, 1,  0,  0,  0, P87 },
  { TOK_FMUL,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 1,  0,  0,  0, P87 },
  { TOK_FMULP,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 1,  0,  0,  0, P87 },

  { TOK_FNOP,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xD0, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FPATAN,  OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xF3, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FPREM,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xF8, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FPTAN,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xF2, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FRNDINT, OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xFC, 0,  CCC, 0,  0,  0,  0, P87 },

  { TOK_FRSTOR,  OF_MEM,   OF_NONE,  OF_NONE,  1, WAI2, 0xDD, 0x00, 0,  MMC, 4,  0,  0,  0, P87 },

  // FNSAVE to be found before FSAVE when decoding, when the WAIT has been decoded explicitly
  { TOK_FNSAVE,  OF_MEM,   OF_NONE,  OF_NONE,  1, NOPR, 0xDD, 0x00, 0,  MMC, 6,  0,  0,  0, P87 },
  { TOK_FSAVE,   OF_MEM,   OF_NONE,  OF_NONE,  1, WAI2, 0xDD, 0x00, 0,  MMC, 6,  0,  0,  0, P87 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_FSCALE,  OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xFD, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FSETPM,  OF_NONE,  OF_NONE,  OF_NONE,  1, W286, 0xDB, 0xE4, 0,  CCC, 0,  0,  0,  0, P287 },
  { TOK_FSQRT,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xFA, 0,  CCC, 0,  0,  0,  0, P87 },

  { TOK_FST,     OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  MMC, 2,  0,  0,  0, P87 },
  { TOK_FST,     OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  MMC, 2,  0,  0,  0, P87 },
  { TOK_FST,     OF_STI,   OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  SIC, 2,  0,  0,  0, P87 },
  { TOK_FST,     OF_STT,   OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  STC, 2,  0,  0,  0, P87 },
  { TOK_FSTP,    OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  MMC, 3,  0,  0,  0, P87 },
  { TOK_FSTP,    OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  MMC, 3,  0,  0,  0, P87 },
  { TOK_FSTP,    OF_MEM80, OF_NONE,  OF_NONE,  1, WAIT, 0xDB, 0x00, 0,  MMC, 7,  0,  0,  0, P87 },
  { TOK_FSTP,    OF_STI,   OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  SIC, 3,  0,  0,  0, P87 },
  { TOK_FSTP,    OF_STT,   OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  STC, 3,  0,  0,  0, P87 },
  { TOK_FST,     OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  STK, 2,  0,  0,  0, P87 },
  { TOK_FSTP,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  STK, 3,  0,  0,  0, P87 },

  { TOK_FSTCW,   OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  MMC, 7,  0,  0,  0, P87 },
  { TOK_FNSTCW,  OF_MEM16, OF_NONE,  OF_NONE,  1, NOPR, 0xD9, 0x00, 0,  MMC, 7,  0,  0,  0, P87 },

  // no-wait form first so it is found first in decoding
  // so FSTENV is decoded as explicit WAIT then FNSTENV
  { TOK_FNSTENV, OF_MEM,   OF_NONE,  OF_NONE,  1, NOPR, 0xD9, 0x00, 0,  MMC, 6,  0,  0,  0, P87 },
  { TOK_FSTENV,  OF_MEM,   OF_NONE,  OF_NONE,  1, WAI2, 0xD9, 0x00, 0,  MMC, 6,  0,  0,  0, P87 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_FSTSW,   OF_MEM16, OF_NONE,  OF_NONE,  1, WAIT, 0xDD, 0x00, 0,  MMC, 7,  0,  0,  0, P87 },
  { TOK_FNSTSW,  OF_MEM16, OF_NONE,  OF_NONE,  1, NOPR, 0xDD, 0x00, 0,  MMC, 7,  0,  0,  0, P87 },

  { TOK_FSUB,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 5,  0,  0,  0, P87 },
  { TOK_FSUB,    OF_STT,   OF_STI,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSI, 4,  0,  0,  0, P87 },
  { TOK_FSUB,    OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  SIS, 5,  0,  0,  0, P87 },
  { TOK_FSUB,    OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSC, 4,  0,  0,  0, P87 },
  { TOK_FSUB,    OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 4,  0,  0,  0, P87 },
  { TOK_FSUB,    OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 4,  0,  0,  0, P87 },
  { TOK_FSUBP,   OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SIS, 5,  0,  0,  0, P87 },
  { TOK_FSUBP,   OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SSC, 5,  0,  0,  0, P87 },
  { TOK_FSUBP,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 5,  0,  0,  0, P87 },

  { TOK_FSUBR,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 4,  0,  0,  0, P87 },
  { TOK_FSUBR,   OF_STT,   OF_STI,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSI, 5,  0,  0,  0, P87 },
  { TOK_FSUBR,   OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  SIS, 4,  0,  0,  0, P87 },
  { TOK_FSUBR,   OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  SSC, 5,  0,  0,  0, P87 },
  { TOK_FSUBR,   OF_MEM32, OF_NONE,  OF_NONE,  1, WAIT, 0xD8, 0x00, 0,  MMC, 5,  0,  0,  0, P87 },
  { TOK_FSUBR,   OF_MEM64, OF_NONE,  OF_NONE,  1, WAIT, 0xDC, 0x00, 0,  MMC, 5,  0,  0,  0, P87 },
  { TOK_FSUBRP,  OF_STI,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SIS, 4,  0,  0,  0, P87 },
  { TOK_FSUBRP,  OF_STT,   OF_STT,   OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  SSC, 4,  0,  0,  0, P87 },
  { TOK_FSUBRP,  OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xDE, 0x00, 0,  STK, 4,  0,  0,  0, P87 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_FTST,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xE4, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FWAIT,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x9B, 0x00, 0,  RMN, 0,  0,  0,  0, P87 },
  { TOK_FXAM,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xE5, 0,  CCC, 0,  0,  0,  0, P87 },

  { TOK_FXCH,    OF_STI,   OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  SIC, 1,  0,  0,  0, P87 },
  { TOK_FXCH,    OF_STT,   OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  STC, 1,  0,  0,  0, P87 },
  { TOK_FXCH,    OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0x00, 0,  STK, 1,  0,  0,  0, P87 },

  { TOK_FXTRACT, OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xF4, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FYL2X,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xF1, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_FYL2XP1, OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xF9, 0,  CCC, 0,  0,  0,  0, P87 },
  { TOK_F2XM1,   OF_NONE,  OF_NONE,  OF_NONE,  1, WAIT, 0xD9, 0xF0, 0,  CCC, 0,  0,  0,  0, P87 },

  { TOK_HLT,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xF4, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_IDIV,    OF_RM8,   OF_NONE,  OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 7,  0,  0,  0, P86 },
  { TOK_IDIV,    OF_RM16,  OF_NONE,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 7,  0,  0,  0, P86 },

  { TOK_IMUL,    OF_RM8,   OF_NONE,  OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 5,  0,  0,  0, P86 },
  { TOK_IMUL,    OF_RM16,  OF_NONE,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 5,  0,  0,  0, P86 },
  { TOK_IMUL,    OF_REG16, OF_IMM8,  OF_NONE,  1, NOPR, 0x6B, 0x00, 0,  REG, 0,  0,  1,  0, P286N },
  { TOK_IMUL,    OF_REG16, OF_RM16,  OF_IMM8,  1, NOPR, 0x6B, 0x00, 0,  RRM, 0,  0,  0,  1, P286N },
  { TOK_IMUL,    OF_REG16, OF_RM16,  OF_IMM,   1, NOPR, 0x69, 0x00, 0,  RRM, 0,  0,  0,  2, P286N },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_IN,      OF_AL,    OF_IMM,   OF_NONE,  1, NOPR, 0xE4, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_IN,      OF_AX,    OF_IMM,   OF_NONE,  1, NOPR, 0xE5, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_IN,      OF_AL,    OF_DX,    OF_NONE,  1, NOPR, 0xEC, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_IN,      OF_AX,    OF_DX,    OF_NONE,  1, NOPR, 0xED, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_INC,     OF_REG16, OF_NONE,  OF_NONE,  1, NOPR, 0x40, 0x00, 1,  RMN, 0,  0,  0,  0, P86 },
  { TOK_INC,     OF_RM8,   OF_NONE,  OF_NONE,  1, NOPR, 0xFE, 0x00, 0,  RMC, 0,  0,  0,  0, P86 },
  { TOK_INC,     OF_RM16,  OF_NONE,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 0,  0,  0,  0, P86 },

  { TOK_INSB,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x6C, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },
  { TOK_INSW,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x6D, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },
  { TOK_INS,     OF_DI8,   OF_DX,    OF_NONE,  1, NOPR, 0x6C, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },
  { TOK_INS,     OF_DI16,  OF_DX,    OF_NONE,  1, NOPR, 0x6D, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },

  { TOK_INT3,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xCC, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_INT,     OF_3,     OF_NONE,  OF_NONE,  1, NOPR, 0xCC, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_INTO,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xCE, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_INT,     OF_IMM,   OF_NONE,  OF_NONE,  1, NOPR, 0xCD, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_IRET,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xCF, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_IRETW,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xCF, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_JMP,     OF_RM16,  OF_NONE,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },
  { TOK_JMP,     OF_RM32,  OF_NONE,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 5,  0,  0,  0, P86 },
  { TOK_JMP,     OF_FAR,   OF_NONE,  OF_NONE,  1, NOPR, 0xEA, 0x00, 0,  RMN, 0,  4,  0,  0, P86 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_JA,      OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x77, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JAE,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x73, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JB,      OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x72, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JBE,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x76, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JC,      OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x72, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JCXZ,    OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0xE3, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JE,      OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x74, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JG,      OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7F, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JGE,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7D, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JL,      OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7C, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JLE,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7E, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNA,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x76, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNAE,    OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x72, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNB,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x73, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNBE,    OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x77, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNC,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x73, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNE,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x75, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNG,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7E, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNGE,    OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7C, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNL,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7D, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNLE,    OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7F, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNO,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x71, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNP,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7B, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNS,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x79, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JNZ,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x75, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JO,      OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x70, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JP,      OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7A, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JPE,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7A, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JPO,     OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x7B, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JS,      OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x78, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_JZ,      OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0x74, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_LAHF,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x9F, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_LAR,     OF_REG16, OF_RM,    OF_NONE,  2, NOPR, 0x0F, 0x02, 0,  RRM, 0,  0,  0,  0, P286P },

  // Optimize LEA r16, [addr] to MOV r16, OFFSET addr
  { TOK_LEA,     OF_REG16, OF_INDIR, OF_NONE,  1, NOPR, 0xB8, 0x00, 1,  RMN, 0,  0,  0,  0, P86 },
  { TOK_LEA,     OF_REG16, OF_MEM,   OF_NONE,  1, NOPR, 0x8D, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },

  { TOK_LEAVE,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xC9, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },

  { TOK_LGDT,    OF_MEM48, OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x01, 0,  RMC, 2,  0,  0,  0, P286P },
  { TOK_LIDT,    OF_MEM48, OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x01, 0,  RMC, 3,  0,  0,  0, P286P },
  { TOK_LLDT,    OF_RM16,  OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x00, 0,  RMC, 2,  0,  0,  0, P286P },
  { TOK_LMSW,    OF_RM16,  OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x01, 0,  RMC, 6,  0,  0,  0, P286P },
  { TOK_LSL,     OF_REG16, OF_RM,    OF_NONE,  2, NOPR, 0x0F, 0x03, 0,  RRM, 0,  0,  0,  0, P286P },
  { TOK_LTR,     OF_RM16,  OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x00, 0,  RMC, 3,  0,  0,  0, P286P },

  { TOK_LOCK,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xF0, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_LODSB,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xAC, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_LODSW,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xAD, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_LODS,    OF_SI8,   OF_NONE,  OF_NONE,  1, NOPR, 0xAC, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_LODS,    OF_SI16,  OF_NONE,  OF_NONE,  1, NOPR, 0xAD, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_LOOP,    OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0xE2, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_LOOPE,   OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0xE1, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_LOOPZ,   OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0xE1, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_LOOPNE,  OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0xE0, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_LOOPNZ,  OF_JUMP,  OF_NONE,  OF_NONE,  1, NOPR, 0xE0, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_MOV,     OF_AL,    OF_INDIR, OF_NONE,  1, NOPR, 0xA0, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_MOV,     OF_AX,    OF_INDIR, OF_NONE,  1, NOPR, 0xA1, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_MOV,     OF_INDIR, OF_AL,    OF_NONE,  1, NOPR, 0xA2, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_MOV,     OF_INDIR, OF_AX,    OF_NONE,  1, NOPR, 0xA3, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_MOV,     OF_REG8,  OF_IMM,   OF_NONE,  1, NOPR, 0xB0, 0x00, 1,  RMN, 0,  0,  1,  0, P86 },
  { TOK_MOV,     OF_REG16, OF_IMM,   OF_NONE,  1, NOPR, 0xB8, 0x00, 1,  RMN, 0,  0,  2,  0, P86 },
  { TOK_MOV,     OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x8A, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_MOV,     OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x88, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_MOV,     OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x8B, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_MOV,     OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x89, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_MOV,     OF_RM,    OF_SREG,  OF_NONE,  1, NOPR, 0x8C, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_MOV,     OF_SREG,  OF_RM,    OF_NONE,  1, NOPR, 0x8E, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_MOV,     OF_RM8,   OF_IMM,   OF_NONE,  1, NOPR, 0xC6, 0x00, 0,  RMC, 0,  0,  1,  0, P86 },
  { TOK_MOV,     OF_RM16,  OF_IMM,   OF_NONE,  1, NOPR, 0xC7, 0x00, 0,  RMC, 0,  0,  2,  0, P86 },

  { TOK_MOVSB,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xA4, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_MOVSW,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xA5, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_MOVS,    OF_DI8,   OF_SI,    OF_NONE,  1, NOPR, 0xA4, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_MOVS,    OF_DI,    OF_SI8,   OF_NONE,  1, NOPR, 0xA4, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_MOVS,    OF_DI16,  OF_SI,    OF_NONE,  1, NOPR, 0xA5, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_MOVS,    OF_DI,    OF_SI16,  OF_NONE,  1, NOPR, 0xA5, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_MUL,     OF_RM8,   OF_NONE,  OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },
  { TOK_MUL,     OF_RM16,  OF_NONE,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },

  { TOK_NEG,     OF_RM8,   OF_NONE,  OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 3,  0,  0,  0, P86 },
  { TOK_NEG,     OF_RM16,  OF_NONE,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 3,  0,  0,  0, P86 },

  { TOK_NOP,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x90, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_NOT,     OF_RM8,   OF_NONE,  OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 2,  0,  0,  0, P86 },
  { TOK_NOT,     OF_RM16,  OF_NONE,  OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 2,  0,  0,  0, P86 },

  { TOK_OR,      OF_AL,    OF_IMM,   OF_NONE,  1, NOPR, 0x0C, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_OR,      OF_AX,    OF_IMM,   OF_NONE,  1, NOPR, 0x0D, 0x00, 0,  RMN, 0,  0,  2,  0, P86 },
  { TOK_OR,      OF_RM8,   OF_IMM,   OF_NONE,  1, NOPR, 0x80, 0x00, 0,  RMC, 1,  0,  1,  0, P86 },
  { TOK_OR,      OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0x83, 0x00, 0,  RMC, 1,  0,  1,  0, P86 },
  { TOK_OR,      OF_RM16,  OF_IMM,   OF_NONE,  1, NOPR, 0x81, 0x00, 0,  RMC, 1,  0,  2,  0, P86 },
  { TOK_OR,      OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x0A, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_OR,      OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x08, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_OR,      OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x0B, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_OR,      OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x09, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_OUT,     OF_IMM,   OF_AL,    OF_NONE,  1, NOPR, 0xE6, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_OUT,     OF_IMM,   OF_AX,    OF_NONE,  1, NOPR, 0xE7, 0x00, 0,  RMN, 0,  1,  0,  0, P86 },
  { TOK_OUT,     OF_DX,    OF_AL,    OF_NONE,  1, NOPR, 0xEE, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_OUT,     OF_DX,    OF_AX,    OF_NONE,  1, NOPR, 0xEF, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_OUTSB,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x6E, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },
  { TOK_OUTSW,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x6F, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },
  { TOK_OUTS,    OF_DX,    OF_SI8,   OF_NONE,  1, NOPR, 0x6E, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },
  { TOK_OUTS,    OF_DX,    OF_SI16,  OF_NONE,  1, NOPR, 0x6F, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },

  { TOK_POP,     OF_MEM16, OF_NONE,  OF_NONE,  1, NOPR, 0x8F, 0x00, 0,  RMC, 0,  0,  0,  0, P86 },
  { TOK_POP,     OF_REG16, OF_NONE,  OF_NONE,  1, NOPR, 0x58, 0x00, 1,  RMN, 0,  0,  0,  0, P86 },
  { TOK_POPA,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x61, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },
  { TOK_POPAW,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x61, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },
  { TOK_POPF,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x9D, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_POPFW,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x9D, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_PUSH,    OF_MEM16, OF_NONE,  OF_NONE,  1, NOPR, 0xFF, 0x00, 0,  RMC, 6,  0,  0,  0, P86 },
  { TOK_PUSH,    OF_REG16, OF_NONE,  OF_NONE,  1, NOPR, 0x50, 0x00, 1,  RMN, 0,  0,  0,  0, P86 },
  { TOK_PUSH,    OF_IMM8,  OF_NONE,  OF_NONE,  1, NOPR, 0x6A, 0x00, 0,  RMN, 0,  1,  0,  0, P286N },
  { TOK_PUSH,    OF_IMM,   OF_NONE,  OF_NONE,  1, NOPR, 0x68, 0x00, 0,  RMN, 0,  2,  0,  0, P286N },
  { TOK_PUSHA,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x60, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },
  { TOK_PUSHAW,  OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x60, 0x00, 0,  RMN, 0,  0,  0,  0, P286N },
  { TOK_PUSHF,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x9C, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_PUSHFW,  OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x9C, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_RCL,     OF_RM8,   OF_1,     OF_NONE,  1, NOPR, 0xD0, 0x00, 0,  RMC, 2,  0,  0,  0, P86 },
  { TOK_RCL,     OF_RM8,   OF_CL,    OF_NONE,  1, NOPR, 0xD2, 0x00, 0,  RMC, 2,  0,  0,  0, P86 },
  { TOK_RCL,     OF_RM16,  OF_1,     OF_NONE,  1, NOPR, 0xD1, 0x00, 0,  RMC, 2,  0,  0,  0, P86 },
  { TOK_RCL,     OF_RM16,  OF_CL,    OF_NONE,  1, NOPR, 0xD3, 0x00, 0,  RMC, 2,  0,  0,  0, P86 },
  { TOK_RCL,     OF_RM8,   OF_IMM8,  OF_NONE,  1, NOPR, 0xC0, 0x00, 0,  RMC, 2,  0,  1,  0, P286N },
  { TOK_RCL,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0xC1, 0x00, 0,  RMC, 2,  0,  1,  0, P286N },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_RCR,     OF_RM8,   OF_1,     OF_NONE,  1, NOPR, 0xD0, 0x00, 0,  RMC, 3,  0,  0,  0, P86 },
  { TOK_RCR,     OF_RM8,   OF_CL,    OF_NONE,  1, NOPR, 0xD2, 0x00, 0,  RMC, 3,  0,  0,  0, P86 },
  { TOK_RCR,     OF_RM16,  OF_1,     OF_NONE,  1, NOPR, 0xD1, 0x00, 0,  RMC, 3,  0,  0,  0, P86 },
  { TOK_RCR,     OF_RM16,  OF_CL,    OF_NONE,  1, NOPR, 0xD3, 0x00, 0,  RMC, 3,  0,  0,  0, P86 },
  { TOK_RCR,     OF_RM8,   OF_IMM8,  OF_NONE,  1, NOPR, 0xC0, 0x00, 0,  RMC, 3,  0,  1,  0, P286N },
  { TOK_RCR,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0xC1, 0x00, 0,  RMC, 3,  0,  1,  0, P286N },

  { TOK_RET,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xC3, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_RET,     OF_IMM,   OF_NONE,  OF_NONE,  1, NOPR, 0xC2, 0x00, 0,  RMN, 0,  2,  0,  0, P86 },
  { TOK_RETN,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xC3, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_RETN,    OF_IMM,   OF_NONE,  OF_NONE,  1, NOPR, 0xC2, 0x00, 0,  RMN, 0,  2,  0,  0, P86 },
  { TOK_RETF,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xCB, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_RETF,    OF_IMM,   OF_NONE,  OF_NONE,  1, NOPR, 0xCA, 0x00, 0,  RMN, 0,  2,  0,  0, P86 },

  { TOK_ROL,     OF_RM8,   OF_1,     OF_NONE,  1, NOPR, 0xD0, 0x00, 0,  RMC, 0,  0,  0,  0, P86 },
  { TOK_ROL,     OF_RM8,   OF_CL,    OF_NONE,  1, NOPR, 0xD2, 0x00, 0,  RMC, 0,  0,  0,  0, P86 },
  { TOK_ROL,     OF_RM16,  OF_1,     OF_NONE,  1, NOPR, 0xD1, 0x00, 0,  RMC, 0,  0,  0,  0, P86 },
  { TOK_ROL,     OF_RM16,  OF_CL,    OF_NONE,  1, NOPR, 0xD3, 0x00, 0,  RMC, 0,  0,  0,  0, P86 },
  { TOK_ROL,     OF_RM8,   OF_IMM8,  OF_NONE,  1, NOPR, 0xC0, 0x00, 0,  RMC, 0,  0,  1,  0, P286N },
  { TOK_ROL,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0xC1, 0x00, 0,  RMC, 0,  0,  1,  0, P286N },

  { TOK_ROR,     OF_RM8,   OF_1,     OF_NONE,  1, NOPR, 0xD0, 0x00, 0,  RMC, 1,  0,  0,  0, P86 },
  { TOK_ROR,     OF_RM8,   OF_CL,    OF_NONE,  1, NOPR, 0xD2, 0x00, 0,  RMC, 1,  0,  0,  0, P86 },
  { TOK_ROR,     OF_RM16,  OF_1,     OF_NONE,  1, NOPR, 0xD1, 0x00, 0,  RMC, 1,  0,  0,  0, P86 },
  { TOK_ROR,     OF_RM16,  OF_CL,    OF_NONE,  1, NOPR, 0xD3, 0x00, 0,  RMC, 1,  0,  0,  0, P86 },
  { TOK_ROR,     OF_RM8,   OF_IMM8,  OF_NONE,  1, NOPR, 0xC0, 0x00, 0,  RMC, 1,  0,  1,  0, P286N },
  { TOK_ROR,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0xC1, 0x00, 0,  RMC, 1,  0,  1,  0, P286N },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_SAHF,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x9E, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_SAL,     OF_RM8,   OF_1,     OF_NONE,  1, NOPR, 0xD0, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },
  { TOK_SAL,     OF_RM8,   OF_CL,    OF_NONE,  1, NOPR, 0xD2, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },
  { TOK_SAL,     OF_RM16,  OF_1,     OF_NONE,  1, NOPR, 0xD1, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },
  { TOK_SAL,     OF_RM16,  OF_CL,    OF_NONE,  1, NOPR, 0xD3, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },
  { TOK_SAL,     OF_RM8,   OF_IMM8,  OF_NONE,  1, NOPR, 0xC0, 0x00, 0,  RMC, 4,  0,  1,  0, P286N },
  { TOK_SAL,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0xC1, 0x00, 0,  RMC, 4,  0,  1,  0, P286N },

  { TOK_SAR,     OF_RM8,   OF_1,     OF_NONE,  1, NOPR, 0xD0, 0x00, 0,  RMC, 7,  0,  0,  0, P86 },
  { TOK_SAR,     OF_RM8,   OF_CL,    OF_NONE,  1, NOPR, 0xD2, 0x00, 0,  RMC, 7,  0,  0,  0, P86 },
  { TOK_SAR,     OF_RM16,  OF_1,     OF_NONE,  1, NOPR, 0xD1, 0x00, 0,  RMC, 7,  0,  0,  0, P86 },
  { TOK_SAR,     OF_RM16,  OF_CL,    OF_NONE,  1, NOPR, 0xD3, 0x00, 0,  RMC, 7,  0,  0,  0, P86 },
  { TOK_SAR,     OF_RM8,   OF_IMM8,  OF_NONE,  1, NOPR, 0xC0, 0x00, 0,  RMC, 7,  0,  1,  0, P286N },
  { TOK_SAR,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0xC1, 0x00, 0,  RMC, 7,  0,  1,  0, P286N },

  { TOK_SBB,     OF_AL,    OF_IMM,   OF_NONE,  1, NOPR, 0x1C, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_SBB,     OF_AX,    OF_IMM,   OF_NONE,  1, NOPR, 0x1D, 0x00, 0,  RMN, 0,  0,  2,  0, P86 },
  { TOK_SBB,     OF_RM8,   OF_IMM,   OF_NONE,  1, NOPR, 0x80, 0x00, 0,  RMC, 3,  0,  1,  0, P86 },
  { TOK_SBB,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0x83, 0x00, 0,  RMC, 3,  0,  1,  0, P86 },
  { TOK_SBB,     OF_RM16,  OF_IMM,   OF_NONE,  1, NOPR, 0x81, 0x00, 0,  RMC, 3,  0,  2,  0, P86 },
  { TOK_SBB,     OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x1A, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_SBB,     OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x18, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_SBB,     OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x1B, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_SBB,     OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x19, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_SCASB,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xAE, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_SCASW,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xAF, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_SCAS,    OF_DI8,   OF_NONE,  OF_NONE,  1, NOPR, 0xAE, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_SCAS,    OF_DI16,  OF_NONE,  OF_NONE,  1, NOPR, 0xAF, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_SHL,     OF_RM8,   OF_1,     OF_NONE,  1, NOPR, 0xD0, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },
  { TOK_SHL,     OF_RM8,   OF_CL,    OF_NONE,  1, NOPR, 0xD2, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },
  { TOK_SHL,     OF_RM16,  OF_1,     OF_NONE,  1, NOPR, 0xD1, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },
  { TOK_SHL,     OF_RM16,  OF_CL,    OF_NONE,  1, NOPR, 0xD3, 0x00, 0,  RMC, 4,  0,  0,  0, P86 },
  { TOK_SHL,     OF_RM8,   OF_IMM8,  OF_NONE,  1, NOPR, 0xC0, 0x00, 0,  RMC, 4,  0,  1,  0, P286N },
  { TOK_SHL,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0xC1, 0x00, 0,  RMC, 4,  0,  1,  0, P286N },

  { TOK_SGDT,    OF_MEM48, OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x01, 0,  RMC, 0,  0,  0,  0, P286P },
  { TOK_SIDT,    OF_MEM48, OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x01, 0,  RMC, 1,  0,  0,  0, P286P },
  { TOK_SLDT,    OF_RM16,  OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x00, 0,  RMC, 0,  0,  0,  0, P286P },
  { TOK_SMSW,    OF_RM16,  OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x01, 0,  RMC, 4,  0,  0,  0, P286P },
  { TOK_STR,     OF_RM16,  OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x00, 0,  RMC, 1,  0,  0,  0, P286P },

  { TOK_SHR,     OF_RM8,   OF_1,     OF_NONE,  1, NOPR, 0xD0, 0x00, 0,  RMC, 5,  0,  0,  0, P86 },
  { TOK_SHR,     OF_RM8,   OF_CL,    OF_NONE,  1, NOPR, 0xD2, 0x00, 0,  RMC, 5,  0,  0,  0, P86 },
  { TOK_SHR,     OF_RM16,  OF_1,     OF_NONE,  1, NOPR, 0xD1, 0x00, 0,  RMC, 5,  0,  0,  0, P86 },
  { TOK_SHR,     OF_RM16,  OF_CL,    OF_NONE,  1, NOPR, 0xD3, 0x00, 0,  RMC, 5,  0,  0,  0, P86 },
  { TOK_SHR,     OF_RM8,   OF_IMM8,  OF_NONE,  1, NOPR, 0xC0, 0x00, 0,  RMC, 5,  0,  1,  0, P286N },
  { TOK_SHR,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0xC1, 0x00, 0,  RMC, 5,  0,  1,  0, P286N },

  { TOK_STC,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xF9, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_STD,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xFD, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_STI,     OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xFB, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_STOSB,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xAA, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_STOSW,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xAB, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_STOS,    OF_DI8,   OF_NONE,  OF_NONE,  1, NOPR, 0xAA, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_STOS,    OF_DI16,  OF_NONE,  OF_NONE,  1, NOPR, 0xAB, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_SUB,     OF_AL,    OF_IMM,   OF_NONE,  1, NOPR, 0x2C, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_SUB,     OF_AX,    OF_IMM,   OF_NONE,  1, NOPR, 0x2D, 0x00, 0,  RMN, 0,  0,  2,  0, P86 },
  { TOK_SUB,     OF_RM8,   OF_IMM,   OF_NONE,  1, NOPR, 0x80, 0x00, 0,  RMC, 5,  0,  1,  0, P86 },
  { TOK_SUB,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0x83, 0x00, 0,  RMC, 5,  0,  1,  0, P86 },
  { TOK_SUB,     OF_RM16,  OF_IMM,   OF_NONE,  1, NOPR, 0x81, 0x00, 0,  RMC, 5,  0,  2,  0, P86 },
  { TOK_SUB,     OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x2A, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_SUB,     OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x28, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_SUB,     OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x2B, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_SUB,     OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x29, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },

  { TOK_TEST,    OF_AL,    OF_IMM,   OF_NONE,  1, NOPR, 0xA8, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_TEST,    OF_AX,    OF_IMM,   OF_NONE,  1, NOPR, 0xA9, 0x00, 0,  RMN, 0,  0,  2,  0, P86 },
  { TOK_TEST,    OF_RM8,   OF_IMM,   OF_NONE,  1, NOPR, 0xF6, 0x00, 0,  RMC, 0,  0,  1,  0, P86 },
  { TOK_TEST,    OF_RM16,  OF_IMM,   OF_NONE,  1, NOPR, 0xF7, 0x00, 0,  RMC, 0,  0,  2,  0, P86 },
  { TOK_TEST,    OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x84, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_TEST,    OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x85, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_TEST,    OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x84, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_TEST,    OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x85, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },

  { TOK_VERR,    OF_RM16,  OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x00, 0,  RMC, 4,  0,  0,  0, P286P },
  { TOK_VERW,    OF_RM16,  OF_NONE,  OF_NONE,  2, NOPR, 0x0F, 0x00, 0,  RMC, 5,  0,  0,  0, P286P },

//  instruc      oper1     oper2     oper3     opcodes             +opc R/M reg im1 im2 im3 cpu
  { TOK_WAIT,    OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0x9B, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },
  { TOK_XLATB,   OF_NONE,  OF_NONE,  OF_NONE,  1, NOPR, 0xD7, 0x00, 0,  RMN, 0,  0,  0,  0, P86 },

  { TOK_XCHG,    OF_AX,    OF_REG16, OF_NONE,  1, NOPR, 0x90, 0x00, 2,  RMN, 0,  0,  0,  0, P86 },
  { TOK_XCHG,    OF_REG16, OF_AX,    OF_NONE,  1, NOPR, 0x90, 0x00, 1,  RMN, 0,  0,  0,  0, P86 },
  { TOK_XCHG,    OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x86, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_XCHG,    OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x86, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_XCHG,    OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x87, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_XCHG,    OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x87, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },

  { TOK_XOR,     OF_AL,    OF_IMM,   OF_NONE,  1, NOPR, 0x34, 0x00, 0,  RMN, 0,  0,  1,  0, P86 },
  { TOK_XOR,     OF_AX,    OF_IMM,   OF_NONE,  1, NOPR, 0x35, 0x00, 0,  RMN, 0,  0,  2,  0, P86 },
  { TOK_XOR,     OF_RM8,   OF_IMM,   OF_NONE,  1, NOPR, 0x80, 0x00, 0,  RMC, 6,  0,  1,  0, P86 },
  { TOK_XOR,     OF_RM16,  OF_IMM8,  OF_NONE,  1, NOPR, 0x83, 0x00, 0,  RMC, 6,  0,  1,  0, P86 },
  { TOK_XOR,     OF_RM16,  OF_IMM,   OF_NONE,  1, NOPR, 0x81, 0x00, 0,  RMC, 6,  0,  2,  0, P86 },
  { TOK_XOR,     OF_REG8,  OF_RM,    OF_NONE,  1, NOPR, 0x32, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_XOR,     OF_RM,    OF_REG8,  OF_NONE,  1, NOPR, 0x30, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },
  { TOK_XOR,     OF_REG16, OF_RM,    OF_NONE,  1, NOPR, 0x33, 0x00, 0,  RRM, 0,  0,  0,  0, P86 },
  { TOK_XOR,     OF_RM,    OF_REG16, OF_NONE,  1, NOPR, 0x31, 0x00, 0,  RMR, 0,  0,  0,  0, P86 },

// end marker
  { TOK_NONE }
};

// opcodes for which segment override can always be suppressed
BOOL opcode_lea(int opcode) {
  return opcode == 0xB8 || opcode == 0x8D;
}

BYTE opcode_prefix_code(int i) {
  assert(i == WAIT);
  return 0x9B;
}

const INSDEF* first_instruc(void) {
  return &instable[1];
}

const INSDEF* next_instruc(const INSDEF* def) {
  if (def == NULL || def->op == TOK_NONE)
    return NULL;
  def++;
  return (def->op == TOK_NONE) ? NULL : def;
}

#define OPCODES (LAST_OPCODE_TOKEN - FIRST_OPCODE_TOKEN + 1)
#define INSTRUCTIONS (sizeof instable / sizeof instable[0])

static bool indexed = false;

// first instruction in instable for a given token
static size_t first_index[OPCODES];

// next instruction for the same token
static size_t next_index[INSTRUCTIONS];

static void build_index(void) {
  assert(!indexed);

  // latest table entry encountered for a given token
  size_t latest_index[OPCODES] = { 0 };

  for (size_t i = 1; instable[i].op != TOK_NONE; i++) {
    assert(instable[i].op >= FIRST_OPCODE_TOKEN && instable[i].op <= LAST_OPCODE_TOKEN);
    int op_index = instable[i].op - FIRST_OPCODE_TOKEN;
    if (first_index[op_index] == 0) {
      first_index[op_index] = i;
      latest_index[op_index] = i;
    }
    else {
      assert(latest_index[op_index] != 0);
      next_index[latest_index[op_index]] = i;
      latest_index[op_index] = i;
    }
  }

  indexed = true;
}

const INSDEF* find_instruc(int op, const OPERAND_CLASS* op1, const OPERAND_CLASS* op2, const OPERAND_CLASS* op3) {
  if (op < FIRST_OPCODE_TOKEN|| op > LAST_OPCODE_TOKEN)
    return NULL;

  if (!indexed)
    build_index();

  for (size_t i = first_index[op - FIRST_OPCODE_TOKEN]; i; i = next_index[i]) {
    const INSDEF* p = &instable[i];
    if (flag_matches(op1, p->oper1) && flag_matches(op2, p->oper2) && flag_matches(op3, p->oper3))
      return p;
  }

  return NULL;
}

bool cpu_enabled(unsigned mask, int cpu) {
  return mask & (1 << cpu);
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
  { TOK_REP,   TOK_INSB },
  { TOK_REP,   TOK_INSW },
  { TOK_REP,   TOK_MOVSB },
  { TOK_REP,   TOK_MOVSW },
  { TOK_REP,   TOK_OUTSB },
  { TOK_REP,   TOK_OUTSW },
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

#include "CuTest.h"

static void test_find_instruc(CuTest* tc) {
  const INSDEF* def;
  OPERAND_CLASS oper1;
  OPERAND_CLASS oper2;
  OPERAND_CLASS oper3;

  init_operand_class(&oper1);
  init_operand_class(&oper2);
  init_operand_class(&oper3);

  def = find_instruc(TOK_DB, &oper1, &oper2, &oper3);
  CuAssertTrue(tc, def == NULL);

  def = find_instruc(TOK_NOP, &oper1, &oper2, &oper3);
  CuAssertPtrNotNull(tc, def);

  oper1.type = OT_SREG;
  oper1.flags[0] = OF_SREG;
  oper1.nflag = 1;

  oper2.type = OT_MEM;
  oper2.flags[0] = OF_IMM; // just to place the real flag at index 1
  oper2.flags[1] = OF_RM;
  oper2.nflag = 2;

  def = find_instruc(TOK_MOV, &oper1, &oper2, &oper3);
  CuAssertPtrNotNull(tc, def);

  oper2.nflag = 1; // MOV SREG IMM
  def = find_instruc(TOK_MOV, &oper1, &oper2, &oper3);
  CuAssertTrue(tc, def == NULL);

  // restore valid operands
  oper2.nflag = 2;
  def = find_instruc(TOK_MOV, &oper1, &oper2, &oper3);
  CuAssertPtrNotNull(tc, def);

  // adding a third operand should mean instruction not found
  oper3.type = OT_IMM;
  oper3.flags[0] = OF_IMM;
  oper3.nflag = 1;
  def = find_instruc(TOK_MOV, &oper1, &oper2, &oper3);
  CuAssertTrue(tc, def == NULL);
}

static void test_find_instruc_3(CuTest* tc) {
  const INSDEF* def;
  OPERAND_CLASS oper1;
  OPERAND_CLASS oper2;
  OPERAND_CLASS oper3;

  init_operand_class(&oper1);
  init_operand_class(&oper2);
  init_operand_class(&oper3);

  // three valid operands
  // { TOK_IMUL, OF_REG16, OF_RM16, OF_IMM8, ... }

  oper1.type = OT_REG;
  oper1.flags[0] = OF_REG16;
  oper1.nflag = 1;

  oper2.type = OT_MEM;
  oper2.flags[0] = OF_RM;
  oper2.flags[1] = OF_RM16;
  oper2.flags[2] = OF_MEM;
  oper2.nflag = 3;

  oper3.type = OT_IMM;
  oper3.flags[0] = OF_IMM;
  oper3.flags[1] = OF_IMM8;
  oper3.nflag = 3;

  def = find_instruc(TOK_IMUL, &oper1, &oper2, &oper3);
  CuAssertPtrNotNull(tc, def);
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
  OPERAND_CLASS op1, op2, op3;

  init_operand_class(&op1);
  init_operand_class(&op2);
  init_operand_class(&op3);
  op1.type = OT_IMM;
  add_class_flag(&op1, OF_IMM);
  def = find_instruc(TOK_PUSHF, &op1, &op2, &op3);
  CuAssertTrue(tc, def == NULL);
}

static void test_iterate(CuTest* tc) {
  const INSDEF* def1;
  const INSDEF* def2;

  def1 = first_instruc();
  CuAssertPtrNotNull(tc, def1);
  CuAssertTrue(tc, def1->op != TOK_NONE);

  def2 = next_instruc(def1);
  CuAssertPtrNotNull(tc, def2);
  CuAssertTrue(tc, def2 != def1);

  def1 = &instable[sizeof instable / sizeof instable[0] - 2];
  CuAssertTrue(tc, def1->op != TOK_NONE);
  def2 = next_instruc(def1);
  CuAssertTrue(tc, def2 == NULL);

  def1 = &instable[sizeof instable / sizeof instable[0] - 1];
  CuAssertIntEquals(tc, TOK_NONE, def1->op);
  def2 = next_instruc(def1);
  CuAssertTrue(tc, def2 == NULL);

  def2 = next_instruc(NULL);
  CuAssertTrue(tc, def2 == NULL);
}

CuSuite* instable_test_suite(void) {
  CuSuite* suite = CuSuiteNew();
  SUITE_ADD_TEST(suite, test_find_instruc);
  SUITE_ADD_TEST(suite, test_find_instruc_3);
  SUITE_ADD_TEST(suite, test_repeats);
  SUITE_ADD_TEST(suite, test_none_flag);
  SUITE_ADD_TEST(suite, test_iterate);
  return suite;
}

#endif // UNIT_TEST
