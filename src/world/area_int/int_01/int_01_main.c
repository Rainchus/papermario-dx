#include "int_01.h"

extern EvtScript N(EVS_Main);

extern char wMapHitName[0x18];
extern char wMapShapeName[0x18];
extern char wMapTexName[0x18];
extern char wMapBgName[0x18];

s32 N(map_init)(void) {
    sprintf(wMapHitName, "%s", "int_01_hit");
    sprintf(wMapShapeName, "%s", "int_01_shape");
    sprintf(wMapBgName, "%s", "kmr_bg");
    sprintf(wMapTexName, "%s", "int_tex");
    return FALSE;
}

enum {
    NPC_Goompa = 5,
    NPC_Luigi = 4,
    NPC_Master = 3,
    NPC_Bootler = 2,
    NPC_Koot = 1,
    NPC_Donlon = 0,
};

EvtScript N(EVS_NpcInit_Goompa) = {
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_NpcInit_Luigi) = {
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_NpcInit_Master) = {
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_NpcInit_Bootler) = {
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_NpcInit_Koot) = {
    EVT_RETURN
    EVT_END
};

EvtScript N(EVS_NpcInit_Donlon) = {
    EVT_RETURN
    EVT_END
};


#define Goompa_ANIMS \
{ \
    .idle   = 0x009D0001, \
    .walk   = 0x009D0002, \
    .run    = 0x009D0000, \
    .chase  = 0x009D0000, \
    .anim_4 = 0x009D0000, \
    .anim_5 = 0x009D0000, \
    .death  = 0x009D0000, \
    .hit    = 0x009D0000, \
    .anim_8 = 0x009D0000, \
    .anim_9 = 0x009D0000, \
    .anim_A = 0x009D0000, \
    .anim_B = 0x009D0000, \
    .anim_C = 0x009D0000, \
    .anim_D = 0x009D0000, \
    .anim_E = 0x009D0000, \
    .anim_F = 0x009D0000, \
}

#define Luigi_ANIMS \
{ \
    .idle   = 0x00820004, \
    .walk   = 0x00820000, \
    .run    = 0x00820000, \
    .chase  = 0x00820000, \
    .anim_4 = 0x00820000, \
    .anim_5 = 0x00820000, \
    .death  = 0x0082001B, \
    .hit    = 0x00820000, \
    .anim_8 = 0x00820000, \
    .anim_9 = 0x00820000, \
    .anim_A = 0x00820000, \
    .anim_B = 0x00820000, \
    .anim_C = 0x00820000, \
    .anim_D = 0x00820000, \
    .anim_E = 0x00820000, \
    .anim_F = 0x00820000, \
}

#define Master_ANIMS \
{ \
    .idle   = 0x00A20003, \
    .walk   = 0x00A20000, \
    .run    = 0x00A20000, \
    .chase  = 0x00A20000, \
    .anim_4 = 0x00A20000, \
    .anim_5 = 0x00A20000, \
    .death  = 0x00A20000, \
    .hit    = 0x00A20000, \
    .anim_8 = 0x00A20000, \
    .anim_9 = 0x00A20000, \
    .anim_A = 0x00A20000, \
    .anim_B = 0x00A20000, \
    .anim_C = 0x00A20000, \
    .anim_D = 0x00A20000, \
    .anim_E = 0x00A20000, \
    .anim_F = 0x00A20000, \
}

#define Bootler_ANIMS \
{ \
    .idle   = 0x00BF0001, \
    .walk   = 0x00BF0000, \
    .run    = 0x00BF0002, \
    .chase  = 0x00BF0003, \
    .anim_4 = 0x00BF0004, \
    .anim_5 = 0x00BF0005, \
    .death  = 0x00BF0006, \
    .hit    = 0x00BF0007, \
    .anim_8 = 0x00BF0008, \
    .anim_9 = 0x00BF0009, \
    .anim_A = 0x00BF000A, \
    .anim_B = 0x00BF000B, \
    .anim_C = 0x00BF000C, \
    .anim_D = 0x00BF0000, \
    .anim_E = 0x00BF0000, \
    .anim_F = 0x00BF0000, \
}

