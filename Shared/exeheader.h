// Basic Linker
// Copyright (c) 2021 Nigel Perks
// MS-DOS EXE file header.

#ifndef EXEHEADER_H
#define EXEHEADER_H

#include "utils.h"

// MS-DOS Programmer's Reference 2nd edition version 6.0 p. 84.
typedef struct EXEHEADER {
    WORD exSignature;   // EXE signature "MZ" 0x5A4D
    WORD exExtraBytes;  // bytes beyond last complete page: number of bytes in file modulo 512
    WORD exPages;       // number of whole and part pages (512 bytes) in file
    WORD exRelocItems;  // number of pointers in relocation table
    WORD exHeaderSize;  // size of header, in paragraphs (16 bytes)
    WORD exMinAlloc;    // minimum memory allocation beyond image on load (paragraphs)
    WORD exMaxAlloc;    // maximum memory allocation beyond image on load (paragraphs)
    WORD exInitSS;      // initial SS value: incremented on load with start segment value
    WORD exInitSP;      // initial SP value
    WORD exCheckSum;    // sum of all 16-bit values in file, excluding this field, ones-complemented
    WORD exInitIP;      // initial IP
    WORD exInitCS;      // initial CS: incremented on load with start segment value
    WORD exRelocTable;  // byte offset of relocation table from beginning of file
    WORD exOverlay;     // 0 unless using overlays
} EXEHEADER;

typedef struct {
    WORD offset;
    WORD segment;
} RELOC_ITEM;

#endif // EXEHEADER_H