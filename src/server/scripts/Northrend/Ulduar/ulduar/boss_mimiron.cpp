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
 
/* ScriptData
SDName: Mimiron
SDAuthor:
SD%Complete: 95
SDComments: P3Wx2 Laser Barrage not works in phase 4.
EndScriptData */

#include "ScriptPCH.h"
#include "ulduar.h"

enum Yells
{
    SAY_AGGRO                                   = -1603240,
    SAY_HARDMODE_ON                             = -1603241,
    SAY_MKII_ACTIVATE                           = -1603242,
    SAY_MKII_SLAY_1                             = -1603243,
    SAY_MKII_SLAY_2                             = -1603244,
    SAY_MKII_DEATH                              = -1603245,
    SAY_VX001_ACTIVATE                          = -1603246,
    SAY_VX001_SLAY_1                            = -1603247,
    SAY_VX001_SLAY_2                            = -1603248,
    SAY_VX001_DEATH                             = -1603249,
    SAY_AERIAL_ACTIVATE                         = -1603250,
    SAY_AERIAL_SLAY_1                           = -1603251,
    SAY_AERIAL_SLAY_2                           = -1603252,
    SAY_AERIAL_DEATH                            = -1603253,
    SAY_V07TRON_ACTIVATE                        = -1603254,
    SAY_V07TRON_SLAY_1                          = -1603255,
    SAY_V07TRON_SLAY_2                          = -1603256,
    SAY_V07TRON_DEATH                           = -1603257,
    SAY_BERSERK                                 = -1603258,
    SAY_YS_HELP                                 = -1603259,
    SAY_COMPUTER_HARDMODE						= -1603365,
    SAY_TEN										= -1603366,
    SAY_NINE									= -1603367,
    SAY_EIGHT									= -1603368,
    SAY_SEVEN									= -1603369,
    SAY_SIX										= -1603370,
    SAY_FIVE									= -1603371,
    SAY_FOUR									= -1603372,
    SAY_THREE									= -1603373,
    SAY_TWO										= -1603374,
    SAY_ONE										= -1603375,
    SAY_SELFDESTRUCT							= -1603376,
    EMOTE_LEVIATHAN                             = -1603377
};

enum Models
{
    MODEL_INVISIBLE					            =	11686,
};

enum eSpells
{
    // Leviathan MK II
    SPELL_MINES_SPAWN                           = 65347,
    SPELL_PROXIMITY_MINES                       = 63027,
    SPELL_NAPALM_SHELL                          = 63666,
    SPELL_PLASMA_BLAST                          = 62997,
    SPELL_SHOCK_BLAST                           = 63631,
    SPELL_EXPLOSION                             = 66351,
   
    // VX-001
    SPELL_RAPID_BURST                           = 63382,
    SPELL_ROCKET_STRIKE                         = 63036,
    SPELL_ROCKET_STRIKE_AURA                    = 64064,
    SPELL_ROCKET_STRIKE_IMMUNITY                = 63041,
    SPELL_LASER_BARRAGE                         = 63274,
    SPELL_SPINNING_UP                           = 63414,
    SPELL_HEAT_WAVE                             = 63677,
    SPELL_HAND_PULSE_R                          = 64352,
    SPELL_HAND_PULSE_L                          = 64348,
   
    // Aerial Command Unit
    SPELL_PLASMA_BALL                           = 63689,
    SPELL_MAGNETIC_CORE                         = 64436,
    SPELL_MAGNETIC_CORE_VISUAL                  = 64438,
    SPELL_BOOM_BOT_SUMMON                       = 63811,
    SPELL_BOOM_BOT                              = 63801,
    SPELL_MAGNETIC_FIELD                        = 64668,
    SPELL_HOVER                                 = 57764, // Set Hover position
    SPELL_BERSERK                               = 47008,
    SPELL_SUMMON_ASSAULT_BOT					= 64427,
    SPELL_SUMMON_JUNK_BOT						= 63819,
    SPELL_SUMMON_EFFEKT_RED						= 64426,
    SPELL_SUMMON_EFFEKT_BLUE					= 63773,
    SPELL_SUMMON_EFFEKT_GREEN					= 62895,
   
    // Hard Mode
    SPELL_EMERGENCY_MODE                        = 64582,
    SPELL_FLAME_SUPPRESSANT_1                   = 64570,
    SPELL_FLAME_SUPPRESSANT_2                   = 65192,
    SPELL_FLAME                                 = 64561,
    SPELL_FROST_BOMB                            = 64624,
    SPELL_WATER_SPRAY                           = 64619,
    SPELL_SIREN                                 = 64616,
    SPELL_FROST_BOMB_EXPLODE					= 65333, 
    SPELL_SELF_DESTRUCT                         = 64610,
    SPELL_FLAMES_SUMMON							= 64563,
    SPELL_FLAMES_SPREAD							= 64562,

    SPELL_MIMIRON_JETPACK                       = 63341,
    SPELL_SELF_DESTRUCT_EFFEKT                  = 49033,

    // All
    SPELL_SELF_REPAIR                           = 64383,
	SPELL_TRIGGER_MISSILE                       = 65347,
};

enum eEvents
{
    // Leviathan MK II
    EVENT_NONE                                  = 1,
    EVENT_PROXIMITY_MINE                        = 2,
    EVENT_NAPALM_SHELL                          = 3,
    EVENT_PLASMA_BLAST                          = 4,
    EVENT_SHOCK_BLAST                           = 5,
    EVENT_FLAME_SUPPRESSANT                     = 6,
   
    // VX-001
    EVENT_RAPID_BURST                           = 7,
    EVENT_PRE_LASER_BARRAGE                     = 8,
    EVENT_LASER_BARRAGE                         = 9,
    EVENT_ROCKET_STRIKE                         = 10,
    EVENT_HEAT_WAVE                             = 11,
    EVENT_HAND_PULSE                            = 12,
    EVENT_FROST_BOMB                            = 13,
    EVENT_FLAME_SUPPRESSANT_2                   = 14,
   
    // Aerial Command Unit
    EVENT_PLASMA_BALL                           = 15,
    EVENT_REACTIVATE_AERIAL                     = 16,
    EVENT_SUMMON_BOTS                           = 17,
    // Computer
    EVENT_DESTRUCTION                           = 18,
    EVENT_ONE                                   = 19,
    EVENT_TWO                                   = 20,
    EVENT_THREE                                 = 21,
    EVENT_FOUR                                  = 22,
    EVENT_FIVE                                  = 23,
    EVENT_SIX                                   = 24,
    EVENT_SEVEN                                 = 25,
    EVENT_EIGHT                                 = 26,
    EVENT_NINE                                  = 27,
    EVENT_TEN                                   = 28,
    EVENT_EXPLOSION                             = 29,
};

enum Phases
{
    PHASE_NULL                                  = 0,
    PHASE_INTRO                                 = 1,
    PHASE_COMBAT                                = 2,
    PHASE_LEVIATHAN_SOLO                        = 3,
    PHASE_LEVIATHAN_ASSEMBLED                   = 4,
    PHASE_VX001_ACTIVATION                      = 5,
    PHASE_VX001_SOLO                            = 6,
    PHASE_VX001_ASSEMBLED                       = 7,
    PHASE_AERIAL_ACTIVATION                     = 8,
    PHASE_AERIAL_SOLO                           = 9,
    PHASE_AERIAL_ASSEMBLED                      = 10,
    PHASE_V0L7R0N_ACTIVATION                    = 11,
    PHASE_ENDING                                = 12,
};

enum eActions
{
    DO_START_ENCOUNTER                          = 1,
    DO_ACTIVATE_VX001                           = 2,
    DO_START_VX001                              = 3,
    DO_ACTIVATE_AERIAL                          = 4,
    DO_START_AERIAL                             = 5,
    DO_DISABLE_AERIAL                           = 6,
    DO_ACTIVATE_V0L7R0N                         = 7,
    DO_LEVIATHAN_ASSEMBLED                      = 8,
    DO_VX001_ASSEMBLED                          = 9,
    DO_AERIAL_ASSEMBLED                         = 10,
    DO_LEVIATHAN_PASSIVE                        = 11,
    DO_VX001_PASSIVE                            = 12,
    DO_AERIAL_PASSIVE                           = 13,
    DO_ACTIVATE_DEATH_TIMER                     = 14,
    DO_ENTER_ENRAGE                             = 15,
    DO_ACTIVATE_HARD_MODE                       = 16,
    DO_BLUE_BEAM                                = 17,
    DO_RED_BEAM                                 = 18,
    DO_GREEN_BEAM                               = 19,
};

enum eAchievements
{
     ACHIEVEMENT_FIREFIGHTER_10                 = 3180,            
     ACHIEVEMENT_FIREFIGHTER_25                 = 3189,
     ACHIEVEMENT_NOT_SO_FRIENDLY_FIRE_10        = 3138,        
     ACHIEVEMENT_NOT_SO_FRIENDLY_FIRE_25        = 2995,
     ACHIEVEMENT_SET_UP_US_THE_BOMB_10          = 2989,         
     ACHIEVEMENT_SET_UP_US_THE_BOMB_25          = 3237,
};

