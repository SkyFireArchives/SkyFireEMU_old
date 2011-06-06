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
 * Comment: Missing AI for Twisted Visages
 */

#include "ScriptPCH.h"
#include "ahnkahet.h"

enum Spells
{
    SPELL_INSANITY                                = 57496, //Dummy
    INSANITY_VISUAL                               = 57561,
    SPELL_INSANITY_TARGET                         = 57508,
    SPELL_MIND_FLAY                               = 57941,
    SPELL_SHADOW_BOLT_VOLLEY                      = 57942,
    SPELL_SHIVER                                  = 57949,
    SPELL_CLONE_PLAYER                            = 57507, //casted on player during insanity
    SPELL_INSANITY_PHASING_1                      = 57508,
    SPELL_INSANITY_PHASING_2                      = 57509,
    SPELL_INSANITY_PHASING_3                      = 57510,
    SPELL_INSANITY_PHASING_4                      = 57511,
    SPELL_INSANITY_PHASING_5                      = 57512
};

enum Creatures
{
    MOB_TWISTED_VISAGE                            = 30625
};

enum Yells
{
    SAY_AGGRO                                     = -1619030,
    SAY_SLAY_1                                    = -1619031,
    SAY_SLAY_2                                    = -1619032,
    SAY_SLAY_3                                    = -1619033,
    SAY_DEATH_1                                   = -1619034,
    SAY_DEATH_2                                   = -1619035,
    SAY_PHASE                                     = -1619036
};

enum Achievements
{
    ACHIEV_QUICK_DEMISE_START_EVENT               = 20382,
};

enum TwistedSpells
{
    // Paladin
    N_SPELL_AVENGER_SHIELD                          = 57799,
    H_SPELL_AVENGER_SHIELD                          = 59999,
    N_SPELL_CONSECRATION                            = 59998,
    H_SPELL_CONSECRATION                            = 57798,
    N_SPELL_GREATER_HEAL                            = 57775,
    H_SPELL_GREATER_HEAL                            = 60003,
    N_SPELL_SEAL_OF_COMMAND                         = 57769,
    H_SPELL_SEAL_OF_COMMAND                         = 57770,
    SPELL_JUDGEMENT_OF_LIGHT                        = 57774,

    // Shamane
    N_SPELL_BLOODTHIRST                             = 57790,
    H_SPELL_BLOODTHIRST                             = 60017,
    N_SPELL_EARTH_SHIELD                            = 57802,
    H_SPELL_EARTH_SHIELD                            = 60013,
    N_SPELL_EARHT_SHOCK                             = 57783,
    H_SPELL_EARHT_SHOCK                             = 60011,
    N_SPELL_HEALING_WAVE                            = 57785,
    H_SPELL_HEALING_WAVE                            = 60012,
    N_SPELL_THUNDERSTORM                            = 57784,
    H_SPELL_THUNDERSTORM                            = 60010,
    N_SPELL_LIGHTING_BOLT                           = 57781,
    H_SPELL_LIGHTING_BOLT                           = 60009,
    SPELL_STORMSTRIKE                               = 51876,

    // Warlock
    N_SPELL_CORRUPTION                              = 57645,
    H_SPELL_CORRUPTION                              = 60016,
    N_SPELL_SHADOW_BOLT                             = 57644,
    H_SPELL_SHADOW_BOLT                             = 60015,

    // Druide
    SPELL_CAT_FORM                                  = 57655,
    N_SPELL_LIFE_BLOOM                              = 57762,
    H_SPELL_LIFE_BLOOM                              = 59990,
    N_SPELL_NOURISH                                 = 57765,
    H_SPELL_NOURISH                                 = 59991,
    N_SPELL_RIP                                     = 57661,
    H_SPELL_RIP                                     = 59989,
    N_SPELL_WRATH                                   = 57648,
    H_SPELL_WRATH                                   = 59986,
    N_SPELL_MANGLE                                  = 57657,
    H_SPELL_MANGLE                                  = 59988,
    N_SPELL_MOONFIRE                                = 57647,
    H_SPELL_MOONFIRE                                = 59987,

