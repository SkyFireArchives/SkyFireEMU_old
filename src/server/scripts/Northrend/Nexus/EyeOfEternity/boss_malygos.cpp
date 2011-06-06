/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
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

#include "ScriptPCH.h"
#include "eye_of_eternity.h"

enum eYells
{
    // intro
    SAY_INTRO_1                              =  -1616000,
    SAY_INTRO_2                              =  -1616001,
    SAY_INTRO_3                              =  -1616002,
    SAY_INTRO_4                              =  -1616003,
    SAY_INTRO_5                              =  -1616004,
    // phase 1
    SAY_PHASE1_AGGRO                         =  -1616005,
    SAY_VORTEX                               =  -1616006,
    SAY_SPARK_SUMMON                         =  -1616035,
    SAY_SPARK_BUFFED                         =  -1616007,
    SAY_PHASE1_SLAY_1                        =  -1616008,
    SAY_PHASE1_SLAY_2                        =  -1616009,
    SAY_PHASE1_SLAY_3                        =  -1616010,
    SAY_PHASE1_END                           =  -1616012,
    // phase 2
    SAY_PHASE2_AGGRO                         =  -1616013,
    SAY_BREATH_ATTACK                        =  -1616014,
    SAY_BREATH_ANNOUNCE                      =  -1616015,
    SAY_ANTI_MAGIC_SHELL                     =  -1616016,
    SAY_PHASE2_SLAY_1                        =  -1616020,
    SAY_PHASE2_SLAY_2                        =  -1616021,
    SAY_PHASE2_SLAY_3                        =  -1616022,
    SAY_PHASE2_END                           =  -1616017,
    // phase 3
    SAY_PHASE3_INTRO                         =  -1616018,
    SAY_PHASE3_AGGRO                         =  -1616019,
    SAY_PHASE3_SLAY_1                        =  -1616023,
    SAY_PHASE3_SLAY_2                        =  -1616024,
    SAY_PHASE3_SLAY_3                        =  -1616025,
    SAY_SURGE_OF_POWER                       =  -1616026,
    SAY_PHASE3_CAST_1                        =  -1616027,
    SAY_PHASE3_CAST_2                        =  -1616028,
    SAY_PHASE3_CAST_3                        =  -1616029,
    SAY_DEATH                                =  -1616030,
    SAY_OUTRO_1                              =  -1616031,
    SAY_OUTRO_2                              =  -1616032,
    SAY_OUTRO_3                              =  -1616033,
    SAY_OUTRO_4                              =  -1616034
};

enum eSpells
{
    // phase 1
    SPELL_IRIS_VISUAL                        = 61012,
    SPELL_ARCANE_BREATH_10                   = 56272,
    SPELL_ARCANE_BREATH_25                   = 60072,
    SPELL_ARCANE_STORM_10                    = 61693,
    SPELL_ARCANE_STORM_25                    = 61694,
    SPELL_POWER_SPARK                        = 56152,
    SPELL_POWER_SPARK_VISUAL                 = 55845,
    SPELL_POWER_SPARK_PLAYERS                = 55852,
    SPELL_SUMMON_POWER_PARK                  = 56142,
    SPELL_PORTAL_VISUAL_CLOSED               = 55949,

    // Vortex
    SPELL_VORTEX_1 = 56237, // seems that frezze object animation
    SPELL_VORTEX_2 = 55873, // visual effect
    SPELL_VORTEX_3 = 56105, // this spell must handle all the script - casted by the boss and to himself
    //SPELL_VORTEX_4 = 55853, // damage | used to enter to the vehicle - defined in eye_of_eternity.h
    //SPELL_VORTEX_5 = 56263, // damage | used to enter to the vehicle - defined in eye_of_eternity.h
    SPELL_VORTEX_6 = 73040, // teleport - (casted to all raid) | caster 30090 | target player

    // phase 2
    SPELL_ARCANE_BOMB                        = 56430,
    SPELL_ARCANE_BOMB_KNOCKBACK              = 56431,
    SPELL_ARCANE_OVERLOAD                    = 56432,
    SPELL_DEEP_BREATH                        = 56505,

    SPELL_ARCANE_SHOCK_10                    = 57058,
    SPELL_ARCANE_SHOCK_25                    = 60073,
    SPELL_HASTE                              = 57060,
    SPELL_ARCANE_BARRAGE                     = 56397,
    SPELL_ARCANE_BARRAGE_DMG                 = 63934,

    SPELL_DESTROY_PLATFORM_CHANNEL           = 58842,
    SPELL_DESTROY_PLATFORM_BOOM              = 59084,
    SPELL_DESTROY_PLATFORM_EVENT             = 59099,

    // phase 3
    SPELL_ARCANE_PULSE                       = 57432,
    SPELL_STATIC_FIELD                       = 57428,
    SPELL_STATIC_FIELD_MISSLE                = 57430,
    SPELL_SURGE_OF_POWER_10                  = 57407,
    SPELL_SURGE_OF_POWER_25                  = 60936,
    SPELL_SURGE_OF_POWER_25_MARKER           = 60939,

    SPELL_ALEXSTRASZAS_GIFT_VISUAL           = 61023,
    SPELL_ALEXSTRASZAS_GIFT_BEAM             = 61028,
    SPELL_ENRAGE                             = 47008,
    SPELL_ROOT                               = 18373 //hack
};

enum ePhase
{
    PHASE_NONE          = 0, // waiting for someone to use iris
    PHASE_GROUND        = 1, // phase 1 melee / spells
    PHASE_IDLE_1        = 2, // phase 1 vortex
    PHASE_ADDS          = 3, // phase 2
    PHASE_DRAGONS       = 4, // phase 3
    PHASE_IDLE_2        = 5  // used between main phases
};

enum eAction
{
    ACTION_START        = 0,
    ACTION_SPARK        = 1,
    ACTION_OVERLOAD     = 2,
    ACTION_DEEP_BREATH  = 3,
    ACTION_SPAWN_ADDS   = 4,
    ACTION_SPAWN_MOUNTS = 5,
    ACTION_MOUNT_ALL    = 6,
    ACTION_CAST_SURGE   = 7,
    ACTION_CLEAR_PLR    = 8
};

enum eMovePoints
{
    POINT_START         = 1,
    POINT_VORTEX        = 2,
    POINT_FLY_DOWN      = 3,
    POINT_PHASE_2_INTRO = 4,
    POINT_PHASE_2       = 5, // TODO: should move around
    POINT_DESTROY_FLOOR = 6,
    POINT_PHASE_3       = 7
}; 

static Position Locations[]=
{
    {1178.01f, 1276.01f, 268.2f, 2.3143f},  // p0 - first fly down position
    {1154.20f, 1301.68f, 302.5f, 2.3143f},  // p1 - low room center / vortex
    {1154.20f, 1301.68f, 285.5f, 2.3143f},  // p1 - vortex vehicle position
    {1154.20f, 1301.68f, 320.5f, 2.3143f},  // p2 - higher room center, should fly around
    {1154.20f, 1301.68f, 225.0f, 2.3143f},  // p3 - "inside" destroyed platform
    {1154.35f, 1300.87f, 270.2f, 0.0f}      // alexstraszas gift
};

