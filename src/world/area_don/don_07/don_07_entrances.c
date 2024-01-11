#include "don_07.h"

extern EvtScript N(EVS_Main);

EntryList N(Entrances) = {
    [ENTRY_don_07_EntrySouth]    { -50,230,0, 0.000000 },
    [ENTRY_don_07_EntryNorth]    { 35,310,-550, -180.000000 },
};

MapSettings N(settings) = {
    .main = &N(EVS_Main),
    .entryList = &N(Entrances),
    .entryCount = ENTRY_COUNT(N(Entrances)),
    .background = &gBackgroundImage,
    .tattle = { MSG_NONE },
};