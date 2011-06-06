/*
* Copyright (C) 2010 Shadowmourne Core <http://svn2.assembla.com/svn/Shadowmourne/>
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
*/
 
/* ScriptData
SDName: Freya
SDAuthor: 
SD%Complete: 100
SD%Comments:
EndScriptData */

#include "ScriptPCH.h"
#include "ulduar.h"

enum Yells
{
    SAY_AGGRO                                   = -1603180,
    SAY_AGGRO_WITH_ELDER                        = -1603181,
    SAY_SLAY_1                                  = -1603182,
    SAY_SLAY_2                                  = -1603183,
    SAY_DEATH                                   = -1603184,
    SAY_BERSERK                                 = -1603185,
    SAY_SUMMON_CONSERVATOR                      = -1603186,
    SAY_SUMMON_TRIO                             = -1603187,
    SAY_SUMMON_LASHERS                          = -1603188,
    SAY_YS_HELP                                 = -1603189,

    // Elder Brightleaf
    SAY_BRIGHTLEAF_AGGRO                        = -1603190,
    SAY_BRIGHTLEAF_SLAY_1                       = -1603191,
    SAY_BRIGHTLEAF_SLAY_2                       = -1603192,
    SAY_BRIGHTLEAF_DEATH                        = -1603193,

    // Elder Ironbranch
    SAY_IRONBRANCH_AGGRO                        = -1603194,
    SAY_IRONBRANCH_SLAY_1                       = -1603195,
    SAY_IRONBRANCH_SLAY_2                       = -1603196,
    SAY_IRONBRANCH_DEATH                        = -1603197,

    // Elder Stonebark
    SAY_STONEBARK_AGGRO                         = -1603198,
    SAY_STONEBARK_SLAY_1                        = -1603199,
    SAY_STONEBARK_SLAY_2                        = -1603200,
    SAY_STONEBARK_DEATH                         = -1603201,

    EMOTE_GIFT                                  = -1603383,
    EMOTE_ALLIES                                = -1603384,
    EMOTE_ROOTS                                 = -1603385
};

#define ACHIEVEMENT_KNOCK_ON_WOOD_1      RAID_MODE(3177, 3185) /*Done*/
#define ACHIEVEMENT_KNOCK_ON_WOOD_2      RAID_MODE(3178, 3186) /*Done*/
#define ACHIEVEMENT_KNOCK_ON_WOOD_3      RAID_MODE(3179, 3187) /*Done*/
#define ACHIEVEMENT_BACK_TO_NATURE       RAID_MODE(2982, 2983) /*Done*/

#define ACHIEVEMENT_DEFORESTATION                RAID_MODE(2985, 2984)
#define ACHIEVEMENT_LUMBERJACK                   RAID_MODE(2979, 3118) 
#define ACHIEVEMENT_CON_SPEED_ATORY              RAID_MODE(2980, 2981)
#define ACHIEV_CON_SPEED_ATORY_START_EVENT       21597

enum Spells
{
    // Freya
    SPELL_ATTUNED_TO_NATURE                     = 62519,
    SPELL_TOUCH_OF_EONAR                        = 62528,
    SPELL_SUNBEAM                               = 62623,
    SPELL_SUN_BEAM_SUMMON                       = 62450,
    SPELL_EONAR_GIFT                            = 62572,
    SPELL_NATURE_BOMB_SPAWN                     = 64604,
    SPELL_NATURE_BOMB_VISUAL                    = 64648,
    SPELL_SUMMON_ALLIES                         = 62678,
    SPELL_BERSERK                               = 47008,
    SPELL_FREYA_GROUND_TREMOR                   = 62437,
    /*RAID_10_SPELL_FREYA_IRON_ROOTS            = 62283,
    RAID_25_SPELL_FREYA_IRON_ROOTS              = 62930,*/
    SPELL_FREYA_UNSTABLE_ENERGY                 = 62451,
    SPELL_FREYA_IRON_ROOTS                      = 62283,
    SPELL_STONEBARKS_ESSENCE                    = 62386,
    SPELL_IRONBRANCHS_ESSENCE                   = 62713,
    SPELL_BRIGHTLEAFS_ESSENCE                   = 65761, 
    SPELL_DRAINED_OF_POWER                      = 62467,
    RAID_10_0_SPELL_FREYA_CHEST                 = 62950,
    RAID_10_1_SPELL_FREYA_CHEST                 = 62952,
    RAID_10_2_SPELL_FREYA_CHEST                 = 62953,
    RAID_10_3_SPELL_FREYA_CHEST                 = 62954,
    RAID_25_0_SPELL_FREYA_CHEST                 = 62955,
    RAID_25_1_SPELL_FREYA_CHEST                 = 62956,
    RAID_25_2_SPELL_FREYA_CHEST                 = 62957,
    RAID_25_3_SPELL_FREYA_CHEST                 = 62958,

    
    SPELL_ATTUNED_TO_NATURE_2_DOSE_REDUCTION    = 62524,
    SPELL_ATTUNED_TO_NATURE_10_DOSE_REDUCTION   = 62525,
    SPELL_ATTUNED_TO_NATURE_25_DOSE_REDUCTION   = 62521,

    SPELL_SUMMON_WAVE_10_SUMMON                 = 62687,
    SPELL_SUMMON_WAVE_3                         = 62686,
    SPELL_SUMMON_WAVE_1                         = 62685,
       
    // Detonating Lasher
    SPELL_DETONATE                              = 62598,
    SPELL_FLAME_LASH                            = 62608,
       
    // Ancient Conservator
    SPELL_CONSERVATORS_GRIP                     = 62532,
    SPELL_NATURES_FURY                          = 62589,
   
    // Ancient Water Spirit
    SPELL_TIDAL_WAVE                            = 62935,
    SPELL_TIDAL_WAVE_DAMAGE                     = 62654,
   
    // Storm Lasher
    SPELL_LIGHTNING_LASH                        = 62648,
    SPELL_STORMBOLT                             = 62649,
    SPELL_STORM_LASHER_EFFEKT_1                 = 62639,
    SPELL_STORM_LASHER_EFFEKT_2                 = 62640,
   
