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

#include "ScriptPCH.h"
#include "ulduar.h"

enum Yells
{
    SAY_AGGRO                       = -1603000,
    SAY_SLAY_1                      = -1603001,
    SAY_SLAY_2                      = -1603002,
    SAY_ENGADED_FOR_FIRTS_TIME      = -1603003,
    SAY_PHASE_2                     = -1603004,
    SAY_SUMMON_COLLAPSING_STAR      = -1603005,
    SAY_DEATH_1                     = -1603006,
    SAY_DEATH_2                     = -1603007,
    SAY_DEATH_3                     = -1603008,
    SAY_DEATH_4                     = -1603009,
    SAY_DEATH_5                     = -1603010,
    SAY_BERSERK                     = -1603011,
    SAY_BIG_BANG_1                  = -1603012,
    SAY_BIG_BANG_2                  = -1603013,
    SAY_TIMER_1                     = -1603014,
    SAY_TIMER_2                     = -1603015,
    SAY_TIMER_3                     = -1603016,
    SAY_SUMMON_1                    = -1603017,
    SAY_SUMMON_2                    = -1603018,
    SAY_SUMMON_3                    = -1603019,
    SAY_BRONZENBART_1               = -1630333,
    SAY_BRONZENBART_2               = -1630334,
};

enum Spells
{
    SPELL_ASCEND                    = 64487,
    SPELL_BERSERK                   = 47008,
    SPELL_BIG_BANG_10               = 64443,
    SPELL_BIG_BANG_25               = 64584,
    SPELL_COSMIC_SMASH_10           = 62301,
    SPELL_COSMIC_SMASH_25           = 64598,
    SPELL_PHASE_PUNCH               = 64412,
    SPELL_PHASE_PUNCH_PHASE         = 64417,
    SPELL_QUANTUM_STRIKE_10         = 64395,
    SPELL_QUANTUM_STRIKE_25         = 64592,
    SPELL_BLACK_HOLE_CREDIT         = 65312,
    SPELL_BLACK_HOLE_EXPLOSION_10   = 64122,
    SPELL_BLACK_HOLE_EXPLOSION_25   = 65108,
    SPELL_BLACK_HOLE_SPAWN_VISUAL   = 62003,
    SPELL_BLACK_HOLE_STATE          = 64135,
    SPELL_BLACK_HOLE_TRIGGER        = 62185,
    SPELL_BLACK_HOLE_PHASE          = 62168,
    SPELL_DESPAWN_BLACK_HOLE        = 64391,
    SPELL_ARCANE_BARAGE_10          = 64599,
    SPELL_ARCANE_BARAGE_25          = 64607,

    SPELL_VOID_ZONE_VISUAL          = 64469,
    SPELL_DUAL_WIELD                = 42459,
    SPELL_BOSS_FINISHED             = 65184,

    // Intro Spells
    SPELL_ALGALON_CHANNEL           = 64996,
    SPELL_ALGALON_ARRIVAL           = 64997,
    SPELL_SUMMON_AZEROTH            = 64994,
    SPELL_ALGALON_BEAM              = 64367,
    SPELL_ALGALON_BEAM_2            = 64580,
};

enum Objects
{
    OBJECT_GIFT_OF_THE_OBSERVER	    = 194823,
    CREATURE_COSMIC_SMASH_TRIGGER   = 33104,
    CREATURE_COSMIC_SMASH_TARGET    = 33105
};

enum phases
{
    PHASE_NULL                      = 0,
    PHASE_INTRO                     = 1,
    PHASE_START_ENCOUNTER           = 2,
    PHASE_COMBAT_1                  = 3,
    PHASE_COMBAT_2                  = 4,
    PHASE_ENDING                    = 5,
    PHASE_DESPAWN                   = 6,
};

enum Points
{
    POINT_ENDING                    = 1,
};

enum EVENTS
{
    EVENT_SUMMON_INTRO_1            = 1,
    EVENT_SUMMON_INTRO_2            = 2,
    EVENT_SUMMON_INTRO_3            = 3,
    EVENT_SUMMON_INTRO_4            = 4,
    EVENT_SUMMON_INTRO_5            = 5,
    EVENT_SUMMON_INTRO_6            = 6,

    EVENT_START_ENCOUNTER_1         = 7,
    EVENT_START_ENCOUNTER_2         = 8,
    EVENT_START_ENCOUNTER_3         = 9,

