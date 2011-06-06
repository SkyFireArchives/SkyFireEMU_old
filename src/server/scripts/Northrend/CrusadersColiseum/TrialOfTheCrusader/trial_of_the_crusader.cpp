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
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/* ScriptData
SDName: Trial Of the crusader
SD%Complete: ??%
SDComment: event script based on /dev/rsa
SDCategory: trial_of_the_crusader
EndScriptData */

//Known Bugs:
// - Need better implementation of Gossip and correct gossip text and option
// - Misses Dalaran Teleport at the end.

#include "ScriptPCH.h"
#include "trial_of_the_crusader.h"

enum eYells
{
    SAY_STAGE_0_01            = -1649070,
    SAY_STAGE_0_02            = -1649071,
    SAY_STAGE_0_03a           = -1649072,
    SAY_STAGE_0_03h           = -1649073,
    SAY_STAGE_0_04            = -1649074,
    SAY_STAGE_0_05            = -1649075,
    SAY_STAGE_0_06            = -1649076,
    SAY_STAGE_0_WIPE          = -1649077,
    SAY_STAGE_1_01            = -1649080,
    SAY_STAGE_1_02            = -1649081,
    SAY_STAGE_1_03            = -1649082,
    SAY_STAGE_1_04            = -1649083,
    SAY_STAGE_1_05            = -1649030, //INTRO Jaraxxus
    SAY_STAGE_1_06            = -1649084,
    SAY_STAGE_1_07            = -1649086,
    SAY_STAGE_1_08            = -1649087,
    SAY_STAGE_1_09            = -1649088,
    SAY_STAGE_1_10            = -1649089,
    SAY_STAGE_1_11            = -1649090,
    SAY_STAGE_2_01            = -1649091,
    SAY_STAGE_2_02a           = -1649092,
    SAY_STAGE_2_02h           = -1649093,
    SAY_STAGE_2_03            = -1649094,
    SAY_STAGE_2_04a           = -1649095,
    SAY_STAGE_2_04h           = -1649096,
    SAY_STAGE_2_05a           = -1649097,
    SAY_STAGE_2_05h           = -1649098,
    SAY_STAGE_2_06            = -1649099,
    SAY_STAGE_3_01            = -1649100,
    SAY_STAGE_3_02            = -1649101,
    SAY_STAGE_3_03a           = -1649102,
    SAY_STAGE_3_03h           = -1649103,
    SAY_STAGE_4_01            = -1649104,
    SAY_STAGE_4_02            = -1649105,
    SAY_STAGE_4_03            = -1649106,
    SAY_STAGE_4_04            = -1649107,
    SAY_STAGE_4_05            = -1649108,
    SAY_STAGE_4_06            = -1649109,
    SAY_STAGE_4_07            = -1649110,
};

struct _Messages
{
    eAnnouncerMessages msgnum;
    uint32 id;
    bool state;
    uint32 encounter;
};

static _Messages _GossipMessage[]=
{
    {MSG_BEASTS,GOSSIP_ACTION_INFO_DEF+1,false,TYPE_BEASTS},
    {MSG_JARAXXUS,GOSSIP_ACTION_INFO_DEF+2,false,TYPE_JARAXXUS},
    {MSG_CRUSADERS,GOSSIP_ACTION_INFO_DEF+3,false,TYPE_CRUSADERS},
    {MSG_VALKIRIES,GOSSIP_ACTION_INFO_DEF+4,false,TYPE_VALKIRIES},
    {MSG_LICH_KING,GOSSIP_ACTION_INFO_DEF+5,false,TYPE_ANUBARAK},
    {MSG_ANUBARAK,GOSSIP_ACTION_INFO_DEF+6,true,TYPE_ANUBARAK}
};

enum
{
    NUM_MESSAGES = 6,
};

enum eSpells
{
    SPELL_OPEN_PORTAL   =   67864,
};

class npc_announcer_toc10 : public CreatureScript
{
    public:

        npc_announcer_toc10() : CreatureScript("npc_announcer_toc10") { }

        struct npc_announcer_toc10AI : public ScriptedAI
        {
            npc_announcer_toc10AI(Creature* creature) : ScriptedAI(creature)
            {
                instance = (InstanceScript*)creature->GetInstanceScript();
                eventStart = false;
            }

            void Reset()
            {
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                if (Creature *ally = GetClosestCreatureWithEntry(me, NPC_THRALL, 300.0f))
                    ally->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                if (Creature *ally = GetClosestCreatureWithEntry(me, NPC_PROUDMOORE, 300.0f))
                    ally->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            }

            void AttackStart(Unit* /*who*/) {}

        private:
            InstanceScript* instance;
            bool eventStart;
        };

