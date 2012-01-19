/*
 * Copyright (C) 2010-2012 Project SkyFire <http://www.projectskyfire.org/>
 * Copyright (C) 2005-2012 MaNGOS <http://www.getmangos.com/>
 * Copyright (C) 2008-2012 Trinity <http://www.trinitycore.org/>
 * Copyright (C) 2005-2012 ScriptDev2 <http://http://www.scriptdev2.com/>
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

/*
 * Scripts for spells with SPELLFAMILY_WARLOCK and SPELLFAMILY_GENERIC spells used by warlock players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_warl_".
 */

#include "ScriptPCH.h"
#include "Spell.h"
#include "SpellAuraEffects.h"

enum WarlockSpells
{
    WARLOCK_DEMONIC_EMPOWERMENT_SUCCUBUS    = 54435,
    WARLOCK_DEMONIC_EMPOWERMENT_VOIDWALKER  = 54443,
    WARLOCK_DEMONIC_EMPOWERMENT_FELGUARD    = 54508,
    WARLOCK_DEMONIC_EMPOWERMENT_FELHUNTER   = 54509,
    WARLOCK_DEMONIC_EMPOWERMENT_IMP         = 54444,
    WARLOCK_DARK_INTENT_EFFECT              = 85767,
    //WARLOCK_IMPROVED_HEALTHSTONE_R1         = 18692,
    //WARLOCK_IMPROVED_HEALTHSTONE_R2         = 18693,
    WARLOCK_FELHUNTER_SHADOWBITE_R1         = 54049
};

// 47193 Demonic Empowerment
class spell_warl_demonic_empowerment : public SpellScriptLoader
{
public:
    spell_warl_demonic_empowerment() : SpellScriptLoader("spell_warl_demonic_empowerment") { }

    class spell_warl_demonic_empowerment_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_warl_demonic_empowerment_SpellScript)
        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            if (!sSpellStore.LookupEntry(WARLOCK_DEMONIC_EMPOWERMENT_SUCCUBUS))
                return false;
            if (!sSpellStore.LookupEntry(WARLOCK_DEMONIC_EMPOWERMENT_VOIDWALKER))
                return false;
            if (!sSpellStore.LookupEntry(WARLOCK_DEMONIC_EMPOWERMENT_FELGUARD))
                return false;
            if (!sSpellStore.LookupEntry(WARLOCK_DEMONIC_EMPOWERMENT_FELHUNTER))
                return false;
            if (!sSpellStore.LookupEntry(WARLOCK_DEMONIC_EMPOWERMENT_IMP))
                return false;
            return true;
        }

        void HandleScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (Creature* targetCreature = GetHitCreature())
            {
                if (targetCreature->isPet())
                {
                    CreatureInfo const * ci = ObjectMgr::GetCreatureTemplate(targetCreature->GetEntry());
                    switch (ci->family)
                    {
                    case CREATURE_FAMILY_SUCCUBUS:
                        targetCreature->CastSpell(targetCreature, WARLOCK_DEMONIC_EMPOWERMENT_SUCCUBUS, true);
                        break;
                    case CREATURE_FAMILY_VOIDWALKER:
                    {
                        SpellEntry const* spellInfo = sSpellStore.LookupEntry(WARLOCK_DEMONIC_EMPOWERMENT_VOIDWALKER);
                        int32 hp = int32(targetCreature->CountPctFromMaxHealth(GetCaster()->CalculateSpellDamage(targetCreature, spellInfo, 0)));
                        targetCreature->CastCustomSpell(targetCreature, WARLOCK_DEMONIC_EMPOWERMENT_VOIDWALKER, &hp, NULL, NULL, true);
                        //unitTarget->CastSpell(unitTarget, 54441, true);
                        break;
                    }
                    case CREATURE_FAMILY_FELGUARD:
                        targetCreature->CastSpell(targetCreature, WARLOCK_DEMONIC_EMPOWERMENT_FELGUARD, true);
                        break;
                    case CREATURE_FAMILY_FELHUNTER:
                        targetCreature->CastSpell(targetCreature, WARLOCK_DEMONIC_EMPOWERMENT_FELHUNTER, true);
                        break;
                    case CREATURE_FAMILY_IMP:
                        targetCreature->CastSpell(targetCreature, WARLOCK_DEMONIC_EMPOWERMENT_IMP, true);
                        break;
                    }
                }
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_warl_demonic_empowerment_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_warl_demonic_empowerment_SpellScript();
    }
};

// 47422 Everlasting Affliction
class spell_warl_everlasting_affliction : public SpellScriptLoader
{
public:
    spell_warl_everlasting_affliction() : SpellScriptLoader("spell_warl_everlasting_affliction") { }

