/*########################################################
#                      Mini Bosses                       #
#              Case di Gilda - BloodyWars                #
#             <https://www.bloodywars.net/>              #
#  <https://github.com/A-Metaphysical-Drama/BloodyCore>  #
########################################################*/

/* ScriptData
SDName: BloodyWars Mini Bosses
SDAuthor: PrinceCreed
SDComment: Likantropo, Lava Boost, Quel'Nagas, Might of Sylvanas, Trollzilla, Perotharn e Uznam
SDCategory: Mini-Boss Case di Gilda
EndScriptData */

#include "ScriptPCH.h"

enum LikantropoSpells
{
    ENRAGE                                                  = 48138,
    FRENZY                                                  = 48142,
    MORTAL_WOUND                                            = 59265,
    WORGEN_BITE                                             = 55266,
    WORGEN_CALL                                             = 53095,
    DECREPIT_FEVER                                          = 54098,
    SUMMON_WORGEN                                           = 27020
};

// Likantropo yells
#define SAY_LIKANTROPO_AGGRO    "Invasori, dovreste essere miei servi!"
#define SAY_LIKANTROPO_SLAY     "Libera la tua rabbia!"
#define SAY_LIKANTROPO_DEATH    "Noooooo, il mio castello!"
#define SAY_LIKANTROPO_MORPH    "Ve ne pentirete!"

enum LavaBoostSpells
{
    HEALING_WAVE                                            = 51586,
    LIGHTNING_BOLT                                          = 59024,
    BLOODLUST                                               = 41185,
    LIGHTNING_SHIELD                                        = 59025,
    SUMMON_AIR_ELEMENTAL                                    = 30418,
    LAVA_BURST                                              = 59519,
    CHAIN_LIGHTNING                                         = 54531,
    FLAME_SHOCK                                             = 43303,
    EARTH_SHOCK                                             = 43305,
    LIGHTNING_RING                                          = 59848
};

// Lava Boost yells
#define SAY_LAVA_AGGRO          "Come osate sfidare la furia degli elementi?!"
#define SAY_LAVA_SLAY           "Shocked!"
#define SAY_LAVA_DEATH          "Natura, perchè mi hai abbandonato!"
#define SAY_LAVA_BLOOD          "Bloodlust!"

enum QuelNagasSpells
{
    SPELL_MAGIC_BARRIER                                     = 38112,
    SPELL_TOXIC_SPORES                                      = 38575,
    TOXIC_SPORES_TRIGGER                                    = 22207,
    SUMMONED_MURLOC                                         = 27649,
    SPELL_POISON_BOLT_VOLLEY                                = 54098,
    SPELL_ENTANGLE                                          = 38316,
    SPELL_WRATH                                             = 20698
};

// Quel'Nagas yells
#define SAY_NAGAS_AGGRO         "Finirete negli abissi!"
#define SAY_NAGAS_SLAY          "Pensavi di farcela?!"
#define SAY_NAGAS_DEATH         "Non posso crederci!"
#define SAY_NAGAS_SUMMON        "Murlocs!"

enum SylvanasSpells
{
    SPELL_MULTISHOT                                         = 40872,
    SPELL_VOLLEY                                            = 38633,
    SUMMONED_SNAKE                                          = 29444,
    SPELL_BOLT_VOLLEY                                       = 34780,
    SPELL_BEWITCHING_AURA                                   = 29486,
    SPELL_REJUVENATION                                      = 71142,
    SPELL_ICE_TRAP                                          = 71249,
    SPELL_AURA_ROT                                          = 25818
};

// Might of Sylvanas yells
#define SAY_SYLVANAS_AGGRO      "I quel'dorei mai periranno!"
#define SAY_SYLVANAS_SLAY       "Shorel'aran!"
#define SAY_SYLVANAS_DEATH      "Tutta la mia essenza per la signora della morte..."
#define SAY_SYLVANAS_ICE        "Come la mettiamo adesso?"