        bool OnGossipHello(Player* player, Creature* creature)
        {
            InstanceScript* instanceScript = creature->GetInstanceScript();
            if (!instanceScript)
                return true;

            char const* _message;

            switch (player->GetSession()->GetSessionDbcLocale())
            {
                case LOCALE_deDE: _message = "Wir sind bereit!"; break;
                case LOCALE_enUS: default: _message = "We are ready!";
            }

            if (player->isInCombat() || instanceScript->IsEncounterInProgress() || instanceScript->GetData(TYPE_EVENT))
                return true;

            uint8 i = 0;
            for (; i < NUM_MESSAGES; ++i)
            {
                if ((!_GossipMessage[i].state && instanceScript->GetData(_GossipMessage[i].encounter) != DONE)
                    || (_GossipMessage[i].state && instanceScript->GetData(_GossipMessage[i].encounter) == DONE))
                {
                    player->ADD_GOSSIP_ITEM(GOSSIP_ICON_CHAT, _message, GOSSIP_SENDER_MAIN, _GossipMessage[i].id);
                    break;
                }
            }

            player->SEND_GOSSIP_MENU(_GossipMessage[i].msgnum, creature->GetGUID());
            return true;
        }

        bool OnGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action)
        {
            player->PlayerTalkClass->ClearMenus();
            player->CLOSE_GOSSIP_MENU();
            InstanceScript* instanceScript = creature->GetInstanceScript();
            if (!instanceScript)
                return true;

            switch (action)
            {
                case GOSSIP_ACTION_INFO_DEF+1:
                    if (instanceScript->GetData(TYPE_BEASTS) != DONE)
                    {
                        instanceScript->SetData(TYPE_EVENT,110);
                        instanceScript->SetData(TYPE_NORTHREND_BEASTS,NOT_STARTED);
                        instanceScript->SetData(TYPE_BEASTS,NOT_STARTED);
                    }
                    break;
                case GOSSIP_ACTION_INFO_DEF+2:
                    if (Creature* icehowl = Unit::GetCreature(*player, instanceScript->GetData64(NPC_ICEHOWL)))
                        icehowl->DespawnOrUnsummon();

                    if (Creature* Jaraxxus = Unit::GetCreature(*creature,instanceScript->GetData64(NPC_JARAXXUS)))
                    {
                        Jaraxxus->RemoveAurasDueToSpell(SPELL_JARAXXUS_CHAINS);
                        Jaraxxus->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        Jaraxxus->SetReactState(REACT_AGGRESSIVE);
                        Jaraxxus->SetInCombatWithZone();
                    }
                    else
                    {
                        if (instanceScript->GetData(TYPE_JARAXXUS) != DONE)
                        {
                            instanceScript->SetData(TYPE_EVENT,1010);
                            instanceScript->SetData(TYPE_JARAXXUS,NOT_STARTED);
                        }
                    }
                    break;
                case GOSSIP_ACTION_INFO_DEF+3:
                    if (instanceScript->GetData(TYPE_CRUSADERS) != DONE)
                    {
                        if (player->GetTeam() == ALLIANCE)
                            instanceScript->SetData(TYPE_EVENT, 3000);
                        else 
                            instanceScript->SetData(TYPE_EVENT, 3001);
                        instanceScript->SetData(TYPE_CRUSADERS, NOT_STARTED);
                    }
                    break;
                case GOSSIP_ACTION_INFO_DEF+4:
                    if (instanceScript->GetData(TYPE_VALKIRIES) != DONE)
                    {
                        instanceScript->SetData(TYPE_EVENT,4000);
                        instanceScript->SetData(TYPE_VALKIRIES,NOT_STARTED);
                    }
                    break;
                case GOSSIP_ACTION_INFO_DEF+5:
                {
                    if (instanceScript->GetData(TYPE_LICH_KING) != DONE && !player->isGameMaster())
                        return true;

                    if (GameObject* floor = GameObject::GetGameObject(*player, instanceScript->GetData64(GO_ARGENT_COLISEUM_FLOOR)))
                        floor->TakenDamage(1000000);

                    creature->CastSpell(creature, 69016, false);

                    Creature* Anubarak = Unit::GetCreature(*creature, instanceScript->GetData64(NPC_ANUBARAK));
                    if (!Anubarak || !Anubarak->isAlive())
                        Anubarak = creature->SummonCreature(NPC_ANUBARAK, AnubarakLoc[0].GetPositionX(),AnubarakLoc[0].GetPositionY(), AnubarakLoc[0].GetPositionZ(), 3, TEMPSUMMON_CORPSE_TIMED_DESPAWN, DESPAWN_TIME);

                    instanceScript->SetData(TYPE_ANUBARAK, NOT_STARTED);

                    if (creature->IsVisible())
                        creature->SetVisible(false);
                    break;
                }
            }
            creature->RemoveFlag(UNIT_NPC_FLAGS, UNIT_NPC_FLAG_GOSSIP);
            return true;
        }

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_announcer_toc10AI(creature);
        }
};

class boss_lich_king_toc : public CreatureScript
{
    public:

        boss_lich_king_toc() : CreatureScript("boss_lich_king_toc") { }

        struct boss_lich_king_tocAI : public ScriptedAI
        {
            boss_lich_king_tocAI(Creature *creature) : ScriptedAI(creature)
            {
                instance = (InstanceScript*)creature->GetInstanceScript();
            }

