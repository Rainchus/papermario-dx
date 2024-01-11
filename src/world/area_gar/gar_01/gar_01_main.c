#include "gar_01.h"

extern EvtScript N(EVS_Main);

extern char wMapHitName[0x18];
extern char wMapShapeName[0x18];
extern char wMapTexName[0x18];
extern char wMapBgName[0x18];

s32 N(map_init)(void) {
    sprintf(wMapHitName, "%s", "gar_01_hit");
    sprintf(wMapShapeName, "%s", "gar_01_shape");
    sprintf(wMapBgName, "%s", "kmr_bg");
    sprintf(wMapTexName, "%s", "gar_tex");
    return FALSE;
}

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_TESTING)
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_SETUP_CAMERA_DEFAULT()
    EVT_RETURN
    EVT_END
};