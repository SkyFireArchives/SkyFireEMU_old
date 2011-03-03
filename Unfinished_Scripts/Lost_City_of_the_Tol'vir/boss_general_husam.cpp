/*
 * Copyright (C) 2010 Zyt
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

/* ScriptData
SDName: General Husam
SD%Complete: 40%
SDComment: 
	Shockwave damage maybe not correct
	Detonate dont work properly, affect only 1 trap for now
	
SDCategory: Scripts Cata
EndScriptData */

#include "ScriptPCH.h"
#include "WorldPacket.h"

#define SAY_AGGRO				"Invaders, you shall go no further!"
#define SAY_SHOCKWAVE			"Murkash"
#define SAY_DETONATE			"Tread Lightly"

enum Spells
{	
	SPELL_BAD_INTENTIONS						= 83113,
	SPELL_SHOCKWAVE								= 83445,
	SPELL_SHOCKWAVE_DMG							= 83454,	//by this spell is caused dmg to players
	SPELL_SHOCKWAVE_DMG_H						= 90029,
	SPELL_HAMMER_FIST							= 83655,	//deals 75% of weapon damage, maybe not work
	SPELL_HAMMER_FIST_H							= 91255,
	SPELL_MYSTIC_TRAP_PLANT						= 83644,	//plant bomb to random player
	SPELL_MYSTIC_TRAP_PLANT_H					= 91252,
	SPELL_MYSTIC_TRAP_EXPLODE					= 83171,	//explode random bomb
	SPELL_MYSTIC_TRAP_EXPLODE_H					= 91259,
	SPELL_DETONATE_TRAPS						= 91263,	//detonate all traps (only HC)
	
};

enum Creatures
{
	NPC_LAND_MINE								= 44840		//trap 
};

enum Actions
{
    ACTION_DETONATE
}; 


class boss_general_husam : public CreatureScript
{
    public:
        boss_general_husam() : CreatureScript("boss_general_husam") {}

		CreatureAI* GetAI(Creature* pCreature) const
        {
            return new boss_general_husamAI(pCreature);
        }
			
        struct boss_general_husamAI : public ScriptedAI
        {
            boss_general_husamAI(Creature* pCreature) : ScriptedAI(pCreature)
			{
				m_pInstance = pCreature->GetInstanceScript();
			}

			InstanceScript* m_pInstance;
            uint32 m_uiBadIntentionsTimer;
            uint32 m_uiShockwaveTimer;
            uint32 m_uiHammerFistTimer;
            uint32 m_uiMysticTrap_PlantTimer;
            uint32 m_uiMysticTrap_DetonateTimer;
			uint32 m_uiTrapNpcId;
			bool heroic;

            void Reset()
            {
				m_uiBadIntentionsTimer = 8000;  // 15sec
				m_uiShockwaveTimer = 18000;  // 37sec
				m_uiHammerFistTimer = 5000;  // 12sec
				m_uiMysticTrap_PlantTimer = 13000; // 8sec 
				m_uiMysticTrap_DetonateTimer = 23000;  //32sec
				m_uiTrapNpcId = NPC_LAND_MINE;
				
				if (m_pInstance->instance->GetSpawnMode() == DUNGEON_DIFFICULTY_HEROIC) 
					heroic = true;
				else
					heroic = false;
            }

            void EnterCombat(Unit* pWho)
            {
				me->MonsterYell(SAY_AGGRO, LANG_UNIVERSAL, NULL);
            }
			
			Creature* GetTrap()
			{
				return Unit::GetCreature((*me),m_pInstance->GetData64(m_uiTrapNpcId));
			}

            void UpdateAI(const uint32 uiDiff)
            {
                if (!UpdateVictim())
                return;

                if (m_uiBadIntentionsTimer <= uiDiff)
                {
					if(Unit* victim = SelectUnit(SELECT_TARGET_RANDOM, 0))
						DoCast(victim, SPELL_BAD_INTENTIONS);

                    m_uiBadIntentionsTimer = 15000;
                }
                else
                    m_uiBadIntentionsTimer -= uiDiff;

                if (m_uiShockwaveTimer <= uiDiff)
                {
                    DoCastAOE(SPELL_SHOCKWAVE);
					me->MonsterYell(SAY_SHOCKWAVE, LANG_UNIVERSAL, NULL);
					//TODO: Add dmg spell
					
                    m_uiShockwaveTimer = 37000;
                }
                else
                    m_uiShockwaveTimer -= uiDiff;

                if (m_uiHammerFistTimer <= uiDiff)
                {
                    DoCast(me->getVictim(), DUNGEON_MODE(SPELL_HAMMER_FIST, SPELL_HAMMER_FIST_H));
					
                    m_uiHammerFistTimer = 12000;
                }
                else
                    m_uiHammerFistTimer -= uiDiff;
					
				if (m_uiMysticTrap_PlantTimer <= uiDiff)
                {
                    if(Unit* victim = SelectUnit(SELECT_TARGET_RANDOM, 0))
						DoCast(victim, DUNGEON_MODE(SPELL_MYSTIC_TRAP_PLANT, SPELL_MYSTIC_TRAP_PLANT_H));	
						
					m_uiMysticTrap_PlantTimer = 5000;
                }
                else
                    m_uiMysticTrap_PlantTimer -= uiDiff;
							
				if (m_uiMysticTrap_DetonateTimer <= uiDiff && heroic)
				{
					DoCast(me, SPELL_DETONATE_TRAPS);
					me->MonsterYell(SAY_DETONATE, LANG_UNIVERSAL, NULL);
					if (Creature* pTrap = GetTrap())
                        pTrap->AI()->DoAction(ACTION_DETONATE); 
					
					m_uiMysticTrap_DetonateTimer = 32000;
				}
				else
					m_uiMysticTrap_DetonateTimer -= uiDiff;
				

                DoMeleeAttackIfReady();
            }
        };
};

class npc_trap : public CreatureScript
{
    public:
        npc_trap() : CreatureScript("npc_trap") { }

        struct npc_trapAI : public ScriptedAI
        {
            npc_trapAI(Creature *pCreature) : ScriptedAI(pCreature) {}
			
			uint32 m_uiMysticTrap_ExplodeTimer;
			
			void Reset()
			{
				m_uiMysticTrap_ExplodeTimer = 4000;
			}

            void UpdateAI(const uint32 uiDiff)
            {
				if (m_uiMysticTrap_ExplodeTimer <= uiDiff)
                {
                    DoCastAOE(DUNGEON_MODE(SPELL_MYSTIC_TRAP_EXPLODE, SPELL_MYSTIC_TRAP_EXPLODE_H));
					me->DisappearAndDie();
					
                    m_uiMysticTrap_ExplodeTimer = 4000;
                }
                else
                    m_uiMysticTrap_ExplodeTimer -= uiDiff;
            }
			
			void DoAction(const int32 action)
			{
				switch(action)
				{
					case ACTION_DETONATE:
						DoCastAOE(DUNGEON_MODE(SPELL_MYSTIC_TRAP_EXPLODE, SPELL_MYSTIC_TRAP_EXPLODE_H));
						me->DisappearAndDie();
						break;
				}
			} 

		};
		
        CreatureAI* GetAI(Creature* pCreature) const
        {
            return new npc_trapAI(pCreature);
        }
};

void AddSC_boss_general_husam()
{
    new boss_general_husam();
	new npc_trap();
}
