/* Copyright (C) 2006 - 2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: trial_of_the_crusader
SD%Complete: ??%
SDComment: based on /dev/rsa
SDCategory: Crusader Coliseum
EndScriptData */

#include "ScriptPCH.h"
#include "trial_of_the_crusader.h"

enum Yells
{
    SAY_INTRO               = -1649030,
    SAY_AGGRO               = -1649031,
    SAY_DEATH               = -1649032,
    EMOTE_INCINERATE        = -1649033,
    SAY_INCINERATE          = -1649034,
    EMOTE_LEGION_FLAME      = -1649035,
    EMOTE_NETHER_PORTAL     = -1649036,
    SAY_NETHER_PORTAL       = -1649037,
    EMOTE_INFERNAL_ERUPTION = -1649038,
    SAY_INFERNAL_ERUPTION   = -1649039,
    SAY_KILL_1              = -1649066,
    SAY_KILL_2              = -1649067
};

enum Summons
{
    NPC_LEGION_FLAME     = 34784,
    NPC_INFERNAL_VOLCANO = 34813,
    NPC_FEL_INFERNAL     = 34815,
    NPC_NETHER_PORTAL    = 34825,
    NPC_MISTRESS_OF_PAIN = 34826,
    NPC_VULCANO          = 34813,
};

enum BossSpells
{
    SPELL_NETHER_POWER          = 67108,
    SPELL_INFERNAL              = 66258,
    SPELL_INFERNAL_ERUPTION     = 66255,
    SPELL_FEL_FIREBALL          = 66532,
    SPELL_FEL_LIGHTING          = 66528,
    SPELL_INCINERATE_FLESH      = 66237,
    SPELL_TOUCH_OF_JARAXXUS     = 66209,
    SPELL_BURNING_INFERNO       = 66242,
    SPELL_LEGION_FLAME          = 66197,
    SPELL_LEGION_FLAME_EFFECT   = 66201,
    SPELL_SHIVAN_SLASH          = 67098,
    SPELL_SPINNING_STRIKE_1     = 66283,
    SPELL_SPINNING_STRIKE_2     = 66285,
    SPELL_MISTRESS_KISS         = 67077,
    SPELL_FEL_INFERNO           = 67047,
    SPELL_FEL_STREAK            = 66494,
    SPELL_BERSERK               = 64238,
	SPELL_SUMMON_INFERNAL_N		= 66252,
	SPELL_SUMMON_INFERNAL_H		= 67069,
    SPELL_NETHER_PORTAL         = 66263,
    SPELL_SUMMON_NETHER_PORTAL  = 67900,
    SPELL_SUMMON_VULCANO        = 67903,
};

class boss_jaraxxus : public CreatureScript
{
public:
    boss_jaraxxus() : CreatureScript("boss_jaraxxus") { }

    struct boss_jaraxxusAI : public ScriptedAI
    {
        boss_jaraxxusAI(Creature* creature) : ScriptedAI(creature), Summons(me)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            instance = (InstanceScript*)creature->GetInstanceScript();
        }

        void Reset()
        {
            if (instance)
                instance->SetData(TYPE_JARAXXUS, NOT_STARTED);

            FelFireballTimer = 10*IN_MILLISECONDS;
            FelLightningTimer = urand(5*IN_MILLISECONDS,6*IN_MILLISECONDS);
            IncinerateFleshTimer = urand(20*IN_MILLISECONDS,25*IN_MILLISECONDS);
            NetherPowerTimer = 15*IN_MILLISECONDS;
            LegionFlameTimer = 10*IN_MILLISECONDS;
            TouchOfJaraxxusTimer = urand(10*IN_MILLISECONDS,15*IN_MILLISECONDS);
            SummonNetherPortalTimer = 1*MINUTE*IN_MILLISECONDS;
            SummonInfernalEruptionTimer = 2*MINUTE*IN_MILLISECONDS;
            Despawncreatures();
        }

        void JustReachedHome()
        {
            if (instance)
            {
                instance->SetData(TYPE_JARAXXUS, FAIL);
                instance->SetData(TYPE_JARAXXUS, NOT_STARTED);
            }
            DoCast(me,SPELL_JARAXXUS_CHAINS);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
        }

        void KilledUnit(Unit *pWho)
        {
            if (pWho->GetTypeId() == TYPEID_PLAYER)
            {
                if (instance)
                    instance->SetData(DATA_TRIBUTE_TO_IMMORTALITY_ELEGIBLE, 0);

                DoScriptText(RAND(SAY_KILL_1, SAY_KILL_2), me);
            }
        }

        void JustDied(Unit* /*pKiller*/)
        {
            Despawncreatures();
            DoScriptText(SAY_DEATH,me);
            if (instance)
                instance->SetData(TYPE_JARAXXUS, DONE);
        }

        void EnterCombat(Unit* /*pWho*/)
        {
            me->SetInCombatWithZone();
            me->SetSpeed(MOVE_RUN, 1.5F);

            if (instance)
                instance->SetData(TYPE_JARAXXUS, IN_PROGRESS);

            DoScriptText(SAY_AGGRO,me);
        }

