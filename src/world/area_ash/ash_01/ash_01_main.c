#include "ash_01.h"

extern EvtScript N(EVS_Main);

extern char wMapHitName[0x18];
extern char wMapShapeName[0x18];
extern char wMapTexName[0x18];
extern char wMapBgName[0x18];

// EvtScript N(EVS_ExitWalk_East_ash_01) = EVT_EXIT_WALK(60, ENTRY_ash_01_EntryEast, "ash_02", ENTRY_ash_02_EntryWest);
EvtScript N(EVS_ExitWalk_East_ash_01) = EVT_EXIT_WALK(60, ENTRY_ash_01_EntryEast, "don_02", ENTRY_don_02_EntryWest);

EvtScript N(EVS_BindExitTriggers) = {
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_East_ash_01)), TRIGGER_FLOOR_ABOVE, COLLIDER_ash_01_LZEast, 1, 0)
    EVT_RETURN
    EVT_END
};

s32 N(map_init)(void) {
    sprintf(wMapHitName, "%s", "ash_01_hit");
    sprintf(wMapShapeName, "%s", "ash_01_shape");
    sprintf(wMapBgName, "%s", "arn_bg");
    sprintf(wMapTexName, "%s", "ash_tex");
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