    EVENT_ENDING_1                  = 10,
    EVENT_ENDING_2                  = 11,
    EVENT_ENDING_3                  = 12,
    EVENT_ENDING_4                  = 13,
    EVENT_ENDING_5                  = 14,
    EVENT_ENDING_6                  = 15,
    EVENT_ENDING_7                  = 16,
    EVENT_ENDING_8                  = 17,
    EVENT_ENDING_9                  = 18,
    EVENT_ENDING_10                 = 19,
    EVENT_ENDING_11                 = 20,

    EVENT_PHASE_PUNCH               = 21,
    EVENT_QUANTUM_STRIKE            = 22,
    EVENT_COSMIC_SMASH              = 23,
    EVENT_DARK_MATTER_SUMMON        = 24,
    EVENT_COLLAPSING_STAR           = 25,
    EVENT_LIVIN_CONSTELLATION       = 26,
    EVENT_BIG_BANG                  = 27,
    EVENT_BERSERK                   = 28,
    EVENT_ASCENT_TO_THE_HEAVENS     = 29,
    // Placeholder
    EVENT_REMOVEBLACKHOHLE          = 30,
    EVENT_ATTACKSTART               = 31,
    EVENT_HOVER                     = 33,
    EVENT_ARKANE_BARRAGE            = 34,
    EVENT_NEW_TARGET                = 35,
    EVENT_BLACK_HOHLE               = 36,

    // Kollapsing Star
    EVENT_LIVE                      = 37,
    EVENT_MOVEMENT                  = 38,

    // Cosmic Smash
    EVENT_SMASH                     = 39,
};

enum eAchievements
{
    ACHIEVEMENT_OBSERVED_10         = 3036,
    ACHIEVEMENT_OBSERVED_25         = 3037,
    ACHIEVEMENT_CELESTIAL_DEFENDER  = 3259,
};

enum Counts
{
    MAX_ADDS_COUNT       = 50,
    MAX_MATTERY_COUNT    = 25,

};

enum DoAction
{
    ACTION_DESPAWN_EVENT,
};

static Position Locations[]=
{
    {1632.36f, -310.09f, 417.33f, 0.0f},  // room center
    {1632.44f, -301.55f, 417.33f, 0.0f},  // azeroth
    {1632.36f, -310.09f, 385.0f, 0.0f}    // cosmic smash trigger
};

float BlackHoleSpawnLocations[4][3] =
{
    {1646.439f, -335.109f, 417.321f},
    {1611.720f, -321.950f, 417.321f},
    {1607.987f, -285.202f, 417.321f},
    {1659.718f, -296.119f, 417.321f}
};

float VoidSpawnLocation[4][3] =
{
    {1619.612671f, -319.322327f, 417.321411f},
    {1622.561279f, -293.134003f, 417.321411f},
    {1642.636475f, -296.185669f, 417.321411f},
    {1639.861694f, -322.109894f, 417.321411f}
};

float LivingConstellationSpawnLocations[8][3] =
{
    {1655.553f, -254.886f, 434.642f},
    {1674.604f, -287.586f, 434.642f},
    {1674.960f, -328.107f, 434.642f},
    {1651.730f, -351.962f, 434.642f},
    {1612.222f, -349.878f, 434.642f},
    {1586.317f, -327.830f, 434.642f},
    {1588.893f, -285.992f, 434.642f},
    {1611.340f, -259.430f, 434.642f}
};

static float MovePosition[4][3]=
{
    {1648.343750f, -285.773346f, 417.321198f},
    {1654.070435f, -323.686768f, 417.321198f},
    {1611.530640f, -321.985657f, 417.321198f},
    {1613.166992f, -283.520447f, 417.321198f}
};

const Position EndingPoses[] =
{
    {1631.961914f, -300.575958f, 417.321198f},
};

#define EMOTE_COSMIC_SMASH "Algalon der Beobachter beginnt Kosmischer Schlag zu wirken!"
#define EMOTE_BIGBANG "Algalon der Beobachter beginnt Urknall zu wirken!"
#define EMOTE_ADDS "Algalon der Beobachter beschwort Kollabierender Stern"

class boss_algalon : public CreatureScript
{
public:
    boss_algalon() : CreatureScript("boss_algalon") { }

    struct boss_algalonAI : public BossAI
    {
        boss_algalonAI(Creature* c) : BossAI(c, DATA_ALGALON)
        {
            instance = c->GetInstanceScript();
            DespawnStart = false;
            IntroDone = false;
            me->SetVisible(false);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);

