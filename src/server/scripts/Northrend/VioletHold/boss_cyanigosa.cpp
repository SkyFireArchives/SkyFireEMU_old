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
#include "violet_hold.h"

enum Spells
{
    SPELL_ARCANE_VACUUM                         = 58694,
    SPELL_BLIZZARD                              = 58693,
    H_SPELL_BLIZZARD                            = 59369,
    SPELL_MANA_DESTRUCTION                      = 59374,
    SPELL_TAIL_SWEEP                            = 58690,
    H_SPELL_TAIL_SWEEP                          = 59283,
    SPELL_UNCONTROLLABLE_ENERGY                 = 58688,
    H_SPELL_UNCONTROLLABLE_ENERGY               = 59281,
    SPELL_TRANSFORM                             = 58668
};

enum Yells
{
    SAY_AGGRO                                   = -1608000,
    SAY_SLAY_1                                  = -1608001,
    SAY_SLAY_2                                  = -1608002,
    SAY_SLAY_3                                  = -1608003,
    SAY_DEATH                                   = -1608004,
    SAY_SPAWN                                   = -1608005,
    SAY_DISRUPTION                              = -1608006,
    SAY_BREATH_ATTACK                           = -1608007,
    SAY_SPECIAL_ATTACK_1                        = -1608008,
    SAY_SPECIAL_ATTACK_2                        = -1608009
};

class boss_cyanigosa : public CreatureScript
{
public:
    boss_cyanigosa() : CreatureScript("boss_cyanigosa") { }

    struct boss_cyanigosaAI : public ScriptedAI
    {
        boss_cyanigosaAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            ArcaneVacuumTimer = 10000;
            BlizzardTimer = 15000;
            ManaDestructionTimer = 30000;
            TailSweepTimer = 20000;
            UncontrollableEnergyTimer = 25000;

            if (pInstance)
                pInstance->SetData(DATA_CYANIGOSA_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);

            if (pInstance)
                pInstance->SetData(DATA_CYANIGOSA_EVENT, IN_PROGRESS);
        }

        void MoveInLineOfSight(Unit* /*who*/) {}

        void UpdateAI(const uint32 diff)
        {
            if (pInstance && pInstance->GetData(DATA_REMOVE_NPC) == 1)
            {
                me->ForcedDespawn();
                pInstance->SetData(DATA_REMOVE_NPC, 0);
            }

            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (ArcaneVacuumTimer <= diff)
            {
                DoScriptText(SAY_DISRUPTION, me);
                DoCast(SPELL_ARCANE_VACUUM);
                ArcaneVacuumTimer = 10000;
            } else ArcaneVacuumTimer -= diff;

            if (BlizzardTimer <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, SPELL_BLIZZARD);
                BlizzardTimer = 15000;
            } else BlizzardTimer -= diff;

            if (TailSweepTimer <= diff)
            {
                DoCast(SPELL_TAIL_SWEEP);
                TailSweepTimer = 20000;
            } else TailSweepTimer -= diff;

            if (UncontrollableEnergyTimer <= diff)
            {
                DoScriptText(SAY_BREATH_ATTACK, me);
                DoCastVictim(SPELL_UNCONTROLLABLE_ENERGY);
                UncontrollableEnergyTimer = 25000;
            } else UncontrollableEnergyTimer -= diff;

            if (IsHeroic())
            {
                if (ManaDestructionTimer <= diff)
                {
                    DoScriptText(RAND(SAY_SPECIAL_ATTACK_1,SAY_SPECIAL_ATTACK_2),me);
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_MANA_DESTRUCTION);
                    ManaDestructionTimer = 8000;
                } else ManaDestructionTimer -= diff;
            }

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH, me);

            if (pInstance)
                pInstance->SetData(DATA_CYANIGOSA_EVENT, DONE);
        }

        void KilledUnit(Unit * victim)
        {
            if (victim == me)
                return;
            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2,SAY_SLAY_3), me);
        }

    private:
        uint32 ArcaneVacuumTimer;
        uint32 BlizzardTimer;
        uint32 ManaDestructionTimer;
        uint32 TailSweepTimer;
        uint32 UncontrollableEnergyTimer;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_cyanigosaAI (pCreature);
    }
};


void AddSC_boss_cyanigosa()
{
    new boss_cyanigosa();
}
