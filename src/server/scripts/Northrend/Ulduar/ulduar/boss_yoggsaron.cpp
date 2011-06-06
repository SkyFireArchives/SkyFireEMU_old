/*
 * Copyright (C) 2008 - 2009 Trinity <http://www.trinitycore.org/>
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
 
 /* ScriptData
SDName: Yogg-Saron
SDAuthor: Fronty
SD%Complete: 95
SDComments: Hodir's Protective Gaze don't work.
EndScriptData */

#include "ScriptPCH.h"
#include "ulduar.h"

enum Sara_Yells
{
    SAY_SARA_PREFIGHT_1                         = -1603310,
    SAY_SARA_PREFIGHT_2                         = -1603311,
    SAY_SARA_AGGRO_1                            = -1603312,
    SAY_SARA_AGGRO_2                            = -1603313,
    SAY_SARA_AGGRO_3                            = -1603314,
    SAY_SARA_SLAY_1                             = -1603315,
    SAY_SARA_SLAY_2                             = -1603316,
    WHISP_SARA_INSANITY                         = -1603317,
    SAY_SARA_PHASE2_1                           = -1603318,
    SAY_SARA_PHASE2_2                           = -1603319,
};

enum YoggSaron_Yells
{
    SAY_PHASE2_1                                = -1603330,
    SAY_PHASE2_2                                = -1603331,
    SAY_PHASE2_3                                = -1603332,
    SAY_PHASE2_4                                = -1603333,
    SAY_PHASE2_5                                = -1603334,
    SAY_PHASE3                                  = -1603335,
    SAY_VISION                                  = -1603336,
    SAY_LUNATIC_GAZE                            = -1603337,
    SAY_DEAFENING_ROAR                          = -1603338,
    WHISP_INSANITY_1                            = -1603339,
    WHISP_INSANITY_2                            = -1603340,
    SAY_DEATH                                   = -1603341,
    EMOTE_PORTALS                               = -1603342,
    EMOTE_OPEN_CHAMBER                          = -1603343,
    EMOTE_EMPOWERING                            = -1603344
};

enum Keepers_Yells
{
    SAY_MIMIRON_HELP                            = -1603259,
    SAY_FREYA_HELP                              = -1603189,
    SAY_THORIM_HELP                             = -1603287,
    SAY_HODIR_HELP                              = -1603217, 
};

enum Phases
{
    PHASE_NULL = 0,
    PHASE_1,
    PHASE_2,
    PHASE_3
};

enum Npcs
{
    GOB_CHAMBER_DOOR                            = 194635,
    GOB_ICECROWN_DOOR                           = 194636,
    GOB_STORMWIND_DOOR                          = 194637
};

enum Spells
{
    // Sara
    SPELL_SARA_ANGER                            = 63147,
    SPELL_SARA_BLESSING                         = 63134,
    SPELL_SARA_FERVOR                           = 63138,
    SPELL_SHADOWY_BARRIED                       = 64775,
    SPELL_BRAIN_LINK                            = 63802, // Only Apply Aura
    SPELL_BRAIN_LINK_DUMMY                      = 63804, // Dummy Effekt
    SPELL_SARA_TRANSFORMATION                   = 65157,
    SPELL_PSYCHOSIS                             = 63795,
    SPELL_MALADY_OF_THE_MIND                    = 63830,
    SPELL_SARAS_ANGER                           = 63744,
    SPELL_SARA_SHADOWY_BARRIER                  = 64775,

    // Death Ray
    SPELL_DEATH_RAY_DAMAGE                      = 63883,
    SPELL_DEATH_RAY_DAMAGE_VISUAL               = 63886,
    SPELL_DEATH_RAY_WARNING_VISUAL              = 63882,
    SPELL_DEATH_RAY_SUMMON                      = 63891,
    SPELL_DEATH_RAY_ORIGIN_VISUAL               = 63893, // Visual Effekt of 33882
    SPELL_DEATH_RAY_PERIODIC                    = 63883, // Trigger 63884

    // Guardian of Yogg Saron
    SPELL_SUMMON_GUARDIAN                       = 63031,
    SPELL_INSTANT_SUMMON_GUARDIAN               = 62979,
    SPELL_OMINOUS_CLOUD                         = 60984,
    SPELL_OMINOUS_CLOUD_VISUAL                  = 63084,
    SPELL_DARK_VOLLEY                           = 63038,
    SPELL_SHADOW_NOVA_10                        = 62714,
    SPELL_SHADOW_NOVA_25                        = 65209,
    
    // Yogg Saron
    SPELL_SANITY                                = 63050,
    SPELL_INSANE                                = 63120,
    SPELL_INSANE_2                              = 64464, // Let all player looks like FacelessOnes
    SPELL_YOGG_SARON_TRANSFORMATION             = 63895,
    SPELL_CRUSHER_TENTACLE_SUMMON               = 64139,
    SPELL_CORRUPTOR_TENTACLE_SUMMON             = 64143,
    SPELL_CONSTRICTOR_TENTACLE_SUMMON           = 64133,
    SPELL_IMMORTAL_GUARDIAN_SUMMON              = 64158,
    SPELL_SHADOWY_BARRIER_LARGE                 = 63894,
    SPELL_SUMMON_IMMORTAL_GUARDIAN              = 64158,
    
    // Tentacles
    SPELL_ERUPT                                 = 64144,
    SPELL_EMERGE                                = 50142,
    
    // Crusher Tentacle
    SPELL_DIMINISH_POWER                        = 64145,
    SPELL_FOCUSED_ANGER                         = 57688,
    SPELL_CRUSH                                 = 64147,
    
    // Corruptor Tentacle
    SPELL_APATHY                                = 64156,
    SPELL_BLACK_PLAGUE                          = 64153,
    SPELL_CURSE_OF_DOOM                         = 64157,
    SPELL_DRAINING_POISON                       = 64152,
    
    // constrictor Tentacle
    SPELL_SQUEEZE_10                            = 64125,
    SPELL_SQUEEZE_25                            = 64126,
    
    // Influence Tentacle
    SPELL_GRIM_REPRISAL                         = 63305,
    SPELL_TENTACLE_VOID_ZONE                    = 64384,
    
    // Brain of Yogg Saron
    SPELL_INDUCE_MADNESS                        = 64059,
    SPELL_SHATTERED_ILLUSION                    = 64173,
    SPELL_BRAIN_HURT                            = 64361,
    
    // Laughing skull
    SPELL_LUNATIC_GAZE                          = 64167,
    
    // Yogg Saron
    SPELL_LUNATIC_GAZE_P3                       = 64163,
    SPELL_SHADOW_BEACON                         = 64465,
    SPELL_DEAFENING_ROAR                        = 64189,
    SPELL_EXTINGUISH_ALL_LIFE                   = 64166,
    SPELL_EMPOWERING_SHADOWS                    = 64468,
    SPELL_MAWS_OF_THE_OLD_GOD                   = 64184,
    SPELL_SUMMON_CRUSHER_TENTACLE               = 64139,
    SPELL_SUMMON_CURRUPTOR_TENTACLE             = 64143,
    SPELL_SUMMON_CONSTRICTOR_TENTACLES          = 64133,
    
    // Immortal Guardian
    SPELL_EMPOWERED                             = 65294,
    SPELL_EMPOWERING_SHADOWS_HEAL_10            = 64468, // 10plr Heal
    SPELL_EMPOWERING_SHADOWS_HEAL_25            = 64486, // 20plr Heal
    SPELL_DRAIN_LIFE_10                         = 64159,
    SPELL_DRAIN_LIFE_25                         = 64160,
    SPELL_TELEPORT_VISUAL                       = 41236,

    // Scripting Spells
    SPELL_MALADY_OF_MIND                        = 63830, // Needs Sanity Scripting, Trigger 63881 on remove
    SPELL_BRAIN_LINK_DAMAGE                     = 63803, // Needs Sanity Scripting
    SPELL_LUNATIC_GAZE_EFFECT                   = 64164, // Needs Sanity Scripting
    SPELL_LS_LUNATIC_GAZE_EFFECT                = 64168, // Needs Sanity Scripting

    // Quest
    SPELL_IN_THE_MAWS_OF_THE_OLD_GOD            = 64184,
};

enum Keepers_Spells
{
    SPELL_KEEPER_ACTIVE                         = 62647,
    
    // Freya
    SPELL_RESILIENCE_OF_NATURE                  = 62670,
    SPELL_SANITY_WELL_SPAWN                     = 64170,
    SPELL_SANITY_WELL_VISUAL                    = 63288,
    SPELL_SANITY_WELL                           = 64169,
    
    // Thorim
    SPELL_FURY_OF_THE_STORMS                    = 62702,
    SPELL_TITANIC_STORM                         = 64171,
    SPELL_TITANIC_STORM_EFFECT                  = 64172,
    SPELL_WEAKENED                              = 64162,
    
    // Mimiron
    SPELL_SPEED_OF_INVENTION                    = 62671,
    SPELL_DESTABILIZATION                       = 65210,
    
    // Hodir
    SPELL_FORTITUDE_OF_FROST                    = 62650,
    SPELL_PROTECTIVE_GAZE                       = 64174
};

enum Events
{
    EVENT_NONE,
    EVENT_BERSERK,
    EVENT_FERVOR,
    EVENT_BLESSING,
    EVENT_ANGER,
    EVENT_SUMMON_GUARDIAN,
    EVENT_PSYCHOSIS,
    EVENT_MALADY_OF_THE_MIND,
    EVENT_BRAIN_LINK,
    EVENT_DEATH_RAY,
    EVENT_ILLUSION,
    EVENT_TENTACLES,
    EVENT_LUNATIC_GAZE,
    EVENT_SHADOW_BEACON,
    EVENT_IMMORTAL_GUARDIAN,
    EVENT_DEAFENING_ROAR,
    EVENT_EXTINGUISH_ALL_LIFE
};

enum Actions
{
    ACTION_CHAMBER_ILLUSION,
    ACTION_ICECROWN_ILLUSION,
    ACTION_STORMWIND_ILLUSION,
    ACTION_TENTACLE_COUNT,
    ACTION_YOGGSARON_PHASE_3,
    ACTION_HARDMODE_0,
    ACTION_HARDMODE_1,
    ACTION_BERSERK,
    ACTION_DEATH,
    ACTION_ILLUSION_YOGG_SARON_ADD,
    ACTION_ILLUSION_YOGG_SARON_REMOVE,
    ACTION_ILLUSION_SARA_ADD,
    ACTION_ILLUSION_SARA_REMOVE,
};

struct SummonLocation
{
    float x,y,z,o;
    uint32 entry;
};

enum Creatures
{
    ENTRY_DEATH_RAY                             = 33881,
    ENTRY_DEATH_ORB                             = 33882,
};

#define MAX_ENCOUNTER_TIME 7 * 60 * 1000

enum eAchievementData
{
    ACHIEVEMENT_ALONE_IN_THE_DARKNESS_10            =   3159,
    ACHIEVEMENT_ALONE_IN_THE_DARKNESS_25            =   3164,
    ACHIEVEMENT_ONE_LIGHT_IN_THE_DARKNESS_10        =   3158,
    ACHIEVEMENT_ONE_LIGHT_IN_THE_DARKNESS_25        =   3163,
    ACHIEVEMENT_TWO_LIGHTS_IN_THE_DARKNESS_10       =   3141,
    ACHIEVEMENT_TWO_LIGHTS_IN_THE_DARKNESS_25       =   3162,
    ACHIEVEMENT_THREE_LIGHTS_IN_THE_DARKNESS_10     =   3157,
    ACHIEVEMENT_THREE_LIGHTS_IN_THE_DARKNESS_25     =   3161,
    ACHIEVEMENT_DRIVE_ME_CRAZY_10                   =   3008,
    ACHIEVEMENT_DRIVE_ME_CRAZY_25                   =   3010,
    ACHIEVEMENT_HES_NO_GETTING_ANY_OLDER_10         =   3012,
    ACHIEVEMENT_HES_NO_GETTING_ANY_OLDER_25         =   3013,
    ACHIEVEMENT_DESCENT_INTO_THE_MADNESS_10         =   2892,
    ACHIEVEMENT_DESCENT_INTO_THE_MADNESS_25         =   2893,
    ACHIEVEMENT_KISS_AND_MAKE_UP_10                 =   3009,
    ACHIEVEMENT_KISS_AND_MAKE_UP_25                 =   3011,
};