enum MimironChests
{
    CACHE_OF_INNOVATION_10                      = 194789,
    CACHE_OF_INNOVATION_HARDMODE_10             = 194790,
    CACHE_OF_INNOVATION_25                      = 194956,
    CACHE_OF_INNOVATION_HARDMODE_25             = 194957
};

const Position SummonPos[9] =
{
    {2703.93f, 2569.32f, 364.397f, 0.0f},
    {2715.33f, 2569.23f, 364.397f, 0.0f},
    {2726.85f, 2569.28f, 364.397f, 0.0f},
    {2765.24f, 2534.38f, 364.397f, 0.0f},
    {2759.54f, 2544.30f, 364.397f, 0.0f},
    {2753.82f, 2554.22f, 364.397f, 0.0f},
    {2764.95f, 2604.11f, 364.397f, 0.0f},
    {2759.19f, 2594.26f, 364.397f, 0.0f},
    {2753.56f, 2584.30f, 364.397f, 0.0f}
};

bool mimironHardMode;

class boss_mimiron : public CreatureScript
{
public:
    boss_mimiron() : CreatureScript("boss_mimiron") { }

    struct boss_mimironAI : public BossAI
    {
        boss_mimironAI(Creature *creature) : BossAI(creature, BOSS_MIMIRON), summons(me)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true); // Death Grip jump effect
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_ROCKET_STRIKE_IMMUNITY, true); // Rocket Strike immunity      
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
            _Reset();
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_USESTANDING);
            me->SetVisible(true);
            me->ExitVehicle();
            me->GetMotionMaster()->MoveTargetedHome();
            me->SetReactState(REACT_PASSIVE);

            summons.DespawnAll();
            if (instance)
            {
                instance->SetData(DATA_MIMIRON_ELEVATOR, GO_STATE_ACTIVE);
                instance->SetBossState(BOSS_MIMIRON, NOT_STARTED);

                for (uint8 data = DATA_LEVIATHAN_MK_II; data <= DATA_AERIAL_UNIT; ++data)
                {
                    if (Creature *creature = Creature::GetCreature((*me), instance->GetData64(data)))
                    {
                        if (creature->isAlive())
                        {
                            creature->ExitVehicle();
                            creature->AI()->EnterEvadeMode();
                        }
                    }
                }
            }
            phase = PHASE_NULL;
            step = 0;
			randomSeatTimer = 10000;
            phasetimer = -1;
            botTimer = 0;
            checkBotAlive = true;
            enraged = false;
            mimironHardMode = false;
            flames = false;
			fight = false;
            Despawncreatures();
        }

        void JustDied(Unit *victim)
        {
            _JustDied();
        }

        void JustSummoned(Creature* summon)
        {
            switch(summon->GetEntry())
            {
            case NPC_FLAME_INITIAL:
                if (Unit* target = me->SelectNearestTarget())
                summon->AI()->AttackStart(target);
                summon->AI()->DoZoneInCombat();
                break;
            case NPC_COMPUTER:
                summon->AI()->DoZoneInCombat();
                break;
            }
		}

        void JustReachedHome()
        {
            if (instance)
                instance->SetBossState(BOSS_MIMIRON, FAIL);
        }

        void Despawncreatures()
        {
            DespawnCreatures(NPC_BURST_TARGET, 250);
            DespawnCreatures(NPC_JUNK_BOT, 250);
            DespawnCreatures(NPC_ASSAULT_BOT, 250);
            DespawnCreatures(NPC_BOOM_BOT, 250);
            DespawnCreatures(NPC_EMERGENCY_BOT, 250);
            DespawnCreatures(NPC_FLAME_MOVE, 250);
            DespawnCreatures(NPC_COMPUTER, 250);
            DespawnCreatures(NPC_FLAME_INITIAL, 250);
            DespawnCreatures(NPC_SUMMON_BOT_TRIGGER, 250);
        }

        void BindToInstance()
        {
            Map::PlayerList const& players = me->GetMap()->GetPlayers();
            if (!players.isEmpty())
            {
                for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                {
                    Player* pPlayer = itr->getSource();
                    if (pPlayer)
                        me->GetMap()->ToInstanceMap()->PermBindAllPlayers(pPlayer);
                }
            }
        }

        void EnterCombat(Unit *who)
        {
            if (instance)
                instance->SetBossState(BOSS_MIMIRON, IN_PROGRESS);

            _EnterCombat();
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            phase = PHASE_INTRO;
            enrageTimer = 15*60*1000; // Enrage in 15 min
            flameTimer = 30000;
			fight = true;

            if(mimironHardMode)
            {
                JumpToNextStep(9000);
                me->SummonCreature(NPC_COMPUTER, 2744.649902f, 2569.459961f, 364.397003f, 3.1415090f, TEMPSUMMON_DEAD_DESPAWN, 0);
                flames = true;
            }
            else JumpToNextStep(100);
        }

        void JumpToNextStep(uint32 uiTimer)
        {
            phasetimer = uiTimer;
            ++step;
        }

        void UpdateAI(const uint32 diff)
        {
			if (randomSeatTimer<= diff && !fight)
            {
                switch(urand(0,3))
                {
                    case 0:
                        if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                            me->EnterVehicle(leviathan->GetVehicleKit(), 1);
                        break;
                    case 1:
                        if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                            me->EnterVehicle(leviathan->GetVehicleKit(), 2);
                        break;
                    case 2:
                        if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
							me->EnterVehicle(leviathan->GetVehicleKit(), 3);
                        break;
                    case 3:
                        if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                            me->EnterVehicle(leviathan->GetVehicleKit(), 4);
                        break;
                }
				randomSeatTimer = 10000;
            }
            else randomSeatTimer -= diff;

            if (!UpdateVictim())
                return;
	           
            if (enrageTimer<= diff && !enraged)
            {
                DoScriptText(SAY_BERSERK, me);
                for (uint8 data = DATA_LEVIATHAN_MK_II; data <= DATA_AERIAL_UNIT; ++data)
                {
                    if (Creature *creature = Creature::GetCreature((*me), instance->GetData64(data)))
						creature->AI()->DoAction(DO_ENTER_ENRAGE);
                }
                enraged = true;
            }
            else enrageTimer -= diff;
	       
            if (mimironHardMode && flames)
                if (flameTimer <= diff)
                {
                    DoZoneInCombat();
                    for (uint8 i = 0; i < 3; ++i)
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(target, SPELL_FLAMES_SUMMON);
                    flameTimer = 30000;
                }
                else flameTimer -= diff;
	           
            // All sections need to die within 10 seconds, else they respawn
            if (checkBotAlive)
                botTimer = 0;
            else
            {
                botTimer += diff;
                if (botTimer > 15000) // Blizzlike
                {
                    if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                        leviathan->AI()->DoAction(DO_LEVIATHAN_ASSEMBLED);
                        if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                            vx_001->AI()->DoAction(DO_VX001_ASSEMBLED);
                                if (Creature *aerialUnit = Creature::GetCreature((*me), instance->GetData64(DATA_AERIAL_UNIT)))
                                    aerialUnit->AI()->DoAction(DO_AERIAL_ASSEMBLED);

                    checkBotAlive = true;
                }
                else
                {
                    if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                        if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                            if (Creature *aerialUnit = Creature::GetCreature((*me), instance->GetData64(DATA_AERIAL_UNIT)))
                    if (leviathan->getStandState() == UNIT_STAND_STATE_DEAD)
                        if (vx_001->getStandState() == UNIT_STAND_STATE_DEAD)
                            if (aerialUnit->getStandState() == UNIT_STAND_STATE_DEAD)
                    {
                    aerialUnit->AI()->DoAction(DO_AERIAL_PASSIVE);
                    vx_001->AI()->DoAction(DO_AERIAL_PASSIVE);
                    leviathan->AI()->DoAction(DO_AERIAL_PASSIVE);
                    me->GetMotionMaster()->MoveJump(leviathan->GetPositionX()+15,leviathan->GetPositionY(),leviathan->GetPositionZ(),5.0f,5.0f);
                    BindToInstance();
                    checkBotAlive = true;
                    phase = PHASE_ENDING;
                    events.SetPhase(PHASE_ENDING);
                    step = 0;
                    phasetimer = -1;
                    JumpToNextStep(100);
                }
            }
        }

        if (phase == PHASE_ENDING)
        {
            if (phasetimer <= diff)
            {
                switch (step)
                {
                    case 1:
                        Despawncreatures();
                        me->setFaction(35);
                        DoScriptText(SAY_V07TRON_DEATH, me);
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_TALK);
                        flames = false;
                        JumpToNextStep(10000);
                        break;
                    case 2:
                        if (instance)
                        {
                            instance->SetBossState(BOSS_MIMIRON, DONE);
                            if (mimironHardMode)
                            {
                                instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_FIREFIGHTER_10, ACHIEVEMENT_FIREFIGHTER_25));
                                me->SummonGameObject(RAID_MODE(CACHE_OF_INNOVATION_HARDMODE_10, CACHE_OF_INNOVATION_HARDMODE_25), 2744.65f, 2569.46f, 364.314f, 3.14159f, 0.0f, 0.0f, 0.7f, 0.7f, 604800);
                            }
                            else
                            {
                                me->SummonGameObject(RAID_MODE(CACHE_OF_INNOVATION_10, CACHE_OF_INNOVATION_25), 2744.65f, 2569.46f, 364.314f, 3.14159f, 0.0f, 0.0f, 0.7f, 0.7f, 604800);
                            }
                        }
                        JumpToNextStep(5000);
                        break;
                    case 3:
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
                        me->SetVisible(false);
                        me->Kill(me);
                        JumpToNextStep(2000);
                        break;
                    default:
                        break;
                }
            }
            else
                phasetimer -= diff;
        }

        if (phase == PHASE_INTRO)
        {
            if (phasetimer <= diff)
            {
                switch (step)
                {
                    case 1:
                        if (mimironHardMode)
                            DoScriptText(SAY_HARDMODE_ON, me);
                        else
                            DoScriptText(SAY_AGGRO, me);
                        JumpToNextStep(1000);
                        break;
                    case 2:
                        if (instance)
                        {
                            if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                                me->EnterVehicle(leviathan->GetVehicleKit(), 5);
                        }
                        JumpToNextStep(10000);
                        break;
                    case 3:
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_STAND);
                        JumpToNextStep(2500);
                        break;
                    case 4:
                        DoScriptText(SAY_MKII_ACTIVATE, me);
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_TALK);
                        JumpToNextStep(6000);
                        break;
                    case 5:
                        me->ChangeSeat(6);
                        JumpToNextStep(2000);
                        break;
                    case 6:
                        if (instance)
                        {
                            if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                            {
                                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_STAND);
                                leviathan->AI()->DoAction(DO_START_ENCOUNTER);
                                phase = PHASE_COMBAT;
                            }
                        }
                    default:
                        break;
					}
                }
                else
                    phasetimer -= diff;
             }
	       
        if (phase == PHASE_VX001_ACTIVATION)
        {
            if (phasetimer <= diff)
            {
                switch (step)
                {
                    case 1:
                        DoScriptText(SAY_MKII_DEATH, me);
                        JumpToNextStep(10000);
                        break;
                    case 2:
                        me->ChangeSeat(1);
                        JumpToNextStep(2000);
                        break;
                    case 3:
                        if (instance)
                            instance->SetData(DATA_MIMIRON_ELEVATOR, GO_STATE_READY);
                        JumpToNextStep(5000);
                        break;
                    case 4:
                        if (instance)
                            instance->SetData(DATA_MIMIRON_ELEVATOR, GO_STATE_ACTIVE_ALTERNATIVE);
                        if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                        {
                            vx_001->SetVisible(true);
                            for (uint8 n = 5; n < 7; n++)
                            {
                                if (Creature* Rocket = vx_001->SummonCreature(NPC_ROCKET, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN))
                                {
                                    Rocket->SetReactState(REACT_PASSIVE);
                                    Rocket->EnterVehicle(vx_001->GetVehicleKit(), n);
                                }
                            }
                        }
                        JumpToNextStep(8000);
                        break;
                    case 5:
                        if (instance)
                        {
                            DoCast(me, SPELL_MIMIRON_JETPACK);
                            if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                                me->EnterVehicle(vx_001->GetVehicleKit(), 0);
                        }
                        JumpToNextStep(3500);
                        break;
                    case 6:
                        me->RemoveAurasDueToSpell(SPELL_MIMIRON_JETPACK);
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_TALK);
                        DoScriptText(SAY_VX001_ACTIVATE, me);
                        JumpToNextStep(10000);
                        break;
                    case 7:
                        me->ChangeSeat(1);
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_SIT);
                        JumpToNextStep(2000);
                        break;
                    case 8:
                        if (instance)
                        {
                            if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                                vx_001->HandleEmoteCommand(EMOTE_ONESHOT_EMERGE);
                        }
                        JumpToNextStep(3500);
                        break;
                    case 9:
                        if (instance)
                        {
                            if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                            {
                                vx_001->AddAura(SPELL_HOVER, vx_001); // Hover
                                vx_001->AI()->DoAction(DO_START_VX001);
                                phase = PHASE_COMBAT;
                            }
                        }
                        break;
                    default:
                        break;
                }
            }
            else 
                phasetimer -= diff;
        }
	       
        if (phase == PHASE_AERIAL_ACTIVATION)
        {
            if (phasetimer <= diff)
            {
                switch (step)
                {
                    case 1:
						me->ChangeSeat(1);
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_STAND);
                        JumpToNextStep(2500);
                        break;
                    case 2:
                        DoScriptText(SAY_VX001_DEATH, me);
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_TALK);
                        JumpToNextStep(5000);
                        break;
                    case 3:
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_STAND);
                        if (instance)
                        {
                            if (Creature *aerialUnit = Creature::GetCreature((*me), instance->GetData64(DATA_AERIAL_UNIT)))
                                aerialUnit->SetVisible(true);
                        }
                        JumpToNextStep(5000);
                        break;
                    case 4:
						me->ExitVehicle();
                        me->GetMotionMaster()->MoveJump(2745.06f, 2569.36f, 379.90f, 10, 15);
                        JumpToNextStep(2000);
                        break;
                    case 5:
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_TALK);
                        DoScriptText(SAY_AERIAL_ACTIVATE, me);
                        JumpToNextStep(8000);
                        break;
                    case 6:
						me->SetVisible(false);
                        me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_STAND);
                        if (instance)
                        {
                            if (Creature *aerialUnit = Creature::GetCreature((*me), instance->GetData64(DATA_AERIAL_UNIT)))
                            {
                                aerialUnit->AI()->DoAction(DO_START_AERIAL);
                                phase = PHASE_COMBAT;
                            }
                        }
                        break;
                    default:
                        break;
                    }
                }
            else
            phasetimer -= diff;
        }
	       
        if (phase == PHASE_V0L7R0N_ACTIVATION)
        {
            if (phasetimer <= diff)
            {
                switch (step)
                {
                    case 1:
                        if (instance)
                        {
                            
                            if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                                leviathan->GetMotionMaster()->MovePoint(0, 2764.260742f, 2569.984619f, 364.313812f);
                            if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                            {
                                me->SetVisible(true);
                                me->EnterVehicle(vx_001->GetVehicleKit(), 1);
                                me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_STAND);
                                DoScriptText(SAY_AERIAL_DEATH, me);
                            }
                        }
                        JumpToNextStep(5000);
                        break;
                    case 2:
                        if (instance)
                        {
                            if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                            {
                                vx_001->SetStandState(UNIT_STAND_STATE_STAND);
                                vx_001->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_CUSTOM_SPELL_02);
                            }
                        }
                        JumpToNextStep(4000);
                        break;
                    case 3:
                        if (instance)
                            if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                                if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                                {
                                    leviathan->GetMotionMaster()->MovePoint(0, 2744.65f, 2569.46f, 364.397f);
                                    vx_001->EnterVehicle(leviathan->GetVehicleKit(), 7);
                                    DespawnCreatures(NPC_ROCKET, 100);
                                }
                        JumpToNextStep(2000);
                        break;
                    case 4:
                        if (instance)
                            if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                                if (Creature *aerialUnit = Creature::GetCreature((*me), instance->GetData64(DATA_AERIAL_UNIT)))
                                {
                                    vx_001->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
                                    DoScriptText(SAY_V07TRON_ACTIVATE, me);
                                    aerialUnit->SetFlying(false);
                                    aerialUnit->EnterVehicle(vx_001->GetVehicleKit(), 3);
                                    for (uint8 n = 5; n < 7; n++)
                                    {
                                        if (Creature* Rocket = me->SummonCreature(NPC_ROCKET, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN))
                                        {
                                            Rocket->SetReactState(REACT_PASSIVE);
                                            Rocket->EnterVehicle(vx_001->GetVehicleKit(), n);
                                        }
                                    }
                                }
                        JumpToNextStep(7000);
                        break;
					case 5:
                        if (instance)
                            if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                                if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                                    if (Creature *aerialUnit = Creature::GetCreature((*me), instance->GetData64(DATA_AERIAL_UNIT)))
                        {
							aerialUnit->CastSpell(aerialUnit, SPELL_SELF_REPAIR, false);
							vx_001->CastSpell(vx_001, SPELL_SELF_REPAIR, false);
							leviathan->CastSpell(leviathan, SPELL_SELF_REPAIR, false);
						}
                        JumpToNextStep(15000);
                        break;
                    case 6:
                        if (instance)
                        {
                            if (Creature *leviathan = Creature::GetCreature((*me), instance->GetData64(DATA_LEVIATHAN_MK_II)))
                                leviathan->AI()->DoAction(DO_LEVIATHAN_ASSEMBLED);
                            if (Creature *vx_001 = Creature::GetCreature((*me), instance->GetData64(DATA_VX_001)))
                                vx_001->AI()->DoAction(DO_VX001_ASSEMBLED);
                            if (Creature *aerialUnit = Creature::GetCreature((*me), instance->GetData64(DATA_AERIAL_UNIT)))
                                aerialUnit->AI()->DoAction(DO_AERIAL_ASSEMBLED);
                            phase = PHASE_COMBAT;
                        }
                        break;
                    default:
                        break;
                    }
                }
                else
                    phasetimer -= diff;
            }
        }
	   
        void DoAction(const int32 action)
        {
            switch(action)
            {
                case DO_ACTIVATE_VX001:
                    phase = PHASE_VX001_ACTIVATION;
                    step = 0;
                    phasetimer = -1;
                    JumpToNextStep(100);
                    break;
                case DO_ACTIVATE_AERIAL:
                    phase = PHASE_AERIAL_ACTIVATION;
                    step = 0;
                    phasetimer = -1;
                    JumpToNextStep(5000);
                    break;
                case DO_ACTIVATE_V0L7R0N:
                    phase = PHASE_V0L7R0N_ACTIVATION;
                    step = 0;
                    phasetimer = -1;
                    JumpToNextStep(1000);
                    break;
                case DO_ACTIVATE_DEATH_TIMER:
                    checkBotAlive = false;
                    break;
                case DO_ACTIVATE_HARD_MODE:
                    mimironHardMode = true;
                    DoZoneInCombat();
                    break;
            }
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

        private:
        SummonList summons;
        Phases phase;
        uint32 phasetimer;
        uint32 step;
        uint32 enrageTimer;
        uint32 flameTimer;
        uint32 botTimer;
		uint32 randomSeatTimer;
		bool fight;
        bool enraged;
        bool checkBotAlive;
        bool flames;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_mimironAI (creature);
    }
};

