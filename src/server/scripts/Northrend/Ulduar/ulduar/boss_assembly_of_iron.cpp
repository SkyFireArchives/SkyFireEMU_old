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

// Any boss
enum Spells
{
    // Any boss
    SPELL_SUPERCHARGE                           = 61920,
    SPELL_BERSERK                               = 47008,    // Hard enrage, don't know the correct ID.

    // Steelbreaker
    SPELL_HIGH_VOLTAGE                          = 61890,
    SPELL_FUSION_PUNCH                          = 61903,
    SPELL_STATIC_DISRUPTION                     = 44008, //63494
    SPELL_OVERWHELMING_POWER                    = 64637,
    SPELL_ELECTRICAL_CHARGE                     = 61902,

    // Runemaster Molgeim
    SPELL_SHIELD_OF_RUNES                       = 62274,
    SPELL_RUNE_OF_POWER                         = 61973,
    SPELL_RUNE_OF_POWER_VISUAL                  = 61974,
    SPELL_RUNE_OF_DEATH                         = 62269,
    SPELL_RUNE_OF_SUMMONING                     = 62273,
    SPELL_RUNE_OF_SUMMONING_VISUAL              = 62019,
    SPELL_RUNE_OF_SUMMONING_SUMMON              = 62020,
    SPELL_LIGHTNING_BLAST                       = 62054,

    // Stormcaller Brundir
    SPELL_CHAIN_LIGHTNING                       = 61879,
    SPELL_OVERLOAD                              = 61869,
    SPELL_LIGHTNING_WHIRL                       = 61915,
    SPELL_LIGHTNING_TENDRILS                    = 61887,
    SPELL_LIGHTNING_TENDRILS_SELF_VISUAL        = 61883,
    SPELL_STORMSHIELD                           = 64187
};

enum eEnums
{
    EVENT_ENRAGE                            = 1,
    EVENT_FUSION_PUNCH                      = 2,
    EVENT_STATIC_DISRUPTION                 = 3,
    EVENT_OVERWHELMING_POWER                = 4,
    EVENT_RUNE_OF_POWER                     = 5,
    EVENT_SHIELD_OF_RUNES                   = 6,
    EVENT_RUNE_OF_DEATH                     = 7,
    EVENT_RUNE_OF_SUMMONING                 = 8,
    EVENT_LIGHTNING_BLAST                   = 9,
    EVENT_CHAIN_LIGHTNING                   = 10,
    EVENT_OVERLOAD                          = 11,
    EVENT_LIGHTNING_WHIRL                   = 12,
    EVENT_LIGHTNING_TENDRILS                = 13,
    EVENT_FLIGHT                            = 14,
    EVENT_ENDFLIGHT                         = 15,
    EVENT_GROUND                            = 16,
    EVENT_LAND                              = 17,
    EVENT_MOVE_POS                          = 18,
    EVENT_AURA                              = 19,
    MAX_EVENT                               = 20,
};

enum Actions
{
    ACTION_STEELBREAKER                     = 0,
    ACTION_MOLGEIM                          = 1,
    ACTION_BRUNDIR                          = 2,
};

enum eAchievements
{
    ACHIEVEMENT_ON_YOUR_SIDE_10             = 2945,
    ACHIEVEMENT_ON_YOUR_SIDE_25             = 2946,
    ACHIEVEMENT_CANT_WHILE_STUNNED_10       = 2947,
    ACHIEVEMENT_CANT_WHILE_STUNNED_25       = 2948,
    ACHIEVEMENT_CHOOSE_STEELBREAKER_10      = 2941,
    ACHIEVEMENT_CHOOSE_STEELBREAKER_25      = 2944,
    ACHIEVEMENT_CHOOSE_MOLGEIM_10           = 2939,
    ACHIEVEMENT_CHOOSE_MOLGEIM_25           = 2942,
    ACHIEVEMENT_CHOOSE_BRUNDIR_10           = 2940,
    ACHIEVEMENT_CHOOSE_BRUNDIR_25           = 2943,
};

enum Yells
{
    SAY_STEELBREAKER_AGGRO                  = -1603020,
    SAY_STEELBREAKER_SLAY_1                 = -1603021,
    SAY_STEELBREAKER_SLAY_2                 = -1603022,
    SAY_STEELBREAKER_POWER                  = -1603023,
    SAY_STEELBREAKER_DEATH_1                = -1603024,
    SAY_STEELBREAKER_DEATH_2                = -1603025,
    SAY_STEELBREAKER_BERSERK                = -1603026,

