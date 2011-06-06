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

#include "SpellAuraEffects.h"

#ifndef DEF_ULDUAR_H
#define DEF_ULDUAR_H

static const char* IUUScriptName = "instance_ulduar";


enum Encounter
{
    BOSS_LEVIATHAN,
    BOSS_IGNIS,
    BOSS_RAZORSCALE,
    BOSS_XT002,
    BOSS_ASSEMBLY,
    BOSS_KOLOGARN,
    BOSS_AURIAYA,
    BOSS_MIMIRON,
    BOSS_HODIR,
    BOSS_THORIM,
    BOSS_FREYA,
    BOSS_VEZAX,
    BOSS_YOGGSARON,
    BOSS_ALGALON,
    MAX_BOSS_NUMBER
};

enum Data64
{
    DATA_LEVIATHAN,
    DATA_NORGANNON,
    DATA_IGNIS,
    DATA_RAZORSCALE,
    DATA_EXP_COMMANDER,
    DATA_RAZORSCALE_CONTROL,
    DATA_XT002,
    DATA_STEELBREAKER,
    DATA_MOLGEIM,
    DATA_BRUNDIR,
    DATA_KOLOGARN,
    DATA_AURIAYA,
    DATA_BRIGHTLEAF,
    DATA_IRONBRANCH,
    DATA_STONEBARK,
    DATA_FREYA,
    DATA_THORIM,
	DATA_SIF,
    DATA_RUNIC_COLOSSUS,
    DATA_RUNE_GIANT,
    DATA_MIMIRON,
    DATA_LEVIATHAN_MK_II,
    DATA_VX_001,
    DATA_AERIAL_UNIT,
    DATA_MAGNETIC_CORE,
    DATA_VEZAX,
    DATA_YS_FREYA,
    DATA_YS_THORIM,
    DATA_YS_MIMIRON,
    DATA_YS_HODIR,
    DATA_YOGGSARON_BRAIN,
    DATA_YOGGSARON,
    DATA_LIVIN_CONSTELLATION,
    DATA_ALGALON,
    DATA_SARA,
};

enum Data
{
    DATA_LEVIATHAN_DOOR,
    DATA_TOWER_DESTROYED,
    DATA_RUNIC_DOOR,
    DATA_STONE_DOOR,
    DATA_CALL_TRAM,
    DATA_MIMIRON_ELEVATOR,
    DATA_HODIR_RARE_CHEST,
    DATA_DO_NOT_PUSH_THE_BUTTON,
    DATA_UNIVERSUM,
    DATA_KREIS_RESET,
    DATA_KREIS_START,
    DATA_INVISIBLE_DOOR,
};

enum UlduarEvents
{
    EVENT_TOWER_OF_STORM_DESTROYED     = 21031,
    EVENT_TOWER_OF_FROST_DESTROYED     = 21032,
    EVENT_TOWER_OF_FLAMES_DESTROYED    = 21033,
    EVENT_TOWER_OF_LIFE_DESTROYED      = 21030
};

enum eCreatures
{
    // Leviathan
    NPC_FLAME_LEVIATHAN         = 33113,
    NPC_NORGANNON               = 33686,
    NPC_LIQUID                  = 33189,
    NPC_CONTAINER               = 33218,
    NPC_COLOSSUS                = 33240,
    NPC_MECHANOLIFT             = 33214,

    // Ignis
    NPC_IGNIS                   = 33118,
    NPC_IRON_CONSTRUCT          = 33121,
    NPC_GROUND_SCORCH           = 33221,

    // Razorscale
    NPC_RAZORSCALE              = 33186,
    NPC_RAZORSCALE_CONTROLLER   = 33233,
    NPC_STEELFORGED_DEFFENDER   = 33236,
    NPC_EXP_COMMANDER           = 33210,
    NPC_DARK_RUNE_GUARDIAN      = 33388,
    NPC_DARK_RUNE_SENTINEL      = 33846,
    NPC_DARK_RUNE_WATCHER       = 33453,
    MOLE_MACHINE_TRIGGER        = 33245,
    NPC_COMMANDER               = 33210,
    NPC_ENGINEER                = 33287,
    NPC_DEFENDER                = 33816,
    NPC_HARPOON                 = 33184,

