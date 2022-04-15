// Basic Assembler
// Copyright (c) 2022 Nigel Perks
// Interactive COM disassembler.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>
#include "interact.h"
#include "disassemble.h"
#include "utils.h"

typedef struct {
  BYTE* data;
  size_t size;
} MEMORY;

void delete_memory(MEMORY* mem) {
  if (mem) {
    efree(mem->data);
    efree(mem);
  }
}

static MEMORY* load_com(const char* fileName) {
  FILE* fp = efopen(fileName, "rb", "loading");
  fseek(fp, 0, SEEK_END);
  long size = ftell(fp);
  if (size < 0)
    fatal("cannot determine length of file: %s\n", fileName);
  MEMORY *mem = emalloc(sizeof *mem);
  mem->size = size + 0x100;
  mem->data = emalloc(mem->size);
  memset(mem->data, 0, 0x100);
  fseek(fp, 0, SEEK_SET);
  if (fread(mem->data + 0x100, 1, size, fp) != size)
    fatal("error reading file: %s\n", fileName);
  fclose(fp);
  return mem;
}

enum mode { DISASSEMBLING, DUMPING };

typedef struct {
  const DECODER* dec;
  MEMORY* mem;
  DWORD ip;
  int mode;
} STATE;

#define PAGE (16)

static void disassemble_page(STATE*);
static void dump_page(STATE*);

static void interpret(STATE*, const char* input);

void interact(const DECODER* dec, const char* fileName) {
  STATE state;
  state.dec = dec;
  state.mem = load_com(fileName);
  state.ip = 0x100;
  state.mode = DISASSEMBLING;

  disassemble_page(&state);

  char input[128];
  while (fputs("$ ", stdout), fflush(stdout), fgets(input, sizeof input, stdin))
    interpret(&state, input);

  delete_memory(state.mem);
}

static void set_ip(STATE*, const char* input);
static void help(void);

static void interpret(STATE* state, const char* input) {
  const char* inp = input;

  while (*inp == ' ' || *inp == '\t')
    inp++;

  switch (*inp++) {
    case '\0':
    case '\n':
      switch (state->mode) {
        case DISASSEMBLING: disassemble_page(state); break;
        case DUMPING: dump_page(state); break;
        default: puts("?"); break;
      }
      break;
    case 'd':
      set_ip(state, inp);
      state->mode = DUMPING;
      dump_page(state);
      break;
    case 'q':
      exit(EXIT_SUCCESS);
      break;
    case 's':
      set_ip(state, inp);
      state->mode = DISASSEMBLING;
      disassemble_page(state);
      break;
    case '?':
      help();
      break;
    default:
      puts("?");
      break;
  }
}

static void help(void) {
  puts("<ENTER>  continue disassembly or dump from current address");
  puts("d[ADDR]  dump hex from current or given hex address");
  puts("q        quit");
  puts("s[ADDR]  disassemble from current or given hex address");
}

static void set_ip(STATE* state, const char* inp) {
  while (*inp == ' ' || *inp == '\t')
    inp++;
  if (*inp == '\0' || *inp == '\n')
    return;
  char* end = NULL;
  unsigned long val = strtoul(inp, &end, 16);
  while (*end == ' ' || *end == '\t')
    end++;
  if (*end != '\0' && *end != '\n')
    return;
  if (val > state->mem->size)
    val = state->mem->size;
  state->ip = val;
}

static bool disassemble_one_instruction(STATE*);

static void disassemble_page(STATE* state) {
  for (unsigned i = 0; i < PAGE; i++)
    if (!disassemble_one_instruction(state))
      return;
}

static bool disassemble_one_instruction(STATE* state) {
  printf("%05x: ", state->ip);

  DECODED dec;
  int err = decode_instruction(state->dec, state->mem->data + state->ip, state->mem->size - state->ip, &dec);
  if (err) {
    puts(decoding_error(err));
    return false;
  }

  unsigned j;
  for (j = 0; j < dec.len; j++)
    printf("%02x ", state->mem->data[state->ip + j]);
  while (j++ < 8)
    fputs("   ", stdout);

  print_assembly(state->ip, &dec);
  putchar('\n');
  state->ip += dec.len;
  return true;
}

static void dump_one_line(STATE*);

static void dump_page(STATE* state) {
  for (unsigned i = 0; i < PAGE; i++) {
    dump_one_line(state);
    if (state->ip >= state->mem->size) {
      puts("EOF");
      return;
    }
  }
}

static void dump_one_line(STATE* state) {
  DWORD addr = state->ip & ~0x0f;
  assert(addr <= state->mem->size);
  printf("%05x  ", addr);
  unsigned max = state->mem->size - addr;
  if (max > 16)
    max = 16;
  unsigned i;
  for (i = 0; i < max; i++) {
    if (i == 8)
      putchar(' ');
    printf("%02x ", state->mem->data[addr + i]);
  }
  for ( ; i < 16; i++) {
    if (i == 8)
      putchar(' ');
    fputs("   ", stdout);
  }
  fputs("  ", stdout);
  for (i = 0; i < max; i++) {
    int c = state->mem->data[addr + i];
    printf("%c", isprint(c) ? c : '.');
  }
  putchar('\n');
  state->ip = addr + max;;
}