    // Hunter
    N_SPELL_SHOOT                                   = 57589,
    H_SPELL_SHOOT                                   = 59993,
    SPELL_DISENGAGE                                 = 57635,

    // Mage
    N_SPELL_FIREBALL                                = 57628,
    H_SPELL_FIREBALL                                = 59994,
    N_SPELL_FROSTNOVA                               = 57629,
    H_SPELL_FROSTNOVA                               = 59995,

    // Priest
    N_SPELL_SHADOW_WORD_PAIN                        = 57778,
    H_SPELL_SHADOW_WORD_PAIN                        = 60005,
    N_SPELL_MIND_FLAY                               = 57779,
    H_SPELL_MIND_FLAY                               = 60006,
    N_SPELL_RENEW                                   = 57777,
    H_SPELL_RENEW                                   = 60004,

    // Schurke 
    N_SPELL_EVISCERATE                              = 57641,
    H_SPELL_EVISCERATE                              = 60008,
    SPELL_SINISTER_STRIKE                           = 57640,

    // Deathknight
    N_SPELL_PLAGUE_STRIKE                           = 57599,
    H_SPELL_PLAGUE_STRIKE                           = 59985,
    SPELL_DEATH_GRIP                                = 57602,

    // Warrior
    N_SPELL_THUNDER_CLAP                            = 57832,
    H_SPELL_THUNDER_CLAP                            = 60019,
    SPELL_MORTAL_STRIKE                             = 57789,
};

class boss_volazj : public CreatureScript
{
public:
    boss_volazj() : CreatureScript("boss_volazj") { }

    struct boss_volazjAI : public ScriptedAI
    {
        boss_volazjAI(Creature* pCreature) : ScriptedAI(pCreature),Summons(me)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        // returns the percentage of health after taking the given damage.
        uint32 GetHealthPct(uint32 damage)
        {
            if (damage > me->GetHealth())
                return 0;
            return 100*(me->GetHealth()-damage)/me->GetMaxHealth();
        }

        void DamageTaken(Unit * /*pAttacker*/, uint32 &damage)
        {
            if (me->HasFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE))
                damage = 0;

            if ((GetHealthPct(0) >= 66 && GetHealthPct(damage) < 66)||
                (GetHealthPct(0) >= 33 && GetHealthPct(damage) < 33))
            {
                me->InterruptNonMeleeSpells(false);
                DoCast(me, SPELL_INSANITY, false);
            }
        }

