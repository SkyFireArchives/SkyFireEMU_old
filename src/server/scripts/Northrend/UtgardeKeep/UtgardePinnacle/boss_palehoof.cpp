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

/* Script Data Start
SDName: Boss palehoof
SDAuthor: LordVanMartin
SD%Complete:
SDComment:
SDCategory:
Script Data End */

#include "ScriptPCH.h"
#include "utgarde_pinnacle.h"

enum Spells
{
    SPELL_ARCING_SMASH                          = 48260,
    SPELL_IMPALE                                = 48261,
    H_SPELL_IMPALE                              = 59268,
    SPELL_WITHERING_ROAR                        = 48256,
    H_SPELL_WITHERING_ROAR                      = 59267,
    SPELL_FREEZE                                = 16245
};

//Orb spells
enum OrbSpells
{
    SPELL_ORB_VISUAL                            = 48044,
    SPELL_ORB_CHANNEL                           = 48048
};

enum Yells
{
    SAY_AGGRO                                = -1575000,
    SAY_SLAY_1                               = -1575001,
    SAY_SLAY_2                               = -1575002,
    SAY_DEATH                                = -1575003
};

enum Creatures
{
    MOB_STASIS_CONTROLLER                       = 26688
};

struct Locations
{
    float x, y, z;
};
 
struct Locations moveLocs[]=
{
    {261.6f,-449.3f,109.5f},
    {263.3f,-454.0f,109.5f},
    {291.5f,-450.4f,109.5f},
    {291.5f,-454.0f,109.5f},
    {310.0f,-453.4f,109.5f},
    {238.6f,-460.7f,109.5f}
};
 
enum Phase
{
    PHASE_FRENZIED_WORGEN,
    PHASE_RAVENOUS_FURLBORG,
    PHASE_MASSIVE_JORMUNGAR,
    PHASE_FEROCIOUS_RHINO,
    PHASE_GORTOK_PALEHOOF,
    PHASE_NONE
};

class boss_palehoof : public CreatureScript
{
public:
    boss_palehoof() : CreatureScript("boss_palehoof") { }

    struct boss_palehoofAI : public ScriptedAI
    {
        boss_palehoofAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            ArcingSmashTimer = 7*IN_MILLISECONDS;
            ImpaleTimer = 10*IN_MILLISECONDS;
            WhiteringRoarTimer = 15*IN_MILLISECONDS;

            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE|UNIT_FLAG_NOT_ATTACKABLE_1|UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetStandState(UNIT_STAND_STATE_STAND);
            DoCast(me, SPELL_FREEZE);
        
            me->SetReactState(REACT_DEFENSIVE);
 
            for(uint32 i=0;i<4;i++)
                bDoneAdds[i]=false;
            AddCount=0;
 
            CurrentPhase=PHASE_NONE;

            if (pInstance)
            {
                pInstance->SetData(DATA_GORTOK_PALEHOOF_EVENT, NOT_STARTED);

                Creature* pTemp;
                if ((pTemp = Unit::GetCreature((*me), pInstance->GetData64(DATA_MOB_FRENZIED_WORGEN))) && !pTemp->isAlive())
                {
                    pTemp->Respawn();
                    pTemp->AI()->EnterEvadeMode();
                }
                if ((pTemp = Unit::GetCreature((*me), pInstance->GetData64(DATA_MOB_FEROCIOUS_RHINO))) && !pTemp->isAlive())
                {
                    pTemp->Respawn();
                    pTemp->AI()->EnterEvadeMode();
                }
                if ((pTemp = Unit::GetCreature((*me), pInstance->GetData64(DATA_MOB_MASSIVE_JORMUNGAR))) && !pTemp->isAlive())
                {
                    pTemp->Respawn();
                    pTemp->AI()->EnterEvadeMode();
                }
                if ((pTemp = Unit::GetCreature((*me), pInstance->GetData64(DATA_MOB_RAVENOUS_FURBOLG))) && !pTemp->isAlive())
                {
                    pTemp->Respawn();
                    pTemp->AI()->EnterEvadeMode();
                }

                if (GameObject* pGo = pInstance->instance->GetGameObject(pInstance->GetData64(DATA_GORTOK_PALEHOOF_SPHERE)))
                {
                    pGo->SetGoState(GO_STATE_READY);
                    pGo->RemoveFlag(GAMEOBJECT_FLAGS, GO_FLAG_UNK1);
                }
            }
        }

