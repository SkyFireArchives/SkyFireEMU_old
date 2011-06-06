/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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

/* ScriptData
SDName: trial_of_the_crusader
SD%Complete: ??%
SDComment: based on /dev/rsa
SDCategory: Crusader Coliseum
EndScriptData */

// Known bugs:
//    - They should be floating but they aren't respecting the floor =(
//    - Lacks the powering up effect that leads to Empowering
//    - There's a workaround for the shared life effect

#include "ScriptPCH.h"
#include "trial_of_the_crusader.h"

enum Yells
{
    SAY_AGGRO           = -1649040,
    SAY_DEATH           = -1649041,
    SAY_BERSERK         = -1649042,
    EMOTE_SHIELD        = -1649043,
    SAY_SHIELD          = -1649044,
    SAY_KILL1           = -1649045,
    SAY_KILL2           = -1649046,
    EMOTE_LIGHT_VORTEX  = -1649047,
    SAY_LIGHT_VORTEX    = -1649048,
    EMOTE_DARK_VORTEX   = -1649049,
    SAY_DARK_VORTEX     = -1649050,
};

enum Equipment
{
    EQUIP_MAIN_1         = 49303,
    EQUIP_OFFHAND_1      = 47146,
    EQUIP_RANGED_1       = 47267,
    EQUIP_MAIN_2         = 45990,
    EQUIP_OFFHAND_2      = 47470,
    EQUIP_RANGED_2       = 47267,
    EQUIP_DONE           = EQUIP_NO_CHANGE,
};

enum Summons
{
    NPC_DARK_ESSENCE     = 34567,
    NPC_LIGHT_ESSENCE    = 34568,

    NPC_UNLEASHED_DARK   = 34628,
    NPC_UNLEASHED_LIGHT  = 34630,
};

enum BossSpells
{
    SPELL_LIGHT_TWIN_SPIKE      = 66075,
    SPELL_LIGHT_SURGE           = 65766,
    SPELL_LIGHT_SHIELD          = 65858,
    SPELL_LIGHT_TWIN_PACT       = 65876,
    SPELL_LIGHT_VORTEX          = 66046,
    SPELL_LIGHT_TOUCH           = 67297,

    SPELL_DARK_TWIN_SPIKE       = 66069,
    SPELL_DARK_SURGE            = 65768,
    SPELL_DARK_SHIELD           = 65874,
    SPELL_DARK_TWIN_PACT        = 65875,
    SPELL_DARK_VORTEX           = 66058,
    SPELL_DARK_TOUCH            = 67282,

    SPELL_TWIN_POWER            = 65916,
    SPELL_LIGHT_ESSENCE         = 65686,
    SPELL_DARK_ESSENCE          = 65684,
    SPELL_BERSERK               = 64238,
    SPELL_NONE                  = 0,

    SPELL_EMPOWERED_DARK        = 67215,
    SPELL_EMPOWERED_LIGHT       = 67218,

    SPELL_UNLEASHED_DARK        = 65808,
    SPELL_UNLEASHED_LIGHT       = 65795,
    //PowerUp 67604

    SPELL_POWERING_UP_1         = 67590,
    SPELL_POWERING_UP_2         = 67602,
    SPELL_POWERING_UP_3         = 67603,
    SPELL_POWERING_UP_4         = 67604,
};

enum Actions
{
    ACTION_VORTEX,
    ACTION_PACT
};

enum ePoweringUp
{
    SPELL_SURGE_OF_SPEED_1      = 65828,
    SPELL_SURGE_OF_SPEED_2      = 67241,
    SPELL_SURGE_OF_SPEED_3      = 67242,
    SPELL_SURGE_OF_SPEED_4      = 67243,
    SPELL_EMPOWERED_DARKNESS_1  = 65724,
    SPELL_EMPOWERED_DARKNESS_2  = 67213,
    SPELL_EMPOWERED_DARKNESS_3  = 67214,
    SPELL_EMPOWERED_DARKNESS_4  = 67215,
    SPELL_EMPOWERED_LIGHT_1     = 65748,
    SPELL_EMPOWERED_LIGHT_2     = 67216,
    SPELL_EMPOWERED_LIGHT_3     = 67217,
    SPELL_EMPOWERED_LIGHT_4     = 67218,
};

