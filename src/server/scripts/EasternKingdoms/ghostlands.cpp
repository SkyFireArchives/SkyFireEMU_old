/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2006-2011 ScriptDev2 <http://www.scriptdev2.com/>
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

/* ScriptData
SDName: Ghostlands
SD%Complete: 100
SDComment: Quest support: 9692, 9212. Obtain Budd's Guise of Zul'aman. Vendor Rathis Tomber
SDCategory: Ghostlands
EndScriptData */

/* ContentData
npc_blood_knight_dawnstar
npc_budd_nedreck
npc_rathis_tomber
npc_ranger_lilatha
EndContentData */

#include "ScriptPCH.h"
#include "ScriptedEscortAI.h"

/*######
## npc_blood_knight_dawnstar
######*/

#define GOSSIP_H_BKD "Take Blood Knight Insignia"

class npc_blood_knight_dawnstar : public CreatureScript
{
public:
    npc_blood_knight_dawnstar() : CreatureScript("npc_blood_knight_dawnstar") { }

    bool OnGossipSelect(Player* pPlayer, Creature* /*pCreature*/, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_INFO_DEF+1)
        {
            ItemPosCountVec dest;
            uint8 msg = pPlayer->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, 24226, 1, false);
            if (msg == EQUIP_ERR_OK)
            {
                pPlayer->StoreNewItem(dest, 24226, 1, true);
                pPlayer->PlayerTalkClass->ClearMenus();
            }
        }
        return true;
    }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pPlayer->GetQuestStatus(9692) == QUEST_STATUS_INCOMPLETE && !pPlayer->HasItemCount(24226,1,true))
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_H_BKD, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1);

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());

        return true;
    }

};


/*######
## npc_budd_nedreck
######*/

#define GOSSIP_HBN "You gave the crew disguises?"

class npc_budd_nedreck : public CreatureScript
{
public:
    npc_budd_nedreck() : CreatureScript("npc_budd_nedreck") { }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_INFO_DEF)
        {
            pPlayer->CLOSE_GOSSIP_MENU();
            pCreature->CastSpell(pPlayer, 42540, false);
        }
        return true;
    }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pCreature->isQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        if (pPlayer->GetQuestStatus(11166) == QUEST_STATUS_INCOMPLETE)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HBN, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);

        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;
    }

};


/*######
## npc_rathis_tomber
######*/

class npc_rathis_tomber : public CreatureScript
{
public:
    npc_rathis_tomber() : CreatureScript("npc_rathis_tomber") { }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_TRADE)
            pPlayer->SEND_VENDORLIST(pCreature->GetGUID());
        return true;
    }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pCreature->isQuestGiver())
            pPlayer->PrepareQuestMenu(pCreature->GetGUID());

        if (pCreature->isVendor() && pPlayer->GetQuestRewardStatus(9152))
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_VENDOR, GOSSIP_TEXT_BROWSE_GOODS, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_TRADE);
            pPlayer->SEND_GOSSIP_MENU(8432, pCreature->GetGUID());
        }else
        pPlayer->SEND_GOSSIP_MENU(8431, pCreature->GetGUID());

        return true;
    }

};


/*######
## npc_ranger_lilatha
######*/

enum eEnums
{
    SAY_START           = -1000140,
    SAY_PROGRESS1       = -1000141,
    SAY_PROGRESS2       = -1000142,
    SAY_PROGRESS3       = -1000143,
    SAY_END1            = -1000144,
    SAY_END2            = -1000145,
    SAY_CAPTAIN_ANSWER      = -1000146,

    QUEST_ESCAPE_FROM_THE_CATACOMBS     = 9212,
    GO_CAGE             = 181152,
    NPC_CAPTAIN_HELIOS  = 16220,
    FACTION_SMOON_E     = 1603,
};

class npc_ranger_lilatha : public CreatureScript
{
public:
    npc_ranger_lilatha() : CreatureScript("npc_ranger_lilatha") { }

    struct npc_ranger_lilathaAI : public npc_escortAI
    {
        npc_ranger_lilathaAI(Creature *c) : npc_escortAI(c) {}

