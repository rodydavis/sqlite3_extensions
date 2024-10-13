# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(vfstrace_library VERSION 0.0.1 LANGUAGES C)

add_library(vfstrace SHARED
  "vfstrace.c"
)

set_target_properties(vfstrace PROPERTIES
  OUTPUT_NAME "vfstrace"
)

target_compile_definitions(vfstrace PUBLIC DART_SHARED_LIB)
