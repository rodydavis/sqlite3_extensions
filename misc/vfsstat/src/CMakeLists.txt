# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(vfsstat_library VERSION 0.0.1 LANGUAGES C)

add_library(vfsstat SHARED
  "vfsstat.c"
)

set_target_properties(vfsstat PROPERTIES
  OUTPUT_NAME "vfsstat"
)

target_compile_definitions(vfsstat PUBLIC DART_SHARED_LIB)
