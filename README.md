BASIC INTEL 8086 ASSEMBLER AND LINKER
=====================================
Basic assembler and related tools written for self-education.

Please see LICENSE.

1. How to build
2. How to test
3. How to use
4. Language supported
5. Design choices
6. References


## 1. How to build
---------------
I am using **autocrlf=true** (CRLF on disk, LF committed).
Developed on Windows with Microsoft Visual Studio Community Edition.
Visual Studio solution file is included.
Debug builds are configured for both Win 32 (x86) and x64
but x64 produces several compile-time warnings about sizes of types.


## 2. How to test
--------------
Unit tests:

    bas -unittest
    blink -unittest

Functional & system tests:

    cd test
    test.py ..\Debug

Generated tests (if suitable reference assembler & linker are installed):

    cd test
    testgen.py ..\Debug

where ..\Debug holds the builds to be tested.


## 3. How to use
-------------
Executables in x64\Debug.

### Basic Assembler

    bas test.asm    -- assemble test.asm to test.obj

      -I            -- print intermediate file
      -me=N         -- max errors N
      -o name       -- output to file name
      -q            -- quiet
      -S            -- print source instead of assembling
      -unittest     -- run unit tests (using CuTest) and quit

### Basic Linker

    blink file ...  -- link object files

      -fcom         -- COM format output (default)
      -fexe         -- 16-bit EXE format output
      -o name       -- output to file name (A.COM by default)
      -unittest     -- run unit tests (using CuTest) and quit
      -vvvv         -- 1-4 verbosity levels for debugging the linker

### Basic Object tool

    bob test.obj    -- human-readable dump of custom-format object file

### Basic Disassembler

    bdis test.com   -- disassemble COM file

      -i            -- interactive mode
      -s            -- show assembly source only, not offsets or machine code

Interactive disassembly allows user-controlled interleaving
of disassembly and hex dump, to view code and data in a COM file.
Enter '?' in interactive mode for help; d = dump, s = disassemble.

### EXE tool

    exetool test.exe  -- dump EXE and program image

      -A              -- print data after program image (default)
      -a              -- do not print data after program image
      -M              -- dump program image as well as EXE header (default)
      -m              -- do not dump program image
      -X              -- extract program image to raw binary (BIN) and COM files
      -x              -- do not extract program image to files (default)

    exetool -c a.exe b.exe    -- compare two EXE files

    exetool -i a.exe  -- interactive dump and disassembly (? for help)


## 4. Language supported
---------------------
All 8086 instructions.
8087 in progress.

A line is free format: no fixed column for labels.

Memory operands must be bracketed: [base+index+disp]

Components base, index, displacement are optional but must appear in that order.

No simplified memory models. Use SEGMENT, GROUP and ASSUME. Their behaviour is
intended to match Turbo Assembler for now.

Directives:

- ASSUME   -- assume segment registers reference given segments or groups
- DB       -- define byte or byte (ASCII) string
- DD       -- define dword (4 bytes)
- DQ       -- define qword (8 bytes)
- DT       -- define ten-byte data
- DW       -- define word (2 bytes)
- END      -- end program; optionally specify start label
- ENDS     -- end segment
- EXTRN    -- list symbols to be found outside current segment and their types
            (BYTE, WORD, DWORD, PROC)
- GROUP    -- define a group and list its segments
- IDEAL    -- no effect, allows Turbo Assembler to process the source unchanged
- ORG      -- set segment origin (use 100h for main segment of COM program)
- PUBLIC   -- make specified symbols public
- SEGMENT  -- open named segment


## 5. Design choices
-----------------
1. The aim was to write my own assembler and linker from scratch.
2. Target 16-bit MS-DOS to get something simple working.
3. Implemented in C so that a future C compiler can compile itself.
4. Matches Borland Turbo Assembler IDEAL syntax for testing purposes.
5. Speed and memory performance of the tools are later tasks, not present aims.
6. Good quality generated code: optimise jump sizes.
7. Custom object format in order to understand linking.


## 6. References
-------------
The single most instructive and inspiring text was David Salomon's _Assemblers
and Loaders_.

- Borland _Turbo Assembler Quick Reference_, version 4.0, 1993
- Borland _Turbo Assembler User's Guide_, version 4.0, 1993
- Intel _iAPX 86/88, 186/188 User's Manual: Programmer's Reference_, 1983
- Kusswurm, Daniel _Modern X86 Assembly Language Programming_, 2014
- Levine, John R. _Linkers & Loaders_, 2000
- Microsoft _MS-DOS Programmer's Reference_, version 6.0, 1993
- Salomon, David _Assemblers and Loaders_


Nigel Perks