static Position SparkLocations[]=
{
    // power spark spawn positions
    {1052.417f, 1200.52f, 295.972f, 0.78539f},
    {1247.670f, 1408.05f, 295.972f, 3.97935f},
    {1047.675f, 1403.80f, 295.972f, 5.53269f},
    {1243.182f, 1215.42f, 295.972f, 2.35619f}
};

static Position LordLocations[]=
{
    // nexus lord fly to ground positions
    {1172.396f, 1301.735f, 266.2f, 0.0f},
    {1136.652f, 1301.850f, 266.2f, 0.0f},
    {1154.490f, 1319.730f, 266.2f, 0.0f},
    {1154.160f, 1282.878f, 266.2f, 0.0f}
};

enum MalygosEvents
{
    DATA_PHASE
};

#define FLOOR_Z           268.17f
#define AIR_Z             297.24f
#define WHISPER_SURGE     "Die Augen von Malygos sind auf Euch fixiert!"

class boss_malygos : public CreatureScript
{
public:
    boss_malygos() : CreatureScript("boss_malygos") { }

    struct boss_malygosAI : public ScriptedAI
    {
        boss_malygosAI(Creature* pCreature) : ScriptedAI(pCreature), Summons(me)
        {
            m_pInstance = pCreature->GetInstanceScript();
        }

        void Reset()
        {
            uiPhase = PHASE_NONE;
            uiAddsCount = 0;
            uiStep = 0;
            StartMove = true;
            uiWaitTimer = 10*IN_MILLISECONDS;
            uiStormTimer = 5*IN_MILLISECONDS;
            uiSparkTimer = 20*IN_MILLISECONDS;
            uiThreatTimer = 10*IN_MILLISECONDS;
            uiEnrageTimer = 10*MINUTE*IN_MILLISECONDS;
            uiVortexTimer = 25*IN_MILLISECONDS;
            uiOverloadTimer = 5*IN_MILLISECONDS;
            uiStaticFieldTimer = 20*IN_MILLISECONDS;
            uiArcanePulseTimer = 10*IN_MILLISECONDS;
            uiArcaneBreathTimer = 10*IN_MILLISECONDS;
            uiSurgeOfPowerTimer = 60*IN_MILLISECONDS;
            uiStartMoveTimer = 2*IN_MILLISECONDS;

            me->SetUInt32Value(UNIT_FIELD_BYTES_1, 0);

            me->SetFlying(true);
            me->SetSpeed(MOVE_FLIGHT, 2.0f);
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_PASSIVE);

            Summons.DespawnAll();
            SparkList.clear();
            uiMounts.clear();

            if (m_pInstance)
            {
                m_pInstance->SetData(TYPE_MALYGOS, NOT_STARTED);
                m_pInstance->DoStopTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT,  ACHIEV_TIMED_START_EVENT);
            }
            uiExitPortal = m_pInstance->GetData64(GO_EXIT_PORTAL);
            if(GameObject* pExitPortal = m_pInstance->instance->GetGameObject(uiExitPortal))
                pExitPortal->SetPhaseMask(1, true);

