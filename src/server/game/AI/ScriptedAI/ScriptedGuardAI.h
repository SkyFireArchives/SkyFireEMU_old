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

#ifndef SC_GUARDAI_H
#define SC_GUARDAI_H

#define GENERIC_CREATURE_COOLDOWN 5000

struct guardAI : public ScriptedAI
{
    public:
        explicit guardAI(Creature* pCreature);
        ~guardAI() {}

    uint32 GlobalCooldown;                                  //This variable acts like the global cooldown that players have (1.5 seconds)
    uint32 BuffTimer;                                       //This variable keeps track of buffs

    void Reset();

    void EnterCombat(Unit * /*who*/);

    void JustDied(Unit *Killer);

    void UpdateAI(const uint32 diff);

    //common used for guards in main cities
    void DoReplyToTextEmote(uint32 em);
};

struct guardAI_orgrimmar : public guardAI
{
    guardAI_orgrimmar(Creature *c) : guardAI(c) {}

    void ReceiveEmote(Player *player, uint32 text_emote);
};

struct guardAI_stormwind : public guardAI
{
    guardAI_stormwind(Creature *c) : guardAI(c) {}

    void ReceiveEmote(Player *player, uint32 text_emote);
};
#endif

