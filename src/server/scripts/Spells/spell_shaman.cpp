/*
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2005-2009 MaNGOS <http://getmangos.com/>
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

/*
 * Scripts for spells with SPELLFAMILY_SHAMAN and SPELLFAMILY_GENERIC spells used by shaman players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_sha_".
 */

#include "ScriptPCH.h"
#include "SpellAuraEffects.h"

enum ShamanSpells
{
    SHAMAN_SPELL_GLYPH_OF_MANA_TIDE     = 55441,
    SHAMAN_SPELL_MANA_TIDE_TOTEM        = 39609,
    SHAMAN_SPELL_FIRE_NOVA              = 1535,
    SHAMAN_SPELL_FIRE_NOVA_TRIGGERED    = 8349,
    SHAMAN_SPELL_EARTH_SHOCK            = 8042,
    SHAMAN_SPELL_FULMINATION            = 88766,
    SHAMAN_SPELL_FULMINATION_TRIGGERED  = 88767,
    SHAMAN_SPELL_FULMINATION_INFO       = 95774,
    SHAMAN_SPELL_LIGHTNING_SHIELD_PROC  = 26364,

    //For Earthen Power
    SHAMAN_TOTEM_SPELL_EARTHBIND_TOTEM  = 6474, //Spell casted by totem
    SHAMAN_TOTEM_SPELL_EARTHEN_POWER    = 59566,//Spell witch remove snare effect
    SHAMAN_TOTEM_SPELL_EARTHS_GRASP     = 51485,
    SHAMAN_TOTEM_SPELL_EARTHGRAB        = 64695,

    SHAMAN_TOTEM_SPELL_TOTEMIC_WRATH    = 77746,
    SHAMAN_TOTEM_SPELL_TOTEMIC_WRATH_AURA = 77747,
    SHAMAN_SPELL_UNLEASH_ELEMENTS       = 73680,
};

// 51474 - Astral shift
class spell_sha_astral_shift : public SpellScriptLoader
{
public:
    spell_sha_astral_shift() : SpellScriptLoader("spell_sha_astral_shift") { }

    class spell_sha_astral_shift_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_astral_shift_AuraScript);

        uint32 absorbPct;
        void CalculateAmount(AuraEffect const * /*aurEff*/, int32 & amount, bool & canBeRecalculated)
        {
            absorbPct = amount;
            // Set absorbtion amount to unlimited
            amount = -1;
        }

        void Absorb(AuraEffect * /*aurEff*/, DamageInfo & dmgInfo, uint32 & absorbAmount)
        {
            // reduces all damage taken while stun, fear or silence
            if (GetTarget()->GetUInt32Value(UNIT_FIELD_FLAGS) & (UNIT_FLAG_STUNNED | UNIT_FLAG_FLEEING | UNIT_FLAG_SILENCED))
                absorbAmount = CalculatePctN(dmgInfo.GetDamage(), absorbPct);
        }

        void Register()
        {
             DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_sha_astral_shift_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
             OnEffectAbsorb += AuraEffectAbsorbFn(spell_sha_astral_shift_AuraScript::Absorb, EFFECT_0);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_sha_astral_shift_AuraScript();
    }
};

// 1535 Fire Nova
class spell_sha_fire_nova : public SpellScriptLoader
{
public:
    spell_sha_fire_nova() : SpellScriptLoader("spell_sha_fire_nova") { }

    class spell_sha_fire_nova_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_fire_nova_SpellScript)
        bool Validate(SpellEntry const * spellEntry)
        {
            if (sSpellMgr->GetFirstSpellInChain(SHAMAN_SPELL_FIRE_NOVA) != sSpellMgr->GetFirstSpellInChain(spellEntry->Id))
                return false;

            uint8 rank = sSpellMgr->GetSpellRank(spellEntry->Id);
            if (!sSpellMgr->GetSpellWithRank(SHAMAN_SPELL_FIRE_NOVA_TRIGGERED, rank, true))
                return false;
            return true;
        }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (Unit* caster = GetCaster())
            {
                // fire slot
                if (caster->m_SummonSlot[1])
                {
                    Creature* totem = caster->GetMap()->GetCreature(caster->m_SummonSlot[1]);
                    if (totem && totem->isTotem())
                        totem->CastSpell(totem, SHAMAN_SPELL_FIRE_NOVA_TRIGGERED, true);
                }
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_sha_fire_nova_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_sha_fire_nova_SpellScript();
    }
};