            SpellEntry* tempSpell;
            tempSpell = GET_SPELL(RAID_MODE(62311, 64596));
            if (tempSpell)
                tempSpell->rangeIndex = 13;
        }

        InstanceScript* instance;

        void InitializeAI()
        {
            if (!instance || static_cast<InstanceMap*>(me->GetMap())->GetScriptId() != GetScriptId(IUUScriptName))
                me->IsAIEnabled = false;
            else if (!me->isDead())
                Reset();
        }

        uint32 phase;
        uint8 starCount;
        bool DespawnStart;
        bool Phase2;
        bool IntroDone;

        void Reset()
        {
            starCount = 0;
            Phase2 = false;
            phase = PHASE_NULL;
            events.Reset();
            me->SetSpeed(MOVE_RUN, 2.0f);
            SetEquipmentSlots(false, 45607, 45607);
            DoCast(me, SPELL_DUAL_WIELD, true);
            me->SetAttackTime(OFF_ATTACK, 1400);
            me->SetStatFloatValue(UNIT_FIELD_MINOFFHANDDAMAGE, float(RAID_MODE(15000, 30000)));
            me->SetStatFloatValue(UNIT_FIELD_MAXOFFHANDDAMAGE, float(RAID_MODE(18000, 35000)));

            if (instance)
            {
                instance->SetData(DATA_UNIVERSUM, GO_STATE_READY);
                instance->SetData(DATA_KREIS_RESET, GO_STATE_READY);
                instance->SetData(DATA_KREIS_START, GO_STATE_ACTIVE);
                instance->SetData(DATA_INVISIBLE_DOOR, GO_STATE_ACTIVE);
            }
        }

        void MoveInLineOfSight(Unit* who)
        {
            if (!IntroDone && me->IsWithinDistInMap(who, 70.0f))
            {
                me->SetVisible(true);
                me->CastSpell(me, SPELL_ALGALON_ARRIVAL, true);
                me->SetReactState(REACT_PASSIVE);
                phase = PHASE_INTRO;
                events.ScheduleEvent(EVENT_SUMMON_INTRO_1, 1000, 0, PHASE_INTRO);
                events.ScheduleEvent(EVENT_SUMMON_INTRO_2, 3000, 0, PHASE_INTRO);
                events.ScheduleEvent(EVENT_SUMMON_INTRO_3, 4000, 0, PHASE_INTRO);
                events.ScheduleEvent(EVENT_SUMMON_INTRO_4, 6000, 0, PHASE_INTRO);
                events.ScheduleEvent(EVENT_SUMMON_INTRO_5, 12000, 0, PHASE_INTRO);
                events.ScheduleEvent(EVENT_SUMMON_INTRO_6, 22000, 0, PHASE_INTRO);
                IntroDone = true;
            }
        }

        void JustReachedHome()
        {
           me->SetReactState(REACT_PASSIVE);
        }

