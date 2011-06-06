/* ScriptData
SDName:
SDAuthor:
SDComment:
SDCategory:
EndScriptData */

#include "ScriptPCH.h"

class npc_teleporter : public CreatureScript
{
public:
    npc_teleporter() : CreatureScript("npc_teleporter") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_teleporterAI (pCreature);
    }

    struct npc_teleporterAI : public ScriptedAI
    {
        npc_teleporterAI(Creature *pCreature) : ScriptedAI(pCreature){}

        void Reset()
        {
        }

        void EnterCombat(Unit* /*who*/){}

        void KilledUnit(Unit* victim)
        {
        }

        void JustDied(Unit* /*killer*/)
        {
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };
};

void AddSC_teleporter()
{
    new npc_uznam_the_watcher;
}

