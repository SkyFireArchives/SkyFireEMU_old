# Copyright (C) 2010-2012 Project SkyFire <http://www.projectskyfire.org/>
# Copyright (C) 2005-2012 MaNGOS <http://www.getmangos.com/>
# Copyright (C) 2008-2012 Trinity <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# Set build-directive (used in core to tell which buildtype we used)
add_definitions(-D_BUILD_DIRECTIVE='"${CMAKE_BUILD_TYPE}"')

add_definitions(-fno-delete-null-pointer-checks)

if( USE_SFMT)
  if(PLATFORM EQUAL 32)
    # Required on 32-bit systems to enable SSE2 (standard on x64)
    add_definitions(-msse2 -mfpmath=sse)
  endif()
  add_definitions(-DHAVE_SSE2 -D__SSE2__)
  message(STATUS "GCC: SFMT enabled, SSE2 flags forced")
endif()

if( WITH_WARNINGS )
  add_definitions(-Wall -Wfatal-errors -Wextra)
  message(STATUS "GCC: All warnings enabled")
else()
  add_definitions(--no-warnings)
  message(STATUS "GCC: All warnings disabled")
endif()

if( WITH_COREDEBUG )
  add_definitions(-ggdb3)
  message(STATUS "GCC: Debug-flags set (-ggdb3)")
endif()