        void SpellHitTarget(Unit *pTarget, const SpellEntry *spell)
        {
            if (spell->Id == SPELL_INSANITY)
            {
                // Not good target or too many players
                if (pTarget->GetTypeId() != TYPEID_PLAYER || InsanityHandled > 4)
                    return;
                // First target - start channel visual and set self as unnattackable
                if (!InsanityHandled)
                {
                    // Channel visual
                    DoCast(me, INSANITY_VISUAL, true);
                    // Unattackable
                    me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                    me->SetControlled(true, UNIT_STAT_STUNNED);
                }
                // phase mask
                pTarget->CastSpell(pTarget, SPELL_INSANITY_TARGET+InsanityHandled, true);
                // summon twisted party members for this target
                Map::PlayerList const &players = me->GetMap()->GetPlayers();
                for (Map::PlayerList::const_iterator i = players.begin(); i != players.end(); ++i)
                {
                    Player *plr = i->getSource();
                    if (!plr || !plr->isAlive())
                        continue;
                    // Summon clone
                    if (Unit *summon = me->SummonCreature(MOB_TWISTED_VISAGE, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), me->GetOrientation(),TEMPSUMMON_CORPSE_DESPAWN,0))
                    {
                        // clone
                        plr->CastSpell(summon, SPELL_CLONE_PLAYER, true);
                        // set phase
                        summon->SetPhaseMask((1<<(4+InsanityHandled)),true);
                    }
                }
                ++InsanityHandled;
            }
        }

        void ResetPlayersPhaseMask()
        {
            Map::PlayerList const &players = me->GetMap()->GetPlayers();
            for (Map::PlayerList::const_iterator i = players.begin(); i != players.end(); ++i)
            {
                Player* pPlayer = i->getSource();
                pPlayer->RemoveAurasDueToSpell(GetSpellForPhaseMask(pPlayer->GetPhaseMask()));
            }
        }

        void Reset()
        {
            MindFlayTimer = 8*IN_MILLISECONDS;
            ShadowBoltVolleyTimer = 5*IN_MILLISECONDS;
            ShiverTimer = 15*IN_MILLISECONDS;

            if (pInstance)
            {
                pInstance->SetData(DATA_HERALD_VOLAZJ, NOT_STARTED);
                pInstance->DoStopTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_QUICK_DEMISE_START_EVENT);
            }

            // Visible for all players in insanity
            me->SetPhaseMask((1|16|32|64|128|256),true);
            // Used for Insanity handling
            InsanityHandled = 0;

            ResetPlayersPhaseMask();

            // Cleanup
            Summons.DespawnAll();
            me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
        }

        void EnterEvadeMode()
        {
            me->RemoveAllAuras();
            me->SetControlled(false, UNIT_STAT_STUNNED);
            _EnterEvadeMode();
            me->GetMotionMaster()->MoveTargetedHome();
            Reset();
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);

            if (pInstance)
            {
                pInstance->SetData(DATA_HERALD_VOLAZJ, IN_PROGRESS);
                pInstance->DoStartTimedAchievement(ACHIEVEMENT_TIMED_TYPE_EVENT, ACHIEV_QUICK_DEMISE_START_EVENT);
            }
        }

        void JustSummoned(Creature *summon)
        {
            Summons.Summon(summon);
        }

        uint32 GetSpellForPhaseMask(uint32 phase)
        {
            uint32 spell = 0;
            switch (phase)
            {
                case 16:
                    spell = SPELL_INSANITY_PHASING_1;
                    break;
                case 32:
                    spell = SPELL_INSANITY_PHASING_2;
                    break;
                case 64:
                    spell = SPELL_INSANITY_PHASING_3;
                    break;
                case 128:
                    spell = SPELL_INSANITY_PHASING_4;
                    break;
                case 256:
                    spell = SPELL_INSANITY_PHASING_5;
                    break;
            }
            return spell;
        }

        void SummonedCreatureDespawn(Creature *summon)
        {
            uint32 phase= summon->GetPhaseMask();
            uint32 nextPhase = 0;
            Summons.Despawn(summon);

            // Check if all summons in this phase killed
            for (SummonList::const_iterator iter = Summons.begin(); iter != Summons.end(); ++iter)
            {
                if (Creature *visage = Unit::GetCreature(*me, *iter))
                {
                    // Not all are dead
                    if (phase == visage->GetPhaseMask())
                        return;
                    else
                        nextPhase = visage->GetPhaseMask();
                }
            }

            // Roll Insanity
            uint32 spell = GetSpellForPhaseMask(phase);
            uint32 spell2 = GetSpellForPhaseMask(nextPhase);
            Map* pMap = me->GetMap();
            if (!pMap)
                return;

            Map::PlayerList const &PlayerList = pMap->GetPlayers();
            if (!PlayerList.isEmpty())
            {
                for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                {
                    if (Player* pPlayer = i->getSource())
                    {
                        if (pPlayer->HasAura(spell))
                        {
                            pPlayer->RemoveAurasDueToSpell(spell);
                            if (spell2) // if there is still some different mask cast spell for it
                                pPlayer->CastSpell(pPlayer, spell2, true);
                        }
                    }
                }
            }
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (InsanityHandled)
            {
                if (!Summons.empty())
                    return;

                InsanityHandled = 0;
                me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                me->SetControlled(false, UNIT_STAT_STUNNED);
                me->RemoveAurasDueToSpell(INSANITY_VISUAL);
            }

            if (MindFlayTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_MIND_FLAY);
                MindFlayTimer = 20*IN_MILLISECONDS;
            } else MindFlayTimer -= diff;

            if (ShadowBoltVolleyTimer <= diff)
            {
                DoCast(me->getVictim(), SPELL_SHADOW_BOLT_VOLLEY);
                ShadowBoltVolleyTimer = 5*IN_MILLISECONDS;
            } else ShadowBoltVolleyTimer -= diff;

            if (ShiverTimer <= diff)
            {
                if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, SPELL_SHIVER);
                ShiverTimer = 15*IN_MILLISECONDS;
            } else ShiverTimer -= diff;

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH_1, me);

            if (pInstance)
                pInstance->SetData(DATA_HERALD_VOLAZJ, DONE);

            Summons.DespawnAll();
            ResetPlayersPhaseMask();
        }

        void KilledUnit(Unit* pVictim)
        {
            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2,SAY_SLAY_3), me);

            if (pVictim->GetTypeId() == TYPEID_PLAYER)
                pVictim->RemoveAurasDueToSpell(GetSpellForPhaseMask(pVictim->GetPhaseMask()));
        }

    private:
        InstanceScript *pInstance;
        uint32 MindFlayTimer;
        uint32 ShadowBoltVolleyTimer;
        uint32 ShiverTimer;
        uint32 InsanityHandled;
        SummonList Summons;
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new boss_volazjAI(creature);
    }
};

