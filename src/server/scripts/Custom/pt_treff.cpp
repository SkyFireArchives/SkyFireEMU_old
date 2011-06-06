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

/* ScriptData
SDName: 
SDAuthor:
SD%Complete:
SDComment: //
SDCategory: Custom
EndScriptData */

#include "ScriptPCH.h"

enum Summons
{
    SUMMON_DEATHWING        = 70000,
    SUMMON_WACHPOSTEN       = 70001,
    SUMMON_WORGEN           = 70002,

    NPC_DUMMI_PUPPE         = 30527,
    NPC_BEAM_TARGET         = 70008,
    NPC_STONE_DRAKE         = 70006,
    NPC_SANDSTONE_DRAKE     = 70007,
    NPC_FIRE_WORGEN         = 70013,

    // Vendoren
    NPC_T9_VENDOR           = 500132,
    NPC_T9_25_VENDOR        = 500133,
    NPC_T9_5_VENDOR         = 500134,

    NPC_WARRI_ALLI          = 80001,
    NPC_WARRI_HORDE         = 80002,
    NPC_PALADIN_ALLI        = 80003,
    NPC_PALADIN_HORDE       = 80004,
    NPC_DRUID_ALLI          = 80006,
    NPC_DRUID_HORDE         = 80007,
    NPC_MAGE_ALLI           = 80008,
    NPC_MAGE_HORDE          = 80009,
    NPC_WARLOCK_ALLI        = 80010,
    NPC_WARLOCK_HORDE       = 80011,
    NPC_PRIEST_ALLI         = 80012,
    NPC_PRIEST_HORDE        = 80013,
    NPC_HUNTER_ALLI         = 80014,
    NPC_HUNTER_HORDE        = 80015,
    NPC_ROGUE_ALLI          = 80016,
    NPC_ROGUE_HORDE         = 80017,
    NPC_DEATHKNIGHT_ALLI    = 80018,
    NPC_DEATHKNIGHT_HORDE   = 80019,
    NPC_SHAMAN_ALLI         = 80020,
    NPC_SHAMAN_HORDE        = 80021,
};

enum Spells
{
    SPELL_WORGEN_ENRAGE     = 8599,

    // Mage
    SPELL_ARKAN_SCHLAG      = 30451,
    SPELL_FROST_FEUER_BLITZ = 44614,

    // Priest
    SPELL_FREYA_HOLOGRAM    = 64269,

    // WL
    SPELL_BLACK_BEAM        = 72735,

    // Vendoern
    SPELL_GREEN_CHANNEL     = 61942,
    SPELL_SHADOWFORM        = 60449,
    SPELL_BLACK_EXPLOSION   = 94426,
};

enum Phase
{
    PHASE_NONE              = 0,
    PHASE_FLY_1             = 1,
    PHASE_FLY_2             = 2,
};

enum Point
{
    POINT_FLY_1             = 1,
    POINT_FLY_2             = 2,
    POINT_DESPAWN           = 3,
};

enum RandomSounds
{
    RANDOM_SOUND_1          = 21826,
    RANDOM_SOUND_2          = 21827,
    RANDOM_SOUND_3          = 21828,
    RANDOM_SOUND_4          = 21829,
    RANDOM_SOUND_5          = 21830,
    RANDOM_SOUND_6          = 21831,
    RANDOM_SOUND_7          = 21832
};

float FireTriggerSpawnGuildHoise[12][3] =
{
    {-3702.314209f, -1774.134521f, 180.855469f},
    {-3695.340820f, -1764.385254f, 183.002213f},
    {-3702.264893f, -1765.024170f, 179.029846f},
    {-3699.448730f, -1809.087891f, 180.142242f},
    {-3707.701416f, -1804.043579f, 179.097992f},
    {-3705.118896f, -1816.395386f, 181.851639f},
    {-3752.300781f, -1827.742554f, 183.900497f},
    {-3748.648193f, -1834.319604f, -182.106781f},
    {-3742.847656f, -1829.328125f, 181.486374f},
    {-3761.859375f, -1781.250000f, 181.979828f},
    {-3761.915039f, -1770.135010f, 180.806305f},
    {-3754.316895f, -1769.707275f, 180.661819f}
};

