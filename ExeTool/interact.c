// Basic Assembler
// Copyright (c) 2022 Nigel Perks
// Interactive EXE disassembler.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>
#include "interact.h"
#include "loadexe.h"
#include "disassemble.h"
#include "utils.h"

enum mode { IDLE, DISASSEMBLING, DUMPING };

typedef struct {
  const DECODER* decoder;
  LOADEXE* exe;
  DWORD* reloc_list;
  unsigned rp; // relocation pointer, iterate reloc_list
  WORD cs;
  WORD ip;
  int mode;
  unsigned rc; // relocation counter, bytes left in relocation in current dump
  bool waiting;
} STATE;

#define PAGE (16)
#define LINE (8)

static void interpret(STATE*, const char* input);

void interact(const char* fileName) {
  STATE state;
  state.decoder = build_decoder();
  state.exe = load_exe(fileName);
  state.reloc_list = sorted_reloc_list(state.exe->reloc_table, state.exe->header.exRelocItems);
  state.rp = 0;
  state.cs = state.exe->header.exInitCS;
  state.ip = state.exe->header.exInitIP;
  state.mode = IDLE;
  state.rc = 0;
  state.waiting = false;

  print_exe_header(&state.exe->header);

  char input[128];
  while (fputs("$ ", stdout), fflush(stdout), fgets(input, sizeof input, stdin))
    interpret(&state, input);

  delete_loadexe(state.exe);
}

static void help(void);

static void print_reloc_items(STATE*);
static void list_segments(STATE*);
static void disassemble_page(STATE*);
static void dump_page(STATE*);

static bool set_addr(STATE*, const char* input);  // true OK, false error

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
      if (set_addr(state, inp)) {
        state->mode = DUMPING;
        dump_page(state);
      }
      else
        puts("?");
      break;
    case 'h':
      print_exe_header(&state->exe->header);
      state->mode = IDLE;
      break;
    case 'q':
      exit(EXIT_SUCCESS);
      break;
    case 'r':
      print_reloc_items(state);
      state->mode = IDLE;
      break;
    case 's':
      if (set_addr(state, inp)) {
        state->mode = DISASSEMBLING;
        disassemble_page(state);
      }
      else
        puts("?");
      break;
    case 't':
      list_segments(state);
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
  puts("<ENTER>       continue disassembly or dump from current address");
  puts("d[[SEG:]OFF]  dump hex from current or given hex address");
  puts("h             print EXE header");
  puts("q             quit");
  puts("r             print relocation table entries");
  puts("s[[SEG:]OFF]  disassemble from current or given hex address");
  puts("t             list distinct segment nos in image referenced by reloc table");
}

static const char* skip_ws(const char*);

// Return false on error, true otherwise (whether or not address set).
static bool set_addr(STATE* state, const char* inp) {
  inp = skip_ws(inp);
  if (*inp == '\0' || *inp == '\n')
    return true;

  WORD cs = state->cs;
  WORD ip = state->ip;
  char* end = NULL;
  unsigned long val = strtoul(inp, &end, 16);
  if (val >= 0x10000)
    return false;
  if (*end == ':') {
    cs = (WORD) val;
    inp = end + 1;
    if (*inp == '\0' || *inp == '\n')
      return false;
    val = strtoul(inp, &end, 16);
    if (val >= 0x10000)
      return false;
  }
  ip = (WORD) val;
  inp = end;

  inp = skip_ws(inp);
  if (*inp != '\0' && *inp != '\n')
    return false;

  DWORD addr = ((DWORD)cs << 4) + ip;
  if (addr > state->exe->image_size) {
    printf("Image size %05lx\n", (unsigned long) state->exe->image_size);
    return false;
  }

  state->cs = cs;
  state->ip = ip;
  state->rp = 0;
  state->rc = 0;
  return true;
}

static const char* skip_ws(const char* inp) {
  while (*inp == ' ' || *inp == '\t')
    inp++;
  return inp;
}

static void print_reloc(unsigned index, const RELOC_ITEM*);

static void print_reloc_items(STATE* state) {
  for (unsigned i = 0; i < state->exe->header.exRelocItems; i++)
    print_reloc(i, state->exe->reloc_table + i);
}

static void print_reloc(unsigned i, const RELOC_ITEM* item) {
  printf("%4u %04x:%04x\n", i, item->segment, item->offset);
}

#define MAX_LIST (32)

static void insert(WORD* list, unsigned *count, WORD seg);

