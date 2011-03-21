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
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "World.h"
#include "WorldPacket.h"
#include "WorldSession.h"
#include "DatabaseEnv.h"

#include "CellImpl.h"
#include "Chat.h"
#include "ChannelMgr.h"
#include "GridNotifiersImpl.h"
#include "Group.h"
#include "Guild.h"
#include "Language.h"
#include "Log.h"
#include "Opcodes.h"
#include "Player.h"
#include "SpellAuras.h"
#include "SpellAuraEffects.h"
#include "Util.h"
#include "ScriptMgr.h"

bool WorldSession::processChatmessageFurtherAfterSecurityChecks(std::string& msg, uint32 lang)
{
    if (lang != LANG_ADDON)
    {
        // strip invisible characters for non-addon messages
        if (sWorld.getBoolConfig(CONFIG_CHAT_FAKE_MESSAGE_PREVENTING))
            stripLineInvisibleChars(msg);

        if (sWorld.getIntConfig(CONFIG_CHAT_STRICT_LINK_CHECKING_SEVERITY) && GetSecurity() < SEC_MODERATOR
                && !ChatHandler(this).isValidChatMessage(msg.c_str()))
        {
            sLog.outError("Player %s (GUID: %u) sent a chatmessage with an invalid link: %s", GetPlayer()->GetName(),
                    GetPlayer()->GetGUIDLow(), msg.c_str());
            if (sWorld.getIntConfig(CONFIG_CHAT_STRICT_LINK_CHECKING_KICK))
                KickPlayer();
            return false;
        }
    }

    return true;
}