#define Koot_ANIMS \
{ \
    .idle   = 0x00B50001, \
    .walk   = 0x00B50000, \
    .run    = 0x00B50000, \
    .chase  = 0x00B50000, \
    .anim_4 = 0x00B50004, \
    .anim_5 = 0x00B50000, \
    .death  = 0x00B50000, \
    .hit    = 0x00B50000, \
    .anim_8 = 0x00B50000, \
    .anim_9 = 0x00B50000, \
    .anim_A = 0x00B50000, \
    .anim_B = 0x00B50000, \
    .anim_C = 0x00B50000, \
    .anim_D = 0x00B50000, \
    .anim_E = 0x00B50000, \
    .anim_F = 0x00B50000, \
}

#define Donlon_ANIMS \
{ \
    .idle   = 0x00A50001, \
    .walk   = 0x00A50002, \
    .run    = 0x00A50003, \
    .chase  = 0x00A50000, \
    .anim_4 = 0x00A50004, \
    .anim_5 = 0x00A50005, \
    .death  = 0x00A50006, \
    .hit    = 0x00A50007, \
    .anim_8 = 0x00A50008, \
    .anim_9 = 0x00A50009, \
    .anim_A = 0x00A5000A, \
    .anim_B = 0x00A5000B, \
    .anim_C = 0x00A50000, \
    .anim_D = 0x00A50000, \
    .anim_E = 0x00A50000, \
    .anim_F = 0x00A50000, \
}

#define NPC_Goompa_Pos -70, 26, -189
#define NPC_Goompa_Pos_X -70
#define NPC_Goompa_Pos_Y 26
#define NPC_Goompa_Pos_Z -189
#define NPC_Goompa_Yaw 0.000000

NpcData N(NpcData_Goompa) = {
    .id = NPC_Goompa,
    .pos = {NPC_Goompa_Pos},
    .yaw = NPC_Goompa_Yaw,
    .init = &N(EVS_NpcInit_Goompa),
    .settings = &NpcSettings_Default,
    .flags = (ENEMY_FLAG_PASSIVE | ENEMY_FLAG_IGNORE_WORLD_COLLISION | ENEMY_FLAG_IGNORE_PLAYER_COLLISION | ENEMY_FLAG_FLYING),
    .drops = NO_DROPS,
    .animations = Goompa_ANIMS,
    .extraAnimations =  0,
    .tattle = 0,
};

#define NPC_Luigi_Pos -190, 0, -90
#define NPC_Luigi_Pos_X -190
#define NPC_Luigi_Pos_Y 0
#define NPC_Luigi_Pos_Z -90
#define NPC_Luigi_Yaw 0.000000

NpcData N(NpcData_Luigi) = {
    .id = NPC_Luigi,
    .pos = {NPC_Luigi_Pos},
    .yaw = NPC_Luigi_Yaw,
    .init = &N(EVS_NpcInit_Luigi),
    .settings = &NpcSettings_Default,
    .flags = (ENEMY_FLAG_PASSIVE | ENEMY_FLAG_IGNORE_WORLD_COLLISION | ENEMY_FLAG_IGNORE_PLAYER_COLLISION | ENEMY_FLAG_FLYING),
    .drops = NO_DROPS,
    .animations = Luigi_ANIMS,
    .extraAnimations =  0,
    .tattle = 0,
};

#define NPC_Master_Pos 80, 0, -110
#define NPC_Master_Pos_X 80
#define NPC_Master_Pos_Y 0
#define NPC_Master_Pos_Z -110
#define NPC_Master_Yaw 0.000000

NpcData N(NpcData_Master) = {
    .id = NPC_Master,
    .pos = {NPC_Master_Pos},
    .yaw = NPC_Master_Yaw,
    .init = &N(EVS_NpcInit_Master),
    .settings = &NpcSettings_Default,
    .flags = (ENEMY_FLAG_PASSIVE | ENEMY_FLAG_IGNORE_WORLD_COLLISION | ENEMY_FLAG_IGNORE_PLAYER_COLLISION | ENEMY_FLAG_FLYING),
    .drops = NO_DROPS,
    .animations = Master_ANIMS,
    .extraAnimations =  0,
    .tattle = 0,
};

