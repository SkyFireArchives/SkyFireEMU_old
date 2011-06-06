
#include "ScriptPCH.h"
#include "throne_of_the_tides.h"

enum Yells
{
	SAY_RESET					= -1631140,
	SAY_ENTER_COMBAT			= -1631141,
	SAY_JUST_DIED				= -1631142,
	SAY_KILLED_UNIT				= -1631143,
	SAY_PHASE_START			    = -1631144,
	SAY_CHANNELING			    = -1631145,
	SAY_PHASE_INACTIVE			= -1631146,
	SAY_EVENT_SUMMON_GEYSER		= -1631147,
	SAY_EVENT_FUNGAL_SPORES		= -1631148,
	SAY_EVENT_SHOCK_BLAST		= -1631149,
	SAY_PHASE_MIDDLE		    = -1631150,
	SAY_PHASE_END				= -1631151,
};

enum Spells
{
    SPELL_SUMMON_GEYSER			= 75722,
    SPELL_GEYSER_VISUAL         = 75699,
    SPELL_GEYSER_DAMAGE         = 75700,
    SPELL_WATERSPROUT			= 75683,
    SPELL_FUNGAL_SPORES			= 76001,
    SPELL_SHOCK_BLAST_NORMAL	= 76008,
    SPELL_SHOCK_BLAST_HEROIC	= 91477,
};

enum subCreatures
{
	NPC_TEMPEST_WITCH           = 44404,
	NPC_HONOR_GUARD             = 40633,
    NPC_GEYSER                  = 40597,
};

enum LadyNazjarPhases
{
    PHASE_START                 = 1,
    PHASE_MIDDLE                = 2,
};

static const Position aSpawnLocations[3] =
{
    // Tempest Witch
    {219.0f, 830.0f, 807.638f, 0.0f},
    {219.0f, 776.0f, 807.638f, 0.0f},
    // Honor Guard
    {155.0f, 800.0f, 807.638f, 0.0f}
};
#define CENTER_X 192.451691f
#define CENTER_Y 801.971497f
#define CENTER_Z 807.638000f

