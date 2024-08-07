// Basic Linker
// Copyright (c) 2021-24 Nigel Perks
// blink main.

#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <assert.h>
#include "utils.h"
#include "object.h"
#include "module.h"
#include "combine.h"
#include "consolidate.h"
#include "resolve.h"
#include "image.h"
#include "format.h"
#include "exefile.h"
#include "comfile.h"
#include "binfile.h"
#include "stringlist.h"
#include "timer.h"

#ifdef UNIT_TEST
void RunAllTests(void);
#endif

static void help(void);
static void report_memory(void);
static void check_no_fixups(const SEGMENTED* segmented_program, const char* format);

int main(int argc, char* argv[]) {
  STRINGLIST* files = new_stringlist();
  const char* output_name = NULL;
  int case_sensitivity = CASE_INSENSITIVE;
  int verbose = 0;
  int format = COM_FORMAT;
  bool report_mem = false;
  bool report_time = false;
  const char* mapfile = NULL;

  progname = "blink";

  for (int i = 1; i < argc; i++) {
    const char* arg = argv[i];
    if (strcmp(arg, "/?") == 0)
      help();
    if (arg[0] == '-') {
#ifdef UNIT_TEST
      if (strcmp(arg, "-unittest") == 0) {
        delete_stringlist(files);
        RunAllTests();
        report_memory();
        exit(EXIT_SUCCESS); // TODO: return count of failures
      }
#endif
      if (arg[1] == '-') {
        if (strcmp(arg+2, "help") == 0)
          help();
        if (strcmp(arg+2, "case-sensitive") == 0)
          case_sensitivity = CASE_SENSITIVE;
        else
          fatal("unknown option: %s\n", arg);
      }
      else if (arg[1] == 'f') {
        if (arg[2])
          format = format_by_name(arg + 2);
        else if (++i < argc)
          format = format_by_name(argv[i]);
        else
          fatal("-f: output format missing\n");
      }
      else if (strcmp(arg, "-o") == 0) {
        if (++i < argc)
          output_name = argv[i];
        else
          fatal("output file name missing\n");
      }
      else if (strcmp(arg, "-p") == 0) {
        if (++i < argc)
          mapfile = argv[i];
        else
          fatal("map file name missing\n");
      }
      else {
        for (int j = 1; arg[j]; j++) {
          switch (arg[j]) {
            case 'h': case '?': help(); break;
            case 'm': report_mem = true; break;
            case 't': report_time = true; break;
            case 'v': verbose++; break;
            default: fatal("unknown option: %c\n", arg[j]); break;
          }
        }
      }
    }
    else {
      assert(files != NULL);
      append_string(files, arg);
    }
  }

  const unsigned modules = stringlist_count(files);

  if (modules == 0)
    fatal("no object file specified\n");

  if (output_name == NULL)
    output_name = default_output_name(format);

  TIMER timer;

  start_timer(&timer);

  SEGMENTED* segmented_program = new_segmented(output_name, case_sensitivity);

  // Load object files into the SEGMENTED program structure.
  for (unsigned i = 0; i < stringlist_count(files); i++) {
    if (verbose)
      printf("Load object file: %s\n", stringlist_item(files, i));
    OFILE* ofile = load_object_file(stringlist_item(files, i));

    // Process the object file records into a SEGMENTED structure for the module.
    SEGMENTED* module_segments = build_module_segments(ofile, case_sensitivity, verbose, stringlist_item(files, i));

    // Add private segments, and combine public segments, in the module, into program segments,
    // modifying the module's fixups appropriately and adding them to the program's fixups.
    incorporate_module(segmented_program, module_segments, verbose);

    delete_segmented(module_segments);
    delete_ofile(ofile);
  }

  // Consolidate segments into groups.
  consolidate_groups_and_stack(segmented_program, verbose);

  // Resolve external symbol values, checking all have been defined.
  // Convert absolute jump offsets in groups to PC-relative displacements.
  resolve_fixups(segmented_program, verbose);

  // Build a program image from the distinct segments and groups,
  // writing a map file if required.
  IMAGE* image = build_image(segmented_program, mapfile, verbose);

  if (verbose)
    printf("Output %s file: %s\n", format_name(format), output_name);

  switch (format) {
    case BIN_FORMAT:
      // Check that there are no segment address fixups to be performed at load time.
      // A raw binary file does not support that.
      check_no_fixups(segmented_program, "BIN");
      output_bin(image, output_name);
      break;
    case COM_FORMAT:
      // Check that there are no segment address fixups to be performed at load time.
      // A bare COM file does not support that.
      check_no_fixups(segmented_program, "COM");
      output_com(image, output_name);
      break;
    case EXE_FORMAT: {
      BUILDEXE* exe = build_exe(segmented_program, image);
      output_exe(exe, output_name);
      delete_buildexe(exe);
      break;
    }
    default:
      fatal("output format known but unimplemented: %s\n", format_name(format));
  }

  stop_timer(&timer);

  if (report_time)
    printf("Microseconds elapsed: %lld\n", elapsed_usec(&timer));

  delete_image(image);
  delete_segmented(segmented_program);
  delete_stringlist(files);

  if (report_mem)
    report_memory();

  return 0;
}

