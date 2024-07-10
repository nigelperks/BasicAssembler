// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// COM image output.

#include <assert.h>
#include "comfile.h"

// MS-DOS Programmer's Reference p. 82
#define MAX_COM_FILE_SIZE (65024)

void output_com(const IMAGE* image, const char* filename) {
  assert(image != NULL);
  assert(filename != NULL);

  if (image->data == NULL || image->hi <= image->lo)
    fatal("no data for image\n");

  if (image->lo < 0x100)
    fatal("data in image segment before 100h\n");

  if (image->lo > 0x100)
    fatal("no data in image at 100h\n");

  if (!image->start.set)
    fatal("no start address for COM\n");

  if (image->start.seg != 0 || image->start.offset != 0x100)
    fatal("invalid start address for COM file\n");

  if (image->hi - image->lo > MAX_COM_FILE_SIZE)
    fatal("image too big for COM file: size %lu, max %lu\n", (unsigned long)(image->hi - image->lo), (unsigned long)MAX_COM_FILE_SIZE);

  if (image->stack.set)
    fatal("cannot create COM file: stack segment present\n");

  FILE* fp = efopen(filename, "wb", "writing");

  fwrite(image->data + image->lo, 1, image->hi - image->lo, fp);

  fclose(fp);
}