            uiFocusingIris = m_pInstance->GetData64(GO_FOCUSING_IRIS_10);
            uiFocusingIris = m_pInstance->GetData64(GO_FOCUSING_IRIS_25);
            if(GameObject* pFocusingIris = m_pInstance->instance->GetGameObject(uiFocusingIris))
                pFocusingIris->SetPhaseMask(1, true);
        }

        void JustReachedHome()
        {
            Reset();
            me->setActive(false);
        }

        uint32 GetData(uint32 data)
        {
            if (data == DATA_PHASE)
                return uiPhase;

            return 0;
        }

        void JustSummoned(Creature *summon)
        {
            switch (summon->GetEntry())
            {
                case NPC_POWER_SPARK:
                    summon->setActive(true);
                    SparkList.insert(summon->GetGUID());
                    break;
                case NPC_STATIC_FIELD:
                    summon->SetDisplayId(11686);
                    summon->SetFlying(true);
                    summon->SetInCombatWithZone();
                    summon->AddUnitState(UNIT_STAT_ROOT);
                    summon->SetReactState(REACT_PASSIVE);
                    summon->ForcedDespawn(30*IN_MILLISECONDS);
                    summon->CastSpell(summon, SPELL_STATIC_FIELD, true);
                    break;
            }
            Summons.Summon(summon);
        }

        void SummonedCreatureDespawn(Creature *summon)
        {
            switch (summon->GetEntry())
            {
                case NPC_POWER_SPARK:
                    SparkList.erase(summon->GetGUID());
                    break;
                case NPC_NEXUS_LORD:
                case NPC_SCION_OF_ETERNITY:
                    if (Creature* pDisc = me->SummonCreature(NPC_DISC_PLAYER, summon->GetPositionX(), summon->GetPositionY(), FLOOR_Z, 0.0f))
                    {
                        pDisc->ApplySpellImmune(0, IMMUNITY_ID, SPELL_ARCANE_BOMB_KNOCKBACK, true);
                        pDisc->SetSpeed(MOVE_FLIGHT, 3.0f);
                    }
                    uiAddsCount++;
                    break;
            }
            Summons.Despawn(summon);
        }

        void KilledUnit(Unit* pVictim)
        {
            if (pVictim == me || (pVictim->GetTypeId() == TYPEID_UNIT && pVictim->GetEntry() == NPC_POWER_SPARK))
                return;

            switch (uiPhase)
            {
                case PHASE_GROUND:
                    DoScriptText(RAND(SAY_PHASE1_SLAY_1, SAY_PHASE1_SLAY_2, SAY_PHASE1_SLAY_3), me);
                    break;
                case PHASE_ADDS:
                    DoScriptText(RAND(SAY_PHASE2_SLAY_1, SAY_PHASE2_SLAY_2, SAY_PHASE2_SLAY_3), me);
                    break;
                case PHASE_DRAGONS:
                    DoScriptText(RAND(SAY_PHASE3_SLAY_1, SAY_PHASE3_SLAY_2, SAY_PHASE3_SLAY_3), me);
                    break;
                default:
                    break;
            }
        }

        void PrepareForVortex()
        {
            me->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);

            me->GetMotionMaster()->MovementExpired();
            me->GetMotionMaster()->MovePoint(POINT_VORTEX, 1154.20f, 1301.68f, AIR_Z);
            // continues in MovementInform function.
        }

        void ExecuteVortex()
        {
            DoCast(me,SPELL_VORTEX_1,true);
            DoCast(me,SPELL_VORTEX_2,true);

            // the vortex execution continues in the dummy effect of this spell (see its script)
            DoCast(me,SPELL_VORTEX_3,true);
        }


        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH, me);
            Summons.DespawnAll(); // only static fields left
            me->SummonCreature(NPC_ALEXSTRASZA, Locations[3], TEMPSUMMON_TIMED_DESPAWN, 9*MINUTE*IN_MILLISECONDS);
        }

        void SpellHit(Unit* caster, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_POWER_SPARK)
            {
                if (Creature* creature = caster->ToCreature())
                    creature->DespawnOrUnsummon();

                DoScriptText(SAY_SPARK_BUFFED, me);
            }
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (uiPhase != PHASE_GROUND || who->GetTypeId() != TYPEID_UNIT)
                return;

            if (!me->isInCombat())
                return;

            if (who->GetEntry() == NPC_POWER_SPARK)
            {
                if(who->HasAura(SPELL_POWER_SPARK_PLAYERS))
                    return;

                // not sure about the distance | I think it is better check this here than in the UpdateAI function...
                if (who->GetDistance(me) <= 2.5f)
                    who->CastSpell(me, SPELL_POWER_SPARK, true);
            }
        }

        void DoAction(const int32 param)
        {
            switch (param)
            {
                case ACTION_START:
                {
                    StartMove = false;
                    DoScriptText(SAY_PHASE1_AGGRO, me); // Blizzlike
                    me->setActive(true);
                    me->SetInCombatWithZone();
                    me->GetMotionMaster()->MovePoint(POINT_START, Locations[0]);
                    uiStartMoveTimer = 60000;
                    while (Creature* pDragon = me->FindNearestCreature(NPC_WYRMREST_SKYTALON, 250.0f))
                        pDragon->ForcedDespawn();

                    break;
                }
                case ACTION_OVERLOAD:
                {
                    float x, y, angle;
                    angle = float(2 * M_PI * rand_norm());
                    x = Locations[1].GetPositionX() + float(urand(10, 28)) * cos(angle);
                    y = Locations[1].GetPositionY() + float(urand(10, 28)) * sin(angle);

                    if (Creature* pOverload = me->SummonCreature(NPC_ARCANE_OVERLOAD, x, y, FLOOR_Z - 1.8f, 0.0f, TEMPSUMMON_TIMED_DESPAWN, 45*IN_MILLISECONDS))
                    {
                        if (!urand(0, 2))
                            DoScriptText(SAY_ANTI_MAGIC_SHELL, me);
                        pOverload->AddUnitState(UNIT_STAT_ROOT);
                        pOverload->SetReactState(REACT_PASSIVE);
                        pOverload->SetInCombatWithZone();
                        pOverload->GetMotionMaster()->MoveIdle();
                        DoCast(pOverload, SPELL_ARCANE_BOMB, true);
                    }
                    break;
                }
                case ACTION_DEEP_BREATH:
                {
                    if (Creature* pSurge = me->SummonCreature(NPC_SURGE_OF_POWER, Locations[3], TEMPSUMMON_TIMED_DESPAWN, 10*IN_MILLISECONDS))
                    {
                        DoScriptText(SAY_BREATH_ANNOUNCE, me);
                        DoScriptText(SAY_BREATH_ATTACK, me);
                        pSurge->SetDisplayId(11686);
                        pSurge->SetReactState(REACT_PASSIVE);
                        pSurge->SetInCombatWithZone();
                        DoCast(pSurge, SPELL_DEEP_BREATH);
                    }
                    break;
                }
                case ACTION_SPAWN_ADDS:
                {
                    // nexus lords
                    for (uint8 i = 0; i < RAID_MODE(2, 4); ++i)
                    {
                        if (Creature* pLord = me->SummonCreature(NPC_NEXUS_LORD, Locations[1], TEMPSUMMON_CORPSE_DESPAWN))
                        {
                            pLord->SetReactState(REACT_PASSIVE);
                            if (Creature* pTemp = me->SummonCreature(NPC_DISC_NPC, Locations[1], TEMPSUMMON_CORPSE_DESPAWN))
                            {
                                pLord->EnterVehicle(pTemp, 0);
                                pTemp->SetReactState(REACT_PASSIVE);
                                pTemp->GetMotionMaster()->MovePoint(0, LordLocations[i]);
                            }
                        }
                    }
                    // scions of eternity
                    for (uint8 i = 0; i < RAID_MODE(4, 8); ++i)
                    {
                        if (Creature* pScion = me->SummonCreature(NPC_SCION_OF_ETERNITY, Locations[1], TEMPSUMMON_CORPSE_DESPAWN))
                        {
                            pScion->SetInCombatWithZone();
                            if (Creature* pTemp = me->SummonCreature(NPC_DISC_NPC, Locations[1], TEMPSUMMON_CORPSE_DESPAWN))
                            {
                                pScion->EnterVehicle(pTemp, 0);
                                pTemp->SetFlying(true);
                                pTemp->SetSpeed(MOVE_FLIGHT, 0.7f);
                                pTemp->SetReactState(REACT_PASSIVE);
                                pTemp->GetMotionMaster()->MovePoint(0, Locations[2]);
                                pTemp->AI()->SetData(0, (i + 1) * RAID_MODE(4, 2));
                            }
                        }
                    }
                    break;
                }
                case ACTION_SPAWN_MOUNTS:
                {
                    Map* map = me->GetMap();
                    if (!map->IsDungeon())
                        return;

                    Map::PlayerList const &PlayerList = map->GetPlayers();
                    for(Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                    {
                        Player* i_pl = i->getSource();
                        if (i_pl && !i_pl->isGameMaster() && i_pl->isAlive())
                        {
                            if (Creature* mount = i_pl->SummonCreature(NPC_WYRMREST_SKYTALON, i_pl->GetPositionX(), i_pl->GetPositionY(), 220.0f, i_pl->GetOrientation()))
                            {
                                mount->SetFlying(true);
                                mount->SetSpeed(MOVE_FLIGHT, 2.0f);
                                uiMounts.push_back(std::pair<uint64, uint64>(mount->GetGUID(), i_pl->GetGUID()));
                            }
                        }
                    }
                    me->SetInCombatWithZone();
                    break;
                }
                case ACTION_MOUNT_ALL:
                {
                    if (uiMounts.empty())
                        return;

                    for (std::list<std::pair<uint64,uint64> >::iterator iter = uiMounts.begin(); iter != uiMounts.end(); ++iter)
                    {
                        Creature* mount = Unit::GetCreature(*me, (*iter).first);
                        Player* player = Unit::GetPlayer(*me, (*iter).second);

                        if (!mount || !player)
                            continue;

                        if (!player->isAlive())
                            continue;

                        //mount->SetCreatorGUID(player->GetGUID());
                        player->EnterVehicle(mount, 0);
                    }

                    me->SetInCombatWithZone();
                    break;
                }
                case ACTION_CAST_SURGE:
                {
                    if (!urand(0, 2))
                        DoScriptText(SAY_SURGE_OF_POWER, me);

                    if (getDifficulty() == RAID_DIFFICULTY_10MAN_NORMAL)
                    {
                        if (Unit* target = SelectVehicleBaseOrPlayer())
                        {
                            if (Player* player = target->GetCharmerOrOwnerPlayerOrPlayerItself())
                                me->MonsterWhisper(WHISPER_SURGE, player->GetGUID(), true);
                            DoCast(target, SPELL_SURGE_OF_POWER_10);
                        }
                    }
                    else
                    {
                        // immune all drakes and players
                        Map* map = me->GetMap();
                        if (!map->IsDungeon())
                            return;

                        Map::PlayerList const &PlayerList = map->GetPlayers();
                        for(Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                        {
                            Player* i_pl = i->getSource();
                            if (i_pl && !i_pl->isGameMaster() && i_pl->isAlive())
                            {
                                if (Unit* drake = i_pl->GetVehicleBase())
                                {
                                    drake->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SURGE_OF_POWER_25, true);
                                    i_pl->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SURGE_OF_POWER_25, true);
                                }
                            }
                        }

                        // select 3 targets, remove immunity on spellhit
                        DoCast(me, SPELL_SURGE_OF_POWER_25_MARKER, true);
                        // spellscript will select not immuned units
                        DoCast(SPELL_SURGE_OF_POWER_25);
                    }
                    break;
                }
                case ACTION_CLEAR_PLR:
                {
                    /* workaround to prevent players from falling through map in alive state (once they got unmounted) */
                    Map* map = me->GetMap();
                    if (!map->IsDungeon())
                        return;

                    Map::PlayerList const &PlayerList = map->GetPlayers();
                    for(Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                    {
                        Player* i_pl = i->getSource();
                        if (i_pl && !i_pl->isGameMaster() && i_pl->isAlive())
                        {
                            if (!i_pl->GetVehicle())
                            {
                                i_pl->SetUnitMovementFlags(0);
                                me->DealDamage(i_pl, i_pl->GetHealth());
                                i_pl->SetMovement(MOVE_ROOT);

                                // despawn dragon
                                for (std::list<std::pair<uint64, uint64> >::iterator iter = uiMounts.begin(); iter != uiMounts.end(); ++iter)
                                    if (i_pl->GetGUID() == (*iter).second)
                                        if (Creature* mount = Unit::GetCreature(*me, (*iter).first))
                                            mount->ForcedDespawn(1*IN_MILLISECONDS);
                            }
                        }
                    }
                    break;
                }
                default:
                    break;
            }
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (id)
            {
                // landed right after iris got used
                case POINT_START:
                {
                    if (m_pInstance)
                    {
                        m_pInstance->SetData(DATA_MALYGOS, IN_PROGRESS);
                        m_pInstance->DoStartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_TIMED_START_EVENT);
                    }
                    me->SetFlying(false);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_PASSIVE);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->SetInCombatWithZone();
                    uiExitPortal = m_pInstance->GetData64(GO_EXIT_PORTAL);
                    if(GameObject* pExitPortal = m_pInstance->instance->GetGameObject(uiExitPortal))
                        pExitPortal->SetPhaseMask(2, true);
                    uiFocusingIris = m_pInstance->GetData64(GO_FOCUSING_IRIS_10);
                    uiFocusingIris = m_pInstance->GetData64(GO_FOCUSING_IRIS_25);
                    if(GameObject* pFocusingIris = m_pInstance->instance->GetGameObject(uiFocusingIris))
                        pFocusingIris->SetPhaseMask(2, true);
                    uiPhase = PHASE_GROUND;
                    break;
                }
                // reached vortexing position
                case POINT_VORTEX:
                {
                    me->GetMotionMaster()->MoveIdle();
                    me->SetUInt64Value(UNIT_FIELD_TARGET, 0);
                    ExecuteVortex();
                    break;
                }
                // vortex finished, reached current victim's pos.
                case POINT_FLY_DOWN:
                {
                    me->SetFlying(false);

                    if (Unit* victim = SelectTarget(SELECT_TARGET_TOPAGGRO))
                        me->GetMotionMaster()->MoveChase(victim);

                    me->SetReactState(REACT_AGGRESSIVE);
                    // give some time to heal vortex dmg
                    uiStormTimer = urand(7*IN_MILLISECONDS, 10*IN_MILLISECONDS);
                    uiArcaneBreathTimer = RAID_MODE(7*IN_MILLISECONDS, 3*IN_MILLISECONDS);
                    uiVortexTimer = 45*IN_MILLISECONDS;
                    uiPhase = PHASE_GROUND;
                    break;
                }
                // ready to begin phase 2
                case POINT_PHASE_2_INTRO:
                    uiWaitTimer = 1*IN_MILLISECONDS;
                    uiStep = 1;
                    uiPhase = PHASE_IDLE_1;
                    break;
                case POINT_PHASE_2:
                {
                    DoScriptText(SAY_PHASE2_AGGRO, me);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    me->RemoveAllAuras();
                    DoAction(ACTION_SPAWN_ADDS);
                    uiPhase = PHASE_ADDS;
                    break;
                }
                case POINT_DESTROY_FLOOR:
                {
                    DoScriptText(SAY_PHASE3_INTRO, me);
                    DoCast(SPELL_DESTROY_PLATFORM_CHANNEL);
                    uiWaitTimer = 6*IN_MILLISECONDS;
                    uiStep = 1;
                    uiPhase = PHASE_IDLE_2;
                    break;
                }
                // start phase 3
                case POINT_PHASE_3:
                {
                    DoScriptText(SAY_PHASE3_AGGRO, me);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    DoCast(me, SPELL_ROOT, true);
                    break;
                }
                default:
                    break;
            }
        }

        void SpellHitTarget(Unit* target, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_ARCANE_BOMB)
            {
                target->CastSpell(target, SPELL_ARCANE_BOMB_KNOCKBACK, true);
                target->CastSpell(target, SPELL_ARCANE_OVERLOAD, true);
                target->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            }
            if (spell->Id == SPELL_SURGE_OF_POWER_25_MARKER)
            {
                target->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SURGE_OF_POWER_25, false);
                if (Player* player = target->GetCharmerOrOwnerPlayerOrPlayerItself())
                    me->MonsterWhisper(WHISPER_SURGE, player->GetGUID(), true);
            }
        }

        Unit* SelectVehicleBaseOrPlayer()
        {
            if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM))
            {
                if (Unit* pVehicle = pTarget->GetVehicleBase())
                    return pVehicle;

                return pTarget;
            }

            return NULL;
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if(uiStartMoveTimer <= uiDiff && StartMove)
            {
                DoScriptText(RAND(SAY_INTRO_1,SAY_INTRO_2,SAY_INTRO_3,SAY_INTRO_4,SAY_INTRO_5), me);
                switch(urand(0,3))
                {
                    case 0: me->GetMotionMaster()->MovePoint(0, 1052.417f, 1200.52f, AIR_Z);break;
                    case 1: me->GetMotionMaster()->MovePoint(0, 1247.670f, 1408.05f, AIR_Z);break;
                    case 2: me->GetMotionMaster()->MovePoint(0, 1047.675f, 1403.80f, AIR_Z);break;
                    case 3: me->GetMotionMaster()->MovePoint(0, 1243.182f, 1215.42f, AIR_Z);break;
                }
                uiStartMoveTimer = 25000;
            }else uiStartMoveTimer -= uiDiff;

            if (uiPhase == PHASE_NONE || (uiPhase != PHASE_NONE && !UpdateVictim()))
                return;

            if (uiThreatTimer <= uiDiff)
            {
                DoZoneInCombat();
                uiThreatTimer = 5*IN_MILLISECONDS;
            } else uiThreatTimer -= uiDiff;

            if (!me->HasAura(SPELL_ENRAGE))
            {
                if (uiEnrageTimer <= uiDiff)
                {
                    if (uiPhase == PHASE_GROUND || uiPhase == PHASE_ADDS || uiPhase == PHASE_DRAGONS)
                    {
                        me->InterruptNonMeleeSpells(true);
                        DoCast(me, SPELL_ENRAGE, true);

                        if (uiPhase == PHASE_ADDS)
                        {
                            me->SetFlying(true);
                            me->SetSpeed(MOVE_FLIGHT, 10.0f);
                            me->SetReactState(REACT_AGGRESSIVE);
                            me->GetMotionMaster()->Clear();
                            me->GetMotionMaster()->MoveChase(me->getVictim());
                        }
                    }
                } else uiEnrageTimer -= uiDiff;
            }

            // the boss is handling vortex
            if (me->HasAura(SPELL_VORTEX_2))
                return;

            switch (uiPhase)
            {
                case PHASE_GROUND:
                {
                    if (me->HasUnitState(UNIT_STAT_CASTING))
                        return;

                    if (uiStormTimer <= uiDiff)
                    {
                        DoCast(me, RAID_MODE(SPELL_ARCANE_STORM_10, SPELL_ARCANE_STORM_25), true);
                        uiStormTimer = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
                    } else uiStormTimer -= uiDiff;

                    if (uiSparkTimer <= uiDiff)
                    {
                        DoScriptText(SAY_SPARK_SUMMON, me);
                        m_pInstance->SetData(DATA_POWER_SPARKS_HANDLING,0);
                        uiSparkTimer = 30*IN_MILLISECONDS;
                    } else uiSparkTimer -= uiDiff;

                    if (uiArcaneBreathTimer <= uiDiff)
                    {
                        DoCast(me->getVictim(), RAID_MODE(SPELL_ARCANE_BREATH_10, SPELL_ARCANE_BREATH_25));
                        uiArcaneBreathTimer = 20*IN_MILLISECONDS;
                    } else uiArcaneBreathTimer -= uiDiff;

                    if (uiVortexTimer <= uiDiff)
                    {
                        DoScriptText(SAY_VORTEX, me);
                        PrepareForVortex();
                        uiVortexTimer = 60*IN_MILLISECONDS;
                    } else uiVortexTimer -= uiDiff;

                    // fly up for p2
                    if (HealthBelowPct(50))
                    {
                        if (!me->HasAura(SPELL_ENRAGE))
                        {
                            me->SetFlying(true);
                            me->SetReactState(REACT_PASSIVE);
                            me->GetMotionMaster()->MovePoint(POINT_PHASE_2_INTRO, 1154.20f, 1301.68f, AIR_Z);
                            uiWaitTimer = 60*IN_MILLISECONDS; // dummy
                            uiPhase = PHASE_IDLE_1;
                        }
                    }

                    DoMeleeAttackIfReady();
                    break;
                }
                case PHASE_ADDS:
                {
                    if (me->HasUnitState(UNIT_STAT_CASTING))
                        return;

                    if (uiOverloadTimer <= uiDiff)
                    {
                        DoAction(ACTION_OVERLOAD);
                        uiOverloadTimer = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);
                    } else uiOverloadTimer -= uiDiff;

                    if (uiSurgeOfPowerTimer <= uiDiff)
                    {
                        DoAction(ACTION_DEEP_BREATH);
                        uiSurgeOfPowerTimer = 60*IN_MILLISECONDS;
                    } else uiSurgeOfPowerTimer -= uiDiff;

                    if (uiAddsCount == RAID_MODE(6, 12))
                    {
                        DoScriptText(SAY_PHASE2_END, me);
                        me->GetMotionMaster()->MovePoint(POINT_DESTROY_FLOOR, Locations[1]);
                        Summons.DespawnAll(); // remove remaining anti-magic shells and discs
                        uiWaitTimer = 60*IN_MILLISECONDS; // dummy
                        uiPhase = PHASE_IDLE_2;
                    }

                    if (me->HasAura(SPELL_ENRAGE))
                        DoMeleeAttackIfReady();

                    break;
                }
                case PHASE_DRAGONS:
                {
                    if (uiStormTimer <= uiDiff)
                    {
                        if (!me->IsNonMeleeSpellCasted(false))
                        {
                            if (!urand(0, 2))
                                DoScriptText(RAND(SAY_PHASE3_CAST_1, SAY_PHASE3_CAST_2, SAY_PHASE3_CAST_3), me);
                            DoCast(me, RAID_MODE(SPELL_ARCANE_STORM_10, SPELL_ARCANE_STORM_25));
                            uiStormTimer = urand(7*IN_MILLISECONDS, 10*IN_MILLISECONDS);
                        }
                    } else uiStormTimer -= uiDiff;

                    if (uiSurgeOfPowerTimer <= uiDiff)
                    {
                        DoAction(ACTION_CAST_SURGE);
                        uiSurgeOfPowerTimer = 10*IN_MILLISECONDS;
                    } else uiSurgeOfPowerTimer -= uiDiff;

                    if (uiArcanePulseTimer <= uiDiff)
                    {
                        DoCast(me, SPELL_ARCANE_PULSE, true);
                        uiArcanePulseTimer = 10*IN_MILLISECONDS;
                    } else uiArcanePulseTimer -= uiDiff;

                    if (uiStaticFieldTimer <= uiDiff)
                    {
                        if (!me->IsNonMeleeSpellCasted(false))
                        {
                            if (Unit* pTarget = SelectVehicleBaseOrPlayer())
                            {
                                if (!urand(0, 2))
                                    DoScriptText(RAND(SAY_PHASE3_CAST_1, SAY_PHASE3_CAST_2, SAY_PHASE3_CAST_3), me);
                                DoCast(pTarget, SPELL_STATIC_FIELD_MISSLE);
                            }
                            uiStaticFieldTimer = 25*IN_MILLISECONDS;
                        }
                    } else uiStaticFieldTimer -= uiDiff;

                    if (uiWaitTimer <= uiDiff)
                    {
                        DoAction(ACTION_CLEAR_PLR);
                        uiWaitTimer = 1*IN_MILLISECONDS;
                    } else uiWaitTimer -= uiDiff;

                    break;
                }
                case PHASE_IDLE_1:
                {
                    if (uiWaitTimer <= uiDiff)
                    {
                        switch (uiStep)
                        {
                            case 1:
                            {
                                DoScriptText(SAY_PHASE1_END, me);
                                me->SetUInt64Value(UNIT_FIELD_TARGET, 0);
                                uiWaitTimer = 23*IN_MILLISECONDS;
                                uiStep++;
                                break;
                            }
                            case 2:
                            {
                                me->GetMotionMaster()->MovePoint(POINT_PHASE_2, Locations[3]);
                                uiWaitTimer = 3*IN_MILLISECONDS;
                                uiStep++;
                                break;
                            }
                        }
                    } else uiWaitTimer -= uiDiff;
                }
                break;
                case PHASE_IDLE_2:
                {
                    if (uiWaitTimer <= uiDiff)
                    {
                        switch (uiStep)
                        {
                            case 1:
                            {
                                DoCast(me, SPELL_DESTROY_PLATFORM_BOOM, true);
                                DoCast(SPELL_DESTROY_PLATFORM_EVENT);
                                uiWaitTimer = 2*IN_MILLISECONDS;
                                uiStep++;
                                break;
                            }
                            case 2:
                            {
                                if (m_pInstance)
                                {
                                    if (GameObject* platform = m_pInstance->instance->GetGameObject(m_pInstance->GetData64(DATA_PLATFORM)))
                                        platform->SetFlag(GAMEOBJECT_FLAGS, GO_FLAG_DESTROYED);
                                }
                                me->GetMotionMaster()->MovePoint(POINT_PHASE_3, Locations[4]);
                                DoAction(ACTION_SPAWN_MOUNTS);
                                uiWaitTimer = 3*IN_MILLISECONDS;
                                uiStep++;
                                break;
                            }
                            case 3:
                            {
                                DoAction(ACTION_MOUNT_ALL);
                                uiSurgeOfPowerTimer = 10*IN_MILLISECONDS;
                                uiStormTimer = 15*IN_MILLISECONDS;
                                uiWaitTimer = 5*IN_MILLISECONDS;
                                uiPhase = PHASE_DRAGONS;
                                uiStep++;
                                break;
                            }
                        }
                    } else uiWaitTimer -= uiDiff;
                    break;
                }
                default:
                    return;
            }
        }

    private:
        InstanceScript* m_pInstance;
        SummonList Summons;
        std::set<uint64> SparkList;
        std::list<std::pair<uint64,uint64> > uiMounts;
        bool StartMove;
        uint8 uiStep;
        uint8 uiPhase;
        uint8 uiAddsCount;
        uint32 uiWaitTimer;
        uint32 uiStormTimer;
        uint32 uiSparkTimer;
        uint32 uiThreatTimer;
        uint32 uiEnrageTimer;
        uint32 uiVortexTimer;
        uint32 uiOverloadTimer;
        uint32 uiStaticFieldTimer;
        uint32 uiArcanePulseTimer;
        uint32 uiArcaneBreathTimer;
        uint32 uiSurgeOfPowerTimer;
        uint32 uiStartMoveTimer;
        uint64 uiExitPortal;
        uint64 uiFocusingIris;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_malygosAI (pCreature);
    }
};

