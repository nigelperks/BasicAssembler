// Basic Assembler
// Copyright (c) 2021-2 Nigel Perks
// Object file handling (custom format).

#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>
#include "object.h"
#include "utils.h"

static const BYTE SIG[] = { 0x43, 0xD0, 0xAB, 0x1F };
static const BYTE VER[] = { 0x00, 0x00 };

enum object_kind {
  OK_INVALID,
  OK_SIGNAL,
  OK_BYTE,
  OK_WORD,
  OK_DWORD,
  OK_QWORD,
  OK_DATA
};

static const struct {
  const char* name;
  char kind;
} types[] = {
  /* OBJ_CODE */                 { "CODE",                 OK_DATA },
  /* OBJ_DS */                   { "DS",                   OK_DATA },
  /* OBJ_DB */                   { "DB",                   OK_BYTE },
  /* OBJ_DW */                   { "DW",                   OK_WORD },
  /* OBJ_DD */                   { "DD",                   OK_DWORD },
  /* OBJ_DQ */                   { "DQ",                   OK_QWORD },
  /* OBJ_DT */                   { "DT",                   OK_QWORD }, // TODO: supported TBYTE type
  /* OBJ_ORG */                  { "ORG",                  OK_WORD },
  /* OBJ_BEGIN_SEGMENT */        { "BEGIN_SEGMENT",        OK_SIGNAL },
  /* OBJ_END_SEGMENT */          { "END_SEGMENT",          OK_SIGNAL },
  /* OBJ_ORDINAL */              { "ORDINAL",              OK_BYTE },
  /* OBJ_NAME */                 { "NAME",                 OK_DATA },
  /* OBJ_OPEN_SEGMENT */         { "OPEN_SEGMENT",         OK_BYTE },
  /* OBJ_CLOSE_SEGMENT */        { "CLOSE_SEGMENT",        OK_BYTE },
  /* OBJ_BEGIN_GROUP */          { "BEGIN_GROUP",          OK_SIGNAL },
  /* OBJ_END_GROUP */            { "END_GROUP",            OK_SIGNAL },
  /* OBJ_GROUP */                { "GROUP",                OK_BYTE },
  /* OBJ_BEGIN_OFFSET */         { "BEGIN_OFFSET",         OK_SIGNAL },
  /* OBJ_END_OFFSET */           { "END_OFFSET",           OK_SIGNAL },
  /* OBJ_POS */                  { "POS",                  OK_WORD },
  /* OBJ_LEN1 */                 { "LEN1",                 OK_BYTE },
  /* OBJ_SEGNO */                { "SEGNO",                OK_BYTE },
  /* OBJ_PUBLIC */               { "PUBLIC",               OK_SIGNAL },
  /* OBJ_BEGIN_EXTRN_USE */      { "BEGIN_EXTRN_USE",      OK_SIGNAL },
  /* OBJ_END_EXTRN_USE */        { "END_EXTRN_USE",        OK_SIGNAL },
  /* OBJ_ID */                   { "ID",                   OK_WORD },
  /* OBJ_JUMP */                 { "JUMP",                 OK_SIGNAL },
  /* OBJ_BEGIN_EXTRN_DEF */      { "BEGIN_EXTRN_DEF",      OK_SIGNAL },
  /* OBJ_END_EXTRN_DEF */        { "END_EXTRN_DEF",        OK_SIGNAL },
  /* OBJ_BEGIN_PUBLIC */         { "BEGIN_PUBLIC",         OK_SIGNAL },
  /* OBJ_END_PUBLIC */           { "END_PUBLIC",           OK_SIGNAL },
  /* OBJ_OFFSET */               { "OFFSET",               OK_WORD },
  /* OBJ_BEGIN_GROUP_ABS_JUMP */ { "BEGIN_GROUP_ABS_JUMP", OK_SIGNAL },
  /* OBJ_END_GROUP_ABS_JUMP */   { "END_GROUP_ABS_JUMP",   OK_SIGNAL },
  /* OBJ_BEGIN_START */          { "BEGIN_START",          OK_SIGNAL },
  /* OBJ_END_START */            { "END_START",            OK_SIGNAL },
  /* OBJ_STACK */                { "STACK",                OK_SIGNAL },
  /* OBJ_BEGIN_SEG_ADDR */       { "BEGIN_SEG_ADDR",       OK_SIGNAL },
  /* OBJ_END_SEG_ADDR */         { "END_SEG_ADDR",         OK_SIGNAL },
  /* OBJ_BEGIN_GROUP_ADDR */     { "BEGIN_GROUP_ADDR",     OK_SIGNAL },
  /* OBJ_END_GROUP_ADDR */       { "END_GROUP_ADDR",       OK_SIGNAL },
};

