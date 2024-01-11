#include "gar_01.h"

extern EvtScript N(EVS_Main);

EntryList N(Entrances) = {
    [ENTRY_gar_01_EntryEast]    { 640,0,-50, -90.000000 },
    [ENTRY_gar_01_EntryWest]    { -490,0,-50, -270.000000 },
};

MapSettings N(settings) = {
    .main = &N(EVS_Main),
    .entryList = &N(Entrances),
    .entryCount = ENTRY_COUNT(N(Entrances)),
    .background = &gBackgroundImage,
    .tattle = { MSG_NONE },
};