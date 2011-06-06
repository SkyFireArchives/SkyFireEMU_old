#include "ScriptPCH.h"
#include <cstring>
#include "CharacterDatabaseCleaner.h"
#include "DatabaseEnv.h"
#include "ObjectMgr.h"

enum PetItems
{
    RAR_GRIPHON = 49662,
    RAR_PINGUIN = 41133,
    RAR_WILLY    = 32617,
    RAR_AFFE    = 32588,
};

enum MountItems
{

};

enum BerufsmatsItems
{
    GEFRORENE_KUGEL = 43102,
};

class voterewarder : public CreatureScript
{
    public:

        voterewarder()
            : CreatureScript("voterewarder")
        {
        }

        void RewardItem(Player* pPlayer, Creature* pCreature, int item , int count, int cost)
        {
            QueryResult result;
            result = CharacterDatabase.PQuery("SELECT points FROM login.voting_points WHERE id = '%u'", pPlayer->GetSession()->GetAccountId());
            char str[200];
            if (!result) // check
            {
                sprintf(str,"Datenbank nicht gefunden, bitte kontaktieren sie einen Gamemaster");
                pPlayer->PlayerTalkClass->ClearMenus();
                OnGossipHello(pPlayer, pCreature);
                pCreature->MonsterSay(str, LANG_UNIVERSAL, pPlayer->GetGUID());
                return;
            }
            Field *fields = result->Fetch();
            uint32 points = fields[0].GetUInt32();

            if (item == 0)
            {
                sprintf(str,"Du hast %u vote Punkte!", points);
                pPlayer->MonsterWhisper(str,pPlayer->GetGUID(),true);
            }
            else
            {
                if (points < cost)
                {
                     sprintf(str,"Du hast nicht genug Votepunkte fur dieses Item");
                     pPlayer->MonsterWhisper(str,pPlayer->GetGUID(),true);
                }
                else
                {
                    if (pPlayer->AddItem(item, count))
                    {
                        CharacterDatabase.PQuery("Update login.voting_points Set points = points - '%u' WHERE id = '%u'", cost, pPlayer->GetSession()->GetAccountId());
                        sprintf(str,"Sie haben ein Item erhalten!!!");
                        pPlayer->MonsterWhisper(str,pPlayer->GetGUID(),true);
                    }
                    else
                    {
                        sprintf(str,"Deine Tasche ist voll ich kann dir dieses Item nicht geben!");
                        pPlayer->MonsterWhisper(str,pPlayer->GetGUID(),true);
                    }

                }
            }
            pPlayer->PlayerTalkClass->ClearMenus();
            OnGossipHello(pPlayer, pCreature);
        }

        bool OnGossipHello(Player* pPlayer, Creature* pCreature)
        {
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Wie viele Vote Punkte hast du?", GOSSIP_SENDER_MAIN, 1000);
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Tiere", GOSSIP_SENDER_MAIN, 2000);
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Mounts", GOSSIP_SENDER_MAIN, 3000);
            pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Berufs Mats", GOSSIP_SENDER_MAIN, 4000);
            //pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Other Stuff", GOSSIP_SENDER_MAIN, 5000);
            

            pPlayer->PlayerTalkClass->SendGossipMenu(907, pCreature->GetGUID());

            return true;
        }

        bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 /*uiSender*/, uint32 uiAction)
        {
            pPlayer->PlayerTalkClass->ClearMenus();
            
            switch (uiAction)
            {
            case 1000:
                RewardItem(pPlayer, pCreature, 0, 0, 0);
                break;
            case 2000:
                pPlayer->PlayerTalkClass->ClearMenus();
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Greifenkueken  50 VP", GOSSIP_SENDER_MAIN, 2001);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Ungeschluepfter Herr Froestelich - 50 VP", GOSSIP_SENDER_MAIN, 2002);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Schlafender Willy - 50 VP", GOSSIP_SENDER_MAIN, 2003);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Gluecksbanane - 50 VP", GOSSIP_SENDER_MAIN, 2004);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Zurueck", GOSSIP_SENDER_MAIN, 9999);
                pPlayer->PlayerTalkClass->SendGossipMenu(907, pCreature->GetGUID());
                return true;
                break;
            case 2001:
                RewardItem(pPlayer, pCreature,RAR_GRIPHON,1,50); 
                break;
            case 2002:
                RewardItem(pPlayer, pCreature,RAR_PINGUIN,1,50);
                break;
            case 2003:
                RewardItem(pPlayer, pCreature,RAR_WILLY,1,50);
                break;
            case 2004:
                RewardItem(pPlayer, pCreature,RAR_AFFE,1,50);
                break;
            case 3000:
                pPlayer->PlayerTalkClass->ClearMenus();
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Mounts sind zurzeit nicht vorhanden", GOSSIP_SENDER_MAIN, 3001);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Zurueck", GOSSIP_SENDER_MAIN, 9999);
                pPlayer->PlayerTalkClass->SendGossipMenu(907, pCreature->GetGUID());
                return true;
                break;
            case 4000:
                pPlayer->PlayerTalkClass->ClearMenus();
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Gefrorene Kugel - 40 VP", GOSSIP_SENDER_MAIN, 4001);
                pPlayer->ADD_GOSSIP_ITEM(GOSSIP_ICON_DOT, "Zurueck", GOSSIP_SENDER_MAIN, 9999);
                pPlayer->PlayerTalkClass->SendGossipMenu(907, pCreature->GetGUID());
                return true;
                break;
            case 4001:
                RewardItem(pPlayer, pCreature, GEFRORENE_KUGEL,1,50);
                break;
            case 9999:
                pPlayer->PlayerTalkClass->ClearMenus();
                OnGossipHello(pPlayer, pCreature);
                break;
            }


            return true;
        }

};

void AddSC_voterewarder()
{
    new voterewarder();
}