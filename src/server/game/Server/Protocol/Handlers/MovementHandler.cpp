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

#include "gamePCH.h"
#include "Common.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "Opcodes.h"
#include "Log.h"
#include "Corpse.h"
#include "Player.h"
#include "Vehicle.h"
#include "SpellAuras.h"
#include "MapManager.h"
#include "Transport.h"
#include "Battleground.h"
#include "WaypointMovementGenerator.h"
#include "InstanceSaveMgr.h"
#include "ObjectMgr.h"

void WorldSession::HandleMoveWorldportAckOpcode(WorldPacket & /*recv_data*/)
{
    sLog->outDebug("WORLD: got MSG_MOVE_WORLDPORT_ACK.");
    HandleMoveWorldportAckOpcode();
}

void WorldSession::HandleMoveWorldportAckOpcode()
{
    // ignore unexpected far teleports
    if (!GetPlayer()->IsBeingTeleportedFar())
        return;

    // get the teleport destination
    WorldLocation &loc = GetPlayer()->GetTeleportDest();

    // possible errors in the coordinate validity check
    if (!MapManager::IsValidMapCoord(loc))
    {
        LogoutPlayer(false);
        return;
    }

    // get the destination map entry, not the current one, this will fix homebind and reset greeting
    MapEntry const* mEntry = sMapStore.LookupEntry(loc.GetMapId());
    InstanceTemplate const* mInstance = sObjectMgr->GetInstanceTemplate(loc.GetMapId());

    // reset instance validity, except if going to an instance inside an instance
    if (GetPlayer()->m_InstanceValid == false && !mInstance)
        GetPlayer()->m_InstanceValid = true;

    GetPlayer()->SetSemaphoreTeleportFar(false);

    Map * oldMap = GetPlayer()->GetMap();
    ASSERT(oldMap);
    if (GetPlayer()->IsInWorld())
    {
        sLog->outCrash("Player is still in world when teleported from map %u! to new map %u", oldMap->GetId(), loc.GetMapId());
        oldMap->Remove(GetPlayer(), false);
    }

    // relocate the player to the teleport destination
    Map * newMap = sMapMgr->CreateMap(loc.GetMapId(), GetPlayer(), 0);
    // the CanEnter checks are done in TeleporTo but conditions may change
    // while the player is in transit, for example the map may get full
    if (!newMap || !newMap->CanEnter(GetPlayer()))
    {
        sLog->outError("Map %d could not be created for player %d, porting player to homebind", loc.GetMapId(), GetPlayer()->GetGUIDLow());
        GetPlayer()->TeleportTo(GetPlayer()->m_homebindMapId, GetPlayer()->m_homebindX, GetPlayer()->m_homebindY, GetPlayer()->m_homebindZ, GetPlayer()->GetOrientation());
        return;
    }
    else
        GetPlayer()->Relocate(&loc);

    GetPlayer()->ResetMap();
    GetPlayer()->SetMap(newMap);

    GetPlayer()->SendInitialPacketsBeforeAddToMap();
    if (!GetPlayer()->GetMap()->Add(GetPlayer()))
    {
        sLog->outError("WORLD: failed to teleport player %s (%d) to map %d because of unknown reason!", GetPlayer()->GetName(), GetPlayer()->GetGUIDLow(), loc.GetMapId());
        GetPlayer()->ResetMap();
        GetPlayer()->SetMap(oldMap);
        GetPlayer()->TeleportTo(GetPlayer()->m_homebindMapId, GetPlayer()->m_homebindX, GetPlayer()->m_homebindY, GetPlayer()->m_homebindZ, GetPlayer()->GetOrientation());
        return;
    }

    // battleground state prepare (in case join to BG), at relogin/tele player not invited
    // only add to bg group and object, if the player was invited (else he entered through command)
    if (_player->InBattleground())
    {
        // cleanup setting if outdated
        if (!mEntry->IsBattlegroundOrArena())
        {
            // We're not in BG
            _player->SetBattlegroundId(0, BATTLEGROUND_TYPE_NONE);
            // reset destination bg team
            _player->SetBGTeam(0);
        }
        // join to bg case
        else if (Battleground *bg = _player->GetBattleground())
        {
            if (_player->IsInvitedForBattlegroundInstance(_player->GetBattlegroundId()))
                bg->AddPlayer(_player);
        }
    }

    GetPlayer()->SendInitialPacketsAfterAddToMap();

    // flight fast teleport case
    if (GetPlayer()->GetMotionMaster()->GetCurrentMovementGeneratorType() == FLIGHT_MOTION_TYPE)
    {
        if (!_player->InBattleground())
        {
            // short preparations to continue flight
            FlightPathMovementGenerator* flight = (FlightPathMovementGenerator*)(GetPlayer()->GetMotionMaster()->top());
            flight->Initialize(*GetPlayer());
            return;
        }

        // battleground state prepare, stop flight
        GetPlayer()->GetMotionMaster()->MovementExpired();
        GetPlayer()->CleanupAfterTaxiFlight();
    }

    // resurrect character at enter into instance where his corpse exist after add to map
    Corpse *corpse = GetPlayer()->GetCorpse();
    if (corpse && corpse->GetType() != CORPSE_BONES && corpse->GetMapId() == GetPlayer()->GetMapId())
    {
        if (mEntry->IsDungeon())
        {
            GetPlayer()->ResurrectPlayer(0.5f,false);
            GetPlayer()->SpawnCorpseBones();
        }
    }

    bool allowMount = !mEntry->IsDungeon() || mEntry->IsBattlegroundOrArena();
    if (mInstance)
    {
        Difficulty diff = GetPlayer()->GetDifficulty(mEntry->IsRaid());
        if (MapDifficulty const* mapDiff = GetMapDifficultyData(mEntry->MapID, diff))
        {
            if (mapDiff->resetTime)
            {
                if (time_t timeReset = sInstanceSaveMgr->GetResetTimeFor(mEntry->MapID, diff))
                {
                    uint32 timeleft = uint32(timeReset - time(NULL));
                    GetPlayer()->SendInstanceResetWarning(mEntry->MapID, diff, timeleft);
                }
            }
        }
        allowMount = mInstance->allowMount;
    }

    // mount allow check
    if (!allowMount)
        _player->RemoveAurasByType(SPELL_AURA_MOUNTED);

    // update zone immediately, otherwise leave channel will cause crash in mtmap
    uint32 newzone, newarea;
    GetPlayer()->GetZoneAndAreaId(newzone, newarea);
    GetPlayer()->UpdateZone(newzone, newarea);

    // honorless target
    if (GetPlayer()->pvpInfo.inHostileArea)
        GetPlayer()->CastSpell(GetPlayer(), 2479, true);

    // in friendly area
    else if (GetPlayer()->IsPvP() && !GetPlayer()->HasFlag(PLAYER_FLAGS,PLAYER_FLAGS_IN_PVP))
        GetPlayer()->UpdatePvP(false, false);

    // resummon pet
    GetPlayer()->ResummonPetTemporaryUnSummonedIfAny();

    //lets process all delayed operations on successful teleport
    GetPlayer()->ProcessDelayedOperations();
}

