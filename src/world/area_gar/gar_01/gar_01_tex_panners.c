#include "gar_01.h"
#include "common.h"
#include "world/common/atomic/TexturePan.inc.c"

EvtScript N(EVS_StartTexPanners) = {
    EVT_CALL(SetTexPanner, MODEL_gar_01_DrawnModel, TEX_PANNER_1)
    EVT_CALL(EnableTexPanning, MODEL_gar_01_DrawnModel, TRUE)

    EVT_CALL(SetTexPanner, MODEL_gar_01_DrawnModel, TEX_PANNER_2)
    EVT_CALL(EnableTexPanning, MODEL_gar_01_DrawnModel, TRUE)

    EVT_CALL(SetTexPanner, MODEL_gar_01_DrawnModel, TEX_PANNER_2)
    EVT_CALL(EnableTexPanning, MODEL_gar_01_DrawnModel, TRUE)

    EVT_CALL(SetTexPanner, MODEL_gar_01_DrawnModel, TEX_PANNER_2)
    EVT_CALL(EnableTexPanning, MODEL_gar_01_DrawnModel, TRUE)

    EVT_THREAD
        TEX_PAN_PARAMS_ID(TEX_PANNER_1)
        TEX_PAN_PARAMS_STEP(-100,0,1000,0)
        TEX_PAN_PARAMS_FREQ(1,0,1,0)
        TEX_PAN_PARAMS_INIT(0,0,0,0)
        EVT_EXEC(N(EVS_UpdateTexturePan))
    EVT_END_THREAD

    EVT_THREAD
        TEX_PAN_PARAMS_ID(TEX_PANNER_2)
        TEX_PAN_PARAMS_STEP(-100,0,-400,0)
        TEX_PAN_PARAMS_FREQ(1,0,1,0)
        TEX_PAN_PARAMS_INIT(0,0,0,0)
        EVT_EXEC(N(EVS_UpdateTexturePan))
    EVT_END_THREAD

    EVT_THREAD
        TEX_PAN_PARAMS_ID(TEX_PANNER_3)
        TEX_PAN_PARAMS_STEP(0,200,0,3000)
        TEX_PAN_PARAMS_FREQ(0,0,0,0)
        TEX_PAN_PARAMS_INIT(0,0,0,0)
        EVT_EXEC(N(EVS_UpdateTexturePan))
    EVT_END_THREAD

    EVT_THREAD
        TEX_PAN_PARAMS_ID(TEX_PANNER_4)
        TEX_PAN_PARAMS_STEP(100,0,1000,0)
        TEX_PAN_PARAMS_FREQ(0,0,0,0)
        TEX_PAN_PARAMS_INIT(0,0,0,0)
        EVT_EXEC(N(EVS_UpdateTexturePan))
    EVT_END_THREAD


    EVT_RETURN
    EVT_END
};
