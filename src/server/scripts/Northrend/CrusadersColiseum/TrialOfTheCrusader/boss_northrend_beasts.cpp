/* Copyright (C) 2006 - 2010 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
/* ScriptData
SDName: northrend_beasts
SD%Complete: 90%
SDComment: based on /dev/rsa
SDCategory:
EndScriptData */

// Known bugs:
// Gormok - Not implemented as a vehicle
//        - Snobold Firebomb
//        - Snobolled (creature at back)
// Snakes - miss the 1-hitkill from emerging
//        - visual changes between mobile and stationary models seems not to work sometimes

#include "ScriptPCH.h"
#include "trial_of_the_crusader.h"

enum Yells
{
    //Gormok
    SAY_SNOBOLLED        = -1649000,
    //Acidmaw & Dreadscale
    SAY_SUBMERGE         = -1649010,
    SAY_EMERGE           = -1649011,
    SAY_BERSERK          = -1649012,
    //Icehowl
    SAY_TRAMPLE_STARE    = -1649020,
    SAY_TRAMPLE_FAIL     = -1649021,
    SAY_TRAMPLE_START    = -1649022,
};

enum Equipment
{
    EQUIP_MAIN           = 50760,
    EQUIP_OFFHAND        = 48040,
    EQUIP_RANGED         = 47267,
    EQUIP_DONE           = EQUIP_NO_CHANGE,
};

enum Model
{
    MODEL_ACIDMAW_STATIONARY     = 29815,
    MODEL_ACIDMAW_MOBILE         = 29816,
    MODEL_DREADSCALE_STATIONARY  = 26935,
    MODEL_DREADSCALE_MOBILE      = 24564,
};

enum Summons
{
    NPC_SNOBOLD_VASSAL   = 34800,
    NPC_SLIME_POOL       = 35176,
    NPC_FIREBOMB         = 34854,
};

enum BossSpells
{
    //Gormok
    SPELL_IMPALE            = 66331,
    SPELL_STAGGERING_STOMP  = 67648,
    SPELL_RISING_ANGER      = 66636,

    //Snobold
    SPELL_SNOBOLLED         = 66406,
    SPELL_BATTER            = 66408,
    SPELL_FIRE_BOMB         = 66313,
    SPELL_FIRE_BOMB_VISUAL  = 66317,
    SPELL_FIRE_BOMB_DOT     = 66318,
    SPELL_HEAD_CRACK        = 66407,

    //Acidmaw & Dreadscale
    SPELL_ACID_SPIT         = 66880,
    SPELL_PARALYTIC_SPRAY   = 66901,
    SPELL_ACID_SPEW         = 66819,
    SPELL_PARALYTIC_BITE    = 66824,
    SPELL_SWEEP_0           = 66794,
    SUMMON_SLIME_POOL       = 66883,
    SPELL_FIRE_SPIT         = 66796,
    SPELL_MOLTEN_SPEW       = 66821,
    SPELL_BURNING_BITE      = 66879,
    SPELL_BURNING_SPRAY     = 66902,
    SPELL_SWEEP_1           = 67646,
    SPELL_SUBMERGE_0        = 53421,
    SPELL_EMERGE_0          = 66947,
    SPELL_ENRAGE            = 68335,
    SPELL_SLIME_POOL_EFFECT = 66882, //In 60s it diameter grows from 10y to 40y (r=r+0.25 per second)

    //Icehowl
    SPELL_FEROCIOUS_BUTT    = 66770,
    SPELL_MASSIVE_CRASH     = 66683,
    SPELL_WHIRL             = 67345,
    SPELL_ARCTIC_BREATH     = 66689,
    SPELL_TRAMPLE           = 66734,
    SPELL_FROTHING_RAGE     = 66759,
    SPELL_STAGGERED_DAZE    = 66758,
};

class boss_gormok : public CreatureScript
{
public:
    boss_gormok() : CreatureScript("boss_gormok") { }

    struct boss_gormokAI : public ScriptedAI
    {
        boss_gormokAI(Creature* creature) : ScriptedAI(creature), Summons(me)
        {
            instance = (InstanceScript*)creature->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            ImpaleTimer = urand(8*IN_MILLISECONDS,10*IN_MILLISECONDS);
            StaggeringStompTimer = 15*IN_MILLISECONDS;
            SummonTimer = urand(15*IN_MILLISECONDS,30*IN_MILLISECONDS);
            NextBossTimer = 160*IN_MILLISECONDS;

            if (Is25ManRaid())
                SummonCount = 5;
            else
                SummonCount = 4;

            Summons.DespawnAll();
        }