#define SAY_ATTACK_1 "Wachen!!!! ANGRIFF!!!!!!!!"
#define SAY_ATTACK_2 "Sie sind da macht EUCH BEREIIITT"
#define SAY_ATTACK_3 "Die Worgens sind wieder da, sie greifen an!!!!"

#define SAY_TAURE_KIDS "Die Kinder heut zu Tage."
#define SAY_WORGEN_KIDS_1 "Das kann doch nicht wahr sein."
#define SAY_WORGEN_KIDS_2 "Jetzt hör doch mal auf!"
#define SAY_WORGEN_KIDS_3 "Hm.. na ok!"
#define SAY_WORGEN_KIDS_4 "Echt ????"

#define SAY_PALADIN_1 "Nein ich habe recht!"
#define SAY_PALADIN_2 "Du bist ein verdammter besserwisser!"
#define SAY_PALADIN_3 "Wieso du? Woher willste das wissen??? NEIN ICH HAB RECHT!!!"
#define SAY_PALADIN_4 "Aha? Sicher.... glaub ich nicht."

#define SAY_WARLOCK_1 "So, nun Lektion 1 schau gut zu"
#define SAY_WARLOCK_2 "Siehst du wie ich den Menschen in der Luft halte?"
#define SAY_WARLOCK_3 "Ja."
#define SAY_WARLOCK_4 "Nungut. Jetzt darfst du es nachmachen"
#define SAY_WARLOCK_5 "Ok!"
#define SAY_WARLOCK_6 "Gut gemacht, jetzt machen wir es mal zusammen."
#define SAY_WARLOCK_7 "Auf 3"
#define SAY_WARLOCK_8 "1"
#define SAY_WARLOCK_9 "2"
#define SAY_WARLOCK_10 "3"
#define SAY_WARLOCK_11 "LOS!"
#define SAY_WARLOCK_12 "Gut, jetzt darfst du eine Pause machen"

#define SAY_PRIEST_1 "Also na dann mal los... Ich werde dich gefangen nehmen alter Worgen!"
#define SAY_PRIEST_2 "Meine... meine... meine Kraft l\303\244sst langsam nach. Bitte \303\274bernehme f\303\274r mich!"
#define SAY_PRIEST_3 "Okay..."

class npc_deathwing_treff : public CreatureScript
{
public:
    npc_deathwing_treff() : CreatureScript("npc_deathwing_treff") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_deathwing_treffAI (pCreature);
    }

    struct npc_deathwing_treffAI : public ScriptedAI
    {
        npc_deathwing_treffAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            me->SetFlying(true);
        }

        uint32 uiRandomSounds;
        uint32 uiPhase;
        uint32 Phasetimer;
        uint32 Step;

        bool RandomSoundsDisable;

        void Reset()
        {
            me->GetMotionMaster()->MovePoint(POINT_FLY_1, -3726.314209f, -1792.522827f, 181.650238f+20);
            me->SetReactState(REACT_PASSIVE);
            Step = 0;
            uiPhase = PHASE_NONE;
            Phasetimer = -1;

            RandomSoundsDisable = false;
            uiRandomSounds = 5000;
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage)
        {
            if (damage >= me->GetHealth())
                damage = 0;
        }

        void JumpToNextStep(uint32 uiTimer)
        {
            Phasetimer = uiTimer;
            ++Step;
        }

        void MovementInform(uint32 type, uint32 id)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (id)
            {
            case POINT_FLY_1:
                uiPhase = PHASE_FLY_1;
                Step = 0;
                Phasetimer = -1;
                JumpToNextStep(100);
                break;
            default:
                break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if(!RandomSoundsDisable)
            {
                if (uiRandomSounds <= diff)
                {
                    switch (urand(0,6))
                    {
                        case 0: DoPlaySoundToSet(me, RANDOM_SOUND_1); break;
                        case 1: DoPlaySoundToSet(me, RANDOM_SOUND_2); break;
                        case 2: DoPlaySoundToSet(me, RANDOM_SOUND_3); break;
                        case 3: DoPlaySoundToSet(me, RANDOM_SOUND_4); break;
                        case 4: DoPlaySoundToSet(me, RANDOM_SOUND_5); break;
                        case 5: DoPlaySoundToSet(me, RANDOM_SOUND_6); break;
                    }
                    uiRandomSounds = 10000;
                } else uiRandomSounds -= diff;
            }

            if (uiPhase == PHASE_FLY_1)
            {
                if (Phasetimer <= diff)
                {
                    switch (Step)
                    {
                    case 1:
                        DoPlaySoundToSet(me, RANDOM_SOUND_1);
                        JumpToNextStep(10000);
                        break;
                    default:
                        break;
                    }
                }
                else
                    Phasetimer -= diff;
            }
        }
    };
};

