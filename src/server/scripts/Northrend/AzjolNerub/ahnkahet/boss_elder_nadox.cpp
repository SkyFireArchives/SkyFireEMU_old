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
#include "ahnkahet.h"

bool DeadAhnkaharGuardian; // needed for achievement: Respect Your Elders(2038)

enum Achievements
{
    ACHIEV_RESPECT_YOUR_ELDERS                    = 2038
};

//not in db
enum Yells
{
    SAY_AGGRO                                     = -1619014,
    SAY_SLAY_1                                    = -1619015,
    SAY_SLAY_2                                    = -1619016,
    SAY_SLAY_3                                    = -1619017,
    SAY_DEATH                                     = -1619018,
    SAY_EGG_SAC_1                                 = -1619019,
    SAY_EGG_SAC_2                                 = -1619020,
    EMOTE_HATCHES                                 = -1574024,
};

enum Spells
{
    SPELL_BROOD_PLAGUE                            = 56130,
    H_SPELL_BROOD_PLAGUE                          = 59467,
    H_SPELL_BROOD_RAGE                            = 59465,
    SPELL_ENRAGE                                  = 26662, // Enraged if too far away from home
    SPELL_SUMMON_SWARMERS                         = 56119, // 2x 30178  -- 2x every 10secs
    SPELL_SUMMON_SWARM_GUARD                      = 56120, // 1x 30176  -- every 25%
};

enum Creatures
{
    MOB_AHNKAHAR_SWARMER                          = 30178,
    MOB_AHNKAHAR_GUARDIAN_ENTRY                   = 30176
};

class boss_elder_nadox : public CreatureScript
{
public:
    boss_elder_nadox() : CreatureScript("boss_elder_nadox") { }

    struct boss_elder_nadoxAI : public ScriptedAI
    {
        boss_elder_nadoxAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            PlagueTimer = 13*IN_MILLISECONDS;
            RageTimer = 10*IN_MILLISECONDS;

            SwarmerSpawnTimer = 10*IN_MILLISECONDS;
            EnrageTimer = 5*IN_MILLISECONDS;

            HealthAmountModifier = 1;

            DeadAhnkaharGuardian = false;

            if (pInstance)
                pInstance->SetData(DATA_ELDER_NADOX_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit * /*who*/)
        {
            DoScriptText(SAY_DEATH,me);

            if (pInstance)
                pInstance->SetData(DATA_ELDER_NADOX_EVENT, IN_PROGRESS);
        }

        void KilledUnit(Unit * /*victim*/)
        {
            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2,SAY_SLAY_3), me);
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_SLAY_3,me); //SAY_SLAY_3 on death?

            if (pInstance)
            {
                pInstance->SetData(DATA_ELDER_NADOX_EVENT, DONE);
                if (IsHeroic() && !DeadAhnkaharGuardian)
                    pInstance->DoCompleteAchievement(ACHIEV_RESPECT_YOUR_ELDERS);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (PlagueTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM))
                    DoCast(pTarget, DUNGEON_MODE(SPELL_BROOD_PLAGUE, H_SPELL_BROOD_PLAGUE));

                PlagueTimer = 15*IN_MILLISECONDS;
            } else PlagueTimer -= diff;

            if (IsHeroic())
            {
                if (RageTimer <= diff)
                {
                    DoCast(H_SPELL_BROOD_RAGE);
                    RageTimer = 5*IN_MILLISECONDS;
                } else RageTimer -= diff;
            }

            if (SwarmerSpawnTimer <= diff)
            {
                DoCast(me, SPELL_SUMMON_SWARMERS);
                if (urand(1,3) == 3) // 33% chance of dialog
                    DoScriptText(RAND(SAY_EGG_SAC_1,SAY_EGG_SAC_2), me);

                SwarmerSpawnTimer = 10*IN_MILLISECONDS;
            } else SwarmerSpawnTimer -= diff;

            if (me->HealthBelowPct(100 - HealthAmountModifier * 25))
            {
                DoScriptText(EMOTE_HATCHES, me);
                DoCast(me, SPELL_SUMMON_SWARM_GUARD);
                ++HealthAmountModifier;
            }

            if (EnrageTimer <= diff)
            {
                if (me->HasAura(SPELL_ENRAGE,0))
                    return;

                if (me->GetPositionZ() < 24.0f)
                    if (!me->IsNonMeleeSpellCasted(false))
                        DoCast(me, SPELL_ENRAGE, true);

                EnrageTimer = 5*IN_MILLISECONDS;
            } else EnrageTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        uint32 PlagueTimer;
        uint32 RageTimer;
        uint32 SwarmerSpawnTimer;
        uint32 EnrageTimer;
        uint32 HealthAmountModifier;
        InstanceScript *pInstance;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new boss_elder_nadoxAI(creature);
    }
};