enum TrollzillaSpells
{
    SPELL_FRENZY                                            = 28131,
    SPELL_CLEAVE                                            = 33480,
    SPELL_FIRE_SHIELD                                       = 30513,
    SPELL_WAR_STOMP                                         = 56427,
    SUMMON_FIRE_ELEMENTAL                                   = 30416
};

// Trollzilla yells
#define SAY_TROLLZILLA_AGGRO    "Io... Distruggo... Voi..."
#define SAY_TROLLZILLA_SLAY     "Hakkar... Per te..."
#define SAY_TROLLZILLA_DEATH    "Hakkar ar...rrii...vo."
#define SAY_TROLLZILLA_FRENZY   "Io... MOLTO... ARRABBIATO!"

enum PerotharnSpells
{
    STORM_OF_GRIEF                                          = 59772,
    SHADOW_BURST                                            = 34436,
    PIERCING_SHADOW                                         = 36698,
    SHADOW_FLAME                                            = 22539,
    HARVEST_SOUL                                            = 28679,
    SHADOW_BOLT                                             = 41957
};

// Perotharn yells
#define SAY_PEROTHARN_AGGRO     "A Xevian devo tutto, accettate il dono!"
#define SAY_PEROTHARN_SLAY      "Presto sarai uno di noi!"
#define SAY_PEROTHARN_DEATH     "Scusami maestro... Perdonami..."
#define SAY_PEROTHARN_SOUL      "Maestro, ecco le tue anime!"

enum UznamSpells
{
    EARTHQUAKE                                              = 46240,
    WHIRLWIND                                               = 52027,
    SHOCK_OF_SORROW                                         = 50760,
    ENTROPIC_AURA                                           = 36784,
    AURAL_SHOCK                                             = 14538
};

// Uznam yells
#define SAY_UZNAM_AGGRO         "Chi usurpa il mio santuario?"
#define SAY_UZNAM_SLAY          "Farò di te un degno trofeo."
#define SAY_UZNAM_DEATH         "Risorgerò dalla polvere... Presto..."
#define SAY_UZNAM_SPECIAL       "Mi avete proprio stancato."
#define EMOTE_WHIRL             "Uznam the Watcher begins to cast Whirlwind!"


/*#########
# Likantropo
#########*/

class npc_likantropo : public CreatureScript
{
public:
    npc_likantropo() : CreatureScript("npc_likantropo") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_likantropoAI (pCreature);
    }

    struct npc_likantropoAI : public ScriptedAI
    {
        npc_likantropoAI(Creature *pCreature) : ScriptedAI(pCreature){}

        uint32 EnrageTimer;
        uint32 WoundTimer;
        uint32 BiteTimer;
        uint32 FeverTimer;
        bool Enraged;
        bool Worgen;

        void Reset()
        {
            me->RestoreDisplayId();
            EnrageTimer = 15000;
            WoundTimer = 5000;
            BiteTimer = 45000;
            FeverTimer = 12000;
            Enraged = false;
            Worgen = false;
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->MonsterYell(SAY_LIKANTROPO_AGGRO, LANG_UNIVERSAL, 0);
        }

        void KilledUnit(Unit* victim)
        {
            me->MonsterYell(SAY_LIKANTROPO_SLAY, LANG_UNIVERSAL, 0);
            // In caso di morte di un pg, evoca un worgen dal suo corpo <3 ale
            if (victim->GetTypeId() == TYPEID_PLAYER)
                victim->SummonCreature(SUMMON_WORGEN, victim->GetPositionX(), victim->GetPositionY(), victim->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 60000);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterYell(SAY_LIKANTROPO_DEATH, LANG_UNIVERSAL, 0);
            me->RestoreDisplayId();
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            // Piccoli Enrage (durata 8 secondi) che raddoppiano il danno ogni 20 sec circa
            if (EnrageTimer <= uiDiff)
            {
                DoCast(me, ENRAGE);
                EnrageTimer = urand(20000,25000);
            } else EnrageTimer -= uiDiff;

            // Ogni 5 sec applica uno stack di wound che riduce del 5% le cure (max 15 stack)
            if (WoundTimer <= uiDiff)
            {
                DoCast(me->getVictim(), MORTAL_WOUND);
                WoundTimer = 5000;
            } else WoundTimer -= uiDiff;

            // Ogni 20 sec applica un disease che riduce del 50% gli hp e fa 3k ogni 3 sec per 21 sec
            if (FeverTimer <= uiDiff)
            {
                DoCastAOE(DECREPIT_FEVER);
                FeverTimer = 20000;
            } else FeverTimer -= uiDiff;

            // Ogni 45 secondi Whirlwind che colpisce ad area facendo il danno normale
            // e contemporaneamente trasforma un target a caso in Worgen, disattivandogli le spell
            if (BiteTimer <= uiDiff)
            {
                DoCast(me, WORGEN_BITE);
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,1))
                    me->AddAura(WORGEN_CALL, pTarget);
                BiteTimer = 45000;
            } else BiteTimer -= uiDiff;

            // Ad 80% hp si trasforma in Worgen
            if (HealthBelowPct(80) && !Worgen)
            {
                me->SetDisplayId(26787);
                me->MonsterYell(SAY_LIKANTROPO_MORPH, LANG_UNIVERSAL, 0);
                DoCast(me, ENRAGE);
                EnrageTimer = urand(25000,35000);
                Worgen = true;
            }

            // Enrage a 15% di vita (aumenta 50% attack speed e 50% damage)
            if (HealthBelowPct(15) && !Enraged)
            {
                DoCast(me, FRENZY);
                Enraged = true;
            }

            DoMeleeAttackIfReady();
        }
    };

};


