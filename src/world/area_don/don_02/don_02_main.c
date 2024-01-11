#include "don_02.h"

extern EvtScript N(EVS_Main);

extern char wMapHitName[0x18];
extern char wMapShapeName[0x18];
extern char wMapTexName[0x18];
extern char wMapBgName[0x18];

EvtScript N(EVS_ExitWalk_West_don_02) = EVT_EXIT_WALK(60, ENTRY_don_02_EntryWest, "ash_01", ENTRY_ash_01_EntryEast);
EvtScript N(EVS_ExitWalk_East_don_02) = EVT_EXIT_WALK(60, ENTRY_don_02_EntryEast, "don_01", ENTRY_don_01_EntryWest);

EvtScript N(EVS_BindExitTriggers) = {
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_West_don_02)), TRIGGER_FLOOR_ABOVE, COLLIDER_don_02_LZWest, 1, 0)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_East_don_02)), TRIGGER_FLOOR_ABOVE, COLLIDER_don_02_LZEast, 1, 0)
    EVT_RETURN
    EVT_END
};

s32 N(map_init)(void) {
    sprintf(wMapHitName, "%s", "don_02_hit");
    sprintf(wMapShapeName, "%s", "don_02_shape");
    sprintf(wMapBgName, "%s", "nok_bg");
    sprintf(wMapTexName, "%s", "don_tex");
    return FALSE;
}

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_TESTING)
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_SETUP_CAMERA_DEFAULT()
    EVT_SET(LVar0, EVT_PTR(N(EVS_BindExitTriggers)))
    EVT_EXEC(EnterWalk)
    EVT_WAIT(1)
    EVT_RETURN
    EVT_END
};
