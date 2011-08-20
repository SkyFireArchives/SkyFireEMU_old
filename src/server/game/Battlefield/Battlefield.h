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

#ifndef BATTLEFIELD_H_
#define BATTLEFIELD_H_

#include "Utilities/Util.h"
#include "SharedDefines.h"
#include "ZoneScript.h"
#include "WorldPacket.h"
#include "GameObject.h"

enum BattlefieldTypes
{
    BATTLEFIELD_WG, //Wintergrasp
    BATTLEFIELD_TB, //Tol Barad (cataclysm)
};
enum BattlefieldBattleID
{
    BATTLEFIELD_BATTLEID_WG = 1,   //Wintergrasp battle
};

enum BfObjectiveStates
{
    BF_CAPTUREPOINT_OBJECTIVESTATE_NEUTRAL = 0,
    BF_CAPTUREPOINT_OBJECTIVESTATE_ALLIANCE,
    BF_CAPTUREPOINT_OBJECTIVESTATE_HORDE,
    BF_CAPTUREPOINT_OBJECTIVESTATE_NEUTRAL_ALLIANCE_CHALLENGE,
    BF_CAPTUREPOINT_OBJECTIVESTATE_NEUTRAL_HORDE_CHALLENGE,
    BF_CAPTUREPOINT_OBJECTIVESTATE_ALLIANCE_HORDE_CHALLENGE,
    BF_CAPTUREPOINT_OBJECTIVESTATE_HORDE_ALLIANCE_CHALLENGE,
};

enum BattlefieldSounds
{
    BF_HORDE_WINS                = 8454,
    BF_ALLIANCE_WINS             = 8455,
    BF_START                  = 3439
 };

// some class predefs
class Player;
class GameObject;
class WorldPacket;
class Creature;
class Unit;

class Battlefield;
class BfGraveYard;

typedef std::set<uint64> GuidSet;
typedef std::vector<BfGraveYard*> GraveYardVect;

typedef std::map<uint64,uint32> PlayerTimerMap;

#define BATTLEFIELD_OBJECTIVE_UPDATE_INTERVAL 1000
class BfCapturePoint
{
public:
    BfCapturePoint(Battlefield * bf);

    virtual void FillInitialWorldStates(WorldPacket & /*data*/) {}

    // send world state update to all players present
    void SendUpdateWorldState(uint32 field, uint32 value);
    // send kill notify to players in the controlling faction
    void SendObjectiveComplete(uint32 id, uint64 guid);

    // used when player is activated/inactivated in the area
    virtual bool HandlePlayerEnter(Player * plr);
    virtual void HandlePlayerLeave(Player * plr);
    //virtual void HandlePlayerActivityChanged(Player * plr);

    // checks if player is in range of a capture credit marker
    bool IsInsideObjective(Player * plr) const;

    // returns true if the state of the objective has changed, in this case, the OutdoorPvP must send a world state ui update.
    virtual bool Update(uint32 diff);
    virtual void ChangeTeam(TeamId /*oldTeam*/) {}
    virtual void SendChangePhase();

    bool SetCapturePointData(uint32 entry, uint32 map, float x, float y, float z, float o);

    GameObject* GetCapturePointGo(){return m_capturePoint;}

protected:
    bool DelCapturePoint();

    // active players in the area of the objective, 0 - alliance, 1 - horde
    GuidSet m_activePlayers[2];
    // total shift needed to capture the objective
    float m_maxValue;
    float m_minValue;
    // maximum speed of capture
    float m_maxSpeed;
    // the status of the objective
    float m_value;
    TeamId m_team;
    // objective states
    BfObjectiveStates m_OldState;
    BfObjectiveStates m_State;
    // neutral value on capture bar
    uint32 m_neutralValuePct;

    // pointer to the Battlefield this objective belongs to
    Battlefield* m_Bf;
    uint32 m_capturePointEntry;
    GameObject *m_capturePoint;
};
class BfGraveYard
{
public:
    BfGraveYard(Battlefield* Bf);

    // method for change who control the graveyard
    void ChangeControl(TeamId team);
    TeamId GetControlTeamId() {return m_ControlTeam;}

    // use for found the nearest graveyard
    float GetDistance(Player* plr);

    void Init(uint32 horde_entry,uint32 alliance_entry,float x,float y,float z,float o,TeamId startcontrol,uint32 gy);

    void AddPlayer(uint64 player_guid);
    void RemovePlayer(uint64 player_guid);