/*#########
# Lava Boost
#########*/

class npc_lava_boost : public CreatureScript
{
public:
    npc_lava_boost() : CreatureScript("npc_lava_boost") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_lava_boostAI (pCreature);
    }

    struct npc_lava_boostAI : public ScriptedAI
    {
        npc_lava_boostAI(Creature *pCreature) : ScriptedAI(pCreature){}

        uint32 ChainTimer;
        uint32 LavaTimer;
        uint32 FlameTimer;
        uint32 ShockTimer;
        bool Haste;
        bool Healed;

        void Reset()
        {
            ChainTimer = 8000;
            LavaTimer = 15000;
            FlameTimer = 4000;
            ShockTimer = 20000;
            Haste = false;
            Healed = false;
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->MonsterYell(SAY_LAVA_AGGRO, LANG_UNIVERSAL, 0);
        }

        void KilledUnit(Unit* victim)
        {
            me->MonsterYell(SAY_LAVA_SLAY, LANG_UNIVERSAL, 0);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterYell(SAY_LAVA_DEATH, LANG_UNIVERSAL, 0);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            // Chain Lightning ogni 10/15 sec
            if (ChainTimer <= uiDiff)
            {
                me->InterruptNonMeleeSpells(false);
                DoCast(me->getVictim(), CHAIN_LIGHTNING);
                ChainTimer = urand(10000,15000);
            } else ChainTimer -= uiDiff;

            // Ogni 15 sec casta Lava Burst su un target random da 8/10k
            if (LavaTimer <= uiDiff)
            {
                me->InterruptNonMeleeSpells(false);
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,1))
                    DoCast(pTarget, LAVA_BURST);
                DoCast(me, LIGHTNING_SHIELD);
                LavaTimer = 15000;
            } else LavaTimer -= uiDiff;

            // Ogni 20 sec casta Earth Shock su un target random
            if (ShockTimer <= uiDiff)
            {
                me->InterruptNonMeleeSpells(false);
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,1))
                    DoCast(pTarget, EARTH_SHOCK);
                DoCast(me, LIGHTNING_RING);
                ShockTimer = 20000;
            } else ShockTimer -= uiDiff;

            // Ogni 12 sec applica Flame Shock sul tank
            if (FlameTimer <= uiDiff)
            {
                me->InterruptNonMeleeSpells(false);
                DoCast(me->getVictim(), FLAME_SHOCK);
                FlameTimer = 12000;
            } else FlameTimer -= uiDiff;

            // A 25% hp si cura con Healing Wave (solo una volta)
            if (HealthBelowPct(25) && !Healed)
            {
                me->InterruptNonMeleeSpells(false);
                DoCast(me, HEALING_WAVE);
                ChainTimer = 8000;
                LavaTimer = 10000;
                FlameTimer = 4000;
                ShockTimer = 15000;
                Healed = true;
            }

            // Bloodlust a 50% di vita e Summon Air Elemental
            if (HealthBelowPct(50) && !Haste)
            {
                me->InterruptNonMeleeSpells(false);
                DoCast(me, BLOODLUST);
                me->MonsterYell(SAY_LAVA_BLOOD, LANG_UNIVERSAL, 0);
                me->SummonCreature(SUMMON_AIR_ELEMENTAL, me->GetPositionX(), me->GetPositionY(), me->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 60000);
                Haste = true;
            }

            DoSpellAttackIfReady(LIGHTNING_BOLT);
        }
    };

};