/*######
## boss_twin_base
######*/

struct boss_twin_baseAI : public ScriptedAI
{
    boss_twin_baseAI(Creature* pCreature) : ScriptedAI(pCreature), Summons(me)
    {
        me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
        me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);
        pInstance = (InstanceScript*)pCreature->GetInstanceScript();
        bWipe = false;
        bEssence = false;
    }

    InstanceScript* pInstance;
    SummonList Summons;

    uint8  Stage;
    bool   bBerserk;
    bool   bWipe;
    bool   bEssence;
    uint8  WaveCount;
    uint32 ColorballsTimer;
    uint32 SpecialAbilityTimer;
    uint32 SpikeTimer;
    uint32 TouchTimer;
    uint32 BerserkTimer;

    uint32 VortexSay;
    uint32 VortexEmote;
    uint32 SisterNpcId;
    uint32 ColorballNpcId;
    uint32 EssenceNpcId;
    uint32 EssenceSpellId;
    uint32 OtherEssenceSpellId;
    uint32 EmpoweredWeaknessSpellId;
    uint32 SurgeSpellId;
    uint32 VortexSpellId;
    uint32 ShieldSpellId;
    uint32 TwinPactSpellId;
    uint32 SpikeSpellId;
    uint32 TouchSpellId;

    Position HomeLocation;
    Position EssenceLocation[2];

    void Reset() 
    {
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
        me->SetReactState(REACT_PASSIVE);
        bBerserk = false;

        WaveCount = 1;
        ColorballsTimer = 15*IN_MILLISECONDS;
        SpecialAbilityTimer = 45*IN_MILLISECONDS;
        SpikeTimer = 20*IN_MILLISECONDS;
        TouchTimer = urand(10, 15)*IN_MILLISECONDS;
        BerserkTimer = 6*MINUTE*IN_MILLISECONDS;

        Summons.DespawnAll();
        
        if (bWipe)
        {
            if (pInstance)
                pInstance->SetData(TYPE_VALKIRIES, FAIL);

            me->DespawnOrUnsummon();
        }
    }

    void MovementInform(uint32 uiType, uint32 uiId)
    {
        if (uiType != POINT_MOTION_TYPE) return;

        switch (uiId)
        {
            case 0:
                me->GetMotionMaster()->MovePoint(1, HomeLocation.GetPositionX(), HomeLocation.GetPositionY(), HomeLocation.GetPositionZ());
                me->SetHomePosition(HomeLocation);
                break;
            case 1:
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetReactState(REACT_AGGRESSIVE);
                me->SetInCombatWithZone();
                break;
        }
    }

    void KilledUnit(Unit* pWho)
    {
        if (pWho->GetTypeId() == TYPEID_PLAYER)
        {
            DoScriptText(urand(0, 1) ? SAY_KILL1 : SAY_KILL2, me);
            if (pInstance)
                pInstance->SetData(DATA_TRIBUTE_TO_IMMORTALITY_ELEGIBLE, 0);
        }
    }

    void JustSummoned(Creature* pSummoned)
    {
        switch (pSummoned->GetEntry())
        {
            case NPC_UNLEASHED_DARK:
            case NPC_UNLEASHED_LIGHT:
                pSummoned->SetCorpseDelay(0);
                break;
        }
        Summons.Summon(pSummoned);
    }

    void SummonedCreatureDespawn(Creature* pSummoned)
    {
        switch (pSummoned->GetEntry())
        {
            case NPC_LIGHT_ESSENCE:
            case NPC_DARK_ESSENCE:
                Map* pMap = me->GetMap();
                Map::PlayerList const &lPlayers = pMap->GetPlayers();
                for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                {
                    Unit* pPlayer = itr->getSource();
                    if (!pPlayer) continue;
                    if (pPlayer->isAlive())
                        if (pSummoned->GetEntry() == NPC_LIGHT_ESSENCE)
                            pPlayer->RemoveAurasDueToSpell(SPELL_LIGHT_ESSENCE);
                        if (pSummoned->GetEntry() == NPC_DARK_ESSENCE)
                            pPlayer->RemoveAurasDueToSpell(SPELL_DARK_ESSENCE);
                }
                break;
        }
        Summons.Despawn(pSummoned);
    }

    void DamageTaken(Unit* pDoneBy, uint32 &uiDamage)
    {
        if (!me || !me->isAlive())
            return;

        if (pDoneBy->GetGUID() == me->GetGUID())
            return;

        if (pDoneBy->ToPlayer())
        {
            if (pDoneBy->HasAura(OtherEssenceSpellId))
                uiDamage += uiDamage/2;
            if (pDoneBy->HasAura(EmpoweredWeaknessSpellId))
                uiDamage += uiDamage;
            else
                if (pDoneBy->HasAura(EssenceSpellId))
                    uiDamage /= 2;
        }

        if (pInstance)
        {
            if (Creature* pSister = GetSister())
            {
                pSister->DealDamage(pSister, uiDamage);
                pSister->LowerPlayerDamageReq(uiDamage);
            }
        }
    }

    void SpellHit(Unit* caster, const SpellEntry* spell)
    {
        if (caster->GetGUID() == me->GetGUID())
            if (spell->Effect[0] == 136) // Effect Heal
                if (pInstance)
                {
                    if (Creature* pSister = GetSister())
                        pSister->DealHeal(pSister, spell->EffectBasePoints[0]);
                }
    }

    void SummonColorballs(uint8 quantity)
    {
        float x0 = ToCCommonLoc[1].GetPositionX(), y0 = ToCCommonLoc[1].GetPositionY(), r = 47.0f;
        float y = y0;
        for (uint8 i = 0; i < quantity; i++)
        {
            float x = float(urand(uint32(x0 - r), uint32(x0 + r)));
            if (urand(0, 1))
                y = y0 + sqrt(pow(r, 2) - pow((x-x0), 2));
            else
                y = y0 - sqrt(pow(r, 2) - pow((x-x0), 2));
            me->SummonCreature(ColorballNpcId, x, y, me->GetPositionZ(), TEMPSUMMON_CORPSE_DESPAWN);
        }
    }

    void JustDied(Unit* /*pKiller*/)
    {
        DoScriptText(SAY_DEATH, me);
        if (pInstance)
        {
            if (Creature* pSister = GetSister())
            {
                if (!pSister->isAlive())
                {
                    pInstance->SetData(TYPE_VALKIRIES, DONE);
                    Summons.DespawnAll();
                }
                else pInstance->SetData(TYPE_VALKIRIES, SPECIAL);
            }
        }
        Summons.DespawnAll();
    }

    // Called when sister pointer needed
    Creature* GetSister()
    {
        return Unit::GetCreature((*me), pInstance->GetData64(SisterNpcId));
    }

    void EnterCombat(Unit* /*pWho*/)
    {
        DoScriptText(SAY_AGGRO, me);
        DoCast(me, SurgeSpellId);
        me->SetInCombatWithZone();
        bWipe = true;

        if (pInstance)
            pInstance->SetData(TYPE_VALKIRIES, IN_PROGRESS);
    }

    void DoAction(const int32 action)
    {
        switch (action)
        {
        case ACTION_VORTEX:
            Stage = me->GetEntry() == NPC_LIGHTBANE ? 2 : 1;
            break;
        case ACTION_PACT:
            Stage = me->GetEntry() == NPC_LIGHTBANE ? 1 : 2;
            DoCast(me, SPELL_TWIN_POWER);
            break;
        }
    }

    void UpdateAI(const uint32 uiDiff)
    {
        if(!bEssence)
        {
            me->SummonCreature(EssenceNpcId, EssenceLocation[0].GetPositionX(), EssenceLocation[0].GetPositionY(), EssenceLocation[0].GetPositionZ());
            me->SummonCreature(EssenceNpcId, EssenceLocation[1].GetPositionX(), EssenceLocation[1].GetPositionY(), EssenceLocation[1].GetPositionZ());
            bEssence = true;
        }

        if (!pInstance || !UpdateVictim())
            return;

        switch (Stage)
        {
            case 0:
                break;
            case 1: // Vortex
                if (SpecialAbilityTimer <= uiDiff)
                {
                    if (Creature* pSister = GetSister())
                        pSister->AI()->DoAction(ACTION_VORTEX);
                    DoScriptText(VortexEmote, me);
                    DoScriptText(VortexSay, me);
                    DoCastAOE(VortexSpellId);
                    Stage = 0;
                    SpecialAbilityTimer = 45*IN_MILLISECONDS;
                }
                else
                    SpecialAbilityTimer -= uiDiff;
                break;
            case 2: // Shield+Pact
                if (SpecialAbilityTimer <= uiDiff)
                {
                    if (Creature* pSister = GetSister())
                        pSister->AI()->DoAction(ACTION_PACT);
                    DoScriptText(EMOTE_SHIELD, me);
                    DoScriptText(SAY_SHIELD, me);
                    DoCast(me, ShieldSpellId);
                    DoCast(me, TwinPactSpellId);
                    Stage = 0;
                    SpecialAbilityTimer = 45*IN_MILLISECONDS;
                }
                else
                    SpecialAbilityTimer -= uiDiff;
                break;
            default:
                break;
        }

        if (SpikeTimer <= uiDiff)
        {
            DoCastVictim(SpikeSpellId);
            SpikeTimer = 20*IN_MILLISECONDS;
        }
        else
            SpikeTimer -= uiDiff;

        if (IsHeroic() && TouchTimer <= uiDiff)
        {
            if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 200, true, OtherEssenceSpellId))
                me->CastCustomSpell(TouchSpellId, SPELLVALUE_MAX_TARGETS, 1, pTarget, false);
            TouchTimer = urand(10, 15)*IN_MILLISECONDS;
        }
        else TouchTimer -= uiDiff;

        if (ColorballsTimer <= uiDiff)
        {
            if (WaveCount >= 2)
            {
                SummonColorballs(12);
                WaveCount = 0;
            }
            else
            {
                SummonColorballs(2);
                WaveCount++;
            }
            ColorballsTimer = 15*IN_MILLISECONDS;
        }
        else
            ColorballsTimer -= uiDiff;

        if (!bBerserk && BerserkTimer <= uiDiff)
        {
            DoCast(me, SPELL_BERSERK);
            DoScriptText(SAY_BERSERK, me);
            bBerserk = true;
        }
        else
            BerserkTimer -= uiDiff;

        DoMeleeAttackIfReady();
    }
};

