# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2018.5.11.0
  URL "https://github.com/ambroff/braft/archive/c113884f0a05d819494753377cd0c07d1a14447f.zip"
  SHA1 7b290fcb4491e04f52565ac321d0b2d6b405088a
  )

hunter_add_version(
  PACKAGE_NAME braft
  VERSION 2018.5.11.1
  URL "https://github.com/lindong28/braft/archive/8c4ad8437d709dda70ad4edcc0f10960ac72d2b8.zip"
  SHA1 40fff011e48364b94533aca9257ea8db33ef02db
  )

hunter_cmake_args(
  braft
  CMAKE_ARGS
    BRPC_WITH_GLOG=ON
    BRPC_BUILD_SHARED=OFF
  )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(braft)
hunter_download(PACKAGE_NAME braft)