void WorldSession::HandleMessagechatOpcode(WorldPacket & recv_data)
{
    uint32 type = 0;
    uint32 lang;

    // Les types sont maintenant ger�s par opcode, un opcode par type
    // Changement en place depuis la 4.0.1 13164
    switch(recv_data.GetOpcode())
    {
        case CMSG_MESSAGECHAT_SAY:
            type = CHAT_MSG_SAY;
            break;
        case CMSG_MESSAGECHAT_YELL:
            type = CHAT_MSG_YELL;
            break;
        case CMSG_MESSAGECHAT_CHANNEL:
            type = CHAT_MSG_CHANNEL;
            break;
        case CMSG_MESSAGECHAT_WHISPER:
            type = CHAT_MSG_WHISPER;
            break;
        case CMSG_MESSAGECHAT_GUILD:
            type = CHAT_MSG_GUILD;
            break;
        case CMSG_MESSAGECHAT_OFFICER:
            type = CHAT_MSG_OFFICER;
            break;
        case CMSG_MESSAGECHAT_AFK:
            type = CHAT_MSG_AFK;
            break;
        case CMSG_MESSAGECHAT_DND:
            type = CHAT_MSG_DND;
            break;
        case CMSG_MESSAGECHAT_EMOTE:
            type = CHAT_MSG_EMOTE;
            break;
        case CMSG_MESSAGECHAT_PARTY:
            type = CHAT_MSG_PARTY;
            break;
        case CMSG_MESSAGECHAT_PARTY_LEADER:
            type = CHAT_MSG_PARTY_LEADER;
            break;
        case CMSG_MESSAGECHAT_RAID:
            type = CHAT_MSG_RAID;
            break;
        case CMSG_MESSAGECHAT_RAID_LEADER:
            type = CHAT_MSG_RAID_LEADER;
            break;
        case CMSG_MESSAGECHAT_BATTLEGROUND:
            type = CHAT_MSG_BATTLEGROUND;
            break;
        case CMSG_MESSAGECHAT_BATTLEGROUND_LEADER:
            type = CHAT_MSG_BATTLEGROUND_LEADER;
            break;
        case CMSG_MESSAGECHAT_RAID_WARNING:
            type = CHAT_MSG_RAID_WARNING;
            break;
        default:
            sLog.outDetail("HandleMessagechatOpcode : Unknown chat opcode (%u)", recv_data.GetOpcode());
            recv_data.hexlike();
            return;
    }

    // no language for AFK and DND messages
    if(type == CHAT_MSG_AFK)
    {
        std::string msg;
        recv_data >> msg;

        if ((msg.empty() || !_player->isAFK()) && !_player->isInCombat())
        {
            if (!_player->isAFK())
            {
                if (msg.empty())
                    msg  = GetTrinityString(LANG_PLAYER_AFK_DEFAULT);
                _player->afkMsg = msg;
            }

            sScriptMgr.OnPlayerChat(_player, type, LANG_UNIVERSAL, msg);

            _player->ToggleAFK();
            if (_player->isAFK() && _player->isDND())
                _player->ToggleDND();
        }
        return;
    }
    else if(type == CHAT_MSG_DND)
    {
        std::string msg;
        recv_data >> msg;

        if (msg.empty() || !_player->isDND())
        {
            if (!_player->isDND())
            {
                if (msg.empty())
                    msg  = GetTrinityString(LANG_PLAYER_DND_DEFAULT);
                _player->dndMsg = msg;
            }

            sScriptMgr.OnPlayerChat(_player, type, LANG_UNIVERSAL, msg);

            _player->ToggleDND();
            if (_player->isDND() && _player->isAFK())
                _player->ToggleAFK();
        }
        return;
    }

    recv_data >> lang;

    if (type >= MAX_CHAT_MSG_TYPE)
    {
        sLog.outError("CHAT: Wrong message type received: %u", type);
        return;
    }

    //sLog.outDebug("CHAT: packet received. type %u, lang %u", type, lang);

    // prevent talking at unknown language (cheating)
    LanguageDesc const* langDesc = GetLanguageDescByID(lang);
    if (!langDesc)
    {
        SendNotification(LANG_UNKNOWN_LANGUAGE);
        return;
    }
    if (langDesc->skill_id != 0 && !_player->HasSkill(langDesc->skill_id))
    {
        // also check SPELL_AURA_COMPREHEND_LANGUAGE (client offers option to speak in that language)
        Unit::AuraEffectList const& langAuras = _player->GetAuraEffectsByType(SPELL_AURA_COMPREHEND_LANGUAGE);
        bool foundAura = false;
        for (Unit::AuraEffectList::const_iterator i = langAuras.begin(); i != langAuras.end(); ++i)
        {
            if ((*i)->GetMiscValue() == int32(lang))
            {
                foundAura = true;
                break;
            }
        }
        if (!foundAura)
        {
            SendNotification(LANG_NOT_LEARNED_LANGUAGE);
            return;
        }
    }

    if (lang == LANG_ADDON)
    {
        if (sWorld.getBoolConfig(CONFIG_CHATLOG_ADDON))
        {
            std::string msg = "";
            recv_data >> msg;

            if (msg.empty())
            {
                sLog.outDebug("Player %s send empty addon msg", GetPlayer()->GetName());
                return;
            }

            sScriptMgr.OnPlayerChat(GetPlayer(), CHAT_MSG_ADDON, lang, msg);
        }

        // Disabled addon channel?
        if (!sWorld.getBoolConfig(CONFIG_ADDON_CHANNEL))
            return;
    }
    // LANG_ADDON should not be changed nor be affected by flood control
    else
    {
        // send in universal language if player in .gmon mode (ignore spell effects)
        if (_player->isGameMaster())
            lang = LANG_UNIVERSAL;
        else
        {
            // send in universal language in two side iteration allowed mode
            if (sWorld.getBoolConfig(CONFIG_ALLOW_TWO_SIDE_INTERACTION_CHAT))
                lang = LANG_UNIVERSAL;
            else
            {
                switch(type)
                {
                    case CHAT_MSG_PARTY:
                    case CHAT_MSG_PARTY_LEADER:
                    case CHAT_MSG_RAID:
                    case CHAT_MSG_RAID_LEADER:
                    case CHAT_MSG_RAID_WARNING:
                        // allow two side chat at group channel if two side group allowed
                        if (sWorld.getBoolConfig(CONFIG_ALLOW_TWO_SIDE_INTERACTION_GROUP))
                            lang = LANG_UNIVERSAL;
                        break;
                    case CHAT_MSG_GUILD:
                    case CHAT_MSG_OFFICER:
                        // allow two side chat at guild channel if two side guild allowed
                        if (sWorld.getBoolConfig(CONFIG_ALLOW_TWO_SIDE_INTERACTION_GUILD))
                            lang = LANG_UNIVERSAL;
                        break;
                }
            }

            // but overwrite it by SPELL_AURA_MOD_LANGUAGE auras (only single case used)
            Unit::AuraEffectList const& ModLangAuras = _player->GetAuraEffectsByType(SPELL_AURA_MOD_LANGUAGE);
            if (!ModLangAuras.empty())
                lang = ModLangAuras.front()->GetMiscValue();
        }

        if (!_player->CanSpeak())
        {
            std::string timeStr = secsToTimeString(m_muteTime - time(NULL));
            SendNotification(GetTrinityString(LANG_WAIT_BEFORE_SPEAKING),timeStr.c_str());
            return;
        }

        if (type != CHAT_MSG_AFK && type != CHAT_MSG_DND)
            GetPlayer()->UpdateSpeakTime();
    }

    if (GetPlayer()->HasAura(1852) && type != CHAT_MSG_WHISPER)
    {
        std::string msg="";
        recv_data >> msg;

        SendNotification(GetTrinityString(LANG_GM_SILENCE), GetPlayer()->GetName());
        return;
    }

    switch(type)
    {
        case CHAT_MSG_SAY:
        case CHAT_MSG_EMOTE:
        case CHAT_MSG_YELL:
        {
            std::string msg;
            recv_data >> msg;

            if (msg.empty())
                return;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                return;

            if (_player->getLevel() < sWorld.getIntConfig(CONFIG_CHAT_SAY_LEVEL_REQ))
            {
                SendNotification(GetTrinityString(LANG_SAY_REQ), sWorld.getIntConfig(CONFIG_CHAT_SAY_LEVEL_REQ));
                return;
            }

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (msg.empty())
                return;

            if (type == CHAT_MSG_SAY)
                GetPlayer()->Say(msg, lang);
            else if (type == CHAT_MSG_EMOTE)
                GetPlayer()->TextEmote(msg);
            else if (type == CHAT_MSG_YELL)
                GetPlayer()->Yell(msg, lang);
        } break;

        case CHAT_MSG_WHISPER:
        {
            std::string to, msg;
            recv_data >> msg;
            recv_data >> to;

            if (_player->getLevel() < sWorld.getIntConfig(CONFIG_CHAT_WHISPER_LEVEL_REQ))
            {
                SendNotification(GetTrinityString(LANG_WHISPER_REQ), sWorld.getIntConfig(CONFIG_CHAT_WHISPER_LEVEL_REQ));
                return;
            }

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (msg.empty())
                break;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                return;

            if (!normalizePlayerName(to))
            {
                SendPlayerNotFoundNotice(to);
                break;
            }

            Player *player = sObjectMgr.GetPlayer(to.c_str());
            uint32 tSecurity = GetSecurity();
            uint32 pSecurity = player ? player->GetSession()->GetSecurity() : SEC_PLAYER;
            if (!player || (tSecurity == SEC_PLAYER && pSecurity > SEC_PLAYER && !player->isAcceptWhispers()))
            {
                SendPlayerNotFoundNotice(to);
                return;
            }

            if (!sWorld.getBoolConfig(CONFIG_ALLOW_TWO_SIDE_INTERACTION_CHAT) && tSecurity == SEC_PLAYER && pSecurity == SEC_PLAYER)
            {
                uint32 sidea = GetPlayer()->GetTeam();
                uint32 sideb = player->GetTeam();
                if (sidea != sideb)
                {
                    SendWrongFactionNotice();
                    return;
                }
            }

            if (GetPlayer()->HasAura(1852) && !player->isGameMaster())
            {
                SendNotification(GetTrinityString(LANG_GM_SILENCE), GetPlayer()->GetName());
                return;
            }

            GetPlayer()->Whisper(msg, lang, player->GetGUID());
        } break;

        case CHAT_MSG_PARTY:
        case CHAT_MSG_PARTY_LEADER:
        {
            std::string msg;
            recv_data >> msg;

            if (msg.empty())
                break;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                break;

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (msg.empty())
                break;

            // if player is in battleground, he cannot say to battleground members by /p
            Group *group = GetPlayer()->GetOriginalGroup();
            if (!group)
            {
                group = _player->GetGroup();
                if (!group || group->isBGGroup())
                    return;
            }

            if ((type == CHAT_MSG_PARTY_LEADER) && !group->IsLeader(_player->GetGUID()))
                return;

            sScriptMgr.OnPlayerChat(GetPlayer(), type, lang, msg, group);

            WorldPacket data;
            ChatHandler::FillMessageData(&data, this, type, lang, NULL, 0, msg.c_str(), NULL);
            group->BroadcastPacket(&data, false, group->GetMemberGroup(GetPlayer()->GetGUID()));
        } break;

        case CHAT_MSG_GUILD:
        {
            std::string msg;
            recv_data >> msg;

            if (msg.empty())
                break;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                break;

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (msg.empty())
                break;

            if (GetPlayer()->GetGuildId())
            {
                if (Guild *guild = sObjectMgr.GetGuildById(GetPlayer()->GetGuildId()))
                {
                    sScriptMgr.OnPlayerChat(GetPlayer(), type, lang, msg, guild);

                    guild->BroadcastToGuild(this, false, msg, lang == LANG_ADDON ? LANG_ADDON : LANG_UNIVERSAL);
                }
            }

            break;
        }
        case CHAT_MSG_OFFICER:
        {
            std::string msg;
            recv_data >> msg;

            if (msg.empty())
                break;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                break;

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (msg.empty())
                break;

            if (GetPlayer()->GetGuildId())
            {
                if (Guild *guild = sObjectMgr.GetGuildById(GetPlayer()->GetGuildId()))
                {
                    sScriptMgr.OnPlayerChat(GetPlayer(), type, lang, msg, guild);

                    guild->BroadcastToGuild(this, true, msg, lang == LANG_ADDON ? LANG_ADDON : LANG_UNIVERSAL);
                }
            }
            break;
        }
        case CHAT_MSG_RAID:
        {
            std::string msg;
            recv_data >> msg;

            if (msg.empty())
                break;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                break;

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (msg.empty())
                break;

            // if player is in battleground, he cannot say to battleground members by /ra
            Group *group = GetPlayer()->GetOriginalGroup();
            if (!group)
            {
                group = GetPlayer()->GetGroup();
                if (!group || group->isBGGroup() || !group->isRaidGroup())
                    return;
            }

            sScriptMgr.OnPlayerChat(GetPlayer(), type, lang, msg, group);

            WorldPacket data;
            ChatHandler::FillMessageData(&data, this, CHAT_MSG_RAID, lang, "", 0, msg.c_str(), NULL);
            group->BroadcastPacket(&data, false);
        } break;
        case CHAT_MSG_RAID_LEADER:
        {
            std::string msg;
            recv_data >> msg;

            if (msg.empty())
                break;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                break;

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (msg.empty())
                break;

            // if player is in battleground, he cannot say to battleground members by /ra
            Group *group = GetPlayer()->GetOriginalGroup();
            if (!group)
            {
                group = GetPlayer()->GetGroup();
                if (!group || group->isBGGroup() || !group->isRaidGroup() || !group->IsLeader(_player->GetGUID()))
                    return;
            }

            sScriptMgr.OnPlayerChat(GetPlayer(), type, lang, msg, group);

            WorldPacket data;
            ChatHandler::FillMessageData(&data, this, CHAT_MSG_RAID_LEADER, lang, "", 0, msg.c_str(), NULL);
            group->BroadcastPacket(&data, false);
        } break;
        case CHAT_MSG_RAID_WARNING:
        {
            std::string msg;
            recv_data >> msg;

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (msg.empty())
                break;

            Group *group = GetPlayer()->GetGroup();
            if (!group || !group->isRaidGroup() || !(group->IsLeader(GetPlayer()->GetGUID()) || group->IsAssistant(GetPlayer()->GetGUID())) || group->isBGGroup())
                return;

            sScriptMgr.OnPlayerChat(GetPlayer(), type, lang, msg, group);

            WorldPacket data;
            //in battleground, raid warning is sent only to players in battleground - code is ok
            ChatHandler::FillMessageData(&data, this, CHAT_MSG_RAID_WARNING, lang, "", 0, msg.c_str(), NULL);
            group->BroadcastPacket(&data, false);
        } break;

        case CHAT_MSG_BATTLEGROUND:
        {
            std::string msg;
            recv_data >> msg;

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (msg.empty())
                break;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                return;

            //battleground raid is always in Player->GetGroup(), never in GetOriginalGroup()
            Group *group = GetPlayer()->GetGroup();
            if (!group || !group->isBGGroup())
                return;

            sScriptMgr.OnPlayerChat(GetPlayer(), type, lang, msg, group);

            WorldPacket data;
            ChatHandler::FillMessageData(&data, this, CHAT_MSG_BATTLEGROUND, lang, "", 0, msg.c_str(), NULL);
            group->BroadcastPacket(&data, false);
        } break;

        case CHAT_MSG_BATTLEGROUND_LEADER:
        {
            std::string msg;
            recv_data >> msg;

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (msg.empty())
                break;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                return;

            // battleground raid is always in Player->GetGroup(), never in GetOriginalGroup()
            Group *group = GetPlayer()->GetGroup();
            if (!group || !group->isBGGroup() || !group->IsLeader(GetPlayer()->GetGUID()))
                return;

            sScriptMgr.OnPlayerChat(GetPlayer(), type, lang, msg, group);

            WorldPacket data;
            ChatHandler::FillMessageData(&data, this, CHAT_MSG_BATTLEGROUND_LEADER, lang, "", 0, msg.c_str(), NULL);
            group->BroadcastPacket(&data, false);
        } break;

        case CHAT_MSG_CHANNEL:
        {
            std::string channel, msg;
            recv_data >> msg;
            recv_data >> channel;

            if (msg.empty())
                break;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                break;

            if (!processChatmessageFurtherAfterSecurityChecks(msg, lang))
                return;

            if (ChatHandler(this).ParseCommands(msg.c_str()) > 0)
                return;

            if (_player->getLevel() < sWorld.getIntConfig(CONFIG_CHAT_CHANNEL_LEVEL_REQ))
            {
                SendNotification(GetTrinityString(LANG_CHANNEL_REQ), sWorld.getIntConfig(CONFIG_CHAT_CHANNEL_LEVEL_REQ));
                return;
            }

            if (msg.empty())
                break;

            if (ChannelMgr* cMgr = channelMgr(_player->GetTeam()))
            {

                if (Channel *chn = cMgr->GetChannel(channel, _player))
                {
                    sScriptMgr.OnPlayerChat(_player, type, lang, msg, chn);

                    chn->Say(_player->GetGUID(), msg.c_str(), lang);
                }
            }
        } break;
        default:
            sLog.outError("CHAT: unknown message type %u, lang: %u", type, lang);
            break;
    }
}

