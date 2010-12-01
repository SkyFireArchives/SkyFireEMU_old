#ifndef __CACTUSEMU_DKPLAYER_H
#define __CACTUSEMU_DKPLAYER_H

#include "Player.h"

class DKPlayer: public Player
{
public:
	DKPlayer(WorldSession * session): Player(session) {}
	virtual uint8 getClass() const { return CLASS_DEATH_KNIGHT; }
};

#endif