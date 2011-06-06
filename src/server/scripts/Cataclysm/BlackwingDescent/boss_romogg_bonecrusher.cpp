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
SDName: Boss Rom'ogg Bonecrusher
SD%Complete: 0
SDComment: 
SDCategory:
EndScriptData */

enum eSpells
{
    SPELL_CALL_FOR_HELP                 = 82137,
    SPELL_QUAKE                         = 75272,
    SPELL_SKULLCRACKER                  = 75543,
    SPELL_WOUNDING_STRIKE               = 75571,
    SPELL_CHAINS_OF_WOE_SUMMON          = 82192,

    // Chains
    SPELL_CHAINS_OF_WOE_ROOT            = 95315,
    SPELL_CHAINS_OF_WOE_VISUAL          = 95313,
    SPELL_CHAINS_OF_WOE_TELEPORT_1      = 95311, // Bugged?
    SPELL_CHAINS_OF_WOE_TELEPORT_2      = 75464  // Bugged?
};

enum Spells
{
    NPC_CHAINS_OF_WOE                   = 40447,
};

enum Events
{
    EVENT_NONE                          = 0,
    EVENT_QUAKE                         = 1,
    EVENT_WOUNDING_STRIKE               = 2,
};

class boss_romogg_bonecrusher : public CreatureScript
{
public:
    boss_romogg_bonecrusher() : CreatureScript("boss_romogg_bonecrusher") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_romogg_bonecrusherAI(pCreature);
    }

    struct boss_romogg_bonecrusherAI : public ScriptedAI
    {
        boss_romogg_bonecrusherAI(Creature *c) : ScriptedAI(c)
        {
        }

        EventMap events;

        bool WoundingStrike1;
        bool WoundingStrike2;

        void Reset()
        {
            events.Reset();
            events.ScheduleEvent(EVENT_QUAKE, 10000);
            events.ScheduleEvent(EVENT_WOUNDING_STRIKE, 15000);

            WoundingStrike1 = false;
            WoundingStrike2 = false;
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoCastAOE(SPELL_CALL_FOR_HELP);
        }

        void WoundingStrikePhase()
        {
            Map* pMap = me->GetMap();
            if (!pMap->IsDungeon()) return;
            Map::PlayerList const &PlayerList = pMap->GetPlayers();
            for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                if (Player* i_pl = i->getSource())
                if (i_pl->isAlive())
                {
                    DoTeleportPlayer(i_pl, me->GetPositionX()-5+rand()%5, me->GetPositionY()-5+rand()%5, me->GetPositionZ(), 0);
                    me->SummonCreature(NPC_CHAINS_OF_WOE, i_pl->GetPositionX(), i_pl->GetPositionY(), i_pl->GetPositionZ(), i_pl->GetOrientation(), TEMPSUMMON_TIMED_DESPAWN, 300000);
                }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if (HealthBelowPct(65) && !WoundingStrike1)
            {
                WoundingStrikePhase();
                DoCastAOE(SPELL_SKULLCRACKER);
                events.DelayEvents(9000);
                WoundingStrike1 = true;
            }
            if (HealthBelowPct(35) && !WoundingStrike2)
            {
                WoundingStrikePhase();
                DoCastAOE(SPELL_SKULLCRACKER);
                events.DelayEvents(9000);
                WoundingStrike2 = true;
            }

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                case EVENT_QUAKE:
                    DoCastAOE(SPELL_QUAKE);
                    events.RescheduleEvent(EVENT_QUAKE, 15000);
                    return;
                case EVENT_WOUNDING_STRIKE:
                    DoCastVictim(SPELL_WOUNDING_STRIKE);
                    events.RescheduleEvent(EVENT_WOUNDING_STRIKE, 20000);
                    return;
                }
            }
            DoMeleeAttackIfReady();
        }
    };
};

class npc_chains_of_woe : public CreatureScript
{
public:
   npc_chains_of_woe() : CreatureScript("npc_chains_of_woe") { }

    struct npc_chains_of_woeAI : public ScriptedAI
    {
        npc_chains_of_woeAI(Creature *pCreature) : ScriptedAI(pCreature){}

        void EnterCombat(Unit*)
        {
            DoCast(me, SPELL_CHAINS_OF_WOE_VISUAL);
            Unit* pTarget = me->SelectNearestTarget(1);
            ChainGUID = me->GetGUID();
            uiRootTimer = 2000;
        }

        void JustDied(Unit* )
        {
            Unit* Chain = Unit::GetUnit((*me), ChainGUID);
			{
				if(Chain->HasAura(SPELL_CHAINS_OF_WOE_ROOT))
					Chain->RemoveAura(SPELL_CHAINS_OF_WOE_ROOT);
			}
			me->ForcedDespawn(2000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (uiRootTimer <= diff)
            {
                Unit* Chain = Unit::GetUnit((*me), ChainGUID);
                    DoCast(Chain, SPELL_CHAINS_OF_WOE_ROOT);
                uiRootTimer = 2000;
            } else uiRootTimer -= diff;
        }

        private:
            uint32 uiRootTimer;
            uint64 ChainGUID;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_chains_of_woeAI(pCreature);
    }
};

void AddSC_boss_romogg_bonecrusher()
{
    new boss_romogg_bonecrusher();
    new npc_chains_of_woe();
}