    void Resurrect();
    void RelocateDeadPlayers();

    bool HasNpc(uint64 guid) {return (m_SpiritGuide[0]->GetGUID()==guid || m_SpiritGuide[1]->GetGUID()==guid);}
    bool HasPlayer(uint64 guid) {return m_ResurrectQueue.find(guid)!=m_ResurrectQueue.end();}
    uint32 GetGraveYardId() {return m_GraveyardId;}
protected:

    TeamId m_ControlTeam;
    uint32 m_GraveyardId;
    Creature* m_SpiritGuide[2];
    GuidSet m_ResurrectQueue;
    Battlefield* m_Bf;
};
class Battlefield : public ZoneScript
{
    friend class BattlefieldMgr;

public:
    // constructor
    Battlefield();
    // destructor
    ~Battlefield();

    typedef std::map<uint32/*lowguid*/, BfCapturePoint*> BfCapturePointMap;

    // Call this for init the Battlefield
    virtual bool SetupBattlefield() {return true;}

    // Generate packet witch contain all worldstatedata of area
    virtual void FillInitialWorldStates(WorldPacket & /*data*/) {}

    //Called when a GameObject/Creature is create OR destroy (view bool add)
    void OnGameObjectCreate(GameObject* /*go*/, bool /*add*/){}
    void OnCreatureCreate(Creature * /*cre*/, bool /*add*/) {}

    // send world state update to all players present in zone
    void SendUpdateWorldState(uint32 field, uint32 value);

    //TODO // called by OutdoorPvPMgr, updates the objectives and if needed, sends new worldstateui information
    virtual bool Update(uint32 diff);

    void InvitePlayerInZoneToQueue();
    void InvitePlayerInQueueToWar();
    void InvitePlayerInZoneToWar();
    // handle npc/player kill
    virtual void HandleKill(Player * /*killer*/, Unit * /*killed*/){};

    uint32 GetTypeId() {return m_TypeId;}
    uint32 GetZoneId() {return m_ZoneId;}

    void TeamApplyBuff(TeamId team, uint32 spellId, uint32 spellId2 = 0);

    // return if the war is start or not
    bool IsWarTime() {return m_WarTime;}

    void SetEnable(bool enable) {m_enable = enable;}
    bool GetEnable() {return m_enable;}

    // Kick player from the bf, teleport him to kick point
    void KickPlayerFromBf(uint64 guid);

    void HandlePlayerEnterZone(Player * plr, uint32 zone);
    void HandlePlayerLeaveZone(Player * plr, uint32 zone);

     //All-purpose data storage 64 bit
    virtual uint64 GetData64(uint32 DataId) { return m_Data64[DataId]; }
    virtual void SetData64(uint32 DataId, uint64 Value) {m_Data64[DataId]=Value;}

    //All-purpose data storage 32 bit
    virtual uint32 GetData(uint32 DataId) { return m_Data32[DataId]; }
    virtual void SetData(uint32 DataId, uint32 Value) {m_Data32[DataId]=Value;}

    //Battlefield generic method
    TeamId GetDefenderTeam() {return m_DefenderTeam;}
    TeamId GetAttackerTeam() {return TeamId(1-m_DefenderTeam);}
    void SetDefenderTeam(TeamId team) {m_DefenderTeam=team;}

    // Group methods
    Group* GetFreeBfRaid(uint32 TeamId);
    Group* GetGroupPlayer(uint64 guid, uint32 TeamId);
    bool AddOrSetPlayerToCorrectBfGroup(Player *plr);

    // Graveyard methods
    //  Find in witch graveyard the player must be teleport to be resurect by spiritguide
    WorldSafeLocsEntry const* GetClosestGraveYard(Player* plr);
    virtual void AddPlayerToResurrectQueue(uint64 npc_guid, uint64 player_guid);
    void RemovePlayerFromResurrectQueue(uint64 player_guid);
    void SetGraveyardNumber(uint32 number) {m_GraveYardList.resize(number);}
    BfGraveYard* GetGraveYardById(uint32 id);
    // Misc methods
    Creature* SpawnCreature(uint32 entry, float x, float y, float z, float o, uint32 team);
    Creature* SpawnCreature(uint32 entry, Position pos, uint32 team);
    GameObject* SpawnGameObject(uint32 entry, float x, float y, float z, float o);