class npc_portal_eoe: public CreatureScript
{
public:
    npc_portal_eoe() : CreatureScript("npc_portal_eoe") {}

    struct npc_portal_eoeAI : public ScriptedAI
    {
        npc_portal_eoeAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();   
        }

        void Reset()
        {
            summonTimer = urand(5,7)*IN_MILLISECONDS;
            SummonPortal = false;
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
            case ACTION_AKTIVATE_PORTAL:
                SummonPortal = true;
                summonTimer = 5000;
                break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!me->HasAura(SPELL_PORTAL_VISUAL_CLOSED) &&
                !me->HasAura(SPELL_PORTAL_OPENED))
                DoCast(me,SPELL_PORTAL_VISUAL_CLOSED,true);

            if (instance)
            {
                if (Creature* malygos = Unit::GetCreature(*me,instance->GetData64(DATA_MALYGOS)))
                {
                    if (malygos->AI()->GetData(DATA_PHASE) != PHASE_GROUND)
                    {
                        me->RemoveAura(SPELL_PORTAL_OPENED);
                        DoCast(me,SPELL_PORTAL_VISUAL_CLOSED,true);
                    }
                }
            }

            if (!me->HasAura(SPELL_PORTAL_OPENED))
                return;

            if (summonTimer <= diff && SummonPortal)
            {
                DoCast(SPELL_SUMMON_POWER_PARK);
                summonTimer = urand(5,7)*IN_MILLISECONDS;
                SummonPortal = false;
            } else summonTimer -= diff;
        }

        void JustSummoned(Creature* summon)
        {
            summon->SetInCombatWithZone();
        }
        
    private:
        bool SummonPortal;
        uint32 summonTimer;
        InstanceScript* instance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_portal_eoeAI(pCreature);
    }
};


