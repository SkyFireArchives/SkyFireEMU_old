/*
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
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

#include"ScriptPCH.h"
#include"lost_city_of_the_tolvir.h"

/*Dungeon NPCs*/

/*Blaze of Heavens*/
#define SPELL_BLAZE = 48906
/*Harbinger of Death*/
#define SPELL_SOUL_SEVER			DUNGEON_MODE(82255,82255)
#define SPELL_WAIL_DARKNESS			DUNGEON_MODE(82533,90038)
/*Minion of Siamat*/
#define SPELL_CHAIN_LIGHTNING		DUNGEON_MODE(44704,90027)
/*Neferset Darkcaster*/
#define SPELL_HEX = 82760
#define SPELL_METEOR				DUNGEON_MODE(84032,90023)
#define SPELL_SHADOW_BOLT			DUNGEON_MODE(82765,90036)
/*Neferset Plaguebringer*/
#define SPELL_DISEASE_BREATH		DUNGEON_MODE(73976,90005)
#define SPELL_INFECTIOUS_PLAGUE = 82768
/*Neferset Theurgist*/
#define SPELL_MIXTURE = 82759
#define SPELL_RITUAL_BLOOD			DUNGEON_MODE(82753,89993)
#define SPELL_VICIOUS_LEECHES = 82757
/*Neferset Torturer*/
#define SPELL_BRANDED_TONGUE		DUNGEON_MODE(82744,90037)
#define SPELL_SERUM_TORMENT			DUNGEON_MODE(82750,89994)
/*Oathsworn Axemaster*/
#define SPELL_SKULLCRUSH = 44922
#define SPELL_SLAM =82763
/*Oathsworn Captain*/
#define SPELL_SKULLCRACK = 82670
/*Oathsworn Myrmidon*/
#define SPELL_BLADED_SHIELD			DUNGEON_MODE(82671,95184)
#define SPELL_RESISTANCE = 82673
/*Oathsworn Pathfinder*/
#define SPELL_CALL_FALCON = 82792
#define SPELL_SHOOT = 83877 
#define SPELL_WING_CLIP = 82764
/*Oathsworn Scorpid Keeper*/
#define SPELL_BLINK = 84123
#define SPELL_CALL_SCORPID = 84126
#define SPELL_EVASION = 84122
/*Oathsworn Skinner*/
#define SPELL_FAN_KNIVES			DUNGEON_MODE(82789,90034)
#define SPELL_SPINAL_PIERCE = 84031
/*Oathsworn Tamer*/
#define SPELL_FERAL_LINK = 84230
/*Wanderer*/
#define SPELL_CALL_CROCO = 82791
#define SPELL_FORKED_SHOT			DUNGEON_MODE(82794,89992)
/*Pygmy Brute*/
#define SPELL_IMPALE				DUNGEON_MODE(83783,89990)
#define SPELL_SHOCKWAVE			DUNGEON_MODE(83785,90024)
/*Pigmy Fire Breather*/
#define SPELL_DRAGON_BREATH			DUNGEON_MODE(83776,90026)
#define SPELL_FIREBLAST			DUNGEON_MODE(83778,90025)
/*Pigmy Scout*/                    
#define SPELL_TOXIC_DART			DUNGEON_MODE(83780,89991)
/*Servent of Siamat*/
#define SPELL_LIGHTNING_NOVA		DUNGEON_MODE(84544,90015)
#define SPELL_THUNDER_CRASH = 84521

enum eEvents
{
	EVENT_NONE,
	EVENT_BLAZE,
	EVENT_SOUL_SEVER,
	EVENT_WAIL_DARKNESS,
	EVENT_CHAIN_LIGHTNING,
	EVENT_HEX,
	EVENT_METEOR,
	EVENT_SHADOW_BOLT,
	EVENT_DISEASE_BREATH,
	EVENT_INFECTIOUS_PLAGUE,
	EVENT_MIXTURE,
	EVENT_RITUAL_BLOOD,
	EVENT_VICIOUS_LEECHES,
	EVENT_BRANDED_TONGUE,
	EVENT_SERUM_TORMENT,
	EVENT_SKULLCRUSH,
	EVENT_SLAM,
	EVENT_SKULLCRACK,
	EVENT_BLADED_SHIELD,
	EVENT_RESISTANCE,
	EVENT_CALL_FALCON,
	EVENT_SHOOT,
	EVENT_WING_CLIP,
	EVENT_BLINK,
	EVENT_CALL_SCORPID,
	EVENT_EVASION,
	EVENT_FAN_KNIVES,
	EVENT_SPINAL_PIERCE,
	EVENT_FERAL_LINK,
	EVENT_CALL_CROCO,
	EVENT_FORKED_SHOT,
	EVENT_IMPALE,
	EVENT_SHOCKWAVE,
	EVENT_DRAGON_RBEATH,
	EVENT_FIREBLAST,
	EVENT_TOXIC_DART,
	EVENT_LIGHTNING_NOVA,
	EVENT_THUNDER_CRASH
};










