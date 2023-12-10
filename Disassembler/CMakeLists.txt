add_executable(bdis
  dis.c
  fetch.c
  interact.c
)
if(BASM_UNIT_TESTS)
target_compile_definitions(bdis PRIVATE UNIT_TEST)
endif()
target_link_libraries(bdis shared)
set_target_properties(bdis PROPERTIES C_STANDARD 11)
