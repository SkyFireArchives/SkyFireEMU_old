/* Copyright (C) 2008 - 2011 Trinity <http://www.trinitycore.org/>
 * Copyright (C) 2006 - 2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
* This program is free software licensed under GPL version 2
* Please see the included DOCS/LICENSE.TXT for more information */

/* Script Data Start
SDName: Boss svala
SDAuthor: Tartalo
SD%Complete:
SDComment:
SDCategory:
Script Data End */

#include "ScriptPCH.h"
#include "utgarde_pinnacle.h"

enum Spells
{
    SPELL_CALL_FLAMES                        = 48258,
    SPELL_RITUAL_OF_THE_SWORD                = 48276, //Effect #1 Teleport,  Effect #2 Dummy
    SPELL_RITUAL_OF_THE_SWORD_DISARM         = 54159,
    SPELL_SINISTER_STRIKE                    = 15667,
    H_SPELL_SINISTER_STRIKE                  = 59409,
    SPELL_SVALA_TRANSFORMING1                = 54140,
    SPELL_SVALA_TRANSFORMING2                = 54205,
    SPELL_BALL_OF_FLAME                      = 48246,
    SPELL_TRANSFORMING_CHANNEL               = 54142,
    SPELL_RITUAL_STRIKE                      = 48277,
    SPELL_RITUAL_STRIKE_DOT                  = 59930,
    SPELL_RITUAL_STRIKE_TRIGGER              = 48331,
    SPELL_ARTHAS_VISUAL                      = 54134,
};

enum Yells
{
    SAY_DIALOG_WITH_ARTHAS_1                      = -1575015,
    SAY_DIALOG_WITH_ARTHAS_2                      = -1575016,
    SAY_DIALOG_WITH_ARTHAS_3                      = -1575017,
    SAY_AGGRO                                     = -1575018,
    SAY_SLAY_1                                    = -1575019,
    SAY_SLAY_2                                    = -1575020,
    SAY_SLAY_3                                    = -1575021,
    SAY_DEATH                                     = -1575022,
    SAY_SACRIFICE_PLAYER_1                        = -1575023,
    SAY_SACRIFICE_PLAYER_2                        = -1575024,
    SAY_SACRIFICE_PLAYER_3                        = -1575025,
    SAY_SACRIFICE_PLAYER_4                        = -1575026,
    SAY_SACRIFICE_PLAYER_5                        = -1575027,
    SAY_DIALOG_OF_ARTHAS_1                        = -1575038, // 
    SAY_DIALOG_OF_ARTHAS_2                        = -1575039  // 14733
};
enum Creatures
{
    CREATURE_ARTHAS                          = 29280, // Image of Arthas
    CREATURE_SVALA_SORROWGRAVE               = 26668, // Svala after transformation
    CREATURE_SVALA                           = 29281, // Svala before transformation
    CREATURE_RITUAL_CHANNELER                = 27281,
    CREATURE_SCOURGE_HULK                    = 26555,
};
enum ChannelerSpells
{
    //ritual channeler's spells
    SPELL_PARALYZE                           = 48278,
    SPELL_SHADOWS_IN_THE_DARK                = 59407
};
enum Misc
{
    DATA_SVALA_DISPLAY_ID                    = 25944,
};
enum IntroPhase
{
    IDLE,
    INTRO,
    FINISHED
};
enum CombatPhase
{
    NORMAL,
    SACRIFICING
};
enum DisplayIds
{
    DISPLAY_SVALA_WITH_SWORD                = 26096,
};
enum Achievements
{
    ACHIEV_INCREDIBLE_HULK                   = 2043
};
static Position RitualChannelerPos[]=
{
    {296.42f, -355.01f, 90.94f},
    {302.36f, -352.01f, 90.54f},
    {291.39f, -350.89f, 90.54f}
};

class boss_svala : public CreatureScript
{
public:
    boss_svala() : CreatureScript("boss_svala") { }

    struct boss_svalaAI : public ScriptedAI
    {
        uint64 uiDoodadMirror;
        IntroPhase Phase;
    
        boss_svalaAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            Phase = IDLE;
            IntroTimer = 1*IN_MILLISECONDS;
            IntroPhase = 0;
            Arthas = 0;

            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);

            if (pInstance)
                if (pInstance->GetData(DATA_SVALA_SORROWGRAVE_EVENT) != DONE)
                {
                    pInstance->SetData(DATA_SVALA_SORROWGRAVE_EVENT, NOT_STARTED);
                }
                else Phase = FINISHED;