/*#########
# Quel'Nagas
#########*/

class npc_quel_nagas : public CreatureScript
{
public:
    npc_quel_nagas() : CreatureScript("npc_quel_nagas") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_quel_nagasAI (pCreature);
    }

    struct npc_quel_nagasAI : public ScriptedAI
    {
        npc_quel_nagasAI(Creature *pCreature) : ScriptedAI(pCreature){}

        uint32 Phase2Timer;
        uint32 Phase1Timer;
        uint32 SporeTimer;
        uint32 PoisonTimer;
        uint32 RootTimer;
        bool Phase1;

        void Reset()
        {
            Phase2Timer = 60000;
            Phase1Timer = 90000;
            SporeTimer = 6000;
            PoisonTimer = 15000;
            RootTimer = 25000;
            Phase1 = true;
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->MonsterYell(SAY_NAGAS_AGGRO, LANG_UNIVERSAL, 0);
        }

        void KilledUnit(Unit* victim)
        {
            me->MonsterYell(SAY_NAGAS_SLAY, LANG_UNIVERSAL, 0);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterYell(SAY_NAGAS_DEATH, LANG_UNIVERSAL, 0);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            // Summon Phase
            if (Phase2Timer <= uiDiff)
            {
                Phase1 = false;
                me->InterruptNonMeleeSpells(false);
                me->SetReactState(REACT_PASSIVE);
                me->AttackStop();
                me->RemoveAllAuras();
                // In Fase 2 evoca 3 Murloc
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                    for (uint8 i = 1; i <= 3; i++)
                    {
                        me->SummonCreature(SUMMONED_MURLOC, pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 60000);
                    }
                me->AddAura(SPELL_MAGIC_BARRIER, me);
                me->MonsterYell(SAY_NAGAS_SUMMON, LANG_UNIVERSAL, 0);
                Phase2Timer = 90000;
            } else Phase2Timer -= uiDiff;

            // Normal Phase
            if (Phase1Timer <= uiDiff)
            {
                Phase1 = true;
                me->InterruptNonMeleeSpells(false);
                me->SetReactState(REACT_AGGRESSIVE);
                me->RemoveAurasDueToSpell(SPELL_MAGIC_BARRIER);
                DoZoneInCombat();
                if (me->getThreatManager().isThreatListEmpty())
                    EnterEvadeMode();
                Phase1Timer = 90000;
            } else Phase1Timer -= uiDiff;

            if (Phase1)
            {
                // Ogni 15 sec lancia una spora velenosa ai piedi di un player random
                if (SporeTimer <= uiDiff)
                {
                    me->InterruptNonMeleeSpells(false);
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    {
                        Creature* trig = me->SummonCreature(TOXIC_SPORES_TRIGGER, pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 30000);
                        if (trig)
                        {
                            trig->setFaction(14);
                            trig->CastSpell(trig, SPELL_TOXIC_SPORES,true);
                        }
                    }                
                    SporeTimer = 15000;
                } else SporeTimer -= uiDiff;

                // Poison ad area ogni 10 sec
                if (PoisonTimer <= uiDiff)
                {
                    me->InterruptNonMeleeSpells(false);
                    DoCastAOE(SPELL_POISON_BOLT_VOLLEY);
                    PoisonTimer = 10000;
                } else PoisonTimer -= uiDiff;

                // Radici su un target random ogni 25 sec
                if (RootTimer <= uiDiff)
                {
                    me->InterruptNonMeleeSpells(false);
                    if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                        DoCast(pTarget, SPELL_ENTANGLE);
                    RootTimer = 25000;
                } else RootTimer -= uiDiff;
            }

            DoSpellAttackIfReady(SPELL_WRATH);
        }
    };

};


