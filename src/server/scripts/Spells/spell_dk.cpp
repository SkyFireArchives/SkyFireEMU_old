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

/*
 * Scripts for spells with SPELLFAMILY_DEATHKNIGHT and SPELLFAMILY_GENERIC spells used by deathknight players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_dk_".
 */

#include "ScriptPCH.h"
#include "Spell.h"

enum DeathKnightSpells
{
    DISPLAY_GHOUL_CORPSE                    = 25537,
    DK_SPELL_SCOURGE_STRIKE_TRIGGERED       = 70890,
    DK_SPELL_BLOOD_BOIL_TRIGGERED           = 65658,
};

// 50462 - Anti-Magic Shell (on raid member)
class spell_dk_anti_magic_shell_raid : public SpellScriptLoader
{
public:
    spell_dk_anti_magic_shell_raid() : SpellScriptLoader("spell_dk_anti_magic_shell_raid") { }

    class spell_dk_anti_magic_shell_raid_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_dk_anti_magic_shell_raid_AuraScript);

        uint32 absorbPct;

        bool Load()
        {
            absorbPct = SpellMgr::CalculateSpellEffectAmount(GetSpellProto(), EFFECT_0, GetCaster());
            return true;
        }

        void CalculateAmount(AuraEffect const * /*aurEff*/, int32 & amount, bool & canBeRecalculated)
        {
            // TODO: this should absorb limited amount of damage, but no info on calculation formula
            amount = -1;
        }

        void Absorb(AuraEffect * /*aurEff*/, DamageInfo & dmgInfo, uint32 & absorbAmount)
        {
             absorbAmount = CalculatePctN(dmgInfo.GetDamage(), absorbPct);
        }

        void Register()
        {
             DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_anti_magic_shell_raid_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
             OnEffectAbsorb += AuraEffectAbsorbFn(spell_dk_anti_magic_shell_raid_AuraScript::Absorb, EFFECT_0);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_dk_anti_magic_shell_raid_AuraScript();
    }
};

// 48707 - Anti-Magic Shell (on self)
class spell_dk_anti_magic_shell_self : public SpellScriptLoader
{
public:
    spell_dk_anti_magic_shell_self() : SpellScriptLoader("spell_dk_anti_magic_shell_self") { }

    class spell_dk_anti_magic_shell_self_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_dk_anti_magic_shell_self_AuraScript);

        enum Spells
        {
            DK_SPELL_RUNIC_POWER_ENERGIZE = 49088,
        };

        uint32 absorbPct, hpPct;
        bool Load()
        {
            absorbPct = SpellMgr::CalculateSpellEffectAmount(GetSpellProto(), EFFECT_0, GetCaster());
            hpPct = SpellMgr::CalculateSpellEffectAmount(GetSpellProto(), EFFECT_1, GetCaster());
            return true;
        }

        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            return sSpellStore.LookupEntry(DK_SPELL_RUNIC_POWER_ENERGIZE);
        }

        void CalculateAmount(AuraEffect const * /*aurEff*/, int32 & amount, bool & canBeRecalculated)
        {
            // Set absorbtion amount to unlimited
            amount = -1;
        }

        void Absorb(AuraEffect * aurEff, DamageInfo & dmgInfo, uint32 & absorbAmount)
        {
            absorbAmount = std::min(CalculatePctN(dmgInfo.GetDamage(), absorbPct), GetTarget()->CountPctFromMaxHealth(hpPct));
        }

        void Trigger(AuraEffect * aurEff, DamageInfo & dmgInfo, uint32 & absorbAmount)
        {
            Unit * target = GetTarget();
            // damage absorbed by Anti-Magic Shell energizes the DK with additional runic power.
            // This, if I'm not mistaken, shows that we get back ~20% of the absorbed damage as runic power.
            int32 bp = absorbAmount * 2 / 10;
            target->CastCustomSpell(target, DK_SPELL_RUNIC_POWER_ENERGIZE, &bp, NULL, NULL, true, NULL, aurEff);
        }

        void Register()
        {
             DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_anti_magic_shell_self_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
             OnEffectAbsorb += AuraEffectAbsorbFn(spell_dk_anti_magic_shell_self_AuraScript::Absorb, EFFECT_0);
             AfterEffectAbsorb += AuraEffectAbsorbFn(spell_dk_anti_magic_shell_self_AuraScript::Trigger, EFFECT_0);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_dk_anti_magic_shell_self_AuraScript();
    }
};

// 50461 - Anti-Magic Zone
class spell_dk_anti_magic_zone : public SpellScriptLoader
{
public:
    spell_dk_anti_magic_zone() : SpellScriptLoader("spell_dk_anti_magic_zone") { }

