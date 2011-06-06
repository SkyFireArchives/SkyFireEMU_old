#include "ScriptPCH.h"
#include "halls_of_reflection.h"
#include "ScriptedEscortAI.h"

enum Spells
{
    SPELL_WINTER                       = 69780,
    SPELL_FURY_OF_FROSTMOURNE          = 70063,
    SPELL_SOUL_REAPER                  = 73797,
    SPELL_RAISE_DEAD                   = 69818,
    SPELL_ICE_PRISON                   = 69708,
    SPELL_DARK_ARROW                   = 70194,
    SPELL_EMERGE_VISUAL                = 50142,
    SPELL_DESTROY_ICE_WALL_02          = 70224, 
    SPELL_SILENCE                      = 69413,
    SPELL_LICH_KING_CAST               = 57561,
    SPELL_FROSTMOURNE_VISUAL           = 73220,

    SPELL_COURSE_OF_DOOM               = 70144,
    SPELL_SHADOW_BOLT_VALLEY           = 70145,
    SPELL_SHADOW_BOLT_N                = 70080,
    SPELL_SHADOW_BOLT_H                = 70182,

    SPELL_ABON_STRIKE                  = 40505,
    N_SPELL_VOMIT_SPRAY                = 70176,
    H_SPELL_VPMIT_SPRAY                = 70181,
    SPELL_VOMIT_VISUAL                 = 70180,

    SPELL_GNOUL_JUMP                   = 70150,
};


enum Yells
{
    SAY_LICH_KING_WALL_01              = -1594486,
    SAY_LICH_KING_WALL_02              = -1594491,
    SAY_LICH_KING_GNOUL                = -1594482,
    SAY_LICH_KING_ABON                 = -1594483,
    SAY_LICH_KING_WINTER               = -1594481,
    SAY_LICH_KING_END_DUN              = -1594504, 
    SAY_LICH_KING_WIN                  = -1594485,
};

class boss_lich_king_hor : public CreatureScript
{
public:
    boss_lich_king_hor() : CreatureScript("boss_lich_king_hor") { }

    struct boss_lich_king_horAI : public npc_escortAI
    {
        boss_lich_king_horAI(Creature *pCreature) : npc_escortAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }
 
        void Reset()
        { 
            if(!pInstance)
                return;

            bNonFight = false;
            bStartEscort = false;
            me->setActive(true);
            SetEscortPaused(false);
            SetEquipmentSlots(false, 49706, 0);
        }

        void JustDied(Unit* pKiller) { }

        void WaypointReached(uint32 i)
        {
            switch(i)
            {
            case 20:
                SetEscortPaused(true);
                bFinish = true;
                DoCast(me, SPELL_LICH_KING_CAST);
                pInstance->SetData(TYPE_LICH_KING, SPECIAL);
                DoScriptText(SAY_LICH_KING_END_DUN, me);
                if(Creature* pLider = ((Creature*)Unit::GetUnit((*me), pInstance->GetData64(DATA_ESCAPE_LIDER))))
                {   
                    pLider->SendMonsterMove(pLider->GetPositionX(), pLider->GetPositionY(), pLider->GetPositionZ() + 4, VICTIMSTATE_HIT, pLider->isInCombat(), 3000);
                }
                me->setActive(false);
                break;
            }
        }

        void AttackStart(Unit* who) 
        { 
            if (!pInstance || !who)
                return;

            if (bNonFight)
                return;

            if(pInstance->GetData(TYPE_LICH_KING) == IN_PROGRESS || who->GetTypeId() == TYPEID_PLAYER)
                return;

            npc_escortAI::AttackStart(who);
        }

        void DespawnCreatures(uint32 entry, float distance, bool discs = false)
        {
            std::list<Creature*> m_pCreatures;
            GetCreatureListWithEntryInGrid(m_pCreatures, me, entry, distance);

            if (m_pCreatures.empty())
                return;

            for(std::list<Creature*>::iterator iter = m_pCreatures.begin(); iter != m_pCreatures.end(); ++iter)
                (*iter)->ForcedDespawn();
        }

