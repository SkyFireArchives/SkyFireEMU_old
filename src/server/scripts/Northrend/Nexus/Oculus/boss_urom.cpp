/*
 * Copyright (C) 2005-2011 MaNGOS <http://www.getmangos.com/>
 *
 * Copyright (C) 2008-2011 Trinity <http://www.trinitycore.org/>
 *
 * Copyright (C) 2006-2011 ScriptDev2 <http://www.scriptdev2.com/>
 *
 * Copyright (C) 2010-2011 Project SkyFire <http://www.projectskyfire.org/>
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
SDName: Urom
SD%Complete: 80
SDComment: Is not working SPELL_ARCANE_SHIELD. SPELL_FROSTBOMB has some issues, the damage aura should not stack.
SDCategory: Instance Script
EndScriptData */

#include "ScriptPCH.h"
#include "oculus.h"

enum Spells
{
    SPELL_ARCANE_SHIELD                           = 53813, //Dummy --> Channeled, shields the caster from damage.
    SPELL_EMPOWERED_ARCANE_EXPLOSION              = 51110,
    SPELL_EMPOWERED_ARCANE_EXPLOSION_2            = 59377,
    SPELL_FROSTBOMB                               = 51103, //Urom throws a bomb, hitting its target with the highest aggro which inflict directly 650 frost damage and drops a frost zone on the ground. This zone deals 650 frost damage per second and reduce the movement speed by 35%. Lasts 1 minute.
    SPELL_SUMMON_MENAGERIE                        = 50476, //Summons an assortment of creatures and teleports the caster to safety.
    SPELL_SUMMON_MENAGERIE_2                      = 50495,
    SPELL_SUMMON_MENAGERIE_3                      = 50496,
    SPELL_TELEPORT                                = 51112, //Teleports to the center of Oculus
    SPELL_TIME_BOMB                               = 51121, //Deals arcane damage to a random player, and after 6 seconds, deals zone damage to nearby equal to the health missing of the target afflicted by the debuff.
    SPELL_TIME_BOMB_2                             = 59376
};

enum Yells
{
    SAY_AGGRO_1                                   = -1578000,
    SAY_AGGRO_2                                   = -1578001,
    SAY_AGGRO_3                                   = -1578002,
    SAY_AGGRO_4                                   = -1578003,
    SAY_TELEPORT                                  = -1578004,
};

enum eCreature
{
    NPC_PHANTASMAL_CLOUDSCRAPER                   = 27645,
    NPC_PHANTASMAL_MAMMOTH                        = 27642,
    NPC_PHANTASMAL_WOLF                           = 27644,

    NPC_PHANTASMAL_AIR                            = 27650,
    NPC_PHANTASMAL_FIRE                           = 27651,
    NPC_PHANTASMAL_WATER                          = 27653,

    NPC_PHANTASMAL_MURLOC                         = 27649,
    NPC_PHANTASMAL_NAGAL                          = 27648,
    NPC_PHANTASMAL_OGRE                           = 27647
};

struct Summons
{
    uint32 uiEntry[4];
};

static Summons Group[]=
{
    { {NPC_PHANTASMAL_CLOUDSCRAPER, NPC_PHANTASMAL_CLOUDSCRAPER, NPC_PHANTASMAL_MAMMOTH, NPC_PHANTASMAL_WOLF} },
    { {NPC_PHANTASMAL_AIR, NPC_PHANTASMAL_AIR, NPC_PHANTASMAL_WATER, NPC_PHANTASMAL_FIRE} },
    { {NPC_PHANTASMAL_OGRE, NPC_PHANTASMAL_OGRE, NPC_PHANTASMAL_NAGAL, NPC_PHANTASMAL_MURLOC} }
};

static uint32 TeleportSpells[]=
{
    SPELL_SUMMON_MENAGERIE, SPELL_SUMMON_MENAGERIE_2, SPELL_SUMMON_MENAGERIE_3
};

static int32 SayAggro[]=
{
    SAY_AGGRO_1, SAY_AGGRO_2, SAY_AGGRO_3, SAY_AGGRO_4
};

class boss_urom : public CreatureScript
{
public:
    boss_urom() : CreatureScript("boss_urom") { }

