#ifndef __CACTUSEMU_WARRIORPLAYER_H
#define __CACTUSEMU_WARRIORPLAYER_H

#include "Player.h"

class WarriorPlayer: public Player
{
public:
	WarriorPlayer(WorldSession * session): Player(session) {}
	virtual uint8 getClass() const { return CLASS_WARRIOR; }
};

#endif