    class spell_dk_anti_magic_zone_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_dk_anti_magic_zone_AuraScript);

        enum Spells
        {
            DK_SPELL_ANTI_MAGIC_SHELL_TALENT = 51052,
        };

        uint32 absorbPct;

        bool Load()
        {
            absorbPct = SpellMgr::CalculateSpellEffectAmount(GetSpellProto(), EFFECT_0, GetCaster());
            return true;
        }

        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            return sSpellStore.LookupEntry(DK_SPELL_ANTI_MAGIC_SHELL_TALENT);
        }

        void CalculateAmount(AuraEffect const * /*aurEff*/, int32 & amount, bool & canBeRecalculated)
        {
            SpellEntry const * talentSpell = sSpellStore.LookupEntry(DK_SPELL_ANTI_MAGIC_SHELL_TALENT);
            amount = SpellMgr::CalculateSpellEffectAmount(talentSpell, EFFECT_0, GetCaster());
            // assume caster is a player here
            if (Unit * caster = GetCaster())
                 amount += int32(2 * caster->ToPlayer()->GetTotalAttackPowerValue(BASE_ATTACK));
        }

        void Absorb(AuraEffect * /*aurEff*/, DamageInfo & dmgInfo, uint32 & absorbAmount)
        {
             absorbAmount = CalculatePctN(dmgInfo.GetDamage(), absorbPct);
        }

        void Register()
        {
             DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_dk_anti_magic_zone_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
             OnEffectAbsorb += AuraEffectAbsorbFn(spell_dk_anti_magic_zone_AuraScript::Absorb, EFFECT_0);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_dk_anti_magic_zone_AuraScript();
    }
};

// 55090 Scourge Strike (55265, 55270, 55271)
class spell_dk_scourge_strike : public SpellScriptLoader
{
    public:
        spell_dk_scourge_strike() : SpellScriptLoader("spell_dk_scourge_strike") { }