void WorldSession::HandleMoveTeleportAck(WorldPacket& recv_data)
{
    sLog->outDebug("MSG_MOVE_TELEPORT_ACK");
    uint64 guid;

    recv_data.readPackGUID(guid);

    uint32 flags, time;
    recv_data >> flags >> time;
    sLog->outStaticDebug("Guid " UI64FMTD, guid);
    sLog->outStaticDebug("Flags %u, time %u", flags, time/IN_MILLISECONDS);

    Unit *mover = _player->m_mover;
    Player *plMover = mover->GetTypeId() == TYPEID_PLAYER ? (Player*)mover : NULL;

    if (!plMover || !plMover->IsBeingTeleportedNear())
        return;

    if (guid != plMover->GetGUID())
        return;

    plMover->SetSemaphoreTeleportNear(false);

    uint32 old_zone = plMover->GetZoneId();

    WorldLocation const& dest = plMover->GetTeleportDest();

    plMover->SetPosition(dest,true);

    uint32 newzone, newarea;
    plMover->GetZoneAndAreaId(newzone, newarea);
    plMover->UpdateZone(newzone, newarea);

    // new zone
    if (old_zone != newzone)
    {
        // honorless target
        if (plMover->pvpInfo.inHostileArea)
            plMover->CastSpell(plMover, 2479, true);

        // in friendly area
        else if (plMover->IsPvP() && !plMover->HasFlag(PLAYER_FLAGS,PLAYER_FLAGS_IN_PVP))
            plMover->UpdatePvP(false, false);
    }

    // resummon pet
    GetPlayer()->ResummonPetTemporaryUnSummonedIfAny();

    //lets process all delayed operations on successful teleport
    GetPlayer()->ProcessDelayedOperations();
}

