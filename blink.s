
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 d9 04 00 00 69 05 00 00 69 05 00 00     ... ....i...i...
	...
      2c:	27 4c 00 00 00 00 00 00 00 00 00 00 ad 4c 00 00     'L...........L..
      3c:	f5 4c 00 00 69 05 00 00 69 05 00 00 69 05 00 00     .L..i...i...i...
      4c:	69 05 00 00 69 05 00 00 69 05 00 00 59 11 00 00     i...i...i...Y...
      5c:	95 0a 00 00 69 05 00 00 69 05 00 00 69 05 00 00     ....i...i...i...
      6c:	69 05 00 00 69 05 00 00 69 05 00 00 19 03 00 00     i...i...i.......
      7c:	69 05 00 00 69 05 00 00 69 05 00 00 e5 25 00 00     i...i...i....%..
      8c:	69 05 00 00 69 05 00 00 69 05 00 00 69 05 00 00     i...i...i...i...
      9c:	69 05 00 00 69 05 00 00 00 00 00 00 00 00 00 00     i...i...........
      ac:	69 05 00 00 69 05 00 00 69 05 00 00 69 05 00 00     i...i...i...i...
      bc:	69 05 00 00                                         i...

000000c0 <dut_pwr_on>:
      c0:	b580      	push	{r7, lr}
      c2:	af00      	add	r7, sp, #0
      c4:	4b02      	ldr	r3, [pc, #8]	; (d0 <dut_pwr_on+0x10>)
      c6:	2201      	movs	r2, #1
      c8:	625a      	str	r2, [r3, #36]	; 0x24
      ca:	46c0      	nop			; (mov r8, r8)
      cc:	46bd      	mov	sp, r7
      ce:	bd80      	pop	{r7, pc}
      d0:	400b0000 	.word	0x400b0000

000000d4 <servo_pwr_off>:
      d4:	b580      	push	{r7, lr}
      d6:	af00      	add	r7, sp, #0
      d8:	4b02      	ldr	r3, [pc, #8]	; (e4 <servo_pwr_off+0x10>)
      da:	2201      	movs	r2, #1
      dc:	621a      	str	r2, [r3, #32]
      de:	46c0      	nop			; (mov r8, r8)
      e0:	46bd      	mov	sp, r7
      e2:	bd80      	pop	{r7, pc}
      e4:	400b0000 	.word	0x400b0000

000000e8 <dut_on>:
      e8:	b580      	push	{r7, lr}
      ea:	af00      	add	r7, sp, #0
      ec:	4b02      	ldr	r3, [pc, #8]	; (f8 <dut_on+0x10>)
      ee:	2222      	movs	r2, #34	; 0x22
      f0:	625a      	str	r2, [r3, #36]	; 0x24
      f2:	46c0      	nop			; (mov r8, r8)
      f4:	46bd      	mov	sp, r7
      f6:	bd80      	pop	{r7, pc}
      f8:	400b0000 	.word	0x400b0000

000000fc <dut_off>:
      fc:	b580      	push	{r7, lr}
      fe:	af00      	add	r7, sp, #0
     100:	4b02      	ldr	r3, [pc, #8]	; (10c <dut_off+0x10>)
     102:	2222      	movs	r2, #34	; 0x22
     104:	621a      	str	r2, [r3, #32]
     106:	46c0      	nop			; (mov r8, r8)
     108:	46bd      	mov	sp, r7
     10a:	bd80      	pop	{r7, pc}
     10c:	400b0000 	.word	0x400b0000

00000110 <dut_reset_off>:
     110:	b580      	push	{r7, lr}
     112:	af00      	add	r7, sp, #0
     114:	4b03      	ldr	r3, [pc, #12]	; (124 <dut_reset_off+0x14>)
     116:	2280      	movs	r2, #128	; 0x80
     118:	0112      	lsls	r2, r2, #4
     11a:	625a      	str	r2, [r3, #36]	; 0x24
     11c:	46c0      	nop			; (mov r8, r8)
     11e:	46bd      	mov	sp, r7
     120:	bd80      	pop	{r7, pc}
     122:	46c0      	nop			; (mov r8, r8)
     124:	400b0000 	.word	0x400b0000

00000128 <dut_reset_on>:
     128:	b580      	push	{r7, lr}
     12a:	af00      	add	r7, sp, #0
     12c:	4b03      	ldr	r3, [pc, #12]	; (13c <dut_reset_on+0x14>)
     12e:	2280      	movs	r2, #128	; 0x80
     130:	0112      	lsls	r2, r2, #4
     132:	621a      	str	r2, [r3, #32]
     134:	46c0      	nop			; (mov r8, r8)
     136:	46bd      	mov	sp, r7
     138:	bd80      	pop	{r7, pc}
     13a:	46c0      	nop			; (mov r8, r8)
     13c:	400b0000 	.word	0x400b0000

00000140 <dut_set_speed>:
     140:	b590      	push	{r4, r7, lr}
     142:	b085      	sub	sp, #20
     144:	af00      	add	r7, sp, #0
     146:	6078      	str	r0, [r7, #4]
     148:	687b      	ldr	r3, [r7, #4]
     14a:	121a      	asrs	r2, r3, #8
     14c:	4b11      	ldr	r3, [pc, #68]	; (194 <dut_set_speed+0x54>)
     14e:	601a      	str	r2, [r3, #0]
     150:	687b      	ldr	r3, [r7, #4]
     152:	4a11      	ldr	r2, [pc, #68]	; (198 <dut_set_speed+0x58>)
     154:	4353      	muls	r3, r2
     156:	14db      	asrs	r3, r3, #19
     158:	60fb      	str	r3, [r7, #12]
     15a:	687b      	ldr	r3, [r7, #4]
     15c:	2b00      	cmp	r3, #0
     15e:	db07      	blt.n	170 <dut_set_speed+0x30>
     160:	4b0e      	ldr	r3, [pc, #56]	; (19c <dut_set_speed+0x5c>)
     162:	4a0e      	ldr	r2, [pc, #56]	; (19c <dut_set_speed+0x5c>)
     164:	6812      	ldr	r2, [r2, #0]
     166:	2180      	movs	r1, #128	; 0x80
     168:	0089      	lsls	r1, r1, #2
     16a:	430a      	orrs	r2, r1
     16c:	601a      	str	r2, [r3, #0]
     16e:	e005      	b.n	17c <dut_set_speed+0x3c>
     170:	4b0a      	ldr	r3, [pc, #40]	; (19c <dut_set_speed+0x5c>)
     172:	4a0a      	ldr	r2, [pc, #40]	; (19c <dut_set_speed+0x5c>)
     174:	6812      	ldr	r2, [r2, #0]
     176:	490a      	ldr	r1, [pc, #40]	; (1a0 <dut_set_speed+0x60>)
     178:	400a      	ands	r2, r1
     17a:	601a      	str	r2, [r3, #0]
     17c:	4c09      	ldr	r4, [pc, #36]	; (1a4 <dut_set_speed+0x64>)
     17e:	68fb      	ldr	r3, [r7, #12]
     180:	0018      	movs	r0, r3
     182:	f004 ff01 	bl	4f88 <abs>
     186:	0003      	movs	r3, r0
     188:	6063      	str	r3, [r4, #4]
     18a:	46c0      	nop			; (mov r8, r8)
     18c:	46bd      	mov	sp, r7
     18e:	b005      	add	sp, #20
     190:	bd90      	pop	{r4, r7, pc}
     192:	46c0      	nop			; (mov r8, r8)
     194:	200008a4 	.word	0x200008a4
     198:	000013db 	.word	0x000013db
     19c:	400b0000 	.word	0x400b0000
     1a0:	fffffdff 	.word	0xfffffdff
     1a4:	40090000 	.word	0x40090000

000001a8 <dut_set_torque>:
     1a8:	b590      	push	{r4, r7, lr}
     1aa:	b085      	sub	sp, #20
     1ac:	af00      	add	r7, sp, #0
     1ae:	6078      	str	r0, [r7, #4]
     1b0:	4b11      	ldr	r3, [pc, #68]	; (1f8 <dut_set_torque+0x50>)
     1b2:	687a      	ldr	r2, [r7, #4]
     1b4:	601a      	str	r2, [r3, #0]
     1b6:	687b      	ldr	r3, [r7, #4]
     1b8:	4a10      	ldr	r2, [pc, #64]	; (1fc <dut_set_torque+0x54>)
     1ba:	4353      	muls	r3, r2
     1bc:	139b      	asrs	r3, r3, #14
     1be:	60fb      	str	r3, [r7, #12]
     1c0:	687b      	ldr	r3, [r7, #4]
     1c2:	2b00      	cmp	r3, #0
     1c4:	db07      	blt.n	1d6 <dut_set_torque+0x2e>
     1c6:	4b0e      	ldr	r3, [pc, #56]	; (200 <dut_set_torque+0x58>)
     1c8:	4a0d      	ldr	r2, [pc, #52]	; (200 <dut_set_torque+0x58>)
     1ca:	6812      	ldr	r2, [r2, #0]
     1cc:	2180      	movs	r1, #128	; 0x80
     1ce:	00c9      	lsls	r1, r1, #3
     1d0:	430a      	orrs	r2, r1
     1d2:	601a      	str	r2, [r3, #0]
     1d4:	e005      	b.n	1e2 <dut_set_torque+0x3a>
     1d6:	4b0a      	ldr	r3, [pc, #40]	; (200 <dut_set_torque+0x58>)
     1d8:	4a09      	ldr	r2, [pc, #36]	; (200 <dut_set_torque+0x58>)
     1da:	6812      	ldr	r2, [r2, #0]
     1dc:	4909      	ldr	r1, [pc, #36]	; (204 <dut_set_torque+0x5c>)
     1de:	400a      	ands	r2, r1
     1e0:	601a      	str	r2, [r3, #0]
     1e2:	4c09      	ldr	r4, [pc, #36]	; (208 <dut_set_torque+0x60>)
     1e4:	68fb      	ldr	r3, [r7, #12]
     1e6:	0018      	movs	r0, r3
     1e8:	f004 fece 	bl	4f88 <abs>
     1ec:	0003      	movs	r3, r0
     1ee:	60a3      	str	r3, [r4, #8]
     1f0:	46c0      	nop			; (mov r8, r8)
     1f2:	46bd      	mov	sp, r7
     1f4:	b005      	add	sp, #20
     1f6:	bd90      	pop	{r4, r7, pc}
     1f8:	200008a8 	.word	0x200008a8
     1fc:	00001a98 	.word	0x00001a98
     200:	400b0000 	.word	0x400b0000
     204:	fffffbff 	.word	0xfffffbff
     208:	40090000 	.word	0x40090000

0000020c <main>:
     20c:	b580      	push	{r7, lr}
     20e:	b084      	sub	sp, #16
     210:	af00      	add	r7, sp, #0
     212:	f001 fe31 	bl	1e78 <SystemInit>
     216:	f000 f9e5 	bl	5e4 <mdb485_init>
     21a:	f000 fdff 	bl	e1c <mdb232_init>
     21e:	f001 fe61 	bl	1ee4 <RemoteMacInit>
     222:	4b30      	ldr	r3, [pc, #192]	; (2e4 <__GCC_VERSION+0xc7>)
     224:	60fb      	str	r3, [r7, #12]
     226:	e009      	b.n	23c <__GCC_VERSION+0x1f>
     228:	68fb      	ldr	r3, [r7, #12]
     22a:	1e5a      	subs	r2, r3, #1
     22c:	60fa      	str	r2, [r7, #12]
     22e:	2b00      	cmp	r3, #0
     230:	d104      	bne.n	23c <__GCC_VERSION+0x1f>
     232:	4b2d      	ldr	r3, [pc, #180]	; (2e8 <__GCC_VERSION+0xcb>)
     234:	0018      	movs	r0, r3
     236:	f003 f8db 	bl	33f0 <par_save>
     23a:	e004      	b.n	246 <__GCC_VERSION+0x29>
     23c:	4b2b      	ldr	r3, [pc, #172]	; (2ec <__GCC_VERSION+0xcf>)
     23e:	681b      	ldr	r3, [r3, #0]
     240:	2208      	movs	r2, #8
     242:	4013      	ands	r3, r2
     244:	d0f0      	beq.n	228 <__GCC_VERSION+0xb>
     246:	003b      	movs	r3, r7
     248:	0018      	movs	r0, r3
     24a:	f003 f8fd 	bl	3448 <par_read>
     24e:	003b      	movs	r3, r7
     250:	210c      	movs	r1, #12
     252:	0018      	movs	r0, r3
     254:	f003 f868 	bl	3328 <crc16>
     258:	1e03      	subs	r3, r0, #0
     25a:	d108      	bne.n	26e <__GCC_VERSION+0x51>
     25c:	003b      	movs	r3, r7
     25e:	0018      	movs	r0, r3
     260:	f001 fef0 	bl	2044 <EthernetConfig>
     264:	003b      	movs	r3, r7
     266:	0018      	movs	r0, r3
     268:	f002 f9ea 	bl	2640 <network_config>
     26c:	e007      	b.n	27e <__GCC_VERSION+0x61>
     26e:	4b1e      	ldr	r3, [pc, #120]	; (2e8 <__GCC_VERSION+0xcb>)
     270:	0018      	movs	r0, r3
     272:	f001 fee7 	bl	2044 <EthernetConfig>
     276:	4b1c      	ldr	r3, [pc, #112]	; (2e8 <__GCC_VERSION+0xcb>)
     278:	0018      	movs	r0, r3
     27a:	f002 f9e1 	bl	2640 <network_config>
     27e:	f7ff ff1f 	bl	c0 <dut_pwr_on>
     282:	f7ff ff3b 	bl	fc <dut_off>
     286:	f7ff ff43 	bl	110 <dut_reset_off>
     28a:	4b19      	ldr	r3, [pc, #100]	; (2f0 <__GCC_VERSION+0xd3>)
     28c:	0018      	movs	r0, r3
     28e:	f006 fafd 	bl	688c <osMutexCreate>
     292:	0002      	movs	r2, r0
     294:	4b17      	ldr	r3, [pc, #92]	; (2f4 <__GCC_VERSION+0xd7>)
     296:	601a      	str	r2, [r3, #0]
     298:	f005 fcf8 	bl	5c8c <osKernelInitialize>
     29c:	4b16      	ldr	r3, [pc, #88]	; (2f8 <__GCC_VERSION+0xdb>)
     29e:	2100      	movs	r1, #0
     2a0:	0018      	movs	r0, r3
     2a2:	f006 fdd5 	bl	6e50 <osMessageCreate>
     2a6:	0002      	movs	r2, r0
     2a8:	4b14      	ldr	r3, [pc, #80]	; (2fc <__GCC_VERSION+0xdf>)
     2aa:	601a      	str	r2, [r3, #0]
     2ac:	4b14      	ldr	r3, [pc, #80]	; (300 <__GCC_VERSION+0xe3>)
     2ae:	2100      	movs	r1, #0
     2b0:	0018      	movs	r0, r3
     2b2:	f005 fe7d 	bl	5fb0 <osThreadCreate>
     2b6:	0002      	movs	r2, r0
     2b8:	4b12      	ldr	r3, [pc, #72]	; (304 <__GCC_VERSION+0xe7>)
     2ba:	601a      	str	r2, [r3, #0]
     2bc:	4b12      	ldr	r3, [pc, #72]	; (308 <__GCC_VERSION+0xeb>)
     2be:	2100      	movs	r1, #0
     2c0:	0018      	movs	r0, r3
     2c2:	f005 fe75 	bl	5fb0 <osThreadCreate>
     2c6:	0002      	movs	r2, r0
     2c8:	4b10      	ldr	r3, [pc, #64]	; (30c <__GCC_VERSION+0xef>)
     2ca:	601a      	str	r2, [r3, #0]
     2cc:	4b10      	ldr	r3, [pc, #64]	; (310 <__GCC_VERSION+0xf3>)
     2ce:	2100      	movs	r1, #0
     2d0:	0018      	movs	r0, r3
     2d2:	f005 fe6d 	bl	5fb0 <osThreadCreate>
     2d6:	0002      	movs	r2, r0
     2d8:	4b0e      	ldr	r3, [pc, #56]	; (314 <__GCC_VERSION+0xf7>)
     2da:	601a      	str	r2, [r3, #0]
     2dc:	f005 fd72 	bl	5dc4 <osKernelStart>
     2e0:	e7fe      	b.n	2e0 <__GCC_VERSION+0xc3>
     2e2:	46c0      	nop			; (mov r8, r8)
     2e4:	00989680 	.word	0x00989680
     2e8:	000091bc 	.word	0x000091bc
     2ec:	400a8000 	.word	0x400a8000
     2f0:	00008aa8 	.word	0x00008aa8
     2f4:	20000890 	.word	0x20000890
     2f8:	00008aa0 	.word	0x00008aa0
     2fc:	2000086c 	.word	0x2000086c
     300:	00008a70 	.word	0x00008a70
     304:	20000860 	.word	0x20000860
     308:	00008a80 	.word	0x00008a80
     30c:	20000864 	.word	0x20000864
     310:	00008a90 	.word	0x00008a90
     314:	20000868 	.word	0x20000868

00000318 <TIMER1_Handler>:
     318:	b580      	push	{r7, lr}
     31a:	af00      	add	r7, sp, #0
     31c:	4b05      	ldr	r3, [pc, #20]	; (334 <TIMER1_Handler+0x1c>)
     31e:	2200      	movs	r2, #0
     320:	655a      	str	r2, [r3, #84]	; 0x54
     322:	4b05      	ldr	r3, [pc, #20]	; (338 <TIMER1_Handler+0x20>)
     324:	681b      	ldr	r3, [r3, #0]
     326:	2101      	movs	r1, #1
     328:	0018      	movs	r0, r3
     32a:	f006 f9f3 	bl	6714 <osSignalSet>
     32e:	46c0      	nop			; (mov r8, r8)
     330:	46bd      	mov	sp, r7
     332:	bd80      	pop	{r7, pc}
     334:	40070000 	.word	0x40070000
     338:	20000868 	.word	0x20000868

0000033c <threadDUTProceed>:
     33c:	b580      	push	{r7, lr}
     33e:	b092      	sub	sp, #72	; 0x48
     340:	af00      	add	r7, sp, #0
     342:	6078      	str	r0, [r7, #4]
     344:	2300      	movs	r3, #0
     346:	647b      	str	r3, [r7, #68]	; 0x44
     348:	2318      	movs	r3, #24
     34a:	18fb      	adds	r3, r7, r3
     34c:	2200      	movs	r2, #0
     34e:	601a      	str	r2, [r3, #0]
     350:	2318      	movs	r3, #24
     352:	18fb      	adds	r3, r7, r3
     354:	2200      	movs	r2, #0
     356:	605a      	str	r2, [r3, #4]
     358:	2318      	movs	r3, #24
     35a:	18fb      	adds	r3, r7, r3
     35c:	2200      	movs	r2, #0
     35e:	609a      	str	r2, [r3, #8]
     360:	2318      	movs	r3, #24
     362:	18fb      	adds	r3, r7, r3
     364:	2200      	movs	r2, #0
     366:	60da      	str	r2, [r3, #12]
     368:	2318      	movs	r3, #24
     36a:	18fb      	adds	r3, r7, r3
     36c:	2200      	movs	r2, #0
     36e:	611a      	str	r2, [r3, #16]
     370:	2318      	movs	r3, #24
     372:	18fb      	adds	r3, r7, r3
     374:	2200      	movs	r2, #0
     376:	615a      	str	r2, [r3, #20]
     378:	2318      	movs	r3, #24
     37a:	18fb      	adds	r3, r7, r3
     37c:	2200      	movs	r2, #0
     37e:	619a      	str	r2, [r3, #24]
     380:	2318      	movs	r3, #24
     382:	18fb      	adds	r3, r7, r3
     384:	2200      	movs	r2, #0
     386:	61da      	str	r2, [r3, #28]
     388:	230c      	movs	r3, #12
     38a:	18f8      	adds	r0, r7, r3
     38c:	2301      	movs	r3, #1
     38e:	425b      	negs	r3, r3
     390:	001a      	movs	r2, r3
     392:	2100      	movs	r1, #0
     394:	f006 f9ec 	bl	6770 <osSignalWait>
     398:	230c      	movs	r3, #12
     39a:	18fb      	adds	r3, r7, r3
     39c:	681b      	ldr	r3, [r3, #0]
     39e:	2b08      	cmp	r3, #8
     3a0:	d1f2      	bne.n	388 <threadDUTProceed+0x4c>
     3a2:	230c      	movs	r3, #12
     3a4:	18fb      	adds	r3, r7, r3
     3a6:	685b      	ldr	r3, [r3, #4]
     3a8:	2b02      	cmp	r3, #2
     3aa:	d02e      	beq.n	40a <_stack_size+0xa>
     3ac:	2b08      	cmp	r3, #8
     3ae:	d044      	beq.n	43a <_stack_size+0x3a>
     3b0:	2b01      	cmp	r3, #1
     3b2:	d16a      	bne.n	48a <_stack_size+0x8a>
     3b4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3b6:	2b01      	cmp	r3, #1
     3b8:	d91f      	bls.n	3fa <threadDUTProceed+0xbe>
     3ba:	4b34      	ldr	r3, [pc, #208]	; (48c <_stack_size+0x8c>)
     3bc:	681b      	ldr	r3, [r3, #0]
     3be:	021a      	lsls	r2, r3, #8
     3c0:	2318      	movs	r3, #24
     3c2:	18fb      	adds	r3, r7, r3
     3c4:	609a      	str	r2, [r3, #8]
     3c6:	4b32      	ldr	r3, [pc, #200]	; (490 <_stack_size+0x90>)
     3c8:	681a      	ldr	r2, [r3, #0]
     3ca:	2318      	movs	r3, #24
     3cc:	18fb      	adds	r3, r7, r3
     3ce:	605a      	str	r2, [r3, #4]
     3d0:	f003 fe86 	bl	40e0 <fsm_get_cyccnt>
     3d4:	0002      	movs	r2, r0
     3d6:	2318      	movs	r3, #24
     3d8:	18fb      	adds	r3, r7, r3
     3da:	619a      	str	r2, [r3, #24]
     3dc:	f003 fe76 	bl	40cc <fsm_get_mode>
     3e0:	0003      	movs	r3, r0
     3e2:	001a      	movs	r2, r3
     3e4:	2318      	movs	r3, #24
     3e6:	18fb      	adds	r3, r7, r3
     3e8:	61da      	str	r2, [r3, #28]
     3ea:	2318      	movs	r3, #24
     3ec:	18fb      	adds	r3, r7, r3
     3ee:	2120      	movs	r1, #32
     3f0:	0018      	movs	r0, r3
     3f2:	f003 f89d 	bl	3530 <mdb_fifo_write>
     3f6:	2300      	movs	r3, #0
     3f8:	647b      	str	r3, [r7, #68]	; 0x44
     3fa:	2301      	movs	r3, #1
     3fc:	647b      	str	r3, [r7, #68]	; 0x44
     3fe:	2202      	movs	r2, #2
     400:	2102      	movs	r1, #2
     402:	2010      	movs	r0, #16
     404:	f000 fa76 	bl	8f4 <mdb485_read_inputregs>
     408:	e03f      	b.n	48a <_stack_size+0x8a>
     40a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     40c:	2202      	movs	r2, #2
     40e:	4313      	orrs	r3, r2
     410:	647b      	str	r3, [r7, #68]	; 0x44
     412:	2318      	movs	r3, #24
     414:	18fb      	adds	r3, r7, r3
     416:	2200      	movs	r2, #0
     418:	611a      	str	r2, [r3, #16]
     41a:	f000 fe1d 	bl	1058 <mdb232_get_crc>
     41e:	1e03      	subs	r3, r0, #0
     420:	d130      	bne.n	484 <_stack_size+0x84>
     422:	2308      	movs	r3, #8
     424:	18fb      	adds	r3, r7, r3
     426:	0018      	movs	r0, r3
     428:	f000 fe34 	bl	1094 <mdb232_bikm_get_torque>
     42c:	0002      	movs	r2, r0
     42e:	2318      	movs	r3, #24
     430:	18fb      	adds	r3, r7, r3
     432:	611a      	str	r2, [r3, #16]
     434:	2300      	movs	r3, #0
     436:	60bb      	str	r3, [r7, #8]
     438:	e024      	b.n	484 <_stack_size+0x84>
     43a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     43c:	2204      	movs	r2, #4
     43e:	4313      	orrs	r3, r2
     440:	647b      	str	r3, [r7, #68]	; 0x44
     442:	f000 facd 	bl	9e0 <mdb485_get_crc>
     446:	1e03      	subs	r3, r0, #0
     448:	d11e      	bne.n	488 <_stack_size+0x88>
     44a:	f000 fab5 	bl	9b8 <mdb485_get_func>
     44e:	0003      	movs	r3, r0
     450:	643b      	str	r3, [r7, #64]	; 0x40
     452:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     454:	2b04      	cmp	r3, #4
     456:	d117      	bne.n	488 <_stack_size+0x88>
     458:	f000 fae0 	bl	a1c <mdb485_si30_get_counter>
     45c:	0003      	movs	r3, r0
     45e:	63fb      	str	r3, [r7, #60]	; 0x3c
     460:	2318      	movs	r3, #24
     462:	18fb      	adds	r3, r7, r3
     464:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     466:	601a      	str	r2, [r3, #0]
     468:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     46a:	021b      	lsls	r3, r3, #8
     46c:	001a      	movs	r2, r3
     46e:	2304      	movs	r3, #4
     470:	4313      	orrs	r3, r2
     472:	63bb      	str	r3, [r7, #56]	; 0x38
     474:	4b07      	ldr	r3, [pc, #28]	; (494 <_stack_size+0x94>)
     476:	681b      	ldr	r3, [r3, #0]
     478:	6bb9      	ldr	r1, [r7, #56]	; 0x38
     47a:	2200      	movs	r2, #0
     47c:	0018      	movs	r0, r3
     47e:	f006 fd13 	bl	6ea8 <osMessagePut>
     482:	e001      	b.n	488 <_stack_size+0x88>
     484:	46c0      	nop			; (mov r8, r8)
     486:	e77f      	b.n	388 <threadDUTProceed+0x4c>
     488:	46c0      	nop			; (mov r8, r8)
     48a:	e77d      	b.n	388 <threadDUTProceed+0x4c>
     48c:	200008a4 	.word	0x200008a4
     490:	200008a8 	.word	0x200008a8
     494:	2000086c 	.word	0x2000086c

00000498 <threadFSMProceed>:
     498:	b580      	push	{r7, lr}
     49a:	b086      	sub	sp, #24
     49c:	af00      	add	r7, sp, #0
     49e:	6078      	str	r0, [r7, #4]
     4a0:	4b0b      	ldr	r3, [pc, #44]	; (4d0 <threadFSMProceed+0x38>)
     4a2:	6819      	ldr	r1, [r3, #0]
     4a4:	2308      	movs	r3, #8
     4a6:	18f8      	adds	r0, r7, r3
     4a8:	2301      	movs	r3, #1
     4aa:	425b      	negs	r3, r3
     4ac:	001a      	movs	r2, r3
     4ae:	f006 fd1f 	bl	6ef0 <osMessageGet>
     4b2:	2308      	movs	r3, #8
     4b4:	18fb      	adds	r3, r7, r3
     4b6:	681b      	ldr	r3, [r3, #0]
     4b8:	2b10      	cmp	r3, #16
     4ba:	d1f1      	bne.n	4a0 <threadFSMProceed+0x8>
     4bc:	2308      	movs	r3, #8
     4be:	18fb      	adds	r3, r7, r3
     4c0:	685b      	ldr	r3, [r3, #4]
     4c2:	617b      	str	r3, [r7, #20]
     4c4:	4b03      	ldr	r3, [pc, #12]	; (4d4 <threadFSMProceed+0x3c>)
     4c6:	681b      	ldr	r3, [r3, #0]
     4c8:	697a      	ldr	r2, [r7, #20]
     4ca:	0010      	movs	r0, r2
     4cc:	4798      	blx	r3
     4ce:	e7e7      	b.n	4a0 <threadFSMProceed+0x8>
     4d0:	2000086c 	.word	0x2000086c
     4d4:	20000018 	.word	0x20000018

000004d8 <handler_reset>:
     4d8:	b580      	push	{r7, lr}
     4da:	b082      	sub	sp, #8
     4dc:	af00      	add	r7, sp, #0
     4de:	4b1a      	ldr	r3, [pc, #104]	; (548 <handler_reset+0x70>)
     4e0:	607b      	str	r3, [r7, #4]
     4e2:	4b1a      	ldr	r3, [pc, #104]	; (54c <handler_reset+0x74>)
     4e4:	603b      	str	r3, [r7, #0]
     4e6:	e007      	b.n	4f8 <handler_reset+0x20>
     4e8:	683b      	ldr	r3, [r7, #0]
     4ea:	1d1a      	adds	r2, r3, #4
     4ec:	603a      	str	r2, [r7, #0]
     4ee:	687a      	ldr	r2, [r7, #4]
     4f0:	1d11      	adds	r1, r2, #4
     4f2:	6079      	str	r1, [r7, #4]
     4f4:	6812      	ldr	r2, [r2, #0]
     4f6:	601a      	str	r2, [r3, #0]
     4f8:	683a      	ldr	r2, [r7, #0]
     4fa:	4b15      	ldr	r3, [pc, #84]	; (550 <handler_reset+0x78>)
     4fc:	429a      	cmp	r2, r3
     4fe:	d3f3      	bcc.n	4e8 <handler_reset+0x10>
     500:	4b14      	ldr	r3, [pc, #80]	; (554 <handler_reset+0x7c>)
     502:	607b      	str	r3, [r7, #4]
     504:	4b14      	ldr	r3, [pc, #80]	; (558 <handler_reset+0x80>)
     506:	603b      	str	r3, [r7, #0]
     508:	e007      	b.n	51a <handler_reset+0x42>
     50a:	683b      	ldr	r3, [r7, #0]
     50c:	1d1a      	adds	r2, r3, #4
     50e:	603a      	str	r2, [r7, #0]
     510:	687a      	ldr	r2, [r7, #4]
     512:	1d11      	adds	r1, r2, #4
     514:	6079      	str	r1, [r7, #4]
     516:	6812      	ldr	r2, [r2, #0]
     518:	601a      	str	r2, [r3, #0]
     51a:	683a      	ldr	r2, [r7, #0]
     51c:	4b0f      	ldr	r3, [pc, #60]	; (55c <handler_reset+0x84>)
     51e:	429a      	cmp	r2, r3
     520:	d3f3      	bcc.n	50a <handler_reset+0x32>
     522:	4b0f      	ldr	r3, [pc, #60]	; (560 <handler_reset+0x88>)
     524:	603b      	str	r3, [r7, #0]
     526:	e004      	b.n	532 <handler_reset+0x5a>
     528:	683b      	ldr	r3, [r7, #0]
     52a:	1d1a      	adds	r2, r3, #4
     52c:	603a      	str	r2, [r7, #0]
     52e:	2200      	movs	r2, #0
     530:	601a      	str	r2, [r3, #0]
     532:	683a      	ldr	r2, [r7, #0]
     534:	4b0b      	ldr	r3, [pc, #44]	; (564 <handler_reset+0x8c>)
     536:	429a      	cmp	r2, r3
     538:	d3f6      	bcc.n	528 <handler_reset+0x50>
     53a:	f7ff fe67 	bl	20c <main>
     53e:	46c0      	nop			; (mov r8, r8)
     540:	46bd      	mov	sp, r7
     542:	b002      	add	sp, #8
     544:	bd80      	pop	{r7, pc}
     546:	46c0      	nop			; (mov r8, r8)
     548:	000095e4 	.word	0x000095e4
     54c:	20000000 	.word	0x20000000
     550:	20000860 	.word	0x20000860
     554:	00009e44 	.word	0x00009e44
     558:	20100000 	.word	0x20100000
     55c:	201002a0 	.word	0x201002a0
     560:	20000860 	.word	0x20000860
     564:	200060fc 	.word	0x200060fc

00000568 <default_handler>:
     568:	b580      	push	{r7, lr}
     56a:	af00      	add	r7, sp, #0
     56c:	e7fe      	b.n	56c <default_handler+0x4>
     56e:	46c0      	nop			; (mov r8, r8)

00000570 <__NVIC_EnableIRQ>:
     570:	b580      	push	{r7, lr}
     572:	b082      	sub	sp, #8
     574:	af00      	add	r7, sp, #0
     576:	0002      	movs	r2, r0
     578:	1dfb      	adds	r3, r7, #7
     57a:	701a      	strb	r2, [r3, #0]
     57c:	1dfb      	adds	r3, r7, #7
     57e:	781b      	ldrb	r3, [r3, #0]
     580:	2b7f      	cmp	r3, #127	; 0x7f
     582:	d809      	bhi.n	598 <__NVIC_EnableIRQ+0x28>
     584:	4b06      	ldr	r3, [pc, #24]	; (5a0 <__NVIC_EnableIRQ+0x30>)
     586:	1dfa      	adds	r2, r7, #7
     588:	7812      	ldrb	r2, [r2, #0]
     58a:	0011      	movs	r1, r2
     58c:	221f      	movs	r2, #31
     58e:	400a      	ands	r2, r1
     590:	2101      	movs	r1, #1
     592:	4091      	lsls	r1, r2
     594:	000a      	movs	r2, r1
     596:	601a      	str	r2, [r3, #0]
     598:	46c0      	nop			; (mov r8, r8)
     59a:	46bd      	mov	sp, r7
     59c:	b002      	add	sp, #8
     59e:	bd80      	pop	{r7, pc}
     5a0:	e000e100 	.word	0xe000e100

000005a4 <__NVIC_DisableIRQ>:
     5a4:	b580      	push	{r7, lr}
     5a6:	b082      	sub	sp, #8
     5a8:	af00      	add	r7, sp, #0
     5aa:	0002      	movs	r2, r0
     5ac:	1dfb      	adds	r3, r7, #7
     5ae:	701a      	strb	r2, [r3, #0]
     5b0:	1dfb      	adds	r3, r7, #7
     5b2:	781b      	ldrb	r3, [r3, #0]
     5b4:	2b7f      	cmp	r3, #127	; 0x7f
     5b6:	d80e      	bhi.n	5d6 <__NVIC_DisableIRQ+0x32>
     5b8:	4909      	ldr	r1, [pc, #36]	; (5e0 <__NVIC_DisableIRQ+0x3c>)
     5ba:	1dfb      	adds	r3, r7, #7
     5bc:	781b      	ldrb	r3, [r3, #0]
     5be:	001a      	movs	r2, r3
     5c0:	231f      	movs	r3, #31
     5c2:	4013      	ands	r3, r2
     5c4:	2201      	movs	r2, #1
     5c6:	409a      	lsls	r2, r3
     5c8:	0013      	movs	r3, r2
     5ca:	2280      	movs	r2, #128	; 0x80
     5cc:	508b      	str	r3, [r1, r2]
     5ce:	f3bf 8f4f 	dsb	sy
     5d2:	f3bf 8f6f 	isb	sy
     5d6:	46c0      	nop			; (mov r8, r8)
     5d8:	46bd      	mov	sp, r7
     5da:	b002      	add	sp, #8
     5dc:	bd80      	pop	{r7, pc}
     5de:	46c0      	nop			; (mov r8, r8)
     5e0:	e000e100 	.word	0xe000e100

000005e4 <mdb485_init>:
     5e4:	b580      	push	{r7, lr}
     5e6:	af00      	add	r7, sp, #0
     5e8:	4b14      	ldr	r3, [pc, #80]	; (63c <mdb485_init+0x58>)
     5ea:	2234      	movs	r2, #52	; 0x34
     5ec:	625a      	str	r2, [r3, #36]	; 0x24
     5ee:	4b13      	ldr	r3, [pc, #76]	; (63c <mdb485_init+0x58>)
     5f0:	2205      	movs	r2, #5
     5f2:	629a      	str	r2, [r3, #40]	; 0x28
     5f4:	4b11      	ldr	r3, [pc, #68]	; (63c <mdb485_init+0x58>)
     5f6:	4a11      	ldr	r2, [pc, #68]	; (63c <mdb485_init+0x58>)
     5f8:	6b52      	ldr	r2, [r2, #52]	; 0x34
     5fa:	213f      	movs	r1, #63	; 0x3f
     5fc:	438a      	bics	r2, r1
     5fe:	635a      	str	r2, [r3, #52]	; 0x34
     600:	4b0e      	ldr	r3, [pc, #56]	; (63c <mdb485_init+0x58>)
     602:	4a0e      	ldr	r2, [pc, #56]	; (63c <mdb485_init+0x58>)
     604:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     606:	2110      	movs	r1, #16
     608:	430a      	orrs	r2, r1
     60a:	62da      	str	r2, [r3, #44]	; 0x2c
     60c:	4b0b      	ldr	r3, [pc, #44]	; (63c <mdb485_init+0x58>)
     60e:	4a0b      	ldr	r2, [pc, #44]	; (63c <mdb485_init+0x58>)
     610:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     612:	2160      	movs	r1, #96	; 0x60
     614:	430a      	orrs	r2, r1
     616:	62da      	str	r2, [r3, #44]	; 0x2c
     618:	4b08      	ldr	r3, [pc, #32]	; (63c <mdb485_init+0x58>)
     61a:	4a08      	ldr	r2, [pc, #32]	; (63c <mdb485_init+0x58>)
     61c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     61e:	4908      	ldr	r1, [pc, #32]	; (640 <mdb485_init+0x5c>)
     620:	430a      	orrs	r2, r1
     622:	631a      	str	r2, [r3, #48]	; 0x30
     624:	4b05      	ldr	r3, [pc, #20]	; (63c <mdb485_init+0x58>)
     626:	4a05      	ldr	r2, [pc, #20]	; (63c <mdb485_init+0x58>)
     628:	6b92      	ldr	r2, [r2, #56]	; 0x38
     62a:	2140      	movs	r1, #64	; 0x40
     62c:	430a      	orrs	r2, r1
     62e:	639a      	str	r2, [r3, #56]	; 0x38
     630:	2007      	movs	r0, #7
     632:	f7ff ff9d 	bl	570 <__NVIC_EnableIRQ>
     636:	46c0      	nop			; (mov r8, r8)
     638:	46bd      	mov	sp, r7
     63a:	bd80      	pop	{r7, pc}
     63c:	40038000 	.word	0x40038000
     640:	00000301 	.word	0x00000301

00000644 <mdb485_send>:
     644:	b580      	push	{r7, lr}
     646:	b084      	sub	sp, #16
     648:	af00      	add	r7, sp, #0
     64a:	6078      	str	r0, [r7, #4]
     64c:	6039      	str	r1, [r7, #0]
     64e:	4b17      	ldr	r3, [pc, #92]	; (6ac <mdb485_send+0x68>)
     650:	4a16      	ldr	r2, [pc, #88]	; (6ac <mdb485_send+0x68>)
     652:	6812      	ldr	r2, [r2, #0]
     654:	2180      	movs	r1, #128	; 0x80
     656:	0209      	lsls	r1, r1, #8
     658:	430a      	orrs	r2, r1
     65a:	601a      	str	r2, [r3, #0]
     65c:	2300      	movs	r3, #0
     65e:	60fb      	str	r3, [r7, #12]
     660:	e00e      	b.n	680 <mdb485_send+0x3c>
     662:	46c0      	nop			; (mov r8, r8)
     664:	4b12      	ldr	r3, [pc, #72]	; (6b0 <mdb485_send+0x6c>)
     666:	699b      	ldr	r3, [r3, #24]
     668:	2220      	movs	r2, #32
     66a:	4013      	ands	r3, r2
     66c:	d1fa      	bne.n	664 <mdb485_send+0x20>
     66e:	4a10      	ldr	r2, [pc, #64]	; (6b0 <mdb485_send+0x6c>)
     670:	687b      	ldr	r3, [r7, #4]
     672:	1c59      	adds	r1, r3, #1
     674:	6079      	str	r1, [r7, #4]
     676:	781b      	ldrb	r3, [r3, #0]
     678:	6013      	str	r3, [r2, #0]
     67a:	68fb      	ldr	r3, [r7, #12]
     67c:	3301      	adds	r3, #1
     67e:	60fb      	str	r3, [r7, #12]
     680:	68fa      	ldr	r2, [r7, #12]
     682:	683b      	ldr	r3, [r7, #0]
     684:	429a      	cmp	r2, r3
     686:	dbec      	blt.n	662 <mdb485_send+0x1e>
     688:	46c0      	nop			; (mov r8, r8)
     68a:	4b09      	ldr	r3, [pc, #36]	; (6b0 <mdb485_send+0x6c>)
     68c:	699b      	ldr	r3, [r3, #24]
     68e:	2208      	movs	r2, #8
     690:	4013      	ands	r3, r2
     692:	d1fa      	bne.n	68a <mdb485_send+0x46>
     694:	4b05      	ldr	r3, [pc, #20]	; (6ac <mdb485_send+0x68>)
     696:	4a05      	ldr	r2, [pc, #20]	; (6ac <mdb485_send+0x68>)
     698:	6812      	ldr	r2, [r2, #0]
     69a:	4906      	ldr	r1, [pc, #24]	; (6b4 <mdb485_send+0x70>)
     69c:	400a      	ands	r2, r1
     69e:	601a      	str	r2, [r3, #0]
     6a0:	683b      	ldr	r3, [r7, #0]
     6a2:	0018      	movs	r0, r3
     6a4:	46bd      	mov	sp, r7
     6a6:	b004      	add	sp, #16
     6a8:	bd80      	pop	{r7, pc}
     6aa:	46c0      	nop			; (mov r8, r8)
     6ac:	400c0000 	.word	0x400c0000
     6b0:	40038000 	.word	0x40038000
     6b4:	ffff7fff 	.word	0xffff7fff

000006b8 <mdb485_putch>:
     6b8:	b580      	push	{r7, lr}
     6ba:	b082      	sub	sp, #8
     6bc:	af00      	add	r7, sp, #0
     6be:	0002      	movs	r2, r0
     6c0:	1dfb      	adds	r3, r7, #7
     6c2:	701a      	strb	r2, [r3, #0]
     6c4:	46c0      	nop			; (mov r8, r8)
     6c6:	4b06      	ldr	r3, [pc, #24]	; (6e0 <mdb485_putch+0x28>)
     6c8:	699b      	ldr	r3, [r3, #24]
     6ca:	2220      	movs	r2, #32
     6cc:	4013      	ands	r3, r2
     6ce:	d1fa      	bne.n	6c6 <mdb485_putch+0xe>
     6d0:	4b03      	ldr	r3, [pc, #12]	; (6e0 <mdb485_putch+0x28>)
     6d2:	1dfa      	adds	r2, r7, #7
     6d4:	7812      	ldrb	r2, [r2, #0]
     6d6:	601a      	str	r2, [r3, #0]
     6d8:	46c0      	nop			; (mov r8, r8)
     6da:	46bd      	mov	sp, r7
     6dc:	b002      	add	sp, #8
     6de:	bd80      	pop	{r7, pc}
     6e0:	40038000 	.word	0x40038000

000006e4 <mdb485_writeregs>:
     6e4:	b590      	push	{r4, r7, lr}
     6e6:	b089      	sub	sp, #36	; 0x24
     6e8:	af00      	add	r7, sp, #0
     6ea:	0004      	movs	r4, r0
     6ec:	0008      	movs	r0, r1
     6ee:	0011      	movs	r1, r2
     6f0:	607b      	str	r3, [r7, #4]
     6f2:	230f      	movs	r3, #15
     6f4:	18fb      	adds	r3, r7, r3
     6f6:	1c22      	adds	r2, r4, #0
     6f8:	701a      	strb	r2, [r3, #0]
     6fa:	230c      	movs	r3, #12
     6fc:	18fb      	adds	r3, r7, r3
     6fe:	1c02      	adds	r2, r0, #0
     700:	801a      	strh	r2, [r3, #0]
     702:	230a      	movs	r3, #10
     704:	18fb      	adds	r3, r7, r3
     706:	1c0a      	adds	r2, r1, #0
     708:	801a      	strh	r2, [r3, #0]
     70a:	4b48      	ldr	r3, [pc, #288]	; (82c <mdb485_writeregs+0x148>)
     70c:	61bb      	str	r3, [r7, #24]
     70e:	230a      	movs	r3, #10
     710:	18fb      	adds	r3, r7, r3
     712:	881b      	ldrh	r3, [r3, #0]
     714:	005b      	lsls	r3, r3, #1
     716:	617b      	str	r3, [r7, #20]
     718:	69bb      	ldr	r3, [r7, #24]
     71a:	1c5a      	adds	r2, r3, #1
     71c:	61ba      	str	r2, [r7, #24]
     71e:	220f      	movs	r2, #15
     720:	18ba      	adds	r2, r7, r2
     722:	7812      	ldrb	r2, [r2, #0]
     724:	701a      	strb	r2, [r3, #0]
     726:	69bb      	ldr	r3, [r7, #24]
     728:	1c5a      	adds	r2, r3, #1
     72a:	61ba      	str	r2, [r7, #24]
     72c:	2210      	movs	r2, #16
     72e:	701a      	strb	r2, [r3, #0]
     730:	69bb      	ldr	r3, [r7, #24]
     732:	1c5a      	adds	r2, r3, #1
     734:	61ba      	str	r2, [r7, #24]
     736:	220c      	movs	r2, #12
     738:	18ba      	adds	r2, r7, r2
     73a:	8812      	ldrh	r2, [r2, #0]
     73c:	0a12      	lsrs	r2, r2, #8
     73e:	b292      	uxth	r2, r2
     740:	b2d2      	uxtb	r2, r2
     742:	701a      	strb	r2, [r3, #0]
     744:	69bb      	ldr	r3, [r7, #24]
     746:	1c5a      	adds	r2, r3, #1
     748:	61ba      	str	r2, [r7, #24]
     74a:	220c      	movs	r2, #12
     74c:	18ba      	adds	r2, r7, r2
     74e:	8812      	ldrh	r2, [r2, #0]
     750:	b2d2      	uxtb	r2, r2
     752:	701a      	strb	r2, [r3, #0]
     754:	69bb      	ldr	r3, [r7, #24]
     756:	1c5a      	adds	r2, r3, #1
     758:	61ba      	str	r2, [r7, #24]
     75a:	220a      	movs	r2, #10
     75c:	18ba      	adds	r2, r7, r2
     75e:	8812      	ldrh	r2, [r2, #0]
     760:	0a12      	lsrs	r2, r2, #8
     762:	b292      	uxth	r2, r2
     764:	b2d2      	uxtb	r2, r2
     766:	701a      	strb	r2, [r3, #0]
     768:	69bb      	ldr	r3, [r7, #24]
     76a:	1c5a      	adds	r2, r3, #1
     76c:	61ba      	str	r2, [r7, #24]
     76e:	220a      	movs	r2, #10
     770:	18ba      	adds	r2, r7, r2
     772:	8812      	ldrh	r2, [r2, #0]
     774:	b2d2      	uxtb	r2, r2
     776:	701a      	strb	r2, [r3, #0]
     778:	69bb      	ldr	r3, [r7, #24]
     77a:	1c5a      	adds	r2, r3, #1
     77c:	61ba      	str	r2, [r7, #24]
     77e:	697a      	ldr	r2, [r7, #20]
     780:	b2d2      	uxtb	r2, r2
     782:	701a      	strb	r2, [r3, #0]
     784:	697b      	ldr	r3, [r7, #20]
     786:	3307      	adds	r3, #7
     788:	2b10      	cmp	r3, #16
     78a:	dc4a      	bgt.n	822 <mdb485_writeregs+0x13e>
     78c:	2300      	movs	r3, #0
     78e:	61fb      	str	r3, [r7, #28]
     790:	e01b      	b.n	7ca <mdb485_writeregs+0xe6>
     792:	687b      	ldr	r3, [r7, #4]
     794:	1c9a      	adds	r2, r3, #2
     796:	607a      	str	r2, [r7, #4]
     798:	2212      	movs	r2, #18
     79a:	18ba      	adds	r2, r7, r2
     79c:	881b      	ldrh	r3, [r3, #0]
     79e:	8013      	strh	r3, [r2, #0]
     7a0:	69bb      	ldr	r3, [r7, #24]
     7a2:	1c5a      	adds	r2, r3, #1
     7a4:	61ba      	str	r2, [r7, #24]
     7a6:	2212      	movs	r2, #18
     7a8:	18ba      	adds	r2, r7, r2
     7aa:	8812      	ldrh	r2, [r2, #0]
     7ac:	0a12      	lsrs	r2, r2, #8
     7ae:	b292      	uxth	r2, r2
     7b0:	b2d2      	uxtb	r2, r2
     7b2:	701a      	strb	r2, [r3, #0]
     7b4:	69bb      	ldr	r3, [r7, #24]
     7b6:	1c5a      	adds	r2, r3, #1
     7b8:	61ba      	str	r2, [r7, #24]
     7ba:	2212      	movs	r2, #18
     7bc:	18ba      	adds	r2, r7, r2
     7be:	8812      	ldrh	r2, [r2, #0]
     7c0:	b2d2      	uxtb	r2, r2
     7c2:	701a      	strb	r2, [r3, #0]
     7c4:	69fb      	ldr	r3, [r7, #28]
     7c6:	3301      	adds	r3, #1
     7c8:	61fb      	str	r3, [r7, #28]
     7ca:	230a      	movs	r3, #10
     7cc:	18fb      	adds	r3, r7, r3
     7ce:	881a      	ldrh	r2, [r3, #0]
     7d0:	69fb      	ldr	r3, [r7, #28]
     7d2:	429a      	cmp	r2, r3
     7d4:	dcdd      	bgt.n	792 <mdb485_writeregs+0xae>
     7d6:	697b      	ldr	r3, [r7, #20]
     7d8:	1dda      	adds	r2, r3, #7
     7da:	2310      	movs	r3, #16
     7dc:	18fc      	adds	r4, r7, r3
     7de:	4b13      	ldr	r3, [pc, #76]	; (82c <mdb485_writeregs+0x148>)
     7e0:	0011      	movs	r1, r2
     7e2:	0018      	movs	r0, r3
     7e4:	f002 fda0 	bl	3328 <crc16>
     7e8:	0003      	movs	r3, r0
     7ea:	8023      	strh	r3, [r4, #0]
     7ec:	69bb      	ldr	r3, [r7, #24]
     7ee:	1c5a      	adds	r2, r3, #1
     7f0:	61ba      	str	r2, [r7, #24]
     7f2:	2210      	movs	r2, #16
     7f4:	18ba      	adds	r2, r7, r2
     7f6:	8812      	ldrh	r2, [r2, #0]
     7f8:	b2d2      	uxtb	r2, r2
     7fa:	701a      	strb	r2, [r3, #0]
     7fc:	69bb      	ldr	r3, [r7, #24]
     7fe:	1c5a      	adds	r2, r3, #1
     800:	61ba      	str	r2, [r7, #24]
     802:	2210      	movs	r2, #16
     804:	18ba      	adds	r2, r7, r2
     806:	8812      	ldrh	r2, [r2, #0]
     808:	0a12      	lsrs	r2, r2, #8
     80a:	b292      	uxth	r2, r2
     80c:	b2d2      	uxtb	r2, r2
     80e:	701a      	strb	r2, [r3, #0]
     810:	697b      	ldr	r3, [r7, #20]
     812:	3309      	adds	r3, #9
     814:	001a      	movs	r2, r3
     816:	4b05      	ldr	r3, [pc, #20]	; (82c <mdb485_writeregs+0x148>)
     818:	0011      	movs	r1, r2
     81a:	0018      	movs	r0, r3
     81c:	f7ff ff12 	bl	644 <mdb485_send>
     820:	e000      	b.n	824 <mdb485_writeregs+0x140>
     822:	46c0      	nop			; (mov r8, r8)
     824:	46bd      	mov	sp, r7
     826:	b009      	add	sp, #36	; 0x24
     828:	bd90      	pop	{r4, r7, pc}
     82a:	46c0      	nop			; (mov r8, r8)
     82c:	200008bc 	.word	0x200008bc

00000830 <mdb485_readregs>:
     830:	b590      	push	{r4, r7, lr}
     832:	b085      	sub	sp, #20
     834:	af00      	add	r7, sp, #0
     836:	0004      	movs	r4, r0
     838:	0008      	movs	r0, r1
     83a:	0011      	movs	r1, r2
     83c:	1dfb      	adds	r3, r7, #7
     83e:	1c22      	adds	r2, r4, #0
     840:	701a      	strb	r2, [r3, #0]
     842:	1d3b      	adds	r3, r7, #4
     844:	1c02      	adds	r2, r0, #0
     846:	801a      	strh	r2, [r3, #0]
     848:	1cbb      	adds	r3, r7, #2
     84a:	1c0a      	adds	r2, r1, #0
     84c:	801a      	strh	r2, [r3, #0]
     84e:	4b28      	ldr	r3, [pc, #160]	; (8f0 <mdb485_readregs+0xc0>)
     850:	60fb      	str	r3, [r7, #12]
     852:	68fb      	ldr	r3, [r7, #12]
     854:	1c5a      	adds	r2, r3, #1
     856:	60fa      	str	r2, [r7, #12]
     858:	1dfa      	adds	r2, r7, #7
     85a:	7812      	ldrb	r2, [r2, #0]
     85c:	701a      	strb	r2, [r3, #0]
     85e:	68fb      	ldr	r3, [r7, #12]
     860:	1c5a      	adds	r2, r3, #1
     862:	60fa      	str	r2, [r7, #12]
     864:	2203      	movs	r2, #3
     866:	701a      	strb	r2, [r3, #0]
     868:	68fb      	ldr	r3, [r7, #12]
     86a:	1c5a      	adds	r2, r3, #1
     86c:	60fa      	str	r2, [r7, #12]
     86e:	1d3a      	adds	r2, r7, #4
     870:	8812      	ldrh	r2, [r2, #0]
     872:	0a12      	lsrs	r2, r2, #8
     874:	b292      	uxth	r2, r2
     876:	b2d2      	uxtb	r2, r2
     878:	701a      	strb	r2, [r3, #0]
     87a:	68fb      	ldr	r3, [r7, #12]
     87c:	1c5a      	adds	r2, r3, #1
     87e:	60fa      	str	r2, [r7, #12]
     880:	1d3a      	adds	r2, r7, #4
     882:	8812      	ldrh	r2, [r2, #0]
     884:	b2d2      	uxtb	r2, r2
     886:	701a      	strb	r2, [r3, #0]
     888:	68fb      	ldr	r3, [r7, #12]
     88a:	1c5a      	adds	r2, r3, #1
     88c:	60fa      	str	r2, [r7, #12]
     88e:	1cba      	adds	r2, r7, #2
     890:	8812      	ldrh	r2, [r2, #0]
     892:	0a12      	lsrs	r2, r2, #8
     894:	b292      	uxth	r2, r2
     896:	b2d2      	uxtb	r2, r2
     898:	701a      	strb	r2, [r3, #0]
     89a:	68fb      	ldr	r3, [r7, #12]
     89c:	1c5a      	adds	r2, r3, #1
     89e:	60fa      	str	r2, [r7, #12]
     8a0:	1cba      	adds	r2, r7, #2
     8a2:	8812      	ldrh	r2, [r2, #0]
     8a4:	b2d2      	uxtb	r2, r2
     8a6:	701a      	strb	r2, [r3, #0]
     8a8:	230a      	movs	r3, #10
     8aa:	18fc      	adds	r4, r7, r3
     8ac:	4b10      	ldr	r3, [pc, #64]	; (8f0 <mdb485_readregs+0xc0>)
     8ae:	2106      	movs	r1, #6
     8b0:	0018      	movs	r0, r3
     8b2:	f002 fd39 	bl	3328 <crc16>
     8b6:	0003      	movs	r3, r0
     8b8:	8023      	strh	r3, [r4, #0]
     8ba:	68fb      	ldr	r3, [r7, #12]
     8bc:	1c5a      	adds	r2, r3, #1
     8be:	60fa      	str	r2, [r7, #12]
     8c0:	220a      	movs	r2, #10
     8c2:	18ba      	adds	r2, r7, r2
     8c4:	8812      	ldrh	r2, [r2, #0]
     8c6:	b2d2      	uxtb	r2, r2
     8c8:	701a      	strb	r2, [r3, #0]
     8ca:	68fb      	ldr	r3, [r7, #12]
     8cc:	1c5a      	adds	r2, r3, #1
     8ce:	60fa      	str	r2, [r7, #12]
     8d0:	220a      	movs	r2, #10
     8d2:	18ba      	adds	r2, r7, r2
     8d4:	8812      	ldrh	r2, [r2, #0]
     8d6:	0a12      	lsrs	r2, r2, #8
     8d8:	b292      	uxth	r2, r2
     8da:	b2d2      	uxtb	r2, r2
     8dc:	701a      	strb	r2, [r3, #0]
     8de:	4b04      	ldr	r3, [pc, #16]	; (8f0 <mdb485_readregs+0xc0>)
     8e0:	2108      	movs	r1, #8
     8e2:	0018      	movs	r0, r3
     8e4:	f7ff feae 	bl	644 <mdb485_send>
     8e8:	46c0      	nop			; (mov r8, r8)
     8ea:	46bd      	mov	sp, r7
     8ec:	b005      	add	sp, #20
     8ee:	bd90      	pop	{r4, r7, pc}
     8f0:	200008bc 	.word	0x200008bc

000008f4 <mdb485_read_inputregs>:
     8f4:	b590      	push	{r4, r7, lr}
     8f6:	b085      	sub	sp, #20
     8f8:	af00      	add	r7, sp, #0
     8fa:	0004      	movs	r4, r0
     8fc:	0008      	movs	r0, r1
     8fe:	0011      	movs	r1, r2
     900:	1dfb      	adds	r3, r7, #7
     902:	1c22      	adds	r2, r4, #0
     904:	701a      	strb	r2, [r3, #0]
     906:	1d3b      	adds	r3, r7, #4
     908:	1c02      	adds	r2, r0, #0
     90a:	801a      	strh	r2, [r3, #0]
     90c:	1cbb      	adds	r3, r7, #2
     90e:	1c0a      	adds	r2, r1, #0
     910:	801a      	strh	r2, [r3, #0]
     912:	4b28      	ldr	r3, [pc, #160]	; (9b4 <mdb485_read_inputregs+0xc0>)
     914:	60fb      	str	r3, [r7, #12]
     916:	68fb      	ldr	r3, [r7, #12]
     918:	1c5a      	adds	r2, r3, #1
     91a:	60fa      	str	r2, [r7, #12]
     91c:	1dfa      	adds	r2, r7, #7
     91e:	7812      	ldrb	r2, [r2, #0]
     920:	701a      	strb	r2, [r3, #0]
     922:	68fb      	ldr	r3, [r7, #12]
     924:	1c5a      	adds	r2, r3, #1
     926:	60fa      	str	r2, [r7, #12]
     928:	2204      	movs	r2, #4
     92a:	701a      	strb	r2, [r3, #0]
     92c:	68fb      	ldr	r3, [r7, #12]
     92e:	1c5a      	adds	r2, r3, #1
     930:	60fa      	str	r2, [r7, #12]
     932:	1d3a      	adds	r2, r7, #4
     934:	8812      	ldrh	r2, [r2, #0]
     936:	0a12      	lsrs	r2, r2, #8
     938:	b292      	uxth	r2, r2
     93a:	b2d2      	uxtb	r2, r2
     93c:	701a      	strb	r2, [r3, #0]
     93e:	68fb      	ldr	r3, [r7, #12]
     940:	1c5a      	adds	r2, r3, #1
     942:	60fa      	str	r2, [r7, #12]
     944:	1d3a      	adds	r2, r7, #4
     946:	8812      	ldrh	r2, [r2, #0]
     948:	b2d2      	uxtb	r2, r2
     94a:	701a      	strb	r2, [r3, #0]
     94c:	68fb      	ldr	r3, [r7, #12]
     94e:	1c5a      	adds	r2, r3, #1
     950:	60fa      	str	r2, [r7, #12]
     952:	1cba      	adds	r2, r7, #2
     954:	8812      	ldrh	r2, [r2, #0]
     956:	0a12      	lsrs	r2, r2, #8
     958:	b292      	uxth	r2, r2
     95a:	b2d2      	uxtb	r2, r2
     95c:	701a      	strb	r2, [r3, #0]
     95e:	68fb      	ldr	r3, [r7, #12]
     960:	1c5a      	adds	r2, r3, #1
     962:	60fa      	str	r2, [r7, #12]
     964:	1cba      	adds	r2, r7, #2
     966:	8812      	ldrh	r2, [r2, #0]
     968:	b2d2      	uxtb	r2, r2
     96a:	701a      	strb	r2, [r3, #0]
     96c:	230a      	movs	r3, #10
     96e:	18fc      	adds	r4, r7, r3
     970:	4b10      	ldr	r3, [pc, #64]	; (9b4 <mdb485_read_inputregs+0xc0>)
     972:	2106      	movs	r1, #6
     974:	0018      	movs	r0, r3
     976:	f002 fcd7 	bl	3328 <crc16>
     97a:	0003      	movs	r3, r0
     97c:	8023      	strh	r3, [r4, #0]
     97e:	68fb      	ldr	r3, [r7, #12]
     980:	1c5a      	adds	r2, r3, #1
     982:	60fa      	str	r2, [r7, #12]
     984:	220a      	movs	r2, #10
     986:	18ba      	adds	r2, r7, r2
     988:	8812      	ldrh	r2, [r2, #0]
     98a:	b2d2      	uxtb	r2, r2
     98c:	701a      	strb	r2, [r3, #0]
     98e:	68fb      	ldr	r3, [r7, #12]
     990:	1c5a      	adds	r2, r3, #1
     992:	60fa      	str	r2, [r7, #12]
     994:	220a      	movs	r2, #10
     996:	18ba      	adds	r2, r7, r2
     998:	8812      	ldrh	r2, [r2, #0]
     99a:	0a12      	lsrs	r2, r2, #8
     99c:	b292      	uxth	r2, r2
     99e:	b2d2      	uxtb	r2, r2
     9a0:	701a      	strb	r2, [r3, #0]
     9a2:	4b04      	ldr	r3, [pc, #16]	; (9b4 <mdb485_read_inputregs+0xc0>)
     9a4:	2108      	movs	r1, #8
     9a6:	0018      	movs	r0, r3
     9a8:	f7ff fe4c 	bl	644 <mdb485_send>
     9ac:	46c0      	nop			; (mov r8, r8)
     9ae:	46bd      	mov	sp, r7
     9b0:	b005      	add	sp, #20
     9b2:	bd90      	pop	{r4, r7, pc}
     9b4:	200008bc 	.word	0x200008bc

000009b8 <mdb485_get_func>:
     9b8:	b580      	push	{r7, lr}
     9ba:	b082      	sub	sp, #8
     9bc:	af00      	add	r7, sp, #0
     9be:	2007      	movs	r0, #7
     9c0:	f7ff fdf0 	bl	5a4 <__NVIC_DisableIRQ>
     9c4:	4b05      	ldr	r3, [pc, #20]	; (9dc <mdb485_get_func+0x24>)
     9c6:	785b      	ldrb	r3, [r3, #1]
     9c8:	607b      	str	r3, [r7, #4]
     9ca:	2007      	movs	r0, #7
     9cc:	f7ff fdd0 	bl	570 <__NVIC_EnableIRQ>
     9d0:	687b      	ldr	r3, [r7, #4]
     9d2:	0018      	movs	r0, r3
     9d4:	46bd      	mov	sp, r7
     9d6:	b002      	add	sp, #8
     9d8:	bd80      	pop	{r7, pc}
     9da:	46c0      	nop			; (mov r8, r8)
     9dc:	200008ac 	.word	0x200008ac

000009e0 <mdb485_get_crc>:
     9e0:	b590      	push	{r4, r7, lr}
     9e2:	b083      	sub	sp, #12
     9e4:	af00      	add	r7, sp, #0
     9e6:	2007      	movs	r0, #7
     9e8:	f7ff fddc 	bl	5a4 <__NVIC_DisableIRQ>
     9ec:	4b09      	ldr	r3, [pc, #36]	; (a14 <mdb485_get_crc+0x34>)
     9ee:	681a      	ldr	r2, [r3, #0]
     9f0:	1dbc      	adds	r4, r7, #6
     9f2:	4b09      	ldr	r3, [pc, #36]	; (a18 <mdb485_get_crc+0x38>)
     9f4:	0011      	movs	r1, r2
     9f6:	0018      	movs	r0, r3
     9f8:	f002 fc96 	bl	3328 <crc16>
     9fc:	0003      	movs	r3, r0
     9fe:	8023      	strh	r3, [r4, #0]
     a00:	2007      	movs	r0, #7
     a02:	f7ff fdb5 	bl	570 <__NVIC_EnableIRQ>
     a06:	1dbb      	adds	r3, r7, #6
     a08:	881b      	ldrh	r3, [r3, #0]
     a0a:	0018      	movs	r0, r3
     a0c:	46bd      	mov	sp, r7
     a0e:	b003      	add	sp, #12
     a10:	bd90      	pop	{r4, r7, pc}
     a12:	46c0      	nop			; (mov r8, r8)
     a14:	200008cc 	.word	0x200008cc
     a18:	200008ac 	.word	0x200008ac

00000a1c <mdb485_si30_get_counter>:
     a1c:	b580      	push	{r7, lr}
     a1e:	b082      	sub	sp, #8
     a20:	af00      	add	r7, sp, #0
     a22:	4b1a      	ldr	r3, [pc, #104]	; (a8c <mdb485_si30_get_counter+0x70>)
     a24:	607b      	str	r3, [r7, #4]
     a26:	2007      	movs	r0, #7
     a28:	f7ff fdbc 	bl	5a4 <__NVIC_DisableIRQ>
     a2c:	4b18      	ldr	r3, [pc, #96]	; (a90 <mdb485_si30_get_counter+0x74>)
     a2e:	681b      	ldr	r3, [r3, #0]
     a30:	2b00      	cmp	r3, #0
     a32:	d022      	beq.n	a7a <mdb485_si30_get_counter+0x5e>
     a34:	687b      	ldr	r3, [r7, #4]
     a36:	1c5a      	adds	r2, r3, #1
     a38:	607a      	str	r2, [r7, #4]
     a3a:	781b      	ldrb	r3, [r3, #0]
     a3c:	061b      	lsls	r3, r3, #24
     a3e:	603b      	str	r3, [r7, #0]
     a40:	687b      	ldr	r3, [r7, #4]
     a42:	1c5a      	adds	r2, r3, #1
     a44:	607a      	str	r2, [r7, #4]
     a46:	781b      	ldrb	r3, [r3, #0]
     a48:	041b      	lsls	r3, r3, #16
     a4a:	001a      	movs	r2, r3
     a4c:	683b      	ldr	r3, [r7, #0]
     a4e:	4313      	orrs	r3, r2
     a50:	603b      	str	r3, [r7, #0]
     a52:	687b      	ldr	r3, [r7, #4]
     a54:	1c5a      	adds	r2, r3, #1
     a56:	607a      	str	r2, [r7, #4]
     a58:	781b      	ldrb	r3, [r3, #0]
     a5a:	021b      	lsls	r3, r3, #8
     a5c:	001a      	movs	r2, r3
     a5e:	683b      	ldr	r3, [r7, #0]
     a60:	4313      	orrs	r3, r2
     a62:	603b      	str	r3, [r7, #0]
     a64:	687b      	ldr	r3, [r7, #4]
     a66:	781b      	ldrb	r3, [r3, #0]
     a68:	001a      	movs	r2, r3
     a6a:	683b      	ldr	r3, [r7, #0]
     a6c:	4313      	orrs	r3, r2
     a6e:	603b      	str	r3, [r7, #0]
     a70:	2007      	movs	r0, #7
     a72:	f7ff fd7d 	bl	570 <__NVIC_EnableIRQ>
     a76:	683b      	ldr	r3, [r7, #0]
     a78:	e003      	b.n	a82 <mdb485_si30_get_counter+0x66>
     a7a:	2007      	movs	r0, #7
     a7c:	f7ff fd78 	bl	570 <__NVIC_EnableIRQ>
     a80:	2300      	movs	r3, #0
     a82:	0018      	movs	r0, r3
     a84:	46bd      	mov	sp, r7
     a86:	b002      	add	sp, #8
     a88:	bd80      	pop	{r7, pc}
     a8a:	46c0      	nop			; (mov r8, r8)
     a8c:	200008af 	.word	0x200008af
     a90:	200008cc 	.word	0x200008cc

00000a94 <UART2_Handler>:
     a94:	b580      	push	{r7, lr}
     a96:	b082      	sub	sp, #8
     a98:	af00      	add	r7, sp, #0
     a9a:	4b16      	ldr	r3, [pc, #88]	; (af4 <UART2_Handler+0x60>)
     a9c:	2200      	movs	r2, #0
     a9e:	601a      	str	r2, [r3, #0]
     aa0:	4b15      	ldr	r3, [pc, #84]	; (af8 <UART2_Handler+0x64>)
     aa2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     aa4:	2240      	movs	r2, #64	; 0x40
     aa6:	4013      	ands	r3, r2
     aa8:	d016      	beq.n	ad8 <UART2_Handler+0x44>
     aaa:	4b14      	ldr	r3, [pc, #80]	; (afc <UART2_Handler+0x68>)
     aac:	603b      	str	r3, [r7, #0]
     aae:	2300      	movs	r3, #0
     ab0:	607b      	str	r3, [r7, #4]
     ab2:	e009      	b.n	ac8 <UART2_Handler+0x34>
     ab4:	683b      	ldr	r3, [r7, #0]
     ab6:	1c5a      	adds	r2, r3, #1
     ab8:	603a      	str	r2, [r7, #0]
     aba:	4a0f      	ldr	r2, [pc, #60]	; (af8 <UART2_Handler+0x64>)
     abc:	6812      	ldr	r2, [r2, #0]
     abe:	b2d2      	uxtb	r2, r2
     ac0:	701a      	strb	r2, [r3, #0]
     ac2:	687b      	ldr	r3, [r7, #4]
     ac4:	3301      	adds	r3, #1
     ac6:	607b      	str	r3, [r7, #4]
     ac8:	687b      	ldr	r3, [r7, #4]
     aca:	2b0f      	cmp	r3, #15
     acc:	dc04      	bgt.n	ad8 <UART2_Handler+0x44>
     ace:	4b0a      	ldr	r3, [pc, #40]	; (af8 <UART2_Handler+0x64>)
     ad0:	699b      	ldr	r3, [r3, #24]
     ad2:	2210      	movs	r2, #16
     ad4:	4013      	ands	r3, r2
     ad6:	d0ed      	beq.n	ab4 <UART2_Handler+0x20>
     ad8:	4b06      	ldr	r3, [pc, #24]	; (af4 <UART2_Handler+0x60>)
     ada:	687a      	ldr	r2, [r7, #4]
     adc:	601a      	str	r2, [r3, #0]
     ade:	4b08      	ldr	r3, [pc, #32]	; (b00 <UART2_Handler+0x6c>)
     ae0:	681b      	ldr	r3, [r3, #0]
     ae2:	2108      	movs	r1, #8
     ae4:	0018      	movs	r0, r3
     ae6:	f005 fe15 	bl	6714 <osSignalSet>
     aea:	46c0      	nop			; (mov r8, r8)
     aec:	46bd      	mov	sp, r7
     aee:	b002      	add	sp, #8
     af0:	bd80      	pop	{r7, pc}
     af2:	46c0      	nop			; (mov r8, r8)
     af4:	200008cc 	.word	0x200008cc
     af8:	40038000 	.word	0x40038000
     afc:	200008ac 	.word	0x200008ac
     b00:	20000868 	.word	0x20000868

00000b04 <_exit>:
     b04:	b580      	push	{r7, lr}
     b06:	b082      	sub	sp, #8
     b08:	af00      	add	r7, sp, #0
     b0a:	6078      	str	r0, [r7, #4]
     b0c:	4b03      	ldr	r3, [pc, #12]	; (b1c <_exit+0x18>)
     b0e:	2204      	movs	r2, #4
     b10:	0019      	movs	r1, r3
     b12:	2001      	movs	r0, #1
     b14:	f000 f90c 	bl	d30 <_write>
     b18:	e7fe      	b.n	b18 <_exit+0x14>
     b1a:	46c0      	nop			; (mov r8, r8)
     b1c:	00008aac 	.word	0x00008aac

00000b20 <_close>:
     b20:	b580      	push	{r7, lr}
     b22:	b082      	sub	sp, #8
     b24:	af00      	add	r7, sp, #0
     b26:	6078      	str	r0, [r7, #4]
     b28:	2301      	movs	r3, #1
     b2a:	425b      	negs	r3, r3
     b2c:	0018      	movs	r0, r3
     b2e:	46bd      	mov	sp, r7
     b30:	b002      	add	sp, #8
     b32:	bd80      	pop	{r7, pc}

00000b34 <_execve>:
     b34:	b580      	push	{r7, lr}
     b36:	b084      	sub	sp, #16
     b38:	af00      	add	r7, sp, #0
     b3a:	60f8      	str	r0, [r7, #12]
     b3c:	60b9      	str	r1, [r7, #8]
     b3e:	607a      	str	r2, [r7, #4]
     b40:	4b04      	ldr	r3, [pc, #16]	; (b54 <_execve+0x20>)
     b42:	220c      	movs	r2, #12
     b44:	601a      	str	r2, [r3, #0]
     b46:	2301      	movs	r3, #1
     b48:	425b      	negs	r3, r3
     b4a:	0018      	movs	r0, r3
     b4c:	46bd      	mov	sp, r7
     b4e:	b004      	add	sp, #16
     b50:	bd80      	pop	{r7, pc}
     b52:	46c0      	nop			; (mov r8, r8)
     b54:	20006074 	.word	0x20006074

00000b58 <_fork>:
     b58:	b580      	push	{r7, lr}
     b5a:	af00      	add	r7, sp, #0
     b5c:	4b03      	ldr	r3, [pc, #12]	; (b6c <_fork+0x14>)
     b5e:	220b      	movs	r2, #11
     b60:	601a      	str	r2, [r3, #0]
     b62:	2301      	movs	r3, #1
     b64:	425b      	negs	r3, r3
     b66:	0018      	movs	r0, r3
     b68:	46bd      	mov	sp, r7
     b6a:	bd80      	pop	{r7, pc}
     b6c:	20006074 	.word	0x20006074

00000b70 <_fstat>:
     b70:	b580      	push	{r7, lr}
     b72:	b082      	sub	sp, #8
     b74:	af00      	add	r7, sp, #0
     b76:	6078      	str	r0, [r7, #4]
     b78:	6039      	str	r1, [r7, #0]
     b7a:	683b      	ldr	r3, [r7, #0]
     b7c:	2280      	movs	r2, #128	; 0x80
     b7e:	0192      	lsls	r2, r2, #6
     b80:	605a      	str	r2, [r3, #4]
     b82:	2300      	movs	r3, #0
     b84:	0018      	movs	r0, r3
     b86:	46bd      	mov	sp, r7
     b88:	b002      	add	sp, #8
     b8a:	bd80      	pop	{r7, pc}

00000b8c <_getpid>:
     b8c:	b580      	push	{r7, lr}
     b8e:	af00      	add	r7, sp, #0
     b90:	2301      	movs	r3, #1
     b92:	0018      	movs	r0, r3
     b94:	46bd      	mov	sp, r7
     b96:	bd80      	pop	{r7, pc}

00000b98 <_isatty>:
     b98:	b580      	push	{r7, lr}
     b9a:	b082      	sub	sp, #8
     b9c:	af00      	add	r7, sp, #0
     b9e:	6078      	str	r0, [r7, #4]
     ba0:	687b      	ldr	r3, [r7, #4]
     ba2:	3300      	adds	r3, #0
     ba4:	2b02      	cmp	r3, #2
     ba6:	d801      	bhi.n	bac <_isatty+0x14>
     ba8:	2301      	movs	r3, #1
     baa:	e003      	b.n	bb4 <_isatty+0x1c>
     bac:	4b03      	ldr	r3, [pc, #12]	; (bbc <_isatty+0x24>)
     bae:	2209      	movs	r2, #9
     bb0:	601a      	str	r2, [r3, #0]
     bb2:	2300      	movs	r3, #0
     bb4:	0018      	movs	r0, r3
     bb6:	46bd      	mov	sp, r7
     bb8:	b002      	add	sp, #8
     bba:	bd80      	pop	{r7, pc}
     bbc:	20006074 	.word	0x20006074

00000bc0 <_kill>:
     bc0:	b580      	push	{r7, lr}
     bc2:	b082      	sub	sp, #8
     bc4:	af00      	add	r7, sp, #0
     bc6:	6078      	str	r0, [r7, #4]
     bc8:	6039      	str	r1, [r7, #0]
     bca:	4b04      	ldr	r3, [pc, #16]	; (bdc <_kill+0x1c>)
     bcc:	2216      	movs	r2, #22
     bce:	601a      	str	r2, [r3, #0]
     bd0:	2301      	movs	r3, #1
     bd2:	425b      	negs	r3, r3
     bd4:	0018      	movs	r0, r3
     bd6:	46bd      	mov	sp, r7
     bd8:	b002      	add	sp, #8
     bda:	bd80      	pop	{r7, pc}
     bdc:	20006074 	.word	0x20006074

00000be0 <_link>:
     be0:	b580      	push	{r7, lr}
     be2:	b082      	sub	sp, #8
     be4:	af00      	add	r7, sp, #0
     be6:	6078      	str	r0, [r7, #4]
     be8:	6039      	str	r1, [r7, #0]
     bea:	4b04      	ldr	r3, [pc, #16]	; (bfc <_link+0x1c>)
     bec:	221f      	movs	r2, #31
     bee:	601a      	str	r2, [r3, #0]
     bf0:	2301      	movs	r3, #1
     bf2:	425b      	negs	r3, r3
     bf4:	0018      	movs	r0, r3
     bf6:	46bd      	mov	sp, r7
     bf8:	b002      	add	sp, #8
     bfa:	bd80      	pop	{r7, pc}
     bfc:	20006074 	.word	0x20006074

00000c00 <_lseek>:
     c00:	b580      	push	{r7, lr}
     c02:	b084      	sub	sp, #16
     c04:	af00      	add	r7, sp, #0
     c06:	60f8      	str	r0, [r7, #12]
     c08:	60b9      	str	r1, [r7, #8]
     c0a:	607a      	str	r2, [r7, #4]
     c0c:	2300      	movs	r3, #0
     c0e:	0018      	movs	r0, r3
     c10:	46bd      	mov	sp, r7
     c12:	b004      	add	sp, #16
     c14:	bd80      	pop	{r7, pc}
     c16:	46c0      	nop			; (mov r8, r8)

00000c18 <_sbrk>:
     c18:	b580      	push	{r7, lr}
     c1a:	b086      	sub	sp, #24
     c1c:	af00      	add	r7, sp, #0
     c1e:	6078      	str	r0, [r7, #4]
     c20:	4b16      	ldr	r3, [pc, #88]	; (c7c <_sbrk+0x64>)
     c22:	681b      	ldr	r3, [r3, #0]
     c24:	2b00      	cmp	r3, #0
     c26:	d102      	bne.n	c2e <_sbrk+0x16>
     c28:	4b14      	ldr	r3, [pc, #80]	; (c7c <_sbrk+0x64>)
     c2a:	4a15      	ldr	r2, [pc, #84]	; (c80 <_sbrk+0x68>)
     c2c:	601a      	str	r2, [r3, #0]
     c2e:	4b13      	ldr	r3, [pc, #76]	; (c7c <_sbrk+0x64>)
     c30:	681b      	ldr	r3, [r3, #0]
     c32:	617b      	str	r3, [r7, #20]
     c34:	f3ef 8308 	mrs	r3, MSP
     c38:	60fb      	str	r3, [r7, #12]
     c3a:	68fb      	ldr	r3, [r7, #12]
     c3c:	613b      	str	r3, [r7, #16]
     c3e:	4b0f      	ldr	r3, [pc, #60]	; (c7c <_sbrk+0x64>)
     c40:	681a      	ldr	r2, [r3, #0]
     c42:	687b      	ldr	r3, [r7, #4]
     c44:	18d2      	adds	r2, r2, r3
     c46:	693b      	ldr	r3, [r7, #16]
     c48:	429a      	cmp	r2, r3
     c4a:	d90b      	bls.n	c64 <_sbrk+0x4c>
     c4c:	4b0d      	ldr	r3, [pc, #52]	; (c84 <_sbrk+0x6c>)
     c4e:	2219      	movs	r2, #25
     c50:	0019      	movs	r1, r3
     c52:	2002      	movs	r0, #2
     c54:	f000 f86c 	bl	d30 <_write>
     c58:	4b0b      	ldr	r3, [pc, #44]	; (c88 <_sbrk+0x70>)
     c5a:	220c      	movs	r2, #12
     c5c:	601a      	str	r2, [r3, #0]
     c5e:	2301      	movs	r3, #1
     c60:	425b      	negs	r3, r3
     c62:	e006      	b.n	c72 <_sbrk+0x5a>
     c64:	4b05      	ldr	r3, [pc, #20]	; (c7c <_sbrk+0x64>)
     c66:	681a      	ldr	r2, [r3, #0]
     c68:	687b      	ldr	r3, [r7, #4]
     c6a:	18d2      	adds	r2, r2, r3
     c6c:	4b03      	ldr	r3, [pc, #12]	; (c7c <_sbrk+0x64>)
     c6e:	601a      	str	r2, [r3, #0]
     c70:	697b      	ldr	r3, [r7, #20]
     c72:	0018      	movs	r0, r3
     c74:	46bd      	mov	sp, r7
     c76:	b006      	add	sp, #24
     c78:	bd80      	pop	{r7, pc}
     c7a:	46c0      	nop			; (mov r8, r8)
     c7c:	200008d4 	.word	0x200008d4
     c80:	200060fc 	.word	0x200060fc
     c84:	00008ab4 	.word	0x00008ab4
     c88:	20006074 	.word	0x20006074

00000c8c <_read>:
     c8c:	b580      	push	{r7, lr}
     c8e:	b086      	sub	sp, #24
     c90:	af00      	add	r7, sp, #0
     c92:	60f8      	str	r0, [r7, #12]
     c94:	60b9      	str	r1, [r7, #8]
     c96:	607a      	str	r2, [r7, #4]
     c98:	2300      	movs	r3, #0
     c9a:	617b      	str	r3, [r7, #20]
     c9c:	68fb      	ldr	r3, [r7, #12]
     c9e:	2b00      	cmp	r3, #0
     ca0:	d005      	beq.n	cae <_read+0x22>
     ca2:	4b06      	ldr	r3, [pc, #24]	; (cbc <_read+0x30>)
     ca4:	2209      	movs	r2, #9
     ca6:	601a      	str	r2, [r3, #0]
     ca8:	2301      	movs	r3, #1
     caa:	425b      	negs	r3, r3
     cac:	e001      	b.n	cb2 <_read+0x26>
     cae:	46c0      	nop			; (mov r8, r8)
     cb0:	697b      	ldr	r3, [r7, #20]
     cb2:	0018      	movs	r0, r3
     cb4:	46bd      	mov	sp, r7
     cb6:	b006      	add	sp, #24
     cb8:	bd80      	pop	{r7, pc}
     cba:	46c0      	nop			; (mov r8, r8)
     cbc:	20006074 	.word	0x20006074

00000cc0 <_stat>:
     cc0:	b580      	push	{r7, lr}
     cc2:	b082      	sub	sp, #8
     cc4:	af00      	add	r7, sp, #0
     cc6:	6078      	str	r0, [r7, #4]
     cc8:	6039      	str	r1, [r7, #0]
     cca:	683b      	ldr	r3, [r7, #0]
     ccc:	2280      	movs	r2, #128	; 0x80
     cce:	0192      	lsls	r2, r2, #6
     cd0:	605a      	str	r2, [r3, #4]
     cd2:	2300      	movs	r3, #0
     cd4:	0018      	movs	r0, r3
     cd6:	46bd      	mov	sp, r7
     cd8:	b002      	add	sp, #8
     cda:	bd80      	pop	{r7, pc}

00000cdc <_times>:
     cdc:	b580      	push	{r7, lr}
     cde:	b082      	sub	sp, #8
     ce0:	af00      	add	r7, sp, #0
     ce2:	6078      	str	r0, [r7, #4]
     ce4:	2301      	movs	r3, #1
     ce6:	425b      	negs	r3, r3
     ce8:	0018      	movs	r0, r3
     cea:	46bd      	mov	sp, r7
     cec:	b002      	add	sp, #8
     cee:	bd80      	pop	{r7, pc}

00000cf0 <_unlink>:
     cf0:	b580      	push	{r7, lr}
     cf2:	b082      	sub	sp, #8
     cf4:	af00      	add	r7, sp, #0
     cf6:	6078      	str	r0, [r7, #4]
     cf8:	4b04      	ldr	r3, [pc, #16]	; (d0c <_unlink+0x1c>)
     cfa:	2202      	movs	r2, #2
     cfc:	601a      	str	r2, [r3, #0]
     cfe:	2301      	movs	r3, #1
     d00:	425b      	negs	r3, r3
     d02:	0018      	movs	r0, r3
     d04:	46bd      	mov	sp, r7
     d06:	b002      	add	sp, #8
     d08:	bd80      	pop	{r7, pc}
     d0a:	46c0      	nop			; (mov r8, r8)
     d0c:	20006074 	.word	0x20006074

00000d10 <_wait>:
     d10:	b580      	push	{r7, lr}
     d12:	b082      	sub	sp, #8
     d14:	af00      	add	r7, sp, #0
     d16:	6078      	str	r0, [r7, #4]
     d18:	4b04      	ldr	r3, [pc, #16]	; (d2c <_wait+0x1c>)
     d1a:	220a      	movs	r2, #10
     d1c:	601a      	str	r2, [r3, #0]
     d1e:	2301      	movs	r3, #1
     d20:	425b      	negs	r3, r3
     d22:	0018      	movs	r0, r3
     d24:	46bd      	mov	sp, r7
     d26:	b002      	add	sp, #8
     d28:	bd80      	pop	{r7, pc}
     d2a:	46c0      	nop			; (mov r8, r8)
     d2c:	20006074 	.word	0x20006074

00000d30 <_write>:
     d30:	b580      	push	{r7, lr}
     d32:	b086      	sub	sp, #24
     d34:	af00      	add	r7, sp, #0
     d36:	60f8      	str	r0, [r7, #12]
     d38:	60b9      	str	r1, [r7, #8]
     d3a:	607a      	str	r2, [r7, #4]
     d3c:	68fb      	ldr	r3, [r7, #12]
     d3e:	2b01      	cmp	r3, #1
     d40:	d002      	beq.n	d48 <_write+0x18>
     d42:	2b02      	cmp	r3, #2
     d44:	d00b      	beq.n	d5e <_write+0x2e>
     d46:	e015      	b.n	d74 <_write+0x44>
     d48:	2300      	movs	r3, #0
     d4a:	617b      	str	r3, [r7, #20]
     d4c:	e002      	b.n	d54 <_write+0x24>
     d4e:	697b      	ldr	r3, [r7, #20]
     d50:	3301      	adds	r3, #1
     d52:	617b      	str	r3, [r7, #20]
     d54:	697a      	ldr	r2, [r7, #20]
     d56:	687b      	ldr	r3, [r7, #4]
     d58:	429a      	cmp	r2, r3
     d5a:	dbf8      	blt.n	d4e <_write+0x1e>
     d5c:	e010      	b.n	d80 <_write+0x50>
     d5e:	2300      	movs	r3, #0
     d60:	617b      	str	r3, [r7, #20]
     d62:	e002      	b.n	d6a <_write+0x3a>
     d64:	697b      	ldr	r3, [r7, #20]
     d66:	3301      	adds	r3, #1
     d68:	617b      	str	r3, [r7, #20]
     d6a:	697a      	ldr	r2, [r7, #20]
     d6c:	687b      	ldr	r3, [r7, #4]
     d6e:	429a      	cmp	r2, r3
     d70:	dbf8      	blt.n	d64 <_write+0x34>
     d72:	e005      	b.n	d80 <_write+0x50>
     d74:	4b05      	ldr	r3, [pc, #20]	; (d8c <_write+0x5c>)
     d76:	2209      	movs	r2, #9
     d78:	601a      	str	r2, [r3, #0]
     d7a:	2301      	movs	r3, #1
     d7c:	425b      	negs	r3, r3
     d7e:	e000      	b.n	d82 <_write+0x52>
     d80:	687b      	ldr	r3, [r7, #4]
     d82:	0018      	movs	r0, r3
     d84:	46bd      	mov	sp, r7
     d86:	b006      	add	sp, #24
     d88:	bd80      	pop	{r7, pc}
     d8a:	46c0      	nop			; (mov r8, r8)
     d8c:	20006074 	.word	0x20006074

00000d90 <_init>:
     d90:	b580      	push	{r7, lr}
     d92:	af00      	add	r7, sp, #0
     d94:	46c0      	nop			; (mov r8, r8)
     d96:	46bd      	mov	sp, r7
     d98:	bd80      	pop	{r7, pc}
     d9a:	46c0      	nop			; (mov r8, r8)

00000d9c <_fini>:
     d9c:	b580      	push	{r7, lr}
     d9e:	af00      	add	r7, sp, #0
     da0:	46c0      	nop			; (mov r8, r8)
     da2:	46bd      	mov	sp, r7
     da4:	bd80      	pop	{r7, pc}
     da6:	46c0      	nop			; (mov r8, r8)

00000da8 <__NVIC_EnableIRQ>:
     da8:	b580      	push	{r7, lr}
     daa:	b082      	sub	sp, #8
     dac:	af00      	add	r7, sp, #0
     dae:	0002      	movs	r2, r0
     db0:	1dfb      	adds	r3, r7, #7
     db2:	701a      	strb	r2, [r3, #0]
     db4:	1dfb      	adds	r3, r7, #7
     db6:	781b      	ldrb	r3, [r3, #0]
     db8:	2b7f      	cmp	r3, #127	; 0x7f
     dba:	d809      	bhi.n	dd0 <__NVIC_EnableIRQ+0x28>
     dbc:	4b06      	ldr	r3, [pc, #24]	; (dd8 <__NVIC_EnableIRQ+0x30>)
     dbe:	1dfa      	adds	r2, r7, #7
     dc0:	7812      	ldrb	r2, [r2, #0]
     dc2:	0011      	movs	r1, r2
     dc4:	221f      	movs	r2, #31
     dc6:	400a      	ands	r2, r1
     dc8:	2101      	movs	r1, #1
     dca:	4091      	lsls	r1, r2
     dcc:	000a      	movs	r2, r1
     dce:	601a      	str	r2, [r3, #0]
     dd0:	46c0      	nop			; (mov r8, r8)
     dd2:	46bd      	mov	sp, r7
     dd4:	b002      	add	sp, #8
     dd6:	bd80      	pop	{r7, pc}
     dd8:	e000e100 	.word	0xe000e100

00000ddc <__NVIC_DisableIRQ>:
     ddc:	b580      	push	{r7, lr}
     dde:	b082      	sub	sp, #8
     de0:	af00      	add	r7, sp, #0
     de2:	0002      	movs	r2, r0
     de4:	1dfb      	adds	r3, r7, #7
     de6:	701a      	strb	r2, [r3, #0]
     de8:	1dfb      	adds	r3, r7, #7
     dea:	781b      	ldrb	r3, [r3, #0]
     dec:	2b7f      	cmp	r3, #127	; 0x7f
     dee:	d80e      	bhi.n	e0e <__NVIC_DisableIRQ+0x32>
     df0:	4909      	ldr	r1, [pc, #36]	; (e18 <__NVIC_DisableIRQ+0x3c>)
     df2:	1dfb      	adds	r3, r7, #7
     df4:	781b      	ldrb	r3, [r3, #0]
     df6:	001a      	movs	r2, r3
     df8:	231f      	movs	r3, #31
     dfa:	4013      	ands	r3, r2
     dfc:	2201      	movs	r2, #1
     dfe:	409a      	lsls	r2, r3
     e00:	0013      	movs	r3, r2
     e02:	2280      	movs	r2, #128	; 0x80
     e04:	508b      	str	r3, [r1, r2]
     e06:	f3bf 8f4f 	dsb	sy
     e0a:	f3bf 8f6f 	isb	sy
     e0e:	46c0      	nop			; (mov r8, r8)
     e10:	46bd      	mov	sp, r7
     e12:	b002      	add	sp, #8
     e14:	bd80      	pop	{r7, pc}
     e16:	46c0      	nop			; (mov r8, r8)
     e18:	e000e100 	.word	0xe000e100

00000e1c <mdb232_init>:
     e1c:	b580      	push	{r7, lr}
     e1e:	af00      	add	r7, sp, #0
     e20:	4b15      	ldr	r3, [pc, #84]	; (e78 <mdb232_init+0x5c>)
     e22:	229c      	movs	r2, #156	; 0x9c
     e24:	0052      	lsls	r2, r2, #1
     e26:	625a      	str	r2, [r3, #36]	; 0x24
     e28:	4b13      	ldr	r3, [pc, #76]	; (e78 <mdb232_init+0x5c>)
     e2a:	2220      	movs	r2, #32
     e2c:	629a      	str	r2, [r3, #40]	; 0x28
     e2e:	4b12      	ldr	r3, [pc, #72]	; (e78 <mdb232_init+0x5c>)
     e30:	4a11      	ldr	r2, [pc, #68]	; (e78 <mdb232_init+0x5c>)
     e32:	6b52      	ldr	r2, [r2, #52]	; 0x34
     e34:	213f      	movs	r1, #63	; 0x3f
     e36:	438a      	bics	r2, r1
     e38:	635a      	str	r2, [r3, #52]	; 0x34
     e3a:	4b0f      	ldr	r3, [pc, #60]	; (e78 <mdb232_init+0x5c>)
     e3c:	4a0e      	ldr	r2, [pc, #56]	; (e78 <mdb232_init+0x5c>)
     e3e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     e40:	2110      	movs	r1, #16
     e42:	430a      	orrs	r2, r1
     e44:	62da      	str	r2, [r3, #44]	; 0x2c
     e46:	4b0c      	ldr	r3, [pc, #48]	; (e78 <mdb232_init+0x5c>)
     e48:	4a0b      	ldr	r2, [pc, #44]	; (e78 <mdb232_init+0x5c>)
     e4a:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     e4c:	2160      	movs	r1, #96	; 0x60
     e4e:	430a      	orrs	r2, r1
     e50:	62da      	str	r2, [r3, #44]	; 0x2c
     e52:	4b09      	ldr	r3, [pc, #36]	; (e78 <mdb232_init+0x5c>)
     e54:	4a08      	ldr	r2, [pc, #32]	; (e78 <mdb232_init+0x5c>)
     e56:	6b12      	ldr	r2, [r2, #48]	; 0x30
     e58:	4908      	ldr	r1, [pc, #32]	; (e7c <mdb232_init+0x60>)
     e5a:	430a      	orrs	r2, r1
     e5c:	631a      	str	r2, [r3, #48]	; 0x30
     e5e:	4b06      	ldr	r3, [pc, #24]	; (e78 <mdb232_init+0x5c>)
     e60:	4a05      	ldr	r2, [pc, #20]	; (e78 <mdb232_init+0x5c>)
     e62:	6b92      	ldr	r2, [r2, #56]	; 0x38
     e64:	2140      	movs	r1, #64	; 0x40
     e66:	430a      	orrs	r2, r1
     e68:	639a      	str	r2, [r3, #56]	; 0x38
     e6a:	2006      	movs	r0, #6
     e6c:	f7ff ff9c 	bl	da8 <__NVIC_EnableIRQ>
     e70:	46c0      	nop			; (mov r8, r8)
     e72:	46bd      	mov	sp, r7
     e74:	bd80      	pop	{r7, pc}
     e76:	46c0      	nop			; (mov r8, r8)
     e78:	40030000 	.word	0x40030000
     e7c:	00000301 	.word	0x00000301

00000e80 <mdb232_send>:
     e80:	b580      	push	{r7, lr}
     e82:	b084      	sub	sp, #16
     e84:	af00      	add	r7, sp, #0
     e86:	6078      	str	r0, [r7, #4]
     e88:	6039      	str	r1, [r7, #0]
     e8a:	2300      	movs	r3, #0
     e8c:	60fb      	str	r3, [r7, #12]
     e8e:	e00e      	b.n	eae <mdb232_send+0x2e>
     e90:	46c0      	nop			; (mov r8, r8)
     e92:	4b0e      	ldr	r3, [pc, #56]	; (ecc <mdb232_send+0x4c>)
     e94:	699b      	ldr	r3, [r3, #24]
     e96:	2220      	movs	r2, #32
     e98:	4013      	ands	r3, r2
     e9a:	d1fa      	bne.n	e92 <mdb232_send+0x12>
     e9c:	4a0b      	ldr	r2, [pc, #44]	; (ecc <mdb232_send+0x4c>)
     e9e:	687b      	ldr	r3, [r7, #4]
     ea0:	1c59      	adds	r1, r3, #1
     ea2:	6079      	str	r1, [r7, #4]
     ea4:	781b      	ldrb	r3, [r3, #0]
     ea6:	6013      	str	r3, [r2, #0]
     ea8:	68fb      	ldr	r3, [r7, #12]
     eaa:	3301      	adds	r3, #1
     eac:	60fb      	str	r3, [r7, #12]
     eae:	68fa      	ldr	r2, [r7, #12]
     eb0:	683b      	ldr	r3, [r7, #0]
     eb2:	429a      	cmp	r2, r3
     eb4:	dbec      	blt.n	e90 <mdb232_send+0x10>
     eb6:	46c0      	nop			; (mov r8, r8)
     eb8:	4b04      	ldr	r3, [pc, #16]	; (ecc <mdb232_send+0x4c>)
     eba:	699b      	ldr	r3, [r3, #24]
     ebc:	2208      	movs	r2, #8
     ebe:	4013      	ands	r3, r2
     ec0:	d1fa      	bne.n	eb8 <mdb232_send+0x38>
     ec2:	683b      	ldr	r3, [r7, #0]
     ec4:	0018      	movs	r0, r3
     ec6:	46bd      	mov	sp, r7
     ec8:	b004      	add	sp, #16
     eca:	bd80      	pop	{r7, pc}
     ecc:	40030000 	.word	0x40030000

00000ed0 <mdb232_read_inputregs>:
     ed0:	b590      	push	{r4, r7, lr}
     ed2:	b085      	sub	sp, #20
     ed4:	af00      	add	r7, sp, #0
     ed6:	0004      	movs	r4, r0
     ed8:	0008      	movs	r0, r1
     eda:	0011      	movs	r1, r2
     edc:	1dfb      	adds	r3, r7, #7
     ede:	1c22      	adds	r2, r4, #0
     ee0:	701a      	strb	r2, [r3, #0]
     ee2:	1d3b      	adds	r3, r7, #4
     ee4:	1c02      	adds	r2, r0, #0
     ee6:	801a      	strh	r2, [r3, #0]
     ee8:	1cbb      	adds	r3, r7, #2
     eea:	1c0a      	adds	r2, r1, #0
     eec:	801a      	strh	r2, [r3, #0]
     eee:	4b28      	ldr	r3, [pc, #160]	; (f90 <mdb232_read_inputregs+0xc0>)
     ef0:	60fb      	str	r3, [r7, #12]
     ef2:	68fb      	ldr	r3, [r7, #12]
     ef4:	1c5a      	adds	r2, r3, #1
     ef6:	60fa      	str	r2, [r7, #12]
     ef8:	1dfa      	adds	r2, r7, #7
     efa:	7812      	ldrb	r2, [r2, #0]
     efc:	701a      	strb	r2, [r3, #0]
     efe:	68fb      	ldr	r3, [r7, #12]
     f00:	1c5a      	adds	r2, r3, #1
     f02:	60fa      	str	r2, [r7, #12]
     f04:	2204      	movs	r2, #4
     f06:	701a      	strb	r2, [r3, #0]
     f08:	68fb      	ldr	r3, [r7, #12]
     f0a:	1c5a      	adds	r2, r3, #1
     f0c:	60fa      	str	r2, [r7, #12]
     f0e:	1d3a      	adds	r2, r7, #4
     f10:	8812      	ldrh	r2, [r2, #0]
     f12:	0a12      	lsrs	r2, r2, #8
     f14:	b292      	uxth	r2, r2
     f16:	b2d2      	uxtb	r2, r2
     f18:	701a      	strb	r2, [r3, #0]
     f1a:	68fb      	ldr	r3, [r7, #12]
     f1c:	1c5a      	adds	r2, r3, #1
     f1e:	60fa      	str	r2, [r7, #12]
     f20:	1d3a      	adds	r2, r7, #4
     f22:	8812      	ldrh	r2, [r2, #0]
     f24:	b2d2      	uxtb	r2, r2
     f26:	701a      	strb	r2, [r3, #0]
     f28:	68fb      	ldr	r3, [r7, #12]
     f2a:	1c5a      	adds	r2, r3, #1
     f2c:	60fa      	str	r2, [r7, #12]
     f2e:	1cba      	adds	r2, r7, #2
     f30:	8812      	ldrh	r2, [r2, #0]
     f32:	0a12      	lsrs	r2, r2, #8
     f34:	b292      	uxth	r2, r2
     f36:	b2d2      	uxtb	r2, r2
     f38:	701a      	strb	r2, [r3, #0]
     f3a:	68fb      	ldr	r3, [r7, #12]
     f3c:	1c5a      	adds	r2, r3, #1
     f3e:	60fa      	str	r2, [r7, #12]
     f40:	1cba      	adds	r2, r7, #2
     f42:	8812      	ldrh	r2, [r2, #0]
     f44:	b2d2      	uxtb	r2, r2
     f46:	701a      	strb	r2, [r3, #0]
     f48:	230a      	movs	r3, #10
     f4a:	18fc      	adds	r4, r7, r3
     f4c:	4b10      	ldr	r3, [pc, #64]	; (f90 <mdb232_read_inputregs+0xc0>)
     f4e:	2106      	movs	r1, #6
     f50:	0018      	movs	r0, r3
     f52:	f002 f9e9 	bl	3328 <crc16>
     f56:	0003      	movs	r3, r0
     f58:	8023      	strh	r3, [r4, #0]
     f5a:	68fb      	ldr	r3, [r7, #12]
     f5c:	1c5a      	adds	r2, r3, #1
     f5e:	60fa      	str	r2, [r7, #12]
     f60:	220a      	movs	r2, #10
     f62:	18ba      	adds	r2, r7, r2
     f64:	8812      	ldrh	r2, [r2, #0]
     f66:	b2d2      	uxtb	r2, r2
     f68:	701a      	strb	r2, [r3, #0]
     f6a:	68fb      	ldr	r3, [r7, #12]
     f6c:	1c5a      	adds	r2, r3, #1
     f6e:	60fa      	str	r2, [r7, #12]
     f70:	220a      	movs	r2, #10
     f72:	18ba      	adds	r2, r7, r2
     f74:	8812      	ldrh	r2, [r2, #0]
     f76:	0a12      	lsrs	r2, r2, #8
     f78:	b292      	uxth	r2, r2
     f7a:	b2d2      	uxtb	r2, r2
     f7c:	701a      	strb	r2, [r3, #0]
     f7e:	4b04      	ldr	r3, [pc, #16]	; (f90 <mdb232_read_inputregs+0xc0>)
     f80:	2108      	movs	r1, #8
     f82:	0018      	movs	r0, r3
     f84:	f7ff ff7c 	bl	e80 <mdb232_send>
     f88:	46c0      	nop			; (mov r8, r8)
     f8a:	46bd      	mov	sp, r7
     f8c:	b005      	add	sp, #20
     f8e:	bd90      	pop	{r4, r7, pc}
     f90:	200008e8 	.word	0x200008e8

00000f94 <mdb232_readregs>:
     f94:	b590      	push	{r4, r7, lr}
     f96:	b085      	sub	sp, #20
     f98:	af00      	add	r7, sp, #0
     f9a:	0004      	movs	r4, r0
     f9c:	0008      	movs	r0, r1
     f9e:	0011      	movs	r1, r2
     fa0:	1dfb      	adds	r3, r7, #7
     fa2:	1c22      	adds	r2, r4, #0
     fa4:	701a      	strb	r2, [r3, #0]
     fa6:	1d3b      	adds	r3, r7, #4
     fa8:	1c02      	adds	r2, r0, #0
     faa:	801a      	strh	r2, [r3, #0]
     fac:	1cbb      	adds	r3, r7, #2
     fae:	1c0a      	adds	r2, r1, #0
     fb0:	801a      	strh	r2, [r3, #0]
     fb2:	4b28      	ldr	r3, [pc, #160]	; (1054 <mdb232_readregs+0xc0>)
     fb4:	60fb      	str	r3, [r7, #12]
     fb6:	68fb      	ldr	r3, [r7, #12]
     fb8:	1c5a      	adds	r2, r3, #1
     fba:	60fa      	str	r2, [r7, #12]
     fbc:	1dfa      	adds	r2, r7, #7
     fbe:	7812      	ldrb	r2, [r2, #0]
     fc0:	701a      	strb	r2, [r3, #0]
     fc2:	68fb      	ldr	r3, [r7, #12]
     fc4:	1c5a      	adds	r2, r3, #1
     fc6:	60fa      	str	r2, [r7, #12]
     fc8:	2203      	movs	r2, #3
     fca:	701a      	strb	r2, [r3, #0]
     fcc:	68fb      	ldr	r3, [r7, #12]
     fce:	1c5a      	adds	r2, r3, #1
     fd0:	60fa      	str	r2, [r7, #12]
     fd2:	1d3a      	adds	r2, r7, #4
     fd4:	8812      	ldrh	r2, [r2, #0]
     fd6:	0a12      	lsrs	r2, r2, #8
     fd8:	b292      	uxth	r2, r2
     fda:	b2d2      	uxtb	r2, r2
     fdc:	701a      	strb	r2, [r3, #0]
     fde:	68fb      	ldr	r3, [r7, #12]
     fe0:	1c5a      	adds	r2, r3, #1
     fe2:	60fa      	str	r2, [r7, #12]
     fe4:	1d3a      	adds	r2, r7, #4
     fe6:	8812      	ldrh	r2, [r2, #0]
     fe8:	b2d2      	uxtb	r2, r2
     fea:	701a      	strb	r2, [r3, #0]
     fec:	68fb      	ldr	r3, [r7, #12]
     fee:	1c5a      	adds	r2, r3, #1
     ff0:	60fa      	str	r2, [r7, #12]
     ff2:	1cba      	adds	r2, r7, #2
     ff4:	8812      	ldrh	r2, [r2, #0]
     ff6:	0a12      	lsrs	r2, r2, #8
     ff8:	b292      	uxth	r2, r2
     ffa:	b2d2      	uxtb	r2, r2
     ffc:	701a      	strb	r2, [r3, #0]
     ffe:	68fb      	ldr	r3, [r7, #12]
    1000:	1c5a      	adds	r2, r3, #1
    1002:	60fa      	str	r2, [r7, #12]
    1004:	1cba      	adds	r2, r7, #2
    1006:	8812      	ldrh	r2, [r2, #0]
    1008:	b2d2      	uxtb	r2, r2
    100a:	701a      	strb	r2, [r3, #0]
    100c:	230a      	movs	r3, #10
    100e:	18fc      	adds	r4, r7, r3
    1010:	4b10      	ldr	r3, [pc, #64]	; (1054 <mdb232_readregs+0xc0>)
    1012:	2106      	movs	r1, #6
    1014:	0018      	movs	r0, r3
    1016:	f002 f987 	bl	3328 <crc16>
    101a:	0003      	movs	r3, r0
    101c:	8023      	strh	r3, [r4, #0]
    101e:	68fb      	ldr	r3, [r7, #12]
    1020:	1c5a      	adds	r2, r3, #1
    1022:	60fa      	str	r2, [r7, #12]
    1024:	220a      	movs	r2, #10
    1026:	18ba      	adds	r2, r7, r2
    1028:	8812      	ldrh	r2, [r2, #0]
    102a:	b2d2      	uxtb	r2, r2
    102c:	701a      	strb	r2, [r3, #0]
    102e:	68fb      	ldr	r3, [r7, #12]
    1030:	1c5a      	adds	r2, r3, #1
    1032:	60fa      	str	r2, [r7, #12]
    1034:	220a      	movs	r2, #10
    1036:	18ba      	adds	r2, r7, r2
    1038:	8812      	ldrh	r2, [r2, #0]
    103a:	0a12      	lsrs	r2, r2, #8
    103c:	b292      	uxth	r2, r2
    103e:	b2d2      	uxtb	r2, r2
    1040:	701a      	strb	r2, [r3, #0]
    1042:	4b04      	ldr	r3, [pc, #16]	; (1054 <mdb232_readregs+0xc0>)
    1044:	2108      	movs	r1, #8
    1046:	0018      	movs	r0, r3
    1048:	f7ff ff1a 	bl	e80 <mdb232_send>
    104c:	46c0      	nop			; (mov r8, r8)
    104e:	46bd      	mov	sp, r7
    1050:	b005      	add	sp, #20
    1052:	bd90      	pop	{r4, r7, pc}
    1054:	200008e8 	.word	0x200008e8

00001058 <mdb232_get_crc>:
    1058:	b590      	push	{r4, r7, lr}
    105a:	b083      	sub	sp, #12
    105c:	af00      	add	r7, sp, #0
    105e:	2006      	movs	r0, #6
    1060:	f7ff febc 	bl	ddc <__NVIC_DisableIRQ>
    1064:	4b09      	ldr	r3, [pc, #36]	; (108c <mdb232_get_crc+0x34>)
    1066:	681a      	ldr	r2, [r3, #0]
    1068:	1dbc      	adds	r4, r7, #6
    106a:	4b09      	ldr	r3, [pc, #36]	; (1090 <mdb232_get_crc+0x38>)
    106c:	0011      	movs	r1, r2
    106e:	0018      	movs	r0, r3
    1070:	f002 f95a 	bl	3328 <crc16>
    1074:	0003      	movs	r3, r0
    1076:	8023      	strh	r3, [r4, #0]
    1078:	2006      	movs	r0, #6
    107a:	f7ff fe95 	bl	da8 <__NVIC_EnableIRQ>
    107e:	1dbb      	adds	r3, r7, #6
    1080:	881b      	ldrh	r3, [r3, #0]
    1082:	0018      	movs	r0, r3
    1084:	46bd      	mov	sp, r7
    1086:	b003      	add	sp, #12
    1088:	bd90      	pop	{r4, r7, pc}
    108a:	46c0      	nop			; (mov r8, r8)
    108c:	200008f8 	.word	0x200008f8
    1090:	200008d8 	.word	0x200008d8

00001094 <mdb232_bikm_get_torque>:
    1094:	b580      	push	{r7, lr}
    1096:	b086      	sub	sp, #24
    1098:	af00      	add	r7, sp, #0
    109a:	6078      	str	r0, [r7, #4]
    109c:	4b2b      	ldr	r3, [pc, #172]	; (114c <mdb232_bikm_get_torque+0xb8>)
    109e:	617b      	str	r3, [r7, #20]
    10a0:	687b      	ldr	r3, [r7, #4]
    10a2:	2201      	movs	r2, #1
    10a4:	4252      	negs	r2, r2
    10a6:	601a      	str	r2, [r3, #0]
    10a8:	2006      	movs	r0, #6
    10aa:	f7ff fe97 	bl	ddc <__NVIC_DisableIRQ>
    10ae:	4b28      	ldr	r3, [pc, #160]	; (1150 <mdb232_bikm_get_torque+0xbc>)
    10b0:	681b      	ldr	r3, [r3, #0]
    10b2:	2b00      	cmp	r3, #0
    10b4:	d041      	beq.n	113a <mdb232_bikm_get_torque+0xa6>
    10b6:	4b27      	ldr	r3, [pc, #156]	; (1154 <mdb232_bikm_get_torque+0xc0>)
    10b8:	781b      	ldrb	r3, [r3, #0]
    10ba:	001a      	movs	r2, r3
    10bc:	687b      	ldr	r3, [r7, #4]
    10be:	601a      	str	r2, [r3, #0]
    10c0:	697b      	ldr	r3, [r7, #20]
    10c2:	1c5a      	adds	r2, r3, #1
    10c4:	617a      	str	r2, [r7, #20]
    10c6:	781b      	ldrb	r3, [r3, #0]
    10c8:	041b      	lsls	r3, r3, #16
    10ca:	613b      	str	r3, [r7, #16]
    10cc:	697b      	ldr	r3, [r7, #20]
    10ce:	1c5a      	adds	r2, r3, #1
    10d0:	617a      	str	r2, [r7, #20]
    10d2:	781b      	ldrb	r3, [r3, #0]
    10d4:	061b      	lsls	r3, r3, #24
    10d6:	001a      	movs	r2, r3
    10d8:	693b      	ldr	r3, [r7, #16]
    10da:	4313      	orrs	r3, r2
    10dc:	613b      	str	r3, [r7, #16]
    10de:	697b      	ldr	r3, [r7, #20]
    10e0:	1c5a      	adds	r2, r3, #1
    10e2:	617a      	str	r2, [r7, #20]
    10e4:	781b      	ldrb	r3, [r3, #0]
    10e6:	001a      	movs	r2, r3
    10e8:	693b      	ldr	r3, [r7, #16]
    10ea:	4313      	orrs	r3, r2
    10ec:	613b      	str	r3, [r7, #16]
    10ee:	697b      	ldr	r3, [r7, #20]
    10f0:	781b      	ldrb	r3, [r3, #0]
    10f2:	021b      	lsls	r3, r3, #8
    10f4:	001a      	movs	r2, r3
    10f6:	693b      	ldr	r3, [r7, #16]
    10f8:	4313      	orrs	r3, r2
    10fa:	613b      	str	r3, [r7, #16]
    10fc:	2006      	movs	r0, #6
    10fe:	f7ff fe53 	bl	da8 <__NVIC_EnableIRQ>
    1102:	693b      	ldr	r3, [r7, #16]
    1104:	0ddb      	lsrs	r3, r3, #23
    1106:	22ff      	movs	r2, #255	; 0xff
    1108:	4013      	ands	r3, r2
    110a:	3b7f      	subs	r3, #127	; 0x7f
    110c:	60fb      	str	r3, [r7, #12]
    110e:	693b      	ldr	r3, [r7, #16]
    1110:	025b      	lsls	r3, r3, #9
    1112:	0a5b      	lsrs	r3, r3, #9
    1114:	2280      	movs	r2, #128	; 0x80
    1116:	0412      	lsls	r2, r2, #16
    1118:	4313      	orrs	r3, r2
    111a:	60bb      	str	r3, [r7, #8]
    111c:	68fb      	ldr	r3, [r7, #12]
    111e:	220e      	movs	r2, #14
    1120:	1ad3      	subs	r3, r2, r3
    1122:	2201      	movs	r2, #1
    1124:	409a      	lsls	r2, r3
    1126:	0013      	movs	r3, r2
    1128:	001a      	movs	r2, r3
    112a:	68bb      	ldr	r3, [r7, #8]
    112c:	18d2      	adds	r2, r2, r3
    112e:	68fb      	ldr	r3, [r7, #12]
    1130:	210f      	movs	r1, #15
    1132:	1acb      	subs	r3, r1, r3
    1134:	40da      	lsrs	r2, r3
    1136:	0013      	movs	r3, r2
    1138:	e003      	b.n	1142 <mdb232_bikm_get_torque+0xae>
    113a:	2006      	movs	r0, #6
    113c:	f7ff fe34 	bl	da8 <__NVIC_EnableIRQ>
    1140:	2300      	movs	r3, #0
    1142:	0018      	movs	r0, r3
    1144:	46bd      	mov	sp, r7
    1146:	b006      	add	sp, #24
    1148:	bd80      	pop	{r7, pc}
    114a:	46c0      	nop			; (mov r8, r8)
    114c:	200008db 	.word	0x200008db
    1150:	200008f8 	.word	0x200008f8
    1154:	200008d8 	.word	0x200008d8

00001158 <UART1_Handler>:
    1158:	b580      	push	{r7, lr}
    115a:	b082      	sub	sp, #8
    115c:	af00      	add	r7, sp, #0
    115e:	4b16      	ldr	r3, [pc, #88]	; (11b8 <UART1_Handler+0x60>)
    1160:	2200      	movs	r2, #0
    1162:	601a      	str	r2, [r3, #0]
    1164:	4b15      	ldr	r3, [pc, #84]	; (11bc <UART1_Handler+0x64>)
    1166:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1168:	2240      	movs	r2, #64	; 0x40
    116a:	4013      	ands	r3, r2
    116c:	d016      	beq.n	119c <UART1_Handler+0x44>
    116e:	4b14      	ldr	r3, [pc, #80]	; (11c0 <UART1_Handler+0x68>)
    1170:	603b      	str	r3, [r7, #0]
    1172:	2300      	movs	r3, #0
    1174:	607b      	str	r3, [r7, #4]
    1176:	e009      	b.n	118c <UART1_Handler+0x34>
    1178:	683b      	ldr	r3, [r7, #0]
    117a:	1c5a      	adds	r2, r3, #1
    117c:	603a      	str	r2, [r7, #0]
    117e:	4a0f      	ldr	r2, [pc, #60]	; (11bc <UART1_Handler+0x64>)
    1180:	6812      	ldr	r2, [r2, #0]
    1182:	b2d2      	uxtb	r2, r2
    1184:	701a      	strb	r2, [r3, #0]
    1186:	687b      	ldr	r3, [r7, #4]
    1188:	3301      	adds	r3, #1
    118a:	607b      	str	r3, [r7, #4]
    118c:	687b      	ldr	r3, [r7, #4]
    118e:	2b0f      	cmp	r3, #15
    1190:	dc04      	bgt.n	119c <UART1_Handler+0x44>
    1192:	4b0a      	ldr	r3, [pc, #40]	; (11bc <UART1_Handler+0x64>)
    1194:	699b      	ldr	r3, [r3, #24]
    1196:	2210      	movs	r2, #16
    1198:	4013      	ands	r3, r2
    119a:	d0ed      	beq.n	1178 <UART1_Handler+0x20>
    119c:	4b06      	ldr	r3, [pc, #24]	; (11b8 <UART1_Handler+0x60>)
    119e:	687a      	ldr	r2, [r7, #4]
    11a0:	601a      	str	r2, [r3, #0]
    11a2:	4b08      	ldr	r3, [pc, #32]	; (11c4 <UART1_Handler+0x6c>)
    11a4:	681b      	ldr	r3, [r3, #0]
    11a6:	2102      	movs	r1, #2
    11a8:	0018      	movs	r0, r3
    11aa:	f005 fab3 	bl	6714 <osSignalSet>
    11ae:	46c0      	nop			; (mov r8, r8)
    11b0:	46bd      	mov	sp, r7
    11b2:	b002      	add	sp, #8
    11b4:	bd80      	pop	{r7, pc}
    11b6:	46c0      	nop			; (mov r8, r8)
    11b8:	200008f8 	.word	0x200008f8
    11bc:	40030000 	.word	0x40030000
    11c0:	200008d8 	.word	0x200008d8
    11c4:	20000868 	.word	0x20000868

000011c8 <xputc>:
    11c8:	b580      	push	{r7, lr}
    11ca:	b082      	sub	sp, #8
    11cc:	af00      	add	r7, sp, #0
    11ce:	0002      	movs	r2, r0
    11d0:	1dfb      	adds	r3, r7, #7
    11d2:	701a      	strb	r2, [r3, #0]
    11d4:	1dfb      	adds	r3, r7, #7
    11d6:	781b      	ldrb	r3, [r3, #0]
    11d8:	2b0a      	cmp	r3, #10
    11da:	d102      	bne.n	11e2 <xputc+0x1a>
    11dc:	200d      	movs	r0, #13
    11de:	f7ff fff3 	bl	11c8 <xputc>
    11e2:	4b0d      	ldr	r3, [pc, #52]	; (1218 <xputc+0x50>)
    11e4:	681b      	ldr	r3, [r3, #0]
    11e6:	2b00      	cmp	r3, #0
    11e8:	d008      	beq.n	11fc <xputc+0x34>
    11ea:	4b0b      	ldr	r3, [pc, #44]	; (1218 <xputc+0x50>)
    11ec:	681b      	ldr	r3, [r3, #0]
    11ee:	1c59      	adds	r1, r3, #1
    11f0:	4a09      	ldr	r2, [pc, #36]	; (1218 <xputc+0x50>)
    11f2:	6011      	str	r1, [r2, #0]
    11f4:	1dfa      	adds	r2, r7, #7
    11f6:	7812      	ldrb	r2, [r2, #0]
    11f8:	701a      	strb	r2, [r3, #0]
    11fa:	e009      	b.n	1210 <xputc+0x48>
    11fc:	4b07      	ldr	r3, [pc, #28]	; (121c <xputc+0x54>)
    11fe:	681b      	ldr	r3, [r3, #0]
    1200:	2b00      	cmp	r3, #0
    1202:	d005      	beq.n	1210 <xputc+0x48>
    1204:	4b05      	ldr	r3, [pc, #20]	; (121c <xputc+0x54>)
    1206:	681b      	ldr	r3, [r3, #0]
    1208:	1dfa      	adds	r2, r7, #7
    120a:	7812      	ldrb	r2, [r2, #0]
    120c:	0010      	movs	r0, r2
    120e:	4798      	blx	r3
    1210:	46bd      	mov	sp, r7
    1212:	b002      	add	sp, #8
    1214:	bd80      	pop	{r7, pc}
    1216:	46c0      	nop			; (mov r8, r8)
    1218:	20000900 	.word	0x20000900
    121c:	200008fc 	.word	0x200008fc

00001220 <xputs>:
    1220:	b580      	push	{r7, lr}
    1222:	b082      	sub	sp, #8
    1224:	af00      	add	r7, sp, #0
    1226:	6078      	str	r0, [r7, #4]
    1228:	e006      	b.n	1238 <xputs+0x18>
    122a:	687b      	ldr	r3, [r7, #4]
    122c:	1c5a      	adds	r2, r3, #1
    122e:	607a      	str	r2, [r7, #4]
    1230:	781b      	ldrb	r3, [r3, #0]
    1232:	0018      	movs	r0, r3
    1234:	f7ff ffc8 	bl	11c8 <xputc>
    1238:	687b      	ldr	r3, [r7, #4]
    123a:	781b      	ldrb	r3, [r3, #0]
    123c:	2b00      	cmp	r3, #0
    123e:	d1f4      	bne.n	122a <xputs+0xa>
    1240:	46c0      	nop			; (mov r8, r8)
    1242:	46bd      	mov	sp, r7
    1244:	b002      	add	sp, #8
    1246:	bd80      	pop	{r7, pc}

00001248 <xfputs>:
    1248:	b580      	push	{r7, lr}
    124a:	b084      	sub	sp, #16
    124c:	af00      	add	r7, sp, #0
    124e:	6078      	str	r0, [r7, #4]
    1250:	6039      	str	r1, [r7, #0]
    1252:	4b0c      	ldr	r3, [pc, #48]	; (1284 <xfputs+0x3c>)
    1254:	681b      	ldr	r3, [r3, #0]
    1256:	60fb      	str	r3, [r7, #12]
    1258:	4b0a      	ldr	r3, [pc, #40]	; (1284 <xfputs+0x3c>)
    125a:	687a      	ldr	r2, [r7, #4]
    125c:	601a      	str	r2, [r3, #0]
    125e:	e006      	b.n	126e <xfputs+0x26>
    1260:	683b      	ldr	r3, [r7, #0]
    1262:	1c5a      	adds	r2, r3, #1
    1264:	603a      	str	r2, [r7, #0]
    1266:	781b      	ldrb	r3, [r3, #0]
    1268:	0018      	movs	r0, r3
    126a:	f7ff ffad 	bl	11c8 <xputc>
    126e:	683b      	ldr	r3, [r7, #0]
    1270:	781b      	ldrb	r3, [r3, #0]
    1272:	2b00      	cmp	r3, #0
    1274:	d1f4      	bne.n	1260 <xfputs+0x18>
    1276:	4b03      	ldr	r3, [pc, #12]	; (1284 <xfputs+0x3c>)
    1278:	68fa      	ldr	r2, [r7, #12]
    127a:	601a      	str	r2, [r3, #0]
    127c:	46c0      	nop			; (mov r8, r8)
    127e:	46bd      	mov	sp, r7
    1280:	b004      	add	sp, #16
    1282:	bd80      	pop	{r7, pc}
    1284:	200008fc 	.word	0x200008fc

00001288 <xvprintf>:
    1288:	b580      	push	{r7, lr}
    128a:	b08e      	sub	sp, #56	; 0x38
    128c:	af00      	add	r7, sp, #0
    128e:	6078      	str	r0, [r7, #4]
    1290:	6039      	str	r1, [r7, #0]
    1292:	687b      	ldr	r3, [r7, #4]
    1294:	1c5a      	adds	r2, r3, #1
    1296:	607a      	str	r2, [r7, #4]
    1298:	221f      	movs	r2, #31
    129a:	18ba      	adds	r2, r7, r2
    129c:	781b      	ldrb	r3, [r3, #0]
    129e:	7013      	strb	r3, [r2, #0]
    12a0:	231f      	movs	r3, #31
    12a2:	18fb      	adds	r3, r7, r3
    12a4:	781b      	ldrb	r3, [r3, #0]
    12a6:	2b00      	cmp	r3, #0
    12a8:	d100      	bne.n	12ac <xvprintf+0x24>
    12aa:	e172      	b.n	1592 <xvprintf+0x30a>
    12ac:	231f      	movs	r3, #31
    12ae:	18fb      	adds	r3, r7, r3
    12b0:	781b      	ldrb	r3, [r3, #0]
    12b2:	2b25      	cmp	r3, #37	; 0x25
    12b4:	d006      	beq.n	12c4 <xvprintf+0x3c>
    12b6:	231f      	movs	r3, #31
    12b8:	18fb      	adds	r3, r7, r3
    12ba:	781b      	ldrb	r3, [r3, #0]
    12bc:	0018      	movs	r0, r3
    12be:	f7ff ff83 	bl	11c8 <xputc>
    12c2:	e165      	b.n	1590 <xvprintf+0x308>
    12c4:	2300      	movs	r3, #0
    12c6:	627b      	str	r3, [r7, #36]	; 0x24
    12c8:	687b      	ldr	r3, [r7, #4]
    12ca:	1c5a      	adds	r2, r3, #1
    12cc:	607a      	str	r2, [r7, #4]
    12ce:	221f      	movs	r2, #31
    12d0:	18ba      	adds	r2, r7, r2
    12d2:	781b      	ldrb	r3, [r3, #0]
    12d4:	7013      	strb	r3, [r2, #0]
    12d6:	231f      	movs	r3, #31
    12d8:	18fb      	adds	r3, r7, r3
    12da:	781b      	ldrb	r3, [r3, #0]
    12dc:	2b30      	cmp	r3, #48	; 0x30
    12de:	d109      	bne.n	12f4 <xvprintf+0x6c>
    12e0:	2301      	movs	r3, #1
    12e2:	627b      	str	r3, [r7, #36]	; 0x24
    12e4:	687b      	ldr	r3, [r7, #4]
    12e6:	1c5a      	adds	r2, r3, #1
    12e8:	607a      	str	r2, [r7, #4]
    12ea:	221f      	movs	r2, #31
    12ec:	18ba      	adds	r2, r7, r2
    12ee:	781b      	ldrb	r3, [r3, #0]
    12f0:	7013      	strb	r3, [r2, #0]
    12f2:	e00d      	b.n	1310 <xvprintf+0x88>
    12f4:	231f      	movs	r3, #31
    12f6:	18fb      	adds	r3, r7, r3
    12f8:	781b      	ldrb	r3, [r3, #0]
    12fa:	2b2d      	cmp	r3, #45	; 0x2d
    12fc:	d108      	bne.n	1310 <xvprintf+0x88>
    12fe:	2302      	movs	r3, #2
    1300:	627b      	str	r3, [r7, #36]	; 0x24
    1302:	687b      	ldr	r3, [r7, #4]
    1304:	1c5a      	adds	r2, r3, #1
    1306:	607a      	str	r2, [r7, #4]
    1308:	221f      	movs	r2, #31
    130a:	18ba      	adds	r2, r7, r2
    130c:	781b      	ldrb	r3, [r3, #0]
    130e:	7013      	strb	r3, [r2, #0]
    1310:	2300      	movs	r3, #0
    1312:	62bb      	str	r3, [r7, #40]	; 0x28
    1314:	e012      	b.n	133c <xvprintf+0xb4>
    1316:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1318:	0013      	movs	r3, r2
    131a:	009b      	lsls	r3, r3, #2
    131c:	189b      	adds	r3, r3, r2
    131e:	005b      	lsls	r3, r3, #1
    1320:	001a      	movs	r2, r3
    1322:	231f      	movs	r3, #31
    1324:	18fb      	adds	r3, r7, r3
    1326:	781b      	ldrb	r3, [r3, #0]
    1328:	18d3      	adds	r3, r2, r3
    132a:	3b30      	subs	r3, #48	; 0x30
    132c:	62bb      	str	r3, [r7, #40]	; 0x28
    132e:	687b      	ldr	r3, [r7, #4]
    1330:	1c5a      	adds	r2, r3, #1
    1332:	607a      	str	r2, [r7, #4]
    1334:	221f      	movs	r2, #31
    1336:	18ba      	adds	r2, r7, r2
    1338:	781b      	ldrb	r3, [r3, #0]
    133a:	7013      	strb	r3, [r2, #0]
    133c:	231f      	movs	r3, #31
    133e:	18fb      	adds	r3, r7, r3
    1340:	781b      	ldrb	r3, [r3, #0]
    1342:	2b2f      	cmp	r3, #47	; 0x2f
    1344:	d904      	bls.n	1350 <xvprintf+0xc8>
    1346:	231f      	movs	r3, #31
    1348:	18fb      	adds	r3, r7, r3
    134a:	781b      	ldrb	r3, [r3, #0]
    134c:	2b39      	cmp	r3, #57	; 0x39
    134e:	d9e2      	bls.n	1316 <xvprintf+0x8e>
    1350:	231f      	movs	r3, #31
    1352:	18fb      	adds	r3, r7, r3
    1354:	781b      	ldrb	r3, [r3, #0]
    1356:	2b6c      	cmp	r3, #108	; 0x6c
    1358:	d004      	beq.n	1364 <xvprintf+0xdc>
    135a:	231f      	movs	r3, #31
    135c:	18fb      	adds	r3, r7, r3
    135e:	781b      	ldrb	r3, [r3, #0]
    1360:	2b4c      	cmp	r3, #76	; 0x4c
    1362:	d10a      	bne.n	137a <xvprintf+0xf2>
    1364:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1366:	2204      	movs	r2, #4
    1368:	4313      	orrs	r3, r2
    136a:	627b      	str	r3, [r7, #36]	; 0x24
    136c:	687b      	ldr	r3, [r7, #4]
    136e:	1c5a      	adds	r2, r3, #1
    1370:	607a      	str	r2, [r7, #4]
    1372:	221f      	movs	r2, #31
    1374:	18ba      	adds	r2, r7, r2
    1376:	781b      	ldrb	r3, [r3, #0]
    1378:	7013      	strb	r3, [r2, #0]
    137a:	231f      	movs	r3, #31
    137c:	18fb      	adds	r3, r7, r3
    137e:	781b      	ldrb	r3, [r3, #0]
    1380:	2b00      	cmp	r3, #0
    1382:	d100      	bne.n	1386 <xvprintf+0xfe>
    1384:	e107      	b.n	1596 <xvprintf+0x30e>
    1386:	231e      	movs	r3, #30
    1388:	18fb      	adds	r3, r7, r3
    138a:	221f      	movs	r2, #31
    138c:	18ba      	adds	r2, r7, r2
    138e:	7812      	ldrb	r2, [r2, #0]
    1390:	701a      	strb	r2, [r3, #0]
    1392:	231e      	movs	r3, #30
    1394:	18fb      	adds	r3, r7, r3
    1396:	781b      	ldrb	r3, [r3, #0]
    1398:	2b60      	cmp	r3, #96	; 0x60
    139a:	d906      	bls.n	13aa <xvprintf+0x122>
    139c:	231e      	movs	r3, #30
    139e:	18fb      	adds	r3, r7, r3
    13a0:	221e      	movs	r2, #30
    13a2:	18ba      	adds	r2, r7, r2
    13a4:	7812      	ldrb	r2, [r2, #0]
    13a6:	3a20      	subs	r2, #32
    13a8:	701a      	strb	r2, [r3, #0]
    13aa:	231e      	movs	r3, #30
    13ac:	18fb      	adds	r3, r7, r3
    13ae:	781b      	ldrb	r3, [r3, #0]
    13b0:	3b42      	subs	r3, #66	; 0x42
    13b2:	2b16      	cmp	r3, #22
    13b4:	d847      	bhi.n	1446 <xvprintf+0x1be>
    13b6:	009a      	lsls	r2, r3, #2
    13b8:	4b79      	ldr	r3, [pc, #484]	; (15a0 <xvprintf+0x318>)
    13ba:	18d3      	adds	r3, r2, r3
    13bc:	681b      	ldr	r3, [r3, #0]
    13be:	469f      	mov	pc, r3
    13c0:	683b      	ldr	r3, [r7, #0]
    13c2:	1d1a      	adds	r2, r3, #4
    13c4:	603a      	str	r2, [r7, #0]
    13c6:	681b      	ldr	r3, [r3, #0]
    13c8:	61bb      	str	r3, [r7, #24]
    13ca:	2300      	movs	r3, #0
    13cc:	62fb      	str	r3, [r7, #44]	; 0x2c
    13ce:	e002      	b.n	13d6 <xvprintf+0x14e>
    13d0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    13d2:	3301      	adds	r3, #1
    13d4:	62fb      	str	r3, [r7, #44]	; 0x2c
    13d6:	69ba      	ldr	r2, [r7, #24]
    13d8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    13da:	18d3      	adds	r3, r2, r3
    13dc:	781b      	ldrb	r3, [r3, #0]
    13de:	2b00      	cmp	r3, #0
    13e0:	d1f6      	bne.n	13d0 <xvprintf+0x148>
    13e2:	e002      	b.n	13ea <xvprintf+0x162>
    13e4:	2020      	movs	r0, #32
    13e6:	f7ff feef 	bl	11c8 <xputc>
    13ea:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13ec:	2202      	movs	r2, #2
    13ee:	4013      	ands	r3, r2
    13f0:	d105      	bne.n	13fe <xvprintf+0x176>
    13f2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    13f4:	1c5a      	adds	r2, r3, #1
    13f6:	62fa      	str	r2, [r7, #44]	; 0x2c
    13f8:	6aba      	ldr	r2, [r7, #40]	; 0x28
    13fa:	4293      	cmp	r3, r2
    13fc:	d3f2      	bcc.n	13e4 <xvprintf+0x15c>
    13fe:	69bb      	ldr	r3, [r7, #24]
    1400:	0018      	movs	r0, r3
    1402:	f7ff ff0d 	bl	1220 <xputs>
    1406:	e002      	b.n	140e <xvprintf+0x186>
    1408:	2020      	movs	r0, #32
    140a:	f7ff fedd 	bl	11c8 <xputc>
    140e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1410:	1c5a      	adds	r2, r3, #1
    1412:	62fa      	str	r2, [r7, #44]	; 0x2c
    1414:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1416:	4293      	cmp	r3, r2
    1418:	d3f6      	bcc.n	1408 <xvprintf+0x180>
    141a:	e0b9      	b.n	1590 <xvprintf+0x308>
    141c:	683b      	ldr	r3, [r7, #0]
    141e:	1d1a      	adds	r2, r3, #4
    1420:	603a      	str	r2, [r7, #0]
    1422:	681b      	ldr	r3, [r3, #0]
    1424:	b2db      	uxtb	r3, r3
    1426:	0018      	movs	r0, r3
    1428:	f7ff fece 	bl	11c8 <xputc>
    142c:	e0b0      	b.n	1590 <xvprintf+0x308>
    142e:	2302      	movs	r3, #2
    1430:	637b      	str	r3, [r7, #52]	; 0x34
    1432:	e00f      	b.n	1454 <xvprintf+0x1cc>
    1434:	2308      	movs	r3, #8
    1436:	637b      	str	r3, [r7, #52]	; 0x34
    1438:	e00c      	b.n	1454 <xvprintf+0x1cc>
    143a:	230a      	movs	r3, #10
    143c:	637b      	str	r3, [r7, #52]	; 0x34
    143e:	e009      	b.n	1454 <xvprintf+0x1cc>
    1440:	2310      	movs	r3, #16
    1442:	637b      	str	r3, [r7, #52]	; 0x34
    1444:	e006      	b.n	1454 <xvprintf+0x1cc>
    1446:	231f      	movs	r3, #31
    1448:	18fb      	adds	r3, r7, r3
    144a:	781b      	ldrb	r3, [r3, #0]
    144c:	0018      	movs	r0, r3
    144e:	f7ff febb 	bl	11c8 <xputc>
    1452:	e09d      	b.n	1590 <xvprintf+0x308>
    1454:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1456:	2204      	movs	r2, #4
    1458:	4013      	ands	r3, r2
    145a:	d004      	beq.n	1466 <xvprintf+0x1de>
    145c:	683b      	ldr	r3, [r7, #0]
    145e:	1d1a      	adds	r2, r3, #4
    1460:	603a      	str	r2, [r7, #0]
    1462:	681b      	ldr	r3, [r3, #0]
    1464:	e00d      	b.n	1482 <xvprintf+0x1fa>
    1466:	231e      	movs	r3, #30
    1468:	18fb      	adds	r3, r7, r3
    146a:	781b      	ldrb	r3, [r3, #0]
    146c:	2b44      	cmp	r3, #68	; 0x44
    146e:	d104      	bne.n	147a <xvprintf+0x1f2>
    1470:	683b      	ldr	r3, [r7, #0]
    1472:	1d1a      	adds	r2, r3, #4
    1474:	603a      	str	r2, [r7, #0]
    1476:	681b      	ldr	r3, [r3, #0]
    1478:	e003      	b.n	1482 <xvprintf+0x1fa>
    147a:	683b      	ldr	r3, [r7, #0]
    147c:	1d1a      	adds	r2, r3, #4
    147e:	603a      	str	r2, [r7, #0]
    1480:	681b      	ldr	r3, [r3, #0]
    1482:	623b      	str	r3, [r7, #32]
    1484:	231e      	movs	r3, #30
    1486:	18fb      	adds	r3, r7, r3
    1488:	781b      	ldrb	r3, [r3, #0]
    148a:	2b44      	cmp	r3, #68	; 0x44
    148c:	d109      	bne.n	14a2 <xvprintf+0x21a>
    148e:	6a3b      	ldr	r3, [r7, #32]
    1490:	2b00      	cmp	r3, #0
    1492:	da06      	bge.n	14a2 <xvprintf+0x21a>
    1494:	6a3b      	ldr	r3, [r7, #32]
    1496:	425b      	negs	r3, r3
    1498:	623b      	str	r3, [r7, #32]
    149a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    149c:	2208      	movs	r2, #8
    149e:	4313      	orrs	r3, r2
    14a0:	627b      	str	r3, [r7, #36]	; 0x24
    14a2:	2300      	movs	r3, #0
    14a4:	633b      	str	r3, [r7, #48]	; 0x30
    14a6:	6a3b      	ldr	r3, [r7, #32]
    14a8:	6b79      	ldr	r1, [r7, #52]	; 0x34
    14aa:	0018      	movs	r0, r3
    14ac:	f003 fa9c 	bl	49e8 <__aeabi_uidivmod>
    14b0:	000b      	movs	r3, r1
    14b2:	001a      	movs	r2, r3
    14b4:	231e      	movs	r3, #30
    14b6:	18fb      	adds	r3, r7, r3
    14b8:	701a      	strb	r2, [r3, #0]
    14ba:	6b79      	ldr	r1, [r7, #52]	; 0x34
    14bc:	6a38      	ldr	r0, [r7, #32]
    14be:	f003 fa0d 	bl	48dc <__aeabi_uidiv>
    14c2:	0003      	movs	r3, r0
    14c4:	623b      	str	r3, [r7, #32]
    14c6:	231e      	movs	r3, #30
    14c8:	18fb      	adds	r3, r7, r3
    14ca:	781b      	ldrb	r3, [r3, #0]
    14cc:	2b09      	cmp	r3, #9
    14ce:	d90e      	bls.n	14ee <xvprintf+0x266>
    14d0:	231f      	movs	r3, #31
    14d2:	18fb      	adds	r3, r7, r3
    14d4:	781b      	ldrb	r3, [r3, #0]
    14d6:	2b78      	cmp	r3, #120	; 0x78
    14d8:	d101      	bne.n	14de <xvprintf+0x256>
    14da:	2327      	movs	r3, #39	; 0x27
    14dc:	e000      	b.n	14e0 <xvprintf+0x258>
    14de:	2307      	movs	r3, #7
    14e0:	221e      	movs	r2, #30
    14e2:	18ba      	adds	r2, r7, r2
    14e4:	211e      	movs	r1, #30
    14e6:	1879      	adds	r1, r7, r1
    14e8:	7809      	ldrb	r1, [r1, #0]
    14ea:	185b      	adds	r3, r3, r1
    14ec:	7013      	strb	r3, [r2, #0]
    14ee:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14f0:	1c5a      	adds	r2, r3, #1
    14f2:	633a      	str	r2, [r7, #48]	; 0x30
    14f4:	221e      	movs	r2, #30
    14f6:	18ba      	adds	r2, r7, r2
    14f8:	7812      	ldrb	r2, [r2, #0]
    14fa:	3230      	adds	r2, #48	; 0x30
    14fc:	b2d1      	uxtb	r1, r2
    14fe:	2208      	movs	r2, #8
    1500:	18ba      	adds	r2, r7, r2
    1502:	54d1      	strb	r1, [r2, r3]
    1504:	6a3b      	ldr	r3, [r7, #32]
    1506:	2b00      	cmp	r3, #0
    1508:	d002      	beq.n	1510 <xvprintf+0x288>
    150a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    150c:	2b0f      	cmp	r3, #15
    150e:	d9ca      	bls.n	14a6 <xvprintf+0x21e>
    1510:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1512:	2208      	movs	r2, #8
    1514:	4013      	ands	r3, r2
    1516:	d006      	beq.n	1526 <xvprintf+0x29e>
    1518:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    151a:	1c5a      	adds	r2, r3, #1
    151c:	633a      	str	r2, [r7, #48]	; 0x30
    151e:	2208      	movs	r2, #8
    1520:	18ba      	adds	r2, r7, r2
    1522:	212d      	movs	r1, #45	; 0x2d
    1524:	54d1      	strb	r1, [r2, r3]
    1526:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1528:	62fb      	str	r3, [r7, #44]	; 0x2c
    152a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    152c:	2201      	movs	r2, #1
    152e:	4013      	ands	r3, r2
    1530:	d001      	beq.n	1536 <xvprintf+0x2ae>
    1532:	2230      	movs	r2, #48	; 0x30
    1534:	e000      	b.n	1538 <xvprintf+0x2b0>
    1536:	2220      	movs	r2, #32
    1538:	231e      	movs	r3, #30
    153a:	18fb      	adds	r3, r7, r3
    153c:	701a      	strb	r2, [r3, #0]
    153e:	e005      	b.n	154c <xvprintf+0x2c4>
    1540:	231e      	movs	r3, #30
    1542:	18fb      	adds	r3, r7, r3
    1544:	781b      	ldrb	r3, [r3, #0]
    1546:	0018      	movs	r0, r3
    1548:	f7ff fe3e 	bl	11c8 <xputc>
    154c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    154e:	2202      	movs	r2, #2
    1550:	4013      	ands	r3, r2
    1552:	d105      	bne.n	1560 <xvprintf+0x2d8>
    1554:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1556:	1c5a      	adds	r2, r3, #1
    1558:	62fa      	str	r2, [r7, #44]	; 0x2c
    155a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    155c:	4293      	cmp	r3, r2
    155e:	d3ef      	bcc.n	1540 <xvprintf+0x2b8>
    1560:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1562:	3b01      	subs	r3, #1
    1564:	633b      	str	r3, [r7, #48]	; 0x30
    1566:	2308      	movs	r3, #8
    1568:	18fa      	adds	r2, r7, r3
    156a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    156c:	18d3      	adds	r3, r2, r3
    156e:	781b      	ldrb	r3, [r3, #0]
    1570:	0018      	movs	r0, r3
    1572:	f7ff fe29 	bl	11c8 <xputc>
    1576:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1578:	2b00      	cmp	r3, #0
    157a:	d1f1      	bne.n	1560 <xvprintf+0x2d8>
    157c:	e002      	b.n	1584 <xvprintf+0x2fc>
    157e:	2020      	movs	r0, #32
    1580:	f7ff fe22 	bl	11c8 <xputc>
    1584:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1586:	1c5a      	adds	r2, r3, #1
    1588:	62fa      	str	r2, [r7, #44]	; 0x2c
    158a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    158c:	4293      	cmp	r3, r2
    158e:	d3f6      	bcc.n	157e <xvprintf+0x2f6>
    1590:	e67f      	b.n	1292 <xvprintf+0xa>
    1592:	46c0      	nop			; (mov r8, r8)
    1594:	e000      	b.n	1598 <xvprintf+0x310>
    1596:	46c0      	nop			; (mov r8, r8)
    1598:	46c0      	nop			; (mov r8, r8)
    159a:	46bd      	mov	sp, r7
    159c:	b00e      	add	sp, #56	; 0x38
    159e:	bd80      	pop	{r7, pc}
    15a0:	00008ad0 	.word	0x00008ad0

000015a4 <xprintf>:
    15a4:	b40f      	push	{r0, r1, r2, r3}
    15a6:	b580      	push	{r7, lr}
    15a8:	b082      	sub	sp, #8
    15aa:	af00      	add	r7, sp, #0
    15ac:	2314      	movs	r3, #20
    15ae:	18fb      	adds	r3, r7, r3
    15b0:	607b      	str	r3, [r7, #4]
    15b2:	687a      	ldr	r2, [r7, #4]
    15b4:	693b      	ldr	r3, [r7, #16]
    15b6:	0011      	movs	r1, r2
    15b8:	0018      	movs	r0, r3
    15ba:	f7ff fe65 	bl	1288 <xvprintf>
    15be:	46c0      	nop			; (mov r8, r8)
    15c0:	46bd      	mov	sp, r7
    15c2:	b002      	add	sp, #8
    15c4:	bc80      	pop	{r7}
    15c6:	bc08      	pop	{r3}
    15c8:	b004      	add	sp, #16
    15ca:	4718      	bx	r3

000015cc <xsprintf>:
    15cc:	b40e      	push	{r1, r2, r3}
    15ce:	b580      	push	{r7, lr}
    15d0:	b085      	sub	sp, #20
    15d2:	af00      	add	r7, sp, #0
    15d4:	6078      	str	r0, [r7, #4]
    15d6:	4b0d      	ldr	r3, [pc, #52]	; (160c <xsprintf+0x40>)
    15d8:	687a      	ldr	r2, [r7, #4]
    15da:	601a      	str	r2, [r3, #0]
    15dc:	2320      	movs	r3, #32
    15de:	18fb      	adds	r3, r7, r3
    15e0:	60fb      	str	r3, [r7, #12]
    15e2:	68fa      	ldr	r2, [r7, #12]
    15e4:	69fb      	ldr	r3, [r7, #28]
    15e6:	0011      	movs	r1, r2
    15e8:	0018      	movs	r0, r3
    15ea:	f7ff fe4d 	bl	1288 <xvprintf>
    15ee:	4b07      	ldr	r3, [pc, #28]	; (160c <xsprintf+0x40>)
    15f0:	681b      	ldr	r3, [r3, #0]
    15f2:	2200      	movs	r2, #0
    15f4:	701a      	strb	r2, [r3, #0]
    15f6:	4b05      	ldr	r3, [pc, #20]	; (160c <xsprintf+0x40>)
    15f8:	2200      	movs	r2, #0
    15fa:	601a      	str	r2, [r3, #0]
    15fc:	46c0      	nop			; (mov r8, r8)
    15fe:	46bd      	mov	sp, r7
    1600:	b005      	add	sp, #20
    1602:	bc80      	pop	{r7}
    1604:	bc08      	pop	{r3}
    1606:	b003      	add	sp, #12
    1608:	4718      	bx	r3
    160a:	46c0      	nop			; (mov r8, r8)
    160c:	20000900 	.word	0x20000900

00001610 <xfprintf>:
    1610:	b40e      	push	{r1, r2, r3}
    1612:	b580      	push	{r7, lr}
    1614:	b085      	sub	sp, #20
    1616:	af00      	add	r7, sp, #0
    1618:	6078      	str	r0, [r7, #4]
    161a:	4b0c      	ldr	r3, [pc, #48]	; (164c <xfprintf+0x3c>)
    161c:	681b      	ldr	r3, [r3, #0]
    161e:	60fb      	str	r3, [r7, #12]
    1620:	4b0a      	ldr	r3, [pc, #40]	; (164c <xfprintf+0x3c>)
    1622:	687a      	ldr	r2, [r7, #4]
    1624:	601a      	str	r2, [r3, #0]
    1626:	2320      	movs	r3, #32
    1628:	18fb      	adds	r3, r7, r3
    162a:	60bb      	str	r3, [r7, #8]
    162c:	68ba      	ldr	r2, [r7, #8]
    162e:	69fb      	ldr	r3, [r7, #28]
    1630:	0011      	movs	r1, r2
    1632:	0018      	movs	r0, r3
    1634:	f7ff fe28 	bl	1288 <xvprintf>
    1638:	4b04      	ldr	r3, [pc, #16]	; (164c <xfprintf+0x3c>)
    163a:	68fa      	ldr	r2, [r7, #12]
    163c:	601a      	str	r2, [r3, #0]
    163e:	46c0      	nop			; (mov r8, r8)
    1640:	46bd      	mov	sp, r7
    1642:	b005      	add	sp, #20
    1644:	bc80      	pop	{r7}
    1646:	bc08      	pop	{r3}
    1648:	b003      	add	sp, #12
    164a:	4718      	bx	r3
    164c:	200008fc 	.word	0x200008fc

00001650 <put_dump>:
    1650:	b580      	push	{r7, lr}
    1652:	b088      	sub	sp, #32
    1654:	af00      	add	r7, sp, #0
    1656:	60f8      	str	r0, [r7, #12]
    1658:	60b9      	str	r1, [r7, #8]
    165a:	607a      	str	r2, [r7, #4]
    165c:	603b      	str	r3, [r7, #0]
    165e:	68ba      	ldr	r2, [r7, #8]
    1660:	4b38      	ldr	r3, [pc, #224]	; (1744 <put_dump+0xf4>)
    1662:	0011      	movs	r1, r2
    1664:	0018      	movs	r0, r3
    1666:	f7ff ff9d 	bl	15a4 <xprintf>
    166a:	683b      	ldr	r3, [r7, #0]
    166c:	2b02      	cmp	r3, #2
    166e:	d03c      	beq.n	16ea <put_dump+0x9a>
    1670:	2b04      	cmp	r3, #4
    1672:	d04d      	beq.n	1710 <put_dump+0xc0>
    1674:	2b01      	cmp	r3, #1
    1676:	d15d      	bne.n	1734 <put_dump+0xe4>
    1678:	68fb      	ldr	r3, [r7, #12]
    167a:	613b      	str	r3, [r7, #16]
    167c:	2300      	movs	r3, #0
    167e:	61fb      	str	r3, [r7, #28]
    1680:	e00c      	b.n	169c <put_dump+0x4c>
    1682:	69fb      	ldr	r3, [r7, #28]
    1684:	693a      	ldr	r2, [r7, #16]
    1686:	18d3      	adds	r3, r2, r3
    1688:	781b      	ldrb	r3, [r3, #0]
    168a:	001a      	movs	r2, r3
    168c:	4b2e      	ldr	r3, [pc, #184]	; (1748 <put_dump+0xf8>)
    168e:	0011      	movs	r1, r2
    1690:	0018      	movs	r0, r3
    1692:	f7ff ff87 	bl	15a4 <xprintf>
    1696:	69fb      	ldr	r3, [r7, #28]
    1698:	3301      	adds	r3, #1
    169a:	61fb      	str	r3, [r7, #28]
    169c:	69fa      	ldr	r2, [r7, #28]
    169e:	687b      	ldr	r3, [r7, #4]
    16a0:	429a      	cmp	r2, r3
    16a2:	dbee      	blt.n	1682 <put_dump+0x32>
    16a4:	2020      	movs	r0, #32
    16a6:	f7ff fd8f 	bl	11c8 <xputc>
    16aa:	2300      	movs	r3, #0
    16ac:	61fb      	str	r3, [r7, #28]
    16ae:	e017      	b.n	16e0 <put_dump+0x90>
    16b0:	69fb      	ldr	r3, [r7, #28]
    16b2:	693a      	ldr	r2, [r7, #16]
    16b4:	18d3      	adds	r3, r2, r3
    16b6:	781b      	ldrb	r3, [r3, #0]
    16b8:	2b1f      	cmp	r3, #31
    16ba:	d90a      	bls.n	16d2 <put_dump+0x82>
    16bc:	69fb      	ldr	r3, [r7, #28]
    16be:	693a      	ldr	r2, [r7, #16]
    16c0:	18d3      	adds	r3, r2, r3
    16c2:	781b      	ldrb	r3, [r3, #0]
    16c4:	2b7e      	cmp	r3, #126	; 0x7e
    16c6:	d804      	bhi.n	16d2 <put_dump+0x82>
    16c8:	69fb      	ldr	r3, [r7, #28]
    16ca:	693a      	ldr	r2, [r7, #16]
    16cc:	18d3      	adds	r3, r2, r3
    16ce:	781b      	ldrb	r3, [r3, #0]
    16d0:	e000      	b.n	16d4 <put_dump+0x84>
    16d2:	232e      	movs	r3, #46	; 0x2e
    16d4:	0018      	movs	r0, r3
    16d6:	f7ff fd77 	bl	11c8 <xputc>
    16da:	69fb      	ldr	r3, [r7, #28]
    16dc:	3301      	adds	r3, #1
    16de:	61fb      	str	r3, [r7, #28]
    16e0:	69fa      	ldr	r2, [r7, #28]
    16e2:	687b      	ldr	r3, [r7, #4]
    16e4:	429a      	cmp	r2, r3
    16e6:	dbe3      	blt.n	16b0 <put_dump+0x60>
    16e8:	e024      	b.n	1734 <put_dump+0xe4>
    16ea:	68fb      	ldr	r3, [r7, #12]
    16ec:	61bb      	str	r3, [r7, #24]
    16ee:	69bb      	ldr	r3, [r7, #24]
    16f0:	1c9a      	adds	r2, r3, #2
    16f2:	61ba      	str	r2, [r7, #24]
    16f4:	881b      	ldrh	r3, [r3, #0]
    16f6:	001a      	movs	r2, r3
    16f8:	4b14      	ldr	r3, [pc, #80]	; (174c <put_dump+0xfc>)
    16fa:	0011      	movs	r1, r2
    16fc:	0018      	movs	r0, r3
    16fe:	f7ff ff51 	bl	15a4 <xprintf>
    1702:	687b      	ldr	r3, [r7, #4]
    1704:	3b01      	subs	r3, #1
    1706:	607b      	str	r3, [r7, #4]
    1708:	687b      	ldr	r3, [r7, #4]
    170a:	2b00      	cmp	r3, #0
    170c:	d1ef      	bne.n	16ee <put_dump+0x9e>
    170e:	e011      	b.n	1734 <put_dump+0xe4>
    1710:	68fb      	ldr	r3, [r7, #12]
    1712:	617b      	str	r3, [r7, #20]
    1714:	697b      	ldr	r3, [r7, #20]
    1716:	1d1a      	adds	r2, r3, #4
    1718:	617a      	str	r2, [r7, #20]
    171a:	681a      	ldr	r2, [r3, #0]
    171c:	4b0c      	ldr	r3, [pc, #48]	; (1750 <put_dump+0x100>)
    171e:	0011      	movs	r1, r2
    1720:	0018      	movs	r0, r3
    1722:	f7ff ff3f 	bl	15a4 <xprintf>
    1726:	687b      	ldr	r3, [r7, #4]
    1728:	3b01      	subs	r3, #1
    172a:	607b      	str	r3, [r7, #4]
    172c:	687b      	ldr	r3, [r7, #4]
    172e:	2b00      	cmp	r3, #0
    1730:	d1f0      	bne.n	1714 <put_dump+0xc4>
    1732:	46c0      	nop			; (mov r8, r8)
    1734:	200a      	movs	r0, #10
    1736:	f7ff fd47 	bl	11c8 <xputc>
    173a:	46c0      	nop			; (mov r8, r8)
    173c:	46bd      	mov	sp, r7
    173e:	b008      	add	sp, #32
    1740:	bd80      	pop	{r7, pc}
    1742:	46c0      	nop			; (mov r8, r8)
    1744:	00008b2c 	.word	0x00008b2c
    1748:	00008b34 	.word	0x00008b34
    174c:	00008b3c 	.word	0x00008b3c
    1750:	00008b44 	.word	0x00008b44

00001754 <xgets>:
    1754:	b580      	push	{r7, lr}
    1756:	b084      	sub	sp, #16
    1758:	af00      	add	r7, sp, #0
    175a:	6078      	str	r0, [r7, #4]
    175c:	6039      	str	r1, [r7, #0]
    175e:	4b24      	ldr	r3, [pc, #144]	; (17f0 <xgets+0x9c>)
    1760:	681b      	ldr	r3, [r3, #0]
    1762:	2b00      	cmp	r3, #0
    1764:	d101      	bne.n	176a <xgets+0x16>
    1766:	2300      	movs	r3, #0
    1768:	e03e      	b.n	17e8 <xgets+0x94>
    176a:	2300      	movs	r3, #0
    176c:	60fb      	str	r3, [r7, #12]
    176e:	4b20      	ldr	r3, [pc, #128]	; (17f0 <xgets+0x9c>)
    1770:	681b      	ldr	r3, [r3, #0]
    1772:	4798      	blx	r3
    1774:	0003      	movs	r3, r0
    1776:	60bb      	str	r3, [r7, #8]
    1778:	68bb      	ldr	r3, [r7, #8]
    177a:	2b00      	cmp	r3, #0
    177c:	d101      	bne.n	1782 <xgets+0x2e>
    177e:	2300      	movs	r3, #0
    1780:	e032      	b.n	17e8 <xgets+0x94>
    1782:	68bb      	ldr	r3, [r7, #8]
    1784:	2b0d      	cmp	r3, #13
    1786:	d025      	beq.n	17d4 <xgets+0x80>
    1788:	68bb      	ldr	r3, [r7, #8]
    178a:	2b08      	cmp	r3, #8
    178c:	d10b      	bne.n	17a6 <xgets+0x52>
    178e:	68fb      	ldr	r3, [r7, #12]
    1790:	2b00      	cmp	r3, #0
    1792:	d008      	beq.n	17a6 <xgets+0x52>
    1794:	68fb      	ldr	r3, [r7, #12]
    1796:	3b01      	subs	r3, #1
    1798:	60fb      	str	r3, [r7, #12]
    179a:	68bb      	ldr	r3, [r7, #8]
    179c:	b2db      	uxtb	r3, r3
    179e:	0018      	movs	r0, r3
    17a0:	f7ff fd12 	bl	11c8 <xputc>
    17a4:	e015      	b.n	17d2 <xgets+0x7e>
    17a6:	68bb      	ldr	r3, [r7, #8]
    17a8:	2b1f      	cmp	r3, #31
    17aa:	dde0      	ble.n	176e <xgets+0x1a>
    17ac:	683b      	ldr	r3, [r7, #0]
    17ae:	1e5a      	subs	r2, r3, #1
    17b0:	68fb      	ldr	r3, [r7, #12]
    17b2:	429a      	cmp	r2, r3
    17b4:	dddb      	ble.n	176e <xgets+0x1a>
    17b6:	68fb      	ldr	r3, [r7, #12]
    17b8:	1c5a      	adds	r2, r3, #1
    17ba:	60fa      	str	r2, [r7, #12]
    17bc:	001a      	movs	r2, r3
    17be:	687b      	ldr	r3, [r7, #4]
    17c0:	189b      	adds	r3, r3, r2
    17c2:	68ba      	ldr	r2, [r7, #8]
    17c4:	b2d2      	uxtb	r2, r2
    17c6:	701a      	strb	r2, [r3, #0]
    17c8:	68bb      	ldr	r3, [r7, #8]
    17ca:	b2db      	uxtb	r3, r3
    17cc:	0018      	movs	r0, r3
    17ce:	f7ff fcfb 	bl	11c8 <xputc>
    17d2:	e7cc      	b.n	176e <xgets+0x1a>
    17d4:	46c0      	nop			; (mov r8, r8)
    17d6:	68fb      	ldr	r3, [r7, #12]
    17d8:	687a      	ldr	r2, [r7, #4]
    17da:	18d3      	adds	r3, r2, r3
    17dc:	2200      	movs	r2, #0
    17de:	701a      	strb	r2, [r3, #0]
    17e0:	200a      	movs	r0, #10
    17e2:	f7ff fcf1 	bl	11c8 <xputc>
    17e6:	2301      	movs	r3, #1
    17e8:	0018      	movs	r0, r3
    17ea:	46bd      	mov	sp, r7
    17ec:	b004      	add	sp, #16
    17ee:	bd80      	pop	{r7, pc}
    17f0:	20000904 	.word	0x20000904

000017f4 <xfgets>:
    17f4:	b580      	push	{r7, lr}
    17f6:	b086      	sub	sp, #24
    17f8:	af00      	add	r7, sp, #0
    17fa:	60f8      	str	r0, [r7, #12]
    17fc:	60b9      	str	r1, [r7, #8]
    17fe:	607a      	str	r2, [r7, #4]
    1800:	4b0a      	ldr	r3, [pc, #40]	; (182c <xfgets+0x38>)
    1802:	681b      	ldr	r3, [r3, #0]
    1804:	617b      	str	r3, [r7, #20]
    1806:	4b09      	ldr	r3, [pc, #36]	; (182c <xfgets+0x38>)
    1808:	68fa      	ldr	r2, [r7, #12]
    180a:	601a      	str	r2, [r3, #0]
    180c:	687a      	ldr	r2, [r7, #4]
    180e:	68bb      	ldr	r3, [r7, #8]
    1810:	0011      	movs	r1, r2
    1812:	0018      	movs	r0, r3
    1814:	f7ff ff9e 	bl	1754 <xgets>
    1818:	0003      	movs	r3, r0
    181a:	613b      	str	r3, [r7, #16]
    181c:	4b03      	ldr	r3, [pc, #12]	; (182c <xfgets+0x38>)
    181e:	697a      	ldr	r2, [r7, #20]
    1820:	601a      	str	r2, [r3, #0]
    1822:	693b      	ldr	r3, [r7, #16]
    1824:	0018      	movs	r0, r3
    1826:	46bd      	mov	sp, r7
    1828:	b006      	add	sp, #24
    182a:	bd80      	pop	{r7, pc}
    182c:	20000904 	.word	0x20000904

00001830 <xatoi>:
    1830:	b580      	push	{r7, lr}
    1832:	b084      	sub	sp, #16
    1834:	af00      	add	r7, sp, #0
    1836:	6078      	str	r0, [r7, #4]
    1838:	6039      	str	r1, [r7, #0]
    183a:	2309      	movs	r3, #9
    183c:	18fb      	adds	r3, r7, r3
    183e:	2200      	movs	r2, #0
    1840:	701a      	strb	r2, [r3, #0]
    1842:	683b      	ldr	r3, [r7, #0]
    1844:	2200      	movs	r2, #0
    1846:	601a      	str	r2, [r3, #0]
    1848:	e004      	b.n	1854 <xatoi+0x24>
    184a:	687b      	ldr	r3, [r7, #4]
    184c:	681b      	ldr	r3, [r3, #0]
    184e:	1c5a      	adds	r2, r3, #1
    1850:	687b      	ldr	r3, [r7, #4]
    1852:	601a      	str	r2, [r3, #0]
    1854:	687b      	ldr	r3, [r7, #4]
    1856:	681a      	ldr	r2, [r3, #0]
    1858:	230b      	movs	r3, #11
    185a:	18fb      	adds	r3, r7, r3
    185c:	7812      	ldrb	r2, [r2, #0]
    185e:	701a      	strb	r2, [r3, #0]
    1860:	230b      	movs	r3, #11
    1862:	18fb      	adds	r3, r7, r3
    1864:	781b      	ldrb	r3, [r3, #0]
    1866:	2b20      	cmp	r3, #32
    1868:	d0ef      	beq.n	184a <xatoi+0x1a>
    186a:	230b      	movs	r3, #11
    186c:	18fb      	adds	r3, r7, r3
    186e:	781b      	ldrb	r3, [r3, #0]
    1870:	2b2d      	cmp	r3, #45	; 0x2d
    1872:	d10e      	bne.n	1892 <xatoi+0x62>
    1874:	2309      	movs	r3, #9
    1876:	18fb      	adds	r3, r7, r3
    1878:	2201      	movs	r2, #1
    187a:	701a      	strb	r2, [r3, #0]
    187c:	687b      	ldr	r3, [r7, #4]
    187e:	681b      	ldr	r3, [r3, #0]
    1880:	1c5a      	adds	r2, r3, #1
    1882:	687b      	ldr	r3, [r7, #4]
    1884:	601a      	str	r2, [r3, #0]
    1886:	687b      	ldr	r3, [r7, #4]
    1888:	681a      	ldr	r2, [r3, #0]
    188a:	230b      	movs	r3, #11
    188c:	18fb      	adds	r3, r7, r3
    188e:	7812      	ldrb	r2, [r2, #0]
    1890:	701a      	strb	r2, [r3, #0]
    1892:	230b      	movs	r3, #11
    1894:	18fb      	adds	r3, r7, r3
    1896:	781b      	ldrb	r3, [r3, #0]
    1898:	2b30      	cmp	r3, #48	; 0x30
    189a:	d149      	bne.n	1930 <xatoi+0x100>
    189c:	687b      	ldr	r3, [r7, #4]
    189e:	681b      	ldr	r3, [r3, #0]
    18a0:	1c5a      	adds	r2, r3, #1
    18a2:	687b      	ldr	r3, [r7, #4]
    18a4:	601a      	str	r2, [r3, #0]
    18a6:	687b      	ldr	r3, [r7, #4]
    18a8:	681a      	ldr	r2, [r3, #0]
    18aa:	230b      	movs	r3, #11
    18ac:	18fb      	adds	r3, r7, r3
    18ae:	7812      	ldrb	r2, [r2, #0]
    18b0:	701a      	strb	r2, [r3, #0]
    18b2:	230b      	movs	r3, #11
    18b4:	18fb      	adds	r3, r7, r3
    18b6:	781b      	ldrb	r3, [r3, #0]
    18b8:	2b62      	cmp	r3, #98	; 0x62
    18ba:	d011      	beq.n	18e0 <xatoi+0xb0>
    18bc:	2b78      	cmp	r3, #120	; 0x78
    18be:	d11f      	bne.n	1900 <xatoi+0xd0>
    18c0:	230a      	movs	r3, #10
    18c2:	18fb      	adds	r3, r7, r3
    18c4:	2210      	movs	r2, #16
    18c6:	701a      	strb	r2, [r3, #0]
    18c8:	687b      	ldr	r3, [r7, #4]
    18ca:	681b      	ldr	r3, [r3, #0]
    18cc:	1c5a      	adds	r2, r3, #1
    18ce:	687b      	ldr	r3, [r7, #4]
    18d0:	601a      	str	r2, [r3, #0]
    18d2:	687b      	ldr	r3, [r7, #4]
    18d4:	681a      	ldr	r2, [r3, #0]
    18d6:	230b      	movs	r3, #11
    18d8:	18fb      	adds	r3, r7, r3
    18da:	7812      	ldrb	r2, [r2, #0]
    18dc:	701a      	strb	r2, [r3, #0]
    18de:	e037      	b.n	1950 <xatoi+0x120>
    18e0:	230a      	movs	r3, #10
    18e2:	18fb      	adds	r3, r7, r3
    18e4:	2202      	movs	r2, #2
    18e6:	701a      	strb	r2, [r3, #0]
    18e8:	687b      	ldr	r3, [r7, #4]
    18ea:	681b      	ldr	r3, [r3, #0]
    18ec:	1c5a      	adds	r2, r3, #1
    18ee:	687b      	ldr	r3, [r7, #4]
    18f0:	601a      	str	r2, [r3, #0]
    18f2:	687b      	ldr	r3, [r7, #4]
    18f4:	681a      	ldr	r2, [r3, #0]
    18f6:	230b      	movs	r3, #11
    18f8:	18fb      	adds	r3, r7, r3
    18fa:	7812      	ldrb	r2, [r2, #0]
    18fc:	701a      	strb	r2, [r3, #0]
    18fe:	e027      	b.n	1950 <xatoi+0x120>
    1900:	230b      	movs	r3, #11
    1902:	18fb      	adds	r3, r7, r3
    1904:	781b      	ldrb	r3, [r3, #0]
    1906:	2b20      	cmp	r3, #32
    1908:	d801      	bhi.n	190e <xatoi+0xde>
    190a:	2301      	movs	r3, #1
    190c:	e079      	b.n	1a02 <xatoi+0x1d2>
    190e:	230b      	movs	r3, #11
    1910:	18fb      	adds	r3, r7, r3
    1912:	781b      	ldrb	r3, [r3, #0]
    1914:	2b2f      	cmp	r3, #47	; 0x2f
    1916:	d904      	bls.n	1922 <xatoi+0xf2>
    1918:	230b      	movs	r3, #11
    191a:	18fb      	adds	r3, r7, r3
    191c:	781b      	ldrb	r3, [r3, #0]
    191e:	2b39      	cmp	r3, #57	; 0x39
    1920:	d901      	bls.n	1926 <xatoi+0xf6>
    1922:	2300      	movs	r3, #0
    1924:	e06d      	b.n	1a02 <xatoi+0x1d2>
    1926:	230a      	movs	r3, #10
    1928:	18fb      	adds	r3, r7, r3
    192a:	2208      	movs	r2, #8
    192c:	701a      	strb	r2, [r3, #0]
    192e:	e00f      	b.n	1950 <xatoi+0x120>
    1930:	230b      	movs	r3, #11
    1932:	18fb      	adds	r3, r7, r3
    1934:	781b      	ldrb	r3, [r3, #0]
    1936:	2b2f      	cmp	r3, #47	; 0x2f
    1938:	d904      	bls.n	1944 <xatoi+0x114>
    193a:	230b      	movs	r3, #11
    193c:	18fb      	adds	r3, r7, r3
    193e:	781b      	ldrb	r3, [r3, #0]
    1940:	2b39      	cmp	r3, #57	; 0x39
    1942:	d901      	bls.n	1948 <xatoi+0x118>
    1944:	2300      	movs	r3, #0
    1946:	e05c      	b.n	1a02 <xatoi+0x1d2>
    1948:	230a      	movs	r3, #10
    194a:	18fb      	adds	r3, r7, r3
    194c:	220a      	movs	r2, #10
    194e:	701a      	strb	r2, [r3, #0]
    1950:	2300      	movs	r3, #0
    1952:	60fb      	str	r3, [r7, #12]
    1954:	e044      	b.n	19e0 <xatoi+0x1b0>
    1956:	230b      	movs	r3, #11
    1958:	18fb      	adds	r3, r7, r3
    195a:	781b      	ldrb	r3, [r3, #0]
    195c:	2b60      	cmp	r3, #96	; 0x60
    195e:	d906      	bls.n	196e <xatoi+0x13e>
    1960:	230b      	movs	r3, #11
    1962:	18fb      	adds	r3, r7, r3
    1964:	220b      	movs	r2, #11
    1966:	18ba      	adds	r2, r7, r2
    1968:	7812      	ldrb	r2, [r2, #0]
    196a:	3a20      	subs	r2, #32
    196c:	701a      	strb	r2, [r3, #0]
    196e:	230b      	movs	r3, #11
    1970:	18fb      	adds	r3, r7, r3
    1972:	220b      	movs	r2, #11
    1974:	18ba      	adds	r2, r7, r2
    1976:	7812      	ldrb	r2, [r2, #0]
    1978:	3a30      	subs	r2, #48	; 0x30
    197a:	701a      	strb	r2, [r3, #0]
    197c:	230b      	movs	r3, #11
    197e:	18fb      	adds	r3, r7, r3
    1980:	781b      	ldrb	r3, [r3, #0]
    1982:	2b10      	cmp	r3, #16
    1984:	d90d      	bls.n	19a2 <xatoi+0x172>
    1986:	230b      	movs	r3, #11
    1988:	18fb      	adds	r3, r7, r3
    198a:	220b      	movs	r2, #11
    198c:	18ba      	adds	r2, r7, r2
    198e:	7812      	ldrb	r2, [r2, #0]
    1990:	3a07      	subs	r2, #7
    1992:	701a      	strb	r2, [r3, #0]
    1994:	230b      	movs	r3, #11
    1996:	18fb      	adds	r3, r7, r3
    1998:	781b      	ldrb	r3, [r3, #0]
    199a:	2b09      	cmp	r3, #9
    199c:	d801      	bhi.n	19a2 <xatoi+0x172>
    199e:	2300      	movs	r3, #0
    19a0:	e02f      	b.n	1a02 <xatoi+0x1d2>
    19a2:	230b      	movs	r3, #11
    19a4:	18fa      	adds	r2, r7, r3
    19a6:	230a      	movs	r3, #10
    19a8:	18fb      	adds	r3, r7, r3
    19aa:	7812      	ldrb	r2, [r2, #0]
    19ac:	781b      	ldrb	r3, [r3, #0]
    19ae:	429a      	cmp	r2, r3
    19b0:	d301      	bcc.n	19b6 <xatoi+0x186>
    19b2:	2300      	movs	r3, #0
    19b4:	e025      	b.n	1a02 <xatoi+0x1d2>
    19b6:	230a      	movs	r3, #10
    19b8:	18fb      	adds	r3, r7, r3
    19ba:	781b      	ldrb	r3, [r3, #0]
    19bc:	68fa      	ldr	r2, [r7, #12]
    19be:	435a      	muls	r2, r3
    19c0:	230b      	movs	r3, #11
    19c2:	18fb      	adds	r3, r7, r3
    19c4:	781b      	ldrb	r3, [r3, #0]
    19c6:	18d3      	adds	r3, r2, r3
    19c8:	60fb      	str	r3, [r7, #12]
    19ca:	687b      	ldr	r3, [r7, #4]
    19cc:	681b      	ldr	r3, [r3, #0]
    19ce:	1c5a      	adds	r2, r3, #1
    19d0:	687b      	ldr	r3, [r7, #4]
    19d2:	601a      	str	r2, [r3, #0]
    19d4:	687b      	ldr	r3, [r7, #4]
    19d6:	681a      	ldr	r2, [r3, #0]
    19d8:	230b      	movs	r3, #11
    19da:	18fb      	adds	r3, r7, r3
    19dc:	7812      	ldrb	r2, [r2, #0]
    19de:	701a      	strb	r2, [r3, #0]
    19e0:	230b      	movs	r3, #11
    19e2:	18fb      	adds	r3, r7, r3
    19e4:	781b      	ldrb	r3, [r3, #0]
    19e6:	2b20      	cmp	r3, #32
    19e8:	d8b5      	bhi.n	1956 <xatoi+0x126>
    19ea:	2309      	movs	r3, #9
    19ec:	18fb      	adds	r3, r7, r3
    19ee:	781b      	ldrb	r3, [r3, #0]
    19f0:	2b00      	cmp	r3, #0
    19f2:	d002      	beq.n	19fa <xatoi+0x1ca>
    19f4:	68fb      	ldr	r3, [r7, #12]
    19f6:	425b      	negs	r3, r3
    19f8:	60fb      	str	r3, [r7, #12]
    19fa:	68fa      	ldr	r2, [r7, #12]
    19fc:	683b      	ldr	r3, [r7, #0]
    19fe:	601a      	str	r2, [r3, #0]
    1a00:	2301      	movs	r3, #1
    1a02:	0018      	movs	r0, r3
    1a04:	46bd      	mov	sp, r7
    1a06:	b004      	add	sp, #16
    1a08:	bd80      	pop	{r7, pc}
    1a0a:	46c0      	nop			; (mov r8, r8)

00001a0c <os_idle_demon>:
    1a0c:	b580      	push	{r7, lr}
    1a0e:	af00      	add	r7, sp, #0
    1a10:	bf20      	wfe
    1a12:	e7fd      	b.n	1a10 <os_idle_demon+0x4>

00001a14 <os_error>:
    1a14:	b580      	push	{r7, lr}
    1a16:	b082      	sub	sp, #8
    1a18:	af00      	add	r7, sp, #0
    1a1a:	6078      	str	r0, [r7, #4]
    1a1c:	687b      	ldr	r3, [r7, #4]
    1a1e:	2b02      	cmp	r3, #2
    1a20:	d009      	beq.n	1a36 <os_error+0x22>
    1a22:	d802      	bhi.n	1a2a <os_error+0x16>
    1a24:	2b01      	cmp	r3, #1
    1a26:	d005      	beq.n	1a34 <os_error+0x20>
    1a28:	e008      	b.n	1a3c <os_error+0x28>
    1a2a:	2b03      	cmp	r3, #3
    1a2c:	d004      	beq.n	1a38 <os_error+0x24>
    1a2e:	2b04      	cmp	r3, #4
    1a30:	d003      	beq.n	1a3a <os_error+0x26>
    1a32:	e003      	b.n	1a3c <os_error+0x28>
    1a34:	e002      	b.n	1a3c <os_error+0x28>
    1a36:	e001      	b.n	1a3c <os_error+0x28>
    1a38:	e000      	b.n	1a3c <os_error+0x28>
    1a3a:	46c0      	nop			; (mov r8, r8)
    1a3c:	e7fe      	b.n	1a3c <os_error+0x28>
    1a3e:	46c0      	nop			; (mov r8, r8)

00001a40 <software_init_hook>:
    1a40:	2000      	movs	r0, #0
    1a42:	2100      	movs	r1, #0
    1a44:	4604      	mov	r4, r0
    1a46:	460d      	mov	r5, r1
    1a48:	4808      	ldr	r0, [pc, #32]	; (1a6c <software_init_hook+0x2c>)
    1a4a:	f003 faa1 	bl	4f90 <atexit>
    1a4e:	f003 fad1 	bl	4ff4 <__libc_init_array>
    1a52:	4620      	mov	r0, r4
    1a54:	4629      	mov	r1, r5
    1a56:	f004 f919 	bl	5c8c <osKernelInitialize>
    1a5a:	4805      	ldr	r0, [pc, #20]	; (1a70 <software_init_hook+0x30>)
    1a5c:	2100      	movs	r1, #0
    1a5e:	f004 faa7 	bl	5fb0 <osThreadCreate>
    1a62:	f004 f9af 	bl	5dc4 <osKernelStart>
    1a66:	f003 fa9b 	bl	4fa0 <exit>
    1a6a:	0000      	.short	0x0000
    1a6c:	00004fc1 	.word	0x00004fc1
    1a70:	00008ba4 	.word	0x00008ba4

00001a74 <__NVIC_EnableIRQ>:
    1a74:	b580      	push	{r7, lr}
    1a76:	b082      	sub	sp, #8
    1a78:	af00      	add	r7, sp, #0
    1a7a:	0002      	movs	r2, r0
    1a7c:	1dfb      	adds	r3, r7, #7
    1a7e:	701a      	strb	r2, [r3, #0]
    1a80:	1dfb      	adds	r3, r7, #7
    1a82:	781b      	ldrb	r3, [r3, #0]
    1a84:	2b7f      	cmp	r3, #127	; 0x7f
    1a86:	d809      	bhi.n	1a9c <__NVIC_EnableIRQ+0x28>
    1a88:	4b06      	ldr	r3, [pc, #24]	; (1aa4 <__NVIC_EnableIRQ+0x30>)
    1a8a:	1dfa      	adds	r2, r7, #7
    1a8c:	7812      	ldrb	r2, [r2, #0]
    1a8e:	0011      	movs	r1, r2
    1a90:	221f      	movs	r2, #31
    1a92:	400a      	ands	r2, r1
    1a94:	2101      	movs	r1, #1
    1a96:	4091      	lsls	r1, r2
    1a98:	000a      	movs	r2, r1
    1a9a:	601a      	str	r2, [r3, #0]
    1a9c:	46c0      	nop			; (mov r8, r8)
    1a9e:	46bd      	mov	sp, r7
    1aa0:	b002      	add	sp, #8
    1aa2:	bd80      	pop	{r7, pc}
    1aa4:	e000e100 	.word	0xe000e100

00001aa8 <__NVIC_SetPriority>:
    1aa8:	b5b0      	push	{r4, r5, r7, lr}
    1aaa:	b082      	sub	sp, #8
    1aac:	af00      	add	r7, sp, #0
    1aae:	0002      	movs	r2, r0
    1ab0:	6039      	str	r1, [r7, #0]
    1ab2:	1dfb      	adds	r3, r7, #7
    1ab4:	701a      	strb	r2, [r3, #0]
    1ab6:	1dfb      	adds	r3, r7, #7
    1ab8:	781b      	ldrb	r3, [r3, #0]
    1aba:	2b7f      	cmp	r3, #127	; 0x7f
    1abc:	d828      	bhi.n	1b10 <__NVIC_SetPriority+0x68>
    1abe:	4c2f      	ldr	r4, [pc, #188]	; (1b7c <__NVIC_SetPriority+0xd4>)
    1ac0:	1dfb      	adds	r3, r7, #7
    1ac2:	781b      	ldrb	r3, [r3, #0]
    1ac4:	b25b      	sxtb	r3, r3
    1ac6:	089b      	lsrs	r3, r3, #2
    1ac8:	492c      	ldr	r1, [pc, #176]	; (1b7c <__NVIC_SetPriority+0xd4>)
    1aca:	1dfa      	adds	r2, r7, #7
    1acc:	7812      	ldrb	r2, [r2, #0]
    1ace:	b252      	sxtb	r2, r2
    1ad0:	0892      	lsrs	r2, r2, #2
    1ad2:	32c0      	adds	r2, #192	; 0xc0
    1ad4:	0092      	lsls	r2, r2, #2
    1ad6:	5852      	ldr	r2, [r2, r1]
    1ad8:	1df9      	adds	r1, r7, #7
    1ada:	7809      	ldrb	r1, [r1, #0]
    1adc:	0008      	movs	r0, r1
    1ade:	2103      	movs	r1, #3
    1ae0:	4001      	ands	r1, r0
    1ae2:	00c9      	lsls	r1, r1, #3
    1ae4:	20ff      	movs	r0, #255	; 0xff
    1ae6:	4088      	lsls	r0, r1
    1ae8:	0001      	movs	r1, r0
    1aea:	43c9      	mvns	r1, r1
    1aec:	4011      	ands	r1, r2
    1aee:	683a      	ldr	r2, [r7, #0]
    1af0:	0192      	lsls	r2, r2, #6
    1af2:	20ff      	movs	r0, #255	; 0xff
    1af4:	4010      	ands	r0, r2
    1af6:	1dfa      	adds	r2, r7, #7
    1af8:	7812      	ldrb	r2, [r2, #0]
    1afa:	0015      	movs	r5, r2
    1afc:	2203      	movs	r2, #3
    1afe:	402a      	ands	r2, r5
    1b00:	00d2      	lsls	r2, r2, #3
    1b02:	4090      	lsls	r0, r2
    1b04:	0002      	movs	r2, r0
    1b06:	430a      	orrs	r2, r1
    1b08:	33c0      	adds	r3, #192	; 0xc0
    1b0a:	009b      	lsls	r3, r3, #2
    1b0c:	511a      	str	r2, [r3, r4]
    1b0e:	e031      	b.n	1b74 <__NVIC_SetPriority+0xcc>
    1b10:	4c1b      	ldr	r4, [pc, #108]	; (1b80 <__NVIC_SetPriority+0xd8>)
    1b12:	1dfb      	adds	r3, r7, #7
    1b14:	781b      	ldrb	r3, [r3, #0]
    1b16:	001a      	movs	r2, r3
    1b18:	230f      	movs	r3, #15
    1b1a:	4013      	ands	r3, r2
    1b1c:	3b08      	subs	r3, #8
    1b1e:	0899      	lsrs	r1, r3, #2
    1b20:	4a17      	ldr	r2, [pc, #92]	; (1b80 <__NVIC_SetPriority+0xd8>)
    1b22:	1dfb      	adds	r3, r7, #7
    1b24:	781b      	ldrb	r3, [r3, #0]
    1b26:	0018      	movs	r0, r3
    1b28:	230f      	movs	r3, #15
    1b2a:	4003      	ands	r3, r0
    1b2c:	3b08      	subs	r3, #8
    1b2e:	089b      	lsrs	r3, r3, #2
    1b30:	3306      	adds	r3, #6
    1b32:	009b      	lsls	r3, r3, #2
    1b34:	18d3      	adds	r3, r2, r3
    1b36:	3304      	adds	r3, #4
    1b38:	681b      	ldr	r3, [r3, #0]
    1b3a:	1dfa      	adds	r2, r7, #7
    1b3c:	7812      	ldrb	r2, [r2, #0]
    1b3e:	0010      	movs	r0, r2
    1b40:	2203      	movs	r2, #3
    1b42:	4002      	ands	r2, r0
    1b44:	00d2      	lsls	r2, r2, #3
    1b46:	20ff      	movs	r0, #255	; 0xff
    1b48:	4090      	lsls	r0, r2
    1b4a:	0002      	movs	r2, r0
    1b4c:	43d2      	mvns	r2, r2
    1b4e:	401a      	ands	r2, r3
    1b50:	683b      	ldr	r3, [r7, #0]
    1b52:	019b      	lsls	r3, r3, #6
    1b54:	20ff      	movs	r0, #255	; 0xff
    1b56:	4018      	ands	r0, r3
    1b58:	1dfb      	adds	r3, r7, #7
    1b5a:	781b      	ldrb	r3, [r3, #0]
    1b5c:	001d      	movs	r5, r3
    1b5e:	2303      	movs	r3, #3
    1b60:	402b      	ands	r3, r5
    1b62:	00db      	lsls	r3, r3, #3
    1b64:	4098      	lsls	r0, r3
    1b66:	0003      	movs	r3, r0
    1b68:	431a      	orrs	r2, r3
    1b6a:	1d8b      	adds	r3, r1, #6
    1b6c:	009b      	lsls	r3, r3, #2
    1b6e:	18e3      	adds	r3, r4, r3
    1b70:	3304      	adds	r3, #4
    1b72:	601a      	str	r2, [r3, #0]
    1b74:	46c0      	nop			; (mov r8, r8)
    1b76:	46bd      	mov	sp, r7
    1b78:	b002      	add	sp, #8
    1b7a:	bdb0      	pop	{r4, r5, r7, pc}
    1b7c:	e000e100 	.word	0xe000e100
    1b80:	e000ed00 	.word	0xe000ed00

00001b84 <PortConfig>:
    1b84:	b580      	push	{r7, lr}
    1b86:	af00      	add	r7, sp, #0
    1b88:	4b44      	ldr	r3, [pc, #272]	; (1c9c <PortConfig+0x118>)
    1b8a:	4a44      	ldr	r2, [pc, #272]	; (1c9c <PortConfig+0x118>)
    1b8c:	68d2      	ldr	r2, [r2, #12]
    1b8e:	2108      	movs	r1, #8
    1b90:	430a      	orrs	r2, r1
    1b92:	60da      	str	r2, [r3, #12]
    1b94:	4b41      	ldr	r3, [pc, #260]	; (1c9c <PortConfig+0x118>)
    1b96:	4a41      	ldr	r2, [pc, #260]	; (1c9c <PortConfig+0x118>)
    1b98:	6852      	ldr	r2, [r2, #4]
    1b9a:	2108      	movs	r1, #8
    1b9c:	438a      	bics	r2, r1
    1b9e:	605a      	str	r2, [r3, #4]
    1ba0:	4b3f      	ldr	r3, [pc, #252]	; (1ca0 <PortConfig+0x11c>)
    1ba2:	4a3f      	ldr	r2, [pc, #252]	; (1ca0 <PortConfig+0x11c>)
    1ba4:	68d2      	ldr	r2, [r2, #12]
    1ba6:	21de      	movs	r1, #222	; 0xde
    1ba8:	0209      	lsls	r1, r1, #8
    1baa:	430a      	orrs	r2, r1
    1bac:	60da      	str	r2, [r3, #12]
    1bae:	4b3c      	ldr	r3, [pc, #240]	; (1ca0 <PortConfig+0x11c>)
    1bb0:	4a3b      	ldr	r2, [pc, #236]	; (1ca0 <PortConfig+0x11c>)
    1bb2:	6812      	ldr	r2, [r2, #0]
    1bb4:	493b      	ldr	r1, [pc, #236]	; (1ca4 <PortConfig+0x120>)
    1bb6:	400a      	ands	r2, r1
    1bb8:	601a      	str	r2, [r3, #0]
    1bba:	4b39      	ldr	r3, [pc, #228]	; (1ca0 <PortConfig+0x11c>)
    1bbc:	4a38      	ldr	r2, [pc, #224]	; (1ca0 <PortConfig+0x11c>)
    1bbe:	6852      	ldr	r2, [r2, #4]
    1bc0:	21de      	movs	r1, #222	; 0xde
    1bc2:	0209      	lsls	r1, r1, #8
    1bc4:	430a      	orrs	r2, r1
    1bc6:	605a      	str	r2, [r3, #4]
    1bc8:	4b35      	ldr	r3, [pc, #212]	; (1ca0 <PortConfig+0x11c>)
    1bca:	4a35      	ldr	r2, [pc, #212]	; (1ca0 <PortConfig+0x11c>)
    1bcc:	6992      	ldr	r2, [r2, #24]
    1bce:	4936      	ldr	r1, [pc, #216]	; (1ca8 <PortConfig+0x124>)
    1bd0:	430a      	orrs	r2, r1
    1bd2:	619a      	str	r2, [r3, #24]
    1bd4:	4b32      	ldr	r3, [pc, #200]	; (1ca0 <PortConfig+0x11c>)
    1bd6:	4a32      	ldr	r2, [pc, #200]	; (1ca0 <PortConfig+0x11c>)
    1bd8:	68d2      	ldr	r2, [r2, #12]
    1bda:	4934      	ldr	r1, [pc, #208]	; (1cac <PortConfig+0x128>)
    1bdc:	430a      	orrs	r2, r1
    1bde:	60da      	str	r2, [r3, #12]
    1be0:	4b2f      	ldr	r3, [pc, #188]	; (1ca0 <PortConfig+0x11c>)
    1be2:	4a2f      	ldr	r2, [pc, #188]	; (1ca0 <PortConfig+0x11c>)
    1be4:	6812      	ldr	r2, [r2, #0]
    1be6:	0a52      	lsrs	r2, r2, #9
    1be8:	0252      	lsls	r2, r2, #9
    1bea:	601a      	str	r2, [r3, #0]
    1bec:	4b2c      	ldr	r3, [pc, #176]	; (1ca0 <PortConfig+0x11c>)
    1bee:	4a2c      	ldr	r2, [pc, #176]	; (1ca0 <PortConfig+0x11c>)
    1bf0:	6852      	ldr	r2, [r2, #4]
    1bf2:	492e      	ldr	r1, [pc, #184]	; (1cac <PortConfig+0x128>)
    1bf4:	430a      	orrs	r2, r1
    1bf6:	605a      	str	r2, [r3, #4]
    1bf8:	4b29      	ldr	r3, [pc, #164]	; (1ca0 <PortConfig+0x11c>)
    1bfa:	4a29      	ldr	r2, [pc, #164]	; (1ca0 <PortConfig+0x11c>)
    1bfc:	6992      	ldr	r2, [r2, #24]
    1bfe:	492c      	ldr	r1, [pc, #176]	; (1cb0 <PortConfig+0x12c>)
    1c00:	430a      	orrs	r2, r1
    1c02:	619a      	str	r2, [r3, #24]
    1c04:	4b2b      	ldr	r3, [pc, #172]	; (1cb4 <PortConfig+0x130>)
    1c06:	4a2b      	ldr	r2, [pc, #172]	; (1cb4 <PortConfig+0x130>)
    1c08:	6892      	ldr	r2, [r2, #8]
    1c0a:	21a0      	movs	r1, #160	; 0xa0
    1c0c:	0549      	lsls	r1, r1, #21
    1c0e:	430a      	orrs	r2, r1
    1c10:	609a      	str	r2, [r3, #8]
    1c12:	4b28      	ldr	r3, [pc, #160]	; (1cb4 <PortConfig+0x130>)
    1c14:	4a27      	ldr	r2, [pc, #156]	; (1cb4 <PortConfig+0x130>)
    1c16:	68d2      	ldr	r2, [r2, #12]
    1c18:	21e0      	movs	r1, #224	; 0xe0
    1c1a:	0209      	lsls	r1, r1, #8
    1c1c:	430a      	orrs	r2, r1
    1c1e:	60da      	str	r2, [r3, #12]
    1c20:	4b24      	ldr	r3, [pc, #144]	; (1cb4 <PortConfig+0x130>)
    1c22:	4a24      	ldr	r2, [pc, #144]	; (1cb4 <PortConfig+0x130>)
    1c24:	6992      	ldr	r2, [r2, #24]
    1c26:	21fc      	movs	r1, #252	; 0xfc
    1c28:	0609      	lsls	r1, r1, #24
    1c2a:	430a      	orrs	r2, r1
    1c2c:	619a      	str	r2, [r3, #24]
    1c2e:	4b21      	ldr	r3, [pc, #132]	; (1cb4 <PortConfig+0x130>)
    1c30:	4a20      	ldr	r2, [pc, #128]	; (1cb4 <PortConfig+0x130>)
    1c32:	6812      	ldr	r2, [r2, #0]
    1c34:	4920      	ldr	r1, [pc, #128]	; (1cb8 <PortConfig+0x134>)
    1c36:	400a      	ands	r2, r1
    1c38:	601a      	str	r2, [r3, #0]
    1c3a:	4b1e      	ldr	r3, [pc, #120]	; (1cb4 <PortConfig+0x130>)
    1c3c:	4a1d      	ldr	r2, [pc, #116]	; (1cb4 <PortConfig+0x130>)
    1c3e:	6852      	ldr	r2, [r2, #4]
    1c40:	2180      	movs	r1, #128	; 0x80
    1c42:	0209      	lsls	r1, r1, #8
    1c44:	430a      	orrs	r2, r1
    1c46:	605a      	str	r2, [r3, #4]
    1c48:	4b1c      	ldr	r3, [pc, #112]	; (1cbc <PortConfig+0x138>)
    1c4a:	4a1c      	ldr	r2, [pc, #112]	; (1cbc <PortConfig+0x138>)
    1c4c:	6892      	ldr	r2, [r2, #8]
    1c4e:	491c      	ldr	r1, [pc, #112]	; (1cc0 <PortConfig+0x13c>)
    1c50:	400a      	ands	r2, r1
    1c52:	609a      	str	r2, [r3, #8]
    1c54:	4b19      	ldr	r3, [pc, #100]	; (1cbc <PortConfig+0x138>)
    1c56:	4a19      	ldr	r2, [pc, #100]	; (1cbc <PortConfig+0x138>)
    1c58:	6892      	ldr	r2, [r2, #8]
    1c5a:	21a0      	movs	r1, #160	; 0xa0
    1c5c:	0049      	lsls	r1, r1, #1
    1c5e:	430a      	orrs	r2, r1
    1c60:	609a      	str	r2, [r3, #8]
    1c62:	4b16      	ldr	r3, [pc, #88]	; (1cbc <PortConfig+0x138>)
    1c64:	4a15      	ldr	r2, [pc, #84]	; (1cbc <PortConfig+0x138>)
    1c66:	68d2      	ldr	r2, [r2, #12]
    1c68:	2118      	movs	r1, #24
    1c6a:	430a      	orrs	r2, r1
    1c6c:	60da      	str	r2, [r3, #12]
    1c6e:	4b13      	ldr	r3, [pc, #76]	; (1cbc <PortConfig+0x138>)
    1c70:	4a12      	ldr	r2, [pc, #72]	; (1cbc <PortConfig+0x138>)
    1c72:	6992      	ldr	r2, [r2, #24]
    1c74:	21f0      	movs	r1, #240	; 0xf0
    1c76:	0089      	lsls	r1, r1, #2
    1c78:	430a      	orrs	r2, r1
    1c7a:	619a      	str	r2, [r3, #24]
    1c7c:	4b0f      	ldr	r3, [pc, #60]	; (1cbc <PortConfig+0x138>)
    1c7e:	4a0f      	ldr	r2, [pc, #60]	; (1cbc <PortConfig+0x138>)
    1c80:	6812      	ldr	r2, [r2, #0]
    1c82:	2118      	movs	r1, #24
    1c84:	438a      	bics	r2, r1
    1c86:	601a      	str	r2, [r3, #0]
    1c88:	4b0e      	ldr	r3, [pc, #56]	; (1cc4 <PortConfig+0x140>)
    1c8a:	4a0e      	ldr	r2, [pc, #56]	; (1cc4 <PortConfig+0x140>)
    1c8c:	68d2      	ldr	r2, [r2, #12]
    1c8e:	2106      	movs	r1, #6
    1c90:	438a      	bics	r2, r1
    1c92:	60da      	str	r2, [r3, #12]
    1c94:	46c0      	nop			; (mov r8, r8)
    1c96:	46bd      	mov	sp, r7
    1c98:	bd80      	pop	{r7, pc}
    1c9a:	46c0      	nop			; (mov r8, r8)
    1c9c:	400a8000 	.word	0x400a8000
    1ca0:	400b0000 	.word	0x400b0000
    1ca4:	ffff21ff 	.word	0xffff21ff
    1ca8:	f3fc0000 	.word	0xf3fc0000
    1cac:	000001ff 	.word	0x000001ff
    1cb0:	0003ffff 	.word	0x0003ffff
    1cb4:	400c0000 	.word	0x400c0000
    1cb8:	ffff1fff 	.word	0xffff1fff
    1cbc:	400b8000 	.word	0x400b8000
    1cc0:	fffffc3f 	.word	0xfffffc3f
    1cc4:	400c8000 	.word	0x400c8000

00001cc8 <ClkConfig>:
    1cc8:	b580      	push	{r7, lr}
    1cca:	af00      	add	r7, sp, #0
    1ccc:	4b4b      	ldr	r3, [pc, #300]	; (1dfc <ClkConfig+0x134>)
    1cce:	2280      	movs	r2, #128	; 0x80
    1cd0:	0092      	lsls	r2, r2, #2
    1cd2:	619a      	str	r2, [r3, #24]
    1cd4:	4b4a      	ldr	r3, [pc, #296]	; (1e00 <ClkConfig+0x138>)
    1cd6:	4a4a      	ldr	r2, [pc, #296]	; (1e00 <ClkConfig+0x138>)
    1cd8:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1cda:	2118      	movs	r1, #24
    1cdc:	430a      	orrs	r2, r1
    1cde:	63da      	str	r2, [r3, #60]	; 0x3c
    1ce0:	4b47      	ldr	r3, [pc, #284]	; (1e00 <ClkConfig+0x138>)
    1ce2:	4a48      	ldr	r2, [pc, #288]	; (1e04 <ClkConfig+0x13c>)
    1ce4:	649a      	str	r2, [r3, #72]	; 0x48
    1ce6:	4b46      	ldr	r3, [pc, #280]	; (1e00 <ClkConfig+0x138>)
    1ce8:	2201      	movs	r2, #1
    1cea:	645a      	str	r2, [r3, #68]	; 0x44
    1cec:	4b43      	ldr	r3, [pc, #268]	; (1dfc <ClkConfig+0x134>)
    1cee:	4a43      	ldr	r2, [pc, #268]	; (1dfc <ClkConfig+0x134>)
    1cf0:	6892      	ldr	r2, [r2, #8]
    1cf2:	2105      	movs	r1, #5
    1cf4:	430a      	orrs	r2, r1
    1cf6:	609a      	str	r2, [r3, #8]
    1cf8:	46c0      	nop			; (mov r8, r8)
    1cfa:	4b40      	ldr	r3, [pc, #256]	; (1dfc <ClkConfig+0x134>)
    1cfc:	681b      	ldr	r3, [r3, #0]
    1cfe:	220c      	movs	r2, #12
    1d00:	4013      	ands	r3, r2
    1d02:	2b0c      	cmp	r3, #12
    1d04:	d1f9      	bne.n	1cfa <ClkConfig+0x32>
    1d06:	4b3d      	ldr	r3, [pc, #244]	; (1dfc <ClkConfig+0x134>)
    1d08:	4a3c      	ldr	r2, [pc, #240]	; (1dfc <ClkConfig+0x134>)
    1d0a:	68d2      	ldr	r2, [r2, #12]
    1d0c:	2102      	movs	r1, #2
    1d0e:	430a      	orrs	r2, r1
    1d10:	60da      	str	r2, [r3, #12]
    1d12:	4b3a      	ldr	r3, [pc, #232]	; (1dfc <ClkConfig+0x134>)
    1d14:	4a3c      	ldr	r2, [pc, #240]	; (1e08 <ClkConfig+0x140>)
    1d16:	605a      	str	r2, [r3, #4]
    1d18:	46c0      	nop			; (mov r8, r8)
    1d1a:	4b38      	ldr	r3, [pc, #224]	; (1dfc <ClkConfig+0x134>)
    1d1c:	681b      	ldr	r3, [r3, #0]
    1d1e:	2202      	movs	r2, #2
    1d20:	4013      	ands	r3, r2
    1d22:	d0fa      	beq.n	1d1a <ClkConfig+0x52>
    1d24:	4b35      	ldr	r3, [pc, #212]	; (1dfc <ClkConfig+0x134>)
    1d26:	4a35      	ldr	r2, [pc, #212]	; (1dfc <ClkConfig+0x134>)
    1d28:	69d2      	ldr	r2, [r2, #28]
    1d2a:	2108      	movs	r1, #8
    1d2c:	430a      	orrs	r2, r1
    1d2e:	61da      	str	r2, [r3, #28]
    1d30:	4b36      	ldr	r3, [pc, #216]	; (1e0c <ClkConfig+0x144>)
    1d32:	4a36      	ldr	r2, [pc, #216]	; (1e0c <ClkConfig+0x144>)
    1d34:	6812      	ldr	r2, [r2, #0]
    1d36:	2118      	movs	r1, #24
    1d38:	430a      	orrs	r2, r1
    1d3a:	601a      	str	r2, [r3, #0]
    1d3c:	4b2f      	ldr	r3, [pc, #188]	; (1dfc <ClkConfig+0x134>)
    1d3e:	4a2f      	ldr	r2, [pc, #188]	; (1dfc <ClkConfig+0x134>)
    1d40:	69d2      	ldr	r2, [r2, #28]
    1d42:	2108      	movs	r1, #8
    1d44:	438a      	bics	r2, r1
    1d46:	61da      	str	r2, [r3, #28]
    1d48:	4b2c      	ldr	r3, [pc, #176]	; (1dfc <ClkConfig+0x134>)
    1d4a:	4a2c      	ldr	r2, [pc, #176]	; (1dfc <ClkConfig+0x134>)
    1d4c:	68d2      	ldr	r2, [r2, #12]
    1d4e:	2180      	movs	r1, #128	; 0x80
    1d50:	0049      	lsls	r1, r1, #1
    1d52:	430a      	orrs	r2, r1
    1d54:	60da      	str	r2, [r3, #12]
    1d56:	4b29      	ldr	r3, [pc, #164]	; (1dfc <ClkConfig+0x134>)
    1d58:	4a28      	ldr	r2, [pc, #160]	; (1dfc <ClkConfig+0x134>)
    1d5a:	68d2      	ldr	r2, [r2, #12]
    1d5c:	2104      	movs	r1, #4
    1d5e:	430a      	orrs	r2, r1
    1d60:	60da      	str	r2, [r3, #12]
    1d62:	4b26      	ldr	r3, [pc, #152]	; (1dfc <ClkConfig+0x134>)
    1d64:	22e4      	movs	r2, #228	; 0xe4
    1d66:	0592      	lsls	r2, r2, #22
    1d68:	635a      	str	r2, [r3, #52]	; 0x34
    1d6a:	4b24      	ldr	r3, [pc, #144]	; (1dfc <ClkConfig+0x134>)
    1d6c:	4a23      	ldr	r2, [pc, #140]	; (1dfc <ClkConfig+0x134>)
    1d6e:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d70:	2180      	movs	r1, #128	; 0x80
    1d72:	0449      	lsls	r1, r1, #17
    1d74:	430a      	orrs	r2, r1
    1d76:	625a      	str	r2, [r3, #36]	; 0x24
    1d78:	4b20      	ldr	r3, [pc, #128]	; (1dfc <ClkConfig+0x134>)
    1d7a:	4a20      	ldr	r2, [pc, #128]	; (1dfc <ClkConfig+0x134>)
    1d7c:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d7e:	21ff      	movs	r1, #255	; 0xff
    1d80:	438a      	bics	r2, r1
    1d82:	625a      	str	r2, [r3, #36]	; 0x24
    1d84:	4b1d      	ldr	r3, [pc, #116]	; (1dfc <ClkConfig+0x134>)
    1d86:	4a1d      	ldr	r2, [pc, #116]	; (1dfc <ClkConfig+0x134>)
    1d88:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d8a:	2180      	movs	r1, #128	; 0x80
    1d8c:	0489      	lsls	r1, r1, #18
    1d8e:	430a      	orrs	r2, r1
    1d90:	625a      	str	r2, [r3, #36]	; 0x24
    1d92:	4b1a      	ldr	r3, [pc, #104]	; (1dfc <ClkConfig+0x134>)
    1d94:	4a19      	ldr	r2, [pc, #100]	; (1dfc <ClkConfig+0x134>)
    1d96:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d98:	491d      	ldr	r1, [pc, #116]	; (1e10 <ClkConfig+0x148>)
    1d9a:	400a      	ands	r2, r1
    1d9c:	625a      	str	r2, [r3, #36]	; 0x24
    1d9e:	4b17      	ldr	r3, [pc, #92]	; (1dfc <ClkConfig+0x134>)
    1da0:	4a16      	ldr	r2, [pc, #88]	; (1dfc <ClkConfig+0x134>)
    1da2:	69d2      	ldr	r2, [r2, #28]
    1da4:	491b      	ldr	r1, [pc, #108]	; (1e14 <ClkConfig+0x14c>)
    1da6:	430a      	orrs	r2, r1
    1da8:	61da      	str	r2, [r3, #28]
    1daa:	4b14      	ldr	r3, [pc, #80]	; (1dfc <ClkConfig+0x134>)
    1dac:	4a13      	ldr	r2, [pc, #76]	; (1dfc <ClkConfig+0x134>)
    1dae:	69d2      	ldr	r2, [r2, #28]
    1db0:	2180      	movs	r1, #128	; 0x80
    1db2:	430a      	orrs	r2, r1
    1db4:	61da      	str	r2, [r3, #28]
    1db6:	4b11      	ldr	r3, [pc, #68]	; (1dfc <ClkConfig+0x134>)
    1db8:	4a10      	ldr	r2, [pc, #64]	; (1dfc <ClkConfig+0x134>)
    1dba:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1dbc:	2180      	movs	r1, #128	; 0x80
    1dbe:	0489      	lsls	r1, r1, #18
    1dc0:	430a      	orrs	r2, r1
    1dc2:	629a      	str	r2, [r3, #40]	; 0x28
    1dc4:	4b0d      	ldr	r3, [pc, #52]	; (1dfc <ClkConfig+0x134>)
    1dc6:	4a0d      	ldr	r2, [pc, #52]	; (1dfc <ClkConfig+0x134>)
    1dc8:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1dca:	4911      	ldr	r1, [pc, #68]	; (1e10 <ClkConfig+0x148>)
    1dcc:	400a      	ands	r2, r1
    1dce:	629a      	str	r2, [r3, #40]	; 0x28
    1dd0:	4b0a      	ldr	r3, [pc, #40]	; (1dfc <ClkConfig+0x134>)
    1dd2:	4a0a      	ldr	r2, [pc, #40]	; (1dfc <ClkConfig+0x134>)
    1dd4:	69d2      	ldr	r2, [r2, #28]
    1dd6:	2140      	movs	r1, #64	; 0x40
    1dd8:	430a      	orrs	r2, r1
    1dda:	61da      	str	r2, [r3, #28]
    1ddc:	4b07      	ldr	r3, [pc, #28]	; (1dfc <ClkConfig+0x134>)
    1dde:	4a07      	ldr	r2, [pc, #28]	; (1dfc <ClkConfig+0x134>)
    1de0:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1de2:	2180      	movs	r1, #128	; 0x80
    1de4:	0449      	lsls	r1, r1, #17
    1de6:	430a      	orrs	r2, r1
    1de8:	629a      	str	r2, [r3, #40]	; 0x28
    1dea:	4b04      	ldr	r3, [pc, #16]	; (1dfc <ClkConfig+0x134>)
    1dec:	4a03      	ldr	r2, [pc, #12]	; (1dfc <ClkConfig+0x134>)
    1dee:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1df0:	21ff      	movs	r1, #255	; 0xff
    1df2:	438a      	bics	r2, r1
    1df4:	629a      	str	r2, [r3, #40]	; 0x28
    1df6:	46c0      	nop			; (mov r8, r8)
    1df8:	46bd      	mov	sp, r7
    1dfa:	bd80      	pop	{r7, pc}
    1dfc:	40020000 	.word	0x40020000
    1e00:	400d8000 	.word	0x400d8000
    1e04:	000fffff 	.word	0x000fffff
    1e08:	00000b04 	.word	0x00000b04
    1e0c:	40018000 	.word	0x40018000
    1e10:	ffff00ff 	.word	0xffff00ff
    1e14:	03e4c000 	.word	0x03e4c000

00001e18 <TimerConfig>:
    1e18:	b580      	push	{r7, lr}
    1e1a:	af00      	add	r7, sp, #0
    1e1c:	4b0d      	ldr	r3, [pc, #52]	; (1e54 <TimerConfig+0x3c>)
    1e1e:	2200      	movs	r2, #0
    1e20:	601a      	str	r2, [r3, #0]
    1e22:	4b0c      	ldr	r3, [pc, #48]	; (1e54 <TimerConfig+0x3c>)
    1e24:	225f      	movs	r2, #95	; 0x5f
    1e26:	605a      	str	r2, [r3, #4]
    1e28:	4b0a      	ldr	r3, [pc, #40]	; (1e54 <TimerConfig+0x3c>)
    1e2a:	4a0b      	ldr	r2, [pc, #44]	; (1e58 <TimerConfig+0x40>)
    1e2c:	609a      	str	r2, [r3, #8]
    1e2e:	4b09      	ldr	r3, [pc, #36]	; (1e54 <TimerConfig+0x3c>)
    1e30:	4a08      	ldr	r2, [pc, #32]	; (1e54 <TimerConfig+0x3c>)
    1e32:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1e34:	2102      	movs	r1, #2
    1e36:	430a      	orrs	r2, r1
    1e38:	659a      	str	r2, [r3, #88]	; 0x58
    1e3a:	4b06      	ldr	r3, [pc, #24]	; (1e54 <TimerConfig+0x3c>)
    1e3c:	4a05      	ldr	r2, [pc, #20]	; (1e54 <TimerConfig+0x3c>)
    1e3e:	68d2      	ldr	r2, [r2, #12]
    1e40:	2101      	movs	r1, #1
    1e42:	430a      	orrs	r2, r1
    1e44:	60da      	str	r2, [r3, #12]
    1e46:	200e      	movs	r0, #14
    1e48:	f7ff fe14 	bl	1a74 <__NVIC_EnableIRQ>
    1e4c:	46c0      	nop			; (mov r8, r8)
    1e4e:	46bd      	mov	sp, r7
    1e50:	bd80      	pop	{r7, pc}
    1e52:	46c0      	nop			; (mov r8, r8)
    1e54:	40070000 	.word	0x40070000
    1e58:	0001869f 	.word	0x0001869f

00001e5c <dac_init>:
    1e5c:	b580      	push	{r7, lr}
    1e5e:	af00      	add	r7, sp, #0
    1e60:	4b04      	ldr	r3, [pc, #16]	; (1e74 <dac_init+0x18>)
    1e62:	4a04      	ldr	r2, [pc, #16]	; (1e74 <dac_init+0x18>)
    1e64:	6812      	ldr	r2, [r2, #0]
    1e66:	210c      	movs	r1, #12
    1e68:	430a      	orrs	r2, r1
    1e6a:	601a      	str	r2, [r3, #0]
    1e6c:	46c0      	nop			; (mov r8, r8)
    1e6e:	46bd      	mov	sp, r7
    1e70:	bd80      	pop	{r7, pc}
    1e72:	46c0      	nop			; (mov r8, r8)
    1e74:	40090000 	.word	0x40090000

00001e78 <SystemInit>:
    1e78:	b580      	push	{r7, lr}
    1e7a:	af00      	add	r7, sp, #0
    1e7c:	f7ff ff24 	bl	1cc8 <ClkConfig>
    1e80:	f7ff fe80 	bl	1b84 <PortConfig>
    1e84:	f7ff ffc8 	bl	1e18 <TimerConfig>
    1e88:	f7ff ffe8 	bl	1e5c <dac_init>
    1e8c:	2100      	movs	r1, #0
    1e8e:	2012      	movs	r0, #18
    1e90:	f7ff fe0a 	bl	1aa8 <__NVIC_SetPriority>
    1e94:	2101      	movs	r1, #1
    1e96:	200e      	movs	r0, #14
    1e98:	f7ff fe06 	bl	1aa8 <__NVIC_SetPriority>
    1e9c:	2301      	movs	r3, #1
    1e9e:	425b      	negs	r3, r3
    1ea0:	2103      	movs	r1, #3
    1ea2:	0018      	movs	r0, r3
    1ea4:	f7ff fe00 	bl	1aa8 <__NVIC_SetPriority>
    1ea8:	46c0      	nop			; (mov r8, r8)
    1eaa:	46bd      	mov	sp, r7
    1eac:	bd80      	pop	{r7, pc}
    1eae:	46c0      	nop			; (mov r8, r8)

00001eb0 <__NVIC_EnableIRQ>:
    1eb0:	b580      	push	{r7, lr}
    1eb2:	b082      	sub	sp, #8
    1eb4:	af00      	add	r7, sp, #0
    1eb6:	0002      	movs	r2, r0
    1eb8:	1dfb      	adds	r3, r7, #7
    1eba:	701a      	strb	r2, [r3, #0]
    1ebc:	1dfb      	adds	r3, r7, #7
    1ebe:	781b      	ldrb	r3, [r3, #0]
    1ec0:	2b7f      	cmp	r3, #127	; 0x7f
    1ec2:	d809      	bhi.n	1ed8 <__NVIC_EnableIRQ+0x28>
    1ec4:	4b06      	ldr	r3, [pc, #24]	; (1ee0 <__NVIC_EnableIRQ+0x30>)
    1ec6:	1dfa      	adds	r2, r7, #7
    1ec8:	7812      	ldrb	r2, [r2, #0]
    1eca:	0011      	movs	r1, r2
    1ecc:	221f      	movs	r2, #31
    1ece:	400a      	ands	r2, r1
    1ed0:	2101      	movs	r1, #1
    1ed2:	4091      	lsls	r1, r2
    1ed4:	000a      	movs	r2, r1
    1ed6:	601a      	str	r2, [r3, #0]
    1ed8:	46c0      	nop			; (mov r8, r8)
    1eda:	46bd      	mov	sp, r7
    1edc:	b002      	add	sp, #8
    1ede:	bd80      	pop	{r7, pc}
    1ee0:	e000e100 	.word	0xe000e100

00001ee4 <RemoteMacInit>:
    1ee4:	b580      	push	{r7, lr}
    1ee6:	af00      	add	r7, sp, #0
    1ee8:	4b0a      	ldr	r3, [pc, #40]	; (1f14 <RemoteMacInit+0x30>)
    1eea:	2200      	movs	r2, #0
    1eec:	801a      	strh	r2, [r3, #0]
    1eee:	4b09      	ldr	r3, [pc, #36]	; (1f14 <RemoteMacInit+0x30>)
    1ef0:	2200      	movs	r2, #0
    1ef2:	805a      	strh	r2, [r3, #2]
    1ef4:	4b07      	ldr	r3, [pc, #28]	; (1f14 <RemoteMacInit+0x30>)
    1ef6:	2200      	movs	r2, #0
    1ef8:	809a      	strh	r2, [r3, #4]
    1efa:	4b06      	ldr	r3, [pc, #24]	; (1f14 <RemoteMacInit+0x30>)
    1efc:	2200      	movs	r2, #0
    1efe:	80da      	strh	r2, [r3, #6]
    1f00:	4b04      	ldr	r3, [pc, #16]	; (1f14 <RemoteMacInit+0x30>)
    1f02:	2200      	movs	r2, #0
    1f04:	811a      	strh	r2, [r3, #8]
    1f06:	4b03      	ldr	r3, [pc, #12]	; (1f14 <RemoteMacInit+0x30>)
    1f08:	2200      	movs	r2, #0
    1f0a:	815a      	strh	r2, [r3, #10]
    1f0c:	46c0      	nop			; (mov r8, r8)
    1f0e:	46bd      	mov	sp, r7
    1f10:	bd80      	pop	{r7, pc}
    1f12:	46c0      	nop			; (mov r8, r8)
    1f14:	20004d1c 	.word	0x20004d1c

00001f18 <PHYInit>:
    1f18:	b580      	push	{r7, lr}
    1f1a:	b084      	sub	sp, #16
    1f1c:	af00      	add	r7, sp, #0
    1f1e:	0002      	movs	r2, r0
    1f20:	1dfb      	adds	r3, r7, #7
    1f22:	701a      	strb	r2, [r3, #0]
    1f24:	1dbb      	adds	r3, r7, #6
    1f26:	1c0a      	adds	r2, r1, #0
    1f28:	701a      	strb	r2, [r3, #0]
    1f2a:	23c0      	movs	r3, #192	; 0xc0
    1f2c:	059b      	lsls	r3, r3, #22
    1f2e:	8e9b      	ldrh	r3, [r3, #52]	; 0x34
    1f30:	b29b      	uxth	r3, r3
    1f32:	60fb      	str	r3, [r7, #12]
    1f34:	68fa      	ldr	r2, [r7, #12]
    1f36:	23ee      	movs	r3, #238	; 0xee
    1f38:	00db      	lsls	r3, r3, #3
    1f3a:	4013      	ands	r3, r2
    1f3c:	60fb      	str	r3, [r7, #12]
    1f3e:	1dfb      	adds	r3, r7, #7
    1f40:	781b      	ldrb	r3, [r3, #0]
    1f42:	02da      	lsls	r2, r3, #11
    1f44:	1dbb      	adds	r3, r7, #6
    1f46:	781b      	ldrb	r3, [r3, #0]
    1f48:	005b      	lsls	r3, r3, #1
    1f4a:	4313      	orrs	r3, r2
    1f4c:	001a      	movs	r2, r3
    1f4e:	68fb      	ldr	r3, [r7, #12]
    1f50:	4313      	orrs	r3, r2
    1f52:	2201      	movs	r2, #1
    1f54:	4313      	orrs	r3, r2
    1f56:	60fb      	str	r3, [r7, #12]
    1f58:	23c0      	movs	r3, #192	; 0xc0
    1f5a:	059b      	lsls	r3, r3, #22
    1f5c:	68fa      	ldr	r2, [r7, #12]
    1f5e:	b292      	uxth	r2, r2
    1f60:	869a      	strh	r2, [r3, #52]	; 0x34
    1f62:	46c0      	nop			; (mov r8, r8)
    1f64:	23c0      	movs	r3, #192	; 0xc0
    1f66:	059b      	lsls	r3, r3, #22
    1f68:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    1f6a:	b29b      	uxth	r3, r3
    1f6c:	001a      	movs	r2, r3
    1f6e:	2310      	movs	r3, #16
    1f70:	4013      	ands	r3, r2
    1f72:	d0f7      	beq.n	1f64 <PHYInit+0x4c>
    1f74:	46c0      	nop			; (mov r8, r8)
    1f76:	46bd      	mov	sp, r7
    1f78:	b004      	add	sp, #16
    1f7a:	bd80      	pop	{r7, pc}

00001f7c <SetPHYReg>:
    1f7c:	b590      	push	{r4, r7, lr}
    1f7e:	b085      	sub	sp, #20
    1f80:	af00      	add	r7, sp, #0
    1f82:	0004      	movs	r4, r0
    1f84:	0008      	movs	r0, r1
    1f86:	0011      	movs	r1, r2
    1f88:	1dfb      	adds	r3, r7, #7
    1f8a:	1c22      	adds	r2, r4, #0
    1f8c:	701a      	strb	r2, [r3, #0]
    1f8e:	1dbb      	adds	r3, r7, #6
    1f90:	1c02      	adds	r2, r0, #0
    1f92:	701a      	strb	r2, [r3, #0]
    1f94:	1d3b      	adds	r3, r7, #4
    1f96:	1c0a      	adds	r2, r1, #0
    1f98:	801a      	strh	r2, [r3, #0]
    1f9a:	23c0      	movs	r3, #192	; 0xc0
    1f9c:	059b      	lsls	r3, r3, #22
    1f9e:	1d3a      	adds	r2, r7, #4
    1fa0:	8812      	ldrh	r2, [r2, #0]
    1fa2:	84da      	strh	r2, [r3, #38]	; 0x26
    1fa4:	1dfb      	adds	r3, r7, #7
    1fa6:	781b      	ldrb	r3, [r3, #0]
    1fa8:	021a      	lsls	r2, r3, #8
    1faa:	23f8      	movs	r3, #248	; 0xf8
    1fac:	015b      	lsls	r3, r3, #5
    1fae:	4013      	ands	r3, r2
    1fb0:	22c0      	movs	r2, #192	; 0xc0
    1fb2:	0212      	lsls	r2, r2, #8
    1fb4:	431a      	orrs	r2, r3
    1fb6:	1dbb      	adds	r3, r7, #6
    1fb8:	781b      	ldrb	r3, [r3, #0]
    1fba:	211f      	movs	r1, #31
    1fbc:	400b      	ands	r3, r1
    1fbe:	4313      	orrs	r3, r2
    1fc0:	2220      	movs	r2, #32
    1fc2:	4313      	orrs	r3, r2
    1fc4:	60fb      	str	r3, [r7, #12]
    1fc6:	23c0      	movs	r3, #192	; 0xc0
    1fc8:	059b      	lsls	r3, r3, #22
    1fca:	68fa      	ldr	r2, [r7, #12]
    1fcc:	b292      	uxth	r2, r2
    1fce:	849a      	strh	r2, [r3, #36]	; 0x24
    1fd0:	46c0      	nop			; (mov r8, r8)
    1fd2:	23c0      	movs	r3, #192	; 0xc0
    1fd4:	059b      	lsls	r3, r3, #22
    1fd6:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1fd8:	b29b      	uxth	r3, r3
    1fda:	b21b      	sxth	r3, r3
    1fdc:	2b00      	cmp	r3, #0
    1fde:	daf8      	bge.n	1fd2 <SetPHYReg+0x56>
    1fe0:	46c0      	nop			; (mov r8, r8)
    1fe2:	46bd      	mov	sp, r7
    1fe4:	b005      	add	sp, #20
    1fe6:	bd90      	pop	{r4, r7, pc}

00001fe8 <GetPHYReg>:
    1fe8:	b580      	push	{r7, lr}
    1fea:	b084      	sub	sp, #16
    1fec:	af00      	add	r7, sp, #0
    1fee:	0002      	movs	r2, r0
    1ff0:	1dfb      	adds	r3, r7, #7
    1ff2:	701a      	strb	r2, [r3, #0]
    1ff4:	1dbb      	adds	r3, r7, #6
    1ff6:	1c0a      	adds	r2, r1, #0
    1ff8:	701a      	strb	r2, [r3, #0]
    1ffa:	1dfb      	adds	r3, r7, #7
    1ffc:	781b      	ldrb	r3, [r3, #0]
    1ffe:	021a      	lsls	r2, r3, #8
    2000:	23f8      	movs	r3, #248	; 0xf8
    2002:	015b      	lsls	r3, r3, #5
    2004:	4013      	ands	r3, r2
    2006:	4a0e      	ldr	r2, [pc, #56]	; (2040 <GetPHYReg+0x58>)
    2008:	431a      	orrs	r2, r3
    200a:	1dbb      	adds	r3, r7, #6
    200c:	781b      	ldrb	r3, [r3, #0]
    200e:	211f      	movs	r1, #31
    2010:	400b      	ands	r3, r1
    2012:	4313      	orrs	r3, r2
    2014:	60fb      	str	r3, [r7, #12]
    2016:	23c0      	movs	r3, #192	; 0xc0
    2018:	059b      	lsls	r3, r3, #22
    201a:	68fa      	ldr	r2, [r7, #12]
    201c:	b292      	uxth	r2, r2
    201e:	849a      	strh	r2, [r3, #36]	; 0x24
    2020:	46c0      	nop			; (mov r8, r8)
    2022:	23c0      	movs	r3, #192	; 0xc0
    2024:	059b      	lsls	r3, r3, #22
    2026:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2028:	b29b      	uxth	r3, r3
    202a:	b21b      	sxth	r3, r3
    202c:	2b00      	cmp	r3, #0
    202e:	daf8      	bge.n	2022 <GetPHYReg+0x3a>
    2030:	23c0      	movs	r3, #192	; 0xc0
    2032:	059b      	lsls	r3, r3, #22
    2034:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    2036:	b29b      	uxth	r3, r3
    2038:	0018      	movs	r0, r3
    203a:	46bd      	mov	sp, r7
    203c:	b004      	add	sp, #16
    203e:	bd80      	pop	{r7, pc}
    2040:	0000e020 	.word	0x0000e020

00002044 <EthernetConfig>:
    2044:	b580      	push	{r7, lr}
    2046:	b084      	sub	sp, #16
    2048:	af00      	add	r7, sp, #0
    204a:	6078      	str	r0, [r7, #4]
    204c:	2103      	movs	r1, #3
    204e:	201c      	movs	r0, #28
    2050:	f7ff ff62 	bl	1f18 <PHYInit>
    2054:	687b      	ldr	r3, [r7, #4]
    2056:	2b00      	cmp	r3, #0
    2058:	d00b      	beq.n	2072 <EthernetConfig+0x2e>
    205a:	687b      	ldr	r3, [r7, #4]
    205c:	889a      	ldrh	r2, [r3, #4]
    205e:	4b18      	ldr	r3, [pc, #96]	; (20c0 <EthernetConfig+0x7c>)
    2060:	801a      	strh	r2, [r3, #0]
    2062:	687b      	ldr	r3, [r7, #4]
    2064:	88da      	ldrh	r2, [r3, #6]
    2066:	4b16      	ldr	r3, [pc, #88]	; (20c0 <EthernetConfig+0x7c>)
    2068:	805a      	strh	r2, [r3, #2]
    206a:	687b      	ldr	r3, [r7, #4]
    206c:	891a      	ldrh	r2, [r3, #8]
    206e:	4b14      	ldr	r3, [pc, #80]	; (20c0 <EthernetConfig+0x7c>)
    2070:	809a      	strh	r2, [r3, #4]
    2072:	23c0      	movs	r3, #192	; 0xc0
    2074:	059b      	lsls	r3, r3, #22
    2076:	4a12      	ldr	r2, [pc, #72]	; (20c0 <EthernetConfig+0x7c>)
    2078:	8812      	ldrh	r2, [r2, #0]
    207a:	805a      	strh	r2, [r3, #2]
    207c:	23c0      	movs	r3, #192	; 0xc0
    207e:	059b      	lsls	r3, r3, #22
    2080:	4a0f      	ldr	r2, [pc, #60]	; (20c0 <EthernetConfig+0x7c>)
    2082:	8852      	ldrh	r2, [r2, #2]
    2084:	809a      	strh	r2, [r3, #4]
    2086:	23c0      	movs	r3, #192	; 0xc0
    2088:	059b      	lsls	r3, r3, #22
    208a:	4a0d      	ldr	r2, [pc, #52]	; (20c0 <EthernetConfig+0x7c>)
    208c:	8892      	ldrh	r2, [r2, #4]
    208e:	80da      	strh	r2, [r3, #6]
    2090:	f000 f81e 	bl	20d0 <MACReset>
    2094:	23c0      	movs	r3, #192	; 0xc0
    2096:	059b      	lsls	r3, r3, #22
    2098:	2207      	movs	r2, #7
    209a:	841a      	strh	r2, [r3, #32]
    209c:	2012      	movs	r0, #18
    209e:	f7ff ff07 	bl	1eb0 <__NVIC_EnableIRQ>
    20a2:	4b08      	ldr	r3, [pc, #32]	; (20c4 <EthernetConfig+0x80>)
    20a4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    20a6:	60fb      	str	r3, [r7, #12]
    20a8:	68fb      	ldr	r3, [r7, #12]
    20aa:	b29a      	uxth	r2, r3
    20ac:	4b06      	ldr	r3, [pc, #24]	; (20c8 <EthernetConfig+0x84>)
    20ae:	801a      	strh	r2, [r3, #0]
    20b0:	68fb      	ldr	r3, [r7, #12]
    20b2:	b29a      	uxth	r2, r3
    20b4:	4b05      	ldr	r3, [pc, #20]	; (20cc <EthernetConfig+0x88>)
    20b6:	801a      	strh	r2, [r3, #0]
    20b8:	46c0      	nop			; (mov r8, r8)
    20ba:	46bd      	mov	sp, r7
    20bc:	b004      	add	sp, #16
    20be:	bd80      	pop	{r7, pc}
    20c0:	20000004 	.word	0x20000004
    20c4:	400d8000 	.word	0x400d8000
    20c8:	20004d30 	.word	0x20004d30
    20cc:	20004d32 	.word	0x20004d32

000020d0 <MACReset>:
    20d0:	b580      	push	{r7, lr}
    20d2:	af00      	add	r7, sp, #0
    20d4:	23c0      	movs	r3, #192	; 0xc0
    20d6:	059b      	lsls	r3, r3, #22
    20d8:	22c0      	movs	r2, #192	; 0xc0
    20da:	0592      	lsls	r2, r2, #22
    20dc:	8bd2      	ldrh	r2, [r2, #30]
    20de:	b292      	uxth	r2, r2
    20e0:	2103      	movs	r1, #3
    20e2:	430a      	orrs	r2, r1
    20e4:	b292      	uxth	r2, r2
    20e6:	83da      	strh	r2, [r3, #30]
    20e8:	f000 f86a 	bl	21c0 <ClearMemory>
    20ec:	23c0      	movs	r3, #192	; 0xc0
    20ee:	059b      	lsls	r3, r3, #22
    20f0:	2280      	movs	r2, #128	; 0x80
    20f2:	0152      	lsls	r2, r2, #5
    20f4:	801a      	strh	r2, [r3, #0]
    20f6:	23c0      	movs	r3, #192	; 0xc0
    20f8:	059b      	lsls	r3, r3, #22
    20fa:	2200      	movs	r2, #0
    20fc:	811a      	strh	r2, [r3, #8]
    20fe:	23c0      	movs	r3, #192	; 0xc0
    2100:	059b      	lsls	r3, r3, #22
    2102:	2200      	movs	r2, #0
    2104:	815a      	strh	r2, [r3, #10]
    2106:	23c0      	movs	r3, #192	; 0xc0
    2108:	059b      	lsls	r3, r3, #22
    210a:	2200      	movs	r2, #0
    210c:	819a      	strh	r2, [r3, #12]
    210e:	23c0      	movs	r3, #192	; 0xc0
    2110:	059b      	lsls	r3, r3, #22
    2112:	4a26      	ldr	r2, [pc, #152]	; (21ac <MACReset+0xdc>)
    2114:	81da      	strh	r2, [r3, #14]
    2116:	23c0      	movs	r3, #192	; 0xc0
    2118:	059b      	lsls	r3, r3, #22
    211a:	2260      	movs	r2, #96	; 0x60
    211c:	821a      	strh	r2, [r3, #16]
    211e:	23c0      	movs	r3, #192	; 0xc0
    2120:	059b      	lsls	r3, r3, #22
    2122:	2250      	movs	r2, #80	; 0x50
    2124:	825a      	strh	r2, [r3, #18]
    2126:	23c0      	movs	r3, #192	; 0xc0
    2128:	059b      	lsls	r3, r3, #22
    212a:	2280      	movs	r2, #128	; 0x80
    212c:	0092      	lsls	r2, r2, #2
    212e:	829a      	strh	r2, [r3, #20]
    2130:	23c0      	movs	r3, #192	; 0xc0
    2132:	059b      	lsls	r3, r3, #22
    2134:	2205      	movs	r2, #5
    2136:	82da      	strh	r2, [r3, #22]
    2138:	23c0      	movs	r3, #192	; 0xc0
    213a:	059b      	lsls	r3, r3, #22
    213c:	4a1c      	ldr	r2, [pc, #112]	; (21b0 <MACReset+0xe0>)
    213e:	831a      	strh	r2, [r3, #24]
    2140:	23c0      	movs	r3, #192	; 0xc0
    2142:	059b      	lsls	r3, r3, #22
    2144:	4a1b      	ldr	r2, [pc, #108]	; (21b4 <MACReset+0xe4>)
    2146:	835a      	strh	r2, [r3, #26]
    2148:	23c0      	movs	r3, #192	; 0xc0
    214a:	059b      	lsls	r3, r3, #22
    214c:	2280      	movs	r2, #128	; 0x80
    214e:	839a      	strh	r2, [r3, #28]
    2150:	23c0      	movs	r3, #192	; 0xc0
    2152:	059b      	lsls	r3, r3, #22
    2154:	4a18      	ldr	r2, [pc, #96]	; (21b8 <MACReset+0xe8>)
    2156:	83da      	strh	r2, [r3, #30]
    2158:	23c0      	movs	r3, #192	; 0xc0
    215a:	059b      	lsls	r3, r3, #22
    215c:	2200      	movs	r2, #0
    215e:	841a      	strh	r2, [r3, #32]
    2160:	23c0      	movs	r3, #192	; 0xc0
    2162:	059b      	lsls	r3, r3, #22
    2164:	2201      	movs	r2, #1
    2166:	4252      	negs	r2, r2
    2168:	845a      	strh	r2, [r3, #34]	; 0x22
    216a:	23c0      	movs	r3, #192	; 0xc0
    216c:	059b      	lsls	r3, r3, #22
    216e:	2200      	movs	r2, #0
    2170:	851a      	strh	r2, [r3, #40]	; 0x28
    2172:	23c0      	movs	r3, #192	; 0xc0
    2174:	059b      	lsls	r3, r3, #22
    2176:	2280      	movs	r2, #128	; 0x80
    2178:	0152      	lsls	r2, r2, #5
    217a:	855a      	strh	r2, [r3, #42]	; 0x2a
    217c:	23c0      	movs	r3, #192	; 0xc0
    217e:	059b      	lsls	r3, r3, #22
    2180:	22c0      	movs	r2, #192	; 0xc0
    2182:	0592      	lsls	r2, r2, #22
    2184:	8b92      	ldrh	r2, [r2, #28]
    2186:	b292      	uxth	r2, r2
    2188:	490c      	ldr	r1, [pc, #48]	; (21bc <MACReset+0xec>)
    218a:	400a      	ands	r2, r1
    218c:	b292      	uxth	r2, r2
    218e:	839a      	strh	r2, [r3, #28]
    2190:	23c0      	movs	r3, #192	; 0xc0
    2192:	059b      	lsls	r3, r3, #22
    2194:	22c0      	movs	r2, #192	; 0xc0
    2196:	0592      	lsls	r2, r2, #22
    2198:	8bd2      	ldrh	r2, [r2, #30]
    219a:	b292      	uxth	r2, r2
    219c:	2103      	movs	r1, #3
    219e:	438a      	bics	r2, r1
    21a0:	b292      	uxth	r2, r2
    21a2:	83da      	strh	r2, [r3, #30]
    21a4:	46c0      	nop			; (mov r8, r8)
    21a6:	46bd      	mov	sp, r7
    21a8:	bd80      	pop	{r7, pc}
    21aa:	46c0      	nop			; (mov r8, r8)
    21ac:	ffff8000 	.word	0xffff8000
    21b0:	ffff8606 	.word	0xffff8606
    21b4:	ffff81fa 	.word	0xffff81fa
    21b8:	00003003 	.word	0x00003003
    21bc:	ffffbfff 	.word	0xffffbfff

000021c0 <ClearMemory>:
    21c0:	b580      	push	{r7, lr}
    21c2:	b082      	sub	sp, #8
    21c4:	af00      	add	r7, sp, #0
    21c6:	23e0      	movs	r3, #224	; 0xe0
    21c8:	059b      	lsls	r3, r3, #22
    21ca:	603b      	str	r3, [r7, #0]
    21cc:	2300      	movs	r3, #0
    21ce:	607b      	str	r3, [r7, #4]
    21d0:	e007      	b.n	21e2 <ClearMemory+0x22>
    21d2:	683b      	ldr	r3, [r7, #0]
    21d4:	1d1a      	adds	r2, r3, #4
    21d6:	603a      	str	r2, [r7, #0]
    21d8:	2200      	movs	r2, #0
    21da:	601a      	str	r2, [r3, #0]
    21dc:	687b      	ldr	r3, [r7, #4]
    21de:	3301      	adds	r3, #1
    21e0:	607b      	str	r3, [r7, #4]
    21e2:	687b      	ldr	r3, [r7, #4]
    21e4:	4a03      	ldr	r2, [pc, #12]	; (21f4 <ClearMemory+0x34>)
    21e6:	4293      	cmp	r3, r2
    21e8:	d9f3      	bls.n	21d2 <ClearMemory+0x12>
    21ea:	46c0      	nop			; (mov r8, r8)
    21ec:	46bd      	mov	sp, r7
    21ee:	b002      	add	sp, #8
    21f0:	bd80      	pop	{r7, pc}
    21f2:	46c0      	nop			; (mov r8, r8)
    21f4:	000007ff 	.word	0x000007ff

000021f8 <ReadPacket>:
    21f8:	b580      	push	{r7, lr}
    21fa:	b08a      	sub	sp, #40	; 0x28
    21fc:	af00      	add	r7, sp, #0
    21fe:	6078      	str	r0, [r7, #4]
    2200:	2316      	movs	r3, #22
    2202:	18fb      	adds	r3, r7, r3
    2204:	2200      	movs	r2, #0
    2206:	801a      	strh	r2, [r3, #0]
    2208:	2326      	movs	r3, #38	; 0x26
    220a:	18fb      	adds	r3, r7, r3
    220c:	2200      	movs	r2, #0
    220e:	801a      	strh	r2, [r3, #0]
    2210:	4b71      	ldr	r3, [pc, #452]	; (23d8 <ReadPacket+0x1e0>)
    2212:	681a      	ldr	r2, [r3, #0]
    2214:	2301      	movs	r3, #1
    2216:	425b      	negs	r3, r3
    2218:	0019      	movs	r1, r3
    221a:	0010      	movs	r0, r2
    221c:	f004 fb5c 	bl	68d8 <osMutexWait>
    2220:	23c0      	movs	r3, #192	; 0xc0
    2222:	059a      	lsls	r2, r3, #22
    2224:	2314      	movs	r3, #20
    2226:	18fb      	adds	r3, r7, r3
    2228:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    222a:	801a      	strh	r2, [r3, #0]
    222c:	23c0      	movs	r3, #192	; 0xc0
    222e:	059a      	lsls	r2, r3, #22
    2230:	2312      	movs	r3, #18
    2232:	18fb      	adds	r3, r7, r3
    2234:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    2236:	801a      	strh	r2, [r3, #0]
    2238:	2314      	movs	r3, #20
    223a:	18fa      	adds	r2, r7, r3
    223c:	2312      	movs	r3, #18
    223e:	18fb      	adds	r3, r7, r3
    2240:	8812      	ldrh	r2, [r2, #0]
    2242:	881b      	ldrh	r3, [r3, #0]
    2244:	429a      	cmp	r2, r3
    2246:	d90e      	bls.n	2266 <ReadPacket+0x6e>
    2248:	2326      	movs	r3, #38	; 0x26
    224a:	18fb      	adds	r3, r7, r3
    224c:	2214      	movs	r2, #20
    224e:	18b9      	adds	r1, r7, r2
    2250:	2212      	movs	r2, #18
    2252:	18ba      	adds	r2, r7, r2
    2254:	8809      	ldrh	r1, [r1, #0]
    2256:	8812      	ldrh	r2, [r2, #0]
    2258:	1a8a      	subs	r2, r1, r2
    225a:	801a      	strh	r2, [r3, #0]
    225c:	2316      	movs	r3, #22
    225e:	18fb      	adds	r3, r7, r3
    2260:	2200      	movs	r2, #0
    2262:	801a      	strh	r2, [r3, #0]
    2264:	e00e      	b.n	2284 <ReadPacket+0x8c>
    2266:	2326      	movs	r3, #38	; 0x26
    2268:	18fb      	adds	r3, r7, r3
    226a:	2212      	movs	r2, #18
    226c:	18ba      	adds	r2, r7, r2
    226e:	8812      	ldrh	r2, [r2, #0]
    2270:	2180      	movs	r1, #128	; 0x80
    2272:	0149      	lsls	r1, r1, #5
    2274:	1a8a      	subs	r2, r1, r2
    2276:	801a      	strh	r2, [r3, #0]
    2278:	2316      	movs	r3, #22
    227a:	18fb      	adds	r3, r7, r3
    227c:	2214      	movs	r2, #20
    227e:	18ba      	adds	r2, r7, r2
    2280:	8812      	ldrh	r2, [r2, #0]
    2282:	801a      	strh	r2, [r3, #0]
    2284:	2312      	movs	r3, #18
    2286:	18fb      	adds	r3, r7, r3
    2288:	881b      	ldrh	r3, [r3, #0]
    228a:	22e0      	movs	r2, #224	; 0xe0
    228c:	0592      	lsls	r2, r2, #22
    228e:	4694      	mov	ip, r2
    2290:	4463      	add	r3, ip
    2292:	623b      	str	r3, [r7, #32]
    2294:	687b      	ldr	r3, [r7, #4]
    2296:	61fb      	str	r3, [r7, #28]
    2298:	2308      	movs	r3, #8
    229a:	18fa      	adds	r2, r7, r3
    229c:	6a3b      	ldr	r3, [r7, #32]
    229e:	1d19      	adds	r1, r3, #4
    22a0:	6239      	str	r1, [r7, #32]
    22a2:	681b      	ldr	r3, [r3, #0]
    22a4:	6013      	str	r3, [r2, #0]
    22a6:	2308      	movs	r3, #8
    22a8:	18fb      	adds	r3, r7, r3
    22aa:	881b      	ldrh	r3, [r3, #0]
    22ac:	3303      	adds	r3, #3
    22ae:	2b00      	cmp	r3, #0
    22b0:	da00      	bge.n	22b4 <ReadPacket+0xbc>
    22b2:	3303      	adds	r3, #3
    22b4:	109b      	asrs	r3, r3, #2
    22b6:	60fb      	str	r3, [r7, #12]
    22b8:	2326      	movs	r3, #38	; 0x26
    22ba:	18fb      	adds	r3, r7, r3
    22bc:	2226      	movs	r2, #38	; 0x26
    22be:	18ba      	adds	r2, r7, r2
    22c0:	8812      	ldrh	r2, [r2, #0]
    22c2:	3a04      	subs	r2, #4
    22c4:	801a      	strh	r2, [r3, #0]
    22c6:	6a3b      	ldr	r3, [r7, #32]
    22c8:	b29b      	uxth	r3, r3
    22ca:	4a44      	ldr	r2, [pc, #272]	; (23dc <ReadPacket+0x1e4>)
    22cc:	4293      	cmp	r3, r2
    22ce:	d902      	bls.n	22d6 <ReadPacket+0xde>
    22d0:	23e0      	movs	r3, #224	; 0xe0
    22d2:	059b      	lsls	r3, r3, #22
    22d4:	623b      	str	r3, [r7, #32]
    22d6:	2308      	movs	r3, #8
    22d8:	18fb      	adds	r3, r7, r3
    22da:	881b      	ldrh	r3, [r3, #0]
    22dc:	2226      	movs	r2, #38	; 0x26
    22de:	18ba      	adds	r2, r7, r2
    22e0:	8812      	ldrh	r2, [r2, #0]
    22e2:	429a      	cmp	r2, r3
    22e4:	d312      	bcc.n	230c <ReadPacket+0x114>
    22e6:	2300      	movs	r3, #0
    22e8:	61bb      	str	r3, [r7, #24]
    22ea:	e00a      	b.n	2302 <ReadPacket+0x10a>
    22ec:	69fb      	ldr	r3, [r7, #28]
    22ee:	1d1a      	adds	r2, r3, #4
    22f0:	61fa      	str	r2, [r7, #28]
    22f2:	6a3a      	ldr	r2, [r7, #32]
    22f4:	1d11      	adds	r1, r2, #4
    22f6:	6239      	str	r1, [r7, #32]
    22f8:	6812      	ldr	r2, [r2, #0]
    22fa:	601a      	str	r2, [r3, #0]
    22fc:	69bb      	ldr	r3, [r7, #24]
    22fe:	3301      	adds	r3, #1
    2300:	61bb      	str	r3, [r7, #24]
    2302:	69ba      	ldr	r2, [r7, #24]
    2304:	68fb      	ldr	r3, [r7, #12]
    2306:	429a      	cmp	r2, r3
    2308:	d3f0      	bcc.n	22ec <ReadPacket+0xf4>
    230a:	e034      	b.n	2376 <ReadPacket+0x17e>
    230c:	2326      	movs	r3, #38	; 0x26
    230e:	18fb      	adds	r3, r7, r3
    2310:	881b      	ldrh	r3, [r3, #0]
    2312:	089b      	lsrs	r3, r3, #2
    2314:	b29b      	uxth	r3, r3
    2316:	001a      	movs	r2, r3
    2318:	68fb      	ldr	r3, [r7, #12]
    231a:	1a9b      	subs	r3, r3, r2
    231c:	60fb      	str	r3, [r7, #12]
    231e:	2300      	movs	r3, #0
    2320:	61bb      	str	r3, [r7, #24]
    2322:	e00a      	b.n	233a <ReadPacket+0x142>
    2324:	69fb      	ldr	r3, [r7, #28]
    2326:	1d1a      	adds	r2, r3, #4
    2328:	61fa      	str	r2, [r7, #28]
    232a:	6a3a      	ldr	r2, [r7, #32]
    232c:	1d11      	adds	r1, r2, #4
    232e:	6239      	str	r1, [r7, #32]
    2330:	6812      	ldr	r2, [r2, #0]
    2332:	601a      	str	r2, [r3, #0]
    2334:	69bb      	ldr	r3, [r7, #24]
    2336:	3301      	adds	r3, #1
    2338:	61bb      	str	r3, [r7, #24]
    233a:	2326      	movs	r3, #38	; 0x26
    233c:	18fb      	adds	r3, r7, r3
    233e:	881b      	ldrh	r3, [r3, #0]
    2340:	089b      	lsrs	r3, r3, #2
    2342:	b29b      	uxth	r3, r3
    2344:	001a      	movs	r2, r3
    2346:	69bb      	ldr	r3, [r7, #24]
    2348:	429a      	cmp	r2, r3
    234a:	d8eb      	bhi.n	2324 <ReadPacket+0x12c>
    234c:	23e0      	movs	r3, #224	; 0xe0
    234e:	059b      	lsls	r3, r3, #22
    2350:	623b      	str	r3, [r7, #32]
    2352:	2300      	movs	r3, #0
    2354:	61bb      	str	r3, [r7, #24]
    2356:	e00a      	b.n	236e <ReadPacket+0x176>
    2358:	69fb      	ldr	r3, [r7, #28]
    235a:	1d1a      	adds	r2, r3, #4
    235c:	61fa      	str	r2, [r7, #28]
    235e:	6a3a      	ldr	r2, [r7, #32]
    2360:	1d11      	adds	r1, r2, #4
    2362:	6239      	str	r1, [r7, #32]
    2364:	6812      	ldr	r2, [r2, #0]
    2366:	601a      	str	r2, [r3, #0]
    2368:	69bb      	ldr	r3, [r7, #24]
    236a:	3301      	adds	r3, #1
    236c:	61bb      	str	r3, [r7, #24]
    236e:	69ba      	ldr	r2, [r7, #24]
    2370:	68fb      	ldr	r3, [r7, #12]
    2372:	429a      	cmp	r2, r3
    2374:	d3f0      	bcc.n	2358 <ReadPacket+0x160>
    2376:	6a3b      	ldr	r3, [r7, #32]
    2378:	b29b      	uxth	r3, r3
    237a:	4a18      	ldr	r2, [pc, #96]	; (23dc <ReadPacket+0x1e4>)
    237c:	4293      	cmp	r3, r2
    237e:	d902      	bls.n	2386 <ReadPacket+0x18e>
    2380:	23e0      	movs	r3, #224	; 0xe0
    2382:	059b      	lsls	r3, r3, #22
    2384:	623b      	str	r3, [r7, #32]
    2386:	23c0      	movs	r3, #192	; 0xc0
    2388:	059b      	lsls	r3, r3, #22
    238a:	6a3a      	ldr	r2, [r7, #32]
    238c:	b292      	uxth	r2, r2
    238e:	851a      	strh	r2, [r3, #40]	; 0x28
    2390:	23c0      	movs	r3, #192	; 0xc0
    2392:	059b      	lsls	r3, r3, #22
    2394:	22c0      	movs	r2, #192	; 0xc0
    2396:	0592      	lsls	r2, r2, #22
    2398:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    239a:	b292      	uxth	r2, r2
    239c:	3a20      	subs	r2, #32
    239e:	b292      	uxth	r2, r2
    23a0:	861a      	strh	r2, [r3, #48]	; 0x30
    23a2:	687b      	ldr	r3, [r7, #4]
    23a4:	88da      	ldrh	r2, [r3, #6]
    23a6:	4b0e      	ldr	r3, [pc, #56]	; (23e0 <ReadPacket+0x1e8>)
    23a8:	801a      	strh	r2, [r3, #0]
    23aa:	687b      	ldr	r3, [r7, #4]
    23ac:	891a      	ldrh	r2, [r3, #8]
    23ae:	4b0c      	ldr	r3, [pc, #48]	; (23e0 <ReadPacket+0x1e8>)
    23b0:	805a      	strh	r2, [r3, #2]
    23b2:	687b      	ldr	r3, [r7, #4]
    23b4:	895a      	ldrh	r2, [r3, #10]
    23b6:	4b0a      	ldr	r3, [pc, #40]	; (23e0 <ReadPacket+0x1e8>)
    23b8:	809a      	strh	r2, [r3, #4]
    23ba:	4b09      	ldr	r3, [pc, #36]	; (23e0 <ReadPacket+0x1e8>)
    23bc:	2201      	movs	r2, #1
    23be:	815a      	strh	r2, [r3, #10]
    23c0:	4b05      	ldr	r3, [pc, #20]	; (23d8 <ReadPacket+0x1e0>)
    23c2:	681b      	ldr	r3, [r3, #0]
    23c4:	0018      	movs	r0, r3
    23c6:	f004 fa97 	bl	68f8 <osMutexRelease>
    23ca:	2308      	movs	r3, #8
    23cc:	18fb      	adds	r3, r7, r3
    23ce:	881b      	ldrh	r3, [r3, #0]
    23d0:	0018      	movs	r0, r3
    23d2:	46bd      	mov	sp, r7
    23d4:	b00a      	add	sp, #40	; 0x28
    23d6:	bd80      	pop	{r7, pc}
    23d8:	2000532c 	.word	0x2000532c
    23dc:	00000fff 	.word	0x00000fff
    23e0:	20004d1c 	.word	0x20004d1c

000023e4 <SendPacket>:
    23e4:	b580      	push	{r7, lr}
    23e6:	b08a      	sub	sp, #40	; 0x28
    23e8:	af00      	add	r7, sp, #0
    23ea:	6078      	str	r0, [r7, #4]
    23ec:	6039      	str	r1, [r7, #0]
    23ee:	4b79      	ldr	r3, [pc, #484]	; (25d4 <SendPacket+0x1f0>)
    23f0:	681a      	ldr	r2, [r3, #0]
    23f2:	2301      	movs	r3, #1
    23f4:	425b      	negs	r3, r3
    23f6:	0019      	movs	r1, r3
    23f8:	0010      	movs	r0, r2
    23fa:	f004 fa6d 	bl	68d8 <osMutexWait>
    23fe:	23c0      	movs	r3, #192	; 0xc0
    2400:	059b      	lsls	r3, r3, #22
    2402:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    2404:	b29b      	uxth	r3, r3
    2406:	61bb      	str	r3, [r7, #24]
    2408:	23c0      	movs	r3, #192	; 0xc0
    240a:	059b      	lsls	r3, r3, #22
    240c:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    240e:	b29b      	uxth	r3, r3
    2410:	617b      	str	r3, [r7, #20]
    2412:	69ba      	ldr	r2, [r7, #24]
    2414:	697b      	ldr	r3, [r7, #20]
    2416:	429a      	cmp	r2, r3
    2418:	d90d      	bls.n	2436 <SendPacket+0x52>
    241a:	69bb      	ldr	r3, [r7, #24]
    241c:	b29a      	uxth	r2, r3
    241e:	697b      	ldr	r3, [r7, #20]
    2420:	b29b      	uxth	r3, r3
    2422:	1ad3      	subs	r3, r2, r3
    2424:	b29a      	uxth	r2, r3
    2426:	230c      	movs	r3, #12
    2428:	18fb      	adds	r3, r7, r3
    242a:	801a      	strh	r2, [r3, #0]
    242c:	230c      	movs	r3, #12
    242e:	18fb      	adds	r3, r7, r3
    2430:	2200      	movs	r2, #0
    2432:	805a      	strh	r2, [r3, #2]
    2434:	e011      	b.n	245a <SendPacket+0x76>
    2436:	697b      	ldr	r3, [r7, #20]
    2438:	b29b      	uxth	r3, r3
    243a:	2280      	movs	r2, #128	; 0x80
    243c:	0192      	lsls	r2, r2, #6
    243e:	1ad3      	subs	r3, r2, r3
    2440:	b29a      	uxth	r2, r3
    2442:	230c      	movs	r3, #12
    2444:	18fb      	adds	r3, r7, r3
    2446:	801a      	strh	r2, [r3, #0]
    2448:	69bb      	ldr	r3, [r7, #24]
    244a:	b29b      	uxth	r3, r3
    244c:	4a62      	ldr	r2, [pc, #392]	; (25d8 <SendPacket+0x1f4>)
    244e:	4694      	mov	ip, r2
    2450:	4463      	add	r3, ip
    2452:	b29a      	uxth	r2, r3
    2454:	230c      	movs	r3, #12
    2456:	18fb      	adds	r3, r7, r3
    2458:	805a      	strh	r2, [r3, #2]
    245a:	230c      	movs	r3, #12
    245c:	18fb      	adds	r3, r7, r3
    245e:	881b      	ldrh	r3, [r3, #0]
    2460:	001a      	movs	r2, r3
    2462:	230c      	movs	r3, #12
    2464:	18fb      	adds	r3, r7, r3
    2466:	885b      	ldrh	r3, [r3, #2]
    2468:	18d3      	adds	r3, r2, r3
    246a:	3b08      	subs	r3, #8
    246c:	001a      	movs	r2, r3
    246e:	683b      	ldr	r3, [r7, #0]
    2470:	429a      	cmp	r2, r3
    2472:	da01      	bge.n	2478 <SendPacket+0x94>
    2474:	2300      	movs	r3, #0
    2476:	e0a9      	b.n	25cc <SendPacket+0x1e8>
    2478:	683b      	ldr	r3, [r7, #0]
    247a:	613b      	str	r3, [r7, #16]
    247c:	687b      	ldr	r3, [r7, #4]
    247e:	623b      	str	r3, [r7, #32]
    2480:	697b      	ldr	r3, [r7, #20]
    2482:	22e0      	movs	r2, #224	; 0xe0
    2484:	0592      	lsls	r2, r2, #22
    2486:	4694      	mov	ip, r2
    2488:	4463      	add	r3, ip
    248a:	61fb      	str	r3, [r7, #28]
    248c:	69fb      	ldr	r3, [r7, #28]
    248e:	1d1a      	adds	r2, r3, #4
    2490:	61fa      	str	r2, [r7, #28]
    2492:	693a      	ldr	r2, [r7, #16]
    2494:	601a      	str	r2, [r3, #0]
    2496:	230c      	movs	r3, #12
    2498:	18fb      	adds	r3, r7, r3
    249a:	881b      	ldrh	r3, [r3, #0]
    249c:	3b04      	subs	r3, #4
    249e:	b29a      	uxth	r2, r3
    24a0:	230c      	movs	r3, #12
    24a2:	18fb      	adds	r3, r7, r3
    24a4:	801a      	strh	r2, [r3, #0]
    24a6:	69fb      	ldr	r3, [r7, #28]
    24a8:	b29b      	uxth	r3, r3
    24aa:	4a4c      	ldr	r2, [pc, #304]	; (25dc <SendPacket+0x1f8>)
    24ac:	4293      	cmp	r3, r2
    24ae:	d901      	bls.n	24b4 <SendPacket+0xd0>
    24b0:	4b4b      	ldr	r3, [pc, #300]	; (25e0 <SendPacket+0x1fc>)
    24b2:	61fb      	str	r3, [r7, #28]
    24b4:	683b      	ldr	r3, [r7, #0]
    24b6:	3303      	adds	r3, #3
    24b8:	2b00      	cmp	r3, #0
    24ba:	da00      	bge.n	24be <SendPacket+0xda>
    24bc:	3303      	adds	r3, #3
    24be:	109b      	asrs	r3, r3, #2
    24c0:	613b      	str	r3, [r7, #16]
    24c2:	230c      	movs	r3, #12
    24c4:	18fb      	adds	r3, r7, r3
    24c6:	881b      	ldrh	r3, [r3, #0]
    24c8:	001a      	movs	r2, r3
    24ca:	683b      	ldr	r3, [r7, #0]
    24cc:	429a      	cmp	r2, r3
    24ce:	db1a      	blt.n	2506 <SendPacket+0x122>
    24d0:	2326      	movs	r3, #38	; 0x26
    24d2:	18fb      	adds	r3, r7, r3
    24d4:	2200      	movs	r2, #0
    24d6:	801a      	strh	r2, [r3, #0]
    24d8:	e00e      	b.n	24f8 <SendPacket+0x114>
    24da:	69fb      	ldr	r3, [r7, #28]
    24dc:	1d1a      	adds	r2, r3, #4
    24de:	61fa      	str	r2, [r7, #28]
    24e0:	6a3a      	ldr	r2, [r7, #32]
    24e2:	1d11      	adds	r1, r2, #4
    24e4:	6239      	str	r1, [r7, #32]
    24e6:	6812      	ldr	r2, [r2, #0]
    24e8:	601a      	str	r2, [r3, #0]
    24ea:	2326      	movs	r3, #38	; 0x26
    24ec:	18fb      	adds	r3, r7, r3
    24ee:	881a      	ldrh	r2, [r3, #0]
    24f0:	2326      	movs	r3, #38	; 0x26
    24f2:	18fb      	adds	r3, r7, r3
    24f4:	3201      	adds	r2, #1
    24f6:	801a      	strh	r2, [r3, #0]
    24f8:	2326      	movs	r3, #38	; 0x26
    24fa:	18fb      	adds	r3, r7, r3
    24fc:	881a      	ldrh	r2, [r3, #0]
    24fe:	693b      	ldr	r3, [r7, #16]
    2500:	429a      	cmp	r2, r3
    2502:	d3ea      	bcc.n	24da <SendPacket+0xf6>
    2504:	e042      	b.n	258c <SendPacket+0x1a8>
    2506:	230c      	movs	r3, #12
    2508:	18fb      	adds	r3, r7, r3
    250a:	881b      	ldrh	r3, [r3, #0]
    250c:	089b      	lsrs	r3, r3, #2
    250e:	b29b      	uxth	r3, r3
    2510:	001a      	movs	r2, r3
    2512:	693b      	ldr	r3, [r7, #16]
    2514:	1a9b      	subs	r3, r3, r2
    2516:	613b      	str	r3, [r7, #16]
    2518:	2326      	movs	r3, #38	; 0x26
    251a:	18fb      	adds	r3, r7, r3
    251c:	2200      	movs	r2, #0
    251e:	801a      	strh	r2, [r3, #0]
    2520:	e00e      	b.n	2540 <SendPacket+0x15c>
    2522:	69fb      	ldr	r3, [r7, #28]
    2524:	1d1a      	adds	r2, r3, #4
    2526:	61fa      	str	r2, [r7, #28]
    2528:	6a3a      	ldr	r2, [r7, #32]
    252a:	1d11      	adds	r1, r2, #4
    252c:	6239      	str	r1, [r7, #32]
    252e:	6812      	ldr	r2, [r2, #0]
    2530:	601a      	str	r2, [r3, #0]
    2532:	2326      	movs	r3, #38	; 0x26
    2534:	18fb      	adds	r3, r7, r3
    2536:	881a      	ldrh	r2, [r3, #0]
    2538:	2326      	movs	r3, #38	; 0x26
    253a:	18fb      	adds	r3, r7, r3
    253c:	3201      	adds	r2, #1
    253e:	801a      	strh	r2, [r3, #0]
    2540:	230c      	movs	r3, #12
    2542:	18fb      	adds	r3, r7, r3
    2544:	881b      	ldrh	r3, [r3, #0]
    2546:	089b      	lsrs	r3, r3, #2
    2548:	b29b      	uxth	r3, r3
    254a:	2226      	movs	r2, #38	; 0x26
    254c:	18ba      	adds	r2, r7, r2
    254e:	8812      	ldrh	r2, [r2, #0]
    2550:	429a      	cmp	r2, r3
    2552:	d3e6      	bcc.n	2522 <SendPacket+0x13e>
    2554:	4b22      	ldr	r3, [pc, #136]	; (25e0 <SendPacket+0x1fc>)
    2556:	61fb      	str	r3, [r7, #28]
    2558:	2326      	movs	r3, #38	; 0x26
    255a:	18fb      	adds	r3, r7, r3
    255c:	2200      	movs	r2, #0
    255e:	801a      	strh	r2, [r3, #0]
    2560:	e00e      	b.n	2580 <SendPacket+0x19c>
    2562:	69fb      	ldr	r3, [r7, #28]
    2564:	1d1a      	adds	r2, r3, #4
    2566:	61fa      	str	r2, [r7, #28]
    2568:	6a3a      	ldr	r2, [r7, #32]
    256a:	1d11      	adds	r1, r2, #4
    256c:	6239      	str	r1, [r7, #32]
    256e:	6812      	ldr	r2, [r2, #0]
    2570:	601a      	str	r2, [r3, #0]
    2572:	2326      	movs	r3, #38	; 0x26
    2574:	18fb      	adds	r3, r7, r3
    2576:	881a      	ldrh	r2, [r3, #0]
    2578:	2326      	movs	r3, #38	; 0x26
    257a:	18fb      	adds	r3, r7, r3
    257c:	3201      	adds	r2, #1
    257e:	801a      	strh	r2, [r3, #0]
    2580:	2326      	movs	r3, #38	; 0x26
    2582:	18fb      	adds	r3, r7, r3
    2584:	881a      	ldrh	r2, [r3, #0]
    2586:	693b      	ldr	r3, [r7, #16]
    2588:	429a      	cmp	r2, r3
    258a:	d3ea      	bcc.n	2562 <SendPacket+0x17e>
    258c:	69fb      	ldr	r3, [r7, #28]
    258e:	b29b      	uxth	r3, r3
    2590:	4a12      	ldr	r2, [pc, #72]	; (25dc <SendPacket+0x1f8>)
    2592:	4293      	cmp	r3, r2
    2594:	d901      	bls.n	259a <SendPacket+0x1b6>
    2596:	4b12      	ldr	r3, [pc, #72]	; (25e0 <SendPacket+0x1fc>)
    2598:	61fb      	str	r3, [r7, #28]
    259a:	2300      	movs	r3, #0
    259c:	613b      	str	r3, [r7, #16]
    259e:	69fb      	ldr	r3, [r7, #28]
    25a0:	1d1a      	adds	r2, r3, #4
    25a2:	61fa      	str	r2, [r7, #28]
    25a4:	693a      	ldr	r2, [r7, #16]
    25a6:	601a      	str	r2, [r3, #0]
    25a8:	69fb      	ldr	r3, [r7, #28]
    25aa:	b29b      	uxth	r3, r3
    25ac:	4a0b      	ldr	r2, [pc, #44]	; (25dc <SendPacket+0x1f8>)
    25ae:	4293      	cmp	r3, r2
    25b0:	d901      	bls.n	25b6 <SendPacket+0x1d2>
    25b2:	4b0b      	ldr	r3, [pc, #44]	; (25e0 <SendPacket+0x1fc>)
    25b4:	61fb      	str	r3, [r7, #28]
    25b6:	23c0      	movs	r3, #192	; 0xc0
    25b8:	059b      	lsls	r3, r3, #22
    25ba:	69fa      	ldr	r2, [r7, #28]
    25bc:	b292      	uxth	r2, r2
    25be:	855a      	strh	r2, [r3, #42]	; 0x2a
    25c0:	4b04      	ldr	r3, [pc, #16]	; (25d4 <SendPacket+0x1f0>)
    25c2:	681b      	ldr	r3, [r3, #0]
    25c4:	0018      	movs	r0, r3
    25c6:	f004 f997 	bl	68f8 <osMutexRelease>
    25ca:	683b      	ldr	r3, [r7, #0]
    25cc:	0018      	movs	r0, r3
    25ce:	46bd      	mov	sp, r7
    25d0:	b00a      	add	sp, #40	; 0x28
    25d2:	bd80      	pop	{r7, pc}
    25d4:	20005340 	.word	0x20005340
    25d8:	fffff000 	.word	0xfffff000
    25dc:	00001ffc 	.word	0x00001ffc
    25e0:	38001000 	.word	0x38001000

000025e4 <ETHERNET_Handler>:
    25e4:	b580      	push	{r7, lr}
    25e6:	b082      	sub	sp, #8
    25e8:	af00      	add	r7, sp, #0
    25ea:	23c0      	movs	r3, #192	; 0xc0
    25ec:	059a      	lsls	r2, r3, #22
    25ee:	1dbb      	adds	r3, r7, #6
    25f0:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    25f2:	801a      	strh	r2, [r3, #0]
    25f4:	23c0      	movs	r3, #192	; 0xc0
    25f6:	059b      	lsls	r3, r3, #22
    25f8:	1dba      	adds	r2, r7, #6
    25fa:	8812      	ldrh	r2, [r2, #0]
    25fc:	845a      	strh	r2, [r3, #34]	; 0x22
    25fe:	1dbb      	adds	r3, r7, #6
    2600:	881b      	ldrh	r3, [r3, #0]
    2602:	2201      	movs	r2, #1
    2604:	4013      	ands	r3, r2
    2606:	d008      	beq.n	261a <ETHERNET_Handler+0x36>
    2608:	4b0a      	ldr	r3, [pc, #40]	; (2634 <ETHERNET_Handler+0x50>)
    260a:	2201      	movs	r2, #1
    260c:	601a      	str	r2, [r3, #0]
    260e:	4b0a      	ldr	r3, [pc, #40]	; (2638 <ETHERNET_Handler+0x54>)
    2610:	681b      	ldr	r3, [r3, #0]
    2612:	2101      	movs	r1, #1
    2614:	0018      	movs	r0, r3
    2616:	f004 f87d 	bl	6714 <osSignalSet>
    261a:	1dbb      	adds	r3, r7, #6
    261c:	881b      	ldrh	r3, [r3, #0]
    261e:	2202      	movs	r2, #2
    2620:	4013      	ands	r3, r2
    2622:	d002      	beq.n	262a <ETHERNET_Handler+0x46>
    2624:	4b05      	ldr	r3, [pc, #20]	; (263c <ETHERNET_Handler+0x58>)
    2626:	2201      	movs	r2, #1
    2628:	601a      	str	r2, [r3, #0]
    262a:	46c0      	nop			; (mov r8, r8)
    262c:	46bd      	mov	sp, r7
    262e:	b002      	add	sp, #8
    2630:	bd80      	pop	{r7, pc}
    2632:	46c0      	nop			; (mov r8, r8)
    2634:	20004d28 	.word	0x20004d28
    2638:	20000860 	.word	0x20000860
    263c:	20004d2c 	.word	0x20004d2c

00002640 <network_config>:
    2640:	b580      	push	{r7, lr}
    2642:	b082      	sub	sp, #8
    2644:	af00      	add	r7, sp, #0
    2646:	6078      	str	r0, [r7, #4]
    2648:	687b      	ldr	r3, [r7, #4]
    264a:	2b00      	cmp	r3, #0
    264c:	d007      	beq.n	265e <network_config+0x1e>
    264e:	687b      	ldr	r3, [r7, #4]
    2650:	881a      	ldrh	r2, [r3, #0]
    2652:	4b05      	ldr	r3, [pc, #20]	; (2668 <network_config+0x28>)
    2654:	801a      	strh	r2, [r3, #0]
    2656:	687b      	ldr	r3, [r7, #4]
    2658:	885a      	ldrh	r2, [r3, #2]
    265a:	4b03      	ldr	r3, [pc, #12]	; (2668 <network_config+0x28>)
    265c:	805a      	strh	r2, [r3, #2]
    265e:	46c0      	nop			; (mov r8, r8)
    2660:	46bd      	mov	sp, r7
    2662:	b002      	add	sp, #8
    2664:	bd80      	pop	{r7, pc}
    2666:	46c0      	nop			; (mov r8, r8)
    2668:	2000000c 	.word	0x2000000c

0000266c <Answear_ARP>:
    266c:	b580      	push	{r7, lr}
    266e:	b08c      	sub	sp, #48	; 0x30
    2670:	af00      	add	r7, sp, #0
    2672:	4b36      	ldr	r3, [pc, #216]	; (274c <Answear_ARP+0xe0>)
    2674:	88da      	ldrh	r2, [r3, #6]
    2676:	1d3b      	adds	r3, r7, #4
    2678:	801a      	strh	r2, [r3, #0]
    267a:	4b34      	ldr	r3, [pc, #208]	; (274c <Answear_ARP+0xe0>)
    267c:	891a      	ldrh	r2, [r3, #8]
    267e:	1d3b      	adds	r3, r7, #4
    2680:	805a      	strh	r2, [r3, #2]
    2682:	4b32      	ldr	r3, [pc, #200]	; (274c <Answear_ARP+0xe0>)
    2684:	895a      	ldrh	r2, [r3, #10]
    2686:	1d3b      	adds	r3, r7, #4
    2688:	809a      	strh	r2, [r3, #4]
    268a:	23c0      	movs	r3, #192	; 0xc0
    268c:	059b      	lsls	r3, r3, #22
    268e:	885b      	ldrh	r3, [r3, #2]
    2690:	b29a      	uxth	r2, r3
    2692:	1d3b      	adds	r3, r7, #4
    2694:	80da      	strh	r2, [r3, #6]
    2696:	23c0      	movs	r3, #192	; 0xc0
    2698:	059b      	lsls	r3, r3, #22
    269a:	889b      	ldrh	r3, [r3, #4]
    269c:	b29a      	uxth	r2, r3
    269e:	1d3b      	adds	r3, r7, #4
    26a0:	811a      	strh	r2, [r3, #8]
    26a2:	23c0      	movs	r3, #192	; 0xc0
    26a4:	059b      	lsls	r3, r3, #22
    26a6:	88db      	ldrh	r3, [r3, #6]
    26a8:	b29a      	uxth	r2, r3
    26aa:	1d3b      	adds	r3, r7, #4
    26ac:	815a      	strh	r2, [r3, #10]
    26ae:	4b27      	ldr	r3, [pc, #156]	; (274c <Answear_ARP+0xe0>)
    26b0:	899a      	ldrh	r2, [r3, #12]
    26b2:	1d3b      	adds	r3, r7, #4
    26b4:	819a      	strh	r2, [r3, #12]
    26b6:	4b25      	ldr	r3, [pc, #148]	; (274c <Answear_ARP+0xe0>)
    26b8:	89da      	ldrh	r2, [r3, #14]
    26ba:	1d3b      	adds	r3, r7, #4
    26bc:	81da      	strh	r2, [r3, #14]
    26be:	4b23      	ldr	r3, [pc, #140]	; (274c <Answear_ARP+0xe0>)
    26c0:	8a1a      	ldrh	r2, [r3, #16]
    26c2:	1d3b      	adds	r3, r7, #4
    26c4:	821a      	strh	r2, [r3, #16]
    26c6:	4b21      	ldr	r3, [pc, #132]	; (274c <Answear_ARP+0xe0>)
    26c8:	8a5a      	ldrh	r2, [r3, #18]
    26ca:	1d3b      	adds	r3, r7, #4
    26cc:	825a      	strh	r2, [r3, #18]
    26ce:	1d3b      	adds	r3, r7, #4
    26d0:	2280      	movs	r2, #128	; 0x80
    26d2:	0092      	lsls	r2, r2, #2
    26d4:	829a      	strh	r2, [r3, #20]
    26d6:	23c0      	movs	r3, #192	; 0xc0
    26d8:	059b      	lsls	r3, r3, #22
    26da:	885b      	ldrh	r3, [r3, #2]
    26dc:	b29a      	uxth	r2, r3
    26de:	1d3b      	adds	r3, r7, #4
    26e0:	82da      	strh	r2, [r3, #22]
    26e2:	23c0      	movs	r3, #192	; 0xc0
    26e4:	059b      	lsls	r3, r3, #22
    26e6:	889b      	ldrh	r3, [r3, #4]
    26e8:	b29a      	uxth	r2, r3
    26ea:	1d3b      	adds	r3, r7, #4
    26ec:	831a      	strh	r2, [r3, #24]
    26ee:	23c0      	movs	r3, #192	; 0xc0
    26f0:	059b      	lsls	r3, r3, #22
    26f2:	88db      	ldrh	r3, [r3, #6]
    26f4:	b29a      	uxth	r2, r3
    26f6:	1d3b      	adds	r3, r7, #4
    26f8:	835a      	strh	r2, [r3, #26]
    26fa:	4b15      	ldr	r3, [pc, #84]	; (2750 <Answear_ARP+0xe4>)
    26fc:	881a      	ldrh	r2, [r3, #0]
    26fe:	1d3b      	adds	r3, r7, #4
    2700:	839a      	strh	r2, [r3, #28]
    2702:	4b13      	ldr	r3, [pc, #76]	; (2750 <Answear_ARP+0xe4>)
    2704:	885a      	ldrh	r2, [r3, #2]
    2706:	1d3b      	adds	r3, r7, #4
    2708:	83da      	strh	r2, [r3, #30]
    270a:	4b10      	ldr	r3, [pc, #64]	; (274c <Answear_ARP+0xe0>)
    270c:	88da      	ldrh	r2, [r3, #6]
    270e:	1d3b      	adds	r3, r7, #4
    2710:	841a      	strh	r2, [r3, #32]
    2712:	4b0e      	ldr	r3, [pc, #56]	; (274c <Answear_ARP+0xe0>)
    2714:	891a      	ldrh	r2, [r3, #8]
    2716:	1d3b      	adds	r3, r7, #4
    2718:	845a      	strh	r2, [r3, #34]	; 0x22
    271a:	4b0c      	ldr	r3, [pc, #48]	; (274c <Answear_ARP+0xe0>)
    271c:	895a      	ldrh	r2, [r3, #10]
    271e:	1d3b      	adds	r3, r7, #4
    2720:	849a      	strh	r2, [r3, #36]	; 0x24
    2722:	4b0a      	ldr	r3, [pc, #40]	; (274c <Answear_ARP+0xe0>)
    2724:	8b9a      	ldrh	r2, [r3, #28]
    2726:	1d3b      	adds	r3, r7, #4
    2728:	84da      	strh	r2, [r3, #38]	; 0x26
    272a:	4b08      	ldr	r3, [pc, #32]	; (274c <Answear_ARP+0xe0>)
    272c:	8bda      	ldrh	r2, [r3, #30]
    272e:	1d3b      	adds	r3, r7, #4
    2730:	851a      	strh	r2, [r3, #40]	; 0x28
    2732:	1d3b      	adds	r3, r7, #4
    2734:	2200      	movs	r2, #0
    2736:	855a      	strh	r2, [r3, #42]	; 0x2a
    2738:	1d3b      	adds	r3, r7, #4
    273a:	212a      	movs	r1, #42	; 0x2a
    273c:	0018      	movs	r0, r3
    273e:	f7ff fe51 	bl	23e4 <SendPacket>
    2742:	46c0      	nop			; (mov r8, r8)
    2744:	46bd      	mov	sp, r7
    2746:	b00c      	add	sp, #48	; 0x30
    2748:	bd80      	pop	{r7, pc}
    274a:	46c0      	nop			; (mov r8, r8)
    274c:	20004d38 	.word	0x20004d38
    2750:	2000000c 	.word	0x2000000c

00002754 <CheckSum_UDP>:
    2754:	b580      	push	{r7, lr}
    2756:	b086      	sub	sp, #24
    2758:	af00      	add	r7, sp, #0
    275a:	0002      	movs	r2, r0
    275c:	6039      	str	r1, [r7, #0]
    275e:	1dbb      	adds	r3, r7, #6
    2760:	801a      	strh	r2, [r3, #0]
    2762:	2300      	movs	r3, #0
    2764:	613b      	str	r3, [r7, #16]
    2766:	230d      	movs	r3, #13
    2768:	617b      	str	r3, [r7, #20]
    276a:	e019      	b.n	27a0 <CheckSum_UDP+0x4c>
    276c:	697b      	ldr	r3, [r7, #20]
    276e:	005b      	lsls	r3, r3, #1
    2770:	683a      	ldr	r2, [r7, #0]
    2772:	18d3      	adds	r3, r2, r3
    2774:	881b      	ldrh	r3, [r3, #0]
    2776:	021b      	lsls	r3, r3, #8
    2778:	041b      	lsls	r3, r3, #16
    277a:	0c1a      	lsrs	r2, r3, #16
    277c:	697b      	ldr	r3, [r7, #20]
    277e:	005b      	lsls	r3, r3, #1
    2780:	6839      	ldr	r1, [r7, #0]
    2782:	18cb      	adds	r3, r1, r3
    2784:	881b      	ldrh	r3, [r3, #0]
    2786:	0a1b      	lsrs	r3, r3, #8
    2788:	b29b      	uxth	r3, r3
    278a:	0019      	movs	r1, r3
    278c:	23ff      	movs	r3, #255	; 0xff
    278e:	400b      	ands	r3, r1
    2790:	18d3      	adds	r3, r2, r3
    2792:	001a      	movs	r2, r3
    2794:	693b      	ldr	r3, [r7, #16]
    2796:	189b      	adds	r3, r3, r2
    2798:	613b      	str	r3, [r7, #16]
    279a:	697b      	ldr	r3, [r7, #20]
    279c:	3301      	adds	r3, #1
    279e:	617b      	str	r3, [r7, #20]
    27a0:	697b      	ldr	r3, [r7, #20]
    27a2:	2b10      	cmp	r3, #16
    27a4:	d9e2      	bls.n	276c <CheckSum_UDP+0x18>
    27a6:	683b      	ldr	r3, [r7, #0]
    27a8:	3316      	adds	r3, #22
    27aa:	881b      	ldrh	r3, [r3, #0]
    27ac:	0a1b      	lsrs	r3, r3, #8
    27ae:	b29b      	uxth	r3, r3
    27b0:	001a      	movs	r2, r3
    27b2:	23ff      	movs	r3, #255	; 0xff
    27b4:	4013      	ands	r3, r2
    27b6:	693a      	ldr	r2, [r7, #16]
    27b8:	18d3      	adds	r3, r2, r3
    27ba:	613b      	str	r3, [r7, #16]
    27bc:	1dbb      	adds	r3, r7, #6
    27be:	881b      	ldrh	r3, [r3, #0]
    27c0:	693a      	ldr	r2, [r7, #16]
    27c2:	18d3      	adds	r3, r2, r3
    27c4:	613b      	str	r3, [r7, #16]
    27c6:	683b      	ldr	r3, [r7, #0]
    27c8:	3322      	adds	r3, #34	; 0x22
    27ca:	881b      	ldrh	r3, [r3, #0]
    27cc:	021b      	lsls	r3, r3, #8
    27ce:	041b      	lsls	r3, r3, #16
    27d0:	0c1a      	lsrs	r2, r3, #16
    27d2:	683b      	ldr	r3, [r7, #0]
    27d4:	3322      	adds	r3, #34	; 0x22
    27d6:	881b      	ldrh	r3, [r3, #0]
    27d8:	0a1b      	lsrs	r3, r3, #8
    27da:	b29b      	uxth	r3, r3
    27dc:	0019      	movs	r1, r3
    27de:	23ff      	movs	r3, #255	; 0xff
    27e0:	400b      	ands	r3, r1
    27e2:	18d3      	adds	r3, r2, r3
    27e4:	001a      	movs	r2, r3
    27e6:	693b      	ldr	r3, [r7, #16]
    27e8:	189b      	adds	r3, r3, r2
    27ea:	613b      	str	r3, [r7, #16]
    27ec:	683b      	ldr	r3, [r7, #0]
    27ee:	3324      	adds	r3, #36	; 0x24
    27f0:	881b      	ldrh	r3, [r3, #0]
    27f2:	021b      	lsls	r3, r3, #8
    27f4:	041b      	lsls	r3, r3, #16
    27f6:	0c1a      	lsrs	r2, r3, #16
    27f8:	683b      	ldr	r3, [r7, #0]
    27fa:	3324      	adds	r3, #36	; 0x24
    27fc:	881b      	ldrh	r3, [r3, #0]
    27fe:	0a1b      	lsrs	r3, r3, #8
    2800:	b29b      	uxth	r3, r3
    2802:	0019      	movs	r1, r3
    2804:	23ff      	movs	r3, #255	; 0xff
    2806:	400b      	ands	r3, r1
    2808:	18d3      	adds	r3, r2, r3
    280a:	001a      	movs	r2, r3
    280c:	693b      	ldr	r3, [r7, #16]
    280e:	189b      	adds	r3, r3, r2
    2810:	613b      	str	r3, [r7, #16]
    2812:	1dbb      	adds	r3, r7, #6
    2814:	881b      	ldrh	r3, [r3, #0]
    2816:	693a      	ldr	r2, [r7, #16]
    2818:	18d3      	adds	r3, r2, r3
    281a:	613b      	str	r3, [r7, #16]
    281c:	683b      	ldr	r3, [r7, #0]
    281e:	3328      	adds	r3, #40	; 0x28
    2820:	881b      	ldrh	r3, [r3, #0]
    2822:	021b      	lsls	r3, r3, #8
    2824:	041b      	lsls	r3, r3, #16
    2826:	0c1a      	lsrs	r2, r3, #16
    2828:	683b      	ldr	r3, [r7, #0]
    282a:	3328      	adds	r3, #40	; 0x28
    282c:	881b      	ldrh	r3, [r3, #0]
    282e:	0a1b      	lsrs	r3, r3, #8
    2830:	b29b      	uxth	r3, r3
    2832:	0019      	movs	r1, r3
    2834:	23ff      	movs	r3, #255	; 0xff
    2836:	400b      	ands	r3, r1
    2838:	18d3      	adds	r3, r2, r3
    283a:	001a      	movs	r2, r3
    283c:	693b      	ldr	r3, [r7, #16]
    283e:	189b      	adds	r3, r3, r2
    2840:	613b      	str	r3, [r7, #16]
    2842:	683b      	ldr	r3, [r7, #0]
    2844:	332a      	adds	r3, #42	; 0x2a
    2846:	60fb      	str	r3, [r7, #12]
    2848:	2300      	movs	r3, #0
    284a:	617b      	str	r3, [r7, #20]
    284c:	e017      	b.n	287e <CheckSum_UDP+0x12a>
    284e:	697b      	ldr	r3, [r7, #20]
    2850:	2201      	movs	r2, #1
    2852:	4013      	ands	r3, r2
    2854:	d008      	beq.n	2868 <CheckSum_UDP+0x114>
    2856:	68fb      	ldr	r3, [r7, #12]
    2858:	1c5a      	adds	r2, r3, #1
    285a:	60fa      	str	r2, [r7, #12]
    285c:	781b      	ldrb	r3, [r3, #0]
    285e:	001a      	movs	r2, r3
    2860:	693b      	ldr	r3, [r7, #16]
    2862:	189b      	adds	r3, r3, r2
    2864:	613b      	str	r3, [r7, #16]
    2866:	e007      	b.n	2878 <CheckSum_UDP+0x124>
    2868:	68fb      	ldr	r3, [r7, #12]
    286a:	1c5a      	adds	r2, r3, #1
    286c:	60fa      	str	r2, [r7, #12]
    286e:	781b      	ldrb	r3, [r3, #0]
    2870:	021b      	lsls	r3, r3, #8
    2872:	693a      	ldr	r2, [r7, #16]
    2874:	18d3      	adds	r3, r2, r3
    2876:	613b      	str	r3, [r7, #16]
    2878:	697b      	ldr	r3, [r7, #20]
    287a:	3301      	adds	r3, #1
    287c:	617b      	str	r3, [r7, #20]
    287e:	1dbb      	adds	r3, r7, #6
    2880:	881b      	ldrh	r3, [r3, #0]
    2882:	3b08      	subs	r3, #8
    2884:	001a      	movs	r2, r3
    2886:	697b      	ldr	r3, [r7, #20]
    2888:	429a      	cmp	r2, r3
    288a:	d8e0      	bhi.n	284e <CheckSum_UDP+0xfa>
    288c:	e006      	b.n	289c <CheckSum_UDP+0x148>
    288e:	693b      	ldr	r3, [r7, #16]
    2890:	0c1a      	lsrs	r2, r3, #16
    2892:	693b      	ldr	r3, [r7, #16]
    2894:	041b      	lsls	r3, r3, #16
    2896:	0c1b      	lsrs	r3, r3, #16
    2898:	18d3      	adds	r3, r2, r3
    289a:	613b      	str	r3, [r7, #16]
    289c:	693b      	ldr	r3, [r7, #16]
    289e:	0c1b      	lsrs	r3, r3, #16
    28a0:	d1f5      	bne.n	288e <CheckSum_UDP+0x13a>
    28a2:	693b      	ldr	r3, [r7, #16]
    28a4:	b29b      	uxth	r3, r3
    28a6:	43db      	mvns	r3, r3
    28a8:	b29b      	uxth	r3, r3
    28aa:	0018      	movs	r0, r3
    28ac:	46bd      	mov	sp, r7
    28ae:	b006      	add	sp, #24
    28b0:	bd80      	pop	{r7, pc}
    28b2:	46c0      	nop			; (mov r8, r8)

000028b4 <CheckSum_IP>:
    28b4:	b580      	push	{r7, lr}
    28b6:	b084      	sub	sp, #16
    28b8:	af00      	add	r7, sp, #0
    28ba:	6078      	str	r0, [r7, #4]
    28bc:	2300      	movs	r3, #0
    28be:	60bb      	str	r3, [r7, #8]
    28c0:	2300      	movs	r3, #0
    28c2:	60fb      	str	r3, [r7, #12]
    28c4:	e011      	b.n	28ea <CheckSum_IP+0x36>
    28c6:	68fb      	ldr	r3, [r7, #12]
    28c8:	2b05      	cmp	r3, #5
    28ca:	d00a      	beq.n	28e2 <CheckSum_IP+0x2e>
    28cc:	68fb      	ldr	r3, [r7, #12]
    28ce:	3307      	adds	r3, #7
    28d0:	005b      	lsls	r3, r3, #1
    28d2:	687a      	ldr	r2, [r7, #4]
    28d4:	18d3      	adds	r3, r2, r3
    28d6:	881b      	ldrh	r3, [r3, #0]
    28d8:	001a      	movs	r2, r3
    28da:	68bb      	ldr	r3, [r7, #8]
    28dc:	189b      	adds	r3, r3, r2
    28de:	60bb      	str	r3, [r7, #8]
    28e0:	e000      	b.n	28e4 <CheckSum_IP+0x30>
    28e2:	46c0      	nop			; (mov r8, r8)
    28e4:	68fb      	ldr	r3, [r7, #12]
    28e6:	3301      	adds	r3, #1
    28e8:	60fb      	str	r3, [r7, #12]
    28ea:	68fb      	ldr	r3, [r7, #12]
    28ec:	2b09      	cmp	r3, #9
    28ee:	d9ea      	bls.n	28c6 <CheckSum_IP+0x12>
    28f0:	68bb      	ldr	r3, [r7, #8]
    28f2:	0c1a      	lsrs	r2, r3, #16
    28f4:	68bb      	ldr	r3, [r7, #8]
    28f6:	041b      	lsls	r3, r3, #16
    28f8:	0c1b      	lsrs	r3, r3, #16
    28fa:	18d3      	adds	r3, r2, r3
    28fc:	60bb      	str	r3, [r7, #8]
    28fe:	68bb      	ldr	r3, [r7, #8]
    2900:	b29b      	uxth	r3, r3
    2902:	43db      	mvns	r3, r3
    2904:	b29b      	uxth	r3, r3
    2906:	0018      	movs	r0, r3
    2908:	46bd      	mov	sp, r7
    290a:	b004      	add	sp, #16
    290c:	bd80      	pop	{r7, pc}
    290e:	46c0      	nop			; (mov r8, r8)

00002910 <CheckSum_ICMP>:
    2910:	b580      	push	{r7, lr}
    2912:	b084      	sub	sp, #16
    2914:	af00      	add	r7, sp, #0
    2916:	0002      	movs	r2, r0
    2918:	6039      	str	r1, [r7, #0]
    291a:	1dbb      	adds	r3, r7, #6
    291c:	801a      	strh	r2, [r3, #0]
    291e:	2300      	movs	r3, #0
    2920:	60bb      	str	r3, [r7, #8]
    2922:	2300      	movs	r3, #0
    2924:	60fb      	str	r3, [r7, #12]
    2926:	e011      	b.n	294c <CheckSum_ICMP+0x3c>
    2928:	68fb      	ldr	r3, [r7, #12]
    292a:	2b01      	cmp	r3, #1
    292c:	d00a      	beq.n	2944 <CheckSum_ICMP+0x34>
    292e:	68fb      	ldr	r3, [r7, #12]
    2930:	3311      	adds	r3, #17
    2932:	005b      	lsls	r3, r3, #1
    2934:	683a      	ldr	r2, [r7, #0]
    2936:	18d3      	adds	r3, r2, r3
    2938:	881b      	ldrh	r3, [r3, #0]
    293a:	001a      	movs	r2, r3
    293c:	68bb      	ldr	r3, [r7, #8]
    293e:	189b      	adds	r3, r3, r2
    2940:	60bb      	str	r3, [r7, #8]
    2942:	e000      	b.n	2946 <CheckSum_ICMP+0x36>
    2944:	46c0      	nop			; (mov r8, r8)
    2946:	68fb      	ldr	r3, [r7, #12]
    2948:	3301      	adds	r3, #1
    294a:	60fb      	str	r3, [r7, #12]
    294c:	1dbb      	adds	r3, r7, #6
    294e:	881a      	ldrh	r2, [r3, #0]
    2950:	68fb      	ldr	r3, [r7, #12]
    2952:	429a      	cmp	r2, r3
    2954:	d8e8      	bhi.n	2928 <CheckSum_ICMP+0x18>
    2956:	68bb      	ldr	r3, [r7, #8]
    2958:	0c1a      	lsrs	r2, r3, #16
    295a:	68bb      	ldr	r3, [r7, #8]
    295c:	041b      	lsls	r3, r3, #16
    295e:	0c1b      	lsrs	r3, r3, #16
    2960:	18d3      	adds	r3, r2, r3
    2962:	60bb      	str	r3, [r7, #8]
    2964:	68bb      	ldr	r3, [r7, #8]
    2966:	b29b      	uxth	r3, r3
    2968:	43db      	mvns	r3, r3
    296a:	b29b      	uxth	r3, r3
    296c:	0018      	movs	r0, r3
    296e:	46bd      	mov	sp, r7
    2970:	b004      	add	sp, #16
    2972:	bd80      	pop	{r7, pc}

00002974 <Request_ICMP>:
    2974:	b580      	push	{r7, lr}
    2976:	b096      	sub	sp, #88	; 0x58
    2978:	af00      	add	r7, sp, #0
    297a:	4b73      	ldr	r3, [pc, #460]	; (2b48 <Request_ICMP+0x1d4>)
    297c:	881a      	ldrh	r2, [r3, #0]
    297e:	1d3b      	adds	r3, r7, #4
    2980:	801a      	strh	r2, [r3, #0]
    2982:	4b71      	ldr	r3, [pc, #452]	; (2b48 <Request_ICMP+0x1d4>)
    2984:	885a      	ldrh	r2, [r3, #2]
    2986:	1d3b      	adds	r3, r7, #4
    2988:	805a      	strh	r2, [r3, #2]
    298a:	4b6f      	ldr	r3, [pc, #444]	; (2b48 <Request_ICMP+0x1d4>)
    298c:	889a      	ldrh	r2, [r3, #4]
    298e:	1d3b      	adds	r3, r7, #4
    2990:	809a      	strh	r2, [r3, #4]
    2992:	23c0      	movs	r3, #192	; 0xc0
    2994:	059b      	lsls	r3, r3, #22
    2996:	885b      	ldrh	r3, [r3, #2]
    2998:	b29a      	uxth	r2, r3
    299a:	1d3b      	adds	r3, r7, #4
    299c:	80da      	strh	r2, [r3, #6]
    299e:	23c0      	movs	r3, #192	; 0xc0
    29a0:	059b      	lsls	r3, r3, #22
    29a2:	889b      	ldrh	r3, [r3, #4]
    29a4:	b29a      	uxth	r2, r3
    29a6:	1d3b      	adds	r3, r7, #4
    29a8:	811a      	strh	r2, [r3, #8]
    29aa:	23c0      	movs	r3, #192	; 0xc0
    29ac:	059b      	lsls	r3, r3, #22
    29ae:	88db      	ldrh	r3, [r3, #6]
    29b0:	b29a      	uxth	r2, r3
    29b2:	1d3b      	adds	r3, r7, #4
    29b4:	815a      	strh	r2, [r3, #10]
    29b6:	1d3b      	adds	r3, r7, #4
    29b8:	2208      	movs	r2, #8
    29ba:	819a      	strh	r2, [r3, #12]
    29bc:	1d3b      	adds	r3, r7, #4
    29be:	2245      	movs	r2, #69	; 0x45
    29c0:	81da      	strh	r2, [r3, #14]
    29c2:	1d3b      	adds	r3, r7, #4
    29c4:	22f0      	movs	r2, #240	; 0xf0
    29c6:	0192      	lsls	r2, r2, #6
    29c8:	821a      	strh	r2, [r3, #16]
    29ca:	4b60      	ldr	r3, [pc, #384]	; (2b4c <Request_ICMP+0x1d8>)
    29cc:	881a      	ldrh	r2, [r3, #0]
    29ce:	1d3b      	adds	r3, r7, #4
    29d0:	825a      	strh	r2, [r3, #18]
    29d2:	1d3b      	adds	r3, r7, #4
    29d4:	2200      	movs	r2, #0
    29d6:	829a      	strh	r2, [r3, #20]
    29d8:	1d3b      	adds	r3, r7, #4
    29da:	22c0      	movs	r2, #192	; 0xc0
    29dc:	0052      	lsls	r2, r2, #1
    29de:	82da      	strh	r2, [r3, #22]
    29e0:	1d3b      	adds	r3, r7, #4
    29e2:	2200      	movs	r2, #0
    29e4:	831a      	strh	r2, [r3, #24]
    29e6:	4b5a      	ldr	r3, [pc, #360]	; (2b50 <Request_ICMP+0x1dc>)
    29e8:	881a      	ldrh	r2, [r3, #0]
    29ea:	1d3b      	adds	r3, r7, #4
    29ec:	835a      	strh	r2, [r3, #26]
    29ee:	4b58      	ldr	r3, [pc, #352]	; (2b50 <Request_ICMP+0x1dc>)
    29f0:	885a      	ldrh	r2, [r3, #2]
    29f2:	1d3b      	adds	r3, r7, #4
    29f4:	839a      	strh	r2, [r3, #28]
    29f6:	4b54      	ldr	r3, [pc, #336]	; (2b48 <Request_ICMP+0x1d4>)
    29f8:	88da      	ldrh	r2, [r3, #6]
    29fa:	1d3b      	adds	r3, r7, #4
    29fc:	83da      	strh	r2, [r3, #30]
    29fe:	4b52      	ldr	r3, [pc, #328]	; (2b48 <Request_ICMP+0x1d4>)
    2a00:	891a      	ldrh	r2, [r3, #8]
    2a02:	1d3b      	adds	r3, r7, #4
    2a04:	841a      	strh	r2, [r3, #32]
    2a06:	1d3b      	adds	r3, r7, #4
    2a08:	0018      	movs	r0, r3
    2a0a:	f7ff ff53 	bl	28b4 <CheckSum_IP>
    2a0e:	0003      	movs	r3, r0
    2a10:	001a      	movs	r2, r3
    2a12:	1d3b      	adds	r3, r7, #4
    2a14:	831a      	strh	r2, [r3, #24]
    2a16:	1d3b      	adds	r3, r7, #4
    2a18:	2208      	movs	r2, #8
    2a1a:	845a      	strh	r2, [r3, #34]	; 0x22
    2a1c:	1d3b      	adds	r3, r7, #4
    2a1e:	2200      	movs	r2, #0
    2a20:	849a      	strh	r2, [r3, #36]	; 0x24
    2a22:	1d3b      	adds	r3, r7, #4
    2a24:	2202      	movs	r2, #2
    2a26:	84da      	strh	r2, [r3, #38]	; 0x26
    2a28:	4b4a      	ldr	r3, [pc, #296]	; (2b54 <Request_ICMP+0x1e0>)
    2a2a:	881a      	ldrh	r2, [r3, #0]
    2a2c:	1d3b      	adds	r3, r7, #4
    2a2e:	851a      	strh	r2, [r3, #40]	; 0x28
    2a30:	2300      	movs	r3, #0
    2a32:	657b      	str	r3, [r7, #84]	; 0x54
    2a34:	2300      	movs	r3, #0
    2a36:	653b      	str	r3, [r7, #80]	; 0x50
    2a38:	e021      	b.n	2a7e <Request_ICMP+0x10a>
    2a3a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2a3c:	b2db      	uxtb	r3, r3
    2a3e:	3361      	adds	r3, #97	; 0x61
    2a40:	b2da      	uxtb	r2, r3
    2a42:	003b      	movs	r3, r7
    2a44:	701a      	strb	r2, [r3, #0]
    2a46:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2a48:	b2db      	uxtb	r3, r3
    2a4a:	3362      	adds	r3, #98	; 0x62
    2a4c:	b2da      	uxtb	r2, r3
    2a4e:	003b      	movs	r3, r7
    2a50:	705a      	strb	r2, [r3, #1]
    2a52:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2a54:	3315      	adds	r3, #21
    2a56:	001a      	movs	r2, r3
    2a58:	003b      	movs	r3, r7
    2a5a:	785b      	ldrb	r3, [r3, #1]
    2a5c:	021b      	lsls	r3, r3, #8
    2a5e:	b219      	sxth	r1, r3
    2a60:	003b      	movs	r3, r7
    2a62:	781b      	ldrb	r3, [r3, #0]
    2a64:	b21b      	sxth	r3, r3
    2a66:	430b      	orrs	r3, r1
    2a68:	b21b      	sxth	r3, r3
    2a6a:	b299      	uxth	r1, r3
    2a6c:	1d3b      	adds	r3, r7, #4
    2a6e:	0052      	lsls	r2, r2, #1
    2a70:	52d1      	strh	r1, [r2, r3]
    2a72:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2a74:	3302      	adds	r3, #2
    2a76:	657b      	str	r3, [r7, #84]	; 0x54
    2a78:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2a7a:	3301      	adds	r3, #1
    2a7c:	653b      	str	r3, [r7, #80]	; 0x50
    2a7e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2a80:	2b1f      	cmp	r3, #31
    2a82:	d9da      	bls.n	2a3a <Request_ICMP+0xc6>
    2a84:	1d3b      	adds	r3, r7, #4
    2a86:	0019      	movs	r1, r3
    2a88:	2014      	movs	r0, #20
    2a8a:	f7ff ff41 	bl	2910 <CheckSum_ICMP>
    2a8e:	0003      	movs	r3, r0
    2a90:	001a      	movs	r2, r3
    2a92:	1d3b      	adds	r3, r7, #4
    2a94:	849a      	strh	r2, [r3, #36]	; 0x24
    2a96:	1d3b      	adds	r3, r7, #4
    2a98:	214a      	movs	r1, #74	; 0x4a
    2a9a:	0018      	movs	r0, r3
    2a9c:	f7ff fca2 	bl	23e4 <SendPacket>
    2aa0:	4b2a      	ldr	r3, [pc, #168]	; (2b4c <Request_ICMP+0x1d8>)
    2aa2:	881b      	ldrh	r3, [r3, #0]
    2aa4:	0a1b      	lsrs	r3, r3, #8
    2aa6:	b29b      	uxth	r3, r3
    2aa8:	b2da      	uxtb	r2, r3
    2aaa:	003b      	movs	r3, r7
    2aac:	701a      	strb	r2, [r3, #0]
    2aae:	4b27      	ldr	r3, [pc, #156]	; (2b4c <Request_ICMP+0x1d8>)
    2ab0:	881b      	ldrh	r3, [r3, #0]
    2ab2:	b2da      	uxtb	r2, r3
    2ab4:	003b      	movs	r3, r7
    2ab6:	705a      	strb	r2, [r3, #1]
    2ab8:	003b      	movs	r3, r7
    2aba:	781b      	ldrb	r3, [r3, #0]
    2abc:	3301      	adds	r3, #1
    2abe:	b2da      	uxtb	r2, r3
    2ac0:	003b      	movs	r3, r7
    2ac2:	701a      	strb	r2, [r3, #0]
    2ac4:	003b      	movs	r3, r7
    2ac6:	781b      	ldrb	r3, [r3, #0]
    2ac8:	2b00      	cmp	r3, #0
    2aca:	d105      	bne.n	2ad8 <Request_ICMP+0x164>
    2acc:	003b      	movs	r3, r7
    2ace:	785b      	ldrb	r3, [r3, #1]
    2ad0:	3301      	adds	r3, #1
    2ad2:	b2da      	uxtb	r2, r3
    2ad4:	003b      	movs	r3, r7
    2ad6:	705a      	strb	r2, [r3, #1]
    2ad8:	003b      	movs	r3, r7
    2ada:	781b      	ldrb	r3, [r3, #0]
    2adc:	021b      	lsls	r3, r3, #8
    2ade:	b21a      	sxth	r2, r3
    2ae0:	003b      	movs	r3, r7
    2ae2:	785b      	ldrb	r3, [r3, #1]
    2ae4:	b21b      	sxth	r3, r3
    2ae6:	4313      	orrs	r3, r2
    2ae8:	b21b      	sxth	r3, r3
    2aea:	b29a      	uxth	r2, r3
    2aec:	4b17      	ldr	r3, [pc, #92]	; (2b4c <Request_ICMP+0x1d8>)
    2aee:	801a      	strh	r2, [r3, #0]
    2af0:	4b18      	ldr	r3, [pc, #96]	; (2b54 <Request_ICMP+0x1e0>)
    2af2:	881b      	ldrh	r3, [r3, #0]
    2af4:	0a1b      	lsrs	r3, r3, #8
    2af6:	b29b      	uxth	r3, r3
    2af8:	b2da      	uxtb	r2, r3
    2afa:	003b      	movs	r3, r7
    2afc:	701a      	strb	r2, [r3, #0]
    2afe:	4b15      	ldr	r3, [pc, #84]	; (2b54 <Request_ICMP+0x1e0>)
    2b00:	881b      	ldrh	r3, [r3, #0]
    2b02:	b2da      	uxtb	r2, r3
    2b04:	003b      	movs	r3, r7
    2b06:	705a      	strb	r2, [r3, #1]
    2b08:	003b      	movs	r3, r7
    2b0a:	781b      	ldrb	r3, [r3, #0]
    2b0c:	3301      	adds	r3, #1
    2b0e:	b2da      	uxtb	r2, r3
    2b10:	003b      	movs	r3, r7
    2b12:	701a      	strb	r2, [r3, #0]
    2b14:	003b      	movs	r3, r7
    2b16:	781b      	ldrb	r3, [r3, #0]
    2b18:	2b00      	cmp	r3, #0
    2b1a:	d105      	bne.n	2b28 <Request_ICMP+0x1b4>
    2b1c:	003b      	movs	r3, r7
    2b1e:	785b      	ldrb	r3, [r3, #1]
    2b20:	3301      	adds	r3, #1
    2b22:	b2da      	uxtb	r2, r3
    2b24:	003b      	movs	r3, r7
    2b26:	705a      	strb	r2, [r3, #1]
    2b28:	003b      	movs	r3, r7
    2b2a:	781b      	ldrb	r3, [r3, #0]
    2b2c:	021b      	lsls	r3, r3, #8
    2b2e:	b21a      	sxth	r2, r3
    2b30:	003b      	movs	r3, r7
    2b32:	785b      	ldrb	r3, [r3, #1]
    2b34:	b21b      	sxth	r3, r3
    2b36:	4313      	orrs	r3, r2
    2b38:	b21b      	sxth	r3, r3
    2b3a:	b29a      	uxth	r2, r3
    2b3c:	4b05      	ldr	r3, [pc, #20]	; (2b54 <Request_ICMP+0x1e0>)
    2b3e:	801a      	strh	r2, [r3, #0]
    2b40:	46c0      	nop			; (mov r8, r8)
    2b42:	46bd      	mov	sp, r7
    2b44:	b016      	add	sp, #88	; 0x58
    2b46:	bd80      	pop	{r7, pc}
    2b48:	20004d1c 	.word	0x20004d1c
    2b4c:	20004d30 	.word	0x20004d30
    2b50:	2000000c 	.word	0x2000000c
    2b54:	20004d32 	.word	0x20004d32

00002b58 <Answear_ICMP>:
    2b58:	b580      	push	{r7, lr}
    2b5a:	b082      	sub	sp, #8
    2b5c:	af00      	add	r7, sp, #0
    2b5e:	4b53      	ldr	r3, [pc, #332]	; (2cac <Answear_ICMP+0x154>)
    2b60:	4a53      	ldr	r2, [pc, #332]	; (2cb0 <Answear_ICMP+0x158>)
    2b62:	5a9a      	ldrh	r2, [r3, r2]
    2b64:	1cbb      	adds	r3, r7, #2
    2b66:	3a26      	subs	r2, #38	; 0x26
    2b68:	801a      	strh	r2, [r3, #0]
    2b6a:	1cbb      	adds	r3, r7, #2
    2b6c:	881b      	ldrh	r3, [r3, #0]
    2b6e:	2201      	movs	r2, #1
    2b70:	4013      	ands	r3, r2
    2b72:	d017      	beq.n	2ba4 <Answear_ICMP+0x4c>
    2b74:	1cbb      	adds	r3, r7, #2
    2b76:	881b      	ldrh	r3, [r3, #0]
    2b78:	3301      	adds	r3, #1
    2b7a:	105a      	asrs	r2, r3, #1
    2b7c:	1cbb      	adds	r3, r7, #2
    2b7e:	801a      	strh	r2, [r3, #0]
    2b80:	1cbb      	adds	r3, r7, #2
    2b82:	881b      	ldrh	r3, [r3, #0]
    2b84:	3310      	adds	r3, #16
    2b86:	001a      	movs	r2, r3
    2b88:	1cbb      	adds	r3, r7, #2
    2b8a:	881b      	ldrh	r3, [r3, #0]
    2b8c:	3310      	adds	r3, #16
    2b8e:	0019      	movs	r1, r3
    2b90:	4b46      	ldr	r3, [pc, #280]	; (2cac <Answear_ICMP+0x154>)
    2b92:	0049      	lsls	r1, r1, #1
    2b94:	5acb      	ldrh	r3, [r1, r3]
    2b96:	21ff      	movs	r1, #255	; 0xff
    2b98:	400b      	ands	r3, r1
    2b9a:	b299      	uxth	r1, r3
    2b9c:	4b43      	ldr	r3, [pc, #268]	; (2cac <Answear_ICMP+0x154>)
    2b9e:	0052      	lsls	r2, r2, #1
    2ba0:	52d1      	strh	r1, [r2, r3]
    2ba2:	e004      	b.n	2bae <Answear_ICMP+0x56>
    2ba4:	1cbb      	adds	r3, r7, #2
    2ba6:	1cba      	adds	r2, r7, #2
    2ba8:	8812      	ldrh	r2, [r2, #0]
    2baa:	0852      	lsrs	r2, r2, #1
    2bac:	801a      	strh	r2, [r3, #0]
    2bae:	4b3f      	ldr	r3, [pc, #252]	; (2cac <Answear_ICMP+0x154>)
    2bb0:	88da      	ldrh	r2, [r3, #6]
    2bb2:	4b40      	ldr	r3, [pc, #256]	; (2cb4 <Answear_ICMP+0x15c>)
    2bb4:	801a      	strh	r2, [r3, #0]
    2bb6:	4b3d      	ldr	r3, [pc, #244]	; (2cac <Answear_ICMP+0x154>)
    2bb8:	891a      	ldrh	r2, [r3, #8]
    2bba:	4b3e      	ldr	r3, [pc, #248]	; (2cb4 <Answear_ICMP+0x15c>)
    2bbc:	805a      	strh	r2, [r3, #2]
    2bbe:	4b3b      	ldr	r3, [pc, #236]	; (2cac <Answear_ICMP+0x154>)
    2bc0:	895a      	ldrh	r2, [r3, #10]
    2bc2:	4b3c      	ldr	r3, [pc, #240]	; (2cb4 <Answear_ICMP+0x15c>)
    2bc4:	809a      	strh	r2, [r3, #4]
    2bc6:	23c0      	movs	r3, #192	; 0xc0
    2bc8:	059b      	lsls	r3, r3, #22
    2bca:	885b      	ldrh	r3, [r3, #2]
    2bcc:	b29a      	uxth	r2, r3
    2bce:	4b39      	ldr	r3, [pc, #228]	; (2cb4 <Answear_ICMP+0x15c>)
    2bd0:	80da      	strh	r2, [r3, #6]
    2bd2:	23c0      	movs	r3, #192	; 0xc0
    2bd4:	059b      	lsls	r3, r3, #22
    2bd6:	889b      	ldrh	r3, [r3, #4]
    2bd8:	b29a      	uxth	r2, r3
    2bda:	4b36      	ldr	r3, [pc, #216]	; (2cb4 <Answear_ICMP+0x15c>)
    2bdc:	811a      	strh	r2, [r3, #8]
    2bde:	23c0      	movs	r3, #192	; 0xc0
    2be0:	059b      	lsls	r3, r3, #22
    2be2:	88db      	ldrh	r3, [r3, #6]
    2be4:	b29a      	uxth	r2, r3
    2be6:	4b33      	ldr	r3, [pc, #204]	; (2cb4 <Answear_ICMP+0x15c>)
    2be8:	815a      	strh	r2, [r3, #10]
    2bea:	4b30      	ldr	r3, [pc, #192]	; (2cac <Answear_ICMP+0x154>)
    2bec:	899a      	ldrh	r2, [r3, #12]
    2bee:	4b31      	ldr	r3, [pc, #196]	; (2cb4 <Answear_ICMP+0x15c>)
    2bf0:	819a      	strh	r2, [r3, #12]
    2bf2:	2307      	movs	r3, #7
    2bf4:	607b      	str	r3, [r7, #4]
    2bf6:	e00a      	b.n	2c0e <Answear_ICMP+0xb6>
    2bf8:	4b2c      	ldr	r3, [pc, #176]	; (2cac <Answear_ICMP+0x154>)
    2bfa:	687a      	ldr	r2, [r7, #4]
    2bfc:	0052      	lsls	r2, r2, #1
    2bfe:	5ad1      	ldrh	r1, [r2, r3]
    2c00:	4b2c      	ldr	r3, [pc, #176]	; (2cb4 <Answear_ICMP+0x15c>)
    2c02:	687a      	ldr	r2, [r7, #4]
    2c04:	0052      	lsls	r2, r2, #1
    2c06:	52d1      	strh	r1, [r2, r3]
    2c08:	687b      	ldr	r3, [r7, #4]
    2c0a:	3301      	adds	r3, #1
    2c0c:	607b      	str	r3, [r7, #4]
    2c0e:	687b      	ldr	r3, [r7, #4]
    2c10:	2b0b      	cmp	r3, #11
    2c12:	d9f1      	bls.n	2bf8 <Answear_ICMP+0xa0>
    2c14:	4b25      	ldr	r3, [pc, #148]	; (2cac <Answear_ICMP+0x154>)
    2c16:	0018      	movs	r0, r3
    2c18:	f7ff fe4c 	bl	28b4 <CheckSum_IP>
    2c1c:	0003      	movs	r3, r0
    2c1e:	001a      	movs	r2, r3
    2c20:	4b24      	ldr	r3, [pc, #144]	; (2cb4 <Answear_ICMP+0x15c>)
    2c22:	831a      	strh	r2, [r3, #24]
    2c24:	4b21      	ldr	r3, [pc, #132]	; (2cac <Answear_ICMP+0x154>)
    2c26:	8bda      	ldrh	r2, [r3, #30]
    2c28:	4b22      	ldr	r3, [pc, #136]	; (2cb4 <Answear_ICMP+0x15c>)
    2c2a:	835a      	strh	r2, [r3, #26]
    2c2c:	4b1f      	ldr	r3, [pc, #124]	; (2cac <Answear_ICMP+0x154>)
    2c2e:	8c1a      	ldrh	r2, [r3, #32]
    2c30:	4b20      	ldr	r3, [pc, #128]	; (2cb4 <Answear_ICMP+0x15c>)
    2c32:	839a      	strh	r2, [r3, #28]
    2c34:	4b1d      	ldr	r3, [pc, #116]	; (2cac <Answear_ICMP+0x154>)
    2c36:	8b5a      	ldrh	r2, [r3, #26]
    2c38:	4b1e      	ldr	r3, [pc, #120]	; (2cb4 <Answear_ICMP+0x15c>)
    2c3a:	83da      	strh	r2, [r3, #30]
    2c3c:	4b1b      	ldr	r3, [pc, #108]	; (2cac <Answear_ICMP+0x154>)
    2c3e:	8b9a      	ldrh	r2, [r3, #28]
    2c40:	4b1c      	ldr	r3, [pc, #112]	; (2cb4 <Answear_ICMP+0x15c>)
    2c42:	841a      	strh	r2, [r3, #32]
    2c44:	4b1b      	ldr	r3, [pc, #108]	; (2cb4 <Answear_ICMP+0x15c>)
    2c46:	2200      	movs	r2, #0
    2c48:	845a      	strh	r2, [r3, #34]	; 0x22
    2c4a:	4b18      	ldr	r3, [pc, #96]	; (2cac <Answear_ICMP+0x154>)
    2c4c:	2200      	movs	r2, #0
    2c4e:	845a      	strh	r2, [r3, #34]	; 0x22
    2c50:	4a16      	ldr	r2, [pc, #88]	; (2cac <Answear_ICMP+0x154>)
    2c52:	1cbb      	adds	r3, r7, #2
    2c54:	881b      	ldrh	r3, [r3, #0]
    2c56:	0011      	movs	r1, r2
    2c58:	0018      	movs	r0, r3
    2c5a:	f7ff fe59 	bl	2910 <CheckSum_ICMP>
    2c5e:	0003      	movs	r3, r0
    2c60:	001a      	movs	r2, r3
    2c62:	4b14      	ldr	r3, [pc, #80]	; (2cb4 <Answear_ICMP+0x15c>)
    2c64:	849a      	strh	r2, [r3, #36]	; 0x24
    2c66:	2313      	movs	r3, #19
    2c68:	607b      	str	r3, [r7, #4]
    2c6a:	e00a      	b.n	2c82 <Answear_ICMP+0x12a>
    2c6c:	4b0f      	ldr	r3, [pc, #60]	; (2cac <Answear_ICMP+0x154>)
    2c6e:	687a      	ldr	r2, [r7, #4]
    2c70:	0052      	lsls	r2, r2, #1
    2c72:	5ad1      	ldrh	r1, [r2, r3]
    2c74:	4b0f      	ldr	r3, [pc, #60]	; (2cb4 <Answear_ICMP+0x15c>)
    2c76:	687a      	ldr	r2, [r7, #4]
    2c78:	0052      	lsls	r2, r2, #1
    2c7a:	52d1      	strh	r1, [r2, r3]
    2c7c:	687b      	ldr	r3, [r7, #4]
    2c7e:	3301      	adds	r3, #1
    2c80:	607b      	str	r3, [r7, #4]
    2c82:	1cbb      	adds	r3, r7, #2
    2c84:	881b      	ldrh	r3, [r3, #0]
    2c86:	3311      	adds	r3, #17
    2c88:	001a      	movs	r2, r3
    2c8a:	687b      	ldr	r3, [r7, #4]
    2c8c:	429a      	cmp	r2, r3
    2c8e:	d8ed      	bhi.n	2c6c <Answear_ICMP+0x114>
    2c90:	1cbb      	adds	r3, r7, #2
    2c92:	881b      	ldrh	r3, [r3, #0]
    2c94:	3311      	adds	r3, #17
    2c96:	005a      	lsls	r2, r3, #1
    2c98:	4b06      	ldr	r3, [pc, #24]	; (2cb4 <Answear_ICMP+0x15c>)
    2c9a:	0011      	movs	r1, r2
    2c9c:	0018      	movs	r0, r3
    2c9e:	f7ff fba1 	bl	23e4 <SendPacket>
    2ca2:	46c0      	nop			; (mov r8, r8)
    2ca4:	46bd      	mov	sp, r7
    2ca6:	b002      	add	sp, #8
    2ca8:	bd80      	pop	{r7, pc}
    2caa:	46c0      	nop			; (mov r8, r8)
    2cac:	20004d38 	.word	0x20004d38
    2cb0:	000005dc 	.word	0x000005dc
    2cb4:	20005344 	.word	0x20005344

00002cb8 <DestinationUnreachable_ICMP>:
    2cb8:	b580      	push	{r7, lr}
    2cba:	b096      	sub	sp, #88	; 0x58
    2cbc:	af00      	add	r7, sp, #0
    2cbe:	4b61      	ldr	r3, [pc, #388]	; (2e44 <DestinationUnreachable_ICMP+0x18c>)
    2cc0:	881a      	ldrh	r2, [r3, #0]
    2cc2:	2308      	movs	r3, #8
    2cc4:	18fb      	adds	r3, r7, r3
    2cc6:	801a      	strh	r2, [r3, #0]
    2cc8:	4b5e      	ldr	r3, [pc, #376]	; (2e44 <DestinationUnreachable_ICMP+0x18c>)
    2cca:	885a      	ldrh	r2, [r3, #2]
    2ccc:	2308      	movs	r3, #8
    2cce:	18fb      	adds	r3, r7, r3
    2cd0:	805a      	strh	r2, [r3, #2]
    2cd2:	4b5c      	ldr	r3, [pc, #368]	; (2e44 <DestinationUnreachable_ICMP+0x18c>)
    2cd4:	889a      	ldrh	r2, [r3, #4]
    2cd6:	2308      	movs	r3, #8
    2cd8:	18fb      	adds	r3, r7, r3
    2cda:	809a      	strh	r2, [r3, #4]
    2cdc:	23c0      	movs	r3, #192	; 0xc0
    2cde:	059b      	lsls	r3, r3, #22
    2ce0:	885b      	ldrh	r3, [r3, #2]
    2ce2:	b29a      	uxth	r2, r3
    2ce4:	2308      	movs	r3, #8
    2ce6:	18fb      	adds	r3, r7, r3
    2ce8:	80da      	strh	r2, [r3, #6]
    2cea:	23c0      	movs	r3, #192	; 0xc0
    2cec:	059b      	lsls	r3, r3, #22
    2cee:	889b      	ldrh	r3, [r3, #4]
    2cf0:	b29a      	uxth	r2, r3
    2cf2:	2308      	movs	r3, #8
    2cf4:	18fb      	adds	r3, r7, r3
    2cf6:	811a      	strh	r2, [r3, #8]
    2cf8:	23c0      	movs	r3, #192	; 0xc0
    2cfa:	059b      	lsls	r3, r3, #22
    2cfc:	88db      	ldrh	r3, [r3, #6]
    2cfe:	b29a      	uxth	r2, r3
    2d00:	2308      	movs	r3, #8
    2d02:	18fb      	adds	r3, r7, r3
    2d04:	815a      	strh	r2, [r3, #10]
    2d06:	2308      	movs	r3, #8
    2d08:	18fb      	adds	r3, r7, r3
    2d0a:	2208      	movs	r2, #8
    2d0c:	819a      	strh	r2, [r3, #12]
    2d0e:	2308      	movs	r3, #8
    2d10:	18fb      	adds	r3, r7, r3
    2d12:	2245      	movs	r2, #69	; 0x45
    2d14:	81da      	strh	r2, [r3, #14]
    2d16:	2308      	movs	r3, #8
    2d18:	18fb      	adds	r3, r7, r3
    2d1a:	22e0      	movs	r2, #224	; 0xe0
    2d1c:	0192      	lsls	r2, r2, #6
    2d1e:	821a      	strh	r2, [r3, #16]
    2d20:	4b49      	ldr	r3, [pc, #292]	; (2e48 <DestinationUnreachable_ICMP+0x190>)
    2d22:	881a      	ldrh	r2, [r3, #0]
    2d24:	2308      	movs	r3, #8
    2d26:	18fb      	adds	r3, r7, r3
    2d28:	825a      	strh	r2, [r3, #18]
    2d2a:	2308      	movs	r3, #8
    2d2c:	18fb      	adds	r3, r7, r3
    2d2e:	2200      	movs	r2, #0
    2d30:	829a      	strh	r2, [r3, #20]
    2d32:	2308      	movs	r3, #8
    2d34:	18fb      	adds	r3, r7, r3
    2d36:	22c0      	movs	r2, #192	; 0xc0
    2d38:	0052      	lsls	r2, r2, #1
    2d3a:	82da      	strh	r2, [r3, #22]
    2d3c:	2308      	movs	r3, #8
    2d3e:	18fb      	adds	r3, r7, r3
    2d40:	2200      	movs	r2, #0
    2d42:	831a      	strh	r2, [r3, #24]
    2d44:	4b41      	ldr	r3, [pc, #260]	; (2e4c <DestinationUnreachable_ICMP+0x194>)
    2d46:	881a      	ldrh	r2, [r3, #0]
    2d48:	2308      	movs	r3, #8
    2d4a:	18fb      	adds	r3, r7, r3
    2d4c:	835a      	strh	r2, [r3, #26]
    2d4e:	4b3f      	ldr	r3, [pc, #252]	; (2e4c <DestinationUnreachable_ICMP+0x194>)
    2d50:	885a      	ldrh	r2, [r3, #2]
    2d52:	2308      	movs	r3, #8
    2d54:	18fb      	adds	r3, r7, r3
    2d56:	839a      	strh	r2, [r3, #28]
    2d58:	4b3a      	ldr	r3, [pc, #232]	; (2e44 <DestinationUnreachable_ICMP+0x18c>)
    2d5a:	88da      	ldrh	r2, [r3, #6]
    2d5c:	2308      	movs	r3, #8
    2d5e:	18fb      	adds	r3, r7, r3
    2d60:	83da      	strh	r2, [r3, #30]
    2d62:	4b38      	ldr	r3, [pc, #224]	; (2e44 <DestinationUnreachable_ICMP+0x18c>)
    2d64:	891a      	ldrh	r2, [r3, #8]
    2d66:	2308      	movs	r3, #8
    2d68:	18fb      	adds	r3, r7, r3
    2d6a:	841a      	strh	r2, [r3, #32]
    2d6c:	2308      	movs	r3, #8
    2d6e:	18fb      	adds	r3, r7, r3
    2d70:	0018      	movs	r0, r3
    2d72:	f7ff fd9f 	bl	28b4 <CheckSum_IP>
    2d76:	0003      	movs	r3, r0
    2d78:	001a      	movs	r2, r3
    2d7a:	2308      	movs	r3, #8
    2d7c:	18fb      	adds	r3, r7, r3
    2d7e:	831a      	strh	r2, [r3, #24]
    2d80:	2308      	movs	r3, #8
    2d82:	18fb      	adds	r3, r7, r3
    2d84:	4a32      	ldr	r2, [pc, #200]	; (2e50 <DestinationUnreachable_ICMP+0x198>)
    2d86:	845a      	strh	r2, [r3, #34]	; 0x22
    2d88:	2308      	movs	r3, #8
    2d8a:	18fb      	adds	r3, r7, r3
    2d8c:	2200      	movs	r2, #0
    2d8e:	849a      	strh	r2, [r3, #36]	; 0x24
    2d90:	2308      	movs	r3, #8
    2d92:	18fb      	adds	r3, r7, r3
    2d94:	2200      	movs	r2, #0
    2d96:	84da      	strh	r2, [r3, #38]	; 0x26
    2d98:	2308      	movs	r3, #8
    2d9a:	18fb      	adds	r3, r7, r3
    2d9c:	2200      	movs	r2, #0
    2d9e:	851a      	strh	r2, [r3, #40]	; 0x28
    2da0:	2300      	movs	r3, #0
    2da2:	657b      	str	r3, [r7, #84]	; 0x54
    2da4:	e00e      	b.n	2dc4 <DestinationUnreachable_ICMP+0x10c>
    2da6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2da8:	3315      	adds	r3, #21
    2daa:	001a      	movs	r2, r3
    2dac:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2dae:	1dd9      	adds	r1, r3, #7
    2db0:	4b28      	ldr	r3, [pc, #160]	; (2e54 <DestinationUnreachable_ICMP+0x19c>)
    2db2:	0049      	lsls	r1, r1, #1
    2db4:	5ac9      	ldrh	r1, [r1, r3]
    2db6:	2308      	movs	r3, #8
    2db8:	18fb      	adds	r3, r7, r3
    2dba:	0052      	lsls	r2, r2, #1
    2dbc:	52d1      	strh	r1, [r2, r3]
    2dbe:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2dc0:	3301      	adds	r3, #1
    2dc2:	657b      	str	r3, [r7, #84]	; 0x54
    2dc4:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2dc6:	2b0d      	cmp	r3, #13
    2dc8:	d9ed      	bls.n	2da6 <DestinationUnreachable_ICMP+0xee>
    2dca:	2308      	movs	r3, #8
    2dcc:	18fb      	adds	r3, r7, r3
    2dce:	0019      	movs	r1, r3
    2dd0:	2012      	movs	r0, #18
    2dd2:	f7ff fd9d 	bl	2910 <CheckSum_ICMP>
    2dd6:	0003      	movs	r3, r0
    2dd8:	001a      	movs	r2, r3
    2dda:	2308      	movs	r3, #8
    2ddc:	18fb      	adds	r3, r7, r3
    2dde:	849a      	strh	r2, [r3, #36]	; 0x24
    2de0:	2308      	movs	r3, #8
    2de2:	18fb      	adds	r3, r7, r3
    2de4:	2146      	movs	r1, #70	; 0x46
    2de6:	0018      	movs	r0, r3
    2de8:	f7ff fafc 	bl	23e4 <SendPacket>
    2dec:	4b16      	ldr	r3, [pc, #88]	; (2e48 <DestinationUnreachable_ICMP+0x190>)
    2dee:	881b      	ldrh	r3, [r3, #0]
    2df0:	0a1b      	lsrs	r3, r3, #8
    2df2:	b29b      	uxth	r3, r3
    2df4:	b2da      	uxtb	r2, r3
    2df6:	1d3b      	adds	r3, r7, #4
    2df8:	701a      	strb	r2, [r3, #0]
    2dfa:	4b13      	ldr	r3, [pc, #76]	; (2e48 <DestinationUnreachable_ICMP+0x190>)
    2dfc:	881b      	ldrh	r3, [r3, #0]
    2dfe:	b2da      	uxtb	r2, r3
    2e00:	1d3b      	adds	r3, r7, #4
    2e02:	705a      	strb	r2, [r3, #1]
    2e04:	1d3b      	adds	r3, r7, #4
    2e06:	781b      	ldrb	r3, [r3, #0]
    2e08:	3301      	adds	r3, #1
    2e0a:	b2da      	uxtb	r2, r3
    2e0c:	1d3b      	adds	r3, r7, #4
    2e0e:	701a      	strb	r2, [r3, #0]
    2e10:	1d3b      	adds	r3, r7, #4
    2e12:	781b      	ldrb	r3, [r3, #0]
    2e14:	2b00      	cmp	r3, #0
    2e16:	d105      	bne.n	2e24 <DestinationUnreachable_ICMP+0x16c>
    2e18:	1d3b      	adds	r3, r7, #4
    2e1a:	785b      	ldrb	r3, [r3, #1]
    2e1c:	3301      	adds	r3, #1
    2e1e:	b2da      	uxtb	r2, r3
    2e20:	1d3b      	adds	r3, r7, #4
    2e22:	705a      	strb	r2, [r3, #1]
    2e24:	1d3b      	adds	r3, r7, #4
    2e26:	781b      	ldrb	r3, [r3, #0]
    2e28:	021b      	lsls	r3, r3, #8
    2e2a:	b21a      	sxth	r2, r3
    2e2c:	1d3b      	adds	r3, r7, #4
    2e2e:	785b      	ldrb	r3, [r3, #1]
    2e30:	b21b      	sxth	r3, r3
    2e32:	4313      	orrs	r3, r2
    2e34:	b21b      	sxth	r3, r3
    2e36:	b29a      	uxth	r2, r3
    2e38:	4b03      	ldr	r3, [pc, #12]	; (2e48 <DestinationUnreachable_ICMP+0x190>)
    2e3a:	801a      	strh	r2, [r3, #0]
    2e3c:	46c0      	nop			; (mov r8, r8)
    2e3e:	46bd      	mov	sp, r7
    2e40:	b016      	add	sp, #88	; 0x58
    2e42:	bd80      	pop	{r7, pc}
    2e44:	20004d1c 	.word	0x20004d1c
    2e48:	20004d30 	.word	0x20004d30
    2e4c:	2000000c 	.word	0x2000000c
    2e50:	00000303 	.word	0x00000303
    2e54:	20004d38 	.word	0x20004d38

00002e58 <Send_UDP>:
    2e58:	b590      	push	{r4, r7, lr}
    2e5a:	b089      	sub	sp, #36	; 0x24
    2e5c:	af00      	add	r7, sp, #0
    2e5e:	6078      	str	r0, [r7, #4]
    2e60:	6039      	str	r1, [r7, #0]
    2e62:	4b86      	ldr	r3, [pc, #536]	; (307c <Send_UDP+0x224>)
    2e64:	881a      	ldrh	r2, [r3, #0]
    2e66:	4b86      	ldr	r3, [pc, #536]	; (3080 <Send_UDP+0x228>)
    2e68:	801a      	strh	r2, [r3, #0]
    2e6a:	4b84      	ldr	r3, [pc, #528]	; (307c <Send_UDP+0x224>)
    2e6c:	885a      	ldrh	r2, [r3, #2]
    2e6e:	4b84      	ldr	r3, [pc, #528]	; (3080 <Send_UDP+0x228>)
    2e70:	805a      	strh	r2, [r3, #2]
    2e72:	4b82      	ldr	r3, [pc, #520]	; (307c <Send_UDP+0x224>)
    2e74:	889a      	ldrh	r2, [r3, #4]
    2e76:	4b82      	ldr	r3, [pc, #520]	; (3080 <Send_UDP+0x228>)
    2e78:	809a      	strh	r2, [r3, #4]
    2e7a:	23c0      	movs	r3, #192	; 0xc0
    2e7c:	059b      	lsls	r3, r3, #22
    2e7e:	885b      	ldrh	r3, [r3, #2]
    2e80:	b29a      	uxth	r2, r3
    2e82:	4b7f      	ldr	r3, [pc, #508]	; (3080 <Send_UDP+0x228>)
    2e84:	80da      	strh	r2, [r3, #6]
    2e86:	23c0      	movs	r3, #192	; 0xc0
    2e88:	059b      	lsls	r3, r3, #22
    2e8a:	889b      	ldrh	r3, [r3, #4]
    2e8c:	b29a      	uxth	r2, r3
    2e8e:	4b7c      	ldr	r3, [pc, #496]	; (3080 <Send_UDP+0x228>)
    2e90:	811a      	strh	r2, [r3, #8]
    2e92:	23c0      	movs	r3, #192	; 0xc0
    2e94:	059b      	lsls	r3, r3, #22
    2e96:	88db      	ldrh	r3, [r3, #6]
    2e98:	b29a      	uxth	r2, r3
    2e9a:	4b79      	ldr	r3, [pc, #484]	; (3080 <Send_UDP+0x228>)
    2e9c:	815a      	strh	r2, [r3, #10]
    2e9e:	4b78      	ldr	r3, [pc, #480]	; (3080 <Send_UDP+0x228>)
    2ea0:	2208      	movs	r2, #8
    2ea2:	819a      	strh	r2, [r3, #12]
    2ea4:	4b76      	ldr	r3, [pc, #472]	; (3080 <Send_UDP+0x228>)
    2ea6:	2245      	movs	r2, #69	; 0x45
    2ea8:	81da      	strh	r2, [r3, #14]
    2eaa:	4b75      	ldr	r3, [pc, #468]	; (3080 <Send_UDP+0x228>)
    2eac:	22f0      	movs	r2, #240	; 0xf0
    2eae:	0192      	lsls	r2, r2, #6
    2eb0:	821a      	strh	r2, [r3, #16]
    2eb2:	4b74      	ldr	r3, [pc, #464]	; (3084 <Send_UDP+0x22c>)
    2eb4:	881a      	ldrh	r2, [r3, #0]
    2eb6:	4b72      	ldr	r3, [pc, #456]	; (3080 <Send_UDP+0x228>)
    2eb8:	825a      	strh	r2, [r3, #18]
    2eba:	4b71      	ldr	r3, [pc, #452]	; (3080 <Send_UDP+0x228>)
    2ebc:	2200      	movs	r2, #0
    2ebe:	829a      	strh	r2, [r3, #20]
    2ec0:	4b6f      	ldr	r3, [pc, #444]	; (3080 <Send_UDP+0x228>)
    2ec2:	228c      	movs	r2, #140	; 0x8c
    2ec4:	0152      	lsls	r2, r2, #5
    2ec6:	82da      	strh	r2, [r3, #22]
    2ec8:	4b6d      	ldr	r3, [pc, #436]	; (3080 <Send_UDP+0x228>)
    2eca:	2200      	movs	r2, #0
    2ecc:	831a      	strh	r2, [r3, #24]
    2ece:	4b6e      	ldr	r3, [pc, #440]	; (3088 <Send_UDP+0x230>)
    2ed0:	881a      	ldrh	r2, [r3, #0]
    2ed2:	4b6b      	ldr	r3, [pc, #428]	; (3080 <Send_UDP+0x228>)
    2ed4:	835a      	strh	r2, [r3, #26]
    2ed6:	4b6c      	ldr	r3, [pc, #432]	; (3088 <Send_UDP+0x230>)
    2ed8:	885a      	ldrh	r2, [r3, #2]
    2eda:	4b69      	ldr	r3, [pc, #420]	; (3080 <Send_UDP+0x228>)
    2edc:	839a      	strh	r2, [r3, #28]
    2ede:	4b67      	ldr	r3, [pc, #412]	; (307c <Send_UDP+0x224>)
    2ee0:	88da      	ldrh	r2, [r3, #6]
    2ee2:	4b67      	ldr	r3, [pc, #412]	; (3080 <Send_UDP+0x228>)
    2ee4:	83da      	strh	r2, [r3, #30]
    2ee6:	4b65      	ldr	r3, [pc, #404]	; (307c <Send_UDP+0x224>)
    2ee8:	891a      	ldrh	r2, [r3, #8]
    2eea:	4b65      	ldr	r3, [pc, #404]	; (3080 <Send_UDP+0x228>)
    2eec:	841a      	strh	r2, [r3, #32]
    2eee:	2316      	movs	r3, #22
    2ef0:	18fb      	adds	r3, r7, r3
    2ef2:	22fb      	movs	r2, #251	; 0xfb
    2ef4:	0052      	lsls	r2, r2, #1
    2ef6:	801a      	strh	r2, [r3, #0]
    2ef8:	2316      	movs	r3, #22
    2efa:	18fb      	adds	r3, r7, r3
    2efc:	2216      	movs	r2, #22
    2efe:	18ba      	adds	r2, r7, r2
    2f00:	8812      	ldrh	r2, [r2, #0]
    2f02:	ba52      	rev16	r2, r2
    2f04:	801a      	strh	r2, [r3, #0]
    2f06:	4b61      	ldr	r3, [pc, #388]	; (308c <Send_UDP+0x234>)
    2f08:	881a      	ldrh	r2, [r3, #0]
    2f0a:	2314      	movs	r3, #20
    2f0c:	18fb      	adds	r3, r7, r3
    2f0e:	ba52      	rev16	r2, r2
    2f10:	801a      	strh	r2, [r3, #0]
    2f12:	4b5b      	ldr	r3, [pc, #364]	; (3080 <Send_UDP+0x228>)
    2f14:	2216      	movs	r2, #22
    2f16:	18ba      	adds	r2, r7, r2
    2f18:	8812      	ldrh	r2, [r2, #0]
    2f1a:	845a      	strh	r2, [r3, #34]	; 0x22
    2f1c:	4b58      	ldr	r3, [pc, #352]	; (3080 <Send_UDP+0x228>)
    2f1e:	2214      	movs	r2, #20
    2f20:	18ba      	adds	r2, r7, r2
    2f22:	8812      	ldrh	r2, [r2, #0]
    2f24:	849a      	strh	r2, [r3, #36]	; 0x24
    2f26:	4b56      	ldr	r3, [pc, #344]	; (3080 <Send_UDP+0x228>)
    2f28:	22c0      	movs	r2, #192	; 0xc0
    2f2a:	0112      	lsls	r2, r2, #4
    2f2c:	84da      	strh	r2, [r3, #38]	; 0x26
    2f2e:	4b54      	ldr	r3, [pc, #336]	; (3080 <Send_UDP+0x228>)
    2f30:	2200      	movs	r2, #0
    2f32:	851a      	strh	r2, [r3, #40]	; 0x28
    2f34:	4b56      	ldr	r3, [pc, #344]	; (3090 <Send_UDP+0x238>)
    2f36:	61bb      	str	r3, [r7, #24]
    2f38:	683a      	ldr	r2, [r7, #0]
    2f3a:	23fe      	movs	r3, #254	; 0xfe
    2f3c:	005b      	lsls	r3, r3, #1
    2f3e:	429a      	cmp	r2, r3
    2f40:	dd02      	ble.n	2f48 <Send_UDP+0xf0>
    2f42:	23fe      	movs	r3, #254	; 0xfe
    2f44:	005b      	lsls	r3, r3, #1
    2f46:	603b      	str	r3, [r7, #0]
    2f48:	2300      	movs	r3, #0
    2f4a:	61fb      	str	r3, [r7, #28]
    2f4c:	e00a      	b.n	2f64 <Send_UDP+0x10c>
    2f4e:	69bb      	ldr	r3, [r7, #24]
    2f50:	1c5a      	adds	r2, r3, #1
    2f52:	61ba      	str	r2, [r7, #24]
    2f54:	687a      	ldr	r2, [r7, #4]
    2f56:	1c51      	adds	r1, r2, #1
    2f58:	6079      	str	r1, [r7, #4]
    2f5a:	7812      	ldrb	r2, [r2, #0]
    2f5c:	701a      	strb	r2, [r3, #0]
    2f5e:	69fb      	ldr	r3, [r7, #28]
    2f60:	3301      	adds	r3, #1
    2f62:	61fb      	str	r3, [r7, #28]
    2f64:	683b      	ldr	r3, [r7, #0]
    2f66:	69fa      	ldr	r2, [r7, #28]
    2f68:	429a      	cmp	r2, r3
    2f6a:	d3f0      	bcc.n	2f4e <Send_UDP+0xf6>
    2f6c:	683b      	ldr	r3, [r7, #0]
    2f6e:	b29a      	uxth	r2, r3
    2f70:	2312      	movs	r3, #18
    2f72:	18fb      	adds	r3, r7, r3
    2f74:	321c      	adds	r2, #28
    2f76:	801a      	strh	r2, [r3, #0]
    2f78:	2312      	movs	r3, #18
    2f7a:	18fb      	adds	r3, r7, r3
    2f7c:	881b      	ldrh	r3, [r3, #0]
    2f7e:	021b      	lsls	r3, r3, #8
    2f80:	b29a      	uxth	r2, r3
    2f82:	2312      	movs	r3, #18
    2f84:	18fb      	adds	r3, r7, r3
    2f86:	881b      	ldrh	r3, [r3, #0]
    2f88:	0a1b      	lsrs	r3, r3, #8
    2f8a:	b29b      	uxth	r3, r3
    2f8c:	18d3      	adds	r3, r2, r3
    2f8e:	b29a      	uxth	r2, r3
    2f90:	4b3b      	ldr	r3, [pc, #236]	; (3080 <Send_UDP+0x228>)
    2f92:	821a      	strh	r2, [r3, #16]
    2f94:	4b3a      	ldr	r3, [pc, #232]	; (3080 <Send_UDP+0x228>)
    2f96:	0018      	movs	r0, r3
    2f98:	f7ff fc8c 	bl	28b4 <CheckSum_IP>
    2f9c:	0003      	movs	r3, r0
    2f9e:	001a      	movs	r2, r3
    2fa0:	4b37      	ldr	r3, [pc, #220]	; (3080 <Send_UDP+0x228>)
    2fa2:	831a      	strh	r2, [r3, #24]
    2fa4:	683b      	ldr	r3, [r7, #0]
    2fa6:	b29a      	uxth	r2, r3
    2fa8:	2310      	movs	r3, #16
    2faa:	18fb      	adds	r3, r7, r3
    2fac:	3208      	adds	r2, #8
    2fae:	801a      	strh	r2, [r3, #0]
    2fb0:	2310      	movs	r3, #16
    2fb2:	18fb      	adds	r3, r7, r3
    2fb4:	881b      	ldrh	r3, [r3, #0]
    2fb6:	021b      	lsls	r3, r3, #8
    2fb8:	b29a      	uxth	r2, r3
    2fba:	2310      	movs	r3, #16
    2fbc:	18fb      	adds	r3, r7, r3
    2fbe:	881b      	ldrh	r3, [r3, #0]
    2fc0:	0a1b      	lsrs	r3, r3, #8
    2fc2:	b29b      	uxth	r3, r3
    2fc4:	18d3      	adds	r3, r2, r3
    2fc6:	b29a      	uxth	r2, r3
    2fc8:	4b2d      	ldr	r3, [pc, #180]	; (3080 <Send_UDP+0x228>)
    2fca:	84da      	strh	r2, [r3, #38]	; 0x26
    2fcc:	683b      	ldr	r3, [r7, #0]
    2fce:	b29b      	uxth	r3, r3
    2fd0:	3308      	adds	r3, #8
    2fd2:	b29b      	uxth	r3, r3
    2fd4:	220e      	movs	r2, #14
    2fd6:	18bc      	adds	r4, r7, r2
    2fd8:	4a29      	ldr	r2, [pc, #164]	; (3080 <Send_UDP+0x228>)
    2fda:	0011      	movs	r1, r2
    2fdc:	0018      	movs	r0, r3
    2fde:	f7ff fbb9 	bl	2754 <CheckSum_UDP>
    2fe2:	0003      	movs	r3, r0
    2fe4:	8023      	strh	r3, [r4, #0]
    2fe6:	230e      	movs	r3, #14
    2fe8:	18fb      	adds	r3, r7, r3
    2fea:	881b      	ldrh	r3, [r3, #0]
    2fec:	021b      	lsls	r3, r3, #8
    2fee:	b29a      	uxth	r2, r3
    2ff0:	230e      	movs	r3, #14
    2ff2:	18fb      	adds	r3, r7, r3
    2ff4:	881b      	ldrh	r3, [r3, #0]
    2ff6:	0a1b      	lsrs	r3, r3, #8
    2ff8:	b29b      	uxth	r3, r3
    2ffa:	18d3      	adds	r3, r2, r3
    2ffc:	b29a      	uxth	r2, r3
    2ffe:	4b20      	ldr	r3, [pc, #128]	; (3080 <Send_UDP+0x228>)
    3000:	851a      	strh	r2, [r3, #40]	; 0x28
    3002:	683b      	ldr	r3, [r7, #0]
    3004:	332a      	adds	r3, #42	; 0x2a
    3006:	001a      	movs	r2, r3
    3008:	4b1d      	ldr	r3, [pc, #116]	; (3080 <Send_UDP+0x228>)
    300a:	0011      	movs	r1, r2
    300c:	0018      	movs	r0, r3
    300e:	f7ff f9e9 	bl	23e4 <SendPacket>
    3012:	4b1c      	ldr	r3, [pc, #112]	; (3084 <Send_UDP+0x22c>)
    3014:	881b      	ldrh	r3, [r3, #0]
    3016:	0a1b      	lsrs	r3, r3, #8
    3018:	b29b      	uxth	r3, r3
    301a:	b2da      	uxtb	r2, r3
    301c:	230c      	movs	r3, #12
    301e:	18fb      	adds	r3, r7, r3
    3020:	701a      	strb	r2, [r3, #0]
    3022:	4b18      	ldr	r3, [pc, #96]	; (3084 <Send_UDP+0x22c>)
    3024:	881b      	ldrh	r3, [r3, #0]
    3026:	b2da      	uxtb	r2, r3
    3028:	230c      	movs	r3, #12
    302a:	18fb      	adds	r3, r7, r3
    302c:	705a      	strb	r2, [r3, #1]
    302e:	230c      	movs	r3, #12
    3030:	18fb      	adds	r3, r7, r3
    3032:	781b      	ldrb	r3, [r3, #0]
    3034:	3301      	adds	r3, #1
    3036:	b2da      	uxtb	r2, r3
    3038:	230c      	movs	r3, #12
    303a:	18fb      	adds	r3, r7, r3
    303c:	701a      	strb	r2, [r3, #0]
    303e:	230c      	movs	r3, #12
    3040:	18fb      	adds	r3, r7, r3
    3042:	781b      	ldrb	r3, [r3, #0]
    3044:	2b00      	cmp	r3, #0
    3046:	d107      	bne.n	3058 <Send_UDP+0x200>
    3048:	230c      	movs	r3, #12
    304a:	18fb      	adds	r3, r7, r3
    304c:	785b      	ldrb	r3, [r3, #1]
    304e:	3301      	adds	r3, #1
    3050:	b2da      	uxtb	r2, r3
    3052:	230c      	movs	r3, #12
    3054:	18fb      	adds	r3, r7, r3
    3056:	705a      	strb	r2, [r3, #1]
    3058:	230c      	movs	r3, #12
    305a:	18fb      	adds	r3, r7, r3
    305c:	781b      	ldrb	r3, [r3, #0]
    305e:	021b      	lsls	r3, r3, #8
    3060:	b21a      	sxth	r2, r3
    3062:	230c      	movs	r3, #12
    3064:	18fb      	adds	r3, r7, r3
    3066:	785b      	ldrb	r3, [r3, #1]
    3068:	b21b      	sxth	r3, r3
    306a:	4313      	orrs	r3, r2
    306c:	b21b      	sxth	r3, r3
    306e:	b29a      	uxth	r2, r3
    3070:	4b04      	ldr	r3, [pc, #16]	; (3084 <Send_UDP+0x22c>)
    3072:	801a      	strh	r2, [r3, #0]
    3074:	46c0      	nop			; (mov r8, r8)
    3076:	46bd      	mov	sp, r7
    3078:	b009      	add	sp, #36	; 0x24
    307a:	bd90      	pop	{r4, r7, pc}
    307c:	20004d1c 	.word	0x20004d1c
    3080:	20005584 	.word	0x20005584
    3084:	20004d30 	.word	0x20004d30
    3088:	2000000c 	.word	0x2000000c
    308c:	20005318 	.word	0x20005318
    3090:	200055ae 	.word	0x200055ae

00003094 <PacketParser>:
    3094:	b580      	push	{r7, lr}
    3096:	b082      	sub	sp, #8
    3098:	af00      	add	r7, sp, #0
    309a:	4b4c      	ldr	r3, [pc, #304]	; (31cc <PacketParser+0x138>)
    309c:	899b      	ldrh	r3, [r3, #12]
    309e:	2b08      	cmp	r3, #8
    30a0:	d005      	beq.n	30ae <PacketParser+0x1a>
    30a2:	22c1      	movs	r2, #193	; 0xc1
    30a4:	00d2      	lsls	r2, r2, #3
    30a6:	4293      	cmp	r3, r2
    30a8:	d100      	bne.n	30ac <PacketParser+0x18>
    30aa:	e070      	b.n	318e <PacketParser+0xfa>
    30ac:	e089      	b.n	31c2 <PacketParser+0x12e>
    30ae:	4b47      	ldr	r3, [pc, #284]	; (31cc <PacketParser+0x138>)
    30b0:	8b9a      	ldrh	r2, [r3, #28]
    30b2:	4b47      	ldr	r3, [pc, #284]	; (31d0 <PacketParser+0x13c>)
    30b4:	811a      	strh	r2, [r3, #8]
    30b6:	4b45      	ldr	r3, [pc, #276]	; (31cc <PacketParser+0x138>)
    30b8:	8bda      	ldrh	r2, [r3, #30]
    30ba:	4b45      	ldr	r3, [pc, #276]	; (31d0 <PacketParser+0x13c>)
    30bc:	80da      	strh	r2, [r3, #6]
    30be:	4b44      	ldr	r3, [pc, #272]	; (31d0 <PacketParser+0x13c>)
    30c0:	895b      	ldrh	r3, [r3, #10]
    30c2:	2b00      	cmp	r3, #0
    30c4:	d100      	bne.n	30c8 <PacketParser+0x34>
    30c6:	e077      	b.n	31b8 <PacketParser+0x124>
    30c8:	4b40      	ldr	r3, [pc, #256]	; (31cc <PacketParser+0x138>)
    30ca:	8bda      	ldrh	r2, [r3, #30]
    30cc:	4b41      	ldr	r3, [pc, #260]	; (31d4 <PacketParser+0x140>)
    30ce:	881b      	ldrh	r3, [r3, #0]
    30d0:	429a      	cmp	r2, r3
    30d2:	d000      	beq.n	30d6 <PacketParser+0x42>
    30d4:	e072      	b.n	31bc <PacketParser+0x128>
    30d6:	4b3d      	ldr	r3, [pc, #244]	; (31cc <PacketParser+0x138>)
    30d8:	8c1a      	ldrh	r2, [r3, #32]
    30da:	4b3e      	ldr	r3, [pc, #248]	; (31d4 <PacketParser+0x140>)
    30dc:	885b      	ldrh	r3, [r3, #2]
    30de:	429a      	cmp	r2, r3
    30e0:	d000      	beq.n	30e4 <PacketParser+0x50>
    30e2:	e06b      	b.n	31bc <PacketParser+0x128>
    30e4:	4b39      	ldr	r3, [pc, #228]	; (31cc <PacketParser+0x138>)
    30e6:	0018      	movs	r0, r3
    30e8:	f7ff fbe4 	bl	28b4 <CheckSum_IP>
    30ec:	0003      	movs	r3, r0
    30ee:	001a      	movs	r2, r3
    30f0:	4b36      	ldr	r3, [pc, #216]	; (31cc <PacketParser+0x138>)
    30f2:	8b1b      	ldrh	r3, [r3, #24]
    30f4:	429a      	cmp	r2, r3
    30f6:	d000      	beq.n	30fa <PacketParser+0x66>
    30f8:	e060      	b.n	31bc <PacketParser+0x128>
    30fa:	4b34      	ldr	r3, [pc, #208]	; (31cc <PacketParser+0x138>)
    30fc:	8adb      	ldrh	r3, [r3, #22]
    30fe:	001a      	movs	r2, r3
    3100:	23ff      	movs	r3, #255	; 0xff
    3102:	021b      	lsls	r3, r3, #8
    3104:	401a      	ands	r2, r3
    3106:	2380      	movs	r3, #128	; 0x80
    3108:	005b      	lsls	r3, r3, #1
    310a:	429a      	cmp	r2, r3
    310c:	d110      	bne.n	3130 <PacketParser+0x9c>
    310e:	4b2f      	ldr	r3, [pc, #188]	; (31cc <PacketParser+0x138>)
    3110:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    3112:	2b00      	cmp	r3, #0
    3114:	d105      	bne.n	3122 <PacketParser+0x8e>
    3116:	4b30      	ldr	r3, [pc, #192]	; (31d8 <PacketParser+0x144>)
    3118:	681b      	ldr	r3, [r3, #0]
    311a:	1c5a      	adds	r2, r3, #1
    311c:	4b2e      	ldr	r3, [pc, #184]	; (31d8 <PacketParser+0x144>)
    311e:	601a      	str	r2, [r3, #0]
    3120:	e04c      	b.n	31bc <PacketParser+0x128>
    3122:	4b2a      	ldr	r3, [pc, #168]	; (31cc <PacketParser+0x138>)
    3124:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    3126:	2b08      	cmp	r3, #8
    3128:	d148      	bne.n	31bc <PacketParser+0x128>
    312a:	f7ff fd15 	bl	2b58 <Answear_ICMP>
    312e:	e045      	b.n	31bc <PacketParser+0x128>
    3130:	4b26      	ldr	r3, [pc, #152]	; (31cc <PacketParser+0x138>)
    3132:	8adb      	ldrh	r3, [r3, #22]
    3134:	001a      	movs	r2, r3
    3136:	23ff      	movs	r3, #255	; 0xff
    3138:	021b      	lsls	r3, r3, #8
    313a:	401a      	ands	r2, r3
    313c:	2388      	movs	r3, #136	; 0x88
    313e:	015b      	lsls	r3, r3, #5
    3140:	429a      	cmp	r2, r3
    3142:	d13b      	bne.n	31bc <PacketParser+0x128>
    3144:	4b21      	ldr	r3, [pc, #132]	; (31cc <PacketParser+0x138>)
    3146:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    3148:	021b      	lsls	r3, r3, #8
    314a:	b29a      	uxth	r2, r3
    314c:	4b1f      	ldr	r3, [pc, #124]	; (31cc <PacketParser+0x138>)
    314e:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    3150:	0a1b      	lsrs	r3, r3, #8
    3152:	b29b      	uxth	r3, r3
    3154:	18d3      	adds	r3, r2, r3
    3156:	b29a      	uxth	r2, r3
    3158:	4b20      	ldr	r3, [pc, #128]	; (31dc <PacketParser+0x148>)
    315a:	801a      	strh	r2, [r3, #0]
    315c:	4b1b      	ldr	r3, [pc, #108]	; (31cc <PacketParser+0x138>)
    315e:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    3160:	021b      	lsls	r3, r3, #8
    3162:	b299      	uxth	r1, r3
    3164:	4b19      	ldr	r3, [pc, #100]	; (31cc <PacketParser+0x138>)
    3166:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    3168:	0a1b      	lsrs	r3, r3, #8
    316a:	b29a      	uxth	r2, r3
    316c:	1dbb      	adds	r3, r7, #6
    316e:	188a      	adds	r2, r1, r2
    3170:	801a      	strh	r2, [r3, #0]
    3172:	1dbb      	adds	r3, r7, #6
    3174:	881a      	ldrh	r2, [r3, #0]
    3176:	23fb      	movs	r3, #251	; 0xfb
    3178:	005b      	lsls	r3, r3, #1
    317a:	429a      	cmp	r2, r3
    317c:	d104      	bne.n	3188 <PacketParser+0xf4>
    317e:	4b18      	ldr	r3, [pc, #96]	; (31e0 <PacketParser+0x14c>)
    3180:	0018      	movs	r0, r3
    3182:	f000 ff25 	bl	3fd0 <mdb_proc_adu>
    3186:	e019      	b.n	31bc <PacketParser+0x128>
    3188:	f7ff fd96 	bl	2cb8 <DestinationUnreachable_ICMP>
    318c:	e016      	b.n	31bc <PacketParser+0x128>
    318e:	4b0f      	ldr	r3, [pc, #60]	; (31cc <PacketParser+0x138>)
    3190:	8a9a      	ldrh	r2, [r3, #20]
    3192:	2380      	movs	r3, #128	; 0x80
    3194:	005b      	lsls	r3, r3, #1
    3196:	429a      	cmp	r2, r3
    3198:	d112      	bne.n	31c0 <PacketParser+0x12c>
    319a:	4b0c      	ldr	r3, [pc, #48]	; (31cc <PacketParser+0x138>)
    319c:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    319e:	4b0d      	ldr	r3, [pc, #52]	; (31d4 <PacketParser+0x140>)
    31a0:	881b      	ldrh	r3, [r3, #0]
    31a2:	429a      	cmp	r2, r3
    31a4:	d10c      	bne.n	31c0 <PacketParser+0x12c>
    31a6:	4b09      	ldr	r3, [pc, #36]	; (31cc <PacketParser+0x138>)
    31a8:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    31aa:	4b0a      	ldr	r3, [pc, #40]	; (31d4 <PacketParser+0x140>)
    31ac:	885b      	ldrh	r3, [r3, #2]
    31ae:	429a      	cmp	r2, r3
    31b0:	d106      	bne.n	31c0 <PacketParser+0x12c>
    31b2:	f7ff fa5b 	bl	266c <Answear_ARP>
    31b6:	e003      	b.n	31c0 <PacketParser+0x12c>
    31b8:	46c0      	nop			; (mov r8, r8)
    31ba:	e002      	b.n	31c2 <PacketParser+0x12e>
    31bc:	46c0      	nop			; (mov r8, r8)
    31be:	e000      	b.n	31c2 <PacketParser+0x12e>
    31c0:	46c0      	nop			; (mov r8, r8)
    31c2:	46c0      	nop			; (mov r8, r8)
    31c4:	46bd      	mov	sp, r7
    31c6:	b002      	add	sp, #8
    31c8:	bd80      	pop	{r7, pc}
    31ca:	46c0      	nop			; (mov r8, r8)
    31cc:	20004d38 	.word	0x20004d38
    31d0:	20004d1c 	.word	0x20004d1c
    31d4:	2000000c 	.word	0x2000000c
    31d8:	20004d34 	.word	0x20004d34
    31dc:	20005318 	.word	0x20005318
    31e0:	20004d62 	.word	0x20004d62

000031e4 <threadPacketParser>:
    31e4:	b580      	push	{r7, lr}
    31e6:	b086      	sub	sp, #24
    31e8:	af00      	add	r7, sp, #0
    31ea:	6078      	str	r0, [r7, #4]
    31ec:	4b31      	ldr	r3, [pc, #196]	; (32b4 <threadPacketParser+0xd0>)
    31ee:	0018      	movs	r0, r3
    31f0:	f003 fb4c 	bl	688c <osMutexCreate>
    31f4:	0002      	movs	r2, r0
    31f6:	4b30      	ldr	r3, [pc, #192]	; (32b8 <threadPacketParser+0xd4>)
    31f8:	601a      	str	r2, [r3, #0]
    31fa:	4b30      	ldr	r3, [pc, #192]	; (32bc <threadPacketParser+0xd8>)
    31fc:	0018      	movs	r0, r3
    31fe:	f003 fb45 	bl	688c <osMutexCreate>
    3202:	0002      	movs	r2, r0
    3204:	4b2e      	ldr	r3, [pc, #184]	; (32c0 <threadPacketParser+0xdc>)
    3206:	601a      	str	r2, [r3, #0]
    3208:	230c      	movs	r3, #12
    320a:	18f8      	adds	r0, r7, r3
    320c:	23fa      	movs	r3, #250	; 0xfa
    320e:	005b      	lsls	r3, r3, #1
    3210:	001a      	movs	r2, r3
    3212:	2100      	movs	r1, #0
    3214:	f003 faac 	bl	6770 <osSignalWait>
    3218:	230c      	movs	r3, #12
    321a:	18fb      	adds	r3, r7, r3
    321c:	681b      	ldr	r3, [r3, #0]
    321e:	2b08      	cmp	r3, #8
    3220:	d120      	bne.n	3264 <threadPacketParser+0x80>
    3222:	230c      	movs	r3, #12
    3224:	18fb      	adds	r3, r7, r3
    3226:	685b      	ldr	r3, [r3, #4]
    3228:	2b01      	cmp	r3, #1
    322a:	d142      	bne.n	32b2 <threadPacketParser+0xce>
    322c:	4b25      	ldr	r3, [pc, #148]	; (32c4 <threadPacketParser+0xe0>)
    322e:	4a25      	ldr	r2, [pc, #148]	; (32c4 <threadPacketParser+0xe0>)
    3230:	6812      	ldr	r2, [r2, #0]
    3232:	2180      	movs	r1, #128	; 0x80
    3234:	404a      	eors	r2, r1
    3236:	601a      	str	r2, [r3, #0]
    3238:	e00a      	b.n	3250 <threadPacketParser+0x6c>
    323a:	4b23      	ldr	r3, [pc, #140]	; (32c8 <threadPacketParser+0xe4>)
    323c:	0018      	movs	r0, r3
    323e:	f7fe ffdb 	bl	21f8 <ReadPacket>
    3242:	0003      	movs	r3, r0
    3244:	b299      	uxth	r1, r3
    3246:	4b20      	ldr	r3, [pc, #128]	; (32c8 <threadPacketParser+0xe4>)
    3248:	4a20      	ldr	r2, [pc, #128]	; (32cc <threadPacketParser+0xe8>)
    324a:	5299      	strh	r1, [r3, r2]
    324c:	f7ff ff22 	bl	3094 <PacketParser>
    3250:	23c0      	movs	r3, #192	; 0xc0
    3252:	059b      	lsls	r3, r3, #22
    3254:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    3256:	b29b      	uxth	r3, r3
    3258:	001a      	movs	r2, r3
    325a:	23e0      	movs	r3, #224	; 0xe0
    325c:	4013      	ands	r3, r2
    325e:	d1ec      	bne.n	323a <threadPacketParser+0x56>
    3260:	46c0      	nop			; (mov r8, r8)
    3262:	e026      	b.n	32b2 <threadPacketParser+0xce>
    3264:	230c      	movs	r3, #12
    3266:	18fb      	adds	r3, r7, r3
    3268:	681b      	ldr	r3, [r3, #0]
    326a:	2b40      	cmp	r3, #64	; 0x40
    326c:	d1cc      	bne.n	3208 <threadPacketParser+0x24>
    326e:	23c0      	movs	r3, #192	; 0xc0
    3270:	059b      	lsls	r3, r3, #22
    3272:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3274:	b29b      	uxth	r3, r3
    3276:	001a      	movs	r2, r3
    3278:	2302      	movs	r3, #2
    327a:	4013      	ands	r3, r2
    327c:	d104      	bne.n	3288 <threadPacketParser+0xa4>
    327e:	4b14      	ldr	r3, [pc, #80]	; (32d0 <threadPacketParser+0xec>)
    3280:	2280      	movs	r2, #128	; 0x80
    3282:	0212      	lsls	r2, r2, #8
    3284:	621a      	str	r2, [r3, #32]
    3286:	e003      	b.n	3290 <threadPacketParser+0xac>
    3288:	4b11      	ldr	r3, [pc, #68]	; (32d0 <threadPacketParser+0xec>)
    328a:	2280      	movs	r2, #128	; 0x80
    328c:	0212      	lsls	r2, r2, #8
    328e:	625a      	str	r2, [r3, #36]	; 0x24
    3290:	23c0      	movs	r3, #192	; 0xc0
    3292:	059b      	lsls	r3, r3, #22
    3294:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3296:	b29b      	uxth	r3, r3
    3298:	001a      	movs	r2, r3
    329a:	2308      	movs	r3, #8
    329c:	4013      	ands	r3, r2
    329e:	d104      	bne.n	32aa <threadPacketParser+0xc6>
    32a0:	4b0b      	ldr	r3, [pc, #44]	; (32d0 <threadPacketParser+0xec>)
    32a2:	2280      	movs	r2, #128	; 0x80
    32a4:	01d2      	lsls	r2, r2, #7
    32a6:	621a      	str	r2, [r3, #32]
    32a8:	e7ae      	b.n	3208 <threadPacketParser+0x24>
    32aa:	4b09      	ldr	r3, [pc, #36]	; (32d0 <threadPacketParser+0xec>)
    32ac:	2280      	movs	r2, #128	; 0x80
    32ae:	01d2      	lsls	r2, r2, #7
    32b0:	625a      	str	r2, [r3, #36]	; 0x24
    32b2:	e7a9      	b.n	3208 <threadPacketParser+0x24>
    32b4:	00008bb4 	.word	0x00008bb4
    32b8:	2000532c 	.word	0x2000532c
    32bc:	00008bb8 	.word	0x00008bb8
    32c0:	20005340 	.word	0x20005340
    32c4:	400c0000 	.word	0x400c0000
    32c8:	20004d38 	.word	0x20004d38
    32cc:	000005dc 	.word	0x000005dc
    32d0:	400b0000 	.word	0x400b0000

000032d4 <crc32>:
    32d4:	b580      	push	{r7, lr}
    32d6:	b084      	sub	sp, #16
    32d8:	af00      	add	r7, sp, #0
    32da:	6078      	str	r0, [r7, #4]
    32dc:	6039      	str	r1, [r7, #0]
    32de:	2301      	movs	r3, #1
    32e0:	425b      	negs	r3, r3
    32e2:	60bb      	str	r3, [r7, #8]
    32e4:	2300      	movs	r3, #0
    32e6:	60fb      	str	r3, [r7, #12]
    32e8:	e012      	b.n	3310 <crc32+0x3c>
    32ea:	68bb      	ldr	r3, [r7, #8]
    32ec:	0a1a      	lsrs	r2, r3, #8
    32ee:	68fb      	ldr	r3, [r7, #12]
    32f0:	6879      	ldr	r1, [r7, #4]
    32f2:	18cb      	adds	r3, r1, r3
    32f4:	781b      	ldrb	r3, [r3, #0]
    32f6:	0019      	movs	r1, r3
    32f8:	68bb      	ldr	r3, [r7, #8]
    32fa:	404b      	eors	r3, r1
    32fc:	21ff      	movs	r1, #255	; 0xff
    32fe:	4019      	ands	r1, r3
    3300:	4b08      	ldr	r3, [pc, #32]	; (3324 <crc32+0x50>)
    3302:	0089      	lsls	r1, r1, #2
    3304:	58cb      	ldr	r3, [r1, r3]
    3306:	4053      	eors	r3, r2
    3308:	60bb      	str	r3, [r7, #8]
    330a:	68fb      	ldr	r3, [r7, #12]
    330c:	3301      	adds	r3, #1
    330e:	60fb      	str	r3, [r7, #12]
    3310:	68fa      	ldr	r2, [r7, #12]
    3312:	683b      	ldr	r3, [r7, #0]
    3314:	429a      	cmp	r2, r3
    3316:	d3e8      	bcc.n	32ea <crc32+0x16>
    3318:	68bb      	ldr	r3, [r7, #8]
    331a:	0018      	movs	r0, r3
    331c:	46bd      	mov	sp, r7
    331e:	b004      	add	sp, #16
    3320:	bd80      	pop	{r7, pc}
    3322:	46c0      	nop			; (mov r8, r8)
    3324:	00008bbc 	.word	0x00008bbc

00003328 <crc16>:
    3328:	b580      	push	{r7, lr}
    332a:	b086      	sub	sp, #24
    332c:	af00      	add	r7, sp, #0
    332e:	6078      	str	r0, [r7, #4]
    3330:	6039      	str	r1, [r7, #0]
    3332:	2317      	movs	r3, #23
    3334:	18fb      	adds	r3, r7, r3
    3336:	22ff      	movs	r2, #255	; 0xff
    3338:	701a      	strb	r2, [r3, #0]
    333a:	2316      	movs	r3, #22
    333c:	18fb      	adds	r3, r7, r3
    333e:	22ff      	movs	r2, #255	; 0xff
    3340:	701a      	strb	r2, [r3, #0]
    3342:	2300      	movs	r3, #0
    3344:	613b      	str	r3, [r7, #16]
    3346:	e01e      	b.n	3386 <crc16+0x5e>
    3348:	693b      	ldr	r3, [r7, #16]
    334a:	687a      	ldr	r2, [r7, #4]
    334c:	18d3      	adds	r3, r2, r3
    334e:	781a      	ldrb	r2, [r3, #0]
    3350:	2317      	movs	r3, #23
    3352:	18fb      	adds	r3, r7, r3
    3354:	781b      	ldrb	r3, [r3, #0]
    3356:	4053      	eors	r3, r2
    3358:	b2db      	uxtb	r3, r3
    335a:	60fb      	str	r3, [r7, #12]
    335c:	4a14      	ldr	r2, [pc, #80]	; (33b0 <crc16+0x88>)
    335e:	68fb      	ldr	r3, [r7, #12]
    3360:	18d3      	adds	r3, r2, r3
    3362:	7819      	ldrb	r1, [r3, #0]
    3364:	2317      	movs	r3, #23
    3366:	18fb      	adds	r3, r7, r3
    3368:	2216      	movs	r2, #22
    336a:	18ba      	adds	r2, r7, r2
    336c:	7812      	ldrb	r2, [r2, #0]
    336e:	404a      	eors	r2, r1
    3370:	701a      	strb	r2, [r3, #0]
    3372:	2316      	movs	r3, #22
    3374:	18fb      	adds	r3, r7, r3
    3376:	490f      	ldr	r1, [pc, #60]	; (33b4 <crc16+0x8c>)
    3378:	68fa      	ldr	r2, [r7, #12]
    337a:	188a      	adds	r2, r1, r2
    337c:	7812      	ldrb	r2, [r2, #0]
    337e:	701a      	strb	r2, [r3, #0]
    3380:	693b      	ldr	r3, [r7, #16]
    3382:	3301      	adds	r3, #1
    3384:	613b      	str	r3, [r7, #16]
    3386:	693a      	ldr	r2, [r7, #16]
    3388:	683b      	ldr	r3, [r7, #0]
    338a:	429a      	cmp	r2, r3
    338c:	dbdc      	blt.n	3348 <crc16+0x20>
    338e:	2316      	movs	r3, #22
    3390:	18fb      	adds	r3, r7, r3
    3392:	781b      	ldrb	r3, [r3, #0]
    3394:	021b      	lsls	r3, r3, #8
    3396:	b21a      	sxth	r2, r3
    3398:	2317      	movs	r3, #23
    339a:	18fb      	adds	r3, r7, r3
    339c:	781b      	ldrb	r3, [r3, #0]
    339e:	b21b      	sxth	r3, r3
    33a0:	4313      	orrs	r3, r2
    33a2:	b21b      	sxth	r3, r3
    33a4:	b29b      	uxth	r3, r3
    33a6:	0018      	movs	r0, r3
    33a8:	46bd      	mov	sp, r7
    33aa:	b006      	add	sp, #24
    33ac:	bd80      	pop	{r7, pc}
    33ae:	46c0      	nop			; (mov r8, r8)
    33b0:	00008fbc 	.word	0x00008fbc
    33b4:	000090bc 	.word	0x000090bc

000033b8 <eeprom_on>:
    33b8:	b580      	push	{r7, lr}
    33ba:	af00      	add	r7, sp, #0
    33bc:	b672      	cpsid	i
    33be:	4b04      	ldr	r3, [pc, #16]	; (33d0 <eeprom_on+0x18>)
    33c0:	4a03      	ldr	r2, [pc, #12]	; (33d0 <eeprom_on+0x18>)
    33c2:	69d2      	ldr	r2, [r2, #28]
    33c4:	2108      	movs	r1, #8
    33c6:	430a      	orrs	r2, r1
    33c8:	61da      	str	r2, [r3, #28]
    33ca:	46c0      	nop			; (mov r8, r8)
    33cc:	46bd      	mov	sp, r7
    33ce:	bd80      	pop	{r7, pc}
    33d0:	40020000 	.word	0x40020000

000033d4 <eeprom_off>:
    33d4:	b580      	push	{r7, lr}
    33d6:	af00      	add	r7, sp, #0
    33d8:	b662      	cpsie	i
    33da:	4b04      	ldr	r3, [pc, #16]	; (33ec <eeprom_off+0x18>)
    33dc:	4a03      	ldr	r2, [pc, #12]	; (33ec <eeprom_off+0x18>)
    33de:	69d2      	ldr	r2, [r2, #28]
    33e0:	2108      	movs	r1, #8
    33e2:	438a      	bics	r2, r1
    33e4:	61da      	str	r2, [r3, #28]
    33e6:	46c0      	nop			; (mov r8, r8)
    33e8:	46bd      	mov	sp, r7
    33ea:	bd80      	pop	{r7, pc}
    33ec:	40020000 	.word	0x40020000

000033f0 <par_save>:
    33f0:	b580      	push	{r7, lr}
    33f2:	b086      	sub	sp, #24
    33f4:	af00      	add	r7, sp, #0
    33f6:	6078      	str	r0, [r7, #4]
    33f8:	f7ff ffde 	bl	33b8 <eeprom_on>
    33fc:	f005 fb28 	bl	8a50 <__eeprom_erase_page_veneer>
    3400:	1e03      	subs	r3, r0, #0
    3402:	d01b      	beq.n	343c <par_save+0x4c>
    3404:	687b      	ldr	r3, [r7, #4]
    3406:	613b      	str	r3, [r7, #16]
    3408:	2303      	movs	r3, #3
    340a:	60bb      	str	r3, [r7, #8]
    340c:	2300      	movs	r3, #0
    340e:	60fb      	str	r3, [r7, #12]
    3410:	2300      	movs	r3, #0
    3412:	617b      	str	r3, [r7, #20]
    3414:	e00e      	b.n	3434 <par_save+0x44>
    3416:	693b      	ldr	r3, [r7, #16]
    3418:	1d1a      	adds	r2, r3, #4
    341a:	613a      	str	r2, [r7, #16]
    341c:	681a      	ldr	r2, [r3, #0]
    341e:	68fb      	ldr	r3, [r7, #12]
    3420:	0011      	movs	r1, r2
    3422:	0018      	movs	r0, r3
    3424:	f005 fb0c 	bl	8a40 <__eeprom_program_word_veneer>
    3428:	68fb      	ldr	r3, [r7, #12]
    342a:	3304      	adds	r3, #4
    342c:	60fb      	str	r3, [r7, #12]
    342e:	697b      	ldr	r3, [r7, #20]
    3430:	3301      	adds	r3, #1
    3432:	617b      	str	r3, [r7, #20]
    3434:	697a      	ldr	r2, [r7, #20]
    3436:	68bb      	ldr	r3, [r7, #8]
    3438:	429a      	cmp	r2, r3
    343a:	dbec      	blt.n	3416 <par_save+0x26>
    343c:	f7ff ffca 	bl	33d4 <eeprom_off>
    3440:	46c0      	nop			; (mov r8, r8)
    3442:	46bd      	mov	sp, r7
    3444:	b006      	add	sp, #24
    3446:	bd80      	pop	{r7, pc}

00003448 <par_read>:
    3448:	b590      	push	{r4, r7, lr}
    344a:	b087      	sub	sp, #28
    344c:	af00      	add	r7, sp, #0
    344e:	6078      	str	r0, [r7, #4]
    3450:	f7ff ffb2 	bl	33b8 <eeprom_on>
    3454:	687b      	ldr	r3, [r7, #4]
    3456:	613b      	str	r3, [r7, #16]
    3458:	2303      	movs	r3, #3
    345a:	60bb      	str	r3, [r7, #8]
    345c:	2300      	movs	r3, #0
    345e:	60fb      	str	r3, [r7, #12]
    3460:	2300      	movs	r3, #0
    3462:	617b      	str	r3, [r7, #20]
    3464:	e00e      	b.n	3484 <par_read+0x3c>
    3466:	693c      	ldr	r4, [r7, #16]
    3468:	1d23      	adds	r3, r4, #4
    346a:	613b      	str	r3, [r7, #16]
    346c:	68fb      	ldr	r3, [r7, #12]
    346e:	0018      	movs	r0, r3
    3470:	f005 faf6 	bl	8a60 <__eeprom_read_word_veneer>
    3474:	0003      	movs	r3, r0
    3476:	6023      	str	r3, [r4, #0]
    3478:	68fb      	ldr	r3, [r7, #12]
    347a:	3304      	adds	r3, #4
    347c:	60fb      	str	r3, [r7, #12]
    347e:	697b      	ldr	r3, [r7, #20]
    3480:	3301      	adds	r3, #1
    3482:	617b      	str	r3, [r7, #20]
    3484:	697a      	ldr	r2, [r7, #20]
    3486:	68bb      	ldr	r3, [r7, #8]
    3488:	429a      	cmp	r2, r3
    348a:	dbec      	blt.n	3466 <par_read+0x1e>
    348c:	f7ff ffa2 	bl	33d4 <eeprom_off>
    3490:	46c0      	nop			; (mov r8, r8)
    3492:	46bd      	mov	sp, r7
    3494:	b007      	add	sp, #28
    3496:	bd90      	pop	{r4, r7, pc}

00003498 <mdb_fifo_read>:
    3498:	b580      	push	{r7, lr}
    349a:	b086      	sub	sp, #24
    349c:	af00      	add	r7, sp, #0
    349e:	6078      	str	r0, [r7, #4]
    34a0:	6039      	str	r1, [r7, #0]
    34a2:	4b1f      	ldr	r3, [pc, #124]	; (3520 <mdb_fifo_read+0x88>)
    34a4:	681a      	ldr	r2, [r3, #0]
    34a6:	2301      	movs	r3, #1
    34a8:	425b      	negs	r3, r3
    34aa:	0019      	movs	r1, r3
    34ac:	0010      	movs	r0, r2
    34ae:	f003 fa13 	bl	68d8 <osMutexWait>
    34b2:	4b1c      	ldr	r3, [pc, #112]	; (3524 <mdb_fifo_read+0x8c>)
    34b4:	681a      	ldr	r2, [r3, #0]
    34b6:	4b1c      	ldr	r3, [pc, #112]	; (3528 <mdb_fifo_read+0x90>)
    34b8:	681b      	ldr	r3, [r3, #0]
    34ba:	1ad3      	subs	r3, r2, r3
    34bc:	05db      	lsls	r3, r3, #23
    34be:	0ddb      	lsrs	r3, r3, #23
    34c0:	613b      	str	r3, [r7, #16]
    34c2:	693b      	ldr	r3, [r7, #16]
    34c4:	2280      	movs	r2, #128	; 0x80
    34c6:	0092      	lsls	r2, r2, #2
    34c8:	1ad3      	subs	r3, r2, r3
    34ca:	60fb      	str	r3, [r7, #12]
    34cc:	683a      	ldr	r2, [r7, #0]
    34ce:	693b      	ldr	r3, [r7, #16]
    34d0:	429a      	cmp	r2, r3
    34d2:	d819      	bhi.n	3508 <mdb_fifo_read+0x70>
    34d4:	2300      	movs	r3, #0
    34d6:	617b      	str	r3, [r7, #20]
    34d8:	e011      	b.n	34fe <mdb_fifo_read+0x66>
    34da:	687b      	ldr	r3, [r7, #4]
    34dc:	1c5a      	adds	r2, r3, #1
    34de:	607a      	str	r2, [r7, #4]
    34e0:	4a11      	ldr	r2, [pc, #68]	; (3528 <mdb_fifo_read+0x90>)
    34e2:	6812      	ldr	r2, [r2, #0]
    34e4:	4911      	ldr	r1, [pc, #68]	; (352c <mdb_fifo_read+0x94>)
    34e6:	5c8a      	ldrb	r2, [r1, r2]
    34e8:	701a      	strb	r2, [r3, #0]
    34ea:	4b0f      	ldr	r3, [pc, #60]	; (3528 <mdb_fifo_read+0x90>)
    34ec:	681b      	ldr	r3, [r3, #0]
    34ee:	3301      	adds	r3, #1
    34f0:	05db      	lsls	r3, r3, #23
    34f2:	0dda      	lsrs	r2, r3, #23
    34f4:	4b0c      	ldr	r3, [pc, #48]	; (3528 <mdb_fifo_read+0x90>)
    34f6:	601a      	str	r2, [r3, #0]
    34f8:	697b      	ldr	r3, [r7, #20]
    34fa:	3301      	adds	r3, #1
    34fc:	617b      	str	r3, [r7, #20]
    34fe:	697a      	ldr	r2, [r7, #20]
    3500:	683b      	ldr	r3, [r7, #0]
    3502:	429a      	cmp	r2, r3
    3504:	dbe9      	blt.n	34da <mdb_fifo_read+0x42>
    3506:	e001      	b.n	350c <mdb_fifo_read+0x74>
    3508:	2300      	movs	r3, #0
    350a:	603b      	str	r3, [r7, #0]
    350c:	4b04      	ldr	r3, [pc, #16]	; (3520 <mdb_fifo_read+0x88>)
    350e:	681b      	ldr	r3, [r3, #0]
    3510:	0018      	movs	r0, r3
    3512:	f003 f9f1 	bl	68f8 <osMutexRelease>
    3516:	683b      	ldr	r3, [r7, #0]
    3518:	0018      	movs	r0, r3
    351a:	46bd      	mov	sp, r7
    351c:	b006      	add	sp, #24
    351e:	bd80      	pop	{r7, pc}
    3520:	20000890 	.word	0x20000890
    3524:	20005d60 	.word	0x20005d60
    3528:	20005d64 	.word	0x20005d64
    352c:	20005b60 	.word	0x20005b60

00003530 <mdb_fifo_write>:
    3530:	b580      	push	{r7, lr}
    3532:	b086      	sub	sp, #24
    3534:	af00      	add	r7, sp, #0
    3536:	6078      	str	r0, [r7, #4]
    3538:	6039      	str	r1, [r7, #0]
    353a:	4b1c      	ldr	r3, [pc, #112]	; (35ac <mdb_fifo_write+0x7c>)
    353c:	681a      	ldr	r2, [r3, #0]
    353e:	2301      	movs	r3, #1
    3540:	425b      	negs	r3, r3
    3542:	0019      	movs	r1, r3
    3544:	0010      	movs	r0, r2
    3546:	f003 f9c7 	bl	68d8 <osMutexWait>
    354a:	4b19      	ldr	r3, [pc, #100]	; (35b0 <mdb_fifo_write+0x80>)
    354c:	681a      	ldr	r2, [r3, #0]
    354e:	4b19      	ldr	r3, [pc, #100]	; (35b4 <mdb_fifo_write+0x84>)
    3550:	681b      	ldr	r3, [r3, #0]
    3552:	1ad3      	subs	r3, r2, r3
    3554:	05db      	lsls	r3, r3, #23
    3556:	0ddb      	lsrs	r3, r3, #23
    3558:	613b      	str	r3, [r7, #16]
    355a:	693b      	ldr	r3, [r7, #16]
    355c:	2280      	movs	r2, #128	; 0x80
    355e:	0092      	lsls	r2, r2, #2
    3560:	1ad3      	subs	r3, r2, r3
    3562:	60fb      	str	r3, [r7, #12]
    3564:	2300      	movs	r3, #0
    3566:	617b      	str	r3, [r7, #20]
    3568:	e011      	b.n	358e <mdb_fifo_write+0x5e>
    356a:	4b11      	ldr	r3, [pc, #68]	; (35b0 <mdb_fifo_write+0x80>)
    356c:	681a      	ldr	r2, [r3, #0]
    356e:	687b      	ldr	r3, [r7, #4]
    3570:	1c59      	adds	r1, r3, #1
    3572:	6079      	str	r1, [r7, #4]
    3574:	7819      	ldrb	r1, [r3, #0]
    3576:	4b10      	ldr	r3, [pc, #64]	; (35b8 <mdb_fifo_write+0x88>)
    3578:	5499      	strb	r1, [r3, r2]
    357a:	4b0d      	ldr	r3, [pc, #52]	; (35b0 <mdb_fifo_write+0x80>)
    357c:	681b      	ldr	r3, [r3, #0]
    357e:	3301      	adds	r3, #1
    3580:	05db      	lsls	r3, r3, #23
    3582:	0dda      	lsrs	r2, r3, #23
    3584:	4b0a      	ldr	r3, [pc, #40]	; (35b0 <mdb_fifo_write+0x80>)
    3586:	601a      	str	r2, [r3, #0]
    3588:	697b      	ldr	r3, [r7, #20]
    358a:	3301      	adds	r3, #1
    358c:	617b      	str	r3, [r7, #20]
    358e:	697a      	ldr	r2, [r7, #20]
    3590:	683b      	ldr	r3, [r7, #0]
    3592:	429a      	cmp	r2, r3
    3594:	dbe9      	blt.n	356a <mdb_fifo_write+0x3a>
    3596:	4b05      	ldr	r3, [pc, #20]	; (35ac <mdb_fifo_write+0x7c>)
    3598:	681b      	ldr	r3, [r3, #0]
    359a:	0018      	movs	r0, r3
    359c:	f003 f9ac 	bl	68f8 <osMutexRelease>
    35a0:	683b      	ldr	r3, [r7, #0]
    35a2:	0018      	movs	r0, r3
    35a4:	46bd      	mov	sp, r7
    35a6:	b006      	add	sp, #24
    35a8:	bd80      	pop	{r7, pc}
    35aa:	46c0      	nop			; (mov r8, r8)
    35ac:	20000890 	.word	0x20000890
    35b0:	20005d60 	.word	0x20005d60
    35b4:	20005d64 	.word	0x20005d64
    35b8:	20005b60 	.word	0x20005b60

000035bc <mdb_get_testparam>:
    35bc:	b5b0      	push	{r4, r5, r7, lr}
    35be:	b086      	sub	sp, #24
    35c0:	af00      	add	r7, sp, #0
    35c2:	6078      	str	r0, [r7, #4]
    35c4:	4b84      	ldr	r3, [pc, #528]	; (37d8 <mdb_get_testparam+0x21c>)
    35c6:	885b      	ldrh	r3, [r3, #2]
    35c8:	041b      	lsls	r3, r3, #16
    35ca:	4a83      	ldr	r2, [pc, #524]	; (37d8 <mdb_get_testparam+0x21c>)
    35cc:	8892      	ldrh	r2, [r2, #4]
    35ce:	4313      	orrs	r3, r2
    35d0:	001a      	movs	r2, r3
    35d2:	687b      	ldr	r3, [r7, #4]
    35d4:	21ff      	movs	r1, #255	; 0xff
    35d6:	4011      	ands	r1, r2
    35d8:	000c      	movs	r4, r1
    35da:	7819      	ldrb	r1, [r3, #0]
    35dc:	2000      	movs	r0, #0
    35de:	4001      	ands	r1, r0
    35e0:	1c08      	adds	r0, r1, #0
    35e2:	1c21      	adds	r1, r4, #0
    35e4:	4301      	orrs	r1, r0
    35e6:	7019      	strb	r1, [r3, #0]
    35e8:	0a11      	lsrs	r1, r2, #8
    35ea:	20ff      	movs	r0, #255	; 0xff
    35ec:	4001      	ands	r1, r0
    35ee:	000c      	movs	r4, r1
    35f0:	7859      	ldrb	r1, [r3, #1]
    35f2:	2000      	movs	r0, #0
    35f4:	4001      	ands	r1, r0
    35f6:	1c08      	adds	r0, r1, #0
    35f8:	1c21      	adds	r1, r4, #0
    35fa:	4301      	orrs	r1, r0
    35fc:	7059      	strb	r1, [r3, #1]
    35fe:	0c11      	lsrs	r1, r2, #16
    3600:	20ff      	movs	r0, #255	; 0xff
    3602:	4001      	ands	r1, r0
    3604:	000c      	movs	r4, r1
    3606:	7899      	ldrb	r1, [r3, #2]
    3608:	2000      	movs	r0, #0
    360a:	4001      	ands	r1, r0
    360c:	1c08      	adds	r0, r1, #0
    360e:	1c21      	adds	r1, r4, #0
    3610:	4301      	orrs	r1, r0
    3612:	7099      	strb	r1, [r3, #2]
    3614:	0e10      	lsrs	r0, r2, #24
    3616:	78da      	ldrb	r2, [r3, #3]
    3618:	2100      	movs	r1, #0
    361a:	400a      	ands	r2, r1
    361c:	1c11      	adds	r1, r2, #0
    361e:	1c02      	adds	r2, r0, #0
    3620:	430a      	orrs	r2, r1
    3622:	70da      	strb	r2, [r3, #3]
    3624:	4b6c      	ldr	r3, [pc, #432]	; (37d8 <mdb_get_testparam+0x21c>)
    3626:	88db      	ldrh	r3, [r3, #6]
    3628:	041b      	lsls	r3, r3, #16
    362a:	4a6b      	ldr	r2, [pc, #428]	; (37d8 <mdb_get_testparam+0x21c>)
    362c:	8912      	ldrh	r2, [r2, #8]
    362e:	4313      	orrs	r3, r2
    3630:	001a      	movs	r2, r3
    3632:	687b      	ldr	r3, [r7, #4]
    3634:	21ff      	movs	r1, #255	; 0xff
    3636:	4011      	ands	r1, r2
    3638:	000c      	movs	r4, r1
    363a:	7919      	ldrb	r1, [r3, #4]
    363c:	2000      	movs	r0, #0
    363e:	4001      	ands	r1, r0
    3640:	1c08      	adds	r0, r1, #0
    3642:	1c21      	adds	r1, r4, #0
    3644:	4301      	orrs	r1, r0
    3646:	7119      	strb	r1, [r3, #4]
    3648:	0a11      	lsrs	r1, r2, #8
    364a:	20ff      	movs	r0, #255	; 0xff
    364c:	4001      	ands	r1, r0
    364e:	000c      	movs	r4, r1
    3650:	7959      	ldrb	r1, [r3, #5]
    3652:	2000      	movs	r0, #0
    3654:	4001      	ands	r1, r0
    3656:	1c08      	adds	r0, r1, #0
    3658:	1c21      	adds	r1, r4, #0
    365a:	4301      	orrs	r1, r0
    365c:	7159      	strb	r1, [r3, #5]
    365e:	0c11      	lsrs	r1, r2, #16
    3660:	20ff      	movs	r0, #255	; 0xff
    3662:	4001      	ands	r1, r0
    3664:	000c      	movs	r4, r1
    3666:	7999      	ldrb	r1, [r3, #6]
    3668:	2000      	movs	r0, #0
    366a:	4001      	ands	r1, r0
    366c:	1c08      	adds	r0, r1, #0
    366e:	1c21      	adds	r1, r4, #0
    3670:	4301      	orrs	r1, r0
    3672:	7199      	strb	r1, [r3, #6]
    3674:	0e10      	lsrs	r0, r2, #24
    3676:	79da      	ldrb	r2, [r3, #7]
    3678:	2100      	movs	r1, #0
    367a:	400a      	ands	r2, r1
    367c:	1c11      	adds	r1, r2, #0
    367e:	1c02      	adds	r2, r0, #0
    3680:	430a      	orrs	r2, r1
    3682:	71da      	strb	r2, [r3, #7]
    3684:	4b54      	ldr	r3, [pc, #336]	; (37d8 <mdb_get_testparam+0x21c>)
    3686:	895b      	ldrh	r3, [r3, #10]
    3688:	041b      	lsls	r3, r3, #16
    368a:	4a53      	ldr	r2, [pc, #332]	; (37d8 <mdb_get_testparam+0x21c>)
    368c:	8992      	ldrh	r2, [r2, #12]
    368e:	4313      	orrs	r3, r2
    3690:	001a      	movs	r2, r3
    3692:	687b      	ldr	r3, [r7, #4]
    3694:	21ff      	movs	r1, #255	; 0xff
    3696:	4011      	ands	r1, r2
    3698:	000c      	movs	r4, r1
    369a:	7a19      	ldrb	r1, [r3, #8]
    369c:	2000      	movs	r0, #0
    369e:	4001      	ands	r1, r0
    36a0:	1c08      	adds	r0, r1, #0
    36a2:	1c21      	adds	r1, r4, #0
    36a4:	4301      	orrs	r1, r0
    36a6:	7219      	strb	r1, [r3, #8]
    36a8:	0a11      	lsrs	r1, r2, #8
    36aa:	20ff      	movs	r0, #255	; 0xff
    36ac:	4001      	ands	r1, r0
    36ae:	000c      	movs	r4, r1
    36b0:	7a59      	ldrb	r1, [r3, #9]
    36b2:	2000      	movs	r0, #0
    36b4:	4001      	ands	r1, r0
    36b6:	1c08      	adds	r0, r1, #0
    36b8:	1c21      	adds	r1, r4, #0
    36ba:	4301      	orrs	r1, r0
    36bc:	7259      	strb	r1, [r3, #9]
    36be:	0c11      	lsrs	r1, r2, #16
    36c0:	20ff      	movs	r0, #255	; 0xff
    36c2:	4001      	ands	r1, r0
    36c4:	000c      	movs	r4, r1
    36c6:	7a99      	ldrb	r1, [r3, #10]
    36c8:	2000      	movs	r0, #0
    36ca:	4001      	ands	r1, r0
    36cc:	1c08      	adds	r0, r1, #0
    36ce:	1c21      	adds	r1, r4, #0
    36d0:	4301      	orrs	r1, r0
    36d2:	7299      	strb	r1, [r3, #10]
    36d4:	0e10      	lsrs	r0, r2, #24
    36d6:	7ada      	ldrb	r2, [r3, #11]
    36d8:	2100      	movs	r1, #0
    36da:	400a      	ands	r2, r1
    36dc:	1c11      	adds	r1, r2, #0
    36de:	1c02      	adds	r2, r0, #0
    36e0:	430a      	orrs	r2, r1
    36e2:	72da      	strb	r2, [r3, #11]
    36e4:	4b3c      	ldr	r3, [pc, #240]	; (37d8 <mdb_get_testparam+0x21c>)
    36e6:	89db      	ldrh	r3, [r3, #14]
    36e8:	041b      	lsls	r3, r3, #16
    36ea:	4a3b      	ldr	r2, [pc, #236]	; (37d8 <mdb_get_testparam+0x21c>)
    36ec:	8a12      	ldrh	r2, [r2, #16]
    36ee:	4313      	orrs	r3, r2
    36f0:	001a      	movs	r2, r3
    36f2:	687b      	ldr	r3, [r7, #4]
    36f4:	21ff      	movs	r1, #255	; 0xff
    36f6:	4011      	ands	r1, r2
    36f8:	000c      	movs	r4, r1
    36fa:	7b19      	ldrb	r1, [r3, #12]
    36fc:	2000      	movs	r0, #0
    36fe:	4001      	ands	r1, r0
    3700:	1c08      	adds	r0, r1, #0
    3702:	1c21      	adds	r1, r4, #0
    3704:	4301      	orrs	r1, r0
    3706:	7319      	strb	r1, [r3, #12]
    3708:	0a11      	lsrs	r1, r2, #8
    370a:	20ff      	movs	r0, #255	; 0xff
    370c:	4001      	ands	r1, r0
    370e:	000c      	movs	r4, r1
    3710:	7b59      	ldrb	r1, [r3, #13]
    3712:	2000      	movs	r0, #0
    3714:	4001      	ands	r1, r0
    3716:	1c08      	adds	r0, r1, #0
    3718:	1c21      	adds	r1, r4, #0
    371a:	4301      	orrs	r1, r0
    371c:	7359      	strb	r1, [r3, #13]
    371e:	0c11      	lsrs	r1, r2, #16
    3720:	20ff      	movs	r0, #255	; 0xff
    3722:	4001      	ands	r1, r0
    3724:	000c      	movs	r4, r1
    3726:	7b99      	ldrb	r1, [r3, #14]
    3728:	2000      	movs	r0, #0
    372a:	4001      	ands	r1, r0
    372c:	1c08      	adds	r0, r1, #0
    372e:	1c21      	adds	r1, r4, #0
    3730:	4301      	orrs	r1, r0
    3732:	7399      	strb	r1, [r3, #14]
    3734:	0e10      	lsrs	r0, r2, #24
    3736:	7bda      	ldrb	r2, [r3, #15]
    3738:	2100      	movs	r1, #0
    373a:	400a      	ands	r2, r1
    373c:	1c11      	adds	r1, r2, #0
    373e:	1c02      	adds	r2, r0, #0
    3740:	430a      	orrs	r2, r1
    3742:	73da      	strb	r2, [r3, #15]
    3744:	4b25      	ldr	r3, [pc, #148]	; (37dc <mdb_get_testparam+0x220>)
    3746:	613b      	str	r3, [r7, #16]
    3748:	4b25      	ldr	r3, [pc, #148]	; (37e0 <mdb_get_testparam+0x224>)
    374a:	60fb      	str	r3, [r7, #12]
    374c:	2300      	movs	r3, #0
    374e:	617b      	str	r3, [r7, #20]
    3750:	e03a      	b.n	37c8 <mdb_get_testparam+0x20c>
    3752:	693b      	ldr	r3, [r7, #16]
    3754:	1c9a      	adds	r2, r3, #2
    3756:	613a      	str	r2, [r7, #16]
    3758:	8819      	ldrh	r1, [r3, #0]
    375a:	687a      	ldr	r2, [r7, #4]
    375c:	697b      	ldr	r3, [r7, #20]
    375e:	3308      	adds	r3, #8
    3760:	005b      	lsls	r3, r3, #1
    3762:	20ff      	movs	r0, #255	; 0xff
    3764:	4008      	ands	r0, r1
    3766:	0005      	movs	r5, r0
    3768:	5c98      	ldrb	r0, [r3, r2]
    376a:	2400      	movs	r4, #0
    376c:	4020      	ands	r0, r4
    376e:	1c04      	adds	r4, r0, #0
    3770:	1c28      	adds	r0, r5, #0
    3772:	4320      	orrs	r0, r4
    3774:	5498      	strb	r0, [r3, r2]
    3776:	0a09      	lsrs	r1, r1, #8
    3778:	b288      	uxth	r0, r1
    377a:	18d3      	adds	r3, r2, r3
    377c:	785a      	ldrb	r2, [r3, #1]
    377e:	2100      	movs	r1, #0
    3780:	400a      	ands	r2, r1
    3782:	1c11      	adds	r1, r2, #0
    3784:	1c02      	adds	r2, r0, #0
    3786:	430a      	orrs	r2, r1
    3788:	705a      	strb	r2, [r3, #1]
    378a:	68fb      	ldr	r3, [r7, #12]
    378c:	1c9a      	adds	r2, r3, #2
    378e:	60fa      	str	r2, [r7, #12]
    3790:	881a      	ldrh	r2, [r3, #0]
    3792:	6879      	ldr	r1, [r7, #4]
    3794:	697b      	ldr	r3, [r7, #20]
    3796:	330c      	adds	r3, #12
    3798:	005b      	lsls	r3, r3, #1
    379a:	18cb      	adds	r3, r1, r3
    379c:	21ff      	movs	r1, #255	; 0xff
    379e:	4011      	ands	r1, r2
    37a0:	000c      	movs	r4, r1
    37a2:	7899      	ldrb	r1, [r3, #2]
    37a4:	2000      	movs	r0, #0
    37a6:	4001      	ands	r1, r0
    37a8:	1c08      	adds	r0, r1, #0
    37aa:	1c21      	adds	r1, r4, #0
    37ac:	4301      	orrs	r1, r0
    37ae:	7099      	strb	r1, [r3, #2]
    37b0:	0a12      	lsrs	r2, r2, #8
    37b2:	b290      	uxth	r0, r2
    37b4:	78da      	ldrb	r2, [r3, #3]
    37b6:	2100      	movs	r1, #0
    37b8:	400a      	ands	r2, r1
    37ba:	1c11      	adds	r1, r2, #0
    37bc:	1c02      	adds	r2, r0, #0
    37be:	430a      	orrs	r2, r1
    37c0:	70da      	strb	r2, [r3, #3]
    37c2:	697b      	ldr	r3, [r7, #20]
    37c4:	3301      	adds	r3, #1
    37c6:	617b      	str	r3, [r7, #20]
    37c8:	697b      	ldr	r3, [r7, #20]
    37ca:	2b04      	cmp	r3, #4
    37cc:	ddc1      	ble.n	3752 <mdb_get_testparam+0x196>
    37ce:	46c0      	nop			; (mov r8, r8)
    37d0:	46bd      	mov	sp, r7
    37d2:	b006      	add	sp, #24
    37d4:	bdb0      	pop	{r4, r5, r7, pc}
    37d6:	46c0      	nop			; (mov r8, r8)
    37d8:	20005d68 	.word	0x20005d68
    37dc:	20005d7a 	.word	0x20005d7a
    37e0:	20005d84 	.word	0x20005d84

000037e4 <mdb_get_holding_register>:
    37e4:	b580      	push	{r7, lr}
    37e6:	b084      	sub	sp, #16
    37e8:	af00      	add	r7, sp, #0
    37ea:	6078      	str	r0, [r7, #4]
    37ec:	687b      	ldr	r3, [r7, #4]
    37ee:	2b00      	cmp	r3, #0
    37f0:	db02      	blt.n	37f8 <mdb_get_holding_register+0x14>
    37f2:	687b      	ldr	r3, [r7, #4]
    37f4:	2b25      	cmp	r3, #37	; 0x25
    37f6:	dd01      	ble.n	37fc <mdb_get_holding_register+0x18>
    37f8:	2300      	movs	r3, #0
    37fa:	e009      	b.n	3810 <mdb_get_holding_register+0x2c>
    37fc:	230e      	movs	r3, #14
    37fe:	18fb      	adds	r3, r7, r3
    3800:	4a05      	ldr	r2, [pc, #20]	; (3818 <mdb_get_holding_register+0x34>)
    3802:	6879      	ldr	r1, [r7, #4]
    3804:	0049      	lsls	r1, r1, #1
    3806:	5a8a      	ldrh	r2, [r1, r2]
    3808:	801a      	strh	r2, [r3, #0]
    380a:	230e      	movs	r3, #14
    380c:	18fb      	adds	r3, r7, r3
    380e:	881b      	ldrh	r3, [r3, #0]
    3810:	0018      	movs	r0, r3
    3812:	46bd      	mov	sp, r7
    3814:	b004      	add	sp, #16
    3816:	bd80      	pop	{r7, pc}
    3818:	20005d68 	.word	0x20005d68

0000381c <pdu_report_server_id>:
    381c:	b580      	push	{r7, lr}
    381e:	b086      	sub	sp, #24
    3820:	af00      	add	r7, sp, #0
    3822:	6078      	str	r0, [r7, #4]
    3824:	230f      	movs	r3, #15
    3826:	60fb      	str	r3, [r7, #12]
    3828:	4b1f      	ldr	r3, [pc, #124]	; (38a8 <pdu_report_server_id+0x8c>)
    382a:	681a      	ldr	r2, [r3, #0]
    382c:	687b      	ldr	r3, [r7, #4]
    382e:	18d2      	adds	r2, r2, r3
    3830:	230b      	movs	r3, #11
    3832:	18fb      	adds	r3, r7, r3
    3834:	7812      	ldrb	r2, [r2, #0]
    3836:	701a      	strb	r2, [r3, #0]
    3838:	687b      	ldr	r3, [r7, #4]
    383a:	617b      	str	r3, [r7, #20]
    383c:	697b      	ldr	r3, [r7, #20]
    383e:	1c5a      	adds	r2, r3, #1
    3840:	617a      	str	r2, [r7, #20]
    3842:	4a1a      	ldr	r2, [pc, #104]	; (38ac <pdu_report_server_id+0x90>)
    3844:	210b      	movs	r1, #11
    3846:	1879      	adds	r1, r7, r1
    3848:	7809      	ldrb	r1, [r1, #0]
    384a:	54d1      	strb	r1, [r2, r3]
    384c:	697b      	ldr	r3, [r7, #20]
    384e:	1c5a      	adds	r2, r3, #1
    3850:	617a      	str	r2, [r7, #20]
    3852:	68fa      	ldr	r2, [r7, #12]
    3854:	b2d2      	uxtb	r2, r2
    3856:	3202      	adds	r2, #2
    3858:	b2d1      	uxtb	r1, r2
    385a:	4a14      	ldr	r2, [pc, #80]	; (38ac <pdu_report_server_id+0x90>)
    385c:	54d1      	strb	r1, [r2, r3]
    385e:	697b      	ldr	r3, [r7, #20]
    3860:	1c5a      	adds	r2, r3, #1
    3862:	617a      	str	r2, [r7, #20]
    3864:	4a11      	ldr	r2, [pc, #68]	; (38ac <pdu_report_server_id+0x90>)
    3866:	2111      	movs	r1, #17
    3868:	54d1      	strb	r1, [r2, r3]
    386a:	697b      	ldr	r3, [r7, #20]
    386c:	1c5a      	adds	r2, r3, #1
    386e:	617a      	str	r2, [r7, #20]
    3870:	4a0e      	ldr	r2, [pc, #56]	; (38ac <pdu_report_server_id+0x90>)
    3872:	21ff      	movs	r1, #255	; 0xff
    3874:	54d1      	strb	r1, [r2, r3]
    3876:	2300      	movs	r3, #0
    3878:	613b      	str	r3, [r7, #16]
    387a:	e00b      	b.n	3894 <pdu_report_server_id+0x78>
    387c:	697b      	ldr	r3, [r7, #20]
    387e:	1c5a      	adds	r2, r3, #1
    3880:	617a      	str	r2, [r7, #20]
    3882:	490b      	ldr	r1, [pc, #44]	; (38b0 <pdu_report_server_id+0x94>)
    3884:	693a      	ldr	r2, [r7, #16]
    3886:	188a      	adds	r2, r1, r2
    3888:	7811      	ldrb	r1, [r2, #0]
    388a:	4a08      	ldr	r2, [pc, #32]	; (38ac <pdu_report_server_id+0x90>)
    388c:	54d1      	strb	r1, [r2, r3]
    388e:	693b      	ldr	r3, [r7, #16]
    3890:	3301      	adds	r3, #1
    3892:	613b      	str	r3, [r7, #16]
    3894:	693a      	ldr	r2, [r7, #16]
    3896:	68fb      	ldr	r3, [r7, #12]
    3898:	429a      	cmp	r2, r3
    389a:	dbef      	blt.n	387c <pdu_report_server_id+0x60>
    389c:	697b      	ldr	r3, [r7, #20]
    389e:	0018      	movs	r0, r3
    38a0:	46bd      	mov	sp, r7
    38a2:	b006      	add	sp, #24
    38a4:	bd80      	pop	{r7, pc}
    38a6:	46c0      	nop			; (mov r8, r8)
    38a8:	20005db8 	.word	0x20005db8
    38ac:	20005dbc 	.word	0x20005dbc
    38b0:	000091c8 	.word	0x000091c8

000038b4 <pdu_read_input_registers>:
    38b4:	b580      	push	{r7, lr}
    38b6:	b086      	sub	sp, #24
    38b8:	af00      	add	r7, sp, #0
    38ba:	6078      	str	r0, [r7, #4]
    38bc:	4b4e      	ldr	r3, [pc, #312]	; (39f8 <pdu_read_input_registers+0x144>)
    38be:	681a      	ldr	r2, [r3, #0]
    38c0:	687b      	ldr	r3, [r7, #4]
    38c2:	18d2      	adds	r2, r2, r3
    38c4:	230f      	movs	r3, #15
    38c6:	18fb      	adds	r3, r7, r3
    38c8:	7812      	ldrb	r2, [r2, #0]
    38ca:	701a      	strb	r2, [r3, #0]
    38cc:	4b4a      	ldr	r3, [pc, #296]	; (39f8 <pdu_read_input_registers+0x144>)
    38ce:	681a      	ldr	r2, [r3, #0]
    38d0:	687b      	ldr	r3, [r7, #4]
    38d2:	3301      	adds	r3, #1
    38d4:	18d3      	adds	r3, r2, r3
    38d6:	781b      	ldrb	r3, [r3, #0]
    38d8:	021b      	lsls	r3, r3, #8
    38da:	b21a      	sxth	r2, r3
    38dc:	4b46      	ldr	r3, [pc, #280]	; (39f8 <pdu_read_input_registers+0x144>)
    38de:	6819      	ldr	r1, [r3, #0]
    38e0:	687b      	ldr	r3, [r7, #4]
    38e2:	3302      	adds	r3, #2
    38e4:	18cb      	adds	r3, r1, r3
    38e6:	781b      	ldrb	r3, [r3, #0]
    38e8:	b21b      	sxth	r3, r3
    38ea:	4313      	orrs	r3, r2
    38ec:	b21a      	sxth	r2, r3
    38ee:	230c      	movs	r3, #12
    38f0:	18fb      	adds	r3, r7, r3
    38f2:	801a      	strh	r2, [r3, #0]
    38f4:	4b40      	ldr	r3, [pc, #256]	; (39f8 <pdu_read_input_registers+0x144>)
    38f6:	681a      	ldr	r2, [r3, #0]
    38f8:	687b      	ldr	r3, [r7, #4]
    38fa:	3303      	adds	r3, #3
    38fc:	18d3      	adds	r3, r2, r3
    38fe:	781b      	ldrb	r3, [r3, #0]
    3900:	021b      	lsls	r3, r3, #8
    3902:	b21a      	sxth	r2, r3
    3904:	4b3c      	ldr	r3, [pc, #240]	; (39f8 <pdu_read_input_registers+0x144>)
    3906:	6819      	ldr	r1, [r3, #0]
    3908:	687b      	ldr	r3, [r7, #4]
    390a:	3304      	adds	r3, #4
    390c:	18cb      	adds	r3, r1, r3
    390e:	781b      	ldrb	r3, [r3, #0]
    3910:	b21b      	sxth	r3, r3
    3912:	4313      	orrs	r3, r2
    3914:	b21a      	sxth	r2, r3
    3916:	230a      	movs	r3, #10
    3918:	18fb      	adds	r3, r7, r3
    391a:	801a      	strh	r2, [r3, #0]
    391c:	230c      	movs	r3, #12
    391e:	18fb      	adds	r3, r7, r3
    3920:	881b      	ldrh	r3, [r3, #0]
    3922:	2bff      	cmp	r3, #255	; 0xff
    3924:	d90a      	bls.n	393c <pdu_read_input_registers+0x88>
    3926:	230c      	movs	r3, #12
    3928:	18fb      	adds	r3, r7, r3
    392a:	881a      	ldrh	r2, [r3, #0]
    392c:	230a      	movs	r3, #10
    392e:	18fb      	adds	r3, r7, r3
    3930:	881b      	ldrh	r3, [r3, #0]
    3932:	18d2      	adds	r2, r2, r3
    3934:	2382      	movs	r3, #130	; 0x82
    3936:	005b      	lsls	r3, r3, #1
    3938:	429a      	cmp	r2, r3
    393a:	dd15      	ble.n	3968 <pdu_read_input_registers+0xb4>
    393c:	687b      	ldr	r3, [r7, #4]
    393e:	613b      	str	r3, [r7, #16]
    3940:	693b      	ldr	r3, [r7, #16]
    3942:	1c5a      	adds	r2, r3, #1
    3944:	613a      	str	r2, [r7, #16]
    3946:	220f      	movs	r2, #15
    3948:	18ba      	adds	r2, r7, r2
    394a:	7812      	ldrb	r2, [r2, #0]
    394c:	2180      	movs	r1, #128	; 0x80
    394e:	4249      	negs	r1, r1
    3950:	430a      	orrs	r2, r1
    3952:	b2d1      	uxtb	r1, r2
    3954:	4a29      	ldr	r2, [pc, #164]	; (39fc <pdu_read_input_registers+0x148>)
    3956:	54d1      	strb	r1, [r2, r3]
    3958:	693b      	ldr	r3, [r7, #16]
    395a:	1c5a      	adds	r2, r3, #1
    395c:	613a      	str	r2, [r7, #16]
    395e:	4a27      	ldr	r2, [pc, #156]	; (39fc <pdu_read_input_registers+0x148>)
    3960:	2102      	movs	r1, #2
    3962:	54d1      	strb	r1, [r2, r3]
    3964:	693b      	ldr	r3, [r7, #16]
    3966:	e042      	b.n	39ee <pdu_read_input_registers+0x13a>
    3968:	687b      	ldr	r3, [r7, #4]
    396a:	613b      	str	r3, [r7, #16]
    396c:	693b      	ldr	r3, [r7, #16]
    396e:	1c5a      	adds	r2, r3, #1
    3970:	613a      	str	r2, [r7, #16]
    3972:	4a22      	ldr	r2, [pc, #136]	; (39fc <pdu_read_input_registers+0x148>)
    3974:	210f      	movs	r1, #15
    3976:	1879      	adds	r1, r7, r1
    3978:	7809      	ldrb	r1, [r1, #0]
    397a:	54d1      	strb	r1, [r2, r3]
    397c:	693b      	ldr	r3, [r7, #16]
    397e:	1c5a      	adds	r2, r3, #1
    3980:	613a      	str	r2, [r7, #16]
    3982:	220a      	movs	r2, #10
    3984:	18ba      	adds	r2, r7, r2
    3986:	8812      	ldrh	r2, [r2, #0]
    3988:	b2d2      	uxtb	r2, r2
    398a:	1892      	adds	r2, r2, r2
    398c:	b2d1      	uxtb	r1, r2
    398e:	4a1b      	ldr	r2, [pc, #108]	; (39fc <pdu_read_input_registers+0x148>)
    3990:	54d1      	strb	r1, [r2, r3]
    3992:	2300      	movs	r3, #0
    3994:	617b      	str	r3, [r7, #20]
    3996:	e023      	b.n	39e0 <pdu_read_input_registers+0x12c>
    3998:	230c      	movs	r3, #12
    399a:	18fb      	adds	r3, r7, r3
    399c:	881b      	ldrh	r3, [r3, #0]
    399e:	1e5a      	subs	r2, r3, #1
    39a0:	3aff      	subs	r2, #255	; 0xff
    39a2:	697b      	ldr	r3, [r7, #20]
    39a4:	18d1      	adds	r1, r2, r3
    39a6:	2308      	movs	r3, #8
    39a8:	18fb      	adds	r3, r7, r3
    39aa:	4a15      	ldr	r2, [pc, #84]	; (3a00 <pdu_read_input_registers+0x14c>)
    39ac:	0049      	lsls	r1, r1, #1
    39ae:	5a8a      	ldrh	r2, [r1, r2]
    39b0:	801a      	strh	r2, [r3, #0]
    39b2:	693b      	ldr	r3, [r7, #16]
    39b4:	1c5a      	adds	r2, r3, #1
    39b6:	613a      	str	r2, [r7, #16]
    39b8:	2208      	movs	r2, #8
    39ba:	18ba      	adds	r2, r7, r2
    39bc:	8812      	ldrh	r2, [r2, #0]
    39be:	0a12      	lsrs	r2, r2, #8
    39c0:	b292      	uxth	r2, r2
    39c2:	b2d1      	uxtb	r1, r2
    39c4:	4a0d      	ldr	r2, [pc, #52]	; (39fc <pdu_read_input_registers+0x148>)
    39c6:	54d1      	strb	r1, [r2, r3]
    39c8:	693b      	ldr	r3, [r7, #16]
    39ca:	1c5a      	adds	r2, r3, #1
    39cc:	613a      	str	r2, [r7, #16]
    39ce:	2208      	movs	r2, #8
    39d0:	18ba      	adds	r2, r7, r2
    39d2:	8812      	ldrh	r2, [r2, #0]
    39d4:	b2d1      	uxtb	r1, r2
    39d6:	4a09      	ldr	r2, [pc, #36]	; (39fc <pdu_read_input_registers+0x148>)
    39d8:	54d1      	strb	r1, [r2, r3]
    39da:	697b      	ldr	r3, [r7, #20]
    39dc:	3301      	adds	r3, #1
    39de:	617b      	str	r3, [r7, #20]
    39e0:	230a      	movs	r3, #10
    39e2:	18fb      	adds	r3, r7, r3
    39e4:	881a      	ldrh	r2, [r3, #0]
    39e6:	697b      	ldr	r3, [r7, #20]
    39e8:	429a      	cmp	r2, r3
    39ea:	dcd5      	bgt.n	3998 <pdu_read_input_registers+0xe4>
    39ec:	693b      	ldr	r3, [r7, #16]
    39ee:	0018      	movs	r0, r3
    39f0:	46bd      	mov	sp, r7
    39f2:	b006      	add	sp, #24
    39f4:	bd80      	pop	{r7, pc}
    39f6:	46c0      	nop			; (mov r8, r8)
    39f8:	20005db8 	.word	0x20005db8
    39fc:	20005dbc 	.word	0x20005dbc
    3a00:	20000010 	.word	0x20000010

00003a04 <pdu_write_multiply_registers>:
    3a04:	b580      	push	{r7, lr}
    3a06:	b08a      	sub	sp, #40	; 0x28
    3a08:	af00      	add	r7, sp, #0
    3a0a:	6078      	str	r0, [r7, #4]
    3a0c:	4b64      	ldr	r3, [pc, #400]	; (3ba0 <pdu_write_multiply_registers+0x19c>)
    3a0e:	681a      	ldr	r2, [r3, #0]
    3a10:	687b      	ldr	r3, [r7, #4]
    3a12:	18d2      	adds	r2, r2, r3
    3a14:	231f      	movs	r3, #31
    3a16:	18fb      	adds	r3, r7, r3
    3a18:	7812      	ldrb	r2, [r2, #0]
    3a1a:	701a      	strb	r2, [r3, #0]
    3a1c:	4b60      	ldr	r3, [pc, #384]	; (3ba0 <pdu_write_multiply_registers+0x19c>)
    3a1e:	681a      	ldr	r2, [r3, #0]
    3a20:	687b      	ldr	r3, [r7, #4]
    3a22:	3301      	adds	r3, #1
    3a24:	18d3      	adds	r3, r2, r3
    3a26:	781b      	ldrb	r3, [r3, #0]
    3a28:	021b      	lsls	r3, r3, #8
    3a2a:	b21a      	sxth	r2, r3
    3a2c:	4b5c      	ldr	r3, [pc, #368]	; (3ba0 <pdu_write_multiply_registers+0x19c>)
    3a2e:	6819      	ldr	r1, [r3, #0]
    3a30:	687b      	ldr	r3, [r7, #4]
    3a32:	3302      	adds	r3, #2
    3a34:	18cb      	adds	r3, r1, r3
    3a36:	781b      	ldrb	r3, [r3, #0]
    3a38:	b21b      	sxth	r3, r3
    3a3a:	4313      	orrs	r3, r2
    3a3c:	b21a      	sxth	r2, r3
    3a3e:	231c      	movs	r3, #28
    3a40:	18fb      	adds	r3, r7, r3
    3a42:	801a      	strh	r2, [r3, #0]
    3a44:	4b56      	ldr	r3, [pc, #344]	; (3ba0 <pdu_write_multiply_registers+0x19c>)
    3a46:	681a      	ldr	r2, [r3, #0]
    3a48:	687b      	ldr	r3, [r7, #4]
    3a4a:	3303      	adds	r3, #3
    3a4c:	18d3      	adds	r3, r2, r3
    3a4e:	781b      	ldrb	r3, [r3, #0]
    3a50:	021b      	lsls	r3, r3, #8
    3a52:	b21a      	sxth	r2, r3
    3a54:	4b52      	ldr	r3, [pc, #328]	; (3ba0 <pdu_write_multiply_registers+0x19c>)
    3a56:	6819      	ldr	r1, [r3, #0]
    3a58:	687b      	ldr	r3, [r7, #4]
    3a5a:	3304      	adds	r3, #4
    3a5c:	18cb      	adds	r3, r1, r3
    3a5e:	781b      	ldrb	r3, [r3, #0]
    3a60:	b21b      	sxth	r3, r3
    3a62:	4313      	orrs	r3, r2
    3a64:	b21a      	sxth	r2, r3
    3a66:	231a      	movs	r3, #26
    3a68:	18fb      	adds	r3, r7, r3
    3a6a:	801a      	strh	r2, [r3, #0]
    3a6c:	4b4c      	ldr	r3, [pc, #304]	; (3ba0 <pdu_write_multiply_registers+0x19c>)
    3a6e:	681a      	ldr	r2, [r3, #0]
    3a70:	687b      	ldr	r3, [r7, #4]
    3a72:	3305      	adds	r3, #5
    3a74:	18d2      	adds	r2, r2, r3
    3a76:	2319      	movs	r3, #25
    3a78:	18fb      	adds	r3, r7, r3
    3a7a:	7812      	ldrb	r2, [r2, #0]
    3a7c:	701a      	strb	r2, [r3, #0]
    3a7e:	231c      	movs	r3, #28
    3a80:	18fb      	adds	r3, r7, r3
    3a82:	881a      	ldrh	r2, [r3, #0]
    3a84:	231a      	movs	r3, #26
    3a86:	18fb      	adds	r3, r7, r3
    3a88:	881b      	ldrh	r3, [r3, #0]
    3a8a:	18d3      	adds	r3, r2, r3
    3a8c:	2b26      	cmp	r3, #38	; 0x26
    3a8e:	dd14      	ble.n	3aba <pdu_write_multiply_registers+0xb6>
    3a90:	687b      	ldr	r3, [r7, #4]
    3a92:	623b      	str	r3, [r7, #32]
    3a94:	6a3b      	ldr	r3, [r7, #32]
    3a96:	1c5a      	adds	r2, r3, #1
    3a98:	623a      	str	r2, [r7, #32]
    3a9a:	221f      	movs	r2, #31
    3a9c:	18ba      	adds	r2, r7, r2
    3a9e:	7812      	ldrb	r2, [r2, #0]
    3aa0:	2180      	movs	r1, #128	; 0x80
    3aa2:	4249      	negs	r1, r1
    3aa4:	430a      	orrs	r2, r1
    3aa6:	b2d1      	uxtb	r1, r2
    3aa8:	4a3e      	ldr	r2, [pc, #248]	; (3ba4 <pdu_write_multiply_registers+0x1a0>)
    3aaa:	54d1      	strb	r1, [r2, r3]
    3aac:	6a3b      	ldr	r3, [r7, #32]
    3aae:	1c5a      	adds	r2, r3, #1
    3ab0:	623a      	str	r2, [r7, #32]
    3ab2:	4a3c      	ldr	r2, [pc, #240]	; (3ba4 <pdu_write_multiply_registers+0x1a0>)
    3ab4:	2102      	movs	r1, #2
    3ab6:	54d1      	strb	r1, [r2, r3]
    3ab8:	e04b      	b.n	3b52 <pdu_write_multiply_registers+0x14e>
    3aba:	687b      	ldr	r3, [r7, #4]
    3abc:	3306      	adds	r3, #6
    3abe:	623b      	str	r3, [r7, #32]
    3ac0:	2300      	movs	r3, #0
    3ac2:	627b      	str	r3, [r7, #36]	; 0x24
    3ac4:	e028      	b.n	3b18 <pdu_write_multiply_registers+0x114>
    3ac6:	4b36      	ldr	r3, [pc, #216]	; (3ba0 <pdu_write_multiply_registers+0x19c>)
    3ac8:	681a      	ldr	r2, [r3, #0]
    3aca:	6a3b      	ldr	r3, [r7, #32]
    3acc:	1c59      	adds	r1, r3, #1
    3ace:	6239      	str	r1, [r7, #32]
    3ad0:	18d3      	adds	r3, r2, r3
    3ad2:	781b      	ldrb	r3, [r3, #0]
    3ad4:	b29a      	uxth	r2, r3
    3ad6:	2316      	movs	r3, #22
    3ad8:	18fb      	adds	r3, r7, r3
    3ada:	0212      	lsls	r2, r2, #8
    3adc:	801a      	strh	r2, [r3, #0]
    3ade:	4b30      	ldr	r3, [pc, #192]	; (3ba0 <pdu_write_multiply_registers+0x19c>)
    3ae0:	681a      	ldr	r2, [r3, #0]
    3ae2:	6a3b      	ldr	r3, [r7, #32]
    3ae4:	1c59      	adds	r1, r3, #1
    3ae6:	6239      	str	r1, [r7, #32]
    3ae8:	18d3      	adds	r3, r2, r3
    3aea:	781b      	ldrb	r3, [r3, #0]
    3aec:	b299      	uxth	r1, r3
    3aee:	2316      	movs	r3, #22
    3af0:	18fb      	adds	r3, r7, r3
    3af2:	2216      	movs	r2, #22
    3af4:	18ba      	adds	r2, r7, r2
    3af6:	8812      	ldrh	r2, [r2, #0]
    3af8:	430a      	orrs	r2, r1
    3afa:	801a      	strh	r2, [r3, #0]
    3afc:	231c      	movs	r3, #28
    3afe:	18fb      	adds	r3, r7, r3
    3b00:	881a      	ldrh	r2, [r3, #0]
    3b02:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3b04:	18d2      	adds	r2, r2, r3
    3b06:	4b28      	ldr	r3, [pc, #160]	; (3ba8 <pdu_write_multiply_registers+0x1a4>)
    3b08:	0052      	lsls	r2, r2, #1
    3b0a:	2116      	movs	r1, #22
    3b0c:	1879      	adds	r1, r7, r1
    3b0e:	8809      	ldrh	r1, [r1, #0]
    3b10:	52d1      	strh	r1, [r2, r3]
    3b12:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3b14:	3301      	adds	r3, #1
    3b16:	627b      	str	r3, [r7, #36]	; 0x24
    3b18:	231a      	movs	r3, #26
    3b1a:	18fb      	adds	r3, r7, r3
    3b1c:	881a      	ldrh	r2, [r3, #0]
    3b1e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3b20:	429a      	cmp	r2, r3
    3b22:	dcd0      	bgt.n	3ac6 <pdu_write_multiply_registers+0xc2>
    3b24:	687b      	ldr	r3, [r7, #4]
    3b26:	623b      	str	r3, [r7, #32]
    3b28:	687b      	ldr	r3, [r7, #4]
    3b2a:	627b      	str	r3, [r7, #36]	; 0x24
    3b2c:	e00c      	b.n	3b48 <pdu_write_multiply_registers+0x144>
    3b2e:	6a3b      	ldr	r3, [r7, #32]
    3b30:	1c5a      	adds	r2, r3, #1
    3b32:	623a      	str	r2, [r7, #32]
    3b34:	4a1a      	ldr	r2, [pc, #104]	; (3ba0 <pdu_write_multiply_registers+0x19c>)
    3b36:	6811      	ldr	r1, [r2, #0]
    3b38:	6a7a      	ldr	r2, [r7, #36]	; 0x24
    3b3a:	188a      	adds	r2, r1, r2
    3b3c:	7811      	ldrb	r1, [r2, #0]
    3b3e:	4a19      	ldr	r2, [pc, #100]	; (3ba4 <pdu_write_multiply_registers+0x1a0>)
    3b40:	54d1      	strb	r1, [r2, r3]
    3b42:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3b44:	3301      	adds	r3, #1
    3b46:	627b      	str	r3, [r7, #36]	; 0x24
    3b48:	687b      	ldr	r3, [r7, #4]
    3b4a:	1d5a      	adds	r2, r3, #5
    3b4c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3b4e:	429a      	cmp	r2, r3
    3b50:	dced      	bgt.n	3b2e <pdu_write_multiply_registers+0x12a>
    3b52:	231c      	movs	r3, #28
    3b54:	18fb      	adds	r3, r7, r3
    3b56:	881b      	ldrh	r3, [r3, #0]
    3b58:	2b00      	cmp	r3, #0
    3b5a:	d107      	bne.n	3b6c <pdu_write_multiply_registers+0x168>
    3b5c:	4b13      	ldr	r3, [pc, #76]	; (3bac <pdu_write_multiply_registers+0x1a8>)
    3b5e:	6818      	ldr	r0, [r3, #0]
    3b60:	4b11      	ldr	r3, [pc, #68]	; (3ba8 <pdu_write_multiply_registers+0x1a4>)
    3b62:	881b      	ldrh	r3, [r3, #0]
    3b64:	2200      	movs	r2, #0
    3b66:	0019      	movs	r1, r3
    3b68:	f003 f99e 	bl	6ea8 <osMessagePut>
    3b6c:	231c      	movs	r3, #28
    3b6e:	18fb      	adds	r3, r7, r3
    3b70:	881b      	ldrh	r3, [r3, #0]
    3b72:	2b20      	cmp	r3, #32
    3b74:	d10f      	bne.n	3b96 <pdu_write_multiply_registers+0x192>
    3b76:	4b0e      	ldr	r3, [pc, #56]	; (3bb0 <pdu_write_multiply_registers+0x1ac>)
    3b78:	210c      	movs	r1, #12
    3b7a:	0018      	movs	r0, r3
    3b7c:	f7ff fbd4 	bl	3328 <crc16>
    3b80:	1e03      	subs	r3, r0, #0
    3b82:	d108      	bne.n	3b96 <pdu_write_multiply_registers+0x192>
    3b84:	4b0a      	ldr	r3, [pc, #40]	; (3bb0 <pdu_write_multiply_registers+0x1ac>)
    3b86:	0018      	movs	r0, r3
    3b88:	f7ff fc32 	bl	33f0 <par_save>
    3b8c:	2308      	movs	r3, #8
    3b8e:	18fb      	adds	r3, r7, r3
    3b90:	0018      	movs	r0, r3
    3b92:	f7ff fc59 	bl	3448 <par_read>
    3b96:	6a3b      	ldr	r3, [r7, #32]
    3b98:	0018      	movs	r0, r3
    3b9a:	46bd      	mov	sp, r7
    3b9c:	b00a      	add	sp, #40	; 0x28
    3b9e:	bd80      	pop	{r7, pc}
    3ba0:	20005db8 	.word	0x20005db8
    3ba4:	20005dbc 	.word	0x20005dbc
    3ba8:	20005d68 	.word	0x20005d68
    3bac:	2000086c 	.word	0x2000086c
    3bb0:	20005da8 	.word	0x20005da8

00003bb4 <u16tobe>:
    3bb4:	b580      	push	{r7, lr}
    3bb6:	b082      	sub	sp, #8
    3bb8:	af00      	add	r7, sp, #0
    3bba:	0002      	movs	r2, r0
    3bbc:	6039      	str	r1, [r7, #0]
    3bbe:	1dbb      	adds	r3, r7, #6
    3bc0:	801a      	strh	r2, [r3, #0]
    3bc2:	683b      	ldr	r3, [r7, #0]
    3bc4:	1c5a      	adds	r2, r3, #1
    3bc6:	603a      	str	r2, [r7, #0]
    3bc8:	1dba      	adds	r2, r7, #6
    3bca:	8812      	ldrh	r2, [r2, #0]
    3bcc:	0a12      	lsrs	r2, r2, #8
    3bce:	b292      	uxth	r2, r2
    3bd0:	b2d2      	uxtb	r2, r2
    3bd2:	701a      	strb	r2, [r3, #0]
    3bd4:	683b      	ldr	r3, [r7, #0]
    3bd6:	1c5a      	adds	r2, r3, #1
    3bd8:	603a      	str	r2, [r7, #0]
    3bda:	1dba      	adds	r2, r7, #6
    3bdc:	8812      	ldrh	r2, [r2, #0]
    3bde:	b2d2      	uxtb	r2, r2
    3be0:	701a      	strb	r2, [r3, #0]
    3be2:	46c0      	nop			; (mov r8, r8)
    3be4:	46bd      	mov	sp, r7
    3be6:	b002      	add	sp, #8
    3be8:	bd80      	pop	{r7, pc}
    3bea:	46c0      	nop			; (mov r8, r8)

00003bec <u32tobe>:
    3bec:	b580      	push	{r7, lr}
    3bee:	b082      	sub	sp, #8
    3bf0:	af00      	add	r7, sp, #0
    3bf2:	6078      	str	r0, [r7, #4]
    3bf4:	6039      	str	r1, [r7, #0]
    3bf6:	683b      	ldr	r3, [r7, #0]
    3bf8:	1c5a      	adds	r2, r3, #1
    3bfa:	603a      	str	r2, [r7, #0]
    3bfc:	687a      	ldr	r2, [r7, #4]
    3bfe:	0e12      	lsrs	r2, r2, #24
    3c00:	b2d2      	uxtb	r2, r2
    3c02:	701a      	strb	r2, [r3, #0]
    3c04:	683b      	ldr	r3, [r7, #0]
    3c06:	1c5a      	adds	r2, r3, #1
    3c08:	603a      	str	r2, [r7, #0]
    3c0a:	687a      	ldr	r2, [r7, #4]
    3c0c:	0c12      	lsrs	r2, r2, #16
    3c0e:	b2d2      	uxtb	r2, r2
    3c10:	701a      	strb	r2, [r3, #0]
    3c12:	683b      	ldr	r3, [r7, #0]
    3c14:	1c5a      	adds	r2, r3, #1
    3c16:	603a      	str	r2, [r7, #0]
    3c18:	687a      	ldr	r2, [r7, #4]
    3c1a:	0a12      	lsrs	r2, r2, #8
    3c1c:	b2d2      	uxtb	r2, r2
    3c1e:	701a      	strb	r2, [r3, #0]
    3c20:	683b      	ldr	r3, [r7, #0]
    3c22:	1c5a      	adds	r2, r3, #1
    3c24:	603a      	str	r2, [r7, #0]
    3c26:	687a      	ldr	r2, [r7, #4]
    3c28:	b2d2      	uxtb	r2, r2
    3c2a:	701a      	strb	r2, [r3, #0]
    3c2c:	46c0      	nop			; (mov r8, r8)
    3c2e:	46bd      	mov	sp, r7
    3c30:	b002      	add	sp, #8
    3c32:	bd80      	pop	{r7, pc}

00003c34 <pdu_read_fifo_queue>:
    3c34:	b580      	push	{r7, lr}
    3c36:	b090      	sub	sp, #64	; 0x40
    3c38:	af00      	add	r7, sp, #0
    3c3a:	6078      	str	r0, [r7, #4]
    3c3c:	2336      	movs	r3, #54	; 0x36
    3c3e:	18fb      	adds	r3, r7, r3
    3c40:	2203      	movs	r2, #3
    3c42:	801a      	strh	r2, [r3, #0]
    3c44:	4b7c      	ldr	r3, [pc, #496]	; (3e38 <pdu_read_fifo_queue+0x204>)
    3c46:	681a      	ldr	r2, [r3, #0]
    3c48:	687b      	ldr	r3, [r7, #4]
    3c4a:	18d2      	adds	r2, r2, r3
    3c4c:	2335      	movs	r3, #53	; 0x35
    3c4e:	18fb      	adds	r3, r7, r3
    3c50:	7812      	ldrb	r2, [r2, #0]
    3c52:	701a      	strb	r2, [r3, #0]
    3c54:	4b78      	ldr	r3, [pc, #480]	; (3e38 <pdu_read_fifo_queue+0x204>)
    3c56:	681a      	ldr	r2, [r3, #0]
    3c58:	687b      	ldr	r3, [r7, #4]
    3c5a:	3301      	adds	r3, #1
    3c5c:	18d3      	adds	r3, r2, r3
    3c5e:	781b      	ldrb	r3, [r3, #0]
    3c60:	021b      	lsls	r3, r3, #8
    3c62:	b21a      	sxth	r2, r3
    3c64:	4b74      	ldr	r3, [pc, #464]	; (3e38 <pdu_read_fifo_queue+0x204>)
    3c66:	6819      	ldr	r1, [r3, #0]
    3c68:	687b      	ldr	r3, [r7, #4]
    3c6a:	3302      	adds	r3, #2
    3c6c:	18cb      	adds	r3, r1, r3
    3c6e:	781b      	ldrb	r3, [r3, #0]
    3c70:	b21b      	sxth	r3, r3
    3c72:	4313      	orrs	r3, r2
    3c74:	b21a      	sxth	r2, r3
    3c76:	2332      	movs	r3, #50	; 0x32
    3c78:	18fb      	adds	r3, r7, r3
    3c7a:	801a      	strh	r2, [r3, #0]
    3c7c:	2332      	movs	r3, #50	; 0x32
    3c7e:	18fb      	adds	r3, r7, r3
    3c80:	881a      	ldrh	r2, [r3, #0]
    3c82:	2380      	movs	r3, #128	; 0x80
    3c84:	009b      	lsls	r3, r3, #2
    3c86:	429a      	cmp	r2, r3
    3c88:	d014      	beq.n	3cb4 <pdu_read_fifo_queue+0x80>
    3c8a:	687b      	ldr	r3, [r7, #4]
    3c8c:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c8e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c90:	1c5a      	adds	r2, r3, #1
    3c92:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c94:	2235      	movs	r2, #53	; 0x35
    3c96:	18ba      	adds	r2, r7, r2
    3c98:	7812      	ldrb	r2, [r2, #0]
    3c9a:	2180      	movs	r1, #128	; 0x80
    3c9c:	4249      	negs	r1, r1
    3c9e:	430a      	orrs	r2, r1
    3ca0:	b2d1      	uxtb	r1, r2
    3ca2:	4a66      	ldr	r2, [pc, #408]	; (3e3c <pdu_read_fifo_queue+0x208>)
    3ca4:	54d1      	strb	r1, [r2, r3]
    3ca6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3ca8:	1c5a      	adds	r2, r3, #1
    3caa:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cac:	4a63      	ldr	r2, [pc, #396]	; (3e3c <pdu_read_fifo_queue+0x208>)
    3cae:	2102      	movs	r1, #2
    3cb0:	54d1      	strb	r1, [r2, r3]
    3cb2:	e0bb      	b.n	3e2c <pdu_read_fifo_queue+0x1f8>
    3cb4:	687b      	ldr	r3, [r7, #4]
    3cb6:	63fb      	str	r3, [r7, #60]	; 0x3c
    3cb8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cba:	1c5a      	adds	r2, r3, #1
    3cbc:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cbe:	4a5f      	ldr	r2, [pc, #380]	; (3e3c <pdu_read_fifo_queue+0x208>)
    3cc0:	2135      	movs	r1, #53	; 0x35
    3cc2:	1879      	adds	r1, r7, r1
    3cc4:	7809      	ldrb	r1, [r1, #0]
    3cc6:	54d1      	strb	r1, [r2, r3]
    3cc8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cca:	1c5a      	adds	r2, r3, #1
    3ccc:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cce:	4a5b      	ldr	r2, [pc, #364]	; (3e3c <pdu_read_fifo_queue+0x208>)
    3cd0:	2100      	movs	r1, #0
    3cd2:	54d1      	strb	r1, [r2, r3]
    3cd4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cd6:	1c5a      	adds	r2, r3, #1
    3cd8:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cda:	4a58      	ldr	r2, [pc, #352]	; (3e3c <pdu_read_fifo_queue+0x208>)
    3cdc:	2100      	movs	r1, #0
    3cde:	54d1      	strb	r1, [r2, r3]
    3ce0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3ce2:	1c5a      	adds	r2, r3, #1
    3ce4:	63fa      	str	r2, [r7, #60]	; 0x3c
    3ce6:	4a55      	ldr	r2, [pc, #340]	; (3e3c <pdu_read_fifo_queue+0x208>)
    3ce8:	2100      	movs	r1, #0
    3cea:	54d1      	strb	r1, [r2, r3]
    3cec:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cee:	1c5a      	adds	r2, r3, #1
    3cf0:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cf2:	4a52      	ldr	r2, [pc, #328]	; (3e3c <pdu_read_fifo_queue+0x208>)
    3cf4:	2100      	movs	r1, #0
    3cf6:	54d1      	strb	r1, [r2, r3]
    3cf8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cfa:	62fb      	str	r3, [r7, #44]	; 0x2c
    3cfc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3cfe:	4b4f      	ldr	r3, [pc, #316]	; (3e3c <pdu_read_fifo_queue+0x208>)
    3d00:	18d3      	adds	r3, r2, r3
    3d02:	63bb      	str	r3, [r7, #56]	; 0x38
    3d04:	e06e      	b.n	3de4 <pdu_read_fifo_queue+0x1b0>
    3d06:	2300      	movs	r3, #0
    3d08:	62bb      	str	r3, [r7, #40]	; 0x28
    3d0a:	2308      	movs	r3, #8
    3d0c:	18fb      	adds	r3, r7, r3
    3d0e:	2120      	movs	r1, #32
    3d10:	0018      	movs	r0, r3
    3d12:	f7ff fbc1 	bl	3498 <mdb_fifo_read>
    3d16:	0003      	movs	r3, r0
    3d18:	62bb      	str	r3, [r7, #40]	; 0x28
    3d1a:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3d1c:	2b00      	cmp	r3, #0
    3d1e:	d069      	beq.n	3df4 <pdu_read_fifo_queue+0x1c0>
    3d20:	2308      	movs	r3, #8
    3d22:	18fb      	adds	r3, r7, r3
    3d24:	681b      	ldr	r3, [r3, #0]
    3d26:	001a      	movs	r2, r3
    3d28:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d2a:	0019      	movs	r1, r3
    3d2c:	0010      	movs	r0, r2
    3d2e:	f7ff ff5d 	bl	3bec <u32tobe>
    3d32:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d34:	3304      	adds	r3, #4
    3d36:	63bb      	str	r3, [r7, #56]	; 0x38
    3d38:	2308      	movs	r3, #8
    3d3a:	18fb      	adds	r3, r7, r3
    3d3c:	685b      	ldr	r3, [r3, #4]
    3d3e:	001a      	movs	r2, r3
    3d40:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d42:	0019      	movs	r1, r3
    3d44:	0010      	movs	r0, r2
    3d46:	f7ff ff51 	bl	3bec <u32tobe>
    3d4a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d4c:	3304      	adds	r3, #4
    3d4e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d50:	2308      	movs	r3, #8
    3d52:	18fb      	adds	r3, r7, r3
    3d54:	689b      	ldr	r3, [r3, #8]
    3d56:	001a      	movs	r2, r3
    3d58:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d5a:	0019      	movs	r1, r3
    3d5c:	0010      	movs	r0, r2
    3d5e:	f7ff ff45 	bl	3bec <u32tobe>
    3d62:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d64:	3304      	adds	r3, #4
    3d66:	63bb      	str	r3, [r7, #56]	; 0x38
    3d68:	2308      	movs	r3, #8
    3d6a:	18fb      	adds	r3, r7, r3
    3d6c:	68db      	ldr	r3, [r3, #12]
    3d6e:	001a      	movs	r2, r3
    3d70:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d72:	0019      	movs	r1, r3
    3d74:	0010      	movs	r0, r2
    3d76:	f7ff ff39 	bl	3bec <u32tobe>
    3d7a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d7c:	3304      	adds	r3, #4
    3d7e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d80:	2308      	movs	r3, #8
    3d82:	18fb      	adds	r3, r7, r3
    3d84:	691b      	ldr	r3, [r3, #16]
    3d86:	001a      	movs	r2, r3
    3d88:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d8a:	0019      	movs	r1, r3
    3d8c:	0010      	movs	r0, r2
    3d8e:	f7ff ff2d 	bl	3bec <u32tobe>
    3d92:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d94:	3304      	adds	r3, #4
    3d96:	63bb      	str	r3, [r7, #56]	; 0x38
    3d98:	2308      	movs	r3, #8
    3d9a:	18fb      	adds	r3, r7, r3
    3d9c:	695b      	ldr	r3, [r3, #20]
    3d9e:	001a      	movs	r2, r3
    3da0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3da2:	0019      	movs	r1, r3
    3da4:	0010      	movs	r0, r2
    3da6:	f7ff ff21 	bl	3bec <u32tobe>
    3daa:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3dac:	3304      	adds	r3, #4
    3dae:	63bb      	str	r3, [r7, #56]	; 0x38
    3db0:	2308      	movs	r3, #8
    3db2:	18fb      	adds	r3, r7, r3
    3db4:	699b      	ldr	r3, [r3, #24]
    3db6:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3db8:	0011      	movs	r1, r2
    3dba:	0018      	movs	r0, r3
    3dbc:	f7ff ff16 	bl	3bec <u32tobe>
    3dc0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3dc2:	3304      	adds	r3, #4
    3dc4:	63bb      	str	r3, [r7, #56]	; 0x38
    3dc6:	2308      	movs	r3, #8
    3dc8:	18fb      	adds	r3, r7, r3
    3dca:	69db      	ldr	r3, [r3, #28]
    3dcc:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3dce:	0011      	movs	r1, r2
    3dd0:	0018      	movs	r0, r3
    3dd2:	f7ff ff0b 	bl	3bec <u32tobe>
    3dd6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3dd8:	3304      	adds	r3, #4
    3dda:	63bb      	str	r3, [r7, #56]	; 0x38
    3ddc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3dde:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3de0:	18d3      	adds	r3, r2, r3
    3de2:	63fb      	str	r3, [r7, #60]	; 0x3c
    3de4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3de6:	3320      	adds	r3, #32
    3de8:	001a      	movs	r2, r3
    3dea:	23fc      	movs	r3, #252	; 0xfc
    3dec:	33ff      	adds	r3, #255	; 0xff
    3dee:	429a      	cmp	r2, r3
    3df0:	d989      	bls.n	3d06 <pdu_read_fifo_queue+0xd2>
    3df2:	e000      	b.n	3df6 <pdu_read_fifo_queue+0x1c2>
    3df4:	46c0      	nop			; (mov r8, r8)
    3df6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3df8:	b29a      	uxth	r2, r3
    3dfa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3dfc:	b29b      	uxth	r3, r3
    3dfe:	1ad3      	subs	r3, r2, r3
    3e00:	b29b      	uxth	r3, r3
    3e02:	3302      	adds	r3, #2
    3e04:	b298      	uxth	r0, r3
    3e06:	687b      	ldr	r3, [r7, #4]
    3e08:	1c5a      	adds	r2, r3, #1
    3e0a:	4b0c      	ldr	r3, [pc, #48]	; (3e3c <pdu_read_fifo_queue+0x208>)
    3e0c:	18d3      	adds	r3, r2, r3
    3e0e:	0019      	movs	r1, r3
    3e10:	f7ff fed0 	bl	3bb4 <u16tobe>
    3e14:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3e16:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3e18:	1ad3      	subs	r3, r2, r3
    3e1a:	105b      	asrs	r3, r3, #1
    3e1c:	b298      	uxth	r0, r3
    3e1e:	687b      	ldr	r3, [r7, #4]
    3e20:	1cda      	adds	r2, r3, #3
    3e22:	4b06      	ldr	r3, [pc, #24]	; (3e3c <pdu_read_fifo_queue+0x208>)
    3e24:	18d3      	adds	r3, r2, r3
    3e26:	0019      	movs	r1, r3
    3e28:	f7ff fec4 	bl	3bb4 <u16tobe>
    3e2c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e2e:	0018      	movs	r0, r3
    3e30:	46bd      	mov	sp, r7
    3e32:	b010      	add	sp, #64	; 0x40
    3e34:	bd80      	pop	{r7, pc}
    3e36:	46c0      	nop			; (mov r8, r8)
    3e38:	20005db8 	.word	0x20005db8
    3e3c:	20005dbc 	.word	0x20005dbc

00003e40 <pdu_read_holding_registers>:
    3e40:	b580      	push	{r7, lr}
    3e42:	b086      	sub	sp, #24
    3e44:	af00      	add	r7, sp, #0
    3e46:	6078      	str	r0, [r7, #4]
    3e48:	4b49      	ldr	r3, [pc, #292]	; (3f70 <pdu_read_holding_registers+0x130>)
    3e4a:	681a      	ldr	r2, [r3, #0]
    3e4c:	687b      	ldr	r3, [r7, #4]
    3e4e:	18d2      	adds	r2, r2, r3
    3e50:	230f      	movs	r3, #15
    3e52:	18fb      	adds	r3, r7, r3
    3e54:	7812      	ldrb	r2, [r2, #0]
    3e56:	701a      	strb	r2, [r3, #0]
    3e58:	4b45      	ldr	r3, [pc, #276]	; (3f70 <pdu_read_holding_registers+0x130>)
    3e5a:	681a      	ldr	r2, [r3, #0]
    3e5c:	687b      	ldr	r3, [r7, #4]
    3e5e:	3301      	adds	r3, #1
    3e60:	18d3      	adds	r3, r2, r3
    3e62:	781b      	ldrb	r3, [r3, #0]
    3e64:	021b      	lsls	r3, r3, #8
    3e66:	b21a      	sxth	r2, r3
    3e68:	4b41      	ldr	r3, [pc, #260]	; (3f70 <pdu_read_holding_registers+0x130>)
    3e6a:	6819      	ldr	r1, [r3, #0]
    3e6c:	687b      	ldr	r3, [r7, #4]
    3e6e:	3302      	adds	r3, #2
    3e70:	18cb      	adds	r3, r1, r3
    3e72:	781b      	ldrb	r3, [r3, #0]
    3e74:	b21b      	sxth	r3, r3
    3e76:	4313      	orrs	r3, r2
    3e78:	b21a      	sxth	r2, r3
    3e7a:	230c      	movs	r3, #12
    3e7c:	18fb      	adds	r3, r7, r3
    3e7e:	801a      	strh	r2, [r3, #0]
    3e80:	4b3b      	ldr	r3, [pc, #236]	; (3f70 <pdu_read_holding_registers+0x130>)
    3e82:	681a      	ldr	r2, [r3, #0]
    3e84:	687b      	ldr	r3, [r7, #4]
    3e86:	3303      	adds	r3, #3
    3e88:	18d3      	adds	r3, r2, r3
    3e8a:	781b      	ldrb	r3, [r3, #0]
    3e8c:	021b      	lsls	r3, r3, #8
    3e8e:	b21a      	sxth	r2, r3
    3e90:	4b37      	ldr	r3, [pc, #220]	; (3f70 <pdu_read_holding_registers+0x130>)
    3e92:	6819      	ldr	r1, [r3, #0]
    3e94:	687b      	ldr	r3, [r7, #4]
    3e96:	3304      	adds	r3, #4
    3e98:	18cb      	adds	r3, r1, r3
    3e9a:	781b      	ldrb	r3, [r3, #0]
    3e9c:	b21b      	sxth	r3, r3
    3e9e:	4313      	orrs	r3, r2
    3ea0:	b21a      	sxth	r2, r3
    3ea2:	230a      	movs	r3, #10
    3ea4:	18fb      	adds	r3, r7, r3
    3ea6:	801a      	strh	r2, [r3, #0]
    3ea8:	230c      	movs	r3, #12
    3eaa:	18fb      	adds	r3, r7, r3
    3eac:	881a      	ldrh	r2, [r3, #0]
    3eae:	230a      	movs	r3, #10
    3eb0:	18fb      	adds	r3, r7, r3
    3eb2:	881b      	ldrh	r3, [r3, #0]
    3eb4:	18d3      	adds	r3, r2, r3
    3eb6:	2b26      	cmp	r3, #38	; 0x26
    3eb8:	dd14      	ble.n	3ee4 <pdu_read_holding_registers+0xa4>
    3eba:	687b      	ldr	r3, [r7, #4]
    3ebc:	613b      	str	r3, [r7, #16]
    3ebe:	693b      	ldr	r3, [r7, #16]
    3ec0:	1c5a      	adds	r2, r3, #1
    3ec2:	613a      	str	r2, [r7, #16]
    3ec4:	220f      	movs	r2, #15
    3ec6:	18ba      	adds	r2, r7, r2
    3ec8:	7812      	ldrb	r2, [r2, #0]
    3eca:	2180      	movs	r1, #128	; 0x80
    3ecc:	4249      	negs	r1, r1
    3ece:	430a      	orrs	r2, r1
    3ed0:	b2d1      	uxtb	r1, r2
    3ed2:	4a28      	ldr	r2, [pc, #160]	; (3f74 <pdu_read_holding_registers+0x134>)
    3ed4:	54d1      	strb	r1, [r2, r3]
    3ed6:	693b      	ldr	r3, [r7, #16]
    3ed8:	1c5a      	adds	r2, r3, #1
    3eda:	613a      	str	r2, [r7, #16]
    3edc:	4a25      	ldr	r2, [pc, #148]	; (3f74 <pdu_read_holding_registers+0x134>)
    3ede:	2102      	movs	r1, #2
    3ee0:	54d1      	strb	r1, [r2, r3]
    3ee2:	e03f      	b.n	3f64 <pdu_read_holding_registers+0x124>
    3ee4:	687b      	ldr	r3, [r7, #4]
    3ee6:	613b      	str	r3, [r7, #16]
    3ee8:	693b      	ldr	r3, [r7, #16]
    3eea:	1c5a      	adds	r2, r3, #1
    3eec:	613a      	str	r2, [r7, #16]
    3eee:	4a21      	ldr	r2, [pc, #132]	; (3f74 <pdu_read_holding_registers+0x134>)
    3ef0:	210f      	movs	r1, #15
    3ef2:	1879      	adds	r1, r7, r1
    3ef4:	7809      	ldrb	r1, [r1, #0]
    3ef6:	54d1      	strb	r1, [r2, r3]
    3ef8:	693b      	ldr	r3, [r7, #16]
    3efa:	1c5a      	adds	r2, r3, #1
    3efc:	613a      	str	r2, [r7, #16]
    3efe:	220a      	movs	r2, #10
    3f00:	18ba      	adds	r2, r7, r2
    3f02:	8812      	ldrh	r2, [r2, #0]
    3f04:	b2d2      	uxtb	r2, r2
    3f06:	1892      	adds	r2, r2, r2
    3f08:	b2d1      	uxtb	r1, r2
    3f0a:	4a1a      	ldr	r2, [pc, #104]	; (3f74 <pdu_read_holding_registers+0x134>)
    3f0c:	54d1      	strb	r1, [r2, r3]
    3f0e:	2300      	movs	r3, #0
    3f10:	617b      	str	r3, [r7, #20]
    3f12:	e021      	b.n	3f58 <pdu_read_holding_registers+0x118>
    3f14:	230c      	movs	r3, #12
    3f16:	18fb      	adds	r3, r7, r3
    3f18:	881a      	ldrh	r2, [r3, #0]
    3f1a:	697b      	ldr	r3, [r7, #20]
    3f1c:	18d1      	adds	r1, r2, r3
    3f1e:	2308      	movs	r3, #8
    3f20:	18fb      	adds	r3, r7, r3
    3f22:	4a15      	ldr	r2, [pc, #84]	; (3f78 <pdu_read_holding_registers+0x138>)
    3f24:	0049      	lsls	r1, r1, #1
    3f26:	5a8a      	ldrh	r2, [r1, r2]
    3f28:	801a      	strh	r2, [r3, #0]
    3f2a:	693b      	ldr	r3, [r7, #16]
    3f2c:	1c5a      	adds	r2, r3, #1
    3f2e:	613a      	str	r2, [r7, #16]
    3f30:	2208      	movs	r2, #8
    3f32:	18ba      	adds	r2, r7, r2
    3f34:	8812      	ldrh	r2, [r2, #0]
    3f36:	0a12      	lsrs	r2, r2, #8
    3f38:	b292      	uxth	r2, r2
    3f3a:	b2d1      	uxtb	r1, r2
    3f3c:	4a0d      	ldr	r2, [pc, #52]	; (3f74 <pdu_read_holding_registers+0x134>)
    3f3e:	54d1      	strb	r1, [r2, r3]
    3f40:	693b      	ldr	r3, [r7, #16]
    3f42:	1c5a      	adds	r2, r3, #1
    3f44:	613a      	str	r2, [r7, #16]
    3f46:	2208      	movs	r2, #8
    3f48:	18ba      	adds	r2, r7, r2
    3f4a:	8812      	ldrh	r2, [r2, #0]
    3f4c:	b2d1      	uxtb	r1, r2
    3f4e:	4a09      	ldr	r2, [pc, #36]	; (3f74 <pdu_read_holding_registers+0x134>)
    3f50:	54d1      	strb	r1, [r2, r3]
    3f52:	697b      	ldr	r3, [r7, #20]
    3f54:	3301      	adds	r3, #1
    3f56:	617b      	str	r3, [r7, #20]
    3f58:	230a      	movs	r3, #10
    3f5a:	18fb      	adds	r3, r7, r3
    3f5c:	881a      	ldrh	r2, [r3, #0]
    3f5e:	697b      	ldr	r3, [r7, #20]
    3f60:	429a      	cmp	r2, r3
    3f62:	dcd7      	bgt.n	3f14 <pdu_read_holding_registers+0xd4>
    3f64:	693b      	ldr	r3, [r7, #16]
    3f66:	0018      	movs	r0, r3
    3f68:	46bd      	mov	sp, r7
    3f6a:	b006      	add	sp, #24
    3f6c:	bd80      	pop	{r7, pc}
    3f6e:	46c0      	nop			; (mov r8, r8)
    3f70:	20005db8 	.word	0x20005db8
    3f74:	20005dbc 	.word	0x20005dbc
    3f78:	20005d68 	.word	0x20005d68

00003f7c <pdu_illegal_function_error>:
    3f7c:	b580      	push	{r7, lr}
    3f7e:	b084      	sub	sp, #16
    3f80:	af00      	add	r7, sp, #0
    3f82:	6078      	str	r0, [r7, #4]
    3f84:	4b10      	ldr	r3, [pc, #64]	; (3fc8 <pdu_illegal_function_error+0x4c>)
    3f86:	681a      	ldr	r2, [r3, #0]
    3f88:	687b      	ldr	r3, [r7, #4]
    3f8a:	18d2      	adds	r2, r2, r3
    3f8c:	230f      	movs	r3, #15
    3f8e:	18fb      	adds	r3, r7, r3
    3f90:	7812      	ldrb	r2, [r2, #0]
    3f92:	701a      	strb	r2, [r3, #0]
    3f94:	687b      	ldr	r3, [r7, #4]
    3f96:	60bb      	str	r3, [r7, #8]
    3f98:	68bb      	ldr	r3, [r7, #8]
    3f9a:	1c5a      	adds	r2, r3, #1
    3f9c:	60ba      	str	r2, [r7, #8]
    3f9e:	220f      	movs	r2, #15
    3fa0:	18ba      	adds	r2, r7, r2
    3fa2:	7812      	ldrb	r2, [r2, #0]
    3fa4:	2180      	movs	r1, #128	; 0x80
    3fa6:	4249      	negs	r1, r1
    3fa8:	430a      	orrs	r2, r1
    3faa:	b2d1      	uxtb	r1, r2
    3fac:	4a07      	ldr	r2, [pc, #28]	; (3fcc <pdu_illegal_function_error+0x50>)
    3fae:	54d1      	strb	r1, [r2, r3]
    3fb0:	68bb      	ldr	r3, [r7, #8]
    3fb2:	1c5a      	adds	r2, r3, #1
    3fb4:	60ba      	str	r2, [r7, #8]
    3fb6:	4a05      	ldr	r2, [pc, #20]	; (3fcc <pdu_illegal_function_error+0x50>)
    3fb8:	2101      	movs	r1, #1
    3fba:	54d1      	strb	r1, [r2, r3]
    3fbc:	68bb      	ldr	r3, [r7, #8]
    3fbe:	0018      	movs	r0, r3
    3fc0:	46bd      	mov	sp, r7
    3fc2:	b004      	add	sp, #16
    3fc4:	bd80      	pop	{r7, pc}
    3fc6:	46c0      	nop			; (mov r8, r8)
    3fc8:	20005db8 	.word	0x20005db8
    3fcc:	20005dbc 	.word	0x20005dbc

00003fd0 <mdb_proc_adu>:
    3fd0:	b580      	push	{r7, lr}
    3fd2:	b086      	sub	sp, #24
    3fd4:	af00      	add	r7, sp, #0
    3fd6:	6078      	str	r0, [r7, #4]
    3fd8:	4b39      	ldr	r3, [pc, #228]	; (40c0 <mdb_proc_adu+0xf0>)
    3fda:	687a      	ldr	r2, [r7, #4]
    3fdc:	601a      	str	r2, [r3, #0]
    3fde:	4b38      	ldr	r3, [pc, #224]	; (40c0 <mdb_proc_adu+0xf0>)
    3fe0:	681b      	ldr	r3, [r3, #0]
    3fe2:	781b      	ldrb	r3, [r3, #0]
    3fe4:	021b      	lsls	r3, r3, #8
    3fe6:	b21a      	sxth	r2, r3
    3fe8:	4b35      	ldr	r3, [pc, #212]	; (40c0 <mdb_proc_adu+0xf0>)
    3fea:	681b      	ldr	r3, [r3, #0]
    3fec:	3301      	adds	r3, #1
    3fee:	781b      	ldrb	r3, [r3, #0]
    3ff0:	b21b      	sxth	r3, r3
    3ff2:	4313      	orrs	r3, r2
    3ff4:	b21a      	sxth	r2, r3
    3ff6:	2312      	movs	r3, #18
    3ff8:	18fb      	adds	r3, r7, r3
    3ffa:	801a      	strh	r2, [r3, #0]
    3ffc:	4b30      	ldr	r3, [pc, #192]	; (40c0 <mdb_proc_adu+0xf0>)
    3ffe:	681b      	ldr	r3, [r3, #0]
    4000:	3302      	adds	r3, #2
    4002:	781b      	ldrb	r3, [r3, #0]
    4004:	021b      	lsls	r3, r3, #8
    4006:	b21a      	sxth	r2, r3
    4008:	4b2d      	ldr	r3, [pc, #180]	; (40c0 <mdb_proc_adu+0xf0>)
    400a:	681b      	ldr	r3, [r3, #0]
    400c:	3303      	adds	r3, #3
    400e:	781b      	ldrb	r3, [r3, #0]
    4010:	b21b      	sxth	r3, r3
    4012:	4313      	orrs	r3, r2
    4014:	b21a      	sxth	r2, r3
    4016:	2310      	movs	r3, #16
    4018:	18fb      	adds	r3, r7, r3
    401a:	801a      	strh	r2, [r3, #0]
    401c:	4b28      	ldr	r3, [pc, #160]	; (40c0 <mdb_proc_adu+0xf0>)
    401e:	681b      	ldr	r3, [r3, #0]
    4020:	3304      	adds	r3, #4
    4022:	781b      	ldrb	r3, [r3, #0]
    4024:	021b      	lsls	r3, r3, #8
    4026:	b21a      	sxth	r2, r3
    4028:	4b25      	ldr	r3, [pc, #148]	; (40c0 <mdb_proc_adu+0xf0>)
    402a:	681b      	ldr	r3, [r3, #0]
    402c:	3305      	adds	r3, #5
    402e:	781b      	ldrb	r3, [r3, #0]
    4030:	b21b      	sxth	r3, r3
    4032:	4313      	orrs	r3, r2
    4034:	b21a      	sxth	r2, r3
    4036:	230e      	movs	r3, #14
    4038:	18fb      	adds	r3, r7, r3
    403a:	801a      	strh	r2, [r3, #0]
    403c:	4b20      	ldr	r3, [pc, #128]	; (40c0 <mdb_proc_adu+0xf0>)
    403e:	681a      	ldr	r2, [r3, #0]
    4040:	230d      	movs	r3, #13
    4042:	18fb      	adds	r3, r7, r3
    4044:	7992      	ldrb	r2, [r2, #6]
    4046:	701a      	strb	r2, [r3, #0]
    4048:	4b1d      	ldr	r3, [pc, #116]	; (40c0 <mdb_proc_adu+0xf0>)
    404a:	681a      	ldr	r2, [r3, #0]
    404c:	230c      	movs	r3, #12
    404e:	18fb      	adds	r3, r7, r3
    4050:	79d2      	ldrb	r2, [r2, #7]
    4052:	701a      	strb	r2, [r3, #0]
    4054:	230d      	movs	r3, #13
    4056:	18fb      	adds	r3, r7, r3
    4058:	781b      	ldrb	r3, [r3, #0]
    405a:	2b11      	cmp	r3, #17
    405c:	d12b      	bne.n	40b6 <mdb_proc_adu+0xe6>
    405e:	230c      	movs	r3, #12
    4060:	18fb      	adds	r3, r7, r3
    4062:	781a      	ldrb	r2, [r3, #0]
    4064:	4b17      	ldr	r3, [pc, #92]	; (40c4 <mdb_proc_adu+0xf4>)
    4066:	0092      	lsls	r2, r2, #2
    4068:	58d3      	ldr	r3, [r2, r3]
    406a:	2007      	movs	r0, #7
    406c:	4798      	blx	r3
    406e:	0003      	movs	r3, r0
    4070:	60bb      	str	r3, [r7, #8]
    4072:	2300      	movs	r3, #0
    4074:	617b      	str	r3, [r7, #20]
    4076:	e00c      	b.n	4092 <mdb_proc_adu+0xc2>
    4078:	4b11      	ldr	r3, [pc, #68]	; (40c0 <mdb_proc_adu+0xf0>)
    407a:	681a      	ldr	r2, [r3, #0]
    407c:	697b      	ldr	r3, [r7, #20]
    407e:	18d3      	adds	r3, r2, r3
    4080:	7819      	ldrb	r1, [r3, #0]
    4082:	4a11      	ldr	r2, [pc, #68]	; (40c8 <mdb_proc_adu+0xf8>)
    4084:	697b      	ldr	r3, [r7, #20]
    4086:	18d3      	adds	r3, r2, r3
    4088:	1c0a      	adds	r2, r1, #0
    408a:	701a      	strb	r2, [r3, #0]
    408c:	697b      	ldr	r3, [r7, #20]
    408e:	3301      	adds	r3, #1
    4090:	617b      	str	r3, [r7, #20]
    4092:	697b      	ldr	r3, [r7, #20]
    4094:	2b06      	cmp	r3, #6
    4096:	ddef      	ble.n	4078 <mdb_proc_adu+0xa8>
    4098:	4b0b      	ldr	r3, [pc, #44]	; (40c8 <mdb_proc_adu+0xf8>)
    409a:	2200      	movs	r2, #0
    409c:	711a      	strb	r2, [r3, #4]
    409e:	68bb      	ldr	r3, [r7, #8]
    40a0:	b2db      	uxtb	r3, r3
    40a2:	3b06      	subs	r3, #6
    40a4:	b2da      	uxtb	r2, r3
    40a6:	4b08      	ldr	r3, [pc, #32]	; (40c8 <mdb_proc_adu+0xf8>)
    40a8:	715a      	strb	r2, [r3, #5]
    40aa:	68ba      	ldr	r2, [r7, #8]
    40ac:	4b06      	ldr	r3, [pc, #24]	; (40c8 <mdb_proc_adu+0xf8>)
    40ae:	0011      	movs	r1, r2
    40b0:	0018      	movs	r0, r3
    40b2:	f7fe fed1 	bl	2e58 <Send_UDP>
    40b6:	46c0      	nop			; (mov r8, r8)
    40b8:	46bd      	mov	sp, r7
    40ba:	b006      	add	sp, #24
    40bc:	bd80      	pop	{r7, pc}
    40be:	46c0      	nop			; (mov r8, r8)
    40c0:	20005db8 	.word	0x20005db8
    40c4:	000091d8 	.word	0x000091d8
    40c8:	20005dbc 	.word	0x20005dbc

000040cc <fsm_get_mode>:
    40cc:	b580      	push	{r7, lr}
    40ce:	af00      	add	r7, sp, #0
    40d0:	4b02      	ldr	r3, [pc, #8]	; (40dc <fsm_get_mode+0x10>)
    40d2:	781b      	ldrb	r3, [r3, #0]
    40d4:	0018      	movs	r0, r3
    40d6:	46bd      	mov	sp, r7
    40d8:	bd80      	pop	{r7, pc}
    40da:	46c0      	nop			; (mov r8, r8)
    40dc:	2000603c 	.word	0x2000603c

000040e0 <fsm_get_cyccnt>:
    40e0:	b580      	push	{r7, lr}
    40e2:	af00      	add	r7, sp, #0
    40e4:	4b02      	ldr	r3, [pc, #8]	; (40f0 <fsm_get_cyccnt+0x10>)
    40e6:	681b      	ldr	r3, [r3, #0]
    40e8:	0018      	movs	r0, r3
    40ea:	46bd      	mov	sp, r7
    40ec:	bd80      	pop	{r7, pc}
    40ee:	46c0      	nop			; (mov r8, r8)
    40f0:	20006008 	.word	0x20006008

000040f4 <fsm_idle>:
    40f4:	b580      	push	{r7, lr}
    40f6:	b084      	sub	sp, #16
    40f8:	af00      	add	r7, sp, #0
    40fa:	6078      	str	r0, [r7, #4]
    40fc:	230b      	movs	r3, #11
    40fe:	18fb      	adds	r3, r7, r3
    4100:	687a      	ldr	r2, [r7, #4]
    4102:	701a      	strb	r2, [r3, #0]
    4104:	230b      	movs	r3, #11
    4106:	18fb      	adds	r3, r7, r3
    4108:	781b      	ldrb	r3, [r3, #0]
    410a:	2b01      	cmp	r3, #1
    410c:	d000      	beq.n	4110 <fsm_idle+0x1c>
    410e:	e09a      	b.n	4246 <fsm_idle+0x152>
    4110:	4b4f      	ldr	r3, [pc, #316]	; (4250 <fsm_idle+0x15c>)
    4112:	0018      	movs	r0, r3
    4114:	f7ff fa52 	bl	35bc <mdb_get_testparam>
    4118:	4b4d      	ldr	r3, [pc, #308]	; (4250 <fsm_idle+0x15c>)
    411a:	681a      	ldr	r2, [r3, #0]
    411c:	4b4d      	ldr	r3, [pc, #308]	; (4254 <fsm_idle+0x160>)
    411e:	601a      	str	r2, [r3, #0]
    4120:	4b4c      	ldr	r3, [pc, #304]	; (4254 <fsm_idle+0x160>)
    4122:	681b      	ldr	r3, [r3, #0]
    4124:	2b00      	cmp	r3, #0
    4126:	d100      	bne.n	412a <fsm_idle+0x36>
    4128:	e08d      	b.n	4246 <fsm_idle+0x152>
    412a:	4b4b      	ldr	r3, [pc, #300]	; (4258 <fsm_idle+0x164>)
    412c:	4a4b      	ldr	r2, [pc, #300]	; (425c <fsm_idle+0x168>)
    412e:	601a      	str	r2, [r3, #0]
    4130:	4b4b      	ldr	r3, [pc, #300]	; (4260 <fsm_idle+0x16c>)
    4132:	2201      	movs	r2, #1
    4134:	701a      	strb	r2, [r3, #0]
    4136:	4b4b      	ldr	r3, [pc, #300]	; (4264 <fsm_idle+0x170>)
    4138:	2200      	movs	r2, #0
    413a:	601a      	str	r2, [r3, #0]
    413c:	4b4a      	ldr	r3, [pc, #296]	; (4268 <fsm_idle+0x174>)
    413e:	2200      	movs	r2, #0
    4140:	601a      	str	r2, [r3, #0]
    4142:	2300      	movs	r3, #0
    4144:	60fb      	str	r3, [r7, #12]
    4146:	e032      	b.n	41ae <fsm_idle+0xba>
    4148:	4b41      	ldr	r3, [pc, #260]	; (4250 <fsm_idle+0x15c>)
    414a:	689b      	ldr	r3, [r3, #8]
    414c:	4a40      	ldr	r2, [pc, #256]	; (4250 <fsm_idle+0x15c>)
    414e:	68f9      	ldr	r1, [r7, #12]
    4150:	3108      	adds	r1, #8
    4152:	0049      	lsls	r1, r1, #1
    4154:	5a8a      	ldrh	r2, [r1, r2]
    4156:	435a      	muls	r2, r3
    4158:	0013      	movs	r3, r2
    415a:	009b      	lsls	r3, r3, #2
    415c:	189b      	adds	r3, r3, r2
    415e:	00db      	lsls	r3, r3, #3
    4160:	189b      	adds	r3, r3, r2
    4162:	2280      	movs	r2, #128	; 0x80
    4164:	0112      	lsls	r2, r2, #4
    4166:	4694      	mov	ip, r2
    4168:	4463      	add	r3, ip
    416a:	0b1b      	lsrs	r3, r3, #12
    416c:	0019      	movs	r1, r3
    416e:	4b3f      	ldr	r3, [pc, #252]	; (426c <fsm_idle+0x178>)
    4170:	68fa      	ldr	r2, [r7, #12]
    4172:	0092      	lsls	r2, r2, #2
    4174:	50d1      	str	r1, [r2, r3]
    4176:	4b36      	ldr	r3, [pc, #216]	; (4250 <fsm_idle+0x15c>)
    4178:	68db      	ldr	r3, [r3, #12]
    417a:	4935      	ldr	r1, [pc, #212]	; (4250 <fsm_idle+0x15c>)
    417c:	68fa      	ldr	r2, [r7, #12]
    417e:	320c      	adds	r2, #12
    4180:	0052      	lsls	r2, r2, #1
    4182:	188a      	adds	r2, r1, r2
    4184:	3202      	adds	r2, #2
    4186:	8812      	ldrh	r2, [r2, #0]
    4188:	435a      	muls	r2, r3
    418a:	0013      	movs	r3, r2
    418c:	009b      	lsls	r3, r3, #2
    418e:	189b      	adds	r3, r3, r2
    4190:	00db      	lsls	r3, r3, #3
    4192:	189b      	adds	r3, r3, r2
    4194:	2280      	movs	r2, #128	; 0x80
    4196:	0112      	lsls	r2, r2, #4
    4198:	4694      	mov	ip, r2
    419a:	4463      	add	r3, ip
    419c:	0b1b      	lsrs	r3, r3, #12
    419e:	0019      	movs	r1, r3
    41a0:	4b33      	ldr	r3, [pc, #204]	; (4270 <fsm_idle+0x17c>)
    41a2:	68fa      	ldr	r2, [r7, #12]
    41a4:	0092      	lsls	r2, r2, #2
    41a6:	50d1      	str	r1, [r2, r3]
    41a8:	68fb      	ldr	r3, [r7, #12]
    41aa:	3301      	adds	r3, #1
    41ac:	60fb      	str	r3, [r7, #12]
    41ae:	68fb      	ldr	r3, [r7, #12]
    41b0:	2b04      	cmp	r3, #4
    41b2:	ddc9      	ble.n	4148 <fsm_idle+0x54>
    41b4:	2300      	movs	r3, #0
    41b6:	60fb      	str	r3, [r7, #12]
    41b8:	e020      	b.n	41fc <fsm_idle+0x108>
    41ba:	68fb      	ldr	r3, [r7, #12]
    41bc:	1c5a      	adds	r2, r3, #1
    41be:	4b2c      	ldr	r3, [pc, #176]	; (4270 <fsm_idle+0x17c>)
    41c0:	0092      	lsls	r2, r2, #2
    41c2:	58d2      	ldr	r2, [r2, r3]
    41c4:	4b2a      	ldr	r3, [pc, #168]	; (4270 <fsm_idle+0x17c>)
    41c6:	68f9      	ldr	r1, [r7, #12]
    41c8:	0089      	lsls	r1, r1, #2
    41ca:	58cb      	ldr	r3, [r1, r3]
    41cc:	1ad3      	subs	r3, r2, r3
    41ce:	0098      	lsls	r0, r3, #2
    41d0:	68fb      	ldr	r3, [r7, #12]
    41d2:	1c5a      	adds	r2, r3, #1
    41d4:	4b25      	ldr	r3, [pc, #148]	; (426c <fsm_idle+0x178>)
    41d6:	0092      	lsls	r2, r2, #2
    41d8:	58d2      	ldr	r2, [r2, r3]
    41da:	4b24      	ldr	r3, [pc, #144]	; (426c <fsm_idle+0x178>)
    41dc:	68f9      	ldr	r1, [r7, #12]
    41de:	0089      	lsls	r1, r1, #2
    41e0:	58cb      	ldr	r3, [r1, r3]
    41e2:	1ad3      	subs	r3, r2, r3
    41e4:	0019      	movs	r1, r3
    41e6:	f000 fc03 	bl	49f0 <__aeabi_idiv>
    41ea:	0003      	movs	r3, r0
    41ec:	0019      	movs	r1, r3
    41ee:	4b21      	ldr	r3, [pc, #132]	; (4274 <fsm_idle+0x180>)
    41f0:	68fa      	ldr	r2, [r7, #12]
    41f2:	0092      	lsls	r2, r2, #2
    41f4:	50d1      	str	r1, [r2, r3]
    41f6:	68fb      	ldr	r3, [r7, #12]
    41f8:	3301      	adds	r3, #1
    41fa:	60fb      	str	r3, [r7, #12]
    41fc:	68fb      	ldr	r3, [r7, #12]
    41fe:	2b03      	cmp	r3, #3
    4200:	dddb      	ble.n	41ba <fsm_idle+0xc6>
    4202:	4b1a      	ldr	r3, [pc, #104]	; (426c <fsm_idle+0x178>)
    4204:	681a      	ldr	r2, [r3, #0]
    4206:	4b1c      	ldr	r3, [pc, #112]	; (4278 <fsm_idle+0x184>)
    4208:	601a      	str	r2, [r3, #0]
    420a:	4b18      	ldr	r3, [pc, #96]	; (426c <fsm_idle+0x178>)
    420c:	685a      	ldr	r2, [r3, #4]
    420e:	4b1b      	ldr	r3, [pc, #108]	; (427c <fsm_idle+0x188>)
    4210:	601a      	str	r2, [r3, #0]
    4212:	4b17      	ldr	r3, [pc, #92]	; (4270 <fsm_idle+0x17c>)
    4214:	681a      	ldr	r2, [r3, #0]
    4216:	4b1a      	ldr	r3, [pc, #104]	; (4280 <fsm_idle+0x18c>)
    4218:	601a      	str	r2, [r3, #0]
    421a:	4b15      	ldr	r3, [pc, #84]	; (4270 <fsm_idle+0x17c>)
    421c:	685a      	ldr	r2, [r3, #4]
    421e:	4b19      	ldr	r3, [pc, #100]	; (4284 <fsm_idle+0x190>)
    4220:	601a      	str	r2, [r3, #0]
    4222:	4b14      	ldr	r3, [pc, #80]	; (4274 <fsm_idle+0x180>)
    4224:	681a      	ldr	r2, [r3, #0]
    4226:	4b18      	ldr	r3, [pc, #96]	; (4288 <fsm_idle+0x194>)
    4228:	601a      	str	r2, [r3, #0]
    422a:	f7fb ff5d 	bl	e8 <dut_on>
    422e:	f7fb ff7b 	bl	128 <dut_reset_on>
    4232:	4b07      	ldr	r3, [pc, #28]	; (4250 <fsm_idle+0x15c>)
    4234:	685b      	ldr	r3, [r3, #4]
    4236:	0018      	movs	r0, r3
    4238:	f7fb ff82 	bl	140 <dut_set_speed>
    423c:	4b10      	ldr	r3, [pc, #64]	; (4280 <fsm_idle+0x18c>)
    423e:	681b      	ldr	r3, [r3, #0]
    4240:	0018      	movs	r0, r3
    4242:	f7fb ffb1 	bl	1a8 <dut_set_torque>
    4246:	46c0      	nop			; (mov r8, r8)
    4248:	46bd      	mov	sp, r7
    424a:	b004      	add	sp, #16
    424c:	bd80      	pop	{r7, pc}
    424e:	46c0      	nop			; (mov r8, r8)
    4250:	20006014 	.word	0x20006014
    4254:	20006008 	.word	0x20006008
    4258:	20000018 	.word	0x20000018
    425c:	0000428d 	.word	0x0000428d
    4260:	2000603c 	.word	0x2000603c
    4264:	2000600c 	.word	0x2000600c
    4268:	20006010 	.word	0x20006010
    426c:	20005fcc 	.word	0x20005fcc
    4270:	20005fe0 	.word	0x20005fe0
    4274:	20005ff4 	.word	0x20005ff4
    4278:	20005fbc 	.word	0x20005fbc
    427c:	20005fc0 	.word	0x20005fc0
    4280:	20005fc4 	.word	0x20005fc4
    4284:	20005fc8 	.word	0x20005fc8
    4288:	20005fb8 	.word	0x20005fb8

0000428c <fsm_work>:
    428c:	b580      	push	{r7, lr}
    428e:	b086      	sub	sp, #24
    4290:	af00      	add	r7, sp, #0
    4292:	6078      	str	r0, [r7, #4]
    4294:	2313      	movs	r3, #19
    4296:	18fb      	adds	r3, r7, r3
    4298:	687a      	ldr	r2, [r7, #4]
    429a:	701a      	strb	r2, [r3, #0]
    429c:	687b      	ldr	r3, [r7, #4]
    429e:	121b      	asrs	r3, r3, #8
    42a0:	60fb      	str	r3, [r7, #12]
    42a2:	2313      	movs	r3, #19
    42a4:	18fb      	adds	r3, r7, r3
    42a6:	781b      	ldrb	r3, [r3, #0]
    42a8:	2b04      	cmp	r3, #4
    42aa:	d000      	beq.n	42ae <fsm_work+0x22>
    42ac:	e0fc      	b.n	44a8 <fsm_work+0x21c>
    42ae:	68fb      	ldr	r3, [r7, #12]
    42b0:	617b      	str	r3, [r7, #20]
    42b2:	f7fb ff2d 	bl	110 <dut_reset_off>
    42b6:	4b8d      	ldr	r3, [pc, #564]	; (44ec <fsm_work+0x260>)
    42b8:	689b      	ldr	r3, [r3, #8]
    42ba:	001a      	movs	r2, r3
    42bc:	697b      	ldr	r3, [r7, #20]
    42be:	429a      	cmp	r2, r3
    42c0:	dc29      	bgt.n	4316 <fsm_work+0x8a>
    42c2:	4b8b      	ldr	r3, [pc, #556]	; (44f0 <fsm_work+0x264>)
    42c4:	2201      	movs	r2, #1
    42c6:	601a      	str	r2, [r3, #0]
    42c8:	4b8a      	ldr	r3, [pc, #552]	; (44f4 <fsm_work+0x268>)
    42ca:	2200      	movs	r2, #0
    42cc:	601a      	str	r2, [r3, #0]
    42ce:	4b8a      	ldr	r3, [pc, #552]	; (44f8 <fsm_work+0x26c>)
    42d0:	681a      	ldr	r2, [r3, #0]
    42d2:	4b8a      	ldr	r3, [pc, #552]	; (44fc <fsm_work+0x270>)
    42d4:	601a      	str	r2, [r3, #0]
    42d6:	4b88      	ldr	r3, [pc, #544]	; (44f8 <fsm_work+0x26c>)
    42d8:	685a      	ldr	r2, [r3, #4]
    42da:	4b89      	ldr	r3, [pc, #548]	; (4500 <fsm_work+0x274>)
    42dc:	601a      	str	r2, [r3, #0]
    42de:	4b89      	ldr	r3, [pc, #548]	; (4504 <fsm_work+0x278>)
    42e0:	681b      	ldr	r3, [r3, #0]
    42e2:	425a      	negs	r2, r3
    42e4:	4b88      	ldr	r3, [pc, #544]	; (4508 <fsm_work+0x27c>)
    42e6:	601a      	str	r2, [r3, #0]
    42e8:	4b86      	ldr	r3, [pc, #536]	; (4504 <fsm_work+0x278>)
    42ea:	685b      	ldr	r3, [r3, #4]
    42ec:	425a      	negs	r2, r3
    42ee:	4b87      	ldr	r3, [pc, #540]	; (450c <fsm_work+0x280>)
    42f0:	601a      	str	r2, [r3, #0]
    42f2:	4b87      	ldr	r3, [pc, #540]	; (4510 <fsm_work+0x284>)
    42f4:	681b      	ldr	r3, [r3, #0]
    42f6:	425a      	negs	r2, r3
    42f8:	4b86      	ldr	r3, [pc, #536]	; (4514 <fsm_work+0x288>)
    42fa:	601a      	str	r2, [r3, #0]
    42fc:	4b7b      	ldr	r3, [pc, #492]	; (44ec <fsm_work+0x260>)
    42fe:	685b      	ldr	r3, [r3, #4]
    4300:	425b      	negs	r3, r3
    4302:	0018      	movs	r0, r3
    4304:	f7fb ff1c 	bl	140 <dut_set_speed>
    4308:	4b7f      	ldr	r3, [pc, #508]	; (4508 <fsm_work+0x27c>)
    430a:	681b      	ldr	r3, [r3, #0]
    430c:	425b      	negs	r3, r3
    430e:	0018      	movs	r0, r3
    4310:	f7fb ff4a 	bl	1a8 <dut_set_torque>
    4314:	e0e7      	b.n	44e6 <fsm_work+0x25a>
    4316:	4b76      	ldr	r3, [pc, #472]	; (44f0 <fsm_work+0x264>)
    4318:	681b      	ldr	r3, [r3, #0]
    431a:	2b00      	cmp	r3, #0
    431c:	d03f      	beq.n	439e <fsm_work+0x112>
    431e:	697b      	ldr	r3, [r7, #20]
    4320:	2b00      	cmp	r3, #0
    4322:	dc3c      	bgt.n	439e <fsm_work+0x112>
    4324:	4b7c      	ldr	r3, [pc, #496]	; (4518 <fsm_work+0x28c>)
    4326:	681b      	ldr	r3, [r3, #0]
    4328:	1e5a      	subs	r2, r3, #1
    432a:	4b7b      	ldr	r3, [pc, #492]	; (4518 <fsm_work+0x28c>)
    432c:	601a      	str	r2, [r3, #0]
    432e:	4b70      	ldr	r3, [pc, #448]	; (44f0 <fsm_work+0x264>)
    4330:	2200      	movs	r2, #0
    4332:	601a      	str	r2, [r3, #0]
    4334:	4b6f      	ldr	r3, [pc, #444]	; (44f4 <fsm_work+0x268>)
    4336:	2200      	movs	r2, #0
    4338:	601a      	str	r2, [r3, #0]
    433a:	4b77      	ldr	r3, [pc, #476]	; (4518 <fsm_work+0x28c>)
    433c:	681b      	ldr	r3, [r3, #0]
    433e:	2b00      	cmp	r3, #0
    4340:	d10e      	bne.n	4360 <fsm_work+0xd4>
    4342:	4b76      	ldr	r3, [pc, #472]	; (451c <fsm_work+0x290>)
    4344:	4a76      	ldr	r2, [pc, #472]	; (4520 <fsm_work+0x294>)
    4346:	601a      	str	r2, [r3, #0]
    4348:	4b76      	ldr	r3, [pc, #472]	; (4524 <fsm_work+0x298>)
    434a:	2204      	movs	r2, #4
    434c:	701a      	strb	r2, [r3, #0]
    434e:	2000      	movs	r0, #0
    4350:	f7fb fef6 	bl	140 <dut_set_speed>
    4354:	2000      	movs	r0, #0
    4356:	f7fb ff27 	bl	1a8 <dut_set_torque>
    435a:	f7fb fee5 	bl	128 <dut_reset_on>
    435e:	e0c2      	b.n	44e6 <fsm_work+0x25a>
    4360:	4b65      	ldr	r3, [pc, #404]	; (44f8 <fsm_work+0x26c>)
    4362:	681a      	ldr	r2, [r3, #0]
    4364:	4b65      	ldr	r3, [pc, #404]	; (44fc <fsm_work+0x270>)
    4366:	601a      	str	r2, [r3, #0]
    4368:	4b63      	ldr	r3, [pc, #396]	; (44f8 <fsm_work+0x26c>)
    436a:	685a      	ldr	r2, [r3, #4]
    436c:	4b64      	ldr	r3, [pc, #400]	; (4500 <fsm_work+0x274>)
    436e:	601a      	str	r2, [r3, #0]
    4370:	4b64      	ldr	r3, [pc, #400]	; (4504 <fsm_work+0x278>)
    4372:	681a      	ldr	r2, [r3, #0]
    4374:	4b64      	ldr	r3, [pc, #400]	; (4508 <fsm_work+0x27c>)
    4376:	601a      	str	r2, [r3, #0]
    4378:	4b62      	ldr	r3, [pc, #392]	; (4504 <fsm_work+0x278>)
    437a:	685a      	ldr	r2, [r3, #4]
    437c:	4b63      	ldr	r3, [pc, #396]	; (450c <fsm_work+0x280>)
    437e:	601a      	str	r2, [r3, #0]
    4380:	4b63      	ldr	r3, [pc, #396]	; (4510 <fsm_work+0x284>)
    4382:	681a      	ldr	r2, [r3, #0]
    4384:	4b63      	ldr	r3, [pc, #396]	; (4514 <fsm_work+0x288>)
    4386:	601a      	str	r2, [r3, #0]
    4388:	4b58      	ldr	r3, [pc, #352]	; (44ec <fsm_work+0x260>)
    438a:	685b      	ldr	r3, [r3, #4]
    438c:	0018      	movs	r0, r3
    438e:	f7fb fed7 	bl	140 <dut_set_speed>
    4392:	4b5d      	ldr	r3, [pc, #372]	; (4508 <fsm_work+0x27c>)
    4394:	681b      	ldr	r3, [r3, #0]
    4396:	0018      	movs	r0, r3
    4398:	f7fb ff06 	bl	1a8 <dut_set_torque>
    439c:	e0a3      	b.n	44e6 <fsm_work+0x25a>
    439e:	4b54      	ldr	r3, [pc, #336]	; (44f0 <fsm_work+0x264>)
    43a0:	681b      	ldr	r3, [r3, #0]
    43a2:	2b00      	cmp	r3, #0
    43a4:	d03c      	beq.n	4420 <fsm_work+0x194>
    43a6:	4b51      	ldr	r3, [pc, #324]	; (44ec <fsm_work+0x260>)
    43a8:	689b      	ldr	r3, [r3, #8]
    43aa:	001a      	movs	r2, r3
    43ac:	697b      	ldr	r3, [r7, #20]
    43ae:	1ad3      	subs	r3, r2, r3
    43b0:	617b      	str	r3, [r7, #20]
    43b2:	4b53      	ldr	r3, [pc, #332]	; (4500 <fsm_work+0x274>)
    43b4:	681b      	ldr	r3, [r3, #0]
    43b6:	697a      	ldr	r2, [r7, #20]
    43b8:	429a      	cmp	r2, r3
    43ba:	db64      	blt.n	4486 <fsm_work+0x1fa>
    43bc:	4b4d      	ldr	r3, [pc, #308]	; (44f4 <fsm_work+0x268>)
    43be:	681b      	ldr	r3, [r3, #0]
    43c0:	1c5a      	adds	r2, r3, #1
    43c2:	4b4c      	ldr	r3, [pc, #304]	; (44f4 <fsm_work+0x268>)
    43c4:	601a      	str	r2, [r3, #0]
    43c6:	4b4b      	ldr	r3, [pc, #300]	; (44f4 <fsm_work+0x268>)
    43c8:	681b      	ldr	r3, [r3, #0]
    43ca:	2b03      	cmp	r3, #3
    43cc:	d85b      	bhi.n	4486 <fsm_work+0x1fa>
    43ce:	4b49      	ldr	r3, [pc, #292]	; (44f4 <fsm_work+0x268>)
    43d0:	681a      	ldr	r2, [r3, #0]
    43d2:	4b49      	ldr	r3, [pc, #292]	; (44f8 <fsm_work+0x26c>)
    43d4:	0092      	lsls	r2, r2, #2
    43d6:	58d2      	ldr	r2, [r2, r3]
    43d8:	4b48      	ldr	r3, [pc, #288]	; (44fc <fsm_work+0x270>)
    43da:	601a      	str	r2, [r3, #0]
    43dc:	4b45      	ldr	r3, [pc, #276]	; (44f4 <fsm_work+0x268>)
    43de:	681b      	ldr	r3, [r3, #0]
    43e0:	1c5a      	adds	r2, r3, #1
    43e2:	4b45      	ldr	r3, [pc, #276]	; (44f8 <fsm_work+0x26c>)
    43e4:	0092      	lsls	r2, r2, #2
    43e6:	58d2      	ldr	r2, [r2, r3]
    43e8:	4b45      	ldr	r3, [pc, #276]	; (4500 <fsm_work+0x274>)
    43ea:	601a      	str	r2, [r3, #0]
    43ec:	4b41      	ldr	r3, [pc, #260]	; (44f4 <fsm_work+0x268>)
    43ee:	681a      	ldr	r2, [r3, #0]
    43f0:	4b44      	ldr	r3, [pc, #272]	; (4504 <fsm_work+0x278>)
    43f2:	0092      	lsls	r2, r2, #2
    43f4:	58d3      	ldr	r3, [r2, r3]
    43f6:	425a      	negs	r2, r3
    43f8:	4b43      	ldr	r3, [pc, #268]	; (4508 <fsm_work+0x27c>)
    43fa:	601a      	str	r2, [r3, #0]
    43fc:	4b3d      	ldr	r3, [pc, #244]	; (44f4 <fsm_work+0x268>)
    43fe:	681b      	ldr	r3, [r3, #0]
    4400:	1c5a      	adds	r2, r3, #1
    4402:	4b40      	ldr	r3, [pc, #256]	; (4504 <fsm_work+0x278>)
    4404:	0092      	lsls	r2, r2, #2
    4406:	58d3      	ldr	r3, [r2, r3]
    4408:	425a      	negs	r2, r3
    440a:	4b40      	ldr	r3, [pc, #256]	; (450c <fsm_work+0x280>)
    440c:	601a      	str	r2, [r3, #0]
    440e:	4b39      	ldr	r3, [pc, #228]	; (44f4 <fsm_work+0x268>)
    4410:	681a      	ldr	r2, [r3, #0]
    4412:	4b3f      	ldr	r3, [pc, #252]	; (4510 <fsm_work+0x284>)
    4414:	0092      	lsls	r2, r2, #2
    4416:	58d3      	ldr	r3, [r2, r3]
    4418:	425a      	negs	r2, r3
    441a:	4b3e      	ldr	r3, [pc, #248]	; (4514 <fsm_work+0x288>)
    441c:	601a      	str	r2, [r3, #0]
    441e:	e032      	b.n	4486 <fsm_work+0x1fa>
    4420:	4b37      	ldr	r3, [pc, #220]	; (4500 <fsm_work+0x274>)
    4422:	681b      	ldr	r3, [r3, #0]
    4424:	697a      	ldr	r2, [r7, #20]
    4426:	429a      	cmp	r2, r3
    4428:	db2d      	blt.n	4486 <fsm_work+0x1fa>
    442a:	4b32      	ldr	r3, [pc, #200]	; (44f4 <fsm_work+0x268>)
    442c:	681b      	ldr	r3, [r3, #0]
    442e:	1c5a      	adds	r2, r3, #1
    4430:	4b30      	ldr	r3, [pc, #192]	; (44f4 <fsm_work+0x268>)
    4432:	601a      	str	r2, [r3, #0]
    4434:	4b2f      	ldr	r3, [pc, #188]	; (44f4 <fsm_work+0x268>)
    4436:	681b      	ldr	r3, [r3, #0]
    4438:	2b03      	cmp	r3, #3
    443a:	d824      	bhi.n	4486 <fsm_work+0x1fa>
    443c:	4b2d      	ldr	r3, [pc, #180]	; (44f4 <fsm_work+0x268>)
    443e:	681a      	ldr	r2, [r3, #0]
    4440:	4b2d      	ldr	r3, [pc, #180]	; (44f8 <fsm_work+0x26c>)
    4442:	0092      	lsls	r2, r2, #2
    4444:	58d2      	ldr	r2, [r2, r3]
    4446:	4b2d      	ldr	r3, [pc, #180]	; (44fc <fsm_work+0x270>)
    4448:	601a      	str	r2, [r3, #0]
    444a:	4b2a      	ldr	r3, [pc, #168]	; (44f4 <fsm_work+0x268>)
    444c:	681b      	ldr	r3, [r3, #0]
    444e:	1c5a      	adds	r2, r3, #1
    4450:	4b29      	ldr	r3, [pc, #164]	; (44f8 <fsm_work+0x26c>)
    4452:	0092      	lsls	r2, r2, #2
    4454:	58d2      	ldr	r2, [r2, r3]
    4456:	4b2a      	ldr	r3, [pc, #168]	; (4500 <fsm_work+0x274>)
    4458:	601a      	str	r2, [r3, #0]
    445a:	4b26      	ldr	r3, [pc, #152]	; (44f4 <fsm_work+0x268>)
    445c:	681a      	ldr	r2, [r3, #0]
    445e:	4b29      	ldr	r3, [pc, #164]	; (4504 <fsm_work+0x278>)
    4460:	0092      	lsls	r2, r2, #2
    4462:	58d2      	ldr	r2, [r2, r3]
    4464:	4b28      	ldr	r3, [pc, #160]	; (4508 <fsm_work+0x27c>)
    4466:	601a      	str	r2, [r3, #0]
    4468:	4b22      	ldr	r3, [pc, #136]	; (44f4 <fsm_work+0x268>)
    446a:	681b      	ldr	r3, [r3, #0]
    446c:	1c5a      	adds	r2, r3, #1
    446e:	4b25      	ldr	r3, [pc, #148]	; (4504 <fsm_work+0x278>)
    4470:	0092      	lsls	r2, r2, #2
    4472:	58d2      	ldr	r2, [r2, r3]
    4474:	4b25      	ldr	r3, [pc, #148]	; (450c <fsm_work+0x280>)
    4476:	601a      	str	r2, [r3, #0]
    4478:	4b1e      	ldr	r3, [pc, #120]	; (44f4 <fsm_work+0x268>)
    447a:	681a      	ldr	r2, [r3, #0]
    447c:	4b24      	ldr	r3, [pc, #144]	; (4510 <fsm_work+0x284>)
    447e:	0092      	lsls	r2, r2, #2
    4480:	58d2      	ldr	r2, [r2, r3]
    4482:	4b24      	ldr	r3, [pc, #144]	; (4514 <fsm_work+0x288>)
    4484:	601a      	str	r2, [r3, #0]
    4486:	4b20      	ldr	r3, [pc, #128]	; (4508 <fsm_work+0x27c>)
    4488:	681b      	ldr	r3, [r3, #0]
    448a:	009a      	lsls	r2, r3, #2
    448c:	4b1b      	ldr	r3, [pc, #108]	; (44fc <fsm_work+0x270>)
    448e:	681b      	ldr	r3, [r3, #0]
    4490:	6979      	ldr	r1, [r7, #20]
    4492:	1ac9      	subs	r1, r1, r3
    4494:	4b1f      	ldr	r3, [pc, #124]	; (4514 <fsm_work+0x288>)
    4496:	681b      	ldr	r3, [r3, #0]
    4498:	434b      	muls	r3, r1
    449a:	18d3      	adds	r3, r2, r3
    449c:	60bb      	str	r3, [r7, #8]
    449e:	68bb      	ldr	r3, [r7, #8]
    44a0:	109b      	asrs	r3, r3, #2
    44a2:	0018      	movs	r0, r3
    44a4:	f7fb fe80 	bl	1a8 <dut_set_torque>
    44a8:	2313      	movs	r3, #19
    44aa:	18fb      	adds	r3, r7, r3
    44ac:	781b      	ldrb	r3, [r3, #0]
    44ae:	2b03      	cmp	r3, #3
    44b0:	d10e      	bne.n	44d0 <fsm_work+0x244>
    44b2:	4b1a      	ldr	r3, [pc, #104]	; (451c <fsm_work+0x290>)
    44b4:	4a1a      	ldr	r2, [pc, #104]	; (4520 <fsm_work+0x294>)
    44b6:	601a      	str	r2, [r3, #0]
    44b8:	4b1a      	ldr	r3, [pc, #104]	; (4524 <fsm_work+0x298>)
    44ba:	2204      	movs	r2, #4
    44bc:	701a      	strb	r2, [r3, #0]
    44be:	2000      	movs	r0, #0
    44c0:	f7fb fe3e 	bl	140 <dut_set_speed>
    44c4:	2000      	movs	r0, #0
    44c6:	f7fb fe6f 	bl	1a8 <dut_set_torque>
    44ca:	f7fb fe2d 	bl	128 <dut_reset_on>
    44ce:	e00a      	b.n	44e6 <fsm_work+0x25a>
    44d0:	2313      	movs	r3, #19
    44d2:	18fb      	adds	r3, r7, r3
    44d4:	781b      	ldrb	r3, [r3, #0]
    44d6:	2b02      	cmp	r3, #2
    44d8:	d105      	bne.n	44e6 <fsm_work+0x25a>
    44da:	4b10      	ldr	r3, [pc, #64]	; (451c <fsm_work+0x290>)
    44dc:	4a12      	ldr	r2, [pc, #72]	; (4528 <fsm_work+0x29c>)
    44de:	601a      	str	r2, [r3, #0]
    44e0:	4b10      	ldr	r3, [pc, #64]	; (4524 <fsm_work+0x298>)
    44e2:	2202      	movs	r2, #2
    44e4:	701a      	strb	r2, [r3, #0]
    44e6:	46bd      	mov	sp, r7
    44e8:	b006      	add	sp, #24
    44ea:	bd80      	pop	{r7, pc}
    44ec:	20006014 	.word	0x20006014
    44f0:	20006010 	.word	0x20006010
    44f4:	2000600c 	.word	0x2000600c
    44f8:	20005fcc 	.word	0x20005fcc
    44fc:	20005fbc 	.word	0x20005fbc
    4500:	20005fc0 	.word	0x20005fc0
    4504:	20005fe0 	.word	0x20005fe0
    4508:	20005fc4 	.word	0x20005fc4
    450c:	20005fc8 	.word	0x20005fc8
    4510:	20005ff4 	.word	0x20005ff4
    4514:	20005fb8 	.word	0x20005fb8
    4518:	20006008 	.word	0x20006008
    451c:	20000018 	.word	0x20000018
    4520:	0000452d 	.word	0x0000452d
    4524:	2000603c 	.word	0x2000603c
    4528:	0000458d 	.word	0x0000458d

0000452c <fsm_clean>:
    452c:	b580      	push	{r7, lr}
    452e:	b084      	sub	sp, #16
    4530:	af00      	add	r7, sp, #0
    4532:	6078      	str	r0, [r7, #4]
    4534:	230f      	movs	r3, #15
    4536:	18fb      	adds	r3, r7, r3
    4538:	687a      	ldr	r2, [r7, #4]
    453a:	701a      	strb	r2, [r3, #0]
    453c:	230f      	movs	r3, #15
    453e:	18fb      	adds	r3, r7, r3
    4540:	781b      	ldrb	r3, [r3, #0]
    4542:	2b04      	cmp	r3, #4
    4544:	d112      	bne.n	456c <fsm_clean+0x40>
    4546:	4b0b      	ldr	r3, [pc, #44]	; (4574 <fsm_clean+0x48>)
    4548:	4a0b      	ldr	r2, [pc, #44]	; (4578 <fsm_clean+0x4c>)
    454a:	601a      	str	r2, [r3, #0]
    454c:	4b0b      	ldr	r3, [pc, #44]	; (457c <fsm_clean+0x50>)
    454e:	2200      	movs	r2, #0
    4550:	701a      	strb	r2, [r3, #0]
    4552:	f7fb fddd 	bl	110 <dut_reset_off>
    4556:	f7fb fdd1 	bl	fc <dut_off>
    455a:	4b09      	ldr	r3, [pc, #36]	; (4580 <fsm_clean+0x54>)
    455c:	2200      	movs	r2, #0
    455e:	601a      	str	r2, [r3, #0]
    4560:	4b08      	ldr	r3, [pc, #32]	; (4584 <fsm_clean+0x58>)
    4562:	2200      	movs	r2, #0
    4564:	601a      	str	r2, [r3, #0]
    4566:	4b08      	ldr	r3, [pc, #32]	; (4588 <fsm_clean+0x5c>)
    4568:	2200      	movs	r2, #0
    456a:	601a      	str	r2, [r3, #0]
    456c:	46c0      	nop			; (mov r8, r8)
    456e:	46bd      	mov	sp, r7
    4570:	b004      	add	sp, #16
    4572:	bd80      	pop	{r7, pc}
    4574:	20000018 	.word	0x20000018
    4578:	000040f5 	.word	0x000040f5
    457c:	2000603c 	.word	0x2000603c
    4580:	20006008 	.word	0x20006008
    4584:	2000600c 	.word	0x2000600c
    4588:	20006010 	.word	0x20006010

0000458c <fsm_complete>:
    458c:	b580      	push	{r7, lr}
    458e:	b086      	sub	sp, #24
    4590:	af00      	add	r7, sp, #0
    4592:	6078      	str	r0, [r7, #4]
    4594:	2313      	movs	r3, #19
    4596:	18fb      	adds	r3, r7, r3
    4598:	687a      	ldr	r2, [r7, #4]
    459a:	701a      	strb	r2, [r3, #0]
    459c:	687b      	ldr	r3, [r7, #4]
    459e:	121b      	asrs	r3, r3, #8
    45a0:	60fb      	str	r3, [r7, #12]
    45a2:	2313      	movs	r3, #19
    45a4:	18fb      	adds	r3, r7, r3
    45a6:	781b      	ldrb	r3, [r3, #0]
    45a8:	2b04      	cmp	r3, #4
    45aa:	d000      	beq.n	45ae <fsm_complete+0x22>
    45ac:	e0ea      	b.n	4784 <fsm_complete+0x1f8>
    45ae:	68fb      	ldr	r3, [r7, #12]
    45b0:	617b      	str	r3, [r7, #20]
    45b2:	f7fb fdad 	bl	110 <dut_reset_off>
    45b6:	4b84      	ldr	r3, [pc, #528]	; (47c8 <fsm_complete+0x23c>)
    45b8:	689b      	ldr	r3, [r3, #8]
    45ba:	001a      	movs	r2, r3
    45bc:	697b      	ldr	r3, [r7, #20]
    45be:	429a      	cmp	r2, r3
    45c0:	dc29      	bgt.n	4616 <fsm_complete+0x8a>
    45c2:	4b82      	ldr	r3, [pc, #520]	; (47cc <fsm_complete+0x240>)
    45c4:	2201      	movs	r2, #1
    45c6:	601a      	str	r2, [r3, #0]
    45c8:	4b81      	ldr	r3, [pc, #516]	; (47d0 <fsm_complete+0x244>)
    45ca:	2200      	movs	r2, #0
    45cc:	601a      	str	r2, [r3, #0]
    45ce:	4b81      	ldr	r3, [pc, #516]	; (47d4 <fsm_complete+0x248>)
    45d0:	681a      	ldr	r2, [r3, #0]
    45d2:	4b81      	ldr	r3, [pc, #516]	; (47d8 <fsm_complete+0x24c>)
    45d4:	601a      	str	r2, [r3, #0]
    45d6:	4b7f      	ldr	r3, [pc, #508]	; (47d4 <fsm_complete+0x248>)
    45d8:	685a      	ldr	r2, [r3, #4]
    45da:	4b80      	ldr	r3, [pc, #512]	; (47dc <fsm_complete+0x250>)
    45dc:	601a      	str	r2, [r3, #0]
    45de:	4b80      	ldr	r3, [pc, #512]	; (47e0 <fsm_complete+0x254>)
    45e0:	681b      	ldr	r3, [r3, #0]
    45e2:	425a      	negs	r2, r3
    45e4:	4b7f      	ldr	r3, [pc, #508]	; (47e4 <fsm_complete+0x258>)
    45e6:	601a      	str	r2, [r3, #0]
    45e8:	4b7d      	ldr	r3, [pc, #500]	; (47e0 <fsm_complete+0x254>)
    45ea:	685b      	ldr	r3, [r3, #4]
    45ec:	425a      	negs	r2, r3
    45ee:	4b7e      	ldr	r3, [pc, #504]	; (47e8 <fsm_complete+0x25c>)
    45f0:	601a      	str	r2, [r3, #0]
    45f2:	4b7e      	ldr	r3, [pc, #504]	; (47ec <fsm_complete+0x260>)
    45f4:	681b      	ldr	r3, [r3, #0]
    45f6:	425a      	negs	r2, r3
    45f8:	4b7d      	ldr	r3, [pc, #500]	; (47f0 <fsm_complete+0x264>)
    45fa:	601a      	str	r2, [r3, #0]
    45fc:	4b72      	ldr	r3, [pc, #456]	; (47c8 <fsm_complete+0x23c>)
    45fe:	685b      	ldr	r3, [r3, #4]
    4600:	425b      	negs	r3, r3
    4602:	0018      	movs	r0, r3
    4604:	f7fb fd9c 	bl	140 <dut_set_speed>
    4608:	4b76      	ldr	r3, [pc, #472]	; (47e4 <fsm_complete+0x258>)
    460a:	681b      	ldr	r3, [r3, #0]
    460c:	425b      	negs	r3, r3
    460e:	0018      	movs	r0, r3
    4610:	f7fb fdca 	bl	1a8 <dut_set_torque>
    4614:	e0d5      	b.n	47c2 <fsm_complete+0x236>
    4616:	4b6d      	ldr	r3, [pc, #436]	; (47cc <fsm_complete+0x240>)
    4618:	681b      	ldr	r3, [r3, #0]
    461a:	2b00      	cmp	r3, #0
    461c:	d02d      	beq.n	467a <fsm_complete+0xee>
    461e:	697b      	ldr	r3, [r7, #20]
    4620:	2b00      	cmp	r3, #0
    4622:	dc2a      	bgt.n	467a <fsm_complete+0xee>
    4624:	4b73      	ldr	r3, [pc, #460]	; (47f4 <fsm_complete+0x268>)
    4626:	681b      	ldr	r3, [r3, #0]
    4628:	1e5a      	subs	r2, r3, #1
    462a:	4b72      	ldr	r3, [pc, #456]	; (47f4 <fsm_complete+0x268>)
    462c:	601a      	str	r2, [r3, #0]
    462e:	4b67      	ldr	r3, [pc, #412]	; (47cc <fsm_complete+0x240>)
    4630:	2200      	movs	r2, #0
    4632:	601a      	str	r2, [r3, #0]
    4634:	4b66      	ldr	r3, [pc, #408]	; (47d0 <fsm_complete+0x244>)
    4636:	2200      	movs	r2, #0
    4638:	601a      	str	r2, [r3, #0]
    463a:	4b6e      	ldr	r3, [pc, #440]	; (47f4 <fsm_complete+0x268>)
    463c:	681b      	ldr	r3, [r3, #0]
    463e:	2b00      	cmp	r3, #0
    4640:	d10e      	bne.n	4660 <fsm_complete+0xd4>
    4642:	4b6d      	ldr	r3, [pc, #436]	; (47f8 <fsm_complete+0x26c>)
    4644:	4a6d      	ldr	r2, [pc, #436]	; (47fc <fsm_complete+0x270>)
    4646:	601a      	str	r2, [r3, #0]
    4648:	4b6d      	ldr	r3, [pc, #436]	; (4800 <fsm_complete+0x274>)
    464a:	2204      	movs	r2, #4
    464c:	701a      	strb	r2, [r3, #0]
    464e:	2000      	movs	r0, #0
    4650:	f7fb fd76 	bl	140 <dut_set_speed>
    4654:	2000      	movs	r0, #0
    4656:	f7fb fda7 	bl	1a8 <dut_set_torque>
    465a:	f7fb fd65 	bl	128 <dut_reset_on>
    465e:	e0b0      	b.n	47c2 <fsm_complete+0x236>
    4660:	2000      	movs	r0, #0
    4662:	f7fb fd6d 	bl	140 <dut_set_speed>
    4666:	2000      	movs	r0, #0
    4668:	f7fb fd9e 	bl	1a8 <dut_set_torque>
    466c:	4b62      	ldr	r3, [pc, #392]	; (47f8 <fsm_complete+0x26c>)
    466e:	4a65      	ldr	r2, [pc, #404]	; (4804 <fsm_complete+0x278>)
    4670:	601a      	str	r2, [r3, #0]
    4672:	4b63      	ldr	r3, [pc, #396]	; (4800 <fsm_complete+0x274>)
    4674:	2203      	movs	r2, #3
    4676:	701a      	strb	r2, [r3, #0]
    4678:	e0a3      	b.n	47c2 <fsm_complete+0x236>
    467a:	4b54      	ldr	r3, [pc, #336]	; (47cc <fsm_complete+0x240>)
    467c:	681b      	ldr	r3, [r3, #0]
    467e:	2b00      	cmp	r3, #0
    4680:	d03c      	beq.n	46fc <fsm_complete+0x170>
    4682:	4b51      	ldr	r3, [pc, #324]	; (47c8 <fsm_complete+0x23c>)
    4684:	689b      	ldr	r3, [r3, #8]
    4686:	001a      	movs	r2, r3
    4688:	697b      	ldr	r3, [r7, #20]
    468a:	1ad3      	subs	r3, r2, r3
    468c:	617b      	str	r3, [r7, #20]
    468e:	4b53      	ldr	r3, [pc, #332]	; (47dc <fsm_complete+0x250>)
    4690:	681b      	ldr	r3, [r3, #0]
    4692:	697a      	ldr	r2, [r7, #20]
    4694:	429a      	cmp	r2, r3
    4696:	db64      	blt.n	4762 <fsm_complete+0x1d6>
    4698:	4b4d      	ldr	r3, [pc, #308]	; (47d0 <fsm_complete+0x244>)
    469a:	681b      	ldr	r3, [r3, #0]
    469c:	1c5a      	adds	r2, r3, #1
    469e:	4b4c      	ldr	r3, [pc, #304]	; (47d0 <fsm_complete+0x244>)
    46a0:	601a      	str	r2, [r3, #0]
    46a2:	4b4b      	ldr	r3, [pc, #300]	; (47d0 <fsm_complete+0x244>)
    46a4:	681b      	ldr	r3, [r3, #0]
    46a6:	2b03      	cmp	r3, #3
    46a8:	d85b      	bhi.n	4762 <fsm_complete+0x1d6>
    46aa:	4b49      	ldr	r3, [pc, #292]	; (47d0 <fsm_complete+0x244>)
    46ac:	681a      	ldr	r2, [r3, #0]
    46ae:	4b49      	ldr	r3, [pc, #292]	; (47d4 <fsm_complete+0x248>)
    46b0:	0092      	lsls	r2, r2, #2
    46b2:	58d2      	ldr	r2, [r2, r3]
    46b4:	4b48      	ldr	r3, [pc, #288]	; (47d8 <fsm_complete+0x24c>)
    46b6:	601a      	str	r2, [r3, #0]
    46b8:	4b45      	ldr	r3, [pc, #276]	; (47d0 <fsm_complete+0x244>)
    46ba:	681b      	ldr	r3, [r3, #0]
    46bc:	1c5a      	adds	r2, r3, #1
    46be:	4b45      	ldr	r3, [pc, #276]	; (47d4 <fsm_complete+0x248>)
    46c0:	0092      	lsls	r2, r2, #2
    46c2:	58d2      	ldr	r2, [r2, r3]
    46c4:	4b45      	ldr	r3, [pc, #276]	; (47dc <fsm_complete+0x250>)
    46c6:	601a      	str	r2, [r3, #0]
    46c8:	4b41      	ldr	r3, [pc, #260]	; (47d0 <fsm_complete+0x244>)
    46ca:	681a      	ldr	r2, [r3, #0]
    46cc:	4b44      	ldr	r3, [pc, #272]	; (47e0 <fsm_complete+0x254>)
    46ce:	0092      	lsls	r2, r2, #2
    46d0:	58d3      	ldr	r3, [r2, r3]
    46d2:	425a      	negs	r2, r3
    46d4:	4b43      	ldr	r3, [pc, #268]	; (47e4 <fsm_complete+0x258>)
    46d6:	601a      	str	r2, [r3, #0]
    46d8:	4b3d      	ldr	r3, [pc, #244]	; (47d0 <fsm_complete+0x244>)
    46da:	681b      	ldr	r3, [r3, #0]
    46dc:	1c5a      	adds	r2, r3, #1
    46de:	4b40      	ldr	r3, [pc, #256]	; (47e0 <fsm_complete+0x254>)
    46e0:	0092      	lsls	r2, r2, #2
    46e2:	58d3      	ldr	r3, [r2, r3]
    46e4:	425a      	negs	r2, r3
    46e6:	4b40      	ldr	r3, [pc, #256]	; (47e8 <fsm_complete+0x25c>)
    46e8:	601a      	str	r2, [r3, #0]
    46ea:	4b39      	ldr	r3, [pc, #228]	; (47d0 <fsm_complete+0x244>)
    46ec:	681a      	ldr	r2, [r3, #0]
    46ee:	4b3f      	ldr	r3, [pc, #252]	; (47ec <fsm_complete+0x260>)
    46f0:	0092      	lsls	r2, r2, #2
    46f2:	58d3      	ldr	r3, [r2, r3]
    46f4:	425a      	negs	r2, r3
    46f6:	4b3e      	ldr	r3, [pc, #248]	; (47f0 <fsm_complete+0x264>)
    46f8:	601a      	str	r2, [r3, #0]
    46fa:	e032      	b.n	4762 <fsm_complete+0x1d6>
    46fc:	4b37      	ldr	r3, [pc, #220]	; (47dc <fsm_complete+0x250>)
    46fe:	681b      	ldr	r3, [r3, #0]
    4700:	697a      	ldr	r2, [r7, #20]
    4702:	429a      	cmp	r2, r3
    4704:	db2d      	blt.n	4762 <fsm_complete+0x1d6>
    4706:	4b32      	ldr	r3, [pc, #200]	; (47d0 <fsm_complete+0x244>)
    4708:	681b      	ldr	r3, [r3, #0]
    470a:	1c5a      	adds	r2, r3, #1
    470c:	4b30      	ldr	r3, [pc, #192]	; (47d0 <fsm_complete+0x244>)
    470e:	601a      	str	r2, [r3, #0]
    4710:	4b2f      	ldr	r3, [pc, #188]	; (47d0 <fsm_complete+0x244>)
    4712:	681b      	ldr	r3, [r3, #0]
    4714:	2b03      	cmp	r3, #3
    4716:	d824      	bhi.n	4762 <fsm_complete+0x1d6>
    4718:	4b2d      	ldr	r3, [pc, #180]	; (47d0 <fsm_complete+0x244>)
    471a:	681a      	ldr	r2, [r3, #0]
    471c:	4b2d      	ldr	r3, [pc, #180]	; (47d4 <fsm_complete+0x248>)
    471e:	0092      	lsls	r2, r2, #2
    4720:	58d2      	ldr	r2, [r2, r3]
    4722:	4b2d      	ldr	r3, [pc, #180]	; (47d8 <fsm_complete+0x24c>)
    4724:	601a      	str	r2, [r3, #0]
    4726:	4b2a      	ldr	r3, [pc, #168]	; (47d0 <fsm_complete+0x244>)
    4728:	681b      	ldr	r3, [r3, #0]
    472a:	1c5a      	adds	r2, r3, #1
    472c:	4b29      	ldr	r3, [pc, #164]	; (47d4 <fsm_complete+0x248>)
    472e:	0092      	lsls	r2, r2, #2
    4730:	58d2      	ldr	r2, [r2, r3]
    4732:	4b2a      	ldr	r3, [pc, #168]	; (47dc <fsm_complete+0x250>)
    4734:	601a      	str	r2, [r3, #0]
    4736:	4b26      	ldr	r3, [pc, #152]	; (47d0 <fsm_complete+0x244>)
    4738:	681a      	ldr	r2, [r3, #0]
    473a:	4b29      	ldr	r3, [pc, #164]	; (47e0 <fsm_complete+0x254>)
    473c:	0092      	lsls	r2, r2, #2
    473e:	58d2      	ldr	r2, [r2, r3]
    4740:	4b28      	ldr	r3, [pc, #160]	; (47e4 <fsm_complete+0x258>)
    4742:	601a      	str	r2, [r3, #0]
    4744:	4b22      	ldr	r3, [pc, #136]	; (47d0 <fsm_complete+0x244>)
    4746:	681b      	ldr	r3, [r3, #0]
    4748:	1c5a      	adds	r2, r3, #1
    474a:	4b25      	ldr	r3, [pc, #148]	; (47e0 <fsm_complete+0x254>)
    474c:	0092      	lsls	r2, r2, #2
    474e:	58d2      	ldr	r2, [r2, r3]
    4750:	4b25      	ldr	r3, [pc, #148]	; (47e8 <fsm_complete+0x25c>)
    4752:	601a      	str	r2, [r3, #0]
    4754:	4b1e      	ldr	r3, [pc, #120]	; (47d0 <fsm_complete+0x244>)
    4756:	681a      	ldr	r2, [r3, #0]
    4758:	4b24      	ldr	r3, [pc, #144]	; (47ec <fsm_complete+0x260>)
    475a:	0092      	lsls	r2, r2, #2
    475c:	58d2      	ldr	r2, [r2, r3]
    475e:	4b24      	ldr	r3, [pc, #144]	; (47f0 <fsm_complete+0x264>)
    4760:	601a      	str	r2, [r3, #0]
    4762:	4b20      	ldr	r3, [pc, #128]	; (47e4 <fsm_complete+0x258>)
    4764:	681b      	ldr	r3, [r3, #0]
    4766:	009a      	lsls	r2, r3, #2
    4768:	4b1b      	ldr	r3, [pc, #108]	; (47d8 <fsm_complete+0x24c>)
    476a:	681b      	ldr	r3, [r3, #0]
    476c:	6979      	ldr	r1, [r7, #20]
    476e:	1ac9      	subs	r1, r1, r3
    4770:	4b1f      	ldr	r3, [pc, #124]	; (47f0 <fsm_complete+0x264>)
    4772:	681b      	ldr	r3, [r3, #0]
    4774:	434b      	muls	r3, r1
    4776:	18d3      	adds	r3, r2, r3
    4778:	60bb      	str	r3, [r7, #8]
    477a:	68bb      	ldr	r3, [r7, #8]
    477c:	109b      	asrs	r3, r3, #2
    477e:	0018      	movs	r0, r3
    4780:	f7fb fd12 	bl	1a8 <dut_set_torque>
    4784:	2313      	movs	r3, #19
    4786:	18fb      	adds	r3, r7, r3
    4788:	781b      	ldrb	r3, [r3, #0]
    478a:	2b03      	cmp	r3, #3
    478c:	d10e      	bne.n	47ac <fsm_complete+0x220>
    478e:	4b1a      	ldr	r3, [pc, #104]	; (47f8 <fsm_complete+0x26c>)
    4790:	4a1a      	ldr	r2, [pc, #104]	; (47fc <fsm_complete+0x270>)
    4792:	601a      	str	r2, [r3, #0]
    4794:	4b1a      	ldr	r3, [pc, #104]	; (4800 <fsm_complete+0x274>)
    4796:	2204      	movs	r2, #4
    4798:	701a      	strb	r2, [r3, #0]
    479a:	2000      	movs	r0, #0
    479c:	f7fb fcd0 	bl	140 <dut_set_speed>
    47a0:	2000      	movs	r0, #0
    47a2:	f7fb fd01 	bl	1a8 <dut_set_torque>
    47a6:	f7fb fcbf 	bl	128 <dut_reset_on>
    47aa:	e00a      	b.n	47c2 <fsm_complete+0x236>
    47ac:	2313      	movs	r3, #19
    47ae:	18fb      	adds	r3, r7, r3
    47b0:	781b      	ldrb	r3, [r3, #0]
    47b2:	2b02      	cmp	r3, #2
    47b4:	d105      	bne.n	47c2 <fsm_complete+0x236>
    47b6:	4b10      	ldr	r3, [pc, #64]	; (47f8 <fsm_complete+0x26c>)
    47b8:	4a13      	ldr	r2, [pc, #76]	; (4808 <fsm_complete+0x27c>)
    47ba:	601a      	str	r2, [r3, #0]
    47bc:	4b10      	ldr	r3, [pc, #64]	; (4800 <fsm_complete+0x274>)
    47be:	2202      	movs	r2, #2
    47c0:	701a      	strb	r2, [r3, #0]
    47c2:	46bd      	mov	sp, r7
    47c4:	b006      	add	sp, #24
    47c6:	bd80      	pop	{r7, pc}
    47c8:	20006014 	.word	0x20006014
    47cc:	20006010 	.word	0x20006010
    47d0:	2000600c 	.word	0x2000600c
    47d4:	20005fcc 	.word	0x20005fcc
    47d8:	20005fbc 	.word	0x20005fbc
    47dc:	20005fc0 	.word	0x20005fc0
    47e0:	20005fe0 	.word	0x20005fe0
    47e4:	20005fc4 	.word	0x20005fc4
    47e8:	20005fc8 	.word	0x20005fc8
    47ec:	20005ff4 	.word	0x20005ff4
    47f0:	20005fb8 	.word	0x20005fb8
    47f4:	20006008 	.word	0x20006008
    47f8:	20000018 	.word	0x20000018
    47fc:	0000452d 	.word	0x0000452d
    4800:	2000603c 	.word	0x2000603c
    4804:	0000480d 	.word	0x0000480d
    4808:	0000458d 	.word	0x0000458d

0000480c <fsm_wait>:
    480c:	b580      	push	{r7, lr}
    480e:	b084      	sub	sp, #16
    4810:	af00      	add	r7, sp, #0
    4812:	6078      	str	r0, [r7, #4]
    4814:	230f      	movs	r3, #15
    4816:	18fb      	adds	r3, r7, r3
    4818:	687a      	ldr	r2, [r7, #4]
    481a:	701a      	strb	r2, [r3, #0]
    481c:	230f      	movs	r3, #15
    481e:	18fb      	adds	r3, r7, r3
    4820:	781b      	ldrb	r3, [r3, #0]
    4822:	2b01      	cmp	r3, #1
    4824:	d12b      	bne.n	487e <fsm_wait+0x72>
    4826:	4b1e      	ldr	r3, [pc, #120]	; (48a0 <fsm_wait+0x94>)
    4828:	4a1e      	ldr	r2, [pc, #120]	; (48a4 <fsm_wait+0x98>)
    482a:	601a      	str	r2, [r3, #0]
    482c:	4b1e      	ldr	r3, [pc, #120]	; (48a8 <fsm_wait+0x9c>)
    482e:	2201      	movs	r2, #1
    4830:	701a      	strb	r2, [r3, #0]
    4832:	4b1e      	ldr	r3, [pc, #120]	; (48ac <fsm_wait+0xa0>)
    4834:	2200      	movs	r2, #0
    4836:	601a      	str	r2, [r3, #0]
    4838:	4b1d      	ldr	r3, [pc, #116]	; (48b0 <fsm_wait+0xa4>)
    483a:	2200      	movs	r2, #0
    483c:	601a      	str	r2, [r3, #0]
    483e:	4b1d      	ldr	r3, [pc, #116]	; (48b4 <fsm_wait+0xa8>)
    4840:	681a      	ldr	r2, [r3, #0]
    4842:	4b1d      	ldr	r3, [pc, #116]	; (48b8 <fsm_wait+0xac>)
    4844:	601a      	str	r2, [r3, #0]
    4846:	4b1b      	ldr	r3, [pc, #108]	; (48b4 <fsm_wait+0xa8>)
    4848:	685a      	ldr	r2, [r3, #4]
    484a:	4b1c      	ldr	r3, [pc, #112]	; (48bc <fsm_wait+0xb0>)
    484c:	601a      	str	r2, [r3, #0]
    484e:	4b1c      	ldr	r3, [pc, #112]	; (48c0 <fsm_wait+0xb4>)
    4850:	681a      	ldr	r2, [r3, #0]
    4852:	4b1c      	ldr	r3, [pc, #112]	; (48c4 <fsm_wait+0xb8>)
    4854:	601a      	str	r2, [r3, #0]
    4856:	4b1a      	ldr	r3, [pc, #104]	; (48c0 <fsm_wait+0xb4>)
    4858:	685a      	ldr	r2, [r3, #4]
    485a:	4b1b      	ldr	r3, [pc, #108]	; (48c8 <fsm_wait+0xbc>)
    485c:	601a      	str	r2, [r3, #0]
    485e:	4b1b      	ldr	r3, [pc, #108]	; (48cc <fsm_wait+0xc0>)
    4860:	681a      	ldr	r2, [r3, #0]
    4862:	4b1b      	ldr	r3, [pc, #108]	; (48d0 <fsm_wait+0xc4>)
    4864:	601a      	str	r2, [r3, #0]
    4866:	4b1b      	ldr	r3, [pc, #108]	; (48d4 <fsm_wait+0xc8>)
    4868:	685b      	ldr	r3, [r3, #4]
    486a:	0018      	movs	r0, r3
    486c:	f7fb fc68 	bl	140 <dut_set_speed>
    4870:	4b14      	ldr	r3, [pc, #80]	; (48c4 <fsm_wait+0xb8>)
    4872:	681b      	ldr	r3, [r3, #0]
    4874:	0018      	movs	r0, r3
    4876:	f7fb fc97 	bl	1a8 <dut_set_torque>
    487a:	f7fb fc55 	bl	128 <dut_reset_on>
    487e:	230f      	movs	r3, #15
    4880:	18fb      	adds	r3, r7, r3
    4882:	781b      	ldrb	r3, [r3, #0]
    4884:	2b03      	cmp	r3, #3
    4886:	d107      	bne.n	4898 <fsm_wait+0x8c>
    4888:	4b05      	ldr	r3, [pc, #20]	; (48a0 <fsm_wait+0x94>)
    488a:	4a13      	ldr	r2, [pc, #76]	; (48d8 <fsm_wait+0xcc>)
    488c:	601a      	str	r2, [r3, #0]
    488e:	4b06      	ldr	r3, [pc, #24]	; (48a8 <fsm_wait+0x9c>)
    4890:	2204      	movs	r2, #4
    4892:	701a      	strb	r2, [r3, #0]
    4894:	f7fb fc48 	bl	128 <dut_reset_on>
    4898:	46c0      	nop			; (mov r8, r8)
    489a:	46bd      	mov	sp, r7
    489c:	b004      	add	sp, #16
    489e:	bd80      	pop	{r7, pc}
    48a0:	20000018 	.word	0x20000018
    48a4:	0000428d 	.word	0x0000428d
    48a8:	2000603c 	.word	0x2000603c
    48ac:	2000600c 	.word	0x2000600c
    48b0:	20006010 	.word	0x20006010
    48b4:	20005fcc 	.word	0x20005fcc
    48b8:	20005fbc 	.word	0x20005fbc
    48bc:	20005fc0 	.word	0x20005fc0
    48c0:	20005fe0 	.word	0x20005fe0
    48c4:	20005fc4 	.word	0x20005fc4
    48c8:	20005fc8 	.word	0x20005fc8
    48cc:	20005ff4 	.word	0x20005ff4
    48d0:	20005fb8 	.word	0x20005fb8
    48d4:	20006014 	.word	0x20006014
    48d8:	0000452d 	.word	0x0000452d

000048dc <__aeabi_uidiv>:
    48dc:	2200      	movs	r2, #0
    48de:	0843      	lsrs	r3, r0, #1
    48e0:	428b      	cmp	r3, r1
    48e2:	d374      	bcc.n	49ce <__aeabi_uidiv+0xf2>
    48e4:	0903      	lsrs	r3, r0, #4
    48e6:	428b      	cmp	r3, r1
    48e8:	d35f      	bcc.n	49aa <__aeabi_uidiv+0xce>
    48ea:	0a03      	lsrs	r3, r0, #8
    48ec:	428b      	cmp	r3, r1
    48ee:	d344      	bcc.n	497a <__aeabi_uidiv+0x9e>
    48f0:	0b03      	lsrs	r3, r0, #12
    48f2:	428b      	cmp	r3, r1
    48f4:	d328      	bcc.n	4948 <__aeabi_uidiv+0x6c>
    48f6:	0c03      	lsrs	r3, r0, #16
    48f8:	428b      	cmp	r3, r1
    48fa:	d30d      	bcc.n	4918 <__aeabi_uidiv+0x3c>
    48fc:	22ff      	movs	r2, #255	; 0xff
    48fe:	0209      	lsls	r1, r1, #8
    4900:	ba12      	rev	r2, r2
    4902:	0c03      	lsrs	r3, r0, #16
    4904:	428b      	cmp	r3, r1
    4906:	d302      	bcc.n	490e <__aeabi_uidiv+0x32>
    4908:	1212      	asrs	r2, r2, #8
    490a:	0209      	lsls	r1, r1, #8
    490c:	d065      	beq.n	49da <__aeabi_uidiv+0xfe>
    490e:	0b03      	lsrs	r3, r0, #12
    4910:	428b      	cmp	r3, r1
    4912:	d319      	bcc.n	4948 <__aeabi_uidiv+0x6c>
    4914:	e000      	b.n	4918 <__aeabi_uidiv+0x3c>
    4916:	0a09      	lsrs	r1, r1, #8
    4918:	0bc3      	lsrs	r3, r0, #15
    491a:	428b      	cmp	r3, r1
    491c:	d301      	bcc.n	4922 <__aeabi_uidiv+0x46>
    491e:	03cb      	lsls	r3, r1, #15
    4920:	1ac0      	subs	r0, r0, r3
    4922:	4152      	adcs	r2, r2
    4924:	0b83      	lsrs	r3, r0, #14
    4926:	428b      	cmp	r3, r1
    4928:	d301      	bcc.n	492e <__aeabi_uidiv+0x52>
    492a:	038b      	lsls	r3, r1, #14
    492c:	1ac0      	subs	r0, r0, r3
    492e:	4152      	adcs	r2, r2
    4930:	0b43      	lsrs	r3, r0, #13
    4932:	428b      	cmp	r3, r1
    4934:	d301      	bcc.n	493a <__aeabi_uidiv+0x5e>
    4936:	034b      	lsls	r3, r1, #13
    4938:	1ac0      	subs	r0, r0, r3
    493a:	4152      	adcs	r2, r2
    493c:	0b03      	lsrs	r3, r0, #12
    493e:	428b      	cmp	r3, r1
    4940:	d301      	bcc.n	4946 <__aeabi_uidiv+0x6a>
    4942:	030b      	lsls	r3, r1, #12
    4944:	1ac0      	subs	r0, r0, r3
    4946:	4152      	adcs	r2, r2
    4948:	0ac3      	lsrs	r3, r0, #11
    494a:	428b      	cmp	r3, r1
    494c:	d301      	bcc.n	4952 <__aeabi_uidiv+0x76>
    494e:	02cb      	lsls	r3, r1, #11
    4950:	1ac0      	subs	r0, r0, r3
    4952:	4152      	adcs	r2, r2
    4954:	0a83      	lsrs	r3, r0, #10
    4956:	428b      	cmp	r3, r1
    4958:	d301      	bcc.n	495e <__aeabi_uidiv+0x82>
    495a:	028b      	lsls	r3, r1, #10
    495c:	1ac0      	subs	r0, r0, r3
    495e:	4152      	adcs	r2, r2
    4960:	0a43      	lsrs	r3, r0, #9
    4962:	428b      	cmp	r3, r1
    4964:	d301      	bcc.n	496a <__aeabi_uidiv+0x8e>
    4966:	024b      	lsls	r3, r1, #9
    4968:	1ac0      	subs	r0, r0, r3
    496a:	4152      	adcs	r2, r2
    496c:	0a03      	lsrs	r3, r0, #8
    496e:	428b      	cmp	r3, r1
    4970:	d301      	bcc.n	4976 <__aeabi_uidiv+0x9a>
    4972:	020b      	lsls	r3, r1, #8
    4974:	1ac0      	subs	r0, r0, r3
    4976:	4152      	adcs	r2, r2
    4978:	d2cd      	bcs.n	4916 <__aeabi_uidiv+0x3a>
    497a:	09c3      	lsrs	r3, r0, #7
    497c:	428b      	cmp	r3, r1
    497e:	d301      	bcc.n	4984 <__aeabi_uidiv+0xa8>
    4980:	01cb      	lsls	r3, r1, #7
    4982:	1ac0      	subs	r0, r0, r3
    4984:	4152      	adcs	r2, r2
    4986:	0983      	lsrs	r3, r0, #6
    4988:	428b      	cmp	r3, r1
    498a:	d301      	bcc.n	4990 <__aeabi_uidiv+0xb4>
    498c:	018b      	lsls	r3, r1, #6
    498e:	1ac0      	subs	r0, r0, r3
    4990:	4152      	adcs	r2, r2
    4992:	0943      	lsrs	r3, r0, #5
    4994:	428b      	cmp	r3, r1
    4996:	d301      	bcc.n	499c <__aeabi_uidiv+0xc0>
    4998:	014b      	lsls	r3, r1, #5
    499a:	1ac0      	subs	r0, r0, r3
    499c:	4152      	adcs	r2, r2
    499e:	0903      	lsrs	r3, r0, #4
    49a0:	428b      	cmp	r3, r1
    49a2:	d301      	bcc.n	49a8 <__aeabi_uidiv+0xcc>
    49a4:	010b      	lsls	r3, r1, #4
    49a6:	1ac0      	subs	r0, r0, r3
    49a8:	4152      	adcs	r2, r2
    49aa:	08c3      	lsrs	r3, r0, #3
    49ac:	428b      	cmp	r3, r1
    49ae:	d301      	bcc.n	49b4 <__aeabi_uidiv+0xd8>
    49b0:	00cb      	lsls	r3, r1, #3
    49b2:	1ac0      	subs	r0, r0, r3
    49b4:	4152      	adcs	r2, r2
    49b6:	0883      	lsrs	r3, r0, #2
    49b8:	428b      	cmp	r3, r1
    49ba:	d301      	bcc.n	49c0 <__aeabi_uidiv+0xe4>
    49bc:	008b      	lsls	r3, r1, #2
    49be:	1ac0      	subs	r0, r0, r3
    49c0:	4152      	adcs	r2, r2
    49c2:	0843      	lsrs	r3, r0, #1
    49c4:	428b      	cmp	r3, r1
    49c6:	d301      	bcc.n	49cc <__aeabi_uidiv+0xf0>
    49c8:	004b      	lsls	r3, r1, #1
    49ca:	1ac0      	subs	r0, r0, r3
    49cc:	4152      	adcs	r2, r2
    49ce:	1a41      	subs	r1, r0, r1
    49d0:	d200      	bcs.n	49d4 <__aeabi_uidiv+0xf8>
    49d2:	4601      	mov	r1, r0
    49d4:	4152      	adcs	r2, r2
    49d6:	4610      	mov	r0, r2
    49d8:	4770      	bx	lr
    49da:	e7ff      	b.n	49dc <__aeabi_uidiv+0x100>
    49dc:	b501      	push	{r0, lr}
    49de:	2000      	movs	r0, #0
    49e0:	f000 f8f0 	bl	4bc4 <__aeabi_idiv0>
    49e4:	bd02      	pop	{r1, pc}
    49e6:	46c0      	nop			; (mov r8, r8)

000049e8 <__aeabi_uidivmod>:
    49e8:	2900      	cmp	r1, #0
    49ea:	d0f7      	beq.n	49dc <__aeabi_uidiv+0x100>
    49ec:	e776      	b.n	48dc <__aeabi_uidiv>
    49ee:	4770      	bx	lr

000049f0 <__aeabi_idiv>:
    49f0:	4603      	mov	r3, r0
    49f2:	430b      	orrs	r3, r1
    49f4:	d47f      	bmi.n	4af6 <__aeabi_idiv+0x106>
    49f6:	2200      	movs	r2, #0
    49f8:	0843      	lsrs	r3, r0, #1
    49fa:	428b      	cmp	r3, r1
    49fc:	d374      	bcc.n	4ae8 <__aeabi_idiv+0xf8>
    49fe:	0903      	lsrs	r3, r0, #4
    4a00:	428b      	cmp	r3, r1
    4a02:	d35f      	bcc.n	4ac4 <__aeabi_idiv+0xd4>
    4a04:	0a03      	lsrs	r3, r0, #8
    4a06:	428b      	cmp	r3, r1
    4a08:	d344      	bcc.n	4a94 <__aeabi_idiv+0xa4>
    4a0a:	0b03      	lsrs	r3, r0, #12
    4a0c:	428b      	cmp	r3, r1
    4a0e:	d328      	bcc.n	4a62 <__aeabi_idiv+0x72>
    4a10:	0c03      	lsrs	r3, r0, #16
    4a12:	428b      	cmp	r3, r1
    4a14:	d30d      	bcc.n	4a32 <__aeabi_idiv+0x42>
    4a16:	22ff      	movs	r2, #255	; 0xff
    4a18:	0209      	lsls	r1, r1, #8
    4a1a:	ba12      	rev	r2, r2
    4a1c:	0c03      	lsrs	r3, r0, #16
    4a1e:	428b      	cmp	r3, r1
    4a20:	d302      	bcc.n	4a28 <__aeabi_idiv+0x38>
    4a22:	1212      	asrs	r2, r2, #8
    4a24:	0209      	lsls	r1, r1, #8
    4a26:	d065      	beq.n	4af4 <__aeabi_idiv+0x104>
    4a28:	0b03      	lsrs	r3, r0, #12
    4a2a:	428b      	cmp	r3, r1
    4a2c:	d319      	bcc.n	4a62 <__aeabi_idiv+0x72>
    4a2e:	e000      	b.n	4a32 <__aeabi_idiv+0x42>
    4a30:	0a09      	lsrs	r1, r1, #8
    4a32:	0bc3      	lsrs	r3, r0, #15
    4a34:	428b      	cmp	r3, r1
    4a36:	d301      	bcc.n	4a3c <__aeabi_idiv+0x4c>
    4a38:	03cb      	lsls	r3, r1, #15
    4a3a:	1ac0      	subs	r0, r0, r3
    4a3c:	4152      	adcs	r2, r2
    4a3e:	0b83      	lsrs	r3, r0, #14
    4a40:	428b      	cmp	r3, r1
    4a42:	d301      	bcc.n	4a48 <__aeabi_idiv+0x58>
    4a44:	038b      	lsls	r3, r1, #14
    4a46:	1ac0      	subs	r0, r0, r3
    4a48:	4152      	adcs	r2, r2
    4a4a:	0b43      	lsrs	r3, r0, #13
    4a4c:	428b      	cmp	r3, r1
    4a4e:	d301      	bcc.n	4a54 <__aeabi_idiv+0x64>
    4a50:	034b      	lsls	r3, r1, #13
    4a52:	1ac0      	subs	r0, r0, r3
    4a54:	4152      	adcs	r2, r2
    4a56:	0b03      	lsrs	r3, r0, #12
    4a58:	428b      	cmp	r3, r1
    4a5a:	d301      	bcc.n	4a60 <__aeabi_idiv+0x70>
    4a5c:	030b      	lsls	r3, r1, #12
    4a5e:	1ac0      	subs	r0, r0, r3
    4a60:	4152      	adcs	r2, r2
    4a62:	0ac3      	lsrs	r3, r0, #11
    4a64:	428b      	cmp	r3, r1
    4a66:	d301      	bcc.n	4a6c <__aeabi_idiv+0x7c>
    4a68:	02cb      	lsls	r3, r1, #11
    4a6a:	1ac0      	subs	r0, r0, r3
    4a6c:	4152      	adcs	r2, r2
    4a6e:	0a83      	lsrs	r3, r0, #10
    4a70:	428b      	cmp	r3, r1
    4a72:	d301      	bcc.n	4a78 <__aeabi_idiv+0x88>
    4a74:	028b      	lsls	r3, r1, #10
    4a76:	1ac0      	subs	r0, r0, r3
    4a78:	4152      	adcs	r2, r2
    4a7a:	0a43      	lsrs	r3, r0, #9
    4a7c:	428b      	cmp	r3, r1
    4a7e:	d301      	bcc.n	4a84 <__aeabi_idiv+0x94>
    4a80:	024b      	lsls	r3, r1, #9
    4a82:	1ac0      	subs	r0, r0, r3
    4a84:	4152      	adcs	r2, r2
    4a86:	0a03      	lsrs	r3, r0, #8
    4a88:	428b      	cmp	r3, r1
    4a8a:	d301      	bcc.n	4a90 <__aeabi_idiv+0xa0>
    4a8c:	020b      	lsls	r3, r1, #8
    4a8e:	1ac0      	subs	r0, r0, r3
    4a90:	4152      	adcs	r2, r2
    4a92:	d2cd      	bcs.n	4a30 <__aeabi_idiv+0x40>
    4a94:	09c3      	lsrs	r3, r0, #7
    4a96:	428b      	cmp	r3, r1
    4a98:	d301      	bcc.n	4a9e <__aeabi_idiv+0xae>
    4a9a:	01cb      	lsls	r3, r1, #7
    4a9c:	1ac0      	subs	r0, r0, r3
    4a9e:	4152      	adcs	r2, r2
    4aa0:	0983      	lsrs	r3, r0, #6
    4aa2:	428b      	cmp	r3, r1
    4aa4:	d301      	bcc.n	4aaa <__aeabi_idiv+0xba>
    4aa6:	018b      	lsls	r3, r1, #6
    4aa8:	1ac0      	subs	r0, r0, r3
    4aaa:	4152      	adcs	r2, r2
    4aac:	0943      	lsrs	r3, r0, #5
    4aae:	428b      	cmp	r3, r1
    4ab0:	d301      	bcc.n	4ab6 <__aeabi_idiv+0xc6>
    4ab2:	014b      	lsls	r3, r1, #5
    4ab4:	1ac0      	subs	r0, r0, r3
    4ab6:	4152      	adcs	r2, r2
    4ab8:	0903      	lsrs	r3, r0, #4
    4aba:	428b      	cmp	r3, r1
    4abc:	d301      	bcc.n	4ac2 <__aeabi_idiv+0xd2>
    4abe:	010b      	lsls	r3, r1, #4
    4ac0:	1ac0      	subs	r0, r0, r3
    4ac2:	4152      	adcs	r2, r2
    4ac4:	08c3      	lsrs	r3, r0, #3
    4ac6:	428b      	cmp	r3, r1
    4ac8:	d301      	bcc.n	4ace <__aeabi_idiv+0xde>
    4aca:	00cb      	lsls	r3, r1, #3
    4acc:	1ac0      	subs	r0, r0, r3
    4ace:	4152      	adcs	r2, r2
    4ad0:	0883      	lsrs	r3, r0, #2
    4ad2:	428b      	cmp	r3, r1
    4ad4:	d301      	bcc.n	4ada <__aeabi_idiv+0xea>
    4ad6:	008b      	lsls	r3, r1, #2
    4ad8:	1ac0      	subs	r0, r0, r3
    4ada:	4152      	adcs	r2, r2
    4adc:	0843      	lsrs	r3, r0, #1
    4ade:	428b      	cmp	r3, r1
    4ae0:	d301      	bcc.n	4ae6 <__aeabi_idiv+0xf6>
    4ae2:	004b      	lsls	r3, r1, #1
    4ae4:	1ac0      	subs	r0, r0, r3
    4ae6:	4152      	adcs	r2, r2
    4ae8:	1a41      	subs	r1, r0, r1
    4aea:	d200      	bcs.n	4aee <__aeabi_idiv+0xfe>
    4aec:	4601      	mov	r1, r0
    4aee:	4152      	adcs	r2, r2
    4af0:	4610      	mov	r0, r2
    4af2:	4770      	bx	lr
    4af4:	e05d      	b.n	4bb2 <__aeabi_idiv+0x1c2>
    4af6:	0fca      	lsrs	r2, r1, #31
    4af8:	d000      	beq.n	4afc <__aeabi_idiv+0x10c>
    4afa:	4249      	negs	r1, r1
    4afc:	1003      	asrs	r3, r0, #32
    4afe:	d300      	bcc.n	4b02 <__aeabi_idiv+0x112>
    4b00:	4240      	negs	r0, r0
    4b02:	4053      	eors	r3, r2
    4b04:	2200      	movs	r2, #0
    4b06:	469c      	mov	ip, r3
    4b08:	0903      	lsrs	r3, r0, #4
    4b0a:	428b      	cmp	r3, r1
    4b0c:	d32d      	bcc.n	4b6a <__aeabi_idiv+0x17a>
    4b0e:	0a03      	lsrs	r3, r0, #8
    4b10:	428b      	cmp	r3, r1
    4b12:	d312      	bcc.n	4b3a <__aeabi_idiv+0x14a>
    4b14:	22fc      	movs	r2, #252	; 0xfc
    4b16:	0189      	lsls	r1, r1, #6
    4b18:	ba12      	rev	r2, r2
    4b1a:	0a03      	lsrs	r3, r0, #8
    4b1c:	428b      	cmp	r3, r1
    4b1e:	d30c      	bcc.n	4b3a <__aeabi_idiv+0x14a>
    4b20:	0189      	lsls	r1, r1, #6
    4b22:	1192      	asrs	r2, r2, #6
    4b24:	428b      	cmp	r3, r1
    4b26:	d308      	bcc.n	4b3a <__aeabi_idiv+0x14a>
    4b28:	0189      	lsls	r1, r1, #6
    4b2a:	1192      	asrs	r2, r2, #6
    4b2c:	428b      	cmp	r3, r1
    4b2e:	d304      	bcc.n	4b3a <__aeabi_idiv+0x14a>
    4b30:	0189      	lsls	r1, r1, #6
    4b32:	d03a      	beq.n	4baa <__aeabi_idiv+0x1ba>
    4b34:	1192      	asrs	r2, r2, #6
    4b36:	e000      	b.n	4b3a <__aeabi_idiv+0x14a>
    4b38:	0989      	lsrs	r1, r1, #6
    4b3a:	09c3      	lsrs	r3, r0, #7
    4b3c:	428b      	cmp	r3, r1
    4b3e:	d301      	bcc.n	4b44 <__aeabi_idiv+0x154>
    4b40:	01cb      	lsls	r3, r1, #7
    4b42:	1ac0      	subs	r0, r0, r3
    4b44:	4152      	adcs	r2, r2
    4b46:	0983      	lsrs	r3, r0, #6
    4b48:	428b      	cmp	r3, r1
    4b4a:	d301      	bcc.n	4b50 <__aeabi_idiv+0x160>
    4b4c:	018b      	lsls	r3, r1, #6
    4b4e:	1ac0      	subs	r0, r0, r3
    4b50:	4152      	adcs	r2, r2
    4b52:	0943      	lsrs	r3, r0, #5
    4b54:	428b      	cmp	r3, r1
    4b56:	d301      	bcc.n	4b5c <__aeabi_idiv+0x16c>
    4b58:	014b      	lsls	r3, r1, #5
    4b5a:	1ac0      	subs	r0, r0, r3
    4b5c:	4152      	adcs	r2, r2
    4b5e:	0903      	lsrs	r3, r0, #4
    4b60:	428b      	cmp	r3, r1
    4b62:	d301      	bcc.n	4b68 <__aeabi_idiv+0x178>
    4b64:	010b      	lsls	r3, r1, #4
    4b66:	1ac0      	subs	r0, r0, r3
    4b68:	4152      	adcs	r2, r2
    4b6a:	08c3      	lsrs	r3, r0, #3
    4b6c:	428b      	cmp	r3, r1
    4b6e:	d301      	bcc.n	4b74 <__aeabi_idiv+0x184>
    4b70:	00cb      	lsls	r3, r1, #3
    4b72:	1ac0      	subs	r0, r0, r3
    4b74:	4152      	adcs	r2, r2
    4b76:	0883      	lsrs	r3, r0, #2
    4b78:	428b      	cmp	r3, r1
    4b7a:	d301      	bcc.n	4b80 <__aeabi_idiv+0x190>
    4b7c:	008b      	lsls	r3, r1, #2
    4b7e:	1ac0      	subs	r0, r0, r3
    4b80:	4152      	adcs	r2, r2
    4b82:	d2d9      	bcs.n	4b38 <__aeabi_idiv+0x148>
    4b84:	0843      	lsrs	r3, r0, #1
    4b86:	428b      	cmp	r3, r1
    4b88:	d301      	bcc.n	4b8e <__aeabi_idiv+0x19e>
    4b8a:	004b      	lsls	r3, r1, #1
    4b8c:	1ac0      	subs	r0, r0, r3
    4b8e:	4152      	adcs	r2, r2
    4b90:	1a41      	subs	r1, r0, r1
    4b92:	d200      	bcs.n	4b96 <__aeabi_idiv+0x1a6>
    4b94:	4601      	mov	r1, r0
    4b96:	4663      	mov	r3, ip
    4b98:	4152      	adcs	r2, r2
    4b9a:	105b      	asrs	r3, r3, #1
    4b9c:	4610      	mov	r0, r2
    4b9e:	d301      	bcc.n	4ba4 <__aeabi_idiv+0x1b4>
    4ba0:	4240      	negs	r0, r0
    4ba2:	2b00      	cmp	r3, #0
    4ba4:	d500      	bpl.n	4ba8 <__aeabi_idiv+0x1b8>
    4ba6:	4249      	negs	r1, r1
    4ba8:	4770      	bx	lr
    4baa:	4663      	mov	r3, ip
    4bac:	105b      	asrs	r3, r3, #1
    4bae:	d300      	bcc.n	4bb2 <__aeabi_idiv+0x1c2>
    4bb0:	4240      	negs	r0, r0
    4bb2:	b501      	push	{r0, lr}
    4bb4:	2000      	movs	r0, #0
    4bb6:	f000 f805 	bl	4bc4 <__aeabi_idiv0>
    4bba:	bd02      	pop	{r1, pc}

00004bbc <__aeabi_idivmod>:
    4bbc:	2900      	cmp	r1, #0
    4bbe:	d0f8      	beq.n	4bb2 <__aeabi_idiv+0x1c2>
    4bc0:	e716      	b.n	49f0 <__aeabi_idiv>
    4bc2:	4770      	bx	lr

00004bc4 <__aeabi_idiv0>:
    4bc4:	4770      	bx	lr
    4bc6:	46c0      	nop			; (mov r8, r8)

00004bc8 <rt_set_PSP>:
    4bc8:	f380 8809 	msr	PSP, r0
    4bcc:	4770      	bx	lr

00004bce <rt_get_PSP>:
    4bce:	f3ef 8009 	mrs	r0, PSP
    4bd2:	4770      	bx	lr

00004bd4 <os_set_env>:
    4bd4:	4668      	mov	r0, sp
    4bd6:	f380 8809 	msr	PSP, r0
    4bda:	484a      	ldr	r0, [pc, #296]	; (4d04 <OS_Tick_Handler+0xa>)
    4bdc:	7800      	ldrb	r0, [r0, #0]
    4bde:	07c0      	lsls	r0, r0, #31
    4be0:	d103      	bne.n	4bea <PrivilegedE>
    4be2:	2003      	movs	r0, #3
    4be4:	f380 8814 	msr	CONTROL, r0
    4be8:	4770      	bx	lr

00004bea <PrivilegedE>:
    4bea:	2002      	movs	r0, #2
    4bec:	f380 8814 	msr	CONTROL, r0
    4bf0:	4770      	bx	lr

00004bf2 <_alloc_box>:
    4bf2:	4b45      	ldr	r3, [pc, #276]	; (4d08 <OS_Tick_Handler+0xe>)
    4bf4:	469c      	mov	ip, r3
    4bf6:	f3ef 8305 	mrs	r3, IPSR
    4bfa:	061b      	lsls	r3, r3, #24
    4bfc:	d105      	bne.n	4c0a <PrivilegedA>
    4bfe:	f3ef 8314 	mrs	r3, CONTROL
    4c02:	07db      	lsls	r3, r3, #31
    4c04:	d001      	beq.n	4c0a <PrivilegedA>
    4c06:	df00      	svc	0
    4c08:	4770      	bx	lr

00004c0a <PrivilegedA>:
    4c0a:	4760      	bx	ip

00004c0c <_free_box>:
    4c0c:	4b3f      	ldr	r3, [pc, #252]	; (4d0c <OS_Tick_Handler+0x12>)
    4c0e:	469c      	mov	ip, r3
    4c10:	f3ef 8305 	mrs	r3, IPSR
    4c14:	061b      	lsls	r3, r3, #24
    4c16:	d105      	bne.n	4c24 <PrivilegedF>
    4c18:	f3ef 8314 	mrs	r3, CONTROL
    4c1c:	07db      	lsls	r3, r3, #31
    4c1e:	d001      	beq.n	4c24 <PrivilegedF>
    4c20:	df00      	svc	0
    4c22:	4770      	bx	lr

00004c24 <PrivilegedF>:
    4c24:	4760      	bx	ip

00004c26 <SVC_Handler>:
    4c26:	f3ef 8009 	mrs	r0, PSP
    4c2a:	6981      	ldr	r1, [r0, #24]
    4c2c:	3902      	subs	r1, #2
    4c2e:	7809      	ldrb	r1, [r1, #0]
    4c30:	2900      	cmp	r1, #0
    4c32:	d12b      	bne.n	4c8c <SVC_User>
    4c34:	46a6      	mov	lr, r4
    4c36:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4c38:	46a4      	mov	ip, r4
    4c3a:	4674      	mov	r4, lr
    4c3c:	47e0      	blx	ip
    4c3e:	f3ef 8309 	mrs	r3, PSP
    4c42:	c307      	stmia	r3!, {r0, r1, r2}
    4c44:	4b32      	ldr	r3, [pc, #200]	; (4d10 <OS_Tick_Handler+0x16>)
    4c46:	cb06      	ldmia	r3!, {r1, r2}
    4c48:	4291      	cmp	r1, r2
    4c4a:	d01c      	beq.n	4c86 <SVC_Exit>
    4c4c:	3b08      	subs	r3, #8
    4c4e:	2900      	cmp	r1, #0
    4c50:	d00d      	beq.n	4c6e <SVC_Next>
    4c52:	f3ef 8009 	mrs	r0, PSP
    4c56:	3820      	subs	r0, #32
    4c58:	6288      	str	r0, [r1, #40]	; 0x28
    4c5a:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4c5c:	4644      	mov	r4, r8
    4c5e:	464d      	mov	r5, r9
    4c60:	4656      	mov	r6, sl
    4c62:	465f      	mov	r7, fp
    4c64:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4c66:	b40c      	push	{r2, r3}
    4c68:	f003 fba6 	bl	83b8 <rt_stk_check>
    4c6c:	bc0c      	pop	{r2, r3}

00004c6e <SVC_Next>:
    4c6e:	601a      	str	r2, [r3, #0]
    4c70:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4c72:	3010      	adds	r0, #16
    4c74:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4c76:	46a0      	mov	r8, r4
    4c78:	46a9      	mov	r9, r5
    4c7a:	46b2      	mov	sl, r6
    4c7c:	46bb      	mov	fp, r7
    4c7e:	f380 8809 	msr	PSP, r0
    4c82:	3820      	subs	r0, #32
    4c84:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004c86 <SVC_Exit>:
    4c86:	2002      	movs	r0, #2
    4c88:	43c0      	mvns	r0, r0
    4c8a:	4700      	bx	r0

00004c8c <SVC_User>:
    4c8c:	b510      	push	{r4, lr}
    4c8e:	4a21      	ldr	r2, [pc, #132]	; (4d14 <OS_Tick_Handler+0x1a>)
    4c90:	6812      	ldr	r2, [r2, #0]
    4c92:	4291      	cmp	r1, r2
    4c94:	d809      	bhi.n	4caa <SVC_Done>
    4c96:	4c20      	ldr	r4, [pc, #128]	; (4d18 <OS_Tick_Handler+0x1e>)
    4c98:	0089      	lsls	r1, r1, #2
    4c9a:	5864      	ldr	r4, [r4, r1]
    4c9c:	46a6      	mov	lr, r4
    4c9e:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4ca0:	46a4      	mov	ip, r4
    4ca2:	47f0      	blx	lr
    4ca4:	f3ef 8409 	mrs	r4, PSP
    4ca8:	c40f      	stmia	r4!, {r0, r1, r2, r3}

00004caa <SVC_Done>:
    4caa:	bd10      	pop	{r4, pc}

00004cac <PendSV_Handler>:
    4cac:	f003 faf4 	bl	8298 <rt_pop_req>

00004cb0 <Sys_Switch>:
    4cb0:	4b17      	ldr	r3, [pc, #92]	; (4d10 <OS_Tick_Handler+0x16>)
    4cb2:	cb06      	ldmia	r3!, {r1, r2}
    4cb4:	4291      	cmp	r1, r2
    4cb6:	d01a      	beq.n	4cee <Sys_Exit>
    4cb8:	3b08      	subs	r3, #8
    4cba:	f3ef 8009 	mrs	r0, PSP
    4cbe:	3820      	subs	r0, #32
    4cc0:	6288      	str	r0, [r1, #40]	; 0x28
    4cc2:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4cc4:	4644      	mov	r4, r8
    4cc6:	464d      	mov	r5, r9
    4cc8:	4656      	mov	r6, sl
    4cca:	465f      	mov	r7, fp
    4ccc:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4cce:	b40c      	push	{r2, r3}
    4cd0:	f003 fb72 	bl	83b8 <rt_stk_check>
    4cd4:	bc0c      	pop	{r2, r3}
    4cd6:	601a      	str	r2, [r3, #0]
    4cd8:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4cda:	3010      	adds	r0, #16
    4cdc:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4cde:	46a0      	mov	r8, r4
    4ce0:	46a9      	mov	r9, r5
    4ce2:	46b2      	mov	sl, r6
    4ce4:	46bb      	mov	fp, r7
    4ce6:	f380 8809 	msr	PSP, r0
    4cea:	3820      	subs	r0, #32
    4cec:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004cee <Sys_Exit>:
    4cee:	2002      	movs	r0, #2
    4cf0:	43c0      	mvns	r0, r0
    4cf2:	4700      	bx	r0

00004cf4 <SysTick_Handler>:
    4cf4:	f003 fb42 	bl	837c <rt_systick>
    4cf8:	e7da      	b.n	4cb0 <Sys_Switch>

00004cfa <OS_Tick_Handler>:
    4cfa:	f003 fb3d 	bl	8378 <os_tick_irqack>
    4cfe:	f003 fb3d 	bl	837c <rt_systick>
    4d02:	e7d5      	b.n	4cb0 <Sys_Switch>
    4d04:	00008b64 	.word	0x00008b64
    4d08:	000074b5 	.word	0x000074b5
    4d0c:	000074f5 	.word	0x000074f5
    4d10:	200060b8 	.word	0x200060b8
    4d14:	00000000 	.word	0x00000000
    4d18:	fffffffc 	.word	0xfffffffc

00004d1c <__aeabi_uldivmod>:
    4d1c:	2b00      	cmp	r3, #0
    4d1e:	d111      	bne.n	4d44 <__aeabi_uldivmod+0x28>
    4d20:	2a00      	cmp	r2, #0
    4d22:	d10f      	bne.n	4d44 <__aeabi_uldivmod+0x28>
    4d24:	2900      	cmp	r1, #0
    4d26:	d100      	bne.n	4d2a <__aeabi_uldivmod+0xe>
    4d28:	2800      	cmp	r0, #0
    4d2a:	d002      	beq.n	4d32 <__aeabi_uldivmod+0x16>
    4d2c:	2100      	movs	r1, #0
    4d2e:	43c9      	mvns	r1, r1
    4d30:	1c08      	adds	r0, r1, #0
    4d32:	b407      	push	{r0, r1, r2}
    4d34:	4802      	ldr	r0, [pc, #8]	; (4d40 <__aeabi_uldivmod+0x24>)
    4d36:	a102      	add	r1, pc, #8	; (adr r1, 4d40 <__aeabi_uldivmod+0x24>)
    4d38:	1840      	adds	r0, r0, r1
    4d3a:	9002      	str	r0, [sp, #8]
    4d3c:	bd03      	pop	{r0, r1, pc}
    4d3e:	46c0      	nop			; (mov r8, r8)
    4d40:	fffffe85 	.word	0xfffffe85
    4d44:	b403      	push	{r0, r1}
    4d46:	4668      	mov	r0, sp
    4d48:	b501      	push	{r0, lr}
    4d4a:	9802      	ldr	r0, [sp, #8]
    4d4c:	f000 f832 	bl	4db4 <__udivmoddi4>
    4d50:	9b01      	ldr	r3, [sp, #4]
    4d52:	469e      	mov	lr, r3
    4d54:	b002      	add	sp, #8
    4d56:	bc0c      	pop	{r2, r3}
    4d58:	4770      	bx	lr
    4d5a:	46c0      	nop			; (mov r8, r8)

00004d5c <__aeabi_lmul>:
    4d5c:	b5f0      	push	{r4, r5, r6, r7, lr}
    4d5e:	464f      	mov	r7, r9
    4d60:	4646      	mov	r6, r8
    4d62:	b4c0      	push	{r6, r7}
    4d64:	0416      	lsls	r6, r2, #16
    4d66:	0c36      	lsrs	r6, r6, #16
    4d68:	4699      	mov	r9, r3
    4d6a:	0033      	movs	r3, r6
    4d6c:	0405      	lsls	r5, r0, #16
    4d6e:	0c2c      	lsrs	r4, r5, #16
    4d70:	0c07      	lsrs	r7, r0, #16
    4d72:	0c15      	lsrs	r5, r2, #16
    4d74:	4363      	muls	r3, r4
    4d76:	437e      	muls	r6, r7
    4d78:	436f      	muls	r7, r5
    4d7a:	4365      	muls	r5, r4
    4d7c:	0c1c      	lsrs	r4, r3, #16
    4d7e:	19ad      	adds	r5, r5, r6
    4d80:	1964      	adds	r4, r4, r5
    4d82:	469c      	mov	ip, r3
    4d84:	42a6      	cmp	r6, r4
    4d86:	d903      	bls.n	4d90 <__aeabi_lmul+0x34>
    4d88:	2380      	movs	r3, #128	; 0x80
    4d8a:	025b      	lsls	r3, r3, #9
    4d8c:	4698      	mov	r8, r3
    4d8e:	4447      	add	r7, r8
    4d90:	4663      	mov	r3, ip
    4d92:	0c25      	lsrs	r5, r4, #16
    4d94:	19ef      	adds	r7, r5, r7
    4d96:	041d      	lsls	r5, r3, #16
    4d98:	464b      	mov	r3, r9
    4d9a:	434a      	muls	r2, r1
    4d9c:	4343      	muls	r3, r0
    4d9e:	0c2d      	lsrs	r5, r5, #16
    4da0:	0424      	lsls	r4, r4, #16
    4da2:	1964      	adds	r4, r4, r5
    4da4:	1899      	adds	r1, r3, r2
    4da6:	19c9      	adds	r1, r1, r7
    4da8:	0020      	movs	r0, r4
    4daa:	bc0c      	pop	{r2, r3}
    4dac:	4690      	mov	r8, r2
    4dae:	4699      	mov	r9, r3
    4db0:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4db2:	46c0      	nop			; (mov r8, r8)

00004db4 <__udivmoddi4>:
    4db4:	b5f0      	push	{r4, r5, r6, r7, lr}
    4db6:	464d      	mov	r5, r9
    4db8:	4656      	mov	r6, sl
    4dba:	4644      	mov	r4, r8
    4dbc:	465f      	mov	r7, fp
    4dbe:	b4f0      	push	{r4, r5, r6, r7}
    4dc0:	4692      	mov	sl, r2
    4dc2:	b083      	sub	sp, #12
    4dc4:	0004      	movs	r4, r0
    4dc6:	000d      	movs	r5, r1
    4dc8:	4699      	mov	r9, r3
    4dca:	428b      	cmp	r3, r1
    4dcc:	d82f      	bhi.n	4e2e <__udivmoddi4+0x7a>
    4dce:	d02c      	beq.n	4e2a <__udivmoddi4+0x76>
    4dd0:	4649      	mov	r1, r9
    4dd2:	4650      	mov	r0, sl
    4dd4:	f000 f8ae 	bl	4f34 <__clzdi2>
    4dd8:	0029      	movs	r1, r5
    4dda:	0006      	movs	r6, r0
    4ddc:	0020      	movs	r0, r4
    4dde:	f000 f8a9 	bl	4f34 <__clzdi2>
    4de2:	1a33      	subs	r3, r6, r0
    4de4:	4698      	mov	r8, r3
    4de6:	3b20      	subs	r3, #32
    4de8:	469b      	mov	fp, r3
    4dea:	d500      	bpl.n	4dee <__udivmoddi4+0x3a>
    4dec:	e074      	b.n	4ed8 <__udivmoddi4+0x124>
    4dee:	4653      	mov	r3, sl
    4df0:	465a      	mov	r2, fp
    4df2:	4093      	lsls	r3, r2
    4df4:	001f      	movs	r7, r3
    4df6:	4653      	mov	r3, sl
    4df8:	4642      	mov	r2, r8
    4dfa:	4093      	lsls	r3, r2
    4dfc:	001e      	movs	r6, r3
    4dfe:	42af      	cmp	r7, r5
    4e00:	d829      	bhi.n	4e56 <__udivmoddi4+0xa2>
    4e02:	d026      	beq.n	4e52 <__udivmoddi4+0x9e>
    4e04:	465b      	mov	r3, fp
    4e06:	1ba4      	subs	r4, r4, r6
    4e08:	41bd      	sbcs	r5, r7
    4e0a:	2b00      	cmp	r3, #0
    4e0c:	da00      	bge.n	4e10 <__udivmoddi4+0x5c>
    4e0e:	e079      	b.n	4f04 <__udivmoddi4+0x150>
    4e10:	2200      	movs	r2, #0
    4e12:	2300      	movs	r3, #0
    4e14:	9200      	str	r2, [sp, #0]
    4e16:	9301      	str	r3, [sp, #4]
    4e18:	2301      	movs	r3, #1
    4e1a:	465a      	mov	r2, fp
    4e1c:	4093      	lsls	r3, r2
    4e1e:	9301      	str	r3, [sp, #4]
    4e20:	2301      	movs	r3, #1
    4e22:	4642      	mov	r2, r8
    4e24:	4093      	lsls	r3, r2
    4e26:	9300      	str	r3, [sp, #0]
    4e28:	e019      	b.n	4e5e <__udivmoddi4+0xaa>
    4e2a:	4282      	cmp	r2, r0
    4e2c:	d9d0      	bls.n	4dd0 <__udivmoddi4+0x1c>
    4e2e:	2200      	movs	r2, #0
    4e30:	2300      	movs	r3, #0
    4e32:	9200      	str	r2, [sp, #0]
    4e34:	9301      	str	r3, [sp, #4]
    4e36:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4e38:	2b00      	cmp	r3, #0
    4e3a:	d001      	beq.n	4e40 <__udivmoddi4+0x8c>
    4e3c:	601c      	str	r4, [r3, #0]
    4e3e:	605d      	str	r5, [r3, #4]
    4e40:	9800      	ldr	r0, [sp, #0]
    4e42:	9901      	ldr	r1, [sp, #4]
    4e44:	b003      	add	sp, #12
    4e46:	bc3c      	pop	{r2, r3, r4, r5}
    4e48:	4690      	mov	r8, r2
    4e4a:	4699      	mov	r9, r3
    4e4c:	46a2      	mov	sl, r4
    4e4e:	46ab      	mov	fp, r5
    4e50:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4e52:	42a3      	cmp	r3, r4
    4e54:	d9d6      	bls.n	4e04 <__udivmoddi4+0x50>
    4e56:	2200      	movs	r2, #0
    4e58:	2300      	movs	r3, #0
    4e5a:	9200      	str	r2, [sp, #0]
    4e5c:	9301      	str	r3, [sp, #4]
    4e5e:	4643      	mov	r3, r8
    4e60:	2b00      	cmp	r3, #0
    4e62:	d0e8      	beq.n	4e36 <__udivmoddi4+0x82>
    4e64:	07fb      	lsls	r3, r7, #31
    4e66:	0872      	lsrs	r2, r6, #1
    4e68:	431a      	orrs	r2, r3
    4e6a:	4646      	mov	r6, r8
    4e6c:	087b      	lsrs	r3, r7, #1
    4e6e:	e00e      	b.n	4e8e <__udivmoddi4+0xda>
    4e70:	42ab      	cmp	r3, r5
    4e72:	d101      	bne.n	4e78 <__udivmoddi4+0xc4>
    4e74:	42a2      	cmp	r2, r4
    4e76:	d80c      	bhi.n	4e92 <__udivmoddi4+0xde>
    4e78:	1aa4      	subs	r4, r4, r2
    4e7a:	419d      	sbcs	r5, r3
    4e7c:	2001      	movs	r0, #1
    4e7e:	1924      	adds	r4, r4, r4
    4e80:	416d      	adcs	r5, r5
    4e82:	2100      	movs	r1, #0
    4e84:	3e01      	subs	r6, #1
    4e86:	1824      	adds	r4, r4, r0
    4e88:	414d      	adcs	r5, r1
    4e8a:	2e00      	cmp	r6, #0
    4e8c:	d006      	beq.n	4e9c <__udivmoddi4+0xe8>
    4e8e:	42ab      	cmp	r3, r5
    4e90:	d9ee      	bls.n	4e70 <__udivmoddi4+0xbc>
    4e92:	3e01      	subs	r6, #1
    4e94:	1924      	adds	r4, r4, r4
    4e96:	416d      	adcs	r5, r5
    4e98:	2e00      	cmp	r6, #0
    4e9a:	d1f8      	bne.n	4e8e <__udivmoddi4+0xda>
    4e9c:	465b      	mov	r3, fp
    4e9e:	9800      	ldr	r0, [sp, #0]
    4ea0:	9901      	ldr	r1, [sp, #4]
    4ea2:	1900      	adds	r0, r0, r4
    4ea4:	4169      	adcs	r1, r5
    4ea6:	2b00      	cmp	r3, #0
    4ea8:	db22      	blt.n	4ef0 <__udivmoddi4+0x13c>
    4eaa:	002b      	movs	r3, r5
    4eac:	465a      	mov	r2, fp
    4eae:	40d3      	lsrs	r3, r2
    4eb0:	002a      	movs	r2, r5
    4eb2:	4644      	mov	r4, r8
    4eb4:	40e2      	lsrs	r2, r4
    4eb6:	001c      	movs	r4, r3
    4eb8:	465b      	mov	r3, fp
    4eba:	0015      	movs	r5, r2
    4ebc:	2b00      	cmp	r3, #0
    4ebe:	db2c      	blt.n	4f1a <__udivmoddi4+0x166>
    4ec0:	0026      	movs	r6, r4
    4ec2:	409e      	lsls	r6, r3
    4ec4:	0033      	movs	r3, r6
    4ec6:	0026      	movs	r6, r4
    4ec8:	4647      	mov	r7, r8
    4eca:	40be      	lsls	r6, r7
    4ecc:	0032      	movs	r2, r6
    4ece:	1a80      	subs	r0, r0, r2
    4ed0:	4199      	sbcs	r1, r3
    4ed2:	9000      	str	r0, [sp, #0]
    4ed4:	9101      	str	r1, [sp, #4]
    4ed6:	e7ae      	b.n	4e36 <__udivmoddi4+0x82>
    4ed8:	4642      	mov	r2, r8
    4eda:	2320      	movs	r3, #32
    4edc:	1a9b      	subs	r3, r3, r2
    4ede:	4652      	mov	r2, sl
    4ee0:	40da      	lsrs	r2, r3
    4ee2:	4641      	mov	r1, r8
    4ee4:	0013      	movs	r3, r2
    4ee6:	464a      	mov	r2, r9
    4ee8:	408a      	lsls	r2, r1
    4eea:	0017      	movs	r7, r2
    4eec:	431f      	orrs	r7, r3
    4eee:	e782      	b.n	4df6 <__udivmoddi4+0x42>
    4ef0:	4642      	mov	r2, r8
    4ef2:	2320      	movs	r3, #32
    4ef4:	1a9b      	subs	r3, r3, r2
    4ef6:	002a      	movs	r2, r5
    4ef8:	4646      	mov	r6, r8
    4efa:	409a      	lsls	r2, r3
    4efc:	0023      	movs	r3, r4
    4efe:	40f3      	lsrs	r3, r6
    4f00:	4313      	orrs	r3, r2
    4f02:	e7d5      	b.n	4eb0 <__udivmoddi4+0xfc>
    4f04:	4642      	mov	r2, r8
    4f06:	2320      	movs	r3, #32
    4f08:	2100      	movs	r1, #0
    4f0a:	1a9b      	subs	r3, r3, r2
    4f0c:	2200      	movs	r2, #0
    4f0e:	9100      	str	r1, [sp, #0]
    4f10:	9201      	str	r2, [sp, #4]
    4f12:	2201      	movs	r2, #1
    4f14:	40da      	lsrs	r2, r3
    4f16:	9201      	str	r2, [sp, #4]
    4f18:	e782      	b.n	4e20 <__udivmoddi4+0x6c>
    4f1a:	4642      	mov	r2, r8
    4f1c:	2320      	movs	r3, #32
    4f1e:	0026      	movs	r6, r4
    4f20:	1a9b      	subs	r3, r3, r2
    4f22:	40de      	lsrs	r6, r3
    4f24:	002f      	movs	r7, r5
    4f26:	46b4      	mov	ip, r6
    4f28:	4097      	lsls	r7, r2
    4f2a:	4666      	mov	r6, ip
    4f2c:	003b      	movs	r3, r7
    4f2e:	4333      	orrs	r3, r6
    4f30:	e7c9      	b.n	4ec6 <__udivmoddi4+0x112>
    4f32:	46c0      	nop			; (mov r8, r8)

00004f34 <__clzdi2>:
    4f34:	b510      	push	{r4, lr}
    4f36:	2900      	cmp	r1, #0
    4f38:	d103      	bne.n	4f42 <__clzdi2+0xe>
    4f3a:	f000 f807 	bl	4f4c <__clzsi2>
    4f3e:	3020      	adds	r0, #32
    4f40:	e002      	b.n	4f48 <__clzdi2+0x14>
    4f42:	1c08      	adds	r0, r1, #0
    4f44:	f000 f802 	bl	4f4c <__clzsi2>
    4f48:	bd10      	pop	{r4, pc}
    4f4a:	46c0      	nop			; (mov r8, r8)

00004f4c <__clzsi2>:
    4f4c:	211c      	movs	r1, #28
    4f4e:	2301      	movs	r3, #1
    4f50:	041b      	lsls	r3, r3, #16
    4f52:	4298      	cmp	r0, r3
    4f54:	d301      	bcc.n	4f5a <__clzsi2+0xe>
    4f56:	0c00      	lsrs	r0, r0, #16
    4f58:	3910      	subs	r1, #16
    4f5a:	0a1b      	lsrs	r3, r3, #8
    4f5c:	4298      	cmp	r0, r3
    4f5e:	d301      	bcc.n	4f64 <__clzsi2+0x18>
    4f60:	0a00      	lsrs	r0, r0, #8
    4f62:	3908      	subs	r1, #8
    4f64:	091b      	lsrs	r3, r3, #4
    4f66:	4298      	cmp	r0, r3
    4f68:	d301      	bcc.n	4f6e <__clzsi2+0x22>
    4f6a:	0900      	lsrs	r0, r0, #4
    4f6c:	3904      	subs	r1, #4
    4f6e:	a202      	add	r2, pc, #8	; (adr r2, 4f78 <__clzsi2+0x2c>)
    4f70:	5c10      	ldrb	r0, [r2, r0]
    4f72:	1840      	adds	r0, r0, r1
    4f74:	4770      	bx	lr
    4f76:	46c0      	nop			; (mov r8, r8)
    4f78:	02020304 	.word	0x02020304
    4f7c:	01010101 	.word	0x01010101
	...

00004f88 <abs>:
    4f88:	17c3      	asrs	r3, r0, #31
    4f8a:	18c0      	adds	r0, r0, r3
    4f8c:	4058      	eors	r0, r3
    4f8e:	4770      	bx	lr

00004f90 <atexit>:
    4f90:	b510      	push	{r4, lr}
    4f92:	0001      	movs	r1, r0
    4f94:	2300      	movs	r3, #0
    4f96:	2200      	movs	r2, #0
    4f98:	2000      	movs	r0, #0
    4f9a:	f000 f8a7 	bl	50ec <__register_exitproc>
    4f9e:	bd10      	pop	{r4, pc}

00004fa0 <exit>:
    4fa0:	b510      	push	{r4, lr}
    4fa2:	2100      	movs	r1, #0
    4fa4:	0004      	movs	r4, r0
    4fa6:	f000 f917 	bl	51d8 <__call_exitprocs>
    4faa:	4b04      	ldr	r3, [pc, #16]	; (4fbc <exit+0x1c>)
    4fac:	6818      	ldr	r0, [r3, #0]
    4fae:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    4fb0:	2b00      	cmp	r3, #0
    4fb2:	d000      	beq.n	4fb6 <exit+0x16>
    4fb4:	4798      	blx	r3
    4fb6:	0020      	movs	r0, r4
    4fb8:	f7fb fda4 	bl	b04 <_exit>
    4fbc:	000095d8 	.word	0x000095d8

00004fc0 <__libc_fini_array>:
    4fc0:	b570      	push	{r4, r5, r6, lr}
    4fc2:	4b09      	ldr	r3, [pc, #36]	; (4fe8 <__libc_fini_array+0x28>)
    4fc4:	4c09      	ldr	r4, [pc, #36]	; (4fec <__libc_fini_array+0x2c>)
    4fc6:	1ae4      	subs	r4, r4, r3
    4fc8:	10a4      	asrs	r4, r4, #2
    4fca:	d009      	beq.n	4fe0 <__libc_fini_array+0x20>
    4fcc:	4a08      	ldr	r2, [pc, #32]	; (4ff0 <__libc_fini_array+0x30>)
    4fce:	18a5      	adds	r5, r4, r2
    4fd0:	00ad      	lsls	r5, r5, #2
    4fd2:	18ed      	adds	r5, r5, r3
    4fd4:	682b      	ldr	r3, [r5, #0]
    4fd6:	3c01      	subs	r4, #1
    4fd8:	4798      	blx	r3
    4fda:	3d04      	subs	r5, #4
    4fdc:	2c00      	cmp	r4, #0
    4fde:	d1f9      	bne.n	4fd4 <__libc_fini_array+0x14>
    4fe0:	f7fb fedc 	bl	d9c <_fini>
    4fe4:	bd70      	pop	{r4, r5, r6, pc}
    4fe6:	46c0      	nop			; (mov r8, r8)
	...
    4ff0:	3fffffff 	.word	0x3fffffff

00004ff4 <__libc_init_array>:
    4ff4:	b570      	push	{r4, r5, r6, lr}
    4ff6:	4e0d      	ldr	r6, [pc, #52]	; (502c <__libc_init_array+0x38>)
    4ff8:	4d0d      	ldr	r5, [pc, #52]	; (5030 <__libc_init_array+0x3c>)
    4ffa:	2400      	movs	r4, #0
    4ffc:	1bad      	subs	r5, r5, r6
    4ffe:	10ad      	asrs	r5, r5, #2
    5000:	d005      	beq.n	500e <__libc_init_array+0x1a>
    5002:	00a3      	lsls	r3, r4, #2
    5004:	58f3      	ldr	r3, [r6, r3]
    5006:	3401      	adds	r4, #1
    5008:	4798      	blx	r3
    500a:	42a5      	cmp	r5, r4
    500c:	d1f9      	bne.n	5002 <__libc_init_array+0xe>
    500e:	f7fb febf 	bl	d90 <_init>
    5012:	4e08      	ldr	r6, [pc, #32]	; (5034 <__libc_init_array+0x40>)
    5014:	4d08      	ldr	r5, [pc, #32]	; (5038 <__libc_init_array+0x44>)
    5016:	2400      	movs	r4, #0
    5018:	1bad      	subs	r5, r5, r6
    501a:	10ad      	asrs	r5, r5, #2
    501c:	d005      	beq.n	502a <__libc_init_array+0x36>
    501e:	00a3      	lsls	r3, r4, #2
    5020:	58f3      	ldr	r3, [r6, r3]
    5022:	3401      	adds	r4, #1
    5024:	4798      	blx	r3
    5026:	42a5      	cmp	r5, r4
    5028:	d1f9      	bne.n	501e <__libc_init_array+0x2a>
    502a:	bd70      	pop	{r4, r5, r6, pc}
	...

0000503c <cleanup_glue>:
    503c:	b570      	push	{r4, r5, r6, lr}
    503e:	000c      	movs	r4, r1
    5040:	6809      	ldr	r1, [r1, #0]
    5042:	0005      	movs	r5, r0
    5044:	2900      	cmp	r1, #0
    5046:	d001      	beq.n	504c <cleanup_glue+0x10>
    5048:	f7ff fff8 	bl	503c <cleanup_glue>
    504c:	0028      	movs	r0, r5
    504e:	0021      	movs	r1, r4
    5050:	f000 f990 	bl	5374 <_free_r>
    5054:	bd70      	pop	{r4, r5, r6, pc}
    5056:	46c0      	nop			; (mov r8, r8)

00005058 <_reclaim_reent>:
    5058:	4b23      	ldr	r3, [pc, #140]	; (50e8 <_reclaim_reent+0x90>)
    505a:	b570      	push	{r4, r5, r6, lr}
    505c:	681b      	ldr	r3, [r3, #0]
    505e:	0005      	movs	r5, r0
    5060:	4283      	cmp	r3, r0
    5062:	d034      	beq.n	50ce <_reclaim_reent+0x76>
    5064:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    5066:	2b00      	cmp	r3, #0
    5068:	d011      	beq.n	508e <_reclaim_reent+0x36>
    506a:	2600      	movs	r6, #0
    506c:	5999      	ldr	r1, [r3, r6]
    506e:	2900      	cmp	r1, #0
    5070:	d006      	beq.n	5080 <_reclaim_reent+0x28>
    5072:	680c      	ldr	r4, [r1, #0]
    5074:	0028      	movs	r0, r5
    5076:	f000 f97d 	bl	5374 <_free_r>
    507a:	1e21      	subs	r1, r4, #0
    507c:	d1f9      	bne.n	5072 <_reclaim_reent+0x1a>
    507e:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    5080:	3604      	adds	r6, #4
    5082:	2e80      	cmp	r6, #128	; 0x80
    5084:	d1f2      	bne.n	506c <_reclaim_reent+0x14>
    5086:	0019      	movs	r1, r3
    5088:	0028      	movs	r0, r5
    508a:	f000 f973 	bl	5374 <_free_r>
    508e:	6c29      	ldr	r1, [r5, #64]	; 0x40
    5090:	2900      	cmp	r1, #0
    5092:	d002      	beq.n	509a <_reclaim_reent+0x42>
    5094:	0028      	movs	r0, r5
    5096:	f000 f96d 	bl	5374 <_free_r>
    509a:	23a4      	movs	r3, #164	; 0xa4
    509c:	005b      	lsls	r3, r3, #1
    509e:	58e9      	ldr	r1, [r5, r3]
    50a0:	2900      	cmp	r1, #0
    50a2:	d00b      	beq.n	50bc <_reclaim_reent+0x64>
    50a4:	002e      	movs	r6, r5
    50a6:	364d      	adds	r6, #77	; 0x4d
    50a8:	36ff      	adds	r6, #255	; 0xff
    50aa:	42b1      	cmp	r1, r6
    50ac:	d006      	beq.n	50bc <_reclaim_reent+0x64>
    50ae:	680c      	ldr	r4, [r1, #0]
    50b0:	0028      	movs	r0, r5
    50b2:	f000 f95f 	bl	5374 <_free_r>
    50b6:	0021      	movs	r1, r4
    50b8:	42a6      	cmp	r6, r4
    50ba:	d1f8      	bne.n	50ae <_reclaim_reent+0x56>
    50bc:	6d69      	ldr	r1, [r5, #84]	; 0x54
    50be:	2900      	cmp	r1, #0
    50c0:	d002      	beq.n	50c8 <_reclaim_reent+0x70>
    50c2:	0028      	movs	r0, r5
    50c4:	f000 f956 	bl	5374 <_free_r>
    50c8:	6bab      	ldr	r3, [r5, #56]	; 0x38
    50ca:	2b00      	cmp	r3, #0
    50cc:	d100      	bne.n	50d0 <_reclaim_reent+0x78>
    50ce:	bd70      	pop	{r4, r5, r6, pc}
    50d0:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    50d2:	0028      	movs	r0, r5
    50d4:	4798      	blx	r3
    50d6:	23b8      	movs	r3, #184	; 0xb8
    50d8:	009b      	lsls	r3, r3, #2
    50da:	58e9      	ldr	r1, [r5, r3]
    50dc:	2900      	cmp	r1, #0
    50de:	d0f6      	beq.n	50ce <_reclaim_reent+0x76>
    50e0:	0028      	movs	r0, r5
    50e2:	f7ff ffab 	bl	503c <cleanup_glue>
    50e6:	e7f2      	b.n	50ce <_reclaim_reent+0x76>
    50e8:	20000448 	.word	0x20000448

000050ec <__register_exitproc>:
    50ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    50ee:	4644      	mov	r4, r8
    50f0:	465f      	mov	r7, fp
    50f2:	4656      	mov	r6, sl
    50f4:	464d      	mov	r5, r9
    50f6:	469b      	mov	fp, r3
    50f8:	4b2f      	ldr	r3, [pc, #188]	; (51b8 <__register_exitproc+0xcc>)
    50fa:	b4f0      	push	{r4, r5, r6, r7}
    50fc:	681c      	ldr	r4, [r3, #0]
    50fe:	23a4      	movs	r3, #164	; 0xa4
    5100:	005b      	lsls	r3, r3, #1
    5102:	0005      	movs	r5, r0
    5104:	58e0      	ldr	r0, [r4, r3]
    5106:	000e      	movs	r6, r1
    5108:	4690      	mov	r8, r2
    510a:	2800      	cmp	r0, #0
    510c:	d04b      	beq.n	51a6 <__register_exitproc+0xba>
    510e:	6843      	ldr	r3, [r0, #4]
    5110:	2b1f      	cmp	r3, #31
    5112:	dc0d      	bgt.n	5130 <__register_exitproc+0x44>
    5114:	1c5c      	adds	r4, r3, #1
    5116:	2d00      	cmp	r5, #0
    5118:	d121      	bne.n	515e <__register_exitproc+0x72>
    511a:	3302      	adds	r3, #2
    511c:	009b      	lsls	r3, r3, #2
    511e:	6044      	str	r4, [r0, #4]
    5120:	501e      	str	r6, [r3, r0]
    5122:	2000      	movs	r0, #0
    5124:	bc3c      	pop	{r2, r3, r4, r5}
    5126:	4690      	mov	r8, r2
    5128:	4699      	mov	r9, r3
    512a:	46a2      	mov	sl, r4
    512c:	46ab      	mov	fp, r5
    512e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5130:	4b22      	ldr	r3, [pc, #136]	; (51bc <__register_exitproc+0xd0>)
    5132:	2b00      	cmp	r3, #0
    5134:	d03c      	beq.n	51b0 <__register_exitproc+0xc4>
    5136:	20c8      	movs	r0, #200	; 0xc8
    5138:	0040      	lsls	r0, r0, #1
    513a:	e000      	b.n	513e <__register_exitproc+0x52>
    513c:	bf00      	nop
    513e:	2800      	cmp	r0, #0
    5140:	d036      	beq.n	51b0 <__register_exitproc+0xc4>
    5142:	22a4      	movs	r2, #164	; 0xa4
    5144:	2300      	movs	r3, #0
    5146:	0052      	lsls	r2, r2, #1
    5148:	58a1      	ldr	r1, [r4, r2]
    514a:	6043      	str	r3, [r0, #4]
    514c:	6001      	str	r1, [r0, #0]
    514e:	50a0      	str	r0, [r4, r2]
    5150:	3240      	adds	r2, #64	; 0x40
    5152:	5083      	str	r3, [r0, r2]
    5154:	3204      	adds	r2, #4
    5156:	5083      	str	r3, [r0, r2]
    5158:	2401      	movs	r4, #1
    515a:	2d00      	cmp	r5, #0
    515c:	d0dd      	beq.n	511a <__register_exitproc+0x2e>
    515e:	009a      	lsls	r2, r3, #2
    5160:	4691      	mov	r9, r2
    5162:	4481      	add	r9, r0
    5164:	4642      	mov	r2, r8
    5166:	2188      	movs	r1, #136	; 0x88
    5168:	464f      	mov	r7, r9
    516a:	507a      	str	r2, [r7, r1]
    516c:	22c4      	movs	r2, #196	; 0xc4
    516e:	0052      	lsls	r2, r2, #1
    5170:	4690      	mov	r8, r2
    5172:	4480      	add	r8, r0
    5174:	4642      	mov	r2, r8
    5176:	3987      	subs	r1, #135	; 0x87
    5178:	4099      	lsls	r1, r3
    517a:	6812      	ldr	r2, [r2, #0]
    517c:	468a      	mov	sl, r1
    517e:	430a      	orrs	r2, r1
    5180:	4694      	mov	ip, r2
    5182:	4642      	mov	r2, r8
    5184:	4661      	mov	r1, ip
    5186:	6011      	str	r1, [r2, #0]
    5188:	2284      	movs	r2, #132	; 0x84
    518a:	4649      	mov	r1, r9
    518c:	465f      	mov	r7, fp
    518e:	0052      	lsls	r2, r2, #1
    5190:	508f      	str	r7, [r1, r2]
    5192:	2d02      	cmp	r5, #2
    5194:	d1c1      	bne.n	511a <__register_exitproc+0x2e>
    5196:	0002      	movs	r2, r0
    5198:	4655      	mov	r5, sl
    519a:	328d      	adds	r2, #141	; 0x8d
    519c:	32ff      	adds	r2, #255	; 0xff
    519e:	6811      	ldr	r1, [r2, #0]
    51a0:	430d      	orrs	r5, r1
    51a2:	6015      	str	r5, [r2, #0]
    51a4:	e7b9      	b.n	511a <__register_exitproc+0x2e>
    51a6:	0020      	movs	r0, r4
    51a8:	304d      	adds	r0, #77	; 0x4d
    51aa:	30ff      	adds	r0, #255	; 0xff
    51ac:	50e0      	str	r0, [r4, r3]
    51ae:	e7ae      	b.n	510e <__register_exitproc+0x22>
    51b0:	2001      	movs	r0, #1
    51b2:	4240      	negs	r0, r0
    51b4:	e7b6      	b.n	5124 <__register_exitproc+0x38>
    51b6:	46c0      	nop			; (mov r8, r8)
    51b8:	000095d8 	.word	0x000095d8
    51bc:	00000000 	.word	0x00000000

000051c0 <register_fini>:
    51c0:	4b03      	ldr	r3, [pc, #12]	; (51d0 <register_fini+0x10>)
    51c2:	b510      	push	{r4, lr}
    51c4:	2b00      	cmp	r3, #0
    51c6:	d002      	beq.n	51ce <register_fini+0xe>
    51c8:	4802      	ldr	r0, [pc, #8]	; (51d4 <register_fini+0x14>)
    51ca:	f7ff fee1 	bl	4f90 <atexit>
    51ce:	bd10      	pop	{r4, pc}
    51d0:	00000000 	.word	0x00000000
    51d4:	00004fc1 	.word	0x00004fc1

000051d8 <__call_exitprocs>:
    51d8:	b5f0      	push	{r4, r5, r6, r7, lr}
    51da:	465f      	mov	r7, fp
    51dc:	4656      	mov	r6, sl
    51de:	464d      	mov	r5, r9
    51e0:	4644      	mov	r4, r8
    51e2:	b4f0      	push	{r4, r5, r6, r7}
    51e4:	000f      	movs	r7, r1
    51e6:	4b39      	ldr	r3, [pc, #228]	; (52cc <__call_exitprocs+0xf4>)
    51e8:	b085      	sub	sp, #20
    51ea:	681b      	ldr	r3, [r3, #0]
    51ec:	9001      	str	r0, [sp, #4]
    51ee:	9302      	str	r3, [sp, #8]
    51f0:	3349      	adds	r3, #73	; 0x49
    51f2:	33ff      	adds	r3, #255	; 0xff
    51f4:	9303      	str	r3, [sp, #12]
    51f6:	22a4      	movs	r2, #164	; 0xa4
    51f8:	9b02      	ldr	r3, [sp, #8]
    51fa:	0052      	lsls	r2, r2, #1
    51fc:	589e      	ldr	r6, [r3, r2]
    51fe:	2e00      	cmp	r6, #0
    5200:	d04e      	beq.n	52a0 <__call_exitprocs+0xc8>
    5202:	9b03      	ldr	r3, [sp, #12]
    5204:	4699      	mov	r9, r3
    5206:	23c4      	movs	r3, #196	; 0xc4
    5208:	005b      	lsls	r3, r3, #1
    520a:	4698      	mov	r8, r3
    520c:	3304      	adds	r3, #4
    520e:	469a      	mov	sl, r3
    5210:	6874      	ldr	r4, [r6, #4]
    5212:	44b0      	add	r8, r6
    5214:	00a5      	lsls	r5, r4, #2
    5216:	1975      	adds	r5, r6, r5
    5218:	44b2      	add	sl, r6
    521a:	3c01      	subs	r4, #1
    521c:	d508      	bpl.n	5230 <__call_exitprocs+0x58>
    521e:	e02d      	b.n	527c <__call_exitprocs+0xa4>
    5220:	1d6b      	adds	r3, r5, #5
    5222:	33ff      	adds	r3, #255	; 0xff
    5224:	681b      	ldr	r3, [r3, #0]
    5226:	429f      	cmp	r7, r3
    5228:	d004      	beq.n	5234 <__call_exitprocs+0x5c>
    522a:	3d04      	subs	r5, #4
    522c:	3c01      	subs	r4, #1
    522e:	d325      	bcc.n	527c <__call_exitprocs+0xa4>
    5230:	2f00      	cmp	r7, #0
    5232:	d1f5      	bne.n	5220 <__call_exitprocs+0x48>
    5234:	6873      	ldr	r3, [r6, #4]
    5236:	686a      	ldr	r2, [r5, #4]
    5238:	3b01      	subs	r3, #1
    523a:	42a3      	cmp	r3, r4
    523c:	d039      	beq.n	52b2 <__call_exitprocs+0xda>
    523e:	2300      	movs	r3, #0
    5240:	606b      	str	r3, [r5, #4]
    5242:	2a00      	cmp	r2, #0
    5244:	d0f1      	beq.n	522a <__call_exitprocs+0x52>
    5246:	6873      	ldr	r3, [r6, #4]
    5248:	4641      	mov	r1, r8
    524a:	469b      	mov	fp, r3
    524c:	2301      	movs	r3, #1
    524e:	40a3      	lsls	r3, r4
    5250:	6809      	ldr	r1, [r1, #0]
    5252:	4219      	tst	r1, r3
    5254:	d02b      	beq.n	52ae <__call_exitprocs+0xd6>
    5256:	4651      	mov	r1, sl
    5258:	6809      	ldr	r1, [r1, #0]
    525a:	4219      	tst	r1, r3
    525c:	d12b      	bne.n	52b6 <__call_exitprocs+0xde>
    525e:	002b      	movs	r3, r5
    5260:	3384      	adds	r3, #132	; 0x84
    5262:	6819      	ldr	r1, [r3, #0]
    5264:	9801      	ldr	r0, [sp, #4]
    5266:	4790      	blx	r2
    5268:	6873      	ldr	r3, [r6, #4]
    526a:	455b      	cmp	r3, fp
    526c:	d1c3      	bne.n	51f6 <__call_exitprocs+0x1e>
    526e:	464b      	mov	r3, r9
    5270:	681b      	ldr	r3, [r3, #0]
    5272:	42b3      	cmp	r3, r6
    5274:	d1bf      	bne.n	51f6 <__call_exitprocs+0x1e>
    5276:	3d04      	subs	r5, #4
    5278:	3c01      	subs	r4, #1
    527a:	d2d9      	bcs.n	5230 <__call_exitprocs+0x58>
    527c:	4b14      	ldr	r3, [pc, #80]	; (52d0 <__call_exitprocs+0xf8>)
    527e:	2b00      	cmp	r3, #0
    5280:	d00e      	beq.n	52a0 <__call_exitprocs+0xc8>
    5282:	6873      	ldr	r3, [r6, #4]
    5284:	2b00      	cmp	r3, #0
    5286:	d11b      	bne.n	52c0 <__call_exitprocs+0xe8>
    5288:	6833      	ldr	r3, [r6, #0]
    528a:	2b00      	cmp	r3, #0
    528c:	d01c      	beq.n	52c8 <__call_exitprocs+0xf0>
    528e:	464a      	mov	r2, r9
    5290:	0030      	movs	r0, r6
    5292:	6013      	str	r3, [r2, #0]
    5294:	e000      	b.n	5298 <__call_exitprocs+0xc0>
    5296:	bf00      	nop
    5298:	464b      	mov	r3, r9
    529a:	681e      	ldr	r6, [r3, #0]
    529c:	2e00      	cmp	r6, #0
    529e:	d1b2      	bne.n	5206 <__call_exitprocs+0x2e>
    52a0:	b005      	add	sp, #20
    52a2:	bc3c      	pop	{r2, r3, r4, r5}
    52a4:	4690      	mov	r8, r2
    52a6:	4699      	mov	r9, r3
    52a8:	46a2      	mov	sl, r4
    52aa:	46ab      	mov	fp, r5
    52ac:	bdf0      	pop	{r4, r5, r6, r7, pc}
    52ae:	4790      	blx	r2
    52b0:	e7da      	b.n	5268 <__call_exitprocs+0x90>
    52b2:	6074      	str	r4, [r6, #4]
    52b4:	e7c5      	b.n	5242 <__call_exitprocs+0x6a>
    52b6:	002b      	movs	r3, r5
    52b8:	3384      	adds	r3, #132	; 0x84
    52ba:	6818      	ldr	r0, [r3, #0]
    52bc:	4790      	blx	r2
    52be:	e7d3      	b.n	5268 <__call_exitprocs+0x90>
    52c0:	6833      	ldr	r3, [r6, #0]
    52c2:	46b1      	mov	r9, r6
    52c4:	001e      	movs	r6, r3
    52c6:	e7e9      	b.n	529c <__call_exitprocs+0xc4>
    52c8:	2300      	movs	r3, #0
    52ca:	e7fa      	b.n	52c2 <__call_exitprocs+0xea>
    52cc:	000095d8 	.word	0x000095d8
    52d0:	00000000 	.word	0x00000000

000052d4 <_malloc_trim_r>:
    52d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    52d6:	000c      	movs	r4, r1
    52d8:	0006      	movs	r6, r0
    52da:	f000 fbd7 	bl	5a8c <__malloc_lock>
    52de:	4f20      	ldr	r7, [pc, #128]	; (5360 <_malloc_trim_r+0x8c>)
    52e0:	68bb      	ldr	r3, [r7, #8]
    52e2:	685d      	ldr	r5, [r3, #4]
    52e4:	2303      	movs	r3, #3
    52e6:	439d      	bics	r5, r3
    52e8:	4b1e      	ldr	r3, [pc, #120]	; (5364 <_malloc_trim_r+0x90>)
    52ea:	1b2c      	subs	r4, r5, r4
    52ec:	469c      	mov	ip, r3
    52ee:	4464      	add	r4, ip
    52f0:	0b24      	lsrs	r4, r4, #12
    52f2:	4b1d      	ldr	r3, [pc, #116]	; (5368 <_malloc_trim_r+0x94>)
    52f4:	3c01      	subs	r4, #1
    52f6:	0324      	lsls	r4, r4, #12
    52f8:	429c      	cmp	r4, r3
    52fa:	dd07      	ble.n	530c <_malloc_trim_r+0x38>
    52fc:	2100      	movs	r1, #0
    52fe:	0030      	movs	r0, r6
    5300:	f000 fbc8 	bl	5a94 <_sbrk_r>
    5304:	68bb      	ldr	r3, [r7, #8]
    5306:	195b      	adds	r3, r3, r5
    5308:	4298      	cmp	r0, r3
    530a:	d004      	beq.n	5316 <_malloc_trim_r+0x42>
    530c:	0030      	movs	r0, r6
    530e:	f000 fbbf 	bl	5a90 <__malloc_unlock>
    5312:	2000      	movs	r0, #0
    5314:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5316:	4261      	negs	r1, r4
    5318:	0030      	movs	r0, r6
    531a:	f000 fbbb 	bl	5a94 <_sbrk_r>
    531e:	1c43      	adds	r3, r0, #1
    5320:	d00d      	beq.n	533e <_malloc_trim_r+0x6a>
    5322:	2301      	movs	r3, #1
    5324:	1b2d      	subs	r5, r5, r4
    5326:	68ba      	ldr	r2, [r7, #8]
    5328:	431d      	orrs	r5, r3
    532a:	4b10      	ldr	r3, [pc, #64]	; (536c <_malloc_trim_r+0x98>)
    532c:	6055      	str	r5, [r2, #4]
    532e:	681a      	ldr	r2, [r3, #0]
    5330:	0030      	movs	r0, r6
    5332:	1b14      	subs	r4, r2, r4
    5334:	601c      	str	r4, [r3, #0]
    5336:	f000 fbab 	bl	5a90 <__malloc_unlock>
    533a:	2001      	movs	r0, #1
    533c:	e7ea      	b.n	5314 <_malloc_trim_r+0x40>
    533e:	2100      	movs	r1, #0
    5340:	0030      	movs	r0, r6
    5342:	f000 fba7 	bl	5a94 <_sbrk_r>
    5346:	68bb      	ldr	r3, [r7, #8]
    5348:	1ac2      	subs	r2, r0, r3
    534a:	2a0f      	cmp	r2, #15
    534c:	ddde      	ble.n	530c <_malloc_trim_r+0x38>
    534e:	4908      	ldr	r1, [pc, #32]	; (5370 <_malloc_trim_r+0x9c>)
    5350:	6809      	ldr	r1, [r1, #0]
    5352:	1a40      	subs	r0, r0, r1
    5354:	4905      	ldr	r1, [pc, #20]	; (536c <_malloc_trim_r+0x98>)
    5356:	6008      	str	r0, [r1, #0]
    5358:	2101      	movs	r1, #1
    535a:	430a      	orrs	r2, r1
    535c:	605a      	str	r2, [r3, #4]
    535e:	e7d5      	b.n	530c <_malloc_trim_r+0x38>
    5360:	2000044c 	.word	0x2000044c
    5364:	00000fef 	.word	0x00000fef
    5368:	00000fff 	.word	0x00000fff
    536c:	2000604c 	.word	0x2000604c
    5370:	20000858 	.word	0x20000858

00005374 <_free_r>:
    5374:	b5f0      	push	{r4, r5, r6, r7, lr}
    5376:	4647      	mov	r7, r8
    5378:	0005      	movs	r5, r0
    537a:	b480      	push	{r7}
    537c:	1e0c      	subs	r4, r1, #0
    537e:	d03e      	beq.n	53fe <_free_r+0x8a>
    5380:	f000 fb84 	bl	5a8c <__malloc_lock>
    5384:	2301      	movs	r3, #1
    5386:	0021      	movs	r1, r4
    5388:	4698      	mov	r8, r3
    538a:	3908      	subs	r1, #8
    538c:	684e      	ldr	r6, [r1, #4]
    538e:	4642      	mov	r2, r8
    5390:	0033      	movs	r3, r6
    5392:	2003      	movs	r0, #3
    5394:	4393      	bics	r3, r2
    5396:	18cc      	adds	r4, r1, r3
    5398:	6862      	ldr	r2, [r4, #4]
    539a:	4382      	bics	r2, r0
    539c:	4860      	ldr	r0, [pc, #384]	; (5520 <_free_r+0x1ac>)
    539e:	6887      	ldr	r7, [r0, #8]
    53a0:	42bc      	cmp	r4, r7
    53a2:	d05a      	beq.n	545a <_free_r+0xe6>
    53a4:	4647      	mov	r7, r8
    53a6:	6062      	str	r2, [r4, #4]
    53a8:	4237      	tst	r7, r6
    53aa:	d10b      	bne.n	53c4 <_free_r+0x50>
    53ac:	2708      	movs	r7, #8
    53ae:	46bc      	mov	ip, r7
    53b0:	680e      	ldr	r6, [r1, #0]
    53b2:	4484      	add	ip, r0
    53b4:	1b89      	subs	r1, r1, r6
    53b6:	199b      	adds	r3, r3, r6
    53b8:	688e      	ldr	r6, [r1, #8]
    53ba:	4566      	cmp	r6, ip
    53bc:	d066      	beq.n	548c <_free_r+0x118>
    53be:	68cf      	ldr	r7, [r1, #12]
    53c0:	60f7      	str	r7, [r6, #12]
    53c2:	60be      	str	r6, [r7, #8]
    53c4:	2601      	movs	r6, #1
    53c6:	18a7      	adds	r7, r4, r2
    53c8:	687f      	ldr	r7, [r7, #4]
    53ca:	4237      	tst	r7, r6
    53cc:	d036      	beq.n	543c <_free_r+0xc8>
    53ce:	4a55      	ldr	r2, [pc, #340]	; (5524 <_free_r+0x1b0>)
    53d0:	431e      	orrs	r6, r3
    53d2:	604e      	str	r6, [r1, #4]
    53d4:	50cb      	str	r3, [r1, r3]
    53d6:	4293      	cmp	r3, r2
    53d8:	d814      	bhi.n	5404 <_free_r+0x90>
    53da:	08db      	lsrs	r3, r3, #3
    53dc:	3aff      	subs	r2, #255	; 0xff
    53de:	109c      	asrs	r4, r3, #2
    53e0:	3aff      	subs	r2, #255	; 0xff
    53e2:	40a2      	lsls	r2, r4
    53e4:	6844      	ldr	r4, [r0, #4]
    53e6:	00db      	lsls	r3, r3, #3
    53e8:	4322      	orrs	r2, r4
    53ea:	6042      	str	r2, [r0, #4]
    53ec:	1818      	adds	r0, r3, r0
    53ee:	6883      	ldr	r3, [r0, #8]
    53f0:	60c8      	str	r0, [r1, #12]
    53f2:	608b      	str	r3, [r1, #8]
    53f4:	6081      	str	r1, [r0, #8]
    53f6:	60d9      	str	r1, [r3, #12]
    53f8:	0028      	movs	r0, r5
    53fa:	f000 fb49 	bl	5a90 <__malloc_unlock>
    53fe:	bc04      	pop	{r2}
    5400:	4690      	mov	r8, r2
    5402:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5404:	0a5a      	lsrs	r2, r3, #9
    5406:	2a04      	cmp	r2, #4
    5408:	d84f      	bhi.n	54aa <_free_r+0x136>
    540a:	099c      	lsrs	r4, r3, #6
    540c:	0026      	movs	r6, r4
    540e:	3439      	adds	r4, #57	; 0x39
    5410:	3638      	adds	r6, #56	; 0x38
    5412:	0064      	lsls	r4, r4, #1
    5414:	00a4      	lsls	r4, r4, #2
    5416:	1904      	adds	r4, r0, r4
    5418:	3c08      	subs	r4, #8
    541a:	68a2      	ldr	r2, [r4, #8]
    541c:	2703      	movs	r7, #3
    541e:	4294      	cmp	r4, r2
    5420:	d04a      	beq.n	54b8 <_free_r+0x144>
    5422:	6850      	ldr	r0, [r2, #4]
    5424:	43b8      	bics	r0, r7
    5426:	4283      	cmp	r3, r0
    5428:	d202      	bcs.n	5430 <_free_r+0xbc>
    542a:	6892      	ldr	r2, [r2, #8]
    542c:	4294      	cmp	r4, r2
    542e:	d1f8      	bne.n	5422 <_free_r+0xae>
    5430:	68d4      	ldr	r4, [r2, #12]
    5432:	60cc      	str	r4, [r1, #12]
    5434:	608a      	str	r2, [r1, #8]
    5436:	60a1      	str	r1, [r4, #8]
    5438:	60d1      	str	r1, [r2, #12]
    543a:	e7dd      	b.n	53f8 <_free_r+0x84>
    543c:	189b      	adds	r3, r3, r2
    543e:	4f3a      	ldr	r7, [pc, #232]	; (5528 <_free_r+0x1b4>)
    5440:	68a2      	ldr	r2, [r4, #8]
    5442:	42ba      	cmp	r2, r7
    5444:	d040      	beq.n	54c8 <_free_r+0x154>
    5446:	68e4      	ldr	r4, [r4, #12]
    5448:	431e      	orrs	r6, r3
    544a:	60d4      	str	r4, [r2, #12]
    544c:	60a2      	str	r2, [r4, #8]
    544e:	4a35      	ldr	r2, [pc, #212]	; (5524 <_free_r+0x1b0>)
    5450:	604e      	str	r6, [r1, #4]
    5452:	50cb      	str	r3, [r1, r3]
    5454:	4293      	cmp	r3, r2
    5456:	d8d5      	bhi.n	5404 <_free_r+0x90>
    5458:	e7bf      	b.n	53da <_free_r+0x66>
    545a:	189b      	adds	r3, r3, r2
    545c:	4642      	mov	r2, r8
    545e:	4232      	tst	r2, r6
    5460:	d106      	bne.n	5470 <_free_r+0xfc>
    5462:	680a      	ldr	r2, [r1, #0]
    5464:	1a89      	subs	r1, r1, r2
    5466:	688c      	ldr	r4, [r1, #8]
    5468:	189b      	adds	r3, r3, r2
    546a:	68ca      	ldr	r2, [r1, #12]
    546c:	60e2      	str	r2, [r4, #12]
    546e:	6094      	str	r4, [r2, #8]
    5470:	2401      	movs	r4, #1
    5472:	4a2e      	ldr	r2, [pc, #184]	; (552c <_free_r+0x1b8>)
    5474:	431c      	orrs	r4, r3
    5476:	6812      	ldr	r2, [r2, #0]
    5478:	604c      	str	r4, [r1, #4]
    547a:	6081      	str	r1, [r0, #8]
    547c:	4293      	cmp	r3, r2
    547e:	d3bb      	bcc.n	53f8 <_free_r+0x84>
    5480:	4b2b      	ldr	r3, [pc, #172]	; (5530 <_free_r+0x1bc>)
    5482:	0028      	movs	r0, r5
    5484:	6819      	ldr	r1, [r3, #0]
    5486:	f7ff ff25 	bl	52d4 <_malloc_trim_r>
    548a:	e7b5      	b.n	53f8 <_free_r+0x84>
    548c:	4646      	mov	r6, r8
    548e:	18a0      	adds	r0, r4, r2
    5490:	6840      	ldr	r0, [r0, #4]
    5492:	4230      	tst	r0, r6
    5494:	d13e      	bne.n	5514 <_free_r+0x1a0>
    5496:	68a0      	ldr	r0, [r4, #8]
    5498:	18d3      	adds	r3, r2, r3
    549a:	68e2      	ldr	r2, [r4, #12]
    549c:	60c2      	str	r2, [r0, #12]
    549e:	6090      	str	r0, [r2, #8]
    54a0:	4642      	mov	r2, r8
    54a2:	431a      	orrs	r2, r3
    54a4:	604a      	str	r2, [r1, #4]
    54a6:	50cb      	str	r3, [r1, r3]
    54a8:	e7a6      	b.n	53f8 <_free_r+0x84>
    54aa:	2a14      	cmp	r2, #20
    54ac:	d814      	bhi.n	54d8 <_free_r+0x164>
    54ae:	0016      	movs	r6, r2
    54b0:	325c      	adds	r2, #92	; 0x5c
    54b2:	365b      	adds	r6, #91	; 0x5b
    54b4:	0054      	lsls	r4, r2, #1
    54b6:	e7ad      	b.n	5414 <_free_r+0xa0>
    54b8:	2301      	movs	r3, #1
    54ba:	10b6      	asrs	r6, r6, #2
    54bc:	40b3      	lsls	r3, r6
    54be:	6842      	ldr	r2, [r0, #4]
    54c0:	4313      	orrs	r3, r2
    54c2:	6043      	str	r3, [r0, #4]
    54c4:	0022      	movs	r2, r4
    54c6:	e7b4      	b.n	5432 <_free_r+0xbe>
    54c8:	431e      	orrs	r6, r3
    54ca:	60d1      	str	r1, [r2, #12]
    54cc:	6091      	str	r1, [r2, #8]
    54ce:	60ca      	str	r2, [r1, #12]
    54d0:	608a      	str	r2, [r1, #8]
    54d2:	604e      	str	r6, [r1, #4]
    54d4:	50cb      	str	r3, [r1, r3]
    54d6:	e78f      	b.n	53f8 <_free_r+0x84>
    54d8:	2a54      	cmp	r2, #84	; 0x54
    54da:	d805      	bhi.n	54e8 <_free_r+0x174>
    54dc:	0b1c      	lsrs	r4, r3, #12
    54de:	0026      	movs	r6, r4
    54e0:	346f      	adds	r4, #111	; 0x6f
    54e2:	366e      	adds	r6, #110	; 0x6e
    54e4:	0064      	lsls	r4, r4, #1
    54e6:	e795      	b.n	5414 <_free_r+0xa0>
    54e8:	24aa      	movs	r4, #170	; 0xaa
    54ea:	0064      	lsls	r4, r4, #1
    54ec:	42a2      	cmp	r2, r4
    54ee:	d805      	bhi.n	54fc <_free_r+0x188>
    54f0:	0bdc      	lsrs	r4, r3, #15
    54f2:	0026      	movs	r6, r4
    54f4:	3478      	adds	r4, #120	; 0x78
    54f6:	3677      	adds	r6, #119	; 0x77
    54f8:	0064      	lsls	r4, r4, #1
    54fa:	e78b      	b.n	5414 <_free_r+0xa0>
    54fc:	4c0d      	ldr	r4, [pc, #52]	; (5534 <_free_r+0x1c0>)
    54fe:	42a2      	cmp	r2, r4
    5500:	d805      	bhi.n	550e <_free_r+0x19a>
    5502:	0c9c      	lsrs	r4, r3, #18
    5504:	0026      	movs	r6, r4
    5506:	347d      	adds	r4, #125	; 0x7d
    5508:	367c      	adds	r6, #124	; 0x7c
    550a:	0064      	lsls	r4, r4, #1
    550c:	e782      	b.n	5414 <_free_r+0xa0>
    550e:	24fe      	movs	r4, #254	; 0xfe
    5510:	267e      	movs	r6, #126	; 0x7e
    5512:	e77f      	b.n	5414 <_free_r+0xa0>
    5514:	4642      	mov	r2, r8
    5516:	431a      	orrs	r2, r3
    5518:	604a      	str	r2, [r1, #4]
    551a:	50cb      	str	r3, [r1, r3]
    551c:	e76c      	b.n	53f8 <_free_r+0x84>
    551e:	46c0      	nop			; (mov r8, r8)
    5520:	2000044c 	.word	0x2000044c
    5524:	000001ff 	.word	0x000001ff
    5528:	20000454 	.word	0x20000454
    552c:	20000854 	.word	0x20000854
    5530:	20006048 	.word	0x20006048
    5534:	00000554 	.word	0x00000554

00005538 <_malloc_r>:
    5538:	b5f0      	push	{r4, r5, r6, r7, lr}
    553a:	465f      	mov	r7, fp
    553c:	464d      	mov	r5, r9
    553e:	4656      	mov	r6, sl
    5540:	4644      	mov	r4, r8
    5542:	b4f0      	push	{r4, r5, r6, r7}
    5544:	000d      	movs	r5, r1
    5546:	350b      	adds	r5, #11
    5548:	b083      	sub	sp, #12
    554a:	0007      	movs	r7, r0
    554c:	2d16      	cmp	r5, #22
    554e:	d800      	bhi.n	5552 <_malloc_r+0x1a>
    5550:	e0a8      	b.n	56a4 <_malloc_r+0x16c>
    5552:	2307      	movs	r3, #7
    5554:	439d      	bics	r5, r3
    5556:	d500      	bpl.n	555a <_malloc_r+0x22>
    5558:	e0ce      	b.n	56f8 <_malloc_r+0x1c0>
    555a:	42a9      	cmp	r1, r5
    555c:	d900      	bls.n	5560 <_malloc_r+0x28>
    555e:	e0cb      	b.n	56f8 <_malloc_r+0x1c0>
    5560:	f000 fa94 	bl	5a8c <__malloc_lock>
    5564:	23f8      	movs	r3, #248	; 0xf8
    5566:	33ff      	adds	r3, #255	; 0xff
    5568:	429d      	cmp	r5, r3
    556a:	d800      	bhi.n	556e <_malloc_r+0x36>
    556c:	e284      	b.n	5a78 <_malloc_r+0x540>
    556e:	0a6b      	lsrs	r3, r5, #9
    5570:	d100      	bne.n	5574 <_malloc_r+0x3c>
    5572:	e0c5      	b.n	5700 <_malloc_r+0x1c8>
    5574:	2b04      	cmp	r3, #4
    5576:	d900      	bls.n	557a <_malloc_r+0x42>
    5578:	e16c      	b.n	5854 <_malloc_r+0x31c>
    557a:	2338      	movs	r3, #56	; 0x38
    557c:	09a9      	lsrs	r1, r5, #6
    557e:	469c      	mov	ip, r3
    5580:	3301      	adds	r3, #1
    5582:	4698      	mov	r8, r3
    5584:	4488      	add	r8, r1
    5586:	4643      	mov	r3, r8
    5588:	448c      	add	ip, r1
    558a:	0059      	lsls	r1, r3, #1
    558c:	4ec9      	ldr	r6, [pc, #804]	; (58b4 <_malloc_r+0x37c>)
    558e:	0089      	lsls	r1, r1, #2
    5590:	1871      	adds	r1, r6, r1
    5592:	3908      	subs	r1, #8
    5594:	68cc      	ldr	r4, [r1, #12]
    5596:	42a1      	cmp	r1, r4
    5598:	d017      	beq.n	55ca <_malloc_r+0x92>
    559a:	2303      	movs	r3, #3
    559c:	6862      	ldr	r2, [r4, #4]
    559e:	439a      	bics	r2, r3
    55a0:	0013      	movs	r3, r2
    55a2:	1b52      	subs	r2, r2, r5
    55a4:	2a0f      	cmp	r2, #15
    55a6:	dd00      	ble.n	55aa <_malloc_r+0x72>
    55a8:	e0b0      	b.n	570c <_malloc_r+0x1d4>
    55aa:	2003      	movs	r0, #3
    55ac:	2a00      	cmp	r2, #0
    55ae:	db09      	blt.n	55c4 <_malloc_r+0x8c>
    55b0:	e08d      	b.n	56ce <_malloc_r+0x196>
    55b2:	6863      	ldr	r3, [r4, #4]
    55b4:	4383      	bics	r3, r0
    55b6:	1b5a      	subs	r2, r3, r5
    55b8:	2a0f      	cmp	r2, #15
    55ba:	dd00      	ble.n	55be <_malloc_r+0x86>
    55bc:	e0a6      	b.n	570c <_malloc_r+0x1d4>
    55be:	2a00      	cmp	r2, #0
    55c0:	db00      	blt.n	55c4 <_malloc_r+0x8c>
    55c2:	e084      	b.n	56ce <_malloc_r+0x196>
    55c4:	68e4      	ldr	r4, [r4, #12]
    55c6:	42a1      	cmp	r1, r4
    55c8:	d1f3      	bne.n	55b2 <_malloc_r+0x7a>
    55ca:	4643      	mov	r3, r8
    55cc:	9300      	str	r3, [sp, #0]
    55ce:	0032      	movs	r2, r6
    55d0:	6934      	ldr	r4, [r6, #16]
    55d2:	3208      	adds	r2, #8
    55d4:	4294      	cmp	r4, r2
    55d6:	d100      	bne.n	55da <_malloc_r+0xa2>
    55d8:	e18f      	b.n	58fa <_malloc_r+0x3c2>
    55da:	2303      	movs	r3, #3
    55dc:	6861      	ldr	r1, [r4, #4]
    55de:	4399      	bics	r1, r3
    55e0:	000b      	movs	r3, r1
    55e2:	1b48      	subs	r0, r1, r5
    55e4:	280f      	cmp	r0, #15
    55e6:	dd00      	ble.n	55ea <_malloc_r+0xb2>
    55e8:	e176      	b.n	58d8 <_malloc_r+0x3a0>
    55ea:	6172      	str	r2, [r6, #20]
    55ec:	6132      	str	r2, [r6, #16]
    55ee:	2800      	cmp	r0, #0
    55f0:	da71      	bge.n	56d6 <_malloc_r+0x19e>
    55f2:	4ab1      	ldr	r2, [pc, #708]	; (58b8 <_malloc_r+0x380>)
    55f4:	4291      	cmp	r1, r2
    55f6:	d900      	bls.n	55fa <_malloc_r+0xc2>
    55f8:	e134      	b.n	5864 <_malloc_r+0x32c>
    55fa:	2301      	movs	r3, #1
    55fc:	08c8      	lsrs	r0, r1, #3
    55fe:	1082      	asrs	r2, r0, #2
    5600:	4093      	lsls	r3, r2
    5602:	6872      	ldr	r2, [r6, #4]
    5604:	431a      	orrs	r2, r3
    5606:	00c3      	lsls	r3, r0, #3
    5608:	199b      	adds	r3, r3, r6
    560a:	6898      	ldr	r0, [r3, #8]
    560c:	6072      	str	r2, [r6, #4]
    560e:	60e3      	str	r3, [r4, #12]
    5610:	60a0      	str	r0, [r4, #8]
    5612:	609c      	str	r4, [r3, #8]
    5614:	0013      	movs	r3, r2
    5616:	60c4      	str	r4, [r0, #12]
    5618:	2001      	movs	r0, #1
    561a:	9900      	ldr	r1, [sp, #0]
    561c:	108a      	asrs	r2, r1, #2
    561e:	4090      	lsls	r0, r2
    5620:	4298      	cmp	r0, r3
    5622:	d900      	bls.n	5626 <_malloc_r+0xee>
    5624:	e075      	b.n	5712 <_malloc_r+0x1da>
    5626:	4203      	tst	r3, r0
    5628:	d10c      	bne.n	5644 <_malloc_r+0x10c>
    562a:	2203      	movs	r2, #3
    562c:	4391      	bics	r1, r2
    562e:	1d0a      	adds	r2, r1, #4
    5630:	0040      	lsls	r0, r0, #1
    5632:	9200      	str	r2, [sp, #0]
    5634:	4203      	tst	r3, r0
    5636:	d105      	bne.n	5644 <_malloc_r+0x10c>
    5638:	9a00      	ldr	r2, [sp, #0]
    563a:	0040      	lsls	r0, r0, #1
    563c:	3204      	adds	r2, #4
    563e:	9200      	str	r2, [sp, #0]
    5640:	4203      	tst	r3, r0
    5642:	d0f9      	beq.n	5638 <_malloc_r+0x100>
    5644:	2303      	movs	r3, #3
    5646:	4698      	mov	r8, r3
    5648:	9a00      	ldr	r2, [sp, #0]
    564a:	00d3      	lsls	r3, r2, #3
    564c:	4699      	mov	r9, r3
    564e:	44b1      	add	r9, r6
    5650:	46cc      	mov	ip, r9
    5652:	4692      	mov	sl, r2
    5654:	4663      	mov	r3, ip
    5656:	68dc      	ldr	r4, [r3, #12]
    5658:	45a4      	cmp	ip, r4
    565a:	d107      	bne.n	566c <_malloc_r+0x134>
    565c:	e14f      	b.n	58fe <_malloc_r+0x3c6>
    565e:	2a00      	cmp	r2, #0
    5660:	db00      	blt.n	5664 <_malloc_r+0x12c>
    5662:	e15f      	b.n	5924 <_malloc_r+0x3ec>
    5664:	68e4      	ldr	r4, [r4, #12]
    5666:	45a4      	cmp	ip, r4
    5668:	d100      	bne.n	566c <_malloc_r+0x134>
    566a:	e148      	b.n	58fe <_malloc_r+0x3c6>
    566c:	4642      	mov	r2, r8
    566e:	6863      	ldr	r3, [r4, #4]
    5670:	4393      	bics	r3, r2
    5672:	1b5a      	subs	r2, r3, r5
    5674:	2a0f      	cmp	r2, #15
    5676:	ddf2      	ble.n	565e <_malloc_r+0x126>
    5678:	2101      	movs	r1, #1
    567a:	1963      	adds	r3, r4, r5
    567c:	430d      	orrs	r5, r1
    567e:	6065      	str	r5, [r4, #4]
    5680:	68e0      	ldr	r0, [r4, #12]
    5682:	68a5      	ldr	r5, [r4, #8]
    5684:	3608      	adds	r6, #8
    5686:	60e8      	str	r0, [r5, #12]
    5688:	4311      	orrs	r1, r2
    568a:	6085      	str	r5, [r0, #8]
    568c:	60f3      	str	r3, [r6, #12]
    568e:	60b3      	str	r3, [r6, #8]
    5690:	0038      	movs	r0, r7
    5692:	60de      	str	r6, [r3, #12]
    5694:	609e      	str	r6, [r3, #8]
    5696:	6059      	str	r1, [r3, #4]
    5698:	509a      	str	r2, [r3, r2]
    569a:	f000 f9f9 	bl	5a90 <__malloc_unlock>
    569e:	0020      	movs	r0, r4
    56a0:	3008      	adds	r0, #8
    56a2:	e022      	b.n	56ea <_malloc_r+0x1b2>
    56a4:	2910      	cmp	r1, #16
    56a6:	d827      	bhi.n	56f8 <_malloc_r+0x1c0>
    56a8:	0038      	movs	r0, r7
    56aa:	f000 f9ef 	bl	5a8c <__malloc_lock>
    56ae:	2510      	movs	r5, #16
    56b0:	2306      	movs	r3, #6
    56b2:	2102      	movs	r1, #2
    56b4:	4e7f      	ldr	r6, [pc, #508]	; (58b4 <_malloc_r+0x37c>)
    56b6:	009b      	lsls	r3, r3, #2
    56b8:	18f3      	adds	r3, r6, r3
    56ba:	001a      	movs	r2, r3
    56bc:	685c      	ldr	r4, [r3, #4]
    56be:	3a08      	subs	r2, #8
    56c0:	4294      	cmp	r4, r2
    56c2:	d100      	bne.n	56c6 <_malloc_r+0x18e>
    56c4:	e127      	b.n	5916 <_malloc_r+0x3de>
    56c6:	2303      	movs	r3, #3
    56c8:	6862      	ldr	r2, [r4, #4]
    56ca:	439a      	bics	r2, r3
    56cc:	0013      	movs	r3, r2
    56ce:	68e2      	ldr	r2, [r4, #12]
    56d0:	68a1      	ldr	r1, [r4, #8]
    56d2:	60ca      	str	r2, [r1, #12]
    56d4:	6091      	str	r1, [r2, #8]
    56d6:	2201      	movs	r2, #1
    56d8:	18e3      	adds	r3, r4, r3
    56da:	6859      	ldr	r1, [r3, #4]
    56dc:	0038      	movs	r0, r7
    56de:	430a      	orrs	r2, r1
    56e0:	605a      	str	r2, [r3, #4]
    56e2:	f000 f9d5 	bl	5a90 <__malloc_unlock>
    56e6:	0020      	movs	r0, r4
    56e8:	3008      	adds	r0, #8
    56ea:	b003      	add	sp, #12
    56ec:	bc3c      	pop	{r2, r3, r4, r5}
    56ee:	4690      	mov	r8, r2
    56f0:	4699      	mov	r9, r3
    56f2:	46a2      	mov	sl, r4
    56f4:	46ab      	mov	fp, r5
    56f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
    56f8:	230c      	movs	r3, #12
    56fa:	2000      	movs	r0, #0
    56fc:	603b      	str	r3, [r7, #0]
    56fe:	e7f4      	b.n	56ea <_malloc_r+0x1b2>
    5700:	2340      	movs	r3, #64	; 0x40
    5702:	4698      	mov	r8, r3
    5704:	3b01      	subs	r3, #1
    5706:	2180      	movs	r1, #128	; 0x80
    5708:	469c      	mov	ip, r3
    570a:	e73f      	b.n	558c <_malloc_r+0x54>
    570c:	4663      	mov	r3, ip
    570e:	9300      	str	r3, [sp, #0]
    5710:	e75d      	b.n	55ce <_malloc_r+0x96>
    5712:	2303      	movs	r3, #3
    5714:	68b4      	ldr	r4, [r6, #8]
    5716:	6862      	ldr	r2, [r4, #4]
    5718:	439a      	bics	r2, r3
    571a:	4690      	mov	r8, r2
    571c:	42aa      	cmp	r2, r5
    571e:	d303      	bcc.n	5728 <_malloc_r+0x1f0>
    5720:	1b52      	subs	r2, r2, r5
    5722:	2a0f      	cmp	r2, #15
    5724:	dd00      	ble.n	5728 <_malloc_r+0x1f0>
    5726:	e087      	b.n	5838 <_malloc_r+0x300>
    5728:	0023      	movs	r3, r4
    572a:	4443      	add	r3, r8
    572c:	4a63      	ldr	r2, [pc, #396]	; (58bc <_malloc_r+0x384>)
    572e:	9301      	str	r3, [sp, #4]
    5730:	4b63      	ldr	r3, [pc, #396]	; (58c0 <_malloc_r+0x388>)
    5732:	4693      	mov	fp, r2
    5734:	681b      	ldr	r3, [r3, #0]
    5736:	6812      	ldr	r2, [r2, #0]
    5738:	18eb      	adds	r3, r5, r3
    573a:	3201      	adds	r2, #1
    573c:	d100      	bne.n	5740 <_malloc_r+0x208>
    573e:	e157      	b.n	59f0 <_malloc_r+0x4b8>
    5740:	4a60      	ldr	r2, [pc, #384]	; (58c4 <_malloc_r+0x38c>)
    5742:	4694      	mov	ip, r2
    5744:	4463      	add	r3, ip
    5746:	0b1b      	lsrs	r3, r3, #12
    5748:	031b      	lsls	r3, r3, #12
    574a:	9300      	str	r3, [sp, #0]
    574c:	9900      	ldr	r1, [sp, #0]
    574e:	0038      	movs	r0, r7
    5750:	f000 f9a0 	bl	5a94 <_sbrk_r>
    5754:	0003      	movs	r3, r0
    5756:	4681      	mov	r9, r0
    5758:	3301      	adds	r3, #1
    575a:	d061      	beq.n	5820 <_malloc_r+0x2e8>
    575c:	9b01      	ldr	r3, [sp, #4]
    575e:	4283      	cmp	r3, r0
    5760:	d900      	bls.n	5764 <_malloc_r+0x22c>
    5762:	e0fd      	b.n	5960 <_malloc_r+0x428>
    5764:	4b58      	ldr	r3, [pc, #352]	; (58c8 <_malloc_r+0x390>)
    5766:	9a00      	ldr	r2, [sp, #0]
    5768:	469a      	mov	sl, r3
    576a:	681b      	ldr	r3, [r3, #0]
    576c:	469c      	mov	ip, r3
    576e:	4653      	mov	r3, sl
    5770:	4462      	add	r2, ip
    5772:	601a      	str	r2, [r3, #0]
    5774:	9b01      	ldr	r3, [sp, #4]
    5776:	0011      	movs	r1, r2
    5778:	454b      	cmp	r3, r9
    577a:	d100      	bne.n	577e <_malloc_r+0x246>
    577c:	e143      	b.n	5a06 <_malloc_r+0x4ce>
    577e:	465b      	mov	r3, fp
    5780:	681b      	ldr	r3, [r3, #0]
    5782:	3301      	adds	r3, #1
    5784:	d100      	bne.n	5788 <_malloc_r+0x250>
    5786:	e14f      	b.n	5a28 <_malloc_r+0x4f0>
    5788:	464b      	mov	r3, r9
    578a:	9a01      	ldr	r2, [sp, #4]
    578c:	1a9b      	subs	r3, r3, r2
    578e:	1859      	adds	r1, r3, r1
    5790:	4653      	mov	r3, sl
    5792:	6019      	str	r1, [r3, #0]
    5794:	2307      	movs	r3, #7
    5796:	464a      	mov	r2, r9
    5798:	4013      	ands	r3, r2
    579a:	d100      	bne.n	579e <_malloc_r+0x266>
    579c:	e117      	b.n	59ce <_malloc_r+0x496>
    579e:	2108      	movs	r1, #8
    57a0:	4689      	mov	r9, r1
    57a2:	494a      	ldr	r1, [pc, #296]	; (58cc <_malloc_r+0x394>)
    57a4:	1ad2      	subs	r2, r2, r3
    57a6:	4491      	add	r9, r2
    57a8:	1ac9      	subs	r1, r1, r3
    57aa:	9b00      	ldr	r3, [sp, #0]
    57ac:	0038      	movs	r0, r7
    57ae:	444b      	add	r3, r9
    57b0:	051b      	lsls	r3, r3, #20
    57b2:	0d1b      	lsrs	r3, r3, #20
    57b4:	1acb      	subs	r3, r1, r3
    57b6:	0019      	movs	r1, r3
    57b8:	469b      	mov	fp, r3
    57ba:	f000 f96b 	bl	5a94 <_sbrk_r>
    57be:	1c43      	adds	r3, r0, #1
    57c0:	d100      	bne.n	57c4 <_malloc_r+0x28c>
    57c2:	e135      	b.n	5a30 <_malloc_r+0x4f8>
    57c4:	464b      	mov	r3, r9
    57c6:	1ac0      	subs	r0, r0, r3
    57c8:	2301      	movs	r3, #1
    57ca:	4458      	add	r0, fp
    57cc:	4318      	orrs	r0, r3
    57ce:	4653      	mov	r3, sl
    57d0:	681b      	ldr	r3, [r3, #0]
    57d2:	445b      	add	r3, fp
    57d4:	0019      	movs	r1, r3
    57d6:	4653      	mov	r3, sl
    57d8:	6019      	str	r1, [r3, #0]
    57da:	464b      	mov	r3, r9
    57dc:	60b3      	str	r3, [r6, #8]
    57de:	6058      	str	r0, [r3, #4]
    57e0:	42b4      	cmp	r4, r6
    57e2:	d013      	beq.n	580c <_malloc_r+0x2d4>
    57e4:	4643      	mov	r3, r8
    57e6:	2b0f      	cmp	r3, #15
    57e8:	d800      	bhi.n	57ec <_malloc_r+0x2b4>
    57ea:	e0e1      	b.n	59b0 <_malloc_r+0x478>
    57ec:	4643      	mov	r3, r8
    57ee:	2207      	movs	r2, #7
    57f0:	6860      	ldr	r0, [r4, #4]
    57f2:	3b0c      	subs	r3, #12
    57f4:	4393      	bics	r3, r2
    57f6:	3a06      	subs	r2, #6
    57f8:	4002      	ands	r2, r0
    57fa:	2005      	movs	r0, #5
    57fc:	431a      	orrs	r2, r3
    57fe:	6062      	str	r2, [r4, #4]
    5800:	18e2      	adds	r2, r4, r3
    5802:	6050      	str	r0, [r2, #4]
    5804:	6090      	str	r0, [r2, #8]
    5806:	2b0f      	cmp	r3, #15
    5808:	d900      	bls.n	580c <_malloc_r+0x2d4>
    580a:	e115      	b.n	5a38 <_malloc_r+0x500>
    580c:	4b30      	ldr	r3, [pc, #192]	; (58d0 <_malloc_r+0x398>)
    580e:	681a      	ldr	r2, [r3, #0]
    5810:	4291      	cmp	r1, r2
    5812:	d900      	bls.n	5816 <_malloc_r+0x2de>
    5814:	6019      	str	r1, [r3, #0]
    5816:	4b2f      	ldr	r3, [pc, #188]	; (58d4 <_malloc_r+0x39c>)
    5818:	681a      	ldr	r2, [r3, #0]
    581a:	4291      	cmp	r1, r2
    581c:	d900      	bls.n	5820 <_malloc_r+0x2e8>
    581e:	6019      	str	r1, [r3, #0]
    5820:	2303      	movs	r3, #3
    5822:	68b4      	ldr	r4, [r6, #8]
    5824:	6862      	ldr	r2, [r4, #4]
    5826:	439a      	bics	r2, r3
    5828:	0013      	movs	r3, r2
    582a:	1b52      	subs	r2, r2, r5
    582c:	429d      	cmp	r5, r3
    582e:	d900      	bls.n	5832 <_malloc_r+0x2fa>
    5830:	e0c1      	b.n	59b6 <_malloc_r+0x47e>
    5832:	2a0f      	cmp	r2, #15
    5834:	dc00      	bgt.n	5838 <_malloc_r+0x300>
    5836:	e0be      	b.n	59b6 <_malloc_r+0x47e>
    5838:	2301      	movs	r3, #1
    583a:	0029      	movs	r1, r5
    583c:	1965      	adds	r5, r4, r5
    583e:	4319      	orrs	r1, r3
    5840:	4313      	orrs	r3, r2
    5842:	6061      	str	r1, [r4, #4]
    5844:	0038      	movs	r0, r7
    5846:	60b5      	str	r5, [r6, #8]
    5848:	606b      	str	r3, [r5, #4]
    584a:	f000 f921 	bl	5a90 <__malloc_unlock>
    584e:	0020      	movs	r0, r4
    5850:	3008      	adds	r0, #8
    5852:	e74a      	b.n	56ea <_malloc_r+0x1b2>
    5854:	2b14      	cmp	r3, #20
    5856:	d974      	bls.n	5942 <_malloc_r+0x40a>
    5858:	2b54      	cmp	r3, #84	; 0x54
    585a:	d900      	bls.n	585e <_malloc_r+0x326>
    585c:	e0b0      	b.n	59c0 <_malloc_r+0x488>
    585e:	0b29      	lsrs	r1, r5, #12
    5860:	236e      	movs	r3, #110	; 0x6e
    5862:	e68c      	b.n	557e <_malloc_r+0x46>
    5864:	0a4a      	lsrs	r2, r1, #9
    5866:	2a04      	cmp	r2, #4
    5868:	d974      	bls.n	5954 <_malloc_r+0x41c>
    586a:	2a14      	cmp	r2, #20
    586c:	d900      	bls.n	5870 <_malloc_r+0x338>
    586e:	e0c2      	b.n	59f6 <_malloc_r+0x4be>
    5870:	0010      	movs	r0, r2
    5872:	325c      	adds	r2, #92	; 0x5c
    5874:	305b      	adds	r0, #91	; 0x5b
    5876:	0052      	lsls	r2, r2, #1
    5878:	2108      	movs	r1, #8
    587a:	4249      	negs	r1, r1
    587c:	468c      	mov	ip, r1
    587e:	0092      	lsls	r2, r2, #2
    5880:	18b2      	adds	r2, r6, r2
    5882:	4494      	add	ip, r2
    5884:	4662      	mov	r2, ip
    5886:	6892      	ldr	r2, [r2, #8]
    5888:	310b      	adds	r1, #11
    588a:	4688      	mov	r8, r1
    588c:	4594      	cmp	ip, r2
    588e:	d100      	bne.n	5892 <_malloc_r+0x35a>
    5890:	e0a0      	b.n	59d4 <_malloc_r+0x49c>
    5892:	4641      	mov	r1, r8
    5894:	6850      	ldr	r0, [r2, #4]
    5896:	4388      	bics	r0, r1
    5898:	4283      	cmp	r3, r0
    589a:	d202      	bcs.n	58a2 <_malloc_r+0x36a>
    589c:	6892      	ldr	r2, [r2, #8]
    589e:	4594      	cmp	ip, r2
    58a0:	d1f7      	bne.n	5892 <_malloc_r+0x35a>
    58a2:	68d3      	ldr	r3, [r2, #12]
    58a4:	469c      	mov	ip, r3
    58a6:	6873      	ldr	r3, [r6, #4]
    58a8:	4661      	mov	r1, ip
    58aa:	60a2      	str	r2, [r4, #8]
    58ac:	60e1      	str	r1, [r4, #12]
    58ae:	608c      	str	r4, [r1, #8]
    58b0:	60d4      	str	r4, [r2, #12]
    58b2:	e6b1      	b.n	5618 <_malloc_r+0xe0>
    58b4:	2000044c 	.word	0x2000044c
    58b8:	000001ff 	.word	0x000001ff
    58bc:	20000858 	.word	0x20000858
    58c0:	20006048 	.word	0x20006048
    58c4:	0000100f 	.word	0x0000100f
    58c8:	2000604c 	.word	0x2000604c
    58cc:	00001008 	.word	0x00001008
    58d0:	20006044 	.word	0x20006044
    58d4:	20006040 	.word	0x20006040
    58d8:	2101      	movs	r1, #1
    58da:	1963      	adds	r3, r4, r5
    58dc:	430d      	orrs	r5, r1
    58de:	4301      	orrs	r1, r0
    58e0:	6065      	str	r5, [r4, #4]
    58e2:	6173      	str	r3, [r6, #20]
    58e4:	6133      	str	r3, [r6, #16]
    58e6:	60da      	str	r2, [r3, #12]
    58e8:	609a      	str	r2, [r3, #8]
    58ea:	6059      	str	r1, [r3, #4]
    58ec:	5018      	str	r0, [r3, r0]
    58ee:	0038      	movs	r0, r7
    58f0:	f000 f8ce 	bl	5a90 <__malloc_unlock>
    58f4:	0020      	movs	r0, r4
    58f6:	3008      	adds	r0, #8
    58f8:	e6f7      	b.n	56ea <_malloc_r+0x1b2>
    58fa:	6873      	ldr	r3, [r6, #4]
    58fc:	e68c      	b.n	5618 <_malloc_r+0xe0>
    58fe:	2308      	movs	r3, #8
    5900:	469b      	mov	fp, r3
    5902:	3b07      	subs	r3, #7
    5904:	44dc      	add	ip, fp
    5906:	469b      	mov	fp, r3
    5908:	44da      	add	sl, fp
    590a:	4643      	mov	r3, r8
    590c:	4652      	mov	r2, sl
    590e:	4213      	tst	r3, r2
    5910:	d000      	beq.n	5914 <_malloc_r+0x3dc>
    5912:	e69f      	b.n	5654 <_malloc_r+0x11c>
    5914:	e033      	b.n	597e <_malloc_r+0x446>
    5916:	68dc      	ldr	r4, [r3, #12]
    5918:	1c8a      	adds	r2, r1, #2
    591a:	9200      	str	r2, [sp, #0]
    591c:	42a3      	cmp	r3, r4
    591e:	d100      	bne.n	5922 <_malloc_r+0x3ea>
    5920:	e655      	b.n	55ce <_malloc_r+0x96>
    5922:	e6d0      	b.n	56c6 <_malloc_r+0x18e>
    5924:	2201      	movs	r2, #1
    5926:	18e3      	adds	r3, r4, r3
    5928:	6859      	ldr	r1, [r3, #4]
    592a:	0038      	movs	r0, r7
    592c:	430a      	orrs	r2, r1
    592e:	605a      	str	r2, [r3, #4]
    5930:	68e3      	ldr	r3, [r4, #12]
    5932:	68a2      	ldr	r2, [r4, #8]
    5934:	60d3      	str	r3, [r2, #12]
    5936:	609a      	str	r2, [r3, #8]
    5938:	f000 f8aa 	bl	5a90 <__malloc_unlock>
    593c:	0020      	movs	r0, r4
    593e:	3008      	adds	r0, #8
    5940:	e6d3      	b.n	56ea <_malloc_r+0x1b2>
    5942:	225b      	movs	r2, #91	; 0x5b
    5944:	4694      	mov	ip, r2
    5946:	3201      	adds	r2, #1
    5948:	4690      	mov	r8, r2
    594a:	4498      	add	r8, r3
    594c:	449c      	add	ip, r3
    594e:	4643      	mov	r3, r8
    5950:	0059      	lsls	r1, r3, #1
    5952:	e61b      	b.n	558c <_malloc_r+0x54>
    5954:	098a      	lsrs	r2, r1, #6
    5956:	0010      	movs	r0, r2
    5958:	3239      	adds	r2, #57	; 0x39
    595a:	3038      	adds	r0, #56	; 0x38
    595c:	0052      	lsls	r2, r2, #1
    595e:	e78b      	b.n	5878 <_malloc_r+0x340>
    5960:	42b4      	cmp	r4, r6
    5962:	d000      	beq.n	5966 <_malloc_r+0x42e>
    5964:	e75c      	b.n	5820 <_malloc_r+0x2e8>
    5966:	e6fd      	b.n	5764 <_malloc_r+0x22c>
    5968:	9b00      	ldr	r3, [sp, #0]
    596a:	3b01      	subs	r3, #1
    596c:	9300      	str	r3, [sp, #0]
    596e:	2308      	movs	r3, #8
    5970:	425b      	negs	r3, r3
    5972:	469c      	mov	ip, r3
    5974:	44e1      	add	r9, ip
    5976:	464b      	mov	r3, r9
    5978:	689b      	ldr	r3, [r3, #8]
    597a:	4599      	cmp	r9, r3
    597c:	d17a      	bne.n	5a74 <_malloc_r+0x53c>
    597e:	4643      	mov	r3, r8
    5980:	9a00      	ldr	r2, [sp, #0]
    5982:	4213      	tst	r3, r2
    5984:	d1f0      	bne.n	5968 <_malloc_r+0x430>
    5986:	6873      	ldr	r3, [r6, #4]
    5988:	4383      	bics	r3, r0
    598a:	6073      	str	r3, [r6, #4]
    598c:	0040      	lsls	r0, r0, #1
    598e:	4298      	cmp	r0, r3
    5990:	d900      	bls.n	5994 <_malloc_r+0x45c>
    5992:	e6be      	b.n	5712 <_malloc_r+0x1da>
    5994:	2800      	cmp	r0, #0
    5996:	d100      	bne.n	599a <_malloc_r+0x462>
    5998:	e6bb      	b.n	5712 <_malloc_r+0x1da>
    599a:	4203      	tst	r3, r0
    599c:	d170      	bne.n	5a80 <_malloc_r+0x548>
    599e:	4652      	mov	r2, sl
    59a0:	9200      	str	r2, [sp, #0]
    59a2:	9a00      	ldr	r2, [sp, #0]
    59a4:	0040      	lsls	r0, r0, #1
    59a6:	3204      	adds	r2, #4
    59a8:	9200      	str	r2, [sp, #0]
    59aa:	4203      	tst	r3, r0
    59ac:	d0f9      	beq.n	59a2 <_malloc_r+0x46a>
    59ae:	e64b      	b.n	5648 <_malloc_r+0x110>
    59b0:	2301      	movs	r3, #1
    59b2:	464a      	mov	r2, r9
    59b4:	6053      	str	r3, [r2, #4]
    59b6:	0038      	movs	r0, r7
    59b8:	f000 f86a 	bl	5a90 <__malloc_unlock>
    59bc:	2000      	movs	r0, #0
    59be:	e694      	b.n	56ea <_malloc_r+0x1b2>
    59c0:	22aa      	movs	r2, #170	; 0xaa
    59c2:	0052      	lsls	r2, r2, #1
    59c4:	4293      	cmp	r3, r2
    59c6:	d80d      	bhi.n	59e4 <_malloc_r+0x4ac>
    59c8:	0be9      	lsrs	r1, r5, #15
    59ca:	2377      	movs	r3, #119	; 0x77
    59cc:	e5d7      	b.n	557e <_malloc_r+0x46>
    59ce:	2180      	movs	r1, #128	; 0x80
    59d0:	0149      	lsls	r1, r1, #5
    59d2:	e6ea      	b.n	57aa <_malloc_r+0x272>
    59d4:	2301      	movs	r3, #1
    59d6:	1080      	asrs	r0, r0, #2
    59d8:	4083      	lsls	r3, r0
    59da:	6872      	ldr	r2, [r6, #4]
    59dc:	4313      	orrs	r3, r2
    59de:	6073      	str	r3, [r6, #4]
    59e0:	4662      	mov	r2, ip
    59e2:	e761      	b.n	58a8 <_malloc_r+0x370>
    59e4:	4a28      	ldr	r2, [pc, #160]	; (5a88 <_malloc_r+0x550>)
    59e6:	4293      	cmp	r3, r2
    59e8:	d818      	bhi.n	5a1c <_malloc_r+0x4e4>
    59ea:	0ca9      	lsrs	r1, r5, #18
    59ec:	237c      	movs	r3, #124	; 0x7c
    59ee:	e5c6      	b.n	557e <_malloc_r+0x46>
    59f0:	3310      	adds	r3, #16
    59f2:	9300      	str	r3, [sp, #0]
    59f4:	e6aa      	b.n	574c <_malloc_r+0x214>
    59f6:	2a54      	cmp	r2, #84	; 0x54
    59f8:	d826      	bhi.n	5a48 <_malloc_r+0x510>
    59fa:	0b0a      	lsrs	r2, r1, #12
    59fc:	0010      	movs	r0, r2
    59fe:	326f      	adds	r2, #111	; 0x6f
    5a00:	306e      	adds	r0, #110	; 0x6e
    5a02:	0052      	lsls	r2, r2, #1
    5a04:	e738      	b.n	5878 <_malloc_r+0x340>
    5a06:	051b      	lsls	r3, r3, #20
    5a08:	d000      	beq.n	5a0c <_malloc_r+0x4d4>
    5a0a:	e6b8      	b.n	577e <_malloc_r+0x246>
    5a0c:	9b00      	ldr	r3, [sp, #0]
    5a0e:	68b2      	ldr	r2, [r6, #8]
    5a10:	4443      	add	r3, r8
    5a12:	0018      	movs	r0, r3
    5a14:	2301      	movs	r3, #1
    5a16:	4303      	orrs	r3, r0
    5a18:	6053      	str	r3, [r2, #4]
    5a1a:	e6f7      	b.n	580c <_malloc_r+0x2d4>
    5a1c:	237f      	movs	r3, #127	; 0x7f
    5a1e:	4698      	mov	r8, r3
    5a20:	3b01      	subs	r3, #1
    5a22:	21fe      	movs	r1, #254	; 0xfe
    5a24:	469c      	mov	ip, r3
    5a26:	e5b1      	b.n	558c <_malloc_r+0x54>
    5a28:	465b      	mov	r3, fp
    5a2a:	464a      	mov	r2, r9
    5a2c:	601a      	str	r2, [r3, #0]
    5a2e:	e6b1      	b.n	5794 <_malloc_r+0x25c>
    5a30:	2300      	movs	r3, #0
    5a32:	2001      	movs	r0, #1
    5a34:	469b      	mov	fp, r3
    5a36:	e6ca      	b.n	57ce <_malloc_r+0x296>
    5a38:	0021      	movs	r1, r4
    5a3a:	0038      	movs	r0, r7
    5a3c:	3108      	adds	r1, #8
    5a3e:	f7ff fc99 	bl	5374 <_free_r>
    5a42:	4653      	mov	r3, sl
    5a44:	6819      	ldr	r1, [r3, #0]
    5a46:	e6e1      	b.n	580c <_malloc_r+0x2d4>
    5a48:	20aa      	movs	r0, #170	; 0xaa
    5a4a:	0040      	lsls	r0, r0, #1
    5a4c:	4282      	cmp	r2, r0
    5a4e:	d805      	bhi.n	5a5c <_malloc_r+0x524>
    5a50:	0bca      	lsrs	r2, r1, #15
    5a52:	0010      	movs	r0, r2
    5a54:	3278      	adds	r2, #120	; 0x78
    5a56:	3077      	adds	r0, #119	; 0x77
    5a58:	0052      	lsls	r2, r2, #1
    5a5a:	e70d      	b.n	5878 <_malloc_r+0x340>
    5a5c:	480a      	ldr	r0, [pc, #40]	; (5a88 <_malloc_r+0x550>)
    5a5e:	4282      	cmp	r2, r0
    5a60:	d805      	bhi.n	5a6e <_malloc_r+0x536>
    5a62:	0c8a      	lsrs	r2, r1, #18
    5a64:	0010      	movs	r0, r2
    5a66:	327d      	adds	r2, #125	; 0x7d
    5a68:	307c      	adds	r0, #124	; 0x7c
    5a6a:	0052      	lsls	r2, r2, #1
    5a6c:	e704      	b.n	5878 <_malloc_r+0x340>
    5a6e:	22fe      	movs	r2, #254	; 0xfe
    5a70:	207e      	movs	r0, #126	; 0x7e
    5a72:	e701      	b.n	5878 <_malloc_r+0x340>
    5a74:	6873      	ldr	r3, [r6, #4]
    5a76:	e789      	b.n	598c <_malloc_r+0x454>
    5a78:	08e9      	lsrs	r1, r5, #3
    5a7a:	1c4b      	adds	r3, r1, #1
    5a7c:	005b      	lsls	r3, r3, #1
    5a7e:	e619      	b.n	56b4 <_malloc_r+0x17c>
    5a80:	4653      	mov	r3, sl
    5a82:	9300      	str	r3, [sp, #0]
    5a84:	e5e0      	b.n	5648 <_malloc_r+0x110>
    5a86:	46c0      	nop			; (mov r8, r8)
    5a88:	00000554 	.word	0x00000554

00005a8c <__malloc_lock>:
    5a8c:	4770      	bx	lr
    5a8e:	46c0      	nop			; (mov r8, r8)

00005a90 <__malloc_unlock>:
    5a90:	4770      	bx	lr
    5a92:	46c0      	nop			; (mov r8, r8)

00005a94 <_sbrk_r>:
    5a94:	2300      	movs	r3, #0
    5a96:	b570      	push	{r4, r5, r6, lr}
    5a98:	4c06      	ldr	r4, [pc, #24]	; (5ab4 <_sbrk_r+0x20>)
    5a9a:	0005      	movs	r5, r0
    5a9c:	0008      	movs	r0, r1
    5a9e:	6023      	str	r3, [r4, #0]
    5aa0:	f7fb f8ba 	bl	c18 <_sbrk>
    5aa4:	1c43      	adds	r3, r0, #1
    5aa6:	d000      	beq.n	5aaa <_sbrk_r+0x16>
    5aa8:	bd70      	pop	{r4, r5, r6, pc}
    5aaa:	6823      	ldr	r3, [r4, #0]
    5aac:	2b00      	cmp	r3, #0
    5aae:	d0fb      	beq.n	5aa8 <_sbrk_r+0x14>
    5ab0:	602b      	str	r3, [r5, #0]
    5ab2:	e7f9      	b.n	5aa8 <_sbrk_r+0x14>
    5ab4:	20006074 	.word	0x20006074

00005ab8 <osThreadExit>:
    5ab8:	b580      	push	{r7, lr}
    5aba:	4f03      	ldr	r7, [pc, #12]	; (5ac8 <osThreadExit+0x10>)
    5abc:	46bc      	mov	ip, r7
    5abe:	df00      	svc	0
    5ac0:	4f02      	ldr	r7, [pc, #8]	; (5acc <osThreadExit+0x14>)
    5ac2:	46bc      	mov	ip, r7
    5ac4:	df00      	svc	0
    5ac6:	e7fe      	b.n	5ac6 <osThreadExit+0xe>
    5ac8:	00005ef9 	.word	0x00005ef9
    5acc:	00005f15 	.word	0x00005f15

00005ad0 <svcKernelInitialize>:
    5ad0:	b570      	push	{r4, r5, r6, lr}
    5ad2:	4c39      	ldr	r4, [pc, #228]	; (5bb8 <svcKernelInitialize+0xe8>)
    5ad4:	b084      	sub	sp, #16
    5ad6:	7823      	ldrb	r3, [r4, #0]
    5ad8:	2b00      	cmp	r3, #0
    5ada:	d00b      	beq.n	5af4 <svcKernelInitialize+0x24>
    5adc:	22ff      	movs	r2, #255	; 0xff
    5ade:	4b37      	ldr	r3, [pc, #220]	; (5bbc <svcKernelInitialize+0xec>)
    5ae0:	681b      	ldr	r3, [r3, #0]
    5ae2:	709a      	strb	r2, [r3, #2]
    5ae4:	2301      	movs	r3, #1
    5ae6:	2200      	movs	r2, #0
    5ae8:	2000      	movs	r0, #0
    5aea:	7023      	strb	r3, [r4, #0]
    5aec:	4b34      	ldr	r3, [pc, #208]	; (5bc0 <svcKernelInitialize+0xf0>)
    5aee:	701a      	strb	r2, [r3, #0]
    5af0:	b004      	add	sp, #16
    5af2:	bd70      	pop	{r4, r5, r6, pc}
    5af4:	4b33      	ldr	r3, [pc, #204]	; (5bc4 <svcKernelInitialize+0xf4>)
    5af6:	4e34      	ldr	r6, [pc, #208]	; (5bc8 <svcKernelInitialize+0xf8>)
    5af8:	6819      	ldr	r1, [r3, #0]
    5afa:	0030      	movs	r0, r6
    5afc:	f001 fc60 	bl	73c0 <rt_init_mem>
    5b00:	0003      	movs	r3, r0
    5b02:	2085      	movs	r0, #133	; 0x85
    5b04:	2b00      	cmp	r3, #0
    5b06:	d1f3      	bne.n	5af0 <svcKernelInitialize+0x20>
    5b08:	f002 fe70 	bl	87ec <rt_sys_init>
    5b0c:	21ff      	movs	r1, #255	; 0xff
    5b0e:	4a2b      	ldr	r2, [pc, #172]	; (5bbc <svcKernelInitialize+0xec>)
    5b10:	7823      	ldrb	r3, [r4, #0]
    5b12:	6812      	ldr	r2, [r2, #0]
    5b14:	7091      	strb	r1, [r2, #2]
    5b16:	2b00      	cmp	r3, #0
    5b18:	d1e4      	bne.n	5ae4 <svcKernelInitialize+0x14>
    5b1a:	4b2c      	ldr	r3, [pc, #176]	; (5bcc <svcKernelInitialize+0xfc>)
    5b1c:	681a      	ldr	r2, [r3, #0]
    5b1e:	9201      	str	r2, [sp, #4]
    5b20:	2a00      	cmp	r2, #0
    5b22:	d047      	beq.n	5bb4 <svcKernelInitialize+0xe4>
    5b24:	685d      	ldr	r5, [r3, #4]
    5b26:	2d00      	cmp	r5, #0
    5b28:	d044      	beq.n	5bb4 <svcKernelInitialize+0xe4>
    5b2a:	782b      	ldrb	r3, [r5, #0]
    5b2c:	2b00      	cmp	r3, #0
    5b2e:	d141      	bne.n	5bb4 <svcKernelInitialize+0xe4>
    5b30:	0011      	movs	r1, r2
    5b32:	3104      	adds	r1, #4
    5b34:	0089      	lsls	r1, r1, #2
    5b36:	b289      	uxth	r1, r1
    5b38:	0028      	movs	r0, r5
    5b3a:	f001 feeb 	bl	7914 <rt_mbx_init>
    5b3e:	4b24      	ldr	r3, [pc, #144]	; (5bd0 <svcKernelInitialize+0x100>)
    5b40:	601d      	str	r5, [r3, #0]
    5b42:	4b24      	ldr	r3, [pc, #144]	; (5bd4 <svcKernelInitialize+0x104>)
    5b44:	681a      	ldr	r2, [r3, #0]
    5b46:	9201      	str	r2, [sp, #4]
    5b48:	2a00      	cmp	r2, #0
    5b4a:	d01e      	beq.n	5b8a <svcKernelInitialize+0xba>
    5b4c:	685a      	ldr	r2, [r3, #4]
    5b4e:	9202      	str	r2, [sp, #8]
    5b50:	3203      	adds	r2, #3
    5b52:	2a06      	cmp	r2, #6
    5b54:	d819      	bhi.n	5b8a <svcKernelInitialize+0xba>
    5b56:	68db      	ldr	r3, [r3, #12]
    5b58:	9303      	str	r3, [sp, #12]
    5b5a:	2b00      	cmp	r3, #0
    5b5c:	d019      	beq.n	5b92 <svcKernelInitialize+0xc2>
    5b5e:	0019      	movs	r1, r3
    5b60:	0030      	movs	r0, r6
    5b62:	f001 fc3b 	bl	73dc <rt_alloc_mem>
    5b66:	1e05      	subs	r5, r0, #0
    5b68:	d00f      	beq.n	5b8a <svcKernelInitialize+0xba>
    5b6a:	9b03      	ldr	r3, [sp, #12]
    5b6c:	9902      	ldr	r1, [sp, #8]
    5b6e:	021b      	lsls	r3, r3, #8
    5b70:	3104      	adds	r1, #4
    5b72:	4319      	orrs	r1, r3
    5b74:	0002      	movs	r2, r0
    5b76:	2300      	movs	r3, #0
    5b78:	9801      	ldr	r0, [sp, #4]
    5b7a:	f002 fcf7 	bl	856c <rt_tsk_create>
    5b7e:	2800      	cmp	r0, #0
    5b80:	d110      	bne.n	5ba4 <svcKernelInitialize+0xd4>
    5b82:	0029      	movs	r1, r5
    5b84:	0030      	movs	r0, r6
    5b86:	f001 fc4b 	bl	7420 <rt_free_mem>
    5b8a:	2300      	movs	r3, #0
    5b8c:	4a12      	ldr	r2, [pc, #72]	; (5bd8 <svcKernelInitialize+0x108>)
    5b8e:	6013      	str	r3, [r2, #0]
    5b90:	e7a8      	b.n	5ae4 <svcKernelInitialize+0x14>
    5b92:	9902      	ldr	r1, [sp, #8]
    5b94:	2300      	movs	r3, #0
    5b96:	3104      	adds	r1, #4
    5b98:	2200      	movs	r2, #0
    5b9a:	9801      	ldr	r0, [sp, #4]
    5b9c:	f002 fce6 	bl	856c <rt_tsk_create>
    5ba0:	2800      	cmp	r0, #0
    5ba2:	d0f2      	beq.n	5b8a <svcKernelInitialize+0xba>
    5ba4:	3801      	subs	r0, #1
    5ba6:	4b0d      	ldr	r3, [pc, #52]	; (5bdc <svcKernelInitialize+0x10c>)
    5ba8:	0080      	lsls	r0, r0, #2
    5baa:	58c3      	ldr	r3, [r0, r3]
    5bac:	490c      	ldr	r1, [pc, #48]	; (5be0 <svcKernelInitialize+0x110>)
    5bae:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5bb0:	6351      	str	r1, [r2, #52]	; 0x34
    5bb2:	e7eb      	b.n	5b8c <svcKernelInitialize+0xbc>
    5bb4:	2500      	movs	r5, #0
    5bb6:	e7c2      	b.n	5b3e <svcKernelInitialize+0x6e>
    5bb8:	20006078 	.word	0x20006078
    5bbc:	200060b8 	.word	0x200060b8
    5bc0:	20006079 	.word	0x20006079
    5bc4:	00008b80 	.word	0x00008b80
    5bc8:	200039f8 	.word	0x200039f8
    5bcc:	00008b98 	.word	0x00008b98
    5bd0:	20004d10 	.word	0x20004d10
    5bd4:	00008b88 	.word	0x00008b88
    5bd8:	20004cec 	.word	0x20004cec
    5bdc:	20004cdc 	.word	0x20004cdc
    5be0:	00005ab9 	.word	0x00005ab9

00005be4 <svcKernelStart>:
    5be4:	b570      	push	{r4, r5, r6, lr}
    5be6:	4c10      	ldr	r4, [pc, #64]	; (5c28 <svcKernelStart+0x44>)
    5be8:	7823      	ldrb	r3, [r4, #0]
    5bea:	2b00      	cmp	r3, #0
    5bec:	d001      	beq.n	5bf2 <svcKernelStart+0xe>
    5bee:	2000      	movs	r0, #0
    5bf0:	bd70      	pop	{r4, r5, r6, pc}
    5bf2:	4d0e      	ldr	r5, [pc, #56]	; (5c2c <svcKernelStart+0x48>)
    5bf4:	3324      	adds	r3, #36	; 0x24
    5bf6:	682a      	ldr	r2, [r5, #0]
    5bf8:	2000      	movs	r0, #0
    5bfa:	5cd1      	ldrb	r1, [r2, r3]
    5bfc:	f002 fc5a 	bl	84b4 <rt_tsk_prio>
    5c00:	682b      	ldr	r3, [r5, #0]
    5c02:	78da      	ldrb	r2, [r3, #3]
    5c04:	2aff      	cmp	r2, #255	; 0xff
    5c06:	d007      	beq.n	5c18 <svcKernelStart+0x34>
    5c08:	686a      	ldr	r2, [r5, #4]
    5c0a:	2a00      	cmp	r2, #0
    5c0c:	d009      	beq.n	5c22 <svcKernelStart+0x3e>
    5c0e:	f002 fe65 	bl	88dc <rt_sys_start>
    5c12:	2301      	movs	r3, #1
    5c14:	7023      	strb	r3, [r4, #0]
    5c16:	e7ea      	b.n	5bee <svcKernelStart+0xa>
    5c18:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5c1a:	3220      	adds	r2, #32
    5c1c:	f382 8809 	msr	PSP, r2
    5c20:	e7f2      	b.n	5c08 <svcKernelStart+0x24>
    5c22:	c50c      	stmia	r5!, {r2, r3}
    5c24:	e7f3      	b.n	5c0e <svcKernelStart+0x2a>
    5c26:	46c0      	nop			; (mov r8, r8)
    5c28:	20006079 	.word	0x20006079
    5c2c:	200060b8 	.word	0x200060b8

00005c30 <svcKernelRunning>:
    5c30:	4b01      	ldr	r3, [pc, #4]	; (5c38 <svcKernelRunning+0x8>)
    5c32:	7818      	ldrb	r0, [r3, #0]
    5c34:	4770      	bx	lr
    5c36:	46c0      	nop			; (mov r8, r8)
    5c38:	20006079 	.word	0x20006079

00005c3c <svcKernelSysTick>:
    5c3c:	b510      	push	{r4, lr}
    5c3e:	b082      	sub	sp, #8
    5c40:	f002 fb88 	bl	8354 <os_tick_val>
    5c44:	0004      	movs	r4, r0
    5c46:	f002 fb8f 	bl	8368 <os_tick_ovf>
    5c4a:	2800      	cmp	r0, #0
    5c4c:	d109      	bne.n	5c62 <svcKernelSysTick+0x26>
    5c4e:	4b0d      	ldr	r3, [pc, #52]	; (5c84 <svcKernelSysTick+0x48>)
    5c50:	681b      	ldr	r3, [r3, #0]
    5c52:	1c58      	adds	r0, r3, #1
    5c54:	9301      	str	r3, [sp, #4]
    5c56:	4b0c      	ldr	r3, [pc, #48]	; (5c88 <svcKernelSysTick+0x4c>)
    5c58:	681b      	ldr	r3, [r3, #0]
    5c5a:	4358      	muls	r0, r3
    5c5c:	1900      	adds	r0, r0, r4
    5c5e:	b002      	add	sp, #8
    5c60:	bd10      	pop	{r4, pc}
    5c62:	f002 fb77 	bl	8354 <os_tick_val>
    5c66:	4284      	cmp	r4, r0
    5c68:	d809      	bhi.n	5c7e <svcKernelSysTick+0x42>
    5c6a:	4b06      	ldr	r3, [pc, #24]	; (5c84 <svcKernelSysTick+0x48>)
    5c6c:	4a06      	ldr	r2, [pc, #24]	; (5c88 <svcKernelSysTick+0x4c>)
    5c6e:	681b      	ldr	r3, [r3, #0]
    5c70:	6810      	ldr	r0, [r2, #0]
    5c72:	9301      	str	r3, [sp, #4]
    5c74:	3001      	adds	r0, #1
    5c76:	3301      	adds	r3, #1
    5c78:	4358      	muls	r0, r3
    5c7a:	1900      	adds	r0, r0, r4
    5c7c:	e7ef      	b.n	5c5e <svcKernelSysTick+0x22>
    5c7e:	0004      	movs	r4, r0
    5c80:	e7f3      	b.n	5c6a <svcKernelSysTick+0x2e>
    5c82:	46c0      	nop			; (mov r8, r8)
    5c84:	00008b60 	.word	0x00008b60
    5c88:	20006080 	.word	0x20006080

00005c8c <osKernelInitialize>:
    5c8c:	b5f0      	push	{r4, r5, r6, r7, lr}
    5c8e:	b085      	sub	sp, #20
    5c90:	f3ef 8405 	mrs	r4, IPSR
    5c94:	2582      	movs	r5, #130	; 0x82
    5c96:	2c00      	cmp	r4, #0
    5c98:	d002      	beq.n	5ca0 <osKernelInitialize+0x14>
    5c9a:	0028      	movs	r0, r5
    5c9c:	b005      	add	sp, #20
    5c9e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5ca0:	f3ef 8414 	mrs	r4, CONTROL
    5ca4:	07e4      	lsls	r4, r4, #31
    5ca6:	d504      	bpl.n	5cb2 <osKernelInitialize+0x26>
    5ca8:	4f45      	ldr	r7, [pc, #276]	; (5dc0 <osKernelInitialize+0x134>)
    5caa:	46bc      	mov	ip, r7
    5cac:	df00      	svc	0
    5cae:	0005      	movs	r5, r0
    5cb0:	e7f3      	b.n	5c9a <osKernelInitialize+0xe>
    5cb2:	4c38      	ldr	r4, [pc, #224]	; (5d94 <osKernelInitialize+0x108>)
    5cb4:	7823      	ldrb	r3, [r4, #0]
    5cb6:	2b00      	cmp	r3, #0
    5cb8:	d00a      	beq.n	5cd0 <osKernelInitialize+0x44>
    5cba:	22ff      	movs	r2, #255	; 0xff
    5cbc:	4b36      	ldr	r3, [pc, #216]	; (5d98 <osKernelInitialize+0x10c>)
    5cbe:	681b      	ldr	r3, [r3, #0]
    5cc0:	709a      	strb	r2, [r3, #2]
    5cc2:	2301      	movs	r3, #1
    5cc4:	2200      	movs	r2, #0
    5cc6:	7023      	strb	r3, [r4, #0]
    5cc8:	4b34      	ldr	r3, [pc, #208]	; (5d9c <osKernelInitialize+0x110>)
    5cca:	2500      	movs	r5, #0
    5ccc:	701a      	strb	r2, [r3, #0]
    5cce:	e7e4      	b.n	5c9a <osKernelInitialize+0xe>
    5cd0:	4e33      	ldr	r6, [pc, #204]	; (5da0 <osKernelInitialize+0x114>)
    5cd2:	4b34      	ldr	r3, [pc, #208]	; (5da4 <osKernelInitialize+0x118>)
    5cd4:	0030      	movs	r0, r6
    5cd6:	6819      	ldr	r1, [r3, #0]
    5cd8:	f001 fb72 	bl	73c0 <rt_init_mem>
    5cdc:	3503      	adds	r5, #3
    5cde:	2800      	cmp	r0, #0
    5ce0:	d1db      	bne.n	5c9a <osKernelInitialize+0xe>
    5ce2:	f002 fd83 	bl	87ec <rt_sys_init>
    5ce6:	21ff      	movs	r1, #255	; 0xff
    5ce8:	4a2b      	ldr	r2, [pc, #172]	; (5d98 <osKernelInitialize+0x10c>)
    5cea:	7823      	ldrb	r3, [r4, #0]
    5cec:	6812      	ldr	r2, [r2, #0]
    5cee:	7091      	strb	r1, [r2, #2]
    5cf0:	2b00      	cmp	r3, #0
    5cf2:	d1e6      	bne.n	5cc2 <osKernelInitialize+0x36>
    5cf4:	4b2c      	ldr	r3, [pc, #176]	; (5da8 <osKernelInitialize+0x11c>)
    5cf6:	681a      	ldr	r2, [r3, #0]
    5cf8:	9201      	str	r2, [sp, #4]
    5cfa:	2a00      	cmp	r2, #0
    5cfc:	d047      	beq.n	5d8e <osKernelInitialize+0x102>
    5cfe:	685d      	ldr	r5, [r3, #4]
    5d00:	2d00      	cmp	r5, #0
    5d02:	d044      	beq.n	5d8e <osKernelInitialize+0x102>
    5d04:	782b      	ldrb	r3, [r5, #0]
    5d06:	2b00      	cmp	r3, #0
    5d08:	d141      	bne.n	5d8e <osKernelInitialize+0x102>
    5d0a:	0011      	movs	r1, r2
    5d0c:	3104      	adds	r1, #4
    5d0e:	0089      	lsls	r1, r1, #2
    5d10:	b289      	uxth	r1, r1
    5d12:	0028      	movs	r0, r5
    5d14:	f001 fdfe 	bl	7914 <rt_mbx_init>
    5d18:	4b24      	ldr	r3, [pc, #144]	; (5dac <osKernelInitialize+0x120>)
    5d1a:	601d      	str	r5, [r3, #0]
    5d1c:	4b24      	ldr	r3, [pc, #144]	; (5db0 <osKernelInitialize+0x124>)
    5d1e:	681a      	ldr	r2, [r3, #0]
    5d20:	9201      	str	r2, [sp, #4]
    5d22:	2a00      	cmp	r2, #0
    5d24:	d01e      	beq.n	5d64 <osKernelInitialize+0xd8>
    5d26:	685a      	ldr	r2, [r3, #4]
    5d28:	9202      	str	r2, [sp, #8]
    5d2a:	3203      	adds	r2, #3
    5d2c:	2a06      	cmp	r2, #6
    5d2e:	d819      	bhi.n	5d64 <osKernelInitialize+0xd8>
    5d30:	68db      	ldr	r3, [r3, #12]
    5d32:	9303      	str	r3, [sp, #12]
    5d34:	2b00      	cmp	r3, #0
    5d36:	d019      	beq.n	5d6c <osKernelInitialize+0xe0>
    5d38:	0019      	movs	r1, r3
    5d3a:	0030      	movs	r0, r6
    5d3c:	f001 fb4e 	bl	73dc <rt_alloc_mem>
    5d40:	1e05      	subs	r5, r0, #0
    5d42:	d00f      	beq.n	5d64 <osKernelInitialize+0xd8>
    5d44:	9902      	ldr	r1, [sp, #8]
    5d46:	9b03      	ldr	r3, [sp, #12]
    5d48:	3104      	adds	r1, #4
    5d4a:	021b      	lsls	r3, r3, #8
    5d4c:	4319      	orrs	r1, r3
    5d4e:	0002      	movs	r2, r0
    5d50:	2300      	movs	r3, #0
    5d52:	9801      	ldr	r0, [sp, #4]
    5d54:	f002 fc0a 	bl	856c <rt_tsk_create>
    5d58:	2800      	cmp	r0, #0
    5d5a:	d110      	bne.n	5d7e <osKernelInitialize+0xf2>
    5d5c:	0029      	movs	r1, r5
    5d5e:	0030      	movs	r0, r6
    5d60:	f001 fb5e 	bl	7420 <rt_free_mem>
    5d64:	2300      	movs	r3, #0
    5d66:	4a13      	ldr	r2, [pc, #76]	; (5db4 <osKernelInitialize+0x128>)
    5d68:	6013      	str	r3, [r2, #0]
    5d6a:	e7aa      	b.n	5cc2 <osKernelInitialize+0x36>
    5d6c:	9902      	ldr	r1, [sp, #8]
    5d6e:	2300      	movs	r3, #0
    5d70:	3104      	adds	r1, #4
    5d72:	2200      	movs	r2, #0
    5d74:	9801      	ldr	r0, [sp, #4]
    5d76:	f002 fbf9 	bl	856c <rt_tsk_create>
    5d7a:	2800      	cmp	r0, #0
    5d7c:	d0f2      	beq.n	5d64 <osKernelInitialize+0xd8>
    5d7e:	3801      	subs	r0, #1
    5d80:	4b0d      	ldr	r3, [pc, #52]	; (5db8 <osKernelInitialize+0x12c>)
    5d82:	0080      	lsls	r0, r0, #2
    5d84:	58c3      	ldr	r3, [r0, r3]
    5d86:	490d      	ldr	r1, [pc, #52]	; (5dbc <osKernelInitialize+0x130>)
    5d88:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5d8a:	6351      	str	r1, [r2, #52]	; 0x34
    5d8c:	e7eb      	b.n	5d66 <osKernelInitialize+0xda>
    5d8e:	2500      	movs	r5, #0
    5d90:	e7c2      	b.n	5d18 <osKernelInitialize+0x8c>
    5d92:	46c0      	nop			; (mov r8, r8)
    5d94:	20006078 	.word	0x20006078
    5d98:	200060b8 	.word	0x200060b8
    5d9c:	20006079 	.word	0x20006079
    5da0:	200039f8 	.word	0x200039f8
    5da4:	00008b80 	.word	0x00008b80
    5da8:	00008b98 	.word	0x00008b98
    5dac:	20004d10 	.word	0x20004d10
    5db0:	00008b88 	.word	0x00008b88
    5db4:	20004cec 	.word	0x20004cec
    5db8:	20004cdc 	.word	0x20004cdc
    5dbc:	00005ab9 	.word	0x00005ab9
    5dc0:	00005ad1 	.word	0x00005ad1

00005dc4 <osKernelStart>:
    5dc4:	b5b0      	push	{r4, r5, r7, lr}
    5dc6:	b088      	sub	sp, #32
    5dc8:	f3ef 8405 	mrs	r4, IPSR
    5dcc:	2582      	movs	r5, #130	; 0x82
    5dce:	2c00      	cmp	r4, #0
    5dd0:	d002      	beq.n	5dd8 <osKernelStart+0x14>
    5dd2:	0028      	movs	r0, r5
    5dd4:	b008      	add	sp, #32
    5dd6:	bdb0      	pop	{r4, r5, r7, pc}
    5dd8:	f3ef 8414 	mrs	r4, CONTROL
    5ddc:	3d7f      	subs	r5, #127	; 0x7f
    5dde:	402c      	ands	r4, r5
    5de0:	2c02      	cmp	r4, #2
    5de2:	d01c      	beq.n	5e1e <osKernelStart+0x5a>
    5de4:	2c03      	cmp	r4, #3
    5de6:	d014      	beq.n	5e12 <osKernelStart+0x4e>
    5de8:	2c01      	cmp	r4, #1
    5dea:	d020      	beq.n	5e2e <osKernelStart+0x6a>
    5dec:	ac08      	add	r4, sp, #32
    5dee:	f384 8809 	msr	PSP, r4
    5df2:	4c10      	ldr	r4, [pc, #64]	; (5e34 <osKernelStart+0x70>)
    5df4:	7824      	ldrb	r4, [r4, #0]
    5df6:	07e4      	lsls	r4, r4, #31
    5df8:	d515      	bpl.n	5e26 <osKernelStart+0x62>
    5dfa:	2402      	movs	r4, #2
    5dfc:	f384 8814 	msr	CONTROL, r4
    5e00:	f3bf 8f4f 	dsb	sy
    5e04:	f3bf 8f6f 	isb	sy
    5e08:	4f0b      	ldr	r7, [pc, #44]	; (5e38 <osKernelStart+0x74>)
    5e0a:	46bc      	mov	ip, r7
    5e0c:	df00      	svc	0
    5e0e:	0005      	movs	r5, r0
    5e10:	e7df      	b.n	5dd2 <osKernelStart+0xe>
    5e12:	4c08      	ldr	r4, [pc, #32]	; (5e34 <osKernelStart+0x70>)
    5e14:	25ff      	movs	r5, #255	; 0xff
    5e16:	7824      	ldrb	r4, [r4, #0]
    5e18:	07e4      	lsls	r4, r4, #31
    5e1a:	d4da      	bmi.n	5dd2 <osKernelStart+0xe>
    5e1c:	e7f4      	b.n	5e08 <osKernelStart+0x44>
    5e1e:	4c05      	ldr	r4, [pc, #20]	; (5e34 <osKernelStart+0x70>)
    5e20:	7824      	ldrb	r4, [r4, #0]
    5e22:	07e4      	lsls	r4, r4, #31
    5e24:	d4f0      	bmi.n	5e08 <osKernelStart+0x44>
    5e26:	2403      	movs	r4, #3
    5e28:	f384 8814 	msr	CONTROL, r4
    5e2c:	e7e8      	b.n	5e00 <osKernelStart+0x3c>
    5e2e:	25ff      	movs	r5, #255	; 0xff
    5e30:	e7cf      	b.n	5dd2 <osKernelStart+0xe>
    5e32:	46c0      	nop			; (mov r8, r8)
    5e34:	00008b64 	.word	0x00008b64
    5e38:	00005be5 	.word	0x00005be5

00005e3c <osKernelRunning>:
    5e3c:	b590      	push	{r4, r7, lr}
    5e3e:	f3ef 8405 	mrs	r4, IPSR
    5e42:	2c00      	cmp	r4, #0
    5e44:	d107      	bne.n	5e56 <osKernelRunning+0x1a>
    5e46:	f3ef 8414 	mrs	r4, CONTROL
    5e4a:	07e4      	lsls	r4, r4, #31
    5e4c:	d503      	bpl.n	5e56 <osKernelRunning+0x1a>
    5e4e:	4f04      	ldr	r7, [pc, #16]	; (5e60 <osKernelRunning+0x24>)
    5e50:	46bc      	mov	ip, r7
    5e52:	df00      	svc	0
    5e54:	e001      	b.n	5e5a <osKernelRunning+0x1e>
    5e56:	4b01      	ldr	r3, [pc, #4]	; (5e5c <osKernelRunning+0x20>)
    5e58:	7818      	ldrb	r0, [r3, #0]
    5e5a:	bd90      	pop	{r4, r7, pc}
    5e5c:	20006079 	.word	0x20006079
    5e60:	00005c31 	.word	0x00005c31

00005e64 <osKernelSysTick>:
    5e64:	b5b0      	push	{r4, r5, r7, lr}
    5e66:	f3ef 8405 	mrs	r4, IPSR
    5e6a:	2500      	movs	r5, #0
    5e6c:	2c00      	cmp	r4, #0
    5e6e:	d103      	bne.n	5e78 <osKernelSysTick+0x14>
    5e70:	4f02      	ldr	r7, [pc, #8]	; (5e7c <osKernelSysTick+0x18>)
    5e72:	46bc      	mov	ip, r7
    5e74:	df00      	svc	0
    5e76:	0005      	movs	r5, r0
    5e78:	0028      	movs	r0, r5
    5e7a:	bdb0      	pop	{r4, r5, r7, pc}
    5e7c:	00005c3d 	.word	0x00005c3d

00005e80 <svcThreadCreate>:
    5e80:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5e82:	0004      	movs	r4, r0
    5e84:	000d      	movs	r5, r1
    5e86:	2800      	cmp	r0, #0
    5e88:	d01f      	beq.n	5eca <svcThreadCreate+0x4a>
    5e8a:	6800      	ldr	r0, [r0, #0]
    5e8c:	2800      	cmp	r0, #0
    5e8e:	d01c      	beq.n	5eca <svcThreadCreate+0x4a>
    5e90:	6863      	ldr	r3, [r4, #4]
    5e92:	1cda      	adds	r2, r3, #3
    5e94:	2a06      	cmp	r2, #6
    5e96:	d818      	bhi.n	5eca <svcThreadCreate+0x4a>
    5e98:	68e1      	ldr	r1, [r4, #12]
    5e9a:	2900      	cmp	r1, #0
    5e9c:	d017      	beq.n	5ece <svcThreadCreate+0x4e>
    5e9e:	4e13      	ldr	r6, [pc, #76]	; (5eec <svcThreadCreate+0x6c>)
    5ea0:	0030      	movs	r0, r6
    5ea2:	f001 fa9b 	bl	73dc <rt_alloc_mem>
    5ea6:	1e07      	subs	r7, r0, #0
    5ea8:	d00f      	beq.n	5eca <svcThreadCreate+0x4a>
    5eaa:	6863      	ldr	r3, [r4, #4]
    5eac:	6820      	ldr	r0, [r4, #0]
    5eae:	1d19      	adds	r1, r3, #4
    5eb0:	68e3      	ldr	r3, [r4, #12]
    5eb2:	003a      	movs	r2, r7
    5eb4:	021b      	lsls	r3, r3, #8
    5eb6:	4319      	orrs	r1, r3
    5eb8:	002b      	movs	r3, r5
    5eba:	f002 fb57 	bl	856c <rt_tsk_create>
    5ebe:	2800      	cmp	r0, #0
    5ec0:	d10c      	bne.n	5edc <svcThreadCreate+0x5c>
    5ec2:	0039      	movs	r1, r7
    5ec4:	0030      	movs	r0, r6
    5ec6:	f001 faab 	bl	7420 <rt_free_mem>
    5eca:	2000      	movs	r0, #0
    5ecc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5ece:	1d19      	adds	r1, r3, #4
    5ed0:	2200      	movs	r2, #0
    5ed2:	002b      	movs	r3, r5
    5ed4:	f002 fb4a 	bl	856c <rt_tsk_create>
    5ed8:	2800      	cmp	r0, #0
    5eda:	d0f6      	beq.n	5eca <svcThreadCreate+0x4a>
    5edc:	4b04      	ldr	r3, [pc, #16]	; (5ef0 <svcThreadCreate+0x70>)
    5ede:	3801      	subs	r0, #1
    5ee0:	0080      	lsls	r0, r0, #2
    5ee2:	58c0      	ldr	r0, [r0, r3]
    5ee4:	4a03      	ldr	r2, [pc, #12]	; (5ef4 <svcThreadCreate+0x74>)
    5ee6:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5ee8:	635a      	str	r2, [r3, #52]	; 0x34
    5eea:	e7ef      	b.n	5ecc <svcThreadCreate+0x4c>
    5eec:	200039f8 	.word	0x200039f8
    5ef0:	20004cdc 	.word	0x20004cdc
    5ef4:	00005ab9 	.word	0x00005ab9

00005ef8 <svcThreadGetId>:
    5ef8:	b510      	push	{r4, lr}
    5efa:	f002 fad1 	bl	84a0 <rt_tsk_self>
    5efe:	2800      	cmp	r0, #0
    5f00:	d004      	beq.n	5f0c <svcThreadGetId+0x14>
    5f02:	3801      	subs	r0, #1
    5f04:	4b02      	ldr	r3, [pc, #8]	; (5f10 <svcThreadGetId+0x18>)
    5f06:	0080      	lsls	r0, r0, #2
    5f08:	58c0      	ldr	r0, [r0, r3]
    5f0a:	bd10      	pop	{r4, pc}
    5f0c:	2000      	movs	r0, #0
    5f0e:	e7fc      	b.n	5f0a <svcThreadGetId+0x12>
    5f10:	20004cdc 	.word	0x20004cdc

00005f14 <svcThreadTerminate>:
    5f14:	0003      	movs	r3, r0
    5f16:	b510      	push	{r4, lr}
    5f18:	2080      	movs	r0, #128	; 0x80
    5f1a:	2b00      	cmp	r3, #0
    5f1c:	d017      	beq.n	5f4e <svcThreadTerminate+0x3a>
    5f1e:	079a      	lsls	r2, r3, #30
    5f20:	d115      	bne.n	5f4e <svcThreadTerminate+0x3a>
    5f22:	781a      	ldrb	r2, [r3, #0]
    5f24:	2a00      	cmp	r2, #0
    5f26:	d112      	bne.n	5f4e <svcThreadTerminate+0x3a>
    5f28:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    5f2a:	2400      	movs	r4, #0
    5f2c:	2a00      	cmp	r2, #0
    5f2e:	d000      	beq.n	5f32 <svcThreadTerminate+0x1e>
    5f30:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    5f32:	78d8      	ldrb	r0, [r3, #3]
    5f34:	f002 fb94 	bl	8660 <rt_tsk_delete>
    5f38:	0003      	movs	r3, r0
    5f3a:	2081      	movs	r0, #129	; 0x81
    5f3c:	2bff      	cmp	r3, #255	; 0xff
    5f3e:	d006      	beq.n	5f4e <svcThreadTerminate+0x3a>
    5f40:	2c00      	cmp	r4, #0
    5f42:	d005      	beq.n	5f50 <svcThreadTerminate+0x3c>
    5f44:	0021      	movs	r1, r4
    5f46:	4803      	ldr	r0, [pc, #12]	; (5f54 <svcThreadTerminate+0x40>)
    5f48:	f001 fa6a 	bl	7420 <rt_free_mem>
    5f4c:	2000      	movs	r0, #0
    5f4e:	bd10      	pop	{r4, pc}
    5f50:	2000      	movs	r0, #0
    5f52:	e7fc      	b.n	5f4e <svcThreadTerminate+0x3a>
    5f54:	200039f8 	.word	0x200039f8

00005f58 <svcThreadYield>:
    5f58:	b510      	push	{r4, lr}
    5f5a:	f002 fa8b 	bl	8474 <rt_tsk_pass>
    5f5e:	2000      	movs	r0, #0
    5f60:	bd10      	pop	{r4, pc}
    5f62:	46c0      	nop			; (mov r8, r8)

00005f64 <svcThreadSetPriority>:
    5f64:	0003      	movs	r3, r0
    5f66:	b510      	push	{r4, lr}
    5f68:	2080      	movs	r0, #128	; 0x80
    5f6a:	2b00      	cmp	r3, #0
    5f6c:	d008      	beq.n	5f80 <svcThreadSetPriority+0x1c>
    5f6e:	079a      	lsls	r2, r3, #30
    5f70:	d106      	bne.n	5f80 <svcThreadSetPriority+0x1c>
    5f72:	781a      	ldrb	r2, [r3, #0]
    5f74:	2a00      	cmp	r2, #0
    5f76:	d103      	bne.n	5f80 <svcThreadSetPriority+0x1c>
    5f78:	1cca      	adds	r2, r1, #3
    5f7a:	2086      	movs	r0, #134	; 0x86
    5f7c:	2a06      	cmp	r2, #6
    5f7e:	d900      	bls.n	5f82 <svcThreadSetPriority+0x1e>
    5f80:	bd10      	pop	{r4, pc}
    5f82:	3104      	adds	r1, #4
    5f84:	78d8      	ldrb	r0, [r3, #3]
    5f86:	b2c9      	uxtb	r1, r1
    5f88:	f002 fa94 	bl	84b4 <rt_tsk_prio>
    5f8c:	0003      	movs	r3, r0
    5f8e:	2081      	movs	r0, #129	; 0x81
    5f90:	2bff      	cmp	r3, #255	; 0xff
    5f92:	d0f5      	beq.n	5f80 <svcThreadSetPriority+0x1c>
    5f94:	2000      	movs	r0, #0
    5f96:	e7f3      	b.n	5f80 <svcThreadSetPriority+0x1c>

00005f98 <svcThreadGetPriority>:
    5f98:	0003      	movs	r3, r0
    5f9a:	2084      	movs	r0, #132	; 0x84
    5f9c:	2b00      	cmp	r3, #0
    5f9e:	d006      	beq.n	5fae <svcThreadGetPriority+0x16>
    5fa0:	079a      	lsls	r2, r3, #30
    5fa2:	d104      	bne.n	5fae <svcThreadGetPriority+0x16>
    5fa4:	781a      	ldrb	r2, [r3, #0]
    5fa6:	2a00      	cmp	r2, #0
    5fa8:	d101      	bne.n	5fae <svcThreadGetPriority+0x16>
    5faa:	7898      	ldrb	r0, [r3, #2]
    5fac:	3804      	subs	r0, #4
    5fae:	4770      	bx	lr

00005fb0 <osThreadCreate>:
    5fb0:	b5f0      	push	{r4, r5, r6, r7, lr}
    5fb2:	4647      	mov	r7, r8
    5fb4:	0004      	movs	r4, r0
    5fb6:	b480      	push	{r7}
    5fb8:	000d      	movs	r5, r1
    5fba:	f3ef 8105 	mrs	r1, IPSR
    5fbe:	2900      	cmp	r1, #0
    5fc0:	d132      	bne.n	6028 <osThreadCreate+0x78>
    5fc2:	f3ef 8114 	mrs	r1, CONTROL
    5fc6:	07c9      	lsls	r1, r1, #31
    5fc8:	d507      	bpl.n	5fda <osThreadCreate+0x2a>
    5fca:	0020      	movs	r0, r4
    5fcc:	0029      	movs	r1, r5
    5fce:	4f23      	ldr	r7, [pc, #140]	; (605c <osThreadCreate+0xac>)
    5fd0:	46bc      	mov	ip, r7
    5fd2:	df00      	svc	0
    5fd4:	bc04      	pop	{r2}
    5fd6:	4690      	mov	r8, r2
    5fd8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5fda:	491c      	ldr	r1, [pc, #112]	; (604c <osThreadCreate+0x9c>)
    5fdc:	7809      	ldrb	r1, [r1, #0]
    5fde:	2900      	cmp	r1, #0
    5fe0:	d1f3      	bne.n	5fca <osThreadCreate+0x1a>
    5fe2:	2800      	cmp	r0, #0
    5fe4:	d020      	beq.n	6028 <osThreadCreate+0x78>
    5fe6:	6800      	ldr	r0, [r0, #0]
    5fe8:	2800      	cmp	r0, #0
    5fea:	d01d      	beq.n	6028 <osThreadCreate+0x78>
    5fec:	6863      	ldr	r3, [r4, #4]
    5fee:	1cda      	adds	r2, r3, #3
    5ff0:	2a06      	cmp	r2, #6
    5ff2:	d819      	bhi.n	6028 <osThreadCreate+0x78>
    5ff4:	68e1      	ldr	r1, [r4, #12]
    5ff6:	2900      	cmp	r1, #0
    5ff8:	d018      	beq.n	602c <osThreadCreate+0x7c>
    5ffa:	4e15      	ldr	r6, [pc, #84]	; (6050 <osThreadCreate+0xa0>)
    5ffc:	0030      	movs	r0, r6
    5ffe:	f001 f9ed 	bl	73dc <rt_alloc_mem>
    6002:	4680      	mov	r8, r0
    6004:	2800      	cmp	r0, #0
    6006:	d00f      	beq.n	6028 <osThreadCreate+0x78>
    6008:	6863      	ldr	r3, [r4, #4]
    600a:	6820      	ldr	r0, [r4, #0]
    600c:	1d19      	adds	r1, r3, #4
    600e:	68e3      	ldr	r3, [r4, #12]
    6010:	4642      	mov	r2, r8
    6012:	021b      	lsls	r3, r3, #8
    6014:	4319      	orrs	r1, r3
    6016:	002b      	movs	r3, r5
    6018:	f002 faa8 	bl	856c <rt_tsk_create>
    601c:	2800      	cmp	r0, #0
    601e:	d10c      	bne.n	603a <osThreadCreate+0x8a>
    6020:	4641      	mov	r1, r8
    6022:	0030      	movs	r0, r6
    6024:	f001 f9fc 	bl	7420 <rt_free_mem>
    6028:	2000      	movs	r0, #0
    602a:	e7d3      	b.n	5fd4 <osThreadCreate+0x24>
    602c:	1d19      	adds	r1, r3, #4
    602e:	2200      	movs	r2, #0
    6030:	002b      	movs	r3, r5
    6032:	f002 fa9b 	bl	856c <rt_tsk_create>
    6036:	2800      	cmp	r0, #0
    6038:	d0f6      	beq.n	6028 <osThreadCreate+0x78>
    603a:	4b06      	ldr	r3, [pc, #24]	; (6054 <osThreadCreate+0xa4>)
    603c:	3801      	subs	r0, #1
    603e:	0080      	lsls	r0, r0, #2
    6040:	58c0      	ldr	r0, [r0, r3]
    6042:	4a05      	ldr	r2, [pc, #20]	; (6058 <osThreadCreate+0xa8>)
    6044:	6a83      	ldr	r3, [r0, #40]	; 0x28
    6046:	635a      	str	r2, [r3, #52]	; 0x34
    6048:	e7c4      	b.n	5fd4 <osThreadCreate+0x24>
    604a:	46c0      	nop			; (mov r8, r8)
    604c:	20006079 	.word	0x20006079
    6050:	200039f8 	.word	0x200039f8
    6054:	20004cdc 	.word	0x20004cdc
    6058:	00005ab9 	.word	0x00005ab9
    605c:	00005e81 	.word	0x00005e81

00006060 <osThreadGetId>:
    6060:	b590      	push	{r4, r7, lr}
    6062:	f3ef 8405 	mrs	r4, IPSR
    6066:	2c00      	cmp	r4, #0
    6068:	d103      	bne.n	6072 <osThreadGetId+0x12>
    606a:	4f03      	ldr	r7, [pc, #12]	; (6078 <osThreadGetId+0x18>)
    606c:	46bc      	mov	ip, r7
    606e:	df00      	svc	0
    6070:	bd90      	pop	{r4, r7, pc}
    6072:	2000      	movs	r0, #0
    6074:	e7fc      	b.n	6070 <osThreadGetId+0x10>
    6076:	0000      	.short	0x0000
    6078:	00005ef9 	.word	0x00005ef9

0000607c <osThreadTerminate>:
    607c:	b5b0      	push	{r4, r5, r7, lr}
    607e:	0005      	movs	r5, r0
    6080:	f3ef 8405 	mrs	r4, IPSR
    6084:	2082      	movs	r0, #130	; 0x82
    6086:	2c00      	cmp	r4, #0
    6088:	d000      	beq.n	608c <osThreadTerminate+0x10>
    608a:	bdb0      	pop	{r4, r5, r7, pc}
    608c:	0028      	movs	r0, r5
    608e:	4f02      	ldr	r7, [pc, #8]	; (6098 <osThreadTerminate+0x1c>)
    6090:	46bc      	mov	ip, r7
    6092:	df00      	svc	0
    6094:	e7f9      	b.n	608a <osThreadTerminate+0xe>
    6096:	0000      	.short	0x0000
    6098:	00005f15 	.word	0x00005f15

0000609c <osThreadYield>:
    609c:	b5b0      	push	{r4, r5, r7, lr}
    609e:	f3ef 8405 	mrs	r4, IPSR
    60a2:	2582      	movs	r5, #130	; 0x82
    60a4:	2c00      	cmp	r4, #0
    60a6:	d001      	beq.n	60ac <osThreadYield+0x10>
    60a8:	0028      	movs	r0, r5
    60aa:	bdb0      	pop	{r4, r5, r7, pc}
    60ac:	4f02      	ldr	r7, [pc, #8]	; (60b8 <osThreadYield+0x1c>)
    60ae:	46bc      	mov	ip, r7
    60b0:	df00      	svc	0
    60b2:	0005      	movs	r5, r0
    60b4:	e7f8      	b.n	60a8 <osThreadYield+0xc>
    60b6:	0000      	.short	0x0000
    60b8:	00005f59 	.word	0x00005f59

000060bc <osThreadSetPriority>:
    60bc:	b5b0      	push	{r4, r5, r7, lr}
    60be:	0005      	movs	r5, r0
    60c0:	f3ef 8405 	mrs	r4, IPSR
    60c4:	2082      	movs	r0, #130	; 0x82
    60c6:	2c00      	cmp	r4, #0
    60c8:	d000      	beq.n	60cc <osThreadSetPriority+0x10>
    60ca:	bdb0      	pop	{r4, r5, r7, pc}
    60cc:	0028      	movs	r0, r5
    60ce:	4f02      	ldr	r7, [pc, #8]	; (60d8 <osThreadSetPriority+0x1c>)
    60d0:	46bc      	mov	ip, r7
    60d2:	df00      	svc	0
    60d4:	e7f9      	b.n	60ca <osThreadSetPriority+0xe>
    60d6:	0000      	.short	0x0000
    60d8:	00005f65 	.word	0x00005f65

000060dc <osThreadGetPriority>:
    60dc:	b5b0      	push	{r4, r5, r7, lr}
    60de:	0005      	movs	r5, r0
    60e0:	f3ef 8405 	mrs	r4, IPSR
    60e4:	2084      	movs	r0, #132	; 0x84
    60e6:	2c00      	cmp	r4, #0
    60e8:	d000      	beq.n	60ec <osThreadGetPriority+0x10>
    60ea:	bdb0      	pop	{r4, r5, r7, pc}
    60ec:	0028      	movs	r0, r5
    60ee:	4f02      	ldr	r7, [pc, #8]	; (60f8 <osThreadGetPriority+0x1c>)
    60f0:	46bc      	mov	ip, r7
    60f2:	df00      	svc	0
    60f4:	e7f9      	b.n	60ea <osThreadGetPriority+0xe>
    60f6:	0000      	.short	0x0000
    60f8:	00005f99 	.word	0x00005f99

000060fc <svcDelay>:
    60fc:	b500      	push	{lr}
    60fe:	b083      	sub	sp, #12
    6100:	2800      	cmp	r0, #0
    6102:	d019      	beq.n	6138 <svcDelay+0x3c>
    6104:	1c43      	adds	r3, r0, #1
    6106:	d01c      	beq.n	6142 <svcDelay+0x46>
    6108:	4b10      	ldr	r3, [pc, #64]	; (614c <svcDelay+0x50>)
    610a:	4298      	cmp	r0, r3
    610c:	d817      	bhi.n	613e <svcDelay+0x42>
    610e:	4b10      	ldr	r3, [pc, #64]	; (6150 <svcDelay+0x54>)
    6110:	681b      	ldr	r3, [r3, #0]
    6112:	9301      	str	r3, [sp, #4]
    6114:	23fa      	movs	r3, #250	; 0xfa
    6116:	009b      	lsls	r3, r3, #2
    6118:	4358      	muls	r0, r3
    611a:	9b01      	ldr	r3, [sp, #4]
    611c:	9901      	ldr	r1, [sp, #4]
    611e:	3b01      	subs	r3, #1
    6120:	18c0      	adds	r0, r0, r3
    6122:	f7fe fbdb 	bl	48dc <__aeabi_uidiv>
    6126:	4b0b      	ldr	r3, [pc, #44]	; (6154 <svcDelay+0x58>)
    6128:	0002      	movs	r2, r0
    612a:	0018      	movs	r0, r3
    612c:	429a      	cmp	r2, r3
    612e:	d90a      	bls.n	6146 <svcDelay+0x4a>
    6130:	f001 fb34 	bl	779c <rt_dly_wait>
    6134:	2040      	movs	r0, #64	; 0x40
    6136:	e000      	b.n	613a <svcDelay+0x3e>
    6138:	2000      	movs	r0, #0
    613a:	b003      	add	sp, #12
    613c:	bd00      	pop	{pc}
    613e:	4805      	ldr	r0, [pc, #20]	; (6154 <svcDelay+0x58>)
    6140:	e7f6      	b.n	6130 <svcDelay+0x34>
    6142:	4805      	ldr	r0, [pc, #20]	; (6158 <svcDelay+0x5c>)
    6144:	e7f4      	b.n	6130 <svcDelay+0x34>
    6146:	b290      	uxth	r0, r2
    6148:	e7f2      	b.n	6130 <svcDelay+0x34>
    614a:	46c0      	nop			; (mov r8, r8)
    614c:	003d0900 	.word	0x003d0900
    6150:	00008b70 	.word	0x00008b70
    6154:	0000fffe 	.word	0x0000fffe
    6158:	0000ffff 	.word	0x0000ffff

0000615c <osDelay>:
    615c:	b5b0      	push	{r4, r5, r7, lr}
    615e:	0005      	movs	r5, r0
    6160:	f3ef 8405 	mrs	r4, IPSR
    6164:	2082      	movs	r0, #130	; 0x82
    6166:	2c00      	cmp	r4, #0
    6168:	d000      	beq.n	616c <osDelay+0x10>
    616a:	bdb0      	pop	{r4, r5, r7, pc}
    616c:	0028      	movs	r0, r5
    616e:	4f02      	ldr	r7, [pc, #8]	; (6178 <osDelay+0x1c>)
    6170:	46bc      	mov	ip, r7
    6172:	df00      	svc	0
    6174:	e7f9      	b.n	616a <osDelay+0xe>
    6176:	0000      	.short	0x0000
    6178:	000060fd 	.word	0x000060fd

0000617c <osWait>:
    617c:	23ff      	movs	r3, #255	; 0xff
    617e:	6003      	str	r3, [r0, #0]
    6180:	4770      	bx	lr
    6182:	46c0      	nop			; (mov r8, r8)

00006184 <svcTimerCreate>:
    6184:	b510      	push	{r4, lr}
    6186:	2800      	cmp	r0, #0
    6188:	d016      	beq.n	61b8 <svcTimerCreate+0x34>
    618a:	6803      	ldr	r3, [r0, #0]
    618c:	2b00      	cmp	r3, #0
    618e:	d013      	beq.n	61b8 <svcTimerCreate+0x34>
    6190:	6843      	ldr	r3, [r0, #4]
    6192:	2b00      	cmp	r3, #0
    6194:	d010      	beq.n	61b8 <svcTimerCreate+0x34>
    6196:	2901      	cmp	r1, #1
    6198:	d80e      	bhi.n	61b8 <svcTimerCreate+0x34>
    619a:	4c08      	ldr	r4, [pc, #32]	; (61bc <svcTimerCreate+0x38>)
    619c:	6824      	ldr	r4, [r4, #0]
    619e:	2c00      	cmp	r4, #0
    61a0:	d00a      	beq.n	61b8 <svcTimerCreate+0x34>
    61a2:	791c      	ldrb	r4, [r3, #4]
    61a4:	2c00      	cmp	r4, #0
    61a6:	d107      	bne.n	61b8 <svcTimerCreate+0x34>
    61a8:	6158      	str	r0, [r3, #20]
    61aa:	0018      	movs	r0, r3
    61ac:	601c      	str	r4, [r3, #0]
    61ae:	3401      	adds	r4, #1
    61b0:	711c      	strb	r4, [r3, #4]
    61b2:	7159      	strb	r1, [r3, #5]
    61b4:	611a      	str	r2, [r3, #16]
    61b6:	bd10      	pop	{r4, pc}
    61b8:	2000      	movs	r0, #0
    61ba:	e7fc      	b.n	61b6 <svcTimerCreate+0x32>
    61bc:	20004cec 	.word	0x20004cec

000061c0 <svcTimerStart>:
    61c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    61c2:	0004      	movs	r4, r0
    61c4:	2080      	movs	r0, #128	; 0x80
    61c6:	07a3      	lsls	r3, r4, #30
    61c8:	d104      	bne.n	61d4 <svcTimerStart+0x14>
    61ca:	2c00      	cmp	r4, #0
    61cc:	d002      	beq.n	61d4 <svcTimerStart+0x14>
    61ce:	3006      	adds	r0, #6
    61d0:	2900      	cmp	r1, #0
    61d2:	d100      	bne.n	61d6 <svcTimerStart+0x16>
    61d4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    61d6:	22fa      	movs	r2, #250	; 0xfa
    61d8:	4b2f      	ldr	r3, [pc, #188]	; (6298 <svcTimerStart+0xd8>)
    61da:	0092      	lsls	r2, r2, #2
    61dc:	681e      	ldr	r6, [r3, #0]
    61de:	0008      	movs	r0, r1
    61e0:	2300      	movs	r3, #0
    61e2:	2100      	movs	r1, #0
    61e4:	f7fe fdba 	bl	4d5c <__aeabi_lmul>
    61e8:	2700      	movs	r7, #0
    61ea:	0002      	movs	r2, r0
    61ec:	000b      	movs	r3, r1
    61ee:	2001      	movs	r0, #1
    61f0:	4240      	negs	r0, r0
    61f2:	17c1      	asrs	r1, r0, #31
    61f4:	1980      	adds	r0, r0, r6
    61f6:	4179      	adcs	r1, r7
    61f8:	1880      	adds	r0, r0, r2
    61fa:	4159      	adcs	r1, r3
    61fc:	003b      	movs	r3, r7
    61fe:	0032      	movs	r2, r6
    6200:	f7fe fd8c 	bl	4d1c <__aeabi_uldivmod>
    6204:	7923      	ldrb	r3, [r4, #4]
    6206:	2b01      	cmp	r3, #1
    6208:	d011      	beq.n	622e <svcTimerStart+0x6e>
    620a:	2b02      	cmp	r3, #2
    620c:	d10d      	bne.n	622a <svcTimerStart+0x6a>
    620e:	4d23      	ldr	r5, [pc, #140]	; (629c <svcTimerStart+0xdc>)
    6210:	6829      	ldr	r1, [r5, #0]
    6212:	2900      	cmp	r1, #0
    6214:	d009      	beq.n	622a <svcTimerStart+0x6a>
    6216:	428c      	cmp	r4, r1
    6218:	d03a      	beq.n	6290 <svcTimerStart+0xd0>
    621a:	000a      	movs	r2, r1
    621c:	e002      	b.n	6224 <svcTimerStart+0x64>
    621e:	429c      	cmp	r4, r3
    6220:	d028      	beq.n	6274 <svcTimerStart+0xb4>
    6222:	001a      	movs	r2, r3
    6224:	6813      	ldr	r3, [r2, #0]
    6226:	2b00      	cmp	r3, #0
    6228:	d1f9      	bne.n	621e <svcTimerStart+0x5e>
    622a:	2081      	movs	r0, #129	; 0x81
    622c:	e7d2      	b.n	61d4 <svcTimerStart+0x14>
    622e:	2302      	movs	r3, #2
    6230:	4d1a      	ldr	r5, [pc, #104]	; (629c <svcTimerStart+0xdc>)
    6232:	7123      	strb	r3, [r4, #4]
    6234:	6829      	ldr	r1, [r5, #0]
    6236:	60e0      	str	r0, [r4, #12]
    6238:	2900      	cmp	r1, #0
    623a:	d00b      	beq.n	6254 <svcTimerStart+0x94>
    623c:	688a      	ldr	r2, [r1, #8]
    623e:	4290      	cmp	r0, r2
    6240:	d204      	bcs.n	624c <svcTimerStart+0x8c>
    6242:	e00f      	b.n	6264 <svcTimerStart+0xa4>
    6244:	689a      	ldr	r2, [r3, #8]
    6246:	4282      	cmp	r2, r0
    6248:	d80e      	bhi.n	6268 <svcTimerStart+0xa8>
    624a:	0019      	movs	r1, r3
    624c:	680b      	ldr	r3, [r1, #0]
    624e:	1a80      	subs	r0, r0, r2
    6250:	2b00      	cmp	r3, #0
    6252:	d1f7      	bne.n	6244 <svcTimerStart+0x84>
    6254:	2300      	movs	r3, #0
    6256:	60a0      	str	r0, [r4, #8]
    6258:	6023      	str	r3, [r4, #0]
    625a:	2900      	cmp	r1, #0
    625c:	d015      	beq.n	628a <svcTimerStart+0xca>
    625e:	600c      	str	r4, [r1, #0]
    6260:	2000      	movs	r0, #0
    6262:	e7b7      	b.n	61d4 <svcTimerStart+0x14>
    6264:	000b      	movs	r3, r1
    6266:	2100      	movs	r1, #0
    6268:	60a0      	str	r0, [r4, #8]
    626a:	689a      	ldr	r2, [r3, #8]
    626c:	6023      	str	r3, [r4, #0]
    626e:	1a10      	subs	r0, r2, r0
    6270:	6098      	str	r0, [r3, #8]
    6272:	e7f2      	b.n	625a <svcTimerStart+0x9a>
    6274:	6823      	ldr	r3, [r4, #0]
    6276:	6013      	str	r3, [r2, #0]
    6278:	6823      	ldr	r3, [r4, #0]
    627a:	2b00      	cmp	r3, #0
    627c:	d0dc      	beq.n	6238 <svcTimerStart+0x78>
    627e:	68a6      	ldr	r6, [r4, #8]
    6280:	689a      	ldr	r2, [r3, #8]
    6282:	46b4      	mov	ip, r6
    6284:	4462      	add	r2, ip
    6286:	609a      	str	r2, [r3, #8]
    6288:	e7d6      	b.n	6238 <svcTimerStart+0x78>
    628a:	602c      	str	r4, [r5, #0]
    628c:	2000      	movs	r0, #0
    628e:	e7a1      	b.n	61d4 <svcTimerStart+0x14>
    6290:	6823      	ldr	r3, [r4, #0]
    6292:	602b      	str	r3, [r5, #0]
    6294:	0019      	movs	r1, r3
    6296:	e7f0      	b.n	627a <svcTimerStart+0xba>
    6298:	00008b70 	.word	0x00008b70
    629c:	2000607c 	.word	0x2000607c

000062a0 <svcTimerStop>:
    62a0:	0003      	movs	r3, r0
    62a2:	2080      	movs	r0, #128	; 0x80
    62a4:	079a      	lsls	r2, r3, #30
    62a6:	d105      	bne.n	62b4 <svcTimerStop+0x14>
    62a8:	2b00      	cmp	r3, #0
    62aa:	d003      	beq.n	62b4 <svcTimerStop+0x14>
    62ac:	791a      	ldrb	r2, [r3, #4]
    62ae:	2a02      	cmp	r2, #2
    62b0:	d001      	beq.n	62b6 <svcTimerStop+0x16>
    62b2:	2081      	movs	r0, #129	; 0x81
    62b4:	4770      	bx	lr
    62b6:	2201      	movs	r2, #1
    62b8:	480e      	ldr	r0, [pc, #56]	; (62f4 <svcTimerStop+0x54>)
    62ba:	711a      	strb	r2, [r3, #4]
    62bc:	6801      	ldr	r1, [r0, #0]
    62be:	2900      	cmp	r1, #0
    62c0:	d0f7      	beq.n	62b2 <svcTimerStop+0x12>
    62c2:	428b      	cmp	r3, r1
    62c4:	d105      	bne.n	62d2 <svcTimerStop+0x32>
    62c6:	681a      	ldr	r2, [r3, #0]
    62c8:	6002      	str	r2, [r0, #0]
    62ca:	e009      	b.n	62e0 <svcTimerStop+0x40>
    62cc:	4293      	cmp	r3, r2
    62ce:	d004      	beq.n	62da <svcTimerStop+0x3a>
    62d0:	0011      	movs	r1, r2
    62d2:	680a      	ldr	r2, [r1, #0]
    62d4:	2a00      	cmp	r2, #0
    62d6:	d1f9      	bne.n	62cc <svcTimerStop+0x2c>
    62d8:	e7eb      	b.n	62b2 <svcTimerStop+0x12>
    62da:	681a      	ldr	r2, [r3, #0]
    62dc:	600a      	str	r2, [r1, #0]
    62de:	681a      	ldr	r2, [r3, #0]
    62e0:	2a00      	cmp	r2, #0
    62e2:	d004      	beq.n	62ee <svcTimerStop+0x4e>
    62e4:	6891      	ldr	r1, [r2, #8]
    62e6:	689b      	ldr	r3, [r3, #8]
    62e8:	468c      	mov	ip, r1
    62ea:	4463      	add	r3, ip
    62ec:	6093      	str	r3, [r2, #8]
    62ee:	2000      	movs	r0, #0
    62f0:	e7e0      	b.n	62b4 <svcTimerStop+0x14>
    62f2:	46c0      	nop			; (mov r8, r8)
    62f4:	2000607c 	.word	0x2000607c

000062f8 <svcTimerDelete>:
    62f8:	0002      	movs	r2, r0
    62fa:	2080      	movs	r0, #128	; 0x80
    62fc:	0793      	lsls	r3, r2, #30
    62fe:	d117      	bne.n	6330 <svcTimerDelete+0x38>
    6300:	2a00      	cmp	r2, #0
    6302:	d015      	beq.n	6330 <svcTimerDelete+0x38>
    6304:	7913      	ldrb	r3, [r2, #4]
    6306:	2b01      	cmp	r3, #1
    6308:	d00f      	beq.n	632a <svcTimerDelete+0x32>
    630a:	2081      	movs	r0, #129	; 0x81
    630c:	2b02      	cmp	r3, #2
    630e:	d10f      	bne.n	6330 <svcTimerDelete+0x38>
    6310:	4810      	ldr	r0, [pc, #64]	; (6354 <svcTimerDelete+0x5c>)
    6312:	6801      	ldr	r1, [r0, #0]
    6314:	2900      	cmp	r1, #0
    6316:	d008      	beq.n	632a <svcTimerDelete+0x32>
    6318:	428a      	cmp	r2, r1
    631a:	d103      	bne.n	6324 <svcTimerDelete+0x2c>
    631c:	e017      	b.n	634e <svcTimerDelete+0x56>
    631e:	429a      	cmp	r2, r3
    6320:	d007      	beq.n	6332 <svcTimerDelete+0x3a>
    6322:	0019      	movs	r1, r3
    6324:	680b      	ldr	r3, [r1, #0]
    6326:	2b00      	cmp	r3, #0
    6328:	d1f9      	bne.n	631e <svcTimerDelete+0x26>
    632a:	2300      	movs	r3, #0
    632c:	2000      	movs	r0, #0
    632e:	7113      	strb	r3, [r2, #4]
    6330:	4770      	bx	lr
    6332:	6813      	ldr	r3, [r2, #0]
    6334:	600b      	str	r3, [r1, #0]
    6336:	6813      	ldr	r3, [r2, #0]
    6338:	2b00      	cmp	r3, #0
    633a:	d0f6      	beq.n	632a <svcTimerDelete+0x32>
    633c:	6890      	ldr	r0, [r2, #8]
    633e:	6899      	ldr	r1, [r3, #8]
    6340:	4684      	mov	ip, r0
    6342:	4461      	add	r1, ip
    6344:	6099      	str	r1, [r3, #8]
    6346:	2300      	movs	r3, #0
    6348:	2000      	movs	r0, #0
    634a:	7113      	strb	r3, [r2, #4]
    634c:	e7f0      	b.n	6330 <svcTimerDelete+0x38>
    634e:	6813      	ldr	r3, [r2, #0]
    6350:	6003      	str	r3, [r0, #0]
    6352:	e7f1      	b.n	6338 <svcTimerDelete+0x40>
    6354:	2000607c 	.word	0x2000607c

00006358 <svcTimerCall>:
    6358:	0003      	movs	r3, r0
    635a:	0782      	lsls	r2, r0, #30
    635c:	d105      	bne.n	636a <svcTimerCall+0x12>
    635e:	2800      	cmp	r0, #0
    6360:	d006      	beq.n	6370 <svcTimerCall+0x18>
    6362:	6942      	ldr	r2, [r0, #20]
    6364:	6919      	ldr	r1, [r3, #16]
    6366:	6810      	ldr	r0, [r2, #0]
    6368:	4770      	bx	lr
    636a:	2000      	movs	r0, #0
    636c:	2100      	movs	r1, #0
    636e:	e7fb      	b.n	6368 <svcTimerCall+0x10>
    6370:	2000      	movs	r0, #0
    6372:	0001      	movs	r1, r0
    6374:	e7f8      	b.n	6368 <svcTimerCall+0x10>
    6376:	46c0      	nop			; (mov r8, r8)

00006378 <sysTimerTick>:
    6378:	b5f0      	push	{r4, r5, r6, r7, lr}
    637a:	464e      	mov	r6, r9
    637c:	4657      	mov	r7, sl
    637e:	4645      	mov	r5, r8
    6380:	b4e0      	push	{r5, r6, r7}
    6382:	4e2a      	ldr	r6, [pc, #168]	; (642c <sysTimerTick+0xb4>)
    6384:	6834      	ldr	r4, [r6, #0]
    6386:	2c00      	cmp	r4, #0
    6388:	d028      	beq.n	63dc <sysTimerTick+0x64>
    638a:	2200      	movs	r2, #0
    638c:	68a3      	ldr	r3, [r4, #8]
    638e:	4f28      	ldr	r7, [pc, #160]	; (6430 <sysTimerTick+0xb8>)
    6390:	3b01      	subs	r3, #1
    6392:	60a3      	str	r3, [r4, #8]
    6394:	4690      	mov	r8, r2
    6396:	2b00      	cmp	r3, #0
    6398:	d120      	bne.n	63dc <sysTimerTick+0x64>
    639a:	6825      	ldr	r5, [r4, #0]
    639c:	683b      	ldr	r3, [r7, #0]
    639e:	6035      	str	r5, [r6, #0]
    63a0:	4699      	mov	r9, r3
    63a2:	2b00      	cmp	r3, #0
    63a4:	d003      	beq.n	63ae <sysTimerTick+0x36>
    63a6:	781b      	ldrb	r3, [r3, #0]
    63a8:	469a      	mov	sl, r3
    63aa:	2b01      	cmp	r3, #1
    63ac:	d002      	beq.n	63b4 <sysTimerTick+0x3c>
    63ae:	2004      	movs	r0, #4
    63b0:	f7fb fb30 	bl	1a14 <os_error>
    63b4:	4648      	mov	r0, r9
    63b6:	f001 fb63 	bl	7a80 <rt_mbx_check>
    63ba:	2800      	cmp	r0, #0
    63bc:	d0f7      	beq.n	63ae <sysTimerTick+0x36>
    63be:	0021      	movs	r1, r4
    63c0:	4648      	mov	r0, r9
    63c2:	f001 fb61 	bl	7a88 <isr_mbx_send>
    63c6:	7963      	ldrb	r3, [r4, #5]
    63c8:	2b01      	cmp	r3, #1
    63ca:	d00c      	beq.n	63e6 <sysTimerTick+0x6e>
    63cc:	4653      	mov	r3, sl
    63ce:	7123      	strb	r3, [r4, #4]
    63d0:	2d00      	cmp	r5, #0
    63d2:	d003      	beq.n	63dc <sysTimerTick+0x64>
    63d4:	68ab      	ldr	r3, [r5, #8]
    63d6:	002c      	movs	r4, r5
    63d8:	2b00      	cmp	r3, #0
    63da:	d0de      	beq.n	639a <sysTimerTick+0x22>
    63dc:	bc1c      	pop	{r2, r3, r4}
    63de:	4690      	mov	r8, r2
    63e0:	4699      	mov	r9, r3
    63e2:	46a2      	mov	sl, r4
    63e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    63e6:	6830      	ldr	r0, [r6, #0]
    63e8:	68e2      	ldr	r2, [r4, #12]
    63ea:	2800      	cmp	r0, #0
    63ec:	d00b      	beq.n	6406 <sysTimerTick+0x8e>
    63ee:	6881      	ldr	r1, [r0, #8]
    63f0:	4291      	cmp	r1, r2
    63f2:	d904      	bls.n	63fe <sysTimerTick+0x86>
    63f4:	e00e      	b.n	6414 <sysTimerTick+0x9c>
    63f6:	6899      	ldr	r1, [r3, #8]
    63f8:	4291      	cmp	r1, r2
    63fa:	d80d      	bhi.n	6418 <sysTimerTick+0xa0>
    63fc:	0018      	movs	r0, r3
    63fe:	6803      	ldr	r3, [r0, #0]
    6400:	1a52      	subs	r2, r2, r1
    6402:	2b00      	cmp	r3, #0
    6404:	d1f7      	bne.n	63f6 <sysTimerTick+0x7e>
    6406:	4643      	mov	r3, r8
    6408:	60a2      	str	r2, [r4, #8]
    640a:	6023      	str	r3, [r4, #0]
    640c:	2800      	cmp	r0, #0
    640e:	d00a      	beq.n	6426 <sysTimerTick+0xae>
    6410:	6004      	str	r4, [r0, #0]
    6412:	e7dd      	b.n	63d0 <sysTimerTick+0x58>
    6414:	0003      	movs	r3, r0
    6416:	2000      	movs	r0, #0
    6418:	60a2      	str	r2, [r4, #8]
    641a:	6899      	ldr	r1, [r3, #8]
    641c:	6023      	str	r3, [r4, #0]
    641e:	1a8a      	subs	r2, r1, r2
    6420:	609a      	str	r2, [r3, #8]
    6422:	2800      	cmp	r0, #0
    6424:	d1f4      	bne.n	6410 <sysTimerTick+0x98>
    6426:	6034      	str	r4, [r6, #0]
    6428:	e7d2      	b.n	63d0 <sysTimerTick+0x58>
    642a:	46c0      	nop			; (mov r8, r8)
    642c:	2000607c 	.word	0x2000607c
    6430:	20004d10 	.word	0x20004d10

00006434 <sysUserTimerWakeupTime>:
    6434:	4b04      	ldr	r3, [pc, #16]	; (6448 <sysUserTimerWakeupTime+0x14>)
    6436:	681b      	ldr	r3, [r3, #0]
    6438:	2b00      	cmp	r3, #0
    643a:	d001      	beq.n	6440 <sysUserTimerWakeupTime+0xc>
    643c:	6898      	ldr	r0, [r3, #8]
    643e:	4770      	bx	lr
    6440:	2001      	movs	r0, #1
    6442:	4240      	negs	r0, r0
    6444:	e7fb      	b.n	643e <sysUserTimerWakeupTime+0xa>
    6446:	46c0      	nop			; (mov r8, r8)
    6448:	2000607c 	.word	0x2000607c

0000644c <sysUserTimerUpdate>:
    644c:	b570      	push	{r4, r5, r6, lr}
    644e:	4d0e      	ldr	r5, [pc, #56]	; (6488 <sysUserTimerUpdate+0x3c>)
    6450:	0004      	movs	r4, r0
    6452:	682b      	ldr	r3, [r5, #0]
    6454:	2b00      	cmp	r3, #0
    6456:	d012      	beq.n	647e <sysUserTimerUpdate+0x32>
    6458:	2800      	cmp	r0, #0
    645a:	d010      	beq.n	647e <sysUserTimerUpdate+0x32>
    645c:	689a      	ldr	r2, [r3, #8]
    645e:	2601      	movs	r6, #1
    6460:	4290      	cmp	r0, r2
    6462:	d205      	bcs.n	6470 <sysUserTimerUpdate+0x24>
    6464:	e00c      	b.n	6480 <sysUserTimerUpdate+0x34>
    6466:	2c00      	cmp	r4, #0
    6468:	d009      	beq.n	647e <sysUserTimerUpdate+0x32>
    646a:	689a      	ldr	r2, [r3, #8]
    646c:	42a2      	cmp	r2, r4
    646e:	d807      	bhi.n	6480 <sysUserTimerUpdate+0x34>
    6470:	609e      	str	r6, [r3, #8]
    6472:	1aa4      	subs	r4, r4, r2
    6474:	f7ff ff80 	bl	6378 <sysTimerTick>
    6478:	682b      	ldr	r3, [r5, #0]
    647a:	2b00      	cmp	r3, #0
    647c:	d1f3      	bne.n	6466 <sysUserTimerUpdate+0x1a>
    647e:	bd70      	pop	{r4, r5, r6, pc}
    6480:	1b14      	subs	r4, r2, r4
    6482:	609c      	str	r4, [r3, #8]
    6484:	e7fb      	b.n	647e <sysUserTimerUpdate+0x32>
    6486:	46c0      	nop			; (mov r8, r8)
    6488:	2000607c 	.word	0x2000607c

0000648c <osTimerCreate>:
    648c:	b5b0      	push	{r4, r5, r7, lr}
    648e:	f3ef 8405 	mrs	r4, IPSR
    6492:	2c00      	cmp	r4, #0
    6494:	d124      	bne.n	64e0 <osTimerCreate+0x54>
    6496:	f3ef 8414 	mrs	r4, CONTROL
    649a:	2501      	movs	r5, #1
    649c:	4225      	tst	r5, r4
    649e:	d003      	beq.n	64a8 <osTimerCreate+0x1c>
    64a0:	4f12      	ldr	r7, [pc, #72]	; (64ec <osTimerCreate+0x60>)
    64a2:	46bc      	mov	ip, r7
    64a4:	df00      	svc	0
    64a6:	bdb0      	pop	{r4, r5, r7, pc}
    64a8:	4c0e      	ldr	r4, [pc, #56]	; (64e4 <osTimerCreate+0x58>)
    64aa:	7824      	ldrb	r4, [r4, #0]
    64ac:	2c00      	cmp	r4, #0
    64ae:	d1f7      	bne.n	64a0 <osTimerCreate+0x14>
    64b0:	2800      	cmp	r0, #0
    64b2:	d015      	beq.n	64e0 <osTimerCreate+0x54>
    64b4:	6803      	ldr	r3, [r0, #0]
    64b6:	2b00      	cmp	r3, #0
    64b8:	d012      	beq.n	64e0 <osTimerCreate+0x54>
    64ba:	6843      	ldr	r3, [r0, #4]
    64bc:	2b00      	cmp	r3, #0
    64be:	d00f      	beq.n	64e0 <osTimerCreate+0x54>
    64c0:	2901      	cmp	r1, #1
    64c2:	d80d      	bhi.n	64e0 <osTimerCreate+0x54>
    64c4:	4c08      	ldr	r4, [pc, #32]	; (64e8 <osTimerCreate+0x5c>)
    64c6:	6824      	ldr	r4, [r4, #0]
    64c8:	2c00      	cmp	r4, #0
    64ca:	d009      	beq.n	64e0 <osTimerCreate+0x54>
    64cc:	791c      	ldrb	r4, [r3, #4]
    64ce:	2c00      	cmp	r4, #0
    64d0:	d106      	bne.n	64e0 <osTimerCreate+0x54>
    64d2:	6158      	str	r0, [r3, #20]
    64d4:	601c      	str	r4, [r3, #0]
    64d6:	711d      	strb	r5, [r3, #4]
    64d8:	7159      	strb	r1, [r3, #5]
    64da:	611a      	str	r2, [r3, #16]
    64dc:	0018      	movs	r0, r3
    64de:	e7e2      	b.n	64a6 <osTimerCreate+0x1a>
    64e0:	2000      	movs	r0, #0
    64e2:	e7e0      	b.n	64a6 <osTimerCreate+0x1a>
    64e4:	20006079 	.word	0x20006079
    64e8:	20004cec 	.word	0x20004cec
    64ec:	00006185 	.word	0x00006185

000064f0 <osTimerStart>:
    64f0:	b5b0      	push	{r4, r5, r7, lr}
    64f2:	0005      	movs	r5, r0
    64f4:	f3ef 8405 	mrs	r4, IPSR
    64f8:	2082      	movs	r0, #130	; 0x82
    64fa:	2c00      	cmp	r4, #0
    64fc:	d000      	beq.n	6500 <osTimerStart+0x10>
    64fe:	bdb0      	pop	{r4, r5, r7, pc}
    6500:	0028      	movs	r0, r5
    6502:	4f02      	ldr	r7, [pc, #8]	; (650c <osTimerStart+0x1c>)
    6504:	46bc      	mov	ip, r7
    6506:	df00      	svc	0
    6508:	e7f9      	b.n	64fe <osTimerStart+0xe>
    650a:	0000      	.short	0x0000
    650c:	000061c1 	.word	0x000061c1

00006510 <osTimerStop>:
    6510:	b5b0      	push	{r4, r5, r7, lr}
    6512:	0005      	movs	r5, r0
    6514:	f3ef 8405 	mrs	r4, IPSR
    6518:	2082      	movs	r0, #130	; 0x82
    651a:	2c00      	cmp	r4, #0
    651c:	d000      	beq.n	6520 <osTimerStop+0x10>
    651e:	bdb0      	pop	{r4, r5, r7, pc}
    6520:	0028      	movs	r0, r5
    6522:	4f02      	ldr	r7, [pc, #8]	; (652c <osTimerStop+0x1c>)
    6524:	46bc      	mov	ip, r7
    6526:	df00      	svc	0
    6528:	e7f9      	b.n	651e <osTimerStop+0xe>
    652a:	0000      	.short	0x0000
    652c:	000062a1 	.word	0x000062a1

00006530 <osTimerDelete>:
    6530:	b5b0      	push	{r4, r5, r7, lr}
    6532:	0005      	movs	r5, r0
    6534:	f3ef 8405 	mrs	r4, IPSR
    6538:	2082      	movs	r0, #130	; 0x82
    653a:	2c00      	cmp	r4, #0
    653c:	d000      	beq.n	6540 <osTimerDelete+0x10>
    653e:	bdb0      	pop	{r4, r5, r7, pc}
    6540:	0028      	movs	r0, r5
    6542:	4f02      	ldr	r7, [pc, #8]	; (654c <osTimerDelete+0x1c>)
    6544:	46bc      	mov	ip, r7
    6546:	df00      	svc	0
    6548:	e7f9      	b.n	653e <osTimerDelete+0xe>
    654a:	0000      	.short	0x0000
    654c:	000062f9 	.word	0x000062f9

00006550 <osTimerCall>:
    6550:	b590      	push	{r4, r7, lr}
    6552:	0004      	movs	r4, r0
    6554:	0008      	movs	r0, r1
    6556:	4f03      	ldr	r7, [pc, #12]	; (6564 <osTimerCall+0x14>)
    6558:	46bc      	mov	ip, r7
    655a:	df00      	svc	0
    655c:	6020      	str	r0, [r4, #0]
    655e:	6061      	str	r1, [r4, #4]
    6560:	0020      	movs	r0, r4
    6562:	bd90      	pop	{r4, r7, pc}
    6564:	00006359 	.word	0x00006359

00006568 <osTimerThread>:
    6568:	b5b0      	push	{r4, r5, r7, lr}
    656a:	4d0a      	ldr	r5, [pc, #40]	; (6594 <osTimerThread+0x2c>)
    656c:	6828      	ldr	r0, [r5, #0]
    656e:	f3ef 8105 	mrs	r1, IPSR
    6572:	2900      	cmp	r1, #0
    6574:	d1fb      	bne.n	656e <osTimerThread+0x6>
    6576:	3901      	subs	r1, #1
    6578:	4f07      	ldr	r7, [pc, #28]	; (6598 <osTimerThread+0x30>)
    657a:	46bc      	mov	ip, r7
    657c:	df00      	svc	0
    657e:	2810      	cmp	r0, #16
    6580:	d1f4      	bne.n	656c <osTimerThread+0x4>
    6582:	0008      	movs	r0, r1
    6584:	4f05      	ldr	r7, [pc, #20]	; (659c <osTimerThread+0x34>)
    6586:	46bc      	mov	ip, r7
    6588:	df00      	svc	0
    658a:	1e04      	subs	r4, r0, #0
    658c:	d0ee      	beq.n	656c <osTimerThread+0x4>
    658e:	0008      	movs	r0, r1
    6590:	47a0      	blx	r4
    6592:	e7eb      	b.n	656c <osTimerThread+0x4>
    6594:	20004d10 	.word	0x20004d10
    6598:	00006d49 	.word	0x00006d49
    659c:	00006359 	.word	0x00006359

000065a0 <svcSignalSet>:
    65a0:	b510      	push	{r4, lr}
    65a2:	2800      	cmp	r0, #0
    65a4:	d00e      	beq.n	65c4 <svcSignalSet+0x24>
    65a6:	0783      	lsls	r3, r0, #30
    65a8:	d10c      	bne.n	65c4 <svcSignalSet+0x24>
    65aa:	7803      	ldrb	r3, [r0, #0]
    65ac:	2b00      	cmp	r3, #0
    65ae:	d109      	bne.n	65c4 <svcSignalSet+0x24>
    65b0:	0c0b      	lsrs	r3, r1, #16
    65b2:	d107      	bne.n	65c4 <svcSignalSet+0x24>
    65b4:	78c3      	ldrb	r3, [r0, #3]
    65b6:	8b04      	ldrh	r4, [r0, #24]
    65b8:	b288      	uxth	r0, r1
    65ba:	0019      	movs	r1, r3
    65bc:	f001 fcbe 	bl	7f3c <rt_evt_set>
    65c0:	0020      	movs	r0, r4
    65c2:	e001      	b.n	65c8 <svcSignalSet+0x28>
    65c4:	2080      	movs	r0, #128	; 0x80
    65c6:	0600      	lsls	r0, r0, #24
    65c8:	bd10      	pop	{r4, pc}
    65ca:	46c0      	nop			; (mov r8, r8)

000065cc <svcSignalClear>:
    65cc:	b510      	push	{r4, lr}
    65ce:	2800      	cmp	r0, #0
    65d0:	d00e      	beq.n	65f0 <svcSignalClear+0x24>
    65d2:	0783      	lsls	r3, r0, #30
    65d4:	d10c      	bne.n	65f0 <svcSignalClear+0x24>
    65d6:	7803      	ldrb	r3, [r0, #0]
    65d8:	2b00      	cmp	r3, #0
    65da:	d109      	bne.n	65f0 <svcSignalClear+0x24>
    65dc:	0c0b      	lsrs	r3, r1, #16
    65de:	d107      	bne.n	65f0 <svcSignalClear+0x24>
    65e0:	78c3      	ldrb	r3, [r0, #3]
    65e2:	8b04      	ldrh	r4, [r0, #24]
    65e4:	b288      	uxth	r0, r1
    65e6:	0019      	movs	r1, r3
    65e8:	f001 fcd4 	bl	7f94 <rt_evt_clr>
    65ec:	0020      	movs	r0, r4
    65ee:	e001      	b.n	65f4 <svcSignalClear+0x28>
    65f0:	2080      	movs	r0, #128	; 0x80
    65f2:	0600      	lsls	r0, r0, #24
    65f4:	bd10      	pop	{r4, pc}
    65f6:	46c0      	nop			; (mov r8, r8)

000065f8 <svcSignalWait>:
    65f8:	b5f0      	push	{r4, r5, r6, r7, lr}
    65fa:	0c04      	lsrs	r4, r0, #16
    65fc:	b083      	sub	sp, #12
    65fe:	0006      	movs	r6, r0
    6600:	000d      	movs	r5, r1
    6602:	0424      	lsls	r4, r4, #16
    6604:	d149      	bne.n	669a <svcSignalWait+0xa2>
    6606:	2800      	cmp	r0, #0
    6608:	d026      	beq.n	6658 <svcSignalWait+0x60>
    660a:	b287      	uxth	r7, r0
    660c:	2100      	movs	r1, #0
    660e:	2d00      	cmp	r5, #0
    6610:	d013      	beq.n	663a <svcSignalWait+0x42>
    6612:	1c6b      	adds	r3, r5, #1
    6614:	d05c      	beq.n	66d0 <svcSignalWait+0xd8>
    6616:	4b2f      	ldr	r3, [pc, #188]	; (66d4 <svcSignalWait+0xdc>)
    6618:	429d      	cmp	r5, r3
    661a:	d84f      	bhi.n	66bc <svcSignalWait+0xc4>
    661c:	20fa      	movs	r0, #250	; 0xfa
    661e:	4b2e      	ldr	r3, [pc, #184]	; (66d8 <svcSignalWait+0xe0>)
    6620:	0080      	lsls	r0, r0, #2
    6622:	4368      	muls	r0, r5
    6624:	681b      	ldr	r3, [r3, #0]
    6626:	9301      	str	r3, [sp, #4]
    6628:	3b01      	subs	r3, #1
    662a:	18c0      	adds	r0, r0, r3
    662c:	9901      	ldr	r1, [sp, #4]
    662e:	f7fe f955 	bl	48dc <__aeabi_uidiv>
    6632:	4b2a      	ldr	r3, [pc, #168]	; (66dc <svcSignalWait+0xe4>)
    6634:	0019      	movs	r1, r3
    6636:	4298      	cmp	r0, r3
    6638:	d946      	bls.n	66c8 <svcSignalWait+0xd0>
    663a:	2201      	movs	r2, #1
    663c:	0038      	movs	r0, r7
    663e:	f001 fc59 	bl	7ef4 <rt_evt_wait>
    6642:	2802      	cmp	r0, #2
    6644:	d035      	beq.n	66b2 <svcSignalWait+0xba>
    6646:	0028      	movs	r0, r5
    6648:	1e45      	subs	r5, r0, #1
    664a:	41a8      	sbcs	r0, r5
    664c:	0180      	lsls	r0, r0, #6
    664e:	0021      	movs	r1, r4
    6650:	2200      	movs	r2, #0
    6652:	2300      	movs	r3, #0
    6654:	b003      	add	sp, #12
    6656:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6658:	2900      	cmp	r1, #0
    665a:	d021      	beq.n	66a0 <svcSignalWait+0xa8>
    665c:	1c4b      	adds	r3, r1, #1
    665e:	d035      	beq.n	66cc <svcSignalWait+0xd4>
    6660:	4b1c      	ldr	r3, [pc, #112]	; (66d4 <svcSignalWait+0xdc>)
    6662:	4299      	cmp	r1, r3
    6664:	d82c      	bhi.n	66c0 <svcSignalWait+0xc8>
    6666:	20fa      	movs	r0, #250	; 0xfa
    6668:	4b1b      	ldr	r3, [pc, #108]	; (66d8 <svcSignalWait+0xe0>)
    666a:	0080      	lsls	r0, r0, #2
    666c:	4348      	muls	r0, r1
    666e:	681b      	ldr	r3, [r3, #0]
    6670:	9301      	str	r3, [sp, #4]
    6672:	3b01      	subs	r3, #1
    6674:	18c0      	adds	r0, r0, r3
    6676:	9901      	ldr	r1, [sp, #4]
    6678:	f7fe f930 	bl	48dc <__aeabi_uidiv>
    667c:	4b17      	ldr	r3, [pc, #92]	; (66dc <svcSignalWait+0xe4>)
    667e:	0019      	movs	r1, r3
    6680:	4298      	cmp	r0, r3
    6682:	d91f      	bls.n	66c4 <svcSignalWait+0xcc>
    6684:	2200      	movs	r2, #0
    6686:	4816      	ldr	r0, [pc, #88]	; (66e0 <svcSignalWait+0xe8>)
    6688:	f001 fc34 	bl	7ef4 <rt_evt_wait>
    668c:	2802      	cmp	r0, #2
    668e:	d113      	bne.n	66b8 <svcSignalWait+0xc0>
    6690:	4b14      	ldr	r3, [pc, #80]	; (66e4 <svcSignalWait+0xec>)
    6692:	2008      	movs	r0, #8
    6694:	681b      	ldr	r3, [r3, #0]
    6696:	8b5c      	ldrh	r4, [r3, #26]
    6698:	e7d9      	b.n	664e <svcSignalWait+0x56>
    669a:	2086      	movs	r0, #134	; 0x86
    669c:	2100      	movs	r1, #0
    669e:	e7d7      	b.n	6650 <svcSignalWait+0x58>
    66a0:	2200      	movs	r2, #0
    66a2:	2100      	movs	r1, #0
    66a4:	480e      	ldr	r0, [pc, #56]	; (66e0 <svcSignalWait+0xe8>)
    66a6:	f001 fc25 	bl	7ef4 <rt_evt_wait>
    66aa:	2802      	cmp	r0, #2
    66ac:	d0f0      	beq.n	6690 <svcSignalWait+0x98>
    66ae:	2000      	movs	r0, #0
    66b0:	e7cd      	b.n	664e <svcSignalWait+0x56>
    66b2:	0034      	movs	r4, r6
    66b4:	2008      	movs	r0, #8
    66b6:	e7ca      	b.n	664e <svcSignalWait+0x56>
    66b8:	2040      	movs	r0, #64	; 0x40
    66ba:	e7c8      	b.n	664e <svcSignalWait+0x56>
    66bc:	4907      	ldr	r1, [pc, #28]	; (66dc <svcSignalWait+0xe4>)
    66be:	e7bc      	b.n	663a <svcSignalWait+0x42>
    66c0:	4906      	ldr	r1, [pc, #24]	; (66dc <svcSignalWait+0xe4>)
    66c2:	e7df      	b.n	6684 <svcSignalWait+0x8c>
    66c4:	b281      	uxth	r1, r0
    66c6:	e7dd      	b.n	6684 <svcSignalWait+0x8c>
    66c8:	b281      	uxth	r1, r0
    66ca:	e7b6      	b.n	663a <svcSignalWait+0x42>
    66cc:	4904      	ldr	r1, [pc, #16]	; (66e0 <svcSignalWait+0xe8>)
    66ce:	e7d9      	b.n	6684 <svcSignalWait+0x8c>
    66d0:	4903      	ldr	r1, [pc, #12]	; (66e0 <svcSignalWait+0xe8>)
    66d2:	e7b2      	b.n	663a <svcSignalWait+0x42>
    66d4:	003d0900 	.word	0x003d0900
    66d8:	00008b70 	.word	0x00008b70
    66dc:	0000fffe 	.word	0x0000fffe
    66e0:	0000ffff 	.word	0x0000ffff
    66e4:	200060b8 	.word	0x200060b8

000066e8 <isrSignalSet>:
    66e8:	b510      	push	{r4, lr}
    66ea:	2800      	cmp	r0, #0
    66ec:	d00e      	beq.n	670c <isrSignalSet+0x24>
    66ee:	0783      	lsls	r3, r0, #30
    66f0:	d10c      	bne.n	670c <isrSignalSet+0x24>
    66f2:	7803      	ldrb	r3, [r0, #0]
    66f4:	2b00      	cmp	r3, #0
    66f6:	d109      	bne.n	670c <isrSignalSet+0x24>
    66f8:	0c0b      	lsrs	r3, r1, #16
    66fa:	d107      	bne.n	670c <isrSignalSet+0x24>
    66fc:	78c3      	ldrb	r3, [r0, #3]
    66fe:	8b04      	ldrh	r4, [r0, #24]
    6700:	b288      	uxth	r0, r1
    6702:	0019      	movs	r1, r3
    6704:	f001 fc52 	bl	7fac <isr_evt_set>
    6708:	0020      	movs	r0, r4
    670a:	e001      	b.n	6710 <isrSignalSet+0x28>
    670c:	2080      	movs	r0, #128	; 0x80
    670e:	0600      	lsls	r0, r0, #24
    6710:	bd10      	pop	{r4, pc}
    6712:	46c0      	nop			; (mov r8, r8)

00006714 <osSignalSet>:
    6714:	b5b0      	push	{r4, r5, r7, lr}
    6716:	f3ef 8405 	mrs	r4, IPSR
    671a:	2c00      	cmp	r4, #0
    671c:	d103      	bne.n	6726 <osSignalSet+0x12>
    671e:	4f0c      	ldr	r7, [pc, #48]	; (6750 <osSignalSet+0x3c>)
    6720:	46bc      	mov	ip, r7
    6722:	df00      	svc	0
    6724:	bdb0      	pop	{r4, r5, r7, pc}
    6726:	2800      	cmp	r0, #0
    6728:	d00e      	beq.n	6748 <osSignalSet+0x34>
    672a:	0783      	lsls	r3, r0, #30
    672c:	d10c      	bne.n	6748 <osSignalSet+0x34>
    672e:	7803      	ldrb	r3, [r0, #0]
    6730:	2b00      	cmp	r3, #0
    6732:	d109      	bne.n	6748 <osSignalSet+0x34>
    6734:	0c0b      	lsrs	r3, r1, #16
    6736:	d107      	bne.n	6748 <osSignalSet+0x34>
    6738:	78c3      	ldrb	r3, [r0, #3]
    673a:	8b04      	ldrh	r4, [r0, #24]
    673c:	b288      	uxth	r0, r1
    673e:	0019      	movs	r1, r3
    6740:	f001 fc34 	bl	7fac <isr_evt_set>
    6744:	0020      	movs	r0, r4
    6746:	e7ed      	b.n	6724 <osSignalSet+0x10>
    6748:	2080      	movs	r0, #128	; 0x80
    674a:	0600      	lsls	r0, r0, #24
    674c:	e7ea      	b.n	6724 <osSignalSet+0x10>
    674e:	0000      	.short	0x0000
    6750:	000065a1 	.word	0x000065a1

00006754 <osSignalClear>:
    6754:	b590      	push	{r4, r7, lr}
    6756:	f3ef 8405 	mrs	r4, IPSR
    675a:	2c00      	cmp	r4, #0
    675c:	d103      	bne.n	6766 <osSignalClear+0x12>
    675e:	4f03      	ldr	r7, [pc, #12]	; (676c <osSignalClear+0x18>)
    6760:	46bc      	mov	ip, r7
    6762:	df00      	svc	0
    6764:	bd90      	pop	{r4, r7, pc}
    6766:	2080      	movs	r0, #128	; 0x80
    6768:	0600      	lsls	r0, r0, #24
    676a:	e7fb      	b.n	6764 <osSignalClear+0x10>
    676c:	000065cd 	.word	0x000065cd

00006770 <osSignalWait>:
    6770:	b5f0      	push	{r4, r5, r6, r7, lr}
    6772:	0004      	movs	r4, r0
    6774:	f3ef 8505 	mrs	r5, IPSR
    6778:	2d00      	cmp	r5, #0
    677a:	d109      	bne.n	6790 <osSignalWait+0x20>
    677c:	0008      	movs	r0, r1
    677e:	0011      	movs	r1, r2
    6780:	4f05      	ldr	r7, [pc, #20]	; (6798 <osSignalWait+0x28>)
    6782:	46bc      	mov	ip, r7
    6784:	df00      	svc	0
    6786:	6020      	str	r0, [r4, #0]
    6788:	6061      	str	r1, [r4, #4]
    678a:	60a2      	str	r2, [r4, #8]
    678c:	0020      	movs	r0, r4
    678e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6790:	2382      	movs	r3, #130	; 0x82
    6792:	6003      	str	r3, [r0, #0]
    6794:	e7fa      	b.n	678c <osSignalWait+0x1c>
    6796:	0000      	.short	0x0000
    6798:	000065f9 	.word	0x000065f9

0000679c <svcMutexCreate>:
    679c:	b510      	push	{r4, lr}
    679e:	2800      	cmp	r0, #0
    67a0:	d00a      	beq.n	67b8 <svcMutexCreate+0x1c>
    67a2:	6804      	ldr	r4, [r0, #0]
    67a4:	2c00      	cmp	r4, #0
    67a6:	d007      	beq.n	67b8 <svcMutexCreate+0x1c>
    67a8:	7823      	ldrb	r3, [r4, #0]
    67aa:	2b00      	cmp	r3, #0
    67ac:	d104      	bne.n	67b8 <svcMutexCreate+0x1c>
    67ae:	0020      	movs	r0, r4
    67b0:	f000 feb4 	bl	751c <rt_mut_init>
    67b4:	0020      	movs	r0, r4
    67b6:	bd10      	pop	{r4, pc}
    67b8:	2000      	movs	r0, #0
    67ba:	e7fc      	b.n	67b6 <svcMutexCreate+0x1a>

000067bc <svcMutexWait>:
    67bc:	b510      	push	{r4, lr}
    67be:	0004      	movs	r4, r0
    67c0:	b082      	sub	sp, #8
    67c2:	2080      	movs	r0, #128	; 0x80
    67c4:	07a3      	lsls	r3, r4, #30
    67c6:	d104      	bne.n	67d2 <svcMutexWait+0x16>
    67c8:	2c00      	cmp	r4, #0
    67ca:	d002      	beq.n	67d2 <svcMutexWait+0x16>
    67cc:	7823      	ldrb	r3, [r4, #0]
    67ce:	2b03      	cmp	r3, #3
    67d0:	d001      	beq.n	67d6 <svcMutexWait+0x1a>
    67d2:	b002      	add	sp, #8
    67d4:	bd10      	pop	{r4, pc}
    67d6:	2900      	cmp	r1, #0
    67d8:	d01b      	beq.n	6812 <svcMutexWait+0x56>
    67da:	1c4b      	adds	r3, r1, #1
    67dc:	d025      	beq.n	682a <svcMutexWait+0x6e>
    67de:	4b16      	ldr	r3, [pc, #88]	; (6838 <svcMutexWait+0x7c>)
    67e0:	4299      	cmp	r1, r3
    67e2:	d824      	bhi.n	682e <svcMutexWait+0x72>
    67e4:	20fa      	movs	r0, #250	; 0xfa
    67e6:	4b15      	ldr	r3, [pc, #84]	; (683c <svcMutexWait+0x80>)
    67e8:	0080      	lsls	r0, r0, #2
    67ea:	4341      	muls	r1, r0
    67ec:	681b      	ldr	r3, [r3, #0]
    67ee:	9301      	str	r3, [sp, #4]
    67f0:	3b01      	subs	r3, #1
    67f2:	1858      	adds	r0, r3, r1
    67f4:	9901      	ldr	r1, [sp, #4]
    67f6:	f7fe f871 	bl	48dc <__aeabi_uidiv>
    67fa:	4b11      	ldr	r3, [pc, #68]	; (6840 <svcMutexWait+0x84>)
    67fc:	0019      	movs	r1, r3
    67fe:	4298      	cmp	r0, r3
    6800:	d917      	bls.n	6832 <svcMutexWait+0x76>
    6802:	0020      	movs	r0, r4
    6804:	f000 ff86 	bl	7714 <rt_mut_wait>
    6808:	0003      	movs	r3, r0
    680a:	2801      	cmp	r0, #1
    680c:	d108      	bne.n	6820 <svcMutexWait+0x64>
    680e:	20c1      	movs	r0, #193	; 0xc1
    6810:	e7df      	b.n	67d2 <svcMutexWait+0x16>
    6812:	2100      	movs	r1, #0
    6814:	0020      	movs	r0, r4
    6816:	f000 ff7d 	bl	7714 <rt_mut_wait>
    681a:	0003      	movs	r3, r0
    681c:	2801      	cmp	r0, #1
    681e:	d002      	beq.n	6826 <svcMutexWait+0x6a>
    6820:	2000      	movs	r0, #0
    6822:	2bff      	cmp	r3, #255	; 0xff
    6824:	d1d5      	bne.n	67d2 <svcMutexWait+0x16>
    6826:	2081      	movs	r0, #129	; 0x81
    6828:	e7d3      	b.n	67d2 <svcMutexWait+0x16>
    682a:	4906      	ldr	r1, [pc, #24]	; (6844 <svcMutexWait+0x88>)
    682c:	e7e9      	b.n	6802 <svcMutexWait+0x46>
    682e:	4904      	ldr	r1, [pc, #16]	; (6840 <svcMutexWait+0x84>)
    6830:	e7e7      	b.n	6802 <svcMutexWait+0x46>
    6832:	b281      	uxth	r1, r0
    6834:	e7e5      	b.n	6802 <svcMutexWait+0x46>
    6836:	46c0      	nop			; (mov r8, r8)
    6838:	003d0900 	.word	0x003d0900
    683c:	00008b70 	.word	0x00008b70
    6840:	0000fffe 	.word	0x0000fffe
    6844:	0000ffff 	.word	0x0000ffff

00006848 <svcMutexRelease>:
    6848:	b510      	push	{r4, lr}
    684a:	2380      	movs	r3, #128	; 0x80
    684c:	0782      	lsls	r2, r0, #30
    684e:	d104      	bne.n	685a <svcMutexRelease+0x12>
    6850:	2800      	cmp	r0, #0
    6852:	d002      	beq.n	685a <svcMutexRelease+0x12>
    6854:	7802      	ldrb	r2, [r0, #0]
    6856:	2a03      	cmp	r2, #3
    6858:	d001      	beq.n	685e <svcMutexRelease+0x16>
    685a:	0018      	movs	r0, r3
    685c:	bd10      	pop	{r4, pc}
    685e:	f000 fed5 	bl	760c <rt_mut_release>
    6862:	2381      	movs	r3, #129	; 0x81
    6864:	28ff      	cmp	r0, #255	; 0xff
    6866:	d0f8      	beq.n	685a <svcMutexRelease+0x12>
    6868:	2300      	movs	r3, #0
    686a:	e7f6      	b.n	685a <svcMutexRelease+0x12>

0000686c <svcMutexDelete>:
    686c:	b510      	push	{r4, lr}
    686e:	2380      	movs	r3, #128	; 0x80
    6870:	0782      	lsls	r2, r0, #30
    6872:	d104      	bne.n	687e <svcMutexDelete+0x12>
    6874:	2800      	cmp	r0, #0
    6876:	d002      	beq.n	687e <svcMutexDelete+0x12>
    6878:	7802      	ldrb	r2, [r0, #0]
    687a:	2a03      	cmp	r2, #3
    687c:	d001      	beq.n	6882 <svcMutexDelete+0x16>
    687e:	0018      	movs	r0, r3
    6880:	bd10      	pop	{r4, pc}
    6882:	f000 fe53 	bl	752c <rt_mut_delete>
    6886:	2300      	movs	r3, #0
    6888:	e7f9      	b.n	687e <svcMutexDelete+0x12>
    688a:	46c0      	nop			; (mov r8, r8)

0000688c <osMutexCreate>:
    688c:	b5b0      	push	{r4, r5, r7, lr}
    688e:	f3ef 8405 	mrs	r4, IPSR
    6892:	2c00      	cmp	r4, #0
    6894:	d119      	bne.n	68ca <osMutexCreate+0x3e>
    6896:	f3ef 8414 	mrs	r4, CONTROL
    689a:	07e4      	lsls	r4, r4, #31
    689c:	d411      	bmi.n	68c2 <osMutexCreate+0x36>
    689e:	4c0c      	ldr	r4, [pc, #48]	; (68d0 <osMutexCreate+0x44>)
    68a0:	7824      	ldrb	r4, [r4, #0]
    68a2:	2c00      	cmp	r4, #0
    68a4:	d10d      	bne.n	68c2 <osMutexCreate+0x36>
    68a6:	2800      	cmp	r0, #0
    68a8:	d00f      	beq.n	68ca <osMutexCreate+0x3e>
    68aa:	6804      	ldr	r4, [r0, #0]
    68ac:	2c00      	cmp	r4, #0
    68ae:	d00c      	beq.n	68ca <osMutexCreate+0x3e>
    68b0:	7823      	ldrb	r3, [r4, #0]
    68b2:	2000      	movs	r0, #0
    68b4:	2b00      	cmp	r3, #0
    68b6:	d107      	bne.n	68c8 <osMutexCreate+0x3c>
    68b8:	0020      	movs	r0, r4
    68ba:	f000 fe2f 	bl	751c <rt_mut_init>
    68be:	0020      	movs	r0, r4
    68c0:	e002      	b.n	68c8 <osMutexCreate+0x3c>
    68c2:	4f04      	ldr	r7, [pc, #16]	; (68d4 <osMutexCreate+0x48>)
    68c4:	46bc      	mov	ip, r7
    68c6:	df00      	svc	0
    68c8:	bdb0      	pop	{r4, r5, r7, pc}
    68ca:	2000      	movs	r0, #0
    68cc:	e7fc      	b.n	68c8 <osMutexCreate+0x3c>
    68ce:	46c0      	nop			; (mov r8, r8)
    68d0:	20006079 	.word	0x20006079
    68d4:	0000679d 	.word	0x0000679d

000068d8 <osMutexWait>:
    68d8:	b5b0      	push	{r4, r5, r7, lr}
    68da:	0005      	movs	r5, r0
    68dc:	f3ef 8405 	mrs	r4, IPSR
    68e0:	2082      	movs	r0, #130	; 0x82
    68e2:	2c00      	cmp	r4, #0
    68e4:	d000      	beq.n	68e8 <osMutexWait+0x10>
    68e6:	bdb0      	pop	{r4, r5, r7, pc}
    68e8:	0028      	movs	r0, r5
    68ea:	4f02      	ldr	r7, [pc, #8]	; (68f4 <osMutexWait+0x1c>)
    68ec:	46bc      	mov	ip, r7
    68ee:	df00      	svc	0
    68f0:	e7f9      	b.n	68e6 <osMutexWait+0xe>
    68f2:	0000      	.short	0x0000
    68f4:	000067bd 	.word	0x000067bd

000068f8 <osMutexRelease>:
    68f8:	b5b0      	push	{r4, r5, r7, lr}
    68fa:	0005      	movs	r5, r0
    68fc:	f3ef 8405 	mrs	r4, IPSR
    6900:	2082      	movs	r0, #130	; 0x82
    6902:	2c00      	cmp	r4, #0
    6904:	d000      	beq.n	6908 <osMutexRelease+0x10>
    6906:	bdb0      	pop	{r4, r5, r7, pc}
    6908:	0028      	movs	r0, r5
    690a:	4f02      	ldr	r7, [pc, #8]	; (6914 <osMutexRelease+0x1c>)
    690c:	46bc      	mov	ip, r7
    690e:	df00      	svc	0
    6910:	e7f9      	b.n	6906 <osMutexRelease+0xe>
    6912:	0000      	.short	0x0000
    6914:	00006849 	.word	0x00006849

00006918 <osMutexDelete>:
    6918:	b5b0      	push	{r4, r5, r7, lr}
    691a:	0005      	movs	r5, r0
    691c:	f3ef 8405 	mrs	r4, IPSR
    6920:	2082      	movs	r0, #130	; 0x82
    6922:	2c00      	cmp	r4, #0
    6924:	d000      	beq.n	6928 <osMutexDelete+0x10>
    6926:	bdb0      	pop	{r4, r5, r7, pc}
    6928:	0028      	movs	r0, r5
    692a:	4f02      	ldr	r7, [pc, #8]	; (6934 <osMutexDelete+0x1c>)
    692c:	46bc      	mov	ip, r7
    692e:	df00      	svc	0
    6930:	e7f9      	b.n	6926 <osMutexDelete+0xe>
    6932:	0000      	.short	0x0000
    6934:	0000686d 	.word	0x0000686d

00006938 <svcSemaphoreCreate>:
    6938:	b510      	push	{r4, lr}
    693a:	2800      	cmp	r0, #0
    693c:	d00e      	beq.n	695c <svcSemaphoreCreate+0x24>
    693e:	6804      	ldr	r4, [r0, #0]
    6940:	2c00      	cmp	r4, #0
    6942:	d00b      	beq.n	695c <svcSemaphoreCreate+0x24>
    6944:	7823      	ldrb	r3, [r4, #0]
    6946:	2b00      	cmp	r3, #0
    6948:	d108      	bne.n	695c <svcSemaphoreCreate+0x24>
    694a:	4b05      	ldr	r3, [pc, #20]	; (6960 <svcSemaphoreCreate+0x28>)
    694c:	4299      	cmp	r1, r3
    694e:	dc05      	bgt.n	695c <svcSemaphoreCreate+0x24>
    6950:	0020      	movs	r0, r4
    6952:	b289      	uxth	r1, r1
    6954:	f000 ff4a 	bl	77ec <rt_sem_init>
    6958:	0020      	movs	r0, r4
    695a:	bd10      	pop	{r4, pc}
    695c:	2000      	movs	r0, #0
    695e:	e7fc      	b.n	695a <svcSemaphoreCreate+0x22>
    6960:	0000ffff 	.word	0x0000ffff

00006964 <svcSemaphoreWait>:
    6964:	b510      	push	{r4, lr}
    6966:	0004      	movs	r4, r0
    6968:	b082      	sub	sp, #8
    696a:	0783      	lsls	r3, r0, #30
    696c:	d111      	bne.n	6992 <svcSemaphoreWait+0x2e>
    696e:	2800      	cmp	r0, #0
    6970:	d00f      	beq.n	6992 <svcSemaphoreWait+0x2e>
    6972:	7803      	ldrb	r3, [r0, #0]
    6974:	2b02      	cmp	r3, #2
    6976:	d10c      	bne.n	6992 <svcSemaphoreWait+0x2e>
    6978:	2300      	movs	r3, #0
    697a:	2900      	cmp	r1, #0
    697c:	d10c      	bne.n	6998 <svcSemaphoreWait+0x34>
    697e:	0019      	movs	r1, r3
    6980:	0020      	movs	r0, r4
    6982:	f000 ff83 	bl	788c <rt_sem_wait>
    6986:	2801      	cmp	r0, #1
    6988:	d023      	beq.n	69d2 <svcSemaphoreWait+0x6e>
    698a:	8860      	ldrh	r0, [r4, #2]
    698c:	3001      	adds	r0, #1
    698e:	b002      	add	sp, #8
    6990:	bd10      	pop	{r4, pc}
    6992:	2001      	movs	r0, #1
    6994:	4240      	negs	r0, r0
    6996:	e7fa      	b.n	698e <svcSemaphoreWait+0x2a>
    6998:	1c4b      	adds	r3, r1, #1
    699a:	d01c      	beq.n	69d6 <svcSemaphoreWait+0x72>
    699c:	4b0f      	ldr	r3, [pc, #60]	; (69dc <svcSemaphoreWait+0x78>)
    699e:	4299      	cmp	r1, r3
    69a0:	d810      	bhi.n	69c4 <svcSemaphoreWait+0x60>
    69a2:	20fa      	movs	r0, #250	; 0xfa
    69a4:	4b0e      	ldr	r3, [pc, #56]	; (69e0 <svcSemaphoreWait+0x7c>)
    69a6:	0080      	lsls	r0, r0, #2
    69a8:	4341      	muls	r1, r0
    69aa:	681b      	ldr	r3, [r3, #0]
    69ac:	9301      	str	r3, [sp, #4]
    69ae:	3b01      	subs	r3, #1
    69b0:	1858      	adds	r0, r3, r1
    69b2:	9901      	ldr	r1, [sp, #4]
    69b4:	f7fd ff92 	bl	48dc <__aeabi_uidiv>
    69b8:	4a0a      	ldr	r2, [pc, #40]	; (69e4 <svcSemaphoreWait+0x80>)
    69ba:	0013      	movs	r3, r2
    69bc:	4290      	cmp	r0, r2
    69be:	d8de      	bhi.n	697e <svcSemaphoreWait+0x1a>
    69c0:	b283      	uxth	r3, r0
    69c2:	e7dc      	b.n	697e <svcSemaphoreWait+0x1a>
    69c4:	4b07      	ldr	r3, [pc, #28]	; (69e4 <svcSemaphoreWait+0x80>)
    69c6:	0020      	movs	r0, r4
    69c8:	0019      	movs	r1, r3
    69ca:	f000 ff5f 	bl	788c <rt_sem_wait>
    69ce:	2801      	cmp	r0, #1
    69d0:	d1db      	bne.n	698a <svcSemaphoreWait+0x26>
    69d2:	2000      	movs	r0, #0
    69d4:	e7db      	b.n	698e <svcSemaphoreWait+0x2a>
    69d6:	4b04      	ldr	r3, [pc, #16]	; (69e8 <svcSemaphoreWait+0x84>)
    69d8:	e7d1      	b.n	697e <svcSemaphoreWait+0x1a>
    69da:	46c0      	nop			; (mov r8, r8)
    69dc:	003d0900 	.word	0x003d0900
    69e0:	00008b70 	.word	0x00008b70
    69e4:	0000fffe 	.word	0x0000fffe
    69e8:	0000ffff 	.word	0x0000ffff

000069ec <svcSemaphoreRelease>:
    69ec:	b510      	push	{r4, lr}
    69ee:	2380      	movs	r3, #128	; 0x80
    69f0:	0782      	lsls	r2, r0, #30
    69f2:	d104      	bne.n	69fe <svcSemaphoreRelease+0x12>
    69f4:	2800      	cmp	r0, #0
    69f6:	d002      	beq.n	69fe <svcSemaphoreRelease+0x12>
    69f8:	7802      	ldrb	r2, [r0, #0]
    69fa:	2a02      	cmp	r2, #2
    69fc:	d001      	beq.n	6a02 <svcSemaphoreRelease+0x16>
    69fe:	0018      	movs	r0, r3
    6a00:	bd10      	pop	{r4, pc}
    6a02:	8841      	ldrh	r1, [r0, #2]
    6a04:	4a03      	ldr	r2, [pc, #12]	; (6a14 <svcSemaphoreRelease+0x28>)
    6a06:	3301      	adds	r3, #1
    6a08:	4291      	cmp	r1, r2
    6a0a:	d0f8      	beq.n	69fe <svcSemaphoreRelease+0x12>
    6a0c:	f000 ff28 	bl	7860 <rt_sem_send>
    6a10:	2300      	movs	r3, #0
    6a12:	e7f4      	b.n	69fe <svcSemaphoreRelease+0x12>
    6a14:	0000ffff 	.word	0x0000ffff

00006a18 <svcSemaphoreDelete>:
    6a18:	b510      	push	{r4, lr}
    6a1a:	2380      	movs	r3, #128	; 0x80
    6a1c:	0782      	lsls	r2, r0, #30
    6a1e:	d104      	bne.n	6a2a <svcSemaphoreDelete+0x12>
    6a20:	2800      	cmp	r0, #0
    6a22:	d002      	beq.n	6a2a <svcSemaphoreDelete+0x12>
    6a24:	7802      	ldrb	r2, [r0, #0]
    6a26:	2a02      	cmp	r2, #2
    6a28:	d001      	beq.n	6a2e <svcSemaphoreDelete+0x16>
    6a2a:	0018      	movs	r0, r3
    6a2c:	bd10      	pop	{r4, pc}
    6a2e:	f000 fee3 	bl	77f8 <rt_sem_delete>
    6a32:	2300      	movs	r3, #0
    6a34:	e7f9      	b.n	6a2a <svcSemaphoreDelete+0x12>
    6a36:	46c0      	nop			; (mov r8, r8)

00006a38 <isrSemaphoreRelease>:
    6a38:	b510      	push	{r4, lr}
    6a3a:	2380      	movs	r3, #128	; 0x80
    6a3c:	0782      	lsls	r2, r0, #30
    6a3e:	d104      	bne.n	6a4a <isrSemaphoreRelease+0x12>
    6a40:	2800      	cmp	r0, #0
    6a42:	d002      	beq.n	6a4a <isrSemaphoreRelease+0x12>
    6a44:	7802      	ldrb	r2, [r0, #0]
    6a46:	2a02      	cmp	r2, #2
    6a48:	d001      	beq.n	6a4e <isrSemaphoreRelease+0x16>
    6a4a:	0018      	movs	r0, r3
    6a4c:	bd10      	pop	{r4, pc}
    6a4e:	8841      	ldrh	r1, [r0, #2]
    6a50:	4a03      	ldr	r2, [pc, #12]	; (6a60 <isrSemaphoreRelease+0x28>)
    6a52:	3301      	adds	r3, #1
    6a54:	4291      	cmp	r1, r2
    6a56:	d0f8      	beq.n	6a4a <isrSemaphoreRelease+0x12>
    6a58:	f000 ff3a 	bl	78d0 <isr_sem_send>
    6a5c:	2300      	movs	r3, #0
    6a5e:	e7f4      	b.n	6a4a <isrSemaphoreRelease+0x12>
    6a60:	0000ffff 	.word	0x0000ffff

00006a64 <osSemaphoreCreate>:
    6a64:	b5b0      	push	{r4, r5, r7, lr}
    6a66:	f3ef 8405 	mrs	r4, IPSR
    6a6a:	2c00      	cmp	r4, #0
    6a6c:	d11c      	bne.n	6aa8 <osSemaphoreCreate+0x44>
    6a6e:	f3ef 8414 	mrs	r4, CONTROL
    6a72:	07e4      	lsls	r4, r4, #31
    6a74:	d503      	bpl.n	6a7e <osSemaphoreCreate+0x1a>
    6a76:	4f0f      	ldr	r7, [pc, #60]	; (6ab4 <osSemaphoreCreate+0x50>)
    6a78:	46bc      	mov	ip, r7
    6a7a:	df00      	svc	0
    6a7c:	bdb0      	pop	{r4, r5, r7, pc}
    6a7e:	4c0b      	ldr	r4, [pc, #44]	; (6aac <osSemaphoreCreate+0x48>)
    6a80:	7824      	ldrb	r4, [r4, #0]
    6a82:	2c00      	cmp	r4, #0
    6a84:	d1f7      	bne.n	6a76 <osSemaphoreCreate+0x12>
    6a86:	2800      	cmp	r0, #0
    6a88:	d00e      	beq.n	6aa8 <osSemaphoreCreate+0x44>
    6a8a:	6804      	ldr	r4, [r0, #0]
    6a8c:	2c00      	cmp	r4, #0
    6a8e:	d00b      	beq.n	6aa8 <osSemaphoreCreate+0x44>
    6a90:	7823      	ldrb	r3, [r4, #0]
    6a92:	2b00      	cmp	r3, #0
    6a94:	d108      	bne.n	6aa8 <osSemaphoreCreate+0x44>
    6a96:	4b06      	ldr	r3, [pc, #24]	; (6ab0 <osSemaphoreCreate+0x4c>)
    6a98:	4299      	cmp	r1, r3
    6a9a:	dc05      	bgt.n	6aa8 <osSemaphoreCreate+0x44>
    6a9c:	0020      	movs	r0, r4
    6a9e:	b289      	uxth	r1, r1
    6aa0:	f000 fea4 	bl	77ec <rt_sem_init>
    6aa4:	0020      	movs	r0, r4
    6aa6:	e7e9      	b.n	6a7c <osSemaphoreCreate+0x18>
    6aa8:	2000      	movs	r0, #0
    6aaa:	e7e7      	b.n	6a7c <osSemaphoreCreate+0x18>
    6aac:	20006079 	.word	0x20006079
    6ab0:	0000ffff 	.word	0x0000ffff
    6ab4:	00006939 	.word	0x00006939

00006ab8 <osSemaphoreWait>:
    6ab8:	b590      	push	{r4, r7, lr}
    6aba:	f3ef 8405 	mrs	r4, IPSR
    6abe:	2c00      	cmp	r4, #0
    6ac0:	d103      	bne.n	6aca <osSemaphoreWait+0x12>
    6ac2:	4f03      	ldr	r7, [pc, #12]	; (6ad0 <osSemaphoreWait+0x18>)
    6ac4:	46bc      	mov	ip, r7
    6ac6:	df00      	svc	0
    6ac8:	bd90      	pop	{r4, r7, pc}
    6aca:	2001      	movs	r0, #1
    6acc:	4240      	negs	r0, r0
    6ace:	e7fb      	b.n	6ac8 <osSemaphoreWait+0x10>
    6ad0:	00006965 	.word	0x00006965

00006ad4 <osSemaphoreRelease>:
    6ad4:	b5b0      	push	{r4, r5, r7, lr}
    6ad6:	f3ef 8405 	mrs	r4, IPSR
    6ada:	2c00      	cmp	r4, #0
    6adc:	d105      	bne.n	6aea <osSemaphoreRelease+0x16>
    6ade:	4f0c      	ldr	r7, [pc, #48]	; (6b10 <osSemaphoreRelease+0x3c>)
    6ae0:	46bc      	mov	ip, r7
    6ae2:	df00      	svc	0
    6ae4:	0003      	movs	r3, r0
    6ae6:	0018      	movs	r0, r3
    6ae8:	bdb0      	pop	{r4, r5, r7, pc}
    6aea:	2380      	movs	r3, #128	; 0x80
    6aec:	0782      	lsls	r2, r0, #30
    6aee:	d1fa      	bne.n	6ae6 <osSemaphoreRelease+0x12>
    6af0:	2800      	cmp	r0, #0
    6af2:	d0f8      	beq.n	6ae6 <osSemaphoreRelease+0x12>
    6af4:	7802      	ldrb	r2, [r0, #0]
    6af6:	2a02      	cmp	r2, #2
    6af8:	d1f5      	bne.n	6ae6 <osSemaphoreRelease+0x12>
    6afa:	8841      	ldrh	r1, [r0, #2]
    6afc:	4a03      	ldr	r2, [pc, #12]	; (6b0c <osSemaphoreRelease+0x38>)
    6afe:	3301      	adds	r3, #1
    6b00:	4291      	cmp	r1, r2
    6b02:	d0f0      	beq.n	6ae6 <osSemaphoreRelease+0x12>
    6b04:	f000 fee4 	bl	78d0 <isr_sem_send>
    6b08:	2300      	movs	r3, #0
    6b0a:	e7ec      	b.n	6ae6 <osSemaphoreRelease+0x12>
    6b0c:	0000ffff 	.word	0x0000ffff
    6b10:	000069ed 	.word	0x000069ed

00006b14 <osSemaphoreDelete>:
    6b14:	b5b0      	push	{r4, r5, r7, lr}
    6b16:	0005      	movs	r5, r0
    6b18:	f3ef 8405 	mrs	r4, IPSR
    6b1c:	2082      	movs	r0, #130	; 0x82
    6b1e:	2c00      	cmp	r4, #0
    6b20:	d000      	beq.n	6b24 <osSemaphoreDelete+0x10>
    6b22:	bdb0      	pop	{r4, r5, r7, pc}
    6b24:	0028      	movs	r0, r5
    6b26:	4f02      	ldr	r7, [pc, #8]	; (6b30 <osSemaphoreDelete+0x1c>)
    6b28:	46bc      	mov	ip, r7
    6b2a:	df00      	svc	0
    6b2c:	e7f9      	b.n	6b22 <osSemaphoreDelete+0xe>
    6b2e:	0000      	.short	0x0000
    6b30:	00006a19 	.word	0x00006a19

00006b34 <svcPoolCreate>:
    6b34:	b510      	push	{r4, lr}
    6b36:	1e04      	subs	r4, r0, #0
    6b38:	d011      	beq.n	6b5e <svcPoolCreate+0x2a>
    6b3a:	6801      	ldr	r1, [r0, #0]
    6b3c:	2900      	cmp	r1, #0
    6b3e:	d00e      	beq.n	6b5e <svcPoolCreate+0x2a>
    6b40:	6842      	ldr	r2, [r0, #4]
    6b42:	2a00      	cmp	r2, #0
    6b44:	d00b      	beq.n	6b5e <svcPoolCreate+0x2a>
    6b46:	6880      	ldr	r0, [r0, #8]
    6b48:	2800      	cmp	r0, #0
    6b4a:	d008      	beq.n	6b5e <svcPoolCreate+0x2a>
    6b4c:	2303      	movs	r3, #3
    6b4e:	3203      	adds	r2, #3
    6b50:	439a      	bics	r2, r3
    6b52:	4351      	muls	r1, r2
    6b54:	310c      	adds	r1, #12
    6b56:	f000 fc81 	bl	745c <_init_box>
    6b5a:	68a0      	ldr	r0, [r4, #8]
    6b5c:	bd10      	pop	{r4, pc}
    6b5e:	2000      	movs	r0, #0
    6b60:	e7fc      	b.n	6b5c <svcPoolCreate+0x28>
    6b62:	46c0      	nop			; (mov r8, r8)

00006b64 <sysPoolAlloc>:
    6b64:	b510      	push	{r4, lr}
    6b66:	2800      	cmp	r0, #0
    6b68:	d002      	beq.n	6b70 <sysPoolAlloc+0xc>
    6b6a:	f000 fca3 	bl	74b4 <rt_alloc_box>
    6b6e:	bd10      	pop	{r4, pc}
    6b70:	2000      	movs	r0, #0
    6b72:	e7fc      	b.n	6b6e <sysPoolAlloc+0xa>

00006b74 <sysPoolFree>:
    6b74:	b510      	push	{r4, lr}
    6b76:	2380      	movs	r3, #128	; 0x80
    6b78:	2800      	cmp	r0, #0
    6b7a:	d006      	beq.n	6b8a <sysPoolFree+0x16>
    6b7c:	f000 fcba 	bl	74f4 <rt_free_box>
    6b80:	1e42      	subs	r2, r0, #1
    6b82:	4190      	sbcs	r0, r2
    6b84:	2386      	movs	r3, #134	; 0x86
    6b86:	4240      	negs	r0, r0
    6b88:	4003      	ands	r3, r0
    6b8a:	0018      	movs	r0, r3
    6b8c:	bd10      	pop	{r4, pc}
    6b8e:	46c0      	nop			; (mov r8, r8)

00006b90 <osPoolCreate>:
    6b90:	b5b0      	push	{r4, r5, r7, lr}
    6b92:	0004      	movs	r4, r0
    6b94:	f3ef 8005 	mrs	r0, IPSR
    6b98:	2800      	cmp	r0, #0
    6b9a:	d120      	bne.n	6bde <osPoolCreate+0x4e>
    6b9c:	f3ef 8014 	mrs	r0, CONTROL
    6ba0:	07c0      	lsls	r0, r0, #31
    6ba2:	d504      	bpl.n	6bae <osPoolCreate+0x1e>
    6ba4:	0020      	movs	r0, r4
    6ba6:	4f10      	ldr	r7, [pc, #64]	; (6be8 <osPoolCreate+0x58>)
    6ba8:	46bc      	mov	ip, r7
    6baa:	df00      	svc	0
    6bac:	bdb0      	pop	{r4, r5, r7, pc}
    6bae:	480d      	ldr	r0, [pc, #52]	; (6be4 <osPoolCreate+0x54>)
    6bb0:	7800      	ldrb	r0, [r0, #0]
    6bb2:	2800      	cmp	r0, #0
    6bb4:	d1f6      	bne.n	6ba4 <osPoolCreate+0x14>
    6bb6:	2c00      	cmp	r4, #0
    6bb8:	d011      	beq.n	6bde <osPoolCreate+0x4e>
    6bba:	6821      	ldr	r1, [r4, #0]
    6bbc:	2900      	cmp	r1, #0
    6bbe:	d00e      	beq.n	6bde <osPoolCreate+0x4e>
    6bc0:	6862      	ldr	r2, [r4, #4]
    6bc2:	2a00      	cmp	r2, #0
    6bc4:	d00b      	beq.n	6bde <osPoolCreate+0x4e>
    6bc6:	68a0      	ldr	r0, [r4, #8]
    6bc8:	2800      	cmp	r0, #0
    6bca:	d008      	beq.n	6bde <osPoolCreate+0x4e>
    6bcc:	2303      	movs	r3, #3
    6bce:	3203      	adds	r2, #3
    6bd0:	439a      	bics	r2, r3
    6bd2:	4351      	muls	r1, r2
    6bd4:	310c      	adds	r1, #12
    6bd6:	f000 fc41 	bl	745c <_init_box>
    6bda:	68a0      	ldr	r0, [r4, #8]
    6bdc:	e7e6      	b.n	6bac <osPoolCreate+0x1c>
    6bde:	2000      	movs	r0, #0
    6be0:	e7e4      	b.n	6bac <osPoolCreate+0x1c>
    6be2:	46c0      	nop			; (mov r8, r8)
    6be4:	20006079 	.word	0x20006079
    6be8:	00006b35 	.word	0x00006b35

00006bec <osPoolAlloc>:
    6bec:	b5b0      	push	{r4, r5, r7, lr}
    6bee:	f3ef 8405 	mrs	r4, IPSR
    6bf2:	2c00      	cmp	r4, #0
    6bf4:	d103      	bne.n	6bfe <osPoolAlloc+0x12>
    6bf6:	f3ef 8414 	mrs	r4, CONTROL
    6bfa:	07e4      	lsls	r4, r4, #31
    6bfc:	d404      	bmi.n	6c08 <osPoolAlloc+0x1c>
    6bfe:	2800      	cmp	r0, #0
    6c00:	d006      	beq.n	6c10 <osPoolAlloc+0x24>
    6c02:	f000 fc57 	bl	74b4 <rt_alloc_box>
    6c06:	bdb0      	pop	{r4, r5, r7, pc}
    6c08:	4f02      	ldr	r7, [pc, #8]	; (6c14 <osPoolAlloc+0x28>)
    6c0a:	46bc      	mov	ip, r7
    6c0c:	df00      	svc	0
    6c0e:	e7fa      	b.n	6c06 <osPoolAlloc+0x1a>
    6c10:	2000      	movs	r0, #0
    6c12:	e7f8      	b.n	6c06 <osPoolAlloc+0x1a>
    6c14:	00006b65 	.word	0x00006b65

00006c18 <osPoolCAlloc>:
    6c18:	b5b0      	push	{r4, r5, r7, lr}
    6c1a:	0004      	movs	r4, r0
    6c1c:	f3ef 8005 	mrs	r0, IPSR
    6c20:	2800      	cmp	r0, #0
    6c22:	d103      	bne.n	6c2c <osPoolCAlloc+0x14>
    6c24:	f3ef 8014 	mrs	r0, CONTROL
    6c28:	07c0      	lsls	r0, r0, #31
    6c2a:	d410      	bmi.n	6c4e <osPoolCAlloc+0x36>
    6c2c:	2c00      	cmp	r4, #0
    6c2e:	d015      	beq.n	6c5c <osPoolCAlloc+0x44>
    6c30:	0020      	movs	r0, r4
    6c32:	f000 fc3f 	bl	74b4 <rt_alloc_box>
    6c36:	2800      	cmp	r0, #0
    6c38:	d010      	beq.n	6c5c <osPoolCAlloc+0x44>
    6c3a:	68a3      	ldr	r3, [r4, #8]
    6c3c:	2b00      	cmp	r3, #0
    6c3e:	d005      	beq.n	6c4c <osPoolCAlloc+0x34>
    6c40:	0002      	movs	r2, r0
    6c42:	2100      	movs	r1, #0
    6c44:	3b04      	subs	r3, #4
    6c46:	c202      	stmia	r2!, {r1}
    6c48:	2b00      	cmp	r3, #0
    6c4a:	d1fb      	bne.n	6c44 <osPoolCAlloc+0x2c>
    6c4c:	bdb0      	pop	{r4, r5, r7, pc}
    6c4e:	0020      	movs	r0, r4
    6c50:	4f03      	ldr	r7, [pc, #12]	; (6c60 <osPoolCAlloc+0x48>)
    6c52:	46bc      	mov	ip, r7
    6c54:	df00      	svc	0
    6c56:	2c00      	cmp	r4, #0
    6c58:	d1ed      	bne.n	6c36 <osPoolCAlloc+0x1e>
    6c5a:	e7f7      	b.n	6c4c <osPoolCAlloc+0x34>
    6c5c:	2000      	movs	r0, #0
    6c5e:	e7f5      	b.n	6c4c <osPoolCAlloc+0x34>
    6c60:	00006b65 	.word	0x00006b65

00006c64 <osPoolFree>:
    6c64:	b5b0      	push	{r4, r5, r7, lr}
    6c66:	f3ef 8405 	mrs	r4, IPSR
    6c6a:	2c00      	cmp	r4, #0
    6c6c:	d103      	bne.n	6c76 <osPoolFree+0x12>
    6c6e:	f3ef 8414 	mrs	r4, CONTROL
    6c72:	07e4      	lsls	r4, r4, #31
    6c74:	d40a      	bmi.n	6c8c <osPoolFree+0x28>
    6c76:	2800      	cmp	r0, #0
    6c78:	d00c      	beq.n	6c94 <osPoolFree+0x30>
    6c7a:	f000 fc3b 	bl	74f4 <rt_free_box>
    6c7e:	0003      	movs	r3, r0
    6c80:	1e5a      	subs	r2, r3, #1
    6c82:	4193      	sbcs	r3, r2
    6c84:	2086      	movs	r0, #134	; 0x86
    6c86:	425b      	negs	r3, r3
    6c88:	4018      	ands	r0, r3
    6c8a:	bdb0      	pop	{r4, r5, r7, pc}
    6c8c:	4f02      	ldr	r7, [pc, #8]	; (6c98 <osPoolFree+0x34>)
    6c8e:	46bc      	mov	ip, r7
    6c90:	df00      	svc	0
    6c92:	e7fa      	b.n	6c8a <osPoolFree+0x26>
    6c94:	2080      	movs	r0, #128	; 0x80
    6c96:	e7f8      	b.n	6c8a <osPoolFree+0x26>
    6c98:	00006b75 	.word	0x00006b75

00006c9c <svcMessageCreate>:
    6c9c:	b510      	push	{r4, lr}
    6c9e:	1e04      	subs	r4, r0, #0
    6ca0:	d00f      	beq.n	6cc2 <svcMessageCreate+0x26>
    6ca2:	6801      	ldr	r1, [r0, #0]
    6ca4:	2900      	cmp	r1, #0
    6ca6:	d00c      	beq.n	6cc2 <svcMessageCreate+0x26>
    6ca8:	6840      	ldr	r0, [r0, #4]
    6caa:	2800      	cmp	r0, #0
    6cac:	d009      	beq.n	6cc2 <svcMessageCreate+0x26>
    6cae:	7803      	ldrb	r3, [r0, #0]
    6cb0:	2b00      	cmp	r3, #0
    6cb2:	d106      	bne.n	6cc2 <svcMessageCreate+0x26>
    6cb4:	3104      	adds	r1, #4
    6cb6:	0089      	lsls	r1, r1, #2
    6cb8:	b289      	uxth	r1, r1
    6cba:	f000 fe2b 	bl	7914 <rt_mbx_init>
    6cbe:	6860      	ldr	r0, [r4, #4]
    6cc0:	bd10      	pop	{r4, pc}
    6cc2:	2000      	movs	r0, #0
    6cc4:	e7fc      	b.n	6cc0 <svcMessageCreate+0x24>
    6cc6:	46c0      	nop			; (mov r8, r8)

00006cc8 <svcMessagePut>:
    6cc8:	b570      	push	{r4, r5, r6, lr}
    6cca:	0004      	movs	r4, r0
    6ccc:	b082      	sub	sp, #8
    6cce:	000e      	movs	r6, r1
    6cd0:	0015      	movs	r5, r2
    6cd2:	2800      	cmp	r0, #0
    6cd4:	d005      	beq.n	6ce2 <svcMessagePut+0x1a>
    6cd6:	7803      	ldrb	r3, [r0, #0]
    6cd8:	2080      	movs	r0, #128	; 0x80
    6cda:	2b01      	cmp	r3, #1
    6cdc:	d003      	beq.n	6ce6 <svcMessagePut+0x1e>
    6cde:	b002      	add	sp, #8
    6ce0:	bd70      	pop	{r4, r5, r6, pc}
    6ce2:	2080      	movs	r0, #128	; 0x80
    6ce4:	e7fb      	b.n	6cde <svcMessagePut+0x16>
    6ce6:	2200      	movs	r2, #0
    6ce8:	2d00      	cmp	r5, #0
    6cea:	d014      	beq.n	6d16 <svcMessagePut+0x4e>
    6cec:	1c6b      	adds	r3, r5, #1
    6cee:	d01f      	beq.n	6d30 <svcMessagePut+0x68>
    6cf0:	4b11      	ldr	r3, [pc, #68]	; (6d38 <svcMessagePut+0x70>)
    6cf2:	429d      	cmp	r5, r3
    6cf4:	d81e      	bhi.n	6d34 <svcMessagePut+0x6c>
    6cf6:	20fa      	movs	r0, #250	; 0xfa
    6cf8:	4b10      	ldr	r3, [pc, #64]	; (6d3c <svcMessagePut+0x74>)
    6cfa:	0080      	lsls	r0, r0, #2
    6cfc:	4368      	muls	r0, r5
    6cfe:	681b      	ldr	r3, [r3, #0]
    6d00:	9301      	str	r3, [sp, #4]
    6d02:	3b01      	subs	r3, #1
    6d04:	18c0      	adds	r0, r0, r3
    6d06:	9901      	ldr	r1, [sp, #4]
    6d08:	f7fd fde8 	bl	48dc <__aeabi_uidiv>
    6d0c:	4b0c      	ldr	r3, [pc, #48]	; (6d40 <svcMessagePut+0x78>)
    6d0e:	001a      	movs	r2, r3
    6d10:	4298      	cmp	r0, r3
    6d12:	d800      	bhi.n	6d16 <svcMessagePut+0x4e>
    6d14:	b282      	uxth	r2, r0
    6d16:	0031      	movs	r1, r6
    6d18:	0020      	movs	r0, r4
    6d1a:	f000 fe09 	bl	7930 <rt_mbx_send>
    6d1e:	0003      	movs	r3, r0
    6d20:	2000      	movs	r0, #0
    6d22:	2b01      	cmp	r3, #1
    6d24:	d1db      	bne.n	6cde <svcMessagePut+0x16>
    6d26:	30c1      	adds	r0, #193	; 0xc1
    6d28:	2d00      	cmp	r5, #0
    6d2a:	d1d8      	bne.n	6cde <svcMessagePut+0x16>
    6d2c:	3840      	subs	r0, #64	; 0x40
    6d2e:	e7d6      	b.n	6cde <svcMessagePut+0x16>
    6d30:	4a04      	ldr	r2, [pc, #16]	; (6d44 <svcMessagePut+0x7c>)
    6d32:	e7f0      	b.n	6d16 <svcMessagePut+0x4e>
    6d34:	4a02      	ldr	r2, [pc, #8]	; (6d40 <svcMessagePut+0x78>)
    6d36:	e7ee      	b.n	6d16 <svcMessagePut+0x4e>
    6d38:	003d0900 	.word	0x003d0900
    6d3c:	00008b70 	.word	0x00008b70
    6d40:	0000fffe 	.word	0x0000fffe
    6d44:	0000ffff 	.word	0x0000ffff

00006d48 <svcMessageGet>:
    6d48:	b510      	push	{r4, lr}
    6d4a:	0004      	movs	r4, r0
    6d4c:	b086      	sub	sp, #24
    6d4e:	2800      	cmp	r0, #0
    6d50:	d002      	beq.n	6d58 <svcMessageGet+0x10>
    6d52:	7803      	ldrb	r3, [r0, #0]
    6d54:	2b01      	cmp	r3, #1
    6d56:	d005      	beq.n	6d64 <svcMessageGet+0x1c>
    6d58:	2080      	movs	r0, #128	; 0x80
    6d5a:	2100      	movs	r1, #0
    6d5c:	2200      	movs	r2, #0
    6d5e:	2300      	movs	r3, #0
    6d60:	b006      	add	sp, #24
    6d62:	bd10      	pop	{r4, pc}
    6d64:	2900      	cmp	r1, #0
    6d66:	d01c      	beq.n	6da2 <svcMessageGet+0x5a>
    6d68:	1c4b      	adds	r3, r1, #1
    6d6a:	d02a      	beq.n	6dc2 <svcMessageGet+0x7a>
    6d6c:	4b16      	ldr	r3, [pc, #88]	; (6dc8 <svcMessageGet+0x80>)
    6d6e:	4299      	cmp	r1, r3
    6d70:	d820      	bhi.n	6db4 <svcMessageGet+0x6c>
    6d72:	20fa      	movs	r0, #250	; 0xfa
    6d74:	4b15      	ldr	r3, [pc, #84]	; (6dcc <svcMessageGet+0x84>)
    6d76:	0080      	lsls	r0, r0, #2
    6d78:	4341      	muls	r1, r0
    6d7a:	681b      	ldr	r3, [r3, #0]
    6d7c:	9301      	str	r3, [sp, #4]
    6d7e:	3b01      	subs	r3, #1
    6d80:	1858      	adds	r0, r3, r1
    6d82:	9901      	ldr	r1, [sp, #4]
    6d84:	f7fd fdaa 	bl	48dc <__aeabi_uidiv>
    6d88:	4b11      	ldr	r3, [pc, #68]	; (6dd0 <svcMessageGet+0x88>)
    6d8a:	001a      	movs	r2, r3
    6d8c:	4298      	cmp	r0, r3
    6d8e:	d916      	bls.n	6dbe <svcMessageGet+0x76>
    6d90:	a904      	add	r1, sp, #16
    6d92:	0020      	movs	r0, r4
    6d94:	f000 fe18 	bl	79c8 <rt_mbx_wait>
    6d98:	2801      	cmp	r0, #1
    6d9a:	d00d      	beq.n	6db8 <svcMessageGet+0x70>
    6d9c:	2010      	movs	r0, #16
    6d9e:	9904      	ldr	r1, [sp, #16]
    6da0:	e7dc      	b.n	6d5c <svcMessageGet+0x14>
    6da2:	2200      	movs	r2, #0
    6da4:	a904      	add	r1, sp, #16
    6da6:	f000 fe0f 	bl	79c8 <rt_mbx_wait>
    6daa:	2801      	cmp	r0, #1
    6dac:	d1f6      	bne.n	6d9c <svcMessageGet+0x54>
    6dae:	2000      	movs	r0, #0
    6db0:	9904      	ldr	r1, [sp, #16]
    6db2:	e7d3      	b.n	6d5c <svcMessageGet+0x14>
    6db4:	4a06      	ldr	r2, [pc, #24]	; (6dd0 <svcMessageGet+0x88>)
    6db6:	e7eb      	b.n	6d90 <svcMessageGet+0x48>
    6db8:	2040      	movs	r0, #64	; 0x40
    6dba:	9904      	ldr	r1, [sp, #16]
    6dbc:	e7ce      	b.n	6d5c <svcMessageGet+0x14>
    6dbe:	b282      	uxth	r2, r0
    6dc0:	e7e6      	b.n	6d90 <svcMessageGet+0x48>
    6dc2:	4a04      	ldr	r2, [pc, #16]	; (6dd4 <svcMessageGet+0x8c>)
    6dc4:	e7e4      	b.n	6d90 <svcMessageGet+0x48>
    6dc6:	46c0      	nop			; (mov r8, r8)
    6dc8:	003d0900 	.word	0x003d0900
    6dcc:	00008b70 	.word	0x00008b70
    6dd0:	0000fffe 	.word	0x0000fffe
    6dd4:	0000ffff 	.word	0x0000ffff

00006dd8 <isrMessagePut>:
    6dd8:	b570      	push	{r4, r5, r6, lr}
    6dda:	0004      	movs	r4, r0
    6ddc:	000d      	movs	r5, r1
    6dde:	2080      	movs	r0, #128	; 0x80
    6de0:	2c00      	cmp	r4, #0
    6de2:	d001      	beq.n	6de8 <isrMessagePut+0x10>
    6de4:	2a00      	cmp	r2, #0
    6de6:	d000      	beq.n	6dea <isrMessagePut+0x12>
    6de8:	bd70      	pop	{r4, r5, r6, pc}
    6dea:	7823      	ldrb	r3, [r4, #0]
    6dec:	2b01      	cmp	r3, #1
    6dee:	d1fb      	bne.n	6de8 <isrMessagePut+0x10>
    6df0:	0020      	movs	r0, r4
    6df2:	f000 fe45 	bl	7a80 <rt_mbx_check>
    6df6:	0003      	movs	r3, r0
    6df8:	2081      	movs	r0, #129	; 0x81
    6dfa:	2b00      	cmp	r3, #0
    6dfc:	d0f4      	beq.n	6de8 <isrMessagePut+0x10>
    6dfe:	0020      	movs	r0, r4
    6e00:	0029      	movs	r1, r5
    6e02:	f000 fe41 	bl	7a88 <isr_mbx_send>
    6e06:	2000      	movs	r0, #0
    6e08:	e7ee      	b.n	6de8 <isrMessagePut+0x10>
    6e0a:	46c0      	nop			; (mov r8, r8)

00006e0c <isrMessageGet>:
    6e0c:	b570      	push	{r4, r5, r6, lr}
    6e0e:	0004      	movs	r4, r0
    6e10:	b084      	sub	sp, #16
    6e12:	0008      	movs	r0, r1
    6e14:	0015      	movs	r5, r2
    6e16:	2900      	cmp	r1, #0
    6e18:	d004      	beq.n	6e24 <isrMessageGet+0x18>
    6e1a:	2a00      	cmp	r2, #0
    6e1c:	d102      	bne.n	6e24 <isrMessageGet+0x18>
    6e1e:	780b      	ldrb	r3, [r1, #0]
    6e20:	2b01      	cmp	r3, #1
    6e22:	d004      	beq.n	6e2e <isrMessageGet+0x22>
    6e24:	2380      	movs	r3, #128	; 0x80
    6e26:	6023      	str	r3, [r4, #0]
    6e28:	0020      	movs	r0, r4
    6e2a:	b004      	add	sp, #16
    6e2c:	bd70      	pop	{r4, r5, r6, pc}
    6e2e:	a902      	add	r1, sp, #8
    6e30:	ae01      	add	r6, sp, #4
    6e32:	f000 fe2f 	bl	7a94 <isr_mbx_receive>
    6e36:	2804      	cmp	r0, #4
    6e38:	d004      	beq.n	6e44 <isrMessageGet+0x38>
    6e3a:	0023      	movs	r3, r4
    6e3c:	9501      	str	r5, [sp, #4]
    6e3e:	ce07      	ldmia	r6!, {r0, r1, r2}
    6e40:	c307      	stmia	r3!, {r0, r1, r2}
    6e42:	e7f1      	b.n	6e28 <isrMessageGet+0x1c>
    6e44:	2310      	movs	r3, #16
    6e46:	9301      	str	r3, [sp, #4]
    6e48:	0023      	movs	r3, r4
    6e4a:	ce07      	ldmia	r6!, {r0, r1, r2}
    6e4c:	c307      	stmia	r3!, {r0, r1, r2}
    6e4e:	e7eb      	b.n	6e28 <isrMessageGet+0x1c>

00006e50 <osMessageCreate>:
    6e50:	b5b0      	push	{r4, r5, r7, lr}
    6e52:	0004      	movs	r4, r0
    6e54:	f3ef 8005 	mrs	r0, IPSR
    6e58:	2800      	cmp	r0, #0
    6e5a:	d11e      	bne.n	6e9a <osMessageCreate+0x4a>
    6e5c:	f3ef 8014 	mrs	r0, CONTROL
    6e60:	07c0      	lsls	r0, r0, #31
    6e62:	d504      	bpl.n	6e6e <osMessageCreate+0x1e>
    6e64:	0020      	movs	r0, r4
    6e66:	4f0f      	ldr	r7, [pc, #60]	; (6ea4 <osMessageCreate+0x54>)
    6e68:	46bc      	mov	ip, r7
    6e6a:	df00      	svc	0
    6e6c:	bdb0      	pop	{r4, r5, r7, pc}
    6e6e:	480c      	ldr	r0, [pc, #48]	; (6ea0 <osMessageCreate+0x50>)
    6e70:	7800      	ldrb	r0, [r0, #0]
    6e72:	2800      	cmp	r0, #0
    6e74:	d1f6      	bne.n	6e64 <osMessageCreate+0x14>
    6e76:	2c00      	cmp	r4, #0
    6e78:	d00f      	beq.n	6e9a <osMessageCreate+0x4a>
    6e7a:	6823      	ldr	r3, [r4, #0]
    6e7c:	2b00      	cmp	r3, #0
    6e7e:	d00c      	beq.n	6e9a <osMessageCreate+0x4a>
    6e80:	6860      	ldr	r0, [r4, #4]
    6e82:	2800      	cmp	r0, #0
    6e84:	d009      	beq.n	6e9a <osMessageCreate+0x4a>
    6e86:	7802      	ldrb	r2, [r0, #0]
    6e88:	2a00      	cmp	r2, #0
    6e8a:	d106      	bne.n	6e9a <osMessageCreate+0x4a>
    6e8c:	1d19      	adds	r1, r3, #4
    6e8e:	008b      	lsls	r3, r1, #2
    6e90:	b299      	uxth	r1, r3
    6e92:	f000 fd3f 	bl	7914 <rt_mbx_init>
    6e96:	6860      	ldr	r0, [r4, #4]
    6e98:	e7e8      	b.n	6e6c <osMessageCreate+0x1c>
    6e9a:	2000      	movs	r0, #0
    6e9c:	e7e6      	b.n	6e6c <osMessageCreate+0x1c>
    6e9e:	46c0      	nop			; (mov r8, r8)
    6ea0:	20006079 	.word	0x20006079
    6ea4:	00006c9d 	.word	0x00006c9d

00006ea8 <osMessagePut>:
    6ea8:	b5b0      	push	{r4, r5, r7, lr}
    6eaa:	0004      	movs	r4, r0
    6eac:	000d      	movs	r5, r1
    6eae:	f3ef 8105 	mrs	r1, IPSR
    6eb2:	2900      	cmp	r1, #0
    6eb4:	d008      	beq.n	6ec8 <osMessagePut+0x20>
    6eb6:	2080      	movs	r0, #128	; 0x80
    6eb8:	2c00      	cmp	r4, #0
    6eba:	d004      	beq.n	6ec6 <osMessagePut+0x1e>
    6ebc:	2a00      	cmp	r2, #0
    6ebe:	d102      	bne.n	6ec6 <osMessagePut+0x1e>
    6ec0:	7823      	ldrb	r3, [r4, #0]
    6ec2:	2b01      	cmp	r3, #1
    6ec4:	d005      	beq.n	6ed2 <osMessagePut+0x2a>
    6ec6:	bdb0      	pop	{r4, r5, r7, pc}
    6ec8:	0029      	movs	r1, r5
    6eca:	4f08      	ldr	r7, [pc, #32]	; (6eec <osMessagePut+0x44>)
    6ecc:	46bc      	mov	ip, r7
    6ece:	df00      	svc	0
    6ed0:	e7f9      	b.n	6ec6 <osMessagePut+0x1e>
    6ed2:	0020      	movs	r0, r4
    6ed4:	f000 fdd4 	bl	7a80 <rt_mbx_check>
    6ed8:	0003      	movs	r3, r0
    6eda:	2081      	movs	r0, #129	; 0x81
    6edc:	2b00      	cmp	r3, #0
    6ede:	d0f2      	beq.n	6ec6 <osMessagePut+0x1e>
    6ee0:	0020      	movs	r0, r4
    6ee2:	0029      	movs	r1, r5
    6ee4:	f000 fdd0 	bl	7a88 <isr_mbx_send>
    6ee8:	2000      	movs	r0, #0
    6eea:	e7ec      	b.n	6ec6 <osMessagePut+0x1e>
    6eec:	00006cc9 	.word	0x00006cc9

00006ef0 <osMessageGet>:
    6ef0:	b5f0      	push	{r4, r5, r6, r7, lr}
    6ef2:	0004      	movs	r4, r0
    6ef4:	b085      	sub	sp, #20
    6ef6:	0008      	movs	r0, r1
    6ef8:	0015      	movs	r5, r2
    6efa:	f3ef 8105 	mrs	r1, IPSR
    6efe:	2900      	cmp	r1, #0
    6f00:	d109      	bne.n	6f16 <osMessageGet+0x26>
    6f02:	0011      	movs	r1, r2
    6f04:	4f11      	ldr	r7, [pc, #68]	; (6f4c <osMessageGet+0x5c>)
    6f06:	46bc      	mov	ip, r7
    6f08:	df00      	svc	0
    6f0a:	6020      	str	r0, [r4, #0]
    6f0c:	6061      	str	r1, [r4, #4]
    6f0e:	60a2      	str	r2, [r4, #8]
    6f10:	0020      	movs	r0, r4
    6f12:	b005      	add	sp, #20
    6f14:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6f16:	2800      	cmp	r0, #0
    6f18:	d004      	beq.n	6f24 <osMessageGet+0x34>
    6f1a:	2a00      	cmp	r2, #0
    6f1c:	d102      	bne.n	6f24 <osMessageGet+0x34>
    6f1e:	7803      	ldrb	r3, [r0, #0]
    6f20:	2b01      	cmp	r3, #1
    6f22:	d002      	beq.n	6f2a <osMessageGet+0x3a>
    6f24:	2380      	movs	r3, #128	; 0x80
    6f26:	6023      	str	r3, [r4, #0]
    6f28:	e7f2      	b.n	6f10 <osMessageGet+0x20>
    6f2a:	a902      	add	r1, sp, #8
    6f2c:	ae01      	add	r6, sp, #4
    6f2e:	f000 fdb1 	bl	7a94 <isr_mbx_receive>
    6f32:	2804      	cmp	r0, #4
    6f34:	d004      	beq.n	6f40 <osMessageGet+0x50>
    6f36:	0023      	movs	r3, r4
    6f38:	9501      	str	r5, [sp, #4]
    6f3a:	ce07      	ldmia	r6!, {r0, r1, r2}
    6f3c:	c307      	stmia	r3!, {r0, r1, r2}
    6f3e:	e7e7      	b.n	6f10 <osMessageGet+0x20>
    6f40:	2310      	movs	r3, #16
    6f42:	9301      	str	r3, [sp, #4]
    6f44:	0023      	movs	r3, r4
    6f46:	ce07      	ldmia	r6!, {r0, r1, r2}
    6f48:	c307      	stmia	r3!, {r0, r1, r2}
    6f4a:	e7e1      	b.n	6f10 <osMessageGet+0x20>
    6f4c:	00006d49 	.word	0x00006d49

00006f50 <svcMailCreate>:
    6f50:	b570      	push	{r4, r5, r6, lr}
    6f52:	1e04      	subs	r4, r0, #0
    6f54:	d021      	beq.n	6f9a <svcMailCreate+0x4a>
    6f56:	6801      	ldr	r1, [r0, #0]
    6f58:	2900      	cmp	r1, #0
    6f5a:	d01e      	beq.n	6f9a <svcMailCreate+0x4a>
    6f5c:	6842      	ldr	r2, [r0, #4]
    6f5e:	2a00      	cmp	r2, #0
    6f60:	d01b      	beq.n	6f9a <svcMailCreate+0x4a>
    6f62:	6883      	ldr	r3, [r0, #8]
    6f64:	2b00      	cmp	r3, #0
    6f66:	d018      	beq.n	6f9a <svcMailCreate+0x4a>
    6f68:	6858      	ldr	r0, [r3, #4]
    6f6a:	681d      	ldr	r5, [r3, #0]
    6f6c:	2800      	cmp	r0, #0
    6f6e:	d014      	beq.n	6f9a <svcMailCreate+0x4a>
    6f70:	2d00      	cmp	r5, #0
    6f72:	d012      	beq.n	6f9a <svcMailCreate+0x4a>
    6f74:	782b      	ldrb	r3, [r5, #0]
    6f76:	2b00      	cmp	r3, #0
    6f78:	d10f      	bne.n	6f9a <svcMailCreate+0x4a>
    6f7a:	3303      	adds	r3, #3
    6f7c:	3203      	adds	r2, #3
    6f7e:	439a      	bics	r2, r3
    6f80:	4351      	muls	r1, r2
    6f82:	310c      	adds	r1, #12
    6f84:	f000 fa6a 	bl	745c <_init_box>
    6f88:	6823      	ldr	r3, [r4, #0]
    6f8a:	0028      	movs	r0, r5
    6f8c:	1d19      	adds	r1, r3, #4
    6f8e:	0089      	lsls	r1, r1, #2
    6f90:	b289      	uxth	r1, r1
    6f92:	f000 fcbf 	bl	7914 <rt_mbx_init>
    6f96:	68a0      	ldr	r0, [r4, #8]
    6f98:	bd70      	pop	{r4, r5, r6, pc}
    6f9a:	2000      	movs	r0, #0
    6f9c:	e7fc      	b.n	6f98 <svcMailCreate+0x48>
    6f9e:	46c0      	nop			; (mov r8, r8)

00006fa0 <sysMailAlloc>:
    6fa0:	b530      	push	{r4, r5, lr}
    6fa2:	000d      	movs	r5, r1
    6fa4:	b083      	sub	sp, #12
    6fa6:	2800      	cmp	r0, #0
    6fa8:	d035      	beq.n	7016 <sysMailAlloc+0x76>
    6faa:	6804      	ldr	r4, [r0, #0]
    6fac:	6840      	ldr	r0, [r0, #4]
    6fae:	2800      	cmp	r0, #0
    6fb0:	d031      	beq.n	7016 <sysMailAlloc+0x76>
    6fb2:	2c00      	cmp	r4, #0
    6fb4:	d02f      	beq.n	7016 <sysMailAlloc+0x76>
    6fb6:	2a00      	cmp	r2, #0
    6fb8:	d007      	beq.n	6fca <sysMailAlloc+0x2a>
    6fba:	2900      	cmp	r1, #0
    6fbc:	d12b      	bne.n	7016 <sysMailAlloc+0x76>
    6fbe:	f000 fa79 	bl	74b4 <rt_alloc_box>
    6fc2:	2800      	cmp	r0, #0
    6fc4:	d027      	beq.n	7016 <sysMailAlloc+0x76>
    6fc6:	b003      	add	sp, #12
    6fc8:	bd30      	pop	{r4, r5, pc}
    6fca:	f000 fa73 	bl	74b4 <rt_alloc_box>
    6fce:	2800      	cmp	r0, #0
    6fd0:	d1f9      	bne.n	6fc6 <sysMailAlloc+0x26>
    6fd2:	2d00      	cmp	r5, #0
    6fd4:	d01f      	beq.n	7016 <sysMailAlloc+0x76>
    6fd6:	6863      	ldr	r3, [r4, #4]
    6fd8:	2b00      	cmp	r3, #0
    6fda:	d020      	beq.n	701e <sysMailAlloc+0x7e>
    6fdc:	4b16      	ldr	r3, [pc, #88]	; (7038 <sysMailAlloc+0x98>)
    6fde:	0020      	movs	r0, r4
    6fe0:	6819      	ldr	r1, [r3, #0]
    6fe2:	f000 fdf1 	bl	7bc8 <rt_put_prio>
    6fe6:	1c6b      	adds	r3, r5, #1
    6fe8:	d021      	beq.n	702e <sysMailAlloc+0x8e>
    6fea:	4b14      	ldr	r3, [pc, #80]	; (703c <sysMailAlloc+0x9c>)
    6fec:	429d      	cmp	r5, r3
    6fee:	d814      	bhi.n	701a <sysMailAlloc+0x7a>
    6ff0:	20fa      	movs	r0, #250	; 0xfa
    6ff2:	4b13      	ldr	r3, [pc, #76]	; (7040 <sysMailAlloc+0xa0>)
    6ff4:	0080      	lsls	r0, r0, #2
    6ff6:	4368      	muls	r0, r5
    6ff8:	681b      	ldr	r3, [r3, #0]
    6ffa:	9301      	str	r3, [sp, #4]
    6ffc:	3b01      	subs	r3, #1
    6ffe:	18c0      	adds	r0, r0, r3
    7000:	9901      	ldr	r1, [sp, #4]
    7002:	f7fd fc6b 	bl	48dc <__aeabi_uidiv>
    7006:	4b0f      	ldr	r3, [pc, #60]	; (7044 <sysMailAlloc+0xa4>)
    7008:	0002      	movs	r2, r0
    700a:	0018      	movs	r0, r3
    700c:	429a      	cmp	r2, r3
    700e:	d910      	bls.n	7032 <sysMailAlloc+0x92>
    7010:	2108      	movs	r1, #8
    7012:	f001 fa13 	bl	843c <rt_block>
    7016:	2000      	movs	r0, #0
    7018:	e7d5      	b.n	6fc6 <sysMailAlloc+0x26>
    701a:	480a      	ldr	r0, [pc, #40]	; (7044 <sysMailAlloc+0xa4>)
    701c:	e7f8      	b.n	7010 <sysMailAlloc+0x70>
    701e:	4a06      	ldr	r2, [pc, #24]	; (7038 <sysMailAlloc+0x98>)
    7020:	6812      	ldr	r2, [r2, #0]
    7022:	6062      	str	r2, [r4, #4]
    7024:	6053      	str	r3, [r2, #4]
    7026:	2303      	movs	r3, #3
    7028:	6094      	str	r4, [r2, #8]
    702a:	7063      	strb	r3, [r4, #1]
    702c:	e7db      	b.n	6fe6 <sysMailAlloc+0x46>
    702e:	4806      	ldr	r0, [pc, #24]	; (7048 <sysMailAlloc+0xa8>)
    7030:	e7ee      	b.n	7010 <sysMailAlloc+0x70>
    7032:	b290      	uxth	r0, r2
    7034:	e7ec      	b.n	7010 <sysMailAlloc+0x70>
    7036:	46c0      	nop			; (mov r8, r8)
    7038:	200060b8 	.word	0x200060b8
    703c:	003d0900 	.word	0x003d0900
    7040:	00008b70 	.word	0x00008b70
    7044:	0000fffe 	.word	0x0000fffe
    7048:	0000ffff 	.word	0x0000ffff

0000704c <sysMailFree>:
    704c:	b570      	push	{r4, r5, r6, lr}
    704e:	0016      	movs	r6, r2
    7050:	2800      	cmp	r0, #0
    7052:	d00e      	beq.n	7072 <sysMailFree+0x26>
    7054:	6804      	ldr	r4, [r0, #0]
    7056:	2c00      	cmp	r4, #0
    7058:	d00b      	beq.n	7072 <sysMailFree+0x26>
    705a:	6845      	ldr	r5, [r0, #4]
    705c:	2080      	movs	r0, #128	; 0x80
    705e:	2d00      	cmp	r5, #0
    7060:	d006      	beq.n	7070 <sysMailFree+0x24>
    7062:	0028      	movs	r0, r5
    7064:	f000 fa46 	bl	74f4 <rt_free_box>
    7068:	0003      	movs	r3, r0
    706a:	2086      	movs	r0, #134	; 0x86
    706c:	2b00      	cmp	r3, #0
    706e:	d002      	beq.n	7076 <sysMailFree+0x2a>
    7070:	bd70      	pop	{r4, r5, r6, pc}
    7072:	2080      	movs	r0, #128	; 0x80
    7074:	e7fc      	b.n	7070 <sysMailFree+0x24>
    7076:	6863      	ldr	r3, [r4, #4]
    7078:	2b00      	cmp	r3, #0
    707a:	d002      	beq.n	7082 <sysMailFree+0x36>
    707c:	7863      	ldrb	r3, [r4, #1]
    707e:	2b03      	cmp	r3, #3
    7080:	d001      	beq.n	7086 <sysMailFree+0x3a>
    7082:	2000      	movs	r0, #0
    7084:	e7f4      	b.n	7070 <sysMailFree+0x24>
    7086:	2e00      	cmp	r6, #0
    7088:	d113      	bne.n	70b2 <sysMailFree+0x66>
    708a:	0028      	movs	r0, r5
    708c:	f000 fa12 	bl	74b4 <rt_alloc_box>
    7090:	1e05      	subs	r5, r0, #0
    7092:	d0f6      	beq.n	7082 <sysMailFree+0x36>
    7094:	0020      	movs	r0, r4
    7096:	f000 fdbd 	bl	7c14 <rt_get_first>
    709a:	0004      	movs	r4, r0
    709c:	0029      	movs	r1, r5
    709e:	f000 f987 	bl	73b0 <rt_ret_val>
    70a2:	0020      	movs	r0, r4
    70a4:	f000 feee 	bl	7e84 <rt_rmv_dly>
    70a8:	0020      	movs	r0, r4
    70aa:	f001 f9a1 	bl	83f0 <rt_dispatch>
    70ae:	2000      	movs	r0, #0
    70b0:	e7de      	b.n	7070 <sysMailFree+0x24>
    70b2:	0020      	movs	r0, r4
    70b4:	0029      	movs	r1, r5
    70b6:	f000 fefb 	bl	7eb0 <rt_psq_enq>
    70ba:	f001 f8dd 	bl	8278 <rt_psh_req>
    70be:	2000      	movs	r0, #0
    70c0:	e7d6      	b.n	7070 <sysMailFree+0x24>
    70c2:	46c0      	nop			; (mov r8, r8)

000070c4 <osMailCreate>:
    70c4:	b5b0      	push	{r4, r5, r7, lr}
    70c6:	0004      	movs	r4, r0
    70c8:	f3ef 8005 	mrs	r0, IPSR
    70cc:	2800      	cmp	r0, #0
    70ce:	d130      	bne.n	7132 <osMailCreate+0x6e>
    70d0:	f3ef 8014 	mrs	r0, CONTROL
    70d4:	07c0      	lsls	r0, r0, #31
    70d6:	d504      	bpl.n	70e2 <osMailCreate+0x1e>
    70d8:	0020      	movs	r0, r4
    70da:	4f18      	ldr	r7, [pc, #96]	; (713c <osMailCreate+0x78>)
    70dc:	46bc      	mov	ip, r7
    70de:	df00      	svc	0
    70e0:	bdb0      	pop	{r4, r5, r7, pc}
    70e2:	4815      	ldr	r0, [pc, #84]	; (7138 <osMailCreate+0x74>)
    70e4:	7800      	ldrb	r0, [r0, #0]
    70e6:	2800      	cmp	r0, #0
    70e8:	d1f6      	bne.n	70d8 <osMailCreate+0x14>
    70ea:	2c00      	cmp	r4, #0
    70ec:	d021      	beq.n	7132 <osMailCreate+0x6e>
    70ee:	6821      	ldr	r1, [r4, #0]
    70f0:	2900      	cmp	r1, #0
    70f2:	d01e      	beq.n	7132 <osMailCreate+0x6e>
    70f4:	6862      	ldr	r2, [r4, #4]
    70f6:	2a00      	cmp	r2, #0
    70f8:	d01b      	beq.n	7132 <osMailCreate+0x6e>
    70fa:	68a3      	ldr	r3, [r4, #8]
    70fc:	2b00      	cmp	r3, #0
    70fe:	d018      	beq.n	7132 <osMailCreate+0x6e>
    7100:	6858      	ldr	r0, [r3, #4]
    7102:	681d      	ldr	r5, [r3, #0]
    7104:	2800      	cmp	r0, #0
    7106:	d014      	beq.n	7132 <osMailCreate+0x6e>
    7108:	2d00      	cmp	r5, #0
    710a:	d012      	beq.n	7132 <osMailCreate+0x6e>
    710c:	782b      	ldrb	r3, [r5, #0]
    710e:	2b00      	cmp	r3, #0
    7110:	d10f      	bne.n	7132 <osMailCreate+0x6e>
    7112:	3303      	adds	r3, #3
    7114:	3203      	adds	r2, #3
    7116:	439a      	bics	r2, r3
    7118:	4351      	muls	r1, r2
    711a:	310c      	adds	r1, #12
    711c:	f000 f99e 	bl	745c <_init_box>
    7120:	6823      	ldr	r3, [r4, #0]
    7122:	0028      	movs	r0, r5
    7124:	1d19      	adds	r1, r3, #4
    7126:	0089      	lsls	r1, r1, #2
    7128:	b289      	uxth	r1, r1
    712a:	f000 fbf3 	bl	7914 <rt_mbx_init>
    712e:	68a0      	ldr	r0, [r4, #8]
    7130:	e7d6      	b.n	70e0 <osMailCreate+0x1c>
    7132:	2000      	movs	r0, #0
    7134:	e7d4      	b.n	70e0 <osMailCreate+0x1c>
    7136:	46c0      	nop			; (mov r8, r8)
    7138:	20006079 	.word	0x20006079
    713c:	00006f51 	.word	0x00006f51

00007140 <osMailAlloc>:
    7140:	b580      	push	{r7, lr}
    7142:	f3ef 8205 	mrs	r2, IPSR
    7146:	2a00      	cmp	r2, #0
    7148:	d104      	bne.n	7154 <osMailAlloc+0x14>
    714a:	2200      	movs	r2, #0
    714c:	4f09      	ldr	r7, [pc, #36]	; (7174 <osMailAlloc+0x34>)
    714e:	46bc      	mov	ip, r7
    7150:	df00      	svc	0
    7152:	bd80      	pop	{r7, pc}
    7154:	2800      	cmp	r0, #0
    7156:	d00a      	beq.n	716e <osMailAlloc+0x2e>
    7158:	6803      	ldr	r3, [r0, #0]
    715a:	6840      	ldr	r0, [r0, #4]
    715c:	2800      	cmp	r0, #0
    715e:	d006      	beq.n	716e <osMailAlloc+0x2e>
    7160:	2b00      	cmp	r3, #0
    7162:	d004      	beq.n	716e <osMailAlloc+0x2e>
    7164:	2900      	cmp	r1, #0
    7166:	d102      	bne.n	716e <osMailAlloc+0x2e>
    7168:	f000 f9a4 	bl	74b4 <rt_alloc_box>
    716c:	e7f1      	b.n	7152 <osMailAlloc+0x12>
    716e:	2000      	movs	r0, #0
    7170:	e7ef      	b.n	7152 <osMailAlloc+0x12>
    7172:	0000      	.short	0x0000
    7174:	00006fa1 	.word	0x00006fa1

00007178 <osMailCAlloc>:
    7178:	b5b0      	push	{r4, r5, r7, lr}
    717a:	0004      	movs	r4, r0
    717c:	f3ef 8205 	mrs	r2, IPSR
    7180:	2a00      	cmp	r2, #0
    7182:	d112      	bne.n	71aa <osMailCAlloc+0x32>
    7184:	2200      	movs	r2, #0
    7186:	4f13      	ldr	r7, [pc, #76]	; (71d4 <osMailCAlloc+0x5c>)
    7188:	46bc      	mov	ip, r7
    718a:	df00      	svc	0
    718c:	6863      	ldr	r3, [r4, #4]
    718e:	2b00      	cmp	r3, #0
    7190:	d00a      	beq.n	71a8 <osMailCAlloc+0x30>
    7192:	2800      	cmp	r0, #0
    7194:	d01b      	beq.n	71ce <osMailCAlloc+0x56>
    7196:	689b      	ldr	r3, [r3, #8]
    7198:	2b00      	cmp	r3, #0
    719a:	d005      	beq.n	71a8 <osMailCAlloc+0x30>
    719c:	0002      	movs	r2, r0
    719e:	2100      	movs	r1, #0
    71a0:	3b04      	subs	r3, #4
    71a2:	c202      	stmia	r2!, {r1}
    71a4:	2b00      	cmp	r3, #0
    71a6:	d1fb      	bne.n	71a0 <osMailCAlloc+0x28>
    71a8:	bdb0      	pop	{r4, r5, r7, pc}
    71aa:	2800      	cmp	r0, #0
    71ac:	d00f      	beq.n	71ce <osMailCAlloc+0x56>
    71ae:	6803      	ldr	r3, [r0, #0]
    71b0:	6840      	ldr	r0, [r0, #4]
    71b2:	2800      	cmp	r0, #0
    71b4:	d00b      	beq.n	71ce <osMailCAlloc+0x56>
    71b6:	2b00      	cmp	r3, #0
    71b8:	d009      	beq.n	71ce <osMailCAlloc+0x56>
    71ba:	2900      	cmp	r1, #0
    71bc:	d107      	bne.n	71ce <osMailCAlloc+0x56>
    71be:	f000 f979 	bl	74b4 <rt_alloc_box>
    71c2:	2800      	cmp	r0, #0
    71c4:	d003      	beq.n	71ce <osMailCAlloc+0x56>
    71c6:	6863      	ldr	r3, [r4, #4]
    71c8:	2b00      	cmp	r3, #0
    71ca:	d1e4      	bne.n	7196 <osMailCAlloc+0x1e>
    71cc:	e7ec      	b.n	71a8 <osMailCAlloc+0x30>
    71ce:	2000      	movs	r0, #0
    71d0:	e7ea      	b.n	71a8 <osMailCAlloc+0x30>
    71d2:	0000      	.short	0x0000
    71d4:	00006fa1 	.word	0x00006fa1

000071d8 <osMailFree>:
    71d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    71da:	f3ef 8205 	mrs	r2, IPSR
    71de:	2a00      	cmp	r2, #0
    71e0:	d106      	bne.n	71f0 <osMailFree+0x18>
    71e2:	2200      	movs	r2, #0
    71e4:	4f13      	ldr	r7, [pc, #76]	; (7234 <osMailFree+0x5c>)
    71e6:	46bc      	mov	ip, r7
    71e8:	df00      	svc	0
    71ea:	0004      	movs	r4, r0
    71ec:	0020      	movs	r0, r4
    71ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    71f0:	2800      	cmp	r0, #0
    71f2:	d01a      	beq.n	722a <osMailFree+0x52>
    71f4:	6805      	ldr	r5, [r0, #0]
    71f6:	2d00      	cmp	r5, #0
    71f8:	d017      	beq.n	722a <osMailFree+0x52>
    71fa:	6846      	ldr	r6, [r0, #4]
    71fc:	2480      	movs	r4, #128	; 0x80
    71fe:	2e00      	cmp	r6, #0
    7200:	d0f4      	beq.n	71ec <osMailFree+0x14>
    7202:	0030      	movs	r0, r6
    7204:	f000 f976 	bl	74f4 <rt_free_box>
    7208:	3406      	adds	r4, #6
    720a:	2800      	cmp	r0, #0
    720c:	d1ee      	bne.n	71ec <osMailFree+0x14>
    720e:	686b      	ldr	r3, [r5, #4]
    7210:	2b00      	cmp	r3, #0
    7212:	d00c      	beq.n	722e <osMailFree+0x56>
    7214:	786b      	ldrb	r3, [r5, #1]
    7216:	2400      	movs	r4, #0
    7218:	2b03      	cmp	r3, #3
    721a:	d1e7      	bne.n	71ec <osMailFree+0x14>
    721c:	0031      	movs	r1, r6
    721e:	0028      	movs	r0, r5
    7220:	f000 fe46 	bl	7eb0 <rt_psq_enq>
    7224:	f001 f828 	bl	8278 <rt_psh_req>
    7228:	e7e0      	b.n	71ec <osMailFree+0x14>
    722a:	2480      	movs	r4, #128	; 0x80
    722c:	e7de      	b.n	71ec <osMailFree+0x14>
    722e:	2400      	movs	r4, #0
    7230:	e7dc      	b.n	71ec <osMailFree+0x14>
    7232:	0000      	.short	0x0000
    7234:	0000704d 	.word	0x0000704d

00007238 <osMailPut>:
    7238:	b5b0      	push	{r4, r5, r7, lr}
    723a:	0002      	movs	r2, r0
    723c:	000c      	movs	r4, r1
    723e:	2800      	cmp	r0, #0
    7240:	d00e      	beq.n	7260 <osMailPut+0x28>
    7242:	2086      	movs	r0, #134	; 0x86
    7244:	2900      	cmp	r1, #0
    7246:	d00a      	beq.n	725e <osMailPut+0x26>
    7248:	6815      	ldr	r5, [r2, #0]
    724a:	f3ef 8205 	mrs	r2, IPSR
    724e:	2a00      	cmp	r2, #0
    7250:	d008      	beq.n	7264 <osMailPut+0x2c>
    7252:	2d00      	cmp	r5, #0
    7254:	d004      	beq.n	7260 <osMailPut+0x28>
    7256:	782b      	ldrb	r3, [r5, #0]
    7258:	3806      	subs	r0, #6
    725a:	2b01      	cmp	r3, #1
    725c:	d008      	beq.n	7270 <osMailPut+0x38>
    725e:	bdb0      	pop	{r4, r5, r7, pc}
    7260:	2080      	movs	r0, #128	; 0x80
    7262:	e7fc      	b.n	725e <osMailPut+0x26>
    7264:	0028      	movs	r0, r5
    7266:	2200      	movs	r2, #0
    7268:	4f08      	ldr	r7, [pc, #32]	; (728c <osMailPut+0x54>)
    726a:	46bc      	mov	ip, r7
    726c:	df00      	svc	0
    726e:	e7f6      	b.n	725e <osMailPut+0x26>
    7270:	0028      	movs	r0, r5
    7272:	f000 fc05 	bl	7a80 <rt_mbx_check>
    7276:	0003      	movs	r3, r0
    7278:	2081      	movs	r0, #129	; 0x81
    727a:	2b00      	cmp	r3, #0
    727c:	d0ef      	beq.n	725e <osMailPut+0x26>
    727e:	0028      	movs	r0, r5
    7280:	0021      	movs	r1, r4
    7282:	f000 fc01 	bl	7a88 <isr_mbx_send>
    7286:	2000      	movs	r0, #0
    7288:	e7e9      	b.n	725e <osMailPut+0x26>
    728a:	0000      	.short	0x0000
    728c:	00006cc9 	.word	0x00006cc9

00007290 <osMailGet>:
    7290:	b5b0      	push	{r4, r5, r7, lr}
    7292:	0004      	movs	r4, r0
    7294:	b084      	sub	sp, #16
    7296:	2900      	cmp	r1, #0
    7298:	d012      	beq.n	72c0 <osMailGet+0x30>
    729a:	6808      	ldr	r0, [r1, #0]
    729c:	f3ef 8105 	mrs	r1, IPSR
    72a0:	2900      	cmp	r1, #0
    72a2:	d113      	bne.n	72cc <osMailGet+0x3c>
    72a4:	0011      	movs	r1, r2
    72a6:	4f0d      	ldr	r7, [pc, #52]	; (72dc <osMailGet+0x4c>)
    72a8:	46bc      	mov	ip, r7
    72aa:	df00      	svc	0
    72ac:	2810      	cmp	r0, #16
    72ae:	d005      	beq.n	72bc <osMailGet+0x2c>
    72b0:	6020      	str	r0, [r4, #0]
    72b2:	6061      	str	r1, [r4, #4]
    72b4:	60a2      	str	r2, [r4, #8]
    72b6:	0020      	movs	r0, r4
    72b8:	b004      	add	sp, #16
    72ba:	bdb0      	pop	{r4, r5, r7, pc}
    72bc:	3010      	adds	r0, #16
    72be:	e7f7      	b.n	72b0 <osMailGet+0x20>
    72c0:	2380      	movs	r3, #128	; 0x80
    72c2:	6003      	str	r3, [r0, #0]
    72c4:	2300      	movs	r3, #0
    72c6:	6043      	str	r3, [r0, #4]
    72c8:	6083      	str	r3, [r0, #8]
    72ca:	e7f4      	b.n	72b6 <osMailGet+0x26>
    72cc:	0001      	movs	r1, r0
    72ce:	a801      	add	r0, sp, #4
    72d0:	f7ff fd9c 	bl	6e0c <isrMessageGet>
    72d4:	9801      	ldr	r0, [sp, #4]
    72d6:	9902      	ldr	r1, [sp, #8]
    72d8:	9a03      	ldr	r2, [sp, #12]
    72da:	e7e7      	b.n	72ac <osMailGet+0x1c>
    72dc:	00006d49 	.word	0x00006d49

000072e0 <os_suspend>:
    72e0:	b580      	push	{r7, lr}
    72e2:	4f02      	ldr	r7, [pc, #8]	; (72ec <os_suspend+0xc>)
    72e4:	46bc      	mov	ip, r7
    72e6:	df00      	svc	0
    72e8:	bd80      	pop	{r7, pc}
    72ea:	0000      	.short	0x0000
    72ec:	00008029 	.word	0x00008029

000072f0 <os_resume>:
    72f0:	b580      	push	{r7, lr}
    72f2:	4f02      	ldr	r7, [pc, #8]	; (72fc <os_resume+0xc>)
    72f4:	46bc      	mov	ip, r7
    72f6:	df00      	svc	0
    72f8:	bd80      	pop	{r7, pc}
    72fa:	0000      	.short	0x0000
    72fc:	000080b9 	.word	0x000080b9

00007300 <rt_init_stack>:
    7300:	b5f0      	push	{r4, r5, r6, r7, lr}
    7302:	464e      	mov	r6, r9
    7304:	4645      	mov	r5, r8
    7306:	4657      	mov	r7, sl
    7308:	b4e0      	push	{r5, r6, r7}
    730a:	4b26      	ldr	r3, [pc, #152]	; (73a4 <rt_init_stack+0xa4>)
    730c:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    730e:	b082      	sub	sp, #8
    7310:	4680      	mov	r8, r0
    7312:	4689      	mov	r9, r1
    7314:	08a4      	lsrs	r4, r4, #2
    7316:	681b      	ldr	r3, [r3, #0]
    7318:	d104      	bne.n	7324 <rt_init_stack+0x24>
    731a:	9301      	str	r3, [sp, #4]
    731c:	466b      	mov	r3, sp
    731e:	889c      	ldrh	r4, [r3, #4]
    7320:	9b01      	ldr	r3, [sp, #4]
    7322:	08a4      	lsrs	r4, r4, #2
    7324:	469a      	mov	sl, r3
    7326:	4643      	mov	r3, r8
    7328:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    732a:	00a5      	lsls	r5, r4, #2
    732c:	197d      	adds	r5, r7, r5
    732e:	076b      	lsls	r3, r5, #29
    7330:	d500      	bpl.n	7334 <rt_init_stack+0x34>
    7332:	3d04      	subs	r5, #4
    7334:	2280      	movs	r2, #128	; 0x80
    7336:	1f2b      	subs	r3, r5, #4
    7338:	002e      	movs	r6, r5
    733a:	0452      	lsls	r2, r2, #17
    733c:	601a      	str	r2, [r3, #0]
    733e:	464a      	mov	r2, r9
    7340:	3b04      	subs	r3, #4
    7342:	3e40      	subs	r6, #64	; 0x40
    7344:	601a      	str	r2, [r3, #0]
    7346:	2100      	movs	r1, #0
    7348:	2238      	movs	r2, #56	; 0x38
    734a:	0030      	movs	r0, r6
    734c:	f001 fb30 	bl	89b0 <memset>
    7350:	4643      	mov	r3, r8
    7352:	69db      	ldr	r3, [r3, #28]
    7354:	3d20      	subs	r5, #32
    7356:	602b      	str	r3, [r5, #0]
    7358:	464a      	mov	r2, r9
    735a:	4643      	mov	r3, r8
    735c:	629e      	str	r6, [r3, #40]	; 0x28
    735e:	631a      	str	r2, [r3, #48]	; 0x30
    7360:	4653      	mov	r3, sl
    7362:	00db      	lsls	r3, r3, #3
    7364:	d516      	bpl.n	7394 <rt_init_stack+0x94>
    7366:	2c11      	cmp	r4, #17
    7368:	d914      	bls.n	7394 <rt_init_stack+0x94>
    736a:	3c10      	subs	r4, #16
    736c:	0864      	lsrs	r4, r4, #1
    736e:	1e62      	subs	r2, r4, #1
    7370:	2a00      	cmp	r2, #0
    7372:	d00a      	beq.n	738a <rt_init_stack+0x8a>
    7374:	0033      	movs	r3, r6
    7376:	490c      	ldr	r1, [pc, #48]	; (73a8 <rt_init_stack+0xa8>)
    7378:	3b08      	subs	r3, #8
    737a:	3a01      	subs	r2, #1
    737c:	6059      	str	r1, [r3, #4]
    737e:	6019      	str	r1, [r3, #0]
    7380:	2a00      	cmp	r2, #0
    7382:	d1f9      	bne.n	7378 <rt_init_stack+0x78>
    7384:	00e4      	lsls	r4, r4, #3
    7386:	1b36      	subs	r6, r6, r4
    7388:	3608      	adds	r6, #8
    738a:	3e04      	subs	r6, #4
    738c:	42b7      	cmp	r7, r6
    738e:	d201      	bcs.n	7394 <rt_init_stack+0x94>
    7390:	4b05      	ldr	r3, [pc, #20]	; (73a8 <rt_init_stack+0xa8>)
    7392:	6033      	str	r3, [r6, #0]
    7394:	4b05      	ldr	r3, [pc, #20]	; (73ac <rt_init_stack+0xac>)
    7396:	603b      	str	r3, [r7, #0]
    7398:	b002      	add	sp, #8
    739a:	bc1c      	pop	{r2, r3, r4}
    739c:	4690      	mov	r8, r2
    739e:	4699      	mov	r9, r3
    73a0:	46a2      	mov	sl, r4
    73a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    73a4:	00008b50 	.word	0x00008b50
    73a8:	cccccccc 	.word	0xcccccccc
    73ac:	e25a2ea5 	.word	0xe25a2ea5

000073b0 <rt_ret_val>:
    73b0:	6a83      	ldr	r3, [r0, #40]	; 0x28
    73b2:	6219      	str	r1, [r3, #32]
    73b4:	4770      	bx	lr
    73b6:	46c0      	nop			; (mov r8, r8)

000073b8 <rt_ret_val2>:
    73b8:	6a83      	ldr	r3, [r0, #40]	; 0x28
    73ba:	6219      	str	r1, [r3, #32]
    73bc:	625a      	str	r2, [r3, #36]	; 0x24
    73be:	4770      	bx	lr

000073c0 <rt_init_mem>:
    73c0:	0003      	movs	r3, r0
    73c2:	2001      	movs	r0, #1
    73c4:	2b00      	cmp	r3, #0
    73c6:	d008      	beq.n	73da <rt_init_mem+0x1a>
    73c8:	2907      	cmp	r1, #7
    73ca:	d906      	bls.n	73da <rt_init_mem+0x1a>
    73cc:	2200      	movs	r2, #0
    73ce:	2000      	movs	r0, #0
    73d0:	3904      	subs	r1, #4
    73d2:	1859      	adds	r1, r3, r1
    73d4:	6019      	str	r1, [r3, #0]
    73d6:	600a      	str	r2, [r1, #0]
    73d8:	605a      	str	r2, [r3, #4]
    73da:	4770      	bx	lr

000073dc <rt_alloc_mem>:
    73dc:	b510      	push	{r4, lr}
    73de:	2800      	cmp	r0, #0
    73e0:	d018      	beq.n	7414 <rt_alloc_mem+0x38>
    73e2:	2900      	cmp	r1, #0
    73e4:	d016      	beq.n	7414 <rt_alloc_mem+0x38>
    73e6:	2303      	movs	r3, #3
    73e8:	310b      	adds	r1, #11
    73ea:	4399      	bics	r1, r3
    73ec:	6802      	ldr	r2, [r0, #0]
    73ee:	e003      	b.n	73f8 <rt_alloc_mem+0x1c>
    73f0:	0010      	movs	r0, r2
    73f2:	6812      	ldr	r2, [r2, #0]
    73f4:	2a00      	cmp	r2, #0
    73f6:	d00d      	beq.n	7414 <rt_alloc_mem+0x38>
    73f8:	6844      	ldr	r4, [r0, #4]
    73fa:	1a13      	subs	r3, r2, r0
    73fc:	1b1b      	subs	r3, r3, r4
    73fe:	4299      	cmp	r1, r3
    7400:	d8f6      	bhi.n	73f0 <rt_alloc_mem+0x14>
    7402:	2c00      	cmp	r4, #0
    7404:	d008      	beq.n	7418 <rt_alloc_mem+0x3c>
    7406:	1904      	adds	r4, r0, r4
    7408:	6022      	str	r2, [r4, #0]
    740a:	6061      	str	r1, [r4, #4]
    740c:	6004      	str	r4, [r0, #0]
    740e:	0020      	movs	r0, r4
    7410:	3008      	adds	r0, #8
    7412:	e000      	b.n	7416 <rt_alloc_mem+0x3a>
    7414:	2000      	movs	r0, #0
    7416:	bd10      	pop	{r4, pc}
    7418:	6041      	str	r1, [r0, #4]
    741a:	3008      	adds	r0, #8
    741c:	e7fb      	b.n	7416 <rt_alloc_mem+0x3a>
    741e:	46c0      	nop			; (mov r8, r8)

00007420 <rt_free_mem>:
    7420:	2800      	cmp	r0, #0
    7422:	d015      	beq.n	7450 <rt_free_mem+0x30>
    7424:	2900      	cmp	r1, #0
    7426:	d013      	beq.n	7450 <rt_free_mem+0x30>
    7428:	3908      	subs	r1, #8
    742a:	4288      	cmp	r0, r1
    742c:	d012      	beq.n	7454 <rt_free_mem+0x34>
    742e:	6803      	ldr	r3, [r0, #0]
    7430:	2b00      	cmp	r3, #0
    7432:	d105      	bne.n	7440 <rt_free_mem+0x20>
    7434:	e00c      	b.n	7450 <rt_free_mem+0x30>
    7436:	681a      	ldr	r2, [r3, #0]
    7438:	0018      	movs	r0, r3
    743a:	2a00      	cmp	r2, #0
    743c:	d008      	beq.n	7450 <rt_free_mem+0x30>
    743e:	0013      	movs	r3, r2
    7440:	4299      	cmp	r1, r3
    7442:	d1f8      	bne.n	7436 <rt_free_mem+0x16>
    7444:	2800      	cmp	r0, #0
    7446:	d005      	beq.n	7454 <rt_free_mem+0x34>
    7448:	680b      	ldr	r3, [r1, #0]
    744a:	6003      	str	r3, [r0, #0]
    744c:	2000      	movs	r0, #0
    744e:	e000      	b.n	7452 <rt_free_mem+0x32>
    7450:	2001      	movs	r0, #1
    7452:	4770      	bx	lr
    7454:	2300      	movs	r3, #0
    7456:	2000      	movs	r0, #0
    7458:	604b      	str	r3, [r1, #4]
    745a:	e7fa      	b.n	7452 <rt_free_mem+0x32>

0000745c <_init_box>:
    745c:	b530      	push	{r4, r5, lr}
    745e:	2a00      	cmp	r2, #0
    7460:	db1e      	blt.n	74a0 <_init_box+0x44>
    7462:	2303      	movs	r3, #3
    7464:	3203      	adds	r2, #3
    7466:	439a      	bics	r2, r3
    7468:	3309      	adds	r3, #9
    746a:	2401      	movs	r4, #1
    746c:	2a00      	cmp	r2, #0
    746e:	d015      	beq.n	749c <_init_box+0x40>
    7470:	18d5      	adds	r5, r2, r3
    7472:	428d      	cmp	r5, r1
    7474:	d812      	bhi.n	749c <_init_box+0x40>
    7476:	1841      	adds	r1, r0, r1
    7478:	18c3      	adds	r3, r0, r3
    747a:	6041      	str	r1, [r0, #4]
    747c:	6003      	str	r3, [r0, #0]
    747e:	6082      	str	r2, [r0, #8]
    7480:	1898      	adds	r0, r3, r2
    7482:	1a89      	subs	r1, r1, r2
    7484:	4281      	cmp	r1, r0
    7486:	d201      	bcs.n	748c <_init_box+0x30>
    7488:	e011      	b.n	74ae <_init_box+0x52>
    748a:	0020      	movs	r0, r4
    748c:	1884      	adds	r4, r0, r2
    748e:	6018      	str	r0, [r3, #0]
    7490:	189b      	adds	r3, r3, r2
    7492:	42a1      	cmp	r1, r4
    7494:	d2f9      	bcs.n	748a <_init_box+0x2e>
    7496:	2300      	movs	r3, #0
    7498:	2400      	movs	r4, #0
    749a:	6003      	str	r3, [r0, #0]
    749c:	0020      	movs	r0, r4
    749e:	bd30      	pop	{r4, r5, pc}
    74a0:	2307      	movs	r3, #7
    74a2:	0052      	lsls	r2, r2, #1
    74a4:	0852      	lsrs	r2, r2, #1
    74a6:	3207      	adds	r2, #7
    74a8:	439a      	bics	r2, r3
    74aa:	3309      	adds	r3, #9
    74ac:	e7dd      	b.n	746a <_init_box+0xe>
    74ae:	0018      	movs	r0, r3
    74b0:	e7f1      	b.n	7496 <_init_box+0x3a>
    74b2:	46c0      	nop			; (mov r8, r8)

000074b4 <rt_alloc_box>:
    74b4:	f3ef 8310 	mrs	r3, PRIMASK
    74b8:	b672      	cpsid	i
    74ba:	2201      	movs	r2, #1
    74bc:	4013      	ands	r3, r2
    74be:	6802      	ldr	r2, [r0, #0]
    74c0:	2a00      	cmp	r2, #0
    74c2:	d001      	beq.n	74c8 <rt_alloc_box+0x14>
    74c4:	6811      	ldr	r1, [r2, #0]
    74c6:	6001      	str	r1, [r0, #0]
    74c8:	2b00      	cmp	r3, #0
    74ca:	d100      	bne.n	74ce <rt_alloc_box+0x1a>
    74cc:	b662      	cpsie	i
    74ce:	0010      	movs	r0, r2
    74d0:	4770      	bx	lr
    74d2:	46c0      	nop			; (mov r8, r8)

000074d4 <_calloc_box>:
    74d4:	b510      	push	{r4, lr}
    74d6:	0004      	movs	r4, r0
    74d8:	f7fd fb8b 	bl	4bf2 <_alloc_box>
    74dc:	2800      	cmp	r0, #0
    74de:	d008      	beq.n	74f2 <_calloc_box+0x1e>
    74e0:	68a3      	ldr	r3, [r4, #8]
    74e2:	2b00      	cmp	r3, #0
    74e4:	d005      	beq.n	74f2 <_calloc_box+0x1e>
    74e6:	0002      	movs	r2, r0
    74e8:	2100      	movs	r1, #0
    74ea:	3b04      	subs	r3, #4
    74ec:	c202      	stmia	r2!, {r1}
    74ee:	2b00      	cmp	r3, #0
    74f0:	d1fb      	bne.n	74ea <_calloc_box+0x16>
    74f2:	bd10      	pop	{r4, pc}

000074f4 <rt_free_box>:
    74f4:	0003      	movs	r3, r0
    74f6:	2001      	movs	r0, #1
    74f8:	4299      	cmp	r1, r3
    74fa:	d30b      	bcc.n	7514 <rt_free_box+0x20>
    74fc:	685a      	ldr	r2, [r3, #4]
    74fe:	4291      	cmp	r1, r2
    7500:	d208      	bcs.n	7514 <rt_free_box+0x20>
    7502:	f3ef 8210 	mrs	r2, PRIMASK
    7506:	b672      	cpsid	i
    7508:	4010      	ands	r0, r2
    750a:	681a      	ldr	r2, [r3, #0]
    750c:	600a      	str	r2, [r1, #0]
    750e:	6019      	str	r1, [r3, #0]
    7510:	d101      	bne.n	7516 <rt_free_box+0x22>
    7512:	b662      	cpsie	i
    7514:	4770      	bx	lr
    7516:	2000      	movs	r0, #0
    7518:	e7fc      	b.n	7514 <rt_free_box+0x20>
    751a:	46c0      	nop			; (mov r8, r8)

0000751c <rt_mut_init>:
    751c:	2303      	movs	r3, #3
    751e:	7003      	strb	r3, [r0, #0]
    7520:	2300      	movs	r3, #0
    7522:	8043      	strh	r3, [r0, #2]
    7524:	6043      	str	r3, [r0, #4]
    7526:	6083      	str	r3, [r0, #8]
    7528:	60c3      	str	r3, [r0, #12]
    752a:	4770      	bx	lr

0000752c <rt_mut_delete>:
    752c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    752e:	8843      	ldrh	r3, [r0, #2]
    7530:	0005      	movs	r5, r0
    7532:	2b00      	cmp	r3, #0
    7534:	d02c      	beq.n	7590 <rt_mut_delete+0x64>
    7536:	6880      	ldr	r0, [r0, #8]
    7538:	6a04      	ldr	r4, [r0, #32]
    753a:	42a5      	cmp	r5, r4
    753c:	d05a      	beq.n	75f4 <rt_mut_delete+0xc8>
    753e:	2c00      	cmp	r4, #0
    7540:	d01a      	beq.n	7578 <rt_mut_delete+0x4c>
    7542:	68e3      	ldr	r3, [r4, #12]
    7544:	429d      	cmp	r5, r3
    7546:	d050      	beq.n	75ea <rt_mut_delete+0xbe>
    7548:	001a      	movs	r2, r3
    754a:	e003      	b.n	7554 <rt_mut_delete+0x28>
    754c:	68d1      	ldr	r1, [r2, #12]
    754e:	428d      	cmp	r5, r1
    7550:	d04c      	beq.n	75ec <rt_mut_delete+0xc0>
    7552:	000a      	movs	r2, r1
    7554:	2a00      	cmp	r2, #0
    7556:	d1f9      	bne.n	754c <rt_mut_delete+0x20>
    7558:	2224      	movs	r2, #36	; 0x24
    755a:	5c81      	ldrb	r1, [r0, r2]
    755c:	6862      	ldr	r2, [r4, #4]
    755e:	2a00      	cmp	r2, #0
    7560:	d005      	beq.n	756e <rt_mut_delete+0x42>
    7562:	7892      	ldrb	r2, [r2, #2]
    7564:	1c14      	adds	r4, r2, #0
    7566:	428a      	cmp	r2, r1
    7568:	d200      	bcs.n	756c <rt_mut_delete+0x40>
    756a:	1c0c      	adds	r4, r1, #0
    756c:	b2e1      	uxtb	r1, r4
    756e:	2b00      	cmp	r3, #0
    7570:	d004      	beq.n	757c <rt_mut_delete+0x50>
    7572:	001c      	movs	r4, r3
    7574:	68db      	ldr	r3, [r3, #12]
    7576:	e7f1      	b.n	755c <rt_mut_delete+0x30>
    7578:	2324      	movs	r3, #36	; 0x24
    757a:	5cc1      	ldrb	r1, [r0, r3]
    757c:	7883      	ldrb	r3, [r0, #2]
    757e:	428b      	cmp	r3, r1
    7580:	d006      	beq.n	7590 <rt_mut_delete+0x64>
    7582:	4b20      	ldr	r3, [pc, #128]	; (7604 <rt_mut_delete+0xd8>)
    7584:	7081      	strb	r1, [r0, #2]
    7586:	681b      	ldr	r3, [r3, #0]
    7588:	4298      	cmp	r0, r3
    758a:	d001      	beq.n	7590 <rt_mut_delete+0x64>
    758c:	f000 fb72 	bl	7c74 <rt_resort_prio>
    7590:	686b      	ldr	r3, [r5, #4]
    7592:	4e1d      	ldr	r6, [pc, #116]	; (7608 <rt_mut_delete+0xdc>)
    7594:	2b00      	cmp	r3, #0
    7596:	d012      	beq.n	75be <rt_mut_delete+0x92>
    7598:	2701      	movs	r7, #1
    759a:	0028      	movs	r0, r5
    759c:	f000 fb3a 	bl	7c14 <rt_get_first>
    75a0:	0004      	movs	r4, r0
    75a2:	2100      	movs	r1, #0
    75a4:	f7ff ff04 	bl	73b0 <rt_ret_val>
    75a8:	0020      	movs	r0, r4
    75aa:	f000 fc6b 	bl	7e84 <rt_rmv_dly>
    75ae:	7067      	strb	r7, [r4, #1]
    75b0:	0021      	movs	r1, r4
    75b2:	0030      	movs	r0, r6
    75b4:	f000 fb08 	bl	7bc8 <rt_put_prio>
    75b8:	686b      	ldr	r3, [r5, #4]
    75ba:	2b00      	cmp	r3, #0
    75bc:	d1ed      	bne.n	759a <rt_mut_delete+0x6e>
    75be:	6873      	ldr	r3, [r6, #4]
    75c0:	2b00      	cmp	r3, #0
    75c2:	d00e      	beq.n	75e2 <rt_mut_delete+0xb6>
    75c4:	4c0f      	ldr	r4, [pc, #60]	; (7604 <rt_mut_delete+0xd8>)
    75c6:	789a      	ldrb	r2, [r3, #2]
    75c8:	6821      	ldr	r1, [r4, #0]
    75ca:	788b      	ldrb	r3, [r1, #2]
    75cc:	429a      	cmp	r2, r3
    75ce:	d908      	bls.n	75e2 <rt_mut_delete+0xb6>
    75d0:	0030      	movs	r0, r6
    75d2:	f000 faf9 	bl	7bc8 <rt_put_prio>
    75d6:	2201      	movs	r2, #1
    75d8:	6823      	ldr	r3, [r4, #0]
    75da:	2000      	movs	r0, #0
    75dc:	705a      	strb	r2, [r3, #1]
    75de:	f000 ff07 	bl	83f0 <rt_dispatch>
    75e2:	2300      	movs	r3, #0
    75e4:	2000      	movs	r0, #0
    75e6:	702b      	strb	r3, [r5, #0]
    75e8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    75ea:	0022      	movs	r2, r4
    75ec:	68eb      	ldr	r3, [r5, #12]
    75ee:	60d3      	str	r3, [r2, #12]
    75f0:	68e3      	ldr	r3, [r4, #12]
    75f2:	e7b1      	b.n	7558 <rt_mut_delete+0x2c>
    75f4:	2324      	movs	r3, #36	; 0x24
    75f6:	68ec      	ldr	r4, [r5, #12]
    75f8:	6204      	str	r4, [r0, #32]
    75fa:	5cc1      	ldrb	r1, [r0, r3]
    75fc:	2c00      	cmp	r4, #0
    75fe:	d0bd      	beq.n	757c <rt_mut_delete+0x50>
    7600:	68e3      	ldr	r3, [r4, #12]
    7602:	e7ab      	b.n	755c <rt_mut_delete+0x30>
    7604:	200060b8 	.word	0x200060b8
    7608:	20006084 	.word	0x20006084

0000760c <rt_mut_release>:
    760c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    760e:	8843      	ldrh	r3, [r0, #2]
    7610:	0004      	movs	r4, r0
    7612:	20ff      	movs	r0, #255	; 0xff
    7614:	2b00      	cmp	r3, #0
    7616:	d100      	bne.n	761a <rt_mut_release+0xe>
    7618:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    761a:	4d3c      	ldr	r5, [pc, #240]	; (770c <rt_mut_release+0x100>)
    761c:	68a1      	ldr	r1, [r4, #8]
    761e:	682a      	ldr	r2, [r5, #0]
    7620:	4291      	cmp	r1, r2
    7622:	d1f9      	bne.n	7618 <rt_mut_release+0xc>
    7624:	3b01      	subs	r3, #1
    7626:	b29b      	uxth	r3, r3
    7628:	8063      	strh	r3, [r4, #2]
    762a:	2b00      	cmp	r3, #0
    762c:	d140      	bne.n	76b0 <rt_mut_release+0xa4>
    762e:	6a0e      	ldr	r6, [r1, #32]
    7630:	42b4      	cmp	r4, r6
    7632:	d062      	beq.n	76fa <rt_mut_release+0xee>
    7634:	2e00      	cmp	r6, #0
    7636:	d01a      	beq.n	766e <rt_mut_release+0x62>
    7638:	68f3      	ldr	r3, [r6, #12]
    763a:	429c      	cmp	r4, r3
    763c:	d03a      	beq.n	76b4 <rt_mut_release+0xa8>
    763e:	001a      	movs	r2, r3
    7640:	e003      	b.n	764a <rt_mut_release+0x3e>
    7642:	68d0      	ldr	r0, [r2, #12]
    7644:	4284      	cmp	r4, r0
    7646:	d036      	beq.n	76b6 <rt_mut_release+0xaa>
    7648:	0002      	movs	r2, r0
    764a:	2a00      	cmp	r2, #0
    764c:	d1f9      	bne.n	7642 <rt_mut_release+0x36>
    764e:	2224      	movs	r2, #36	; 0x24
    7650:	5c8f      	ldrb	r7, [r1, r2]
    7652:	6872      	ldr	r2, [r6, #4]
    7654:	2a00      	cmp	r2, #0
    7656:	d005      	beq.n	7664 <rt_mut_release+0x58>
    7658:	7892      	ldrb	r2, [r2, #2]
    765a:	1c10      	adds	r0, r2, #0
    765c:	42ba      	cmp	r2, r7
    765e:	d200      	bcs.n	7662 <rt_mut_release+0x56>
    7660:	1c38      	adds	r0, r7, #0
    7662:	b2c7      	uxtb	r7, r0
    7664:	2b00      	cmp	r3, #0
    7666:	d004      	beq.n	7672 <rt_mut_release+0x66>
    7668:	001e      	movs	r6, r3
    766a:	68db      	ldr	r3, [r3, #12]
    766c:	e7f1      	b.n	7652 <rt_mut_release+0x46>
    766e:	2324      	movs	r3, #36	; 0x24
    7670:	5ccf      	ldrb	r7, [r1, r3]
    7672:	708f      	strb	r7, [r1, #2]
    7674:	6863      	ldr	r3, [r4, #4]
    7676:	2b00      	cmp	r3, #0
    7678:	d030      	beq.n	76dc <rt_mut_release+0xd0>
    767a:	0020      	movs	r0, r4
    767c:	f000 faca 	bl	7c14 <rt_get_first>
    7680:	0006      	movs	r6, r0
    7682:	2100      	movs	r1, #0
    7684:	f7ff fe94 	bl	73b0 <rt_ret_val>
    7688:	0030      	movs	r0, r6
    768a:	f000 fbfb 	bl	7e84 <rt_rmv_dly>
    768e:	2301      	movs	r3, #1
    7690:	8063      	strh	r3, [r4, #2]
    7692:	6a33      	ldr	r3, [r6, #32]
    7694:	60a6      	str	r6, [r4, #8]
    7696:	60e3      	str	r3, [r4, #12]
    7698:	6234      	str	r4, [r6, #32]
    769a:	4c1d      	ldr	r4, [pc, #116]	; (7710 <rt_mut_release+0x104>)
    769c:	6829      	ldr	r1, [r5, #0]
    769e:	6863      	ldr	r3, [r4, #4]
    76a0:	788a      	ldrb	r2, [r1, #2]
    76a2:	789b      	ldrb	r3, [r3, #2]
    76a4:	2701      	movs	r7, #1
    76a6:	429a      	cmp	r2, r3
    76a8:	d309      	bcc.n	76be <rt_mut_release+0xb2>
    76aa:	0030      	movs	r0, r6
    76ac:	f000 fea0 	bl	83f0 <rt_dispatch>
    76b0:	2000      	movs	r0, #0
    76b2:	e7b1      	b.n	7618 <rt_mut_release+0xc>
    76b4:	0032      	movs	r2, r6
    76b6:	68e3      	ldr	r3, [r4, #12]
    76b8:	60d3      	str	r3, [r2, #12]
    76ba:	68f3      	ldr	r3, [r6, #12]
    76bc:	e7c7      	b.n	764e <rt_mut_release+0x42>
    76be:	0020      	movs	r0, r4
    76c0:	f000 fa82 	bl	7bc8 <rt_put_prio>
    76c4:	0031      	movs	r1, r6
    76c6:	0020      	movs	r0, r4
    76c8:	f000 fa7e 	bl	7bc8 <rt_put_prio>
    76cc:	682b      	ldr	r3, [r5, #0]
    76ce:	2000      	movs	r0, #0
    76d0:	705f      	strb	r7, [r3, #1]
    76d2:	7077      	strb	r7, [r6, #1]
    76d4:	f000 fe8c 	bl	83f0 <rt_dispatch>
    76d8:	2000      	movs	r0, #0
    76da:	e79d      	b.n	7618 <rt_mut_release+0xc>
    76dc:	480c      	ldr	r0, [pc, #48]	; (7710 <rt_mut_release+0x104>)
    76de:	6843      	ldr	r3, [r0, #4]
    76e0:	789b      	ldrb	r3, [r3, #2]
    76e2:	42bb      	cmp	r3, r7
    76e4:	d9e4      	bls.n	76b0 <rt_mut_release+0xa4>
    76e6:	f000 fa6f 	bl	7bc8 <rt_put_prio>
    76ea:	2201      	movs	r2, #1
    76ec:	682b      	ldr	r3, [r5, #0]
    76ee:	2000      	movs	r0, #0
    76f0:	705a      	strb	r2, [r3, #1]
    76f2:	f000 fe7d 	bl	83f0 <rt_dispatch>
    76f6:	2000      	movs	r0, #0
    76f8:	e78e      	b.n	7618 <rt_mut_release+0xc>
    76fa:	2324      	movs	r3, #36	; 0x24
    76fc:	68e6      	ldr	r6, [r4, #12]
    76fe:	620e      	str	r6, [r1, #32]
    7700:	5ccf      	ldrb	r7, [r1, r3]
    7702:	2e00      	cmp	r6, #0
    7704:	d0b5      	beq.n	7672 <rt_mut_release+0x66>
    7706:	68f3      	ldr	r3, [r6, #12]
    7708:	e7a3      	b.n	7652 <rt_mut_release+0x46>
    770a:	46c0      	nop			; (mov r8, r8)
    770c:	200060b8 	.word	0x200060b8
    7710:	20006084 	.word	0x20006084

00007714 <rt_mut_wait>:
    7714:	b570      	push	{r4, r5, r6, lr}
    7716:	8843      	ldrh	r3, [r0, #2]
    7718:	0004      	movs	r4, r0
    771a:	000d      	movs	r5, r1
    771c:	2b00      	cmp	r3, #0
    771e:	d017      	beq.n	7750 <rt_mut_wait+0x3c>
    7720:	4e19      	ldr	r6, [pc, #100]	; (7788 <rt_mut_wait+0x74>)
    7722:	6882      	ldr	r2, [r0, #8]
    7724:	6831      	ldr	r1, [r6, #0]
    7726:	428a      	cmp	r2, r1
    7728:	d026      	beq.n	7778 <rt_mut_wait+0x64>
    772a:	2001      	movs	r0, #1
    772c:	2d00      	cmp	r5, #0
    772e:	d00e      	beq.n	774e <rt_mut_wait+0x3a>
    7730:	788b      	ldrb	r3, [r1, #2]
    7732:	7890      	ldrb	r0, [r2, #2]
    7734:	4298      	cmp	r0, r3
    7736:	d319      	bcc.n	776c <rt_mut_wait+0x58>
    7738:	6863      	ldr	r3, [r4, #4]
    773a:	2b00      	cmp	r3, #0
    773c:	d012      	beq.n	7764 <rt_mut_wait+0x50>
    773e:	0020      	movs	r0, r4
    7740:	f000 fa42 	bl	7bc8 <rt_put_prio>
    7744:	0028      	movs	r0, r5
    7746:	2109      	movs	r1, #9
    7748:	f000 fe78 	bl	843c <rt_block>
    774c:	2001      	movs	r0, #1
    774e:	bd70      	pop	{r4, r5, r6, pc}
    7750:	4b0d      	ldr	r3, [pc, #52]	; (7788 <rt_mut_wait+0x74>)
    7752:	681b      	ldr	r3, [r3, #0]
    7754:	6a1a      	ldr	r2, [r3, #32]
    7756:	6083      	str	r3, [r0, #8]
    7758:	60c2      	str	r2, [r0, #12]
    775a:	6218      	str	r0, [r3, #32]
    775c:	2301      	movs	r3, #1
    775e:	8043      	strh	r3, [r0, #2]
    7760:	2000      	movs	r0, #0
    7762:	e7f4      	b.n	774e <rt_mut_wait+0x3a>
    7764:	6061      	str	r1, [r4, #4]
    7766:	604b      	str	r3, [r1, #4]
    7768:	608c      	str	r4, [r1, #8]
    776a:	e7eb      	b.n	7744 <rt_mut_wait+0x30>
    776c:	7093      	strb	r3, [r2, #2]
    776e:	68a0      	ldr	r0, [r4, #8]
    7770:	f000 fa80 	bl	7c74 <rt_resort_prio>
    7774:	6831      	ldr	r1, [r6, #0]
    7776:	e7df      	b.n	7738 <rt_mut_wait+0x24>
    7778:	4a04      	ldr	r2, [pc, #16]	; (778c <rt_mut_wait+0x78>)
    777a:	20ff      	movs	r0, #255	; 0xff
    777c:	4293      	cmp	r3, r2
    777e:	d0e6      	beq.n	774e <rt_mut_wait+0x3a>
    7780:	3301      	adds	r3, #1
    7782:	8063      	strh	r3, [r4, #2]
    7784:	2000      	movs	r0, #0
    7786:	e7e2      	b.n	774e <rt_mut_wait+0x3a>
    7788:	200060b8 	.word	0x200060b8
    778c:	0000ffff 	.word	0x0000ffff

00007790 <rt_time_get>:
    7790:	4b01      	ldr	r3, [pc, #4]	; (7798 <rt_time_get+0x8>)
    7792:	6818      	ldr	r0, [r3, #0]
    7794:	4770      	bx	lr
    7796:	46c0      	nop			; (mov r8, r8)
    7798:	20006080 	.word	0x20006080

0000779c <rt_dly_wait>:
    779c:	b510      	push	{r4, lr}
    779e:	2103      	movs	r1, #3
    77a0:	f000 fe4c 	bl	843c <rt_block>
    77a4:	bd10      	pop	{r4, pc}
    77a6:	46c0      	nop			; (mov r8, r8)

000077a8 <rt_itv_set>:
    77a8:	4b03      	ldr	r3, [pc, #12]	; (77b8 <rt_itv_set+0x10>)
    77aa:	681a      	ldr	r2, [r3, #0]
    77ac:	4b03      	ldr	r3, [pc, #12]	; (77bc <rt_itv_set+0x14>)
    77ae:	82d0      	strh	r0, [r2, #22]
    77b0:	681b      	ldr	r3, [r3, #0]
    77b2:	18c0      	adds	r0, r0, r3
    77b4:	8290      	strh	r0, [r2, #20]
    77b6:	4770      	bx	lr
    77b8:	200060b8 	.word	0x200060b8
    77bc:	20006080 	.word	0x20006080

000077c0 <rt_itv_wait>:
    77c0:	b510      	push	{r4, lr}
    77c2:	4b08      	ldr	r3, [pc, #32]	; (77e4 <rt_itv_wait+0x24>)
    77c4:	681a      	ldr	r2, [r3, #0]
    77c6:	4b08      	ldr	r3, [pc, #32]	; (77e8 <rt_itv_wait+0x28>)
    77c8:	8a90      	ldrh	r0, [r2, #20]
    77ca:	681b      	ldr	r3, [r3, #0]
    77cc:	8ad1      	ldrh	r1, [r2, #22]
    77ce:	1ac3      	subs	r3, r0, r3
    77d0:	1841      	adds	r1, r0, r1
    77d2:	8291      	strh	r1, [r2, #20]
    77d4:	b298      	uxth	r0, r3
    77d6:	041b      	lsls	r3, r3, #16
    77d8:	d402      	bmi.n	77e0 <rt_itv_wait+0x20>
    77da:	2104      	movs	r1, #4
    77dc:	f000 fe2e 	bl	843c <rt_block>
    77e0:	bd10      	pop	{r4, pc}
    77e2:	46c0      	nop			; (mov r8, r8)
    77e4:	200060b8 	.word	0x200060b8
    77e8:	20006080 	.word	0x20006080

000077ec <rt_sem_init>:
    77ec:	2302      	movs	r3, #2
    77ee:	7003      	strb	r3, [r0, #0]
    77f0:	2300      	movs	r3, #0
    77f2:	8041      	strh	r1, [r0, #2]
    77f4:	6043      	str	r3, [r0, #4]
    77f6:	4770      	bx	lr

000077f8 <rt_sem_delete>:
    77f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    77fa:	6843      	ldr	r3, [r0, #4]
    77fc:	0005      	movs	r5, r0
    77fe:	4e16      	ldr	r6, [pc, #88]	; (7858 <rt_sem_delete+0x60>)
    7800:	2b00      	cmp	r3, #0
    7802:	d012      	beq.n	782a <rt_sem_delete+0x32>
    7804:	2701      	movs	r7, #1
    7806:	0028      	movs	r0, r5
    7808:	f000 fa04 	bl	7c14 <rt_get_first>
    780c:	0004      	movs	r4, r0
    780e:	2100      	movs	r1, #0
    7810:	f7ff fdce 	bl	73b0 <rt_ret_val>
    7814:	0020      	movs	r0, r4
    7816:	f000 fb35 	bl	7e84 <rt_rmv_dly>
    781a:	7067      	strb	r7, [r4, #1]
    781c:	0021      	movs	r1, r4
    781e:	0030      	movs	r0, r6
    7820:	f000 f9d2 	bl	7bc8 <rt_put_prio>
    7824:	686b      	ldr	r3, [r5, #4]
    7826:	2b00      	cmp	r3, #0
    7828:	d1ed      	bne.n	7806 <rt_sem_delete+0xe>
    782a:	6873      	ldr	r3, [r6, #4]
    782c:	2b00      	cmp	r3, #0
    782e:	d00e      	beq.n	784e <rt_sem_delete+0x56>
    7830:	4c0a      	ldr	r4, [pc, #40]	; (785c <rt_sem_delete+0x64>)
    7832:	789a      	ldrb	r2, [r3, #2]
    7834:	6821      	ldr	r1, [r4, #0]
    7836:	788b      	ldrb	r3, [r1, #2]
    7838:	429a      	cmp	r2, r3
    783a:	d908      	bls.n	784e <rt_sem_delete+0x56>
    783c:	0030      	movs	r0, r6
    783e:	f000 f9c3 	bl	7bc8 <rt_put_prio>
    7842:	2201      	movs	r2, #1
    7844:	6823      	ldr	r3, [r4, #0]
    7846:	2000      	movs	r0, #0
    7848:	705a      	strb	r2, [r3, #1]
    784a:	f000 fdd1 	bl	83f0 <rt_dispatch>
    784e:	2300      	movs	r3, #0
    7850:	2000      	movs	r0, #0
    7852:	702b      	strb	r3, [r5, #0]
    7854:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7856:	46c0      	nop			; (mov r8, r8)
    7858:	20006084 	.word	0x20006084
    785c:	200060b8 	.word	0x200060b8

00007860 <rt_sem_send>:
    7860:	6843      	ldr	r3, [r0, #4]
    7862:	b510      	push	{r4, lr}
    7864:	2b00      	cmp	r3, #0
    7866:	d00d      	beq.n	7884 <rt_sem_send+0x24>
    7868:	f000 f9d4 	bl	7c14 <rt_get_first>
    786c:	0004      	movs	r4, r0
    786e:	2101      	movs	r1, #1
    7870:	f7ff fd9e 	bl	73b0 <rt_ret_val>
    7874:	0020      	movs	r0, r4
    7876:	f000 fb05 	bl	7e84 <rt_rmv_dly>
    787a:	0020      	movs	r0, r4
    787c:	f000 fdb8 	bl	83f0 <rt_dispatch>
    7880:	2000      	movs	r0, #0
    7882:	bd10      	pop	{r4, pc}
    7884:	8843      	ldrh	r3, [r0, #2]
    7886:	3301      	adds	r3, #1
    7888:	8043      	strh	r3, [r0, #2]
    788a:	e7f9      	b.n	7880 <rt_sem_send+0x20>

0000788c <rt_sem_wait>:
    788c:	b510      	push	{r4, lr}
    788e:	8843      	ldrh	r3, [r0, #2]
    7890:	000c      	movs	r4, r1
    7892:	2b00      	cmp	r3, #0
    7894:	d110      	bne.n	78b8 <rt_sem_wait+0x2c>
    7896:	2301      	movs	r3, #1
    7898:	2900      	cmp	r1, #0
    789a:	d00b      	beq.n	78b4 <rt_sem_wait+0x28>
    789c:	6843      	ldr	r3, [r0, #4]
    789e:	2b00      	cmp	r3, #0
    78a0:	d00e      	beq.n	78c0 <rt_sem_wait+0x34>
    78a2:	4b0a      	ldr	r3, [pc, #40]	; (78cc <rt_sem_wait+0x40>)
    78a4:	6819      	ldr	r1, [r3, #0]
    78a6:	f000 f98f 	bl	7bc8 <rt_put_prio>
    78aa:	2107      	movs	r1, #7
    78ac:	0020      	movs	r0, r4
    78ae:	f000 fdc5 	bl	843c <rt_block>
    78b2:	2301      	movs	r3, #1
    78b4:	0018      	movs	r0, r3
    78b6:	bd10      	pop	{r4, pc}
    78b8:	3b01      	subs	r3, #1
    78ba:	8043      	strh	r3, [r0, #2]
    78bc:	2300      	movs	r3, #0
    78be:	e7f9      	b.n	78b4 <rt_sem_wait+0x28>
    78c0:	4a02      	ldr	r2, [pc, #8]	; (78cc <rt_sem_wait+0x40>)
    78c2:	6812      	ldr	r2, [r2, #0]
    78c4:	6042      	str	r2, [r0, #4]
    78c6:	6053      	str	r3, [r2, #4]
    78c8:	6090      	str	r0, [r2, #8]
    78ca:	e7ee      	b.n	78aa <rt_sem_wait+0x1e>
    78cc:	200060b8 	.word	0x200060b8

000078d0 <isr_sem_send>:
    78d0:	b510      	push	{r4, lr}
    78d2:	2100      	movs	r1, #0
    78d4:	f000 faec 	bl	7eb0 <rt_psq_enq>
    78d8:	f000 fcce 	bl	8278 <rt_psh_req>
    78dc:	bd10      	pop	{r4, pc}
    78de:	46c0      	nop			; (mov r8, r8)

000078e0 <rt_sem_psh>:
    78e0:	6843      	ldr	r3, [r0, #4]
    78e2:	b510      	push	{r4, lr}
    78e4:	2b00      	cmp	r3, #0
    78e6:	d00f      	beq.n	7908 <rt_sem_psh+0x28>
    78e8:	f000 f994 	bl	7c14 <rt_get_first>
    78ec:	0004      	movs	r4, r0
    78ee:	f000 fac9 	bl	7e84 <rt_rmv_dly>
    78f2:	2301      	movs	r3, #1
    78f4:	2101      	movs	r1, #1
    78f6:	0020      	movs	r0, r4
    78f8:	7063      	strb	r3, [r4, #1]
    78fa:	f7ff fd59 	bl	73b0 <rt_ret_val>
    78fe:	0021      	movs	r1, r4
    7900:	4803      	ldr	r0, [pc, #12]	; (7910 <rt_sem_psh+0x30>)
    7902:	f000 f961 	bl	7bc8 <rt_put_prio>
    7906:	bd10      	pop	{r4, pc}
    7908:	8843      	ldrh	r3, [r0, #2]
    790a:	3301      	adds	r3, #1
    790c:	8043      	strh	r3, [r0, #2]
    790e:	e7fa      	b.n	7906 <rt_sem_psh+0x26>
    7910:	20006084 	.word	0x20006084

00007914 <rt_mbx_init>:
    7914:	2301      	movs	r3, #1
    7916:	7003      	strb	r3, [r0, #0]
    7918:	2300      	movs	r3, #0
    791a:	3910      	subs	r1, #16
    791c:	0889      	lsrs	r1, r1, #2
    791e:	7043      	strb	r3, [r0, #1]
    7920:	7083      	strb	r3, [r0, #2]
    7922:	6043      	str	r3, [r0, #4]
    7924:	8103      	strh	r3, [r0, #8]
    7926:	8143      	strh	r3, [r0, #10]
    7928:	8183      	strh	r3, [r0, #12]
    792a:	81c1      	strh	r1, [r0, #14]
    792c:	4770      	bx	lr
    792e:	46c0      	nop			; (mov r8, r8)

00007930 <rt_mbx_send>:
    7930:	6843      	ldr	r3, [r0, #4]
    7932:	b570      	push	{r4, r5, r6, lr}
    7934:	000d      	movs	r5, r1
    7936:	0016      	movs	r6, r2
    7938:	2b00      	cmp	r3, #0
    793a:	d002      	beq.n	7942 <rt_mbx_send+0x12>
    793c:	7842      	ldrb	r2, [r0, #1]
    793e:	2a01      	cmp	r2, #1
    7940:	d028      	beq.n	7994 <rt_mbx_send+0x64>
    7942:	8982      	ldrh	r2, [r0, #12]
    7944:	89c4      	ldrh	r4, [r0, #14]
    7946:	42a2      	cmp	r2, r4
    7948:	d013      	beq.n	7972 <rt_mbx_send+0x42>
    794a:	8903      	ldrh	r3, [r0, #8]
    794c:	1d19      	adds	r1, r3, #4
    794e:	0089      	lsls	r1, r1, #2
    7950:	500d      	str	r5, [r1, r0]
    7952:	f3ef 8110 	mrs	r1, PRIMASK
    7956:	b672      	cpsid	i
    7958:	3201      	adds	r2, #1
    795a:	8182      	strh	r2, [r0, #12]
    795c:	b662      	cpsie	i
    795e:	3301      	adds	r3, #1
    7960:	b29b      	uxth	r3, r3
    7962:	429c      	cmp	r4, r3
    7964:	d003      	beq.n	796e <rt_mbx_send+0x3e>
    7966:	2200      	movs	r2, #0
    7968:	8103      	strh	r3, [r0, #8]
    796a:	0010      	movs	r0, r2
    796c:	bd70      	pop	{r4, r5, r6, pc}
    796e:	2300      	movs	r3, #0
    7970:	e7f9      	b.n	7966 <rt_mbx_send+0x36>
    7972:	2201      	movs	r2, #1
    7974:	2e00      	cmp	r6, #0
    7976:	d0f8      	beq.n	796a <rt_mbx_send+0x3a>
    7978:	2b00      	cmp	r3, #0
    797a:	d01a      	beq.n	79b2 <rt_mbx_send+0x82>
    797c:	4c11      	ldr	r4, [pc, #68]	; (79c4 <rt_mbx_send+0x94>)
    797e:	6821      	ldr	r1, [r4, #0]
    7980:	f000 f922 	bl	7bc8 <rt_put_prio>
    7984:	6822      	ldr	r2, [r4, #0]
    7986:	61d5      	str	r5, [r2, #28]
    7988:	2108      	movs	r1, #8
    798a:	0030      	movs	r0, r6
    798c:	f000 fd56 	bl	843c <rt_block>
    7990:	2201      	movs	r2, #1
    7992:	e7ea      	b.n	796a <rt_mbx_send+0x3a>
    7994:	f000 f93e 	bl	7c14 <rt_get_first>
    7998:	0004      	movs	r4, r0
    799a:	002a      	movs	r2, r5
    799c:	2110      	movs	r1, #16
    799e:	f7ff fd0b 	bl	73b8 <rt_ret_val2>
    79a2:	0020      	movs	r0, r4
    79a4:	f000 fa6e 	bl	7e84 <rt_rmv_dly>
    79a8:	0020      	movs	r0, r4
    79aa:	f000 fd21 	bl	83f0 <rt_dispatch>
    79ae:	2200      	movs	r2, #0
    79b0:	e7db      	b.n	796a <rt_mbx_send+0x3a>
    79b2:	4a04      	ldr	r2, [pc, #16]	; (79c4 <rt_mbx_send+0x94>)
    79b4:	6812      	ldr	r2, [r2, #0]
    79b6:	6042      	str	r2, [r0, #4]
    79b8:	6053      	str	r3, [r2, #4]
    79ba:	2302      	movs	r3, #2
    79bc:	6090      	str	r0, [r2, #8]
    79be:	7043      	strb	r3, [r0, #1]
    79c0:	e7e1      	b.n	7986 <rt_mbx_send+0x56>
    79c2:	46c0      	nop			; (mov r8, r8)
    79c4:	200060b8 	.word	0x200060b8

000079c8 <rt_mbx_wait>:
    79c8:	b570      	push	{r4, r5, r6, lr}
    79ca:	0015      	movs	r5, r2
    79cc:	8982      	ldrh	r2, [r0, #12]
    79ce:	0004      	movs	r4, r0
    79d0:	2a00      	cmp	r2, #0
    79d2:	d018      	beq.n	7a06 <rt_mbx_wait+0x3e>
    79d4:	8943      	ldrh	r3, [r0, #10]
    79d6:	1d18      	adds	r0, r3, #4
    79d8:	0080      	lsls	r0, r0, #2
    79da:	5900      	ldr	r0, [r0, r4]
    79dc:	3301      	adds	r3, #1
    79de:	6008      	str	r0, [r1, #0]
    79e0:	89e1      	ldrh	r1, [r4, #14]
    79e2:	b29b      	uxth	r3, r3
    79e4:	8163      	strh	r3, [r4, #10]
    79e6:	4299      	cmp	r1, r3
    79e8:	d01e      	beq.n	7a28 <rt_mbx_wait+0x60>
    79ea:	6863      	ldr	r3, [r4, #4]
    79ec:	2b00      	cmp	r3, #0
    79ee:	d002      	beq.n	79f6 <rt_mbx_wait+0x2e>
    79f0:	7863      	ldrb	r3, [r4, #1]
    79f2:	2b02      	cmp	r3, #2
    79f4:	d025      	beq.n	7a42 <rt_mbx_wait+0x7a>
    79f6:	f3ef 8310 	mrs	r3, PRIMASK
    79fa:	b672      	cpsid	i
    79fc:	3a01      	subs	r2, #1
    79fe:	81a2      	strh	r2, [r4, #12]
    7a00:	b662      	cpsie	i
    7a02:	2000      	movs	r0, #0
    7a04:	bd70      	pop	{r4, r5, r6, pc}
    7a06:	2001      	movs	r0, #1
    7a08:	2d00      	cmp	r5, #0
    7a0a:	d0fb      	beq.n	7a04 <rt_mbx_wait+0x3c>
    7a0c:	6863      	ldr	r3, [r4, #4]
    7a0e:	2b00      	cmp	r3, #0
    7a10:	d010      	beq.n	7a34 <rt_mbx_wait+0x6c>
    7a12:	4b1a      	ldr	r3, [pc, #104]	; (7a7c <rt_mbx_wait+0xb4>)
    7a14:	0020      	movs	r0, r4
    7a16:	6819      	ldr	r1, [r3, #0]
    7a18:	f000 f8d6 	bl	7bc8 <rt_put_prio>
    7a1c:	0028      	movs	r0, r5
    7a1e:	2108      	movs	r1, #8
    7a20:	f000 fd0c 	bl	843c <rt_block>
    7a24:	2001      	movs	r0, #1
    7a26:	e7ed      	b.n	7a04 <rt_mbx_wait+0x3c>
    7a28:	2300      	movs	r3, #0
    7a2a:	8163      	strh	r3, [r4, #10]
    7a2c:	6863      	ldr	r3, [r4, #4]
    7a2e:	2b00      	cmp	r3, #0
    7a30:	d1de      	bne.n	79f0 <rt_mbx_wait+0x28>
    7a32:	e7e0      	b.n	79f6 <rt_mbx_wait+0x2e>
    7a34:	4a11      	ldr	r2, [pc, #68]	; (7a7c <rt_mbx_wait+0xb4>)
    7a36:	6812      	ldr	r2, [r2, #0]
    7a38:	6062      	str	r2, [r4, #4]
    7a3a:	6053      	str	r3, [r2, #4]
    7a3c:	6094      	str	r4, [r2, #8]
    7a3e:	7060      	strb	r0, [r4, #1]
    7a40:	e7ec      	b.n	7a1c <rt_mbx_wait+0x54>
    7a42:	0020      	movs	r0, r4
    7a44:	f000 f8e6 	bl	7c14 <rt_get_first>
    7a48:	0005      	movs	r5, r0
    7a4a:	2100      	movs	r1, #0
    7a4c:	f7ff fcb0 	bl	73b0 <rt_ret_val>
    7a50:	8923      	ldrh	r3, [r4, #8]
    7a52:	69e9      	ldr	r1, [r5, #28]
    7a54:	1d1a      	adds	r2, r3, #4
    7a56:	0092      	lsls	r2, r2, #2
    7a58:	5111      	str	r1, [r2, r4]
    7a5a:	3301      	adds	r3, #1
    7a5c:	89e2      	ldrh	r2, [r4, #14]
    7a5e:	b29b      	uxth	r3, r3
    7a60:	8123      	strh	r3, [r4, #8]
    7a62:	429a      	cmp	r2, r3
    7a64:	d101      	bne.n	7a6a <rt_mbx_wait+0xa2>
    7a66:	2300      	movs	r3, #0
    7a68:	8123      	strh	r3, [r4, #8]
    7a6a:	0028      	movs	r0, r5
    7a6c:	f000 fa0a 	bl	7e84 <rt_rmv_dly>
    7a70:	0028      	movs	r0, r5
    7a72:	f000 fcbd 	bl	83f0 <rt_dispatch>
    7a76:	2000      	movs	r0, #0
    7a78:	e7c4      	b.n	7a04 <rt_mbx_wait+0x3c>
    7a7a:	46c0      	nop			; (mov r8, r8)
    7a7c:	200060b8 	.word	0x200060b8

00007a80 <rt_mbx_check>:
    7a80:	89c3      	ldrh	r3, [r0, #14]
    7a82:	8980      	ldrh	r0, [r0, #12]
    7a84:	1a18      	subs	r0, r3, r0
    7a86:	4770      	bx	lr

00007a88 <isr_mbx_send>:
    7a88:	b510      	push	{r4, lr}
    7a8a:	f000 fa11 	bl	7eb0 <rt_psq_enq>
    7a8e:	f000 fbf3 	bl	8278 <rt_psh_req>
    7a92:	bd10      	pop	{r4, pc}

00007a94 <isr_mbx_receive>:
    7a94:	b510      	push	{r4, lr}
    7a96:	8982      	ldrh	r2, [r0, #12]
    7a98:	0004      	movs	r4, r0
    7a9a:	2000      	movs	r0, #0
    7a9c:	2a00      	cmp	r2, #0
    7a9e:	d017      	beq.n	7ad0 <isr_mbx_receive+0x3c>
    7aa0:	8963      	ldrh	r3, [r4, #10]
    7aa2:	1d18      	adds	r0, r3, #4
    7aa4:	0080      	lsls	r0, r0, #2
    7aa6:	5900      	ldr	r0, [r0, r4]
    7aa8:	6008      	str	r0, [r1, #0]
    7aaa:	6861      	ldr	r1, [r4, #4]
    7aac:	2900      	cmp	r1, #0
    7aae:	d002      	beq.n	7ab6 <isr_mbx_receive+0x22>
    7ab0:	7861      	ldrb	r1, [r4, #1]
    7ab2:	2902      	cmp	r1, #2
    7ab4:	d010      	beq.n	7ad8 <isr_mbx_receive+0x44>
    7ab6:	f3ef 8110 	mrs	r1, PRIMASK
    7aba:	b672      	cpsid	i
    7abc:	3a01      	subs	r2, #1
    7abe:	81a2      	strh	r2, [r4, #12]
    7ac0:	b662      	cpsie	i
    7ac2:	3301      	adds	r3, #1
    7ac4:	89e2      	ldrh	r2, [r4, #14]
    7ac6:	b29b      	uxth	r3, r3
    7ac8:	8163      	strh	r3, [r4, #10]
    7aca:	2004      	movs	r0, #4
    7acc:	429a      	cmp	r2, r3
    7ace:	d000      	beq.n	7ad2 <isr_mbx_receive+0x3e>
    7ad0:	bd10      	pop	{r4, pc}
    7ad2:	2300      	movs	r3, #0
    7ad4:	8163      	strh	r3, [r4, #10]
    7ad6:	e7fb      	b.n	7ad0 <isr_mbx_receive+0x3c>
    7ad8:	2100      	movs	r1, #0
    7ada:	0020      	movs	r0, r4
    7adc:	f000 f9e8 	bl	7eb0 <rt_psq_enq>
    7ae0:	f000 fbca 	bl	8278 <rt_psh_req>
    7ae4:	89a2      	ldrh	r2, [r4, #12]
    7ae6:	8963      	ldrh	r3, [r4, #10]
    7ae8:	e7e5      	b.n	7ab6 <isr_mbx_receive+0x22>
    7aea:	46c0      	nop			; (mov r8, r8)

00007aec <rt_mbx_psh>:
    7aec:	6843      	ldr	r3, [r0, #4]
    7aee:	b570      	push	{r4, r5, r6, lr}
    7af0:	0004      	movs	r4, r0
    7af2:	000e      	movs	r6, r1
    7af4:	2b00      	cmp	r3, #0
    7af6:	d04b      	beq.n	7b90 <rt_mbx_psh+0xa4>
    7af8:	7845      	ldrb	r5, [r0, #1]
    7afa:	2d02      	cmp	r5, #2
    7afc:	d023      	beq.n	7b46 <rt_mbx_psh+0x5a>
    7afe:	2d03      	cmp	r5, #3
    7b00:	d002      	beq.n	7b08 <rt_mbx_psh+0x1c>
    7b02:	2d01      	cmp	r5, #1
    7b04:	d00f      	beq.n	7b26 <rt_mbx_psh+0x3a>
    7b06:	bd70      	pop	{r4, r5, r6, pc}
    7b08:	0008      	movs	r0, r1
    7b0a:	f7ff fcd3 	bl	74b4 <rt_alloc_box>
    7b0e:	1e05      	subs	r5, r0, #0
    7b10:	d0f9      	beq.n	7b06 <rt_mbx_psh+0x1a>
    7b12:	0020      	movs	r0, r4
    7b14:	f000 f87e 	bl	7c14 <rt_get_first>
    7b18:	0029      	movs	r1, r5
    7b1a:	0004      	movs	r4, r0
    7b1c:	f7ff fc48 	bl	73b0 <rt_ret_val>
    7b20:	2301      	movs	r3, #1
    7b22:	7063      	strb	r3, [r4, #1]
    7b24:	e007      	b.n	7b36 <rt_mbx_psh+0x4a>
    7b26:	f000 f875 	bl	7c14 <rt_get_first>
    7b2a:	0004      	movs	r4, r0
    7b2c:	0032      	movs	r2, r6
    7b2e:	2110      	movs	r1, #16
    7b30:	f7ff fc42 	bl	73b8 <rt_ret_val2>
    7b34:	7065      	strb	r5, [r4, #1]
    7b36:	0020      	movs	r0, r4
    7b38:	f000 f9a4 	bl	7e84 <rt_rmv_dly>
    7b3c:	0021      	movs	r1, r4
    7b3e:	4821      	ldr	r0, [pc, #132]	; (7bc4 <rt_mbx_psh+0xd8>)
    7b40:	f000 f842 	bl	7bc8 <rt_put_prio>
    7b44:	e7df      	b.n	7b06 <rt_mbx_psh+0x1a>
    7b46:	f000 f865 	bl	7c14 <rt_get_first>
    7b4a:	0005      	movs	r5, r0
    7b4c:	2100      	movs	r1, #0
    7b4e:	f7ff fc2f 	bl	73b0 <rt_ret_val>
    7b52:	8923      	ldrh	r3, [r4, #8]
    7b54:	69e9      	ldr	r1, [r5, #28]
    7b56:	1d1a      	adds	r2, r3, #4
    7b58:	0092      	lsls	r2, r2, #2
    7b5a:	5111      	str	r1, [r2, r4]
    7b5c:	f3ef 8210 	mrs	r2, PRIMASK
    7b60:	b672      	cpsid	i
    7b62:	89a2      	ldrh	r2, [r4, #12]
    7b64:	3201      	adds	r2, #1
    7b66:	81a2      	strh	r2, [r4, #12]
    7b68:	b662      	cpsie	i
    7b6a:	3301      	adds	r3, #1
    7b6c:	89e2      	ldrh	r2, [r4, #14]
    7b6e:	b29b      	uxth	r3, r3
    7b70:	8123      	strh	r3, [r4, #8]
    7b72:	429a      	cmp	r2, r3
    7b74:	d009      	beq.n	7b8a <rt_mbx_psh+0x9e>
    7b76:	2301      	movs	r3, #1
    7b78:	0028      	movs	r0, r5
    7b7a:	706b      	strb	r3, [r5, #1]
    7b7c:	f000 f982 	bl	7e84 <rt_rmv_dly>
    7b80:	0029      	movs	r1, r5
    7b82:	4810      	ldr	r0, [pc, #64]	; (7bc4 <rt_mbx_psh+0xd8>)
    7b84:	f000 f820 	bl	7bc8 <rt_put_prio>
    7b88:	e7bd      	b.n	7b06 <rt_mbx_psh+0x1a>
    7b8a:	2300      	movs	r3, #0
    7b8c:	8123      	strh	r3, [r4, #8]
    7b8e:	e7f2      	b.n	7b76 <rt_mbx_psh+0x8a>
    7b90:	8981      	ldrh	r1, [r0, #12]
    7b92:	89c5      	ldrh	r5, [r0, #14]
    7b94:	42a9      	cmp	r1, r5
    7b96:	d20f      	bcs.n	7bb8 <rt_mbx_psh+0xcc>
    7b98:	8902      	ldrh	r2, [r0, #8]
    7b9a:	1d10      	adds	r0, r2, #4
    7b9c:	0080      	lsls	r0, r0, #2
    7b9e:	5106      	str	r6, [r0, r4]
    7ba0:	f3ef 8010 	mrs	r0, PRIMASK
    7ba4:	b672      	cpsid	i
    7ba6:	3101      	adds	r1, #1
    7ba8:	81a1      	strh	r1, [r4, #12]
    7baa:	b662      	cpsie	i
    7bac:	3201      	adds	r2, #1
    7bae:	b292      	uxth	r2, r2
    7bb0:	4295      	cmp	r5, r2
    7bb2:	d005      	beq.n	7bc0 <rt_mbx_psh+0xd4>
    7bb4:	8122      	strh	r2, [r4, #8]
    7bb6:	e7a6      	b.n	7b06 <rt_mbx_psh+0x1a>
    7bb8:	2003      	movs	r0, #3
    7bba:	f7f9 ff2b 	bl	1a14 <os_error>
    7bbe:	e7a2      	b.n	7b06 <rt_mbx_psh+0x1a>
    7bc0:	8123      	strh	r3, [r4, #8]
    7bc2:	e7a0      	b.n	7b06 <rt_mbx_psh+0x1a>
    7bc4:	20006084 	.word	0x20006084

00007bc8 <rt_put_prio>:
    7bc8:	b530      	push	{r4, r5, lr}
    7bca:	7805      	ldrb	r5, [r0, #0]
    7bcc:	6842      	ldr	r2, [r0, #4]
    7bce:	3d01      	subs	r5, #1
    7bd0:	b2ed      	uxtb	r5, r5
    7bd2:	788c      	ldrb	r4, [r1, #2]
    7bd4:	2a00      	cmp	r2, #0
    7bd6:	d01a      	beq.n	7c0e <rt_put_prio+0x46>
    7bd8:	7893      	ldrb	r3, [r2, #2]
    7bda:	42a3      	cmp	r3, r4
    7bdc:	d204      	bcs.n	7be8 <rt_put_prio+0x20>
    7bde:	e00e      	b.n	7bfe <rt_put_prio+0x36>
    7be0:	7898      	ldrb	r0, [r3, #2]
    7be2:	4284      	cmp	r4, r0
    7be4:	d80d      	bhi.n	7c02 <rt_put_prio+0x3a>
    7be6:	001a      	movs	r2, r3
    7be8:	6853      	ldr	r3, [r2, #4]
    7bea:	2b00      	cmp	r3, #0
    7bec:	d1f8      	bne.n	7be0 <rt_put_prio+0x18>
    7bee:	2300      	movs	r3, #0
    7bf0:	604b      	str	r3, [r1, #4]
    7bf2:	6051      	str	r1, [r2, #4]
    7bf4:	2d02      	cmp	r5, #2
    7bf6:	d900      	bls.n	7bfa <rt_put_prio+0x32>
    7bf8:	2200      	movs	r2, #0
    7bfa:	608a      	str	r2, [r1, #8]
    7bfc:	bd30      	pop	{r4, r5, pc}
    7bfe:	0013      	movs	r3, r2
    7c00:	0002      	movs	r2, r0
    7c02:	604b      	str	r3, [r1, #4]
    7c04:	6051      	str	r1, [r2, #4]
    7c06:	2d02      	cmp	r5, #2
    7c08:	d8f6      	bhi.n	7bf8 <rt_put_prio+0x30>
    7c0a:	6099      	str	r1, [r3, #8]
    7c0c:	e7f5      	b.n	7bfa <rt_put_prio+0x32>
    7c0e:	0002      	movs	r2, r0
    7c10:	e7ed      	b.n	7bee <rt_put_prio+0x26>
    7c12:	46c0      	nop			; (mov r8, r8)

00007c14 <rt_get_first>:
    7c14:	6843      	ldr	r3, [r0, #4]
    7c16:	7802      	ldrb	r2, [r0, #0]
    7c18:	6859      	ldr	r1, [r3, #4]
    7c1a:	3a01      	subs	r2, #1
    7c1c:	6041      	str	r1, [r0, #4]
    7c1e:	2a02      	cmp	r2, #2
    7c20:	d808      	bhi.n	7c34 <rt_get_first+0x20>
    7c22:	2900      	cmp	r1, #0
    7c24:	d002      	beq.n	7c2c <rt_get_first+0x18>
    7c26:	2200      	movs	r2, #0
    7c28:	6088      	str	r0, [r1, #8]
    7c2a:	605a      	str	r2, [r3, #4]
    7c2c:	2200      	movs	r2, #0
    7c2e:	609a      	str	r2, [r3, #8]
    7c30:	0018      	movs	r0, r3
    7c32:	4770      	bx	lr
    7c34:	2200      	movs	r2, #0
    7c36:	605a      	str	r2, [r3, #4]
    7c38:	e7fa      	b.n	7c30 <rt_get_first+0x1c>
    7c3a:	46c0      	nop			; (mov r8, r8)

00007c3c <rt_put_rdy_first>:
    7c3c:	4b03      	ldr	r3, [pc, #12]	; (7c4c <rt_put_rdy_first+0x10>)
    7c3e:	685a      	ldr	r2, [r3, #4]
    7c40:	6042      	str	r2, [r0, #4]
    7c42:	2200      	movs	r2, #0
    7c44:	6058      	str	r0, [r3, #4]
    7c46:	6082      	str	r2, [r0, #8]
    7c48:	4770      	bx	lr
    7c4a:	46c0      	nop			; (mov r8, r8)
    7c4c:	20006084 	.word	0x20006084

00007c50 <rt_get_same_rdy_prio>:
    7c50:	4b06      	ldr	r3, [pc, #24]	; (7c6c <rt_get_same_rdy_prio+0x1c>)
    7c52:	4a07      	ldr	r2, [pc, #28]	; (7c70 <rt_get_same_rdy_prio+0x20>)
    7c54:	6858      	ldr	r0, [r3, #4]
    7c56:	6812      	ldr	r2, [r2, #0]
    7c58:	7881      	ldrb	r1, [r0, #2]
    7c5a:	7892      	ldrb	r2, [r2, #2]
    7c5c:	4291      	cmp	r1, r2
    7c5e:	d102      	bne.n	7c66 <rt_get_same_rdy_prio+0x16>
    7c60:	6842      	ldr	r2, [r0, #4]
    7c62:	605a      	str	r2, [r3, #4]
    7c64:	4770      	bx	lr
    7c66:	2000      	movs	r0, #0
    7c68:	e7fc      	b.n	7c64 <rt_get_same_rdy_prio+0x14>
    7c6a:	46c0      	nop			; (mov r8, r8)
    7c6c:	20006084 	.word	0x20006084
    7c70:	200060b8 	.word	0x200060b8

00007c74 <rt_resort_prio>:
    7c74:	6881      	ldr	r1, [r0, #8]
    7c76:	b530      	push	{r4, r5, lr}
    7c78:	2900      	cmp	r1, #0
    7c7a:	d030      	beq.n	7cde <rt_resort_prio+0x6a>
    7c7c:	780b      	ldrb	r3, [r1, #0]
    7c7e:	000a      	movs	r2, r1
    7c80:	2b00      	cmp	r3, #0
    7c82:	d103      	bne.n	7c8c <rt_resort_prio+0x18>
    7c84:	6892      	ldr	r2, [r2, #8]
    7c86:	7813      	ldrb	r3, [r2, #0]
    7c88:	2b00      	cmp	r3, #0
    7c8a:	d0fb      	beq.n	7c84 <rt_resort_prio+0x10>
    7c8c:	6843      	ldr	r3, [r0, #4]
    7c8e:	604b      	str	r3, [r1, #4]
    7c90:	6843      	ldr	r3, [r0, #4]
    7c92:	2b00      	cmp	r3, #0
    7c94:	d000      	beq.n	7c98 <rt_resort_prio+0x24>
    7c96:	6099      	str	r1, [r3, #8]
    7c98:	7815      	ldrb	r5, [r2, #0]
    7c9a:	6851      	ldr	r1, [r2, #4]
    7c9c:	3d01      	subs	r5, #1
    7c9e:	b2ed      	uxtb	r5, r5
    7ca0:	7884      	ldrb	r4, [r0, #2]
    7ca2:	2900      	cmp	r1, #0
    7ca4:	d029      	beq.n	7cfa <rt_resort_prio+0x86>
    7ca6:	788b      	ldrb	r3, [r1, #2]
    7ca8:	42a3      	cmp	r3, r4
    7caa:	d204      	bcs.n	7cb6 <rt_resort_prio+0x42>
    7cac:	e00e      	b.n	7ccc <rt_resort_prio+0x58>
    7cae:	789a      	ldrb	r2, [r3, #2]
    7cb0:	4294      	cmp	r4, r2
    7cb2:	d80d      	bhi.n	7cd0 <rt_resort_prio+0x5c>
    7cb4:	0019      	movs	r1, r3
    7cb6:	684b      	ldr	r3, [r1, #4]
    7cb8:	2b00      	cmp	r3, #0
    7cba:	d1f8      	bne.n	7cae <rt_resort_prio+0x3a>
    7cbc:	2300      	movs	r3, #0
    7cbe:	6043      	str	r3, [r0, #4]
    7cc0:	6048      	str	r0, [r1, #4]
    7cc2:	2d02      	cmp	r5, #2
    7cc4:	d909      	bls.n	7cda <rt_resort_prio+0x66>
    7cc6:	2300      	movs	r3, #0
    7cc8:	6083      	str	r3, [r0, #8]
    7cca:	bd30      	pop	{r4, r5, pc}
    7ccc:	000b      	movs	r3, r1
    7cce:	0011      	movs	r1, r2
    7cd0:	6043      	str	r3, [r0, #4]
    7cd2:	6048      	str	r0, [r1, #4]
    7cd4:	2d02      	cmp	r5, #2
    7cd6:	d8f6      	bhi.n	7cc6 <rt_resort_prio+0x52>
    7cd8:	6098      	str	r0, [r3, #8]
    7cda:	6081      	str	r1, [r0, #8]
    7cdc:	e7f5      	b.n	7cca <rt_resort_prio+0x56>
    7cde:	7843      	ldrb	r3, [r0, #1]
    7ce0:	2b01      	cmp	r3, #1
    7ce2:	d1f2      	bne.n	7cca <rt_resort_prio+0x56>
    7ce4:	4a06      	ldr	r2, [pc, #24]	; (7d00 <rt_resort_prio+0x8c>)
    7ce6:	0013      	movs	r3, r2
    7ce8:	e001      	b.n	7cee <rt_resort_prio+0x7a>
    7cea:	1e0b      	subs	r3, r1, #0
    7cec:	d0d4      	beq.n	7c98 <rt_resort_prio+0x24>
    7cee:	6859      	ldr	r1, [r3, #4]
    7cf0:	4288      	cmp	r0, r1
    7cf2:	d1fa      	bne.n	7cea <rt_resort_prio+0x76>
    7cf4:	6841      	ldr	r1, [r0, #4]
    7cf6:	6059      	str	r1, [r3, #4]
    7cf8:	e7ce      	b.n	7c98 <rt_resort_prio+0x24>
    7cfa:	0011      	movs	r1, r2
    7cfc:	e7de      	b.n	7cbc <rt_resort_prio+0x48>
    7cfe:	46c0      	nop			; (mov r8, r8)
    7d00:	20006084 	.word	0x20006084

00007d04 <rt_put_dly>:
    7d04:	b530      	push	{r4, r5, lr}
    7d06:	4c17      	ldr	r4, [pc, #92]	; (7d64 <rt_put_dly+0x60>)
    7d08:	68e2      	ldr	r2, [r4, #12]
    7d0a:	2a00      	cmp	r2, #0
    7d0c:	d023      	beq.n	7d56 <rt_put_dly+0x52>
    7d0e:	8aa3      	ldrh	r3, [r4, #20]
    7d10:	4299      	cmp	r1, r3
    7d12:	d804      	bhi.n	7d1e <rt_put_dly+0x1a>
    7d14:	e022      	b.n	7d5c <rt_put_dly+0x58>
    7d16:	68d4      	ldr	r4, [r2, #12]
    7d18:	2c00      	cmp	r4, #0
    7d1a:	d013      	beq.n	7d44 <rt_put_dly+0x40>
    7d1c:	0022      	movs	r2, r4
    7d1e:	8a94      	ldrh	r4, [r2, #20]
    7d20:	191b      	adds	r3, r3, r4
    7d22:	4299      	cmp	r1, r3
    7d24:	d8f7      	bhi.n	7d16 <rt_put_dly+0x12>
    7d26:	68d5      	ldr	r5, [r2, #12]
    7d28:	60c5      	str	r5, [r0, #12]
    7d2a:	60d0      	str	r0, [r2, #12]
    7d2c:	68c4      	ldr	r4, [r0, #12]
    7d2e:	6102      	str	r2, [r0, #16]
    7d30:	2c00      	cmp	r4, #0
    7d32:	d000      	beq.n	7d36 <rt_put_dly+0x32>
    7d34:	6120      	str	r0, [r4, #16]
    7d36:	1a5b      	subs	r3, r3, r1
    7d38:	b29b      	uxth	r3, r3
    7d3a:	8283      	strh	r3, [r0, #20]
    7d3c:	8a91      	ldrh	r1, [r2, #20]
    7d3e:	1acb      	subs	r3, r1, r3
    7d40:	8293      	strh	r3, [r2, #20]
    7d42:	bd30      	pop	{r4, r5, pc}
    7d44:	b29b      	uxth	r3, r3
    7d46:	2400      	movs	r4, #0
    7d48:	1acb      	subs	r3, r1, r3
    7d4a:	60c4      	str	r4, [r0, #12]
    7d4c:	60d0      	str	r0, [r2, #12]
    7d4e:	6102      	str	r2, [r0, #16]
    7d50:	8293      	strh	r3, [r2, #20]
    7d52:	8284      	strh	r4, [r0, #20]
    7d54:	e7f5      	b.n	7d42 <rt_put_dly+0x3e>
    7d56:	2300      	movs	r3, #0
    7d58:	0022      	movs	r2, r4
    7d5a:	e7f4      	b.n	7d46 <rt_put_dly+0x42>
    7d5c:	0015      	movs	r5, r2
    7d5e:	0022      	movs	r2, r4
    7d60:	e7e2      	b.n	7d28 <rt_put_dly+0x24>
    7d62:	46c0      	nop			; (mov r8, r8)
    7d64:	2000609c 	.word	0x2000609c

00007d68 <rt_dec_dly>:
    7d68:	b5f0      	push	{r4, r5, r6, r7, lr}
    7d6a:	464e      	mov	r6, r9
    7d6c:	4657      	mov	r7, sl
    7d6e:	4645      	mov	r5, r8
    7d70:	b4e0      	push	{r5, r6, r7}
    7d72:	4e36      	ldr	r6, [pc, #216]	; (7e4c <rt_dec_dly+0xe4>)
    7d74:	68f0      	ldr	r0, [r6, #12]
    7d76:	2800      	cmp	r0, #0
    7d78:	d059      	beq.n	7e2e <rt_dec_dly+0xc6>
    7d7a:	8ab3      	ldrh	r3, [r6, #20]
    7d7c:	3b01      	subs	r3, #1
    7d7e:	b29b      	uxth	r3, r3
    7d80:	82b3      	strh	r3, [r6, #20]
    7d82:	2b00      	cmp	r3, #0
    7d84:	d153      	bne.n	7e2e <rt_dec_dly+0xc6>
    7d86:	4b32      	ldr	r3, [pc, #200]	; (7e50 <rt_dec_dly+0xe8>)
    7d88:	2500      	movs	r5, #0
    7d8a:	469c      	mov	ip, r3
    7d8c:	781f      	ldrb	r7, [r3, #0]
    7d8e:	4b31      	ldr	r3, [pc, #196]	; (7e54 <rt_dec_dly+0xec>)
    7d90:	46e2      	mov	sl, ip
    7d92:	881b      	ldrh	r3, [r3, #0]
    7d94:	3f01      	subs	r7, #1
    7d96:	4699      	mov	r9, r3
    7d98:	2301      	movs	r3, #1
    7d9a:	4698      	mov	r8, r3
    7d9c:	b2ff      	uxtb	r7, r7
    7d9e:	6883      	ldr	r3, [r0, #8]
    7da0:	2b00      	cmp	r3, #0
    7da2:	d007      	beq.n	7db4 <rt_dec_dly+0x4c>
    7da4:	6842      	ldr	r2, [r0, #4]
    7da6:	605a      	str	r2, [r3, #4]
    7da8:	6842      	ldr	r2, [r0, #4]
    7daa:	2a00      	cmp	r2, #0
    7dac:	d001      	beq.n	7db2 <rt_dec_dly+0x4a>
    7dae:	6093      	str	r3, [r2, #8]
    7db0:	6045      	str	r5, [r0, #4]
    7db2:	6085      	str	r5, [r0, #8]
    7db4:	4663      	mov	r3, ip
    7db6:	685a      	ldr	r2, [r3, #4]
    7db8:	7884      	ldrb	r4, [r0, #2]
    7dba:	2a00      	cmp	r2, #0
    7dbc:	d03c      	beq.n	7e38 <rt_dec_dly+0xd0>
    7dbe:	7893      	ldrb	r3, [r2, #2]
    7dc0:	42a3      	cmp	r3, r4
    7dc2:	d204      	bcs.n	7dce <rt_dec_dly+0x66>
    7dc4:	e01c      	b.n	7e00 <rt_dec_dly+0x98>
    7dc6:	7899      	ldrb	r1, [r3, #2]
    7dc8:	428c      	cmp	r4, r1
    7dca:	d81b      	bhi.n	7e04 <rt_dec_dly+0x9c>
    7dcc:	001a      	movs	r2, r3
    7dce:	6853      	ldr	r3, [r2, #4]
    7dd0:	2b00      	cmp	r3, #0
    7dd2:	d1f8      	bne.n	7dc6 <rt_dec_dly+0x5e>
    7dd4:	6045      	str	r5, [r0, #4]
    7dd6:	6050      	str	r0, [r2, #4]
    7dd8:	2f02      	cmp	r7, #2
    7dda:	d900      	bls.n	7dde <rt_dec_dly+0x76>
    7ddc:	2200      	movs	r2, #0
    7dde:	7843      	ldrb	r3, [r0, #1]
    7de0:	6082      	str	r2, [r0, #8]
    7de2:	8a82      	ldrh	r2, [r0, #20]
    7de4:	2b04      	cmp	r3, #4
    7de6:	d017      	beq.n	7e18 <rt_dec_dly+0xb0>
    7de8:	4643      	mov	r3, r8
    7dea:	7043      	strb	r3, [r0, #1]
    7dec:	68c3      	ldr	r3, [r0, #12]
    7dee:	2b00      	cmp	r3, #0
    7df0:	d01a      	beq.n	7e28 <rt_dec_dly+0xc0>
    7df2:	611e      	str	r6, [r3, #16]
    7df4:	60c5      	str	r5, [r0, #12]
    7df6:	6105      	str	r5, [r0, #16]
    7df8:	2a00      	cmp	r2, #0
    7dfa:	d123      	bne.n	7e44 <rt_dec_dly+0xdc>
    7dfc:	0018      	movs	r0, r3
    7dfe:	e7ce      	b.n	7d9e <rt_dec_dly+0x36>
    7e00:	0013      	movs	r3, r2
    7e02:	4652      	mov	r2, sl
    7e04:	6043      	str	r3, [r0, #4]
    7e06:	6050      	str	r0, [r2, #4]
    7e08:	2f02      	cmp	r7, #2
    7e0a:	d8e7      	bhi.n	7ddc <rt_dec_dly+0x74>
    7e0c:	6098      	str	r0, [r3, #8]
    7e0e:	7843      	ldrb	r3, [r0, #1]
    7e10:	6082      	str	r2, [r0, #8]
    7e12:	8a82      	ldrh	r2, [r0, #20]
    7e14:	2b04      	cmp	r3, #4
    7e16:	d1e7      	bne.n	7de8 <rt_dec_dly+0x80>
    7e18:	8ac3      	ldrh	r3, [r0, #22]
    7e1a:	444b      	add	r3, r9
    7e1c:	8283      	strh	r3, [r0, #20]
    7e1e:	4643      	mov	r3, r8
    7e20:	7043      	strb	r3, [r0, #1]
    7e22:	68c3      	ldr	r3, [r0, #12]
    7e24:	2b00      	cmp	r3, #0
    7e26:	d1e4      	bne.n	7df2 <rt_dec_dly+0x8a>
    7e28:	82b2      	strh	r2, [r6, #20]
    7e2a:	60f3      	str	r3, [r6, #12]
    7e2c:	6103      	str	r3, [r0, #16]
    7e2e:	bc1c      	pop	{r2, r3, r4}
    7e30:	4690      	mov	r8, r2
    7e32:	4699      	mov	r9, r3
    7e34:	46a2      	mov	sl, r4
    7e36:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7e38:	4652      	mov	r2, sl
    7e3a:	6045      	str	r5, [r0, #4]
    7e3c:	6050      	str	r0, [r2, #4]
    7e3e:	2f02      	cmp	r7, #2
    7e40:	d8cc      	bhi.n	7ddc <rt_dec_dly+0x74>
    7e42:	e7cc      	b.n	7dde <rt_dec_dly+0x76>
    7e44:	82b2      	strh	r2, [r6, #20]
    7e46:	60f3      	str	r3, [r6, #12]
    7e48:	e7f1      	b.n	7e2e <rt_dec_dly+0xc6>
    7e4a:	46c0      	nop			; (mov r8, r8)
    7e4c:	2000609c 	.word	0x2000609c
    7e50:	20006084 	.word	0x20006084
    7e54:	20006080 	.word	0x20006080

00007e58 <rt_rmv_list>:
    7e58:	6883      	ldr	r3, [r0, #8]
    7e5a:	2b00      	cmp	r3, #0
    7e5c:	d006      	beq.n	7e6c <rt_rmv_list+0x14>
    7e5e:	6842      	ldr	r2, [r0, #4]
    7e60:	605a      	str	r2, [r3, #4]
    7e62:	6842      	ldr	r2, [r0, #4]
    7e64:	2a00      	cmp	r2, #0
    7e66:	d000      	beq.n	7e6a <rt_rmv_list+0x12>
    7e68:	6093      	str	r3, [r2, #8]
    7e6a:	4770      	bx	lr
    7e6c:	4b04      	ldr	r3, [pc, #16]	; (7e80 <rt_rmv_list+0x28>)
    7e6e:	e001      	b.n	7e74 <rt_rmv_list+0x1c>
    7e70:	1e13      	subs	r3, r2, #0
    7e72:	d0fa      	beq.n	7e6a <rt_rmv_list+0x12>
    7e74:	685a      	ldr	r2, [r3, #4]
    7e76:	4290      	cmp	r0, r2
    7e78:	d1fa      	bne.n	7e70 <rt_rmv_list+0x18>
    7e7a:	6842      	ldr	r2, [r0, #4]
    7e7c:	605a      	str	r2, [r3, #4]
    7e7e:	e7f4      	b.n	7e6a <rt_rmv_list+0x12>
    7e80:	20006084 	.word	0x20006084

00007e84 <rt_rmv_dly>:
    7e84:	6903      	ldr	r3, [r0, #16]
    7e86:	b510      	push	{r4, lr}
    7e88:	2b00      	cmp	r3, #0
    7e8a:	d00d      	beq.n	7ea8 <rt_rmv_dly+0x24>
    7e8c:	68c2      	ldr	r2, [r0, #12]
    7e8e:	60da      	str	r2, [r3, #12]
    7e90:	68c1      	ldr	r1, [r0, #12]
    7e92:	2900      	cmp	r1, #0
    7e94:	d009      	beq.n	7eaa <rt_rmv_dly+0x26>
    7e96:	8a9c      	ldrh	r4, [r3, #20]
    7e98:	8a82      	ldrh	r2, [r0, #20]
    7e9a:	18a2      	adds	r2, r4, r2
    7e9c:	829a      	strh	r2, [r3, #20]
    7e9e:	610b      	str	r3, [r1, #16]
    7ea0:	2300      	movs	r3, #0
    7ea2:	60c3      	str	r3, [r0, #12]
    7ea4:	2300      	movs	r3, #0
    7ea6:	6103      	str	r3, [r0, #16]
    7ea8:	bd10      	pop	{r4, pc}
    7eaa:	8299      	strh	r1, [r3, #20]
    7eac:	e7fa      	b.n	7ea4 <rt_rmv_dly+0x20>
    7eae:	46c0      	nop			; (mov r8, r8)

00007eb0 <rt_psq_enq>:
    7eb0:	b570      	push	{r4, r5, r6, lr}
    7eb2:	4c0f      	ldr	r4, [pc, #60]	; (7ef0 <rt_psq_enq+0x40>)
    7eb4:	78e5      	ldrb	r5, [r4, #3]
    7eb6:	f3ef 8310 	mrs	r3, PRIMASK
    7eba:	b672      	cpsid	i
    7ebc:	78a3      	ldrb	r3, [r4, #2]
    7ebe:	429d      	cmp	r5, r3
    7ec0:	d907      	bls.n	7ed2 <rt_psq_enq+0x22>
    7ec2:	1c5a      	adds	r2, r3, #1
    7ec4:	7823      	ldrb	r3, [r4, #0]
    7ec6:	70a2      	strb	r2, [r4, #2]
    7ec8:	1c5a      	adds	r2, r3, #1
    7eca:	4295      	cmp	r5, r2
    7ecc:	d00d      	beq.n	7eea <rt_psq_enq+0x3a>
    7ece:	b2d2      	uxtb	r2, r2
    7ed0:	7022      	strb	r2, [r4, #0]
    7ed2:	b662      	cpsie	i
    7ed4:	429d      	cmp	r5, r3
    7ed6:	d904      	bls.n	7ee2 <rt_psq_enq+0x32>
    7ed8:	00db      	lsls	r3, r3, #3
    7eda:	18e3      	adds	r3, r4, r3
    7edc:	6058      	str	r0, [r3, #4]
    7ede:	6099      	str	r1, [r3, #8]
    7ee0:	bd70      	pop	{r4, r5, r6, pc}
    7ee2:	2002      	movs	r0, #2
    7ee4:	f7f9 fd96 	bl	1a14 <os_error>
    7ee8:	e7fa      	b.n	7ee0 <rt_psq_enq+0x30>
    7eea:	2200      	movs	r2, #0
    7eec:	7022      	strb	r2, [r4, #0]
    7eee:	e7f0      	b.n	7ed2 <rt_psq_enq+0x22>
    7ef0:	20004c58 	.word	0x20004c58

00007ef4 <rt_evt_wait>:
    7ef4:	4b10      	ldr	r3, [pc, #64]	; (7f38 <rt_evt_wait+0x44>)
    7ef6:	b570      	push	{r4, r5, r6, lr}
    7ef8:	681b      	ldr	r3, [r3, #0]
    7efa:	000c      	movs	r4, r1
    7efc:	2a00      	cmp	r2, #0
    7efe:	d00b      	beq.n	7f18 <rt_evt_wait+0x24>
    7f00:	0005      	movs	r5, r0
    7f02:	8b1a      	ldrh	r2, [r3, #24]
    7f04:	2106      	movs	r1, #6
    7f06:	4015      	ands	r5, r2
    7f08:	42a8      	cmp	r0, r5
    7f0a:	d00a      	beq.n	7f22 <rt_evt_wait+0x2e>
    7f0c:	8358      	strh	r0, [r3, #26]
    7f0e:	0020      	movs	r0, r4
    7f10:	f000 fa94 	bl	843c <rt_block>
    7f14:	2001      	movs	r0, #1
    7f16:	e007      	b.n	7f28 <rt_evt_wait+0x34>
    7f18:	8b1a      	ldrh	r2, [r3, #24]
    7f1a:	0011      	movs	r1, r2
    7f1c:	4001      	ands	r1, r0
    7f1e:	d004      	beq.n	7f2a <rt_evt_wait+0x36>
    7f20:	8359      	strh	r1, [r3, #26]
    7f22:	4382      	bics	r2, r0
    7f24:	2002      	movs	r0, #2
    7f26:	831a      	strh	r2, [r3, #24]
    7f28:	bd70      	pop	{r4, r5, r6, pc}
    7f2a:	8358      	strh	r0, [r3, #26]
    7f2c:	2105      	movs	r1, #5
    7f2e:	0020      	movs	r0, r4
    7f30:	f000 fa84 	bl	843c <rt_block>
    7f34:	2001      	movs	r0, #1
    7f36:	e7f7      	b.n	7f28 <rt_evt_wait+0x34>
    7f38:	200060b8 	.word	0x200060b8

00007f3c <rt_evt_set>:
    7f3c:	3901      	subs	r1, #1
    7f3e:	4b14      	ldr	r3, [pc, #80]	; (7f90 <rt_evt_set+0x54>)
    7f40:	0089      	lsls	r1, r1, #2
    7f42:	b510      	push	{r4, lr}
    7f44:	58cc      	ldr	r4, [r1, r3]
    7f46:	2c00      	cmp	r4, #0
    7f48:	d008      	beq.n	7f5c <rt_evt_set+0x20>
    7f4a:	8b23      	ldrh	r3, [r4, #24]
    7f4c:	8b62      	ldrh	r2, [r4, #26]
    7f4e:	4318      	orrs	r0, r3
    7f50:	7863      	ldrb	r3, [r4, #1]
    7f52:	8320      	strh	r0, [r4, #24]
    7f54:	2b06      	cmp	r3, #6
    7f56:	d016      	beq.n	7f86 <rt_evt_set+0x4a>
    7f58:	2b05      	cmp	r3, #5
    7f5a:	d000      	beq.n	7f5e <rt_evt_set+0x22>
    7f5c:	bd10      	pop	{r4, pc}
    7f5e:	0013      	movs	r3, r2
    7f60:	4003      	ands	r3, r0
    7f62:	d0fb      	beq.n	7f5c <rt_evt_set+0x20>
    7f64:	8363      	strh	r3, [r4, #26]
    7f66:	4390      	bics	r0, r2
    7f68:	8320      	strh	r0, [r4, #24]
    7f6a:	0020      	movs	r0, r4
    7f6c:	f7ff ff8a 	bl	7e84 <rt_rmv_dly>
    7f70:	2301      	movs	r3, #1
    7f72:	0020      	movs	r0, r4
    7f74:	7063      	strb	r3, [r4, #1]
    7f76:	8b62      	ldrh	r2, [r4, #26]
    7f78:	2108      	movs	r1, #8
    7f7a:	f7ff fa1d 	bl	73b8 <rt_ret_val2>
    7f7e:	0020      	movs	r0, r4
    7f80:	f000 fa36 	bl	83f0 <rt_dispatch>
    7f84:	e7ea      	b.n	7f5c <rt_evt_set+0x20>
    7f86:	0013      	movs	r3, r2
    7f88:	4003      	ands	r3, r0
    7f8a:	429a      	cmp	r2, r3
    7f8c:	d1e6      	bne.n	7f5c <rt_evt_set+0x20>
    7f8e:	e7ea      	b.n	7f66 <rt_evt_set+0x2a>
    7f90:	20004cdc 	.word	0x20004cdc

00007f94 <rt_evt_clr>:
    7f94:	3901      	subs	r1, #1
    7f96:	4b04      	ldr	r3, [pc, #16]	; (7fa8 <rt_evt_clr+0x14>)
    7f98:	0089      	lsls	r1, r1, #2
    7f9a:	58cb      	ldr	r3, [r1, r3]
    7f9c:	2b00      	cmp	r3, #0
    7f9e:	d002      	beq.n	7fa6 <rt_evt_clr+0x12>
    7fa0:	8b1a      	ldrh	r2, [r3, #24]
    7fa2:	4382      	bics	r2, r0
    7fa4:	831a      	strh	r2, [r3, #24]
    7fa6:	4770      	bx	lr
    7fa8:	20004cdc 	.word	0x20004cdc

00007fac <isr_evt_set>:
    7fac:	3901      	subs	r1, #1
    7fae:	4b06      	ldr	r3, [pc, #24]	; (7fc8 <isr_evt_set+0x1c>)
    7fb0:	0089      	lsls	r1, r1, #2
    7fb2:	58cb      	ldr	r3, [r1, r3]
    7fb4:	b510      	push	{r4, lr}
    7fb6:	2b00      	cmp	r3, #0
    7fb8:	d005      	beq.n	7fc6 <isr_evt_set+0x1a>
    7fba:	0001      	movs	r1, r0
    7fbc:	0018      	movs	r0, r3
    7fbe:	f7ff ff77 	bl	7eb0 <rt_psq_enq>
    7fc2:	f000 f959 	bl	8278 <rt_psh_req>
    7fc6:	bd10      	pop	{r4, pc}
    7fc8:	20004cdc 	.word	0x20004cdc

00007fcc <rt_evt_get>:
    7fcc:	4b01      	ldr	r3, [pc, #4]	; (7fd4 <rt_evt_get+0x8>)
    7fce:	681b      	ldr	r3, [r3, #0]
    7fd0:	8b58      	ldrh	r0, [r3, #26]
    7fd2:	4770      	bx	lr
    7fd4:	200060b8 	.word	0x200060b8

00007fd8 <rt_evt_psh>:
    7fd8:	b510      	push	{r4, lr}
    7fda:	8b03      	ldrh	r3, [r0, #24]
    7fdc:	0004      	movs	r4, r0
    7fde:	4319      	orrs	r1, r3
    7fe0:	7843      	ldrb	r3, [r0, #1]
    7fe2:	8301      	strh	r1, [r0, #24]
    7fe4:	8b42      	ldrh	r2, [r0, #26]
    7fe6:	2b06      	cmp	r3, #6
    7fe8:	d017      	beq.n	801a <rt_evt_psh+0x42>
    7fea:	2b05      	cmp	r3, #5
    7fec:	d000      	beq.n	7ff0 <rt_evt_psh+0x18>
    7fee:	bd10      	pop	{r4, pc}
    7ff0:	0013      	movs	r3, r2
    7ff2:	400b      	ands	r3, r1
    7ff4:	d0fb      	beq.n	7fee <rt_evt_psh+0x16>
    7ff6:	8343      	strh	r3, [r0, #26]
    7ff8:	4391      	bics	r1, r2
    7ffa:	8321      	strh	r1, [r4, #24]
    7ffc:	0020      	movs	r0, r4
    7ffe:	f7ff ff41 	bl	7e84 <rt_rmv_dly>
    8002:	2301      	movs	r3, #1
    8004:	0020      	movs	r0, r4
    8006:	7063      	strb	r3, [r4, #1]
    8008:	8b62      	ldrh	r2, [r4, #26]
    800a:	2108      	movs	r1, #8
    800c:	f7ff f9d4 	bl	73b8 <rt_ret_val2>
    8010:	0021      	movs	r1, r4
    8012:	4804      	ldr	r0, [pc, #16]	; (8024 <rt_evt_psh+0x4c>)
    8014:	f7ff fdd8 	bl	7bc8 <rt_put_prio>
    8018:	e7e9      	b.n	7fee <rt_evt_psh+0x16>
    801a:	0013      	movs	r3, r2
    801c:	400b      	ands	r3, r1
    801e:	429a      	cmp	r2, r3
    8020:	d1e5      	bne.n	7fee <rt_evt_psh+0x16>
    8022:	e7e9      	b.n	7ff8 <rt_evt_psh+0x20>
    8024:	20006084 	.word	0x20006084

00008028 <rt_suspend>:
    8028:	4b1c      	ldr	r3, [pc, #112]	; (809c <rt_suspend+0x74>)
    802a:	b510      	push	{r4, lr}
    802c:	681b      	ldr	r3, [r3, #0]
    802e:	2b00      	cmp	r3, #0
    8030:	db20      	blt.n	8074 <rt_suspend+0x4c>
    8032:	491b      	ldr	r1, [pc, #108]	; (80a0 <rt_suspend+0x78>)
    8034:	095a      	lsrs	r2, r3, #5
    8036:	468c      	mov	ip, r1
    8038:	211f      	movs	r1, #31
    803a:	400b      	ands	r3, r1
    803c:	391e      	subs	r1, #30
    803e:	0008      	movs	r0, r1
    8040:	4098      	lsls	r0, r3
    8042:	0092      	lsls	r2, r2, #2
    8044:	4462      	add	r2, ip
    8046:	6010      	str	r0, [r2, #0]
    8048:	4816      	ldr	r0, [pc, #88]	; (80a4 <rt_suspend+0x7c>)
    804a:	4a17      	ldr	r2, [pc, #92]	; (80a8 <rt_suspend+0x80>)
    804c:	7001      	strb	r1, [r0, #0]
    804e:	6813      	ldr	r3, [r2, #0]
    8050:	0f1b      	lsrs	r3, r3, #28
    8052:	400b      	ands	r3, r1
    8054:	7043      	strb	r3, [r0, #1]
    8056:	06db      	lsls	r3, r3, #27
    8058:	6013      	str	r3, [r2, #0]
    805a:	4b14      	ldr	r3, [pc, #80]	; (80ac <rt_suspend+0x84>)
    805c:	68da      	ldr	r2, [r3, #12]
    805e:	2a00      	cmp	r2, #0
    8060:	d019      	beq.n	8096 <rt_suspend+0x6e>
    8062:	8a9c      	ldrh	r4, [r3, #20]
    8064:	f7fe f9e6 	bl	6434 <sysUserTimerWakeupTime>
    8068:	0003      	movs	r3, r0
    806a:	0020      	movs	r0, r4
    806c:	429c      	cmp	r4, r3
    806e:	d900      	bls.n	8072 <rt_suspend+0x4a>
    8070:	0018      	movs	r0, r3
    8072:	bd10      	pop	{r4, pc}
    8074:	2005      	movs	r0, #5
    8076:	4b0e      	ldr	r3, [pc, #56]	; (80b0 <rt_suspend+0x88>)
    8078:	490a      	ldr	r1, [pc, #40]	; (80a4 <rt_suspend+0x7c>)
    807a:	6018      	str	r0, [r3, #0]
    807c:	2301      	movs	r3, #1
    807e:	4a0a      	ldr	r2, [pc, #40]	; (80a8 <rt_suspend+0x80>)
    8080:	700b      	strb	r3, [r1, #0]
    8082:	6813      	ldr	r3, [r2, #0]
    8084:	0e9b      	lsrs	r3, r3, #26
    8086:	4003      	ands	r3, r0
    8088:	704b      	strb	r3, [r1, #1]
    808a:	065b      	lsls	r3, r3, #25
    808c:	6013      	str	r3, [r2, #0]
    808e:	4b07      	ldr	r3, [pc, #28]	; (80ac <rt_suspend+0x84>)
    8090:	68da      	ldr	r2, [r3, #12]
    8092:	2a00      	cmp	r2, #0
    8094:	d1e5      	bne.n	8062 <rt_suspend+0x3a>
    8096:	4c07      	ldr	r4, [pc, #28]	; (80b4 <rt_suspend+0x8c>)
    8098:	e7e4      	b.n	8064 <rt_suspend+0x3c>
    809a:	46c0      	nop			; (mov r8, r8)
    809c:	200060b4 	.word	0x200060b4
    80a0:	e000e180 	.word	0xe000e180
    80a4:	2000603d 	.word	0x2000603d
    80a8:	e000ed04 	.word	0xe000ed04
    80ac:	2000609c 	.word	0x2000609c
    80b0:	e000e010 	.word	0xe000e010
    80b4:	0000ffff 	.word	0x0000ffff

000080b8 <rt_resume>:
    80b8:	b5f0      	push	{r4, r5, r6, r7, lr}
    80ba:	4647      	mov	r7, r8
    80bc:	4b32      	ldr	r3, [pc, #200]	; (8188 <rt_resume+0xd0>)
    80be:	b480      	push	{r7}
    80c0:	0007      	movs	r7, r0
    80c2:	6818      	ldr	r0, [r3, #0]
    80c4:	2301      	movs	r3, #1
    80c6:	7043      	strb	r3, [r0, #1]
    80c8:	4698      	mov	r8, r3
    80ca:	f7ff fdb7 	bl	7c3c <rt_put_rdy_first>
    80ce:	2200      	movs	r2, #0
    80d0:	4b2e      	ldr	r3, [pc, #184]	; (818c <rt_resume+0xd4>)
    80d2:	4e2f      	ldr	r6, [pc, #188]	; (8190 <rt_resume+0xd8>)
    80d4:	601a      	str	r2, [r3, #0]
    80d6:	68f3      	ldr	r3, [r6, #12]
    80d8:	2b00      	cmp	r3, #0
    80da:	d04f      	beq.n	817c <rt_resume+0xc4>
    80dc:	8ab3      	ldrh	r3, [r6, #20]
    80de:	429f      	cmp	r7, r3
    80e0:	d336      	bcc.n	8150 <rt_resume+0x98>
    80e2:	4d2c      	ldr	r5, [pc, #176]	; (8194 <rt_resume+0xdc>)
    80e4:	1afc      	subs	r4, r7, r3
    80e6:	682a      	ldr	r2, [r5, #0]
    80e8:	4694      	mov	ip, r2
    80ea:	4463      	add	r3, ip
    80ec:	602b      	str	r3, [r5, #0]
    80ee:	4643      	mov	r3, r8
    80f0:	82b3      	strh	r3, [r6, #20]
    80f2:	e006      	b.n	8102 <rt_resume+0x4a>
    80f4:	682b      	ldr	r3, [r5, #0]
    80f6:	3c01      	subs	r4, #1
    80f8:	3301      	adds	r3, #1
    80fa:	602b      	str	r3, [r5, #0]
    80fc:	68f3      	ldr	r3, [r6, #12]
    80fe:	2b00      	cmp	r3, #0
    8100:	d003      	beq.n	810a <rt_resume+0x52>
    8102:	f7ff fe31 	bl	7d68 <rt_dec_dly>
    8106:	2c00      	cmp	r4, #0
    8108:	d1f4      	bne.n	80f4 <rt_resume+0x3c>
    810a:	0038      	movs	r0, r7
    810c:	f7fe f99e 	bl	644c <sysUserTimerUpdate>
    8110:	4821      	ldr	r0, [pc, #132]	; (8198 <rt_resume+0xe0>)
    8112:	f7ff fd7f 	bl	7c14 <rt_get_first>
    8116:	f000 f963 	bl	83e0 <rt_switch_req>
    811a:	4b20      	ldr	r3, [pc, #128]	; (819c <rt_resume+0xe4>)
    811c:	681b      	ldr	r3, [r3, #0]
    811e:	2b00      	cmp	r3, #0
    8120:	db1d      	blt.n	815e <rt_resume+0xa6>
    8122:	491f      	ldr	r1, [pc, #124]	; (81a0 <rt_resume+0xe8>)
    8124:	095a      	lsrs	r2, r3, #5
    8126:	468c      	mov	ip, r1
    8128:	211f      	movs	r1, #31
    812a:	400b      	ands	r3, r1
    812c:	391e      	subs	r1, #30
    812e:	4099      	lsls	r1, r3
    8130:	0092      	lsls	r2, r2, #2
    8132:	4462      	add	r2, ip
    8134:	6011      	str	r1, [r2, #0]
    8136:	2100      	movs	r1, #0
    8138:	4a1a      	ldr	r2, [pc, #104]	; (81a4 <rt_resume+0xec>)
    813a:	7011      	strb	r1, [r2, #0]
    813c:	7890      	ldrb	r0, [r2, #2]
    813e:	7853      	ldrb	r3, [r2, #1]
    8140:	4303      	orrs	r3, r0
    8142:	4819      	ldr	r0, [pc, #100]	; (81a8 <rt_resume+0xf0>)
    8144:	071b      	lsls	r3, r3, #28
    8146:	6003      	str	r3, [r0, #0]
    8148:	7091      	strb	r1, [r2, #2]
    814a:	bc04      	pop	{r2}
    814c:	4690      	mov	r8, r2
    814e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8150:	4910      	ldr	r1, [pc, #64]	; (8194 <rt_resume+0xdc>)
    8152:	1bdb      	subs	r3, r3, r7
    8154:	680a      	ldr	r2, [r1, #0]
    8156:	82b3      	strh	r3, [r6, #20]
    8158:	19d2      	adds	r2, r2, r7
    815a:	600a      	str	r2, [r1, #0]
    815c:	e7d5      	b.n	810a <rt_resume+0x52>
    815e:	2207      	movs	r2, #7
    8160:	2000      	movs	r0, #0
    8162:	4910      	ldr	r1, [pc, #64]	; (81a4 <rt_resume+0xec>)
    8164:	4b11      	ldr	r3, [pc, #68]	; (81ac <rt_resume+0xf4>)
    8166:	601a      	str	r2, [r3, #0]
    8168:	7008      	strb	r0, [r1, #0]
    816a:	788b      	ldrb	r3, [r1, #2]
    816c:	784a      	ldrb	r2, [r1, #1]
    816e:	009b      	lsls	r3, r3, #2
    8170:	4313      	orrs	r3, r2
    8172:	4a0d      	ldr	r2, [pc, #52]	; (81a8 <rt_resume+0xf0>)
    8174:	069b      	lsls	r3, r3, #26
    8176:	6013      	str	r3, [r2, #0]
    8178:	7088      	strb	r0, [r1, #2]
    817a:	e7e6      	b.n	814a <rt_resume+0x92>
    817c:	4a05      	ldr	r2, [pc, #20]	; (8194 <rt_resume+0xdc>)
    817e:	6813      	ldr	r3, [r2, #0]
    8180:	19db      	adds	r3, r3, r7
    8182:	6013      	str	r3, [r2, #0]
    8184:	e7c1      	b.n	810a <rt_resume+0x52>
    8186:	46c0      	nop			; (mov r8, r8)
    8188:	200060b8 	.word	0x200060b8
    818c:	200060f4 	.word	0x200060f4
    8190:	2000609c 	.word	0x2000609c
    8194:	20006080 	.word	0x20006080
    8198:	20006084 	.word	0x20006084
    819c:	200060b4 	.word	0x200060b4
    81a0:	e000e100 	.word	0xe000e100
    81a4:	2000603d 	.word	0x2000603d
    81a8:	e000ed04 	.word	0xe000ed04
    81ac:	e000e010 	.word	0xe000e010

000081b0 <rt_tsk_lock>:
    81b0:	4b13      	ldr	r3, [pc, #76]	; (8200 <rt_tsk_lock+0x50>)
    81b2:	681b      	ldr	r3, [r3, #0]
    81b4:	2b00      	cmp	r3, #0
    81b6:	db14      	blt.n	81e2 <rt_tsk_lock+0x32>
    81b8:	4912      	ldr	r1, [pc, #72]	; (8204 <rt_tsk_lock+0x54>)
    81ba:	095a      	lsrs	r2, r3, #5
    81bc:	468c      	mov	ip, r1
    81be:	211f      	movs	r1, #31
    81c0:	400b      	ands	r3, r1
    81c2:	391e      	subs	r1, #30
    81c4:	0008      	movs	r0, r1
    81c6:	4098      	lsls	r0, r3
    81c8:	0092      	lsls	r2, r2, #2
    81ca:	4462      	add	r2, ip
    81cc:	6010      	str	r0, [r2, #0]
    81ce:	480e      	ldr	r0, [pc, #56]	; (8208 <rt_tsk_lock+0x58>)
    81d0:	4a0e      	ldr	r2, [pc, #56]	; (820c <rt_tsk_lock+0x5c>)
    81d2:	7001      	strb	r1, [r0, #0]
    81d4:	6813      	ldr	r3, [r2, #0]
    81d6:	0f1b      	lsrs	r3, r3, #28
    81d8:	400b      	ands	r3, r1
    81da:	7043      	strb	r3, [r0, #1]
    81dc:	06db      	lsls	r3, r3, #27
    81de:	6013      	str	r3, [r2, #0]
    81e0:	4770      	bx	lr
    81e2:	2005      	movs	r0, #5
    81e4:	4b0a      	ldr	r3, [pc, #40]	; (8210 <rt_tsk_lock+0x60>)
    81e6:	4908      	ldr	r1, [pc, #32]	; (8208 <rt_tsk_lock+0x58>)
    81e8:	6018      	str	r0, [r3, #0]
    81ea:	2301      	movs	r3, #1
    81ec:	4a07      	ldr	r2, [pc, #28]	; (820c <rt_tsk_lock+0x5c>)
    81ee:	700b      	strb	r3, [r1, #0]
    81f0:	6813      	ldr	r3, [r2, #0]
    81f2:	0e9b      	lsrs	r3, r3, #26
    81f4:	4003      	ands	r3, r0
    81f6:	704b      	strb	r3, [r1, #1]
    81f8:	065b      	lsls	r3, r3, #25
    81fa:	6013      	str	r3, [r2, #0]
    81fc:	e7f0      	b.n	81e0 <rt_tsk_lock+0x30>
    81fe:	46c0      	nop			; (mov r8, r8)
    8200:	200060b4 	.word	0x200060b4
    8204:	e000e180 	.word	0xe000e180
    8208:	2000603d 	.word	0x2000603d
    820c:	e000ed04 	.word	0xe000ed04
    8210:	e000e010 	.word	0xe000e010

00008214 <rt_tsk_unlock>:
    8214:	4b13      	ldr	r3, [pc, #76]	; (8264 <rt_tsk_unlock+0x50>)
    8216:	681b      	ldr	r3, [r3, #0]
    8218:	2b00      	cmp	r3, #0
    821a:	db14      	blt.n	8246 <rt_tsk_unlock+0x32>
    821c:	4912      	ldr	r1, [pc, #72]	; (8268 <rt_tsk_unlock+0x54>)
    821e:	095a      	lsrs	r2, r3, #5
    8220:	468c      	mov	ip, r1
    8222:	211f      	movs	r1, #31
    8224:	400b      	ands	r3, r1
    8226:	391e      	subs	r1, #30
    8228:	4099      	lsls	r1, r3
    822a:	0092      	lsls	r2, r2, #2
    822c:	4462      	add	r2, ip
    822e:	6011      	str	r1, [r2, #0]
    8230:	2100      	movs	r1, #0
    8232:	4a0e      	ldr	r2, [pc, #56]	; (826c <rt_tsk_unlock+0x58>)
    8234:	7011      	strb	r1, [r2, #0]
    8236:	7890      	ldrb	r0, [r2, #2]
    8238:	7853      	ldrb	r3, [r2, #1]
    823a:	4303      	orrs	r3, r0
    823c:	480c      	ldr	r0, [pc, #48]	; (8270 <rt_tsk_unlock+0x5c>)
    823e:	071b      	lsls	r3, r3, #28
    8240:	6003      	str	r3, [r0, #0]
    8242:	7091      	strb	r1, [r2, #2]
    8244:	4770      	bx	lr
    8246:	2207      	movs	r2, #7
    8248:	2000      	movs	r0, #0
    824a:	4908      	ldr	r1, [pc, #32]	; (826c <rt_tsk_unlock+0x58>)
    824c:	4b09      	ldr	r3, [pc, #36]	; (8274 <rt_tsk_unlock+0x60>)
    824e:	601a      	str	r2, [r3, #0]
    8250:	7008      	strb	r0, [r1, #0]
    8252:	788b      	ldrb	r3, [r1, #2]
    8254:	784a      	ldrb	r2, [r1, #1]
    8256:	009b      	lsls	r3, r3, #2
    8258:	4313      	orrs	r3, r2
    825a:	4a05      	ldr	r2, [pc, #20]	; (8270 <rt_tsk_unlock+0x5c>)
    825c:	069b      	lsls	r3, r3, #26
    825e:	6013      	str	r3, [r2, #0]
    8260:	7088      	strb	r0, [r1, #2]
    8262:	e7ef      	b.n	8244 <rt_tsk_unlock+0x30>
    8264:	200060b4 	.word	0x200060b4
    8268:	e000e100 	.word	0xe000e100
    826c:	2000603d 	.word	0x2000603d
    8270:	e000ed04 	.word	0xe000ed04
    8274:	e000e010 	.word	0xe000e010

00008278 <rt_psh_req>:
    8278:	4b05      	ldr	r3, [pc, #20]	; (8290 <rt_psh_req+0x18>)
    827a:	781a      	ldrb	r2, [r3, #0]
    827c:	2a00      	cmp	r2, #0
    827e:	d002      	beq.n	8286 <rt_psh_req+0xe>
    8280:	2201      	movs	r2, #1
    8282:	709a      	strb	r2, [r3, #2]
    8284:	4770      	bx	lr
    8286:	2280      	movs	r2, #128	; 0x80
    8288:	4b02      	ldr	r3, [pc, #8]	; (8294 <rt_psh_req+0x1c>)
    828a:	0552      	lsls	r2, r2, #21
    828c:	601a      	str	r2, [r3, #0]
    828e:	e7f9      	b.n	8284 <rt_psh_req+0xc>
    8290:	2000603d 	.word	0x2000603d
    8294:	e000ed04 	.word	0xe000ed04

00008298 <rt_pop_req>:
    8298:	4b1c      	ldr	r3, [pc, #112]	; (830c <rt_pop_req+0x74>)
    829a:	b570      	push	{r4, r5, r6, lr}
    829c:	6818      	ldr	r0, [r3, #0]
    829e:	2301      	movs	r3, #1
    82a0:	7043      	strb	r3, [r0, #1]
    82a2:	f7ff fccb 	bl	7c3c <rt_put_rdy_first>
    82a6:	4d1a      	ldr	r5, [pc, #104]	; (8310 <rt_pop_req+0x78>)
    82a8:	78ab      	ldrb	r3, [r5, #2]
    82aa:	786c      	ldrb	r4, [r5, #1]
    82ac:	2b00      	cmp	r3, #0
    82ae:	d112      	bne.n	82d6 <rt_pop_req+0x3e>
    82b0:	e024      	b.n	82fc <rt_pop_req+0x64>
    82b2:	2a01      	cmp	r2, #1
    82b4:	d01e      	beq.n	82f4 <rt_pop_req+0x5c>
    82b6:	f7ff fb13 	bl	78e0 <rt_sem_psh>
    82ba:	78eb      	ldrb	r3, [r5, #3]
    82bc:	3401      	adds	r4, #1
    82be:	429c      	cmp	r4, r3
    82c0:	d016      	beq.n	82f0 <rt_pop_req+0x58>
    82c2:	f3ef 8310 	mrs	r3, PRIMASK
    82c6:	b672      	cpsid	i
    82c8:	78ab      	ldrb	r3, [r5, #2]
    82ca:	3b01      	subs	r3, #1
    82cc:	b2db      	uxtb	r3, r3
    82ce:	70ab      	strb	r3, [r5, #2]
    82d0:	b662      	cpsie	i
    82d2:	2b00      	cmp	r3, #0
    82d4:	d012      	beq.n	82fc <rt_pop_req+0x64>
    82d6:	00e3      	lsls	r3, r4, #3
    82d8:	18eb      	adds	r3, r5, r3
    82da:	6858      	ldr	r0, [r3, #4]
    82dc:	7802      	ldrb	r2, [r0, #0]
    82de:	2a00      	cmp	r2, #0
    82e0:	d1e7      	bne.n	82b2 <rt_pop_req+0x1a>
    82e2:	8919      	ldrh	r1, [r3, #8]
    82e4:	f7ff fe78 	bl	7fd8 <rt_evt_psh>
    82e8:	78eb      	ldrb	r3, [r5, #3]
    82ea:	3401      	adds	r4, #1
    82ec:	429c      	cmp	r4, r3
    82ee:	d1e8      	bne.n	82c2 <rt_pop_req+0x2a>
    82f0:	2400      	movs	r4, #0
    82f2:	e7e6      	b.n	82c2 <rt_pop_req+0x2a>
    82f4:	6899      	ldr	r1, [r3, #8]
    82f6:	f7ff fbf9 	bl	7aec <rt_mbx_psh>
    82fa:	e7de      	b.n	82ba <rt_pop_req+0x22>
    82fc:	706c      	strb	r4, [r5, #1]
    82fe:	4805      	ldr	r0, [pc, #20]	; (8314 <rt_pop_req+0x7c>)
    8300:	f7ff fc88 	bl	7c14 <rt_get_first>
    8304:	f000 f86c 	bl	83e0 <rt_switch_req>
    8308:	bd70      	pop	{r4, r5, r6, pc}
    830a:	46c0      	nop			; (mov r8, r8)
    830c:	200060b8 	.word	0x200060b8
    8310:	20004c58 	.word	0x20004c58
    8314:	20006084 	.word	0x20006084

00008318 <os_tick_init>:
    8318:	4b09      	ldr	r3, [pc, #36]	; (8340 <os_tick_init+0x28>)
    831a:	21ff      	movs	r1, #255	; 0xff
    831c:	681a      	ldr	r2, [r3, #0]
    831e:	4b09      	ldr	r3, [pc, #36]	; (8344 <os_tick_init+0x2c>)
    8320:	2001      	movs	r0, #1
    8322:	601a      	str	r2, [r3, #0]
    8324:	2200      	movs	r2, #0
    8326:	4b08      	ldr	r3, [pc, #32]	; (8348 <os_tick_init+0x30>)
    8328:	0609      	lsls	r1, r1, #24
    832a:	601a      	str	r2, [r3, #0]
    832c:	4b07      	ldr	r3, [pc, #28]	; (834c <os_tick_init+0x34>)
    832e:	3207      	adds	r2, #7
    8330:	601a      	str	r2, [r3, #0]
    8332:	4a07      	ldr	r2, [pc, #28]	; (8350 <os_tick_init+0x38>)
    8334:	4240      	negs	r0, r0
    8336:	6813      	ldr	r3, [r2, #0]
    8338:	430b      	orrs	r3, r1
    833a:	6013      	str	r3, [r2, #0]
    833c:	4770      	bx	lr
    833e:	46c0      	nop			; (mov r8, r8)
    8340:	00008b60 	.word	0x00008b60
    8344:	e000e014 	.word	0xe000e014
    8348:	e000e018 	.word	0xe000e018
    834c:	e000e010 	.word	0xe000e010
    8350:	e000ed20 	.word	0xe000ed20

00008354 <os_tick_val>:
    8354:	4b02      	ldr	r3, [pc, #8]	; (8360 <os_tick_val+0xc>)
    8356:	6818      	ldr	r0, [r3, #0]
    8358:	4b02      	ldr	r3, [pc, #8]	; (8364 <os_tick_val+0x10>)
    835a:	681b      	ldr	r3, [r3, #0]
    835c:	1a18      	subs	r0, r3, r0
    835e:	4770      	bx	lr
    8360:	e000e018 	.word	0xe000e018
    8364:	00008b60 	.word	0x00008b60

00008368 <os_tick_ovf>:
    8368:	4b02      	ldr	r3, [pc, #8]	; (8374 <os_tick_ovf+0xc>)
    836a:	6818      	ldr	r0, [r3, #0]
    836c:	0140      	lsls	r0, r0, #5
    836e:	0fc0      	lsrs	r0, r0, #31
    8370:	4770      	bx	lr
    8372:	46c0      	nop			; (mov r8, r8)
    8374:	e000ed04 	.word	0xe000ed04

00008378 <os_tick_irqack>:
    8378:	4770      	bx	lr
    837a:	46c0      	nop			; (mov r8, r8)

0000837c <rt_systick>:
    837c:	4b0b      	ldr	r3, [pc, #44]	; (83ac <rt_systick+0x30>)
    837e:	b510      	push	{r4, lr}
    8380:	6818      	ldr	r0, [r3, #0]
    8382:	2301      	movs	r3, #1
    8384:	7043      	strb	r3, [r0, #1]
    8386:	f7ff fc59 	bl	7c3c <rt_put_rdy_first>
    838a:	f000 faeb 	bl	8964 <rt_chk_robin>
    838e:	4a08      	ldr	r2, [pc, #32]	; (83b0 <rt_systick+0x34>)
    8390:	6813      	ldr	r3, [r2, #0]
    8392:	3301      	adds	r3, #1
    8394:	6013      	str	r3, [r2, #0]
    8396:	f7ff fce7 	bl	7d68 <rt_dec_dly>
    839a:	f7fd ffed 	bl	6378 <sysTimerTick>
    839e:	4805      	ldr	r0, [pc, #20]	; (83b4 <rt_systick+0x38>)
    83a0:	f7ff fc38 	bl	7c14 <rt_get_first>
    83a4:	f000 f81c 	bl	83e0 <rt_switch_req>
    83a8:	bd10      	pop	{r4, pc}
    83aa:	46c0      	nop			; (mov r8, r8)
    83ac:	200060b8 	.word	0x200060b8
    83b0:	20006080 	.word	0x20006080
    83b4:	20006084 	.word	0x20006084

000083b8 <rt_stk_check>:
    83b8:	4b07      	ldr	r3, [pc, #28]	; (83d8 <rt_stk_check+0x20>)
    83ba:	b510      	push	{r4, lr}
    83bc:	681b      	ldr	r3, [r3, #0]
    83be:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    83c0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    83c2:	429a      	cmp	r2, r3
    83c4:	d803      	bhi.n	83ce <rt_stk_check+0x16>
    83c6:	4b05      	ldr	r3, [pc, #20]	; (83dc <rt_stk_check+0x24>)
    83c8:	6812      	ldr	r2, [r2, #0]
    83ca:	429a      	cmp	r2, r3
    83cc:	d002      	beq.n	83d4 <rt_stk_check+0x1c>
    83ce:	2001      	movs	r0, #1
    83d0:	f7f9 fb20 	bl	1a14 <os_error>
    83d4:	bd10      	pop	{r4, pc}
    83d6:	46c0      	nop			; (mov r8, r8)
    83d8:	200060b8 	.word	0x200060b8
    83dc:	e25a2ea5 	.word	0xe25a2ea5

000083e0 <rt_switch_req>:
    83e0:	4b02      	ldr	r3, [pc, #8]	; (83ec <rt_switch_req+0xc>)
    83e2:	6058      	str	r0, [r3, #4]
    83e4:	2302      	movs	r3, #2
    83e6:	7043      	strb	r3, [r0, #1]
    83e8:	4770      	bx	lr
    83ea:	46c0      	nop			; (mov r8, r8)
    83ec:	200060b8 	.word	0x200060b8

000083f0 <rt_dispatch>:
    83f0:	b570      	push	{r4, r5, r6, lr}
    83f2:	1e04      	subs	r4, r0, #0
    83f4:	d015      	beq.n	8422 <rt_dispatch+0x32>
    83f6:	4d0f      	ldr	r5, [pc, #60]	; (8434 <rt_dispatch+0x44>)
    83f8:	78a2      	ldrb	r2, [r4, #2]
    83fa:	6828      	ldr	r0, [r5, #0]
    83fc:	7883      	ldrb	r3, [r0, #2]
    83fe:	429a      	cmp	r2, r3
    8400:	d806      	bhi.n	8410 <rt_dispatch+0x20>
    8402:	2301      	movs	r3, #1
    8404:	0021      	movs	r1, r4
    8406:	7063      	strb	r3, [r4, #1]
    8408:	480b      	ldr	r0, [pc, #44]	; (8438 <rt_dispatch+0x48>)
    840a:	f7ff fbdd 	bl	7bc8 <rt_put_prio>
    840e:	bd70      	pop	{r4, r5, r6, pc}
    8410:	f7ff fc14 	bl	7c3c <rt_put_rdy_first>
    8414:	2301      	movs	r3, #1
    8416:	682a      	ldr	r2, [r5, #0]
    8418:	7053      	strb	r3, [r2, #1]
    841a:	3301      	adds	r3, #1
    841c:	606c      	str	r4, [r5, #4]
    841e:	7063      	strb	r3, [r4, #1]
    8420:	e7f5      	b.n	840e <rt_dispatch+0x1e>
    8422:	4805      	ldr	r0, [pc, #20]	; (8438 <rt_dispatch+0x48>)
    8424:	f7ff fbf6 	bl	7c14 <rt_get_first>
    8428:	4b02      	ldr	r3, [pc, #8]	; (8434 <rt_dispatch+0x44>)
    842a:	6058      	str	r0, [r3, #4]
    842c:	2302      	movs	r3, #2
    842e:	7043      	strb	r3, [r0, #1]
    8430:	e7ed      	b.n	840e <rt_dispatch+0x1e>
    8432:	46c0      	nop			; (mov r8, r8)
    8434:	200060b8 	.word	0x200060b8
    8438:	20006084 	.word	0x20006084

0000843c <rt_block>:
    843c:	b570      	push	{r4, r5, r6, lr}
    843e:	000d      	movs	r5, r1
    8440:	2800      	cmp	r0, #0
    8442:	d00f      	beq.n	8464 <rt_block+0x28>
    8444:	4b08      	ldr	r3, [pc, #32]	; (8468 <rt_block+0x2c>)
    8446:	4c09      	ldr	r4, [pc, #36]	; (846c <rt_block+0x30>)
    8448:	4298      	cmp	r0, r3
    844a:	d003      	beq.n	8454 <rt_block+0x18>
    844c:	0001      	movs	r1, r0
    844e:	6820      	ldr	r0, [r4, #0]
    8450:	f7ff fc58 	bl	7d04 <rt_put_dly>
    8454:	6823      	ldr	r3, [r4, #0]
    8456:	4806      	ldr	r0, [pc, #24]	; (8470 <rt_block+0x34>)
    8458:	705d      	strb	r5, [r3, #1]
    845a:	f7ff fbdb 	bl	7c14 <rt_get_first>
    845e:	2302      	movs	r3, #2
    8460:	6060      	str	r0, [r4, #4]
    8462:	7043      	strb	r3, [r0, #1]
    8464:	bd70      	pop	{r4, r5, r6, pc}
    8466:	46c0      	nop			; (mov r8, r8)
    8468:	0000ffff 	.word	0x0000ffff
    846c:	200060b8 	.word	0x200060b8
    8470:	20006084 	.word	0x20006084

00008474 <rt_tsk_pass>:
    8474:	b570      	push	{r4, r5, r6, lr}
    8476:	f7ff fbeb 	bl	7c50 <rt_get_same_rdy_prio>
    847a:	1e04      	subs	r4, r0, #0
    847c:	d00a      	beq.n	8494 <rt_tsk_pass+0x20>
    847e:	4d06      	ldr	r5, [pc, #24]	; (8498 <rt_tsk_pass+0x24>)
    8480:	4806      	ldr	r0, [pc, #24]	; (849c <rt_tsk_pass+0x28>)
    8482:	6829      	ldr	r1, [r5, #0]
    8484:	f7ff fba0 	bl	7bc8 <rt_put_prio>
    8488:	2301      	movs	r3, #1
    848a:	682a      	ldr	r2, [r5, #0]
    848c:	7053      	strb	r3, [r2, #1]
    848e:	3301      	adds	r3, #1
    8490:	606c      	str	r4, [r5, #4]
    8492:	7063      	strb	r3, [r4, #1]
    8494:	bd70      	pop	{r4, r5, r6, pc}
    8496:	46c0      	nop			; (mov r8, r8)
    8498:	200060b8 	.word	0x200060b8
    849c:	20006084 	.word	0x20006084

000084a0 <rt_tsk_self>:
    84a0:	4b03      	ldr	r3, [pc, #12]	; (84b0 <rt_tsk_self+0x10>)
    84a2:	681b      	ldr	r3, [r3, #0]
    84a4:	2b00      	cmp	r3, #0
    84a6:	d001      	beq.n	84ac <rt_tsk_self+0xc>
    84a8:	78d8      	ldrb	r0, [r3, #3]
    84aa:	4770      	bx	lr
    84ac:	2000      	movs	r0, #0
    84ae:	e7fc      	b.n	84aa <rt_tsk_self+0xa>
    84b0:	200060b8 	.word	0x200060b8

000084b4 <rt_tsk_prio>:
    84b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    84b6:	2800      	cmp	r0, #0
    84b8:	d10c      	bne.n	84d4 <rt_tsk_prio+0x20>
    84ba:	2224      	movs	r2, #36	; 0x24
    84bc:	4c27      	ldr	r4, [pc, #156]	; (855c <rt_tsk_prio+0xa8>)
    84be:	6823      	ldr	r3, [r4, #0]
    84c0:	7099      	strb	r1, [r3, #2]
    84c2:	5499      	strb	r1, [r3, r2]
    84c4:	4d26      	ldr	r5, [pc, #152]	; (8560 <rt_tsk_prio+0xac>)
    84c6:	686a      	ldr	r2, [r5, #4]
    84c8:	7892      	ldrb	r2, [r2, #2]
    84ca:	428a      	cmp	r2, r1
    84cc:	d82c      	bhi.n	8528 <rt_tsk_prio+0x74>
    84ce:	2200      	movs	r2, #0
    84d0:	0010      	movs	r0, r2
    84d2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    84d4:	4b23      	ldr	r3, [pc, #140]	; (8564 <rt_tsk_prio+0xb0>)
    84d6:	22ff      	movs	r2, #255	; 0xff
    84d8:	881b      	ldrh	r3, [r3, #0]
    84da:	4298      	cmp	r0, r3
    84dc:	d8f8      	bhi.n	84d0 <rt_tsk_prio+0x1c>
    84de:	1e43      	subs	r3, r0, #1
    84e0:	4821      	ldr	r0, [pc, #132]	; (8568 <rt_tsk_prio+0xb4>)
    84e2:	009b      	lsls	r3, r3, #2
    84e4:	581d      	ldr	r5, [r3, r0]
    84e6:	2d00      	cmp	r5, #0
    84e8:	d0f2      	beq.n	84d0 <rt_tsk_prio+0x1c>
    84ea:	2324      	movs	r3, #36	; 0x24
    84ec:	4c1b      	ldr	r4, [pc, #108]	; (855c <rt_tsk_prio+0xa8>)
    84ee:	70a9      	strb	r1, [r5, #2]
    84f0:	54e9      	strb	r1, [r5, r3]
    84f2:	6823      	ldr	r3, [r4, #0]
    84f4:	429d      	cmp	r5, r3
    84f6:	d0e5      	beq.n	84c4 <rt_tsk_prio+0x10>
    84f8:	0028      	movs	r0, r5
    84fa:	f7ff fbbb 	bl	7c74 <rt_resort_prio>
    84fe:	786d      	ldrb	r5, [r5, #1]
    8500:	2d01      	cmp	r5, #1
    8502:	d1e4      	bne.n	84ce <rt_tsk_prio+0x1a>
    8504:	4f16      	ldr	r7, [pc, #88]	; (8560 <rt_tsk_prio+0xac>)
    8506:	0038      	movs	r0, r7
    8508:	f7ff fb84 	bl	7c14 <rt_get_first>
    850c:	1e06      	subs	r6, r0, #0
    850e:	d023      	beq.n	8558 <rt_tsk_prio+0xa4>
    8510:	6820      	ldr	r0, [r4, #0]
    8512:	78b2      	ldrb	r2, [r6, #2]
    8514:	7883      	ldrb	r3, [r0, #2]
    8516:	429a      	cmp	r2, r3
    8518:	d815      	bhi.n	8546 <rt_tsk_prio+0x92>
    851a:	7075      	strb	r5, [r6, #1]
    851c:	0031      	movs	r1, r6
    851e:	0038      	movs	r0, r7
    8520:	f7ff fb52 	bl	7bc8 <rt_put_prio>
    8524:	2200      	movs	r2, #0
    8526:	e7d3      	b.n	84d0 <rt_tsk_prio+0x1c>
    8528:	0019      	movs	r1, r3
    852a:	0028      	movs	r0, r5
    852c:	f7ff fb4c 	bl	7bc8 <rt_put_prio>
    8530:	2301      	movs	r3, #1
    8532:	0028      	movs	r0, r5
    8534:	6822      	ldr	r2, [r4, #0]
    8536:	7053      	strb	r3, [r2, #1]
    8538:	f7ff fb6c 	bl	7c14 <rt_get_first>
    853c:	2302      	movs	r3, #2
    853e:	6060      	str	r0, [r4, #4]
    8540:	2200      	movs	r2, #0
    8542:	7043      	strb	r3, [r0, #1]
    8544:	e7c4      	b.n	84d0 <rt_tsk_prio+0x1c>
    8546:	f7ff fb79 	bl	7c3c <rt_put_rdy_first>
    854a:	6823      	ldr	r3, [r4, #0]
    854c:	2200      	movs	r2, #0
    854e:	705d      	strb	r5, [r3, #1]
    8550:	2302      	movs	r3, #2
    8552:	6066      	str	r6, [r4, #4]
    8554:	7073      	strb	r3, [r6, #1]
    8556:	e7bb      	b.n	84d0 <rt_tsk_prio+0x1c>
    8558:	0038      	movs	r0, r7
    855a:	e7ed      	b.n	8538 <rt_tsk_prio+0x84>
    855c:	200060b8 	.word	0x200060b8
    8560:	20006084 	.word	0x20006084
    8564:	00008b4c 	.word	0x00008b4c
    8568:	20004cdc 	.word	0x20004cdc

0000856c <rt_tsk_create>:
    856c:	b5f0      	push	{r4, r5, r6, r7, lr}
    856e:	4647      	mov	r7, r8
    8570:	b480      	push	{r7}
    8572:	001f      	movs	r7, r3
    8574:	23ff      	movs	r3, #255	; 0xff
    8576:	400b      	ands	r3, r1
    8578:	4690      	mov	r8, r2
    857a:	001a      	movs	r2, r3
    857c:	4253      	negs	r3, r2
    857e:	4153      	adcs	r3, r2
    8580:	0006      	movs	r6, r0
    8582:	4831      	ldr	r0, [pc, #196]	; (8648 <rt_tsk_create+0xdc>)
    8584:	18cc      	adds	r4, r1, r3
    8586:	f7fe ff95 	bl	74b4 <rt_alloc_box>
    858a:	1e05      	subs	r5, r0, #0
    858c:	d032      	beq.n	85f4 <rt_tsk_create+0x88>
    858e:	4643      	mov	r3, r8
    8590:	2101      	movs	r1, #1
    8592:	62c3      	str	r3, [r0, #44]	; 0x2c
    8594:	2300      	movs	r3, #0
    8596:	0a22      	lsrs	r2, r4, #8
    8598:	7041      	strb	r1, [r0, #1]
    859a:	b2e4      	uxtb	r4, r4
    859c:	3123      	adds	r1, #35	; 0x23
    859e:	b292      	uxth	r2, r2
    85a0:	7003      	strb	r3, [r0, #0]
    85a2:	84c2      	strh	r2, [r0, #38]	; 0x26
    85a4:	61c7      	str	r7, [r0, #28]
    85a6:	7084      	strb	r4, [r0, #2]
    85a8:	5444      	strb	r4, [r0, r1]
    85aa:	2100      	movs	r1, #0
    85ac:	6043      	str	r3, [r0, #4]
    85ae:	6083      	str	r3, [r0, #8]
    85b0:	60c3      	str	r3, [r0, #12]
    85b2:	6103      	str	r3, [r0, #16]
    85b4:	6203      	str	r3, [r0, #32]
    85b6:	8283      	strh	r3, [r0, #20]
    85b8:	82c3      	strh	r3, [r0, #22]
    85ba:	8303      	strh	r3, [r0, #24]
    85bc:	8343      	strh	r3, [r0, #26]
    85be:	3325      	adds	r3, #37	; 0x25
    85c0:	54c1      	strb	r1, [r0, r3]
    85c2:	2a00      	cmp	r2, #0
    85c4:	d01a      	beq.n	85fc <rt_tsk_create+0x90>
    85c6:	0031      	movs	r1, r6
    85c8:	0028      	movs	r0, r5
    85ca:	f7fe fe99 	bl	7300 <rt_init_stack>
    85ce:	4b1f      	ldr	r3, [pc, #124]	; (864c <rt_tsk_create+0xe0>)
    85d0:	8819      	ldrh	r1, [r3, #0]
    85d2:	2900      	cmp	r1, #0
    85d4:	d00e      	beq.n	85f4 <rt_tsk_create+0x88>
    85d6:	481e      	ldr	r0, [pc, #120]	; (8650 <rt_tsk_create+0xe4>)
    85d8:	6803      	ldr	r3, [r0, #0]
    85da:	2b00      	cmp	r3, #0
    85dc:	d02f      	beq.n	863e <rt_tsk_create+0xd2>
    85de:	2201      	movs	r2, #1
    85e0:	e005      	b.n	85ee <rt_tsk_create+0x82>
    85e2:	00a3      	lsls	r3, r4, #2
    85e4:	3b04      	subs	r3, #4
    85e6:	58c3      	ldr	r3, [r0, r3]
    85e8:	2b00      	cmp	r3, #0
    85ea:	d00c      	beq.n	8606 <rt_tsk_create+0x9a>
    85ec:	0022      	movs	r2, r4
    85ee:	1c54      	adds	r4, r2, #1
    85f0:	428c      	cmp	r4, r1
    85f2:	d9f6      	bls.n	85e2 <rt_tsk_create+0x76>
    85f4:	2000      	movs	r0, #0
    85f6:	bc04      	pop	{r2}
    85f8:	4690      	mov	r8, r2
    85fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
    85fc:	4815      	ldr	r0, [pc, #84]	; (8654 <rt_tsk_create+0xe8>)
    85fe:	f7fe ff59 	bl	74b4 <rt_alloc_box>
    8602:	62e8      	str	r0, [r5, #44]	; 0x2c
    8604:	e7df      	b.n	85c6 <rt_tsk_create+0x5a>
    8606:	b2e3      	uxtb	r3, r4
    8608:	0092      	lsls	r2, r2, #2
    860a:	4e13      	ldr	r6, [pc, #76]	; (8658 <rt_tsk_create+0xec>)
    860c:	5085      	str	r5, [r0, r2]
    860e:	70eb      	strb	r3, [r5, #3]
    8610:	6830      	ldr	r0, [r6, #0]
    8612:	78aa      	ldrb	r2, [r5, #2]
    8614:	7883      	ldrb	r3, [r0, #2]
    8616:	429a      	cmp	r2, r3
    8618:	d807      	bhi.n	862a <rt_tsk_create+0xbe>
    861a:	2301      	movs	r3, #1
    861c:	480f      	ldr	r0, [pc, #60]	; (865c <rt_tsk_create+0xf0>)
    861e:	706b      	strb	r3, [r5, #1]
    8620:	0029      	movs	r1, r5
    8622:	f7ff fad1 	bl	7bc8 <rt_put_prio>
    8626:	0020      	movs	r0, r4
    8628:	e7e5      	b.n	85f6 <rt_tsk_create+0x8a>
    862a:	f7ff fb07 	bl	7c3c <rt_put_rdy_first>
    862e:	2301      	movs	r3, #1
    8630:	6832      	ldr	r2, [r6, #0]
    8632:	0020      	movs	r0, r4
    8634:	7053      	strb	r3, [r2, #1]
    8636:	3301      	adds	r3, #1
    8638:	6075      	str	r5, [r6, #4]
    863a:	706b      	strb	r3, [r5, #1]
    863c:	e7db      	b.n	85f6 <rt_tsk_create+0x8a>
    863e:	2301      	movs	r3, #1
    8640:	2200      	movs	r2, #0
    8642:	2401      	movs	r4, #1
    8644:	e7e0      	b.n	8608 <rt_tsk_create+0x9c>
    8646:	46c0      	nop			; (mov r8, r8)
    8648:	20000908 	.word	0x20000908
    864c:	00008b4c 	.word	0x00008b4c
    8650:	20004cdc 	.word	0x20004cdc
    8654:	200009e8 	.word	0x200009e8
    8658:	200060b8 	.word	0x200060b8
    865c:	20006084 	.word	0x20006084

00008660 <rt_tsk_delete>:
    8660:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8662:	4644      	mov	r4, r8
    8664:	465f      	mov	r7, fp
    8666:	4656      	mov	r6, sl
    8668:	464d      	mov	r5, r9
    866a:	4b5a      	ldr	r3, [pc, #360]	; (87d4 <rt_tsk_delete+0x174>)
    866c:	b4f0      	push	{r4, r5, r6, r7}
    866e:	4698      	mov	r8, r3
    8670:	681c      	ldr	r4, [r3, #0]
    8672:	2800      	cmp	r0, #0
    8674:	d00e      	beq.n	8694 <rt_tsk_delete+0x34>
    8676:	78e3      	ldrb	r3, [r4, #3]
    8678:	4298      	cmp	r0, r3
    867a:	d00b      	beq.n	8694 <rt_tsk_delete+0x34>
    867c:	4b56      	ldr	r3, [pc, #344]	; (87d8 <rt_tsk_delete+0x178>)
    867e:	881a      	ldrh	r2, [r3, #0]
    8680:	23ff      	movs	r3, #255	; 0xff
    8682:	4290      	cmp	r0, r2
    8684:	d952      	bls.n	872c <rt_tsk_delete+0xcc>
    8686:	0018      	movs	r0, r3
    8688:	bc3c      	pop	{r2, r3, r4, r5}
    868a:	4690      	mov	r8, r2
    868c:	4699      	mov	r9, r3
    868e:	46a2      	mov	sl, r4
    8690:	46ab      	mov	fp, r5
    8692:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8694:	2300      	movs	r3, #0
    8696:	7063      	strb	r3, [r4, #1]
    8698:	f7fc fa99 	bl	4bce <rt_get_PSP>
    869c:	62a0      	str	r0, [r4, #40]	; 0x28
    869e:	f7ff fe8b 	bl	83b8 <rt_stk_check>
    86a2:	4643      	mov	r3, r8
    86a4:	681a      	ldr	r2, [r3, #0]
    86a6:	4f4d      	ldr	r7, [pc, #308]	; (87dc <rt_tsk_delete+0x17c>)
    86a8:	6a14      	ldr	r4, [r2, #32]
    86aa:	2c00      	cmp	r4, #0
    86ac:	d023      	beq.n	86f6 <rt_tsk_delete+0x96>
    86ae:	2601      	movs	r6, #1
    86b0:	e016      	b.n	86e0 <rt_tsk_delete+0x80>
    86b2:	0020      	movs	r0, r4
    86b4:	f7ff faae 	bl	7c14 <rt_get_first>
    86b8:	0005      	movs	r5, r0
    86ba:	2100      	movs	r1, #0
    86bc:	f7fe fe78 	bl	73b0 <rt_ret_val>
    86c0:	0028      	movs	r0, r5
    86c2:	f7ff fbdf 	bl	7e84 <rt_rmv_dly>
    86c6:	706e      	strb	r6, [r5, #1]
    86c8:	0029      	movs	r1, r5
    86ca:	0038      	movs	r0, r7
    86cc:	f7ff fa7c 	bl	7bc8 <rt_put_prio>
    86d0:	68e3      	ldr	r3, [r4, #12]
    86d2:	6a2a      	ldr	r2, [r5, #32]
    86d4:	8066      	strh	r6, [r4, #2]
    86d6:	60a5      	str	r5, [r4, #8]
    86d8:	60e2      	str	r2, [r4, #12]
    86da:	622c      	str	r4, [r5, #32]
    86dc:	1e1c      	subs	r4, r3, #0
    86de:	d008      	beq.n	86f2 <rt_tsk_delete+0x92>
    86e0:	6863      	ldr	r3, [r4, #4]
    86e2:	2b00      	cmp	r3, #0
    86e4:	d1e5      	bne.n	86b2 <rt_tsk_delete+0x52>
    86e6:	68e2      	ldr	r2, [r4, #12]
    86e8:	8063      	strh	r3, [r4, #2]
    86ea:	60a3      	str	r3, [r4, #8]
    86ec:	60e3      	str	r3, [r4, #12]
    86ee:	1e14      	subs	r4, r2, #0
    86f0:	d1f6      	bne.n	86e0 <rt_tsk_delete+0x80>
    86f2:	4643      	mov	r3, r8
    86f4:	681a      	ldr	r2, [r3, #0]
    86f6:	2400      	movs	r4, #0
    86f8:	78d3      	ldrb	r3, [r2, #3]
    86fa:	4939      	ldr	r1, [pc, #228]	; (87e0 <rt_tsk_delete+0x180>)
    86fc:	3b01      	subs	r3, #1
    86fe:	009b      	lsls	r3, r3, #2
    8700:	505c      	str	r4, [r3, r1]
    8702:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    8704:	4837      	ldr	r0, [pc, #220]	; (87e4 <rt_tsk_delete+0x184>)
    8706:	f7fe fef5 	bl	74f4 <rt_free_box>
    870a:	4643      	mov	r3, r8
    870c:	6819      	ldr	r1, [r3, #0]
    870e:	4836      	ldr	r0, [pc, #216]	; (87e8 <rt_tsk_delete+0x188>)
    8710:	62cc      	str	r4, [r1, #44]	; 0x2c
    8712:	f7fe feef 	bl	74f4 <rt_free_box>
    8716:	4643      	mov	r3, r8
    8718:	601c      	str	r4, [r3, #0]
    871a:	0038      	movs	r0, r7
    871c:	f7ff fa7a 	bl	7c14 <rt_get_first>
    8720:	4643      	mov	r3, r8
    8722:	6058      	str	r0, [r3, #4]
    8724:	2302      	movs	r3, #2
    8726:	7043      	strb	r3, [r0, #1]
    8728:	2300      	movs	r3, #0
    872a:	e7ac      	b.n	8686 <rt_tsk_delete+0x26>
    872c:	4a2c      	ldr	r2, [pc, #176]	; (87e0 <rt_tsk_delete+0x180>)
    872e:	1e46      	subs	r6, r0, #1
    8730:	4692      	mov	sl, r2
    8732:	00b2      	lsls	r2, r6, #2
    8734:	4693      	mov	fp, r2
    8736:	4652      	mov	r2, sl
    8738:	4659      	mov	r1, fp
    873a:	5856      	ldr	r6, [r2, r1]
    873c:	2e00      	cmp	r6, #0
    873e:	d0a2      	beq.n	8686 <rt_tsk_delete+0x26>
    8740:	0030      	movs	r0, r6
    8742:	f7ff fb89 	bl	7e58 <rt_rmv_list>
    8746:	0030      	movs	r0, r6
    8748:	f7ff fb9c 	bl	7e84 <rt_rmv_dly>
    874c:	2301      	movs	r3, #1
    874e:	6a34      	ldr	r4, [r6, #32]
    8750:	4f22      	ldr	r7, [pc, #136]	; (87dc <rt_tsk_delete+0x17c>)
    8752:	4699      	mov	r9, r3
    8754:	2c00      	cmp	r4, #0
    8756:	d11a      	bne.n	878e <rt_tsk_delete+0x12e>
    8758:	e022      	b.n	87a0 <rt_tsk_delete+0x140>
    875a:	0020      	movs	r0, r4
    875c:	f7ff fa5a 	bl	7c14 <rt_get_first>
    8760:	0005      	movs	r5, r0
    8762:	2100      	movs	r1, #0
    8764:	f7fe fe24 	bl	73b0 <rt_ret_val>
    8768:	0028      	movs	r0, r5
    876a:	f7ff fb8b 	bl	7e84 <rt_rmv_dly>
    876e:	464b      	mov	r3, r9
    8770:	0029      	movs	r1, r5
    8772:	706b      	strb	r3, [r5, #1]
    8774:	0038      	movs	r0, r7
    8776:	f7ff fa27 	bl	7bc8 <rt_put_prio>
    877a:	464a      	mov	r2, r9
    877c:	68e3      	ldr	r3, [r4, #12]
    877e:	8062      	strh	r2, [r4, #2]
    8780:	6a2a      	ldr	r2, [r5, #32]
    8782:	60a5      	str	r5, [r4, #8]
    8784:	60e2      	str	r2, [r4, #12]
    8786:	622c      	str	r4, [r5, #32]
    8788:	001c      	movs	r4, r3
    878a:	2c00      	cmp	r4, #0
    878c:	d008      	beq.n	87a0 <rt_tsk_delete+0x140>
    878e:	6863      	ldr	r3, [r4, #4]
    8790:	2b00      	cmp	r3, #0
    8792:	d1e2      	bne.n	875a <rt_tsk_delete+0xfa>
    8794:	68e2      	ldr	r2, [r4, #12]
    8796:	8063      	strh	r3, [r4, #2]
    8798:	60a3      	str	r3, [r4, #8]
    879a:	60e3      	str	r3, [r4, #12]
    879c:	0014      	movs	r4, r2
    879e:	e7f4      	b.n	878a <rt_tsk_delete+0x12a>
    87a0:	4653      	mov	r3, sl
    87a2:	465a      	mov	r2, fp
    87a4:	2400      	movs	r4, #0
    87a6:	509c      	str	r4, [r3, r2]
    87a8:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    87aa:	480e      	ldr	r0, [pc, #56]	; (87e4 <rt_tsk_delete+0x184>)
    87ac:	f7fe fea2 	bl	74f4 <rt_free_box>
    87b0:	0031      	movs	r1, r6
    87b2:	62f4      	str	r4, [r6, #44]	; 0x2c
    87b4:	480c      	ldr	r0, [pc, #48]	; (87e8 <rt_tsk_delete+0x188>)
    87b6:	f7fe fe9d 	bl	74f4 <rt_free_box>
    87ba:	4643      	mov	r3, r8
    87bc:	6819      	ldr	r1, [r3, #0]
    87be:	687b      	ldr	r3, [r7, #4]
    87c0:	789a      	ldrb	r2, [r3, #2]
    87c2:	788b      	ldrb	r3, [r1, #2]
    87c4:	429a      	cmp	r2, r3
    87c6:	d9af      	bls.n	8728 <rt_tsk_delete+0xc8>
    87c8:	2301      	movs	r3, #1
    87ca:	0038      	movs	r0, r7
    87cc:	704b      	strb	r3, [r1, #1]
    87ce:	f7ff f9fb 	bl	7bc8 <rt_put_prio>
    87d2:	e7a2      	b.n	871a <rt_tsk_delete+0xba>
    87d4:	200060b8 	.word	0x200060b8
    87d8:	00008b4c 	.word	0x00008b4c
    87dc:	20006084 	.word	0x20006084
    87e0:	20004cdc 	.word	0x20004cdc
    87e4:	200009e8 	.word	0x200009e8
    87e8:	20000908 	.word	0x20000908

000087ec <rt_sys_init>:
    87ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    87ee:	4b2b      	ldr	r3, [pc, #172]	; (889c <rt_sys_init+0xb0>)
    87f0:	881a      	ldrh	r2, [r3, #0]
    87f2:	2a00      	cmp	r2, #0
    87f4:	d004      	beq.n	8800 <rt_sys_init+0x14>
    87f6:	0092      	lsls	r2, r2, #2
    87f8:	2100      	movs	r1, #0
    87fa:	4829      	ldr	r0, [pc, #164]	; (88a0 <rt_sys_init+0xb4>)
    87fc:	f000 f8d8 	bl	89b0 <memset>
    8800:	4b28      	ldr	r3, [pc, #160]	; (88a4 <rt_sys_init+0xb8>)
    8802:	2234      	movs	r2, #52	; 0x34
    8804:	8819      	ldrh	r1, [r3, #0]
    8806:	4828      	ldr	r0, [pc, #160]	; (88a8 <rt_sys_init+0xbc>)
    8808:	f7fe fe28 	bl	745c <_init_box>
    880c:	2280      	movs	r2, #128	; 0x80
    880e:	4b27      	ldr	r3, [pc, #156]	; (88ac <rt_sys_init+0xc0>)
    8810:	0612      	lsls	r2, r2, #24
    8812:	881b      	ldrh	r3, [r3, #0]
    8814:	4f26      	ldr	r7, [pc, #152]	; (88b0 <rt_sys_init+0xc4>)
    8816:	431a      	orrs	r2, r3
    8818:	4b26      	ldr	r3, [pc, #152]	; (88b4 <rt_sys_init+0xc8>)
    881a:	0038      	movs	r0, r7
    881c:	6819      	ldr	r1, [r3, #0]
    881e:	f7fe fe1d 	bl	745c <_init_box>
    8822:	4b25      	ldr	r3, [pc, #148]	; (88b8 <rt_sys_init+0xcc>)
    8824:	2208      	movs	r2, #8
    8826:	6818      	ldr	r0, [r3, #0]
    8828:	4b24      	ldr	r3, [pc, #144]	; (88bc <rt_sys_init+0xd0>)
    882a:	2600      	movs	r6, #0
    882c:	8819      	ldrh	r1, [r3, #0]
    882e:	f7fe fe15 	bl	745c <_init_box>
    8832:	23ff      	movs	r3, #255	; 0xff
    8834:	2500      	movs	r5, #0
    8836:	4c22      	ldr	r4, [pc, #136]	; (88c0 <rt_sys_init+0xd4>)
    8838:	0038      	movs	r0, r7
    883a:	70e3      	strb	r3, [r4, #3]
    883c:	3bfe      	subs	r3, #254	; 0xfe
    883e:	7063      	strb	r3, [r4, #1]
    8840:	3323      	adds	r3, #35	; 0x23
    8842:	54e6      	strb	r6, [r4, r3]
    8844:	3301      	adds	r3, #1
    8846:	54e6      	strb	r6, [r4, r3]
    8848:	84e5      	strh	r5, [r4, #38]	; 0x26
    884a:	7026      	strb	r6, [r4, #0]
    884c:	70a6      	strb	r6, [r4, #2]
    884e:	6065      	str	r5, [r4, #4]
    8850:	60a5      	str	r5, [r4, #8]
    8852:	60e5      	str	r5, [r4, #12]
    8854:	6125      	str	r5, [r4, #16]
    8856:	6225      	str	r5, [r4, #32]
    8858:	82a5      	strh	r5, [r4, #20]
    885a:	82e5      	strh	r5, [r4, #22]
    885c:	8325      	strh	r5, [r4, #24]
    885e:	8365      	strh	r5, [r4, #26]
    8860:	f7fe fe28 	bl	74b4 <rt_alloc_box>
    8864:	4917      	ldr	r1, [pc, #92]	; (88c4 <rt_sys_init+0xd8>)
    8866:	62e0      	str	r0, [r4, #44]	; 0x2c
    8868:	0020      	movs	r0, r4
    886a:	f7fe fd49 	bl	7300 <rt_init_stack>
    886e:	2204      	movs	r2, #4
    8870:	4b15      	ldr	r3, [pc, #84]	; (88c8 <rt_sys_init+0xdc>)
    8872:	701a      	strb	r2, [r3, #0]
    8874:	605d      	str	r5, [r3, #4]
    8876:	4b15      	ldr	r3, [pc, #84]	; (88cc <rt_sys_init+0xe0>)
    8878:	701a      	strb	r2, [r3, #0]
    887a:	60dd      	str	r5, [r3, #12]
    887c:	611d      	str	r5, [r3, #16]
    887e:	829d      	strh	r5, [r3, #20]
    8880:	4b13      	ldr	r3, [pc, #76]	; (88d0 <rt_sys_init+0xe4>)
    8882:	4a14      	ldr	r2, [pc, #80]	; (88d4 <rt_sys_init+0xe8>)
    8884:	601c      	str	r4, [r3, #0]
    8886:	2302      	movs	r3, #2
    8888:	7812      	ldrb	r2, [r2, #0]
    888a:	7063      	strb	r3, [r4, #1]
    888c:	4b12      	ldr	r3, [pc, #72]	; (88d8 <rt_sys_init+0xec>)
    888e:	701e      	strb	r6, [r3, #0]
    8890:	705e      	strb	r6, [r3, #1]
    8892:	70da      	strb	r2, [r3, #3]
    8894:	f000 f85a 	bl	894c <rt_init_robin>
    8898:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    889a:	46c0      	nop			; (mov r8, r8)
    889c:	00008b4c 	.word	0x00008b4c
    88a0:	20004cdc 	.word	0x20004cdc
    88a4:	00008b78 	.word	0x00008b78
    88a8:	20000908 	.word	0x20000908
    88ac:	00008b50 	.word	0x00008b50
    88b0:	200009e8 	.word	0x200009e8
    88b4:	00008b7c 	.word	0x00008b7c
    88b8:	20004d18 	.word	0x20004d18
    88bc:	00008ba0 	.word	0x00008ba0
    88c0:	200060c0 	.word	0x200060c0
    88c4:	00001a0d 	.word	0x00001a0d
    88c8:	20006084 	.word	0x20006084
    88cc:	2000609c 	.word	0x2000609c
    88d0:	200060b8 	.word	0x200060b8
    88d4:	00008b84 	.word	0x00008b84
    88d8:	20004c58 	.word	0x20004c58

000088dc <rt_sys_start>:
    88dc:	21ff      	movs	r1, #255	; 0xff
    88de:	4b16      	ldr	r3, [pc, #88]	; (8938 <rt_sys_start+0x5c>)
    88e0:	0409      	lsls	r1, r1, #16
    88e2:	681a      	ldr	r2, [r3, #0]
    88e4:	b510      	push	{r4, lr}
    88e6:	430a      	orrs	r2, r1
    88e8:	601a      	str	r2, [r3, #0]
    88ea:	681b      	ldr	r3, [r3, #0]
    88ec:	4913      	ldr	r1, [pc, #76]	; (893c <rt_sys_start+0x60>)
    88ee:	025b      	lsls	r3, r3, #9
    88f0:	680a      	ldr	r2, [r1, #0]
    88f2:	0e9b      	lsrs	r3, r3, #26
    88f4:	069b      	lsls	r3, r3, #26
    88f6:	4313      	orrs	r3, r2
    88f8:	600b      	str	r3, [r1, #0]
    88fa:	f7ff fd0d 	bl	8318 <os_tick_init>
    88fe:	4c10      	ldr	r4, [pc, #64]	; (8940 <rt_sys_start+0x64>)
    8900:	6020      	str	r0, [r4, #0]
    8902:	2800      	cmp	r0, #0
    8904:	db17      	blt.n	8936 <rt_sys_start+0x5a>
    8906:	4a0f      	ldr	r2, [pc, #60]	; (8944 <rt_sys_start+0x68>)
    8908:	0883      	lsrs	r3, r0, #2
    890a:	4694      	mov	ip, r2
    890c:	2218      	movs	r2, #24
    890e:	00c0      	lsls	r0, r0, #3
    8910:	4010      	ands	r0, r2
    8912:	32e7      	adds	r2, #231	; 0xe7
    8914:	4082      	lsls	r2, r0
    8916:	009b      	lsls	r3, r3, #2
    8918:	4463      	add	r3, ip
    891a:	6819      	ldr	r1, [r3, #0]
    891c:	430a      	orrs	r2, r1
    891e:	490a      	ldr	r1, [pc, #40]	; (8948 <rt_sys_start+0x6c>)
    8920:	601a      	str	r2, [r3, #0]
    8922:	468c      	mov	ip, r1
    8924:	211f      	movs	r1, #31
    8926:	6822      	ldr	r2, [r4, #0]
    8928:	0953      	lsrs	r3, r2, #5
    892a:	400a      	ands	r2, r1
    892c:	391e      	subs	r1, #30
    892e:	4091      	lsls	r1, r2
    8930:	009b      	lsls	r3, r3, #2
    8932:	4463      	add	r3, ip
    8934:	6019      	str	r1, [r3, #0]
    8936:	bd10      	pop	{r4, pc}
    8938:	e000ed20 	.word	0xe000ed20
    893c:	e000ed1c 	.word	0xe000ed1c
    8940:	200060b4 	.word	0x200060b4
    8944:	e000e400 	.word	0xe000e400
    8948:	e000e100 	.word	0xe000e100

0000894c <rt_init_robin>:
    894c:	2200      	movs	r2, #0
    894e:	4b03      	ldr	r3, [pc, #12]	; (895c <rt_init_robin+0x10>)
    8950:	601a      	str	r2, [r3, #0]
    8952:	4a03      	ldr	r2, [pc, #12]	; (8960 <rt_init_robin+0x14>)
    8954:	6812      	ldr	r2, [r2, #0]
    8956:	80da      	strh	r2, [r3, #6]
    8958:	4770      	bx	lr
    895a:	46c0      	nop			; (mov r8, r8)
    895c:	200060f4 	.word	0x200060f4
    8960:	00008b54 	.word	0x00008b54

00008964 <rt_chk_robin>:
    8964:	b510      	push	{r4, lr}
    8966:	4a0f      	ldr	r2, [pc, #60]	; (89a4 <rt_chk_robin+0x40>)
    8968:	4c0f      	ldr	r4, [pc, #60]	; (89a8 <rt_chk_robin+0x44>)
    896a:	6811      	ldr	r1, [r2, #0]
    896c:	6863      	ldr	r3, [r4, #4]
    896e:	4299      	cmp	r1, r3
    8970:	d014      	beq.n	899c <rt_chk_robin+0x38>
    8972:	6013      	str	r3, [r2, #0]
    8974:	4b0d      	ldr	r3, [pc, #52]	; (89ac <rt_chk_robin+0x48>)
    8976:	8819      	ldrh	r1, [r3, #0]
    8978:	88d3      	ldrh	r3, [r2, #6]
    897a:	3b01      	subs	r3, #1
    897c:	18cb      	adds	r3, r1, r3
    897e:	b29b      	uxth	r3, r3
    8980:	8093      	strh	r3, [r2, #4]
    8982:	4299      	cmp	r1, r3
    8984:	d000      	beq.n	8988 <rt_chk_robin+0x24>
    8986:	bd10      	pop	{r4, pc}
    8988:	2300      	movs	r3, #0
    898a:	0020      	movs	r0, r4
    898c:	6013      	str	r3, [r2, #0]
    898e:	f7ff f941 	bl	7c14 <rt_get_first>
    8992:	0001      	movs	r1, r0
    8994:	0020      	movs	r0, r4
    8996:	f7ff f917 	bl	7bc8 <rt_put_prio>
    899a:	e7f4      	b.n	8986 <rt_chk_robin+0x22>
    899c:	4b03      	ldr	r3, [pc, #12]	; (89ac <rt_chk_robin+0x48>)
    899e:	8819      	ldrh	r1, [r3, #0]
    89a0:	8893      	ldrh	r3, [r2, #4]
    89a2:	e7ee      	b.n	8982 <rt_chk_robin+0x1e>
    89a4:	200060f4 	.word	0x200060f4
    89a8:	20006084 	.word	0x20006084
    89ac:	20006080 	.word	0x20006080

000089b0 <memset>:
    89b0:	b570      	push	{r4, r5, r6, lr}
    89b2:	0783      	lsls	r3, r0, #30
    89b4:	d03f      	beq.n	8a36 <memset+0x86>
    89b6:	1e54      	subs	r4, r2, #1
    89b8:	2a00      	cmp	r2, #0
    89ba:	d03b      	beq.n	8a34 <memset+0x84>
    89bc:	b2ce      	uxtb	r6, r1
    89be:	0003      	movs	r3, r0
    89c0:	2503      	movs	r5, #3
    89c2:	e003      	b.n	89cc <memset+0x1c>
    89c4:	1e62      	subs	r2, r4, #1
    89c6:	2c00      	cmp	r4, #0
    89c8:	d034      	beq.n	8a34 <memset+0x84>
    89ca:	0014      	movs	r4, r2
    89cc:	3301      	adds	r3, #1
    89ce:	1e5a      	subs	r2, r3, #1
    89d0:	7016      	strb	r6, [r2, #0]
    89d2:	422b      	tst	r3, r5
    89d4:	d1f6      	bne.n	89c4 <memset+0x14>
    89d6:	2c03      	cmp	r4, #3
    89d8:	d924      	bls.n	8a24 <memset+0x74>
    89da:	25ff      	movs	r5, #255	; 0xff
    89dc:	400d      	ands	r5, r1
    89de:	022a      	lsls	r2, r5, #8
    89e0:	4315      	orrs	r5, r2
    89e2:	042a      	lsls	r2, r5, #16
    89e4:	4315      	orrs	r5, r2
    89e6:	2c0f      	cmp	r4, #15
    89e8:	d911      	bls.n	8a0e <memset+0x5e>
    89ea:	0026      	movs	r6, r4
    89ec:	3e10      	subs	r6, #16
    89ee:	0936      	lsrs	r6, r6, #4
    89f0:	3601      	adds	r6, #1
    89f2:	0136      	lsls	r6, r6, #4
    89f4:	001a      	movs	r2, r3
    89f6:	199b      	adds	r3, r3, r6
    89f8:	6015      	str	r5, [r2, #0]
    89fa:	6055      	str	r5, [r2, #4]
    89fc:	6095      	str	r5, [r2, #8]
    89fe:	60d5      	str	r5, [r2, #12]
    8a00:	3210      	adds	r2, #16
    8a02:	4293      	cmp	r3, r2
    8a04:	d1f8      	bne.n	89f8 <memset+0x48>
    8a06:	220f      	movs	r2, #15
    8a08:	4014      	ands	r4, r2
    8a0a:	2c03      	cmp	r4, #3
    8a0c:	d90a      	bls.n	8a24 <memset+0x74>
    8a0e:	1f26      	subs	r6, r4, #4
    8a10:	08b6      	lsrs	r6, r6, #2
    8a12:	3601      	adds	r6, #1
    8a14:	00b6      	lsls	r6, r6, #2
    8a16:	001a      	movs	r2, r3
    8a18:	199b      	adds	r3, r3, r6
    8a1a:	c220      	stmia	r2!, {r5}
    8a1c:	4293      	cmp	r3, r2
    8a1e:	d1fc      	bne.n	8a1a <memset+0x6a>
    8a20:	2203      	movs	r2, #3
    8a22:	4014      	ands	r4, r2
    8a24:	2c00      	cmp	r4, #0
    8a26:	d005      	beq.n	8a34 <memset+0x84>
    8a28:	b2c9      	uxtb	r1, r1
    8a2a:	191c      	adds	r4, r3, r4
    8a2c:	7019      	strb	r1, [r3, #0]
    8a2e:	3301      	adds	r3, #1
    8a30:	429c      	cmp	r4, r3
    8a32:	d1fb      	bne.n	8a2c <memset+0x7c>
    8a34:	bd70      	pop	{r4, r5, r6, pc}
    8a36:	0014      	movs	r4, r2
    8a38:	0003      	movs	r3, r0
    8a3a:	e7cc      	b.n	89d6 <memset+0x26>
    8a3c:	0000      	movs	r0, r0
	...

00008a40 <__eeprom_program_word_veneer>:
    8a40:	b401      	push	{r0}
    8a42:	4802      	ldr	r0, [pc, #8]	; (8a4c <__eeprom_program_word_veneer+0xc>)
    8a44:	4684      	mov	ip, r0
    8a46:	bc01      	pop	{r0}
    8a48:	4760      	bx	ip
    8a4a:	bf00      	nop
    8a4c:	20100151 	.word	0x20100151

00008a50 <__eeprom_erase_page_veneer>:
    8a50:	b401      	push	{r0}
    8a52:	4802      	ldr	r0, [pc, #8]	; (8a5c <__eeprom_erase_page_veneer+0xc>)
    8a54:	4684      	mov	ip, r0
    8a56:	bc01      	pop	{r0}
    8a58:	4760      	bx	ip
    8a5a:	bf00      	nop
    8a5c:	2010002d 	.word	0x2010002d

00008a60 <__eeprom_read_word_veneer>:
    8a60:	b401      	push	{r0}
    8a62:	4802      	ldr	r0, [pc, #8]	; (8a6c <__eeprom_read_word_veneer+0xc>)
    8a64:	4684      	mov	ip, r0
    8a66:	bc01      	pop	{r0}
    8a68:	4760      	bx	ip
    8a6a:	bf00      	nop
    8a6c:	20100229 	.word	0x20100229

00008a70 <threadPacketParserDef>:
    8a70:	000031e5 00000001 00000001 00000400     .1..............

00008a80 <threadFSMProceedDef>:
    8a80:	00000499 00000000 00000001 00000400     ................

00008a90 <threadDUTProceedDef>:
    8a90:	0000033d 00000000 00000001 00000400     =...............

00008aa0 <message_def>:
    8aa0:	00000004 20000870                       ....p.. 

00008aa8 <os_mutex_def_MutexMdbReg>:
    8aa8:	20000894 74697865 00000000 70616548     ... exit....Heap
    8ab8:	646e6120 61747320 63206b63 696c6c6f      and stack colli
    8ac8:	6e6f6973 0000000a 0000142e 0000141c     sion............
    8ad8:	0000143a 00001446 00001446 00001446     :...F...F...F...
    8ae8:	00001446 00001446 00001446 00001446     F...F...F...F...
    8af8:	00001446 00001446 00001446 00001434     F...F...F...4...
    8b08:	00001446 00001446 00001446 000013c0     F...F...F.......
    8b18:	00001446 0000143a 00001446 00001446     F...:...F...F...
    8b28:	00001440 6c383025 00002058 32302520     @...%08lX .. %02
    8b38:	00000058 34302520 00000058 38302520     X... %04X... %08
    8b48:	0000584c                                LX..

00008b4c <os_maxtaskrun>:
    8b4c:	00000004                                ....

00008b50 <os_stackinfo>:
    8b50:	01021000                                ....

00008b54 <os_rrobin>:
    8b54:	00010005                                ....

00008b58 <os_tickfreq>:
    8b58:	04c4b400                                ....

00008b5c <os_tickus_i>:
    8b5c:	00000050                                         P.

00008b5e <os_tickus_f>:
	...

00008b60 <os_trv>:
    8b60:	0001387f                                .8..

00008b64 <os_flags>:
    8b64:	00000001                                ....

00008b68 <CMSIS_RTOS_API_Version>:
    8b68:	00010002                                ....

00008b6c <CMSIS_RTOS_RTX_Version>:
    8b6c:	00040052                                R...

00008b70 <os_clockrate>:
    8b70:	000003e8                                ....

00008b74 <os_timernum>:
    8b74:	00000000                                ....

00008b78 <mp_tcb_size>:
    8b78:	000000dc                                ....

00008b7c <mp_stk_size>:
    8b7c:	00003010                                .0..

00008b80 <os_stack_sz>:
    8b80:	00001260                                `...

00008b84 <os_fifo_size>:
    8b84:	00000010                                ....

00008b88 <os_thread_def_osTimerThread>:
    8b88:	00006569 00000002 00000001 00000200     ie..............

00008b98 <os_messageQ_def_osTimerMessageQ>:
    8b98:	00000004 20004cf0                       .....L. 

00008ba0 <mp_tmr_size>:
    8ba0:	00000000                                ....

00008ba4 <os_thread_def_main>:
    8ba4:	0000020d 00000000 00000001 00000040     ............@...

00008bb4 <os_mutex_def_readpackMutex>:
    8bb4:	2000531c                                .S. 

00008bb8 <os_mutex_def_sendpackMutex>:
    8bb8:	20005330                                0S. 

00008bbc <crc_table>:
    8bbc:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    8bcc:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    8bdc:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    8bec:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    8bfc:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    8c0c:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    8c1c:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    8c2c:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    8c3c:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    8c4c:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    8c5c:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    8c6c:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    8c7c:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    8c8c:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    8c9c:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    8cac:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    8cbc:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    8ccc:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    8cdc:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    8cec:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    8cfc:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    8d0c:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    8d1c:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    8d2c:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    8d3c:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    8d4c:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    8d5c:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    8d6c:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    8d7c:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    8d8c:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    8d9c:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    8dac:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    8dbc:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    8dcc:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    8ddc:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    8dec:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    8dfc:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    8e0c:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    8e1c:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    8e2c:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    8e3c:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    8e4c:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    8e5c:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    8e6c:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    8e7c:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    8e8c:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    8e9c:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    8eac:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    8ebc:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    8ecc:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    8edc:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    8eec:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    8efc:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    8f0c:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    8f1c:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    8f2c:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    8f3c:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    8f4c:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    8f5c:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    8f6c:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    8f7c:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    8f8c:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    8f9c:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    8fac:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

00008fbc <crc_table_low>:
    8fbc:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8fcc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8fdc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8fec:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8ffc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    900c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    901c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    902c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    903c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    904c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    905c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    906c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    907c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    908c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    909c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    90ac:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

000090bc <crc_table_high>:
    90bc:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    90cc:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    90dc:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    90ec:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    90fc:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    910c:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    911c:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    912c:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    913c:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    914c:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    915c:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    916c:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    917c:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    918c:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    919c:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    91ac:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

000091bc <defBsiParam>:
    91bc:	0100000a 78563412 d108bc9a              .....4Vx....

000091c8 <device_additional_info>:
    91c8:	20554153 746e6f63 6c6c6f72 00007265     SAU controller..

000091d8 <proc_PDU_table>:
    91d8:	00003f7d 00003f7d 00003f7d 00003e41     }?..}?..}?..A>..
    91e8:	000038b5 00003f7d 00003f7d 00003f7d     .8..}?..}?..}?..
    91f8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9208:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9218:	00003a05 0000381d 00003f7d 00003f7d     .:...8..}?..}?..
    9228:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9238:	00003c35 00003f7d 00003f7d 00003f7d     5<..}?..}?..}?..
    9248:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9258:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9268:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9278:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9288:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9298:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    92a8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    92b8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    92c8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    92d8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    92e8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    92f8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9308:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9318:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9328:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9338:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9348:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9358:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9368:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9378:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9388:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9398:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    93a8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    93b8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    93c8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    93d8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    93e8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    93f8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9408:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9418:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9428:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9438:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9448:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9458:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9468:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9478:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9488:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9498:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    94a8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    94b8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    94c8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    94d8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    94e8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    94f8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9508:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9518:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9528:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9538:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9548:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9558:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9568:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9578:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9588:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    9598:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    95a8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    95b8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..
    95c8:	00003f7d 00003f7d 00003f7d 00003f7d     }?..}?..}?..}?..

000095d8 <_global_impure_ptr>:
    95d8:	20000020                                 .. 

Disassembly of section .ramfunc:

20100000 <usleep>:
20100000:	b580      	push	{r7, lr}
20100002:	b082      	sub	sp, #8
20100004:	af00      	add	r7, sp, #0
20100006:	6078      	str	r0, [r7, #4]
20100008:	687a      	ldr	r2, [r7, #4]
2010000a:	0013      	movs	r3, r2
2010000c:	009b      	lsls	r3, r3, #2
2010000e:	189b      	adds	r3, r3, r2
20100010:	005b      	lsls	r3, r3, #1
20100012:	189b      	adds	r3, r3, r2
20100014:	105b      	asrs	r3, r3, #1
20100016:	607b      	str	r3, [r7, #4]
20100018:	46c0      	nop			; (mov r8, r8)
2010001a:	687b      	ldr	r3, [r7, #4]
2010001c:	1e5a      	subs	r2, r3, #1
2010001e:	607a      	str	r2, [r7, #4]
20100020:	2b00      	cmp	r3, #0
20100022:	d1fa      	bne.n	2010001a <usleep+0x1a>
20100024:	46c0      	nop			; (mov r8, r8)
20100026:	46bd      	mov	sp, r7
20100028:	b002      	add	sp, #8
2010002a:	bd80      	pop	{r7, pc}

2010002c <eeprom_erase_page>:
2010002c:	b580      	push	{r7, lr}
2010002e:	b084      	sub	sp, #16
20100030:	af00      	add	r7, sp, #0
20100032:	2301      	movs	r3, #1
20100034:	60bb      	str	r3, [r7, #8]
20100036:	2300      	movs	r3, #0
20100038:	607b      	str	r3, [r7, #4]
2010003a:	4b3d      	ldr	r3, [pc, #244]	; (20100130 <eeprom_erase_page+0x104>)
2010003c:	4a3d      	ldr	r2, [pc, #244]	; (20100134 <eeprom_erase_page+0x108>)
2010003e:	611a      	str	r2, [r3, #16]
20100040:	4b3b      	ldr	r3, [pc, #236]	; (20100130 <eeprom_erase_page+0x104>)
20100042:	4a3b      	ldr	r2, [pc, #236]	; (20100130 <eeprom_erase_page+0x104>)
20100044:	6812      	ldr	r2, [r2, #0]
20100046:	493c      	ldr	r1, [pc, #240]	; (20100138 <eeprom_erase_page+0x10c>)
20100048:	430a      	orrs	r2, r1
2010004a:	601a      	str	r2, [r3, #0]
2010004c:	2300      	movs	r3, #0
2010004e:	60fb      	str	r3, [r7, #12]
20100050:	e031      	b.n	201000b6 <eeprom_erase_page+0x8a>
20100052:	4b37      	ldr	r3, [pc, #220]	; (20100130 <eeprom_erase_page+0x104>)
20100054:	6879      	ldr	r1, [r7, #4]
20100056:	68fa      	ldr	r2, [r7, #12]
20100058:	188a      	adds	r2, r1, r2
2010005a:	605a      	str	r2, [r3, #4]
2010005c:	4b34      	ldr	r3, [pc, #208]	; (20100130 <eeprom_erase_page+0x104>)
2010005e:	2200      	movs	r2, #0
20100060:	609a      	str	r2, [r3, #8]
20100062:	4b33      	ldr	r3, [pc, #204]	; (20100130 <eeprom_erase_page+0x104>)
20100064:	4a32      	ldr	r2, [pc, #200]	; (20100130 <eeprom_erase_page+0x104>)
20100066:	6812      	ldr	r2, [r2, #0]
20100068:	2188      	movs	r1, #136	; 0x88
2010006a:	00c9      	lsls	r1, r1, #3
2010006c:	430a      	orrs	r2, r1
2010006e:	601a      	str	r2, [r3, #0]
20100070:	2006      	movs	r0, #6
20100072:	f7ff ffc5 	bl	20100000 <usleep>
20100076:	4b2e      	ldr	r3, [pc, #184]	; (20100130 <eeprom_erase_page+0x104>)
20100078:	4a2d      	ldr	r2, [pc, #180]	; (20100130 <eeprom_erase_page+0x104>)
2010007a:	6812      	ldr	r2, [r2, #0]
2010007c:	2180      	movs	r1, #128	; 0x80
2010007e:	0189      	lsls	r1, r1, #6
20100080:	430a      	orrs	r2, r1
20100082:	601a      	str	r2, [r3, #0]
20100084:	4b2d      	ldr	r3, [pc, #180]	; (2010013c <eeprom_erase_page+0x110>)
20100086:	0018      	movs	r0, r3
20100088:	f7ff ffba 	bl	20100000 <usleep>
2010008c:	4b28      	ldr	r3, [pc, #160]	; (20100130 <eeprom_erase_page+0x104>)
2010008e:	4a28      	ldr	r2, [pc, #160]	; (20100130 <eeprom_erase_page+0x104>)
20100090:	6812      	ldr	r2, [r2, #0]
20100092:	492b      	ldr	r1, [pc, #172]	; (20100140 <eeprom_erase_page+0x114>)
20100094:	400a      	ands	r2, r1
20100096:	601a      	str	r2, [r3, #0]
20100098:	2005      	movs	r0, #5
2010009a:	f7ff ffb1 	bl	20100000 <usleep>
2010009e:	4b24      	ldr	r3, [pc, #144]	; (20100130 <eeprom_erase_page+0x104>)
201000a0:	4a23      	ldr	r2, [pc, #140]	; (20100130 <eeprom_erase_page+0x104>)
201000a2:	6812      	ldr	r2, [r2, #0]
201000a4:	4927      	ldr	r1, [pc, #156]	; (20100144 <eeprom_erase_page+0x118>)
201000a6:	400a      	ands	r2, r1
201000a8:	601a      	str	r2, [r3, #0]
201000aa:	2002      	movs	r0, #2
201000ac:	f7ff ffa8 	bl	20100000 <usleep>
201000b0:	68fb      	ldr	r3, [r7, #12]
201000b2:	3304      	adds	r3, #4
201000b4:	60fb      	str	r3, [r7, #12]
201000b6:	68fb      	ldr	r3, [r7, #12]
201000b8:	2b0f      	cmp	r3, #15
201000ba:	d9ca      	bls.n	20100052 <eeprom_erase_page+0x26>
201000bc:	687b      	ldr	r3, [r7, #4]
201000be:	60fb      	str	r3, [r7, #12]
201000c0:	e021      	b.n	20100106 <eeprom_erase_page+0xda>
201000c2:	4b1b      	ldr	r3, [pc, #108]	; (20100130 <eeprom_erase_page+0x104>)
201000c4:	68fa      	ldr	r2, [r7, #12]
201000c6:	605a      	str	r2, [r3, #4]
201000c8:	4b19      	ldr	r3, [pc, #100]	; (20100130 <eeprom_erase_page+0x104>)
201000ca:	4a19      	ldr	r2, [pc, #100]	; (20100130 <eeprom_erase_page+0x104>)
201000cc:	6812      	ldr	r2, [r2, #0]
201000ce:	21e0      	movs	r1, #224	; 0xe0
201000d0:	0049      	lsls	r1, r1, #1
201000d2:	430a      	orrs	r2, r1
201000d4:	601a      	str	r2, [r3, #0]
201000d6:	2001      	movs	r0, #1
201000d8:	f7ff ff92 	bl	20100000 <usleep>
201000dc:	4b14      	ldr	r3, [pc, #80]	; (20100130 <eeprom_erase_page+0x104>)
201000de:	68db      	ldr	r3, [r3, #12]
201000e0:	603b      	str	r3, [r7, #0]
201000e2:	4b13      	ldr	r3, [pc, #76]	; (20100130 <eeprom_erase_page+0x104>)
201000e4:	4a12      	ldr	r2, [pc, #72]	; (20100130 <eeprom_erase_page+0x104>)
201000e6:	6812      	ldr	r2, [r2, #0]
201000e8:	4917      	ldr	r1, [pc, #92]	; (20100148 <eeprom_erase_page+0x11c>)
201000ea:	400a      	ands	r2, r1
201000ec:	601a      	str	r2, [r3, #0]
201000ee:	2001      	movs	r0, #1
201000f0:	f7ff ff86 	bl	20100000 <usleep>
201000f4:	683b      	ldr	r3, [r7, #0]
201000f6:	3301      	adds	r3, #1
201000f8:	d002      	beq.n	20100100 <eeprom_erase_page+0xd4>
201000fa:	2300      	movs	r3, #0
201000fc:	60bb      	str	r3, [r7, #8]
201000fe:	e009      	b.n	20100114 <eeprom_erase_page+0xe8>
20100100:	68fb      	ldr	r3, [r7, #12]
20100102:	3304      	adds	r3, #4
20100104:	60fb      	str	r3, [r7, #12]
20100106:	687b      	ldr	r3, [r7, #4]
20100108:	2280      	movs	r2, #128	; 0x80
2010010a:	0152      	lsls	r2, r2, #5
2010010c:	189a      	adds	r2, r3, r2
2010010e:	68fb      	ldr	r3, [r7, #12]
20100110:	429a      	cmp	r2, r3
20100112:	d8d6      	bhi.n	201000c2 <eeprom_erase_page+0x96>
20100114:	4b06      	ldr	r3, [pc, #24]	; (20100130 <eeprom_erase_page+0x104>)
20100116:	4a06      	ldr	r2, [pc, #24]	; (20100130 <eeprom_erase_page+0x104>)
20100118:	6812      	ldr	r2, [r2, #0]
2010011a:	490c      	ldr	r1, [pc, #48]	; (2010014c <eeprom_erase_page+0x120>)
2010011c:	400a      	ands	r2, r1
2010011e:	601a      	str	r2, [r3, #0]
20100120:	4b03      	ldr	r3, [pc, #12]	; (20100130 <eeprom_erase_page+0x104>)
20100122:	2200      	movs	r2, #0
20100124:	611a      	str	r2, [r3, #16]
20100126:	68bb      	ldr	r3, [r7, #8]
20100128:	0018      	movs	r0, r3
2010012a:	46bd      	mov	sp, r7
2010012c:	b004      	add	sp, #16
2010012e:	bd80      	pop	{r7, pc}
20100130:	40018000 	.word	0x40018000
20100134:	8aaa5551 	.word	0x8aaa5551
20100138:	00000201 	.word	0x00000201
2010013c:	0000c350 	.word	0x0000c350
20100140:	fffffbff 	.word	0xfffffbff
20100144:	ffffdfbf 	.word	0xffffdfbf
20100148:	fffffe3f 	.word	0xfffffe3f
2010014c:	fffffdfe 	.word	0xfffffdfe

20100150 <eeprom_program_word>:
20100150:	b580      	push	{r7, lr}
20100152:	b084      	sub	sp, #16
20100154:	af00      	add	r7, sp, #0
20100156:	6078      	str	r0, [r7, #4]
20100158:	6039      	str	r1, [r7, #0]
2010015a:	4b2e      	ldr	r3, [pc, #184]	; (20100214 <eeprom_program_word+0xc4>)
2010015c:	4a2e      	ldr	r2, [pc, #184]	; (20100218 <eeprom_program_word+0xc8>)
2010015e:	611a      	str	r2, [r3, #16]
20100160:	4b2c      	ldr	r3, [pc, #176]	; (20100214 <eeprom_program_word+0xc4>)
20100162:	681b      	ldr	r3, [r3, #0]
20100164:	2238      	movs	r2, #56	; 0x38
20100166:	4013      	ands	r3, r2
20100168:	60fb      	str	r3, [r7, #12]
2010016a:	68fb      	ldr	r3, [r7, #12]
2010016c:	4a2b      	ldr	r2, [pc, #172]	; (2010021c <eeprom_program_word+0xcc>)
2010016e:	4313      	orrs	r3, r2
20100170:	60fb      	str	r3, [r7, #12]
20100172:	4b28      	ldr	r3, [pc, #160]	; (20100214 <eeprom_program_word+0xc4>)
20100174:	68fa      	ldr	r2, [r7, #12]
20100176:	601a      	str	r2, [r3, #0]
20100178:	4b26      	ldr	r3, [pc, #152]	; (20100214 <eeprom_program_word+0xc4>)
2010017a:	687a      	ldr	r2, [r7, #4]
2010017c:	605a      	str	r2, [r3, #4]
2010017e:	4b25      	ldr	r3, [pc, #148]	; (20100214 <eeprom_program_word+0xc4>)
20100180:	683a      	ldr	r2, [r7, #0]
20100182:	609a      	str	r2, [r3, #8]
20100184:	68fb      	ldr	r3, [r7, #12]
20100186:	2282      	movs	r2, #130	; 0x82
20100188:	0152      	lsls	r2, r2, #5
2010018a:	4313      	orrs	r3, r2
2010018c:	60fb      	str	r3, [r7, #12]
2010018e:	4b21      	ldr	r3, [pc, #132]	; (20100214 <eeprom_program_word+0xc4>)
20100190:	68fa      	ldr	r2, [r7, #12]
20100192:	601a      	str	r2, [r3, #0]
20100194:	2005      	movs	r0, #5
20100196:	f7ff ff33 	bl	20100000 <usleep>
2010019a:	68fb      	ldr	r3, [r7, #12]
2010019c:	2280      	movs	r2, #128	; 0x80
2010019e:	0192      	lsls	r2, r2, #6
201001a0:	4313      	orrs	r3, r2
201001a2:	60fb      	str	r3, [r7, #12]
201001a4:	4b1b      	ldr	r3, [pc, #108]	; (20100214 <eeprom_program_word+0xc4>)
201001a6:	68fa      	ldr	r2, [r7, #12]
201001a8:	601a      	str	r2, [r3, #0]
201001aa:	200a      	movs	r0, #10
201001ac:	f7ff ff28 	bl	20100000 <usleep>
201001b0:	68fb      	ldr	r3, [r7, #12]
201001b2:	2280      	movs	r2, #128	; 0x80
201001b4:	4313      	orrs	r3, r2
201001b6:	60fb      	str	r3, [r7, #12]
201001b8:	4b16      	ldr	r3, [pc, #88]	; (20100214 <eeprom_program_word+0xc4>)
201001ba:	68fa      	ldr	r2, [r7, #12]
201001bc:	601a      	str	r2, [r3, #0]
201001be:	2028      	movs	r0, #40	; 0x28
201001c0:	f7ff ff1e 	bl	20100000 <usleep>
201001c4:	68fb      	ldr	r3, [r7, #12]
201001c6:	2280      	movs	r2, #128	; 0x80
201001c8:	4393      	bics	r3, r2
201001ca:	60fb      	str	r3, [r7, #12]
201001cc:	4b11      	ldr	r3, [pc, #68]	; (20100214 <eeprom_program_word+0xc4>)
201001ce:	68fa      	ldr	r2, [r7, #12]
201001d0:	601a      	str	r2, [r3, #0]
201001d2:	68fb      	ldr	r3, [r7, #12]
201001d4:	4a12      	ldr	r2, [pc, #72]	; (20100220 <eeprom_program_word+0xd0>)
201001d6:	4013      	ands	r3, r2
201001d8:	60fb      	str	r3, [r7, #12]
201001da:	4b0e      	ldr	r3, [pc, #56]	; (20100214 <eeprom_program_word+0xc4>)
201001dc:	68fa      	ldr	r2, [r7, #12]
201001de:	601a      	str	r2, [r3, #0]
201001e0:	2005      	movs	r0, #5
201001e2:	f7ff ff0d 	bl	20100000 <usleep>
201001e6:	68fb      	ldr	r3, [r7, #12]
201001e8:	4a0e      	ldr	r2, [pc, #56]	; (20100224 <eeprom_program_word+0xd4>)
201001ea:	4013      	ands	r3, r2
201001ec:	60fb      	str	r3, [r7, #12]
201001ee:	4b09      	ldr	r3, [pc, #36]	; (20100214 <eeprom_program_word+0xc4>)
201001f0:	68fa      	ldr	r2, [r7, #12]
201001f2:	601a      	str	r2, [r3, #0]
201001f4:	2001      	movs	r0, #1
201001f6:	f7ff ff03 	bl	20100000 <usleep>
201001fa:	4b06      	ldr	r3, [pc, #24]	; (20100214 <eeprom_program_word+0xc4>)
201001fc:	68fa      	ldr	r2, [r7, #12]
201001fe:	2138      	movs	r1, #56	; 0x38
20100200:	400a      	ands	r2, r1
20100202:	601a      	str	r2, [r3, #0]
20100204:	4b03      	ldr	r3, [pc, #12]	; (20100214 <eeprom_program_word+0xc4>)
20100206:	2200      	movs	r2, #0
20100208:	611a      	str	r2, [r3, #16]
2010020a:	46c0      	nop			; (mov r8, r8)
2010020c:	46bd      	mov	sp, r7
2010020e:	b004      	add	sp, #16
20100210:	bd80      	pop	{r7, pc}
20100212:	46c0      	nop			; (mov r8, r8)
20100214:	40018000 	.word	0x40018000
20100218:	8aaa5551 	.word	0x8aaa5551
2010021c:	00000201 	.word	0x00000201
20100220:	ffffefff 	.word	0xffffefff
20100224:	ffffdfbf 	.word	0xffffdfbf

20100228 <eeprom_read_word>:
20100228:	b580      	push	{r7, lr}
2010022a:	b084      	sub	sp, #16
2010022c:	af00      	add	r7, sp, #0
2010022e:	6078      	str	r0, [r7, #4]
20100230:	4b19      	ldr	r3, [pc, #100]	; (20100298 <eeprom_read_word+0x70>)
20100232:	4a1a      	ldr	r2, [pc, #104]	; (2010029c <eeprom_read_word+0x74>)
20100234:	611a      	str	r2, [r3, #16]
20100236:	4b18      	ldr	r3, [pc, #96]	; (20100298 <eeprom_read_word+0x70>)
20100238:	681b      	ldr	r3, [r3, #0]
2010023a:	2238      	movs	r2, #56	; 0x38
2010023c:	4013      	ands	r3, r2
2010023e:	2201      	movs	r2, #1
20100240:	4313      	orrs	r3, r2
20100242:	60fb      	str	r3, [r7, #12]
20100244:	68fb      	ldr	r3, [r7, #12]
20100246:	2280      	movs	r2, #128	; 0x80
20100248:	0092      	lsls	r2, r2, #2
2010024a:	4313      	orrs	r3, r2
2010024c:	60fb      	str	r3, [r7, #12]
2010024e:	4b12      	ldr	r3, [pc, #72]	; (20100298 <eeprom_read_word+0x70>)
20100250:	68fa      	ldr	r2, [r7, #12]
20100252:	601a      	str	r2, [r3, #0]
20100254:	4b10      	ldr	r3, [pc, #64]	; (20100298 <eeprom_read_word+0x70>)
20100256:	687a      	ldr	r2, [r7, #4]
20100258:	605a      	str	r2, [r3, #4]
2010025a:	4b0f      	ldr	r3, [pc, #60]	; (20100298 <eeprom_read_word+0x70>)
2010025c:	68fa      	ldr	r2, [r7, #12]
2010025e:	21e0      	movs	r1, #224	; 0xe0
20100260:	0049      	lsls	r1, r1, #1
20100262:	430a      	orrs	r2, r1
20100264:	601a      	str	r2, [r3, #0]
20100266:	4b0c      	ldr	r3, [pc, #48]	; (20100298 <eeprom_read_word+0x70>)
20100268:	68db      	ldr	r3, [r3, #12]
2010026a:	4b0b      	ldr	r3, [pc, #44]	; (20100298 <eeprom_read_word+0x70>)
2010026c:	68db      	ldr	r3, [r3, #12]
2010026e:	4b0a      	ldr	r3, [pc, #40]	; (20100298 <eeprom_read_word+0x70>)
20100270:	68db      	ldr	r3, [r3, #12]
20100272:	4b09      	ldr	r3, [pc, #36]	; (20100298 <eeprom_read_word+0x70>)
20100274:	68db      	ldr	r3, [r3, #12]
20100276:	60bb      	str	r3, [r7, #8]
20100278:	68fb      	ldr	r3, [r7, #12]
2010027a:	2238      	movs	r2, #56	; 0x38
2010027c:	4013      	ands	r3, r2
2010027e:	60fb      	str	r3, [r7, #12]
20100280:	4b05      	ldr	r3, [pc, #20]	; (20100298 <eeprom_read_word+0x70>)
20100282:	68fa      	ldr	r2, [r7, #12]
20100284:	601a      	str	r2, [r3, #0]
20100286:	4b04      	ldr	r3, [pc, #16]	; (20100298 <eeprom_read_word+0x70>)
20100288:	2200      	movs	r2, #0
2010028a:	611a      	str	r2, [r3, #16]
2010028c:	68bb      	ldr	r3, [r7, #8]
2010028e:	0018      	movs	r0, r3
20100290:	46bd      	mov	sp, r7
20100292:	b004      	add	sp, #16
20100294:	bd80      	pop	{r7, pc}
20100296:	46c0      	nop			; (mov r8, r8)
20100298:	40018000 	.word	0x40018000
2010029c:	8aaa5551 	.word	0x8aaa5551
