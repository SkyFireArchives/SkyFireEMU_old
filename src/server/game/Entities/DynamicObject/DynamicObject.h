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

#ifndef TRINITYCORE_DYNAMICOBJECT_H
#define TRINITYCORE_DYNAMICOBJECT_H

#include "Object.h"

class Unit;
class Aura;
struct SpellEntry;

class DynamicObject : public WorldObject, public GridObject<DynamicObject>
{
    public:
        explicit DynamicObject();
        ~DynamicObject();

        void AddToWorld();
        void RemoveFromWorld();

        bool Create(uint32 guidlow, Unit *caster, uint32 spellId, const Position &pos, float radius, bool active);
        void Update(uint32 p_time);
        void Remove();
        void SetDuration(int32 newDuration);
        int32 GetDuration() const;
        void Delay(int32 delaytime);
        void SetAura(Aura * aura);
        void RemoveAura();
        void SetCasterViewpoint();
        void RemoveCasterViewpoint();
        Unit * GetCaster() const { return m_caster; }
        void BindToCaster();
        void UnbindFromCaster();
        uint32 GetSpellId() const {  return GetUInt32Value(DYNAMICOBJECT_SPELLID); }
        uint64 GetCasterGUID() const { return GetUInt64Value(DYNAMICOBJECT_CASTER); }
        float GetRadius() const { return GetFloatValue(DYNAMICOBJECT_RADIUS); }
        bool isVisibleForInState(Player const* u, bool inVisibleList) const;

        void Say(int32 textId, uint32 language, uint64 TargetGuid) { MonsterSay(textId,language,TargetGuid); }
        void Yell(int32 textId, uint32 language, uint64 TargetGuid) { MonsterYell(textId,language,TargetGuid); }
        void TextEmote(int32 textId, uint64 TargetGuid) { MonsterTextEmote(textId,TargetGuid); }
        void Whisper(int32 textId,uint64 receiver) { MonsterWhisper(textId,receiver); }
        void YellToZone(int32 textId, uint32 language, uint64 TargetGuid) { MonsterYellToZone(textId,language,TargetGuid); }

    protected:
        int32 m_duration; // for non-aura dynobjects
        Aura * m_aura;
        Unit * m_caster;
        bool m_isViewpoint;
};
#endif
