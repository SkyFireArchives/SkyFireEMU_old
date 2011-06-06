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
#include "vault_of_archavon.h"

enum Events
{
    // Koralon
    EVENT_BURNING_BREATH    = 1,
    EVENT_BURNING_FURY      = 2,
    EVENT_FLAME_CINDER_A_1  = 3,
    EVENT_FLAME_CINDER_A_2  = 4,
    EVENT_METEOR_FISTS      = 5,

    // Flame Warder
    EVENT_FW_LAVA_BIRST     = 6,
    EVENT_FW_METEOR_FISTS_A = 7,
    EVENT_FW_METEOR_FISTS_B = 8,
};

enum Spells
{
    // Spells Koralon
    SPELL_BURNING_BREATH                        = 66665,
    SPELL_BURNING_FURY                          = 66721,
    SPELL_FLAME_CINDER_A                        = 66682,
    SPELL_FLAME_CINDER_B                        = 66681, // don't know the real relation to SPELL_FLAME_CINDER_A atm.
    SPELL_METEOR_FISTS                          = 66725,

    // Spells Flame Warder
    SPELL_FW_LAVA_BIRST                         = 66813,
    SPELL_FW_METEOR_FISTS_A                     = 66808,
    SPELL_FW_METEOR_FISTS_B                     = 67331,
};

enum Emotes
{
    EMOTE_METEOR_FISTS                          = -1590004
};

class boss_koralon : public CreatureScript
{
    public:
        boss_koralon() : CreatureScript("boss_koralon") { }

        struct boss_koralonAI : public BossAI
        {
            boss_koralonAI(Creature* creature) : BossAI(creature, DATA_KORALON)
            {
                me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
                me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            }

            void Reset()
            {
                events.Reset();
                if (instance)
                    instance->SetData(DATA_KORALON, NOT_STARTED);
            }

            void JustDied(Unit* killer)
            {
                if (instance)
                    instance->SetData(DATA_KORALON, DONE);

                _JustDied();
            }

            void EnterCombat(Unit* /*who*/)
            {
                if (instance)
                    instance->SetData(DATA_KORALON, IN_PROGRESS);

                DoCast(me, SPELL_BURNING_FURY);

                events.ScheduleEvent(EVENT_BURNING_FURY, 20000);    
                events.ScheduleEvent(EVENT_BURNING_BREATH, 15000);  
                events.ScheduleEvent(EVENT_METEOR_FISTS, 35000);  
                events.ScheduleEvent(EVENT_FLAME_CINDER_A_1, 5000);

                _EnterCombat();
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
                    switch (eventId)
                    {
                        case EVENT_BURNING_FURY:
                            DoCast(me, SPELL_BURNING_FURY);
                            events.ScheduleEvent(EVENT_BURNING_FURY, 20000);
                            break;
                        case EVENT_BURNING_BREATH:
                            DoCast(me, SPELL_BURNING_BREATH);
                            me->GetMotionMaster()->MoveRotate(10000, ROTATE_DIRECTION_RIGHT);
                            events.ScheduleEvent(EVENT_BURNING_BREATH, 45000);
                            break;
                        case EVENT_METEOR_FISTS:
                            DoScriptText(EMOTE_METEOR_FISTS, me);
                            DoCast(me, SPELL_METEOR_FISTS);
                            MeteorFistCount = 6;
                            events.ScheduleEvent(EVENT_METEOR_FISTS, 45000);
                            break;
                        case EVENT_FLAME_CINDER_A_1:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                                DoCast(target, SPELL_FLAME_CINDER_A);
                            events.ScheduleEvent(EVENT_FLAME_CINDER_A_2, 1500);
                            break;
                        case EVENT_FLAME_CINDER_A_2:
                            if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                                DoCast(target, SPELL_FLAME_CINDER_A);
                            events.ScheduleEvent(EVENT_FLAME_CINDER_A_1, 15000);
                            break;
                        default:
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }
        private:
            int8 MeteorFistCount;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_koralonAI(creature);
        }
};

/*######
##  Mob Flame Warder
######*/
class mob_flame_warder : public CreatureScript
{
    public:
        mob_flame_warder() : CreatureScript("mob_flame_warder") { }

        struct mob_flame_warderAI : public ScriptedAI
        {
            mob_flame_warderAI(Creature* creature) : ScriptedAI(creature)
            {
            }

            void Reset()
            {
                events.Reset();
            }

            void EnterCombat(Unit * /*who*/)
            {
                DoZoneInCombat();

                events.ScheduleEvent(EVENT_FW_LAVA_BIRST, 5000);
                events.ScheduleEvent(EVENT_FW_METEOR_FISTS_A, 10000);
            }

            void UpdateAI(const uint32 diff)
            {
                if (!UpdateVictim())
                    return;

                events.Update(diff);

                while (uint32 eventId = events.ExecuteEvent())
                {
                    switch (eventId)
                    {
                        case EVENT_FW_LAVA_BIRST:
                            DoCastVictim(SPELL_FW_LAVA_BIRST);
                            events.ScheduleEvent(EVENT_FW_LAVA_BIRST, 15000);
                            break;
                        case EVENT_FW_METEOR_FISTS_A:
                            DoCast(me, SPELL_FW_METEOR_FISTS_A);
                            MetorTick = 6;
                            events.ScheduleEvent(EVENT_FW_METEOR_FISTS_B, 1500);
                            break;
                        case EVENT_FW_METEOR_FISTS_B:
                            DoCast(me, SPELL_FW_METEOR_FISTS_B);
                            if(--MetorTick)
                                events.ScheduleEvent(EVENT_FW_METEOR_FISTS_B, 1500);
                            else
                                events.ScheduleEvent(EVENT_FW_METEOR_FISTS_A, 20000);
                            break;
                        default:
                            break;
                    }
                }

                DoMeleeAttackIfReady();
            }

        private:
            EventMap events;
            uint8 MetorTick;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_flame_warderAI(creature);
        }
};

class spell_koralon_meteor_fists : public SpellScriptLoader
{
    public:
        spell_koralon_meteor_fists() : SpellScriptLoader("spell_koralon_meteor_fists") { }

        class spell_koralon_meteor_fists_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_koralon_meteor_fists_SpellScript);

            uint32 totalTargets;

            void FilterTargets(std::list<Unit*>& unitList)
            {
                totalTargets = NULL;
                for (std::list<Unit*>::iterator itr = unitList.begin() ; itr != unitList.end(); ++itr)
                {
                    Unit *target = (*itr);
                    if (!target)
                        continue;

                    if (!target->IsWithinDist(GetTargetUnit(), 10.0f))
                    {
                        unitList.remove(target);
                        continue;
                    }
                    
                    totalTargets++;
                }
            }

            void CalculateSplitDamage()
            {
                if (totalTargets)
                    SetHitDamage(GetHitDamage() / totalTargets);
            }

            void Register()
            {
                OnUnitTargetSelect += SpellUnitTargetFn(spell_koralon_meteor_fists_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_TARGET_ENEMY);
                OnHit += SpellHitFn(spell_koralon_meteor_fists_SpellScript::CalculateSplitDamage);
            }
        };

        SpellScript *GetSpellScript() const
        {
            return new spell_koralon_meteor_fists_SpellScript();
        }
};

void AddSC_boss_koralon()
{
    new boss_koralon();
    new mob_flame_warder();
    new spell_koralon_meteor_fists();
}