SummonLocation stormwindLocations[]=
{
    // Stormwind Illusion
    {1931.05f, 38.86f, 239.667f, 1.70f, 33433}, // Suit of Armor
    {1909.03f, 44.80f, 239.667f, 0.94f, 33433},
    {1897.92f, 64.40f, 239.667f, 0.17f, 33433},
    {1903.98f, 86.29f, 239.667f, 5.61f, 33433},
    {1923.45f, 97.54f, 239.667f, 4.83f, 33433},
    {1945.17f, 91.73f, 239.667f, 4.07f, 33433},
    {1956.38f, 72.04f, 239.667f, 3.27f, 33433},
    {1950.47f, 50.35f, 239.667f, 2.48f, 33433},
    {1928.65f, 65.71f, 242.376f, 2.09f, 33436}, // Garona
    {1927.21f, 68.26f, 242.376f, 5.22f, 33437}, // King Llane
    {1915.97f, 26.83f, 239.667f, 1.30f, 33990}, // Laughing Skull
    {1901.90f, 74.99f, 239.667f, 6.02f, 33990},
    {1969.02f, 57.13f, 239.667f, 2.87f, 33990},
    {1933.89f, 93.48f, 239.667f, 4.44f, 33990}
};

SummonLocation chamberLocations[]=
{
    // Chamber of the Aspects Illusion
    {2068.97f, -7.30f, 239.760f, 5.85f, 33716}, // Dragons
    {2070.18f,-45.92f, 239.720f, 0.43f, 33716},
    {2113.69f,-65.53f, 239.720f, 1.82f, 33717},
    {2139.57f,-51.13f, 239.750f, 2.40f, 33717},
    {2146.88f,-33.45f, 239.720f, 3.14f, 33720},
    {2146.88f,-16.41f, 239.740f, 3.14f, 33720},
    {2137.49f, -0.26f, 239.720f, 3.83f, 33719},
    {2109.89f, 15.72f, 239.760f, 4.54f, 33719},
    {2064.12f,-58.09f, 239.720f, 0.64f, 33990}, // Laughing Skull
    {2062.18f, 10.04f, 239.803f, 5.51f, 33990},
    {2129.46f, 20.66f, 239.720f, 4.14f, 33990},
    {2130.60f,-68.93f, 239.720f, 2.09f, 33990},
    {2091.82f,-25.39f, 242.647f,  0.0f, 33536}, // Alexstrasza
    {2108.34f,-37.05f, 242.647f, 1.96f, 33535}, // Malygos
    {2109.43f,-14.25f, 242.647f, 4.29f, 33495}, // Ysera
    {2117.95f,-25.46f, 242.647f, 3.14f, 33523}  // Neltharion
};

SummonLocation icecrownLocations[]=
{
    // Icecrown Illusion
    {1955.67f,-133.19f, 240.00f, 5.75f, 33567}, // Deathsworn Zealot
    {1958.09f,-140.64f, 240.00f, 5.75f, 33567},
    {1950.62f,-141.74f, 240.00f, 5.75f, 33567},
    {1897.75f, -99.84f, 240.00f, 2.62f, 33567},
    {1892.86f,-108.44f, 240.00f, 2.62f, 33567},
    {1890.07f,-100.78f, 240.00f, 2.62f, 33567},
    {1910.00f,-137.30f, 240.00f, 4.17f, 33567},
    {1918.60f,-142.42f, 240.00f, 4.17f, 33567},
    {1972.79f,-149.09f, 240.00f, 2.62f, 33990}, // Laughing Skull
    {1941.27f,-169.01f, 240.00f, 1.04f, 33990},
    {1877.66f, -94.06f, 240.00f, 5.78f, 33990},
    {1873.27f,-129.11f, 240.00f, 1.04f, 33990},
    {1907.81f,-152.84f, 240.00f, 4.17f, 33441}, // The Lich King
    {1905.19f,-157.67f, 240.00f, 1.04f, 33442}  // Immolated Champion
};

const Position DeathRayPos[12] =
{
    {1934.73f,-25.43f,327.82f,0.0f},
    {1974.43f,-72.74f,329.10f,0.0f},
    {2016.19f,-16.32f,326.93f,0.0f},
    {1961.54f,  9.78f,327.55f,0.0f},
    {1955.90f,-54.43f,326.33f,0.0f},
    {2011.09f,-54.67f,327.90f,0.0f},
    {2003.48f, -0.03f,326.40f,0.0f},
    {1954.04f,  4.59f,327.63f,0.0f},
    {1943.14f, -5.17f,327.41f,0.0f},
    {1943.72f,-48.29f,327.10f,0.0f},
    {1990.30f,-67.09f,328.40f,0.0f},
    {1980.22f, 12.33f,327.44f,0.0f}
};

const Position PortalPos[10] =
{
    {1956.64f,-25.28f,325.17f,0.0f},
    {1986.71f, -2.74f,325.17f,0.0f},
    {2003.67f,-25.73f,325.07f,0.0f},
    {1983.82f,-48.92f,324.70f,0.0f},
    {1961.22f,-12.52f,325.02f,0.0f},
    {1972.70f, -4.15f,324.89f,0.0f},
    {1998.22f,-10.92f,325.11f,0.0f},
    {1998.22f,-40.10f,324.89f,0.0f},
    {1969.66f,-46.10f,324.87f,0.0f},
    {1959.70f,-37.28f,325.11f,0.0f}
};

const Position TentaclesPos[22] =
{
    {1986.53f, 14.69f,328.08f,4.44f},
    {1974.22f, 17.11f,327.86f,4.56f},
    {1956.55f,  0.83f,326.81f,5.19f},
    {1928.61f,-37.30f,327.74f,0.30f},
    {1939.52f,-45.68f,327.14f,0.26f},
    {1953.44f,-62.17f,327.49f,0.85f},
    {1976.65f,-76.02f,328.89f,1.48f},
    {1993.38f,-61.91f,327.60f,1.27f},
    {2016.65f,-52.52f,327.77f,2.70f},
    {2026.97f,-28.09f,327.98f,3.32f},
    {2022.59f,-16.85f,327.59f,3.37f},
    {1938.22f,-10.54f,328.19f,5.99f},
    {1944.06f,-38.17f,326.84f,0.36f},
    {1973.28f,-62.51f,327.32f,1.44f},
    {1999.19f,-57.96f,327.34f,2.04f},
    {2017.89f,-25.34f,327.12f,3.14f},
    {2000.26f,  4.49f,326.98f,4.15f},
    {2006.91f,-13.70f,326.03f,3.80f},
    {2007.72f,  3.27f,327.28f,4.02f},
    {2002.52f, 16.73f,328.80f,4.07f},
    {1974.55f,  9.30f,326.85f,4.65f},
    {1945.29f,-25.78f,327.12f, 0.0f}
};

const Position SanityWellPos[10] =
{
    {2008.38f,35.41f,331.251f,0.0f},
    {1990.63f,50.35f,332.041f,0.0f},
    {1973.40f,41.09f,330.989f,0.0f},
    {1973.12f,-90.27f,330.14f,0.0f},
    {1994.26f,-96.62f,330.62f,0.0f},
    {2005.41f,-82.88f,329.50f,0.0f},
    {2042.09f,-41.70f,329.12f,0.0f},
    {1918.06f,16.50f,330.970f,0.0f},
    {1899.59f,-4.87f,332.137f,0.0f},
    {1897.75f,-48.24f,332.35f,0.0f}
};

const Position SaraLocation = {1980.28f, -25.58f, 325.00f, M_PI};
#define GOSSIP_KEEPER_HELP_EN   "Lend us your aid, keeper. Together we shall defeat Yogg-Saron."
#define GOSSIP_KEEPER_HELP_DE   "Bitte W\303\244chter, helfen sie uns im Kampf gegen Yogg-Saron"
Phases phase;

/*------------------------------------------------------*
 *                        Sara                          *
 *------------------------------------------------------*/

class boss_sara : public CreatureScript
{
public:
    boss_sara() : CreatureScript("boss_sara") { }

    struct boss_saraAI : public BossAI
    {
        boss_saraAI(Creature *creature) : BossAI(creature, BOSS_YOGGSARON)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            me->SetFlying(true);
            wipe = false;
        }

        void InitializeAI()
        {
            if (!instance || static_cast<InstanceMap*>(me->GetMap())->GetScriptId() != GetScriptId(IUUScriptName))
                me->IsAIEnabled = false;
            else if (!me->isDead())
                Reset();
        }
    
