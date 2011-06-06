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

/* Script Data Start 
SDName: Boss Commander Stoutbeard 
SDAuthor: Lopin
SD%Complete: 95
SDComment: Alliance commander - only for Horde. Timer adjustments needed. Whilrwind do ~half damage. Alliance Berserkers don't cast Bloodlust on friendly targets. Bad visual effect of charge.
SDCategory: Nexus, Nexus
Script Data End */ 

#include "ScriptPCH.h"
#include "nexus.h"

enum eStoutbeard
{
    //Spells
    SPELL_BATTLE_SHOUT                           = 31403,
    SPELL_CHARGE                                 = 60067,
    SPELL_FRIGHTENING_SHOUT                      = 19134,
    SPELL_WHIRLWIND                              = 38619,
    SPELL_WHIRLWIND_ADD                          = 38618,
    SPELL_FROZEN_PRISON                          = 47543, //Frozen block around them - on creature create and leave combat

    //Yells
    SAY_AGGRO                                    = -1576025,
    SAY_KILL                                     = -1576026,
    SAY_DEATH                                    = -1576027,

    //Add Spells
    //Alliance Cleric
    SPELL_POWER_WORD_SHIELD                      = 35944,
    SPELL_SHADOW_WORD_DEATH                      = 56920, //47697,
    SPELL_FLASH_HEAL                             = 17843,

    //Alliance Range
    SPELL_INCENDIARY_SHOT                        = 47777,
    SPELL_RAPID_SHOT                             = 48191,
    SPELL_SHOOT                                  = 15620,

    //Alliance Berserker
    SPELL_BLOODLUST                              = 21049,
    SPELL_FRENZY                                 = 47774,
    SPELL_WAR_STOMP                              = 38682,
};

class boss_commander_stoutbeard : public CreatureScript
{
public:
    boss_commander_stoutbeard() : CreatureScript("boss_commander_stoutbeard") { }

    struct boss_commander_stoutbeardAI : public BossAI
    {
        boss_commander_stoutbeardAI(Creature *pCreature) : BossAI(pCreature, DATA_COMMANDER)
        {
            //me->CastSpell(me, SPELL_FROZEN_PRISON, true);
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            BattleShoutTimer = urand(200000,215000);
            ChargeTimer = urand(15000,17500);
            FrighteningShoutTimer = urand(10000,12500);
            WhirlwindTimer = 10000;
            WhirlwindAddTimer = 10500;
            me->setFaction(16);

            IsWhirlwindTime = false;

            if (instance)
                instance->SetData(DATA_COMMANDER, NOT_STARTED);

            DespawnCreatures(26805, 250);

            me->SummonCreature(26805, 419.047668f, 189.318436f, -35.019547f, 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000);
            me->SummonCreature(26805, 431.265961f, 183.628845f, -35.019547f, 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000);
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_creatures;
            GetCreatureListWithEntryInGrid(m_creatures, me, entry, distance);
	 
            if (m_creatures.empty())
            return;
	 
            for(std::list<Creature*>::iterator iter = m_creatures.begin(); iter != m_creatures.end(); ++iter)
            (*iter)->ForcedDespawn();
        }

        void EnterCombat(Unit *who)
        {
            //me->CastStop();

            DoScriptText(SAY_AGGRO, me);
          
            if (instance)
                instance->SetData(DATA_COMMANDER, IN_PROGRESS);
        }

        void JustReachedHome()
        {
            //me->CastSpell(me, SPELL_FROZEN_PRISON, true);
        }

        void KilledUnit(Unit* who)
        {
            DoScriptText(SAY_KILL, me);
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH, me);

            if (instance)
                instance->SetData(DATA_COMMANDER, DONE);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if(!me->HasAura(SPELL_BATTLE_SHOUT))
                DoCast(me, SPELL_BATTLE_SHOUT);

            if (ChargeTimer <= uiDiff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, SPELL_CHARGE);
                ChargeTimer = urand(10500,12000);
            } else ChargeTimer -= uiDiff;

