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

/* Script Data Start
SDName: Boss Commander Stoutbeard
SDAuthor: LordVanMartin
SD%Complete:
SDComment:  Only Horde Heroic
SDCategory:
Script Data End */

#include "ScriptPCH.h"
#include "nexus.h"

#define SPELL_BATTLE_SHOUT                                       31403
#define SPELL_CHARGE                                             60067
#define SPELL_FRIGHTENING_SHOUT                                  19134
#define SPELL_WHIRLWIND_1                                        38619
#define SPELL_WHIRLWIND_2                                        38618

//not used
//Yell
#define SAY_AGGRO                                              -1576021
#define SAY_KILL                                               -1576022
#define SAY_DEATH                                              -1576023

class boss_commander_stoutbeard : public CreatureScript
{
public:
    boss_commander_stoutbeard() : CreatureScript("boss_commander_stoutbeard") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_commander_stoutbeardAI (pCreature);
    }

    struct boss_commander_stoutbeardAI : public BossAI
    {
        boss_commander_stoutbeardAI(Creature *c) : BossAI(c, DATA_STOUTBEARD) {
        me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
        me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);}

        void Reset() {}
        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);
        }
        void AttackStart(Unit* /*who*/) {}
        void MoveInLineOfSight(Unit* /*who*/) {}
        void UpdateAI(const uint32 /*diff*/)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
        void JustDied(Unit* /*killer*/)
        {
			_JustDied();
            DoScriptText(SAY_DEATH, me);
        }
    };
};

void AddSC_boss_commander_stoutbeard()
{
    new boss_commander_stoutbeard();
}