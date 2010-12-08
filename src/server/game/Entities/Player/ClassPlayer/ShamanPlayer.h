#ifndef __CACTUSEMU_SHAMANPLAYER_H
#define __CACTUSEMU_SHAMANPLAYER_H

#include "Player.h"

class ShamanPlayer: public Player
{
public:
    ShamanPlayer(WorldSession * session): Player(session) {}
    virtual uint8 getClass() const { return CLASS_SHAMAN; }
};

#endif