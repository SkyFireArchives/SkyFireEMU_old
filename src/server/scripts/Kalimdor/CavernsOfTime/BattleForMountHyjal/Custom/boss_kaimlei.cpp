/* ScriptData
SDName:
SDAuthor:
SDComment:
SDCategory:
EndScriptData */

#include "ScriptPCH.h"
#include "new_hyjal.h"

enum Spells
{
    SPELL_FIRE_BOMB_CHANNEL         = 42621, // last forever
    SPELL_FIRE_BOMB_THROW           = 42628, // throw visual
    SPELL_FIRE_BOMB_DUMMY           = 42629, // bomb visual
    SPELL_FIRE_BOMB_DAMAGE          = 42630,

    SPELL_FLAME_BREATH              = 74403,
    SPELL_CLEAVE_ARMOR              = 74367,
    SPELL_LAVA_GOUT                 = 74394,
    SPELL_REPELLING_WAVE            = 74509,

    // Zuljin
    // Lynx Phase
    SPELL_CLAW_RAGE_HASTE           = 42583,
    SPELL_CLAW_RAGE_TRIGGER         = 43149,
    SPELL_CLAW_RAGE_DAMAGE          = 43150,
    SPELL_LYNX_RUSH_HASTE           = 43152,
    SPELL_LYNX_RUSH_DAMAGE          = 43153,

    // Bear Phase
    SPELL_BELOWING_ROAR             = 18431,
    SPELL_CLEAVE                    = 68868,
    SPELL_REND_FLESH                = 42397,
    SPELL_LACERARING_SLASH          = 42395,

    // All Phases
    SPELL_BURNING_FURY              = 66721,

    // Troll Phase
    SPELL_WHIRLWIND                 = 37640,

    // Dragonhawk Phase
    SPELL_FLAME_WHIRL               = 43213,
    SPELL_PILLAR_OF_FIRE            = 43216,

    //Transforms:
    SPELL_SHAPE_OF_THE_BEAR         = 42594,  // 15% dmg
    SPELL_SHAPE_OF_THE_EAGLE        = 42606,
    SPELL_SHAPE_OF_THE_LYNX         = 42607,  // haste melee 30%
    SPELL_SHAPE_OF_THE_DRAGONHAWK   = 42608,

    // Halazzi
    SPELL_TWILLIGHT_BLOOD           = 71446,
    SPELL_DELIRIOUS_SLASH           = 71623,
    SPELL_MIND_CONTROL              = 71289,
    SPELL_GLITTERING_SPARKS         = 71807,
};

enum Events
{
    EVENT_CLEAVE_ARMOR          = 1,
    EVENT_LAVA_GOUT             = 2,
    EVENT_REPELLING_WAVE        = 3,
    EVENT_FLAME_BREATH          = 4,
    EVENT_MOVE_BOMBS            = 5,
    EVENT_HANDLE_BOMBS          = 6,
    EVENT_FIRE_BOMB             = 7,
    EVENT_BOOM                  = 8,

    EVENT_CHANGE_PHASE          = 9,
    EVENT_CLAW_RAGE,
    EVENT_CLAW_LOOP,
    EVENT_LYNX_RUSH,
    EVENT_BELOWING_ROAR,
    EVENT_CLEAVE,
    EVENT_WHIRLWIND,
    EVENT_WHIRLWIND_TARGET,
    EVENT_WHIRLWIND_END,
    EVENT_FLAME_WHIRL,
    EVENT_FLAME_WHIRL_END,
    EVENT_PILLAR_OF_FIRE,
};

enum JanalaiPonints
{
    POINT_SPAWN_BOMBS           = 1,
};

enum ZuljinPonints
{
    POINT_WHIRLWIND             = 1,
    POINT_FLAME_WHIRL           = 2,
};

enum JanalaiPhase
{
    PHASE_1_COMBAT              = 1,
};

enum ZuljinPhase
{
    PHASE_NULL                  = 0,
    PHASE_TROLL                 = 1,
    PHASE_LYNX                  = 2,
    PHASE_BEAR                  = 3,
    PHASE_DRAGON_HAWK           = 4,
};

enum DoAction
{
    ACTION_TROLL,
    ACTION_LYNX,
    ACTION_BEAR,
    ACTION_DRAGON_HAWK,
};

const int area_dx = 100;
const int area_dy = 100;

class npc_za_trio_controller : public CreatureScript
{
public:
    npc_za_trio_controller() : CreatureScript("npc_za_trio_controller") { }