        void Despawncreatures()
        {
            DespawnCreatures(NPC_LEGION_FLAME, 250);
            DespawnCreatures(NPC_INFERNAL_VOLCANO, 250);
            DespawnCreatures(NPC_FEL_INFERNAL, 250);
            DespawnCreatures(NPC_NETHER_PORTAL, 250);
            DespawnCreatures(NPC_MISTRESS_OF_PAIN, 250);
            DespawnCreatures(NPC_NETHER_PORTAL, 250);
            DespawnCreatures(NPC_VULCANO, 250);
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

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

			if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if (SummonInfernalEruptionTimer <= diff)
            {
                DoScriptText(EMOTE_INFERNAL_ERUPTION,me);
                DoScriptText(SAY_INFERNAL_ERUPTION,me);
                DoCast(me, SPELL_SUMMON_NETHER_PORTAL);
                SummonInfernalEruptionTimer = 2*MINUTE*IN_MILLISECONDS;
            } else SummonInfernalEruptionTimer -= diff;

            if (SummonNetherPortalTimer <= diff)
            {
                DoScriptText(EMOTE_NETHER_PORTAL,me);
                DoScriptText(SAY_NETHER_PORTAL,me);
                DoCast(me, SPELL_SUMMON_NETHER_PORTAL);
                SummonNetherPortalTimer = 2*MINUTE*IN_MILLISECONDS;
            } else SummonNetherPortalTimer -= diff;

            if (FelFireballTimer <= diff)
            {
                DoCastVictim(SPELL_FEL_FIREBALL);
                FelFireballTimer = urand(8*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else FelFireballTimer -= diff;

            if (FelLightningTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM))
                    DoCast(target,SPELL_FEL_LIGHTING);
                FelLightningTimer = urand(12*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else FelLightningTimer -= diff;

            if (IncinerateFleshTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 1, 0, true))
                {
                    DoScriptText(EMOTE_INCINERATE,me,target);
                    DoScriptText(SAY_INCINERATE,me);
                    DoCast(target,SPELL_INCINERATE_FLESH);
                }
                IncinerateFleshTimer = urand(25*IN_MILLISECONDS, 26*IN_MILLISECONDS);
            } else IncinerateFleshTimer -= diff;

            if (NetherPowerTimer <= diff)
            {
                me->SetAuraStack(SPELL_NETHER_POWER, me, RAID_MODE(5, 10, 5, 10));
                NetherPowerTimer = 40*IN_MILLISECONDS;
            } else NetherPowerTimer -= diff;

            if (LegionFlameTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 1, 0, true))
                {
                    DoScriptText(EMOTE_LEGION_FLAME,me,target);
                    DoCast(target,SPELL_LEGION_FLAME);
                }
                LegionFlameTimer = 20*IN_MILLISECONDS;
            } else LegionFlameTimer -= diff;

            if (getDifficulty() == RAID_DIFFICULTY_25MAN_HEROIC && TouchOfJaraxxusTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM,0))
                    DoCast(target,SPELL_TOUCH_OF_JARAXXUS);
                TouchOfJaraxxusTimer = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else TouchOfJaraxxusTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* instance;
        SummonList Summons;
        uint32 FelFireballTimer;
        uint32 FelLightningTimer;
        uint32 IncinerateFleshTimer;
        uint32 NetherPowerTimer;
        uint32 LegionFlameTimer;
        uint32 TouchOfJaraxxusTimer;
        uint32 SummonNetherPortalTimer;
        uint32 SummonInfernalEruptionTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_jaraxxusAI(creature);
    }
};

class mob_legion_flame : public CreatureScript
{
public:
    mob_legion_flame() : CreatureScript("mob_legion_flame") { }

    struct mob_legion_flameAI : public Scripted_NoMovementAI
    {
        mob_legion_flameAI(Creature* creature) : Scripted_NoMovementAI(creature){}

        void Reset()
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetInCombatWithZone();
            DoCast(SPELL_LEGION_FLAME_EFFECT);
        }

        void UpdateAI(const uint32 /*diff*/)
        {
            if (!UpdateVictim())
                return;
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_legion_flameAI(creature);
    }
};

class mob_infernal_volcano : public CreatureScript
{
public:
    mob_infernal_volcano() : CreatureScript("mob_infernal_volcano") { }

    struct mob_infernal_volcanoAI : public Scripted_NoMovementAI
    {
        mob_infernal_volcanoAI(Creature* creature) : Scripted_NoMovementAI(creature), Summons(me)
        {
            instance = (InstanceScript*)creature->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            if (!IsHeroic())
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
                DoCast(me, SPELL_SUMMON_INFERNAL_N); 
                me->ForcedDespawn(17000);
            }
            else
            {
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
                DoCast(me, SPELL_SUMMON_INFERNAL_H); 
            }
        }

        void JustSummoned(Creature* summoned)
        {
            switch(summoned->GetEntry())
            {
            case NPC_FEL_INFERNAL:
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    summoned->AI()->DoZoneInCombat();
                Summons.Summon(summoned);
                break;
            }
        }

        void JustDied(Unit* /*pKiller*/)
        {
            me->ForcedDespawn(5000);
        }