        void JustDied(Unit* /*pKiller*/)
        {
            if (instance && NextBossTimer)
                instance->SetData(TYPE_NORTHREND_BEASTS, GORMOK_DONE);
        }

        void JustReachedHome()
        {
            if (instance)
            {
                instance->SetData(TYPE_NORTHREND_BEASTS, FAIL);
                instance->SetData(TYPE_NORTHREND_BEASTS, NOT_STARTED);
            }
            me->ForcedDespawn();
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoZoneInCombat();
            instance->SetData(TYPE_NORTHREND_BEASTS, GORMOK_IN_PROGRESS);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (IsHeroic() && NextBossTimer)
            if (NextBossTimer <= diff)
            {
                NextBossTimer = 0;
                instance->SetData(TYPE_NORTHREND_BEASTS, GORMOK_DONE);
            } else NextBossTimer -= diff;

            if (ImpaleTimer <= diff)
            {
                DoCast(me->getVictim(),SPELL_IMPALE);
                ImpaleTimer = urand(8*IN_MILLISECONDS,10*IN_MILLISECONDS);
            } else ImpaleTimer -= diff;

            if (StaggeringStompTimer <= diff)
            {
                DoCast(me->getVictim(),SPELL_STAGGERING_STOMP);
                StaggeringStompTimer = urand(20*IN_MILLISECONDS,21*IN_MILLISECONDS);
            } else StaggeringStompTimer -= diff;

            if (SummonTimer <= diff)
            {
                if (SummonCount > 0)
                {
                    FetchNextSnobold();
                    me->AddAura(SPELL_RISING_ANGER, me);
                    --SummonCount;
                }
                SummonTimer = 20*IN_MILLISECONDS;
            } else SummonTimer -= diff;

            DoMeleeAttackIfReady();
        }

