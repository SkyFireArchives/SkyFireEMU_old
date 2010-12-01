#ifndef __CACTUSEMU_WARLOCKPLAYER_H
#define __CACTUSEMU_WARLOCKPLAYER_H

#include "Player.h"

class WarlockPlayer: public Player
{
public:
	WarlockPlayer(WorldSession * session): Player(session) {}
	virtual uint8 getClass() const { return CLASS_WARLOCK; }
};

#endif