// 6474 - Earthbind Totem - Fix Talent:Earthen Power
class spell_sha_earthbind_totem : public SpellScriptLoader
{
public:
    spell_sha_earthbind_totem() : SpellScriptLoader("spell_sha_earthbind_totem") { }

    class spell_sha_earthbind_totem_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_earthbind_totem_AuraScript);

        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            if (!sSpellStore.LookupEntry(SHAMAN_TOTEM_SPELL_EARTHBIND_TOTEM))
                return false;
            if (!sSpellStore.LookupEntry(SHAMAN_TOTEM_SPELL_EARTHEN_POWER))
                return false;
            if (!sSpellStore.LookupEntry(SHAMAN_TOTEM_SPELL_EARTHS_GRASP))
                return false;
            if (!sSpellStore.LookupEntry(SHAMAN_TOTEM_SPELL_EARTHGRAB))
                return false;
            return true;
        }

        void HandleEffectPeriodic(AuraEffect const * aurEff)
        {
            Unit* target = GetTarget();
            if (Unit *caster = aurEff->GetBase()->GetCaster())
                if (AuraEffect* aur = caster->GetDummyAuraEffect(SPELLFAMILY_SHAMAN, 2289, 0))
                    if (roll_chance_i(aur->GetBaseAmount()))
                        target->CastSpell(target, SHAMAN_TOTEM_SPELL_EARTHEN_POWER, true, NULL, aurEff);
        }

        void HandleEffectApply(AuraEffect const * aurEff, AuraEffectHandleModes /*mode*/)
        {
            Unit* target = GetTarget();
            if (Unit *caster = aurEff->GetBase()->GetCaster())
                if (AuraEffect* aur = caster->GetDummyAuraEffect(SPELLFAMILY_SHAMAN, 20, 1))
                    if (roll_chance_i(aur->GetBaseAmount()))
                       target->CastSpell(target, SHAMAN_TOTEM_SPELL_EARTHGRAB, true, NULL, aurEff);
        }

        void Register()
        {
            OnEffectPeriodic += AuraEffectPeriodicFn(spell_sha_earthbind_totem_AuraScript::HandleEffectPeriodic, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL);
            OnEffectApply += AuraEffectApplyFn(spell_sha_earthbind_totem_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_PERIODIC_TRIGGER_SPELL, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_sha_earthbind_totem_AuraScript();
    }
};

// 73680 Unleash Elements
class spell_sha_unleash_elements : public SpellScriptLoader
{
public:
    spell_sha_unleash_elements() : SpellScriptLoader("spell_sha_unleash_elements") { }

    class spell_sha_unleash_elements_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_unleash_elements_SpellScript)
        bool Validate(SpellEntry const * spellEntry)
        {
            if (!sSpellStore.LookupEntry(SHAMAN_SPELL_UNLEASH_ELEMENTS))
                return false;

            return true;
        }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            Unit* caster = GetCaster();
            if(!caster)
                return;
            Player* plr = caster->ToPlayer();
            if(!plr)
                return;

            if(!GetTargetUnit())
                return;

            Item *weapons[2];
            weapons[0] = plr->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_MAINHAND);
            weapons[1] = plr->GetItemByPos(INVENTORY_SLOT_BAG_0, EQUIPMENT_SLOT_OFFHAND);
            for(int i = 0; i < 2; i++)
            {
                if(!weapons[i])
                    continue;

                uint32 unleashSpell = 0;
                Unit *target = GetTargetUnit();
                bool hostileTarget = plr->IsHostileTo(target);
                bool hostileSpell = true;

                switch (weapons[i]->GetEnchantmentId(TEMP_ENCHANTMENT_SLOT))
                {
                    case 3345: // Earthliving Weapon
                        unleashSpell = 73685; //Unleash Life
                        hostileSpell = false;
                        break;
                    case 5: // Flametongue Weapon
                        unleashSpell = 73683; // Unleash Flame
                        break;
                    case 2: // Frostbrand Weapon
                        unleashSpell = 73682; // Unleash Frost
                        break;
                    case 3021: // Rockbiter Weapon
                        unleashSpell = 73684; // Unleash Earth
                        break;
                    case 283: // Windfury Weapon
                        unleashSpell = 73681; // Unleash Wind
                        break;
                }

                if(hostileSpell && !hostileTarget)
                    return; // don't allow to attack non-hostile targets. TODO: check this before cast

                if(!hostileSpell && hostileTarget)
                    target = plr;   // heal ourselves instead of the enemy

                if(unleashSpell)
                {
                    plr->CastSpell(target, unleashSpell, true);
                }
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_sha_unleash_elements_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_sha_unleash_elements_SpellScript();
    }
};