void WorldSession::HandleEmoteOpcode(WorldPacket & recv_data)
{
    if (!GetPlayer()->isAlive() || GetPlayer()->hasUnitState(UNIT_STAT_DIED)) 
        return;

    uint32 emote;
    recv_data >> emote;
    sScriptMgr.OnPlayerEmote(GetPlayer(), emote);
    GetPlayer()->HandleEmoteCommand(emote);
}

namespace Trinity
{
    class EmoteChatBuilder
    {
        public:
            EmoteChatBuilder(Player const& pl, uint32 text_emote, uint32 emote_num, Unit const* target)
                : i_player(pl), i_text_emote(text_emote), i_emote_num(emote_num), i_target(target) {}

            void operator()(WorldPacket& data, LocaleConstant loc_idx)
            {
                char const* nam = i_target ? i_target->GetNameForLocaleIdx(loc_idx) : NULL;
                uint32 namlen = (nam ? strlen(nam) : 0) + 1;

                data.Initialize(SMSG_TEXT_EMOTE, (20+namlen));
                data << i_player.GetGUID();
                data << (uint32)i_text_emote;
                data << i_emote_num;
                data << (uint32)namlen;
                if (namlen > 1)
                    data.append(nam, namlen);
                else
                    data << (uint8)0x00;
            }