class boss_leviathan_mk : public CreatureScript
{
public:
    boss_leviathan_mk() : CreatureScript("boss_leviathan_mk") { }

    struct boss_leviathan_mkAI : public BossAI
    {
        boss_leviathan_mkAI(Creature *creature) : BossAI(creature, BOSS_MIMIRON), vehicle(me->GetVehicleKit()), phase(PHASE_NULL)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true); // Death Grip jump effect
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_ROCKET_STRIKE_IMMUNITY, true); // Rocket Strike immunity
        }

        void InitializeAI()
        {
			ASSERT(vehicle);
            if (!instance || static_cast<InstanceMap*>(me->GetMap())->GetScriptId() != GetScriptId(IUUScriptName))
                me->IsAIEnabled = false;
            else if (!me->isDead())
                Reset();
        }

        void Reset()
        {
            events.Reset();
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetStandState(UNIT_STAND_STATE_STAND);
            me->SetReactState(REACT_PASSIVE);
            me->RemoveAllAuras();
            phase = PHASE_NULL;
            events.SetPhase(PHASE_NULL);

            if (me->GetVehicleKit())
                me->GetVehicleKit()->Reset();
        }

        void KilledUnit(Unit *who)
        {
            if (!(rand()%5))
            if (instance)
            {
                if (Creature *mimiron = Creature::GetCreature((*me), instance->GetData64(DATA_MIMIRON)))
                {
                    if (phase == PHASE_LEVIATHAN_SOLO)
                        DoScriptText(RAND(SAY_MKII_SLAY_1, SAY_MKII_SLAY_2), mimiron);
                    else
                        DoScriptText(RAND(SAY_V07TRON_SLAY_1, SAY_V07TRON_SLAY_2), mimiron);
                }
            }
        }

        void DamageTaken(Unit *who, uint32 &damage)
        {
            if (phase == PHASE_LEVIATHAN_SOLO)
				if (damage >= me->GetHealth())
				{
					damage = 0;
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
					me->AttackStop();
					me->SetReactState(REACT_PASSIVE);
					me->RemoveAllAuras();
					events.SetPhase(PHASE_NULL);
					phase = PHASE_NULL;
					if (Creature *mimiron = Creature::GetCreature((*me), instance->GetData64(DATA_MIMIRON)))
						mimiron->AI()->DoAction(DO_ACTIVATE_VX001);

					if (Creature *turret = CAST_CRE(vehicle->GetPassenger(3)))
                            turret->Kill(turret, false);

						me->SetSpeed(MOVE_RUN, 1.5f, true);
						me->GetMotionMaster()->MovePoint(0, 2790.11f, 2595.83f, 364.32f);
				}
	           
            if (phase == PHASE_LEVIATHAN_ASSEMBLED)
				if (damage >= me->GetHealth())
				{
					damage = 0;
					DoCast(me, SPELL_SELF_REPAIR);
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
					me->AttackStop();
					me->SetReactState(REACT_PASSIVE);
					me->RemoveAllAuras();
					me->SetStandState(UNIT_STAND_STATE_DEAD);
					events.SetPhase(PHASE_NULL);
					phase = PHASE_NULL;
					if (Creature *mimiron = Creature::GetCreature((*me), instance->GetData64(DATA_MIMIRON)))
						mimiron->AI()->DoAction(DO_ACTIVATE_DEATH_TIMER);
				}
        }

        void EnterCombat(Unit *who)
        {
            if (mimironHardMode)
            {
                DoCast(me, SPELL_EMERGENCY_MODE);
                events.ScheduleEvent(EVENT_FLAME_SUPPRESSANT, 60000, 0, PHASE_LEVIATHAN_SOLO);
            }

            if (Creature *turret = CAST_CRE(vehicle->GetPassenger(3)))
            {
                turret->SetReactState(REACT_AGGRESSIVE);
                turret->AI()->DoZoneInCombat();
            }

            events.ScheduleEvent(EVENT_PROXIMITY_MINE, 1000);
            events.ScheduleEvent(EVENT_PLASMA_BLAST, 10000, 0, PHASE_LEVIATHAN_SOLO);
        }
	   
        void DoAction(const int32 action)
        {
            switch(action)
            {
            case DO_START_ENCOUNTER:
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetReactState(REACT_AGGRESSIVE);
                phase = PHASE_LEVIATHAN_SOLO;
                events.SetPhase(PHASE_LEVIATHAN_SOLO);
                DoZoneInCombat();
                break;
            case DO_LEVIATHAN_ASSEMBLED:
                if (mimironHardMode)
					DoCast(me, SPELL_EMERGENCY_MODE);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetReactState(REACT_AGGRESSIVE);
                me->SetSpeed(MOVE_RUN, 1.0f, true);
                me->SetStandState(UNIT_STAND_STATE_STAND);
                phase = PHASE_LEVIATHAN_ASSEMBLED;
                events.SetPhase(PHASE_LEVIATHAN_ASSEMBLED);
                events.RescheduleEvent(EVENT_PROXIMITY_MINE, 1000);
                events.RescheduleEvent(EVENT_SHOCK_BLAST, 30000);
                break;
            case DO_LEVIATHAN_PASSIVE:
                me->ForcedDespawn(120000);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->AttackStop();
                me->SetReactState(REACT_PASSIVE);
                me->RemoveAllAuras();
                me->SetStandState(UNIT_STAND_STATE_DEAD);
                break;
            case DO_ENTER_ENRAGE:
                DoCast(me, SPELL_BERSERK, true);
                break; 
            }
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_creatures;
            GetCreatureListWithEntryInGrid(m_creatures, me, entry, distance);
	 
            if (m_creatures.empty())
                return;
	 
            for(std::list<Creature*>::iterator iter = m_creatures.begin(); iter != m_creatures.end(); ++iter)
            (*iter)->ForcedDespawn(3000);
        }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if (phase == PHASE_LEVIATHAN_SOLO || phase == PHASE_LEVIATHAN_ASSEMBLED)
            {
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                    case EVENT_PROXIMITY_MINE:
                        DoCast(SPELL_PROXIMITY_MINES);
                        events.RescheduleEvent(EVENT_PROXIMITY_MINE, 35000);
                        break;
                    case EVENT_PLASMA_BLAST:
                    {
                        DoScriptText(EMOTE_LEVIATHAN, me);
						if (Creature *turret = CAST_CRE(vehicle->GetPassenger(3)))
							turret->CastSpell(turret->getVictim(), SPELL_PLASMA_BLAST, true);
                        events.RescheduleEvent(EVENT_PLASMA_BLAST, 30000, 0, PHASE_LEVIATHAN_SOLO);
                        events.RescheduleEvent(EVENT_SHOCK_BLAST, 5000);
                        break;
                    }
                    case EVENT_SHOCK_BLAST:
                        DoCastAOE(SPELL_SHOCK_BLAST);
                        events.RescheduleEvent(EVENT_SHOCK_BLAST, 35000);
                        break;
                    case EVENT_FLAME_SUPPRESSANT:
                        DoCastAOE(SPELL_FLAME_SUPPRESSANT_1);
                        DespawnCreatures(NPC_FLAME_MOVE, 100);
                        DespawnCreatures(NPC_FLAME_INITIAL, 100);
                        events.RescheduleEvent(EVENT_FLAME_SUPPRESSANT, 60000);
                        break;
                    }
                }
            }
	                   
            DoMeleeAttackIfReady();
        }

    private:
        Phases phase;
        Vehicle *vehicle;
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_leviathan_mkAI (creature);
    }
};