        void JustSummoned(Creature* summoned)
        {
            if(!pInstance || !summoned)
                return;

            summoned->SetPhaseMask(65535, true);
            summoned->AI->()->DoZoneInCombat();
            summoned->setActive(true);

            pInstance->SetData(DATA_SUMMONS, 1);

            if (Unit* pLider = Unit::GetUnit((*me), pInstance->GetData64(DATA_ESCAPE_LIDER)))
            {
                summoned->AI()->DoZoneInCombat();
                summoned->AI()->AttackStart(pLider);
            }
        }

        void CallGuard(uint32 GuardID)
        {
            me->SummonCreature(GuardID,(me->GetPositionX()-5)+rand()%10, (me->GetPositionY()-5)+rand()%10, me->GetPositionZ(),4.17f,TEMPSUMMON_TIMED_OR_DEAD_DESPAWN,360000);
        }

        void Wall01()
        {
            switch(Step)
            {
                case 0:
                    SetEscortPaused(true);
                    pInstance->SetData(DATA_SUMMONS, 3);
                    DoScriptText(SAY_LICH_KING_WALL_01, me);
                    DoCast(me, SPELL_DESTROY_ICE_WALL_02);
                    StepTimer = 4000;
                    ++Step;
                    break;
                case 1:
                    DoCast(me, SPELL_RAISE_DEAD);
                    DoScriptText(SAY_LICH_KING_GNOUL, me);
                    StepTimer = 7000;
                    ++Step;
                    break;
                case 2:
                    DoCast(me, SPELL_WINTER);
                    DoScriptText(SAY_LICH_KING_WINTER, me);
                    me->SetSpeed(MOVE_WALK, 1.1f, true);
                    StepTimer = 1000;
                    ++Step;
                    break;
                case 3:
                    SetEscortPaused(false);
                    StepTimer = 2000;
                    ++Step;
                    break;
                case 4:
                    CallGuard(NPC_RISEN_WITCH_DOCTOR);
                    pInstance->SetData(TYPE_ICE_WALL_01, DONE);
                    StepTimer = 100;
                    Step = 0;
                    break;
            }
        }

        void Wall02()
        { 
            switch(Step)
            {
                case 0:
                    pInstance->SetData(DATA_SUMMONS, 3);
                    SetEscortPaused(true);
                    StepTimer = 1500;
                    ++Step;
                    break;
                case 1:
                    for (uint32 i = 0; i < 8; ++i)
                        CallGuard(NPC_GHOUL);
                    DoCast(me, SPELL_RAISE_DEAD);
                    DoScriptText(SAY_LICH_KING_GNOUL, me);
                    StepTimer = 8500;
                    ++Step;
                    break;
                case 2:
                    SetEscortPaused(false);
                    for (uint32 i = 0; i < 2; ++i)
                        CallGuard(NPC_RISEN_WITCH_DOCTOR);
                    CallGuard(NPC_ABON);
                    pInstance->SetData(TYPE_ICE_WALL_02, DONE);
                    StepTimer = 100;
                    Step = 0;
                    break;
            }
        }

        void Wall03()
        {
            switch(Step)
            {
                case 0:
                    pInstance->SetData(DATA_SUMMONS, 3);
                    SetEscortPaused(true);
                    StepTimer = 1500;
                    ++Step;
                    break;
                case 1:
                    for (uint32 i = 0; i < 8; ++i)
                        CallGuard(NPC_GHOUL);
                    DoCast(me, SPELL_RAISE_DEAD);
                    DoScriptText(SAY_LICH_KING_GNOUL, me);
                    StepTimer = 8500;
                    ++Step;
                    break;
                case 2:
                    SetEscortPaused(false);
                    DoScriptText(SAY_LICH_KING_ABON, me);
                    for (uint32 i = 0; i < 3; ++i)
                        CallGuard(NPC_RISEN_WITCH_DOCTOR);
                    for (uint32 i = 0; i < 2; ++i)
                        CallGuard(NPC_ABON);
                    pInstance->SetData(TYPE_ICE_WALL_03, DONE);
                    StepTimer = 100;
                    Step = 0;
                    break;
            }
        }

