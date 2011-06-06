/* Copyright (C) 2011 Acheron-network <www.acheron-network.de>
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

#include "ScriptPCH.h"

/*enum Yells
{
    // Todo
};*/

enum Spells
{
    SPELL_DAMPENING_WAVE        = 92650,
    SPELL_CRYSTAL_BARRAGE       = 86881,
};

enum Creatures
{
    // Todo
};

class boss_corborus : public CreatureScript
{
public:
    boss_corborus() : CreatureScript("boss_corborus") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_corborusAI(pCreature);
    }

    struct boss_corborusAI : public ScriptedAI
    {
        boss_corborusAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;

        uint32 uiDampeningWave;
        uint32 uiCrystalBarrage;

        void Reset()
        {
            uiDampeningWave = 5000;
            uiCrystalBarrage = 10000;
        }

        void KilledUnit(Unit* /*Victim*/) {}

        void JustDied(Unit* /*Killer*/)
        {
        }
      
        void EnterCombat(Unit * /*who*/)
        {
            DoZoneInCombat();
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (uiDampeningWave <= diff)
            {
                DoCastAOE(SPELL_DAMPENING_WAVE);
                uiDampeningWave = urand(10000, 15000);
            } else uiDampeningWave -= diff;

            if (uiCrystalBarrage <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, SPELL_CRYSTAL_BARRAGE);
                uiCrystalBarrage = urand(15000, 20000);
            } else uiCrystalBarrage -= diff;

            DoMeleeAttackIfReady();
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_pCreatures;
            GetCreatureListWithEntryInGrid(m_pCreatures, me, entry, distance);
     
            if (m_pCreatures.empty())
            return;
     
            for(std::list<Creature*>::iterator iter = m_pCreatures.begin(); iter != m_pCreatures.end(); ++iter)
            (*iter)->DespawnOrUnsummon();
        }
    };
};

void AddSC_boss_corborus()
{
    new boss_corborus();
}