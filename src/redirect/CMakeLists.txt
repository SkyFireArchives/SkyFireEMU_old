# Copyright (C) 2010 CactusEMU <http://www.cactusemu.com/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

if( WIN32 )
    if( INJECTOR )
        add_subdirectory(Hook)
        add_subdirectory(Injector)
    endif()
endif()