        void Wall04()
        {
            switch(Step)
            {
                case 0:
                    pInstance->SetData(DATA_SUMMONS, 3);
                    SetEscortPaused(true);
                    StepTimer = 1500;
                    ++Step;
                    break;
                case 1:
                    DoScriptText(SAY_LICH_KING_GNOUL, me);
                    for (uint32 i = 0; i < 8; ++i)
                        CallGuard(NPC_GHOUL);
                    DoCast(me, SPELL_RAISE_DEAD);
                    StepTimer = 8500;
                    ++Step;
                    break;
                case 2:
                    SetEscortPaused(false);
                    for (uint32 i = 0; i < 3; ++i)
                        CallGuard(NPC_RISEN_WITCH_DOCTOR);
                    for (uint32 i = 0; i < 2; ++i)
                        CallGuard(NPC_ABON);
                    StepTimer = 15000;
                    ++Step;
                    break;
                case 3:
                    DoScriptText(SAY_LICH_KING_ABON, me);
                    for (uint32 i = 0; i < 8; ++i)
                        CallGuard(NPC_GHOUL);
                    for (uint32 i = 0; i < 2; ++i)
                        CallGuard(NPC_RISEN_WITCH_DOCTOR);
                    pInstance->SetData(TYPE_ICE_WALL_04, DONE);
                    ++Step;
                    break;        
            }
        }

        void KilledPlayer()
        {
            if (Map* pMap = me->GetMap())
                if (pMap->IsDungeon())
                {
                    Map::PlayerList const &PlayerList = pMap->GetPlayers();

                    if (!PlayerList.isEmpty())
                        for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                            if (i->getSource() && i->getSource()->isAlive())
                                me->Kill(i->getSource());
                }
        }

        void UpdateEscortAI(const uint32 diff)
        {
            if(!pInstance)
                return;

            if(pInstance->GetData(TYPE_LICH_KING) != IN_PROGRESS)
            {
                if (!UpdateVictim())
                    return;

                DoMeleeAttackIfReady();
            }

            if(me->isInCombat() && pInstance->GetData(TYPE_LICH_KING) == IN_PROGRESS)
            {
                npc_escortAI::EnterEvadeMode();
            }

            if(pInstance->GetData(TYPE_LICH_KING) == IN_PROGRESS && bStartEscort != true)
            {
                bStartEscort = true;
                me->RemoveAurasDueToSpell(SPELL_ICE_PRISON);
                me->RemoveAurasDueToSpell(SPELL_DARK_ARROW);
                me->setActive(true);
                bNonFight = true;
                me->AttackStop();
                me->SetSpeed(MOVE_WALK, 2.5f, true);
                Start(false, false);
                Step = 0;
                StepTimer = 100;
            }

            if (Creature* pLider = ((Creature*)Unit::GetUnit((*me), pInstance->GetData64(DATA_ESCAPE_LIDER))))
            {
                if (pLider->IsWithinDistInMap(me, 2.0f)) 
                {
                    me->setActive(false);
                    SetEscortPaused(true);
                    npc_escortAI::EnterEvadeMode();
                    DoScriptText(SAY_LICH_KING_WIN, me);
                    me->DealDamage(pLider, pLider->GetHealth(), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
                    KilledPlayer();
                    me->Kill(me);
                    me->Respawn();
                    pInstance->SetData(TYPE_LICH_KING, FAIL);
                    pInstance->SetData(TYPE_PHASE, 3);
                    DespawnCreatures(NPC_ABON, 10000);
                    DespawnCreatures(NPC_RISEN_WITCH_DOCTOR, 10000);
                    DespawnCreatures(NPC_GHOUL, 10000);
                }
            }

            if(pInstance->GetData(TYPE_ICE_WALL_01) == IN_PROGRESS)
            {
                if(StepTimer < diff)
                    Wall01();
                else StepTimer -= diff;
            }

            if(pInstance->GetData(TYPE_ICE_WALL_02) == IN_PROGRESS)
            {
                if(StepTimer < diff)
                    Wall02();
                else StepTimer -= diff;
            }

            if(pInstance->GetData(TYPE_ICE_WALL_03) == IN_PROGRESS)
            {
                if(StepTimer < diff)
                    Wall03();
                else StepTimer -= diff;
            }

            if(pInstance->GetData(TYPE_ICE_WALL_04) == IN_PROGRESS)
            {
                if(StepTimer < diff)
                    Wall04();
                else StepTimer -= diff;
            }
            return;
        }

    private:
        InstanceScript* pInstance;
        uint32 Step;
        uint32 StepTimer;
        bool bStartEscort;
        bool bIceWall01;
        bool bNonFight;
        bool bFinish;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_lich_king_horAI(pCreature);
    }
};