class npc_power_spark: public CreatureScript
{
public:
    npc_power_spark() : CreatureScript("npc_power_spark") {}

    struct npc_power_sparkAI : public ScriptedAI
    {
        npc_power_sparkAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();

            MoveToMalygos();    
        }

        void EnterEvadeMode()
        {
            me->DespawnOrUnsummon();
        }

        void MoveToMalygos()
        {
            me->GetMotionMaster()->MoveIdle();

            if (instance)
            {
                if (Creature* malygos = Unit::GetCreature(*me,instance->GetData64(DATA_MALYGOS)))
                    me->GetMotionMaster()->MoveFollow(malygos,0.0f,0.0f);
            }
        }
        
        void UpdateAI(const uint32 diff)
        {
            if (!instance)
                return;

            if (me->HasAura(SPELL_POWER_SPARK_PLAYERS))
                return;

            if (Creature* malygos = Unit::GetCreature(*me,instance->GetData64(DATA_MALYGOS)))
            {
                if (malygos->AI()->GetData(DATA_PHASE) != PHASE_GROUND)
                {
                    me->DespawnOrUnsummon();
                    return;
                }

                if (malygos->HasAura(SPELL_VORTEX_1))
                {
                    me->GetMotionMaster()->MoveIdle();
                    return;
                }

                if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() != TARGETED_MOTION_TYPE)
                    me->GetMotionMaster()->MoveFollow(malygos,0.0f,0.0f);
            }
        }

        void DamageTaken(Unit* /*done_by*/, uint32& damage)
        {
            if (damage > me->GetMaxHealth())
            {
                me->RemoveAllAuras();
                damage = me->GetHealth() - 1;
                DoCast(me, SPELL_POWER_SPARK_PLAYERS, true);

                me->SetFlying(false);
                me->SetReactState(REACT_PASSIVE);
                me->GetMotionMaster()->Clear();
                me->GetMotionMaster()->MoveFall(FLOOR_Z); // TODO: really remove fly state
                me->ForcedDespawn(60*IN_MILLISECONDS);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            }
        }

    private:
        InstanceScript* instance;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_power_sparkAI(creature);
    }
};