    CreatureAI* GetAI(Creature* pCreature) const
    {
        return new boss_uromAI (pCreature);
    }

    struct boss_uromAI : public BossAI
    {
        boss_uromAI(Creature* pCreature) : BossAI(pCreature, DATA_UROM_EVENT)
        {
        }

        float x, y;

        bool bCanCast;
        bool bCanGoBack;

        uint8 uiGroup[3];

        uint32 uiTeleportTimer;
        uint32 uiArcaneExplosionTimer;
        uint32 uiCastArcaneExplosionTimer;
        uint32 uiFrostBombTimer;
        uint32 uiTimeBombTimer;

        void Reset()
        {
            if (instance && instance->GetData(DATA_VAROS_EVENT) != DONE)
                DoCast(SPELL_ARCANE_SHIELD);

            if (instance)
                instance->SetData(DATA_UROM_EVENT, NOT_STARTED);

            if (instance && instance->GetData(DATA_UROM_PLATAFORM) == 0)
            {
                uiGroup[0] = 0;
                uiGroup[1] = 0;
                uiGroup[2] = 0;
            }

            x = 0.0f;
            y = 0.0f;
            bCanCast = false;
            bCanGoBack = false;

            me->GetMotionMaster()->MoveIdle();

            uiTeleportTimer = urand(30000, 35000);
            uiArcaneExplosionTimer = 9000;
            uiCastArcaneExplosionTimer = 2000;
            uiFrostBombTimer = urand(5000, 8000);
            uiTimeBombTimer = urand(20000, 25000);
        }

        void EnterCombat(Unit* /*pWho*/)
        {
            if (instance)
                instance->SetData(DATA_UROM_EVENT, IN_PROGRESS);

            SetGroups();
            SummonGroups();
            CastTeleport();

            if (instance && instance->GetData(DATA_UROM_PLATAFORM) != 3)
                instance->SetData(DATA_UROM_PLATAFORM, instance->GetData(DATA_UROM_PLATAFORM)+1);
        }

        void AttackStart(Unit* pWho)
        {
            if (!pWho)
                return;

            if (me->GetPositionZ() > 518.63f)
                DoStartNoMovement(pWho);

            if (me->GetPositionZ() < 518.63f)
            {
                if (me->Attack(pWho, true))
                {
                    DoScriptText(SayAggro[3], me);

                    me->SetInCombatWith(pWho);
                    pWho->SetInCombatWith(me);

                    me->GetMotionMaster()->MoveChase(pWho, 0, 0);
                }
            }
        }

        void SetGroups()
        {
            if (!instance || instance->GetData(DATA_UROM_PLATAFORM) != 0)
                return;

            while (uiGroup[0] == uiGroup[1] || uiGroup[0] == uiGroup[2] || uiGroup[1] == uiGroup[2])
            {
                uiGroup[0] = urand(0, 2);
                uiGroup[1] = urand(0, 2);
                uiGroup[2] = urand(0, 2);
            }
        }

        void SetPosition(uint8 uiI)
        {
            switch(uiI)
            {
                case 0:
                    x = me->GetPositionX() + 4;
                    y = me->GetPositionY() - 4;
                    break;
                case 1:
                    x = me->GetPositionX() + 4;
                    y = me->GetPositionY() + 4;
                    break;
                case 2:
                    x = me->GetPositionX() - 4;
                    y = me->GetPositionY() + 4;
                    break;
                case 3:
                    x = me->GetPositionX() - 4;
                    y = me->GetPositionY() - 4;
                    break;
                default:
                    break;
            }
        }

        void SummonGroups()
        {
            if (!instance || instance->GetData(DATA_UROM_PLATAFORM) > 2)
                return;

            for (uint8 uiI = 0; uiI < 4 ; uiI++)
            {
                SetPosition(uiI);
                me->SummonCreature(Group[uiGroup[instance->GetData(DATA_UROM_PLATAFORM)]].uiEntry[uiI], x, y, me->GetPositionZ(), me->GetOrientation());
            }
        }