            void Reset()
            {
                UpdateTimer = 0;
                me->SetReactState(REACT_PASSIVE);
                if (Creature* summoned = me->SummonCreature(NPC_TRIGGER, ToCCommonLoc[2].GetPositionX(), ToCCommonLoc[2].GetPositionY(), ToCCommonLoc[2].GetPositionZ(), 5, TEMPSUMMON_TIMED_DESPAWN, 60000))
                {
                    summoned->CastSpell(summoned, 51807, false);
                    summoned->SetDisplayId(11686);
                }
                if (instance) instance->SetData(TYPE_LICH_KING,IN_PROGRESS);
                me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
            }

            void MovementInform(uint32 uiType, uint32 uiId)
            {
                if (uiType != POINT_MOTION_TYPE)
                    return;
                switch (uiId)
                {
                    case 0:
                        instance->SetData(TYPE_EVENT,5030);
                        break;
                    case 1:
                        instance->SetData(TYPE_EVENT,5050);
                        break;
                }
            }

            void UpdateAI(const uint32 diff)
            {
                if (!instance) 
                    return;

                if (instance->GetData(TYPE_EVENT_NPC) != NPC_LICH_KING_1) 
                    return;

                UpdateTimer = instance->GetData(TYPE_EVENT_TIMER);
                if (UpdateTimer <= diff)
                {
                    switch (instance->GetData(TYPE_EVENT))
                    {
                        case 5010:
                            DoScriptText(SAY_STAGE_4_02,me);
                            UpdateTimer = 3000;
                            me->GetMotionMaster()->MovePoint(0,LichKingLoc[0]);
                            instance->SetData(TYPE_EVENT,5020);
                            break;
                        case 5030:
                            DoScriptText(SAY_STAGE_4_04,me);
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_TALK);
                            UpdateTimer = 10000;
                            instance->SetData(TYPE_EVENT,5040);
                            break;
                        case 5040:
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_NONE);
                            me->GetMotionMaster()->MovePoint(1,LichKingLoc[1]);
                            UpdateTimer = 1000;
                            instance->SetData(TYPE_EVENT,0);
                            break;
                        case 5050:
                            me->HandleEmoteCommand(EMOTE_ONESHOT_EXCLAMATION);
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,5060);
                            break;
                        case 5060:
                            DoScriptText(SAY_STAGE_4_05,me);
                            me->HandleEmoteCommand(EMOTE_ONESHOT_KNEEL);
                            UpdateTimer = 2500;
                            instance->SetData(TYPE_EVENT,5070);
                            break;
                        case 5070:
                            me->CastSpell(me,68198,false);
                            UpdateTimer = 1500;
                            instance->SetData(TYPE_EVENT,5080);
                            break;
                        case 5080:
                            if (GameObject* pGoFloor = instance->instance->GetGameObject(instance->GetData64(GO_ARGENT_COLISEUM_FLOOR)))
                                pGoFloor->TakenDamage(1000000);
                            me->CastSpell(me, 69016, false);
                            if (instance) instance->SetData(TYPE_LICH_KING,DONE);
                            Creature* Anubarak = Unit::GetCreature((*me),instance->GetData64(NPC_ANUBARAK));
                            if (!Anubarak || !Anubarak->isAlive())
                                Anubarak = me->SummonCreature(NPC_ANUBARAK, AnubarakLoc[0].GetPositionX(), AnubarakLoc[0].GetPositionY(), AnubarakLoc[0].GetPositionZ(), 3, TEMPSUMMON_CORPSE_TIMED_DESPAWN, DESPAWN_TIME);
                            me->ForcedDespawn();
                            instance->SetData(TYPE_EVENT,0);
                            UpdateTimer = 20000;
                            break;
                    }
                } else UpdateTimer -= diff;
                instance->SetData(TYPE_EVENT_TIMER, UpdateTimer);
            }

        private:
            InstanceScript* instance;
            uint32 UpdateTimer;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new boss_lich_king_tocAI(creature);
        }
};

class npc_fizzlebang_toc : public CreatureScript
{
    public:
        npc_fizzlebang_toc() : CreatureScript("npc_fizzlebang_toc") { }

        struct npc_fizzlebang_tocAI : public ScriptedAI
        {
            npc_fizzlebang_tocAI(Creature* creature) : ScriptedAI(creature), Summons(me)
            {
                instance = (InstanceScript*)me->GetInstanceScript();
            }

            void JustDied(Unit* pKiller){}

