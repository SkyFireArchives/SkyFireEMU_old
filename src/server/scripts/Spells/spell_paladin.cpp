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
 * Scripts for spells with SPELLFAMILY_PALADIN and SPELLFAMILY_GENERIC spells used by paladin players.
 * Ordered alphabetically using scriptname.
 * Scriptnames of files in this file should be prefixed with "spell_pal_".
 */

#include "ScriptPCH.h"
#include "SpellAuraEffects.h"

enum PaladinSpells
{
    PALADIN_SPELL_DIVINE_PLEA                    = 54428,

    PALADIN_SPELL_HOLY_SHOCK_R1                  = 20473,
    PALADIN_SPELL_HOLY_SHOCK_R1_DAMAGE           = 25912,
    PALADIN_SPELL_HOLY_SHOCK_R1_HEALING          = 25914,

    SPELL_BLESSING_OF_LOWER_CITY_DRUID           = 37878,
    SPELL_BLESSING_OF_LOWER_CITY_PALADIN         = 37879,
    SPELL_BLESSING_OF_LOWER_CITY_PRIEST          = 37880,
    SPELL_BLESSING_OF_LOWER_CITY_SHAMAN          = 37881,
    SPELL_GUARDIAN_OF_ANCIENT_KINGS              = 86150
};

// 31850 - Ardent Defender
class spell_pal_ardent_defender : public SpellScriptLoader
{
public:
    spell_pal_ardent_defender() : SpellScriptLoader("spell_pal_ardent_defender") { }

    class spell_pal_ardent_defender_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_pal_ardent_defender_AuraScript);

        uint32 absorbPct, healPct;

        enum Spell
        {
            PAL_SPELL_ARDENT_DEFENDER_HEAL = 66235,
        };

        bool Load()
        {
            healPct = SpellMgr::CalculateSpellEffectAmount(GetSpellProto(), EFFECT_1);
            absorbPct = SpellMgr::CalculateSpellEffectAmount(GetSpellProto(), EFFECT_0);
            return GetUnitOwner()->ToPlayer();
        }

        void CalculateAmount(AuraEffect const * /*aurEff*/, int32 & amount, bool & canBeRecalculated)
        {
            // Set absorbtion amount to unlimited
            amount = -1;
        }

        void Absorb(AuraEffect * aurEff, DamageInfo & dmgInfo, uint32 & absorbAmount)
        {
            Unit * pVictim = GetTarget();
            int32 remainingHealth = pVictim->GetHealth() - dmgInfo.GetDamage();
            uint32 allowedHealth = pVictim->CountPctFromMaxHealth(35);
            // If damage kills us
            if (remainingHealth <= 0 && !pVictim->ToPlayer()->HasSpellCooldown(PAL_SPELL_ARDENT_DEFENDER_HEAL))
            {
                // Cast healing spell, completely avoid damage
                absorbAmount = dmgInfo.GetDamage();

                uint32 defenseSkillValue = pVictim->GetDefenseSkillValue();
                // Max heal when defense skill denies critical hits from raid bosses
                // Formula: max defense at level + 140 (raiting from gear)
                uint32 reqDefForMaxHeal  = pVictim->getLevel() * 5 + 140;
                float pctFromDefense = (defenseSkillValue >= reqDefForMaxHeal)
                    ? 1.0f
                    : float(defenseSkillValue) / float(reqDefForMaxHeal);

                int32 healAmount = int32(pVictim->CountPctFromMaxHealth(uint32(healPct * pctFromDefense)));
                pVictim->CastCustomSpell(pVictim, PAL_SPELL_ARDENT_DEFENDER_HEAL, &healAmount, NULL, NULL, true, NULL, aurEff);
                pVictim->ToPlayer()->AddSpellCooldown(PAL_SPELL_ARDENT_DEFENDER_HEAL, 0, time(NULL) + 120);
            }
            else if (remainingHealth < int32(allowedHealth))
            {
                // Reduce damage that brings us under 35% (or full damage if we are already under 35%) by x%
                uint32 damageToReduce = (pVictim->GetHealth() < allowedHealth)
                    ? dmgInfo.GetDamage()
                    : allowedHealth - remainingHealth;
                absorbAmount = CalculatePctN(damageToReduce, absorbPct);
            }
        }

        void Register()
        {
             DoEffectCalcAmount += AuraEffectCalcAmountFn(spell_pal_ardent_defender_AuraScript::CalculateAmount, EFFECT_0, SPELL_AURA_SCHOOL_ABSORB);
             OnEffectAbsorb += AuraEffectAbsorbFn(spell_pal_ardent_defender_AuraScript::Absorb, EFFECT_0);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_pal_ardent_defender_AuraScript();
    }
};

class spell_pal_blessing_of_faith : public SpellScriptLoader
{
public:
    spell_pal_blessing_of_faith() : SpellScriptLoader("spell_pal_blessing_of_faith") { }

