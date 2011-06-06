/* Copyright (C) 2011 Acheron-network <www.acheron-network.de>
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

#include "ScriptPCH.h"
#include "bastion_of_twilight.h"

enum Yells
{
    // Todo
};

enum Spells
{
    // Feludius Phase 1
    SPELL_WATER_BOMB            = 82699,
    SPELL_HYDRO_LANCE           = 82752,
    SPELL_HEART_OF_ICE          = 82665,
    SPELL_GLACIATE              = 92508,
    SPELL_FROZEN                = 82772,

    // Ignacious Phase 1
    SPELL_FLAME_TORRENT         = 82777, // Tank
    SPELL_INFERNO_LEAP          = 82856,
    SPELL_INFERNO_RUSH          = 82859,
    SPELL_BURNING_BLOOD         = 82660, // Random
    SPELL_AEGIS_OF_FLAME        = 92512,
    SPELL_RISING_FLAMES         = 82636,

    // Arion Phase 2
    SPELL_LIGHTING_ROD          = 83099,
    SPELL_DISPERSE              = 83087,
    SPELL_LIGHTING_BLAST        = 93988,
    SPELL_CALL_WINDS            = 83491,
    SPELL_SWIRLING_WINDS        = 83500,
    SPELL_THUNDERSHOCK          = 92470,

    // Terrastra Phase 2
    SPELL_ERUPTION              = 92534,
    SPELL_HARDEN_SKIN           = 92542,
    SPELL_QUAKE                 = 83565,

    // Elementium Monstrosity Phase 3
    SPELL_CRYOGENIC_AURA        = 84918,
    SPELL_LIQUID_ICE            = 84914,
    SPELL_LAVA_SEED_CAST        = 84913,
    SPELL_LAVA_SEED_DUMMY       = 84911,
    SPELL_LAVAL_PLUME           = 84912,
    SPELL_ELECTRIC_INSTABALITY  = 84529,

    // Water Ball
    SPELL_WATERLOGED            = 82762,

    // Other
    SPELL_TELEPORT_VISUAL       = 41236,
};

enum Action
{
    ACTION_INAKTIV              = 1,
    ACTION_PHASE_2              = 2,
    ACTION_ELEMENTIUM           = 3,
};

enum Phases
{
    PHASE_NONE                  = 0,
    PHASE_AKTIVATE_2            = 1,
    PHASE_MERGE                 = 2,

    PHASE_AKTIV                 = 1,
    PHASE_INAKTIV               = 2,
};

enum Summons
{
    NPC_LIQUID_ICE              = 45452,
    NPC_PLUME_STALKER           = 45420,
    NPC_INFERNO_RUSH            = 47501,
};

static float Position[8][3]=
{
    {-1022.389587f, -568.811768f, 831.901184f}, // Spawn 1
    {-994.164001f, -568.104187f, 831.901062f}, // Spawn 2
    {-995.594299f, -595.989319f, 831.900940f}, // Spawn 3
    {-1022.385681f, -596.266235f, 831.901062f}, // Spawn 4
    {-1010.319397f, -580.852173f, 831.901062f}, // Move 1
    {-1006.588379f, -580.395935f, 831.901062f}, // Move 2
    {-1007.139404f, -583.995667f, 831.901062f}, // Move 3
    {-1010.137756f, -584.070496f, 831.901062f}, // Move 4
};

const int area_dx = 240;
const int area_dy = 310;

class boss_ascendant_council_controller : public CreatureScript
{
public:
    boss_ascendant_council_controller() : CreatureScript("boss_ascendant_council_controller") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_ascendant_council_controllerAI (pCreature);
    }

    struct boss_ascendant_council_controllerAI : public ScriptedAI
    {
        boss_ascendant_council_controllerAI(Creature *c) : ScriptedAI(c)
        {
            instance = c->GetInstanceScript();
        }

        InstanceScript *instance;

        uint32 uiPhase;
        uint32 uiPhasetimer;
        uint32 uiStep;

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetVisible(false);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);

            if (instance)
                instance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, NOT_STARTED);

            uiPhase = PHASE_NONE;
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (instance)
                instance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, IN_PROGRESS);

            if (Creature* Feludius = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_FELDIUS)))
                if (!Feludius->isInCombat())
                    DoZoneInCombat(Feludius);

            if (Creature* Ignacious = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_IGNACOIOUS)))
                if (!Ignacious->isInCombat())
                    DoZoneInCombat(Ignacious);
        }

        void JumpToNextStep(uint32 uiTimer)
        {
            uiPhasetimer = uiTimer;
            ++uiStep;
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
                case ACTION_PHASE_2:
                    uiPhase = PHASE_AKTIVATE_2;
                    uiStep = 0;
                    uiPhasetimer = -1;
                    JumpToNextStep(100);
                    break;
                case ACTION_ELEMENTIUM:
                    uiPhase = PHASE_MERGE;
                    uiStep = 0;
                    uiPhasetimer = -1;
                    JumpToNextStep(100);
                    break;
                default:
                    break;
            }
        }

        void JustDied(Unit* /*killer*/)
        {
            if (instance)
                instance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, DONE);
        }

        void TeleportMerge()
        {
            if (Creature* Feludius = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_FELDIUS)))
            {
                if (Creature* Ignacious = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_IGNACOIOUS)))
                {
                    if (Creature* Arion = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ARION)))
                    {
                        if (Creature* Terrastra = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_TERRASTRA)))
                        {
                            Feludius->NearTeleportTo(-1022.389587f, -568.811768f, 831.901184f, 0, false);
                            Ignacious->NearTeleportTo(-994.164001f, -568.104187f, 831.901062f, 0, false);
                            Arion->NearTeleportTo(-995.594299f, -595.989319f, 831.900940f, 0, false);
                            Terrastra->NearTeleportTo(-1022.385681f, -596.266235f, 831.901062f, 0, false);
                            Ignacious->SetVisible(true);
                            Feludius->SetVisible(true);
                        }
                    }
                }
            }
        }

        void UpdateAI(const uint32 diff)
        {
             if (!UpdateVictim())
                return;

            if (uiPhase == PHASE_AKTIVATE_2)
            {
                if (uiPhasetimer <= diff)
                {
                    switch (uiStep)
                    {
                    case 1:
                        if (Creature* Feludius = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_FELDIUS)))
                            Feludius->AI()->DoAction(ACTION_INAKTIV);
                        if (Creature* Feludius = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_IGNACOIOUS)))
                            Feludius->AI()->DoAction(ACTION_INAKTIV);
                        JumpToNextStep(1500);
                        break;
                     case 2:
                        if (Creature* Feludius = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_FELDIUS)))
                        {
                            if (Creature* Ignacious = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_IGNACOIOUS)))
                            {
                                Feludius->SetVisible(false);
                                Ignacious->SetVisible(false);
                            }
                        }
                        JumpToNextStep(1500);
                        break;
                    case 3:
                        if (Creature* Arion = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ARION)))
                        {
                            Arion->SetVisible(true);
                            Arion->CastSpell(Arion, SPELL_TELEPORT_VISUAL, false);
                        }
                        if (Creature* Terrastra = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_TERRASTRA)))
                        {
                            Terrastra->SetVisible(true);
                            Terrastra->CastSpell(Terrastra, SPELL_TELEPORT_VISUAL, false);
                        }
                        JumpToNextStep(1500);
                        break;
                    case 4:
                        if (Creature* Arion = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ARION)))
                        {
                            Arion->SetReactState(REACT_AGGRESSIVE);
                            Arion->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                            if (!Arion->isInCombat())
                                DoZoneInCombat(Arion);
                        }
                        if (Creature* Terrastra = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_TERRASTRA)))
                        {
                            Terrastra->SetReactState(REACT_AGGRESSIVE);
                            Terrastra->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                            if (!Terrastra->isInCombat())
                                DoZoneInCombat(Terrastra);
                        }
                        uiPhase = PHASE_NONE;
                        break;
                   default:
                        break;
                    }
                }
                else uiPhasetimer -= diff;
            }

            if (uiPhase == PHASE_MERGE)
            {
                if (uiPhasetimer <= diff)
                {
                    switch (uiStep)
                    {
                        case 1:
                            if (Creature* Arion = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ARION)))
                                Arion->AI()->DoAction(ACTION_INAKTIV);
                            if (Creature* Terrastra = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_TERRASTRA)))
                                Terrastra->AI()->DoAction(ACTION_INAKTIV);
                            JumpToNextStep(1500);
                            break;
                        case 2:
                            TeleportMerge();
                            JumpToNextStep(1500);
                            break;
                        case 3:
                            if (Creature* Feludius = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_FELDIUS)))
                                Feludius->GetMotionMaster()->MovePoint(0, -1010.319397f, -580.852173f, 831.901062f);
                            JumpToNextStep(3000);
                            break;
                        case 4:
                            if (Creature* Ignacious = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_IGNACOIOUS)))
                                Ignacious->GetMotionMaster()->MovePoint(0, -1006.588379f, -580.395935f, 831.901062f);
                            JumpToNextStep(3000);
                            break;
                        case 5:
                            if (Creature* Arion = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ARION)))
                                Arion->GetMotionMaster()->MovePoint(0, -1007.139404f, -583.995667f, 831.901062f);
                            JumpToNextStep(3000);
                            break;
                        case 6:
                            if (Creature* Terrastra = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_TERRASTRA)))
                                Terrastra->GetMotionMaster()->MovePoint(0, -1010.137756f, -584.070496f, 831.901062f);
                            JumpToNextStep(3000);
                            break;
                        case 7:
                            // Todo Cast
                            JumpToNextStep(100);
                            break;
                        case 8:
                            if (Creature* Feludius = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_FELDIUS)))
                            {
                                if (Creature* Ignacious = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_IGNACOIOUS)))
                                {
                                    if (Creature* Arion = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ARION)))
                                    {
                                        if (Creature* Terrastra = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_TERRASTRA)))
                                        {
                                            if (Creature* Elementary = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ELEMENTIUM_MONSTROSITY)))
                                            {
                                                Elementary->SetVisible(true);
                                                Elementary->SetReactState(REACT_PASSIVE);
                                                Elementary->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                                                Elementary->DealDamage(Elementary, Feludius->HealthBelowPct(Feludius->GetHealth()) && Ignacious->HealthBelowPct(Ignacious->GetHealth()) && Arion->HealthBelowPct(Arion->GetHealth()) && Terrastra->HealthBelowPct(Terrastra->GetHealth()));
                                                Elementary->AI()->DoZoneInCombat();
                                                //Elementary->SetHealth(Elementary->HealthBelowPct() + Feludius->GetHealth() + Ignacious->GetHealth() + Arion->GetHealth() + Terrastra->GetHealth() == Elementary->GetMaxHealth());
                                                Feludius->SetVisible(false);
                                                Ignacious->SetVisible(false);
                                                Arion->SetVisible(false);
                                                Terrastra->SetVisible(false);
                                            }
                                        }
                                    }
                                }
                            }
                            JumpToNextStep(2000);
                            break;
                        case 9:
                            if (Creature* Elementary = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ELEMENTIUM_MONSTROSITY)))
                            {
                                Elementary->SetReactState(REACT_AGGRESSIVE);
                                Elementary->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                                Elementary->AI()->DoZoneInCombat();
                            }
                            uiPhase = PHASE_NONE;
                            break;
                        default:
                            break;
                        }
                    }
                    else uiPhasetimer -= diff;
                }
            }
        };
    };