/*#########
# Might of Sylvanas
#########*/

class npc_might_of_sylvanas : public CreatureScript
{
public:
    npc_might_of_sylvanas() : CreatureScript("npc_might_of_sylvanas") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_might_of_sylvanasAI (pCreature);
    }

    struct npc_might_of_sylvanasAI : public ScriptedAI
    {
        npc_might_of_sylvanasAI(Creature *pCreature) : ScriptedAI(pCreature){}

        uint32 MultiTimer;
        uint32 VolleyTimer;
        uint32 SnakeTimer;
        uint32 PoisonTimer;
        uint32 TrapTimer;
        uint32 HealTimer;
        bool Haste;
        bool Healed;

        void Reset()
        {
            MultiTimer = 2000;
            VolleyTimer = 15000;
            SnakeTimer = 5000;
            PoisonTimer = 12000;
            TrapTimer = 20000;
            HealTimer = 25000;
            Haste = false;
            Healed = false;
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->MonsterYell(SAY_SYLVANAS_AGGRO, LANG_UNIVERSAL, 0);
            me->AddAura(SPELL_BEWITCHING_AURA, me);
            me->AddAura(SPELL_AURA_ROT, me);
        }

        void KilledUnit(Unit* victim)
        {
            me->MonsterYell(SAY_SYLVANAS_SLAY, LANG_UNIVERSAL, 0);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterYell(SAY_SYLVANAS_DEATH, LANG_UNIVERSAL, 0);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            if (me->HasUnitState(UNIT_STAT_CASTING))
                return;

            // Multishot ogni 2 sec
            if (MultiTimer <= uiDiff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM, 0))
                    DoCast(pTarget, SPELL_MULTISHOT);
                MultiTimer = 4000;
            } else MultiTimer -= uiDiff;

            // Ogni 10 sec casta Volley su un target random
            if (VolleyTimer <= uiDiff)
            {
                DoCastAOE(SPELL_VOLLEY);
                VolleyTimer = 15000;
            } else VolleyTimer -= uiDiff;

            // Ogni 5 sec casta Snake Trap su un target random
            if (SnakeTimer <= uiDiff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                    for (uint8 i = 1; i <= 3; i++)
                    {
                        me->SummonCreature(SUMMONED_SNAKE, pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 60000);
                    }
                SnakeTimer = 5000;
            } else SnakeTimer -= uiDiff;

            // Poison ad area ogni 10 sec
            if (PoisonTimer <= uiDiff)
            {
                DoCastAOE(SPELL_BOLT_VOLLEY);
                PoisonTimer = 12000;
            } else PoisonTimer -= uiDiff;

            // Ogni 20 sec casta Frost Trap sul tank
            if (TrapTimer <= uiDiff)
            {
                me->MonsterYell(SAY_SYLVANAS_ICE, LANG_UNIVERSAL, 0);
                DoCast(me->getVictim(), SPELL_ICE_TRAP);
                TrapTimer = 20000;
            } else TrapTimer -= uiDiff;

            // Ogni 25 sec casta Rejuvenation
            if (HealTimer <= uiDiff)
            {
                DoCast(me, SPELL_REJUVENATION);
                HealTimer = 25000;
            } else HealTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }
    };

};


/*#########
# Trollzilla
#########*/