static void help(void) {
  puts("Usage: blink [options] file ...\n");
  puts("  -?          help");
  puts("  -fFMT       output format: com, exe");
  puts("  -h          help");
  puts("  -m          report memory usage");
  puts("  -o FILE     output file");
  puts("  -p FILE     map file");
  puts("  -t          time linking");
#ifdef UNIT_TEST
  puts("  -unittest   run unit tests");
#endif
  puts("  -vvvv       1-4 verbosity levels");
  exit(EXIT_FAILURE);
}

static void report_memory(void) {
  unsigned long malloc_count, free_count;
  get_memory_counts(&malloc_count, &free_count);
  printf("malloc: %10lu\n", malloc_count);
  printf("free:   %10lu\n", free_count);
}

static void check_no_fixups(const SEGMENTED* segmented_program, const char* format) {
  unsigned long n = segment_and_group_fixups(segmented_program->fixups);
  if (n)
    fatal("cannot produce %s file: segment fixups: %lu\n", format, n);
}

#ifdef UNIT_TEST

#include "CuTest.h"

extern CuSuite* symbol_test_suite(void);
extern CuSuite* fixup_test_suite(void);
extern CuSuite* segment_test_suite(void);
extern CuSuite* segment_list_test_suite(void);
extern CuSuite* group_list_test_suite(void);
extern CuSuite* combine_test_suite(void);
extern CuSuite* consolidate_test_suite(void);
extern CuSuite* resolve_test_suite(void);
extern CuSuite* image_test_suite(void);
extern CuSuite* segmented_test_suite(void);

void RunAllTests(void) {
  CuString *output = CuStringNew();
  CuSuite* suite = CuSuiteNew();

  CuSuiteAddSuite(suite, symbol_test_suite());
  CuSuiteAddSuite(suite, fixup_test_suite());
  CuSuiteAddSuite(suite, segment_test_suite());
  CuSuiteAddSuite(suite, segment_list_test_suite());
  CuSuiteAddSuite(suite, group_list_test_suite());
  CuSuiteAddSuite(suite, combine_test_suite());
  CuSuiteAddSuite(suite, consolidate_test_suite());
  CuSuiteAddSuite(suite, resolve_test_suite());
  CuSuiteAddSuite(suite, image_test_suite());
  CuSuiteAddSuite(suite, segmented_test_suite());

  CuSuiteRun(suite);
  CuSuiteSummary(suite, output);
  CuSuiteDetails(suite, output);
  printf("%s\n", output->buffer);
}

#endif /* UNIT_TEST */
