// Basic Assembler
// Copyright (c) 2021 Nigel Perks
// Object records.

#ifndef OBJECT_H
#define OBJECT_H

#include "utils.h"

enum object_record_type {
  OBJ_CODE,
  OBJ_DS,
  OBJ_DB,
  OBJ_DW,
  OBJ_DD,
  OBJ_DQ,
  OBJ_DT,
  OBJ_ORG,
  OBJ_BEGIN_SEGMENT,
  OBJ_END_SEGMENT,
  OBJ_ORDINAL,
  OBJ_NAME, 
  OBJ_OPEN_SEGMENT,
  OBJ_CLOSE_SEGMENT,
  OBJ_BEGIN_GROUP,
  OBJ_END_GROUP,
  OBJ_GROUPNO,
  OBJ_BEGIN_OFFSET, // information about an offset in the preceding segment data
  OBJ_END_OFFSET,
  OBJ_POS, // 2-byte position in some data
  OBJ_LEN1, // 1-byte length
  OBJ_SEGNO,
  OBJ_PUBLIC, // segment flag
  OBJ_BEGIN_EXTRN_USE,
  OBJ_END_EXTRN_USE,
  OBJ_ID,
  OBJ_JUMP, // indicates external use is a jump rather than data displacement
  OBJ_BEGIN_EXTRN_DEF,
  OBJ_END_EXTRN_DEF,
  OBJ_BEGIN_PUBLIC,
  OBJ_END_PUBLIC,
  OBJ_OFFSET,
  OBJ_BEGIN_GROUP_ABS_JUMP,
  OBJ_END_GROUP_ABS_JUMP,
  OBJ_BEGIN_START,
  OBJ_END_START,
  OBJ_STACK,
  OBJ_BEGIN_SEG_ADDR,
  OBJ_END_SEG_ADDR,
  OBJ_BEGIN_GROUP_ADDR,
  OBJ_END_GROUP_ADDR,
};

typedef struct {
  int type;
  union {
    BYTE b;
    WORD w;
    DWORD d;
    QWORD q;
    struct {
      BYTE* buf;
      unsigned size;
    } data;
  }u;
} OREC;

void dump_orec(const OREC*);
void print_orec(const OREC*);

typedef struct {
  OREC* recs;
  unsigned allocated;
  unsigned used;
} OFILE;

OFILE* new_ofile(void);
void delete_ofile(OFILE*);

BYTE objbyte(const OREC*);
WORD objword(const OREC*);
DWORD objdword(const OREC*);
QWORD objqword(const OREC*);

void emit_object_signal(OFILE*, int type);
void emit_object_byte(OFILE*, int type, BYTE);
void emit_object_word(OFILE*, int type, WORD);
void emit_object_dword(OFILE*, int type, DWORD);
void emit_object_qword(OFILE*, int type, QWORD);
void emit_object_data(OFILE*, int type, const BYTE*, unsigned size);

void save_object_file(const OFILE*, const char* filename);
OFILE* load_object_file(const char* filename);

#endif // OBJECT_H