# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(templatevtab_library VERSION 0.0.1 LANGUAGES C)

add_library(templatevtab SHARED
  "templatevtab.c"
)

set_target_properties(templatevtab PROPERTIES
  OUTPUT_NAME "templatevtab"
)

target_compile_definitions(templatevtab PUBLIC DART_SHARED_LIB)
