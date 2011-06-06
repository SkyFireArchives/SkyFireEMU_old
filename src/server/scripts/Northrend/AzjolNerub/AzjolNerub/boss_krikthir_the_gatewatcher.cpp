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
 * Comment: Find in the future best timers and the event is not implemented.
 */

#include "ScriptPCH.h"
#include "azjol_nerub.h"

enum Spells
{
    // krikthir
    SPELL_MIND_FLAY                               = 52586,
    H_SPELL_MIND_FLAY                             = 59367,
    SPELL_CURSE_OF_FATIGUE                        = 52592,
    H_SPELL_CURSE_OF_FATIGUE                      = 59368,
    SPELL_FRENZY                                  = 28747,
    SPELL_SWARM                                   = 52440, // ( 52438,52439,52440,52448,52449,52450 )
    // skittering infector
    SPELL_ACID_SPLASH                             = 52446,
    H_SPELL_ACID_SPLASH                           = 59363,
    // anub'ar skirmisher
    SPELL_FIXATE                                  = 52537,
    SPELL_CHARGE                                  = 52538,
    SPELL_BACKSTAB                                = 52540,
    // anub'ar shadowcaster
    SPELL_SHADOW_BOLT                             = 52534,
    H_SPELL_SHADOW_BOLT                           = 59357,
    SPELL_SHADOW_NOVA                             = 52535,
    H_SPELL_SHADOW_NOVA                           = 59358,
    // anub'ar warrior 
    SPELL_STRIKE                                  = 52532,
    SPELL_CLEAVE                                  = 49806,
    // common watcher spells
    SPELL_WEB_WRAP                                = 52086,
    SPELL_WEB_WRAP_STUN                           = 52087,    
    SPELL_INFECTED_BITE                           = 52469,
    H_SPELL_INFECTED_BITE                         = 59364,
    // gashra
    SPELL_ENRAGE                                  = 52470,
    // narjil
    SPELL_BLINDING_WEBS                           = 52524,
    H_SPELL_BLINDING_WEBS                         = 59365,
    // silthik
    SPELL_POSION_SPRAY                            = 52493,
    H_SPELL_POSION_SPRAY                          = 59366
};

enum Mobs
{
    MOB_SKITTERING_SWARMER                        = 28735,
    MOB_SKITTERING_SWARMER_CONTROLLER             = 32593,
    MOB_SKITTERING_INFECTIOR                      = 28736
};

enum Yells
{
    SAY_AGGRO                                     = -1601011,
    SAY_SLAY_1                                    = -1601012,
    SAY_SLAY_2                                    = -1601013,
    SAY_DEATH                                     = -1601014,
    SAY_SWARM_1                                   = -1601015,
    SAY_SWARM_2                                   = -1601016,
    SAY_PREFIGHT_1                                = -1601017,
    SAY_PREFIGHT_2                                = -1601018,
    SAY_PREFIGHT_3                                = -1601019,
    SAY_SEND_GROUP_1                              = -1601020,
    SAY_SEND_GROUP_2                              = -1601021,
    SAY_SEND_GROUP_3                              = -1601022
};

const Position SpawnPoint[] =
{
    { 566.164f, 682.087f, 769.079f, 2.21657f  },
    { 529.042f, 706.941f, 777.298f, 1.0821f   },
    { 489.975f, 671.239f, 772.131f, 0.261799f },
    { 488.556f, 692.95f,  771.764f, 4.88692f  },
    { 553.34f,  640.387f, 777.419f, 1.20428f  },
    { 517.486f, 706.398f, 777.335f, 5.35816f  },
    { 504.01f,  637.693f, 777.479f, 0.506145f },
    { 552.625f, 706.408f, 777.177f, 3.4383f   }
};

enum Misc
{
    ACHIEV_WATCH_HIM_DIE                          = 1296
};

class boss_krik_thir : public CreatureScript
{
public:
    boss_krik_thir() : CreatureScript("boss_krik_thir") { }

    struct boss_krik_thirAI : public ScriptedAI
    {
        boss_krik_thirAI(Creature *c) : ScriptedAI(c), lSummons(me)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            bFrenzy = false;
            SummonTimer = 10*IN_MILLISECONDS;
            MindFlayTimer = 12*IN_MILLISECONDS;
            CurseFatigueTimer = 7*IN_MILLISECONDS;

