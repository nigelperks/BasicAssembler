add_executable(blink
  binfile.c
  blink.c
  combine.c
  comfile.c
  consolidate.c
  exefile.c
  fixup.c
  format.c
  grouplist.c
  image.c
  module.c
  resolve.c
  seglist.c
  segment.c
  segmented.c
  symbol.c
)
if(BASM_UNIT_TESTS)
target_compile_definitions(blink PRIVATE UNIT_TEST)
endif()
target_link_libraries(blink shared)
set_target_properties(blink PROPERTIES C_STANDARD 11)