class boss_leviathan_mk_turret : public CreatureScript
{
public:
    boss_leviathan_mk_turret() : CreatureScript("boss_leviathan_mk_turret") { }

    struct boss_leviathan_mk_turretAI : public ScriptedAI
    {
        boss_leviathan_mk_turretAI(Creature *creature) : ScriptedAI(creature)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetReactState(REACT_PASSIVE);
            napalmShell = urand(4000, 8000);
        }
	
        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;

            if (napalmShell <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_FARTHEST, 0))
                    DoCast(target, SPELL_NAPALM_SHELL);
                napalmShell = urand(10000, 15000);
            }
            else napalmShell -= diff;
        }

    private:
        uint32 napalmShell;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_leviathan_mk_turretAI (creature);
    }
};

class mob_proximity_mine : public CreatureScript
{
    public:
        mob_proximity_mine() : CreatureScript("mob_proximity_mine") { }

        struct mob_proximity_mineAI : public ScriptedAI
        {
            mob_proximity_mineAI(Creature *creature) : ScriptedAI(creature)
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
                boomTimer = 35000;
                boom = false;
            }

        void MoveInLineOfSight(Unit *who)
        {
            if (!boom && me->IsWithinDistInMap(who, 0.5f) && who->ToPlayer() && !who->ToPlayer()->isGameMaster())
            {
                DoCastAOE(SPELL_EXPLOSION);
                me->ForcedDespawn(1000);
                boom = true;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (boomTimer <= diff)
            {
                if (!boom)
                {
                    DoCastAOE(SPELL_EXPLOSION);
                    me->ForcedDespawn(1000);
                    boom = true;
                }
            }
            else boomTimer -= diff;
        }

    private:
        uint32 boomTimer;
        bool boom;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_proximity_mineAI (creature);
    }
};

