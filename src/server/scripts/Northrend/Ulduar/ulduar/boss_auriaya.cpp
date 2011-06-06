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
SDName: Auriaya
Author: 
SD%Complete: 100%
SDComment: TODO: Savage Pounce not works properly
EndScriptData */

#include "ScriptPCH.h"
#include "ulduar.h"

enum eSpells
{
     // Auriaya
     SPELL_SETINEL_BLAST                        = 64389,                   
     SPELL_SONIC_SCREECH                        = 64422, 
     SPELL_TERRIFYING_SCREECH                   = 64386,
     SPELL_SUMMON_SWARMING_GUARDIAN             = 64396,
     SPELL_ACTIVATE_DEFENDER                    = 64449,
     SPELL_DEFENDER_TRIGGER                     = 64448,
     SPELL_SUMMON_DEFENDER                      = 64447,
     SPELL_BERSERK                              = 47008,

     // Feral Defender
     SPELL_FERAL_RUSH                           = 64496, 
     SPELL_FERAL_POUNCE                         = 64478,
     SPELL_SEEPING_ESSENCE                      = 64458,
     SPELL_SUMMON_ESSENCE                       = 64457,
     SPELL_FERAL_ESSENCE                        = 64455,

     // Sanctum sentry
     SPELL_SAVAGE_POUNCE                        = 64666,
     SPELL_RIP_FLESH                            = 64375,
     SPELL_STRENGHT_PACK                        = 64381,
};

enum eAchievements
{
     ACHIEVEMENT_CRAZY_CAT_LADY_10              = 3006,
     ACHIEVEMENT_CRAZY_CAT_LADY_25              = 3007,
     ACHIEVEMENT_NINE_LIVES_10                  = 3076,
     ACHIEVEMENT_NINE_LIVES_25                  = 3077,
};

enum Events
{
    EVENT_NONE                                  = 1,
    EVENT_SCREECH                               = 2,
    EVENT_BLAST                                 = 3,
    EVENT_TERRIFYING                            = 4,
    EVENT_SUMMON                                = 5,
    EVENT_DEFENDER                              = 6,
    EVENT_BERSERK                               = 7,
};

enum Yells
{
    SAY_AGGRO                                   = -1603050,
    SAY_SLAY_1                                  = -1603051,
    SAY_SLAY_2                                  = -1603052,
    SAY_DEATH                                   = -1603053,
    SAY_BERSERK                                 = -1603054,
    EMOTE_FEAR                                  = -1603356,
    EMOTE_DEFENDER                              = -1603357,
};

enum Actions
{
    ACTION_CRAZY_CAT_LADY                       = 0,
    ACTION_NINE_LIVES                           = 1,
};

class boss_auriaya : public CreatureScript
{
public:
    boss_auriaya() : CreatureScript("boss_auriaya") { }

    struct boss_auriaya_AI : public BossAI
    {
        boss_auriaya_AI(Creature *creature) : BossAI(creature, BOSS_AURIAYA)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true); // Death Grip jump effect

            SpellEntry* tempSpell;
            tempSpell = GET_SPELL(SPELL_SETINEL_BLAST);
            if (tempSpell)
            {
                tempSpell->DurationIndex = 28;
                tempSpell->ChannelInterruptFlags &= ~AURA_INTERRUPT_FLAG_TAKE_DAMAGE;
            }
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
	       
            if (Creature* Sentry = me->SummonCreature(NPC_SANCTUM_SENTRY, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000))
                Sentry->GetMotionMaster()->MoveFollow(me, 0.5, 1.5, MOTION_SLOT_ACTIVE);
            if (Creature* Sentry = me->SummonCreature(NPC_SANCTUM_SENTRY, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000))
                Sentry->GetMotionMaster()->MoveFollow(me, 0.5, -1.5, MOTION_SLOT_ACTIVE);
        
