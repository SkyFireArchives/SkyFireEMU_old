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

#ifndef SC_CREATURE_H
#define SC_CREATURE_H

#include "Creature.h"
#include "CreatureAI.h"
#include "CreatureAIImpl.h"
#include "InstanceScript.h"

#define SCRIPT_CAST_TYPE dynamic_cast

#define CAST_PLR(a)     (SCRIPT_CAST_TYPE<Player*>(a))
#define CAST_CRE(a)     (SCRIPT_CAST_TYPE<Creature*>(a))
#define CAST_SUM(a)     (SCRIPT_CAST_TYPE<TempSummon*>(a))
#define CAST_PET(a)     (SCRIPT_CAST_TYPE<Pet*>(a))
#define CAST_AI(a, b)    (SCRIPT_CAST_TYPE<a*>(b))
#define CAST_INST(a, b)  (SCRIPT_CAST_TYPE<a*>(b))

#define GET_SPELL(a)    (const_cast<SpellEntry*>(GetSpellStore()->LookupEntry(a)))

class InstanceScript;

class SummonList : public std::list<uint64>
{
    public:
        explicit SummonList(Creature* creature) : me(creature) {}
        void Summon(Creature *summon) { push_back(summon->GetGUID()); }
        void Despawn(Creature *summon) { remove(summon->GetGUID()); }
        void DespawnEntry(uint32 entry);
        void DespawnAll();
		bool HasEntry(uint32 entry);
        void RemoveNotExisting();
        void DoAction(uint32 entry, uint32 info);
        void DoZoneInCombat(uint32 entry = 0);
    private:
        Creature *me;
};

struct ScriptedAI : public CreatureAI
{
    explicit ScriptedAI(Creature* pCreature);
    virtual ~ScriptedAI() {}

    //*************
    //CreatureAI Functions
    //*************

    void AttackStartNoMove(Unit *pTarget);

    // Called at any Damage from any attacker (before damage apply)
    void DamageTaken(Unit* /*pDone_by*/, uint32& /*uiDamage*/) {}

    //Called at World update tick
    void UpdateAI(const uint32);

    //Called at creature death
    void JustDied(Unit* /*who*/){}

    //Called at creature killing another unit
    void KilledUnit(Unit* /*who*/){}

    // Called when the creature summon successfully other creature
    void JustSummoned(Creature*) {}

    // Called when a summoned creature is despawned
    void SummonedCreatureDespawn(Creature*) {}

    // Called when hit by a spell
    void SpellHit(Unit* /*caster*/, const SpellEntry * /*spell*/) {}

    // Called when spell hits a target
    void SpellHitTarget(Unit * /*pTarget*/, const SpellEntry * /*spell*/) {}

    //Called at waypoint reached or PointMovement end
    void MovementInform(uint32 /*type*/, uint32 /*id*/){}

    // Called when AI is temporarily replaced or put back when possess is applied or removed
    void OnPossess(bool /*apply*/) {}

    //*************
    // Variables
    //*************

    //Pointer to creature we are manipulating
    Creature* me;

    //For fleeing
    bool IsFleeing;

    //*************
    //Pure virtual functions
    //*************

    //Called at creature reset either by death or evade
    void Reset() {}

    //Called at creature aggro either by MoveInLOS or Attack Start
    void EnterCombat(Unit* /*who*/) {}

    //*************
    //AI Helper Functions
    //*************

    //Start movement toward victim
    void DoStartMovement(Unit* pVictim, float fDistance = 0, float fAngle = 0);

    //Start no movement on victim
    void DoStartNoMovement(Unit* pVictim);

    //Stop attack of current victim
    void DoStopAttack();

    //Cast spell by spell info
    void DoCastSpell(Unit* pTarget, SpellEntry const* pSpellInfo, bool bTriggered = false);

    //Plays a sound to all nearby players
    void DoPlaySoundToSet(WorldObject* pSource, uint32 sound);

    //Drops all threat to 0%. Does not remove players from the threat list
    void DoResetThreat();

    float DoGetThreat(Unit* u);
    void DoModifyThreatPercent(Unit* pUnit, int32 pct);

    void DoTeleportTo(float fX, float fY, float fZ, uint32 uiTime = 0);
    void DoTeleportTo(const float pos[4]);

    void DoAction(const int32 /*param*/) {}

    //Teleports a player without dropping threat (only teleports to same map)
    void DoTeleportPlayer(Unit* pUnit, float fX, float fY, float fZ, float fO);
    void DoTeleportAll(float fX, float fY, float fZ, float fO);

    //Returns friendly unit with the most amount of hp missing from max hp
    Unit* DoSelectLowestHpFriendly(float fRange, uint32 uiMinHPDiff = 1);

    //Returns a list of friendly CC'd units within range
    std::list<Creature*> DoFindFriendlyCC(float fRange);

    //Returns a list of all friendly units missing a specific buff within range
    std::list<Creature*> DoFindFriendlyMissingBuff(float fRange, uint32 uiSpellId);

    //Return a player with at least minimumRange from me
    Player* GetPlayerAtMinimumRange(float fMinimumRange);

    //Spawns a creature relative to me
    Creature* DoSpawnCreature(uint32 uiId, float fX, float fY, float fZ, float fAngle, uint32 uiType, uint32 uiDespawntime);