class npc_deahtwing_summon_trigger : public CreatureScript
{
public:
    npc_deahtwing_summon_trigger() : CreatureScript("npc_deahtwing_summon_trigger") { }

    struct npc_deahtwing_summon_triggerAI : public ScriptedAI
    {
        npc_deahtwing_summon_triggerAI(Creature *creature) : ScriptedAI(creature)
        {
            Reset();
        }

        uint32 uiSummonTimer;

        bool Combat;

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            uiSummonTimer = 10*MINUTE*IN_MILLISECONDS;
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage)
        {
            if (damage >= me->GetHealth())
                damage = 0;
        }

        void UpdateAI(const uint32 diff)
        {
            if (uiSummonTimer <= diff)
            {
                me->SummonCreature(SUMMON_DEATHWING, -3899.796387f, -1883.606445f, 170.824677f+20, 0.0f, TEMPSUMMON_CORPSE_DESPAWN);
                uiSummonTimer = 120*MINUTE*IN_MILLISECONDS;
            } else uiSummonTimer -= diff;
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_deahtwing_summon_triggerAI(creature);
    }
};


class npc_acheron_wache : public CreatureScript
{
public:
    npc_acheron_wache() : CreatureScript("npc_acheron_wache") { }

    struct npc_acheron_wacheAI : public ScriptedAI
    {
        npc_acheron_wacheAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        void Reset()
        {
            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_READY1H);
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage)
        {
            if (damage >= me->GetHealth())
                damage = 0;
        }

        void EnterCombat(Unit * /*who*/){}

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_acheron_wacheAI(creature);
    }
};

class npc_summon_trigger : public CreatureScript
{
public:
    npc_summon_trigger() : CreatureScript("npc_summon_trigger") { }

    struct npc_summon_triggerAI : public ScriptedAI
    {
        npc_summon_triggerAI(Creature *creature) : ScriptedAI(creature)
        {
            Reset();
        }

        uint32 uiSummonTimer;

        bool Combat;

        void Reset()
        {
            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_READY1H);
            uiSummonTimer = 100;
            Combat = false;
        }

        void EnterCombat(Unit * /*who*/)
        {
            Combat = true;
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage)
        {
            if (damage >= me->GetHealth())
                damage = 0;
        }

        void UpdateAI(const uint32 diff)
        {
            if(!Combat)
            {
                if (uiSummonTimer <= diff)
                {
                    switch (urand(0,2))
                    {
                        case 0: me->MonsterYell(SAY_ATTACK_1, LANG_UNIVERSAL, NULL); break;
                        case 1: me->MonsterYell(SAY_ATTACK_2, LANG_UNIVERSAL, NULL); break;
                        case 2: me->MonsterYell(SAY_ATTACK_3, LANG_UNIVERSAL, NULL); break;
                    }
                    
                    for (uint32 i = 0; i < 5; ++i)
                    if(Creature* worgen = me->SummonCreature(SUMMON_WORGEN, -3821.689453f-5+rand()%10, -1622.549218f-5+rand()%10, 158.022324f, 0.0f, TEMPSUMMON_CORPSE_DESPAWN))
                    {
                        worgen->AI()->AttackStart(me);
                        worgen->GetMotionMaster()->MoveJump(me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 10.0f, 20.0f);
                    }
                    uiSummonTimer = 10000;
                } else uiSummonTimer -= diff;
            }

            if (!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_summon_triggerAI(creature);
    }
};

class npc_acheron_worgen : public CreatureScript
{
public:
    npc_acheron_worgen() : CreatureScript("npc_acheron_worgen") { }

