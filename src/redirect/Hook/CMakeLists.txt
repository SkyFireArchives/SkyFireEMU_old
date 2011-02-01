# Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
#
# Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
#
# Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

file(GLOB sources_localdir *.cpp *.h)

set(SkYFireRedirect_SRCS
  ${CactusRedirect_SRCS}
  ${sources_localdir}
)

set(CactusRedirect_LINK_FLAGS "/LIBPATH:\"${CMAKE_CURRENT_SOURCE_DIR}\"")

add_library(SkyFireRedirect SHARED ${CactusRedirect_SRCS})

set_target_properties(SkyFireRedirect PROPERTIES LINK_FLAGS "${SkyFireRedirect_LINK_FLAGS}")

if( UNIX )
  install(TARGETS SkyFireRedirect DESTINATION bin)
elseif( WIN32 )
  install(TARGETS SkyFireRedirect DESTINATION "${CMAKE_INSTALL_PREFIX}")
endif()
