#ifndef __CACTUSEMU_DRUIDPLAYER_H
#define __CACTUSEMU_DRUIDPLAYER_H

#include "Player.h"

class DruidPlayer: public Player
{
public:
    DruidPlayer(WorldSession * session): Player(session) {}
    virtual uint8 getClass() const { return CLASS_DRUID; }
};

#endif