class boss_feldius : public CreatureScript
{
public:
    boss_feldius() : CreatureScript("boss_feldius") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_feldiusAI (pCreature);
    }

    struct boss_feldiusAI : public ScriptedAI
    {
        boss_feldiusAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript *pInstance;

        uint32 uiWaterBombTimer;
        uint32 uiHydroLanceTimer;
        uint32 uiHeartOfIceTimer;
        uint32 uiGlaciateTimer;

        uint32 uiPhase;

        void Reset()
        {
            if (pInstance)
                pInstance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, NOT_STARTED);

            me->SetVisible(true);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetReactState(REACT_AGGRESSIVE);

            uiWaterBombTimer    = 10000;
            uiHydroLanceTimer   = 15000;
            uiHeartOfIceTimer   = 20000;
            uiGlaciateTimer     = 50000;
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, IN_PROGRESS);

            if (Creature* Controller = ObjectAccessor::GetCreature(*me, pInstance->GetData64(DATA_ASCENDANT_COUNCIL_CONTROLLER)))
                if (!Controller->isInCombat())
                    DoZoneInCombat(Controller);
        }

        void DamageTaken(Unit* /*attacker*/, uint32& /*damage*/)
        {
            if (HealthAbovePct(25))
                return;

            if (Creature* Controller = ObjectAccessor::GetCreature(*me, pInstance->GetData64(DATA_ASCENDANT_COUNCIL_CONTROLLER)))
                Controller->AI()->DoAction(ACTION_PHASE_2);

            uiPhase = PHASE_INAKTIV;
        }

        
        void DoAction(const int32 action)
        {
            switch (action)
            {
                case ACTION_INAKTIV:
                    me->CastSpell(me, SPELL_TELEPORT_VISUAL, false);
                    me->AttackStop();
                    me->SetReactState(REACT_PASSIVE);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    uiPhase = PHASE_INAKTIV;
                    break;
                default:
                    break;
            }
        }

        void SpellHitTarget(Unit* target, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_GLACIATE)
            {
                if(target && target->HasAura(SPELL_WATERLOGED))
                    target->CastSpell(target, SPELL_WATER_BOMB, true);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(uiPhase == PHASE_AKTIV)
            {
                if (uiWaterBombTimer <= diff)
                {
                    DoCast(me, SPELL_WATER_BOMB);
                    uiWaterBombTimer = urand(24000, 25000);
                } else uiWaterBombTimer -= diff;

                if (uiHydroLanceTimer <= diff)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_HYDRO_LANCE);
                    uiHydroLanceTimer = urand(10000, 15000);
                } else uiHydroLanceTimer -= diff;

                if (uiHeartOfIceTimer <= diff)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_HEART_OF_ICE);
                    uiHeartOfIceTimer = urand(15000, 25000);
                } else uiHeartOfIceTimer -= diff;

                if (uiGlaciateTimer <= diff)
                {
                    DoCastAOE(SPELL_GLACIATE);
                    uiGlaciateTimer = urand(40000, 50000);
                } else uiGlaciateTimer -= diff;
            }

            DoMeleeAttackIfReady();
        }
    };
};

