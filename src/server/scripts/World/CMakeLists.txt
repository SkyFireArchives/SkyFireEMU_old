# Copyright (C) 2010-2012 Project SkyFire <http://www.projectskyfire.org/>
# Copyright (C) 2005-2012 MaNGOS <http://www.getmangos.com/>
# Copyright (C) 2008-2012 Trinity <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  World/achievement_scripts.cpp
  World/areatrigger_scripts.cpp
  World/boss_emeriss.cpp
  World/boss_lethon.cpp
  World/boss_taerar.cpp
  World/boss_ysondre.cpp
  World/chat_log.cpp
  World/go_scripts.cpp
  World/guards.cpp
  World/item_scripts.cpp
  World/mob_generic_creature.cpp
  World/npc_innkeeper.cpp
  World/npc_professions.cpp
  World/npc_taxi.cpp
  World/npcs_special.cpp
  World/npc_spell_click_spells.cpp
)

message("  -> Prepared: World")
