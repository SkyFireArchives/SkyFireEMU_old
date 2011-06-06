/* ScriptData
SDName: NPC_Code_Codebox
SD%Complete: 100
SDComment: Makes an NPC able to give a gift if a right code is insered
SDCategory: NPCs
EndScriptData */

#include "ScriptPCH.h"
#include <cstring>

/*
 Returns TRUE if the gift is given.
 Returns FALSE if the code is wrong
   or if the gift can't be given (i.e. full inventory).

 ~elegos
*/
class code_codebox : public CreatureScript
{
public:
    code_codebox() : CreatureScript("code_codebox") { }

    //This function is called when the player opens the gossip menubool
    bool OnGossipHello(Player *player, Creature *_Creature)
    {
        if(_Creature->isQuestGiver() && _Creature->GetAreaId() == 3703)
            player->PrepareQuestMenu(_Creature->GetGUID());

        player->ADD_GOSSIP_ITEM_EXTENDED(0, "Ich moechte ein Itemcode eingeben.", GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF+1, "", 0, true);
        player->SEND_GOSSIP_MENU(player->GetGossipTextId(_Creature),_Creature->GetGUID());

        return true;
    }

    //This function is called when the player clicks an option on the gossip menubool
    bool OnGossipSelect(Player *player, Creature *_Creature, uint32 sender, uint32 action )
    {
    	return true;
    }

    bool OnGossipSelectCode( Player *player, Creature *_Creature, uint32 sender, uint32 action, const char* sCode )
    {
        if(sender == GOSSIP_SENDER_MAIN)
        {
            if(action == GOSSIP_ACTION_INFO_DEF+1)
            {
                checkCode(player, _Creature, sCode);
                player->CLOSE_GOSSIP_MENU();
                return true;
            }
        }
        return false;
    }
    
    
private:
    bool checkCode(Player *player, Creature *_Creature, const char* sCode)
    {
        // Some variables declarations.
        PreparedQueryResult result;
        int32 item_id = 0;
        uint32 quantity = 0;
        uint32 uses = 0;
        uint32 account = 0;
        uint64 charguid = 0;
        uint8 newlevel = 0;
        bool found = false;
        
        
        uint32 creatureID = _Creature->GetEntry();

        creatureID = creatureID == 1000104 ? 90001 : creatureID;
        
        PreparedStatement *stmt = CharacterDatabase.GetPreparedStatement(CHAR_GET_CODEBOX_ITEM);
        stmt->setUInt32(0, creatureID);
        stmt->setUInt32(1, player->GetSession()->GetAccountId());
        
        result = CharacterDatabase.Query(stmt);
        if(!result)
        {
            sLog->outError("CodeBox: Player %u request code (%s) on npc %u but no code found.", player->GetGUID(), sCode, creatureID);
            _Creature->MonsterWhisper("Der Code ist falsch! Komme wieder, wenn du einen gueltigen Code hast!", player->GetGUID());
            return false;
        }
        
        
        do {
            Field *fields = result->Fetch();
            
            item_id = fields[0].GetInt32();
            quantity = fields[1].GetUInt32();
            uses = fields[2].GetUInt32();
            account = fields[3].GetUInt32();
            charguid = fields[4].GetUInt64();
            newlevel = fields[5].GetUInt8();
            const char* dbcode = fields[6].GetCString();
            
            sLog->outDebug("CodeBox: Found Code (%s) in DB", dbcode);

            if(!strcmp(dbcode, sCode))
            {
                sLog->outDebug("CodeBox: DB Code %s matches player code %s", dbcode, sCode);
                found = true;
                break;
            }
        } while (result->NextRow());
        
        result.release();
        
        if(!found)
        {
            sLog->outError("CodeBox: Player %u request not existing code (%s).", player->GetGUID(), sCode);
            _Creature->MonsterWhisper("Der Code ist falsch! Komme wieder, wenn du einen gueltigen Code hast!", player->GetGUID());
            return false;
        }
        
        if(account != player->GetSession()->GetAccountId())
        {
            sLog->outError("CodeBox: Player %u request correct code (%s) but account doesn't match. Playeraccount: %u CodeAccount: %u", player->GetGUID(), sCode, player->GetSession()->GetAccountId(), account);
            _Creature->MonsterWhisper("Der Code ist falsch! Komme wieder, wenn du einen gueltigen Code hast!", player->GetGUID());
            return false;
        }
        
        if(charguid && player->GetGUID() != charguid)
        {
            sLog->outError("CodeBox: Player %u request correct code (%s) but guid doesn't match. CodeGUID: ", player->GetGUID(), charguid);
            _Creature->MonsterWhisper("Leider kannst du diesen Code nicht mit diesem Charakter Einloesen!", player->GetGUID());
            return false;
        }
        
        if(!uses)
        {
            sLog->outError("CodeBox: Player %u request correct code (%s) but available uses reached 0.", player->GetGUID(), sCode);
            _Creature->MonsterWhisper("Der Code wurde bereits eingeloest! Komme wieder, wenn du einen gueltigen Code hast!", player->GetGUID());
            return false;
        }
        
        if(newlevel && player->getLevel() >= newlevel)
        {
            sLog->outError("CodeBox: Player %u request correct code (%s) but playerlevel is to high. Playerlevel: %u Codelevel: %u", player->GetGUID(), player->getLevel(), newlevel);
            _Creature->MonsterWhisper("Leider kannst du diesen Code nicht mit diesem Charakter Einloesen denn dein Level ist zu hoch!", player->GetGUID());
            return false;
        }
        
        // levelcode
        if(newlevel > 0)
        {
                player->GiveLevel(newlevel);
                player->InitTalentForLevel();
                player->SetUInt32Value(PLAYER_XP,0);

                _Creature->MonsterWhisper("Herzlichen Glueckwunsch zu deinem neuem Level!", player->GetGUID());
        }
        // itemcode
        else if(item_id > 0)
        {
            if(!AddItem(_Creature, player, item_id, quantity))
                return false;
        }
        // itemcode for randomitem
        else if(item_id < 0)
        {
            PreparedQueryResult items;
            uint32 item;
            
            
            PreparedStatement *itemGroupStmt = CharacterDatabase.GetPreparedStatement(CHAR_GET_CODEBOX_ITEMGROUP);
            itemGroupStmt->setUInt32(0, -item_id);
            
            items = CharacterDatabase.Query(itemGroupStmt);
            if(!items)
            {
                sLog->outError("CodeBox: Player %u request item from itemgroup: %u but itemgroup not found.", player->GetGUID(), -item_id);
                _Creature->MonsterWhisper("Bei dem Verarbeiten deines Codes ist ein Interner Fehler aufgetreten. Bitte melde diesen mit genauer Zeit in einem Ticket!", player->GetGUID());
            }
            
            item = items->Fetch()[0].GetUInt32();
            items.release();

            if(!AddItem(_Creature, player, item, quantity))
                return false;
        }

        CharacterDatabase.PExecute("UPDATE `codes` SET `uses` = (`uses` - 1) WHERE  `npc_id` = %u AND `account_id` = %u AND `code` = '%s'",creatureID, account, sCode);
        /*PreparedStatement* used_stmt = CharacterDatabase.GetPreparedStatement(CHAR_SET_CODEBOX_CODE_USED);
        used_stmt->setUInt32(0, creatureID);
        used_stmt->setUInt32(1, account);
        CharacterDatabase.Execute(used_stmt);*/
        
        if(item_id != 0)
        {
            if(item_id == 200000 || item_id == 200005)
                _Creature->MonsterWhisper("Viel Spass mit dem Item!", player->GetGUID());
            else
                _Creature->MonsterWhisper("Danke, dass du dem Server mit deiner Spende unterstuetzt und viel Spass mit dem Item!", player->GetGUID());
        }

        return true;
    }