    // Snaplasher
    /*RAID_10_SPELL_HARDENED_BARK               = 62664,
    RAID_25_SPELL_HARDENED_BARK                 = 64191,*/
    SPELL_HARDENED_BARK                         = 62664,
   
    // Nature Bomb
    SPELL_SUMMON_NATURE_BOMB                    = 64600,
    SPELL_NATURE_BOMB                           = 64587,
   
    // Eonars_Gift
    SPELL_LIFEBINDERS_GIFT                      = 62584,
    SPELL_PHEROMONES                            = 62619,
    SPELL_EONAR_VISUAL                          = 62579,
   
    // Healthy Spore
    SPELL_HEALTHY_SPORE_VISUAL                  = 62538,
    SPELL_GROW                                  = 62559,
    SPELL_POTENT_PHEROMONES                     = 62541,
    SPELL_POTENT_PHEROMONES_AURA                = 64321,
   
    // Elder Stonebark
    SPELL_PETRIFIED_BARK                        = 62337,
    SPELL_FISTS_OF_STONE                        = 62344,
    SPELL_GROUND_TREMOR                         = 62325,
   
    // Elder Ironbranch
    SPELL_IMPALE                                = 62310,
    SPELL_THORN_SWARM                           = 64060,
    SPELL_IRON_ROOTS                            = 62438,
   
    // Elder Brightleaf
    SPELL_BRIGHTLEAF_FLUX                       = 62239,
    SPELL_UNSTABLE_ENERGY                       = 62217,
    SPELL_SOLAR_FLARE                           = 62240,
    SPELL_PHOTOSYNTHESIS                        = 62209,
    SPELL_UNSTABLE_SUN_BEAM                     = 62211,
    SPELL_UNSTABLE_SUN_BEAM_SUMMON              = 62450,
    SPELL_UNSTABLE_SUN_BEAM_VISUAL              = 62216
};

enum FreyaNpcs
{
    OBJECT_NATURE_BOMB                          = 194902,
};

enum Events
{
    EVENT_NONE                                  = 0,
    EVENT_SUNBEAM                               = 1,
    EVENT_EONAR_GIFT                            = 2,
    EVENT_SUMMON_ALLIES                         = 3,
    EVENT_NATURE_BOMB                           = 4,
    EVENT_BRIGHTLEAF                            = 5,
    EVENT_IRONBRANCH                            = 6,
    EVENT_STONEBARK                             = 7,
    EVENT_PHASE_2                               = 8,
    EVENT_BERSERK                               = 9,
};

enum Actions
{
    ACTION_LASHER                               = 0,
    ACTION_ELEMENTAL                            = 1,
    ACTION_ANCIENT                              = 2,
    ACTION_ELEMENTAL_DEAD                       = 3
};

enum Phases
{
    PHASE_NULL                                  = 0,
    PHASE_ENDING                                = 1,
};

class boss_freya : public CreatureScript
{
public:
    boss_freya() : CreatureScript("boss_freya") { }