void WorldSession::HandleMovementOpcodes(WorldPacket & recv_data)
{
    Opcodes opcode = recv_data.GetOpcodeEnum();
    recv_data.hexlike();

    Unit *mover = _player->m_mover;

    ASSERT(mover != NULL);                                  // there must always be a mover

    Player *plMover = mover->GetTypeId() == TYPEID_PLAYER ? (Player*)mover : NULL;

    // ignore, waiting processing in WorldSession::HandleMoveWorldportAckOpcode and WorldSession::HandleMoveTeleportAck
    if (plMover && plMover->IsBeingTeleported())
    {
        recv_data.rpos(recv_data.wpos());                   // prevent warnings spam
        return;
    }

    /* extract packet */

    MovementInfo movementInfo;
    ReadMovementInfo(recv_data, &movementInfo);

    recv_data.rpos(recv_data.wpos());                   // prevent warnings spam

    // prevent tampered movement data
    if (movementInfo.guid != mover->GetGUID())
        return;

    if (!movementInfo.pos.IsPositionValid())
    {
        recv_data.rpos(recv_data.wpos());                   // prevent warnings spam
        return;
    }

    /* handle special cases */
    if (movementInfo.flags & MOVEMENTFLAG_ONTRANSPORT)
    {
        // transports size limited
        // (also received at zeppelin leave by some reason with t_* as absolute in continent coordinates, can be safely skipped)
        if (movementInfo.t_pos.GetPositionX() > 50 || movementInfo.t_pos.GetPositionY() > 50 || movementInfo.t_pos.GetPositionZ() > 50)
        {
            recv_data.rpos(recv_data.wpos());                   // prevent warnings spam
            return;
        }

        if (!Trinity::IsValidMapCoord(movementInfo.pos.GetPositionX() + movementInfo.t_pos.GetPositionX(), movementInfo.pos.GetPositionY() + movementInfo.t_pos.GetPositionY(),
            movementInfo.pos.GetPositionZ() + movementInfo.t_pos.GetPositionZ(), movementInfo.pos.GetOrientation() + movementInfo.t_pos.GetOrientation()))
        {
            recv_data.rpos(recv_data.wpos());                   // prevent warnings spam
            return;
        }

        // if we boarded a transport, add us to it
        if (plMover && !plMover->GetTransport())
        {
            // elevators also cause the client to send MOVEMENTFLAG_ONTRANSPORT - just unmount if the guid can be found in the transport list
            for (MapManager::TransportSet::const_iterator iter = sMapMgr->m_Transports.begin(); iter != sMapMgr->m_Transports.end(); ++iter)
            {
                if ((*iter)->GetGUID() == movementInfo.t_guid)
                {
                    plMover->m_transport = (*iter);
                    (*iter)->AddPassenger(plMover);
                    break;
                }
            }
        }

        if (!mover->GetTransport() && !mover->GetVehicle())
        {
            GameObject *go = mover->GetMap()->GetGameObject(movementInfo.t_guid);
            if (!go || go->GetGoType() != GAMEOBJECT_TYPE_TRANSPORT)
                movementInfo.flags &= ~MOVEMENTFLAG_ONTRANSPORT;
        }
    }
    else if (plMover && plMover->GetTransport())                // if we were on a transport, leave
    {
        plMover->m_transport->RemovePassenger(plMover);
        plMover->m_transport = NULL;
        movementInfo.t_pos.Relocate(0.0f, 0.0f, 0.0f, 0.0f);
        movementInfo.t_time = 0;
        movementInfo.t_seat = -1;
    }

    // fall damage generation (ignore in flight case that can be triggered also at lags in moment teleportation to another map).
    if (opcode == MSG_MOVE_FALL_LAND && plMover && !plMover->isInFlight())
        plMover->HandleFall(movementInfo);

    if (plMover && ((movementInfo.flags & MOVEMENTFLAG_SWIMMING) != 0) != plMover->IsInWater())
    {
        // now client not include swimming flag in case jumping under water
        plMover->SetInWater(!plMover->IsInWater() || plMover->GetBaseMap()->IsUnderWater(movementInfo.pos.GetPositionX(), movementInfo.pos.GetPositionY(), movementInfo.pos.GetPositionZ()));
    }

    /*----------------------*/

    /* process position-change */
    WorldPacket data(SMSG_PLAYER_MOVE/*recv_data.GetOpcode()*/, recv_data.size());
    movementInfo.time = getMSTime();
    movementInfo.guid = mover->GetGUID();
    WriteMovementInfo(data, &movementInfo);
    mover->SendMessageToSet(&data, _player);

    mover->m_movementInfo = movementInfo;

    // this is almost never true (not sure why it is sometimes, but it is), normally use mover->IsVehicle()
    if (mover->GetVehicle())
    {
        mover->SetOrientation(movementInfo.pos.GetOrientation());
        return;
    }

    mover->SetPosition(movementInfo.pos);

    if (plMover)                                            // nothing is charmed, or player charmed
    {    
        if (plMover->GetEmoteState() != 0 && opcode == MSG_MOVE_START_FORWARD && opcode != MSG_MOVE_SET_FACING &&
            opcode != MSG_MOVE_START_TURN_LEFT && opcode != MSG_MOVE_START_TURN_RIGHT &&
            opcode != MSG_MOVE_STOP_TURN)
            plMover->SetEmoteState(0);

        plMover->UpdateFallInformationIfNeed(movementInfo, opcode);

        if (movementInfo.pos.GetPositionZ() < -5000.0f)
        {
            if (!(plMover->InBattleground()
                && plMover->GetBattleground()
                && plMover->GetBattleground()->HandlePlayerUnderMap(_player)))
            {
                // NOTE: this is actually called many times while falling
                // even after the player has been teleported away
                // TODO: discard movement packets after the player is rooted
                if (plMover->isAlive())
                {
                    plMover->EnvironmentalDamage(DAMAGE_FALL_TO_VOID, GetPlayer()->GetMaxHealth());
                    // pl can be alive if GM/etc
                    if (!plMover->isAlive())
                    {
                        // change the death state to CORPSE to prevent the death timer from
                        // starting in the next player update
                        plMover->KillPlayer();
                        plMover->BuildPlayerRepop();
                    }
                }

                // cancel the death timer here if started
                plMover->RepopAtGraveyard();
            }
        }
    }
}