class boss_lady_nazjar : public CreatureScript
{
public:
	boss_lady_nazjar() : CreatureScript("boss_lady_nazjar") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_lady_nazjarAI(pCreature);
    }

    struct boss_lady_nazjarAI : public ScriptedAI
    {
    	boss_lady_nazjarAI(Creature *c) : ScriptedAI(c), Summons(me)
        {
            //pInstance = c->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);
        }

        //InstanceScript* pInstance;
        
        SummonList Summons;

        uint32 uiPhase;
        uint32 uiSummonGeyserTimer;
        uint32 uiFungalSporesTimer;
        uint32 uiShockBlastTimer;
        uint32 uiPhaseTimer;
        uint8 uiAddsCount;

        bool Phase1;
        bool Phase2;

        void Reset()
        {
            DoScriptText(SAY_RESET, me);
            uiPhase = PHASE_START;

            Summons.DespawnAll();
            DespawnCreatures(NPC_TEMPEST_WITCH, 150.0f);
            DespawnCreatures(NPC_HONOR_GUARD, 150.0f);

            uiSummonGeyserTimer = 5000;
            uiFungalSporesTimer = 10000;
            uiAddsCount = 0;

            Phase1 = false;
            Phase2 = false;
 
            /*if (pInstance)
                pInstance->SetData(DATA_LADY_NAZJAR_EVENT, NOT_STARTED);*/
        }

        void KilledUnit(Unit* /*Victim*/)
        {
            DoScriptText(SAY_KILLED_UNIT, me);
        }

        void JustDied(Unit* /*Killer*/)
        {
            DoScriptText(SAY_JUST_DIED, me);
            Summons.DespawnAll();
            DespawnCreatures(NPC_TEMPEST_WITCH, 150.0f);
            DespawnCreatures(NPC_HONOR_GUARD, 150.0f);

            /*if (pInstance)
                pInstance->SetData(DATA_LADY_NAZJAR_EVENT, DONE);*/
        }
        
        void JustSummoned(Creature *pSummoned)
        {
            if(pSummoned->GetEntry() == (NPC_GEYSER))
                return;

            pSummoned->AI()->DoZoneInCombat();

            Summons.Summon(pSummoned);
        }

        void SummonedCreatureDespawn(Creature *summon)
        {
            switch (summon->GetEntry())
            {
                case NPC_TEMPEST_WITCH:
                case NPC_HONOR_GUARD:
                    uiAddsCount++;
                    break;
            }
            Summons.Despawn(summon);
        }

        void EnterCombat(Unit * /*who*/)
        {
            DoScriptText(SAY_ENTER_COMBAT, me);
            DoZoneInCombat();

            /*if (pInstance)
                pInstance->SetData(DATA_LADY_NAZJAR_EVENT, IN_PROGRESS);*/
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            switch(uiPhase)
            {
            case PHASE_START:
                if (uiSummonGeyserTimer <= diff)
                {
                    if(Unit *pTarget= SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_SUMMON_GEYSER);
                    uiSummonGeyserTimer = 20000;
                }
                else uiSummonGeyserTimer -= diff;

                if (uiFungalSporesTimer <= diff)
                {
                    if(Unit *pTarget= SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, SPELL_FUNGAL_SPORES);
                    uiFungalSporesTimer = 12000;
                }
                else uiFungalSporesTimer -= diff;

                if (uiShockBlastTimer <= diff)
                {
                    DoCastVictim(DUNGEON_MODE(SPELL_SHOCK_BLAST_NORMAL,SPELL_SHOCK_BLAST_HEROIC));
                    uiShockBlastTimer = 15000;
                }
                else uiShockBlastTimer -= diff;
                break;
            case PHASE_MIDDLE:
                if (uiPhaseTimer <= diff)
                {
                    uiPhase = PHASE_START;
                    me->RemoveAurasDueToSpell(SPELL_WATERSPROUT);
                    if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == POINT_MOTION_TYPE)
                        me->GetMotionMaster()->MovementExpired();
                    DoStartMovement(me->getVictim());
                    uiPhaseTimer = 60000;
                }
                else uiPhaseTimer -= diff;

                if (uiAddsCount == 3)
                {
                    uiPhase = PHASE_START;
                    me->RemoveAurasDueToSpell(SPELL_WATERSPROUT);
                    if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == POINT_MOTION_TYPE)
                        me->GetMotionMaster()->MovementExpired();
                    DoStartMovement(me->getVictim());
                    uiAddsCount = 0;
                }
                break;
            default:
                break;
            }

            // PHASE_INACTIVE invokes only here. PHASE_MIDDLE and PHASE_END will be invoke by Event timer below       
            if (uiPhase == PHASE_START && HealthBelowPct(66) && !Phase1 || (uiPhase == PHASE_START && HealthBelowPct(33) && Phase1 && !Phase2))
            {
                DoScriptText(SAY_PHASE_INACTIVE, me);
                DoTeleportTo(CENTER_X, CENTER_Y, CENTER_Z, 100);
                //me->GetMotionMaster()->MovePoint(POINT_MIDDEL, MiddleRoomLocation);
                uiPhase = PHASE_MIDDLE;
                DoCast(me, SPELL_WATERSPROUT);
			    me->SummonCreature(NPC_TEMPEST_WITCH, aSpawnLocations[0], TEMPSUMMON_CORPSE_DESPAWN);
			    me->SummonCreature(NPC_TEMPEST_WITCH, aSpawnLocations[1], TEMPSUMMON_CORPSE_DESPAWN);
			    me->SummonCreature(NPC_HONOR_GUARD, aSpawnLocations[2], TEMPSUMMON_CORPSE_DESPAWN);
                uiPhaseTimer = 60000;
                if(!Phase1)
                    Phase1 = true;
                else
                    Phase2 = true;
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

class npc_geyser : public CreatureScript
{
public:
    npc_geyser() : CreatureScript("npc_geyser") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_geyserAI(pCreature);
    }

    struct npc_geyserAI : public ScriptedAI
    {
        npc_geyserAI(Creature *c) : ScriptedAI(c){}

        uint32 uiDamageTimer;

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            uiDamageTimer = 5000;
            DoCast(me, SPELL_GEYSER_VISUAL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (uiDamageTimer <= diff)
            {
                DoCast(me, SPELL_GEYSER_DAMAGE);
                me->ForcedDespawn(1000);
                uiDamageTimer = 60000;
            }
            else uiDamageTimer -= diff;
        }
    };
};

void AddSC_boss_lady_nazjar()
{
    new boss_lady_nazjar();
    new npc_geyser();
}