    struct npc_za_trio_controllerAI : public BossAI
    {
        npc_za_trio_controllerAI(Creature* creature) : BossAI(creature, DATA_JANALAI_TRIO)
        {
        }

        void Reset()
        {
            events.Reset();
            me->SetReactState(REACT_PASSIVE);

            instance->SetBossState(DATA_JANALAI_TRIO, NOT_STARTED);

            if (Creature* Janalai = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_JANALAI_TRIO)))
            {
                if (Janalai->isAlive())
                    Janalai->GetMotionMaster()->MoveTargetedHome();
                else
                {
                    Janalai->Respawn();
                    Janalai->GetMotionMaster()->MoveTargetedHome();
                }
            }

            if (Creature* Zuljin = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ZULJIN_TRIO)))
            {
                if (Zuljin->isAlive())
                    Zuljin->GetMotionMaster()->MoveTargetedHome();
                else
                {
                    Zuljin->Respawn();
                    Zuljin->GetMotionMaster()->MoveTargetedHome();
                }
            }

            if (Creature* Halazzi = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_HALAZZI_TRIO)))
            {
                if (Halazzi->isAlive())
                    Halazzi->GetMotionMaster()->MoveTargetedHome();
                else
                {
                    Halazzi->Respawn();
                    Halazzi->GetMotionMaster()->MoveTargetedHome();
                }
            }
        }

        void EnterCombat(Unit* who)
        {
            if (instance->GetBossState(DATA_JANALAI_TRIO) == IN_PROGRESS)
                return;

            instance->SetBossState(DATA_JANALAI_TRIO, IN_PROGRESS);

            if (Creature* Janalai = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_JANALAI_TRIO)))
            {
                instance->SendEncounterUnit(ENCOUNTER_FRAME_ADD, Janalai);
                DoZoneInCombat(Janalai);
            }

            if (Creature* Zuljin = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ZULJIN_TRIO)))
            {
                instance->SendEncounterUnit(ENCOUNTER_FRAME_ADD, Zuljin);
                DoZoneInCombat(Zuljin);
            }

            if (Creature* Halazzi = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_HALAZZI_TRIO)))
            {
                instance->SendEncounterUnit(ENCOUNTER_FRAME_ADD, Halazzi);
                DoZoneInCombat(Halazzi);
            }
        }

        void JustDied(Unit* killer)
        {
            _JustDied();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_za_trio_controllerAI(pCreature);
    }
};

class boss_hyjal_janalai : public CreatureScript
{
public:
    boss_hyjal_janalai() : CreatureScript("boss_hyjal_janalai") { }