class boss_Ignacious : public CreatureScript
{
public:
    boss_Ignacious() : CreatureScript("boss_Ignacious") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_IgnaciousAI (pCreature);
    }

    struct boss_IgnaciousAI : public ScriptedAI
    {
        boss_IgnaciousAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript *pInstance;

        uint32 uiSpellFlameTorrentTimer;
        uint32 uiInfernoLeapTimer;
        uint32 uiBurningBloodTimer;
        uint32 uiAegisOfFlameTimer;
        uint32 uiRisingFlamesTimer;

        uint32 uiPhase;

        void Reset()
        {
            if (pInstance)
                pInstance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, NOT_STARTED);

            me->SetVisible(true);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetReactState(REACT_AGGRESSIVE);

            uiSpellFlameTorrentTimer = 10000;
            uiInfernoLeapTimer = 15000;
            uiBurningBloodTimer = 5000;
            uiAegisOfFlameTimer = 40000;

            uiPhase = PHASE_INAKTIV;
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, IN_PROGRESS);

            if (Creature* Controller = ObjectAccessor::GetCreature(*me, pInstance->GetData64(DATA_ASCENDANT_COUNCIL_CONTROLLER)))
                if (!Controller->isInCombat())
                    DoZoneInCombat(Controller);

            uiPhase = PHASE_AKTIV;
        }

        void DamageTaken(Unit* /*attacker*/, uint32& /*damage*/)
        {
            if (HealthAbovePct(25))
                return;

            if (Creature* Controller = ObjectAccessor::GetCreature(*me, pInstance->GetData64(DATA_ASCENDANT_COUNCIL_CONTROLLER)))
                Controller->AI()->DoAction(ACTION_PHASE_2);

            uiPhase = PHASE_INAKTIV;
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
                case ACTION_INAKTIV:
                    me->CastSpell(me, SPELL_TELEPORT_VISUAL, false);
                    me->AttackStop();
                    me->SetReactState(REACT_PASSIVE);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    uiPhase = PHASE_INAKTIV;
                    break;
                default:
                    break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(uiPhase == PHASE_AKTIV)
            {
                if (uiSpellFlameTorrentTimer <= diff)
                {
                    DoCastVictim(SPELL_FLAME_TORRENT);
                    uiSpellFlameTorrentTimer = urand(10000, 15000);
                } else uiSpellFlameTorrentTimer -= diff;

                if (uiInfernoLeapTimer <= diff)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_INFERNO_LEAP);
                    uiInfernoLeapTimer = urand(15000, 25000);
                } else uiInfernoLeapTimer -= diff;

                if (uiBurningBloodTimer <= diff)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_BURNING_BLOOD);
                    uiBurningBloodTimer = urand(10000, 11000);
                } else uiBurningBloodTimer -= diff;

                if (uiAegisOfFlameTimer <= diff)
                {
                    DoCast(me, SPELL_AEGIS_OF_FLAME);
                    uiAegisOfFlameTimer = 40000;
                    uiRisingFlamesTimer = 2000;
                } else uiAegisOfFlameTimer -= diff;

                if (uiRisingFlamesTimer <= diff)
                {
                    DoCast(me, SPELL_RISING_FLAMES);
                    uiAegisOfFlameTimer = 80000;
                } else uiRisingFlamesTimer -= diff;
            }

            DoMeleeAttackIfReady();
        }
    };
};

