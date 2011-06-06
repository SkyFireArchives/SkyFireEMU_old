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

#include "ScriptPCH.h"
#include "gundrak.h"

//Spells
enum Spells
{
    SPELL_ENRAGE                                  = 55285,
    H_SPELL_ENRAGE                                = 59828,
    SPELL_IMPALING_CHARGE                         = 54956,
    H_SPELL_IMPALING_CHARGE                       = 59827,
    SPELL_STOMP                                   = 55292,
    H_SPELL_STOMP                                 = 59829,
    SPELL_PUNCTURE                                = 55276,
    H_SPELL_PUNCTURE                              = 59826,
    SPELL_STAMPEDE                                = 55218,
    SPELL_WHIRLING_SLASH                          = 55250,
    H_SPELL_WHIRLING_SLASH                        = 59824,
    SPELL_IMPALING_CHARGE_VEHICLE                 = 54958,
    SPELL_ECK_RESIDUE                             = 55817,
    //rhino spirit spells
    SPELL_STAMEPDE_VISUAL                         = 55221,
    SPELL_STAMPEDE_DMG                            = 55220,
    H_SPELL_STAMPEDE_DMG                          = 59823,
    SPELL_HEART_BEAM                              = 54988,
};

//Yells
enum Yells
{
    SAY_AGGRO                                     = -1604000,
    SAY_SLAY_1                                    = -1604001,
    SAY_SLAY_2                                    = -1604002,
    SAY_SLAY_3                                    = -1604003,
    SAY_DEATH                                     = -1604004,
    SAY_SUMMON_RHINO_1                            = -1604005,
    SAY_SUMMON_RHINO_2                            = -1604006,
    SAY_SUMMON_RHINO_3                            = -1604007,
    SAY_TRANSFORM_1                               = -1604008,  //Phase change
    SAY_TRANSFORM_2                               = -1604009,
    EMOTE_PUNCTURE                                = -1574030,
};

enum Creatures
{
    CREATURE_RHINO                                =   29791, // Summons DoZoneInCombat ;)
};

enum Achievements
{
    ACHIEV_WHAT_THE_ECK                           = 1864,
    ACHIEV_SHARE_THE_LOVE                         = 2152
};

enum Displays
{
    DISPLAY_RHINO                                 = 26265,
    DISPLAY_TROLL                                 = 27061
};

enum CombatPhase
{
    TROLL,
    RHINO
};

class boss_gal_darah : public CreatureScript
{
public:
    boss_gal_darah() : CreatureScript("boss_gal_darah") { }

    struct boss_gal_darahAI : public ScriptedAI
    {
        boss_gal_darahAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            me->CastSpell(me, SPELL_HEART_BEAM, true);
        }

        void Reset()
        {
            StampedeTimer = 10*IN_MILLISECONDS;
            WhirlingSlashTimer = 20*IN_MILLISECONDS;
            PunctureTimer = 5*IN_MILLISECONDS;
            EnrageTimer = 15*IN_MILLISECONDS;
            ImpalingChargeTimer = 20*IN_MILLISECONDS;
            StompTimer = 10*IN_MILLISECONDS;
            TransformationTimer = 6*IN_MILLISECONDS;
            PhaseCounter = 0;

            lImpaledPlayers.clear();

            bStartOfTransformation = true;
            bTransformated = false;

            Phase = TROLL;

            me->SetDisplayId(DISPLAY_TROLL);

            if (pInstance)
                pInstance->SetData(DATA_GAL_DARAH_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);

            if (pInstance)
                pInstance->SetData(DATA_GAL_DARAH_EVENT, IN_PROGRESS);

            // Funktioniert =D
            me->CastStop();
        }

