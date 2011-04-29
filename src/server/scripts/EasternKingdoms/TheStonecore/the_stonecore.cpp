/*
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
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
#include "the_stonecore.h"

/***************************************TRASH SPELLS*************************************/
// Crystalspawn Giant (42810) Health: 536,810 - 1,202,925
#define SPELL_QUAKE                      DUNGEON_MODE(81008,92631)

// IMP (43014) Health: 4,468 - 7,749, Mana: 16,676 - 17,816
#define SPELL_FELL_FIREBALL				 DUNGEON_MODE(80344,92638)

// Millhouse Manastorm (43391) Health: 386,505 - 513,248, Mana: 186,560 - 197,380
#define SPELL_BLUR						 81216
#define SPELL_FEAR						 81442
#define SPELL_FROSTBOLT_VOLLEY			 DUNGEON_MODE(81440,92642)
#define SPELL_IMPENDING_DOOM			 86830
#define SPELL_SHADOW_BOLT				 DUNGEON_MODE(81439,92641)
#define SPELL_SHADOWFURY				 DUNGEON_MODE(81441,92644)
#define SPELL_TIGULE					 81220

// Rock Borer (43917,42845) Health: 6,702 - 11,624
#define SPELL_ROCK_BORE					 DUNGEON_MODE(80028,92630)

// Stonecore Berserker (43430) Health: 312,753 - 387,450
#define SPELL_SCHARGE					 81574
#define SPELL_SPINNING_SLASH			 81568

// Stonecore Bruiser (42692) Health: 590,491 - 1,202,925
#define SPELL_BODY_SLAM					 80180
#define SPELL_SHOCKWAVE					 DUNGEON_MODE(80195,92640)

// Stonecore Earthshaper (43537) Health: 250,201 - 309,960, Mana: 19,394
#define SPELL_DUST_STORM				 81463
#define SPELL_FORCE_OF_EARTH			 81459
#define SPELL_GROUND_SHOCK				 DUNGEON_MODE(81530,92628)
#define SPELL_LAVA_BURST				 DUNGEON_MODE(81576,92626)

// Stonecore Flayer (42808) Health: 312,753 - 387,450
#define SPELL_FLAY						 79922

// Stonecore Magmalord (42789) Health: 312,753 - 387,450, Mana: 25,014 - 26,724
#define SPELL_IGNITE					 DUNGEON_MODE(80151,92636)
#define SPELL_MAGMA_ERUPTION			 80038

// Stonecore Rift Conjurer (42691) Health: 312,753 - 387,450, Mana: 16,676 - 17,816
#define SPELL_DEMON_PORTAL				 80308
#define SPELL_SHADOWBOLT				 DUNGEON_MODE(80279,92637)

//Stonecore Sentry (42695) Health: 6,702 - 11,624
// BIEGA ZA CREAPAMI I PRZYWOLUJE DO TARGETA

// Stonecore Warbringer (42696) Health: 312,753 - 387,450
#define SPELL_CLAVE						 15496
#define SPELL_RAGE						 80158

enum eEvents
{
    EVENT_NONE,
    EVENT_QUAKE,
    EVENT_FELL_FIREBALL,
    EVENT_BLUR,
    EVENT_FEAR,
    EVENT_FROSTBOLT_VOLLEY,
    EVENT_IMPENDING_DOOM,
    EVENT_SHADOW_BOLT,
    EVENT_SHADOWFURY,
    EVENT_TIGULE,
    EVENT_ROCK_BORE,
    EVENT_SCHARGE,
    EVENT_SPINNING_SLASH,
    EVENT_BODY_SLAM,
    EVENT_SHOCKWAVE,
    EVENT_DUST_STORM,
    EVENT_FORCE_OF_EARTH,
    EVENT_GROUND_SHOCK,
    EVENT_LAVA_BURST,
    EVENT_FLAY,
    EVENT_IGNITE,
    EVENT_MAGMA_ERUPTION,
    EVENT_DEMON_PORTAL,
    EVENT_SHADOWBOLT,
    EVENT_CLAVE,
    EVENT_RAGE,
};

// Crystalspawn Giant (42810) AI
class mob_crystalspawn_giant : public CreatureScript
{
public:
    mob_crystalspawn_giant() : CreatureScript("mob_crystalspawn_giant") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_crystalspawn_giantAI(pCreature);
    }

    struct mob_crystalspawn_giantAI : public ScriptedAI
    {
        mob_crystalspawn_giantAI(Creature *c) : ScriptedAI(c)
        {
        }

        EventMap events;

        void Reset()
        {
            events.Reset();
        }

        void EnterCombat(Unit* /*who*/)
        {
            events.ScheduleEvent(EVENT_QUAKE, 5000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                    case EVENT_QUAKE:
                        DoCast(me->getVictim(), SPELL_QUAKE);
                        events.RescheduleEvent(EVENT_QUAKE, 7000);
                        return;
                }
            }

            DoMeleeAttackIfReady();
        }
    };

};

// Imp (43014)
class mob_impp : public CreatureScript
{
public:
    mob_impp() : CreatureScript("mob_impp") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new mob_imppAI(pCreature);
    }

    struct mob_imppAI : public ScriptedAI
    {
        mob_imppAI(Creature *c) : ScriptedAI(c)
        {
        }

        EventMap events;

        void Reset()
        {
            events.Reset();
        }

        void EnterCombat(Unit* /*who*/)
        {
            events.ScheduleEvent(EVENT_FELL_FIREBALL, 1000);
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            events.Update(diff);

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                    case EVENT_FELL_FIREBALL:
                        if (Unit *pTarget = SelectUnit(SELECT_TARGET_RANDOM, 0))
                            DoCast(pTarget, SPELL_FELL_FIREBALL);
                        events.RescheduleEvent(EVENT_FELL_FIREBALL, 1000);
                        return;
                }
            }

            DoMeleeAttackIfReady();
        }
    };

};

void AddSC_the_stonecore()
{
    new mob_crystalspawn_giant();
    new mob_impp();

}