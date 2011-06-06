#ifndef DEF_BASTION_OF_TWILIGHT_H
#define DEF_BASTION_OF_TWILIGHT_H

enum SharedSpells
{
    SPELL_BERSERK = 26662,
};

enum Data
{
    DATA_HALFUS_WYRMBREAKER_EVENT,
    DATA_ASCENDANT_COUNCIL_EVENT,
};

enum Data64
{
    DATA_HALFUS_WYRMBREAKER             = 0,
    DATA_STORM_RIDER                    = 1,
    DATA_TIME_WARDEN                    = 2,
    DATA_SLATE_DRAGON                   = 3,
    DATA_NETHER_SCION                   = 4,
    DATA_EMERALD_WHELP                  = 5,
    DATA_PROTO_BEHEMOTH                 = 6,
    DATA_FELDIUS                        = 7,
    DATA_IGNACOIOUS                     = 8,
    DATA_ARION                          = 9,
    DATA_TERRASTRA                      = 10,
    DATA_ELEMENTIUM_MONSTROSITY         = 11,
    DATA_ASCENDANT_COUNCIL_CONTROLLER   = 12
};

#define MAX_ENCOUNTER 5

enum Creatures
{
    // Halfus Wyrmbreaker Encounter
    NPC_HALFUS_WYRMBREAKER      = 44600,
    NPC_PROTO_BEHEMOTH          = 44687,
    NPC_STORM_RIDER             = 44650,
    NPC_TIME_WARDEN             = 44797,
    NPC_SLATE_DRAGON            = 44652,
    NPC_NETHER_SCION            = 44645,
    NPC_EMERALD_WHELP           = 44641,

    // Ascendant Council Encounter
    NPC_FELDIUS                 = 43687,
    NPC_IGNACOIOUS              = 43686,
    NPC_ARION                   = 43688,
    NPC_TERRASTRA               = 43689,
    NPC_ELEMENTIUM_MONSTROSITY  = 43735,
    NPC_ASCENDANT_COUNCIL_CONTROLLER = 43691,
};

#endif