// 77746 - Totemic Wrath
class spell_sha_totemic_wrath : public SpellScriptLoader
{
public:
    spell_sha_totemic_wrath() : SpellScriptLoader("spell_sha_totemic_wrath") { }

    class spell_sha_totemic_wrath_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_sha_totemic_wrath_AuraScript);

        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            if (!sSpellStore.LookupEntry(SHAMAN_TOTEM_SPELL_TOTEMIC_WRATH))
                return false;

            if (!sSpellStore.LookupEntry(SHAMAN_TOTEM_SPELL_TOTEMIC_WRATH_AURA))
                return false;

            return true;
        }

        void HandleEffectApply(AuraEffect const * aurEff, AuraEffectHandleModes /*mode*/)
        {
            Unit* target = GetTarget();

            if(target->ToPlayer())
                return; // just apply as dummy

            // applied by a totem - cast the real aura if owner has the talent
            if (Unit *caster = aurEff->GetBase()->GetCaster())
                if (caster->GetAuraEffect(SPELL_AURA_DUMMY, SPELLFAMILY_GENERIC, 2019, 0))
                    target->CastSpell(target, SHAMAN_TOTEM_SPELL_TOTEMIC_WRATH_AURA, true, NULL, aurEff);
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_sha_totemic_wrath_AuraScript::HandleEffectApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_sha_totemic_wrath_AuraScript();
    }
};

// 88766 Fulmination handled in 8042 Earth Shock
class spell_sha_fulmination : public SpellScriptLoader
{
public:
    spell_sha_fulmination() : SpellScriptLoader("spell_sha_fulmination") { }

    class spell_sha_fulminationSpellScript : public SpellScript
    {
        PrepareSpellScript(spell_sha_fulminationSpellScript)

        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            if (!sSpellStore.LookupEntry(SHAMAN_SPELL_FULMINATION))
                return false;

            if (!sSpellStore.LookupEntry(SHAMAN_SPELL_FULMINATION_TRIGGERED))
                return false;

            if (!sSpellStore.LookupEntry(SHAMAN_SPELL_FULMINATION_INFO))
                return false;

            return true;
        }

        void HandleFulmination(SpellEffIndex effIndex)
        {
            // make caster cast a spell on a unit target of effect

            Unit *target = GetHitUnit();

            Unit *caster = GetCaster();

            if(!target || !caster)
                return;

            AuraEffect *fulminationAura = caster->GetDummyAuraEffect(SPELLFAMILY_SHAMAN, 2010, 0);

            if (!fulminationAura)
                return;

            Aura * lightningShield = caster->GetAura(324);

            if(!lightningShield)
                return;

            uint8 lsCharges = lightningShield->GetCharges();

            if(lsCharges <= 3)
                return;
            uint8 usedCharges = lsCharges - 3;

            SpellEntry const* spellInfo = sSpellStore.LookupEntry(SHAMAN_SPELL_LIGHTNING_SHIELD_PROC);
            int32 basePoints = caster->CalculateSpellDamage(target, spellInfo, 0);
            uint32 damage = usedCharges * caster->SpellDamageBonus(target, spellInfo, effIndex, basePoints, SPELL_DIRECT_DAMAGE);
            caster->CastCustomSpell(SHAMAN_SPELL_FULMINATION_TRIGGERED, SPELLVALUE_BASE_POINT0, damage, target, true, NULL, fulminationAura);
            lightningShield->SetCharges(lsCharges - usedCharges);
        }

        // register functions used in spell script - names of these functions do not matter
        void Register()
        {
            OnEffect += SpellEffectFn(spell_sha_fulminationSpellScript::HandleFulmination, EFFECT_FIRST_FOUND, SPELL_EFFECT_ANY);
        }
    };

    // function which creates SpellScript
    SpellScript *GetSpellScript() const
    {
        return new spell_sha_fulminationSpellScript();
    }
};

void AddSC_shaman_spell_scripts()
{
    new spell_sha_astral_shift();
    new spell_sha_fire_nova();
    new spell_sha_earthbind_totem();
    new spell_sha_unleash_elements();
    new spell_sha_totemic_wrath();
    new spell_sha_fulmination();
}