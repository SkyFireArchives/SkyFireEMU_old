/*
 * Copyright (C) 2010-2012 Project SkyFire <http://www.projectskyfire.org/>
 * Copyright (C) 2005-2012 MaNGOS <http://www.getmangos.com/>
 * Copyright (C) 2008-2012 Trinity <http://www.trinitycore.org/>
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

#include "gamePCH.h"
#include "MagePlayer.h"
#include "ScriptPCH.h"

class player_mage_scripts : public PlayerScript
{
public:
    player_mage_scripts() : PlayerScript("player_mage_scripts") {}

    void OnSpellCastWithProto(Player* player, SpellEntry const *spellProto)
    {
        if (player->getClass() == CLASS_MAGE && spellProto->Id != 7268 && spellProto->Id != 5143 && !player->HasAura(79683))
        {
            if (SpellEffectEntry const* spellEffect = spellProto->GetSpellEffect(EFFECT_0))
            {
                if (spellEffect->Effect == SPELL_EFFECT_SCHOOL_DAMAGE)
                {
                    uint32 Chance = urand(1, 5); // Every number has %20 chance
                    if (player->HasSpell(5143) && (Chance == 1 || Chance == 2)) // 40% Chance
                        player->CastSpell(player, 79683, true);
                }
            }
        }
    }
    void OnAura(Player* player, SpellEntry const *spellProto)
    {
    }
};

void AddSC_player_mage_scripts()
{
    new player_mage_scripts;
}