		void DamageTaken(Unit * /*done_by*/, uint32 &damage)
        {
        	// Gormok meurt, on ejecte tout les snobolds
        	if (damage >= me->GetHealth())
        	{
        		if (Vehicle* vehicle = me->GetVehicleKit())
				{
					if (!vehicle->m_Seats.empty())
					{
						for (uint8 i=0 ; i< vehicle->m_Seats.size() ; i++)
						{
							if (Unit* passenger = vehicle->GetPassenger(i))
							{
								if (passenger->GetTypeId() == TYPEID_UNIT)
								{
									if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true))
									{
										passenger->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
										passenger->ExitVehicle();
										passenger->GetMotionMaster()->MoveJump(pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ(), 2.0f, 2.0f);
										passenger->CastSpell(pTarget, SPELL_SNOBOLLED, true);
										passenger->TauntApply(pTarget);
										passenger->AddThreat(pTarget,5000000.0f);
										passenger->ToCreature()->AI()->SetGUID(pTarget->GetGUID());
										passenger->ToCreature()->AI()->AttackStart(pTarget);
									}
								}
							}
						}
					}
				}
        	}
        }

        void FetchNextSnobold()
        {
            if (Vehicle* vehicle = me->GetVehicleKit())
            {
                if (!vehicle->m_Seats.empty())
                {
                    for (uint8 i=0 ; i< vehicle->m_Seats.size() ; i++)
                    {
                        if (Unit* passenger = vehicle->GetPassenger(i))
                        {
                            if (passenger->GetTypeId() == TYPEID_UNIT)
                            {
                                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1, 0, true))
                                {
                                    passenger->RemoveFlag(UNIT_FIELD_FLAGS,UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_OOC_NOT_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                                    passenger->ExitVehicle();
                                    passenger->GetMotionMaster()->MoveJump(pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ(), 2.0f, 2.0f);
                                    passenger->CastSpell(pTarget, SPELL_SNOBOLLED, true);
                                    passenger->TauntApply(pTarget);
                                    passenger->AddThreat(pTarget,5000000.0f);
                                    passenger->ToCreature()->AI()->SetGUID(pTarget->GetGUID());
                                    passenger->ToCreature()->AI()->AttackStart(pTarget);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }

    private:
        InstanceScript* instance;
        uint32 ImpaleTimer;
        uint32 StaggeringStompTimer;
        uint32 SummonTimer;
        uint32 SummonCount;
        uint32 NextBossTimer;
        SummonList Summons;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_gormokAI(creature);
    }
};

class mob_snobold_vassal : public CreatureScript
{
public:
    mob_snobold_vassal() : CreatureScript("mob_snobold_vassal") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_snobold_vassalAI(pCreature);
    }

    struct mob_snobold_vassalAI : public ScriptedAI
    {
        mob_snobold_vassalAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            m_pInstance = (InstanceScript*)pCreature->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            if (m_pInstance)
                m_pInstance->SetData(DATA_SNOBOLD_COUNT, INCREASE);
        }

        InstanceScript* m_pInstance;
        uint32 FireBombTimer;
        uint32 BatterTimer;
        uint32 HeadCrackTimer;
        uint64 BossGUID;
        uint64 TargetGUID;
        bool bHasHitTarget;
        float uiPositionX;
        float uiPositionY;

        void Reset()
        {
            FireBombTimer = urand(10000,15000);
            BatterTimer = 5000;
            HeadCrackTimer = 25000;

            TargetGUID = 0;
            if (m_pInstance)
                BossGUID = m_pInstance->GetData64(NPC_GORMOK);
        }

        void SetGUID(const uint64 &guid, int32 /*id*/ = 0)
        {
            TargetGUID = guid;
        }

        void EnterCombat(Unit *pWho)
        {
            DoZoneInCombat();
        }

        void DamageTaken(Unit* pDoneBy, uint32 &uiDamage)
        {
            if (pDoneBy->GetGUID()==TargetGUID)
                uiDamage = 0;
        }

        void JustDied(Unit* /*pKiller*/)
        {
            if (Unit *pTarget = Unit::GetPlayer(*me,TargetGUID))
                if (pTarget->isAlive())
                    pTarget->RemoveAurasDueToSpell(SPELL_SNOBOLLED);
            if (m_pInstance)
                m_pInstance->SetData(DATA_SNOBOLD_COUNT, DECREASE);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (Unit* pTarget = Unit::GetPlayer(*me,TargetGUID))
                if (!pTarget->isAlive())
                    if (m_pInstance)
                        if (Unit* pGormok = Unit::GetCreature(*me,m_pInstance->GetData64(NPC_GORMOK)))
                        {
                            if (pGormok->isAlive())
                            {
                                SetCombatMovement(false);
                                me->GetMotionMaster()->MoveJump(pGormok->GetPositionX(),pGormok->GetPositionY(),pGormok->GetPositionZ(),15.0f,15.0f);
                            }
                            else
                            {
                                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                                {
                                    TargetGUID = pTarget->GetGUID();
                                    me->TauntApply(pTarget);
        							me->AddThreat(pTarget,5000000.0f);
                                    DoCast(pTarget, SPELL_SNOBOLLED);
                                    me->GetMotionMaster()->MoveJump(pTarget->GetPositionX(),pTarget->GetPositionY(),pTarget->GetPositionZ(),15.0f,15.0f);
                                }
                            }
                        }

            if (FireBombTimer < uiDiff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, SPELL_FIRE_BOMB);
                FireBombTimer = urand(15000,25000);
            }
            else FireBombTimer -= uiDiff;

            if (BatterTimer < uiDiff)
            {
                if (Unit *pTarget = Unit::GetPlayer(*me,TargetGUID))
                    DoCast(pTarget, SPELL_BATTER);
                BatterTimer = 10000;
            }
            else BatterTimer -= uiDiff;

            if (HeadCrackTimer < uiDiff)
            {
                if (Unit *pTarget = Unit::GetPlayer(*me,TargetGUID))
                    DoCast(pTarget, SPELL_HEAD_CRACK);
                HeadCrackTimer = 35000;
            }
            else HeadCrackTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }
    };
};


struct boss_jormungarAI : public ScriptedAI
{
    boss_jormungarAI(Creature* creature) : ScriptedAI(creature)
    {
        instanceScript = creature->GetInstanceScript();
        me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
        me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
    }

    void Reset()
    {
        enraged = false;
        biteTimer = 15*IN_MILLISECONDS;
        spewTimer = 20*IN_MILLISECONDS;
        slimePoolTimer = 15*IN_MILLISECONDS;
        sprayTimer = 10*IN_MILLISECONDS;
        sweepTimer = 15*IN_MILLISECONDS;

        NextBossTimer = 160*IN_MILLISECONDS;
    }

