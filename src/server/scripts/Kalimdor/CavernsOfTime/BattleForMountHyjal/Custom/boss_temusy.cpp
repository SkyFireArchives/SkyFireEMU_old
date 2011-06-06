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
    SPELL_BERSERK           = 47008,
    SPELL_CLONE             = 69828,
    SPELL_FLAMEBREATH       = 74528,
    SPELL_FROSTBREATH       = 73064,
    SPELL_BURNING_SPRAY     = 66902,
    SPELL_CLEAVE            = 68868,

    SPELL_RED_BEAM_VISUAL   = 62021,
    SPELL_WARNING_VISUAL    = 70571,

    // Fly
    SPELL_CONFLAGATION_1    = 74454,
    SPELL_CONFLAGATION_2    = 74456,
    SPELL_BURNING_BILE      = 66869,

    // Phase 3
    SPELL_FIRE_NOVA         = 78723,
    SPELL_FROST_AURA_SMAL   = 70084,
    SPELL_FROST_AURA_BIG    = 71052,
    SPELL_BELOWING_ROAR     = 18431,
    SPELL_ARCANE_STORM      = 61694,

    // Adds
    SPELL_ÄTZSCHLAG         = 70744,
    SPELL_FIREBALL          = 69583,
    SPELL_LIFE_BLOOM        = 67959,
    SPELL_MIND_FLAY         = 68042,
    SPELL_BLIZZARD          = 62576,
    SPELL_FROSTNOVA         = 62597,

    // Meteor
    SPELL_METEOR_IMPACT     = 74641, 
    SPELL_METEOR_STRIKE     = 74648, 
    SPELL_METEOR_PRE        = 41276,
    SPELL_METEOR_DAMAGE     = 75878,
    SPELL_METEOR_FLAME      = 74718,
};

enum Phases
{
    PHASE_NONE              = 0,
    PHASE_COMBAT_1          = 1,
    PHASE_FLY               = 2,
};

enum Events
{
    EVENT_BREATH            = 1,
    EVENT_CLEAVE            = 2,
    EVENT_FEAR              = 3,
    EVENT_SPRAY             = 4,
    EVENT_MOVE              = 5,
    EVENT_FLY               = 6,
    EVENT_BOMB              = 7,
    EVENT_FIREBALL          = 8,
    EVENT_LAND              = 9,
    EVENT_ARCANE            = 10,
    EVENT_ENRAGE            = 11,
};

enum MovementPoints
{
    POINT_SPEAK_INTRO       = 1,
    POINT_LAND_INTRO        = 2,
    POINT_AIR_PHASE         = 3,
    POINT_LAND              = 4,
};

#define POSITION_Z 1632.851f

Position const TemusyFlyPos     = {5647.515137f, -3430.65151f, POSITION_Z, 3.141593f};
Position const TemusyLandPos    = {5610.337492f, -3508.65454f, 1578.683350f, 3.141593f};
Position const TemusyIntro      = {5660.810059f, -3453.39721f, POSITION_Z, 3.141593f};
Position const TemusyLandIntro  = {5590.500000f, -3479.30004f, 1576.170044f, 3.141593f};

#define YELL_FLYING  "Nun so sei es! Ich werde Euch nun von Oben Angreifen" 
#define YELL_AGGRO   "Ich werde Malygos Tot raechen! Ihr werdet mich nicht aufhalten!"
#define YELL_SLAY_1  "Ja, JA, keiner kann mich aufhalten!!!"
#define YELL_SLAY_2  "Noch ein dummer Sterblicher ist dahin!"
#define YELL_DIE     "Ich... komme... wieder, um mich zu rä... rä... rächen!"
#define YELL_INTRO_1 "Ihr glaubt wirklich das ihr mich besiegen koennt? Ihr kleinen wichte wagt es mich herauszufordern? WIE IHR WOLLT!!!!"
#define YELL_INTRO_2 "Kommt und fordert mich heraus!"

#define EMOTE_FLYING  "Temusy erhebt sich in die Luft"
#define EMOTE_LANDING "Temusy landet und greift wieder an"
#define EMOTE_SPRAY   "Burning Spray auf $N"
#define EMOTE_CONFLAGATION "Conflagation auf $N"