        void SetInCombat()
        {
            Map *map = me->GetMap();
            if (!map->IsDungeon())
                return;

            Map::PlayerList const &PlayerList = map->GetPlayers();
            for(Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
            {
                if (Player* i_pl = i->getSource())
                    if (!i_pl->isGameMaster() && i_pl->isAlive() && me->GetDistance(i_pl) <= 100)
                    {
                        me->SetInCombatWith(i_pl);
                        i_pl->SetInCombatWith(me);
                        me->AddThreat(i_pl, 1.0f);
                    }
            }
        }

        void EnterCombat(Unit* who)
        {
            DoScriptText(SAY_AGGRO, me);
            SetInCombat();
        }
 
        void UpdateAI(const uint32 diff)
        {
            if(CurrentPhase!=PHASE_GORTOK_PALEHOOF)
                return;

            if (!UpdateVictim())
                return;
        
            Creature* pTemp = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_ORB) : 0);
            if (pTemp && pTemp->isAlive())
                pTemp->DisappearAndDie();
        
            if (ArcingSmashTimer <= diff)
            {
                DoCast(me, SPELL_ARCING_SMASH);
                ArcingSmashTimer = urand(9*IN_MILLISECONDS, 12*IN_MILLISECONDS);
            } else ArcingSmashTimer -= diff;
        
            if (ImpaleTimer <= diff)
            {
              if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                  DoCast(pTarget, DUNGEON_MODE(SPELL_IMPALE, H_SPELL_IMPALE));
              ImpaleTimer = urand(9*IN_MILLISECONDS, 12*IN_MILLISECONDS);
            } else ImpaleTimer -= diff;
        
            if (WhiteringRoarTimer <= diff)
            {
                DoCast(me, DUNGEON_MODE(SPELL_WITHERING_ROAR, H_SPELL_WITHERING_ROAR));
                WhiteringRoarTimer = urand(12*IN_MILLISECONDS, 16*IN_MILLISECONDS);
            } else WhiteringRoarTimer -= diff;
        
            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* killer)
        {
            DoScriptText(SAY_DEATH, me);
            if (pInstance)
                pInstance->SetData(DATA_GORTOK_PALEHOOF_EVENT, DONE);
            Creature* pTemp = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_ORB) : 0);
            if (pTemp && pTemp->isAlive())
                pTemp->DisappearAndDie();
        }

        void KilledUnit(Unit *victim)
        {
            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2), me);
        }

        void NextPhase()
        {
            if(CurrentPhase == PHASE_NONE)
            {
                pInstance->SetData(DATA_GORTOK_PALEHOOF_EVENT, IN_PROGRESS);
                me->SummonCreature(MOB_STASIS_CONTROLLER,moveLocs[5].x,moveLocs[5].y,moveLocs[5].z,0,TEMPSUMMON_CORPSE_DESPAWN);
            }
            Phase move = PHASE_NONE;
            if (AddCount >= DUNGEON_MODE(2,4))
                move = PHASE_GORTOK_PALEHOOF;
            else
            {
                //select random not yet defeated add
                uint8 next = urand(0,3);
                for(uint8 i = 0; i < 16; i++)
                {
                    if(!bDoneAdds[i%4] && next == 0)
                    {
                        move = (Phase)(i%4);
                        break;
                    } else if (!bDoneAdds[i%4] && next > 0)
                    {
                        --next;
                    }
                }
                ++AddCount;
                bDoneAdds[move] = true;
                move = (Phase)(move%4);
            }
            //send orb to summon spot
            Creature *pOrb = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_ORB) : 0);
            if (pOrb && pOrb->isAlive())
            {
                if(CurrentPhase == PHASE_NONE)
                    pOrb->CastSpell(me,SPELL_ORB_VISUAL,true);
                pOrb->GetMotionMaster()->MovePoint(move,moveLocs[move].x,moveLocs[move].y,moveLocs[move].z);
            }
            CurrentPhase = move;
        }

    private:
        uint32 ArcingSmashTimer;
        uint32 ImpaleTimer;
        uint32 WhiteringRoarTimer;
        uint32 WaitingTimer;
        Phase CurrentPhase;
        uint8 AddCount;
        bool bDoneAdds[4];
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_palehoofAI (pCreature);
    }
};