    SAY_MOLGEIM_AGGRO                       = -1603030,
    SAY_MOLGEIM_SLAY_1                      = -1603031,
    SAY_MOLGEIM_SLAY_2                      = -1603032,
    SAY_MOLGEIM_RUNE_DEATH                  = -1603033,
    SAY_MOLGEIM_SUMMON                      = -1603034,
    SAY_MOLGEIM_DEATH_1                     = -1603035,
    SAY_MOLGEIM_DEATH_2                     = -1603036,
    SAY_MOLGEIM_BERSERK                     = -1603037,

    SAY_BRUNDIR_AGGRO                       = -1603040,
    SAY_BRUNDIR_SLAY_1                      = -1603041,
    SAY_BRUNDIR_SLAY_2                      = -1603042,
    SAY_BRUNDIR_SPECIAL                     = -1603043,
    SAY_BRUNDIR_FLIGHT                      = -1603044,
    SAY_BRUNDIR_DEATH_1                     = -1603045,
    SAY_BRUNDIR_DEATH_2                     = -1603046,
    SAY_BRUNDIR_BERSERK                     = -1603047,
};

#define EMOTE_OVERLOAD    "Brundir beginnt zu uberladen!"

bool IsEncounterComplete(InstanceScript* instance, Creature* me)
{
    if (!instance || !me)
    return false;

    for (uint8 i = 0; i < 3; ++i)
    {
        uint64 guid = instance->GetData64(DATA_STEELBREAKER+i);
        if(!guid)
        return false;

        if(Creature *boss = (Unit::GetCreature((*me), guid)))
        {
            if(boss->isAlive())
                return false;

            continue;
        }
        else
        return false;
    }
    return true;
}

// Avoid killing bosses one to one
void CallBosses(InstanceScript *instance, uint32 caller, Unit *who) 
{
// Respawn if dead
    if(Creature* steelbreaker = Unit::GetCreature(*who, instance ? instance->GetData64(DATA_STEELBREAKER) : 0))
    if(steelbreaker->isDead())
    {            
        steelbreaker->Respawn(true);
        steelbreaker->GetMotionMaster()->MoveTargetedHome();
    }
           
    if(Creature* brundir = Unit::GetCreature(*who, instance ? instance->GetData64(DATA_BRUNDIR) : 0))
    if(brundir->isDead())
    {
        brundir->Respawn(true);
        brundir->GetMotionMaster()->MoveTargetedHome();
    }

    if(Creature* molgeim = Unit::GetCreature(*who, instance ? instance->GetData64(DATA_MOLGEIM) : 0))
    if(molgeim->isDead())
    {
        molgeim->Respawn(true);
        molgeim->GetMotionMaster()->MoveTargetedHome();
    }
   
    for (uint8 i = 0; i < 3; ++i)
    {
        if (caller == DATA_STEELBREAKER+i) continue;
        uint64 guid = instance->GetData64(DATA_STEELBREAKER+i);
        if(!guid) return;
        if(Creature* boss = instance->instance->GetCreature(guid))
        {
            if(boss->isAlive())
            {
                boss->AddThreat(who, 100.0f);
                boss->AI()->AttackStart(who);
            }   
        }
    }   
}

class boss_steelbreaker : public CreatureScript
{
public:
    boss_steelbreaker() : CreatureScript("boss_steelbreaker") { }

    struct boss_steelbreakerAI : public ScriptedAI
    {
        boss_steelbreakerAI(Creature *creature) : ScriptedAI(creature)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true); // Death Grip jump effect
            instance = (InstanceScript *) creature->GetInstanceScript();
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
            phase = 0;
            me->RemoveAllAuras();
            if(instance)
               instance->SetBossState(BOSS_ASSEMBLY, NOT_STARTED);
	           
