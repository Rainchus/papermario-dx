#include "abv_01.h"

extern EvtScript N(EVS_Main);

EntryList N(Entrances) = {
    [ENTRY_abv_01_EntryWest]    { 700,0,-20, 270.000000 },
    [ENTRY_abv_01_EntryEast]    { 820,-5,-20, 270.000000 },
};

MapSettings N(settings) = {
    .main = &N(EVS_Main),
    .entryList = &N(Entrances),
    .entryCount = ENTRY_COUNT(N(Entrances)),
    .background = &gBackgroundImage,
    .tattle = { MSG_NONE },
};