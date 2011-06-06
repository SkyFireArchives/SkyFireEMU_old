/*
 * Copyright (C) 2008-2011 TrinityCore <http://www.trinitycore.org/>
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
 * Comment:  Find correct mushrooms spell to make them visible - buffs of the mushrooms not ever applied to the users...
 */

#include "ScriptPCH.h"
#include "ahnkahet.h"

enum Spells
{
    SPELL_BASH                                    = 57094, // Victim
    SPELL_ENTANGLING_ROOTS                        = 57095, // Random Victim 100Y
    SPELL_MINI                                    = 57055, // Self
    SPELL_VENOM_BOLT_VOLLEY                       = 57088, // Random Victim 100Y
    SPELL_HEALTHY_MUSHROOM_POTENT_FUNGUS          = 56648, // Killer 3Y
    SPELL_POISONOUS_MUSHROOM_POISON_CLOUD         = 57061, // Self - Duration 8 Sec
    SPELL_POISONOUS_MUSHROOM_VISUAL_AREA          = 61566, // Self
    SPELL_POISONOUS_MUSHROOM_VISUAL_AURA          = 56741, // Self
    SPELL_POWER_MUSHROOM_VISUAL_AURA              = 56740,
    SPELL_PUTRID_MUSHROOM                         = 31690
};

enum Creatures
{
    NPC_HEALTHY_MUSHROOM                          = 30391,
    NPC_POISONOUS_MUSHROOM                        = 30435,
    NPC_HELPER                                    = 19656
};

class boss_amanitar : public CreatureScript
{
public:
    boss_amanitar() : CreatureScript("boss_amanitar") { }

    struct boss_amanitarAI : public ScriptedAI
    {
        boss_amanitarAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
            bFirstTime = true;
        }

        void Reset()
        {
            RootTimer = urand(5*IN_MILLISECONDS, 9*IN_MILLISECONDS);
            BashTimer = urand(10*IN_MILLISECONDS, 14*IN_MILLISECONDS);
            BoltTimer = urand(15*IN_MILLISECONDS, 20*IN_MILLISECONDS);
            MiniTimer = urand(12*IN_MILLISECONDS, 18*IN_MILLISECONDS);
            SpawnTimer = 5*IN_MILLISECONDS;

            me->SetMeleeDamageSchool(SPELL_SCHOOL_NATURE);
            me->ApplySpellImmune(0, IMMUNITY_SCHOOL, SPELL_SCHOOL_MASK_NATURE, true);

            if (pInstance)
            {
                DoRemoveAurasDueToSpellOnPlayersAndPets(SPELL_MINI);

                if (!bFirstTime)
                    pInstance->SetData(DATA_AMANITAR_EVENT, FAIL);
                else
                    bFirstTime = false;
            }
        }

        void JustDied(Unit * /*Killer*/)
        {
            if (pInstance)
            {
                pInstance->SetData(DATA_AMANITAR_EVENT, DONE);
                DoRemoveAurasDueToSpellOnPlayersAndPets(SPELL_MINI);
            }
        }

        void DoRemoveAurasDueToSpellOnPlayersAndPets(uint32 spell)
        {
            if (!pInstance)
                return;

            Map::PlayerList const &PlayerList = pInstance->instance->GetPlayers();

            if (!PlayerList.isEmpty())
                for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                    if (Player* pPlayer = i->getSource())
                    {
                        pPlayer->RemoveAurasDueToSpell(spell);

                        if (Pet* pPet = pPlayer->GetPet())
                            pPet->RemoveAurasDueToSpell(spell);
                    }
        }

        void EnterCombat(Unit * /*who*/)
        {
            if (pInstance)
                pInstance->SetData(DATA_AMANITAR_EVENT, IN_PROGRESS);
        }

