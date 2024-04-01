#include "common.h"

s32 boxWidth = 46;
s32 boxHeight = 16;
s32 gEnemyAttackTimescale = 100;

void AdjustAndViewTimescale(void) {
    s32 xPosTimeScale = 265;
    s32 yPosTimeScale = 204;
    s32 adjustableWidth = boxWidth;

    char buffer[20];
    s32 i;
    if (gGameStatus.curButtons[0] & R_TRIG) {
        switch (gGameStatus.pressedButtons[0]) {
        case U_JPAD:
            gEnemyAttackTimescale += 100;
            break;
        case D_JPAD:
            gEnemyAttackTimescale -= 100;
            break;
        }            
    } else {
        switch (gGameStatus.pressedButtons[0]) {
        case U_JPAD:
            gEnemyAttackTimescale += 1;
            break;
        case D_JPAD:
            gEnemyAttackTimescale -= 1;
            break;
        case L_JPAD:
            gEnemyAttackTimescale -= 10;
            break;
        case R_JPAD:
            gEnemyAttackTimescale += 10;
            break;
        }
    }
    sprintf(buffer, "%03d%%", gEnemyAttackTimescale);
    for (i = 0; i < sizeof(buffer); i++) {
        if (buffer[i] == 0) {
            buffer[i] = 0xFD; //terminate string
        } else if (buffer[i] == '.') {
            buffer[i] = 0x0E;
        } else if (buffer[i] == '%') {
            buffer[i] = 0x05;
        } else {
            buffer[i] -= 0x20; //value ascii to pm64 value string
        }
    }

    if (gEnemyAttackTimescale >= 100 * 10) {
        adjustableWidth += 6; //increase width for extra digit
    }
    draw_box(0, (WindowStyle)WINDOW_STYLE_4, xPosTimeScale - 6, yPosTimeScale, 0, adjustableWidth, boxHeight, 255, 0, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, NULL, NULL,
                NULL, SCREEN_WIDTH, SCREEN_HEIGHT, NULL);
    draw_msg((s32)buffer, xPosTimeScale, yPosTimeScale, 255, 0, 0);
}

ApiStatus SetAttackTimeScale(Evt* evt, s32 isInitialCall) {
    evt->timeScale = ((f32)gEnemyAttackTimescale / 100.0f);
    return ApiStatus_DONE2;
}

ApiStatus SetAttackTimeScale1(Evt* evt, s32 isInitialCall) {
    evt->timeScale = 1.0f;
    return ApiStatus_DONE2;
}
