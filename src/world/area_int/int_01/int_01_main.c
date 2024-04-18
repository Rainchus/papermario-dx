#include "int_01.h"
#include "effects.h"

#define INF_LOOP 0

#define MSG_KootFirstSpeak1 MESSAGE_ID(0x002F, 0x0000)
#define MSG_KootFirstSpeak2 MESSAGE_ID(0x002F, 0x0001)
#define MSG_KootFirstSpeak3 MESSAGE_ID(0x002F, 0x0002)

#define MSG_DonlonCorrect MESSAGE_ID(0x002F, 0x0003)
#define MSG_DonlonExplain MESSAGE_ID(0x002F, 0x0004)
#define MSG_BootlerQuestion MESSAGE_ID(0x002F, 0x0005)
#define MSG_DonlonAnswer MESSAGE_ID(0x002F, 0x0006)

#define MSG_DonlonContinue MESSAGE_ID(0x002F, 0x0007)
#define MSG_LuigiQuestion MESSAGE_ID(0x002F, 0x0008)
#define MSG_DonlonAnswer2 MESSAGE_ID(0x002F, 0x0009)
#define MSG_KootComplain MESSAGE_ID(0x002F, 0x000A)
#define MSG_DonlonDismiss MESSAGE_ID(0x002F, 0x000B)

#define MSG_GoompaWait MESSAGE_ID(0x002F, 0x000C)
#define MSG_DonlonBye MESSAGE_ID(0x002F, 0x000D)

//GB_Unused_EVT_02 SewerTalk
//GB_Unused_EVT_03 IntroBattleBeaten

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

typedef struct NpcAnimationsCustom {
    int idle;
    int walk;
    int run;
    int chase;
    int anim_4;
    int anim_5;
    int death;
    int hit;
    int anim_8;
    int anim_9;
    int anim_A;
    int anim_B;
    int anim_C;
    int anim_D;
    int anim_E;
    int anim_F;
} NpcAnimationsCustom;


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

NpcAnimationsCustom N(Goompa_Anims) = {
    .idle   = 0x009D0001,
    .walk   = 0x009D0002,
    .run    = 0x009D0000,
    .chase  = 0x009D0000,
    .anim_4 = 0x009D0000,
    .anim_5 = 0x009D0000,
    .death  = 0x009D0000,
    .hit    = 0x009D0000,
    .anim_8 = 0x009D0000,
    .anim_9 = 0x009D0000,
    .anim_A = 0x009D0000,
    .anim_B = 0x009D0000,
    .anim_C = 0x009D0000,
    .anim_D = 0x009D0000,
    .anim_E = 0x009D0000,
    .anim_F = 0x009D0000
};