    struct boss_freyaAI : public BossAI
    {
        boss_freyaAI(Creature* creature) : BossAI(creature, BOSS_FREYA)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true); // Death Grip jump effect
        }

        void InitializeAI()
        {
            if (!instance || static_cast<InstanceMap*>(me->GetMap())->GetScriptId() != GetScriptId(IUUScriptName))
                me->IsAIEnabled = false;
            else if (!me->isDead())
                Reset();
        }

        void Reset()
        {
            _Reset();
            if (instance)
            {
                for (uint8 data = DATA_BRIGHTLEAF; data <= DATA_STONEBARK; ++data)
                {
                    if (Creature *pCreature = Creature::GetCreature((*me), instance->GetData64(data)))
                    {
                        if (pCreature->isAlive())
                            pCreature->AI()->EnterEvadeMode();
                    }
                }
            }
	        me->UpdateMaxHealth();
            spawnedAdds = 0;
            eldersCount = 0;
            deforestationTimer = 0;
            deforestationCount = 0;
            phase = PHASE_NULL;
            checkelementalAlive = true;
            bCheckDeforestation = false;
            randomizeSpawnOrder();        
        }

        void KilledUnit(Unit *victim)
        {
            DoScriptText(RAND(SAY_SLAY_1,SAY_SLAY_2), me);
        }

        void JustDied(Unit *victim)
        {
            _JustDied();
        }

        void EnterCombat(Unit* who)
        {
            _EnterCombat();
	       
            DoCast(me, SPELL_TOUCH_OF_EONAR);

            for (uint32 i = 0; i < 150; ++i)
                DoCast(me, SPELL_ATTUNED_TO_NATURE);

            events.ScheduleEvent(EVENT_SUNBEAM, 20000);
            events.ScheduleEvent(EVENT_EONAR_GIFT, 30000);
            events.ScheduleEvent(EVENT_SUMMON_ALLIES, 10000);
            events.ScheduleEvent(EVENT_NATURE_BOMB, 360000);
            events.ScheduleEvent(EVENT_BERSERK, 600000);
	       
            // Freya hard mode can be triggered simply by letting the elders alive
            if(Creature* brightleaf = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_BRIGHTLEAF) : 0))
				if(brightleaf->isAlive())
				{
					eldersCount++;
					brightleaf->SetInCombatWithZone();
					brightleaf->CastSpell(brightleaf, SPELL_BRIGHTLEAFS_ESSENCE, true);
					brightleaf->AddAura(SPELL_BRIGHTLEAFS_ESSENCE, brightleaf);
					brightleaf->AddAura(SPELL_DRAINED_OF_POWER, brightleaf);
					me->AddAura(SPELL_BRIGHTLEAFS_ESSENCE, me);
					DoCast(SPELL_BRIGHTLEAFS_ESSENCE);
					events.ScheduleEvent(EVENT_BRIGHTLEAF, urand(15000, 30000));
				}
	           
            if(Creature* ironbranch = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_IRONBRANCH) : 0))
				if(ironbranch->isAlive())
				{
					eldersCount++;
					ironbranch->SetInCombatWithZone();
					ironbranch->CastSpell(ironbranch, SPELL_IRONBRANCHS_ESSENCE, true);
					ironbranch->AddAura(SPELL_IRONBRANCHS_ESSENCE, ironbranch);
					ironbranch->AddAura(SPELL_DRAINED_OF_POWER, ironbranch);
					DoCast(SPELL_IRONBRANCHS_ESSENCE);
					me->AddAura(SPELL_IRONBRANCHS_ESSENCE, me);
					events.ScheduleEvent(EVENT_IRONBRANCH, urand(45000, 60000));
				}
	           
            if(Creature* stonebark = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_STONEBARK) : 0))
				if(stonebark->isAlive())
				{
					eldersCount++;
					stonebark->SetInCombatWithZone();
					stonebark->CastSpell(stonebark, SPELL_STONEBARKS_ESSENCE, true);
					stonebark->AddAura(SPELL_DRAINED_OF_POWER, stonebark);
					DoCast(SPELL_STONEBARKS_ESSENCE);
					me->AddAura(SPELL_STONEBARKS_ESSENCE, me);
					events.ScheduleEvent(EVENT_STONEBARK, urand(35000, 45000));
				}
	           
            if (eldersCount == 0)
                DoScriptText(SAY_AGGRO, me);
            else
            {
                DoScriptText(SAY_AGGRO_WITH_ELDER, me);
                me->SetMaxHealth(me->GetMaxHealth() + (uint32)(me->GetMaxHealth() * eldersCount * 20 / 100));
                me->SetHealth(me->GetMaxHealth());
            }

        }

        void UpdateDeforestation()
        {
            if (!bCheckDeforestation)
                bCheckDeforestation = true;

            deforestationCount++;
        }

        void BindToInstance()
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

        void DamageTaken(Unit *who, uint32 &damage)
        {
            if (damage >= me->GetHealth())
            {
                damage = 0;
                BindToInstance();
                me->SetHealth(me->GetMaxHealth());
                me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                me->setFaction(35);
                me->RemoveAllAuras();
                me->DeleteThreatList();
                me->CombatStop(true);
                me->InterruptNonMeleeSpells(false);
                phase = PHASE_ENDING;
                events.SetPhase(PHASE_ENDING);
                step = 0;
                phasetimer = -1;
                JumpToNextStep(100);
            }
        }

        void JumpToNextStep(uint32 uiTimer)
        {
            phasetimer = uiTimer;
            ++step;
        }

        void UpdateAI(const uint32 diff)
        {
            if (phase == PHASE_ENDING)
            {
                if (phasetimer <= diff)
                {
                    switch (step)
                    {
                    case 1:
                        DoScriptText(SAY_DEATH, me);
                        JumpToNextStep(10000);
                        break;
                    case 2:
                        if (instance)
                        {   
                            // Kill credit
                            instance->DoUpdateAchievementCriteria(ACHIEVEMENT_CRITERIA_TYPE_BE_SPELL_TARGET, 65074);
                            // Knock on Wood
                            if (eldersCount == 1)
                                instance->DoCompleteAchievement(ACHIEVEMENT_KNOCK_ON_WOOD_1);
                            // Knock, Knock on Wood
                            if (eldersCount == 2)
                                instance->DoCompleteAchievement(ACHIEVEMENT_KNOCK_ON_WOOD_2);
                            // Knock, Knock, Knock on Wood
                            if (eldersCount == 3)
                                instance->DoCompleteAchievement(ACHIEVEMENT_KNOCK_ON_WOOD_3);
                            // Getting Back to Nature
                            if (me->HasAura(SPELL_ATTUNED_TO_NATURE))
                                if (me->GetAura(SPELL_ATTUNED_TO_NATURE, 0)->GetStackAmount() >= 25)
                                    instance->DoCompleteAchievement(ACHIEVEMENT_BACK_TO_NATURE);
                        }
                        // Hard mode chest
                        uint32 chest;
                        switch (eldersCount)
                        {
                        case 0:
                            chest = RAID_MODE(194324, 194328);
                            break;
                        case 1:
                            chest = RAID_MODE(194325, 194329);
                            break;
                        case 2:
                            chest = RAID_MODE(194326, 194330);
                            break;
                        case 3:
                            chest = RAID_MODE(194327, 194331);
                            break;
                        }
                        // Summon spells not work correctly, chest respawn is infinite
                        me->SummonGameObject(chest,(me->GetPositionX()+15*cos(me->GetOrientation())),(me->GetPositionY()+15*sin(me->GetOrientation())),me->GetPositionZ(),me->GetOrientation(),0,0,1,0,0);
                        JumpToNextStep(2000);
                        break;
                    case 3:
                        if (me->IsVisible())
                            me->SetVisible(false);
                        me->Kill(me);
                        JumpToNextStep(2000);
                        break;
                    default:
                        break;
                    }
                }
                else phasetimer -= diff;
            }
	      
            if (!UpdateVictim())
                return;

            // Achievement Deforestation control
            if (bCheckDeforestation)
                deforestationTimer += diff;
            
            if (deforestationTimer > 10)
            {
                bCheckDeforestation = false;
                deforestationTimer = 0;
                deforestationCount = 0;
            }
            
            if (bCheckDeforestation && deforestationCount == 6 && deforestationTimer <= 10 && instance)
            {
                instance->DoCompleteAchievement(ACHIEVEMENT_DEFORESTATION);
                bCheckDeforestation = false;
            }

            // elementals must be killed within 12 seconds of each other, or they will all revive and heal
            if (checkelementalAlive)
            elemTimer = 0;
            else
            {
            elemTimer += diff;
                if (elemTimer > 12000)
                {
                    for (uint32 i = 0; i < 3; i++)
                    {
                        if (elemental[i]->isAlive())
                            elemental[i]->SetHealth(elemental[i]->GetMaxHealth());
                        else
                        {
                            elemental[i]->Respawn();
                            if (deforestationCount > 0)
                                deforestationCount--;
                        }
                    }
                    checkelementalAlive = true;
                }
                else
                {
                    if (elemental[0]->isDead())
                    if (elemental[1]->isDead())
                    if (elemental[2]->isDead())
                {
                    for (uint32 i = 0; i < 3; i++)
						elemental[i]->ForcedDespawn(3000);
	                               
                if (Creature* freya = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_FREYA) : 0))
                    freya->AI()->DoAction(ACTION_ELEMENTAL);
                }
            }
        }
	                           
        if (me->getVictim() && !me->getVictim()->GetCharmerOrOwnerPlayerOrPlayerItself())
            me->Kill(me->getVictim());
	           
        events.Update(diff);
	                       
        if (events.GetTimer() > 360000)
            events.CancelEvent(EVENT_SUMMON_ALLIES);
	           
        if (me->HasUnitState(UNIT_STAT_CASTING))
            return;

        while(uint32 eventId = events.ExecuteEvent())
        {
            switch(eventId)
            {
            case EVENT_SUNBEAM:
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    if (target->isAlive())
                        DoCast(target, SPELL_SUNBEAM);
                events.ScheduleEvent(EVENT_SUNBEAM, urand(10000, 15000));
                break;
            case EVENT_EONAR_GIFT:
            {
                DoScriptText(EMOTE_GIFT, me);
                DoCast(SPELL_EONAR_GIFT);
                events.ScheduleEvent(EVENT_EONAR_GIFT, urand(35000, 45000));
                break;
            }
            case EVENT_SUMMON_ALLIES:
            {
                DoScriptText(EMOTE_ALLIES, me);
                DoCast(me, SPELL_SUMMON_ALLIES);
                spawnAdd();
                events.ScheduleEvent(EVENT_SUMMON_ALLIES, 60000);
                break;
            }
            case EVENT_NATURE_BOMB:
                DoCastAOE(SPELL_NATURE_BOMB_VISUAL);
                for (uint32 i = 0; i < urand(10, 12); ++i)
					DoCastAOE(SPELL_NATURE_BOMB_SPAWN);
                events.ScheduleEvent(EVENT_NATURE_BOMB, urand(15000, 20000));
                break;
            case EVENT_BRIGHTLEAF:
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
					DoCast(target, SPELL_SUN_BEAM_SUMMON);
                events.ScheduleEvent(EVENT_BRIGHTLEAF, urand(20000, 22000));
                break;
            case EVENT_IRONBRANCH:
            {
                DoScriptText(EMOTE_ROOTS, me);
                for (uint8 i = 0; i < RAID_MODE(1,3); ++i)
                {
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                        target->CastSpell(target, SPELL_FREYA_IRON_ROOTS, true);
                }
                events.ScheduleEvent(EVENT_IRONBRANCH, urand(45000, 60000));
                break;
            }
            case EVENT_STONEBARK:
                DoCastAOE(SPELL_FREYA_GROUND_TREMOR);
                events.ScheduleEvent(EVENT_STONEBARK, urand(25000, 30000));
                break;
            case EVENT_BERSERK:
                DoCast(me, SPELL_BERSERK, true);
                DoScriptText(SAY_BERSERK, me);
                events.CancelEvent(EVENT_BERSERK);
                break;
            }
        }
        DoMeleeAttackIfReady();
    }
	   
        void randomizeSpawnOrder()
        {
            //Spawn order algorithm
            spawnOrder[0] = 0; //Detonating Lasher
            spawnOrder[1] = 1; //elemental Adds
            spawnOrder[2] = 2; //Ancient Conservator
	       
            //Swaps the entire array
            for(uint8 n = 0; n < 3; n++)
            {
                uint8 random = rand() % 2;
                uint8 temp = spawnOrder[random];
                spawnOrder[random] = spawnOrder[n];
                spawnOrder[n] = temp;
            }
        }

        void spawnAdd()
        {
            switch(spawnedAdds)
            {
                case 0: spawnHandler(spawnOrder[0]);break;
                case 1: spawnHandler(spawnOrder[1]);break;
                case 2: spawnHandler(spawnOrder[2]);break;
            }

            spawnedAdds++;
            if(spawnedAdds > 2)
            {
                spawnedAdds = 0;
            }
        }

        void spawnHandler(uint8 add)
        {
            switch(add)
            {
                case 0:
                {
                    DoScriptText(SAY_SUMMON_LASHERS, me);
					for(uint8 i = 0; i < 10; i++)
						DoCast(me, SPELL_SUMMON_WAVE_10_SUMMON);
                    break;
                }
                case 1:
                {
                    DoScriptText(SAY_SUMMON_TRIO, me);
                    elemental[0] = me->SummonCreature(NPC_SNAPLASHER, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN);
                    elemental[1] = me->SummonCreature(NPC_ANCIENT_WATER_SPIRIT, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN);
                    elemental[2] = me->SummonCreature(NPC_STORM_LASHER, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_MANUAL_DESPAWN);
                    break;
                }
                case 2:
				{
                	DoCast(me, SPELL_SUMMON_WAVE_1);
                    DoScriptText(SAY_SUMMON_CONSERVATOR, me);
                    break;
                }
            }
        }
	   
        void DoAction(const int32 action)
        {
            switch (action)
            {
            case ACTION_LASHER:
                DoCast(me, SPELL_ATTUNED_TO_NATURE_2_DOSE_REDUCTION);
                break;
            case ACTION_ELEMENTAL:
                checkelementalAlive = true;
                DoCast(me, SPELL_ATTUNED_TO_NATURE_10_DOSE_REDUCTION);
                break;
            case ACTION_ANCIENT:
                DoCast(me, SPELL_ATTUNED_TO_NATURE_25_DOSE_REDUCTION);
                break;
            case ACTION_ELEMENTAL_DEAD:
                checkelementalAlive = false;
                break;
            }
        }

    private:
        uint8 spawnOrder[3];
        uint8 spawnedAdds;
        uint8 eldersCount;
        uint32 elemTimer;
        uint32 deforestationTimer;
        uint32 deforestationCount;
        uint32 phase;
        uint32 phasetimer;
        uint32 step;
        Creature* elemental[3];
        bool checkelementalAlive;
        bool bCheckDeforestation;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_freyaAI (creature);
    }
};

