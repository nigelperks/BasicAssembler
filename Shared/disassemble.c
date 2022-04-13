// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Decode and disassemble an instruction in a buffer.

#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>
#include <assert.h>
#include "disassemble.h"
#include "instable.h"
#include "token.h"

static const INSDEF short_jmp = {
//  instruc  oper1    oper2    opcodes            +opc R/M reg rm imm cpu
    TOK_JMP, OF_JUMP, OF_NONE, 1, NOPR, 0xEB, 0x00, 0, RMN, 0,  0, 1, P86
};

static const INSDEF near_jmp = {
//  instruc  oper1    oper2    opcodes            +opc R/M reg rm imm cpu
    TOK_JMP, OF_JUMP, OF_NONE, 1, NOPR, 0xE9, 0x00, 0, RMN, 0,  0, 2, P86
};

void print_decoding_errors(unsigned err, FILE* fp) {
  static const struct {
    unsigned flag;
    char* msg;
  } errors[] = {
    { DECODE_ERR_MULTIPLE_REPEAT_PREFIX, "multiple repeat prefixes" },
    { DECODE_ERR_MULTIPLE_SREG_PREFIX, "multiple segment overrides" },
    { DECODE_ERR_NO_OPCODE, "opcode missing" },
    { DECODE_ERR_NO_IMMEDIATE, "immediate value missing or incomplete" },
    { DECODE_ERR_NO_OPCODE2, "second opcode byte missing" },
    { DECODE_ERR_NO_MODRM, "ModR/M byte missing" },
    { DECODE_ERR_NO_DISP, "displacement missing or incomplete" },
    { DECODE_ERR_SURPLUS, "some fetched bytes were not decoded" },
    { DECODE_ERR_NO_INSTRUCTION, "no instruction matches the encoding" }
  };

  if (err) {
    for (unsigned i = 0; i < sizeof errors / sizeof errors[0]; i++) {
      if (errors[i].flag & err)
        fprintf(fp, "Decoding error: %s\n", errors[i].msg);
    }
  }
}

typedef struct {
  int type;
  union {
    // OT_REG
    int reg;
    // OT_MEM
    struct dis_mem {
      short base_reg;
      short index_reg;
      short disp_size;
      WORD disp;
    } mem;
  } val;
} RM_OPERAND;

static const INSDEF* decode_instruction(const DECODER*,
                                        const BYTE* buf, const unsigned max, unsigned *decoded,
                                        int *rep, int *seg, RM_OPERAND* oper1, RM_OPERAND* oper2,
                                        unsigned *imm_bytes, DWORD *imm_value,
                                        unsigned *err);

static void print_assembly(const DWORD addr, unsigned count, int rep, int sreg_override,
                           const INSDEF* def,
                           const RM_OPERAND* oper1, const RM_OPERAND* oper2,
                           unsigned imm_bytes, DWORD imm_value);

// Return number of bytes decoded for the complete instruction
// or 0 if no complete instruction was decoded.
unsigned disassemble_instruction(const DECODER* dec, const DWORD addr,
                                 const BYTE buf[], unsigned size,
                                 bool print_hex, unsigned *errors) {
  int rep = 0;
  int sreg_override = 0;
  RM_OPERAND oper1, oper2;
  unsigned imm_bytes;
  DWORD imm_value;
  unsigned decoded;
  const INSDEF* def = decode_instruction(dec, buf, size, &decoded, &rep, &sreg_override, &oper1, &oper2, &imm_bytes, &imm_value, errors);
  if (def) {
    if (print_hex) {
      for (unsigned j = 0; j < decoded; j++)
        printf("%02x ", buf[j]);
      tab_to_assembly(true, decoded);
    }
    print_assembly(addr, size, rep, sreg_override, def, &oper1, &oper2, imm_bytes, imm_value);
    return decoded;
  }
  return 0;
}

void tab_to_assembly(bool printing_hex, unsigned bytes) {
  if (printing_hex) {
    static const unsigned INSTRUCTION_BYTES = 8;
    while (bytes++ < INSTRUCTION_BYTES)
      fputs("   ", stdout);
  }
  else
    putchar('\t');
}

