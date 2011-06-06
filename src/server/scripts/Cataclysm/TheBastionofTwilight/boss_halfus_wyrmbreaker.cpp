#include "ObjectMgr.h"
#include "ScriptMgr.h"
#include "ScriptedCreature.h"
#include "SpellScript.h"
#include "SpellAuraEffects.h"
#include "bastion_of_twilight.h"

enum Texts
{
//later
};

enum Spells
{
    SPELL_FURIOUS_ROAR = 86169,
    SPELL_VENGEANCE = 87683,
	SPELL_FIREBALL = 71504,

    //Dragon Storm Rider(1)
    SPELL_CYCLONE_WINDS = 84092,
    SPELL_SHADOW_NOVA = 86166,
    SPELL_SHADOW_WRAPPED = 83952,

    //Dragon The Time Warden(2)
    SPELL_TIME_DILATION = 83601,
    SPELL_FIREBALL_BARAGGE = 83721,

    //Dragon The Slate Dragon(3)
    SPELL_STONE_TOUCH = 83603, //need spell fix
    SPELL_MALEVOLENT_STRIKES = 83908,
    SPELL_MALEVOLENT_STRIKES_B = 39171,

    //Dragon Nether Scion(4)
    SPELL_NETHER_BLINDNESS = 83611,
    SPELL_FRENZIED_ASSAULT = 86160,

    //Dragon Orphaned Emerald Whelp(5)
    SPELL_ATROPHIC_POISON = 83609,
    SPELL_SUPERHEATED_BREATH = 83956, //need spell fix

    SPELL_UNRESPONSIVE = 86003,
};

enum Events
{

    EVENT_DRAGON_1,
    EVENT_DRAGON_2,
    EVENT_DRAGON_3,
    EVENT_DRAGON_4,
    EVENT_DRAGON_5,

    EVENT_PHASE_2, //50%
    EVENT_BERSERK,
};

class boss_halfus_wyrmbreaker: public CreatureScript
{
public:
    boss_halfus_wyrmbreaker() :
        CreatureScript("boss_halfus_wyrmbreaker")
    {
    }

    struct boss_halfus_wyrmbreakerAI: public BossAI
    {
        boss_halfus_wyrmbreakerAI(Creature* pCreature) :
            BossAI(pCreature, DATA_HALFUS_WYRMBREAKER)
        {
            pInstance = pCreature->GetInstanceScript();
        }

        InstanceScript* pInstance;
        bool phase50;

        uint32 random(uint32 max)
        {
            return urand(0, max);
        }

        void Reset()
        {
            events.Reset();
            pInstance->SetBossState(DATA_HALFUS_WYRMBREAKER, NOT_STARTED);
            phase50 = false;
            if (pInstance)
            {
                Creature* pStormRider = Unit::GetCreature(*me,
                        pInstance->GetData64(DATA_STORM_RIDER));
                Creature* pTimeWarden = Unit::GetCreature(*me,
                        pInstance->GetData64(DATA_TIME_WARDEN));
                Creature* pSlateDragon = Unit::GetCreature(*me,
                        pInstance->GetData64(DATA_SLATE_DRAGON));
                Creature* pNetherScion = Unit::GetCreature(*me,
                        pInstance->GetData64(DATA_NETHER_SCION));
                Creature* pEmeraldWhelp = Unit::GetCreature(*me,
                        pInstance->GetData64(DATA_EMERALD_WHELP));

                uint32 Dragon_sleep = 0;

                if (pStormRider)
                {
                    if (pStormRider->isAlive())
                    {
                        if (Dragon_sleep < 2 && random(5) < 3)
                        {
                            DoCast(me, SPELL_UNRESPONSIVE);
                            Dragon_sleep++;
                        }
                    }
                    else
                    {
                        pStormRider->Respawn();
                    }
                }
                if (pTimeWarden)
                {
                    if (pTimeWarden->isAlive())
                    {
                        if (Dragon_sleep < 2 && random(5) < 3)
                        {
                            DoCast(me, SPELL_UNRESPONSIVE);
                            Dragon_sleep++;
                        }
                    }
                    else
                    {
                        pTimeWarden->Respawn();
                    }
                }
                if (pSlateDragon)
                {
                    if (pSlateDragon->isAlive())
                    {
                        if (Dragon_sleep < 2 && random(5) < 3)
                        {
                            DoCast(me, SPELL_UNRESPONSIVE);
                            Dragon_sleep++;
                        }
                    }
                    else
                    {
                        pSlateDragon->Respawn();
                    }
                }
                if (pNetherScion)
                {
                    if (pNetherScion->isAlive())
                    {
                        if (Dragon_sleep < 2)
                        {
                            DoCast(me, SPELL_UNRESPONSIVE);
                            Dragon_sleep++;
                        }
                    }
                    else
                    {
                        pNetherScion->Respawn();
                    }
                }
                if (pEmeraldWhelp)
                {
                    if (pEmeraldWhelp->isAlive())
                    {
                        if (Dragon_sleep < 2)
                        {
                            DoCast(me, SPELL_UNRESPONSIVE);
                            Dragon_sleep++;
                        }
                    }
                    else
                    {
                        pEmeraldWhelp->Respawn();
                    }
                }
            }

        }