/*===============================================================================================
===============================================================================================*/

class boss_elder_brightleaf : public CreatureScript
{
public:
    boss_elder_brightleaf() : CreatureScript("boss_elder_brightleaf") { }

    struct boss_elder_brightleafAI : public ScriptedAI
    {
        boss_elder_brightleafAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
        }

        InstanceScript* instance;
	 
        void EnterCombat(Unit* who)
        {
            DoScriptText(SAY_BRIGHTLEAF_AGGRO, me);
        }
	   
        void KilledUnit(Unit *victim)
        {
            if (!(rand()%5))
                DoScriptText(RAND(SAY_BRIGHTLEAF_SLAY_1,SAY_BRIGHTLEAF_SLAY_2), me);
        }

        void JustDied(Unit *victim)
        {
            DoScriptText(SAY_BRIGHTLEAF_DEATH, me);
        }

        void Reset()
        {
            unstableSunbeamTimer = 5000;
            solarFlareTimer = 10000;
            unstableEnergyTimer = 20000;
            brightleafFluxTimer = 0;
        }

        void UpdateAI(const uint32 diff)
        {
            if (instance->GetBossState(BOSS_FREYA) == DONE)
                me->ForcedDespawn();

            if(!UpdateVictim())
                return;
	           
            if (GetClosestCreatureWithEntry(me, NPC_SUN_BEAM, 4.0f))
                DoCast(me, SPELL_PHOTOSYNTHESIS, true);

            if(unstableSunbeamTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
					if (target->isAlive())
						me->SummonCreature(NPC_UNSTABLE_SUN_BEAM, target->GetPositionX(), target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 10000);
                unstableSunbeamTimer = 8000;
            }
            else unstableSunbeamTimer -= diff;

            if(solarFlareTimer <= diff)
            {
                DoCast(SPELL_SOLAR_FLARE);
                solarFlareTimer = urand(10000, 15000);
            }
            else solarFlareTimer -= diff;
	           
            if(unstableEnergyTimer <= diff)
            {
                DoCast(SPELL_UNSTABLE_ENERGY);
                unstableEnergyTimer = 15000;
            }
            else unstableEnergyTimer -= diff;
	           
            if(brightleafFluxTimer <= diff)
            {
                me->RemoveAurasDueToSpell(SPELL_BRIGHTLEAF_FLUX);
                for (uint32 i = 0; i < urand(1,10); ++i)
					DoCast(me, SPELL_BRIGHTLEAF_FLUX);
	           
                brightleafFluxTimer = 4000;
            }
            else brightleafFluxTimer -= diff;

            DoMeleeAttackIfReady();
        }

