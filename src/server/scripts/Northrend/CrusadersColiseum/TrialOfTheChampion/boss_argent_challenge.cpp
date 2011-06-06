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

/* Public version by Kuidin Sergey (Ghost)*/
/* ScriptData
SDName: Argent Challenge Encounter.
SD%Complete: 50 %
SDComment: AI for Argent Soldiers are not implemented. AI from bosses need more improvements.
SDCategory: Trial of the Champion
EndScriptData */

#include "ScriptPCH.h"
#include "trial_of_the_champion.h"
#include "ScriptedEscortAI.h"

enum eSpells
{
    //Eadric
    SPELL_EADRIC_ACHIEVEMENT        = 68197,
    SPELL_HAMMER_JUSTICE            = 66863,
    SPELL_HAMMER_RIGHTEOUS          = 66867,
    SPELL_RADIANCE                  = 66935,
    SPELL_VENGEANCE                 = 66865,

    //Paletress
    SPELL_SMITE                     = 66536,
    SPELL_SMITE_H                   = 67674,
    SPELL_HOLY_FIRE                 = 66538,
    SPELL_HOLY_FIRE_H               = 67676,
    SPELL_RENEW                     = 66537,
    SPELL_RENEW_H                   = 67675,
    SPELL_HOLY_NOVA                 = 66546,
    SPELL_SHIELD                    = 66515,
    SPELL_CONFESS                   = 66680,
	
    //Argent Priestess
    SPELL_FOUNTAIN_OF_LIGHT_SUMMON  = 67194,
    SPELL_FOUNTAIN_OF_LIGHT_N       = 71864,
    SPELL_FOUNTAIN_OF_LIGHT_H       = 71866,
    SPELL_HOLY_SMITE_N              = 36176,
    SPELL_HOLY_SMITE_H              = 67289,
    SPELL_SHADOW_WORD_PAIN_N        = 34941,
    SPELL_SHADOW_WORD_PAIN_H        = 34942,
    SPELL_MIND_CONTROL              = 67229,

    //Argent Monk
    SPELL_DIVINE_SHIELD             = 67251, // Only Heroic
    SPELL_FINAL_MEDITATION          = 67255, // Only Heroic
    SPELL_FLURRY_OF_BLOWS           = 67233, 
    SPELL_PUMMEL                    = 67235,

    //Argent Lightwielder
    SPELL_BLAZING_LIGHT_N           = 67247,
    SPELL_BLAZING_LIGHT_H           = 67290,
    SPELL_CLEAVE                    = 15284,
    SPELL_UNBALANCING_STRIKE        = 67237, // Only Heroic

    //Memory
    SPELL_OLD_WOUNDS                = 66620,
    SPELL_OLD_WOUNDS_H              = 67679,
    SPELL_SHADOWS_PAST              = 66619,
    SPELL_SHADOWS_PAST_H            = 67678,
    SPELL_WAKING_NIGHTMARE          = 66552,
    SPELL_WAKING_NIGHTMARE_H        = 67677,
    SPELL_SHADOW_FORM               = 15473,
};

enum Misc
{
    ACHIEV_CONF                     = 3802
};

enum eText
{
    SAY_INTRO1_PALETRESS            =   -1649527,
    SAY_INTRO2_PALETRESS            =   -1649528,
    SAY_AGGRO_PALETRESS             =   -1649530,
    SAY_SUMMON_PALETRESS            =   -1649531,
    SAY_MEMORY_DIE_PALETRESS        =   -1649534,
    SAY_DIE_PALETRESS               =   -1649535,
    SAY_KILL1_PALETRESS             =   -1649532,
    SAY_KILL2_PALETRESS             =   -1649533,
    SAY_EMOTE_MEMORY                =   -1649542,
    
    SAY_INTRO_EADRIC                =   -1649536,
    SAY_AGGRO_EADRIC                =   -1649537,
    SAY_HAMMER_EADRIC               =   -1649538,
    SAY_KILL_1_EADRIC               =   -1649539,
    SAY_KILL_2_EADRIC               =   -1649540,
    SAY_DEATH_EADRIC                =   -1649541,
    SAY_EMOTE_HAMMER                =   -1649545,
    SAY_EMOTE_LIGHT                 =   -1649544,
};