            // Respawn
            if(Creature* brundir = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_BRUNDIR) : 0))
            if(brundir->isDead())
            {
                brundir->Respawn(true);
                brundir->GetMotionMaster()->MoveTargetedHome();
            }

            if(Creature* molgeim = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_MOLGEIM) : 0))
            if(molgeim->isDead())
            {
                molgeim->Respawn(true);
                molgeim->GetMotionMaster()->MoveTargetedHome();
            }
        }

        void EnterCombat(Unit *who)
        {
            DoScriptText(SAY_STEELBREAKER_AGGRO, me);
            DoZoneInCombat();
            CallBosses(instance, DATA_STEELBREAKER, who);
            DoCast(me, SPELL_HIGH_VOLTAGE);
            phase = 1;
            events.SetPhase(phase);
            events.ScheduleEvent(EVENT_ENRAGE, 600000);
            events.ScheduleEvent(EVENT_FUSION_PUNCH, 15000);
        }

        void JustDied(Unit* Killer)
        {
            DoScriptText(RAND(SAY_STEELBREAKER_DEATH_1, SAY_STEELBREAKER_DEATH_2), me);
            if(phase != 3)
	            DoCast(SPELL_SUPERCHARGE);
            if(IsEncounterComplete(instance, me) && instance)
            {
                instance->SetBossState(BOSS_ASSEMBLY, DONE);
                instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_CHOOSE_STEELBREAKER_10, ACHIEVEMENT_CHOOSE_STEELBREAKER_25));
                instance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, 65195);
            }
            else me->SetLootRecipient(NULL);
	           
            if(Creature* brundir = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_BRUNDIR) : 0))
            if(brundir->isAlive())
               brundir->AI()->DoAction(ACTION_BRUNDIR);

            if(Creature* molgeim = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_MOLGEIM) : 0))
            if(molgeim->isAlive())
               molgeim->AI()->DoAction(ACTION_MOLGEIM);
        }

        void KilledUnit(Unit *who)
        {
            DoScriptText(RAND(SAY_STEELBREAKER_SLAY_1, SAY_STEELBREAKER_SLAY_2), me);
	   
            if(phase == 3)
                DoCast(me, SPELL_ELECTRICAL_CHARGE);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                case EVENT_ENRAGE:
                    DoScriptText(SAY_STEELBREAKER_BERSERK, me);
                    DoCast(SPELL_BERSERK);
                    break;
                case EVENT_FUSION_PUNCH:
                    if (me->IsWithinMeleeRange(me->getVictim()))
	                    DoCastVictim(SPELL_FUSION_PUNCH);
                    events.ScheduleEvent(EVENT_FUSION_PUNCH, urand(15000, 20000));
                    break;
                case EVENT_STATIC_DISRUPTION:
                {
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
	                    DoCast(target,SPELL_STATIC_DISRUPTION);
                    events.ScheduleEvent(EVENT_STATIC_DISRUPTION, 20000 + (rand()%20)*1000);
                }
                break;
                case EVENT_OVERWHELMING_POWER:
                    DoScriptText(SAY_STEELBREAKER_POWER, me);
                    DoCastVictim(SPELL_OVERWHELMING_POWER);
                    events.ScheduleEvent(EVENT_OVERWHELMING_POWER, RAID_MODE(60000, 35000));
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
	   
        void DoAction(const int32 action)
        {
            switch (action)
            {
            case ACTION_STEELBREAKER:
                me->SetHealth(me->GetMaxHealth());
                ++phase;
                events.SetPhase(phase);
                if(phase >= 2)
                    events.RescheduleEvent(EVENT_STATIC_DISRUPTION, 30000);
                if(phase >= 3)
                {
                    me->AddAura(SPELL_SUPERCHARGE, me);
                    events.RescheduleEvent(EVENT_OVERWHELMING_POWER, urand(2000, 5000));
                    // Add HardMode Loot
                    me->AddLootMode(LOOT_MODE_HARD_MODE_1);
                }
                break;
            }
        }

        private:
            InstanceScript* instance;
            EventMap events;
            uint32 phase;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_steelbreakerAI (creature);
    }
};

class spell_meltdown : public SpellScriptLoader
{
    public:
        spell_meltdown() : SpellScriptLoader("spell_meltdown") { }

