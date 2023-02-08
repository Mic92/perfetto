#!/usr/bin/env bash

gn gen out/release --args="is_debug=false use_custom_libcxx=false\
  is_hermetic_clang=false is_system_compiler=true is_clang=false\
  skip_buildtools_check=true enable_perfetto_integration_tests=false\
  enable_perfetto_unittests=false perfetto_use_system_protobuf=true\
  perfetto_use_system_zlib=true perfetto_enable_git_rev_version_header=false\
  cc=\"${CC}\" cxx=\"${CXX}\""

ninja -C out/release perfetto traced traced_probes trace_processor_py
