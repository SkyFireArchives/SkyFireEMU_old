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
add_definitions(-D_BUILD_DIRECTIVE="${CMAKE_BUILD_TYPE}")

if( USE_SFMT)
  if(PLATFORM EQUAL 32)
    add_definitions(-axSSE2)
  else()
    add_definitions(-xSSE2)
  endif()
  message(STATUS "ICC: SFMT enabled, SSE2 flags forced")
endif()

if( WITH_WARNINGS )
  add_definitions(-w1)
  message(STATUS "ICC All warnings enabled")
else()
  add_definitions(-w)
  message(STATUS "ICC: All warnings disabled")
endif()

if( WITH_COREDEBUG )
  add_definitions(-g)
  message(STATUS "ICC: Debug-flag set (-g)")
endif()