            void Reset()
            {
                me->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                PortalGUID = 0;
                me->GetMotionMaster()->MovePoint(1, ToCCommonLoc[10].GetPositionX(), ToCCommonLoc[10].GetPositionY()-60, ToCCommonLoc[10].GetPositionZ());
                me->setFaction(14);
                me->SetReactState(REACT_PASSIVE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            }

            void MovementInform(uint32 uiType, uint32 uiId)
            {
                if (uiType != POINT_MOTION_TYPE) return;

                switch (uiId)
                {
                    case 1:
                        me->RemoveUnitMovementFlag(MOVEMENTFLAG_WALKING);
                        if (instance)
                        {
                            instance->DoUseDoorOrButton(instance->GetData64(GO_MAIN_GATE_DOOR));
                            instance->SetData(TYPE_EVENT, 1120);
                            instance->SetData(TYPE_EVENT_TIMER, 1000);
                        }
                        break;
                }
            }

            void JustSummoned(Creature* summoned)
            {
                Summons.Summon(summoned);
            }

            void UpdateAI(const uint32 diff)
            {
                if (!instance) 
                    return;

                if (instance->GetData(TYPE_EVENT_NPC) != NPC_FIZZLEBANG) 
                    return;

                UpdateTimer = instance->GetData(TYPE_EVENT_TIMER);
                if (UpdateTimer <= diff)
                {
                    switch (instance->GetData(TYPE_EVENT))
                    {
                        case 1110:
                            instance->SetData(TYPE_EVENT, 1120);
                            UpdateTimer = 4000;
                            break;
                        case 1120:
                            DoScriptText(SAY_STAGE_1_02, me);
                            instance->SetData(TYPE_EVENT, 1130);
                            UpdateTimer = 12000;
                            break;
                        case 1130:
                            me->GetMotionMaster()->MovementExpired();
                            DoScriptText(SAY_STAGE_1_03, me);
                            me->HandleEmoteCommand(EMOTE_ONESHOT_SPELLCAST_OMNI);
                            if (Unit* trigger =  me->SummonCreature(NPC_TRIGGER, ToCCommonLoc[1].GetPositionX(), ToCCommonLoc[1].GetPositionY(), ToCCommonLoc[1].GetPositionZ(), 4.69494f, TEMPSUMMON_MANUAL_DESPAWN))
                            {
                                TriggerGUID = trigger->GetGUID();
                                trigger->SetFloatValue(OBJECT_FIELD_SCALE_X, 1.0f);
                            }
                            instance->SetData(TYPE_EVENT, 1132);
                            UpdateTimer = 1000;
                            break;
                        case 1132:
                            DoCast(me, SPELL_OPEN_PORTAL);
                            me->GetMotionMaster()->MovementExpired();
                            instance->SetData(TYPE_EVENT, 1134);
                            UpdateTimer = 5000;
                            break;
                        case 1134:
                            if (Creature* portal = me->SummonCreature(NPC_WILFRED_PORTAL, ToCCommonLoc[1].GetPositionX(), ToCCommonLoc[1].GetPositionY(), ToCCommonLoc[1].GetPositionZ(), 4.71239f, TEMPSUMMON_MANUAL_DESPAWN))
                            {
                                portal->SetReactState(REACT_PASSIVE);
                                portal->SetFloatValue(OBJECT_FIELD_SCALE_X, 1.2f);
                                portal->CastSpell(portal,SPELL_WILFRED_PORTAL,false);
                                PortalGUID = portal->GetGUID();
                            }
                            UpdateTimer = 4000;
                            instance->SetData(TYPE_EVENT, 1135);
                            break;
                        case 1135:
                            instance->SetData(TYPE_EVENT, 1140);
                            UpdateTimer = 3000;
                            break;
                        case 1140:
                            DoScriptText(SAY_STAGE_1_04, me);
                            if (Creature* temp = me->SummonCreature(NPC_JARAXXUS, ToCCommonLoc[1].GetPositionX(), ToCCommonLoc[1].GetPositionY(), ToCCommonLoc[1].GetPositionZ(), 5.0f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, DESPAWN_TIME))
                            {
                                temp->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                                temp->SetReactState(REACT_PASSIVE);
                                temp->GetMotionMaster()->MovePoint(0,ToCCommonLoc[1].GetPositionX(), ToCCommonLoc[1].GetPositionY()-10, ToCCommonLoc[1].GetPositionZ());
                            }
                            instance->SetData(TYPE_EVENT, 1142);
                            UpdateTimer = 5000;
                            break;
                        case 1142:
                            if (Creature* temp = Unit::GetCreature(*me,instance->GetData64(NPC_JARAXXUS)))
                                temp->SetUInt64Value(UNIT_FIELD_TARGET, me->GetGUID());
                            if (Creature* trigger = Unit::GetCreature(*me,TriggerGUID))
                                trigger->ForcedDespawn();
                            if (Creature* portal = Unit::GetCreature(*me,PortalGUID))
                                portal->ForcedDespawn();
                            instance->SetData(TYPE_EVENT, 1144);
                            UpdateTimer = 8000;
                            break;
                        case 1144:
                            if (Creature* temp = Unit::GetCreature(*me,instance->GetData64(NPC_JARAXXUS)))
                                DoScriptText(SAY_STAGE_1_05,temp);
                            instance->SetData(TYPE_EVENT, 1150);
                            UpdateTimer = 5000;
                            break;
                        case 1150:
                            if (Creature* temp = Unit::GetCreature(*me,instance->GetData64(NPC_JARAXXUS)))
                            {
                                DoScriptText(SAY_STAGE_1_06, me);
                                temp->CastSpell(me, 67888, true);
                                temp->AddThreat(me, 1000.0f);
                                me->Kill(me);
                            }
                            instance->SetData(TYPE_EVENT, 1180);
                            UpdateTimer = 3000;
                            break;
                    }
                } else UpdateTimer -= diff;
                instance->SetData(TYPE_EVENT_TIMER, UpdateTimer);
            }

        private:
            InstanceScript* instance;
            SummonList Summons;
            uint32 UpdateTimer;
            uint64 PortalGUID;
            uint64 TriggerGUID;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_fizzlebang_tocAI(creature);
        }
};

class npc_tirion_toc : public CreatureScript
{
    public:
        npc_tirion_toc() : CreatureScript("npc_tirion_toc") { }

