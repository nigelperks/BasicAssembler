
BASIC INTEL 8086 ASSEMBLER AND LINKER
=====================================

Please see LICENSE.

1. How to build
2. How to use
3. Language supported
4. Design choices
5. References


1. HOW TO BUILD
---------------
I am using autocrlf=true (CRLF on disk, LF committed).
Developed on Windows with Microsoft Visual Studio Community Edition.
Visual Studio solution file is included.
Only configuration x64 Debug is set up.


2. HOW TO USE
-------------
Executables in x64\Debug.

Basic Assembler:

  bas test.asm    -- assemble test.asm to test.obj

    -I            -- print intermediate file
    -me=N         -- max errors N
    -o name       -- output to file name
    -q            -- quiet
    -S            -- print source instead of assembling
    -unittest     -- run unit tests (using CuTest) and quit

Basic Linker:

  blink file ...  -- link object files

    -fcom         -- COM format output (default)
    -fexe         -- 16-bit EXE format output
    -o name       -- output to file name (A.COM by default)
    -unittest     -- run unit tests (using CuTest) and quit
    -vvvv         -- 1-4 verbosity levels for debugging the linker

Basic Disassembler:

  bdis test.com   -- disassemble COM file

    -s            -- show assembly source only, not offsets or machine code

EXE tool:

  exetool test.exe  -- dump EXE and program image

    -A              -- print data after program image (default)
    -a              -- do not print data after program image
    -I              -- dump program image as well as EXE header (default)
    -i              -- do not dump program image
    -X              -- extract program image to raw binary (BIN) and COM files
    -x              -- do not extract program image to files (default)

  exetool -c a.exe b.exe    -- compare two EXE files


3. LANGUAGE SUPPORTED
---------------------
All 8086 instructions.
8087 in progress.

A line is free format: no fixed column for labels.

Memory operands must be bracketed: [base+index+disp]

Components base, index, displacement are optional but must appear in that order.

No simplified memory models. Use SEGMENT, GROUP and ASSUME. Their behaviour is
intended to match Turbo Assembler for now.

Directives:

ASSUME   -- assume segment registers reference given segments or groups
DB       -- define byte or byte (ASCII) string
DD       -- define dword (4 bytes)
DQ       -- define qword (8 bytes)
DT       -- define ten-byte data
DW       -- define word (2 bytes)
END      -- end program; optionally specify start label
ENDS     -- end segment
EXTRN    -- list symbols to be found outside current segment and their types
            (BYTE, WORD, DWORD, PROC)
GROUP    -- define a group and list its segments
IDEAL    -- no effect, allows Turbo Assembler to process the source unchanged
ORG      -- set segment origin (use 100h for main segment of COM program)
PUBLIC   -- make specified symbols public
SEGMENT  -- open named segment


4. DESIGN CHOICES
-----------------
1. The aim was simply to write my own assembler and linker from scratch.
2. Target 16-bit MS-DOS to get something simple working.
3. Implemented in C so that a future C compiler can compile itself.
4. Matches Borland Turbo Assembler IDEAL syntax for testing purposes.
5. Performance is of no particular interest; get it working first.
6. Custom object format in order to understand linking.


5. REFERENCES
-------------
Borland "Turbo Assembler Quick Reference", version 4.0, 1993
Borland "Turbo Assembler User's Guide", version 4.0, 1993
Intel "iAPX 86/88, 186/188 User's Manual: Programmer's Reference", 1983
Kusswurm, Daniel "Modern X86 Assembly Language Programming", 2014
Levine, John R. "Linkers & Loaders", 2000
Microsoft "MS-DOS Programmer's Reference", version 6.0, 1993
Salomon, David "Assemblers and Loaders"


Nigel Perks