static unsigned decode_prefixes(const BYTE*, unsigned count, int *rep, int *sreg_override, unsigned *err);
static void decode_reg(const MODRM*, RM_OPERAND*);
static void decode_rm(const MODRM*, RM_OPERAND*);
static void set_indirect(RM_OPERAND*, WORD disp);

// Return: instruction matching the encoding in the buffer, NULL if none found.
// On exit: *decoded undefined if NULL returned, else number of bytes decoded
static const INSDEF* decode_instruction(const DECODER* dec,
                                        const BYTE* buf, const unsigned count, unsigned *decoded,
                                        int *rep, int *sreg_override, RM_OPERAND* oper1, RM_OPERAND* oper2,
                                        unsigned *imm_bytes, DWORD *imm_value,
                                        unsigned *err) {
  const INSDEF* def = NULL;
  unsigned i = 0;

  *decoded = 0;
  *err = 0;

  if (count == 0)
    return NULL;

  oper1->type = OT_NONE;
  oper2->type = OT_NONE;
  *imm_bytes = 0;

  static const BYTE WAIT_OPCODE = 0x9B;

  int opcode1;

  const OPCODE_INFO* info = NULL;

  if (buf[0] == WAIT_OPCODE) {
    if (count == 1) {
      *decoded = 1;
      return find_opcode(dec, NOPR, WAIT_OPCODE);
    }

    i++;

    i += decode_prefixes(buf + i, count - i, rep, sreg_override, err);

    if (i >= count) {
      *err |= DECODE_ERR_NO_OPCODE;
      goto end;
    }
    opcode1 = buf[i++];

    info = opcode_info(dec, WAIT, opcode1);
    if (info == NULL) {
      i = 1;
      def = find_opcode(dec, NOPR, WAIT_OPCODE);
      goto end;
    }
  }
  else {
    i = decode_prefixes(buf, count, rep, sreg_override, err);

    if (i >= count) {
      *err |= DECODE_ERR_NO_OPCODE;
      return NULL;
    }
    opcode1 = buf[i++];

    if (opcode1 == SHORT_JMP) {
      if (i + 1 > count) {
        *err |= DECODE_ERR_NO_IMMEDIATE;
        return NULL;
      }
      *imm_bytes = 1;
      *imm_value = buf[i++];
      def = &short_jmp;
      goto end;
    }

    if (opcode1 == NEAR_JMP) {
      if (i + 2 > count) {
        *err |= DECODE_ERR_NO_IMMEDIATE;
        return NULL;
      }
      *imm_bytes = 2;
      *imm_value = buf[i] | (buf[i+1] << 8);
      i += 2;
      def = &near_jmp;
      goto end;
    }

    info = opcode_info(dec, NOPR, opcode1);
    if (info == NULL)
      return NULL;
  }

  switch (info->opcode_inc) {
    case 0:
      break;
    case 1:
      oper1->type = OT_REG;
      oper1->val.reg = opcode1 - info->opcode_base;
      break;
    case 2:
      oper2->type = OT_REG;
      oper2->val.reg = opcode1 - info->opcode_base;
      break;
    default:
      assert(0 && "invalid opcode_inc operand number");
  }

  assert(info != NULL);
  if (info->defs == NULL)
    fatal("no instruction definition found: opcode 0x%02x\n", opcode1);

  switch (info->byte2) {
    case NO_BYTE2:
      assert(info->defs->next == NULL);
      def = info->defs->def;
      break;
    case OPCODE_BYTE2: {
      if (i + 1 > count) {
        *err |= DECODE_ERR_NO_OPCODE2;
        return NULL;
      }
      int opcode2 = buf[i++];
      def = find_opcode2(info, opcode2);
      if (def == NULL)
        return NULL;
      break;
    }
    case MODRM_BYTE2: {
      if (i + 1 > count) {
        *err |= DECODE_ERR_NO_MODRM;
        return NULL;
      }
      int c = buf[i++];
      MODRM modrm;
      decode_modrm(c, &modrm);
      if (i + modrm.disp_size > count) {
        *err |= DECODE_ERR_NO_DISP;
        return NULL;
      }
      for (int j = 0; j < modrm.disp_size; j++)
        modrm.disp = (buf[i++] << (j * 8)) | modrm.disp;

      def = find_modrm(info, modrm.mod, modrm.reg, modrm.rm);
      if (def == NULL)
        return NULL;

      switch (def->modrm) {
      case RRM:
        decode_reg(&modrm, oper1);
        decode_rm(&modrm, oper2);
        break;
      case RMR:
        decode_rm(&modrm, oper1);
        decode_reg(&modrm, oper2);
        break;
      case RMC:
      case MMC:
        decode_rm(&modrm, oper1);
        break;
      case SIS:
        oper1->type = OT_ST;
        oper1->val.reg = modrm.rm;
        oper2->type = OT_ST;
        oper2->val.reg = 0;
        break;
      case SSI:
        oper1->type = OT_ST;
        oper1->val.reg = 0;
        oper2->type = OT_ST;
        oper2->val.reg = modrm.rm;
        break;
      case SCC:
        oper1->type = OT_ST;
        oper1->val.reg = modrm.rm;
        break;
      case SIC:
        oper1->type = OT_ST;
        oper1->val.reg = modrm.rm;
        break;
      default:
        assert(0 && "unknown modrm type");
        break;
      }
    }
  }

  *imm_value = 0;
  *imm_bytes = 0;

  assert(def != NULL);

  if (def->oper1 == OF_INDIR || def->oper2 == OF_INDIR) {
    assert(def->modrm == RMN);
    if (i + 2 > count) {
      *err |= DECODE_ERR_NO_DISP;
      return NULL;
    }
    const WORD disp = buf[i] | (buf[i+1] << 8);
    i += 2;
    if (def->oper1 == OF_INDIR)
      set_indirect(oper1, disp);
    else {
      assert(def->oper2 == OF_INDIR);
      set_indirect(oper2, disp);
    }
  }

  *imm_bytes = def->imm;
  if (def->imm) {
    if (i + def->imm > count) {
      *err |= DECODE_ERR_NO_IMMEDIATE;
      return NULL;
    }
    *imm_value = 0;
    for (int j = 0; j < def->imm; j++)
      *imm_value |= (buf[i++] << j*8);
  }

end:
  if (i != count)
    *err |= DECODE_ERR_SURPLUS;
  *decoded = i;
  return def;
}

