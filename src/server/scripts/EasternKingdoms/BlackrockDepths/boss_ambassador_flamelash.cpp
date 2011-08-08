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
SDName: Boss_Ambassador_Flamelash
SD%Complete: 100
SDComment:
SDCategory: Blackrock Depths
EndScriptData */

#include "ScriptPCH.h"

enum Spells
{
    SPELL_FIREBLAST                                        = 15573
};

class boss_ambassador_flamelash : public CreatureScript
{
public:
    boss_ambassador_flamelash() : CreatureScript("boss_ambassador_flamelash") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_ambassador_flamelashAI (pCreature);
    }

    struct boss_ambassador_flamelashAI : public ScriptedAI
    {
        boss_ambassador_flamelashAI(Creature *c) : ScriptedAI(c) {}

        uint32 FireBlast_Timer;
        uint32 Spirit_Timer;

        void Reset()
        {
            FireBlast_Timer = 2000;
            Spirit_Timer = 24000;
        }

        void EnterCombat(Unit * /*who*/) {}

        void SummonSpirits(Unit* victim)
        {
            if (Creature *Spirit = DoSpawnCreature(9178, float(irand(-9, 9)), float(irand(-9, 9)), 0, 0, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 60000))
                Spirit->AI()->AttackStart(victim);
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            //FireBlast_Timer
            if (FireBlast_Timer <= diff)
            {
                DoCast(me->getVictim(), SPELL_FIREBLAST);
                FireBlast_Timer = 7000;
            } else FireBlast_Timer -= diff;

            //Spirit_Timer
            if (Spirit_Timer <= diff)
            {
                SummonSpirits(me->getVictim());
                SummonSpirits(me->getVictim());
                SummonSpirits(me->getVictim());
                SummonSpirits(me->getVictim());

                Spirit_Timer = 30000;
            } else Spirit_Timer -= diff;

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_boss_ambassador_flamelash()
{
    new boss_ambassador_flamelash();
}