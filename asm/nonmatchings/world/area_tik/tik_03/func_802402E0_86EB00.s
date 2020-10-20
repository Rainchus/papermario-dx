.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802402E0_86EDE0
/* 86EDE0 802402E0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 86EDE4 802402E4 AFB00010 */  sw        $s0, 0x10($sp)
/* 86EDE8 802402E8 0080802D */  daddu     $s0, $a0, $zero
/* 86EDEC 802402EC AFBF0014 */  sw        $ra, 0x14($sp)
/* 86EDF0 802402F0 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 86EDF4 802402F4 8E020088 */  lw        $v0, 0x88($s0)
/* 86EDF8 802402F8 00621821 */  addu      $v1, $v1, $v0
/* 86EDFC 802402FC 04610004 */  bgez      $v1, .L80240310
/* 86EE00 80240300 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 86EE04 80240304 3C020002 */  lui       $v0, 2
/* 86EE08 80240308 080900C8 */  j         .L80240320
/* 86EE0C 8024030C 00621021 */   addu     $v0, $v1, $v0
.L80240310:
/* 86EE10 80240310 3C040002 */  lui       $a0, 2
/* 86EE14 80240314 0083102A */  slt       $v0, $a0, $v1
/* 86EE18 80240318 10400002 */  beqz      $v0, .L80240324
/* 86EE1C 8024031C 00641023 */   subu     $v0, $v1, $a0
.L80240320:
/* 86EE20 80240320 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80240324:
/* 86EE24 80240324 8E0300AC */  lw        $v1, 0xac($s0)
/* 86EE28 80240328 8E02008C */  lw        $v0, 0x8c($s0)
/* 86EE2C 8024032C 00621821 */  addu      $v1, $v1, $v0
/* 86EE30 80240330 04610004 */  bgez      $v1, .L80240344
/* 86EE34 80240334 AE0300AC */   sw       $v1, 0xac($s0)
/* 86EE38 80240338 3C020002 */  lui       $v0, 2
/* 86EE3C 8024033C 080900D5 */  j         .L80240354
/* 86EE40 80240340 00621021 */   addu     $v0, $v1, $v0
.L80240344:
/* 86EE44 80240344 3C040002 */  lui       $a0, 2
/* 86EE48 80240348 0083102A */  slt       $v0, $a0, $v1
/* 86EE4C 8024034C 10400002 */  beqz      $v0, .L80240358
/* 86EE50 80240350 00641023 */   subu     $v0, $v1, $a0
.L80240354:
/* 86EE54 80240354 AE0200AC */  sw        $v0, 0xac($s0)
.L80240358:
/* 86EE58 80240358 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 86EE5C 8024035C 8E020090 */  lw        $v0, 0x90($s0)
/* 86EE60 80240360 00621821 */  addu      $v1, $v1, $v0
/* 86EE64 80240364 04610004 */  bgez      $v1, .L80240378
/* 86EE68 80240368 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 86EE6C 8024036C 3C020002 */  lui       $v0, 2
/* 86EE70 80240370 080900E2 */  j         .L80240388
/* 86EE74 80240374 00621021 */   addu     $v0, $v1, $v0
.L80240378:
/* 86EE78 80240378 3C040002 */  lui       $a0, 2
/* 86EE7C 8024037C 0083102A */  slt       $v0, $a0, $v1
/* 86EE80 80240380 10400002 */  beqz      $v0, .L8024038C
/* 86EE84 80240384 00641023 */   subu     $v0, $v1, $a0
.L80240388:
/* 86EE88 80240388 AE0200B0 */  sw        $v0, 0xb0($s0)
.L8024038C:
/* 86EE8C 8024038C 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 86EE90 80240390 8E020094 */  lw        $v0, 0x94($s0)
/* 86EE94 80240394 00621821 */  addu      $v1, $v1, $v0
/* 86EE98 80240398 04610004 */  bgez      $v1, .L802403AC
/* 86EE9C 8024039C AE0300B4 */   sw       $v1, 0xb4($s0)
/* 86EEA0 802403A0 3C020002 */  lui       $v0, 2
/* 86EEA4 802403A4 080900EF */  j         .L802403BC
/* 86EEA8 802403A8 00621021 */   addu     $v0, $v1, $v0
.L802403AC:
/* 86EEAC 802403AC 3C040002 */  lui       $a0, 2
/* 86EEB0 802403B0 0083102A */  slt       $v0, $a0, $v1
/* 86EEB4 802403B4 10400002 */  beqz      $v0, .L802403C0
/* 86EEB8 802403B8 00641023 */   subu     $v0, $v1, $a0
.L802403BC:
/* 86EEBC 802403BC AE0200B4 */  sw        $v0, 0xb4($s0)
.L802403C0:
/* 86EEC0 802403C0 8E040084 */  lw        $a0, 0x84($s0)
/* 86EEC4 802403C4 0C046F07 */  jal       set_main_pan_u
/* 86EEC8 802403C8 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 86EECC 802403CC 8E040084 */  lw        $a0, 0x84($s0)
/* 86EED0 802403D0 0C046F0D */  jal       set_main_pan_v
/* 86EED4 802403D4 8E0500AC */   lw       $a1, 0xac($s0)
/* 86EED8 802403D8 8E040084 */  lw        $a0, 0x84($s0)
/* 86EEDC 802403DC 0C046F13 */  jal       set_aux_pan_u
/* 86EEE0 802403E0 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 86EEE4 802403E4 8E040084 */  lw        $a0, 0x84($s0)
/* 86EEE8 802403E8 0C046F19 */  jal       set_aux_pan_v
/* 86EEEC 802403EC 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 86EEF0 802403F0 8FBF0014 */  lw        $ra, 0x14($sp)
/* 86EEF4 802403F4 8FB00010 */  lw        $s0, 0x10($sp)
/* 86EEF8 802403F8 0000102D */  daddu     $v0, $zero, $zero
/* 86EEFC 802403FC 03E00008 */  jr        $ra
/* 86EF00 80240400 27BD0018 */   addiu    $sp, $sp, 0x18