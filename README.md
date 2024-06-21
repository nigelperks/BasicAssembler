# BASIC INTEL 8086/286 ASSEMBLER AND LINKER

Basic assembler and related tools written for self-education.

Please see LICENSE.

1. How to build on Windows
2. How to test
3. How to use
4. Language supported
5. Memory model
6. Design choices
7. References


## 1. How to build on Windows

Clone the repo using **autocrlf=true** (CRLF on disk, LF committed).
The recommend build is Debug for Win32 (x86),
to avoid compile-warnings about type sizes, for debugging,
and for unit-testing.

In the top-level directory of the repo:


```
md Build
cmake -S . -B Build -G "Visual Studio 17 2022" -A Win32
cmake --build Build --config Debug
```


## 2. How to test

Unit tests:

```
ctest --test-dir Build -C Debug
```

The following scripts take the location of the executables being tested
as a parameter.

Functional & system tests:

    cd test
    test.py ..\Build\Debug\bin

Generated tests (if suitable reference assembler & linker are installed):

    cd test
    testgen.py ..\Build\Debug\bin

Generated tests of disassembler (do not require reference assembler):

    cd test
    testdis.py ..\Build\Debug\bin


## 3. How to use

No user manual yet.

### Basic Assembler and Linker (driver)

Assemble given ASM files to OBJ. Link together with given OBJ files.
Driver program, invoking bas and blink to assemble and link.

    basl file1.asm file2.obj ...

      -f format     -- output format: bin, com (default), exe
      -m            -- report dynamic memory allocations (for debugging)
      -me=N         -- max errors N
      -o name       -- output to file name (A.COM by default)
      -p name       -- map file showing segment layout in image
      -s            -- assemble only; do not link
      -unittest     -- run unit tests (using CuTest) and quit
      -vv           -- 1-2 verbosity levels

### Basic Assembler

    bas test.asm    -- assemble test.asm to test.obj

      -I            -- print intermediate file
      -m            -- report dynamic memory allocations (for debugging)
      -me=N         -- max errors N
      -o name       -- output to file name
      -S            -- print source instead of assembling
      -t            -- measure assembly time (microseconds)
      -unittest     -- run unit tests (using CuTest) and quit
      -v            -- verbose

### Basic Linker

    blink file ...  -- link object files

      -f format     -- output format: bin, com (default), exe
      -m            -- report dynamic memory allocations (for debugging)
      -o name       -- output to file name (A.COM by default)
      -p name       -- map file showing segment layout in image
      -unittest     -- run unit tests (using CuTest) and quit
      -vvvv         -- 1-4 verbosity levels for debugging the linker

### Basic Object tool

    bob test.obj    -- human-readable dump of custom-format object file

### Basic Disassembler

    bdis test.com   -- disassemble COM or BIN file

      -b            -- raw binary, not COM
      -i            -- interactive mode
      -s            -- show assembly source only, not offsets or machine code
      -unittest     -- run unit tests (using CuTest) and quit

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

All 80286 and 80287 instructions.
The default mode is 8086/87 only.

A line is free format: no fixed column for labels.
Instruction names and directives are reserved, not available for labels.

Memory operands must be bracketed: [base+index+disp]

Components base, index, displacement are optional but must appear in that order.

Only the TINY simplified memory model so far.
Otherwise use SEGMENT, GROUP and ASSUME, whose behaviour
is intended to match Turbo Assembler for now.

Directives:

- ALIGN    -- align following item on 1,2,4,... bytes
- ASSUME   -- assume segment registers address specified segments or groups
- CODESEG  -- open the code segment of the current memory model
- DATASEG  -- open the data segment of the current memory model
- DB       -- define byte or byte (ASCII) string
- DD       -- define dword (4 bytes)
- DQ       -- define qword (8 bytes)
- DT       -- define ten-byte data
- DW       -- define word (2 bytes)
- END      -- end program; optionally specify start label
- ENDS     -- end segment
- EQU      -- set symbol to absolute value, rather than address; can be written "="
- EXTRN    -- list symbols to be found outside current segment and their types
            (BYTE, WORD, DWORD, PROC)
