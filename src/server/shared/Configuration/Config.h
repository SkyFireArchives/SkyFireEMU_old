/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, 
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#ifndef CONFIG_H
#define CONFIG_H

#include "Common.h"
#include <ace/Singleton.h>
#include "Define.h"

class ACE_Configuration_Heap;

class Config
{
    friend class ACE_Singleton<Config, ACE_Null_Mutex>;
    Config();
    public:
        ~Config();

        bool SetSource(const char *file);
        bool Reload();

        std::string GetStringDefault(const char * name, std::string def);
        bool GetBoolDefault(const char * name, const bool def);
        int32 GetIntDefault(const char * name, const int32 def);
        float GetFloatDefault(const char * name, const float def);

        std::string GetFilename() const { return mFilename; }

        ACE_Thread_Mutex mMtx;

    private:
        std::string mFilename;
        ACE_Configuration_Heap *mConf;
};

#define sConfig ACE_Singleton<Config, ACE_Null_Mutex>::instance()

#endif