/*######
## boss_fjola
######*/

class boss_fjola : public CreatureScript
{
public:
    boss_fjola() : CreatureScript("boss_fjola") { }

    struct boss_fjolaAI : public boss_twin_baseAI
    {
        boss_fjolaAI(Creature* pCreature) : boss_twin_baseAI(pCreature) {}

        void Reset() 
        {
            boss_twin_baseAI::Reset();
            SetEquipmentSlots(false, EQUIP_MAIN_1, EQUIP_OFFHAND_1, EQUIP_RANGED_1);
            Stage = 0;
            VortexEmote = EMOTE_LIGHT_VORTEX;
            VortexSay = SAY_LIGHT_VORTEX;
            SisterNpcId = NPC_DARKBANE;
            ColorballNpcId = NPC_UNLEASHED_LIGHT;
            EssenceNpcId = NPC_LIGHT_ESSENCE;
            EssenceSpellId = SPELL_LIGHT_ESSENCE;
            OtherEssenceSpellId = SPELL_DARK_ESSENCE;
            EmpoweredWeaknessSpellId = SPELL_EMPOWERED_DARK;
            SurgeSpellId = SPELL_LIGHT_SURGE;
            VortexSpellId = SPELL_LIGHT_VORTEX;
            ShieldSpellId = SPELL_LIGHT_SHIELD;
            TwinPactSpellId = SPELL_LIGHT_TWIN_PACT;
            TouchSpellId = SPELL_LIGHT_TOUCH;
            SpikeSpellId = SPELL_LIGHT_TWIN_SPIKE;

            HomeLocation = ToCCommonLoc[8];
            EssenceLocation[0] = TwinValkyrsLoc[2];
            EssenceLocation[1] = TwinValkyrsLoc[3];

            if (pInstance)
            {
                pInstance->DoStopTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT,  EVENT_START_TWINS_FIGHT);
            }
        }