            uiDoodadMirror = pInstance? pInstance->GetData64(DATA_DOODAD_UTGARDE_MIRROR_FX01) : NULL;
        }

        void MoveInLineOfSight(Unit* pWho)
        {
            if (!pWho)
                return;

            if (Phase == IDLE && pWho->isTargetableForAttack() && me->IsHostileTo(pWho) && me->IsWithinDistInMap(pWho, 40))
            {
                Phase = INTRO;
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);

                if (Creature* pArthas = me->SummonCreature(CREATURE_ARTHAS, 295.81f, -366.16f, 92.57f, 1.58f, TEMPSUMMON_MANUAL_DESPAWN))
                {
                    pArthas->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE|UNIT_FLAG_DISABLE_MOVE);
                    Arthas = pArthas->GetGUID();
                    if (GameObject* go = GameObject::GetGameObject(*me, uiDoodadMirror))
                        go->Use(me);
                }
            
            }
        }

        void AttackStart(Unit* who) {}

        void UpdateAI(const uint32 diff)
        {
            if (Phase != INTRO)
                return;

            if (IntroTimer <= diff)
            {
                switch (IntroPhase)
                {
                    case 0:
                        DoScriptText(SAY_DIALOG_WITH_ARTHAS_1, me);
                        ++IntroPhase;
                        IntroTimer = 8*IN_MILLISECONDS;
                        break;
                    case 1:
                        if (Creature* pArthas = Creature::GetCreature(*me, Arthas))
                            DoScriptText(SAY_DIALOG_OF_ARTHAS_1, pArthas);
                        ++IntroPhase;
                        IntroTimer = 10*IN_MILLISECONDS;
                        break;
                    case 2:
                        DoCast(me, SPELL_SVALA_TRANSFORMING1);
                        if (Creature* pArthas = Creature::GetCreature(*me, Arthas))
                            pArthas->CastSpell(me, SPELL_TRANSFORMING_CHANNEL, false);
                        me->GetMotionMaster()->MovePoint(0, 296.0, -346.0, 95.0);
                        ++IntroPhase;
                        IntroTimer = 8*IN_MILLISECONDS;
                        break;
                    case 3:
                        DoCast(me, SPELL_SVALA_TRANSFORMING2);
                        ++IntroPhase;
                        IntroTimer = 200;
                        break;
                    case 4:
                        if (Creature* pSvalaSorrowgrave = me->SummonCreature(CREATURE_SVALA_SORROWGRAVE, 296.632f, -346.075f, 95.6307f, 1.58f, TEMPSUMMON_CORPSE_TIMED_DESPAWN, 60*IN_MILLISECONDS))
                        {
                            if (Creature* pArthas = Creature::GetCreature(*me, Arthas))
                                pArthas->CastStop();
                            SvalaGuid = pSvalaSorrowgrave->GetGUID();
                            pSvalaSorrowgrave->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                            me->SetDisplayId(DATA_SVALA_DISPLAY_ID);
                            me->SetVisible(false);
                            DoScriptText(SAY_DIALOG_WITH_ARTHAS_2, pSvalaSorrowgrave);
                            ++IntroPhase;
                            IntroTimer = 12*IN_MILLISECONDS;
                        }
                        else 
                           Reset();
                        break;
                    case 5:
                        if (Creature* pArthas = Creature::GetCreature(*me, Arthas))
                            DoScriptText(SAY_DIALOG_OF_ARTHAS_2, pArthas);
                        ++IntroPhase;
                        IntroTimer = 9*IN_MILLISECONDS;
                        break;
                    case 6:
                         if (Creature* pSvalaSorrowgrave = Creature::GetCreature(*me, SvalaGuid))
                             DoScriptText(SAY_DIALOG_WITH_ARTHAS_3, pSvalaSorrowgrave);
                         if (Creature* pArthas = Creature::GetCreature(*me, Arthas))
                            pArthas->SetVisible(false);
                         ++IntroPhase;
                         IntroTimer = 15*IN_MILLISECONDS;
                         break;
                    case 7:
                        if (Creature* pSvalaSorrowgrave = Creature::GetCreature(*me, SvalaGuid))
                            pSvalaSorrowgrave->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE|UNIT_FLAG_NOT_SELECTABLE);
                        if (Creature* pArthas = Creature::GetCreature(*me, Arthas))
                            pArthas->DisappearAndDie();
                        Phase = FINISHED;
                }
            } else IntroTimer -= diff;
        }

    private:
        uint32 IntroTimer;
        uint8 IntroPhase;
        uint64 SvalaGuid;
        uint64 Arthas;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_svalaAI (pCreature);
    }
};