        class spell_dk_scourge_strike_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_scourge_strike_SpellScript);

            private:
                float m_multip;
            public:
                spell_dk_scourge_strike_SpellScript() : m_multip(0.0f) { }

            bool Validate(SpellEntry const * /*spellEntry*/)
            {
                if (!sSpellStore.LookupEntry(DK_SPELL_SCOURGE_STRIKE_TRIGGERED))
                    return false;
                return true;
            }

            void GetGlyphScourgeStrikeAuraEffects(Unit const * caster, Unit const * target, Unit::AuraEffectList & auras)
            {
                Unit::AuraEffectList const & aurasA = target->GetAuraEffectsByType(SPELL_AURA_DUMMY);
                for (Unit::AuraEffectList::const_iterator itr = aurasA.begin(); itr != aurasA.end(); ++itr)
                {
                    if (((*itr)->GetCasterGUID() != caster->GetGUID()) || ((*itr)->GetEffIndex() != EFFECT_0))
                        continue;

                    SpellEntry const * spellProto = (*itr)->GetSpellProto();
                    if ((spellProto->SpellIconID == 23) && (SpellFamilyNames(spellProto->SpellFamilyName) == SPELLFAMILY_GENERIC))
                        auras.push_back(*itr);
                }
            }

            AuraEffect * GetGlyphScourgeStrikeAuraEffect(uint32 diseaseId, Unit::AuraEffectList const & auras)
            {
                for (Unit::AuraEffectList::const_iterator itr = auras.begin(); itr != auras.end(); ++itr)
                    if (diseaseId == ((*itr)->GetAmount() >> 4))
                        return (*itr);
    
                return NULL;
            }

            void HandleDummy(SpellEffIndex /*effIndex*/)
            {
                static const AuraType diseaseAuraTypes[] =
                {
                    SPELL_AURA_PERIODIC_DAMAGE, // Frost Fever and Blood Plague
                    SPELL_AURA_LINKED, // Crypt Fever and Ebon Plague
                    SPELL_AURA_NONE
                };

                Unit* caster = GetCaster();
                Unit* target = GetHitUnit();

                if (!target)
                    return;

                uint32 diseases = 0;
                int32 extratime, maxtime;
                AuraEffect const * aurEffA;

                Unit::AuraEffectList aurasA;
                GetGlyphScourgeStrikeAuraEffects(caster, caster, aurasA);

                bool hasGlyph = bool(aurasA.size());

                if (hasGlyph)
                {
                    aurEffA = *aurasA.begin();
                    extratime = aurEffA->GetAmount();
                    maxtime = SpellMgr::CalculateSpellEffectAmount(aurEffA->GetSpellProto(), EFFECT_1);

                    aurasA.clear();
                    GetGlyphScourgeStrikeAuraEffects(caster, target, aurasA);
                }

                for (AuraType const * itrA = &diseaseAuraTypes[0]; itrA && itrA[0] != SPELL_AURA_NONE; ++itrA)
                {
                    Unit::AuraEffectList const & aurasB = target->GetAuraEffectsByType(*itrA);
                    for (Unit::AuraEffectList::const_iterator itrB = aurasB.begin(); itrB != aurasB.end(); ++itrB)
                        if (((*itrB)->GetSpellProto()->Dispel == DISPEL_DISEASE) && ((*itrB)->GetCasterGUID() == caster->GetGUID()))
                        {
                            ++diseases;

                            if (!hasGlyph)
                                continue;

                            Aura * aura = (*itrB)->GetBase();

                            int32 applytime = int32(aura->GetApplyTime() & 0x7FFFFFFF);
                            int32 duration = std::min(aura->GetDuration() + (extratime * IN_MILLISECONDS), aura->GetMaxDuration());

                            if (AuraEffect * aurEffB = GetGlyphScourgeStrikeAuraEffect(aura->GetId(), aurasA))
                            {
                                aurEffB->GetBase()->SetDuration(duration);

                                if (applytime != aurEffB->GetBase()->GetMaxDuration())
                                    aurEffB->SetAmount(aurEffB->GetAmount() & ~(0xF));

                                if (maxtime <= (aurEffB->GetAmount() & 0xF))
                                    continue;

                                aura->SetDuration(duration);

                                aurEffB->GetBase()->SetMaxDuration(applytime);
                                aurEffB->SetAmount(aurEffB->GetAmount() + extratime);

                                continue;
                            }

                            int32 bp0 = (aura->GetId() << 4) + extratime;
                            caster->CastCustomSpell(target, aurEffA->GetId(), &bp0, NULL, NULL, true);

                            Unit::AuraEffectList tmp;
                            GetGlyphScourgeStrikeAuraEffects(caster, target, tmp);

                            if (AuraEffect * aurEffB = GetGlyphScourgeStrikeAuraEffect(aura->GetId(), tmp))
                            {
                                aura->SetDuration(duration);

                                aurEffB->GetBase()->SetMaxDuration(applytime);
                                aurEffB->GetBase()->SetDuration(duration);
                            }
                        }
                }

                m_multip = (target->GetDiseasesByCaster(caster->GetGUID()) * GetEffectValue()) / 100.0f;
            }

            void HandleAfterHit()
            {
                Unit* caster = GetCaster();
                if (Unit* unitTarget = GetHitUnit())
                {
                    int32 bp = GetFinalDamage() * m_multip;
                    caster->CastCustomSpell(unitTarget, DK_SPELL_SCOURGE_STRIKE_TRIGGERED, &bp, NULL, NULL, true);
                }
            }

            void Register()
            {
                OnEffect += SpellEffectFn(spell_dk_scourge_strike_SpellScript::HandleDummy, EFFECT_2, SPELL_EFFECT_DUMMY);
                AfterHit += SpellHitFn(spell_dk_scourge_strike_SpellScript::HandleAfterHit);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_scourge_strike_SpellScript();
        }
};

// 48721 Blood Boil
class spell_dk_blood_boil : public SpellScriptLoader
{
    public:
        spell_dk_blood_boil() : SpellScriptLoader("spell_dk_blood_boil") { }

        class spell_dk_blood_boil_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_dk_blood_boil_SpellScript);

            bool Validate(SpellEntry const * /*spellEntry*/)
            {
                if (!sSpellStore.LookupEntry(DK_SPELL_BLOOD_BOIL_TRIGGERED))
                    return false;
                return true;
            }

            bool Load()
            {
                _executed = false;
                return GetCaster()->GetTypeId() == TYPEID_PLAYER && GetCaster()->getClass() == CLASS_DEATH_KNIGHT;
            }

            void HandleAfterHit()
            {
                if (_executed || !GetHitUnit())
                    return;

                _executed = true;
                GetCaster()->CastSpell(GetCaster(), DK_SPELL_BLOOD_BOIL_TRIGGERED, true);
            }

            void Register()
            {
                AfterHit += SpellHitFn(spell_dk_blood_boil_SpellScript::HandleAfterHit);
            }

            bool _executed;
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_dk_blood_boil_SpellScript();
        }
};

void AddSC_deathknight_spell_scripts()
{
    new spell_dk_anti_magic_shell_raid();
    new spell_dk_anti_magic_shell_self();
    new spell_dk_anti_magic_zone();
    new spell_dk_scourge_strike();
    new spell_dk_blood_boil();
}
