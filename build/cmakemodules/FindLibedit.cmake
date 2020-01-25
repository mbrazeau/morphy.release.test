find_package(PkgConfig REQUIRED)
pkg_search_modules(LIBEDIT REQUIRED libedit libedit-dev)
message(STATUS "libedit required libraries: ${LIBEDIT_LIBRARIES}")

set(PATH_LIB_EDIT ${LIBEDIT_LIBRARIES})
