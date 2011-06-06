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
SDName: Guild House Teleporter
SDAuthor: A Metaphysical Drama
SD%Complete: 90%
SDComment: //
SDCategory: Custom
EndScriptData */

#include "ScriptPCH.h"

#define TELEPORT_ID      1
#define TELEPORT_TEXT    "Teleportami!"
#define BUFF_ID          1
#define BUFF_TEXT        "Ho bisogno di Buff!"
#define GH_LT_80         "Solo i livelli 80 possono essere buffati da me"
#define GH_NO_GUILDHOUSE "La tua gilda non possiede una casa"
#define GH_NO_GUILD      "Non hai una gilda"

enum Buffs {
    FORTITUDE        = 69377,
    FORGOTTEN_KINGS  = 69378,
    GIFT_OF_THE_WILD = 69381
};

class npc_ghteleporter : public CreatureScript
{
public:
    npc_ghteleporter() : CreatureScript("npc_ghteleporter") { }

    bool OnGossipHello(Player *pPlayer, Creature *pCreature)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, TELEPORT_TEXT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + TELEPORT_ID);

        pPlayer->TalkedToCreature(pCreature->GetEntry(), pCreature->GetGUID());
        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_INFO_DEF + TELEPORT_ID)
        {
            if (pPlayer->GetGuildId() == 0)
            {
                pCreature->MonsterWhisper(GH_NO_GUILD, pPlayer->GetGUID());
                pPlayer->CLOSE_GOSSIP_MENU();
                return false;
            }

            QueryResult result = ExtraDatabase.PQuery("SELECT tele_x, tele_y, tele_z, map FROM guild_houses WHERE guildid = '%d'", pPlayer->GetGuildId());
            if (!result)
            {
                pCreature->MonsterWhisper(GH_NO_GUILDHOUSE, pPlayer->GetGUID());
                pPlayer->CLOSE_GOSSIP_MENU();
                return false;
            }

            float x, y, z, o;
            uint32 map;
            
            Field *fields = result->Fetch();
            x = fields[0].GetFloat();
            y = fields[1].GetFloat();
            z = fields[2].GetFloat();
            o = 0;
            map = fields[3].GetUInt32();

            pPlayer->SaveRecallPosition();
            pPlayer->TeleportTo(map, x, y, z, o);
            pPlayer->SaveToDB();
        }
        pPlayer->CLOSE_GOSSIP_MENU();
        return true;
    }
};

class npc_ghguard : public CreatureScript
{

public:
    npc_ghguard() : CreatureScript("npc_ghguard") { }

    struct npc_ghguardAI : public ScriptedAI
    {
        npc_ghguardAI(Creature *c) : ScriptedAI(c)
        {
            m_guild = 0;
            QueryResult result = ExtraDatabase.PQuery("SELECT guildid FROM guild_houses WHERE area = '%d'", me->GetAreaId());
            if (result)
            {
                Field *fields = result->Fetch();
                m_guild = fields[0].GetUInt32();
            }
        }

        uint32 m_guild;

        void Reset()
        {
            if (m_guild == 0)
                me->Kill(me);
        }

        void AttackStart(Unit* pWho)
        {
            if ((m_guild == 0) || (pWho->GetTypeId() != TYPEID_PLAYER) || (pWho->ToPlayer()->GetGuildId() == m_guild))
            {
                me->ClearInCombat();
                return;
            }

            me->Kill(pWho);
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_ghguardAI(pCreature);
    }
};

class npc_ghbuffmaster : public CreatureScript
{
public:
    npc_ghbuffmaster() : CreatureScript("npc_ghbuffmaster") { }

    bool OnGossipHello(Player *pPlayer, Creature *pCreature)
    {
        pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, BUFF_TEXT, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF + BUFF_ID);

        pPlayer->TalkedToCreature(pCreature->GetEntry(), pCreature->GetGUID());
        pPlayer->SEND_GOSSIP_MENU(pPlayer->GetGossipTextId(pCreature), pCreature->GetGUID());
        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        if (uiAction == GOSSIP_ACTION_INFO_DEF + BUFF_ID)
        {
            if (pPlayer->getLevel() < 80)
            {
                pCreature->MonsterWhisper(GH_LT_80, pPlayer->GetGUID());
                pPlayer->CLOSE_GOSSIP_MENU();
                return false;
            }

            pPlayer->CastSpell(pPlayer, FORTITUDE, true);
            pPlayer->CastSpell(pPlayer, GIFT_OF_THE_WILD, true);
            pPlayer->CastSpell(pPlayer, FORGOTTEN_KINGS, true);
        }
        pPlayer->CLOSE_GOSSIP_MENU();
        return true;
    }
};

void AddSC_npc_guildhouses()
{
    new npc_ghteleporter;
    new npc_ghguard;
    new npc_ghbuffmaster;
}