    // XT002
    NPC_XT002                   = 33293,
    NPC_VOID_ZONE               = 34001,
    NPC_LIFE_SPARK              = 34004,
    NPC_XT002_HEART             = 33329,
    NPC_XS013_SCRAPBOT          = 33343,
    NPC_XM024_PUMMELLER         = 33344,
    NPC_XE321_BOOMBOT           = 33346,

    // Assembly of Iron
    NPC_BRUNDIR                 = 32857,
    NPC_MOLGEIM                 = 32927,
    NPC_STEELBREAKER            = 32867,

    // Kologarn
    NPC_KOLOGARN                = 32930,
    NPC_LEFT_ARM                = 32933,
    NPC_RIGHT_ARM               = 32934,
    NPC_EYEBEAM_1               = 33632,
    NPC_EYEBEAM_2               = 33802,
    NPC_RUBBLE                  = 33768,

    // Auriaya
    NPC_AURIAYA                 = 33515,
    NPC_SANCTUM_SENTRY          = 34014,

    // Freya
    NPC_FREYA                   = 32906,
    NPC_STONEBARK               = 32914,
    NPC_IRONBRANCH              = 32913,
    NPC_BRIGHTLEAF              = 32915,
    NPC_SUN_BEAM                = 33170,
    NPC_DETONATING_LASHER       = 32918,
    NPC_ANCIENT_CONSERVATOR     = 33203,
    NPC_ANCIENT_WATER_SPIRIT    = 33202,
    NPC_STORM_LASHER            = 32919,
    NPC_SNAPLASHER              = 32916,
    NPC_NATURE_BOMB             = 34129,
    NPC_EONARS_GIFT             = 33228,
    NPC_HEALTHY_SPORE           = 33215,
    NPC_UNSTABLE_SUN_BEAM       = 33050,

    // Hodir
    NPC_HODIR                   = 32845,
    NPC_FLASH_FREEZE_PRE        = 32926,
    NPC_FLASH_FREEZE            = 32938,
    NPC_ICICLE_TARGET           = 33174,

    // Mimiron
    NPC_MIMIRON                 = 33350,
    NPC_BURST_TARGET            = 34211,
    NPC_JUNK_BOT                = 33855,
    NPC_ASSAULT_BOT             = 34057,
    NPC_BOOM_BOT                = 33836,
    NPC_EMERGENCY_BOT           = 34147,
    NPC_FLAME_MOVE              = 34121, 
    NPC_FROST_BOMB              = 34149,
    NPC_COMPUTER                = 34143,
    NPC_FLAME_INITIAL           = 34363,
    NPC_LEVIATHAN_MKII          = 33432,
    NPC_VX002                   = 33651,
    NPC_AERIAL_UNIT             = 33670,
    NPC_MAGNETIC_CORE           = 34068,
    NPC_TURRET                  = 34071,
    NPC_ROCKET                  = 34050,
	NPC_SUMMON_BOT_TRIGGER		= 33856,

    // Thorim
    NPC_THORIM                  = 32865,
    NPC_RUNE_GIANT              = 32873,
    NPC_RUNIC_COLOSSUS          = 32872,
    NPC_PHASE_TRIGGER           = 32892,
    NPC_SIF                     = 33196,
    NPC_THUNDER_ORB             = 33378,

    // General Vezax
    NPC_GENERAL_VEZAX           = 33271,
    NPC_SARONITE_VAPORS         = 33488,
    NPC_SARONITE_ANIMUS         = 33524,