            if (BattleShoutTimer <= uiDiff)
            {
                DoCastAOE(SPELL_BATTLE_SHOUT);
                BattleShoutTimer = 200000;
            } else BattleShoutTimer -= uiDiff;

            if (FrighteningShoutTimer <= uiDiff)
            {
                DoCastAOE(SPELL_FRIGHTENING_SHOUT);
                FrighteningShoutTimer = urand(8000,10000);
            } else FrighteningShoutTimer -= uiDiff;

            if (WhirlwindTimer <= uiDiff && !IsWhirlwindTime)
            {
                DoCastAOE(SPELL_WHIRLWIND);
                WhirlwindAddTimer = 500;
                IsWhirlwindTime = true;
            } else WhirlwindTimer -= uiDiff;

            if (WhirlwindAddTimer <= uiDiff && IsWhirlwindTime)
            {
                DoCastAOE(SPELL_WHIRLWIND_ADD);
                WhirlwindTimer = urand(10000,12500);
                IsWhirlwindTime = false;
            } else WhirlwindAddTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }

    private:
        uint32 BattleShoutTimer;
        uint32 ChargeTimer;
        uint32 FrighteningShoutTimer;
        uint32 WhirlwindTimer;
        uint32 WhirlwindAddTimer;
        bool IsWhirlwindTime;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_commander_stoutbeardAI (pCreature);
    }
};

class mob_alliance_cleric : public CreatureScript
{
public:
    mob_alliance_cleric() : CreatureScript("mob_alliance_cleric") {}

    struct mob_alliance_clericAI : public ScriptedAI
    {
        mob_alliance_clericAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            me->CastSpell(me, SPELL_FROZEN_PRISON, true);
        }

        void Reset()
        {
            FlashHealTimer = urand(9000,10500);
            ShadowWordDeathTimer = urand(5500,8500);
            PowerWordShieldTimer = urand(2000,4000);
            me->setFaction(16);
        }

        void EnterCombat(Unit * who)
        {
            me->CastStop();
        }

        void JustReachedHome()
        {
           me->CastSpell(me, SPELL_FROZEN_PRISON, true);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if(me->HasAura(SPELL_FROZEN_PRISON))
               me->RemoveAurasDueToSpell(SPELL_FROZEN_PRISON);
            
            if (Unit *pTarget = DoSelectLowestHpFriendly(40.0f))
            {
                if (FlashHealTimer <= uiDiff)
                {
                    DoCast(pTarget, SPELL_FLASH_HEAL);
                    FlashHealTimer = urand(7000,8000);
                } else FlashHealTimer -= uiDiff;

                if (PowerWordShieldTimer <= uiDiff)
                {
                    DoCast(pTarget, SPELL_POWER_WORD_SHIELD);
                    PowerWordShieldTimer = urand(9000,10000);
                } else PowerWordShieldTimer -= uiDiff;
            }

            if (ShadowWordDeathTimer <= uiDiff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1))
                    DoCast(pTarget, SPELL_SHADOW_WORD_DEATH);
                ShadowWordDeathTimer = urand(4500,5500);
            } else ShadowWordDeathTimer -= uiDiff;     
            
            DoMeleeAttackIfReady();
        }

    private:
        uint32 FlashHealTimer;
        uint32 ShadowWordDeathTimer;
        uint32 PowerWordShieldTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_alliance_clericAI (pCreature);
    }
};

class mob_alliance_ranger : public CreatureScript
{
public:
    mob_alliance_ranger() : CreatureScript("mob_alliance_ranger") {}

    struct mob_alliance_rangerAI : public ScriptedAI
    {
        mob_alliance_rangerAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            me->CastSpell(me, SPELL_FROZEN_PRISON, true);
        }

        void Reset()
        {
            RapidShotTimer = urand(12500,14000);
            IncendiaryShotTimer = urand(6500,8000);
            ShootTimer = urand(2500,3000);
            me->setFaction(16);
        }