        void Reset()
        {
            if (instance)
            {
                instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_SANITY);
                // Reset Keepers
                for (uint8 data = DATA_YS_FREYA; data <= DATA_YS_HODIR; ++data)
                {
                    if (Creature *creature = Creature::GetCreature((*me), instance->GetData64(data)))
                    {
                        if (creature->HasAura(SPELL_KEEPER_ACTIVE))
                        {
                            creature->AI()->EnterEvadeMode();
                            creature->AddAura(SPELL_KEEPER_ACTIVE, creature);
                        }
                    }
                }
                // Reset Yogg-Saron
                for (uint8 data = DATA_YOGGSARON_BRAIN; data <= BOSS_YOGGSARON; ++data)
                {
                    if (Creature *creature = Creature::GetCreature((*me), instance->GetData64(data)))
                        creature->AI()->EnterEvadeMode();
                }
                Map::PlayerList const &players = instance->instance->GetPlayers();
                for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                {
                    Player* player = itr->getSource();
                    if (!player)
                        continue;
                        
                    // Phase One wipe
                    if (wipe && phase == PHASE_1)
                    {
                        if (Creature* voice = me->SummonCreature(NPC_YOGG_SARON_VOICE,me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),0,TEMPSUMMON_TIMED_DESPAWN,1000))
                            DoScriptText(WHISP_SARA_INSANITY, voice, player);
                    }
                    // Kills insane players
                    if (player->HasAura(SPELL_INSANE))
                        me->Kill(player, true);                
                }
            }
            me->RemoveAurasDueToSpell(SPELL_SARA_TRANSFORMATION);
            me->RemoveAurasDueToSpell(SPELL_SARA_SHADOWY_BARRIER);
            me->RemoveAurasDueToSpell(SPELL_SHATTERED_ILLUSION); 
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->SetVisible(true);
            me->setFaction(35);
            me->GetMotionMaster()->MoveTargetedHome();
            encountertimer = 0;
            helpTimer = 10000;
            phase = PHASE_NULL;
            _Reset();
            DespawnSummmons();
        }
    
        void JustReachedHome()
        {
            ominouslist.clear();
            for (uint8 n = 0; n < 5; n++)
            {
                Position pos;
                me->GetRandomNearPosition(pos, 50);
                if (Creature* OminousCloud = me->SummonCreature(NPC_OMINOUS_CLOUD, pos))
                    ominouslist.push_back(OminousCloud);
            }
        }
    
        void MoveInLineOfSight(Unit *who)
        {
            if (!me->isInCombat() && me->IsWithinDist(who, 40.0f) && who->GetTypeId() == TYPEID_PLAYER && !who->ToPlayer()->isGameMaster())
            {
                me->setFaction(16);
                me->SetInCombatWithZone();
                DoZoneInCombat();
            }
        }

        void DespawnSummmons()
        {
            DespawnCreatures(NPC_GUARDIAN_OF_YOGGSARON, 250);
            DespawnCreatures(NPC_SANITY_WELL, 250);
            DespawnCreatures(NPC_CRUSHER_TENTACLE, 250);
            DespawnCreatures(NPC_CONSTRICTOR_TENTACLE, 250);
            DespawnCreatures(NPC_CORRUPTOR_TENTACLE, 250);
            DespawnCreatures(NPC_DEATH_ORB, 250);
            DespawnCreatures(NPC_IMMORTAL_GUARDIAN, 250);
            DespawnCreatures(NPC_YOGG_SARON_BRAIN, 250);
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_creatures;
            GetCreatureListWithEntryInGrid(m_creatures, me, entry, distance);
	 
            if (m_creatures.empty())
                return;
	 
            for(std::list<Creature*>::iterator iter = m_creatures.begin(); iter != m_creatures.end(); ++iter)
            (*iter)->ForcedDespawn();
        }

        void ModifySanity(Player* target, int8 amount)
        {
            if(target && target->isAlive())
            {
                int32 newamount;
                if(Aura* aur = target->GetAura(SPELL_SANITY, GetGUID()))
                {
                    newamount = aur->GetStackAmount();
                    if(newamount > 0)
                        newamount += amount;

                    if(newamount > 100)
                        newamount = 100;

                    if(newamount <= 0)
                        target->RemoveAurasDueToSpell(SPELL_SANITY);
                    else
                        aur->SetStackAmount(newamount);
                }
            }
        }

        void SpellHitTarget(Unit* target, const SpellEntry* spell)
        {
            if(target && target->ToPlayer())
            {
                switch(spell->Id)
                {
                case SPELL_PSYCHOSIS:
                    ModifySanity(target->ToPlayer(),-12);
                    break;
                case SPELL_BRAIN_LINK_DAMAGE:
                    ModifySanity(target->ToPlayer(),-2);
                    break;
                case SPELL_MALADY_OF_MIND:
                    ModifySanity(target->ToPlayer(),-3);
                    break;
                }
            }
        }
    
        void EnterCombat(Unit *who)
        {
            DoScriptText(SAY_SARA_AGGRO_1, me);
            // Keepers activation
            if (instance)
            {
                Map::PlayerList const &players = instance->instance->GetPlayers();
                for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                {
                    Player* player = itr->getSource();
                    if (player)
                        me->SetAuraStack(SPELL_SANITY, player, 100);
                }
                for (uint8 data = DATA_YS_FREYA; data <= DATA_YS_HODIR; ++data)
                {
                    if (Creature *creature = Creature::GetCreature((*me), instance->GetData64(data)))
                    {
                        if (creature->HasAura(SPELL_KEEPER_ACTIVE))
                        {
                            creature->SetInCombatWith(me);
                            creature->AddThreat(me, 150.0f);
                        }
                    }
                }
                
                if (!ominouslist.empty())
                {
                    for (std::vector<Creature*>::iterator itr = ominouslist.begin(); itr != ominouslist.end(); ++itr)
                    {
                        Creature* target = *itr;
                        if (target)
                            target->AddThreat(me->getVictim(), 0.0f);
                    }
                }
            }
            me->SetInCombatWithZone();
            wipe = true;
            step = 0;
            phaseTimer = -1;
            JumpToNextStep(5000);
            phase = PHASE_1;
            extinguishAllLifeTimer = 15*60*1000;
            events.SetPhase(PHASE_1);
            events.ScheduleEvent(EVENT_FERVOR, urand(6000, 8000), 0, PHASE_1);
            events.ScheduleEvent(EVENT_BLESSING, urand(10000, 12000), 0, PHASE_1);
            events.ScheduleEvent(EVENT_ANGER, urand(15000, 20000), 0, PHASE_1);
            events.ScheduleEvent(EVENT_SUMMON_GUARDIAN, 0, 0, PHASE_1);
        }

        void ReceiveEmote(Player* pPlayer, uint32 emote)
        {
            if(phase >= 2)
            {
                if(emote == TEXTEMOTE_KISS)
                {
                    if (me->IsWithinLOS(pPlayer->GetPositionX(),pPlayer->GetPositionY(),pPlayer->GetPositionZ()) && me->IsWithinDistInMap(pPlayer,30.0f))
                    {
                        if(AchievementEntry const *achievKissAndMakeUp = GetAchievementStore()->LookupEntry(RAID_MODE(ACHIEVEMENT_KISS_AND_MAKE_UP_10,ACHIEVEMENT_KISS_AND_MAKE_UP_25)))
                            pPlayer->CompletedAchievement(achievKissAndMakeUp);
                    }
                }
            }
        }

        void JustDied(Unit *victim)
        {
            DespawnSummmons();
            if (instance)
            {
                if (encountertimer <= MAX_ENCOUNTER_TIME)
                    instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_HES_NO_GETTING_ANY_OLDER_10,ACHIEVEMENT_HES_NO_GETTING_ANY_OLDER_25));
            }
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
                case ACTION_ILLUSION_SARA_ADD:
                    if(!me->HasAura(SPELL_SHATTERED_ILLUSION))
                        me->AddAura(SPELL_SHATTERED_ILLUSION, me);
                    break;
                case ACTION_ILLUSION_SARA_REMOVE:
                    me->RemoveAurasDueToSpell(SPELL_SHATTERED_ILLUSION);
                    break;
            }
        }

        bool IsPlayerInBrainRoom(Unit* pPlayer)
        {
            return pPlayer->GetPositionZ() < 300;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;
            
            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if(me->HasAura(SPELL_SHATTERED_ILLUSION))
                return;

            if (extinguishAllLifeTimer <= diff)
            {
                if(Creature *yoggSaron = me->GetCreature(*me, instance->GetData64(BOSS_YOGGSARON)))
                    if(yoggSaron && yoggSaron->isAlive())
                        yoggSaron->AI()->DoAction(ACTION_BERSERK);
                    else
                        DoCastAOE(SPELL_EXTINGUISH_ALL_LIFE);
                extinguishAllLifeTimer = 30000;
            }
            else extinguishAllLifeTimer -= diff;
            
            if (phase == PHASE_1)
            {
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                    case EVENT_FERVOR:
                        DoScriptText(RAND(SAY_SARA_AGGRO_2,SAY_SARA_AGGRO_3), me);
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 80, true))
                                DoCast(target, SPELL_SARA_FERVOR);
                        events.ScheduleEvent(EVENT_FERVOR, urand(8000, 10000), 0, PHASE_1);
                        break;
                    case EVENT_BLESSING:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 80, true))
                                DoCast(target, SPELL_SARA_BLESSING);
                        events.ScheduleEvent(EVENT_BLESSING, urand(10000, 15000), 0, PHASE_1);
                        break;
                    case EVENT_ANGER:
                        if (Creature *pGuardian = me->FindNearestCreature(NPC_GUARDIAN_OF_YOGGSARON,50,true))
                            DoCast(pGuardian, SPELL_SARA_ANGER);
                        events.ScheduleEvent(EVENT_ANGER, urand(15000, 20000), 0, PHASE_1);
                        break;
                    case EVENT_SUMMON_GUARDIAN:
                        if (!ominouslist.empty())
                        {
                            std::vector<Creature*>::iterator itr = (ominouslist.begin()+rand()%ominouslist.size());
                            Creature* target = *itr;
                            if (target)
                                target->CastSpell(target, SPELL_SUMMON_GUARDIAN, true);
                        }
                        events.ScheduleEvent(EVENT_SUMMON_GUARDIAN, 8000 + urand(6000, 8000)*((float)me->GetHealth()/me->GetMaxHealth()), 0, PHASE_1);
                        break;
                    }
                }
            
                if (phaseTimer <= diff)
                {
                    switch (step)
                    {
                        case 1:
                            _EnterCombat();
                            step = 2;
                            break;
                        default:
                            break;
                    }
                }
                else
                    phaseTimer -= diff;
            }
            else if (phase == PHASE_2)
            {
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                        if(!me->HasAura(SPELL_SHATTERED_ILLUSION))
                        {
                        case EVENT_PSYCHOSIS:
                            if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 60, true))
                                if(!IsPlayerInBrainRoom(target))
                                    DoCast(target, SPELL_PSYCHOSIS);
                            events.ScheduleEvent(EVENT_PSYCHOSIS, urand(4000, 6000), 0, PHASE_2);
                            break;
                        case EVENT_MALADY_OF_THE_MIND:
                            DoScriptText(RAND(SAY_SARA_PHASE2_1, SAY_SARA_PHASE2_2), me);
                            if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 60, true))
                                if(!IsPlayerInBrainRoom(target))
                                    DoCast(target, SPELL_MALADY_OF_THE_MIND);
                            events.ScheduleEvent(EVENT_MALADY_OF_THE_MIND, urand(15000, 20000), 0, PHASE_2);
                            break;
                        case EVENT_BRAIN_LINK:
                            if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 60, true))
                                if(!IsPlayerInBrainRoom(target))
                                    DoCast(target, SPELL_BRAIN_LINK);
                            events.ScheduleEvent(EVENT_BRAIN_LINK, 30000, 0, PHASE_2);
                            break;
                        case EVENT_DEATH_RAY:
                            for (uint32 i = 0; i < 4; ++i)
                            {
                                if (Creature* Orb = me->SummonCreature(NPC_DEATH_ORB, DeathRayPos[rand()%12], TEMPSUMMON_TIMED_DESPAWN, 17000))
                                    Orb->CastSpell(me, SPELL_DEATH_RAY_WARNING_VISUAL, true);
                            }
                            events.ScheduleEvent(EVENT_DEATH_RAY, 20000, 0, PHASE_2);
                            break;
                        }
                    }
                }
            
                if (phaseTimer <= diff)
                {
                    switch (step)
                    {
                        case 1:
                            DoScriptText(SAY_PHASE2_1, me);
                            DoCast(me, SPELL_SARA_SHADOWY_BARRIER);
                            me->HandleEmoteCommand(EMOTE_ONESHOT_TALK);
                            if (!ominouslist.empty())
                            {
                                for (std::vector<Creature*>::iterator itr = ominouslist.begin(); itr != ominouslist.end(); ++itr)
                                {
                                    Creature* target = *itr;
                                    if (target)
                                        target->ForcedDespawn();
                                }
                            }
                            JumpToNextStep(5000);
                            break;
                        case 2:
                            DoScriptText(SAY_PHASE2_2, me);
                            JumpToNextStep(4000);
                            break;
                        case 3:
                            DoScriptText(SAY_PHASE2_3, me);
                            JumpToNextStep(5000);
                            break;
                        case 4:
                            DoScriptText(SAY_PHASE2_4, me);
                            JumpToNextStep(3000);
                            break;
                        case 5:
                            me->AddAura(SPELL_SARA_TRANSFORMATION,me);
                            me->setFaction(16);
                            events.SetPhase(PHASE_2);
                            DoZoneInCombat();
                            me->GetMotionMaster()->MoveJump(me->GetPositionX(),me->GetPositionY(),me->GetPositionZ()+20, 10, 15);
                            me->SummonCreature(NPC_YOGG_SARON,me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),3.14f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 600000);
                            JumpToNextStep(5000);
                            break;
                        case 6:
                            DoZoneInCombat();
                            me->SetInCombatWithZone();
                            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                            events.ScheduleEvent(EVENT_PSYCHOSIS, 0, 0, PHASE_2);
                            events.ScheduleEvent(EVENT_MALADY_OF_THE_MIND, urand(4000, 6000), 0, PHASE_2);
                            events.ScheduleEvent(EVENT_BRAIN_LINK, 30000, 0, PHASE_2);
                            events.ScheduleEvent(EVENT_DEATH_RAY, 25000, 0, PHASE_2);
                            step = 7;
                            break;
                        default:
                            break;
                    }
                }
                else
                    phaseTimer -= diff;
            }
        }
    
        void DamageTaken(Unit *who, uint32 &damage)
        {
            if (phase == PHASE_1 && damage >= me->GetHealth())
            {
                damage = 0;
                me->SetHealth(me->GetMaxHealth());
                phase = PHASE_2;
                step = 0;
                phaseTimer = -1;
                JumpToNextStep(100);
            }
        }
    
        void JumpToNextStep(uint32 uiTimer)
        {
            phaseTimer = uiTimer;
            ++step;
        }

    private:
        std::vector<Creature *> ominouslist;
        uint32 phaseTimer;
        uint32 step;
        uint32 encountertimer;
        uint32 extinguishAllLifeTimer;
        uint32 helpTimer;
        bool wipe;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_saraAI (creature);
    }
};