enum AddSpells
{
    SPELL_SPRINT                                  = 56354,
    SPELL_GUARDIAN_AURA                           = 56151,
    SPELL_GUARDIAN_AURA_TRIGGERED                 = 56153
};

class mob_ahnkahar_nerubian : public CreatureScript
{
public:
    mob_ahnkahar_nerubian() : CreatureScript("mob_ahnkahar_nerubian") { }

    struct mob_ahnkahar_nerubianAI : public ScriptedAI
    {
        mob_ahnkahar_nerubianAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            if (me->GetEntry() == MOB_AHNKAHAR_GUARDIAN_ENTRY) //magic numbers are bad!
                DoCast(me, SPELL_GUARDIAN_AURA, true);

            SprintTimer = 5*IN_MILLISECONDS;
        }

        void JustDied(Unit * /*killer*/)
        {
            if (me->GetEntry() == MOB_AHNKAHAR_GUARDIAN_ENTRY)
                DeadAhnkaharGuardian = true;
        }

        void EnterCombat(Unit * /*who*/){}

        void SpellHit(Unit * /*caster*/, const SpellEntry *spell)
        {
            if (spell->Id == SPELL_GUARDIAN_AURA_TRIGGERED && me->GetEntry() == MOB_AHNKAHAR_GUARDIAN_ENTRY)
                me->RemoveAurasDueToSpell(SPELL_GUARDIAN_AURA_TRIGGERED);
        }

        void UpdateAI(const uint32 diff)
        {
            if (pInstance)
                if (pInstance->GetData(DATA_ELDER_NADOX_EVENT) != IN_PROGRESS)
                    me->DisappearAndDie();

            if (!UpdateVictim())
                return;

            if (SprintTimer <= diff)
            {
                DoCast(me, SPELL_SPRINT);
                SprintTimer = 20*IN_MILLISECONDS;
            } else SprintTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript *pInstance;
        uint32 SprintTimer;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new mob_ahnkahar_nerubianAI(creature);
    }
};

//HACK: No, AI. Replace with proper db content?
class mob_nadox_eggs : public CreatureScript
{
public:
    mob_nadox_eggs() : CreatureScript("mob_nadox_eggs") { }

    struct mob_nadox_eggsAI : public Scripted_NoMovementAI
    {
        mob_nadox_eggsAI(Creature* c) : Scripted_NoMovementAI(c)
        {
            c->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_NON_ATTACKABLE);
            c->UpdateAllStats();
        }
        void Reset() {}
        void EnterCombat(Unit* /*who*/) {}
        void AttackStart(Unit* /*victim*/) {}
        void MoveInLineOfSight(Unit* /*who*/) {}
        void UpdateAI(const uint32 /*diff*/) {}
    };

    CreatureAI *GetAI(Creature* creature) const
    {
        return new mob_nadox_eggsAI(creature);
    }
};

void AddSC_boss_elder_nadox()
{
    new boss_elder_nadox;
    new mob_ahnkahar_nerubian;
    new mob_nadox_eggs;
}