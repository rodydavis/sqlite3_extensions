# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(sha1_library VERSION 0.0.1 LANGUAGES C)

add_library(sha1 SHARED
  "sha1.c"
)

set_target_properties(sha1 PROPERTIES
  OUTPUT_NAME "sha1"
)

target_compile_definitions(sha1 PUBLIC DART_SHARED_LIB)