        class spell_meltdown_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_meltdown_SpellScript);

            bool Validate(SpellEntry const* /*spell*/)
            {
                if (!sSpellStore.LookupEntry(SPELL_ELECTRICAL_CHARGE))
                    return false;
                return true;
            }

            void TriggerElectricalCharge(SpellEffIndex /*effIndex*/)
            {
                if (Unit* target = GetHitUnit())
                    if (InstanceScript* _instance = target->GetInstanceScript())
                        if (Creature* steelbreaker = ObjectAccessor::GetCreature(*target, _instance->GetData64(DATA_STEELBREAKER)))
                            steelbreaker->CastSpell(steelbreaker, SPELL_ELECTRICAL_CHARGE, true);
            }

            void Register()
            {
                OnEffect += SpellEffectFn(spell_meltdown_SpellScript::TriggerElectricalCharge, EFFECT_1, SPELL_EFFECT_INSTAKILL);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_meltdown_SpellScript();
        }
};

class boss_runemaster_molgeim : public CreatureScript
{
public:
    boss_runemaster_molgeim() : CreatureScript("boss_runemaster_molgeim") { }

    struct boss_runemaster_molgeimAI : public ScriptedAI
    {
        boss_runemaster_molgeimAI(Creature *creature) : ScriptedAI(creature)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true); // Death Grip jump effect
            instance = (InstanceScript *) creature->GetInstanceScript();
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
            if(instance)
               instance->SetBossState(BOSS_ASSEMBLY, NOT_STARTED);
            events.Reset();
            me->RemoveAllAuras();
            phase = 0;

            // Respawn
            if(Creature* brundir = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_BRUNDIR) : 0))
            if(brundir->isDead())
            {
                brundir->Respawn(true);
                brundir->GetMotionMaster()->MoveTargetedHome();
            }

            if(Creature* steelbreaker = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_STEELBREAKER) : 0))
            if(steelbreaker->isDead())
            {
                steelbreaker->Respawn(true);
                steelbreaker->GetMotionMaster()->MoveTargetedHome();
            }
        }

        void EnterCombat(Unit* who)
        {
            DoScriptText(SAY_MOLGEIM_AGGRO, me);
            DoZoneInCombat();
            CallBosses(instance, DATA_MOLGEIM, who);
            phase = 1;
            instance->SetBossState(BOSS_ASSEMBLY, IN_PROGRESS);
            events.ScheduleEvent(EVENT_ENRAGE, 600000);
            events.ScheduleEvent(EVENT_SHIELD_OF_RUNES, 30000);
            events.ScheduleEvent(EVENT_RUNE_OF_POWER, 20000);

            me->RemoveAllAuras();
        }

        void JustDied(Unit* Killer)
        {
            DoScriptText(RAND(SAY_MOLGEIM_DEATH_1, SAY_MOLGEIM_DEATH_2), me);
            if(phase != 3)
	            DoCast(SPELL_SUPERCHARGE);
            if(IsEncounterComplete(instance, me) && instance)
            {
                instance->SetBossState(BOSS_ASSEMBLY, DONE);
                instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_CHOOSE_MOLGEIM_10,ACHIEVEMENT_CHOOSE_MOLGEIM_25));
                instance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, 65195);
            }
            else me->SetLootRecipient(NULL);

            if(Creature* brundir = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_BRUNDIR) : 0))
            if(brundir->isAlive())
               brundir->AI()->DoAction(ACTION_BRUNDIR);

            if(Creature* steelbreaker = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_STEELBREAKER) : 0))
            if(steelbreaker->isAlive())
               steelbreaker->AI()->DoAction(ACTION_STEELBREAKER);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                case EVENT_ENRAGE:
                        DoScriptText(SAY_MOLGEIM_BERSERK, me);
                        DoCast(SPELL_BERSERK);
                        break;
                case EVENT_RUNE_OF_POWER: // random alive friendly
                {
                    Creature* randBossBuff;
                    uint32 choice = urand(0,2);

                    if (!instance) break;

                    randBossBuff = Unit::GetCreature(*me, instance->GetData64(DATA_STEELBREAKER+choice));

                    if (!randBossBuff || !randBossBuff->isAlive()) {
	                    choice = ((choice == 2) ? 0 : choice++);
	                        randBossBuff = Unit::GetCreature(*me, instance->GetData64(DATA_STEELBREAKER+choice));
	                if (!randBossBuff || !randBossBuff->isAlive()) {
		                choice = ((choice == 2) ? 0 : choice++);
		                    randBossBuff = Unit::GetCreature(*me, instance->GetData64(DATA_STEELBREAKER+choice));
	                }
                }
                if (!randBossBuff || !randBossBuff->isAlive())
	                randBossBuff = Unit::GetCreature(*me, instance->GetData64(DATA_MOLGEIM));

                DoCast(randBossBuff, SPELL_RUNE_OF_POWER);
                events.ScheduleEvent(EVENT_RUNE_OF_POWER, 35000);
            }
            break;
            case EVENT_SHIELD_OF_RUNES:
                DoCast(me, SPELL_SHIELD_OF_RUNES);
                events.ScheduleEvent(EVENT_SHIELD_OF_RUNES, urand(60000, 80000));
                break;
            case EVENT_RUNE_OF_DEATH:
            {
                DoScriptText(SAY_MOLGEIM_RUNE_DEATH, me);
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
	                DoCast(target, SPELL_RUNE_OF_DEATH);
                events.ScheduleEvent(EVENT_RUNE_OF_DEATH, 30000);
            }
            break;
            case EVENT_RUNE_OF_SUMMONING:
            {
                DoScriptText(SAY_MOLGEIM_SUMMON, me);
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
	                DoCast(target, SPELL_RUNE_OF_SUMMONING);
                events.ScheduleEvent(EVENT_RUNE_OF_SUMMONING, urand(40000, 50000));
            }
            break;}
        }
        DoMeleeAttackIfReady();}
	   
        void KilledUnit(Unit *who)
        {
            DoScriptText(RAND(SAY_MOLGEIM_SLAY_1, SAY_MOLGEIM_SLAY_2), me);
        }
	   
        void DoAction(const int32 action)
        {
            switch (action)
            {
            case ACTION_MOLGEIM:
                me->SetHealth(me->GetMaxHealth());
                ++phase;
                events.SetPhase(phase);
                events.RescheduleEvent(EVENT_SHIELD_OF_RUNES, 30000);
                events.RescheduleEvent(EVENT_RUNE_OF_POWER, 20000);
                if(phase >= 2)
                    events.RescheduleEvent(EVENT_RUNE_OF_DEATH, 35000);
                if(phase >= 3)
                {
                    me->AddAura(SPELL_SUPERCHARGE, me);
                    events.RescheduleEvent(EVENT_RUNE_OF_SUMMONING, 40000);
                    me->AddLootMode(LOOT_MODE_HARD_MODE_1);
                }
                break;
            }
        }

        private:
            InstanceScript* instance;
            EventMap events;
            uint32 phase;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_runemaster_molgeimAI (creature);
    }
};