class npc_scion_of_eternity : public CreatureScript
{
public:
    npc_scion_of_eternity() : CreatureScript("npc_scion_of_eternity") { }

    struct npc_scion_of_eternityAI : public ScriptedAI
    {
        npc_scion_of_eternityAI(Creature* pCreature) : ScriptedAI(pCreature) {}

        void Reset()
        {
            uiArcaneBarrageTimer = urand(10*IN_MILLISECONDS, 20*IN_MILLISECONDS);
        }

        void SpellHitTarget(Unit* target, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_ARCANE_BARRAGE)
                target->CastSpell(target, SPELL_ARCANE_BARRAGE_DMG, true, NULL, NULL, me->GetGUID());
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (uiArcaneBarrageTimer <= uiDiff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, false, -SPELL_ARCANE_BARRAGE_DMG))
                {
                    if (pTarget->GetVehicle())
                        return;

                    // try to skip spell fly time
                    SpellEntry const *spellInfo = sSpellStore.LookupEntry(SPELL_ARCANE_BARRAGE_DMG);
                    if (spellInfo)
                        me->AddAura(spellInfo, 2, pTarget);

                    DoCast(pTarget, SPELL_ARCANE_BARRAGE);
                    uiArcaneBarrageTimer = urand(8*IN_MILLISECONDS, 12*IN_MILLISECONDS);
                }
            } else uiArcaneBarrageTimer -= uiDiff;
        }

    private:
        uint32 uiArcaneBarrageTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_scion_of_eternityAI(pCreature);
    }
};

