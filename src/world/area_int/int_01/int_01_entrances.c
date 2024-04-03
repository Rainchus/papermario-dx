#include "int_01.h"

extern EvtScript N(EVS_Main);

EntryList N(Entrances) = {
    [ENTRY_int_01_Entry0]    { 0,-70,-130, 0.000000 },
};

MapSettings N(settings) = {
    .main = &N(EVS_Main),
    .entryList = &N(Entrances),
    .entryCount = ENTRY_COUNT(N(Entrances)),
    .background = &gBackgroundImage,
    .tattle = { MSG_NONE },
};