void WorldSession::HandleForceSpeedChangeAck(WorldPacket &recv_data)
{
    Opcodes opcode = recv_data.GetOpcodeEnum();
    sLog->outDebug("WORLD: Recvd %s (%u, 0x%X) opcode", LookupOpcodeName(opcode), opcode, opcode);

    /* extract packet */
    uint64 guid;
    uint32 unk1;
    float  newspeed;

    recv_data.readPackGUID(guid);

    // now can skip not our packet
    if (_player->GetGUID() != guid)
    {
        recv_data.rpos(recv_data.wpos());                   // prevent warnings spam
        return;
    }

    // continue parse packet

    recv_data >> unk1;                                      // counter or moveEvent

    MovementInfo movementInfo;
    movementInfo.guid = guid;
    ReadMovementInfo(recv_data, &movementInfo);

    recv_data >> newspeed;
    /*----------------*/

    // client ACK send one packet for mounted/run case and need skip all except last from its
    // in other cases anti-cheat check can be fail in false case
    UnitMoveType move_type;
    UnitMoveType force_move_type;

    static char const* move_type_name[MAX_MOVE_TYPE] = {  "Walk", "Run", "RunBack", "Swim", "SwimBack", "TurnRate", "Flight", "FlightBack", "PitchRate" };

    switch(opcode)
    {
        case CMSG_FORCE_WALK_SPEED_CHANGE_ACK:          move_type = MOVE_WALK;          force_move_type = MOVE_WALK;        break;
        case CMSG_FORCE_RUN_SPEED_CHANGE_ACK:           move_type = MOVE_RUN;           force_move_type = MOVE_RUN;         break;
        case CMSG_FORCE_RUN_BACK_SPEED_CHANGE_ACK:      move_type = MOVE_RUN_BACK;      force_move_type = MOVE_RUN_BACK;    break;
        case CMSG_FORCE_SWIM_SPEED_CHANGE_ACK:          move_type = MOVE_SWIM;          force_move_type = MOVE_SWIM;        break;
        case CMSG_FORCE_SWIM_BACK_SPEED_CHANGE_ACK:     move_type = MOVE_SWIM_BACK;     force_move_type = MOVE_SWIM_BACK;   break;
        case CMSG_FORCE_TURN_RATE_CHANGE_ACK:           move_type = MOVE_TURN_RATE;     force_move_type = MOVE_TURN_RATE;   break;
        case CMSG_FORCE_FLIGHT_SPEED_CHANGE_ACK:        move_type = MOVE_FLIGHT;        force_move_type = MOVE_FLIGHT;      break;
        case CMSG_FORCE_FLIGHT_BACK_SPEED_CHANGE_ACK:   move_type = MOVE_FLIGHT_BACK;   force_move_type = MOVE_FLIGHT_BACK; break;
        case CMSG_FORCE_PITCH_RATE_CHANGE_ACK:          move_type = MOVE_PITCH_RATE;    force_move_type = MOVE_PITCH_RATE;  break;
        default:
            sLog->outError("WorldSession::HandleForceSpeedChangeAck: Unknown move type opcode: %u", opcode);
            return;
    }

    // skip all forced speed changes except last and unexpected
    // in run/mounted case used one ACK and it must be skipped.m_forced_speed_changes[MOVE_RUN} store both.
    if (_player->m_forced_speed_changes[force_move_type] > 0)
    {
        --_player->m_forced_speed_changes[force_move_type];
        if (_player->m_forced_speed_changes[force_move_type] > 0)
            return;
    }

    if (!_player->GetTransport() && fabs(_player->GetSpeed(move_type) - newspeed) > 0.01f)
    {
        if (_player->GetSpeed(move_type) > newspeed)         // must be greater - just correct
        {
            sLog->outError("%sSpeedChange player %s is NOT correct (must be %f instead %f), force set to correct value",
                move_type_name[move_type], _player->GetName(), _player->GetSpeed(move_type), newspeed);
            _player->SetSpeed(move_type,_player->GetSpeedRate(move_type),true);
        }
        else                                                // must be lesser - cheating
        {
            sLog->outBasic("Player %s from account id %u kicked for incorrect speed (must be %f instead %f)",
                _player->GetName(),_player->GetSession()->GetAccountId(),_player->GetSpeed(move_type), newspeed);
            _player->GetSession()->KickPlayer();
        }
    }
}

void WorldSession::HandleSetActiveMoverOpcode(WorldPacket &recv_data)
{
    sLog->outDebug("WORLD: Recvd CMSG_SET_ACTIVE_MOVER");

    uint64 guid;
    recv_data >> guid;

    // do not re-set the active mover if it didn't change
    if (guid == _player->m_mover->GetGUID())
        return;
    // Anti-cheat check
    if (guid != _player->GetCharmGUID() && guid != _player->GetGUID())
    {
        sLog->outError("Player %s is trying to change mover to an invalid value!", _player->GetName());
        GetPlayer()->SetMover(GetPlayer());
        return;
    }

    if (GetPlayer()->IsInWorld())
    {
        if (Unit *mover = ObjectAccessor::GetUnit(*GetPlayer(), guid))
        {
            GetPlayer()->SetMover(mover);
            if (mover != GetPlayer() && mover->canFly())
            {
                WorldPacket data(SMSG_MOVE_SET_CAN_FLY, 12);
                data.append(mover->GetPackGUID());
                data << uint32(0);
                SendPacket(&data);
            }
        }
        else
        {
            sLog->outError("HandleSetActiveMoverOpcode: incorrect mover guid: mover is " UI64FMTD " and should be " UI64FMTD, guid, _player->m_mover->GetGUID());
            GetPlayer()->SetMover(GetPlayer());
        }
    }
}

void WorldSession::HandleMoveNotActiveMover(WorldPacket &recv_data)
{
    sLog->outDebug("WORLD: Recvd CMSG_MOVE_NOT_ACTIVE_MOVER");

    uint64 old_mover_guid;
    recv_data.readPackGUID(old_mover_guid);

    MovementInfo mi;
    mi.guid = old_mover_guid;
    ReadMovementInfo(recv_data, &mi);

    _player->m_movementInfo = mi;
}

void WorldSession::HandleDismissControlledVehicle(WorldPacket &recv_data)
{
    sLog->outDebug("WORLD: Recvd CMSG_DISMISS_CONTROLLED_VEHICLE");
    recv_data.hexlike();

    uint64 vehicleGUID = _player->GetCharmGUID();

    if (!vehicleGUID)                                        // something wrong here...
    {
        recv_data.rpos(recv_data.wpos());                   // prevent warnings spam
        return;
    }

    uint64 guid;

    recv_data.readPackGUID(guid);

    MovementInfo mi;
    mi.guid = guid;
    ReadMovementInfo(recv_data, &mi);

    _player->m_movementInfo = mi;

    _player->ExitVehicle();
}