        void EnterCombat(Unit* who)
        {
            phase = PHASE_START_ENCOUNTER;
            me->RemoveAurasDueToSpell(SPELL_ALGALON_BEAM);
            events.ScheduleEvent(EVENT_SUMMON_INTRO_1, 1000, 0, PHASE_START_ENCOUNTER);
            events.ScheduleEvent(EVENT_SUMMON_INTRO_2, 5000, 0, PHASE_START_ENCOUNTER);
            events.ScheduleEvent(EVENT_SUMMON_INTRO_3, 7000, 0, PHASE_START_ENCOUNTER);
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

        void AttackStop()
        {
            DoResetThreat();
            BindToInstance();
		    me->AttackStop();
		    me->CastStop();
            me->SetUInt64Value(UNIT_FIELD_TARGET, 0);
		    me->SetReactState(REACT_PASSIVE);
            me->GetMotionMaster()->Clear();
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
        }

        void JustSummoned(Creature* summon)
        {
            summons.Summon(summon);
        }

        void SummonedCreatureDies(Creature* summon, Unit* /*killer*/)
        {
            switch (summon->GetEntry())
            {
                case NPC_COLLAPSING_STAR:
                    --starCount;
                    me->SummonCreature(NPC_BLACKHOHLE, summon->GetPositionX(), summon->GetPositionY(), summon->GetPositionZ());
                    break;
                default:
                    break;
            }
        }

        void SpellHitTarget(Unit* target, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_PHASE_PUNCH)
                if (Aura* phasePunch = target->GetAura(SPELL_PHASE_PUNCH))
                    if (phasePunch->GetStackAmount() > 4)
                    {
                        target->CastSpell(target, SPELL_PHASE_PUNCH_PHASE, true);
                        target->CombatStop();
                        target->getHostileRefManager().deleteReferences();
                    }
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage)
        {
            switch (phase)
            {
            case PHASE_COMBAT_1:
                if (HealthAbovePct(20))
                    return;
                phase = PHASE_COMBAT_2;
                DoScriptText(SAY_PHASE_2, me);
                Phase2  = true;
                for (uint8 i = 0; i < 4; ++i)
                {
                    me->SummonCreature(NPC_BLACKHOHLE, VoidSpawnLocation[i][0],VoidSpawnLocation[i][1],VoidSpawnLocation[i][2],VoidSpawnLocation[i][3], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 999999);
                    me->SummonCreature(NPC_VOIDZONE, VoidSpawnLocation[i][0],VoidSpawnLocation[i][1],VoidSpawnLocation[i][2],VoidSpawnLocation[i][3], TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 999999);
                } 
                break;
            case PHASE_COMBAT_2:
                if (damage >= me->GetHealth())
                {
                    phase = PHASE_ENDING;
                    damage = 0;
				    me->setFaction(35);
                    AttackStop();
                    events.CancelEvent(EVENT_PHASE_PUNCH);
                    events.CancelEvent(EVENT_QUANTUM_STRIKE);
                    events.CancelEvent(EVENT_COSMIC_SMASH);
                    events.CancelEvent(EVENT_DARK_MATTER_SUMMON);
                    events.CancelEvent(EVENT_COLLAPSING_STAR);
                    events.CancelEvent(EVENT_LIVIN_CONSTELLATION);
                    events.CancelEvent(EVENT_BIG_BANG);
                    events.CancelEvent(EVENT_ASCENT_TO_THE_HEAVENS);
                    events.CancelEvent(EVENT_BERSERK);
                }
                break;
            default:
                break;
            }
        }

        void DoAction(const int32 id)
        {
            if (id == 1)
            {
                DespawnStart = true;
                AttackStop();
                phase = PHASE_DESPAWN;
            }
        }

        void Summon()
        {
            for(uint8 i = 0; i < 7; i++)
            {
                int tmp = rand()%(7);
                if(Creature* Summon = me->SummonCreature(NPC_LIVIN_CONSTELLATION, LivingConstellationSpawnLocations[tmp][0], LivingConstellationSpawnLocations[tmp][1], LivingConstellationSpawnLocations[tmp][2], 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 10000))
                {
                    Summon->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                    Summon->setFaction(35);
                    Summon->SetReactState(REACT_DEFENSIVE);
                    Summon->SetFlying(true);
                }
            }
        }

