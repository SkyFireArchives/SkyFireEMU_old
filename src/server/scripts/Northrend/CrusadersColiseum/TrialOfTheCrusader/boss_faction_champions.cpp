/* Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
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
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307  USA
 */

/* ScriptData
SDName: faction_champions
SD%Complete: ??%
SDComment: Scripts by Selector, modified by /dev/rsa
SDCategory: Crusader Coliseum
EndScriptData */

// Known bugs:
// All - untested
// Pets aren't being summoned by their masters

#include "ScriptPCH.h"
#include "trial_of_the_crusader.h"

enum eYell
{
    SAY_VARIAN_KILL_HORDE_PLAYER_1    = -1649120,
    SAY_VARIAN_KILL_HORDE_PLAYER_2    = -1649121,
    SAY_VARIAN_KILL_HORDE_PLAYER_3    = -1649122,
    SAY_VARIAN_KILL_HORDE_PLAYER_4    = -1649123,

    SAY_GARROSH_KILL_ALLIANCE_PLAYER_1= -1649115,
    SAY_GARROSH_KILL_ALLIANCE_PLAYER_2= -1649115,
    SAY_GARROSH_KILL_ALLIANCE_PLAYER_3= -1649115,
    SAY_GARROSH_KILL_ALLIANCE_PLAYER_4= -1649115,
};

enum eAIs
{
    AI_MELEE    = 0,
    AI_RANGED   = 1,
    AI_HEALER   = 2,
    AI_PET      = 3,
};

enum eSpells
{
    SPELL_ANTI_AOE      = 68595,
    SPELL_PVP_TRINKET   = 65547,
    SPELL_DUAL_WIELD    = 42459,
};

class boss_toc_champion_controller : public CreatureScript
{
public:
    boss_toc_champion_controller() : CreatureScript("boss_toc_champion_controller") { }

    struct boss_toc_champion_controllerAI : public ScriptedAI
    {
        boss_toc_champion_controllerAI(Creature* creature) : ScriptedAI(creature), Summons(me)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            ChampionsFailed = 0;
            ChampionsKilled = 0;
            bProgress = false;
        }

        std::vector<uint32> SelectChampions(Team playerTeam)
        {
            std::vector<uint32> HealersEntries;
            HealersEntries.clear();
            HealersEntries.push_back(playerTeam == ALLIANCE ? NPC_HORDE_DRUID_RESTORATION : NPC_ALLIANCE_DRUID_RESTORATION);
            HealersEntries.push_back(playerTeam == ALLIANCE ? NPC_HORDE_PALADIN_HOLY : NPC_ALLIANCE_PALADIN_HOLY);
            HealersEntries.push_back(playerTeam == ALLIANCE ? NPC_HORDE_PRIEST_DISCIPLINE : NPC_ALLIANCE_PRIEST_DISCIPLINE);
            HealersEntries.push_back(playerTeam == ALLIANCE ? NPC_HORDE_SHAMAN_RESTORATION : NPC_ALLIANCE_SHAMAN_RESTORATION);

            std::vector<uint32> OtherEntries;
            OtherEntries.clear();
            OtherEntries.push_back(playerTeam == ALLIANCE ? NPC_HORDE_DEATH_KNIGHT : NPC_ALLIANCE_DEATH_KNIGHT);
            OtherEntries.push_back(playerTeam == ALLIANCE ? NPC_HORDE_HUNTER : NPC_ALLIANCE_HUNTER);
            OtherEntries.push_back(playerTeam == ALLIANCE ? NPC_HORDE_MAGE : NPC_ALLIANCE_MAGE);
            OtherEntries.push_back(playerTeam == ALLIANCE ? NPC_HORDE_ROGUE : NPC_ALLIANCE_ROGUE);
            OtherEntries.push_back(playerTeam == ALLIANCE ? NPC_HORDE_WARLOCK : NPC_ALLIANCE_WARLOCK);
            OtherEntries.push_back(playerTeam == ALLIANCE ? NPC_HORDE_WARRIOR : NPC_ALLIANCE_WARRIOR);

            uint8 HealersSubtracted = 2;
            if (instance->instance->GetSpawnMode() == RAID_DIFFICULTY_25MAN_NORMAL || instance->instance->GetSpawnMode() == RAID_DIFFICULTY_25MAN_HEROIC)
                HealersSubtracted = 1;
            for (uint8 i = 0; i < HealersSubtracted; ++i)
            {
                uint8 pos = urand(0, HealersEntries.size()-1);
                switch (HealersEntries[pos])
                {
                    case NPC_ALLIANCE_DRUID_RESTORATION:  OtherEntries.push_back(NPC_ALLIANCE_DRUID_BALANCE); break;
                    case NPC_HORDE_DRUID_RESTORATION:     OtherEntries.push_back(NPC_HORDE_DRUID_BALANCE); break;
                    case NPC_ALLIANCE_PALADIN_HOLY:       OtherEntries.push_back(NPC_ALLIANCE_PALADIN_RETRIBUTION); break;
                    case NPC_HORDE_PALADIN_HOLY:          OtherEntries.push_back(NPC_HORDE_PALADIN_RETRIBUTION); break;
                    case NPC_ALLIANCE_PRIEST_DISCIPLINE:  OtherEntries.push_back(NPC_ALLIANCE_PRIEST_SHADOW); break;
                    case NPC_HORDE_PRIEST_DISCIPLINE:     OtherEntries.push_back(NPC_HORDE_PRIEST_SHADOW); break;
                    case NPC_ALLIANCE_SHAMAN_RESTORATION: OtherEntries.push_back(NPC_ALLIANCE_SHAMAN_ENHANCEMENT); break;
                    case NPC_HORDE_SHAMAN_RESTORATION:    OtherEntries.push_back(NPC_HORDE_SHAMAN_ENHANCEMENT); break;
                }
                HealersEntries.erase(HealersEntries.begin()+pos);
            }

            if (instance->instance->GetSpawnMode() == RAID_DIFFICULTY_10MAN_NORMAL || instance->instance->GetSpawnMode() == RAID_DIFFICULTY_10MAN_HEROIC)
                for (uint8 i = 0; i < 4; ++i)
                    OtherEntries.erase(OtherEntries.begin()+urand(0, OtherEntries.size()-1));

            std::vector<uint32> ChampionEntries;
            ChampionEntries.clear();
            for (uint8 i = 0; i < HealersEntries.size(); ++i)
                ChampionEntries.push_back(HealersEntries[i]);
            for (uint8 i = 0; i < OtherEntries.size(); ++i)
                ChampionEntries.push_back(OtherEntries[i]);

            return ChampionEntries;
        }

