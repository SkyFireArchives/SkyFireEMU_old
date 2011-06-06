/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2006-2011 ScriptDev2 <http://www.scriptdev2.com/>
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

/* ScriptData
SDName: Boss Argaloth
SD%Complete: 0
SDComment: 
SDCategory: Baradinfestung
EndScriptData */

enum eSpells
{
    SPELL_BERSERK               = 47008,
    SPELL_METEOR_SLASH          = 88942,
    SPELL_FEL_FLAMES_VISUAL     = 88999,
    SPELL_FEL_FIRESTORM         = 88972,
    SPELL_CONSUMING_DARKNESS    = 88954
};

enum Spells
{
    NPC_FEL_FLAMES              = 47829,
};

enum Events
{
    EVENT_BERSERK               = 1,
    EVENT_CONSUMING_DARKNES     = 2,
    EVENT_METEOR_SLASH          = 3,
    EVENT_AGGRESSIVE            = 4,
};

enum Phase
{
    PHASE_COMBAT_1              = 1,
};

//UPDATE `creature_template` SET `modelid1`='11686' WHERE (`entry`='47829');

class boss_argaloth : public CreatureScript
{
public:
    boss_argaloth() : CreatureScript("boss_argaloth") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_argalothAI(pCreature);
    }

    struct boss_argalothAI : public ScriptedAI
    {
        boss_argalothAI(Creature *c) : ScriptedAI(c)
        {
        }

        EventMap events;

        bool bFirestorm1;
        bool bFirestorm2;

        void Reset()
        {
            events.Reset();

            bFirestorm1 = false;
            bFirestorm2 = false;

            events.ScheduleEvent(EVENT_BERSERK, 600000);
            events.ScheduleEvent(EVENT_METEOR_SLASH, 20000);
            events.ScheduleEvent(EVENT_CONSUMING_DARKNES, 45000);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoZoneInCombat();
        }

        void PhaseFirestorm()
        {
            me->CastStop();
            me->SetReactState(REACT_PASSIVE);
            DoCast(me, SPELL_FEL_FIRESTORM);
            events.DelayEvents(20000);
            events.ScheduleEvent(EVENT_AGGRESSIVE, 18000);
        }
        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if (HealthBelowPct(66) && !bFirestorm1)
            {
               PhaseFirestorm();
               bFirestorm1 = true;
            }
            if (HealthBelowPct(33) && !bFirestorm2)
            {
                PhaseFirestorm();
                bFirestorm2 = true;
            }

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                    case EVENT_CONSUMING_DARKNES:
                        if (Unit *pTarget = SelectUnit(SELECT_TARGET_RANDOM, 0))
                            DoCast(pTarget, SPELL_CONSUMING_DARKNESS);
                        events.RescheduleEvent(EVENT_CONSUMING_DARKNES, 45000);
                        return;
                    case EVENT_METEOR_SLASH:
                        DoCastVictim(SPELL_METEOR_SLASH);
                        events.RescheduleEvent(EVENT_METEOR_SLASH, 20000);
                        return;
                    case EVENT_AGGRESSIVE:
                        me->SetReactState(REACT_AGGRESSIVE);
                        DoStartMovement(me->getVictim());
                        break;
                }
            }
            DoMeleeAttackIfReady();
        }
    };

};

class npc_fel_flames : public CreatureScript
{
public:
    npc_fel_flames() : CreatureScript("npc_fel_flames") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_fel_flamesAI(pCreature);
    }

    struct npc_fel_flamesAI : public ScriptedAI
    {
        npc_fel_flamesAI(Creature *c) : ScriptedAI(c){}

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            DoCast(me, SPELL_FEL_FLAMES_VISUAL);
        }
        void UpdateAI(const uint32 diff){}
    };
};

void AddSC_boss_argaloth()
{
    new boss_argaloth();
    new npc_fel_flames();
}