    private:
        InstanceScript* instance;
        SummonList Summons;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_infernal_volcanoAI(creature);
    }
};

class mob_fel_infernal : public CreatureScript
{
public:
    mob_fel_infernal() : CreatureScript("mob_fel_infernal") { }

    struct mob_fel_infernalAI : public ScriptedAI
    {
        mob_fel_infernalAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript*)creature->GetInstanceScript();
        }

        void Reset()
        {
            FelStreakTimer = 30*IN_MILLISECONDS;
            me->SetInCombatWithZone();
        }

        /*void SpellHitTarget(Unit *target, const SpellEntry *pSpell)
        {
            if (pSpell->Id == SPELL_FEL_STREAK)
                DoCastAOE(SPELL_FEL_INFERNO); //66517
        }*/

        void JustDied(Unit* /*pKiller*/)
        {
            me->ForcedDespawn(5000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (FelStreakTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM,0))
                    DoCast(target,SPELL_FEL_STREAK);
                FelStreakTimer = 30*IN_MILLISECONDS;
            } else FelStreakTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* instance;
        uint32 FelStreakTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_fel_infernalAI(creature);
    }
};

class mob_nether_portal : public CreatureScript
{
public:
    mob_nether_portal() : CreatureScript("mob_nether_portal") { }

    struct mob_nether_portalAI : public ScriptedAI
    {
        mob_nether_portalAI(Creature* creature) : ScriptedAI(creature), Summons(me)
        {
            instance = (InstanceScript*)creature->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            DoCast(me, SPELL_NETHER_PORTAL);

            if (!IsHeroic())
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
            else
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE | UNIT_FLAG_PACIFIED);
        }

        void JustSummoned(Creature* summoned)
        {
            switch(summoned->GetEntry())
            {
            case NPC_MISTRESS_OF_PAIN:
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    summoned->AI()->DoZoneInCombat();
                Summons.Summon(summoned);
                break;
            }
        }

        void JustDied(Unit* /*pKiller*/)
        {
            me->ForcedDespawn(5000);
        }

    private:
        InstanceScript* instance;
        SummonList Summons;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_nether_portalAI(creature);
    }
};

class mob_mistress_of_pain : public CreatureScript
{
public:
    mob_mistress_of_pain() : CreatureScript("mob_mistress_of_pain") { }

    struct mob_mistress_of_painAI : public ScriptedAI
    {
        mob_mistress_of_painAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript*)creature->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            if (instance)
                instance->SetData(DATA_MISTRESS_OF_PAIN_COUNT, INCREASE);
        }

        void Reset()
        {
            ShivanSlashTimer = 10*IN_MILLISECONDS;
            SpinningStrikeTimer = 15*IN_MILLISECONDS;
            MistressKissTimer = 20*IN_MILLISECONDS;
            me->SetInCombatWithZone();
        }

        void JustDied(Unit* /*pKiller*/)
        {
            if (instance)
                instance->SetData(DATA_MISTRESS_OF_PAIN_COUNT, DECREASE);

            me->ForcedDespawn(5000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (ShivanSlashTimer <= diff)
            {
                DoCastVictim(SPELL_SHIVAN_SLASH);
                ShivanSlashTimer = 10*IN_MILLISECONDS;
            } else ShivanSlashTimer -= diff;

            if (SpinningStrikeTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM,0))
                {
                    DoCast(target,SPELL_SPINNING_STRIKE_1);
                    target->CastSpell(me, 66287, true);
                }
                SpinningStrikeTimer = 18*IN_MILLISECONDS;
            } else SpinningStrikeTimer -= diff;

            if (IsHeroic() && MistressKissTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM,0))
                    DoCast(target,SPELL_MISTRESS_KISS);
                MistressKissTimer = 15*IN_MILLISECONDS;
            } else MistressKissTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* instance;
        uint32 ShivanSlashTimer;
        uint32 SpinningStrikeTimer;
        uint32 MistressKissTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_mistress_of_painAI(creature);
    }
};

class spell_spinning_pain_strike : public SpellScriptLoader
{
public:
    spell_spinning_pain_strike() : SpellScriptLoader("spell_spinning_pain_strike") { }

    class spell_spinning_pain_strike_SpellScript : public SpellScript
    {
    public:
        PrepareSpellScript(spell_spinning_pain_strike_SpellScript)
        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            return true;
        }

        void CalcDamage(SpellEffIndex /*effIndex*/)
        {
            uint32 dmg = 0;
            if(Unit* pTarget = GetHitUnit())
                dmg = ((float)pTarget->GetMaxHealth())*50.0f/100.0f;
            SetHitDamage(dmg);
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_spinning_pain_strike_SpellScript::CalcDamage, EFFECT_0, SPELL_EFFECT_SCHOOL_DAMAGE);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_spinning_pain_strike_SpellScript();
    }
};

void AddSC_boss_jaraxxus()
{
    new boss_jaraxxus();
    new mob_legion_flame();
    new mob_infernal_volcano();
    new mob_fel_infernal();
    new mob_nether_portal();
    new mob_mistress_of_pain();
    new spell_spinning_pain_strike();
}