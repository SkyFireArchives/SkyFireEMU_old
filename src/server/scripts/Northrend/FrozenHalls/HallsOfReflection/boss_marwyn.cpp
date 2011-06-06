/*
 * Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
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
#include "halls_of_reflection.h"

enum Yells
{
    SAY_AGGRO                                     = -1668060,
    SAY_SLAY_1                                    = -1668061,
    SAY_SLAY_2                                    = -1668062,
    SAY_DEATH                                     = -1668063,
    SAY_CORRUPTED_FLESH_1                         = -1668064,
    SAY_CORRUPTED_FLESH_2                         = -1668065,
};

enum Spells
{
    SPELL_OBLITERATE                              = 72360,
    SPELL_WELL_OF_CORRUPTION                      = 72362,
    SPELL_CORRUPTED_FLESH                         = 72363,
    SPELL_SHARED_SUFFERING                        = 72368,
    SPELL_DUAL_WIELD                              = 42459,
};

enum Events
{
    EVENT_NONE,
    EVENT_OBLITERATE,
    EVENT_WELL_OF_CORRUPTION,
    EVENT_CORRUPTED_FLESH,
    EVENT_SHARED_SUFFERING,
};

class boss_marwyn : public CreatureScript
{
public:
    boss_marwyn() : CreatureScript("boss_marwyn") { }

    struct boss_marwynAI : public boss_horAI
    {
        boss_marwynAI(Creature *pCreature) : boss_horAI(pCreature) 
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            boss_horAI::Reset();

            if (pInstance)
                pInstance->SetData(TYPE_MARWYN, NOT_STARTED);

            DoCast(me, SPELL_DUAL_WIELD);
            me->SetAttackTime(OFF_ATTACK, 1400);
            me->SetStatFloatValue(UNIT_FIELD_MINOFFHANDDAMAGE, float(RAID_MODE(3000, 6000)));
            me->SetStatFloatValue(UNIT_FIELD_MAXOFFHANDDAMAGE, float(RAID_MODE(5000, 8000)));
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);

            if (pInstance)
                pInstance->SetData(TYPE_MARWYN, IN_PROGRESS);

            events.ScheduleEvent(EVENT_OBLITERATE, 30000);          // TODO Check timer
            events.ScheduleEvent(EVENT_WELL_OF_CORRUPTION, 13000);
            events.ScheduleEvent(EVENT_CORRUPTED_FLESH, 20000);
            events.ScheduleEvent(EVENT_SHARED_SUFFERING, 20000);    // TODO Check timer
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH, me);

            if (pInstance)
            {
                pInstance->SetData(TYPE_MARWYN, DONE);
                pInstance->SetData(TYPE_PHASE, 3);
                pInstance->SetData(DATA_START_ENCOUNTER, DONE);
            }
        }

        void KilledUnit(Unit * /*victim*/)
        {
            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2), me);
        }

        void UpdateAI(const uint32 diff)
        {
            // Return since we have no target
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            switch (events.ExecuteEvent())
            {
                case EVENT_OBLITERATE:
                    DoCast(SPELL_OBLITERATE);
                    events.ScheduleEvent(EVENT_OBLITERATE, 15000);
                    break;
                case EVENT_WELL_OF_CORRUPTION:
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM))
                        DoCast(pTarget, SPELL_WELL_OF_CORRUPTION);
                    events.ScheduleEvent(EVENT_WELL_OF_CORRUPTION, 13000);
                    break;
                case EVENT_CORRUPTED_FLESH:
                    DoScriptText(RAND(SAY_CORRUPTED_FLESH_1,SAY_CORRUPTED_FLESH_2), me);
                    DoCast(SPELL_CORRUPTED_FLESH);
                    events.ScheduleEvent(EVENT_CORRUPTED_FLESH, 20000);
                    break;
                case EVENT_SHARED_SUFFERING:
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM))
                        DoCast(pTarget, SPELL_SHARED_SUFFERING);
                    events.ScheduleEvent(EVENT_SHARED_SUFFERING, 10000);
                    break;
            }

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_marwynAI(pCreature);
    }
};


void AddSC_boss_marwyn()
{
    new boss_marwyn();
}