/*------------------------------------------------------*
 *                      Yogg-Saron                      *
 *------------------------------------------------------*/

class boss_yoggsaron : public CreatureScript
{
public:
    boss_yoggsaron() : CreatureScript("boss_yoggsaron") { }

    struct boss_yoggsaronAI : public BossAI
    {
        boss_yoggsaronAI(Creature *creature) : BossAI(creature, BOSS_YOGGSARON), Summons(me)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
            me->HandleEmoteCommand(EMOTE_ONESHOT_EMERGE);
            DoCast(me, SPELL_SHADOWY_BARRIER_LARGE, true);
            DoCast(me, SPELL_EMERGE, true);
            DoScriptText(SAY_PHASE2_5, me);
            bCreateValanyr = false;
        }

        void InitializeAI()
        {
            if (!instance || static_cast<InstanceMap*>(me->GetMap())->GetScriptId() != GetScriptId(IUUScriptName))
                me->IsAIEnabled = false;
            else if (!me->isDead())
                Reset();
        }
    
        void Reset()
        {
            events.Reset();
            summons.DespawnAll();
            spawnedTentacles = 0;

            insane = false;
            defeaningRoar = false;
            keeperscount = false;

            DespawnSummmons();
        }
    
        void EnterCombat(Unit *who)
        {
            _EnterCombat();
            DoZoneInCombat();
            insaneTimer = 4000;
            illusionCount = 0;
            randomizeIllusion();
            events.SetPhase(PHASE_2);
            events.ScheduleEvent(EVENT_TENTACLES, 1000, 0, PHASE_2);
            events.ScheduleEvent(EVENT_ILLUSION, 60000, 0, PHASE_2);
            // Spawn Brain of Yogg-Saron
            me->SummonCreature(NPC_YOGG_SARON_BRAIN, 1980.70f, -25.16f, 262.77f, 3.1415f);

            if (Creature *hodir = Creature::GetCreature((*me), instance->GetData64(DATA_YS_HODIR)))
                if (hodir->HasAura(SPELL_KEEPER_ACTIVE))
                    keeperscount++;
            if (Creature *thorim = Creature::GetCreature((*me), instance->GetData64(DATA_YS_THORIM)))
                if (thorim->HasAura(SPELL_KEEPER_ACTIVE))
                    keeperscount++;
            if (Creature *mimiron = Creature::GetCreature((*me), instance->GetData64(DATA_YS_MIMIRON)))
                if (mimiron->HasAura(SPELL_KEEPER_ACTIVE))
                    keeperscount++;
            if (Creature *freya = Creature::GetCreature((*me), instance->GetData64(DATA_YS_FREYA)))
                if (freya->HasAura(SPELL_KEEPER_ACTIVE))
                    if (freya->HasAura(SPELL_KEEPER_ACTIVE))
                    keeperscount++;
        }

        void JustSummoned(Creature* summoned)
		{
			switch(summoned->GetEntry())
			{
				case NPC_CRUSHER_TENTACLE:
					summoned->CastSpell(summoned, SPELL_EMERGE, false);
                    summoned->SetReactState(REACT_PASSIVE);
					break;
				case NPC_CONSTRICTOR_TENTACLE:
					summoned->CastSpell(summoned, SPELL_EMERGE, false);
                    summoned->SetReactState(REACT_PASSIVE);
					break;
                case NPC_CORRUPTOR_TENTACLE:
					summoned->CastSpell(summoned, SPELL_EMERGE, false);
                    summoned->SetReactState(REACT_PASSIVE);
					break;
                case NPC_GUARDIAN_OF_YOGGSARON:
                    summoned->CastSpell(summoned, SPELL_TELEPORT_VISUAL, false);
                    summoned->SetReactState(REACT_PASSIVE);
                    break;
			}
			Summons.Summon(summoned);
		}

        void SpellHitTarget(Unit* target, const SpellEntry* spell)
        {
            if(!instance) return;

            if(target && target->ToPlayer())
            {
                switch(spell->Id)
                {
                case SPELL_LUNATIC_GAZE_EFFECT:
                    if(Creature* cSara = me->GetCreature(*me,instance->GetData64(DATA_SARA)))
                        CAST_AI(boss_sara::boss_saraAI,cSara->AI())->ModifySanity(target->ToPlayer(),-4);
                    break;
                }
            }
        }

        void SpellHit(Unit* caster, const SpellEntry* spell)
        {
            if(spell->Id == SPELL_IN_THE_MAWS_OF_THE_OLD_GOD)
            {
                bCreateValanyr = true;
            }
        }

        void CreateValanyr()
        {
            if(!bCreateValanyr)
                return;

            if(me->GetMap() && me->GetMap()->IsDungeon())
            {
                Map::PlayerList const& players = me->GetMap()->GetPlayers();
                if (!players.isEmpty())
                    for(Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                        if (Player* plr = itr->getSource())
                            if(plr->isAlive() && plr->GetQuestStatus(13629) == QUEST_STATUS_INCOMPLETE)
                            {
                                if(!plr->HasItemCount(45897,1,true))
                                    plr->AddItem(45897,1);
                            }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;
            
            events.Update(diff);

            if (me->isSummon())
            {
                me->AI()->DoZoneInCombat();
                me->SetUInt64Value(UNIT_FIELD_TARGET, 0);
            }
        
            if (insaneTimer <= diff)
            {
                if (instance)
                {
                    // Sanity Check
                    Map::PlayerList const &players = instance->instance->GetPlayers();
                    for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                    {
                        Player* player = itr->getSource();

                        if (!player)
                            continue;

                        if (player->isDead() || player->HasAura(SPELL_SANITY) || player->HasAura(SPELL_INSANE))
                            continue;
                        
                        if (Creature* voice = me->SummonCreature(NPC_YOGG_SARON_VOICE,me->GetPositionX(),me->GetPositionY(),me->GetPositionZ(),0,TEMPSUMMON_TIMED_DESPAWN,1000))
                            DoScriptText(RAND(WHISP_INSANITY_1, WHISP_INSANITY_2), voice, player);

                        me->AddAura(SPELL_INSANE, player);
                        me->AddAura(SPELL_INSANE_2, player);
                        insane = true;
                    }
                }
                insaneTimer = 4000;
            }
            else insaneTimer -= diff;
            
            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if(me->HasAura(SPELL_SHATTERED_ILLUSION))
                return;
            
            if (phase == PHASE_2)
            {
                while(uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                    case EVENT_TENTACLES:
                        spawnTentacles();
                        events.ScheduleEvent(EVENT_TENTACLES, urand(25000, 30000), 0, PHASE_2);
                        break;
                    case EVENT_ILLUSION:
                        DoScriptText(SAY_VISION, me);
                        DoScriptText(EMOTE_PORTALS, me);
                        OpenIllusion();
                        events.ScheduleEvent(EVENT_ILLUSION, urand(80000, 85000), 0, PHASE_2);
                        break;
                    }
                }
            }
            else
            {
                while(uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                        case EVENT_LUNATIC_GAZE:
                            DoScriptText(SAY_LUNATIC_GAZE, me);
                            DoCast(me, RAID_MODE(SPELL_LUNATIC_GAZE_P3, SPELL_LUNATIC_GAZE_P3));
                            events.ScheduleEvent(EVENT_LUNATIC_GAZE, 12000, 0, PHASE_3);
                            break;
                        case EVENT_IMMORTAL_GUARDIAN:
                            me->SummonCreature(NPC_IMMORTAL_GUARDIAN, TentaclesPos[rand()%22], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 10000);
                            events.ScheduleEvent(EVENT_IMMORTAL_GUARDIAN, 10000, 0, PHASE_3);
                            break;
                        case EVENT_SHADOW_BEACON:
                            if (Creature *pImmortal = me->FindNearestCreature(NPC_IMMORTAL_GUARDIAN,80,true))
                            {
                                DoScriptText(EMOTE_EMPOWERING, me);
                                me->AddAura(SPELL_SHADOW_BEACON, pImmortal);
                            }
                            events.ScheduleEvent(EVENT_SHADOW_BEACON, 45000, 0, PHASE_3);
                            break;
                        case EVENT_DEAFENING_ROAR:
                            if(defeaningRoar)
                            {
                                DoScriptText(SAY_DEAFENING_ROAR, me);
                                DoCast(me, SPELL_DEAFENING_ROAR);
                            }
                            events.ScheduleEvent(EVENT_DEAFENING_ROAR, urand(20000, 25000), 0, PHASE_3);
                            break;
                    }
                }
            }
        }
    