void WorldSession::HandleChangeSeatsOnControlledVehicle(WorldPacket &recv_data)
{
    sLog->outDebug("WORLD: Recvd CMSG_CHANGE_SEATS_ON_CONTROLLED_VEHICLE");
    recv_data.hexlike();

    Unit* vehicle_base = GetPlayer()->GetVehicleBase();
    if (!vehicle_base)
        return;

    switch (recv_data.GetOpcodeEnum())
    {
        case CMSG_REQUEST_VEHICLE_PREV_SEAT:
            GetPlayer()->ChangeSeat(-1, false);
            break;
        case CMSG_REQUEST_VEHICLE_NEXT_SEAT:
            GetPlayer()->ChangeSeat(-1, true);
            break;
        case CMSG_CHANGE_SEATS_ON_CONTROLLED_VEHICLE:
            {
                uint64 guid;        // current vehicle guid
                recv_data.readPackGUID(guid);

                ReadMovementInfo(recv_data, &vehicle_base->m_movementInfo);

                uint64 accessory;        //  accessory guid
                recv_data.readPackGUID(accessory);

                int8 seatId;
                recv_data >> seatId;

                if (vehicle_base->GetGUID() != guid)
                    return;

                if (!accessory)
                    GetPlayer()->ChangeSeat(-1, seatId > 0); // prev/next
                else if (Unit *vehUnit = Unit::GetUnit(*GetPlayer(), accessory))
                {
                    if (Vehicle *vehicle = vehUnit->GetVehicleKit())
                        if (vehicle->HasEmptySeat(seatId))
                            GetPlayer()->EnterVehicle(vehicle, seatId);
                }
            }
            break;
        case CMSG_REQUEST_VEHICLE_SWITCH_SEAT:
            {
                uint64 guid;        // current vehicle guid
                recv_data.readPackGUID(guid);

                int8 seatId;
                recv_data >> seatId;

                if (vehicle_base->GetGUID() == guid)
                    GetPlayer()->ChangeSeat(seatId);
                else if (Unit *vehUnit = Unit::GetUnit(*GetPlayer(), guid))
                    if (Vehicle *vehicle = vehUnit->GetVehicleKit())
                        if (vehicle->HasEmptySeat(seatId))
                            GetPlayer()->EnterVehicle(vehicle, seatId);
            }
            break;
        default:
            break;
    }
}

void WorldSession::HandleEnterPlayerVehicle(WorldPacket &data)
{
    // Read guid
    uint64 guid;
    data >> guid;

    if (Player* pl=ObjectAccessor::FindPlayer(guid))
    {
        if (!pl->GetVehicleKit())
            return;
        if (!pl->IsInRaidWith(_player))
            return;
        if (!pl->IsWithinDistInMap(_player,INTERACTION_DISTANCE))
            return;
        _player->EnterVehicle(pl);
    }
}

void WorldSession::HandleEjectPassenger(WorldPacket &data)
{
    if (_player->GetVehicleKit())
    {
        uint64 guid;
        data >> guid;
        if (Player *plr = ObjectAccessor::FindPlayer(guid))
            plr->ExitVehicle();
        else if (Unit *unit = ObjectAccessor::GetUnit(*_player, guid)) // creatures can be ejected too from player mounts
        {
            unit->ExitVehicle();
            unit->ToCreature()->ForcedDespawn(1000);
        }
    }
}

void WorldSession::HandleRequestVehicleExit(WorldPacket &recv_data)
{
    sLog->outDebug("WORLD: Recvd CMSG_REQUEST_VEHICLE_EXIT");
    recv_data.hexlike();
    GetPlayer()->ExitVehicle();
}

void WorldSession::HandleMountSpecialAnimOpcode(WorldPacket& /*recv_data*/)
{
    WorldPacket data(SMSG_MOUNTSPECIAL_ANIM, 8);
    data << uint64(GetPlayer()->GetGUID());

    GetPlayer()->SendMessageToSet(&data, false);
}

void WorldSession::HandleMoveKnockBackAck(WorldPacket & recv_data)
{
    sLog->outDebug("CMSG_MOVE_KNOCK_BACK_ACK");

    uint64 guid;                                            // guid - unused
    recv_data.readPackGUID(guid);

    recv_data.read_skip<uint32>();                          // unk

    MovementInfo movementInfo;
    ReadMovementInfo(recv_data, &movementInfo);
}

void WorldSession::HandleMoveHoverAck(WorldPacket& recv_data)
{
    sLog->outDebug("CMSG_MOVE_HOVER_ACK");

    uint64 guid;                                            // guid - unused
    recv_data.readPackGUID(guid);

    recv_data.read_skip<uint32>();                          // unk

    MovementInfo movementInfo;
    ReadMovementInfo(recv_data, &movementInfo);

    recv_data.read_skip<uint32>();                          // unk2
}

void WorldSession::HandleMoveWaterWalkAck(WorldPacket& recv_data)
{
    sLog->outDebug("CMSG_MOVE_WATER_WALK_ACK");

    uint64 guid;                                            // guid - unused
    recv_data.readPackGUID(guid);

    recv_data.read_skip<uint32>();                          // unk

    MovementInfo movementInfo;
    ReadMovementInfo(recv_data, &movementInfo);

    recv_data.read_skip<uint32>();                          // unk2
}

void WorldSession::HandleSummonResponseOpcode(WorldPacket& recv_data)
{
    if (!_player->isAlive() || _player->isInCombat())
        return;

    uint64 summoner_guid;
    bool agree;
    recv_data >> summoner_guid;
    recv_data >> agree;

    _player->SummonIfPossible(agree);
}

