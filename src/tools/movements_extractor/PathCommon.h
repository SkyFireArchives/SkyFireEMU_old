/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef _MMAP_COMMON_H
#define _MMAP_COMMON_H

#include <string>
#include <vector>

#include "Define.h"

#ifndef _WIN32
    #include <stddef.h>
    #include <dirent.h>
#endif

#ifdef __linux__
    #include <errno.h>
#endif

using namespace std;

namespace Pathfinding
{
    inline bool matchWildcardFilter(const char* filter, const char* str)
    {
        if (!filter || !str)
            return false;

        // end on null character
        while (*filter && *str)
        {
            if (*filter == '*')
            {
                if (*++filter == '\0')   // wildcard at end of filter means all remaing chars match
                    return true;

                while (true)
                {
                    if (*filter == *str)
                        break;
                    if (*str == '\0')
                        return false;   // reached end of string without matching next filter character
                    str++;
                }
            }
            else if (*filter != *str)
                return false;           // mismatch

            filter++;
            str++;
        }

        return ((*filter == '\0' || (*filter == '*' && *++filter == '\0')) && *str == '\0');
    }

    enum ListFilesResult
    {
        LISTFILE_DIRECTORY_NOT_FOUND = 0,
        LISTFILE_OK = 1
    };

    inline ListFilesResult getDirContents(vector<string> &fileList, string dirpath = ".", string filter = "*", bool includeSubDirs = false)
    {
    #ifdef WIN32
        HANDLE hFind;
        WIN32_FIND_DATA findFileInfo;
        string directory;

        directory = dirpath + "/" + filter;

        hFind = FindFirstFile(directory.c_str(), &findFileInfo);

        if (hFind == INVALID_HANDLE_VALUE)
            return LISTFILE_DIRECTORY_NOT_FOUND;
        do
        {
            if (includeSubDirs || (findFileInfo.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) == 0)
                fileList.push_back(string(findFileInfo.cFileName));
        }
        while (FindNextFile(hFind, &findFileInfo));

        FindClose(hFind);

    #else
        const char *p = dirpath.c_str();
        DIR * dirp = opendir(p);
        struct dirent * dp;
        dirp = opendir(p);

        while (dirp)
        {
            errno = 0;
            if ((dp = readdir(dirp)) != NULL)
            {
                if (matchWildcardFilter(filter.c_str(), dp->d_name))
                    fileList.push_back(string(dp->d_name));
            }
            else
                break;
        }

        if (dirp)
            closedir(dirp);
        else
            return LISTFILE_DIRECTORY_NOT_FOUND;
    #endif

        return LISTFILE_OK;
    }
}

namespace Trinity
{
    struct map_fileheader
    {
        uint32 mapMagic;
        uint32 versionMagic;
        uint32 buildMagic;
        uint32 areaMapOffset;
        uint32 areaMapSize;
        uint32 heightMapOffset;
        uint32 heightMapSize;
        uint32 liquidMapOffset;
        uint32 liquidMapSize;
        uint32 holesOffset;
        uint32 holesSize;
    };

    #define MAP_AREA_NO_AREA      0x0001

    struct map_areaHeader
    {
        uint32 fourcc;
        uint16 flags;
        uint16 gridArea;
    };

    #define MAP_HEIGHT_NO_HEIGHT  0x0001
    #define MAP_HEIGHT_AS_INT16   0x0002
    #define MAP_HEIGHT_AS_INT8    0x0004

    struct map_heightHeader
    {
        uint32 fourcc;
        uint32 flags;
        float  gridHeight;
        float  gridMaxHeight;
    };

    #define MAP_LIQUID_NO_TYPE    0x0001
    #define MAP_LIQUID_NO_HEIGHT  0x0002

    struct map_liquidHeader
    {
        uint32 fourcc;
        uint16 flags;
        uint16 liquidType;
        uint8  offsetX;
        uint8  offsetY;
        uint8  width;
        uint8  height;
        float  liquidLevel;
    };

    enum ZLiquidStatus
    {
        LIQUID_MAP_NO_WATER     = 0x00000000,
        LIQUID_MAP_ABOVE_WATER  = 0x00000001,
        LIQUID_MAP_WATER_WALK   = 0x00000002,
        LIQUID_MAP_IN_WATER     = 0x00000004,
        LIQUID_MAP_UNDER_WATER  = 0x00000008
    };

    #define MAP_LIQUID_TYPE_NO_WATER    0x00
    #define MAP_LIQUID_TYPE_WATER       0x01
    #define MAP_LIQUID_TYPE_OCEAN       0x02
    #define MAP_LIQUID_TYPE_MAGMA       0x04
    #define MAP_LIQUID_TYPE_SLIME       0x08

    #define MAP_ALL_LIQUIDS   (MAP_LIQUID_TYPE_WATER | MAP_LIQUID_TYPE_OCEAN | MAP_LIQUID_TYPE_MAGMA | MAP_LIQUID_TYPE_SLIME)

    #define MAP_LIQUID_TYPE_DARK_WATER  0x10
    #define MAP_LIQUID_TYPE_WMO_WATER   0x20

    struct LiquidData
    {
        uint32 type;
        float  level;
        float  depth_level;
    };
}

#endif