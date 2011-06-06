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
#include "gundrak.h"

enum eSpells
{
    // troll form
    SPELL_DETERMINED_STAB                         = 55104,
    SPELL_GROUND_TREMOR                           = 55142,
    SPELL_NUMBING_SHOUT                           = 55106,
    SPELL_MOJO_FRENZY                             = 55163,
    SPELL_MOJO_FRENZY_HASTE                       = 55096,
    SPELL_TRANSFORMATION                          = 55098, //Periodic, The caster transforms into a powerful mammoth, increasing Physical damage done by 25% and granting immunity to Stun effects.
    // mammoth
    SPELL_DETERMINED_GORE                         = 55102,
    H_SPELL_DETERMINED_GORE                       = 59444,
    SPELL_QUAKE                                   = 55101,
    SPELL_NUMBING_ROAR                            = 55100,
    SPELL_DUAL_WIELD                              = 42459,
};

enum eAchievements
{
    ACHIEV_LESS_RABI                              = 2040
};

enum eSays
{
    SAY_AGGRO                                     = -1604010,
    //SAY_SLAY_1                                  = -1604011, // not in db
    SAY_SLAY_2                                    = -1604012,
    SAY_SLAY_3                                    = -1604013,
    SAY_DEATH                                     = -1604014,
    SAY_TRANSFORM                                 = -1604015,
    SAY_QUAKE                                     = -1604016,
    EMOTE_TRANSFORM                               = -1604017
};

class boss_moorabi : public CreatureScript
{
public:
    boss_moorabi() : CreatureScript("boss_moorabi") { }

    struct boss_moorabiAI : public ScriptedAI
    {
        boss_moorabiAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            // make 55098 interruptable
            SpellEntry *TempSpell;
            TempSpell = GET_SPELL(SPELL_TRANSFORMATION);
            if (TempSpell)
                TempSpell->InterruptFlags = 13;
        }

        void Reset()
        {
            GroundTremorTimer = 18*IN_MILLISECONDS;
            NumblingShoutTimer = 10*IN_MILLISECONDS;
            DeterminedStabTimer = 20*IN_MILLISECONDS;
            TransformationTimer = 12*IN_MILLISECONDS;

            bPhase = false;

            if (pInstance)
                pInstance->SetData(DATA_MOORABI_EVENT, NOT_STARTED);

            DoCast(me, SPELL_DUAL_WIELD);
            me->SetAttackTime(OFF_ATTACK, 1400);
            me->SetStatFloatValue(UNIT_FIELD_MINOFFHANDDAMAGE, float(RAID_MODE(3000, 6000)));
            me->SetStatFloatValue(UNIT_FIELD_MAXOFFHANDDAMAGE, float(RAID_MODE(5000, 8000)));
        }

        void EnterCombat(Unit* /*pWho*/)
        {
            DoScriptText(SAY_AGGRO, me);
            DoCast(me, SPELL_MOJO_FRENZY, true);

            if (pInstance)
                pInstance->SetData(DATA_MOORABI_EVENT, IN_PROGRESS);
        }

        void AdjustCastSpeed()
        {
            // bad workaround for mojo frenzy aura
            SpellEntry *TempSpell;
            TempSpell = GET_SPELL(SPELL_TRANSFORMATION);
            uint32 value = 15;  //spell 55098 default
        
            if (HealthBelowPct(80)) value = 28;
            if (HealthBelowPct(65)) value = 21;
            if (HealthBelowPct(50)) value = 5;
            if (HealthBelowPct(40)) value = 130;
            if (HealthBelowPct(30)) value = 206;
            if (HealthBelowPct(20)) value = 110;
            if (HealthBelowPct(15)) value = 3;
            if (HealthBelowPct(10)) value = 2;

            if (TempSpell && value)
                TempSpell->CastingTimeIndex = value;
        }

        void UpdateAI(const uint32 uiDiff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                 return;
        
            if (!bPhase && me->HasAura(SPELL_TRANSFORMATION))
            {
                bPhase = true;
                me->RemoveAura(SPELL_MOJO_FRENZY);
            }

            if (GroundTremorTimer <= uiDiff)
            {
                DoScriptText(SAY_QUAKE, me);
                if (bPhase)
                    DoCast(me->getVictim(), SPELL_QUAKE);
                else
                    DoCast(me->getVictim(), SPELL_GROUND_TREMOR);
                GroundTremorTimer = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else GroundTremorTimer -= uiDiff;

            if (NumblingShoutTimer <= uiDiff)
            {
                if (bPhase)
                    DoCast(me->getVictim(), SPELL_NUMBING_ROAR, true);
                else
                    DoCast(me->getVictim(), SPELL_NUMBING_SHOUT, true);
                NumblingShoutTimer = 10*IN_MILLISECONDS;
            } else NumblingShoutTimer -=uiDiff;

            if (DeterminedStabTimer <= uiDiff)
            {
                if (bPhase)
                    DoCast(me->getVictim(), DUNGEON_MODE(SPELL_DETERMINED_GORE, H_SPELL_DETERMINED_GORE), true);
                else
                    DoCast(me->getVictim(), SPELL_DETERMINED_STAB, true);
                DeterminedStabTimer = 7*IN_MILLISECONDS;
            } else DeterminedStabTimer -=uiDiff;

            if (!bPhase && TransformationTimer <= uiDiff)
            {
                DoScriptText(EMOTE_TRANSFORM, me);
                DoScriptText(SAY_TRANSFORM, me);
                AdjustCastSpeed(); //FIXME
                DoCast(me, SPELL_TRANSFORMATION, false);
                TransformationTimer = 10*IN_MILLISECONDS;
            } else TransformationTimer -= uiDiff;

            DoMeleeAttackIfReady();
         }

         void JustDied(Unit* /*pKiller*/)
         {
            DoScriptText(SAY_DEATH, me);

            if (pInstance)
            {
                pInstance->SetData(DATA_MOORABI_EVENT, DONE);
            
                if (IsHeroic() && !bPhase)
                    pInstance->DoCompleteAchievement(ACHIEV_LESS_RABI);
            }
        }

        void KilledUnit(Unit* pVictim)
        {
            if (pVictim == me)
                return;

            DoScriptText(RAND(SAY_SLAY_2,SAY_SLAY_3), me);
        }

    private:
        InstanceScript* pInstance;
        bool bPhase;
        uint32 NumblingShoutTimer;
        uint32 GroundTremorTimer;
        uint32 DeterminedStabTimer;
        uint32 TransformationTimer;
    };

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new boss_moorabiAI(pCreature);
    }
};

void AddSC_boss_moorabi()
{
    new boss_moorabi();
}