bool repeat_prefix(int c) {
  return c == 0xf2 || c == 0xf3;
}

bool sreg_prefix(int c) {
  return c == 0x26 || c == 0x2e || c == 0x36 || c == 0x3e;
}

bool instruction_prefix(int c) {
  return repeat_prefix(c) || sreg_prefix(c);
}

static unsigned decode_prefixes(const BYTE* buf, unsigned count, int *rep, int *sreg_override, unsigned *err) {
  unsigned i;

  for (i = 0; i < count; i++) {
    if (repeat_prefix(buf[i])) {
      if (*rep)
        *err |= DECODE_ERR_MULTIPLE_REPEAT_PREFIX;
      *rep = buf[i];
    }
    else if (sreg_prefix(buf[i])) {
      if (*sreg_override)
        *err |= DECODE_ERR_MULTIPLE_SREG_PREFIX;
      *sreg_override = buf[i];
    }
    else
      break;
  }

  return i;
}

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

static void decode_reg(const MODRM* modrm, RM_OPERAND* op) {
  op->type = OT_REG;
  op->val.reg = modrm->reg;
}

static void decode_rm(const MODRM* modrm, RM_OPERAND* op) {
  if (modrm->mod == 3) {
    op->type = OT_REG;
    op->val.reg = modrm->rm;
  }
  else {
    struct dis_mem * m = &op->val.mem;

    assert(modrm->mod < 3);

    op->type = OT_MEM;

    if (modrm->mod == 0 && modrm->rm == 6) {
      m->base_reg = NO_REG;
      m->index_reg = NO_REG;
      m->disp_size = 2;
    }
    else {
      static const struct {
        short base_reg;
        short index_reg;
      } regs[] = {
        /* 0 */ { REG_BX, REG_SI },
        /* 1 */ { REG_BX, REG_DI },
        /* 2 */ { REG_BP, REG_SI },
        /* 3 */ { REG_BP, REG_DI },
        /* 4 */ { NO_REG, REG_SI },
        /* 5 */ { NO_REG, REG_DI },
        /* 6 */ { REG_BP, NO_REG },
        /* 7 */ { REG_BX, NO_REG }
      };

      m->base_reg = regs[modrm->rm].base_reg;
      m->index_reg = regs[modrm->rm].index_reg;
      m->disp_size = modrm->mod;
    }

    m->disp = modrm->disp;
  }
}