    struct npc_acheron_worgenAI : public ScriptedAI
    {
        npc_acheron_worgenAI(Creature *creature) : ScriptedAI(creature)
        {
            Reset();
        }

        uint32 uiEnrageTimer;

        void Reset()
        {
            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_ONESHOT_READY1H);
            uiEnrageTimer = urand(15000,25000);
        }

        void EnterCombat(Unit* /*who*/)
        {
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (uiEnrageTimer <= diff)
            {
                DoCast(me, SPELL_WORGEN_ENRAGE);
                uiEnrageTimer = 60000;
            } else uiEnrageTimer -= diff;

            DoMeleeAttackIfReady();
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_acheron_worgenAI(creature);
    }
};

class npc_pt : public CreatureScript
{
public:
    npc_pt() : CreatureScript("npc_pt") { }

    struct npc_ptAI : public ScriptedAI
    {
        npc_ptAI(Creature *creature) : ScriptedAI(creature)
        {
        }

        // Guids Definiereungen
        uint64 BeamTarget[5];
        uint64 uiPaladinGUID;
        uint64 uiWarlockAlliGUID;
        uint64 uiPriestGUID;
        uint64 uiDragonGUID;
        uint64 uiVendorT9Horde1GUID;
        uint64 uiVendorT9Horde2GUID;

        // Klassen Definiereungen
        uint32 uiRandomDeathknightHordeSayTimer;
        uint32 uiRandomFireWorgenSayTimer;
        uint32 uiPhasetimer;
        uint32 uiStep;

        void Reset()
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);

            switch(me->GetEntry())
            {
                case NPC_PRIEST_ALLI:
                    uiPriestGUID = 0;
                    BeamTarget[0] = 0;
                    uiStep = 0;
                    uiPhasetimer = -1;
                    JumpToNextStep(60000);
                    break;
                case NPC_PRIEST_HORDE:
                    break;
                case NPC_MAGE_ALLI:
                    BeamTarget[2] = 0;
                    uiStep = 0;
                    uiPhasetimer = -1;
                    JumpToNextStep(urand(100,1000));
                case NPC_MAGE_HORDE:
                    BeamTarget[3] = 0;
                    uiStep = 0;
                    uiPhasetimer = -1;
                    JumpToNextStep(urand(100,1000));
                    break;
                case NPC_WARLOCK_ALLI:
                    break;
                case NPC_WARLOCK_HORDE:
                    uiWarlockAlliGUID = 0;
                    BeamTarget[1] = 0;
                    uiStep = 0;
                    uiPhasetimer = -1;
                    JumpToNextStep(60000);
                    break;
                case NPC_DEATHKNIGHT_HORDE:
                    uiRandomDeathknightHordeSayTimer = 30000;
                    break;
                case NPC_PALADIN_ALLI:
                    uiPaladinGUID = 0;
                    uiStep = 0;
                    uiPhasetimer = -1;
                    JumpToNextStep(60000);
                    break;
                case NPC_FIRE_WORGEN:
                    uiRandomFireWorgenSayTimer = 15000;
                    break;
                case NPC_T9_VENDOR:
                    uiVendorT9Horde1GUID = 0;
                    uiVendorT9Horde2GUID = 0;
                    BeamTarget[5] = 0;
                    uiDragonGUID = 0;
                    uiStep = 0;
                    uiPhasetimer = -1;
                    JumpToNextStep(5000);
                    break;
            }
        }

        void JumpToNextStep(uint32 uiTimer)
        {
            uiPhasetimer = uiTimer;
            ++uiStep;
        }

        void DespawnCreatures(uint32 entry, float distance)
        {
            std::list<Creature*> m_creatures;
            GetCreatureListWithEntryInGrid(m_creatures, me, entry, distance);
	 
            if (m_creatures.empty())
                return;
	 
            for(std::list<Creature*>::iterator iter = m_creatures.begin(); iter != m_creatures.end(); ++iter)
            (*iter)->ForcedDespawn();
        }

        void DamageTaken(Unit* /*attacker*/, uint32& damage)
        {
            if (damage >= me->GetHealth())
                damage = 0;
        }

