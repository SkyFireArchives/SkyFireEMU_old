#ifndef __CACTUSEMU_HUNTERPLAYER_H
#define __CACTUSEMU_HUNTERPLAYER_H

#include "Player.h"

class HunterPlayer: public Player
{
public:
	HunterPlayer(WorldSession * session): Player(session) {}
	virtual uint8 getClass() const { return CLASS_HUNTER; }
};

#endif