        void JustDied(Unit *victim)
        {
            DoScriptText(SAY_DEATH, me);
            DespawnSummmons();
            CreateValanyr();
            _JustDied();
        
            if (Unit *sara = me->ToTempSummon()->GetSummoner())
                sara->ToCreature()->DisappearAndDie();
        
            if (instance)
            {
                if (keeperscount == 0) // 0 Kepper alone in the darkness
                    instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_ALONE_IN_THE_DARKNESS_10,ACHIEVEMENT_ALONE_IN_THE_DARKNESS_25));
                if (keeperscount == 1) // 1 Kepper one light in the darkness
                    instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_ONE_LIGHT_IN_THE_DARKNESS_10,ACHIEVEMENT_ONE_LIGHT_IN_THE_DARKNESS_25));
                if (keeperscount == 2) // 2 Keepers two lights in the darkness
                    instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_TWO_LIGHTS_IN_THE_DARKNESS_10,ACHIEVEMENT_TWO_LIGHTS_IN_THE_DARKNESS_25));
                if (keeperscount == 3) // 3 Keepers three lights in the darkness
                    instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_THREE_LIGHTS_IN_THE_DARKNESS_10,ACHIEVEMENT_THREE_LIGHTS_IN_THE_DARKNESS_25));
                if (!insane)
                    instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_DRIVE_ME_CRAZY_10,ACHIEVEMENT_DRIVE_ME_CRAZY_25));

                instance->DoRemoveAurasDueToSpellOnPlayers(SPELL_SANITY);
            }
        }

        void DespawnSummmons()
        {
            DespawnCreatures(NPC_GUARDIAN_OF_YOGGSARON, 250);
            DespawnCreatures(NPC_SANITY_WELL, 250);
            DespawnCreatures(NPC_CRUSHER_TENTACLE, 250);
            DespawnCreatures(NPC_CONSTRICTOR_TENTACLE, 250);
            DespawnCreatures(NPC_CORRUPTOR_TENTACLE, 250);
            DespawnCreatures(NPC_DEATH_ORB, 250);
            DespawnCreatures(NPC_IMMORTAL_GUARDIAN, 250);
            DespawnCreatures(NPC_YOGG_SARON_BRAIN, 250);
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_creatures;
            GetCreatureListWithEntryInGrid(m_creatures, me, entry, distance);
	 
            if (m_creatures.empty())
            return;
	 
            for(std::list<Creature*>::iterator iter = m_creatures.begin(); iter != m_creatures.end(); ++iter)
            (*iter)->ForcedDespawn();
        }
    
        void randomizeIllusion()
        {
            illusionOrder[0] = 0; // Chamber of the Aspects Illusion
            illusionOrder[1] = 1; // Icecrown Illusion
            illusionOrder[2] = 2; // Stormwind Illusion
        
            //Swaps the entire array
            for(uint8 n = 0; n < 3; n++)
            {
                uint8 random = rand() % 2;
                uint8 temp = illusionOrder[random];
                illusionOrder[random] = illusionOrder[n];
                illusionOrder[n] = temp;
            }
        }

        void OpenIllusion()
        {
            switch(illusionCount)
            {
                case 0: illusionHandler(illusionOrder[0]); break;
                case 1: illusionHandler(illusionOrder[1]); break;
                case 2: illusionHandler(illusionOrder[2]); break;
            }

            illusionCount++;
            if(illusionCount > 2)
            {
                illusionCount = 0;
            }
        }

        void illusionHandler(uint8 illusion)
        {
            if (instance)
            {
                switch(illusion)
                {
                    case 0: // Chamber of the Aspects Illusion
                        if (Creature *brain = Creature::GetCreature((*me), instance->GetData64(DATA_YOGGSARON_BRAIN)))
                        {
                            brain->AI()->Reset();
                            brain->AI()->DoAction(ACTION_CHAMBER_ILLUSION);
                            for (uint32 i = 0; i <(uint32) RAID_MODE(4, 10); ++i)
                                me->SummonCreature(NPC_PORTAL_CHAMBER, PortalPos[i], TEMPSUMMON_TIMED_DESPAWN, 10000);
                        }
                        break;
                    case 1: // Icecrown Illusion
                        if (Creature *brain = Creature::GetCreature((*me), instance->GetData64(DATA_YOGGSARON_BRAIN)))
                        {
                            brain->AI()->Reset();
                            brain->AI()->DoAction(ACTION_ICECROWN_ILLUSION);
                            for (uint32 i = 0; i <(uint32) RAID_MODE(4, 10); ++i)
                                me->SummonCreature(NPC_PORTAL_ICECROWN, PortalPos[i], TEMPSUMMON_TIMED_DESPAWN, 10000);

                        }
                        break;
                    case 2: // Stormwind Illusion
                        if (Creature *brain = Creature::GetCreature((*me), instance->GetData64(DATA_YOGGSARON_BRAIN)))
                        {
                            brain->AI()->Reset();
                            brain->AI()->DoAction(ACTION_STORMWIND_ILLUSION);
                            for (uint32 i = 0; i <(uint32) RAID_MODE(4, 10); ++i)
                                me->SummonCreature(NPC_PORTAL_STORMWIND, PortalPos[i], TEMPSUMMON_TIMED_DESPAWN, 10000);
                        }
                        break;
                }
            }
        }

        void spawnTentacles()
        {
            switch(spawnedTentacles)
            {
                case 0:
                    me->SummonCreature(NPC_CRUSHER_TENTACLE, TentaclesPos[rand()%22]);
                case 1:
                case 2:
                    me->SummonCreature(NPC_CORRUPTOR_TENTACLE, TentaclesPos[rand()%22]);
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 60, true))
                    {
                        Position pos;
                        pTarget->GetPosition(&pos);
                        if (Creature* Constrict = me->SummonCreature(NPC_CONSTRICTOR_TENTACLE, pos))
                            pTarget->EnterVehicle(Constrict, 0);
                    }
                    break;
            }

            spawnedTentacles++;
            if(spawnedTentacles > 2)
            {
                spawnedTentacles = 0;
            }
        }
    
        void LootMode()
        {
            switch (keeperscount)
            {
            case 0:
                me->AddLootMode(LOOT_MODE_HARD_MODE_4);
                break;
            case 1:
                me->AddLootMode(LOOT_MODE_HARD_MODE_3);
                break;
            case 2:
                me->AddLootMode(LOOT_MODE_HARD_MODE_2);
                break;
            case 3:
                me->AddLootMode(LOOT_MODE_HARD_MODE_1);
                break;
            case 4:
                me->SetLootMode(LOOT_MODE_DEFAULT);
                break;
            }
        }
    
        void DoAction(const int32 action)
        {
            switch (action)
            {
                case ACTION_YOGGSARON_PHASE_3:
                    LootMode();
                    if (Unit *sara = me->ToTempSummon()->GetSummoner())
                        sara->SetVisible(false);
                    DoScriptText(SAY_PHASE3, me);
                    me->RemoveAurasDueToSpell(SPELL_SHADOWY_BARRIER_LARGE);
                    DoCast(me, SPELL_YOGG_SARON_TRANSFORMATION, true);
                    events.SetPhase(PHASE_3);
                    events.ScheduleEvent(EVENT_LUNATIC_GAZE, 12000, 0, PHASE_3);
                    events.ScheduleEvent(EVENT_IMMORTAL_GUARDIAN, 8000, 0, PHASE_3);
                    events.ScheduleEvent(EVENT_SHADOW_BEACON, 45000, 0, PHASE_3);
                    if (Is25ManRaid() && keeperscount <= 3)
                        events.ScheduleEvent(EVENT_DEAFENING_ROAR, urand(5000, 7000), 0, PHASE_3);
                    break;
                case ACTION_BERSERK:
                    DoCastAOE(SPELL_EXTINGUISH_ALL_LIFE);
                    break;
                case ACTION_ILLUSION_YOGG_SARON_ADD:
                    if(!me->HasAura(SPELL_SHATTERED_ILLUSION))
                        me->AddAura(SPELL_SHATTERED_ILLUSION, me);

                    for(std::list<uint64>::iterator itr = Summons.begin(); itr != Summons.end(); ++itr)
                    {
                        if(Creature* temp = Creature::GetCreature(*me,*itr))
                        {
                            switch(temp->GetEntry())
                            {
                            case NPC_CONSTRICTOR_TENTACLE:
                            case NPC_CORRUPTOR_TENTACLE:
                            case NPC_CRUSHER_TENTACLE:
                                    me->AddAura(SPELL_SHATTERED_ILLUSION,temp);
                                break;
                            }
                        }
                    }
                    break;
                case ACTION_ILLUSION_YOGG_SARON_REMOVE:
                    if(me->HasAura(SPELL_SHATTERED_ILLUSION))
                        me->RemoveAurasDueToSpell(SPELL_SHATTERED_ILLUSION);

                    for(std::list<uint64>::iterator itr = Summons.begin(); itr != Summons.end(); ++itr)
                    {
                        if(Creature* temp = Creature::GetCreature(*me,*itr))
                        {
                            switch(temp->GetEntry())
                            {
                            case NPC_CONSTRICTOR_TENTACLE:
                            case NPC_CORRUPTOR_TENTACLE:
                            case NPC_CRUSHER_TENTACLE:
                                    temp->RemoveAurasDueToSpell(SPELL_SHATTERED_ILLUSION);
                                break;
                            }
                        }
                    }
                    break;
            } 
        }
    private:
        uint32 insaneTimer;
        uint32 extinguishAllLifeTimer;
        uint8 illusionOrder[3];
        uint8 illusionCount;
        uint8 keeperscount;
        uint8 spawnedTentacles;
        bool insane;
        bool defeaningRoar;
        bool bCreateValanyr;
        SummonList Summons;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_yoggsaronAI (creature);
    }
};

/*------------------------------------------------------*
 *                 Brain of Yogg-Saron                  *
 *------------------------------------------------------*/

class boss_brain_yoggsaron : public CreatureScript
{
public:
    boss_brain_yoggsaron() : CreatureScript("boss_brain_yoggsaron") { }

    struct boss_brain_yoggsaronAI : public BossAI
    {
        boss_brain_yoggsaronAI(Creature *creature) : BossAI(creature, BOSS_YOGGSARON)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            me->SetReactState(REACT_PASSIVE);
            me->SetFlying(true);
        }
    
        void Reset()
        {
            events.Reset();
            summons.DespawnAll();
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            tentacleCount = 0;
            illusion = 0;
            ConstrictorTentacleGUID = 0;
            CrusherTentacleGUID = 0;
            CorrupterTentacleGUID = 0;
            if (instance)
            {
                for (uint32 i = GOB_CHAMBER_DOOR; i <= GOB_STORMWIND_DOOR; i++)
                {
                    if (GameObject* Door = me->FindNearestGameObject(i, 60))
                        Door->SetGoState(GO_STATE_READY);
                }
            }
        }
    
        void EnterCombat(Unit *who)
        {
            _EnterCombat();
            DoZoneInCombat();
        }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;
            
            if (HealthBelowPct(31) && phase == PHASE_2)
            {
                // Enter Phase 3
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
                me->InterruptNonMeleeSpells(true);
                DoCast(me, SPELL_BRAIN_HURT, true);
                phase = PHASE_3;
                if (Unit* yoggSaron = me->ToTempSummon()->GetSummoner())
                {
                    yoggSaron->ToCreature()->AI()->DoAction(ACTION_YOGGSARON_PHASE_3);
                    yoggSaron->ToCreature()->AI()->DoAction(ACTION_ILLUSION_YOGG_SARON_REMOVE);
                }
                if (Creature *Sara = Creature::GetCreature((*me), instance->GetData64(DATA_SARA)))
                    Sara->AI()->DoAction(ACTION_ILLUSION_SARA_REMOVE);
            }

            if(me->HasAura(SPELL_INDUCE_MADNESS))
            {
                if (RemoveIllusionTimer <= diff)
                {
                    if (Unit* yoggSaron = me->ToTempSummon()->GetSummoner())
                        yoggSaron->ToCreature()->AI()->DoAction(ACTION_ILLUSION_YOGG_SARON_REMOVE);
                    if (Creature *Sara = Creature::GetCreature((*me), instance->GetData64(DATA_SARA)))
                        Sara->AI()->DoAction(ACTION_ILLUSION_SARA_REMOVE); 
                    RemoveIllusionTimer = 9999999;
                }
                else RemoveIllusionTimer -= diff;
            }
        }

        bool IsPlayerInBrainRoom(Player* pPlayer)
        {
            return pPlayer->GetPositionZ() < 300;
        }

        void SpellHitTarget(Unit *target, const SpellEntry *spell)
        {
            if(!target->ToPlayer())
                return;

            if(spell->Id == SPELL_INDUCE_MADNESS)
            {
                if(IsPlayerInBrainRoom(target->ToPlayer()))
                    target->RemoveAurasDueToSpell(SPELL_SANITY);
            }
        }
    
        void DoAction(const int32 action)
        {
            switch (action)
            {
                case ACTION_TENTACLE_COUNT:
                    tentacleCount++;
                    if (tentacleCount == 8)
                    {
                        DoScriptText(EMOTE_OPEN_CHAMBER, me);
                        if (Unit* yoggSaron = me->ToTempSummon()->GetSummoner())
                            yoggSaron->ToCreature()->AI()->DoAction(ACTION_ILLUSION_YOGG_SARON_ADD);
                        if (Creature *Sara = Creature::GetCreature((*me), instance->GetData64(DATA_SARA)))
                            Sara->ToCreature()->AI()->DoAction(ACTION_ILLUSION_SARA_ADD); 
                        me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        if (GameObject* pDoor = me->FindNearestGameObject(GOB_CHAMBER_DOOR + illusion, 60))
                            pDoor->SetGoState(GO_STATE_ACTIVE); 
                    }
                    break;
                case ACTION_CHAMBER_ILLUSION:
                    illusion = 0;
                    for (uint32 i = 0; i < 16; i++)
                        me->SummonCreature(chamberLocations[i].entry,chamberLocations[i].x,chamberLocations[i].y,chamberLocations[i].z,chamberLocations[i].o);
                    DoCast(SPELL_INDUCE_MADNESS);
                    RemoveIllusionTimer = 60000;
                    break;
                case ACTION_ICECROWN_ILLUSION:
                    illusion = 1;
                    for (uint32 i = 0; i < 14; i++)
                        me->SummonCreature(icecrownLocations[i].entry,icecrownLocations[i].x,icecrownLocations[i].y,icecrownLocations[i].z,icecrownLocations[i].o);
                    DoCast(SPELL_INDUCE_MADNESS);
                    RemoveIllusionTimer = 60000;
                    break;
                case ACTION_STORMWIND_ILLUSION:
                    illusion = 2;
                    for (uint32 i = 0; i < 14; i++)
                        me->SummonCreature(stormwindLocations[i].entry,stormwindLocations[i].x,stormwindLocations[i].y,stormwindLocations[i].z,stormwindLocations[i].o);
                    DoCast(SPELL_INDUCE_MADNESS);
                    RemoveIllusionTimer = 60000;
                    break;
            }
        }

    private:
        InstanceScript* instance;
        uint32 tentacleCount;
        uint32 illusion;
        uint32 RemoveIllusionTimer;
        uint64 ConstrictorTentacleGUID;
        uint64 CrusherTentacleGUID;
        uint64 CorrupterTentacleGUID;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_brain_yoggsaronAI (creature);
    }
};

