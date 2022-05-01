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
    case FETCH_ERR_NO_INSTRUCTION: s = "no instruction found for encoding"; break;
  }

  return s;
}

#define PRINT_BYTE(c) if (print_hex) printf("%02x ", (c))

static int fetch_prefixes(FILE* fp, bool print_hex, BYTE* buf, size_t bufsz, unsigned *count, BYTE *next);

static bool nobyte(FILE*, const char* descrip, bool print_hex, BYTE *val);

// Fetch a complete encoded instruction from file into buffer.
// On exit: *len == number of bytes fetched (decoded).
// Return FETCH_ error code.
int fetch_instruction(const DECODER* dec, FILE* fp, bool waiting, bool print_hex, BYTE* buf, size_t bufsz, unsigned *len) {
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

    const OPCODE_INFO* info = NULL;
    BYTE opcode1;
    unsigned i = 0;

    static const char JUMP_DISPLACEMENT[] = "jump displacement";

    ungetc(first_byte, fp);
    unsigned prefix_len = 0;
    int err = fetch_prefixes(fp, print_hex, buf, 2, &prefix_len, &opcode1); // prints prefixes, not opcode1
    if (err != FETCH_OK)
      return err;
    i += prefix_len;

    buf[i++] = opcode1;
    PRINT_BYTE(opcode1);

    if (opcode1 == SHORT_JMP) {
      if (nobyte(fp, JUMP_DISPLACEMENT, print_hex, &buf[i++]))
        return FETCH_ERR_EOF;
      *len = i;
      return FETCH_OK;
    }

    if (opcode1 == NEAR_JMP) {
      if (nobyte(fp, JUMP_DISPLACEMENT, print_hex, &buf[i++]))
        return FETCH_ERR_EOF;
      if (nobyte(fp, JUMP_DISPLACEMENT, print_hex, &buf[i++]))
        return FETCH_ERR_EOF;
      *len = i;
      return FETCH_OK;
    }
    info = opcode_info(dec, opcode1);
    if (info == NULL)
      return FETCH_ERR_NO_INSTRUCTION;

    assert(info != NULL);
    assert(info->defs != NULL);

    const INSDEF* def = NULL;

    if (info->opcode2_or_modrm) {
      BYTE c;
      if (nobyte(fp, "second opcode or ModR/M byte", print_hex, &c))
        return FETCH_ERR_EOF;

      buf[i++] = c;

      def = find_opcode2(info, waiting, c);
      if (def == NULL) {
        MODRM modrm;
        decode_modrm(c, &modrm);
        for (int j = 0; j < modrm.disp_size; j++) {
          if (nobyte(fp, "displacement", print_hex, &buf[i++]))
            return FETCH_ERR_EOF;
        }

        def = find_modrm(info, waiting, modrm.mod, modrm.reg, modrm.rm);
        if (def == NULL)
          return FETCH_ERR_NO_INSTRUCTION;
      }
    }
    else {
      assert(info->defs->next == NULL);
      def = info->defs->def;
    }

    assert(def != NULL);

    if (def->oper1 == OF_INDIR || def->oper2 == OF_INDIR) {
      assert(def->modrm == RMN);
      assert(def->imm == 0);
      if (nobyte(fp, "indirect", print_hex, &buf[i++]))
        return FETCH_ERR_EOF;
      if (nobyte(fp, "indirect", print_hex, &buf[i++]))
        return FETCH_ERR_EOF;
    }

    for (int j = 0; j < def->imm; j++) {
      if (nobyte(fp, "immediate", print_hex, &buf[i++]))
        return FETCH_ERR_EOF;
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