class npc_temusy : public CreatureScript
{
public:
    npc_temusy() : CreatureScript("npc_temusy") { }

    struct npc_temusyAI : public BossAI
    {
        npc_temusyAI(Creature* pCreature) : BossAI(pCreature, DATA_TEMUSY)
        {
            me->ApplySpellImmune(0, IMMUNITY_EFFECT, SPELL_EFFECT_KNOCK_BACK, true);
            me->ApplySpellImmune(0, IMMUNITY_MECHANIC, MECHANIC_GRIP, true);
            me->SetSpeed(MOVE_FLIGHT, 2.0f);
            me->SetFlying(true);
            me->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
            me->SetVisible(false);
            Landing = false;
        }

        void Reset()
        {
            _Reset();
            me->SetReactState(REACT_DEFENSIVE);
            events.ScheduleEvent(EVENT_BREATH, 15000, PHASE_COMBAT_1);
            events.ScheduleEvent(EVENT_CLEAVE, 10000, PHASE_COMBAT_1);
            events.ScheduleEvent(EVENT_SPRAY, 20000, PHASE_COMBAT_1);
            events.ScheduleEvent(EVENT_FLY, 60000);
            events.ScheduleEvent(EVENT_ENRAGE, 10*MINUTE*IN_MILLISECONDS);
            isThirdPhase = false;

            if (instance)
                instance->SetData(DATA_TEMUSI_FLAME_RING, GO_STATE_ACTIVE);

            /*if (instance->GetBossState(DATA_KAIMLEI) == DONE && !Landing)
                me->AI()->DoAction(ACTION_INTRO);*/
        }

        void EnterCombat(Unit* /*who*/)
        {
            _EnterCombat();
            DoCast(me, SPELL_FROST_AURA_SMAL);

            me->MonsterYell(YELL_AGGRO, LANG_UNIVERSAL, 0);

            if (instance)
                instance->SetData(DATA_TEMUSI_FLAME_RING, GO_STATE_READY);
        }

        void KilledUnit(Unit* victim)
        {
            switch(urand(0,1))
            {
            case 1:
                me->MonsterYell(YELL_SLAY_1, LANG_UNIVERSAL, 0);
                break;
            case 2:
                me->MonsterYell(YELL_SLAY_2, LANG_UNIVERSAL, 0);
                break;
            }
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterYell(YELL_DIE, LANG_UNIVERSAL, 0);

            _JustDied();

            if (instance)
                instance->SetData(DATA_TEMUSI_FLAME_RING, GO_STATE_ACTIVE);
        }

        void JustReachedHome()
        {
            me->SetFlying(false);
            me->RemoveUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
            me->SetSpeed(MOVE_FLIGHT, 2.0f);
        }

        void SpellHitTarget(Unit* target, SpellEntry const* spell)
        {
            if (spell->Id == SPELL_CONFLAGATION_1)
            {
                me->CastSpell(target, SPELL_CONFLAGATION_2, true);
                target->SummonCreature(NPC_FIRE_STRIKE, target->GetPositionX(),target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 60000);
                if (Creature* pReflection = me->SummonCreature(NPC_VERGANGENHEIT, target->GetPositionX(),target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 10000))
                {
                    target->CastSpell(pReflection, SPELL_CLONE, true);
                    pReflection->CastSpell(pReflection, SPELL_RED_BEAM_VISUAL, true);
                    pReflection->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID,   target->GetUInt32Value(PLAYER_VISIBLE_ITEM_16_ENTRYID));
                    pReflection->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID+1, target->GetUInt32Value(PLAYER_VISIBLE_ITEM_17_ENTRYID));
                    pReflection->SetUInt32Value(UNIT_VIRTUAL_ITEM_SLOT_ID+2, target->GetUInt32Value(PLAYER_VISIBLE_ITEM_18_ENTRYID));
                    pReflection->AI()->DoZoneInCombat();
                }
            }
            