    class spell_pal_blessing_of_faith_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_pal_blessing_of_faith_SpellScript)
        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            if (!sSpellStore.LookupEntry(SPELL_BLESSING_OF_LOWER_CITY_DRUID))
                return false;
            if (!sSpellStore.LookupEntry(SPELL_BLESSING_OF_LOWER_CITY_PALADIN))
                return false;
            if (!sSpellStore.LookupEntry(SPELL_BLESSING_OF_LOWER_CITY_PRIEST))
                return false;
            if (!sSpellStore.LookupEntry(SPELL_BLESSING_OF_LOWER_CITY_SHAMAN))
                return false;
            return true;
        }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (Unit *unitTarget = GetHitUnit())
            {
                uint32 spell_id = 0;
                switch(unitTarget->getClass())
                {
                    case CLASS_DRUID:   spell_id = SPELL_BLESSING_OF_LOWER_CITY_DRUID; break;
                    case CLASS_PALADIN: spell_id = SPELL_BLESSING_OF_LOWER_CITY_PALADIN; break;
                    case CLASS_PRIEST:  spell_id = SPELL_BLESSING_OF_LOWER_CITY_PRIEST; break;
                    case CLASS_SHAMAN:  spell_id = SPELL_BLESSING_OF_LOWER_CITY_SHAMAN; break;
                    default: return;                    // ignore for non-healing classes
                }

                GetCaster()->CastSpell(GetCaster(), spell_id, true);
            }
        }

        void Register()
        {
            // add dummy effect spell handler to Blessing of Faith
            OnEffect += SpellEffectFn(spell_pal_blessing_of_faith_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_pal_blessing_of_faith_SpellScript();
    }
};

class spell_pal_holy_shock : public SpellScriptLoader
{
public:
    spell_pal_holy_shock() : SpellScriptLoader("spell_pal_holy_shock") { }

    class spell_pal_holy_shock_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_pal_holy_shock_SpellScript)
        bool Validate(SpellEntry const *spellEntry)
        {
            if (!sSpellStore.LookupEntry(PALADIN_SPELL_HOLY_SHOCK_R1))
                return false;

            // can't use other spell than holy shock due to spell_ranks dependency
            if (sSpellMgr->GetFirstSpellInChain(PALADIN_SPELL_HOLY_SHOCK_R1) != sSpellMgr->GetFirstSpellInChain(spellEntry->Id))
                return false;

            uint8 rank = sSpellMgr->GetSpellRank(spellEntry->Id);
            if (!sSpellMgr->GetSpellWithRank(PALADIN_SPELL_HOLY_SHOCK_R1_DAMAGE, rank, true))
                return false;
            if (!sSpellMgr->GetSpellWithRank(PALADIN_SPELL_HOLY_SHOCK_R1_HEALING, rank, true))
                return false;

            return true;
        }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (Unit *unitTarget = GetHitUnit())
            {
                Unit *caster = GetCaster();

                uint8 rank = sSpellMgr->GetSpellRank(GetSpellInfo()->Id);

                if (caster->IsFriendlyTo(unitTarget))
                {
                    caster->CastSpell(unitTarget, sSpellMgr->GetSpellWithRank(PALADIN_SPELL_HOLY_SHOCK_R1_HEALING, rank), true, 0);

                    if (caster->ToPlayer()->HasAuraType(SPELL_AURA_MASTERY))
                    {
                        if (caster->ToPlayer()->getClass() == CLASS_PALADIN)
                        {
                            if (caster->ToPlayer()->GetTalentBranchSpec(caster->ToPlayer()->GetActiveSpec()) == BS_PALADIN_HOLY)
                            {
                                int32 bp0 = int32(caster->ToPlayer()->GetHealingDoneInPastSecs(15) * (12.0f + (1.5f * caster->ToPlayer()->GetMasteryPoints())) /100);
                                caster->CastCustomSpell(caster, 86273, &bp0, NULL, NULL, true);
                                caster->ToPlayer()->ResetHealingDoneInPastSecs(15);
                            }
                        }
                    }
                }

                else
                    caster->CastSpell(unitTarget, sSpellMgr->GetSpellWithRank(PALADIN_SPELL_HOLY_SHOCK_R1_DAMAGE, rank), true, 0);
            }
        }

        void Register()
        {
            // add dummy effect spell handler to Holy Shock
            OnEffect += SpellEffectFn(spell_pal_holy_shock_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_pal_holy_shock_SpellScript();
    }
};

class spell_pal_guardian_kings : public SpellScriptLoader
{
public:
    spell_pal_guardian_kings() : SpellScriptLoader("spell_pal_guardian_kings") { }

    class spell_pal_guardian_kings_SpellScript : public SpellScript
    {
                PrepareSpellScript(spell_pal_guardian_kings_SpellScript)
                bool Validate(SpellEntry const * /*spellEntry*/)
        {
                        if (!sSpellStore.LookupEntry(SPELL_GUARDIAN_OF_ANCIENT_KINGS))
                                        return false;
                        return true;
                }

        void HandleDummy(SpellEffIndex /*effIndex*/)
        {
            if (Unit *unitTarget = GetHitUnit())
            {
                uint32 spell_id = 86698;
                GetCaster()->CastSpell(GetCaster(), spell_id, true);
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_pal_guardian_kings_SpellScript::HandleDummy, EFFECT_0, SPELL_EFFECT_DUMMY);
        }
        };

        SpellScript *GetSpellScript() const
    {
        return new spell_pal_guardian_kings_SpellScript();
    }
};

void AddSC_paladin_spell_scripts()
{
    new spell_pal_ardent_defender();
    new spell_pal_blessing_of_faith();
    new spell_pal_holy_shock();
    new spell_pal_guardian_kings();
}