        private:
            Player const& i_player;
            uint32        i_text_emote;
            uint32        i_emote_num;
            Unit const*   i_target;
    };
}                                                           // namespace Trinity

void WorldSession::HandleTextEmoteOpcode(WorldPacket & recv_data)
{
    if (!GetPlayer()->isAlive())
        return;

    if (!GetPlayer()->CanSpeak())
    {
        std::string timeStr = secsToTimeString(m_muteTime - time(NULL));
        SendNotification(GetTrinityString(LANG_WAIT_BEFORE_SPEAKING),timeStr.c_str());
        return;
    }

    uint32 text_emote, emoteNum;
    uint64 guid;

    recv_data >> text_emote;
    recv_data >> emoteNum;
    recv_data >> guid;

    sScriptMgr.OnPlayerTextEmote(GetPlayer(), text_emote, emoteNum, guid);

    EmotesTextEntry const *em = sEmotesTextStore.LookupEntry(text_emote);
    if (!em)
        return;

    uint32 emote_anim = em->textid;

    switch(emote_anim)
    {
        case EMOTE_STATE_SLEEP:
        case EMOTE_STATE_SIT:
        case EMOTE_STATE_KNEEL:
        case EMOTE_ONESHOT_NONE:
            break;
        default:
            // Only allow text-emotes for "dead" entities (feign death included)
            if (GetPlayer()->hasUnitState(UNIT_STAT_DIED))
                break;
            GetPlayer()->SetEmoteState(emote_anim);
            break;
    }

    Unit* unit = ObjectAccessor::GetUnit(*_player, guid);

    CellPair p = Trinity::ComputeCellPair(GetPlayer()->GetPositionX(), GetPlayer()->GetPositionY());

    Cell cell(p);
    cell.data.Part.reserved = ALL_DISTRICT;
    cell.SetNoCreate();

    Trinity::EmoteChatBuilder emote_builder(*GetPlayer(), text_emote, emoteNum, unit);
    Trinity::LocalizedPacketDo<Trinity::EmoteChatBuilder > emote_do(emote_builder);
    Trinity::PlayerDistWorker<Trinity::LocalizedPacketDo<Trinity::EmoteChatBuilder > > emote_worker(GetPlayer(), sWorld.getFloatConfig(CONFIG_LISTEN_RANGE_TEXTEMOTE), emote_do);
    TypeContainerVisitor<Trinity::PlayerDistWorker<Trinity::LocalizedPacketDo<Trinity::EmoteChatBuilder> >, WorldTypeMapContainer> message(emote_worker);
    cell.Visit(p, message, *GetPlayer()->GetMap(), *GetPlayer(), sWorld.getFloatConfig(CONFIG_LISTEN_RANGE_TEXTEMOTE));

    GetPlayer()->GetAchievementMgr().UpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_DO_EMOTE, text_emote, 0, unit);

    //Send scripted event call
    if (unit && unit->GetTypeId() == TYPEID_UNIT && ((Creature*)unit)->AI())
        ((Creature*)unit)->AI()->ReceiveEmote(GetPlayer(), text_emote);
}

