/* ScriptData
SDName:
SDAuthor:
SDComment:
SDCategory:
EndScriptData */

#include "ScriptPCH.h"

enum Maps
{
	MAP_SHATTRATH	= 530,
	MAP_DALARAN		= 571,
	MAP_CRUSADE		= 530,
	MAP_KALIMDOR	= 1,
	MAP_KONIGREICH	= 0
};

class npc_teleporter : public CreatureScript
{
public:
    npc_teleporter() : CreatureScript("npc_teleporter") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_teleporterAI (pCreature);
    }

	bool OnGossipSelect(Player* pPlayer, Creature* creature, uint32 uiSender, uint32 uiAction)
    {
        pPlayer->PlayerTalkClass->ClearMenus();

        switch(uiAction)
        {
			case 1000:// Shattrath	     //Map          // X    // Y      //Z    // O
				pPlayer->TeleportTo(MAP_SHATTRATH, -1838.16f, 5301.79f, -12.428f, 5,9517);
				//pPlayer->CastSpell(pPlayer, SPELL_TELEPORT, false);
				pPlayer->CLOSE_GOSSIP_MENU();
				break;
			case 1001:// Dalaran       //Map        // X    // Y      //Z    // O
				pPlayer->TeleportTo(MAP_DALARAN, 5804.15f, 624.771f, 647.767f, 1.64f);
				//pPlayer->CastSpell(pPlayer, SPELL_TELEPORT, false);
				pPlayer->CLOSE_GOSSIP_MENU();
				break;
			case 1002:// Stormwind       //Map       // X    // Y      //Z    // O
				pPlayer->TeleportTo(MAP_KONIGREICH, -8833.38f, 628.628f, 94.0066f, 1.06535f);
				//pPlayer->CastSpell(pPlayer, SPELL_TELEPORT, false);
				pPlayer->CLOSE_GOSSIP_MENU();
				break;
			case 1003:// Eisenschmiede   //Map            // X    // Y      //Z    // O
				pPlayer->TeleportTo(MAP_KONIGREICH, -4918.88f, -940.406f, 501.564f, 5.42347f);
				//pPlayer->CastSpell(pPlayer, SPELL_TELEPORT, false);
				pPlayer->CLOSE_GOSSIP_MENU();
				break;
			case 1004:// Darnassus    //Map            // X    // Y      //Z    // O
				pPlayer->TeleportTo(MAP_KALIMDOR, 9949.56f, 2284.21f, 1341.4f, 1.59587f);
				//pPlayer->CastSpell(pPlayer, SPELL_TELEPORT, false);
				pPlayer->CLOSE_GOSSIP_MENU();
				break;
			case 1005:// Exodar       //Map            // X    // Y      //Z    // O
				pPlayer->TeleportTo(MAP_CRUSADE, -3965.7f, -11653.6f, -138.844f, 0.852154f);
				//pPlayer->CastSpell(pPlayer, SPELL_TELEPORT, false);
				pPlayer->CLOSE_GOSSIP_MENU();
				break;
			case 1006:// Orgrimmar    //Map            // X    // Y      //Z    // O
				pPlayer->TeleportTo(MAP_KALIMDOR, 1629.36f, -4373.39f, 31.2564f, 3.54839f);
				//pPlayer->CastSpell(pPlayer, SPELL_TELEPORT, false);
				pPlayer->CLOSE_GOSSIP_MENU();
				break;
			case 1007:// Donnerfels    //Map            // X    // Y      //Z    // O
				pPlayer->TeleportTo(MAP_KALIMDOR, -1277.37f, 124.804f, 131.287f, 5.22274f);
				//pPlayer->CastSpell(pPlayer, SPELL_TELEPORT, false);
				pPlayer->CLOSE_GOSSIP_MENU();
				break;
			case 1008:// Silbermond    //Map            // X    // Y      //Z    // O
				pPlayer->TeleportTo(MAP_CRUSADE, 9487.69f, -7279.2f, 14.2866f, 6.16478f);
				//pPlayer->CastSpell(pPlayer, SPELL_TELEPORT, false);
				pPlayer->CLOSE_GOSSIP_MENU();
				break;
			case 1009:// Unterstadt    //Map            // X    // Y      //Z    // O
				pPlayer->TeleportTo(MAP_KONIGREICH, 1584.07f, 241.987f, -52.1534f, 0.049647f);
				//pPlayer->CastSpell(pPlayer, SPELL_TELEPORT, false);
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

		if(player->getLevel() > 69)
           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Bitte Porte mich nach Shattrath", GOSSIP_SENDER_MAIN, 1000);

		if(player->getLevel() > 79)
           player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Bitte Porte mich nach Dalaran", GOSSIP_SENDER_MAIN, 1001);

		if (player->GetTeam() == ALLIANCE)
		{
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Bitte Porte mich nach Stormwind", GOSSIP_SENDER_MAIN, 1002);
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Bitte Porte mich nach Eisenschmiede", GOSSIP_SENDER_MAIN, 1003);
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Bitte Porte mich nach Darnassus", GOSSIP_SENDER_MAIN, 1004);
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Bitte Porte mich nach Exodar", GOSSIP_SENDER_MAIN, 1005);
		}
		else // Horde
		{
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Bitte Porte mich nach Orgrimmar", GOSSIP_SENDER_MAIN, 1006);
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Bitte Porte mich nach Donnerfels", GOSSIP_SENDER_MAIN, 1007);
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Bitte Porte mich nach Silbermond", GOSSIP_SENDER_MAIN, 1008);
			player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, "Bitte Porte mich nach Unterstadt", GOSSIP_SENDER_MAIN, 1009);
		}

        player->SEND_GOSSIP_MENU(30000, creature->GetGUID());
        return true;
    }

    struct npc_teleporterAI : public ScriptedAI
    {
        npc_teleporterAI(Creature *pCreature) : ScriptedAI(pCreature){}

        void Reset(){}
        void EnterCombat(Unit* /*who*/){}
        void KilledUnit(Unit* victim){}
        void JustDied(Unit* /*killer*/){}

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;
        }
    };
};

void AddSC_teleporter()
{
    new npc_teleporter;
}