        void EnterCombat(Unit * /*who*/){}

        void UpdateAI(const uint32 diff)
        {
            switch(me->GetEntry())
            {
                case NPC_WARRI_ALLI:
                    break;
                case NPC_WARRI_HORDE:
                    break;
                case NPC_PALADIN_ALLI:
                    if (uiPhasetimer <= diff)
                    {
                        switch (uiStep)
                        {
                        case 1:
                            switch (urand(0,1))
                            {
                                case 0: me->MonsterSay(SAY_PALADIN_1, LANG_UNIVERSAL, NULL); break;
                                case 1: me->MonsterSay(SAY_PALADIN_2, LANG_UNIVERSAL, NULL); break;
                            }
                            JumpToNextStep(3000);
                            break;
                        case 2:
                            if (Unit* pPaladin = GetClosestCreatureWithEntry(me, NPC_PALADIN_HORDE, 5.0f))
                            {
                                uiPaladinGUID = pPaladin->GetGUID();
                                switch (urand(0,1))
                                {
                                    case 0: pPaladin->MonsterSay(SAY_PALADIN_3, LANG_UNIVERSAL, NULL); break;
                                    case 1: pPaladin->MonsterSay(SAY_PALADIN_4, LANG_UNIVERSAL, NULL); break;
                                }
                            }
                            JumpToNextStep(3000);
                            break;
                        case 3:
                            me->AI()->Reset();
                            break;
                        default:
                            break;
                        }
                    }
                    else uiPhasetimer -= diff;
                    break;
                case NPC_PALADIN_HORDE:
                    break;
                case NPC_DRUID_ALLI:
                    break;
                case NPC_DRUID_HORDE:
                    break;
                case NPC_MAGE_ALLI:
                    if (uiPhasetimer <= diff)
                    {
                        switch (uiStep)
                        {
                        case 1:
                            if (Unit* pBeamTarget = me->SummonCreature(NPC_BEAM_TARGET, -3847.458252f, -1585.461670f, 136.193924f, 5.90835f, TEMPSUMMON_TIMED_DESPAWN, 20000))
                            {
                                BeamTarget[2] = pBeamTarget->GetGUID();
                                pBeamTarget->SetDisplayId(3019);  //invisible
                                pBeamTarget->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                                pBeamTarget->SetHealth(1000000);
                                pBeamTarget->AddThreat(me, 250.0f);
                            }
                            JumpToNextStep(1500);
                            break;
                        case 2:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[2]))
                                DoCast(pBeamTarget, SPELL_ARKAN_SCHLAG);
                            JumpToNextStep(3000);
                            break;
                        case 3:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[2]))
                                DoCast(pBeamTarget, SPELL_ARKAN_SCHLAG);
                            JumpToNextStep(3000);
                            break;
                        case 4:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[2]))
                                DoCast(pBeamTarget, SPELL_FROST_FEUER_BLITZ);
                            JumpToNextStep(3000);
                            break;
                        case 5:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[2]))
                                DoCast(pBeamTarget, SPELL_FROST_FEUER_BLITZ);
                            JumpToNextStep(100);
                            break;
                        case 6:
                            me->AI()->Reset();
                            break;
                        default:
                            break;
                        }
                    }
                    else uiPhasetimer -= diff;
                    break;
                case NPC_MAGE_HORDE:
                    if (uiPhasetimer <= diff)
                    {
                        switch (uiStep)
                        {
                        case 1:
                            if (Unit* pBeamTarget = me->SummonCreature(NPC_BEAM_TARGET, -3842.728760f, -1588.693970f, 136.678024f, 5.90835f, TEMPSUMMON_TIMED_DESPAWN, 20000))
                            {
                                BeamTarget[3] = pBeamTarget->GetGUID();
                                pBeamTarget->SetDisplayId(3019);  //invisible
                                pBeamTarget->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                                pBeamTarget->SetHealth(1000000);
                                pBeamTarget->AddThreat(me, 250.0f);
                            }
                            JumpToNextStep(1500);
                            break;
                        case 2:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[3]))
                                DoCast(pBeamTarget, SPELL_ARKAN_SCHLAG);
                            JumpToNextStep(3000);
                            break;
                        case 3:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[3]))
                                DoCast(pBeamTarget, SPELL_ARKAN_SCHLAG);
                            JumpToNextStep(3000);
                            break;
                        case 4:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[3]))
                                DoCast(pBeamTarget, SPELL_FROST_FEUER_BLITZ);
                            JumpToNextStep(3000);
                            break;
                        case 5:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[3]))
                                DoCast(pBeamTarget, SPELL_FROST_FEUER_BLITZ);
                            JumpToNextStep(100);
                            break;
                        case 6:
                            me->AI()->Reset();
                            break;
                        default:
                            break;
                        }
                    }
                    else uiPhasetimer -= diff;
                    break;
                case NPC_WARLOCK_ALLI:
                    break;
                case NPC_WARLOCK_HORDE:
                    if (uiPhasetimer <= diff)
                    {
                        switch (uiStep)
                        {
                        case 1:
                            me->MonsterSay(SAY_WARLOCK_1, LANG_UNIVERSAL, NULL);
                            JumpToNextStep(5000);
                            break;
                        case 2:
                            if (Unit* pBeamTarget = me->SummonCreature(NPC_BEAM_TARGET, -3834.447754f, -1680.060059f, 142.590927f+5, 5.90835f, TEMPSUMMON_DEAD_DESPAWN, 180000))
                            {
                                BeamTarget[1] = pBeamTarget->GetGUID();
                                pBeamTarget->SetDisplayId(34815);  //invisible
                                pBeamTarget->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                                pBeamTarget->SetFlying(true);
                            }
                            JumpToNextStep(3000);
                            break;
                        case 3:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[1]))
                            {
                                me->MonsterSay(SAY_WARLOCK_2, LANG_UNIVERSAL, NULL);
                                me->CastSpell(pBeamTarget, SPELL_BLACK_BEAM,true);
                            }
                            JumpToNextStep(15000);
                            break;
                        case 4:
                            if (Unit* pWarlock = GetClosestCreatureWithEntry(me, NPC_WARLOCK_ALLI, 5.0f))
                            {
                                uiWarlockAlliGUID = pWarlock->GetGUID();
                                pWarlock->MonsterSay(SAY_WARLOCK_3, LANG_UNIVERSAL, NULL);
                            }
                            JumpToNextStep(3000);
                            break;
                        case 5:
                            me->CastStop();
                            me->MonsterSay(SAY_WARLOCK_4, LANG_UNIVERSAL, NULL);
                            JumpToNextStep(3000);
                            break;
                        case 6:
                            if (Creature* pWarlock = Unit::GetCreature(*me, uiWarlockAlliGUID))
                                pWarlock->MonsterSay(SAY_WARLOCK_5, LANG_UNIVERSAL, NULL);
                            JumpToNextStep(3000);
                            break;
                        case 7:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[1]))
                                if (Creature* pWarlock = Unit::GetCreature(*me, uiWarlockAlliGUID))
                                {
                                    pWarlock->CastSpell(pBeamTarget, SPELL_BLACK_BEAM,true);
                                }
                            JumpToNextStep(15000);
                            break;
                        case 8:
                            if (Creature* pWarlock = Unit::GetCreature(*me, uiWarlockAlliGUID))
                                pWarlock->CastStop();
                            JumpToNextStep(1000);
                            break;
                        case 9:
                            me->MonsterSay(SAY_WARLOCK_6, LANG_UNIVERSAL, NULL);
                            JumpToNextStep(8000);
                            break;
                        case 10:
                            me->MonsterSay(SAY_WARLOCK_7, LANG_UNIVERSAL, NULL);
                            JumpToNextStep(2000);
                            break;
                        case 11:
                            me->MonsterSay(SAY_WARLOCK_8, LANG_UNIVERSAL, NULL);
                            JumpToNextStep(2000);
                            break;
                        case 12:
                            me->MonsterSay(SAY_WARLOCK_9, LANG_UNIVERSAL, NULL);
                            JumpToNextStep(2000);
                            break;
                        case 13:
                            me->MonsterSay(SAY_WARLOCK_10, LANG_UNIVERSAL, NULL);
                            JumpToNextStep(2000);
                            break;
                        case 14:
                            me->MonsterSay(SAY_WARLOCK_11, LANG_UNIVERSAL, NULL);
                            JumpToNextStep(2000);
                            break;
                        case 15:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[1]))
                                if (Creature* pWarlock = Unit::GetCreature(*me, uiWarlockAlliGUID))
                            {
                                pWarlock->CastSpell(pBeamTarget, SPELL_BLACK_BEAM,true);
                                me->CastSpell(pBeamTarget, SPELL_BLACK_BEAM,true);
                            }
                            JumpToNextStep(15000);
                            break;
                        case 16:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[1]))
                                if (Creature* pWarlock = Unit::GetCreature(*me, uiWarlockAlliGUID))
                            {
                                me->MonsterSay(SAY_WARLOCK_12, LANG_UNIVERSAL, NULL);
                                pWarlock->CastStop();
                                me->CastStop();
                            }
                            JumpToNextStep(1000);
                            break;
                        case 17:
                            DespawnCreatures(NPC_BEAM_TARGET, 5);
                            me->AI()->Reset();
                            break;
                        default:
                            break;
                        }
                    }
                    else uiPhasetimer -= diff;
                    break;
                case NPC_PRIEST_ALLI:
                    if (uiPhasetimer <= diff)
                    {
                        switch (uiStep)
                        {
                        case 1:
                            me->MonsterSay(SAY_PRIEST_1, LANG_UNIVERSAL, NULL);
                            if (Unit* pBeamTarget = me->SummonCreature(NPC_BEAM_TARGET, -3936.229736f, -1632.357544f, 133.016541f,5.90835f, TEMPSUMMON_DEAD_DESPAWN, 180000))
                            {
                                BeamTarget[0] = pBeamTarget->GetGUID();
                                pBeamTarget->SetDisplayId(34815);
                                pBeamTarget->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                            }
                            if (Unit* pPriest = GetClosestCreatureWithEntry(me, NPC_PRIEST_HORDE, 5.0f))
                                uiPriestGUID = pPriest->GetGUID();
                            JumpToNextStep(2000);
                            break;
                        case 2:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[0]))
                                me->CastSpell(pBeamTarget, SPELL_FREYA_HOLOGRAM, true);
                            JumpToNextStep(60000);
                            break;
                        case 3:
                            me->CastStop();
                            me->SetUInt32Value(UNIT_NPC_EMOTESTATE, EMOTE_STATE_KNEEL);
                            me->MonsterSay(SAY_PRIEST_2, LANG_UNIVERSAL, NULL);
                            JumpToNextStep(3000);
                            break;
                        case 4:
                            if (Creature* pPriest = Unit::GetCreature(*me, uiPriestGUID))
                            {
                                pPriest->MonsterSay(SAY_PRIEST_3, LANG_UNIVERSAL, NULL);
                                pPriest->SetUInt32Value(UNIT_NPC_EMOTESTATE, 0);
                            }
                            JumpToNextStep(3000);
                            break;
                        case 5:
                            if (Creature* pPriest = Unit::GetCreature(*me, uiPriestGUID))
                                if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[0]))
                                {
                                    pPriest->CastSpell(pBeamTarget, SPELL_FREYA_HOLOGRAM, true);
                                }
                            JumpToNextStep(60000);
                            break;
                        case 6:
                            if (Creature* pPriest = Unit::GetCreature(*me, uiPriestGUID))
                            {
                                pPriest->CastStop();
                                me->AI()->Reset();
                                DespawnCreatures(NPC_BEAM_TARGET, 10);
                            }
                            break;
                        default:
                            break;
                        }
                    }
                    else uiPhasetimer -= diff;
                    break;
                case NPC_PRIEST_HORDE:
                    break;
                case NPC_HUNTER_ALLI:
                    break;
                case NPC_HUNTER_HORDE:
                    break;
                case NPC_ROGUE_ALLI:
                    break;
                case NPC_ROGUE_HORDE:
                    break;
                case NPC_DEATHKNIGHT_ALLI:
                    break;
                case NPC_DEATHKNIGHT_HORDE:
                    if (uiRandomDeathknightHordeSayTimer <= diff)
                    {
                        me->MonsterSay(SAY_TAURE_KIDS, LANG_UNIVERSAL, NULL);
                        uiRandomDeathknightHordeSayTimer = 50000;
                    } else uiRandomDeathknightHordeSayTimer -= diff;
                    break;
                case NPC_SHAMAN_ALLI:
                    break;
                case NPC_SHAMAN_HORDE:
                    break;
                case NPC_FIRE_WORGEN:
                    if (uiRandomFireWorgenSayTimer <= diff)
                    {
                        switch (urand(0,3))
                        {
                            case 0: me->MonsterSay(SAY_WORGEN_KIDS_1, LANG_UNIVERSAL, NULL); break;
                            case 1: me->MonsterSay(SAY_WORGEN_KIDS_2, LANG_UNIVERSAL, NULL); break;
                            case 2: me->MonsterSay(SAY_WORGEN_KIDS_3, LANG_UNIVERSAL, NULL); break;
                            case 3: me->MonsterSay(SAY_WORGEN_KIDS_4, LANG_UNIVERSAL, NULL); break;
                        }
                        uiRandomFireWorgenSayTimer = 20000;
                    } else uiRandomFireWorgenSayTimer -= diff;
                    break;
                case NPC_T9_VENDOR:
                    if (uiPhasetimer <= diff)
                    {
                        switch (uiStep)
                        {
                        case 1:
                            if (Unit* pBeamTarget = me->SummonCreature(NPC_STONE_DRAKE,-3979.297852F, -1621.278198F, 152.977325F+10, 5.323820f, TEMPSUMMON_DEAD_DESPAWN, 20000))
                            {
                                BeamTarget[5] = pBeamTarget->GetGUID();
                                pBeamTarget->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                                pBeamTarget->GetMotionMaster()->MovePoint(0, -3917.411621f, -1609.247437f, 137.171585f+10);
                                pBeamTarget->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                            }
                            if (Unit* pT91 = GetClosestCreatureWithEntry(me, NPC_T9_25_VENDOR, 10.0f))
                                uiVendorT9Horde1GUID = pT91->GetGUID();
                            if (Unit* pT92 = GetClosestCreatureWithEntry(me, NPC_T9_5_VENDOR, 10.0f))
                                uiVendorT9Horde2GUID = pT92->GetGUID();
                            JumpToNextStep(9000);
                            break;
                        case 2:
                            if (Creature* pT91 = Unit::GetCreature(*me, uiVendorT9Horde1GUID))
                                if (Creature* pT92 = Unit::GetCreature(*me, uiVendorT9Horde2GUID))
                                    if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[5]))
                                    {
                                        pT91->CastSpell(pBeamTarget, SPELL_GREEN_CHANNEL, true);
                                        pT92->CastSpell(pBeamTarget, SPELL_GREEN_CHANNEL, true);
                                        me->CastSpell(pBeamTarget, SPELL_GREEN_CHANNEL, true);
                                    }
                            JumpToNextStep(3000);
                            break;
                        case 3:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[5]))
                                pBeamTarget->GetMotionMaster()->MovePoint(0,-3917.411621f, -1609.247437f, 137.171585f);
                            JumpToNextStep(60000);
                            break;
                        case 4:
                            if (Creature* pBeamTarget = Unit::GetCreature(*me, BeamTarget[5]))
                            {
                                pBeamTarget->CastSpell(pBeamTarget, SPELL_BLACK_EXPLOSION, true);
                                me->Kill(pBeamTarget);
                                pBeamTarget->ForcedDespawn(5000);
                            }
                            me->AI()->Reset();
                            break;
                        default:
                            break;
                        }
                    }
                    else uiPhasetimer -= diff;
                    break;
            }
        }
    };

    CreatureAI *GetAI(Creature *creature) const
    {
        return new npc_ptAI(creature);
    }
};

void AddSC_npc_treff()
{
    //new npc_deathwing_treff();
    //new npc_acheron_wache();
    //new npc_summon_trigger();
    //new npc_acheron_worgen();
    //new npc_deahtwing_summon_trigger();
    new npc_pt();
}