        void KilledUnit(Unit* /*Victim*/)
        {
            //DoScriptText(SAY_KILLED_UNIT, me);
        }

        void JustDied(Unit* /*Killer*/)
        {
            //DoScriptText(SAY_JUST_DIED, me);
            if (pInstance)
                pInstance->SetData(DATA_HALFUS_WYRMBREAKER, DONE);
        }

        void EnterCombat(Unit * /*who*/)
        {
            //DoScriptText(SAY_ENTER_COMBAT, me);
            pInstance->SetBossState(DATA_HALFUS_WYRMBREAKER, IN_PROGRESS);

            if (Creature* halfus = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_HALFUS_WYRMBREAKER)))
                if (!halfus->isInCombat())
                    DoZoneInCombat(halfus);

            if (Creature* behemoth = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_PROTO_BEHEMOTH)))
                if (!behemoth->isInCombat())
                    DoZoneInCombat(behemoth);

            DoMeleeAttackIfReady();
        }

        void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->hasUnitState(UNIT_STAT_CASTING))
                return;

            float healthPct = me->GetHealthPct();
            if (healthPct < 50.0)
                {
                    events.ScheduleEvent(SPELL_FURIOUS_ROAR, 30000);
                    events.ScheduleEvent(SPELL_FURIOUS_ROAR, 30000);
                    events.ScheduleEvent(SPELL_FURIOUS_ROAR, 30000);
                }

            if (Creature* StormRider = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_STORM_RIDER)))
                if (StormRider->isInCombat())
                {
                    DoCast(me, SPELL_VENGEANCE);
                    DoCast(me, SPELL_SHADOW_WRAPPED);
                    events.ScheduleEvent(EVENT_DRAGON_1, 15000);
                }
                else if (StormRider->isDead())
                {
                    DoCast(me, SPELL_CYCLONE_WINDS);
                    events.ScheduleEvent(EVENT_DRAGON_1, 30000);
                }

            if (Creature* SlateDragon = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_SLATE_DRAGON)))
                if (SlateDragon->isInCombat())
                {
                    DoCast(me, SPELL_VENGEANCE);
                    DoCast(me, SPELL_MALEVOLENT_STRIKES_B);
                    events.ScheduleEvent(EVENT_DRAGON_3, 5000);
                }
                else if (SlateDragon->isDead())
                {
                    DoCast(me, SPELL_STONE_TOUCH);
                    events.ScheduleEvent(EVENT_DRAGON_3, 5000);
                }

            if (Creature* TimeWarden = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_TIME_WARDEN)))
                if (TimeWarden->isInCombat())
                {
                    DoCast(me, SPELL_VENGEANCE);
                    //
                }
                else if (TimeWarden->isDead())
                {
                    //
                }

            if (Creature* NetherScion = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_NETHER_SCION)))
                if (NetherScion->isInCombat())
                {
                    DoCast(me, SPELL_VENGEANCE);
                    DoCast(me, SPELL_FRENZIED_ASSAULT);
                }
                else if (NetherScion->isDead())
                {
                    DoCast(me, SPELL_NETHER_BLINDNESS);
                }

            if (Creature* EmeraldWhelps = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_EMERALD_WHELP)))
                if (EmeraldWhelps->isInCombat())
                {
                    DoCast(me, SPELL_VENGEANCE);
                    //
                }
                else if (EmeraldWhelps->isDead())
                {
                    //
                }

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_DRAGON_1:
                        DoCast(me, SPELL_SHADOW_NOVA);
                        return;
                    case EVENT_DRAGON_3:
                        DoCast(me, SPELL_MALEVOLENT_STRIKES_B);
                        return;
                }
            }

            DoMeleeAttackIfReady();
        }
    };
};

