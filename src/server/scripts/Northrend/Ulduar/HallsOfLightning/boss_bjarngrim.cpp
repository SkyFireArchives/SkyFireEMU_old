/*
 * Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
 * Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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
SDName: Boss General Bjarngrim
SD%Complete: 70%
SDComment: Waypoint needed, we expect boss to always have 2x Stormforged Lieutenant following
SDCategory: Halls of Lightning
EndScriptData */

#include "ScriptPCH.h"
#include "halls_of_lightning.h"

enum eEnums
{
    //Yell
    SAY_AGGRO                               = -1602000,
    SAY_SLAY_1                              = -1602001,
    SAY_SLAY_2                              = -1602002,
    SAY_SLAY_3                              = -1602003,
    SAY_DEATH                               = -1602004,
    SAY_BATTLE_STANCE                       = -1602005,
    EMOTE_BATTLE_STANCE                     = -1602006,
    SAY_BERSEKER_STANCE                     = -1602007,
    EMOTE_BERSEKER_STANCE                   = -1602008,
    SAY_DEFENSIVE_STANCE                    = -1602009,
    EMOTE_DEFENSIVE_STANCE                  = -1602010,

    SPELL_DEFENSIVE_STANCE                  = 53790,
    //SPELL_DEFENSIVE_AURA                    = 41105,
    SPELL_SPELL_REFLECTION                  = 36096,
    SPELL_PUMMEL                            = 12555,
    SPELL_KNOCK_AWAY                        = 52029,
    SPELL_IRONFORM                          = 52022,

    SPELL_BERSEKER_STANCE                   = 53791,
    //SPELL_BERSEKER_AURA                     = 41107,
    SPELL_INTERCEPT                         = 58769,
    SPELL_WHIRLWIND                         = 52027,
    SPELL_CLEAVE                            = 15284,

    SPELL_BATTLE_STANCE                     = 53792,
    //SPELL_BATTLE_AURA                       = 41106,
    SPELL_MORTAL_STRIKE                     = 16856,
    SPELL_SLAM                              = 52026,
    SPELL_DUAL_WIELD                        = 42459,

    //OTHER SPELLS
    //SPELL_CHARGE_UP                       = 52098,      // only used when starting walk from one platform to the other
    SPELL_TEMPORARY_ELECTRICAL_CHARGE       = 52092,      // triggered part of above
    TEMPORARY_ELECTRICAL_CHARGE_AURA        = 52097,

    NPC_STORMFORGED_LIEUTENANT              = 29240,
    SPELL_ARC_WELD                          = 59085,
    SPELL_RENEW_STEEL_N                     = 52774,
    SPELL_RENEW_STEEL_H                     = 59160,

    EQUIP_SWORD                             = 37871,
    EQUIP_SHIELD                            = 35642,
    EQUIP_MACE                              = 43623,

    STANCE_DEFENSIVE                        = 0,
    STANCE_BERSERKER                        = 1,
    STANCE_BATTLE                           = 2
};

#define ACHIEVEMENT_LIGHTNING_STRUCK 1834

class boss_bjarngrim : public CreatureScript
{
public:
    boss_bjarngrim() : CreatureScript("boss_bjarngrim") { }

    struct boss_bjarngrimAI : public ScriptedAI
    {
        boss_bjarngrimAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
            Stance = STANCE_BATTLE;
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            memset(&StormforgedLieutenantGUID, 0, sizeof(StormforgedLieutenantGUID));
        }

        void Reset()
        {
            DespawnCreatures(NPC_STORMFORGED_LIEUTENANT, 10);

            bChangingStance = false;

            ChargingStatus = 0;
            ChargeTimer = 1000;

            ChangeStanceTimer = 20000 + rand()%5000;

            ReflectionTimer = 8000;
            KnockAwayTimer = 20000;
            PummelTimer = 10000;
            IronformTimer = 25000;

            InterceptTimer = 5000;
            WhirlwindTimer = 10000;
            CleaveTimer = 8000;

            MortalStrikeTimer = 8000;
            SlamTimer = 10000;

            if (Creature* Lieutenant = me->SummonCreature(NPC_STORMFORGED_LIEUTENANT, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000))
            {
                Lieutenant->GetMotionMaster()->MoveFollow(me, 0.5, 1.5, MOTION_SLOT_ACTIVE);
                Lieutenant->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
            }
            if (Creature* Lieutenant = me->SummonCreature(NPC_STORMFORGED_LIEUTENANT, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 3000))
            {
                Lieutenant->GetMotionMaster()->MoveFollow(me, 0.5, -1.5, MOTION_SLOT_ACTIVE);
                Lieutenant->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
            }

            /*for (uint8 i = 0; i < 2; ++i)
            {
                if (Creature* pStormforgedLieutenant = (Unit::GetCreature((*me), StormforgedLieutenantGUID[i])))
                {
                    if (!pStormforgedLieutenant->isAlive())
                        pStormforgedLieutenant->Respawn();
                }
            }*/

            if (Stance != STANCE_DEFENSIVE)
            {
                DoRemoveStanceAura(Stance);
                DoCast(me, SPELL_BATTLE_STANCE);
                Stance = STANCE_BATTLE;
            }
                        
            SetEquipmentSlots(false, EQUIP_MACE, EQUIP_UNEQUIP, EQUIP_NO_CHANGE);

            if (pInstance)
                pInstance->SetData(TYPE_BJARNGRIM, NOT_STARTED);
        }