class npc_ominous_cloud : public CreatureScript
{
public:
    npc_ominous_cloud() : CreatureScript("npc_ominous_cloud") { }

    struct npc_ominous_cloudAI : public ScriptedAI
    {
        npc_ominous_cloudAI(Creature* creature) : ScriptedAI(creature), summons(me)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
        }
    
        void Reset()
        {
            summons.DespawnAll();
            summoncooldown = false;
            cooldowntimer = 3000;
            me->SetReactState(REACT_DEFENSIVE);
            me->GetMotionMaster()->MoveRandom(50);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
            DoCast(me, SPELL_OMINOUS_CLOUD_VISUAL, true);
        }

        void MoveInLineOfSight(Unit *who)
        {
            if (!summoncooldown && me->IsWithinDistInMap(who, 6.0f) && who->ToPlayer() && !who->ToPlayer()->isGameMaster())
            {
                DoCast(me, SPELL_SUMMON_GUARDIAN, true);
                summoncooldown = true;
                cooldowntimer = 3000;
            }
        }
    
        void UpdateAI(const uint32 diff)
        {
            if(cooldowntimer <= diff)
            {
                summoncooldown = false;
                cooldowntimer = 5000;
            }
            else cooldowntimer -= diff;
        }
    
        void JustSummoned(Creature *summon)
        {
            summons.Summon(summon);
        }

    private:
        InstanceScript* instance;
        SummonList summons;
        uint32 cooldowntimer;
        bool summoncooldown;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ominous_cloudAI (creature);
    }
};

class npc_guardian_yoggsaron : public CreatureScript
{
public:
    npc_guardian_yoggsaron() : CreatureScript("npc_guardian_yoggsaron") { }

    struct npc_guardian_yoggsaronAI : public ScriptedAI
    {
        npc_guardian_yoggsaronAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
        }

        void Reset()
        {
            DoZoneInCombat();
            darkvolleyTimer = 8000;
        }

        void JustDied(Unit *victim)
        {
            DoCast(me, RAID_MODE(SPELL_SHADOW_NOVA_10, SPELL_SHADOW_NOVA_25), true);
            if (Creature *sara = me->FindNearestCreature(NPC_SARA, 2, true))
                if (phase == PHASE_1)
                    me->DealDamage(sara, 25000);
            me->ForcedDespawn(3000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (darkvolleyTimer <= diff)
            {
                DoCast(SPELL_DARK_VOLLEY);
                darkvolleyTimer = urand(10000, 15000);
            }
            else darkvolleyTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* instance;
        uint32 darkvolleyTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_guardian_yoggsaronAI (creature);
    }
};

class npc_death_orb : public CreatureScript
{
public:
    npc_death_orb() : CreatureScript("npc_death_orb") { }

    struct npc_death_orb_AI : public ScriptedAI
    {
        npc_death_orb_AI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetReactState(REACT_PASSIVE);
            me->SetDisplayId(16946);
        }

        void Reset()
        {
            RayTimer = 5000;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (RayTimer <= 0)
            {
                if (Creature* Sara = me->FindNearestCreature(NPC_SARA, 60))
                {
                    DoCast(Sara, SPELL_DEATH_RAY_DAMAGE_VISUAL, true);
                    DoCast(me, SPELL_DEATH_RAY_DAMAGE, true);
                    me->GetMotionMaster()->MoveRandom(25.0f);
                }
                RayTimer = 15000;
            }
            else RayTimer -= diff;

        }

    private:
        InstanceScript* instance;
        uint32 RayTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_death_orb_AI (pCreature);
    }
};

class npc_laughing_skull : public CreatureScript
{
public:
    npc_laughing_skull() : CreatureScript("npc_laughing_skull") { }

    struct npc_laughing_skullAI : public Scripted_NoMovementAI
    {
        npc_laughing_skullAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
            me->SetReactState(REACT_PASSIVE);
            me->AddAura(SPELL_LUNATIC_GAZE, me);
        }

        void SpellHitTarget(Unit* target, const SpellEntry* spell)
        {
            if(!instance) 
                return;

            if(target && target->ToPlayer())
            {
                switch(spell->Id)
                {
                case SPELL_LS_LUNATIC_GAZE_EFFECT:
                    if(Creature* cSara = me->GetCreature(*me,instance->GetData64(DATA_SARA)))
                        CAST_AI(boss_sara::boss_saraAI,cSara->AI())->ModifySanity(target->ToPlayer(),-2);
                    break;
                }
            }
        }

    private:
        InstanceScript* instance;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_laughing_skullAI (creature);
    }
};

class npc_illusion : public CreatureScript
{
public:
    npc_illusion() : CreatureScript("npc_illusion") { }

    struct npc_illusionAI : public Scripted_NoMovementAI
    {
        npc_illusionAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
        }
    
        void DamageTaken(Unit *attacker, uint32 &damage)
        {
            if (me->GetEntry() != NPC_INFLUENCE_TENTACLE)
            {
                me->UpdateEntry(NPC_INFLUENCE_TENTACLE);
                DoCast(me, SPELL_GRIM_REPRISAL, true);
                DoCast(me, SPELL_TENTACLE_VOID_ZONE, true);
            }
        }
    
        void JustDied(Unit *victim)
        {
            if (Unit* brain = me->ToTempSummon()->GetSummoner())
                brain->ToCreature()->AI()->DoAction(ACTION_TENTACLE_COUNT);
        }

    private:
        InstanceScript* instance;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_illusionAI (creature);
    }
};

class npc_descend_into_madness : public CreatureScript
{
public:
    npc_descend_into_madness() : CreatureScript("npc_descend_into_madness") { }

    struct npc_descend_into_madnessAI : public PassiveAI
    {
        npc_descend_into_madnessAI(Creature *c) : PassiveAI(c) {}

        void DoAction(const int32 param)
        {
            if (param == EVENT_SPELLCLICK)
            {
                me->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_SPELLCLICK);
                me->ForcedDespawn();
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_descend_into_madnessAI (creature);
    }
};

class npc_passive_illusions : public CreatureScript
{
public:
    npc_passive_illusions() : CreatureScript("npc_passive_illusions") { }

    struct npc_passive_illusionsAI : public PassiveAI
    {
        npc_passive_illusionsAI(Creature *c) : PassiveAI(c) 
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE);
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_passive_illusionsAI (creature);
    }
};


/*------------------------------------------------------*
 *                       Tentacles                      *
 *------------------------------------------------------*/

class npc_crusher_tentacle : public CreatureScript
{
public:
    npc_crusher_tentacle() : CreatureScript("npc_crusher_tentacle") { }

    struct npc_crusher_tentacleAI : public Scripted_NoMovementAI
    {
        npc_crusher_tentacleAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
            diminishTimer = 3000;
            fightdelaytimer = 1000;
            fight = false;
        }
    
        void UpdateAI(const uint32 diff)
        {
            if (!fight && fightdelaytimer <= diff)
            {
                me->SetReactState(REACT_AGGRESSIVE);
                DoZoneInCombat();
                DoCast(me, SPELL_ERUPT, true);
                fight = true;
            }
            else fightdelaytimer -= diff;

            if (!UpdateVictim() || me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if(!me->HasAura(SPELL_TENTACLE_VOID_ZONE))
                DoCast(me, SPELL_TENTACLE_VOID_ZONE, true);

            if(!me->HasAura(SPELL_FOCUSED_ANGER))
                DoCast(me, SPELL_FOCUSED_ANGER, true);

            if(!me->HasAura(SPELL_DIMINISH_POWER))
                DoCast(me, SPELL_DIMINISH_POWER, true);
        
            if (diminishTimer <= diff)
            {
                DoCast(me, SPELL_DIMINISH_POWER, true);
                diminishTimer = 3000;
            }
            else diminishTimer -= diff;
        
            DoSpellAttackIfReady(SPELL_CRUSH);
        }
    
        void DamageTaken(Unit *attacker, uint32 &damage)
        {
            if (attacker->IsWithinMeleeRange(me) && me->HasUnitState(UNIT_STAT_CASTING))
                me->InterruptNonMeleeSpells(true, SPELL_DIMINISH_POWER);
        }

    private:
        InstanceScript* instance;
        uint32 diminishTimer;
        uint32 fightdelaytimer;
        bool fight;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_crusher_tentacleAI (creature);
    }
};


class npc_constrictor_tentacle : public CreatureScript
{
public:
    npc_constrictor_tentacle() : CreatureScript("npc_constrictor_tentacle") { }

    struct npc_constrictor_tentacle_AI : public Scripted_NoMovementAI
    {
        npc_constrictor_tentacle_AI(Creature* pCreature) : Scripted_NoMovementAI(pCreature)
        {
            me->SetReactState(REACT_PASSIVE);
            DoCast(me, SPELL_TENTACLE_VOID_ZONE, true);
        }

        void PassengerBoarded(Unit* who, int8 /*seatId*/, bool apply)
        {
            if (apply)
                me->AddAura(RAID_MODE(SPELL_SQUEEZE_10, SPELL_SQUEEZE_25), who);
            else
                who->RemoveAurasDueToSpell(RAID_MODE(SPELL_SQUEEZE_10, SPELL_SQUEEZE_25));
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_constrictor_tentacle_AI (pCreature);
    }
};

class npc_corruptor_tentacle : public CreatureScript
{
public:
    npc_corruptor_tentacle() : CreatureScript("npc_corruptor_tentacle") { }

    struct npc_corruptor_tentacleAI : public Scripted_NoMovementAI
    {
        npc_corruptor_tentacleAI(Creature* creature) : Scripted_NoMovementAI(creature){}

        void Reset()
        {
            apathyTimer = 0;
            poisonTimer = 1000;
            plagueTimer = 2000;
            curseTimer = 3000;
            fightdelaytimer = 2000;
            fight = false;
        }

        bool IsPlayerInBrainRoom(Unit* pPlayer)
        {
            return pPlayer->GetPositionZ() < 300;
        }
    