            lSummons.DespawnAll();

            if (pInstance)
                pInstance->SetData(DATA_KRIKTHIR_THE_GATEWATCHER_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);

            if (pInstance)
                pInstance->SetData(DATA_KRIKTHIR_THE_GATEWATCHER_EVENT, IN_PROGRESS);
        }

        void Summon()
        {
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[0],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[0],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[1],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[1],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[2],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[2],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[3],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[3],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_INFECTIOR,SpawnPoint[4],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[4],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_INFECTIOR,SpawnPoint[5],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[5],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_INFECTIOR,SpawnPoint[6],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[6],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[7],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
            me->SummonCreature(MOB_SKITTERING_SWARMER,SpawnPoint[7],TEMPSUMMON_TIMED_DESPAWN,25*IN_MILLISECONDS);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if (SummonTimer <= diff)
            {
                DoScriptText(RAND(SAY_SWARM_1, SAY_SWARM_2), me);

                Summon();
                SummonTimer = urand(20*IN_MILLISECONDS, 25*IN_MILLISECONDS);
            } else SummonTimer -= diff;

            if (MindFlayTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_MIND_FLAY);
                MindFlayTimer = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
            } else MindFlayTimer -= diff;

            if (CurseFatigueTimer <= diff)
            {
                if(Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    DoCast(pTarget, SPELL_CURSE_OF_FATIGUE);

                CurseFatigueTimer = 20*IN_MILLISECONDS;
            } else CurseFatigueTimer -= diff;

            if (!bFrenzy && HealthBelowPct(20))
            {
                me->InterruptNonMeleeSpells(true);
                DoCast(me, SPELL_FRENZY, true);
                bFrenzy = true;
            }

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH, me);

            if (!pInstance)
                return;

            pInstance->SetData(DATA_KRIKTHIR_THE_GATEWATCHER_EVENT, DONE);

            //Achievement: Watch him die
            Creature *pAdd = Unit::GetCreature(*me, pInstance->GetData64(DATA_WATCHER_GASHRA));
            if (!pAdd || !pAdd->isAlive())
                return;

            pAdd = Unit::GetCreature(*me, pInstance->GetData64(DATA_WATCHER_SILTHIK));
            if (!pAdd || !pAdd->isAlive())
                return;

            pAdd = Unit::GetCreature(*me, pInstance->GetData64(DATA_WATCHER_NARJIL));
            if (!pAdd || !pAdd->isAlive())
                return;

            pInstance->DoCompleteAchievement(ACHIEV_WATCH_HIM_DIE);
        }

        void KilledUnit(Unit * victim)
        {
            if (victim == me)
                return;

            DoScriptText(RAND(SAY_SLAY_1, SAY_SLAY_2), me);
        }

        void JustSummoned(Creature* summoned)
        {
            summoned->GetMotionMaster()->MovePoint(0, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ());
            lSummons.Summon(summoned);
        }

    private:
        InstanceScript* pInstance;
        uint32 MindFlayTimer;
        uint32 CurseFatigueTimer;
        uint32 SummonTimer;
        SummonList lSummons;
        bool bFrenzy;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new boss_krik_thirAI(creature);
    }
};

class npc_skittering_infector : public CreatureScript
{
public:
    npc_skittering_infector() : CreatureScript("npc_skittering_infector") { }

    struct npc_skittering_infectorAI : public ScriptedAI
    {
        npc_skittering_infectorAI(Creature *c) : ScriptedAI(c) {}

        void JustDied(Unit* /*killer*/)
        {
            //The spell is not working properly
            DoCast(me->getVictim(), SPELL_ACID_SPLASH, true);
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_skittering_infectorAI(creature);
    }
};

class npc_anub_ar_skirmisher : public CreatureScript
{
public:
    npc_anub_ar_skirmisher() : CreatureScript("npc_anub_ar_skirmisher") { }

    struct npc_anub_ar_skirmisherAI : public ScriptedAI
    {
        npc_anub_ar_skirmisherAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        {
            ChargeTimer   = 10*IN_MILLISECONDS;
            BackstabTimer = 7*IN_MILLISECONDS;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (ChargeTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true))
                {
                    DoCast(pTarget, SPELL_CHARGE, true);
                    pTarget->CastSpell(me, SPELL_FIXATE, true);
                }
                ChargeTimer = 15*IN_MILLISECONDS;
            } else ChargeTimer -= diff;

