/*
 * Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

#include "ScriptPCH.h"
#include "ScriptMgr.h"
#include "SpellMgr.h"
#include "World.h"

/*########
# npc_deffiant_troll
#########*/

enum NSCSDeffiantTroll
{
    QUEST_GOOD_HELP_IS_HARD_TO_FIND    = 14069
    DEFFIANT_KILL_CREDIT               = 34830
    SPELL_LIGHTNING_VISUAL             = 56328
};

class npc_deffiant_troll : public CreatureScript
{
public:
    npc_deffiant_troll() : CreatureScript("npc_deffiant_troll") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
            if (pPlayer->GetQuestStatus(GOOD_HELP_IS_HARD_TO_FIND) == QUEST_STATUS_INCOMPLETE)
            {
                pCreature->CastSpell(pPlayer, 56328, true);
                pPlayer->KilledMonsterCredit(DEFFIANT_KILL_CREDIT, 0);
                pTarget->ForcedDespawn();
            }
    return;
    }
};



void AddSC_npc_spell_click_spells()
{
    new npc_deffiant_troll;
}