static void set_indirect(RM_OPERAND* op, WORD disp) {
  struct dis_mem * m = &op->val.mem;

  op->type = OT_MEM;

  m->base_reg = NO_REG;
  m->index_reg = NO_REG;
  m->disp_size = 2;
  m->disp = disp;
}

static unsigned implicit_rm_size(const INSDEF*);

static void print_operand(int opno, int flag, unsigned rm_size, int sreg_override,
                          const RM_OPERAND*, unsigned imm_bytes, DWORD imm_value,
                          const INSDEF*, const DWORD disp_base_addr);

static void print_assembly(const DWORD addr, unsigned size, int rep, int sreg_override,
                           const INSDEF* def,
                           const RM_OPERAND* oper1, const RM_OPERAND* oper2,
                           unsigned imm_bytes, DWORD imm_value) {
    if (rep) {
      fputs(token_name(repeat_token(rep, def->op)), stdout);
      putchar(' ');
    }

    fputs(token_name(def->op), stdout);

    if (def->oper1 != OF_NONE) {
      const unsigned rm_size = implicit_rm_size(def);

      putchar(' ');
      print_operand(1, def->oper1, rm_size, sreg_override, oper1, imm_bytes, imm_value, def, addr + size);
      if (def->oper2 != OF_NONE) {
        putchar(',');
        putchar(' ');
        print_operand(2, def->oper2, rm_size, sreg_override, oper2, imm_bytes, imm_value, def, addr + size);
      }
    }
}

static unsigned operand_flag_size(int);

static unsigned implicit_rm_size(const INSDEF* def) {
  unsigned size = 0;

  if (def->oper1 == OF_RM)
    size = operand_flag_size(def->oper2);
  else if (def->oper2 == OF_RM)
    size = operand_flag_size(def->oper1);

  return size;
}

static unsigned operand_flag_size(int flag) {
  static const struct {
    int flag;
    unsigned size;
  } flags[] = {
    { OF_NONE, 0 },
    // R/M
    { OF_RM, 0 },
    { OF_RM8, 1 },
    { OF_RM16, 2 },
    { OF_RM32, 4 },
    { OF_RM64, 8 },
    { OF_RM80, 10 },
    // register
    { OF_AL, 1 },
    { OF_CL, 1 },
    { OF_AX, 2 },
    { OF_DX, 2 },
    { OF_REG8, 1 },
    { OF_REG16, 2 },
    // segment register
    { OF_SREG, 2 },
    // memory
    { OF_MEM, 0 },
    { OF_MEM8, 1 },
    { OF_MEM16, 2 },
    { OF_MEM32, 4 },
    { OF_MEM64, 8 },
    { OF_MEM80, 10 },
    { OF_INDIR, 0 },
    // string
    { OF_SI, 0 },
    { OF_SI8, 0 },
    { OF_SI16, 0 },
    { OF_DI, 0 },
    { OF_DI8, 0 },
    { OF_DI16, 0 },
    // immediate
    { OF_IMM, 0 },
    { OF_IMM8, 1 },
    { OF_1, 0 },
    { OF_3, 0 },
    // jump
    { OF_JUMP, 0 },
    { OF_FAR, 0 },
    // floating point stack
    { OF_ST, 0 },
    { OF_STI, 0 },
  };

  assert(flag < sizeof flags / sizeof flags[0]);
  assert(flags[flag].flag == flag);
  return flags[flag].size;
}

static void print_rm_operand(const RM_OPERAND*, int size_override, int sreg_override);
static void check_operand_type(int opno, const RM_OPERAND*, int type);
static void print_hex_bytes(DWORD val, unsigned bytes);
static void print_signed_hex_byte(DWORD);
static void print_displaced_addr_word(DWORD disp_base_addr, const DWORD disp_word, unsigned disp_size);