        void EnterCombat(Unit * who)
        {
            me->CastStop();
        }

        void JustReachedHome()
        {
           me->CastSpell(me, SPELL_FROZEN_PRISON, true);
        }

        Unit* FindTarget()
        {
            i = 0;
            Unit *pTarget;

            while (i < 5)
            {
                pTarget = SelectTarget(SELECT_TARGET_TOPAGGRO, i);
                i++;

                if (!me->IsWithinDistInMap(pTarget, 5.0f))
                    return pTarget;
            }
            return 0;
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if(me->HasAura(SPELL_FROZEN_PRISON))
               me->RemoveAurasDueToSpell(SPELL_FROZEN_PRISON);

            if (IncendiaryShotTimer <= uiDiff)
            {
                if (Unit *pTarget = FindTarget())
                    DoCast(pTarget, SPELL_INCENDIARY_SHOT);
                IncendiaryShotTimer = urand(6500,7500);
            } else IncendiaryShotTimer -= uiDiff;

            if (ShootTimer <= uiDiff)
            {
                if (Unit *pTarget = FindTarget())
                    DoCast(pTarget, SPELL_SHOOT);
                ShootTimer = urand(2500,3000);
            } else ShootTimer -= uiDiff;
            
            if (RapidShotTimer <= uiDiff)
            {
                DoCastAOE(SPELL_RAPID_SHOT);
                RapidShotTimer = urand(12500,14000);
            } else RapidShotTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }

    private:
        uint32 RapidShotTimer;
        uint32 IncendiaryShotTimer;
        uint32 ShootTimer;
        
        uint8 i;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_alliance_rangerAI (pCreature);
    }
};

class mob_alliance_berserker : public CreatureScript
{
public:
    mob_alliance_berserker() : CreatureScript("mob_alliance_berserker") {}

    struct mob_alliance_berserkerAI : public ScriptedAI
    {
        mob_alliance_berserkerAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            me->CastSpell(me, SPELL_FROZEN_PRISON, true);
        }

        void Reset()
        {
            BloodlustTimer = urand(5000,7500);
            FrenzyTimer = urand(2500,4000);
            WarStompTimer = urand(6000,8000);
            me->setFaction(16);
        }

        void JustReachedHome()
        {
           me->CastSpell(me, SPELL_FROZEN_PRISON, true);
        }

        void EnterCombat(Unit * who)
        {
            me->CastStop();
        }
        
        Creature* SelectRandomFriendlyMissingBuff(uint32 spell)
        {
            std::list<Creature *> lst = DoFindFriendlyMissingBuff(40.0f, spell);
            std::list<Creature *>::const_iterator itr = lst.begin();
            if (lst.empty())
                return NULL;
            advance(itr, rand()%lst.size());
            return (*itr);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (BloodlustTimer <= uiDiff)
            {
                if (Creature *pTarget = SelectRandomFriendlyMissingBuff(SPELL_BLOODLUST)) //He should casts this only on allies, not on self...
                    DoCast(pTarget, SPELL_BLOODLUST);
                BloodlustTimer = urand(12000,15000);
            } else BloodlustTimer -= uiDiff;

            if (FrenzyTimer <= uiDiff)
            {
                DoCast(me, SPELL_FRENZY);
                FrenzyTimer = 200000;
            } else FrenzyTimer -= uiDiff;

            if (WarStompTimer <= uiDiff)
            {
                DoCast(me->getVictim(), SPELL_WAR_STOMP);
                WarStompTimer = urand(7000,8500);
            } else WarStompTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }

    private:
        uint32 BloodlustTimer;
        uint32 FrenzyTimer;
        uint32 WarStompTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_alliance_berserkerAI (pCreature);
    }
};
  
void AddSC_boss_commander_stoutbeard() 
{ 
    new boss_commander_stoutbeard();
    new mob_alliance_cleric();
    new mob_alliance_ranger();
    new mob_alliance_berserker();
} 