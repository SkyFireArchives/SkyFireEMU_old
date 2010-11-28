/*
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
 *
 * Copyright (C) 2008-2010 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2010 CactusEMU <http://www.cactusemu.org/>
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

#include "zlib.h"
#include "AddonHandler.h"
#include "DatabaseEnv.h"
#include "Opcodes.h"
#include "Log.h"

AddonHandler::AddonHandler()
{
}

AddonHandler::~AddonHandler()
{
}

bool AddonHandler::BuildAddonPacket(WorldPacket *Source, WorldPacket *Target)
{
    WorldPacket data(SMSG_ADDON_INFO);
	data << uint8(0x0C);
	data << uint8(0xC7);
	data << uint8(0x34);
	data << uint8(0xC6);
	for(int i = 0; i < 6; i++)
		data << uint8(0x00);
	data << uint8(0x02);
	data << uint8(0x02);
    return true;
}

/* Code use in 1.10.2 when client not ignore ban state sended for addons. Saved for reference if client switch to use server ban state information
void AddonHandler::BuildAddonPacket(WorldPacket* Source, WorldPacket* Target, uint32 Packetoffset)
{
    ByteBuffer AddOnPacked;
    uLongf AddonRealSize;
    uint32 CurrentPosition;
    uint32 TempValue;

    *Source >> TempValue;                                   //get real size of the packed structure

    AddonRealSize = TempValue;                              //temp value becouse ZLIB only excepts uLongf

    CurrentPosition = Source->rpos();                       //get the position of the pointer in the structure

    AddOnPacked.resize(AddonRealSize);                      //resize target for zlib action

    if (!uncompress((uint8*)AddOnPacked.contents(), &AddonRealSize, (uint8*)(*Source).contents() + CurrentPosition, (*Source).size() - CurrentPosition)!= Z_OK)
    {
        bool* AddonAllowed = new bool;                      //handle addon check and enable-ing

        uint32 Unknown1;
        uint8 Unknown0;

        AddOnPacked >> Unknown0;
        AddOnPacked >> Unknown1;

        Target->Initialize(SMSG_ADDON_INFO);

        uint32 i = 5;                                       //offset for addon extraction
        while(i != AddOnPacked.size())
        {
            std::string AddonNames;
            AddOns* Addonstr = new AddOns;
            uint8 unk6;
            uint64 CRCCHECK;
            AddOnPacked >> AddonNames >> CRCCHECK >> unk6;

            //sLog.outDebug("ADDON:    Name:%s CRC:%x Unknown:%x",AddonNames.c_str(), CRCCHECK,unk6);

            Addonstr->Name = AddonNames;
            Addonstr->CRC = CRCCHECK;

            //if not allowed but unknown added to list
            if (GetAddonStatus(Addonstr, AddonAllowed))     // If addon is new
            {
                Addonstr->Enabled = m_Addon_Default;        // by default new addons are set from Config file
                *AddonAllowed = m_Addon_Default;            // Set addon allowed on default value
                _AddAddon(Addonstr);
                sLog.outDetail("Found new Addon, Name:%s CRC:%x Unknown:%x",AddonNames.c_str(), CRCCHECK, unk6);
            }

            if (CRCCHECK == 0x4C1C776D01LL)                 //If addon is Standard addon CRC
            {
                                                            //value's standard Addons
                *Target << uint8(0) << uint8(2) << uint8(1) << uint8(0) << uint32(0);
            }
            else if (*AddonAllowed)                         //if addon is Custom addons
                                                            //value's enable addon
                *Target << uint8(0x00) << uint8(0x01) << uint8(0x00) << uint8(0x01);
            else
                                                            //value's disable addom
                *Target << uint8(0x00) << uint8(0x0) << uint8(0x00) << uint8(0x0);

            i += AddonNames.size() + 10;
        }
        *Target << uint8(0x0);

        //delete mem allocation
        delete AddonAllowed;
    }
    else
    {
        //handle uncompress error
    }
}
*/