static void print_operand(int opno, int flag, unsigned rm_size, int sreg_override,
                          const RM_OPERAND* op, unsigned imm_bytes, DWORD imm_value,
                          const INSDEF* def, const DWORD disp_base_addr) {
  switch (flag) {
  default:
    fatal("unknown operand flag: %d\n", flag);
  case OF_NONE:
    break;
  // R/M
  case OF_RM:
    print_rm_operand(op, rm_size, sreg_override);
    break;
  case OF_RM8:
    print_rm_operand(op, 1, sreg_override);
    break;
  case OF_RM16:
    print_rm_operand(op, 2, sreg_override);
    break;
  case OF_RM32:
    print_rm_operand(op, 4, sreg_override);
    break;
  case OF_RM64:
    print_rm_operand(op, 8, sreg_override);
    break;
  case OF_RM80:
    print_rm_operand(op, 10, sreg_override);
    break;
  // register
  case OF_AL:
    fputs("AL", stdout);
    break;
  case OF_CL:
    fputs("CL", stdout);
    break;
  case OF_AX:
    fputs("AX", stdout);
    break;
  case OF_DX:
    fputs("DX", stdout);
    break;
  case OF_REG8:
    check_operand_type(opno, op, OT_REG);
    fputs(reg8_name(op->val.reg), stdout);
    break;
  case OF_REG16: 
    check_operand_type(opno, op, OT_REG);
    fputs(reg16_name(op->val.reg), stdout);
    break;
  // segment register
  case OF_SREG:
    check_operand_type(opno, op, OT_REG);
    fputs(sreg_name(op->val.reg), stdout);
    break;
  // memory
  case OF_MEM:
    check_operand_type(opno, op, OT_MEM);
    print_rm_operand(op, 0, sreg_override);
    break;
  case OF_MEM8:
    check_operand_type(opno, op, OT_MEM);
    print_rm_operand(op, 1, sreg_override);
    break;
  case OF_MEM16:
    check_operand_type(opno, op, OT_MEM);
    print_rm_operand(op, 2, sreg_override);
    break;
  case OF_MEM32:
    check_operand_type(opno, op, OT_MEM);
    print_rm_operand(op, 4, sreg_override);
    break;
  case OF_MEM64:
    check_operand_type(opno, op, OT_MEM);
    print_rm_operand(op, 8, sreg_override);
    break;
  case OF_MEM80:
    check_operand_type(opno, op, OT_MEM);
    print_rm_operand(op, 10, sreg_override);
    break;
  case OF_INDIR:
    check_operand_type(opno, op, OT_MEM);
    print_rm_operand(op, 0, sreg_override);
    break;
  // immediate
  case OF_IMM:
    print_hex_bytes(imm_value, imm_bytes);
    break;
  case OF_IMM8:
    print_signed_hex_byte(imm_value);
    break;
  case OF_1:
    putchar('1');
    break;
  case OF_3:
    putchar('3');
    break;
  // jump
  case OF_JUMP:
    print_displaced_addr_word(disp_base_addr, imm_value, def->imm);
    break;
  case OF_ST:
    fputs("ST", stdout);
    break;
  case OF_STI:
    printf("ST(%d)", (int) op->val.reg);
    break;
  }
}

static void print_hex_bytes(DWORD val, unsigned bytes) {
  char buf[10];

  sprintf(buf, "%0*lX", bytes * 2, (unsigned long) val);
  printf("%s%sh", isdigit(buf[0]) ? "" : "0", buf);
}

static void print_signed_hex_byte(DWORD w) {
  char buf[6];
  BOOL neg = FALSE;
  SBYTE disp = (SBYTE) w;
  assert(w <= 0xFF);
  if (disp < 0) {
    neg = TRUE;
    sprintf(buf, "%02Xh", -disp);
  }
  else
    sprintf(buf, "%02Xh", disp);

  if (neg)
    putchar('-');
  if (isalpha(buf[0]))
    putchar('0');
  fputs(buf, stdout);
}