class boss_vx_001 : public CreatureScript
{
public:
    boss_vx_001() : CreatureScript("boss_vx_001") { }

    struct boss_vx_001AI : public BossAI
    {
        boss_vx_001AI(Creature *creature) : BossAI(creature, BOSS_MIMIRON), vehicle(me->GetVehicleKit()), phase(PHASE_NULL)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true); // Death Grip jump effect
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_ROCKET_STRIKE_IMMUNITY, true); // Rocket Strike immunity
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
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetVisible(false);
            me->SetStandState(UNIT_STAND_STATE_STAND);
            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_STAND);
            me->SetReactState(REACT_PASSIVE);
            me->RemoveAllAuras();
            phase = PHASE_NULL;
            events.SetPhase(PHASE_NULL);
            rapidBurst = 0;

			if (me->GetVehicleKit())
                me->GetVehicleKit()->Reset();
        }

        void KilledUnit(Unit *who)
        {
            if (!(rand()%5))
				if (instance)
					if (Creature *mimiron = Creature::GetCreature((*me), instance->GetData64(DATA_MIMIRON)))
					{
						if (phase == PHASE_VX001_SOLO)
							DoScriptText(RAND(SAY_VX001_SLAY_1, SAY_VX001_SLAY_2), mimiron);
						else
							DoScriptText(RAND(SAY_V07TRON_SLAY_1, SAY_V07TRON_SLAY_2), mimiron);
					}
        }

        void EnterCombat(Unit *who)
        {
            if (mimironHardMode)
            {
                DoCast(me, SPELL_EMERGENCY_MODE);
                events.ScheduleEvent(EVENT_FROST_BOMB, 15000);
                events.ScheduleEvent(EVENT_FLAME_SUPPRESSANT_2, 30000, 0, PHASE_VX001_SOLO);
            }
	           
            events.ScheduleEvent(EVENT_RAPID_BURST, 500, 0, PHASE_VX001_SOLO);
            events.ScheduleEvent(EVENT_PRE_LASER_BARRAGE, urand(35000, 40000), 0, PHASE_VX001_SOLO); // Not works in phase 4 :(
            events.ScheduleEvent(EVENT_ROCKET_STRIKE, 20000);
            events.ScheduleEvent(EVENT_HEAT_WAVE, urand(8000, 10000), 0, PHASE_VX001_SOLO);
            events.ScheduleEvent(EVENT_HAND_PULSE, 15000, 0, PHASE_VX001_ASSEMBLED);
        }
	   
        void DoAction(const int32 action)
        {
            switch(action)
            {
            case DO_START_VX001:
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                phase = PHASE_VX001_SOLO;
                events.SetPhase(PHASE_VX001_SOLO);
                DoZoneInCombat();
                break;
            case DO_VX001_ASSEMBLED:
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetStandState(UNIT_STAND_STATE_STAND);
                phase = PHASE_VX001_ASSEMBLED;
                events.SetPhase(PHASE_VX001_ASSEMBLED);
                events.CancelEvent(EVENT_FLAME_SUPPRESSANT_2);
                events.RescheduleEvent(EVENT_PRE_LASER_BARRAGE, urand(35000, 40000), 0, PHASE_VX001_SOLO); // not works in phase 4
                events.RescheduleEvent(EVENT_ROCKET_STRIKE, 20000);
                events.RescheduleEvent(EVENT_HAND_PULSE, 3000, 0, PHASE_VX001_ASSEMBLED);
                if (mimironHardMode)
                {
                    DoCast(me, SPELL_EMERGENCY_MODE);
                    events.RescheduleEvent(EVENT_FROST_BOMB, 15000);
                }
                break;
            case DO_VX001_PASSIVE:
                me->ForcedDespawn(120000);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->AttackStop();
                me->SetReactState(REACT_PASSIVE);
                me->RemoveAllAuras();
                me->SetStandState(UNIT_STAND_STATE_DEAD);
                break;
            case DO_ENTER_ENRAGE:
                DoCast(me, SPELL_BERSERK, true);
                break;
            }
        }


        void DamageTaken(Unit *who, uint32 &damage)
        {
            if (phase == PHASE_VX001_SOLO)
				if (damage >= me->GetHealth())
				{
					damage = 0;
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
					me->AttackStop();
					me->GetMotionMaster()->Initialize();
					me->RemoveAllAuras();
					me->SetStandState(UNIT_STAND_STATE_DEAD);
					phase = PHASE_NULL;
					events.SetPhase(PHASE_NULL);
					if (Creature *mimiron = Creature::GetCreature((*me), instance->GetData64(DATA_MIMIRON)))
						mimiron->AI()->DoAction(DO_ACTIVATE_AERIAL);
				}
	           
            if (phase == PHASE_VX001_ASSEMBLED)
				if (damage >= me->GetHealth())
				{
					damage = 0;
					DoCast(me, SPELL_SELF_REPAIR);
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
					me->AttackStop();
					me->RemoveAllAuras();
					me->SetStandState(UNIT_STAND_STATE_DEAD);
					events.SetPhase(PHASE_NULL);
					phase = PHASE_NULL;
					if (Creature *mimiron = Creature::GetCreature((*me), instance->GetData64(DATA_MIMIRON)))
						mimiron->AI()->DoAction(DO_ACTIVATE_DEATH_TIMER);
				}
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_creatures;
            GetCreatureListWithEntryInGrid(m_creatures, me, entry, distance);
	 
            if (m_creatures.empty())
                return;
	 
            for(std::list<Creature*>::iterator iter = m_creatures.begin(); iter != m_creatures.end(); ++iter)
            (*iter)->ForcedDespawn(3000);
        }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if (phase == PHASE_VX001_SOLO || phase == PHASE_VX001_ASSEMBLED)
            {
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                    case EVENT_RAPID_BURST:
                        me->GetMotionMaster()->Initialize();

                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                            if (Creature *burstTarget = me->SummonCreature(NPC_BURST_TARGET, target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 3000))
                                DoCast(burstTarget, SPELL_RAPID_BURST);

                        events.RescheduleEvent(EVENT_RAPID_BURST, 3000, 0, PHASE_VX001_SOLO);
                        break;
                    case EVENT_PRE_LASER_BARRAGE:
                        DoCast(SPELL_SPINNING_UP);
                        me->SetUInt64Value(UNIT_FIELD_TARGET, 0);
                        me->GetMotionMaster()->MoveRotate(40000, rand()%2 ? ROTATE_DIRECTION_LEFT : ROTATE_DIRECTION_RIGHT);
                        events.DelayEvents(14000);
                        events.RescheduleEvent(EVENT_PRE_LASER_BARRAGE, 40000, 0, PHASE_VX001_SOLO);
                        events.RescheduleEvent(EVENT_LASER_BARRAGE, 3000);
                        break;
                    case EVENT_LASER_BARRAGE:
                        DoCastAOE(SPELL_LASER_BARRAGE);
                        events.CancelEvent(EVENT_LASER_BARRAGE);
                        break;
                    case EVENT_ROCKET_STRIKE:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                            if (Creature *missile = CAST_CRE(vehicle->GetPassenger(5)))
                                missile->CastSpell(target, SPELL_ROCKET_STRIKE, true);

                        if (phase == PHASE_VX001_ASSEMBLED)
                            if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                                if (Creature *missile = CAST_CRE(vehicle->GetPassenger(6)))
                                    missile->CastSpell(target, SPELL_ROCKET_STRIKE, true);

                        events.RescheduleEvent(EVENT_ROCKET_STRIKE, urand(20000, 25000));
                        break;
                    case EVENT_HEAT_WAVE:
                        DoCastAOE(SPELL_HEAT_WAVE);
                        events.RescheduleEvent(EVENT_HEAT_WAVE, 10000, 0, PHASE_VX001_SOLO);
                        break;
                    case EVENT_FLAME_SUPPRESSANT_2:
                        DoCastAOE(SPELL_FLAME_SUPPRESSANT_1);
                        DespawnCreatures(NPC_FLAME_MOVE, 10);
                        DespawnCreatures(NPC_FLAME_INITIAL, 10);
                        events.RescheduleEvent(EVENT_FLAME_SUPPRESSANT_2, urand(60000,80000), 0, PHASE_VX001_SOLO);
                        break;
                    case EVENT_HAND_PULSE:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        {
                            switch(handPulse)
                            {
                            case 0: DoCast(target, SPELL_HAND_PULSE_L); break;
                            case 1: DoCast(target, SPELL_HAND_PULSE_R); break;
                            }
                            handPulse++;
                        }       
                        if(handPulse > 1)
                            handPulse = 0;        
                        events.RescheduleEvent(EVENT_HAND_PULSE, urand(3000, 3500));
                        break;
                    case EVENT_FROST_BOMB:
                        me->SummonCreature(NPC_FROST_BOMB, SummonPos[rand()%9], TEMPSUMMON_MANUAL_DESPAWN);
                        events.RescheduleEvent(EVENT_FROST_BOMB, 45000);
                        break;
                    }
                }
            }
        }

    private:
        Phases phase;
        Vehicle *vehicle;
        EventMap events;
        uint8 rapidBurst;
        uint32 handPulse;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_vx_001AI (creature);
    }
};