    struct boss_hyjal_janalaiAI : public BossAI
    {
        boss_hyjal_janalaiAI(Creature* pCreature) : BossAI(pCreature, DATA_JANALAI_TRIO)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);
        }

        void Reset()
        {
            _Reset();
            me->SetReactState(REACT_DEFENSIVE);

            BombCount = 0;
            events.ScheduleEvent(EVENT_REPELLING_WAVE, 15000, PHASE_1_COMBAT);
            events.ScheduleEvent(EVENT_LAVA_GOUT, 9000, PHASE_1_COMBAT);
            events.ScheduleEvent(EVENT_CLEAVE_ARMOR, 7000, PHASE_1_COMBAT);
            events.ScheduleEvent(EVENT_FLAME_BREATH, 13000, PHASE_1_COMBAT);

            for (uint8 i = 0; i < 70; ++i)
                FireBombGUIDs[i] = 0;
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (Creature* controller = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ZA_TRIO_CONTROLLER)))
                DoZoneInCombat(controller);

            _EnterCombat();
            DoZoneInCombat();
        }

        void KilledUnit(Unit* victim)
        {
        }

        void JustDied(Unit* /*killer*/)
        {
            _JustDied();
        }

        void SpawnBombs()
        {
            float dx, dy;
            for (int i(0); i < 70; ++i)
            {
                dx = float(irand(-area_dx/2, area_dx/2));
                dy = float(irand(-area_dy/2, area_dy/2));

                Creature* bomb = DoSpawnCreature(NPC_EGG_BOMB, dx, dy, 0, 0, TEMPSUMMON_TIMED_DESPAWN, 120000);
                if (bomb) FireBombGUIDs[i] = bomb->GetGUID();
            }
            BombCount = 0;
        }

        void MovementInform(uint32 type, uint32 point)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (point)
            {
                case POINT_SPAWN_BOMBS:
                    DoCast(me, SPELL_FIRE_BOMB_CHANNEL);
                    SpawnBombs();
                    events.ScheduleEvent(EVENT_HANDLE_BOMBS, 100);
                    break;
                default:
                    break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                case EVENT_REPELLING_WAVE:
                    DoCastAOE(SPELL_REPELLING_WAVE);
                    events.DelayEvents(12000, PHASE_1_COMBAT);
                    events.ScheduleEvent(EVENT_MOVE_BOMBS, 100);
                    break;
                case EVENT_LAVA_GOUT:
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM))
                        DoCast(target, SPELL_LAVA_GOUT);
                    events.ScheduleEvent(EVENT_LAVA_GOUT, 9000, PHASE_1_COMBAT);
                    break;
                case EVENT_CLEAVE_ARMOR:
                    DoCastVictim(SPELL_CLEAVE_ARMOR);
                    events.ScheduleEvent(EVENT_CLEAVE_ARMOR, 7000, PHASE_1_COMBAT);
                    break;
                case EVENT_FLAME_BREATH:
                    DoCastVictim(SPELL_FLAME_BREATH);
                    events.ScheduleEvent(EVENT_FLAME_BREATH, 15000, PHASE_1_COMBAT);
                    break;
                case EVENT_MOVE_BOMBS:
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM))
                    {
                        me->SetReactState(REACT_PASSIVE);
                        me->GetMotionMaster()->MovePoint(POINT_SPAWN_BOMBS, target->GetPositionX(),target->GetPositionY(), target->GetPositionZ());
                    }
                    break;
                case EVENT_HANDLE_BOMBS:
                    if (BombCount < 70)
                    {
                        if (Unit *FireBomb = Unit::GetUnit((*me), FireBombGUIDs[BombCount]))
                        {
                            FireBomb->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                            DoCast(FireBomb, SPELL_FIRE_BOMB_THROW, true);
                            FireBomb->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NOT_SELECTABLE);
                        }
                        ++BombCount;
                        if (BombCount == 70)
                        {
                            events.ScheduleEvent(EVENT_BOOM, 5000);
                            events.CancelEvent(EVENT_HANDLE_BOMBS);
                        }
                    }
                    events.ScheduleEvent(EVENT_HANDLE_BOMBS, 100);
                    break;
                case EVENT_BOOM:
                    me->RemoveAurasDueToSpell(SPELL_FIRE_BOMB_CHANNEL);
                    me->SetReactState(REACT_DEFENSIVE);
                    if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == POINT_MOTION_TYPE)
                        me->GetMotionMaster()->MovementExpired();
                    DoStartMovement(me->getVictim());
                    events.ScheduleEvent(EVENT_REPELLING_WAVE, 20000, PHASE_1_COMBAT);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }

    private:
        uint64 FireBombGUIDs[70];
        uint32 BombCount;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_hyjal_janalaiAI(pCreature);
    }
};

class boss_hyjal_zuljin : public CreatureScript
{
public:
    boss_hyjal_zuljin() : CreatureScript("boss_hyjal_zuljin") { }