class npc_nexus_lord : public CreatureScript
{
public:
    npc_nexus_lord() : CreatureScript("npc_nexus_lord") { }

    struct npc_nexus_lordAI : public ScriptedAI
    {
        npc_nexus_lordAI(Creature* pCreature) : ScriptedAI(pCreature) {}

        void Reset()
        {
            uiHasteTimer = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);
            uiArcaneShockTimer = urand(5*IN_MILLISECONDS, 10*IN_MILLISECONDS);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (uiArcaneShockTimer <= uiDiff)
            {
                DoCast(me->getVictim(), RAID_MODE(SPELL_ARCANE_SHOCK_10, SPELL_ARCANE_SHOCK_25));
                uiArcaneShockTimer = urand(5*IN_MILLISECONDS, 10*IN_MILLISECONDS);
            } else uiArcaneShockTimer -= uiDiff;

            if (uiHasteTimer <= uiDiff)
            {
                DoCast(me, SPELL_HASTE);
                uiHasteTimer = urand(15*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            } else uiHasteTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }

    private:
        uint32 uiArcaneShockTimer;
        uint32 uiHasteTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_nexus_lordAI(pCreature);
    }
};

class npc_alexstrasza : public CreatureScript
{
public:
    npc_alexstrasza() : CreatureScript("npc_alexstrasza") { }

    struct npc_alexstraszaAI : public ScriptedAI
    {
        npc_alexstraszaAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            m_pInstance = pCreature->GetInstanceScript();
        }

        void Reset()
        {
            uiStep = 1;
            uiStepTimer = 5*IN_MILLISECONDS;
            me->SetFlying(true);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (uiStepTimer <= uiDiff)
            {
                switch (uiStep)
                {
                    // workaround
                    case 1:
                    {
                        if (m_pInstance)
                        {
                            if (GameObject* platform = m_pInstance->instance->GetGameObject(m_pInstance->GetData64(DATA_PLATFORM)))
                                platform->RemoveFlag(GAMEOBJECT_FLAGS, GO_FLAG_DESTROYED);
                        }

                        Map* map = me->GetMap();
                        if (!map->IsDungeon())
                            return;

                        Map::PlayerList const &PlayerList = map->GetPlayers();
                        for(Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                        {
                            Player* i_pl = i->getSource();
                            if (i_pl && !i_pl->isGameMaster() && i_pl->isAlive())
                            {
                                if (Unit* pMount = i_pl->GetVehicleBase())
                                {
                                    i_pl->ExitVehicle();
                                    i_pl->JumpTo(me, 10.0f);
                                    pMount->ToCreature()->ForcedDespawn(1*IN_MILLISECONDS);
                                    me->CastSpell(i_pl, VEHICLE_SPELL_PARACHUTE, true);
                                }
                            }
                        }
                        uiStepTimer = 7*IN_MILLISECONDS;
                        break;
                    }
                    case 2:
                    {
                        DoScriptText(SAY_OUTRO_1, me);
                        uiStepTimer = 9*IN_MILLISECONDS;
                        break;
                    }
                    case 3:
                    {
                        DoScriptText(SAY_OUTRO_2, me);
                        if (Creature* pGift = me->SummonCreature(NPC_ALEXSTRASZAS_GIFT, Locations[5], TEMPSUMMON_TIMED_DESPAWN, 90*IN_MILLISECONDS))
                        {
                            pGift->SetFlying(true);
                            pGift->SetDisplayId(11686);
                            pGift->CastSpell(pGift, SPELL_ALEXSTRASZAS_GIFT_VISUAL, true);
                            DoCast(SPELL_ALEXSTRASZAS_GIFT_BEAM);
                        }
                        uiStepTimer = 5*IN_MILLISECONDS;
                        break;
                    }
                    case 4:
                    {
                        DoScriptText(SAY_OUTRO_3, me);
                        me->SummonGameObject(RAID_MODE(GO_ALEXSTRASZAS_GIFT_10, GO_ALEXSTRASZAS_GIFT_25), Locations[5].GetPositionX(),
                            Locations[5].GetPositionY(), Locations[5].GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0);
                        me->SummonGameObject(RAID_MODE(GO_HEART_OF_MAGIC_10, GO_HEART_OF_MAGIC_25), Locations[5].GetPositionX() + 15.0f,
                            Locations[5].GetPositionY(), Locations[5].GetPositionZ(), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0);

                        if (m_pInstance)
                            m_pInstance->SetData(TYPE_MALYGOS, DONE);

                        uiStepTimer = 23*IN_MILLISECONDS;
                        break;
                    }
                    case 5:
                    {
                        DoScriptText(SAY_OUTRO_4, me);
                        uiStepTimer = 10*MINUTE*IN_MILLISECONDS;
                        break;
                    }
                }
                uiStep++;
            } else uiStepTimer -= uiDiff;
        }

    private:
        InstanceScript* m_pInstance;
        uint32 uiStepTimer;
        uint8 uiStep;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_alexstraszaAI(pCreature);
    }
};

class npc_hover_disc : public CreatureScript
{
public:
    npc_hover_disc() : CreatureScript("npc_hover_disc") { }

    struct npc_hover_discAI : public ScriptedAI
    {
        npc_hover_discAI(Creature* pCreature) : ScriptedAI(pCreature) {}

        void Reset()
        {
            move = false;
            uiCheckTimer = 1*IN_MILLISECONDS;
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_ARCANE_BOMB_KNOCKBACK, true);
        }

        void PassengerBoarded(Unit* pWho, int8 /*seatId*/, bool apply)
        {
            if (!apply)
                me->ForcedDespawn(1*IN_MILLISECONDS);
        }

        void SetData(uint32 /*type*/, uint32 data)
        {
            count = data;
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            if (Unit* pUnit = me->GetVehicleKit()->GetPassenger(0))
            {
                if (!pUnit->ToCreature())
                    return;

                if (pUnit->GetEntry() == NPC_NEXUS_LORD)
                {
                    pUnit->ToCreature()->SetReactState(REACT_AGGRESSIVE);
                    pUnit->ToCreature()->SetInCombatWithZone();
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->SetInCombatWithZone();
                }
                else
                {
                    move = true;
                }
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (move)
            {
                move = false;
                float x, y, angle;
                angle = float(count) * 2 * M_PI / 16;
                x = Locations[1].GetPositionX() + float(urand(20, 28)) * cos(angle);
                y = Locations[1].GetPositionY() + float(urand(20, 28)) * sin(angle);
                me->GetMotionMaster()->MovePoint(1, x, y, FLOOR_Z + 10.0f);

                count--;
                if (count == 0)
                    count = 16;
            }

            if (!UpdateVictim())
                return;

            // TODO: find a better way
            if (me->GetReactState() == REACT_AGGRESSIVE)
            {
                if (uiCheckTimer <= uiDiff)
                {
                    Unit* pUnit = me->GetVehicleKit()->GetPassenger(0);
                    if (pUnit && pUnit->GetTypeId() == TYPEID_UNIT && pUnit->GetEntry() == NPC_NEXUS_LORD)
                    {
                        Unit* pTarget = pUnit->getVictim();
                        if (pTarget && pTarget != me->getVictim())
                        {
                            me->getThreatManager().modifyThreatPercent(me->getVictim(), -100);
                            me->AddThreat(pTarget, 9999999.0f);
                        }
                    }
                    uiCheckTimer = 1*IN_MILLISECONDS;
                } else uiCheckTimer -= uiDiff;
            }
        }

    private:
        bool move;
        uint32 count;
        uint32 uiCheckTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_hover_discAI(pCreature);
    }
};