    void JustDied(Unit* /*pKiller*/)
    {
        if (instanceScript)
        {
            if (Creature* otherWorm = Unit::GetCreature(*me, instanceScript->GetData64(otherWormEntry)))
            {
                if (!otherWorm->isAlive())
                {
                    if (NextBossTimer)
                        instanceScript->SetData(TYPE_NORTHREND_BEASTS, SNAKES_DONE);

                    me->DespawnOrUnsummon();
                    otherWorm->DespawnOrUnsummon();
                }
                else
                    instanceScript->SetData(TYPE_NORTHREND_BEASTS, SNAKES_SPECIAL);
            }
        }
    }

    void JustReachedHome()
    {
        if (instanceScript && instanceScript->GetData(TYPE_NORTHREND_BEASTS) != FAIL)
            instanceScript->SetData(TYPE_NORTHREND_BEASTS, FAIL);

        if (TempSummon* summ = me->ToTempSummon())
            summ->UnSummon();
        else
            me->ForcedDespawn();
    }

    void KilledUnit(Unit *pWho)
    {
        if (pWho->GetTypeId() == TYPEID_PLAYER)
        {
            if (instanceScript)
                instanceScript->SetData(DATA_TRIBUTE_TO_IMMORTALITY_ELEGIBLE, 0);
        }
    }

    void EnterCombat(Unit* /*pWho*/)
    {
        me->SetInCombatWithZone();
        if (instanceScript)
            instanceScript->SetData(TYPE_NORTHREND_BEASTS, SNAKES_IN_PROGRESS);
    }

