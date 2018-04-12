include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_config)
include(hunter_cmake_args)

hunter_add_version(
  PACKAGE_NAME Folly
  VERSION "2018.04.09.00"
  URL "https://github.com/ambroff/folly/archive/4d00384173da50fcc56603be107c76566ba42069.zip"
  SHA1 7f4eb81bb284788a861b0f834a022b74a25f42f1
)

if (APPLE)
  hunter_cmake_args(Folly CMAKE_ARGS FOLLY_USE_LIBCPP=TRUE)
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME Folly)

