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

/* Script Data Start
SDName: Boss sjonnir
SDAuthor: LordVanMartin
SD%Complete:
SDComment:
SDCategory:
Script Data End */

#include "ScriptPCH.h"
#include "halls_of_stone.h"

enum Spells
{
    SPELL_LIGHTING_RING                                    = 51849, //Periodic Trigger (interval 2s) spell = 50841
    H_SPELL_LIGHTING_RING                                  = 59861, //Periodic Trigger (interval 2s) spell = 59849
    SPELL_LIGHTING_RING_1                                  = 50840, //Periodic Trigger (interval 2s) spell = 50841
    H_SPELL_LIGHTING_RING_1                                = 59848, //Periodic Trigger (interval 2s) spell = 59849
    SPELL_STATIC_CHARGE                                    = 50834, //Periodic Trigger 2s interval, spell =50835
    H_SPELL_STATIC_CHARGE                                  = 59846, //Periodic Trigger 2s interval, spell =50847
    SPELL_CHAIN_LIGHTING                                   = 50830,
    H_SPELL_CHAIN_LIGHTING                                 = 59844,
    SPELL_LIGHTING_SHIELD                                  = 50831,
    H_SPELL_LIGHTING_SHIELD                                = 59845,
    SPELL_FRENZY                                           = 28747
};

enum Yells
{
    SAY_AGGRO                                              = -1599011,
    SAY_SLAY_1                                             = -1599012,
    SAY_SLAY_2                                             = -1599013,
    SAY_SLAY_3                                             = -1599014,
    SAY_DEATH                                              = -1599015
};

enum SjonnirCreatures
{
    CREATURE_FORGED_IRON_TROGG                             = 27979,
    CREATURE_MALFORMED_OOZE                                = 27981,
    CREATURE_FORGED_IRON_DWARF                             = 27982,
    CREATURE_IRON_SLUDGE                                   = 28165
};

enum Misc
{
    ACHIEV_ABUSE_THE_OOZE                                  = 2155
};

struct Locations
{
    float x, y, z;
};

static Locations PipeLocations[] =
{
  {1295.44f, 734.07f, 200.3f}, //left
  {1297.7f,  595.6f,  199.9f} //right
};

static Locations CenterPoint = {1295.21f, 667.157f, 189.691f};

class boss_sjonnir : public CreatureScript
{
public:
    boss_sjonnir() : CreatureScript("boss_sjonnir") { }

    struct boss_sjonnirAI : public ScriptedAI
    {
        boss_sjonnirAI(Creature *c) : ScriptedAI(c), lSummons(me)
        {
            pInstance = c->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            bFrenzy = false;

            EncounterTimer = 0;
            ChainLightningTimer = 3000 + rand()%5000;
            LightningShieldTimer = 20000 + rand()%5000;
            StaticChargeTimer = 20000 + rand()%5000;
            LightningRingTimer = 30000 + rand()%5000;
            SummonTimer = 5000;
            FrenzyTimer = 300000; //5 minutes
            KilledIronSludges = 0;

            lSummons.DespawnAll();

            if (pInstance)
                pInstance->SetData(DATA_SJONNIR_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);

            EncounterTimer = 0;

            if (pInstance)
            {
                if (GameObject *pDoor = pInstance->instance->GetGameObject(pInstance->GetData64(DATA_SJONNIR_DOOR)))
                    if (pDoor->GetGoState() == GO_STATE_READY)
                    {
                        EnterEvadeMode();
                        return;
                    }
                pInstance->SetData(DATA_SJONNIR_EVENT, IN_PROGRESS);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (ChainLightningTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, SPELL_CHAIN_LIGHTING);
                ChainLightningTimer = 10000 + rand()%5000;
            } else ChainLightningTimer -= diff;

            if (LightningShieldTimer <= diff)
            {
                DoCast(me, SPELL_LIGHTING_SHIELD);
                LightningShieldTimer -= diff;
            }

            if (StaticChargeTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_STATIC_CHARGE);
                StaticChargeTimer = 20000 + rand()%5000;
            } StaticChargeTimer -= diff;