class boss_stormcaller_brundir : public CreatureScript
{
public:
    boss_stormcaller_brundir() : CreatureScript("boss_stormcaller_brundir") { }

    struct boss_stormcaller_brundirAI : public ScriptedAI
    {
        boss_stormcaller_brundirAI(Creature *creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
            me->SetReactState(REACT_PASSIVE);
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true); // Death Grip jump effect
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
            if(instance)
               instance->SetBossState(BOSS_ASSEMBLY, NOT_STARTED);
            me->RemoveAllAuras();
            me->RemoveUnitMovementFlag(MOVEMENTFLAG_LEVITATING | MOVEMENTFLAG_WALKING);
            events.Reset();
            phase = 0;
	       
            // Respawn
            if(Creature* molgeim = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_MOLGEIM) : 0))
            if(molgeim->isDead())
            {
                molgeim->Respawn(true);
                molgeim->GetMotionMaster()->MoveTargetedHome();
            }

            if(Creature* steelbreaker = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_STEELBREAKER) : 0))
            if(steelbreaker->isDead())
            {            
                steelbreaker->Respawn(true);
                steelbreaker->GetMotionMaster()->MoveTargetedHome();
            }
        }

        void EnterCombat(Unit* who)
        {
            DoScriptText(SAY_BRUNDIR_AGGRO, me);
            DoZoneInCombat();
            CallBosses(instance, DATA_BRUNDIR, who);
            phase = 1;
            events.ScheduleEvent(EVENT_MOVE_POS, 1000);
            events.ScheduleEvent(EVENT_ENRAGE, 600000);
            events.ScheduleEvent(EVENT_CHAIN_LIGHTNING, 2000);
            events.ScheduleEvent(EVENT_OVERLOAD, urand(60000, 120000));

            me->RemoveAllAuras();
        }

        void JustDied(Unit* Killer)
        {
            DoScriptText(RAND(SAY_BRUNDIR_DEATH_1, SAY_BRUNDIR_DEATH_2), me);
            if(phase != 3)
	            DoCast(SPELL_SUPERCHARGE);
            if(IsEncounterComplete(instance, me) && instance)
            {
                instance->SetBossState(BOSS_ASSEMBLY, DONE);
                instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_CHOOSE_BRUNDIR_10,ACHIEVEMENT_CHOOSE_BRUNDIR_25));
                instance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, 65195);
                if (me->GetPositionZ() > 428)
                    me->GetMotionMaster()->MoveFall(427.28f);
            }
            else me->SetLootRecipient(NULL);
	           
            if(Creature* molgeim = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_MOLGEIM) : 0))
            if(molgeim->isAlive())
               molgeim->AI()->DoAction(ACTION_MOLGEIM);

            if(Creature* steelbreaker = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_STEELBREAKER) : 0))
            if(steelbreaker->isAlive())
               steelbreaker->AI()->DoAction(ACTION_STEELBREAKER);
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
                case EVENT_MOVE_POS:
                    MovePos();
                    events.RescheduleEvent(EVENT_MOVE_POS, 10000);
                    break;
                case EVENT_ENRAGE:
                    DoScriptText(SAY_BRUNDIR_BERSERK, me);
                    DoCast(SPELL_BERSERK);
                    break;
                case EVENT_CHAIN_LIGHTNING:
                    if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
	                DoCast(target, SPELL_CHAIN_LIGHTNING);
                    events.ScheduleEvent(EVENT_CHAIN_LIGHTNING, urand(4000, 6000));
                    break;
                case EVENT_OVERLOAD:
                    me->MonsterTextEmote(EMOTE_OVERLOAD, 0, true);
                    DoScriptText(SAY_BRUNDIR_SPECIAL, me);
                    me->GetMotionMaster()->Initialize();
                    DoCastAOE(SPELL_OVERLOAD);
                    events.ScheduleEvent(EVENT_OVERLOAD, urand(60000, 120000));
                    break;
                case EVENT_LIGHTNING_WHIRL:
                    me->GetMotionMaster()->Initialize();
                    DoCastAOE(SPELL_LIGHTNING_WHIRL);
                    events.ScheduleEvent(EVENT_LIGHTNING_WHIRL, urand(15000, 20000));
                    break;
                case EVENT_LIGHTNING_TENDRILS:
                    DoScriptText(SAY_BRUNDIR_FLIGHT, me);
                    DoCast(SPELL_LIGHTNING_TENDRILS);
                    DoCast(SPELL_LIGHTNING_TENDRILS_SELF_VISUAL);
                    me->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                    me->GetMotionMaster()->MovePoint(0, me->GetPositionX(), me->GetPositionY(), 435);
                    events.DelayEvents(34000);
                    events.ScheduleEvent(EVENT_FLIGHT, 2500);
                    events.ScheduleEvent(EVENT_ENDFLIGHT, 28000);
                    events.ScheduleEvent(EVENT_LIGHTNING_TENDRILS, 90000);
                    break;
                case EVENT_FLIGHT:
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        me->GetMotionMaster()->MovePoint(0, pTarget->GetPositionX(), pTarget->GetPositionY(), 435);
                    events.ScheduleEvent(EVENT_FLIGHT, 6000);
                    break;
                case EVENT_ENDFLIGHT:
                    me->GetMotionMaster()->MovePoint(0, 1586.920f, 119.849f, 435);
                    events.CancelEvent(EVENT_FLIGHT);
                    events.ScheduleEvent(EVENT_LAND, 4000);
                    break;
                case EVENT_LAND:
                    me->GetMotionMaster()->MovePoint(0, me->GetPositionX(), me->GetPositionY(), 427.28f);
                    events.ScheduleEvent(EVENT_GROUND, 1500);
                    break;
                case EVENT_GROUND:
                    me->RemoveAurasDueToSpell(SPELL_LIGHTNING_TENDRILS);
                    me->RemoveAurasDueToSpell(SPELL_LIGHTNING_TENDRILS_SELF_VISUAL);
                    me->RemoveUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                    me->SendMovementFlagUpdate();
                    break;
                }
            }
        }
	   
        void KilledUnit(Unit *who)
        {
            DoScriptText(RAND(SAY_BRUNDIR_SLAY_1, SAY_BRUNDIR_SLAY_2), me);
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
            case ACTION_BRUNDIR:
                me->SetHealth(me->GetMaxHealth());
                ++phase;
                events.SetPhase(phase);
                events.RescheduleEvent(EVENT_CHAIN_LIGHTNING, urand(6000, 12000));
                events.RescheduleEvent(EVENT_OVERLOAD, 40000);
                if(phase >= 2)
                    events.RescheduleEvent(EVENT_LIGHTNING_WHIRL, urand(10000, 15000));
                if(phase >= 3)
                {
                    me->AddAura(SPELL_SUPERCHARGE, me);
                    me->AddAura(SPELL_STORMSHIELD, me);
                    events.RescheduleEvent(EVENT_LIGHTNING_TENDRILS, 20000);
                    me->AddLootMode(LOOT_MODE_HARD_MODE_1);
                }
                break;
            }
        }
	   
        void MovePos()
        {
            switch(Position)
            {
            case 0:
                me->GetMotionMaster()->MovePoint(0, 1587.28f, 97.030f, me->GetPositionZ());
                break;
            case 1:
                me->GetMotionMaster()->MovePoint(0, 1587.18f, 121.03f, me->GetPositionZ());
                break;
            case 2:
                me->GetMotionMaster()->MovePoint(0, 1587.34f, 142.58f, me->GetPositionZ());
                break;
            case 3:
                me->GetMotionMaster()->MovePoint(0, 1587.18f, 121.03f, me->GetPositionZ());
                break;
            }

            Position++;
            if(Position > 3)
            {
                Position = 0;
            }
        }

        private:
            EventMap events;
            InstanceScript* instance;
            uint32 phase;
            uint32 Position;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_stormcaller_brundirAI (creature);
    }
};