        struct npc_tirion_tocAI : public ScriptedAI
        {
            npc_tirion_tocAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = (InstanceScript*)me->GetInstanceScript();
            }

            void Reset() {}

            void AttackStart(Unit* /*who*/) {}

            void UpdateAI(const uint32 diff)
            {
                if (!instance) 
                    return;

                if (instance->GetData(TYPE_EVENT_NPC) != NPC_TIRION) 
                    return;

                UpdateTimer = instance->GetData(TYPE_EVENT_TIMER);
                if (UpdateTimer <= diff)
                {
                    switch (instance->GetData(TYPE_EVENT))
                    {
                        case 110:
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_TALK);
                            DoScriptText(SAY_STAGE_0_01, me);
                            UpdateTimer = 22000;
                            instance->SetData(TYPE_EVENT,120);
                            break;
                        case 140:
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_TALK);
                            DoScriptText(SAY_STAGE_0_02, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,150);
                            instance->DoUseDoorOrButton(instance->GetData64(GO_MAIN_GATE_DOOR));
                            break;
                        case 150:
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);
                            if (instance->GetData(TYPE_BEASTS) != DONE)
                            {
                                me->SummonCreature(NPC_GORMOK, ToCCommonLoc[10].GetPositionX(), ToCCommonLoc[10].GetPositionY(), ToCCommonLoc[10].GetPositionZ(), 5, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 30*IN_MILLISECONDS);
                                if (Creature* temp = Unit::GetCreature((*me),instance->GetData64(NPC_GORMOK)))
                                {
                                    temp->GetMotionMaster()->MovePoint(0, ToCCommonLoc[5].GetPositionX(), ToCCommonLoc[5].GetPositionY(), ToCCommonLoc[5].GetPositionZ());
                                    temp->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                                    temp->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                                    temp->SetReactState(REACT_PASSIVE);
                                    if (Creature* Snobold1 = temp->SummonCreature(34800, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN))
                                        Snobold1->EnterVehicle(temp->GetVehicleKit(), 0);
                                    if (Creature* Snobold2 = temp->SummonCreature(34800, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN))
                                        Snobold2->EnterVehicle(temp->GetVehicleKit(), 1);
                                    if (Creature* Snobold3 = temp->SummonCreature(34800, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN))
                                        Snobold3->EnterVehicle(temp->GetVehicleKit(), 2);
                                    if (Creature* Snobold4 = temp->SummonCreature(34800, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN))
                                        Snobold4->EnterVehicle(temp->GetVehicleKit(), 3);
                                }
                            }
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,155);
                            break;
                        case 155:
                            if (Creature* temp = Unit::GetCreature((*me),instance->GetData64(NPC_GORMOK)))
                            {
                                temp->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                                temp->SetReactState(REACT_AGGRESSIVE);
                                temp->SetInCombatWithZone();
                            }
                            instance->DoUseDoorOrButton(instance->GetData64(GO_MAIN_GATE_DOOR));
                            instance->SetData(TYPE_BEASTS,IN_PROGRESS);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,160);
                            break;
                        case 200:
                            DoScriptText(SAY_STAGE_0_04, me);
                            UpdateTimer = 8000;
                            instance->SetData(TYPE_EVENT,205);
                            break;
                        case 205:
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,210);
                            instance->DoUseDoorOrButton(instance->GetData64(GO_MAIN_GATE_DOOR));
                            break;
                        case 210:
                            if (instance->GetData(TYPE_BEASTS) != DONE)
                            {
                                me->SummonCreature(NPC_DREADSCALE, ToCCommonLoc[3].GetPositionX(), ToCCommonLoc[3].GetPositionY(), ToCCommonLoc[3].GetPositionZ(), 5, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 30*IN_MILLISECONDS);
                                if (Creature* temp = Unit::GetCreature((*me),instance->GetData64(NPC_DREADSCALE)))
                                {
                                    temp->GetMotionMaster()->MovePoint(0, ToCCommonLoc[8].GetPositionX(), ToCCommonLoc[8].GetPositionY(), ToCCommonLoc[8].GetPositionZ());
                                    temp->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                                    temp->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                                    temp->SetReactState(REACT_PASSIVE);
                                }
                            }
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,220);
                            break;
                        case 220:
                            if (Creature* temp = Unit::GetCreature((*me),instance->GetData64(NPC_DREADSCALE)))
                            {
                                temp->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                                temp->SetReactState(REACT_AGGRESSIVE);
                                temp->SetInCombatWithZone();
                            }
                            me->SummonCreature(NPC_ACIDMAW, ToCCommonLoc[9].GetPositionX(), ToCCommonLoc[9].GetPositionY(), ToCCommonLoc[9].GetPositionZ(), 5, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 30*IN_MILLISECONDS);
                            if (Creature* temp = Unit::GetCreature((*me),instance->GetData64(NPC_ACIDMAW)))
                            {
                                temp->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                                temp->SetReactState(REACT_AGGRESSIVE);
                                temp->SetInCombatWithZone();
                                temp->CastSpell(temp, 53421, true);
                            }
                            instance->SetData(TYPE_EVENT,230);
                            instance->DoUseDoorOrButton(instance->GetData64(GO_MAIN_GATE_DOOR));
                            break;
                        case 300:
                            DoScriptText(SAY_STAGE_0_05, me);
                            UpdateTimer = 8000;
                            instance->SetData(TYPE_EVENT,305);
                            break;
                        case 305:
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,310);
                            instance->DoUseDoorOrButton(instance->GetData64(GO_MAIN_GATE_DOOR));
                            break;
                        case 310:
                            if (instance->GetData(TYPE_BEASTS) != DONE)
                            {
                                me->SummonCreature(NPC_ICEHOWL, ToCCommonLoc[10].GetPositionX(), ToCCommonLoc[10].GetPositionY(), ToCCommonLoc[10].GetPositionZ(), 5, TEMPSUMMON_DEAD_DESPAWN);
                                if (Creature* temp = Unit::GetCreature((*me),instance->GetData64(NPC_ICEHOWL)))
                                {
                                    temp->GetMotionMaster()->MovePoint(0, ToCCommonLoc[5].GetPositionX(), ToCCommonLoc[5].GetPositionY(), ToCCommonLoc[5].GetPositionZ());
                                    temp->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                                    temp->SetReactState(REACT_AGGRESSIVE);
                                    temp->SetInCombatWithZone();
                                }
                            }
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,315);
                            break;
                        case 315:
                            instance->DoUseDoorOrButton(instance->GetData64(GO_MAIN_GATE_DOOR));
                            instance->SetData(TYPE_EVENT,320);
                            break;
                        case 400:
                            DoScriptText(SAY_STAGE_0_06, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,0);
                            break;
                        case 666:
                            DoScriptText(SAY_STAGE_0_WIPE, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,0);
                            break;
                        case 1010:
                            DoScriptText(SAY_STAGE_1_01, me);
                            UpdateTimer = 7000;
                            instance->DoUseDoorOrButton(instance->GetData64(GO_MAIN_GATE_DOOR));
                            me->SummonCreature(NPC_FIZZLEBANG, ToCCommonLoc[10].GetPositionX(), ToCCommonLoc[10].GetPositionY(), ToCCommonLoc[10].GetPositionZ(), 2, TEMPSUMMON_CORPSE_TIMED_DESPAWN, DESPAWN_TIME);
                            instance->SetData(TYPE_EVENT,0);
                            break;
                        case 1160:
                            if (Creature* temp = Unit::GetCreature(*me,instance->GetData64(NPC_JARAXXUS)))
                            {
                                temp->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                                temp->SetReactState(REACT_AGGRESSIVE);
                                temp->SetInCombatWithZone();
                            }
                            instance->SetData(TYPE_EVENT, 0);
                            break;
                        case 1180:
                            DoScriptText(SAY_STAGE_1_07, me);
                            UpdateTimer = 6000;
                            instance->SetData(TYPE_EVENT, 1160);
                            break;
                        case 2000:
                            DoScriptText(SAY_STAGE_1_08, me);
                            UpdateTimer = 18000;
                            instance->SetData(TYPE_EVENT,2010);
                            break;
                        case 2030:
                            DoScriptText(SAY_STAGE_1_11, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,0);
                            break;
                        case 3000:
                            DoScriptText(SAY_STAGE_2_01, me);
                            UpdateTimer = 12000;
                            instance->SetData(TYPE_EVENT,3050);
                            break;
                        case 3001:
                            DoScriptText(SAY_STAGE_2_01, me);
                            UpdateTimer = 12000;
                            instance->SetData(TYPE_EVENT,3051);
                            break;
                        case 3060:
                            DoScriptText(SAY_STAGE_2_03, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,3070);
                            break;
                        case 3061:
                            DoScriptText(SAY_STAGE_2_03, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,3071);
                            break;
                        //Summoning crusaders
                        case 3091:
                            me->SummonCreature(NPC_CHAMPIONS_CONTROLLER, ToCCommonLoc[1]);
                            if (Creature* pChampionController = Unit::GetCreature((*me),instance->GetData64(NPC_CHAMPIONS_CONTROLLER)))
                                pChampionController->AI()->SetData(0, HORDE);
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,3092);
                            break;
                        //Summoning crusaders
                        case 3090:
                            me->SummonCreature(NPC_CHAMPIONS_CONTROLLER, ToCCommonLoc[1]);
                            if (Creature* pChampionController = Unit::GetCreature((*me),instance->GetData64(NPC_CHAMPIONS_CONTROLLER)))
                                pChampionController->AI()->SetData(0, ALLIANCE);
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,3092);
                            break;
                        case 3092:
                            if (Creature* pChampionController = Unit::GetCreature((*me),instance->GetData64(NPC_CHAMPIONS_CONTROLLER)))
                                pChampionController->AI()->SetData(1, NOT_STARTED);
                            instance->SetData(TYPE_EVENT,3095);
                            break;
                        //Crusaders battle end
                        case 3100:
                            DoScriptText(SAY_STAGE_2_06, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,0);
                            break;
                        case 4000:
                            DoScriptText(SAY_STAGE_3_01, me);
                            UpdateTimer = 13000;
                            instance->SetData(TYPE_EVENT,4010);
                            break;
                        case 4010:
                            DoScriptText(SAY_STAGE_3_02, me);
                            instance->DoUseDoorOrButton(instance->GetData64(GO_MAIN_GATE_DOOR));
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,4015);
                            break;
                        case 4015:
                            me->SummonCreature(NPC_LIGHTBANE, ToCCommonLoc[3].GetPositionX(), ToCCommonLoc[3].GetPositionY(), ToCCommonLoc[3].GetPositionZ(), 5, TEMPSUMMON_CORPSE_TIMED_DESPAWN, DESPAWN_TIME);
                            if (Creature* temp = Unit::GetCreature((*me),instance->GetData64(NPC_LIGHTBANE)))
                            {
                                temp->GetMotionMaster()->MovePoint(0, ToCCommonLoc[6].GetPositionX(), ToCCommonLoc[6].GetPositionY(), ToCCommonLoc[6].GetPositionZ());
                                temp->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                                me->SetReactState(REACT_PASSIVE);
                            }
                            me->SummonCreature(NPC_DARKBANE, ToCCommonLoc[4].GetPositionX(), ToCCommonLoc[4].GetPositionY(), ToCCommonLoc[4].GetPositionZ(), 5, TEMPSUMMON_CORPSE_TIMED_DESPAWN, DESPAWN_TIME);
                            if (Creature* temp = Unit::GetCreature((*me),instance->GetData64(NPC_DARKBANE)))
                            {
                                temp->GetMotionMaster()->MovePoint(0, ToCCommonLoc[7].GetPositionX(), ToCCommonLoc[7].GetPositionY(), ToCCommonLoc[7].GetPositionZ());
                                temp->AddUnitMovementFlag(MOVEMENTFLAG_WALKING);
                                me->SetReactState(REACT_PASSIVE);
                            }
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,4016);
                            break;
                        case 4016:
                            instance->SetData(TYPE_EVENT,4017);
                            instance->DoUseDoorOrButton(instance->GetData64(GO_MAIN_GATE_DOOR));
                            break;
                        case 4040:
                            UpdateTimer = 60000;
                            instance->SetData(TYPE_EVENT,5000);
                            break;
                        case 5000:
                            DoScriptText(SAY_STAGE_4_01, me);
                            UpdateTimer = 10000;
                            instance->SetData(TYPE_EVENT,5005);
                            break;
                        case 5005:
                            UpdateTimer = 8000;
                            instance->SetData(TYPE_EVENT,5010);
                            me->SummonCreature(NPC_LICH_KING_1, ToCCommonLoc[2].GetPositionX(), ToCCommonLoc[2].GetPositionY(), ToCCommonLoc[2].GetPositionZ(), 5);
                            break;
                        case 5020:
                            DoScriptText(SAY_STAGE_4_03, me);
                            UpdateTimer = 1000;
                            instance->SetData(TYPE_EVENT,0);
                            break;
                        case 6000:
                            me->NearTeleportTo(AnubarakLoc[0].GetPositionX(), AnubarakLoc[0].GetPositionY(), AnubarakLoc[0].GetPositionZ(), 4.0f);
                            UpdateTimer = 20000;
                            instance->SetData(TYPE_EVENT,6005);
                            break;
                        case 6005:
                            DoScriptText(SAY_STAGE_4_06, me);
                            me->SummonGameObject(202079, 651.71f, 149.18f, 140.79f, 3.14f, 0, 0, 1, 1, 604800);
                            UpdateTimer = 20000;
                            instance->SetData(TYPE_EVENT,6010);
                            break;
                        case 6010:
                            if (IsHeroic())
                            {
                                DoScriptText(SAY_STAGE_4_07, me);
                                UpdateTimer = 60000;
                                instance->SetData(TYPE_ANUBARAK,SPECIAL);
                                instance->SetData(TYPE_EVENT,6020);
                            } else instance->SetData(TYPE_EVENT,6030);
                            break;
                        case 6020:
                            me->ForcedDespawn();
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,6030);
                            break;
                    }
                } else UpdateTimer -= diff;
                instance->SetData(TYPE_EVENT_TIMER, UpdateTimer);
            }

        private:
            InstanceScript* instance;
            uint32 UpdateTimer;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_tirion_tocAI(creature);
        }
};