        void SummonChampions(Team playerTeam)
        {
            std::vector<Position> championJumpOrigin;
            if (playerTeam == ALLIANCE)
                for (uint8 i = 0; i < 5; i++)
                    championJumpOrigin.push_back(FactionChampionLoc[i]);
            else
                for (uint8 i = 5; i < 10; i++)
                    championJumpOrigin.push_back(FactionChampionLoc[i]);

            std::vector<Position> championJumtarget;
            for (uint8 i = 10; i < 20; i++)
                championJumtarget.push_back(FactionChampionLoc[i]);
            std::vector<uint32> ChampionEntries = SelectChampions(playerTeam);

            for (uint8 i = 0; i < ChampionEntries.size(); ++i)
            {
                uint8 pos = urand(0, championJumtarget.size()-1);
                if (Creature* temp = me->SummonCreature(ChampionEntries[i], championJumpOrigin[urand(0,championJumpOrigin.size()-1)], TEMPSUMMON_MANUAL_DESPAWN))
                {
                    Summons.Summon(temp);
                    temp->SetReactState(REACT_PASSIVE);
                    temp->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE);
                    if (playerTeam == ALLIANCE)
                    {
                        temp->SetHomePosition(championJumtarget[pos].GetPositionX(), championJumtarget[pos].GetPositionY(), championJumtarget[pos].GetPositionZ(),0);
                        temp->GetMotionMaster()->MoveJump(championJumtarget[pos].GetPositionX(), championJumtarget[pos].GetPositionY(), championJumtarget[pos].GetPositionZ(), 20.0f, 20.0f);
                        temp->SetOrientation(0);
                    }
                    else
                    {
                        temp->SetHomePosition((ToCCommonLoc[1].GetPositionX()*2)-championJumtarget[pos].GetPositionX(), championJumtarget[pos].GetPositionY(), championJumtarget[pos].GetPositionZ(),3);
                        temp->GetMotionMaster()->MoveJump((ToCCommonLoc[1].GetPositionX()*2)-championJumtarget[pos].GetPositionX(), championJumtarget[pos].GetPositionY(), championJumtarget[pos].GetPositionZ(), 20.0f, 20.0f);
                        temp->SetOrientation(3);
                    }
                }
                championJumtarget.erase(championJumtarget.begin()+pos);
            }
        }

        void SetData(uint32 uiType, uint32 data)
        {
            switch(uiType)
            {
                case 0:
                    SummonChampions((Team)data);
                    break;
                case 1:
                    for (std::list<uint64>::iterator i = Summons.begin(); i != Summons.end(); ++i)
                    {
                        if (Creature* temp = Unit::GetCreature(*me, *i))
                        {
                            temp->SetReactState(REACT_AGGRESSIVE);
                            temp->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE);
                        }
                    }
                    break;
                case 2:
                    switch(data)
                    {
                        case FAIL:
                            ChampionsFailed++;
                            if (ChampionsFailed + ChampionsKilled >= Summons.size())
                            {
                                instance->SetData(TYPE_CRUSADERS, FAIL);
                                Summons.DespawnAll();
                                me->ForcedDespawn();
                            }
                            break;
                        case IN_PROGRESS:
                            if (!bProgress)
                            {
                                ChampionsFailed = 0;
                                ChampionsKilled = 0;
                                bProgress = true;
                                Summons.DoZoneInCombat();
                                instance->SetData(TYPE_CRUSADERS, IN_PROGRESS);
                            }
                            break;
                        case DONE:
                            ChampionsKilled++;
                            if (ChampionsKilled == 1)
                                instance->SetData(TYPE_CRUSADERS, SPECIAL);
                            else if (ChampionsKilled >= Summons.size())
                            {
                                instance->SetData(TYPE_CRUSADERS, DONE);
                                Summons.DespawnAll();
                                me->ForcedDespawn();
                            }
                            break;
                    }
                    break;
            }
        }

    private:
        InstanceScript* instance;
        SummonList Summons;
        uint32 ChampionsFailed;
        uint32 ChampionsKilled;
        bool   bProgress;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new boss_toc_champion_controllerAI (creature);
    }
};

struct boss_faction_championsAI : public ScriptedAI
{
    boss_faction_championsAI(Creature* creature, uint32 aitype) : ScriptedAI(creature)
    {
        instance = (InstanceScript *) creature->GetInstanceScript();
        me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
        me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        mAIType = aitype;
        bIsWipe = false;
        if (IsHeroic())
        {
            me->ApplySpellImmune(0, IMMUNITY_STATE, SPELL_AURA_MOD_TAUNT, true);
            me->ApplySpellImmune(0, IMMUNITY_EFFECT,SPELL_EFFECT_ATTACK_ME, true);
        }
    }

    void Reset()
    {
        CCTimer = rand()%10000;
        ThreatTimer = 5000;
    }

    void JustReachedHome()
    {
        if (bIsWipe)
        {
            if (instance)
                if (Creature* pChampionController = Unit::GetCreature((*me), instance->GetData64(NPC_CHAMPIONS_CONTROLLER)))
                    pChampionController->AI()->SetData(TYPE_CRUSADERS, FAIL);
            me->DespawnOrUnsummon();
        }
    }

    float CalculateThreat(float distance, float armor, uint32 health)
    {
        float dist_mod = (mAIType == AI_MELEE || mAIType == AI_PET) ? 15.0f/(15.0f + distance) : 1.0f;
        float armor_mod = (mAIType == AI_MELEE || mAIType == AI_PET) ? armor / 16635.0f : 0.0f;
        float eh = (health+1) * (1.0f + armor_mod);
        return dist_mod * 30000.0f / eh;
    }

    void UpdateThreat()
    {
        std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();
        std::list<HostileReference*>::const_iterator itr;
        bool empty = true;
        for (itr = tList.begin(); itr!=tList.end(); ++itr)
        {
            Unit* unit = Unit::GetUnit((*me), (*itr)->getUnitGuid());
            if (unit && me->getThreatManager().getThreat(unit))
            {
                if (unit->GetTypeId()==TYPEID_PLAYER)
                {
                    float threat = CalculateThreat(me->GetDistance2d(unit), (float)unit->GetArmor(), unit->GetHealth());
                    me->getThreatManager().modifyThreatPercent(unit, -100);
                    me->AddThreat(unit, 1000000.0f * threat);
                    empty = false;
                }
            }
        }
    }

    void UpdatePower()
    {
        if (me->getPowerType() == POWER_MANA)
            me->ModifyPower(POWER_MANA, me->GetMaxPower(POWER_MANA) / 3);
        //else if (me->getPowerType() == POWER_ENERGY)
        //    me->ModifyPower(POWER_ENERGY, 100);
    }

    void RemoveCC()
    {
        me->RemoveAurasByType(SPELL_AURA_MOD_STUN);
        me->RemoveAurasByType(SPELL_AURA_MOD_FEAR);
        me->RemoveAurasByType(SPELL_AURA_MOD_ROOT);
        me->RemoveAurasByType(SPELL_AURA_MOD_PACIFY);
        me->RemoveAurasByType(SPELL_AURA_MOD_CONFUSE);
        //DoCast(me, SPELL_PVP_TRINKET);
    }

    void JustDied(Unit* /*killer*/)
    {
        if (mAIType != AI_PET)
            if (instance)
                if (Creature* championController = Unit::GetCreature((*me),instance->GetData64(NPC_CHAMPIONS_CONTROLLER)))
                    championController->AI()->SetData(2, DONE);
    }

    void EnterCombat(Unit* /*who*/)
    {
        DoCast(me, SPELL_ANTI_AOE, true);
        me->SetInCombatWithZone();
        bIsWipe = true;
        if (instance)
            if (Creature* championController = Unit::GetCreature((*me),instance->GetData64(NPC_CHAMPIONS_CONTROLLER)))
                championController->AI()->SetData(TYPE_CRUSADERS, IN_PROGRESS);
    }

    void KilledUnit(Unit* who)
    {
        if (who->GetTypeId() == TYPEID_PLAYER)
        {
            Map::PlayerList const &players = me->GetMap()->GetPlayers();
            uint32 TeamInInstance = 0;

            if (!players.isEmpty())
                if (Player* pPlayer = players.begin()->getSource())
                    TeamInInstance = pPlayer->GetTeam();

            if (instance)
            {
                if (TeamInInstance == ALLIANCE)
                {
                    if (Creature* temp = Unit::GetCreature(*me,instance->GetData64(NPC_VARIAN)))
                        DoScriptText(RAND(SAY_VARIAN_KILL_HORDE_PLAYER_1,SAY_VARIAN_KILL_HORDE_PLAYER_2,SAY_VARIAN_KILL_HORDE_PLAYER_3,SAY_VARIAN_KILL_HORDE_PLAYER_4), temp); // + cause we are on negative
                }
                else
                    if (Creature* temp = me->FindNearestCreature(NPC_GARROSH, 300.f))
                        DoScriptText(RAND(SAY_GARROSH_KILL_ALLIANCE_PLAYER_1,SAY_GARROSH_KILL_ALLIANCE_PLAYER_2,SAY_GARROSH_KILL_ALLIANCE_PLAYER_3,SAY_GARROSH_KILL_ALLIANCE_PLAYER_4), temp); // + cause we are on negative

                instance->SetData(DATA_TRIBUTE_TO_IMMORTALITY_ELEGIBLE, 0);
            }
        }
    }

    Creature* SelectRandomFriendlyMissingBuff(uint32 spell)
    {
        std::list<Creature *> lst = DoFindFriendlyMissingBuff(40.0f, spell);
        std::list<Creature *>::const_iterator itr = lst.begin();
        if (lst.empty())
            return NULL;
        advance(itr, rand()%lst.size());
        return (*itr);
    }

