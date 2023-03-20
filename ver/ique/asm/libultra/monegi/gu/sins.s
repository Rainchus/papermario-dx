.include "macro.inc"

/* assembler directives */
.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */
.set gp=64     /* allow use of 64-bit general purpose registers */

.section .text, "ax"

/* Generated by spimdisasm 1.11.1 */

glabel sins
/* 3DBC0 800627C0 3084FFFF */  andi      $a0, $a0, 0xFFFF
/* 3DBC4 800627C4 00042102 */  srl       $a0, $a0, 4
/* 3DBC8 800627C8 30820400 */  andi      $v0, $a0, 0x400
/* 3DBCC 800627CC 10400003 */  beqz      $v0, .LIQUE_800627DC
/* 3DBD0 800627D0 00041027 */   nor      $v0, $zero, $a0
/* 3DBD4 800627D4 080189F8 */  j         .LIQUE_800627E0
/* 3DBD8 800627D8 304203FF */   andi     $v0, $v0, 0x3FF
.LIQUE_800627DC:
/* 3DBDC 800627DC 308203FF */  andi      $v0, $a0, 0x3FF
.LIQUE_800627E0:
/* 3DBE0 800627E0 00021040 */  sll       $v0, $v0, 1
/* 3DBE4 800627E4 3C038009 */  lui       $v1, %hi(sins_sintable)
/* 3DBE8 800627E8 00621821 */  addu      $v1, $v1, $v0
/* 3DBEC 800627EC 84632A00 */  lh        $v1, %lo(sins_sintable)($v1)
/* 3DBF0 800627F0 30820800 */  andi      $v0, $a0, 0x800
/* 3DBF4 800627F4 14400003 */  bnez      $v0, .LIQUE_80062804
/* 3DBF8 800627F8 00031023 */   negu     $v0, $v1
/* 3DBFC 800627FC 03E00008 */  jr        $ra
/* 3DC00 80062800 00601021 */   addu     $v0, $v1, $zero
.LIQUE_80062804:
/* 3DC04 80062804 00021400 */  sll       $v0, $v0, 16
/* 3DC08 80062808 03E00008 */  jr        $ra
/* 3DC0C 8006280C 00021403 */   sra      $v0, $v0, 16