        void EnterCombat(Unit* pWho)
        {
            boss_twin_baseAI::EnterCombat(pWho);
            if (pInstance)
            {
                pInstance->DoStartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT,  EVENT_START_TWINS_FIGHT);
            }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_fjolaAI(pCreature);
    }
};


/*######
## boss_eydis
######*/

class boss_eydis : public CreatureScript
{
public:
    boss_eydis() : CreatureScript("boss_eydis") { }

    struct boss_eydisAI : public boss_twin_baseAI
    {
        boss_eydisAI(Creature* pCreature) : boss_twin_baseAI(pCreature) {}

        void Reset() 
        {
            boss_twin_baseAI::Reset();
            SetEquipmentSlots(false, EQUIP_MAIN_2, EQUIP_OFFHAND_2, EQUIP_RANGED_2);
            Stage = 1;
            VortexEmote = EMOTE_DARK_VORTEX;
            VortexSay = SAY_DARK_VORTEX;
            SisterNpcId = NPC_LIGHTBANE;
            ColorballNpcId = NPC_UNLEASHED_DARK;
            EssenceNpcId = NPC_DARK_ESSENCE;
            EssenceSpellId = SPELL_DARK_ESSENCE;
            OtherEssenceSpellId = SPELL_LIGHT_ESSENCE;
            EmpoweredWeaknessSpellId = SPELL_EMPOWERED_LIGHT;
            SurgeSpellId = SPELL_DARK_SURGE;
            VortexSpellId = SPELL_DARK_VORTEX;
            ShieldSpellId = SPELL_DARK_SHIELD;
            TwinPactSpellId = SPELL_DARK_TWIN_PACT;
            TouchSpellId = SPELL_DARK_TOUCH;
            SpikeSpellId = SPELL_DARK_TWIN_SPIKE;

            HomeLocation = ToCCommonLoc[9];
            EssenceLocation[0] = TwinValkyrsLoc[0];
            EssenceLocation[1] = TwinValkyrsLoc[1];
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_eydisAI(pCreature);
    }
};


class mob_essence_of_twin : public CreatureScript
{
public:
    mob_essence_of_twin() : CreatureScript("mob_essence_of_twin") { }