void clear_orec(OREC* rec) {
  assert(rec != NULL);

  if (rec->type >= 0 && rec->type < sizeof types / sizeof types[0]) {
    if (types[rec->type].kind == OK_DATA) {
      efree(rec->u.data.buf);
      rec->u.data.buf = NULL;
      rec->u.data.size = 0;
    }
  }
}

static BOOL printable(const BYTE*, unsigned len);

void dump_orec(const OREC* rec) {
  assert(rec != NULL);

  if (rec->type < 0 || rec->type >= sizeof types / sizeof types[0]) {
    printf("UNKNOWN RECORD TYPE: %d\n", rec->type);
    return;
  }

  printf("%02x: %s", (unsigned) rec->type, types[rec->type].name);

  switch (types[rec->type].kind) {
    case OK_INVALID:
    case OK_SIGNAL:
      break;
    case OK_BYTE:
      printf(": 0x%02x", (unsigned) rec->u.b);
      break;
    case OK_WORD:
      printf(": 0x%04x", (unsigned) rec->u.w);
      break;
    case OK_DWORD:
      printf(": 0x%08lx", (unsigned long) rec->u.d);
      break;
    case OK_QWORD:
      printf(": 0x%016llx", (unsigned long long) rec->u.q);
      break;
    case OK_DATA:
      printf(": %u:", (unsigned) rec->u.data.size);
      for (unsigned i = 0; i < rec->u.data.size; i++)
        printf(" %02x", (unsigned) rec->u.data.buf[i]);
      if (rec->type == OBJ_CODE)
        ;
      else if (printable(rec->u.data.buf, rec->u.data.size)) {
        fputs(": ", stdout);
        for (unsigned i = 0; i < rec->u.data.size; i++) {
          int c = rec->u.data.buf[i];
          putchar(isprint(c) ? c : '.');
        }
      }
      break;
    default:
      assert(0 && "unknown object record kind");
  }
}

void print_orec(const OREC* rec) {
  dump_orec(rec);
  putchar('\n');
}

static BOOL printable(const BYTE* s, unsigned len) {
  while (len--) {
    int c = *s++;
    if (!isprint(c) && strchr("\t\n\r\b", c) == NULL)
      return FALSE;
  }
  return TRUE;
}

OFILE* new_ofile(void) {
  OFILE* p = emalloc(sizeof *p);
  p->recs = NULL;
  p->allocated = 0;
  p->used = 0;
  return p;
}

void delete_ofile(OFILE* ofile) {
  if (ofile) {
    for (unsigned i = 0; i < ofile->used; i++)
      clear_orec(ofile->recs + i);
    efree(ofile->recs);
    efree(ofile);
  }
}

static OREC* next(OFILE* ofile) {
  assert(ofile->used <= ofile->allocated);
  if (ofile->used == ofile->allocated) {
    ofile->allocated = (ofile->allocated == 0) ? 128 : 2 * ofile->allocated;
    ofile->recs = erealloc(ofile->recs, ofile->allocated * sizeof ofile->recs[0]);
  }
  assert(ofile->used < ofile->allocated);
  return ofile->recs + ofile->used++;
}

