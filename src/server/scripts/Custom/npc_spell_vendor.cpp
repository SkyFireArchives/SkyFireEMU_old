/*
 * Copyright (C) 2011 Acheron WoW <http://www.acheron-wow.de>
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

/* ScriptData
SDName: NPC_Vendor
SD%Complete: 95%
SDComment: 
SDCategory: NPCs
EndScriptData */

/*
Umlaute Fix
ä = \303\244
ü = \303\274
ö = \303\266
ß = \303\237
*/

#include "ScriptPCH.h"

class mob_spell_trainer : public CreatureScript
{
public:
    mob_spell_trainer() : CreatureScript("mob_spell_trainer") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_spell_trainerAI (creature);
    }

    bool OnGossipSelect(Player* pPlayer, Creature* creature, uint32 uiSender, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();

        switch(uiAction)
        {
        case 1000:
            pPlayer->resetTalents();
            pPlayer->SetFreeTalentPoints(41);
            pPlayer->CLOSE_GOSSIP_MENU();
            break;
        }
        return true;
    }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        if (player->isInCombat()) 
        {
			player->CLOSE_GOSSIP_MENU();
			creature->MonsterWhisper("Du bist im Kampf!", player->GetGUID());
			return true;
        }
        if ((player->getClass() == CLASS_DEATH_KNIGHT))
            player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Gib mir meine Talentpunkte", GOSSIP_SENDER_MAIN, 1000);
           
        player->SEND_GOSSIP_MENU(30000, creature->GetGUID());
        return true;
    }

    struct mob_spell_trainerAI : public ScriptedAI
    {
        mob_spell_trainerAI(Creature *creature) : ScriptedAI(creature)
        {
        }
	    
        void Reset(){}
        void UpdateAI(const uint32 diff){}
    };
};

void AddSC_mob_spell_trainer()
{
    new mob_spell_trainer();
}
