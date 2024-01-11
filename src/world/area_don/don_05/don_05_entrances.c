#include "don_05.h"

extern EvtScript N(EVS_Main);

EntryList N(Entrances) = {
    [ENTRY_don_05_EntryNorth]    { 1300,230,-600, -180.000000 },
    [ENTRY_don_05_EntryEast]    { 1940,99,-100, -90.000000 },
    [ENTRY_don_05_EntryWest]    { -600,20,-50, 90.000000 },
};

MapSettings N(settings) = {
    .main = &N(EVS_Main),
    .entryList = &N(Entrances),
    .entryCount = ENTRY_COUNT(N(Entrances)),
    .background = &gBackgroundImage,
    .tattle = { MSG_NONE },
};