# Install script for directory: /Users/mbrazeau/Projects/Morphy/Release/ncl/ncl

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/mbrazeau/Projects/Morphy/Release/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ncl" TYPE SHARED_LIBRARY FILES "/Users/mbrazeau/Projects/Morphy/Release/build/ncl/ncl/libncl.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ncl/libncl.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ncl/libncl.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ncl/libncl.dylib")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/ncl" TYPE STATIC_LIBRARY FILES "/Users/mbrazeau/Projects/Morphy/Release/build/ncl/ncl/libncl.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ncl/libncl.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ncl/libncl.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/ncl/libncl.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ncl" TYPE FILE FILES
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/ncl.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsallocatematrix.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsassumptionsblock.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsblock.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxscdiscretematrix.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxscharactersblock.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxscxxdiscretematrix.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsdatablock.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsdefs.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsdiscretedatum.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsdistancedatum.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsdistancesblock.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsexception.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsmultiformat.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxspublicblocks.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsreader.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxssetreader.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsstring.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxstaxaassociationblock.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxstaxablock.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxstoken.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxstreesblock.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsunalignedblock.h"
    "/Users/mbrazeau/Projects/Morphy/Release/ncl/ncl/nxsutilcopy.h"
    )
endif()

