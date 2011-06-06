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

/* Script Data Start
SDName: Boss ymiron
SDAuthor: LordVanMartin
SD%Complete:
SDComment:
SDCategory:
Script Data End */

#include "ScriptPCH.h"
#include "utgarde_pinnacle.h"

enum Spells
{
    SPELL_BANE                                = 48294,
    H_SPELL_BANE                              = 59301,
    SPELL_DARK_SLASH                          = 48292,
    SPELL_FETID_ROT                           = 48291,
    H_SPELL_FETID_ROT                         = 59300,
    SPELL_SCREAMS_OF_THE_DEAD                 = 51750,
    SPELL_SPIRIT_BURST                        = 48529,
    H_SPELL_SPIRIT_BURST                      = 59305,
    SPELL_SPIRIT_STRIKE                       = 48423,
    H_SPELL_SPIRIT_STRIKE                     = 59304,
    SPELL_ANCESTORS_VENGEANCE                 = 16939,

    SPELL_SUMMON_AVENGING_SPIRIT              = 48592,
    SPELL_SUMMON_SPIRIT_FOUNT                 = 48386,

    SPELL_CHANNEL_SPIRIT_TO_YMIRON            = 48316,
    SPELL_CHANNEL_YMIRON_TO_SPIRIT            = 48307,

    SPELL_SPIRIT_FOUNT                        = 48380,
    H_SPELL_SPIRIT_FOUNT                      = 59320
};

//not in db
enum Yells
{
    SAY_AGGRO                               = -1575028,
    SAY_SLAY_1                              = -1575029,
    SAY_SLAY_2                              = -1575030,
    SAY_SLAY_3                              = -1575031,
    SAY_SLAY_4                              = -1575032,
    SAY_DEATH                               = -1575033,
    SAY_SUMMON_BJORN                        = -1575034,
    SAY_SUMMON_HALDOR                       = -1575035,
    SAY_SUMMON_RANULF                       = -1575036,
    SAY_SUMMON_TORGYN                       = -1575037
};

enum Creatures
{
    CREATURE_BJORN                          = 27303,
    CREATURE_BJORN_VISUAL                   = 27304,
    CREATURE_HALDOR                         = 27307,
    CREATURE_HALDOR_VISUAL                  = 27310,
    CREATURE_RANULF                         = 27308,
    CREATURE_RANULF_VISUAL                  = 27311,
    CREATURE_TORGYN                         = 27309,
    CREATURE_TORGYN_VISUAL                  = 27312,
    CREATURE_SPIRIT_FOUNT                   = 27339,
    CREATURE_AVENGING_SPIRIT                = 27386
};

struct ActiveBoatStruct
{
    uint32 npc;
    int32 say;
    float MoveX,MoveY,MoveZ,SpawnX,SpawnY,SpawnZ,SpawnO;
};

static ActiveBoatStruct ActiveBot[4] =
{
    {CREATURE_BJORN_VISUAL,  SAY_SUMMON_BJORN,  404.379f, -335.335f, 104.756f, 413.594f, -335.408f, 107.995f, 3.157f},
    {CREATURE_HALDOR_VISUAL, SAY_SUMMON_HALDOR, 380.813f, -335.069f, 104.756f, 369.994f, -334.771f, 107.995f, 6.232f},
    {CREATURE_RANULF_VISUAL, SAY_SUMMON_RANULF, 381.546f, -314.362f, 104.756f, 370.841f, -314.426f, 107.995f, 6.232f},
    {CREATURE_TORGYN_VISUAL, SAY_SUMMON_TORGYN, 404.310f, -314.761f, 104.756f, 413.992f, -314.703f, 107.995f, 3.157f}
};

class boss_ymiron : public CreatureScript
{
public:
    boss_ymiron() : CreatureScript("boss_ymiron") { }

    struct boss_ymironAI : public ScriptedAI
    {
        boss_ymironAI(Creature *c) : ScriptedAI(c)
        {
            pInstance = c->GetInstanceScript();
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);  // Death Grip
            for (int i = 0; i < 4; ++i)
                ActiveOrder[i] = i;
            for (int i = 0; i < 3; ++i)
            {
                int r = i + (rand() % (4 - i));
                int temp = ActiveOrder[i];
                ActiveOrder[i] = ActiveOrder[r];
                ActiveOrder[r] = temp;
            }
        }