        void JustReachedHome()
        {
            me->CastSpell(me, SPELL_HEART_BEAM, true);
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (!bTransformated && HealthBelowPct(50)) //transform at least once at 50% health
            {
                bTransformated = true;
                PhaseCounter = 2;
            }

            switch (Phase)
            {
                case TROLL:
                    if (PhaseCounter >= 2)
                    {
                        if (TransformationTimer <= diff)
                        {
                            me->SetDisplayId(DISPLAY_RHINO);
                            Phase = RHINO;
                            PhaseCounter = 0;
                            DoScriptText(SAY_TRANSFORM_1, me);
                            TransformationTimer = 5*IN_MILLISECONDS;
                            bStartOfTransformation = true;
                            bTransformated = true;
                            me->ClearUnitState(UNIT_STAT_STUNNED|UNIT_STAT_ROOT);
                            me->SetReactState(REACT_AGGRESSIVE);
                        }
                        else
                        {
                            TransformationTimer -= diff;

                            if (bStartOfTransformation)
                            {
                                bStartOfTransformation = false;
                                me->AddUnitState(UNIT_STAT_STUNNED|UNIT_STAT_ROOT);
                                me->SetReactState(REACT_PASSIVE);
                            }
                        }
                    }
                    else
                    {
                        if (StampedeTimer <= diff)
                        {
                            DoCast(me, SPELL_STAMPEDE);
                            DoScriptText(RAND(SAY_SUMMON_RHINO_1,SAY_SUMMON_RHINO_2,SAY_SUMMON_RHINO_3),me);
                            StampedeTimer = urand(10*IN_MILLISECONDS,15*IN_MILLISECONDS);
                        } else StampedeTimer -= diff;

                        if (WhirlingSlashTimer <= diff)
                        {
                            DoCast(me->getVictim(), DUNGEON_MODE(SPELL_WHIRLING_SLASH, H_SPELL_WHIRLING_SLASH));
                            WhirlingSlashTimer = urand(18*IN_MILLISECONDS,22*IN_MILLISECONDS);;
                            ++PhaseCounter;
                        } else WhirlingSlashTimer -= diff;
                    }
                break;
                case RHINO:
                    if (PhaseCounter >= 2)
                    {
                        if (TransformationTimer <= diff)
                        {
                            me->SetDisplayId(DISPLAY_TROLL);
                            Phase = TROLL;
                            PhaseCounter = 0;
                            DoScriptText(SAY_TRANSFORM_2, me);
                            TransformationTimer = 6*IN_MILLISECONDS;
                            bStartOfTransformation = true;
                            me->ClearUnitState(UNIT_STAT_STUNNED|UNIT_STAT_ROOT);
                            me->SetReactState(REACT_AGGRESSIVE);
                        }
                        else
                        {
                            TransformationTimer -= diff;

                            if (bStartOfTransformation)
                            {
                                bStartOfTransformation = false;
                                me->AddUnitState(UNIT_STAT_STUNNED|UNIT_STAT_ROOT);
                                me->SetReactState(REACT_PASSIVE);
                            }
                        }
                    }
                    else
                    {
                        if (PunctureTimer <= diff)
                        {
                            DoCast(me->getVictim(), DUNGEON_MODE(SPELL_PUNCTURE, H_SPELL_PUNCTURE));
                            PunctureTimer = 15*IN_MILLISECONDS;
                        } else PunctureTimer -= diff;

                        if (EnrageTimer <= diff)
                        {
                            DoCast(me->getVictim(), DUNGEON_MODE(SPELL_ENRAGE, H_SPELL_ENRAGE));
                            EnrageTimer = 30*IN_MILLISECONDS;
                        } else EnrageTimer -= diff;

                        if (StompTimer <= diff)
                        {
                            DoCast(me->getVictim(), DUNGEON_MODE(SPELL_STOMP, H_SPELL_STOMP));
                            StompTimer = urand(10*IN_MILLISECONDS,15*IN_MILLISECONDS);
                        } else StompTimer -= diff;

                        if (ImpalingChargeTimer <= diff)
                        {
                            if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1, 100, true))
                            {
                                DoScriptText(EMOTE_PUNCTURE,me,pTarget);
                                DoCast(pTarget, DUNGEON_MODE(SPELL_IMPALING_CHARGE, H_SPELL_IMPALING_CHARGE));
                                //pTarget->CastSpell(me, SPELL_IMPALING_CHARGE_VEHICLE, true);  // needs vehicle id and take dmg while seated
                                lImpaledPlayers.insert(pTarget->GetGUID());
                            }
                            ImpalingChargeTimer = 20*IN_MILLISECONDS;
                            ++PhaseCounter;
                        } else ImpalingChargeTimer -= diff;
                    }
                break;
            }

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH, me);

            if (pInstance)
            {
                if (IsHeroic())
                {
                    if (lImpaledPlayers.size() == 5)
                        pInstance->DoCompleteAchievement(ACHIEV_SHARE_THE_LOVE);

                    AchievementEntry const *achievWhatTheEck = GetAchievementStore()->LookupEntry(ACHIEV_WHAT_THE_ECK);
                    if (achievWhatTheEck)
                    {
                        Map::PlayerList const &players = pInstance->instance->GetPlayers();
                        for (Map::PlayerList::const_iterator itr = players.begin(); itr != players.end(); ++itr)
                            if (itr->getSource()->HasAura(SPELL_ECK_RESIDUE))
                                itr->getSource()->CompletedAchievement(achievWhatTheEck);
                    }
                }

                pInstance->SetData(DATA_GAL_DARAH_EVENT, DONE);
            }
        }

        void KilledUnit(Unit * victim)
        {
            if (victim == me)
                return;

            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2,SAY_SLAY_3), me);
        }

    private:
        uint8 PhaseCounter;
        uint32 StampedeTimer;
        uint32 WhirlingSlashTimer;
        uint32 PunctureTimer;
        uint32 EnrageTimer;
        uint32 ImpalingChargeTimer;
        uint32 StompTimer;
        uint32 TransformationTimer;
        std::set<uint64> lImpaledPlayers;
        CombatPhase Phase;
        bool bStartOfTransformation;
        bool bTransformated;
        InstanceScript* pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_gal_darahAI (pCreature);
    }
};

class mob_rhino_spirit : public CreatureScript
{
public:
    mob_rhino_spirit() : CreatureScript("mob_rhino_spirit") { }

    struct mob_rhino_spiritAI : public ScriptedAI
    {
        mob_rhino_spiritAI(Creature *c) : ScriptedAI(c) {}

        void Reset()
        {
            StampedeTimer = 1000;
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
               return;

            if (StampedeTimer <= diff)
            {
                DoCastVictim(RAID_MODE(SPELL_STAMPEDE_DMG, H_SPELL_STAMPEDE_DMG));
                me->ForcedDespawn(5000);
                StampedeTimer = 10000;
            } else StampedeTimer -= diff;
        }  

    private:
        uint32 StampedeTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_rhino_spiritAI (pCreature);
    }
};

void AddSC_boss_gal_darah()
{
    new boss_gal_darah();
    new mob_rhino_spirit();
}