//ravenous furbolg's spells
enum RavenousSpells
{
    SPELL_CHAIN_LIGHTING                        = 48140,
    H_SPELL_CHAIN_LIGHTING                      = 59273,
    SPELL_CRAZED                                = 48139,
    SPELL_CRAZED_SCRIPT                         = 48146,
    SPELL_CRAZED_TAUNT                          = 48147,
    SPELL_TERRIFYING_ROAR                       = 48144
};

class mob_ravenous_furbolg : public CreatureScript
{
public:
    mob_ravenous_furbolg() : CreatureScript("mob_ravenous_furbolg") { }

    struct mob_ravenous_furbolgAI : public ScriptedAI
    {
        mob_ravenous_furbolgAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            ChainLightingTimer = 5*IN_MILLISECONDS;
            CrazedTimer = 10*IN_MILLISECONDS;
            TerrifyingRoarTimer = 15*IN_MILLISECONDS;

            me->SetReactState(REACT_DEFENSIVE);
        
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE|UNIT_FLAG_NOT_ATTACKABLE_1|UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetStandState(UNIT_STAND_STATE_STAND);
            DoCast(me, SPELL_FREEZE);
 
            if (pInstance)
                if(pInstance->GetData(DATA_GORTOK_PALEHOOF_EVENT)==IN_PROGRESS)
                {
                    Creature *pPalehoof = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_GORTOK_PALEHOOF) : 0);
                    if (pPalehoof && pPalehoof->isAlive())
                        CAST_AI(boss_palehoof::boss_palehoofAI, pPalehoof->AI())->Reset();
                }
        }

        void SpellHitTarget(Unit* pTarget, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_CRAZED_SCRIPT)
                pTarget->CastSpell(me, SPELL_CRAZED_TAUNT, true);
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (ChainLightingTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, DUNGEON_MODE(SPELL_CHAIN_LIGHTING, H_SPELL_CHAIN_LIGHTING));
                ChainLightingTimer = 5*IN_MILLISECONDS + rand()%5*IN_MILLISECONDS;
            } else ChainLightingTimer -=  diff;

            if (CrazedTimer <= diff)
            {
                if (!me->IsNonMeleeSpellCasted(false))
                {
                    DoCast(me, SPELL_CRAZED);
                    CrazedTimer = 20*IN_MILLISECONDS;
                }
            } else CrazedTimer -=  diff;

            if (TerrifyingRoarTimer <= diff)
            {
                DoCast(me, SPELL_TERRIFYING_ROAR);
                TerrifyingRoarTimer = 15*IN_MILLISECONDS + rand()%5*IN_MILLISECONDS;
            } else TerrifyingRoarTimer -=  diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* killer)
        {
            if (pInstance)
            {
                Creature *pPalehoof = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_GORTOK_PALEHOOF) : 0);
                if (pPalehoof)
                    CAST_AI(boss_palehoof::boss_palehoofAI, pPalehoof->AI())->NextPhase();
            }
        }

    private:
        uint32 ChainLightingTimer;
        uint32 CrazedTimer;
        uint32 TerrifyingRoarTimer;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_ravenous_furbolgAI (pCreature);
    }
};

//frenzied worgen's spells
enum FrenziedSpells
{
    SPELL_MORTAL_WOUND                          = 48137,
    H_SPELL_MORTAL_WOUND                        = 59265,
    SPELL_ENRAGE_1                              = 48138,
    SPELL_ENRAGE_2                              = 48142
};

class mob_frenzied_worgen : public CreatureScript
{
public:
    mob_frenzied_worgen() : CreatureScript("mob_frenzied_worgen") { }

    struct mob_frenzied_worgenAI : public ScriptedAI
    {
        mob_frenzied_worgenAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            MortalWoundTimer = 5*IN_MILLISECONDS;
            Enrage1Timer = 10*IN_MILLISECONDS;
            bEnraged = false;

            me->SetReactState(REACT_DEFENSIVE);
     
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE|UNIT_FLAG_NOT_ATTACKABLE_1|UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetStandState(UNIT_STAND_STATE_STAND);
            DoCast(me, SPELL_FREEZE);
 