class go_focusing_iris : public GameObjectScript
{
public:
    go_focusing_iris() : GameObjectScript("go_focusing_iris") { }

    bool OnGossipHello(Player * /*pPlayer*/, GameObject* pGO)
    {
        InstanceScript* m_pInstance = pGO->GetInstanceScript();

        Creature* pMalygos = Unit::GetCreature(*pGO, m_pInstance ? m_pInstance->GetData64(DATA_MALYGOS) : 0);
        if (pMalygos && pMalygos->isAlive())
        {
            pGO->SetFlag(GAMEOBJECT_FLAGS, GO_FLAG_UNK1);
            pMalygos->AI()->DoAction(ACTION_START);

            if (Creature* pTrigger = pGO->SummonCreature(NPC_SURGE_OF_POWER, pGO->GetPositionX(), pGO->GetPositionY(), 277.0f, 0.0f,
                TEMPSUMMON_TIMED_DESPAWN, 6*IN_MILLISECONDS))
            {
                pTrigger->SetDisplayId(11686);
                pTrigger->SetFlying(true);
                pTrigger->SetReactState(REACT_PASSIVE);
                pTrigger->CastSpell(pTrigger, SPELL_IRIS_VISUAL, true);
            }
        }
        return true;
    }
};

/*class IsBadTargetForSpell
{
    public:
        IsBadTargetForSpell() { }

        bool operator() (Unit* unit)
        {
            SpellEntry* sSurge;
            sSurge = GET_SPELL(SPELL_SURGE_OF_POWER_25);
            if (sSurge)
                return unit->IsImmunedToSpell(sSurge);

            return true;
        }
};*/

/*class spell_surge_of_power_targeting : public SpellScriptLoader
{
public:
    spell_surge_of_power_targeting() : SpellScriptLoader("spell_surge_of_power_targeting") { }

    class spell_surge_of_power_targeting_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_surge_of_power_targeting_SpellScript)

        void FilterTargets(std::list<Unit*>& unitList)
        {
            unitList.remove_if(IsBadTargetForSpell());
        }

        void Register()
        {
            OnUnitTargetSelect += SpellUnitTargetFn(spell_surge_of_power_targeting_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_AREA_ENEMY_SRC);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_surge_of_power_targeting_SpellScript();
    }
};*/

class spell_malygos_vortex_dummy : public SpellScriptLoader
{
public:
    spell_malygos_vortex_dummy() : SpellScriptLoader("spell_malygos_vortex_dummy") {}

    class spell_malygos_vortex_dummy_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_malygos_vortex_dummy_SpellScript)
   
        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();

            if (!caster)
                return;

            // each player will enter to the trigger vehicle (entry 30090) already spawned (each one can hold up to 5 players, it has 5 seats)
            // the players enter to the vehicles casting SPELL_VORTEX_4 OR SPELL_VORTEX_5
            if (InstanceScript* instance = caster->GetInstanceScript())
                instance->SetData(DATA_VORTEX_HANDLING,0);

            // the rest of the vortex execution continues when SPELL_VORTEX_2 is removed.
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_malygos_vortex_dummy_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_malygos_vortex_dummy_SpellScript();
    }
};

class spell_malygos_vortex_visual : public SpellScriptLoader
{
    public:
        spell_malygos_vortex_visual() : SpellScriptLoader("spell_malygos_vortex_visual") { }

        class spell_malygos_vortex_visual_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_malygos_vortex_visual_AuraScript);

            void OnRemove(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
            {
                std::list<HostileReference*> &m_threatlist = GetCaster()->getThreatManager().getThreatList();
                for (std::list<HostileReference*>::const_iterator itr = m_threatlist.begin(); itr!= m_threatlist.end(); ++itr)
                {
                    if (Unit* target = (*itr)->getTarget())
                    {
                        Player* targetPlayer = target->ToPlayer();

                        if (!targetPlayer || targetPlayer->isGameMaster())
                            continue;

                        if (InstanceScript* instance = GetCaster()->GetInstanceScript())
                        {
                            // teleport spell - i am not sure but might be it must be casted by each vehicle when its passenger leaves it
                            if (Creature* trigger = GetCaster()->GetMap()->GetCreature(instance->GetData64(DATA_TRIGGER)))
                                trigger->CastSpell(targetPlayer, SPELL_VORTEX_6, true);
                        }
                    }
                }

                if (Creature* malygos = GetCaster()->ToCreature())
                {
                    // This is a hack, we have to re add players to the threat list because when they enter to the vehicles they are removed.
                    // Anyway even with this issue, the boss does not enter in evade mode - this prevents iterate an empty list in the next vortex execution.
                    malygos->SetInCombatWithZone();

                    malygos->RemoveUnitMovementFlag(MOVEMENTFLAG_LEVITATING);

                    malygos->GetMotionMaster()->MoveChase(GetCaster()->getVictim());
                    malygos->RemoveAura(SPELL_VORTEX_1);
                }

            }

            void Register()
            {
                OnEffectRemove += AuraEffectRemoveFn(spell_malygos_vortex_visual_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_malygos_vortex_visual_AuraScript();
        }
};

class spell_malygos_deep_breath : public SpellScriptLoader
{
public:
    spell_malygos_deep_breath() : SpellScriptLoader("spell_malygos_deep_breath") { }

    class spell_malygos_deep_breath_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_malygos_deep_breath_SpellScript)

        void FilterTargets(std::list<Unit*>& targetList)
        {
            for (std::list<Unit*>::iterator itr = targetList.begin() ; itr != targetList.end();)
            {
                if ((*itr)->GetVehicle())
                    itr = targetList.erase(itr);
                else
                    ++itr;
            }            
        }

        void Register()
        {
            OnUnitTargetSelect += SpellUnitTargetFn(spell_malygos_deep_breath_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_AREA_ENEMY_SRC);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_malygos_deep_breath_SpellScript();
    }
};

void AddSC_boss_malygos()
{
    new boss_malygos();
    new npc_nexus_lord();
    new npc_scion_of_eternity();
    new npc_alexstrasza();
    new npc_power_spark();
    new npc_portal_eoe();
    new npc_hover_disc();
    new go_focusing_iris();
    //new spell_surge_of_power_targeting();
    new spell_malygos_vortex_dummy();
    new spell_malygos_vortex_visual();
    new spell_malygos_deep_breath();
}