void emit_object_signal(OFILE* ofile, int type) {
  assert(ofile != NULL);
  assert(type >= 0 && type < sizeof types / sizeof types[0]);
  assert(types[type].kind == OK_SIGNAL);

  OREC* p = next(ofile);
  p->type = type;
}

void emit_object_byte(OFILE* ofile, int type, BYTE val) {
  assert(ofile != NULL);
  assert(type >= 0 && type < sizeof types / sizeof types[0]);
  assert(types[type].kind == OK_BYTE);

  OREC* p = next(ofile);
  p->type = type;
  p->u.b = val;
}

BYTE objbyte(const OREC* orec) {
  assert(orec != NULL);
  assert(orec->type >= 0 && orec->type < sizeof types / sizeof types[0]);
  assert(types[orec->type].kind == OK_BYTE);

  return orec->u.b;
}

void emit_object_word(OFILE* ofile, int type, WORD val) {
  assert(ofile != NULL);
  assert(type >= 0 && type < sizeof types / sizeof types[0]);
  assert(types[type].kind == OK_WORD);

  OREC* p = next(ofile);
  p->type = type;
  p->u.w = val;
}

WORD objword(const OREC* orec) {
  assert(orec != NULL);
  assert(orec->type >= 0 && orec->type < sizeof types / sizeof types[0]);
  assert(types[orec->type].kind == OK_WORD);

  return orec->u.w;
}

void emit_object_dword(OFILE* ofile, int type, DWORD val) {
  assert(ofile != NULL);
  assert(type >= 0 && type < sizeof types / sizeof types[0]);
  assert(types[type].kind == OK_DWORD);

  OREC* p = next(ofile);
  p->type = type;
  p->u.d = val;
}

DWORD objdword(const OREC* orec) {
  assert(orec != NULL);
  assert(orec->type >= 0 && orec->type < sizeof types / sizeof types[0]);
  assert(types[orec->type].kind == OK_DWORD);

  return orec->u.d;
}

void emit_object_qword(OFILE* ofile, int type, QWORD val) {
  assert(ofile != NULL);
  assert(type >= 0 && type < sizeof types / sizeof types[0]);
  assert(types[type].kind == OK_QWORD);

  OREC* p = next(ofile);
  p->type = type;
  p->u.q = val;
}

QWORD objqword(const OREC* orec) {
  assert(orec != NULL);
  assert(orec->type >= 0 && orec->type < sizeof types / sizeof types[0]);
  assert(types[orec->type].kind == OK_QWORD);

  return orec->u.q;
}

void emit_object_data(OFILE* ofile, int type, const BYTE* buf, unsigned size) {
  assert(ofile != NULL);
  assert(type >= 0 && type < sizeof types / sizeof types[0]);
  assert(types[type].kind == OK_DATA);
  assert(buf != NULL);

  OREC* p = next(ofile);
  p->type = type;
  p->u.data.buf = emalloc(size);
  memcpy(p->u.data.buf, buf, size);
  p->u.data.size = size;
}

static void write_sig(FILE*);
static void write_ver(FILE*);
static void write_record(FILE*, const OREC*);

void save_object_file(const OFILE* ofile, const char* filename) {
  FILE* fp = efopen(filename, "wb", "writing object file");

  write_sig(fp);
  write_ver(fp);

  for (unsigned i = 0; i < ofile->used; i++)
    write_record(fp, ofile->recs + i);

  fclose(fp);
}

static void read_sig(FILE*, const char* filename);
static void read_ver(FILE*, const char* filename);
static void read_record(FILE*, const char* filename, int type, OREC*);

OFILE* load_object_file(const char* filename) {
  FILE* fp = efopen(filename, "rb", "reading object file");
  OFILE* ofile = new_ofile();

  read_sig(fp, filename);
  read_ver(fp, filename);

  int c;
  while ((c = getc(fp)) != EOF)
    read_record(fp, filename, c, next(ofile));

  return ofile;
}

static void write_sig(FILE* fp) {
  fwrite(SIG, 1, sizeof SIG, fp);
}

static void write_ver(FILE* fp) {
  fwrite(VER, 1, sizeof VER, fp);
}