        private:
            uint32 unstableSunbeamTimer;
            uint32 solarFlareTimer;
            uint32 unstableEnergyTimer;
            uint32 brightleafFluxTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_elder_brightleafAI (creature);
    }
};

class creature_sun_beam : public CreatureScript
{
public:
    creature_sun_beam() : CreatureScript("creature_sun_beam") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new creature_sun_beamAI (creature);
    }

    struct creature_sun_beamAI : public Scripted_NoMovementAI
    {
        creature_sun_beamAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            DoCast(SPELL_FREYA_UNSTABLE_ENERGY);
            DoCast(SPELL_UNSTABLE_SUN_BEAM_VISUAL);
        }
    };
};

class creature_unstable_sun_beam : public CreatureScript
{
public:
    creature_unstable_sun_beam() : CreatureScript("creature_unstable_sun_beam") { }

    CreatureAI* GetAI(Creature* creature) const
    {
        return new creature_unstable_sun_beamAI (creature);
    }

    struct creature_unstable_sun_beamAI : public Scripted_NoMovementAI
    {
        creature_unstable_sun_beamAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            DoCast(SPELL_UNSTABLE_SUN_BEAM);
        }
    };
};

class boss_elder_ironbranch : public CreatureScript
{
public:
    boss_elder_ironbranch() : CreatureScript("boss_elder_ironbranch") { }

    struct boss_elder_ironbranchAI : public ScriptedAI
    {
        boss_elder_ironbranchAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
        }

        void Reset()
        {
            impaleTimer = 15000;
            thornSwarmTimer = 20000;
            ironRootTimer = 8000;
        }

        void EnterCombat(Unit* who)
        {
            DoScriptText(SAY_IRONBRANCH_AGGRO, me);
        }
	   
        void KilledUnit(Unit *victim)
        {
            if (!(rand()%5))
                DoScriptText(RAND(SAY_IRONBRANCH_SLAY_1,SAY_IRONBRANCH_SLAY_2), me);
        }

        void JustDied(Unit *victim)
        {
            DoScriptText(SAY_IRONBRANCH_DEATH, me);
        }

        void UpdateAI(const uint32 diff)
        {
            if (instance->GetBossState(BOSS_FREYA) == DONE)
                me->ForcedDespawn();

            if(!UpdateVictim())
                return;

            if(impaleTimer <= diff && me->IsWithinMeleeRange(me->getVictim()))
            {
                DoCastVictim(SPELL_IMPALE);
                impaleTimer = urand(15000, 20000);
            }
            else impaleTimer -= diff;

            if(thornSwarmTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
					DoCast(target, SPELL_THORN_SWARM);
                thornSwarmTimer = urand(20000, 24000);
            }
            else thornSwarmTimer -= diff;

            if(ironRootTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
					if(target && !target->HasAura(SPELL_IMPALE))
						target->CastSpell(target, SPELL_IRON_ROOTS, false);
                ironRootTimer = urand(20000, 25000);
            }
            else ironRootTimer -= diff;

            DoMeleeAttackIfReady();
        }

        private:
            uint32 impaleTimer;
            uint32 thornSwarmTimer;
            uint32 ironRootTimer;

            InstanceScript* instance;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_elder_ironbranchAI (creature);
    }
};

//Freya HM and Elder Ironbranch
class creature_iron_roots : public CreatureScript
{
public:
   creature_iron_roots() : CreatureScript("creature_iron_roots") { }