        void CallLivingConstellation()
        {
            if(Creature* Summon = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_LIVIN_CONSTELLATION) : 0))
            {
                Summon->setFaction(14);
                Summon->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                Summon->SetReactState(REACT_AGGRESSIVE);
                Summon->AI()->DoZoneInCombat();
            }
        }

        void SummonCollapsingStars()
        {
            DoScriptText(SAY_SUMMON_COLLAPSING_STAR, me);
            for (uint8 i = starCount; i < 4; ++i)
            {
                if (Creature* collapsingStar = me->SummonCreature(NPC_COLLAPSING_STAR, BlackHoleSpawnLocations[i][0],BlackHoleSpawnLocations[i][1],BlackHoleSpawnLocations[i][2],BlackHoleSpawnLocations[i][3], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 10000))
                {
                    ++starCount;
                    collapsingStar->SetReactState(REACT_PASSIVE);
                    collapsingStar->GetMotionMaster()->MoveRandom(15.0f);
                    collapsingStar->SetInCombatWithZone();
                }
            }
        }

        void KilledUnit(Unit *victim)
        {
            switch(rand()%2)
            {
                case 0: DoScriptText(SAY_SLAY_1, me); 
                    break;
                case 1: DoScriptText(SAY_SLAY_2, me); 
                    break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim() && !(events.GetPhaseMask() & PHASE_INTRO)
                                || !(events.GetPhaseMask() & PHASE_START_ENCOUNTER)
                                || !(events.GetPhaseMask() & PHASE_DESPAWN)
                                || !(events.GetPhaseMask() & PHASE_ENDING))
                    return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                case EVENT_SUMMON_INTRO_1:
                    DoScriptText(SAY_SUMMON_1, me);
                    break;
                case EVENT_SUMMON_INTRO_2:
                    me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_SPELLCAST_OMNI);
                    me->CastSpell(me, SPELL_SUMMON_AZEROTH, true);
                    break;
                case EVENT_SUMMON_INTRO_3:
                    me->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
                    break;
                case EVENT_SUMMON_INTRO_4:
                    DoScriptText(SAY_SUMMON_2, me);
                    me->CastSpell(me, SPELL_ALGALON_CHANNEL, true);
                    break;
                case EVENT_SUMMON_INTRO_5:
                    DoScriptText(SAY_SUMMON_3, me);
                    break;
                case EVENT_SUMMON_INTRO_6:
                    phase = PHASE_NULL;
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                    break;
                case EVENT_START_ENCOUNTER_1:
                    /*DespawnCreatures(NPC_AZEROTH, 300.0f);*/
                    DoScriptText(SAY_AGGRO, me);
                    me->SetReactState(REACT_PASSIVE);
                    me->RemoveAurasDueToSpell(SPELL_ALGALON_BEAM_2);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                    me->SetUInt64Value(UNIT_FIELD_TARGET, 0);
                    me->AttackStop();
                    me->GetMotionMaster()->Clear();
                    if (instance)
                    {
                        instance->SetData(DATA_UNIVERSUM, GO_STATE_ACTIVE);
                        instance->SetData(DATA_KREIS_RESET, GO_STATE_ACTIVE);
                        instance->SetData(DATA_KREIS_START, GO_STATE_READY);
                        instance->SetData(DATA_INVISIBLE_DOOR, GO_STATE_READY);
                    }
                    break;
                case EVENT_START_ENCOUNTER_2:
                    DoScriptText(SAY_ENGADED_FOR_FIRTS_TIME, me);
                    break;
                case EVENT_START_ENCOUNTER_3:
                    phase = PHASE_COMBAT_1;
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                    events.ScheduleEvent(EVENT_QUANTUM_STRIKE, 3000);
                    events.ScheduleEvent(EVENT_PHASE_PUNCH, 5000);
                    events.ScheduleEvent(EVENT_COSMIC_SMASH, 30000);
                    events.ScheduleEvent(EVENT_COLLAPSING_STAR, 15000, 0, PHASE_COMBAT_1);
                    events.ScheduleEvent(EVENT_LIVIN_CONSTELLATION, 50000, 0, PHASE_COMBAT_1);
                    events.ScheduleEvent(EVENT_BIG_BANG, 90000);
                    events.ScheduleEvent(EVENT_BERSERK, 360000);
                    events.ScheduleEvent(EVENT_ASCENT_TO_THE_HEAVENS, 360100);
                    Summon();
                    break;
                case EVENT_PHASE_PUNCH:
                    DoCastVictim(SPELL_PHASE_PUNCH);
                    events.ScheduleEvent(EVENT_PHASE_PUNCH, 45000);
                    break;
                case EVENT_QUANTUM_STRIKE:
                    DoCastVictim(RAID_MODE(SPELL_QUANTUM_STRIKE_10, SPELL_QUANTUM_STRIKE_25));
                    events.ScheduleEvent(EVENT_QUANTUM_STRIKE, urand(3000, 5000));
                    break;
                case EVENT_COSMIC_SMASH:
                    me->MonsterTextEmote(EMOTE_COSMIC_SMASH, 0, true);
                    for (int8 n = 0; n < RAID_MODE(1,3); n++)
                        if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
                            DoCast(target, RAID_MODE(SPELL_COSMIC_SMASH_10, SPELL_COSMIC_SMASH_25));
                    events.ScheduleEvent(EVENT_COSMIC_SMASH, 25000);
                    break;
                case EVENT_COLLAPSING_STAR:
                    DoScriptText(SAY_SUMMON_COLLAPSING_STAR, me);
                    me->MonsterTextEmote(EMOTE_ADDS, 0, true);	
                    for (uint8 i = 0; i < 4; ++i)
                        me->SummonCreature(NPC_COLLAPSING_STAR, BlackHoleSpawnLocations[i][0],BlackHoleSpawnLocations[i][1],BlackHoleSpawnLocations[i][2],BlackHoleSpawnLocations[i][3], TEMPSUMMON_CORPSE_TIMED_DESPAWN, 10000);
                    events.CancelEvent(EVENT_COLLAPSING_STAR);
                    break;
                case EVENT_LIVIN_CONSTELLATION:
                    Summon();
                    CallLivingConstellation();
                    CallLivingConstellation();
                    CallLivingConstellation();
                    events.ScheduleEvent(EVENT_LIVIN_CONSTELLATION, urand(45000, 50000), 0, PHASE_COMBAT_1 || PHASE_COMBAT_2);
                    break;
                case EVENT_BIG_BANG:
                    me->MonsterTextEmote(EMOTE_BIGBANG, 0, true);	
                    DoScriptText(urand(SAY_BIG_BANG_1,SAY_BIG_BANG_2), me);
	                DoCastAOE(RAID_MODE(SPELL_BIG_BANG_10, SPELL_BIG_BANG_25));
                    events.ScheduleEvent(EVENT_BIG_BANG, 90000, 0, PHASE_COMBAT_1 || PHASE_COMBAT_2);
                    events.ScheduleEvent(EVENT_REMOVEBLACKHOHLE, 9000);
                    events.ScheduleEvent(EVENT_ATTACKSTART, 12000);
                    break;
                case EVENT_REMOVEBLACKHOHLE:
                    events.CancelEvent(EVENT_COLLAPSING_STAR);
                case EVENT_ATTACKSTART:
                    DoZoneInCombat();
                    me->GetMotionMaster()->MoveChase(me->getVictim());
                    events.CancelEvent(EVENT_ATTACKSTART);
                    break;
                case EVENT_ASCENT_TO_THE_HEAVENS:
                    me->CastStop();
                    DoCastAOE(SPELL_ASCEND);
                    events.CancelEvent(EVENT_ASCENT_TO_THE_HEAVENS);
                    break;
                case EVENT_BERSERK:
                    DoCast(me, SPELL_BERSERK);
                    events.CancelEvent(EVENT_BERSERK);
                }
            }
            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_algalonAI (creature);
    }
};