class boss_Arion : public CreatureScript
{
public:
    boss_Arion() : CreatureScript("boss_Arion") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_ArionAI (pCreature);
    }

    struct boss_ArionAI : public ScriptedAI
    {
        boss_ArionAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript *pInstance;

        uint32 uiPhase;

        void Reset()
        {
            if (pInstance)
                pInstance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, NOT_STARTED);

            me->SetVisible(false);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);

            uiPhase = PHASE_INAKTIV;
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, IN_PROGRESS);

            uiPhase = PHASE_AKTIV;
        }

        void DamageTaken(Unit* /*attacker*/, uint32& /*damage*/)
        {
            if (HealthAbovePct(25))
                return;

            if (Creature* Controller = ObjectAccessor::GetCreature(*me, pInstance->GetData64(DATA_ASCENDANT_COUNCIL_CONTROLLER)))
                Controller->AI()->DoAction(ACTION_ELEMENTIUM);

            uiPhase = PHASE_INAKTIV;
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
                case ACTION_INAKTIV:
                    me->CastSpell(me, SPELL_TELEPORT_VISUAL, false);
                    me->AttackStop();
                    me->SetReactState(REACT_PASSIVE);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    uiPhase = PHASE_INAKTIV;
                    break;
                default:
                    break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(uiPhase == PHASE_AKTIV)
            {
            }

            DoMeleeAttackIfReady();
        }
    };
};