static void print_hex_word(DWORD w) {
  char buf[6];

  assert(w <= 0xFFFF);
  buf[0] = '\0';
  sprintf(buf, "%04Xh", w);
  assert(buf[0] != '\0');
  if (isalpha(buf[0]))
    putchar('0');
  fputs(buf, stdout);
}

static void print_displaced_addr_word(DWORD disp_base_addr, const DWORD disp_word, unsigned disp_size) {
  assert(disp_size == 1 || disp_size == 2);
  
  DWORD dest;
  if (disp_size == 1) {
    assert(disp_word <= 0xff);
    SBYTE disp = (SBYTE) disp_word;
    dest = disp_base_addr + disp;
    fputs("SHORT ", stdout);
  }
  else {
    assert(disp_word <= 0xffff);
    SWORD disp = (SWORD) disp_word;
    dest = disp_base_addr + disp;
    fputs("NEAR ", stdout);
  }
  print_hex_word(dest % 0x10000ul);
}

static void check_operand_type(int opno, const RM_OPERAND* op, int type) {
  if (op->type != type)
    fatal("operand %d: expected type %s: has type %s\n", opno, operand_type_name(type), operand_type_name(op->type));
}

static const char* sreg_override_name(int byte);
static void print_disp(const struct dis_mem *);

static void print_rm_operand(const RM_OPERAND* op, int size_override, int sreg_override) {
  switch (op->type) {
    case OT_REG:
      switch (size_override) {
        case 1: fputs(reg8_name(op->val.reg), stdout); break;
        case 2: fputs(reg16_name(op->val.reg), stdout); break;
        default: fatal("R/M register operand: size unknown: %d\n", size_override); break;
      }
      break;
    case OT_MEM: {
      const struct dis_mem * m = &op->val.mem;
      putchar('[');
      if (size_override) {
        switch (size_override) {
          case 1: fputs("BYTE ", stdout); break;
          case 2: fputs("WORD ", stdout); break;
          case 4: fputs("DWORD ", stdout); break;
          case 8: fputs("QWORD ", stdout); break;
          case 10: fputs("TBYTE ", stdout); break;
          default: assert(0 && "unexpected size override"); break;
        }
      }

      if (sreg_override)
        fputs(sreg_override_name(sreg_override), stdout);

      if (m->base_reg == NO_REG && m->index_reg == NO_REG)
        print_hex_word(m->disp);
      else {
        if (m->base_reg != NO_REG) {
          fputs(reg16_name(m->base_reg), stdout);
          if (m->index_reg != NO_REG)
            putchar('+');
        }
        if (m->index_reg != NO_REG)
          fputs(reg16_name(m->index_reg), stdout);
        if (m->disp_size)
          print_disp(m);
      }
      putchar(']');
      break;
    }
    default:
      fatal("unexpected operand type for R/M operand\n");
      break;
  }
}

static const char* sreg_override_name(int byte) {
  static const struct override {
    int byte;
    char* name;
  } overrides[] = {
    { 0x26, "ES:" },
    { 0x2e, "CS:" },
    { 0x36, "SS:" },
    { 0x3e, "DS:" },
    { 0x00, NULL }
  };

  for (const struct override * p = overrides; p->byte; p++)
    if (p->byte == byte)
      return p->name;

  fatal("internal error: not a segment override: 0x%02x\n", byte);
  return NULL;
}

static void print_disp(const struct dis_mem * m) {
  char buf[6];
  BOOL neg = FALSE;

  if (m->disp_size == 1) {
    SBYTE disp = (SBYTE) m->disp;
    assert(m->disp <= 0xFF);
    if (disp < 0) {
      neg = TRUE;
      sprintf(buf, "%02Xh", -disp);
    }
    else
      sprintf(buf, "%02Xh", disp);
  }
  else {
    SWORD disp = m->disp;
    assert(m->disp_size == 2);
    assert(m->disp <= 0xFFFF);
    if (disp < 0) {
      neg = TRUE;
      sprintf(buf, "%04Xh", -disp);
    }
    else
      sprintf(buf, "%04Xh", disp);
  }

  putchar(neg ? '-' : '+');
  if (isalpha(buf[0]))
    putchar('0');
  fputs(buf, stdout);
}