static void read_sig(FILE* fp, const char* filename) {
  BYTE buf[sizeof SIG];

  if (fread(buf, 1, sizeof buf, fp) != sizeof buf)
    fatal("error reading object file signature: %s\n", filename);

  if (memcmp(buf, SIG, sizeof SIG) != 0)
    fatal("not a recognised object file: %s\n", filename);
}

static void read_ver(FILE* fp, const char* filename) {
  BYTE buf[sizeof VER];

  if (fread(buf, 1, sizeof buf, fp) != sizeof buf)
    fatal("error reading object file version: %s\n", filename);

  if (memcmp(buf, VER, sizeof VER) != 0)
    fatal("incompatible object file version: %s\n", filename);
}

static void putnum(FILE*, QWORD val, unsigned size);

static void write_record(FILE* fp, const OREC* rec) {
  assert(fp != NULL);
  assert(rec != NULL);
  assert(rec->type >= 0 && rec->type < sizeof types / sizeof types[0]);

  fputc(rec->type, fp);

  switch (types[rec->type].kind) {
    case OK_SIGNAL:
      break;
    case OK_BYTE:
      fputc(rec->u.b, fp);
      break;
    case OK_WORD:
      putnum(fp, rec->u.w, 2);
      break;
    case OK_DWORD:
      putnum(fp, rec->u.d, 4);
      break;
    case OK_QWORD:
      putnum(fp, rec->u.q, 8);
      break;
    case OK_DATA:
      if (rec->u.data.size > 0xff)
        fatal("object record data length exceeds 1-byte length field\n");
      fputc(rec->u.data.size, fp);
      fwrite(rec->u.data.buf, 1, rec->u.data.size, fp);
      break;
    default:
      fatal("internal error: %s(%d): unknown object record type: %d\n",
          __FILE__, __LINE__, rec->type);
      break;
  }
}

static BYTE getbyte(FILE*, const char* filename);
static BYTE* getdata(FILE*, const char* filename, size_t);

static void putnum(FILE* fp, QWORD val, unsigned size) {
  while (size--) {
    fputc(val & 0xff, fp);
    val >>= 8;
  }
}

static QWORD getnum(FILE* fp, const char* filename, unsigned size) {
  QWORD val = 0;
  for (unsigned i = 0; i < size; i++) {
    QWORD b = getbyte(fp, filename);
    b <<= (i * 8);
    val |= b;
  }
  return val;
}

static void read_record(FILE* fp, const char* filename, int type, OREC* rec) {
  assert(fp != NULL);
  assert(type >= 0 && type < sizeof types / sizeof types[0]);
  assert(rec != NULL);

  rec->type = type;

  switch (types[rec->type].kind) {
    case OK_SIGNAL:
      break;
    case OK_BYTE:
      rec->u.b = getbyte(fp, filename);
      break;
    case OK_WORD:
      rec->u.w = (WORD) getnum(fp, filename, 2);
      break;
    case OK_DWORD:
      rec->u.d = (DWORD) getnum(fp, filename, 4);
      break;
    case OK_QWORD:
      rec->u.q = getnum(fp, filename, 8);
      break;
    case OK_DATA:
      rec->u.data.size = getbyte(fp, filename);
      rec->u.data.buf = getdata(fp, filename, rec->u.data.size);
      break;
    default:
      fatal("internal error: %s(%d): unknown object record type: %d\n",
          __FILE__, __LINE__, rec->type);
      break;
  }
}

static BYTE getbyte(FILE* fp, const char* filename) {
  int c = getc(fp);
  if (c == EOF)
    fatal("unexpected end of file: %s\n", filename);
  assert(c >= 0 && c <= 0xff);
  return c;
}

static BYTE* getdata(FILE* fp, const char* filename, size_t sz) {
  BYTE* buf = emalloc(sz);

  if (fread(buf, 1, sz, fp) != sz)
    fatal("unexpected end of file: %s\n", filename);

  return buf;
}
