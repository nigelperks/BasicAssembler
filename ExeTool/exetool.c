// EXE analysis tool
// Copyright (c) 2021-24 Nigel Perks
// exetool main.

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <assert.h>
#include "utils.h"
#include "exeheader.h"
#include "options.h"
#include "fileutil.h"
#include "dump.h"
#include "loadexe.h"
#include "interact.h"

static void help(void);
static void dump_exe(const OPTIONS*);
static void compare_exe(const OPTIONS*);

int main(int argc, char* argv[])
{
    progname = "exetool";

    OPTIONS* opt = parse_options(argc, argv);

    if (opt->help)
      help();

    if (opt->compare)
      compare_exe(opt);
    else if (opt->interactive)
      interact(opt->file_name);
    else
      dump_exe(opt);

    return 0;
}

static void help(void) {
  puts("Usage: exetool [options] file");
  puts("       exetool -c file1 file2");
  putchar('\n');
  puts("  -?   help");
  puts("  -A   print data after program image (default)");
  puts("  -a   do not print data after program image");
  puts("  -h   help");
  puts("  -M   dump program image as well as EXE header (default)");
  puts("  -m   do not dump program image");
  puts("  -X   extract program image to raw binary (BIN) and COM files");
  puts("  -x   do not extract program image to files (default)");
  putchar('\n');
  puts("  -c   compare two EXE files");
  putchar('\n');
  puts("  -i   interactive mode: enter ? for help");
  exit(EXIT_FAILURE);
}

static void dump_exe(const OPTIONS* opt)
{
    unsigned long header_padding_offset = 0;
    unsigned long relocations_offset = 0;
    unsigned long image_offset = 0;
    unsigned long after_image_offset = 0;
    FileSize image_size = 0;

    unsigned long total_size = 0;

    FILE* fp = fopen(opt->file_name, "rb");
    if (fp == NULL)
        fatal("cannot open file %s\n", opt->file_name);

    FileSize actual_size = file_size(fp, opt->file_name);

    EXEHEADER header;
    fseek(fp, 0, SEEK_SET);
    FileSize count = (FileSize) fread(&header, 1, sizeof header, fp);
    if (count != sizeof header)
        fatal("file too small for EXE header\n");
    FileSize total_read = count;

    if (header.exSignature != 0x5A4D)
        fatal("EXE signature not found\n");

    print_exe_header(&header);
    putchar('\n');

    header_padding_offset = total_read;
    if (header.exRelocItems > 0)
    {
        if (total_read < header.exRelocTable)
        {
            puts("PADDING BEFORE RELOCATION TABLE:");
            const FileSize padding_size = header.exRelocTable - total_read;
            BYTE* padding = read_file(fp, padding_size);
            total_read += padding_size;
            dump_mem(padding, header_padding_offset, padding_size);
            putchar('\n');
            putchar('\n');
            efree(padding);
        }

        relocations_offset = total_read;
        puts("RELOCATION TABLE:");
        for (unsigned i = 0; i < header.exRelocItems; i++)
        {
            WORD w1 = getword(fp);
            WORD w2 = getword(fp);
            total_read += 4;
            printf("%04x:%04x\n", w2, w1);
        }
        putchar('\n');
    }

    FileSize header_size = header.exHeaderSize * 16;
    if (total_read < header_size)
    {
        puts("REST OF HEADER:");
        FileSize sz = header_size - total_read;
        BYTE* rest = read_file(fp, sz);
        dump_mem(rest, total_read, sz);
        putchar('\n');
        total_read += sz;
    }

    image_offset = total_read;
    total_size = (header.exPages - 1) * 512 + header.exExtraBytes;
    if (image_offset > total_size)
        fatal("beyond total file size in header\n");
    image_size = total_size - image_offset;

    puts("PROGRAM IMAGE:");

    if (opt->image)
    {
        BYTE* buf = read_file(fp, image_size);
        total_read += image_size;
        count = dump_mem(buf, image_offset, image_size);
        if (opt->extract_image)
        {
            FILE* img = fopen("IMAGE___.BIN", "wb");
            fwrite(buf, 1, image_size, img);
            fclose(img);
            img = fopen("IMAGE___.COM", "wb");
            if (image_size >= 0x100)
                fwrite(buf + 0x100, 1, image_size - 0x100, img);
            fclose(img);
        }
        efree(buf);
    }
    else
    {
        fseek(fp, image_size, SEEK_CUR);
        total_read += image_size;
    }
    putchar('\n');

    after_image_offset = total_read;
    if (opt->after_image)
    {
        puts("AFTER PROGRAM IMAGE:");
        assert(total_read <= actual_size);
        if (total_read < actual_size)
        {
            FileSize sz = actual_size - total_read;
            BYTE* buf = read_file(fp, sz);
            dump_mem(buf, total_read, sz);
            efree(buf);
        }
    }

    fclose(fp);

    putchar('\n');
    printf("Actual file size:       %lxh = %lu\n", actual_size, actual_size);
    printf("Total size from header: %lxh = %lu\n", total_size, total_size);
    printf("Size of program image:  %lxh = %lu\n", image_size, image_size);
}

static void compare_exe(const OPTIONS* opt)
{
    assert(opt != NULL);
    assert(opt->compare);
    assert(opt->file_name != NULL);
    assert(opt->second_file_name != NULL);

    LOADEXE* file1 = load_exe(opt->file_name);
    LOADEXE* file2 = load_exe(opt->second_file_name);

    BOOL fail = FALSE;

    if (memcmp(&file1->header, &file2->header, sizeof file1->header) != 0) {
        fail = TRUE;
        fprintf(stderr, "EXE headers mismatch\n");
    }

    if (file1->reloc_table == NULL) {
      if (file2->reloc_table != NULL) {
        fail = TRUE;
        fprintf(stderr, "%s has no relocation table, %s has relocation table\n", opt->file_name, opt->second_file_name);
      }
    }
    else {
      if (file2->reloc_table == NULL) {
        fail = TRUE;
        fprintf(stderr, "%s has relocation table, %s has no relocation table\n", opt->file_name, opt->second_file_name);
      }
      else {
        assert(file1->header.exRelocItems == file2->header.exRelocItems);
        if (memcmp(file1->reloc_table, file2->reloc_table, file1->header.exRelocItems * sizeof file1->reloc_table[0]) != 0) {
          fprintf(stderr, "Note: unsorted relocation tables differ\n");
          RELOC_ITEM* sorted1 = sorted_reloc_table(file1->reloc_table, file1->header.exRelocItems);
          RELOC_ITEM* sorted2 = sorted_reloc_table(file2->reloc_table, file2->header.exRelocItems);
          if (memcmp(sorted1, sorted2, file1->header.exRelocItems * sizeof file1->reloc_table[0]) != 0) {
            fail = TRUE;
            fprintf(stderr, "Sorted relocation tables mismatch\n");
          }
        }
      }
    }

    if (file1->image_size != file2->image_size) {
        fail = TRUE;
        fprintf(stderr, "EXE images have different sizes\n");
    }

    if (memcmp(file1->image, file2->image, file1->image_size) != 0) {
        fail = TRUE;
        fprintf(stderr, "EXE images mismatch\n");
    }

    if (fail)
        fatal("EXE mismatch: %s, %s\n", opt->file_name, opt->second_file_name);

    delete_loadexe(file1);
    delete_loadexe(file2);
}
