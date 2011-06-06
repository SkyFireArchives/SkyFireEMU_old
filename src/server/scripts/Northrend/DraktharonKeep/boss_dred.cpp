/*
 * Copyright (C) 2008-2010 TrinityCore <http://www.trinitycore.org/>
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

/*
 * Comment: MAYBE need more improve the "Raptor Call".
 */

#include "ScriptPCH.h"
#include "drak_tharon_keep.h"

enum eSpells
{
    SPELL_BELLOWING_ROAR                          = 22686, // fears the group, can be resisted/dispelled
    SPELL_GRIEVOUS_BITE                           = 48920,
    SPELL_MANGLING_SLASH                          = 48873, //casted on the current tank, adds debuf
    SPELL_FEARSOME_ROAR                           = 48849,
    H_SPELL_FEARSOME_ROAR                         = 59422, //Not stacking, debuff
    SPELL_PIERCING_SLASH                          = 48878, //debuff -->Armor reduced by 75%
    SPELL_RAPTOR_CALL                             = 59416, //dummy
    SPELL_GUT_RIP                                 = 49710,
    SPELL_REND                                    = 13738
};

enum eArchivements
{
    ACHIEV_BETTER_OFF_DRED                        = 2039
};

enum Creatures
{
    NPC_RAPTOR_1                                  = 26641,
    NPC_RAPTOR_2                                  = 26628
};

#define EMOTE_CLAW                                -1574026

class boss_dred : public CreatureScript
{
public:
    boss_dred() : CreatureScript("boss_dred") { }

    struct boss_dredAI : public ScriptedAI
    {
        boss_dredAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            if (pInstance)
            {
                pInstance->SetData(DATA_DRED_EVENT,NOT_STARTED);
                pInstance->SetData(DATA_KING_DRED_ACHIEV, 0);
            }

            BellowingRoarTimer = 33*IN_MILLISECONDS;
            GrievousBiteTimer  = 20*IN_MILLISECONDS;
            ManglingSlashTimer = 18500;
            FearsomeRoarTimer  = urand(10*IN_MILLISECONDS,20*IN_MILLISECONDS);
            PiercingSlashTimer = 17*IN_MILLISECONDS;
            RaptorCallTimer    = urand(20*IN_MILLISECONDS,25*IN_MILLISECONDS);
            me->SetReactState(REACT_PASSIVE);
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_DRED_EVENT,IN_PROGRESS);

            me->SetReactState(REACT_AGGRESSIVE);
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (BellowingRoarTimer < diff)
            {
                DoCastAOE(SPELL_BELLOWING_ROAR, false);
                BellowingRoarTimer = 40*IN_MILLISECONDS;
            } else BellowingRoarTimer -=diff;

            if (GrievousBiteTimer < diff)
            {
                DoCastVictim(SPELL_GRIEVOUS_BITE ,false);
                GrievousBiteTimer = 20*IN_MILLISECONDS;
            } else GrievousBiteTimer -=diff;

            if (ManglingSlashTimer < diff)
            {
                DoCastVictim(SPELL_MANGLING_SLASH,false);
                ManglingSlashTimer = 20*IN_MILLISECONDS;
            } else ManglingSlashTimer -=diff;

            if (FearsomeRoarTimer < diff)
            {
                DoCastAOE(SPELL_FEARSOME_ROAR,false);
                FearsomeRoarTimer = urand(15*IN_MILLISECONDS,16*IN_MILLISECONDS);
            } else FearsomeRoarTimer -=diff;

            if (PiercingSlashTimer < diff)
            {
                DoScriptText(EMOTE_CLAW, me);
                DoCastVictim(SPELL_PIERCING_SLASH,false);
                PiercingSlashTimer = 18*IN_MILLISECONDS;
            } else PiercingSlashTimer -=diff;

            if (RaptorCallTimer < diff)
            {
                DoCastVictim(SPELL_RAPTOR_CALL,false);

                float x,y,z;

                me->GetClosePoint(x,y,z,me->GetObjectSize()/3,10.0f);
                me->SummonCreature(RAND(NPC_RAPTOR_1,NPC_RAPTOR_2),x,y,z,0,TEMPSUMMON_DEAD_DESPAWN,1*IN_MILLISECONDS);

                RaptorCallTimer = urand(20*IN_MILLISECONDS,25*IN_MILLISECONDS);
            } else RaptorCallTimer -=diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            if (pInstance)
            {
                pInstance->SetData(DATA_DRED_EVENT,DONE);

                if (IsHeroic() && pInstance->GetData(DATA_KING_DRED_ACHIEV) == 6)
                    pInstance->DoCompleteAchievement(ACHIEV_BETTER_OFF_DRED);
            }
        }

    private:
        uint32 BellowingRoarTimer;
        uint32 GrievousBiteTimer;
        uint32 ManglingSlashTimer;
        uint32 FearsomeRoarTimer;
        uint32 PiercingSlashTimer;
        uint32 RaptorCallTimer;
        InstanceScript* pInstance;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new boss_dredAI(creature);
    }
};

class npc_drakkari_gutripper : public CreatureScript
{
public:
    npc_drakkari_gutripper() : CreatureScript("npc_drakkari_gutripper") { }

    struct npc_drakkari_gutripperAI : public ScriptedAI
    {
        npc_drakkari_gutripperAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            GutRipTimer = urand(10000,15000);
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (GutRipTimer < diff)
            {
                DoCastVictim(SPELL_GUT_RIP,false);
                GutRipTimer = urand(10000,15000);
            }else GutRipTimer -=diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            if (pInstance)
            {
                if (IsHeroic() && pInstance->GetData(DATA_DRED_EVENT) == IN_PROGRESS && pInstance->GetData(DATA_KING_DRED_ACHIEV) < 6)
                {
                    pInstance->SetData(DATA_KING_DRED_ACHIEV, pInstance->GetData(DATA_KING_DRED_ACHIEV) + 1);
                }
            }
        }

    private:
        InstanceScript* pInstance;
        uint32 GutRipTimer;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_drakkari_gutripperAI(creature);
    }
};

class npc_drakkari_scytheclaw : public CreatureScript
{
public:
    npc_drakkari_scytheclaw() : CreatureScript("npc_drakkari_scytheclaw") { }

    struct npc_drakkari_scytheclawAI : public ScriptedAI
    {
        npc_drakkari_scytheclawAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            RendTimer = urand(10*IN_MILLISECONDS,15*IN_MILLISECONDS);
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (RendTimer < diff)
            {
                DoCastVictim(SPELL_REND,false);
                RendTimer = urand(10*IN_MILLISECONDS,15*IN_MILLISECONDS);
            }else RendTimer -=diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            if (pInstance)
            {
                if (IsHeroic() && pInstance->GetData(DATA_DRED_EVENT) == IN_PROGRESS && pInstance->GetData(DATA_KING_DRED_ACHIEV) < 6)
                {
                    pInstance->SetData(DATA_KING_DRED_ACHIEV, pInstance->GetData(DATA_KING_DRED_ACHIEV) + 1);
                }
            }
        }

    private:
        InstanceScript* pInstance;
        uint32 RendTimer;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_drakkari_scytheclawAI(creature);
    }
};

void AddSC_boss_dred()
{
    new npc_drakkari_gutripper;
    new npc_drakkari_scytheclaw;
    new boss_dred;
}
