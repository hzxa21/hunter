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
  VERSION 2018.10.22.1
  URL "https://github.com/ambroff/brpc/archive/ffaa5bce16afc15523d703c1cb36a98ffdd93512.zip"
  SHA1 52d444eab0a265cfe33cf829c00499cb4efcb618
  )

hunter_add_version(
  PACKAGE_NAME brpc
  VERSION 2020.02.26.1
  URL "https://github.com/apache/incubator-brpc/archive/f8c188a7a5186c2d43a20735ad175a32b39788a3.zip"
  SHA1 e3f8fc587943dc801ea6190ef58b7015a48968c5
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