    struct creature_iron_rootsAI : public ScriptedAI
    {
        creature_iron_rootsAI(Creature *pCreature) : ScriptedAI(pCreature) {}

        void EnterCombat(Unit*)
        {
            Unit* pTarget = me->SelectNearestTarget(1);
            RootsGUID = me->GetGUID();
        }

        void JustDied(Unit* )
        {
            if(Unit* Roots = Unit::GetUnit((*me),RootsGUID))
			{
				if(Roots->HasAura(SPELL_FREYA_IRON_ROOTS))
					Roots->RemoveAura(SPELL_FREYA_IRON_ROOTS);
				if(Roots->HasAura(SPELL_IRON_ROOTS))
					Roots->RemoveAura(SPELL_IRON_ROOTS);
                RootsGUID = 0;
			}
			me->ForcedDespawn(2000);
        }

        private:
            uint64 RootsGUID;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new creature_iron_rootsAI(pCreature);
    }
};

class boss_elder_stonebark : public CreatureScript
{
public:
    boss_elder_stonebark() : CreatureScript("boss_elder_stonebark") { }

    struct boss_elder_stonebarkAI : public ScriptedAI
    {
        boss_elder_stonebarkAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = creature->GetInstanceScript();
        }

        void Reset()
        {
            groundTremorTimer = urand(5000, 10000);
            fistsOfStoneTimer = 25000;
            petrifiedBarkTimer = 35000;
        }

        void EnterCombat(Unit* who)
        {
            DoScriptText(SAY_STONEBARK_AGGRO, me);
        }
	   
        void KilledUnit(Unit *victim)
        {
            if (!(rand()%5))
                DoScriptText(RAND(SAY_STONEBARK_SLAY_1,SAY_STONEBARK_SLAY_2), me);
        }

        void JustDied(Unit *victim)
        {
            DoScriptText(SAY_STONEBARK_DEATH, me);
        }

        void UpdateAI(const uint32 diff)
        {
            if (instance->GetBossState(BOSS_FREYA) == DONE)
                me->ForcedDespawn();

            if(!UpdateVictim() || me->HasUnitState(UNIT_STAT_CASTING))
                return;

            if(groundTremorTimer <= diff)
            {
                DoCastVictim(SPELL_GROUND_TREMOR);
                groundTremorTimer = urand(20000, 25000);
            }
            else groundTremorTimer -= diff;

            if(fistsOfStoneTimer <= diff)
            {
                DoCast(me, SPELL_PETRIFIED_BARK);
                fistsOfStoneTimer = 50000;
            }
            else fistsOfStoneTimer -= diff;
	       
            if(petrifiedBarkTimer <= diff)
            {
                DoCast(me, SPELL_FISTS_OF_STONE);
                petrifiedBarkTimer = 60000;
            }
            else petrifiedBarkTimer -= diff;

            DoMeleeAttackIfReady();
        }

        private:
            uint32 groundTremorTimer;
            uint32 fistsOfStoneTimer;
            uint32 petrifiedBarkTimer;

            InstanceScript* instance;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new boss_elder_stonebarkAI (creature);
    }
};

class creature_eonars_gift : public CreatureScript
{
public:
    creature_eonars_gift() : CreatureScript("creature_eonars_gift") { }

    struct creature_eonars_giftAI : public Scripted_NoMovementAI
    {
        creature_eonars_giftAI(Creature* creature) : Scripted_NoMovementAI(creature)
        {
            lifebindersGiftTimer = 12000;
            scale = 0.2f;
            me->SetFloatValue(OBJECT_FIELD_SCALE_X, scale);
            scaleTimer = 200;
            DoCast(me, SPELL_PHEROMONES, true);
            DoCast(me, SPELL_EONAR_VISUAL, true);
        }
        
        void UpdateAI(const uint32 diff)
        {
            if(lifebindersGiftTimer <= diff)
            {
                DoCast(me, SPELL_LIFEBINDERS_GIFT, true);
                lifebindersGiftTimer = 12000;
                me->SetFloatValue(OBJECT_FIELD_SCALE_X, 0);
                me->ForcedDespawn(1000);
            }
            else lifebindersGiftTimer -= diff;

            if(scaleTimer <= diff)
            {
                scale += 0.025f;
                me->SetFloatValue(OBJECT_FIELD_SCALE_X, scale);
            }
            else scaleTimer -= diff;
        }

        private:
            uint32 lifebindersGiftTimer;
            uint32 scaleTimer;
            float scale;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new creature_eonars_giftAI (creature);
    }
};

class creature_nature_bomb : public CreatureScript
{
public:
    creature_nature_bomb() : CreatureScript("creature_nature_bomb") { }

    struct creature_nature_bombAI : public Scripted_NoMovementAI
    {
        creature_nature_bombAI(Creature *pCreature) : Scripted_NoMovementAI(pCreature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetDisplayId(23258);
            uiExplosionTimer = 10000;
            DoCast(me, SPELL_SUMMON_NATURE_BOMB, true);
        }

        void UpdateAI(const uint32 diff)
        {
            if (uiExplosionTimer <= diff)
            {
                DoCast(me, SPELL_NATURE_BOMB);
                if (GameObject* pBomb = me->FindNearestGameObject(OBJECT_NATURE_BOMB, 1))
                    me->RemoveGameObject(pBomb, true);
                me->ForcedDespawn(2000);
                uiExplosionTimer = 10000;
            }
            else uiExplosionTimer -= diff;
        }

        private:
            uint32 uiExplosionTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new creature_nature_bombAI (pCreature);
    }
};

class creature_detonating_lasher : public CreatureScript
{
public:
    creature_detonating_lasher() : CreatureScript("creature_detonating_lasher") { }

    struct creature_detonating_lasherAI : public ScriptedAI
    {
        creature_detonating_lasherAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
        }

