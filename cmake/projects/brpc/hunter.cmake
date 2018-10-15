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

hunter_add_version(
  PACKAGE_NAME brpc
  VERSION 0.9.0.1
  URL  "https://github.com/lindong28/brpc/archive/303a28ade418a56639aebfd13211ed7493c8e34e.zip"
  SHA1 5212ec91954df652123c56243fa5708fddf90d76
  )

hunter_add_version(
        PACKAGE_NAME brpc
        VERSION 0.9.0.2
        URL  "https://github.com/hzxa21/brpc/archive/zahuang-hunter-v0.9.0.zip"
        SHA1 23bb82ede61fb2e2658a77226d2da32d79714885
)

hunter_cmake_args(
  brpc
  CMAKE_ARGS
    BRPC_WITH_GLOG=ON
    WITH_DEBUG_SYMBOLS=ON
    BRPC_BUILD_SHARED=OFF
    BRPC_BUILD_GEN_MCPACK=OFF
    BRPC_BUILD_TOOLS=OFF
  )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(brpc)
hunter_download(PACKAGE_NAME brpc)