class mob_twisted_visage : public CreatureScript
{
public:
    mob_twisted_visage() : CreatureScript("mob_twisted_visage") { }

    struct mob_twisted_visageAI : public ScriptedAI
    {
        mob_twisted_visageAI(Creature* creature) : ScriptedAI(creature) {}

        void Reset()
        {
            Timer[0] = 0;
            Timer[1] = 0;
            Timer[2] = 0;
            Timer[3] = 0;
            Timer[4] = 0;
            Timer[5] = 0;
            Timer[6] = 0;
            VictimClass = 0;
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoZoneInCombat();
        } 

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if ((VictimClass == 0))
            {
                if (Map* pMap = me->GetMap())
                if (pMap->IsDungeon())
                {
                    Map::PlayerList const &PlayerList = pMap->GetPlayers();

                    if (!PlayerList.isEmpty())
                        for (Map::PlayerList::const_iterator i = PlayerList.begin(); i != PlayerList.end(); ++i)
                            if (i->getSource() && i->getSource()->isAlive())
                                VictimClass = i->getSource()->getClass();
                }
                switch (VictimClass)
                {
                    case CLASS_DRUID:
                        break;
                    case CLASS_HUNTER:
                        break;
                    case CLASS_MAGE:
                        break;
                    case CLASS_WARLOCK:
                        break;
                    case CLASS_WARRIOR:
                        break;
                    case CLASS_PALADIN:
                        break;
                    case CLASS_PRIEST:
                        break;
                    case CLASS_SHAMAN:
                        me->SetCanDualWield(true);
                        break;
                    case CLASS_ROGUE:
                        me->SetCanDualWield(true);
                        break;
                    case CLASS_DEATH_KNIGHT:
                        break;
                }
            }