enum KillCredits
{
    CREDIT_FACTION_CHAMPIONS    = 68572,
    CREDIT_EADRIC               = 68575,
    CREDIT_BLONDLOCKE           = 68574,
    KILL_CREDIT                 = 68663,  
    CREDIT_VERGANGENHEIT        = 68209
};

class boss_eadric : public CreatureScript
{
public:
    boss_eadric() : CreatureScript("boss_eadric") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_eadricAI(creature);
    }
	
    struct boss_eadricAI : public ScriptedAI
    {
        boss_eadricAI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = (InstanceScript*)creature->GetInstanceScript();	
            creature->SetReactState(REACT_PASSIVE);
            creature->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
            creature->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_SELECTABLE);
            bIntro = false;
        }

        void Reset()
        {
            VenganceTimer = 10000;
            RadianceTimer = 16000;
            HammerJusticeTimer = 25000;
            ResetTimer = 5000;
            IntroTimer = 5000;
            me->GetMotionMaster()->MovePoint(1,746.71f,661.02f,411.69f);
            me->SetOrientation(4.714f);
            
            bDone = false;
        }

        void EnterCombat(Unit* pWho)
        {
            DoScriptText(SAY_AGGRO_EADRIC, me);
        }

        void KilledUnit(Unit* pVictim)
        {
            DoScriptText(RAND(SAY_KILL_1_EADRIC, SAY_KILL_2_EADRIC), me);
        }
    		
        void DamageTaken(Unit *done_by, uint32 &damage)
        {
            if (damage >= me->GetHealth())
            {		
                damage = 0;
                EnterEvadeMode();
                BindToInstance();
                me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
                me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_SELECTABLE);
                DoScriptText(SAY_DEATH_EADRIC, me);
                me->setFaction(35);
                bDone = true;
                if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE)))
                    pInstance->HandleGameObject(pGO->GetGUID(),true);	
                if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE1)))
                    pInstance->HandleGameObject(pGO->GetGUID(),true);		
                if (pInstance)
                {
                    pInstance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, 68575);
                    pInstance->SetData(BOSS_ARGENT_CHALLENGE_E, DONE);
                }
            }
        }

        void BindToInstance()
        {
            if (IsHeroic())
            {
                Map::PlayerList const& players = me->GetMap()->GetPlayers();
                if (!players.isEmpty())
                {
                    for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                    {
                        Player* pPlayer = itr->getSource();
                        if (pPlayer)
                            me->GetMap()->ToInstanceMap()->PermBindAllPlayers(pPlayer);
                    }
                }
            }
        }

        void MovementInform(uint32 MovementType, uint32 Data)
        {
            if (MovementType != POINT_MOTION_TYPE)
                return;
        }
    	
        void UpdateAI(const uint32 diff)
        {
            if (bDone && ResetTimer <= diff)
            {
                me->GetMotionMaster()->MovePoint(0,746.843f, 695.68f, 412.339f);
                bDone = false;
            } else ResetTimer -= diff;

            if (!bIntro && IntroTimer <= diff)
            {
                DoScriptText(SAY_INTRO_EADRIC, me);
                bIntro = true;
            } else IntroTimer -= diff;

            if (!UpdateVictim())
                return;

            if (HammerJusticeTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 250, true))
                {
                    if (pTarget && pTarget->isAlive())
                    {
                        DoScriptText(SAY_EMOTE_HAMMER, me, pTarget);
                        DoScriptText(SAY_HAMMER_EADRIC, me);
                        DoCast(pTarget, SPELL_HAMMER_JUSTICE);
                        DoCast(pTarget, SPELL_HAMMER_RIGHTEOUS);
                    }
                }
                HammerJusticeTimer = 25000;
            } else HammerJusticeTimer -= diff;

            if (VenganceTimer <= diff)
            {
                DoCast(me,SPELL_VENGEANCE);
                VenganceTimer = urand(12000, 15000);
            } else VenganceTimer -= diff;

            if (RadianceTimer <= diff)
            {
                DoScriptText(SAY_EMOTE_LIGHT, me);
                DoCastAOE(SPELL_RADIANCE);
                RadianceTimer = urand(10000, 15000);
            } else RadianceTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;
        uint32 VenganceTimer;
        uint32 RadianceTimer;
        uint32 HammerJusticeTimer;
        uint32 ResetTimer;
        uint32 IntroTimer;
        bool bDone;
        bool bIntro;
    };
};

