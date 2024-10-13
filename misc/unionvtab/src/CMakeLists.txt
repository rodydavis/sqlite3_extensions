# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(unionvtab_library VERSION 0.0.1 LANGUAGES C)

add_library(unionvtab SHARED
  "unionvtab.c"
)

set_target_properties(unionvtab PROPERTIES
  OUTPUT_NAME "unionvtab"
)

target_compile_definitions(unionvtab PUBLIC DART_SHARED_LIB)
