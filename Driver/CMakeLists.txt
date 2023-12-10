add_executable(basl
  basl.c
  options.c
)
if(BASM_UNIT_TESTS)
target_compile_definitions(basl PRIVATE UNIT_TEST)
endif()
target_link_libraries(basl shared)
set_target_properties(basl PROPERTIES C_STANDARD 11)