class creature_living_constellation : public CreatureScript
{
public:
    creature_living_constellation() : CreatureScript("creature_living_constellation") { }

    struct creature_living_constellation_AI : public ScriptedAI
    {
        creature_living_constellation_AI(Creature *creature) : ScriptedAI(creature){}

        void Reset()
        {
            me->SetFlying(true);
        }

        void EnterCombat(Unit* who)
        {
            events.ScheduleEvent(EVENT_HOVER, 2000);
            events.ScheduleEvent(EVENT_ARKANE_BARRAGE, urand(10000,15000));
            events.ScheduleEvent(EVENT_NEW_TARGET, 25000);
            events.ScheduleEvent(EVENT_BLACK_HOHLE, 25000);
        }

        void MoveInLineOfSight(Unit* who)
        {
            ScriptedAI::MoveInLineOfSight(who);

            if (who->GetTypeId() != TYPEID_UNIT)
                return;

            if (who->GetEntry() == NPC_BLACKHOHLE && who->GetDistance(me) < 5.0f)
            {
                who->ToCreature()->CastSpell(who, SPELL_DESPAWN_BLACK_HOLE, true);
                who->ToCreature()->ForcedDespawn(1*IN_MILLISECONDS);
                me->DealDamage(me, me->GetHealth());
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                    case EVENT_HOVER:
                    {
                        float x = me->getVictim()->GetPositionX();
                        float y = me->getVictim()->GetPositionY();
                        float z = me->getVictim()->GetPositionZ();
                        if (me->IsWithinDist3d(x, y, z, 30))
                            me->GetMotionMaster()->MovePoint(0, x, y, 438.106720f);
                        events.ScheduleEvent(EVENT_HOVER, 2000);
                        break;
                    }
                    case EVENT_ARKANE_BARRAGE:
                        DoCastVictim(SPELL_ARCANE_BARAGE_10);
                        events.ScheduleEvent(EVENT_ARKANE_BARRAGE, urand(10000,15000));
                        break;
                    case EVENT_NEW_TARGET:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 1))
                        {
                            DoResetThreat();   
                            me->AddThreat(target, 5000000.0f); 
                        }
                        events.ScheduleEvent(EVENT_NEW_TARGET, 15000);
                        break;
                }
            }
        }

    private:
        EventMap events;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new creature_living_constellation_AI (creature);
    }
};