class boss_paletress : public CreatureScript
{
public:
    boss_paletress() : CreatureScript("boss_paletress") { }

    struct boss_paletressAI : public ScriptedAI
    {
        boss_paletressAI(Creature* creature) : ScriptedAI(creature)
        {
            pInstance = (InstanceScript*)creature->GetInstanceScript();	

            MemoryGUID = 0;
            creature->SetReactState(REACT_PASSIVE);
            creature->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
            creature->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_SELECTABLE);
            creature->RestoreFaction();
            bIntro = false;
            bIntro2 = false;
        }

        void Reset()
        {
            me->RemoveAllAuras();

            HolyFireTimer   = urand(9000,12000);
            HolySmiteTimer  = urand(5000,7000);
            RenewTimer      = urand(2000,5000);
            IntroTimer      = 10000;
            Intro2Timer     = 15000;

            ResetTimer      = 7000;
    		
            me->GetMotionMaster()->MovePoint(1,746.71f,661.02f,411.69f);
            me->SetOrientation(4.714f);

            bHealth = false;
            bDone = false;

            if (Creature *pMemory = Unit::GetCreature(*me, MemoryGUID))
            if (pMemory->isAlive())
                pMemory->RemoveFromWorld();
        }

        void EnterCombat(Unit* pWho)
        {
            DoScriptText(SAY_AGGRO_PALETRESS, me);
        }

        void JustDied(Unit* pKiller)
        {
            DoScriptText(RAND(SAY_KILL1_PALETRESS,SAY_KILL2_PALETRESS), me);
        }

        void SetData(uint32 id, uint32 uiValue)
        {
            DoScriptText(SAY_MEMORY_DIE_PALETRESS, me);

            if (id == 1)
                me->RemoveAura(SPELL_SHIELD);
        }

        void BindToInstance()
        {
            if (IsHeroic())
            {
                Map::PlayerList const& players = me->GetMap()->GetPlayers();
                if (!players.isEmpty())
                {
                    for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                    {
                        Player* pPlayer = itr->getSource();
                        if (pPlayer)
                            me->GetMap()->ToInstanceMap()->PermBindAllPlayers(pPlayer);
                    }
                }
            }
        }

