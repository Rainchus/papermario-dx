#include "don_01.h"

extern EvtScript N(EVS_Main);

extern char wMapHitName[0x18];
extern char wMapShapeName[0x18];
extern char wMapTexName[0x18];
extern char wMapBgName[0x18];

extern EvtScript N(EVS_StartTexPanners);

EvtScript N(EVS_ExitWalk_West_don_01) = EVT_EXIT_WALK(60, ENTRY_don_01_EntryWest, "don_02", ENTRY_don_02_EntryEast);
EvtScript N(EVS_ExitWalk_North_don_01) = EVT_EXIT_WALK(60, ENTRY_don_01_EntryNorth, "don_03", ENTRY_don_03_EntryWest);
EvtScript N(EVS_ExitWalk_East_don_01) = EVT_EXIT_WALK(60, ENTRY_don_01_EntryEast, "gar_01", ENTRY_don_01_EntryWest);

EvtScript N(EVS_BindExitTriggers) = {
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_West_don_01)), TRIGGER_FLOOR_ABOVE, COLLIDER_don_01_LZWest, 1, 0)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_North_don_01)), TRIGGER_FLOOR_ABOVE, COLLIDER_don_01_LZNorth, 1, 0)
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_East_don_01)), TRIGGER_FLOOR_ABOVE, COLLIDER_don_01_LZEast, 1, 0)
    EVT_RETURN
    EVT_END
};

s32 N(map_init)(void) {
    sprintf(wMapHitName, "%s", "don_01_hit");
    sprintf(wMapShapeName, "%s", "don_01_shape");
    sprintf(wMapBgName, "%s", "nok_bg");
    sprintf(wMapTexName, "%s", "don_tex");
    return FALSE;
}

EvtScript N(EVS_MakeEntities) = {
    EVT_CALL(MakeItemEntity, ITEM_HP_PLUS_A, 0, 0, 0, ITEM_SPAWN_MODE_FALL_NEVER_VANISH, GF_FLO09_Item_HappyFlowerB)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_TESTING)
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_SETUP_CAMERA_DEFAULT()
    EVT_EXEC(N(EVS_StartTexPanners))
    EVT_EXEC_WAIT(N(EVS_MakeEntities))
    EVT_SET(GB_StoryProgress, 0xA0)
    EVT_SET(LVar0, EVT_PTR(N(EVS_BindExitTriggers)))
    EVT_EXEC(EnterWalk)
    EVT_WAIT(1)
    EVT_RETURN
    EVT_END
};
//8009F8E5