class creature_collapsing_star : public CreatureScript
{
public:
    creature_collapsing_star() : CreatureScript("creature_collapsing_star") { }

    struct creature_collapsing_star_AI : public ScriptedAI
    {
        creature_collapsing_star_AI(Creature *creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetSpeed(MOVE_WALK, 0.5f);
            me->SetSpeed(MOVE_RUN, 0.5f);
            dead = false;

            events.ScheduleEvent(EVENT_MOVEMENT, 1000);
            events.ScheduleEvent(EVENT_LIVE, 1000);
        }

        EventMap events;
        bool dead;

        void JustDied(Unit * /*killer*/)
        {
            DoCast(SPELL_BLACK_HOLE_CREDIT);
            DoCast(me, RAID_MODE(SPELL_BLACK_HOLE_EXPLOSION_10, SPELL_BLACK_HOLE_EXPLOSION_25), true);
        }

        void BlackHohle()
        {
            DoCastAOE(SPELL_BLACK_HOLE_EXPLOSION_10);
        }
	  
        void UpdateAI(const uint32 diff)
        {
            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                    case EVENT_LIVE:
                    {
                        me->DealDamage(me, me->CountPctFromMaxHealth(1));
                        events.ScheduleEvent(EVENT_LIVE, 1000);
                        break;
                    }
                    /*case EVENT_MOVEMENT:
                    {
                        if(rand()%100 < 30)
                        {
                            me->GetMotionMaster()->Clear(false);
                            me->GetMotionMaster()->MoveIdle();
                        }
                        else ChangePosition();
                        events.ScheduleEvent(EVENT_MOVEMENT, 15000);
                        break;
                    }*/
                }
            }

            if (HealthBelowPct(1) && !dead)
            {
                BlackHohle();
                me->ForcedDespawn(1000);
                dead = true;
            }
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new creature_collapsing_star_AI (creature);
    }
};

class creature_blackhohle : public CreatureScript
{
public:
    creature_blackhohle() : CreatureScript("creature_blackhohle") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new creature_blackhohleAI(pCreature);
    }

    struct creature_blackhohleAI : public Scripted_NoMovementAI
    {
        creature_blackhohleAI(Creature* pCreature) : Scripted_NoMovementAI(pCreature)
        {
            DoCast(me, SPELL_BLACK_HOLE_SPAWN_VISUAL, true);
            DoCast(me, SPELL_BLACK_HOLE_STATE, true);
            DoCast(me, SPELL_BLACK_HOLE_TRIGGER, true);
            DoCast(me, SPELL_VOID_ZONE_VISUAL, true);
            me->setFaction(14);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetReactState(REACT_PASSIVE);
            me->SetInCombatWithZone();
        }

        void SpellHitTarget(Unit* target, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_BLACK_HOLE_PHASE)
            {
                target->CombatStop();
                target->getHostileRefManager().deleteReferences();
            }
        }
    };
};

/*class go_planetarium_access : public GameObjectScript
{
public:
    go_planetarium_access() : GameObjectScript("go_planetarium_access") { }

    bool OnGossipHello(Player* player, GameObject* go)
    {
        InstanceScript* pInstance = go->GetInstanceScript();

        if (player->HasItemCount(45796, 1) || player->HasItemCount(45798, 1))
        {
            go->SetFlag(GAMEOBJECT_FLAGS, GO_FLAG_UNK1);
            go->SetGoState(GO_STATE_ACTIVE);
            // TODO: move to instance
            pInstance->HandleGameObject(pInstance->GetData64(GO_ALGALON_DOOR_1), true);
            pInstance->HandleGameObject(pInstance->GetData64(GO_ALGALON_DOOR_2), true);
        }
        return true;
    }
};*/

// cast spell effects on same target
class spell_cosmic_smash : public SpellScriptLoader
{
    public:
        spell_cosmic_smash() : SpellScriptLoader("spell_cosmic_smash") { }

        class spell_cosmic_smash_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_cosmic_smash_SpellScript);

            void FilterTargetsInitial(std::list<Unit*>& unitList)
            {
                sharedUnitList = unitList;
            }

            void FilterTargetsSubsequent(std::list<Unit*>& unitList)
            {
                unitList = sharedUnitList;
            }

            void Register()
            {
                OnUnitTargetSelect += SpellUnitTargetFn(spell_cosmic_smash_SpellScript::FilterTargetsInitial, EFFECT_0, TARGET_UNIT_AREA_ENEMY_SRC);
                OnUnitTargetSelect += SpellUnitTargetFn(spell_cosmic_smash_SpellScript::FilterTargetsSubsequent, EFFECT_1, TARGET_UNIT_AREA_ENEMY_SRC);
            }

            std::list<Unit*> sharedUnitList;
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_cosmic_smash_SpellScript();
        }
};