        void EnterCombat(Unit* /*pWho*/)
        {
            DoScriptText(SAY_AGGRO, me);

            //must get both lieutenants here and make sure they are with him
            me->CallForHelp(30.0f);

            if (pInstance)
                pInstance->SetData(TYPE_BJARNGRIM, IN_PROGRESS);

            if (Unit* Lieutenant = GetClosestCreatureWithEntry(me, NPC_STORMFORGED_LIEUTENANT, 5.0f))
                Lieutenant->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING);
                /*uiJainaGUID = Lieutenant->GetGUID();*/
        }

        void KilledUnit(Unit* /*pVictim*/)
        {
            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2,SAY_SLAY_3), me);
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

        void JustDied(Unit* /*pKiller*/)
        {
            DoScriptText(SAY_DEATH, me);

            if (pInstance)
            {
                pInstance->SetData(TYPE_BJARNGRIM, DONE);

                if (IsHeroic() && bCharged)
                    pInstance->DoCompleteAchievement(ACHIEVEMENT_LIGHTNING_STRUCK);
            }
        }

        //TODO: remove when removal is done by the core
        void DoRemoveStanceAura(uint8 uiStance)
        {
            switch(uiStance)
            {
            case STANCE_DEFENSIVE:
                me->RemoveAurasDueToSpell(SPELL_DEFENSIVE_STANCE);
                break;
            case STANCE_BERSERKER:
                me->RemoveAurasDueToSpell(SPELL_BERSEKER_STANCE);
                break;
            case STANCE_BATTLE:
                me->RemoveAurasDueToSpell(SPELL_BATTLE_STANCE);
                break;
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {

            //Return since we have no target
             if (!UpdateVictim())
                    return;

             if (me->HasAura(TEMPORARY_ELECTRICAL_CHARGE_AURA))
                bCharged = true;
             else
                bCharged = false;


            // Change stance
            if (ChangeStanceTimer <= uiDiff)
            {
                //wait for current spell to finish before change stance
                if (me->IsNonMeleeSpellCasted(false))
                    return;

                DoRemoveStanceAura(Stance);

                int uiTempStance = rand()%(3-1);

                if (uiTempStance >= Stance)
                    ++uiTempStance;

                Stance = uiTempStance;

                switch(Stance)
                {
                case STANCE_DEFENSIVE:
                    DoScriptText(SAY_DEFENSIVE_STANCE, me);
                    DoScriptText(EMOTE_DEFENSIVE_STANCE, me);
                    DoCast(me, SPELL_DEFENSIVE_STANCE);
                    SetEquipmentSlots(false, EQUIP_SWORD, EQUIP_SHIELD, EQUIP_NO_CHANGE);
                    break;
                case STANCE_BERSERKER:
                    DoScriptText(SAY_BERSEKER_STANCE, me);
                    DoScriptText(EMOTE_BERSEKER_STANCE, me);
                    DoCast(me, SPELL_BERSEKER_STANCE);
                    SetEquipmentSlots(false, EQUIP_SWORD, EQUIP_SWORD, EQUIP_NO_CHANGE);
                    break;
                case STANCE_BATTLE:
                    DoScriptText(SAY_BATTLE_STANCE, me);
                    DoScriptText(EMOTE_BATTLE_STANCE, me);
                    DoCast(me, SPELL_BATTLE_STANCE);
                    SetEquipmentSlots(false, EQUIP_MACE, EQUIP_UNEQUIP, EQUIP_NO_CHANGE);
                    break;
                }

                ChangeStanceTimer = 20000 + rand()%5000;
                return;
            }
            else ChangeStanceTimer -= uiDiff;

            switch(Stance)
            {
                case STANCE_DEFENSIVE:
                {
                    if (ReflectionTimer <= uiDiff)
                    {
                        DoCast(me, SPELL_SPELL_REFLECTION);
                        ReflectionTimer = 8000 + rand()%1000;
                    }
                    else ReflectionTimer -= uiDiff;

                    if (KnockAwayTimer <= uiDiff)
                    {
                        DoCast(me, SPELL_KNOCK_AWAY);
                        KnockAwayTimer = 20000 + rand()%1000;
                    }
                    else KnockAwayTimer -= uiDiff;

                    if (PummelTimer <= uiDiff)
                    {
                        DoCast(me->getVictim(), SPELL_PUMMEL);
                        PummelTimer = 10000 + rand()%1000;
                    }
                    else PummelTimer -= uiDiff;

                    if (IronformTimer <= uiDiff)
                    {
                        DoCast(me, SPELL_IRONFORM);
                        IronformTimer = 25000 + rand()%1000;
                    }
                    else IronformTimer -= uiDiff;
                    break;
                }
                case STANCE_BERSERKER:
                {
                    if (InterceptTimer <= uiDiff)
                    {
                        //not much point is this, better random target and more often?
                        DoCast(me->getVictim(), SPELL_INTERCEPT);
                        InterceptTimer = 45000 + rand()%1000;
                    }
                    else
                        InterceptTimer -= uiDiff;

                    if (WhirlwindTimer <= uiDiff)
                    {
                        DoCast(me, SPELL_WHIRLWIND);
                        WhirlwindTimer = 10000 + rand()%1000;
                    }
                    else
                        WhirlwindTimer -= uiDiff;

                    if (CleaveTimer <= uiDiff)
                    {
                        DoCast(me->getVictim(), SPELL_CLEAVE);
                        CleaveTimer = 8000 + rand()%1000;
                    }
                    else CleaveTimer -= uiDiff;
                    break;
                }
                case STANCE_BATTLE:
                {
                    if (MortalStrikeTimer <= uiDiff)
                    {
                        DoCast(me->getVictim(), SPELL_MORTAL_STRIKE);
                        MortalStrikeTimer = 20000 + rand()%1000;
                    }
                    else MortalStrikeTimer -= uiDiff;

                    if (SlamTimer <= uiDiff)
                    {
                        DoCast(me->getVictim(), SPELL_SLAM);
                        SlamTimer = 15000 + rand()%1000;
                    }
                    else SlamTimer -= uiDiff;
                    break;
                }
            }

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;
        bool bChangingStance;
        bool bCharged;
        uint8 ChargingStatus;
        uint8 Stance;
        uint32 ChargeTimer;
        uint32 ChangeStanceTimer;
        uint32 ReflectionTimer;
        uint32 KnockAwayTimer;
        uint32 PummelTimer;
        uint32 IronformTimer;
        uint32 InterceptTimer;
        uint32 WhirlwindTimer;
        uint32 CleaveTimer;
        uint32 MortalStrikeTimer;
        uint32 SlamTimer;
        uint64 StormforgedLieutenantGUID[2];
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_bjarngrimAI(pCreature);
    }
};

class mob_stormforged_lieutenant : public CreatureScript
{
public:
    mob_stormforged_lieutenant() : CreatureScript("mob_stormforged_lieutenant") { }

    struct mob_stormforged_lieutenantAI : public ScriptedAI
    {
        mob_stormforged_lieutenantAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        void Reset()
        {
            ArcWeldTimer = 20000 + rand()%1000;
            RenewSteelTimer = 10000 + rand()%1000;
        }

        void EnterCombat(Unit* pWho)
        {
            if (pInstance)
            {
                if (Creature* pBjarngrim = pInstance->instance->GetCreature(pInstance->GetData64(DATA_BJARNGRIM)))
                {
                    if (pBjarngrim->isAlive() && !pBjarngrim->getVictim())
                        pBjarngrim->AI()->AttackStart(pWho);
                }
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (ArcWeldTimer <= uiDiff)
            {
                DoCast(me->getVictim(), SPELL_ARC_WELD);
                ArcWeldTimer = 20000 + rand()%1000;
            }
            else ArcWeldTimer -= uiDiff;

            if (RenewSteelTimer <= uiDiff)
            {
                if (pInstance)
                {
                    if (Creature* pBjarngrim = pInstance->instance->GetCreature(pInstance->GetData64(DATA_BJARNGRIM)))
                    {
                        if (pBjarngrim->isAlive())
                            DoCast(pBjarngrim, SPELL_RENEW_STEEL_N);
                    }
                }
                RenewSteelTimer = 10000 + rand()%4000;
            }
            else RenewSteelTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;
        uint32 ArcWeldTimer;
        uint32 RenewSteelTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_stormforged_lieutenantAI(pCreature);
    }
};

class lightning_charge_trigger : public CreatureScript
{
public:
    lightning_charge_trigger() : CreatureScript("lightning_charge_trigger") { }

    struct lightning_charge_triggerAI : public ScriptedAI
    {
        lightning_charge_triggerAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;

        void UpdateAI(const uint32 uiDiff)
        {
            if (Creature* Bjarngrim = me->FindNearestCreature(NPC_BJARNGRIM, 10.0f, true))
            {
                if (!me->HasAura(SPELL_TEMPORARY_ELECTRICAL_CHARGE))
                    me->AddAura(SPELL_TEMPORARY_ELECTRICAL_CHARGE, me);
            }
            else
            {
                if (me->HasAura(SPELL_TEMPORARY_ELECTRICAL_CHARGE))
                    me->RemoveAura(SPELL_TEMPORARY_ELECTRICAL_CHARGE);
            }
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new lightning_charge_triggerAI (pCreature);
    }
};

void AddSC_boss_bjarngrim()
{
    new boss_bjarngrim();
    new mob_stormforged_lieutenant();
    new lightning_charge_trigger();
}