    bool OnGossipHello(Player* player, Creature* creature)
    {
        switch (creature->GetEntry())
        {
            case NPC_LIGHT_ESSENCE:
                player->RemoveAura(SPELL_DARK_ESSENCE);
                player->CastSpell(player, SPELL_LIGHT_ESSENCE, true);
                break;
            case NPC_DARK_ESSENCE:
                player->RemoveAura(SPELL_LIGHT_ESSENCE);
                player->CastSpell(player, SPELL_DARK_ESSENCE, true);
                break;
            default:
                break;
        }
        player->CLOSE_GOSSIP_MENU();
        return true;
    }
};


struct mob_unleashed_ballAI : public ScriptedAI
{
    mob_unleashed_ballAI(Creature *pCreature) : ScriptedAI(pCreature)
    {
        pInstance = (InstanceScript*)pCreature->GetInstanceScript();
    }

    InstanceScript* pInstance;
    uint32 RangeCheckTimer;

    void MoveToNextPoint()
    {
        float x0 = ToCCommonLoc[1].GetPositionX(), y0 = ToCCommonLoc[1].GetPositionY(), r = 47.0f;
        float y = y0;
        float x = float(urand(uint32(x0 - r), uint32(x0 + r)));
        if (urand(0, 1))
            y = y0 + sqrt(pow(r, 2) - pow((x-x0), 2));
        else
            y = y0 - sqrt(pow(r, 2) - pow((x-x0), 2));
        me->GetMotionMaster()->MovePoint(0, x, y, me->GetPositionZ());
    }

    void Reset()
    {
        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
        me->SetReactState(REACT_PASSIVE);
        me->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
        me->SetFlying(true);
        SetCombatMovement(false);
        MoveToNextPoint();
        RangeCheckTimer = IN_MILLISECONDS;
    }

