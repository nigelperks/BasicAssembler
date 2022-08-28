// Basic Linker
// Copyright (c) 2022 Nigel Perks
// Raw binary image output.

#include <assert.h>
#include "binfile.h"

void output_bin(const IMAGE* image, const char* filename) {
  assert(image != NULL);
  assert(filename != NULL);

  if (image->data == NULL || image->hi <= image->lo)
    fatal("no data for image\n");

  if (image->lo > 0)
    fatal("no data in image at offset 0h\n");

  if (image->start.set) {
    if (image->start.seg != 0 || image->start.offset != 0)
      fatal("invalid start address for BIN file: %04x:%04xh\n", (unsigned) image->start.seg, (unsigned) image->start.offset);
  }

  if (image->stack.set)
    fatal("cannot create BIN file: stack segment present\n");

  FILE* fp = efopen(filename, "wb", "writing");

  fwrite(image->data, 1, image->hi, fp);

  fclose(fp);
}