        void JustDied(Unit* victim)
        {
            DoCast(me, SPELL_DETONATE);

            if(Creature* Freya = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_FREYA) : 0))
                Freya->AI()->DoAction(ACTION_LASHER);
        }

        void Reset()
        {
            flameLashTimer = urand(5000, 10000);
            switchTargetTimer = urand(2000, 4000);
        }

        void updateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;

            if(flameLashTimer <= diff)
            {
                DoCastVictim(SPELL_FLAME_LASH);
                flameLashTimer = urand(5000, 10000);
            }
            else flameLashTimer -= diff;

			if(switchTargetTimer <= diff)
            {
                if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true))
                    me->AI()->AttackStart(target);
                switchTargetTimer = urand(2000, 4000);
            }
            else switchTargetTimer -= diff;

            DoMeleeAttackIfReady();
        }

        private:
            InstanceScript* instance;
            uint32 flameLashTimer;
            uint32 switchTargetTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new creature_detonating_lasherAI (creature);
    }
};

class creature_ancient_conservator : public CreatureScript
{
public:
    creature_ancient_conservator() : CreatureScript("creature_ancient_conservator") {}

    struct creature_ancient_conservatorAI : public ScriptedAI
    {
        creature_ancient_conservatorAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
        }
	   
        void EnterCombat(Unit* who)
        {
            DoCast(me, SPELL_CONSERVATORS_GRIP);
        }

        void Reset()
        {
            naturesFuryTimer = 5000;
            spawnHealthySporeTimer = 0;
            healthySporesSpawned = 0;
            spawnPauseTimer = 20000;
        }

        void JustDied(Unit* victim)
        {
            if(Creature* Freya = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_FREYA) : 0))
                Freya->AI()->DoAction(ACTION_ANCIENT);
        }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim() || (me->HasUnitState(UNIT_STAT_CASTING)))
                return;

            if(naturesFuryTimer <= diff)
            {
                Unit* target = SelectTarget(SELECT_TARGET_RANDOM, 0, 100, true);
                //Prevent casting natures fury on a target that is already affected
                if(target && !target->HasAura(SPELL_NATURES_FURY))
                    DoCast(target, SPELL_NATURES_FURY);
                me->AddAura(SPELL_CONSERVATORS_GRIP, me);
                naturesFuryTimer = 5000;
            }
            else naturesFuryTimer -= diff;

           /* if(spawnHealthySporeTimer <= diff && healthySporesSpawned < 10)
            {
                for (uint32 i = 0; i < 2; ++i)
                {
                    Position pos;
                    me->GetRandomNearPosition(pos, 25);
                    me->SummonCreature(NPC_HEALTHY_SPORE, pos, TEMPSUMMON_TIMED_DESPAWN, 20000);
                }
                healthySporesSpawned += 2;
                spawnHealthySporeTimer = 2000;
            }
            else spawnHealthySporeTimer -= diff;*/

            if(spawnPauseTimer <= diff)
            {
                healthySporesSpawned = 0;
                spawnPauseTimer = 20000;
                spawnHealthySporeTimer = 0;
            }
            else spawnPauseTimer -= diff;

            DoMeleeAttackIfReady();
        }

        private:
            InstanceScript* instance;
            uint32 naturesFuryTimer;
            uint32 spawnHealthySporeTimer;
            uint32 spawnPauseTimer;
		    uint8 healthySporesSpawned;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new creature_ancient_conservatorAI (creature);
    }
};

class creature_healthy_spore : public CreatureScript
{
public:
    creature_healthy_spore() : CreatureScript("creature_healthy_spore") { }

    struct creature_healthy_sporeAI : public ScriptedAI
    {
        creature_healthy_sporeAI(Creature *pCreature) : ScriptedAI(pCreature)
        {
			DoCast(me, SPELL_HEALTHY_SPORE_VISUAL);
            DoCast(me, SPELL_POTENT_PHEROMONES);
        }

        void Reset()
        {
            Counter = 0;
            Grow_Timer = 1000+(rand()%4000);
            Shrink_Timer = 2000;
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
            me->setFaction(35);
            Shrink = false;
        }

        void UpdateAI(const uint32 diff)
        {
            if(m_pInstance && m_pInstance->GetBossState(BOSS_FREYA) != IN_PROGRESS)
            {
                me->DealDamage(me,me->GetMaxHealth());
                me->RemoveCorpse();
            }

            if(Grow_Timer <= diff && Counter < 9 && Shrink == false)
            {
                ++Counter;
                DoCast(me, SPELL_GROW);
                Grow_Timer = 2000+(urand(300, 1000));
            }
            else if(Grow_Timer > diff && Counter < 9 && Shrink == false)
            {
                Grow_Timer -= diff;
            }

            if(Shrink_Timer <= diff && Counter >= 9)
            {
                me->DisappearAndDie();
            }

            if(Shrink_Timer >= diff && Counter >= 9)
            {
                Shrink_Timer -= diff;
                Shrink = true;
                me->RemoveAurasDueToSpell(SPELL_GROW);
            }
        }

        private:
            InstanceScript* m_pInstance;
            uint8 Counter;
            uint16 Grow_Timer;
            uint16 Shrink_Timer;
            bool Shrink;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new creature_healthy_sporeAI(pCreature);
    }
};

class creature_storm_lasher : public CreatureScript
{
public:
    creature_storm_lasher() : CreatureScript("creature_storm_lasher") { }

    struct creature_storm_lasherAI : public ScriptedAI
    {
        creature_storm_lasherAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
        }

        void Reset()
        {
            lightningLashTimer = 4000;
            stormboltTimer = 15000;

            DoCast(me, SPELL_STORM_LASHER_EFFEKT_1, true);
            DoCast(me, SPELL_STORM_LASHER_EFFEKT_2, true);          
        }

        void JustDied(Unit* victim)
        {
            if(Creature* Freya = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_FREYA) : 0))
                Freya->AI()->DoAction(ACTION_ELEMENTAL_DEAD);
        }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim() || (me->HasUnitState(UNIT_STAT_CASTING)))
                return;
	           
            if(lightningLashTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
                    DoCast(target, SPELL_LIGHTNING_LASH);
                lightningLashTimer = urand(3000, 6000);
            }
            else lightningLashTimer -= diff;

            if(stormboltTimer <= diff)
            {
                if (Unit* target = SelectTarget(SELECT_TARGET_RANDOM))
                    DoCast(target, SPELL_STORMBOLT);
                stormboltTimer = 15000;
            }
            else stormboltTimer -= diff;

            DoMeleeAttackIfReady();
        }

        private:
            InstanceScript* instance;
            uint32 lightningLashTimer;
            uint32 stormboltTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new creature_storm_lasherAI (creature);
    }
};