class npc_raging_gnoul : public CreatureScript
{
public:
    npc_raging_gnoul() : CreatureScript("npc_raging_gnoul") { }

    struct npc_raging_gnoulAI : public ScriptedAI
    {
        npc_raging_gnoulAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;

        uint32 uiJumpTimer;
        bool Jump;

        void Reset()
        { 
            Jump = false;
            uiJumpTimer = 2000;
            me->setFaction(16);
        }

        void JustDied(Unit* pKiller)
        {
            if(!pInstance)
                return;

            pInstance->SetData(DATA_SUMMONS, 0);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(uiJumpTimer < diff && !Jump)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                {
                    if (me->IsInRange(pTarget,10.0f,30.0f,false))
                        DoCast(pTarget, SPELL_GNOUL_JUMP);
                    Jump = true;
                }
                else uiJumpTimer = 1000;    
            }
            else
                uiJumpTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_raging_gnoulAI(pCreature);
    }

};

class npc_risen_witch_doctor : public CreatureScript
{
public:
    npc_risen_witch_doctor() : CreatureScript("npc_risen_witch_doctor") { }

    struct npc_risen_witch_doctorAI : public ScriptedAI
    {
        npc_risen_witch_doctorAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;

        uint32 uiCourseOfDoomTimer;
        uint32 uiShadowBoltValleyTimer;
        uint32 uiShadowBoltTimer;

        void Reset()
        { 
            uiCourseOfDoomTimer = 5000;
            uiShadowBoltValleyTimer = 15000;
            uiShadowBoltTimer = 15000;
        }

        void JustDied(Unit* pKiller)
        {
            if(!pInstance)
                return; 

            pInstance->SetData(DATA_SUMMONS, 0);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(uiCourseOfDoomTimer < diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, SPELL_COURSE_OF_DOOM);
                uiCourseOfDoomTimer = 10000;
            }
            else uiCourseOfDoomTimer -= diff;

            if(uiShadowBoltTimer < diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, DUNGEON_MODE(SPELL_SHADOW_BOLT_N, SPELL_SHADOW_BOLT_H));
                uiShadowBoltTimer = 4000;
            }
            else uiShadowBoltTimer -= diff;

            if(uiShadowBoltValleyTimer < diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, SPELL_SHADOW_BOLT_VALLEY);
                uiShadowBoltValleyTimer = 15000;
            }
            else uiShadowBoltValleyTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_risen_witch_doctorAI(pCreature);
    }

};

class npc_abon : public CreatureScript
{
public:
    npc_abon() : CreatureScript("npc_abon") { }

    struct npc_abonAI : public ScriptedAI
    {
        npc_abonAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;

        uint32 uiAbonStrikeTimer;
        uint32 uiVomitSprayTimer;

        void Reset()
        { 
            uiAbonStrikeTimer   = 5000;
            uiVomitSprayTimer   = 10000;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if(uiVomitSprayTimer < diff)
            {
                if (me->IsWithinMeleeRange(me->getVictim()))
                DoCastVictim(DUNGEON_MODE(N_SPELL_VOMIT_SPRAY, H_SPELL_VPMIT_SPRAY));
                DoCast(me, SPELL_VOMIT_VISUAL);
                uiVomitSprayTimer = 15000;
            }
            else uiVomitSprayTimer -= diff;

            if(uiAbonStrikeTimer < diff)
            {
                if (me->IsWithinMeleeRange(me->getVictim()))
                DoCastVictim(SPELL_ABON_STRIKE);
                uiAbonStrikeTimer = 5000;
            }
            else uiAbonStrikeTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* pKiller)
        {
            if(!pInstance)
                return;

            pInstance->SetData(DATA_SUMMONS, 0);
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_abonAI(pCreature);
    }
};

void AddSC_boss_lich_king_hr()
{
    new boss_lich_king_hor();
    new npc_raging_gnoul();
    new npc_risen_witch_doctor();
    new npc_abon();
}