class boss_terrastra : public CreatureScript
{
public:
    boss_terrastra() : CreatureScript("boss_terrastra") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_terrastraAI (pCreature);
    }

    struct boss_terrastraAI : public ScriptedAI
    {
        boss_terrastraAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript *pInstance;

        uint32 uiPhase;

        void Reset()
        {
            if (pInstance)
                pInstance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, NOT_STARTED);

            me->SetVisible(false);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);

            uiPhase = PHASE_INAKTIV;
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, IN_PROGRESS);

            uiPhase = PHASE_AKTIV;
        }

        void DamageTaken(Unit* /*attacker*/, uint32& /*damage*/)
        {
            if (HealthAbovePct(25))
                return;

            if (Creature* Controller = ObjectAccessor::GetCreature(*me, pInstance->GetData64(DATA_ASCENDANT_COUNCIL_CONTROLLER)))
                Controller->AI()->DoAction(ACTION_ELEMENTIUM);

            uiPhase = PHASE_INAKTIV;
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
                case ACTION_INAKTIV:
                    me->CastSpell(me, SPELL_TELEPORT_VISUAL, false);
                    me->AttackStop();
                    me->SetReactState(REACT_PASSIVE);
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    uiPhase = PHASE_INAKTIV;
                    break;
                default:
                    break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(uiPhase == PHASE_AKTIV)
            {
            }

            DoMeleeAttackIfReady();
        }
    };
};