class mob_ritual_channeler : public CreatureScript
{
public:
    mob_ritual_channeler() : CreatureScript("mob_ritual_channeler") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_ritual_channelerAI(pCreature);
    }


    struct mob_ritual_channelerAI : public Scripted_NoMovementAI
    {
        mob_ritual_channelerAI(Creature *c) :Scripted_NoMovementAI(c)
        {
            pInstance = c->GetInstanceScript();
        }

        InstanceScript* pInstance;

        void Reset()
        {
    	    if (IsHeroic())
                DoCast(me, SPELL_SHADOWS_IN_THE_DARK);
        }

        // called by svala sorrowgrave to set guid of victim
        void SetGUID(const uint64 &guid, int32 id) 
        {
            if (Unit *pVictim = me->GetUnit(*me, guid))
            {
                DoCast(pVictim, SPELL_PARALYZE);
            }
        }
    };
};

class boss_svala_sorrowgrave : public CreatureScript
{
public:
    boss_svala_sorrowgrave() : CreatureScript("boss_svala_sorrowgrave") { }

    struct boss_svala_sorrowgraveAI : public ScriptedAI
    {
        boss_svala_sorrowgraveAI(Creature *c) : ScriptedAI(c), summons(c)
        {
            pInstance = c->GetInstanceScript();
        }

        void Reset()
        {
            me->CastStop();
            me->SetReactState(REACT_DEFENSIVE);
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_DISARMED);
            FlameBrazier1 = pInstance? pInstance->GetData64(DATA_FLAME_BRAZIER_1) : NULL;
            FlameBrazier2 = pInstance? pInstance->GetData64(DATA_FLAME_BRAZIER_2) : NULL;
            RitualTarget = pInstance? pInstance->GetData64(DATA_RITUAL_TARGET) : NULL;
            uiDoodadMirror   = pInstance? pInstance->GetData64(DATA_DOODAD_UTGARDE_MIRROR_FX01) : NULL;
            SinsterStrikeTimer = 7*IN_MILLISECONDS;
            CallFlamesTimer = 10*IN_MILLISECONDS;
            SacrificeTimer = 2*IN_MILLISECONDS;
            FlamesCount = 0;
            HealthAmountModifier = 1;
            MoveTimer = 23*IN_MILLISECONDS;
        
            bFlames = false;
            bMove = true;

            Phase = NORMAL;

            me->SetUnitMovementFlags(MOVEMENTFLAG_LEVITATING);

            summons.DespawnAll();
            pSacrificeTarget = NULL;

            if (pInstance)
                pInstance->SetData(DATA_SVALA_SORROWGRAVE_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* who)
        {
            me->SetReactState(REACT_AGGRESSIVE);
            DoScriptText(SAY_AGGRO, me);

            if (pInstance)
                pInstance->SetData(DATA_SVALA_SORROWGRAVE_EVENT, IN_PROGRESS);
            
            if (GameObject* go = GameObject::GetGameObject(*me, uiDoodadMirror))
                go->ResetDoorOrButton();
        }

        void JustSummoned(Creature *summon)
        {
            summons.Summon(summon);
        }

        void SummonedCreatureDespawn(Creature *summon)
        {
            summons.Despawn(summon);
        }
    
        void SpellHitTarget(Unit *pTarget, const SpellEntry *spell) 
        {
            if (spell->Id == SPELL_RITUAL_STRIKE_DOT)
                if (IsHeroic())
                    pTarget->RemoveAurasDueToSpell(SPELL_RITUAL_STRIKE);
                else
                    pTarget->RemoveAurasDueToSpell(SPELL_RITUAL_STRIKE_DOT);
        }
    
        void KilledUnit(Unit* who)
        {
            DoScriptText(RAND(SAY_SLAY_1, SAY_SLAY_2, SAY_SLAY_3), me);
            if (IsHeroic() && who->GetEntry() == CREATURE_SCOURGE_HULK)
                pInstance->DoCompleteAchievement(ACHIEV_INCREDIBLE_HULK);
        }