        void UpdateAI(const uint32 diff)
        {
            if (!fight && fightdelaytimer <= diff)
            {
                me->SetReactState(REACT_AGGRESSIVE);
                DoZoneInCombat();
                DoCast(me, SPELL_ERUPT, true);
                fight = true;
            }
            else fightdelaytimer -= diff;

            if (!UpdateVictim() || me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if(!me->HasAura(SPELL_TENTACLE_VOID_ZONE))
                DoCast(me, SPELL_TENTACLE_VOID_ZONE, true);
        
            if (apathyTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 80, true))
                    if(!IsPlayerInBrainRoom(target))
                        DoCast(target, SPELL_APATHY);
                apathyTimer = 4000;
            }
            else apathyTimer -= diff;
        
            if (poisonTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 80, true))
                    if(!IsPlayerInBrainRoom(target))
                        DoCast(target, SPELL_DRAINING_POISON);
                poisonTimer = 4000;
            }
            else poisonTimer -= diff;
        
            if (plagueTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 80, true))
                    if(!IsPlayerInBrainRoom(target))
                        DoCast(target, SPELL_BLACK_PLAGUE);
                plagueTimer = 4000;
            }
            else plagueTimer -= diff;
        
            if (curseTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 80, true))
                    if(!IsPlayerInBrainRoom(target))
                        DoCast(target, SPELL_CURSE_OF_DOOM);
                curseTimer = 4000;
            }
            else curseTimer -= diff;
        }

    private:
        uint32 apathyTimer;
        uint32 poisonTimer;
        uint32 plagueTimer;
        uint32 curseTimer;
        uint32 fightdelaytimer;
        bool fight;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_corruptor_tentacleAI (creature);
    }
};

/*------------------------------------------------------*
 *                  Immortal Guardian                   *
 *------------------------------------------------------*/
class npc_immortal_guardian : public CreatureScript
{
public:
    npc_immortal_guardian() : CreatureScript("npc_immortal_guardian") { }

    struct npc_immortal_guardianAI : public ScriptedAI
    {
        npc_immortal_guardianAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetAuraStack(SPELL_EMPOWERED, me, 10);
        }

        void Reset()
        {
            drainLifeTimer = 10000;
            fightdelaytimer = 2000;

            fight = false;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!fight && fightdelaytimer <= diff)
            {
                me->SetReactState(REACT_AGGRESSIVE);
                DoZoneInCombat();
                fight = true;
            }
            else fightdelaytimer -= diff;

            if (!UpdateVictim())
                return;
            
            if (HealthBelowPct(10))
            {
                me->RemoveAurasDueToSpell(SPELL_EMPOWERED);
                me->AddAura(SPELL_WEAKENED, me);
            }
            else
            {
                me->RemoveAurasDueToSpell(SPELL_WEAKENED);
                me->SetAuraStack(SPELL_EMPOWERED, me,(me->GetHealth() / me->GetMaxHealth()) * 10);
            }

            if (drainLifeTimer <= diff)
            {
                DoCast(me->getVictim(), RAID_MODE(SPELL_DRAIN_LIFE_10, SPELL_DRAIN_LIFE_25));
                drainLifeTimer = urand(15000, 20000);
            }
            else drainLifeTimer -= diff;

            DoMeleeAttackIfReady();
        }
    
        void DamageTaken(Unit* who, uint32 &damage)
        {
            // Immortal Guardians stop taking damage when their health reaches 1%
            if (damage >= me->GetHealth())
            {
                me->SetHealth(me->GetMaxHealth() / 100);
                damage = 0;
            }
        }
    
        void SpellHit(Unit *caster, const SpellEntry *spell)
        {
            // Thorim kills weakened immortal creatures
            if (spell->Id == SPELL_TITANIC_STORM_EFFECT)
            {
                caster->Kill(me, false);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            }
        }

    private:
        uint32 drainLifeTimer;
        uint32 fightdelaytimer;
        bool fight;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_immortal_guardianAI (creature);
    }
};

/*------------------------------------------------------*
 *                  Images of Keepers                   *
 *------------------------------------------------------*/

class npc_keeper_image : public CreatureScript
{
public:
    npc_keeper_image() : CreatureScript("npc_keeper_image") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new keeper_imageAI (creature);
    }
 
    struct keeper_imageAI : public ScriptedAI
    {
        keeper_imageAI(Creature *creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
            instance = (InstanceScript *) creature->GetInstanceScript();
        }

        InstanceScript* instance;
    };

    bool OnGossipHello(Player* player, Creature* creature)
    {
        InstanceScript* instance = creature->GetInstanceScript();
    
        char* localizedEntry;

        if (instance)
        {
            switch (player->GetSession()->GetSessionDbcLocale())
            {
                case LOCALE_deDE: localizedEntry = GOSSIP_KEEPER_HELP_DE; break;
                case LOCALE_enUS: default: localizedEntry = GOSSIP_KEEPER_HELP_EN;
            }
            if(!creature->HasAura(SPELL_KEEPER_ACTIVE))
            {
                player->PrepareQuestMenu(creature->GetGUID());
                player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, localizedEntry, GOSSIP_SENDER_MAIN, GOSSIP_ACTION_INFO_DEF);
                player->SEND_GOSSIP_MENU(player->GetGossipTextId(creature), creature->GetGUID());
            }
        }
        return true;
    }

    bool OnGossipSelect(Player* player, Creature* creature, uint32 uiSender, uint32 uiAction)
    {
        if (player)
            player->CLOSE_GOSSIP_MENU();

        InstanceScript* instance = creature->GetInstanceScript();
        
        switch (creature->GetEntry())
        {
            case NPC_IMAGE_OF_FREYA:
                DoScriptText(SAY_FREYA_HELP, creature);
                creature->AddAura(SPELL_KEEPER_ACTIVE, creature);
                if (Creature *freya = creature->GetCreature(*creature, instance->GetData64(DATA_YS_FREYA)))
                    freya->AddAura(SPELL_KEEPER_ACTIVE, freya);
                break;
            case NPC_IMAGE_OF_THORIM:
                DoScriptText(SAY_THORIM_HELP, creature);
                creature->AddAura(SPELL_KEEPER_ACTIVE, creature);
                if (Creature *thorim = creature->GetCreature(*creature, instance->GetData64(DATA_YS_THORIM)))
                    thorim->AddAura(SPELL_KEEPER_ACTIVE, thorim);
                break;
            case NPC_IMAGE_OF_MIMIRON:
                DoScriptText(SAY_MIMIRON_HELP, creature);
                creature->AddAura(SPELL_KEEPER_ACTIVE, creature);
                if (Creature *mimiron = creature->GetCreature(*creature, instance->GetData64(DATA_YS_MIMIRON)))
                    mimiron->AddAura(SPELL_KEEPER_ACTIVE, mimiron);
                break;
            case NPC_IMAGE_OF_HODIR:
                DoScriptText(SAY_HODIR_HELP, creature);
                creature->AddAura(SPELL_KEEPER_ACTIVE, creature);
                if (Creature *hodir = creature->GetCreature(*creature, instance->GetData64(DATA_YS_HODIR)))
                    hodir->AddAura(SPELL_KEEPER_ACTIVE, hodir);
                break;
        }
        return true;
    }
};

class npc_ys_freya : public CreatureScript
{
public:
    npc_ys_freya() : CreatureScript("npc_ys_freya") { }

    struct npc_ys_freyaAI : public ScriptedAI
    {
        npc_ys_freyaAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset()
        {
            wellTimer = urand(5000, 10000);
        }
    
        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;
            
            if (!me->HasAura(SPELL_RESILIENCE_OF_NATURE))
                DoCast(me, SPELL_RESILIENCE_OF_NATURE);
            
            if (wellTimer <= uiDiff)
            {
                DoCast(SPELL_SANITY_WELL_SPAWN);
                me->SummonCreature(NPC_SANITY_WELL, SanityWellPos[rand()%10], TEMPSUMMON_TIMED_DESPAWN, 60000);
                wellTimer = 20000;
            }
            else wellTimer -= uiDiff;
        }

    private:
        uint32 wellTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ys_freyaAI (creature);
    }
};

class npc_sanity_well : public CreatureScript
{
public:
    npc_sanity_well() : CreatureScript("npc_sanity_well") { }

    struct npc_sanity_wellAI : public Scripted_NoMovementAI
    {
        npc_sanity_wellAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            DoCast(me, SPELL_SANITY_WELL_VISUAL);
            DoCast(me, SPELL_SANITY_WELL);
            sanityTimer = 2000;
        }
    
        void UpdateAI(const uint32 uiDiff)
        {
            if (sanityTimer <= uiDiff)
            {
                Map::PlayerList const &players = instance->instance->GetPlayers();
                for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                {
                    Player* player = itr->getSource();
                    if (!player)
                        continue;
                    // Standing in the well brings you back to your senses, regenerating 20% Sanity every 2 sec
                    if (me->IsWithinDist(player, 8) && player->HasAura(SPELL_SANITY_WELL))
                    {
                        if (Aura * aur = player->GetAura(SPELL_SANITY))
                        {
                            uint32 stack = aur->GetStackAmount() + 20;
                            if (stack > 100)
                                stack = 100;
                            player->SetAuraStack(SPELL_SANITY, player, stack);
                        }
                    }
                }
                sanityTimer = 2000;
            }
            else sanityTimer -= uiDiff;
        }

    private:
        InstanceScript* instance;
        uint32 sanityTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_sanity_wellAI (creature);
    }
};

class npc_ys_thorim : public CreatureScript
{
public:
    npc_ys_thorim() : CreatureScript("npc_ys_thorim") { }

    struct npc_ys_thorimAI : public ScriptedAI
    {
        npc_ys_thorimAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset(){}
    
        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim() || me->HasUnitState(UNIT_STAT_CASTING))
                return;
            
            if (!me->HasAura(SPELL_FURY_OF_THE_STORMS))
                DoCast(me, SPELL_FURY_OF_THE_STORMS);
            
            if (!me->HasAura(SPELL_TITANIC_STORM) && phase == PHASE_3)
                DoCast(me, SPELL_TITANIC_STORM);
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ys_thorimAI (creature);
    }
};

class AllSaronitCreaturesInRange
{
public:
    AllSaronitCreaturesInRange(const WorldObject* pObject, float fMaxRange) : m_pObject(pObject), m_fRange(fMaxRange) {}
    bool operator() (Unit* pUnit)
    {
        if (IsSaronitEntry(pUnit->GetEntry()) && m_pObject->IsWithinDist(pUnit,m_fRange,false) && pUnit->isAlive())
            return true;

        return false;
    }

private:
    const WorldObject* m_pObject;
    float m_fRange;

    bool IsSaronitEntry(uint32 entry)
    {
        switch(entry)
        {
        case NPC_CRUSHER_TENTACLE:
        case NPC_CORRUPTOR_TENTACLE:
        case NPC_CONSTRICTOR_TENTACLE:
            return true;
        }
        return false;
    }
};

class npc_ys_mimiron : public CreatureScript
{
public:
    npc_ys_mimiron() : CreatureScript("npc_ys_mimiron") { }

    struct npc_ys_mimironAI : public ScriptedAI
    {
        npc_ys_mimironAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset()
        {
            destabilizeTimer = 3000;
            randomTentacle = 0;
        }