    struct boss_hyjal_zuljinAI : public BossAI
    {
        boss_hyjal_zuljinAI(Creature* pCreature) : BossAI(pCreature, DATA_ZULJIN_TRIO)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);
        }

        void Reset()
        {
            _Reset();

            events.SetPhase(PHASE_NULL);
			Phase = PHASE_NULL;

            for (uint32 i = 0; i < 20; ++i)
                DoCast(me, SPELL_BURNING_FURY);

            events.ScheduleEvent(EVENT_CHANGE_PHASE, 5000);
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (Creature* controller = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ZA_TRIO_CONTROLLER)))
                DoZoneInCombat(controller);

            _EnterCombat();
        }

        void KilledUnit(Unit* victim)
        {
        }

        void JustDied(Unit* /*killer*/)
        {
            _JustDied();
        }

        void MovementInform(uint32 type, uint32 point)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (point)
            {
                case POINT_WHIRLWIND:
                    events.ScheduleEvent(EVENT_WHIRLWIND_TARGET, 3000);
                    break;
                case POINT_FLAME_WHIRL:
                    DoCastAOE(SPELL_FLAME_WHIRL);
                    events.ScheduleEvent(EVENT_FLAME_WHIRL_END, 3000);
                    break;
                default:
                    break;
            }
        }

        void CancelEvent()
        {
            events.CancelEvent(EVENT_WHIRLWIND);
            events.CancelEvent(EVENT_LYNX_RUSH);
            events.CancelEvent(EVENT_CLAW_RAGE);
            events.CancelEvent(EVENT_BELOWING_ROAR);
            events.CancelEvent(EVENT_CLEAVE);
            events.CancelEvent(EVENT_FLAME_WHIRL);
            events.CancelEvent(EVENT_PILLAR_OF_FIRE);
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
            case ACTION_TROLL:
                events.ScheduleEvent(EVENT_WHIRLWIND, 15000);
                break;
            case ACTION_LYNX:
                events.ScheduleEvent(EVENT_CLAW_RAGE, 10000);
                break;
            case ACTION_BEAR:
                events.ScheduleEvent(EVENT_BELOWING_ROAR, 5000);
                events.ScheduleEvent(EVENT_CLEAVE, 10000);
                break;
            case ACTION_DRAGON_HAWK:
                events.ScheduleEvent(EVENT_FLAME_WHIRL, 10000);
                events.ScheduleEvent(EVENT_PILLAR_OF_FIRE, 5000);
                break;
            }
        }

        void ChangePhase()
        {
            switch(urand(0,3))
            {
            case 0:
                Phase = PHASE_TROLL;
                events.SetPhase(PHASE_TROLL);
                DoAction(ACTION_TROLL);
                break;
            case 1:
                Phase = PHASE_LYNX;
                events.SetPhase(PHASE_LYNX);
                DoCast(me, SPELL_SHAPE_OF_THE_LYNX);
                DoAction(ACTION_LYNX);
                break;
            case 2: 
                Phase = PHASE_BEAR;
                events.SetPhase(PHASE_BEAR);
                DoCast(me, SPELL_SHAPE_OF_THE_BEAR);
                DoAction(ACTION_BEAR);
                break;
            case 3:
                Phase = PHASE_DRAGON_HAWK;
                events.SetPhase(PHASE_DRAGON_HAWK);
                DoCast(me, SPELL_SHAPE_OF_THE_DRAGONHAWK);
                DoAction(ACTION_DRAGON_HAWK);
                break;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            { 
                switch(eventId)
                {
                    case EVENT_CHANGE_PHASE:
                        CancelEvent();
                        events.SetPhase(PHASE_NULL);
					    Phase = PHASE_NULL;
                        ChangePhase();
                        events.ScheduleEvent(EVENT_CHANGE_PHASE, 60000);
                        break;
                    case EVENT_CLEAVE:
                        DoCastVictim(SPELL_CLEAVE);
                        events.ScheduleEvent(EVENT_BELOWING_ROAR, 5000);
                        break;
                    case EVENT_BELOWING_ROAR:
                        DoCastAOE(SPELL_BELOWING_ROAR);
                        events.ScheduleEvent(EVENT_BELOWING_ROAR, 15000);
                        break;
                    case EVENT_WHIRLWIND:
                        DoCastAOE(SPELL_WHIRLWIND);
                        me->SetSpeed(MOVE_RUN, 3.0f, true);
                        me->SetReactState(REACT_PASSIVE);
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 1))
                            me->GetMotionMaster()->MovePoint(POINT_WHIRLWIND, target->GetPositionX(),target->GetPositionY(), target->GetPositionZ());
                        events.ScheduleEvent(EVENT_WHIRLWIND_END, 12000);
                        break;
                    case EVENT_WHIRLWIND_TARGET:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 1))
                            me->GetMotionMaster()->MovePoint(POINT_WHIRLWIND, target->GetPositionX(),target->GetPositionY(), target->GetPositionZ());
                        break;
                    case EVENT_WHIRLWIND_END:
                        me->SetReactState(REACT_DEFENSIVE);
                        if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == POINT_MOTION_TYPE)
                        me->GetMotionMaster()->MovementExpired();
                            DoStartMovement(me->getVictim());
                        break;
                    case EVENT_FLAME_WHIRL:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            me->GetMotionMaster()->MovePoint(POINT_FLAME_WHIRL, target->GetPositionX(),target->GetPositionY(), target->GetPositionZ());
                        events.ScheduleEvent(EVENT_FLAME_WHIRL, 15000);
                        break;
                    case EVENT_FLAME_WHIRL_END:
                        me->SetReactState(REACT_DEFENSIVE);
                        if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == POINT_MOTION_TYPE)
                        me->GetMotionMaster()->MovementExpired();
                        DoStartMovement(me->getVictim());
                        break;
                    case EVENT_PILLAR_OF_FIRE:
                        for (uint32 i = 0; i < 2; ++i)
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM, 0))
                            DoCast(target, SPELL_PILLAR_OF_FIRE);
                        events.ScheduleEvent(EVENT_PILLAR_OF_FIRE, 7000);
                        break;
                    case EVENT_CLAW_RAGE:
                        TankGUID = me->getVictim()->GetGUID();
                        me->SetSpeed(MOVE_RUN, 5.0f);
                        ClawCounter = 12;
                        events.CancelEvent(EVENT_CLAW_RAGE);
                        events.ScheduleEvent(EVENT_CLAW_LOOP, 500);
                        break;
                    case EVENT_CLAW_LOOP:
                        if (--ClawCounter)
                        {
                            if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 1))
                            if (pTarget)
                            {
                                AttackStart(pTarget);
                                if (me->IsWithinMeleeRange(pTarget))
                                {
                                    DoCast(pTarget, SPELL_CLAW_RAGE_DAMAGE, true);
                                    events.ScheduleEvent(EVENT_CLAW_LOOP, 500);
                                }
                            }
                            else
                            {
                                AttackStart(Unit::GetUnit(*me, TankGUID));
                                me->SetSpeed(MOVE_RUN, 1.2f);
                                me->SetReactState(REACT_DEFENSIVE);
                                TankGUID = 0;
                            }
                        }
                        events.ScheduleEvent(EVENT_CLAW_RAGE, 25000);
                        break;
                    }
                }
                DoMeleeAttackIfReady();
            }
    private:
        uint64 ClawTargetGUID;
        uint64 TankGUID;
        uint32 ClawLoopTimer;
        uint32 Phase;
        uint8 ClawCounter;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_hyjal_zuljinAI(pCreature);
    }
};

