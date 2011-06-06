/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * Rewritten by LordPsyan <http://www.l33t-net.org/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: professionnpc
SD%Complete: 100
SDComment: Profession Master
SDCategory: NPC
EndScriptData */

#include "ScriptPCH.h"
#include "Config.h"

class professionnpc : public CreatureScript
{
public:
    professionnpc() : CreatureScript("professionnpc") {}


bool OnGossipHello(Player* pPlayer, Creature* pCreature)
{
    if(sConfig->GetBoolDefault("ProfessionNPC.OnlyGMs", false)) // If ProfessionNPC.OnlyGMs is enabled in trinitycore.conf
		if (pPlayer->GetSession()->GetSecurity() == SEC_PLAYER)
		{
			pCreature->MonsterWhisper("Sorry, I can only trade to game masters.", pPlayer->GetGUID());
			return true;
		}

	bool EnableProfessions = sConfig->GetBoolDefault("ProfessionNPC.EnableProfessions", true);
	bool EnableSecondarySkills = sConfig->GetBoolDefault("ProfessionNPC.EnableSecondarySkills", true);

    if (pPlayer->GetTeam() == ALLIANCE)
	{
	    if(EnableProfessions)
		    pPlayer->ADD_GOSSIP_ITEM( 7, "Professions ->"        , GOSSIP_SENDER_MAIN, 1000);
	    if(EnableSecondarySkills)
		    pPlayer->ADD_GOSSIP_ITEM( 7, "Secondary Skills ->"   , GOSSIP_SENDER_MAIN, 2000);
	} 
    else 
    {
	    if(EnableProfessions)
		    pPlayer->ADD_GOSSIP_ITEM( 7, "Professions ->"        , GOSSIP_SENDER_MAIN, 1000);
	    if(EnableSecondarySkills)
		    pPlayer->ADD_GOSSIP_ITEM( 7, "Secondary Skills ->"   , GOSSIP_SENDER_MAIN, 2000);
	}

    pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,pCreature->GetGUID());
    return true;
}