            if (pInstance)
                if(pInstance->GetData(DATA_GORTOK_PALEHOOF_EVENT)==IN_PROGRESS)
                {
                    Creature *pPalehoof = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_GORTOK_PALEHOOF) : 0);
                    if (pPalehoof && pPalehoof->isAlive())
                        CAST_AI(boss_palehoof::boss_palehoofAI, pPalehoof->AI())->Reset();
                }
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (MortalWoundTimer <= diff)
            {
                DoCast(me->getVictim(), DUNGEON_MODE(SPELL_MORTAL_WOUND, H_SPELL_MORTAL_WOUND));
                MortalWoundTimer = 5*IN_MILLISECONDS + rand()%4*IN_MILLISECONDS;
            } else MortalWoundTimer -= diff;

            if (Enrage1Timer <= diff)
            {
                DoCast(me, SPELL_ENRAGE_1);
                Enrage1Timer = 15*IN_MILLISECONDS;
            } else Enrage1Timer -= diff;

            if (!bEnraged && (HealthBelowPct(33)))
            {
                DoCast(me, SPELL_ENRAGE_2);
                bEnraged = true;
            }

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* killer)
        {
            if (pInstance)
            {
                Creature *pPalehoof = Unit::GetCreature((*me), pInstance->GetData64(DATA_GORTOK_PALEHOOF));
                if (pPalehoof)
                    CAST_AI(boss_palehoof::boss_palehoofAI, pPalehoof->AI())->NextPhase();
            }
        }

    private:
        uint32 MortalWoundTimer;
        uint32 Enrage1Timer;
        bool bEnraged;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_frenzied_worgenAI (pCreature);
    }
};

//ferocious rhino's spells
enum FerociousSpells
{
    SPELL_GORE                                  = 48130,
    H_SPELL_GORE                                = 59264,
    SPELL_GRIEVOUS_WOUND                        = 48105,
    H_SPELL_GRIEVOUS_WOUND                      = 59263,
    SPELL_STOMP                                 = 48131
};

class mob_ferocious_rhino : public CreatureScript
{
public:
    mob_ferocious_rhino() : CreatureScript("mob_ferocious_rhino") { }

    struct mob_ferocious_rhinoAI : public ScriptedAI
    {
        mob_ferocious_rhinoAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            StompTimer = 5*IN_MILLISECONDS;
            GoreTimer = 10*IN_MILLISECONDS;
            GrievousWoundTimer = 12*IN_MILLISECONDS;
        
            me->SetReactState(REACT_DEFENSIVE);

            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE|UNIT_FLAG_NOT_ATTACKABLE_1|UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetStandState(UNIT_STAND_STATE_STAND);
            DoCast(me, SPELL_FREEZE);
 
            if (pInstance)
                if(pInstance->GetData(DATA_GORTOK_PALEHOOF_EVENT)==IN_PROGRESS)
                {
                    Creature *pPalehoof = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_GORTOK_PALEHOOF) : 0);
                    if (pPalehoof && pPalehoof->isAlive())
                        CAST_AI(boss_palehoof::boss_palehoofAI, pPalehoof->AI())->Reset();
                }
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (StompTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_STOMP);
                StompTimer = 8*IN_MILLISECONDS + rand()%4*IN_MILLISECONDS;
            } else StompTimer -= diff;

            if (GoreTimer <= diff)
            {
                DoCast(me->getVictim(), DUNGEON_MODE(SPELL_GORE, H_SPELL_GORE));
                GoreTimer = 12*IN_MILLISECONDS + rand()%3*IN_MILLISECONDS;
            } else GoreTimer -= diff;

            if (GrievousWoundTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, DUNGEON_MODE(SPELL_GRIEVOUS_WOUND, H_SPELL_GRIEVOUS_WOUND));
                GrievousWoundTimer = 12*IN_MILLISECONDS + rand()%3*IN_MILLISECONDS;
            } else GrievousWoundTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* killer)
        {
            if (pInstance)
            {
                Creature *pPalehoof = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_GORTOK_PALEHOOF) : 0);
                if (pPalehoof)
                    CAST_AI(boss_palehoof::boss_palehoofAI, pPalehoof->AI())->NextPhase();
            }
        }

    private:
        uint32 StompTimer;
        uint32 GoreTimer;
        uint32 GrievousWoundTimer;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_ferocious_rhinoAI (pCreature);
    }
};