            if (BackstabTimer <= diff)
            {
                if (me->getVictim()->isInBackInMap(me, 5.0f, 1.5f))
                    DoCast(me->getVictim(), SPELL_BACKSTAB);
                BackstabTimer = 5*IN_MILLISECONDS;
            } else BackstabTimer -= diff;

            DoMeleeAttackIfReady();

        }

    private:
        uint32 ChargeTimer;
        uint32 BackstabTimer;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_anub_ar_skirmisherAI(creature);
    }
};

class npc_anub_ar_shadowcaster : public CreatureScript
{
public:
    npc_anub_ar_shadowcaster() : CreatureScript("npc_anub_ar_shadowcaster") { }

    struct npc_anub_ar_shadowcasterAI : public ScriptedAI
    {
        npc_anub_ar_shadowcasterAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        {
            ShadowBoltTimer = 6*IN_MILLISECONDS;
            ShadowNovaTimer = 12*IN_MILLISECONDS;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (ShadowBoltTimer <= diff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                     DoCast(pTarget, SPELL_SHADOW_BOLT);
                ShadowBoltTimer = 6*IN_MILLISECONDS;
            } else ShadowBoltTimer -= diff;

            if (ShadowNovaTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_SHADOW_NOVA, true);
                ShadowNovaTimer = 15*IN_MILLISECONDS;
            } else ShadowNovaTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        uint32 ShadowBoltTimer;
        uint32 ShadowNovaTimer;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_anub_ar_shadowcasterAI(creature);
    }
};

class npc_anub_ar_warrior : public CreatureScript
{
public:
    npc_anub_ar_warrior() : CreatureScript("npc_anub_ar_warrior") { }

    struct npc_anub_ar_warriorAI : public ScriptedAI
    {
        npc_anub_ar_warriorAI(Creature *c) : ScriptedAI(c){}

        void Reset()
        {
            CleaveTimer = 9*IN_MILLISECONDS;
            StrikeTimer = 6*IN_MILLISECONDS;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (StrikeTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_STRIKE, true);
                StrikeTimer = 9*IN_MILLISECONDS;
            } else StrikeTimer -= diff;

            if (CleaveTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_CLEAVE, true);
                CleaveTimer = 12*IN_MILLISECONDS;
            } else CleaveTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        uint32 CleaveTimer;
        uint32 StrikeTimer;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_anub_ar_warriorAI(creature);
    }
};

class npc_krikthir_watcher : public CreatureScript
{
public:
    npc_krikthir_watcher() : CreatureScript("npc_krikthir_watcher") { }

    struct npc_krikthir_watcherAI : public ScriptedAI
    {
        npc_krikthir_watcherAI(Creature *c) : ScriptedAI(c) 
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            switch (me->GetEntry())
            {
                // watcher narjil
                case 28729:
                    SpecialSpell = DUNGEON_MODE(SPELL_BLINDING_WEBS, H_SPELL_BLINDING_WEBS);
                    break;
                // watcher gashra
                case 28730:
                    SpecialSpell = SPELL_ENRAGE;
                    break;
                // watcher silthik
                case 28731: 
                    SpecialSpell = DUNGEON_MODE(SPELL_POSION_SPRAY, H_SPELL_POSION_SPRAY);
                    break;
                default:
                    SpecialSpell = 0;
                    break;
            }

            WebWrapTimer      = 10*IN_MILLISECONDS;
            InfectedBiteTimer = 6*IN_MILLISECONDS;
            SpecialSpellTimer = 15*IN_MILLISECONDS;

            EnwrapTimer       = 3*IN_MILLISECONDS;
            WrapTarget        = NULL;
            bEnwrapping         = false;