class npc_trollzilla : public CreatureScript
{
public:
    npc_trollzilla() : CreatureScript("npc_trollzilla") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_trollzillaAI (pCreature);
    }

    struct npc_trollzillaAI : public ScriptedAI
    {
        npc_trollzillaAI(Creature *pCreature) : ScriptedAI(pCreature){}

        uint32 CleaveTimer;
        uint32 StompTimer;
        uint32 FireTimer;
        bool Enraged;

        void Reset()
        {
            CleaveTimer = 5000;
            StompTimer = 20000;
            FireTimer = 30000;
            Enraged = false;
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->MonsterYell(SAY_TROLLZILLA_AGGRO, LANG_UNIVERSAL, 0);
            me->AddAura(SPELL_FIRE_SHIELD, me);
        }

        void KilledUnit(Unit* victim)
        {
            me->MonsterYell(SAY_TROLLZILLA_SLAY, LANG_UNIVERSAL, 0);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterYell(SAY_TROLLZILLA_DEATH, LANG_UNIVERSAL, 0);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            // Ogni 5 sec fa Cleave
            if (CleaveTimer <= uiDiff)
            {
                DoCast(me->getVictim(), SPELL_CLEAVE);
                CleaveTimer = 5000;
            } else CleaveTimer -= uiDiff;

            // Ogni 20 sec fa un War Stomp che stunna ad area
            if (StompTimer <= uiDiff)
            {
                DoCastAOE(SPELL_WAR_STOMP);
                StompTimer = 20000;
            } else StompTimer -= uiDiff;

            // Summon Fire Elemental ogni 30 sec
            if (FireTimer <= uiDiff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                    me->SummonCreature(SUMMON_FIRE_ELEMENTAL, pTarget->GetPositionX(), pTarget->GetPositionY(), pTarget->GetPositionZ(), 0, TEMPSUMMON_TIMED_DESPAWN, 60000);
                FireTimer = 30000;
            } else FireTimer -= uiDiff;

            // Enrage a 25% di vita (aumenta 40% attack speed e 25% damage)
            if (HealthBelowPct(25) && !Enraged)
            {
                me->MonsterYell(SAY_TROLLZILLA_FRENZY, LANG_UNIVERSAL, 0);
                DoCast(me, SPELL_FRENZY);
                Enraged = true;
            }

            DoMeleeAttackIfReady();
        }
    };

};


/*#########
# Perotharn
#########*/

class npc_perotharn : public CreatureScript
{
public:
    npc_perotharn() : CreatureScript("npc_perotharn") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_perotharnAI (pCreature);
    }

    struct npc_perotharnAI : public ScriptedAI
    {
        npc_perotharnAI(Creature *pCreature) : ScriptedAI(pCreature){}

        uint32 BurstTimer;
        uint32 GriefTimer;
        uint32 FlameTimer;
        uint32 PiercingTimer;
        uint32 HarvestTimer;

        void Reset()
        {
            BurstTimer = 30000;
            GriefTimer = 20000;
            FlameTimer = 15000;
            PiercingTimer = 10000;
            HarvestTimer = 45000;
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->MonsterYell(SAY_PEROTHARN_AGGRO, LANG_UNIVERSAL, 0);
        }

        void KilledUnit(Unit* victim)
        {
            me->MonsterYell(SAY_PEROTHARN_SLAY, LANG_UNIVERSAL, 0);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterYell(SAY_PEROTHARN_DEATH, LANG_UNIVERSAL, 0);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            // Shadow Burst ad area e reset threat
            if (BurstTimer <= uiDiff)
            {
                me->InterruptNonMeleeSpells(false);
                me->DeleteThreatList();
                DoCast(me->getVictim(), SHADOW_BURST);
                BurstTimer = urand(25000,35000);
            } else BurstTimer -= uiDiff;

            // Storm of Grief ogni 20 sec colpisce ad area
            if (GriefTimer <= uiDiff)
            {
                me->InterruptNonMeleeSpells(false);
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                    DoCast(pTarget, STORM_OF_GRIEF);
                GriefTimer = 20000;
            } else GriefTimer -= uiDiff;

            // Ogni 10 sec casta Piercing Shadow sul target a maggior aggro dopo il tank
            if (PiercingTimer <= uiDiff)
            {
                me->InterruptNonMeleeSpells(false);
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_TOPAGGRO,0))
                    DoCast(pTarget, PIERCING_SHADOW);
                PiercingTimer = 10000;
            } else PiercingTimer -= uiDiff;

            // Ogni 15 sec casta Shadow Flame che fa danno a cono
            if (FlameTimer <= uiDiff)
            {
                me->InterruptNonMeleeSpells(false);
                DoCastAOE(SHADOW_FLAME);
                FlameTimer = 15000;
            } else FlameTimer -= uiDiff;

            // Ogni 45 sec casta Harvest Soul su tutto il raid
            if (HarvestTimer <= uiDiff)
            {
                me->InterruptNonMeleeSpells(false);
                me->MonsterYell(SAY_PEROTHARN_SOUL, LANG_UNIVERSAL, 0);
                DoCastAOE(HARVEST_SOUL);
                HarvestTimer = 45000;
            } else HarvestTimer -= uiDiff;

            DoSpellAttackIfReady(SHADOW_BOLT);
        }
    };

};


