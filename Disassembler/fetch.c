// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Fetch machine instructions for disassembly.

#include <assert.h>
#include "fetch.h"
#include "disassemble.h"

const char* fetch_error_string(int err) {
  const char* s = "unknown error";

  switch (err) {
    case FETCH_OK: s = "OK"; break;
    case FETCH_ERR_EOF: s = "unexpected end of file: instruction incomplete"; break;
    case FETCH_ERR_BUFFER_TOO_SMALL: s = "instruction fetch buffer is too small"; break;
    case FETCH_ERR_TOO_MANY_PREFIXES: s = "instruction has too many prefixes"; break;
    case FETCH_ERR_UNKNOWN_OPCODE: s = "unknown opcode"; break;
    case FETCH_ERR_UNKNOWN_OPCODE2: s = "unknown second opcode"; break;
    case FETCH_ERR_NO_MODRM_MATCH: s = "no instruction matching ModR/M value"; break;
  }

  return s;
}

#define PRINT_BYTE(c) if (print_hex) printf("%02x ", (c))

static int fetch_prefixes(FILE* fp, bool print_hex, BYTE* buf, size_t bufsz, unsigned *count, BYTE *next);

static bool nobyte(FILE*, const char* descrip, bool print_hex, BYTE *val);

// Fetch a complete encoded instruction from file into buffer.
// On exit: *len == number of bytes fetched (decoded).
// Return FETCH_ error code.
int fetch_instruction(const DECODER* dec, FILE* fp, bool print_hex, BYTE* buf, size_t bufsz, unsigned *len) {
    assert(dec != NULL);
    assert(fp != NULL);
    assert(buf != NULL);
    assert(len != NULL);

    *len = 0;

    if (bufsz < 16)
      return FETCH_ERR_BUFFER_TOO_SMALL;

    BYTE first_byte;
    if (nobyte(fp, "opcode or prefix", false, &first_byte))
      return FETCH_ERR_EOF;

    const OPCODE1_INFO* info = NULL;
    BYTE opcode1;
    unsigned i = 0;

    static const char JUMP_DISPLACEMENT[] = "jump displacement";

    ungetc(first_byte, fp);
    unsigned prefix_len = 0;
    int err = fetch_prefixes(fp, print_hex, buf, 2, &prefix_len, &opcode1); // prints prefixes, not opcode1
    i += prefix_len;
    if (err != FETCH_OK) {
      *len = i;
      return err;
    }

    buf[i++] = opcode1;
    PRINT_BYTE(opcode1);

    if (opcode1 == SHORT_JMP) {
      if (nobyte(fp, JUMP_DISPLACEMENT, print_hex, &buf[i])) {
        *len = i;
        return FETCH_ERR_EOF;
      }
      *len = i+1;
      return FETCH_OK;
    }

    if (opcode1 == NEAR_JMP) {
      if (nobyte(fp, JUMP_DISPLACEMENT, print_hex, &buf[i])) {
        *len = i;
        return FETCH_ERR_EOF;
      }
      i++;
      if (nobyte(fp, JUMP_DISPLACEMENT, print_hex, &buf[i])) {
        *len = i;
        return FETCH_ERR_EOF;
      }
      *len = i+1;
      return FETCH_OK;
    }

    info = opcode1_info(dec, opcode1);
    if (info == NULL) {
      *len = i;
      return FETCH_ERR_UNKNOWN_OPCODE;
    }

    const OPCODE2_INFO* opcode2 = NULL;
    if (info->has_opcode2) {
      BYTE c;
      if (nobyte(fp, "second opcode", print_hex, &c)) {
        *len = i;
        return FETCH_ERR_EOF;
      }

      buf[i++] = c;

      opcode2 = opcode2_info(info, c);
    }
    else
      opcode2 = no_opcode2_info(info);
    if (opcode2 == NULL) {
      *len = i;
      return FETCH_ERR_UNKNOWN_OPCODE2;
    }

    const INSDEF* def = NULL;
    if (opcode2->has_modrm) {
      BYTE c;
      if (nobyte(fp, "ModR/M byte", print_hex, &c)) {
        *len = i;
        return FETCH_ERR_EOF;
      }

      buf[i++] = c;

      MODRM modrm;
      decode_modrm(c, &modrm);
      for (int j = 0; j < modrm.disp_size; j++) {
        if (nobyte(fp, "displacement", print_hex, &buf[i])) {
          *len = i;
          return FETCH_ERR_EOF;
        }
        i++;
      }

      def = opcode2_find_modrm(opcode2, c);
    }
    else
      def = opcode2_no_modrm(opcode1, opcode2);
    if (def == NULL) {
      *len = i;
      return FETCH_ERR_NO_MODRM_MATCH;
    }

    if (def->oper1 == OF_INDIR || def->oper2 == OF_INDIR) {
      assert(def->modrm == RMN);
      assert(def->imm1 == 0 && def->imm2 == 0 && def->imm3 == 0);
      if (nobyte(fp, "indirect", print_hex, &buf[i])) {
        *len = i;
        return FETCH_ERR_EOF;
      }
      i++;
      if (nobyte(fp, "indirect", print_hex, &buf[i])) {
        *len = i;
        return FETCH_ERR_EOF;
      }
      i++;
    }

    for (int j = 0; j < def->imm1; j++) {
      if (nobyte(fp, "immediate 1", print_hex, &buf[i])) {
        *len = i;
        return FETCH_ERR_EOF;
      }
      i++;
    }

    for (int j = 0; j < def->imm2; j++) {
      if (nobyte(fp, "immediate 2", print_hex, &buf[i])) {
        *len = i;
        return FETCH_ERR_EOF;
      }
      i++;
    }

    for (int j = 0; j < def->imm3; j++) {
      if (nobyte(fp, "immediate 3", print_hex, &buf[i])) {
        *len = i;
        return FETCH_ERR_EOF;
      }
      i++;
    }

    *len = i;
    return FETCH_OK;
}

static int fetch_prefixes(FILE* fp, bool print_hex, BYTE* buf, size_t bufsz, unsigned *count, BYTE *next) {
  *count = 0;
  for (;;) {
    BYTE val;
    if (nobyte(fp, "opcode or prefix", false, &val))
      return FETCH_ERR_EOF;
    if (!instruction_prefix(val)) {
      *next = val;
      break;
    }
    PRINT_BYTE(val);
    assert(*count <= bufsz);
    if (*count == bufsz)
      return FETCH_ERR_TOO_MANY_PREFIXES;
    buf[*count] = val;
    ++*count;
  }
  return FETCH_OK;
}

static bool nobyte(FILE* fp, const char* descrip, bool print_hex, BYTE *val) {
  int c = getc(fp);
  if (c == EOF)
    return true;
  PRINT_BYTE(c);
  *val = c;
  return false;
}
