// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Disassembler.

#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>
#include <assert.h>
#include "disassemble.h"
#include "instable.h"
#include "token.h"
#include "utils.h"

static void disassemble(const DECODER*, const char* filename, BOOL hex);

int main(int argc, char* argv[]) {
  const char* fileName = NULL;
  BOOL hex = TRUE;

  progname = "dis";

  for (int i = 1; i < argc; i++) {
    const char* arg = argv[i];

    if (arg[0] == '-') {
      if (arg[1] == 's')
        hex = FALSE;
      else
        fatal("invalid option: %s\n", arg);
    }
    else {
      if (fileName == NULL)
        fileName = arg;
      else
        fatal("multiple source files: %s\n", arg);
    }
  }

  if (fileName == NULL)
    fatal("usage: dis [-s] file\n");

  const DECODER* dec = build_decoder();

  disassemble(dec, fileName, hex);

  return 0;
}

static unsigned instruction(const DECODER*, FILE*, DWORD addr, BOOL hex);

static void disassemble(const DECODER* dec, const char* filename, BOOL hex) {
  FILE* fp = efopen(filename, "rb", "disassembly");
  DWORD addr = 0x100;
  int c;

  while ((c = getc(fp)) != EOF) {
    ungetc(c, fp);
    addr += instruction(dec, fp, addr, hex);
  }

  fclose(fp);
}

static unsigned getbyte(FILE*, const char* descrip, BOOL print);
static DWORD getbytes(FILE* fp, const char* descrip, unsigned count, BOOL print);

static unsigned fetch_instruction(const DECODER*, FILE*, BYTE* buf, size_t bufsz, BOOL hex);

static void tab_to_assembly(BOOL hex, unsigned bytes);

static unsigned instruction(const DECODER* dec, FILE* fp, const DWORD addr, BOOL hex) {
  BYTE buf[16];
  unsigned count;

  if (hex)
    printf("%04x: ", addr);

  count = fetch_instruction(dec, fp, buf, sizeof buf, hex);

  if (count) {
    tab_to_assembly(hex, count);
    unsigned errors = 0;
    disassemble_instruction(dec, addr, buf, count, &errors);
    putchar('\n');
    if (errors)
      print_decoding_errors(errors, stdout);
  }

  return count;
}

static unsigned fetch_prefixes(FILE*, BOOL hex, BYTE* buf, size_t bufsz, int *next);
static void print_byte(int, BOOL print);

static unsigned fetch_instruction(const DECODER* dec, FILE* fp, BYTE* buf, size_t bufsz, BOOL hex) {
    if (bufsz < 16)
      return 0;

    const INSDEF* def = NULL;
    unsigned i = 0;

    int first_byte = getbyte(fp, "opcode or prefix", FALSE);

    static const BYTE WAIT_OPCODE = 0x9B;

    int opcode1;

    const OPCODE_INFO* info = NULL;

    if (first_byte == WAIT_OPCODE) {
      buf[i++] = first_byte;
      if (hex)
        printf("%02x ", first_byte);
      long pos_after_wait = ftell(fp);

      int c = getc(fp);
      if (c == EOF) {
        def = find_opcode(dec, NOPR, WAIT_OPCODE);
        goto end;
      }
      ungetc(c, fp);

      i += fetch_prefixes(fp, hex, buf + i, 2, &opcode1);

      info = opcode_info(dec, WAIT, opcode1);
      if (info == NULL) {
        fseek(fp, pos_after_wait, SEEK_SET);
        def = find_opcode(dec, NOPR, WAIT_OPCODE);
        i = 1;
        goto end;
      }

      buf[i++] = opcode1;
      print_byte(opcode1, hex);
    }
    else {
      static const char JUMP_DISPLACEMENT[] = "jump displacement";

      ungetc(first_byte, fp);
      i += fetch_prefixes(fp, hex, buf, 2, &opcode1);
      buf[i++] = opcode1;
      print_byte(opcode1, hex);

      if (opcode1 == SHORT_JMP) {
        buf[i++] = getbyte(fp, JUMP_DISPLACEMENT, hex);
        return i;
      }

      if (opcode1 == NEAR_JMP) {
        buf[i++] = getbyte(fp, JUMP_DISPLACEMENT, hex);
        buf[i++] = getbyte(fp, JUMP_DISPLACEMENT, hex);
        return i;
      }

      info = opcode_info(dec, NOPR, opcode1);
      if (info == NULL) {
        putchar('\n');
        return 0;
      }
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
        int opcode2 = getbyte(fp, "second opcode", hex);
        buf[i++] = opcode2;
        def = find_opcode2(info, opcode2);
        if (def == NULL) {
          putchar('\n');
          return 0;
        }
        break;
      }
      case MODRM_BYTE2: {
        int c = getbyte(fp, "ModR/M byte", hex);
        buf[i++] = c;
        MODRM modrm;
        decode_modrm(c, &modrm);
        for (int j = 0; j < modrm.disp_size; j++)
          buf[i++] = getbyte(fp, "displacement", hex);

        def = find_modrm(info, modrm.mod, modrm.reg, modrm.rm);
        if (def == NULL) {
          putchar('\n');
          return 0;
        }
      }
    }

    assert(def != NULL);

    if (def->oper1 == OF_INDIR || def->oper2 == OF_INDIR) {
      assert(def->modrm == RMN);
      assert(def->imm == 0);
      buf[i++] = getbyte(fp, "indirect", hex);
      buf[i++] = getbyte(fp, "indirect", hex);
    }

    for (int j = 0; j < def->imm; j++)
      buf[i++] = getbyte(fp, "immediate", hex);

end:
    return i;
}

static unsigned fetch_prefixes(FILE* fp, BOOL hex, BYTE* buf, size_t bufsz, int *next) {
  unsigned count = 0;

  int c = getbyte(fp, "opcode or prefix", FALSE);

  while (repeat_prefix(c) || sreg_prefix(c)) {
    print_byte(c, hex);
    assert(count <= bufsz);
    if (count == bufsz)
      fatal("too many instruction prefixes\n");
    buf[count++] = c;
    c = getbyte(fp, "opcode or prefix", FALSE);
  }

  *next = c;
  return count;
}

static void tab_to_assembly(BOOL hex, unsigned bytes) {
  if (hex) {
    static const unsigned INSTRUCTION_BYTES = 8;
    while (bytes++ < INSTRUCTION_BYTES)
      fputs("   ", stdout);
  }
  else
    putchar('\t');
}

static unsigned getbyte(FILE* fp, const char* descrip, BOOL print) {
  int c = getc(fp);
  if (c == EOF)
    fatal("end of file: expected %s\n", descrip);
  print_byte(c, print);
  return c;
}

static void print_byte(int c, BOOL print) {
  if (print)
    printf("%02x ", c);
}

static DWORD getbytes(FILE* fp, const char* descrip, unsigned count, BOOL print) {
  DWORD val = 0;
  unsigned i;

  for (i = 0; i < count; i++)
    val = (getbyte(fp, descrip, print) << (i * 8)) | val;

  return val;
}