/*#########
# Uznam the Watcher
#########*/

class npc_uznam_the_watcher : public CreatureScript
{
public:
    npc_uznam_the_watcher() : CreatureScript("npc_uznam_the_watcher") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new npc_uznam_the_watcherAI (pCreature);
    }

    struct npc_uznam_the_watcherAI : public ScriptedAI
    {
        npc_uznam_the_watcherAI(Creature *pCreature) : ScriptedAI(pCreature){}

        uint32 EarthquakeTimer;
        uint32 WhirlwindTimer;
        uint32 ShockTimer;
        uint32 AuralShockTimer;

        void Reset()
        {
            EarthquakeTimer = 8000;
            WhirlwindTimer = 20000;
            ShockTimer = 30000;
            AuralShockTimer = 50000;
        }

        void EnterCombat(Unit* /*who*/)
        {
            me->MonsterYell(SAY_UZNAM_AGGRO, LANG_UNIVERSAL, 0);
            DoCast(me, ENTROPIC_AURA);
        }

        void KilledUnit(Unit* victim)
        {
            me->MonsterYell(SAY_UZNAM_SLAY, LANG_UNIVERSAL, 0);
        }

        void JustDied(Unit* /*killer*/)
        {
            me->MonsterYell(SAY_UZNAM_DEATH, LANG_UNIVERSAL, 0);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            if (!UpdateVictim())
                return;

            // Earthquake Ogni 20 secondi.
            if (EarthquakeTimer <= uiDiff)
            {
                DoCast(EARTHQUAKE);
                EarthquakeTimer = 20000;
            } else EarthquakeTimer -= uiDiff;

            // Whirlwind Ogni 30 sec
            if (WhirlwindTimer <= uiDiff)
            {
                me->MonsterYell(SAY_UZNAM_SPECIAL, LANG_UNIVERSAL, 0);
                me->MonsterTextEmote(EMOTE_WHIRL, 0, true);
                DoCast(me, WHIRLWIND);
                WhirlwindTimer = 30000;
            } else WhirlwindTimer -= uiDiff;

            // Shock of sorrow Ogni 40 sec.
            if (ShockTimer <= uiDiff)
            {
                if (Unit *pTarget = SelectTarget(SELECT_TARGET_RANDOM,0))
                    DoCast(pTarget, SHOCK_OF_SORROW);
                ShockTimer = 40000;
            } else ShockTimer -= uiDiff;
            
            // Aural Shock Ogni minuto
            if (AuralShockTimer <= uiDiff)
            {
                DoCast(AURAL_SHOCK);
                AuralShockTimer = 60000;
            } else AuralShockTimer -= uiDiff;

            DoMeleeAttackIfReady();
        }
    };

};


void AddSC_npcs_mini_boss()
{
    new npc_likantropo;
    new npc_lava_boost;
    new npc_quel_nagas;
    new npc_might_of_sylvanas;
    new npc_trollzilla;
    new npc_perotharn;
    new npc_uznam_the_watcher;
}

