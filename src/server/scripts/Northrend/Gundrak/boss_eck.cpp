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

enum Spells
{
    SPELL_ECK_BERSERK                             = 55816, //Eck goes berserk, increasing his attack speed by 150% and all damage he deals by 500%.
    SPELL_ECK_BITE                                = 55813, //Eck bites down hard, inflicting 150% of his normal damage to an enemy.
    SPELL_ECK_SPIT                                = 55814, //Eck spits toxic bile at enemies in a cone in front of him, inflicting 2970 Nature damage and draining 220 mana every 1 sec for 3 sec.
    SPELL_ECK_SPRING                              = 55815, //Eck leaps at a distant target.  --> Drops aggro and charges a random player. Tank can simply taunt him back.

    //ruins dweller spells
    SPELL_REGURGITATE                             = 55643,
    SPELL_SPRING                                  = 55652
};

static Position EckSpawnPoint = { 1643.877930f, 936.278015f, 107.204948f, 0.668432f };

class boss_eck : public CreatureScript
{
public:
    boss_eck() : CreatureScript("boss_eck") { }

    struct boss_eckAI : public ScriptedAI
    {
        boss_eckAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            BerserkTimer = urand(60*IN_MILLISECONDS,90*IN_MILLISECONDS); //60-90 secs according to wowwiki
            BiteTimer = 5*IN_MILLISECONDS;
            SpitTimer = 7*IN_MILLISECONDS;
            SpringTimer = 12*IN_MILLISECONDS;

            bBerserk = false;

            if (pInstance)
                pInstance->SetData(DATA_ECK_THE_FEROCIOUS_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_ECK_THE_FEROCIOUS_EVENT, IN_PROGRESS);
        }

        void EckResetThread(Unit* pVictim)
        {
            std::list<HostileReference*>& threatlist = me->getThreatManager().getThreatList();

            for (std::list<HostileReference*>::iterator itr = threatlist.begin(); itr != threatlist.end(); ++itr)
            {
                Unit* pUnit = Unit::GetUnit((*me), (*itr)->getUnitGuid());

                if (pUnit && DoGetThreat(pUnit))
                {
                    DoModifyThreatPercent(pUnit, -100);
                    me->AddThreat(pUnit, 0.1f);
                }
            }
            
            //needed?
            if (pVictim && pVictim->isAlive()) 
            {
                AttackStart(pVictim);
                me->AddThreat(pVictim, 10.0f);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (BiteTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_ECK_BITE);
                BiteTimer = urand(8*IN_MILLISECONDS,12*IN_MILLISECONDS);
            } else BiteTimer -= diff;

            if (SpitTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_ECK_SPIT);
                SpitTimer = urand(11*IN_MILLISECONDS,20*IN_MILLISECONDS);
            } else SpitTimer -= diff;

            if (SpringTimer <= diff)
            {
                Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM,1);
                if (pTarget && pTarget->GetTypeId() == TYPEID_PLAYER)
                {
                    if (me->GetExactDist(pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ()) < 35)
                    { 
                        DoCast(pTarget, SPELL_ECK_SPRING);
                        EckResetThread(pTarget); //test

                        SpringTimer = urand(9*IN_MILLISECONDS, 15*IN_MILLISECONDS);
                    }
                }
            } else SpringTimer -= diff;
            //Berserk on timer or 20% of health

            if (!bBerserk)
            {

                if (BerserkTimer <= diff)
                {
                    DoCast(me, SPELL_ECK_BERSERK);
                    bBerserk = true;
                }
                else
                { 
                    BerserkTimer -= diff;
                    if (HealthBelowPct(20))
                    {
                        DoCast(me, SPELL_ECK_BERSERK);
                        bBerserk = true;
                    }
                }
            }
            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_ECK_THE_FEROCIOUS_EVENT, DONE);
        }

    private:
        uint32 BerserkTimer;
        uint32 BiteTimer;
        uint32 SpitTimer;
        uint32 SpringTimer;
        bool bBerserk;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_eckAI (pCreature);
    }
};


class npc_ruins_dweller : public CreatureScript
{
public:
    npc_ruins_dweller() : CreatureScript("npc_ruins_dweller") { }

    struct npc_ruins_dwellerAI : public ScriptedAI
    {
        npc_ruins_dwellerAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            RegurgitateTimer = urand(3*IN_MILLISECONDS, 6*IN_MILLISECONDS);
            SpringTimer = urand(7*IN_MILLISECONDS, 10*IN_MILLISECONDS);
        }

        void EnterCombat(Unit* /*who*/) {}

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (RegurgitateTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_REGURGITATE);
                RegurgitateTimer = urand(7*IN_MILLISECONDS, 18*IN_MILLISECONDS);
            } else RegurgitateTimer -= diff;

            if (SpringTimer <= diff)
            {
                Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1);
                if (pTarget && pTarget->GetTypeId() == TYPEID_PLAYER)
                    if ((me->GetExactDist(pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ()) > 5) && (me->GetExactDist(pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ()) < 30))
                    {
                        DoCast(pTarget, SPELL_SPRING);
                        SpringTimer = urand(12*IN_MILLISECONDS, 20*IN_MILLISECONDS);

                        DoResetThreat();
                        AttackStart(pTarget);
                        me->AddThreat(pTarget, 1.0f);
                    }
            } else SpringTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit * /*who*/)
        {
            if (pInstance)
            {
                pInstance->SetData64(DATA_RUIN_DWELLER_DIED,me->GetGUID());
                if (pInstance->GetData(DATA_ALIVE_RUIN_DWELLERS) == 0)
                    me->SummonCreature(CREATURE_ECK, EckSpawnPoint, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 300*IN_MILLISECONDS);
            } 
        } 

    private:
        uint32 SpringTimer;
        uint32 RegurgitateTimer;

        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_ruins_dwellerAI (pCreature);
    }
};

void AddSC_boss_eck()
{
    new boss_eck();
    new npc_ruins_dweller();
}