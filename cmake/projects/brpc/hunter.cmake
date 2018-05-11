# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
  PACKAGE_NAME brpc
  VERSION 0.9.0.0
  URL  "https://github.com/lindong28/brpc/archive/hunter-v0.9.0.zip"
  SHA1 09582111614ccae3cdbea61ea4eaebc7a665e7df
  )

hunter_cmake_args(
  brpc
  CMAKE_ARGS
    BRPC_WITH_GLOG=OFF
    WITH_DEBUG_SYMBOLS=ON
    BRPC_BUILD_SHARED=OFF
    BRPC_BUILD_GEN_MCPACK=OFF
    BRPC_BUILD_TOOLS=OFF
  )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(brpc)
hunter_download(PACKAGE_NAME brpc)