class boss_proto_behemoth: public CreatureScript
{
public:
    boss_proto_behemoth() :
        CreatureScript("boss_proto_behemoth")
    {
    }

    struct boss_proto_behemothAI: public BossAI
    {
        boss_proto_behemothAI(Creature* pCreature) :
            BossAI(pCreature, DATA_PROTO_BEHEMOTH)
        {
            pInstance = pCreature->GetInstanceScript();
        }

		InstanceScript* pInstance;

        void Reset()
        {
            events.Reset();
            pInstance->SetBossState(DATA_PROTO_BEHEMOTH, NOT_STARTED);
		}

        void KilledUnit(Unit* /*Victim*/)
        {
            //DoScriptText(SAY_KILLED_UNIT, me);
        }

        void JustDied(Unit* /*Killer*/)
        {
            //DoScriptText(SAY_JUST_DIED, me);
        }

        void EnterCombat(Unit * /*who*/)
        {
            //DoScriptText(SAY_ENTER_COMBAT, me);
            if (pInstance)
                pInstance->SetData(DATA_PROTO_BEHEMOTH, IN_PROGRESS);
			if (Unit *pTarget = SelectUnit(SELECT_TARGET_RANDOM, 0))
				events.ScheduleEvent(SPELL_FIREBALL, 20000);
		}

		void UpdateAI(const uint32 diff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->hasUnitState(UNIT_STAT_CASTING))
                return;

            if (Creature* TimeWarden = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_TIME_WARDEN)))
                if (TimeWarden->isInCombat())
                {
                    DoCast(me, SPELL_VENGEANCE);
					events.ScheduleEvent(EVENT_DRAGON_2, 20000);
                    //
                }
                else if (TimeWarden->isDead())
                {
                    //
                }
            if (Creature* EmeraldWhelps = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_EMERALD_WHELP)))
                if (EmeraldWhelps->isInCombat())
                {
                    DoCast(me, SPELL_VENGEANCE);
                    events.ScheduleEvent(EVENT_DRAGON_5, 40000);
                }
                else if (EmeraldWhelps->isDead())
                {
                    //
                }

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch (eventId)
                {
                    case EVENT_DRAGON_2:
                        DoCast(me, SPELL_FIREBALL_BARAGGE);
                        return;
					case EVENT_DRAGON_5:
						if (Unit *pTarget = SelectUnit(SELECT_TARGET_RANDOM, 0))
							DoCast(me, SPELL_SUPERHEATED_BREATH);
                        return;
                }
            }

            DoMeleeAttackIfReady();
		}
	};
};


void AddSC_boss_halfus_wyrmbreaker()
{
    new boss_halfus_wyrmbreaker();
	new boss_proto_behemoth();
}