            switch(VictimClass) 
            {
                case CLASS_DRUID:
                    if (Timer[1] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_WRATH, H_SPELL_WRATH));
                        Timer[1] = urand(8000,10000);
                    }
                    if (Timer[2] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_RIP,H_SPELL_RIP));
                        Timer[2] = urand(5000,7000);
                    }
                    if (Timer[3] <= diff)
                    {
                        DoCast(me, DUNGEON_MODE(N_SPELL_NOURISH, H_SPELL_NOURISH));
                        Timer[3] = urand(2000,4000);
                    }
                    if (Timer[4] <= diff)
                    {
                        DoCast(me, DUNGEON_MODE(N_SPELL_MANGLE, H_SPELL_MANGLE));
                        Timer[4] = urand(2000,4000);
                    }
                    if (Timer[5] <= diff)
                    {
                        bool bChance = urand(0,1);

                        if (!bChance)
                        {
                            if (Unit* pFriend = DoSelectLowestHpFriendly(60))
                                DoCast(pFriend, DUNGEON_MODE(N_SPELL_LIFE_BLOOM, H_SPELL_LIFE_BLOOM));
                        } 
                        else DoCast(me, DUNGEON_MODE(N_SPELL_LIFE_BLOOM, H_SPELL_LIFE_BLOOM));

                        Timer[5] = urand(2000,4000);
                    }
                    if (Timer[6] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_MOONFIRE, H_SPELL_MOONFIRE));
                        Timer[6] = urand(2000,4000);
                    }
                    DoMeleeAttackIfReady();
                    break;
                case CLASS_HUNTER:
                    if (Timer[1] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_SHOOT, H_SPELL_SHOOT));
                        Timer[1] = urand(4000,5000);
                    }
                    if (Timer[2] <= diff)
                    {
                        DoCast(me, SPELL_DISENGAGE, false);
                        Timer[2] = urand(15000,16000);
                    }
                    break;
                case CLASS_MAGE:
                    if (Timer[1] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_FIREBALL,H_SPELL_FIREBALL));
                        Timer[1] = urand(2000,4000);
                    }
                    if (Timer[2] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_FROSTNOVA,H_SPELL_FROSTNOVA));
                        Timer[2] = urand(6000,10000);
                    }
                    DoMeleeAttackIfReady();
                    break;
                case CLASS_WARLOCK:
                    if (Timer[1] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_CORRUPTION,H_SPELL_CORRUPTION));
                        Timer[1] = urand(5000,10000);
                    }
                    if (Timer[2] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_SHADOW_BOLT,H_SPELL_SHADOW_BOLT));
                        Timer[2] = urand(2000,4000);
                    }
                    DoMeleeAttackIfReady();
                    break;
                case CLASS_WARRIOR:
                    if (Timer[1] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_THUNDER_CLAP,H_SPELL_THUNDER_CLAP));
                        Timer[1] = urand(15000,16000);
                    }
                    if (Timer[2] <= diff)
                    {
                        DoCastVictim(SPELL_MORTAL_STRIKE);
                        Timer[2] = urand(9000,11000);
                    }
                    DoMeleeAttackIfReady();
                    break;
                case CLASS_PALADIN:
                    if (Timer[1] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_CONSECRATION, H_SPELL_CONSECRATION));
                        Timer[1] = urand(8000,10000);
                    }
                    if (Timer[2] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_SEAL_OF_COMMAND,H_SPELL_SEAL_OF_COMMAND));
                        Timer[2] = urand(5000,7000);
                    }
                    if (Timer[3] <= diff)
                    {
                        DoCast(me, DUNGEON_MODE(N_SPELL_AVENGER_SHIELD, H_SPELL_AVENGER_SHIELD));
                        Timer[3] = urand(2000,4000);
                    }
                    if (Timer[4] <= diff)
                    {
                        DoCastVictim(SPELL_JUDGEMENT_OF_LIGHT);
                        Timer[4] = urand(2000,4000);
                    }
                    if (Timer[5] <= diff)
                    {
                        bool bChance = urand(0,1);

                        if (!bChance)
                        {
                            if (Unit* pFriend = DoSelectLowestHpFriendly(60))
                                DoCast(pFriend, DUNGEON_MODE(N_SPELL_GREATER_HEAL, H_SPELL_GREATER_HEAL));
                        } 
                        else DoCast(me, DUNGEON_MODE(N_SPELL_GREATER_HEAL, H_SPELL_GREATER_HEAL));

                        Timer[5] = urand(2000,4000);
                    }
                    DoMeleeAttackIfReady();
                    break;
                case CLASS_PRIEST:
                    if (Timer[1] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_SHADOW_WORD_PAIN, H_SPELL_SHADOW_WORD_PAIN));
                        Timer[1] = urand(10000,12000);
                    }
                    if (Timer[2] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_MIND_FLAY, H_SPELL_MIND_FLAY));
                        Timer[2] = urand(4000,8000);
                    }
                    if (Timer[3] <= diff)
                    {
                        bool bChance = urand(0,1);

                        if (!bChance)
                        {
                            if (Unit* pFriend = DoSelectLowestHpFriendly(60))
                                DoCast(pFriend, DUNGEON_MODE(N_SPELL_RENEW, H_SPELL_RENEW));
                        } 
                        else DoCast(me, DUNGEON_MODE(N_SPELL_RENEW, H_SPELL_RENEW));

                        Timer[3] = urand(2000,4000);
                    }
                    DoMeleeAttackIfReady();
                    break;
                case CLASS_SHAMAN:
                    if (Timer[1] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_BLOODTHIRST, H_SPELL_BLOODTHIRST));
                        Timer[1] = urand(8000,10000);
                    }
                    if (Timer[2] <= diff)
                    {
                        DoCast(me, DUNGEON_MODE(N_SPELL_EARTH_SHIELD,H_SPELL_EARTH_SHIELD));
                        Timer[2] = urand(5000,7000);
                    }
                    if (Timer[3] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_EARHT_SHOCK, H_SPELL_EARHT_SHOCK));
                        Timer[3] = urand(10000,12000);
                    }
                    if (Timer[4] <= diff)
                    {
                        bool bChance = urand(0,1);

                        if (!bChance)
                        {
                            if (Unit* pFriend = DoSelectLowestHpFriendly(60))
                                DoCast(pFriend, DUNGEON_MODE(N_SPELL_HEALING_WAVE, H_SPELL_HEALING_WAVE));
                        } 
                        else DoCast(me, DUNGEON_MODE(N_SPELL_HEALING_WAVE, H_SPELL_HEALING_WAVE));
                        Timer[4] = urand(2000,4000);
                    }
                    if (Timer[5] <= diff)
                    {
                        DoCastAOE(DUNGEON_MODE(N_SPELL_THUNDERSTORM, H_SPELL_THUNDERSTORM));
                        Timer[5] = urand(10000,15000);
                    }
                    if (Timer[5] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_LIGHTING_BOLT, H_SPELL_LIGHTING_BOLT));
                        Timer[5] = urand(3000,5000);
                    }
                    if (Timer[6] <= diff)
                    {
                        DoCast(me, SPELL_STORMSTRIKE);
                        Timer[6] = urand(3000,5000);
                    }
                    DoMeleeAttackIfReady();
                    break;
                case CLASS_ROGUE:
                    if (Timer[1] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_EVISCERATE, H_SPELL_EVISCERATE));
                        Timer[1] = urand(4000,6000);
                    }
                    if (Timer[2] <= diff)
                    {
                        DoCastVictim(SPELL_SINISTER_STRIKE);
                        Timer[2] = urand(5000,10000);
                    }
                    DoMeleeAttackIfReady();
                    break;
                case CLASS_DEATH_KNIGHT:
                    if (Timer[1] <= diff)
                    {
                        DoCastVictim(DUNGEON_MODE(N_SPELL_PLAGUE_STRIKE, H_SPELL_PLAGUE_STRIKE));
                        Timer[1] = urand(4000,6000);
                    }
                    if (Timer[2] <= diff)
                    {
                        DoCastVictim(SPELL_DEATH_GRIP);
                        Timer[2] = urand(10000,15000);
                    }
                    break;
                }
                for (uint8 i = 0; i < 6; ++i)
                    Timer[i] -= diff;
            }

    private:
        uint8 VictimClass;
        uint32 Timer[7];
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_twisted_visageAI (pCreature);
    }
};

void AddSC_boss_volazj()
{
    new boss_volazj();
    new mob_twisted_visage();
}