class npc_garrosh_toc : public CreatureScript
{
    public:

        npc_garrosh_toc() : CreatureScript("npc_garrosh_toc") { }

        struct npc_garrosh_tocAI : public ScriptedAI
        {
            npc_garrosh_tocAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = (InstanceScript*)me->GetInstanceScript();
            }

            void Reset() {}

            void AttackStart(Unit* /*who*/) {}

            void UpdateAI(const uint32 diff)
            {
                if (!instance) 
                    return;

                if (instance->GetData(TYPE_EVENT_NPC) != NPC_GARROSH) 
                    return;

                UpdateTimer = instance->GetData(TYPE_EVENT_TIMER);
                if (UpdateTimer <= diff)
                {
                    switch (instance->GetData(TYPE_EVENT))
                    {
                        case 130:
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_TALK);
                            DoScriptText(SAY_STAGE_0_03h, me);
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,132);
                            break;
                        case 132:
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,140);
                            break;
                        case 2010:
                            DoScriptText(SAY_STAGE_1_09, me);
                            UpdateTimer = 9000;
                            instance->SetData(TYPE_EVENT,2020);
                            break;
                        case 3050:
                            DoScriptText(SAY_STAGE_2_02h, me);
                            UpdateTimer = 15000;
                            instance->SetData(TYPE_EVENT,3060);
                            break;
                        case 3070:
                            DoScriptText(SAY_STAGE_2_04h, me);
                            UpdateTimer = 6000;
                            instance->SetData(TYPE_EVENT,3080);
                            break;
                        case 3081:
                            DoScriptText(SAY_STAGE_2_05h, me);
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,3091);
                            break;
                        case 4030:
                            DoScriptText(SAY_STAGE_3_03h, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,4040);
                            break;
                    }
                } else UpdateTimer -= diff;
                instance->SetData(TYPE_EVENT_TIMER, UpdateTimer);
            }

        private:            
            InstanceScript* instance;
            uint32 UpdateTimer;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_garrosh_tocAI(creature);
        }
};