    void UpdateAI(const uint32 uiDiff)
    {
        if (!UpdateVictim()) 
            return;

        if (IsHeroic() && NextBossTimer)            
        if (NextBossTimer <= uiDiff)
        {
            NextBossTimer = 0;
            if (Creature* otherWorm = Unit::GetCreature(*me, instanceScript->GetData64(otherWormEntry)))
            {
                if (otherWorm->isAlive())
                    if (boss_jormungarAI* bossjormungarAI = CAST_AI(boss_jormungarAI, otherWorm->GetAI()))
                    {
                        bossjormungarAI->NextBossTimer = 0;
                        instanceScript->SetData(TYPE_NORTHREND_BEASTS, SNAKES_DONE);
                    }
            }                
        } else NextBossTimer -= uiDiff;

        if (instanceScript && instanceScript->GetData(TYPE_NORTHREND_BEASTS) == SNAKES_SPECIAL && !enraged)
        {
            DoScriptText(SAY_EMERGE, me);
            me->RemoveAurasDueToSpell(SPELL_SUBMERGE_0);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            DoCast(SPELL_ENRAGE);
            enraged = true;
            DoScriptText(SAY_BERSERK, me);
        }

        switch (stage)
        {
            case 0: // Mobile
                if (biteTimer <= uiDiff)
                {
                    DoCastVictim(biteSpell);
                    biteTimer = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
                } else biteTimer -= uiDiff;

                if (spewTimer <= uiDiff)
                {
                    DoCastAOE(spewSpell);
                    spewTimer = urand(19*IN_MILLISECONDS, 20*IN_MILLISECONDS);
                } else spewTimer -= uiDiff;

                if (slimePoolTimer <= uiDiff)
                {
                    DoCast(SUMMON_SLIME_POOL);
                    slimePoolTimer = 30*IN_MILLISECONDS;
                } else slimePoolTimer -= uiDiff;

                if (submergeTimer <= uiDiff)
                {
                    stage = 1;
                    submergeTimer = 5*IN_MILLISECONDS;
                } else submergeTimer -= uiDiff;

                DoMeleeAttackIfReady();
                break;
            case 1: // Submerge
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                DoCast(me, SPELL_SUBMERGE_0);
                DoScriptText(SAY_SUBMERGE, me);
                me->SetVisible(false);
                me->GetMotionMaster()->MovePoint(0, ToCCommonLoc[1].GetPositionX()+urand(0, 80)-40, ToCCommonLoc[1].GetPositionY()+urand(0, 80)-40, ToCCommonLoc[1].GetPositionZ());
                stage = 2;
            case 2: // Wait til emerge
                if (submergeTimer <= uiDiff)
                {
                    stage = 3;
                    submergeTimer = 45*IN_MILLISECONDS;
                } else submergeTimer -= uiDiff;
                break;
            case 3: // Emerge
                me->SetVisible(true);
                me->SetDisplayId(modelStationary);
                DoScriptText(SAY_EMERGE, me);
                me->RemoveAurasDueToSpell(SPELL_SUBMERGE_0);
                DoCast(me, SPELL_EMERGE_0);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                SetCombatMovement(false);
                me->GetMotionMaster()->MoveIdle();
                stage = 4;
                break;
            case 4: // Stationary
                if (sprayTimer <= uiDiff)
                {
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        DoCast(pTarget, spraySpell);
                    sprayTimer = 20*IN_MILLISECONDS;
                } else sprayTimer -= uiDiff;

                if (sweepTimer <= uiDiff)
                {
                    DoCastAOE(SPELL_SWEEP_0);
                    sweepTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
                } else sweepTimer -= uiDiff;

                if (submergeTimer <= uiDiff)
                {
                    stage = 5;
                    submergeTimer = 10*IN_MILLISECONDS;
                } else submergeTimer -= uiDiff;

                DoSpellAttackIfReady(spitSpell);
                break;
            case 5: // Submerge
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISABLE_MOVE);
                DoCast(me, SPELL_SUBMERGE_0);
                DoScriptText(SAY_SUBMERGE, me);
                me->SetVisible(false);
                me->GetMotionMaster()->MovePoint(0, ToCCommonLoc[1].GetPositionX()+urand(0, 80)-40, ToCCommonLoc[1].GetPositionY()+urand(0, 80)-40, ToCCommonLoc[1].GetPositionZ());
                stage = 6;
            case 6: // Wait til emerge
                if (submergeTimer <= uiDiff)
                {
                    stage = 7;
                    submergeTimer = 45*IN_MILLISECONDS;
                } else submergeTimer -= uiDiff;
                break;
            case 7: // Emerge
                me->SetVisible(true);
                DoScriptText(SAY_EMERGE, me);
                me->RemoveAurasDueToSpell(SPELL_SUBMERGE_0);
                DoCast(me, SPELL_EMERGE_0);
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_OOC_NOT_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                SetCombatMovement(true);
                me->GetMotionMaster()->MoveChase(me->getVictim());
                stage = 0;
                break;
        }
    }

    InstanceScript* instanceScript;

    uint32 NextBossTimer;
    uint32 otherWormEntry;

    uint32 modelStationary;
    uint32 modelMobile;

    uint32 biteSpell;
    uint32 spewSpell;
    uint32 spitSpell;
    uint32 spraySpell;

    uint32 biteTimer;
    uint32 spewTimer;
    uint32 slimePoolTimer;
    uint32 sprayTimer;
    uint32 sweepTimer;
    uint32 submergeTimer;
    uint8  stage;
    bool   enraged;
};



class boss_acidmaw : public CreatureScript
{
    public:
    boss_acidmaw() : CreatureScript("boss_acidmaw") { }

    struct boss_acidmawAI : public boss_jormungarAI
    {
        boss_acidmawAI(Creature* pCreature) : boss_jormungarAI(pCreature) 
        { 
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            boss_jormungarAI::Reset();
            biteSpell = SPELL_PARALYTIC_BITE;
            spewSpell = SPELL_ACID_SPEW;
            spitSpell = SPELL_ACID_SPIT;
            spraySpell = SPELL_PARALYTIC_SPRAY;
            modelStationary = MODEL_ACIDMAW_STATIONARY;
            modelMobile = MODEL_ACIDMAW_MOBILE;
            otherWormEntry = NPC_DREADSCALE;

            submergeTimer = 500;
            stage = 2;
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_acidmawAI(creature);
    }
};

class boss_dreadscale : public CreatureScript
{
public:
    boss_dreadscale() : CreatureScript("boss_dreadscale") { }