            if (getDifficulty() == RAID_DIFFICULTY_25MAN_NORMAL)
            {
                if (Creature* Sentry = me->SummonCreature(NPC_SANCTUM_SENTRY, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000))
                    Sentry->GetMotionMaster()->MoveFollow(me, -2.5, 1.5, MOTION_SLOT_ACTIVE);
                if (Creature* Sentry = me->SummonCreature(NPC_SANCTUM_SENTRY, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000))
                    Sentry->GetMotionMaster()->MoveFollow(me, -2.5, -1.5, MOTION_SLOT_ACTIVE);
            }
        }

        void EnterCombat(Unit* who)
        {
            _EnterCombat();
            DoScriptText(SAY_AGGRO,me);
            sentryDead = false;
            livesCount = 0;
            events.ScheduleEvent(EVENT_SCREECH, 60000);
            events.ScheduleEvent(EVENT_BLAST, 35500);
            events.ScheduleEvent(EVENT_TERRIFYING, 35000);
            events.ScheduleEvent(EVENT_DEFENDER, 65000);
            events.ScheduleEvent(EVENT_SUMMON, 60000);
            events.ScheduleEvent(EVENT_BERSERK, 600000);
        }

        void KilledUnit(Unit* victim)
        {
            DoScriptText(RAND(SAY_SLAY_1, SAY_SLAY_2), me);
        }

        void JustDied(Unit *victim)
        {
            _JustDied();
            DoScriptText(SAY_DEATH, me);
	       
            // Achievements
            if (instance)
            {
                // Crazy Cat Lady
                if (!sentryDead)
                    instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_CRAZY_CAT_LADY_10,ACHIEVEMENT_CRAZY_CAT_LADY_25));
                // Nine Lives
                if (livesCount >= 9)
                    instance->DoCompleteAchievement(RAID_MODE(ACHIEVEMENT_NINE_LIVES_10,ACHIEVEMENT_NINE_LIVES_25));
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            while(uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                case EVENT_SCREECH:
                    DoCast(SPELL_SONIC_SCREECH);
                    events.ScheduleEvent(EVENT_SCREECH, 25000);
                    break;
                case EVENT_TERRIFYING:
                {
                    DoScriptText(EMOTE_FEAR, me);
                    DoCast(SPELL_TERRIFYING_SCREECH);
                    events.ScheduleEvent(EVENT_TERRIFYING, 35000);
                    break;
                }
                case EVENT_BLAST:
                    DoCastAOE(SPELL_SETINEL_BLAST);
                    events.ScheduleEvent(EVENT_BLAST, 35000);
                    break;
                case EVENT_DEFENDER:
                {
                    DoScriptText(EMOTE_DEFENDER, me);
                    DoCast(SPELL_DEFENDER_TRIGGER);
                    DoCast(SPELL_ACTIVATE_DEFENDER);
                    events.CancelEvent(EVENT_DEFENDER);
                    break;
                }
                case EVENT_SUMMON:
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 200, true))
                    DoCast(target, SPELL_SUMMON_SWARMING_GUARDIAN);
                    events.ScheduleEvent(EVENT_SUMMON, 35000);
                    break;
                case EVENT_BERSERK:
                    DoCast(me, SPELL_BERSERK, true);
                    DoScriptText(SAY_BERSERK, me);
                    events.CancelEvent(EVENT_BERSERK);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }
	   
        void DoAction(const int32 action)
        {
            switch (action)
            {
            case ACTION_CRAZY_CAT_LADY:
                sentryDead = true;
                break;
            case ACTION_NINE_LIVES:
                livesCount++;
                break;
            }
        }

    private:
        Creature* sentry[4];
        bool sentryDead;
        uint32 livesCount;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_auriaya_AI (creature);
    }
};


class mob_feral_defender_trigger : public CreatureScript
{
public:
    mob_feral_defender_trigger() : CreatureScript("mob_feral_defender_trigger") { }

    struct mob_feral_defender_triggerAI : public ScriptedAI
    {
        mob_feral_defender_triggerAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_PACIFIED);
        }

        void Reset()
        {
            summomTimer = 3000;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (summomTimer <= diff)
            {
                DoCast(me, SPELL_SUMMON_DEFENDER);
                summomTimer = 30000;
            }
            else summomTimer -= diff;
        }

        void JustSummoned(Creature *summon)
        {
            summon->AI()->DoAction(0);
            summon->AI()->DoZoneInCombat();
        }

    private:
        uint32 summomTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_feral_defender_triggerAI (creature);
    }
};

class mob_sanctum_sentry : public CreatureScript
{
public:
    mob_sanctum_sentry() : CreatureScript("mob_sanctum_sentry") { }

    struct mob_sanctum_sentryAI : public ScriptedAI
    {
        mob_sanctum_sentryAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
        }

        void Reset()
        {
            ripTimer = urand(4000, 8000);
            pounceTimer = urand(20000, 30000);
            checkTimer = 1000;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (ripTimer <= diff)
            {
                DoCastVictim(SPELL_RIP_FLESH);
                ripTimer = urand(14000, 18000);
            } else ripTimer -= diff;
	       
            if (pounceTimer <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 60, true))
                {
                    me->AddThreat(pTarget, 100.0f);
                    me->AI()->AttackStart(pTarget);
                    DoCast(pTarget, SPELL_FERAL_POUNCE);
                }
                pounceTimer = urand(15000, 20000);
            } 
            else pounceTimer -= diff;
	       
            // Increases the damage of all Sanctum Sentries within 10 yards by 30%
            if (checkTimer < diff)
            {
                uint8 aura = NULL;
                std::list<Creature*> Sanctum;
                GetCreatureListWithEntryInGrid(Sanctum, me, NPC_SANCTUM_SENTRY, 10.0f);
                for(std::list<Creature*>::iterator itr = Sanctum.begin(); itr != Sanctum.end(); ++itr)
                {
                    Creature *Sentry = *itr;

                    if (!Sentry)
                        continue;

                    if (Sentry->isAlive() && me != Sentry)
                        aura++;
                }

                if (aura)
                    me->SetAuraStack(SPELL_STRENGHT_PACK, me, aura);

                checkTimer = 2000;
            }
            else checkTimer -= diff;

            DoMeleeAttackIfReady();
        }
	   
        void JustDied(Unit* /*victim*/)
        {
            if (instance)
                if (Creature *pAuriaya = me->GetCreature(*me, instance->GetData64(BOSS_AURIAYA)))
                    pAuriaya->AI()->DoAction(ACTION_CRAZY_CAT_LADY);
        }

    private:
        InstanceScript* instance;
        uint32 ripTimer;
        uint32 pounceTimer;
        uint32 checkTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_sanctum_sentryAI (creature);
    }
};