//massive jormungar's spells
enum MassiveSpells
{
    SPELL_ACID_SPIT                             = 48132,
    SPELL_ACID_SPLATTER                         = 48136,
    H_SPELL_ACID_SPLATTER                       = 59272,
    SPELL_POISON_BREATH                         = 48133,
    H_SPELL_POISON_BREATH                       = 59271
};

enum MassiveAdds
{
  CREATURE_JORMUNGAR_WORM                       = 27228
};

class mob_massive_jormungar : public CreatureScript
{
public:
    mob_massive_jormungar() : CreatureScript("mob_massive_jormungar") { }

    struct mob_massive_jormungarAI : public ScriptedAI
    {
        mob_massive_jormungarAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            AcidSpitTimer = 5*IN_MILLISECONDS;
            AcidSplatterTimer = 12*IN_MILLISECONDS;
            PoisonBreathTimer = 15*IN_MILLISECONDS;
        
            me->SetReactState(REACT_DEFENSIVE);

            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE|UNIT_FLAG_NOT_ATTACKABLE_1|UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetStandState(UNIT_STAND_STATE_STAND);
            DoCast(me, SPELL_FREEZE);
 
            if (pInstance)
                if(pInstance->GetData(DATA_GORTOK_PALEHOOF_EVENT) == IN_PROGRESS)
                {
                    Creature *pPalehoof = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_GORTOK_PALEHOOF) : 0);
                    if (pPalehoof && pPalehoof->isAlive())
                        CAST_AI(boss_palehoof::boss_palehoofAI, pPalehoof->AI())->Reset();
                }
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (AcidSpitTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_ACID_SPIT);
                AcidSpitTimer = 5*IN_MILLISECONDS + rand()%3*IN_MILLISECONDS;
            } else AcidSpitTimer -= diff;

            if (AcidSplatterTimer <= diff)
            {
                if (!me->IsNonMeleeSpellCasted(false))
                {
                    DoCast(me, DUNGEON_MODE(SPELL_ACID_SPLATTER, H_SPELL_ACID_SPLATTER)); //for 2 seconds only?
                    AcidSplatterTimer = 25*IN_MILLISECONDS + rand()%5*IN_MILLISECONDS;
                    for (uint8 i = 0; i < 6; ++i)
                        DoSpawnCreature(CREATURE_JORMUNGAR_WORM, 0, 0, 0, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 10000);
                }
            } else AcidSplatterTimer -= diff;

            if (PoisonBreathTimer <= diff)
            {
                if (!me->IsNonMeleeSpellCasted(false))
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        DoCast(pTarget, DUNGEON_MODE(SPELL_POISON_BREATH, H_SPELL_POISON_BREATH));
                    PoisonBreathTimer = 15*IN_MILLISECONDS + rand()%5*IN_MILLISECONDS;
                }
            } else PoisonBreathTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* killer)
        {
            if (pInstance)
            {
                Creature *pPalehoof = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_GORTOK_PALEHOOF) : 0);
                if (pPalehoof)
                    CAST_AI(boss_palehoof::boss_palehoofAI,pPalehoof->AI())->NextPhase();
            }
        }

    private:
        uint32 AcidSpitTimer;
        uint32 AcidSplatterTimer;
        uint32 PoisonBreathTimer;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_massive_jormungarAI (pCreature);
    }
};

class mob_palehoof_orb : public CreatureScript
{
public:
    mob_palehoof_orb() : CreatureScript("mob_palehoof_orb") { }