/***************
*  mob_lightning_elemental
*****************/
class mob_lightning_elemental : public CreatureScript
{
public:
    mob_lightning_elemental() : CreatureScript("mob_lightning_elemental") { }

    struct mob_lightning_elementalAI : public ScriptedAI 
	{
        mob_lightning_elementalAI(Creature *creature) : ScriptedAI(creature){}
	 
        void Reset()
        {
            casted = false;
            me->GetMotionMaster()->MoveRandom(30);
        }

        void UpdateAI(const uint32 diff)
        {
            if (me->IsWithinMeleeRange(me->getVictim()) && !casted)
            {
                me->CastSpell(me, SPELL_LIGHTNING_BLAST, true);
                me->ForcedDespawn(500);
                casted = true;
            }
        }

    private:         
        Unit* target;
        bool casted;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_lightning_elementalAI (creature);
    }
};

/***************
*  mob_rune_of_summoning
*****************/
class mob_rune_of_summoning : public CreatureScript
{
public:
    mob_rune_of_summoning() : CreatureScript("mob_rune_of_summoning") { }

    struct mob_rune_of_summoningAI : public ScriptedAI
    {
        mob_rune_of_summoningAI(Creature *creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE|UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_DISABLE_MOVE);
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset()
        {
            summonTimer = 1500;
            me->ForcedDespawn(12500);
            DoCast(me, SPELL_RUNE_OF_SUMMONING_VISUAL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (summonTimer <= diff)
            {
                DoCast(me, SPELL_RUNE_OF_SUMMONING_SUMMON);
                summonTimer = 1500;
            }
            else summonTimer -= diff;
        }

    private:
        uint32 summonTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_rune_of_summoningAI (creature);
    }
};

/***************
*  mob_rune_of_power
*****************/
class mob_rune_of_power : public CreatureScript
{
public:
    mob_rune_of_power() : CreatureScript("mob_rune_of_power") { }

    struct mob_rune_of_powerAI : public ScriptedAI
    {
        mob_rune_of_powerAI(Creature *creature) : ScriptedAI(creature)  
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            me->SetReactState(REACT_PASSIVE);
        }
	   
        void Reset()
        {
            DoCast(me, SPELL_RUNE_OF_POWER_VISUAL, true);
            me->ForcedDespawn(35000);
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_rune_of_powerAI (creature);
    }
};

void AddSC_boss_assembly_of_iron()
{
    new boss_steelbreaker();
    new spell_meltdown();
    new boss_runemaster_molgeim();
    new boss_stormcaller_brundir();
    new mob_lightning_elemental();
    new mob_rune_of_summoning();
    new mob_rune_of_power();
}