    Unit* SelectEnemyCaster(bool /*casting*/)
    {
        std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();
        std::list<HostileReference*>::const_iterator iter;
        Unit *target;
        for (iter = tList.begin(); iter!=tList.end(); ++iter)
        {
            target = Unit::GetUnit((*me),(*iter)->getUnitGuid());
            if (target && target->getPowerType() == POWER_MANA)
                return target;
        }
        return NULL;
    }

    uint32 EnemiesInRange(float distance)
    {
        std::list<HostileReference*> const& tList = me->getThreatManager().getThreatList();
        std::list<HostileReference*>::const_iterator iter;
        uint32 count = 0;
        Unit *target;
        for (iter = tList.begin(); iter!=tList.end(); ++iter)
        {
            target = Unit::GetUnit((*me),(*iter)->getUnitGuid());
                if (target && me->GetDistance2d(target) < distance)
                    ++count;
        }
        return count;
    }

    void AttackStart(Unit* who)
    {
        if (!who) 
            return;

        if (me->Attack(who, true))
        {
            me->AddThreat(who, 10.0f);
            me->SetInCombatWith(who);
            who->SetInCombatWith(me);

            if (mAIType == AI_MELEE || mAIType == AI_PET)
                DoStartMovement(who);
            else
                DoStartMovement(who, 20.0f);
            SetCombatMovement(true);
        }
    }

    void UpdateAI(const uint32 diff)
    {
        if (ThreatTimer < diff)
        {
            UpdatePower();
            UpdateThreat();
            ThreatTimer = 4000;
        }
        else ThreatTimer -= diff;

        if (mAIType != AI_PET)
        {
            if (CCTimer < diff)
            {
                RemoveCC();
                CCTimer = 8000+rand()%2000;
            }
            else CCTimer -= diff;
        }

        if (mAIType == AI_MELEE || mAIType == AI_PET) 
            DoMeleeAttackIfReady();
    }

private:     
    InstanceScript* instance;
    uint32 mAIType;
    uint32 ThreatTimer;
    uint32 CCTimer;
    bool bIsWipe;
};

/********************************************************************
                            HEALERS
********************************************************************/
enum eDruidSpells
{
    SPELL_LIFEBLOOM         = 66093,
    SPELL_NOURISH           = 66066,
    SPELL_REGROWTH          = 66067,
    SPELL_REJUVENATION      = 66065,
    SPELL_TRANQUILITY       = 66086,
    SPELL_BARKSKIN          = 65860, //1 min cd
    SPELL_THORNS            = 66068,
    SPELL_NATURE_GRASP      = 66071, //1 min cd, self buff
};

class mob_toc_druid : public CreatureScript
{
public:
    mob_toc_druid() : CreatureScript("mob_toc_druid") { }

