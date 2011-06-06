/*
 * Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
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
SDName: BloodyWars - La Zingara
SDAuthor: PrinceCreed - Nymeria
SD%Complete: 100%
SDComment: //
SDCategory: Custom
EndScriptData */

#include "ScriptPCH.h"

/*######
## npc_zingara
######*/

#define GOSSIP_SPAWN_CHESTS             "Spawna le casse"

const Position ChestPos[10] =
{
    {5825.20f,760.12f,640.34f,0},
    {5825.20f,758.12f,640.40f,0},
    {5825.20f,756.12f,640.48f,0},
    {5825.20f,754.12f,640.58f,0},
    {5825.20f,752.12f,640.68f,0},
    {5825.20f,750.12f,640.78f,0},
    {5825.20f,748.12f,640.88f,0},
    {5825.20f,746.12f,640.98f,0},
    {5825.20f,744.12f,641.10f,0},
    {5825.20f,742.12f,641.18f,0}
};

class npc_zingara : public CreatureScript
{
public:
    npc_zingara() : CreatureScript("npc_zingara") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pPlayer && pPlayer->isGameMaster())
        {
            pPlayer->PrepareGossipMenu(pCreature);
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_SPAWN_CHESTS, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            pPlayer->SEND_GOSSIP_MENU(1, pCreature->GetGUID());
        }
        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
                
        switch(uiAction)
        {
            case GOSSIP_ACTION_INFO_DEF:
                if (pPlayer)
                    pPlayer->CLOSE_GOSSIP_MENU();
                uint32 chest = 1000000;
                QueryResult result = WorldDatabase.Query("SELECT entry FROM `item_template` WHERE entry > 1000000 AND entry < 10000011 ORDER BY RAND();");
                do
                {
                    ++chest;
                    Field *fields = result->Fetch();
                    uint32 card = fields[0].GetUInt32();

                    WorldDatabase.PExecute("DELETE FROM `gameobject_loot_template` WHERE entry = %u", chest);
                    WorldDatabase.PExecute("INSERT INTO `gameobject_loot_template` (`entry`,`item`,`ChanceOrQuestChance`,`lootmode`,`groupid`,`mincountOrRef`,`maxcount`) VALUES (%u,%u,%u,%u,%u,%u,%u);",chest,card,100,1,0,1,1);
                }
                while (result->NextRow());            
                // reload gameobject_loot_template
                LoadLootTemplates_Gameobject();
                LootTemplates_Gameobject.CheckLootRefs();
                // spawn chests
                for (uint32 i = 1000001; i <= chest; i++)
                {
                    uint32 Num = i - 1000001;
                    pCreature->SummonGameObject(i, ChestPos[Num].GetPositionX(),ChestPos[Num].GetPositionY(),ChestPos[Num].GetPositionZ(),M_PI,0,0,0,0,604800);
                }
                break;
        }
        return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_zingaraAI (pCreature);
    }

    struct npc_zingaraAI : public ScriptedAI
    {
        npc_zingaraAI(Creature* pCreature) : ScriptedAI(pCreature) 
        {
            me->SetVisible(false);
        }
    };

};

void AddSC_npc_zingara()
{
    new npc_zingara;
}

