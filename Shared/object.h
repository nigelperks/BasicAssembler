// Basic Assembler
// Copyright (c) 2021-24 Nigel Perks
// Object records.

#ifndef OBJECT_H
#define OBJECT_H

#include "utils.h"

// Some objects are top-level objects in the object file, not contained within another object.
// Other objects are individual data within a container object, e.g. NAME.
// A container object is opened (made current) with a BEGIN or OPEN record.
// See Linker/module.c for reading an object file.

// The type of data that follows each object record type byte is in the types table of object.c.

// There is no symbol table container object, only PUBLIC definitions and EXTRN requirements.

enum object_record_type {
  OBJ_CODE,             // an instruction in a segment
  OBJ_DS,               // string of bytes in a segment
  OBJ_DB,               // byte data in a segment
  OBJ_DW,               // word data (16-bit) in a segment
  OBJ_DD,               // doubleword data (32-bit) in a segment
  OBJ_DQ,               // quadword data (64-bit) in a segment
  OBJ_DT,               // ten-byte data in a segment
  OBJ_ORG,              // set location counter in current segment
  OBJ_BEGIN_SEGMENT,    // top level: begin segment definition
  OBJ_END_SEGMENT,      // end segment definition
  OBJ_ORDINAL,          // ordinal number of object in a set e.g. segment number
  OBJ_NAME,             // name of current object
  OBJ_OPEN_SEGMENT,     // top level: make a segment current
  OBJ_CLOSE_SEGMENT,    // close current segment
  OBJ_BEGIN_GROUP,      // top level: begin group definition (ordinal, name)
  OBJ_END_GROUP,        // end group definition
  OBJ_GROUPNO,          // group number of current object e.g. group to which the current segment belongs
  OBJ_BEGIN_OFFSET,     // begin fixup: a label offset in the preceding segment data that might be relocated
  OBJ_END_OFFSET,       // end offset fixup
  OBJ_POS,              // 2-byte position in some data
  OBJ_LEN1,             // 1-byte length
  OBJ_SEGNO,            // segment number in current object e.g. segment to which the current fixup's symbol belongs
  OBJ_PUBLIC,           // flag as PUBLIC the segment being defined
  OBJ_BEGIN_EXTRN_USE,  // begin fixup: use of external symbol ID to be resolved at offset POS in module segment
  OBJ_END_EXTRN_USE,    // end external symbol use fixup
  OBJ_ID,               // numeric ID of current object, which need not be in an ordered set like ORDINAL
  OBJ_JUMP,             // indicates external use is a jump rather than data displacement
  OBJ_BEGIN_EXTRN_DEF,  // top level: begin EXTRN definition (external symbol requirement): (ID, NAME, SEGNO)
  OBJ_END_EXTRN_DEF,    // end EXTRN definition
  OBJ_BEGIN_PUBLIC,     // top level: begin defining public symbol: (NAME, SEGNO, OFFSET)
  OBJ_END_PUBLIC,       // end public symbol definition
  OBJ_OFFSET,           // word (16-bit) offset belonging to the containing object
  OBJ_BEGIN_GROUP_ABS_JUMP, // begin fixup: jmp near 1000h where CS is ASSUMEd to a group: 1000h is offset in group
  OBJ_END_GROUP_ABS_JUMP,   // end fixup of absolute jump in group
  OBJ_BEGIN_START,      // top level: define the start address of the program (SEGNO, OFFSET)
  OBJ_END_START,        // end the start address definition
  OBJ_STACK,            // flag as the STACK segment the segment being defined
  OBJ_BEGIN_SEG_ADDR,   // begin fixup: segment address of segment SEGNO at POS in current segment
  OBJ_END_SEG_ADDR,     // end segment address fixup
  OBJ_BEGIN_GROUP_ADDR, // begin fixup: segment address of group GROUPNO at POS in current segment
  OBJ_END_GROUP_ADDR,   // end group address fixup
  OBJ_P2ALIGN,          // align to power of 2 the segment being defined, or location counter in open segment
  OBJ_SPACE,            // allocate uninitialised space in current segment
  OBJ_CASED,            // indicate that symbols are case-sensitive
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