class boss_elementium_monstrosity : public CreatureScript
{
public:
    boss_elementium_monstrosity() : CreatureScript("boss_elementium_monstrosity") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_elementium_monstrosityAI (pCreature);
    }

    struct boss_elementium_monstrosityAI : public ScriptedAI
    {
        boss_elementium_monstrosityAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript *pInstance;

        uint32 uiLiquidIceTimer;
        uint32 uiLavaSeedTimer;
        uint32 uiElectrikalInstabilityTimer;

        bool bomb;

        void Reset()
        {
            /*if (pInstance)
                pInstance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, NOT_STARTED);

            me->SetVisible(false);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);*/

            uiLiquidIceTimer = 2000;
            uiElectrikalInstabilityTimer = 3000;
            uiLavaSeedTimer = 15000;
            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
            bomb = false;
        }

        void EnterCombat(Unit* /*who*/)
        {
            /*if (pInstance)
                pInstance->SetData(DATA_ASCENDANT_COUNCIL_EVENT, IN_PROGRESS);*/

            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_READY1H);

            DoCast(me, SPELL_CRYOGENIC_AURA);
        }

        void SpawnBombs()
        {
            float dx, dy;
            for (int i(0); i < 200; ++i)
            {
                dx = float(irand(-area_dx/3, area_dx/3));
                dy = float(irand(-area_dy/3, area_dy/3));

                DoSpawnCreature(45420, dx, dy, 0, 0, TEMPSUMMON_TIMED_DESPAWN, 15000);
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (uiElectrikalInstabilityTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, SPELL_ELECTRIC_INSTABALITY);
                uiElectrikalInstabilityTimer = 2000;
            } else uiElectrikalInstabilityTimer -= diff;

            if (uiLavaSeedTimer <= diff && !bomb)
            {
                DoCastAOE(SPELL_LAVA_SEED_CAST);
                bomb = true;
                uiLavaSeedTimer = 3000;
            } else uiLavaSeedTimer -= diff;

            if (uiLavaSeedTimer <= diff && bomb)
            {
                SpawnBombs();
                uiLavaSeedTimer = 23000;
                bomb = false;
            } else uiLavaSeedTimer -= diff;

            /*if (uiLiquidIceTimer <= diff)
            {
                me->SummonCreature(NPC_LIQUID_ICE, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_DEAD_DESPAWN, 180000);
                uiLiquidIceTimer = 15000;
            } else uiLiquidIceTimer -= diff;*/

            DoMeleeAttackIfReady();
        }
    };
};

class boss_liquid_ice : public CreatureScript
{
public:
    boss_liquid_ice() : CreatureScript("boss_liquid_ice") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_liquid_iceAI (pCreature);
    }

    struct boss_liquid_iceAI : public Scripted_NoMovementAI
    {
        boss_liquid_iceAI(Creature *c) : Scripted_NoMovementAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript *pInstance;

        void Reset()
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetReactState(REACT_PASSIVE);
            DoCast(me, SPELL_LIQUID_ICE);
        }

        void EnterCombat(Unit* /*who*/)
        {
        }

        void UpdateAI(const uint32 diff)
        {
        }
    };
};

class mob_lava_plume : public CreatureScript
{
    public:
        mob_lava_plume(): CreatureScript("mob_lava_plume")
        {
        }