class mob_rocket_strike : public CreatureScript
{
public:
    mob_rocket_strike() : CreatureScript("mob_rocket_strike") { }

    struct mob_rocket_strikeAI : public ScriptedAI
    {
        mob_rocket_strikeAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            me->ForcedDespawn(10000);
            DoCast(me, SPELL_ROCKET_STRIKE_AURA);
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_rocket_strikeAI (creature);
    }
};

class boss_aerial_unit : public CreatureScript
{
public:
    boss_aerial_unit() : CreatureScript("boss_aerial_unit") { }

    struct boss_aerial_unitAI : public BossAI
    {
        boss_aerial_unitAI(Creature *creature) : BossAI(creature, BOSS_MIMIRON), vehicle(me->GetVehicleKit()), phase(PHASE_NULL)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true); // Death Grip jump effect
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_ROCKET_STRIKE_IMMUNITY, true); // Rocket Strike immunity
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
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_DISABLE_MOVE);
            me->SetReactState(REACT_PASSIVE);
            me->SetVisible(false);
            me->SetStandState(UNIT_STAND_STATE_STAND);
            me->RemoveAllAuras();
            me->SetFlying(true);
            phase = PHASE_NULL;
            events.SetPhase(PHASE_NULL);
            summons.DespawnAll();
            spawnedAdds = 0;

			if (me->GetVehicleKit())
                me->GetVehicleKit()->Reset();
        }

        void KilledUnit(Unit *who)
        {
            if (!(rand()%5))
				if (instance)
					if (Creature *mimiron = Creature::GetCreature((*me), instance->GetData64(DATA_MIMIRON)))
					{
						if (phase == PHASE_AERIAL_SOLO)
							DoScriptText(RAND(SAY_AERIAL_SLAY_1, SAY_AERIAL_SLAY_2), mimiron);
						else
							DoScriptText(RAND(SAY_V07TRON_SLAY_1, SAY_V07TRON_SLAY_2), mimiron);
					}
        }

        void EnterCombat(Unit *who)
        {
            if (mimironHardMode)
                DoCast(me, SPELL_EMERGENCY_MODE);

            events.ScheduleEvent(EVENT_PLASMA_BALL, 1000);
            events.ScheduleEvent(EVENT_SUMMON_BOTS, 10000, 0, PHASE_AERIAL_SOLO);
        }
	   
        void DoAction(const int32 action)
        {
            switch(action)
            {
            case DO_START_AERIAL:
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetReactState(REACT_AGGRESSIVE);
                phase = PHASE_AERIAL_SOLO;
                events.SetPhase(PHASE_AERIAL_SOLO);
                DoZoneInCombat();
                break;
            case DO_DISABLE_AERIAL:
                if(phase == PHASE_AERIAL_SOLO)
                {
                    me->CastStop();
                    me->SetReactState(REACT_PASSIVE);
                    me->GetMotionMaster()->Clear(true);
                    DoCast(me, SPELL_MAGNETIC_CORE);
                    DoCast(me, SPELL_MAGNETIC_CORE_VISUAL);

                    if (Creature *pMagneticCore = Creature::GetCreature((*me), instance->GetData64(DATA_MAGNETIC_CORE)))
						if (pMagneticCore->isAlive())
							me->GetMotionMaster()->MoveFall(368.999f);

                    events.RescheduleEvent(EVENT_PLASMA_BALL, 22000, 0, PHASE_AERIAL_SOLO);
                    events.RescheduleEvent(EVENT_SUMMON_BOTS, 24000, 0, PHASE_AERIAL_SOLO);
                    events.ScheduleEvent(EVENT_REACTIVATE_AERIAL, 20000, 0, PHASE_AERIAL_SOLO);
                    break;
                }
            case DO_AERIAL_ASSEMBLED:
                if (mimironHardMode)
					DoCast(me, SPELL_EMERGENCY_MODE);

                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetReactState(REACT_AGGRESSIVE);
                me->SetStandState(UNIT_STAND_STATE_STAND);
                phase = PHASE_AERIAL_ASSEMBLED;
                events.SetPhase(PHASE_AERIAL_ASSEMBLED);
                events.RescheduleEvent(EVENT_PLASMA_BALL, 2000);
                break;
            case DO_AERIAL_PASSIVE:
                me->ForcedDespawn(120000);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->AttackStop();
                me->SetReactState(REACT_PASSIVE);
                me->RemoveAllAuras();
                me->SetStandState(UNIT_STAND_STATE_DEAD);
                break;
            case DO_ENTER_ENRAGE:
                DoCast(me, SPELL_BERSERK, true);
                break;
            }
        }


        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if (phase == PHASE_AERIAL_SOLO || phase == PHASE_AERIAL_ASSEMBLED)
            {
                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch(eventId)
                    {
                    case EVENT_PLASMA_BALL:
                        if (phase == PHASE_AERIAL_SOLO && me->getVictim())
                        {
                            float x = me->getVictim()->GetPositionX();
                            float y = me->getVictim()->GetPositionY();
                            float z = me->getVictim()->GetPositionZ();
                            if (me->IsWithinDist3d(x, y, z, 30))
                            {
                                me->GetMotionMaster()->Initialize();
                                DoCastVictim(SPELL_PLASMA_BALL);
                            }
                            else me->GetMotionMaster()->MovePoint(0, x, y, 380.040f);
                        }
                        else if (phase == PHASE_AERIAL_ASSEMBLED && me->getVictim())
                        {
                            if (me->getVictim()->IsWithinDist3d(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 35))
                                DoCastVictim(SPELL_PLASMA_BALL);
                            else if (Unit *target = SelectTarget(SELECT_TARGET_NEAREST, 0))
                                DoCast(target, SPELL_PLASMA_BALL);
                        }
                        events.RescheduleEvent(EVENT_PLASMA_BALL, 2000);
                        break;
                    case EVENT_REACTIVATE_AERIAL:
                        me->SetFlying(true);
                        me->RemoveAurasDueToSpell(SPELL_MAGNETIC_CORE_VISUAL);
						me->GetMotionMaster()->MovePoint(0,me->GetPositionX(), me->GetPositionY(), 380.040f);
                        me->SetReactState(REACT_AGGRESSIVE);
                        events.CancelEvent(EVENT_REACTIVATE_AERIAL);
                        break;
                    case EVENT_SUMMON_BOTS:
                        if (phase == PHASE_AERIAL_SOLO)
                        {
                            spawnAdd();
                            events.RescheduleEvent(EVENT_SUMMON_BOTS, 10000, 0, PHASE_AERIAL_SOLO);
                        }
                        break;
                    }
                }
             }
        }
	   
        void spawnAdd()
        {
            switch(spawnedAdds)
            {
                case 0:
                    for(uint8 n = 0; n < RAID_MODE(1,2); n++)
                        if(Creature* Summonbot = me->SummonCreature(NPC_SUMMON_BOT_TRIGGER, SummonPos[rand()%9], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000))
                            Summonbot->AI()->DoAction(DO_GREEN_BEAM);
                    break;
                case 1:
					for(uint8 n = 0; n < RAID_MODE(1,2); n++)
                        if(Creature* Summonbot = me->SummonCreature(NPC_SUMMON_BOT_TRIGGER, SummonPos[rand()%9], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000))
                            Summonbot->AI()->DoAction(DO_GREEN_BEAM);
                    break;
                case 2:
					if(Creature* Summonbot = me->SummonCreature(NPC_SUMMON_BOT_TRIGGER, SummonPos[rand()%9], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000))
                    	Summonbot->AI()->DoAction(DO_RED_BEAM);
                    //me->SummonCreature(NPC_BOOM_BOT, 2744.65f, 2569.46f, 364.397f, 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000);
                    break;
				case 3:
                    me->SummonCreature(NPC_BOOM_BOT, 2744.65f, 2569.46f, 364.397f, 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000);
					if(mimironHardMode)
                    	if(Creature* Summonbot = me->SummonCreature(NPC_SUMMON_BOT_TRIGGER, SummonPos[rand()%9], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000))
                            Summonbot->AI()->DoAction(DO_BLUE_BEAM);
                    break;
            }

            spawnedAdds++;
            if(spawnedAdds > 3)
            {
                spawnedAdds = 0;
            }
        }
	   
        void JustSummoned(Creature *summon)
        {
            if (summon->GetEntry() == NPC_EMERGENCY_BOT)
				return;

            summon->AI()->DoZoneInCombat();
			summons.Summon(summon);
        }
	   
        void DamageTaken(Unit *who, uint32 &damage)
        {
            if (phase == PHASE_AERIAL_SOLO)
				if (damage >= me->GetHealth())
				{
					damage = 0;
					me->GetMotionMaster()->Clear(true);
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
					me->SetReactState(REACT_PASSIVE);
					me->AttackStop();
					me->RemoveAllAuras();
					events.CancelEvent(EVENT_SUMMON_BOTS);
					phase = PHASE_NULL;
					events.SetPhase(PHASE_NULL);
					if (Creature *mimiron = Creature::GetCreature((*me), instance->GetData64(DATA_MIMIRON)))
					mimiron->AI()->DoAction(DO_ACTIVATE_V0L7R0N);
				}
	           
            if (phase == PHASE_AERIAL_ASSEMBLED)
				if (damage >= me->GetHealth())
				{
					damage = 0;
					DoCast(me, SPELL_SELF_REPAIR);
					me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
					me->AttackStop();
					me->SetReactState(REACT_PASSIVE);
					me->RemoveAllAuras();
					me->SetStandState(UNIT_STAND_STATE_DEAD);
					events.SetPhase(PHASE_NULL);
					phase = PHASE_NULL;
					if (Creature *mimiron = Creature::GetCreature((*me), instance->GetData64(DATA_MIMIRON)))
						mimiron->AI()->DoAction(DO_ACTIVATE_DEATH_TIMER);
				}
        }

    private:
        Phases phase;
        Vehicle *vehicle;
        EventMap events;
        uint8 spawnedAdds;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_aerial_unitAI (creature);
    }
};