// set trigger summon location
class spell_cosmic_smash_summon_trigger : public SpellScriptLoader
{
    public:
        spell_cosmic_smash_summon_trigger() : SpellScriptLoader("spell_cosmic_smash_summon_trigger") { }

        class spell_cosmic_smash_summon_trigger_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_cosmic_smash_summon_trigger_SpellScript);

            void HandleScript(SpellEffIndex effIndex)
            {
                PreventHitDefaultEffect(effIndex);
                GetCaster()->SummonCreature(CREATURE_COSMIC_SMASH_TRIGGER, Locations[2], TEMPSUMMON_TIMED_DESPAWN, 7900);
            }

            void Register()
            {
                OnEffect += SpellEffectFn(spell_cosmic_smash_summon_trigger_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SUMMON);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_cosmic_smash_summon_trigger_SpellScript();
        }
};

// set target summon location
class spell_cosmic_smash_summon_target : public SpellScriptLoader
{
    public:
        spell_cosmic_smash_summon_target() : SpellScriptLoader("spell_cosmic_smash_summon_target") { }

        class spell_cosmic_smash_summon_target_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_cosmic_smash_summon_target_SpellScript);

            void HandleScript(SpellEffIndex effIndex)
            {
                PreventHitDefaultEffect(effIndex);
                GetCaster()->SummonCreature(CREATURE_COSMIC_SMASH_TARGET, GetCaster()->GetPositionX(), GetCaster()->GetPositionY(),
                    GetCaster()->GetPositionZ(), 0.0f, TEMPSUMMON_TIMED_DESPAWN, 10*IN_MILLISECONDS);
            }

            void Register()
            {
                OnEffect += SpellEffectFn(spell_cosmic_smash_summon_target_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SUMMON);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_cosmic_smash_summon_target_SpellScript();
        }
};

// set damage based on proximity
class spell_cosmic_smash_dmg : public SpellScriptLoader
{
    public:
        spell_cosmic_smash_dmg() : SpellScriptLoader("spell_cosmic_smash_dmg") { }

        class spell_cosmic_smash_dmg_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_cosmic_smash_dmg_SpellScript);

            void CalcDamage(SpellEffIndex /*effIndex*/)
            {
                if (!GetHitUnit() || !GetTargetDest())
                    return;

                float distance = GetHitUnit()->GetExactDist2d(GetTargetDest());
                if (distance < 3.4f)
                    return;

                SetHitDamage(int32(GetHitDamage() * 10.0f / pow(distance, 1.9f)));
            }

            void Register()
            {
                OnEffect += SpellEffectFn(spell_cosmic_smash_dmg_SpellScript::CalcDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_cosmic_smash_dmg_SpellScript();
        }
};

// prevent target gets selected twice after spell destination is set
class spell_cosmic_smash_missile_target : public SpellScriptLoader
{
    public:
        spell_cosmic_smash_missile_target() : SpellScriptLoader("spell_cosmic_smash_missile_target") { }

        class spell_cosmic_smash_missile_target_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_cosmic_smash_missile_target_SpellScript);

            void FilterTarget(std::list<Unit*>& unitList)
            {
                for (std::list<Unit*>::iterator itr = unitList.begin() ; itr != unitList.end(); ++itr)
                {
                    if ((*itr)->isAlive())
                        (*itr)->Kill(*itr);
                }
            }

            void Register()
            {
                OnUnitTargetSelect += SpellUnitTargetFn(spell_cosmic_smash_missile_target_SpellScript::FilterTarget, EFFECT_0, TARGET_DST_NEARBY_ENTRY);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_cosmic_smash_missile_target_SpellScript();
        }
};

void AddSC_boss_algalon()
{
    new boss_algalon();
    new creature_living_constellation();
    new creature_blackhohle();
    new creature_collapsing_star();
    //new go_planetarium_access();
    //new creature_bronzenbart();
    new spell_cosmic_smash();
    new spell_cosmic_smash_summon_trigger();
    new spell_cosmic_smash_summon_target();
    new spell_cosmic_smash_dmg();
    new spell_cosmic_smash_missile_target();
}