class mob_feral_defender : public CreatureScript
{
public:
    mob_feral_defender() : CreatureScript("mob_feral_defender") { }

    struct mob_feral_defenderAI : public ScriptedAI
    {
        mob_feral_defenderAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
        }

        void Reset()
        {
            pounceTimer = 5000;
            rushTimer = 12000;
            lifes = 8;
            ressTimer = 999999;
	       
            me->SetAuraStack(SPELL_FERAL_ESSENCE, me, lifes);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                me->ForcedDespawn();
	           
            if (instance && instance->GetBossState(BOSS_AURIAYA) != IN_PROGRESS)
                me->ForcedDespawn();

            if (pounceTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 200, true))
                {
                    me->AddThreat(target, 100.0f);
                    me->AI()->AttackStart(target);
                    DoCast(target, SPELL_FERAL_POUNCE);
                }
                pounceTimer = urand(15000, 20000);
            }
            else pounceTimer -= diff;
	       
            if (rushTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 200, true))
                {
                    me->AddThreat(target, 100.0f);
                    me->AI()->AttackStart(target);
                    DoCast(target, SPELL_FERAL_RUSH);
                }
                rushTimer = urand(15000, 20000);
            }
            else rushTimer -= diff;
	       
            if (ressTimer <= diff)
            {
                me->SetStandState(UNIT_STAND_STATE_STAND);
                for (uint8 i = 0; i < lifes; ++i)
                DoCast(me, SPELL_FERAL_ESSENCE);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
                me->SetReactState(REACT_AGGRESSIVE);
                ressTimer = 999999;
                DoZoneInCombat();
            } else ressTimer -= diff;
	       
            DoMeleeAttackIfReady();
        }
	   
        void DamageTaken(Unit* pKiller, uint32 &damage)
        {
            if(damage >= me->GetHealth())
            {
                if (me->HasAura(SPELL_FERAL_ESSENCE))
                {
                    damage = 0;
                    DoCast(me, SPELL_SUMMON_ESSENCE);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
                    me->SetReactState(REACT_PASSIVE);
                    me->SetStandState(UNIT_STAND_STATE_DEAD);
                    me->SetHealth(me->GetMaxHealth());
                    me->RemoveAllAuras();
                    me->AttackStop();
                    lifes--;
                    pounceTimer = 35000;
                    rushTimer = 42000;
                    ressTimer = 30000;
                    if (Creature *auriaya = me->GetCreature(*me, instance->GetData64(BOSS_AURIAYA)))
                        if (auriaya->AI())
                            auriaya->AI()->DoAction(ACTION_NINE_LIVES);
                }
            }
        }

    private:
        InstanceScript* instance;
        uint32 pounceTimer;
        uint32 rushTimer;
        uint32 ressTimer;
        uint32 lifes;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_feral_defenderAI (creature);
    }
};

class mob_seeping_trigger : public CreatureScript
{
public:
    mob_seeping_trigger() : CreatureScript("mob_seeping_trigger") { }

    struct mob_seeping_triggerAI : public ScriptedAI
    {
        mob_seeping_triggerAI(Creature* creature) : ScriptedAI(creature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE | UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            instance = (InstanceScript *) creature->GetInstanceScript();
        }
	   
        void Reset()
        {
            DoCast(me, SPELL_SEEPING_ESSENCE);
        }
	   
        void UpdateAI(const uint32 diff)
        {
            if (instance && instance->GetBossState(BOSS_AURIAYA) != IN_PROGRESS)
                me->ForcedDespawn();
        }

    private:
        InstanceScript* instance;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_seeping_triggerAI (creature);
    }
};

void AddSC_boss_auriaya()
{
    new boss_auriaya();
    new mob_feral_defender_trigger();
    new mob_sanctum_sentry();
    new mob_feral_defender();
    new mob_seeping_trigger();
}