    struct mob_palehoof_orbAI : public ScriptedAI
    {
        mob_palehoof_orbAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            CurrentPhase=PHASE_NONE;
            SummonTimer=5*IN_MILLISECONDS;
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE|UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_ATTACKABLE_1|UNIT_FLAG_OOC_NOT_ATTACKABLE);
            me->SetDisplayId(11686);
            me->AddUnitMovementFlag(MOVEMENTFLAG_FLYING);
            me->RemoveAurasDueToSpell(SPELL_ORB_VISUAL);
            me->SetSpeed(MOVE_FLIGHT , 0.5f);
            me->SetReactState(REACT_PASSIVE);
        }

        void SetInCombat()
        {
            Map *map = me->GetMap();
            if (!map->IsDungeon())
                return;

            Map::PlayerList const &PlayerList = map->GetPlayers();
            for(Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
            {
                if (Player* i_pl = i->getSource())
                    if (!i_pl->isGameMaster() && i_pl->isAlive() && me->GetDistance(i_pl) <= 100)
                    {
                        me->SetInCombatWith(i_pl);
                        i_pl->SetInCombatWith(me);
                        me->AddThreat(i_pl, 1.0f);
                    }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if(CurrentPhase==PHASE_NONE)
                return;

            if(SummonTimer<=diff)
            {
                if(CurrentPhase<5&&CurrentPhase>=0)
                {
                   Creature *pNext;
                   switch(CurrentPhase)
                   {
                        case PHASE_FRENZIED_WORGEN: pNext = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_FRENZIED_WORGEN) : 0); break;
                        case PHASE_RAVENOUS_FURLBORG: pNext = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_RAVENOUS_FURBOLG) : 0); break;
                        case PHASE_MASSIVE_JORMUNGAR: pNext = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_MASSIVE_JORMUNGAR) : 0); break;
                        case PHASE_FEROCIOUS_RHINO: pNext = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_FEROCIOUS_RHINO) : 0); break;
                        case PHASE_GORTOK_PALEHOOF: pNext = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_GORTOK_PALEHOOF) : 0); break;
                   }

                   if (pNext)
                   {
                        pNext->RemoveAurasDueToSpell(SPELL_FREEZE);
                        pNext->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE|UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_ATTACKABLE_1|UNIT_FLAG_OOC_NOT_ATTACKABLE);
                        ((Unit*)pNext)->SetStandState(UNIT_STAND_STATE_STAND);
                        pNext->SetReactState(REACT_AGGRESSIVE);
                        if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                            pNext->AI()->AttackStart(pTarget);
                   }
                   CurrentPhase=PHASE_NONE;
                }
            } else SummonTimer-=diff;
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE)
                return;
            if(id<0 || id>4)
                return;
            Creature *pNext;
            me->SetSpeed(MOVE_FLIGHT , 3.0f);
            switch(id)
            {
                case PHASE_FRENZIED_WORGEN: pNext = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_FRENZIED_WORGEN) : 0); break;
                case PHASE_RAVENOUS_FURLBORG: pNext = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_RAVENOUS_FURBOLG) : 0); break;
                case PHASE_MASSIVE_JORMUNGAR: pNext = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_MASSIVE_JORMUNGAR) : 0); break;
                case PHASE_FEROCIOUS_RHINO: pNext = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_MOB_FEROCIOUS_RHINO) : 0); break;
                case PHASE_GORTOK_PALEHOOF: pNext = Unit::GetCreature((*me), pInstance ? pInstance->GetData64(DATA_GORTOK_PALEHOOF) : 0); break;
            }
            if(pNext)
                DoCast(pNext, SPELL_ORB_CHANNEL, false); //cant cast on not attackable unit?

            CurrentPhase=(Phase)id;
            SummonTimer=5*IN_MILLISECONDS;
            SetInCombat();
        }

    private:
        InstanceScript* pInstance;
        uint32 SummonTimer;
        Phase CurrentPhase;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_palehoof_orbAI (pCreature);
    }
};

class go_palehoof_sphere : public GameObjectScript
{
public:
    go_palehoof_sphere() : GameObjectScript("go_palehoof_sphere") { }

    bool OnGossipHello(Player *pPlayer, GameObject *pGO)
    {
        InstanceScript* pInstance = pGO->GetInstanceScript();

        Creature *pPalehoof = Unit::GetCreature(*pGO, pInstance ? pInstance->GetData64(DATA_GORTOK_PALEHOOF) : 0);
        if (pPalehoof && pPalehoof->isAlive())
        {
            // maybe these are hacks :(
            pGO->SetFlag(GAMEOBJECT_FLAGS, GO_FLAG_UNK1);
            pGO->SetGoState(GO_STATE_ACTIVE);

            CAST_AI(boss_palehoof::boss_palehoofAI, pPalehoof->AI())->NextPhase();
        }
        return true;
    }

};

void AddSC_boss_palehoof()
{
    new boss_palehoof();
    new mob_ravenous_furbolg();
    new mob_frenzied_worgen();
    new mob_ferocious_rhino();
    new mob_massive_jormungar();
    new mob_palehoof_orb();
    new go_palehoof_sphere();
}