    struct boss_dreadscaleAI : public boss_jormungarAI
    {
        boss_dreadscaleAI(Creature* pCreature) : boss_jormungarAI(pCreature) 
        { 
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        void Reset()
        {
            boss_jormungarAI::Reset();
            biteSpell = SPELL_BURNING_BITE;
            spewSpell = SPELL_MOLTEN_SPEW;
            spitSpell = SPELL_FIRE_SPIT;
            spraySpell = SPELL_BURNING_SPRAY;
            modelStationary = MODEL_DREADSCALE_STATIONARY;
            modelMobile = MODEL_DREADSCALE_MOBILE;
            otherWormEntry = NPC_ACIDMAW;

            submergeTimer = 45 * IN_MILLISECONDS;
            stage = 0;
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_dreadscaleAI(pCreature);
    }
};


class mob_slime_pool : public CreatureScript
{
public:
    mob_slime_pool() : CreatureScript("mob_slime_pool") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_slime_poolAI(creature);
    }

    struct mob_slime_poolAI : public ScriptedAI
    {
        mob_slime_poolAI(Creature *creature) : ScriptedAI(creature)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
        }

        bool casted;
        void Reset()
        {
            casted = false;
            me->SetReactState(REACT_PASSIVE);
            me->ForcedDespawn(60*IN_MILLISECONDS);
        }

        void UpdateAI(const uint32 /*diff*/)
        {
            if (!casted)
            {
                casted = true;
                DoCast(me, SPELL_SLIME_POOL_EFFECT);
            }
        }
    };
};

class boss_icehowl : public CreatureScript
{
public:
    boss_icehowl() : CreatureScript("boss_icehowl") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_icehowlAI(pCreature);
    }

    struct boss_icehowlAI : public ScriptedAI
    {
        boss_icehowlAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            m_pInstance = (InstanceScript*)pCreature->GetInstanceScript();
        }

        InstanceScript* m_pInstance;

        uint32 m_uiFerociousButtTimer;
        uint32 m_uiArticBreathTimer;
        uint32 m_uiWhirlTimer;
        uint32 m_uiMassiveCrashTimer;
        uint32 m_uiTrampleTimer;
        float  m_fTrampleTargetX, m_fTrampleTargetY, m_fTrampleTargetZ;
        uint64 m_uiTrampleTargetGUID;
        bool   m_bMovementStarted;
        bool   m_bMovementFinish;
        bool   m_bTrampleCasted;
        uint8  m_uiStage;
        Unit*  pTarget;

        void Reset()
        {
            m_uiFerociousButtTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            m_uiArticBreathTimer = urand(25*IN_MILLISECONDS, 40*IN_MILLISECONDS);
            m_uiWhirlTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
            m_uiMassiveCrashTimer = 30*IN_MILLISECONDS;
            m_uiTrampleTimer = IN_MILLISECONDS;
            m_bMovementStarted = false;
            m_bMovementFinish = false;
            m_bTrampleCasted = false;
            m_uiTrampleTargetGUID = 0;
            m_fTrampleTargetX = 0;
            m_fTrampleTargetY = 0;
            m_fTrampleTargetZ = 0;
            m_uiStage = 0;
        }

        void JustDied(Unit* /*pKiller*/)
        {
            if (m_pInstance)
                m_pInstance->SetData(TYPE_NORTHREND_BEASTS, ICEHOWL_DONE);
        }

        void MovementInform(uint32 uiType, uint32 uiId)
        {
            if (uiType != POINT_MOTION_TYPE) return;

            switch (uiId)
            {
                case 0: // JUMP!? Fuck! THAT'S BEEZARR! Would someone PLEASE make MotionMaster->Move* work better?
                    if (me->GetDistance2d(ToCCommonLoc[1].GetPositionX(), ToCCommonLoc[1].GetPositionY()) < 6.0f)
                    {
                        // Middle of the room
                        m_uiStage = 1;
                    }
                    else
                    {
                        // Landed from Hop backwards (start trample)
                        if (Unit::GetPlayer(*me, m_uiTrampleTargetGUID))
                        {
                            m_uiStage = 4;
                        } else m_uiStage = 6;
                    }
                    break;
                case 1: // Finish trample
                    m_bMovementFinish = true;
                    break;
            }
        }

        void JustReachedHome()
        {
            if (m_pInstance)
                m_pInstance->SetData(TYPE_NORTHREND_BEASTS, FAIL);
            me->DespawnOrUnsummon();
        }

        void KilledUnit(Unit *pWho)
        {
            if (pWho->GetTypeId() == TYPEID_PLAYER)
            {
                if (m_pInstance)
                    m_pInstance->SetData(DATA_TRIBUTE_TO_IMMORTALITY_ELEGIBLE, 0);
            }
        }