    struct mob_toc_druidAI : public boss_faction_championsAI
    {
        mob_toc_druidAI(Creature* creature) : boss_faction_championsAI(creature, AI_HEALER) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            NatureGraspTimer = IN_MILLISECONDS;
            TranquilityTimer = IN_MILLISECONDS;
            BarkskinTimer = IN_MILLISECONDS;
            CommonTimer = IN_MILLISECONDS;
            SetEquipmentSlots(false, 51799, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (NatureGraspTimer <= diff)
            {
                DoCast(me, SPELL_NATURE_GRASP);
                NatureGraspTimer = urand(40*IN_MILLISECONDS, 80*IN_MILLISECONDS);
            } else NatureGraspTimer -= diff;

            if (TranquilityTimer <= diff)
            {
                DoCastAOE(SPELL_TRANQUILITY);
                TranquilityTimer = urand(40*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            } else TranquilityTimer -= diff;

            if (BarkskinTimer <= diff)
            {
                if (HealthBelowPct(50))
                    DoCast(me, SPELL_BARKSKIN);
                BarkskinTimer = urand(45*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            } else BarkskinTimer -= diff;

            if (CommonTimer <= diff)
            {
                switch(urand(0,4))
                {
                    case 0:
                        DoCast(me, SPELL_LIFEBLOOM);
                        break;
                    case 1:
                        DoCast(me, SPELL_NOURISH);
                        break;
                    case 2:
                        DoCast(me, SPELL_REGROWTH);
                        break;
                    case 3:
                        DoCast(me, SPELL_REJUVENATION);
                        break;
                    case 4:
                        if (Creature* target = SelectRandomFriendlyMissingBuff(SPELL_THORNS))
                            DoCast(target,SPELL_THORNS);
                        break;
                }
                CommonTimer = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            } else CommonTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 NatureGraspTimer;
        uint32 TranquilityTimer;
        uint32 BarkskinTimer;
        uint32 CommonTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_druidAI (creature);
    }
};

enum eShamanSpells
{
    SPELL_HEALING_WAVE          = 66055,
    SPELL_RIPTIDE               = 66053,
    SPELL_SPIRIT_CLEANSE        = 66056, //friendly only
    SPELL_HEROISM               = 65983,
    SPELL_BLOODLUST             = 65980,
    SPELL_HEX                   = 66054,
    SPELL_EARTH_SHIELD          = 66063,
    SPELL_EARTH_SHOCK           = 65973,
    AURA_EXHAUSTION             = 57723,
    AURA_SATED                  = 57724,
};

class mob_toc_shaman : public CreatureScript
{
public:
    mob_toc_shaman() : CreatureScript("mob_toc_shaman") { }

    struct mob_toc_shamanAI : public boss_faction_championsAI
    {
        mob_toc_shamanAI(Creature *creature) : boss_faction_championsAI(creature, AI_HEALER) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            HeroismOrBloodlustTimer = 25*IN_MILLISECONDS;
            HexTimer = 10*IN_MILLISECONDS;
            CommonTimer = IN_MILLISECONDS;
            SetEquipmentSlots(false, 49992, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (HeroismOrBloodlustTimer <= diff)
            {
                if (me->getFaction()) //Am i alliance?
                {
                    if (!me->HasAura(AURA_EXHAUSTION))
                        DoCastAOE(SPELL_HEROISM);
                }
                else
                    if (!me->HasAura(AURA_SATED))
                        DoCastAOE(SPELL_BLOODLUST);
                HeroismOrBloodlustTimer = urand(60*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            } else HeroismOrBloodlustTimer -= diff;

            if (HexTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target,SPELL_HEX);
                HexTimer = urand(10*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            } else HexTimer -= diff;

            if (CommonTimer <= diff)
            {
                switch(urand(0,5))
                {
                    case 0: 
                    case 1:
                        DoCast(me,SPELL_HEALING_WAVE);
                        break;
                    case 2:
                        DoCast(me,SPELL_RIPTIDE);
                        break;
                    case 3:
                        DoCast(me,SPELL_EARTH_SHOCK);
                        break;
                    case 4:
                        DoCast(me,SPELL_SPIRIT_CLEANSE);
                        break;
                    case 5:
                        if (Unit *target = SelectRandomFriendlyMissingBuff(SPELL_EARTH_SHIELD))
                            DoCast(target, SPELL_EARTH_SHIELD);
                        break;
                }
                CommonTimer = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            } else CommonTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 HeroismOrBloodlustTimer;
        uint32 HexTimer;
        uint32 CommonTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_shamanAI (creature);
    }
};

enum ePaladinSpells
{
    SPELL_HAND_OF_FREEDOM     = 68757, //25 sec cd
    SPELL_BUBBLE              = 66010, //5 min cd
    SPELL_CLEANSE             = 66116,
    SPELL_FLASH_OF_LIGHT      = 66113,
    SPELL_HOLY_LIGHT          = 66112,
    SPELL_HOLY_SHOCK          = 66114,
    SPELL_HAND_OF_PROTECTION  = 66009,
    SPELL_HAMMER_OF_JUSTICE   = 66613,
};

class mob_toc_paladin : public CreatureScript
{
public:
    mob_toc_paladin() : CreatureScript("mob_toc_paladin") { }

    struct mob_toc_paladinAI : public boss_faction_championsAI
    {
        mob_toc_paladinAI(Creature *creature) : boss_faction_championsAI(creature, AI_HEALER) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            BubbleTimer = urand(0*IN_MILLISECONDS, 360*IN_MILLISECONDS);
            HandOfProtectionTimer = urand(0*IN_MILLISECONDS, 360*IN_MILLISECONDS);
            HolyShockTimer = urand(6*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            HandOfFreedomTimer = urand(25*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            HammerOfJusticeTimer = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            CommonTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            SetEquipmentSlots(false, 50771, 47079, EQUIP_NO_CHANGE);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (BubbleTimer <= diff)
            {
                //cast bubble at 20% hp
                if (HealthBelowPct(20))
                    DoCast(me, SPELL_BUBBLE);
                BubbleTimer = urand(0*IN_MILLISECONDS, 360*IN_MILLISECONDS);
            } else BubbleTimer -= diff;

            if (HandOfProtectionTimer <= diff)
            {
                if (Unit *target = DoSelectLowestHpFriendly(40.0f))
                    if (target->HealthBelowPct(15))
                        DoCast(target,SPELL_HAND_OF_PROTECTION);
                HandOfProtectionTimer = urand(0*IN_MILLISECONDS, 360*IN_MILLISECONDS);
            } else HandOfProtectionTimer -= diff;

            if (HolyShockTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_HOLY_SHOCK);
                HolyShockTimer = urand(6*IN_MILLISECONDS, 7*IN_MILLISECONDS);
            } else HolyShockTimer -= diff;

            if (HandOfFreedomTimer <= diff)
            {
                if (Unit *target = SelectRandomFriendlyMissingBuff(SPELL_HAND_OF_FREEDOM))
                    DoCast(target, SPELL_HAND_OF_FREEDOM);
                HandOfFreedomTimer = urand(25*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            } else HandOfFreedomTimer -= diff;

            if (HammerOfJusticeTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_HAMMER_OF_JUSTICE);
                HammerOfJusticeTimer = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else HammerOfJusticeTimer -= diff;

            if (CommonTimer <= diff)
            {
                switch(urand(0,4))
                {
                    case 0: 
                    case 1:
                        DoCast(me, SPELL_FLASH_OF_LIGHT);
                        break;
                    case 2: 
                    case 3:
                        DoCast(me, SPELL_HOLY_LIGHT);
                        break;
                    case 4:
                        DoCast(me, SPELL_CLEANSE);
                        break;
                }
                CommonTimer = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            } else CommonTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 BubbleTimer;
        uint32 HandOfProtectionTimer;
        uint32 HolyShockTimer;
        uint32 HandOfFreedomTimer;
        uint32 HammerOfJusticeTimer;
        uint32 CommonTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_paladinAI (creature);
    }
};

enum ePriestSpells
{
    SPELL_RENEW             = 66177,
    SPELL_SHIELD            = 66099,
    SPELL_FLASH_HEAL        = 66104,
    SPELL_DISPEL            = 65546,
    SPELL_PSYCHIC_SCREAM    = 65543,
    SPELL_MANA_BURN         = 66100,
};

class mob_toc_priest : public CreatureScript
{
public:
    mob_toc_priest() : CreatureScript("mob_toc_priest") { }

    struct mob_toc_priestAI : public boss_faction_championsAI
    {
        mob_toc_priestAI(Creature *creature) : boss_faction_championsAI(creature, AI_HEALER) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            PsychicScreamTimer = IN_MILLISECONDS;
            CommonTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            SetEquipmentSlots(false, 49992, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (PsychicScreamTimer <= diff)
            {
                if (EnemiesInRange(10.0f) > 2)
                    DoCastAOE(SPELL_PSYCHIC_SCREAM);
                PsychicScreamTimer = urand(5*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            } else PsychicScreamTimer -= diff;

            if (CommonTimer <= diff)
            {
                switch(urand(0,5))
                {
                    case 0:
                        DoCast(me, SPELL_RENEW);
                        break;
                    case 1:
                        DoCast(me, SPELL_SHIELD);
                        break;
                    case 2: 
                    case 3:
                        DoCast(me, SPELL_FLASH_HEAL);
                        break;
                    case 4:
                        if (Unit *target = urand(0,1) ? SelectTarget(SELECT_TARGET_RANDOM, 0) : DoSelectLowestHpFriendly(40.0f))
                            DoCast(target, SPELL_DISPEL);
                        break;
                    case 5:
                        DoCast(me, SPELL_MANA_BURN);
                        break;
                }
                CommonTimer = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            } else CommonTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 PsychicScreamTimer;
        uint32 CommonTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_priestAI (creature);
    }
};

/********************************************************************
                            RANGED
********************************************************************/
enum eShadowPriestSpells
{
    SPELL_SILENCE           = 65542,
    SPELL_VAMPIRIC_TOUCH    = 65490,
    SPELL_SW_PAIN           = 65541,
    SPELL_MIND_FLAY         = 65488,
    SPELL_MIND_BLAST        = 65492,
    SPELL_HORROR            = 65545,
    SPELL_DISPERSION        = 65544,
    SPELL_SHADOWFORM        = 16592,
};

class mob_toc_shadow_priest : public CreatureScript
{
public:
    mob_toc_shadow_priest() : CreatureScript("mob_toc_shadow_priest") { }

    struct mob_toc_shadow_priestAI : public boss_faction_championsAI
    {
        mob_toc_shadow_priestAI(Creature *creature) : boss_faction_championsAI(creature, AI_RANGED) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            PsychicScreamTimer = urand(5*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            DispersionTimer = urand(1*IN_MILLISECONDS, 180*IN_MILLISECONDS);
            SilenceTimer = urand(8*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            MindBlastTimer = urand(3*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            CommonTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            SetEquipmentSlots(false, 50040, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
            DoCast(me,SPELL_SHADOWFORM);
        }

        void EnterCombat(Unit *who)
        {
            boss_faction_championsAI::EnterCombat(who);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (PsychicScreamTimer <= diff)
            {
                if (EnemiesInRange(10.0f) > 2)
                    DoCastAOE(SPELL_PSYCHIC_SCREAM);
                PsychicScreamTimer = urand(5*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            } else PsychicScreamTimer -= diff;

            if (DispersionTimer <= diff)
            {
                if (HealthBelowPct(20))
                    DoCast(me, SPELL_DISPERSION);
                DispersionTimer = urand(1*IN_MILLISECONDS, 180*IN_MILLISECONDS);
            } else DispersionTimer -= diff;

            if (SilenceTimer <= diff)
            {
                if (Unit *target = SelectEnemyCaster(false))
                    DoCast(target, SPELL_SILENCE);
                SilenceTimer = urand(8*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else SilenceTimer -= diff;

            if (MindBlastTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_MIND_BLAST);
                MindBlastTimer = urand(3*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            } else MindBlastTimer -= diff;

            if (CommonTimer <= diff)
            {
                switch(urand(0,4))
                {
                    case 0: 
                    case 1:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_MIND_FLAY);
                        break;
                    case 2:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_VAMPIRIC_TOUCH);
                        break;
                   case 3:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_SW_PAIN);
                        break;
                   case 4:
                        if (Unit *target = urand(0, 1) ? SelectTarget(SELECT_TARGET_RANDOM, 0) : DoSelectLowestHpFriendly(40.0f))
                            DoCast(target, SPELL_DISPEL);
                        break;
                }
                CommonTimer = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            } else CommonTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 PsychicScreamTimer;
        uint32 DispersionTimer;
        uint32 SilenceTimer;
        uint32 MindBlastTimer;
        uint32 CommonTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_shadow_priestAI (creature);
    }
};

enum eWarlockSpells
{
    SPELL_HELLFIRE              = 65816,
    SPELL_CORRUPTION            = 65810,
    SPELL_CURSE_OF_AGONY        = 65814,
    SPELL_CURSE_OF_EXHAUSTION   = 65815,
    SPELL_FEAR                  = 65809, //8s
    SPELL_SEARING_PAIN          = 65819,
    SPELL_SHADOW_BOLT           = 65821,
    SPELL_UNSTABLE_AFFLICTION   = 65812,
    SPELL_SUMMON_FELHUNTER      = 67514,
    H_SPELL_UNSTABLE_AFFLICTION = 68155, //15s
};

class mob_toc_warlock : public CreatureScript
{
public:
    mob_toc_warlock() : CreatureScript("mob_toc_warlock") { }

    struct mob_toc_warlockAI : public boss_faction_championsAI
    {
        mob_toc_warlockAI(Creature *creature) : boss_faction_championsAI(creature, AI_RANGED), Summons(me) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            FearTimer = urand(4*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            HellfireTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            UnstableAfflictionTimer = urand(2*IN_MILLISECONDS, 10*IN_MILLISECONDS);
            CommonTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            SetEquipmentSlots(false, 49992, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);

            SummonPetTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            DoCast(me, SPELL_SUMMON_FELHUNTER, true);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (FearTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target,SPELL_FEAR);
                FearTimer = urand(4*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else FearTimer -= diff;

            if (HellfireTimer <= diff)
            {
                if (EnemiesInRange(10.0f) > 2)
                    DoCastAOE(SPELL_HELLFIRE);
                HellfireTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            } else HellfireTimer -= diff;

            if (UnstableAfflictionTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_UNSTABLE_AFFLICTION);
                UnstableAfflictionTimer = urand(2*IN_MILLISECONDS, 10*IN_MILLISECONDS);
            } else UnstableAfflictionTimer -= diff;

            if (SummonPetTimer <= diff)
            {
                SummonPetTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            } else SummonPetTimer -= diff;

            if (CommonTimer <= diff)
            {
                switch(urand(0,6))
                {
                    case 0: 
                    case 1:
                    case 2:
                        DoCastVictim(SPELL_SHADOW_BOLT);
                        break;
                    case 3:
                        DoCastVictim(SPELL_SEARING_PAIN);
                        break;
                    case 4:
                        DoCastVictim(SPELL_CORRUPTION);
                        break;
                    case 5:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_CURSE_OF_AGONY);
                        break;
                    case 6:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_CURSE_OF_EXHAUSTION);
                        break;
                }
                CommonTimer = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            } else CommonTimer -= diff;
            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        SummonList Summons;
        uint32 FearTimer;
        uint32 HellfireTimer;
        uint32 UnstableAfflictionTimer;
        uint32 CommonTimer;
        uint32 SummonPetTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_warlockAI (creature);
    }
};

enum eMageSpells
{
    SPELL_ARCANE_BARRAGE    = 65799, //3s
    SPELL_ARCANE_BLAST      = 65791,
    SPELL_ARCANE_EXPLOSION  = 65800,
    SPELL_BLINK             = 65793, //15s
    SPELL_COUNTERSPELL      = 65790, //24s
    SPELL_FROST_NOVA        = 65792, //25s
    SPELL_FROSTBOLT         = 65807,
    SPELL_ICE_BLOCK         = 65802, //5min
    SPELL_POLYMORPH         = 65801, //15s
};

class mob_toc_mage : public CreatureScript
{
public:
    mob_toc_mage() : CreatureScript("mob_toc_mage") { }

    struct mob_toc_mageAI : public boss_faction_championsAI
    {
        mob_toc_mageAI(Creature *creature) : boss_faction_championsAI(creature, AI_RANGED) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            CounterspellTimer = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            BlinkTimer = urand(7*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            IceBlockTimer = urand(0*IN_MILLISECONDS, 360*IN_MILLISECONDS);
            PolymorphTimer = urand(15*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            CommonTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            SetEquipmentSlots(false, 47524, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (CounterspellTimer <= diff)
            {
                if (Unit *target = SelectEnemyCaster(false))
                    DoCast(target,SPELL_COUNTERSPELL);
                CounterspellTimer = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else CounterspellTimer -= diff;

            if (BlinkTimer <= diff)
            {
                if (HealthBelowPct(50) && EnemiesInRange(10.0f) > 3)
                {
                    DoCastAOE(SPELL_FROST_NOVA);
                    DoCast(SPELL_BLINK);
                }
                BlinkTimer = urand(7*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            } else BlinkTimer -= diff;

            if (IceBlockTimer <= diff)
            {
                if (HealthBelowPct(20))
                    DoCast(me,SPELL_ICE_BLOCK);
                IceBlockTimer = urand(0*IN_MILLISECONDS, 360*IN_MILLISECONDS);
            } else IceBlockTimer -= diff;

            if (PolymorphTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target,SPELL_POLYMORPH);
                PolymorphTimer = urand(15*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            } else PolymorphTimer -= diff;

            if (CommonTimer <= diff)
            {
                switch(urand(0,4))
                {
                    case 0:
                        DoCast(me,SPELL_ARCANE_BARRAGE);
                        break;
                    case 1:
                        DoCastVictim(SPELL_ARCANE_BLAST);
                        break;
                    case 2:
                    case 3:
                    case 4:
                        DoCastVictim(SPELL_FROSTBOLT);
                        break;
                }
                CommonTimer = urand(2*IN_MILLISECONDS,3*IN_MILLISECONDS);
            } else CommonTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 CounterspellTimer;
        uint32 BlinkTimer;
        uint32 IceBlockTimer;
        uint32 PolymorphTimer;
        uint32 CommonTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_mageAI (creature);
    }
};

enum eHunterSpells
{
    SPELL_AIMED_SHOT        = 65883,
    SPELL_DETERRENCE        = 65871, //90s
    SPELL_DISENGAGE         = 65869, //30s
    SPELL_EXPLOSIVE_SHOT    = 65866,
    SPELL_FROST_TRAP        = 65880, //30s
    SPELL_SHOOT             = 65868, //1.7s
    SPELL_STEADY_SHOT       = 65867, //3s
    SPELL_WING_CLIP         = 66207, //6s
    SPELL_WYVERN_STING      = 65877, //60s
    SPELL_CALL_PET          = 67777,
};

class mob_toc_hunter : public CreatureScript
{
public:
    mob_toc_hunter() : CreatureScript("mob_toc_hunter") { }

    struct mob_toc_hunterAI : public boss_faction_championsAI
    {
        mob_toc_hunterAI(Creature *creature) : boss_faction_championsAI(creature, AI_RANGED), Summons(me) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            disengageTimer = urand(12*IN_MILLISECONDS, 20*IN_MILLISECONDS);
            deterrenceTimer = urand(20*IN_MILLISECONDS, 120*IN_MILLISECONDS);
            wyvernStingTimer = urand(7*IN_MILLISECONDS, 60*IN_MILLISECONDS);
            frostTrapTimer = urand(12*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            wingClipTimer = urand(4*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            CommonTimer = urand(5*IN_MILLISECONDS, 6*IN_MILLISECONDS);
            SetEquipmentSlots(false, 47156, EQUIP_NO_CHANGE, 48711);

            SummonPetTimer = urand(15*IN_MILLISECONDS,30*IN_MILLISECONDS);
            DoCast(me, SPELL_CALL_PET, true);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (disengageTimer <= diff)
            {
                if (EnemiesInRange(10.0f) > 3)
                    DoCast(SPELL_DISENGAGE);
                disengageTimer = urand(12*IN_MILLISECONDS, 20*IN_MILLISECONDS);
            } else disengageTimer -= diff;

            if (deterrenceTimer <= diff)
            {
                if (HealthBelowPct(20))
                    DoCast(SPELL_DETERRENCE);
                deterrenceTimer = urand(20*IN_MILLISECONDS, 120*IN_MILLISECONDS);
            } else deterrenceTimer -= diff;

            if (wyvernStingTimer <= diff)
            {
                DoCastVictim(SPELL_WYVERN_STING);
                wyvernStingTimer = urand(7*IN_MILLISECONDS, 60*IN_MILLISECONDS);
            } else wyvernStingTimer -= diff;

            if (frostTrapTimer <= diff)
            {
                DoCast(SPELL_FROST_TRAP);
                frostTrapTimer = urand(12*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            } else frostTrapTimer -= diff;

            if (wingClipTimer <= diff)
            {
                if (me->GetDistance2d(me->getVictim()) < 5.0f)
                    DoCastVictim(SPELL_WING_CLIP);
                wingClipTimer = urand(4*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            } else wingClipTimer -= diff;

            if (SummonPetTimer <= diff)
            {
                SummonPetTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            } else SummonPetTimer -= diff;

            if (CommonTimer <= diff)
            {
                switch(urand(0,3))
                {
                    case 0: 
                    case 1:
                        DoCastVictim(SPELL_SHOOT);
                        break;
                    case 2:
                        DoCastVictim(SPELL_EXPLOSIVE_SHOT);
                        break;
                    case 3:
                        DoCastVictim(SPELL_AIMED_SHOT);
                        break;
                }
                CommonTimer = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            } else CommonTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        SummonList Summons;
        uint32 disengageTimer;
        uint32 deterrenceTimer;
        uint32 wyvernStingTimer;
        uint32 frostTrapTimer;
        uint32 wingClipTimer;
        uint32 CommonTimer;
        uint32 SummonPetTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_hunterAI (creature);
    }
};

enum eBoomkinSpells
{
    SPELL_CYCLONE           = 65859, //6s
    SPELL_ENTANGLING_ROOTS  = 65857, //10s
    SPELL_FAERIE_FIRE       = 65863,
    SPELL_FORCE_OF_NATURE   = 65861, //180s
    SPELL_INSECT_SWARM      = 65855,
    SPELL_MOONFIRE          = 65856, //5s
    SPELL_STARFIRE          = 65854,
    SPELL_WRATH             = 65862,
};

class mob_toc_boomkin : public CreatureScript
{
public:
    mob_toc_boomkin() : CreatureScript("mob_toc_boomkin") { }

    struct mob_toc_boomkinAI : public boss_faction_championsAI
    {
        mob_toc_boomkinAI(Creature *creature) : boss_faction_championsAI(creature, AI_RANGED) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            BarkskinTimer = urand(5*IN_MILLISECONDS, 120*IN_MILLISECONDS);
            CycloneTimer = urand(5*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            EntanglingRootsTimer = urand(5*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            FaerieFireTimer = urand(10*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            CommonTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            SetEquipmentSlots(false, 50966, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (BarkskinTimer <= diff)
            {
                if (HealthBelowPct(50))
                    DoCast(me,SPELL_BARKSKIN);
                BarkskinTimer = urand(5*IN_MILLISECONDS, 120*IN_MILLISECONDS);
            } else BarkskinTimer -= diff;

            if (CycloneTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target,SPELL_CYCLONE);
                CycloneTimer = urand(5*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            } else CycloneTimer -= diff;

            if (EntanglingRootsTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_ENTANGLING_ROOTS);
                EntanglingRootsTimer = urand(5*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            } else EntanglingRootsTimer -= diff;

            if (FaerieFireTimer <= diff)
            {
                DoCastVictim(SPELL_FAERIE_FIRE);
                FaerieFireTimer = urand(10*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            } else FaerieFireTimer -= diff;

            if (CommonTimer <= diff)
            {
                switch(urand(0,6))
                {
                    case 0: 
                    case 1:
                        DoCastVictim(SPELL_MOONFIRE);
                        break;
                    case 2:
                        DoCastVictim(SPELL_INSECT_SWARM);
                        break;
                    case 3:
                        DoCastVictim(SPELL_STARFIRE);
                        break;
                    case 4: 
                    case 5: 
                    case 6:
                        DoCastVictim(SPELL_WRATH);
                        break;
                }
                CommonTimer = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            } else CommonTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 BarkskinTimer;
        uint32 CycloneTimer;
        uint32 EntanglingRootsTimer;
        uint32 FaerieFireTimer;
        uint32 CommonTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_boomkinAI (creature);
    }
};

/********************************************************************
                            MELEE
********************************************************************/
enum eWarriorSpells
{
    SPELL_BLADESTORM            = 65947,
    SPELL_INTIMIDATING_SHOUT    = 65930,
    SPELL_MORTAL_STRIKE         = 65926,
    SPELL_CHARGE                = 68764,
    SPELL_DISARM                = 65935,
    SPELL_OVERPOWER             = 65924,
    SPELL_SUNDER_ARMOR          = 65936,
    SPELL_SHATTERING_THROW      = 65940,
    SPELL_RETALIATION           = 65932,
};

class mob_toc_warrior : public CreatureScript
{
public:
    mob_toc_warrior() : CreatureScript("mob_toc_warrior") { }

    struct mob_toc_warriorAI : public boss_faction_championsAI
    {
        mob_toc_warriorAI(Creature *creature) : boss_faction_championsAI(creature, AI_MELEE) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            BladestormTimer = urand(20*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            IntimidatingShoutTimer = urand(10*IN_MILLISECONDS, 60*IN_MILLISECONDS);
            MortalStrikeTimer = urand(6*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            SunderArmorTimer = urand(5*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            ChargeTimer = urand(3*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            RetaliationTimer = urand(30*IN_MILLISECONDS,60*IN_MILLISECONDS);
            OverpowerTimer = urand(30*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            ShatteringThrowTimer = urand(10*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            DisarmTimer = urand(20*IN_MILLISECONDS, 80*IN_MILLISECONDS);
            SetEquipmentSlots(false, 47427, 46964, EQUIP_NO_CHANGE);
            DoCast(me, SPELL_DUAL_WIELD, true);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (BladestormTimer <= diff)
            {
                DoCastVictim(SPELL_BLADESTORM);
                BladestormTimer = urand(20*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            } else BladestormTimer -= diff;

            if (IntimidatingShoutTimer <= diff)
            {
                DoCast(me,SPELL_INTIMIDATING_SHOUT);
                IntimidatingShoutTimer = urand(10*IN_MILLISECONDS, 60*IN_MILLISECONDS);
            } else IntimidatingShoutTimer -= diff;

            if (MortalStrikeTimer <= diff)
            {
                DoCastVictim(SPELL_MORTAL_STRIKE);
                MortalStrikeTimer = urand(6*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            } else MortalStrikeTimer -= diff;

            if (SunderArmorTimer <= diff)
            {
                DoCastVictim(SPELL_SUNDER_ARMOR);
                SunderArmorTimer = urand(5*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            } else SunderArmorTimer -= diff;

            if (ChargeTimer <= diff)
            {
                DoCastVictim(SPELL_CHARGE);
                ChargeTimer = urand(3*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            } else ChargeTimer -= diff;

            if (RetaliationTimer <= diff)
            {
                DoCastVictim(SPELL_RETALIATION);
                RetaliationTimer = urand(30*IN_MILLISECONDS, 60*IN_MILLISECONDS);
            } else RetaliationTimer -= diff;

            if (OverpowerTimer <= diff)
            {
                DoCastVictim(SPELL_OVERPOWER);
                OverpowerTimer = urand(30*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            } else OverpowerTimer -= diff;

            if (ShatteringThrowTimer <= diff)
            {
                DoCastVictim(SPELL_SHATTERING_THROW);
                ShatteringThrowTimer = urand(10*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            } else ShatteringThrowTimer -= diff;

            if (DisarmTimer <= diff)
            {
                DoCastVictim(SPELL_DISARM);
                DisarmTimer = urand(20*IN_MILLISECONDS, 80*IN_MILLISECONDS);
            } else DisarmTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 BladestormTimer;
        uint32 IntimidatingShoutTimer;
        uint32 MortalStrikeTimer;
        uint32 SunderArmorTimer;
        uint32 ChargeTimer;
        uint32 RetaliationTimer;
        uint32 OverpowerTimer;
        uint32 ShatteringThrowTimer;
        uint32 DisarmTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_warriorAI (creature);
    }
};

enum eDeathKnightSpells
{
    SPELL_CHAINS_OF_ICE       = 66020, //8sec
    SPELL_DEATH_COIL          = 66019, //5sec
    SPELL_DEATH_GRIP          = 66017, //35sec
    SPELL_FROST_STRIKE        = 66047, //6sec
    SPELL_ICEBOUND_FORTITUDE  = 66023, //1min
    SPELL_ICY_TOUCH           = 66021, //8sec
    SPELL_STRANGULATE         = 66018, //2min
};

class mob_toc_dk : public CreatureScript
{
public:
    mob_toc_dk() : CreatureScript("mob_toc_dk") { }

    struct mob_toc_dkAI : public boss_faction_championsAI
    {
        mob_toc_dkAI(Creature *creature) : boss_faction_championsAI(creature, AI_MELEE) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            IceboundFortitudeTimer = urand(5*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            ChainsOfIceTimer = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            DeathCoilTimer = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            StrangulateTimer = urand(10*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            FrostStrikeTimerf = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            IcyTouchTimer = urand(8*IN_MILLISECONDS, 12*IN_MILLISECONDS);
            DeathGripTimer = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            SetEquipmentSlots(false, 47518, 51021, EQUIP_NO_CHANGE);
            DoCast(me, SPELL_DUAL_WIELD, true);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (IceboundFortitudeTimer <= diff)
            {
                if (HealthBelowPct(50))
                    DoCast(me, SPELL_ICEBOUND_FORTITUDE);
                IceboundFortitudeTimer = urand(5*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            } else IceboundFortitudeTimer -= diff;

            if (ChainsOfIceTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target, SPELL_CHAINS_OF_ICE);
                ChainsOfIceTimer = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else ChainsOfIceTimer -= diff;

            if (DeathCoilTimer <= diff)
            {
                DoCastVictim(SPELL_DEATH_COIL);
                DeathCoilTimer = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else DeathCoilTimer -= diff;

            if (StrangulateTimer <= diff)
            {
                if (Unit *target = SelectEnemyCaster(false))
                    DoCast(target, SPELL_STRANGULATE);
                StrangulateTimer = urand(10*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            } else StrangulateTimer -= diff;

            if (FrostStrikeTimerf <= diff)
            {
                DoCastVictim(SPELL_FROST_STRIKE);
                FrostStrikeTimerf = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else FrostStrikeTimerf -= diff;

            if (IcyTouchTimer <= diff)
            {
                DoCastVictim(SPELL_ICY_TOUCH);
                IcyTouchTimer = urand(8*IN_MILLISECONDS, 12*IN_MILLISECONDS);
            } else IcyTouchTimer -= diff;

            if (DeathGripTimer <= diff)
            {
                if (me->IsInRange(me->getVictim(), 10.0f, 30.0f, false))
                    DoCastVictim(SPELL_DEATH_GRIP);
                DeathGripTimer = urand(5*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else DeathGripTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 IceboundFortitudeTimer;
        uint32 ChainsOfIceTimer;
        uint32 DeathCoilTimer;
        uint32 StrangulateTimer;
        uint32 FrostStrikeTimerf;
        uint32 IcyTouchTimer;
        uint32 DeathGripTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_dkAI (creature);
    }
};

enum eRogueSpells
{
    SPELL_FAN_OF_KNIVES         = 65955, //2sec
    SPELL_BLIND                 = 65960, //2min
    SPELL_CLOAK                 = 65961, //90sec
    SPELL_BLADE_FLURRY          = 65956, //2min
    SPELL_SHADOWSTEP            = 66178, //30sec
    SPELL_HEMORRHAGE            = 65954,
    SPELL_EVISCERATE            = 65957,
};

class mob_toc_rogue : public CreatureScript
{
public:
    mob_toc_rogue() : CreatureScript("mob_toc_rogue") { }

    struct mob_toc_rogueAI : public boss_faction_championsAI
    {
        mob_toc_rogueAI(Creature *creature) : boss_faction_championsAI(creature, AI_MELEE) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            FanOfKnivesTimer = urand(8*IN_MILLISECONDS, 10*IN_MILLISECONDS);
            HemorrhageTimer = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            EviscerateTimer = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);
            ShadowstepTimer = urand(10*IN_MILLISECONDS, 80*IN_MILLISECONDS);
            BlindTimer = urand(7*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            CloakTimer = urand(20*IN_MILLISECONDS, 120*IN_MILLISECONDS);
            BladeFlurryTimer = urand(12*IN_MILLISECONDS, 120*IN_MILLISECONDS);
            SetEquipmentSlots(false, 47422, 49982, EQUIP_NO_CHANGE);
            DoCast(me, SPELL_DUAL_WIELD, true);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (FanOfKnivesTimer <= diff)
            {
                if (EnemiesInRange(15.0f) > 2)
                    DoCastAOE(SPELL_FAN_OF_KNIVES);
                FanOfKnivesTimer = urand(8*IN_MILLISECONDS, 10*IN_MILLISECONDS);
            } else FanOfKnivesTimer -= diff;

            if (HemorrhageTimer <= diff)
            {
                DoCastVictim(SPELL_HEMORRHAGE);
                HemorrhageTimer = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            } else HemorrhageTimer -= diff;

            if (EviscerateTimer <= diff)
            {
                DoCastVictim(SPELL_EVISCERATE);
                EviscerateTimer = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);
            } else EviscerateTimer -= diff;

            if (ShadowstepTimer <= diff)
            {
                if (me->IsInRange(me->getVictim(), 10.0f, 40.0f))
                    DoCastVictim(SPELL_SHADOWSTEP);
                ShadowstepTimer = urand(10*IN_MILLISECONDS, 80*IN_MILLISECONDS);
            } else ShadowstepTimer -= diff;

            if (BlindTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 1))
                    if (me->IsInRange(target, 0.0f, 15.0f, false))
                        DoCast(target, SPELL_BLIND);
                BlindTimer = urand(7*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            } else BlindTimer -= diff;

            if (CloakTimer <= diff)
            {
                if (HealthBelowPct(50))
                    DoCast(me, SPELL_CLOAK);
                CloakTimer = urand(20*IN_MILLISECONDS, 120*IN_MILLISECONDS);
            } else CloakTimer -= diff;

            if (BladeFlurryTimer <= diff)
            {
                DoCastVictim(SPELL_BLADE_FLURRY);
                BladeFlurryTimer = urand(12*IN_MILLISECONDS, 120*IN_MILLISECONDS);
            } else BladeFlurryTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 FanOfKnivesTimer;
        uint32 HemorrhageTimer;
        uint32 EviscerateTimer;
        uint32 ShadowstepTimer;
        uint32 BlindTimer;
        uint32 CloakTimer;
        uint32 BladeFlurryTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_rogueAI (creature);
    }
};

enum eEnhShamanSpells
{
    SPELL_EARTH_SHOCK_ENH   = 65973,
    SPELL_LAVA_LASH         = 65974,
    SPELL_STORMSTRIKE       = 65970,
};

class mob_toc_enh_shaman : public CreatureScript
{
public:
    mob_toc_enh_shaman() : CreatureScript("mob_toc_enh_shaman") { }

    struct mob_toc_enh_shamanAI : public boss_faction_championsAI
    {
        mob_toc_enh_shamanAI(Creature *creature) : boss_faction_championsAI(creature, AI_MELEE), Summons(me) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            HeroismOrBloodlustTimer = urand(25*IN_MILLISECONDS, 60*IN_MILLISECONDS);
            EarthShockTimer = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            StormstrikeTimer = urand(5*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            LavaLashTimer = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            DeployTotemTimer = urand(1*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            TotemCount = 0;
            TotemOldCenterX = me->GetPositionX();
            TotemOldCenterY = me->GetPositionY();
            SetEquipmentSlots(false, 51803, 48013, EQUIP_NO_CHANGE);
            DoCast(me, SPELL_DUAL_WIELD, true);
            Summons.DespawnAll();
        }

        void JustSummoned(Creature* summoned)
        {
            Summons.Summon(summoned);
        }

        void SummonedCreatureDespawn(Creature* /*summoned*/)
        {
            --TotemCount;
        }

        void DeployTotem()
        {
            TotemCount = 4;
            TotemOldCenterX = me->GetPositionX();
            TotemOldCenterY = me->GetPositionY();
        }

        void JustDied(Unit *pKiller)
        {
            boss_faction_championsAI::JustDied(pKiller);
            Summons.DespawnAll();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (HeroismOrBloodlustTimer <= diff)
            {
                if (me->getFaction()) //Am i alliance?
                {
                    if (!me->HasAura(AURA_EXHAUSTION))
                        DoCastAOE(SPELL_HEROISM);
                }
                else
                    if (!me->HasAura(AURA_SATED))
                        DoCastAOE(SPELL_BLOODLUST);
                HeroismOrBloodlustTimer = urand(40*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            } else HeroismOrBloodlustTimer -= diff;

            if (EarthShockTimer <= diff)
            {
                DoCastVictim(SPELL_EARTH_SHOCK_ENH);
                EarthShockTimer = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            } else EarthShockTimer -= diff;

            if (StormstrikeTimer <= diff)
            {
                DoCastVictim(SPELL_STORMSTRIKE);
                StormstrikeTimer = urand(5*IN_MILLISECONDS, 90*IN_MILLISECONDS);
            } else StormstrikeTimer -= diff;

            if (LavaLashTimer <= diff)
            {
                DoCastVictim(SPELL_LAVA_LASH);
                LavaLashTimer = urand(5*IN_MILLISECONDS, 8*IN_MILLISECONDS);
            } else LavaLashTimer -= diff;

            if (DeployTotemTimer <= diff)
            {
                if (TotemCount < 4 || me->GetDistance2d(TotemOldCenterX,TotemOldCenterY) > 20.0f)
                    DeployTotem();
                DeployTotemTimer = urand(1*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            } else DeployTotemTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        SummonList Summons;
        uint32 HeroismOrBloodlustTimer;
        uint32 EarthShockTimer;
        uint32 StormstrikeTimer;
        uint32 LavaLashTimer;
        uint32 DeployTotemTimer;
        uint8  TotemCount;
        float  TotemOldCenterX, TotemOldCenterY;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_enh_shamanAI (creature);
    }
};

enum eRetroPaladinSpells
{
    SPELL_AVENGING_WRATH        = 66011, //3min cd
    SPELL_CRUSADER_STRIKE       = 66003, //6sec cd
    SPELL_DIVINE_SHIELD         = 66010, //5min cd
    SPELL_DIVINE_STORM          = 66006, //10sec cd
    SPELL_HAMMER_OF_JUSTICE_RET = 66007, //40sec cd
    SPELL_HAND_OF_PROTECTION_RET = 66009, //5min cd
    SPELL_JUDGEMENT_OF_COMMAND  = 66005, //8sec cd
    SPELL_REPENTANCE            = 66008, //60sec cd
    SPELL_SEAL_OF_COMMAND       = 66004, //no cd
};

class mob_toc_retro_paladin : public CreatureScript
{
public:
    mob_toc_retro_paladin() : CreatureScript("mob_toc_retro_paladin") { }

    struct mob_toc_retro_paladinAI : public boss_faction_championsAI
    {
        mob_toc_retro_paladinAI(Creature *creature) : boss_faction_championsAI(creature, AI_MELEE) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            RepeteanceTimer = 60*IN_MILLISECONDS;
            CrusaderStrikeTimer = urand(6*IN_MILLISECONDS, 18*IN_MILLISECONDS);
            AvengingWrathTimer = 180*IN_MILLISECONDS;
            DivineShieldTimer = urand(0*IN_MILLISECONDS, 360*IN_MILLISECONDS);
            DivineStormTimer = 10*IN_MILLISECONDS;
            JudgementOfCommandTimer = urand(8*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            SetEquipmentSlots(false, 47519, EQUIP_NO_CHANGE, EQUIP_NO_CHANGE);
        }

        void EnterCombat(Unit *who)
        {
            boss_faction_championsAI::EnterCombat(who);
            DoCast(SPELL_SEAL_OF_COMMAND);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (RepeteanceTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(target,SPELL_REPENTANCE);
                RepeteanceTimer = 60*IN_MILLISECONDS;
            } else RepeteanceTimer -= diff;

            if (CrusaderStrikeTimer <= diff)
            {
                DoCastVictim(SPELL_CRUSADER_STRIKE);
                CrusaderStrikeTimer = urand(6*IN_MILLISECONDS, 18*IN_MILLISECONDS);
            } else CrusaderStrikeTimer -= diff;

            if (AvengingWrathTimer <= diff)
            {
                DoCastVictim(SPELL_AVENGING_WRATH);
                AvengingWrathTimer = 180*IN_MILLISECONDS;
            } else AvengingWrathTimer -= diff;

            if (DivineShieldTimer <= diff)
            {
                if (HealthBelowPct(20))
                    DoCast(me,SPELL_DIVINE_SHIELD);
                DivineShieldTimer = urand(0*IN_MILLISECONDS, 360*IN_MILLISECONDS);
            } else DivineShieldTimer -= diff;

            if (DivineStormTimer <= diff)
            {
                DoCastVictim(SPELL_DIVINE_STORM);
                DivineStormTimer = 10*IN_MILLISECONDS;
            } else DivineStormTimer -= diff;

            if (JudgementOfCommandTimer <= diff)
            {
                DoCastVictim(SPELL_JUDGEMENT_OF_COMMAND);
                JudgementOfCommandTimer = urand(8*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else JudgementOfCommandTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 RepeteanceTimer;
        uint32 CrusaderStrikeTimer;
        uint32 AvengingWrathTimer;
        uint32 DivineShieldTimer;
        uint32 DivineStormTimer;
        uint32 JudgementOfCommandTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_retro_paladinAI (creature);
    }
};

enum eWarlockPetSpells
{
    SPELL_DEVOUR_MAGIC  = 67518,
    SPELL_SPELL_LOCK  = 67519,
};

class mob_toc_pet_warlock : public CreatureScript
{
public:
    mob_toc_pet_warlock() : CreatureScript("mob_toc_pet_warlock") { }

    struct mob_toc_pet_warlockAI : public boss_faction_championsAI
    {
        mob_toc_pet_warlockAI(Creature *creature) : boss_faction_championsAI(creature, AI_PET) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            DevourMagicTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            SpellLockTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) 
                return;

            if (DevourMagicTimer <= diff)
            {
                DoCastVictim(SPELL_DEVOUR_MAGIC);
                DevourMagicTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            } else DevourMagicTimer -= diff;

            if (SpellLockTimer <= diff)
            {
                DoCastVictim(SPELL_SPELL_LOCK);
                SpellLockTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            } else SpellLockTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 DevourMagicTimer;
        uint32 SpellLockTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_pet_warlockAI (creature);
    }
};

enum eHunterPetSpells
{
    SPELL_CLAW  = 67793,
};

class mob_toc_pet_hunter : public CreatureScript
{
public:
    mob_toc_pet_hunter() : CreatureScript("mob_toc_pet_hunter") { }

    struct mob_toc_pet_hunterAI : public boss_faction_championsAI
    {
        mob_toc_pet_hunterAI(Creature *creature) : boss_faction_championsAI(creature, AI_PET) {}

        void Reset()
        {
            boss_faction_championsAI::Reset();
            ClawTimer = urand(5*IN_MILLISECONDS, 10*IN_MILLISECONDS);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim()) return;

            if (ClawTimer <= diff)
            {
                DoCastVictim(SPELL_CLAW);
                ClawTimer = urand(5*IN_MILLISECONDS, 10*IN_MILLISECONDS);
            } else ClawTimer -= diff;

            boss_faction_championsAI::UpdateAI(diff);
        }

    private:
        uint32 ClawTimer;
    };

    CreatureAI* GetAI(Creature *creature) const
    {
        return new mob_toc_pet_hunterAI (creature);
    }
};

void AddSC_boss_faction_champions()
{
    new boss_toc_champion_controller();
    new mob_toc_druid();
    new mob_toc_shaman();
    new mob_toc_paladin();
    new mob_toc_priest();
    new mob_toc_shadow_priest();
    new mob_toc_mage();
    new mob_toc_warlock();
    new mob_toc_hunter();
    new mob_toc_boomkin();
    new mob_toc_warrior();
    new mob_toc_dk();
    new mob_toc_rogue();
    new mob_toc_enh_shaman();
    new mob_toc_retro_paladin();
    new mob_toc_pet_warlock();
    new mob_toc_pet_hunter();
}
