.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_125_main
/* 402640 E0116000 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 402644 E0116004 F7B60048 */  sdc1      $f22, 0x48($sp)
/* 402648 E0116008 4485B000 */  mtc1      $a1, $f22
/* 40264C E011600C F7B80050 */  sdc1      $f24, 0x50($sp)
/* 402650 E0116010 4486C000 */  mtc1      $a2, $f24
/* 402654 E0116014 F7BA0058 */  sdc1      $f26, 0x58($sp)
/* 402658 E0116018 4487D000 */  mtc1      $a3, $f26
/* 40265C E011601C AFB30034 */  sw        $s3, 0x34($sp)
/* 402660 E0116020 0080982D */  daddu     $s3, $a0, $zero
/* 402664 E0116024 F7B40040 */  sdc1      $f20, 0x40($sp)
/* 402668 E0116028 C7B40070 */  lwc1      $f20, 0x70($sp)
/* 40266C E011602C 27A40010 */  addiu     $a0, $sp, 0x10
/* 402670 E0116030 AFB20030 */  sw        $s2, 0x30($sp)
/* 402674 E0116034 8FB20074 */  lw        $s2, 0x74($sp)
/* 402678 E0116038 3C02E011 */  lui       $v0, %hi(func_E0116184)
/* 40267C E011603C 24426184 */  addiu     $v0, $v0, %lo(func_E0116184)
/* 402680 E0116040 AFA20018 */  sw        $v0, 0x18($sp)
/* 402684 E0116044 3C02E011 */  lui       $v0, %hi(func_E011618C)
/* 402688 E0116048 2442618C */  addiu     $v0, $v0, %lo(func_E011618C)
/* 40268C E011604C AFA2001C */  sw        $v0, 0x1c($sp)
/* 402690 E0116050 3C02E011 */  lui       $v0, %hi(func_E01166A0)
/* 402694 E0116054 244266A0 */  addiu     $v0, $v0, %lo(func_E01166A0)
/* 402698 E0116058 AFA20020 */  sw        $v0, 0x20($sp)
/* 40269C E011605C 2402007D */  addiu     $v0, $zero, 0x7d
/* 4026A0 E0116060 AFBF0038 */  sw        $ra, 0x38($sp)
/* 4026A4 E0116064 AFB1002C */  sw        $s1, 0x2c($sp)
/* 4026A8 E0116068 AFB00028 */  sw        $s0, 0x28($sp)
/* 4026AC E011606C AFA00010 */  sw        $zero, 0x10($sp)
/* 4026B0 E0116070 AFA00024 */  sw        $zero, 0x24($sp)
/* 4026B4 E0116074 0C080124 */  jal       shim_create_effect_instance
/* 4026B8 E0116078 AFA20014 */   sw       $v0, 0x14($sp)
/* 4026BC E011607C 24040180 */  addiu     $a0, $zero, 0x180
/* 4026C0 E0116080 24110008 */  addiu     $s1, $zero, 8
/* 4026C4 E0116084 0040802D */  daddu     $s0, $v0, $zero
/* 4026C8 E0116088 0C08012C */  jal       shim_general_heap_malloc
/* 4026CC E011608C AE110008 */   sw       $s1, 8($s0)
/* 4026D0 E0116090 0040182D */  daddu     $v1, $v0, $zero
/* 4026D4 E0116094 14600003 */  bnez      $v1, .LE01160A4
/* 4026D8 E0116098 AE03000C */   sw       $v1, 0xc($s0)
.LE011609C:
/* 4026DC E011609C 08045827 */  j         .LE011609C
/* 4026E0 E01160A0 00000000 */   nop
.LE01160A4:
/* 4026E4 E01160A4 AC730000 */  sw        $s3, ($v1)
/* 4026E8 E01160A8 1E400004 */  bgtz      $s2, .LE01160BC
/* 4026EC E01160AC AC600014 */   sw       $zero, 0x14($v1)
/* 4026F0 E01160B0 240203E8 */  addiu     $v0, $zero, 0x3e8
/* 4026F4 E01160B4 08045830 */  j         .LE01160C0
/* 4026F8 E01160B8 AC620010 */   sw       $v0, 0x10($v1)
.LE01160BC:
/* 4026FC E01160BC AC720010 */  sw        $s2, 0x10($v1)
.LE01160C0:
/* 402700 E01160C0 24040001 */  addiu     $a0, $zero, 1
/* 402704 E01160C4 3C0141F0 */  lui       $at, 0x41f0
/* 402708 E01160C8 44812000 */  mtc1      $at, $f4
/* 40270C E01160CC 0091102A */  slt       $v0, $a0, $s1
/* 402710 E01160D0 E4760004 */  swc1      $f22, 4($v1)
/* 402714 E01160D4 E4780008 */  swc1      $f24, 8($v1)
/* 402718 E01160D8 E47A000C */  swc1      $f26, 0xc($v1)
/* 40271C E01160DC E4740018 */  swc1      $f20, 0x18($v1)
/* 402720 E01160E0 AC600020 */  sw        $zero, 0x20($v1)
/* 402724 E01160E4 E464001C */  swc1      $f4, 0x1c($v1)
/* 402728 E01160E8 1040001A */  beqz      $v0, .LE0116154
/* 40272C E01160EC 24630030 */   addiu    $v1, $v1, 0x30
/* 402730 E01160F0 3C013FE0 */  lui       $at, 0x3fe0
/* 402734 E01160F4 44811800 */  mtc1      $at, $f3
/* 402738 E01160F8 44801000 */  mtc1      $zero, $f2
/* 40273C E01160FC 4600A021 */  cvt.d.s   $f0, $f20
/* 402740 E0116100 46220002 */  mul.d     $f0, $f0, $f2
/* 402744 E0116104 00000000 */  nop
/* 402748 E0116108 240500FF */  addiu     $a1, $zero, 0xff
/* 40274C E011610C 2463002C */  addiu     $v1, $v1, 0x2c
/* 402750 E0116110 3C014248 */  lui       $at, 0x4248
/* 402754 E0116114 44811000 */  mtc1      $at, $f2
/* 402758 E0116118 46200020 */  cvt.s.d   $f0, $f0
.LE011611C:
/* 40275C E011611C 24840001 */  addiu     $a0, $a0, 1
/* 402760 E0116120 A060FFF8 */  sb        $zero, -8($v1)
/* 402764 E0116124 E460FFEC */  swc1      $f0, -0x14($v1)
/* 402768 E0116128 A065FFFA */  sb        $a1, -6($v1)
/* 40276C E011612C A065FFFB */  sb        $a1, -5($v1)
/* 402770 E0116130 A060FFFC */  sb        $zero, -4($v1)
/* 402774 E0116134 A060FFF9 */  sb        $zero, -7($v1)
/* 402778 E0116138 E464FFF0 */  swc1      $f4, -0x10($v1)
/* 40277C E011613C AC60FFF4 */  sw        $zero, -0xc($v1)
/* 402780 E0116140 A060FFFD */  sb        $zero, -3($v1)
/* 402784 E0116144 E4620000 */  swc1      $f2, ($v1)
/* 402788 E0116148 0091102A */  slt       $v0, $a0, $s1
/* 40278C E011614C 1440FFF3 */  bnez      $v0, .LE011611C
/* 402790 E0116150 24630030 */   addiu    $v1, $v1, 0x30
.LE0116154:
/* 402794 E0116154 0200102D */  daddu     $v0, $s0, $zero
/* 402798 E0116158 8FBF0038 */  lw        $ra, 0x38($sp)
/* 40279C E011615C 8FB30034 */  lw        $s3, 0x34($sp)
/* 4027A0 E0116160 8FB20030 */  lw        $s2, 0x30($sp)
/* 4027A4 E0116164 8FB1002C */  lw        $s1, 0x2c($sp)
/* 4027A8 E0116168 8FB00028 */  lw        $s0, 0x28($sp)
/* 4027AC E011616C D7BA0058 */  ldc1      $f26, 0x58($sp)
/* 4027B0 E0116170 D7B80050 */  ldc1      $f24, 0x50($sp)
/* 4027B4 E0116174 D7B60048 */  ldc1      $f22, 0x48($sp)
/* 4027B8 E0116178 D7B40040 */  ldc1      $f20, 0x40($sp)
/* 4027BC E011617C 03E00008 */  jr        $ra
/* 4027C0 E0116180 27BD0060 */   addiu    $sp, $sp, 0x60