s32 testFunc(void) {
    return N(Goompa_Anims).anim_F;
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
#define NPC_Master_Yaw 180.000000

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
#define NPC_Bootler_Yaw 180.000000

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
#define NPC_Donlon_Yaw 180.000000

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

EvtScript N(PrepScript) = {
    // this shouldn't be needed
    // EVT_CALL(NpcFacePlayer, NPC_Donlon, 0)
    // EVT_CALL(NpcFacePlayer, NPC_Koot, 0)
    // EVT_CALL(NpcFacePlayer, NPC_Bootler, 0)
    // EVT_CALL(NpcFacePlayer, NPC_Master, 0)
    // EVT_CALL(NpcFacePlayer, NPC_Luigi, 0)
    // EVT_CALL(NpcFacePlayer, NPC_Goompa, 0)
    // EVT_CALL(SetPlayerPos, -120, -70, -130)
    // EVT_CALL(NpcFacePlayer, NPC_Goompa, 0)
    // EVT_CALL(SetPlayerPos, -120, -70, -130) //?
    EVT_RETURN
    EVT_END
};

#define THREAD(code) \
    EVT_THREAD \
    code \
    EVT_END_THREAD

#define LOOP(amount, code) \
    EVT_LOOP(amount) \
    code \
    EVT_END_LOOP

#define IF_EQ(var, val, code) \
    EVT_IF_EQ(var, val) \
    code \
    EVT_END_IF

#define IF_LT(var, val, code) \
    EVT_IF_LT(var, val) \
    code \
    EVT_END_IF

#define ELSE(code) \
    EVT_ELSE \
    code

EvtScript N(BootlerExclaimShocked) = {
    EVT_CALL(SetNpcAnimation, NPC_Bootler, 0x00BF0006)
    EVT_WAIT(30)
    EVT_CALL(SetNpcAnimation, NPC_Bootler, 0x00BF000C)
    EVT_WAIT(15)
    EVT_RETURN
    EVT_END
};

EvtScript N(DisplayKootAndDonlonRandomStartString) = {
    #define Var_Rand_Int LVar0
    EVT_CALL(RandInt, 49, Var_Rand_Int)
    //2% chance of speak1 and 2% chance of speak2. 96% chance of speak3
    EVT_SWITCH(Var_Rand_Int)
        EVT_CASE_EQ(0)
            EVT_CALL(SpeakToPlayer, NPC_Koot, 0x00B50004, 0x00B50001, 0, MSG_KootFirstSpeak1)
        EVT_CASE_EQ(1)
            EVT_CALL(SpeakToPlayer, NPC_Koot, 0x00B50004, 0x00B50001, 0, MSG_KootFirstSpeak2)
        EVT_CASE_DEFAULT
            EVT_CALL(SpeakToPlayer, NPC_Koot, 0x00B50004, 0x00B50001, 0, MSG_KootFirstSpeak3)
    EVT_END_SWITCH

    EVT_WAIT(20)

    IF_LT(Var_Rand_Int, 2,
        EVT_CALL(SpeakToPlayer, NPC_Donlon, 0x00A50004, 0x00A50001, 0, MSG_DonlonCorrect)
        EVT_WAIT(5)    
    )
    
    EVT_CALL(SpeakToPlayer, NPC_Donlon, 0x00A50004, 0x00A50001, 0, MSG_DonlonExplain)
    EVT_RETURN
    EVT_END
    #undef Var_Rand_Int LVar0
};

EvtScript N(BootlerAskQuestions) = {
    EVT_CALL(SpeakToPlayer, NPC_Bootler, 0x00BF0004, 0x00BF0001, 0, MSG_BootlerQuestion)
    EVT_CALL(SetNpcAnimation, NPC_Bootler, 0x00BF0001)
    EVT_WAIT(10)
    EVT_CALL(SpeakToPlayer, NPC_Donlon, 0x00A50004, 0x00A50001, 0, MSG_DonlonAnswer)
    EVT_RETURN
    EVT_END
};

EvtScript N(AnimateSadDonlonAndTalk) = {
    EVT_CALL(SetNpcAnimation, NPC_Donlon, 0x00A50006)
    EVT_WAIT(40)
    EVT_CALL(SetNpcAnimation, NPC_Donlon, 0x00A50001)

	EVT_CALL(SpeakToPlayer, NPC_Donlon, 0x00A50004, 0x00A50001, 0, MSG_DonlonContinue)
	EVT_WAIT(10)
	EVT_CALL(SpeakToPlayer, NPC_Luigi, 0x00A20014, 0x00A20004, 0, MSG_LuigiQuestion)
	EVT_CALL (SetNpcAnimation, NPC_Luigi, 0x00A2000C)
	EVT_WAIT(10)
	EVT_CALL(SpeakToPlayer, NPC_Donlon, 0x00A50004, 0x00A50001, 0, MSG_DonlonAnswer2)
	EVT_CALL(SetNpcAnimation, NPC_Luigi, 0x00A20004 )
	EVT_WAIT(10)
	EVT_CALL(SpeakToPlayer, NPC_Koot, 0x00B50004, 0x00B50001, 0, MSG_KootComplain)
	EVT_WAIT(10)
	EVT_CALL(SpeakToPlayer, NPC_Donlon, 0x00A50004, 0x00A50001, 0, MSG_DonlonDismiss) 

    EVT_RETURN
    EVT_END    
};

EvtScript N(SendEmAway) = {
    EVT_CALL(SetNpcAnimation, NPC_Donlon, 0x00A5000A)

    //send bootler away
    THREAD(
        EVT_WAIT(5)
        EVT_CALL(SetNpcDecoration, NPC_Bootler, 0, NPC_DECORATION_WHITE_GLOW_BEHIND)
        EVT_CALL(PlaySoundAtNpc, NPC_Bootler, SOUND_BOO_VANISH_A, SOUND_SPACE_DEFAULT)
        EVT_PLAY_EFFECT(EFFECT_SHIMMER_BURST, 1, NPC_Bootler_Pos, 1, 30)
        EVT_WAIT(5)
        EVT_CALL(SetNpcPos, NPC_Bootler, 0, -1000, 0)
    )

    //send koot away
    THREAD(
        EVT_WAIT(15)
        EVT_CALL(SetNpcDecoration, NPC_Koot, 0, NPC_DECORATION_WHITE_GLOW_BEHIND)
        EVT_CALL(PlaySoundAtNpc, NPC_Koot, SOUND_BOO_VANISH_A, SOUND_SPACE_DEFAULT)
        EVT_PLAY_EFFECT(EFFECT_SHIMMER_BURST, 1, NPC_Koot_Pos, 1, 30)
        EVT_WAIT(5)
        EVT_CALL(SetNpcPos, NPC_Koot, 0, -1000, 0)
    )

    //send master away
    THREAD(
        EVT_WAIT(25)
        EVT_CALL(SetNpcDecoration, NPC_Master, 0, NPC_DECORATION_WHITE_GLOW_BEHIND)
        EVT_CALL(PlaySoundAtNpc, NPC_Master, SOUND_BOO_VANISH_A, SOUND_SPACE_DEFAULT)
        EVT_PLAY_EFFECT(EFFECT_SHIMMER_BURST, 1, NPC_Master_Pos, 1, 30)
        EVT_WAIT(5)
        EVT_CALL(SetNpcPos, NPC_Master, 0, -1000, 0)
    )

    //send goompa away
    THREAD(
        EVT_WAIT(35)
        EVT_CALL(SetNpcDecoration, NPC_Goompa, 0, NPC_DECORATION_WHITE_GLOW_BEHIND)
        EVT_CALL(PlaySoundAtNpc, NPC_Goompa, SOUND_BOO_VANISH_A, SOUND_SPACE_DEFAULT)
        EVT_PLAY_EFFECT(EFFECT_SHIMMER_BURST, 1, NPC_Goompa_Pos, 1, 30)
        EVT_WAIT(5)
        EVT_CALL(SetNpcPos, NPC_Goompa, 0, -1000, 0)
    )

    EVT_WAIT(50)

    EVT_RETURN
    EVT_END   
};

#define Var_Amount_Of_Window_Look_Frames LVar1
#define Var_Has_Checked_Window LVar2

EvtScript N(DonlonSendsCharactersAway) = {
    EVT_SET(Var_Has_Checked_Window, TRUE)

    EVT_CALL(SetNpcAnimation, NPC_Donlon, 0x00A50009)
    EVT_WAIT(40)

    EVT_CALL(SpeakToPlayer, NPC_Goompa, 0x009D0008, 0x009D0001, 0, MSG_GoompaWait)
    EVT_WAIT(5)

    EVT_EXEC_WAIT(N(SendEmAway))

    EVT_CALL(SetNpcAnimation, NPC_Luigi, 0x00A2001B)
    EVT_CALL(SetNpcAnimation, NPC_Donlon, 0x00A5000B)
    EVT_WAIT(15)

    EVT_CALL(SetNpcAnimation, NPC_Donlon, 0x00A50001)
    EVT_WAIT(30)

    EVT_CALL(SpeakToPlayer, NPC_Donlon, 0x00A50004, 0x00A50001, 0, MSG_DonlonBye)
    EVT_WAIT(10)

    EVT_CALL(GotoMap, EVT_PTR("don_01"), 0) //don_01 entry 0

    EVT_RETURN
    EVT_END
};

EvtScript N(IntroScript) = {
    EVT_SET(Var_Has_Checked_Window, FALSE)
    EVT_CALL(DisablePlayerInput, TRUE)

    //thread for goompa randomly checking the window
    THREAD(
        LOOP(INF_LOOP,
            EVT_CALL(RandInt, 180, Var_Amount_Of_Window_Look_Frames)
            EVT_ADD(Var_Amount_Of_Window_Look_Frames, 180)
            IF_EQ(LVar2, 0,
                EVT_CALL(SetNpcAnimation, NPC_Goompa, 0x009D0002)
                EVT_WAIT(25)
                EVT_CALL(SetNpcAnimation, NPC_Goompa, 0x009D0001)
            )
        )
    )

    EVT_WAIT(10)
    EVT_EXEC_WAIT(N(DisplayKootAndDonlonRandomStartString))
    EVT_EXEC_WAIT(N(BootlerExclaimShocked))

    EVT_CALL(SetPlayerPos, -10, -70, -130) //?

    EVT_EXEC_WAIT(N(BootlerAskQuestions))

    EVT_EXEC_WAIT(N(AnimateSadDonlonAndTalk))

    EVT_EXEC_WAIT(N(DonlonSendsCharactersAway))

    EVT_RETURN
    EVT_END
};
#undef Var_Amount_Of_Window_Look_Frames Var_Has_Checked_Window

EvtScript N(EVS_Main) = {
    EVT_SET(GB_WorldLocation, LOCATION_GOOMBA_VILLAGE)
    EVT_CALL(SetSpriteShading, SHADING_TIK_24)
    EVT_SETUP_CAMERA_NO_LEAD()
    EVT_CALL(SetMusicTrack, 0, SONG_PENGUIN_MYSTERY, 0, 8)
    EVT_SET(GB_Unused_EVT_02, FALSE)
    EVT_SET(GB_Unused_EVT_03, FALSE)
    EVT_CALL(MakeNpcs, TRUE, EVT_PTR(N(DefaultNPCs)))

    // EVT_SET(LVar0, EVT_PTR(N(EVS_BindExitTriggers)))
    // EVT_EXEC(EnterWalk)

    EVT_CALL(PlaySoundAtNpc, NPC_Bootler, SOUND_BASIC_DOOR_CLOSE, SOUND_SPACE_DEFAULT)
    EVT_EXEC(N(PrepScript))
    EVT_WAIT(50)
    EVT_EXEC(N(IntroScript))

    EVT_RETURN
    EVT_END
};