            if (spell->Id == SPELL_BURNING_SPRAY)
            {
                me->CastSpell(target, SPELL_BURNING_BILE, true);
                target->SummonCreature(NPC_FIRE_STRIKE, target->GetPositionX(),target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 60000);
            }
            if (spell->Id == SPELL_ARCANE_STORM)
                target->SummonCreature(NPC_FIRE_STRIKE, target->GetPositionX(),target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 60000);
        }

        void MovementInform(uint32 type, uint32 point)
        {
            if (type != POINT_MOTION_TYPE)
                return;

            switch (point)
            {
                case POINT_AIR_PHASE:
                    events.ScheduleEvent(EVENT_BOMB, 8000);
                    events.ScheduleEvent(EVENT_FIREBALL, 10000);
                    events.ScheduleEvent(EVENT_MOVE, 8000);
                    break;
                case POINT_LAND:
                    me->SetFlying(false);
                    me->RemoveUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                    me->SetReactState(REACT_DEFENSIVE);
                    if (me->GetMotionMaster()->GetCurrentMovementGeneratorType() == POINT_MOTION_TYPE)
                        me->GetMotionMaster()->MovementExpired();
                    DoStartMovement(me->getVictim());
                    break;
                case POINT_SPEAK_INTRO:
                    me->MonsterYell(YELL_INTRO_1, LANG_UNIVERSAL, 0);
                    Intro = 15000;
                    IntroEnding = false;
                    break;
                case POINT_LAND_INTRO:
                    me->setActive(false);
                    me->SetFlying(false);
                    me->RemoveUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                    me->SetHomePosition(TemusyLandIntro);
                    me->RemoveFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE);
                    me->SetSpeed(MOVE_FLIGHT, 2.0f);
                    me->MonsterYell(YELL_INTRO_2, LANG_UNIVERSAL, 0);
                    break;
                default:
                    break;
            }
        }

        void DoAction(const int32 action)
        {
            switch (action)
            {
            case ACTION_INTRO:
                Landing = true;
                me->SetVisible(true);
                me->GetMotionMaster()->MovePoint(POINT_SPEAK_INTRO, TemusyIntro);
                break;
            }
        }

        void DamageTaken(Unit* /*attacker*/, uint32& /*damage*/)
        {
            if (!isThirdPhase && !HealthAbovePct(35))
            {
                events.CancelEvent(EVENT_FLY);
                events.ScheduleEvent(EVENT_ARCANE, 10000);
                events.ScheduleEvent(EVENT_FEAR, 15000);
                events.ScheduleEvent(EVENT_BOMB, 20000);
                isThirdPhase = true;
            }
        }

        void UpdateAI(const uint32 diff)
        {
            if (Intro <= diff && !IntroEnding)
            {
                me->GetMotionMaster()->MovePoint(POINT_LAND_INTRO, TemusyLandIntro);
                IntroEnding = true;
            } else Intro -= diff;

            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            events.Update(diff);

            while (uint32 eventId = events.ExecuteEvent())
            {
                switch(eventId)
                {
                case EVENT_BREATH:
                    DoCastVictim(isThirdPhase ? SPELL_FROSTBREATH : SPELL_FLAMEBREATH);
                    events.ScheduleEvent(EVENT_BREATH, urand(15000, 20000), PHASE_COMBAT_1);
                    break;
                case EVENT_CLEAVE:
                    DoCastVictim(SPELL_CLEAVE);
                    events.ScheduleEvent(EVENT_CLEAVE, urand(15000, 20000), PHASE_COMBAT_1);
                    break;
                case EVENT_SPRAY:
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM))
                    {
                        me->MonsterTextEmote(EMOTE_SPRAY, target->GetGUID(), true);
                        DoCast(target, SPELL_BURNING_SPRAY);
                    }
                    events.ScheduleEvent(EVENT_SPRAY, 15000, PHASE_COMBAT_1);
                    break;
                case EVENT_FEAR:
                    DoCastAOE(SPELL_BELOWING_ROAR);
                    events.ScheduleEvent(EVENT_FEAR, 20000);
                    break;
                case EVENT_FLY:
                    me->MonsterTextEmote(EMOTE_FLYING, 0, true);
                    me->SetFlying(true);
                    me->AddUnitMovementFlag(MOVEMENTFLAG_LEVITATING);
                    me->SetReactState(REACT_PASSIVE);
                    me->GetMotionMaster()->MovePoint(POINT_AIR_PHASE, TemusyFlyPos);
                    events.DelayEvents(68000, PHASE_COMBAT_1);
                    events.ScheduleEvent(EVENT_FLY, 180000);
                    events.ScheduleEvent(EVENT_LAND, 90000);
                    break;
                case EVENT_MOVE:
                    MovePos();
                    events.ScheduleEvent(EVENT_MOVE, 8000);
                    break;
                case EVENT_BOMB:
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM))
                        me->SummonCreature(NPC_METEOR_STRIKE, target->GetPositionX(),target->GetPositionY(), target->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT, 20000);
                    events.ScheduleEvent(EVENT_BOMB, 15000);
                    break;
                case EVENT_FIREBALL:
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM))
                    {
                        me->MonsterTextEmote(EMOTE_CONFLAGATION, target->GetGUID(), true);
                        DoCast(target, SPELL_CONFLAGATION_1);
                    }
                    events.ScheduleEvent(EVENT_FIREBALL, 10000);
                    break;
                case EVENT_LAND:
                    me->MonsterTextEmote(EMOTE_LANDING, 0, true);
                    events.CancelEvent(EVENT_BOMB);
                    events.CancelEvent(EVENT_FIREBALL);
                    events.CancelEvent(EVENT_MOVE);
                    me->GetMotionMaster()->MovePoint(POINT_LAND, TemusyLandPos);
                    break;
                case EVENT_ARCANE:
                    if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM))
                        DoCast(target, SPELL_ARCANE_STORM);
                    events.ScheduleEvent(EVENT_ARCANE, 15000);
                    break;
                case EVENT_ENRAGE:
                    DoCast(me, SPELL_BERSERK);
                    break;
                }
            }
            DoMeleeAttackIfReady();
        }

        void MovePos()
        {
            switch(Position)
            {
            case 0:
                me->GetMotionMaster()->MovePoint(0, 5647.515137f, -3430.65151f, POSITION_Z);
                break;
            case 1:
                me->GetMotionMaster()->MovePoint(0, 5601.530762f, -3424.75439f, POSITION_Z);
                break;
            case 2:
                me->GetMotionMaster()->MovePoint(0, 5591.399414f, -3515.50463f, POSITION_Z);
                break;
            case 3:
                me->GetMotionMaster()->MovePoint(0, 5640.604004f, -3510.60058f, POSITION_Z);
                break;
            }

            Position++;
            if(Position > 3)
            {
                Position = 0;
            }
        }

    private:
        EventMap events;
        uint32 Phase;
        uint32 Position;
        uint32 Intro;
        bool isThirdPhase;
        bool IntroEnding;
        bool Landing;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_temusyAI (pCreature);
    }
};

