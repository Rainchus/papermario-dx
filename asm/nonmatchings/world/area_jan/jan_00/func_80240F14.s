.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240F14
/* B21454 80240F14 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* B21458 80240F18 AFB20018 */  sw        $s2, 0x18($sp)
/* B2145C 80240F1C 0080902D */  daddu     $s2, $a0, $zero
/* B21460 80240F20 AFB00010 */  sw        $s0, 0x10($sp)
/* B21464 80240F24 00A0802D */  daddu     $s0, $a1, $zero
/* B21468 80240F28 AFBF0020 */  sw        $ra, 0x20($sp)
/* B2146C 80240F2C AFB3001C */  sw        $s3, 0x1c($sp)
/* B21470 80240F30 AFB10014 */  sw        $s1, 0x14($sp)
/* B21474 80240F34 8E53000C */  lw        $s3, 0xc($s2)
/* B21478 80240F38 0C00EAD2 */  jal       get_npc_safe
/* B2147C 80240F3C 0000202D */   daddu    $a0, $zero, $zero
/* B21480 80240F40 12000021 */  beqz      $s0, .L80240FC8
/* B21484 80240F44 0040882D */   daddu    $s1, $v0, $zero
/* B21488 80240F48 8E650000 */  lw        $a1, ($s3)
/* B2148C 80240F4C 0C0B1EAF */  jal       get_variable
/* B21490 80240F50 0240202D */   daddu    $a0, $s2, $zero
/* B21494 80240F54 0040182D */  daddu     $v1, $v0, $zero
/* B21498 80240F58 10600006 */  beqz      $v1, .L80240F74
/* B2149C 80240F5C AE430070 */   sw       $v1, 0x70($s2)
/* B214A0 80240F60 24020001 */  addiu     $v0, $zero, 1
/* B214A4 80240F64 1062000C */  beq       $v1, $v0, .L80240F98
/* B214A8 80240F68 2402000A */   addiu    $v0, $zero, 0xa
/* B214AC 80240F6C 080903F2 */  j         .L80240FC8
/* B214B0 80240F70 00000000 */   nop      
.L80240F74:
/* B214B4 80240F74 3C01431E */  lui       $at, 0x431e
/* B214B8 80240F78 44810000 */  mtc1      $at, $f0
/* B214BC 80240F7C 3C01C248 */  lui       $at, 0xc248
/* B214C0 80240F80 44811000 */  mtc1      $at, $f2
/* B214C4 80240F84 3C01C218 */  lui       $at, 0xc218
/* B214C8 80240F88 44812000 */  mtc1      $at, $f4
/* B214CC 80240F8C 2402005A */  addiu     $v0, $zero, 0x5a
/* B214D0 80240F90 080903EE */  j         .L80240FB8
/* B214D4 80240F94 AE400078 */   sw       $zero, 0x78($s2)
.L80240F98:
/* B214D8 80240F98 3C01C3DD */  lui       $at, 0xc3dd
/* B214DC 80240F9C 44810000 */  mtc1      $at, $f0
/* B214E0 80240FA0 3C01C248 */  lui       $at, 0xc248
/* B214E4 80240FA4 44811000 */  mtc1      $at, $f2
/* B214E8 80240FA8 3C01C218 */  lui       $at, 0xc218
/* B214EC 80240FAC 44812000 */  mtc1      $at, $f4
/* B214F0 80240FB0 AE420078 */  sw        $v0, 0x78($s2)
/* B214F4 80240FB4 240200C8 */  addiu     $v0, $zero, 0xc8
.L80240FB8:
/* B214F8 80240FB8 AE420074 */  sw        $v0, 0x74($s2)
/* B214FC 80240FBC E6200038 */  swc1      $f0, 0x38($s1)
/* B21500 80240FC0 E622003C */  swc1      $f2, 0x3c($s1)
/* B21504 80240FC4 E6240040 */  swc1      $f4, 0x40($s1)
.L80240FC8:
/* B21508 80240FC8 8E430078 */  lw        $v1, 0x78($s2)
/* B2150C 80240FCC 24040001 */  addiu     $a0, $zero, 1
/* B21510 80240FD0 10640022 */  beq       $v1, $a0, .L8024105C
/* B21514 80240FD4 28620002 */   slti     $v0, $v1, 2
/* B21518 80240FD8 10400005 */  beqz      $v0, .L80240FF0
/* B2151C 80240FDC 24020002 */   addiu    $v0, $zero, 2
/* B21520 80240FE0 10600009 */  beqz      $v1, .L80241008
/* B21524 80240FE4 0000102D */   daddu    $v0, $zero, $zero
/* B21528 80240FE8 08090446 */  j         .L80241118
/* B2152C 80240FEC 00000000 */   nop      
.L80240FF0:
/* B21530 80240FF0 1062002D */  beq       $v1, $v0, .L802410A8
/* B21534 80240FF4 2402000A */   addiu    $v0, $zero, 0xa
/* B21538 80240FF8 10620037 */  beq       $v1, $v0, .L802410D8
/* B2153C 80240FFC 0000102D */   daddu    $v0, $zero, $zero
/* B21540 80241000 08090446 */  j         .L80241118
/* B21544 80241004 00000000 */   nop      
.L80241008:
/* B21548 80241008 3C0200B6 */  lui       $v0, 0xb6
/* B2154C 8024100C C624000C */  lwc1      $f4, 0xc($s1)
/* B21550 80241010 3C013F80 */  lui       $at, 0x3f80
/* B21554 80241014 44810000 */  mtc1      $at, $f0
/* B21558 80241018 3C014040 */  lui       $at, 0x4040
/* B2155C 8024101C 44811000 */  mtc1      $at, $f2
/* B21560 80241020 46002101 */  sub.s     $f4, $f4, $f0
/* B21564 80241024 C6200038 */  lwc1      $f0, 0x38($s1)
/* B21568 80241028 34420001 */  ori       $v0, $v0, 1
/* B2156C 8024102C 46020001 */  sub.s     $f0, $f0, $f2
/* B21570 80241030 AE220028 */  sw        $v0, 0x28($s1)
/* B21574 80241034 E624000C */  swc1      $f4, 0xc($s1)
/* B21578 80241038 E6200038 */  swc1      $f0, 0x38($s1)
/* B2157C 8024103C 8E420074 */  lw        $v0, 0x74($s2)
/* B21580 80241040 2442FFFF */  addiu     $v0, $v0, -1
/* B21584 80241044 1C400033 */  bgtz      $v0, .L80241114
/* B21588 80241048 AE420074 */   sw       $v0, 0x74($s2)
/* B2158C 8024104C 2402005A */  addiu     $v0, $zero, 0x5a
/* B21590 80241050 AE440078 */  sw        $a0, 0x78($s2)
/* B21594 80241054 08090445 */  j         .L80241114
/* B21598 80241058 AE420074 */   sw       $v0, 0x74($s2)
.L8024105C:
/* B2159C 8024105C C624000C */  lwc1      $f4, 0xc($s1)
/* B215A0 80241060 3C013F80 */  lui       $at, 0x3f80
/* B215A4 80241064 44810000 */  mtc1      $at, $f0
/* B215A8 80241068 3C014040 */  lui       $at, 0x4040
/* B215AC 8024106C 44811000 */  mtc1      $at, $f2
/* B215B0 80241070 46002101 */  sub.s     $f4, $f4, $f0
/* B215B4 80241074 C6200038 */  lwc1      $f0, 0x38($s1)
/* B215B8 80241078 46020001 */  sub.s     $f0, $f0, $f2
/* B215BC 8024107C E624000C */  swc1      $f4, 0xc($s1)
/* B215C0 80241080 E6200038 */  swc1      $f0, 0x38($s1)
/* B215C4 80241084 8E420074 */  lw        $v0, 0x74($s2)
/* B215C8 80241088 2442FFFF */  addiu     $v0, $v0, -1
/* B215CC 8024108C 1C400021 */  bgtz      $v0, .L80241114
/* B215D0 80241090 AE420074 */   sw       $v0, 0x74($s2)
/* B215D4 80241094 24020002 */  addiu     $v0, $zero, 2
/* B215D8 80241098 AE420078 */  sw        $v0, 0x78($s2)
/* B215DC 8024109C 24020078 */  addiu     $v0, $zero, 0x78
/* B215E0 802410A0 08090445 */  j         .L80241114
/* B215E4 802410A4 AE420074 */   sw       $v0, 0x74($s2)
.L802410A8:
/* B215E8 802410A8 C6200038 */  lwc1      $f0, 0x38($s1)
/* B215EC 802410AC 3C014040 */  lui       $at, 0x4040
/* B215F0 802410B0 44811000 */  mtc1      $at, $f2
/* B215F4 802410B4 00000000 */  nop       
/* B215F8 802410B8 46020001 */  sub.s     $f0, $f0, $f2
/* B215FC 802410BC E6200038 */  swc1      $f0, 0x38($s1)
/* B21600 802410C0 8E420074 */  lw        $v0, 0x74($s2)
/* B21604 802410C4 2442FFFF */  addiu     $v0, $v0, -1
/* B21608 802410C8 1C400012 */  bgtz      $v0, .L80241114
/* B2160C 802410CC AE420074 */   sw       $v0, 0x74($s2)
/* B21610 802410D0 08090446 */  j         .L80241118
/* B21614 802410D4 24020002 */   addiu    $v0, $zero, 2
.L802410D8:
/* B21618 802410D8 C6220038 */  lwc1      $f2, 0x38($s1)
/* B2161C 802410DC 3C014040 */  lui       $at, 0x4040
/* B21620 802410E0 44810000 */  mtc1      $at, $f0
/* B21624 802410E4 00000000 */  nop       
/* B21628 802410E8 46001080 */  add.s     $f2, $f2, $f0
/* B2162C 802410EC 3C0142B4 */  lui       $at, 0x42b4
/* B21630 802410F0 44810000 */  mtc1      $at, $f0
/* B21634 802410F4 00000000 */  nop       
/* B21638 802410F8 E620000C */  swc1      $f0, 0xc($s1)
/* B2163C 802410FC E6220038 */  swc1      $f2, 0x38($s1)
/* B21640 80241100 8E430074 */  lw        $v1, 0x74($s2)
/* B21644 80241104 24020002 */  addiu     $v0, $zero, 2
/* B21648 80241108 2463FFFF */  addiu     $v1, $v1, -1
/* B2164C 8024110C 18600002 */  blez      $v1, .L80241118
/* B21650 80241110 AE430074 */   sw       $v1, 0x74($s2)
.L80241114:
/* B21654 80241114 0000102D */  daddu     $v0, $zero, $zero
.L80241118:
/* B21658 80241118 8FBF0020 */  lw        $ra, 0x20($sp)
/* B2165C 8024111C 8FB3001C */  lw        $s3, 0x1c($sp)
/* B21660 80241120 8FB20018 */  lw        $s2, 0x18($sp)
/* B21664 80241124 8FB10014 */  lw        $s1, 0x14($sp)
/* B21668 80241128 8FB00010 */  lw        $s0, 0x10($sp)
/* B2166C 8024112C 03E00008 */  jr        $ra
/* B21670 80241130 27BD0028 */   addiu    $sp, $sp, 0x28