enum MovementStatusElements
{
    MSEFlags,
    MSEFlags2,
    MSETimestamp,
    MSEHavePitch,
    MSEGuidByte0,
    MSEGuidByte1,
    MSEGuidByte2,
    MSEGuidByte3,
    MSEGuidByte4,
    MSEGuidByte5,
    MSEGuidByte6,
    MSEGuidByte7,
    MSEHaveFallData,
    MSEHaveFallDirection,
    MSEHaveTransportData,
    MSETransportHaveTime2,
    MSETransportHaveTime3,
    MSETransportGuidByte0,
    MSETransportGuidByte1,
    MSETransportGuidByte2,
    MSETransportGuidByte3,
    MSETransportGuidByte4,
    MSETransportGuidByte5,
    MSETransportGuidByte6,
    MSETransportGuidByte7,
    MSEHaveSpline,
    MSEHaveSplineElev,
    MSEPositionX,
    MSEPositionY,
    MSEPositionZ,
    MSEPositionO,
    MSEGuidByte0_2,
    MSEGuidByte1_2,
    MSEGuidByte2_2,
    MSEGuidByte3_2,
    MSEGuidByte4_2,
    MSEGuidByte5_2,
    MSEGuidByte6_2,
    MSEGuidByte7_2,
    MSEPitch,
    MSEFallTime,
    MSETransportGuidByte0_2,
    MSETransportGuidByte1_2,
    MSETransportGuidByte2_2,
    MSETransportGuidByte3_2,
    MSETransportGuidByte4_2,
    MSETransportGuidByte5_2,
    MSETransportGuidByte6_2,
    MSETransportGuidByte7_2,
    MSESplineElev,
    MSEFallHorizontalSpeed,
    MSEFallVerticalSpeed,
    MSEFallCosAngle,
    MSEFallSinAngle,
    MSETransportSeat,
    MSETransportPositionO,
    MSETransportPositionX,
    MSETransportPositionY,
    MSETransportPositionZ,
    MSETransportTime,
    MSETransportTime2,
    MSETransportTime3,
    MSE_COUNT
};

MovementStatusElements PlayerMoveSequence[] = {
    MSEHavePitch,
    MSEGuidByte6,
    MSEHaveFallData,
    MSEHaveFallDirection,
    MSEGuidByte1,
    MSEGuidByte2,
    MSEFlags2,
    MSEGuidByte0,
    MSEHaveTransportData,
    MSETransportGuidByte1,
    MSETransportGuidByte4,
    MSETransportGuidByte0,
    MSETransportHaveTime2,
    MSETransportGuidByte6,
    MSETransportGuidByte3,
    MSETransportGuidByte2,
    MSETransportGuidByte7,
    MSETransportHaveTime3,
    MSETransportGuidByte5,
    MSEGuidByte3,
    MSEGuidByte4,
    MSEGuidByte5,
    MSEHaveSpline,
    MSEGuidByte7,
    MSEHaveSplineElev,
    MSEFlags,
    MSEPositionO,
    MSEGuidByte0_2,
    MSEPitch,
    MSEGuidByte4_2,
    MSEFallTime,
    MSEFallHorizontalSpeed,
    MSEFallCosAngle,
    MSEFallSinAngle,
    MSEFallVerticalSpeed,
    MSETimestamp,
    MSEGuidByte1_2,
    MSETransportGuidByte7_2,
    MSETransportGuidByte3_2,
    MSETransportGuidByte1_2,
    MSETransportSeat,
    MSETransportTime2,
    MSETransportGuidByte0_2,
    MSETransportGuidByte6_2,
    MSETransportPositionX,
    MSETransportPositionY,
    MSETransportPositionZ,
    MSETransportGuidByte4_2,
    MSETransportPositionO,
    MSETransportTime3,
    MSETransportGuidByte5_2,
    MSETransportTime,
    MSETransportGuidByte2_2,
    MSEGuidByte2_2,
    MSEPositionX,
    MSEPositionY,
    MSEPositionZ,
    MSEGuidByte6_2,
    MSESplineElev,
    MSEGuidByte5_2,
    MSEGuidByte3_2,
    MSEGuidByte7_2
};

MovementStatusElements HeartbeatSequence[] = {
MSEGuidByte1,
MSEGuidByte5,
MSEGuidByte2,
MSEFlags2,
MSEGuidByte3,
MSEGuidByte4,
MSEHaveSpline,
MSEFlags,
MSEGuidByte0,
MSEGuidByte6,
MSEGuidByte7,
MSEHaveTransportData,
MSETransportGuidByte6,
MSETransportGuidByte3,
MSETransportGuidByte7,
MSETransportGuidByte4,
MSETransportGuidByte1,
MSETransportGuidByte0,
MSETransportGuidByte2,
MSETransportGuidByte5,
MSETransportHaveTime3,
MSETransportHaveTime2,
MSEHavePitch,
MSEHaveSplineElev,
MSEHaveFallData,
MSEHaveFallDirection,
MSEPositionO,
MSEPositionX,
MSEPositionY,
MSEPositionZ,
MSETimestamp,
MSEGuidByte6_2,
MSETransportTime,
MSETransportPositionX,
MSETransportPositionY,
MSETransportPositionZ,
MSETransportPositionO,
MSETransportSeat,
MSETransportGuidByte3_2,
MSETransportGuidByte1_2,
MSETransportTime3,
MSETransportGuidByte6_2,
MSETransportGuidByte0_2,
MSETransportGuidByte5_2,
MSETransportTime2,
MSETransportGuidByte7_2,
MSETransportGuidByte4_2,
MSETransportGuidByte2_2,
MSEPitch,
MSESplineElev,
MSEFallVerticalSpeed,
MSEFallTime,
MSEFallHorizontalSpeed,
MSEFallCosAngle,
MSEFallSinAngle,
MSEGuidByte5_2,
MSEGuidByte1_2,
MSEGuidByte7_2,
MSEGuidByte0_2,
MSEGuidByte2_2,
MSEGuidByte4_2,
MSEGuidByte3_2,
};