            if (LightningRingTimer <= diff)
            {
                if (me->IsNonMeleeSpellCasted(false))
                    me->InterruptNonMeleeSpells(false);
                DoCast(me, SPELL_LIGHTING_RING);
                LightningRingTimer = 30000 + rand()%5000;
            } else LightningRingTimer -= diff;

            if (SummonTimer <= diff)
            {
                uint32 uiSummonPipe = rand()%2;
                me->SummonCreature(HealthBelowPct(50) ? CREATURE_MALFORMED_OOZE : RAND(CREATURE_FORGED_IRON_DWARF,CREATURE_FORGED_IRON_TROGG), PipeLocations[uiSummonPipe].x, PipeLocations[uiSummonPipe].y, PipeLocations[uiSummonPipe].z, 0.0f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 30000);
                SummonTimer = 20000;
            } else SummonTimer -= diff;

            if (!bFrenzy)
            {
              if (FrenzyTimer <= diff)
              {
                  DoCast(me, SPELL_FRENZY);
                  bFrenzy = true;
              }
              else FrenzyTimer -= diff;
            }

            EncounterTimer +=diff;

            DoMeleeAttackIfReady();
        }

        void JustSummoned(Creature* summon)
        {        
        if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
            summon->AI()->AttackStart(pTarget);
        else
            summon->GetMotionMaster()->MovePoint(0, CenterPoint.x, CenterPoint.y, CenterPoint.z);
            lSummons.Summon(summon);
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH, me);
            lSummons.DespawnAll();

            if (pInstance)
            {
                pInstance->SetData(DATA_SJONNIR_EVENT, DONE);
                if (IsHeroic() && KilledIronSludges > 4)
                    pInstance->DoCompleteAchievement(ACHIEV_ABUSE_THE_OOZE);
            }
        }
        void KilledUnit(Unit * victim)
        {
            if (victim == me)
                return;
            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2,SAY_SLAY_3), me);
        }

        void KilledIronSludge()
        {
            ++KilledIronSludges;
        }

    private:
        bool bFrenzy;
        uint32 ChainLightningTimer;
        uint32 LightningShieldTimer;
        uint32 StaticChargeTimer;
        uint32 LightningRingTimer;
        uint32 SummonTimer;
        uint32 FrenzyTimer;
        uint32 EncounterTimer;
        uint32 KilledIronSludges;

        SummonList lSummons;

        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_sjonnirAI (pCreature);
    }
};


class mob_malformed_ooze : public CreatureScript
{
public:
    mob_malformed_ooze() : CreatureScript("mob_malformed_ooze") { }

    struct mob_malformed_oozeAI : public ScriptedAI
    {
        mob_malformed_oozeAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        {
            MergeTimer = 10000;
        }

        void UpdateAI(const uint32 diff)
        {
            if (MergeTimer <= diff)
            {
                if (Creature* pTemp = me->FindNearestCreature(CREATURE_MALFORMED_OOZE, 3.0f, true))
                {
                    DoSpawnCreature(CREATURE_IRON_SLUDGE, 0, 0, 0, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 20000);
                    pTemp->DisappearAndDie();
                    me->DisappearAndDie();
                }
                MergeTimer = 3000;
            } else MergeTimer -= diff;

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }

    private:
        uint32 MergeTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_malformed_oozeAI(pCreature);
    }
};


class mob_iron_sludge : public CreatureScript
{
public:
    mob_iron_sludge() : CreatureScript("mob_iron_sludge") { }

    struct mob_iron_sludgeAI : public ScriptedAI
    {
        mob_iron_sludgeAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript* pInstance;

        void JustDied(Unit* /*pKiller*/)
        {
            if (pInstance)
                if (Creature* pSjonnir = Unit::GetCreature(*me, pInstance->GetData64(DATA_SJONNIR)))
                    CAST_AI(boss_sjonnir::boss_sjonnirAI, pSjonnir->AI())->KilledIronSludge();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_iron_sludgeAI(pCreature);
    }
};


void AddSC_boss_sjonnir()
{
    new boss_sjonnir();
    new mob_malformed_ooze();
    new mob_iron_sludge();
}
