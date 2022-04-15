// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// COM disassembler.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdbool.h>
#include <assert.h>
#include "fetch.h"
#include "disassemble.h"
#include "interact.h"

static void disassemble(const DECODER*, const char* filename, bool print_hex);

static void help(void);

int main(int argc, char* argv[]) {
  const char* fileName = NULL;
  bool hex = true;
  bool interactive = false;

  progname = "bdis";

  for (int i = 1; i < argc; i++) {
    const char* arg = argv[i];

    if (arg[0] == '-') {
      if (strcmp(arg + 1, "-help") == 0)
        help();
      if (arg[1] == '-')
        fatal("invalid option: %s\n", arg);
      for (const char* p = arg + 1; *p; p++)
        switch (*p) {
          case 'h': case '?': help(); break;
          case 'i': interactive = true; break;
          case 's': hex = false; break;
          default: fatal("invalid option: %c\n", *p);
        }
    }
    else if (strcmp(arg, "/?") == 0)
      help();
    else {
      if (fileName == NULL)
        fileName = arg;
      else
        fatal("multiple source files: %s\n", arg);
    }
  }

  if (fileName == NULL)
    fatal("usage: dis [-is] file\n");

  const DECODER* dec = build_decoder();

  if (interactive)
    interact(dec, fileName);
  else
    disassemble(dec, fileName, hex);

  return 0;
}

static void help(void) {
  puts("Basic Disassembler for .COM programs\n");
  puts("bdis [options] file\n");
  puts("  -i  interactive mode: enter ? for help");
  puts("  -s  omit hex, show disassembly only");
  exit(EXIT_FAILURE);
}

static unsigned instruction(const DECODER*, FILE*, DWORD addr, bool print_hex);

static void disassemble(const DECODER* dec, const char* filename, bool print_hex) {
  FILE* fp = efopen(filename, "rb", "disassembly");
  DWORD addr = 0x100;
  int c;

  while ((c = getc(fp)) != EOF) {
    ungetc(c, fp);
    addr += instruction(dec, fp, addr, print_hex);
  }

  fclose(fp);
}

static unsigned instruction(const DECODER* decoder, FILE* fp, const DWORD addr, bool print_hex) {
  BYTE buf[16];

  if (print_hex)
    printf("%04x: ", addr);

  unsigned len = 0;
  int err = fetch_instruction(decoder, fp, print_hex, buf, sizeof buf, &len);
  if (err) {
    putchar('\n');
    fatal("error fetching instruction: %s\n", fetch_error_string(err));
  }

  assert(len > 0);
  for (unsigned j = len; j < 8; j++)
    fputs("   ", stdout);

  DECODED dec;
  err = decode_instruction(decoder, buf, len, &dec);
  if (err) {
    putchar('\n');
    fatal("error decoding instruction: %s\n", decoding_error(err));
  }
  print_assembly(addr, &dec);
  putchar('\n');
  return dec.len;
}