    //Selects a unit from the creature's current aggro list
    Unit* SelectUnit(SelectAggroTarget pTarget, uint32 uiPosition);

    bool HealthBelowPct(uint32 pct) const { return me->HealthBelowPct(pct); }
    bool HealthAbovePct(uint32 pct) const { return me->HealthAbovePct(pct); }

    //Returns spells that meet the specified criteria from the creatures spell list
    SpellEntry const* SelectSpell(Unit* Target, uint32 School, uint32 Mechanic, SelectTargetType Targets,  uint32 PowerCostMin, uint32 PowerCostMax, float RangeMin, float RangeMax, SelectEffect Effect);

    //Checks if you can cast the specified spell
    bool CanCast(Unit* pTarget, SpellEntry const* pSpell, bool bTriggered = false);

    void SetEquipmentSlots(bool bLoadDefault, int32 uiMainHand = EQUIP_NO_CHANGE, int32 uiOffHand = EQUIP_NO_CHANGE, int32 uiRanged = EQUIP_NO_CHANGE);

    //Generally used to control if MoveChase() is to be used or not in AttackStart(). Some creatures does not chase victims
    void SetCombatMovement(bool CombatMove);
    bool IsCombatMovement() { return m_bCombatMovement; }

    bool EnterEvadeIfOutOfCombatArea(const uint32 uiDiff);

    // return true for heroic mode. i.e.
    //   - for dungeon in mode 10-heroic, 
    //   - for raid in mode 10-Heroic
    //   - for raid in mode 25-heroic
    // DO NOT USE to check raid in mode 25-normal.
    bool IsHeroic() { return m_heroicMode; }

    // return the dungeon or raid difficulty
    Difficulty getDifficulty() { return m_difficulty; }

    // return true for 25 man or 25 man heroic mode
    bool Is25ManRaid() { return m_difficulty & 1; }

    template<class T> inline
    const T& DUNGEON_MODE(const T& normal5, const T& heroic10)
    {
        switch(m_difficulty)
        {
        case DUNGEON_DIFFICULTY_NORMAL:
            return normal5;
        case DUNGEON_DIFFICULTY_HEROIC:
            return heroic10;
        default:
            break;
        }

        return heroic10;
    }

    template<class T> inline
    const T& RAID_MODE(const T& normal10, const T& normal25)
    {
        switch(m_difficulty)
        {
        case RAID_DIFFICULTY_10MAN_NORMAL:
            return normal10;
        case RAID_DIFFICULTY_25MAN_NORMAL:
            return normal25;
        default:
            break;
        }

        return normal25;
    }

    template<class T> inline
    const T& RAID_MODE(const T& normal10, const T& normal25, const T& heroic10, const T& heroic25)
    {
        switch(m_difficulty)
        {
        case RAID_DIFFICULTY_10MAN_NORMAL:
            return normal10;
        case RAID_DIFFICULTY_25MAN_NORMAL:
            return normal25;
        case RAID_DIFFICULTY_10MAN_HEROIC:
            return heroic10;
        case RAID_DIFFICULTY_25MAN_HEROIC:
            return heroic25;
        }

        return heroic25;
    }

    private:
        bool m_bCombatMovement;
        uint32 m_uiEvadeCheckCooldown;

        bool m_heroicMode;
        Difficulty m_difficulty;
};

struct Scripted_NoMovementAI : public ScriptedAI
{
    Scripted_NoMovementAI(Creature* creature) : ScriptedAI(creature) {}
    virtual ~Scripted_NoMovementAI() {}

    //Called at each attack of me by any victim
    void AttackStart(Unit* who);
};

struct BossAI : public ScriptedAI
{
    BossAI(Creature *c, uint32 id);
    virtual ~BossAI() {}

    const uint32 bossId;
    EventMap events;
    SummonList summons;
    InstanceScript * const instance;
    const BossBoundaryMap * const boundary;

    void JustSummoned(Creature *summon);
    void SummonedCreatureDespawn(Creature *summon);

    void UpdateAI(const uint32 diff) = 0;

    void Reset() { _Reset(); }
    void EnterCombat(Unit * /*who*/) { _EnterCombat(); }
    void JustDied(Unit * /*killer*/) { _JustDied(); }
    void JustReachedHome() { _JustReachedHome(); }

    protected:
        void _Reset();
        void _EnterCombat();
        void _JustDied();
        void _JustReachedHome() { me->setActive(false); }

        bool CheckInRoom()
        {
            if (CheckBoundary(me))
                return true;
            EnterEvadeMode();
            return false;
        }
        bool CheckBoundary(Unit *who);
        void TeleportCheaters();
};

// SD2 grid searchers.
Creature *GetClosestCreatureWithEntry(WorldObject *pSource, uint32 uiEntry, float fMaxSearchRange, bool bAlive = true);
GameObject *GetClosestGameObjectWithEntry(WorldObject *pSource, uint32 uiEntry, float fMaxSearchRange);
void GetCreatureListWithEntryInGrid(std::list<Creature*>& lList, WorldObject* pSource, uint32 uiEntry, float fMaxSearchRange);
void GetGameObjectListWithEntryInGrid(std::list<GameObject*>& lList, WorldObject* pSource, uint32 uiEntry, float fMaxSearchRange);

#endif

