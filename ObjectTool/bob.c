// Basic Object Files Tools
// Copyright (c) 2022 Nigel Perks
// Dump the object files of custom format.

#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "object.h"
#include "disassemble.h"
#include "utils.h"

static const char NAME[] = "bob";

static void dump_file(const char* filename);

int main(int argc, char* argv[]) {
  if (argc != 2)
    fatal("usage: %s file\n", NAME);
  progname = NAME;
  dump_file(argv[1]);
  return 0;
}

#define MAX_SEGMENTS (16)  // quick & dirty

static void dump_file(const char* filename) {
  const DECODER* decoder = build_decoder();
  OFILE* ofile = load_object_file(filename);
  const OREC* orec = ofile->recs;
  unsigned errors = 0;
  unsigned decoded = 0;
  unsigned segno = -1;
  DWORD pc[MAX_SEGMENTS];

  memset(&pc, 0, sizeof pc);

  for (unsigned i = 0; i < ofile->used; i++, orec++) {
    printf("%6u  ", i);
    dump_orec(orec);
    switch (orec->type) {
      case OBJ_CODE:
        if (segno >= 0 && segno < MAX_SEGMENTS) {
          DECODED dec;
          if (decode_instruction(decoder, orec->u.data.buf, orec->u.data.size, &dec) == DECODE_ERR_NONE) {
            fputs(": ", stdout);
            print_assembly(pc[segno], &dec);
          }
          pc[segno] += orec->u.data.size;
        }
        break;
      case OBJ_ORG:
        if (segno >= 0 && segno < MAX_SEGMENTS)
          pc[segno] = objword(orec);
        break;
      case OBJ_OPEN_SEGMENT:
        segno = objbyte(orec);
        break;
      case OBJ_CLOSE_SEGMENT:
        segno = -1;
        break;
    }
    putchar('\n');
  }
  delete_ofile(ofile);
}