    //ScriptingMethod
    virtual void OnBattleStart(){};
    virtual void OnBattleEnd(bool /*endbytimer*/){};
    virtual void OnStartGrouping(){};
    virtual void OnPlayerJoinWar(Player* /*plr*/){};
    virtual void OnPlayerLeaveWar(Player* /*plr*/){};
    virtual void OnPlayerLeaveZone(Player* /*plr*/){};
    virtual void OnPlayerEnterZone(Player* /*plr*/){};

    WorldPacket BuildWarningAnnPacket(std::string msg);
    void SendWarningToAllInZone(int32 entry, ...);
    void SendWarningToAllInWar(int32 entry, ...);
    void SendWarningToPlayer(Player* plr,int32 entry, ...);

    void PlayerAcceptInviteToQueue(Player* plr);
    void PlayerAcceptInviteToWar(Player* plr);
    uint32 GetBattleId() {return m_BattleId;}
    void PlayerAskToLeave(Player* plr);
    void AskToLeaveQueue(Player *plr);

    virtual void DoCompleteOrIncrementAchievement(uint32 /*achievement*/, Player* /*player*/, uint8 /*incrementNumber = 1*/){};

    virtual void SendInitWorldStatesToAll(){};

    bool CanFlyIn(){return !m_WarTime;}
    bool IncrementQuest(Player *player, uint32 quest, bool complete = false);
    void SendAreaSpiritHealerQueryOpcode(Player *pl, const uint64& guid);

    void StartBattle();
    void EndBattle(bool endbytimer);

    void HideNpc(Creature* p_Creature);
    void ShowNpc(Creature* p_Creature,bool p_Aggressive);

    GraveYardVect GetGraveYardVect() {return m_GraveYardList;}

    uint32 GetTimer() {return m_Timer;}
    void SetTimer(uint32 timer) {m_Timer = timer;}

    void PlaySoundToAll(uint32 SoundID);

    void InvitePlayerToQueue(Player* plr);
    void InvitePlayerToWar(Player* plr);
protected:

    uint32 m_Timer;//Global timer for event
    bool m_enable;
    bool m_WarTime;
    TeamId m_DefenderTeam;

    // the map of the objectives belonging to this outdoorpvp
    BfCapturePointMap m_capturePoints;

    // the set of player
    GuidSet m_players[2];     //Player in the zone
    GuidSet m_PlayersInQueue[2];//Player in the queue
    GuidSet m_PlayersInWar[2];  //Player in the war
    PlayerTimerMap m_InvitedPlayers[2];
    PlayerTimerMap m_PlayersWillBeKick[2];
    //Variable witch must be setup for each Bf
    uint32 m_TypeId;    //View enum BattlefieldTypes
    uint32 m_BattleId;
    uint32 m_ZoneId;    //Zone id of area 4197=WG
    uint32 m_MapId;
    uint32 m_MaxPlayer;
    uint32 m_MinPlayer;
    uint32 m_MinLevel;
    uint32 m_BattleTime; 	//Time of battle
    uint32 m_NoWarBattleTime;//Time between to battle
    uint32 m_TimeForAcceptInvite;
    uint32 m_uiKickDontAcceptTimer;
    WorldLocation KickPosition;

    uint32 m_uiKickAfkTimer;

    //Graveyard variable
    GraveYardVect m_GraveYardList;
    uint32 m_LastResurectTimer;

    uint32 m_StartGroupingTimer;
    bool m_StartGrouping;

    GuidSet m_Groups[2];

    std::vector<uint64> m_Data64;
    std::vector<uint32> m_Data32;

    void KickAfk();
    // use for switch off all worldstate for client
    virtual void SendRemoveWorldStates(Player * /*plr*/) {}

    // use for send a packet for all player list
    void BroadcastPacketZone(WorldPacket & data) const;
    void BroadcastPacketQueue(WorldPacket & data) const;
    void BroadcastPacketWar(WorldPacket & data) const;

    //CapturePoint system
    void AddCapturePoint(BfCapturePoint* cp)
    {
        m_capturePoints[cp->GetCapturePointGo()->GetEntry()] = cp;
    }

    BfCapturePoint * GetCapturePoint(uint32 lowguid) const
    {
        Battlefield::BfCapturePointMap::const_iterator itr = m_capturePoints.find(lowguid);
        if (itr != m_capturePoints.end())
            return itr->second;
        return NULL;
    }

    void RegisterZone(uint32 zoneid);
    bool HasPlayer(Player *plr) const;
    void TeamCastSpell(TeamId team, int32 spellId);
};

#endif