#define TARGETS_25 7

class npc_meteor : public CreatureScript
{
public:
    npc_meteor() : CreatureScript("npc_meteor") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_meteorAI(pCreature);
    }

    struct npc_meteorAI : public ScriptedAI
    {
        npc_meteorAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            me->SetDisplayId(11686);
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetReactState(REACT_PASSIVE);
        }

        float direction;
        uint8 stage;
        uint32 MeteorImpactTimer;
        uint32 MeteorStrikeTimer;

        void setStage(uint8 phase)
        {
            stage = phase;
        }

        uint8 getStage()
        {
            return stage;
        }

        void Reset()
        {
            setStage(0);
            MeteorImpactTimer = 0.5*IN_MILLISECONDS;
            MeteorStrikeTimer = 4.5*IN_MILLISECONDS;
        }

        void UpdateAI(const uint32 uiDiff)
        {
            switch (getStage())
            {
                case 0:
                     if (MeteorImpactTimer <= uiDiff)
                     {
                         DoCast(SPELL_METEOR_IMPACT);
                         MeteorImpactTimer = 0.5*IN_MILLISECONDS;
                         setStage(1);
                     } else MeteorImpactTimer -= uiDiff;
                     break;
                case 1:
                     if (MeteorStrikeTimer <= uiDiff)
                     {
                         DoCast(SPELL_METEOR_STRIKE);
                         MeteorStrikeTimer = 4.5*IN_MILLISECONDS;
                         setStage(2);
                     } else MeteorStrikeTimer -= uiDiff;
                     break;
                case 2:
                    {
                        direction = 2.0f*M_PI*((float)urand(0,15)/16.0f);
                        float x, y, radius;
                        radius = 0.0f;
                        for(uint8 i = 0; i < TARGETS_25; ++i)
                        {
                            radius = radius + 5.0f;
                            me->GetNearPoint2D(x, y, radius, direction);
                            me->SummonCreature(NPC_FIRE_STRIKE, x, y, me->GetPositionZ(), 0.0f, TEMPSUMMON_TIMED_DESPAWN, 60000);
                            me->GetNearPoint2D(x, y, radius, direction+M_PI);
                            me->SummonCreature(NPC_FIRE_STRIKE, x, y, me->GetPositionZ(), 0.0f, TEMPSUMMON_TIMED_DESPAWN, 60000);
                        }
                    };
                    {
                        direction = direction + M_PI/4;
                        float x, y, radius;
                        radius = 0.0f;
                        for(uint8 i = 0; i < TARGETS_25; ++i)
                        {
                            radius = radius + 5.0f;
                            me->GetNearPoint2D(x, y, radius, direction);
                            me->SummonCreature(NPC_FIRE_STRIKE, x, y, me->GetPositionZ(), 0.0f, TEMPSUMMON_TIMED_DESPAWN, 60000);
                            me->GetNearPoint2D(x, y, radius, direction+M_PI);
                            me->SummonCreature(NPC_FIRE_STRIKE, x, y, me->GetPositionZ(), 0.0f, TEMPSUMMON_TIMED_DESPAWN, 60000);
                        }
                    };
                    setStage(3);
                    break;
                case 3:
                    me->ForcedDespawn();
                    break;
                default:
                     break;
            }
        }
    };
};