void WorldSession::HandleChatIgnoredOpcode(WorldPacket& recv_data)
{
    uint64 iguid;
    uint8 unk;
    //sLog.outDebug("WORLD: Received CMSG_CHAT_IGNORED");

    recv_data >> iguid;
    recv_data >> unk;                                       // probably related to spam reporting

    Player *player = sObjectMgr.GetPlayer(iguid);
    if (!player || !player->GetSession())
        return;

    WorldPacket data;
    ChatHandler::FillMessageData(&data, this, CHAT_MSG_IGNORED, LANG_UNIVERSAL, NULL, GetPlayer()->GetGUID(), GetPlayer()->GetName(), NULL);
    player->GetSession()->SendPacket(&data);
}

void WorldSession::HandleChannelDeclineInvite(WorldPacket &recvPacket)
{
    sLog.outDebug("Opcode %u", recvPacket.GetOpcode());
}

void WorldSession::SendPlayerNotFoundNotice(std::string name)
{
    WorldPacket data(SMSG_CHAT_PLAYER_NOT_FOUND, name.size()+1);
    data << name;
    SendPacket(&data);
}

void WorldSession::SendPlayerAmbiguousNotice(std::string name)
{
    WorldPacket data(SMSG_CHAT_PLAYER_AMBIGUOUS, name.size()+1);
    data << name;
    SendPacket(&data);
}

void WorldSession::SendWrongFactionNotice()
{
    WorldPacket data(SMSG_CHAT_WRONG_FACTION, 0);
    SendPacket(&data);
}

void WorldSession::SendChatRestrictedNotice(ChatRestrictionType restriction)
{
    WorldPacket data(SMSG_CHAT_RESTRICTED, 1);
    data << uint8(restriction);
    SendPacket(&data);
}
