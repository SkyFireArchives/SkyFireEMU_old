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

/*enum Yells
{
    // Todo
};*/

enum Spells
{
    SPELL_CRYSTAL_STORM         = 92265, // Only Heroic
    SPELL_SAND_BLAST            = 80807,
    SPELL_LAVA_POOL             = 93721,

    SPELL_STALACTITE_PRE_VISUAL = 80654,
    SPELL_STALACTITE_SUMMON     = 80656,
    SPELL_STALACTITE_DAMAGE     = 92653,
};

enum Creatures
{
    // Todo
};

enum Points
{
    POINT_INTRO_LANDING         = 1,
    POINT_FLYING                = 2,
    POINT_LANDING               = 3,
};

enum Phase
{
    PHASE_LAND                  = 1,
    PHASE_FLYING                = 2,
};

class boss_slabhide : public CreatureScript
{
public:
    boss_slabhide() : CreatureScript("boss_slabhide") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_slabhideAI(pCreature);
    }

    struct boss_slabhideAI : public ScriptedAI
    {
        boss_slabhideAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;

        uint32 uiPhase;

        uint32 uiCrystalStormTimer;
        uint32 uiSandBlastTimer;
        uint32 uiLavaPoolTimer;
        uint32 uiFlyingTimer;

        uint32 uiLandingTimer;

        void Reset()
        {
            uiPhase = PHASE_LAND;

            uiCrystalStormTimer = 5000;
            uiSandBlastTimer = 60000;
            uiFlyingTimer = 15000;
            uiLavaPoolTimer = 7000;
        }

        void KilledUnit(Unit* /*Victim*/) {}

        void JustDied(Unit* /*Killer*/)
        {
        }
      
        void EnterCombat(Unit * /*who*/)
        {
            DoZoneInCombat();
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (id)
            {
            case POINT_LANDING:
                uiPhase = PHASE_LAND;
                me->RemoveUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                me->SetFlying(false);
                me->SetReactState(REACT_AGGRESSIVE);
                DoZoneInCombat();
                if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == POINT_MOTION_TYPE)
                    me->GetMotionMaster()->MovementExpired();
                DoStartMovement(me->getVictim());
                uiCrystalStormTimer = 15000;
                uiSandBlastTimer = 10000;
                uiFlyingTimer = 40000;
                break;
            case POINT_FLYING:
                //DoCast(me, SPELL_STALACTITE_SUMMON);
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    target->CastSpell(target, SPELL_STALACTITE_SUMMON, false);
                uiPhase = PHASE_FLYING;
                uiLandingTimer = 20000;
                break;
            default:
                break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            switch(uiPhase)
            {
            case PHASE_LAND:
                if (uiCrystalStormTimer <= diff)
                {
                    DoCastAOE(SPELL_CRYSTAL_STORM);
                    uiCrystalStormTimer = 60000;
                } else uiCrystalStormTimer -= diff;

                if (uiSandBlastTimer <= diff)
                {
                    DoCastVictim(SPELL_SAND_BLAST);
                    uiSandBlastTimer = urand(10000, 15000);
                } else uiSandBlastTimer -= diff;

                if (uiFlyingTimer <= diff)
                {
                    me->SetFlying(true);
                    me->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                    me->GetMotionMaster()->MovePoint(PHASE_FLYING, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ()+20);
                    uiFlyingTimer = 30000;
                } else uiFlyingTimer -= diff;

                if (uiLavaPoolTimer <= diff)
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_LAVA_POOL);
                    uiLavaPoolTimer = urand(6000, 8000);
                } else uiLavaPoolTimer -= diff;
                break;
            case PHASE_FLYING:
                if (uiLandingTimer <= diff)
                {
                    me->GetMotionMaster()->MovePoint(PHASE_LAND, me->GetPositionX(), me->GetPositionY(), 247.500f);
                    uiLandingTimer = 30000;
                } else uiLandingTimer -= diff;
                break;
            default:
                break;
            }

            DoMeleeAttackIfReady();
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_pCreatures;
            GetCreatureListWithEntryInGrid(m_pCreatures, me, entry, distance);
     
            if (m_pCreatures.empty())
            return;
     
            for(std::list<Creature*>::iterator iter = m_pCreatures.begin(); iter != m_pCreatures.end(); ++iter)
            (*iter)->DespawnOrUnsummon();
        }
    };
};

class npc_stalactite_boss_trigger : public CreatureScript
{
public:
    npc_stalactite_boss_trigger() : CreatureScript("npc_stalactite_boss_trigger") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_stalactite_boss_triggerAI(pCreature);
    }

    struct npc_stalactite_boss_triggerAI : public ScriptedAI
    {
        npc_stalactite_boss_triggerAI(Creature *pCreature) : ScriptedAI(pCreature){}

        uint32 uiStalactiteDamageTimer;

        bool bDamaged;

        void Reset()
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
            me->SetReactState(REACT_PASSIVE);
            DoCast(me, SPELL_STALACTITE_PRE_VISUAL);
            bDamaged = false;
        }

        void UpdateAI(const uint32 diff)
        {
            if (uiStalactiteDamageTimer <= diff && !bDamaged)
            {
                me->CastSpell(me, SPELL_STALACTITE_DAMAGE, true);
                uiStalactiteDamageTimer = 30000;
            } else uiStalactiteDamageTimer -= diff;
        }
    };
};

void AddSC_boss_slabhide()
{
    new boss_slabhide();
    new npc_stalactite_boss_trigger();
}