MovementStatusElements* GetMovementStatusElementsSequence(Opcodes opcode)
{
    switch(opcode)
    {
    case SMSG_PLAYER_MOVE:
        return PlayerMoveSequence;
    case MSG_MOVE_HEARTBEAT:
        return HeartbeatSequence;
    }
    return NULL;
}

void WorldSession::ReadMovementInfo(WorldPacket &data, MovementInfo *mi)
{
    bool HaveTransportData = false,
        HaveTransportTime2 = false,
        HaveTransportTime3 = false,
        HavePitch = false,
        HaveFallData = false,
        HaveFallDirection = false,
        HaveSplineElevation = false,
        HaveSpline = false;

    MovementStatusElements *sequence = GetMovementStatusElementsSequence(data.GetOpcodeEnum());
    if(sequence == NULL)
        return;
    uint8 guid[8];
    uint8 tguid[8];
    *(uint64*)guid = 0;
    *(uint64*)tguid = 0;
    for(uint32 i=0; i < MSE_COUNT; i++)
    {
        MovementStatusElements element = sequence[i];
        
        if (element >= MSEGuidByte0 && element <= MSEGuidByte7)
        {
            data.ReadByteMask(guid[element - MSEGuidByte0]);
            continue;
        }

        if (element >= MSETransportGuidByte0 &&
            element <= MSETransportGuidByte7)
        {
            if (HaveTransportData)
                data.ReadByteMask(tguid[element - MSETransportGuidByte0]);
            continue;
        }

        if (element >= MSEGuidByte0_2 && element <= MSEGuidByte7_2)
        {
            data.ReadByteSeq(guid[element - MSEGuidByte0_2]);
            continue;
        }

        if (element >= MSETransportGuidByte0_2 &&
            element <= MSETransportGuidByte7_2)
        {
            if (HaveTransportData)
                data.ReadByteSeq(tguid[element - MSETransportGuidByte0_2]);
            continue;
        }

        switch (element)
        {
            case MSEFlags:
                mi->flags = data.readBits(30);
                break;
            case MSEFlags2:
                mi->flags2 = data.readBits(12);
                break;
            case MSETimestamp:
                data >> mi->time;
                break;
            case MSEHavePitch:
                HavePitch = data.readBit();
                break;
            case MSEHaveFallData:
                HaveFallData = data.readBit();
                break;
            case MSEHaveFallDirection:
                if (HaveFallData)
                    HaveFallDirection = data.readBit();
                break;
            case MSEHaveTransportData:
                HaveTransportData = data.readBit();
                break;
            case MSETransportHaveTime2:
                if (HaveTransportData)
                    HaveTransportTime2 = data.readBit();
                break;
            case MSETransportHaveTime3:
                if (HaveTransportData)
                    HaveTransportTime3 = data.readBit();
                break;
            case MSEHaveSpline:
                HaveSpline = data.readBit();
                break;
            case MSEHaveSplineElev:
                HaveSplineElevation = data.readBit();
                break;
            case MSEPositionX:
                data >> mi->pos.PositionXYZStream();
                break;
            case MSEPositionY:
            case MSEPositionZ:
                break;  // assume they always go as vector of 3
            case MSEPositionO:
                data >> mi->pos.m_orientation;
                break;
            case MSEPitch:
                if (HavePitch)
                    data >> mi->pitch;
                break;
            case MSEFallTime:
                if (HaveFallData)
                    data >> mi->fallTime;
                break;
            case MSESplineElev:
                if (HaveSplineElevation)
                    data >> mi->splineElevation;
                break;
            case MSEFallHorizontalSpeed:
                if (HaveFallDirection)
                    data >> mi->j_xyspeed;
                break;
            case MSEFallVerticalSpeed:
                if (HaveFallData)
                    data >> mi->j_zspeed;
                break;
            case MSEFallCosAngle:
                if (HaveFallDirection)
                    data >> mi->j_cosAngle;
                break;
            case MSEFallSinAngle:
                if (HaveFallDirection)
                    data >> mi->j_sinAngle;
                break;
            case MSETransportSeat:
                if (HaveTransportData)
                    data >> mi->t_seat;
                break;
            case MSETransportPositionO:
                if (HaveTransportData)
                    data >> mi->t_pos.m_orientation;
                break;
            case MSETransportPositionX:
                if (HaveTransportData)
                    data >> mi->t_pos.PositionXYZStream();
                break;
            case MSETransportPositionY:
            case MSETransportPositionZ:
                break;  // assume they always go as vector of 3
            case MSETransportTime:
                if (HaveTransportData)
                    data >> mi->t_time;
                break;
            case MSETransportTime2:
                if (HaveTransportTime2)
                    data >> mi->t_time2;
                break;
            case MSETransportTime3:
                if (HaveTransportTime3)
                    data >> mi->t_time3;
                break;
            default:
                WPError(false, "Incorrect sequence element detected at ReadMovementInfo");
        }
    }
    
    mi->guid = *(uint64*)guid;
    mi->t_guid = *(uint64*)tguid;

    if (HaveTransportData && mi->pos.m_positionX != mi->t_pos.m_positionX)
        if (GetPlayer()->GetTransport())
            GetPlayer()->GetTransport()->UpdatePosition(mi);
}


