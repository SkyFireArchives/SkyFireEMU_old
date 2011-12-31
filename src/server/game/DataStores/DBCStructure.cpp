/*
 * Copyright (C) 2010-2012 Project SkyFire <http://www.projectskyfire.org/>
 * Copyright (C) 2005-2012 MaNGOS <http://www.getmangos.com/>
 * Copyright (C) 2008-2012 Trinity <http://www.trinitycore.org/>
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

#include "gamePCH.h"
#include "Common.h"
#include "SharedDefines.h"
#include "DBCStructure.h"
#include "DBCStores.h"

SpellEntry::SpellEntry(SpellEntry_n const* spell)
{
    Id = spell->Id;
    Attributes = spell->Attributes;
    AttributesEx = spell->AttributesEx;
    AttributesEx2 = spell->AttributesEx2;
    AttributesEx3 = spell->AttributesEx3;
    AttributesEx4 = spell->AttributesEx4;
    AttributesEx5 = spell->AttributesEx5;
    AttributesEx6 = spell->AttributesEx6;
    AttributesEx7 = spell->AttributesEx7;
    AttributesEx8 = spell->AttributesEx8;
    CastingTimeIndex = spell->CastingTimeIndex;
    DurationIndex = spell->DurationIndex;
    powerType = spell->powerType;
    rangeIndex = spell->rangeIndex;
    speed = spell->speed;
    SpellVisual[0] = spell->SpellVisual[0];
    SpellVisual[1] = spell->SpellVisual[1];
    SpellIconID = spell->SpellIconID;
    activeIconID = spell->activeIconID;
    SpellName = spell->SpellName;
    SpellShapeshiftId = spell->SpellShapeshiftId;
    SchoolMask = spell->SchoolMask;
    runeCostID = spell->runeCostID;
    SpellDifficultyId = spell->SpellDifficultyId;
    SpellScalingId = spell->SpellScalingId;
    SpellAuraOptionsId = spell->SpellAuraOptionsId;
    SpellAuraRestrictionsId = spell->SpellAuraRestrictionsId;
    SpellCastingRequirementsId = spell->SpellCastingRequirementsId;
    SpellCategoriesId = spell->SpellCategoriesId;
    SpellClassOptionsId = spell->SpellClassOptionsId;
    SpellCooldownsId = spell->SpellCooldownsId;
    SpellEquippedItemsId = spell->SpellEquippedItemsId;
    SpellInterruptsId = spell->SpellInterruptsId;
    SpellLevelsId = spell->SpellLevelsId;
    SpellPowerId = spell->SpellPowerId;
    SpellReagentsId = spell->SpellReagentsId;
    SpellTargetRestrictionsId = spell->SpellTargetRestrictionsId;
    SpellTotemsId = spell->SpellTotemsId;

    LoadSpellAddons();
}

void SpellEntry::LoadSpellAddons()
{
    SpellAuraOptionsEntry const* SpellAuraOptions = GetSpellAuraOptions();
    StackAmount = SpellAuraOptions ? SpellAuraOptions->StackAmount : 0;
    procChance = SpellAuraOptions ? SpellAuraOptions->procChance : 0;
    procCharges = SpellAuraOptions ? SpellAuraOptions->procCharges : 0;
    procFlags = SpellAuraOptions ? SpellAuraOptions->procFlags : 0;

    SpellAuraRestrictionsEntry const* SpellAuraRestrictions = GetSpellAuraRestrictions();
    CasterAuraState = SpellAuraRestrictions ? SpellAuraRestrictions->CasterAuraState : 0;
    TargetAuraState = SpellAuraRestrictions ? SpellAuraRestrictions->TargetAuraState : 0;
    CasterAuraStateNot = SpellAuraRestrictions ? SpellAuraRestrictions->CasterAuraStateNot : 0;
    TargetAuraStateNot = SpellAuraRestrictions ? SpellAuraRestrictions->TargetAuraStateNot : 0;
    casterAuraSpell = SpellAuraRestrictions ? SpellAuraRestrictions->casterAuraSpell : 0;
    targetAuraSpell = SpellAuraRestrictions ? SpellAuraRestrictions->targetAuraSpell : 0;
    excludeCasterAuraSpell = SpellAuraRestrictions ? SpellAuraRestrictions->excludeCasterAuraSpell : 0;
    excludeTargetAuraSpell = SpellAuraRestrictions ? SpellAuraRestrictions->excludeTargetAuraSpell : 0;

    SpellCastingRequirementsEntry const* SpellCastingRequirements = GetSpellCastingRequirements();
    FacingCasterFlags = SpellCastingRequirements ? SpellCastingRequirements->FacingCasterFlags : 0;
    AreaGroupId = SpellCastingRequirements ? SpellCastingRequirements->AreaGroupId : 0;
    RequiresSpellFocus = SpellCastingRequirements ? SpellCastingRequirements->RequiresSpellFocus : 0;

    SpellCategoriesEntry const* SpellCategories = GetSpellCategories();
    Category = SpellCategories ? SpellCategories->Category : 0;
    DmgClass = SpellCategories ? SpellCategories->DmgClass : 0;
    Dispel = SpellCategories ? SpellCategories->Dispel : 0;
    Mechanic = SpellCategories ? SpellCategories->Mechanic : 0;
    PreventionType = SpellCategories ? SpellCategories->PreventionType : 0;
    StartRecoveryCategory = SpellCategories ? SpellCategories->StartRecoveryCategory : 0;

    SpellClassOptionsEntry const* SpellClassOptions = GetSpellClassOptions();
    SpellFamilyFlags = SpellClassOptions ? SpellClassOptions->SpellFamilyFlags : flag96(0);
    SpellFamilyName = SpellClassOptions ? SpellClassOptions->SpellFamilyName : 0;

    SpellCooldownsEntry const* SpellCooldowns = GetSpellCooldowns();
    CategoryRecoveryTime = SpellCooldowns ? SpellCooldowns->CategoryRecoveryTime : 0;
    RecoveryTime = SpellCooldowns ? SpellCooldowns->RecoveryTime : 0;
    StartRecoveryTime = SpellCooldowns ? SpellCooldowns->StartRecoveryTime : 0;

    for(int i = 0; i < 3; i++)
    {
        SpellEffectEntry const* SpellEffect = GetSpellEffect(i);
        Effect[i] = SpellEffect ? SpellEffect->Effect : 0;
        EffectValueMultiplier[i] = SpellEffect ? SpellEffect->EffectValueMultiplier : 0;
        EffectApplyAuraName[i] = SpellEffect ? SpellEffect->EffectApplyAuraName : 0;
        EffectAmplitude[i] = SpellEffect ? SpellEffect->EffectAmplitude : 0;
        EffectBasePoints[i] = SpellEffect ? SpellEffect->EffectBasePoints : 0;
        EffectBonusCoefficient[i] = SpellEffect ? SpellEffect->EffectBonusCoefficient : 0;
        EffectDamageMultiplier[i] = SpellEffect ? SpellEffect->EffectDamageMultiplier : 0;
        EffectChainTarget[i] = SpellEffect ? SpellEffect->EffectChainTarget : 0;
        EffectDieSides[i] = SpellEffect ? SpellEffect->EffectDieSides : 0;
        EffectItemType[i] = SpellEffect ? SpellEffect->EffectItemType : 0;
        EffectMechanic[i] = SpellEffect ? SpellEffect->EffectMechanic : 0;
        EffectMiscValue[i] = SpellEffect ? SpellEffect->EffectMiscValue : 0;
        EffectMiscValueB[i] = SpellEffect ? SpellEffect->EffectMiscValueB : 0;
        EffectPointsPerComboPoint[i] = SpellEffect ? SpellEffect->EffectPointsPerComboPoint : 0;
        EffectRadiusIndex[i] = SpellEffect ? SpellEffect->EffectRadiusIndex : 0;
        EffectRealPointsPerLevel[i] = SpellEffect ? SpellEffect->EffectRealPointsPerLevel : 0;
        EffectSpellClassMask[i] = SpellEffect ? SpellEffect->EffectSpellClassMask : flag96(0);
        EffectTriggerSpell[i] = SpellEffect ? SpellEffect->EffectTriggerSpell : 0;
        EffectImplicitTargetA[i] = SpellEffect ? SpellEffect->EffectImplicitTargetA : 0;
        EffectImplicitTargetB[i] = SpellEffect ? SpellEffect->EffectImplicitTargetB : 0;
    }

    SpellEquippedItemsEntry const* SpellEquippedItems = GetSpellEquippedItems();
    EquippedItemClass = SpellEquippedItems ? SpellEquippedItems->EquippedItemClass : -1;
    EquippedItemInventoryTypeMask = SpellEquippedItems ? SpellEquippedItems->EquippedItemInventoryTypeMask : 0;
    EquippedItemSubClassMask = SpellEquippedItems ? SpellEquippedItems->EquippedItemSubClassMask : 0;

    SpellInterruptsEntry const* SpellInterrupts = GetSpellInterrupts();
    AuraInterruptFlags = SpellInterrupts ? SpellInterrupts->AuraInterruptFlags : 0;
    ChannelInterruptFlags = SpellInterrupts ? SpellInterrupts->ChannelInterruptFlags : 0;
    InterruptFlags = SpellInterrupts ? SpellInterrupts->InterruptFlags : 0;

    SpellLevelsEntry const* SpellLevels  = GetSpellLevels();
    baseLevel = SpellLevels ? SpellLevels->baseLevel : 0;
    maxLevel = SpellLevels ? SpellLevels->maxLevel : 0;
    spellLevel = SpellLevels ? SpellLevels->spellLevel : 0;

    SpellPowerEntry const* SpellPower = GetSpellPower();
    manaCost = SpellPower ? SpellPower->manaCost : 0;
    manaCostPerlevel = SpellPower ? SpellPower->manaCostPerlevel : 0;
    ManaCostPercentage = SpellPower ? SpellPower->ManaCostPercentage : 0;
    manaPerSecond = SpellPower ? SpellPower->manaPerSecond : 0;

    SpellReagentsEntry const* SpellReagents = GetSpellReagents();
    for(int i = 0; i < 8; i++)
    {
        Reagent[i] = SpellReagents ? SpellReagents->Reagent[i] : 0;
        ReagentCount[i] = SpellReagents ? SpellReagents->ReagentCount[i] : 0;
    }

    SpellScalingEntry const* SpellScaling = GetSpellScaling();

    ct_min = SpellScaling ? SpellScaling->ct_min : 0;
    ct_max = SpellScaling ? SpellScaling->ct_max : 0;
    ct_max_level = SpellScaling ? SpellScaling->ct_max_level : 0;
    SpellScaling_class = SpellScaling ? SpellScaling->class_ : 0;
    for(int i = 0; i < 3; i++)
    {
        coefMultiplier[i] = SpellScaling ? SpellScaling->coefMultiplier[i] : 0;
        coefRandomMultiplier[i] = SpellScaling ? SpellScaling->coefRandomMultiplier[i] : 0;
        coefOther[i] = SpellScaling ? SpellScaling->coefOther[i] : 0;
    }
    base_coef = SpellScaling ? SpellScaling->base_coef : 0;
    base_level_coef = SpellScaling ? SpellScaling->base_level_coef : 0;

    SpellShapeshiftEntry const* SpellShapeshift = GetSpellShapeshift();
    Stances = SpellShapeshift ? SpellShapeshift->Stances : 0;
    StancesNot = SpellShapeshift ? SpellShapeshift->StancesNot : 0;

    SpellTargetRestrictionsEntry const* SpellTargetRestrictions = GetSpellTargetRestrictions();
    MaxAffectedTargets = SpellTargetRestrictions ? SpellTargetRestrictions->MaxAffectedTargets : 0;
    MaxTargetLevel = SpellTargetRestrictions ? SpellTargetRestrictions->MaxTargetLevel : 0;
    TargetCreatureType = SpellTargetRestrictions ? SpellTargetRestrictions->TargetCreatureType : 0;
    Targets = SpellTargetRestrictions ? SpellTargetRestrictions->Targets : 0;

    SpellTotemsEntry const* SpellTotems = GetSpellTotems();
    for(int i = 0; i < 2; i++)
    {
        TotemCategory[i] = SpellTotems ? SpellTotems->TotemCategory[i] : 0;
        Totem[i] = SpellTotems ? SpellTotems->Totem[i] : 0;
    }
}

int32 SpellEntry::CalculateSimpleValue(uint32 eff) const
{
    if (SpellEffectEntry const* effectEntry = GetSpellEffectEntry(Id, eff))
        return effectEntry->EffectBasePoints;
    return 0;
}

uint32 const* SpellEntry::GetEffectSpellClassMask(uint32 eff) const
{
    if (SpellEffectEntry const* effectEntry = GetSpellEffectEntry(Id, eff))
        return &effectEntry->EffectSpellClassMask[0];
    return NULL;
}

SpellAuraOptionsEntry const* SpellEntry::GetSpellAuraOptions() const
{
    return SpellAuraOptionsId ? sSpellAuraOptionsStore.LookupEntry(SpellAuraOptionsId) : NULL;
}

SpellAuraRestrictionsEntry const* SpellEntry::GetSpellAuraRestrictions() const
{
    return SpellAuraRestrictionsId ? sSpellAuraRestrictionsStore.LookupEntry(SpellAuraRestrictionsId) : NULL;
}

SpellCastingRequirementsEntry const* SpellEntry::GetSpellCastingRequirements() const
{
    return SpellCastingRequirementsId ? sSpellCastingRequirementsStore.LookupEntry(SpellCastingRequirementsId) : NULL;
}

SpellCategoriesEntry const* SpellEntry::GetSpellCategories() const
{
    return SpellCategoriesId ? sSpellCategoriesStore.LookupEntry(SpellCategoriesId) : NULL;
}

SpellClassOptionsEntry const* SpellEntry::GetSpellClassOptions() const
{
    return SpellClassOptionsId ? sSpellClassOptionsStore.LookupEntry(SpellClassOptionsId) : NULL;
}

SpellCooldownsEntry const* SpellEntry::GetSpellCooldowns() const
{
    return SpellCooldownsId ? sSpellCooldownsStore.LookupEntry(SpellCooldownsId) : NULL;
}

SpellEffectEntry const* SpellEntry::GetSpellEffect(uint32 eff) const
{
    return GetSpellEffectEntry(Id, eff);
}

SpellEquippedItemsEntry const* SpellEntry::GetSpellEquippedItems() const
{
    return SpellEquippedItemsId ? sSpellEquippedItemsStore.LookupEntry(SpellEquippedItemsId) : NULL;
}

SpellInterruptsEntry const* SpellEntry::GetSpellInterrupts() const
{
    return SpellInterruptsId ? sSpellInterruptsStore.LookupEntry(SpellInterruptsId) : NULL;
}

SpellLevelsEntry const* SpellEntry::GetSpellLevels() const
{
    return SpellLevelsId ? sSpellLevelsStore.LookupEntry(SpellLevelsId) : NULL;
}

SpellPowerEntry const* SpellEntry::GetSpellPower() const
{
    return SpellPowerId ? sSpellPowerStore.LookupEntry(SpellPowerId) : NULL;
}

SpellReagentsEntry const* SpellEntry::GetSpellReagents() const
{
    return SpellReagentsId ? sSpellReagentsStore.LookupEntry(SpellReagentsId) : NULL;
}

SpellScalingEntry const* SpellEntry::GetSpellScaling() const
{
    return SpellScalingId ? sSpellScalingStore.LookupEntry(SpellScalingId) : NULL;
}

SpellShapeshiftEntry const* SpellEntry::GetSpellShapeshift() const
{
    return SpellShapeshiftId ? sSpellShapeshiftStore.LookupEntry(SpellShapeshiftId) : NULL;
}

SpellTargetRestrictionsEntry const* SpellEntry::GetSpellTargetRestrictions() const
{
    return SpellTargetRestrictionsId ? sSpellTargetRestrictionsStore.LookupEntry(SpellTargetRestrictionsId) : NULL;
}

SpellTotemsEntry const* SpellEntry::GetSpellTotems() const
{
    return SpellTotemsId ? sSpellTotemsStore.LookupEntry(SpellTotemsId) : NULL;
}

uint32 SpellEntry::GetManaCost() const
{
    SpellPowerEntry const* power = GetSpellPower();
    return power ? power->manaCost : 0;
}

uint32 SpellEntry::GetPreventionType() const
{
    SpellCategoriesEntry const* cat = GetSpellCategories();
    return cat ? cat->PreventionType : 0;
}

uint32 SpellEntry::GetCategory() const
{
    SpellCategoriesEntry const* cat = GetSpellCategories();
    return cat ? cat->Category : 0;
}

uint32 SpellEntry::GetStartRecoveryTime() const
{
    SpellCooldownsEntry const* cd = GetSpellCooldowns();
    return cd ? cd->StartRecoveryTime : 0;
}

uint32 SpellEntry::GetMechanic() const
{
    SpellCategoriesEntry const* cat = GetSpellCategories();
    return cat ? cat->Mechanic : 0;
}

uint32 SpellEntry::GetRecoveryTime() const
{
    SpellCooldownsEntry const* cd = GetSpellCooldowns();
    return cd ? cd->RecoveryTime : 0;
}

uint32 SpellEntry::GetCategoryRecoveryTime() const
{
    SpellCooldownsEntry const* cd = GetSpellCooldowns();
    return cd ? cd->CategoryRecoveryTime : 0;
}

uint32 SpellEntry::GetStartRecoveryCategory() const
{
    SpellCategoriesEntry const* cat = GetSpellCategories();
    return cat ? cat->StartRecoveryCategory : 0;
}

uint32 SpellEntry::GetSpellLevel() const
{
    SpellLevelsEntry const* levels = GetSpellLevels();
    return levels ? levels->spellLevel : 0;
}

int32 SpellEntry::GetEquippedItemClass() const
{
    SpellEquippedItemsEntry const* items = GetSpellEquippedItems();
    return items ? items->EquippedItemClass : -1;
}

uint32 SpellEntry::GetSpellFamilyName() const
{
    SpellClassOptionsEntry const* classOpt = GetSpellClassOptions();
    return classOpt ? classOpt->SpellFamilyName : 0;
}

uint32 SpellEntry::GetDmgClass() const
{
    SpellCategoriesEntry const* cat = GetSpellCategories();
    return cat ? cat->DmgClass : 0;
}

uint32 SpellEntry::GetDispel() const
{
    SpellCategoriesEntry const* cat = GetSpellCategories();
    return cat ? cat->Dispel : 0;
}

uint32 SpellEntry::GetMaxAffectedTargets() const
{
    SpellTargetRestrictionsEntry const* target = GetSpellTargetRestrictions();
    return target ? target->MaxAffectedTargets : 0;
}

uint32 SpellEntry::GetStackAmount() const
{
    SpellAuraOptionsEntry const* aura = GetSpellAuraOptions();
    return aura ? aura->StackAmount : 0;
}

uint32 SpellEntry::GetManaCostPercentage() const
{
    SpellPowerEntry const* power = GetSpellPower();
    return power ? power->ManaCostPercentage : 0;
}

uint32 SpellEntry::GetProcCharges() const
{
    SpellAuraOptionsEntry const* aura = GetSpellAuraOptions();
    return aura ? aura->procCharges : 0;
}

uint32 SpellEntry::GetProcChance() const
{
    SpellAuraOptionsEntry const* aura = GetSpellAuraOptions();
    return aura ? aura->procChance : 0;
}

uint32 SpellEntry::GetMaxLevel() const
{
    SpellLevelsEntry const* levels = GetSpellLevels();
    return levels ? levels->maxLevel : 0;
}

uint32 SpellEntry::GetTargetAuraState() const
{
    SpellAuraRestrictionsEntry const* aura = GetSpellAuraRestrictions();
    return aura ? aura->TargetAuraState : 0;
}

uint32 SpellEntry::GetManaPerSecond() const
{
    SpellPowerEntry const* power = GetSpellPower();
    return power ? power->manaPerSecond : 0;
}

uint32 SpellEntry::GetRequiresSpellFocus() const
{
    SpellCastingRequirementsEntry const* castReq = GetSpellCastingRequirements();
    return castReq ? castReq->RequiresSpellFocus : 0;
}

uint32 SpellEntry::GetSpellEffectIdByIndex(uint32 index) const
{
    SpellEffectEntry const* effect = GetSpellEffect(index);
    return effect ? effect->Effect : SPELL_EFFECT_NONE;
}

uint32 SpellEntry::GetAuraInterruptFlags() const
{
    SpellInterruptsEntry const* interrupt = GetSpellInterrupts();
    return interrupt ? interrupt->AuraInterruptFlags : 0;
}

uint32 SpellEntry::GetEffectImplicitTargetAByIndex(uint32 index) const
{
    SpellEffectEntry const* effect = GetSpellEffect(index);
    return effect ? effect->EffectImplicitTargetA : TARGET_NONE;
}

int32 SpellEntry::GetAreaGroupId() const
{
    SpellCastingRequirementsEntry const* castReq = GetSpellCastingRequirements();
    return castReq ? castReq->AreaGroupId : -1;
}

uint32 SpellEntry::GetFacingCasterFlags() const
{
    SpellCastingRequirementsEntry const* castReq = GetSpellCastingRequirements();
    return castReq ? castReq->FacingCasterFlags : -1;
}

uint32 SpellEntry::GetBaseLevel() const
{
    SpellLevelsEntry const* levels = GetSpellLevels();
    return levels ? levels->baseLevel : 0;
}

uint32 SpellEntry::GetInterruptFlags() const
{
    SpellInterruptsEntry const* interrupt = GetSpellInterrupts();
    return interrupt ? interrupt->InterruptFlags : 0;
}

uint32 SpellEntry::GetTargetCreatureType() const
{
    SpellTargetRestrictionsEntry const* target = GetSpellTargetRestrictions();
    return target ? target->TargetCreatureType : 0;
}

int32 SpellEntry::GetEffectMiscValue(uint32 index) const
{
    SpellEffectEntry const* effect = GetSpellEffect(index);
    return effect ? effect->EffectMiscValue : 0;
}

uint32 SpellEntry::GetStances() const
{
    SpellShapeshiftEntry const* ss = GetSpellShapeshift();
    return ss ? ss->Stances : 0;
}

uint32 SpellEntry::GetStancesNot() const
{
    SpellShapeshiftEntry const* ss = GetSpellShapeshift();
    return ss ? ss->StancesNot : 0;
}

uint32 SpellEntry::GetProcFlags() const
{
    SpellAuraOptionsEntry const* aura = GetSpellAuraOptions();
    return aura ? aura->procFlags : 0;
}

uint32 SpellEntry::GetChannelInterruptFlags() const
{
    SpellInterruptsEntry const* interrupt = GetSpellInterrupts();
    return interrupt ? interrupt->ChannelInterruptFlags : 0;
}

uint32 SpellEntry::GetManaCostPerLevel() const
{
    SpellPowerEntry const* power = GetSpellPower();
    return power ? power->manaCostPerlevel : 0;
}

uint32 SpellEntry::GetCasterAuraState() const
{
    SpellAuraRestrictionsEntry const* aura = GetSpellAuraRestrictions();
    return aura ? aura->CasterAuraState : 0;
}

uint32 SpellEntry::GetTargets() const
{
    SpellTargetRestrictionsEntry const* target = GetSpellTargetRestrictions();
    return target ? target->Targets : 0;
}

uint32 SpellEntry::GetEffectApplyAuraNameByIndex(uint32 index) const
{
    SpellEffectEntry const* effect = GetSpellEffect(index);
    return effect ? effect->EffectApplyAuraName : 0;
}