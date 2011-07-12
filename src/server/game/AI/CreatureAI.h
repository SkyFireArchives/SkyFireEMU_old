/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
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

#ifndef TRINITY_CREATUREAI_H
#define TRINITY_CREATUREAI_H

#include "UnitAI.h"
#include "Common.h"
#include "CreatureTextMgr.h"

class WorldObject;
class Unit;
class Creature;
class Player;
struct SpellEntry;

#define TIME_INTERVAL_LOOK   5000
#define VISIBILITY_RANGE    10000

//Spell targets used by SelectSpell
enum SelectTargetType
{
    SELECT_TARGET_DONTCARE = 0,                             //All target types allowed

    SELECT_TARGET_SELF,                                     //Only Self casting

    SELECT_TARGET_SINGLE_ENEMY,                             //Only Single Enemy
    SELECT_TARGET_AOE_ENEMY,                                //Only AoE Enemy
    SELECT_TARGET_ANY_ENEMY,                                //AoE or Single Enemy

    SELECT_TARGET_SINGLE_FRIEND,                            //Only Single Friend
    SELECT_TARGET_AOE_FRIEND,                               //Only AoE Friend
    SELECT_TARGET_ANY_FRIEND,                               //AoE or Single Friend
};

//Spell Effects used by SelectSpell
enum SelectEffect
{
    SELECT_EFFECT_DONTCARE = 0,                             //All spell effects allowed
    SELECT_EFFECT_DAMAGE,                                   //Spell does damage
    SELECT_EFFECT_HEALING,                                  //Spell does healing
    SELECT_EFFECT_AURA,                                     //Spell applies an aura
};

enum SCEquip
{
    EQUIP_NO_CHANGE = -1, 
    EQUIP_UNEQUIP   = 0
};

class CreatureAI : public UnitAI
{
    protected:
        Creature * const me;

        bool UpdateVictim();
        bool UpdateVictimWithGaze();

        void SetGazeOn(Unit *target);

        Creature *DoSummon(uint32 uiEntry, const Position &pos, uint32 uiDespawntime = 30000, TempSummonType uiType = TEMPSUMMON_CORPSE_TIMED_DESPAWN);
        Creature *DoSummon(uint32 uiEntry, WorldObject *obj, float fRadius = 5.0f, uint32 uiDespawntime = 30000, TempSummonType uiType = TEMPSUMMON_CORPSE_TIMED_DESPAWN);
        Creature *DoSummonFlyer(uint32 uiEntry, WorldObject *obj, float fZ, float fRadius = 5.0f, uint32 uiDespawntime = 30000, TempSummonType uiType = TEMPSUMMON_CORPSE_TIMED_DESPAWN);

    public:
        void Talk(uint8 id, uint64 WhisperGuid = 0);
        explicit CreatureAI(Creature *c) : UnitAI((Unit*)c), me(c), m_MoveInLineOfSight_locked(false) {}

        virtual ~CreatureAI() {}

        /// == Reactions At =================================

        // Called if IsVisible(Unit *who) is true at each *who move, reaction at visibility zone enter
        void MoveInLineOfSight_Safe(Unit *who);

        // Called in Creature::Update when deathstate = DEAD. Inherited classes may maniuplate the ability to respawn based on scripted events.
        virtual bool CanRespawn() { return true; }

        // Called for reaction at stopping attack at no attackers or targets
        virtual void EnterEvadeMode();

        // Called for reaction at enter to combat if not in combat yet (enemy can be NULL)
        virtual void EnterCombat(Unit* /*enemy*/) {}

        // Called when the creature is killed
        virtual void JustDied(Unit *) {}

        // Called when the creature kills a unit
        virtual void KilledUnit(Unit *) {}

        // Called when the creature summon successfully other creature
        virtual void JustSummoned(Creature*) {}
        virtual void IsSummonedBy(Unit * /*summoner*/) {}

        virtual void SummonedCreatureDespawn(Creature* /*unit*/) {}
        virtual void SummonedCreatureDies(Creature* /*unit*/, Unit* /*killer*/) {}

        // Called when hit by a spell
        virtual void SpellHit(Unit*, const SpellEntry*) {}

        // Called when spell hits a target
        virtual void SpellHitTarget(Unit* /*target*/, const SpellEntry*) {}

        // Called to get trigger target for aura effect
        virtual Unit * GetAuraEffectTriggerTarget(uint32 /*spellId*/, uint8 /*effIndex*/) {return NULL;}

        // Called when the creature is target of hostile action: swing, hostile spell landed, fear/etc)
        //virtual void AttackedBy(Unit* attacker);
        virtual bool IsEscorted() { return false; }

        // Called when creature is spawned or respawned (for reseting variables)
        virtual void JustRespawned() { Reset(); }

        // Called at waypoint reached or point movement finished
        virtual void MovementInform(uint32 /*MovementType*/, uint32 /*Data*/) {}

        void OnCharmed(bool apply);

        //virtual void SpellClick(Player *player) {}

        // Called at reaching home after evade
        virtual void JustReachedHome() {}

        void DoZoneInCombat(Creature* pUnit = NULL);

        // Called at text emote receive from player
        virtual void ReceiveEmote(Player* /*pPlayer*/, uint32 /*text_emote*/) {}

        /// == Triggered Actions Requested ==================

        // Called when creature attack expected (if creature can and no have current victim)
        // Note: for reaction at hostile action must be called AttackedBy function.
        //virtual void AttackStart(Unit *) {}

        // Called at World update tick
        //virtual void UpdateAI(const uint32 /*diff*/) {}

        /// == State checks =================================

        // Is unit visible for MoveInLineOfSight
        //virtual bool IsVisible(Unit *) const { return false; }

        // called when the corpse of this creature gets removed
        virtual void CorpseRemoved(uint32 & /*respawnDelay*/) {}

        // Called when victim entered water and creature can not enter water
        //virtual bool canReachByRangeAttack(Unit*) { return false; }

        /// == Fields =======================================

        // Pointer to controlled by AI creature
        //Creature* const me;

        virtual void PassengerBoarded(Unit * /*who*/, int8 /*seatId*/, bool /*apply*/) {}

        virtual bool CanSeeAlways(WorldObject const* obj) {return false;}
    protected:
        virtual void MoveInLineOfSight(Unit *);

        bool _EnterEvadeMode();

    private:
        bool m_MoveInLineOfSight_locked;
};

enum Permitions
{
    PERMIT_BASE_NO                 = -1, 
    PERMIT_BASE_IDLE               = 1, 
    PERMIT_BASE_REACTIVE           = 100, 
    PERMIT_BASE_PROACTIVE          = 200, 
    PERMIT_BASE_FACTION_SPECIFIC   = 400, 
    PERMIT_BASE_SPECIAL            = 800
};

#endif