    class spell_warl_everlasting_affliction_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_warl_everlasting_affliction_SpellScript)
        void HandleScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (Unit* unitTarget = GetHitUnit())
                // Refresh corruption on target
                if (AuraEffect* aur = unitTarget->GetAuraEffect(SPELL_AURA_PERIODIC_DAMAGE, SPELLFAMILY_WARLOCK, 0x2, 0, 0, GetCaster()->GetGUID()))
                    aur->GetBase()->RefreshDuration();
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_warl_everlasting_affliction_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_warl_everlasting_affliction_SpellScript();
    }
};

// 6201 Create Healthstone (and ranks)
class spell_warl_create_healthstone : public SpellScriptLoader
{
public:
    spell_warl_create_healthstone() : SpellScriptLoader("spell_warl_create_healthstone") { }

    class spell_warl_create_healthstone_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_warl_create_healthstone_SpellScript)
        static uint32 const iTypes[8][3];

        void HandleScriptEffect(SpellEffIndex effIndex)
        {
            if (Unit* unitTarget = GetHitUnit())
            {
                uint32 rank = 0;

                uint8 spellRank = sSpellMgr->GetSpellRank(GetSpellInfo()->Id);
                if (spellRank > 0 && spellRank <= 8)
                    CreateItem(effIndex, iTypes[spellRank - 1][rank]);
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_warl_create_healthstone_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_warl_create_healthstone_SpellScript();
    }
};

uint32 const spell_warl_create_healthstone::spell_warl_create_healthstone_SpellScript::iTypes[8][3] = {
    { 5512, 19004, 19005},              // Minor Healthstone
    { 5511, 19006, 19007},              // Lesser Healthstone
    { 5509, 19008, 19009},              // Healthstone
    { 5510, 19010, 19011},              // Greater Healthstone
    { 9421, 19012, 19013},              // Major Healthstone
    {22103, 22104, 22105},              // Master Healthstone
    {36889, 36890, 36891},              // Demonic Healthstone
    {36892, 36893, 36894}               // Fel Healthstone
};

class spell_warl_drain_soul : public SpellScriptLoader
{
    public:
        spell_warl_drain_soul() : SpellScriptLoader("spell_warl_drain_soul") { } //1120

        class spell_warl_drain_soul_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_drain_soul_AuraScript)

            void OnPeriodic(AuraEffect const* aurEff)
            {
            }

            void OnRemove(AuraEffect const * aurEff, AuraEffectHandleModes /*mode*/)
            {
                if (Unit* caster = aurEff->GetBase()->GetCaster())
                    if (!GetTarget()->isAlive())
                        caster->CastSpell(caster, 79264, true);
            }

            void Register()
            {
                OnEffectRemove += AuraEffectRemoveFn(spell_warl_drain_soul_AuraScript::OnRemove, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE, AURA_EFFECT_HANDLE_REAL);
                OnEffectPeriodic += AuraEffectPeriodicFn(spell_warl_drain_soul_AuraScript::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
            }
        };

        AuraScript* GetAuraScript() const
        {
            return new spell_warl_drain_soul_AuraScript();
        }
};

//80398 Dark Intent
class spell_warlock_dark_intent : public SpellScriptLoader
{
public:
    spell_warlock_dark_intent() : SpellScriptLoader("spell_warlock_dark_intent") { }

    class spell_warlock_dark_intent_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_warlock_dark_intent_SpellScript)

        void HandleScriptEffect(SpellEffIndex effIndex)
        {
            Unit* caster = GetCaster();
            Unit* target = GetHitUnit();

            if(!caster || !target)
                return;

            caster->CastSpell(target, WARLOCK_DARK_INTENT_EFFECT, true);
            target->CastSpell(caster, WARLOCK_DARK_INTENT_EFFECT, true);
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_warlock_dark_intent_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_TRIGGER_SPELL);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_warlock_dark_intent_SpellScript();
    }
};

class spell_warl_immolate : public SpellScriptLoader
{
    public:
        spell_warl_immolate() : SpellScriptLoader("spell_warl_immolate") { }

        class spell_warl_immolate_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_immolate_SpellScript)

            bool Validate(SpellEntry const * /*spellEntry*/)
            {
                return true;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                if (Unit * caster = GetCaster())
                {
                    if (caster->GetTypeId() != TYPEID_PLAYER)
                        return;

                    caster->ToPlayer()->KilledMonsterCredit(44175, 0);
                }
            }

            void Register()
            {
                OnEffect += SpellEffectFn(spell_warl_immolate_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_warl_immolate_SpellScript();
        }
};

//27285 Seed of Corruption
class spell_warl_seed_of_corruption : public SpellScriptLoader
{
    public:
        spell_warl_seed_of_corruption() : SpellScriptLoader("spell_warl_seed_of_corruption") { }