            if (pInstance)
                pInstance->SetData(DATA_KRIKTHIR_THE_GATEWATCHER_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (!pInstance)
                return;

            Creature *pKrikthir = Unit::GetCreature(*me, pInstance->GetData64(DATA_KRIKTHIR_THE_GATEWATCHER));
            if (pKrikthir && pKrikthir->isAlive())
                DoScriptText(RAND(SAY_SEND_GROUP_1, SAY_SEND_GROUP_2, SAY_SEND_GROUP_3), pKrikthir);

            pInstance->SetData(DATA_KRIKTHIR_THE_GATEWATCHER_EVENT, SPECIAL);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (bEnwrapping)
            {
                if (EnwrapTimer <= diff)
                {
                    if (Unit* pTarget = Unit::GetUnit((*me), WrapTarget))
                    {
                        pTarget->CastSpell(pTarget, SPELL_WEB_WRAP_STUN, true);
                        WrapTarget = NULL;
                    }
                    bEnwrapping = false;
                    EnwrapTimer = 3*IN_MILLISECONDS;
                } else EnwrapTimer -= diff;
            }

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if (WebWrapTimer <= diff)
            {
                Unit *pTarget = NULL;
                std::list<Unit *> playerList;
                SelectTargetList(playerList, 5, SELECT_TARGET_RANDOM, 40, true);
                for (std::list<Unit*>::const_iterator itr = playerList.begin(); itr != playerList.end(); ++itr)
                {
                    pTarget = (*itr);
                    if (!pTarget->HasAura(SPELL_WEB_WRAP) && !pTarget->HasAura(SPELL_WEB_WRAP_STUN))
                        break;  // found someone

                    pTarget = NULL;
                }
                // if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 40, true, -SPELL_WEB_WRAP_STUN)
                if (pTarget)
                {
                    bEnwrapping = true;
                    WrapTarget = pTarget->GetGUID();
                    DoCast(pTarget, SPELL_WEB_WRAP, false);
                }
                WebWrapTimer = 15*IN_MILLISECONDS;
            } else WebWrapTimer -= diff;

            if (InfectedBiteTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_INFECTED_BITE, true);
                InfectedBiteTimer = 15*IN_MILLISECONDS;
            } else InfectedBiteTimer -= diff;

            if (SpecialSpell)
                if (SpecialSpellTimer <= diff)
                {
                    DoCast(SpecialSpell);
                    SpecialSpellTimer = 20*IN_MILLISECONDS;
                } else SpecialSpellTimer -= diff;

            DoMeleeAttackIfReady();
        }

    private:
        InstanceScript* pInstance;
        uint32 WebWrapTimer;
        uint32 InfectedBiteTimer;
        uint32 SpecialSpell;
        uint32 SpecialSpellTimer;
        uint32 EnwrapTimer;
        bool bEnwrapping;
        uint64 WrapTarget;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_krikthir_watcherAI(creature);
    }
};

class npc_web_wrap : public CreatureScript
{
public:
    npc_web_wrap() : CreatureScript("npc_web_wrap") { }

    struct npc_web_wrapAI : public ScriptedAI
    {
        npc_web_wrapAI(Creature *c) : ScriptedAI(c) {}

        uint64 WrapTargetGUID;

        void Reset()
        { 
            WrapTargetGUID = 0; 
        }

        void EnterCombat(Unit* /*who*/) {}
        void AttackStart(Unit* /*who*/) {}
        void MoveInLineOfSight(Unit* /*who*/) {}

        void JustDied(Unit *killer)
        {
            if (WrapTargetGUID)
            {
                Unit* pTarget = Unit::GetUnit((*me), WrapTargetGUID);
                if (pTarget)
                    pTarget->RemoveAurasDueToSpell(SPELL_WEB_WRAP_STUN);
            }
            me->RemoveCorpse();
        }

        void UpdateAI(const uint32 /*diff*/)
        {
            // should not be here?
            if (Unit* pSummoner = CAST_SUM(me)->GetSummoner())
                WrapTargetGUID = pSummoner->GetGUID();

            Unit* temp = Unit::GetUnit((*me), WrapTargetGUID);
            if ((temp && temp->isAlive() && !temp->HasAura(SPELL_WEB_WRAP_STUN)) || !temp)
                me->DealDamage(me, me->GetHealth(), NULL, DIRECT_DAMAGE, SPELL_SCHOOL_MASK_NORMAL, NULL, false);
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_web_wrapAI(pCreature);
    }
};

void AddSC_boss_krik_thir()
{
    new boss_krik_thir();
    new npc_krikthir_watcher();
    new npc_skittering_infector();
    new npc_anub_ar_warrior();
    new npc_anub_ar_skirmisher();
    new npc_anub_ar_shadowcaster();
    new npc_web_wrap();
}