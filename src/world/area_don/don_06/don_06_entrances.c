#include "don_06.h"

extern EvtScript N(EVS_Main);

EntryList N(Entrances) = {
    [ENTRY_don_06_EntryNorth]    { 925,50,-110, 0.000000 },
    [ENTRY_don_06_EntryWest]    { -600,20,-50, 90.000000 },
    [ENTRY_don_06_EntryEast]    { 1900,230,-50, 0.000000 },
};

MapSettings N(settings) = {
    .main = &N(EVS_Main),
    .entryList = &N(Entrances),
    .entryCount = ENTRY_COUNT(N(Entrances)),
    .background = &gBackgroundImage,
    .tattle = { MSG_NONE },
};