class mob_magnetic_core : public CreatureScript
{
public:
    mob_magnetic_core() : CreatureScript("mob_magnetic_core") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_magnetic_coreAI (creature);
    }

    struct mob_magnetic_coreAI : public ScriptedAI
    {
        mob_magnetic_coreAI(Creature* creature) : ScriptedAI(creature)
        {
            DoCast(SPELL_MAGNETIC_CORE);
            instance = (InstanceScript *) creature->GetInstanceScript();
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            me->ForcedDespawn(21000);
            if (Creature *aerialUnit = Creature::GetCreature((*me), instance->GetData64(DATA_AERIAL_UNIT)))
                if (aerialUnit->isAlive())
                    if (aerialUnit->IsWithinDist2d(me->GetPositionX(), me->GetPositionY(), 10))
                        aerialUnit->AI()->DoAction(DO_DISABLE_AERIAL);
        }

    private:
        InstanceScript* instance;
    };
};

class mob_boom_bot : public CreatureScript
{
public:
    mob_boom_bot() : CreatureScript("mob_boom_bot") { }

    struct mob_boom_botAI : public ScriptedAI
    {
        mob_boom_botAI(Creature* creature) : ScriptedAI(creature)
        {
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SELF_DESTRUCT_EFFEKT, true); 
            if (mimironHardMode)
                DoCast(me, SPELL_EMERGENCY_MODE);
        }

        void Reset()
        {
            checkTimer = 1000;
            boom = false;
        }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;

            if (checkTimer <= diff && !boom)
            {
                if (me->IsWithinMeleeRange(me->getVictim()))
                    DoCastAOE(SPELL_BOOM_BOT);
                    boom = true;
                checkTimer = 1000;
            }
            else checkTimer -= diff;
        }

        void JustDied(Unit *victim)
        {
            DoCastAOE(SPELL_BOOM_BOT);
        }

    private:
        uint32 checkTimer;
        bool boom;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_boom_botAI (creature);
    }
};

class mob_junk_bot : public CreatureScript
{
public:
    mob_junk_bot() : CreatureScript("mob_junk_bot") { }

    struct mob_junk_botAI : public ScriptedAI
    {
        mob_junk_botAI(Creature* creature) : ScriptedAI(creature)
        {
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SELF_DESTRUCT_EFFEKT, true); 
            if (mimironHardMode)
                DoCast(me, SPELL_EMERGENCY_MODE);
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_junk_botAI (creature);
    }
};

class mob_assault_bot : public CreatureScript
{
public:
    mob_assault_bot() : CreatureScript("mob_assault_bot") { }

    struct mob_assault_botAI : public ScriptedAI
    {
        mob_assault_botAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();

            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SELF_DESTRUCT_EFFEKT, true); 
            if (mimironHardMode)
                DoCast(me, SPELL_EMERGENCY_MODE);

            fieldTimer = urand(4000, 6000);
        }
	   
        void UpdateAI(const uint32 diff)
        {
            if (fieldTimer <= diff)
            {
                DoCastVictim(SPELL_MAGNETIC_FIELD);
                fieldTimer = urand(15000, 20000);
            }
            else fieldTimer -= diff;
        }

        void SpellHit(Unit *caster, const SpellEntry *spell)
        {
            //Achievement Not-So-Friendly Fire
            if (spell->Id == SPELL_ROCKET_STRIKE_IMMUNITY)
                instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_NOT_SO_FRIENDLY_FIRE_10, ACHIEVEMENT_NOT_SO_FRIENDLY_FIRE_25));
        }

    private:
        uint32 fieldTimer;
        InstanceScript* instance;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_assault_botAI (creature);
    }
};

class mob_emergency_bot : public CreatureScript
{
public:
    mob_emergency_bot() : CreatureScript("mob_emergency_bot") { }

    struct mob_emergency_botAI : public ScriptedAI
    {
        mob_emergency_botAI(Creature* creature) : ScriptedAI(creature)
        {
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SELF_DESTRUCT_EFFEKT, true); 
            me->SetReactState(REACT_PASSIVE);
            me->GetMotionMaster()->MoveRandom(15);
            sprayTimer = 5000;
        }
	  
        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_creatures;
            GetCreatureListWithEntryInGrid(m_creatures, me, entry, distance);
	 
            if (m_creatures.empty())
                return;
	 
            for(std::list<Creature*>::iterator iter = m_creatures.begin(); iter != m_creatures.end(); ++iter)
            (*iter)->ForcedDespawn(1000);
        }
	   
        void UpdateAI(const uint32 diff)
        {
            if(!me->HasAura(SPELL_SIREN))
                DoCast(me, SPELL_SIREN);

            if (sprayTimer <= diff)
            {
                DoCast(SPELL_WATER_SPRAY);
                DespawnCreatures(NPC_FLAME_MOVE, 12);
                DespawnCreatures(NPC_FLAME_INITIAL, 12);
                sprayTimer = 5000;
            }
            else sprayTimer -= diff;
        }

    private:
        uint32 sprayTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_emergency_botAI (creature);
    }
};

class object_not_push_button : public GameObjectScript
{
public:
    object_not_push_button() : GameObjectScript("object_not_push_button") { }

    bool OnGossipHello(Player* pPlayer, GameObject* pGo)
    {
        InstanceScript* pInstance = pGo->GetInstanceScript();

        if (!pInstance)
            return false;

        if ((pInstance->GetBossState(BOSS_MIMIRON) != IN_PROGRESS || pInstance->GetBossState(BOSS_MIMIRON) != DONE) && pPlayer)
            if (Creature *pMimiron = pPlayer->GetCreature((*pPlayer), pInstance->GetData64(DATA_MIMIRON)))
                pMimiron->AI()->DoAction(DO_ACTIVATE_HARD_MODE);

        return true;
    }
};

class mob_mimiron_flame : public CreatureScript
{
public:
    mob_mimiron_flame() : CreatureScript("mob_mimiron_flame") { }

    struct mob_mimiron_flameAI : public ScriptedAI
    {
        mob_mimiron_flameAI(Creature* creature) : ScriptedAI(creature)
        {
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SELF_DESTRUCT_EFFEKT, true); 
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            DoCast(me, SPELL_FLAME);
        }

        void Reset()
        {
            flameSpawnTimer = 7000;
        }

        void UpdateAI(const uint32 diff)
        {
            if (flameSpawnTimer <= diff)
            {	
                me->SummonCreature(NPC_FLAME_MOVE, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN);
                flameSpawnTimer = 7000;
            }
            else flameSpawnTimer -= diff;
        }

    private:
        uint32 flameSpawnTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_mimiron_flameAI (creature);
    }
};

class mob_mimiron_flame_move : public CreatureScript
{
public:
    mob_mimiron_flame_move() : CreatureScript("mob_mimiron_flame_move") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_mimiron_flame_moveAI (creature);
    }

    struct mob_mimiron_flame_moveAI : public ScriptedAI
    {
        mob_mimiron_flame_moveAI(Creature* creature) : ScriptedAI(creature)
        {
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SELF_DESTRUCT_EFFEKT, true); 
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_DISABLE_MOVE);
            DoCast(me, SPELL_FLAME);
        }
    };
};

class mob_frost_bomb : public CreatureScript
{
public:
    mob_frost_bomb() : CreatureScript("mob_frost_bomb") { }

    struct mob_frost_bomb_AI : public ScriptedAI
    {
        mob_frost_bomb_AI(Creature* creature) : ScriptedAI(creature)
        {
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SELF_DESTRUCT_EFFEKT, true); 
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            DoCast(me, SPELL_FROST_BOMB);
            frostTimer = 9000;
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_creatures;
            GetCreatureListWithEntryInGrid(m_creatures, me, entry, distance);
	 
