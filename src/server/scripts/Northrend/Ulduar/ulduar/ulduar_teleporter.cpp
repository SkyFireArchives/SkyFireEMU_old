/*
 * Copyright (C) 2010 Shadowmourne Core <http://svn2.assembla.com/svn/Shadowmourne/>
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

#include "ScriptPCH.h"
#include "ulduar.h"

enum Locations
{
    BASISLAGER      =   200,
    EISENSTAU       =   201,
    SCHMIEDE        =   202,
    SCHROTTPLATZ    =   203,
    VORKAMMER       =   204,
    GANG            =   205,
    KONSERVATORIUM  =   206,
    IMAGINATION     =   207,
    WAHNSINN        =   208
};

class ulduar_teleporter : public GameObjectScript
{
public:
    ulduar_teleporter() : GameObjectScript("ulduar_teleporter") { }

    bool OnGossipSelect(Player* player, GameObject* /*go*/, uint32 sender, uint32 action)
    {
        player->PlayerTalkClass->ClearMenus();
        player->CLOSE_GOSSIP_MENU();

        if (sender != GOSSIP_SENDER_MAIN)
            return false;

        if (!player->getAttackers().empty())
            return false;

        switch(action)
        {
        case BASISLAGER: 
            player->TeleportTo(603, -706.122f, -92.6024f, 429.876f, 0);
            player->CLOSE_GOSSIP_MENU(); break;
        case EISENSTAU: 
            player->TeleportTo(603, 131.248f, -35.3802f, 409.804f, 0);
            player->CLOSE_GOSSIP_MENU(); break;
        case SCHMIEDE: 
            player->TeleportTo(603, 553.233f, -12.3247f, 409.679f, 0);
            player->CLOSE_GOSSIP_MENU(); break;
        case SCHROTTPLATZ: 
            player->TeleportTo(603, 926.292f, -11.4635f, 418.595f, 0);
            player->CLOSE_GOSSIP_MENU(); break;
        case VORKAMMER: 
            player->TeleportTo(603, 1498.09f, -24.246f, 420.967f, 0);
            player->CLOSE_GOSSIP_MENU(); break;
        case GANG:
            player->TeleportTo(603, 1859.45f, -24.1f, 448.9f, 0);
            player->CLOSE_GOSSIP_MENU(); break;
        case KONSERVATORIUM: 
            player->TeleportTo(603, 2086.27f, -24.3134f, 421.239f, 0);
            player->CLOSE_GOSSIP_MENU(); break;
        case IMAGINATION:
            player->TeleportTo(603, 2518.16f, 2569.03f, 412.299f, 0);
            player->CLOSE_GOSSIP_MENU(); break;
        case WAHNSINN: 
            player->TeleportTo(603, 1854.72f, -11.637f, 334.57f, 0);
            player->CLOSE_GOSSIP_MENU(); break;
        }
        return true;
    }

    bool OnGossipHello(Player* player, GameObject* go)
    {
        player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Basislager der Expidition", GOSSIP_SENDER_MAIN, BASISLAGER);
        if (InstanceScript* pInstance = go->GetInstanceScript())
        {
            if (pInstance->GetBossState(BOSS_LEVIATHAN) == FAIL || player->isGameMaster())
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Der Eisenstau", GOSSIP_SENDER_MAIN, EISENSTAU);
            if (pInstance->GetBossState(BOSS_LEVIATHAN) == DONE || player->isGameMaster())
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Die Kolossale Schmiede", GOSSIP_SENDER_MAIN, SCHMIEDE);
            if (pInstance->GetBossState(BOSS_XT002) == DONE || player->isGameMaster())
            {
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Der Schrottplatz", GOSSIP_SENDER_MAIN, SCHROTTPLATZ);
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Die Vorkammer von Ulduar", GOSSIP_SENDER_MAIN, VORKAMMER);
            }
            if(pInstance->GetBossState(BOSS_KOLOGARN) == DONE || player->isGameMaster())
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Der zerschmetternde Gang", GOSSIP_SENDER_MAIN, GANG);
            if(pInstance->GetBossState(BOSS_AURIAYA) == DONE || player->isGameMaster())
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Konservatorium des Lebens", GOSSIP_SENDER_MAIN, KONSERVATORIUM);
            if (pInstance->GetBossState(BOSS_MIMIRON) == FAIL || pInstance->GetBossState(BOSS_MIMIRON) == DONE || player->isGameMaster())
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Der Funke der Imagination", GOSSIP_SENDER_MAIN, IMAGINATION);
            if(pInstance->GetBossState(BOSS_VEZAX) == DONE || player->isGameMaster())
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Der Abstieg in den Wahnsinn", GOSSIP_SENDER_MAIN, WAHNSINN);
        }
        player->SEND_GOSSIP_MENU(go->GetGOInfo()->GetGossipMenuId(), go->GetGUID());
        return true;
    }
};

void AddSC_ulduar_teleporter()
{
    new ulduar_teleporter();
}