        void GetAliveSaronitCreatureListInGrid(std::list<Creature*>& lList, float fMaxSearchRange)
        {
            CellPair pair(Trinity::ComputeCellPair(me->GetPositionX(), me->GetPositionY()));
            Cell cell(pair);
            cell.data.Part.reserved = ALL_DISTRICT;
            cell.SetNoCreate();

            AllSaronitCreaturesInRange check(me, fMaxSearchRange);
            Trinity::CreatureListSearcher<AllSaronitCreaturesInRange> searcher(me, lList, check);
            TypeContainerVisitor<Trinity::CreatureListSearcher<AllSaronitCreaturesInRange>, GridTypeMapContainer> visitor(searcher);

            cell.Visit(pair, visitor, *(me->GetMap()));
        }
    
        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;
            
            if (!me->HasAura(SPELL_SPEED_OF_INVENTION))
                DoCast(me, SPELL_SPEED_OF_INVENTION);

            if (destabilizeTimer <= uiDiff)
            {
                if (phase == PHASE_2)
                {
                    std::list<Creature*> creatureList;
                    GetAliveSaronitCreatureListInGrid(creatureList,5000);
                    if(!creatureList.empty())
                    {
                        std::list<Creature*>::iterator itr = creatureList.begin();
                        advance(itr, urand(0, creatureList.size()-1));
                        DoCast((*itr),SPELL_DESTABILIZATION,false);
                    }
                }
                destabilizeTimer = 30000;
            }
            else destabilizeTimer -= uiDiff;
        }

    private:
        uint32 destabilizeTimer;
        uint8 randomTentacle;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ys_mimironAI (creature);
    }
};

class npc_ys_hodir : public CreatureScript
{
public:
    npc_ys_hodir() : CreatureScript("npc_ys_hodir") { }

    struct npc_ys_hodirAI : public ScriptedAI
    {
        npc_ys_hodirAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset(){}
        
        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;
            
            if (!me->HasAura(SPELL_FORTITUDE_OF_FROST))
                DoCast(me, SPELL_FORTITUDE_OF_FROST);
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_ys_hodirAI (creature);
    }
};

class go_flee_to_surface : public GameObjectScript
{
public:
    go_flee_to_surface() : GameObjectScript("go_flee_to_surface") { }

    bool OnGossipHello(Player *pPlayer, GameObject * /*pGO*/)
    {
        pPlayer->NearTeleportTo(SaraLocation.GetPositionX(),SaraLocation.GetPositionY(),SaraLocation.GetPositionZ(),M_PI,false);
        pPlayer->JumpTo(40.0f,5.0f,true);
        return false;
    }
};

class spell_keeper_support_aura_targeting : public SpellScriptLoader
{
    public:
        spell_keeper_support_aura_targeting() : SpellScriptLoader("spell_keeper_support_aura_targeting") { }

    class spell_keeper_support_aura_targeting_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_keeper_support_aura_targeting_AuraScript)
        void HandleEffectApply(AuraEffect const* aurEff, AuraEffectHandleModes /*mode*/)
        {
            std::list<Unit*> targetList;
            aurEff->GetTargetList(targetList);

            for(std::list<Unit*>::iterator iter = targetList.begin(); iter != targetList.end(); ++iter)
                if(!(*iter)->ToPlayer() && (*iter)->GetGUID() != GetCasterGUID() )
                    (*iter)->RemoveAurasDueToSpell(GetSpellProto()->Id);
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_keeper_support_aura_targeting_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_MOD_DAMAGE_PERCENT_DONE, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_keeper_support_aura_targeting_AuraScript();
    }
};

class DontLooksDirectlyInGazeCheck
{
public:
    DontLooksDirectlyInGazeCheck(Unit* caster) : _caster(caster) { }

    bool operator() (Unit* unit)
    {
        Position pos;
        _caster->GetPosition(&pos);
        return !unit->HasInArc(static_cast<float>(M_PI), &pos);
    }

private:
    Unit* _caster;
};

class spell_lunatic_gaze_targeting : public SpellScriptLoader
{
public:
    spell_lunatic_gaze_targeting() : SpellScriptLoader("spell_lunatic_gaze_targeting") { }

    class spell_lunatic_gaze_targeting_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_lunatic_gaze_targeting_SpellScript)

        void FilterTargets(std::list<Unit*>& unitList)
        {
            unitList.remove_if(DontLooksDirectlyInGazeCheck(GetCaster()));
        }

        void Register()
        {
            OnUnitTargetSelect += SpellUnitTargetFn(spell_lunatic_gaze_targeting_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_AREA_ENEMY_SRC);
            OnUnitTargetSelect += SpellUnitTargetFn(spell_lunatic_gaze_targeting_SpellScript::FilterTargets, EFFECT_1, TARGET_UNIT_AREA_ENEMY_SRC);
        }
    };

    // function which creates SpellScript
    SpellScript *GetSpellScript() const
    {
        return new spell_lunatic_gaze_targeting_SpellScript();
    }
};

class spell_insane_death_effekt : public SpellScriptLoader
{
public:
    spell_insane_death_effekt() : SpellScriptLoader("spell_insane_death_effekt") { }

    class spell_insane_death_effekt_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_insane_death_effekt_AuraScript)

        void HandleEffectRemove(AuraEffect const * /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if(Unit * target = GetTarget())
                if(target->ToPlayer() && target->isAlive())
                    target->DealDamage(target,target->GetHealth());
        }

        // function registering
        void Register()
        {
            OnEffectRemove += AuraEffectRemoveFn(spell_insane_death_effekt_AuraScript::HandleEffectRemove, EFFECT_0, SPELL_AURA_AOE_CHARM, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_insane_death_effekt_AuraScript();
    }
};

class NotIsWeakenedImmortalCheck
{
public:
    NotIsWeakenedImmortalCheck() { }

    bool operator() (Unit* unit)
    {
        return !(unit->HasAura(SPELL_WEAKENED));
    }
};

class spell_titanic_storm_targeting : public SpellScriptLoader
{
public:
    spell_titanic_storm_targeting() : SpellScriptLoader("spell_titanic_storm_targeting") { }

    class spell_titanic_storm_targeting_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_titanic_storm_targeting_SpellScript)

        void FilterTargets(std::list<Unit*>& unitList)
        {
            unitList.remove_if(NotIsWeakenedImmortalCheck());
        }

        void Register()
        {
            OnUnitTargetSelect += SpellUnitTargetFn(spell_titanic_storm_targeting_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_AREA_ENTRY_SRC);
        }
    };

    // function which creates SpellScript
    SpellScript *GetSpellScript() const
    {
        return new spell_titanic_storm_targeting_SpellScript();
    }
};

class spell_brain_link_periodic_dummy : public SpellScriptLoader
{
    public:
        spell_brain_link_periodic_dummy() : SpellScriptLoader("spell_brain_link_periodic_dummy") { }

    class spell_brain_link_periodic_dummy_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_brain_link_periodic_dummy_AuraScript)

        void HandlePeriodicDummy(AuraEffect const* aurEff)
        {
            PreventDefaultAction();
            if (Unit* trigger = GetTarget())
            {
                if (trigger->GetTypeId() == TYPEID_PLAYER)
                {
                    if(!trigger->GetMap()->IsDungeon())
                        return;

                    Map::PlayerList const &players = trigger->GetMap()->GetPlayers();
                    for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                        if (Player* player = itr->getSource())
                            if(player->HasAura(SPELL_BRAIN_LINK) && player->GetGUID() != trigger->GetGUID() )
                            {
                                trigger->CastSpell(player, SPELL_BRAIN_LINK_DUMMY, true);
                                if(Unit* caster = GetCaster())
                                
                                if (!player->IsWithinDist(trigger, float(aurEff->GetMiscValue())))
                                {
                                    if (player->IsWithinDist(trigger, 20))
                                        player->CastSpell(trigger, SPELL_BRAIN_LINK_DUMMY, true, 0, 0);
                                    else
                                    {
                                        player->CastSpell(trigger, SPELL_BRAIN_LINK_DAMAGE, true);
                                        if(InstanceScript* pInstance = caster->GetInstanceScript())
                                            if(caster->ToCreature() && caster->GetGUID() == pInstance->GetData64(DATA_SARA))
                                                CAST_AI(boss_sara::boss_saraAI,caster->ToCreature()->AI())->ModifySanity(player,-2);
                                    }
                                }
                            }
                }
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_brain_link_periodic_dummy_AuraScript::HandlePeriodicDummy, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
            //OnEffectApply += AuraEffectApplyFn(spell_keeper_support_aura_targeting_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_MOD_DAMAGE_PERCENT_DONE, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_brain_link_periodic_dummy_AuraScript();
    }
};

class spell_summon_tentacle_position : public SpellScriptLoader
{
public:
    spell_summon_tentacle_position() : SpellScriptLoader("spell_summon_tentacle_position") { }

    class spell_summon_tentacle_position_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_summon_tentacle_position_SpellScript);

        void ChangeSummonPos(SpellEffIndex /*effIndex*/)
        {
            WorldLocation* summonPos = GetTargetDest();
            Position offset = {0.0f, 0.0f, 3.0f, 0.0f};
            summonPos->RelocateOffset(offset);  // +20 in height
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_summon_tentacle_position_SpellScript::ChangeSummonPos, EFFECT_0, SPELL_EFFECT_SUMMON);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_summon_tentacle_position_SpellScript();
    }
};

class spell_empowering_shadows : public SpellScriptLoader
{
public:
    spell_empowering_shadows() : SpellScriptLoader("spell_empowering_shadows") { }

    class spell_empowering_shadows_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_empowering_shadows_SpellScript)

        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            if (Unit * target = GetHitUnit())
            {
                uint32 spell = 0;
                switch(target->GetMap()->GetDifficulty())
                {
                case RAID_DIFFICULTY_10MAN_NORMAL:
                    spell = SPELL_EMPOWERING_SHADOWS_HEAL_10;
                    break;
                case RAID_DIFFICULTY_25MAN_NORMAL:
                    spell = SPELL_EMPOWERING_SHADOWS_HEAL_25;
                    break;
                }
                if(spell)
                    GetCaster()->CastSpell(target, spell, true);
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_empowering_shadows_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    // function which creates SpellScript
    SpellScript *GetSpellScript() const
    {
        return new spell_empowering_shadows_SpellScript();
    }
};

class item_unbound_fragments_of_valanyr : public ItemScript
{
public:
    item_unbound_fragments_of_valanyr() : ItemScript("item_unbound_fragments_of_valanyr") { }

    bool OnUse(Player* pPlayer, Item* pItem, SpellCastTargets const& /*targets*/)
    {

        if(Creature* yogg = pPlayer->FindNearestCreature(NPC_YOGG_SARON,20))
        {
            if(yogg->FindCurrentSpellBySpellId(SPELL_DEAFENING_ROAR))
                return false;
        }

        pPlayer->SendEquipError(EQUIP_ERR_CANT_DO_RIGHT_NOW,pItem,NULL);
        return true;
    }
};

void AddSC_boss_yoggsaron()
{
    new boss_sara();
    new boss_yoggsaron();
    new boss_brain_yoggsaron();
    new npc_ominous_cloud();
    new npc_guardian_yoggsaron();
    new npc_death_orb();
    new npc_laughing_skull();
    new npc_illusion();
    new npc_descend_into_madness();
    new npc_constrictor_tentacle();
    new npc_crusher_tentacle();
    new npc_corruptor_tentacle();
    new npc_immortal_guardian();
    new npc_keeper_image();
    new npc_ys_freya();
    new npc_ys_thorim();
    new npc_ys_mimiron();
    new npc_ys_hodir();
    new npc_sanity_well();
    new npc_passive_illusions();
    new go_flee_to_surface();
    new spell_keeper_support_aura_targeting();
    new spell_lunatic_gaze_targeting();
    new spell_brain_link_periodic_dummy();
    new spell_titanic_storm_targeting();
    new spell_insane_death_effekt();
    new spell_summon_tentacle_position();
    new spell_empowering_shadows();
}