        class spell_warl_seed_of_corruption_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_warl_seed_of_corruption_SpellScript);

            void FilterTargets(std::list<Unit*>& unitList)
            {
                unitList.remove(GetTargetUnit());
            }

            void Register()
            {
                OnUnitTargetSelect += SpellUnitTargetFn(spell_warl_seed_of_corruption_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_AREA_ENEMY_DST);
            }
        };

        SpellScript *GetSpellScript() const
        {
            return new spell_warl_seed_of_corruption_SpellScript();
        }
};

// 54049 Shadow Bite
class spell_warl_shadow_bite : public SpellScriptLoader
{
public:
    spell_warl_shadow_bite() : SpellScriptLoader("spell_warl_shadow_bite") { }

    class spell_warl_shadow_bite_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_warl_shadow_bite_SpellScript)
        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            if (!sSpellStore.LookupEntry(WARLOCK_FELHUNTER_SHADOWBITE_R1))
                return false;
            return true;
        }

        void HandleScriptEffect(SpellEffIndex /*effIndex*/)
        {
            //Unit *caster = GetCaster();
            // Get DoTs on target by owner (15% increase by dot)
            // need to get this here from SpellEffects.cpp ?
            //damage *= float(100.f + 15.f * caster->getVictim()->GetDoTsByCaster(caster->GetOwnerGUID())) / 100.f;
        }

        // Improved Felhunter parts commented--deprecated. removed in cataclysm
        // For Improved Felhunter
        void HandleAfterHitEffect()
        {
            Unit *caster = GetCaster();
            if(!caster) { return; };

            // break if our caster is not a pet
            if(!(caster->GetTypeId() == TYPEID_UNIT && caster->ToCreature()->isPet())) { return; };

            // break if pet has no owner and/or owner is not a player
            Unit *owner = caster->GetOwner();
            if(!(owner && (owner->GetTypeId() == TYPEID_PLAYER))) { return; };

            /*int32 amount;
            // rank 1 - 4%
            if(owner->HasAura(WARLOCK_IMPROVED_FELHUNTER_R1)) { amount = 5; };*/

            /*// rank 2 - 8%
            if(owner->HasAura(WARLOCK_IMPROVED_FELHUNTER_R2)) { amount = 9; };*/

            // Finally return the Mana to our Caster
            /*if(AuraEffect * aurEff = owner->GetAuraEffect(SPELL_AURA_ADD_FLAT_MODIFIER, SPELLFAMILY_WARLOCK, 214, 0))
                caster->CastCustomSpell(caster,WARLOCK_IMPROVED_FELHUNTER_EFFECT,&amount,NULL,NULL,true,NULL,aurEff,caster->GetGUID());*/
        }

        void Register()
        {
            //OnEffect += SpellEffectFn(spell_warl_shadow_bite_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            AfterHit += SpellHitFn(spell_warl_shadow_bite_SpellScript::HandleAfterHitEffect);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_warl_shadow_bite_SpellScript();
    }
};
    //DrainLife fix: thnks to rebase. fixed by wlasser 
        class spell_warl_drain_life : public SpellScriptLoader
{
        public:
            spell_warl_drain_life() : SpellScriptLoader("spell_warl_drain_life") { }
            class spell_warl_drain_life_AuraScript : public AuraScript
        {
            PrepareAuraScript(spell_warl_drain_life_AuraScript);
            void OnPeriodic(AuraEffect const* /*aurEff*/)
        {
            int32 bp = 2; // Normal, restore 2% of health
    // Check for Death's Embrace
        if(AuraEffect const* aurEff = GetCaster()->GetAuraEffect(SPELL_AURA_DUMMY, SPELLFAMILY_WARLOCK, 3223, 0))
           if(GetCaster()->HealthBelowPct(25))
                 bp += int32(aurEff->GetAmount());
            GetCaster()->CastCustomSpell(GetCaster(), 89653, &bp, NULL, NULL, true);
        }
        void Register()
        {
         OnEffectPeriodic += AuraEffectPeriodicFn(spell_warl_drain_life_AuraScript::OnPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_DAMAGE);
        }
        };
        AuraScript* GetAuraScript() const
        {
         return new spell_warl_drain_life_AuraScript();
        }
};


void AddSC_warlock_spell_scripts()
{
    new spell_warl_demonic_empowerment();
    new spell_warl_everlasting_affliction();
    new spell_warl_create_healthstone();
    new spell_warl_drain_soul();
    new spell_warlock_dark_intent();
    new spell_warl_immolate();
    new spell_warl_seed_of_corruption();
    new spell_warl_shadow_bite();
    new spell_warl_drain_life();
}