        void DamageTaken(Unit *done_by, uint32 &damage)
        {
            if (damage >= me->GetHealth())
            {
                damage = 0;
                EnterEvadeMode();
                BindToInstance();
                me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
                me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_SELECTABLE);
                DoScriptText(SAY_DIE_PALETRESS, me);
                me->setFaction(35);
                bDone = true;
                if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE)))
                    pInstance->HandleGameObject(pGO->GetGUID(),true);	
                if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE1)))
                    pInstance->HandleGameObject(pGO->GetGUID(),true);		
                    pInstance->SetData(BOSS_ARGENT_CHALLENGE_P, DONE);
                    pInstance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, CREDIT_BLONDLOCKE);
            }
        }

        void MovementInform(uint32 MovementType, uint32 Data)
        {
            if (MovementType != POINT_MOTION_TYPE)
                return;	
        }
    	
        void UpdateAI(const uint32 diff)
        {
            if (bDone && ResetTimer <= diff)
            {
                me->GetMotionMaster()->MovePoint(0,746.843f, 695.68f, 412.339f);
                bDone = false;
                if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE)))
                    pInstance->HandleGameObject(pGO->GetGUID(),true);	
            } else ResetTimer -= diff;

            if (!bIntro && IntroTimer <= diff)
            {
                DoScriptText(SAY_INTRO1_PALETRESS, me);
                bIntro = true;
            } else IntroTimer -= diff;

            if (!bIntro2 && Intro2Timer <= diff)
            {
                DoScriptText(SAY_INTRO2_PALETRESS, me);
                me->HandleEmoteCommand(EMOTE_ONESHOT_KNEEL);
                bIntro2 = true;
            } else Intro2Timer -= diff;

            if (!UpdateVictim())
                return;

            if (HolyFireTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 250, true))
                {   
                    if (pTarget && pTarget->isAlive())
                    DoCast(pTarget,SPELL_HOLY_FIRE);
                }
                if (me->HasAura(SPELL_SHIELD))
                    HolyFireTimer = 13000;
                else
                    HolyFireTimer = urand(9000, 12000);
            } else HolyFireTimer -= diff;

            if (HolySmiteTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 250, true))
                {
                    if (pTarget && pTarget->isAlive())
                        DoCast(pTarget,SPELL_SMITE);
                }
                if (me->HasAura(SPELL_SHIELD))
                    HolySmiteTimer = 9000;
                else
                    HolySmiteTimer = urand(3000,5000);
            } else HolySmiteTimer -= diff;

            if (me->HasAura(SPELL_SHIELD))
            if (RenewTimer <= diff)
            {
                me->InterruptNonMeleeSpells(true);
                uint8 uiTarget = urand(0,1);
                switch(uiTarget)
                {
                case 0:
                    DoCast(me, SPELL_RENEW);
                    break;
                case 1:
                    if (Creature *pMemory = Unit::GetCreature(*me, MemoryGUID))
                        if (pMemory->isAlive())		
                            DoCast(pMemory, SPELL_RENEW);
                    break;
                }
                RenewTimer = urand(15000,17000);
            } else RenewTimer -= diff;

            if (!bHealth && me->GetHealth()*100 / me->GetMaxHealth() <= 35)
            {
                DoScriptText(SAY_SUMMON_PALETRESS, me);
                me->InterruptNonMeleeSpells(true);
                DoCastAOE(SPELL_HOLY_NOVA,false);
                DoCast(me, SPELL_SHIELD);
                DoCastAOE(SPELL_CONFESS,false);

                switch(urand(0, 24))
                {
                case 0: me->SummonCreature(MEMORY_ALGALON, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 1: me->SummonCreature(MEMORY_CHROMAGGUS, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 2: me->SummonCreature(MEMORY_CYANIGOSA, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 3: me->SummonCreature(MEMORY_DELRISSA, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 4: me->SummonCreature(MEMORY_ECK, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 5: me->SummonCreature(MEMORY_ENTROPIUS, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 6: me->SummonCreature(MEMORY_GRUUL, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 7: me->SummonCreature(MEMORY_HAKKAR, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 8: me->SummonCreature(MEMORY_HEIGAN, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 9: me->SummonCreature(MEMORY_HEROD, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 10: me->SummonCreature(MEMORY_HOGGER, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 11: me->SummonCreature(MEMORY_IGNIS, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 12: me->SummonCreature(MEMORY_ILLIDAN, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 13: me->SummonCreature(MEMORY_INGVAR, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 14: me->SummonCreature(MEMORY_KALITHRESH, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 15: me->SummonCreature(MEMORY_LUCIFRON, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 16: me->SummonCreature(MEMORY_MALCHEZAAR, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 17: me->SummonCreature(MEMORY_MUTANUS, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 18: me->SummonCreature(MEMORY_ONYXIA, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 19: me->SummonCreature(MEMORY_THUNDERAAN, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 20: me->SummonCreature(MEMORY_VANCLEEF, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 21: me->SummonCreature(MEMORY_VASHJ, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 22: me->SummonCreature(MEMORY_VEKNILASH, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 23: me->SummonCreature(MEMORY_VEZAX, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                case 24: me->SummonCreature(MEMORY_ARCHIMONDE, 0.0f, 0.0f, 0.0f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 5000);
                    break;
                }

                bHealth = true;
            }
        }   

        void JustSummoned(Creature* pSummon)
        {
            MemoryGUID = pSummon->GetGUID();
        }

    private:        
        InstanceScript* pInstance;
        Creature* pMemory;
        uint64 MemoryGUID;

        bool bHealth;
        bool bDone;
        bool bIntro;
        bool bIntro2;

        uint32 HolyFireTimer;
        uint32 HolySmiteTimer;
        uint32 RenewTimer;
        uint32 ResetTimer;
        uint32 IntroTimer;
        uint32 Intro2Timer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_paletressAI(creature);
    }
};

class npc_memory : public CreatureScript
{
public:
    npc_memory() : CreatureScript("npc_memory") { }
	
    struct npc_memoryAI : public ScriptedAI
    {
        npc_memoryAI(Creature* creature) : ScriptedAI(creature) 
        {
            pInstance = (InstanceScript*)creature->GetInstanceScript();
        }

        void Reset()
        {
            OldWoundsTimer = 12000;
            ShadowsPastTimer = 15000;
            WakingNightmare = 7000;

            if(!me->HasAura(SPELL_SHADOW_FORM))
                DoCast(me, SPELL_SHADOW_FORM);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (OldWoundsTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                {
                    if (pTarget && pTarget->isAlive())
                    DoCast(pTarget, SPELL_OLD_WOUNDS);
                }
                OldWoundsTimer = 23000;
            }else OldWoundsTimer -= diff;

            if (WakingNightmare <= diff)
            {
                DoScriptText(SAY_EMOTE_MEMORY, me);
                DoCast(me, SPELL_WAKING_NIGHTMARE);
                WakingNightmare = 15000;
            }else WakingNightmare -= diff;

            if (ShadowsPastTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1))
                {
                    if (pTarget && pTarget->isAlive())
                        DoCast(pTarget,SPELL_SHADOWS_PAST);
                }
                ShadowsPastTimer = 20000;
            }else ShadowsPastTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* pKiller)
        {
            if (me->isSummon())
            {
                if (Unit* pSummoner = CAST_SUM(me)->GetSummoner())
                {
                    if (pSummoner && pSummoner->isAlive())
                        CAST_CRE(pSummoner)->AI()->SetData(1,0);
                }
            }
            if (pInstance && IsHeroic())
                pInstance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, CREDIT_VERGANGENHEIT);
        }

    private:
        InstanceScript* pInstance;
        uint32 OldWoundsTimer;
        uint32 ShadowsPastTimer;
        uint32 WakingNightmare;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_memoryAI(creature);
    }
};

class npc_argent_soldier : public CreatureScript
{
public:
    npc_argent_soldier() : CreatureScript("npc_argent_soldier") {}
	
    struct npc_argent_soldierAI : public npc_escortAI
    {
        npc_argent_soldierAI(Creature* creature) : npc_escortAI(creature)
        {
            pInstance = (InstanceScript*)creature->GetInstanceScript();	
            me->SetReactState(REACT_DEFENSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE);
            me->SetFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NOT_SELECTABLE);
            if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE)))
                pInstance->HandleGameObject(pGO->GetGUID(),true);
    					
            SetDespawnAtEnd(false);
            Waypoint = 0;
        }
    	
        void Reset()
        {
            StrikeTimer = 4000;	
            CleaveTimer = 5000;
            PummelTimer = 8000;
            PainTimer = 6000;
            MindTimer = 7000;
            SmiteTimer = 9000;
    	
            ResetTimer = 3000;
            LightTimer = 2000;
            FontTimer = 30000;
            FlurryTimer = 14000;
            DivineTimer = 20000;	
        }
    	
        void WaypointReached(uint32 point)
        {
            if (point == 0)
            {
                switch(Waypoint)
                {
                case 1:
                    me->SetOrientation(4.60f);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                    break;
                }
            }
            if (point == 1)
            {
                switch(Waypoint)
                {
                case 0:
                    me->SetOrientation(5.81f);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                    break;
                case 2:
                    me->SetOrientation(3.39f);
                    me->SetReactState(REACT_AGGRESSIVE);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                    if (GameObject* pGO = GameObject::GetGameObject(*me, pInstance->GetData64(DATA_MAIN_GATE)))
                    pInstance->HandleGameObject(pGO->GetGUID(),false);
                    break;
                }
                me->SendMovementFlagUpdate();
            }  
        }

        void SetData(uint32 uiType, uint32 uiData)
        {
            switch(me->GetEntry())
            {
            case NPC_ARGENT_LIGHWIELDER:
                switch(uiType)
                {
                case 0:
                    AddWaypoint(0,737.14f,655.42f,412.88f);
                    AddWaypoint(1,712.14f,628.42f,411.88f);
                    break;
                case 1:
                    AddWaypoint(0,742.44f,650.29f,411.79f);
                    break;
                case 2:
                    AddWaypoint(0,756.14f,655.42f,411.88f);
                    AddWaypoint(1,781.626f, 629.383f, 411.892f);
                    break;
                }
                break;
            case NPC_ARGENT_MONK:
                switch(uiType)
                {
                case 0:
                    AddWaypoint(0,737.14f,655.42f,412.88f);
                    AddWaypoint(1,713.12f,632.97f,411.90f);
                    break;
                case 1:
                    AddWaypoint(0,746.73f,650.24f,411.56f);
                    break;
                case 2:
                    AddWaypoint(0,756.14f,655.42f,411.88f);
                    AddWaypoint(1,781.351f, 633.146f, 411.907f);
                    break;
                }
                break;
            case NPC_PRIESTESS:
                switch(uiType)
                {
                case 0:
                    AddWaypoint(0,737.14f,655.42f,412.88f);
                    AddWaypoint(1,715.06f,637.07f,411.91f);
                    break;
                case 1:
                    AddWaypoint(0,750.72f,650.20f,411.77f);
                    break;
                case 2:
                    AddWaypoint(0,756.14f,655.42f,411.88f);
                    AddWaypoint(1,780.439f, 636.681f, 411.918f);
                    break;
                }
                break;
            }
        Start(false,true,0);
        Waypoint = uiType;
    }

    void UpdateAI(const uint32 diff)
    {
        npc_escortAI::UpdateAI(diff);

        if (!UpdateVictim())
            return;

            switch(me->GetEntry())
            {
                case NPC_ARGENT_LIGHWIELDER:
                {
                    if (CleaveTimer <= diff)
                    {
                        if (me->IsWithinMeleeRange(me->getVictim()))
                            DoCastVictim(SPELL_CLEAVE);		
                        CleaveTimer = 10000;
                    } else CleaveTimer -= diff;	
        		
                    if (IsHeroic() && StrikeTimer <= diff)
                    {
                        if (me->IsWithinMeleeRange(me->getVictim()))
                            DoCastVictim(SPELL_UNBALANCING_STRIKE);				
                        StrikeTimer = 15000;
                    } else StrikeTimer -= diff;	
    			
                    if (LightTimer <= diff)
                    {
                        DoCastAOE(DUNGEON_MODE(SPELL_BLAZING_LIGHT_N,SPELL_BLAZING_LIGHT_H));
                        LightTimer = urand (15000, 17000);
                    } else LightTimer -= diff;
                    break;
                }
                case NPC_ARGENT_MONK:
                {	
                    if (DivineTimer <= diff)
                    {
                        DoCast(me, SPELL_DIVINE_SHIELD);
                        DivineTimer = 85000;
                    } else DivineTimer -= diff;
    			
                    if (PummelTimer <= diff)
                    {
                        if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                            DoCast(pTarget, SPELL_PUMMEL);				
                        PummelTimer = 35000;
                    } else PummelTimer -= diff;	
    			
                    if (FlurryTimer <= diff)
                    {
                        DoCast(me, SPELL_FLURRY_OF_BLOWS);
                        FlurryTimer = 22000;
                    } else FlurryTimer -= diff;	

                    if (HealthBelowPct(1) && IsHeroic())
                    {
                        DoCast(me, SPELL_FINAL_MEDITATION);
                        DoCast(me, SPELL_DIVINE_SHIELD);
                    }
                    break;
                }   
                case NPC_PRIESTESS:
                {
                    if (FontTimer <= diff)
                    {
                        DoCast(me, SPELL_FOUNTAIN_OF_LIGHT_SUMMON);
                        FontTimer = urand (15000, 17000);
                    } else FontTimer -= diff;
    			
                    if (PainTimer <= diff)
                    {
                        if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(pTarget, DUNGEON_MODE(SPELL_SHADOW_WORD_PAIN_N, SPELL_SHADOW_WORD_PAIN_N));				
                        PainTimer = 30000;
                    } else PainTimer -= diff;	
    		
                    if (MindTimer <= diff)
                    {
                        if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(pTarget, SPELL_MIND_CONTROL);				
                        MindTimer = 90000;
                    } else MindTimer -= diff;
    	    	
                    if (SmiteTimer <= diff)
                    {
                        if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(pTarget, DUNGEON_MODE(SPELL_HOLY_SMITE_N, SPELL_HOLY_SMITE_H));				
                        SmiteTimer = 25000;
                    } else SmiteTimer -= diff;		
                    break;
                }		
            }					
            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* pKiller)
        {
            if (pInstance)
                pInstance->SetData(DATA_ARGENT_SOLDIER_DEFEATED,pInstance->GetData(DATA_ARGENT_SOLDIER_DEFEATED) + 1);
        }

    private:
        InstanceScript* pInstance;
        uint8 Waypoint;
        uint32 StrikeTimer;
        uint32 CleaveTimer;
        uint32 PummelTimer;
        uint32 PainTimer;
        uint32 MindTimer;
        uint32 SmiteTimer;
        uint32 FontTimer;
        uint32 LightTimer;
        uint32 FlurryTimer;
        uint32 DivineTimer;
        uint32 ResetTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_argent_soldierAI(creature);
    }
};

class npc_fountain_of_light : public CreatureScript
{
public:
    npc_fountain_of_light() : CreatureScript("npc_fountain_of_light") { }
	
    struct npc_fountain_of_lightAI : public ScriptedAI
    {
        npc_fountain_of_lightAI(Creature* creature) : ScriptedAI(creature) 
        {
            me->SetReactState(REACT_PASSIVE);
        }

        void Reset()
        {
            FountainOfLightTimer = 7000;
        }

        void UpdateAI(const uint32 diff)
        {
            if (FountainOfLightTimer <= diff)
            {
                DoCast(me, DUNGEON_MODE(SPELL_FOUNTAIN_OF_LIGHT_N, SPELL_FOUNTAIN_OF_LIGHT_H));				
                FountainOfLightTimer = 7000;
            } else FountainOfLightTimer -= diff;	
        }

    private:
        uint32 FountainOfLightTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new npc_fountain_of_lightAI(creature);
    }
};

enum ReflectiveShield
{
    SPELL_REFLECTIVE_SHIELD_TRIGGERED = 33619,
};

class spell_gen_reflective_shield : public SpellScriptLoader
{
public:
    spell_gen_reflective_shield() : SpellScriptLoader("spell_gen_reflective_shield") { }

    class spell_gen_reflective_shield_AuraScript : public AuraScript
    {
        PrepareAuraScript(spell_gen_reflective_shield_AuraScript);

        bool Validate(SpellEntry const * /*spellEntry*/)
        {
            return sSpellStore.LookupEntry(SPELL_REFLECTIVE_SHIELD_TRIGGERED);
        }

        void Trigger(AuraEffect * aurEff, DamageInfo & dmgInfo, uint32 & absorbAmount)
        {
            Unit * target = dmgInfo.GetAttacker();
            if (!target)
                return;
            Unit * caster = GetCaster();
            if (!caster)
                return;
            int32 bp = CalculatePctN(absorbAmount, 25);
            target->CastCustomSpell(target, SPELL_REFLECTIVE_SHIELD_TRIGGERED, &bp, NULL, NULL, true, NULL, aurEff);
        }

        void Register()
        {
            AfterEffectAbsorb += AuraEffectAbsorbFn(spell_gen_reflective_shield_AuraScript::Trigger, EFFECT_0);
        }
    };

    AuraScript *GetAuraScript() const
    {
        return new spell_gen_reflective_shield_AuraScript();
    }
};

class OrientationCheck
{
public:
    explicit OrientationCheck(Unit* _caster) : caster(_caster) { }

    bool operator() (Unit* unit)
    {
        return !unit->isInFront(caster, 40.0f, 2.5f);
    }

private:
    Unit* caster;
};

class spell_eadrik_radiance : public SpellScriptLoader
{
public:
    spell_eadrik_radiance() : SpellScriptLoader("spell_eadrik_radiance") { }

    class spell_eadrik_radiance_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_eadrik_radiance_SpellScript);

        void FilterTargets(std::list<Unit*>& unitList)
        {
            unitList.remove_if(OrientationCheck(GetCaster()));
        }

        void Register()
        {
            OnUnitTargetSelect += SpellUnitTargetFn(spell_eadrik_radiance_SpellScript::FilterTargets, EFFECT_0, TARGET_UNIT_AREA_ENEMY_SRC);
            OnUnitTargetSelect += SpellUnitTargetFn(spell_eadrik_radiance_SpellScript::FilterTargets, EFFECT_1, TARGET_UNIT_AREA_ENEMY_SRC);
        }
    };

    SpellScript *GetSpellScript() const
    {
        return new spell_eadrik_radiance_SpellScript();
    }
};

void AddSC_boss_argent_challenge()
{
    new boss_eadric();
    new boss_paletress();
    new npc_memory();
    new npc_argent_soldier();
    new npc_fountain_of_light();
    new spell_gen_reflective_shield();
    new spell_eadrik_radiance();
}
