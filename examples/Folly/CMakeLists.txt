cmake_minimum_required(VERSION 3.2)

# Emulate HunterGate:
# * https://github.com/hunter-packages/gate
include("../common.cmake")

set(CMAKE_CXX_STANDARD 17)

project(folly-test)

# DOCUMENTATION_START {
hunter_add_package(ZLIB)
find_package(ZLIB CONFIG REQUIRED)

hunter_add_package(gflags)
find_package(gflags CONFIG REQUIRED)

hunter_add_package(glog)
find_package(glog CONFIG REQUIRED)

hunter_add_package(Folly)
find_package(Folly CONFIG REQUIRED)

add_executable(folly-test test.cpp)
target_link_libraries(folly-test PUBLIC
  ZLIB::zlib
  glog::glog
  gflags
  Folly::folly
  )
# DOCUMENTATION_END }