        void Reset()
        {
            bPause = false;
            bActiveWithBJORN = false;
            bActiveWithHALDOR = false;
            bActiveWithRANULF = false;
            bActiveWithTORGYN = false;

            FetidRotTimer            = urand(8000, 13000);
            BaneTimer                = urand(18000, 23000);
            DarkSlashTimer           = urand(28000, 33000);
            AncestorsVengeanceTimer = DUNGEON_MODE(60000, 45000);
            PauseTimer               = 0;

            AbilityBjornTimer  = 0;
            AbilityHaldorTimer = 0;
            AbilityRanulfTimer = 0;
            AbilityTorgynTimer = 0;

            ActivedNumber        = 0;
            HealthAmountModifier = 1;
            HealthAmountMultipler = DUNGEON_MODE(20, 25);

            DespawnBoatGhosts(ActivedCreatureGUID);
            DespawnBoatGhosts(OrbGUID);

            if (pInstance)
                pInstance->SetData(DATA_KING_YMIRON_EVENT, NOT_STARTED);
        }

        void EnterCombat(Unit* /*who*/)
        {
            DoScriptText(SAY_AGGRO, me);

            if (pInstance)
                pInstance->SetData(DATA_KING_YMIRON_EVENT, IN_PROGRESS);
        }

        void UpdateAI(const uint32 diff)
        {
            if (bWalking)
            {
                if (PauseTimer <= diff)
                {
                    DoScriptText(ActiveBot[ActiveOrder[ActivedNumber]].say, me);
                    DoCast(me, SPELL_CHANNEL_YMIRON_TO_SPIRIT); // should be on spirit
                    if (Creature* pTemp = me->SummonCreature(ActiveBot[ActiveOrder[ActivedNumber]].npc, ActiveBot[ActiveOrder[ActivedNumber]].SpawnX, ActiveBot[ActiveOrder[ActivedNumber]].SpawnY, ActiveBot[ActiveOrder[ActivedNumber]].SpawnZ, ActiveBot[ActiveOrder[ActivedNumber]].SpawnO, TEMPSUMMON_CORPSE_DESPAWN, 0))
                    {
                        ActivedCreatureGUID = pTemp->GetGUID();
                        pTemp->CastSpell(me, SPELL_CHANNEL_SPIRIT_TO_YMIRON, true);
                        pTemp->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                        pTemp->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                        switch(ActiveOrder[ActivedNumber])
                        {
                            case 0: bActiveWithBJORN  = true; break;
                            case 1: bActiveWithHALDOR = true; break;
                            case 2: bActiveWithRANULF = true; break;
                            case 3: bActiveWithTORGYN = true; break;
                        }
                    }

                    bPause = true;
                    bWalking = false;
                    PauseTimer = 3000;
                } else PauseTimer -= diff;
                return;
            }
            else if (bPause)
            {
                if (PauseTimer <= diff)
                {
                    AbilityBjornTimer = 5000;
                    AbilityHaldorTimer = 5000;
                    AbilityRanulfTimer = 5000;
                    AbilityTorgynTimer = 5000;

                    bPause = false;
                    PauseTimer = 0;
                } else PauseTimer -= diff;
                return;
            }

            //Return since we have no target
             if (!UpdateVictim())
                 return;

            if (!bPause)
            {
                // Normal spells ------------------------------------------------------------------------
                if (BaneTimer <= diff)
                {
                    DoCast(me, SPELL_BANE);
                    BaneTimer = urand(20000, 25000);
                } else BaneTimer -= diff;

                if (FetidRotTimer <= diff)
                {
                    DoCast(me->getVictim(), SPELL_FETID_ROT);
                    FetidRotTimer = urand(10000, 15000);
                } else FetidRotTimer -= diff;

                if (DarkSlashTimer <= diff)
                {
                    DoCast(me->getVictim(), SPELL_DARK_SLASH);
                    DarkSlashTimer = urand(30000, 35000);
                } else DarkSlashTimer -= diff;

                if (AncestorsVengeanceTimer <= diff)
                {
                    DoCast(me, SPELL_ANCESTORS_VENGEANCE);
                    AncestorsVengeanceTimer = DUNGEON_MODE(urand(60000, 65000), urand(45000, 50000));
                } else AncestorsVengeanceTimer -= diff;

                // Abilities ------------------------------------------------------------------------------
                if (bActiveWithBJORN && AbilityBjornTimer <= diff)
                {
                    //DoCast(me, SPELL_SUMMON_SPIRIT_FOUNT); // works fine, but using summon has better control
                    if (Creature* pTemp = me->SummonCreature(CREATURE_SPIRIT_FOUNT, 385.0f + rand() % 10, -330.0f + rand() % 10, 104.756f, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 180000))
                    {
                        pTemp->SetSpeed(MOVE_RUN, 0.4f);
                        pTemp->CastSpell(pTemp, DUNGEON_MODE(SPELL_SPIRIT_FOUNT, H_SPELL_SPIRIT_FOUNT), true);
                        pTemp->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
                        pTemp->SetDisplayId(11686);
                        OrbGUID = pTemp->GetGUID();
                    }
                    bActiveWithBJORN = false; // only one orb
                } else AbilityBjornTimer -= diff;

                if (bActiveWithHALDOR && AbilityHaldorTimer <= diff)
                {
                    DoCast(me->getVictim(), SPELL_SPIRIT_STRIKE);
                    AbilityHaldorTimer = 5000; // overtime
                } else AbilityHaldorTimer -= diff;

                if (bActiveWithRANULF && AbilityRanulfTimer <= diff)
                {
                    DoCast(me, SPELL_SPIRIT_BURST);
                    AbilityRanulfTimer = 10000; // overtime
                } else AbilityRanulfTimer -= diff;

                if (bActiveWithTORGYN && AbilityTorgynTimer <= diff)
                {
                    float x,y,z;
                    x = me->GetPositionX()-5;
                    y = me->GetPositionY()-5;
                    z = me->GetPositionZ();
                    for (uint8 i = 0; i < 4; ++i)
                    {
                        //DoCast(me, SPELL_SUMMON_AVENGING_SPIRIT); // works fine, but using summon has better control
                        if (Creature* pTemp = me->SummonCreature(CREATURE_AVENGING_SPIRIT, x + rand() % 10, y + rand() % 10, z, 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 30000))
                        {
                            if (Unit* pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            {
                                pTemp->AddThreat(pTarget, 0.0f);
                                pTemp->AI()->AttackStart(pTarget);
                            }
                        }
                    }
                    AbilityTorgynTimer = 15000; // overtime
                } else AbilityTorgynTimer -= diff;

                // Health check -----------------------------------------------------------------------------
                if (me->HealthBelowPct(100 - HealthAmountMultipler * HealthAmountModifier))
                {
                    uint8 m_uiOrder = HealthAmountModifier - 1;
                    ++HealthAmountModifier;

                    me->InterruptNonMeleeSpells(true);
                    DoCast(me, SPELL_SCREAMS_OF_THE_DEAD);
                    me->GetMotionMaster()->Clear();
                    me->StopMoving();
                    me->AttackStop();
                    me->GetMotionMaster()->MovePoint(0, ActiveBot[ActiveOrder[m_uiOrder]].MoveX, ActiveBot[ActiveOrder[m_uiOrder]].MoveY, ActiveBot[ActiveOrder[m_uiOrder]].MoveZ);

                    DespawnBoatGhosts(ActivedCreatureGUID);
                    DespawnBoatGhosts(OrbGUID);

                    bActiveWithBJORN  = false;
                    bActiveWithHALDOR = false;
                    bActiveWithRANULF = false;
                    bActiveWithTORGYN = false;

                    BaneTimer                += 8000;
                    FetidRotTimer            += 8000;
                    DarkSlashTimer           += 8000;
                    AncestorsVengeanceTimer += 8000;

                    ActivedNumber = m_uiOrder;
                    bWalking = true;
                    PauseTimer = 2000;
                    return;
                }
                DoMeleeAttackIfReady();
            }
        }

        void JustDied(Unit* /*killer*/)
        {
            DoScriptText(SAY_DEATH, me);

            DespawnBoatGhosts(ActivedCreatureGUID);
            DespawnBoatGhosts(OrbGUID);

            if (pInstance)
                pInstance->SetData(DATA_KING_YMIRON_EVENT, DONE);
        }

        void KilledUnit(Unit * /*victim*/)
        {
            DoScriptText(RAND(SAY_SLAY_1, SAY_SLAY_2, SAY_SLAY_3, SAY_SLAY_4), me);
        }

        void DespawnBoatGhosts(uint64& m_uiCreatureGUID)
        {
            if (m_uiCreatureGUID)
                if (Creature* pTemp = Unit::GetCreature(*me, m_uiCreatureGUID))
                    pTemp->DisappearAndDie();

            m_uiCreatureGUID = 0;
        }

    private:
        uint8 ActiveOrder[4];
        uint8 ActivedNumber;
        uint32 FetidRotTimer;
        uint32 BaneTimer;
        uint32 DarkSlashTimer;
        uint32 AncestorsVengeanceTimer;
        uint32 AbilityBjornTimer;
        uint32 AbilityHaldorTimer;
        uint32 AbilityRanulfTimer;
        uint32 AbilityTorgynTimer;
        uint32 PauseTimer;
        uint32 HealthAmountModifier;
        uint32 HealthAmountMultipler;
        uint64 ActivedCreatureGUID;
        uint64 OrbGUID;
        bool bWalking;
        bool bPause;
        bool bActiveWithBJORN;
        bool bActiveWithHALDOR;
        bool bActiveWithRANULF;
        bool bActiveWithTORGYN;
        InstanceScript *pInstance;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_ymironAI(pCreature);
    }
};

void AddSC_boss_ymiron()
{
    new boss_ymiron();
}