    bool AddItem(Creature* creature, Player* player, uint32 item, uint32 quantity)
    {
        ItemPosCountVec dest;
        uint8 canStoreNewItem = player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, item, quantity);

        if(canStoreNewItem == EQUIP_ERR_OK)
        {
            Item *newItem = NULL;
            newItem = player->StoreNewItem(dest, item, quantity, true);
            player->SendNewItem(newItem,quantity,true,false);
            
            return true;
        }
        
        sLog->outError("CodeBox: Player %u request item %u but got equip error %u.", player->GetGUID(), canStoreNewItem);
        
        if(canStoreNewItem == EQUIP_ERR_CANT_CARRY_MORE_OF_THIS)
           creature->MonsterWhisper("Dein Code ist gueltig, aber du kannst nur eines dieser Items pro Charakter Tragen! Versuche es mit einem anderem Charakter!", player->GetGUID());
        
        else if(canStoreNewItem == EQUIP_ERR_INVENTORY_FULL)
           creature->MonsterWhisper("Dein Code ist gueltig, aber du hast nicht genung Platz in deinen Taschen! Versuche es nochmal, wenn du etwas mehr Platz in deinem Rucksack hast!", player->GetGUID());

        else
           creature->MonsterWhisper("Bei dem Verarbeiten deines Codes ist ein Interner Fehler aufgetreten. Bitte melde diesen mit genauer Zeit in einem Ticket!", player->GetGUID());

        return false;
    }
};

void AddSC_lol_codebox()
{
    new code_codebox();
}


/*Table structure for table `codes` */
/*

DROP TABLE IF EXISTS `codes`;

CREATE TABLE `codes` (
  `npc_id` mediumint(10) NOT NULL DEFAULT '0' COMMENT 'The NPC ID',
  `code` varchar(25) NOT NULL COMMENT 'The code you have to enter',
  `uses` int(3) NOT NULL DEFAULT '1' COMMENT 'Number of uses left for this code',
  `item_id` mediumint(10) NOT NULL DEFAULT '0' COMMENT 'The gift (item)',
  `account_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Account ID',
  `quantity` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'The quantity of ITEMS',
  PRIMARY KEY (`npc_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC


-- Data for the table `codes`

-- insert  into `codes`(`npc_id`,`code`,`uses`,`item_id`,`quantity`) values (2943,'murlocsuit',3,33079,1),(2943,'surprise',-1,0,1),(16070,'murlocblue',5,20371,1),(16070,'murlocpink',5,22114,1),(16070,'surprise',-1,0,1);

-- Table structure for table `codes_item_loot`

DROP TABLE IF EXISTS `codes_item_loot`;

CREATE TABLE `codes_item_loot` (
  `group_id` mediumint(10) NOT NULL default '0' COMMENT 'Group that the items belong to',
  `item_id` mediumint(10) NOT NULL default '0' COMMENT 'GUID of item',
  `name` varchar(25) default NULL COMMENT 'Name of Item',
  PRIMARY KEY  (`group_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `codes_log`;


CREATE TABLE `codes_log` (
  `date` bigint(20) unsigned NOT NULL default '0' COMMENT 'Datum',
  `player_guid` int(11) unsigned NOT NULL default '0' COMMENT 'The Player GUID',
  `npc_id` mediumint(10) NOT NULL default '0' COMMENT 'The NPC ID',
  `code` varchar(25) NOT NULL COMMENT 'The code you have to enter',
  `item_id` mediumint(10) NOT NULL default '0' COMMENT 'The gift (item)',
  PRIMARY KEY  (`date`,`npc_id`,`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

*/