        void UpdateAI(const uint32 diff)
        {
            if (Phase == NORMAL)
            {
                if (!bMove && MoveTimer > diff)
                {
                    MoveTimer -= diff;
                    return;
                }
                else if (!bMove)
                {
                    DoStartMovement(me->getVictim());
                    pSacrificeTarget = NULL;
                    bMove = true;
                }
                //Return since we have no target
                if (!UpdateVictim())
                    return;

                if (SinsterStrikeTimer <= diff)
                {
                    DoCast(me->getVictim(), DUNGEON_MODE(SPELL_SINISTER_STRIKE, H_SPELL_SINISTER_STRIKE));
                    SinsterStrikeTimer = urand(5*IN_MILLISECONDS, 9*IN_MILLISECONDS);
                } else SinsterStrikeTimer -= diff;

                if (CallFlamesTimer <= diff) //move to send event scripts?
                {
                    if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    {
                        if (!bFlames)
                        {
                            DoCast(pTarget, SPELL_CALL_FLAMES);
                            bFlames = true;
                        }

                        if (FlamesCount < 3)
                        {
                            if (Creature* pBrazier = Creature::GetCreature(*me, RAND(FlameBrazier1, FlameBrazier2))) 
                            {
                                if (IsHeroic())   // find correct spell
                                {
                                    int dmg = 3825 + rand()%1350;
                                    pBrazier->CastCustomSpell(pBrazier, SPELL_BALL_OF_FLAME, &dmg, 0, 0, true);
                                }
                                else
                                    pBrazier->CastSpell(pBrazier, SPELL_BALL_OF_FLAME, true);
                            }
                            CallFlamesTimer = 1*IN_MILLISECONDS;
                            ++FlamesCount;
                        }
                        else
                        { 
                            bFlames = false;
                            CallFlamesTimer = urand(20*IN_MILLISECONDS, 35*IN_MILLISECONDS);
                            FlamesCount = 0;
                        }
                    }
                } else CallFlamesTimer -= diff;

                if ((me->GetHealth()*100 / me->GetMaxHealth()) < (100-(25*HealthAmountModifier)))
                {
                    ++HealthAmountModifier;

                    pSacrificeTarget = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true);
                    if (pSacrificeTarget)
                    {
                        DoScriptText(RAND(SAY_SACRIFICE_PLAYER_1, SAY_SACRIFICE_PLAYER_2, SAY_SACRIFICE_PLAYER_3, SAY_SACRIFICE_PLAYER_4, SAY_SACRIFICE_PLAYER_5), me);
                        me->GetMotionMaster()->Clear();
                        DoCast(pSacrificeTarget, SPELL_RITUAL_OF_THE_SWORD);
                        DoTeleportPlayer(pSacrificeTarget, 296.632f, -346.075f, 90.63f, 4.6f);
                        Phase = SACRIFICING;

                        for (uint8 i = 0; i < 3; ++i)
                            if (Creature* pRitualChanneler = me->SummonCreature(CREATURE_RITUAL_CHANNELER, RitualChannelerPos[i], TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN, 100*HOUR))
                                if (pRitualChanneler->AI())
                                    pRitualChanneler->AI()->SetGUID(pSacrificeTarget->GetGUID());
                    }
                }

                DoMeleeAttackIfReady();
            }
            else  //SACRIFICING
            {
                if (SacrificeTimer <= diff)
                {
                    Creature* pTarget = Creature::GetCreature(*me, RitualTarget);
                    if (pTarget)
                    {
                        DoCast(me, SPELL_RITUAL_STRIKE_TRIGGER, true);
                        DoCast(me, SPELL_RITUAL_OF_THE_SWORD_DISARM, true);
                    }
                    bMove = false;
                    Phase = NORMAL;
                    MoveTimer = 23*IN_MILLISECONDS;
                    SacrificeTimer = 2*IN_MILLISECONDS;
                    SinsterStrikeTimer = urand(10*IN_MILLISECONDS, 15*IN_MILLISECONDS);
                    CallFlamesTimer = urand(13*IN_MILLISECONDS, 18*IN_MILLISECONDS);
                }
                else SacrificeTimer -= diff;
            }
        }

        void JustDied(Unit* pKiller)
        {
            if (pInstance)
            {
                Creature* pSvala = Unit::GetCreature((*me), pInstance->GetData64(DATA_SVALA));
                if (pSvala && pSvala->isAlive())
                    pKiller->Kill(pSvala);

                pInstance->SetData(DATA_SVALA_SORROWGRAVE_EVENT, DONE);
            }
            DoScriptText(SAY_DEATH, me);
        }

    private:
        bool bFlames;
        bool bMove;
    
        uint64 FlameBrazier1;
        uint64 FlameBrazier2;
        uint64 RitualTarget;
        uint32 SinsterStrikeTimer;
        uint32 CallFlamesTimer;
        uint8 FlamesCount;
        uint32 SacrificeTimer;
        uint32 MoveTimer;
        uint32 HealthAmountModifier;
        uint64 uiDoodadMirror;
        CombatPhase Phase;
        SummonList summons;
        Unit* pSacrificeTarget;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_svala_sorrowgraveAI(pCreature);
    }
};

void AddSC_boss_svala()
{
    new boss_svala();
    new mob_ritual_channeler();
    new boss_svala_sorrowgrave();
}