- GROUP    -- define a group and list its segments
- IDEAL    -- no effect, allows Turbo Assembler to process the source unchanged
- JUMPS    -- expand conditional jumps when out of short range
- MODEL    -- set memory model
- ORG      -- set segment origin (use 100h for main segment of COM program)
- P286     -- select 80286 instructions including protected mode and 80287
- P286N    -- select 80286 non-protected instructions including 80287
- P287     -- enable 80287 instructions
- P8086    -- select 8086 instructions including 8087
- P8087    -- re-enable 8087 instructions after PNO87
- PNO87    -- disable 8087 instructions
- PUBLIC   -- make specified symbols public
- SEGMENT  -- open named segment

Operators:

- BYTE     -- force data to byte size: MOV AL, [BYTE addr]
- DUP      -- duplicate data n times: n DUP (val)
= DWORD    -- force data to dword size, 4 bytes
- FAR      -- far jump address: FAR 1234H:5678H, FAR addr
- FWORD    -- force data to far word size, 6 bytes
- NEAR     -- force near (2-byte signed offset) jump: NEAR addr
- OFFSET   -- offset of label in segment or group: OFFSET addr
- PAGE     -- 256-byte segment alignment: SEGMENT main PAGE
- PARA     -- 16-byte segment alignment: SEGMENT main PARA
- PTR      -- the following symbol is an address: MOV AL, [BYTE PTR addr]
- QWORD    -- force data to 8-byte size
- SEG      -- segment address of label: SEG addr
- SHORT    -- force short (1-byte signed offset) jump
- TBYTE    -- force data to 10-byte size
- WORD     -- force data to word size: MOV AX, [WORD addr]

Predefined symbols:

- $        -- location counter: OFFSET $ = offset in group


## 5. Memory model

(1) Simplified model:

MODEL TINY
- CODESEG: code segment _CODE in group _GROUP
- DATASEG: data segment _DATA in group _GROUP
- UDATASEG: uninitialised data segment _BSS in group _GROUP
- all segment registers assumed to address _GROUP

(2) Explicit segments:

Uninitialised data must go in UNINIT segments.

SEGMENT name [PUBLIC|STACK|UNINIT] [BYTE|WORD|DWORD|PARA|PAGE]
...
ENDS [name]

ASSUME DS:_DATA,ES:_group,...

GROUP group_name  segment1, segment2, ...


## 6. Design choices

1. The aim was to write my own assembler and linker from scratch.
2. Target 16-bit MS-DOS to get something simple working.
3. Implemented in C so that a future C compiler can compile itself.
4. Matches Borland Turbo Assembler IDEAL syntax for testing purposes.
5. Speed and memory performance of the tools are later tasks, not present aims.
6. Good quality generated code: optimise jump sizes.
7. Custom object format in order to understand linking.


## 7. References

The single most instructive and inspiring text was David Salomon's _Assemblers
and Loaders_.

- Borland _Turbo Assembler Quick Reference_, version 4.0, 1993
- Borland _Turbo Assembler User's Guide_, version 4.0, 1993
- Intel _iAPX 86/88, 186/188 User's Manual: Programmer's Reference_, 1983
- Intel _80286 and 80287 Programmer's Reference Manual_, 1987
- Intel _80387 Programmer's Reference Manual_, 1987
- Kusswurm, Daniel _Modern X86 Assembly Language Programming_, 2014
- Levine, John R. _Linkers & Loaders_, 2000
- Microsoft _MASM Programmer's Guide_, version 6.1, 1996
- Microsoft _MS-DOS Programmer's Reference_, version 6.0, 1993
- Salomon, David _Assemblers and Loaders_


Nigel Perks