class creature_snaplasher : public CreatureScript
{
public:
    creature_snaplasher() : CreatureScript("creature_snaplasher") { }

    struct creature_snaplasherAI : public ScriptedAI
    {
        creature_snaplasherAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
            DoCast(me, SPELL_HARDENED_BARK);
        }

        void JustDied(Unit* victim)
        {
            if(Creature* Freya = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_FREYA) : 0))
                Freya->AI()->DoAction(ACTION_ELEMENTAL_DEAD);
        }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;

            DoMeleeAttackIfReady();
        }

        private:
            InstanceScript* instance;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new creature_snaplasherAI (creature);
    }
};

class creature_ancient_water_spirit : public CreatureScript
{
public:
    creature_ancient_water_spirit() : CreatureScript("creature_ancient_water_spirit") { }

    struct creature_ancient_water_spiritAI : public ScriptedAI
    {
        creature_ancient_water_spiritAI(Creature* creature) : ScriptedAI(creature)
        {
            instance = (InstanceScript *) creature->GetInstanceScript();
        }

        void Reset()
        {
            tidalWaveTimer = 10000;
        }

        void JustDied(Unit* victim)
        {
            if(Creature* Freya = Unit::GetCreature(*me, instance ? instance->GetData64(DATA_FREYA) : 0))
                Freya->AI()->DoAction(ACTION_ELEMENTAL_DEAD);
        }

        void UpdateAI(const uint32 diff)
        {
            if(!UpdateVictim())
                return;

            if(tidalWaveTimer <= diff)
            {
                DoCastVictim(SPELL_TIDAL_WAVE);
                if (me->getVictim())
                    me->GetMotionMaster()->MoveCharge(me->GetPositionX()+40*cos(me->GetOrientation()),me->GetPositionY()+sin(me->GetOrientation()),me->GetPositionZ()+5,20,EVENT_CHARGE);
                tidalWaveTimer = 15000;
            }
            else tidalWaveTimer -= diff;

            DoMeleeAttackIfReady();
        }

        private:
            InstanceScript* instance;
            uint32 tidalWaveTimer;
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new creature_ancient_water_spiritAI (creature);
    }
};

class spell_attuned_to_nature_dose_reduction : public SpellScriptLoader
{
public:
    spell_attuned_to_nature_dose_reduction() : SpellScriptLoader("spell_attuned_to_nature_dose_reduction") { }

    class spell_attuned_to_nature_dose_reduction_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_attuned_to_nature_dose_reduction_SpellScript)

        void HandleScript(SpellEffIndex /*effIndex*/)
        {
            Unit * target = GetHitUnit();
            SpellEntry const * m_spellInfo = GetSpellInfo();
            switch (m_spellInfo->Id)
            {
                case SPELL_ATTUNED_TO_NATURE_2_DOSE_REDUCTION:
                    if (target->HasAura(GetEffectValue()))
                        for (uint8 n = 0; n < 2; n++)
                            target->RemoveAuraFromStack(GetEffectValue(), 0, AURA_REMOVE_BY_DEFAULT);
                    break;
                case SPELL_ATTUNED_TO_NATURE_10_DOSE_REDUCTION:
                    if (target->HasAura(GetEffectValue()))
                        for (uint8 n = 0; n < 10; n++)
                            target->RemoveAuraFromStack(GetEffectValue(), 0, AURA_REMOVE_BY_DEFAULT);
                    break;
                case SPELL_ATTUNED_TO_NATURE_25_DOSE_REDUCTION:
                    if (target->HasAura(GetEffectValue()))
                        for (uint8 n = 0; n < 25; n++)
                            target->RemoveAuraFromStack(GetEffectValue(), 0, AURA_REMOVE_BY_DEFAULT);
                    break;
                default:
                    break;
            }
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_attuned_to_nature_dose_reduction_SpellScript::HandleScript, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript * GetSpellScript() const
    {
        return new spell_attuned_to_nature_dose_reduction_SpellScript();
    }
};

class spell_summon_wave_effect_10mob_spell : public SpellScriptLoader
{
public:
    spell_summon_wave_effect_10mob_spell() : SpellScriptLoader("spell_summon_wave_effect_10mob") { }

    class spell_summon_wave_effect_10mob_SpellScript : public SpellScript
    {
        PrepareSpellScript(spell_summon_wave_effect_10mob_SpellScript);

        void HandleScriptEffect(SpellEffIndex /*effIndex*/)
        {
            if (!GetCaster() || GetCaster()->GetTypeId() != TYPEID_UNIT)
                    return;

            for(uint8 i = 0; i < 10; i++)
                GetCaster()->CastSpell(GetCaster(),SPELL_SUMMON_WAVE_10_SUMMON,true);
        }

        void Register()
        {
            OnEffect += SpellEffectFn(spell_summon_wave_effect_10mob_SpellScript::HandleScriptEffect, EFFECT_0, SPELL_EFFECT_SCRIPT_EFFECT);
        }
    };

    SpellScript* GetSpellScript() const
    {
        return new spell_summon_wave_effect_10mob_SpellScript();
    }
};

void AddSC_boss_freya()
{
    new boss_freya();
    new boss_elder_brightleaf();
    new boss_elder_stonebark();
    new boss_elder_ironbranch();
    new creature_unstable_sun_beam();
    new creature_sun_beam();
    new creature_iron_roots();
    new creature_eonars_gift();
    new creature_nature_bomb();
    new creature_detonating_lasher();
    new creature_ancient_conservator();
    new creature_healthy_spore();
    new creature_storm_lasher();
    new creature_snaplasher();
    new creature_ancient_water_spirit();
    new spell_attuned_to_nature_dose_reduction();
	new spell_summon_wave_effect_10mob_spell();
}

