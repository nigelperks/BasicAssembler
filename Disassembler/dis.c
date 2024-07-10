// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
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

#ifdef UNIT_TEST
static void RunAllTests(void);
#endif

static void disassemble(const DECODER*, const char* filename, DWORD origin, bool print_hex);
static void report_memory(void);

static void help(void);

int main(int argc, char* argv[]) {
  const char* fileName = NULL;
  bool hex = true;
  bool interactive = false;
  DWORD origin = 0x100;
  bool memory = false;

  progname = "bdis";

  for (int i = 1; i < argc; i++) {
    const char* arg = argv[i];

    if (arg[0] == '-') {
#ifdef UNIT_TEST
      if (strcmp(arg, "-unittest") == 0) {
        RunAllTests();
        report_memory();
        exit(EXIT_SUCCESS);
      }
#endif
      if (strcmp(arg + 1, "-help") == 0)
        help();
      if (arg[1] == '-')
        fatal("invalid option: %s\n", arg);
      for (const char* p = arg + 1; *p; p++)
        switch (*p) {
          case 'b': origin = 0; break;
          case 'h': case '?': help(); break;
          case 'i': interactive = true; break;
          case 'm': memory = true; break;
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

  DECODER* dec = build_decoder();

  if (interactive)
    interact(dec, fileName, origin);
  else
    disassemble(dec, fileName, origin, hex);

  delete_decoder(dec);

  if (memory)
    report_memory();

  return 0;
}

static void help(void) {
  puts("Basic Disassembler for .COM programs\n");
  puts("bdis [options] file\n");
  puts("  -b  raw binary format, not COM");
  puts("  -i  interactive mode: enter ? for help");
  puts("  -s  omit hex, show disassembly only");
  exit(EXIT_FAILURE);
}

static unsigned instruction(const DECODER*, FILE*, DWORD addr, bool print_hex);

static void disassemble(const DECODER* dec, const char* filename, DWORD origin, bool print_hex) {
  FILE* fp = efopen(filename, "rb", "disassembly");
  DWORD addr = origin;
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
    fflush(stdout);
    fprintf(stderr, "%04x: %u: ", addr, len);
    for (unsigned i = 0; i < len; i++)
      fprintf(stderr, "%02x ", buf[i]);
    putc('\n', stderr);
    fatal("error fetching instruction: %s\n", fetch_error_string(err));
  }

  assert(len > 0);
  if (print_hex) {
    for (unsigned j = len; j < 8; j++)
      fputs("   ", stdout);
  }

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

static void report_memory(void) {
  unsigned long malloc_count, free_count;
  get_memory_counts(&malloc_count, &free_count);
  printf("malloc: %10lu\n", malloc_count);
  printf("free:   %10lu\n", free_count);
}

#ifdef UNIT_TEST

#include "CuTest.h"

CuSuite* decoder_test_suite(void);

static void RunAllTests(void) {
  CuString *output = CuStringNew();
  CuSuite* suite = CuSuiteNew();

  CuSuiteAddSuite(suite, decoder_test_suite());
  CuSuiteRun(suite);
  CuSuiteSummary(suite, output);
  CuSuiteDetails(suite, output);
  printf("%s\n", output->buffer);
}

#endif // UNIT_TEST