        void EnterCombat(Unit* /*pWho*/)
        {
            if (m_pInstance)
                m_pInstance->SetData(TYPE_NORTHREND_BEASTS, ICEHOWL_IN_PROGRESS);
            me->SetInCombatWithZone();
        }

        void SpellHitTarget(Unit* target, const SpellEntry* spell)
        {
            if (spell->Id == SPELL_TRAMPLE && target->GetTypeId() == TYPEID_PLAYER)
            {
                if (!m_bTrampleCasted)
                {
                    DoCast(me, SPELL_FROTHING_RAGE, true);
                    m_bTrampleCasted = true;
                }
            }
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            switch (m_uiStage)
            {
                case 0:
                    if (m_uiFerociousButtTimer <= uiDiff)
                    {
                        DoCastVictim(SPELL_FEROCIOUS_BUTT);
                        m_uiFerociousButtTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
                    } else m_uiFerociousButtTimer -= uiDiff;

                    if (m_uiArticBreathTimer <= uiDiff)
                    {
                        if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(pTarget, SPELL_ARCTIC_BREATH);
                        m_uiArticBreathTimer = urand(25*IN_MILLISECONDS, 30*IN_MILLISECONDS);
                    } else m_uiArticBreathTimer -= uiDiff;

                    if (m_uiWhirlTimer <= uiDiff)
                    {
                        DoCastAOE(SPELL_WHIRL);
                        m_uiWhirlTimer = urand(15*IN_MILLISECONDS, 30*IN_MILLISECONDS);
                    } else m_uiWhirlTimer -= uiDiff;

                    if (m_uiMassiveCrashTimer <= uiDiff)
                    {
                        me->GetMotionMaster()->MoveJump(ToCCommonLoc[1].GetPositionX(), ToCCommonLoc[1].GetPositionY(), ToCCommonLoc[1].GetPositionZ(), 30.0f, 15.0f); // 1: Middle of the room
                        m_uiStage = 7; //Invalid (Do nothing more than move)
                        m_uiMassiveCrashTimer = 40*IN_MILLISECONDS;
                    } else m_uiMassiveCrashTimer -= uiDiff;

                    DoMeleeAttackIfReady();
                    break;
                case 1:
                    DoCastAOE(SPELL_MASSIVE_CRASH);
                    m_uiStage = 2;
                    break;
                case 2:
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 0, true))
                    {
                        m_uiTrampleTargetGUID = pTarget->GetGUID();
                        me->SetUInt64Value(UNIT_FIELD_TARGET, m_uiTrampleTargetGUID);
                        DoScriptText(SAY_TRAMPLE_STARE, me, pTarget);
                        m_bTrampleCasted = false;
                        SetCombatMovement(false);
                        me->GetMotionMaster()->MoveIdle();
                        me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                        m_uiTrampleTimer = 5*IN_MILLISECONDS;
                        m_uiStage = 3;
                    } else m_uiStage = 6;
                    break;
                case 3:
                    if (m_uiTrampleTimer <= uiDiff)
                    {
                        if (Unit* pTarget = Unit::GetPlayer(*me, m_uiTrampleTargetGUID))
                        {
                            m_bTrampleCasted = false;
                            m_bMovementStarted = true;
                            m_fTrampleTargetX = pTarget->GetPositionX();
                            m_fTrampleTargetY = pTarget->GetPositionY();
                            m_fTrampleTargetZ = pTarget->GetPositionZ();
                            me->GetMotionMaster()->MoveJump(2*me->GetPositionX()-m_fTrampleTargetX,2*me->GetPositionY()-m_fTrampleTargetY,me->GetPositionZ(), 30.0f, 15.0f); // 2: Hop Backwards
                            me->SetUInt64Value(UNIT_FIELD_TARGET, m_uiTrampleTargetGUID);
                            m_uiStage = 7; //Invalid (Do nothing more than move)
                        } else m_uiStage = 6;
                    } else m_uiTrampleTimer -= uiDiff;
                    break;
                case 4:
                    DoScriptText(SAY_TRAMPLE_START, me);
                    me->GetMotionMaster()->MoveCharge(m_fTrampleTargetX, m_fTrampleTargetY, m_fTrampleTargetZ+2, 60, 1);
                    me->SetUInt64Value(UNIT_FIELD_TARGET, 0);
                    m_uiStage = 5;
                    break;
                case 5:
                    if (m_bMovementFinish)
                    {
                        if (m_uiTrampleTimer <= uiDiff) DoCastAOE(SPELL_TRAMPLE);
                        m_bMovementFinish = false;
                        m_uiStage = 6;
                        return;
                    }
                    if (m_uiTrampleTimer <= uiDiff)
                    {
                        Map::PlayerList const &lPlayers = me->GetMap()->GetPlayers();
                        for (Map::PlayerList::const_iterator itr = lPlayers.begin(); itr != lPlayers.end(); ++itr)
                        {
                        if (Unit* pPlayer = itr->getSource())
                            if (pPlayer->isAlive() && pPlayer->IsWithinDistInMap(me, 6.0f))
                            {
                                DoCastAOE(SPELL_TRAMPLE);
                                m_uiTrampleTimer = IN_MILLISECONDS;
                                break;
                            }
                        }
                    } else m_uiTrampleTimer -= uiDiff;
                    break;
                case 6:
                    if (!m_bTrampleCasted)
                    {
                        DoCast(me, SPELL_STAGGERED_DAZE);
                        DoScriptText(SAY_TRAMPLE_FAIL, me);
                    }
                    m_bMovementStarted = false;
                    me->GetMotionMaster()->MovementExpired();
                    me->GetMotionMaster()->MoveChase(me->getVictim());
                    SetCombatMovement(true);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    m_uiStage = 0;
                    break;
            }
        }
    };
};

