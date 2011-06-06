/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
* This program is free software licensed under GPL version 2
* Please see the included DOCS/LICENSE.TXT for more information */
/* Public version by Kuidin Sergey (Ghost)*/
#ifndef DEF_TOC_H
#define DEF_TOC_H


enum eData
{
    BOSS_GRAND_CHAMPIONS,
    BOSS_ARGENT_CHALLENGE_E,
    BOSS_ARGENT_CHALLENGE_P,
    BOSS_BLACK_KNIGHT,
    DATA_MOVEMENT_DONE,
	DATA_AGGRO_DONE,
	DATA_AGRO_DONE,
    DATA_LESSER_CHAMPIONS_DEFEATED,
    DATA_START,
    DATA_IN_POSITION,
    DATA_ARGENT_SOLDIER_DEFEATED,
	DATA_BLACK_KNIGHT,
	DATA_KNIGHT,
    DATA_CHAMPION_GHOUL,
    DATA_TIRION,
};

enum Data64
{
    DATA_ANNOUNCER,
    DATA_MAIN_GATE,
    DATA_MAIN_GATE1,				

    DATA_GRAND_CHAMPION_VEHICLE_1,
    DATA_GRAND_CHAMPION_VEHICLE_2,
    DATA_GRAND_CHAMPION_VEHICLE_3,

    DATA_GRAND_CHAMPION_1,
    DATA_GRAND_CHAMPION_2,
    DATA_GRAND_CHAMPION_3
};

enum eNpcs
{
    // Horde Champions
    NPC_MOKRA                   = 35572,
    NPC_ERESSEA                 = 35569,
    NPC_RUNOK                   = 35571,
    NPC_ZULTORE                 = 35570,
    NPC_VISCERI                 = 35617,

    // Alliance Champions
    NPC_JACOB                   = 34705,
    NPC_AMBROSE                 = 34702,
    NPC_COLOSOS                 = 34701,
    NPC_JAELYNE                 = 34657,
    NPC_LANA                    = 34703,

	// Crusader Champions
    NPC_EADRIC                  = 35119,
    NPC_PALETRESS               = 34928,

	// Crusader mobs
    NPC_ARGENT_LIGHWIELDER      = 35309,
    NPC_ARGENT_MONK             = 35305,
    NPC_PRIESTESS               = 35307,

	// Black Knight
    NPC_BLACK_KNIGHT            = 35451,
	
	// Black Knight's add
    NPC_RISEN_JAEREN            = 35545,
    NPC_RISEN_ARELAS            = 35564,
    NPC_ARMORY_OF_GHOUL         = 35590,
	
	// Announcer	
    NPC_JAEREN_AN               = 35591,
    NPC_ARELAS_AN               = 35592,

	// Memory	
	MEMORY_ALGALON				= 35052,
	MEMORY_ARCHIMONDE			= 35041,
	MEMORY_CHROMAGGUS			= 35033,
	MEMORY_CYANIGOSA			= 35046,
	MEMORY_DELRISSA				= 35043,
	MEMORY_ECK			     	= 35047,
	MEMORY_ENTROPIUS			= 35044,
	MEMORY_GRUUL				= 35039,
	MEMORY_HAKKAR				= 35034,
	MEMORY_HEIGAN				= 35049,
	MEMORY_HEROD				= 35030,
	MEMORY_HOGGER				= 34942,
	MEMORY_IGNIS				= 35050,
	MEMORY_ILLIDAN				= 35042,
	MEMORY_INGVAR				= 35045,
	MEMORY_KALITHRESH			= 35037,
	MEMORY_LUCIFRON				= 35031,
	MEMORY_MALCHEZAAR			= 35038,
	MEMORY_MUTANUS				= 35029,
	MEMORY_ONYXIA				= 35048,
	MEMORY_THUNDERAAN			= 35032,
	MEMORY_VANCLEEF				= 35028,
	MEMORY_VASHJ				= 35040,
	MEMORY_VEKNILASH			= 35036,
	MEMORY_VEZAX				= 35051,

	// Announcer Start Event
    NPC_JAEREN                  = 35004,
    NPC_ARELAS                  = 35005,
    NPC_TIRION                  = 34996,
    NPC_TRALL                   = 34994, 
    NPC_GARROSH                 = 34995, 
    NPC_KING                    = 34990, 
    NPC_LADY                    = 34992, 
};

enum eGameObjects
{
    GO_MAIN_GATE                = 195647,
    GO_MAIN_GATE1               = 195650,

    GO_CHAMPIONS_LOOT           = 195709,
    GO_CHAMPIONS_LOOT_H         = 195710,

    GO_EADRIC_LOOT              = 195374,
    GO_EADRIC_LOOT_H            = 195375,

    GO_PALETRESS_LOOT           = 195323,
    GO_PALETRESS_LOOT_H         = 195324
};

enum eVehicles
{
    //Grand Champions Alliance Vehicles
    VEHICLE_MARSHAL_JACOB_ALERIUS_MOUNT             = 35637,
    VEHICLE_AMBROSE_BOLTSPARK_MOUNT                 = 35633,
    VEHICLE_COLOSOS_MOUNT                           = 35768,
    VEHICLE_EVENSONG_MOUNT                          = 34658,
    VEHICLE_LANA_STOUTHAMMER_MOUNT                  = 35636,
    //Faction Champions (ALLIANCE)
    VEHICLE_DARNASSIA_NIGHTSABER                    = 33298,
    VEHICLE_EXODAR_ELEKK                            = 33416,
    VEHICLE_STORMWIND_STEED                         = 33297,
    VEHICLE_GNOMEREGAN_MECHANOSTRIDER               = 33301,
    VEHICLE_IRONFORGE_RAM                           = 33408,
    //Grand Champions Horde Vehicles
    VEHICLE_MOKRA_SKILLCRUSHER_MOUNT                = 35638,
    VEHICLE_ERESSEA_DAWNSINGER_MOUNT                = 35635,
    VEHICLE_RUNOK_WILDMANE_MOUNT                    = 35640,
    VEHICLE_ZUL_TORE_MOUNT                          = 35641,
    VEHICLE_DEATHSTALKER_VESCERI_MOUNT              = 35634,
    //Faction Champions (HORDE)
    VEHICLE_FORSAKE_WARHORSE                        = 33414,
    VEHICLE_THUNDER_BLUFF_KODO                      = 33300,
    VEHICLE_ORGRIMMAR_WOLF                          = 33409,
    VEHICLE_SILVERMOON_HAWKSTRIDER                  = 33418,
    VEHICLE_DARKSPEAR_RAPTOR                        = 33299,

    VEHICLE_ARGENT_WARHORSE                         = 35644,
    VEHICLE_ARGENT_BATTLEWORG                       = 36558,
    VEHICLE_GR                                      = 35492, 

    VEHICLE_BLACK_KNIGHT                            = 35491
};

#endif