void WorldSession::WriteMovementInfo(WorldPacket &data, MovementInfo *mi)
{
        bool HaveTransportData = mi->HasMovementFlag(MOVEMENTFLAG_ONTRANSPORT),
        HaveTransportTime2 = (mi->flags2 & MOVEMENTFLAG2_INTERPOLATED_MOVEMENT) != 0,
        HaveTransportTime3 = false,
        HavePitch = (mi->HasMovementFlag(MovementFlags(MOVEMENTFLAG_SWIMMING | MOVEMENTFLAG_FLYING))) 
            || (mi->flags2 & MOVEMENTFLAG2_ALWAYS_ALLOW_PITCHING),
        HaveFallData = mi->HasExtraMovementFlag(MOVEMENTFLAG2_INTERPOLATED_TURNING),
        HaveFallDirection = mi->HasMovementFlag(MOVEMENTFLAG_JUMPING),
        HaveSplineElevation = mi->HasMovementFlag(MOVEMENTFLAG_SPLINE_ELEVATION),
        HaveSpline = false;

    MovementStatusElements *sequence = GetMovementStatusElementsSequence(data.GetOpcodeEnum());
    if(!sequence)
        return;
    uint8 *guid = (uint8 *)&mi->guid;
    uint8 *tguid = (uint8 *)&mi->t_guid;
    for(uint32 i=0; i < MSE_COUNT; i++)
    {
        MovementStatusElements element = sequence[i];
        
        if (element >= MSEGuidByte0 && element <= MSEGuidByte7)
        {
            data.WriteByteMask(guid[element - MSEGuidByte0]);
            continue;
        }

        if (element >= MSETransportGuidByte0 &&
            element <= MSETransportGuidByte7)
        {
            if (HaveTransportData)
                data.WriteByteMask(tguid[element - MSETransportGuidByte0]);
            continue;
        }

        if (element >= MSEGuidByte0_2 && element <= MSEGuidByte7_2)
        {
            data.WriteByteSeq(guid[element - MSEGuidByte0_2]);
            continue;
        }

        if (element >= MSETransportGuidByte0_2 &&
            element <= MSETransportGuidByte7_2)
        {
            if (HaveTransportData)
                data.WriteByteSeq(tguid[element - MSETransportGuidByte0_2]);
            continue;
        }

        switch (element)
        {
            case MSEFlags:
                data.writeBits(mi->flags, 30);
                break;
            case MSEFlags2:
                data.writeBits(mi->flags2, 12);
                break;
            case MSETimestamp:
                data << mi->time;
                break;
            case MSEHavePitch:
                data.writeBit(HavePitch);
                break;
            case MSEHaveFallData:
                data.writeBit(HaveFallData);
                break;
            case MSEHaveFallDirection:
                if (HaveFallData)
                    data.writeBit(HaveFallDirection);
                break;
            case MSEHaveTransportData:
                data.writeBit(HaveTransportData);
                break;
            case MSETransportHaveTime2:
                if (HaveTransportData)
                    data.writeBit(HaveTransportTime2);
                break;
            case MSETransportHaveTime3:
                if (HaveTransportData)
                    data.writeBit(HaveTransportTime3);
                break;
            case MSEHaveSpline:
                data.writeBit(HaveSpline);
                break;
            case MSEHaveSplineElev:
                data.writeBit(HaveSplineElevation);
                break;
            case MSEPositionX:
                data << mi->pos.PositionXYZStream();
                break;
            case MSEPositionY:
            case MSEPositionZ:
                break;  // assume they always go as vector of 3
            case MSEPositionO:
                data << mi->pos.m_orientation;
                break;
            case MSEPitch:
                if (HavePitch)
                    data << mi->pitch;
                break;
            case MSEFallTime:
                if (HaveFallData)
                    data << mi->fallTime;
                break;
            case MSESplineElev:
                if (HaveSplineElevation)
                    data << mi->splineElevation;
                break;
            case MSEFallHorizontalSpeed:
                if (HaveFallDirection)
                    data << mi->j_xyspeed;
                break;
            case MSEFallVerticalSpeed:
                if (HaveFallData)
                    data << mi->j_zspeed;
                break;
            case MSEFallCosAngle:
                if (HaveFallDirection)
                    data << mi->j_cosAngle;
                break;
            case MSEFallSinAngle:
                if (HaveFallDirection)
                    data << mi->j_sinAngle;
                break;
            case MSETransportSeat:
                if (HaveTransportData)
                    data << mi->t_seat;
                break;
            case MSETransportPositionO:
                if (HaveTransportData)
                    data << mi->t_pos.m_orientation;
                break;
            case MSETransportPositionX:
                if (HaveTransportData)
                    data << mi->t_pos.PositionXYZStream();
                break;
            case MSETransportPositionY:
            case MSETransportPositionZ:
                break;  // assume they always go as vector of 3
            case MSETransportTime:
                if (HaveTransportData)
                    data << mi->t_time;
                break;
            case MSETransportTime2:
                if (HaveTransportTime2)
                    data << mi->t_time2;
                break;
            case MSETransportTime3:
                if (HaveTransportTime3)
                    data << mi->t_time3;
                break;
            default:
                WPError(false, "Incorrect sequence element detected at ReadMovementInfo");
        }
    }
}