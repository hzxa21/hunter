include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_config)
include(hunter_cmake_args)

hunter_add_version(
  PACKAGE_NAME Folly
  VERSION "2018.04.09.00"
  URL "https://github.com/ambroff/folly/archive/036c1672ca70899ce589ac3a0de80b7c5983da15.zip"
  SHA1 f3b2faa212f5f43b108d8e8a0ee3f8518bef0952
)

if (APPLE)
  hunter_cmake_args(Folly CMAKE_ARGS FOLLY_USE_LIBCPP=TRUE)
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME Folly)