class spell_snowbold_fire : public SpellScriptLoader
{
    public:
        spell_snowbold_fire() : SpellScriptLoader("spell_snowbold_fire") { }

        class spell_snowbold_fire_SpellScript : public SpellScript
        {
            PrepareSpellScript(spell_snowbold_fire_SpellScript);

            bool Validate(SpellEntry const* /*spell*/)
            {
                if (!sSpellStore.LookupEntry(SPELL_FIRE_BOMB_VISUAL))
                    return false;
                return true;
            }

            void HandleTriggerMissile(SpellEffIndex effIndex)
            {
                PreventHitDefaultEffect(effIndex);
                if (Position* pos = GetTargetDest())
                    if (TempSummon* summon = GetCaster()->SummonCreature(NPC_FIREBOMB, *pos, TEMPSUMMON_TIMED_DESPAWN, 60000))
                        summon->CastSpell(summon, SPELL_FIRE_BOMB_VISUAL, true);
            }

            void Register()
            {
                OnEffect += SpellEffectFn(spell_snowbold_fire_SpellScript::HandleTriggerMissile, EFFECT_1, SPELL_EFFECT_TRIGGER_MISSILE);
            }
        };

        SpellScript* GetSpellScript() const
        {
            return new spell_snowbold_fire_SpellScript();
        }
};

enum Spells
{
    SPELL_PARALYTIC_TOXIN_10_N  = 66823,
    SPELL_PARALYTIC_TOXIN_25_N  = 67618,
    SPELL_PARALYTIC_TOXIN_10_H  = 67619,
    SPELL_PARALYTIC_TOXIN_25_H  = 67620,
};

class spell_gen_burning_bile : public SpellScriptLoader
{
public:
    spell_gen_burning_bile() : SpellScriptLoader("spell_gen_burning_bile") { }

    class spell_gen_burning_bile_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_gen_burning_bile_SpellScript)

        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            if (Unit * target = GetHitUnit())
                target->RemoveAura(SPELL_PARALYTIC_TOXIN_10_N);
            if (Unit * target = GetHitUnit())
                target->RemoveAura(SPELL_PARALYTIC_TOXIN_25_N);
            if (Unit * target = GetHitUnit())
                target->RemoveAura(SPELL_PARALYTIC_TOXIN_10_H);
            if (Unit * target = GetHitUnit())
                target->RemoveAura(SPELL_PARALYTIC_TOXIN_25_H);
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_gen_burning_bile_SpellScript::HandleScript, EFFECT_1, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_gen_burning_bile_SpellScript();
    }
};

void AddSC_boss_northrend_beasts()
{
    new boss_gormok();
    new mob_snobold_vassal();
    new boss_acidmaw();
    new boss_dreadscale();
    new mob_slime_pool();
    new boss_icehowl();
    new spell_snowbold_fire();
    new spell_gen_burning_bile();
}
