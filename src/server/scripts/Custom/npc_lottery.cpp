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
SDName: BloodyWars Lottery
SDAuthor: PrinceCreed
SD%Complete: 100%
SDComment: //
SDCategory: Custom
EndScriptData */

#include "ScriptPCH.h"
#include <cstring>
#include "CharacterDatabaseCleaner.h"
#include "DatabaseEnv.h"
#include "ObjectMgr.h"

/*######
## npc_lotto
######*/

#define GOSSIP_BUY_TICKET           "Kaufen sie ein Ticket?"
#define TICKET_COST                 500000
#define EVENT_ACHERON_LOTTERIE           132

class npc_lotto : public CreatureScript
{
public:
    npc_lotto() : CreatureScript("npc_lotto") { }

    bool OnGossipHello(Player* pPlayer, Creature* pCreature)
    {
        if (pPlayer && !pPlayer->isGameMaster())
        {
            QueryResult result = CharacterDatabase.PQuery("SELECT id FROM lotto_tickets WHERE guid=%u", pPlayer->GetGUIDLow());
            if (result)
            {
                pPlayer->SEND_GOSSIP_MENU(100001, pCreature->GetGUID());
                return false;
            }

            pPlayer->PrepareGossipMenu(pCreature);
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, GOSSIP_BUY_TICKET, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
            pPlayer->SEND_GOSSIP_MENU(100000, pCreature->GetGUID());
        }
        return true;
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();
        
        if (!pPlayer->HasEnoughMoney(TICKET_COST))
            return false;
        
        switch(uiAction)
        {
            case GOSSIP_ACTION_INFO_DEF:
                pPlayer->ModifyMoney(-TICKET_COST);
                QueryResult result = CharacterDatabase.Query("SELECT MAX(id) FROM lotto_tickets");
                uint32 id = result->Fetch()->GetUInt32();
                CharacterDatabase.PExecute("INSERT INTO lotto_tickets (id,name,guid) VALUES (%u,'%s',%u);", id+1, pPlayer->GetName(), pPlayer->GetGUIDLow());
                char msg[500];
                sprintf(msg, "Viel Glueck, $N. Ihre Ticket Zahl lautet %i", id+1);
                pCreature->MonsterWhisper(msg, pPlayer->GetGUID());
                break;
        }
        pPlayer->PlayerTalkClass->CloseGossip();
        return true;
    }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_lottoAI (pCreature);
    }

    struct npc_lottoAI : public ScriptedAI
    {
        npc_lottoAI(Creature* pCreature) : ScriptedAI(pCreature) 
        {
            SayTimer = 1800*IN_MILLISECONDS;
        }
        
        uint32 SayTimer;

        void UpdateAI(const uint32 diff)
        {
            if (IsEventActive(EVENT_ACHERON_LOTTERIE))
            {
                if (me->IsVisible())
                {
                    me->SetVisible(false);
                    QueryResult result = CharacterDatabase.Query("SELECT MAX(id) FROM lotto_tickets");
                    uint32 maxTickets = result->Fetch()->GetUInt32();
                    if (maxTickets)
                    {
                        uint32 winner = urand(1, maxTickets);
                        uint32 reward = TICKET_COST / 2.0f * maxTickets;
                        result = CharacterDatabase.PQuery("SELECT guid FROM lotto_tickets WHERE id=%u;", winner);
                        uint32 winnerGuid = result->Fetch()->GetUInt32();
                        Player *pWinner = sObjectMgr->GetPlayerByLowGUID(winnerGuid);
                        SQLTransaction trans = CharacterDatabase.BeginTransaction();
                        MailDraft("Lotteriegewinn", "Herzlichen Glueckwunsch! Sie haben die Acheron WoW Lotterie Gewonnen!")
                            .AddMoney(reward)
                            .SendMailTo(trans, MailReceiver(pWinner, GUID_LOPART(winnerGuid)), MailSender(MAIL_NORMAL, 0, MAIL_STATIONERY_GM));
                        CharacterDatabase.CommitTransaction(trans);
                        
                        if (pWinner) 
                        {
                            char msg[500];
                            sprintf(msg, "Ihre Losnummer wurde %i extrahiert, und die Sieger %s! Der Preis: %i Gold. Die Naechste ziehung ist morgen um die gleiche Zeit.", winner, pWinner->GetName(), reward/10000);
                            sWorld->SendWorldText(LANG_EVENTMESSAGE, msg);
                        } else 
                        {
                            char msg[500];
                            sprintf(msg, "Losnummer wurde %i in der Menge des %i Goldes gewonnen! Die naechste Ziehung morgen!", winner, reward/10000);
                            sWorld->SendWorldText(LANG_EVENTMESSAGE, msg);
                        }

                        CharacterDatabase.PExecute("INSERT INTO lotto_extractions (winner,guid) SELECT name,guid FROM lotto_tickets WHERE id=%u;", winner);
                        CharacterDatabase.PExecute("DELETE FROM lotto_tickets;");
                    }
                }
            }
            else
            {
                if (!me->IsVisible())
                    me->SetVisible(true);
                    
                if (SayTimer <= diff)
                {
                    me->MonsterSay("Acheron - WoW Lottery Tickets! Mit nur 50 Gold, Millionaer zu werden!", 0, NULL);
                    SayTimer = 1800*IN_MILLISECONDS;
                }
                else SayTimer -= diff;
            }
        }
    };

};


void AddSC_npc_lottery()
{
    new npc_lotto();
}