        void CastTeleport()
        {
            if (!instance || instance->GetData(DATA_UROM_PLATAFORM) > 2)
                return;

            DoScriptText(SayAggro[instance->GetData(DATA_UROM_PLATAFORM)], me);
            DoCast(TeleportSpells[instance->GetData(DATA_UROM_PLATAFORM)]);
        }

        void UpdateAI(const uint32 uiDiff)
        {
            //Return since we have no target
            if (!UpdateVictim())
                return;

            if (!instance || instance->GetData(DATA_UROM_PLATAFORM) < 2)
                return;

            if (uiTeleportTimer <= uiDiff)
            {
                me->InterruptNonMeleeSpells(false);
                DoScriptText(SAY_TELEPORT, me);
                me->GetMotionMaster()->MoveIdle();
                DoCast(SPELL_TELEPORT);
                uiTeleportTimer = urand(30000, 35000);
            } else uiTeleportTimer -= uiDiff;

            if (bCanCast && !me->FindCurrentSpellBySpellId(SPELL_EMPOWERED_ARCANE_EXPLOSION))
            {
                if (uiCastArcaneExplosionTimer <= uiDiff)
                {
                    bCanCast = false;
                    bCanGoBack = true;
                    DoCastAOE(SPELL_EMPOWERED_ARCANE_EXPLOSION);
                    uiCastArcaneExplosionTimer = 2000;
                }else uiCastArcaneExplosionTimer -= uiDiff;
            }

            if (bCanGoBack)
            {
                if (uiArcaneExplosionTimer <= uiDiff)
                {
                    Position pPos;
                    me->getVictim()->GetPosition(&pPos);

                    me->NearTeleportTo(pPos.GetPositionX(), pPos.GetPositionY(), pPos.GetPositionZ(), pPos.GetOrientation());
                    me->GetMotionMaster()->MoveChase(me->getVictim(), 0, 0);
                    me->SetUnitMovementFlags(MOVEMENTFLAG_WALKING);

                    bCanCast = false;
                    bCanGoBack = false;
                    uiArcaneExplosionTimer = 9000;
                } else uiArcaneExplosionTimer -= uiDiff;
            }

            if (!me->IsNonMeleeSpellCasted(false, true, true))
            {
                if (uiFrostBombTimer <= uiDiff)
                {
                    DoCastVictim(SPELL_FROSTBOMB);
                    uiFrostBombTimer = urand(5000, 8000);
                } else uiFrostBombTimer -= uiDiff;

                if (uiTimeBombTimer <= uiDiff)
                {
                    if (Unit* pUnit = SelectTarget(SELECT_TARGET_RANDOM))
                        DoCast(pUnit, SPELL_TIME_BOMB);

                    uiTimeBombTimer = urand(20000, 25000);
                } else uiTimeBombTimer -= uiDiff;
            }

            DoMeleeAttackIfReady();
        }

        void JustDied(Unit* /*killer*/)
        {
			_JustDied();
            if (instance)
                instance->SetData(DATA_UROM_EVENT, DONE);
        }

        void JustSummoned(Creature* pSummon)
        {
            pSummon->SetInCombatWithZone();
        }

        void LeaveCombat()
        {
            me->RemoveAllAuras();
            me->CombatStop(false);
            me->DeleteThreatList();
        }

        void SpellHit(Unit* /*pCaster*/, const SpellEntry* pSpell)
        {
            switch(pSpell->Id)
            {
                case SPELL_SUMMON_MENAGERIE:
                    me->SetHomePosition(968.66f, 1042.53f, 527.32f, 0.077f);
                    LeaveCombat();
                    break;
                case SPELL_SUMMON_MENAGERIE_2:
                    me->SetHomePosition(1164.02f, 1170.85f, 527.321f, 3.66f);
                    LeaveCombat();
                    break;
                case SPELL_SUMMON_MENAGERIE_3:
                    me->SetHomePosition(1118.31f, 1080.377f, 508.361f, 4.25f);
                    LeaveCombat();
                    break;
                case SPELL_TELEPORT:
                    me->AddUnitMovementFlag(MOVEMENTFLAG_CAN_FLY); // with out it the npc will fall down while is casting
                    bCanCast = true;
                    break;
                default:
                    break;
            }
        }
    };
};

void AddSC_boss_urom()
{
    new boss_urom();
}