    void MovementInform(uint32 uiType, uint32 uiId)
    {
        if (uiType != POINT_MOTION_TYPE) return;

        switch (uiId)
        {
            case 0:
                if (urand(0, 3) == 0)
                    MoveToNextPoint();
                else
                    me->DisappearAndDie();
                break;
        }
    }
};

class mob_unleashed_dark : public CreatureScript
{
public:
    mob_unleashed_dark() : CreatureScript("mob_unleashed_dark") { }

    struct mob_unleashed_darkAI : public mob_unleashed_ballAI
    {
        mob_unleashed_darkAI(Creature *pCreature) : mob_unleashed_ballAI(pCreature) {}

        void SpellHitTarget(Unit* pWho, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_UNLEASHED_DARK && pWho->HasAura(SPELL_DARK_ESSENCE))
            {   
                pWho->CastSpell(pWho, RAID_MODE(SPELL_POWERING_UP_1, SPELL_POWERING_UP_2, SPELL_POWERING_UP_3, SPELL_POWERING_UP_4), true);
                int n = 5 + rand() % 8;
                if(Aura * aura = pWho->GetAura(RAID_MODE(SPELL_POWERING_UP_1, SPELL_POWERING_UP_2, SPELL_POWERING_UP_3, SPELL_POWERING_UP_4)))
                {
                    if(aura->GetStackAmount()+n > 100)
                        aura->SetStackAmount(100, true);
                    else
                        aura->SetStackAmount(aura->GetStackAmount()+n, true);
                }
            }
        }
        
        void UpdateAI(const uint32 uiDiff)
        {
            if (RangeCheckTimer < uiDiff)
            {
                if (Unit *pTarget = me->SelectNearestTarget(2.0f))
                    if (pTarget->GetTypeId() == TYPEID_PLAYER && pTarget->isAlive())
                    {
                        DoCastAOE(SPELL_UNLEASHED_DARK);
                        me->GetMotionMaster()->MoveIdle();
                        me->DespawnOrUnsummon(1000);
                    }
                RangeCheckTimer = IN_MILLISECONDS;
            }
            else RangeCheckTimer -= uiDiff;
        }
    };

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new mob_unleashed_darkAI(pCreature);
    }
};


class mob_unleashed_light : public CreatureScript
{
public:
    mob_unleashed_light() : CreatureScript("mob_unleashed_light") { }

    struct mob_unleashed_lightAI : public mob_unleashed_ballAI
    {
        mob_unleashed_lightAI(Creature *pCreature) : mob_unleashed_ballAI(pCreature) {}

        void SpellHitTarget(Unit* pWho, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_UNLEASHED_LIGHT && pWho->HasAura(SPELL_LIGHT_ESSENCE))
            { 
                pWho->CastSpell(pWho, RAID_MODE(SPELL_POWERING_UP_1, SPELL_POWERING_UP_2, SPELL_POWERING_UP_3, SPELL_POWERING_UP_4), true);
                int n = 5 + rand() % 8;
                if(Aura * aura = pWho->GetAura(RAID_MODE(SPELL_POWERING_UP_1, SPELL_POWERING_UP_2, SPELL_POWERING_UP_3, SPELL_POWERING_UP_4)))
                {
                    if(aura->GetStackAmount()+n > 100)
                        aura->SetStackAmount(100, true);
                    else
                        aura->SetStackAmount(aura->GetStackAmount()+n, true);
                }
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (RangeCheckTimer < uiDiff)
            {
                if (Unit *pTarget = me->SelectNearestTarget(2.0f))
                    if (pTarget->GetTypeId() == TYPEID_PLAYER && pTarget->isAlive())
                    {
                        DoCastAOE(SPELL_UNLEASHED_LIGHT);
                        me->GetMotionMaster()->MoveIdle();
                        me->DespawnOrUnsummon(1000);
                    }
                RangeCheckTimer = IN_MILLISECONDS;
            }
            else RangeCheckTimer -= uiDiff;
        }
    };

