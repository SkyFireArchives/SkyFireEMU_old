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

#ifndef TRINITYCORE_WORLDPACKET_H
#define TRINITYCORE_WORLDPACKET_H

#include "Common.h"
#include "ByteBuffer.h"
#include "Opcodes.h"

class WorldPacket : public ByteBuffer
{
    public:
                                                            // just container for later use
        WorldPacket()                                       : ByteBuffer(0), m_opcode(0), m_opcodeEnum(MSG_OPCODE_UNKNOWN)
        {
        }
        explicit WorldPacket(Opcodes enumVal, size_t res=200) : ByteBuffer(res)
        {
            SetOpcode(enumVal);
        }
        explicit WorldPacket(uint32 opcode, size_t res=200) : ByteBuffer(res)
        {
            SetOpcode(opcode);
        }
                                                            // copy constructor
        WorldPacket(const WorldPacket &packet)              : ByteBuffer(packet), m_opcode(packet.m_opcode), m_opcodeEnum(packet.m_opcodeEnum)
        {
        }

        void Initialize(Opcodes enumVal, size_t newres=200)
        {
            clear();
            _storage.reserve(newres);
            SetOpcode(enumVal);
        }
        void Initialize(uint32 opcode, size_t newres=200)
        {
            clear();
            _storage.reserve(newres);
            SetOpcode(opcode);
        }

        Opcodes GetOpcodeEnum() const { return m_opcodeEnum; }
        uint32 GetOpcode() const { return m_opcode; }
        inline void SetOpcode(uint32 opcode) { m_opcode = opcode; m_opcodeEnum = LookupOpcodeEnum(opcode); }
        inline void SetOpcode(Opcodes enumVal) { m_opcode = LookupOpcodeNumber(enumVal); m_opcodeEnum = enumVal; }

    protected:

        uint32 m_opcode;
        Opcodes m_opcodeEnum;
};
#endif