        struct mob_lava_plumeAI : public Scripted_NoMovementAI
        {
            mob_lava_plumeAI(Creature *c) : Scripted_NoMovementAI(c){}

            void Reset() 
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetReactState(REACT_PASSIVE);
                DoCast(me, SPELL_LAVA_SEED_DUMMY);
                uiDamageTimer = 3000;
            }

            uint32 uiDamageTimer;

            void SpellHit(Unit * /*caster*/, const SpellEntry *spell)
            {
                if (spell->Id == SPELL_LAVA_SEED_CAST)
                    DoCast(me, SPELL_LAVA_SEED_DUMMY, true);
                uiDamageTimer = 3000;
            }

            void EnterCombat(Unit* /*who*/) {}

            void AttackStart(Unit* /*who*/) {}

            void MoveInLineOfSight(Unit* /*who*/) {}

            void UpdateAI(const uint32 diff) 
            {
                if (uiDamageTimer <= diff)
                {
                    DoCastAOE(SPELL_LAVAL_PLUME);
                    me->ForcedDespawn(2000);
                    uiDamageTimer = 15000;
                } else uiDamageTimer -= diff;
            }
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new mob_lava_plumeAI(creature);
        }
};

class spell_terrastra_quake : public SpellScriptLoader
{
public:
    spell_terrastra_quake() : SpellScriptLoader("spell_terrastra_quake") { }

    class spell_terrastra_quake_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_terrastra_quake_SpellScript)

        void FilterTargets(std::list<Unit*>& targetList)
        {
            for (std::list<Unit*>::iterator itr = targetList.begin() ; itr != targetList.end();)
            {
                if ((*itr)->HasAura(SPELL_SWIRLING_WINDS))
                    itr = targetList.erase(itr);
                else
                    ++itr;
            }            
        }

        void Register()
        {
            OnUnitTargetSelect += SpellUnitTargetFn(spell_terrastra_quake_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_AREA_ENEMY_SRC);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_terrastra_quake_SpellScript();
    }
};

class spell_cryogenic_aura : public SpellScriptLoader
{
    public:
        spell_cryogenic_aura() : SpellScriptLoader("spell_cryogenic_aura") { }

        class spell_cryogenic_aura_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_cryogenic_aura_SpellScript);

            void HandleScript(SpellEffIndex /*effIndex*/)
            {
                if (Creature* target = GetCaster()->FindNearestCreature(NPC_LIQUID_ICE, 5.0f))
                {
                    
                }
            }

            void Register()
            {           
                OnEffect += SpellEffectFn(spell_cryogenic_aura_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_cryogenic_aura_SpellScript();
        }
};

void AddSC_Ascentdant_council()
{
    new boss_ascendant_council_controller();
    new boss_feldius();
    new boss_Ignacious();
    new boss_Arion();
    new boss_terrastra();
    new boss_elementium_monstrosity();
    new boss_liquid_ice();
    new mob_lava_plume();
    new spell_terrastra_quake();
    new spell_cryogenic_aura();
}

/*
  UPDATE `creature_template` SET `ScriptName`='boss_feldius' WHERE (`entry`='43687');
  UPDATE `creature_template` SET `ScriptName`='boss_Ignacious' WHERE (`entry`='43686');
  UPDATE `creature_template` SET `ScriptName`='boss_Arion' WHERE (`entry`='43688');
  UPDATE `creature_template` SET `ScriptName`='boss_terrastra' WHERE (`entry`='43689');
  UPDATE `creature_template` SET `ScriptName`='boss_elementium_monstrosity' WHERE (`entry`='43735');
  UPDATE `creature_template` SET `faction_A`='16', `faction_H`='16', `ScriptName`='boss_ascendant_council_controller' WHERE (`entry`='43691');
  UPDATE `creature_template` SET `minlevel`='88', `maxlevel`='88', `faction_A`='16', `faction_H`='16' WHERE (`entry`='45452');
  UPDATE `creature_template` SET `ScriptName`='boss_liquid_ice' WHERE (`entry`='45452');
*/


