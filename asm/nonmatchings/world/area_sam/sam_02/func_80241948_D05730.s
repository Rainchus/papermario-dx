.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241948_D07078
/* D07078 80241948 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* D0707C 8024194C 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* D07080 80241950 10A00002 */  beqz      $a1, .L8024195C
/* D07084 80241954 2402003C */   addiu    $v0, $zero, 0x3c
/* D07088 80241958 AC820070 */  sw        $v0, 0x70($a0)
.L8024195C:
/* D0708C 8024195C C4620080 */  lwc1      $f2, 0x80($v1)
/* D07090 80241960 3C0141F0 */  lui       $at, 0x41f0
/* D07094 80241964 44810000 */  mtc1      $at, $f0
/* D07098 80241968 00000000 */  nop       
/* D0709C 8024196C 46001000 */  add.s     $f0, $f2, $f0
/* D070A0 80241970 3C0143B4 */  lui       $at, 0x43b4
/* D070A4 80241974 44811000 */  mtc1      $at, $f2
/* D070A8 80241978 00000000 */  nop       
/* D070AC 8024197C 4600103E */  c.le.s    $f2, $f0
/* D070B0 80241980 00000000 */  nop       
/* D070B4 80241984 45000003 */  bc1f      .L80241994
/* D070B8 80241988 E4600080 */   swc1     $f0, 0x80($v1)
/* D070BC 8024198C 46020001 */  sub.s     $f0, $f0, $f2
/* D070C0 80241990 E4600080 */  swc1      $f0, 0x80($v1)
.L80241994:
/* D070C4 80241994 8C820070 */  lw        $v0, 0x70($a0)
/* D070C8 80241998 2442FFFF */  addiu     $v0, $v0, -1
/* D070CC 8024199C AC820070 */  sw        $v0, 0x70($a0)
/* D070D0 802419A0 000217C3 */  sra       $v0, $v0, 0x1f
/* D070D4 802419A4 03E00008 */  jr        $ra
/* D070D8 802419A8 30420002 */   andi     $v0, $v0, 2