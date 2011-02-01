option(SkyFire_USE_FOLDERS "Enable folder grouping in IDEs." ON)
if(SkyCube_USE_FOLDERS)
  set_property(GLOBAL PROPERTY USE_FOLDERS ON)
else()
  set_property(GLOBAL PROPERTY USE_FOLDERS OFF)
endif()

# Provide a way for Visual Studio Express users to turn OFF the new FOLDER
# organization feature. Default to ON for non-Express users. Express users must
# explicitly turn off this option to build CMake in the Express IDE...
OPTION(CMAKE_USE_FOLDERS "Enable folder grouping of projects in IDEs." ON)
MARK_AS_ADVANCED(CMAKE_USE_FOLDERS)

MACRO(CMAKE_SET_TARGET_FOLDER tgt folder)
IF(CMAKE_USE_FOLDERS)
    SET_PROPERTY(GLOBAL PROPERTY USE_FOLDERS ON)
    # Really, I just want this to be an "if(TARGET ${tgt})" ...
    # but I'm not sure that our min req'd., CMake 2.4.5 can handle
    # that... so I'm just activating this for now, with a version
    # compare, and only for MSVC builds.
    IF(MSVC)
      IF(NOT ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION} LESS 2.8)
        SET_PROPERTY(TARGET "${tgt}" PROPERTY FOLDER "${folder}")
      ENDIF()
ENDIF()
  ELSE()
    SET_PROPERTY(GLOBAL PROPERTY USE_FOLDERS OFF)
ENDIF()
ENDMACRO(CMAKE_SET_TARGET_FOLDER)