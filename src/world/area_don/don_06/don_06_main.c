#include "don_06.h"
#include "entity.h"

extern EvtScript N(EVS_Main);

extern char wMapHitName[0x18];
extern char wMapShapeName[0x18];
extern char wMapTexName[0x18];
extern char wMapBgName[0x18];

#define NAME_SUFFIX _Spring
#include "world/common/EnableCameraFollowPlayerY.inc.c"
#define NAME_SUFFIX

EvtScript N(EVS_TetherCamToPlayer) = {
    EVT_LABEL(0)
        EVT_CALL(GetPlayerPos, LVar0, LVar1, LVar2)
        EVT_IF_GE(LVar1, LVar3)
            EVT_SET(LVar1, LVar3)
        EVT_END_IF
        EVT_CALL(SetCamTarget, CAM_DEFAULT, LVar0, LVar1, LVar2)
        EVT_WAIT(1)
        EVT_GOTO(0)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_UseSpring_Exit) = {
    EVT_CALL(DisablePlayerInput, TRUE)
    EVT_CALL(DisablePlayerPhysics, TRUE)
    EVT_CALL(SetPlayerActionState, ACTION_STATE_JUMP)
    EVT_WAIT(1)
    EVT_EXEC_GET_TID(N(EVS_TetherCamToPlayer), LVarA)
    EVT_IF_EQ(AF_OMO_04, FALSE)
        //EVT_CALL(N(EnableCameraFollowPlayerY_Spring))
        EVT_THREAD
            EVT_WAIT(6)
            EVT_CALL(GotoMap, EVT_PTR("abv_01"), ENTRY_abv_01_EntryWest)
            EVT_WAIT(100)
        EVT_END_THREAD
        EVT_CALL(SetPlayerJumpscale, EVT_FLOAT(0.7))
        EVT_CALL(PlayerJump, -245, 270, 250, 20)
    EVT_ELSE
        EVT_CALL(SetPlayerJumpscale, EVT_FLOAT(1.0))
        EVT_CALL(PlayerJump, -95, 0, 250, 25)
        EVT_SET(AF_OMO_04, FALSE)
    EVT_END_IF
    EVT_KILL_THREAD(LVarA)
    EVT_CALL(DisablePlayerPhysics, FALSE)
    EVT_CALL(DisablePlayerInput, FALSE)
    EVT_CALL(SetPlayerActionState, ACTION_STATE_IDLE)
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_MakeEntities) = {
    //update to use header defines and not hardcoded values
    EVT_CALL(MakeEntity, EVT_PTR(Entity_ScriptSpring), 2010, 230, -50, 0, MAKE_ENTITY_END)
    EVT_CALL(AssignScript, EVT_PTR(N(EVS_UseSpring_Exit)))
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_ExitWalk_West_don_05) = EVT_EXIT_WALK(60, ENTRY_don_06_EntryWest, "don_05", ENTRY_don_05_EntryEast);
//EvtScript N(EVS_ExitWalk_East_don_05) = EVT_EXIT_WALK(60, ENTRY_don_06_EntryNorth, "abv_01", ENTRY_abv_01_EntryWest);

EvtScript N(EVS_BindExitTriggers) = {
    EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_West_don_05)), TRIGGER_FLOOR_ABOVE, COLLIDER_don_05_LZWest, 1, 0)
    //EVT_BIND_TRIGGER(EVT_PTR(N(EVS_ExitWalk_East_don_05)), TRIGGER_FLOOR_ABOVE, COLLIDER_don_05_LZEast, 1, 0)
    EVT_RETURN
    EVT_END
};

s32 N(map_init)(void) {
    sprintf(wMapHitName, "%s", "don_06_hit");
    sprintf(wMapShapeName, "%s", "don_06_shape");
    sprintf(wMapBgName, "%s", "iwa_bg");
    sprintf(wMapTexName, "%s", "don_tex");
    return FALSE;
}

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_TESTING)
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_EXEC(N(EVS_MakeEntities))
    EVT_SETUP_CAMERA_DEFAULT()
    EVT_SET(LVar0, EVT_PTR(N(EVS_BindExitTriggers)))
    EVT_EXEC(EnterWalk)
    EVT_WAIT(1)
    EVT_RETURN
    EVT_END
};
