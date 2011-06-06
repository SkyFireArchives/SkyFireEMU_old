
#include "ScriptPCH.h"
#include "throne_of_the_tides.h"

/*enum Yells
{
};*/

enum Spells
{
    SPELL_DARK_FISSURE_N        = 76047,
    SPELL_DARK_FISSURE_H        = 96311,
    SPELL_CURSE_OF_FATIGUE      = 76094,
    SPELL_ENRAGE                = 76100,
    SPELL_SQUEEZE_N             = 76026,
    SPELL_SQUEEZE_H             = 91484,

    // Dark Fissuer
    SPELL_DARK_FISSUR_DAMAGE_N  = 76066,
    SPELL_DARK_FISSUR_DAMAGE_H  = 91371,
};

enum Events
{
    EVENT_NONE                  = 0,
    EVENT_DARK_FISSURE          = 1,
    EVENT_CURSE_OF_FATIGUE      = 2,
    EVENT_QUEEZE                = 3,
};

enum subCreatures
{
    NPC_DARK_FISSURE            = 40784,
};

class boss_commander_ulthok : public CreatureScript
{
public:
    boss_commander_ulthok() : CreatureScript("boss_commander_ulthok") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_commander_ulthokAI(pCreature);
    }

    struct boss_commander_ulthokAI : public ScriptedAI
    {
        boss_commander_ulthokAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        EventMap events;

        void Reset()
        {
            events.Reset();

            events.RescheduleEvent(EVENT_DARK_FISSURE, 10000);
            events.RescheduleEvent(EVENT_CURSE_OF_FATIGUE, 20000);
            events.RescheduleEvent(EVENT_QUEEZE, 15000);

            //DespawnCreatures(NPC_DARK_FISSURE, 100f);
        }

        void KilledUnit(Unit* /*Victim*/){}

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

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                case EVENT_DARK_FISSURE:
                    DoCastVictim(DUNGEON_MODE(SPELL_DARK_FISSURE_N, SPELL_DARK_FISSURE_H));
                    events.ScheduleEvent(EVENT_DARK_FISSURE, 60000);
                    return;
                case EVENT_CURSE_OF_FATIGUE:
                    if (Unit *pTarget = SelectUnit(SELECT_TARGET_RANDOM, 0))
                        DoCast(pTarget, SPELL_CURSE_OF_FATIGUE);
                    events.ScheduleEvent(EVENT_CURSE_OF_FATIGUE, 10000);
                    return;
                case EVENT_QUEEZE:
                    if (Unit *pTarget = SelectUnit(SELECT_TARGET_RANDOM, 0))
                        DoCast(pTarget, DUNGEON_MODE(SPELL_SQUEEZE_N, SPELL_SQUEEZE_H));
                    events.ScheduleEvent(EVENT_QUEEZE, 25000);
                    return;
                }
            }

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

class npc_ulthok_dark_fissure : public CreatureScript
{
public:
    npc_ulthok_dark_fissure() : CreatureScript("npc_ulthok_dark_fissure") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_ulthok_dark_fissureAI(pCreature);
    }

    struct npc_ulthok_dark_fissureAI : public ScriptedAI
    {
        npc_ulthok_dark_fissureAI(Creature *c) : ScriptedAI(c){}

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            DoCast(me, DUNGEON_MODE(SPELL_DARK_FISSUR_DAMAGE_N, SPELL_DARK_FISSUR_DAMAGE_H));
        }

        void UpdateAI(const uint32 diff)
        {
        }
    };
};

void AddSC_boss_commander_ulthok()
{
    new boss_commander_ulthok();
    new npc_ulthok_dark_fissure();
}