.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800510A4
/* 2C4A4 800510A4 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 2C4A8 800510A8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 2C4AC 800510AC 0080982D */  daddu     $s3, $a0, $zero
/* 2C4B0 800510B0 AFB00010 */  sw        $s0, 0x10($sp)
/* 2C4B4 800510B4 00A0802D */  daddu     $s0, $a1, $zero
/* 2C4B8 800510B8 AFB10014 */  sw        $s1, 0x14($sp)
/* 2C4BC 800510BC 00C0882D */  daddu     $s1, $a2, $zero
/* 2C4C0 800510C0 00111100 */  sll       $v0, $s1, 4
/* 2C4C4 800510C4 00511023 */  subu      $v0, $v0, $s1
/* 2C4C8 800510C8 000210C0 */  sll       $v0, $v0, 3
/* 2C4CC 800510CC 00511021 */  addu      $v0, $v0, $s1
/* 2C4D0 800510D0 00021080 */  sll       $v0, $v0, 2
/* 2C4D4 800510D4 24420024 */  addiu     $v0, $v0, 0x24
/* 2C4D8 800510D8 AFB20018 */  sw        $s2, 0x18($sp)
/* 2C4DC 800510DC 02629021 */  addu      $s2, $s3, $v0
/* 2C4E0 800510E0 0240202D */  daddu     $a0, $s2, $zero
/* 2C4E4 800510E4 240501E4 */  addiu     $a1, $zero, 0x1e4
/* 2C4E8 800510E8 AFBF0020 */  sw        $ra, 0x20($sp)
/* 2C4EC 800510EC 0C0153A4 */  jal       snd_memset
/* 2C4F0 800510F0 0000302D */   daddu    $a2, $zero, $zero
/* 2C4F4 800510F4 AE500000 */  sw        $s0, ($s2)
/* 2C4F8 800510F8 96030010 */  lhu       $v1, 0x10($s0)
/* 2C4FC 800510FC 24020001 */  addiu     $v0, $zero, 1
/* 2C500 80051100 AE420018 */  sw        $v0, 0x18($s2)
/* 2C504 80051104 3C027F00 */  lui       $v0, 0x7f00
/* 2C508 80051108 AE420038 */  sw        $v0, 0x38($s2)
/* 2C50C 8005110C 2402007F */  addiu     $v0, $zero, 0x7f
/* 2C510 80051110 A2420042 */  sb        $v0, 0x42($s2)
/* 2C514 80051114 0200102D */  daddu     $v0, $s0, $zero
/* 2C518 80051118 A2510014 */  sb        $s1, 0x14($s2)
/* 2C51C 8005111C 02038021 */  addu      $s0, $s0, $v1
/* 2C520 80051120 AE500008 */  sw        $s0, 8($s2)
/* 2C524 80051124 AE500010 */  sw        $s0, 0x10($s2)
/* 2C528 80051128 AE50000C */  sw        $s0, 0xc($s2)
/* 2C52C 8005112C AE500004 */  sw        $s0, 4($s2)
/* 2C530 80051130 8C420008 */  lw        $v0, 8($v0)
/* 2C534 80051134 8E430000 */  lw        $v1, ($s2)
/* 2C538 80051138 AE420020 */  sw        $v0, 0x20($s2)
/* 2C53C 8005113C 9062000C */  lbu       $v0, 0xc($v1)
/* 2C540 80051140 AE420030 */  sw        $v0, 0x30($s2)
/* 2C544 80051144 24420010 */  addiu     $v0, $v0, 0x10
/* 2C548 80051148 AE420034 */  sw        $v0, 0x34($s2)
/* 2C54C 8005114C 2C420019 */  sltiu     $v0, $v0, 0x19
/* 2C550 80051150 14400003 */  bnez      $v0, .L80051160
/* 2C554 80051154 0000282D */   daddu    $a1, $zero, $zero
/* 2C558 80051158 24020018 */  addiu     $v0, $zero, 0x18
/* 2C55C 8005115C AE420034 */  sw        $v0, 0x34($s2)
.L80051160:
/* 2C560 80051160 3C067FFF */  lui       $a2, 0x7fff
/* 2C564 80051164 34C6FFFF */  ori       $a2, $a2, 0xffff
/* 2C568 80051168 24070040 */  addiu     $a3, $zero, 0x40
/* 2C56C 8005116C 24040044 */  addiu     $a0, $zero, 0x44
.L80051170:
/* 2C570 80051170 02441821 */  addu      $v1, $s2, $a0
/* 2C574 80051174 8E620000 */  lw        $v0, ($s3)
/* 2C578 80051178 8C420004 */  lw        $v0, 4($v0)
/* 2C57C 8005117C 24A50001 */  addiu     $a1, $a1, 1
/* 2C580 80051180 AC660018 */  sw        $a2, 0x18($v1)
/* 2C584 80051184 A0670024 */  sb        $a3, 0x24($v1)
/* 2C588 80051188 AC620000 */  sw        $v0, ($v1)
/* 2C58C 8005118C 28A2000A */  slti      $v0, $a1, 0xa
/* 2C590 80051190 1440FFF7 */  bnez      $v0, .L80051170
/* 2C594 80051194 24840028 */   addiu    $a0, $a0, 0x28
/* 2C598 80051198 24020001 */  addiu     $v0, $zero, 1
/* 2C59C 8005119C A2420043 */  sb        $v0, 0x43($s2)
/* 2C5A0 800511A0 8FBF0020 */  lw        $ra, 0x20($sp)
/* 2C5A4 800511A4 8FB3001C */  lw        $s3, 0x1c($sp)
/* 2C5A8 800511A8 8FB20018 */  lw        $s2, 0x18($sp)
/* 2C5AC 800511AC 8FB10014 */  lw        $s1, 0x14($sp)
/* 2C5B0 800511B0 8FB00010 */  lw        $s0, 0x10($sp)
/* 2C5B4 800511B4 03E00008 */  jr        $ra
/* 2C5B8 800511B8 27BD0028 */   addiu    $sp, $sp, 0x28