class boss_hyjal_halazzi : public CreatureScript
{
public:
    boss_hyjal_halazzi() : CreatureScript("boss_hyjal_halazzi") { }

    struct boss_hyjal_halazziAI : public BossAI
    {
        boss_hyjal_halazziAI(Creature* pCreature) : BossAI(pCreature, DATA_HALAZZI_TRIO)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);
        }

        void Reset()
        {
            _Reset();
        }

        void EnterCombat(Unit* /*who*/)
        {
            if (Creature* controller = ObjectAccessor::GetCreature(*me, instance->GetData64(DATA_ZA_TRIO_CONTROLLER)))
                DoZoneInCombat(controller);
            _EnterCombat();
        }

        void KilledUnit(Unit* victim)
        {
        }

        void JustDied(Unit* /*killer*/)
        {
            _JustDied();
        }

        void UpdateAI(const uint32 diff)
        {
            if (!UpdateVictim())
                return;
          
            DoMeleeAttackIfReady();
        }
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_hyjal_halazziAI(pCreature);
    }
};

class mob_halazzi_hyjal_firebomb : public CreatureScript
{
public:
    mob_halazzi_hyjal_firebomb() : CreatureScript("mob_halazzi_hyjal_firebomb")
    {
    }

    struct mob_halazzi_hyjal_firebombAI : public ScriptedAI
    {
        mob_halazzi_hyjal_firebombAI(Creature *c) : ScriptedAI(c){}

        uint32 uiExplosionTimer;
        bool Explosion;

        void Reset() 
        {
            me->SetReactState(REACT_PASSIVE);
            me->SetDisplayId(11686);
            uiExplosionTimer = 12000;
            Explosion = false;

            for (uint32 i = 0; i < 20; ++i)
                DoCast(me, SPELL_BURNING_FURY);
        }

        void SpellHit(Unit * /*caster*/, const SpellEntry *spell)
        {
            if (spell->Id == SPELL_FIRE_BOMB_THROW)
                DoCast(me, SPELL_FIRE_BOMB_DUMMY, true);
        }

        void UpdateAI(const uint32 diff)
        {
            if (uiExplosionTimer <= diff && !Explosion)
            {
                me->CastSpell(me, SPELL_FIRE_BOMB_DAMAGE, true);
                me->RemoveAllAuras();
                me->SummonCreature(NPC_FIRE_STRIKE, me->GetPositionX(),me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 60000);
                me->ForcedDespawn(1000);
                Explosion = true;
            } else uiExplosionTimer -= diff;
        }
    };

    CreatureAI* GetAI(Creature* creature) const
    {
        return new mob_halazzi_hyjal_firebombAI(creature);
    }
};

void AddSC_boss_kaimlei()
{
    new boss_hyjal_janalai();
    new boss_hyjal_zuljin();
    new boss_hyjal_halazzi();
    new mob_halazzi_hyjal_firebomb();
    new npc_za_trio_controller();
}