        void SpawnAdds()
        {
            uint8 u = 0;

            for (uint8 i = 0; i < 100; ++i)
            {
                Position pos;
                me->GetPosition(&pos);
                me->GetRandomNearPosition(pos, 45.0f);
                if (Creature* pHelp = me->SummonCreature(NPC_HELPER, pos, TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 1*IN_MILLISECONDS))
                {
                    Creature* temp1 = pHelp->FindNearestCreature(NPC_HEALTHY_MUSHROOM, 5.0f, true);
                    Creature* temp2 = pHelp->FindNearestCreature(NPC_POISONOUS_MUSHROOM, 5.0f, true);
                    if (temp1 || temp2)
                    {
                        pHelp->DisappearAndDie();
                    }
                    else  // found good place to spawn
                    {
                        u = 1 - u;
                        pHelp->DisappearAndDie();
                        me->SummonCreature(u > 0 ? NPC_POISONOUS_MUSHROOM : NPC_HEALTHY_MUSHROOM, pos, TEMPSUMMON_CORPSE_DESPAWN, 3*IN_MILLISECONDS);
                    }
                }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (SpawnTimer <= diff)
            {
                SpawnAdds();
                SpawnTimer = 20*IN_MILLISECONDS;
            } else SpawnTimer -= diff;


            if (MiniTimer <= diff)
            {
                if(!me->IsNonMeleeSpellCasted(false))
                {
                    DoCast(SPELL_MINI);
                    MiniTimer = urand(25*IN_MILLISECONDS, 30*IN_MILLISECONDS);
                }
            } else MiniTimer -= diff;

            if (RootTimer <= diff)
            {
                if(!me->IsNonMeleeSpellCasted(false))
                {
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_ENTANGLING_ROOTS);
                    RootTimer = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
                }
            } else RootTimer -= diff;

            if (BashTimer <= diff)
            {
                if(!me->IsNonMeleeSpellCasted(false))
                {
                    DoCastVictim(SPELL_BASH);
                    BashTimer = urand(7*IN_MILLISECONDS, 12*IN_MILLISECONDS);
                }
            } else BashTimer -= diff;

            if (BoltTimer <= diff)
            {
                if(!me->IsNonMeleeSpellCasted(false))
                {
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_VENOM_BOLT_VOLLEY);
                    BoltTimer = urand(18*IN_MILLISECONDS, 22*IN_MILLISECONDS);
                }
            } else BoltTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;
        uint32 RootTimer;
        uint32 BashTimer;
        uint32 BoltTimer;
        uint32 SpawnTimer;
        uint32 MiniTimer;
        bool bFirstTime;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new boss_amanitarAI(creature);
    }
};

class mob_amanitar_mushrooms : public CreatureScript
{
public:
    mob_amanitar_mushrooms() : CreatureScript("mob_amanitar_mushrooms") { }

    struct mob_amanitar_mushroomsAI : public Scripted_NoMovementAI
    {
        mob_amanitar_mushroomsAI(Creature* c) : Scripted_NoMovementAI(c) {}

        void Reset()
        {
            me->SetDisplayId(26981);
            DoCast(SPELL_PUTRID_MUSHROOM); // Hack, to make the mushrooms visible, can't find orig. spell...

            if (me->GetEntry() == NPC_POISONOUS_MUSHROOM)
                DoCast(SPELL_POISONOUS_MUSHROOM_VISUAL_AURA);
            else
                DoCast(SPELL_POWER_MUSHROOM_VISUAL_AURA);

            AuraTimer = 1*IN_MILLISECONDS;
            DeathTimer = 30*IN_MILLISECONDS;
        }

        void JustDied(Unit *killer)
        {
            if (me->GetEntry() == NPC_HEALTHY_MUSHROOM)
                DoCast(me, SPELL_HEALTHY_MUSHROOM_POTENT_FUNGUS, true);
        }

        void EnterCombat(Unit * /*who*/) {}
        void AttackStart(Unit * /*victim*/) {}

        void UpdateAI(const uint32 diff)
        {
            if (me->GetEntry() == NPC_POISONOUS_MUSHROOM)
            {
                if (AuraTimer <= diff)
                {
                    DoCast(me, SPELL_POISONOUS_MUSHROOM_POISON_CLOUD, false);
                    AuraTimer = 7*IN_MILLISECONDS;
                } else AuraTimer -= diff;
            }

            if (DeathTimer <= diff)
                me->DisappearAndDie();
            else DeathTimer -= diff;
        }

    private:
        uint32 AuraTimer;
        uint32 DeathTimer;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new mob_amanitar_mushroomsAI(creature);
    }
};

void AddSC_boss_amanitar()
{
    new boss_amanitar;
    new mob_amanitar_mushrooms;
}