#define NPC_Bootler_Pos 130, 20, -70
#define NPC_Bootler_Pos_X 130
#define NPC_Bootler_Pos_Y 20
#define NPC_Bootler_Pos_Z -70
#define NPC_Bootler_Yaw 0.000000

NpcData N(NpcData_Bootler) = {
    .id = NPC_Bootler,
    .pos = {NPC_Bootler_Pos},
    .yaw = NPC_Bootler_Yaw,
    .init = &N(EVS_NpcInit_Bootler),
    .settings = &NpcSettings_Default,
    .flags = (ENEMY_FLAG_PASSIVE | ENEMY_FLAG_IGNORE_WORLD_COLLISION | ENEMY_FLAG_IGNORE_PLAYER_COLLISION | ENEMY_FLAG_FLYING),
    .drops = NO_DROPS,
    .animations = Bootler_ANIMS,
    .extraAnimations =  0,
    .tattle = 0,
};

#define NPC_Koot_Pos -120, 0, -70
#define NPC_Koot_Pos_X -120
#define NPC_Koot_Pos_Y 0
#define NPC_Koot_Pos_Z -70
#define NPC_Koot_Yaw 0.000000

NpcData N(NpcData_Koot) = {
    .id = NPC_Koot,
    .pos = {NPC_Koot_Pos},
    .yaw = NPC_Koot_Yaw,
    .init = &N(EVS_NpcInit_Koot),
    .settings = &NpcSettings_Default,
    .flags = (ENEMY_FLAG_PASSIVE | ENEMY_FLAG_IGNORE_WORLD_COLLISION | ENEMY_FLAG_IGNORE_PLAYER_COLLISION | ENEMY_FLAG_FLYING),
    .drops = NO_DROPS,
    .animations = Koot_ANIMS,
    .extraAnimations =  0,
    .tattle = 0,
};

#define NPC_Donlon_Pos -60, 0, -130
#define NPC_Donlon_Pos_X -60
#define NPC_Donlon_Pos_Y 0
#define NPC_Donlon_Pos_Z -130
#define NPC_Donlon_Yaw 0.000000

NpcData N(NpcData_Donlon) = {
    .id = NPC_Donlon,
    .pos = {NPC_Donlon_Pos},
    .yaw = NPC_Donlon_Yaw,
    .init = &N(EVS_NpcInit_Donlon),
    .settings = &NpcSettings_Default,
    .flags = (ENEMY_FLAG_PASSIVE | ENEMY_FLAG_IGNORE_WORLD_COLLISION | ENEMY_FLAG_IGNORE_PLAYER_COLLISION | ENEMY_FLAG_FLYING),
    .drops = NO_DROPS,
    .animations = Donlon_ANIMS,
    .extraAnimations =  0,
    .tattle = 0,
};

NpcGroupList N(DefaultNPCs) = {
    NPC_GROUP(N(NpcData_Goompa)),
    NPC_GROUP(N(NpcData_Luigi)),
    NPC_GROUP(N(NpcData_Master)),
    NPC_GROUP(N(NpcData_Bootler)),
    NPC_GROUP(N(NpcData_Koot)),
    NPC_GROUP(N(NpcData_Donlon)),
    {}
};

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_TESTING)
    EVT_CALL(SetSpriteShading, SHADING_NONE)
    EVT_SETUP_CAMERA_NO_LEAD()
    EVT_CALL(SetMusicTrack, 0, SONG_PENGUIN_MYSTERY, 0, 8)
    // EVT_SET(LVar0, EVT_PTR(N(EVS_BindExitTriggers)))
    // EVT_EXEC(EnterWalk)
    EVT_CALL(MakeNpcs, FALSE, EVT_PTR(N(DefaultNPCs)))
    // EVT_CALL(PlaySoundAtNpc, 1, SOUND_HEAVY_NPC_STEP_C, SOUND_SPACE_DEFAULT)
    EVT_RETURN
    EVT_END
};
