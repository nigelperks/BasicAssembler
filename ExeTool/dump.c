// EXE analysis tool
// Copyright (c) 2021 Nigel Perks
// Memory dump.

#include <ctype.h>
#include "dump.h"

static unsigned int dump_mem_paragraph(const BYTE* buf, unsigned long report_offset, unsigned long max)
{
    const unsigned int offset_in_para = report_offset % 16;
    const size_t remaining_in_para = 16 - offset_in_para;
    const size_t bytes_to_print = remaining_in_para <= max ? remaining_in_para : max;
    const size_t after_bytes = remaining_in_para - bytes_to_print;
    unsigned int i;

    printf("%06x: ", report_offset);

    for (i = 0; i < offset_in_para; i++)
        fputs("   ", stdout);

    for (i = 0; i < bytes_to_print; i++)
        printf("%02x ", buf[i]);

    for ( ; i < bytes_to_print; i++)
        fputs("   ", stdout);

    for (i = 0; i < after_bytes; i++)
        fputs("   ", stdout);

    fputs("  ", stdout);
    for (i = 0; i < offset_in_para; i++)
        putchar(' ');
    for (i = 0; i < bytes_to_print; i++)
        putchar(isprint(buf[i]) ? buf[i] : '.');

    putchar('\n');
    return i;
}

size_t dump_mem(const BYTE* buf, unsigned long report_offset, unsigned long size)
{
    size_t total = 0;

    while (size > 0)
    {
        unsigned int count = dump_mem_paragraph(buf, report_offset, size);
        size -= count;
        total += count;
        report_offset += count;
        buf += count;
    }

    return total;
}