        void WaypointReached(uint32 i)
        {
            Player* pPlayer = GetPlayerForEscort();

            if (!pPlayer)
                return;

            switch(i)
            {
            case 0:
                {
                me->SetUInt32Value(UNIT_FIELD_BYTES_1, 0);
                if (GameObject* Cage = me->FindNearestGameObject(GO_CAGE, 20))
                    Cage->SetGoState(GO_STATE_ACTIVE);
                DoScriptText(SAY_START, me, pPlayer);
                break;
                }
            case 5:
                DoScriptText(SAY_PROGRESS1, me, pPlayer);
            case 11:
                DoScriptText(SAY_PROGRESS2, me, pPlayer);
                me->SetOrientation(4.762841f);
                break;
            case 18:
                {
                DoScriptText(SAY_PROGRESS3, me, pPlayer);
                Creature* Summ1 = me->SummonCreature(16342, 7627.083984f, -7532.538086f, 152.128616f, 1.082733f, TEMPSUMMON_DEAD_DESPAWN, 0);
                Creature* Summ2 = me->SummonCreature(16343, 7620.432129f, -7532.550293f, 152.454865f, 0.827478f, TEMPSUMMON_DEAD_DESPAWN, 0);
                if (Summ1 && Summ2)
                {
                    Summ1->Attack(me, true);
                    Summ2->Attack(pPlayer, true);
                }
                me->AI()->AttackStart(Summ1);
                break;
                }
            case 19: me->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING); break;
            case 25: me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING); break;
            case 30:
                if (pPlayer && pPlayer->GetTypeId() == TYPEID_PLAYER)
                    CAST_PLR(pPlayer)->GroupEventHappens(QUEST_ESCAPE_FROM_THE_CATACOMBS,me);
                break;
            case 32:
                me->SetOrientation(2.978281f);
                DoScriptText(SAY_END1, me, pPlayer);
                break;
            case 33:
                me->SetOrientation(5.858011f);
                DoScriptText(SAY_END2, me, pPlayer);
                Unit* CaptainHelios = me->FindNearestCreature(NPC_CAPTAIN_HELIOS, 50);
                if (CaptainHelios)
                DoScriptText(SAY_CAPTAIN_ANSWER, CaptainHelios, pPlayer);
                break;
            }
        }

        void Reset()
        {
            if (GameObject* Cage = me->FindNearestGameObject(GO_CAGE, 20))
                Cage->SetGoState(GO_STATE_READY);
        }
    };

    bool OnQuestAccept(Player* pPlayer, Creature* pCreature, Quest const* quest)
    {
        if (quest->GetQuestId() == QUEST_ESCAPE_FROM_THE_CATACOMBS)
        {
            pCreature->setFaction(113);

            if (npc_escortAI* pEscortAI = CAST_AI(npc_ranger_lilatha::npc_ranger_lilathaAI, pCreature->AI()))
                pEscortAI->Start(true, false, pPlayer->GetGUID());
        }
        return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_ranger_lilathaAI(pCreature);
    }

};
/*######
## npc_captive
######*/
 
enum eCaptive
{
    MOB1        =16208,
    MOB2        =16206,
    MOB3        =16209
};
 
#define GOSSIP_HELLO_CAPTIVE1   "<Use Renzithen's Restorative Draught on Enith!>"
#define GOSSIP_HELLO_CAPTIVE2   "<Use Renzithen's Restorative Draught on Varnis!>"
#define GOSSIP_HELLO_CAPTIVE3   "<Use Renzithen's Restorative Draught on Vedoran!>"
 
 
class npc_captive : public CreatureScript
{
public:
    npc_captive() : CreatureScript("npc_captive") { }
 
    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        
 
        if (pPlayer->GetQuestStatus(9164) == QUEST_STATUS_INCOMPLETE && pCreature->GetEntry() == MOB1)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_CAPTIVE1, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 1);
        
        
        if (pPlayer->GetQuestStatus(9164) == QUEST_STATUS_INCOMPLETE && pCreature->GetEntry() == MOB2)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_CAPTIVE2, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 2);
 
 
        if (pPlayer->GetQuestStatus(9164) == QUEST_STATUS_INCOMPLETE && pCreature->GetEntry() == MOB3)
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_HELLO_CAPTIVE3, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + 3);
 
        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
 
        return true;
    }
 
    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        
        if (uiAction == GOSSIP_ACTION_INFO_DEF + 1)
        {
            pPlayer->CLOSE_GOSSIP_MENU();
            pPlayer->KilledMonsterCredit(MOB1, 0);
            pCreature->SetStandState(UNIT_STAND_STATE_STAND);
            pCreature->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
            pCreature->GetMotionMaster()->MovePoint(0, 6640.259f, -6343.529f, 8.944f);
            pCreature->ForcedDespawn(5000);
 
        }       
 
        if (uiAction == GOSSIP_ACTION_INFO_DEF + 2)
        {
            pPlayer->CLOSE_GOSSIP_MENU();
            pPlayer->KilledMonsterCredit(MOB2, 0);
            pCreature->SetStandState(UNIT_STAND_STATE_STAND);
            pCreature->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
            pCreature->GetMotionMaster()->MovePoint(0, 6437.597f, -6618.529f, 107.436f);
            pCreature->ForcedDespawn(5000);
 
        }
 
        if (uiAction == GOSSIP_ACTION_INFO_DEF + 3)
        {
            pPlayer->CLOSE_GOSSIP_MENU();
            pPlayer->KilledMonsterCredit(MOB3, 0);
            pCreature->SetStandState(UNIT_STAND_STATE_STAND);
            pCreature->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
            pCreature->GetMotionMaster()->MovePoint(0, 6306.514f, -6363.729f, 78.024f);
            pCreature->ForcedDespawn(5000);
 
        }return true;
        
    }
};

void AddSC_ghostlands()
{
    new npc_blood_knight_dawnstar();
    new npc_budd_nedreck();
    new npc_rathis_tomber();
    new npc_ranger_lilatha();
    new npc_captive();
}
