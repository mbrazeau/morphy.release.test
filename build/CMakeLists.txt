cmake_minimum_required(VERSION 3.10)

# morphy nui version
project(morphy_nui_v)

include_directories(${CMAKE_SOURCE_DIR}/../ncl ${CMAKE_SOURCE_DIR}/../mpl/include)
if(MSVC)
	include_directories(${CMAKE_SOURCE_DIR}/ncl ${CMAKE_SOURCE_DIR}/mpl/include ${CMAKE_SOURCE_DIR}/../wineditline/include)
endif()

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmakemodules")
set(PATH_LIB_NCL "ncl_static")

# find libedit
if (NOT MSVC)
    FIND_PACKAGE(libedit REQUIRED)
endif()

# Crank up the warning levels
if(MSVC)
  # Force to always compile with W4
  if(CMAKE_CXX_FLAGS MATCHES "/W[0-4]")
    string(REGEX REPLACE "/W[0-4]" "/W4" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
  else()
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
  endif()
  add_definitions(/D_CRT_SECURE_NO_WARNINGS)
else()
  # Update if necessary
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -fPIC")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -fPIC")
  set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -DDEBUG")
  set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -DDEBUG")
  set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS} -O3")
  set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS} -O3")
  if(COVERAGE)
      message(STATUS "coverage enabled")
      set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage")
      set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --coverage")
  else()
      message(STATUS "coverage disabled")
  endif()
endif()

set(CMAKE_INSTALL_PREFIX "${CMAKE_SOURCE_DIR}/../install")

if (MSVC)
    add_subdirectory (${CMAKE_SOURCE_DIR}/../wineditline ${CMAKE_CURRENT_BINARY_DIR}/../wineditline)
endif()
add_subdirectory(${CMAKE_SOURCE_DIR}/../ncl ${CMAKE_CURRENT_BINARY_DIR}/ncl)
add_subdirectory(${CMAKE_SOURCE_DIR}/../mpl ${CMAKE_CURRENT_BINARY_DIR}/mpl)
add_subdirectory(${CMAKE_SOURCE_DIR}/../nui ${CMAKE_CURRENT_BINARY_DIR}/nui)