class npc_varian_toc : public CreatureScript
{
    public:

        npc_varian_toc() : CreatureScript("npc_varian_toc") { }

        struct npc_varian_tocAI : public ScriptedAI
        {
            npc_varian_tocAI(Creature* creature) : ScriptedAI(creature)
            {
                instance = (InstanceScript*)me->GetInstanceScript();
            }

            void Reset() {}

            void AttackStart(Unit* /*who*/) {}

            void UpdateAI(const uint32 diff)
            {
                if (!instance) 
                    return;

                if (instance->GetData(TYPE_EVENT_NPC) != NPC_VARIAN) 
                    return;

                UpdateTimer = instance->GetData(TYPE_EVENT_TIMER);
                if (UpdateTimer <= diff)
                {
                    switch (instance->GetData(TYPE_EVENT))
                    {
                        case 120:
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_TALK);
                            DoScriptText(SAY_STAGE_0_03a, me);
                            UpdateTimer = 2000;
                            instance->SetData(TYPE_EVENT,122);
                            break;
                        case 122:
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_NONE);
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,130);
                            break;
                        case 2020:
                            DoScriptText(SAY_STAGE_1_10, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,2030);
                            break;
                        case 3051:
                            DoScriptText(SAY_STAGE_2_02a, me);
                            UpdateTimer = 10000;
                            instance->SetData(TYPE_EVENT,3061);
                            break;
                        case 3071:
                            DoScriptText(SAY_STAGE_2_04a, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,3081);
                            break;
                        case 3080:
                            DoScriptText(SAY_STAGE_2_05a, me);
                            UpdateTimer = 3000;
                            instance->SetData(TYPE_EVENT,3090);
                            break;
                        case 4020:
                            DoScriptText(SAY_STAGE_3_03a, me);
                            UpdateTimer = 5000;
                            instance->SetData(TYPE_EVENT,4040);
                            break;
                    }
                } else UpdateTimer -= diff;
                instance->SetData(TYPE_EVENT_TIMER,UpdateTimer);
            }

        private:
            InstanceScript* instance;
            uint32 UpdateTimer;
        };

        CreatureAI* GetAI(Creature* creature) const
        {
            return new npc_varian_tocAI(creature);
        }
};

void AddSC_trial_of_the_crusader()
{
    new npc_announcer_toc10();
    new boss_lich_king_toc();
    new npc_fizzlebang_toc();
    new npc_tirion_toc();
    new npc_garrosh_toc();
    new npc_varian_toc();
}