class npc_temusy_flame : public CreatureScript
{
public:
    npc_temusy_flame() : CreatureScript("npc_temusy_flame") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_temusy_flameAI(pCreature);
    }

    struct npc_temusy_flameAI : public ScriptedAI
    {
        npc_temusy_flameAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            me->SetFlag(UNIT_FIELD_FLAGS, UNIT_FLAG_NON_ATTACKABLE | UNIT_FLAG_NOT_SELECTABLE);
            me->SetReactState(REACT_PASSIVE);
            me->SetDisplayId(11686);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!me->HasAura(SPELL_METEOR_FLAME))
                DoCast(SPELL_METEOR_FLAME);
        }
    };
};

class npc_new_clone_hyjal_trash : public CreatureScript
{
public:
    npc_new_clone_hyjal_trash() : CreatureScript("npc_new_clone_hyjal_trash") { }

    struct npc_new_clone_hyjal_trashAI : public ScriptedAI
    {
        npc_new_clone_hyjal_trashAI(Creature* pCreature) : ScriptedAI(pCreature)
        {
            instance = pCreature->GetInstanceScript();
        }

        void Reset()
        {
            uiSpellTimer = 5000;
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (uiSpellTimer <= uiDiff)
            {
                switch(urand(0,4))
                {
                    case 0:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM))
                            DoCast(target, SPELL_FIREBALL);
                        break;
                    case 1:
                        if (Creature* pTemusy = Unit::GetCreature(*me, instance->GetData64(DATA_TEMUSY)))
                            DoCast(pTemusy, SPELL_LIFE_BLOOM);
                        break;
                    case 2:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM))
                            DoCast(target, SPELL_MIND_FLAY);
                        break;
                    case 3:
                        if (Unit *target = SelectTarget(SELECT_TARGET_RANDOM))
                            DoCast(target, SPELL_BLIZZARD);
                        break;
                    case 4:
                        DoCastAOE(SPELL_FROSTNOVA);
                        break;
                }
                uiSpellTimer = urand(2*IN_MILLISECONDS, 3*IN_MILLISECONDS);
            } else uiSpellTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }
    private:
        InstanceScript* instance;
        uint32 uiSpellTimer;
    };

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_new_clone_hyjal_trashAI(pCreature);
    }
};

void AddSC_boss_temusy()
{
    new npc_temusy();
    new npc_meteor();
    new npc_temusy_flame();
    new npc_new_clone_hyjal_trash();
}

