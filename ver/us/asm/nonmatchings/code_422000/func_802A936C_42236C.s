.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802A936C_42236C
/* 42236C 802A936C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 422370 802A9370 AFB10014 */  sw        $s1, 0x14($sp)
/* 422374 802A9374 3C11802A */  lui       $s1, %hi(D_8029FBE0)
/* 422378 802A9378 2631FBE0 */  addiu     $s1, $s1, %lo(D_8029FBE0)
/* 42237C 802A937C AFBF001C */  sw        $ra, 0x1c($sp)
/* 422380 802A9380 AFB20018 */  sw        $s2, 0x18($sp)
/* 422384 802A9384 AFB00010 */  sw        $s0, 0x10($sp)
/* 422388 802A9388 F7B60028 */  sdc1      $f22, 0x28($sp)
/* 42238C 802A938C F7B40020 */  sdc1      $f20, 0x20($sp)
/* 422390 802A9390 8623004C */  lh        $v1, 0x4c($s1)
/* 422394 802A9394 3C12800E */  lui       $s2, %hi(gBattleStatus)
/* 422398 802A9398 2652C070 */  addiu     $s2, $s2, %lo(gBattleStatus)
/* 42239C 802A939C 2C62000D */  sltiu     $v0, $v1, 0xd
/* 4223A0 802A93A0 10400184 */  beqz      $v0, L802A99B4_4229B4
/* 4223A4 802A93A4 00031080 */   sll      $v0, $v1, 2
/* 4223A8 802A93A8 3C01802B */  lui       $at, %hi(jtbl_802A9A90_422A90)
/* 4223AC 802A93AC 00220821 */  addu      $at, $at, $v0
/* 4223B0 802A93B0 8C229A90 */  lw        $v0, %lo(jtbl_802A9A90_422A90)($at)
/* 4223B4 802A93B4 00400008 */  jr        $v0
/* 4223B8 802A93B8 00000000 */   nop
glabel L802A93BC_4223BC
/* 4223BC 802A93BC 0C093EB1 */  jal       set_popup_duration
/* 4223C0 802A93C0 24040063 */   addiu    $a0, $zero, 0x63
/* 4223C4 802A93C4 82220061 */  lb        $v0, 0x61($s1)
/* 4223C8 802A93C8 8E300004 */  lw        $s0, 4($s1)
/* 4223CC 802A93CC 10400003 */  beqz      $v0, .L802A93DC
/* 4223D0 802A93D0 0200202D */   daddu    $a0, $s0, $zero
/* 4223D4 802A93D4 0C05128B */  jal       clear_icon_flags
/* 4223D8 802A93D8 24050002 */   addiu    $a1, $zero, 2
.L802A93DC:
/* 4223DC 802A93DC 0200202D */  daddu     $a0, $s0, $zero
/* 4223E0 802A93E0 0C0513AC */  jal       icon_set_opacity
/* 4223E4 802A93E4 240500FF */   addiu    $a1, $zero, 0xff
/* 4223E8 802A93E8 82220061 */  lb        $v0, 0x61($s1)
/* 4223EC 802A93EC 8E300008 */  lw        $s0, 8($s1)
/* 4223F0 802A93F0 10400003 */  beqz      $v0, .L802A9400
/* 4223F4 802A93F4 0200202D */   daddu    $a0, $s0, $zero
/* 4223F8 802A93F8 0C05128B */  jal       clear_icon_flags
/* 4223FC 802A93FC 24050002 */   addiu    $a1, $zero, 2
.L802A9400:
/* 422400 802A9400 0200202D */  daddu     $a0, $s0, $zero
/* 422404 802A9404 0C0513AC */  jal       icon_set_opacity
/* 422408 802A9408 240500FF */   addiu    $a1, $zero, 0xff
/* 42240C 802A940C 82220061 */  lb        $v0, 0x61($s1)
/* 422410 802A9410 8E30000C */  lw        $s0, 0xc($s1)
/* 422414 802A9414 10400003 */  beqz      $v0, .L802A9424
/* 422418 802A9418 0200202D */   daddu    $a0, $s0, $zero
/* 42241C 802A941C 0C05128B */  jal       clear_icon_flags
/* 422420 802A9420 24050002 */   addiu    $a1, $zero, 2
.L802A9424:
/* 422424 802A9424 0200202D */  daddu     $a0, $s0, $zero
/* 422428 802A9428 0C0513AC */  jal       icon_set_opacity
/* 42242C 802A942C 240500FF */   addiu    $a1, $zero, 0xff
/* 422430 802A9430 82220061 */  lb        $v0, 0x61($s1)
/* 422434 802A9434 8E300010 */  lw        $s0, 0x10($s1)
/* 422438 802A9438 10400003 */  beqz      $v0, .L802A9448
/* 42243C 802A943C 0200202D */   daddu    $a0, $s0, $zero
/* 422440 802A9440 0C05128B */  jal       clear_icon_flags
/* 422444 802A9444 24050002 */   addiu    $a1, $zero, 2
.L802A9448:
/* 422448 802A9448 0200202D */  daddu     $a0, $s0, $zero
/* 42244C 802A944C 0C0513AC */  jal       icon_set_opacity
/* 422450 802A9450 240500FF */   addiu    $a1, $zero, 0xff
/* 422454 802A9454 82220061 */  lb        $v0, 0x61($s1)
/* 422458 802A9458 8E300014 */  lw        $s0, 0x14($s1)
/* 42245C 802A945C 10400003 */  beqz      $v0, .L802A946C
/* 422460 802A9460 0200202D */   daddu    $a0, $s0, $zero
/* 422464 802A9464 0C05128B */  jal       clear_icon_flags
/* 422468 802A9468 24050002 */   addiu    $a1, $zero, 2
.L802A946C:
/* 42246C 802A946C 0200202D */  daddu     $a0, $s0, $zero
/* 422470 802A9470 0C0513AC */  jal       icon_set_opacity
/* 422474 802A9474 240500FF */   addiu    $a1, $zero, 0xff
/* 422478 802A9478 82220061 */  lb        $v0, 0x61($s1)
/* 42247C 802A947C 8E300018 */  lw        $s0, 0x18($s1)
/* 422480 802A9480 10400003 */  beqz      $v0, .L802A9490
/* 422484 802A9484 0200202D */   daddu    $a0, $s0, $zero
/* 422488 802A9488 0C05128B */  jal       clear_icon_flags
/* 42248C 802A948C 24050002 */   addiu    $a1, $zero, 2
.L802A9490:
/* 422490 802A9490 0200202D */  daddu     $a0, $s0, $zero
/* 422494 802A9494 0C0513AC */  jal       icon_set_opacity
/* 422498 802A9498 240500FF */   addiu    $a1, $zero, 0xff
/* 42249C 802A949C 24020001 */  addiu     $v0, $zero, 1
/* 4224A0 802A94A0 080AA66D */  j         L802A99B4_4229B4
/* 4224A4 802A94A4 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A94A8_4224A8
/* 4224A8 802A94A8 0C093EB1 */  jal       set_popup_duration
/* 4224AC 802A94AC 24040063 */   addiu    $a0, $zero, 0x63
/* 4224B0 802A94B0 96220056 */  lhu       $v0, 0x56($s1)
/* 4224B4 802A94B4 24420014 */  addiu     $v0, $v0, 0x14
/* 4224B8 802A94B8 A6220056 */  sh        $v0, 0x56($s1)
/* 4224BC 802A94BC 00021400 */  sll       $v0, $v0, 0x10
/* 4224C0 802A94C0 00021403 */  sra       $v0, $v0, 0x10
/* 4224C4 802A94C4 28420033 */  slti      $v0, $v0, 0x33
/* 4224C8 802A94C8 14400002 */  bnez      $v0, .L802A94D4
/* 4224CC 802A94CC 24020032 */   addiu    $v0, $zero, 0x32
/* 4224D0 802A94D0 A6220056 */  sh        $v0, 0x56($s1)
.L802A94D4:
/* 4224D4 802A94D4 8E240004 */  lw        $a0, 4($s1)
/* 4224D8 802A94D8 86250056 */  lh        $a1, 0x56($s1)
/* 4224DC 802A94DC 0C051261 */  jal       set_icon_render_pos
/* 4224E0 802A94E0 86260058 */   lh       $a2, 0x58($s1)
/* 4224E4 802A94E4 8E240008 */  lw        $a0, 8($s1)
/* 4224E8 802A94E8 86250056 */  lh        $a1, 0x56($s1)
/* 4224EC 802A94EC 86260058 */  lh        $a2, 0x58($s1)
/* 4224F0 802A94F0 24A50015 */  addiu     $a1, $a1, 0x15
/* 4224F4 802A94F4 0C051261 */  jal       set_icon_render_pos
/* 4224F8 802A94F8 24C6FFFD */   addiu    $a2, $a2, -3
/* 4224FC 802A94FC 8E24000C */  lw        $a0, 0xc($s1)
/* 422500 802A9500 86250056 */  lh        $a1, 0x56($s1)
/* 422504 802A9504 86260058 */  lh        $a2, 0x58($s1)
/* 422508 802A9508 24A50005 */  addiu     $a1, $a1, 5
/* 42250C 802A950C 0C051261 */  jal       set_icon_render_pos
/* 422510 802A9510 24C60001 */   addiu    $a2, $a2, 1
/* 422514 802A9514 8E240010 */  lw        $a0, 0x10($s1)
/* 422518 802A9518 86250056 */  lh        $a1, 0x56($s1)
/* 42251C 802A951C 86260058 */  lh        $a2, 0x58($s1)
/* 422520 802A9520 24A5FFF9 */  addiu     $a1, $a1, -7
/* 422524 802A9524 0C051261 */  jal       set_icon_render_pos
/* 422528 802A9528 24C60001 */   addiu    $a2, $a2, 1
/* 42252C 802A952C 8E240014 */  lw        $a0, 0x14($s1)
/* 422530 802A9530 86250056 */  lh        $a1, 0x56($s1)
/* 422534 802A9534 86260058 */  lh        $a2, 0x58($s1)
/* 422538 802A9538 24A5FFED */  addiu     $a1, $a1, -0x13
/* 42253C 802A953C 0C051261 */  jal       set_icon_render_pos
/* 422540 802A9540 24C60001 */   addiu    $a2, $a2, 1
/* 422544 802A9544 8E240018 */  lw        $a0, 0x18($s1)
/* 422548 802A9548 86260058 */  lh        $a2, 0x58($s1)
/* 42254C 802A954C 86250056 */  lh        $a1, 0x56($s1)
/* 422550 802A9550 0C051261 */  jal       set_icon_render_pos
/* 422554 802A9554 24C6FFE9 */   addiu    $a2, $a2, -0x17
/* 422558 802A9558 8222005E */  lb        $v0, 0x5e($s1)
/* 42255C 802A955C 10400115 */  beqz      $v0, L802A99B4_4229B4
/* 422560 802A9560 00000000 */   nop
/* 422564 802A9564 8E30001C */  lw        $s0, 0x1c($s1)
/* 422568 802A9568 86260058 */  lh        $a2, 0x58($s1)
/* 42256C 802A956C 86250056 */  lh        $a1, 0x56($s1)
/* 422570 802A9570 0200202D */  daddu     $a0, $s0, $zero
/* 422574 802A9574 0C051261 */  jal       set_icon_render_pos
/* 422578 802A9578 24A50032 */   addiu    $a1, $a1, 0x32
/* 42257C 802A957C 82220061 */  lb        $v0, 0x61($s1)
/* 422580 802A9580 1040010C */  beqz      $v0, L802A99B4_4229B4
/* 422584 802A9584 0200202D */   daddu    $a0, $s0, $zero
/* 422588 802A9588 0C05128B */  jal       clear_icon_flags
/* 42258C 802A958C 24050002 */   addiu    $a1, $zero, 2
/* 422590 802A9590 080AA66D */  j         L802A99B4_4229B4
/* 422594 802A9594 00000000 */   nop
glabel L802A9598_422598
/* 422598 802A9598 0C093EB1 */  jal       set_popup_duration
/* 42259C 802A959C 24040063 */   addiu    $a0, $zero, 0x63
/* 4225A0 802A95A0 8622004E */  lh        $v0, 0x4e($s1)
/* 4225A4 802A95A4 2842000F */  slti      $v0, $v0, 0xf
/* 4225A8 802A95A8 10400013 */  beqz      $v0, .L802A95F8
/* 4225AC 802A95AC 00000000 */   nop
/* 4225B0 802A95B0 8E240004 */  lw        $a0, 4($s1)
/* 4225B4 802A95B4 0C0513AC */  jal       icon_set_opacity
/* 4225B8 802A95B8 240500FF */   addiu    $a1, $zero, 0xff
/* 4225BC 802A95BC 8E240008 */  lw        $a0, 8($s1)
/* 4225C0 802A95C0 0C0513AC */  jal       icon_set_opacity
/* 4225C4 802A95C4 240500FF */   addiu    $a1, $zero, 0xff
/* 4225C8 802A95C8 8E24000C */  lw        $a0, 0xc($s1)
/* 4225CC 802A95CC 0C0513AC */  jal       icon_set_opacity
/* 4225D0 802A95D0 240500FF */   addiu    $a1, $zero, 0xff
/* 4225D4 802A95D4 8E240010 */  lw        $a0, 0x10($s1)
/* 4225D8 802A95D8 0C0513AC */  jal       icon_set_opacity
/* 4225DC 802A95DC 240500FF */   addiu    $a1, $zero, 0xff
/* 4225E0 802A95E0 8E240014 */  lw        $a0, 0x14($s1)
/* 4225E4 802A95E4 0C0513AC */  jal       icon_set_opacity
/* 4225E8 802A95E8 240500FF */   addiu    $a1, $zero, 0xff
/* 4225EC 802A95EC 8E240018 */  lw        $a0, 0x18($s1)
/* 4225F0 802A95F0 0C0513AC */  jal       icon_set_opacity
/* 4225F4 802A95F4 240500FF */   addiu    $a1, $zero, 0xff
.L802A95F8:
/* 4225F8 802A95F8 8622004E */  lh        $v0, 0x4e($s1)
/* 4225FC 802A95FC 9623004E */  lhu       $v1, 0x4e($s1)
/* 422600 802A9600 10400003 */  beqz      $v0, .L802A9610
/* 422604 802A9604 2462FFFF */   addiu    $v0, $v1, -1
/* 422608 802A9608 080AA66D */  j         L802A99B4_4229B4
/* 42260C 802A960C A622004E */   sh       $v0, 0x4e($s1)
.L802A9610:
/* 422610 802A9610 A6200054 */  sh        $zero, 0x54($s1)
/* 422614 802A9614 8E420210 */  lw        $v0, 0x210($s2)
/* 422618 802A9618 3C030004 */  lui       $v1, 4
/* 42261C 802A961C 00431024 */  and       $v0, $v0, $v1
/* 422620 802A9620 14400007 */  bnez      $v0, .L802A9640
/* 422624 802A9624 2402000B */   addiu    $v0, $zero, 0xb
/* 422628 802A9628 82420083 */  lb        $v0, 0x83($s2)
/* 42262C 802A962C 28420002 */  slti      $v0, $v0, 2
/* 422630 802A9630 10400002 */  beqz      $v0, .L802A963C
/* 422634 802A9634 24020001 */   addiu    $v0, $zero, 1
/* 422638 802A9638 A222005F */  sb        $v0, 0x5f($s1)
.L802A963C:
/* 42263C 802A963C 2402000B */  addiu     $v0, $zero, 0xb
.L802A9640:
/* 422640 802A9640 A622004C */  sh        $v0, 0x4c($s1)
glabel L802A9644_422644
/* 422644 802A9644 0C093EB1 */  jal       set_popup_duration
/* 422648 802A9648 24040063 */   addiu    $a0, $zero, 0x63
/* 42264C 802A964C 82420083 */  lb        $v0, 0x83($s2)
/* 422650 802A9650 044000D8 */  bltz      $v0, L802A99B4_4229B4
/* 422654 802A9654 3C045555 */   lui      $a0, 0x5555
/* 422658 802A9658 34845556 */  ori       $a0, $a0, 0x5556
/* 42265C 802A965C 86220050 */  lh        $v0, 0x50($s1)
/* 422660 802A9660 8E430434 */  lw        $v1, 0x434($s2)
/* 422664 802A9664 00021080 */  sll       $v0, $v0, 2
/* 422668 802A9668 00431021 */  addu      $v0, $v0, $v1
/* 42266C 802A966C 8C500000 */  lw        $s0, ($v0)
/* 422670 802A9670 86220052 */  lh        $v0, 0x52($s1)
/* 422674 802A9674 26030002 */  addiu     $v1, $s0, 2
/* 422678 802A9678 00431023 */  subu      $v0, $v0, $v1
/* 42267C 802A967C 00440018 */  mult      $v0, $a0
/* 422680 802A9680 86230054 */  lh        $v1, 0x54($s1)
/* 422684 802A9684 000217C3 */  sra       $v0, $v0, 0x1f
/* 422688 802A9688 44831000 */  mtc1      $v1, $f2
/* 42268C 802A968C 00000000 */  nop
/* 422690 802A9690 468010A0 */  cvt.s.w   $f2, $f2
/* 422694 802A9694 00004010 */  mfhi      $t0
/* 422698 802A9698 01021023 */  subu      $v0, $t0, $v0
/* 42269C 802A969C 4482A000 */  mtc1      $v0, $f20
/* 4226A0 802A96A0 00000000 */  nop
/* 4226A4 802A96A4 4680A520 */  cvt.s.w   $f20, $f20
/* 4226A8 802A96A8 4614103C */  c.lt.s    $f2, $f20
/* 4226AC 802A96AC 00000000 */  nop
/* 4226B0 802A96B0 4502000B */  bc1fl     .L802A96E0
/* 4226B4 802A96B4 4614A580 */   add.s    $f22, $f20, $f20
/* 4226B8 802A96B8 8E240014 */  lw        $a0, 0x14($s1)
/* 4226BC 802A96BC 3C058029 */  lui       $a1, %hi(D_802928CC)
/* 4226C0 802A96C0 24A528CC */  addiu     $a1, $a1, %lo(D_802928CC)
/* 4226C4 802A96C4 0C0511FF */  jal       set_menu_icon_script
/* 4226C8 802A96C8 00000000 */   nop
/* 4226CC 802A96CC 86220054 */  lh        $v0, 0x54($s1)
/* 4226D0 802A96D0 14400031 */  bnez      $v0, .L802A9798
/* 4226D4 802A96D4 A2400084 */   sb       $zero, 0x84($s2)
/* 4226D8 802A96D8 080AA5E1 */  j         .L802A9784
/* 4226DC 802A96DC 00000000 */   nop
.L802A96E0:
/* 4226E0 802A96E0 4616103C */  c.lt.s    $f2, $f22
/* 4226E4 802A96E4 00000000 */  nop
/* 4226E8 802A96E8 4500000E */  bc1f      .L802A9724
/* 4226EC 802A96EC 00000000 */   nop
/* 4226F0 802A96F0 8E240010 */  lw        $a0, 0x10($s1)
/* 4226F4 802A96F4 3C058029 */  lui       $a1, %hi(D_80292874)
/* 4226F8 802A96F8 24A52874 */  addiu     $a1, $a1, %lo(D_80292874)
/* 4226FC 802A96FC 0C0511FF */  jal       set_menu_icon_script
/* 422700 802A9700 00000000 */   nop
/* 422704 802A9704 86220054 */  lh        $v0, 0x54($s1)
/* 422708 802A9708 24030001 */  addiu     $v1, $zero, 1
/* 42270C 802A970C 44820000 */  mtc1      $v0, $f0
/* 422710 802A9710 00000000 */  nop
/* 422714 802A9714 46800020 */  cvt.s.w   $f0, $f0
/* 422718 802A9718 46140032 */  c.eq.s    $f0, $f20
/* 42271C 802A971C 080AA5DF */  j         .L802A977C
/* 422720 802A9720 A2430084 */   sb       $v1, 0x84($s2)
.L802A9724:
/* 422724 802A9724 3C014040 */  lui       $at, 0x4040
/* 422728 802A9728 44810000 */  mtc1      $at, $f0
/* 42272C 802A972C 00000000 */  nop
/* 422730 802A9730 4600A002 */  mul.s     $f0, $f20, $f0
/* 422734 802A9734 00000000 */  nop
/* 422738 802A9738 4600103C */  c.lt.s    $f2, $f0
/* 42273C 802A973C 00000000 */  nop
/* 422740 802A9740 45000016 */  bc1f      .L802A979C
/* 422744 802A9744 00101027 */   nor      $v0, $zero, $s0
/* 422748 802A9748 8E24000C */  lw        $a0, 0xc($s1)
/* 42274C 802A974C 3C058029 */  lui       $a1, %hi(D_8029281C)
/* 422750 802A9750 24A5281C */  addiu     $a1, $a1, %lo(D_8029281C)
/* 422754 802A9754 0C0511FF */  jal       set_menu_icon_script
/* 422758 802A9758 00000000 */   nop
/* 42275C 802A975C 86220054 */  lh        $v0, 0x54($s1)
/* 422760 802A9760 24030002 */  addiu     $v1, $zero, 2
/* 422764 802A9764 A2430084 */  sb        $v1, 0x84($s2)
/* 422768 802A9768 44820000 */  mtc1      $v0, $f0
/* 42276C 802A976C 00000000 */  nop
/* 422770 802A9770 46800020 */  cvt.s.w   $f0, $f0
/* 422774 802A9774 46160032 */  c.eq.s    $f0, $f22
/* 422778 802A9778 00000000 */  nop
.L802A977C:
/* 42277C 802A977C 45000007 */  bc1f      .L802A979C
/* 422780 802A9780 00101027 */   nor      $v0, $zero, $s0
.L802A9784:
/* 422784 802A9784 82220062 */  lb        $v0, 0x62($s1)
/* 422788 802A9788 10400004 */  beqz      $v0, .L802A979C
/* 42278C 802A978C 00101027 */   nor      $v0, $zero, $s0
/* 422790 802A9790 0C05272D */  jal       sfx_play_sound
/* 422794 802A9794 24040233 */   addiu    $a0, $zero, 0x233
.L802A9798:
/* 422798 802A9798 00101027 */  nor       $v0, $zero, $s0
.L802A979C:
/* 42279C 802A979C 86230052 */  lh        $v1, 0x52($s1)
/* 4227A0 802A97A0 86240054 */  lh        $a0, 0x54($s1)
/* 4227A4 802A97A4 00431021 */  addu      $v0, $v0, $v1
/* 4227A8 802A97A8 14820019 */  bne       $a0, $v0, .L802A9810
/* 4227AC 802A97AC 24020003 */   addiu    $v0, $zero, 3
/* 4227B0 802A97B0 3C058029 */  lui       $a1, %hi(D_80292788)
/* 4227B4 802A97B4 24A52788 */  addiu     $a1, $a1, %lo(D_80292788)
/* 4227B8 802A97B8 8E240008 */  lw        $a0, 8($s1)
/* 4227BC 802A97BC 0C0511FF */  jal       set_menu_icon_script
/* 4227C0 802A97C0 A2420084 */   sb       $v0, 0x84($s2)
/* 4227C4 802A97C4 8E240018 */  lw        $a0, 0x18($s1)
/* 4227C8 802A97C8 3C058011 */  lui       $a1, %hi(D_80108FF0)
/* 4227CC 802A97CC 24A58FF0 */  addiu     $a1, $a1, %lo(D_80108FF0)
/* 4227D0 802A97D0 0C0511FF */  jal       set_menu_icon_script
/* 4227D4 802A97D4 00000000 */   nop
/* 4227D8 802A97D8 82220062 */  lb        $v0, 0x62($s1)
/* 4227DC 802A97DC 10400003 */  beqz      $v0, .L802A97EC
/* 4227E0 802A97E0 00000000 */   nop
/* 4227E4 802A97E4 0C05272D */  jal       sfx_play_sound
/* 4227E8 802A97E8 24040234 */   addiu    $a0, $zero, 0x234
.L802A97EC:
/* 4227EC 802A97EC 8222005E */  lb        $v0, 0x5e($s1)
/* 4227F0 802A97F0 10400007 */  beqz      $v0, .L802A9810
/* 4227F4 802A97F4 24030002 */   addiu    $v1, $zero, 2
/* 4227F8 802A97F8 10430005 */  beq       $v0, $v1, .L802A9810
/* 4227FC 802A97FC 00000000 */   nop
/* 422800 802A9800 96220052 */  lhu       $v0, 0x52($s1)
/* 422804 802A9804 A223005E */  sb        $v1, 0x5e($s1)
/* 422808 802A9808 2442FFFC */  addiu     $v0, $v0, -4
/* 42280C 802A980C A6220054 */  sh        $v0, 0x54($s1)
.L802A9810:
/* 422810 802A9810 86220050 */  lh        $v0, 0x50($s1)
/* 422814 802A9814 8E430434 */  lw        $v1, 0x434($s2)
/* 422818 802A9818 86240054 */  lh        $a0, 0x54($s1)
/* 42281C 802A981C 00021080 */  sll       $v0, $v0, 2
/* 422820 802A9820 00431021 */  addu      $v0, $v0, $v1
/* 422824 802A9824 86230052 */  lh        $v1, 0x52($s1)
/* 422828 802A9828 8C420000 */  lw        $v0, ($v0)
/* 42282C 802A982C 00641823 */  subu      $v1, $v1, $a0
/* 422830 802A9830 00431023 */  subu      $v0, $v0, $v1
/* 422834 802A9834 24500003 */  addiu     $s0, $v0, 3
/* 422838 802A9838 06020001 */  bltzl     $s0, .L802A9840
/* 42283C 802A983C 0000802D */   daddu    $s0, $zero, $zero
.L802A9840:
/* 422840 802A9840 8E420210 */  lw        $v0, 0x210($s2)
/* 422844 802A9844 3C030004 */  lui       $v1, 4
/* 422848 802A9848 00431024 */  and       $v0, $v0, $v1
/* 42284C 802A984C 1440000D */  bnez      $v0, .L802A9884
/* 422850 802A9850 00000000 */   nop
/* 422854 802A9854 1600000B */  bnez      $s0, .L802A9884
/* 422858 802A9858 00000000 */   nop
/* 42285C 802A985C 8222005E */  lb        $v0, 0x5e($s1)
/* 422860 802A9860 14400008 */  bnez      $v0, .L802A9884
/* 422864 802A9864 00000000 */   nop
/* 422868 802A9868 82420083 */  lb        $v0, 0x83($s2)
/* 42286C 802A986C 28420002 */  slti      $v0, $v0, 2
/* 422870 802A9870 10400004 */  beqz      $v0, .L802A9884
/* 422874 802A9874 2402FFFF */   addiu    $v0, $zero, -1
/* 422878 802A9878 A2420081 */  sb        $v0, 0x81($s2)
/* 42287C 802A987C 080AA66B */  j         .L802A99AC
/* 422880 802A9880 A2420086 */   sb       $v0, 0x86($s2)
.L802A9884:
/* 422884 802A9884 82430431 */  lb        $v1, 0x431($s2)
/* 422888 802A9888 00701823 */  subu      $v1, $v1, $s0
/* 42288C 802A988C 04620001 */  bltzl     $v1, .L802A9894
/* 422890 802A9890 24630040 */   addiu    $v1, $v1, 0x40
.L802A9894:
/* 422894 802A9894 82420081 */  lb        $v0, 0x81($s2)
/* 422898 802A9898 1440001C */  bnez      $v0, .L802A990C
/* 42289C 802A989C 00000000 */   nop
/* 4228A0 802A98A0 1A00001A */  blez      $s0, .L802A990C
/* 4228A4 802A98A4 0000202D */   daddu    $a0, $zero, $zero
/* 4228A8 802A98A8 3C070004 */  lui       $a3, 4
/* 4228AC 802A98AC 24060001 */  addiu     $a2, $zero, 1
/* 4228B0 802A98B0 3C05800E */  lui       $a1, %hi(gBattleStatus)
/* 4228B4 802A98B4 24A5C070 */  addiu     $a1, $a1, %lo(gBattleStatus)
.L802A98B8:
/* 4228B8 802A98B8 28620040 */  slti      $v0, $v1, 0x40
/* 4228BC 802A98BC 50400001 */  beql      $v0, $zero, .L802A98C4
/* 4228C0 802A98C0 2463FFC0 */   addiu    $v1, $v1, -0x40
.L802A98C4:
/* 4228C4 802A98C4 00031080 */  sll       $v0, $v1, 2
/* 4228C8 802A98C8 02421021 */  addu      $v0, $s2, $v0
/* 4228CC 802A98CC 8C420230 */  lw        $v0, 0x230($v0)
/* 4228D0 802A98D0 00471024 */  and       $v0, $v0, $a3
/* 4228D4 802A98D4 10400004 */  beqz      $v0, .L802A98E8
/* 4228D8 802A98D8 00000000 */   nop
/* 4228DC 802A98DC 8222005E */  lb        $v0, 0x5e($s1)
/* 4228E0 802A98E0 50400007 */  beql      $v0, $zero, .L802A9900
/* 4228E4 802A98E4 24840001 */   addiu    $a0, $a0, 1
.L802A98E8:
/* 4228E8 802A98E8 8CA20000 */  lw        $v0, ($a1)
/* 4228EC 802A98EC A2460081 */  sb        $a2, 0x81($s2)
/* 4228F0 802A98F0 A2460086 */  sb        $a2, 0x86($s2)
/* 4228F4 802A98F4 34422000 */  ori       $v0, $v0, 0x2000
/* 4228F8 802A98F8 ACA20000 */  sw        $v0, ($a1)
/* 4228FC 802A98FC 24840001 */  addiu     $a0, $a0, 1
.L802A9900:
/* 422900 802A9900 0090102A */  slt       $v0, $a0, $s0
/* 422904 802A9904 1440FFEC */  bnez      $v0, .L802A98B8
/* 422908 802A9908 24630001 */   addiu    $v1, $v1, 1
.L802A990C:
/* 42290C 802A990C 82420083 */  lb        $v0, 0x83($s2)
/* 422910 802A9910 28420002 */  slti      $v0, $v0, 2
/* 422914 802A9914 14400005 */  bnez      $v0, .L802A992C
/* 422918 802A9918 00000000 */   nop
/* 42291C 802A991C 86230054 */  lh        $v1, 0x54($s1)
/* 422920 802A9920 86220052 */  lh        $v0, 0x52($s1)
/* 422924 802A9924 10620023 */  beq       $v1, $v0, L802A99B4_4229B4
/* 422928 802A9928 00000000 */   nop
.L802A992C:
/* 42292C 802A992C 96220054 */  lhu       $v0, 0x54($s1)
/* 422930 802A9930 86230052 */  lh        $v1, 0x52($s1)
/* 422934 802A9934 24420001 */  addiu     $v0, $v0, 1
/* 422938 802A9938 A6220054 */  sh        $v0, 0x54($s1)
/* 42293C 802A993C 00021400 */  sll       $v0, $v0, 0x10
/* 422940 802A9940 00021403 */  sra       $v0, $v0, 0x10
/* 422944 802A9944 0062182A */  slt       $v1, $v1, $v0
/* 422948 802A9948 1060001A */  beqz      $v1, L802A99B4_4229B4
/* 42294C 802A994C 00000000 */   nop
/* 422950 802A9950 82420081 */  lb        $v0, 0x81($s2)
/* 422954 802A9954 14400002 */  bnez      $v0, .L802A9960
/* 422958 802A9958 2402FFFF */   addiu    $v0, $zero, -1
/* 42295C 802A995C A2420081 */  sb        $v0, 0x81($s2)
.L802A9960:
/* 422960 802A9960 82430081 */  lb        $v1, 0x81($s2)
/* 422964 802A9964 24020001 */  addiu     $v0, $zero, 1
/* 422968 802A9968 14620003 */  bne       $v1, $v0, .L802A9978
/* 42296C 802A996C 00000000 */   nop
/* 422970 802A9970 0C09A458 */  jal       func_80269160
/* 422974 802A9974 00000000 */   nop
.L802A9978:
/* 422978 802A9978 0C093EB1 */  jal       set_popup_duration
/* 42297C 802A997C 0000202D */   daddu    $a0, $zero, $zero
/* 422980 802A9980 24020005 */  addiu     $v0, $zero, 5
/* 422984 802A9984 A6220054 */  sh        $v0, 0x54($s1)
/* 422988 802A9988 2402000C */  addiu     $v0, $zero, 0xc
/* 42298C 802A998C 080AA66D */  j         L802A99B4_4229B4
/* 422990 802A9990 A622004C */   sh       $v0, 0x4c($s1)
glabel L802A9994_422994
/* 422994 802A9994 86220054 */  lh        $v0, 0x54($s1)
/* 422998 802A9998 96230054 */  lhu       $v1, 0x54($s1)
/* 42299C 802A999C 10400003 */  beqz      $v0, .L802A99AC
/* 4229A0 802A99A0 2462FFFF */   addiu    $v0, $v1, -1
/* 4229A4 802A99A4 080AA66D */  j         L802A99B4_4229B4
/* 4229A8 802A99A8 A6220054 */   sh       $v0, 0x54($s1)
.L802A99AC:
/* 4229AC 802A99AC 0C09A327 */  jal       func_80268C9C
/* 4229B0 802A99B0 00000000 */   nop
glabel L802A99B4_4229B4
/* 4229B4 802A99B4 8FBF001C */  lw        $ra, 0x1c($sp)
/* 4229B8 802A99B8 8FB20018 */  lw        $s2, 0x18($sp)
/* 4229BC 802A99BC 8FB10014 */  lw        $s1, 0x14($sp)
/* 4229C0 802A99C0 8FB00010 */  lw        $s0, 0x10($sp)
/* 4229C4 802A99C4 D7B60028 */  ldc1      $f22, 0x28($sp)
/* 4229C8 802A99C8 D7B40020 */  ldc1      $f20, 0x20($sp)
/* 4229CC 802A99CC 03E00008 */  jr        $ra
/* 4229D0 802A99D0 27BD0030 */   addiu    $sp, $sp, 0x30