    // Yogg-Saron
    NPC_YOGG_SARON              = 33288,
    NPC_YOGG_SARON_BRAIN        = 33890,
    NPC_FREYA_IMAGE             = 33410,
    NPC_THORIM_IMAGE            = 33413,
    NPC_HODIR_IMAGE             = 33411,
    NPC_MIMIRON_IMAGE           = 33412,
    NPC_IMAGE_OF_FREYA          = 33241,
    NPC_IMAGE_OF_THORIM         = 33242,
    NPC_IMAGE_OF_MIMIRON        = 33244,
    NPC_IMAGE_OF_HODIR          = 33213,
    NPC_SANITY_WELL             = 33991,
    NPC_SARA                    = 33134,
    NPC_YOGG_SARON_VOICE        = 33280,
    NPC_GUARDIAN_OF_YOGGSARON   = 33136,
    NPC_OMINOUS_CLOUD           = 33292,
    NPC_DEATH_ORB               = 33882,
    NPC_CRUSHER_TENTACLE        = 33966,
    NPC_CONSTRICTOR_TENTACLE    = 33983,
    NPC_CORRUPTOR_TENTACLE      = 33985,
    NPC_PORTAL_STORMWIND        = 34072,
    NPC_PORTAL_CHAMBER          = 34122,
    NPC_PORTAL_ICECROWN         = 34123,
    NPC_LAUGHING_SKULL          = 33990,
    NPC_INFLUENCE_TENTACLE      = 33943,
    NPC_IMMORTAL_GUARDIAN       = 33988,
    NPC_SUIT_OF_ARMOR           = 33433,
    NPC_RUBY_CONSORT            = 33716,
    NPC_AZURE_CONSORT           = 33717,
    NPC_EMERALD_CONSORT         = 33719,
    NPC_OBSIDIAN_CONSORT        = 33720,
    NPC_DEATHSWORN_ZEALOT       = 33567,

    // Algalon
    NPC_ALGALON                 = 32871,
    NPC_COLLAPSING_STAR         = 32955,
    NPC_LIVIN_CONSTELLATION     = 33052,
    NPC_DARKMATTER              = 33089,
    NPC_UNLEASEHED_DARK_MATTER  = 34097,
    NPC_COSMIC_SMASH_TRIGGER    = 33104,
    NPC_COSMIC_SMASH_TRIGGER_HC = 62295,
    NPC_BLACKHOHLE              = 32953,
    NPC_VOIDZONE                = 34001,
    NPC_BRANN                   = 33235,
    NPC_AZEROTH                 = 34246,
};

enum eGameObjects
{
    GO_LEVIATHAN_DOOR       = 194630,
    GO_KOLOGARN_BRIDGE      = 194232,
    GO_HODIR_RARE_CHEST_10  = 194200,
    GO_HODIR_RARE_CHEST_25  = 194201,
    GO_RUNIC_DOOR           = 194557,
    GO_STONE_DOOR           = 194558,
    GO_THORIM_LEVER         = 194265,
    GO_MIMIRON_TRAM         = 194675,
    GO_MIMIRON_ELEVATOR     = 194749,
    GO_KEEPERS_DOOR         = 194255,
    GO_MIMIRON_BUTTON       = 194739,
    GO_UNIVERSUM            = 194148,// Universum 
    GO_KREIS_RESET          = 194716,// Kreis Reset
    GO_KREIS_START          = 194715,// kreis Start
    GO_INVISIBLE_DOOR       = 194910,// Invisible Door start
    GO_MOLE_MACHINE         = 194316,
    GO_RAZOR_HARPOON_1      = 194542,
    GO_RAZOR_HARPOON_2      = 194541,
    GO_RAZOR_HARPOON_3      = 194543,
    GO_RAZOR_HARPOON_4      = 194519,
    GO_RAZOR_BROKEN_HARPOON = 194565,
};

enum eAchievementCriteria
{
    ACHIEVEMENT_CRITERIA_HOT_POCKET_10                   = 10430, //ignis
    ACHIEVEMENT_CRITERIA_HOT_POCKET_25                   = 10431,
    ACHIEVEMENT_CRITERIA_FLAMELEVIATHAN                  = 10042,
    ACHIEVEMENT_CRITERIA_IGNIS                           = 10342,
    ACHIEVEMENT_CRITERIA_RAZORSCALE                      = 10340,
    ACHIEVEMENT_CRITERIA_XT002                           = 10341,
    ACHIEVEMENT_CRITERIA_ASSEMBLY_OF_IRON                = 10598,
    ACHIEVEMENT_CRITERIA_KOLOGARN                        = 10348,
    ACHIEVEMENT_CRITERIA_AURIAYA                         = 10351,
    ACHIEVEMENT_CRITERIA_THORIM                          = 10403,
    ACHIEVEMENT_CRITERIA_FREYA                           = 10582,
    ACHIEVEMENT_CRITERIA_HODIR                           = 10439,
    ACHIEVEMENT_CRITERIA_MIMIRON                         = 10347,
    ACHIEVEMENT_CRITERIA_VEZAX                           = 10349,
    ACHIEVEMENT_CRITERIA_YOGG_SARON                      = 10350,
};
#endif