void SendDefaultMenu(Player* pPlayer, Creature* pCreature, uint32 uiAction)
{
    if (pPlayer->isInCombat())
    {
        pPlayer->CLOSE_GOSSIP_MENU();
        pCreature->MonsterSay("You are in combat!", LANG_UNIVERSAL, NULL);
	    return;
    }

	bool EnableProfessions = sConfig->GetBoolDefault("ProfessionNPC.EnableProfessions", true);
	bool EnableSecondarySkills = sConfig->GetBoolDefault("ProfessionNPC.EnableSecondarySkills", true);

    if (pPlayer->GetMoney() < (sConfig->GetFloatDefault("SkillGoldCost",0)))
    {
        pPlayer->CLOSE_GOSSIP_MENU();
        pCreature->MonsterWhisper("You don't have enough money.", pPlayer->GetGUID());
	    return;
    }

    switch(uiAction)
    {
        case 1000: //Profession
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Alchemy."              , GOSSIP_SENDER_MAIN, 1001);
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Blacksmithing."        , GOSSIP_SENDER_MAIN, 1002);
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Enchanting."           , GOSSIP_SENDER_MAIN, 1003);
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Engineering."          , GOSSIP_SENDER_MAIN, 1004);
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Herbalism."            , GOSSIP_SENDER_MAIN, 1005);
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Inscription."          , GOSSIP_SENDER_MAIN, 1006);
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Jewelcrafting."        , GOSSIP_SENDER_MAIN, 1007);
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Leatherworking."       , GOSSIP_SENDER_MAIN, 1008);
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Mining."               , GOSSIP_SENDER_MAIN, 1009);
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Skinning."             , GOSSIP_SENDER_MAIN, 1010);
            pPlayer->ADD_GOSSIP_ITEM( 5, "10 points in Tailoring."            , GOSSIP_SENDER_MAIN, 1011);
            pPlayer->ADD_GOSSIP_ITEM( 7, "<- Main Menu"          , GOSSIP_SENDER_MAIN, 3000);   
	        pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,pCreature->GetGUID());
            break;
        case 2000: //Secondary Skills
            pPlayer->ADD_GOSSIP_ITEM( 5, "Cooking."              , GOSSIP_SENDER_MAIN, 2001);
            pPlayer->ADD_GOSSIP_ITEM( 5, "First Aid."            , GOSSIP_SENDER_MAIN, 2002);
            pPlayer->ADD_GOSSIP_ITEM( 5, "Fishing."              , GOSSIP_SENDER_MAIN, 2003);
            pPlayer->ADD_GOSSIP_ITEM( 7, "<- Main Menu"          , GOSSIP_SENDER_MAIN, 3000);
	        pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,pCreature->GetGUID());
            break;
        case 3000:
            if (pPlayer->GetTeam() == ALLIANCE)
	        {
	            if(EnableProfessions)
		            pPlayer->ADD_GOSSIP_ITEM( 7, "Professions ->"        , GOSSIP_SENDER_MAIN, 1000);
	            if(EnableSecondarySkills)
		            pPlayer->ADD_GOSSIP_ITEM( 7, "Secondary Skills ->"   , GOSSIP_SENDER_MAIN, 2000);
	        }
	        else // Main Menu for Horde
	        {
	            if(EnableProfessions)
		            pPlayer->ADD_GOSSIP_ITEM( 7, "Professions ->"        , GOSSIP_SENDER_MAIN, 1000);
	            if(EnableSecondarySkills)
		            pPlayer->ADD_GOSSIP_ITEM( 7, "Secondary Skills ->"   , GOSSIP_SENDER_MAIN, 2000);
	        }
	        pPlayer->SEND_GOSSIP_MENU(DEFAULT_GOSSIP_MESSAGE,pCreature->GetGUID());
            break;
        case 1001: // Alchemy
	        if(!pPlayer->UpdateSkill(171,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(171,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 1002: // Blacksmithing
	        if(!pPlayer->UpdateSkill(164,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
            if(pPlayer->GetSkillValue(164) >= 75)
            {
	            pPlayer->UpdateSkill(164,(sConfig->GetFloatDefault("SkillPoints",0)));
	            pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	            pPlayer->CLOSE_GOSSIP_MENU();
            }
            break;
        case 1003: // Enchanting
	        if(!pPlayer->UpdateSkill(333,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(333,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 1004: // Engineering
	        if(!pPlayer->UpdateSkill(202,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(202,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 1005: // Herbalism
	        if(!pPlayer->UpdateSkill(182,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(182,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 1006: // Inscription
	        if(!pPlayer->UpdateSkill(773,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(773,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 1007: // Jewelcrafting
	        if(!pPlayer->UpdateSkill(755,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(755,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 1008: // Leatherworking
	        if(!pPlayer->UpdateSkill(165,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(165,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 1009: // Mining
	        if(!pPlayer->UpdateSkill(186,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(186,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 1010: // Skinning
	        if(!pPlayer->UpdateSkill(393,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(393,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 1011: // Tailoring
	        if(!pPlayer->UpdateSkill(197,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(197,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 2001: // Cooking
	        if(!pPlayer->UpdateSkill(185,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(185,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
        case 2002: // First Aid
	        if(!pPlayer->UpdateSkill(129,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(129,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;

        case 2003: // Fishing
	        if(!pPlayer->UpdateSkill(356,0))
            {
		        pCreature->MonsterWhisper("You don't have this skill or you allready have the maximum skill value $C.", pPlayer->GetGUID());
		        OnGossipHello(pPlayer, pCreature);
		        return;
	        }
	        pPlayer->UpdateSkill(356,(sConfig->GetFloatDefault("SkillPoints",0)));
	        pPlayer->ModifyMoney(-(sConfig->GetFloatDefault("SkillGoldCost",0)));
	        pPlayer->CLOSE_GOSSIP_MENU();
            break;
            pPlayer->CLOSE_GOSSIP_MENU();
        }
    }

    bool OnGossipSelect(Player* pPlayer, Creature* pCreature, uint32 uiSender, uint32 uiAction)
    {
	    // Main menu
	    pPlayer->PlayerTalkClass->ClearMenus();
	        if (uiSender == GOSSIP_SENDER_MAIN)
	            SendDefaultMenu(pPlayer, pCreature, uiAction);

        return true;
    }
};

void AddSC_professionnpc()
{
    new professionnpc();
}