            if (m_creatures.empty())
                return;
	 
            for(std::list<Creature*>::iterator iter = m_creatures.begin(); iter != m_creatures.end(); ++iter)
            (*iter)->ForcedDespawn(1000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (frostTimer <= diff)
            {
                DoCastAOE(SPELL_FLAME_SUPPRESSANT_2);
                frostBombTimer = 1000;
                frostTimer = 10000;
            }
            else frostTimer -= diff;

            if (frostBombTimer <= diff)
            {
                DoCastAOE(SPELL_FROST_BOMB_EXPLODE);
                DespawnCreatures(NPC_FLAME_MOVE, 25);
                DespawnCreatures(NPC_FLAME_INITIAL, 25);
                me->ForcedDespawn(1000);
                frostBombTimer = 10000;
            }
            else frostBombTimer -= diff;
        }

    private:
        uint32 frostTimer;
        uint32 frostBombTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_frost_bomb_AI (creature);
    }
};

class mob_computer : public CreatureScript
{
public:
    mob_computer() : CreatureScript("mob_computer") { }

    struct mob_computerAI : public BossAI
    {
        mob_computerAI(Creature *creature) : BossAI(creature, NPC_COMPUTER)
        {
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SELF_DESTRUCT_EFFEKT, true); 
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_DISABLE_MOVE);
        }

        void EnterCombat(Unit *who)
        {
            _EnterCombat();
            events.ScheduleEvent(EVENT_DESTRUCTION, 1);
        }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                case EVENT_DESTRUCTION: 
                    DoScriptText(SAY_COMPUTER_HARDMODE, me);
                    events.RescheduleEvent(EVENT_ONE, 5000);
                    break;
                case EVENT_ONE: 
                    DoScriptText(SAY_TEN, me);
                    events.RescheduleEvent(EVENT_TWO, 60000);
                    break;
                case EVENT_TWO: 
                    DoScriptText(SAY_NINE, me);
                    events.RescheduleEvent(EVENT_THREE, 60000);
                    break;
                case EVENT_THREE: 
                    DoScriptText(SAY_EIGHT, me);
                    events.RescheduleEvent(EVENT_FOUR, 60000);
                    break;
                case EVENT_FOUR: 
                    DoScriptText(SAY_SEVEN, me);
                    events.RescheduleEvent(EVENT_FIVE, 60000);
                    break;
                case EVENT_FIVE: 
                    DoScriptText(SAY_SIX, me);
                    events.RescheduleEvent(EVENT_SIX, 60000);
                    break;
                case EVENT_SIX: 
                    DoScriptText(SAY_FIVE, me);
                    events.RescheduleEvent(EVENT_SEVEN, 60000);
                    break;
                case EVENT_SEVEN: 
                    DoScriptText(SAY_FOUR, me);
                    events.RescheduleEvent(EVENT_EIGHT, 60000);
                    break;
                case EVENT_EIGHT: 
                    DoScriptText(SAY_THREE, me);
                    events.RescheduleEvent(EVENT_NINE, 60000);
                    break;
                case EVENT_NINE: 
                    DoScriptText(SAY_TWO, me);
                    events.RescheduleEvent(EVENT_TEN, 60000);
                    break;
                case EVENT_TEN: 
                    DoScriptText(SAY_ONE, me);
                    events.RescheduleEvent(EVENT_EXPLOSION, 60000);
                    break;
                case EVENT_EXPLOSION: 
                    DoScriptText(SAY_SELFDESTRUCT, me);
                    DoCastAOE(SPELL_SELF_DESTRUCT);
                    break;
                }
            }
        }

    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_computerAI (creature);
    }
};

class mob_summon_bot : public CreatureScript
{
public:
    mob_summon_bot() : CreatureScript("mob_summon_bot") { }

    struct mob_summon_botAI : public Scripted_NoMovementAI
    {
        mob_summon_botAI(Creature* creature) : Scripted_NoMovementAI(creature), summons(me)
        {
            me->SetDisplayId(MODEL_INVISIBLE);
            me->ApplySpellImmune(0, IMMUNITY_ID, SPELL_SELF_DESTRUCT_EFFEKT, true); 
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            summonTimer = 5000;
            summon = false;
        }

        void DoAction(const int32 action)
        {
            switch(action)
            {
            case DO_RED_BEAM:
                DoCast(me, SPELL_SUMMON_EFFEKT_RED);
                break;
            case DO_GREEN_BEAM:
				me->SetFloatValue(OBJECT_FIELD_SCALE_X, 0.5);
                DoCast(me, SPELL_SUMMON_EFFEKT_GREEN);
                break;
            case DO_BLUE_BEAM:
				me->SetFloatValue(OBJECT_FIELD_SCALE_X, 0.5);
                DoCast(me, SPELL_SUMMON_EFFEKT_BLUE);
				break;
            }
        }

        void JustSummoned(Creature *summon)
        {
            summon->setActive(true);
            summon->AI()->DoZoneInCombat();
            summons.Summon(summon);
        }
	   
        void UpdateAI(const uint32 diff)
        {
            if (summonTimer <= diff && !summon)
            {
                if(me->HasAura(SPELL_SUMMON_EFFEKT_GREEN))
                    DoCast(me, SPELL_SUMMON_JUNK_BOT);
                if(me->HasAura(SPELL_SUMMON_EFFEKT_RED))
                    DoCast(me, SPELL_SUMMON_ASSAULT_BOT);
                if(me->HasAura(SPELL_SUMMON_EFFEKT_BLUE))
                    me->SummonCreature(NPC_EMERGENCY_BOT, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 0);
                me->ForcedDespawn(1000);
                summon = true;
            } else summonTimer -= diff;
        }

    private:
        bool summon;
        SummonList summons;
        uint32 summonTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_summon_botAI (creature);
    }
};

// 63382 Rapid Burst
enum RapidBurstSpells
{
    SPELL_RAPID_BURST_NORMAL_L  = 63387,
    SPELL_RAPID_BURST_NORMAL_R  = 64019,
    SPELL_RAPID_BURST_HEROIC_L  = 64531,
    SPELL_RAPID_BURST_HEROIC_R  = 64532,
};

class spell_gen_rapid_burst : public SpellScriptLoader
{
public:
    spell_gen_rapid_burst() : SpellScriptLoader("spell_gen_rapid_burst") { }

    class spell_gen_rapid_burst_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_gen_rapid_burst_AuraScript)

    private:
        int m_step;

    public:
        spell_gen_rapid_burst_AuraScript() : m_step(0) { }

        void HandleEffectPeriodic(AuraEffect const * /*aurEff*/)
        {
            uint32 spell_l;
            uint32 spell_r;
            if (Unit* caster = GetCaster())
            {
                if (caster->GetMap()->GetSpawnMode() == RAID_DIFFICULTY_25MAN_NORMAL) {
                    spell_l = SPELL_RAPID_BURST_HEROIC_L;
                    spell_r = SPELL_RAPID_BURST_HEROIC_R;
                }
                else {
                    spell_l = SPELL_RAPID_BURST_NORMAL_L;
                    spell_r = SPELL_RAPID_BURST_NORMAL_R;
                }

                if (Unit* target = GetTarget())
                {
                    if (m_step == 0) {
                        caster->CastSpell(target, spell_l, true);
                        m_step = 1;
                    }
                    else if (m_step == 1) {
                        caster->CastSpell(target, spell_r, true);
                        m_step = 0;
                    }
                }
            }
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_gen_rapid_burst_AuraScript::HandleEffectPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DUMMY);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_gen_rapid_burst_AuraScript();
    }
};

class spell_ulduar_proximity_mines : public SpellScriptLoader
{
   public:
       spell_ulduar_proximity_mines() : SpellScriptLoader("spell_ulduar_proximity_mines") { }

       class spell_ulduar_proximity_minesSpellScript : public SpellScript
       {
           PrepareSpellScript(spell_ulduar_proximity_minesSpellScript)

           void HandleScript(SpellEffIndex effIndex)
           {
               PreventHitDefaultEffect(effIndex);
               for (uint8 i = 0; i < 10; ++i)
                   GetCaster()->CastSpell(GetCaster(), SPELL_TRIGGER_MISSILE, true);
           }

           void Register()
           {
               OnEffect += SpellEffectFn(spell_ulduar_proximity_minesSpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
           }
       };
       
       SpellScript* GetSpellScript() const
       {
           return new spell_ulduar_proximity_minesSpellScript();
       }
};

void AddSC_boss_mimiron()
{
    new boss_leviathan_mk_turret();
    new boss_leviathan_mk();
    new boss_mimiron();
    new boss_vx_001();
    new boss_aerial_unit();
    new mob_summon_bot();
    new mob_computer();
    new mob_frost_bomb();
    new mob_mimiron_flame_move();
    new mob_mimiron_flame();
    new mob_emergency_bot();
    new mob_assault_bot();
    new mob_junk_bot();
    new mob_boom_bot();
    new mob_magnetic_core();
    new mob_rocket_strike();
    new mob_proximity_mine();
    new object_not_push_button();
    new spell_gen_rapid_burst();
	new spell_ulduar_proximity_mines();
}
