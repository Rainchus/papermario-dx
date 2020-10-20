.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802407A0_A11020
/* A11020 802407A0 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* A11024 802407A4 AFB00010 */  sw        $s0, 0x10($sp)
/* A11028 802407A8 0080802D */  daddu     $s0, $a0, $zero
/* A1102C 802407AC AFBF0014 */  sw        $ra, 0x14($sp)
/* A11030 802407B0 8E0300A8 */  lw        $v1, 0xa8($s0)
/* A11034 802407B4 8E020088 */  lw        $v0, 0x88($s0)
/* A11038 802407B8 00621821 */  addu      $v1, $v1, $v0
/* A1103C 802407BC 04610004 */  bgez      $v1, .L802407D0
/* A11040 802407C0 AE0300A8 */   sw       $v1, 0xa8($s0)
/* A11044 802407C4 3C020002 */  lui       $v0, 2
/* A11048 802407C8 080901F8 */  j         .L802407E0
/* A1104C 802407CC 00621021 */   addu     $v0, $v1, $v0
.L802407D0:
/* A11050 802407D0 3C040002 */  lui       $a0, 2
/* A11054 802407D4 0083102A */  slt       $v0, $a0, $v1
/* A11058 802407D8 10400002 */  beqz      $v0, .L802407E4
/* A1105C 802407DC 00641023 */   subu     $v0, $v1, $a0
.L802407E0:
/* A11060 802407E0 AE0200A8 */  sw        $v0, 0xa8($s0)
.L802407E4:
/* A11064 802407E4 8E0300AC */  lw        $v1, 0xac($s0)
/* A11068 802407E8 8E02008C */  lw        $v0, 0x8c($s0)
/* A1106C 802407EC 00621821 */  addu      $v1, $v1, $v0
/* A11070 802407F0 04610004 */  bgez      $v1, .L80240804
/* A11074 802407F4 AE0300AC */   sw       $v1, 0xac($s0)
/* A11078 802407F8 3C020002 */  lui       $v0, 2
/* A1107C 802407FC 08090205 */  j         .L80240814
/* A11080 80240800 00621021 */   addu     $v0, $v1, $v0
.L80240804:
/* A11084 80240804 3C040002 */  lui       $a0, 2
/* A11088 80240808 0083102A */  slt       $v0, $a0, $v1
/* A1108C 8024080C 10400002 */  beqz      $v0, .L80240818
/* A11090 80240810 00641023 */   subu     $v0, $v1, $a0
.L80240814:
/* A11094 80240814 AE0200AC */  sw        $v0, 0xac($s0)
.L80240818:
/* A11098 80240818 8E0300B0 */  lw        $v1, 0xb0($s0)
/* A1109C 8024081C 8E020090 */  lw        $v0, 0x90($s0)
/* A110A0 80240820 00621821 */  addu      $v1, $v1, $v0
/* A110A4 80240824 04610004 */  bgez      $v1, .L80240838
/* A110A8 80240828 AE0300B0 */   sw       $v1, 0xb0($s0)
/* A110AC 8024082C 3C020002 */  lui       $v0, 2
/* A110B0 80240830 08090212 */  j         .L80240848
/* A110B4 80240834 00621021 */   addu     $v0, $v1, $v0
.L80240838:
/* A110B8 80240838 3C040002 */  lui       $a0, 2
/* A110BC 8024083C 0083102A */  slt       $v0, $a0, $v1
/* A110C0 80240840 10400002 */  beqz      $v0, .L8024084C
/* A110C4 80240844 00641023 */   subu     $v0, $v1, $a0
.L80240848:
/* A110C8 80240848 AE0200B0 */  sw        $v0, 0xb0($s0)
.L8024084C:
/* A110CC 8024084C 8E0300B4 */  lw        $v1, 0xb4($s0)
/* A110D0 80240850 8E020094 */  lw        $v0, 0x94($s0)
/* A110D4 80240854 00621821 */  addu      $v1, $v1, $v0
/* A110D8 80240858 04610004 */  bgez      $v1, .L8024086C
/* A110DC 8024085C AE0300B4 */   sw       $v1, 0xb4($s0)
/* A110E0 80240860 3C020002 */  lui       $v0, 2
/* A110E4 80240864 0809021F */  j         .L8024087C
/* A110E8 80240868 00621021 */   addu     $v0, $v1, $v0
.L8024086C:
/* A110EC 8024086C 3C040002 */  lui       $a0, 2
/* A110F0 80240870 0083102A */  slt       $v0, $a0, $v1
/* A110F4 80240874 10400002 */  beqz      $v0, .L80240880
/* A110F8 80240878 00641023 */   subu     $v0, $v1, $a0
.L8024087C:
/* A110FC 8024087C AE0200B4 */  sw        $v0, 0xb4($s0)
.L80240880:
/* A11100 80240880 8E040084 */  lw        $a0, 0x84($s0)
/* A11104 80240884 0C046F07 */  jal       set_main_pan_u
/* A11108 80240888 8E0500A8 */   lw       $a1, 0xa8($s0)
/* A1110C 8024088C 8E040084 */  lw        $a0, 0x84($s0)
/* A11110 80240890 0C046F0D */  jal       set_main_pan_v
/* A11114 80240894 8E0500AC */   lw       $a1, 0xac($s0)
/* A11118 80240898 8E040084 */  lw        $a0, 0x84($s0)
/* A1111C 8024089C 0C046F13 */  jal       set_aux_pan_u
/* A11120 802408A0 8E0500B0 */   lw       $a1, 0xb0($s0)
/* A11124 802408A4 8E040084 */  lw        $a0, 0x84($s0)
/* A11128 802408A8 0C046F19 */  jal       set_aux_pan_v
/* A1112C 802408AC 8E0500B4 */   lw       $a1, 0xb4($s0)
/* A11130 802408B0 8FBF0014 */  lw        $ra, 0x14($sp)
/* A11134 802408B4 8FB00010 */  lw        $s0, 0x10($sp)
/* A11138 802408B8 0000102D */  daddu     $v0, $zero, $zero
/* A1113C 802408BC 03E00008 */  jr        $ra
/* A11140 802408C0 27BD0018 */   addiu    $sp, $sp, 0x18