    CreatureAI* GetAI(Creature *pCreature) const
    {
        return new mob_unleashed_lightAI(pCreature);
    }
};

class spell_powering_up : public SpellScriptLoader
{
public:
    spell_powering_up() : SpellScriptLoader("spell_powering_up") { }

    class spell_powering_up_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_powering_up_AuraScript);

        void OnApply(AuraEffect const* /*aurEff*/, AuraEffectHandleModes /*mode*/)
        {
            if (Unit* pTarget = GetTarget())
            {
                if (Aura* pAura = pTarget->GetAura(GetId()))
                {
                    if (pAura->GetStackAmount() == 100)
                    {
                        if (pTarget->HasAura(SPELL_DARK_ESSENCE))
                        {
                            switch(GetId())
                            {
                            case SPELL_POWERING_UP_1:
                                pTarget->CastSpell(pTarget, SPELL_EMPOWERED_DARKNESS_1, true) ;
                                break;
                            case SPELL_POWERING_UP_2:
                                pTarget->CastSpell(pTarget, SPELL_EMPOWERED_DARKNESS_2, true) ;
                                break;
                            case SPELL_POWERING_UP_3:
                                pTarget->CastSpell(pTarget, SPELL_EMPOWERED_DARKNESS_3, true) ;
                                break;
                            case SPELL_POWERING_UP_4:
                                pTarget->CastSpell(pTarget, SPELL_EMPOWERED_DARKNESS_4, true) ;
                                break;
                            }
                        }
                        if (pTarget->HasAura(SPELL_LIGHT_ESSENCE))
                        {
                            switch(GetId())
                            {
                            case SPELL_POWERING_UP_1:
                                pTarget->CastSpell(pTarget, SPELL_EMPOWERED_LIGHT_1, true) ;
                                break;
                            case SPELL_POWERING_UP_2:
                                pTarget->CastSpell(pTarget, SPELL_EMPOWERED_LIGHT_2, true) ;
                                break;
                            case SPELL_POWERING_UP_3:
                                pTarget->CastSpell(pTarget, SPELL_EMPOWERED_LIGHT_3, true) ;
                                break;
                            case SPELL_POWERING_UP_4:
                                pTarget->CastSpell(pTarget, SPELL_EMPOWERED_LIGHT_4, true) ;
                                break;
                            }
                        }
                        pTarget->RemoveAurasDueToSpell(GetId());
                    }
                }
            }
        }

        void Register()
        {
            OnEffectApply += AuraEffectApplyFn(spell_powering_up_AuraScript::OnApply, EFFECT_0, SPELL_AURA_DUMMY, AURA_EFFECT_HANDLE_REAL);
        }
    };

    AuraScript* GetAuraScript() const
    {
        return new spell_powering_up_AuraScript();
    }

    class spell_powering_up_SpellScript : public SpellScript
    {
    public:
        PrepareSpellScript(spell_powering_up_SpellScript)
        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            return true;
        }

        void HandleScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (Unit* pTarget = GetTargetUnit())
                if (rand()%100 < 30)
                {
                    switch(GetSpellInfo()->Id)
                    {
                    case SPELL_POWERING_UP_1:
                        pTarget->CastSpell(pTarget, SPELL_SURGE_OF_SPEED_1, true) ;
                        break;
                    case SPELL_POWERING_UP_2:
                        pTarget->CastSpell(pTarget, SPELL_SURGE_OF_SPEED_2, true) ;
                        break;
                    case SPELL_POWERING_UP_3:
                        pTarget->CastSpell(pTarget, SPELL_SURGE_OF_SPEED_3, true) ;
                        break;
                    case SPELL_POWERING_UP_4:
                        pTarget->CastSpell(pTarget, SPELL_SURGE_OF_SPEED_4, true) ;
                        break;
                    }
                }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_powering_up_SpellScript::HandleScriptEffect, EFFECT_1, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_powering_up_SpellScript();
    }
};

void AddSC_boss_twin_valkyr()
{
    new boss_fjola();
    new boss_eydis();
    new mob_unleashed_light();
    new mob_unleashed_dark();
    new mob_essence_of_twin();
    new spell_powering_up();
}