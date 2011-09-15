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
SDName: Dun_Morogh
SD%Complete: 50
SDComment: Quest support: 1783
SDCategory: Dun Morogh
EndScriptData */

/* ContentData
npc_narm_faulk
EndContentData */

#include "ScriptPCH.h"

/*######
## npc_narm_faulk
######*/

// signed for 6172
enum eNarmFaulkData
{
    SAY_HEAL = -1000187,
};

class npc_narm_faulk : public CreatureScript
{
public:
    npc_narm_faulk() : CreatureScript("npc_narm_faulk") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_narm_faulkAI (pCreature);
    }

    struct npc_narm_faulkAI : public ScriptedAI
    {
        uint32 lifeTimer;
        bool spellHit;

        npc_narm_faulkAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        {
            lifeTimer = 120000;
            me->SetUInt32Value(UNIT_DYNAMIC_FLAGS, UNIT_DYNFLAG_DEAD);
            me->SetStandState(UNIT_STAND_STATE_DEAD);
            spellHit = false;
        }

        void EnterCombat(Unit * /*who*/)
        {
        }

        void MoveInLineOfSight(Unit * /*who*/)
        {
            return;
        }

        void UpdateAI(const uint32 diff)
        {
           if (me->IsStandState())
            {
                if (lifeTimer <= diff)
                {
                    EnterEvadeMode();
                    return;
                }
                else
                    lifeTimer -= diff;
            }
        }

        void SpellHit(Unit * /*Hitter*/, const SpellEntry *Spellkind)
        {
            if (Spellkind->Id == 8593 && !spellHit)
            {
                DoCast(me, 32343);
                me->SetStandState(UNIT_STAND_STATE_STAND);
                me->SetUInt32Value(UNIT_DYNAMIC_FLAGS, 0);
                //me->RemoveAllAuras();
                DoScriptText(SAY_HEAL, me);
                spellHit = true;
            }
        }
    };
};

/*######
## npc_gs_9x_multi_bot
######*/

enum eMultiBotData
{
    OBJECT_TOXIC_POOL = 203975,
    SPELL_CLEAN_UP_TOXIC_POOL = 79424,
    SPELL_TOXIC_POOL_CREDIT_TO_MASTER = 79422,
    SAY_MULTI_BOT = -1610001
};

class npc_gs_9x_multi_bot : public CreatureScript
{
public:
    npc_gs_9x_multi_bot() : CreatureScript("npc_gs_9x_multi_bot") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_gs_9x_multi_botAI (creature);
    }

    struct npc_gs_9x_multi_botAI : public ScriptedAI
    {
        npc_gs_9x_multi_botAI(Creature* c): ScriptedAI(c) { }

        void UpdateAI(const uint32 /*diff*/)
        {
            GameObject* pool = me->FindNearestGameObject(OBJECT_TOXIC_POOL, 2.0f);

            if (pool)
            {
                if (Player* player = me->GetCharmerOrOwnerPlayerOrPlayerItself())
                {
                    me->Say(SAY_MULTI_BOT, LANG_UNIVERSAL, 0);
                    me->CastSpell(me, SPELL_CLEAN_UP_TOXIC_POOL, true);
                    me->CastSpell(player, SPELL_TOXIC_POOL_CREDIT_TO_MASTER, true);
                    pool->Delete();
                }
            }
        }
    };
};

void AddSC_dun_morogh()
{
    new npc_narm_faulk();
    new npc_gs_9x_multi_bot();
}