static void list_segments(STATE* state) {
  WORD list[MAX_LIST];
  unsigned count = 0;
  for (unsigned i = 0; i < state->exe->header.exRelocItems; i++) {
    const RELOC_ITEM* p = &state->exe->reloc_table[i];
    DWORD addr = ((DWORD) p->segment << 4) + p->offset;
    WORD seg = state->exe->image[addr] + (state->exe->image[addr+1] << 8);
    insert(list, &count, seg);
  }
  printf("Segments referenced via relocation table: %u\n", count);
  for (unsigned i = 0; i < count; i++)
    printf("%04x\n", list[i]);
}

static void check_count(unsigned count);
static void spread(WORD* list, unsigned *count, unsigned pos);

static void insert(WORD* list, unsigned *count, WORD seg) {
  assert(*count <= MAX_LIST);
  for (unsigned i = 0; i < *count; i++) {
    if (seg == list[i])
      return;
    if (seg < list[i]) {
      spread(list, count, i);
      list[i] = seg;
      return;
    }
  }
  check_count(*count);
  list[*count] = seg;
  ++*count;
}

static void spread(WORD* list, unsigned *count, unsigned pos) {
  check_count(*count);
  for (unsigned i = *count; i > pos; i--)
    list[i] = list[i-1];
  ++*count;  
}

static void check_count(unsigned count) {
  if (count >= MAX_LIST)
    fatal("segment list full\n");
}

static bool disassemble_one_instruction(STATE*);

static void disassemble_page(STATE* state) {
  for (unsigned i = 0; i < PAGE; i++)
    if (!disassemble_one_instruction(state))
      return;
}

static void indicate_relocation(STATE*, unsigned len);

static bool disassemble_one_instruction(STATE* state) {
  printf("%04x:%04x: ", state->cs, state->ip);
  DWORD addr = (state->cs << 4) + state->ip;
  if (addr >= state->exe->image_size) {
    puts("EOF");
    return false;
  }

  DECODED dec;
  int err = decode_instruction(state->decoder, state->exe->image + addr, state->exe->image_size - addr, state->waiting, &dec);
  if (err) {
    putchar('\n');
    puts(decoding_error(err));
    return false;
  }

  unsigned j;
  for (j = 0; j < dec.len; j++)
    printf("%02x ", state->exe->image[addr + j]);
  while (j++ < 8)
    fputs("   ", stdout);

  indicate_relocation(state, dec.len);

  print_assembly(addr, &dec);
  putchar('\n');

  state->waiting = (dec.def->opcode1 == WAIT_OPCODE);
  state->ip += dec.len; // TODO: segment transition
  return true;
}

// Asterisk an instruction marked for relocation in the EXE relocation table.
static void indicate_relocation(STATE* state, unsigned len) {
  // Move relocation pointer over all relocation addresses before this instruction
  const DWORD addr = (state->cs << 4) + state->ip;
  while (state->rp < state->exe->header.exRelocItems && state->reloc_list[state->rp] < addr)
    state->rp++;
  if (state->rp < state->exe->header.exRelocItems) {
    DWORD r = state->reloc_list[state->rp];
    if (r >= addr && r < addr + len) {
      fputs("* ", stdout);
      return;
    }
  }
  fputs("  ", stdout);
}

static bool dump_one_line(STATE*);

static void dump_page(STATE* state) {
  for (unsigned i = 0; i < PAGE; i++) {
    if (dump_one_line(state))
      return;
  }
}

static void dump_byte(STATE*, DWORD addr, BYTE);

// true if EOF on exit
static bool dump_one_line(STATE* state) {
  DWORD ip = state->ip & ~(LINE-1);
  printf("%04x:%04x ", state->cs, ip);
  const DWORD addr = (state->cs << 4) + ip;
  if (addr >= state->exe->image_size) {
    puts("EOF");
    return true;
  }

  DWORD max = state->exe->image_size - addr;
  if (max > LINE)
    max = LINE;

  unsigned relocation = 0;
  unsigned i;
  for (i = 0; i < max; i++)
    dump_byte(state, addr+i, state->exe->image[addr+i]);
  while (i++ < LINE)
    fputs("    ", stdout);
  fputs("  ", stdout);
  for (i = 0; i < max; i++) {
    int c = state->exe->image[addr + i];
    printf("%c", isprint(c) ? c : '.');
  }
  putchar('\n');
  ip += max;
  if (ip >= 0x10000) {
    state->cs++;
    state->ip = (WORD) (ip - 0x10000);
  }
  else
    state->ip = (WORD) ip;
  return max < LINE;
}

static void dump_byte(STATE* state, DWORD addr, BYTE val) {
  if (bsearch(&addr, state->reloc_list, state->exe->header.exRelocItems, sizeof state->reloc_list[0], compare_dword)) {
    putchar('[');
    state->rc = 2;
  }
  else
    putchar(' ');

  printf("%02x", val);

  if (state->rc) {
    state->rc--;
    putchar(state->rc == 0 ? ']' : ' ');
  }
  else
    putchar(' ');
}
