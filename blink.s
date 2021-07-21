
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 41 05 00 00 d1 05 00 00 d1 05 00 00     ... A...........
	...
      2c:	1f 4d 00 00 00 00 00 00 00 00 00 00 a5 4d 00 00     .M...........M..
      3c:	ed 4d 00 00 d1 05 00 00 d1 05 00 00 d1 05 00 00     .M..............
      4c:	d1 05 00 00 d1 05 00 00 d1 05 00 00 c1 11 00 00     ................
      5c:	fd 0a 00 00 d1 05 00 00 d1 05 00 00 d1 05 00 00     ................
      6c:	d1 05 00 00 d1 05 00 00 d1 05 00 00 d1 02 00 00     ................
      7c:	f5 02 00 00 d1 05 00 00 d1 05 00 00 9d 26 00 00     .............&..
      8c:	d1 05 00 00 d1 05 00 00 d1 05 00 00 d1 05 00 00     ................
      9c:	d1 05 00 00 d1 05 00 00 00 00 00 00 00 00 00 00     ................
      ac:	d1 05 00 00 75 03 00 00 d1 05 00 00 d1 05 00 00     ....u...........
      bc:	d1 05 00 00                                         ....

000000c0 <__NVIC_DisableIRQ>:
      c0:	b580      	push	{r7, lr}
      c2:	b082      	sub	sp, #8
      c4:	af00      	add	r7, sp, #0
      c6:	0002      	movs	r2, r0
      c8:	1dfb      	adds	r3, r7, #7
      ca:	701a      	strb	r2, [r3, #0]
      cc:	1dfb      	adds	r3, r7, #7
      ce:	781b      	ldrb	r3, [r3, #0]
      d0:	2b7f      	cmp	r3, #127	; 0x7f
      d2:	d80e      	bhi.n	f2 <__NVIC_DisableIRQ+0x32>
      d4:	4909      	ldr	r1, [pc, #36]	; (fc <__NVIC_DisableIRQ+0x3c>)
      d6:	1dfb      	adds	r3, r7, #7
      d8:	781b      	ldrb	r3, [r3, #0]
      da:	001a      	movs	r2, r3
      dc:	231f      	movs	r3, #31
      de:	4013      	ands	r3, r2
      e0:	2201      	movs	r2, #1
      e2:	409a      	lsls	r2, r3
      e4:	0013      	movs	r3, r2
      e6:	2280      	movs	r2, #128	; 0x80
      e8:	508b      	str	r3, [r1, r2]
      ea:	f3bf 8f4f 	dsb	sy
      ee:	f3bf 8f6f 	isb	sy
      f2:	46c0      	nop			; (mov r8, r8)
      f4:	46bd      	mov	sp, r7
      f6:	b002      	add	sp, #8
      f8:	bd80      	pop	{r7, pc}
      fa:	46c0      	nop			; (mov r8, r8)
      fc:	e000e100 	.word	0xe000e100

00000100 <__NVIC_ClearPendingIRQ>:
     100:	b580      	push	{r7, lr}
     102:	b082      	sub	sp, #8
     104:	af00      	add	r7, sp, #0
     106:	0002      	movs	r2, r0
     108:	1dfb      	adds	r3, r7, #7
     10a:	701a      	strb	r2, [r3, #0]
     10c:	1dfb      	adds	r3, r7, #7
     10e:	781b      	ldrb	r3, [r3, #0]
     110:	2b7f      	cmp	r3, #127	; 0x7f
     112:	d80a      	bhi.n	12a <__NVIC_ClearPendingIRQ+0x2a>
     114:	4907      	ldr	r1, [pc, #28]	; (134 <__NVIC_ClearPendingIRQ+0x34>)
     116:	1dfb      	adds	r3, r7, #7
     118:	781b      	ldrb	r3, [r3, #0]
     11a:	001a      	movs	r2, r3
     11c:	231f      	movs	r3, #31
     11e:	4013      	ands	r3, r2
     120:	2201      	movs	r2, #1
     122:	409a      	lsls	r2, r3
     124:	23c0      	movs	r3, #192	; 0xc0
     126:	005b      	lsls	r3, r3, #1
     128:	50ca      	str	r2, [r1, r3]
     12a:	46c0      	nop			; (mov r8, r8)
     12c:	46bd      	mov	sp, r7
     12e:	b002      	add	sp, #8
     130:	bd80      	pop	{r7, pc}
     132:	46c0      	nop			; (mov r8, r8)
     134:	e000e100 	.word	0xe000e100

00000138 <dut_reset_off>:
     138:	b580      	push	{r7, lr}
     13a:	af00      	add	r7, sp, #0
     13c:	4b03      	ldr	r3, [pc, #12]	; (14c <dut_reset_off+0x14>)
     13e:	2280      	movs	r2, #128	; 0x80
     140:	0112      	lsls	r2, r2, #4
     142:	625a      	str	r2, [r3, #36]	; 0x24
     144:	46c0      	nop			; (mov r8, r8)
     146:	46bd      	mov	sp, r7
     148:	bd80      	pop	{r7, pc}
     14a:	46c0      	nop			; (mov r8, r8)
     14c:	400b0000 	.word	0x400b0000

00000150 <dut_reset_on>:
     150:	b580      	push	{r7, lr}
     152:	af00      	add	r7, sp, #0
     154:	4b03      	ldr	r3, [pc, #12]	; (164 <dut_reset_on+0x14>)
     156:	2280      	movs	r2, #128	; 0x80
     158:	0112      	lsls	r2, r2, #4
     15a:	621a      	str	r2, [r3, #32]
     15c:	46c0      	nop			; (mov r8, r8)
     15e:	46bd      	mov	sp, r7
     160:	bd80      	pop	{r7, pc}
     162:	46c0      	nop			; (mov r8, r8)
     164:	400b0000 	.word	0x400b0000

00000168 <dut_set_speed>:
     168:	b590      	push	{r4, r7, lr}
     16a:	b085      	sub	sp, #20
     16c:	af00      	add	r7, sp, #0
     16e:	6078      	str	r0, [r7, #4]
     170:	687b      	ldr	r3, [r7, #4]
     172:	121a      	asrs	r2, r3, #8
     174:	4b11      	ldr	r3, [pc, #68]	; (1bc <dut_set_speed+0x54>)
     176:	601a      	str	r2, [r3, #0]
     178:	687b      	ldr	r3, [r7, #4]
     17a:	4a11      	ldr	r2, [pc, #68]	; (1c0 <dut_set_speed+0x58>)
     17c:	4353      	muls	r3, r2
     17e:	14db      	asrs	r3, r3, #19
     180:	60fb      	str	r3, [r7, #12]
     182:	687b      	ldr	r3, [r7, #4]
     184:	2b00      	cmp	r3, #0
     186:	db07      	blt.n	198 <dut_set_speed+0x30>
     188:	4b0e      	ldr	r3, [pc, #56]	; (1c4 <dut_set_speed+0x5c>)
     18a:	4a0e      	ldr	r2, [pc, #56]	; (1c4 <dut_set_speed+0x5c>)
     18c:	6812      	ldr	r2, [r2, #0]
     18e:	2180      	movs	r1, #128	; 0x80
     190:	0089      	lsls	r1, r1, #2
     192:	430a      	orrs	r2, r1
     194:	601a      	str	r2, [r3, #0]
     196:	e005      	b.n	1a4 <dut_set_speed+0x3c>
     198:	4b0a      	ldr	r3, [pc, #40]	; (1c4 <dut_set_speed+0x5c>)
     19a:	4a0a      	ldr	r2, [pc, #40]	; (1c4 <dut_set_speed+0x5c>)
     19c:	6812      	ldr	r2, [r2, #0]
     19e:	490a      	ldr	r1, [pc, #40]	; (1c8 <dut_set_speed+0x60>)
     1a0:	400a      	ands	r2, r1
     1a2:	601a      	str	r2, [r3, #0]
     1a4:	4c09      	ldr	r4, [pc, #36]	; (1cc <dut_set_speed+0x64>)
     1a6:	68fb      	ldr	r3, [r7, #12]
     1a8:	0018      	movs	r0, r3
     1aa:	f004 ff69 	bl	5080 <abs>
     1ae:	0003      	movs	r3, r0
     1b0:	6063      	str	r3, [r4, #4]
     1b2:	46c0      	nop			; (mov r8, r8)
     1b4:	46bd      	mov	sp, r7
     1b6:	b005      	add	sp, #20
     1b8:	bd90      	pop	{r4, r7, pc}
     1ba:	46c0      	nop			; (mov r8, r8)
     1bc:	2000089c 	.word	0x2000089c
     1c0:	000013db 	.word	0x000013db
     1c4:	400b0000 	.word	0x400b0000
     1c8:	fffffdff 	.word	0xfffffdff
     1cc:	40090000 	.word	0x40090000

000001d0 <dut_set_torque>:
     1d0:	b590      	push	{r4, r7, lr}
     1d2:	b085      	sub	sp, #20
     1d4:	af00      	add	r7, sp, #0
     1d6:	6078      	str	r0, [r7, #4]
     1d8:	4b11      	ldr	r3, [pc, #68]	; (220 <__GCC_VERSION+0x3>)
     1da:	687a      	ldr	r2, [r7, #4]
     1dc:	601a      	str	r2, [r3, #0]
     1de:	687b      	ldr	r3, [r7, #4]
     1e0:	4a10      	ldr	r2, [pc, #64]	; (224 <__GCC_VERSION+0x7>)
     1e2:	4353      	muls	r3, r2
     1e4:	139b      	asrs	r3, r3, #14
     1e6:	60fb      	str	r3, [r7, #12]
     1e8:	687b      	ldr	r3, [r7, #4]
     1ea:	2b00      	cmp	r3, #0
     1ec:	db07      	blt.n	1fe <dut_set_torque+0x2e>
     1ee:	4b0e      	ldr	r3, [pc, #56]	; (228 <__GCC_VERSION+0xb>)
     1f0:	4a0d      	ldr	r2, [pc, #52]	; (228 <__GCC_VERSION+0xb>)
     1f2:	6812      	ldr	r2, [r2, #0]
     1f4:	2180      	movs	r1, #128	; 0x80
     1f6:	00c9      	lsls	r1, r1, #3
     1f8:	430a      	orrs	r2, r1
     1fa:	601a      	str	r2, [r3, #0]
     1fc:	e005      	b.n	20a <__UVISION_VERSION+0x1>
     1fe:	4b0a      	ldr	r3, [pc, #40]	; (228 <__GCC_VERSION+0xb>)
     200:	4a09      	ldr	r2, [pc, #36]	; (228 <__GCC_VERSION+0xb>)
     202:	6812      	ldr	r2, [r2, #0]
     204:	4909      	ldr	r1, [pc, #36]	; (22c <__GCC_VERSION+0xf>)
     206:	400a      	ands	r2, r1
     208:	601a      	str	r2, [r3, #0]
     20a:	4c09      	ldr	r4, [pc, #36]	; (230 <__GCC_VERSION+0x13>)
     20c:	68fb      	ldr	r3, [r7, #12]
     20e:	0018      	movs	r0, r3
     210:	f004 ff36 	bl	5080 <abs>
     214:	0003      	movs	r3, r0
     216:	60a3      	str	r3, [r4, #8]
     218:	46c0      	nop			; (mov r8, r8)
     21a:	46bd      	mov	sp, r7
     21c:	b005      	add	sp, #20
     21e:	bd90      	pop	{r4, r7, pc}
     220:	200008a0 	.word	0x200008a0
     224:	00001a98 	.word	0x00001a98
     228:	400b0000 	.word	0x400b0000
     22c:	fffffbff 	.word	0xfffffbff
     230:	40090000 	.word	0x40090000

00000234 <main>:
     234:	b580      	push	{r7, lr}
     236:	af00      	add	r7, sp, #0
     238:	f001 fe8a 	bl	1f50 <SystemInit>
     23c:	f000 fa06 	bl	64c <mdb485_init>
     240:	f000 fe20 	bl	e84 <mdb232_init>
     244:	f001 feba 	bl	1fbc <RemoteMacInit>
     248:	f001 ff68 	bl	211c <EthernetConfig>
     24c:	f7ff ff74 	bl	138 <dut_reset_off>
     250:	4b15      	ldr	r3, [pc, #84]	; (2a8 <main+0x74>)
     252:	0018      	movs	r0, r3
     254:	f006 fbdc 	bl	6a10 <osMutexCreate>
     258:	0002      	movs	r2, r0
     25a:	4b14      	ldr	r3, [pc, #80]	; (2ac <main+0x78>)
     25c:	601a      	str	r2, [r3, #0]
     25e:	f005 fdd7 	bl	5e10 <osKernelInitialize>
     262:	4b13      	ldr	r3, [pc, #76]	; (2b0 <main+0x7c>)
     264:	2100      	movs	r1, #0
     266:	0018      	movs	r0, r3
     268:	f006 feb4 	bl	6fd4 <osMessageCreate>
     26c:	0002      	movs	r2, r0
     26e:	4b11      	ldr	r3, [pc, #68]	; (2b4 <main+0x80>)
     270:	601a      	str	r2, [r3, #0]
     272:	4b11      	ldr	r3, [pc, #68]	; (2b8 <main+0x84>)
     274:	2100      	movs	r1, #0
     276:	0018      	movs	r0, r3
     278:	f005 ff5c 	bl	6134 <osThreadCreate>
     27c:	0002      	movs	r2, r0
     27e:	4b0f      	ldr	r3, [pc, #60]	; (2bc <main+0x88>)
     280:	601a      	str	r2, [r3, #0]
     282:	4b0f      	ldr	r3, [pc, #60]	; (2c0 <main+0x8c>)
     284:	2100      	movs	r1, #0
     286:	0018      	movs	r0, r3
     288:	f005 ff54 	bl	6134 <osThreadCreate>
     28c:	0002      	movs	r2, r0
     28e:	4b0d      	ldr	r3, [pc, #52]	; (2c4 <main+0x90>)
     290:	601a      	str	r2, [r3, #0]
     292:	4b0d      	ldr	r3, [pc, #52]	; (2c8 <main+0x94>)
     294:	2100      	movs	r1, #0
     296:	0018      	movs	r0, r3
     298:	f005 ff4c 	bl	6134 <osThreadCreate>
     29c:	0002      	movs	r2, r0
     29e:	4b0b      	ldr	r3, [pc, #44]	; (2cc <main+0x98>)
     2a0:	601a      	str	r2, [r3, #0]
     2a2:	f005 fe51 	bl	5f48 <osKernelStart>
     2a6:	e7fe      	b.n	2a6 <main+0x72>
     2a8:	00008ba0 	.word	0x00008ba0
     2ac:	20000888 	.word	0x20000888
     2b0:	00008b98 	.word	0x00008b98
     2b4:	20000864 	.word	0x20000864
     2b8:	00008b68 	.word	0x00008b68
     2bc:	20000858 	.word	0x20000858
     2c0:	00008b78 	.word	0x00008b78
     2c4:	2000085c 	.word	0x2000085c
     2c8:	00008b88 	.word	0x00008b88
     2cc:	20000860 	.word	0x20000860

000002d0 <TIMER1_Handler>:
     2d0:	b580      	push	{r7, lr}
     2d2:	af00      	add	r7, sp, #0
     2d4:	4b05      	ldr	r3, [pc, #20]	; (2ec <TIMER1_Handler+0x1c>)
     2d6:	2200      	movs	r2, #0
     2d8:	655a      	str	r2, [r3, #84]	; 0x54
     2da:	4b05      	ldr	r3, [pc, #20]	; (2f0 <TIMER1_Handler+0x20>)
     2dc:	681b      	ldr	r3, [r3, #0]
     2de:	2101      	movs	r1, #1
     2e0:	0018      	movs	r0, r3
     2e2:	f006 fad9 	bl	6898 <osSignalSet>
     2e6:	46c0      	nop			; (mov r8, r8)
     2e8:	46bd      	mov	sp, r7
     2ea:	bd80      	pop	{r7, pc}
     2ec:	40070000 	.word	0x40070000
     2f0:	20000860 	.word	0x20000860

000002f4 <TIMER2_Handler>:
     2f4:	b580      	push	{r7, lr}
     2f6:	af00      	add	r7, sp, #0
     2f8:	4b18      	ldr	r3, [pc, #96]	; (35c <TIMER2_Handler+0x68>)
     2fa:	2200      	movs	r2, #0
     2fc:	655a      	str	r2, [r3, #84]	; 0x54
     2fe:	4b18      	ldr	r3, [pc, #96]	; (360 <TIMER2_Handler+0x6c>)
     300:	681a      	ldr	r2, [r3, #0]
     302:	4b18      	ldr	r3, [pc, #96]	; (364 <TIMER2_Handler+0x70>)
     304:	681b      	ldr	r3, [r3, #0]
     306:	18d3      	adds	r3, r2, r3
     308:	041b      	lsls	r3, r3, #16
     30a:	0c1a      	lsrs	r2, r3, #16
     30c:	4b14      	ldr	r3, [pc, #80]	; (360 <TIMER2_Handler+0x6c>)
     30e:	601a      	str	r2, [r3, #0]
     310:	4b15      	ldr	r3, [pc, #84]	; (368 <TIMER2_Handler+0x74>)
     312:	681a      	ldr	r2, [r3, #0]
     314:	4b13      	ldr	r3, [pc, #76]	; (364 <TIMER2_Handler+0x70>)
     316:	681b      	ldr	r3, [r3, #0]
     318:	18d3      	adds	r3, r2, r3
     31a:	041b      	lsls	r3, r3, #16
     31c:	0c1a      	lsrs	r2, r3, #16
     31e:	4b12      	ldr	r3, [pc, #72]	; (368 <TIMER2_Handler+0x74>)
     320:	601a      	str	r2, [r3, #0]
     322:	4b0f      	ldr	r3, [pc, #60]	; (360 <TIMER2_Handler+0x6c>)
     324:	681b      	ldr	r3, [r3, #0]
     326:	4a11      	ldr	r2, [pc, #68]	; (36c <TIMER2_Handler+0x78>)
     328:	4293      	cmp	r3, r2
     32a:	d904      	bls.n	336 <TIMER2_Handler+0x42>
     32c:	4b10      	ldr	r3, [pc, #64]	; (370 <TIMER2_Handler+0x7c>)
     32e:	2280      	movs	r2, #128	; 0x80
     330:	0152      	lsls	r2, r2, #5
     332:	621a      	str	r2, [r3, #32]
     334:	e003      	b.n	33e <TIMER2_Handler+0x4a>
     336:	4b0e      	ldr	r3, [pc, #56]	; (370 <TIMER2_Handler+0x7c>)
     338:	2280      	movs	r2, #128	; 0x80
     33a:	0152      	lsls	r2, r2, #5
     33c:	625a      	str	r2, [r3, #36]	; 0x24
     33e:	4b0a      	ldr	r3, [pc, #40]	; (368 <TIMER2_Handler+0x74>)
     340:	681b      	ldr	r3, [r3, #0]
     342:	4a0a      	ldr	r2, [pc, #40]	; (36c <TIMER2_Handler+0x78>)
     344:	4293      	cmp	r3, r2
     346:	d903      	bls.n	350 <TIMER2_Handler+0x5c>
     348:	4b09      	ldr	r3, [pc, #36]	; (370 <TIMER2_Handler+0x7c>)
     34a:	2201      	movs	r2, #1
     34c:	621a      	str	r2, [r3, #32]
     34e:	e002      	b.n	356 <TIMER2_Handler+0x62>
     350:	4b07      	ldr	r3, [pc, #28]	; (370 <TIMER2_Handler+0x7c>)
     352:	2201      	movs	r2, #1
     354:	625a      	str	r2, [r3, #36]	; 0x24
     356:	46c0      	nop			; (mov r8, r8)
     358:	46bd      	mov	sp, r7
     35a:	bd80      	pop	{r7, pc}
     35c:	40078000 	.word	0x40078000
     360:	200008a4 	.word	0x200008a4
     364:	2000089c 	.word	0x2000089c
     368:	20000000 	.word	0x20000000
     36c:	00007530 	.word	0x00007530
     370:	400b0000 	.word	0x400b0000

00000374 <EXT_INT1_Handler>:
     374:	b580      	push	{r7, lr}
     376:	af00      	add	r7, sp, #0
     378:	201c      	movs	r0, #28
     37a:	f7ff fec1 	bl	100 <__NVIC_ClearPendingIRQ>
     37e:	201c      	movs	r0, #28
     380:	f7ff fe9e 	bl	c0 <__NVIC_DisableIRQ>
     384:	4b03      	ldr	r3, [pc, #12]	; (394 <EXT_INT1_Handler+0x20>)
     386:	681b      	ldr	r3, [r3, #0]
     388:	1c5a      	adds	r2, r3, #1
     38a:	4b02      	ldr	r3, [pc, #8]	; (394 <EXT_INT1_Handler+0x20>)
     38c:	601a      	str	r2, [r3, #0]
     38e:	46c0      	nop			; (mov r8, r8)
     390:	46bd      	mov	sp, r7
     392:	bd80      	pop	{r7, pc}
     394:	200008a8 	.word	0x200008a8

00000398 <threadDUTProceed>:
     398:	b580      	push	{r7, lr}
     39a:	b092      	sub	sp, #72	; 0x48
     39c:	af00      	add	r7, sp, #0
     39e:	6078      	str	r0, [r7, #4]
     3a0:	2300      	movs	r3, #0
     3a2:	647b      	str	r3, [r7, #68]	; 0x44
     3a4:	2318      	movs	r3, #24
     3a6:	18fb      	adds	r3, r7, r3
     3a8:	2200      	movs	r2, #0
     3aa:	601a      	str	r2, [r3, #0]
     3ac:	2318      	movs	r3, #24
     3ae:	18fb      	adds	r3, r7, r3
     3b0:	2200      	movs	r2, #0
     3b2:	605a      	str	r2, [r3, #4]
     3b4:	2318      	movs	r3, #24
     3b6:	18fb      	adds	r3, r7, r3
     3b8:	2200      	movs	r2, #0
     3ba:	609a      	str	r2, [r3, #8]
     3bc:	2318      	movs	r3, #24
     3be:	18fb      	adds	r3, r7, r3
     3c0:	2200      	movs	r2, #0
     3c2:	60da      	str	r2, [r3, #12]
     3c4:	2318      	movs	r3, #24
     3c6:	18fb      	adds	r3, r7, r3
     3c8:	2200      	movs	r2, #0
     3ca:	611a      	str	r2, [r3, #16]
     3cc:	2318      	movs	r3, #24
     3ce:	18fb      	adds	r3, r7, r3
     3d0:	2200      	movs	r2, #0
     3d2:	615a      	str	r2, [r3, #20]
     3d4:	2318      	movs	r3, #24
     3d6:	18fb      	adds	r3, r7, r3
     3d8:	2200      	movs	r2, #0
     3da:	619a      	str	r2, [r3, #24]
     3dc:	2318      	movs	r3, #24
     3de:	18fb      	adds	r3, r7, r3
     3e0:	2200      	movs	r2, #0
     3e2:	61da      	str	r2, [r3, #28]
     3e4:	230c      	movs	r3, #12
     3e6:	18f8      	adds	r0, r7, r3
     3e8:	2301      	movs	r3, #1
     3ea:	425b      	negs	r3, r3
     3ec:	001a      	movs	r2, r3
     3ee:	2100      	movs	r1, #0
     3f0:	f006 fa80 	bl	68f4 <osSignalWait>
     3f4:	230c      	movs	r3, #12
     3f6:	18fb      	adds	r3, r7, r3
     3f8:	681b      	ldr	r3, [r3, #0]
     3fa:	2b08      	cmp	r3, #8
     3fc:	d1f2      	bne.n	3e4 <threadDUTProceed+0x4c>
     3fe:	230c      	movs	r3, #12
     400:	18fb      	adds	r3, r7, r3
     402:	685b      	ldr	r3, [r3, #4]
     404:	2b02      	cmp	r3, #2
     406:	d033      	beq.n	470 <_stack_size+0x70>
     408:	2b08      	cmp	r3, #8
     40a:	d049      	beq.n	4a0 <_stack_size+0xa0>
     40c:	2b01      	cmp	r3, #1
     40e:	d16f      	bne.n	4f0 <_stack_size+0xf0>
     410:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     412:	2b01      	cmp	r3, #1
     414:	d91f      	bls.n	456 <_stack_size+0x56>
     416:	4b37      	ldr	r3, [pc, #220]	; (4f4 <_stack_size+0xf4>)
     418:	681b      	ldr	r3, [r3, #0]
     41a:	021a      	lsls	r2, r3, #8
     41c:	2318      	movs	r3, #24
     41e:	18fb      	adds	r3, r7, r3
     420:	609a      	str	r2, [r3, #8]
     422:	4b35      	ldr	r3, [pc, #212]	; (4f8 <_stack_size+0xf8>)
     424:	681a      	ldr	r2, [r3, #0]
     426:	2318      	movs	r3, #24
     428:	18fb      	adds	r3, r7, r3
     42a:	605a      	str	r2, [r3, #4]
     42c:	f003 fed8 	bl	41e0 <fsm_get_cyccnt>
     430:	0002      	movs	r2, r0
     432:	2318      	movs	r3, #24
     434:	18fb      	adds	r3, r7, r3
     436:	619a      	str	r2, [r3, #24]
     438:	f003 fec8 	bl	41cc <fsm_get_mode>
     43c:	0003      	movs	r3, r0
     43e:	001a      	movs	r2, r3
     440:	2318      	movs	r3, #24
     442:	18fb      	adds	r3, r7, r3
     444:	61da      	str	r2, [r3, #28]
     446:	2318      	movs	r3, #24
     448:	18fb      	adds	r3, r7, r3
     44a:	2120      	movs	r1, #32
     44c:	0018      	movs	r0, r3
     44e:	f003 f905 	bl	365c <mdb_fifo_write>
     452:	2300      	movs	r3, #0
     454:	647b      	str	r3, [r7, #68]	; 0x44
     456:	2301      	movs	r3, #1
     458:	647b      	str	r3, [r7, #68]	; 0x44
     45a:	2204      	movs	r2, #4
     45c:	2100      	movs	r1, #0
     45e:	2001      	movs	r0, #1
     460:	f000 fd6a 	bl	f38 <mdb232_read_inputregs>
     464:	2202      	movs	r2, #2
     466:	2102      	movs	r1, #2
     468:	2010      	movs	r0, #16
     46a:	f000 fa77 	bl	95c <mdb485_read_inputregs>
     46e:	e03f      	b.n	4f0 <_stack_size+0xf0>
     470:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     472:	2202      	movs	r2, #2
     474:	4313      	orrs	r3, r2
     476:	647b      	str	r3, [r7, #68]	; 0x44
     478:	2318      	movs	r3, #24
     47a:	18fb      	adds	r3, r7, r3
     47c:	2200      	movs	r2, #0
     47e:	611a      	str	r2, [r3, #16]
     480:	f000 fe1e 	bl	10c0 <mdb232_get_crc>
     484:	1e03      	subs	r3, r0, #0
     486:	d130      	bne.n	4ea <_stack_size+0xea>
     488:	2308      	movs	r3, #8
     48a:	18fb      	adds	r3, r7, r3
     48c:	0018      	movs	r0, r3
     48e:	f000 fe35 	bl	10fc <mdb232_bikm_get_torque>
     492:	0002      	movs	r2, r0
     494:	2318      	movs	r3, #24
     496:	18fb      	adds	r3, r7, r3
     498:	611a      	str	r2, [r3, #16]
     49a:	2300      	movs	r3, #0
     49c:	60bb      	str	r3, [r7, #8]
     49e:	e024      	b.n	4ea <_stack_size+0xea>
     4a0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     4a2:	2204      	movs	r2, #4
     4a4:	4313      	orrs	r3, r2
     4a6:	647b      	str	r3, [r7, #68]	; 0x44
     4a8:	f000 face 	bl	a48 <mdb485_get_crc>
     4ac:	1e03      	subs	r3, r0, #0
     4ae:	d11e      	bne.n	4ee <_stack_size+0xee>
     4b0:	f000 fab6 	bl	a20 <mdb485_get_func>
     4b4:	0003      	movs	r3, r0
     4b6:	643b      	str	r3, [r7, #64]	; 0x40
     4b8:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     4ba:	2b04      	cmp	r3, #4
     4bc:	d117      	bne.n	4ee <_stack_size+0xee>
     4be:	f000 fae1 	bl	a84 <mdb485_si30_get_counter>
     4c2:	0003      	movs	r3, r0
     4c4:	63fb      	str	r3, [r7, #60]	; 0x3c
     4c6:	2318      	movs	r3, #24
     4c8:	18fb      	adds	r3, r7, r3
     4ca:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     4cc:	601a      	str	r2, [r3, #0]
     4ce:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     4d0:	021b      	lsls	r3, r3, #8
     4d2:	001a      	movs	r2, r3
     4d4:	2304      	movs	r3, #4
     4d6:	4313      	orrs	r3, r2
     4d8:	63bb      	str	r3, [r7, #56]	; 0x38
     4da:	4b08      	ldr	r3, [pc, #32]	; (4fc <_stack_size+0xfc>)
     4dc:	681b      	ldr	r3, [r3, #0]
     4de:	6bb9      	ldr	r1, [r7, #56]	; 0x38
     4e0:	2200      	movs	r2, #0
     4e2:	0018      	movs	r0, r3
     4e4:	f006 fda2 	bl	702c <osMessagePut>
     4e8:	e001      	b.n	4ee <_stack_size+0xee>
     4ea:	46c0      	nop			; (mov r8, r8)
     4ec:	e77a      	b.n	3e4 <threadDUTProceed+0x4c>
     4ee:	46c0      	nop			; (mov r8, r8)
     4f0:	e778      	b.n	3e4 <threadDUTProceed+0x4c>
     4f2:	46c0      	nop			; (mov r8, r8)
     4f4:	2000089c 	.word	0x2000089c
     4f8:	200008a0 	.word	0x200008a0
     4fc:	20000864 	.word	0x20000864

00000500 <threadFSMProceed>:
     500:	b580      	push	{r7, lr}
     502:	b086      	sub	sp, #24
     504:	af00      	add	r7, sp, #0
     506:	6078      	str	r0, [r7, #4]
     508:	4b0b      	ldr	r3, [pc, #44]	; (538 <threadFSMProceed+0x38>)
     50a:	6819      	ldr	r1, [r3, #0]
     50c:	2308      	movs	r3, #8
     50e:	18f8      	adds	r0, r7, r3
     510:	2301      	movs	r3, #1
     512:	425b      	negs	r3, r3
     514:	001a      	movs	r2, r3
     516:	f006 fdad 	bl	7074 <osMessageGet>
     51a:	2308      	movs	r3, #8
     51c:	18fb      	adds	r3, r7, r3
     51e:	681b      	ldr	r3, [r3, #0]
     520:	2b10      	cmp	r3, #16
     522:	d1f1      	bne.n	508 <threadFSMProceed+0x8>
     524:	2308      	movs	r3, #8
     526:	18fb      	adds	r3, r7, r3
     528:	685b      	ldr	r3, [r3, #4]
     52a:	617b      	str	r3, [r7, #20]
     52c:	4b03      	ldr	r3, [pc, #12]	; (53c <threadFSMProceed+0x3c>)
     52e:	681b      	ldr	r3, [r3, #0]
     530:	697a      	ldr	r2, [r7, #20]
     532:	0010      	movs	r0, r2
     534:	4798      	blx	r3
     536:	e7e7      	b.n	508 <threadFSMProceed+0x8>
     538:	20000864 	.word	0x20000864
     53c:	20000014 	.word	0x20000014

00000540 <handler_reset>:
     540:	b580      	push	{r7, lr}
     542:	b082      	sub	sp, #8
     544:	af00      	add	r7, sp, #0
     546:	4b1a      	ldr	r3, [pc, #104]	; (5b0 <handler_reset+0x70>)
     548:	607b      	str	r3, [r7, #4]
     54a:	4b1a      	ldr	r3, [pc, #104]	; (5b4 <handler_reset+0x74>)
     54c:	603b      	str	r3, [r7, #0]
     54e:	e007      	b.n	560 <handler_reset+0x20>
     550:	683b      	ldr	r3, [r7, #0]
     552:	1d1a      	adds	r2, r3, #4
     554:	603a      	str	r2, [r7, #0]
     556:	687a      	ldr	r2, [r7, #4]
     558:	1d11      	adds	r1, r2, #4
     55a:	6079      	str	r1, [r7, #4]
     55c:	6812      	ldr	r2, [r2, #0]
     55e:	601a      	str	r2, [r3, #0]
     560:	683a      	ldr	r2, [r7, #0]
     562:	4b15      	ldr	r3, [pc, #84]	; (5b8 <handler_reset+0x78>)
     564:	429a      	cmp	r2, r3
     566:	d3f3      	bcc.n	550 <handler_reset+0x10>
     568:	4b14      	ldr	r3, [pc, #80]	; (5bc <handler_reset+0x7c>)
     56a:	607b      	str	r3, [r7, #4]
     56c:	4b14      	ldr	r3, [pc, #80]	; (5c0 <handler_reset+0x80>)
     56e:	603b      	str	r3, [r7, #0]
     570:	e007      	b.n	582 <handler_reset+0x42>
     572:	683b      	ldr	r3, [r7, #0]
     574:	1d1a      	adds	r2, r3, #4
     576:	603a      	str	r2, [r7, #0]
     578:	687a      	ldr	r2, [r7, #4]
     57a:	1d11      	adds	r1, r2, #4
     57c:	6079      	str	r1, [r7, #4]
     57e:	6812      	ldr	r2, [r2, #0]
     580:	601a      	str	r2, [r3, #0]
     582:	683a      	ldr	r2, [r7, #0]
     584:	4b0f      	ldr	r3, [pc, #60]	; (5c4 <handler_reset+0x84>)
     586:	429a      	cmp	r2, r3
     588:	d3f3      	bcc.n	572 <handler_reset+0x32>
     58a:	4b0f      	ldr	r3, [pc, #60]	; (5c8 <handler_reset+0x88>)
     58c:	603b      	str	r3, [r7, #0]
     58e:	e004      	b.n	59a <handler_reset+0x5a>
     590:	683b      	ldr	r3, [r7, #0]
     592:	1d1a      	adds	r2, r3, #4
     594:	603a      	str	r2, [r7, #0]
     596:	2200      	movs	r2, #0
     598:	601a      	str	r2, [r3, #0]
     59a:	683a      	ldr	r2, [r7, #0]
     59c:	4b0b      	ldr	r3, [pc, #44]	; (5cc <handler_reset+0x8c>)
     59e:	429a      	cmp	r2, r3
     5a0:	d3f6      	bcc.n	590 <handler_reset+0x50>
     5a2:	f7ff fe47 	bl	234 <main>
     5a6:	46c0      	nop			; (mov r8, r8)
     5a8:	46bd      	mov	sp, r7
     5aa:	b002      	add	sp, #8
     5ac:	bd80      	pop	{r7, pc}
     5ae:	46c0      	nop			; (mov r8, r8)
     5b0:	000096e8 	.word	0x000096e8
     5b4:	20000000 	.word	0x20000000
     5b8:	20000858 	.word	0x20000858
     5bc:	00009f40 	.word	0x00009f40
     5c0:	20100000 	.word	0x20100000
     5c4:	201002a0 	.word	0x201002a0
     5c8:	20000858 	.word	0x20000858
     5cc:	200060fc 	.word	0x200060fc

000005d0 <default_handler>:
     5d0:	b580      	push	{r7, lr}
     5d2:	af00      	add	r7, sp, #0
     5d4:	e7fe      	b.n	5d4 <default_handler+0x4>
     5d6:	46c0      	nop			; (mov r8, r8)

000005d8 <__NVIC_EnableIRQ>:
     5d8:	b580      	push	{r7, lr}
     5da:	b082      	sub	sp, #8
     5dc:	af00      	add	r7, sp, #0
     5de:	0002      	movs	r2, r0
     5e0:	1dfb      	adds	r3, r7, #7
     5e2:	701a      	strb	r2, [r3, #0]
     5e4:	1dfb      	adds	r3, r7, #7
     5e6:	781b      	ldrb	r3, [r3, #0]
     5e8:	2b7f      	cmp	r3, #127	; 0x7f
     5ea:	d809      	bhi.n	600 <__NVIC_EnableIRQ+0x28>
     5ec:	4b06      	ldr	r3, [pc, #24]	; (608 <__NVIC_EnableIRQ+0x30>)
     5ee:	1dfa      	adds	r2, r7, #7
     5f0:	7812      	ldrb	r2, [r2, #0]
     5f2:	0011      	movs	r1, r2
     5f4:	221f      	movs	r2, #31
     5f6:	400a      	ands	r2, r1
     5f8:	2101      	movs	r1, #1
     5fa:	4091      	lsls	r1, r2
     5fc:	000a      	movs	r2, r1
     5fe:	601a      	str	r2, [r3, #0]
     600:	46c0      	nop			; (mov r8, r8)
     602:	46bd      	mov	sp, r7
     604:	b002      	add	sp, #8
     606:	bd80      	pop	{r7, pc}
     608:	e000e100 	.word	0xe000e100

0000060c <__NVIC_DisableIRQ>:
     60c:	b580      	push	{r7, lr}
     60e:	b082      	sub	sp, #8
     610:	af00      	add	r7, sp, #0
     612:	0002      	movs	r2, r0
     614:	1dfb      	adds	r3, r7, #7
     616:	701a      	strb	r2, [r3, #0]
     618:	1dfb      	adds	r3, r7, #7
     61a:	781b      	ldrb	r3, [r3, #0]
     61c:	2b7f      	cmp	r3, #127	; 0x7f
     61e:	d80e      	bhi.n	63e <__NVIC_DisableIRQ+0x32>
     620:	4909      	ldr	r1, [pc, #36]	; (648 <__NVIC_DisableIRQ+0x3c>)
     622:	1dfb      	adds	r3, r7, #7
     624:	781b      	ldrb	r3, [r3, #0]
     626:	001a      	movs	r2, r3
     628:	231f      	movs	r3, #31
     62a:	4013      	ands	r3, r2
     62c:	2201      	movs	r2, #1
     62e:	409a      	lsls	r2, r3
     630:	0013      	movs	r3, r2
     632:	2280      	movs	r2, #128	; 0x80
     634:	508b      	str	r3, [r1, r2]
     636:	f3bf 8f4f 	dsb	sy
     63a:	f3bf 8f6f 	isb	sy
     63e:	46c0      	nop			; (mov r8, r8)
     640:	46bd      	mov	sp, r7
     642:	b002      	add	sp, #8
     644:	bd80      	pop	{r7, pc}
     646:	46c0      	nop			; (mov r8, r8)
     648:	e000e100 	.word	0xe000e100

0000064c <mdb485_init>:
     64c:	b580      	push	{r7, lr}
     64e:	af00      	add	r7, sp, #0
     650:	4b14      	ldr	r3, [pc, #80]	; (6a4 <mdb485_init+0x58>)
     652:	2234      	movs	r2, #52	; 0x34
     654:	625a      	str	r2, [r3, #36]	; 0x24
     656:	4b13      	ldr	r3, [pc, #76]	; (6a4 <mdb485_init+0x58>)
     658:	2205      	movs	r2, #5
     65a:	629a      	str	r2, [r3, #40]	; 0x28
     65c:	4b11      	ldr	r3, [pc, #68]	; (6a4 <mdb485_init+0x58>)
     65e:	4a11      	ldr	r2, [pc, #68]	; (6a4 <mdb485_init+0x58>)
     660:	6b52      	ldr	r2, [r2, #52]	; 0x34
     662:	213f      	movs	r1, #63	; 0x3f
     664:	438a      	bics	r2, r1
     666:	635a      	str	r2, [r3, #52]	; 0x34
     668:	4b0e      	ldr	r3, [pc, #56]	; (6a4 <mdb485_init+0x58>)
     66a:	4a0e      	ldr	r2, [pc, #56]	; (6a4 <mdb485_init+0x58>)
     66c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     66e:	2110      	movs	r1, #16
     670:	430a      	orrs	r2, r1
     672:	62da      	str	r2, [r3, #44]	; 0x2c
     674:	4b0b      	ldr	r3, [pc, #44]	; (6a4 <mdb485_init+0x58>)
     676:	4a0b      	ldr	r2, [pc, #44]	; (6a4 <mdb485_init+0x58>)
     678:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     67a:	2160      	movs	r1, #96	; 0x60
     67c:	430a      	orrs	r2, r1
     67e:	62da      	str	r2, [r3, #44]	; 0x2c
     680:	4b08      	ldr	r3, [pc, #32]	; (6a4 <mdb485_init+0x58>)
     682:	4a08      	ldr	r2, [pc, #32]	; (6a4 <mdb485_init+0x58>)
     684:	6b12      	ldr	r2, [r2, #48]	; 0x30
     686:	4908      	ldr	r1, [pc, #32]	; (6a8 <mdb485_init+0x5c>)
     688:	430a      	orrs	r2, r1
     68a:	631a      	str	r2, [r3, #48]	; 0x30
     68c:	4b05      	ldr	r3, [pc, #20]	; (6a4 <mdb485_init+0x58>)
     68e:	4a05      	ldr	r2, [pc, #20]	; (6a4 <mdb485_init+0x58>)
     690:	6b92      	ldr	r2, [r2, #56]	; 0x38
     692:	2140      	movs	r1, #64	; 0x40
     694:	430a      	orrs	r2, r1
     696:	639a      	str	r2, [r3, #56]	; 0x38
     698:	2007      	movs	r0, #7
     69a:	f7ff ff9d 	bl	5d8 <__NVIC_EnableIRQ>
     69e:	46c0      	nop			; (mov r8, r8)
     6a0:	46bd      	mov	sp, r7
     6a2:	bd80      	pop	{r7, pc}
     6a4:	40038000 	.word	0x40038000
     6a8:	00000301 	.word	0x00000301

000006ac <mdb485_send>:
     6ac:	b580      	push	{r7, lr}
     6ae:	b084      	sub	sp, #16
     6b0:	af00      	add	r7, sp, #0
     6b2:	6078      	str	r0, [r7, #4]
     6b4:	6039      	str	r1, [r7, #0]
     6b6:	4b17      	ldr	r3, [pc, #92]	; (714 <mdb485_send+0x68>)
     6b8:	4a16      	ldr	r2, [pc, #88]	; (714 <mdb485_send+0x68>)
     6ba:	6812      	ldr	r2, [r2, #0]
     6bc:	2180      	movs	r1, #128	; 0x80
     6be:	0209      	lsls	r1, r1, #8
     6c0:	430a      	orrs	r2, r1
     6c2:	601a      	str	r2, [r3, #0]
     6c4:	2300      	movs	r3, #0
     6c6:	60fb      	str	r3, [r7, #12]
     6c8:	e00e      	b.n	6e8 <mdb485_send+0x3c>
     6ca:	46c0      	nop			; (mov r8, r8)
     6cc:	4b12      	ldr	r3, [pc, #72]	; (718 <mdb485_send+0x6c>)
     6ce:	699b      	ldr	r3, [r3, #24]
     6d0:	2220      	movs	r2, #32
     6d2:	4013      	ands	r3, r2
     6d4:	d1fa      	bne.n	6cc <mdb485_send+0x20>
     6d6:	4a10      	ldr	r2, [pc, #64]	; (718 <mdb485_send+0x6c>)
     6d8:	687b      	ldr	r3, [r7, #4]
     6da:	1c59      	adds	r1, r3, #1
     6dc:	6079      	str	r1, [r7, #4]
     6de:	781b      	ldrb	r3, [r3, #0]
     6e0:	6013      	str	r3, [r2, #0]
     6e2:	68fb      	ldr	r3, [r7, #12]
     6e4:	3301      	adds	r3, #1
     6e6:	60fb      	str	r3, [r7, #12]
     6e8:	68fa      	ldr	r2, [r7, #12]
     6ea:	683b      	ldr	r3, [r7, #0]
     6ec:	429a      	cmp	r2, r3
     6ee:	dbec      	blt.n	6ca <mdb485_send+0x1e>
     6f0:	46c0      	nop			; (mov r8, r8)
     6f2:	4b09      	ldr	r3, [pc, #36]	; (718 <mdb485_send+0x6c>)
     6f4:	699b      	ldr	r3, [r3, #24]
     6f6:	2208      	movs	r2, #8
     6f8:	4013      	ands	r3, r2
     6fa:	d1fa      	bne.n	6f2 <mdb485_send+0x46>
     6fc:	4b05      	ldr	r3, [pc, #20]	; (714 <mdb485_send+0x68>)
     6fe:	4a05      	ldr	r2, [pc, #20]	; (714 <mdb485_send+0x68>)
     700:	6812      	ldr	r2, [r2, #0]
     702:	4906      	ldr	r1, [pc, #24]	; (71c <mdb485_send+0x70>)
     704:	400a      	ands	r2, r1
     706:	601a      	str	r2, [r3, #0]
     708:	683b      	ldr	r3, [r7, #0]
     70a:	0018      	movs	r0, r3
     70c:	46bd      	mov	sp, r7
     70e:	b004      	add	sp, #16
     710:	bd80      	pop	{r7, pc}
     712:	46c0      	nop			; (mov r8, r8)
     714:	400c0000 	.word	0x400c0000
     718:	40038000 	.word	0x40038000
     71c:	ffff7fff 	.word	0xffff7fff

00000720 <mdb485_putch>:
     720:	b580      	push	{r7, lr}
     722:	b082      	sub	sp, #8
     724:	af00      	add	r7, sp, #0
     726:	0002      	movs	r2, r0
     728:	1dfb      	adds	r3, r7, #7
     72a:	701a      	strb	r2, [r3, #0]
     72c:	46c0      	nop			; (mov r8, r8)
     72e:	4b06      	ldr	r3, [pc, #24]	; (748 <mdb485_putch+0x28>)
     730:	699b      	ldr	r3, [r3, #24]
     732:	2220      	movs	r2, #32
     734:	4013      	ands	r3, r2
     736:	d1fa      	bne.n	72e <mdb485_putch+0xe>
     738:	4b03      	ldr	r3, [pc, #12]	; (748 <mdb485_putch+0x28>)
     73a:	1dfa      	adds	r2, r7, #7
     73c:	7812      	ldrb	r2, [r2, #0]
     73e:	601a      	str	r2, [r3, #0]
     740:	46c0      	nop			; (mov r8, r8)
     742:	46bd      	mov	sp, r7
     744:	b002      	add	sp, #8
     746:	bd80      	pop	{r7, pc}
     748:	40038000 	.word	0x40038000

0000074c <mdb485_writeregs>:
     74c:	b590      	push	{r4, r7, lr}
     74e:	b089      	sub	sp, #36	; 0x24
     750:	af00      	add	r7, sp, #0
     752:	0004      	movs	r4, r0
     754:	0008      	movs	r0, r1
     756:	0011      	movs	r1, r2
     758:	607b      	str	r3, [r7, #4]
     75a:	230f      	movs	r3, #15
     75c:	18fb      	adds	r3, r7, r3
     75e:	1c22      	adds	r2, r4, #0
     760:	701a      	strb	r2, [r3, #0]
     762:	230c      	movs	r3, #12
     764:	18fb      	adds	r3, r7, r3
     766:	1c02      	adds	r2, r0, #0
     768:	801a      	strh	r2, [r3, #0]
     76a:	230a      	movs	r3, #10
     76c:	18fb      	adds	r3, r7, r3
     76e:	1c0a      	adds	r2, r1, #0
     770:	801a      	strh	r2, [r3, #0]
     772:	4b48      	ldr	r3, [pc, #288]	; (894 <mdb485_writeregs+0x148>)
     774:	61bb      	str	r3, [r7, #24]
     776:	230a      	movs	r3, #10
     778:	18fb      	adds	r3, r7, r3
     77a:	881b      	ldrh	r3, [r3, #0]
     77c:	005b      	lsls	r3, r3, #1
     77e:	617b      	str	r3, [r7, #20]
     780:	69bb      	ldr	r3, [r7, #24]
     782:	1c5a      	adds	r2, r3, #1
     784:	61ba      	str	r2, [r7, #24]
     786:	220f      	movs	r2, #15
     788:	18ba      	adds	r2, r7, r2
     78a:	7812      	ldrb	r2, [r2, #0]
     78c:	701a      	strb	r2, [r3, #0]
     78e:	69bb      	ldr	r3, [r7, #24]
     790:	1c5a      	adds	r2, r3, #1
     792:	61ba      	str	r2, [r7, #24]
     794:	2210      	movs	r2, #16
     796:	701a      	strb	r2, [r3, #0]
     798:	69bb      	ldr	r3, [r7, #24]
     79a:	1c5a      	adds	r2, r3, #1
     79c:	61ba      	str	r2, [r7, #24]
     79e:	220c      	movs	r2, #12
     7a0:	18ba      	adds	r2, r7, r2
     7a2:	8812      	ldrh	r2, [r2, #0]
     7a4:	0a12      	lsrs	r2, r2, #8
     7a6:	b292      	uxth	r2, r2
     7a8:	b2d2      	uxtb	r2, r2
     7aa:	701a      	strb	r2, [r3, #0]
     7ac:	69bb      	ldr	r3, [r7, #24]
     7ae:	1c5a      	adds	r2, r3, #1
     7b0:	61ba      	str	r2, [r7, #24]
     7b2:	220c      	movs	r2, #12
     7b4:	18ba      	adds	r2, r7, r2
     7b6:	8812      	ldrh	r2, [r2, #0]
     7b8:	b2d2      	uxtb	r2, r2
     7ba:	701a      	strb	r2, [r3, #0]
     7bc:	69bb      	ldr	r3, [r7, #24]
     7be:	1c5a      	adds	r2, r3, #1
     7c0:	61ba      	str	r2, [r7, #24]
     7c2:	220a      	movs	r2, #10
     7c4:	18ba      	adds	r2, r7, r2
     7c6:	8812      	ldrh	r2, [r2, #0]
     7c8:	0a12      	lsrs	r2, r2, #8
     7ca:	b292      	uxth	r2, r2
     7cc:	b2d2      	uxtb	r2, r2
     7ce:	701a      	strb	r2, [r3, #0]
     7d0:	69bb      	ldr	r3, [r7, #24]
     7d2:	1c5a      	adds	r2, r3, #1
     7d4:	61ba      	str	r2, [r7, #24]
     7d6:	220a      	movs	r2, #10
     7d8:	18ba      	adds	r2, r7, r2
     7da:	8812      	ldrh	r2, [r2, #0]
     7dc:	b2d2      	uxtb	r2, r2
     7de:	701a      	strb	r2, [r3, #0]
     7e0:	69bb      	ldr	r3, [r7, #24]
     7e2:	1c5a      	adds	r2, r3, #1
     7e4:	61ba      	str	r2, [r7, #24]
     7e6:	697a      	ldr	r2, [r7, #20]
     7e8:	b2d2      	uxtb	r2, r2
     7ea:	701a      	strb	r2, [r3, #0]
     7ec:	697b      	ldr	r3, [r7, #20]
     7ee:	3307      	adds	r3, #7
     7f0:	2b10      	cmp	r3, #16
     7f2:	dc4a      	bgt.n	88a <mdb485_writeregs+0x13e>
     7f4:	2300      	movs	r3, #0
     7f6:	61fb      	str	r3, [r7, #28]
     7f8:	e01b      	b.n	832 <mdb485_writeregs+0xe6>
     7fa:	687b      	ldr	r3, [r7, #4]
     7fc:	1c9a      	adds	r2, r3, #2
     7fe:	607a      	str	r2, [r7, #4]
     800:	2212      	movs	r2, #18
     802:	18ba      	adds	r2, r7, r2
     804:	881b      	ldrh	r3, [r3, #0]
     806:	8013      	strh	r3, [r2, #0]
     808:	69bb      	ldr	r3, [r7, #24]
     80a:	1c5a      	adds	r2, r3, #1
     80c:	61ba      	str	r2, [r7, #24]
     80e:	2212      	movs	r2, #18
     810:	18ba      	adds	r2, r7, r2
     812:	8812      	ldrh	r2, [r2, #0]
     814:	0a12      	lsrs	r2, r2, #8
     816:	b292      	uxth	r2, r2
     818:	b2d2      	uxtb	r2, r2
     81a:	701a      	strb	r2, [r3, #0]
     81c:	69bb      	ldr	r3, [r7, #24]
     81e:	1c5a      	adds	r2, r3, #1
     820:	61ba      	str	r2, [r7, #24]
     822:	2212      	movs	r2, #18
     824:	18ba      	adds	r2, r7, r2
     826:	8812      	ldrh	r2, [r2, #0]
     828:	b2d2      	uxtb	r2, r2
     82a:	701a      	strb	r2, [r3, #0]
     82c:	69fb      	ldr	r3, [r7, #28]
     82e:	3301      	adds	r3, #1
     830:	61fb      	str	r3, [r7, #28]
     832:	230a      	movs	r3, #10
     834:	18fb      	adds	r3, r7, r3
     836:	881a      	ldrh	r2, [r3, #0]
     838:	69fb      	ldr	r3, [r7, #28]
     83a:	429a      	cmp	r2, r3
     83c:	dcdd      	bgt.n	7fa <mdb485_writeregs+0xae>
     83e:	697b      	ldr	r3, [r7, #20]
     840:	1dda      	adds	r2, r3, #7
     842:	2310      	movs	r3, #16
     844:	18fc      	adds	r4, r7, r3
     846:	4b13      	ldr	r3, [pc, #76]	; (894 <mdb485_writeregs+0x148>)
     848:	0011      	movs	r1, r2
     84a:	0018      	movs	r0, r3
     84c:	f002 fce6 	bl	321c <crc16>
     850:	0003      	movs	r3, r0
     852:	8023      	strh	r3, [r4, #0]
     854:	69bb      	ldr	r3, [r7, #24]
     856:	1c5a      	adds	r2, r3, #1
     858:	61ba      	str	r2, [r7, #24]
     85a:	2210      	movs	r2, #16
     85c:	18ba      	adds	r2, r7, r2
     85e:	8812      	ldrh	r2, [r2, #0]
     860:	b2d2      	uxtb	r2, r2
     862:	701a      	strb	r2, [r3, #0]
     864:	69bb      	ldr	r3, [r7, #24]
     866:	1c5a      	adds	r2, r3, #1
     868:	61ba      	str	r2, [r7, #24]
     86a:	2210      	movs	r2, #16
     86c:	18ba      	adds	r2, r7, r2
     86e:	8812      	ldrh	r2, [r2, #0]
     870:	0a12      	lsrs	r2, r2, #8
     872:	b292      	uxth	r2, r2
     874:	b2d2      	uxtb	r2, r2
     876:	701a      	strb	r2, [r3, #0]
     878:	697b      	ldr	r3, [r7, #20]
     87a:	3309      	adds	r3, #9
     87c:	001a      	movs	r2, r3
     87e:	4b05      	ldr	r3, [pc, #20]	; (894 <mdb485_writeregs+0x148>)
     880:	0011      	movs	r1, r2
     882:	0018      	movs	r0, r3
     884:	f7ff ff12 	bl	6ac <mdb485_send>
     888:	e000      	b.n	88c <mdb485_writeregs+0x140>
     88a:	46c0      	nop			; (mov r8, r8)
     88c:	46bd      	mov	sp, r7
     88e:	b009      	add	sp, #36	; 0x24
     890:	bd90      	pop	{r4, r7, pc}
     892:	46c0      	nop			; (mov r8, r8)
     894:	200008bc 	.word	0x200008bc

00000898 <mdb485_readregs>:
     898:	b590      	push	{r4, r7, lr}
     89a:	b085      	sub	sp, #20
     89c:	af00      	add	r7, sp, #0
     89e:	0004      	movs	r4, r0
     8a0:	0008      	movs	r0, r1
     8a2:	0011      	movs	r1, r2
     8a4:	1dfb      	adds	r3, r7, #7
     8a6:	1c22      	adds	r2, r4, #0
     8a8:	701a      	strb	r2, [r3, #0]
     8aa:	1d3b      	adds	r3, r7, #4
     8ac:	1c02      	adds	r2, r0, #0
     8ae:	801a      	strh	r2, [r3, #0]
     8b0:	1cbb      	adds	r3, r7, #2
     8b2:	1c0a      	adds	r2, r1, #0
     8b4:	801a      	strh	r2, [r3, #0]
     8b6:	4b28      	ldr	r3, [pc, #160]	; (958 <mdb485_readregs+0xc0>)
     8b8:	60fb      	str	r3, [r7, #12]
     8ba:	68fb      	ldr	r3, [r7, #12]
     8bc:	1c5a      	adds	r2, r3, #1
     8be:	60fa      	str	r2, [r7, #12]
     8c0:	1dfa      	adds	r2, r7, #7
     8c2:	7812      	ldrb	r2, [r2, #0]
     8c4:	701a      	strb	r2, [r3, #0]
     8c6:	68fb      	ldr	r3, [r7, #12]
     8c8:	1c5a      	adds	r2, r3, #1
     8ca:	60fa      	str	r2, [r7, #12]
     8cc:	2203      	movs	r2, #3
     8ce:	701a      	strb	r2, [r3, #0]
     8d0:	68fb      	ldr	r3, [r7, #12]
     8d2:	1c5a      	adds	r2, r3, #1
     8d4:	60fa      	str	r2, [r7, #12]
     8d6:	1d3a      	adds	r2, r7, #4
     8d8:	8812      	ldrh	r2, [r2, #0]
     8da:	0a12      	lsrs	r2, r2, #8
     8dc:	b292      	uxth	r2, r2
     8de:	b2d2      	uxtb	r2, r2
     8e0:	701a      	strb	r2, [r3, #0]
     8e2:	68fb      	ldr	r3, [r7, #12]
     8e4:	1c5a      	adds	r2, r3, #1
     8e6:	60fa      	str	r2, [r7, #12]
     8e8:	1d3a      	adds	r2, r7, #4
     8ea:	8812      	ldrh	r2, [r2, #0]
     8ec:	b2d2      	uxtb	r2, r2
     8ee:	701a      	strb	r2, [r3, #0]
     8f0:	68fb      	ldr	r3, [r7, #12]
     8f2:	1c5a      	adds	r2, r3, #1
     8f4:	60fa      	str	r2, [r7, #12]
     8f6:	1cba      	adds	r2, r7, #2
     8f8:	8812      	ldrh	r2, [r2, #0]
     8fa:	0a12      	lsrs	r2, r2, #8
     8fc:	b292      	uxth	r2, r2
     8fe:	b2d2      	uxtb	r2, r2
     900:	701a      	strb	r2, [r3, #0]
     902:	68fb      	ldr	r3, [r7, #12]
     904:	1c5a      	adds	r2, r3, #1
     906:	60fa      	str	r2, [r7, #12]
     908:	1cba      	adds	r2, r7, #2
     90a:	8812      	ldrh	r2, [r2, #0]
     90c:	b2d2      	uxtb	r2, r2
     90e:	701a      	strb	r2, [r3, #0]
     910:	230a      	movs	r3, #10
     912:	18fc      	adds	r4, r7, r3
     914:	4b10      	ldr	r3, [pc, #64]	; (958 <mdb485_readregs+0xc0>)
     916:	2106      	movs	r1, #6
     918:	0018      	movs	r0, r3
     91a:	f002 fc7f 	bl	321c <crc16>
     91e:	0003      	movs	r3, r0
     920:	8023      	strh	r3, [r4, #0]
     922:	68fb      	ldr	r3, [r7, #12]
     924:	1c5a      	adds	r2, r3, #1
     926:	60fa      	str	r2, [r7, #12]
     928:	220a      	movs	r2, #10
     92a:	18ba      	adds	r2, r7, r2
     92c:	8812      	ldrh	r2, [r2, #0]
     92e:	b2d2      	uxtb	r2, r2
     930:	701a      	strb	r2, [r3, #0]
     932:	68fb      	ldr	r3, [r7, #12]
     934:	1c5a      	adds	r2, r3, #1
     936:	60fa      	str	r2, [r7, #12]
     938:	220a      	movs	r2, #10
     93a:	18ba      	adds	r2, r7, r2
     93c:	8812      	ldrh	r2, [r2, #0]
     93e:	0a12      	lsrs	r2, r2, #8
     940:	b292      	uxth	r2, r2
     942:	b2d2      	uxtb	r2, r2
     944:	701a      	strb	r2, [r3, #0]
     946:	4b04      	ldr	r3, [pc, #16]	; (958 <mdb485_readregs+0xc0>)
     948:	2108      	movs	r1, #8
     94a:	0018      	movs	r0, r3
     94c:	f7ff feae 	bl	6ac <mdb485_send>
     950:	46c0      	nop			; (mov r8, r8)
     952:	46bd      	mov	sp, r7
     954:	b005      	add	sp, #20
     956:	bd90      	pop	{r4, r7, pc}
     958:	200008bc 	.word	0x200008bc

0000095c <mdb485_read_inputregs>:
     95c:	b590      	push	{r4, r7, lr}
     95e:	b085      	sub	sp, #20
     960:	af00      	add	r7, sp, #0
     962:	0004      	movs	r4, r0
     964:	0008      	movs	r0, r1
     966:	0011      	movs	r1, r2
     968:	1dfb      	adds	r3, r7, #7
     96a:	1c22      	adds	r2, r4, #0
     96c:	701a      	strb	r2, [r3, #0]
     96e:	1d3b      	adds	r3, r7, #4
     970:	1c02      	adds	r2, r0, #0
     972:	801a      	strh	r2, [r3, #0]
     974:	1cbb      	adds	r3, r7, #2
     976:	1c0a      	adds	r2, r1, #0
     978:	801a      	strh	r2, [r3, #0]
     97a:	4b28      	ldr	r3, [pc, #160]	; (a1c <mdb485_read_inputregs+0xc0>)
     97c:	60fb      	str	r3, [r7, #12]
     97e:	68fb      	ldr	r3, [r7, #12]
     980:	1c5a      	adds	r2, r3, #1
     982:	60fa      	str	r2, [r7, #12]
     984:	1dfa      	adds	r2, r7, #7
     986:	7812      	ldrb	r2, [r2, #0]
     988:	701a      	strb	r2, [r3, #0]
     98a:	68fb      	ldr	r3, [r7, #12]
     98c:	1c5a      	adds	r2, r3, #1
     98e:	60fa      	str	r2, [r7, #12]
     990:	2204      	movs	r2, #4
     992:	701a      	strb	r2, [r3, #0]
     994:	68fb      	ldr	r3, [r7, #12]
     996:	1c5a      	adds	r2, r3, #1
     998:	60fa      	str	r2, [r7, #12]
     99a:	1d3a      	adds	r2, r7, #4
     99c:	8812      	ldrh	r2, [r2, #0]
     99e:	0a12      	lsrs	r2, r2, #8
     9a0:	b292      	uxth	r2, r2
     9a2:	b2d2      	uxtb	r2, r2
     9a4:	701a      	strb	r2, [r3, #0]
     9a6:	68fb      	ldr	r3, [r7, #12]
     9a8:	1c5a      	adds	r2, r3, #1
     9aa:	60fa      	str	r2, [r7, #12]
     9ac:	1d3a      	adds	r2, r7, #4
     9ae:	8812      	ldrh	r2, [r2, #0]
     9b0:	b2d2      	uxtb	r2, r2
     9b2:	701a      	strb	r2, [r3, #0]
     9b4:	68fb      	ldr	r3, [r7, #12]
     9b6:	1c5a      	adds	r2, r3, #1
     9b8:	60fa      	str	r2, [r7, #12]
     9ba:	1cba      	adds	r2, r7, #2
     9bc:	8812      	ldrh	r2, [r2, #0]
     9be:	0a12      	lsrs	r2, r2, #8
     9c0:	b292      	uxth	r2, r2
     9c2:	b2d2      	uxtb	r2, r2
     9c4:	701a      	strb	r2, [r3, #0]
     9c6:	68fb      	ldr	r3, [r7, #12]
     9c8:	1c5a      	adds	r2, r3, #1
     9ca:	60fa      	str	r2, [r7, #12]
     9cc:	1cba      	adds	r2, r7, #2
     9ce:	8812      	ldrh	r2, [r2, #0]
     9d0:	b2d2      	uxtb	r2, r2
     9d2:	701a      	strb	r2, [r3, #0]
     9d4:	230a      	movs	r3, #10
     9d6:	18fc      	adds	r4, r7, r3
     9d8:	4b10      	ldr	r3, [pc, #64]	; (a1c <mdb485_read_inputregs+0xc0>)
     9da:	2106      	movs	r1, #6
     9dc:	0018      	movs	r0, r3
     9de:	f002 fc1d 	bl	321c <crc16>
     9e2:	0003      	movs	r3, r0
     9e4:	8023      	strh	r3, [r4, #0]
     9e6:	68fb      	ldr	r3, [r7, #12]
     9e8:	1c5a      	adds	r2, r3, #1
     9ea:	60fa      	str	r2, [r7, #12]
     9ec:	220a      	movs	r2, #10
     9ee:	18ba      	adds	r2, r7, r2
     9f0:	8812      	ldrh	r2, [r2, #0]
     9f2:	b2d2      	uxtb	r2, r2
     9f4:	701a      	strb	r2, [r3, #0]
     9f6:	68fb      	ldr	r3, [r7, #12]
     9f8:	1c5a      	adds	r2, r3, #1
     9fa:	60fa      	str	r2, [r7, #12]
     9fc:	220a      	movs	r2, #10
     9fe:	18ba      	adds	r2, r7, r2
     a00:	8812      	ldrh	r2, [r2, #0]
     a02:	0a12      	lsrs	r2, r2, #8
     a04:	b292      	uxth	r2, r2
     a06:	b2d2      	uxtb	r2, r2
     a08:	701a      	strb	r2, [r3, #0]
     a0a:	4b04      	ldr	r3, [pc, #16]	; (a1c <mdb485_read_inputregs+0xc0>)
     a0c:	2108      	movs	r1, #8
     a0e:	0018      	movs	r0, r3
     a10:	f7ff fe4c 	bl	6ac <mdb485_send>
     a14:	46c0      	nop			; (mov r8, r8)
     a16:	46bd      	mov	sp, r7
     a18:	b005      	add	sp, #20
     a1a:	bd90      	pop	{r4, r7, pc}
     a1c:	200008bc 	.word	0x200008bc

00000a20 <mdb485_get_func>:
     a20:	b580      	push	{r7, lr}
     a22:	b082      	sub	sp, #8
     a24:	af00      	add	r7, sp, #0
     a26:	2007      	movs	r0, #7
     a28:	f7ff fdf0 	bl	60c <__NVIC_DisableIRQ>
     a2c:	4b05      	ldr	r3, [pc, #20]	; (a44 <mdb485_get_func+0x24>)
     a2e:	785b      	ldrb	r3, [r3, #1]
     a30:	607b      	str	r3, [r7, #4]
     a32:	2007      	movs	r0, #7
     a34:	f7ff fdd0 	bl	5d8 <__NVIC_EnableIRQ>
     a38:	687b      	ldr	r3, [r7, #4]
     a3a:	0018      	movs	r0, r3
     a3c:	46bd      	mov	sp, r7
     a3e:	b002      	add	sp, #8
     a40:	bd80      	pop	{r7, pc}
     a42:	46c0      	nop			; (mov r8, r8)
     a44:	200008ac 	.word	0x200008ac

00000a48 <mdb485_get_crc>:
     a48:	b590      	push	{r4, r7, lr}
     a4a:	b083      	sub	sp, #12
     a4c:	af00      	add	r7, sp, #0
     a4e:	2007      	movs	r0, #7
     a50:	f7ff fddc 	bl	60c <__NVIC_DisableIRQ>
     a54:	4b09      	ldr	r3, [pc, #36]	; (a7c <mdb485_get_crc+0x34>)
     a56:	681a      	ldr	r2, [r3, #0]
     a58:	1dbc      	adds	r4, r7, #6
     a5a:	4b09      	ldr	r3, [pc, #36]	; (a80 <mdb485_get_crc+0x38>)
     a5c:	0011      	movs	r1, r2
     a5e:	0018      	movs	r0, r3
     a60:	f002 fbdc 	bl	321c <crc16>
     a64:	0003      	movs	r3, r0
     a66:	8023      	strh	r3, [r4, #0]
     a68:	2007      	movs	r0, #7
     a6a:	f7ff fdb5 	bl	5d8 <__NVIC_EnableIRQ>
     a6e:	1dbb      	adds	r3, r7, #6
     a70:	881b      	ldrh	r3, [r3, #0]
     a72:	0018      	movs	r0, r3
     a74:	46bd      	mov	sp, r7
     a76:	b003      	add	sp, #12
     a78:	bd90      	pop	{r4, r7, pc}
     a7a:	46c0      	nop			; (mov r8, r8)
     a7c:	200008cc 	.word	0x200008cc
     a80:	200008ac 	.word	0x200008ac

00000a84 <mdb485_si30_get_counter>:
     a84:	b580      	push	{r7, lr}
     a86:	b082      	sub	sp, #8
     a88:	af00      	add	r7, sp, #0
     a8a:	4b1a      	ldr	r3, [pc, #104]	; (af4 <mdb485_si30_get_counter+0x70>)
     a8c:	607b      	str	r3, [r7, #4]
     a8e:	2007      	movs	r0, #7
     a90:	f7ff fdbc 	bl	60c <__NVIC_DisableIRQ>
     a94:	4b18      	ldr	r3, [pc, #96]	; (af8 <mdb485_si30_get_counter+0x74>)
     a96:	681b      	ldr	r3, [r3, #0]
     a98:	2b00      	cmp	r3, #0
     a9a:	d022      	beq.n	ae2 <mdb485_si30_get_counter+0x5e>
     a9c:	687b      	ldr	r3, [r7, #4]
     a9e:	1c5a      	adds	r2, r3, #1
     aa0:	607a      	str	r2, [r7, #4]
     aa2:	781b      	ldrb	r3, [r3, #0]
     aa4:	061b      	lsls	r3, r3, #24
     aa6:	603b      	str	r3, [r7, #0]
     aa8:	687b      	ldr	r3, [r7, #4]
     aaa:	1c5a      	adds	r2, r3, #1
     aac:	607a      	str	r2, [r7, #4]
     aae:	781b      	ldrb	r3, [r3, #0]
     ab0:	041b      	lsls	r3, r3, #16
     ab2:	001a      	movs	r2, r3
     ab4:	683b      	ldr	r3, [r7, #0]
     ab6:	4313      	orrs	r3, r2
     ab8:	603b      	str	r3, [r7, #0]
     aba:	687b      	ldr	r3, [r7, #4]
     abc:	1c5a      	adds	r2, r3, #1
     abe:	607a      	str	r2, [r7, #4]
     ac0:	781b      	ldrb	r3, [r3, #0]
     ac2:	021b      	lsls	r3, r3, #8
     ac4:	001a      	movs	r2, r3
     ac6:	683b      	ldr	r3, [r7, #0]
     ac8:	4313      	orrs	r3, r2
     aca:	603b      	str	r3, [r7, #0]
     acc:	687b      	ldr	r3, [r7, #4]
     ace:	781b      	ldrb	r3, [r3, #0]
     ad0:	001a      	movs	r2, r3
     ad2:	683b      	ldr	r3, [r7, #0]
     ad4:	4313      	orrs	r3, r2
     ad6:	603b      	str	r3, [r7, #0]
     ad8:	2007      	movs	r0, #7
     ada:	f7ff fd7d 	bl	5d8 <__NVIC_EnableIRQ>
     ade:	683b      	ldr	r3, [r7, #0]
     ae0:	e003      	b.n	aea <mdb485_si30_get_counter+0x66>
     ae2:	2007      	movs	r0, #7
     ae4:	f7ff fd78 	bl	5d8 <__NVIC_EnableIRQ>
     ae8:	2300      	movs	r3, #0
     aea:	0018      	movs	r0, r3
     aec:	46bd      	mov	sp, r7
     aee:	b002      	add	sp, #8
     af0:	bd80      	pop	{r7, pc}
     af2:	46c0      	nop			; (mov r8, r8)
     af4:	200008af 	.word	0x200008af
     af8:	200008cc 	.word	0x200008cc

00000afc <UART2_Handler>:
     afc:	b580      	push	{r7, lr}
     afe:	b082      	sub	sp, #8
     b00:	af00      	add	r7, sp, #0
     b02:	4b16      	ldr	r3, [pc, #88]	; (b5c <UART2_Handler+0x60>)
     b04:	2200      	movs	r2, #0
     b06:	601a      	str	r2, [r3, #0]
     b08:	4b15      	ldr	r3, [pc, #84]	; (b60 <UART2_Handler+0x64>)
     b0a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     b0c:	2240      	movs	r2, #64	; 0x40
     b0e:	4013      	ands	r3, r2
     b10:	d016      	beq.n	b40 <UART2_Handler+0x44>
     b12:	4b14      	ldr	r3, [pc, #80]	; (b64 <UART2_Handler+0x68>)
     b14:	603b      	str	r3, [r7, #0]
     b16:	2300      	movs	r3, #0
     b18:	607b      	str	r3, [r7, #4]
     b1a:	e009      	b.n	b30 <UART2_Handler+0x34>
     b1c:	683b      	ldr	r3, [r7, #0]
     b1e:	1c5a      	adds	r2, r3, #1
     b20:	603a      	str	r2, [r7, #0]
     b22:	4a0f      	ldr	r2, [pc, #60]	; (b60 <UART2_Handler+0x64>)
     b24:	6812      	ldr	r2, [r2, #0]
     b26:	b2d2      	uxtb	r2, r2
     b28:	701a      	strb	r2, [r3, #0]
     b2a:	687b      	ldr	r3, [r7, #4]
     b2c:	3301      	adds	r3, #1
     b2e:	607b      	str	r3, [r7, #4]
     b30:	687b      	ldr	r3, [r7, #4]
     b32:	2b0f      	cmp	r3, #15
     b34:	dc04      	bgt.n	b40 <UART2_Handler+0x44>
     b36:	4b0a      	ldr	r3, [pc, #40]	; (b60 <UART2_Handler+0x64>)
     b38:	699b      	ldr	r3, [r3, #24]
     b3a:	2210      	movs	r2, #16
     b3c:	4013      	ands	r3, r2
     b3e:	d0ed      	beq.n	b1c <UART2_Handler+0x20>
     b40:	4b06      	ldr	r3, [pc, #24]	; (b5c <UART2_Handler+0x60>)
     b42:	687a      	ldr	r2, [r7, #4]
     b44:	601a      	str	r2, [r3, #0]
     b46:	4b08      	ldr	r3, [pc, #32]	; (b68 <UART2_Handler+0x6c>)
     b48:	681b      	ldr	r3, [r3, #0]
     b4a:	2108      	movs	r1, #8
     b4c:	0018      	movs	r0, r3
     b4e:	f005 fea3 	bl	6898 <osSignalSet>
     b52:	46c0      	nop			; (mov r8, r8)
     b54:	46bd      	mov	sp, r7
     b56:	b002      	add	sp, #8
     b58:	bd80      	pop	{r7, pc}
     b5a:	46c0      	nop			; (mov r8, r8)
     b5c:	200008cc 	.word	0x200008cc
     b60:	40038000 	.word	0x40038000
     b64:	200008ac 	.word	0x200008ac
     b68:	20000860 	.word	0x20000860

00000b6c <_exit>:
     b6c:	b580      	push	{r7, lr}
     b6e:	b082      	sub	sp, #8
     b70:	af00      	add	r7, sp, #0
     b72:	6078      	str	r0, [r7, #4]
     b74:	4b03      	ldr	r3, [pc, #12]	; (b84 <_exit+0x18>)
     b76:	2204      	movs	r2, #4
     b78:	0019      	movs	r1, r3
     b7a:	2001      	movs	r0, #1
     b7c:	f000 f90c 	bl	d98 <_write>
     b80:	e7fe      	b.n	b80 <_exit+0x14>
     b82:	46c0      	nop			; (mov r8, r8)
     b84:	00008ba4 	.word	0x00008ba4

00000b88 <_close>:
     b88:	b580      	push	{r7, lr}
     b8a:	b082      	sub	sp, #8
     b8c:	af00      	add	r7, sp, #0
     b8e:	6078      	str	r0, [r7, #4]
     b90:	2301      	movs	r3, #1
     b92:	425b      	negs	r3, r3
     b94:	0018      	movs	r0, r3
     b96:	46bd      	mov	sp, r7
     b98:	b002      	add	sp, #8
     b9a:	bd80      	pop	{r7, pc}

00000b9c <_execve>:
     b9c:	b580      	push	{r7, lr}
     b9e:	b084      	sub	sp, #16
     ba0:	af00      	add	r7, sp, #0
     ba2:	60f8      	str	r0, [r7, #12]
     ba4:	60b9      	str	r1, [r7, #8]
     ba6:	607a      	str	r2, [r7, #4]
     ba8:	4b04      	ldr	r3, [pc, #16]	; (bbc <_execve+0x20>)
     baa:	220c      	movs	r2, #12
     bac:	601a      	str	r2, [r3, #0]
     bae:	2301      	movs	r3, #1
     bb0:	425b      	negs	r3, r3
     bb2:	0018      	movs	r0, r3
     bb4:	46bd      	mov	sp, r7
     bb6:	b004      	add	sp, #16
     bb8:	bd80      	pop	{r7, pc}
     bba:	46c0      	nop			; (mov r8, r8)
     bbc:	20006074 	.word	0x20006074

00000bc0 <_fork>:
     bc0:	b580      	push	{r7, lr}
     bc2:	af00      	add	r7, sp, #0
     bc4:	4b03      	ldr	r3, [pc, #12]	; (bd4 <_fork+0x14>)
     bc6:	220b      	movs	r2, #11
     bc8:	601a      	str	r2, [r3, #0]
     bca:	2301      	movs	r3, #1
     bcc:	425b      	negs	r3, r3
     bce:	0018      	movs	r0, r3
     bd0:	46bd      	mov	sp, r7
     bd2:	bd80      	pop	{r7, pc}
     bd4:	20006074 	.word	0x20006074

00000bd8 <_fstat>:
     bd8:	b580      	push	{r7, lr}
     bda:	b082      	sub	sp, #8
     bdc:	af00      	add	r7, sp, #0
     bde:	6078      	str	r0, [r7, #4]
     be0:	6039      	str	r1, [r7, #0]
     be2:	683b      	ldr	r3, [r7, #0]
     be4:	2280      	movs	r2, #128	; 0x80
     be6:	0192      	lsls	r2, r2, #6
     be8:	605a      	str	r2, [r3, #4]
     bea:	2300      	movs	r3, #0
     bec:	0018      	movs	r0, r3
     bee:	46bd      	mov	sp, r7
     bf0:	b002      	add	sp, #8
     bf2:	bd80      	pop	{r7, pc}

00000bf4 <_getpid>:
     bf4:	b580      	push	{r7, lr}
     bf6:	af00      	add	r7, sp, #0
     bf8:	2301      	movs	r3, #1
     bfa:	0018      	movs	r0, r3
     bfc:	46bd      	mov	sp, r7
     bfe:	bd80      	pop	{r7, pc}

00000c00 <_isatty>:
     c00:	b580      	push	{r7, lr}
     c02:	b082      	sub	sp, #8
     c04:	af00      	add	r7, sp, #0
     c06:	6078      	str	r0, [r7, #4]
     c08:	687b      	ldr	r3, [r7, #4]
     c0a:	3300      	adds	r3, #0
     c0c:	2b02      	cmp	r3, #2
     c0e:	d801      	bhi.n	c14 <_isatty+0x14>
     c10:	2301      	movs	r3, #1
     c12:	e003      	b.n	c1c <_isatty+0x1c>
     c14:	4b03      	ldr	r3, [pc, #12]	; (c24 <_isatty+0x24>)
     c16:	2209      	movs	r2, #9
     c18:	601a      	str	r2, [r3, #0]
     c1a:	2300      	movs	r3, #0
     c1c:	0018      	movs	r0, r3
     c1e:	46bd      	mov	sp, r7
     c20:	b002      	add	sp, #8
     c22:	bd80      	pop	{r7, pc}
     c24:	20006074 	.word	0x20006074

00000c28 <_kill>:
     c28:	b580      	push	{r7, lr}
     c2a:	b082      	sub	sp, #8
     c2c:	af00      	add	r7, sp, #0
     c2e:	6078      	str	r0, [r7, #4]
     c30:	6039      	str	r1, [r7, #0]
     c32:	4b04      	ldr	r3, [pc, #16]	; (c44 <_kill+0x1c>)
     c34:	2216      	movs	r2, #22
     c36:	601a      	str	r2, [r3, #0]
     c38:	2301      	movs	r3, #1
     c3a:	425b      	negs	r3, r3
     c3c:	0018      	movs	r0, r3
     c3e:	46bd      	mov	sp, r7
     c40:	b002      	add	sp, #8
     c42:	bd80      	pop	{r7, pc}
     c44:	20006074 	.word	0x20006074

00000c48 <_link>:
     c48:	b580      	push	{r7, lr}
     c4a:	b082      	sub	sp, #8
     c4c:	af00      	add	r7, sp, #0
     c4e:	6078      	str	r0, [r7, #4]
     c50:	6039      	str	r1, [r7, #0]
     c52:	4b04      	ldr	r3, [pc, #16]	; (c64 <_link+0x1c>)
     c54:	221f      	movs	r2, #31
     c56:	601a      	str	r2, [r3, #0]
     c58:	2301      	movs	r3, #1
     c5a:	425b      	negs	r3, r3
     c5c:	0018      	movs	r0, r3
     c5e:	46bd      	mov	sp, r7
     c60:	b002      	add	sp, #8
     c62:	bd80      	pop	{r7, pc}
     c64:	20006074 	.word	0x20006074

00000c68 <_lseek>:
     c68:	b580      	push	{r7, lr}
     c6a:	b084      	sub	sp, #16
     c6c:	af00      	add	r7, sp, #0
     c6e:	60f8      	str	r0, [r7, #12]
     c70:	60b9      	str	r1, [r7, #8]
     c72:	607a      	str	r2, [r7, #4]
     c74:	2300      	movs	r3, #0
     c76:	0018      	movs	r0, r3
     c78:	46bd      	mov	sp, r7
     c7a:	b004      	add	sp, #16
     c7c:	bd80      	pop	{r7, pc}
     c7e:	46c0      	nop			; (mov r8, r8)

00000c80 <_sbrk>:
     c80:	b580      	push	{r7, lr}
     c82:	b086      	sub	sp, #24
     c84:	af00      	add	r7, sp, #0
     c86:	6078      	str	r0, [r7, #4]
     c88:	4b16      	ldr	r3, [pc, #88]	; (ce4 <_sbrk+0x64>)
     c8a:	681b      	ldr	r3, [r3, #0]
     c8c:	2b00      	cmp	r3, #0
     c8e:	d102      	bne.n	c96 <_sbrk+0x16>
     c90:	4b14      	ldr	r3, [pc, #80]	; (ce4 <_sbrk+0x64>)
     c92:	4a15      	ldr	r2, [pc, #84]	; (ce8 <_sbrk+0x68>)
     c94:	601a      	str	r2, [r3, #0]
     c96:	4b13      	ldr	r3, [pc, #76]	; (ce4 <_sbrk+0x64>)
     c98:	681b      	ldr	r3, [r3, #0]
     c9a:	617b      	str	r3, [r7, #20]
     c9c:	f3ef 8308 	mrs	r3, MSP
     ca0:	60fb      	str	r3, [r7, #12]
     ca2:	68fb      	ldr	r3, [r7, #12]
     ca4:	613b      	str	r3, [r7, #16]
     ca6:	4b0f      	ldr	r3, [pc, #60]	; (ce4 <_sbrk+0x64>)
     ca8:	681a      	ldr	r2, [r3, #0]
     caa:	687b      	ldr	r3, [r7, #4]
     cac:	18d2      	adds	r2, r2, r3
     cae:	693b      	ldr	r3, [r7, #16]
     cb0:	429a      	cmp	r2, r3
     cb2:	d90b      	bls.n	ccc <_sbrk+0x4c>
     cb4:	4b0d      	ldr	r3, [pc, #52]	; (cec <_sbrk+0x6c>)
     cb6:	2219      	movs	r2, #25
     cb8:	0019      	movs	r1, r3
     cba:	2002      	movs	r0, #2
     cbc:	f000 f86c 	bl	d98 <_write>
     cc0:	4b0b      	ldr	r3, [pc, #44]	; (cf0 <_sbrk+0x70>)
     cc2:	220c      	movs	r2, #12
     cc4:	601a      	str	r2, [r3, #0]
     cc6:	2301      	movs	r3, #1
     cc8:	425b      	negs	r3, r3
     cca:	e006      	b.n	cda <_sbrk+0x5a>
     ccc:	4b05      	ldr	r3, [pc, #20]	; (ce4 <_sbrk+0x64>)
     cce:	681a      	ldr	r2, [r3, #0]
     cd0:	687b      	ldr	r3, [r7, #4]
     cd2:	18d2      	adds	r2, r2, r3
     cd4:	4b03      	ldr	r3, [pc, #12]	; (ce4 <_sbrk+0x64>)
     cd6:	601a      	str	r2, [r3, #0]
     cd8:	697b      	ldr	r3, [r7, #20]
     cda:	0018      	movs	r0, r3
     cdc:	46bd      	mov	sp, r7
     cde:	b006      	add	sp, #24
     ce0:	bd80      	pop	{r7, pc}
     ce2:	46c0      	nop			; (mov r8, r8)
     ce4:	200008d4 	.word	0x200008d4
     ce8:	200060fc 	.word	0x200060fc
     cec:	00008bac 	.word	0x00008bac
     cf0:	20006074 	.word	0x20006074

00000cf4 <_read>:
     cf4:	b580      	push	{r7, lr}
     cf6:	b086      	sub	sp, #24
     cf8:	af00      	add	r7, sp, #0
     cfa:	60f8      	str	r0, [r7, #12]
     cfc:	60b9      	str	r1, [r7, #8]
     cfe:	607a      	str	r2, [r7, #4]
     d00:	2300      	movs	r3, #0
     d02:	617b      	str	r3, [r7, #20]
     d04:	68fb      	ldr	r3, [r7, #12]
     d06:	2b00      	cmp	r3, #0
     d08:	d005      	beq.n	d16 <_read+0x22>
     d0a:	4b06      	ldr	r3, [pc, #24]	; (d24 <_read+0x30>)
     d0c:	2209      	movs	r2, #9
     d0e:	601a      	str	r2, [r3, #0]
     d10:	2301      	movs	r3, #1
     d12:	425b      	negs	r3, r3
     d14:	e001      	b.n	d1a <_read+0x26>
     d16:	46c0      	nop			; (mov r8, r8)
     d18:	697b      	ldr	r3, [r7, #20]
     d1a:	0018      	movs	r0, r3
     d1c:	46bd      	mov	sp, r7
     d1e:	b006      	add	sp, #24
     d20:	bd80      	pop	{r7, pc}
     d22:	46c0      	nop			; (mov r8, r8)
     d24:	20006074 	.word	0x20006074

00000d28 <_stat>:
     d28:	b580      	push	{r7, lr}
     d2a:	b082      	sub	sp, #8
     d2c:	af00      	add	r7, sp, #0
     d2e:	6078      	str	r0, [r7, #4]
     d30:	6039      	str	r1, [r7, #0]
     d32:	683b      	ldr	r3, [r7, #0]
     d34:	2280      	movs	r2, #128	; 0x80
     d36:	0192      	lsls	r2, r2, #6
     d38:	605a      	str	r2, [r3, #4]
     d3a:	2300      	movs	r3, #0
     d3c:	0018      	movs	r0, r3
     d3e:	46bd      	mov	sp, r7
     d40:	b002      	add	sp, #8
     d42:	bd80      	pop	{r7, pc}

00000d44 <_times>:
     d44:	b580      	push	{r7, lr}
     d46:	b082      	sub	sp, #8
     d48:	af00      	add	r7, sp, #0
     d4a:	6078      	str	r0, [r7, #4]
     d4c:	2301      	movs	r3, #1
     d4e:	425b      	negs	r3, r3
     d50:	0018      	movs	r0, r3
     d52:	46bd      	mov	sp, r7
     d54:	b002      	add	sp, #8
     d56:	bd80      	pop	{r7, pc}

00000d58 <_unlink>:
     d58:	b580      	push	{r7, lr}
     d5a:	b082      	sub	sp, #8
     d5c:	af00      	add	r7, sp, #0
     d5e:	6078      	str	r0, [r7, #4]
     d60:	4b04      	ldr	r3, [pc, #16]	; (d74 <_unlink+0x1c>)
     d62:	2202      	movs	r2, #2
     d64:	601a      	str	r2, [r3, #0]
     d66:	2301      	movs	r3, #1
     d68:	425b      	negs	r3, r3
     d6a:	0018      	movs	r0, r3
     d6c:	46bd      	mov	sp, r7
     d6e:	b002      	add	sp, #8
     d70:	bd80      	pop	{r7, pc}
     d72:	46c0      	nop			; (mov r8, r8)
     d74:	20006074 	.word	0x20006074

00000d78 <_wait>:
     d78:	b580      	push	{r7, lr}
     d7a:	b082      	sub	sp, #8
     d7c:	af00      	add	r7, sp, #0
     d7e:	6078      	str	r0, [r7, #4]
     d80:	4b04      	ldr	r3, [pc, #16]	; (d94 <_wait+0x1c>)
     d82:	220a      	movs	r2, #10
     d84:	601a      	str	r2, [r3, #0]
     d86:	2301      	movs	r3, #1
     d88:	425b      	negs	r3, r3
     d8a:	0018      	movs	r0, r3
     d8c:	46bd      	mov	sp, r7
     d8e:	b002      	add	sp, #8
     d90:	bd80      	pop	{r7, pc}
     d92:	46c0      	nop			; (mov r8, r8)
     d94:	20006074 	.word	0x20006074

00000d98 <_write>:
     d98:	b580      	push	{r7, lr}
     d9a:	b086      	sub	sp, #24
     d9c:	af00      	add	r7, sp, #0
     d9e:	60f8      	str	r0, [r7, #12]
     da0:	60b9      	str	r1, [r7, #8]
     da2:	607a      	str	r2, [r7, #4]
     da4:	68fb      	ldr	r3, [r7, #12]
     da6:	2b01      	cmp	r3, #1
     da8:	d002      	beq.n	db0 <_write+0x18>
     daa:	2b02      	cmp	r3, #2
     dac:	d00b      	beq.n	dc6 <_write+0x2e>
     dae:	e015      	b.n	ddc <_write+0x44>
     db0:	2300      	movs	r3, #0
     db2:	617b      	str	r3, [r7, #20]
     db4:	e002      	b.n	dbc <_write+0x24>
     db6:	697b      	ldr	r3, [r7, #20]
     db8:	3301      	adds	r3, #1
     dba:	617b      	str	r3, [r7, #20]
     dbc:	697a      	ldr	r2, [r7, #20]
     dbe:	687b      	ldr	r3, [r7, #4]
     dc0:	429a      	cmp	r2, r3
     dc2:	dbf8      	blt.n	db6 <_write+0x1e>
     dc4:	e010      	b.n	de8 <_write+0x50>
     dc6:	2300      	movs	r3, #0
     dc8:	617b      	str	r3, [r7, #20]
     dca:	e002      	b.n	dd2 <_write+0x3a>
     dcc:	697b      	ldr	r3, [r7, #20]
     dce:	3301      	adds	r3, #1
     dd0:	617b      	str	r3, [r7, #20]
     dd2:	697a      	ldr	r2, [r7, #20]
     dd4:	687b      	ldr	r3, [r7, #4]
     dd6:	429a      	cmp	r2, r3
     dd8:	dbf8      	blt.n	dcc <_write+0x34>
     dda:	e005      	b.n	de8 <_write+0x50>
     ddc:	4b05      	ldr	r3, [pc, #20]	; (df4 <_write+0x5c>)
     dde:	2209      	movs	r2, #9
     de0:	601a      	str	r2, [r3, #0]
     de2:	2301      	movs	r3, #1
     de4:	425b      	negs	r3, r3
     de6:	e000      	b.n	dea <_write+0x52>
     de8:	687b      	ldr	r3, [r7, #4]
     dea:	0018      	movs	r0, r3
     dec:	46bd      	mov	sp, r7
     dee:	b006      	add	sp, #24
     df0:	bd80      	pop	{r7, pc}
     df2:	46c0      	nop			; (mov r8, r8)
     df4:	20006074 	.word	0x20006074

00000df8 <_init>:
     df8:	b580      	push	{r7, lr}
     dfa:	af00      	add	r7, sp, #0
     dfc:	46c0      	nop			; (mov r8, r8)
     dfe:	46bd      	mov	sp, r7
     e00:	bd80      	pop	{r7, pc}
     e02:	46c0      	nop			; (mov r8, r8)

00000e04 <_fini>:
     e04:	b580      	push	{r7, lr}
     e06:	af00      	add	r7, sp, #0
     e08:	46c0      	nop			; (mov r8, r8)
     e0a:	46bd      	mov	sp, r7
     e0c:	bd80      	pop	{r7, pc}
     e0e:	46c0      	nop			; (mov r8, r8)

00000e10 <__NVIC_EnableIRQ>:
     e10:	b580      	push	{r7, lr}
     e12:	b082      	sub	sp, #8
     e14:	af00      	add	r7, sp, #0
     e16:	0002      	movs	r2, r0
     e18:	1dfb      	adds	r3, r7, #7
     e1a:	701a      	strb	r2, [r3, #0]
     e1c:	1dfb      	adds	r3, r7, #7
     e1e:	781b      	ldrb	r3, [r3, #0]
     e20:	2b7f      	cmp	r3, #127	; 0x7f
     e22:	d809      	bhi.n	e38 <__NVIC_EnableIRQ+0x28>
     e24:	4b06      	ldr	r3, [pc, #24]	; (e40 <__NVIC_EnableIRQ+0x30>)
     e26:	1dfa      	adds	r2, r7, #7
     e28:	7812      	ldrb	r2, [r2, #0]
     e2a:	0011      	movs	r1, r2
     e2c:	221f      	movs	r2, #31
     e2e:	400a      	ands	r2, r1
     e30:	2101      	movs	r1, #1
     e32:	4091      	lsls	r1, r2
     e34:	000a      	movs	r2, r1
     e36:	601a      	str	r2, [r3, #0]
     e38:	46c0      	nop			; (mov r8, r8)
     e3a:	46bd      	mov	sp, r7
     e3c:	b002      	add	sp, #8
     e3e:	bd80      	pop	{r7, pc}
     e40:	e000e100 	.word	0xe000e100

00000e44 <__NVIC_DisableIRQ>:
     e44:	b580      	push	{r7, lr}
     e46:	b082      	sub	sp, #8
     e48:	af00      	add	r7, sp, #0
     e4a:	0002      	movs	r2, r0
     e4c:	1dfb      	adds	r3, r7, #7
     e4e:	701a      	strb	r2, [r3, #0]
     e50:	1dfb      	adds	r3, r7, #7
     e52:	781b      	ldrb	r3, [r3, #0]
     e54:	2b7f      	cmp	r3, #127	; 0x7f
     e56:	d80e      	bhi.n	e76 <__NVIC_DisableIRQ+0x32>
     e58:	4909      	ldr	r1, [pc, #36]	; (e80 <__NVIC_DisableIRQ+0x3c>)
     e5a:	1dfb      	adds	r3, r7, #7
     e5c:	781b      	ldrb	r3, [r3, #0]
     e5e:	001a      	movs	r2, r3
     e60:	231f      	movs	r3, #31
     e62:	4013      	ands	r3, r2
     e64:	2201      	movs	r2, #1
     e66:	409a      	lsls	r2, r3
     e68:	0013      	movs	r3, r2
     e6a:	2280      	movs	r2, #128	; 0x80
     e6c:	508b      	str	r3, [r1, r2]
     e6e:	f3bf 8f4f 	dsb	sy
     e72:	f3bf 8f6f 	isb	sy
     e76:	46c0      	nop			; (mov r8, r8)
     e78:	46bd      	mov	sp, r7
     e7a:	b002      	add	sp, #8
     e7c:	bd80      	pop	{r7, pc}
     e7e:	46c0      	nop			; (mov r8, r8)
     e80:	e000e100 	.word	0xe000e100

00000e84 <mdb232_init>:
     e84:	b580      	push	{r7, lr}
     e86:	af00      	add	r7, sp, #0
     e88:	4b15      	ldr	r3, [pc, #84]	; (ee0 <mdb232_init+0x5c>)
     e8a:	229c      	movs	r2, #156	; 0x9c
     e8c:	0052      	lsls	r2, r2, #1
     e8e:	625a      	str	r2, [r3, #36]	; 0x24
     e90:	4b13      	ldr	r3, [pc, #76]	; (ee0 <mdb232_init+0x5c>)
     e92:	2220      	movs	r2, #32
     e94:	629a      	str	r2, [r3, #40]	; 0x28
     e96:	4b12      	ldr	r3, [pc, #72]	; (ee0 <mdb232_init+0x5c>)
     e98:	4a11      	ldr	r2, [pc, #68]	; (ee0 <mdb232_init+0x5c>)
     e9a:	6b52      	ldr	r2, [r2, #52]	; 0x34
     e9c:	213f      	movs	r1, #63	; 0x3f
     e9e:	438a      	bics	r2, r1
     ea0:	635a      	str	r2, [r3, #52]	; 0x34
     ea2:	4b0f      	ldr	r3, [pc, #60]	; (ee0 <mdb232_init+0x5c>)
     ea4:	4a0e      	ldr	r2, [pc, #56]	; (ee0 <mdb232_init+0x5c>)
     ea6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     ea8:	2110      	movs	r1, #16
     eaa:	430a      	orrs	r2, r1
     eac:	62da      	str	r2, [r3, #44]	; 0x2c
     eae:	4b0c      	ldr	r3, [pc, #48]	; (ee0 <mdb232_init+0x5c>)
     eb0:	4a0b      	ldr	r2, [pc, #44]	; (ee0 <mdb232_init+0x5c>)
     eb2:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     eb4:	2160      	movs	r1, #96	; 0x60
     eb6:	430a      	orrs	r2, r1
     eb8:	62da      	str	r2, [r3, #44]	; 0x2c
     eba:	4b09      	ldr	r3, [pc, #36]	; (ee0 <mdb232_init+0x5c>)
     ebc:	4a08      	ldr	r2, [pc, #32]	; (ee0 <mdb232_init+0x5c>)
     ebe:	6b12      	ldr	r2, [r2, #48]	; 0x30
     ec0:	4908      	ldr	r1, [pc, #32]	; (ee4 <mdb232_init+0x60>)
     ec2:	430a      	orrs	r2, r1
     ec4:	631a      	str	r2, [r3, #48]	; 0x30
     ec6:	4b06      	ldr	r3, [pc, #24]	; (ee0 <mdb232_init+0x5c>)
     ec8:	4a05      	ldr	r2, [pc, #20]	; (ee0 <mdb232_init+0x5c>)
     eca:	6b92      	ldr	r2, [r2, #56]	; 0x38
     ecc:	2140      	movs	r1, #64	; 0x40
     ece:	430a      	orrs	r2, r1
     ed0:	639a      	str	r2, [r3, #56]	; 0x38
     ed2:	2006      	movs	r0, #6
     ed4:	f7ff ff9c 	bl	e10 <__NVIC_EnableIRQ>
     ed8:	46c0      	nop			; (mov r8, r8)
     eda:	46bd      	mov	sp, r7
     edc:	bd80      	pop	{r7, pc}
     ede:	46c0      	nop			; (mov r8, r8)
     ee0:	40030000 	.word	0x40030000
     ee4:	00000301 	.word	0x00000301

00000ee8 <mdb232_send>:
     ee8:	b580      	push	{r7, lr}
     eea:	b084      	sub	sp, #16
     eec:	af00      	add	r7, sp, #0
     eee:	6078      	str	r0, [r7, #4]
     ef0:	6039      	str	r1, [r7, #0]
     ef2:	2300      	movs	r3, #0
     ef4:	60fb      	str	r3, [r7, #12]
     ef6:	e00e      	b.n	f16 <mdb232_send+0x2e>
     ef8:	46c0      	nop			; (mov r8, r8)
     efa:	4b0e      	ldr	r3, [pc, #56]	; (f34 <mdb232_send+0x4c>)
     efc:	699b      	ldr	r3, [r3, #24]
     efe:	2220      	movs	r2, #32
     f00:	4013      	ands	r3, r2
     f02:	d1fa      	bne.n	efa <mdb232_send+0x12>
     f04:	4a0b      	ldr	r2, [pc, #44]	; (f34 <mdb232_send+0x4c>)
     f06:	687b      	ldr	r3, [r7, #4]
     f08:	1c59      	adds	r1, r3, #1
     f0a:	6079      	str	r1, [r7, #4]
     f0c:	781b      	ldrb	r3, [r3, #0]
     f0e:	6013      	str	r3, [r2, #0]
     f10:	68fb      	ldr	r3, [r7, #12]
     f12:	3301      	adds	r3, #1
     f14:	60fb      	str	r3, [r7, #12]
     f16:	68fa      	ldr	r2, [r7, #12]
     f18:	683b      	ldr	r3, [r7, #0]
     f1a:	429a      	cmp	r2, r3
     f1c:	dbec      	blt.n	ef8 <mdb232_send+0x10>
     f1e:	46c0      	nop			; (mov r8, r8)
     f20:	4b04      	ldr	r3, [pc, #16]	; (f34 <mdb232_send+0x4c>)
     f22:	699b      	ldr	r3, [r3, #24]
     f24:	2208      	movs	r2, #8
     f26:	4013      	ands	r3, r2
     f28:	d1fa      	bne.n	f20 <mdb232_send+0x38>
     f2a:	683b      	ldr	r3, [r7, #0]
     f2c:	0018      	movs	r0, r3
     f2e:	46bd      	mov	sp, r7
     f30:	b004      	add	sp, #16
     f32:	bd80      	pop	{r7, pc}
     f34:	40030000 	.word	0x40030000

00000f38 <mdb232_read_inputregs>:
     f38:	b590      	push	{r4, r7, lr}
     f3a:	b085      	sub	sp, #20
     f3c:	af00      	add	r7, sp, #0
     f3e:	0004      	movs	r4, r0
     f40:	0008      	movs	r0, r1
     f42:	0011      	movs	r1, r2
     f44:	1dfb      	adds	r3, r7, #7
     f46:	1c22      	adds	r2, r4, #0
     f48:	701a      	strb	r2, [r3, #0]
     f4a:	1d3b      	adds	r3, r7, #4
     f4c:	1c02      	adds	r2, r0, #0
     f4e:	801a      	strh	r2, [r3, #0]
     f50:	1cbb      	adds	r3, r7, #2
     f52:	1c0a      	adds	r2, r1, #0
     f54:	801a      	strh	r2, [r3, #0]
     f56:	4b28      	ldr	r3, [pc, #160]	; (ff8 <mdb232_read_inputregs+0xc0>)
     f58:	60fb      	str	r3, [r7, #12]
     f5a:	68fb      	ldr	r3, [r7, #12]
     f5c:	1c5a      	adds	r2, r3, #1
     f5e:	60fa      	str	r2, [r7, #12]
     f60:	1dfa      	adds	r2, r7, #7
     f62:	7812      	ldrb	r2, [r2, #0]
     f64:	701a      	strb	r2, [r3, #0]
     f66:	68fb      	ldr	r3, [r7, #12]
     f68:	1c5a      	adds	r2, r3, #1
     f6a:	60fa      	str	r2, [r7, #12]
     f6c:	2204      	movs	r2, #4
     f6e:	701a      	strb	r2, [r3, #0]
     f70:	68fb      	ldr	r3, [r7, #12]
     f72:	1c5a      	adds	r2, r3, #1
     f74:	60fa      	str	r2, [r7, #12]
     f76:	1d3a      	adds	r2, r7, #4
     f78:	8812      	ldrh	r2, [r2, #0]
     f7a:	0a12      	lsrs	r2, r2, #8
     f7c:	b292      	uxth	r2, r2
     f7e:	b2d2      	uxtb	r2, r2
     f80:	701a      	strb	r2, [r3, #0]
     f82:	68fb      	ldr	r3, [r7, #12]
     f84:	1c5a      	adds	r2, r3, #1
     f86:	60fa      	str	r2, [r7, #12]
     f88:	1d3a      	adds	r2, r7, #4
     f8a:	8812      	ldrh	r2, [r2, #0]
     f8c:	b2d2      	uxtb	r2, r2
     f8e:	701a      	strb	r2, [r3, #0]
     f90:	68fb      	ldr	r3, [r7, #12]
     f92:	1c5a      	adds	r2, r3, #1
     f94:	60fa      	str	r2, [r7, #12]
     f96:	1cba      	adds	r2, r7, #2
     f98:	8812      	ldrh	r2, [r2, #0]
     f9a:	0a12      	lsrs	r2, r2, #8
     f9c:	b292      	uxth	r2, r2
     f9e:	b2d2      	uxtb	r2, r2
     fa0:	701a      	strb	r2, [r3, #0]
     fa2:	68fb      	ldr	r3, [r7, #12]
     fa4:	1c5a      	adds	r2, r3, #1
     fa6:	60fa      	str	r2, [r7, #12]
     fa8:	1cba      	adds	r2, r7, #2
     faa:	8812      	ldrh	r2, [r2, #0]
     fac:	b2d2      	uxtb	r2, r2
     fae:	701a      	strb	r2, [r3, #0]
     fb0:	230a      	movs	r3, #10
     fb2:	18fc      	adds	r4, r7, r3
     fb4:	4b10      	ldr	r3, [pc, #64]	; (ff8 <mdb232_read_inputregs+0xc0>)
     fb6:	2106      	movs	r1, #6
     fb8:	0018      	movs	r0, r3
     fba:	f002 f92f 	bl	321c <crc16>
     fbe:	0003      	movs	r3, r0
     fc0:	8023      	strh	r3, [r4, #0]
     fc2:	68fb      	ldr	r3, [r7, #12]
     fc4:	1c5a      	adds	r2, r3, #1
     fc6:	60fa      	str	r2, [r7, #12]
     fc8:	220a      	movs	r2, #10
     fca:	18ba      	adds	r2, r7, r2
     fcc:	8812      	ldrh	r2, [r2, #0]
     fce:	b2d2      	uxtb	r2, r2
     fd0:	701a      	strb	r2, [r3, #0]
     fd2:	68fb      	ldr	r3, [r7, #12]
     fd4:	1c5a      	adds	r2, r3, #1
     fd6:	60fa      	str	r2, [r7, #12]
     fd8:	220a      	movs	r2, #10
     fda:	18ba      	adds	r2, r7, r2
     fdc:	8812      	ldrh	r2, [r2, #0]
     fde:	0a12      	lsrs	r2, r2, #8
     fe0:	b292      	uxth	r2, r2
     fe2:	b2d2      	uxtb	r2, r2
     fe4:	701a      	strb	r2, [r3, #0]
     fe6:	4b04      	ldr	r3, [pc, #16]	; (ff8 <mdb232_read_inputregs+0xc0>)
     fe8:	2108      	movs	r1, #8
     fea:	0018      	movs	r0, r3
     fec:	f7ff ff7c 	bl	ee8 <mdb232_send>
     ff0:	46c0      	nop			; (mov r8, r8)
     ff2:	46bd      	mov	sp, r7
     ff4:	b005      	add	sp, #20
     ff6:	bd90      	pop	{r4, r7, pc}
     ff8:	200008e8 	.word	0x200008e8

00000ffc <mdb232_readregs>:
     ffc:	b590      	push	{r4, r7, lr}
     ffe:	b085      	sub	sp, #20
    1000:	af00      	add	r7, sp, #0
    1002:	0004      	movs	r4, r0
    1004:	0008      	movs	r0, r1
    1006:	0011      	movs	r1, r2
    1008:	1dfb      	adds	r3, r7, #7
    100a:	1c22      	adds	r2, r4, #0
    100c:	701a      	strb	r2, [r3, #0]
    100e:	1d3b      	adds	r3, r7, #4
    1010:	1c02      	adds	r2, r0, #0
    1012:	801a      	strh	r2, [r3, #0]
    1014:	1cbb      	adds	r3, r7, #2
    1016:	1c0a      	adds	r2, r1, #0
    1018:	801a      	strh	r2, [r3, #0]
    101a:	4b28      	ldr	r3, [pc, #160]	; (10bc <mdb232_readregs+0xc0>)
    101c:	60fb      	str	r3, [r7, #12]
    101e:	68fb      	ldr	r3, [r7, #12]
    1020:	1c5a      	adds	r2, r3, #1
    1022:	60fa      	str	r2, [r7, #12]
    1024:	1dfa      	adds	r2, r7, #7
    1026:	7812      	ldrb	r2, [r2, #0]
    1028:	701a      	strb	r2, [r3, #0]
    102a:	68fb      	ldr	r3, [r7, #12]
    102c:	1c5a      	adds	r2, r3, #1
    102e:	60fa      	str	r2, [r7, #12]
    1030:	2203      	movs	r2, #3
    1032:	701a      	strb	r2, [r3, #0]
    1034:	68fb      	ldr	r3, [r7, #12]
    1036:	1c5a      	adds	r2, r3, #1
    1038:	60fa      	str	r2, [r7, #12]
    103a:	1d3a      	adds	r2, r7, #4
    103c:	8812      	ldrh	r2, [r2, #0]
    103e:	0a12      	lsrs	r2, r2, #8
    1040:	b292      	uxth	r2, r2
    1042:	b2d2      	uxtb	r2, r2
    1044:	701a      	strb	r2, [r3, #0]
    1046:	68fb      	ldr	r3, [r7, #12]
    1048:	1c5a      	adds	r2, r3, #1
    104a:	60fa      	str	r2, [r7, #12]
    104c:	1d3a      	adds	r2, r7, #4
    104e:	8812      	ldrh	r2, [r2, #0]
    1050:	b2d2      	uxtb	r2, r2
    1052:	701a      	strb	r2, [r3, #0]
    1054:	68fb      	ldr	r3, [r7, #12]
    1056:	1c5a      	adds	r2, r3, #1
    1058:	60fa      	str	r2, [r7, #12]
    105a:	1cba      	adds	r2, r7, #2
    105c:	8812      	ldrh	r2, [r2, #0]
    105e:	0a12      	lsrs	r2, r2, #8
    1060:	b292      	uxth	r2, r2
    1062:	b2d2      	uxtb	r2, r2
    1064:	701a      	strb	r2, [r3, #0]
    1066:	68fb      	ldr	r3, [r7, #12]
    1068:	1c5a      	adds	r2, r3, #1
    106a:	60fa      	str	r2, [r7, #12]
    106c:	1cba      	adds	r2, r7, #2
    106e:	8812      	ldrh	r2, [r2, #0]
    1070:	b2d2      	uxtb	r2, r2
    1072:	701a      	strb	r2, [r3, #0]
    1074:	230a      	movs	r3, #10
    1076:	18fc      	adds	r4, r7, r3
    1078:	4b10      	ldr	r3, [pc, #64]	; (10bc <mdb232_readregs+0xc0>)
    107a:	2106      	movs	r1, #6
    107c:	0018      	movs	r0, r3
    107e:	f002 f8cd 	bl	321c <crc16>
    1082:	0003      	movs	r3, r0
    1084:	8023      	strh	r3, [r4, #0]
    1086:	68fb      	ldr	r3, [r7, #12]
    1088:	1c5a      	adds	r2, r3, #1
    108a:	60fa      	str	r2, [r7, #12]
    108c:	220a      	movs	r2, #10
    108e:	18ba      	adds	r2, r7, r2
    1090:	8812      	ldrh	r2, [r2, #0]
    1092:	b2d2      	uxtb	r2, r2
    1094:	701a      	strb	r2, [r3, #0]
    1096:	68fb      	ldr	r3, [r7, #12]
    1098:	1c5a      	adds	r2, r3, #1
    109a:	60fa      	str	r2, [r7, #12]
    109c:	220a      	movs	r2, #10
    109e:	18ba      	adds	r2, r7, r2
    10a0:	8812      	ldrh	r2, [r2, #0]
    10a2:	0a12      	lsrs	r2, r2, #8
    10a4:	b292      	uxth	r2, r2
    10a6:	b2d2      	uxtb	r2, r2
    10a8:	701a      	strb	r2, [r3, #0]
    10aa:	4b04      	ldr	r3, [pc, #16]	; (10bc <mdb232_readregs+0xc0>)
    10ac:	2108      	movs	r1, #8
    10ae:	0018      	movs	r0, r3
    10b0:	f7ff ff1a 	bl	ee8 <mdb232_send>
    10b4:	46c0      	nop			; (mov r8, r8)
    10b6:	46bd      	mov	sp, r7
    10b8:	b005      	add	sp, #20
    10ba:	bd90      	pop	{r4, r7, pc}
    10bc:	200008e8 	.word	0x200008e8

000010c0 <mdb232_get_crc>:
    10c0:	b590      	push	{r4, r7, lr}
    10c2:	b083      	sub	sp, #12
    10c4:	af00      	add	r7, sp, #0
    10c6:	2006      	movs	r0, #6
    10c8:	f7ff febc 	bl	e44 <__NVIC_DisableIRQ>
    10cc:	4b09      	ldr	r3, [pc, #36]	; (10f4 <mdb232_get_crc+0x34>)
    10ce:	681a      	ldr	r2, [r3, #0]
    10d0:	1dbc      	adds	r4, r7, #6
    10d2:	4b09      	ldr	r3, [pc, #36]	; (10f8 <mdb232_get_crc+0x38>)
    10d4:	0011      	movs	r1, r2
    10d6:	0018      	movs	r0, r3
    10d8:	f002 f8a0 	bl	321c <crc16>
    10dc:	0003      	movs	r3, r0
    10de:	8023      	strh	r3, [r4, #0]
    10e0:	2006      	movs	r0, #6
    10e2:	f7ff fe95 	bl	e10 <__NVIC_EnableIRQ>
    10e6:	1dbb      	adds	r3, r7, #6
    10e8:	881b      	ldrh	r3, [r3, #0]
    10ea:	0018      	movs	r0, r3
    10ec:	46bd      	mov	sp, r7
    10ee:	b003      	add	sp, #12
    10f0:	bd90      	pop	{r4, r7, pc}
    10f2:	46c0      	nop			; (mov r8, r8)
    10f4:	200008f8 	.word	0x200008f8
    10f8:	200008d8 	.word	0x200008d8

000010fc <mdb232_bikm_get_torque>:
    10fc:	b580      	push	{r7, lr}
    10fe:	b086      	sub	sp, #24
    1100:	af00      	add	r7, sp, #0
    1102:	6078      	str	r0, [r7, #4]
    1104:	4b2b      	ldr	r3, [pc, #172]	; (11b4 <mdb232_bikm_get_torque+0xb8>)
    1106:	617b      	str	r3, [r7, #20]
    1108:	687b      	ldr	r3, [r7, #4]
    110a:	2201      	movs	r2, #1
    110c:	4252      	negs	r2, r2
    110e:	601a      	str	r2, [r3, #0]
    1110:	2006      	movs	r0, #6
    1112:	f7ff fe97 	bl	e44 <__NVIC_DisableIRQ>
    1116:	4b28      	ldr	r3, [pc, #160]	; (11b8 <mdb232_bikm_get_torque+0xbc>)
    1118:	681b      	ldr	r3, [r3, #0]
    111a:	2b00      	cmp	r3, #0
    111c:	d041      	beq.n	11a2 <mdb232_bikm_get_torque+0xa6>
    111e:	4b27      	ldr	r3, [pc, #156]	; (11bc <mdb232_bikm_get_torque+0xc0>)
    1120:	781b      	ldrb	r3, [r3, #0]
    1122:	001a      	movs	r2, r3
    1124:	687b      	ldr	r3, [r7, #4]
    1126:	601a      	str	r2, [r3, #0]
    1128:	697b      	ldr	r3, [r7, #20]
    112a:	1c5a      	adds	r2, r3, #1
    112c:	617a      	str	r2, [r7, #20]
    112e:	781b      	ldrb	r3, [r3, #0]
    1130:	041b      	lsls	r3, r3, #16
    1132:	613b      	str	r3, [r7, #16]
    1134:	697b      	ldr	r3, [r7, #20]
    1136:	1c5a      	adds	r2, r3, #1
    1138:	617a      	str	r2, [r7, #20]
    113a:	781b      	ldrb	r3, [r3, #0]
    113c:	061b      	lsls	r3, r3, #24
    113e:	001a      	movs	r2, r3
    1140:	693b      	ldr	r3, [r7, #16]
    1142:	4313      	orrs	r3, r2
    1144:	613b      	str	r3, [r7, #16]
    1146:	697b      	ldr	r3, [r7, #20]
    1148:	1c5a      	adds	r2, r3, #1
    114a:	617a      	str	r2, [r7, #20]
    114c:	781b      	ldrb	r3, [r3, #0]
    114e:	001a      	movs	r2, r3
    1150:	693b      	ldr	r3, [r7, #16]
    1152:	4313      	orrs	r3, r2
    1154:	613b      	str	r3, [r7, #16]
    1156:	697b      	ldr	r3, [r7, #20]
    1158:	781b      	ldrb	r3, [r3, #0]
    115a:	021b      	lsls	r3, r3, #8
    115c:	001a      	movs	r2, r3
    115e:	693b      	ldr	r3, [r7, #16]
    1160:	4313      	orrs	r3, r2
    1162:	613b      	str	r3, [r7, #16]
    1164:	2006      	movs	r0, #6
    1166:	f7ff fe53 	bl	e10 <__NVIC_EnableIRQ>
    116a:	693b      	ldr	r3, [r7, #16]
    116c:	0ddb      	lsrs	r3, r3, #23
    116e:	22ff      	movs	r2, #255	; 0xff
    1170:	4013      	ands	r3, r2
    1172:	3b7f      	subs	r3, #127	; 0x7f
    1174:	60fb      	str	r3, [r7, #12]
    1176:	693b      	ldr	r3, [r7, #16]
    1178:	025b      	lsls	r3, r3, #9
    117a:	0a5b      	lsrs	r3, r3, #9
    117c:	2280      	movs	r2, #128	; 0x80
    117e:	0412      	lsls	r2, r2, #16
    1180:	4313      	orrs	r3, r2
    1182:	60bb      	str	r3, [r7, #8]
    1184:	68fb      	ldr	r3, [r7, #12]
    1186:	220e      	movs	r2, #14
    1188:	1ad3      	subs	r3, r2, r3
    118a:	2201      	movs	r2, #1
    118c:	409a      	lsls	r2, r3
    118e:	0013      	movs	r3, r2
    1190:	001a      	movs	r2, r3
    1192:	68bb      	ldr	r3, [r7, #8]
    1194:	18d2      	adds	r2, r2, r3
    1196:	68fb      	ldr	r3, [r7, #12]
    1198:	210f      	movs	r1, #15
    119a:	1acb      	subs	r3, r1, r3
    119c:	40da      	lsrs	r2, r3
    119e:	0013      	movs	r3, r2
    11a0:	e003      	b.n	11aa <mdb232_bikm_get_torque+0xae>
    11a2:	2006      	movs	r0, #6
    11a4:	f7ff fe34 	bl	e10 <__NVIC_EnableIRQ>
    11a8:	2300      	movs	r3, #0
    11aa:	0018      	movs	r0, r3
    11ac:	46bd      	mov	sp, r7
    11ae:	b006      	add	sp, #24
    11b0:	bd80      	pop	{r7, pc}
    11b2:	46c0      	nop			; (mov r8, r8)
    11b4:	200008db 	.word	0x200008db
    11b8:	200008f8 	.word	0x200008f8
    11bc:	200008d8 	.word	0x200008d8

000011c0 <UART1_Handler>:
    11c0:	b580      	push	{r7, lr}
    11c2:	b082      	sub	sp, #8
    11c4:	af00      	add	r7, sp, #0
    11c6:	4b16      	ldr	r3, [pc, #88]	; (1220 <UART1_Handler+0x60>)
    11c8:	2200      	movs	r2, #0
    11ca:	601a      	str	r2, [r3, #0]
    11cc:	4b15      	ldr	r3, [pc, #84]	; (1224 <UART1_Handler+0x64>)
    11ce:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    11d0:	2240      	movs	r2, #64	; 0x40
    11d2:	4013      	ands	r3, r2
    11d4:	d016      	beq.n	1204 <UART1_Handler+0x44>
    11d6:	4b14      	ldr	r3, [pc, #80]	; (1228 <UART1_Handler+0x68>)
    11d8:	603b      	str	r3, [r7, #0]
    11da:	2300      	movs	r3, #0
    11dc:	607b      	str	r3, [r7, #4]
    11de:	e009      	b.n	11f4 <UART1_Handler+0x34>
    11e0:	683b      	ldr	r3, [r7, #0]
    11e2:	1c5a      	adds	r2, r3, #1
    11e4:	603a      	str	r2, [r7, #0]
    11e6:	4a0f      	ldr	r2, [pc, #60]	; (1224 <UART1_Handler+0x64>)
    11e8:	6812      	ldr	r2, [r2, #0]
    11ea:	b2d2      	uxtb	r2, r2
    11ec:	701a      	strb	r2, [r3, #0]
    11ee:	687b      	ldr	r3, [r7, #4]
    11f0:	3301      	adds	r3, #1
    11f2:	607b      	str	r3, [r7, #4]
    11f4:	687b      	ldr	r3, [r7, #4]
    11f6:	2b0f      	cmp	r3, #15
    11f8:	dc04      	bgt.n	1204 <UART1_Handler+0x44>
    11fa:	4b0a      	ldr	r3, [pc, #40]	; (1224 <UART1_Handler+0x64>)
    11fc:	699b      	ldr	r3, [r3, #24]
    11fe:	2210      	movs	r2, #16
    1200:	4013      	ands	r3, r2
    1202:	d0ed      	beq.n	11e0 <UART1_Handler+0x20>
    1204:	4b06      	ldr	r3, [pc, #24]	; (1220 <UART1_Handler+0x60>)
    1206:	687a      	ldr	r2, [r7, #4]
    1208:	601a      	str	r2, [r3, #0]
    120a:	4b08      	ldr	r3, [pc, #32]	; (122c <UART1_Handler+0x6c>)
    120c:	681b      	ldr	r3, [r3, #0]
    120e:	2102      	movs	r1, #2
    1210:	0018      	movs	r0, r3
    1212:	f005 fb41 	bl	6898 <osSignalSet>
    1216:	46c0      	nop			; (mov r8, r8)
    1218:	46bd      	mov	sp, r7
    121a:	b002      	add	sp, #8
    121c:	bd80      	pop	{r7, pc}
    121e:	46c0      	nop			; (mov r8, r8)
    1220:	200008f8 	.word	0x200008f8
    1224:	40030000 	.word	0x40030000
    1228:	200008d8 	.word	0x200008d8
    122c:	20000860 	.word	0x20000860

00001230 <xputc>:
    1230:	b580      	push	{r7, lr}
    1232:	b082      	sub	sp, #8
    1234:	af00      	add	r7, sp, #0
    1236:	0002      	movs	r2, r0
    1238:	1dfb      	adds	r3, r7, #7
    123a:	701a      	strb	r2, [r3, #0]
    123c:	1dfb      	adds	r3, r7, #7
    123e:	781b      	ldrb	r3, [r3, #0]
    1240:	2b0a      	cmp	r3, #10
    1242:	d102      	bne.n	124a <xputc+0x1a>
    1244:	200d      	movs	r0, #13
    1246:	f7ff fff3 	bl	1230 <xputc>
    124a:	4b0d      	ldr	r3, [pc, #52]	; (1280 <xputc+0x50>)
    124c:	681b      	ldr	r3, [r3, #0]
    124e:	2b00      	cmp	r3, #0
    1250:	d008      	beq.n	1264 <xputc+0x34>
    1252:	4b0b      	ldr	r3, [pc, #44]	; (1280 <xputc+0x50>)
    1254:	681b      	ldr	r3, [r3, #0]
    1256:	1c59      	adds	r1, r3, #1
    1258:	4a09      	ldr	r2, [pc, #36]	; (1280 <xputc+0x50>)
    125a:	6011      	str	r1, [r2, #0]
    125c:	1dfa      	adds	r2, r7, #7
    125e:	7812      	ldrb	r2, [r2, #0]
    1260:	701a      	strb	r2, [r3, #0]
    1262:	e009      	b.n	1278 <xputc+0x48>
    1264:	4b07      	ldr	r3, [pc, #28]	; (1284 <xputc+0x54>)
    1266:	681b      	ldr	r3, [r3, #0]
    1268:	2b00      	cmp	r3, #0
    126a:	d005      	beq.n	1278 <xputc+0x48>
    126c:	4b05      	ldr	r3, [pc, #20]	; (1284 <xputc+0x54>)
    126e:	681b      	ldr	r3, [r3, #0]
    1270:	1dfa      	adds	r2, r7, #7
    1272:	7812      	ldrb	r2, [r2, #0]
    1274:	0010      	movs	r0, r2
    1276:	4798      	blx	r3
    1278:	46bd      	mov	sp, r7
    127a:	b002      	add	sp, #8
    127c:	bd80      	pop	{r7, pc}
    127e:	46c0      	nop			; (mov r8, r8)
    1280:	20000900 	.word	0x20000900
    1284:	200008fc 	.word	0x200008fc

00001288 <xputs>:
    1288:	b580      	push	{r7, lr}
    128a:	b082      	sub	sp, #8
    128c:	af00      	add	r7, sp, #0
    128e:	6078      	str	r0, [r7, #4]
    1290:	e006      	b.n	12a0 <xputs+0x18>
    1292:	687b      	ldr	r3, [r7, #4]
    1294:	1c5a      	adds	r2, r3, #1
    1296:	607a      	str	r2, [r7, #4]
    1298:	781b      	ldrb	r3, [r3, #0]
    129a:	0018      	movs	r0, r3
    129c:	f7ff ffc8 	bl	1230 <xputc>
    12a0:	687b      	ldr	r3, [r7, #4]
    12a2:	781b      	ldrb	r3, [r3, #0]
    12a4:	2b00      	cmp	r3, #0
    12a6:	d1f4      	bne.n	1292 <xputs+0xa>
    12a8:	46c0      	nop			; (mov r8, r8)
    12aa:	46bd      	mov	sp, r7
    12ac:	b002      	add	sp, #8
    12ae:	bd80      	pop	{r7, pc}

000012b0 <xfputs>:
    12b0:	b580      	push	{r7, lr}
    12b2:	b084      	sub	sp, #16
    12b4:	af00      	add	r7, sp, #0
    12b6:	6078      	str	r0, [r7, #4]
    12b8:	6039      	str	r1, [r7, #0]
    12ba:	4b0c      	ldr	r3, [pc, #48]	; (12ec <xfputs+0x3c>)
    12bc:	681b      	ldr	r3, [r3, #0]
    12be:	60fb      	str	r3, [r7, #12]
    12c0:	4b0a      	ldr	r3, [pc, #40]	; (12ec <xfputs+0x3c>)
    12c2:	687a      	ldr	r2, [r7, #4]
    12c4:	601a      	str	r2, [r3, #0]
    12c6:	e006      	b.n	12d6 <xfputs+0x26>
    12c8:	683b      	ldr	r3, [r7, #0]
    12ca:	1c5a      	adds	r2, r3, #1
    12cc:	603a      	str	r2, [r7, #0]
    12ce:	781b      	ldrb	r3, [r3, #0]
    12d0:	0018      	movs	r0, r3
    12d2:	f7ff ffad 	bl	1230 <xputc>
    12d6:	683b      	ldr	r3, [r7, #0]
    12d8:	781b      	ldrb	r3, [r3, #0]
    12da:	2b00      	cmp	r3, #0
    12dc:	d1f4      	bne.n	12c8 <xfputs+0x18>
    12de:	4b03      	ldr	r3, [pc, #12]	; (12ec <xfputs+0x3c>)
    12e0:	68fa      	ldr	r2, [r7, #12]
    12e2:	601a      	str	r2, [r3, #0]
    12e4:	46c0      	nop			; (mov r8, r8)
    12e6:	46bd      	mov	sp, r7
    12e8:	b004      	add	sp, #16
    12ea:	bd80      	pop	{r7, pc}
    12ec:	200008fc 	.word	0x200008fc

000012f0 <xvprintf>:
    12f0:	b580      	push	{r7, lr}
    12f2:	b08e      	sub	sp, #56	; 0x38
    12f4:	af00      	add	r7, sp, #0
    12f6:	6078      	str	r0, [r7, #4]
    12f8:	6039      	str	r1, [r7, #0]
    12fa:	687b      	ldr	r3, [r7, #4]
    12fc:	1c5a      	adds	r2, r3, #1
    12fe:	607a      	str	r2, [r7, #4]
    1300:	221f      	movs	r2, #31
    1302:	18ba      	adds	r2, r7, r2
    1304:	781b      	ldrb	r3, [r3, #0]
    1306:	7013      	strb	r3, [r2, #0]
    1308:	231f      	movs	r3, #31
    130a:	18fb      	adds	r3, r7, r3
    130c:	781b      	ldrb	r3, [r3, #0]
    130e:	2b00      	cmp	r3, #0
    1310:	d100      	bne.n	1314 <xvprintf+0x24>
    1312:	e172      	b.n	15fa <xvprintf+0x30a>
    1314:	231f      	movs	r3, #31
    1316:	18fb      	adds	r3, r7, r3
    1318:	781b      	ldrb	r3, [r3, #0]
    131a:	2b25      	cmp	r3, #37	; 0x25
    131c:	d006      	beq.n	132c <xvprintf+0x3c>
    131e:	231f      	movs	r3, #31
    1320:	18fb      	adds	r3, r7, r3
    1322:	781b      	ldrb	r3, [r3, #0]
    1324:	0018      	movs	r0, r3
    1326:	f7ff ff83 	bl	1230 <xputc>
    132a:	e165      	b.n	15f8 <xvprintf+0x308>
    132c:	2300      	movs	r3, #0
    132e:	627b      	str	r3, [r7, #36]	; 0x24
    1330:	687b      	ldr	r3, [r7, #4]
    1332:	1c5a      	adds	r2, r3, #1
    1334:	607a      	str	r2, [r7, #4]
    1336:	221f      	movs	r2, #31
    1338:	18ba      	adds	r2, r7, r2
    133a:	781b      	ldrb	r3, [r3, #0]
    133c:	7013      	strb	r3, [r2, #0]
    133e:	231f      	movs	r3, #31
    1340:	18fb      	adds	r3, r7, r3
    1342:	781b      	ldrb	r3, [r3, #0]
    1344:	2b30      	cmp	r3, #48	; 0x30
    1346:	d109      	bne.n	135c <xvprintf+0x6c>
    1348:	2301      	movs	r3, #1
    134a:	627b      	str	r3, [r7, #36]	; 0x24
    134c:	687b      	ldr	r3, [r7, #4]
    134e:	1c5a      	adds	r2, r3, #1
    1350:	607a      	str	r2, [r7, #4]
    1352:	221f      	movs	r2, #31
    1354:	18ba      	adds	r2, r7, r2
    1356:	781b      	ldrb	r3, [r3, #0]
    1358:	7013      	strb	r3, [r2, #0]
    135a:	e00d      	b.n	1378 <xvprintf+0x88>
    135c:	231f      	movs	r3, #31
    135e:	18fb      	adds	r3, r7, r3
    1360:	781b      	ldrb	r3, [r3, #0]
    1362:	2b2d      	cmp	r3, #45	; 0x2d
    1364:	d108      	bne.n	1378 <xvprintf+0x88>
    1366:	2302      	movs	r3, #2
    1368:	627b      	str	r3, [r7, #36]	; 0x24
    136a:	687b      	ldr	r3, [r7, #4]
    136c:	1c5a      	adds	r2, r3, #1
    136e:	607a      	str	r2, [r7, #4]
    1370:	221f      	movs	r2, #31
    1372:	18ba      	adds	r2, r7, r2
    1374:	781b      	ldrb	r3, [r3, #0]
    1376:	7013      	strb	r3, [r2, #0]
    1378:	2300      	movs	r3, #0
    137a:	62bb      	str	r3, [r7, #40]	; 0x28
    137c:	e012      	b.n	13a4 <xvprintf+0xb4>
    137e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1380:	0013      	movs	r3, r2
    1382:	009b      	lsls	r3, r3, #2
    1384:	189b      	adds	r3, r3, r2
    1386:	005b      	lsls	r3, r3, #1
    1388:	001a      	movs	r2, r3
    138a:	231f      	movs	r3, #31
    138c:	18fb      	adds	r3, r7, r3
    138e:	781b      	ldrb	r3, [r3, #0]
    1390:	18d3      	adds	r3, r2, r3
    1392:	3b30      	subs	r3, #48	; 0x30
    1394:	62bb      	str	r3, [r7, #40]	; 0x28
    1396:	687b      	ldr	r3, [r7, #4]
    1398:	1c5a      	adds	r2, r3, #1
    139a:	607a      	str	r2, [r7, #4]
    139c:	221f      	movs	r2, #31
    139e:	18ba      	adds	r2, r7, r2
    13a0:	781b      	ldrb	r3, [r3, #0]
    13a2:	7013      	strb	r3, [r2, #0]
    13a4:	231f      	movs	r3, #31
    13a6:	18fb      	adds	r3, r7, r3
    13a8:	781b      	ldrb	r3, [r3, #0]
    13aa:	2b2f      	cmp	r3, #47	; 0x2f
    13ac:	d904      	bls.n	13b8 <xvprintf+0xc8>
    13ae:	231f      	movs	r3, #31
    13b0:	18fb      	adds	r3, r7, r3
    13b2:	781b      	ldrb	r3, [r3, #0]
    13b4:	2b39      	cmp	r3, #57	; 0x39
    13b6:	d9e2      	bls.n	137e <xvprintf+0x8e>
    13b8:	231f      	movs	r3, #31
    13ba:	18fb      	adds	r3, r7, r3
    13bc:	781b      	ldrb	r3, [r3, #0]
    13be:	2b6c      	cmp	r3, #108	; 0x6c
    13c0:	d004      	beq.n	13cc <xvprintf+0xdc>
    13c2:	231f      	movs	r3, #31
    13c4:	18fb      	adds	r3, r7, r3
    13c6:	781b      	ldrb	r3, [r3, #0]
    13c8:	2b4c      	cmp	r3, #76	; 0x4c
    13ca:	d10a      	bne.n	13e2 <xvprintf+0xf2>
    13cc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13ce:	2204      	movs	r2, #4
    13d0:	4313      	orrs	r3, r2
    13d2:	627b      	str	r3, [r7, #36]	; 0x24
    13d4:	687b      	ldr	r3, [r7, #4]
    13d6:	1c5a      	adds	r2, r3, #1
    13d8:	607a      	str	r2, [r7, #4]
    13da:	221f      	movs	r2, #31
    13dc:	18ba      	adds	r2, r7, r2
    13de:	781b      	ldrb	r3, [r3, #0]
    13e0:	7013      	strb	r3, [r2, #0]
    13e2:	231f      	movs	r3, #31
    13e4:	18fb      	adds	r3, r7, r3
    13e6:	781b      	ldrb	r3, [r3, #0]
    13e8:	2b00      	cmp	r3, #0
    13ea:	d100      	bne.n	13ee <xvprintf+0xfe>
    13ec:	e107      	b.n	15fe <xvprintf+0x30e>
    13ee:	231e      	movs	r3, #30
    13f0:	18fb      	adds	r3, r7, r3
    13f2:	221f      	movs	r2, #31
    13f4:	18ba      	adds	r2, r7, r2
    13f6:	7812      	ldrb	r2, [r2, #0]
    13f8:	701a      	strb	r2, [r3, #0]
    13fa:	231e      	movs	r3, #30
    13fc:	18fb      	adds	r3, r7, r3
    13fe:	781b      	ldrb	r3, [r3, #0]
    1400:	2b60      	cmp	r3, #96	; 0x60
    1402:	d906      	bls.n	1412 <xvprintf+0x122>
    1404:	231e      	movs	r3, #30
    1406:	18fb      	adds	r3, r7, r3
    1408:	221e      	movs	r2, #30
    140a:	18ba      	adds	r2, r7, r2
    140c:	7812      	ldrb	r2, [r2, #0]
    140e:	3a20      	subs	r2, #32
    1410:	701a      	strb	r2, [r3, #0]
    1412:	231e      	movs	r3, #30
    1414:	18fb      	adds	r3, r7, r3
    1416:	781b      	ldrb	r3, [r3, #0]
    1418:	3b42      	subs	r3, #66	; 0x42
    141a:	2b16      	cmp	r3, #22
    141c:	d847      	bhi.n	14ae <xvprintf+0x1be>
    141e:	009a      	lsls	r2, r3, #2
    1420:	4b79      	ldr	r3, [pc, #484]	; (1608 <xvprintf+0x318>)
    1422:	18d3      	adds	r3, r2, r3
    1424:	681b      	ldr	r3, [r3, #0]
    1426:	469f      	mov	pc, r3
    1428:	683b      	ldr	r3, [r7, #0]
    142a:	1d1a      	adds	r2, r3, #4
    142c:	603a      	str	r2, [r7, #0]
    142e:	681b      	ldr	r3, [r3, #0]
    1430:	61bb      	str	r3, [r7, #24]
    1432:	2300      	movs	r3, #0
    1434:	62fb      	str	r3, [r7, #44]	; 0x2c
    1436:	e002      	b.n	143e <xvprintf+0x14e>
    1438:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    143a:	3301      	adds	r3, #1
    143c:	62fb      	str	r3, [r7, #44]	; 0x2c
    143e:	69ba      	ldr	r2, [r7, #24]
    1440:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1442:	18d3      	adds	r3, r2, r3
    1444:	781b      	ldrb	r3, [r3, #0]
    1446:	2b00      	cmp	r3, #0
    1448:	d1f6      	bne.n	1438 <xvprintf+0x148>
    144a:	e002      	b.n	1452 <xvprintf+0x162>
    144c:	2020      	movs	r0, #32
    144e:	f7ff feef 	bl	1230 <xputc>
    1452:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1454:	2202      	movs	r2, #2
    1456:	4013      	ands	r3, r2
    1458:	d105      	bne.n	1466 <xvprintf+0x176>
    145a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    145c:	1c5a      	adds	r2, r3, #1
    145e:	62fa      	str	r2, [r7, #44]	; 0x2c
    1460:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1462:	4293      	cmp	r3, r2
    1464:	d3f2      	bcc.n	144c <xvprintf+0x15c>
    1466:	69bb      	ldr	r3, [r7, #24]
    1468:	0018      	movs	r0, r3
    146a:	f7ff ff0d 	bl	1288 <xputs>
    146e:	e002      	b.n	1476 <xvprintf+0x186>
    1470:	2020      	movs	r0, #32
    1472:	f7ff fedd 	bl	1230 <xputc>
    1476:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1478:	1c5a      	adds	r2, r3, #1
    147a:	62fa      	str	r2, [r7, #44]	; 0x2c
    147c:	6aba      	ldr	r2, [r7, #40]	; 0x28
    147e:	4293      	cmp	r3, r2
    1480:	d3f6      	bcc.n	1470 <xvprintf+0x180>
    1482:	e0b9      	b.n	15f8 <xvprintf+0x308>
    1484:	683b      	ldr	r3, [r7, #0]
    1486:	1d1a      	adds	r2, r3, #4
    1488:	603a      	str	r2, [r7, #0]
    148a:	681b      	ldr	r3, [r3, #0]
    148c:	b2db      	uxtb	r3, r3
    148e:	0018      	movs	r0, r3
    1490:	f7ff fece 	bl	1230 <xputc>
    1494:	e0b0      	b.n	15f8 <xvprintf+0x308>
    1496:	2302      	movs	r3, #2
    1498:	637b      	str	r3, [r7, #52]	; 0x34
    149a:	e00f      	b.n	14bc <xvprintf+0x1cc>
    149c:	2308      	movs	r3, #8
    149e:	637b      	str	r3, [r7, #52]	; 0x34
    14a0:	e00c      	b.n	14bc <xvprintf+0x1cc>
    14a2:	230a      	movs	r3, #10
    14a4:	637b      	str	r3, [r7, #52]	; 0x34
    14a6:	e009      	b.n	14bc <xvprintf+0x1cc>
    14a8:	2310      	movs	r3, #16
    14aa:	637b      	str	r3, [r7, #52]	; 0x34
    14ac:	e006      	b.n	14bc <xvprintf+0x1cc>
    14ae:	231f      	movs	r3, #31
    14b0:	18fb      	adds	r3, r7, r3
    14b2:	781b      	ldrb	r3, [r3, #0]
    14b4:	0018      	movs	r0, r3
    14b6:	f7ff febb 	bl	1230 <xputc>
    14ba:	e09d      	b.n	15f8 <xvprintf+0x308>
    14bc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    14be:	2204      	movs	r2, #4
    14c0:	4013      	ands	r3, r2
    14c2:	d004      	beq.n	14ce <xvprintf+0x1de>
    14c4:	683b      	ldr	r3, [r7, #0]
    14c6:	1d1a      	adds	r2, r3, #4
    14c8:	603a      	str	r2, [r7, #0]
    14ca:	681b      	ldr	r3, [r3, #0]
    14cc:	e00d      	b.n	14ea <xvprintf+0x1fa>
    14ce:	231e      	movs	r3, #30
    14d0:	18fb      	adds	r3, r7, r3
    14d2:	781b      	ldrb	r3, [r3, #0]
    14d4:	2b44      	cmp	r3, #68	; 0x44
    14d6:	d104      	bne.n	14e2 <xvprintf+0x1f2>
    14d8:	683b      	ldr	r3, [r7, #0]
    14da:	1d1a      	adds	r2, r3, #4
    14dc:	603a      	str	r2, [r7, #0]
    14de:	681b      	ldr	r3, [r3, #0]
    14e0:	e003      	b.n	14ea <xvprintf+0x1fa>
    14e2:	683b      	ldr	r3, [r7, #0]
    14e4:	1d1a      	adds	r2, r3, #4
    14e6:	603a      	str	r2, [r7, #0]
    14e8:	681b      	ldr	r3, [r3, #0]
    14ea:	623b      	str	r3, [r7, #32]
    14ec:	231e      	movs	r3, #30
    14ee:	18fb      	adds	r3, r7, r3
    14f0:	781b      	ldrb	r3, [r3, #0]
    14f2:	2b44      	cmp	r3, #68	; 0x44
    14f4:	d109      	bne.n	150a <xvprintf+0x21a>
    14f6:	6a3b      	ldr	r3, [r7, #32]
    14f8:	2b00      	cmp	r3, #0
    14fa:	da06      	bge.n	150a <xvprintf+0x21a>
    14fc:	6a3b      	ldr	r3, [r7, #32]
    14fe:	425b      	negs	r3, r3
    1500:	623b      	str	r3, [r7, #32]
    1502:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1504:	2208      	movs	r2, #8
    1506:	4313      	orrs	r3, r2
    1508:	627b      	str	r3, [r7, #36]	; 0x24
    150a:	2300      	movs	r3, #0
    150c:	633b      	str	r3, [r7, #48]	; 0x30
    150e:	6a3b      	ldr	r3, [r7, #32]
    1510:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1512:	0018      	movs	r0, r3
    1514:	f003 fae4 	bl	4ae0 <__aeabi_uidivmod>
    1518:	000b      	movs	r3, r1
    151a:	001a      	movs	r2, r3
    151c:	231e      	movs	r3, #30
    151e:	18fb      	adds	r3, r7, r3
    1520:	701a      	strb	r2, [r3, #0]
    1522:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1524:	6a38      	ldr	r0, [r7, #32]
    1526:	f003 fa55 	bl	49d4 <__aeabi_uidiv>
    152a:	0003      	movs	r3, r0
    152c:	623b      	str	r3, [r7, #32]
    152e:	231e      	movs	r3, #30
    1530:	18fb      	adds	r3, r7, r3
    1532:	781b      	ldrb	r3, [r3, #0]
    1534:	2b09      	cmp	r3, #9
    1536:	d90e      	bls.n	1556 <xvprintf+0x266>
    1538:	231f      	movs	r3, #31
    153a:	18fb      	adds	r3, r7, r3
    153c:	781b      	ldrb	r3, [r3, #0]
    153e:	2b78      	cmp	r3, #120	; 0x78
    1540:	d101      	bne.n	1546 <xvprintf+0x256>
    1542:	2327      	movs	r3, #39	; 0x27
    1544:	e000      	b.n	1548 <xvprintf+0x258>
    1546:	2307      	movs	r3, #7
    1548:	221e      	movs	r2, #30
    154a:	18ba      	adds	r2, r7, r2
    154c:	211e      	movs	r1, #30
    154e:	1879      	adds	r1, r7, r1
    1550:	7809      	ldrb	r1, [r1, #0]
    1552:	185b      	adds	r3, r3, r1
    1554:	7013      	strb	r3, [r2, #0]
    1556:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1558:	1c5a      	adds	r2, r3, #1
    155a:	633a      	str	r2, [r7, #48]	; 0x30
    155c:	221e      	movs	r2, #30
    155e:	18ba      	adds	r2, r7, r2
    1560:	7812      	ldrb	r2, [r2, #0]
    1562:	3230      	adds	r2, #48	; 0x30
    1564:	b2d1      	uxtb	r1, r2
    1566:	2208      	movs	r2, #8
    1568:	18ba      	adds	r2, r7, r2
    156a:	54d1      	strb	r1, [r2, r3]
    156c:	6a3b      	ldr	r3, [r7, #32]
    156e:	2b00      	cmp	r3, #0
    1570:	d002      	beq.n	1578 <xvprintf+0x288>
    1572:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1574:	2b0f      	cmp	r3, #15
    1576:	d9ca      	bls.n	150e <xvprintf+0x21e>
    1578:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    157a:	2208      	movs	r2, #8
    157c:	4013      	ands	r3, r2
    157e:	d006      	beq.n	158e <xvprintf+0x29e>
    1580:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1582:	1c5a      	adds	r2, r3, #1
    1584:	633a      	str	r2, [r7, #48]	; 0x30
    1586:	2208      	movs	r2, #8
    1588:	18ba      	adds	r2, r7, r2
    158a:	212d      	movs	r1, #45	; 0x2d
    158c:	54d1      	strb	r1, [r2, r3]
    158e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1590:	62fb      	str	r3, [r7, #44]	; 0x2c
    1592:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1594:	2201      	movs	r2, #1
    1596:	4013      	ands	r3, r2
    1598:	d001      	beq.n	159e <xvprintf+0x2ae>
    159a:	2230      	movs	r2, #48	; 0x30
    159c:	e000      	b.n	15a0 <xvprintf+0x2b0>
    159e:	2220      	movs	r2, #32
    15a0:	231e      	movs	r3, #30
    15a2:	18fb      	adds	r3, r7, r3
    15a4:	701a      	strb	r2, [r3, #0]
    15a6:	e005      	b.n	15b4 <xvprintf+0x2c4>
    15a8:	231e      	movs	r3, #30
    15aa:	18fb      	adds	r3, r7, r3
    15ac:	781b      	ldrb	r3, [r3, #0]
    15ae:	0018      	movs	r0, r3
    15b0:	f7ff fe3e 	bl	1230 <xputc>
    15b4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    15b6:	2202      	movs	r2, #2
    15b8:	4013      	ands	r3, r2
    15ba:	d105      	bne.n	15c8 <xvprintf+0x2d8>
    15bc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    15be:	1c5a      	adds	r2, r3, #1
    15c0:	62fa      	str	r2, [r7, #44]	; 0x2c
    15c2:	6aba      	ldr	r2, [r7, #40]	; 0x28
    15c4:	4293      	cmp	r3, r2
    15c6:	d3ef      	bcc.n	15a8 <xvprintf+0x2b8>
    15c8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15ca:	3b01      	subs	r3, #1
    15cc:	633b      	str	r3, [r7, #48]	; 0x30
    15ce:	2308      	movs	r3, #8
    15d0:	18fa      	adds	r2, r7, r3
    15d2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15d4:	18d3      	adds	r3, r2, r3
    15d6:	781b      	ldrb	r3, [r3, #0]
    15d8:	0018      	movs	r0, r3
    15da:	f7ff fe29 	bl	1230 <xputc>
    15de:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15e0:	2b00      	cmp	r3, #0
    15e2:	d1f1      	bne.n	15c8 <xvprintf+0x2d8>
    15e4:	e002      	b.n	15ec <xvprintf+0x2fc>
    15e6:	2020      	movs	r0, #32
    15e8:	f7ff fe22 	bl	1230 <xputc>
    15ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    15ee:	1c5a      	adds	r2, r3, #1
    15f0:	62fa      	str	r2, [r7, #44]	; 0x2c
    15f2:	6aba      	ldr	r2, [r7, #40]	; 0x28
    15f4:	4293      	cmp	r3, r2
    15f6:	d3f6      	bcc.n	15e6 <xvprintf+0x2f6>
    15f8:	e67f      	b.n	12fa <xvprintf+0xa>
    15fa:	46c0      	nop			; (mov r8, r8)
    15fc:	e000      	b.n	1600 <xvprintf+0x310>
    15fe:	46c0      	nop			; (mov r8, r8)
    1600:	46c0      	nop			; (mov r8, r8)
    1602:	46bd      	mov	sp, r7
    1604:	b00e      	add	sp, #56	; 0x38
    1606:	bd80      	pop	{r7, pc}
    1608:	00008bc8 	.word	0x00008bc8

0000160c <xprintf>:
    160c:	b40f      	push	{r0, r1, r2, r3}
    160e:	b580      	push	{r7, lr}
    1610:	b082      	sub	sp, #8
    1612:	af00      	add	r7, sp, #0
    1614:	2314      	movs	r3, #20
    1616:	18fb      	adds	r3, r7, r3
    1618:	607b      	str	r3, [r7, #4]
    161a:	687a      	ldr	r2, [r7, #4]
    161c:	693b      	ldr	r3, [r7, #16]
    161e:	0011      	movs	r1, r2
    1620:	0018      	movs	r0, r3
    1622:	f7ff fe65 	bl	12f0 <xvprintf>
    1626:	46c0      	nop			; (mov r8, r8)
    1628:	46bd      	mov	sp, r7
    162a:	b002      	add	sp, #8
    162c:	bc80      	pop	{r7}
    162e:	bc08      	pop	{r3}
    1630:	b004      	add	sp, #16
    1632:	4718      	bx	r3

00001634 <xsprintf>:
    1634:	b40e      	push	{r1, r2, r3}
    1636:	b580      	push	{r7, lr}
    1638:	b085      	sub	sp, #20
    163a:	af00      	add	r7, sp, #0
    163c:	6078      	str	r0, [r7, #4]
    163e:	4b0d      	ldr	r3, [pc, #52]	; (1674 <xsprintf+0x40>)
    1640:	687a      	ldr	r2, [r7, #4]
    1642:	601a      	str	r2, [r3, #0]
    1644:	2320      	movs	r3, #32
    1646:	18fb      	adds	r3, r7, r3
    1648:	60fb      	str	r3, [r7, #12]
    164a:	68fa      	ldr	r2, [r7, #12]
    164c:	69fb      	ldr	r3, [r7, #28]
    164e:	0011      	movs	r1, r2
    1650:	0018      	movs	r0, r3
    1652:	f7ff fe4d 	bl	12f0 <xvprintf>
    1656:	4b07      	ldr	r3, [pc, #28]	; (1674 <xsprintf+0x40>)
    1658:	681b      	ldr	r3, [r3, #0]
    165a:	2200      	movs	r2, #0
    165c:	701a      	strb	r2, [r3, #0]
    165e:	4b05      	ldr	r3, [pc, #20]	; (1674 <xsprintf+0x40>)
    1660:	2200      	movs	r2, #0
    1662:	601a      	str	r2, [r3, #0]
    1664:	46c0      	nop			; (mov r8, r8)
    1666:	46bd      	mov	sp, r7
    1668:	b005      	add	sp, #20
    166a:	bc80      	pop	{r7}
    166c:	bc08      	pop	{r3}
    166e:	b003      	add	sp, #12
    1670:	4718      	bx	r3
    1672:	46c0      	nop			; (mov r8, r8)
    1674:	20000900 	.word	0x20000900

00001678 <xfprintf>:
    1678:	b40e      	push	{r1, r2, r3}
    167a:	b580      	push	{r7, lr}
    167c:	b085      	sub	sp, #20
    167e:	af00      	add	r7, sp, #0
    1680:	6078      	str	r0, [r7, #4]
    1682:	4b0c      	ldr	r3, [pc, #48]	; (16b4 <xfprintf+0x3c>)
    1684:	681b      	ldr	r3, [r3, #0]
    1686:	60fb      	str	r3, [r7, #12]
    1688:	4b0a      	ldr	r3, [pc, #40]	; (16b4 <xfprintf+0x3c>)
    168a:	687a      	ldr	r2, [r7, #4]
    168c:	601a      	str	r2, [r3, #0]
    168e:	2320      	movs	r3, #32
    1690:	18fb      	adds	r3, r7, r3
    1692:	60bb      	str	r3, [r7, #8]
    1694:	68ba      	ldr	r2, [r7, #8]
    1696:	69fb      	ldr	r3, [r7, #28]
    1698:	0011      	movs	r1, r2
    169a:	0018      	movs	r0, r3
    169c:	f7ff fe28 	bl	12f0 <xvprintf>
    16a0:	4b04      	ldr	r3, [pc, #16]	; (16b4 <xfprintf+0x3c>)
    16a2:	68fa      	ldr	r2, [r7, #12]
    16a4:	601a      	str	r2, [r3, #0]
    16a6:	46c0      	nop			; (mov r8, r8)
    16a8:	46bd      	mov	sp, r7
    16aa:	b005      	add	sp, #20
    16ac:	bc80      	pop	{r7}
    16ae:	bc08      	pop	{r3}
    16b0:	b003      	add	sp, #12
    16b2:	4718      	bx	r3
    16b4:	200008fc 	.word	0x200008fc

000016b8 <put_dump>:
    16b8:	b580      	push	{r7, lr}
    16ba:	b088      	sub	sp, #32
    16bc:	af00      	add	r7, sp, #0
    16be:	60f8      	str	r0, [r7, #12]
    16c0:	60b9      	str	r1, [r7, #8]
    16c2:	607a      	str	r2, [r7, #4]
    16c4:	603b      	str	r3, [r7, #0]
    16c6:	68ba      	ldr	r2, [r7, #8]
    16c8:	4b38      	ldr	r3, [pc, #224]	; (17ac <put_dump+0xf4>)
    16ca:	0011      	movs	r1, r2
    16cc:	0018      	movs	r0, r3
    16ce:	f7ff ff9d 	bl	160c <xprintf>
    16d2:	683b      	ldr	r3, [r7, #0]
    16d4:	2b02      	cmp	r3, #2
    16d6:	d03c      	beq.n	1752 <put_dump+0x9a>
    16d8:	2b04      	cmp	r3, #4
    16da:	d04d      	beq.n	1778 <put_dump+0xc0>
    16dc:	2b01      	cmp	r3, #1
    16de:	d15d      	bne.n	179c <put_dump+0xe4>
    16e0:	68fb      	ldr	r3, [r7, #12]
    16e2:	613b      	str	r3, [r7, #16]
    16e4:	2300      	movs	r3, #0
    16e6:	61fb      	str	r3, [r7, #28]
    16e8:	e00c      	b.n	1704 <put_dump+0x4c>
    16ea:	69fb      	ldr	r3, [r7, #28]
    16ec:	693a      	ldr	r2, [r7, #16]
    16ee:	18d3      	adds	r3, r2, r3
    16f0:	781b      	ldrb	r3, [r3, #0]
    16f2:	001a      	movs	r2, r3
    16f4:	4b2e      	ldr	r3, [pc, #184]	; (17b0 <put_dump+0xf8>)
    16f6:	0011      	movs	r1, r2
    16f8:	0018      	movs	r0, r3
    16fa:	f7ff ff87 	bl	160c <xprintf>
    16fe:	69fb      	ldr	r3, [r7, #28]
    1700:	3301      	adds	r3, #1
    1702:	61fb      	str	r3, [r7, #28]
    1704:	69fa      	ldr	r2, [r7, #28]
    1706:	687b      	ldr	r3, [r7, #4]
    1708:	429a      	cmp	r2, r3
    170a:	dbee      	blt.n	16ea <put_dump+0x32>
    170c:	2020      	movs	r0, #32
    170e:	f7ff fd8f 	bl	1230 <xputc>
    1712:	2300      	movs	r3, #0
    1714:	61fb      	str	r3, [r7, #28]
    1716:	e017      	b.n	1748 <put_dump+0x90>
    1718:	69fb      	ldr	r3, [r7, #28]
    171a:	693a      	ldr	r2, [r7, #16]
    171c:	18d3      	adds	r3, r2, r3
    171e:	781b      	ldrb	r3, [r3, #0]
    1720:	2b1f      	cmp	r3, #31
    1722:	d90a      	bls.n	173a <put_dump+0x82>
    1724:	69fb      	ldr	r3, [r7, #28]
    1726:	693a      	ldr	r2, [r7, #16]
    1728:	18d3      	adds	r3, r2, r3
    172a:	781b      	ldrb	r3, [r3, #0]
    172c:	2b7e      	cmp	r3, #126	; 0x7e
    172e:	d804      	bhi.n	173a <put_dump+0x82>
    1730:	69fb      	ldr	r3, [r7, #28]
    1732:	693a      	ldr	r2, [r7, #16]
    1734:	18d3      	adds	r3, r2, r3
    1736:	781b      	ldrb	r3, [r3, #0]
    1738:	e000      	b.n	173c <put_dump+0x84>
    173a:	232e      	movs	r3, #46	; 0x2e
    173c:	0018      	movs	r0, r3
    173e:	f7ff fd77 	bl	1230 <xputc>
    1742:	69fb      	ldr	r3, [r7, #28]
    1744:	3301      	adds	r3, #1
    1746:	61fb      	str	r3, [r7, #28]
    1748:	69fa      	ldr	r2, [r7, #28]
    174a:	687b      	ldr	r3, [r7, #4]
    174c:	429a      	cmp	r2, r3
    174e:	dbe3      	blt.n	1718 <put_dump+0x60>
    1750:	e024      	b.n	179c <put_dump+0xe4>
    1752:	68fb      	ldr	r3, [r7, #12]
    1754:	61bb      	str	r3, [r7, #24]
    1756:	69bb      	ldr	r3, [r7, #24]
    1758:	1c9a      	adds	r2, r3, #2
    175a:	61ba      	str	r2, [r7, #24]
    175c:	881b      	ldrh	r3, [r3, #0]
    175e:	001a      	movs	r2, r3
    1760:	4b14      	ldr	r3, [pc, #80]	; (17b4 <put_dump+0xfc>)
    1762:	0011      	movs	r1, r2
    1764:	0018      	movs	r0, r3
    1766:	f7ff ff51 	bl	160c <xprintf>
    176a:	687b      	ldr	r3, [r7, #4]
    176c:	3b01      	subs	r3, #1
    176e:	607b      	str	r3, [r7, #4]
    1770:	687b      	ldr	r3, [r7, #4]
    1772:	2b00      	cmp	r3, #0
    1774:	d1ef      	bne.n	1756 <put_dump+0x9e>
    1776:	e011      	b.n	179c <put_dump+0xe4>
    1778:	68fb      	ldr	r3, [r7, #12]
    177a:	617b      	str	r3, [r7, #20]
    177c:	697b      	ldr	r3, [r7, #20]
    177e:	1d1a      	adds	r2, r3, #4
    1780:	617a      	str	r2, [r7, #20]
    1782:	681a      	ldr	r2, [r3, #0]
    1784:	4b0c      	ldr	r3, [pc, #48]	; (17b8 <put_dump+0x100>)
    1786:	0011      	movs	r1, r2
    1788:	0018      	movs	r0, r3
    178a:	f7ff ff3f 	bl	160c <xprintf>
    178e:	687b      	ldr	r3, [r7, #4]
    1790:	3b01      	subs	r3, #1
    1792:	607b      	str	r3, [r7, #4]
    1794:	687b      	ldr	r3, [r7, #4]
    1796:	2b00      	cmp	r3, #0
    1798:	d1f0      	bne.n	177c <put_dump+0xc4>
    179a:	46c0      	nop			; (mov r8, r8)
    179c:	200a      	movs	r0, #10
    179e:	f7ff fd47 	bl	1230 <xputc>
    17a2:	46c0      	nop			; (mov r8, r8)
    17a4:	46bd      	mov	sp, r7
    17a6:	b008      	add	sp, #32
    17a8:	bd80      	pop	{r7, pc}
    17aa:	46c0      	nop			; (mov r8, r8)
    17ac:	00008c24 	.word	0x00008c24
    17b0:	00008c2c 	.word	0x00008c2c
    17b4:	00008c34 	.word	0x00008c34
    17b8:	00008c3c 	.word	0x00008c3c

000017bc <xgets>:
    17bc:	b580      	push	{r7, lr}
    17be:	b084      	sub	sp, #16
    17c0:	af00      	add	r7, sp, #0
    17c2:	6078      	str	r0, [r7, #4]
    17c4:	6039      	str	r1, [r7, #0]
    17c6:	4b24      	ldr	r3, [pc, #144]	; (1858 <xgets+0x9c>)
    17c8:	681b      	ldr	r3, [r3, #0]
    17ca:	2b00      	cmp	r3, #0
    17cc:	d101      	bne.n	17d2 <xgets+0x16>
    17ce:	2300      	movs	r3, #0
    17d0:	e03e      	b.n	1850 <xgets+0x94>
    17d2:	2300      	movs	r3, #0
    17d4:	60fb      	str	r3, [r7, #12]
    17d6:	4b20      	ldr	r3, [pc, #128]	; (1858 <xgets+0x9c>)
    17d8:	681b      	ldr	r3, [r3, #0]
    17da:	4798      	blx	r3
    17dc:	0003      	movs	r3, r0
    17de:	60bb      	str	r3, [r7, #8]
    17e0:	68bb      	ldr	r3, [r7, #8]
    17e2:	2b00      	cmp	r3, #0
    17e4:	d101      	bne.n	17ea <xgets+0x2e>
    17e6:	2300      	movs	r3, #0
    17e8:	e032      	b.n	1850 <xgets+0x94>
    17ea:	68bb      	ldr	r3, [r7, #8]
    17ec:	2b0d      	cmp	r3, #13
    17ee:	d025      	beq.n	183c <xgets+0x80>
    17f0:	68bb      	ldr	r3, [r7, #8]
    17f2:	2b08      	cmp	r3, #8
    17f4:	d10b      	bne.n	180e <xgets+0x52>
    17f6:	68fb      	ldr	r3, [r7, #12]
    17f8:	2b00      	cmp	r3, #0
    17fa:	d008      	beq.n	180e <xgets+0x52>
    17fc:	68fb      	ldr	r3, [r7, #12]
    17fe:	3b01      	subs	r3, #1
    1800:	60fb      	str	r3, [r7, #12]
    1802:	68bb      	ldr	r3, [r7, #8]
    1804:	b2db      	uxtb	r3, r3
    1806:	0018      	movs	r0, r3
    1808:	f7ff fd12 	bl	1230 <xputc>
    180c:	e015      	b.n	183a <xgets+0x7e>
    180e:	68bb      	ldr	r3, [r7, #8]
    1810:	2b1f      	cmp	r3, #31
    1812:	dde0      	ble.n	17d6 <xgets+0x1a>
    1814:	683b      	ldr	r3, [r7, #0]
    1816:	1e5a      	subs	r2, r3, #1
    1818:	68fb      	ldr	r3, [r7, #12]
    181a:	429a      	cmp	r2, r3
    181c:	dddb      	ble.n	17d6 <xgets+0x1a>
    181e:	68fb      	ldr	r3, [r7, #12]
    1820:	1c5a      	adds	r2, r3, #1
    1822:	60fa      	str	r2, [r7, #12]
    1824:	001a      	movs	r2, r3
    1826:	687b      	ldr	r3, [r7, #4]
    1828:	189b      	adds	r3, r3, r2
    182a:	68ba      	ldr	r2, [r7, #8]
    182c:	b2d2      	uxtb	r2, r2
    182e:	701a      	strb	r2, [r3, #0]
    1830:	68bb      	ldr	r3, [r7, #8]
    1832:	b2db      	uxtb	r3, r3
    1834:	0018      	movs	r0, r3
    1836:	f7ff fcfb 	bl	1230 <xputc>
    183a:	e7cc      	b.n	17d6 <xgets+0x1a>
    183c:	46c0      	nop			; (mov r8, r8)
    183e:	68fb      	ldr	r3, [r7, #12]
    1840:	687a      	ldr	r2, [r7, #4]
    1842:	18d3      	adds	r3, r2, r3
    1844:	2200      	movs	r2, #0
    1846:	701a      	strb	r2, [r3, #0]
    1848:	200a      	movs	r0, #10
    184a:	f7ff fcf1 	bl	1230 <xputc>
    184e:	2301      	movs	r3, #1
    1850:	0018      	movs	r0, r3
    1852:	46bd      	mov	sp, r7
    1854:	b004      	add	sp, #16
    1856:	bd80      	pop	{r7, pc}
    1858:	20000904 	.word	0x20000904

0000185c <xfgets>:
    185c:	b580      	push	{r7, lr}
    185e:	b086      	sub	sp, #24
    1860:	af00      	add	r7, sp, #0
    1862:	60f8      	str	r0, [r7, #12]
    1864:	60b9      	str	r1, [r7, #8]
    1866:	607a      	str	r2, [r7, #4]
    1868:	4b0a      	ldr	r3, [pc, #40]	; (1894 <xfgets+0x38>)
    186a:	681b      	ldr	r3, [r3, #0]
    186c:	617b      	str	r3, [r7, #20]
    186e:	4b09      	ldr	r3, [pc, #36]	; (1894 <xfgets+0x38>)
    1870:	68fa      	ldr	r2, [r7, #12]
    1872:	601a      	str	r2, [r3, #0]
    1874:	687a      	ldr	r2, [r7, #4]
    1876:	68bb      	ldr	r3, [r7, #8]
    1878:	0011      	movs	r1, r2
    187a:	0018      	movs	r0, r3
    187c:	f7ff ff9e 	bl	17bc <xgets>
    1880:	0003      	movs	r3, r0
    1882:	613b      	str	r3, [r7, #16]
    1884:	4b03      	ldr	r3, [pc, #12]	; (1894 <xfgets+0x38>)
    1886:	697a      	ldr	r2, [r7, #20]
    1888:	601a      	str	r2, [r3, #0]
    188a:	693b      	ldr	r3, [r7, #16]
    188c:	0018      	movs	r0, r3
    188e:	46bd      	mov	sp, r7
    1890:	b006      	add	sp, #24
    1892:	bd80      	pop	{r7, pc}
    1894:	20000904 	.word	0x20000904

00001898 <xatoi>:
    1898:	b580      	push	{r7, lr}
    189a:	b084      	sub	sp, #16
    189c:	af00      	add	r7, sp, #0
    189e:	6078      	str	r0, [r7, #4]
    18a0:	6039      	str	r1, [r7, #0]
    18a2:	2309      	movs	r3, #9
    18a4:	18fb      	adds	r3, r7, r3
    18a6:	2200      	movs	r2, #0
    18a8:	701a      	strb	r2, [r3, #0]
    18aa:	683b      	ldr	r3, [r7, #0]
    18ac:	2200      	movs	r2, #0
    18ae:	601a      	str	r2, [r3, #0]
    18b0:	e004      	b.n	18bc <xatoi+0x24>
    18b2:	687b      	ldr	r3, [r7, #4]
    18b4:	681b      	ldr	r3, [r3, #0]
    18b6:	1c5a      	adds	r2, r3, #1
    18b8:	687b      	ldr	r3, [r7, #4]
    18ba:	601a      	str	r2, [r3, #0]
    18bc:	687b      	ldr	r3, [r7, #4]
    18be:	681a      	ldr	r2, [r3, #0]
    18c0:	230b      	movs	r3, #11
    18c2:	18fb      	adds	r3, r7, r3
    18c4:	7812      	ldrb	r2, [r2, #0]
    18c6:	701a      	strb	r2, [r3, #0]
    18c8:	230b      	movs	r3, #11
    18ca:	18fb      	adds	r3, r7, r3
    18cc:	781b      	ldrb	r3, [r3, #0]
    18ce:	2b20      	cmp	r3, #32
    18d0:	d0ef      	beq.n	18b2 <xatoi+0x1a>
    18d2:	230b      	movs	r3, #11
    18d4:	18fb      	adds	r3, r7, r3
    18d6:	781b      	ldrb	r3, [r3, #0]
    18d8:	2b2d      	cmp	r3, #45	; 0x2d
    18da:	d10e      	bne.n	18fa <xatoi+0x62>
    18dc:	2309      	movs	r3, #9
    18de:	18fb      	adds	r3, r7, r3
    18e0:	2201      	movs	r2, #1
    18e2:	701a      	strb	r2, [r3, #0]
    18e4:	687b      	ldr	r3, [r7, #4]
    18e6:	681b      	ldr	r3, [r3, #0]
    18e8:	1c5a      	adds	r2, r3, #1
    18ea:	687b      	ldr	r3, [r7, #4]
    18ec:	601a      	str	r2, [r3, #0]
    18ee:	687b      	ldr	r3, [r7, #4]
    18f0:	681a      	ldr	r2, [r3, #0]
    18f2:	230b      	movs	r3, #11
    18f4:	18fb      	adds	r3, r7, r3
    18f6:	7812      	ldrb	r2, [r2, #0]
    18f8:	701a      	strb	r2, [r3, #0]
    18fa:	230b      	movs	r3, #11
    18fc:	18fb      	adds	r3, r7, r3
    18fe:	781b      	ldrb	r3, [r3, #0]
    1900:	2b30      	cmp	r3, #48	; 0x30
    1902:	d149      	bne.n	1998 <xatoi+0x100>
    1904:	687b      	ldr	r3, [r7, #4]
    1906:	681b      	ldr	r3, [r3, #0]
    1908:	1c5a      	adds	r2, r3, #1
    190a:	687b      	ldr	r3, [r7, #4]
    190c:	601a      	str	r2, [r3, #0]
    190e:	687b      	ldr	r3, [r7, #4]
    1910:	681a      	ldr	r2, [r3, #0]
    1912:	230b      	movs	r3, #11
    1914:	18fb      	adds	r3, r7, r3
    1916:	7812      	ldrb	r2, [r2, #0]
    1918:	701a      	strb	r2, [r3, #0]
    191a:	230b      	movs	r3, #11
    191c:	18fb      	adds	r3, r7, r3
    191e:	781b      	ldrb	r3, [r3, #0]
    1920:	2b62      	cmp	r3, #98	; 0x62
    1922:	d011      	beq.n	1948 <xatoi+0xb0>
    1924:	2b78      	cmp	r3, #120	; 0x78
    1926:	d11f      	bne.n	1968 <xatoi+0xd0>
    1928:	230a      	movs	r3, #10
    192a:	18fb      	adds	r3, r7, r3
    192c:	2210      	movs	r2, #16
    192e:	701a      	strb	r2, [r3, #0]
    1930:	687b      	ldr	r3, [r7, #4]
    1932:	681b      	ldr	r3, [r3, #0]
    1934:	1c5a      	adds	r2, r3, #1
    1936:	687b      	ldr	r3, [r7, #4]
    1938:	601a      	str	r2, [r3, #0]
    193a:	687b      	ldr	r3, [r7, #4]
    193c:	681a      	ldr	r2, [r3, #0]
    193e:	230b      	movs	r3, #11
    1940:	18fb      	adds	r3, r7, r3
    1942:	7812      	ldrb	r2, [r2, #0]
    1944:	701a      	strb	r2, [r3, #0]
    1946:	e037      	b.n	19b8 <xatoi+0x120>
    1948:	230a      	movs	r3, #10
    194a:	18fb      	adds	r3, r7, r3
    194c:	2202      	movs	r2, #2
    194e:	701a      	strb	r2, [r3, #0]
    1950:	687b      	ldr	r3, [r7, #4]
    1952:	681b      	ldr	r3, [r3, #0]
    1954:	1c5a      	adds	r2, r3, #1
    1956:	687b      	ldr	r3, [r7, #4]
    1958:	601a      	str	r2, [r3, #0]
    195a:	687b      	ldr	r3, [r7, #4]
    195c:	681a      	ldr	r2, [r3, #0]
    195e:	230b      	movs	r3, #11
    1960:	18fb      	adds	r3, r7, r3
    1962:	7812      	ldrb	r2, [r2, #0]
    1964:	701a      	strb	r2, [r3, #0]
    1966:	e027      	b.n	19b8 <xatoi+0x120>
    1968:	230b      	movs	r3, #11
    196a:	18fb      	adds	r3, r7, r3
    196c:	781b      	ldrb	r3, [r3, #0]
    196e:	2b20      	cmp	r3, #32
    1970:	d801      	bhi.n	1976 <xatoi+0xde>
    1972:	2301      	movs	r3, #1
    1974:	e079      	b.n	1a6a <xatoi+0x1d2>
    1976:	230b      	movs	r3, #11
    1978:	18fb      	adds	r3, r7, r3
    197a:	781b      	ldrb	r3, [r3, #0]
    197c:	2b2f      	cmp	r3, #47	; 0x2f
    197e:	d904      	bls.n	198a <xatoi+0xf2>
    1980:	230b      	movs	r3, #11
    1982:	18fb      	adds	r3, r7, r3
    1984:	781b      	ldrb	r3, [r3, #0]
    1986:	2b39      	cmp	r3, #57	; 0x39
    1988:	d901      	bls.n	198e <xatoi+0xf6>
    198a:	2300      	movs	r3, #0
    198c:	e06d      	b.n	1a6a <xatoi+0x1d2>
    198e:	230a      	movs	r3, #10
    1990:	18fb      	adds	r3, r7, r3
    1992:	2208      	movs	r2, #8
    1994:	701a      	strb	r2, [r3, #0]
    1996:	e00f      	b.n	19b8 <xatoi+0x120>
    1998:	230b      	movs	r3, #11
    199a:	18fb      	adds	r3, r7, r3
    199c:	781b      	ldrb	r3, [r3, #0]
    199e:	2b2f      	cmp	r3, #47	; 0x2f
    19a0:	d904      	bls.n	19ac <xatoi+0x114>
    19a2:	230b      	movs	r3, #11
    19a4:	18fb      	adds	r3, r7, r3
    19a6:	781b      	ldrb	r3, [r3, #0]
    19a8:	2b39      	cmp	r3, #57	; 0x39
    19aa:	d901      	bls.n	19b0 <xatoi+0x118>
    19ac:	2300      	movs	r3, #0
    19ae:	e05c      	b.n	1a6a <xatoi+0x1d2>
    19b0:	230a      	movs	r3, #10
    19b2:	18fb      	adds	r3, r7, r3
    19b4:	220a      	movs	r2, #10
    19b6:	701a      	strb	r2, [r3, #0]
    19b8:	2300      	movs	r3, #0
    19ba:	60fb      	str	r3, [r7, #12]
    19bc:	e044      	b.n	1a48 <xatoi+0x1b0>
    19be:	230b      	movs	r3, #11
    19c0:	18fb      	adds	r3, r7, r3
    19c2:	781b      	ldrb	r3, [r3, #0]
    19c4:	2b60      	cmp	r3, #96	; 0x60
    19c6:	d906      	bls.n	19d6 <xatoi+0x13e>
    19c8:	230b      	movs	r3, #11
    19ca:	18fb      	adds	r3, r7, r3
    19cc:	220b      	movs	r2, #11
    19ce:	18ba      	adds	r2, r7, r2
    19d0:	7812      	ldrb	r2, [r2, #0]
    19d2:	3a20      	subs	r2, #32
    19d4:	701a      	strb	r2, [r3, #0]
    19d6:	230b      	movs	r3, #11
    19d8:	18fb      	adds	r3, r7, r3
    19da:	220b      	movs	r2, #11
    19dc:	18ba      	adds	r2, r7, r2
    19de:	7812      	ldrb	r2, [r2, #0]
    19e0:	3a30      	subs	r2, #48	; 0x30
    19e2:	701a      	strb	r2, [r3, #0]
    19e4:	230b      	movs	r3, #11
    19e6:	18fb      	adds	r3, r7, r3
    19e8:	781b      	ldrb	r3, [r3, #0]
    19ea:	2b10      	cmp	r3, #16
    19ec:	d90d      	bls.n	1a0a <xatoi+0x172>
    19ee:	230b      	movs	r3, #11
    19f0:	18fb      	adds	r3, r7, r3
    19f2:	220b      	movs	r2, #11
    19f4:	18ba      	adds	r2, r7, r2
    19f6:	7812      	ldrb	r2, [r2, #0]
    19f8:	3a07      	subs	r2, #7
    19fa:	701a      	strb	r2, [r3, #0]
    19fc:	230b      	movs	r3, #11
    19fe:	18fb      	adds	r3, r7, r3
    1a00:	781b      	ldrb	r3, [r3, #0]
    1a02:	2b09      	cmp	r3, #9
    1a04:	d801      	bhi.n	1a0a <xatoi+0x172>
    1a06:	2300      	movs	r3, #0
    1a08:	e02f      	b.n	1a6a <xatoi+0x1d2>
    1a0a:	230b      	movs	r3, #11
    1a0c:	18fa      	adds	r2, r7, r3
    1a0e:	230a      	movs	r3, #10
    1a10:	18fb      	adds	r3, r7, r3
    1a12:	7812      	ldrb	r2, [r2, #0]
    1a14:	781b      	ldrb	r3, [r3, #0]
    1a16:	429a      	cmp	r2, r3
    1a18:	d301      	bcc.n	1a1e <xatoi+0x186>
    1a1a:	2300      	movs	r3, #0
    1a1c:	e025      	b.n	1a6a <xatoi+0x1d2>
    1a1e:	230a      	movs	r3, #10
    1a20:	18fb      	adds	r3, r7, r3
    1a22:	781b      	ldrb	r3, [r3, #0]
    1a24:	68fa      	ldr	r2, [r7, #12]
    1a26:	435a      	muls	r2, r3
    1a28:	230b      	movs	r3, #11
    1a2a:	18fb      	adds	r3, r7, r3
    1a2c:	781b      	ldrb	r3, [r3, #0]
    1a2e:	18d3      	adds	r3, r2, r3
    1a30:	60fb      	str	r3, [r7, #12]
    1a32:	687b      	ldr	r3, [r7, #4]
    1a34:	681b      	ldr	r3, [r3, #0]
    1a36:	1c5a      	adds	r2, r3, #1
    1a38:	687b      	ldr	r3, [r7, #4]
    1a3a:	601a      	str	r2, [r3, #0]
    1a3c:	687b      	ldr	r3, [r7, #4]
    1a3e:	681a      	ldr	r2, [r3, #0]
    1a40:	230b      	movs	r3, #11
    1a42:	18fb      	adds	r3, r7, r3
    1a44:	7812      	ldrb	r2, [r2, #0]
    1a46:	701a      	strb	r2, [r3, #0]
    1a48:	230b      	movs	r3, #11
    1a4a:	18fb      	adds	r3, r7, r3
    1a4c:	781b      	ldrb	r3, [r3, #0]
    1a4e:	2b20      	cmp	r3, #32
    1a50:	d8b5      	bhi.n	19be <xatoi+0x126>
    1a52:	2309      	movs	r3, #9
    1a54:	18fb      	adds	r3, r7, r3
    1a56:	781b      	ldrb	r3, [r3, #0]
    1a58:	2b00      	cmp	r3, #0
    1a5a:	d002      	beq.n	1a62 <xatoi+0x1ca>
    1a5c:	68fb      	ldr	r3, [r7, #12]
    1a5e:	425b      	negs	r3, r3
    1a60:	60fb      	str	r3, [r7, #12]
    1a62:	68fa      	ldr	r2, [r7, #12]
    1a64:	683b      	ldr	r3, [r7, #0]
    1a66:	601a      	str	r2, [r3, #0]
    1a68:	2301      	movs	r3, #1
    1a6a:	0018      	movs	r0, r3
    1a6c:	46bd      	mov	sp, r7
    1a6e:	b004      	add	sp, #16
    1a70:	bd80      	pop	{r7, pc}
    1a72:	46c0      	nop			; (mov r8, r8)

00001a74 <os_idle_demon>:
    1a74:	b580      	push	{r7, lr}
    1a76:	af00      	add	r7, sp, #0
    1a78:	e7fe      	b.n	1a78 <os_idle_demon+0x4>
    1a7a:	46c0      	nop			; (mov r8, r8)

00001a7c <os_error>:
    1a7c:	b580      	push	{r7, lr}
    1a7e:	b082      	sub	sp, #8
    1a80:	af00      	add	r7, sp, #0
    1a82:	6078      	str	r0, [r7, #4]
    1a84:	687b      	ldr	r3, [r7, #4]
    1a86:	2b02      	cmp	r3, #2
    1a88:	d009      	beq.n	1a9e <os_error+0x22>
    1a8a:	d802      	bhi.n	1a92 <os_error+0x16>
    1a8c:	2b01      	cmp	r3, #1
    1a8e:	d005      	beq.n	1a9c <os_error+0x20>
    1a90:	e008      	b.n	1aa4 <os_error+0x28>
    1a92:	2b03      	cmp	r3, #3
    1a94:	d004      	beq.n	1aa0 <os_error+0x24>
    1a96:	2b04      	cmp	r3, #4
    1a98:	d003      	beq.n	1aa2 <os_error+0x26>
    1a9a:	e003      	b.n	1aa4 <os_error+0x28>
    1a9c:	e002      	b.n	1aa4 <os_error+0x28>
    1a9e:	e001      	b.n	1aa4 <os_error+0x28>
    1aa0:	e000      	b.n	1aa4 <os_error+0x28>
    1aa2:	46c0      	nop			; (mov r8, r8)
    1aa4:	e7fe      	b.n	1aa4 <os_error+0x28>
    1aa6:	46c0      	nop			; (mov r8, r8)

00001aa8 <software_init_hook>:
    1aa8:	2000      	movs	r0, #0
    1aaa:	2100      	movs	r1, #0
    1aac:	4604      	mov	r4, r0
    1aae:	460d      	mov	r5, r1
    1ab0:	4808      	ldr	r0, [pc, #32]	; (1ad4 <software_init_hook+0x2c>)
    1ab2:	f003 fae9 	bl	5088 <atexit>
    1ab6:	f003 fb19 	bl	50ec <__libc_init_array>
    1aba:	4620      	mov	r0, r4
    1abc:	4629      	mov	r1, r5
    1abe:	f004 f9a7 	bl	5e10 <osKernelInitialize>
    1ac2:	4805      	ldr	r0, [pc, #20]	; (1ad8 <software_init_hook+0x30>)
    1ac4:	2100      	movs	r1, #0
    1ac6:	f004 fb35 	bl	6134 <osThreadCreate>
    1aca:	f004 fa3d 	bl	5f48 <osKernelStart>
    1ace:	f003 fae3 	bl	5098 <exit>
    1ad2:	0000      	.short	0x0000
    1ad4:	000050b9 	.word	0x000050b9
    1ad8:	00008c9c 	.word	0x00008c9c

00001adc <__NVIC_EnableIRQ>:
    1adc:	b580      	push	{r7, lr}
    1ade:	b082      	sub	sp, #8
    1ae0:	af00      	add	r7, sp, #0
    1ae2:	0002      	movs	r2, r0
    1ae4:	1dfb      	adds	r3, r7, #7
    1ae6:	701a      	strb	r2, [r3, #0]
    1ae8:	1dfb      	adds	r3, r7, #7
    1aea:	781b      	ldrb	r3, [r3, #0]
    1aec:	2b7f      	cmp	r3, #127	; 0x7f
    1aee:	d809      	bhi.n	1b04 <__NVIC_EnableIRQ+0x28>
    1af0:	4b06      	ldr	r3, [pc, #24]	; (1b0c <__NVIC_EnableIRQ+0x30>)
    1af2:	1dfa      	adds	r2, r7, #7
    1af4:	7812      	ldrb	r2, [r2, #0]
    1af6:	0011      	movs	r1, r2
    1af8:	221f      	movs	r2, #31
    1afa:	400a      	ands	r2, r1
    1afc:	2101      	movs	r1, #1
    1afe:	4091      	lsls	r1, r2
    1b00:	000a      	movs	r2, r1
    1b02:	601a      	str	r2, [r3, #0]
    1b04:	46c0      	nop			; (mov r8, r8)
    1b06:	46bd      	mov	sp, r7
    1b08:	b002      	add	sp, #8
    1b0a:	bd80      	pop	{r7, pc}
    1b0c:	e000e100 	.word	0xe000e100

00001b10 <__NVIC_ClearPendingIRQ>:
    1b10:	b580      	push	{r7, lr}
    1b12:	b082      	sub	sp, #8
    1b14:	af00      	add	r7, sp, #0
    1b16:	0002      	movs	r2, r0
    1b18:	1dfb      	adds	r3, r7, #7
    1b1a:	701a      	strb	r2, [r3, #0]
    1b1c:	1dfb      	adds	r3, r7, #7
    1b1e:	781b      	ldrb	r3, [r3, #0]
    1b20:	2b7f      	cmp	r3, #127	; 0x7f
    1b22:	d80a      	bhi.n	1b3a <__NVIC_ClearPendingIRQ+0x2a>
    1b24:	4907      	ldr	r1, [pc, #28]	; (1b44 <__NVIC_ClearPendingIRQ+0x34>)
    1b26:	1dfb      	adds	r3, r7, #7
    1b28:	781b      	ldrb	r3, [r3, #0]
    1b2a:	001a      	movs	r2, r3
    1b2c:	231f      	movs	r3, #31
    1b2e:	4013      	ands	r3, r2
    1b30:	2201      	movs	r2, #1
    1b32:	409a      	lsls	r2, r3
    1b34:	23c0      	movs	r3, #192	; 0xc0
    1b36:	005b      	lsls	r3, r3, #1
    1b38:	50ca      	str	r2, [r1, r3]
    1b3a:	46c0      	nop			; (mov r8, r8)
    1b3c:	46bd      	mov	sp, r7
    1b3e:	b002      	add	sp, #8
    1b40:	bd80      	pop	{r7, pc}
    1b42:	46c0      	nop			; (mov r8, r8)
    1b44:	e000e100 	.word	0xe000e100

00001b48 <__NVIC_SetPriority>:
    1b48:	b5b0      	push	{r4, r5, r7, lr}
    1b4a:	b082      	sub	sp, #8
    1b4c:	af00      	add	r7, sp, #0
    1b4e:	0002      	movs	r2, r0
    1b50:	6039      	str	r1, [r7, #0]
    1b52:	1dfb      	adds	r3, r7, #7
    1b54:	701a      	strb	r2, [r3, #0]
    1b56:	1dfb      	adds	r3, r7, #7
    1b58:	781b      	ldrb	r3, [r3, #0]
    1b5a:	2b7f      	cmp	r3, #127	; 0x7f
    1b5c:	d828      	bhi.n	1bb0 <__NVIC_SetPriority+0x68>
    1b5e:	4c2f      	ldr	r4, [pc, #188]	; (1c1c <__NVIC_SetPriority+0xd4>)
    1b60:	1dfb      	adds	r3, r7, #7
    1b62:	781b      	ldrb	r3, [r3, #0]
    1b64:	b25b      	sxtb	r3, r3
    1b66:	089b      	lsrs	r3, r3, #2
    1b68:	492c      	ldr	r1, [pc, #176]	; (1c1c <__NVIC_SetPriority+0xd4>)
    1b6a:	1dfa      	adds	r2, r7, #7
    1b6c:	7812      	ldrb	r2, [r2, #0]
    1b6e:	b252      	sxtb	r2, r2
    1b70:	0892      	lsrs	r2, r2, #2
    1b72:	32c0      	adds	r2, #192	; 0xc0
    1b74:	0092      	lsls	r2, r2, #2
    1b76:	5852      	ldr	r2, [r2, r1]
    1b78:	1df9      	adds	r1, r7, #7
    1b7a:	7809      	ldrb	r1, [r1, #0]
    1b7c:	0008      	movs	r0, r1
    1b7e:	2103      	movs	r1, #3
    1b80:	4001      	ands	r1, r0
    1b82:	00c9      	lsls	r1, r1, #3
    1b84:	20ff      	movs	r0, #255	; 0xff
    1b86:	4088      	lsls	r0, r1
    1b88:	0001      	movs	r1, r0
    1b8a:	43c9      	mvns	r1, r1
    1b8c:	4011      	ands	r1, r2
    1b8e:	683a      	ldr	r2, [r7, #0]
    1b90:	0192      	lsls	r2, r2, #6
    1b92:	20ff      	movs	r0, #255	; 0xff
    1b94:	4010      	ands	r0, r2
    1b96:	1dfa      	adds	r2, r7, #7
    1b98:	7812      	ldrb	r2, [r2, #0]
    1b9a:	0015      	movs	r5, r2
    1b9c:	2203      	movs	r2, #3
    1b9e:	402a      	ands	r2, r5
    1ba0:	00d2      	lsls	r2, r2, #3
    1ba2:	4090      	lsls	r0, r2
    1ba4:	0002      	movs	r2, r0
    1ba6:	430a      	orrs	r2, r1
    1ba8:	33c0      	adds	r3, #192	; 0xc0
    1baa:	009b      	lsls	r3, r3, #2
    1bac:	511a      	str	r2, [r3, r4]
    1bae:	e031      	b.n	1c14 <__NVIC_SetPriority+0xcc>
    1bb0:	4c1b      	ldr	r4, [pc, #108]	; (1c20 <__NVIC_SetPriority+0xd8>)
    1bb2:	1dfb      	adds	r3, r7, #7
    1bb4:	781b      	ldrb	r3, [r3, #0]
    1bb6:	001a      	movs	r2, r3
    1bb8:	230f      	movs	r3, #15
    1bba:	4013      	ands	r3, r2
    1bbc:	3b08      	subs	r3, #8
    1bbe:	0899      	lsrs	r1, r3, #2
    1bc0:	4a17      	ldr	r2, [pc, #92]	; (1c20 <__NVIC_SetPriority+0xd8>)
    1bc2:	1dfb      	adds	r3, r7, #7
    1bc4:	781b      	ldrb	r3, [r3, #0]
    1bc6:	0018      	movs	r0, r3
    1bc8:	230f      	movs	r3, #15
    1bca:	4003      	ands	r3, r0
    1bcc:	3b08      	subs	r3, #8
    1bce:	089b      	lsrs	r3, r3, #2
    1bd0:	3306      	adds	r3, #6
    1bd2:	009b      	lsls	r3, r3, #2
    1bd4:	18d3      	adds	r3, r2, r3
    1bd6:	3304      	adds	r3, #4
    1bd8:	681b      	ldr	r3, [r3, #0]
    1bda:	1dfa      	adds	r2, r7, #7
    1bdc:	7812      	ldrb	r2, [r2, #0]
    1bde:	0010      	movs	r0, r2
    1be0:	2203      	movs	r2, #3
    1be2:	4002      	ands	r2, r0
    1be4:	00d2      	lsls	r2, r2, #3
    1be6:	20ff      	movs	r0, #255	; 0xff
    1be8:	4090      	lsls	r0, r2
    1bea:	0002      	movs	r2, r0
    1bec:	43d2      	mvns	r2, r2
    1bee:	401a      	ands	r2, r3
    1bf0:	683b      	ldr	r3, [r7, #0]
    1bf2:	019b      	lsls	r3, r3, #6
    1bf4:	20ff      	movs	r0, #255	; 0xff
    1bf6:	4018      	ands	r0, r3
    1bf8:	1dfb      	adds	r3, r7, #7
    1bfa:	781b      	ldrb	r3, [r3, #0]
    1bfc:	001d      	movs	r5, r3
    1bfe:	2303      	movs	r3, #3
    1c00:	402b      	ands	r3, r5
    1c02:	00db      	lsls	r3, r3, #3
    1c04:	4098      	lsls	r0, r3
    1c06:	0003      	movs	r3, r0
    1c08:	431a      	orrs	r2, r3
    1c0a:	1d8b      	adds	r3, r1, #6
    1c0c:	009b      	lsls	r3, r3, #2
    1c0e:	18e3      	adds	r3, r4, r3
    1c10:	3304      	adds	r3, #4
    1c12:	601a      	str	r2, [r3, #0]
    1c14:	46c0      	nop			; (mov r8, r8)
    1c16:	46bd      	mov	sp, r7
    1c18:	b002      	add	sp, #8
    1c1a:	bdb0      	pop	{r4, r5, r7, pc}
    1c1c:	e000e100 	.word	0xe000e100
    1c20:	e000ed00 	.word	0xe000ed00

00001c24 <PortConfig>:
    1c24:	b580      	push	{r7, lr}
    1c26:	af00      	add	r7, sp, #0
    1c28:	4b46      	ldr	r3, [pc, #280]	; (1d44 <PortConfig+0x120>)
    1c2a:	4a46      	ldr	r2, [pc, #280]	; (1d44 <PortConfig+0x120>)
    1c2c:	68d2      	ldr	r2, [r2, #12]
    1c2e:	21de      	movs	r1, #222	; 0xde
    1c30:	0209      	lsls	r1, r1, #8
    1c32:	430a      	orrs	r2, r1
    1c34:	60da      	str	r2, [r3, #12]
    1c36:	4b43      	ldr	r3, [pc, #268]	; (1d44 <PortConfig+0x120>)
    1c38:	4a42      	ldr	r2, [pc, #264]	; (1d44 <PortConfig+0x120>)
    1c3a:	6812      	ldr	r2, [r2, #0]
    1c3c:	4942      	ldr	r1, [pc, #264]	; (1d48 <PortConfig+0x124>)
    1c3e:	400a      	ands	r2, r1
    1c40:	601a      	str	r2, [r3, #0]
    1c42:	4b40      	ldr	r3, [pc, #256]	; (1d44 <PortConfig+0x120>)
    1c44:	4a3f      	ldr	r2, [pc, #252]	; (1d44 <PortConfig+0x120>)
    1c46:	6852      	ldr	r2, [r2, #4]
    1c48:	21de      	movs	r1, #222	; 0xde
    1c4a:	0209      	lsls	r1, r1, #8
    1c4c:	430a      	orrs	r2, r1
    1c4e:	605a      	str	r2, [r3, #4]
    1c50:	4b3c      	ldr	r3, [pc, #240]	; (1d44 <PortConfig+0x120>)
    1c52:	4a3c      	ldr	r2, [pc, #240]	; (1d44 <PortConfig+0x120>)
    1c54:	6992      	ldr	r2, [r2, #24]
    1c56:	493d      	ldr	r1, [pc, #244]	; (1d4c <PortConfig+0x128>)
    1c58:	430a      	orrs	r2, r1
    1c5a:	619a      	str	r2, [r3, #24]
    1c5c:	4b39      	ldr	r3, [pc, #228]	; (1d44 <PortConfig+0x120>)
    1c5e:	4a39      	ldr	r2, [pc, #228]	; (1d44 <PortConfig+0x120>)
    1c60:	68d2      	ldr	r2, [r2, #12]
    1c62:	493b      	ldr	r1, [pc, #236]	; (1d50 <PortConfig+0x12c>)
    1c64:	430a      	orrs	r2, r1
    1c66:	60da      	str	r2, [r3, #12]
    1c68:	4b36      	ldr	r3, [pc, #216]	; (1d44 <PortConfig+0x120>)
    1c6a:	4a36      	ldr	r2, [pc, #216]	; (1d44 <PortConfig+0x120>)
    1c6c:	6812      	ldr	r2, [r2, #0]
    1c6e:	0a52      	lsrs	r2, r2, #9
    1c70:	0252      	lsls	r2, r2, #9
    1c72:	601a      	str	r2, [r3, #0]
    1c74:	4b33      	ldr	r3, [pc, #204]	; (1d44 <PortConfig+0x120>)
    1c76:	4a33      	ldr	r2, [pc, #204]	; (1d44 <PortConfig+0x120>)
    1c78:	6852      	ldr	r2, [r2, #4]
    1c7a:	4935      	ldr	r1, [pc, #212]	; (1d50 <PortConfig+0x12c>)
    1c7c:	430a      	orrs	r2, r1
    1c7e:	605a      	str	r2, [r3, #4]
    1c80:	4b30      	ldr	r3, [pc, #192]	; (1d44 <PortConfig+0x120>)
    1c82:	4a30      	ldr	r2, [pc, #192]	; (1d44 <PortConfig+0x120>)
    1c84:	6992      	ldr	r2, [r2, #24]
    1c86:	4933      	ldr	r1, [pc, #204]	; (1d54 <PortConfig+0x130>)
    1c88:	430a      	orrs	r2, r1
    1c8a:	619a      	str	r2, [r3, #24]
    1c8c:	4b32      	ldr	r3, [pc, #200]	; (1d58 <PortConfig+0x134>)
    1c8e:	4a32      	ldr	r2, [pc, #200]	; (1d58 <PortConfig+0x134>)
    1c90:	6892      	ldr	r2, [r2, #8]
    1c92:	21a0      	movs	r1, #160	; 0xa0
    1c94:	0549      	lsls	r1, r1, #21
    1c96:	430a      	orrs	r2, r1
    1c98:	609a      	str	r2, [r3, #8]
    1c9a:	4b2f      	ldr	r3, [pc, #188]	; (1d58 <PortConfig+0x134>)
    1c9c:	4a2e      	ldr	r2, [pc, #184]	; (1d58 <PortConfig+0x134>)
    1c9e:	68d2      	ldr	r2, [r2, #12]
    1ca0:	21e0      	movs	r1, #224	; 0xe0
    1ca2:	0209      	lsls	r1, r1, #8
    1ca4:	430a      	orrs	r2, r1
    1ca6:	60da      	str	r2, [r3, #12]
    1ca8:	4b2b      	ldr	r3, [pc, #172]	; (1d58 <PortConfig+0x134>)
    1caa:	4a2b      	ldr	r2, [pc, #172]	; (1d58 <PortConfig+0x134>)
    1cac:	6992      	ldr	r2, [r2, #24]
    1cae:	21fc      	movs	r1, #252	; 0xfc
    1cb0:	0609      	lsls	r1, r1, #24
    1cb2:	430a      	orrs	r2, r1
    1cb4:	619a      	str	r2, [r3, #24]
    1cb6:	4b28      	ldr	r3, [pc, #160]	; (1d58 <PortConfig+0x134>)
    1cb8:	4a27      	ldr	r2, [pc, #156]	; (1d58 <PortConfig+0x134>)
    1cba:	6812      	ldr	r2, [r2, #0]
    1cbc:	4927      	ldr	r1, [pc, #156]	; (1d5c <PortConfig+0x138>)
    1cbe:	400a      	ands	r2, r1
    1cc0:	601a      	str	r2, [r3, #0]
    1cc2:	4b25      	ldr	r3, [pc, #148]	; (1d58 <PortConfig+0x134>)
    1cc4:	4a24      	ldr	r2, [pc, #144]	; (1d58 <PortConfig+0x134>)
    1cc6:	6852      	ldr	r2, [r2, #4]
    1cc8:	2180      	movs	r1, #128	; 0x80
    1cca:	0209      	lsls	r1, r1, #8
    1ccc:	430a      	orrs	r2, r1
    1cce:	605a      	str	r2, [r3, #4]
    1cd0:	4b23      	ldr	r3, [pc, #140]	; (1d60 <PortConfig+0x13c>)
    1cd2:	4a23      	ldr	r2, [pc, #140]	; (1d60 <PortConfig+0x13c>)
    1cd4:	6892      	ldr	r2, [r2, #8]
    1cd6:	4923      	ldr	r1, [pc, #140]	; (1d64 <PortConfig+0x140>)
    1cd8:	400a      	ands	r2, r1
    1cda:	609a      	str	r2, [r3, #8]
    1cdc:	4b20      	ldr	r3, [pc, #128]	; (1d60 <PortConfig+0x13c>)
    1cde:	4a20      	ldr	r2, [pc, #128]	; (1d60 <PortConfig+0x13c>)
    1ce0:	6892      	ldr	r2, [r2, #8]
    1ce2:	21a0      	movs	r1, #160	; 0xa0
    1ce4:	0049      	lsls	r1, r1, #1
    1ce6:	430a      	orrs	r2, r1
    1ce8:	609a      	str	r2, [r3, #8]
    1cea:	4b1d      	ldr	r3, [pc, #116]	; (1d60 <PortConfig+0x13c>)
    1cec:	4a1c      	ldr	r2, [pc, #112]	; (1d60 <PortConfig+0x13c>)
    1cee:	68d2      	ldr	r2, [r2, #12]
    1cf0:	2118      	movs	r1, #24
    1cf2:	430a      	orrs	r2, r1
    1cf4:	60da      	str	r2, [r3, #12]
    1cf6:	4b1a      	ldr	r3, [pc, #104]	; (1d60 <PortConfig+0x13c>)
    1cf8:	4a19      	ldr	r2, [pc, #100]	; (1d60 <PortConfig+0x13c>)
    1cfa:	6992      	ldr	r2, [r2, #24]
    1cfc:	21f0      	movs	r1, #240	; 0xf0
    1cfe:	0089      	lsls	r1, r1, #2
    1d00:	430a      	orrs	r2, r1
    1d02:	619a      	str	r2, [r3, #24]
    1d04:	4b16      	ldr	r3, [pc, #88]	; (1d60 <PortConfig+0x13c>)
    1d06:	4a16      	ldr	r2, [pc, #88]	; (1d60 <PortConfig+0x13c>)
    1d08:	6812      	ldr	r2, [r2, #0]
    1d0a:	2118      	movs	r1, #24
    1d0c:	438a      	bics	r2, r1
    1d0e:	601a      	str	r2, [r3, #0]
    1d10:	4b13      	ldr	r3, [pc, #76]	; (1d60 <PortConfig+0x13c>)
    1d12:	4a13      	ldr	r2, [pc, #76]	; (1d60 <PortConfig+0x13c>)
    1d14:	68d2      	ldr	r2, [r2, #12]
    1d16:	2120      	movs	r1, #32
    1d18:	430a      	orrs	r2, r1
    1d1a:	60da      	str	r2, [r3, #12]
    1d1c:	4b10      	ldr	r3, [pc, #64]	; (1d60 <PortConfig+0x13c>)
    1d1e:	4a10      	ldr	r2, [pc, #64]	; (1d60 <PortConfig+0x13c>)
    1d20:	6892      	ldr	r2, [r2, #8]
    1d22:	2180      	movs	r1, #128	; 0x80
    1d24:	00c9      	lsls	r1, r1, #3
    1d26:	430a      	orrs	r2, r1
    1d28:	609a      	str	r2, [r3, #8]
    1d2a:	201c      	movs	r0, #28
    1d2c:	f7ff fef0 	bl	1b10 <__NVIC_ClearPendingIRQ>
    1d30:	4b0d      	ldr	r3, [pc, #52]	; (1d68 <PortConfig+0x144>)
    1d32:	4a0d      	ldr	r2, [pc, #52]	; (1d68 <PortConfig+0x144>)
    1d34:	68d2      	ldr	r2, [r2, #12]
    1d36:	2106      	movs	r1, #6
    1d38:	438a      	bics	r2, r1
    1d3a:	60da      	str	r2, [r3, #12]
    1d3c:	46c0      	nop			; (mov r8, r8)
    1d3e:	46bd      	mov	sp, r7
    1d40:	bd80      	pop	{r7, pc}
    1d42:	46c0      	nop			; (mov r8, r8)
    1d44:	400b0000 	.word	0x400b0000
    1d48:	ffff21ff 	.word	0xffff21ff
    1d4c:	f3fc0000 	.word	0xf3fc0000
    1d50:	000001ff 	.word	0x000001ff
    1d54:	0003ffff 	.word	0x0003ffff
    1d58:	400c0000 	.word	0x400c0000
    1d5c:	ffff1fff 	.word	0xffff1fff
    1d60:	400b8000 	.word	0x400b8000
    1d64:	fffffc3f 	.word	0xfffffc3f
    1d68:	400c8000 	.word	0x400c8000

00001d6c <ClkConfig>:
    1d6c:	b580      	push	{r7, lr}
    1d6e:	af00      	add	r7, sp, #0
    1d70:	4b4b      	ldr	r3, [pc, #300]	; (1ea0 <ClkConfig+0x134>)
    1d72:	2280      	movs	r2, #128	; 0x80
    1d74:	0092      	lsls	r2, r2, #2
    1d76:	619a      	str	r2, [r3, #24]
    1d78:	4b4a      	ldr	r3, [pc, #296]	; (1ea4 <ClkConfig+0x138>)
    1d7a:	4a4a      	ldr	r2, [pc, #296]	; (1ea4 <ClkConfig+0x138>)
    1d7c:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1d7e:	2118      	movs	r1, #24
    1d80:	430a      	orrs	r2, r1
    1d82:	63da      	str	r2, [r3, #60]	; 0x3c
    1d84:	4b47      	ldr	r3, [pc, #284]	; (1ea4 <ClkConfig+0x138>)
    1d86:	4a48      	ldr	r2, [pc, #288]	; (1ea8 <ClkConfig+0x13c>)
    1d88:	649a      	str	r2, [r3, #72]	; 0x48
    1d8a:	4b46      	ldr	r3, [pc, #280]	; (1ea4 <ClkConfig+0x138>)
    1d8c:	2201      	movs	r2, #1
    1d8e:	645a      	str	r2, [r3, #68]	; 0x44
    1d90:	4b43      	ldr	r3, [pc, #268]	; (1ea0 <ClkConfig+0x134>)
    1d92:	4a43      	ldr	r2, [pc, #268]	; (1ea0 <ClkConfig+0x134>)
    1d94:	6892      	ldr	r2, [r2, #8]
    1d96:	2105      	movs	r1, #5
    1d98:	430a      	orrs	r2, r1
    1d9a:	609a      	str	r2, [r3, #8]
    1d9c:	46c0      	nop			; (mov r8, r8)
    1d9e:	4b40      	ldr	r3, [pc, #256]	; (1ea0 <ClkConfig+0x134>)
    1da0:	681b      	ldr	r3, [r3, #0]
    1da2:	220c      	movs	r2, #12
    1da4:	4013      	ands	r3, r2
    1da6:	2b0c      	cmp	r3, #12
    1da8:	d1f9      	bne.n	1d9e <ClkConfig+0x32>
    1daa:	4b3d      	ldr	r3, [pc, #244]	; (1ea0 <ClkConfig+0x134>)
    1dac:	4a3c      	ldr	r2, [pc, #240]	; (1ea0 <ClkConfig+0x134>)
    1dae:	68d2      	ldr	r2, [r2, #12]
    1db0:	2102      	movs	r1, #2
    1db2:	430a      	orrs	r2, r1
    1db4:	60da      	str	r2, [r3, #12]
    1db6:	4b3a      	ldr	r3, [pc, #232]	; (1ea0 <ClkConfig+0x134>)
    1db8:	4a3c      	ldr	r2, [pc, #240]	; (1eac <ClkConfig+0x140>)
    1dba:	605a      	str	r2, [r3, #4]
    1dbc:	46c0      	nop			; (mov r8, r8)
    1dbe:	4b38      	ldr	r3, [pc, #224]	; (1ea0 <ClkConfig+0x134>)
    1dc0:	681b      	ldr	r3, [r3, #0]
    1dc2:	2202      	movs	r2, #2
    1dc4:	4013      	ands	r3, r2
    1dc6:	d0fa      	beq.n	1dbe <ClkConfig+0x52>
    1dc8:	4b35      	ldr	r3, [pc, #212]	; (1ea0 <ClkConfig+0x134>)
    1dca:	4a35      	ldr	r2, [pc, #212]	; (1ea0 <ClkConfig+0x134>)
    1dcc:	69d2      	ldr	r2, [r2, #28]
    1dce:	2108      	movs	r1, #8
    1dd0:	430a      	orrs	r2, r1
    1dd2:	61da      	str	r2, [r3, #28]
    1dd4:	4b36      	ldr	r3, [pc, #216]	; (1eb0 <ClkConfig+0x144>)
    1dd6:	4a36      	ldr	r2, [pc, #216]	; (1eb0 <ClkConfig+0x144>)
    1dd8:	6812      	ldr	r2, [r2, #0]
    1dda:	2118      	movs	r1, #24
    1ddc:	430a      	orrs	r2, r1
    1dde:	601a      	str	r2, [r3, #0]
    1de0:	4b2f      	ldr	r3, [pc, #188]	; (1ea0 <ClkConfig+0x134>)
    1de2:	4a2f      	ldr	r2, [pc, #188]	; (1ea0 <ClkConfig+0x134>)
    1de4:	69d2      	ldr	r2, [r2, #28]
    1de6:	2108      	movs	r1, #8
    1de8:	438a      	bics	r2, r1
    1dea:	61da      	str	r2, [r3, #28]
    1dec:	4b2c      	ldr	r3, [pc, #176]	; (1ea0 <ClkConfig+0x134>)
    1dee:	4a2c      	ldr	r2, [pc, #176]	; (1ea0 <ClkConfig+0x134>)
    1df0:	68d2      	ldr	r2, [r2, #12]
    1df2:	2180      	movs	r1, #128	; 0x80
    1df4:	0049      	lsls	r1, r1, #1
    1df6:	430a      	orrs	r2, r1
    1df8:	60da      	str	r2, [r3, #12]
    1dfa:	4b29      	ldr	r3, [pc, #164]	; (1ea0 <ClkConfig+0x134>)
    1dfc:	4a28      	ldr	r2, [pc, #160]	; (1ea0 <ClkConfig+0x134>)
    1dfe:	68d2      	ldr	r2, [r2, #12]
    1e00:	2104      	movs	r1, #4
    1e02:	430a      	orrs	r2, r1
    1e04:	60da      	str	r2, [r3, #12]
    1e06:	4b26      	ldr	r3, [pc, #152]	; (1ea0 <ClkConfig+0x134>)
    1e08:	22e4      	movs	r2, #228	; 0xe4
    1e0a:	0592      	lsls	r2, r2, #22
    1e0c:	635a      	str	r2, [r3, #52]	; 0x34
    1e0e:	4b24      	ldr	r3, [pc, #144]	; (1ea0 <ClkConfig+0x134>)
    1e10:	4a23      	ldr	r2, [pc, #140]	; (1ea0 <ClkConfig+0x134>)
    1e12:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1e14:	2180      	movs	r1, #128	; 0x80
    1e16:	0449      	lsls	r1, r1, #17
    1e18:	430a      	orrs	r2, r1
    1e1a:	625a      	str	r2, [r3, #36]	; 0x24
    1e1c:	4b20      	ldr	r3, [pc, #128]	; (1ea0 <ClkConfig+0x134>)
    1e1e:	4a20      	ldr	r2, [pc, #128]	; (1ea0 <ClkConfig+0x134>)
    1e20:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1e22:	21ff      	movs	r1, #255	; 0xff
    1e24:	438a      	bics	r2, r1
    1e26:	625a      	str	r2, [r3, #36]	; 0x24
    1e28:	4b1d      	ldr	r3, [pc, #116]	; (1ea0 <ClkConfig+0x134>)
    1e2a:	4a1d      	ldr	r2, [pc, #116]	; (1ea0 <ClkConfig+0x134>)
    1e2c:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1e2e:	2180      	movs	r1, #128	; 0x80
    1e30:	0489      	lsls	r1, r1, #18
    1e32:	430a      	orrs	r2, r1
    1e34:	625a      	str	r2, [r3, #36]	; 0x24
    1e36:	4b1a      	ldr	r3, [pc, #104]	; (1ea0 <ClkConfig+0x134>)
    1e38:	4a19      	ldr	r2, [pc, #100]	; (1ea0 <ClkConfig+0x134>)
    1e3a:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1e3c:	491d      	ldr	r1, [pc, #116]	; (1eb4 <ClkConfig+0x148>)
    1e3e:	400a      	ands	r2, r1
    1e40:	625a      	str	r2, [r3, #36]	; 0x24
    1e42:	4b17      	ldr	r3, [pc, #92]	; (1ea0 <ClkConfig+0x134>)
    1e44:	4a16      	ldr	r2, [pc, #88]	; (1ea0 <ClkConfig+0x134>)
    1e46:	69d2      	ldr	r2, [r2, #28]
    1e48:	491b      	ldr	r1, [pc, #108]	; (1eb8 <ClkConfig+0x14c>)
    1e4a:	430a      	orrs	r2, r1
    1e4c:	61da      	str	r2, [r3, #28]
    1e4e:	4b14      	ldr	r3, [pc, #80]	; (1ea0 <ClkConfig+0x134>)
    1e50:	4a13      	ldr	r2, [pc, #76]	; (1ea0 <ClkConfig+0x134>)
    1e52:	69d2      	ldr	r2, [r2, #28]
    1e54:	2180      	movs	r1, #128	; 0x80
    1e56:	430a      	orrs	r2, r1
    1e58:	61da      	str	r2, [r3, #28]
    1e5a:	4b11      	ldr	r3, [pc, #68]	; (1ea0 <ClkConfig+0x134>)
    1e5c:	4a10      	ldr	r2, [pc, #64]	; (1ea0 <ClkConfig+0x134>)
    1e5e:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1e60:	2180      	movs	r1, #128	; 0x80
    1e62:	0489      	lsls	r1, r1, #18
    1e64:	430a      	orrs	r2, r1
    1e66:	629a      	str	r2, [r3, #40]	; 0x28
    1e68:	4b0d      	ldr	r3, [pc, #52]	; (1ea0 <ClkConfig+0x134>)
    1e6a:	4a0d      	ldr	r2, [pc, #52]	; (1ea0 <ClkConfig+0x134>)
    1e6c:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1e6e:	4911      	ldr	r1, [pc, #68]	; (1eb4 <ClkConfig+0x148>)
    1e70:	400a      	ands	r2, r1
    1e72:	629a      	str	r2, [r3, #40]	; 0x28
    1e74:	4b0a      	ldr	r3, [pc, #40]	; (1ea0 <ClkConfig+0x134>)
    1e76:	4a0a      	ldr	r2, [pc, #40]	; (1ea0 <ClkConfig+0x134>)
    1e78:	69d2      	ldr	r2, [r2, #28]
    1e7a:	2140      	movs	r1, #64	; 0x40
    1e7c:	430a      	orrs	r2, r1
    1e7e:	61da      	str	r2, [r3, #28]
    1e80:	4b07      	ldr	r3, [pc, #28]	; (1ea0 <ClkConfig+0x134>)
    1e82:	4a07      	ldr	r2, [pc, #28]	; (1ea0 <ClkConfig+0x134>)
    1e84:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1e86:	2180      	movs	r1, #128	; 0x80
    1e88:	0449      	lsls	r1, r1, #17
    1e8a:	430a      	orrs	r2, r1
    1e8c:	629a      	str	r2, [r3, #40]	; 0x28
    1e8e:	4b04      	ldr	r3, [pc, #16]	; (1ea0 <ClkConfig+0x134>)
    1e90:	4a03      	ldr	r2, [pc, #12]	; (1ea0 <ClkConfig+0x134>)
    1e92:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1e94:	21ff      	movs	r1, #255	; 0xff
    1e96:	438a      	bics	r2, r1
    1e98:	629a      	str	r2, [r3, #40]	; 0x28
    1e9a:	46c0      	nop			; (mov r8, r8)
    1e9c:	46bd      	mov	sp, r7
    1e9e:	bd80      	pop	{r7, pc}
    1ea0:	40020000 	.word	0x40020000
    1ea4:	400d8000 	.word	0x400d8000
    1ea8:	000fffff 	.word	0x000fffff
    1eac:	00000b04 	.word	0x00000b04
    1eb0:	40018000 	.word	0x40018000
    1eb4:	ffff00ff 	.word	0xffff00ff
    1eb8:	03c4c000 	.word	0x03c4c000

00001ebc <TimerConfig>:
    1ebc:	b580      	push	{r7, lr}
    1ebe:	af00      	add	r7, sp, #0
    1ec0:	4b19      	ldr	r3, [pc, #100]	; (1f28 <TimerConfig+0x6c>)
    1ec2:	2200      	movs	r2, #0
    1ec4:	601a      	str	r2, [r3, #0]
    1ec6:	4b18      	ldr	r3, [pc, #96]	; (1f28 <TimerConfig+0x6c>)
    1ec8:	225f      	movs	r2, #95	; 0x5f
    1eca:	605a      	str	r2, [r3, #4]
    1ecc:	4b16      	ldr	r3, [pc, #88]	; (1f28 <TimerConfig+0x6c>)
    1ece:	4a17      	ldr	r2, [pc, #92]	; (1f2c <TimerConfig+0x70>)
    1ed0:	609a      	str	r2, [r3, #8]
    1ed2:	4b15      	ldr	r3, [pc, #84]	; (1f28 <TimerConfig+0x6c>)
    1ed4:	4a14      	ldr	r2, [pc, #80]	; (1f28 <TimerConfig+0x6c>)
    1ed6:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1ed8:	2102      	movs	r1, #2
    1eda:	430a      	orrs	r2, r1
    1edc:	659a      	str	r2, [r3, #88]	; 0x58
    1ede:	4b12      	ldr	r3, [pc, #72]	; (1f28 <TimerConfig+0x6c>)
    1ee0:	4a11      	ldr	r2, [pc, #68]	; (1f28 <TimerConfig+0x6c>)
    1ee2:	68d2      	ldr	r2, [r2, #12]
    1ee4:	2101      	movs	r1, #1
    1ee6:	430a      	orrs	r2, r1
    1ee8:	60da      	str	r2, [r3, #12]
    1eea:	200e      	movs	r0, #14
    1eec:	f7ff fdf6 	bl	1adc <__NVIC_EnableIRQ>
    1ef0:	4b0f      	ldr	r3, [pc, #60]	; (1f30 <TimerConfig+0x74>)
    1ef2:	2200      	movs	r2, #0
    1ef4:	601a      	str	r2, [r3, #0]
    1ef6:	4b0e      	ldr	r3, [pc, #56]	; (1f30 <TimerConfig+0x74>)
    1ef8:	225f      	movs	r2, #95	; 0x5f
    1efa:	605a      	str	r2, [r3, #4]
    1efc:	4b0c      	ldr	r3, [pc, #48]	; (1f30 <TimerConfig+0x74>)
    1efe:	22ee      	movs	r2, #238	; 0xee
    1f00:	0092      	lsls	r2, r2, #2
    1f02:	609a      	str	r2, [r3, #8]
    1f04:	4b0a      	ldr	r3, [pc, #40]	; (1f30 <TimerConfig+0x74>)
    1f06:	4a0a      	ldr	r2, [pc, #40]	; (1f30 <TimerConfig+0x74>)
    1f08:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1f0a:	2102      	movs	r1, #2
    1f0c:	430a      	orrs	r2, r1
    1f0e:	659a      	str	r2, [r3, #88]	; 0x58
    1f10:	4b07      	ldr	r3, [pc, #28]	; (1f30 <TimerConfig+0x74>)
    1f12:	4a07      	ldr	r2, [pc, #28]	; (1f30 <TimerConfig+0x74>)
    1f14:	68d2      	ldr	r2, [r2, #12]
    1f16:	2101      	movs	r1, #1
    1f18:	430a      	orrs	r2, r1
    1f1a:	60da      	str	r2, [r3, #12]
    1f1c:	200f      	movs	r0, #15
    1f1e:	f7ff fddd 	bl	1adc <__NVIC_EnableIRQ>
    1f22:	46c0      	nop			; (mov r8, r8)
    1f24:	46bd      	mov	sp, r7
    1f26:	bd80      	pop	{r7, pc}
    1f28:	40070000 	.word	0x40070000
    1f2c:	0001869f 	.word	0x0001869f
    1f30:	40078000 	.word	0x40078000

00001f34 <dac_init>:
    1f34:	b580      	push	{r7, lr}
    1f36:	af00      	add	r7, sp, #0
    1f38:	4b04      	ldr	r3, [pc, #16]	; (1f4c <dac_init+0x18>)
    1f3a:	4a04      	ldr	r2, [pc, #16]	; (1f4c <dac_init+0x18>)
    1f3c:	6812      	ldr	r2, [r2, #0]
    1f3e:	210c      	movs	r1, #12
    1f40:	430a      	orrs	r2, r1
    1f42:	601a      	str	r2, [r3, #0]
    1f44:	46c0      	nop			; (mov r8, r8)
    1f46:	46bd      	mov	sp, r7
    1f48:	bd80      	pop	{r7, pc}
    1f4a:	46c0      	nop			; (mov r8, r8)
    1f4c:	40090000 	.word	0x40090000

00001f50 <SystemInit>:
    1f50:	b580      	push	{r7, lr}
    1f52:	af00      	add	r7, sp, #0
    1f54:	f7ff ff0a 	bl	1d6c <ClkConfig>
    1f58:	f7ff fe64 	bl	1c24 <PortConfig>
    1f5c:	f7ff ffae 	bl	1ebc <TimerConfig>
    1f60:	f7ff ffe8 	bl	1f34 <dac_init>
    1f64:	2100      	movs	r1, #0
    1f66:	2012      	movs	r0, #18
    1f68:	f7ff fdee 	bl	1b48 <__NVIC_SetPriority>
    1f6c:	2101      	movs	r1, #1
    1f6e:	200e      	movs	r0, #14
    1f70:	f7ff fdea 	bl	1b48 <__NVIC_SetPriority>
    1f74:	2301      	movs	r3, #1
    1f76:	425b      	negs	r3, r3
    1f78:	2103      	movs	r1, #3
    1f7a:	0018      	movs	r0, r3
    1f7c:	f7ff fde4 	bl	1b48 <__NVIC_SetPriority>
    1f80:	46c0      	nop			; (mov r8, r8)
    1f82:	46bd      	mov	sp, r7
    1f84:	bd80      	pop	{r7, pc}
    1f86:	46c0      	nop			; (mov r8, r8)

00001f88 <__NVIC_EnableIRQ>:
    1f88:	b580      	push	{r7, lr}
    1f8a:	b082      	sub	sp, #8
    1f8c:	af00      	add	r7, sp, #0
    1f8e:	0002      	movs	r2, r0
    1f90:	1dfb      	adds	r3, r7, #7
    1f92:	701a      	strb	r2, [r3, #0]
    1f94:	1dfb      	adds	r3, r7, #7
    1f96:	781b      	ldrb	r3, [r3, #0]
    1f98:	2b7f      	cmp	r3, #127	; 0x7f
    1f9a:	d809      	bhi.n	1fb0 <__NVIC_EnableIRQ+0x28>
    1f9c:	4b06      	ldr	r3, [pc, #24]	; (1fb8 <__NVIC_EnableIRQ+0x30>)
    1f9e:	1dfa      	adds	r2, r7, #7
    1fa0:	7812      	ldrb	r2, [r2, #0]
    1fa2:	0011      	movs	r1, r2
    1fa4:	221f      	movs	r2, #31
    1fa6:	400a      	ands	r2, r1
    1fa8:	2101      	movs	r1, #1
    1faa:	4091      	lsls	r1, r2
    1fac:	000a      	movs	r2, r1
    1fae:	601a      	str	r2, [r3, #0]
    1fb0:	46c0      	nop			; (mov r8, r8)
    1fb2:	46bd      	mov	sp, r7
    1fb4:	b002      	add	sp, #8
    1fb6:	bd80      	pop	{r7, pc}
    1fb8:	e000e100 	.word	0xe000e100

00001fbc <RemoteMacInit>:
    1fbc:	b580      	push	{r7, lr}
    1fbe:	af00      	add	r7, sp, #0
    1fc0:	4b0a      	ldr	r3, [pc, #40]	; (1fec <RemoteMacInit+0x30>)
    1fc2:	2200      	movs	r2, #0
    1fc4:	801a      	strh	r2, [r3, #0]
    1fc6:	4b09      	ldr	r3, [pc, #36]	; (1fec <RemoteMacInit+0x30>)
    1fc8:	2200      	movs	r2, #0
    1fca:	805a      	strh	r2, [r3, #2]
    1fcc:	4b07      	ldr	r3, [pc, #28]	; (1fec <RemoteMacInit+0x30>)
    1fce:	2200      	movs	r2, #0
    1fd0:	809a      	strh	r2, [r3, #4]
    1fd2:	4b06      	ldr	r3, [pc, #24]	; (1fec <RemoteMacInit+0x30>)
    1fd4:	2200      	movs	r2, #0
    1fd6:	80da      	strh	r2, [r3, #6]
    1fd8:	4b04      	ldr	r3, [pc, #16]	; (1fec <RemoteMacInit+0x30>)
    1fda:	2200      	movs	r2, #0
    1fdc:	811a      	strh	r2, [r3, #8]
    1fde:	4b03      	ldr	r3, [pc, #12]	; (1fec <RemoteMacInit+0x30>)
    1fe0:	2200      	movs	r2, #0
    1fe2:	815a      	strh	r2, [r3, #10]
    1fe4:	46c0      	nop			; (mov r8, r8)
    1fe6:	46bd      	mov	sp, r7
    1fe8:	bd80      	pop	{r7, pc}
    1fea:	46c0      	nop			; (mov r8, r8)
    1fec:	20004d1c 	.word	0x20004d1c

00001ff0 <PHYInit>:
    1ff0:	b580      	push	{r7, lr}
    1ff2:	b084      	sub	sp, #16
    1ff4:	af00      	add	r7, sp, #0
    1ff6:	0002      	movs	r2, r0
    1ff8:	1dfb      	adds	r3, r7, #7
    1ffa:	701a      	strb	r2, [r3, #0]
    1ffc:	1dbb      	adds	r3, r7, #6
    1ffe:	1c0a      	adds	r2, r1, #0
    2000:	701a      	strb	r2, [r3, #0]
    2002:	23c0      	movs	r3, #192	; 0xc0
    2004:	059b      	lsls	r3, r3, #22
    2006:	8e9b      	ldrh	r3, [r3, #52]	; 0x34
    2008:	b29b      	uxth	r3, r3
    200a:	60fb      	str	r3, [r7, #12]
    200c:	68fa      	ldr	r2, [r7, #12]
    200e:	23ee      	movs	r3, #238	; 0xee
    2010:	00db      	lsls	r3, r3, #3
    2012:	4013      	ands	r3, r2
    2014:	60fb      	str	r3, [r7, #12]
    2016:	1dfb      	adds	r3, r7, #7
    2018:	781b      	ldrb	r3, [r3, #0]
    201a:	02da      	lsls	r2, r3, #11
    201c:	1dbb      	adds	r3, r7, #6
    201e:	781b      	ldrb	r3, [r3, #0]
    2020:	005b      	lsls	r3, r3, #1
    2022:	4313      	orrs	r3, r2
    2024:	001a      	movs	r2, r3
    2026:	68fb      	ldr	r3, [r7, #12]
    2028:	4313      	orrs	r3, r2
    202a:	2201      	movs	r2, #1
    202c:	4313      	orrs	r3, r2
    202e:	60fb      	str	r3, [r7, #12]
    2030:	23c0      	movs	r3, #192	; 0xc0
    2032:	059b      	lsls	r3, r3, #22
    2034:	68fa      	ldr	r2, [r7, #12]
    2036:	b292      	uxth	r2, r2
    2038:	869a      	strh	r2, [r3, #52]	; 0x34
    203a:	46c0      	nop			; (mov r8, r8)
    203c:	23c0      	movs	r3, #192	; 0xc0
    203e:	059b      	lsls	r3, r3, #22
    2040:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    2042:	b29b      	uxth	r3, r3
    2044:	001a      	movs	r2, r3
    2046:	2310      	movs	r3, #16
    2048:	4013      	ands	r3, r2
    204a:	d0f7      	beq.n	203c <PHYInit+0x4c>
    204c:	46c0      	nop			; (mov r8, r8)
    204e:	46bd      	mov	sp, r7
    2050:	b004      	add	sp, #16
    2052:	bd80      	pop	{r7, pc}

00002054 <SetPHYReg>:
    2054:	b590      	push	{r4, r7, lr}
    2056:	b085      	sub	sp, #20
    2058:	af00      	add	r7, sp, #0
    205a:	0004      	movs	r4, r0
    205c:	0008      	movs	r0, r1
    205e:	0011      	movs	r1, r2
    2060:	1dfb      	adds	r3, r7, #7
    2062:	1c22      	adds	r2, r4, #0
    2064:	701a      	strb	r2, [r3, #0]
    2066:	1dbb      	adds	r3, r7, #6
    2068:	1c02      	adds	r2, r0, #0
    206a:	701a      	strb	r2, [r3, #0]
    206c:	1d3b      	adds	r3, r7, #4
    206e:	1c0a      	adds	r2, r1, #0
    2070:	801a      	strh	r2, [r3, #0]
    2072:	23c0      	movs	r3, #192	; 0xc0
    2074:	059b      	lsls	r3, r3, #22
    2076:	1d3a      	adds	r2, r7, #4
    2078:	8812      	ldrh	r2, [r2, #0]
    207a:	84da      	strh	r2, [r3, #38]	; 0x26
    207c:	1dfb      	adds	r3, r7, #7
    207e:	781b      	ldrb	r3, [r3, #0]
    2080:	021a      	lsls	r2, r3, #8
    2082:	23f8      	movs	r3, #248	; 0xf8
    2084:	015b      	lsls	r3, r3, #5
    2086:	4013      	ands	r3, r2
    2088:	22c0      	movs	r2, #192	; 0xc0
    208a:	0212      	lsls	r2, r2, #8
    208c:	431a      	orrs	r2, r3
    208e:	1dbb      	adds	r3, r7, #6
    2090:	781b      	ldrb	r3, [r3, #0]
    2092:	211f      	movs	r1, #31
    2094:	400b      	ands	r3, r1
    2096:	4313      	orrs	r3, r2
    2098:	2220      	movs	r2, #32
    209a:	4313      	orrs	r3, r2
    209c:	60fb      	str	r3, [r7, #12]
    209e:	23c0      	movs	r3, #192	; 0xc0
    20a0:	059b      	lsls	r3, r3, #22
    20a2:	68fa      	ldr	r2, [r7, #12]
    20a4:	b292      	uxth	r2, r2
    20a6:	849a      	strh	r2, [r3, #36]	; 0x24
    20a8:	46c0      	nop			; (mov r8, r8)
    20aa:	23c0      	movs	r3, #192	; 0xc0
    20ac:	059b      	lsls	r3, r3, #22
    20ae:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    20b0:	b29b      	uxth	r3, r3
    20b2:	b21b      	sxth	r3, r3
    20b4:	2b00      	cmp	r3, #0
    20b6:	daf8      	bge.n	20aa <SetPHYReg+0x56>
    20b8:	46c0      	nop			; (mov r8, r8)
    20ba:	46bd      	mov	sp, r7
    20bc:	b005      	add	sp, #20
    20be:	bd90      	pop	{r4, r7, pc}

000020c0 <GetPHYReg>:
    20c0:	b580      	push	{r7, lr}
    20c2:	b084      	sub	sp, #16
    20c4:	af00      	add	r7, sp, #0
    20c6:	0002      	movs	r2, r0
    20c8:	1dfb      	adds	r3, r7, #7
    20ca:	701a      	strb	r2, [r3, #0]
    20cc:	1dbb      	adds	r3, r7, #6
    20ce:	1c0a      	adds	r2, r1, #0
    20d0:	701a      	strb	r2, [r3, #0]
    20d2:	1dfb      	adds	r3, r7, #7
    20d4:	781b      	ldrb	r3, [r3, #0]
    20d6:	021a      	lsls	r2, r3, #8
    20d8:	23f8      	movs	r3, #248	; 0xf8
    20da:	015b      	lsls	r3, r3, #5
    20dc:	4013      	ands	r3, r2
    20de:	4a0e      	ldr	r2, [pc, #56]	; (2118 <GetPHYReg+0x58>)
    20e0:	431a      	orrs	r2, r3
    20e2:	1dbb      	adds	r3, r7, #6
    20e4:	781b      	ldrb	r3, [r3, #0]
    20e6:	211f      	movs	r1, #31
    20e8:	400b      	ands	r3, r1
    20ea:	4313      	orrs	r3, r2
    20ec:	60fb      	str	r3, [r7, #12]
    20ee:	23c0      	movs	r3, #192	; 0xc0
    20f0:	059b      	lsls	r3, r3, #22
    20f2:	68fa      	ldr	r2, [r7, #12]
    20f4:	b292      	uxth	r2, r2
    20f6:	849a      	strh	r2, [r3, #36]	; 0x24
    20f8:	46c0      	nop			; (mov r8, r8)
    20fa:	23c0      	movs	r3, #192	; 0xc0
    20fc:	059b      	lsls	r3, r3, #22
    20fe:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2100:	b29b      	uxth	r3, r3
    2102:	b21b      	sxth	r3, r3
    2104:	2b00      	cmp	r3, #0
    2106:	daf8      	bge.n	20fa <GetPHYReg+0x3a>
    2108:	23c0      	movs	r3, #192	; 0xc0
    210a:	059b      	lsls	r3, r3, #22
    210c:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    210e:	b29b      	uxth	r3, r3
    2110:	0018      	movs	r0, r3
    2112:	46bd      	mov	sp, r7
    2114:	b004      	add	sp, #16
    2116:	bd80      	pop	{r7, pc}
    2118:	0000e020 	.word	0x0000e020

0000211c <EthernetConfig>:
    211c:	b580      	push	{r7, lr}
    211e:	b082      	sub	sp, #8
    2120:	af00      	add	r7, sp, #0
    2122:	2103      	movs	r1, #3
    2124:	201c      	movs	r0, #28
    2126:	f7ff ff63 	bl	1ff0 <PHYInit>
    212a:	23c0      	movs	r3, #192	; 0xc0
    212c:	059b      	lsls	r3, r3, #22
    212e:	4a12      	ldr	r2, [pc, #72]	; (2178 <EthernetConfig+0x5c>)
    2130:	8812      	ldrh	r2, [r2, #0]
    2132:	805a      	strh	r2, [r3, #2]
    2134:	23c0      	movs	r3, #192	; 0xc0
    2136:	059b      	lsls	r3, r3, #22
    2138:	4a0f      	ldr	r2, [pc, #60]	; (2178 <EthernetConfig+0x5c>)
    213a:	8852      	ldrh	r2, [r2, #2]
    213c:	809a      	strh	r2, [r3, #4]
    213e:	23c0      	movs	r3, #192	; 0xc0
    2140:	059b      	lsls	r3, r3, #22
    2142:	4a0d      	ldr	r2, [pc, #52]	; (2178 <EthernetConfig+0x5c>)
    2144:	8892      	ldrh	r2, [r2, #4]
    2146:	80da      	strh	r2, [r3, #6]
    2148:	f000 f81e 	bl	2188 <MACReset>
    214c:	23c0      	movs	r3, #192	; 0xc0
    214e:	059b      	lsls	r3, r3, #22
    2150:	2207      	movs	r2, #7
    2152:	841a      	strh	r2, [r3, #32]
    2154:	2012      	movs	r0, #18
    2156:	f7ff ff17 	bl	1f88 <__NVIC_EnableIRQ>
    215a:	4b08      	ldr	r3, [pc, #32]	; (217c <EthernetConfig+0x60>)
    215c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    215e:	607b      	str	r3, [r7, #4]
    2160:	687b      	ldr	r3, [r7, #4]
    2162:	b29a      	uxth	r2, r3
    2164:	4b06      	ldr	r3, [pc, #24]	; (2180 <EthernetConfig+0x64>)
    2166:	801a      	strh	r2, [r3, #0]
    2168:	687b      	ldr	r3, [r7, #4]
    216a:	b29a      	uxth	r2, r3
    216c:	4b05      	ldr	r3, [pc, #20]	; (2184 <EthernetConfig+0x68>)
    216e:	801a      	strh	r2, [r3, #0]
    2170:	46c0      	nop			; (mov r8, r8)
    2172:	46bd      	mov	sp, r7
    2174:	b002      	add	sp, #8
    2176:	bd80      	pop	{r7, pc}
    2178:	20000008 	.word	0x20000008
    217c:	400d8000 	.word	0x400d8000
    2180:	20004d30 	.word	0x20004d30
    2184:	20004d32 	.word	0x20004d32

00002188 <MACReset>:
    2188:	b580      	push	{r7, lr}
    218a:	af00      	add	r7, sp, #0
    218c:	23c0      	movs	r3, #192	; 0xc0
    218e:	059b      	lsls	r3, r3, #22
    2190:	22c0      	movs	r2, #192	; 0xc0
    2192:	0592      	lsls	r2, r2, #22
    2194:	8bd2      	ldrh	r2, [r2, #30]
    2196:	b292      	uxth	r2, r2
    2198:	2103      	movs	r1, #3
    219a:	430a      	orrs	r2, r1
    219c:	b292      	uxth	r2, r2
    219e:	83da      	strh	r2, [r3, #30]
    21a0:	f000 f86a 	bl	2278 <ClearMemory>
    21a4:	23c0      	movs	r3, #192	; 0xc0
    21a6:	059b      	lsls	r3, r3, #22
    21a8:	2280      	movs	r2, #128	; 0x80
    21aa:	0152      	lsls	r2, r2, #5
    21ac:	801a      	strh	r2, [r3, #0]
    21ae:	23c0      	movs	r3, #192	; 0xc0
    21b0:	059b      	lsls	r3, r3, #22
    21b2:	2200      	movs	r2, #0
    21b4:	811a      	strh	r2, [r3, #8]
    21b6:	23c0      	movs	r3, #192	; 0xc0
    21b8:	059b      	lsls	r3, r3, #22
    21ba:	2200      	movs	r2, #0
    21bc:	815a      	strh	r2, [r3, #10]
    21be:	23c0      	movs	r3, #192	; 0xc0
    21c0:	059b      	lsls	r3, r3, #22
    21c2:	2200      	movs	r2, #0
    21c4:	819a      	strh	r2, [r3, #12]
    21c6:	23c0      	movs	r3, #192	; 0xc0
    21c8:	059b      	lsls	r3, r3, #22
    21ca:	4a26      	ldr	r2, [pc, #152]	; (2264 <MACReset+0xdc>)
    21cc:	81da      	strh	r2, [r3, #14]
    21ce:	23c0      	movs	r3, #192	; 0xc0
    21d0:	059b      	lsls	r3, r3, #22
    21d2:	2260      	movs	r2, #96	; 0x60
    21d4:	821a      	strh	r2, [r3, #16]
    21d6:	23c0      	movs	r3, #192	; 0xc0
    21d8:	059b      	lsls	r3, r3, #22
    21da:	2250      	movs	r2, #80	; 0x50
    21dc:	825a      	strh	r2, [r3, #18]
    21de:	23c0      	movs	r3, #192	; 0xc0
    21e0:	059b      	lsls	r3, r3, #22
    21e2:	2280      	movs	r2, #128	; 0x80
    21e4:	0092      	lsls	r2, r2, #2
    21e6:	829a      	strh	r2, [r3, #20]
    21e8:	23c0      	movs	r3, #192	; 0xc0
    21ea:	059b      	lsls	r3, r3, #22
    21ec:	2205      	movs	r2, #5
    21ee:	82da      	strh	r2, [r3, #22]
    21f0:	23c0      	movs	r3, #192	; 0xc0
    21f2:	059b      	lsls	r3, r3, #22
    21f4:	4a1c      	ldr	r2, [pc, #112]	; (2268 <MACReset+0xe0>)
    21f6:	831a      	strh	r2, [r3, #24]
    21f8:	23c0      	movs	r3, #192	; 0xc0
    21fa:	059b      	lsls	r3, r3, #22
    21fc:	4a1b      	ldr	r2, [pc, #108]	; (226c <MACReset+0xe4>)
    21fe:	835a      	strh	r2, [r3, #26]
    2200:	23c0      	movs	r3, #192	; 0xc0
    2202:	059b      	lsls	r3, r3, #22
    2204:	2280      	movs	r2, #128	; 0x80
    2206:	839a      	strh	r2, [r3, #28]
    2208:	23c0      	movs	r3, #192	; 0xc0
    220a:	059b      	lsls	r3, r3, #22
    220c:	4a18      	ldr	r2, [pc, #96]	; (2270 <MACReset+0xe8>)
    220e:	83da      	strh	r2, [r3, #30]
    2210:	23c0      	movs	r3, #192	; 0xc0
    2212:	059b      	lsls	r3, r3, #22
    2214:	2200      	movs	r2, #0
    2216:	841a      	strh	r2, [r3, #32]
    2218:	23c0      	movs	r3, #192	; 0xc0
    221a:	059b      	lsls	r3, r3, #22
    221c:	2201      	movs	r2, #1
    221e:	4252      	negs	r2, r2
    2220:	845a      	strh	r2, [r3, #34]	; 0x22
    2222:	23c0      	movs	r3, #192	; 0xc0
    2224:	059b      	lsls	r3, r3, #22
    2226:	2200      	movs	r2, #0
    2228:	851a      	strh	r2, [r3, #40]	; 0x28
    222a:	23c0      	movs	r3, #192	; 0xc0
    222c:	059b      	lsls	r3, r3, #22
    222e:	2280      	movs	r2, #128	; 0x80
    2230:	0152      	lsls	r2, r2, #5
    2232:	855a      	strh	r2, [r3, #42]	; 0x2a
    2234:	23c0      	movs	r3, #192	; 0xc0
    2236:	059b      	lsls	r3, r3, #22
    2238:	22c0      	movs	r2, #192	; 0xc0
    223a:	0592      	lsls	r2, r2, #22
    223c:	8b92      	ldrh	r2, [r2, #28]
    223e:	b292      	uxth	r2, r2
    2240:	490c      	ldr	r1, [pc, #48]	; (2274 <MACReset+0xec>)
    2242:	400a      	ands	r2, r1
    2244:	b292      	uxth	r2, r2
    2246:	839a      	strh	r2, [r3, #28]
    2248:	23c0      	movs	r3, #192	; 0xc0
    224a:	059b      	lsls	r3, r3, #22
    224c:	22c0      	movs	r2, #192	; 0xc0
    224e:	0592      	lsls	r2, r2, #22
    2250:	8bd2      	ldrh	r2, [r2, #30]
    2252:	b292      	uxth	r2, r2
    2254:	2103      	movs	r1, #3
    2256:	438a      	bics	r2, r1
    2258:	b292      	uxth	r2, r2
    225a:	83da      	strh	r2, [r3, #30]
    225c:	46c0      	nop			; (mov r8, r8)
    225e:	46bd      	mov	sp, r7
    2260:	bd80      	pop	{r7, pc}
    2262:	46c0      	nop			; (mov r8, r8)
    2264:	ffff8000 	.word	0xffff8000
    2268:	ffff8606 	.word	0xffff8606
    226c:	ffff81fa 	.word	0xffff81fa
    2270:	00003003 	.word	0x00003003
    2274:	ffffbfff 	.word	0xffffbfff

00002278 <ClearMemory>:
    2278:	b580      	push	{r7, lr}
    227a:	b082      	sub	sp, #8
    227c:	af00      	add	r7, sp, #0
    227e:	23e0      	movs	r3, #224	; 0xe0
    2280:	059b      	lsls	r3, r3, #22
    2282:	603b      	str	r3, [r7, #0]
    2284:	2300      	movs	r3, #0
    2286:	607b      	str	r3, [r7, #4]
    2288:	e007      	b.n	229a <ClearMemory+0x22>
    228a:	683b      	ldr	r3, [r7, #0]
    228c:	1d1a      	adds	r2, r3, #4
    228e:	603a      	str	r2, [r7, #0]
    2290:	2200      	movs	r2, #0
    2292:	601a      	str	r2, [r3, #0]
    2294:	687b      	ldr	r3, [r7, #4]
    2296:	3301      	adds	r3, #1
    2298:	607b      	str	r3, [r7, #4]
    229a:	687b      	ldr	r3, [r7, #4]
    229c:	4a03      	ldr	r2, [pc, #12]	; (22ac <ClearMemory+0x34>)
    229e:	4293      	cmp	r3, r2
    22a0:	d9f3      	bls.n	228a <ClearMemory+0x12>
    22a2:	46c0      	nop			; (mov r8, r8)
    22a4:	46bd      	mov	sp, r7
    22a6:	b002      	add	sp, #8
    22a8:	bd80      	pop	{r7, pc}
    22aa:	46c0      	nop			; (mov r8, r8)
    22ac:	000007ff 	.word	0x000007ff

000022b0 <ReadPacket>:
    22b0:	b580      	push	{r7, lr}
    22b2:	b08a      	sub	sp, #40	; 0x28
    22b4:	af00      	add	r7, sp, #0
    22b6:	6078      	str	r0, [r7, #4]
    22b8:	2316      	movs	r3, #22
    22ba:	18fb      	adds	r3, r7, r3
    22bc:	2200      	movs	r2, #0
    22be:	801a      	strh	r2, [r3, #0]
    22c0:	2326      	movs	r3, #38	; 0x26
    22c2:	18fb      	adds	r3, r7, r3
    22c4:	2200      	movs	r2, #0
    22c6:	801a      	strh	r2, [r3, #0]
    22c8:	4b71      	ldr	r3, [pc, #452]	; (2490 <ReadPacket+0x1e0>)
    22ca:	681a      	ldr	r2, [r3, #0]
    22cc:	2301      	movs	r3, #1
    22ce:	425b      	negs	r3, r3
    22d0:	0019      	movs	r1, r3
    22d2:	0010      	movs	r0, r2
    22d4:	f004 fbc2 	bl	6a5c <osMutexWait>
    22d8:	23c0      	movs	r3, #192	; 0xc0
    22da:	059a      	lsls	r2, r3, #22
    22dc:	2314      	movs	r3, #20
    22de:	18fb      	adds	r3, r7, r3
    22e0:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    22e2:	801a      	strh	r2, [r3, #0]
    22e4:	23c0      	movs	r3, #192	; 0xc0
    22e6:	059a      	lsls	r2, r3, #22
    22e8:	2312      	movs	r3, #18
    22ea:	18fb      	adds	r3, r7, r3
    22ec:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    22ee:	801a      	strh	r2, [r3, #0]
    22f0:	2314      	movs	r3, #20
    22f2:	18fa      	adds	r2, r7, r3
    22f4:	2312      	movs	r3, #18
    22f6:	18fb      	adds	r3, r7, r3
    22f8:	8812      	ldrh	r2, [r2, #0]
    22fa:	881b      	ldrh	r3, [r3, #0]
    22fc:	429a      	cmp	r2, r3
    22fe:	d90e      	bls.n	231e <ReadPacket+0x6e>
    2300:	2326      	movs	r3, #38	; 0x26
    2302:	18fb      	adds	r3, r7, r3
    2304:	2214      	movs	r2, #20
    2306:	18b9      	adds	r1, r7, r2
    2308:	2212      	movs	r2, #18
    230a:	18ba      	adds	r2, r7, r2
    230c:	8809      	ldrh	r1, [r1, #0]
    230e:	8812      	ldrh	r2, [r2, #0]
    2310:	1a8a      	subs	r2, r1, r2
    2312:	801a      	strh	r2, [r3, #0]
    2314:	2316      	movs	r3, #22
    2316:	18fb      	adds	r3, r7, r3
    2318:	2200      	movs	r2, #0
    231a:	801a      	strh	r2, [r3, #0]
    231c:	e00e      	b.n	233c <ReadPacket+0x8c>
    231e:	2326      	movs	r3, #38	; 0x26
    2320:	18fb      	adds	r3, r7, r3
    2322:	2212      	movs	r2, #18
    2324:	18ba      	adds	r2, r7, r2
    2326:	8812      	ldrh	r2, [r2, #0]
    2328:	2180      	movs	r1, #128	; 0x80
    232a:	0149      	lsls	r1, r1, #5
    232c:	1a8a      	subs	r2, r1, r2
    232e:	801a      	strh	r2, [r3, #0]
    2330:	2316      	movs	r3, #22
    2332:	18fb      	adds	r3, r7, r3
    2334:	2214      	movs	r2, #20
    2336:	18ba      	adds	r2, r7, r2
    2338:	8812      	ldrh	r2, [r2, #0]
    233a:	801a      	strh	r2, [r3, #0]
    233c:	2312      	movs	r3, #18
    233e:	18fb      	adds	r3, r7, r3
    2340:	881b      	ldrh	r3, [r3, #0]
    2342:	22e0      	movs	r2, #224	; 0xe0
    2344:	0592      	lsls	r2, r2, #22
    2346:	4694      	mov	ip, r2
    2348:	4463      	add	r3, ip
    234a:	623b      	str	r3, [r7, #32]
    234c:	687b      	ldr	r3, [r7, #4]
    234e:	61fb      	str	r3, [r7, #28]
    2350:	2308      	movs	r3, #8
    2352:	18fa      	adds	r2, r7, r3
    2354:	6a3b      	ldr	r3, [r7, #32]
    2356:	1d19      	adds	r1, r3, #4
    2358:	6239      	str	r1, [r7, #32]
    235a:	681b      	ldr	r3, [r3, #0]
    235c:	6013      	str	r3, [r2, #0]
    235e:	2308      	movs	r3, #8
    2360:	18fb      	adds	r3, r7, r3
    2362:	881b      	ldrh	r3, [r3, #0]
    2364:	3303      	adds	r3, #3
    2366:	2b00      	cmp	r3, #0
    2368:	da00      	bge.n	236c <ReadPacket+0xbc>
    236a:	3303      	adds	r3, #3
    236c:	109b      	asrs	r3, r3, #2
    236e:	60fb      	str	r3, [r7, #12]
    2370:	2326      	movs	r3, #38	; 0x26
    2372:	18fb      	adds	r3, r7, r3
    2374:	2226      	movs	r2, #38	; 0x26
    2376:	18ba      	adds	r2, r7, r2
    2378:	8812      	ldrh	r2, [r2, #0]
    237a:	3a04      	subs	r2, #4
    237c:	801a      	strh	r2, [r3, #0]
    237e:	6a3b      	ldr	r3, [r7, #32]
    2380:	b29b      	uxth	r3, r3
    2382:	4a44      	ldr	r2, [pc, #272]	; (2494 <ReadPacket+0x1e4>)
    2384:	4293      	cmp	r3, r2
    2386:	d902      	bls.n	238e <ReadPacket+0xde>
    2388:	23e0      	movs	r3, #224	; 0xe0
    238a:	059b      	lsls	r3, r3, #22
    238c:	623b      	str	r3, [r7, #32]
    238e:	2308      	movs	r3, #8
    2390:	18fb      	adds	r3, r7, r3
    2392:	881b      	ldrh	r3, [r3, #0]
    2394:	2226      	movs	r2, #38	; 0x26
    2396:	18ba      	adds	r2, r7, r2
    2398:	8812      	ldrh	r2, [r2, #0]
    239a:	429a      	cmp	r2, r3
    239c:	d312      	bcc.n	23c4 <ReadPacket+0x114>
    239e:	2300      	movs	r3, #0
    23a0:	61bb      	str	r3, [r7, #24]
    23a2:	e00a      	b.n	23ba <ReadPacket+0x10a>
    23a4:	69fb      	ldr	r3, [r7, #28]
    23a6:	1d1a      	adds	r2, r3, #4
    23a8:	61fa      	str	r2, [r7, #28]
    23aa:	6a3a      	ldr	r2, [r7, #32]
    23ac:	1d11      	adds	r1, r2, #4
    23ae:	6239      	str	r1, [r7, #32]
    23b0:	6812      	ldr	r2, [r2, #0]
    23b2:	601a      	str	r2, [r3, #0]
    23b4:	69bb      	ldr	r3, [r7, #24]
    23b6:	3301      	adds	r3, #1
    23b8:	61bb      	str	r3, [r7, #24]
    23ba:	69ba      	ldr	r2, [r7, #24]
    23bc:	68fb      	ldr	r3, [r7, #12]
    23be:	429a      	cmp	r2, r3
    23c0:	d3f0      	bcc.n	23a4 <ReadPacket+0xf4>
    23c2:	e034      	b.n	242e <ReadPacket+0x17e>
    23c4:	2326      	movs	r3, #38	; 0x26
    23c6:	18fb      	adds	r3, r7, r3
    23c8:	881b      	ldrh	r3, [r3, #0]
    23ca:	089b      	lsrs	r3, r3, #2
    23cc:	b29b      	uxth	r3, r3
    23ce:	001a      	movs	r2, r3
    23d0:	68fb      	ldr	r3, [r7, #12]
    23d2:	1a9b      	subs	r3, r3, r2
    23d4:	60fb      	str	r3, [r7, #12]
    23d6:	2300      	movs	r3, #0
    23d8:	61bb      	str	r3, [r7, #24]
    23da:	e00a      	b.n	23f2 <ReadPacket+0x142>
    23dc:	69fb      	ldr	r3, [r7, #28]
    23de:	1d1a      	adds	r2, r3, #4
    23e0:	61fa      	str	r2, [r7, #28]
    23e2:	6a3a      	ldr	r2, [r7, #32]
    23e4:	1d11      	adds	r1, r2, #4
    23e6:	6239      	str	r1, [r7, #32]
    23e8:	6812      	ldr	r2, [r2, #0]
    23ea:	601a      	str	r2, [r3, #0]
    23ec:	69bb      	ldr	r3, [r7, #24]
    23ee:	3301      	adds	r3, #1
    23f0:	61bb      	str	r3, [r7, #24]
    23f2:	2326      	movs	r3, #38	; 0x26
    23f4:	18fb      	adds	r3, r7, r3
    23f6:	881b      	ldrh	r3, [r3, #0]
    23f8:	089b      	lsrs	r3, r3, #2
    23fa:	b29b      	uxth	r3, r3
    23fc:	001a      	movs	r2, r3
    23fe:	69bb      	ldr	r3, [r7, #24]
    2400:	429a      	cmp	r2, r3
    2402:	d8eb      	bhi.n	23dc <ReadPacket+0x12c>
    2404:	23e0      	movs	r3, #224	; 0xe0
    2406:	059b      	lsls	r3, r3, #22
    2408:	623b      	str	r3, [r7, #32]
    240a:	2300      	movs	r3, #0
    240c:	61bb      	str	r3, [r7, #24]
    240e:	e00a      	b.n	2426 <ReadPacket+0x176>
    2410:	69fb      	ldr	r3, [r7, #28]
    2412:	1d1a      	adds	r2, r3, #4
    2414:	61fa      	str	r2, [r7, #28]
    2416:	6a3a      	ldr	r2, [r7, #32]
    2418:	1d11      	adds	r1, r2, #4
    241a:	6239      	str	r1, [r7, #32]
    241c:	6812      	ldr	r2, [r2, #0]
    241e:	601a      	str	r2, [r3, #0]
    2420:	69bb      	ldr	r3, [r7, #24]
    2422:	3301      	adds	r3, #1
    2424:	61bb      	str	r3, [r7, #24]
    2426:	69ba      	ldr	r2, [r7, #24]
    2428:	68fb      	ldr	r3, [r7, #12]
    242a:	429a      	cmp	r2, r3
    242c:	d3f0      	bcc.n	2410 <ReadPacket+0x160>
    242e:	6a3b      	ldr	r3, [r7, #32]
    2430:	b29b      	uxth	r3, r3
    2432:	4a18      	ldr	r2, [pc, #96]	; (2494 <ReadPacket+0x1e4>)
    2434:	4293      	cmp	r3, r2
    2436:	d902      	bls.n	243e <ReadPacket+0x18e>
    2438:	23e0      	movs	r3, #224	; 0xe0
    243a:	059b      	lsls	r3, r3, #22
    243c:	623b      	str	r3, [r7, #32]
    243e:	23c0      	movs	r3, #192	; 0xc0
    2440:	059b      	lsls	r3, r3, #22
    2442:	6a3a      	ldr	r2, [r7, #32]
    2444:	b292      	uxth	r2, r2
    2446:	851a      	strh	r2, [r3, #40]	; 0x28
    2448:	23c0      	movs	r3, #192	; 0xc0
    244a:	059b      	lsls	r3, r3, #22
    244c:	22c0      	movs	r2, #192	; 0xc0
    244e:	0592      	lsls	r2, r2, #22
    2450:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    2452:	b292      	uxth	r2, r2
    2454:	3a20      	subs	r2, #32
    2456:	b292      	uxth	r2, r2
    2458:	861a      	strh	r2, [r3, #48]	; 0x30
    245a:	687b      	ldr	r3, [r7, #4]
    245c:	88da      	ldrh	r2, [r3, #6]
    245e:	4b0e      	ldr	r3, [pc, #56]	; (2498 <ReadPacket+0x1e8>)
    2460:	801a      	strh	r2, [r3, #0]
    2462:	687b      	ldr	r3, [r7, #4]
    2464:	891a      	ldrh	r2, [r3, #8]
    2466:	4b0c      	ldr	r3, [pc, #48]	; (2498 <ReadPacket+0x1e8>)
    2468:	805a      	strh	r2, [r3, #2]
    246a:	687b      	ldr	r3, [r7, #4]
    246c:	895a      	ldrh	r2, [r3, #10]
    246e:	4b0a      	ldr	r3, [pc, #40]	; (2498 <ReadPacket+0x1e8>)
    2470:	809a      	strh	r2, [r3, #4]
    2472:	4b09      	ldr	r3, [pc, #36]	; (2498 <ReadPacket+0x1e8>)
    2474:	2201      	movs	r2, #1
    2476:	815a      	strh	r2, [r3, #10]
    2478:	4b05      	ldr	r3, [pc, #20]	; (2490 <ReadPacket+0x1e0>)
    247a:	681b      	ldr	r3, [r3, #0]
    247c:	0018      	movs	r0, r3
    247e:	f004 fafd 	bl	6a7c <osMutexRelease>
    2482:	2308      	movs	r3, #8
    2484:	18fb      	adds	r3, r7, r3
    2486:	881b      	ldrh	r3, [r3, #0]
    2488:	0018      	movs	r0, r3
    248a:	46bd      	mov	sp, r7
    248c:	b00a      	add	sp, #40	; 0x28
    248e:	bd80      	pop	{r7, pc}
    2490:	2000532c 	.word	0x2000532c
    2494:	00000fff 	.word	0x00000fff
    2498:	20004d1c 	.word	0x20004d1c

0000249c <SendPacket>:
    249c:	b580      	push	{r7, lr}
    249e:	b08a      	sub	sp, #40	; 0x28
    24a0:	af00      	add	r7, sp, #0
    24a2:	6078      	str	r0, [r7, #4]
    24a4:	6039      	str	r1, [r7, #0]
    24a6:	4b79      	ldr	r3, [pc, #484]	; (268c <SendPacket+0x1f0>)
    24a8:	681a      	ldr	r2, [r3, #0]
    24aa:	2301      	movs	r3, #1
    24ac:	425b      	negs	r3, r3
    24ae:	0019      	movs	r1, r3
    24b0:	0010      	movs	r0, r2
    24b2:	f004 fad3 	bl	6a5c <osMutexWait>
    24b6:	23c0      	movs	r3, #192	; 0xc0
    24b8:	059b      	lsls	r3, r3, #22
    24ba:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    24bc:	b29b      	uxth	r3, r3
    24be:	61bb      	str	r3, [r7, #24]
    24c0:	23c0      	movs	r3, #192	; 0xc0
    24c2:	059b      	lsls	r3, r3, #22
    24c4:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    24c6:	b29b      	uxth	r3, r3
    24c8:	617b      	str	r3, [r7, #20]
    24ca:	69ba      	ldr	r2, [r7, #24]
    24cc:	697b      	ldr	r3, [r7, #20]
    24ce:	429a      	cmp	r2, r3
    24d0:	d90d      	bls.n	24ee <SendPacket+0x52>
    24d2:	69bb      	ldr	r3, [r7, #24]
    24d4:	b29a      	uxth	r2, r3
    24d6:	697b      	ldr	r3, [r7, #20]
    24d8:	b29b      	uxth	r3, r3
    24da:	1ad3      	subs	r3, r2, r3
    24dc:	b29a      	uxth	r2, r3
    24de:	230c      	movs	r3, #12
    24e0:	18fb      	adds	r3, r7, r3
    24e2:	801a      	strh	r2, [r3, #0]
    24e4:	230c      	movs	r3, #12
    24e6:	18fb      	adds	r3, r7, r3
    24e8:	2200      	movs	r2, #0
    24ea:	805a      	strh	r2, [r3, #2]
    24ec:	e011      	b.n	2512 <SendPacket+0x76>
    24ee:	697b      	ldr	r3, [r7, #20]
    24f0:	b29b      	uxth	r3, r3
    24f2:	2280      	movs	r2, #128	; 0x80
    24f4:	0192      	lsls	r2, r2, #6
    24f6:	1ad3      	subs	r3, r2, r3
    24f8:	b29a      	uxth	r2, r3
    24fa:	230c      	movs	r3, #12
    24fc:	18fb      	adds	r3, r7, r3
    24fe:	801a      	strh	r2, [r3, #0]
    2500:	69bb      	ldr	r3, [r7, #24]
    2502:	b29b      	uxth	r3, r3
    2504:	4a62      	ldr	r2, [pc, #392]	; (2690 <SendPacket+0x1f4>)
    2506:	4694      	mov	ip, r2
    2508:	4463      	add	r3, ip
    250a:	b29a      	uxth	r2, r3
    250c:	230c      	movs	r3, #12
    250e:	18fb      	adds	r3, r7, r3
    2510:	805a      	strh	r2, [r3, #2]
    2512:	230c      	movs	r3, #12
    2514:	18fb      	adds	r3, r7, r3
    2516:	881b      	ldrh	r3, [r3, #0]
    2518:	001a      	movs	r2, r3
    251a:	230c      	movs	r3, #12
    251c:	18fb      	adds	r3, r7, r3
    251e:	885b      	ldrh	r3, [r3, #2]
    2520:	18d3      	adds	r3, r2, r3
    2522:	3b08      	subs	r3, #8
    2524:	001a      	movs	r2, r3
    2526:	683b      	ldr	r3, [r7, #0]
    2528:	429a      	cmp	r2, r3
    252a:	da01      	bge.n	2530 <SendPacket+0x94>
    252c:	2300      	movs	r3, #0
    252e:	e0a9      	b.n	2684 <SendPacket+0x1e8>
    2530:	683b      	ldr	r3, [r7, #0]
    2532:	613b      	str	r3, [r7, #16]
    2534:	687b      	ldr	r3, [r7, #4]
    2536:	623b      	str	r3, [r7, #32]
    2538:	697b      	ldr	r3, [r7, #20]
    253a:	22e0      	movs	r2, #224	; 0xe0
    253c:	0592      	lsls	r2, r2, #22
    253e:	4694      	mov	ip, r2
    2540:	4463      	add	r3, ip
    2542:	61fb      	str	r3, [r7, #28]
    2544:	69fb      	ldr	r3, [r7, #28]
    2546:	1d1a      	adds	r2, r3, #4
    2548:	61fa      	str	r2, [r7, #28]
    254a:	693a      	ldr	r2, [r7, #16]
    254c:	601a      	str	r2, [r3, #0]
    254e:	230c      	movs	r3, #12
    2550:	18fb      	adds	r3, r7, r3
    2552:	881b      	ldrh	r3, [r3, #0]
    2554:	3b04      	subs	r3, #4
    2556:	b29a      	uxth	r2, r3
    2558:	230c      	movs	r3, #12
    255a:	18fb      	adds	r3, r7, r3
    255c:	801a      	strh	r2, [r3, #0]
    255e:	69fb      	ldr	r3, [r7, #28]
    2560:	b29b      	uxth	r3, r3
    2562:	4a4c      	ldr	r2, [pc, #304]	; (2694 <SendPacket+0x1f8>)
    2564:	4293      	cmp	r3, r2
    2566:	d901      	bls.n	256c <SendPacket+0xd0>
    2568:	4b4b      	ldr	r3, [pc, #300]	; (2698 <SendPacket+0x1fc>)
    256a:	61fb      	str	r3, [r7, #28]
    256c:	683b      	ldr	r3, [r7, #0]
    256e:	3303      	adds	r3, #3
    2570:	2b00      	cmp	r3, #0
    2572:	da00      	bge.n	2576 <SendPacket+0xda>
    2574:	3303      	adds	r3, #3
    2576:	109b      	asrs	r3, r3, #2
    2578:	613b      	str	r3, [r7, #16]
    257a:	230c      	movs	r3, #12
    257c:	18fb      	adds	r3, r7, r3
    257e:	881b      	ldrh	r3, [r3, #0]
    2580:	001a      	movs	r2, r3
    2582:	683b      	ldr	r3, [r7, #0]
    2584:	429a      	cmp	r2, r3
    2586:	db1a      	blt.n	25be <SendPacket+0x122>
    2588:	2326      	movs	r3, #38	; 0x26
    258a:	18fb      	adds	r3, r7, r3
    258c:	2200      	movs	r2, #0
    258e:	801a      	strh	r2, [r3, #0]
    2590:	e00e      	b.n	25b0 <SendPacket+0x114>
    2592:	69fb      	ldr	r3, [r7, #28]
    2594:	1d1a      	adds	r2, r3, #4
    2596:	61fa      	str	r2, [r7, #28]
    2598:	6a3a      	ldr	r2, [r7, #32]
    259a:	1d11      	adds	r1, r2, #4
    259c:	6239      	str	r1, [r7, #32]
    259e:	6812      	ldr	r2, [r2, #0]
    25a0:	601a      	str	r2, [r3, #0]
    25a2:	2326      	movs	r3, #38	; 0x26
    25a4:	18fb      	adds	r3, r7, r3
    25a6:	881a      	ldrh	r2, [r3, #0]
    25a8:	2326      	movs	r3, #38	; 0x26
    25aa:	18fb      	adds	r3, r7, r3
    25ac:	3201      	adds	r2, #1
    25ae:	801a      	strh	r2, [r3, #0]
    25b0:	2326      	movs	r3, #38	; 0x26
    25b2:	18fb      	adds	r3, r7, r3
    25b4:	881a      	ldrh	r2, [r3, #0]
    25b6:	693b      	ldr	r3, [r7, #16]
    25b8:	429a      	cmp	r2, r3
    25ba:	d3ea      	bcc.n	2592 <SendPacket+0xf6>
    25bc:	e042      	b.n	2644 <SendPacket+0x1a8>
    25be:	230c      	movs	r3, #12
    25c0:	18fb      	adds	r3, r7, r3
    25c2:	881b      	ldrh	r3, [r3, #0]
    25c4:	089b      	lsrs	r3, r3, #2
    25c6:	b29b      	uxth	r3, r3
    25c8:	001a      	movs	r2, r3
    25ca:	693b      	ldr	r3, [r7, #16]
    25cc:	1a9b      	subs	r3, r3, r2
    25ce:	613b      	str	r3, [r7, #16]
    25d0:	2326      	movs	r3, #38	; 0x26
    25d2:	18fb      	adds	r3, r7, r3
    25d4:	2200      	movs	r2, #0
    25d6:	801a      	strh	r2, [r3, #0]
    25d8:	e00e      	b.n	25f8 <SendPacket+0x15c>
    25da:	69fb      	ldr	r3, [r7, #28]
    25dc:	1d1a      	adds	r2, r3, #4
    25de:	61fa      	str	r2, [r7, #28]
    25e0:	6a3a      	ldr	r2, [r7, #32]
    25e2:	1d11      	adds	r1, r2, #4
    25e4:	6239      	str	r1, [r7, #32]
    25e6:	6812      	ldr	r2, [r2, #0]
    25e8:	601a      	str	r2, [r3, #0]
    25ea:	2326      	movs	r3, #38	; 0x26
    25ec:	18fb      	adds	r3, r7, r3
    25ee:	881a      	ldrh	r2, [r3, #0]
    25f0:	2326      	movs	r3, #38	; 0x26
    25f2:	18fb      	adds	r3, r7, r3
    25f4:	3201      	adds	r2, #1
    25f6:	801a      	strh	r2, [r3, #0]
    25f8:	230c      	movs	r3, #12
    25fa:	18fb      	adds	r3, r7, r3
    25fc:	881b      	ldrh	r3, [r3, #0]
    25fe:	089b      	lsrs	r3, r3, #2
    2600:	b29b      	uxth	r3, r3
    2602:	2226      	movs	r2, #38	; 0x26
    2604:	18ba      	adds	r2, r7, r2
    2606:	8812      	ldrh	r2, [r2, #0]
    2608:	429a      	cmp	r2, r3
    260a:	d3e6      	bcc.n	25da <SendPacket+0x13e>
    260c:	4b22      	ldr	r3, [pc, #136]	; (2698 <SendPacket+0x1fc>)
    260e:	61fb      	str	r3, [r7, #28]
    2610:	2326      	movs	r3, #38	; 0x26
    2612:	18fb      	adds	r3, r7, r3
    2614:	2200      	movs	r2, #0
    2616:	801a      	strh	r2, [r3, #0]
    2618:	e00e      	b.n	2638 <SendPacket+0x19c>
    261a:	69fb      	ldr	r3, [r7, #28]
    261c:	1d1a      	adds	r2, r3, #4
    261e:	61fa      	str	r2, [r7, #28]
    2620:	6a3a      	ldr	r2, [r7, #32]
    2622:	1d11      	adds	r1, r2, #4
    2624:	6239      	str	r1, [r7, #32]
    2626:	6812      	ldr	r2, [r2, #0]
    2628:	601a      	str	r2, [r3, #0]
    262a:	2326      	movs	r3, #38	; 0x26
    262c:	18fb      	adds	r3, r7, r3
    262e:	881a      	ldrh	r2, [r3, #0]
    2630:	2326      	movs	r3, #38	; 0x26
    2632:	18fb      	adds	r3, r7, r3
    2634:	3201      	adds	r2, #1
    2636:	801a      	strh	r2, [r3, #0]
    2638:	2326      	movs	r3, #38	; 0x26
    263a:	18fb      	adds	r3, r7, r3
    263c:	881a      	ldrh	r2, [r3, #0]
    263e:	693b      	ldr	r3, [r7, #16]
    2640:	429a      	cmp	r2, r3
    2642:	d3ea      	bcc.n	261a <SendPacket+0x17e>
    2644:	69fb      	ldr	r3, [r7, #28]
    2646:	b29b      	uxth	r3, r3
    2648:	4a12      	ldr	r2, [pc, #72]	; (2694 <SendPacket+0x1f8>)
    264a:	4293      	cmp	r3, r2
    264c:	d901      	bls.n	2652 <SendPacket+0x1b6>
    264e:	4b12      	ldr	r3, [pc, #72]	; (2698 <SendPacket+0x1fc>)
    2650:	61fb      	str	r3, [r7, #28]
    2652:	2300      	movs	r3, #0
    2654:	613b      	str	r3, [r7, #16]
    2656:	69fb      	ldr	r3, [r7, #28]
    2658:	1d1a      	adds	r2, r3, #4
    265a:	61fa      	str	r2, [r7, #28]
    265c:	693a      	ldr	r2, [r7, #16]
    265e:	601a      	str	r2, [r3, #0]
    2660:	69fb      	ldr	r3, [r7, #28]
    2662:	b29b      	uxth	r3, r3
    2664:	4a0b      	ldr	r2, [pc, #44]	; (2694 <SendPacket+0x1f8>)
    2666:	4293      	cmp	r3, r2
    2668:	d901      	bls.n	266e <SendPacket+0x1d2>
    266a:	4b0b      	ldr	r3, [pc, #44]	; (2698 <SendPacket+0x1fc>)
    266c:	61fb      	str	r3, [r7, #28]
    266e:	23c0      	movs	r3, #192	; 0xc0
    2670:	059b      	lsls	r3, r3, #22
    2672:	69fa      	ldr	r2, [r7, #28]
    2674:	b292      	uxth	r2, r2
    2676:	855a      	strh	r2, [r3, #42]	; 0x2a
    2678:	4b04      	ldr	r3, [pc, #16]	; (268c <SendPacket+0x1f0>)
    267a:	681b      	ldr	r3, [r3, #0]
    267c:	0018      	movs	r0, r3
    267e:	f004 f9fd 	bl	6a7c <osMutexRelease>
    2682:	683b      	ldr	r3, [r7, #0]
    2684:	0018      	movs	r0, r3
    2686:	46bd      	mov	sp, r7
    2688:	b00a      	add	sp, #40	; 0x28
    268a:	bd80      	pop	{r7, pc}
    268c:	20005340 	.word	0x20005340
    2690:	fffff000 	.word	0xfffff000
    2694:	00001ffc 	.word	0x00001ffc
    2698:	38001000 	.word	0x38001000

0000269c <ETHERNET_Handler>:
    269c:	b580      	push	{r7, lr}
    269e:	b082      	sub	sp, #8
    26a0:	af00      	add	r7, sp, #0
    26a2:	23c0      	movs	r3, #192	; 0xc0
    26a4:	059a      	lsls	r2, r3, #22
    26a6:	1dbb      	adds	r3, r7, #6
    26a8:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    26aa:	801a      	strh	r2, [r3, #0]
    26ac:	23c0      	movs	r3, #192	; 0xc0
    26ae:	059b      	lsls	r3, r3, #22
    26b0:	1dba      	adds	r2, r7, #6
    26b2:	8812      	ldrh	r2, [r2, #0]
    26b4:	845a      	strh	r2, [r3, #34]	; 0x22
    26b6:	1dbb      	adds	r3, r7, #6
    26b8:	881b      	ldrh	r3, [r3, #0]
    26ba:	2201      	movs	r2, #1
    26bc:	4013      	ands	r3, r2
    26be:	d008      	beq.n	26d2 <ETHERNET_Handler+0x36>
    26c0:	4b0a      	ldr	r3, [pc, #40]	; (26ec <ETHERNET_Handler+0x50>)
    26c2:	2201      	movs	r2, #1
    26c4:	601a      	str	r2, [r3, #0]
    26c6:	4b0a      	ldr	r3, [pc, #40]	; (26f0 <ETHERNET_Handler+0x54>)
    26c8:	681b      	ldr	r3, [r3, #0]
    26ca:	2101      	movs	r1, #1
    26cc:	0018      	movs	r0, r3
    26ce:	f004 f8e3 	bl	6898 <osSignalSet>
    26d2:	1dbb      	adds	r3, r7, #6
    26d4:	881b      	ldrh	r3, [r3, #0]
    26d6:	2202      	movs	r2, #2
    26d8:	4013      	ands	r3, r2
    26da:	d002      	beq.n	26e2 <ETHERNET_Handler+0x46>
    26dc:	4b05      	ldr	r3, [pc, #20]	; (26f4 <ETHERNET_Handler+0x58>)
    26de:	2201      	movs	r2, #1
    26e0:	601a      	str	r2, [r3, #0]
    26e2:	46c0      	nop			; (mov r8, r8)
    26e4:	46bd      	mov	sp, r7
    26e6:	b002      	add	sp, #8
    26e8:	bd80      	pop	{r7, pc}
    26ea:	46c0      	nop			; (mov r8, r8)
    26ec:	20004d28 	.word	0x20004d28
    26f0:	20000858 	.word	0x20000858
    26f4:	20004d2c 	.word	0x20004d2c

000026f8 <network_config>:
    26f8:	b580      	push	{r7, lr}
    26fa:	af00      	add	r7, sp, #0
    26fc:	46c0      	nop			; (mov r8, r8)
    26fe:	46bd      	mov	sp, r7
    2700:	bd80      	pop	{r7, pc}
    2702:	46c0      	nop			; (mov r8, r8)

00002704 <Answear_ARP>:
    2704:	b580      	push	{r7, lr}
    2706:	b08c      	sub	sp, #48	; 0x30
    2708:	af00      	add	r7, sp, #0
    270a:	4b36      	ldr	r3, [pc, #216]	; (27e4 <Answear_ARP+0xe0>)
    270c:	88da      	ldrh	r2, [r3, #6]
    270e:	1d3b      	adds	r3, r7, #4
    2710:	801a      	strh	r2, [r3, #0]
    2712:	4b34      	ldr	r3, [pc, #208]	; (27e4 <Answear_ARP+0xe0>)
    2714:	891a      	ldrh	r2, [r3, #8]
    2716:	1d3b      	adds	r3, r7, #4
    2718:	805a      	strh	r2, [r3, #2]
    271a:	4b32      	ldr	r3, [pc, #200]	; (27e4 <Answear_ARP+0xe0>)
    271c:	895a      	ldrh	r2, [r3, #10]
    271e:	1d3b      	adds	r3, r7, #4
    2720:	809a      	strh	r2, [r3, #4]
    2722:	23c0      	movs	r3, #192	; 0xc0
    2724:	059b      	lsls	r3, r3, #22
    2726:	885b      	ldrh	r3, [r3, #2]
    2728:	b29a      	uxth	r2, r3
    272a:	1d3b      	adds	r3, r7, #4
    272c:	80da      	strh	r2, [r3, #6]
    272e:	23c0      	movs	r3, #192	; 0xc0
    2730:	059b      	lsls	r3, r3, #22
    2732:	889b      	ldrh	r3, [r3, #4]
    2734:	b29a      	uxth	r2, r3
    2736:	1d3b      	adds	r3, r7, #4
    2738:	811a      	strh	r2, [r3, #8]
    273a:	23c0      	movs	r3, #192	; 0xc0
    273c:	059b      	lsls	r3, r3, #22
    273e:	88db      	ldrh	r3, [r3, #6]
    2740:	b29a      	uxth	r2, r3
    2742:	1d3b      	adds	r3, r7, #4
    2744:	815a      	strh	r2, [r3, #10]
    2746:	4b27      	ldr	r3, [pc, #156]	; (27e4 <Answear_ARP+0xe0>)
    2748:	899a      	ldrh	r2, [r3, #12]
    274a:	1d3b      	adds	r3, r7, #4
    274c:	819a      	strh	r2, [r3, #12]
    274e:	4b25      	ldr	r3, [pc, #148]	; (27e4 <Answear_ARP+0xe0>)
    2750:	89da      	ldrh	r2, [r3, #14]
    2752:	1d3b      	adds	r3, r7, #4
    2754:	81da      	strh	r2, [r3, #14]
    2756:	4b23      	ldr	r3, [pc, #140]	; (27e4 <Answear_ARP+0xe0>)
    2758:	8a1a      	ldrh	r2, [r3, #16]
    275a:	1d3b      	adds	r3, r7, #4
    275c:	821a      	strh	r2, [r3, #16]
    275e:	4b21      	ldr	r3, [pc, #132]	; (27e4 <Answear_ARP+0xe0>)
    2760:	8a5a      	ldrh	r2, [r3, #18]
    2762:	1d3b      	adds	r3, r7, #4
    2764:	825a      	strh	r2, [r3, #18]
    2766:	1d3b      	adds	r3, r7, #4
    2768:	2280      	movs	r2, #128	; 0x80
    276a:	0092      	lsls	r2, r2, #2
    276c:	829a      	strh	r2, [r3, #20]
    276e:	23c0      	movs	r3, #192	; 0xc0
    2770:	059b      	lsls	r3, r3, #22
    2772:	885b      	ldrh	r3, [r3, #2]
    2774:	b29a      	uxth	r2, r3
    2776:	1d3b      	adds	r3, r7, #4
    2778:	82da      	strh	r2, [r3, #22]
    277a:	23c0      	movs	r3, #192	; 0xc0
    277c:	059b      	lsls	r3, r3, #22
    277e:	889b      	ldrh	r3, [r3, #4]
    2780:	b29a      	uxth	r2, r3
    2782:	1d3b      	adds	r3, r7, #4
    2784:	831a      	strh	r2, [r3, #24]
    2786:	23c0      	movs	r3, #192	; 0xc0
    2788:	059b      	lsls	r3, r3, #22
    278a:	88db      	ldrh	r3, [r3, #6]
    278c:	b29a      	uxth	r2, r3
    278e:	1d3b      	adds	r3, r7, #4
    2790:	835a      	strh	r2, [r3, #26]
    2792:	4b15      	ldr	r3, [pc, #84]	; (27e8 <Answear_ARP+0xe4>)
    2794:	881a      	ldrh	r2, [r3, #0]
    2796:	1d3b      	adds	r3, r7, #4
    2798:	839a      	strh	r2, [r3, #28]
    279a:	4b13      	ldr	r3, [pc, #76]	; (27e8 <Answear_ARP+0xe4>)
    279c:	885a      	ldrh	r2, [r3, #2]
    279e:	1d3b      	adds	r3, r7, #4
    27a0:	83da      	strh	r2, [r3, #30]
    27a2:	4b10      	ldr	r3, [pc, #64]	; (27e4 <Answear_ARP+0xe0>)
    27a4:	88da      	ldrh	r2, [r3, #6]
    27a6:	1d3b      	adds	r3, r7, #4
    27a8:	841a      	strh	r2, [r3, #32]
    27aa:	4b0e      	ldr	r3, [pc, #56]	; (27e4 <Answear_ARP+0xe0>)
    27ac:	891a      	ldrh	r2, [r3, #8]
    27ae:	1d3b      	adds	r3, r7, #4
    27b0:	845a      	strh	r2, [r3, #34]	; 0x22
    27b2:	4b0c      	ldr	r3, [pc, #48]	; (27e4 <Answear_ARP+0xe0>)
    27b4:	895a      	ldrh	r2, [r3, #10]
    27b6:	1d3b      	adds	r3, r7, #4
    27b8:	849a      	strh	r2, [r3, #36]	; 0x24
    27ba:	4b0a      	ldr	r3, [pc, #40]	; (27e4 <Answear_ARP+0xe0>)
    27bc:	8b9a      	ldrh	r2, [r3, #28]
    27be:	1d3b      	adds	r3, r7, #4
    27c0:	84da      	strh	r2, [r3, #38]	; 0x26
    27c2:	4b08      	ldr	r3, [pc, #32]	; (27e4 <Answear_ARP+0xe0>)
    27c4:	8bda      	ldrh	r2, [r3, #30]
    27c6:	1d3b      	adds	r3, r7, #4
    27c8:	851a      	strh	r2, [r3, #40]	; 0x28
    27ca:	1d3b      	adds	r3, r7, #4
    27cc:	2200      	movs	r2, #0
    27ce:	855a      	strh	r2, [r3, #42]	; 0x2a
    27d0:	1d3b      	adds	r3, r7, #4
    27d2:	212a      	movs	r1, #42	; 0x2a
    27d4:	0018      	movs	r0, r3
    27d6:	f7ff fe61 	bl	249c <SendPacket>
    27da:	46c0      	nop			; (mov r8, r8)
    27dc:	46bd      	mov	sp, r7
    27de:	b00c      	add	sp, #48	; 0x30
    27e0:	bd80      	pop	{r7, pc}
    27e2:	46c0      	nop			; (mov r8, r8)
    27e4:	20004d38 	.word	0x20004d38
    27e8:	20000010 	.word	0x20000010

000027ec <CheckSum_UDP>:
    27ec:	b580      	push	{r7, lr}
    27ee:	b086      	sub	sp, #24
    27f0:	af00      	add	r7, sp, #0
    27f2:	0002      	movs	r2, r0
    27f4:	6039      	str	r1, [r7, #0]
    27f6:	1dbb      	adds	r3, r7, #6
    27f8:	801a      	strh	r2, [r3, #0]
    27fa:	2300      	movs	r3, #0
    27fc:	613b      	str	r3, [r7, #16]
    27fe:	230d      	movs	r3, #13
    2800:	617b      	str	r3, [r7, #20]
    2802:	e019      	b.n	2838 <CheckSum_UDP+0x4c>
    2804:	697b      	ldr	r3, [r7, #20]
    2806:	005b      	lsls	r3, r3, #1
    2808:	683a      	ldr	r2, [r7, #0]
    280a:	18d3      	adds	r3, r2, r3
    280c:	881b      	ldrh	r3, [r3, #0]
    280e:	021b      	lsls	r3, r3, #8
    2810:	041b      	lsls	r3, r3, #16
    2812:	0c1a      	lsrs	r2, r3, #16
    2814:	697b      	ldr	r3, [r7, #20]
    2816:	005b      	lsls	r3, r3, #1
    2818:	6839      	ldr	r1, [r7, #0]
    281a:	18cb      	adds	r3, r1, r3
    281c:	881b      	ldrh	r3, [r3, #0]
    281e:	0a1b      	lsrs	r3, r3, #8
    2820:	b29b      	uxth	r3, r3
    2822:	0019      	movs	r1, r3
    2824:	23ff      	movs	r3, #255	; 0xff
    2826:	400b      	ands	r3, r1
    2828:	18d3      	adds	r3, r2, r3
    282a:	001a      	movs	r2, r3
    282c:	693b      	ldr	r3, [r7, #16]
    282e:	189b      	adds	r3, r3, r2
    2830:	613b      	str	r3, [r7, #16]
    2832:	697b      	ldr	r3, [r7, #20]
    2834:	3301      	adds	r3, #1
    2836:	617b      	str	r3, [r7, #20]
    2838:	697b      	ldr	r3, [r7, #20]
    283a:	2b10      	cmp	r3, #16
    283c:	d9e2      	bls.n	2804 <CheckSum_UDP+0x18>
    283e:	683b      	ldr	r3, [r7, #0]
    2840:	3316      	adds	r3, #22
    2842:	881b      	ldrh	r3, [r3, #0]
    2844:	0a1b      	lsrs	r3, r3, #8
    2846:	b29b      	uxth	r3, r3
    2848:	001a      	movs	r2, r3
    284a:	23ff      	movs	r3, #255	; 0xff
    284c:	4013      	ands	r3, r2
    284e:	693a      	ldr	r2, [r7, #16]
    2850:	18d3      	adds	r3, r2, r3
    2852:	613b      	str	r3, [r7, #16]
    2854:	1dbb      	adds	r3, r7, #6
    2856:	881b      	ldrh	r3, [r3, #0]
    2858:	693a      	ldr	r2, [r7, #16]
    285a:	18d3      	adds	r3, r2, r3
    285c:	613b      	str	r3, [r7, #16]
    285e:	683b      	ldr	r3, [r7, #0]
    2860:	3322      	adds	r3, #34	; 0x22
    2862:	881b      	ldrh	r3, [r3, #0]
    2864:	021b      	lsls	r3, r3, #8
    2866:	041b      	lsls	r3, r3, #16
    2868:	0c1a      	lsrs	r2, r3, #16
    286a:	683b      	ldr	r3, [r7, #0]
    286c:	3322      	adds	r3, #34	; 0x22
    286e:	881b      	ldrh	r3, [r3, #0]
    2870:	0a1b      	lsrs	r3, r3, #8
    2872:	b29b      	uxth	r3, r3
    2874:	0019      	movs	r1, r3
    2876:	23ff      	movs	r3, #255	; 0xff
    2878:	400b      	ands	r3, r1
    287a:	18d3      	adds	r3, r2, r3
    287c:	001a      	movs	r2, r3
    287e:	693b      	ldr	r3, [r7, #16]
    2880:	189b      	adds	r3, r3, r2
    2882:	613b      	str	r3, [r7, #16]
    2884:	683b      	ldr	r3, [r7, #0]
    2886:	3324      	adds	r3, #36	; 0x24
    2888:	881b      	ldrh	r3, [r3, #0]
    288a:	021b      	lsls	r3, r3, #8
    288c:	041b      	lsls	r3, r3, #16
    288e:	0c1a      	lsrs	r2, r3, #16
    2890:	683b      	ldr	r3, [r7, #0]
    2892:	3324      	adds	r3, #36	; 0x24
    2894:	881b      	ldrh	r3, [r3, #0]
    2896:	0a1b      	lsrs	r3, r3, #8
    2898:	b29b      	uxth	r3, r3
    289a:	0019      	movs	r1, r3
    289c:	23ff      	movs	r3, #255	; 0xff
    289e:	400b      	ands	r3, r1
    28a0:	18d3      	adds	r3, r2, r3
    28a2:	001a      	movs	r2, r3
    28a4:	693b      	ldr	r3, [r7, #16]
    28a6:	189b      	adds	r3, r3, r2
    28a8:	613b      	str	r3, [r7, #16]
    28aa:	1dbb      	adds	r3, r7, #6
    28ac:	881b      	ldrh	r3, [r3, #0]
    28ae:	693a      	ldr	r2, [r7, #16]
    28b0:	18d3      	adds	r3, r2, r3
    28b2:	613b      	str	r3, [r7, #16]
    28b4:	683b      	ldr	r3, [r7, #0]
    28b6:	3328      	adds	r3, #40	; 0x28
    28b8:	881b      	ldrh	r3, [r3, #0]
    28ba:	021b      	lsls	r3, r3, #8
    28bc:	041b      	lsls	r3, r3, #16
    28be:	0c1a      	lsrs	r2, r3, #16
    28c0:	683b      	ldr	r3, [r7, #0]
    28c2:	3328      	adds	r3, #40	; 0x28
    28c4:	881b      	ldrh	r3, [r3, #0]
    28c6:	0a1b      	lsrs	r3, r3, #8
    28c8:	b29b      	uxth	r3, r3
    28ca:	0019      	movs	r1, r3
    28cc:	23ff      	movs	r3, #255	; 0xff
    28ce:	400b      	ands	r3, r1
    28d0:	18d3      	adds	r3, r2, r3
    28d2:	001a      	movs	r2, r3
    28d4:	693b      	ldr	r3, [r7, #16]
    28d6:	189b      	adds	r3, r3, r2
    28d8:	613b      	str	r3, [r7, #16]
    28da:	683b      	ldr	r3, [r7, #0]
    28dc:	332a      	adds	r3, #42	; 0x2a
    28de:	60fb      	str	r3, [r7, #12]
    28e0:	2300      	movs	r3, #0
    28e2:	617b      	str	r3, [r7, #20]
    28e4:	e017      	b.n	2916 <CheckSum_UDP+0x12a>
    28e6:	697b      	ldr	r3, [r7, #20]
    28e8:	2201      	movs	r2, #1
    28ea:	4013      	ands	r3, r2
    28ec:	d008      	beq.n	2900 <CheckSum_UDP+0x114>
    28ee:	68fb      	ldr	r3, [r7, #12]
    28f0:	1c5a      	adds	r2, r3, #1
    28f2:	60fa      	str	r2, [r7, #12]
    28f4:	781b      	ldrb	r3, [r3, #0]
    28f6:	001a      	movs	r2, r3
    28f8:	693b      	ldr	r3, [r7, #16]
    28fa:	189b      	adds	r3, r3, r2
    28fc:	613b      	str	r3, [r7, #16]
    28fe:	e007      	b.n	2910 <CheckSum_UDP+0x124>
    2900:	68fb      	ldr	r3, [r7, #12]
    2902:	1c5a      	adds	r2, r3, #1
    2904:	60fa      	str	r2, [r7, #12]
    2906:	781b      	ldrb	r3, [r3, #0]
    2908:	021b      	lsls	r3, r3, #8
    290a:	693a      	ldr	r2, [r7, #16]
    290c:	18d3      	adds	r3, r2, r3
    290e:	613b      	str	r3, [r7, #16]
    2910:	697b      	ldr	r3, [r7, #20]
    2912:	3301      	adds	r3, #1
    2914:	617b      	str	r3, [r7, #20]
    2916:	1dbb      	adds	r3, r7, #6
    2918:	881b      	ldrh	r3, [r3, #0]
    291a:	3b08      	subs	r3, #8
    291c:	001a      	movs	r2, r3
    291e:	697b      	ldr	r3, [r7, #20]
    2920:	429a      	cmp	r2, r3
    2922:	d8e0      	bhi.n	28e6 <CheckSum_UDP+0xfa>
    2924:	e006      	b.n	2934 <CheckSum_UDP+0x148>
    2926:	693b      	ldr	r3, [r7, #16]
    2928:	0c1a      	lsrs	r2, r3, #16
    292a:	693b      	ldr	r3, [r7, #16]
    292c:	041b      	lsls	r3, r3, #16
    292e:	0c1b      	lsrs	r3, r3, #16
    2930:	18d3      	adds	r3, r2, r3
    2932:	613b      	str	r3, [r7, #16]
    2934:	693b      	ldr	r3, [r7, #16]
    2936:	0c1b      	lsrs	r3, r3, #16
    2938:	d1f5      	bne.n	2926 <CheckSum_UDP+0x13a>
    293a:	693b      	ldr	r3, [r7, #16]
    293c:	b29b      	uxth	r3, r3
    293e:	43db      	mvns	r3, r3
    2940:	b29b      	uxth	r3, r3
    2942:	0018      	movs	r0, r3
    2944:	46bd      	mov	sp, r7
    2946:	b006      	add	sp, #24
    2948:	bd80      	pop	{r7, pc}
    294a:	46c0      	nop			; (mov r8, r8)

0000294c <CheckSum_IP>:
    294c:	b580      	push	{r7, lr}
    294e:	b084      	sub	sp, #16
    2950:	af00      	add	r7, sp, #0
    2952:	6078      	str	r0, [r7, #4]
    2954:	2300      	movs	r3, #0
    2956:	60bb      	str	r3, [r7, #8]
    2958:	2300      	movs	r3, #0
    295a:	60fb      	str	r3, [r7, #12]
    295c:	e011      	b.n	2982 <CheckSum_IP+0x36>
    295e:	68fb      	ldr	r3, [r7, #12]
    2960:	2b05      	cmp	r3, #5
    2962:	d00a      	beq.n	297a <CheckSum_IP+0x2e>
    2964:	68fb      	ldr	r3, [r7, #12]
    2966:	3307      	adds	r3, #7
    2968:	005b      	lsls	r3, r3, #1
    296a:	687a      	ldr	r2, [r7, #4]
    296c:	18d3      	adds	r3, r2, r3
    296e:	881b      	ldrh	r3, [r3, #0]
    2970:	001a      	movs	r2, r3
    2972:	68bb      	ldr	r3, [r7, #8]
    2974:	189b      	adds	r3, r3, r2
    2976:	60bb      	str	r3, [r7, #8]
    2978:	e000      	b.n	297c <CheckSum_IP+0x30>
    297a:	46c0      	nop			; (mov r8, r8)
    297c:	68fb      	ldr	r3, [r7, #12]
    297e:	3301      	adds	r3, #1
    2980:	60fb      	str	r3, [r7, #12]
    2982:	68fb      	ldr	r3, [r7, #12]
    2984:	2b09      	cmp	r3, #9
    2986:	d9ea      	bls.n	295e <CheckSum_IP+0x12>
    2988:	68bb      	ldr	r3, [r7, #8]
    298a:	0c1a      	lsrs	r2, r3, #16
    298c:	68bb      	ldr	r3, [r7, #8]
    298e:	041b      	lsls	r3, r3, #16
    2990:	0c1b      	lsrs	r3, r3, #16
    2992:	18d3      	adds	r3, r2, r3
    2994:	60bb      	str	r3, [r7, #8]
    2996:	68bb      	ldr	r3, [r7, #8]
    2998:	b29b      	uxth	r3, r3
    299a:	43db      	mvns	r3, r3
    299c:	b29b      	uxth	r3, r3
    299e:	0018      	movs	r0, r3
    29a0:	46bd      	mov	sp, r7
    29a2:	b004      	add	sp, #16
    29a4:	bd80      	pop	{r7, pc}
    29a6:	46c0      	nop			; (mov r8, r8)

000029a8 <CheckSum_ICMP>:
    29a8:	b580      	push	{r7, lr}
    29aa:	b084      	sub	sp, #16
    29ac:	af00      	add	r7, sp, #0
    29ae:	0002      	movs	r2, r0
    29b0:	6039      	str	r1, [r7, #0]
    29b2:	1dbb      	adds	r3, r7, #6
    29b4:	801a      	strh	r2, [r3, #0]
    29b6:	2300      	movs	r3, #0
    29b8:	60bb      	str	r3, [r7, #8]
    29ba:	2300      	movs	r3, #0
    29bc:	60fb      	str	r3, [r7, #12]
    29be:	e011      	b.n	29e4 <CheckSum_ICMP+0x3c>
    29c0:	68fb      	ldr	r3, [r7, #12]
    29c2:	2b01      	cmp	r3, #1
    29c4:	d00a      	beq.n	29dc <CheckSum_ICMP+0x34>
    29c6:	68fb      	ldr	r3, [r7, #12]
    29c8:	3311      	adds	r3, #17
    29ca:	005b      	lsls	r3, r3, #1
    29cc:	683a      	ldr	r2, [r7, #0]
    29ce:	18d3      	adds	r3, r2, r3
    29d0:	881b      	ldrh	r3, [r3, #0]
    29d2:	001a      	movs	r2, r3
    29d4:	68bb      	ldr	r3, [r7, #8]
    29d6:	189b      	adds	r3, r3, r2
    29d8:	60bb      	str	r3, [r7, #8]
    29da:	e000      	b.n	29de <CheckSum_ICMP+0x36>
    29dc:	46c0      	nop			; (mov r8, r8)
    29de:	68fb      	ldr	r3, [r7, #12]
    29e0:	3301      	adds	r3, #1
    29e2:	60fb      	str	r3, [r7, #12]
    29e4:	1dbb      	adds	r3, r7, #6
    29e6:	881a      	ldrh	r2, [r3, #0]
    29e8:	68fb      	ldr	r3, [r7, #12]
    29ea:	429a      	cmp	r2, r3
    29ec:	d8e8      	bhi.n	29c0 <CheckSum_ICMP+0x18>
    29ee:	68bb      	ldr	r3, [r7, #8]
    29f0:	0c1a      	lsrs	r2, r3, #16
    29f2:	68bb      	ldr	r3, [r7, #8]
    29f4:	041b      	lsls	r3, r3, #16
    29f6:	0c1b      	lsrs	r3, r3, #16
    29f8:	18d3      	adds	r3, r2, r3
    29fa:	60bb      	str	r3, [r7, #8]
    29fc:	68bb      	ldr	r3, [r7, #8]
    29fe:	b29b      	uxth	r3, r3
    2a00:	43db      	mvns	r3, r3
    2a02:	b29b      	uxth	r3, r3
    2a04:	0018      	movs	r0, r3
    2a06:	46bd      	mov	sp, r7
    2a08:	b004      	add	sp, #16
    2a0a:	bd80      	pop	{r7, pc}

00002a0c <Request_ICMP>:
    2a0c:	b580      	push	{r7, lr}
    2a0e:	b096      	sub	sp, #88	; 0x58
    2a10:	af00      	add	r7, sp, #0
    2a12:	4b73      	ldr	r3, [pc, #460]	; (2be0 <Request_ICMP+0x1d4>)
    2a14:	881a      	ldrh	r2, [r3, #0]
    2a16:	1d3b      	adds	r3, r7, #4
    2a18:	801a      	strh	r2, [r3, #0]
    2a1a:	4b71      	ldr	r3, [pc, #452]	; (2be0 <Request_ICMP+0x1d4>)
    2a1c:	885a      	ldrh	r2, [r3, #2]
    2a1e:	1d3b      	adds	r3, r7, #4
    2a20:	805a      	strh	r2, [r3, #2]
    2a22:	4b6f      	ldr	r3, [pc, #444]	; (2be0 <Request_ICMP+0x1d4>)
    2a24:	889a      	ldrh	r2, [r3, #4]
    2a26:	1d3b      	adds	r3, r7, #4
    2a28:	809a      	strh	r2, [r3, #4]
    2a2a:	23c0      	movs	r3, #192	; 0xc0
    2a2c:	059b      	lsls	r3, r3, #22
    2a2e:	885b      	ldrh	r3, [r3, #2]
    2a30:	b29a      	uxth	r2, r3
    2a32:	1d3b      	adds	r3, r7, #4
    2a34:	80da      	strh	r2, [r3, #6]
    2a36:	23c0      	movs	r3, #192	; 0xc0
    2a38:	059b      	lsls	r3, r3, #22
    2a3a:	889b      	ldrh	r3, [r3, #4]
    2a3c:	b29a      	uxth	r2, r3
    2a3e:	1d3b      	adds	r3, r7, #4
    2a40:	811a      	strh	r2, [r3, #8]
    2a42:	23c0      	movs	r3, #192	; 0xc0
    2a44:	059b      	lsls	r3, r3, #22
    2a46:	88db      	ldrh	r3, [r3, #6]
    2a48:	b29a      	uxth	r2, r3
    2a4a:	1d3b      	adds	r3, r7, #4
    2a4c:	815a      	strh	r2, [r3, #10]
    2a4e:	1d3b      	adds	r3, r7, #4
    2a50:	2208      	movs	r2, #8
    2a52:	819a      	strh	r2, [r3, #12]
    2a54:	1d3b      	adds	r3, r7, #4
    2a56:	2245      	movs	r2, #69	; 0x45
    2a58:	81da      	strh	r2, [r3, #14]
    2a5a:	1d3b      	adds	r3, r7, #4
    2a5c:	22f0      	movs	r2, #240	; 0xf0
    2a5e:	0192      	lsls	r2, r2, #6
    2a60:	821a      	strh	r2, [r3, #16]
    2a62:	4b60      	ldr	r3, [pc, #384]	; (2be4 <Request_ICMP+0x1d8>)
    2a64:	881a      	ldrh	r2, [r3, #0]
    2a66:	1d3b      	adds	r3, r7, #4
    2a68:	825a      	strh	r2, [r3, #18]
    2a6a:	1d3b      	adds	r3, r7, #4
    2a6c:	2200      	movs	r2, #0
    2a6e:	829a      	strh	r2, [r3, #20]
    2a70:	1d3b      	adds	r3, r7, #4
    2a72:	22c0      	movs	r2, #192	; 0xc0
    2a74:	0052      	lsls	r2, r2, #1
    2a76:	82da      	strh	r2, [r3, #22]
    2a78:	1d3b      	adds	r3, r7, #4
    2a7a:	2200      	movs	r2, #0
    2a7c:	831a      	strh	r2, [r3, #24]
    2a7e:	4b5a      	ldr	r3, [pc, #360]	; (2be8 <Request_ICMP+0x1dc>)
    2a80:	881a      	ldrh	r2, [r3, #0]
    2a82:	1d3b      	adds	r3, r7, #4
    2a84:	835a      	strh	r2, [r3, #26]
    2a86:	4b58      	ldr	r3, [pc, #352]	; (2be8 <Request_ICMP+0x1dc>)
    2a88:	885a      	ldrh	r2, [r3, #2]
    2a8a:	1d3b      	adds	r3, r7, #4
    2a8c:	839a      	strh	r2, [r3, #28]
    2a8e:	4b54      	ldr	r3, [pc, #336]	; (2be0 <Request_ICMP+0x1d4>)
    2a90:	88da      	ldrh	r2, [r3, #6]
    2a92:	1d3b      	adds	r3, r7, #4
    2a94:	83da      	strh	r2, [r3, #30]
    2a96:	4b52      	ldr	r3, [pc, #328]	; (2be0 <Request_ICMP+0x1d4>)
    2a98:	891a      	ldrh	r2, [r3, #8]
    2a9a:	1d3b      	adds	r3, r7, #4
    2a9c:	841a      	strh	r2, [r3, #32]
    2a9e:	1d3b      	adds	r3, r7, #4
    2aa0:	0018      	movs	r0, r3
    2aa2:	f7ff ff53 	bl	294c <CheckSum_IP>
    2aa6:	0003      	movs	r3, r0
    2aa8:	001a      	movs	r2, r3
    2aaa:	1d3b      	adds	r3, r7, #4
    2aac:	831a      	strh	r2, [r3, #24]
    2aae:	1d3b      	adds	r3, r7, #4
    2ab0:	2208      	movs	r2, #8
    2ab2:	845a      	strh	r2, [r3, #34]	; 0x22
    2ab4:	1d3b      	adds	r3, r7, #4
    2ab6:	2200      	movs	r2, #0
    2ab8:	849a      	strh	r2, [r3, #36]	; 0x24
    2aba:	1d3b      	adds	r3, r7, #4
    2abc:	2202      	movs	r2, #2
    2abe:	84da      	strh	r2, [r3, #38]	; 0x26
    2ac0:	4b4a      	ldr	r3, [pc, #296]	; (2bec <Request_ICMP+0x1e0>)
    2ac2:	881a      	ldrh	r2, [r3, #0]
    2ac4:	1d3b      	adds	r3, r7, #4
    2ac6:	851a      	strh	r2, [r3, #40]	; 0x28
    2ac8:	2300      	movs	r3, #0
    2aca:	657b      	str	r3, [r7, #84]	; 0x54
    2acc:	2300      	movs	r3, #0
    2ace:	653b      	str	r3, [r7, #80]	; 0x50
    2ad0:	e021      	b.n	2b16 <Request_ICMP+0x10a>
    2ad2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2ad4:	b2db      	uxtb	r3, r3
    2ad6:	3361      	adds	r3, #97	; 0x61
    2ad8:	b2da      	uxtb	r2, r3
    2ada:	003b      	movs	r3, r7
    2adc:	701a      	strb	r2, [r3, #0]
    2ade:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2ae0:	b2db      	uxtb	r3, r3
    2ae2:	3362      	adds	r3, #98	; 0x62
    2ae4:	b2da      	uxtb	r2, r3
    2ae6:	003b      	movs	r3, r7
    2ae8:	705a      	strb	r2, [r3, #1]
    2aea:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2aec:	3315      	adds	r3, #21
    2aee:	001a      	movs	r2, r3
    2af0:	003b      	movs	r3, r7
    2af2:	785b      	ldrb	r3, [r3, #1]
    2af4:	021b      	lsls	r3, r3, #8
    2af6:	b219      	sxth	r1, r3
    2af8:	003b      	movs	r3, r7
    2afa:	781b      	ldrb	r3, [r3, #0]
    2afc:	b21b      	sxth	r3, r3
    2afe:	430b      	orrs	r3, r1
    2b00:	b21b      	sxth	r3, r3
    2b02:	b299      	uxth	r1, r3
    2b04:	1d3b      	adds	r3, r7, #4
    2b06:	0052      	lsls	r2, r2, #1
    2b08:	52d1      	strh	r1, [r2, r3]
    2b0a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2b0c:	3302      	adds	r3, #2
    2b0e:	657b      	str	r3, [r7, #84]	; 0x54
    2b10:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2b12:	3301      	adds	r3, #1
    2b14:	653b      	str	r3, [r7, #80]	; 0x50
    2b16:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2b18:	2b1f      	cmp	r3, #31
    2b1a:	d9da      	bls.n	2ad2 <Request_ICMP+0xc6>
    2b1c:	1d3b      	adds	r3, r7, #4
    2b1e:	0019      	movs	r1, r3
    2b20:	2014      	movs	r0, #20
    2b22:	f7ff ff41 	bl	29a8 <CheckSum_ICMP>
    2b26:	0003      	movs	r3, r0
    2b28:	001a      	movs	r2, r3
    2b2a:	1d3b      	adds	r3, r7, #4
    2b2c:	849a      	strh	r2, [r3, #36]	; 0x24
    2b2e:	1d3b      	adds	r3, r7, #4
    2b30:	214a      	movs	r1, #74	; 0x4a
    2b32:	0018      	movs	r0, r3
    2b34:	f7ff fcb2 	bl	249c <SendPacket>
    2b38:	4b2a      	ldr	r3, [pc, #168]	; (2be4 <Request_ICMP+0x1d8>)
    2b3a:	881b      	ldrh	r3, [r3, #0]
    2b3c:	0a1b      	lsrs	r3, r3, #8
    2b3e:	b29b      	uxth	r3, r3
    2b40:	b2da      	uxtb	r2, r3
    2b42:	003b      	movs	r3, r7
    2b44:	701a      	strb	r2, [r3, #0]
    2b46:	4b27      	ldr	r3, [pc, #156]	; (2be4 <Request_ICMP+0x1d8>)
    2b48:	881b      	ldrh	r3, [r3, #0]
    2b4a:	b2da      	uxtb	r2, r3
    2b4c:	003b      	movs	r3, r7
    2b4e:	705a      	strb	r2, [r3, #1]
    2b50:	003b      	movs	r3, r7
    2b52:	781b      	ldrb	r3, [r3, #0]
    2b54:	3301      	adds	r3, #1
    2b56:	b2da      	uxtb	r2, r3
    2b58:	003b      	movs	r3, r7
    2b5a:	701a      	strb	r2, [r3, #0]
    2b5c:	003b      	movs	r3, r7
    2b5e:	781b      	ldrb	r3, [r3, #0]
    2b60:	2b00      	cmp	r3, #0
    2b62:	d105      	bne.n	2b70 <Request_ICMP+0x164>
    2b64:	003b      	movs	r3, r7
    2b66:	785b      	ldrb	r3, [r3, #1]
    2b68:	3301      	adds	r3, #1
    2b6a:	b2da      	uxtb	r2, r3
    2b6c:	003b      	movs	r3, r7
    2b6e:	705a      	strb	r2, [r3, #1]
    2b70:	003b      	movs	r3, r7
    2b72:	781b      	ldrb	r3, [r3, #0]
    2b74:	021b      	lsls	r3, r3, #8
    2b76:	b21a      	sxth	r2, r3
    2b78:	003b      	movs	r3, r7
    2b7a:	785b      	ldrb	r3, [r3, #1]
    2b7c:	b21b      	sxth	r3, r3
    2b7e:	4313      	orrs	r3, r2
    2b80:	b21b      	sxth	r3, r3
    2b82:	b29a      	uxth	r2, r3
    2b84:	4b17      	ldr	r3, [pc, #92]	; (2be4 <Request_ICMP+0x1d8>)
    2b86:	801a      	strh	r2, [r3, #0]
    2b88:	4b18      	ldr	r3, [pc, #96]	; (2bec <Request_ICMP+0x1e0>)
    2b8a:	881b      	ldrh	r3, [r3, #0]
    2b8c:	0a1b      	lsrs	r3, r3, #8
    2b8e:	b29b      	uxth	r3, r3
    2b90:	b2da      	uxtb	r2, r3
    2b92:	003b      	movs	r3, r7
    2b94:	701a      	strb	r2, [r3, #0]
    2b96:	4b15      	ldr	r3, [pc, #84]	; (2bec <Request_ICMP+0x1e0>)
    2b98:	881b      	ldrh	r3, [r3, #0]
    2b9a:	b2da      	uxtb	r2, r3
    2b9c:	003b      	movs	r3, r7
    2b9e:	705a      	strb	r2, [r3, #1]
    2ba0:	003b      	movs	r3, r7
    2ba2:	781b      	ldrb	r3, [r3, #0]
    2ba4:	3301      	adds	r3, #1
    2ba6:	b2da      	uxtb	r2, r3
    2ba8:	003b      	movs	r3, r7
    2baa:	701a      	strb	r2, [r3, #0]
    2bac:	003b      	movs	r3, r7
    2bae:	781b      	ldrb	r3, [r3, #0]
    2bb0:	2b00      	cmp	r3, #0
    2bb2:	d105      	bne.n	2bc0 <Request_ICMP+0x1b4>
    2bb4:	003b      	movs	r3, r7
    2bb6:	785b      	ldrb	r3, [r3, #1]
    2bb8:	3301      	adds	r3, #1
    2bba:	b2da      	uxtb	r2, r3
    2bbc:	003b      	movs	r3, r7
    2bbe:	705a      	strb	r2, [r3, #1]
    2bc0:	003b      	movs	r3, r7
    2bc2:	781b      	ldrb	r3, [r3, #0]
    2bc4:	021b      	lsls	r3, r3, #8
    2bc6:	b21a      	sxth	r2, r3
    2bc8:	003b      	movs	r3, r7
    2bca:	785b      	ldrb	r3, [r3, #1]
    2bcc:	b21b      	sxth	r3, r3
    2bce:	4313      	orrs	r3, r2
    2bd0:	b21b      	sxth	r3, r3
    2bd2:	b29a      	uxth	r2, r3
    2bd4:	4b05      	ldr	r3, [pc, #20]	; (2bec <Request_ICMP+0x1e0>)
    2bd6:	801a      	strh	r2, [r3, #0]
    2bd8:	46c0      	nop			; (mov r8, r8)
    2bda:	46bd      	mov	sp, r7
    2bdc:	b016      	add	sp, #88	; 0x58
    2bde:	bd80      	pop	{r7, pc}
    2be0:	20004d1c 	.word	0x20004d1c
    2be4:	20004d30 	.word	0x20004d30
    2be8:	20000010 	.word	0x20000010
    2bec:	20004d32 	.word	0x20004d32

00002bf0 <Answear_ICMP>:
    2bf0:	b580      	push	{r7, lr}
    2bf2:	b082      	sub	sp, #8
    2bf4:	af00      	add	r7, sp, #0
    2bf6:	4b53      	ldr	r3, [pc, #332]	; (2d44 <Answear_ICMP+0x154>)
    2bf8:	4a53      	ldr	r2, [pc, #332]	; (2d48 <Answear_ICMP+0x158>)
    2bfa:	5a9a      	ldrh	r2, [r3, r2]
    2bfc:	1cbb      	adds	r3, r7, #2
    2bfe:	3a26      	subs	r2, #38	; 0x26
    2c00:	801a      	strh	r2, [r3, #0]
    2c02:	1cbb      	adds	r3, r7, #2
    2c04:	881b      	ldrh	r3, [r3, #0]
    2c06:	2201      	movs	r2, #1
    2c08:	4013      	ands	r3, r2
    2c0a:	d017      	beq.n	2c3c <Answear_ICMP+0x4c>
    2c0c:	1cbb      	adds	r3, r7, #2
    2c0e:	881b      	ldrh	r3, [r3, #0]
    2c10:	3301      	adds	r3, #1
    2c12:	105a      	asrs	r2, r3, #1
    2c14:	1cbb      	adds	r3, r7, #2
    2c16:	801a      	strh	r2, [r3, #0]
    2c18:	1cbb      	adds	r3, r7, #2
    2c1a:	881b      	ldrh	r3, [r3, #0]
    2c1c:	3310      	adds	r3, #16
    2c1e:	001a      	movs	r2, r3
    2c20:	1cbb      	adds	r3, r7, #2
    2c22:	881b      	ldrh	r3, [r3, #0]
    2c24:	3310      	adds	r3, #16
    2c26:	0019      	movs	r1, r3
    2c28:	4b46      	ldr	r3, [pc, #280]	; (2d44 <Answear_ICMP+0x154>)
    2c2a:	0049      	lsls	r1, r1, #1
    2c2c:	5acb      	ldrh	r3, [r1, r3]
    2c2e:	21ff      	movs	r1, #255	; 0xff
    2c30:	400b      	ands	r3, r1
    2c32:	b299      	uxth	r1, r3
    2c34:	4b43      	ldr	r3, [pc, #268]	; (2d44 <Answear_ICMP+0x154>)
    2c36:	0052      	lsls	r2, r2, #1
    2c38:	52d1      	strh	r1, [r2, r3]
    2c3a:	e004      	b.n	2c46 <Answear_ICMP+0x56>
    2c3c:	1cbb      	adds	r3, r7, #2
    2c3e:	1cba      	adds	r2, r7, #2
    2c40:	8812      	ldrh	r2, [r2, #0]
    2c42:	0852      	lsrs	r2, r2, #1
    2c44:	801a      	strh	r2, [r3, #0]
    2c46:	4b3f      	ldr	r3, [pc, #252]	; (2d44 <Answear_ICMP+0x154>)
    2c48:	88da      	ldrh	r2, [r3, #6]
    2c4a:	4b40      	ldr	r3, [pc, #256]	; (2d4c <Answear_ICMP+0x15c>)
    2c4c:	801a      	strh	r2, [r3, #0]
    2c4e:	4b3d      	ldr	r3, [pc, #244]	; (2d44 <Answear_ICMP+0x154>)
    2c50:	891a      	ldrh	r2, [r3, #8]
    2c52:	4b3e      	ldr	r3, [pc, #248]	; (2d4c <Answear_ICMP+0x15c>)
    2c54:	805a      	strh	r2, [r3, #2]
    2c56:	4b3b      	ldr	r3, [pc, #236]	; (2d44 <Answear_ICMP+0x154>)
    2c58:	895a      	ldrh	r2, [r3, #10]
    2c5a:	4b3c      	ldr	r3, [pc, #240]	; (2d4c <Answear_ICMP+0x15c>)
    2c5c:	809a      	strh	r2, [r3, #4]
    2c5e:	23c0      	movs	r3, #192	; 0xc0
    2c60:	059b      	lsls	r3, r3, #22
    2c62:	885b      	ldrh	r3, [r3, #2]
    2c64:	b29a      	uxth	r2, r3
    2c66:	4b39      	ldr	r3, [pc, #228]	; (2d4c <Answear_ICMP+0x15c>)
    2c68:	80da      	strh	r2, [r3, #6]
    2c6a:	23c0      	movs	r3, #192	; 0xc0
    2c6c:	059b      	lsls	r3, r3, #22
    2c6e:	889b      	ldrh	r3, [r3, #4]
    2c70:	b29a      	uxth	r2, r3
    2c72:	4b36      	ldr	r3, [pc, #216]	; (2d4c <Answear_ICMP+0x15c>)
    2c74:	811a      	strh	r2, [r3, #8]
    2c76:	23c0      	movs	r3, #192	; 0xc0
    2c78:	059b      	lsls	r3, r3, #22
    2c7a:	88db      	ldrh	r3, [r3, #6]
    2c7c:	b29a      	uxth	r2, r3
    2c7e:	4b33      	ldr	r3, [pc, #204]	; (2d4c <Answear_ICMP+0x15c>)
    2c80:	815a      	strh	r2, [r3, #10]
    2c82:	4b30      	ldr	r3, [pc, #192]	; (2d44 <Answear_ICMP+0x154>)
    2c84:	899a      	ldrh	r2, [r3, #12]
    2c86:	4b31      	ldr	r3, [pc, #196]	; (2d4c <Answear_ICMP+0x15c>)
    2c88:	819a      	strh	r2, [r3, #12]
    2c8a:	2307      	movs	r3, #7
    2c8c:	607b      	str	r3, [r7, #4]
    2c8e:	e00a      	b.n	2ca6 <Answear_ICMP+0xb6>
    2c90:	4b2c      	ldr	r3, [pc, #176]	; (2d44 <Answear_ICMP+0x154>)
    2c92:	687a      	ldr	r2, [r7, #4]
    2c94:	0052      	lsls	r2, r2, #1
    2c96:	5ad1      	ldrh	r1, [r2, r3]
    2c98:	4b2c      	ldr	r3, [pc, #176]	; (2d4c <Answear_ICMP+0x15c>)
    2c9a:	687a      	ldr	r2, [r7, #4]
    2c9c:	0052      	lsls	r2, r2, #1
    2c9e:	52d1      	strh	r1, [r2, r3]
    2ca0:	687b      	ldr	r3, [r7, #4]
    2ca2:	3301      	adds	r3, #1
    2ca4:	607b      	str	r3, [r7, #4]
    2ca6:	687b      	ldr	r3, [r7, #4]
    2ca8:	2b0b      	cmp	r3, #11
    2caa:	d9f1      	bls.n	2c90 <Answear_ICMP+0xa0>
    2cac:	4b25      	ldr	r3, [pc, #148]	; (2d44 <Answear_ICMP+0x154>)
    2cae:	0018      	movs	r0, r3
    2cb0:	f7ff fe4c 	bl	294c <CheckSum_IP>
    2cb4:	0003      	movs	r3, r0
    2cb6:	001a      	movs	r2, r3
    2cb8:	4b24      	ldr	r3, [pc, #144]	; (2d4c <Answear_ICMP+0x15c>)
    2cba:	831a      	strh	r2, [r3, #24]
    2cbc:	4b21      	ldr	r3, [pc, #132]	; (2d44 <Answear_ICMP+0x154>)
    2cbe:	8bda      	ldrh	r2, [r3, #30]
    2cc0:	4b22      	ldr	r3, [pc, #136]	; (2d4c <Answear_ICMP+0x15c>)
    2cc2:	835a      	strh	r2, [r3, #26]
    2cc4:	4b1f      	ldr	r3, [pc, #124]	; (2d44 <Answear_ICMP+0x154>)
    2cc6:	8c1a      	ldrh	r2, [r3, #32]
    2cc8:	4b20      	ldr	r3, [pc, #128]	; (2d4c <Answear_ICMP+0x15c>)
    2cca:	839a      	strh	r2, [r3, #28]
    2ccc:	4b1d      	ldr	r3, [pc, #116]	; (2d44 <Answear_ICMP+0x154>)
    2cce:	8b5a      	ldrh	r2, [r3, #26]
    2cd0:	4b1e      	ldr	r3, [pc, #120]	; (2d4c <Answear_ICMP+0x15c>)
    2cd2:	83da      	strh	r2, [r3, #30]
    2cd4:	4b1b      	ldr	r3, [pc, #108]	; (2d44 <Answear_ICMP+0x154>)
    2cd6:	8b9a      	ldrh	r2, [r3, #28]
    2cd8:	4b1c      	ldr	r3, [pc, #112]	; (2d4c <Answear_ICMP+0x15c>)
    2cda:	841a      	strh	r2, [r3, #32]
    2cdc:	4b1b      	ldr	r3, [pc, #108]	; (2d4c <Answear_ICMP+0x15c>)
    2cde:	2200      	movs	r2, #0
    2ce0:	845a      	strh	r2, [r3, #34]	; 0x22
    2ce2:	4b18      	ldr	r3, [pc, #96]	; (2d44 <Answear_ICMP+0x154>)
    2ce4:	2200      	movs	r2, #0
    2ce6:	845a      	strh	r2, [r3, #34]	; 0x22
    2ce8:	4a16      	ldr	r2, [pc, #88]	; (2d44 <Answear_ICMP+0x154>)
    2cea:	1cbb      	adds	r3, r7, #2
    2cec:	881b      	ldrh	r3, [r3, #0]
    2cee:	0011      	movs	r1, r2
    2cf0:	0018      	movs	r0, r3
    2cf2:	f7ff fe59 	bl	29a8 <CheckSum_ICMP>
    2cf6:	0003      	movs	r3, r0
    2cf8:	001a      	movs	r2, r3
    2cfa:	4b14      	ldr	r3, [pc, #80]	; (2d4c <Answear_ICMP+0x15c>)
    2cfc:	849a      	strh	r2, [r3, #36]	; 0x24
    2cfe:	2313      	movs	r3, #19
    2d00:	607b      	str	r3, [r7, #4]
    2d02:	e00a      	b.n	2d1a <Answear_ICMP+0x12a>
    2d04:	4b0f      	ldr	r3, [pc, #60]	; (2d44 <Answear_ICMP+0x154>)
    2d06:	687a      	ldr	r2, [r7, #4]
    2d08:	0052      	lsls	r2, r2, #1
    2d0a:	5ad1      	ldrh	r1, [r2, r3]
    2d0c:	4b0f      	ldr	r3, [pc, #60]	; (2d4c <Answear_ICMP+0x15c>)
    2d0e:	687a      	ldr	r2, [r7, #4]
    2d10:	0052      	lsls	r2, r2, #1
    2d12:	52d1      	strh	r1, [r2, r3]
    2d14:	687b      	ldr	r3, [r7, #4]
    2d16:	3301      	adds	r3, #1
    2d18:	607b      	str	r3, [r7, #4]
    2d1a:	1cbb      	adds	r3, r7, #2
    2d1c:	881b      	ldrh	r3, [r3, #0]
    2d1e:	3311      	adds	r3, #17
    2d20:	001a      	movs	r2, r3
    2d22:	687b      	ldr	r3, [r7, #4]
    2d24:	429a      	cmp	r2, r3
    2d26:	d8ed      	bhi.n	2d04 <Answear_ICMP+0x114>
    2d28:	1cbb      	adds	r3, r7, #2
    2d2a:	881b      	ldrh	r3, [r3, #0]
    2d2c:	3311      	adds	r3, #17
    2d2e:	005a      	lsls	r2, r3, #1
    2d30:	4b06      	ldr	r3, [pc, #24]	; (2d4c <Answear_ICMP+0x15c>)
    2d32:	0011      	movs	r1, r2
    2d34:	0018      	movs	r0, r3
    2d36:	f7ff fbb1 	bl	249c <SendPacket>
    2d3a:	46c0      	nop			; (mov r8, r8)
    2d3c:	46bd      	mov	sp, r7
    2d3e:	b002      	add	sp, #8
    2d40:	bd80      	pop	{r7, pc}
    2d42:	46c0      	nop			; (mov r8, r8)
    2d44:	20004d38 	.word	0x20004d38
    2d48:	000005dc 	.word	0x000005dc
    2d4c:	20005344 	.word	0x20005344

00002d50 <Send_UDP>:
    2d50:	b590      	push	{r4, r7, lr}
    2d52:	b089      	sub	sp, #36	; 0x24
    2d54:	af00      	add	r7, sp, #0
    2d56:	6078      	str	r0, [r7, #4]
    2d58:	6039      	str	r1, [r7, #0]
    2d5a:	4b86      	ldr	r3, [pc, #536]	; (2f74 <Send_UDP+0x224>)
    2d5c:	881a      	ldrh	r2, [r3, #0]
    2d5e:	4b86      	ldr	r3, [pc, #536]	; (2f78 <Send_UDP+0x228>)
    2d60:	801a      	strh	r2, [r3, #0]
    2d62:	4b84      	ldr	r3, [pc, #528]	; (2f74 <Send_UDP+0x224>)
    2d64:	885a      	ldrh	r2, [r3, #2]
    2d66:	4b84      	ldr	r3, [pc, #528]	; (2f78 <Send_UDP+0x228>)
    2d68:	805a      	strh	r2, [r3, #2]
    2d6a:	4b82      	ldr	r3, [pc, #520]	; (2f74 <Send_UDP+0x224>)
    2d6c:	889a      	ldrh	r2, [r3, #4]
    2d6e:	4b82      	ldr	r3, [pc, #520]	; (2f78 <Send_UDP+0x228>)
    2d70:	809a      	strh	r2, [r3, #4]
    2d72:	23c0      	movs	r3, #192	; 0xc0
    2d74:	059b      	lsls	r3, r3, #22
    2d76:	885b      	ldrh	r3, [r3, #2]
    2d78:	b29a      	uxth	r2, r3
    2d7a:	4b7f      	ldr	r3, [pc, #508]	; (2f78 <Send_UDP+0x228>)
    2d7c:	80da      	strh	r2, [r3, #6]
    2d7e:	23c0      	movs	r3, #192	; 0xc0
    2d80:	059b      	lsls	r3, r3, #22
    2d82:	889b      	ldrh	r3, [r3, #4]
    2d84:	b29a      	uxth	r2, r3
    2d86:	4b7c      	ldr	r3, [pc, #496]	; (2f78 <Send_UDP+0x228>)
    2d88:	811a      	strh	r2, [r3, #8]
    2d8a:	23c0      	movs	r3, #192	; 0xc0
    2d8c:	059b      	lsls	r3, r3, #22
    2d8e:	88db      	ldrh	r3, [r3, #6]
    2d90:	b29a      	uxth	r2, r3
    2d92:	4b79      	ldr	r3, [pc, #484]	; (2f78 <Send_UDP+0x228>)
    2d94:	815a      	strh	r2, [r3, #10]
    2d96:	4b78      	ldr	r3, [pc, #480]	; (2f78 <Send_UDP+0x228>)
    2d98:	2208      	movs	r2, #8
    2d9a:	819a      	strh	r2, [r3, #12]
    2d9c:	4b76      	ldr	r3, [pc, #472]	; (2f78 <Send_UDP+0x228>)
    2d9e:	2245      	movs	r2, #69	; 0x45
    2da0:	81da      	strh	r2, [r3, #14]
    2da2:	4b75      	ldr	r3, [pc, #468]	; (2f78 <Send_UDP+0x228>)
    2da4:	22f0      	movs	r2, #240	; 0xf0
    2da6:	0192      	lsls	r2, r2, #6
    2da8:	821a      	strh	r2, [r3, #16]
    2daa:	4b74      	ldr	r3, [pc, #464]	; (2f7c <Send_UDP+0x22c>)
    2dac:	881a      	ldrh	r2, [r3, #0]
    2dae:	4b72      	ldr	r3, [pc, #456]	; (2f78 <Send_UDP+0x228>)
    2db0:	825a      	strh	r2, [r3, #18]
    2db2:	4b71      	ldr	r3, [pc, #452]	; (2f78 <Send_UDP+0x228>)
    2db4:	2200      	movs	r2, #0
    2db6:	829a      	strh	r2, [r3, #20]
    2db8:	4b6f      	ldr	r3, [pc, #444]	; (2f78 <Send_UDP+0x228>)
    2dba:	228c      	movs	r2, #140	; 0x8c
    2dbc:	0152      	lsls	r2, r2, #5
    2dbe:	82da      	strh	r2, [r3, #22]
    2dc0:	4b6d      	ldr	r3, [pc, #436]	; (2f78 <Send_UDP+0x228>)
    2dc2:	2200      	movs	r2, #0
    2dc4:	831a      	strh	r2, [r3, #24]
    2dc6:	4b6e      	ldr	r3, [pc, #440]	; (2f80 <Send_UDP+0x230>)
    2dc8:	881a      	ldrh	r2, [r3, #0]
    2dca:	4b6b      	ldr	r3, [pc, #428]	; (2f78 <Send_UDP+0x228>)
    2dcc:	835a      	strh	r2, [r3, #26]
    2dce:	4b6c      	ldr	r3, [pc, #432]	; (2f80 <Send_UDP+0x230>)
    2dd0:	885a      	ldrh	r2, [r3, #2]
    2dd2:	4b69      	ldr	r3, [pc, #420]	; (2f78 <Send_UDP+0x228>)
    2dd4:	839a      	strh	r2, [r3, #28]
    2dd6:	4b67      	ldr	r3, [pc, #412]	; (2f74 <Send_UDP+0x224>)
    2dd8:	88da      	ldrh	r2, [r3, #6]
    2dda:	4b67      	ldr	r3, [pc, #412]	; (2f78 <Send_UDP+0x228>)
    2ddc:	83da      	strh	r2, [r3, #30]
    2dde:	4b65      	ldr	r3, [pc, #404]	; (2f74 <Send_UDP+0x224>)
    2de0:	891a      	ldrh	r2, [r3, #8]
    2de2:	4b65      	ldr	r3, [pc, #404]	; (2f78 <Send_UDP+0x228>)
    2de4:	841a      	strh	r2, [r3, #32]
    2de6:	2316      	movs	r3, #22
    2de8:	18fb      	adds	r3, r7, r3
    2dea:	4a66      	ldr	r2, [pc, #408]	; (2f84 <Send_UDP+0x234>)
    2dec:	801a      	strh	r2, [r3, #0]
    2dee:	2316      	movs	r3, #22
    2df0:	18fb      	adds	r3, r7, r3
    2df2:	2216      	movs	r2, #22
    2df4:	18ba      	adds	r2, r7, r2
    2df6:	8812      	ldrh	r2, [r2, #0]
    2df8:	ba52      	rev16	r2, r2
    2dfa:	801a      	strh	r2, [r3, #0]
    2dfc:	4b62      	ldr	r3, [pc, #392]	; (2f88 <Send_UDP+0x238>)
    2dfe:	881a      	ldrh	r2, [r3, #0]
    2e00:	2314      	movs	r3, #20
    2e02:	18fb      	adds	r3, r7, r3
    2e04:	ba52      	rev16	r2, r2
    2e06:	801a      	strh	r2, [r3, #0]
    2e08:	4b5b      	ldr	r3, [pc, #364]	; (2f78 <Send_UDP+0x228>)
    2e0a:	2216      	movs	r2, #22
    2e0c:	18ba      	adds	r2, r7, r2
    2e0e:	8812      	ldrh	r2, [r2, #0]
    2e10:	845a      	strh	r2, [r3, #34]	; 0x22
    2e12:	4b59      	ldr	r3, [pc, #356]	; (2f78 <Send_UDP+0x228>)
    2e14:	2214      	movs	r2, #20
    2e16:	18ba      	adds	r2, r7, r2
    2e18:	8812      	ldrh	r2, [r2, #0]
    2e1a:	849a      	strh	r2, [r3, #36]	; 0x24
    2e1c:	4b56      	ldr	r3, [pc, #344]	; (2f78 <Send_UDP+0x228>)
    2e1e:	22c0      	movs	r2, #192	; 0xc0
    2e20:	0112      	lsls	r2, r2, #4
    2e22:	84da      	strh	r2, [r3, #38]	; 0x26
    2e24:	4b54      	ldr	r3, [pc, #336]	; (2f78 <Send_UDP+0x228>)
    2e26:	2200      	movs	r2, #0
    2e28:	851a      	strh	r2, [r3, #40]	; 0x28
    2e2a:	4b58      	ldr	r3, [pc, #352]	; (2f8c <Send_UDP+0x23c>)
    2e2c:	61bb      	str	r3, [r7, #24]
    2e2e:	683a      	ldr	r2, [r7, #0]
    2e30:	23fe      	movs	r3, #254	; 0xfe
    2e32:	005b      	lsls	r3, r3, #1
    2e34:	429a      	cmp	r2, r3
    2e36:	dd02      	ble.n	2e3e <Send_UDP+0xee>
    2e38:	23fe      	movs	r3, #254	; 0xfe
    2e3a:	005b      	lsls	r3, r3, #1
    2e3c:	603b      	str	r3, [r7, #0]
    2e3e:	2300      	movs	r3, #0
    2e40:	61fb      	str	r3, [r7, #28]
    2e42:	e00a      	b.n	2e5a <Send_UDP+0x10a>
    2e44:	69bb      	ldr	r3, [r7, #24]
    2e46:	1c5a      	adds	r2, r3, #1
    2e48:	61ba      	str	r2, [r7, #24]
    2e4a:	687a      	ldr	r2, [r7, #4]
    2e4c:	1c51      	adds	r1, r2, #1
    2e4e:	6079      	str	r1, [r7, #4]
    2e50:	7812      	ldrb	r2, [r2, #0]
    2e52:	701a      	strb	r2, [r3, #0]
    2e54:	69fb      	ldr	r3, [r7, #28]
    2e56:	3301      	adds	r3, #1
    2e58:	61fb      	str	r3, [r7, #28]
    2e5a:	683b      	ldr	r3, [r7, #0]
    2e5c:	69fa      	ldr	r2, [r7, #28]
    2e5e:	429a      	cmp	r2, r3
    2e60:	d3f0      	bcc.n	2e44 <Send_UDP+0xf4>
    2e62:	683b      	ldr	r3, [r7, #0]
    2e64:	b29a      	uxth	r2, r3
    2e66:	2312      	movs	r3, #18
    2e68:	18fb      	adds	r3, r7, r3
    2e6a:	321c      	adds	r2, #28
    2e6c:	801a      	strh	r2, [r3, #0]
    2e6e:	2312      	movs	r3, #18
    2e70:	18fb      	adds	r3, r7, r3
    2e72:	881b      	ldrh	r3, [r3, #0]
    2e74:	021b      	lsls	r3, r3, #8
    2e76:	b29a      	uxth	r2, r3
    2e78:	2312      	movs	r3, #18
    2e7a:	18fb      	adds	r3, r7, r3
    2e7c:	881b      	ldrh	r3, [r3, #0]
    2e7e:	0a1b      	lsrs	r3, r3, #8
    2e80:	b29b      	uxth	r3, r3
    2e82:	18d3      	adds	r3, r2, r3
    2e84:	b29a      	uxth	r2, r3
    2e86:	4b3c      	ldr	r3, [pc, #240]	; (2f78 <Send_UDP+0x228>)
    2e88:	821a      	strh	r2, [r3, #16]
    2e8a:	4b3b      	ldr	r3, [pc, #236]	; (2f78 <Send_UDP+0x228>)
    2e8c:	0018      	movs	r0, r3
    2e8e:	f7ff fd5d 	bl	294c <CheckSum_IP>
    2e92:	0003      	movs	r3, r0
    2e94:	001a      	movs	r2, r3
    2e96:	4b38      	ldr	r3, [pc, #224]	; (2f78 <Send_UDP+0x228>)
    2e98:	831a      	strh	r2, [r3, #24]
    2e9a:	683b      	ldr	r3, [r7, #0]
    2e9c:	b29a      	uxth	r2, r3
    2e9e:	2310      	movs	r3, #16
    2ea0:	18fb      	adds	r3, r7, r3
    2ea2:	3208      	adds	r2, #8
    2ea4:	801a      	strh	r2, [r3, #0]
    2ea6:	2310      	movs	r3, #16
    2ea8:	18fb      	adds	r3, r7, r3
    2eaa:	881b      	ldrh	r3, [r3, #0]
    2eac:	021b      	lsls	r3, r3, #8
    2eae:	b29a      	uxth	r2, r3
    2eb0:	2310      	movs	r3, #16
    2eb2:	18fb      	adds	r3, r7, r3
    2eb4:	881b      	ldrh	r3, [r3, #0]
    2eb6:	0a1b      	lsrs	r3, r3, #8
    2eb8:	b29b      	uxth	r3, r3
    2eba:	18d3      	adds	r3, r2, r3
    2ebc:	b29a      	uxth	r2, r3
    2ebe:	4b2e      	ldr	r3, [pc, #184]	; (2f78 <Send_UDP+0x228>)
    2ec0:	84da      	strh	r2, [r3, #38]	; 0x26
    2ec2:	683b      	ldr	r3, [r7, #0]
    2ec4:	b29b      	uxth	r3, r3
    2ec6:	3308      	adds	r3, #8
    2ec8:	b29b      	uxth	r3, r3
    2eca:	220e      	movs	r2, #14
    2ecc:	18bc      	adds	r4, r7, r2
    2ece:	4a2a      	ldr	r2, [pc, #168]	; (2f78 <Send_UDP+0x228>)
    2ed0:	0011      	movs	r1, r2
    2ed2:	0018      	movs	r0, r3
    2ed4:	f7ff fc8a 	bl	27ec <CheckSum_UDP>
    2ed8:	0003      	movs	r3, r0
    2eda:	8023      	strh	r3, [r4, #0]
    2edc:	230e      	movs	r3, #14
    2ede:	18fb      	adds	r3, r7, r3
    2ee0:	881b      	ldrh	r3, [r3, #0]
    2ee2:	021b      	lsls	r3, r3, #8
    2ee4:	b29a      	uxth	r2, r3
    2ee6:	230e      	movs	r3, #14
    2ee8:	18fb      	adds	r3, r7, r3
    2eea:	881b      	ldrh	r3, [r3, #0]
    2eec:	0a1b      	lsrs	r3, r3, #8
    2eee:	b29b      	uxth	r3, r3
    2ef0:	18d3      	adds	r3, r2, r3
    2ef2:	b29a      	uxth	r2, r3
    2ef4:	4b20      	ldr	r3, [pc, #128]	; (2f78 <Send_UDP+0x228>)
    2ef6:	851a      	strh	r2, [r3, #40]	; 0x28
    2ef8:	683b      	ldr	r3, [r7, #0]
    2efa:	332a      	adds	r3, #42	; 0x2a
    2efc:	001a      	movs	r2, r3
    2efe:	4b1e      	ldr	r3, [pc, #120]	; (2f78 <Send_UDP+0x228>)
    2f00:	0011      	movs	r1, r2
    2f02:	0018      	movs	r0, r3
    2f04:	f7ff faca 	bl	249c <SendPacket>
    2f08:	4b1c      	ldr	r3, [pc, #112]	; (2f7c <Send_UDP+0x22c>)
    2f0a:	881b      	ldrh	r3, [r3, #0]
    2f0c:	0a1b      	lsrs	r3, r3, #8
    2f0e:	b29b      	uxth	r3, r3
    2f10:	b2da      	uxtb	r2, r3
    2f12:	230c      	movs	r3, #12
    2f14:	18fb      	adds	r3, r7, r3
    2f16:	701a      	strb	r2, [r3, #0]
    2f18:	4b18      	ldr	r3, [pc, #96]	; (2f7c <Send_UDP+0x22c>)
    2f1a:	881b      	ldrh	r3, [r3, #0]
    2f1c:	b2da      	uxtb	r2, r3
    2f1e:	230c      	movs	r3, #12
    2f20:	18fb      	adds	r3, r7, r3
    2f22:	705a      	strb	r2, [r3, #1]
    2f24:	230c      	movs	r3, #12
    2f26:	18fb      	adds	r3, r7, r3
    2f28:	781b      	ldrb	r3, [r3, #0]
    2f2a:	3301      	adds	r3, #1
    2f2c:	b2da      	uxtb	r2, r3
    2f2e:	230c      	movs	r3, #12
    2f30:	18fb      	adds	r3, r7, r3
    2f32:	701a      	strb	r2, [r3, #0]
    2f34:	230c      	movs	r3, #12
    2f36:	18fb      	adds	r3, r7, r3
    2f38:	781b      	ldrb	r3, [r3, #0]
    2f3a:	2b00      	cmp	r3, #0
    2f3c:	d107      	bne.n	2f4e <Send_UDP+0x1fe>
    2f3e:	230c      	movs	r3, #12
    2f40:	18fb      	adds	r3, r7, r3
    2f42:	785b      	ldrb	r3, [r3, #1]
    2f44:	3301      	adds	r3, #1
    2f46:	b2da      	uxtb	r2, r3
    2f48:	230c      	movs	r3, #12
    2f4a:	18fb      	adds	r3, r7, r3
    2f4c:	705a      	strb	r2, [r3, #1]
    2f4e:	230c      	movs	r3, #12
    2f50:	18fb      	adds	r3, r7, r3
    2f52:	781b      	ldrb	r3, [r3, #0]
    2f54:	021b      	lsls	r3, r3, #8
    2f56:	b21a      	sxth	r2, r3
    2f58:	230c      	movs	r3, #12
    2f5a:	18fb      	adds	r3, r7, r3
    2f5c:	785b      	ldrb	r3, [r3, #1]
    2f5e:	b21b      	sxth	r3, r3
    2f60:	4313      	orrs	r3, r2
    2f62:	b21b      	sxth	r3, r3
    2f64:	b29a      	uxth	r2, r3
    2f66:	4b05      	ldr	r3, [pc, #20]	; (2f7c <Send_UDP+0x22c>)
    2f68:	801a      	strh	r2, [r3, #0]
    2f6a:	46c0      	nop			; (mov r8, r8)
    2f6c:	46bd      	mov	sp, r7
    2f6e:	b009      	add	sp, #36	; 0x24
    2f70:	bd90      	pop	{r4, r7, pc}
    2f72:	46c0      	nop			; (mov r8, r8)
    2f74:	20004d1c 	.word	0x20004d1c
    2f78:	20005584 	.word	0x20005584
    2f7c:	20004d30 	.word	0x20004d30
    2f80:	20000010 	.word	0x20000010
    2f84:	00001234 	.word	0x00001234
    2f88:	20005318 	.word	0x20005318
    2f8c:	200055ae 	.word	0x200055ae

00002f90 <PacketParser>:
    2f90:	b580      	push	{r7, lr}
    2f92:	b082      	sub	sp, #8
    2f94:	af00      	add	r7, sp, #0
    2f96:	4b49      	ldr	r3, [pc, #292]	; (30bc <PacketParser+0x12c>)
    2f98:	899b      	ldrh	r3, [r3, #12]
    2f9a:	2b08      	cmp	r3, #8
    2f9c:	d005      	beq.n	2faa <PacketParser+0x1a>
    2f9e:	22c1      	movs	r2, #193	; 0xc1
    2fa0:	00d2      	lsls	r2, r2, #3
    2fa2:	4293      	cmp	r3, r2
    2fa4:	d100      	bne.n	2fa8 <PacketParser+0x18>
    2fa6:	e06b      	b.n	3080 <PacketParser+0xf0>
    2fa8:	e084      	b.n	30b4 <PacketParser+0x124>
    2faa:	4b44      	ldr	r3, [pc, #272]	; (30bc <PacketParser+0x12c>)
    2fac:	8b9a      	ldrh	r2, [r3, #28]
    2fae:	4b44      	ldr	r3, [pc, #272]	; (30c0 <PacketParser+0x130>)
    2fb0:	811a      	strh	r2, [r3, #8]
    2fb2:	4b42      	ldr	r3, [pc, #264]	; (30bc <PacketParser+0x12c>)
    2fb4:	8bda      	ldrh	r2, [r3, #30]
    2fb6:	4b42      	ldr	r3, [pc, #264]	; (30c0 <PacketParser+0x130>)
    2fb8:	80da      	strh	r2, [r3, #6]
    2fba:	4b41      	ldr	r3, [pc, #260]	; (30c0 <PacketParser+0x130>)
    2fbc:	895b      	ldrh	r3, [r3, #10]
    2fbe:	2b00      	cmp	r3, #0
    2fc0:	d100      	bne.n	2fc4 <PacketParser+0x34>
    2fc2:	e072      	b.n	30aa <PacketParser+0x11a>
    2fc4:	4b3d      	ldr	r3, [pc, #244]	; (30bc <PacketParser+0x12c>)
    2fc6:	8bda      	ldrh	r2, [r3, #30]
    2fc8:	4b3e      	ldr	r3, [pc, #248]	; (30c4 <PacketParser+0x134>)
    2fca:	881b      	ldrh	r3, [r3, #0]
    2fcc:	429a      	cmp	r2, r3
    2fce:	d000      	beq.n	2fd2 <PacketParser+0x42>
    2fd0:	e06d      	b.n	30ae <PacketParser+0x11e>
    2fd2:	4b3a      	ldr	r3, [pc, #232]	; (30bc <PacketParser+0x12c>)
    2fd4:	8c1a      	ldrh	r2, [r3, #32]
    2fd6:	4b3b      	ldr	r3, [pc, #236]	; (30c4 <PacketParser+0x134>)
    2fd8:	885b      	ldrh	r3, [r3, #2]
    2fda:	429a      	cmp	r2, r3
    2fdc:	d000      	beq.n	2fe0 <PacketParser+0x50>
    2fde:	e066      	b.n	30ae <PacketParser+0x11e>
    2fe0:	4b36      	ldr	r3, [pc, #216]	; (30bc <PacketParser+0x12c>)
    2fe2:	0018      	movs	r0, r3
    2fe4:	f7ff fcb2 	bl	294c <CheckSum_IP>
    2fe8:	0003      	movs	r3, r0
    2fea:	001a      	movs	r2, r3
    2fec:	4b33      	ldr	r3, [pc, #204]	; (30bc <PacketParser+0x12c>)
    2fee:	8b1b      	ldrh	r3, [r3, #24]
    2ff0:	429a      	cmp	r2, r3
    2ff2:	d15c      	bne.n	30ae <PacketParser+0x11e>
    2ff4:	4b31      	ldr	r3, [pc, #196]	; (30bc <PacketParser+0x12c>)
    2ff6:	8adb      	ldrh	r3, [r3, #22]
    2ff8:	001a      	movs	r2, r3
    2ffa:	23ff      	movs	r3, #255	; 0xff
    2ffc:	021b      	lsls	r3, r3, #8
    2ffe:	401a      	ands	r2, r3
    3000:	2380      	movs	r3, #128	; 0x80
    3002:	005b      	lsls	r3, r3, #1
    3004:	429a      	cmp	r2, r3
    3006:	d110      	bne.n	302a <PacketParser+0x9a>
    3008:	4b2c      	ldr	r3, [pc, #176]	; (30bc <PacketParser+0x12c>)
    300a:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    300c:	2b00      	cmp	r3, #0
    300e:	d105      	bne.n	301c <PacketParser+0x8c>
    3010:	4b2d      	ldr	r3, [pc, #180]	; (30c8 <PacketParser+0x138>)
    3012:	681b      	ldr	r3, [r3, #0]
    3014:	1c5a      	adds	r2, r3, #1
    3016:	4b2c      	ldr	r3, [pc, #176]	; (30c8 <PacketParser+0x138>)
    3018:	601a      	str	r2, [r3, #0]
    301a:	e048      	b.n	30ae <PacketParser+0x11e>
    301c:	4b27      	ldr	r3, [pc, #156]	; (30bc <PacketParser+0x12c>)
    301e:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    3020:	2b08      	cmp	r3, #8
    3022:	d144      	bne.n	30ae <PacketParser+0x11e>
    3024:	f7ff fde4 	bl	2bf0 <Answear_ICMP>
    3028:	e041      	b.n	30ae <PacketParser+0x11e>
    302a:	4b24      	ldr	r3, [pc, #144]	; (30bc <PacketParser+0x12c>)
    302c:	8adb      	ldrh	r3, [r3, #22]
    302e:	001a      	movs	r2, r3
    3030:	23ff      	movs	r3, #255	; 0xff
    3032:	021b      	lsls	r3, r3, #8
    3034:	401a      	ands	r2, r3
    3036:	2388      	movs	r3, #136	; 0x88
    3038:	015b      	lsls	r3, r3, #5
    303a:	429a      	cmp	r2, r3
    303c:	d137      	bne.n	30ae <PacketParser+0x11e>
    303e:	4b1f      	ldr	r3, [pc, #124]	; (30bc <PacketParser+0x12c>)
    3040:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    3042:	021b      	lsls	r3, r3, #8
    3044:	b29a      	uxth	r2, r3
    3046:	4b1d      	ldr	r3, [pc, #116]	; (30bc <PacketParser+0x12c>)
    3048:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    304a:	0a1b      	lsrs	r3, r3, #8
    304c:	b29b      	uxth	r3, r3
    304e:	18d3      	adds	r3, r2, r3
    3050:	b29a      	uxth	r2, r3
    3052:	4b1e      	ldr	r3, [pc, #120]	; (30cc <PacketParser+0x13c>)
    3054:	801a      	strh	r2, [r3, #0]
    3056:	4b19      	ldr	r3, [pc, #100]	; (30bc <PacketParser+0x12c>)
    3058:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    305a:	021b      	lsls	r3, r3, #8
    305c:	b299      	uxth	r1, r3
    305e:	4b17      	ldr	r3, [pc, #92]	; (30bc <PacketParser+0x12c>)
    3060:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    3062:	0a1b      	lsrs	r3, r3, #8
    3064:	b29a      	uxth	r2, r3
    3066:	1dbb      	adds	r3, r7, #6
    3068:	188a      	adds	r2, r1, r2
    306a:	801a      	strh	r2, [r3, #0]
    306c:	1dbb      	adds	r3, r7, #6
    306e:	881b      	ldrh	r3, [r3, #0]
    3070:	4a17      	ldr	r2, [pc, #92]	; (30d0 <PacketParser+0x140>)
    3072:	4293      	cmp	r3, r2
    3074:	d11b      	bne.n	30ae <PacketParser+0x11e>
    3076:	4b17      	ldr	r3, [pc, #92]	; (30d4 <PacketParser+0x144>)
    3078:	0018      	movs	r0, r3
    307a:	f001 f829 	bl	40d0 <mdb_proc_adu>
    307e:	e016      	b.n	30ae <PacketParser+0x11e>
    3080:	4b0e      	ldr	r3, [pc, #56]	; (30bc <PacketParser+0x12c>)
    3082:	8a9a      	ldrh	r2, [r3, #20]
    3084:	2380      	movs	r3, #128	; 0x80
    3086:	005b      	lsls	r3, r3, #1
    3088:	429a      	cmp	r2, r3
    308a:	d112      	bne.n	30b2 <PacketParser+0x122>
    308c:	4b0b      	ldr	r3, [pc, #44]	; (30bc <PacketParser+0x12c>)
    308e:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    3090:	4b0c      	ldr	r3, [pc, #48]	; (30c4 <PacketParser+0x134>)
    3092:	881b      	ldrh	r3, [r3, #0]
    3094:	429a      	cmp	r2, r3
    3096:	d10c      	bne.n	30b2 <PacketParser+0x122>
    3098:	4b08      	ldr	r3, [pc, #32]	; (30bc <PacketParser+0x12c>)
    309a:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    309c:	4b09      	ldr	r3, [pc, #36]	; (30c4 <PacketParser+0x134>)
    309e:	885b      	ldrh	r3, [r3, #2]
    30a0:	429a      	cmp	r2, r3
    30a2:	d106      	bne.n	30b2 <PacketParser+0x122>
    30a4:	f7ff fb2e 	bl	2704 <Answear_ARP>
    30a8:	e003      	b.n	30b2 <PacketParser+0x122>
    30aa:	46c0      	nop			; (mov r8, r8)
    30ac:	e002      	b.n	30b4 <PacketParser+0x124>
    30ae:	46c0      	nop			; (mov r8, r8)
    30b0:	e000      	b.n	30b4 <PacketParser+0x124>
    30b2:	46c0      	nop			; (mov r8, r8)
    30b4:	46c0      	nop			; (mov r8, r8)
    30b6:	46bd      	mov	sp, r7
    30b8:	b002      	add	sp, #8
    30ba:	bd80      	pop	{r7, pc}
    30bc:	20004d38 	.word	0x20004d38
    30c0:	20004d1c 	.word	0x20004d1c
    30c4:	20000010 	.word	0x20000010
    30c8:	20004d34 	.word	0x20004d34
    30cc:	20005318 	.word	0x20005318
    30d0:	00001234 	.word	0x00001234
    30d4:	20004d62 	.word	0x20004d62

000030d8 <threadPacketParser>:
    30d8:	b580      	push	{r7, lr}
    30da:	b086      	sub	sp, #24
    30dc:	af00      	add	r7, sp, #0
    30de:	6078      	str	r0, [r7, #4]
    30e0:	4b31      	ldr	r3, [pc, #196]	; (31a8 <threadPacketParser+0xd0>)
    30e2:	0018      	movs	r0, r3
    30e4:	f003 fc94 	bl	6a10 <osMutexCreate>
    30e8:	0002      	movs	r2, r0
    30ea:	4b30      	ldr	r3, [pc, #192]	; (31ac <threadPacketParser+0xd4>)
    30ec:	601a      	str	r2, [r3, #0]
    30ee:	4b30      	ldr	r3, [pc, #192]	; (31b0 <threadPacketParser+0xd8>)
    30f0:	0018      	movs	r0, r3
    30f2:	f003 fc8d 	bl	6a10 <osMutexCreate>
    30f6:	0002      	movs	r2, r0
    30f8:	4b2e      	ldr	r3, [pc, #184]	; (31b4 <threadPacketParser+0xdc>)
    30fa:	601a      	str	r2, [r3, #0]
    30fc:	230c      	movs	r3, #12
    30fe:	18f8      	adds	r0, r7, r3
    3100:	23fa      	movs	r3, #250	; 0xfa
    3102:	005b      	lsls	r3, r3, #1
    3104:	001a      	movs	r2, r3
    3106:	2100      	movs	r1, #0
    3108:	f003 fbf4 	bl	68f4 <osSignalWait>
    310c:	230c      	movs	r3, #12
    310e:	18fb      	adds	r3, r7, r3
    3110:	681b      	ldr	r3, [r3, #0]
    3112:	2b08      	cmp	r3, #8
    3114:	d120      	bne.n	3158 <threadPacketParser+0x80>
    3116:	230c      	movs	r3, #12
    3118:	18fb      	adds	r3, r7, r3
    311a:	685b      	ldr	r3, [r3, #4]
    311c:	2b01      	cmp	r3, #1
    311e:	d142      	bne.n	31a6 <threadPacketParser+0xce>
    3120:	4b25      	ldr	r3, [pc, #148]	; (31b8 <threadPacketParser+0xe0>)
    3122:	4a25      	ldr	r2, [pc, #148]	; (31b8 <threadPacketParser+0xe0>)
    3124:	6812      	ldr	r2, [r2, #0]
    3126:	2180      	movs	r1, #128	; 0x80
    3128:	404a      	eors	r2, r1
    312a:	601a      	str	r2, [r3, #0]
    312c:	e00a      	b.n	3144 <threadPacketParser+0x6c>
    312e:	4b23      	ldr	r3, [pc, #140]	; (31bc <threadPacketParser+0xe4>)
    3130:	0018      	movs	r0, r3
    3132:	f7ff f8bd 	bl	22b0 <ReadPacket>
    3136:	0003      	movs	r3, r0
    3138:	b299      	uxth	r1, r3
    313a:	4b20      	ldr	r3, [pc, #128]	; (31bc <threadPacketParser+0xe4>)
    313c:	4a20      	ldr	r2, [pc, #128]	; (31c0 <threadPacketParser+0xe8>)
    313e:	5299      	strh	r1, [r3, r2]
    3140:	f7ff ff26 	bl	2f90 <PacketParser>
    3144:	23c0      	movs	r3, #192	; 0xc0
    3146:	059b      	lsls	r3, r3, #22
    3148:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    314a:	b29b      	uxth	r3, r3
    314c:	001a      	movs	r2, r3
    314e:	23e0      	movs	r3, #224	; 0xe0
    3150:	4013      	ands	r3, r2
    3152:	d1ec      	bne.n	312e <threadPacketParser+0x56>
    3154:	46c0      	nop			; (mov r8, r8)
    3156:	e026      	b.n	31a6 <threadPacketParser+0xce>
    3158:	230c      	movs	r3, #12
    315a:	18fb      	adds	r3, r7, r3
    315c:	681b      	ldr	r3, [r3, #0]
    315e:	2b40      	cmp	r3, #64	; 0x40
    3160:	d1cc      	bne.n	30fc <threadPacketParser+0x24>
    3162:	23c0      	movs	r3, #192	; 0xc0
    3164:	059b      	lsls	r3, r3, #22
    3166:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3168:	b29b      	uxth	r3, r3
    316a:	001a      	movs	r2, r3
    316c:	2302      	movs	r3, #2
    316e:	4013      	ands	r3, r2
    3170:	d104      	bne.n	317c <threadPacketParser+0xa4>
    3172:	4b14      	ldr	r3, [pc, #80]	; (31c4 <threadPacketParser+0xec>)
    3174:	2280      	movs	r2, #128	; 0x80
    3176:	0212      	lsls	r2, r2, #8
    3178:	621a      	str	r2, [r3, #32]
    317a:	e003      	b.n	3184 <threadPacketParser+0xac>
    317c:	4b11      	ldr	r3, [pc, #68]	; (31c4 <threadPacketParser+0xec>)
    317e:	2280      	movs	r2, #128	; 0x80
    3180:	0212      	lsls	r2, r2, #8
    3182:	625a      	str	r2, [r3, #36]	; 0x24
    3184:	23c0      	movs	r3, #192	; 0xc0
    3186:	059b      	lsls	r3, r3, #22
    3188:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    318a:	b29b      	uxth	r3, r3
    318c:	001a      	movs	r2, r3
    318e:	2308      	movs	r3, #8
    3190:	4013      	ands	r3, r2
    3192:	d104      	bne.n	319e <threadPacketParser+0xc6>
    3194:	4b0b      	ldr	r3, [pc, #44]	; (31c4 <threadPacketParser+0xec>)
    3196:	2280      	movs	r2, #128	; 0x80
    3198:	01d2      	lsls	r2, r2, #7
    319a:	621a      	str	r2, [r3, #32]
    319c:	e7ae      	b.n	30fc <threadPacketParser+0x24>
    319e:	4b09      	ldr	r3, [pc, #36]	; (31c4 <threadPacketParser+0xec>)
    31a0:	2280      	movs	r2, #128	; 0x80
    31a2:	01d2      	lsls	r2, r2, #7
    31a4:	625a      	str	r2, [r3, #36]	; 0x24
    31a6:	e7a9      	b.n	30fc <threadPacketParser+0x24>
    31a8:	00008cac 	.word	0x00008cac
    31ac:	2000532c 	.word	0x2000532c
    31b0:	00008cb0 	.word	0x00008cb0
    31b4:	20005340 	.word	0x20005340
    31b8:	400c0000 	.word	0x400c0000
    31bc:	20004d38 	.word	0x20004d38
    31c0:	000005dc 	.word	0x000005dc
    31c4:	400b0000 	.word	0x400b0000

000031c8 <crc32>:
    31c8:	b580      	push	{r7, lr}
    31ca:	b084      	sub	sp, #16
    31cc:	af00      	add	r7, sp, #0
    31ce:	6078      	str	r0, [r7, #4]
    31d0:	6039      	str	r1, [r7, #0]
    31d2:	2301      	movs	r3, #1
    31d4:	425b      	negs	r3, r3
    31d6:	60bb      	str	r3, [r7, #8]
    31d8:	2300      	movs	r3, #0
    31da:	60fb      	str	r3, [r7, #12]
    31dc:	e012      	b.n	3204 <crc32+0x3c>
    31de:	68bb      	ldr	r3, [r7, #8]
    31e0:	0a1a      	lsrs	r2, r3, #8
    31e2:	68fb      	ldr	r3, [r7, #12]
    31e4:	6879      	ldr	r1, [r7, #4]
    31e6:	18cb      	adds	r3, r1, r3
    31e8:	781b      	ldrb	r3, [r3, #0]
    31ea:	0019      	movs	r1, r3
    31ec:	68bb      	ldr	r3, [r7, #8]
    31ee:	404b      	eors	r3, r1
    31f0:	21ff      	movs	r1, #255	; 0xff
    31f2:	4019      	ands	r1, r3
    31f4:	4b08      	ldr	r3, [pc, #32]	; (3218 <crc32+0x50>)
    31f6:	0089      	lsls	r1, r1, #2
    31f8:	58cb      	ldr	r3, [r1, r3]
    31fa:	4053      	eors	r3, r2
    31fc:	60bb      	str	r3, [r7, #8]
    31fe:	68fb      	ldr	r3, [r7, #12]
    3200:	3301      	adds	r3, #1
    3202:	60fb      	str	r3, [r7, #12]
    3204:	68fa      	ldr	r2, [r7, #12]
    3206:	683b      	ldr	r3, [r7, #0]
    3208:	429a      	cmp	r2, r3
    320a:	d3e8      	bcc.n	31de <crc32+0x16>
    320c:	68bb      	ldr	r3, [r7, #8]
    320e:	0018      	movs	r0, r3
    3210:	46bd      	mov	sp, r7
    3212:	b004      	add	sp, #16
    3214:	bd80      	pop	{r7, pc}
    3216:	46c0      	nop			; (mov r8, r8)
    3218:	00008cb4 	.word	0x00008cb4

0000321c <crc16>:
    321c:	b580      	push	{r7, lr}
    321e:	b086      	sub	sp, #24
    3220:	af00      	add	r7, sp, #0
    3222:	6078      	str	r0, [r7, #4]
    3224:	6039      	str	r1, [r7, #0]
    3226:	2317      	movs	r3, #23
    3228:	18fb      	adds	r3, r7, r3
    322a:	22ff      	movs	r2, #255	; 0xff
    322c:	701a      	strb	r2, [r3, #0]
    322e:	2316      	movs	r3, #22
    3230:	18fb      	adds	r3, r7, r3
    3232:	22ff      	movs	r2, #255	; 0xff
    3234:	701a      	strb	r2, [r3, #0]
    3236:	2300      	movs	r3, #0
    3238:	613b      	str	r3, [r7, #16]
    323a:	e01e      	b.n	327a <crc16+0x5e>
    323c:	693b      	ldr	r3, [r7, #16]
    323e:	687a      	ldr	r2, [r7, #4]
    3240:	18d3      	adds	r3, r2, r3
    3242:	781a      	ldrb	r2, [r3, #0]
    3244:	2317      	movs	r3, #23
    3246:	18fb      	adds	r3, r7, r3
    3248:	781b      	ldrb	r3, [r3, #0]
    324a:	4053      	eors	r3, r2
    324c:	b2db      	uxtb	r3, r3
    324e:	60fb      	str	r3, [r7, #12]
    3250:	4a14      	ldr	r2, [pc, #80]	; (32a4 <crc16+0x88>)
    3252:	68fb      	ldr	r3, [r7, #12]
    3254:	18d3      	adds	r3, r2, r3
    3256:	7819      	ldrb	r1, [r3, #0]
    3258:	2317      	movs	r3, #23
    325a:	18fb      	adds	r3, r7, r3
    325c:	2216      	movs	r2, #22
    325e:	18ba      	adds	r2, r7, r2
    3260:	7812      	ldrb	r2, [r2, #0]
    3262:	404a      	eors	r2, r1
    3264:	701a      	strb	r2, [r3, #0]
    3266:	2316      	movs	r3, #22
    3268:	18fb      	adds	r3, r7, r3
    326a:	490f      	ldr	r1, [pc, #60]	; (32a8 <crc16+0x8c>)
    326c:	68fa      	ldr	r2, [r7, #12]
    326e:	188a      	adds	r2, r1, r2
    3270:	7812      	ldrb	r2, [r2, #0]
    3272:	701a      	strb	r2, [r3, #0]
    3274:	693b      	ldr	r3, [r7, #16]
    3276:	3301      	adds	r3, #1
    3278:	613b      	str	r3, [r7, #16]
    327a:	693a      	ldr	r2, [r7, #16]
    327c:	683b      	ldr	r3, [r7, #0]
    327e:	429a      	cmp	r2, r3
    3280:	dbdc      	blt.n	323c <crc16+0x20>
    3282:	2316      	movs	r3, #22
    3284:	18fb      	adds	r3, r7, r3
    3286:	781b      	ldrb	r3, [r3, #0]
    3288:	021b      	lsls	r3, r3, #8
    328a:	b21a      	sxth	r2, r3
    328c:	2317      	movs	r3, #23
    328e:	18fb      	adds	r3, r7, r3
    3290:	781b      	ldrb	r3, [r3, #0]
    3292:	b21b      	sxth	r3, r3
    3294:	4313      	orrs	r3, r2
    3296:	b21b      	sxth	r3, r3
    3298:	b29b      	uxth	r3, r3
    329a:	0018      	movs	r0, r3
    329c:	46bd      	mov	sp, r7
    329e:	b006      	add	sp, #24
    32a0:	bd80      	pop	{r7, pc}
    32a2:	46c0      	nop			; (mov r8, r8)
    32a4:	000090b4 	.word	0x000090b4
    32a8:	000091b4 	.word	0x000091b4

000032ac <eeprom_on>:
    32ac:	b580      	push	{r7, lr}
    32ae:	af00      	add	r7, sp, #0
    32b0:	b672      	cpsid	i
    32b2:	4b04      	ldr	r3, [pc, #16]	; (32c4 <eeprom_on+0x18>)
    32b4:	4a03      	ldr	r2, [pc, #12]	; (32c4 <eeprom_on+0x18>)
    32b6:	69d2      	ldr	r2, [r2, #28]
    32b8:	2108      	movs	r1, #8
    32ba:	430a      	orrs	r2, r1
    32bc:	61da      	str	r2, [r3, #28]
    32be:	46c0      	nop			; (mov r8, r8)
    32c0:	46bd      	mov	sp, r7
    32c2:	bd80      	pop	{r7, pc}
    32c4:	40020000 	.word	0x40020000

000032c8 <eeprom_off>:
    32c8:	b580      	push	{r7, lr}
    32ca:	af00      	add	r7, sp, #0
    32cc:	b662      	cpsie	i
    32ce:	4b04      	ldr	r3, [pc, #16]	; (32e0 <eeprom_off+0x18>)
    32d0:	4a03      	ldr	r2, [pc, #12]	; (32e0 <eeprom_off+0x18>)
    32d2:	69d2      	ldr	r2, [r2, #28]
    32d4:	2108      	movs	r1, #8
    32d6:	438a      	bics	r2, r1
    32d8:	61da      	str	r2, [r3, #28]
    32da:	46c0      	nop			; (mov r8, r8)
    32dc:	46bd      	mov	sp, r7
    32de:	bd80      	pop	{r7, pc}
    32e0:	40020000 	.word	0x40020000

000032e4 <par_default>:
    32e4:	b580      	push	{r7, lr}
    32e6:	af00      	add	r7, sp, #0
    32e8:	4b13      	ldr	r3, [pc, #76]	; (3338 <par_default+0x54>)
    32ea:	0018      	movs	r0, r3
    32ec:	2314      	movs	r3, #20
    32ee:	001a      	movs	r2, r3
    32f0:	2100      	movs	r1, #0
    32f2:	f001 ff1f 	bl	5134 <memset>
    32f6:	4b10      	ldr	r3, [pc, #64]	; (3338 <par_default+0x54>)
    32f8:	22bc      	movs	r2, #188	; 0xbc
    32fa:	701a      	strb	r2, [r3, #0]
    32fc:	4b0e      	ldr	r3, [pc, #56]	; (3338 <par_default+0x54>)
    32fe:	229a      	movs	r2, #154	; 0x9a
    3300:	705a      	strb	r2, [r3, #1]
    3302:	4b0d      	ldr	r3, [pc, #52]	; (3338 <par_default+0x54>)
    3304:	2278      	movs	r2, #120	; 0x78
    3306:	709a      	strb	r2, [r3, #2]
    3308:	4b0b      	ldr	r3, [pc, #44]	; (3338 <par_default+0x54>)
    330a:	2256      	movs	r2, #86	; 0x56
    330c:	70da      	strb	r2, [r3, #3]
    330e:	4b0a      	ldr	r3, [pc, #40]	; (3338 <par_default+0x54>)
    3310:	2234      	movs	r2, #52	; 0x34
    3312:	711a      	strb	r2, [r3, #4]
    3314:	4b08      	ldr	r3, [pc, #32]	; (3338 <par_default+0x54>)
    3316:	2212      	movs	r2, #18
    3318:	715a      	strb	r2, [r3, #5]
    331a:	4b07      	ldr	r3, [pc, #28]	; (3338 <par_default+0x54>)
    331c:	2201      	movs	r2, #1
    331e:	719a      	strb	r2, [r3, #6]
    3320:	4b05      	ldr	r3, [pc, #20]	; (3338 <par_default+0x54>)
    3322:	220a      	movs	r2, #10
    3324:	725a      	strb	r2, [r3, #9]
    3326:	4b04      	ldr	r3, [pc, #16]	; (3338 <par_default+0x54>)
    3328:	2202      	movs	r2, #2
    332a:	729a      	strb	r2, [r3, #10]
    332c:	4b02      	ldr	r3, [pc, #8]	; (3338 <par_default+0x54>)
    332e:	220a      	movs	r2, #10
    3330:	735a      	strb	r2, [r3, #13]
    3332:	46c0      	nop			; (mov r8, r8)
    3334:	46bd      	mov	sp, r7
    3336:	bd80      	pop	{r7, pc}
    3338:	20005b60 	.word	0x20005b60

0000333c <par_save>:
    333c:	b580      	push	{r7, lr}
    333e:	b084      	sub	sp, #16
    3340:	af00      	add	r7, sp, #0
    3342:	f7ff ffb3 	bl	32ac <eeprom_on>
    3346:	f005 fbf7 	bl	8b38 <__eeprom_erase_page_veneer>
    334a:	1e03      	subs	r3, r0, #0
    334c:	d01b      	beq.n	3386 <par_save+0x4a>
    334e:	4b11      	ldr	r3, [pc, #68]	; (3394 <par_save+0x58>)
    3350:	60bb      	str	r3, [r7, #8]
    3352:	2305      	movs	r3, #5
    3354:	603b      	str	r3, [r7, #0]
    3356:	2300      	movs	r3, #0
    3358:	607b      	str	r3, [r7, #4]
    335a:	2300      	movs	r3, #0
    335c:	60fb      	str	r3, [r7, #12]
    335e:	e00e      	b.n	337e <par_save+0x42>
    3360:	68bb      	ldr	r3, [r7, #8]
    3362:	1d1a      	adds	r2, r3, #4
    3364:	60ba      	str	r2, [r7, #8]
    3366:	681a      	ldr	r2, [r3, #0]
    3368:	687b      	ldr	r3, [r7, #4]
    336a:	0011      	movs	r1, r2
    336c:	0018      	movs	r0, r3
    336e:	f005 fbeb 	bl	8b48 <__eeprom_program_word_veneer>
    3372:	687b      	ldr	r3, [r7, #4]
    3374:	3304      	adds	r3, #4
    3376:	607b      	str	r3, [r7, #4]
    3378:	68fb      	ldr	r3, [r7, #12]
    337a:	3301      	adds	r3, #1
    337c:	60fb      	str	r3, [r7, #12]
    337e:	68fa      	ldr	r2, [r7, #12]
    3380:	683b      	ldr	r3, [r7, #0]
    3382:	429a      	cmp	r2, r3
    3384:	dbec      	blt.n	3360 <par_save+0x24>
    3386:	f7ff ff9f 	bl	32c8 <eeprom_off>
    338a:	46c0      	nop			; (mov r8, r8)
    338c:	46bd      	mov	sp, r7
    338e:	b004      	add	sp, #16
    3390:	bd80      	pop	{r7, pc}
    3392:	46c0      	nop			; (mov r8, r8)
    3394:	20005b60 	.word	0x20005b60

00003398 <par_verify>:
    3398:	b590      	push	{r4, r7, lr}
    339a:	b087      	sub	sp, #28
    339c:	af00      	add	r7, sp, #0
    339e:	2301      	movs	r3, #1
    33a0:	617b      	str	r3, [r7, #20]
    33a2:	f7ff ff83 	bl	32ac <eeprom_on>
    33a6:	4b13      	ldr	r3, [pc, #76]	; (33f4 <par_verify+0x5c>)
    33a8:	60fb      	str	r3, [r7, #12]
    33aa:	2305      	movs	r3, #5
    33ac:	607b      	str	r3, [r7, #4]
    33ae:	2300      	movs	r3, #0
    33b0:	60bb      	str	r3, [r7, #8]
    33b2:	2300      	movs	r3, #0
    33b4:	613b      	str	r3, [r7, #16]
    33b6:	e012      	b.n	33de <par_verify+0x46>
    33b8:	68fb      	ldr	r3, [r7, #12]
    33ba:	1d1a      	adds	r2, r3, #4
    33bc:	60fa      	str	r2, [r7, #12]
    33be:	681c      	ldr	r4, [r3, #0]
    33c0:	68bb      	ldr	r3, [r7, #8]
    33c2:	0018      	movs	r0, r3
    33c4:	f005 fbc8 	bl	8b58 <__eeprom_read_word_veneer>
    33c8:	0003      	movs	r3, r0
    33ca:	429c      	cmp	r4, r3
    33cc:	d001      	beq.n	33d2 <par_verify+0x3a>
    33ce:	2300      	movs	r3, #0
    33d0:	617b      	str	r3, [r7, #20]
    33d2:	68bb      	ldr	r3, [r7, #8]
    33d4:	3304      	adds	r3, #4
    33d6:	60bb      	str	r3, [r7, #8]
    33d8:	693b      	ldr	r3, [r7, #16]
    33da:	3301      	adds	r3, #1
    33dc:	613b      	str	r3, [r7, #16]
    33de:	693a      	ldr	r2, [r7, #16]
    33e0:	687b      	ldr	r3, [r7, #4]
    33e2:	429a      	cmp	r2, r3
    33e4:	dbe8      	blt.n	33b8 <par_verify+0x20>
    33e6:	f7ff ff6f 	bl	32c8 <eeprom_off>
    33ea:	697b      	ldr	r3, [r7, #20]
    33ec:	0018      	movs	r0, r3
    33ee:	46bd      	mov	sp, r7
    33f0:	b007      	add	sp, #28
    33f2:	bd90      	pop	{r4, r7, pc}
    33f4:	20005b60 	.word	0x20005b60

000033f8 <par_read>:
    33f8:	b590      	push	{r4, r7, lr}
    33fa:	b085      	sub	sp, #20
    33fc:	af00      	add	r7, sp, #0
    33fe:	f7ff ff55 	bl	32ac <eeprom_on>
    3402:	4b16      	ldr	r3, [pc, #88]	; (345c <par_read+0x64>)
    3404:	60bb      	str	r3, [r7, #8]
    3406:	2305      	movs	r3, #5
    3408:	603b      	str	r3, [r7, #0]
    340a:	2300      	movs	r3, #0
    340c:	607b      	str	r3, [r7, #4]
    340e:	2300      	movs	r3, #0
    3410:	60fb      	str	r3, [r7, #12]
    3412:	e00e      	b.n	3432 <par_read+0x3a>
    3414:	68bc      	ldr	r4, [r7, #8]
    3416:	1d23      	adds	r3, r4, #4
    3418:	60bb      	str	r3, [r7, #8]
    341a:	687b      	ldr	r3, [r7, #4]
    341c:	0018      	movs	r0, r3
    341e:	f005 fb9b 	bl	8b58 <__eeprom_read_word_veneer>
    3422:	0003      	movs	r3, r0
    3424:	6023      	str	r3, [r4, #0]
    3426:	687b      	ldr	r3, [r7, #4]
    3428:	3304      	adds	r3, #4
    342a:	607b      	str	r3, [r7, #4]
    342c:	68fb      	ldr	r3, [r7, #12]
    342e:	3301      	adds	r3, #1
    3430:	60fb      	str	r3, [r7, #12]
    3432:	68fa      	ldr	r2, [r7, #12]
    3434:	683b      	ldr	r3, [r7, #0]
    3436:	429a      	cmp	r2, r3
    3438:	dbec      	blt.n	3414 <par_read+0x1c>
    343a:	f7ff ff45 	bl	32c8 <eeprom_off>
    343e:	4b07      	ldr	r3, [pc, #28]	; (345c <par_read+0x64>)
    3440:	2114      	movs	r1, #20
    3442:	0018      	movs	r0, r3
    3444:	f7ff fec0 	bl	31c8 <crc32>
    3448:	1e03      	subs	r3, r0, #0
    344a:	d001      	beq.n	3450 <par_read+0x58>
    344c:	2300      	movs	r3, #0
    344e:	e000      	b.n	3452 <par_read+0x5a>
    3450:	2301      	movs	r3, #1
    3452:	0018      	movs	r0, r3
    3454:	46bd      	mov	sp, r7
    3456:	b005      	add	sp, #20
    3458:	bd90      	pop	{r4, r7, pc}
    345a:	46c0      	nop			; (mov r8, r8)
    345c:	20005b60 	.word	0x20005b60

00003460 <par_update>:
    3460:	b580      	push	{r7, lr}
    3462:	b088      	sub	sp, #32
    3464:	af00      	add	r7, sp, #0
    3466:	6078      	str	r0, [r7, #4]
    3468:	687b      	ldr	r3, [r7, #4]
    346a:	1c5a      	adds	r2, r3, #1
    346c:	607a      	str	r2, [r7, #4]
    346e:	781b      	ldrb	r3, [r3, #0]
    3470:	617b      	str	r3, [r7, #20]
    3472:	687b      	ldr	r3, [r7, #4]
    3474:	1c5a      	adds	r2, r3, #1
    3476:	607a      	str	r2, [r7, #4]
    3478:	781b      	ldrb	r3, [r3, #0]
    347a:	613b      	str	r3, [r7, #16]
    347c:	687b      	ldr	r3, [r7, #4]
    347e:	1c5a      	adds	r2, r3, #1
    3480:	607a      	str	r2, [r7, #4]
    3482:	781b      	ldrb	r3, [r3, #0]
    3484:	60fb      	str	r3, [r7, #12]
    3486:	687b      	ldr	r3, [r7, #4]
    3488:	1c5a      	adds	r2, r3, #1
    348a:	607a      	str	r2, [r7, #4]
    348c:	781b      	ldrb	r3, [r3, #0]
    348e:	021b      	lsls	r3, r3, #8
    3490:	001a      	movs	r2, r3
    3492:	68fb      	ldr	r3, [r7, #12]
    3494:	189b      	adds	r3, r3, r2
    3496:	60fb      	str	r3, [r7, #12]
    3498:	68fb      	ldr	r3, [r7, #12]
    349a:	2201      	movs	r2, #1
    349c:	4013      	ands	r3, r2
    349e:	60bb      	str	r3, [r7, #8]
    34a0:	697a      	ldr	r2, [r7, #20]
    34a2:	693b      	ldr	r3, [r7, #16]
    34a4:	18d3      	adds	r3, r2, r3
    34a6:	2b14      	cmp	r3, #20
    34a8:	d82c      	bhi.n	3504 <par_update+0xa4>
    34aa:	68bb      	ldr	r3, [r7, #8]
    34ac:	2b00      	cmp	r3, #0
    34ae:	d126      	bne.n	34fe <par_update+0x9e>
    34b0:	697a      	ldr	r2, [r7, #20]
    34b2:	4b16      	ldr	r3, [pc, #88]	; (350c <par_update+0xac>)
    34b4:	18d3      	adds	r3, r2, r3
    34b6:	61bb      	str	r3, [r7, #24]
    34b8:	2300      	movs	r3, #0
    34ba:	61fb      	str	r3, [r7, #28]
    34bc:	e00a      	b.n	34d4 <par_update+0x74>
    34be:	69bb      	ldr	r3, [r7, #24]
    34c0:	1c5a      	adds	r2, r3, #1
    34c2:	61ba      	str	r2, [r7, #24]
    34c4:	687a      	ldr	r2, [r7, #4]
    34c6:	1c51      	adds	r1, r2, #1
    34c8:	6079      	str	r1, [r7, #4]
    34ca:	7812      	ldrb	r2, [r2, #0]
    34cc:	701a      	strb	r2, [r3, #0]
    34ce:	69fb      	ldr	r3, [r7, #28]
    34d0:	3301      	adds	r3, #1
    34d2:	61fb      	str	r3, [r7, #28]
    34d4:	69fa      	ldr	r2, [r7, #28]
    34d6:	693b      	ldr	r3, [r7, #16]
    34d8:	429a      	cmp	r2, r3
    34da:	d3f0      	bcc.n	34be <par_update+0x5e>
    34dc:	4b0b      	ldr	r3, [pc, #44]	; (350c <par_update+0xac>)
    34de:	2110      	movs	r1, #16
    34e0:	0018      	movs	r0, r3
    34e2:	f7ff fe71 	bl	31c8 <crc32>
    34e6:	0002      	movs	r2, r0
    34e8:	4b08      	ldr	r3, [pc, #32]	; (350c <par_update+0xac>)
    34ea:	611a      	str	r2, [r3, #16]
    34ec:	f7ff ff26 	bl	333c <par_save>
    34f0:	f7ff ff52 	bl	3398 <par_verify>
    34f4:	1e03      	subs	r3, r0, #0
    34f6:	d106      	bne.n	3506 <par_update+0xa6>
    34f8:	f7ff fef4 	bl	32e4 <par_default>
    34fc:	e003      	b.n	3506 <par_update+0xa6>
    34fe:	f7ff ff7b 	bl	33f8 <par_read>
    3502:	e000      	b.n	3506 <par_update+0xa6>
    3504:	46c0      	nop			; (mov r8, r8)
    3506:	46bd      	mov	sp, r7
    3508:	b008      	add	sp, #32
    350a:	bd80      	pop	{r7, pc}
    350c:	20005b60 	.word	0x20005b60

00003510 <par_mac>:
    3510:	b580      	push	{r7, lr}
    3512:	b084      	sub	sp, #16
    3514:	af00      	add	r7, sp, #0
    3516:	6078      	str	r0, [r7, #4]
    3518:	4b0b      	ldr	r3, [pc, #44]	; (3548 <par_mac+0x38>)
    351a:	60fb      	str	r3, [r7, #12]
    351c:	2300      	movs	r3, #0
    351e:	60bb      	str	r3, [r7, #8]
    3520:	e00a      	b.n	3538 <par_mac+0x28>
    3522:	687b      	ldr	r3, [r7, #4]
    3524:	1c5a      	adds	r2, r3, #1
    3526:	607a      	str	r2, [r7, #4]
    3528:	68fa      	ldr	r2, [r7, #12]
    352a:	1e51      	subs	r1, r2, #1
    352c:	60f9      	str	r1, [r7, #12]
    352e:	7812      	ldrb	r2, [r2, #0]
    3530:	701a      	strb	r2, [r3, #0]
    3532:	68bb      	ldr	r3, [r7, #8]
    3534:	3301      	adds	r3, #1
    3536:	60bb      	str	r3, [r7, #8]
    3538:	68bb      	ldr	r3, [r7, #8]
    353a:	2b05      	cmp	r3, #5
    353c:	ddf1      	ble.n	3522 <par_mac+0x12>
    353e:	46c0      	nop			; (mov r8, r8)
    3540:	46bd      	mov	sp, r7
    3542:	b004      	add	sp, #16
    3544:	bd80      	pop	{r7, pc}
    3546:	46c0      	nop			; (mov r8, r8)
    3548:	20005b65 	.word	0x20005b65

0000354c <par_iploc>:
    354c:	b580      	push	{r7, lr}
    354e:	b084      	sub	sp, #16
    3550:	af00      	add	r7, sp, #0
    3552:	6078      	str	r0, [r7, #4]
    3554:	4b0b      	ldr	r3, [pc, #44]	; (3584 <par_iploc+0x38>)
    3556:	60fb      	str	r3, [r7, #12]
    3558:	2300      	movs	r3, #0
    355a:	60bb      	str	r3, [r7, #8]
    355c:	e00a      	b.n	3574 <par_iploc+0x28>
    355e:	687b      	ldr	r3, [r7, #4]
    3560:	1c5a      	adds	r2, r3, #1
    3562:	607a      	str	r2, [r7, #4]
    3564:	68fa      	ldr	r2, [r7, #12]
    3566:	1e51      	subs	r1, r2, #1
    3568:	60f9      	str	r1, [r7, #12]
    356a:	7812      	ldrb	r2, [r2, #0]
    356c:	701a      	strb	r2, [r3, #0]
    356e:	68bb      	ldr	r3, [r7, #8]
    3570:	3301      	adds	r3, #1
    3572:	60bb      	str	r3, [r7, #8]
    3574:	68bb      	ldr	r3, [r7, #8]
    3576:	2b03      	cmp	r3, #3
    3578:	ddf1      	ble.n	355e <par_iploc+0x12>
    357a:	46c0      	nop			; (mov r8, r8)
    357c:	46bd      	mov	sp, r7
    357e:	b004      	add	sp, #16
    3580:	bd80      	pop	{r7, pc}
    3582:	46c0      	nop			; (mov r8, r8)
    3584:	20005b69 	.word	0x20005b69

00003588 <par_iprem>:
    3588:	b580      	push	{r7, lr}
    358a:	b084      	sub	sp, #16
    358c:	af00      	add	r7, sp, #0
    358e:	6078      	str	r0, [r7, #4]
    3590:	4b0b      	ldr	r3, [pc, #44]	; (35c0 <par_iprem+0x38>)
    3592:	60fb      	str	r3, [r7, #12]
    3594:	2300      	movs	r3, #0
    3596:	60bb      	str	r3, [r7, #8]
    3598:	e00a      	b.n	35b0 <par_iprem+0x28>
    359a:	687b      	ldr	r3, [r7, #4]
    359c:	1c5a      	adds	r2, r3, #1
    359e:	607a      	str	r2, [r7, #4]
    35a0:	68fa      	ldr	r2, [r7, #12]
    35a2:	1e51      	subs	r1, r2, #1
    35a4:	60f9      	str	r1, [r7, #12]
    35a6:	7812      	ldrb	r2, [r2, #0]
    35a8:	701a      	strb	r2, [r3, #0]
    35aa:	68bb      	ldr	r3, [r7, #8]
    35ac:	3301      	adds	r3, #1
    35ae:	60bb      	str	r3, [r7, #8]
    35b0:	68bb      	ldr	r3, [r7, #8]
    35b2:	2b03      	cmp	r3, #3
    35b4:	ddf1      	ble.n	359a <par_iprem+0x12>
    35b6:	46c0      	nop			; (mov r8, r8)
    35b8:	46bd      	mov	sp, r7
    35ba:	b004      	add	sp, #16
    35bc:	bd80      	pop	{r7, pc}
    35be:	46c0      	nop			; (mov r8, r8)
    35c0:	20005b6d 	.word	0x20005b6d

000035c4 <mdb_fifo_read>:
    35c4:	b580      	push	{r7, lr}
    35c6:	b086      	sub	sp, #24
    35c8:	af00      	add	r7, sp, #0
    35ca:	6078      	str	r0, [r7, #4]
    35cc:	6039      	str	r1, [r7, #0]
    35ce:	4b1f      	ldr	r3, [pc, #124]	; (364c <mdb_fifo_read+0x88>)
    35d0:	681a      	ldr	r2, [r3, #0]
    35d2:	2301      	movs	r3, #1
    35d4:	425b      	negs	r3, r3
    35d6:	0019      	movs	r1, r3
    35d8:	0010      	movs	r0, r2
    35da:	f003 fa3f 	bl	6a5c <osMutexWait>
    35de:	4b1c      	ldr	r3, [pc, #112]	; (3650 <mdb_fifo_read+0x8c>)
    35e0:	681a      	ldr	r2, [r3, #0]
    35e2:	4b1c      	ldr	r3, [pc, #112]	; (3654 <mdb_fifo_read+0x90>)
    35e4:	681b      	ldr	r3, [r3, #0]
    35e6:	1ad3      	subs	r3, r2, r3
    35e8:	05db      	lsls	r3, r3, #23
    35ea:	0ddb      	lsrs	r3, r3, #23
    35ec:	613b      	str	r3, [r7, #16]
    35ee:	693b      	ldr	r3, [r7, #16]
    35f0:	2280      	movs	r2, #128	; 0x80
    35f2:	0092      	lsls	r2, r2, #2
    35f4:	1ad3      	subs	r3, r2, r3
    35f6:	60fb      	str	r3, [r7, #12]
    35f8:	683a      	ldr	r2, [r7, #0]
    35fa:	693b      	ldr	r3, [r7, #16]
    35fc:	429a      	cmp	r2, r3
    35fe:	d819      	bhi.n	3634 <mdb_fifo_read+0x70>
    3600:	2300      	movs	r3, #0
    3602:	617b      	str	r3, [r7, #20]
    3604:	e011      	b.n	362a <mdb_fifo_read+0x66>
    3606:	687b      	ldr	r3, [r7, #4]
    3608:	1c5a      	adds	r2, r3, #1
    360a:	607a      	str	r2, [r7, #4]
    360c:	4a11      	ldr	r2, [pc, #68]	; (3654 <mdb_fifo_read+0x90>)
    360e:	6812      	ldr	r2, [r2, #0]
    3610:	4911      	ldr	r1, [pc, #68]	; (3658 <mdb_fifo_read+0x94>)
    3612:	5c8a      	ldrb	r2, [r1, r2]
    3614:	701a      	strb	r2, [r3, #0]
    3616:	4b0f      	ldr	r3, [pc, #60]	; (3654 <mdb_fifo_read+0x90>)
    3618:	681b      	ldr	r3, [r3, #0]
    361a:	3301      	adds	r3, #1
    361c:	05db      	lsls	r3, r3, #23
    361e:	0dda      	lsrs	r2, r3, #23
    3620:	4b0c      	ldr	r3, [pc, #48]	; (3654 <mdb_fifo_read+0x90>)
    3622:	601a      	str	r2, [r3, #0]
    3624:	697b      	ldr	r3, [r7, #20]
    3626:	3301      	adds	r3, #1
    3628:	617b      	str	r3, [r7, #20]
    362a:	697a      	ldr	r2, [r7, #20]
    362c:	683b      	ldr	r3, [r7, #0]
    362e:	429a      	cmp	r2, r3
    3630:	dbe9      	blt.n	3606 <mdb_fifo_read+0x42>
    3632:	e001      	b.n	3638 <mdb_fifo_read+0x74>
    3634:	2300      	movs	r3, #0
    3636:	603b      	str	r3, [r7, #0]
    3638:	4b04      	ldr	r3, [pc, #16]	; (364c <mdb_fifo_read+0x88>)
    363a:	681b      	ldr	r3, [r3, #0]
    363c:	0018      	movs	r0, r3
    363e:	f003 fa1d 	bl	6a7c <osMutexRelease>
    3642:	683b      	ldr	r3, [r7, #0]
    3644:	0018      	movs	r0, r3
    3646:	46bd      	mov	sp, r7
    3648:	b006      	add	sp, #24
    364a:	bd80      	pop	{r7, pc}
    364c:	20000888 	.word	0x20000888
    3650:	20005d74 	.word	0x20005d74
    3654:	20005d78 	.word	0x20005d78
    3658:	20005b74 	.word	0x20005b74

0000365c <mdb_fifo_write>:
    365c:	b580      	push	{r7, lr}
    365e:	b086      	sub	sp, #24
    3660:	af00      	add	r7, sp, #0
    3662:	6078      	str	r0, [r7, #4]
    3664:	6039      	str	r1, [r7, #0]
    3666:	4b1c      	ldr	r3, [pc, #112]	; (36d8 <mdb_fifo_write+0x7c>)
    3668:	681a      	ldr	r2, [r3, #0]
    366a:	2301      	movs	r3, #1
    366c:	425b      	negs	r3, r3
    366e:	0019      	movs	r1, r3
    3670:	0010      	movs	r0, r2
    3672:	f003 f9f3 	bl	6a5c <osMutexWait>
    3676:	4b19      	ldr	r3, [pc, #100]	; (36dc <mdb_fifo_write+0x80>)
    3678:	681a      	ldr	r2, [r3, #0]
    367a:	4b19      	ldr	r3, [pc, #100]	; (36e0 <mdb_fifo_write+0x84>)
    367c:	681b      	ldr	r3, [r3, #0]
    367e:	1ad3      	subs	r3, r2, r3
    3680:	05db      	lsls	r3, r3, #23
    3682:	0ddb      	lsrs	r3, r3, #23
    3684:	613b      	str	r3, [r7, #16]
    3686:	693b      	ldr	r3, [r7, #16]
    3688:	2280      	movs	r2, #128	; 0x80
    368a:	0092      	lsls	r2, r2, #2
    368c:	1ad3      	subs	r3, r2, r3
    368e:	60fb      	str	r3, [r7, #12]
    3690:	2300      	movs	r3, #0
    3692:	617b      	str	r3, [r7, #20]
    3694:	e011      	b.n	36ba <mdb_fifo_write+0x5e>
    3696:	4b11      	ldr	r3, [pc, #68]	; (36dc <mdb_fifo_write+0x80>)
    3698:	681a      	ldr	r2, [r3, #0]
    369a:	687b      	ldr	r3, [r7, #4]
    369c:	1c59      	adds	r1, r3, #1
    369e:	6079      	str	r1, [r7, #4]
    36a0:	7819      	ldrb	r1, [r3, #0]
    36a2:	4b10      	ldr	r3, [pc, #64]	; (36e4 <mdb_fifo_write+0x88>)
    36a4:	5499      	strb	r1, [r3, r2]
    36a6:	4b0d      	ldr	r3, [pc, #52]	; (36dc <mdb_fifo_write+0x80>)
    36a8:	681b      	ldr	r3, [r3, #0]
    36aa:	3301      	adds	r3, #1
    36ac:	05db      	lsls	r3, r3, #23
    36ae:	0dda      	lsrs	r2, r3, #23
    36b0:	4b0a      	ldr	r3, [pc, #40]	; (36dc <mdb_fifo_write+0x80>)
    36b2:	601a      	str	r2, [r3, #0]
    36b4:	697b      	ldr	r3, [r7, #20]
    36b6:	3301      	adds	r3, #1
    36b8:	617b      	str	r3, [r7, #20]
    36ba:	697a      	ldr	r2, [r7, #20]
    36bc:	683b      	ldr	r3, [r7, #0]
    36be:	429a      	cmp	r2, r3
    36c0:	dbe9      	blt.n	3696 <mdb_fifo_write+0x3a>
    36c2:	4b05      	ldr	r3, [pc, #20]	; (36d8 <mdb_fifo_write+0x7c>)
    36c4:	681b      	ldr	r3, [r3, #0]
    36c6:	0018      	movs	r0, r3
    36c8:	f003 f9d8 	bl	6a7c <osMutexRelease>
    36cc:	683b      	ldr	r3, [r7, #0]
    36ce:	0018      	movs	r0, r3
    36d0:	46bd      	mov	sp, r7
    36d2:	b006      	add	sp, #24
    36d4:	bd80      	pop	{r7, pc}
    36d6:	46c0      	nop			; (mov r8, r8)
    36d8:	20000888 	.word	0x20000888
    36dc:	20005d74 	.word	0x20005d74
    36e0:	20005d78 	.word	0x20005d78
    36e4:	20005b74 	.word	0x20005b74

000036e8 <mdb_get_testparam>:
    36e8:	b5b0      	push	{r4, r5, r7, lr}
    36ea:	b086      	sub	sp, #24
    36ec:	af00      	add	r7, sp, #0
    36ee:	6078      	str	r0, [r7, #4]
    36f0:	4b84      	ldr	r3, [pc, #528]	; (3904 <mdb_get_testparam+0x21c>)
    36f2:	885b      	ldrh	r3, [r3, #2]
    36f4:	041b      	lsls	r3, r3, #16
    36f6:	4a83      	ldr	r2, [pc, #524]	; (3904 <mdb_get_testparam+0x21c>)
    36f8:	8892      	ldrh	r2, [r2, #4]
    36fa:	4313      	orrs	r3, r2
    36fc:	001a      	movs	r2, r3
    36fe:	687b      	ldr	r3, [r7, #4]
    3700:	21ff      	movs	r1, #255	; 0xff
    3702:	4011      	ands	r1, r2
    3704:	000c      	movs	r4, r1
    3706:	7819      	ldrb	r1, [r3, #0]
    3708:	2000      	movs	r0, #0
    370a:	4001      	ands	r1, r0
    370c:	1c08      	adds	r0, r1, #0
    370e:	1c21      	adds	r1, r4, #0
    3710:	4301      	orrs	r1, r0
    3712:	7019      	strb	r1, [r3, #0]
    3714:	0a11      	lsrs	r1, r2, #8
    3716:	20ff      	movs	r0, #255	; 0xff
    3718:	4001      	ands	r1, r0
    371a:	000c      	movs	r4, r1
    371c:	7859      	ldrb	r1, [r3, #1]
    371e:	2000      	movs	r0, #0
    3720:	4001      	ands	r1, r0
    3722:	1c08      	adds	r0, r1, #0
    3724:	1c21      	adds	r1, r4, #0
    3726:	4301      	orrs	r1, r0
    3728:	7059      	strb	r1, [r3, #1]
    372a:	0c11      	lsrs	r1, r2, #16
    372c:	20ff      	movs	r0, #255	; 0xff
    372e:	4001      	ands	r1, r0
    3730:	000c      	movs	r4, r1
    3732:	7899      	ldrb	r1, [r3, #2]
    3734:	2000      	movs	r0, #0
    3736:	4001      	ands	r1, r0
    3738:	1c08      	adds	r0, r1, #0
    373a:	1c21      	adds	r1, r4, #0
    373c:	4301      	orrs	r1, r0
    373e:	7099      	strb	r1, [r3, #2]
    3740:	0e10      	lsrs	r0, r2, #24
    3742:	78da      	ldrb	r2, [r3, #3]
    3744:	2100      	movs	r1, #0
    3746:	400a      	ands	r2, r1
    3748:	1c11      	adds	r1, r2, #0
    374a:	1c02      	adds	r2, r0, #0
    374c:	430a      	orrs	r2, r1
    374e:	70da      	strb	r2, [r3, #3]
    3750:	4b6c      	ldr	r3, [pc, #432]	; (3904 <mdb_get_testparam+0x21c>)
    3752:	88db      	ldrh	r3, [r3, #6]
    3754:	041b      	lsls	r3, r3, #16
    3756:	4a6b      	ldr	r2, [pc, #428]	; (3904 <mdb_get_testparam+0x21c>)
    3758:	8912      	ldrh	r2, [r2, #8]
    375a:	4313      	orrs	r3, r2
    375c:	001a      	movs	r2, r3
    375e:	687b      	ldr	r3, [r7, #4]
    3760:	21ff      	movs	r1, #255	; 0xff
    3762:	4011      	ands	r1, r2
    3764:	000c      	movs	r4, r1
    3766:	7919      	ldrb	r1, [r3, #4]
    3768:	2000      	movs	r0, #0
    376a:	4001      	ands	r1, r0
    376c:	1c08      	adds	r0, r1, #0
    376e:	1c21      	adds	r1, r4, #0
    3770:	4301      	orrs	r1, r0
    3772:	7119      	strb	r1, [r3, #4]
    3774:	0a11      	lsrs	r1, r2, #8
    3776:	20ff      	movs	r0, #255	; 0xff
    3778:	4001      	ands	r1, r0
    377a:	000c      	movs	r4, r1
    377c:	7959      	ldrb	r1, [r3, #5]
    377e:	2000      	movs	r0, #0
    3780:	4001      	ands	r1, r0
    3782:	1c08      	adds	r0, r1, #0
    3784:	1c21      	adds	r1, r4, #0
    3786:	4301      	orrs	r1, r0
    3788:	7159      	strb	r1, [r3, #5]
    378a:	0c11      	lsrs	r1, r2, #16
    378c:	20ff      	movs	r0, #255	; 0xff
    378e:	4001      	ands	r1, r0
    3790:	000c      	movs	r4, r1
    3792:	7999      	ldrb	r1, [r3, #6]
    3794:	2000      	movs	r0, #0
    3796:	4001      	ands	r1, r0
    3798:	1c08      	adds	r0, r1, #0
    379a:	1c21      	adds	r1, r4, #0
    379c:	4301      	orrs	r1, r0
    379e:	7199      	strb	r1, [r3, #6]
    37a0:	0e10      	lsrs	r0, r2, #24
    37a2:	79da      	ldrb	r2, [r3, #7]
    37a4:	2100      	movs	r1, #0
    37a6:	400a      	ands	r2, r1
    37a8:	1c11      	adds	r1, r2, #0
    37aa:	1c02      	adds	r2, r0, #0
    37ac:	430a      	orrs	r2, r1
    37ae:	71da      	strb	r2, [r3, #7]
    37b0:	4b54      	ldr	r3, [pc, #336]	; (3904 <mdb_get_testparam+0x21c>)
    37b2:	895b      	ldrh	r3, [r3, #10]
    37b4:	041b      	lsls	r3, r3, #16
    37b6:	4a53      	ldr	r2, [pc, #332]	; (3904 <mdb_get_testparam+0x21c>)
    37b8:	8992      	ldrh	r2, [r2, #12]
    37ba:	4313      	orrs	r3, r2
    37bc:	001a      	movs	r2, r3
    37be:	687b      	ldr	r3, [r7, #4]
    37c0:	21ff      	movs	r1, #255	; 0xff
    37c2:	4011      	ands	r1, r2
    37c4:	000c      	movs	r4, r1
    37c6:	7a19      	ldrb	r1, [r3, #8]
    37c8:	2000      	movs	r0, #0
    37ca:	4001      	ands	r1, r0
    37cc:	1c08      	adds	r0, r1, #0
    37ce:	1c21      	adds	r1, r4, #0
    37d0:	4301      	orrs	r1, r0
    37d2:	7219      	strb	r1, [r3, #8]
    37d4:	0a11      	lsrs	r1, r2, #8
    37d6:	20ff      	movs	r0, #255	; 0xff
    37d8:	4001      	ands	r1, r0
    37da:	000c      	movs	r4, r1
    37dc:	7a59      	ldrb	r1, [r3, #9]
    37de:	2000      	movs	r0, #0
    37e0:	4001      	ands	r1, r0
    37e2:	1c08      	adds	r0, r1, #0
    37e4:	1c21      	adds	r1, r4, #0
    37e6:	4301      	orrs	r1, r0
    37e8:	7259      	strb	r1, [r3, #9]
    37ea:	0c11      	lsrs	r1, r2, #16
    37ec:	20ff      	movs	r0, #255	; 0xff
    37ee:	4001      	ands	r1, r0
    37f0:	000c      	movs	r4, r1
    37f2:	7a99      	ldrb	r1, [r3, #10]
    37f4:	2000      	movs	r0, #0
    37f6:	4001      	ands	r1, r0
    37f8:	1c08      	adds	r0, r1, #0
    37fa:	1c21      	adds	r1, r4, #0
    37fc:	4301      	orrs	r1, r0
    37fe:	7299      	strb	r1, [r3, #10]
    3800:	0e10      	lsrs	r0, r2, #24
    3802:	7ada      	ldrb	r2, [r3, #11]
    3804:	2100      	movs	r1, #0
    3806:	400a      	ands	r2, r1
    3808:	1c11      	adds	r1, r2, #0
    380a:	1c02      	adds	r2, r0, #0
    380c:	430a      	orrs	r2, r1
    380e:	72da      	strb	r2, [r3, #11]
    3810:	4b3c      	ldr	r3, [pc, #240]	; (3904 <mdb_get_testparam+0x21c>)
    3812:	89db      	ldrh	r3, [r3, #14]
    3814:	041b      	lsls	r3, r3, #16
    3816:	4a3b      	ldr	r2, [pc, #236]	; (3904 <mdb_get_testparam+0x21c>)
    3818:	8a12      	ldrh	r2, [r2, #16]
    381a:	4313      	orrs	r3, r2
    381c:	001a      	movs	r2, r3
    381e:	687b      	ldr	r3, [r7, #4]
    3820:	21ff      	movs	r1, #255	; 0xff
    3822:	4011      	ands	r1, r2
    3824:	000c      	movs	r4, r1
    3826:	7b19      	ldrb	r1, [r3, #12]
    3828:	2000      	movs	r0, #0
    382a:	4001      	ands	r1, r0
    382c:	1c08      	adds	r0, r1, #0
    382e:	1c21      	adds	r1, r4, #0
    3830:	4301      	orrs	r1, r0
    3832:	7319      	strb	r1, [r3, #12]
    3834:	0a11      	lsrs	r1, r2, #8
    3836:	20ff      	movs	r0, #255	; 0xff
    3838:	4001      	ands	r1, r0
    383a:	000c      	movs	r4, r1
    383c:	7b59      	ldrb	r1, [r3, #13]
    383e:	2000      	movs	r0, #0
    3840:	4001      	ands	r1, r0
    3842:	1c08      	adds	r0, r1, #0
    3844:	1c21      	adds	r1, r4, #0
    3846:	4301      	orrs	r1, r0
    3848:	7359      	strb	r1, [r3, #13]
    384a:	0c11      	lsrs	r1, r2, #16
    384c:	20ff      	movs	r0, #255	; 0xff
    384e:	4001      	ands	r1, r0
    3850:	000c      	movs	r4, r1
    3852:	7b99      	ldrb	r1, [r3, #14]
    3854:	2000      	movs	r0, #0
    3856:	4001      	ands	r1, r0
    3858:	1c08      	adds	r0, r1, #0
    385a:	1c21      	adds	r1, r4, #0
    385c:	4301      	orrs	r1, r0
    385e:	7399      	strb	r1, [r3, #14]
    3860:	0e10      	lsrs	r0, r2, #24
    3862:	7bda      	ldrb	r2, [r3, #15]
    3864:	2100      	movs	r1, #0
    3866:	400a      	ands	r2, r1
    3868:	1c11      	adds	r1, r2, #0
    386a:	1c02      	adds	r2, r0, #0
    386c:	430a      	orrs	r2, r1
    386e:	73da      	strb	r2, [r3, #15]
    3870:	4b25      	ldr	r3, [pc, #148]	; (3908 <mdb_get_testparam+0x220>)
    3872:	613b      	str	r3, [r7, #16]
    3874:	4b25      	ldr	r3, [pc, #148]	; (390c <mdb_get_testparam+0x224>)
    3876:	60fb      	str	r3, [r7, #12]
    3878:	2300      	movs	r3, #0
    387a:	617b      	str	r3, [r7, #20]
    387c:	e03a      	b.n	38f4 <mdb_get_testparam+0x20c>
    387e:	693b      	ldr	r3, [r7, #16]
    3880:	1c9a      	adds	r2, r3, #2
    3882:	613a      	str	r2, [r7, #16]
    3884:	8819      	ldrh	r1, [r3, #0]
    3886:	687a      	ldr	r2, [r7, #4]
    3888:	697b      	ldr	r3, [r7, #20]
    388a:	3308      	adds	r3, #8
    388c:	005b      	lsls	r3, r3, #1
    388e:	20ff      	movs	r0, #255	; 0xff
    3890:	4008      	ands	r0, r1
    3892:	0005      	movs	r5, r0
    3894:	5c98      	ldrb	r0, [r3, r2]
    3896:	2400      	movs	r4, #0
    3898:	4020      	ands	r0, r4
    389a:	1c04      	adds	r4, r0, #0
    389c:	1c28      	adds	r0, r5, #0
    389e:	4320      	orrs	r0, r4
    38a0:	5498      	strb	r0, [r3, r2]
    38a2:	0a09      	lsrs	r1, r1, #8
    38a4:	b288      	uxth	r0, r1
    38a6:	18d3      	adds	r3, r2, r3
    38a8:	785a      	ldrb	r2, [r3, #1]
    38aa:	2100      	movs	r1, #0
    38ac:	400a      	ands	r2, r1
    38ae:	1c11      	adds	r1, r2, #0
    38b0:	1c02      	adds	r2, r0, #0
    38b2:	430a      	orrs	r2, r1
    38b4:	705a      	strb	r2, [r3, #1]
    38b6:	68fb      	ldr	r3, [r7, #12]
    38b8:	1c9a      	adds	r2, r3, #2
    38ba:	60fa      	str	r2, [r7, #12]
    38bc:	881a      	ldrh	r2, [r3, #0]
    38be:	6879      	ldr	r1, [r7, #4]
    38c0:	697b      	ldr	r3, [r7, #20]
    38c2:	330c      	adds	r3, #12
    38c4:	005b      	lsls	r3, r3, #1
    38c6:	18cb      	adds	r3, r1, r3
    38c8:	21ff      	movs	r1, #255	; 0xff
    38ca:	4011      	ands	r1, r2
    38cc:	000c      	movs	r4, r1
    38ce:	7899      	ldrb	r1, [r3, #2]
    38d0:	2000      	movs	r0, #0
    38d2:	4001      	ands	r1, r0
    38d4:	1c08      	adds	r0, r1, #0
    38d6:	1c21      	adds	r1, r4, #0
    38d8:	4301      	orrs	r1, r0
    38da:	7099      	strb	r1, [r3, #2]
    38dc:	0a12      	lsrs	r2, r2, #8
    38de:	b290      	uxth	r0, r2
    38e0:	78da      	ldrb	r2, [r3, #3]
    38e2:	2100      	movs	r1, #0
    38e4:	400a      	ands	r2, r1
    38e6:	1c11      	adds	r1, r2, #0
    38e8:	1c02      	adds	r2, r0, #0
    38ea:	430a      	orrs	r2, r1
    38ec:	70da      	strb	r2, [r3, #3]
    38ee:	697b      	ldr	r3, [r7, #20]
    38f0:	3301      	adds	r3, #1
    38f2:	617b      	str	r3, [r7, #20]
    38f4:	697b      	ldr	r3, [r7, #20]
    38f6:	2b04      	cmp	r3, #4
    38f8:	ddc1      	ble.n	387e <mdb_get_testparam+0x196>
    38fa:	46c0      	nop			; (mov r8, r8)
    38fc:	46bd      	mov	sp, r7
    38fe:	b006      	add	sp, #24
    3900:	bdb0      	pop	{r4, r5, r7, pc}
    3902:	46c0      	nop			; (mov r8, r8)
    3904:	20005d7c 	.word	0x20005d7c
    3908:	20005d8e 	.word	0x20005d8e
    390c:	20005d98 	.word	0x20005d98

00003910 <mdb_get_holding_register>:
    3910:	b580      	push	{r7, lr}
    3912:	b084      	sub	sp, #16
    3914:	af00      	add	r7, sp, #0
    3916:	6078      	str	r0, [r7, #4]
    3918:	687b      	ldr	r3, [r7, #4]
    391a:	2b00      	cmp	r3, #0
    391c:	db02      	blt.n	3924 <mdb_get_holding_register+0x14>
    391e:	687b      	ldr	r3, [r7, #4]
    3920:	2b17      	cmp	r3, #23
    3922:	dd01      	ble.n	3928 <mdb_get_holding_register+0x18>
    3924:	2300      	movs	r3, #0
    3926:	e009      	b.n	393c <mdb_get_holding_register+0x2c>
    3928:	230e      	movs	r3, #14
    392a:	18fb      	adds	r3, r7, r3
    392c:	4a05      	ldr	r2, [pc, #20]	; (3944 <mdb_get_holding_register+0x34>)
    392e:	6879      	ldr	r1, [r7, #4]
    3930:	0049      	lsls	r1, r1, #1
    3932:	5a8a      	ldrh	r2, [r1, r2]
    3934:	801a      	strh	r2, [r3, #0]
    3936:	230e      	movs	r3, #14
    3938:	18fb      	adds	r3, r7, r3
    393a:	881b      	ldrh	r3, [r3, #0]
    393c:	0018      	movs	r0, r3
    393e:	46bd      	mov	sp, r7
    3940:	b004      	add	sp, #16
    3942:	bd80      	pop	{r7, pc}
    3944:	20005d7c 	.word	0x20005d7c

00003948 <pdu_report_server_id>:
    3948:	b580      	push	{r7, lr}
    394a:	b086      	sub	sp, #24
    394c:	af00      	add	r7, sp, #0
    394e:	6078      	str	r0, [r7, #4]
    3950:	2311      	movs	r3, #17
    3952:	60fb      	str	r3, [r7, #12]
    3954:	4b1f      	ldr	r3, [pc, #124]	; (39d4 <pdu_report_server_id+0x8c>)
    3956:	681a      	ldr	r2, [r3, #0]
    3958:	687b      	ldr	r3, [r7, #4]
    395a:	18d2      	adds	r2, r2, r3
    395c:	230b      	movs	r3, #11
    395e:	18fb      	adds	r3, r7, r3
    3960:	7812      	ldrb	r2, [r2, #0]
    3962:	701a      	strb	r2, [r3, #0]
    3964:	687b      	ldr	r3, [r7, #4]
    3966:	617b      	str	r3, [r7, #20]
    3968:	697b      	ldr	r3, [r7, #20]
    396a:	1c5a      	adds	r2, r3, #1
    396c:	617a      	str	r2, [r7, #20]
    396e:	4a1a      	ldr	r2, [pc, #104]	; (39d8 <pdu_report_server_id+0x90>)
    3970:	210b      	movs	r1, #11
    3972:	1879      	adds	r1, r7, r1
    3974:	7809      	ldrb	r1, [r1, #0]
    3976:	54d1      	strb	r1, [r2, r3]
    3978:	697b      	ldr	r3, [r7, #20]
    397a:	1c5a      	adds	r2, r3, #1
    397c:	617a      	str	r2, [r7, #20]
    397e:	68fa      	ldr	r2, [r7, #12]
    3980:	b2d2      	uxtb	r2, r2
    3982:	3202      	adds	r2, #2
    3984:	b2d1      	uxtb	r1, r2
    3986:	4a14      	ldr	r2, [pc, #80]	; (39d8 <pdu_report_server_id+0x90>)
    3988:	54d1      	strb	r1, [r2, r3]
    398a:	697b      	ldr	r3, [r7, #20]
    398c:	1c5a      	adds	r2, r3, #1
    398e:	617a      	str	r2, [r7, #20]
    3990:	4a11      	ldr	r2, [pc, #68]	; (39d8 <pdu_report_server_id+0x90>)
    3992:	2111      	movs	r1, #17
    3994:	54d1      	strb	r1, [r2, r3]
    3996:	697b      	ldr	r3, [r7, #20]
    3998:	1c5a      	adds	r2, r3, #1
    399a:	617a      	str	r2, [r7, #20]
    399c:	4a0e      	ldr	r2, [pc, #56]	; (39d8 <pdu_report_server_id+0x90>)
    399e:	21ff      	movs	r1, #255	; 0xff
    39a0:	54d1      	strb	r1, [r2, r3]
    39a2:	2300      	movs	r3, #0
    39a4:	613b      	str	r3, [r7, #16]
    39a6:	e00b      	b.n	39c0 <pdu_report_server_id+0x78>
    39a8:	697b      	ldr	r3, [r7, #20]
    39aa:	1c5a      	adds	r2, r3, #1
    39ac:	617a      	str	r2, [r7, #20]
    39ae:	490b      	ldr	r1, [pc, #44]	; (39dc <pdu_report_server_id+0x94>)
    39b0:	693a      	ldr	r2, [r7, #16]
    39b2:	188a      	adds	r2, r1, r2
    39b4:	7811      	ldrb	r1, [r2, #0]
    39b6:	4a08      	ldr	r2, [pc, #32]	; (39d8 <pdu_report_server_id+0x90>)
    39b8:	54d1      	strb	r1, [r2, r3]
    39ba:	693b      	ldr	r3, [r7, #16]
    39bc:	3301      	adds	r3, #1
    39be:	613b      	str	r3, [r7, #16]
    39c0:	693a      	ldr	r2, [r7, #16]
    39c2:	68fb      	ldr	r3, [r7, #12]
    39c4:	429a      	cmp	r2, r3
    39c6:	dbef      	blt.n	39a8 <pdu_report_server_id+0x60>
    39c8:	697b      	ldr	r3, [r7, #20]
    39ca:	0018      	movs	r0, r3
    39cc:	46bd      	mov	sp, r7
    39ce:	b006      	add	sp, #24
    39d0:	bd80      	pop	{r7, pc}
    39d2:	46c0      	nop			; (mov r8, r8)
    39d4:	20005db8 	.word	0x20005db8
    39d8:	20005dbc 	.word	0x20005dbc
    39dc:	000092c8 	.word	0x000092c8

000039e0 <pdu_read_input_registers>:
    39e0:	b580      	push	{r7, lr}
    39e2:	b086      	sub	sp, #24
    39e4:	af00      	add	r7, sp, #0
    39e6:	6078      	str	r0, [r7, #4]
    39e8:	4b4e      	ldr	r3, [pc, #312]	; (3b24 <pdu_read_input_registers+0x144>)
    39ea:	681a      	ldr	r2, [r3, #0]
    39ec:	687b      	ldr	r3, [r7, #4]
    39ee:	18d2      	adds	r2, r2, r3
    39f0:	230f      	movs	r3, #15
    39f2:	18fb      	adds	r3, r7, r3
    39f4:	7812      	ldrb	r2, [r2, #0]
    39f6:	701a      	strb	r2, [r3, #0]
    39f8:	4b4a      	ldr	r3, [pc, #296]	; (3b24 <pdu_read_input_registers+0x144>)
    39fa:	681a      	ldr	r2, [r3, #0]
    39fc:	687b      	ldr	r3, [r7, #4]
    39fe:	3301      	adds	r3, #1
    3a00:	18d3      	adds	r3, r2, r3
    3a02:	781b      	ldrb	r3, [r3, #0]
    3a04:	021b      	lsls	r3, r3, #8
    3a06:	b21a      	sxth	r2, r3
    3a08:	4b46      	ldr	r3, [pc, #280]	; (3b24 <pdu_read_input_registers+0x144>)
    3a0a:	6819      	ldr	r1, [r3, #0]
    3a0c:	687b      	ldr	r3, [r7, #4]
    3a0e:	3302      	adds	r3, #2
    3a10:	18cb      	adds	r3, r1, r3
    3a12:	781b      	ldrb	r3, [r3, #0]
    3a14:	b21b      	sxth	r3, r3
    3a16:	4313      	orrs	r3, r2
    3a18:	b21a      	sxth	r2, r3
    3a1a:	230c      	movs	r3, #12
    3a1c:	18fb      	adds	r3, r7, r3
    3a1e:	801a      	strh	r2, [r3, #0]
    3a20:	4b40      	ldr	r3, [pc, #256]	; (3b24 <pdu_read_input_registers+0x144>)
    3a22:	681a      	ldr	r2, [r3, #0]
    3a24:	687b      	ldr	r3, [r7, #4]
    3a26:	3303      	adds	r3, #3
    3a28:	18d3      	adds	r3, r2, r3
    3a2a:	781b      	ldrb	r3, [r3, #0]
    3a2c:	021b      	lsls	r3, r3, #8
    3a2e:	b21a      	sxth	r2, r3
    3a30:	4b3c      	ldr	r3, [pc, #240]	; (3b24 <pdu_read_input_registers+0x144>)
    3a32:	6819      	ldr	r1, [r3, #0]
    3a34:	687b      	ldr	r3, [r7, #4]
    3a36:	3304      	adds	r3, #4
    3a38:	18cb      	adds	r3, r1, r3
    3a3a:	781b      	ldrb	r3, [r3, #0]
    3a3c:	b21b      	sxth	r3, r3
    3a3e:	4313      	orrs	r3, r2
    3a40:	b21a      	sxth	r2, r3
    3a42:	230a      	movs	r3, #10
    3a44:	18fb      	adds	r3, r7, r3
    3a46:	801a      	strh	r2, [r3, #0]
    3a48:	230c      	movs	r3, #12
    3a4a:	18fb      	adds	r3, r7, r3
    3a4c:	881b      	ldrh	r3, [r3, #0]
    3a4e:	2bff      	cmp	r3, #255	; 0xff
    3a50:	d90a      	bls.n	3a68 <pdu_read_input_registers+0x88>
    3a52:	230c      	movs	r3, #12
    3a54:	18fb      	adds	r3, r7, r3
    3a56:	881a      	ldrh	r2, [r3, #0]
    3a58:	230a      	movs	r3, #10
    3a5a:	18fb      	adds	r3, r7, r3
    3a5c:	881b      	ldrh	r3, [r3, #0]
    3a5e:	18d2      	adds	r2, r2, r3
    3a60:	2304      	movs	r3, #4
    3a62:	33ff      	adds	r3, #255	; 0xff
    3a64:	429a      	cmp	r2, r3
    3a66:	dd15      	ble.n	3a94 <pdu_read_input_registers+0xb4>
    3a68:	687b      	ldr	r3, [r7, #4]
    3a6a:	613b      	str	r3, [r7, #16]
    3a6c:	693b      	ldr	r3, [r7, #16]
    3a6e:	1c5a      	adds	r2, r3, #1
    3a70:	613a      	str	r2, [r7, #16]
    3a72:	220f      	movs	r2, #15
    3a74:	18ba      	adds	r2, r7, r2
    3a76:	7812      	ldrb	r2, [r2, #0]
    3a78:	2180      	movs	r1, #128	; 0x80
    3a7a:	4249      	negs	r1, r1
    3a7c:	430a      	orrs	r2, r1
    3a7e:	b2d1      	uxtb	r1, r2
    3a80:	4a29      	ldr	r2, [pc, #164]	; (3b28 <pdu_read_input_registers+0x148>)
    3a82:	54d1      	strb	r1, [r2, r3]
    3a84:	693b      	ldr	r3, [r7, #16]
    3a86:	1c5a      	adds	r2, r3, #1
    3a88:	613a      	str	r2, [r7, #16]
    3a8a:	4a27      	ldr	r2, [pc, #156]	; (3b28 <pdu_read_input_registers+0x148>)
    3a8c:	2102      	movs	r1, #2
    3a8e:	54d1      	strb	r1, [r2, r3]
    3a90:	693b      	ldr	r3, [r7, #16]
    3a92:	e042      	b.n	3b1a <pdu_read_input_registers+0x13a>
    3a94:	687b      	ldr	r3, [r7, #4]
    3a96:	613b      	str	r3, [r7, #16]
    3a98:	693b      	ldr	r3, [r7, #16]
    3a9a:	1c5a      	adds	r2, r3, #1
    3a9c:	613a      	str	r2, [r7, #16]
    3a9e:	4a22      	ldr	r2, [pc, #136]	; (3b28 <pdu_read_input_registers+0x148>)
    3aa0:	210f      	movs	r1, #15
    3aa2:	1879      	adds	r1, r7, r1
    3aa4:	7809      	ldrb	r1, [r1, #0]
    3aa6:	54d1      	strb	r1, [r2, r3]
    3aa8:	693b      	ldr	r3, [r7, #16]
    3aaa:	1c5a      	adds	r2, r3, #1
    3aac:	613a      	str	r2, [r7, #16]
    3aae:	220a      	movs	r2, #10
    3ab0:	18ba      	adds	r2, r7, r2
    3ab2:	8812      	ldrh	r2, [r2, #0]
    3ab4:	b2d2      	uxtb	r2, r2
    3ab6:	1892      	adds	r2, r2, r2
    3ab8:	b2d1      	uxtb	r1, r2
    3aba:	4a1b      	ldr	r2, [pc, #108]	; (3b28 <pdu_read_input_registers+0x148>)
    3abc:	54d1      	strb	r1, [r2, r3]
    3abe:	2300      	movs	r3, #0
    3ac0:	617b      	str	r3, [r7, #20]
    3ac2:	e023      	b.n	3b0c <pdu_read_input_registers+0x12c>
    3ac4:	230c      	movs	r3, #12
    3ac6:	18fb      	adds	r3, r7, r3
    3ac8:	881b      	ldrh	r3, [r3, #0]
    3aca:	1e5a      	subs	r2, r3, #1
    3acc:	3aff      	subs	r2, #255	; 0xff
    3ace:	697b      	ldr	r3, [r7, #20]
    3ad0:	18d1      	adds	r1, r2, r3
    3ad2:	2308      	movs	r3, #8
    3ad4:	18fb      	adds	r3, r7, r3
    3ad6:	4a15      	ldr	r2, [pc, #84]	; (3b2c <pdu_read_input_registers+0x14c>)
    3ad8:	0049      	lsls	r1, r1, #1
    3ada:	5a8a      	ldrh	r2, [r1, r2]
    3adc:	801a      	strh	r2, [r3, #0]
    3ade:	693b      	ldr	r3, [r7, #16]
    3ae0:	1c5a      	adds	r2, r3, #1
    3ae2:	613a      	str	r2, [r7, #16]
    3ae4:	2208      	movs	r2, #8
    3ae6:	18ba      	adds	r2, r7, r2
    3ae8:	8812      	ldrh	r2, [r2, #0]
    3aea:	0a12      	lsrs	r2, r2, #8
    3aec:	b292      	uxth	r2, r2
    3aee:	b2d1      	uxtb	r1, r2
    3af0:	4a0d      	ldr	r2, [pc, #52]	; (3b28 <pdu_read_input_registers+0x148>)
    3af2:	54d1      	strb	r1, [r2, r3]
    3af4:	693b      	ldr	r3, [r7, #16]
    3af6:	1c5a      	adds	r2, r3, #1
    3af8:	613a      	str	r2, [r7, #16]
    3afa:	2208      	movs	r2, #8
    3afc:	18ba      	adds	r2, r7, r2
    3afe:	8812      	ldrh	r2, [r2, #0]
    3b00:	b2d1      	uxtb	r1, r2
    3b02:	4a09      	ldr	r2, [pc, #36]	; (3b28 <pdu_read_input_registers+0x148>)
    3b04:	54d1      	strb	r1, [r2, r3]
    3b06:	697b      	ldr	r3, [r7, #20]
    3b08:	3301      	adds	r3, #1
    3b0a:	617b      	str	r3, [r7, #20]
    3b0c:	230a      	movs	r3, #10
    3b0e:	18fb      	adds	r3, r7, r3
    3b10:	881a      	ldrh	r2, [r3, #0]
    3b12:	697b      	ldr	r3, [r7, #20]
    3b14:	429a      	cmp	r2, r3
    3b16:	dcd5      	bgt.n	3ac4 <pdu_read_input_registers+0xe4>
    3b18:	693b      	ldr	r3, [r7, #16]
    3b1a:	0018      	movs	r0, r3
    3b1c:	46bd      	mov	sp, r7
    3b1e:	b006      	add	sp, #24
    3b20:	bd80      	pop	{r7, pc}
    3b22:	46c0      	nop			; (mov r8, r8)
    3b24:	20005db8 	.word	0x20005db8
    3b28:	20005dbc 	.word	0x20005dbc
    3b2c:	20005dac 	.word	0x20005dac

00003b30 <pdu_write_multiply_registers>:
    3b30:	b580      	push	{r7, lr}
    3b32:	b088      	sub	sp, #32
    3b34:	af00      	add	r7, sp, #0
    3b36:	6078      	str	r0, [r7, #4]
    3b38:	4b5a      	ldr	r3, [pc, #360]	; (3ca4 <pdu_write_multiply_registers+0x174>)
    3b3a:	681a      	ldr	r2, [r3, #0]
    3b3c:	687b      	ldr	r3, [r7, #4]
    3b3e:	18d2      	adds	r2, r2, r3
    3b40:	2317      	movs	r3, #23
    3b42:	18fb      	adds	r3, r7, r3
    3b44:	7812      	ldrb	r2, [r2, #0]
    3b46:	701a      	strb	r2, [r3, #0]
    3b48:	4b56      	ldr	r3, [pc, #344]	; (3ca4 <pdu_write_multiply_registers+0x174>)
    3b4a:	681a      	ldr	r2, [r3, #0]
    3b4c:	687b      	ldr	r3, [r7, #4]
    3b4e:	3301      	adds	r3, #1
    3b50:	18d3      	adds	r3, r2, r3
    3b52:	781b      	ldrb	r3, [r3, #0]
    3b54:	021b      	lsls	r3, r3, #8
    3b56:	b21a      	sxth	r2, r3
    3b58:	4b52      	ldr	r3, [pc, #328]	; (3ca4 <pdu_write_multiply_registers+0x174>)
    3b5a:	6819      	ldr	r1, [r3, #0]
    3b5c:	687b      	ldr	r3, [r7, #4]
    3b5e:	3302      	adds	r3, #2
    3b60:	18cb      	adds	r3, r1, r3
    3b62:	781b      	ldrb	r3, [r3, #0]
    3b64:	b21b      	sxth	r3, r3
    3b66:	4313      	orrs	r3, r2
    3b68:	b21a      	sxth	r2, r3
    3b6a:	2314      	movs	r3, #20
    3b6c:	18fb      	adds	r3, r7, r3
    3b6e:	801a      	strh	r2, [r3, #0]
    3b70:	4b4c      	ldr	r3, [pc, #304]	; (3ca4 <pdu_write_multiply_registers+0x174>)
    3b72:	681a      	ldr	r2, [r3, #0]
    3b74:	687b      	ldr	r3, [r7, #4]
    3b76:	3303      	adds	r3, #3
    3b78:	18d3      	adds	r3, r2, r3
    3b7a:	781b      	ldrb	r3, [r3, #0]
    3b7c:	021b      	lsls	r3, r3, #8
    3b7e:	b21a      	sxth	r2, r3
    3b80:	4b48      	ldr	r3, [pc, #288]	; (3ca4 <pdu_write_multiply_registers+0x174>)
    3b82:	6819      	ldr	r1, [r3, #0]
    3b84:	687b      	ldr	r3, [r7, #4]
    3b86:	3304      	adds	r3, #4
    3b88:	18cb      	adds	r3, r1, r3
    3b8a:	781b      	ldrb	r3, [r3, #0]
    3b8c:	b21b      	sxth	r3, r3
    3b8e:	4313      	orrs	r3, r2
    3b90:	b21a      	sxth	r2, r3
    3b92:	2312      	movs	r3, #18
    3b94:	18fb      	adds	r3, r7, r3
    3b96:	801a      	strh	r2, [r3, #0]
    3b98:	4b42      	ldr	r3, [pc, #264]	; (3ca4 <pdu_write_multiply_registers+0x174>)
    3b9a:	681a      	ldr	r2, [r3, #0]
    3b9c:	687b      	ldr	r3, [r7, #4]
    3b9e:	3305      	adds	r3, #5
    3ba0:	18d2      	adds	r2, r2, r3
    3ba2:	2311      	movs	r3, #17
    3ba4:	18fb      	adds	r3, r7, r3
    3ba6:	7812      	ldrb	r2, [r2, #0]
    3ba8:	701a      	strb	r2, [r3, #0]
    3baa:	2314      	movs	r3, #20
    3bac:	18fb      	adds	r3, r7, r3
    3bae:	881a      	ldrh	r2, [r3, #0]
    3bb0:	2312      	movs	r3, #18
    3bb2:	18fb      	adds	r3, r7, r3
    3bb4:	881b      	ldrh	r3, [r3, #0]
    3bb6:	18d3      	adds	r3, r2, r3
    3bb8:	2b18      	cmp	r3, #24
    3bba:	dd14      	ble.n	3be6 <pdu_write_multiply_registers+0xb6>
    3bbc:	687b      	ldr	r3, [r7, #4]
    3bbe:	61bb      	str	r3, [r7, #24]
    3bc0:	69bb      	ldr	r3, [r7, #24]
    3bc2:	1c5a      	adds	r2, r3, #1
    3bc4:	61ba      	str	r2, [r7, #24]
    3bc6:	2217      	movs	r2, #23
    3bc8:	18ba      	adds	r2, r7, r2
    3bca:	7812      	ldrb	r2, [r2, #0]
    3bcc:	2180      	movs	r1, #128	; 0x80
    3bce:	4249      	negs	r1, r1
    3bd0:	430a      	orrs	r2, r1
    3bd2:	b2d1      	uxtb	r1, r2
    3bd4:	4a34      	ldr	r2, [pc, #208]	; (3ca8 <pdu_write_multiply_registers+0x178>)
    3bd6:	54d1      	strb	r1, [r2, r3]
    3bd8:	69bb      	ldr	r3, [r7, #24]
    3bda:	1c5a      	adds	r2, r3, #1
    3bdc:	61ba      	str	r2, [r7, #24]
    3bde:	4a32      	ldr	r2, [pc, #200]	; (3ca8 <pdu_write_multiply_registers+0x178>)
    3be0:	2102      	movs	r1, #2
    3be2:	54d1      	strb	r1, [r2, r3]
    3be4:	e04b      	b.n	3c7e <pdu_write_multiply_registers+0x14e>
    3be6:	687b      	ldr	r3, [r7, #4]
    3be8:	3306      	adds	r3, #6
    3bea:	61bb      	str	r3, [r7, #24]
    3bec:	2300      	movs	r3, #0
    3bee:	61fb      	str	r3, [r7, #28]
    3bf0:	e028      	b.n	3c44 <pdu_write_multiply_registers+0x114>
    3bf2:	4b2c      	ldr	r3, [pc, #176]	; (3ca4 <pdu_write_multiply_registers+0x174>)
    3bf4:	681a      	ldr	r2, [r3, #0]
    3bf6:	69bb      	ldr	r3, [r7, #24]
    3bf8:	1c59      	adds	r1, r3, #1
    3bfa:	61b9      	str	r1, [r7, #24]
    3bfc:	18d3      	adds	r3, r2, r3
    3bfe:	781b      	ldrb	r3, [r3, #0]
    3c00:	b29a      	uxth	r2, r3
    3c02:	230e      	movs	r3, #14
    3c04:	18fb      	adds	r3, r7, r3
    3c06:	0212      	lsls	r2, r2, #8
    3c08:	801a      	strh	r2, [r3, #0]
    3c0a:	4b26      	ldr	r3, [pc, #152]	; (3ca4 <pdu_write_multiply_registers+0x174>)
    3c0c:	681a      	ldr	r2, [r3, #0]
    3c0e:	69bb      	ldr	r3, [r7, #24]
    3c10:	1c59      	adds	r1, r3, #1
    3c12:	61b9      	str	r1, [r7, #24]
    3c14:	18d3      	adds	r3, r2, r3
    3c16:	781b      	ldrb	r3, [r3, #0]
    3c18:	b299      	uxth	r1, r3
    3c1a:	230e      	movs	r3, #14
    3c1c:	18fb      	adds	r3, r7, r3
    3c1e:	220e      	movs	r2, #14
    3c20:	18ba      	adds	r2, r7, r2
    3c22:	8812      	ldrh	r2, [r2, #0]
    3c24:	430a      	orrs	r2, r1
    3c26:	801a      	strh	r2, [r3, #0]
    3c28:	2314      	movs	r3, #20
    3c2a:	18fb      	adds	r3, r7, r3
    3c2c:	881a      	ldrh	r2, [r3, #0]
    3c2e:	69fb      	ldr	r3, [r7, #28]
    3c30:	18d2      	adds	r2, r2, r3
    3c32:	4b1e      	ldr	r3, [pc, #120]	; (3cac <pdu_write_multiply_registers+0x17c>)
    3c34:	0052      	lsls	r2, r2, #1
    3c36:	210e      	movs	r1, #14
    3c38:	1879      	adds	r1, r7, r1
    3c3a:	8809      	ldrh	r1, [r1, #0]
    3c3c:	52d1      	strh	r1, [r2, r3]
    3c3e:	69fb      	ldr	r3, [r7, #28]
    3c40:	3301      	adds	r3, #1
    3c42:	61fb      	str	r3, [r7, #28]
    3c44:	2312      	movs	r3, #18
    3c46:	18fb      	adds	r3, r7, r3
    3c48:	881a      	ldrh	r2, [r3, #0]
    3c4a:	69fb      	ldr	r3, [r7, #28]
    3c4c:	429a      	cmp	r2, r3
    3c4e:	dcd0      	bgt.n	3bf2 <pdu_write_multiply_registers+0xc2>
    3c50:	687b      	ldr	r3, [r7, #4]
    3c52:	61bb      	str	r3, [r7, #24]
    3c54:	687b      	ldr	r3, [r7, #4]
    3c56:	61fb      	str	r3, [r7, #28]
    3c58:	e00c      	b.n	3c74 <pdu_write_multiply_registers+0x144>
    3c5a:	69bb      	ldr	r3, [r7, #24]
    3c5c:	1c5a      	adds	r2, r3, #1
    3c5e:	61ba      	str	r2, [r7, #24]
    3c60:	4a10      	ldr	r2, [pc, #64]	; (3ca4 <pdu_write_multiply_registers+0x174>)
    3c62:	6811      	ldr	r1, [r2, #0]
    3c64:	69fa      	ldr	r2, [r7, #28]
    3c66:	188a      	adds	r2, r1, r2
    3c68:	7811      	ldrb	r1, [r2, #0]
    3c6a:	4a0f      	ldr	r2, [pc, #60]	; (3ca8 <pdu_write_multiply_registers+0x178>)
    3c6c:	54d1      	strb	r1, [r2, r3]
    3c6e:	69fb      	ldr	r3, [r7, #28]
    3c70:	3301      	adds	r3, #1
    3c72:	61fb      	str	r3, [r7, #28]
    3c74:	687b      	ldr	r3, [r7, #4]
    3c76:	1d5a      	adds	r2, r3, #5
    3c78:	69fb      	ldr	r3, [r7, #28]
    3c7a:	429a      	cmp	r2, r3
    3c7c:	dced      	bgt.n	3c5a <pdu_write_multiply_registers+0x12a>
    3c7e:	2314      	movs	r3, #20
    3c80:	18fb      	adds	r3, r7, r3
    3c82:	881b      	ldrh	r3, [r3, #0]
    3c84:	2b00      	cmp	r3, #0
    3c86:	d107      	bne.n	3c98 <pdu_write_multiply_registers+0x168>
    3c88:	4b09      	ldr	r3, [pc, #36]	; (3cb0 <pdu_write_multiply_registers+0x180>)
    3c8a:	6818      	ldr	r0, [r3, #0]
    3c8c:	4b07      	ldr	r3, [pc, #28]	; (3cac <pdu_write_multiply_registers+0x17c>)
    3c8e:	881b      	ldrh	r3, [r3, #0]
    3c90:	2200      	movs	r2, #0
    3c92:	0019      	movs	r1, r3
    3c94:	f003 f9ca 	bl	702c <osMessagePut>
    3c98:	69bb      	ldr	r3, [r7, #24]
    3c9a:	0018      	movs	r0, r3
    3c9c:	46bd      	mov	sp, r7
    3c9e:	b008      	add	sp, #32
    3ca0:	bd80      	pop	{r7, pc}
    3ca2:	46c0      	nop			; (mov r8, r8)
    3ca4:	20005db8 	.word	0x20005db8
    3ca8:	20005dbc 	.word	0x20005dbc
    3cac:	20005d7c 	.word	0x20005d7c
    3cb0:	20000864 	.word	0x20000864

00003cb4 <u16tobe>:
    3cb4:	b580      	push	{r7, lr}
    3cb6:	b082      	sub	sp, #8
    3cb8:	af00      	add	r7, sp, #0
    3cba:	0002      	movs	r2, r0
    3cbc:	6039      	str	r1, [r7, #0]
    3cbe:	1dbb      	adds	r3, r7, #6
    3cc0:	801a      	strh	r2, [r3, #0]
    3cc2:	683b      	ldr	r3, [r7, #0]
    3cc4:	1c5a      	adds	r2, r3, #1
    3cc6:	603a      	str	r2, [r7, #0]
    3cc8:	1dba      	adds	r2, r7, #6
    3cca:	8812      	ldrh	r2, [r2, #0]
    3ccc:	0a12      	lsrs	r2, r2, #8
    3cce:	b292      	uxth	r2, r2
    3cd0:	b2d2      	uxtb	r2, r2
    3cd2:	701a      	strb	r2, [r3, #0]
    3cd4:	683b      	ldr	r3, [r7, #0]
    3cd6:	1c5a      	adds	r2, r3, #1
    3cd8:	603a      	str	r2, [r7, #0]
    3cda:	1dba      	adds	r2, r7, #6
    3cdc:	8812      	ldrh	r2, [r2, #0]
    3cde:	b2d2      	uxtb	r2, r2
    3ce0:	701a      	strb	r2, [r3, #0]
    3ce2:	46c0      	nop			; (mov r8, r8)
    3ce4:	46bd      	mov	sp, r7
    3ce6:	b002      	add	sp, #8
    3ce8:	bd80      	pop	{r7, pc}
    3cea:	46c0      	nop			; (mov r8, r8)

00003cec <u32tobe>:
    3cec:	b580      	push	{r7, lr}
    3cee:	b082      	sub	sp, #8
    3cf0:	af00      	add	r7, sp, #0
    3cf2:	6078      	str	r0, [r7, #4]
    3cf4:	6039      	str	r1, [r7, #0]
    3cf6:	683b      	ldr	r3, [r7, #0]
    3cf8:	1c5a      	adds	r2, r3, #1
    3cfa:	603a      	str	r2, [r7, #0]
    3cfc:	687a      	ldr	r2, [r7, #4]
    3cfe:	0e12      	lsrs	r2, r2, #24
    3d00:	b2d2      	uxtb	r2, r2
    3d02:	701a      	strb	r2, [r3, #0]
    3d04:	683b      	ldr	r3, [r7, #0]
    3d06:	1c5a      	adds	r2, r3, #1
    3d08:	603a      	str	r2, [r7, #0]
    3d0a:	687a      	ldr	r2, [r7, #4]
    3d0c:	0c12      	lsrs	r2, r2, #16
    3d0e:	b2d2      	uxtb	r2, r2
    3d10:	701a      	strb	r2, [r3, #0]
    3d12:	683b      	ldr	r3, [r7, #0]
    3d14:	1c5a      	adds	r2, r3, #1
    3d16:	603a      	str	r2, [r7, #0]
    3d18:	687a      	ldr	r2, [r7, #4]
    3d1a:	0a12      	lsrs	r2, r2, #8
    3d1c:	b2d2      	uxtb	r2, r2
    3d1e:	701a      	strb	r2, [r3, #0]
    3d20:	683b      	ldr	r3, [r7, #0]
    3d22:	1c5a      	adds	r2, r3, #1
    3d24:	603a      	str	r2, [r7, #0]
    3d26:	687a      	ldr	r2, [r7, #4]
    3d28:	b2d2      	uxtb	r2, r2
    3d2a:	701a      	strb	r2, [r3, #0]
    3d2c:	46c0      	nop			; (mov r8, r8)
    3d2e:	46bd      	mov	sp, r7
    3d30:	b002      	add	sp, #8
    3d32:	bd80      	pop	{r7, pc}

00003d34 <pdu_read_fifo_queue>:
    3d34:	b580      	push	{r7, lr}
    3d36:	b090      	sub	sp, #64	; 0x40
    3d38:	af00      	add	r7, sp, #0
    3d3a:	6078      	str	r0, [r7, #4]
    3d3c:	2336      	movs	r3, #54	; 0x36
    3d3e:	18fb      	adds	r3, r7, r3
    3d40:	2203      	movs	r2, #3
    3d42:	801a      	strh	r2, [r3, #0]
    3d44:	4b7c      	ldr	r3, [pc, #496]	; (3f38 <pdu_read_fifo_queue+0x204>)
    3d46:	681a      	ldr	r2, [r3, #0]
    3d48:	687b      	ldr	r3, [r7, #4]
    3d4a:	18d2      	adds	r2, r2, r3
    3d4c:	2335      	movs	r3, #53	; 0x35
    3d4e:	18fb      	adds	r3, r7, r3
    3d50:	7812      	ldrb	r2, [r2, #0]
    3d52:	701a      	strb	r2, [r3, #0]
    3d54:	4b78      	ldr	r3, [pc, #480]	; (3f38 <pdu_read_fifo_queue+0x204>)
    3d56:	681a      	ldr	r2, [r3, #0]
    3d58:	687b      	ldr	r3, [r7, #4]
    3d5a:	3301      	adds	r3, #1
    3d5c:	18d3      	adds	r3, r2, r3
    3d5e:	781b      	ldrb	r3, [r3, #0]
    3d60:	021b      	lsls	r3, r3, #8
    3d62:	b21a      	sxth	r2, r3
    3d64:	4b74      	ldr	r3, [pc, #464]	; (3f38 <pdu_read_fifo_queue+0x204>)
    3d66:	6819      	ldr	r1, [r3, #0]
    3d68:	687b      	ldr	r3, [r7, #4]
    3d6a:	3302      	adds	r3, #2
    3d6c:	18cb      	adds	r3, r1, r3
    3d6e:	781b      	ldrb	r3, [r3, #0]
    3d70:	b21b      	sxth	r3, r3
    3d72:	4313      	orrs	r3, r2
    3d74:	b21a      	sxth	r2, r3
    3d76:	2332      	movs	r3, #50	; 0x32
    3d78:	18fb      	adds	r3, r7, r3
    3d7a:	801a      	strh	r2, [r3, #0]
    3d7c:	2332      	movs	r3, #50	; 0x32
    3d7e:	18fb      	adds	r3, r7, r3
    3d80:	881a      	ldrh	r2, [r3, #0]
    3d82:	2380      	movs	r3, #128	; 0x80
    3d84:	009b      	lsls	r3, r3, #2
    3d86:	429a      	cmp	r2, r3
    3d88:	d014      	beq.n	3db4 <pdu_read_fifo_queue+0x80>
    3d8a:	687b      	ldr	r3, [r7, #4]
    3d8c:	63fb      	str	r3, [r7, #60]	; 0x3c
    3d8e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3d90:	1c5a      	adds	r2, r3, #1
    3d92:	63fa      	str	r2, [r7, #60]	; 0x3c
    3d94:	2235      	movs	r2, #53	; 0x35
    3d96:	18ba      	adds	r2, r7, r2
    3d98:	7812      	ldrb	r2, [r2, #0]
    3d9a:	2180      	movs	r1, #128	; 0x80
    3d9c:	4249      	negs	r1, r1
    3d9e:	430a      	orrs	r2, r1
    3da0:	b2d1      	uxtb	r1, r2
    3da2:	4a66      	ldr	r2, [pc, #408]	; (3f3c <pdu_read_fifo_queue+0x208>)
    3da4:	54d1      	strb	r1, [r2, r3]
    3da6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3da8:	1c5a      	adds	r2, r3, #1
    3daa:	63fa      	str	r2, [r7, #60]	; 0x3c
    3dac:	4a63      	ldr	r2, [pc, #396]	; (3f3c <pdu_read_fifo_queue+0x208>)
    3dae:	2102      	movs	r1, #2
    3db0:	54d1      	strb	r1, [r2, r3]
    3db2:	e0bb      	b.n	3f2c <pdu_read_fifo_queue+0x1f8>
    3db4:	687b      	ldr	r3, [r7, #4]
    3db6:	63fb      	str	r3, [r7, #60]	; 0x3c
    3db8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dba:	1c5a      	adds	r2, r3, #1
    3dbc:	63fa      	str	r2, [r7, #60]	; 0x3c
    3dbe:	4a5f      	ldr	r2, [pc, #380]	; (3f3c <pdu_read_fifo_queue+0x208>)
    3dc0:	2135      	movs	r1, #53	; 0x35
    3dc2:	1879      	adds	r1, r7, r1
    3dc4:	7809      	ldrb	r1, [r1, #0]
    3dc6:	54d1      	strb	r1, [r2, r3]
    3dc8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dca:	1c5a      	adds	r2, r3, #1
    3dcc:	63fa      	str	r2, [r7, #60]	; 0x3c
    3dce:	4a5b      	ldr	r2, [pc, #364]	; (3f3c <pdu_read_fifo_queue+0x208>)
    3dd0:	2100      	movs	r1, #0
    3dd2:	54d1      	strb	r1, [r2, r3]
    3dd4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dd6:	1c5a      	adds	r2, r3, #1
    3dd8:	63fa      	str	r2, [r7, #60]	; 0x3c
    3dda:	4a58      	ldr	r2, [pc, #352]	; (3f3c <pdu_read_fifo_queue+0x208>)
    3ddc:	2100      	movs	r1, #0
    3dde:	54d1      	strb	r1, [r2, r3]
    3de0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3de2:	1c5a      	adds	r2, r3, #1
    3de4:	63fa      	str	r2, [r7, #60]	; 0x3c
    3de6:	4a55      	ldr	r2, [pc, #340]	; (3f3c <pdu_read_fifo_queue+0x208>)
    3de8:	2100      	movs	r1, #0
    3dea:	54d1      	strb	r1, [r2, r3]
    3dec:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dee:	1c5a      	adds	r2, r3, #1
    3df0:	63fa      	str	r2, [r7, #60]	; 0x3c
    3df2:	4a52      	ldr	r2, [pc, #328]	; (3f3c <pdu_read_fifo_queue+0x208>)
    3df4:	2100      	movs	r1, #0
    3df6:	54d1      	strb	r1, [r2, r3]
    3df8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dfa:	62fb      	str	r3, [r7, #44]	; 0x2c
    3dfc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3dfe:	4b4f      	ldr	r3, [pc, #316]	; (3f3c <pdu_read_fifo_queue+0x208>)
    3e00:	18d3      	adds	r3, r2, r3
    3e02:	63bb      	str	r3, [r7, #56]	; 0x38
    3e04:	e06e      	b.n	3ee4 <pdu_read_fifo_queue+0x1b0>
    3e06:	2300      	movs	r3, #0
    3e08:	62bb      	str	r3, [r7, #40]	; 0x28
    3e0a:	2308      	movs	r3, #8
    3e0c:	18fb      	adds	r3, r7, r3
    3e0e:	2120      	movs	r1, #32
    3e10:	0018      	movs	r0, r3
    3e12:	f7ff fbd7 	bl	35c4 <mdb_fifo_read>
    3e16:	0003      	movs	r3, r0
    3e18:	62bb      	str	r3, [r7, #40]	; 0x28
    3e1a:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3e1c:	2b00      	cmp	r3, #0
    3e1e:	d069      	beq.n	3ef4 <pdu_read_fifo_queue+0x1c0>
    3e20:	2308      	movs	r3, #8
    3e22:	18fb      	adds	r3, r7, r3
    3e24:	681b      	ldr	r3, [r3, #0]
    3e26:	001a      	movs	r2, r3
    3e28:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3e2a:	0019      	movs	r1, r3
    3e2c:	0010      	movs	r0, r2
    3e2e:	f7ff ff5d 	bl	3cec <u32tobe>
    3e32:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3e34:	3304      	adds	r3, #4
    3e36:	63bb      	str	r3, [r7, #56]	; 0x38
    3e38:	2308      	movs	r3, #8
    3e3a:	18fb      	adds	r3, r7, r3
    3e3c:	685b      	ldr	r3, [r3, #4]
    3e3e:	001a      	movs	r2, r3
    3e40:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3e42:	0019      	movs	r1, r3
    3e44:	0010      	movs	r0, r2
    3e46:	f7ff ff51 	bl	3cec <u32tobe>
    3e4a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3e4c:	3304      	adds	r3, #4
    3e4e:	63bb      	str	r3, [r7, #56]	; 0x38
    3e50:	2308      	movs	r3, #8
    3e52:	18fb      	adds	r3, r7, r3
    3e54:	689b      	ldr	r3, [r3, #8]
    3e56:	001a      	movs	r2, r3
    3e58:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3e5a:	0019      	movs	r1, r3
    3e5c:	0010      	movs	r0, r2
    3e5e:	f7ff ff45 	bl	3cec <u32tobe>
    3e62:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3e64:	3304      	adds	r3, #4
    3e66:	63bb      	str	r3, [r7, #56]	; 0x38
    3e68:	2308      	movs	r3, #8
    3e6a:	18fb      	adds	r3, r7, r3
    3e6c:	68db      	ldr	r3, [r3, #12]
    3e6e:	001a      	movs	r2, r3
    3e70:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3e72:	0019      	movs	r1, r3
    3e74:	0010      	movs	r0, r2
    3e76:	f7ff ff39 	bl	3cec <u32tobe>
    3e7a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3e7c:	3304      	adds	r3, #4
    3e7e:	63bb      	str	r3, [r7, #56]	; 0x38
    3e80:	2308      	movs	r3, #8
    3e82:	18fb      	adds	r3, r7, r3
    3e84:	691b      	ldr	r3, [r3, #16]
    3e86:	001a      	movs	r2, r3
    3e88:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3e8a:	0019      	movs	r1, r3
    3e8c:	0010      	movs	r0, r2
    3e8e:	f7ff ff2d 	bl	3cec <u32tobe>
    3e92:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3e94:	3304      	adds	r3, #4
    3e96:	63bb      	str	r3, [r7, #56]	; 0x38
    3e98:	2308      	movs	r3, #8
    3e9a:	18fb      	adds	r3, r7, r3
    3e9c:	695b      	ldr	r3, [r3, #20]
    3e9e:	001a      	movs	r2, r3
    3ea0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3ea2:	0019      	movs	r1, r3
    3ea4:	0010      	movs	r0, r2
    3ea6:	f7ff ff21 	bl	3cec <u32tobe>
    3eaa:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3eac:	3304      	adds	r3, #4
    3eae:	63bb      	str	r3, [r7, #56]	; 0x38
    3eb0:	2308      	movs	r3, #8
    3eb2:	18fb      	adds	r3, r7, r3
    3eb4:	699b      	ldr	r3, [r3, #24]
    3eb6:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3eb8:	0011      	movs	r1, r2
    3eba:	0018      	movs	r0, r3
    3ebc:	f7ff ff16 	bl	3cec <u32tobe>
    3ec0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3ec2:	3304      	adds	r3, #4
    3ec4:	63bb      	str	r3, [r7, #56]	; 0x38
    3ec6:	2308      	movs	r3, #8
    3ec8:	18fb      	adds	r3, r7, r3
    3eca:	69db      	ldr	r3, [r3, #28]
    3ecc:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3ece:	0011      	movs	r1, r2
    3ed0:	0018      	movs	r0, r3
    3ed2:	f7ff ff0b 	bl	3cec <u32tobe>
    3ed6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3ed8:	3304      	adds	r3, #4
    3eda:	63bb      	str	r3, [r7, #56]	; 0x38
    3edc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3ede:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3ee0:	18d3      	adds	r3, r2, r3
    3ee2:	63fb      	str	r3, [r7, #60]	; 0x3c
    3ee4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3ee6:	3320      	adds	r3, #32
    3ee8:	001a      	movs	r2, r3
    3eea:	23fc      	movs	r3, #252	; 0xfc
    3eec:	33ff      	adds	r3, #255	; 0xff
    3eee:	429a      	cmp	r2, r3
    3ef0:	d989      	bls.n	3e06 <pdu_read_fifo_queue+0xd2>
    3ef2:	e000      	b.n	3ef6 <pdu_read_fifo_queue+0x1c2>
    3ef4:	46c0      	nop			; (mov r8, r8)
    3ef6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3ef8:	b29a      	uxth	r2, r3
    3efa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3efc:	b29b      	uxth	r3, r3
    3efe:	1ad3      	subs	r3, r2, r3
    3f00:	b29b      	uxth	r3, r3
    3f02:	3302      	adds	r3, #2
    3f04:	b298      	uxth	r0, r3
    3f06:	687b      	ldr	r3, [r7, #4]
    3f08:	1c5a      	adds	r2, r3, #1
    3f0a:	4b0c      	ldr	r3, [pc, #48]	; (3f3c <pdu_read_fifo_queue+0x208>)
    3f0c:	18d3      	adds	r3, r2, r3
    3f0e:	0019      	movs	r1, r3
    3f10:	f7ff fed0 	bl	3cb4 <u16tobe>
    3f14:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3f16:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3f18:	1ad3      	subs	r3, r2, r3
    3f1a:	105b      	asrs	r3, r3, #1
    3f1c:	b298      	uxth	r0, r3
    3f1e:	687b      	ldr	r3, [r7, #4]
    3f20:	1cda      	adds	r2, r3, #3
    3f22:	4b06      	ldr	r3, [pc, #24]	; (3f3c <pdu_read_fifo_queue+0x208>)
    3f24:	18d3      	adds	r3, r2, r3
    3f26:	0019      	movs	r1, r3
    3f28:	f7ff fec4 	bl	3cb4 <u16tobe>
    3f2c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3f2e:	0018      	movs	r0, r3
    3f30:	46bd      	mov	sp, r7
    3f32:	b010      	add	sp, #64	; 0x40
    3f34:	bd80      	pop	{r7, pc}
    3f36:	46c0      	nop			; (mov r8, r8)
    3f38:	20005db8 	.word	0x20005db8
    3f3c:	20005dbc 	.word	0x20005dbc

00003f40 <pdu_read_holding_registers>:
    3f40:	b580      	push	{r7, lr}
    3f42:	b086      	sub	sp, #24
    3f44:	af00      	add	r7, sp, #0
    3f46:	6078      	str	r0, [r7, #4]
    3f48:	4b49      	ldr	r3, [pc, #292]	; (4070 <pdu_read_holding_registers+0x130>)
    3f4a:	681a      	ldr	r2, [r3, #0]
    3f4c:	687b      	ldr	r3, [r7, #4]
    3f4e:	18d2      	adds	r2, r2, r3
    3f50:	230f      	movs	r3, #15
    3f52:	18fb      	adds	r3, r7, r3
    3f54:	7812      	ldrb	r2, [r2, #0]
    3f56:	701a      	strb	r2, [r3, #0]
    3f58:	4b45      	ldr	r3, [pc, #276]	; (4070 <pdu_read_holding_registers+0x130>)
    3f5a:	681a      	ldr	r2, [r3, #0]
    3f5c:	687b      	ldr	r3, [r7, #4]
    3f5e:	3301      	adds	r3, #1
    3f60:	18d3      	adds	r3, r2, r3
    3f62:	781b      	ldrb	r3, [r3, #0]
    3f64:	021b      	lsls	r3, r3, #8
    3f66:	b21a      	sxth	r2, r3
    3f68:	4b41      	ldr	r3, [pc, #260]	; (4070 <pdu_read_holding_registers+0x130>)
    3f6a:	6819      	ldr	r1, [r3, #0]
    3f6c:	687b      	ldr	r3, [r7, #4]
    3f6e:	3302      	adds	r3, #2
    3f70:	18cb      	adds	r3, r1, r3
    3f72:	781b      	ldrb	r3, [r3, #0]
    3f74:	b21b      	sxth	r3, r3
    3f76:	4313      	orrs	r3, r2
    3f78:	b21a      	sxth	r2, r3
    3f7a:	230c      	movs	r3, #12
    3f7c:	18fb      	adds	r3, r7, r3
    3f7e:	801a      	strh	r2, [r3, #0]
    3f80:	4b3b      	ldr	r3, [pc, #236]	; (4070 <pdu_read_holding_registers+0x130>)
    3f82:	681a      	ldr	r2, [r3, #0]
    3f84:	687b      	ldr	r3, [r7, #4]
    3f86:	3303      	adds	r3, #3
    3f88:	18d3      	adds	r3, r2, r3
    3f8a:	781b      	ldrb	r3, [r3, #0]
    3f8c:	021b      	lsls	r3, r3, #8
    3f8e:	b21a      	sxth	r2, r3
    3f90:	4b37      	ldr	r3, [pc, #220]	; (4070 <pdu_read_holding_registers+0x130>)
    3f92:	6819      	ldr	r1, [r3, #0]
    3f94:	687b      	ldr	r3, [r7, #4]
    3f96:	3304      	adds	r3, #4
    3f98:	18cb      	adds	r3, r1, r3
    3f9a:	781b      	ldrb	r3, [r3, #0]
    3f9c:	b21b      	sxth	r3, r3
    3f9e:	4313      	orrs	r3, r2
    3fa0:	b21a      	sxth	r2, r3
    3fa2:	230a      	movs	r3, #10
    3fa4:	18fb      	adds	r3, r7, r3
    3fa6:	801a      	strh	r2, [r3, #0]
    3fa8:	230c      	movs	r3, #12
    3faa:	18fb      	adds	r3, r7, r3
    3fac:	881a      	ldrh	r2, [r3, #0]
    3fae:	230a      	movs	r3, #10
    3fb0:	18fb      	adds	r3, r7, r3
    3fb2:	881b      	ldrh	r3, [r3, #0]
    3fb4:	18d3      	adds	r3, r2, r3
    3fb6:	2b18      	cmp	r3, #24
    3fb8:	dd14      	ble.n	3fe4 <pdu_read_holding_registers+0xa4>
    3fba:	687b      	ldr	r3, [r7, #4]
    3fbc:	613b      	str	r3, [r7, #16]
    3fbe:	693b      	ldr	r3, [r7, #16]
    3fc0:	1c5a      	adds	r2, r3, #1
    3fc2:	613a      	str	r2, [r7, #16]
    3fc4:	220f      	movs	r2, #15
    3fc6:	18ba      	adds	r2, r7, r2
    3fc8:	7812      	ldrb	r2, [r2, #0]
    3fca:	2180      	movs	r1, #128	; 0x80
    3fcc:	4249      	negs	r1, r1
    3fce:	430a      	orrs	r2, r1
    3fd0:	b2d1      	uxtb	r1, r2
    3fd2:	4a28      	ldr	r2, [pc, #160]	; (4074 <pdu_read_holding_registers+0x134>)
    3fd4:	54d1      	strb	r1, [r2, r3]
    3fd6:	693b      	ldr	r3, [r7, #16]
    3fd8:	1c5a      	adds	r2, r3, #1
    3fda:	613a      	str	r2, [r7, #16]
    3fdc:	4a25      	ldr	r2, [pc, #148]	; (4074 <pdu_read_holding_registers+0x134>)
    3fde:	2102      	movs	r1, #2
    3fe0:	54d1      	strb	r1, [r2, r3]
    3fe2:	e03f      	b.n	4064 <pdu_read_holding_registers+0x124>
    3fe4:	687b      	ldr	r3, [r7, #4]
    3fe6:	613b      	str	r3, [r7, #16]
    3fe8:	693b      	ldr	r3, [r7, #16]
    3fea:	1c5a      	adds	r2, r3, #1
    3fec:	613a      	str	r2, [r7, #16]
    3fee:	4a21      	ldr	r2, [pc, #132]	; (4074 <pdu_read_holding_registers+0x134>)
    3ff0:	210f      	movs	r1, #15
    3ff2:	1879      	adds	r1, r7, r1
    3ff4:	7809      	ldrb	r1, [r1, #0]
    3ff6:	54d1      	strb	r1, [r2, r3]
    3ff8:	693b      	ldr	r3, [r7, #16]
    3ffa:	1c5a      	adds	r2, r3, #1
    3ffc:	613a      	str	r2, [r7, #16]
    3ffe:	220a      	movs	r2, #10
    4000:	18ba      	adds	r2, r7, r2
    4002:	8812      	ldrh	r2, [r2, #0]
    4004:	b2d2      	uxtb	r2, r2
    4006:	1892      	adds	r2, r2, r2
    4008:	b2d1      	uxtb	r1, r2
    400a:	4a1a      	ldr	r2, [pc, #104]	; (4074 <pdu_read_holding_registers+0x134>)
    400c:	54d1      	strb	r1, [r2, r3]
    400e:	2300      	movs	r3, #0
    4010:	617b      	str	r3, [r7, #20]
    4012:	e021      	b.n	4058 <pdu_read_holding_registers+0x118>
    4014:	230c      	movs	r3, #12
    4016:	18fb      	adds	r3, r7, r3
    4018:	881a      	ldrh	r2, [r3, #0]
    401a:	697b      	ldr	r3, [r7, #20]
    401c:	18d1      	adds	r1, r2, r3
    401e:	2308      	movs	r3, #8
    4020:	18fb      	adds	r3, r7, r3
    4022:	4a15      	ldr	r2, [pc, #84]	; (4078 <pdu_read_holding_registers+0x138>)
    4024:	0049      	lsls	r1, r1, #1
    4026:	5a8a      	ldrh	r2, [r1, r2]
    4028:	801a      	strh	r2, [r3, #0]
    402a:	693b      	ldr	r3, [r7, #16]
    402c:	1c5a      	adds	r2, r3, #1
    402e:	613a      	str	r2, [r7, #16]
    4030:	2208      	movs	r2, #8
    4032:	18ba      	adds	r2, r7, r2
    4034:	8812      	ldrh	r2, [r2, #0]
    4036:	0a12      	lsrs	r2, r2, #8
    4038:	b292      	uxth	r2, r2
    403a:	b2d1      	uxtb	r1, r2
    403c:	4a0d      	ldr	r2, [pc, #52]	; (4074 <pdu_read_holding_registers+0x134>)
    403e:	54d1      	strb	r1, [r2, r3]
    4040:	693b      	ldr	r3, [r7, #16]
    4042:	1c5a      	adds	r2, r3, #1
    4044:	613a      	str	r2, [r7, #16]
    4046:	2208      	movs	r2, #8
    4048:	18ba      	adds	r2, r7, r2
    404a:	8812      	ldrh	r2, [r2, #0]
    404c:	b2d1      	uxtb	r1, r2
    404e:	4a09      	ldr	r2, [pc, #36]	; (4074 <pdu_read_holding_registers+0x134>)
    4050:	54d1      	strb	r1, [r2, r3]
    4052:	697b      	ldr	r3, [r7, #20]
    4054:	3301      	adds	r3, #1
    4056:	617b      	str	r3, [r7, #20]
    4058:	230a      	movs	r3, #10
    405a:	18fb      	adds	r3, r7, r3
    405c:	881a      	ldrh	r2, [r3, #0]
    405e:	697b      	ldr	r3, [r7, #20]
    4060:	429a      	cmp	r2, r3
    4062:	dcd7      	bgt.n	4014 <pdu_read_holding_registers+0xd4>
    4064:	693b      	ldr	r3, [r7, #16]
    4066:	0018      	movs	r0, r3
    4068:	46bd      	mov	sp, r7
    406a:	b006      	add	sp, #24
    406c:	bd80      	pop	{r7, pc}
    406e:	46c0      	nop			; (mov r8, r8)
    4070:	20005db8 	.word	0x20005db8
    4074:	20005dbc 	.word	0x20005dbc
    4078:	20005d7c 	.word	0x20005d7c

0000407c <pdu_illegal_function_error>:
    407c:	b580      	push	{r7, lr}
    407e:	b084      	sub	sp, #16
    4080:	af00      	add	r7, sp, #0
    4082:	6078      	str	r0, [r7, #4]
    4084:	4b10      	ldr	r3, [pc, #64]	; (40c8 <pdu_illegal_function_error+0x4c>)
    4086:	681a      	ldr	r2, [r3, #0]
    4088:	687b      	ldr	r3, [r7, #4]
    408a:	18d2      	adds	r2, r2, r3
    408c:	230f      	movs	r3, #15
    408e:	18fb      	adds	r3, r7, r3
    4090:	7812      	ldrb	r2, [r2, #0]
    4092:	701a      	strb	r2, [r3, #0]
    4094:	687b      	ldr	r3, [r7, #4]
    4096:	60bb      	str	r3, [r7, #8]
    4098:	68bb      	ldr	r3, [r7, #8]
    409a:	1c5a      	adds	r2, r3, #1
    409c:	60ba      	str	r2, [r7, #8]
    409e:	220f      	movs	r2, #15
    40a0:	18ba      	adds	r2, r7, r2
    40a2:	7812      	ldrb	r2, [r2, #0]
    40a4:	2180      	movs	r1, #128	; 0x80
    40a6:	4249      	negs	r1, r1
    40a8:	430a      	orrs	r2, r1
    40aa:	b2d1      	uxtb	r1, r2
    40ac:	4a07      	ldr	r2, [pc, #28]	; (40cc <pdu_illegal_function_error+0x50>)
    40ae:	54d1      	strb	r1, [r2, r3]
    40b0:	68bb      	ldr	r3, [r7, #8]
    40b2:	1c5a      	adds	r2, r3, #1
    40b4:	60ba      	str	r2, [r7, #8]
    40b6:	4a05      	ldr	r2, [pc, #20]	; (40cc <pdu_illegal_function_error+0x50>)
    40b8:	2101      	movs	r1, #1
    40ba:	54d1      	strb	r1, [r2, r3]
    40bc:	68bb      	ldr	r3, [r7, #8]
    40be:	0018      	movs	r0, r3
    40c0:	46bd      	mov	sp, r7
    40c2:	b004      	add	sp, #16
    40c4:	bd80      	pop	{r7, pc}
    40c6:	46c0      	nop			; (mov r8, r8)
    40c8:	20005db8 	.word	0x20005db8
    40cc:	20005dbc 	.word	0x20005dbc

000040d0 <mdb_proc_adu>:
    40d0:	b580      	push	{r7, lr}
    40d2:	b086      	sub	sp, #24
    40d4:	af00      	add	r7, sp, #0
    40d6:	6078      	str	r0, [r7, #4]
    40d8:	4b39      	ldr	r3, [pc, #228]	; (41c0 <mdb_proc_adu+0xf0>)
    40da:	687a      	ldr	r2, [r7, #4]
    40dc:	601a      	str	r2, [r3, #0]
    40de:	4b38      	ldr	r3, [pc, #224]	; (41c0 <mdb_proc_adu+0xf0>)
    40e0:	681b      	ldr	r3, [r3, #0]
    40e2:	781b      	ldrb	r3, [r3, #0]
    40e4:	021b      	lsls	r3, r3, #8
    40e6:	b21a      	sxth	r2, r3
    40e8:	4b35      	ldr	r3, [pc, #212]	; (41c0 <mdb_proc_adu+0xf0>)
    40ea:	681b      	ldr	r3, [r3, #0]
    40ec:	3301      	adds	r3, #1
    40ee:	781b      	ldrb	r3, [r3, #0]
    40f0:	b21b      	sxth	r3, r3
    40f2:	4313      	orrs	r3, r2
    40f4:	b21a      	sxth	r2, r3
    40f6:	2312      	movs	r3, #18
    40f8:	18fb      	adds	r3, r7, r3
    40fa:	801a      	strh	r2, [r3, #0]
    40fc:	4b30      	ldr	r3, [pc, #192]	; (41c0 <mdb_proc_adu+0xf0>)
    40fe:	681b      	ldr	r3, [r3, #0]
    4100:	3302      	adds	r3, #2
    4102:	781b      	ldrb	r3, [r3, #0]
    4104:	021b      	lsls	r3, r3, #8
    4106:	b21a      	sxth	r2, r3
    4108:	4b2d      	ldr	r3, [pc, #180]	; (41c0 <mdb_proc_adu+0xf0>)
    410a:	681b      	ldr	r3, [r3, #0]
    410c:	3303      	adds	r3, #3
    410e:	781b      	ldrb	r3, [r3, #0]
    4110:	b21b      	sxth	r3, r3
    4112:	4313      	orrs	r3, r2
    4114:	b21a      	sxth	r2, r3
    4116:	2310      	movs	r3, #16
    4118:	18fb      	adds	r3, r7, r3
    411a:	801a      	strh	r2, [r3, #0]
    411c:	4b28      	ldr	r3, [pc, #160]	; (41c0 <mdb_proc_adu+0xf0>)
    411e:	681b      	ldr	r3, [r3, #0]
    4120:	3304      	adds	r3, #4
    4122:	781b      	ldrb	r3, [r3, #0]
    4124:	021b      	lsls	r3, r3, #8
    4126:	b21a      	sxth	r2, r3
    4128:	4b25      	ldr	r3, [pc, #148]	; (41c0 <mdb_proc_adu+0xf0>)
    412a:	681b      	ldr	r3, [r3, #0]
    412c:	3305      	adds	r3, #5
    412e:	781b      	ldrb	r3, [r3, #0]
    4130:	b21b      	sxth	r3, r3
    4132:	4313      	orrs	r3, r2
    4134:	b21a      	sxth	r2, r3
    4136:	230e      	movs	r3, #14
    4138:	18fb      	adds	r3, r7, r3
    413a:	801a      	strh	r2, [r3, #0]
    413c:	4b20      	ldr	r3, [pc, #128]	; (41c0 <mdb_proc_adu+0xf0>)
    413e:	681a      	ldr	r2, [r3, #0]
    4140:	230d      	movs	r3, #13
    4142:	18fb      	adds	r3, r7, r3
    4144:	7992      	ldrb	r2, [r2, #6]
    4146:	701a      	strb	r2, [r3, #0]
    4148:	4b1d      	ldr	r3, [pc, #116]	; (41c0 <mdb_proc_adu+0xf0>)
    414a:	681a      	ldr	r2, [r3, #0]
    414c:	230c      	movs	r3, #12
    414e:	18fb      	adds	r3, r7, r3
    4150:	79d2      	ldrb	r2, [r2, #7]
    4152:	701a      	strb	r2, [r3, #0]
    4154:	230d      	movs	r3, #13
    4156:	18fb      	adds	r3, r7, r3
    4158:	781b      	ldrb	r3, [r3, #0]
    415a:	2b11      	cmp	r3, #17
    415c:	d12b      	bne.n	41b6 <mdb_proc_adu+0xe6>
    415e:	230c      	movs	r3, #12
    4160:	18fb      	adds	r3, r7, r3
    4162:	781a      	ldrb	r2, [r3, #0]
    4164:	4b17      	ldr	r3, [pc, #92]	; (41c4 <mdb_proc_adu+0xf4>)
    4166:	0092      	lsls	r2, r2, #2
    4168:	58d3      	ldr	r3, [r2, r3]
    416a:	2007      	movs	r0, #7
    416c:	4798      	blx	r3
    416e:	0003      	movs	r3, r0
    4170:	60bb      	str	r3, [r7, #8]
    4172:	2300      	movs	r3, #0
    4174:	617b      	str	r3, [r7, #20]
    4176:	e00c      	b.n	4192 <mdb_proc_adu+0xc2>
    4178:	4b11      	ldr	r3, [pc, #68]	; (41c0 <mdb_proc_adu+0xf0>)
    417a:	681a      	ldr	r2, [r3, #0]
    417c:	697b      	ldr	r3, [r7, #20]
    417e:	18d3      	adds	r3, r2, r3
    4180:	7819      	ldrb	r1, [r3, #0]
    4182:	4a11      	ldr	r2, [pc, #68]	; (41c8 <mdb_proc_adu+0xf8>)
    4184:	697b      	ldr	r3, [r7, #20]
    4186:	18d3      	adds	r3, r2, r3
    4188:	1c0a      	adds	r2, r1, #0
    418a:	701a      	strb	r2, [r3, #0]
    418c:	697b      	ldr	r3, [r7, #20]
    418e:	3301      	adds	r3, #1
    4190:	617b      	str	r3, [r7, #20]
    4192:	697b      	ldr	r3, [r7, #20]
    4194:	2b06      	cmp	r3, #6
    4196:	ddef      	ble.n	4178 <mdb_proc_adu+0xa8>
    4198:	4b0b      	ldr	r3, [pc, #44]	; (41c8 <mdb_proc_adu+0xf8>)
    419a:	2200      	movs	r2, #0
    419c:	711a      	strb	r2, [r3, #4]
    419e:	68bb      	ldr	r3, [r7, #8]
    41a0:	b2db      	uxtb	r3, r3
    41a2:	3b06      	subs	r3, #6
    41a4:	b2da      	uxtb	r2, r3
    41a6:	4b08      	ldr	r3, [pc, #32]	; (41c8 <mdb_proc_adu+0xf8>)
    41a8:	715a      	strb	r2, [r3, #5]
    41aa:	68ba      	ldr	r2, [r7, #8]
    41ac:	4b06      	ldr	r3, [pc, #24]	; (41c8 <mdb_proc_adu+0xf8>)
    41ae:	0011      	movs	r1, r2
    41b0:	0018      	movs	r0, r3
    41b2:	f7fe fdcd 	bl	2d50 <Send_UDP>
    41b6:	46c0      	nop			; (mov r8, r8)
    41b8:	46bd      	mov	sp, r7
    41ba:	b006      	add	sp, #24
    41bc:	bd80      	pop	{r7, pc}
    41be:	46c0      	nop			; (mov r8, r8)
    41c0:	20005db8 	.word	0x20005db8
    41c4:	000092dc 	.word	0x000092dc
    41c8:	20005dbc 	.word	0x20005dbc

000041cc <fsm_get_mode>:
    41cc:	b580      	push	{r7, lr}
    41ce:	af00      	add	r7, sp, #0
    41d0:	4b02      	ldr	r3, [pc, #8]	; (41dc <fsm_get_mode+0x10>)
    41d2:	781b      	ldrb	r3, [r3, #0]
    41d4:	0018      	movs	r0, r3
    41d6:	46bd      	mov	sp, r7
    41d8:	bd80      	pop	{r7, pc}
    41da:	46c0      	nop			; (mov r8, r8)
    41dc:	2000603c 	.word	0x2000603c

000041e0 <fsm_get_cyccnt>:
    41e0:	b580      	push	{r7, lr}
    41e2:	af00      	add	r7, sp, #0
    41e4:	4b02      	ldr	r3, [pc, #8]	; (41f0 <fsm_get_cyccnt+0x10>)
    41e6:	681b      	ldr	r3, [r3, #0]
    41e8:	0018      	movs	r0, r3
    41ea:	46bd      	mov	sp, r7
    41ec:	bd80      	pop	{r7, pc}
    41ee:	46c0      	nop			; (mov r8, r8)
    41f0:	20006008 	.word	0x20006008

000041f4 <fsm_idle>:
    41f4:	b580      	push	{r7, lr}
    41f6:	b084      	sub	sp, #16
    41f8:	af00      	add	r7, sp, #0
    41fa:	6078      	str	r0, [r7, #4]
    41fc:	230b      	movs	r3, #11
    41fe:	18fb      	adds	r3, r7, r3
    4200:	687a      	ldr	r2, [r7, #4]
    4202:	701a      	strb	r2, [r3, #0]
    4204:	230b      	movs	r3, #11
    4206:	18fb      	adds	r3, r7, r3
    4208:	781b      	ldrb	r3, [r3, #0]
    420a:	2b01      	cmp	r3, #1
    420c:	d000      	beq.n	4210 <fsm_idle+0x1c>
    420e:	e098      	b.n	4342 <fsm_idle+0x14e>
    4210:	4b4e      	ldr	r3, [pc, #312]	; (434c <fsm_idle+0x158>)
    4212:	0018      	movs	r0, r3
    4214:	f7ff fa68 	bl	36e8 <mdb_get_testparam>
    4218:	4b4c      	ldr	r3, [pc, #304]	; (434c <fsm_idle+0x158>)
    421a:	681a      	ldr	r2, [r3, #0]
    421c:	4b4c      	ldr	r3, [pc, #304]	; (4350 <fsm_idle+0x15c>)
    421e:	601a      	str	r2, [r3, #0]
    4220:	4b4b      	ldr	r3, [pc, #300]	; (4350 <fsm_idle+0x15c>)
    4222:	681b      	ldr	r3, [r3, #0]
    4224:	2b00      	cmp	r3, #0
    4226:	d100      	bne.n	422a <fsm_idle+0x36>
    4228:	e08b      	b.n	4342 <fsm_idle+0x14e>
    422a:	4b4a      	ldr	r3, [pc, #296]	; (4354 <fsm_idle+0x160>)
    422c:	4a4a      	ldr	r2, [pc, #296]	; (4358 <fsm_idle+0x164>)
    422e:	601a      	str	r2, [r3, #0]
    4230:	4b4a      	ldr	r3, [pc, #296]	; (435c <fsm_idle+0x168>)
    4232:	2201      	movs	r2, #1
    4234:	701a      	strb	r2, [r3, #0]
    4236:	4b4a      	ldr	r3, [pc, #296]	; (4360 <fsm_idle+0x16c>)
    4238:	2200      	movs	r2, #0
    423a:	601a      	str	r2, [r3, #0]
    423c:	4b49      	ldr	r3, [pc, #292]	; (4364 <fsm_idle+0x170>)
    423e:	2200      	movs	r2, #0
    4240:	601a      	str	r2, [r3, #0]
    4242:	2300      	movs	r3, #0
    4244:	60fb      	str	r3, [r7, #12]
    4246:	e032      	b.n	42ae <fsm_idle+0xba>
    4248:	4b40      	ldr	r3, [pc, #256]	; (434c <fsm_idle+0x158>)
    424a:	689b      	ldr	r3, [r3, #8]
    424c:	4a3f      	ldr	r2, [pc, #252]	; (434c <fsm_idle+0x158>)
    424e:	68f9      	ldr	r1, [r7, #12]
    4250:	3108      	adds	r1, #8
    4252:	0049      	lsls	r1, r1, #1
    4254:	5a8a      	ldrh	r2, [r1, r2]
    4256:	435a      	muls	r2, r3
    4258:	0013      	movs	r3, r2
    425a:	009b      	lsls	r3, r3, #2
    425c:	189b      	adds	r3, r3, r2
    425e:	00db      	lsls	r3, r3, #3
    4260:	189b      	adds	r3, r3, r2
    4262:	2280      	movs	r2, #128	; 0x80
    4264:	0112      	lsls	r2, r2, #4
    4266:	4694      	mov	ip, r2
    4268:	4463      	add	r3, ip
    426a:	0b1b      	lsrs	r3, r3, #12
    426c:	0019      	movs	r1, r3
    426e:	4b3e      	ldr	r3, [pc, #248]	; (4368 <fsm_idle+0x174>)
    4270:	68fa      	ldr	r2, [r7, #12]
    4272:	0092      	lsls	r2, r2, #2
    4274:	50d1      	str	r1, [r2, r3]
    4276:	4b35      	ldr	r3, [pc, #212]	; (434c <fsm_idle+0x158>)
    4278:	68db      	ldr	r3, [r3, #12]
    427a:	4934      	ldr	r1, [pc, #208]	; (434c <fsm_idle+0x158>)
    427c:	68fa      	ldr	r2, [r7, #12]
    427e:	320c      	adds	r2, #12
    4280:	0052      	lsls	r2, r2, #1
    4282:	188a      	adds	r2, r1, r2
    4284:	3202      	adds	r2, #2
    4286:	8812      	ldrh	r2, [r2, #0]
    4288:	435a      	muls	r2, r3
    428a:	0013      	movs	r3, r2
    428c:	009b      	lsls	r3, r3, #2
    428e:	189b      	adds	r3, r3, r2
    4290:	00db      	lsls	r3, r3, #3
    4292:	189b      	adds	r3, r3, r2
    4294:	2280      	movs	r2, #128	; 0x80
    4296:	0112      	lsls	r2, r2, #4
    4298:	4694      	mov	ip, r2
    429a:	4463      	add	r3, ip
    429c:	0b1b      	lsrs	r3, r3, #12
    429e:	0019      	movs	r1, r3
    42a0:	4b32      	ldr	r3, [pc, #200]	; (436c <fsm_idle+0x178>)
    42a2:	68fa      	ldr	r2, [r7, #12]
    42a4:	0092      	lsls	r2, r2, #2
    42a6:	50d1      	str	r1, [r2, r3]
    42a8:	68fb      	ldr	r3, [r7, #12]
    42aa:	3301      	adds	r3, #1
    42ac:	60fb      	str	r3, [r7, #12]
    42ae:	68fb      	ldr	r3, [r7, #12]
    42b0:	2b04      	cmp	r3, #4
    42b2:	ddc9      	ble.n	4248 <fsm_idle+0x54>
    42b4:	2300      	movs	r3, #0
    42b6:	60fb      	str	r3, [r7, #12]
    42b8:	e020      	b.n	42fc <fsm_idle+0x108>
    42ba:	68fb      	ldr	r3, [r7, #12]
    42bc:	1c5a      	adds	r2, r3, #1
    42be:	4b2b      	ldr	r3, [pc, #172]	; (436c <fsm_idle+0x178>)
    42c0:	0092      	lsls	r2, r2, #2
    42c2:	58d2      	ldr	r2, [r2, r3]
    42c4:	4b29      	ldr	r3, [pc, #164]	; (436c <fsm_idle+0x178>)
    42c6:	68f9      	ldr	r1, [r7, #12]
    42c8:	0089      	lsls	r1, r1, #2
    42ca:	58cb      	ldr	r3, [r1, r3]
    42cc:	1ad3      	subs	r3, r2, r3
    42ce:	0098      	lsls	r0, r3, #2
    42d0:	68fb      	ldr	r3, [r7, #12]
    42d2:	1c5a      	adds	r2, r3, #1
    42d4:	4b24      	ldr	r3, [pc, #144]	; (4368 <fsm_idle+0x174>)
    42d6:	0092      	lsls	r2, r2, #2
    42d8:	58d2      	ldr	r2, [r2, r3]
    42da:	4b23      	ldr	r3, [pc, #140]	; (4368 <fsm_idle+0x174>)
    42dc:	68f9      	ldr	r1, [r7, #12]
    42de:	0089      	lsls	r1, r1, #2
    42e0:	58cb      	ldr	r3, [r1, r3]
    42e2:	1ad3      	subs	r3, r2, r3
    42e4:	0019      	movs	r1, r3
    42e6:	f000 fbff 	bl	4ae8 <__aeabi_idiv>
    42ea:	0003      	movs	r3, r0
    42ec:	0019      	movs	r1, r3
    42ee:	4b20      	ldr	r3, [pc, #128]	; (4370 <fsm_idle+0x17c>)
    42f0:	68fa      	ldr	r2, [r7, #12]
    42f2:	0092      	lsls	r2, r2, #2
    42f4:	50d1      	str	r1, [r2, r3]
    42f6:	68fb      	ldr	r3, [r7, #12]
    42f8:	3301      	adds	r3, #1
    42fa:	60fb      	str	r3, [r7, #12]
    42fc:	68fb      	ldr	r3, [r7, #12]
    42fe:	2b03      	cmp	r3, #3
    4300:	dddb      	ble.n	42ba <fsm_idle+0xc6>
    4302:	4b19      	ldr	r3, [pc, #100]	; (4368 <fsm_idle+0x174>)
    4304:	681a      	ldr	r2, [r3, #0]
    4306:	4b1b      	ldr	r3, [pc, #108]	; (4374 <fsm_idle+0x180>)
    4308:	601a      	str	r2, [r3, #0]
    430a:	4b17      	ldr	r3, [pc, #92]	; (4368 <fsm_idle+0x174>)
    430c:	685a      	ldr	r2, [r3, #4]
    430e:	4b1a      	ldr	r3, [pc, #104]	; (4378 <fsm_idle+0x184>)
    4310:	601a      	str	r2, [r3, #0]
    4312:	4b16      	ldr	r3, [pc, #88]	; (436c <fsm_idle+0x178>)
    4314:	681a      	ldr	r2, [r3, #0]
    4316:	4b19      	ldr	r3, [pc, #100]	; (437c <fsm_idle+0x188>)
    4318:	601a      	str	r2, [r3, #0]
    431a:	4b14      	ldr	r3, [pc, #80]	; (436c <fsm_idle+0x178>)
    431c:	685a      	ldr	r2, [r3, #4]
    431e:	4b18      	ldr	r3, [pc, #96]	; (4380 <fsm_idle+0x18c>)
    4320:	601a      	str	r2, [r3, #0]
    4322:	4b13      	ldr	r3, [pc, #76]	; (4370 <fsm_idle+0x17c>)
    4324:	681a      	ldr	r2, [r3, #0]
    4326:	4b17      	ldr	r3, [pc, #92]	; (4384 <fsm_idle+0x190>)
    4328:	601a      	str	r2, [r3, #0]
    432a:	f7fb ff11 	bl	150 <dut_reset_on>
    432e:	4b07      	ldr	r3, [pc, #28]	; (434c <fsm_idle+0x158>)
    4330:	685b      	ldr	r3, [r3, #4]
    4332:	0018      	movs	r0, r3
    4334:	f7fb ff18 	bl	168 <dut_set_speed>
    4338:	4b10      	ldr	r3, [pc, #64]	; (437c <fsm_idle+0x188>)
    433a:	681b      	ldr	r3, [r3, #0]
    433c:	0018      	movs	r0, r3
    433e:	f7fb ff47 	bl	1d0 <dut_set_torque>
    4342:	46c0      	nop			; (mov r8, r8)
    4344:	46bd      	mov	sp, r7
    4346:	b004      	add	sp, #16
    4348:	bd80      	pop	{r7, pc}
    434a:	46c0      	nop			; (mov r8, r8)
    434c:	20006014 	.word	0x20006014
    4350:	20006008 	.word	0x20006008
    4354:	20000014 	.word	0x20000014
    4358:	00004389 	.word	0x00004389
    435c:	2000603c 	.word	0x2000603c
    4360:	2000600c 	.word	0x2000600c
    4364:	20006010 	.word	0x20006010
    4368:	20005fcc 	.word	0x20005fcc
    436c:	20005fe0 	.word	0x20005fe0
    4370:	20005ff4 	.word	0x20005ff4
    4374:	20005fbc 	.word	0x20005fbc
    4378:	20005fc0 	.word	0x20005fc0
    437c:	20005fc4 	.word	0x20005fc4
    4380:	20005fc8 	.word	0x20005fc8
    4384:	20005fb8 	.word	0x20005fb8

00004388 <fsm_work>:
    4388:	b580      	push	{r7, lr}
    438a:	b086      	sub	sp, #24
    438c:	af00      	add	r7, sp, #0
    438e:	6078      	str	r0, [r7, #4]
    4390:	2313      	movs	r3, #19
    4392:	18fb      	adds	r3, r7, r3
    4394:	687a      	ldr	r2, [r7, #4]
    4396:	701a      	strb	r2, [r3, #0]
    4398:	687b      	ldr	r3, [r7, #4]
    439a:	121b      	asrs	r3, r3, #8
    439c:	60fb      	str	r3, [r7, #12]
    439e:	2313      	movs	r3, #19
    43a0:	18fb      	adds	r3, r7, r3
    43a2:	781b      	ldrb	r3, [r3, #0]
    43a4:	2b04      	cmp	r3, #4
    43a6:	d000      	beq.n	43aa <fsm_work+0x22>
    43a8:	e0fc      	b.n	45a4 <fsm_work+0x21c>
    43aa:	68fb      	ldr	r3, [r7, #12]
    43ac:	617b      	str	r3, [r7, #20]
    43ae:	f7fb fec3 	bl	138 <dut_reset_off>
    43b2:	4b8d      	ldr	r3, [pc, #564]	; (45e8 <fsm_work+0x260>)
    43b4:	689b      	ldr	r3, [r3, #8]
    43b6:	001a      	movs	r2, r3
    43b8:	697b      	ldr	r3, [r7, #20]
    43ba:	429a      	cmp	r2, r3
    43bc:	dc29      	bgt.n	4412 <fsm_work+0x8a>
    43be:	4b8b      	ldr	r3, [pc, #556]	; (45ec <fsm_work+0x264>)
    43c0:	2201      	movs	r2, #1
    43c2:	601a      	str	r2, [r3, #0]
    43c4:	4b8a      	ldr	r3, [pc, #552]	; (45f0 <fsm_work+0x268>)
    43c6:	2200      	movs	r2, #0
    43c8:	601a      	str	r2, [r3, #0]
    43ca:	4b8a      	ldr	r3, [pc, #552]	; (45f4 <fsm_work+0x26c>)
    43cc:	681a      	ldr	r2, [r3, #0]
    43ce:	4b8a      	ldr	r3, [pc, #552]	; (45f8 <fsm_work+0x270>)
    43d0:	601a      	str	r2, [r3, #0]
    43d2:	4b88      	ldr	r3, [pc, #544]	; (45f4 <fsm_work+0x26c>)
    43d4:	685a      	ldr	r2, [r3, #4]
    43d6:	4b89      	ldr	r3, [pc, #548]	; (45fc <fsm_work+0x274>)
    43d8:	601a      	str	r2, [r3, #0]
    43da:	4b89      	ldr	r3, [pc, #548]	; (4600 <fsm_work+0x278>)
    43dc:	681b      	ldr	r3, [r3, #0]
    43de:	425a      	negs	r2, r3
    43e0:	4b88      	ldr	r3, [pc, #544]	; (4604 <fsm_work+0x27c>)
    43e2:	601a      	str	r2, [r3, #0]
    43e4:	4b86      	ldr	r3, [pc, #536]	; (4600 <fsm_work+0x278>)
    43e6:	685b      	ldr	r3, [r3, #4]
    43e8:	425a      	negs	r2, r3
    43ea:	4b87      	ldr	r3, [pc, #540]	; (4608 <fsm_work+0x280>)
    43ec:	601a      	str	r2, [r3, #0]
    43ee:	4b87      	ldr	r3, [pc, #540]	; (460c <fsm_work+0x284>)
    43f0:	681b      	ldr	r3, [r3, #0]
    43f2:	425a      	negs	r2, r3
    43f4:	4b86      	ldr	r3, [pc, #536]	; (4610 <fsm_work+0x288>)
    43f6:	601a      	str	r2, [r3, #0]
    43f8:	4b7b      	ldr	r3, [pc, #492]	; (45e8 <fsm_work+0x260>)
    43fa:	685b      	ldr	r3, [r3, #4]
    43fc:	425b      	negs	r3, r3
    43fe:	0018      	movs	r0, r3
    4400:	f7fb feb2 	bl	168 <dut_set_speed>
    4404:	4b7f      	ldr	r3, [pc, #508]	; (4604 <fsm_work+0x27c>)
    4406:	681b      	ldr	r3, [r3, #0]
    4408:	425b      	negs	r3, r3
    440a:	0018      	movs	r0, r3
    440c:	f7fb fee0 	bl	1d0 <dut_set_torque>
    4410:	e0e7      	b.n	45e2 <fsm_work+0x25a>
    4412:	4b76      	ldr	r3, [pc, #472]	; (45ec <fsm_work+0x264>)
    4414:	681b      	ldr	r3, [r3, #0]
    4416:	2b00      	cmp	r3, #0
    4418:	d03f      	beq.n	449a <fsm_work+0x112>
    441a:	697b      	ldr	r3, [r7, #20]
    441c:	2b00      	cmp	r3, #0
    441e:	dc3c      	bgt.n	449a <fsm_work+0x112>
    4420:	4b7c      	ldr	r3, [pc, #496]	; (4614 <fsm_work+0x28c>)
    4422:	681b      	ldr	r3, [r3, #0]
    4424:	1e5a      	subs	r2, r3, #1
    4426:	4b7b      	ldr	r3, [pc, #492]	; (4614 <fsm_work+0x28c>)
    4428:	601a      	str	r2, [r3, #0]
    442a:	4b70      	ldr	r3, [pc, #448]	; (45ec <fsm_work+0x264>)
    442c:	2200      	movs	r2, #0
    442e:	601a      	str	r2, [r3, #0]
    4430:	4b6f      	ldr	r3, [pc, #444]	; (45f0 <fsm_work+0x268>)
    4432:	2200      	movs	r2, #0
    4434:	601a      	str	r2, [r3, #0]
    4436:	4b77      	ldr	r3, [pc, #476]	; (4614 <fsm_work+0x28c>)
    4438:	681b      	ldr	r3, [r3, #0]
    443a:	2b00      	cmp	r3, #0
    443c:	d10e      	bne.n	445c <fsm_work+0xd4>
    443e:	4b76      	ldr	r3, [pc, #472]	; (4618 <fsm_work+0x290>)
    4440:	4a76      	ldr	r2, [pc, #472]	; (461c <fsm_work+0x294>)
    4442:	601a      	str	r2, [r3, #0]
    4444:	4b76      	ldr	r3, [pc, #472]	; (4620 <fsm_work+0x298>)
    4446:	2204      	movs	r2, #4
    4448:	701a      	strb	r2, [r3, #0]
    444a:	2000      	movs	r0, #0
    444c:	f7fb fe8c 	bl	168 <dut_set_speed>
    4450:	2000      	movs	r0, #0
    4452:	f7fb febd 	bl	1d0 <dut_set_torque>
    4456:	f7fb fe7b 	bl	150 <dut_reset_on>
    445a:	e0c2      	b.n	45e2 <fsm_work+0x25a>
    445c:	4b65      	ldr	r3, [pc, #404]	; (45f4 <fsm_work+0x26c>)
    445e:	681a      	ldr	r2, [r3, #0]
    4460:	4b65      	ldr	r3, [pc, #404]	; (45f8 <fsm_work+0x270>)
    4462:	601a      	str	r2, [r3, #0]
    4464:	4b63      	ldr	r3, [pc, #396]	; (45f4 <fsm_work+0x26c>)
    4466:	685a      	ldr	r2, [r3, #4]
    4468:	4b64      	ldr	r3, [pc, #400]	; (45fc <fsm_work+0x274>)
    446a:	601a      	str	r2, [r3, #0]
    446c:	4b64      	ldr	r3, [pc, #400]	; (4600 <fsm_work+0x278>)
    446e:	681a      	ldr	r2, [r3, #0]
    4470:	4b64      	ldr	r3, [pc, #400]	; (4604 <fsm_work+0x27c>)
    4472:	601a      	str	r2, [r3, #0]
    4474:	4b62      	ldr	r3, [pc, #392]	; (4600 <fsm_work+0x278>)
    4476:	685a      	ldr	r2, [r3, #4]
    4478:	4b63      	ldr	r3, [pc, #396]	; (4608 <fsm_work+0x280>)
    447a:	601a      	str	r2, [r3, #0]
    447c:	4b63      	ldr	r3, [pc, #396]	; (460c <fsm_work+0x284>)
    447e:	681a      	ldr	r2, [r3, #0]
    4480:	4b63      	ldr	r3, [pc, #396]	; (4610 <fsm_work+0x288>)
    4482:	601a      	str	r2, [r3, #0]
    4484:	4b58      	ldr	r3, [pc, #352]	; (45e8 <fsm_work+0x260>)
    4486:	685b      	ldr	r3, [r3, #4]
    4488:	0018      	movs	r0, r3
    448a:	f7fb fe6d 	bl	168 <dut_set_speed>
    448e:	4b5d      	ldr	r3, [pc, #372]	; (4604 <fsm_work+0x27c>)
    4490:	681b      	ldr	r3, [r3, #0]
    4492:	0018      	movs	r0, r3
    4494:	f7fb fe9c 	bl	1d0 <dut_set_torque>
    4498:	e0a3      	b.n	45e2 <fsm_work+0x25a>
    449a:	4b54      	ldr	r3, [pc, #336]	; (45ec <fsm_work+0x264>)
    449c:	681b      	ldr	r3, [r3, #0]
    449e:	2b00      	cmp	r3, #0
    44a0:	d03c      	beq.n	451c <fsm_work+0x194>
    44a2:	4b51      	ldr	r3, [pc, #324]	; (45e8 <fsm_work+0x260>)
    44a4:	689b      	ldr	r3, [r3, #8]
    44a6:	001a      	movs	r2, r3
    44a8:	697b      	ldr	r3, [r7, #20]
    44aa:	1ad3      	subs	r3, r2, r3
    44ac:	617b      	str	r3, [r7, #20]
    44ae:	4b53      	ldr	r3, [pc, #332]	; (45fc <fsm_work+0x274>)
    44b0:	681b      	ldr	r3, [r3, #0]
    44b2:	697a      	ldr	r2, [r7, #20]
    44b4:	429a      	cmp	r2, r3
    44b6:	db64      	blt.n	4582 <fsm_work+0x1fa>
    44b8:	4b4d      	ldr	r3, [pc, #308]	; (45f0 <fsm_work+0x268>)
    44ba:	681b      	ldr	r3, [r3, #0]
    44bc:	1c5a      	adds	r2, r3, #1
    44be:	4b4c      	ldr	r3, [pc, #304]	; (45f0 <fsm_work+0x268>)
    44c0:	601a      	str	r2, [r3, #0]
    44c2:	4b4b      	ldr	r3, [pc, #300]	; (45f0 <fsm_work+0x268>)
    44c4:	681b      	ldr	r3, [r3, #0]
    44c6:	2b03      	cmp	r3, #3
    44c8:	d85b      	bhi.n	4582 <fsm_work+0x1fa>
    44ca:	4b49      	ldr	r3, [pc, #292]	; (45f0 <fsm_work+0x268>)
    44cc:	681a      	ldr	r2, [r3, #0]
    44ce:	4b49      	ldr	r3, [pc, #292]	; (45f4 <fsm_work+0x26c>)
    44d0:	0092      	lsls	r2, r2, #2
    44d2:	58d2      	ldr	r2, [r2, r3]
    44d4:	4b48      	ldr	r3, [pc, #288]	; (45f8 <fsm_work+0x270>)
    44d6:	601a      	str	r2, [r3, #0]
    44d8:	4b45      	ldr	r3, [pc, #276]	; (45f0 <fsm_work+0x268>)
    44da:	681b      	ldr	r3, [r3, #0]
    44dc:	1c5a      	adds	r2, r3, #1
    44de:	4b45      	ldr	r3, [pc, #276]	; (45f4 <fsm_work+0x26c>)
    44e0:	0092      	lsls	r2, r2, #2
    44e2:	58d2      	ldr	r2, [r2, r3]
    44e4:	4b45      	ldr	r3, [pc, #276]	; (45fc <fsm_work+0x274>)
    44e6:	601a      	str	r2, [r3, #0]
    44e8:	4b41      	ldr	r3, [pc, #260]	; (45f0 <fsm_work+0x268>)
    44ea:	681a      	ldr	r2, [r3, #0]
    44ec:	4b44      	ldr	r3, [pc, #272]	; (4600 <fsm_work+0x278>)
    44ee:	0092      	lsls	r2, r2, #2
    44f0:	58d3      	ldr	r3, [r2, r3]
    44f2:	425a      	negs	r2, r3
    44f4:	4b43      	ldr	r3, [pc, #268]	; (4604 <fsm_work+0x27c>)
    44f6:	601a      	str	r2, [r3, #0]
    44f8:	4b3d      	ldr	r3, [pc, #244]	; (45f0 <fsm_work+0x268>)
    44fa:	681b      	ldr	r3, [r3, #0]
    44fc:	1c5a      	adds	r2, r3, #1
    44fe:	4b40      	ldr	r3, [pc, #256]	; (4600 <fsm_work+0x278>)
    4500:	0092      	lsls	r2, r2, #2
    4502:	58d3      	ldr	r3, [r2, r3]
    4504:	425a      	negs	r2, r3
    4506:	4b40      	ldr	r3, [pc, #256]	; (4608 <fsm_work+0x280>)
    4508:	601a      	str	r2, [r3, #0]
    450a:	4b39      	ldr	r3, [pc, #228]	; (45f0 <fsm_work+0x268>)
    450c:	681a      	ldr	r2, [r3, #0]
    450e:	4b3f      	ldr	r3, [pc, #252]	; (460c <fsm_work+0x284>)
    4510:	0092      	lsls	r2, r2, #2
    4512:	58d3      	ldr	r3, [r2, r3]
    4514:	425a      	negs	r2, r3
    4516:	4b3e      	ldr	r3, [pc, #248]	; (4610 <fsm_work+0x288>)
    4518:	601a      	str	r2, [r3, #0]
    451a:	e032      	b.n	4582 <fsm_work+0x1fa>
    451c:	4b37      	ldr	r3, [pc, #220]	; (45fc <fsm_work+0x274>)
    451e:	681b      	ldr	r3, [r3, #0]
    4520:	697a      	ldr	r2, [r7, #20]
    4522:	429a      	cmp	r2, r3
    4524:	db2d      	blt.n	4582 <fsm_work+0x1fa>
    4526:	4b32      	ldr	r3, [pc, #200]	; (45f0 <fsm_work+0x268>)
    4528:	681b      	ldr	r3, [r3, #0]
    452a:	1c5a      	adds	r2, r3, #1
    452c:	4b30      	ldr	r3, [pc, #192]	; (45f0 <fsm_work+0x268>)
    452e:	601a      	str	r2, [r3, #0]
    4530:	4b2f      	ldr	r3, [pc, #188]	; (45f0 <fsm_work+0x268>)
    4532:	681b      	ldr	r3, [r3, #0]
    4534:	2b03      	cmp	r3, #3
    4536:	d824      	bhi.n	4582 <fsm_work+0x1fa>
    4538:	4b2d      	ldr	r3, [pc, #180]	; (45f0 <fsm_work+0x268>)
    453a:	681a      	ldr	r2, [r3, #0]
    453c:	4b2d      	ldr	r3, [pc, #180]	; (45f4 <fsm_work+0x26c>)
    453e:	0092      	lsls	r2, r2, #2
    4540:	58d2      	ldr	r2, [r2, r3]
    4542:	4b2d      	ldr	r3, [pc, #180]	; (45f8 <fsm_work+0x270>)
    4544:	601a      	str	r2, [r3, #0]
    4546:	4b2a      	ldr	r3, [pc, #168]	; (45f0 <fsm_work+0x268>)
    4548:	681b      	ldr	r3, [r3, #0]
    454a:	1c5a      	adds	r2, r3, #1
    454c:	4b29      	ldr	r3, [pc, #164]	; (45f4 <fsm_work+0x26c>)
    454e:	0092      	lsls	r2, r2, #2
    4550:	58d2      	ldr	r2, [r2, r3]
    4552:	4b2a      	ldr	r3, [pc, #168]	; (45fc <fsm_work+0x274>)
    4554:	601a      	str	r2, [r3, #0]
    4556:	4b26      	ldr	r3, [pc, #152]	; (45f0 <fsm_work+0x268>)
    4558:	681a      	ldr	r2, [r3, #0]
    455a:	4b29      	ldr	r3, [pc, #164]	; (4600 <fsm_work+0x278>)
    455c:	0092      	lsls	r2, r2, #2
    455e:	58d2      	ldr	r2, [r2, r3]
    4560:	4b28      	ldr	r3, [pc, #160]	; (4604 <fsm_work+0x27c>)
    4562:	601a      	str	r2, [r3, #0]
    4564:	4b22      	ldr	r3, [pc, #136]	; (45f0 <fsm_work+0x268>)
    4566:	681b      	ldr	r3, [r3, #0]
    4568:	1c5a      	adds	r2, r3, #1
    456a:	4b25      	ldr	r3, [pc, #148]	; (4600 <fsm_work+0x278>)
    456c:	0092      	lsls	r2, r2, #2
    456e:	58d2      	ldr	r2, [r2, r3]
    4570:	4b25      	ldr	r3, [pc, #148]	; (4608 <fsm_work+0x280>)
    4572:	601a      	str	r2, [r3, #0]
    4574:	4b1e      	ldr	r3, [pc, #120]	; (45f0 <fsm_work+0x268>)
    4576:	681a      	ldr	r2, [r3, #0]
    4578:	4b24      	ldr	r3, [pc, #144]	; (460c <fsm_work+0x284>)
    457a:	0092      	lsls	r2, r2, #2
    457c:	58d2      	ldr	r2, [r2, r3]
    457e:	4b24      	ldr	r3, [pc, #144]	; (4610 <fsm_work+0x288>)
    4580:	601a      	str	r2, [r3, #0]
    4582:	4b20      	ldr	r3, [pc, #128]	; (4604 <fsm_work+0x27c>)
    4584:	681b      	ldr	r3, [r3, #0]
    4586:	009a      	lsls	r2, r3, #2
    4588:	4b1b      	ldr	r3, [pc, #108]	; (45f8 <fsm_work+0x270>)
    458a:	681b      	ldr	r3, [r3, #0]
    458c:	6979      	ldr	r1, [r7, #20]
    458e:	1ac9      	subs	r1, r1, r3
    4590:	4b1f      	ldr	r3, [pc, #124]	; (4610 <fsm_work+0x288>)
    4592:	681b      	ldr	r3, [r3, #0]
    4594:	434b      	muls	r3, r1
    4596:	18d3      	adds	r3, r2, r3
    4598:	60bb      	str	r3, [r7, #8]
    459a:	68bb      	ldr	r3, [r7, #8]
    459c:	109b      	asrs	r3, r3, #2
    459e:	0018      	movs	r0, r3
    45a0:	f7fb fe16 	bl	1d0 <dut_set_torque>
    45a4:	2313      	movs	r3, #19
    45a6:	18fb      	adds	r3, r7, r3
    45a8:	781b      	ldrb	r3, [r3, #0]
    45aa:	2b03      	cmp	r3, #3
    45ac:	d10e      	bne.n	45cc <fsm_work+0x244>
    45ae:	4b1a      	ldr	r3, [pc, #104]	; (4618 <fsm_work+0x290>)
    45b0:	4a1a      	ldr	r2, [pc, #104]	; (461c <fsm_work+0x294>)
    45b2:	601a      	str	r2, [r3, #0]
    45b4:	4b1a      	ldr	r3, [pc, #104]	; (4620 <fsm_work+0x298>)
    45b6:	2204      	movs	r2, #4
    45b8:	701a      	strb	r2, [r3, #0]
    45ba:	2000      	movs	r0, #0
    45bc:	f7fb fdd4 	bl	168 <dut_set_speed>
    45c0:	2000      	movs	r0, #0
    45c2:	f7fb fe05 	bl	1d0 <dut_set_torque>
    45c6:	f7fb fdc3 	bl	150 <dut_reset_on>
    45ca:	e00a      	b.n	45e2 <fsm_work+0x25a>
    45cc:	2313      	movs	r3, #19
    45ce:	18fb      	adds	r3, r7, r3
    45d0:	781b      	ldrb	r3, [r3, #0]
    45d2:	2b02      	cmp	r3, #2
    45d4:	d105      	bne.n	45e2 <fsm_work+0x25a>
    45d6:	4b10      	ldr	r3, [pc, #64]	; (4618 <fsm_work+0x290>)
    45d8:	4a12      	ldr	r2, [pc, #72]	; (4624 <fsm_work+0x29c>)
    45da:	601a      	str	r2, [r3, #0]
    45dc:	4b10      	ldr	r3, [pc, #64]	; (4620 <fsm_work+0x298>)
    45de:	2202      	movs	r2, #2
    45e0:	701a      	strb	r2, [r3, #0]
    45e2:	46bd      	mov	sp, r7
    45e4:	b006      	add	sp, #24
    45e6:	bd80      	pop	{r7, pc}
    45e8:	20006014 	.word	0x20006014
    45ec:	20006010 	.word	0x20006010
    45f0:	2000600c 	.word	0x2000600c
    45f4:	20005fcc 	.word	0x20005fcc
    45f8:	20005fbc 	.word	0x20005fbc
    45fc:	20005fc0 	.word	0x20005fc0
    4600:	20005fe0 	.word	0x20005fe0
    4604:	20005fc4 	.word	0x20005fc4
    4608:	20005fc8 	.word	0x20005fc8
    460c:	20005ff4 	.word	0x20005ff4
    4610:	20005fb8 	.word	0x20005fb8
    4614:	20006008 	.word	0x20006008
    4618:	20000014 	.word	0x20000014
    461c:	00004629 	.word	0x00004629
    4620:	2000603c 	.word	0x2000603c
    4624:	00004685 	.word	0x00004685

00004628 <fsm_clean>:
    4628:	b580      	push	{r7, lr}
    462a:	b084      	sub	sp, #16
    462c:	af00      	add	r7, sp, #0
    462e:	6078      	str	r0, [r7, #4]
    4630:	230f      	movs	r3, #15
    4632:	18fb      	adds	r3, r7, r3
    4634:	687a      	ldr	r2, [r7, #4]
    4636:	701a      	strb	r2, [r3, #0]
    4638:	230f      	movs	r3, #15
    463a:	18fb      	adds	r3, r7, r3
    463c:	781b      	ldrb	r3, [r3, #0]
    463e:	2b04      	cmp	r3, #4
    4640:	d110      	bne.n	4664 <fsm_clean+0x3c>
    4642:	4b0a      	ldr	r3, [pc, #40]	; (466c <fsm_clean+0x44>)
    4644:	4a0a      	ldr	r2, [pc, #40]	; (4670 <fsm_clean+0x48>)
    4646:	601a      	str	r2, [r3, #0]
    4648:	4b0a      	ldr	r3, [pc, #40]	; (4674 <fsm_clean+0x4c>)
    464a:	2200      	movs	r2, #0
    464c:	701a      	strb	r2, [r3, #0]
    464e:	f7fb fd73 	bl	138 <dut_reset_off>
    4652:	4b09      	ldr	r3, [pc, #36]	; (4678 <fsm_clean+0x50>)
    4654:	2200      	movs	r2, #0
    4656:	601a      	str	r2, [r3, #0]
    4658:	4b08      	ldr	r3, [pc, #32]	; (467c <fsm_clean+0x54>)
    465a:	2200      	movs	r2, #0
    465c:	601a      	str	r2, [r3, #0]
    465e:	4b08      	ldr	r3, [pc, #32]	; (4680 <fsm_clean+0x58>)
    4660:	2200      	movs	r2, #0
    4662:	601a      	str	r2, [r3, #0]
    4664:	46c0      	nop			; (mov r8, r8)
    4666:	46bd      	mov	sp, r7
    4668:	b004      	add	sp, #16
    466a:	bd80      	pop	{r7, pc}
    466c:	20000014 	.word	0x20000014
    4670:	000041f5 	.word	0x000041f5
    4674:	2000603c 	.word	0x2000603c
    4678:	20006008 	.word	0x20006008
    467c:	2000600c 	.word	0x2000600c
    4680:	20006010 	.word	0x20006010

00004684 <fsm_complete>:
    4684:	b580      	push	{r7, lr}
    4686:	b086      	sub	sp, #24
    4688:	af00      	add	r7, sp, #0
    468a:	6078      	str	r0, [r7, #4]
    468c:	2313      	movs	r3, #19
    468e:	18fb      	adds	r3, r7, r3
    4690:	687a      	ldr	r2, [r7, #4]
    4692:	701a      	strb	r2, [r3, #0]
    4694:	687b      	ldr	r3, [r7, #4]
    4696:	121b      	asrs	r3, r3, #8
    4698:	60fb      	str	r3, [r7, #12]
    469a:	2313      	movs	r3, #19
    469c:	18fb      	adds	r3, r7, r3
    469e:	781b      	ldrb	r3, [r3, #0]
    46a0:	2b04      	cmp	r3, #4
    46a2:	d000      	beq.n	46a6 <fsm_complete+0x22>
    46a4:	e0ea      	b.n	487c <fsm_complete+0x1f8>
    46a6:	68fb      	ldr	r3, [r7, #12]
    46a8:	617b      	str	r3, [r7, #20]
    46aa:	f7fb fd45 	bl	138 <dut_reset_off>
    46ae:	4b84      	ldr	r3, [pc, #528]	; (48c0 <fsm_complete+0x23c>)
    46b0:	689b      	ldr	r3, [r3, #8]
    46b2:	001a      	movs	r2, r3
    46b4:	697b      	ldr	r3, [r7, #20]
    46b6:	429a      	cmp	r2, r3
    46b8:	dc29      	bgt.n	470e <fsm_complete+0x8a>
    46ba:	4b82      	ldr	r3, [pc, #520]	; (48c4 <fsm_complete+0x240>)
    46bc:	2201      	movs	r2, #1
    46be:	601a      	str	r2, [r3, #0]
    46c0:	4b81      	ldr	r3, [pc, #516]	; (48c8 <fsm_complete+0x244>)
    46c2:	2200      	movs	r2, #0
    46c4:	601a      	str	r2, [r3, #0]
    46c6:	4b81      	ldr	r3, [pc, #516]	; (48cc <fsm_complete+0x248>)
    46c8:	681a      	ldr	r2, [r3, #0]
    46ca:	4b81      	ldr	r3, [pc, #516]	; (48d0 <fsm_complete+0x24c>)
    46cc:	601a      	str	r2, [r3, #0]
    46ce:	4b7f      	ldr	r3, [pc, #508]	; (48cc <fsm_complete+0x248>)
    46d0:	685a      	ldr	r2, [r3, #4]
    46d2:	4b80      	ldr	r3, [pc, #512]	; (48d4 <fsm_complete+0x250>)
    46d4:	601a      	str	r2, [r3, #0]
    46d6:	4b80      	ldr	r3, [pc, #512]	; (48d8 <fsm_complete+0x254>)
    46d8:	681b      	ldr	r3, [r3, #0]
    46da:	425a      	negs	r2, r3
    46dc:	4b7f      	ldr	r3, [pc, #508]	; (48dc <fsm_complete+0x258>)
    46de:	601a      	str	r2, [r3, #0]
    46e0:	4b7d      	ldr	r3, [pc, #500]	; (48d8 <fsm_complete+0x254>)
    46e2:	685b      	ldr	r3, [r3, #4]
    46e4:	425a      	negs	r2, r3
    46e6:	4b7e      	ldr	r3, [pc, #504]	; (48e0 <fsm_complete+0x25c>)
    46e8:	601a      	str	r2, [r3, #0]
    46ea:	4b7e      	ldr	r3, [pc, #504]	; (48e4 <fsm_complete+0x260>)
    46ec:	681b      	ldr	r3, [r3, #0]
    46ee:	425a      	negs	r2, r3
    46f0:	4b7d      	ldr	r3, [pc, #500]	; (48e8 <fsm_complete+0x264>)
    46f2:	601a      	str	r2, [r3, #0]
    46f4:	4b72      	ldr	r3, [pc, #456]	; (48c0 <fsm_complete+0x23c>)
    46f6:	685b      	ldr	r3, [r3, #4]
    46f8:	425b      	negs	r3, r3
    46fa:	0018      	movs	r0, r3
    46fc:	f7fb fd34 	bl	168 <dut_set_speed>
    4700:	4b76      	ldr	r3, [pc, #472]	; (48dc <fsm_complete+0x258>)
    4702:	681b      	ldr	r3, [r3, #0]
    4704:	425b      	negs	r3, r3
    4706:	0018      	movs	r0, r3
    4708:	f7fb fd62 	bl	1d0 <dut_set_torque>
    470c:	e0d5      	b.n	48ba <fsm_complete+0x236>
    470e:	4b6d      	ldr	r3, [pc, #436]	; (48c4 <fsm_complete+0x240>)
    4710:	681b      	ldr	r3, [r3, #0]
    4712:	2b00      	cmp	r3, #0
    4714:	d02d      	beq.n	4772 <fsm_complete+0xee>
    4716:	697b      	ldr	r3, [r7, #20]
    4718:	2b00      	cmp	r3, #0
    471a:	dc2a      	bgt.n	4772 <fsm_complete+0xee>
    471c:	4b73      	ldr	r3, [pc, #460]	; (48ec <fsm_complete+0x268>)
    471e:	681b      	ldr	r3, [r3, #0]
    4720:	1e5a      	subs	r2, r3, #1
    4722:	4b72      	ldr	r3, [pc, #456]	; (48ec <fsm_complete+0x268>)
    4724:	601a      	str	r2, [r3, #0]
    4726:	4b67      	ldr	r3, [pc, #412]	; (48c4 <fsm_complete+0x240>)
    4728:	2200      	movs	r2, #0
    472a:	601a      	str	r2, [r3, #0]
    472c:	4b66      	ldr	r3, [pc, #408]	; (48c8 <fsm_complete+0x244>)
    472e:	2200      	movs	r2, #0
    4730:	601a      	str	r2, [r3, #0]
    4732:	4b6e      	ldr	r3, [pc, #440]	; (48ec <fsm_complete+0x268>)
    4734:	681b      	ldr	r3, [r3, #0]
    4736:	2b00      	cmp	r3, #0
    4738:	d10e      	bne.n	4758 <fsm_complete+0xd4>
    473a:	4b6d      	ldr	r3, [pc, #436]	; (48f0 <fsm_complete+0x26c>)
    473c:	4a6d      	ldr	r2, [pc, #436]	; (48f4 <fsm_complete+0x270>)
    473e:	601a      	str	r2, [r3, #0]
    4740:	4b6d      	ldr	r3, [pc, #436]	; (48f8 <fsm_complete+0x274>)
    4742:	2204      	movs	r2, #4
    4744:	701a      	strb	r2, [r3, #0]
    4746:	2000      	movs	r0, #0
    4748:	f7fb fd0e 	bl	168 <dut_set_speed>
    474c:	2000      	movs	r0, #0
    474e:	f7fb fd3f 	bl	1d0 <dut_set_torque>
    4752:	f7fb fcfd 	bl	150 <dut_reset_on>
    4756:	e0b0      	b.n	48ba <fsm_complete+0x236>
    4758:	2000      	movs	r0, #0
    475a:	f7fb fd05 	bl	168 <dut_set_speed>
    475e:	2000      	movs	r0, #0
    4760:	f7fb fd36 	bl	1d0 <dut_set_torque>
    4764:	4b62      	ldr	r3, [pc, #392]	; (48f0 <fsm_complete+0x26c>)
    4766:	4a65      	ldr	r2, [pc, #404]	; (48fc <fsm_complete+0x278>)
    4768:	601a      	str	r2, [r3, #0]
    476a:	4b63      	ldr	r3, [pc, #396]	; (48f8 <fsm_complete+0x274>)
    476c:	2203      	movs	r2, #3
    476e:	701a      	strb	r2, [r3, #0]
    4770:	e0a3      	b.n	48ba <fsm_complete+0x236>
    4772:	4b54      	ldr	r3, [pc, #336]	; (48c4 <fsm_complete+0x240>)
    4774:	681b      	ldr	r3, [r3, #0]
    4776:	2b00      	cmp	r3, #0
    4778:	d03c      	beq.n	47f4 <fsm_complete+0x170>
    477a:	4b51      	ldr	r3, [pc, #324]	; (48c0 <fsm_complete+0x23c>)
    477c:	689b      	ldr	r3, [r3, #8]
    477e:	001a      	movs	r2, r3
    4780:	697b      	ldr	r3, [r7, #20]
    4782:	1ad3      	subs	r3, r2, r3
    4784:	617b      	str	r3, [r7, #20]
    4786:	4b53      	ldr	r3, [pc, #332]	; (48d4 <fsm_complete+0x250>)
    4788:	681b      	ldr	r3, [r3, #0]
    478a:	697a      	ldr	r2, [r7, #20]
    478c:	429a      	cmp	r2, r3
    478e:	db64      	blt.n	485a <fsm_complete+0x1d6>
    4790:	4b4d      	ldr	r3, [pc, #308]	; (48c8 <fsm_complete+0x244>)
    4792:	681b      	ldr	r3, [r3, #0]
    4794:	1c5a      	adds	r2, r3, #1
    4796:	4b4c      	ldr	r3, [pc, #304]	; (48c8 <fsm_complete+0x244>)
    4798:	601a      	str	r2, [r3, #0]
    479a:	4b4b      	ldr	r3, [pc, #300]	; (48c8 <fsm_complete+0x244>)
    479c:	681b      	ldr	r3, [r3, #0]
    479e:	2b03      	cmp	r3, #3
    47a0:	d85b      	bhi.n	485a <fsm_complete+0x1d6>
    47a2:	4b49      	ldr	r3, [pc, #292]	; (48c8 <fsm_complete+0x244>)
    47a4:	681a      	ldr	r2, [r3, #0]
    47a6:	4b49      	ldr	r3, [pc, #292]	; (48cc <fsm_complete+0x248>)
    47a8:	0092      	lsls	r2, r2, #2
    47aa:	58d2      	ldr	r2, [r2, r3]
    47ac:	4b48      	ldr	r3, [pc, #288]	; (48d0 <fsm_complete+0x24c>)
    47ae:	601a      	str	r2, [r3, #0]
    47b0:	4b45      	ldr	r3, [pc, #276]	; (48c8 <fsm_complete+0x244>)
    47b2:	681b      	ldr	r3, [r3, #0]
    47b4:	1c5a      	adds	r2, r3, #1
    47b6:	4b45      	ldr	r3, [pc, #276]	; (48cc <fsm_complete+0x248>)
    47b8:	0092      	lsls	r2, r2, #2
    47ba:	58d2      	ldr	r2, [r2, r3]
    47bc:	4b45      	ldr	r3, [pc, #276]	; (48d4 <fsm_complete+0x250>)
    47be:	601a      	str	r2, [r3, #0]
    47c0:	4b41      	ldr	r3, [pc, #260]	; (48c8 <fsm_complete+0x244>)
    47c2:	681a      	ldr	r2, [r3, #0]
    47c4:	4b44      	ldr	r3, [pc, #272]	; (48d8 <fsm_complete+0x254>)
    47c6:	0092      	lsls	r2, r2, #2
    47c8:	58d3      	ldr	r3, [r2, r3]
    47ca:	425a      	negs	r2, r3
    47cc:	4b43      	ldr	r3, [pc, #268]	; (48dc <fsm_complete+0x258>)
    47ce:	601a      	str	r2, [r3, #0]
    47d0:	4b3d      	ldr	r3, [pc, #244]	; (48c8 <fsm_complete+0x244>)
    47d2:	681b      	ldr	r3, [r3, #0]
    47d4:	1c5a      	adds	r2, r3, #1
    47d6:	4b40      	ldr	r3, [pc, #256]	; (48d8 <fsm_complete+0x254>)
    47d8:	0092      	lsls	r2, r2, #2
    47da:	58d3      	ldr	r3, [r2, r3]
    47dc:	425a      	negs	r2, r3
    47de:	4b40      	ldr	r3, [pc, #256]	; (48e0 <fsm_complete+0x25c>)
    47e0:	601a      	str	r2, [r3, #0]
    47e2:	4b39      	ldr	r3, [pc, #228]	; (48c8 <fsm_complete+0x244>)
    47e4:	681a      	ldr	r2, [r3, #0]
    47e6:	4b3f      	ldr	r3, [pc, #252]	; (48e4 <fsm_complete+0x260>)
    47e8:	0092      	lsls	r2, r2, #2
    47ea:	58d3      	ldr	r3, [r2, r3]
    47ec:	425a      	negs	r2, r3
    47ee:	4b3e      	ldr	r3, [pc, #248]	; (48e8 <fsm_complete+0x264>)
    47f0:	601a      	str	r2, [r3, #0]
    47f2:	e032      	b.n	485a <fsm_complete+0x1d6>
    47f4:	4b37      	ldr	r3, [pc, #220]	; (48d4 <fsm_complete+0x250>)
    47f6:	681b      	ldr	r3, [r3, #0]
    47f8:	697a      	ldr	r2, [r7, #20]
    47fa:	429a      	cmp	r2, r3
    47fc:	db2d      	blt.n	485a <fsm_complete+0x1d6>
    47fe:	4b32      	ldr	r3, [pc, #200]	; (48c8 <fsm_complete+0x244>)
    4800:	681b      	ldr	r3, [r3, #0]
    4802:	1c5a      	adds	r2, r3, #1
    4804:	4b30      	ldr	r3, [pc, #192]	; (48c8 <fsm_complete+0x244>)
    4806:	601a      	str	r2, [r3, #0]
    4808:	4b2f      	ldr	r3, [pc, #188]	; (48c8 <fsm_complete+0x244>)
    480a:	681b      	ldr	r3, [r3, #0]
    480c:	2b03      	cmp	r3, #3
    480e:	d824      	bhi.n	485a <fsm_complete+0x1d6>
    4810:	4b2d      	ldr	r3, [pc, #180]	; (48c8 <fsm_complete+0x244>)
    4812:	681a      	ldr	r2, [r3, #0]
    4814:	4b2d      	ldr	r3, [pc, #180]	; (48cc <fsm_complete+0x248>)
    4816:	0092      	lsls	r2, r2, #2
    4818:	58d2      	ldr	r2, [r2, r3]
    481a:	4b2d      	ldr	r3, [pc, #180]	; (48d0 <fsm_complete+0x24c>)
    481c:	601a      	str	r2, [r3, #0]
    481e:	4b2a      	ldr	r3, [pc, #168]	; (48c8 <fsm_complete+0x244>)
    4820:	681b      	ldr	r3, [r3, #0]
    4822:	1c5a      	adds	r2, r3, #1
    4824:	4b29      	ldr	r3, [pc, #164]	; (48cc <fsm_complete+0x248>)
    4826:	0092      	lsls	r2, r2, #2
    4828:	58d2      	ldr	r2, [r2, r3]
    482a:	4b2a      	ldr	r3, [pc, #168]	; (48d4 <fsm_complete+0x250>)
    482c:	601a      	str	r2, [r3, #0]
    482e:	4b26      	ldr	r3, [pc, #152]	; (48c8 <fsm_complete+0x244>)
    4830:	681a      	ldr	r2, [r3, #0]
    4832:	4b29      	ldr	r3, [pc, #164]	; (48d8 <fsm_complete+0x254>)
    4834:	0092      	lsls	r2, r2, #2
    4836:	58d2      	ldr	r2, [r2, r3]
    4838:	4b28      	ldr	r3, [pc, #160]	; (48dc <fsm_complete+0x258>)
    483a:	601a      	str	r2, [r3, #0]
    483c:	4b22      	ldr	r3, [pc, #136]	; (48c8 <fsm_complete+0x244>)
    483e:	681b      	ldr	r3, [r3, #0]
    4840:	1c5a      	adds	r2, r3, #1
    4842:	4b25      	ldr	r3, [pc, #148]	; (48d8 <fsm_complete+0x254>)
    4844:	0092      	lsls	r2, r2, #2
    4846:	58d2      	ldr	r2, [r2, r3]
    4848:	4b25      	ldr	r3, [pc, #148]	; (48e0 <fsm_complete+0x25c>)
    484a:	601a      	str	r2, [r3, #0]
    484c:	4b1e      	ldr	r3, [pc, #120]	; (48c8 <fsm_complete+0x244>)
    484e:	681a      	ldr	r2, [r3, #0]
    4850:	4b24      	ldr	r3, [pc, #144]	; (48e4 <fsm_complete+0x260>)
    4852:	0092      	lsls	r2, r2, #2
    4854:	58d2      	ldr	r2, [r2, r3]
    4856:	4b24      	ldr	r3, [pc, #144]	; (48e8 <fsm_complete+0x264>)
    4858:	601a      	str	r2, [r3, #0]
    485a:	4b20      	ldr	r3, [pc, #128]	; (48dc <fsm_complete+0x258>)
    485c:	681b      	ldr	r3, [r3, #0]
    485e:	009a      	lsls	r2, r3, #2
    4860:	4b1b      	ldr	r3, [pc, #108]	; (48d0 <fsm_complete+0x24c>)
    4862:	681b      	ldr	r3, [r3, #0]
    4864:	6979      	ldr	r1, [r7, #20]
    4866:	1ac9      	subs	r1, r1, r3
    4868:	4b1f      	ldr	r3, [pc, #124]	; (48e8 <fsm_complete+0x264>)
    486a:	681b      	ldr	r3, [r3, #0]
    486c:	434b      	muls	r3, r1
    486e:	18d3      	adds	r3, r2, r3
    4870:	60bb      	str	r3, [r7, #8]
    4872:	68bb      	ldr	r3, [r7, #8]
    4874:	109b      	asrs	r3, r3, #2
    4876:	0018      	movs	r0, r3
    4878:	f7fb fcaa 	bl	1d0 <dut_set_torque>
    487c:	2313      	movs	r3, #19
    487e:	18fb      	adds	r3, r7, r3
    4880:	781b      	ldrb	r3, [r3, #0]
    4882:	2b03      	cmp	r3, #3
    4884:	d10e      	bne.n	48a4 <fsm_complete+0x220>
    4886:	4b1a      	ldr	r3, [pc, #104]	; (48f0 <fsm_complete+0x26c>)
    4888:	4a1a      	ldr	r2, [pc, #104]	; (48f4 <fsm_complete+0x270>)
    488a:	601a      	str	r2, [r3, #0]
    488c:	4b1a      	ldr	r3, [pc, #104]	; (48f8 <fsm_complete+0x274>)
    488e:	2204      	movs	r2, #4
    4890:	701a      	strb	r2, [r3, #0]
    4892:	2000      	movs	r0, #0
    4894:	f7fb fc68 	bl	168 <dut_set_speed>
    4898:	2000      	movs	r0, #0
    489a:	f7fb fc99 	bl	1d0 <dut_set_torque>
    489e:	f7fb fc57 	bl	150 <dut_reset_on>
    48a2:	e00a      	b.n	48ba <fsm_complete+0x236>
    48a4:	2313      	movs	r3, #19
    48a6:	18fb      	adds	r3, r7, r3
    48a8:	781b      	ldrb	r3, [r3, #0]
    48aa:	2b02      	cmp	r3, #2
    48ac:	d105      	bne.n	48ba <fsm_complete+0x236>
    48ae:	4b10      	ldr	r3, [pc, #64]	; (48f0 <fsm_complete+0x26c>)
    48b0:	4a13      	ldr	r2, [pc, #76]	; (4900 <fsm_complete+0x27c>)
    48b2:	601a      	str	r2, [r3, #0]
    48b4:	4b10      	ldr	r3, [pc, #64]	; (48f8 <fsm_complete+0x274>)
    48b6:	2202      	movs	r2, #2
    48b8:	701a      	strb	r2, [r3, #0]
    48ba:	46bd      	mov	sp, r7
    48bc:	b006      	add	sp, #24
    48be:	bd80      	pop	{r7, pc}
    48c0:	20006014 	.word	0x20006014
    48c4:	20006010 	.word	0x20006010
    48c8:	2000600c 	.word	0x2000600c
    48cc:	20005fcc 	.word	0x20005fcc
    48d0:	20005fbc 	.word	0x20005fbc
    48d4:	20005fc0 	.word	0x20005fc0
    48d8:	20005fe0 	.word	0x20005fe0
    48dc:	20005fc4 	.word	0x20005fc4
    48e0:	20005fc8 	.word	0x20005fc8
    48e4:	20005ff4 	.word	0x20005ff4
    48e8:	20005fb8 	.word	0x20005fb8
    48ec:	20006008 	.word	0x20006008
    48f0:	20000014 	.word	0x20000014
    48f4:	00004629 	.word	0x00004629
    48f8:	2000603c 	.word	0x2000603c
    48fc:	00004905 	.word	0x00004905
    4900:	00004685 	.word	0x00004685

00004904 <fsm_wait>:
    4904:	b580      	push	{r7, lr}
    4906:	b084      	sub	sp, #16
    4908:	af00      	add	r7, sp, #0
    490a:	6078      	str	r0, [r7, #4]
    490c:	230f      	movs	r3, #15
    490e:	18fb      	adds	r3, r7, r3
    4910:	687a      	ldr	r2, [r7, #4]
    4912:	701a      	strb	r2, [r3, #0]
    4914:	230f      	movs	r3, #15
    4916:	18fb      	adds	r3, r7, r3
    4918:	781b      	ldrb	r3, [r3, #0]
    491a:	2b01      	cmp	r3, #1
    491c:	d12b      	bne.n	4976 <fsm_wait+0x72>
    491e:	4b1e      	ldr	r3, [pc, #120]	; (4998 <fsm_wait+0x94>)
    4920:	4a1e      	ldr	r2, [pc, #120]	; (499c <fsm_wait+0x98>)
    4922:	601a      	str	r2, [r3, #0]
    4924:	4b1e      	ldr	r3, [pc, #120]	; (49a0 <fsm_wait+0x9c>)
    4926:	2201      	movs	r2, #1
    4928:	701a      	strb	r2, [r3, #0]
    492a:	4b1e      	ldr	r3, [pc, #120]	; (49a4 <fsm_wait+0xa0>)
    492c:	2200      	movs	r2, #0
    492e:	601a      	str	r2, [r3, #0]
    4930:	4b1d      	ldr	r3, [pc, #116]	; (49a8 <fsm_wait+0xa4>)
    4932:	2200      	movs	r2, #0
    4934:	601a      	str	r2, [r3, #0]
    4936:	4b1d      	ldr	r3, [pc, #116]	; (49ac <fsm_wait+0xa8>)
    4938:	681a      	ldr	r2, [r3, #0]
    493a:	4b1d      	ldr	r3, [pc, #116]	; (49b0 <fsm_wait+0xac>)
    493c:	601a      	str	r2, [r3, #0]
    493e:	4b1b      	ldr	r3, [pc, #108]	; (49ac <fsm_wait+0xa8>)
    4940:	685a      	ldr	r2, [r3, #4]
    4942:	4b1c      	ldr	r3, [pc, #112]	; (49b4 <fsm_wait+0xb0>)
    4944:	601a      	str	r2, [r3, #0]
    4946:	4b1c      	ldr	r3, [pc, #112]	; (49b8 <fsm_wait+0xb4>)
    4948:	681a      	ldr	r2, [r3, #0]
    494a:	4b1c      	ldr	r3, [pc, #112]	; (49bc <fsm_wait+0xb8>)
    494c:	601a      	str	r2, [r3, #0]
    494e:	4b1a      	ldr	r3, [pc, #104]	; (49b8 <fsm_wait+0xb4>)
    4950:	685a      	ldr	r2, [r3, #4]
    4952:	4b1b      	ldr	r3, [pc, #108]	; (49c0 <fsm_wait+0xbc>)
    4954:	601a      	str	r2, [r3, #0]
    4956:	4b1b      	ldr	r3, [pc, #108]	; (49c4 <fsm_wait+0xc0>)
    4958:	681a      	ldr	r2, [r3, #0]
    495a:	4b1b      	ldr	r3, [pc, #108]	; (49c8 <fsm_wait+0xc4>)
    495c:	601a      	str	r2, [r3, #0]
    495e:	4b1b      	ldr	r3, [pc, #108]	; (49cc <fsm_wait+0xc8>)
    4960:	685b      	ldr	r3, [r3, #4]
    4962:	0018      	movs	r0, r3
    4964:	f7fb fc00 	bl	168 <dut_set_speed>
    4968:	4b14      	ldr	r3, [pc, #80]	; (49bc <fsm_wait+0xb8>)
    496a:	681b      	ldr	r3, [r3, #0]
    496c:	0018      	movs	r0, r3
    496e:	f7fb fc2f 	bl	1d0 <dut_set_torque>
    4972:	f7fb fbed 	bl	150 <dut_reset_on>
    4976:	230f      	movs	r3, #15
    4978:	18fb      	adds	r3, r7, r3
    497a:	781b      	ldrb	r3, [r3, #0]
    497c:	2b03      	cmp	r3, #3
    497e:	d107      	bne.n	4990 <fsm_wait+0x8c>
    4980:	4b05      	ldr	r3, [pc, #20]	; (4998 <fsm_wait+0x94>)
    4982:	4a13      	ldr	r2, [pc, #76]	; (49d0 <fsm_wait+0xcc>)
    4984:	601a      	str	r2, [r3, #0]
    4986:	4b06      	ldr	r3, [pc, #24]	; (49a0 <fsm_wait+0x9c>)
    4988:	2204      	movs	r2, #4
    498a:	701a      	strb	r2, [r3, #0]
    498c:	f7fb fbe0 	bl	150 <dut_reset_on>
    4990:	46c0      	nop			; (mov r8, r8)
    4992:	46bd      	mov	sp, r7
    4994:	b004      	add	sp, #16
    4996:	bd80      	pop	{r7, pc}
    4998:	20000014 	.word	0x20000014
    499c:	00004389 	.word	0x00004389
    49a0:	2000603c 	.word	0x2000603c
    49a4:	2000600c 	.word	0x2000600c
    49a8:	20006010 	.word	0x20006010
    49ac:	20005fcc 	.word	0x20005fcc
    49b0:	20005fbc 	.word	0x20005fbc
    49b4:	20005fc0 	.word	0x20005fc0
    49b8:	20005fe0 	.word	0x20005fe0
    49bc:	20005fc4 	.word	0x20005fc4
    49c0:	20005fc8 	.word	0x20005fc8
    49c4:	20005ff4 	.word	0x20005ff4
    49c8:	20005fb8 	.word	0x20005fb8
    49cc:	20006014 	.word	0x20006014
    49d0:	00004629 	.word	0x00004629

000049d4 <__aeabi_uidiv>:
    49d4:	2200      	movs	r2, #0
    49d6:	0843      	lsrs	r3, r0, #1
    49d8:	428b      	cmp	r3, r1
    49da:	d374      	bcc.n	4ac6 <__aeabi_uidiv+0xf2>
    49dc:	0903      	lsrs	r3, r0, #4
    49de:	428b      	cmp	r3, r1
    49e0:	d35f      	bcc.n	4aa2 <__aeabi_uidiv+0xce>
    49e2:	0a03      	lsrs	r3, r0, #8
    49e4:	428b      	cmp	r3, r1
    49e6:	d344      	bcc.n	4a72 <__aeabi_uidiv+0x9e>
    49e8:	0b03      	lsrs	r3, r0, #12
    49ea:	428b      	cmp	r3, r1
    49ec:	d328      	bcc.n	4a40 <__aeabi_uidiv+0x6c>
    49ee:	0c03      	lsrs	r3, r0, #16
    49f0:	428b      	cmp	r3, r1
    49f2:	d30d      	bcc.n	4a10 <__aeabi_uidiv+0x3c>
    49f4:	22ff      	movs	r2, #255	; 0xff
    49f6:	0209      	lsls	r1, r1, #8
    49f8:	ba12      	rev	r2, r2
    49fa:	0c03      	lsrs	r3, r0, #16
    49fc:	428b      	cmp	r3, r1
    49fe:	d302      	bcc.n	4a06 <__aeabi_uidiv+0x32>
    4a00:	1212      	asrs	r2, r2, #8
    4a02:	0209      	lsls	r1, r1, #8
    4a04:	d065      	beq.n	4ad2 <__aeabi_uidiv+0xfe>
    4a06:	0b03      	lsrs	r3, r0, #12
    4a08:	428b      	cmp	r3, r1
    4a0a:	d319      	bcc.n	4a40 <__aeabi_uidiv+0x6c>
    4a0c:	e000      	b.n	4a10 <__aeabi_uidiv+0x3c>
    4a0e:	0a09      	lsrs	r1, r1, #8
    4a10:	0bc3      	lsrs	r3, r0, #15
    4a12:	428b      	cmp	r3, r1
    4a14:	d301      	bcc.n	4a1a <__aeabi_uidiv+0x46>
    4a16:	03cb      	lsls	r3, r1, #15
    4a18:	1ac0      	subs	r0, r0, r3
    4a1a:	4152      	adcs	r2, r2
    4a1c:	0b83      	lsrs	r3, r0, #14
    4a1e:	428b      	cmp	r3, r1
    4a20:	d301      	bcc.n	4a26 <__aeabi_uidiv+0x52>
    4a22:	038b      	lsls	r3, r1, #14
    4a24:	1ac0      	subs	r0, r0, r3
    4a26:	4152      	adcs	r2, r2
    4a28:	0b43      	lsrs	r3, r0, #13
    4a2a:	428b      	cmp	r3, r1
    4a2c:	d301      	bcc.n	4a32 <__aeabi_uidiv+0x5e>
    4a2e:	034b      	lsls	r3, r1, #13
    4a30:	1ac0      	subs	r0, r0, r3
    4a32:	4152      	adcs	r2, r2
    4a34:	0b03      	lsrs	r3, r0, #12
    4a36:	428b      	cmp	r3, r1
    4a38:	d301      	bcc.n	4a3e <__aeabi_uidiv+0x6a>
    4a3a:	030b      	lsls	r3, r1, #12
    4a3c:	1ac0      	subs	r0, r0, r3
    4a3e:	4152      	adcs	r2, r2
    4a40:	0ac3      	lsrs	r3, r0, #11
    4a42:	428b      	cmp	r3, r1
    4a44:	d301      	bcc.n	4a4a <__aeabi_uidiv+0x76>
    4a46:	02cb      	lsls	r3, r1, #11
    4a48:	1ac0      	subs	r0, r0, r3
    4a4a:	4152      	adcs	r2, r2
    4a4c:	0a83      	lsrs	r3, r0, #10
    4a4e:	428b      	cmp	r3, r1
    4a50:	d301      	bcc.n	4a56 <__aeabi_uidiv+0x82>
    4a52:	028b      	lsls	r3, r1, #10
    4a54:	1ac0      	subs	r0, r0, r3
    4a56:	4152      	adcs	r2, r2
    4a58:	0a43      	lsrs	r3, r0, #9
    4a5a:	428b      	cmp	r3, r1
    4a5c:	d301      	bcc.n	4a62 <__aeabi_uidiv+0x8e>
    4a5e:	024b      	lsls	r3, r1, #9
    4a60:	1ac0      	subs	r0, r0, r3
    4a62:	4152      	adcs	r2, r2
    4a64:	0a03      	lsrs	r3, r0, #8
    4a66:	428b      	cmp	r3, r1
    4a68:	d301      	bcc.n	4a6e <__aeabi_uidiv+0x9a>
    4a6a:	020b      	lsls	r3, r1, #8
    4a6c:	1ac0      	subs	r0, r0, r3
    4a6e:	4152      	adcs	r2, r2
    4a70:	d2cd      	bcs.n	4a0e <__aeabi_uidiv+0x3a>
    4a72:	09c3      	lsrs	r3, r0, #7
    4a74:	428b      	cmp	r3, r1
    4a76:	d301      	bcc.n	4a7c <__aeabi_uidiv+0xa8>
    4a78:	01cb      	lsls	r3, r1, #7
    4a7a:	1ac0      	subs	r0, r0, r3
    4a7c:	4152      	adcs	r2, r2
    4a7e:	0983      	lsrs	r3, r0, #6
    4a80:	428b      	cmp	r3, r1
    4a82:	d301      	bcc.n	4a88 <__aeabi_uidiv+0xb4>
    4a84:	018b      	lsls	r3, r1, #6
    4a86:	1ac0      	subs	r0, r0, r3
    4a88:	4152      	adcs	r2, r2
    4a8a:	0943      	lsrs	r3, r0, #5
    4a8c:	428b      	cmp	r3, r1
    4a8e:	d301      	bcc.n	4a94 <__aeabi_uidiv+0xc0>
    4a90:	014b      	lsls	r3, r1, #5
    4a92:	1ac0      	subs	r0, r0, r3
    4a94:	4152      	adcs	r2, r2
    4a96:	0903      	lsrs	r3, r0, #4
    4a98:	428b      	cmp	r3, r1
    4a9a:	d301      	bcc.n	4aa0 <__aeabi_uidiv+0xcc>
    4a9c:	010b      	lsls	r3, r1, #4
    4a9e:	1ac0      	subs	r0, r0, r3
    4aa0:	4152      	adcs	r2, r2
    4aa2:	08c3      	lsrs	r3, r0, #3
    4aa4:	428b      	cmp	r3, r1
    4aa6:	d301      	bcc.n	4aac <__aeabi_uidiv+0xd8>
    4aa8:	00cb      	lsls	r3, r1, #3
    4aaa:	1ac0      	subs	r0, r0, r3
    4aac:	4152      	adcs	r2, r2
    4aae:	0883      	lsrs	r3, r0, #2
    4ab0:	428b      	cmp	r3, r1
    4ab2:	d301      	bcc.n	4ab8 <__aeabi_uidiv+0xe4>
    4ab4:	008b      	lsls	r3, r1, #2
    4ab6:	1ac0      	subs	r0, r0, r3
    4ab8:	4152      	adcs	r2, r2
    4aba:	0843      	lsrs	r3, r0, #1
    4abc:	428b      	cmp	r3, r1
    4abe:	d301      	bcc.n	4ac4 <__aeabi_uidiv+0xf0>
    4ac0:	004b      	lsls	r3, r1, #1
    4ac2:	1ac0      	subs	r0, r0, r3
    4ac4:	4152      	adcs	r2, r2
    4ac6:	1a41      	subs	r1, r0, r1
    4ac8:	d200      	bcs.n	4acc <__aeabi_uidiv+0xf8>
    4aca:	4601      	mov	r1, r0
    4acc:	4152      	adcs	r2, r2
    4ace:	4610      	mov	r0, r2
    4ad0:	4770      	bx	lr
    4ad2:	e7ff      	b.n	4ad4 <__aeabi_uidiv+0x100>
    4ad4:	b501      	push	{r0, lr}
    4ad6:	2000      	movs	r0, #0
    4ad8:	f000 f8f0 	bl	4cbc <__aeabi_idiv0>
    4adc:	bd02      	pop	{r1, pc}
    4ade:	46c0      	nop			; (mov r8, r8)

00004ae0 <__aeabi_uidivmod>:
    4ae0:	2900      	cmp	r1, #0
    4ae2:	d0f7      	beq.n	4ad4 <__aeabi_uidiv+0x100>
    4ae4:	e776      	b.n	49d4 <__aeabi_uidiv>
    4ae6:	4770      	bx	lr

00004ae8 <__aeabi_idiv>:
    4ae8:	4603      	mov	r3, r0
    4aea:	430b      	orrs	r3, r1
    4aec:	d47f      	bmi.n	4bee <__aeabi_idiv+0x106>
    4aee:	2200      	movs	r2, #0
    4af0:	0843      	lsrs	r3, r0, #1
    4af2:	428b      	cmp	r3, r1
    4af4:	d374      	bcc.n	4be0 <__aeabi_idiv+0xf8>
    4af6:	0903      	lsrs	r3, r0, #4
    4af8:	428b      	cmp	r3, r1
    4afa:	d35f      	bcc.n	4bbc <__aeabi_idiv+0xd4>
    4afc:	0a03      	lsrs	r3, r0, #8
    4afe:	428b      	cmp	r3, r1
    4b00:	d344      	bcc.n	4b8c <__aeabi_idiv+0xa4>
    4b02:	0b03      	lsrs	r3, r0, #12
    4b04:	428b      	cmp	r3, r1
    4b06:	d328      	bcc.n	4b5a <__aeabi_idiv+0x72>
    4b08:	0c03      	lsrs	r3, r0, #16
    4b0a:	428b      	cmp	r3, r1
    4b0c:	d30d      	bcc.n	4b2a <__aeabi_idiv+0x42>
    4b0e:	22ff      	movs	r2, #255	; 0xff
    4b10:	0209      	lsls	r1, r1, #8
    4b12:	ba12      	rev	r2, r2
    4b14:	0c03      	lsrs	r3, r0, #16
    4b16:	428b      	cmp	r3, r1
    4b18:	d302      	bcc.n	4b20 <__aeabi_idiv+0x38>
    4b1a:	1212      	asrs	r2, r2, #8
    4b1c:	0209      	lsls	r1, r1, #8
    4b1e:	d065      	beq.n	4bec <__aeabi_idiv+0x104>
    4b20:	0b03      	lsrs	r3, r0, #12
    4b22:	428b      	cmp	r3, r1
    4b24:	d319      	bcc.n	4b5a <__aeabi_idiv+0x72>
    4b26:	e000      	b.n	4b2a <__aeabi_idiv+0x42>
    4b28:	0a09      	lsrs	r1, r1, #8
    4b2a:	0bc3      	lsrs	r3, r0, #15
    4b2c:	428b      	cmp	r3, r1
    4b2e:	d301      	bcc.n	4b34 <__aeabi_idiv+0x4c>
    4b30:	03cb      	lsls	r3, r1, #15
    4b32:	1ac0      	subs	r0, r0, r3
    4b34:	4152      	adcs	r2, r2
    4b36:	0b83      	lsrs	r3, r0, #14
    4b38:	428b      	cmp	r3, r1
    4b3a:	d301      	bcc.n	4b40 <__aeabi_idiv+0x58>
    4b3c:	038b      	lsls	r3, r1, #14
    4b3e:	1ac0      	subs	r0, r0, r3
    4b40:	4152      	adcs	r2, r2
    4b42:	0b43      	lsrs	r3, r0, #13
    4b44:	428b      	cmp	r3, r1
    4b46:	d301      	bcc.n	4b4c <__aeabi_idiv+0x64>
    4b48:	034b      	lsls	r3, r1, #13
    4b4a:	1ac0      	subs	r0, r0, r3
    4b4c:	4152      	adcs	r2, r2
    4b4e:	0b03      	lsrs	r3, r0, #12
    4b50:	428b      	cmp	r3, r1
    4b52:	d301      	bcc.n	4b58 <__aeabi_idiv+0x70>
    4b54:	030b      	lsls	r3, r1, #12
    4b56:	1ac0      	subs	r0, r0, r3
    4b58:	4152      	adcs	r2, r2
    4b5a:	0ac3      	lsrs	r3, r0, #11
    4b5c:	428b      	cmp	r3, r1
    4b5e:	d301      	bcc.n	4b64 <__aeabi_idiv+0x7c>
    4b60:	02cb      	lsls	r3, r1, #11
    4b62:	1ac0      	subs	r0, r0, r3
    4b64:	4152      	adcs	r2, r2
    4b66:	0a83      	lsrs	r3, r0, #10
    4b68:	428b      	cmp	r3, r1
    4b6a:	d301      	bcc.n	4b70 <__aeabi_idiv+0x88>
    4b6c:	028b      	lsls	r3, r1, #10
    4b6e:	1ac0      	subs	r0, r0, r3
    4b70:	4152      	adcs	r2, r2
    4b72:	0a43      	lsrs	r3, r0, #9
    4b74:	428b      	cmp	r3, r1
    4b76:	d301      	bcc.n	4b7c <__aeabi_idiv+0x94>
    4b78:	024b      	lsls	r3, r1, #9
    4b7a:	1ac0      	subs	r0, r0, r3
    4b7c:	4152      	adcs	r2, r2
    4b7e:	0a03      	lsrs	r3, r0, #8
    4b80:	428b      	cmp	r3, r1
    4b82:	d301      	bcc.n	4b88 <__aeabi_idiv+0xa0>
    4b84:	020b      	lsls	r3, r1, #8
    4b86:	1ac0      	subs	r0, r0, r3
    4b88:	4152      	adcs	r2, r2
    4b8a:	d2cd      	bcs.n	4b28 <__aeabi_idiv+0x40>
    4b8c:	09c3      	lsrs	r3, r0, #7
    4b8e:	428b      	cmp	r3, r1
    4b90:	d301      	bcc.n	4b96 <__aeabi_idiv+0xae>
    4b92:	01cb      	lsls	r3, r1, #7
    4b94:	1ac0      	subs	r0, r0, r3
    4b96:	4152      	adcs	r2, r2
    4b98:	0983      	lsrs	r3, r0, #6
    4b9a:	428b      	cmp	r3, r1
    4b9c:	d301      	bcc.n	4ba2 <__aeabi_idiv+0xba>
    4b9e:	018b      	lsls	r3, r1, #6
    4ba0:	1ac0      	subs	r0, r0, r3
    4ba2:	4152      	adcs	r2, r2
    4ba4:	0943      	lsrs	r3, r0, #5
    4ba6:	428b      	cmp	r3, r1
    4ba8:	d301      	bcc.n	4bae <__aeabi_idiv+0xc6>
    4baa:	014b      	lsls	r3, r1, #5
    4bac:	1ac0      	subs	r0, r0, r3
    4bae:	4152      	adcs	r2, r2
    4bb0:	0903      	lsrs	r3, r0, #4
    4bb2:	428b      	cmp	r3, r1
    4bb4:	d301      	bcc.n	4bba <__aeabi_idiv+0xd2>
    4bb6:	010b      	lsls	r3, r1, #4
    4bb8:	1ac0      	subs	r0, r0, r3
    4bba:	4152      	adcs	r2, r2
    4bbc:	08c3      	lsrs	r3, r0, #3
    4bbe:	428b      	cmp	r3, r1
    4bc0:	d301      	bcc.n	4bc6 <__aeabi_idiv+0xde>
    4bc2:	00cb      	lsls	r3, r1, #3
    4bc4:	1ac0      	subs	r0, r0, r3
    4bc6:	4152      	adcs	r2, r2
    4bc8:	0883      	lsrs	r3, r0, #2
    4bca:	428b      	cmp	r3, r1
    4bcc:	d301      	bcc.n	4bd2 <__aeabi_idiv+0xea>
    4bce:	008b      	lsls	r3, r1, #2
    4bd0:	1ac0      	subs	r0, r0, r3
    4bd2:	4152      	adcs	r2, r2
    4bd4:	0843      	lsrs	r3, r0, #1
    4bd6:	428b      	cmp	r3, r1
    4bd8:	d301      	bcc.n	4bde <__aeabi_idiv+0xf6>
    4bda:	004b      	lsls	r3, r1, #1
    4bdc:	1ac0      	subs	r0, r0, r3
    4bde:	4152      	adcs	r2, r2
    4be0:	1a41      	subs	r1, r0, r1
    4be2:	d200      	bcs.n	4be6 <__aeabi_idiv+0xfe>
    4be4:	4601      	mov	r1, r0
    4be6:	4152      	adcs	r2, r2
    4be8:	4610      	mov	r0, r2
    4bea:	4770      	bx	lr
    4bec:	e05d      	b.n	4caa <__aeabi_idiv+0x1c2>
    4bee:	0fca      	lsrs	r2, r1, #31
    4bf0:	d000      	beq.n	4bf4 <__aeabi_idiv+0x10c>
    4bf2:	4249      	negs	r1, r1
    4bf4:	1003      	asrs	r3, r0, #32
    4bf6:	d300      	bcc.n	4bfa <__aeabi_idiv+0x112>
    4bf8:	4240      	negs	r0, r0
    4bfa:	4053      	eors	r3, r2
    4bfc:	2200      	movs	r2, #0
    4bfe:	469c      	mov	ip, r3
    4c00:	0903      	lsrs	r3, r0, #4
    4c02:	428b      	cmp	r3, r1
    4c04:	d32d      	bcc.n	4c62 <__aeabi_idiv+0x17a>
    4c06:	0a03      	lsrs	r3, r0, #8
    4c08:	428b      	cmp	r3, r1
    4c0a:	d312      	bcc.n	4c32 <__aeabi_idiv+0x14a>
    4c0c:	22fc      	movs	r2, #252	; 0xfc
    4c0e:	0189      	lsls	r1, r1, #6
    4c10:	ba12      	rev	r2, r2
    4c12:	0a03      	lsrs	r3, r0, #8
    4c14:	428b      	cmp	r3, r1
    4c16:	d30c      	bcc.n	4c32 <__aeabi_idiv+0x14a>
    4c18:	0189      	lsls	r1, r1, #6
    4c1a:	1192      	asrs	r2, r2, #6
    4c1c:	428b      	cmp	r3, r1
    4c1e:	d308      	bcc.n	4c32 <__aeabi_idiv+0x14a>
    4c20:	0189      	lsls	r1, r1, #6
    4c22:	1192      	asrs	r2, r2, #6
    4c24:	428b      	cmp	r3, r1
    4c26:	d304      	bcc.n	4c32 <__aeabi_idiv+0x14a>
    4c28:	0189      	lsls	r1, r1, #6
    4c2a:	d03a      	beq.n	4ca2 <__aeabi_idiv+0x1ba>
    4c2c:	1192      	asrs	r2, r2, #6
    4c2e:	e000      	b.n	4c32 <__aeabi_idiv+0x14a>
    4c30:	0989      	lsrs	r1, r1, #6
    4c32:	09c3      	lsrs	r3, r0, #7
    4c34:	428b      	cmp	r3, r1
    4c36:	d301      	bcc.n	4c3c <__aeabi_idiv+0x154>
    4c38:	01cb      	lsls	r3, r1, #7
    4c3a:	1ac0      	subs	r0, r0, r3
    4c3c:	4152      	adcs	r2, r2
    4c3e:	0983      	lsrs	r3, r0, #6
    4c40:	428b      	cmp	r3, r1
    4c42:	d301      	bcc.n	4c48 <__aeabi_idiv+0x160>
    4c44:	018b      	lsls	r3, r1, #6
    4c46:	1ac0      	subs	r0, r0, r3
    4c48:	4152      	adcs	r2, r2
    4c4a:	0943      	lsrs	r3, r0, #5
    4c4c:	428b      	cmp	r3, r1
    4c4e:	d301      	bcc.n	4c54 <__aeabi_idiv+0x16c>
    4c50:	014b      	lsls	r3, r1, #5
    4c52:	1ac0      	subs	r0, r0, r3
    4c54:	4152      	adcs	r2, r2
    4c56:	0903      	lsrs	r3, r0, #4
    4c58:	428b      	cmp	r3, r1
    4c5a:	d301      	bcc.n	4c60 <__aeabi_idiv+0x178>
    4c5c:	010b      	lsls	r3, r1, #4
    4c5e:	1ac0      	subs	r0, r0, r3
    4c60:	4152      	adcs	r2, r2
    4c62:	08c3      	lsrs	r3, r0, #3
    4c64:	428b      	cmp	r3, r1
    4c66:	d301      	bcc.n	4c6c <__aeabi_idiv+0x184>
    4c68:	00cb      	lsls	r3, r1, #3
    4c6a:	1ac0      	subs	r0, r0, r3
    4c6c:	4152      	adcs	r2, r2
    4c6e:	0883      	lsrs	r3, r0, #2
    4c70:	428b      	cmp	r3, r1
    4c72:	d301      	bcc.n	4c78 <__aeabi_idiv+0x190>
    4c74:	008b      	lsls	r3, r1, #2
    4c76:	1ac0      	subs	r0, r0, r3
    4c78:	4152      	adcs	r2, r2
    4c7a:	d2d9      	bcs.n	4c30 <__aeabi_idiv+0x148>
    4c7c:	0843      	lsrs	r3, r0, #1
    4c7e:	428b      	cmp	r3, r1
    4c80:	d301      	bcc.n	4c86 <__aeabi_idiv+0x19e>
    4c82:	004b      	lsls	r3, r1, #1
    4c84:	1ac0      	subs	r0, r0, r3
    4c86:	4152      	adcs	r2, r2
    4c88:	1a41      	subs	r1, r0, r1
    4c8a:	d200      	bcs.n	4c8e <__aeabi_idiv+0x1a6>
    4c8c:	4601      	mov	r1, r0
    4c8e:	4663      	mov	r3, ip
    4c90:	4152      	adcs	r2, r2
    4c92:	105b      	asrs	r3, r3, #1
    4c94:	4610      	mov	r0, r2
    4c96:	d301      	bcc.n	4c9c <__aeabi_idiv+0x1b4>
    4c98:	4240      	negs	r0, r0
    4c9a:	2b00      	cmp	r3, #0
    4c9c:	d500      	bpl.n	4ca0 <__aeabi_idiv+0x1b8>
    4c9e:	4249      	negs	r1, r1
    4ca0:	4770      	bx	lr
    4ca2:	4663      	mov	r3, ip
    4ca4:	105b      	asrs	r3, r3, #1
    4ca6:	d300      	bcc.n	4caa <__aeabi_idiv+0x1c2>
    4ca8:	4240      	negs	r0, r0
    4caa:	b501      	push	{r0, lr}
    4cac:	2000      	movs	r0, #0
    4cae:	f000 f805 	bl	4cbc <__aeabi_idiv0>
    4cb2:	bd02      	pop	{r1, pc}

00004cb4 <__aeabi_idivmod>:
    4cb4:	2900      	cmp	r1, #0
    4cb6:	d0f8      	beq.n	4caa <__aeabi_idiv+0x1c2>
    4cb8:	e716      	b.n	4ae8 <__aeabi_idiv>
    4cba:	4770      	bx	lr

00004cbc <__aeabi_idiv0>:
    4cbc:	4770      	bx	lr
    4cbe:	46c0      	nop			; (mov r8, r8)

00004cc0 <rt_set_PSP>:
    4cc0:	f380 8809 	msr	PSP, r0
    4cc4:	4770      	bx	lr

00004cc6 <rt_get_PSP>:
    4cc6:	f3ef 8009 	mrs	r0, PSP
    4cca:	4770      	bx	lr

00004ccc <os_set_env>:
    4ccc:	4668      	mov	r0, sp
    4cce:	f380 8809 	msr	PSP, r0
    4cd2:	484a      	ldr	r0, [pc, #296]	; (4dfc <OS_Tick_Handler+0xa>)
    4cd4:	7800      	ldrb	r0, [r0, #0]
    4cd6:	07c0      	lsls	r0, r0, #31
    4cd8:	d103      	bne.n	4ce2 <PrivilegedE>
    4cda:	2003      	movs	r0, #3
    4cdc:	f380 8814 	msr	CONTROL, r0
    4ce0:	4770      	bx	lr

00004ce2 <PrivilegedE>:
    4ce2:	2002      	movs	r0, #2
    4ce4:	f380 8814 	msr	CONTROL, r0
    4ce8:	4770      	bx	lr

00004cea <_alloc_box>:
    4cea:	4b45      	ldr	r3, [pc, #276]	; (4e00 <OS_Tick_Handler+0xe>)
    4cec:	469c      	mov	ip, r3
    4cee:	f3ef 8305 	mrs	r3, IPSR
    4cf2:	061b      	lsls	r3, r3, #24
    4cf4:	d105      	bne.n	4d02 <PrivilegedA>
    4cf6:	f3ef 8314 	mrs	r3, CONTROL
    4cfa:	07db      	lsls	r3, r3, #31
    4cfc:	d001      	beq.n	4d02 <PrivilegedA>
    4cfe:	df00      	svc	0
    4d00:	4770      	bx	lr

00004d02 <PrivilegedA>:
    4d02:	4760      	bx	ip

00004d04 <_free_box>:
    4d04:	4b3f      	ldr	r3, [pc, #252]	; (4e04 <OS_Tick_Handler+0x12>)
    4d06:	469c      	mov	ip, r3
    4d08:	f3ef 8305 	mrs	r3, IPSR
    4d0c:	061b      	lsls	r3, r3, #24
    4d0e:	d105      	bne.n	4d1c <PrivilegedF>
    4d10:	f3ef 8314 	mrs	r3, CONTROL
    4d14:	07db      	lsls	r3, r3, #31
    4d16:	d001      	beq.n	4d1c <PrivilegedF>
    4d18:	df00      	svc	0
    4d1a:	4770      	bx	lr

00004d1c <PrivilegedF>:
    4d1c:	4760      	bx	ip

00004d1e <SVC_Handler>:
    4d1e:	f3ef 8009 	mrs	r0, PSP
    4d22:	6981      	ldr	r1, [r0, #24]
    4d24:	3902      	subs	r1, #2
    4d26:	7809      	ldrb	r1, [r1, #0]
    4d28:	2900      	cmp	r1, #0
    4d2a:	d12b      	bne.n	4d84 <SVC_User>
    4d2c:	46a6      	mov	lr, r4
    4d2e:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4d30:	46a4      	mov	ip, r4
    4d32:	4674      	mov	r4, lr
    4d34:	47e0      	blx	ip
    4d36:	f3ef 8309 	mrs	r3, PSP
    4d3a:	c307      	stmia	r3!, {r0, r1, r2}
    4d3c:	4b32      	ldr	r3, [pc, #200]	; (4e08 <OS_Tick_Handler+0x16>)
    4d3e:	cb06      	ldmia	r3!, {r1, r2}
    4d40:	4291      	cmp	r1, r2
    4d42:	d01c      	beq.n	4d7e <SVC_Exit>
    4d44:	3b08      	subs	r3, #8
    4d46:	2900      	cmp	r1, #0
    4d48:	d00d      	beq.n	4d66 <SVC_Next>
    4d4a:	f3ef 8009 	mrs	r0, PSP
    4d4e:	3820      	subs	r0, #32
    4d50:	6288      	str	r0, [r1, #40]	; 0x28
    4d52:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4d54:	4644      	mov	r4, r8
    4d56:	464d      	mov	r5, r9
    4d58:	4656      	mov	r6, sl
    4d5a:	465f      	mov	r7, fp
    4d5c:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4d5e:	b40c      	push	{r2, r3}
    4d60:	f003 fbec 	bl	853c <rt_stk_check>
    4d64:	bc0c      	pop	{r2, r3}

00004d66 <SVC_Next>:
    4d66:	601a      	str	r2, [r3, #0]
    4d68:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4d6a:	3010      	adds	r0, #16
    4d6c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4d6e:	46a0      	mov	r8, r4
    4d70:	46a9      	mov	r9, r5
    4d72:	46b2      	mov	sl, r6
    4d74:	46bb      	mov	fp, r7
    4d76:	f380 8809 	msr	PSP, r0
    4d7a:	3820      	subs	r0, #32
    4d7c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004d7e <SVC_Exit>:
    4d7e:	2002      	movs	r0, #2
    4d80:	43c0      	mvns	r0, r0
    4d82:	4700      	bx	r0

00004d84 <SVC_User>:
    4d84:	b510      	push	{r4, lr}
    4d86:	4a21      	ldr	r2, [pc, #132]	; (4e0c <OS_Tick_Handler+0x1a>)
    4d88:	6812      	ldr	r2, [r2, #0]
    4d8a:	4291      	cmp	r1, r2
    4d8c:	d809      	bhi.n	4da2 <SVC_Done>
    4d8e:	4c20      	ldr	r4, [pc, #128]	; (4e10 <OS_Tick_Handler+0x1e>)
    4d90:	0089      	lsls	r1, r1, #2
    4d92:	5864      	ldr	r4, [r4, r1]
    4d94:	46a6      	mov	lr, r4
    4d96:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4d98:	46a4      	mov	ip, r4
    4d9a:	47f0      	blx	lr
    4d9c:	f3ef 8409 	mrs	r4, PSP
    4da0:	c40f      	stmia	r4!, {r0, r1, r2, r3}

00004da2 <SVC_Done>:
    4da2:	bd10      	pop	{r4, pc}

00004da4 <PendSV_Handler>:
    4da4:	f003 fb3a 	bl	841c <rt_pop_req>

00004da8 <Sys_Switch>:
    4da8:	4b17      	ldr	r3, [pc, #92]	; (4e08 <OS_Tick_Handler+0x16>)
    4daa:	cb06      	ldmia	r3!, {r1, r2}
    4dac:	4291      	cmp	r1, r2
    4dae:	d01a      	beq.n	4de6 <Sys_Exit>
    4db0:	3b08      	subs	r3, #8
    4db2:	f3ef 8009 	mrs	r0, PSP
    4db6:	3820      	subs	r0, #32
    4db8:	6288      	str	r0, [r1, #40]	; 0x28
    4dba:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4dbc:	4644      	mov	r4, r8
    4dbe:	464d      	mov	r5, r9
    4dc0:	4656      	mov	r6, sl
    4dc2:	465f      	mov	r7, fp
    4dc4:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4dc6:	b40c      	push	{r2, r3}
    4dc8:	f003 fbb8 	bl	853c <rt_stk_check>
    4dcc:	bc0c      	pop	{r2, r3}
    4dce:	601a      	str	r2, [r3, #0]
    4dd0:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4dd2:	3010      	adds	r0, #16
    4dd4:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4dd6:	46a0      	mov	r8, r4
    4dd8:	46a9      	mov	r9, r5
    4dda:	46b2      	mov	sl, r6
    4ddc:	46bb      	mov	fp, r7
    4dde:	f380 8809 	msr	PSP, r0
    4de2:	3820      	subs	r0, #32
    4de4:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004de6 <Sys_Exit>:
    4de6:	2002      	movs	r0, #2
    4de8:	43c0      	mvns	r0, r0
    4dea:	4700      	bx	r0

00004dec <SysTick_Handler>:
    4dec:	f003 fb88 	bl	8500 <rt_systick>
    4df0:	e7da      	b.n	4da8 <Sys_Switch>

00004df2 <OS_Tick_Handler>:
    4df2:	f003 fb83 	bl	84fc <os_tick_irqack>
    4df6:	f003 fb83 	bl	8500 <rt_systick>
    4dfa:	e7d5      	b.n	4da8 <Sys_Switch>
    4dfc:	00008c5c 	.word	0x00008c5c
    4e00:	00007639 	.word	0x00007639
    4e04:	00007679 	.word	0x00007679
    4e08:	200060b8 	.word	0x200060b8
    4e0c:	00000000 	.word	0x00000000
    4e10:	fffffffc 	.word	0xfffffffc

00004e14 <__aeabi_uldivmod>:
    4e14:	2b00      	cmp	r3, #0
    4e16:	d111      	bne.n	4e3c <__aeabi_uldivmod+0x28>
    4e18:	2a00      	cmp	r2, #0
    4e1a:	d10f      	bne.n	4e3c <__aeabi_uldivmod+0x28>
    4e1c:	2900      	cmp	r1, #0
    4e1e:	d100      	bne.n	4e22 <__aeabi_uldivmod+0xe>
    4e20:	2800      	cmp	r0, #0
    4e22:	d002      	beq.n	4e2a <__aeabi_uldivmod+0x16>
    4e24:	2100      	movs	r1, #0
    4e26:	43c9      	mvns	r1, r1
    4e28:	1c08      	adds	r0, r1, #0
    4e2a:	b407      	push	{r0, r1, r2}
    4e2c:	4802      	ldr	r0, [pc, #8]	; (4e38 <__aeabi_uldivmod+0x24>)
    4e2e:	a102      	add	r1, pc, #8	; (adr r1, 4e38 <__aeabi_uldivmod+0x24>)
    4e30:	1840      	adds	r0, r0, r1
    4e32:	9002      	str	r0, [sp, #8]
    4e34:	bd03      	pop	{r0, r1, pc}
    4e36:	46c0      	nop			; (mov r8, r8)
    4e38:	fffffe85 	.word	0xfffffe85
    4e3c:	b403      	push	{r0, r1}
    4e3e:	4668      	mov	r0, sp
    4e40:	b501      	push	{r0, lr}
    4e42:	9802      	ldr	r0, [sp, #8]
    4e44:	f000 f832 	bl	4eac <__udivmoddi4>
    4e48:	9b01      	ldr	r3, [sp, #4]
    4e4a:	469e      	mov	lr, r3
    4e4c:	b002      	add	sp, #8
    4e4e:	bc0c      	pop	{r2, r3}
    4e50:	4770      	bx	lr
    4e52:	46c0      	nop			; (mov r8, r8)

00004e54 <__aeabi_lmul>:
    4e54:	b5f0      	push	{r4, r5, r6, r7, lr}
    4e56:	464f      	mov	r7, r9
    4e58:	4646      	mov	r6, r8
    4e5a:	b4c0      	push	{r6, r7}
    4e5c:	0416      	lsls	r6, r2, #16
    4e5e:	0c36      	lsrs	r6, r6, #16
    4e60:	4699      	mov	r9, r3
    4e62:	0033      	movs	r3, r6
    4e64:	0405      	lsls	r5, r0, #16
    4e66:	0c2c      	lsrs	r4, r5, #16
    4e68:	0c07      	lsrs	r7, r0, #16
    4e6a:	0c15      	lsrs	r5, r2, #16
    4e6c:	4363      	muls	r3, r4
    4e6e:	437e      	muls	r6, r7
    4e70:	436f      	muls	r7, r5
    4e72:	4365      	muls	r5, r4
    4e74:	0c1c      	lsrs	r4, r3, #16
    4e76:	19ad      	adds	r5, r5, r6
    4e78:	1964      	adds	r4, r4, r5
    4e7a:	469c      	mov	ip, r3
    4e7c:	42a6      	cmp	r6, r4
    4e7e:	d903      	bls.n	4e88 <__aeabi_lmul+0x34>
    4e80:	2380      	movs	r3, #128	; 0x80
    4e82:	025b      	lsls	r3, r3, #9
    4e84:	4698      	mov	r8, r3
    4e86:	4447      	add	r7, r8
    4e88:	4663      	mov	r3, ip
    4e8a:	0c25      	lsrs	r5, r4, #16
    4e8c:	19ef      	adds	r7, r5, r7
    4e8e:	041d      	lsls	r5, r3, #16
    4e90:	464b      	mov	r3, r9
    4e92:	434a      	muls	r2, r1
    4e94:	4343      	muls	r3, r0
    4e96:	0c2d      	lsrs	r5, r5, #16
    4e98:	0424      	lsls	r4, r4, #16
    4e9a:	1964      	adds	r4, r4, r5
    4e9c:	1899      	adds	r1, r3, r2
    4e9e:	19c9      	adds	r1, r1, r7
    4ea0:	0020      	movs	r0, r4
    4ea2:	bc0c      	pop	{r2, r3}
    4ea4:	4690      	mov	r8, r2
    4ea6:	4699      	mov	r9, r3
    4ea8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4eaa:	46c0      	nop			; (mov r8, r8)

00004eac <__udivmoddi4>:
    4eac:	b5f0      	push	{r4, r5, r6, r7, lr}
    4eae:	464d      	mov	r5, r9
    4eb0:	4656      	mov	r6, sl
    4eb2:	4644      	mov	r4, r8
    4eb4:	465f      	mov	r7, fp
    4eb6:	b4f0      	push	{r4, r5, r6, r7}
    4eb8:	4692      	mov	sl, r2
    4eba:	b083      	sub	sp, #12
    4ebc:	0004      	movs	r4, r0
    4ebe:	000d      	movs	r5, r1
    4ec0:	4699      	mov	r9, r3
    4ec2:	428b      	cmp	r3, r1
    4ec4:	d82f      	bhi.n	4f26 <__udivmoddi4+0x7a>
    4ec6:	d02c      	beq.n	4f22 <__udivmoddi4+0x76>
    4ec8:	4649      	mov	r1, r9
    4eca:	4650      	mov	r0, sl
    4ecc:	f000 f8ae 	bl	502c <__clzdi2>
    4ed0:	0029      	movs	r1, r5
    4ed2:	0006      	movs	r6, r0
    4ed4:	0020      	movs	r0, r4
    4ed6:	f000 f8a9 	bl	502c <__clzdi2>
    4eda:	1a33      	subs	r3, r6, r0
    4edc:	4698      	mov	r8, r3
    4ede:	3b20      	subs	r3, #32
    4ee0:	469b      	mov	fp, r3
    4ee2:	d500      	bpl.n	4ee6 <__udivmoddi4+0x3a>
    4ee4:	e074      	b.n	4fd0 <__udivmoddi4+0x124>
    4ee6:	4653      	mov	r3, sl
    4ee8:	465a      	mov	r2, fp
    4eea:	4093      	lsls	r3, r2
    4eec:	001f      	movs	r7, r3
    4eee:	4653      	mov	r3, sl
    4ef0:	4642      	mov	r2, r8
    4ef2:	4093      	lsls	r3, r2
    4ef4:	001e      	movs	r6, r3
    4ef6:	42af      	cmp	r7, r5
    4ef8:	d829      	bhi.n	4f4e <__udivmoddi4+0xa2>
    4efa:	d026      	beq.n	4f4a <__udivmoddi4+0x9e>
    4efc:	465b      	mov	r3, fp
    4efe:	1ba4      	subs	r4, r4, r6
    4f00:	41bd      	sbcs	r5, r7
    4f02:	2b00      	cmp	r3, #0
    4f04:	da00      	bge.n	4f08 <__udivmoddi4+0x5c>
    4f06:	e079      	b.n	4ffc <__udivmoddi4+0x150>
    4f08:	2200      	movs	r2, #0
    4f0a:	2300      	movs	r3, #0
    4f0c:	9200      	str	r2, [sp, #0]
    4f0e:	9301      	str	r3, [sp, #4]
    4f10:	2301      	movs	r3, #1
    4f12:	465a      	mov	r2, fp
    4f14:	4093      	lsls	r3, r2
    4f16:	9301      	str	r3, [sp, #4]
    4f18:	2301      	movs	r3, #1
    4f1a:	4642      	mov	r2, r8
    4f1c:	4093      	lsls	r3, r2
    4f1e:	9300      	str	r3, [sp, #0]
    4f20:	e019      	b.n	4f56 <__udivmoddi4+0xaa>
    4f22:	4282      	cmp	r2, r0
    4f24:	d9d0      	bls.n	4ec8 <__udivmoddi4+0x1c>
    4f26:	2200      	movs	r2, #0
    4f28:	2300      	movs	r3, #0
    4f2a:	9200      	str	r2, [sp, #0]
    4f2c:	9301      	str	r3, [sp, #4]
    4f2e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4f30:	2b00      	cmp	r3, #0
    4f32:	d001      	beq.n	4f38 <__udivmoddi4+0x8c>
    4f34:	601c      	str	r4, [r3, #0]
    4f36:	605d      	str	r5, [r3, #4]
    4f38:	9800      	ldr	r0, [sp, #0]
    4f3a:	9901      	ldr	r1, [sp, #4]
    4f3c:	b003      	add	sp, #12
    4f3e:	bc3c      	pop	{r2, r3, r4, r5}
    4f40:	4690      	mov	r8, r2
    4f42:	4699      	mov	r9, r3
    4f44:	46a2      	mov	sl, r4
    4f46:	46ab      	mov	fp, r5
    4f48:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4f4a:	42a3      	cmp	r3, r4
    4f4c:	d9d6      	bls.n	4efc <__udivmoddi4+0x50>
    4f4e:	2200      	movs	r2, #0
    4f50:	2300      	movs	r3, #0
    4f52:	9200      	str	r2, [sp, #0]
    4f54:	9301      	str	r3, [sp, #4]
    4f56:	4643      	mov	r3, r8
    4f58:	2b00      	cmp	r3, #0
    4f5a:	d0e8      	beq.n	4f2e <__udivmoddi4+0x82>
    4f5c:	07fb      	lsls	r3, r7, #31
    4f5e:	0872      	lsrs	r2, r6, #1
    4f60:	431a      	orrs	r2, r3
    4f62:	4646      	mov	r6, r8
    4f64:	087b      	lsrs	r3, r7, #1
    4f66:	e00e      	b.n	4f86 <__udivmoddi4+0xda>
    4f68:	42ab      	cmp	r3, r5
    4f6a:	d101      	bne.n	4f70 <__udivmoddi4+0xc4>
    4f6c:	42a2      	cmp	r2, r4
    4f6e:	d80c      	bhi.n	4f8a <__udivmoddi4+0xde>
    4f70:	1aa4      	subs	r4, r4, r2
    4f72:	419d      	sbcs	r5, r3
    4f74:	2001      	movs	r0, #1
    4f76:	1924      	adds	r4, r4, r4
    4f78:	416d      	adcs	r5, r5
    4f7a:	2100      	movs	r1, #0
    4f7c:	3e01      	subs	r6, #1
    4f7e:	1824      	adds	r4, r4, r0
    4f80:	414d      	adcs	r5, r1
    4f82:	2e00      	cmp	r6, #0
    4f84:	d006      	beq.n	4f94 <__udivmoddi4+0xe8>
    4f86:	42ab      	cmp	r3, r5
    4f88:	d9ee      	bls.n	4f68 <__udivmoddi4+0xbc>
    4f8a:	3e01      	subs	r6, #1
    4f8c:	1924      	adds	r4, r4, r4
    4f8e:	416d      	adcs	r5, r5
    4f90:	2e00      	cmp	r6, #0
    4f92:	d1f8      	bne.n	4f86 <__udivmoddi4+0xda>
    4f94:	465b      	mov	r3, fp
    4f96:	9800      	ldr	r0, [sp, #0]
    4f98:	9901      	ldr	r1, [sp, #4]
    4f9a:	1900      	adds	r0, r0, r4
    4f9c:	4169      	adcs	r1, r5
    4f9e:	2b00      	cmp	r3, #0
    4fa0:	db22      	blt.n	4fe8 <__udivmoddi4+0x13c>
    4fa2:	002b      	movs	r3, r5
    4fa4:	465a      	mov	r2, fp
    4fa6:	40d3      	lsrs	r3, r2
    4fa8:	002a      	movs	r2, r5
    4faa:	4644      	mov	r4, r8
    4fac:	40e2      	lsrs	r2, r4
    4fae:	001c      	movs	r4, r3
    4fb0:	465b      	mov	r3, fp
    4fb2:	0015      	movs	r5, r2
    4fb4:	2b00      	cmp	r3, #0
    4fb6:	db2c      	blt.n	5012 <__udivmoddi4+0x166>
    4fb8:	0026      	movs	r6, r4
    4fba:	409e      	lsls	r6, r3
    4fbc:	0033      	movs	r3, r6
    4fbe:	0026      	movs	r6, r4
    4fc0:	4647      	mov	r7, r8
    4fc2:	40be      	lsls	r6, r7
    4fc4:	0032      	movs	r2, r6
    4fc6:	1a80      	subs	r0, r0, r2
    4fc8:	4199      	sbcs	r1, r3
    4fca:	9000      	str	r0, [sp, #0]
    4fcc:	9101      	str	r1, [sp, #4]
    4fce:	e7ae      	b.n	4f2e <__udivmoddi4+0x82>
    4fd0:	4642      	mov	r2, r8
    4fd2:	2320      	movs	r3, #32
    4fd4:	1a9b      	subs	r3, r3, r2
    4fd6:	4652      	mov	r2, sl
    4fd8:	40da      	lsrs	r2, r3
    4fda:	4641      	mov	r1, r8
    4fdc:	0013      	movs	r3, r2
    4fde:	464a      	mov	r2, r9
    4fe0:	408a      	lsls	r2, r1
    4fe2:	0017      	movs	r7, r2
    4fe4:	431f      	orrs	r7, r3
    4fe6:	e782      	b.n	4eee <__udivmoddi4+0x42>
    4fe8:	4642      	mov	r2, r8
    4fea:	2320      	movs	r3, #32
    4fec:	1a9b      	subs	r3, r3, r2
    4fee:	002a      	movs	r2, r5
    4ff0:	4646      	mov	r6, r8
    4ff2:	409a      	lsls	r2, r3
    4ff4:	0023      	movs	r3, r4
    4ff6:	40f3      	lsrs	r3, r6
    4ff8:	4313      	orrs	r3, r2
    4ffa:	e7d5      	b.n	4fa8 <__udivmoddi4+0xfc>
    4ffc:	4642      	mov	r2, r8
    4ffe:	2320      	movs	r3, #32
    5000:	2100      	movs	r1, #0
    5002:	1a9b      	subs	r3, r3, r2
    5004:	2200      	movs	r2, #0
    5006:	9100      	str	r1, [sp, #0]
    5008:	9201      	str	r2, [sp, #4]
    500a:	2201      	movs	r2, #1
    500c:	40da      	lsrs	r2, r3
    500e:	9201      	str	r2, [sp, #4]
    5010:	e782      	b.n	4f18 <__udivmoddi4+0x6c>
    5012:	4642      	mov	r2, r8
    5014:	2320      	movs	r3, #32
    5016:	0026      	movs	r6, r4
    5018:	1a9b      	subs	r3, r3, r2
    501a:	40de      	lsrs	r6, r3
    501c:	002f      	movs	r7, r5
    501e:	46b4      	mov	ip, r6
    5020:	4097      	lsls	r7, r2
    5022:	4666      	mov	r6, ip
    5024:	003b      	movs	r3, r7
    5026:	4333      	orrs	r3, r6
    5028:	e7c9      	b.n	4fbe <__udivmoddi4+0x112>
    502a:	46c0      	nop			; (mov r8, r8)

0000502c <__clzdi2>:
    502c:	b510      	push	{r4, lr}
    502e:	2900      	cmp	r1, #0
    5030:	d103      	bne.n	503a <__clzdi2+0xe>
    5032:	f000 f807 	bl	5044 <__clzsi2>
    5036:	3020      	adds	r0, #32
    5038:	e002      	b.n	5040 <__clzdi2+0x14>
    503a:	1c08      	adds	r0, r1, #0
    503c:	f000 f802 	bl	5044 <__clzsi2>
    5040:	bd10      	pop	{r4, pc}
    5042:	46c0      	nop			; (mov r8, r8)

00005044 <__clzsi2>:
    5044:	211c      	movs	r1, #28
    5046:	2301      	movs	r3, #1
    5048:	041b      	lsls	r3, r3, #16
    504a:	4298      	cmp	r0, r3
    504c:	d301      	bcc.n	5052 <__clzsi2+0xe>
    504e:	0c00      	lsrs	r0, r0, #16
    5050:	3910      	subs	r1, #16
    5052:	0a1b      	lsrs	r3, r3, #8
    5054:	4298      	cmp	r0, r3
    5056:	d301      	bcc.n	505c <__clzsi2+0x18>
    5058:	0a00      	lsrs	r0, r0, #8
    505a:	3908      	subs	r1, #8
    505c:	091b      	lsrs	r3, r3, #4
    505e:	4298      	cmp	r0, r3
    5060:	d301      	bcc.n	5066 <__clzsi2+0x22>
    5062:	0900      	lsrs	r0, r0, #4
    5064:	3904      	subs	r1, #4
    5066:	a202      	add	r2, pc, #8	; (adr r2, 5070 <__clzsi2+0x2c>)
    5068:	5c10      	ldrb	r0, [r2, r0]
    506a:	1840      	adds	r0, r0, r1
    506c:	4770      	bx	lr
    506e:	46c0      	nop			; (mov r8, r8)
    5070:	02020304 	.word	0x02020304
    5074:	01010101 	.word	0x01010101
	...

00005080 <abs>:
    5080:	17c3      	asrs	r3, r0, #31
    5082:	18c0      	adds	r0, r0, r3
    5084:	4058      	eors	r0, r3
    5086:	4770      	bx	lr

00005088 <atexit>:
    5088:	b510      	push	{r4, lr}
    508a:	0001      	movs	r1, r0
    508c:	2300      	movs	r3, #0
    508e:	2200      	movs	r2, #0
    5090:	2000      	movs	r0, #0
    5092:	f000 f8ed 	bl	5270 <__register_exitproc>
    5096:	bd10      	pop	{r4, pc}

00005098 <exit>:
    5098:	b510      	push	{r4, lr}
    509a:	2100      	movs	r1, #0
    509c:	0004      	movs	r4, r0
    509e:	f000 f95d 	bl	535c <__call_exitprocs>
    50a2:	4b04      	ldr	r3, [pc, #16]	; (50b4 <exit+0x1c>)
    50a4:	6818      	ldr	r0, [r3, #0]
    50a6:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    50a8:	2b00      	cmp	r3, #0
    50aa:	d000      	beq.n	50ae <exit+0x16>
    50ac:	4798      	blx	r3
    50ae:	0020      	movs	r0, r4
    50b0:	f7fb fd5c 	bl	b6c <_exit>
    50b4:	000096dc 	.word	0x000096dc

000050b8 <__libc_fini_array>:
    50b8:	b570      	push	{r4, r5, r6, lr}
    50ba:	4b09      	ldr	r3, [pc, #36]	; (50e0 <__libc_fini_array+0x28>)
    50bc:	4c09      	ldr	r4, [pc, #36]	; (50e4 <__libc_fini_array+0x2c>)
    50be:	1ae4      	subs	r4, r4, r3
    50c0:	10a4      	asrs	r4, r4, #2
    50c2:	d009      	beq.n	50d8 <__libc_fini_array+0x20>
    50c4:	4a08      	ldr	r2, [pc, #32]	; (50e8 <__libc_fini_array+0x30>)
    50c6:	18a5      	adds	r5, r4, r2
    50c8:	00ad      	lsls	r5, r5, #2
    50ca:	18ed      	adds	r5, r5, r3
    50cc:	682b      	ldr	r3, [r5, #0]
    50ce:	3c01      	subs	r4, #1
    50d0:	4798      	blx	r3
    50d2:	3d04      	subs	r5, #4
    50d4:	2c00      	cmp	r4, #0
    50d6:	d1f9      	bne.n	50cc <__libc_fini_array+0x14>
    50d8:	f7fb fe94 	bl	e04 <_fini>
    50dc:	bd70      	pop	{r4, r5, r6, pc}
    50de:	46c0      	nop			; (mov r8, r8)
	...
    50e8:	3fffffff 	.word	0x3fffffff

000050ec <__libc_init_array>:
    50ec:	b570      	push	{r4, r5, r6, lr}
    50ee:	4e0d      	ldr	r6, [pc, #52]	; (5124 <__libc_init_array+0x38>)
    50f0:	4d0d      	ldr	r5, [pc, #52]	; (5128 <__libc_init_array+0x3c>)
    50f2:	2400      	movs	r4, #0
    50f4:	1bad      	subs	r5, r5, r6
    50f6:	10ad      	asrs	r5, r5, #2
    50f8:	d005      	beq.n	5106 <__libc_init_array+0x1a>
    50fa:	00a3      	lsls	r3, r4, #2
    50fc:	58f3      	ldr	r3, [r6, r3]
    50fe:	3401      	adds	r4, #1
    5100:	4798      	blx	r3
    5102:	42a5      	cmp	r5, r4
    5104:	d1f9      	bne.n	50fa <__libc_init_array+0xe>
    5106:	f7fb fe77 	bl	df8 <_init>
    510a:	4e08      	ldr	r6, [pc, #32]	; (512c <__libc_init_array+0x40>)
    510c:	4d08      	ldr	r5, [pc, #32]	; (5130 <__libc_init_array+0x44>)
    510e:	2400      	movs	r4, #0
    5110:	1bad      	subs	r5, r5, r6
    5112:	10ad      	asrs	r5, r5, #2
    5114:	d005      	beq.n	5122 <__libc_init_array+0x36>
    5116:	00a3      	lsls	r3, r4, #2
    5118:	58f3      	ldr	r3, [r6, r3]
    511a:	3401      	adds	r4, #1
    511c:	4798      	blx	r3
    511e:	42a5      	cmp	r5, r4
    5120:	d1f9      	bne.n	5116 <__libc_init_array+0x2a>
    5122:	bd70      	pop	{r4, r5, r6, pc}
	...

00005134 <memset>:
    5134:	b570      	push	{r4, r5, r6, lr}
    5136:	0783      	lsls	r3, r0, #30
    5138:	d03f      	beq.n	51ba <memset+0x86>
    513a:	1e54      	subs	r4, r2, #1
    513c:	2a00      	cmp	r2, #0
    513e:	d03b      	beq.n	51b8 <memset+0x84>
    5140:	b2ce      	uxtb	r6, r1
    5142:	0003      	movs	r3, r0
    5144:	2503      	movs	r5, #3
    5146:	e003      	b.n	5150 <memset+0x1c>
    5148:	1e62      	subs	r2, r4, #1
    514a:	2c00      	cmp	r4, #0
    514c:	d034      	beq.n	51b8 <memset+0x84>
    514e:	0014      	movs	r4, r2
    5150:	3301      	adds	r3, #1
    5152:	1e5a      	subs	r2, r3, #1
    5154:	7016      	strb	r6, [r2, #0]
    5156:	422b      	tst	r3, r5
    5158:	d1f6      	bne.n	5148 <memset+0x14>
    515a:	2c03      	cmp	r4, #3
    515c:	d924      	bls.n	51a8 <memset+0x74>
    515e:	25ff      	movs	r5, #255	; 0xff
    5160:	400d      	ands	r5, r1
    5162:	022a      	lsls	r2, r5, #8
    5164:	4315      	orrs	r5, r2
    5166:	042a      	lsls	r2, r5, #16
    5168:	4315      	orrs	r5, r2
    516a:	2c0f      	cmp	r4, #15
    516c:	d911      	bls.n	5192 <memset+0x5e>
    516e:	0026      	movs	r6, r4
    5170:	3e10      	subs	r6, #16
    5172:	0936      	lsrs	r6, r6, #4
    5174:	3601      	adds	r6, #1
    5176:	0136      	lsls	r6, r6, #4
    5178:	001a      	movs	r2, r3
    517a:	199b      	adds	r3, r3, r6
    517c:	6015      	str	r5, [r2, #0]
    517e:	6055      	str	r5, [r2, #4]
    5180:	6095      	str	r5, [r2, #8]
    5182:	60d5      	str	r5, [r2, #12]
    5184:	3210      	adds	r2, #16
    5186:	4293      	cmp	r3, r2
    5188:	d1f8      	bne.n	517c <memset+0x48>
    518a:	220f      	movs	r2, #15
    518c:	4014      	ands	r4, r2
    518e:	2c03      	cmp	r4, #3
    5190:	d90a      	bls.n	51a8 <memset+0x74>
    5192:	1f26      	subs	r6, r4, #4
    5194:	08b6      	lsrs	r6, r6, #2
    5196:	3601      	adds	r6, #1
    5198:	00b6      	lsls	r6, r6, #2
    519a:	001a      	movs	r2, r3
    519c:	199b      	adds	r3, r3, r6
    519e:	c220      	stmia	r2!, {r5}
    51a0:	4293      	cmp	r3, r2
    51a2:	d1fc      	bne.n	519e <memset+0x6a>
    51a4:	2203      	movs	r2, #3
    51a6:	4014      	ands	r4, r2
    51a8:	2c00      	cmp	r4, #0
    51aa:	d005      	beq.n	51b8 <memset+0x84>
    51ac:	b2c9      	uxtb	r1, r1
    51ae:	191c      	adds	r4, r3, r4
    51b0:	7019      	strb	r1, [r3, #0]
    51b2:	3301      	adds	r3, #1
    51b4:	429c      	cmp	r4, r3
    51b6:	d1fb      	bne.n	51b0 <memset+0x7c>
    51b8:	bd70      	pop	{r4, r5, r6, pc}
    51ba:	0014      	movs	r4, r2
    51bc:	0003      	movs	r3, r0
    51be:	e7cc      	b.n	515a <memset+0x26>

000051c0 <cleanup_glue>:
    51c0:	b570      	push	{r4, r5, r6, lr}
    51c2:	000c      	movs	r4, r1
    51c4:	6809      	ldr	r1, [r1, #0]
    51c6:	0005      	movs	r5, r0
    51c8:	2900      	cmp	r1, #0
    51ca:	d001      	beq.n	51d0 <cleanup_glue+0x10>
    51cc:	f7ff fff8 	bl	51c0 <cleanup_glue>
    51d0:	0028      	movs	r0, r5
    51d2:	0021      	movs	r1, r4
    51d4:	f000 f990 	bl	54f8 <_free_r>
    51d8:	bd70      	pop	{r4, r5, r6, pc}
    51da:	46c0      	nop			; (mov r8, r8)

000051dc <_reclaim_reent>:
    51dc:	4b23      	ldr	r3, [pc, #140]	; (526c <_reclaim_reent+0x90>)
    51de:	b570      	push	{r4, r5, r6, lr}
    51e0:	681b      	ldr	r3, [r3, #0]
    51e2:	0005      	movs	r5, r0
    51e4:	4283      	cmp	r3, r0
    51e6:	d034      	beq.n	5252 <_reclaim_reent+0x76>
    51e8:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    51ea:	2b00      	cmp	r3, #0
    51ec:	d011      	beq.n	5212 <_reclaim_reent+0x36>
    51ee:	2600      	movs	r6, #0
    51f0:	5999      	ldr	r1, [r3, r6]
    51f2:	2900      	cmp	r1, #0
    51f4:	d006      	beq.n	5204 <_reclaim_reent+0x28>
    51f6:	680c      	ldr	r4, [r1, #0]
    51f8:	0028      	movs	r0, r5
    51fa:	f000 f97d 	bl	54f8 <_free_r>
    51fe:	1e21      	subs	r1, r4, #0
    5200:	d1f9      	bne.n	51f6 <_reclaim_reent+0x1a>
    5202:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    5204:	3604      	adds	r6, #4
    5206:	2e80      	cmp	r6, #128	; 0x80
    5208:	d1f2      	bne.n	51f0 <_reclaim_reent+0x14>
    520a:	0019      	movs	r1, r3
    520c:	0028      	movs	r0, r5
    520e:	f000 f973 	bl	54f8 <_free_r>
    5212:	6c29      	ldr	r1, [r5, #64]	; 0x40
    5214:	2900      	cmp	r1, #0
    5216:	d002      	beq.n	521e <_reclaim_reent+0x42>
    5218:	0028      	movs	r0, r5
    521a:	f000 f96d 	bl	54f8 <_free_r>
    521e:	23a4      	movs	r3, #164	; 0xa4
    5220:	005b      	lsls	r3, r3, #1
    5222:	58e9      	ldr	r1, [r5, r3]
    5224:	2900      	cmp	r1, #0
    5226:	d00b      	beq.n	5240 <_reclaim_reent+0x64>
    5228:	002e      	movs	r6, r5
    522a:	364d      	adds	r6, #77	; 0x4d
    522c:	36ff      	adds	r6, #255	; 0xff
    522e:	42b1      	cmp	r1, r6
    5230:	d006      	beq.n	5240 <_reclaim_reent+0x64>
    5232:	680c      	ldr	r4, [r1, #0]
    5234:	0028      	movs	r0, r5
    5236:	f000 f95f 	bl	54f8 <_free_r>
    523a:	0021      	movs	r1, r4
    523c:	42a6      	cmp	r6, r4
    523e:	d1f8      	bne.n	5232 <_reclaim_reent+0x56>
    5240:	6d69      	ldr	r1, [r5, #84]	; 0x54
    5242:	2900      	cmp	r1, #0
    5244:	d002      	beq.n	524c <_reclaim_reent+0x70>
    5246:	0028      	movs	r0, r5
    5248:	f000 f956 	bl	54f8 <_free_r>
    524c:	6bab      	ldr	r3, [r5, #56]	; 0x38
    524e:	2b00      	cmp	r3, #0
    5250:	d100      	bne.n	5254 <_reclaim_reent+0x78>
    5252:	bd70      	pop	{r4, r5, r6, pc}
    5254:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    5256:	0028      	movs	r0, r5
    5258:	4798      	blx	r3
    525a:	23b8      	movs	r3, #184	; 0xb8
    525c:	009b      	lsls	r3, r3, #2
    525e:	58e9      	ldr	r1, [r5, r3]
    5260:	2900      	cmp	r1, #0
    5262:	d0f6      	beq.n	5252 <_reclaim_reent+0x76>
    5264:	0028      	movs	r0, r5
    5266:	f7ff ffab 	bl	51c0 <cleanup_glue>
    526a:	e7f2      	b.n	5252 <_reclaim_reent+0x76>
    526c:	20000440 	.word	0x20000440

00005270 <__register_exitproc>:
    5270:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5272:	4644      	mov	r4, r8
    5274:	465f      	mov	r7, fp
    5276:	4656      	mov	r6, sl
    5278:	464d      	mov	r5, r9
    527a:	469b      	mov	fp, r3
    527c:	4b2f      	ldr	r3, [pc, #188]	; (533c <__register_exitproc+0xcc>)
    527e:	b4f0      	push	{r4, r5, r6, r7}
    5280:	681c      	ldr	r4, [r3, #0]
    5282:	23a4      	movs	r3, #164	; 0xa4
    5284:	005b      	lsls	r3, r3, #1
    5286:	0005      	movs	r5, r0
    5288:	58e0      	ldr	r0, [r4, r3]
    528a:	000e      	movs	r6, r1
    528c:	4690      	mov	r8, r2
    528e:	2800      	cmp	r0, #0
    5290:	d04b      	beq.n	532a <__register_exitproc+0xba>
    5292:	6843      	ldr	r3, [r0, #4]
    5294:	2b1f      	cmp	r3, #31
    5296:	dc0d      	bgt.n	52b4 <__register_exitproc+0x44>
    5298:	1c5c      	adds	r4, r3, #1
    529a:	2d00      	cmp	r5, #0
    529c:	d121      	bne.n	52e2 <__register_exitproc+0x72>
    529e:	3302      	adds	r3, #2
    52a0:	009b      	lsls	r3, r3, #2
    52a2:	6044      	str	r4, [r0, #4]
    52a4:	501e      	str	r6, [r3, r0]
    52a6:	2000      	movs	r0, #0
    52a8:	bc3c      	pop	{r2, r3, r4, r5}
    52aa:	4690      	mov	r8, r2
    52ac:	4699      	mov	r9, r3
    52ae:	46a2      	mov	sl, r4
    52b0:	46ab      	mov	fp, r5
    52b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    52b4:	4b22      	ldr	r3, [pc, #136]	; (5340 <__register_exitproc+0xd0>)
    52b6:	2b00      	cmp	r3, #0
    52b8:	d03c      	beq.n	5334 <__register_exitproc+0xc4>
    52ba:	20c8      	movs	r0, #200	; 0xc8
    52bc:	0040      	lsls	r0, r0, #1
    52be:	e000      	b.n	52c2 <__register_exitproc+0x52>
    52c0:	bf00      	nop
    52c2:	2800      	cmp	r0, #0
    52c4:	d036      	beq.n	5334 <__register_exitproc+0xc4>
    52c6:	22a4      	movs	r2, #164	; 0xa4
    52c8:	2300      	movs	r3, #0
    52ca:	0052      	lsls	r2, r2, #1
    52cc:	58a1      	ldr	r1, [r4, r2]
    52ce:	6043      	str	r3, [r0, #4]
    52d0:	6001      	str	r1, [r0, #0]
    52d2:	50a0      	str	r0, [r4, r2]
    52d4:	3240      	adds	r2, #64	; 0x40
    52d6:	5083      	str	r3, [r0, r2]
    52d8:	3204      	adds	r2, #4
    52da:	5083      	str	r3, [r0, r2]
    52dc:	2401      	movs	r4, #1
    52de:	2d00      	cmp	r5, #0
    52e0:	d0dd      	beq.n	529e <__register_exitproc+0x2e>
    52e2:	009a      	lsls	r2, r3, #2
    52e4:	4691      	mov	r9, r2
    52e6:	4481      	add	r9, r0
    52e8:	4642      	mov	r2, r8
    52ea:	2188      	movs	r1, #136	; 0x88
    52ec:	464f      	mov	r7, r9
    52ee:	507a      	str	r2, [r7, r1]
    52f0:	22c4      	movs	r2, #196	; 0xc4
    52f2:	0052      	lsls	r2, r2, #1
    52f4:	4690      	mov	r8, r2
    52f6:	4480      	add	r8, r0
    52f8:	4642      	mov	r2, r8
    52fa:	3987      	subs	r1, #135	; 0x87
    52fc:	4099      	lsls	r1, r3
    52fe:	6812      	ldr	r2, [r2, #0]
    5300:	468a      	mov	sl, r1
    5302:	430a      	orrs	r2, r1
    5304:	4694      	mov	ip, r2
    5306:	4642      	mov	r2, r8
    5308:	4661      	mov	r1, ip
    530a:	6011      	str	r1, [r2, #0]
    530c:	2284      	movs	r2, #132	; 0x84
    530e:	4649      	mov	r1, r9
    5310:	465f      	mov	r7, fp
    5312:	0052      	lsls	r2, r2, #1
    5314:	508f      	str	r7, [r1, r2]
    5316:	2d02      	cmp	r5, #2
    5318:	d1c1      	bne.n	529e <__register_exitproc+0x2e>
    531a:	0002      	movs	r2, r0
    531c:	4655      	mov	r5, sl
    531e:	328d      	adds	r2, #141	; 0x8d
    5320:	32ff      	adds	r2, #255	; 0xff
    5322:	6811      	ldr	r1, [r2, #0]
    5324:	430d      	orrs	r5, r1
    5326:	6015      	str	r5, [r2, #0]
    5328:	e7b9      	b.n	529e <__register_exitproc+0x2e>
    532a:	0020      	movs	r0, r4
    532c:	304d      	adds	r0, #77	; 0x4d
    532e:	30ff      	adds	r0, #255	; 0xff
    5330:	50e0      	str	r0, [r4, r3]
    5332:	e7ae      	b.n	5292 <__register_exitproc+0x22>
    5334:	2001      	movs	r0, #1
    5336:	4240      	negs	r0, r0
    5338:	e7b6      	b.n	52a8 <__register_exitproc+0x38>
    533a:	46c0      	nop			; (mov r8, r8)
    533c:	000096dc 	.word	0x000096dc
    5340:	00000000 	.word	0x00000000

00005344 <register_fini>:
    5344:	4b03      	ldr	r3, [pc, #12]	; (5354 <register_fini+0x10>)
    5346:	b510      	push	{r4, lr}
    5348:	2b00      	cmp	r3, #0
    534a:	d002      	beq.n	5352 <register_fini+0xe>
    534c:	4802      	ldr	r0, [pc, #8]	; (5358 <register_fini+0x14>)
    534e:	f7ff fe9b 	bl	5088 <atexit>
    5352:	bd10      	pop	{r4, pc}
    5354:	00000000 	.word	0x00000000
    5358:	000050b9 	.word	0x000050b9

0000535c <__call_exitprocs>:
    535c:	b5f0      	push	{r4, r5, r6, r7, lr}
    535e:	465f      	mov	r7, fp
    5360:	4656      	mov	r6, sl
    5362:	464d      	mov	r5, r9
    5364:	4644      	mov	r4, r8
    5366:	b4f0      	push	{r4, r5, r6, r7}
    5368:	000f      	movs	r7, r1
    536a:	4b39      	ldr	r3, [pc, #228]	; (5450 <__call_exitprocs+0xf4>)
    536c:	b085      	sub	sp, #20
    536e:	681b      	ldr	r3, [r3, #0]
    5370:	9001      	str	r0, [sp, #4]
    5372:	9302      	str	r3, [sp, #8]
    5374:	3349      	adds	r3, #73	; 0x49
    5376:	33ff      	adds	r3, #255	; 0xff
    5378:	9303      	str	r3, [sp, #12]
    537a:	22a4      	movs	r2, #164	; 0xa4
    537c:	9b02      	ldr	r3, [sp, #8]
    537e:	0052      	lsls	r2, r2, #1
    5380:	589e      	ldr	r6, [r3, r2]
    5382:	2e00      	cmp	r6, #0
    5384:	d04e      	beq.n	5424 <__call_exitprocs+0xc8>
    5386:	9b03      	ldr	r3, [sp, #12]
    5388:	4699      	mov	r9, r3
    538a:	23c4      	movs	r3, #196	; 0xc4
    538c:	005b      	lsls	r3, r3, #1
    538e:	4698      	mov	r8, r3
    5390:	3304      	adds	r3, #4
    5392:	469a      	mov	sl, r3
    5394:	6874      	ldr	r4, [r6, #4]
    5396:	44b0      	add	r8, r6
    5398:	00a5      	lsls	r5, r4, #2
    539a:	1975      	adds	r5, r6, r5
    539c:	44b2      	add	sl, r6
    539e:	3c01      	subs	r4, #1
    53a0:	d508      	bpl.n	53b4 <__call_exitprocs+0x58>
    53a2:	e02d      	b.n	5400 <__call_exitprocs+0xa4>
    53a4:	1d6b      	adds	r3, r5, #5
    53a6:	33ff      	adds	r3, #255	; 0xff
    53a8:	681b      	ldr	r3, [r3, #0]
    53aa:	429f      	cmp	r7, r3
    53ac:	d004      	beq.n	53b8 <__call_exitprocs+0x5c>
    53ae:	3d04      	subs	r5, #4
    53b0:	3c01      	subs	r4, #1
    53b2:	d325      	bcc.n	5400 <__call_exitprocs+0xa4>
    53b4:	2f00      	cmp	r7, #0
    53b6:	d1f5      	bne.n	53a4 <__call_exitprocs+0x48>
    53b8:	6873      	ldr	r3, [r6, #4]
    53ba:	686a      	ldr	r2, [r5, #4]
    53bc:	3b01      	subs	r3, #1
    53be:	42a3      	cmp	r3, r4
    53c0:	d039      	beq.n	5436 <__call_exitprocs+0xda>
    53c2:	2300      	movs	r3, #0
    53c4:	606b      	str	r3, [r5, #4]
    53c6:	2a00      	cmp	r2, #0
    53c8:	d0f1      	beq.n	53ae <__call_exitprocs+0x52>
    53ca:	6873      	ldr	r3, [r6, #4]
    53cc:	4641      	mov	r1, r8
    53ce:	469b      	mov	fp, r3
    53d0:	2301      	movs	r3, #1
    53d2:	40a3      	lsls	r3, r4
    53d4:	6809      	ldr	r1, [r1, #0]
    53d6:	4219      	tst	r1, r3
    53d8:	d02b      	beq.n	5432 <__call_exitprocs+0xd6>
    53da:	4651      	mov	r1, sl
    53dc:	6809      	ldr	r1, [r1, #0]
    53de:	4219      	tst	r1, r3
    53e0:	d12b      	bne.n	543a <__call_exitprocs+0xde>
    53e2:	002b      	movs	r3, r5
    53e4:	3384      	adds	r3, #132	; 0x84
    53e6:	6819      	ldr	r1, [r3, #0]
    53e8:	9801      	ldr	r0, [sp, #4]
    53ea:	4790      	blx	r2
    53ec:	6873      	ldr	r3, [r6, #4]
    53ee:	455b      	cmp	r3, fp
    53f0:	d1c3      	bne.n	537a <__call_exitprocs+0x1e>
    53f2:	464b      	mov	r3, r9
    53f4:	681b      	ldr	r3, [r3, #0]
    53f6:	42b3      	cmp	r3, r6
    53f8:	d1bf      	bne.n	537a <__call_exitprocs+0x1e>
    53fa:	3d04      	subs	r5, #4
    53fc:	3c01      	subs	r4, #1
    53fe:	d2d9      	bcs.n	53b4 <__call_exitprocs+0x58>
    5400:	4b14      	ldr	r3, [pc, #80]	; (5454 <__call_exitprocs+0xf8>)
    5402:	2b00      	cmp	r3, #0
    5404:	d00e      	beq.n	5424 <__call_exitprocs+0xc8>
    5406:	6873      	ldr	r3, [r6, #4]
    5408:	2b00      	cmp	r3, #0
    540a:	d11b      	bne.n	5444 <__call_exitprocs+0xe8>
    540c:	6833      	ldr	r3, [r6, #0]
    540e:	2b00      	cmp	r3, #0
    5410:	d01c      	beq.n	544c <__call_exitprocs+0xf0>
    5412:	464a      	mov	r2, r9
    5414:	0030      	movs	r0, r6
    5416:	6013      	str	r3, [r2, #0]
    5418:	e000      	b.n	541c <__call_exitprocs+0xc0>
    541a:	bf00      	nop
    541c:	464b      	mov	r3, r9
    541e:	681e      	ldr	r6, [r3, #0]
    5420:	2e00      	cmp	r6, #0
    5422:	d1b2      	bne.n	538a <__call_exitprocs+0x2e>
    5424:	b005      	add	sp, #20
    5426:	bc3c      	pop	{r2, r3, r4, r5}
    5428:	4690      	mov	r8, r2
    542a:	4699      	mov	r9, r3
    542c:	46a2      	mov	sl, r4
    542e:	46ab      	mov	fp, r5
    5430:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5432:	4790      	blx	r2
    5434:	e7da      	b.n	53ec <__call_exitprocs+0x90>
    5436:	6074      	str	r4, [r6, #4]
    5438:	e7c5      	b.n	53c6 <__call_exitprocs+0x6a>
    543a:	002b      	movs	r3, r5
    543c:	3384      	adds	r3, #132	; 0x84
    543e:	6818      	ldr	r0, [r3, #0]
    5440:	4790      	blx	r2
    5442:	e7d3      	b.n	53ec <__call_exitprocs+0x90>
    5444:	6833      	ldr	r3, [r6, #0]
    5446:	46b1      	mov	r9, r6
    5448:	001e      	movs	r6, r3
    544a:	e7e9      	b.n	5420 <__call_exitprocs+0xc4>
    544c:	2300      	movs	r3, #0
    544e:	e7fa      	b.n	5446 <__call_exitprocs+0xea>
    5450:	000096dc 	.word	0x000096dc
    5454:	00000000 	.word	0x00000000

00005458 <_malloc_trim_r>:
    5458:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    545a:	000c      	movs	r4, r1
    545c:	0006      	movs	r6, r0
    545e:	f000 fbd7 	bl	5c10 <__malloc_lock>
    5462:	4f20      	ldr	r7, [pc, #128]	; (54e4 <_malloc_trim_r+0x8c>)
    5464:	68bb      	ldr	r3, [r7, #8]
    5466:	685d      	ldr	r5, [r3, #4]
    5468:	2303      	movs	r3, #3
    546a:	439d      	bics	r5, r3
    546c:	4b1e      	ldr	r3, [pc, #120]	; (54e8 <_malloc_trim_r+0x90>)
    546e:	1b2c      	subs	r4, r5, r4
    5470:	469c      	mov	ip, r3
    5472:	4464      	add	r4, ip
    5474:	0b24      	lsrs	r4, r4, #12
    5476:	4b1d      	ldr	r3, [pc, #116]	; (54ec <_malloc_trim_r+0x94>)
    5478:	3c01      	subs	r4, #1
    547a:	0324      	lsls	r4, r4, #12
    547c:	429c      	cmp	r4, r3
    547e:	dd07      	ble.n	5490 <_malloc_trim_r+0x38>
    5480:	2100      	movs	r1, #0
    5482:	0030      	movs	r0, r6
    5484:	f000 fbc8 	bl	5c18 <_sbrk_r>
    5488:	68bb      	ldr	r3, [r7, #8]
    548a:	195b      	adds	r3, r3, r5
    548c:	4298      	cmp	r0, r3
    548e:	d004      	beq.n	549a <_malloc_trim_r+0x42>
    5490:	0030      	movs	r0, r6
    5492:	f000 fbbf 	bl	5c14 <__malloc_unlock>
    5496:	2000      	movs	r0, #0
    5498:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    549a:	4261      	negs	r1, r4
    549c:	0030      	movs	r0, r6
    549e:	f000 fbbb 	bl	5c18 <_sbrk_r>
    54a2:	1c43      	adds	r3, r0, #1
    54a4:	d00d      	beq.n	54c2 <_malloc_trim_r+0x6a>
    54a6:	2301      	movs	r3, #1
    54a8:	1b2d      	subs	r5, r5, r4
    54aa:	68ba      	ldr	r2, [r7, #8]
    54ac:	431d      	orrs	r5, r3
    54ae:	4b10      	ldr	r3, [pc, #64]	; (54f0 <_malloc_trim_r+0x98>)
    54b0:	6055      	str	r5, [r2, #4]
    54b2:	681a      	ldr	r2, [r3, #0]
    54b4:	0030      	movs	r0, r6
    54b6:	1b14      	subs	r4, r2, r4
    54b8:	601c      	str	r4, [r3, #0]
    54ba:	f000 fbab 	bl	5c14 <__malloc_unlock>
    54be:	2001      	movs	r0, #1
    54c0:	e7ea      	b.n	5498 <_malloc_trim_r+0x40>
    54c2:	2100      	movs	r1, #0
    54c4:	0030      	movs	r0, r6
    54c6:	f000 fba7 	bl	5c18 <_sbrk_r>
    54ca:	68bb      	ldr	r3, [r7, #8]
    54cc:	1ac2      	subs	r2, r0, r3
    54ce:	2a0f      	cmp	r2, #15
    54d0:	ddde      	ble.n	5490 <_malloc_trim_r+0x38>
    54d2:	4908      	ldr	r1, [pc, #32]	; (54f4 <_malloc_trim_r+0x9c>)
    54d4:	6809      	ldr	r1, [r1, #0]
    54d6:	1a40      	subs	r0, r0, r1
    54d8:	4905      	ldr	r1, [pc, #20]	; (54f0 <_malloc_trim_r+0x98>)
    54da:	6008      	str	r0, [r1, #0]
    54dc:	2101      	movs	r1, #1
    54de:	430a      	orrs	r2, r1
    54e0:	605a      	str	r2, [r3, #4]
    54e2:	e7d5      	b.n	5490 <_malloc_trim_r+0x38>
    54e4:	20000444 	.word	0x20000444
    54e8:	00000fef 	.word	0x00000fef
    54ec:	00000fff 	.word	0x00000fff
    54f0:	2000604c 	.word	0x2000604c
    54f4:	20000850 	.word	0x20000850

000054f8 <_free_r>:
    54f8:	b5f0      	push	{r4, r5, r6, r7, lr}
    54fa:	4647      	mov	r7, r8
    54fc:	0005      	movs	r5, r0
    54fe:	b480      	push	{r7}
    5500:	1e0c      	subs	r4, r1, #0
    5502:	d03e      	beq.n	5582 <_free_r+0x8a>
    5504:	f000 fb84 	bl	5c10 <__malloc_lock>
    5508:	2301      	movs	r3, #1
    550a:	0021      	movs	r1, r4
    550c:	4698      	mov	r8, r3
    550e:	3908      	subs	r1, #8
    5510:	684e      	ldr	r6, [r1, #4]
    5512:	4642      	mov	r2, r8
    5514:	0033      	movs	r3, r6
    5516:	2003      	movs	r0, #3
    5518:	4393      	bics	r3, r2
    551a:	18cc      	adds	r4, r1, r3
    551c:	6862      	ldr	r2, [r4, #4]
    551e:	4382      	bics	r2, r0
    5520:	4860      	ldr	r0, [pc, #384]	; (56a4 <_free_r+0x1ac>)
    5522:	6887      	ldr	r7, [r0, #8]
    5524:	42bc      	cmp	r4, r7
    5526:	d05a      	beq.n	55de <_free_r+0xe6>
    5528:	4647      	mov	r7, r8
    552a:	6062      	str	r2, [r4, #4]
    552c:	4237      	tst	r7, r6
    552e:	d10b      	bne.n	5548 <_free_r+0x50>
    5530:	2708      	movs	r7, #8
    5532:	46bc      	mov	ip, r7
    5534:	680e      	ldr	r6, [r1, #0]
    5536:	4484      	add	ip, r0
    5538:	1b89      	subs	r1, r1, r6
    553a:	199b      	adds	r3, r3, r6
    553c:	688e      	ldr	r6, [r1, #8]
    553e:	4566      	cmp	r6, ip
    5540:	d066      	beq.n	5610 <_free_r+0x118>
    5542:	68cf      	ldr	r7, [r1, #12]
    5544:	60f7      	str	r7, [r6, #12]
    5546:	60be      	str	r6, [r7, #8]
    5548:	2601      	movs	r6, #1
    554a:	18a7      	adds	r7, r4, r2
    554c:	687f      	ldr	r7, [r7, #4]
    554e:	4237      	tst	r7, r6
    5550:	d036      	beq.n	55c0 <_free_r+0xc8>
    5552:	4a55      	ldr	r2, [pc, #340]	; (56a8 <_free_r+0x1b0>)
    5554:	431e      	orrs	r6, r3
    5556:	604e      	str	r6, [r1, #4]
    5558:	50cb      	str	r3, [r1, r3]
    555a:	4293      	cmp	r3, r2
    555c:	d814      	bhi.n	5588 <_free_r+0x90>
    555e:	08db      	lsrs	r3, r3, #3
    5560:	3aff      	subs	r2, #255	; 0xff
    5562:	109c      	asrs	r4, r3, #2
    5564:	3aff      	subs	r2, #255	; 0xff
    5566:	40a2      	lsls	r2, r4
    5568:	6844      	ldr	r4, [r0, #4]
    556a:	00db      	lsls	r3, r3, #3
    556c:	4322      	orrs	r2, r4
    556e:	6042      	str	r2, [r0, #4]
    5570:	1818      	adds	r0, r3, r0
    5572:	6883      	ldr	r3, [r0, #8]
    5574:	60c8      	str	r0, [r1, #12]
    5576:	608b      	str	r3, [r1, #8]
    5578:	6081      	str	r1, [r0, #8]
    557a:	60d9      	str	r1, [r3, #12]
    557c:	0028      	movs	r0, r5
    557e:	f000 fb49 	bl	5c14 <__malloc_unlock>
    5582:	bc04      	pop	{r2}
    5584:	4690      	mov	r8, r2
    5586:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5588:	0a5a      	lsrs	r2, r3, #9
    558a:	2a04      	cmp	r2, #4
    558c:	d84f      	bhi.n	562e <_free_r+0x136>
    558e:	099c      	lsrs	r4, r3, #6
    5590:	0026      	movs	r6, r4
    5592:	3439      	adds	r4, #57	; 0x39
    5594:	3638      	adds	r6, #56	; 0x38
    5596:	0064      	lsls	r4, r4, #1
    5598:	00a4      	lsls	r4, r4, #2
    559a:	1904      	adds	r4, r0, r4
    559c:	3c08      	subs	r4, #8
    559e:	68a2      	ldr	r2, [r4, #8]
    55a0:	2703      	movs	r7, #3
    55a2:	4294      	cmp	r4, r2
    55a4:	d04a      	beq.n	563c <_free_r+0x144>
    55a6:	6850      	ldr	r0, [r2, #4]
    55a8:	43b8      	bics	r0, r7
    55aa:	4283      	cmp	r3, r0
    55ac:	d202      	bcs.n	55b4 <_free_r+0xbc>
    55ae:	6892      	ldr	r2, [r2, #8]
    55b0:	4294      	cmp	r4, r2
    55b2:	d1f8      	bne.n	55a6 <_free_r+0xae>
    55b4:	68d4      	ldr	r4, [r2, #12]
    55b6:	60cc      	str	r4, [r1, #12]
    55b8:	608a      	str	r2, [r1, #8]
    55ba:	60a1      	str	r1, [r4, #8]
    55bc:	60d1      	str	r1, [r2, #12]
    55be:	e7dd      	b.n	557c <_free_r+0x84>
    55c0:	189b      	adds	r3, r3, r2
    55c2:	4f3a      	ldr	r7, [pc, #232]	; (56ac <_free_r+0x1b4>)
    55c4:	68a2      	ldr	r2, [r4, #8]
    55c6:	42ba      	cmp	r2, r7
    55c8:	d040      	beq.n	564c <_free_r+0x154>
    55ca:	68e4      	ldr	r4, [r4, #12]
    55cc:	431e      	orrs	r6, r3
    55ce:	60d4      	str	r4, [r2, #12]
    55d0:	60a2      	str	r2, [r4, #8]
    55d2:	4a35      	ldr	r2, [pc, #212]	; (56a8 <_free_r+0x1b0>)
    55d4:	604e      	str	r6, [r1, #4]
    55d6:	50cb      	str	r3, [r1, r3]
    55d8:	4293      	cmp	r3, r2
    55da:	d8d5      	bhi.n	5588 <_free_r+0x90>
    55dc:	e7bf      	b.n	555e <_free_r+0x66>
    55de:	189b      	adds	r3, r3, r2
    55e0:	4642      	mov	r2, r8
    55e2:	4232      	tst	r2, r6
    55e4:	d106      	bne.n	55f4 <_free_r+0xfc>
    55e6:	680a      	ldr	r2, [r1, #0]
    55e8:	1a89      	subs	r1, r1, r2
    55ea:	688c      	ldr	r4, [r1, #8]
    55ec:	189b      	adds	r3, r3, r2
    55ee:	68ca      	ldr	r2, [r1, #12]
    55f0:	60e2      	str	r2, [r4, #12]
    55f2:	6094      	str	r4, [r2, #8]
    55f4:	2401      	movs	r4, #1
    55f6:	4a2e      	ldr	r2, [pc, #184]	; (56b0 <_free_r+0x1b8>)
    55f8:	431c      	orrs	r4, r3
    55fa:	6812      	ldr	r2, [r2, #0]
    55fc:	604c      	str	r4, [r1, #4]
    55fe:	6081      	str	r1, [r0, #8]
    5600:	4293      	cmp	r3, r2
    5602:	d3bb      	bcc.n	557c <_free_r+0x84>
    5604:	4b2b      	ldr	r3, [pc, #172]	; (56b4 <_free_r+0x1bc>)
    5606:	0028      	movs	r0, r5
    5608:	6819      	ldr	r1, [r3, #0]
    560a:	f7ff ff25 	bl	5458 <_malloc_trim_r>
    560e:	e7b5      	b.n	557c <_free_r+0x84>
    5610:	4646      	mov	r6, r8
    5612:	18a0      	adds	r0, r4, r2
    5614:	6840      	ldr	r0, [r0, #4]
    5616:	4230      	tst	r0, r6
    5618:	d13e      	bne.n	5698 <_free_r+0x1a0>
    561a:	68a0      	ldr	r0, [r4, #8]
    561c:	18d3      	adds	r3, r2, r3
    561e:	68e2      	ldr	r2, [r4, #12]
    5620:	60c2      	str	r2, [r0, #12]
    5622:	6090      	str	r0, [r2, #8]
    5624:	4642      	mov	r2, r8
    5626:	431a      	orrs	r2, r3
    5628:	604a      	str	r2, [r1, #4]
    562a:	50cb      	str	r3, [r1, r3]
    562c:	e7a6      	b.n	557c <_free_r+0x84>
    562e:	2a14      	cmp	r2, #20
    5630:	d814      	bhi.n	565c <_free_r+0x164>
    5632:	0016      	movs	r6, r2
    5634:	325c      	adds	r2, #92	; 0x5c
    5636:	365b      	adds	r6, #91	; 0x5b
    5638:	0054      	lsls	r4, r2, #1
    563a:	e7ad      	b.n	5598 <_free_r+0xa0>
    563c:	2301      	movs	r3, #1
    563e:	10b6      	asrs	r6, r6, #2
    5640:	40b3      	lsls	r3, r6
    5642:	6842      	ldr	r2, [r0, #4]
    5644:	4313      	orrs	r3, r2
    5646:	6043      	str	r3, [r0, #4]
    5648:	0022      	movs	r2, r4
    564a:	e7b4      	b.n	55b6 <_free_r+0xbe>
    564c:	431e      	orrs	r6, r3
    564e:	60d1      	str	r1, [r2, #12]
    5650:	6091      	str	r1, [r2, #8]
    5652:	60ca      	str	r2, [r1, #12]
    5654:	608a      	str	r2, [r1, #8]
    5656:	604e      	str	r6, [r1, #4]
    5658:	50cb      	str	r3, [r1, r3]
    565a:	e78f      	b.n	557c <_free_r+0x84>
    565c:	2a54      	cmp	r2, #84	; 0x54
    565e:	d805      	bhi.n	566c <_free_r+0x174>
    5660:	0b1c      	lsrs	r4, r3, #12
    5662:	0026      	movs	r6, r4
    5664:	346f      	adds	r4, #111	; 0x6f
    5666:	366e      	adds	r6, #110	; 0x6e
    5668:	0064      	lsls	r4, r4, #1
    566a:	e795      	b.n	5598 <_free_r+0xa0>
    566c:	24aa      	movs	r4, #170	; 0xaa
    566e:	0064      	lsls	r4, r4, #1
    5670:	42a2      	cmp	r2, r4
    5672:	d805      	bhi.n	5680 <_free_r+0x188>
    5674:	0bdc      	lsrs	r4, r3, #15
    5676:	0026      	movs	r6, r4
    5678:	3478      	adds	r4, #120	; 0x78
    567a:	3677      	adds	r6, #119	; 0x77
    567c:	0064      	lsls	r4, r4, #1
    567e:	e78b      	b.n	5598 <_free_r+0xa0>
    5680:	4c0d      	ldr	r4, [pc, #52]	; (56b8 <_free_r+0x1c0>)
    5682:	42a2      	cmp	r2, r4
    5684:	d805      	bhi.n	5692 <_free_r+0x19a>
    5686:	0c9c      	lsrs	r4, r3, #18
    5688:	0026      	movs	r6, r4
    568a:	347d      	adds	r4, #125	; 0x7d
    568c:	367c      	adds	r6, #124	; 0x7c
    568e:	0064      	lsls	r4, r4, #1
    5690:	e782      	b.n	5598 <_free_r+0xa0>
    5692:	24fe      	movs	r4, #254	; 0xfe
    5694:	267e      	movs	r6, #126	; 0x7e
    5696:	e77f      	b.n	5598 <_free_r+0xa0>
    5698:	4642      	mov	r2, r8
    569a:	431a      	orrs	r2, r3
    569c:	604a      	str	r2, [r1, #4]
    569e:	50cb      	str	r3, [r1, r3]
    56a0:	e76c      	b.n	557c <_free_r+0x84>
    56a2:	46c0      	nop			; (mov r8, r8)
    56a4:	20000444 	.word	0x20000444
    56a8:	000001ff 	.word	0x000001ff
    56ac:	2000044c 	.word	0x2000044c
    56b0:	2000084c 	.word	0x2000084c
    56b4:	20006048 	.word	0x20006048
    56b8:	00000554 	.word	0x00000554

000056bc <_malloc_r>:
    56bc:	b5f0      	push	{r4, r5, r6, r7, lr}
    56be:	465f      	mov	r7, fp
    56c0:	464d      	mov	r5, r9
    56c2:	4656      	mov	r6, sl
    56c4:	4644      	mov	r4, r8
    56c6:	b4f0      	push	{r4, r5, r6, r7}
    56c8:	000d      	movs	r5, r1
    56ca:	350b      	adds	r5, #11
    56cc:	b083      	sub	sp, #12
    56ce:	0007      	movs	r7, r0
    56d0:	2d16      	cmp	r5, #22
    56d2:	d800      	bhi.n	56d6 <_malloc_r+0x1a>
    56d4:	e0a8      	b.n	5828 <_malloc_r+0x16c>
    56d6:	2307      	movs	r3, #7
    56d8:	439d      	bics	r5, r3
    56da:	d500      	bpl.n	56de <_malloc_r+0x22>
    56dc:	e0ce      	b.n	587c <_malloc_r+0x1c0>
    56de:	42a9      	cmp	r1, r5
    56e0:	d900      	bls.n	56e4 <_malloc_r+0x28>
    56e2:	e0cb      	b.n	587c <_malloc_r+0x1c0>
    56e4:	f000 fa94 	bl	5c10 <__malloc_lock>
    56e8:	23f8      	movs	r3, #248	; 0xf8
    56ea:	33ff      	adds	r3, #255	; 0xff
    56ec:	429d      	cmp	r5, r3
    56ee:	d800      	bhi.n	56f2 <_malloc_r+0x36>
    56f0:	e284      	b.n	5bfc <_malloc_r+0x540>
    56f2:	0a6b      	lsrs	r3, r5, #9
    56f4:	d100      	bne.n	56f8 <_malloc_r+0x3c>
    56f6:	e0c5      	b.n	5884 <_malloc_r+0x1c8>
    56f8:	2b04      	cmp	r3, #4
    56fa:	d900      	bls.n	56fe <_malloc_r+0x42>
    56fc:	e16c      	b.n	59d8 <_malloc_r+0x31c>
    56fe:	2338      	movs	r3, #56	; 0x38
    5700:	09a9      	lsrs	r1, r5, #6
    5702:	469c      	mov	ip, r3
    5704:	3301      	adds	r3, #1
    5706:	4698      	mov	r8, r3
    5708:	4488      	add	r8, r1
    570a:	4643      	mov	r3, r8
    570c:	448c      	add	ip, r1
    570e:	0059      	lsls	r1, r3, #1
    5710:	4ec9      	ldr	r6, [pc, #804]	; (5a38 <_malloc_r+0x37c>)
    5712:	0089      	lsls	r1, r1, #2
    5714:	1871      	adds	r1, r6, r1
    5716:	3908      	subs	r1, #8
    5718:	68cc      	ldr	r4, [r1, #12]
    571a:	42a1      	cmp	r1, r4
    571c:	d017      	beq.n	574e <_malloc_r+0x92>
    571e:	2303      	movs	r3, #3
    5720:	6862      	ldr	r2, [r4, #4]
    5722:	439a      	bics	r2, r3
    5724:	0013      	movs	r3, r2
    5726:	1b52      	subs	r2, r2, r5
    5728:	2a0f      	cmp	r2, #15
    572a:	dd00      	ble.n	572e <_malloc_r+0x72>
    572c:	e0b0      	b.n	5890 <_malloc_r+0x1d4>
    572e:	2003      	movs	r0, #3
    5730:	2a00      	cmp	r2, #0
    5732:	db09      	blt.n	5748 <_malloc_r+0x8c>
    5734:	e08d      	b.n	5852 <_malloc_r+0x196>
    5736:	6863      	ldr	r3, [r4, #4]
    5738:	4383      	bics	r3, r0
    573a:	1b5a      	subs	r2, r3, r5
    573c:	2a0f      	cmp	r2, #15
    573e:	dd00      	ble.n	5742 <_malloc_r+0x86>
    5740:	e0a6      	b.n	5890 <_malloc_r+0x1d4>
    5742:	2a00      	cmp	r2, #0
    5744:	db00      	blt.n	5748 <_malloc_r+0x8c>
    5746:	e084      	b.n	5852 <_malloc_r+0x196>
    5748:	68e4      	ldr	r4, [r4, #12]
    574a:	42a1      	cmp	r1, r4
    574c:	d1f3      	bne.n	5736 <_malloc_r+0x7a>
    574e:	4643      	mov	r3, r8
    5750:	9300      	str	r3, [sp, #0]
    5752:	0032      	movs	r2, r6
    5754:	6934      	ldr	r4, [r6, #16]
    5756:	3208      	adds	r2, #8
    5758:	4294      	cmp	r4, r2
    575a:	d100      	bne.n	575e <_malloc_r+0xa2>
    575c:	e18f      	b.n	5a7e <_malloc_r+0x3c2>
    575e:	2303      	movs	r3, #3
    5760:	6861      	ldr	r1, [r4, #4]
    5762:	4399      	bics	r1, r3
    5764:	000b      	movs	r3, r1
    5766:	1b48      	subs	r0, r1, r5
    5768:	280f      	cmp	r0, #15
    576a:	dd00      	ble.n	576e <_malloc_r+0xb2>
    576c:	e176      	b.n	5a5c <_malloc_r+0x3a0>
    576e:	6172      	str	r2, [r6, #20]
    5770:	6132      	str	r2, [r6, #16]
    5772:	2800      	cmp	r0, #0
    5774:	da71      	bge.n	585a <_malloc_r+0x19e>
    5776:	4ab1      	ldr	r2, [pc, #708]	; (5a3c <_malloc_r+0x380>)
    5778:	4291      	cmp	r1, r2
    577a:	d900      	bls.n	577e <_malloc_r+0xc2>
    577c:	e134      	b.n	59e8 <_malloc_r+0x32c>
    577e:	2301      	movs	r3, #1
    5780:	08c8      	lsrs	r0, r1, #3
    5782:	1082      	asrs	r2, r0, #2
    5784:	4093      	lsls	r3, r2
    5786:	6872      	ldr	r2, [r6, #4]
    5788:	431a      	orrs	r2, r3
    578a:	00c3      	lsls	r3, r0, #3
    578c:	199b      	adds	r3, r3, r6
    578e:	6898      	ldr	r0, [r3, #8]
    5790:	6072      	str	r2, [r6, #4]
    5792:	60e3      	str	r3, [r4, #12]
    5794:	60a0      	str	r0, [r4, #8]
    5796:	609c      	str	r4, [r3, #8]
    5798:	0013      	movs	r3, r2
    579a:	60c4      	str	r4, [r0, #12]
    579c:	2001      	movs	r0, #1
    579e:	9900      	ldr	r1, [sp, #0]
    57a0:	108a      	asrs	r2, r1, #2
    57a2:	4090      	lsls	r0, r2
    57a4:	4298      	cmp	r0, r3
    57a6:	d900      	bls.n	57aa <_malloc_r+0xee>
    57a8:	e075      	b.n	5896 <_malloc_r+0x1da>
    57aa:	4203      	tst	r3, r0
    57ac:	d10c      	bne.n	57c8 <_malloc_r+0x10c>
    57ae:	2203      	movs	r2, #3
    57b0:	4391      	bics	r1, r2
    57b2:	1d0a      	adds	r2, r1, #4
    57b4:	0040      	lsls	r0, r0, #1
    57b6:	9200      	str	r2, [sp, #0]
    57b8:	4203      	tst	r3, r0
    57ba:	d105      	bne.n	57c8 <_malloc_r+0x10c>
    57bc:	9a00      	ldr	r2, [sp, #0]
    57be:	0040      	lsls	r0, r0, #1
    57c0:	3204      	adds	r2, #4
    57c2:	9200      	str	r2, [sp, #0]
    57c4:	4203      	tst	r3, r0
    57c6:	d0f9      	beq.n	57bc <_malloc_r+0x100>
    57c8:	2303      	movs	r3, #3
    57ca:	4698      	mov	r8, r3
    57cc:	9a00      	ldr	r2, [sp, #0]
    57ce:	00d3      	lsls	r3, r2, #3
    57d0:	4699      	mov	r9, r3
    57d2:	44b1      	add	r9, r6
    57d4:	46cc      	mov	ip, r9
    57d6:	4692      	mov	sl, r2
    57d8:	4663      	mov	r3, ip
    57da:	68dc      	ldr	r4, [r3, #12]
    57dc:	45a4      	cmp	ip, r4
    57de:	d107      	bne.n	57f0 <_malloc_r+0x134>
    57e0:	e14f      	b.n	5a82 <_malloc_r+0x3c6>
    57e2:	2a00      	cmp	r2, #0
    57e4:	db00      	blt.n	57e8 <_malloc_r+0x12c>
    57e6:	e15f      	b.n	5aa8 <_malloc_r+0x3ec>
    57e8:	68e4      	ldr	r4, [r4, #12]
    57ea:	45a4      	cmp	ip, r4
    57ec:	d100      	bne.n	57f0 <_malloc_r+0x134>
    57ee:	e148      	b.n	5a82 <_malloc_r+0x3c6>
    57f0:	4642      	mov	r2, r8
    57f2:	6863      	ldr	r3, [r4, #4]
    57f4:	4393      	bics	r3, r2
    57f6:	1b5a      	subs	r2, r3, r5
    57f8:	2a0f      	cmp	r2, #15
    57fa:	ddf2      	ble.n	57e2 <_malloc_r+0x126>
    57fc:	2101      	movs	r1, #1
    57fe:	1963      	adds	r3, r4, r5
    5800:	430d      	orrs	r5, r1
    5802:	6065      	str	r5, [r4, #4]
    5804:	68e0      	ldr	r0, [r4, #12]
    5806:	68a5      	ldr	r5, [r4, #8]
    5808:	3608      	adds	r6, #8
    580a:	60e8      	str	r0, [r5, #12]
    580c:	4311      	orrs	r1, r2
    580e:	6085      	str	r5, [r0, #8]
    5810:	60f3      	str	r3, [r6, #12]
    5812:	60b3      	str	r3, [r6, #8]
    5814:	0038      	movs	r0, r7
    5816:	60de      	str	r6, [r3, #12]
    5818:	609e      	str	r6, [r3, #8]
    581a:	6059      	str	r1, [r3, #4]
    581c:	509a      	str	r2, [r3, r2]
    581e:	f000 f9f9 	bl	5c14 <__malloc_unlock>
    5822:	0020      	movs	r0, r4
    5824:	3008      	adds	r0, #8
    5826:	e022      	b.n	586e <_malloc_r+0x1b2>
    5828:	2910      	cmp	r1, #16
    582a:	d827      	bhi.n	587c <_malloc_r+0x1c0>
    582c:	0038      	movs	r0, r7
    582e:	f000 f9ef 	bl	5c10 <__malloc_lock>
    5832:	2510      	movs	r5, #16
    5834:	2306      	movs	r3, #6
    5836:	2102      	movs	r1, #2
    5838:	4e7f      	ldr	r6, [pc, #508]	; (5a38 <_malloc_r+0x37c>)
    583a:	009b      	lsls	r3, r3, #2
    583c:	18f3      	adds	r3, r6, r3
    583e:	001a      	movs	r2, r3
    5840:	685c      	ldr	r4, [r3, #4]
    5842:	3a08      	subs	r2, #8
    5844:	4294      	cmp	r4, r2
    5846:	d100      	bne.n	584a <_malloc_r+0x18e>
    5848:	e127      	b.n	5a9a <_malloc_r+0x3de>
    584a:	2303      	movs	r3, #3
    584c:	6862      	ldr	r2, [r4, #4]
    584e:	439a      	bics	r2, r3
    5850:	0013      	movs	r3, r2
    5852:	68e2      	ldr	r2, [r4, #12]
    5854:	68a1      	ldr	r1, [r4, #8]
    5856:	60ca      	str	r2, [r1, #12]
    5858:	6091      	str	r1, [r2, #8]
    585a:	2201      	movs	r2, #1
    585c:	18e3      	adds	r3, r4, r3
    585e:	6859      	ldr	r1, [r3, #4]
    5860:	0038      	movs	r0, r7
    5862:	430a      	orrs	r2, r1
    5864:	605a      	str	r2, [r3, #4]
    5866:	f000 f9d5 	bl	5c14 <__malloc_unlock>
    586a:	0020      	movs	r0, r4
    586c:	3008      	adds	r0, #8
    586e:	b003      	add	sp, #12
    5870:	bc3c      	pop	{r2, r3, r4, r5}
    5872:	4690      	mov	r8, r2
    5874:	4699      	mov	r9, r3
    5876:	46a2      	mov	sl, r4
    5878:	46ab      	mov	fp, r5
    587a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    587c:	230c      	movs	r3, #12
    587e:	2000      	movs	r0, #0
    5880:	603b      	str	r3, [r7, #0]
    5882:	e7f4      	b.n	586e <_malloc_r+0x1b2>
    5884:	2340      	movs	r3, #64	; 0x40
    5886:	4698      	mov	r8, r3
    5888:	3b01      	subs	r3, #1
    588a:	2180      	movs	r1, #128	; 0x80
    588c:	469c      	mov	ip, r3
    588e:	e73f      	b.n	5710 <_malloc_r+0x54>
    5890:	4663      	mov	r3, ip
    5892:	9300      	str	r3, [sp, #0]
    5894:	e75d      	b.n	5752 <_malloc_r+0x96>
    5896:	2303      	movs	r3, #3
    5898:	68b4      	ldr	r4, [r6, #8]
    589a:	6862      	ldr	r2, [r4, #4]
    589c:	439a      	bics	r2, r3
    589e:	4690      	mov	r8, r2
    58a0:	42aa      	cmp	r2, r5
    58a2:	d303      	bcc.n	58ac <_malloc_r+0x1f0>
    58a4:	1b52      	subs	r2, r2, r5
    58a6:	2a0f      	cmp	r2, #15
    58a8:	dd00      	ble.n	58ac <_malloc_r+0x1f0>
    58aa:	e087      	b.n	59bc <_malloc_r+0x300>
    58ac:	0023      	movs	r3, r4
    58ae:	4443      	add	r3, r8
    58b0:	4a63      	ldr	r2, [pc, #396]	; (5a40 <_malloc_r+0x384>)
    58b2:	9301      	str	r3, [sp, #4]
    58b4:	4b63      	ldr	r3, [pc, #396]	; (5a44 <_malloc_r+0x388>)
    58b6:	4693      	mov	fp, r2
    58b8:	681b      	ldr	r3, [r3, #0]
    58ba:	6812      	ldr	r2, [r2, #0]
    58bc:	18eb      	adds	r3, r5, r3
    58be:	3201      	adds	r2, #1
    58c0:	d100      	bne.n	58c4 <_malloc_r+0x208>
    58c2:	e157      	b.n	5b74 <_malloc_r+0x4b8>
    58c4:	4a60      	ldr	r2, [pc, #384]	; (5a48 <_malloc_r+0x38c>)
    58c6:	4694      	mov	ip, r2
    58c8:	4463      	add	r3, ip
    58ca:	0b1b      	lsrs	r3, r3, #12
    58cc:	031b      	lsls	r3, r3, #12
    58ce:	9300      	str	r3, [sp, #0]
    58d0:	9900      	ldr	r1, [sp, #0]
    58d2:	0038      	movs	r0, r7
    58d4:	f000 f9a0 	bl	5c18 <_sbrk_r>
    58d8:	0003      	movs	r3, r0
    58da:	4681      	mov	r9, r0
    58dc:	3301      	adds	r3, #1
    58de:	d061      	beq.n	59a4 <_malloc_r+0x2e8>
    58e0:	9b01      	ldr	r3, [sp, #4]
    58e2:	4283      	cmp	r3, r0
    58e4:	d900      	bls.n	58e8 <_malloc_r+0x22c>
    58e6:	e0fd      	b.n	5ae4 <_malloc_r+0x428>
    58e8:	4b58      	ldr	r3, [pc, #352]	; (5a4c <_malloc_r+0x390>)
    58ea:	9a00      	ldr	r2, [sp, #0]
    58ec:	469a      	mov	sl, r3
    58ee:	681b      	ldr	r3, [r3, #0]
    58f0:	469c      	mov	ip, r3
    58f2:	4653      	mov	r3, sl
    58f4:	4462      	add	r2, ip
    58f6:	601a      	str	r2, [r3, #0]
    58f8:	9b01      	ldr	r3, [sp, #4]
    58fa:	0011      	movs	r1, r2
    58fc:	454b      	cmp	r3, r9
    58fe:	d100      	bne.n	5902 <_malloc_r+0x246>
    5900:	e143      	b.n	5b8a <_malloc_r+0x4ce>
    5902:	465b      	mov	r3, fp
    5904:	681b      	ldr	r3, [r3, #0]
    5906:	3301      	adds	r3, #1
    5908:	d100      	bne.n	590c <_malloc_r+0x250>
    590a:	e14f      	b.n	5bac <_malloc_r+0x4f0>
    590c:	464b      	mov	r3, r9
    590e:	9a01      	ldr	r2, [sp, #4]
    5910:	1a9b      	subs	r3, r3, r2
    5912:	1859      	adds	r1, r3, r1
    5914:	4653      	mov	r3, sl
    5916:	6019      	str	r1, [r3, #0]
    5918:	2307      	movs	r3, #7
    591a:	464a      	mov	r2, r9
    591c:	4013      	ands	r3, r2
    591e:	d100      	bne.n	5922 <_malloc_r+0x266>
    5920:	e117      	b.n	5b52 <_malloc_r+0x496>
    5922:	2108      	movs	r1, #8
    5924:	4689      	mov	r9, r1
    5926:	494a      	ldr	r1, [pc, #296]	; (5a50 <_malloc_r+0x394>)
    5928:	1ad2      	subs	r2, r2, r3
    592a:	4491      	add	r9, r2
    592c:	1ac9      	subs	r1, r1, r3
    592e:	9b00      	ldr	r3, [sp, #0]
    5930:	0038      	movs	r0, r7
    5932:	444b      	add	r3, r9
    5934:	051b      	lsls	r3, r3, #20
    5936:	0d1b      	lsrs	r3, r3, #20
    5938:	1acb      	subs	r3, r1, r3
    593a:	0019      	movs	r1, r3
    593c:	469b      	mov	fp, r3
    593e:	f000 f96b 	bl	5c18 <_sbrk_r>
    5942:	1c43      	adds	r3, r0, #1
    5944:	d100      	bne.n	5948 <_malloc_r+0x28c>
    5946:	e135      	b.n	5bb4 <_malloc_r+0x4f8>
    5948:	464b      	mov	r3, r9
    594a:	1ac0      	subs	r0, r0, r3
    594c:	2301      	movs	r3, #1
    594e:	4458      	add	r0, fp
    5950:	4318      	orrs	r0, r3
    5952:	4653      	mov	r3, sl
    5954:	681b      	ldr	r3, [r3, #0]
    5956:	445b      	add	r3, fp
    5958:	0019      	movs	r1, r3
    595a:	4653      	mov	r3, sl
    595c:	6019      	str	r1, [r3, #0]
    595e:	464b      	mov	r3, r9
    5960:	60b3      	str	r3, [r6, #8]
    5962:	6058      	str	r0, [r3, #4]
    5964:	42b4      	cmp	r4, r6
    5966:	d013      	beq.n	5990 <_malloc_r+0x2d4>
    5968:	4643      	mov	r3, r8
    596a:	2b0f      	cmp	r3, #15
    596c:	d800      	bhi.n	5970 <_malloc_r+0x2b4>
    596e:	e0e1      	b.n	5b34 <_malloc_r+0x478>
    5970:	4643      	mov	r3, r8
    5972:	2207      	movs	r2, #7
    5974:	6860      	ldr	r0, [r4, #4]
    5976:	3b0c      	subs	r3, #12
    5978:	4393      	bics	r3, r2
    597a:	3a06      	subs	r2, #6
    597c:	4002      	ands	r2, r0
    597e:	2005      	movs	r0, #5
    5980:	431a      	orrs	r2, r3
    5982:	6062      	str	r2, [r4, #4]
    5984:	18e2      	adds	r2, r4, r3
    5986:	6050      	str	r0, [r2, #4]
    5988:	6090      	str	r0, [r2, #8]
    598a:	2b0f      	cmp	r3, #15
    598c:	d900      	bls.n	5990 <_malloc_r+0x2d4>
    598e:	e115      	b.n	5bbc <_malloc_r+0x500>
    5990:	4b30      	ldr	r3, [pc, #192]	; (5a54 <_malloc_r+0x398>)
    5992:	681a      	ldr	r2, [r3, #0]
    5994:	4291      	cmp	r1, r2
    5996:	d900      	bls.n	599a <_malloc_r+0x2de>
    5998:	6019      	str	r1, [r3, #0]
    599a:	4b2f      	ldr	r3, [pc, #188]	; (5a58 <_malloc_r+0x39c>)
    599c:	681a      	ldr	r2, [r3, #0]
    599e:	4291      	cmp	r1, r2
    59a0:	d900      	bls.n	59a4 <_malloc_r+0x2e8>
    59a2:	6019      	str	r1, [r3, #0]
    59a4:	2303      	movs	r3, #3
    59a6:	68b4      	ldr	r4, [r6, #8]
    59a8:	6862      	ldr	r2, [r4, #4]
    59aa:	439a      	bics	r2, r3
    59ac:	0013      	movs	r3, r2
    59ae:	1b52      	subs	r2, r2, r5
    59b0:	429d      	cmp	r5, r3
    59b2:	d900      	bls.n	59b6 <_malloc_r+0x2fa>
    59b4:	e0c1      	b.n	5b3a <_malloc_r+0x47e>
    59b6:	2a0f      	cmp	r2, #15
    59b8:	dc00      	bgt.n	59bc <_malloc_r+0x300>
    59ba:	e0be      	b.n	5b3a <_malloc_r+0x47e>
    59bc:	2301      	movs	r3, #1
    59be:	0029      	movs	r1, r5
    59c0:	1965      	adds	r5, r4, r5
    59c2:	4319      	orrs	r1, r3
    59c4:	4313      	orrs	r3, r2
    59c6:	6061      	str	r1, [r4, #4]
    59c8:	0038      	movs	r0, r7
    59ca:	60b5      	str	r5, [r6, #8]
    59cc:	606b      	str	r3, [r5, #4]
    59ce:	f000 f921 	bl	5c14 <__malloc_unlock>
    59d2:	0020      	movs	r0, r4
    59d4:	3008      	adds	r0, #8
    59d6:	e74a      	b.n	586e <_malloc_r+0x1b2>
    59d8:	2b14      	cmp	r3, #20
    59da:	d974      	bls.n	5ac6 <_malloc_r+0x40a>
    59dc:	2b54      	cmp	r3, #84	; 0x54
    59de:	d900      	bls.n	59e2 <_malloc_r+0x326>
    59e0:	e0b0      	b.n	5b44 <_malloc_r+0x488>
    59e2:	0b29      	lsrs	r1, r5, #12
    59e4:	236e      	movs	r3, #110	; 0x6e
    59e6:	e68c      	b.n	5702 <_malloc_r+0x46>
    59e8:	0a4a      	lsrs	r2, r1, #9
    59ea:	2a04      	cmp	r2, #4
    59ec:	d974      	bls.n	5ad8 <_malloc_r+0x41c>
    59ee:	2a14      	cmp	r2, #20
    59f0:	d900      	bls.n	59f4 <_malloc_r+0x338>
    59f2:	e0c2      	b.n	5b7a <_malloc_r+0x4be>
    59f4:	0010      	movs	r0, r2
    59f6:	325c      	adds	r2, #92	; 0x5c
    59f8:	305b      	adds	r0, #91	; 0x5b
    59fa:	0052      	lsls	r2, r2, #1
    59fc:	2108      	movs	r1, #8
    59fe:	4249      	negs	r1, r1
    5a00:	468c      	mov	ip, r1
    5a02:	0092      	lsls	r2, r2, #2
    5a04:	18b2      	adds	r2, r6, r2
    5a06:	4494      	add	ip, r2
    5a08:	4662      	mov	r2, ip
    5a0a:	6892      	ldr	r2, [r2, #8]
    5a0c:	310b      	adds	r1, #11
    5a0e:	4688      	mov	r8, r1
    5a10:	4594      	cmp	ip, r2
    5a12:	d100      	bne.n	5a16 <_malloc_r+0x35a>
    5a14:	e0a0      	b.n	5b58 <_malloc_r+0x49c>
    5a16:	4641      	mov	r1, r8
    5a18:	6850      	ldr	r0, [r2, #4]
    5a1a:	4388      	bics	r0, r1
    5a1c:	4283      	cmp	r3, r0
    5a1e:	d202      	bcs.n	5a26 <_malloc_r+0x36a>
    5a20:	6892      	ldr	r2, [r2, #8]
    5a22:	4594      	cmp	ip, r2
    5a24:	d1f7      	bne.n	5a16 <_malloc_r+0x35a>
    5a26:	68d3      	ldr	r3, [r2, #12]
    5a28:	469c      	mov	ip, r3
    5a2a:	6873      	ldr	r3, [r6, #4]
    5a2c:	4661      	mov	r1, ip
    5a2e:	60a2      	str	r2, [r4, #8]
    5a30:	60e1      	str	r1, [r4, #12]
    5a32:	608c      	str	r4, [r1, #8]
    5a34:	60d4      	str	r4, [r2, #12]
    5a36:	e6b1      	b.n	579c <_malloc_r+0xe0>
    5a38:	20000444 	.word	0x20000444
    5a3c:	000001ff 	.word	0x000001ff
    5a40:	20000850 	.word	0x20000850
    5a44:	20006048 	.word	0x20006048
    5a48:	0000100f 	.word	0x0000100f
    5a4c:	2000604c 	.word	0x2000604c
    5a50:	00001008 	.word	0x00001008
    5a54:	20006044 	.word	0x20006044
    5a58:	20006040 	.word	0x20006040
    5a5c:	2101      	movs	r1, #1
    5a5e:	1963      	adds	r3, r4, r5
    5a60:	430d      	orrs	r5, r1
    5a62:	4301      	orrs	r1, r0
    5a64:	6065      	str	r5, [r4, #4]
    5a66:	6173      	str	r3, [r6, #20]
    5a68:	6133      	str	r3, [r6, #16]
    5a6a:	60da      	str	r2, [r3, #12]
    5a6c:	609a      	str	r2, [r3, #8]
    5a6e:	6059      	str	r1, [r3, #4]
    5a70:	5018      	str	r0, [r3, r0]
    5a72:	0038      	movs	r0, r7
    5a74:	f000 f8ce 	bl	5c14 <__malloc_unlock>
    5a78:	0020      	movs	r0, r4
    5a7a:	3008      	adds	r0, #8
    5a7c:	e6f7      	b.n	586e <_malloc_r+0x1b2>
    5a7e:	6873      	ldr	r3, [r6, #4]
    5a80:	e68c      	b.n	579c <_malloc_r+0xe0>
    5a82:	2308      	movs	r3, #8
    5a84:	469b      	mov	fp, r3
    5a86:	3b07      	subs	r3, #7
    5a88:	44dc      	add	ip, fp
    5a8a:	469b      	mov	fp, r3
    5a8c:	44da      	add	sl, fp
    5a8e:	4643      	mov	r3, r8
    5a90:	4652      	mov	r2, sl
    5a92:	4213      	tst	r3, r2
    5a94:	d000      	beq.n	5a98 <_malloc_r+0x3dc>
    5a96:	e69f      	b.n	57d8 <_malloc_r+0x11c>
    5a98:	e033      	b.n	5b02 <_malloc_r+0x446>
    5a9a:	68dc      	ldr	r4, [r3, #12]
    5a9c:	1c8a      	adds	r2, r1, #2
    5a9e:	9200      	str	r2, [sp, #0]
    5aa0:	42a3      	cmp	r3, r4
    5aa2:	d100      	bne.n	5aa6 <_malloc_r+0x3ea>
    5aa4:	e655      	b.n	5752 <_malloc_r+0x96>
    5aa6:	e6d0      	b.n	584a <_malloc_r+0x18e>
    5aa8:	2201      	movs	r2, #1
    5aaa:	18e3      	adds	r3, r4, r3
    5aac:	6859      	ldr	r1, [r3, #4]
    5aae:	0038      	movs	r0, r7
    5ab0:	430a      	orrs	r2, r1
    5ab2:	605a      	str	r2, [r3, #4]
    5ab4:	68e3      	ldr	r3, [r4, #12]
    5ab6:	68a2      	ldr	r2, [r4, #8]
    5ab8:	60d3      	str	r3, [r2, #12]
    5aba:	609a      	str	r2, [r3, #8]
    5abc:	f000 f8aa 	bl	5c14 <__malloc_unlock>
    5ac0:	0020      	movs	r0, r4
    5ac2:	3008      	adds	r0, #8
    5ac4:	e6d3      	b.n	586e <_malloc_r+0x1b2>
    5ac6:	225b      	movs	r2, #91	; 0x5b
    5ac8:	4694      	mov	ip, r2
    5aca:	3201      	adds	r2, #1
    5acc:	4690      	mov	r8, r2
    5ace:	4498      	add	r8, r3
    5ad0:	449c      	add	ip, r3
    5ad2:	4643      	mov	r3, r8
    5ad4:	0059      	lsls	r1, r3, #1
    5ad6:	e61b      	b.n	5710 <_malloc_r+0x54>
    5ad8:	098a      	lsrs	r2, r1, #6
    5ada:	0010      	movs	r0, r2
    5adc:	3239      	adds	r2, #57	; 0x39
    5ade:	3038      	adds	r0, #56	; 0x38
    5ae0:	0052      	lsls	r2, r2, #1
    5ae2:	e78b      	b.n	59fc <_malloc_r+0x340>
    5ae4:	42b4      	cmp	r4, r6
    5ae6:	d000      	beq.n	5aea <_malloc_r+0x42e>
    5ae8:	e75c      	b.n	59a4 <_malloc_r+0x2e8>
    5aea:	e6fd      	b.n	58e8 <_malloc_r+0x22c>
    5aec:	9b00      	ldr	r3, [sp, #0]
    5aee:	3b01      	subs	r3, #1
    5af0:	9300      	str	r3, [sp, #0]
    5af2:	2308      	movs	r3, #8
    5af4:	425b      	negs	r3, r3
    5af6:	469c      	mov	ip, r3
    5af8:	44e1      	add	r9, ip
    5afa:	464b      	mov	r3, r9
    5afc:	689b      	ldr	r3, [r3, #8]
    5afe:	4599      	cmp	r9, r3
    5b00:	d17a      	bne.n	5bf8 <_malloc_r+0x53c>
    5b02:	4643      	mov	r3, r8
    5b04:	9a00      	ldr	r2, [sp, #0]
    5b06:	4213      	tst	r3, r2
    5b08:	d1f0      	bne.n	5aec <_malloc_r+0x430>
    5b0a:	6873      	ldr	r3, [r6, #4]
    5b0c:	4383      	bics	r3, r0
    5b0e:	6073      	str	r3, [r6, #4]
    5b10:	0040      	lsls	r0, r0, #1
    5b12:	4298      	cmp	r0, r3
    5b14:	d900      	bls.n	5b18 <_malloc_r+0x45c>
    5b16:	e6be      	b.n	5896 <_malloc_r+0x1da>
    5b18:	2800      	cmp	r0, #0
    5b1a:	d100      	bne.n	5b1e <_malloc_r+0x462>
    5b1c:	e6bb      	b.n	5896 <_malloc_r+0x1da>
    5b1e:	4203      	tst	r3, r0
    5b20:	d170      	bne.n	5c04 <_malloc_r+0x548>
    5b22:	4652      	mov	r2, sl
    5b24:	9200      	str	r2, [sp, #0]
    5b26:	9a00      	ldr	r2, [sp, #0]
    5b28:	0040      	lsls	r0, r0, #1
    5b2a:	3204      	adds	r2, #4
    5b2c:	9200      	str	r2, [sp, #0]
    5b2e:	4203      	tst	r3, r0
    5b30:	d0f9      	beq.n	5b26 <_malloc_r+0x46a>
    5b32:	e64b      	b.n	57cc <_malloc_r+0x110>
    5b34:	2301      	movs	r3, #1
    5b36:	464a      	mov	r2, r9
    5b38:	6053      	str	r3, [r2, #4]
    5b3a:	0038      	movs	r0, r7
    5b3c:	f000 f86a 	bl	5c14 <__malloc_unlock>
    5b40:	2000      	movs	r0, #0
    5b42:	e694      	b.n	586e <_malloc_r+0x1b2>
    5b44:	22aa      	movs	r2, #170	; 0xaa
    5b46:	0052      	lsls	r2, r2, #1
    5b48:	4293      	cmp	r3, r2
    5b4a:	d80d      	bhi.n	5b68 <_malloc_r+0x4ac>
    5b4c:	0be9      	lsrs	r1, r5, #15
    5b4e:	2377      	movs	r3, #119	; 0x77
    5b50:	e5d7      	b.n	5702 <_malloc_r+0x46>
    5b52:	2180      	movs	r1, #128	; 0x80
    5b54:	0149      	lsls	r1, r1, #5
    5b56:	e6ea      	b.n	592e <_malloc_r+0x272>
    5b58:	2301      	movs	r3, #1
    5b5a:	1080      	asrs	r0, r0, #2
    5b5c:	4083      	lsls	r3, r0
    5b5e:	6872      	ldr	r2, [r6, #4]
    5b60:	4313      	orrs	r3, r2
    5b62:	6073      	str	r3, [r6, #4]
    5b64:	4662      	mov	r2, ip
    5b66:	e761      	b.n	5a2c <_malloc_r+0x370>
    5b68:	4a28      	ldr	r2, [pc, #160]	; (5c0c <_malloc_r+0x550>)
    5b6a:	4293      	cmp	r3, r2
    5b6c:	d818      	bhi.n	5ba0 <_malloc_r+0x4e4>
    5b6e:	0ca9      	lsrs	r1, r5, #18
    5b70:	237c      	movs	r3, #124	; 0x7c
    5b72:	e5c6      	b.n	5702 <_malloc_r+0x46>
    5b74:	3310      	adds	r3, #16
    5b76:	9300      	str	r3, [sp, #0]
    5b78:	e6aa      	b.n	58d0 <_malloc_r+0x214>
    5b7a:	2a54      	cmp	r2, #84	; 0x54
    5b7c:	d826      	bhi.n	5bcc <_malloc_r+0x510>
    5b7e:	0b0a      	lsrs	r2, r1, #12
    5b80:	0010      	movs	r0, r2
    5b82:	326f      	adds	r2, #111	; 0x6f
    5b84:	306e      	adds	r0, #110	; 0x6e
    5b86:	0052      	lsls	r2, r2, #1
    5b88:	e738      	b.n	59fc <_malloc_r+0x340>
    5b8a:	051b      	lsls	r3, r3, #20
    5b8c:	d000      	beq.n	5b90 <_malloc_r+0x4d4>
    5b8e:	e6b8      	b.n	5902 <_malloc_r+0x246>
    5b90:	9b00      	ldr	r3, [sp, #0]
    5b92:	68b2      	ldr	r2, [r6, #8]
    5b94:	4443      	add	r3, r8
    5b96:	0018      	movs	r0, r3
    5b98:	2301      	movs	r3, #1
    5b9a:	4303      	orrs	r3, r0
    5b9c:	6053      	str	r3, [r2, #4]
    5b9e:	e6f7      	b.n	5990 <_malloc_r+0x2d4>
    5ba0:	237f      	movs	r3, #127	; 0x7f
    5ba2:	4698      	mov	r8, r3
    5ba4:	3b01      	subs	r3, #1
    5ba6:	21fe      	movs	r1, #254	; 0xfe
    5ba8:	469c      	mov	ip, r3
    5baa:	e5b1      	b.n	5710 <_malloc_r+0x54>
    5bac:	465b      	mov	r3, fp
    5bae:	464a      	mov	r2, r9
    5bb0:	601a      	str	r2, [r3, #0]
    5bb2:	e6b1      	b.n	5918 <_malloc_r+0x25c>
    5bb4:	2300      	movs	r3, #0
    5bb6:	2001      	movs	r0, #1
    5bb8:	469b      	mov	fp, r3
    5bba:	e6ca      	b.n	5952 <_malloc_r+0x296>
    5bbc:	0021      	movs	r1, r4
    5bbe:	0038      	movs	r0, r7
    5bc0:	3108      	adds	r1, #8
    5bc2:	f7ff fc99 	bl	54f8 <_free_r>
    5bc6:	4653      	mov	r3, sl
    5bc8:	6819      	ldr	r1, [r3, #0]
    5bca:	e6e1      	b.n	5990 <_malloc_r+0x2d4>
    5bcc:	20aa      	movs	r0, #170	; 0xaa
    5bce:	0040      	lsls	r0, r0, #1
    5bd0:	4282      	cmp	r2, r0
    5bd2:	d805      	bhi.n	5be0 <_malloc_r+0x524>
    5bd4:	0bca      	lsrs	r2, r1, #15
    5bd6:	0010      	movs	r0, r2
    5bd8:	3278      	adds	r2, #120	; 0x78
    5bda:	3077      	adds	r0, #119	; 0x77
    5bdc:	0052      	lsls	r2, r2, #1
    5bde:	e70d      	b.n	59fc <_malloc_r+0x340>
    5be0:	480a      	ldr	r0, [pc, #40]	; (5c0c <_malloc_r+0x550>)
    5be2:	4282      	cmp	r2, r0
    5be4:	d805      	bhi.n	5bf2 <_malloc_r+0x536>
    5be6:	0c8a      	lsrs	r2, r1, #18
    5be8:	0010      	movs	r0, r2
    5bea:	327d      	adds	r2, #125	; 0x7d
    5bec:	307c      	adds	r0, #124	; 0x7c
    5bee:	0052      	lsls	r2, r2, #1
    5bf0:	e704      	b.n	59fc <_malloc_r+0x340>
    5bf2:	22fe      	movs	r2, #254	; 0xfe
    5bf4:	207e      	movs	r0, #126	; 0x7e
    5bf6:	e701      	b.n	59fc <_malloc_r+0x340>
    5bf8:	6873      	ldr	r3, [r6, #4]
    5bfa:	e789      	b.n	5b10 <_malloc_r+0x454>
    5bfc:	08e9      	lsrs	r1, r5, #3
    5bfe:	1c4b      	adds	r3, r1, #1
    5c00:	005b      	lsls	r3, r3, #1
    5c02:	e619      	b.n	5838 <_malloc_r+0x17c>
    5c04:	4653      	mov	r3, sl
    5c06:	9300      	str	r3, [sp, #0]
    5c08:	e5e0      	b.n	57cc <_malloc_r+0x110>
    5c0a:	46c0      	nop			; (mov r8, r8)
    5c0c:	00000554 	.word	0x00000554

00005c10 <__malloc_lock>:
    5c10:	4770      	bx	lr
    5c12:	46c0      	nop			; (mov r8, r8)

00005c14 <__malloc_unlock>:
    5c14:	4770      	bx	lr
    5c16:	46c0      	nop			; (mov r8, r8)

00005c18 <_sbrk_r>:
    5c18:	2300      	movs	r3, #0
    5c1a:	b570      	push	{r4, r5, r6, lr}
    5c1c:	4c06      	ldr	r4, [pc, #24]	; (5c38 <_sbrk_r+0x20>)
    5c1e:	0005      	movs	r5, r0
    5c20:	0008      	movs	r0, r1
    5c22:	6023      	str	r3, [r4, #0]
    5c24:	f7fb f82c 	bl	c80 <_sbrk>
    5c28:	1c43      	adds	r3, r0, #1
    5c2a:	d000      	beq.n	5c2e <_sbrk_r+0x16>
    5c2c:	bd70      	pop	{r4, r5, r6, pc}
    5c2e:	6823      	ldr	r3, [r4, #0]
    5c30:	2b00      	cmp	r3, #0
    5c32:	d0fb      	beq.n	5c2c <_sbrk_r+0x14>
    5c34:	602b      	str	r3, [r5, #0]
    5c36:	e7f9      	b.n	5c2c <_sbrk_r+0x14>
    5c38:	20006074 	.word	0x20006074

00005c3c <osThreadExit>:
    5c3c:	b580      	push	{r7, lr}
    5c3e:	4f03      	ldr	r7, [pc, #12]	; (5c4c <osThreadExit+0x10>)
    5c40:	46bc      	mov	ip, r7
    5c42:	df00      	svc	0
    5c44:	4f02      	ldr	r7, [pc, #8]	; (5c50 <osThreadExit+0x14>)
    5c46:	46bc      	mov	ip, r7
    5c48:	df00      	svc	0
    5c4a:	e7fe      	b.n	5c4a <osThreadExit+0xe>
    5c4c:	0000607d 	.word	0x0000607d
    5c50:	00006099 	.word	0x00006099

00005c54 <svcKernelInitialize>:
    5c54:	b570      	push	{r4, r5, r6, lr}
    5c56:	4c39      	ldr	r4, [pc, #228]	; (5d3c <svcKernelInitialize+0xe8>)
    5c58:	b084      	sub	sp, #16
    5c5a:	7823      	ldrb	r3, [r4, #0]
    5c5c:	2b00      	cmp	r3, #0
    5c5e:	d00b      	beq.n	5c78 <svcKernelInitialize+0x24>
    5c60:	22ff      	movs	r2, #255	; 0xff
    5c62:	4b37      	ldr	r3, [pc, #220]	; (5d40 <svcKernelInitialize+0xec>)
    5c64:	681b      	ldr	r3, [r3, #0]
    5c66:	709a      	strb	r2, [r3, #2]
    5c68:	2301      	movs	r3, #1
    5c6a:	2200      	movs	r2, #0
    5c6c:	2000      	movs	r0, #0
    5c6e:	7023      	strb	r3, [r4, #0]
    5c70:	4b34      	ldr	r3, [pc, #208]	; (5d44 <svcKernelInitialize+0xf0>)
    5c72:	701a      	strb	r2, [r3, #0]
    5c74:	b004      	add	sp, #16
    5c76:	bd70      	pop	{r4, r5, r6, pc}
    5c78:	4b33      	ldr	r3, [pc, #204]	; (5d48 <svcKernelInitialize+0xf4>)
    5c7a:	4e34      	ldr	r6, [pc, #208]	; (5d4c <svcKernelInitialize+0xf8>)
    5c7c:	6819      	ldr	r1, [r3, #0]
    5c7e:	0030      	movs	r0, r6
    5c80:	f001 fc60 	bl	7544 <rt_init_mem>
    5c84:	0003      	movs	r3, r0
    5c86:	2085      	movs	r0, #133	; 0x85
    5c88:	2b00      	cmp	r3, #0
    5c8a:	d1f3      	bne.n	5c74 <svcKernelInitialize+0x20>
    5c8c:	f002 fe70 	bl	8970 <rt_sys_init>
    5c90:	21ff      	movs	r1, #255	; 0xff
    5c92:	4a2b      	ldr	r2, [pc, #172]	; (5d40 <svcKernelInitialize+0xec>)
    5c94:	7823      	ldrb	r3, [r4, #0]
    5c96:	6812      	ldr	r2, [r2, #0]
    5c98:	7091      	strb	r1, [r2, #2]
    5c9a:	2b00      	cmp	r3, #0
    5c9c:	d1e4      	bne.n	5c68 <svcKernelInitialize+0x14>
    5c9e:	4b2c      	ldr	r3, [pc, #176]	; (5d50 <svcKernelInitialize+0xfc>)
    5ca0:	681a      	ldr	r2, [r3, #0]
    5ca2:	9201      	str	r2, [sp, #4]
    5ca4:	2a00      	cmp	r2, #0
    5ca6:	d047      	beq.n	5d38 <svcKernelInitialize+0xe4>
    5ca8:	685d      	ldr	r5, [r3, #4]
    5caa:	2d00      	cmp	r5, #0
    5cac:	d044      	beq.n	5d38 <svcKernelInitialize+0xe4>
    5cae:	782b      	ldrb	r3, [r5, #0]
    5cb0:	2b00      	cmp	r3, #0
    5cb2:	d141      	bne.n	5d38 <svcKernelInitialize+0xe4>
    5cb4:	0011      	movs	r1, r2
    5cb6:	3104      	adds	r1, #4
    5cb8:	0089      	lsls	r1, r1, #2
    5cba:	b289      	uxth	r1, r1
    5cbc:	0028      	movs	r0, r5
    5cbe:	f001 feeb 	bl	7a98 <rt_mbx_init>
    5cc2:	4b24      	ldr	r3, [pc, #144]	; (5d54 <svcKernelInitialize+0x100>)
    5cc4:	601d      	str	r5, [r3, #0]
    5cc6:	4b24      	ldr	r3, [pc, #144]	; (5d58 <svcKernelInitialize+0x104>)
    5cc8:	681a      	ldr	r2, [r3, #0]
    5cca:	9201      	str	r2, [sp, #4]
    5ccc:	2a00      	cmp	r2, #0
    5cce:	d01e      	beq.n	5d0e <svcKernelInitialize+0xba>
    5cd0:	685a      	ldr	r2, [r3, #4]
    5cd2:	9202      	str	r2, [sp, #8]
    5cd4:	3203      	adds	r2, #3
    5cd6:	2a06      	cmp	r2, #6
    5cd8:	d819      	bhi.n	5d0e <svcKernelInitialize+0xba>
    5cda:	68db      	ldr	r3, [r3, #12]
    5cdc:	9303      	str	r3, [sp, #12]
    5cde:	2b00      	cmp	r3, #0
    5ce0:	d019      	beq.n	5d16 <svcKernelInitialize+0xc2>
    5ce2:	0019      	movs	r1, r3
    5ce4:	0030      	movs	r0, r6
    5ce6:	f001 fc3b 	bl	7560 <rt_alloc_mem>
    5cea:	1e05      	subs	r5, r0, #0
    5cec:	d00f      	beq.n	5d0e <svcKernelInitialize+0xba>
    5cee:	9b03      	ldr	r3, [sp, #12]
    5cf0:	9902      	ldr	r1, [sp, #8]
    5cf2:	021b      	lsls	r3, r3, #8
    5cf4:	3104      	adds	r1, #4
    5cf6:	4319      	orrs	r1, r3
    5cf8:	0002      	movs	r2, r0
    5cfa:	2300      	movs	r3, #0
    5cfc:	9801      	ldr	r0, [sp, #4]
    5cfe:	f002 fcf7 	bl	86f0 <rt_tsk_create>
    5d02:	2800      	cmp	r0, #0
    5d04:	d110      	bne.n	5d28 <svcKernelInitialize+0xd4>
    5d06:	0029      	movs	r1, r5
    5d08:	0030      	movs	r0, r6
    5d0a:	f001 fc4b 	bl	75a4 <rt_free_mem>
    5d0e:	2300      	movs	r3, #0
    5d10:	4a12      	ldr	r2, [pc, #72]	; (5d5c <svcKernelInitialize+0x108>)
    5d12:	6013      	str	r3, [r2, #0]
    5d14:	e7a8      	b.n	5c68 <svcKernelInitialize+0x14>
    5d16:	9902      	ldr	r1, [sp, #8]
    5d18:	2300      	movs	r3, #0
    5d1a:	3104      	adds	r1, #4
    5d1c:	2200      	movs	r2, #0
    5d1e:	9801      	ldr	r0, [sp, #4]
    5d20:	f002 fce6 	bl	86f0 <rt_tsk_create>
    5d24:	2800      	cmp	r0, #0
    5d26:	d0f2      	beq.n	5d0e <svcKernelInitialize+0xba>
    5d28:	3801      	subs	r0, #1
    5d2a:	4b0d      	ldr	r3, [pc, #52]	; (5d60 <svcKernelInitialize+0x10c>)
    5d2c:	0080      	lsls	r0, r0, #2
    5d2e:	58c3      	ldr	r3, [r0, r3]
    5d30:	490c      	ldr	r1, [pc, #48]	; (5d64 <svcKernelInitialize+0x110>)
    5d32:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5d34:	6351      	str	r1, [r2, #52]	; 0x34
    5d36:	e7eb      	b.n	5d10 <svcKernelInitialize+0xbc>
    5d38:	2500      	movs	r5, #0
    5d3a:	e7c2      	b.n	5cc2 <svcKernelInitialize+0x6e>
    5d3c:	20006078 	.word	0x20006078
    5d40:	200060b8 	.word	0x200060b8
    5d44:	20006079 	.word	0x20006079
    5d48:	00008c78 	.word	0x00008c78
    5d4c:	200039f8 	.word	0x200039f8
    5d50:	00008c90 	.word	0x00008c90
    5d54:	20004d10 	.word	0x20004d10
    5d58:	00008c80 	.word	0x00008c80
    5d5c:	20004cec 	.word	0x20004cec
    5d60:	20004cdc 	.word	0x20004cdc
    5d64:	00005c3d 	.word	0x00005c3d

00005d68 <svcKernelStart>:
    5d68:	b570      	push	{r4, r5, r6, lr}
    5d6a:	4c10      	ldr	r4, [pc, #64]	; (5dac <svcKernelStart+0x44>)
    5d6c:	7823      	ldrb	r3, [r4, #0]
    5d6e:	2b00      	cmp	r3, #0
    5d70:	d001      	beq.n	5d76 <svcKernelStart+0xe>
    5d72:	2000      	movs	r0, #0
    5d74:	bd70      	pop	{r4, r5, r6, pc}
    5d76:	4d0e      	ldr	r5, [pc, #56]	; (5db0 <svcKernelStart+0x48>)
    5d78:	3324      	adds	r3, #36	; 0x24
    5d7a:	682a      	ldr	r2, [r5, #0]
    5d7c:	2000      	movs	r0, #0
    5d7e:	5cd1      	ldrb	r1, [r2, r3]
    5d80:	f002 fc5a 	bl	8638 <rt_tsk_prio>
    5d84:	682b      	ldr	r3, [r5, #0]
    5d86:	78da      	ldrb	r2, [r3, #3]
    5d88:	2aff      	cmp	r2, #255	; 0xff
    5d8a:	d007      	beq.n	5d9c <svcKernelStart+0x34>
    5d8c:	686a      	ldr	r2, [r5, #4]
    5d8e:	2a00      	cmp	r2, #0
    5d90:	d009      	beq.n	5da6 <svcKernelStart+0x3e>
    5d92:	f002 fe65 	bl	8a60 <rt_sys_start>
    5d96:	2301      	movs	r3, #1
    5d98:	7023      	strb	r3, [r4, #0]
    5d9a:	e7ea      	b.n	5d72 <svcKernelStart+0xa>
    5d9c:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5d9e:	3220      	adds	r2, #32
    5da0:	f382 8809 	msr	PSP, r2
    5da4:	e7f2      	b.n	5d8c <svcKernelStart+0x24>
    5da6:	c50c      	stmia	r5!, {r2, r3}
    5da8:	e7f3      	b.n	5d92 <svcKernelStart+0x2a>
    5daa:	46c0      	nop			; (mov r8, r8)
    5dac:	20006079 	.word	0x20006079
    5db0:	200060b8 	.word	0x200060b8

00005db4 <svcKernelRunning>:
    5db4:	4b01      	ldr	r3, [pc, #4]	; (5dbc <svcKernelRunning+0x8>)
    5db6:	7818      	ldrb	r0, [r3, #0]
    5db8:	4770      	bx	lr
    5dba:	46c0      	nop			; (mov r8, r8)
    5dbc:	20006079 	.word	0x20006079

00005dc0 <svcKernelSysTick>:
    5dc0:	b510      	push	{r4, lr}
    5dc2:	b082      	sub	sp, #8
    5dc4:	f002 fb88 	bl	84d8 <os_tick_val>
    5dc8:	0004      	movs	r4, r0
    5dca:	f002 fb8f 	bl	84ec <os_tick_ovf>
    5dce:	2800      	cmp	r0, #0
    5dd0:	d109      	bne.n	5de6 <svcKernelSysTick+0x26>
    5dd2:	4b0d      	ldr	r3, [pc, #52]	; (5e08 <svcKernelSysTick+0x48>)
    5dd4:	681b      	ldr	r3, [r3, #0]
    5dd6:	1c58      	adds	r0, r3, #1
    5dd8:	9301      	str	r3, [sp, #4]
    5dda:	4b0c      	ldr	r3, [pc, #48]	; (5e0c <svcKernelSysTick+0x4c>)
    5ddc:	681b      	ldr	r3, [r3, #0]
    5dde:	4358      	muls	r0, r3
    5de0:	1900      	adds	r0, r0, r4
    5de2:	b002      	add	sp, #8
    5de4:	bd10      	pop	{r4, pc}
    5de6:	f002 fb77 	bl	84d8 <os_tick_val>
    5dea:	4284      	cmp	r4, r0
    5dec:	d809      	bhi.n	5e02 <svcKernelSysTick+0x42>
    5dee:	4b06      	ldr	r3, [pc, #24]	; (5e08 <svcKernelSysTick+0x48>)
    5df0:	4a06      	ldr	r2, [pc, #24]	; (5e0c <svcKernelSysTick+0x4c>)
    5df2:	681b      	ldr	r3, [r3, #0]
    5df4:	6810      	ldr	r0, [r2, #0]
    5df6:	9301      	str	r3, [sp, #4]
    5df8:	3001      	adds	r0, #1
    5dfa:	3301      	adds	r3, #1
    5dfc:	4358      	muls	r0, r3
    5dfe:	1900      	adds	r0, r0, r4
    5e00:	e7ef      	b.n	5de2 <svcKernelSysTick+0x22>
    5e02:	0004      	movs	r4, r0
    5e04:	e7f3      	b.n	5dee <svcKernelSysTick+0x2e>
    5e06:	46c0      	nop			; (mov r8, r8)
    5e08:	00008c58 	.word	0x00008c58
    5e0c:	20006080 	.word	0x20006080

00005e10 <osKernelInitialize>:
    5e10:	b5f0      	push	{r4, r5, r6, r7, lr}
    5e12:	b085      	sub	sp, #20
    5e14:	f3ef 8405 	mrs	r4, IPSR
    5e18:	2582      	movs	r5, #130	; 0x82
    5e1a:	2c00      	cmp	r4, #0
    5e1c:	d002      	beq.n	5e24 <osKernelInitialize+0x14>
    5e1e:	0028      	movs	r0, r5
    5e20:	b005      	add	sp, #20
    5e22:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5e24:	f3ef 8414 	mrs	r4, CONTROL
    5e28:	07e4      	lsls	r4, r4, #31
    5e2a:	d504      	bpl.n	5e36 <osKernelInitialize+0x26>
    5e2c:	4f45      	ldr	r7, [pc, #276]	; (5f44 <osKernelInitialize+0x134>)
    5e2e:	46bc      	mov	ip, r7
    5e30:	df00      	svc	0
    5e32:	0005      	movs	r5, r0
    5e34:	e7f3      	b.n	5e1e <osKernelInitialize+0xe>
    5e36:	4c38      	ldr	r4, [pc, #224]	; (5f18 <osKernelInitialize+0x108>)
    5e38:	7823      	ldrb	r3, [r4, #0]
    5e3a:	2b00      	cmp	r3, #0
    5e3c:	d00a      	beq.n	5e54 <osKernelInitialize+0x44>
    5e3e:	22ff      	movs	r2, #255	; 0xff
    5e40:	4b36      	ldr	r3, [pc, #216]	; (5f1c <osKernelInitialize+0x10c>)
    5e42:	681b      	ldr	r3, [r3, #0]
    5e44:	709a      	strb	r2, [r3, #2]
    5e46:	2301      	movs	r3, #1
    5e48:	2200      	movs	r2, #0
    5e4a:	7023      	strb	r3, [r4, #0]
    5e4c:	4b34      	ldr	r3, [pc, #208]	; (5f20 <osKernelInitialize+0x110>)
    5e4e:	2500      	movs	r5, #0
    5e50:	701a      	strb	r2, [r3, #0]
    5e52:	e7e4      	b.n	5e1e <osKernelInitialize+0xe>
    5e54:	4e33      	ldr	r6, [pc, #204]	; (5f24 <osKernelInitialize+0x114>)
    5e56:	4b34      	ldr	r3, [pc, #208]	; (5f28 <osKernelInitialize+0x118>)
    5e58:	0030      	movs	r0, r6
    5e5a:	6819      	ldr	r1, [r3, #0]
    5e5c:	f001 fb72 	bl	7544 <rt_init_mem>
    5e60:	3503      	adds	r5, #3
    5e62:	2800      	cmp	r0, #0
    5e64:	d1db      	bne.n	5e1e <osKernelInitialize+0xe>
    5e66:	f002 fd83 	bl	8970 <rt_sys_init>
    5e6a:	21ff      	movs	r1, #255	; 0xff
    5e6c:	4a2b      	ldr	r2, [pc, #172]	; (5f1c <osKernelInitialize+0x10c>)
    5e6e:	7823      	ldrb	r3, [r4, #0]
    5e70:	6812      	ldr	r2, [r2, #0]
    5e72:	7091      	strb	r1, [r2, #2]
    5e74:	2b00      	cmp	r3, #0
    5e76:	d1e6      	bne.n	5e46 <osKernelInitialize+0x36>
    5e78:	4b2c      	ldr	r3, [pc, #176]	; (5f2c <osKernelInitialize+0x11c>)
    5e7a:	681a      	ldr	r2, [r3, #0]
    5e7c:	9201      	str	r2, [sp, #4]
    5e7e:	2a00      	cmp	r2, #0
    5e80:	d047      	beq.n	5f12 <osKernelInitialize+0x102>
    5e82:	685d      	ldr	r5, [r3, #4]
    5e84:	2d00      	cmp	r5, #0
    5e86:	d044      	beq.n	5f12 <osKernelInitialize+0x102>
    5e88:	782b      	ldrb	r3, [r5, #0]
    5e8a:	2b00      	cmp	r3, #0
    5e8c:	d141      	bne.n	5f12 <osKernelInitialize+0x102>
    5e8e:	0011      	movs	r1, r2
    5e90:	3104      	adds	r1, #4
    5e92:	0089      	lsls	r1, r1, #2
    5e94:	b289      	uxth	r1, r1
    5e96:	0028      	movs	r0, r5
    5e98:	f001 fdfe 	bl	7a98 <rt_mbx_init>
    5e9c:	4b24      	ldr	r3, [pc, #144]	; (5f30 <osKernelInitialize+0x120>)
    5e9e:	601d      	str	r5, [r3, #0]
    5ea0:	4b24      	ldr	r3, [pc, #144]	; (5f34 <osKernelInitialize+0x124>)
    5ea2:	681a      	ldr	r2, [r3, #0]
    5ea4:	9201      	str	r2, [sp, #4]
    5ea6:	2a00      	cmp	r2, #0
    5ea8:	d01e      	beq.n	5ee8 <osKernelInitialize+0xd8>
    5eaa:	685a      	ldr	r2, [r3, #4]
    5eac:	9202      	str	r2, [sp, #8]
    5eae:	3203      	adds	r2, #3
    5eb0:	2a06      	cmp	r2, #6
    5eb2:	d819      	bhi.n	5ee8 <osKernelInitialize+0xd8>
    5eb4:	68db      	ldr	r3, [r3, #12]
    5eb6:	9303      	str	r3, [sp, #12]
    5eb8:	2b00      	cmp	r3, #0
    5eba:	d019      	beq.n	5ef0 <osKernelInitialize+0xe0>
    5ebc:	0019      	movs	r1, r3
    5ebe:	0030      	movs	r0, r6
    5ec0:	f001 fb4e 	bl	7560 <rt_alloc_mem>
    5ec4:	1e05      	subs	r5, r0, #0
    5ec6:	d00f      	beq.n	5ee8 <osKernelInitialize+0xd8>
    5ec8:	9902      	ldr	r1, [sp, #8]
    5eca:	9b03      	ldr	r3, [sp, #12]
    5ecc:	3104      	adds	r1, #4
    5ece:	021b      	lsls	r3, r3, #8
    5ed0:	4319      	orrs	r1, r3
    5ed2:	0002      	movs	r2, r0
    5ed4:	2300      	movs	r3, #0
    5ed6:	9801      	ldr	r0, [sp, #4]
    5ed8:	f002 fc0a 	bl	86f0 <rt_tsk_create>
    5edc:	2800      	cmp	r0, #0
    5ede:	d110      	bne.n	5f02 <osKernelInitialize+0xf2>
    5ee0:	0029      	movs	r1, r5
    5ee2:	0030      	movs	r0, r6
    5ee4:	f001 fb5e 	bl	75a4 <rt_free_mem>
    5ee8:	2300      	movs	r3, #0
    5eea:	4a13      	ldr	r2, [pc, #76]	; (5f38 <osKernelInitialize+0x128>)
    5eec:	6013      	str	r3, [r2, #0]
    5eee:	e7aa      	b.n	5e46 <osKernelInitialize+0x36>
    5ef0:	9902      	ldr	r1, [sp, #8]
    5ef2:	2300      	movs	r3, #0
    5ef4:	3104      	adds	r1, #4
    5ef6:	2200      	movs	r2, #0
    5ef8:	9801      	ldr	r0, [sp, #4]
    5efa:	f002 fbf9 	bl	86f0 <rt_tsk_create>
    5efe:	2800      	cmp	r0, #0
    5f00:	d0f2      	beq.n	5ee8 <osKernelInitialize+0xd8>
    5f02:	3801      	subs	r0, #1
    5f04:	4b0d      	ldr	r3, [pc, #52]	; (5f3c <osKernelInitialize+0x12c>)
    5f06:	0080      	lsls	r0, r0, #2
    5f08:	58c3      	ldr	r3, [r0, r3]
    5f0a:	490d      	ldr	r1, [pc, #52]	; (5f40 <osKernelInitialize+0x130>)
    5f0c:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5f0e:	6351      	str	r1, [r2, #52]	; 0x34
    5f10:	e7eb      	b.n	5eea <osKernelInitialize+0xda>
    5f12:	2500      	movs	r5, #0
    5f14:	e7c2      	b.n	5e9c <osKernelInitialize+0x8c>
    5f16:	46c0      	nop			; (mov r8, r8)
    5f18:	20006078 	.word	0x20006078
    5f1c:	200060b8 	.word	0x200060b8
    5f20:	20006079 	.word	0x20006079
    5f24:	200039f8 	.word	0x200039f8
    5f28:	00008c78 	.word	0x00008c78
    5f2c:	00008c90 	.word	0x00008c90
    5f30:	20004d10 	.word	0x20004d10
    5f34:	00008c80 	.word	0x00008c80
    5f38:	20004cec 	.word	0x20004cec
    5f3c:	20004cdc 	.word	0x20004cdc
    5f40:	00005c3d 	.word	0x00005c3d
    5f44:	00005c55 	.word	0x00005c55

00005f48 <osKernelStart>:
    5f48:	b5b0      	push	{r4, r5, r7, lr}
    5f4a:	b088      	sub	sp, #32
    5f4c:	f3ef 8405 	mrs	r4, IPSR
    5f50:	2582      	movs	r5, #130	; 0x82
    5f52:	2c00      	cmp	r4, #0
    5f54:	d002      	beq.n	5f5c <osKernelStart+0x14>
    5f56:	0028      	movs	r0, r5
    5f58:	b008      	add	sp, #32
    5f5a:	bdb0      	pop	{r4, r5, r7, pc}
    5f5c:	f3ef 8414 	mrs	r4, CONTROL
    5f60:	3d7f      	subs	r5, #127	; 0x7f
    5f62:	402c      	ands	r4, r5
    5f64:	2c02      	cmp	r4, #2
    5f66:	d01c      	beq.n	5fa2 <osKernelStart+0x5a>
    5f68:	2c03      	cmp	r4, #3
    5f6a:	d014      	beq.n	5f96 <osKernelStart+0x4e>
    5f6c:	2c01      	cmp	r4, #1
    5f6e:	d020      	beq.n	5fb2 <osKernelStart+0x6a>
    5f70:	ac08      	add	r4, sp, #32
    5f72:	f384 8809 	msr	PSP, r4
    5f76:	4c10      	ldr	r4, [pc, #64]	; (5fb8 <osKernelStart+0x70>)
    5f78:	7824      	ldrb	r4, [r4, #0]
    5f7a:	07e4      	lsls	r4, r4, #31
    5f7c:	d515      	bpl.n	5faa <osKernelStart+0x62>
    5f7e:	2402      	movs	r4, #2
    5f80:	f384 8814 	msr	CONTROL, r4
    5f84:	f3bf 8f4f 	dsb	sy
    5f88:	f3bf 8f6f 	isb	sy
    5f8c:	4f0b      	ldr	r7, [pc, #44]	; (5fbc <osKernelStart+0x74>)
    5f8e:	46bc      	mov	ip, r7
    5f90:	df00      	svc	0
    5f92:	0005      	movs	r5, r0
    5f94:	e7df      	b.n	5f56 <osKernelStart+0xe>
    5f96:	4c08      	ldr	r4, [pc, #32]	; (5fb8 <osKernelStart+0x70>)
    5f98:	25ff      	movs	r5, #255	; 0xff
    5f9a:	7824      	ldrb	r4, [r4, #0]
    5f9c:	07e4      	lsls	r4, r4, #31
    5f9e:	d4da      	bmi.n	5f56 <osKernelStart+0xe>
    5fa0:	e7f4      	b.n	5f8c <osKernelStart+0x44>
    5fa2:	4c05      	ldr	r4, [pc, #20]	; (5fb8 <osKernelStart+0x70>)
    5fa4:	7824      	ldrb	r4, [r4, #0]
    5fa6:	07e4      	lsls	r4, r4, #31
    5fa8:	d4f0      	bmi.n	5f8c <osKernelStart+0x44>
    5faa:	2403      	movs	r4, #3
    5fac:	f384 8814 	msr	CONTROL, r4
    5fb0:	e7e8      	b.n	5f84 <osKernelStart+0x3c>
    5fb2:	25ff      	movs	r5, #255	; 0xff
    5fb4:	e7cf      	b.n	5f56 <osKernelStart+0xe>
    5fb6:	46c0      	nop			; (mov r8, r8)
    5fb8:	00008c5c 	.word	0x00008c5c
    5fbc:	00005d69 	.word	0x00005d69

00005fc0 <osKernelRunning>:
    5fc0:	b590      	push	{r4, r7, lr}
    5fc2:	f3ef 8405 	mrs	r4, IPSR
    5fc6:	2c00      	cmp	r4, #0
    5fc8:	d107      	bne.n	5fda <osKernelRunning+0x1a>
    5fca:	f3ef 8414 	mrs	r4, CONTROL
    5fce:	07e4      	lsls	r4, r4, #31
    5fd0:	d503      	bpl.n	5fda <osKernelRunning+0x1a>
    5fd2:	4f04      	ldr	r7, [pc, #16]	; (5fe4 <osKernelRunning+0x24>)
    5fd4:	46bc      	mov	ip, r7
    5fd6:	df00      	svc	0
    5fd8:	e001      	b.n	5fde <osKernelRunning+0x1e>
    5fda:	4b01      	ldr	r3, [pc, #4]	; (5fe0 <osKernelRunning+0x20>)
    5fdc:	7818      	ldrb	r0, [r3, #0]
    5fde:	bd90      	pop	{r4, r7, pc}
    5fe0:	20006079 	.word	0x20006079
    5fe4:	00005db5 	.word	0x00005db5

00005fe8 <osKernelSysTick>:
    5fe8:	b5b0      	push	{r4, r5, r7, lr}
    5fea:	f3ef 8405 	mrs	r4, IPSR
    5fee:	2500      	movs	r5, #0
    5ff0:	2c00      	cmp	r4, #0
    5ff2:	d103      	bne.n	5ffc <osKernelSysTick+0x14>
    5ff4:	4f02      	ldr	r7, [pc, #8]	; (6000 <osKernelSysTick+0x18>)
    5ff6:	46bc      	mov	ip, r7
    5ff8:	df00      	svc	0
    5ffa:	0005      	movs	r5, r0
    5ffc:	0028      	movs	r0, r5
    5ffe:	bdb0      	pop	{r4, r5, r7, pc}
    6000:	00005dc1 	.word	0x00005dc1

00006004 <svcThreadCreate>:
    6004:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6006:	0004      	movs	r4, r0
    6008:	000d      	movs	r5, r1
    600a:	2800      	cmp	r0, #0
    600c:	d01f      	beq.n	604e <svcThreadCreate+0x4a>
    600e:	6800      	ldr	r0, [r0, #0]
    6010:	2800      	cmp	r0, #0
    6012:	d01c      	beq.n	604e <svcThreadCreate+0x4a>
    6014:	6863      	ldr	r3, [r4, #4]
    6016:	1cda      	adds	r2, r3, #3
    6018:	2a06      	cmp	r2, #6
    601a:	d818      	bhi.n	604e <svcThreadCreate+0x4a>
    601c:	68e1      	ldr	r1, [r4, #12]
    601e:	2900      	cmp	r1, #0
    6020:	d017      	beq.n	6052 <svcThreadCreate+0x4e>
    6022:	4e13      	ldr	r6, [pc, #76]	; (6070 <svcThreadCreate+0x6c>)
    6024:	0030      	movs	r0, r6
    6026:	f001 fa9b 	bl	7560 <rt_alloc_mem>
    602a:	1e07      	subs	r7, r0, #0
    602c:	d00f      	beq.n	604e <svcThreadCreate+0x4a>
    602e:	6863      	ldr	r3, [r4, #4]
    6030:	6820      	ldr	r0, [r4, #0]
    6032:	1d19      	adds	r1, r3, #4
    6034:	68e3      	ldr	r3, [r4, #12]
    6036:	003a      	movs	r2, r7
    6038:	021b      	lsls	r3, r3, #8
    603a:	4319      	orrs	r1, r3
    603c:	002b      	movs	r3, r5
    603e:	f002 fb57 	bl	86f0 <rt_tsk_create>
    6042:	2800      	cmp	r0, #0
    6044:	d10c      	bne.n	6060 <svcThreadCreate+0x5c>
    6046:	0039      	movs	r1, r7
    6048:	0030      	movs	r0, r6
    604a:	f001 faab 	bl	75a4 <rt_free_mem>
    604e:	2000      	movs	r0, #0
    6050:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6052:	1d19      	adds	r1, r3, #4
    6054:	2200      	movs	r2, #0
    6056:	002b      	movs	r3, r5
    6058:	f002 fb4a 	bl	86f0 <rt_tsk_create>
    605c:	2800      	cmp	r0, #0
    605e:	d0f6      	beq.n	604e <svcThreadCreate+0x4a>
    6060:	4b04      	ldr	r3, [pc, #16]	; (6074 <svcThreadCreate+0x70>)
    6062:	3801      	subs	r0, #1
    6064:	0080      	lsls	r0, r0, #2
    6066:	58c0      	ldr	r0, [r0, r3]
    6068:	4a03      	ldr	r2, [pc, #12]	; (6078 <svcThreadCreate+0x74>)
    606a:	6a83      	ldr	r3, [r0, #40]	; 0x28
    606c:	635a      	str	r2, [r3, #52]	; 0x34
    606e:	e7ef      	b.n	6050 <svcThreadCreate+0x4c>
    6070:	200039f8 	.word	0x200039f8
    6074:	20004cdc 	.word	0x20004cdc
    6078:	00005c3d 	.word	0x00005c3d

0000607c <svcThreadGetId>:
    607c:	b510      	push	{r4, lr}
    607e:	f002 fad1 	bl	8624 <rt_tsk_self>
    6082:	2800      	cmp	r0, #0
    6084:	d004      	beq.n	6090 <svcThreadGetId+0x14>
    6086:	3801      	subs	r0, #1
    6088:	4b02      	ldr	r3, [pc, #8]	; (6094 <svcThreadGetId+0x18>)
    608a:	0080      	lsls	r0, r0, #2
    608c:	58c0      	ldr	r0, [r0, r3]
    608e:	bd10      	pop	{r4, pc}
    6090:	2000      	movs	r0, #0
    6092:	e7fc      	b.n	608e <svcThreadGetId+0x12>
    6094:	20004cdc 	.word	0x20004cdc

00006098 <svcThreadTerminate>:
    6098:	0003      	movs	r3, r0
    609a:	b510      	push	{r4, lr}
    609c:	2080      	movs	r0, #128	; 0x80
    609e:	2b00      	cmp	r3, #0
    60a0:	d017      	beq.n	60d2 <svcThreadTerminate+0x3a>
    60a2:	079a      	lsls	r2, r3, #30
    60a4:	d115      	bne.n	60d2 <svcThreadTerminate+0x3a>
    60a6:	781a      	ldrb	r2, [r3, #0]
    60a8:	2a00      	cmp	r2, #0
    60aa:	d112      	bne.n	60d2 <svcThreadTerminate+0x3a>
    60ac:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    60ae:	2400      	movs	r4, #0
    60b0:	2a00      	cmp	r2, #0
    60b2:	d000      	beq.n	60b6 <svcThreadTerminate+0x1e>
    60b4:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    60b6:	78d8      	ldrb	r0, [r3, #3]
    60b8:	f002 fb94 	bl	87e4 <rt_tsk_delete>
    60bc:	0003      	movs	r3, r0
    60be:	2081      	movs	r0, #129	; 0x81
    60c0:	2bff      	cmp	r3, #255	; 0xff
    60c2:	d006      	beq.n	60d2 <svcThreadTerminate+0x3a>
    60c4:	2c00      	cmp	r4, #0
    60c6:	d005      	beq.n	60d4 <svcThreadTerminate+0x3c>
    60c8:	0021      	movs	r1, r4
    60ca:	4803      	ldr	r0, [pc, #12]	; (60d8 <svcThreadTerminate+0x40>)
    60cc:	f001 fa6a 	bl	75a4 <rt_free_mem>
    60d0:	2000      	movs	r0, #0
    60d2:	bd10      	pop	{r4, pc}
    60d4:	2000      	movs	r0, #0
    60d6:	e7fc      	b.n	60d2 <svcThreadTerminate+0x3a>
    60d8:	200039f8 	.word	0x200039f8

000060dc <svcThreadYield>:
    60dc:	b510      	push	{r4, lr}
    60de:	f002 fa8b 	bl	85f8 <rt_tsk_pass>
    60e2:	2000      	movs	r0, #0
    60e4:	bd10      	pop	{r4, pc}
    60e6:	46c0      	nop			; (mov r8, r8)

000060e8 <svcThreadSetPriority>:
    60e8:	0003      	movs	r3, r0
    60ea:	b510      	push	{r4, lr}
    60ec:	2080      	movs	r0, #128	; 0x80
    60ee:	2b00      	cmp	r3, #0
    60f0:	d008      	beq.n	6104 <svcThreadSetPriority+0x1c>
    60f2:	079a      	lsls	r2, r3, #30
    60f4:	d106      	bne.n	6104 <svcThreadSetPriority+0x1c>
    60f6:	781a      	ldrb	r2, [r3, #0]
    60f8:	2a00      	cmp	r2, #0
    60fa:	d103      	bne.n	6104 <svcThreadSetPriority+0x1c>
    60fc:	1cca      	adds	r2, r1, #3
    60fe:	2086      	movs	r0, #134	; 0x86
    6100:	2a06      	cmp	r2, #6
    6102:	d900      	bls.n	6106 <svcThreadSetPriority+0x1e>
    6104:	bd10      	pop	{r4, pc}
    6106:	3104      	adds	r1, #4
    6108:	78d8      	ldrb	r0, [r3, #3]
    610a:	b2c9      	uxtb	r1, r1
    610c:	f002 fa94 	bl	8638 <rt_tsk_prio>
    6110:	0003      	movs	r3, r0
    6112:	2081      	movs	r0, #129	; 0x81
    6114:	2bff      	cmp	r3, #255	; 0xff
    6116:	d0f5      	beq.n	6104 <svcThreadSetPriority+0x1c>
    6118:	2000      	movs	r0, #0
    611a:	e7f3      	b.n	6104 <svcThreadSetPriority+0x1c>

0000611c <svcThreadGetPriority>:
    611c:	0003      	movs	r3, r0
    611e:	2084      	movs	r0, #132	; 0x84
    6120:	2b00      	cmp	r3, #0
    6122:	d006      	beq.n	6132 <svcThreadGetPriority+0x16>
    6124:	079a      	lsls	r2, r3, #30
    6126:	d104      	bne.n	6132 <svcThreadGetPriority+0x16>
    6128:	781a      	ldrb	r2, [r3, #0]
    612a:	2a00      	cmp	r2, #0
    612c:	d101      	bne.n	6132 <svcThreadGetPriority+0x16>
    612e:	7898      	ldrb	r0, [r3, #2]
    6130:	3804      	subs	r0, #4
    6132:	4770      	bx	lr

00006134 <osThreadCreate>:
    6134:	b5f0      	push	{r4, r5, r6, r7, lr}
    6136:	4647      	mov	r7, r8
    6138:	0004      	movs	r4, r0
    613a:	b480      	push	{r7}
    613c:	000d      	movs	r5, r1
    613e:	f3ef 8105 	mrs	r1, IPSR
    6142:	2900      	cmp	r1, #0
    6144:	d132      	bne.n	61ac <osThreadCreate+0x78>
    6146:	f3ef 8114 	mrs	r1, CONTROL
    614a:	07c9      	lsls	r1, r1, #31
    614c:	d507      	bpl.n	615e <osThreadCreate+0x2a>
    614e:	0020      	movs	r0, r4
    6150:	0029      	movs	r1, r5
    6152:	4f23      	ldr	r7, [pc, #140]	; (61e0 <osThreadCreate+0xac>)
    6154:	46bc      	mov	ip, r7
    6156:	df00      	svc	0
    6158:	bc04      	pop	{r2}
    615a:	4690      	mov	r8, r2
    615c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    615e:	491c      	ldr	r1, [pc, #112]	; (61d0 <osThreadCreate+0x9c>)
    6160:	7809      	ldrb	r1, [r1, #0]
    6162:	2900      	cmp	r1, #0
    6164:	d1f3      	bne.n	614e <osThreadCreate+0x1a>
    6166:	2800      	cmp	r0, #0
    6168:	d020      	beq.n	61ac <osThreadCreate+0x78>
    616a:	6800      	ldr	r0, [r0, #0]
    616c:	2800      	cmp	r0, #0
    616e:	d01d      	beq.n	61ac <osThreadCreate+0x78>
    6170:	6863      	ldr	r3, [r4, #4]
    6172:	1cda      	adds	r2, r3, #3
    6174:	2a06      	cmp	r2, #6
    6176:	d819      	bhi.n	61ac <osThreadCreate+0x78>
    6178:	68e1      	ldr	r1, [r4, #12]
    617a:	2900      	cmp	r1, #0
    617c:	d018      	beq.n	61b0 <osThreadCreate+0x7c>
    617e:	4e15      	ldr	r6, [pc, #84]	; (61d4 <osThreadCreate+0xa0>)
    6180:	0030      	movs	r0, r6
    6182:	f001 f9ed 	bl	7560 <rt_alloc_mem>
    6186:	4680      	mov	r8, r0
    6188:	2800      	cmp	r0, #0
    618a:	d00f      	beq.n	61ac <osThreadCreate+0x78>
    618c:	6863      	ldr	r3, [r4, #4]
    618e:	6820      	ldr	r0, [r4, #0]
    6190:	1d19      	adds	r1, r3, #4
    6192:	68e3      	ldr	r3, [r4, #12]
    6194:	4642      	mov	r2, r8
    6196:	021b      	lsls	r3, r3, #8
    6198:	4319      	orrs	r1, r3
    619a:	002b      	movs	r3, r5
    619c:	f002 faa8 	bl	86f0 <rt_tsk_create>
    61a0:	2800      	cmp	r0, #0
    61a2:	d10c      	bne.n	61be <osThreadCreate+0x8a>
    61a4:	4641      	mov	r1, r8
    61a6:	0030      	movs	r0, r6
    61a8:	f001 f9fc 	bl	75a4 <rt_free_mem>
    61ac:	2000      	movs	r0, #0
    61ae:	e7d3      	b.n	6158 <osThreadCreate+0x24>
    61b0:	1d19      	adds	r1, r3, #4
    61b2:	2200      	movs	r2, #0
    61b4:	002b      	movs	r3, r5
    61b6:	f002 fa9b 	bl	86f0 <rt_tsk_create>
    61ba:	2800      	cmp	r0, #0
    61bc:	d0f6      	beq.n	61ac <osThreadCreate+0x78>
    61be:	4b06      	ldr	r3, [pc, #24]	; (61d8 <osThreadCreate+0xa4>)
    61c0:	3801      	subs	r0, #1
    61c2:	0080      	lsls	r0, r0, #2
    61c4:	58c0      	ldr	r0, [r0, r3]
    61c6:	4a05      	ldr	r2, [pc, #20]	; (61dc <osThreadCreate+0xa8>)
    61c8:	6a83      	ldr	r3, [r0, #40]	; 0x28
    61ca:	635a      	str	r2, [r3, #52]	; 0x34
    61cc:	e7c4      	b.n	6158 <osThreadCreate+0x24>
    61ce:	46c0      	nop			; (mov r8, r8)
    61d0:	20006079 	.word	0x20006079
    61d4:	200039f8 	.word	0x200039f8
    61d8:	20004cdc 	.word	0x20004cdc
    61dc:	00005c3d 	.word	0x00005c3d
    61e0:	00006005 	.word	0x00006005

000061e4 <osThreadGetId>:
    61e4:	b590      	push	{r4, r7, lr}
    61e6:	f3ef 8405 	mrs	r4, IPSR
    61ea:	2c00      	cmp	r4, #0
    61ec:	d103      	bne.n	61f6 <osThreadGetId+0x12>
    61ee:	4f03      	ldr	r7, [pc, #12]	; (61fc <osThreadGetId+0x18>)
    61f0:	46bc      	mov	ip, r7
    61f2:	df00      	svc	0
    61f4:	bd90      	pop	{r4, r7, pc}
    61f6:	2000      	movs	r0, #0
    61f8:	e7fc      	b.n	61f4 <osThreadGetId+0x10>
    61fa:	0000      	.short	0x0000
    61fc:	0000607d 	.word	0x0000607d

00006200 <osThreadTerminate>:
    6200:	b5b0      	push	{r4, r5, r7, lr}
    6202:	0005      	movs	r5, r0
    6204:	f3ef 8405 	mrs	r4, IPSR
    6208:	2082      	movs	r0, #130	; 0x82
    620a:	2c00      	cmp	r4, #0
    620c:	d000      	beq.n	6210 <osThreadTerminate+0x10>
    620e:	bdb0      	pop	{r4, r5, r7, pc}
    6210:	0028      	movs	r0, r5
    6212:	4f02      	ldr	r7, [pc, #8]	; (621c <osThreadTerminate+0x1c>)
    6214:	46bc      	mov	ip, r7
    6216:	df00      	svc	0
    6218:	e7f9      	b.n	620e <osThreadTerminate+0xe>
    621a:	0000      	.short	0x0000
    621c:	00006099 	.word	0x00006099

00006220 <osThreadYield>:
    6220:	b5b0      	push	{r4, r5, r7, lr}
    6222:	f3ef 8405 	mrs	r4, IPSR
    6226:	2582      	movs	r5, #130	; 0x82
    6228:	2c00      	cmp	r4, #0
    622a:	d001      	beq.n	6230 <osThreadYield+0x10>
    622c:	0028      	movs	r0, r5
    622e:	bdb0      	pop	{r4, r5, r7, pc}
    6230:	4f02      	ldr	r7, [pc, #8]	; (623c <osThreadYield+0x1c>)
    6232:	46bc      	mov	ip, r7
    6234:	df00      	svc	0
    6236:	0005      	movs	r5, r0
    6238:	e7f8      	b.n	622c <osThreadYield+0xc>
    623a:	0000      	.short	0x0000
    623c:	000060dd 	.word	0x000060dd

00006240 <osThreadSetPriority>:
    6240:	b5b0      	push	{r4, r5, r7, lr}
    6242:	0005      	movs	r5, r0
    6244:	f3ef 8405 	mrs	r4, IPSR
    6248:	2082      	movs	r0, #130	; 0x82
    624a:	2c00      	cmp	r4, #0
    624c:	d000      	beq.n	6250 <osThreadSetPriority+0x10>
    624e:	bdb0      	pop	{r4, r5, r7, pc}
    6250:	0028      	movs	r0, r5
    6252:	4f02      	ldr	r7, [pc, #8]	; (625c <osThreadSetPriority+0x1c>)
    6254:	46bc      	mov	ip, r7
    6256:	df00      	svc	0
    6258:	e7f9      	b.n	624e <osThreadSetPriority+0xe>
    625a:	0000      	.short	0x0000
    625c:	000060e9 	.word	0x000060e9

00006260 <osThreadGetPriority>:
    6260:	b5b0      	push	{r4, r5, r7, lr}
    6262:	0005      	movs	r5, r0
    6264:	f3ef 8405 	mrs	r4, IPSR
    6268:	2084      	movs	r0, #132	; 0x84
    626a:	2c00      	cmp	r4, #0
    626c:	d000      	beq.n	6270 <osThreadGetPriority+0x10>
    626e:	bdb0      	pop	{r4, r5, r7, pc}
    6270:	0028      	movs	r0, r5
    6272:	4f02      	ldr	r7, [pc, #8]	; (627c <osThreadGetPriority+0x1c>)
    6274:	46bc      	mov	ip, r7
    6276:	df00      	svc	0
    6278:	e7f9      	b.n	626e <osThreadGetPriority+0xe>
    627a:	0000      	.short	0x0000
    627c:	0000611d 	.word	0x0000611d

00006280 <svcDelay>:
    6280:	b500      	push	{lr}
    6282:	b083      	sub	sp, #12
    6284:	2800      	cmp	r0, #0
    6286:	d019      	beq.n	62bc <svcDelay+0x3c>
    6288:	1c43      	adds	r3, r0, #1
    628a:	d01c      	beq.n	62c6 <svcDelay+0x46>
    628c:	4b10      	ldr	r3, [pc, #64]	; (62d0 <svcDelay+0x50>)
    628e:	4298      	cmp	r0, r3
    6290:	d817      	bhi.n	62c2 <svcDelay+0x42>
    6292:	4b10      	ldr	r3, [pc, #64]	; (62d4 <svcDelay+0x54>)
    6294:	681b      	ldr	r3, [r3, #0]
    6296:	9301      	str	r3, [sp, #4]
    6298:	23fa      	movs	r3, #250	; 0xfa
    629a:	009b      	lsls	r3, r3, #2
    629c:	4358      	muls	r0, r3
    629e:	9b01      	ldr	r3, [sp, #4]
    62a0:	9901      	ldr	r1, [sp, #4]
    62a2:	3b01      	subs	r3, #1
    62a4:	18c0      	adds	r0, r0, r3
    62a6:	f7fe fb95 	bl	49d4 <__aeabi_uidiv>
    62aa:	4b0b      	ldr	r3, [pc, #44]	; (62d8 <svcDelay+0x58>)
    62ac:	0002      	movs	r2, r0
    62ae:	0018      	movs	r0, r3
    62b0:	429a      	cmp	r2, r3
    62b2:	d90a      	bls.n	62ca <svcDelay+0x4a>
    62b4:	f001 fb34 	bl	7920 <rt_dly_wait>
    62b8:	2040      	movs	r0, #64	; 0x40
    62ba:	e000      	b.n	62be <svcDelay+0x3e>
    62bc:	2000      	movs	r0, #0
    62be:	b003      	add	sp, #12
    62c0:	bd00      	pop	{pc}
    62c2:	4805      	ldr	r0, [pc, #20]	; (62d8 <svcDelay+0x58>)
    62c4:	e7f6      	b.n	62b4 <svcDelay+0x34>
    62c6:	4805      	ldr	r0, [pc, #20]	; (62dc <svcDelay+0x5c>)
    62c8:	e7f4      	b.n	62b4 <svcDelay+0x34>
    62ca:	b290      	uxth	r0, r2
    62cc:	e7f2      	b.n	62b4 <svcDelay+0x34>
    62ce:	46c0      	nop			; (mov r8, r8)
    62d0:	003d0900 	.word	0x003d0900
    62d4:	00008c68 	.word	0x00008c68
    62d8:	0000fffe 	.word	0x0000fffe
    62dc:	0000ffff 	.word	0x0000ffff

000062e0 <osDelay>:
    62e0:	b5b0      	push	{r4, r5, r7, lr}
    62e2:	0005      	movs	r5, r0
    62e4:	f3ef 8405 	mrs	r4, IPSR
    62e8:	2082      	movs	r0, #130	; 0x82
    62ea:	2c00      	cmp	r4, #0
    62ec:	d000      	beq.n	62f0 <osDelay+0x10>
    62ee:	bdb0      	pop	{r4, r5, r7, pc}
    62f0:	0028      	movs	r0, r5
    62f2:	4f02      	ldr	r7, [pc, #8]	; (62fc <osDelay+0x1c>)
    62f4:	46bc      	mov	ip, r7
    62f6:	df00      	svc	0
    62f8:	e7f9      	b.n	62ee <osDelay+0xe>
    62fa:	0000      	.short	0x0000
    62fc:	00006281 	.word	0x00006281

00006300 <osWait>:
    6300:	23ff      	movs	r3, #255	; 0xff
    6302:	6003      	str	r3, [r0, #0]
    6304:	4770      	bx	lr
    6306:	46c0      	nop			; (mov r8, r8)

00006308 <svcTimerCreate>:
    6308:	b510      	push	{r4, lr}
    630a:	2800      	cmp	r0, #0
    630c:	d016      	beq.n	633c <svcTimerCreate+0x34>
    630e:	6803      	ldr	r3, [r0, #0]
    6310:	2b00      	cmp	r3, #0
    6312:	d013      	beq.n	633c <svcTimerCreate+0x34>
    6314:	6843      	ldr	r3, [r0, #4]
    6316:	2b00      	cmp	r3, #0
    6318:	d010      	beq.n	633c <svcTimerCreate+0x34>
    631a:	2901      	cmp	r1, #1
    631c:	d80e      	bhi.n	633c <svcTimerCreate+0x34>
    631e:	4c08      	ldr	r4, [pc, #32]	; (6340 <svcTimerCreate+0x38>)
    6320:	6824      	ldr	r4, [r4, #0]
    6322:	2c00      	cmp	r4, #0
    6324:	d00a      	beq.n	633c <svcTimerCreate+0x34>
    6326:	791c      	ldrb	r4, [r3, #4]
    6328:	2c00      	cmp	r4, #0
    632a:	d107      	bne.n	633c <svcTimerCreate+0x34>
    632c:	6158      	str	r0, [r3, #20]
    632e:	0018      	movs	r0, r3
    6330:	601c      	str	r4, [r3, #0]
    6332:	3401      	adds	r4, #1
    6334:	711c      	strb	r4, [r3, #4]
    6336:	7159      	strb	r1, [r3, #5]
    6338:	611a      	str	r2, [r3, #16]
    633a:	bd10      	pop	{r4, pc}
    633c:	2000      	movs	r0, #0
    633e:	e7fc      	b.n	633a <svcTimerCreate+0x32>
    6340:	20004cec 	.word	0x20004cec

00006344 <svcTimerStart>:
    6344:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6346:	0004      	movs	r4, r0
    6348:	2080      	movs	r0, #128	; 0x80
    634a:	07a3      	lsls	r3, r4, #30
    634c:	d104      	bne.n	6358 <svcTimerStart+0x14>
    634e:	2c00      	cmp	r4, #0
    6350:	d002      	beq.n	6358 <svcTimerStart+0x14>
    6352:	3006      	adds	r0, #6
    6354:	2900      	cmp	r1, #0
    6356:	d100      	bne.n	635a <svcTimerStart+0x16>
    6358:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    635a:	22fa      	movs	r2, #250	; 0xfa
    635c:	4b2f      	ldr	r3, [pc, #188]	; (641c <svcTimerStart+0xd8>)
    635e:	0092      	lsls	r2, r2, #2
    6360:	681e      	ldr	r6, [r3, #0]
    6362:	0008      	movs	r0, r1
    6364:	2300      	movs	r3, #0
    6366:	2100      	movs	r1, #0
    6368:	f7fe fd74 	bl	4e54 <__aeabi_lmul>
    636c:	2700      	movs	r7, #0
    636e:	0002      	movs	r2, r0
    6370:	000b      	movs	r3, r1
    6372:	2001      	movs	r0, #1
    6374:	4240      	negs	r0, r0
    6376:	17c1      	asrs	r1, r0, #31
    6378:	1980      	adds	r0, r0, r6
    637a:	4179      	adcs	r1, r7
    637c:	1880      	adds	r0, r0, r2
    637e:	4159      	adcs	r1, r3
    6380:	003b      	movs	r3, r7
    6382:	0032      	movs	r2, r6
    6384:	f7fe fd46 	bl	4e14 <__aeabi_uldivmod>
    6388:	7923      	ldrb	r3, [r4, #4]
    638a:	2b01      	cmp	r3, #1
    638c:	d011      	beq.n	63b2 <svcTimerStart+0x6e>
    638e:	2b02      	cmp	r3, #2
    6390:	d10d      	bne.n	63ae <svcTimerStart+0x6a>
    6392:	4d23      	ldr	r5, [pc, #140]	; (6420 <svcTimerStart+0xdc>)
    6394:	6829      	ldr	r1, [r5, #0]
    6396:	2900      	cmp	r1, #0
    6398:	d009      	beq.n	63ae <svcTimerStart+0x6a>
    639a:	428c      	cmp	r4, r1
    639c:	d03a      	beq.n	6414 <svcTimerStart+0xd0>
    639e:	000a      	movs	r2, r1
    63a0:	e002      	b.n	63a8 <svcTimerStart+0x64>
    63a2:	429c      	cmp	r4, r3
    63a4:	d028      	beq.n	63f8 <svcTimerStart+0xb4>
    63a6:	001a      	movs	r2, r3
    63a8:	6813      	ldr	r3, [r2, #0]
    63aa:	2b00      	cmp	r3, #0
    63ac:	d1f9      	bne.n	63a2 <svcTimerStart+0x5e>
    63ae:	2081      	movs	r0, #129	; 0x81
    63b0:	e7d2      	b.n	6358 <svcTimerStart+0x14>
    63b2:	2302      	movs	r3, #2
    63b4:	4d1a      	ldr	r5, [pc, #104]	; (6420 <svcTimerStart+0xdc>)
    63b6:	7123      	strb	r3, [r4, #4]
    63b8:	6829      	ldr	r1, [r5, #0]
    63ba:	60e0      	str	r0, [r4, #12]
    63bc:	2900      	cmp	r1, #0
    63be:	d00b      	beq.n	63d8 <svcTimerStart+0x94>
    63c0:	688a      	ldr	r2, [r1, #8]
    63c2:	4290      	cmp	r0, r2
    63c4:	d204      	bcs.n	63d0 <svcTimerStart+0x8c>
    63c6:	e00f      	b.n	63e8 <svcTimerStart+0xa4>
    63c8:	689a      	ldr	r2, [r3, #8]
    63ca:	4282      	cmp	r2, r0
    63cc:	d80e      	bhi.n	63ec <svcTimerStart+0xa8>
    63ce:	0019      	movs	r1, r3
    63d0:	680b      	ldr	r3, [r1, #0]
    63d2:	1a80      	subs	r0, r0, r2
    63d4:	2b00      	cmp	r3, #0
    63d6:	d1f7      	bne.n	63c8 <svcTimerStart+0x84>
    63d8:	2300      	movs	r3, #0
    63da:	60a0      	str	r0, [r4, #8]
    63dc:	6023      	str	r3, [r4, #0]
    63de:	2900      	cmp	r1, #0
    63e0:	d015      	beq.n	640e <svcTimerStart+0xca>
    63e2:	600c      	str	r4, [r1, #0]
    63e4:	2000      	movs	r0, #0
    63e6:	e7b7      	b.n	6358 <svcTimerStart+0x14>
    63e8:	000b      	movs	r3, r1
    63ea:	2100      	movs	r1, #0
    63ec:	60a0      	str	r0, [r4, #8]
    63ee:	689a      	ldr	r2, [r3, #8]
    63f0:	6023      	str	r3, [r4, #0]
    63f2:	1a10      	subs	r0, r2, r0
    63f4:	6098      	str	r0, [r3, #8]
    63f6:	e7f2      	b.n	63de <svcTimerStart+0x9a>
    63f8:	6823      	ldr	r3, [r4, #0]
    63fa:	6013      	str	r3, [r2, #0]
    63fc:	6823      	ldr	r3, [r4, #0]
    63fe:	2b00      	cmp	r3, #0
    6400:	d0dc      	beq.n	63bc <svcTimerStart+0x78>
    6402:	68a6      	ldr	r6, [r4, #8]
    6404:	689a      	ldr	r2, [r3, #8]
    6406:	46b4      	mov	ip, r6
    6408:	4462      	add	r2, ip
    640a:	609a      	str	r2, [r3, #8]
    640c:	e7d6      	b.n	63bc <svcTimerStart+0x78>
    640e:	602c      	str	r4, [r5, #0]
    6410:	2000      	movs	r0, #0
    6412:	e7a1      	b.n	6358 <svcTimerStart+0x14>
    6414:	6823      	ldr	r3, [r4, #0]
    6416:	602b      	str	r3, [r5, #0]
    6418:	0019      	movs	r1, r3
    641a:	e7f0      	b.n	63fe <svcTimerStart+0xba>
    641c:	00008c68 	.word	0x00008c68
    6420:	2000607c 	.word	0x2000607c

00006424 <svcTimerStop>:
    6424:	0003      	movs	r3, r0
    6426:	2080      	movs	r0, #128	; 0x80
    6428:	079a      	lsls	r2, r3, #30
    642a:	d105      	bne.n	6438 <svcTimerStop+0x14>
    642c:	2b00      	cmp	r3, #0
    642e:	d003      	beq.n	6438 <svcTimerStop+0x14>
    6430:	791a      	ldrb	r2, [r3, #4]
    6432:	2a02      	cmp	r2, #2
    6434:	d001      	beq.n	643a <svcTimerStop+0x16>
    6436:	2081      	movs	r0, #129	; 0x81
    6438:	4770      	bx	lr
    643a:	2201      	movs	r2, #1
    643c:	480e      	ldr	r0, [pc, #56]	; (6478 <svcTimerStop+0x54>)
    643e:	711a      	strb	r2, [r3, #4]
    6440:	6801      	ldr	r1, [r0, #0]
    6442:	2900      	cmp	r1, #0
    6444:	d0f7      	beq.n	6436 <svcTimerStop+0x12>
    6446:	428b      	cmp	r3, r1
    6448:	d105      	bne.n	6456 <svcTimerStop+0x32>
    644a:	681a      	ldr	r2, [r3, #0]
    644c:	6002      	str	r2, [r0, #0]
    644e:	e009      	b.n	6464 <svcTimerStop+0x40>
    6450:	4293      	cmp	r3, r2
    6452:	d004      	beq.n	645e <svcTimerStop+0x3a>
    6454:	0011      	movs	r1, r2
    6456:	680a      	ldr	r2, [r1, #0]
    6458:	2a00      	cmp	r2, #0
    645a:	d1f9      	bne.n	6450 <svcTimerStop+0x2c>
    645c:	e7eb      	b.n	6436 <svcTimerStop+0x12>
    645e:	681a      	ldr	r2, [r3, #0]
    6460:	600a      	str	r2, [r1, #0]
    6462:	681a      	ldr	r2, [r3, #0]
    6464:	2a00      	cmp	r2, #0
    6466:	d004      	beq.n	6472 <svcTimerStop+0x4e>
    6468:	6891      	ldr	r1, [r2, #8]
    646a:	689b      	ldr	r3, [r3, #8]
    646c:	468c      	mov	ip, r1
    646e:	4463      	add	r3, ip
    6470:	6093      	str	r3, [r2, #8]
    6472:	2000      	movs	r0, #0
    6474:	e7e0      	b.n	6438 <svcTimerStop+0x14>
    6476:	46c0      	nop			; (mov r8, r8)
    6478:	2000607c 	.word	0x2000607c

0000647c <svcTimerDelete>:
    647c:	0002      	movs	r2, r0
    647e:	2080      	movs	r0, #128	; 0x80
    6480:	0793      	lsls	r3, r2, #30
    6482:	d117      	bne.n	64b4 <svcTimerDelete+0x38>
    6484:	2a00      	cmp	r2, #0
    6486:	d015      	beq.n	64b4 <svcTimerDelete+0x38>
    6488:	7913      	ldrb	r3, [r2, #4]
    648a:	2b01      	cmp	r3, #1
    648c:	d00f      	beq.n	64ae <svcTimerDelete+0x32>
    648e:	2081      	movs	r0, #129	; 0x81
    6490:	2b02      	cmp	r3, #2
    6492:	d10f      	bne.n	64b4 <svcTimerDelete+0x38>
    6494:	4810      	ldr	r0, [pc, #64]	; (64d8 <svcTimerDelete+0x5c>)
    6496:	6801      	ldr	r1, [r0, #0]
    6498:	2900      	cmp	r1, #0
    649a:	d008      	beq.n	64ae <svcTimerDelete+0x32>
    649c:	428a      	cmp	r2, r1
    649e:	d103      	bne.n	64a8 <svcTimerDelete+0x2c>
    64a0:	e017      	b.n	64d2 <svcTimerDelete+0x56>
    64a2:	429a      	cmp	r2, r3
    64a4:	d007      	beq.n	64b6 <svcTimerDelete+0x3a>
    64a6:	0019      	movs	r1, r3
    64a8:	680b      	ldr	r3, [r1, #0]
    64aa:	2b00      	cmp	r3, #0
    64ac:	d1f9      	bne.n	64a2 <svcTimerDelete+0x26>
    64ae:	2300      	movs	r3, #0
    64b0:	2000      	movs	r0, #0
    64b2:	7113      	strb	r3, [r2, #4]
    64b4:	4770      	bx	lr
    64b6:	6813      	ldr	r3, [r2, #0]
    64b8:	600b      	str	r3, [r1, #0]
    64ba:	6813      	ldr	r3, [r2, #0]
    64bc:	2b00      	cmp	r3, #0
    64be:	d0f6      	beq.n	64ae <svcTimerDelete+0x32>
    64c0:	6890      	ldr	r0, [r2, #8]
    64c2:	6899      	ldr	r1, [r3, #8]
    64c4:	4684      	mov	ip, r0
    64c6:	4461      	add	r1, ip
    64c8:	6099      	str	r1, [r3, #8]
    64ca:	2300      	movs	r3, #0
    64cc:	2000      	movs	r0, #0
    64ce:	7113      	strb	r3, [r2, #4]
    64d0:	e7f0      	b.n	64b4 <svcTimerDelete+0x38>
    64d2:	6813      	ldr	r3, [r2, #0]
    64d4:	6003      	str	r3, [r0, #0]
    64d6:	e7f1      	b.n	64bc <svcTimerDelete+0x40>
    64d8:	2000607c 	.word	0x2000607c

000064dc <svcTimerCall>:
    64dc:	0003      	movs	r3, r0
    64de:	0782      	lsls	r2, r0, #30
    64e0:	d105      	bne.n	64ee <svcTimerCall+0x12>
    64e2:	2800      	cmp	r0, #0
    64e4:	d006      	beq.n	64f4 <svcTimerCall+0x18>
    64e6:	6942      	ldr	r2, [r0, #20]
    64e8:	6919      	ldr	r1, [r3, #16]
    64ea:	6810      	ldr	r0, [r2, #0]
    64ec:	4770      	bx	lr
    64ee:	2000      	movs	r0, #0
    64f0:	2100      	movs	r1, #0
    64f2:	e7fb      	b.n	64ec <svcTimerCall+0x10>
    64f4:	2000      	movs	r0, #0
    64f6:	0001      	movs	r1, r0
    64f8:	e7f8      	b.n	64ec <svcTimerCall+0x10>
    64fa:	46c0      	nop			; (mov r8, r8)

000064fc <sysTimerTick>:
    64fc:	b5f0      	push	{r4, r5, r6, r7, lr}
    64fe:	464e      	mov	r6, r9
    6500:	4657      	mov	r7, sl
    6502:	4645      	mov	r5, r8
    6504:	b4e0      	push	{r5, r6, r7}
    6506:	4e2a      	ldr	r6, [pc, #168]	; (65b0 <sysTimerTick+0xb4>)
    6508:	6834      	ldr	r4, [r6, #0]
    650a:	2c00      	cmp	r4, #0
    650c:	d028      	beq.n	6560 <sysTimerTick+0x64>
    650e:	2200      	movs	r2, #0
    6510:	68a3      	ldr	r3, [r4, #8]
    6512:	4f28      	ldr	r7, [pc, #160]	; (65b4 <sysTimerTick+0xb8>)
    6514:	3b01      	subs	r3, #1
    6516:	60a3      	str	r3, [r4, #8]
    6518:	4690      	mov	r8, r2
    651a:	2b00      	cmp	r3, #0
    651c:	d120      	bne.n	6560 <sysTimerTick+0x64>
    651e:	6825      	ldr	r5, [r4, #0]
    6520:	683b      	ldr	r3, [r7, #0]
    6522:	6035      	str	r5, [r6, #0]
    6524:	4699      	mov	r9, r3
    6526:	2b00      	cmp	r3, #0
    6528:	d003      	beq.n	6532 <sysTimerTick+0x36>
    652a:	781b      	ldrb	r3, [r3, #0]
    652c:	469a      	mov	sl, r3
    652e:	2b01      	cmp	r3, #1
    6530:	d002      	beq.n	6538 <sysTimerTick+0x3c>
    6532:	2004      	movs	r0, #4
    6534:	f7fb faa2 	bl	1a7c <os_error>
    6538:	4648      	mov	r0, r9
    653a:	f001 fb63 	bl	7c04 <rt_mbx_check>
    653e:	2800      	cmp	r0, #0
    6540:	d0f7      	beq.n	6532 <sysTimerTick+0x36>
    6542:	0021      	movs	r1, r4
    6544:	4648      	mov	r0, r9
    6546:	f001 fb61 	bl	7c0c <isr_mbx_send>
    654a:	7963      	ldrb	r3, [r4, #5]
    654c:	2b01      	cmp	r3, #1
    654e:	d00c      	beq.n	656a <sysTimerTick+0x6e>
    6550:	4653      	mov	r3, sl
    6552:	7123      	strb	r3, [r4, #4]
    6554:	2d00      	cmp	r5, #0
    6556:	d003      	beq.n	6560 <sysTimerTick+0x64>
    6558:	68ab      	ldr	r3, [r5, #8]
    655a:	002c      	movs	r4, r5
    655c:	2b00      	cmp	r3, #0
    655e:	d0de      	beq.n	651e <sysTimerTick+0x22>
    6560:	bc1c      	pop	{r2, r3, r4}
    6562:	4690      	mov	r8, r2
    6564:	4699      	mov	r9, r3
    6566:	46a2      	mov	sl, r4
    6568:	bdf0      	pop	{r4, r5, r6, r7, pc}
    656a:	6830      	ldr	r0, [r6, #0]
    656c:	68e2      	ldr	r2, [r4, #12]
    656e:	2800      	cmp	r0, #0
    6570:	d00b      	beq.n	658a <sysTimerTick+0x8e>
    6572:	6881      	ldr	r1, [r0, #8]
    6574:	4291      	cmp	r1, r2
    6576:	d904      	bls.n	6582 <sysTimerTick+0x86>
    6578:	e00e      	b.n	6598 <sysTimerTick+0x9c>
    657a:	6899      	ldr	r1, [r3, #8]
    657c:	4291      	cmp	r1, r2
    657e:	d80d      	bhi.n	659c <sysTimerTick+0xa0>
    6580:	0018      	movs	r0, r3
    6582:	6803      	ldr	r3, [r0, #0]
    6584:	1a52      	subs	r2, r2, r1
    6586:	2b00      	cmp	r3, #0
    6588:	d1f7      	bne.n	657a <sysTimerTick+0x7e>
    658a:	4643      	mov	r3, r8
    658c:	60a2      	str	r2, [r4, #8]
    658e:	6023      	str	r3, [r4, #0]
    6590:	2800      	cmp	r0, #0
    6592:	d00a      	beq.n	65aa <sysTimerTick+0xae>
    6594:	6004      	str	r4, [r0, #0]
    6596:	e7dd      	b.n	6554 <sysTimerTick+0x58>
    6598:	0003      	movs	r3, r0
    659a:	2000      	movs	r0, #0
    659c:	60a2      	str	r2, [r4, #8]
    659e:	6899      	ldr	r1, [r3, #8]
    65a0:	6023      	str	r3, [r4, #0]
    65a2:	1a8a      	subs	r2, r1, r2
    65a4:	609a      	str	r2, [r3, #8]
    65a6:	2800      	cmp	r0, #0
    65a8:	d1f4      	bne.n	6594 <sysTimerTick+0x98>
    65aa:	6034      	str	r4, [r6, #0]
    65ac:	e7d2      	b.n	6554 <sysTimerTick+0x58>
    65ae:	46c0      	nop			; (mov r8, r8)
    65b0:	2000607c 	.word	0x2000607c
    65b4:	20004d10 	.word	0x20004d10

000065b8 <sysUserTimerWakeupTime>:
    65b8:	4b04      	ldr	r3, [pc, #16]	; (65cc <sysUserTimerWakeupTime+0x14>)
    65ba:	681b      	ldr	r3, [r3, #0]
    65bc:	2b00      	cmp	r3, #0
    65be:	d001      	beq.n	65c4 <sysUserTimerWakeupTime+0xc>
    65c0:	6898      	ldr	r0, [r3, #8]
    65c2:	4770      	bx	lr
    65c4:	2001      	movs	r0, #1
    65c6:	4240      	negs	r0, r0
    65c8:	e7fb      	b.n	65c2 <sysUserTimerWakeupTime+0xa>
    65ca:	46c0      	nop			; (mov r8, r8)
    65cc:	2000607c 	.word	0x2000607c

000065d0 <sysUserTimerUpdate>:
    65d0:	b570      	push	{r4, r5, r6, lr}
    65d2:	4d0e      	ldr	r5, [pc, #56]	; (660c <sysUserTimerUpdate+0x3c>)
    65d4:	0004      	movs	r4, r0
    65d6:	682b      	ldr	r3, [r5, #0]
    65d8:	2b00      	cmp	r3, #0
    65da:	d012      	beq.n	6602 <sysUserTimerUpdate+0x32>
    65dc:	2800      	cmp	r0, #0
    65de:	d010      	beq.n	6602 <sysUserTimerUpdate+0x32>
    65e0:	689a      	ldr	r2, [r3, #8]
    65e2:	2601      	movs	r6, #1
    65e4:	4290      	cmp	r0, r2
    65e6:	d205      	bcs.n	65f4 <sysUserTimerUpdate+0x24>
    65e8:	e00c      	b.n	6604 <sysUserTimerUpdate+0x34>
    65ea:	2c00      	cmp	r4, #0
    65ec:	d009      	beq.n	6602 <sysUserTimerUpdate+0x32>
    65ee:	689a      	ldr	r2, [r3, #8]
    65f0:	42a2      	cmp	r2, r4
    65f2:	d807      	bhi.n	6604 <sysUserTimerUpdate+0x34>
    65f4:	609e      	str	r6, [r3, #8]
    65f6:	1aa4      	subs	r4, r4, r2
    65f8:	f7ff ff80 	bl	64fc <sysTimerTick>
    65fc:	682b      	ldr	r3, [r5, #0]
    65fe:	2b00      	cmp	r3, #0
    6600:	d1f3      	bne.n	65ea <sysUserTimerUpdate+0x1a>
    6602:	bd70      	pop	{r4, r5, r6, pc}
    6604:	1b14      	subs	r4, r2, r4
    6606:	609c      	str	r4, [r3, #8]
    6608:	e7fb      	b.n	6602 <sysUserTimerUpdate+0x32>
    660a:	46c0      	nop			; (mov r8, r8)
    660c:	2000607c 	.word	0x2000607c

00006610 <osTimerCreate>:
    6610:	b5b0      	push	{r4, r5, r7, lr}
    6612:	f3ef 8405 	mrs	r4, IPSR
    6616:	2c00      	cmp	r4, #0
    6618:	d124      	bne.n	6664 <osTimerCreate+0x54>
    661a:	f3ef 8414 	mrs	r4, CONTROL
    661e:	2501      	movs	r5, #1
    6620:	4225      	tst	r5, r4
    6622:	d003      	beq.n	662c <osTimerCreate+0x1c>
    6624:	4f12      	ldr	r7, [pc, #72]	; (6670 <osTimerCreate+0x60>)
    6626:	46bc      	mov	ip, r7
    6628:	df00      	svc	0
    662a:	bdb0      	pop	{r4, r5, r7, pc}
    662c:	4c0e      	ldr	r4, [pc, #56]	; (6668 <osTimerCreate+0x58>)
    662e:	7824      	ldrb	r4, [r4, #0]
    6630:	2c00      	cmp	r4, #0
    6632:	d1f7      	bne.n	6624 <osTimerCreate+0x14>
    6634:	2800      	cmp	r0, #0
    6636:	d015      	beq.n	6664 <osTimerCreate+0x54>
    6638:	6803      	ldr	r3, [r0, #0]
    663a:	2b00      	cmp	r3, #0
    663c:	d012      	beq.n	6664 <osTimerCreate+0x54>
    663e:	6843      	ldr	r3, [r0, #4]
    6640:	2b00      	cmp	r3, #0
    6642:	d00f      	beq.n	6664 <osTimerCreate+0x54>
    6644:	2901      	cmp	r1, #1
    6646:	d80d      	bhi.n	6664 <osTimerCreate+0x54>
    6648:	4c08      	ldr	r4, [pc, #32]	; (666c <osTimerCreate+0x5c>)
    664a:	6824      	ldr	r4, [r4, #0]
    664c:	2c00      	cmp	r4, #0
    664e:	d009      	beq.n	6664 <osTimerCreate+0x54>
    6650:	791c      	ldrb	r4, [r3, #4]
    6652:	2c00      	cmp	r4, #0
    6654:	d106      	bne.n	6664 <osTimerCreate+0x54>
    6656:	6158      	str	r0, [r3, #20]
    6658:	601c      	str	r4, [r3, #0]
    665a:	711d      	strb	r5, [r3, #4]
    665c:	7159      	strb	r1, [r3, #5]
    665e:	611a      	str	r2, [r3, #16]
    6660:	0018      	movs	r0, r3
    6662:	e7e2      	b.n	662a <osTimerCreate+0x1a>
    6664:	2000      	movs	r0, #0
    6666:	e7e0      	b.n	662a <osTimerCreate+0x1a>
    6668:	20006079 	.word	0x20006079
    666c:	20004cec 	.word	0x20004cec
    6670:	00006309 	.word	0x00006309

00006674 <osTimerStart>:
    6674:	b5b0      	push	{r4, r5, r7, lr}
    6676:	0005      	movs	r5, r0
    6678:	f3ef 8405 	mrs	r4, IPSR
    667c:	2082      	movs	r0, #130	; 0x82
    667e:	2c00      	cmp	r4, #0
    6680:	d000      	beq.n	6684 <osTimerStart+0x10>
    6682:	bdb0      	pop	{r4, r5, r7, pc}
    6684:	0028      	movs	r0, r5
    6686:	4f02      	ldr	r7, [pc, #8]	; (6690 <osTimerStart+0x1c>)
    6688:	46bc      	mov	ip, r7
    668a:	df00      	svc	0
    668c:	e7f9      	b.n	6682 <osTimerStart+0xe>
    668e:	0000      	.short	0x0000
    6690:	00006345 	.word	0x00006345

00006694 <osTimerStop>:
    6694:	b5b0      	push	{r4, r5, r7, lr}
    6696:	0005      	movs	r5, r0
    6698:	f3ef 8405 	mrs	r4, IPSR
    669c:	2082      	movs	r0, #130	; 0x82
    669e:	2c00      	cmp	r4, #0
    66a0:	d000      	beq.n	66a4 <osTimerStop+0x10>
    66a2:	bdb0      	pop	{r4, r5, r7, pc}
    66a4:	0028      	movs	r0, r5
    66a6:	4f02      	ldr	r7, [pc, #8]	; (66b0 <osTimerStop+0x1c>)
    66a8:	46bc      	mov	ip, r7
    66aa:	df00      	svc	0
    66ac:	e7f9      	b.n	66a2 <osTimerStop+0xe>
    66ae:	0000      	.short	0x0000
    66b0:	00006425 	.word	0x00006425

000066b4 <osTimerDelete>:
    66b4:	b5b0      	push	{r4, r5, r7, lr}
    66b6:	0005      	movs	r5, r0
    66b8:	f3ef 8405 	mrs	r4, IPSR
    66bc:	2082      	movs	r0, #130	; 0x82
    66be:	2c00      	cmp	r4, #0
    66c0:	d000      	beq.n	66c4 <osTimerDelete+0x10>
    66c2:	bdb0      	pop	{r4, r5, r7, pc}
    66c4:	0028      	movs	r0, r5
    66c6:	4f02      	ldr	r7, [pc, #8]	; (66d0 <osTimerDelete+0x1c>)
    66c8:	46bc      	mov	ip, r7
    66ca:	df00      	svc	0
    66cc:	e7f9      	b.n	66c2 <osTimerDelete+0xe>
    66ce:	0000      	.short	0x0000
    66d0:	0000647d 	.word	0x0000647d

000066d4 <osTimerCall>:
    66d4:	b590      	push	{r4, r7, lr}
    66d6:	0004      	movs	r4, r0
    66d8:	0008      	movs	r0, r1
    66da:	4f03      	ldr	r7, [pc, #12]	; (66e8 <osTimerCall+0x14>)
    66dc:	46bc      	mov	ip, r7
    66de:	df00      	svc	0
    66e0:	6020      	str	r0, [r4, #0]
    66e2:	6061      	str	r1, [r4, #4]
    66e4:	0020      	movs	r0, r4
    66e6:	bd90      	pop	{r4, r7, pc}
    66e8:	000064dd 	.word	0x000064dd

000066ec <osTimerThread>:
    66ec:	b5b0      	push	{r4, r5, r7, lr}
    66ee:	4d0a      	ldr	r5, [pc, #40]	; (6718 <osTimerThread+0x2c>)
    66f0:	6828      	ldr	r0, [r5, #0]
    66f2:	f3ef 8105 	mrs	r1, IPSR
    66f6:	2900      	cmp	r1, #0
    66f8:	d1fb      	bne.n	66f2 <osTimerThread+0x6>
    66fa:	3901      	subs	r1, #1
    66fc:	4f07      	ldr	r7, [pc, #28]	; (671c <osTimerThread+0x30>)
    66fe:	46bc      	mov	ip, r7
    6700:	df00      	svc	0
    6702:	2810      	cmp	r0, #16
    6704:	d1f4      	bne.n	66f0 <osTimerThread+0x4>
    6706:	0008      	movs	r0, r1
    6708:	4f05      	ldr	r7, [pc, #20]	; (6720 <osTimerThread+0x34>)
    670a:	46bc      	mov	ip, r7
    670c:	df00      	svc	0
    670e:	1e04      	subs	r4, r0, #0
    6710:	d0ee      	beq.n	66f0 <osTimerThread+0x4>
    6712:	0008      	movs	r0, r1
    6714:	47a0      	blx	r4
    6716:	e7eb      	b.n	66f0 <osTimerThread+0x4>
    6718:	20004d10 	.word	0x20004d10
    671c:	00006ecd 	.word	0x00006ecd
    6720:	000064dd 	.word	0x000064dd

00006724 <svcSignalSet>:
    6724:	b510      	push	{r4, lr}
    6726:	2800      	cmp	r0, #0
    6728:	d00e      	beq.n	6748 <svcSignalSet+0x24>
    672a:	0783      	lsls	r3, r0, #30
    672c:	d10c      	bne.n	6748 <svcSignalSet+0x24>
    672e:	7803      	ldrb	r3, [r0, #0]
    6730:	2b00      	cmp	r3, #0
    6732:	d109      	bne.n	6748 <svcSignalSet+0x24>
    6734:	0c0b      	lsrs	r3, r1, #16
    6736:	d107      	bne.n	6748 <svcSignalSet+0x24>
    6738:	78c3      	ldrb	r3, [r0, #3]
    673a:	8b04      	ldrh	r4, [r0, #24]
    673c:	b288      	uxth	r0, r1
    673e:	0019      	movs	r1, r3
    6740:	f001 fcbe 	bl	80c0 <rt_evt_set>
    6744:	0020      	movs	r0, r4
    6746:	e001      	b.n	674c <svcSignalSet+0x28>
    6748:	2080      	movs	r0, #128	; 0x80
    674a:	0600      	lsls	r0, r0, #24
    674c:	bd10      	pop	{r4, pc}
    674e:	46c0      	nop			; (mov r8, r8)

00006750 <svcSignalClear>:
    6750:	b510      	push	{r4, lr}
    6752:	2800      	cmp	r0, #0
    6754:	d00e      	beq.n	6774 <svcSignalClear+0x24>
    6756:	0783      	lsls	r3, r0, #30
    6758:	d10c      	bne.n	6774 <svcSignalClear+0x24>
    675a:	7803      	ldrb	r3, [r0, #0]
    675c:	2b00      	cmp	r3, #0
    675e:	d109      	bne.n	6774 <svcSignalClear+0x24>
    6760:	0c0b      	lsrs	r3, r1, #16
    6762:	d107      	bne.n	6774 <svcSignalClear+0x24>
    6764:	78c3      	ldrb	r3, [r0, #3]
    6766:	8b04      	ldrh	r4, [r0, #24]
    6768:	b288      	uxth	r0, r1
    676a:	0019      	movs	r1, r3
    676c:	f001 fcd4 	bl	8118 <rt_evt_clr>
    6770:	0020      	movs	r0, r4
    6772:	e001      	b.n	6778 <svcSignalClear+0x28>
    6774:	2080      	movs	r0, #128	; 0x80
    6776:	0600      	lsls	r0, r0, #24
    6778:	bd10      	pop	{r4, pc}
    677a:	46c0      	nop			; (mov r8, r8)

0000677c <svcSignalWait>:
    677c:	b5f0      	push	{r4, r5, r6, r7, lr}
    677e:	0c04      	lsrs	r4, r0, #16
    6780:	b083      	sub	sp, #12
    6782:	0006      	movs	r6, r0
    6784:	000d      	movs	r5, r1
    6786:	0424      	lsls	r4, r4, #16
    6788:	d149      	bne.n	681e <svcSignalWait+0xa2>
    678a:	2800      	cmp	r0, #0
    678c:	d026      	beq.n	67dc <svcSignalWait+0x60>
    678e:	b287      	uxth	r7, r0
    6790:	2100      	movs	r1, #0
    6792:	2d00      	cmp	r5, #0
    6794:	d013      	beq.n	67be <svcSignalWait+0x42>
    6796:	1c6b      	adds	r3, r5, #1
    6798:	d05c      	beq.n	6854 <svcSignalWait+0xd8>
    679a:	4b2f      	ldr	r3, [pc, #188]	; (6858 <svcSignalWait+0xdc>)
    679c:	429d      	cmp	r5, r3
    679e:	d84f      	bhi.n	6840 <svcSignalWait+0xc4>
    67a0:	20fa      	movs	r0, #250	; 0xfa
    67a2:	4b2e      	ldr	r3, [pc, #184]	; (685c <svcSignalWait+0xe0>)
    67a4:	0080      	lsls	r0, r0, #2
    67a6:	4368      	muls	r0, r5
    67a8:	681b      	ldr	r3, [r3, #0]
    67aa:	9301      	str	r3, [sp, #4]
    67ac:	3b01      	subs	r3, #1
    67ae:	18c0      	adds	r0, r0, r3
    67b0:	9901      	ldr	r1, [sp, #4]
    67b2:	f7fe f90f 	bl	49d4 <__aeabi_uidiv>
    67b6:	4b2a      	ldr	r3, [pc, #168]	; (6860 <svcSignalWait+0xe4>)
    67b8:	0019      	movs	r1, r3
    67ba:	4298      	cmp	r0, r3
    67bc:	d946      	bls.n	684c <svcSignalWait+0xd0>
    67be:	2201      	movs	r2, #1
    67c0:	0038      	movs	r0, r7
    67c2:	f001 fc59 	bl	8078 <rt_evt_wait>
    67c6:	2802      	cmp	r0, #2
    67c8:	d035      	beq.n	6836 <svcSignalWait+0xba>
    67ca:	0028      	movs	r0, r5
    67cc:	1e45      	subs	r5, r0, #1
    67ce:	41a8      	sbcs	r0, r5
    67d0:	0180      	lsls	r0, r0, #6
    67d2:	0021      	movs	r1, r4
    67d4:	2200      	movs	r2, #0
    67d6:	2300      	movs	r3, #0
    67d8:	b003      	add	sp, #12
    67da:	bdf0      	pop	{r4, r5, r6, r7, pc}
    67dc:	2900      	cmp	r1, #0
    67de:	d021      	beq.n	6824 <svcSignalWait+0xa8>
    67e0:	1c4b      	adds	r3, r1, #1
    67e2:	d035      	beq.n	6850 <svcSignalWait+0xd4>
    67e4:	4b1c      	ldr	r3, [pc, #112]	; (6858 <svcSignalWait+0xdc>)
    67e6:	4299      	cmp	r1, r3
    67e8:	d82c      	bhi.n	6844 <svcSignalWait+0xc8>
    67ea:	20fa      	movs	r0, #250	; 0xfa
    67ec:	4b1b      	ldr	r3, [pc, #108]	; (685c <svcSignalWait+0xe0>)
    67ee:	0080      	lsls	r0, r0, #2
    67f0:	4348      	muls	r0, r1
    67f2:	681b      	ldr	r3, [r3, #0]
    67f4:	9301      	str	r3, [sp, #4]
    67f6:	3b01      	subs	r3, #1
    67f8:	18c0      	adds	r0, r0, r3
    67fa:	9901      	ldr	r1, [sp, #4]
    67fc:	f7fe f8ea 	bl	49d4 <__aeabi_uidiv>
    6800:	4b17      	ldr	r3, [pc, #92]	; (6860 <svcSignalWait+0xe4>)
    6802:	0019      	movs	r1, r3
    6804:	4298      	cmp	r0, r3
    6806:	d91f      	bls.n	6848 <svcSignalWait+0xcc>
    6808:	2200      	movs	r2, #0
    680a:	4816      	ldr	r0, [pc, #88]	; (6864 <svcSignalWait+0xe8>)
    680c:	f001 fc34 	bl	8078 <rt_evt_wait>
    6810:	2802      	cmp	r0, #2
    6812:	d113      	bne.n	683c <svcSignalWait+0xc0>
    6814:	4b14      	ldr	r3, [pc, #80]	; (6868 <svcSignalWait+0xec>)
    6816:	2008      	movs	r0, #8
    6818:	681b      	ldr	r3, [r3, #0]
    681a:	8b5c      	ldrh	r4, [r3, #26]
    681c:	e7d9      	b.n	67d2 <svcSignalWait+0x56>
    681e:	2086      	movs	r0, #134	; 0x86
    6820:	2100      	movs	r1, #0
    6822:	e7d7      	b.n	67d4 <svcSignalWait+0x58>
    6824:	2200      	movs	r2, #0
    6826:	2100      	movs	r1, #0
    6828:	480e      	ldr	r0, [pc, #56]	; (6864 <svcSignalWait+0xe8>)
    682a:	f001 fc25 	bl	8078 <rt_evt_wait>
    682e:	2802      	cmp	r0, #2
    6830:	d0f0      	beq.n	6814 <svcSignalWait+0x98>
    6832:	2000      	movs	r0, #0
    6834:	e7cd      	b.n	67d2 <svcSignalWait+0x56>
    6836:	0034      	movs	r4, r6
    6838:	2008      	movs	r0, #8
    683a:	e7ca      	b.n	67d2 <svcSignalWait+0x56>
    683c:	2040      	movs	r0, #64	; 0x40
    683e:	e7c8      	b.n	67d2 <svcSignalWait+0x56>
    6840:	4907      	ldr	r1, [pc, #28]	; (6860 <svcSignalWait+0xe4>)
    6842:	e7bc      	b.n	67be <svcSignalWait+0x42>
    6844:	4906      	ldr	r1, [pc, #24]	; (6860 <svcSignalWait+0xe4>)
    6846:	e7df      	b.n	6808 <svcSignalWait+0x8c>
    6848:	b281      	uxth	r1, r0
    684a:	e7dd      	b.n	6808 <svcSignalWait+0x8c>
    684c:	b281      	uxth	r1, r0
    684e:	e7b6      	b.n	67be <svcSignalWait+0x42>
    6850:	4904      	ldr	r1, [pc, #16]	; (6864 <svcSignalWait+0xe8>)
    6852:	e7d9      	b.n	6808 <svcSignalWait+0x8c>
    6854:	4903      	ldr	r1, [pc, #12]	; (6864 <svcSignalWait+0xe8>)
    6856:	e7b2      	b.n	67be <svcSignalWait+0x42>
    6858:	003d0900 	.word	0x003d0900
    685c:	00008c68 	.word	0x00008c68
    6860:	0000fffe 	.word	0x0000fffe
    6864:	0000ffff 	.word	0x0000ffff
    6868:	200060b8 	.word	0x200060b8

0000686c <isrSignalSet>:
    686c:	b510      	push	{r4, lr}
    686e:	2800      	cmp	r0, #0
    6870:	d00e      	beq.n	6890 <isrSignalSet+0x24>
    6872:	0783      	lsls	r3, r0, #30
    6874:	d10c      	bne.n	6890 <isrSignalSet+0x24>
    6876:	7803      	ldrb	r3, [r0, #0]
    6878:	2b00      	cmp	r3, #0
    687a:	d109      	bne.n	6890 <isrSignalSet+0x24>
    687c:	0c0b      	lsrs	r3, r1, #16
    687e:	d107      	bne.n	6890 <isrSignalSet+0x24>
    6880:	78c3      	ldrb	r3, [r0, #3]
    6882:	8b04      	ldrh	r4, [r0, #24]
    6884:	b288      	uxth	r0, r1
    6886:	0019      	movs	r1, r3
    6888:	f001 fc52 	bl	8130 <isr_evt_set>
    688c:	0020      	movs	r0, r4
    688e:	e001      	b.n	6894 <isrSignalSet+0x28>
    6890:	2080      	movs	r0, #128	; 0x80
    6892:	0600      	lsls	r0, r0, #24
    6894:	bd10      	pop	{r4, pc}
    6896:	46c0      	nop			; (mov r8, r8)

00006898 <osSignalSet>:
    6898:	b5b0      	push	{r4, r5, r7, lr}
    689a:	f3ef 8405 	mrs	r4, IPSR
    689e:	2c00      	cmp	r4, #0
    68a0:	d103      	bne.n	68aa <osSignalSet+0x12>
    68a2:	4f0c      	ldr	r7, [pc, #48]	; (68d4 <osSignalSet+0x3c>)
    68a4:	46bc      	mov	ip, r7
    68a6:	df00      	svc	0
    68a8:	bdb0      	pop	{r4, r5, r7, pc}
    68aa:	2800      	cmp	r0, #0
    68ac:	d00e      	beq.n	68cc <osSignalSet+0x34>
    68ae:	0783      	lsls	r3, r0, #30
    68b0:	d10c      	bne.n	68cc <osSignalSet+0x34>
    68b2:	7803      	ldrb	r3, [r0, #0]
    68b4:	2b00      	cmp	r3, #0
    68b6:	d109      	bne.n	68cc <osSignalSet+0x34>
    68b8:	0c0b      	lsrs	r3, r1, #16
    68ba:	d107      	bne.n	68cc <osSignalSet+0x34>
    68bc:	78c3      	ldrb	r3, [r0, #3]
    68be:	8b04      	ldrh	r4, [r0, #24]
    68c0:	b288      	uxth	r0, r1
    68c2:	0019      	movs	r1, r3
    68c4:	f001 fc34 	bl	8130 <isr_evt_set>
    68c8:	0020      	movs	r0, r4
    68ca:	e7ed      	b.n	68a8 <osSignalSet+0x10>
    68cc:	2080      	movs	r0, #128	; 0x80
    68ce:	0600      	lsls	r0, r0, #24
    68d0:	e7ea      	b.n	68a8 <osSignalSet+0x10>
    68d2:	0000      	.short	0x0000
    68d4:	00006725 	.word	0x00006725

000068d8 <osSignalClear>:
    68d8:	b590      	push	{r4, r7, lr}
    68da:	f3ef 8405 	mrs	r4, IPSR
    68de:	2c00      	cmp	r4, #0
    68e0:	d103      	bne.n	68ea <osSignalClear+0x12>
    68e2:	4f03      	ldr	r7, [pc, #12]	; (68f0 <osSignalClear+0x18>)
    68e4:	46bc      	mov	ip, r7
    68e6:	df00      	svc	0
    68e8:	bd90      	pop	{r4, r7, pc}
    68ea:	2080      	movs	r0, #128	; 0x80
    68ec:	0600      	lsls	r0, r0, #24
    68ee:	e7fb      	b.n	68e8 <osSignalClear+0x10>
    68f0:	00006751 	.word	0x00006751

000068f4 <osSignalWait>:
    68f4:	b5f0      	push	{r4, r5, r6, r7, lr}
    68f6:	0004      	movs	r4, r0
    68f8:	f3ef 8505 	mrs	r5, IPSR
    68fc:	2d00      	cmp	r5, #0
    68fe:	d109      	bne.n	6914 <osSignalWait+0x20>
    6900:	0008      	movs	r0, r1
    6902:	0011      	movs	r1, r2
    6904:	4f05      	ldr	r7, [pc, #20]	; (691c <osSignalWait+0x28>)
    6906:	46bc      	mov	ip, r7
    6908:	df00      	svc	0
    690a:	6020      	str	r0, [r4, #0]
    690c:	6061      	str	r1, [r4, #4]
    690e:	60a2      	str	r2, [r4, #8]
    6910:	0020      	movs	r0, r4
    6912:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6914:	2382      	movs	r3, #130	; 0x82
    6916:	6003      	str	r3, [r0, #0]
    6918:	e7fa      	b.n	6910 <osSignalWait+0x1c>
    691a:	0000      	.short	0x0000
    691c:	0000677d 	.word	0x0000677d

00006920 <svcMutexCreate>:
    6920:	b510      	push	{r4, lr}
    6922:	2800      	cmp	r0, #0
    6924:	d00a      	beq.n	693c <svcMutexCreate+0x1c>
    6926:	6804      	ldr	r4, [r0, #0]
    6928:	2c00      	cmp	r4, #0
    692a:	d007      	beq.n	693c <svcMutexCreate+0x1c>
    692c:	7823      	ldrb	r3, [r4, #0]
    692e:	2b00      	cmp	r3, #0
    6930:	d104      	bne.n	693c <svcMutexCreate+0x1c>
    6932:	0020      	movs	r0, r4
    6934:	f000 feb4 	bl	76a0 <rt_mut_init>
    6938:	0020      	movs	r0, r4
    693a:	bd10      	pop	{r4, pc}
    693c:	2000      	movs	r0, #0
    693e:	e7fc      	b.n	693a <svcMutexCreate+0x1a>

00006940 <svcMutexWait>:
    6940:	b510      	push	{r4, lr}
    6942:	0004      	movs	r4, r0
    6944:	b082      	sub	sp, #8
    6946:	2080      	movs	r0, #128	; 0x80
    6948:	07a3      	lsls	r3, r4, #30
    694a:	d104      	bne.n	6956 <svcMutexWait+0x16>
    694c:	2c00      	cmp	r4, #0
    694e:	d002      	beq.n	6956 <svcMutexWait+0x16>
    6950:	7823      	ldrb	r3, [r4, #0]
    6952:	2b03      	cmp	r3, #3
    6954:	d001      	beq.n	695a <svcMutexWait+0x1a>
    6956:	b002      	add	sp, #8
    6958:	bd10      	pop	{r4, pc}
    695a:	2900      	cmp	r1, #0
    695c:	d01b      	beq.n	6996 <svcMutexWait+0x56>
    695e:	1c4b      	adds	r3, r1, #1
    6960:	d025      	beq.n	69ae <svcMutexWait+0x6e>
    6962:	4b16      	ldr	r3, [pc, #88]	; (69bc <svcMutexWait+0x7c>)
    6964:	4299      	cmp	r1, r3
    6966:	d824      	bhi.n	69b2 <svcMutexWait+0x72>
    6968:	20fa      	movs	r0, #250	; 0xfa
    696a:	4b15      	ldr	r3, [pc, #84]	; (69c0 <svcMutexWait+0x80>)
    696c:	0080      	lsls	r0, r0, #2
    696e:	4341      	muls	r1, r0
    6970:	681b      	ldr	r3, [r3, #0]
    6972:	9301      	str	r3, [sp, #4]
    6974:	3b01      	subs	r3, #1
    6976:	1858      	adds	r0, r3, r1
    6978:	9901      	ldr	r1, [sp, #4]
    697a:	f7fe f82b 	bl	49d4 <__aeabi_uidiv>
    697e:	4b11      	ldr	r3, [pc, #68]	; (69c4 <svcMutexWait+0x84>)
    6980:	0019      	movs	r1, r3
    6982:	4298      	cmp	r0, r3
    6984:	d917      	bls.n	69b6 <svcMutexWait+0x76>
    6986:	0020      	movs	r0, r4
    6988:	f000 ff86 	bl	7898 <rt_mut_wait>
    698c:	0003      	movs	r3, r0
    698e:	2801      	cmp	r0, #1
    6990:	d108      	bne.n	69a4 <svcMutexWait+0x64>
    6992:	20c1      	movs	r0, #193	; 0xc1
    6994:	e7df      	b.n	6956 <svcMutexWait+0x16>
    6996:	2100      	movs	r1, #0
    6998:	0020      	movs	r0, r4
    699a:	f000 ff7d 	bl	7898 <rt_mut_wait>
    699e:	0003      	movs	r3, r0
    69a0:	2801      	cmp	r0, #1
    69a2:	d002      	beq.n	69aa <svcMutexWait+0x6a>
    69a4:	2000      	movs	r0, #0
    69a6:	2bff      	cmp	r3, #255	; 0xff
    69a8:	d1d5      	bne.n	6956 <svcMutexWait+0x16>
    69aa:	2081      	movs	r0, #129	; 0x81
    69ac:	e7d3      	b.n	6956 <svcMutexWait+0x16>
    69ae:	4906      	ldr	r1, [pc, #24]	; (69c8 <svcMutexWait+0x88>)
    69b0:	e7e9      	b.n	6986 <svcMutexWait+0x46>
    69b2:	4904      	ldr	r1, [pc, #16]	; (69c4 <svcMutexWait+0x84>)
    69b4:	e7e7      	b.n	6986 <svcMutexWait+0x46>
    69b6:	b281      	uxth	r1, r0
    69b8:	e7e5      	b.n	6986 <svcMutexWait+0x46>
    69ba:	46c0      	nop			; (mov r8, r8)
    69bc:	003d0900 	.word	0x003d0900
    69c0:	00008c68 	.word	0x00008c68
    69c4:	0000fffe 	.word	0x0000fffe
    69c8:	0000ffff 	.word	0x0000ffff

000069cc <svcMutexRelease>:
    69cc:	b510      	push	{r4, lr}
    69ce:	2380      	movs	r3, #128	; 0x80
    69d0:	0782      	lsls	r2, r0, #30
    69d2:	d104      	bne.n	69de <svcMutexRelease+0x12>
    69d4:	2800      	cmp	r0, #0
    69d6:	d002      	beq.n	69de <svcMutexRelease+0x12>
    69d8:	7802      	ldrb	r2, [r0, #0]
    69da:	2a03      	cmp	r2, #3
    69dc:	d001      	beq.n	69e2 <svcMutexRelease+0x16>
    69de:	0018      	movs	r0, r3
    69e0:	bd10      	pop	{r4, pc}
    69e2:	f000 fed5 	bl	7790 <rt_mut_release>
    69e6:	2381      	movs	r3, #129	; 0x81
    69e8:	28ff      	cmp	r0, #255	; 0xff
    69ea:	d0f8      	beq.n	69de <svcMutexRelease+0x12>
    69ec:	2300      	movs	r3, #0
    69ee:	e7f6      	b.n	69de <svcMutexRelease+0x12>

000069f0 <svcMutexDelete>:
    69f0:	b510      	push	{r4, lr}
    69f2:	2380      	movs	r3, #128	; 0x80
    69f4:	0782      	lsls	r2, r0, #30
    69f6:	d104      	bne.n	6a02 <svcMutexDelete+0x12>
    69f8:	2800      	cmp	r0, #0
    69fa:	d002      	beq.n	6a02 <svcMutexDelete+0x12>
    69fc:	7802      	ldrb	r2, [r0, #0]
    69fe:	2a03      	cmp	r2, #3
    6a00:	d001      	beq.n	6a06 <svcMutexDelete+0x16>
    6a02:	0018      	movs	r0, r3
    6a04:	bd10      	pop	{r4, pc}
    6a06:	f000 fe53 	bl	76b0 <rt_mut_delete>
    6a0a:	2300      	movs	r3, #0
    6a0c:	e7f9      	b.n	6a02 <svcMutexDelete+0x12>
    6a0e:	46c0      	nop			; (mov r8, r8)

00006a10 <osMutexCreate>:
    6a10:	b5b0      	push	{r4, r5, r7, lr}
    6a12:	f3ef 8405 	mrs	r4, IPSR
    6a16:	2c00      	cmp	r4, #0
    6a18:	d119      	bne.n	6a4e <osMutexCreate+0x3e>
    6a1a:	f3ef 8414 	mrs	r4, CONTROL
    6a1e:	07e4      	lsls	r4, r4, #31
    6a20:	d411      	bmi.n	6a46 <osMutexCreate+0x36>
    6a22:	4c0c      	ldr	r4, [pc, #48]	; (6a54 <osMutexCreate+0x44>)
    6a24:	7824      	ldrb	r4, [r4, #0]
    6a26:	2c00      	cmp	r4, #0
    6a28:	d10d      	bne.n	6a46 <osMutexCreate+0x36>
    6a2a:	2800      	cmp	r0, #0
    6a2c:	d00f      	beq.n	6a4e <osMutexCreate+0x3e>
    6a2e:	6804      	ldr	r4, [r0, #0]
    6a30:	2c00      	cmp	r4, #0
    6a32:	d00c      	beq.n	6a4e <osMutexCreate+0x3e>
    6a34:	7823      	ldrb	r3, [r4, #0]
    6a36:	2000      	movs	r0, #0
    6a38:	2b00      	cmp	r3, #0
    6a3a:	d107      	bne.n	6a4c <osMutexCreate+0x3c>
    6a3c:	0020      	movs	r0, r4
    6a3e:	f000 fe2f 	bl	76a0 <rt_mut_init>
    6a42:	0020      	movs	r0, r4
    6a44:	e002      	b.n	6a4c <osMutexCreate+0x3c>
    6a46:	4f04      	ldr	r7, [pc, #16]	; (6a58 <osMutexCreate+0x48>)
    6a48:	46bc      	mov	ip, r7
    6a4a:	df00      	svc	0
    6a4c:	bdb0      	pop	{r4, r5, r7, pc}
    6a4e:	2000      	movs	r0, #0
    6a50:	e7fc      	b.n	6a4c <osMutexCreate+0x3c>
    6a52:	46c0      	nop			; (mov r8, r8)
    6a54:	20006079 	.word	0x20006079
    6a58:	00006921 	.word	0x00006921

00006a5c <osMutexWait>:
    6a5c:	b5b0      	push	{r4, r5, r7, lr}
    6a5e:	0005      	movs	r5, r0
    6a60:	f3ef 8405 	mrs	r4, IPSR
    6a64:	2082      	movs	r0, #130	; 0x82
    6a66:	2c00      	cmp	r4, #0
    6a68:	d000      	beq.n	6a6c <osMutexWait+0x10>
    6a6a:	bdb0      	pop	{r4, r5, r7, pc}
    6a6c:	0028      	movs	r0, r5
    6a6e:	4f02      	ldr	r7, [pc, #8]	; (6a78 <osMutexWait+0x1c>)
    6a70:	46bc      	mov	ip, r7
    6a72:	df00      	svc	0
    6a74:	e7f9      	b.n	6a6a <osMutexWait+0xe>
    6a76:	0000      	.short	0x0000
    6a78:	00006941 	.word	0x00006941

00006a7c <osMutexRelease>:
    6a7c:	b5b0      	push	{r4, r5, r7, lr}
    6a7e:	0005      	movs	r5, r0
    6a80:	f3ef 8405 	mrs	r4, IPSR
    6a84:	2082      	movs	r0, #130	; 0x82
    6a86:	2c00      	cmp	r4, #0
    6a88:	d000      	beq.n	6a8c <osMutexRelease+0x10>
    6a8a:	bdb0      	pop	{r4, r5, r7, pc}
    6a8c:	0028      	movs	r0, r5
    6a8e:	4f02      	ldr	r7, [pc, #8]	; (6a98 <osMutexRelease+0x1c>)
    6a90:	46bc      	mov	ip, r7
    6a92:	df00      	svc	0
    6a94:	e7f9      	b.n	6a8a <osMutexRelease+0xe>
    6a96:	0000      	.short	0x0000
    6a98:	000069cd 	.word	0x000069cd

00006a9c <osMutexDelete>:
    6a9c:	b5b0      	push	{r4, r5, r7, lr}
    6a9e:	0005      	movs	r5, r0
    6aa0:	f3ef 8405 	mrs	r4, IPSR
    6aa4:	2082      	movs	r0, #130	; 0x82
    6aa6:	2c00      	cmp	r4, #0
    6aa8:	d000      	beq.n	6aac <osMutexDelete+0x10>
    6aaa:	bdb0      	pop	{r4, r5, r7, pc}
    6aac:	0028      	movs	r0, r5
    6aae:	4f02      	ldr	r7, [pc, #8]	; (6ab8 <osMutexDelete+0x1c>)
    6ab0:	46bc      	mov	ip, r7
    6ab2:	df00      	svc	0
    6ab4:	e7f9      	b.n	6aaa <osMutexDelete+0xe>
    6ab6:	0000      	.short	0x0000
    6ab8:	000069f1 	.word	0x000069f1

00006abc <svcSemaphoreCreate>:
    6abc:	b510      	push	{r4, lr}
    6abe:	2800      	cmp	r0, #0
    6ac0:	d00e      	beq.n	6ae0 <svcSemaphoreCreate+0x24>
    6ac2:	6804      	ldr	r4, [r0, #0]
    6ac4:	2c00      	cmp	r4, #0
    6ac6:	d00b      	beq.n	6ae0 <svcSemaphoreCreate+0x24>
    6ac8:	7823      	ldrb	r3, [r4, #0]
    6aca:	2b00      	cmp	r3, #0
    6acc:	d108      	bne.n	6ae0 <svcSemaphoreCreate+0x24>
    6ace:	4b05      	ldr	r3, [pc, #20]	; (6ae4 <svcSemaphoreCreate+0x28>)
    6ad0:	4299      	cmp	r1, r3
    6ad2:	dc05      	bgt.n	6ae0 <svcSemaphoreCreate+0x24>
    6ad4:	0020      	movs	r0, r4
    6ad6:	b289      	uxth	r1, r1
    6ad8:	f000 ff4a 	bl	7970 <rt_sem_init>
    6adc:	0020      	movs	r0, r4
    6ade:	bd10      	pop	{r4, pc}
    6ae0:	2000      	movs	r0, #0
    6ae2:	e7fc      	b.n	6ade <svcSemaphoreCreate+0x22>
    6ae4:	0000ffff 	.word	0x0000ffff

00006ae8 <svcSemaphoreWait>:
    6ae8:	b510      	push	{r4, lr}
    6aea:	0004      	movs	r4, r0
    6aec:	b082      	sub	sp, #8
    6aee:	0783      	lsls	r3, r0, #30
    6af0:	d111      	bne.n	6b16 <svcSemaphoreWait+0x2e>
    6af2:	2800      	cmp	r0, #0
    6af4:	d00f      	beq.n	6b16 <svcSemaphoreWait+0x2e>
    6af6:	7803      	ldrb	r3, [r0, #0]
    6af8:	2b02      	cmp	r3, #2
    6afa:	d10c      	bne.n	6b16 <svcSemaphoreWait+0x2e>
    6afc:	2300      	movs	r3, #0
    6afe:	2900      	cmp	r1, #0
    6b00:	d10c      	bne.n	6b1c <svcSemaphoreWait+0x34>
    6b02:	0019      	movs	r1, r3
    6b04:	0020      	movs	r0, r4
    6b06:	f000 ff83 	bl	7a10 <rt_sem_wait>
    6b0a:	2801      	cmp	r0, #1
    6b0c:	d023      	beq.n	6b56 <svcSemaphoreWait+0x6e>
    6b0e:	8860      	ldrh	r0, [r4, #2]
    6b10:	3001      	adds	r0, #1
    6b12:	b002      	add	sp, #8
    6b14:	bd10      	pop	{r4, pc}
    6b16:	2001      	movs	r0, #1
    6b18:	4240      	negs	r0, r0
    6b1a:	e7fa      	b.n	6b12 <svcSemaphoreWait+0x2a>
    6b1c:	1c4b      	adds	r3, r1, #1
    6b1e:	d01c      	beq.n	6b5a <svcSemaphoreWait+0x72>
    6b20:	4b0f      	ldr	r3, [pc, #60]	; (6b60 <svcSemaphoreWait+0x78>)
    6b22:	4299      	cmp	r1, r3
    6b24:	d810      	bhi.n	6b48 <svcSemaphoreWait+0x60>
    6b26:	20fa      	movs	r0, #250	; 0xfa
    6b28:	4b0e      	ldr	r3, [pc, #56]	; (6b64 <svcSemaphoreWait+0x7c>)
    6b2a:	0080      	lsls	r0, r0, #2
    6b2c:	4341      	muls	r1, r0
    6b2e:	681b      	ldr	r3, [r3, #0]
    6b30:	9301      	str	r3, [sp, #4]
    6b32:	3b01      	subs	r3, #1
    6b34:	1858      	adds	r0, r3, r1
    6b36:	9901      	ldr	r1, [sp, #4]
    6b38:	f7fd ff4c 	bl	49d4 <__aeabi_uidiv>
    6b3c:	4a0a      	ldr	r2, [pc, #40]	; (6b68 <svcSemaphoreWait+0x80>)
    6b3e:	0013      	movs	r3, r2
    6b40:	4290      	cmp	r0, r2
    6b42:	d8de      	bhi.n	6b02 <svcSemaphoreWait+0x1a>
    6b44:	b283      	uxth	r3, r0
    6b46:	e7dc      	b.n	6b02 <svcSemaphoreWait+0x1a>
    6b48:	4b07      	ldr	r3, [pc, #28]	; (6b68 <svcSemaphoreWait+0x80>)
    6b4a:	0020      	movs	r0, r4
    6b4c:	0019      	movs	r1, r3
    6b4e:	f000 ff5f 	bl	7a10 <rt_sem_wait>
    6b52:	2801      	cmp	r0, #1
    6b54:	d1db      	bne.n	6b0e <svcSemaphoreWait+0x26>
    6b56:	2000      	movs	r0, #0
    6b58:	e7db      	b.n	6b12 <svcSemaphoreWait+0x2a>
    6b5a:	4b04      	ldr	r3, [pc, #16]	; (6b6c <svcSemaphoreWait+0x84>)
    6b5c:	e7d1      	b.n	6b02 <svcSemaphoreWait+0x1a>
    6b5e:	46c0      	nop			; (mov r8, r8)
    6b60:	003d0900 	.word	0x003d0900
    6b64:	00008c68 	.word	0x00008c68
    6b68:	0000fffe 	.word	0x0000fffe
    6b6c:	0000ffff 	.word	0x0000ffff

00006b70 <svcSemaphoreRelease>:
    6b70:	b510      	push	{r4, lr}
    6b72:	2380      	movs	r3, #128	; 0x80
    6b74:	0782      	lsls	r2, r0, #30
    6b76:	d104      	bne.n	6b82 <svcSemaphoreRelease+0x12>
    6b78:	2800      	cmp	r0, #0
    6b7a:	d002      	beq.n	6b82 <svcSemaphoreRelease+0x12>
    6b7c:	7802      	ldrb	r2, [r0, #0]
    6b7e:	2a02      	cmp	r2, #2
    6b80:	d001      	beq.n	6b86 <svcSemaphoreRelease+0x16>
    6b82:	0018      	movs	r0, r3
    6b84:	bd10      	pop	{r4, pc}
    6b86:	8841      	ldrh	r1, [r0, #2]
    6b88:	4a03      	ldr	r2, [pc, #12]	; (6b98 <svcSemaphoreRelease+0x28>)
    6b8a:	3301      	adds	r3, #1
    6b8c:	4291      	cmp	r1, r2
    6b8e:	d0f8      	beq.n	6b82 <svcSemaphoreRelease+0x12>
    6b90:	f000 ff28 	bl	79e4 <rt_sem_send>
    6b94:	2300      	movs	r3, #0
    6b96:	e7f4      	b.n	6b82 <svcSemaphoreRelease+0x12>
    6b98:	0000ffff 	.word	0x0000ffff

00006b9c <svcSemaphoreDelete>:
    6b9c:	b510      	push	{r4, lr}
    6b9e:	2380      	movs	r3, #128	; 0x80
    6ba0:	0782      	lsls	r2, r0, #30
    6ba2:	d104      	bne.n	6bae <svcSemaphoreDelete+0x12>
    6ba4:	2800      	cmp	r0, #0
    6ba6:	d002      	beq.n	6bae <svcSemaphoreDelete+0x12>
    6ba8:	7802      	ldrb	r2, [r0, #0]
    6baa:	2a02      	cmp	r2, #2
    6bac:	d001      	beq.n	6bb2 <svcSemaphoreDelete+0x16>
    6bae:	0018      	movs	r0, r3
    6bb0:	bd10      	pop	{r4, pc}
    6bb2:	f000 fee3 	bl	797c <rt_sem_delete>
    6bb6:	2300      	movs	r3, #0
    6bb8:	e7f9      	b.n	6bae <svcSemaphoreDelete+0x12>
    6bba:	46c0      	nop			; (mov r8, r8)

00006bbc <isrSemaphoreRelease>:
    6bbc:	b510      	push	{r4, lr}
    6bbe:	2380      	movs	r3, #128	; 0x80
    6bc0:	0782      	lsls	r2, r0, #30
    6bc2:	d104      	bne.n	6bce <isrSemaphoreRelease+0x12>
    6bc4:	2800      	cmp	r0, #0
    6bc6:	d002      	beq.n	6bce <isrSemaphoreRelease+0x12>
    6bc8:	7802      	ldrb	r2, [r0, #0]
    6bca:	2a02      	cmp	r2, #2
    6bcc:	d001      	beq.n	6bd2 <isrSemaphoreRelease+0x16>
    6bce:	0018      	movs	r0, r3
    6bd0:	bd10      	pop	{r4, pc}
    6bd2:	8841      	ldrh	r1, [r0, #2]
    6bd4:	4a03      	ldr	r2, [pc, #12]	; (6be4 <isrSemaphoreRelease+0x28>)
    6bd6:	3301      	adds	r3, #1
    6bd8:	4291      	cmp	r1, r2
    6bda:	d0f8      	beq.n	6bce <isrSemaphoreRelease+0x12>
    6bdc:	f000 ff3a 	bl	7a54 <isr_sem_send>
    6be0:	2300      	movs	r3, #0
    6be2:	e7f4      	b.n	6bce <isrSemaphoreRelease+0x12>
    6be4:	0000ffff 	.word	0x0000ffff

00006be8 <osSemaphoreCreate>:
    6be8:	b5b0      	push	{r4, r5, r7, lr}
    6bea:	f3ef 8405 	mrs	r4, IPSR
    6bee:	2c00      	cmp	r4, #0
    6bf0:	d11c      	bne.n	6c2c <osSemaphoreCreate+0x44>
    6bf2:	f3ef 8414 	mrs	r4, CONTROL
    6bf6:	07e4      	lsls	r4, r4, #31
    6bf8:	d503      	bpl.n	6c02 <osSemaphoreCreate+0x1a>
    6bfa:	4f0f      	ldr	r7, [pc, #60]	; (6c38 <osSemaphoreCreate+0x50>)
    6bfc:	46bc      	mov	ip, r7
    6bfe:	df00      	svc	0
    6c00:	bdb0      	pop	{r4, r5, r7, pc}
    6c02:	4c0b      	ldr	r4, [pc, #44]	; (6c30 <osSemaphoreCreate+0x48>)
    6c04:	7824      	ldrb	r4, [r4, #0]
    6c06:	2c00      	cmp	r4, #0
    6c08:	d1f7      	bne.n	6bfa <osSemaphoreCreate+0x12>
    6c0a:	2800      	cmp	r0, #0
    6c0c:	d00e      	beq.n	6c2c <osSemaphoreCreate+0x44>
    6c0e:	6804      	ldr	r4, [r0, #0]
    6c10:	2c00      	cmp	r4, #0
    6c12:	d00b      	beq.n	6c2c <osSemaphoreCreate+0x44>
    6c14:	7823      	ldrb	r3, [r4, #0]
    6c16:	2b00      	cmp	r3, #0
    6c18:	d108      	bne.n	6c2c <osSemaphoreCreate+0x44>
    6c1a:	4b06      	ldr	r3, [pc, #24]	; (6c34 <osSemaphoreCreate+0x4c>)
    6c1c:	4299      	cmp	r1, r3
    6c1e:	dc05      	bgt.n	6c2c <osSemaphoreCreate+0x44>
    6c20:	0020      	movs	r0, r4
    6c22:	b289      	uxth	r1, r1
    6c24:	f000 fea4 	bl	7970 <rt_sem_init>
    6c28:	0020      	movs	r0, r4
    6c2a:	e7e9      	b.n	6c00 <osSemaphoreCreate+0x18>
    6c2c:	2000      	movs	r0, #0
    6c2e:	e7e7      	b.n	6c00 <osSemaphoreCreate+0x18>
    6c30:	20006079 	.word	0x20006079
    6c34:	0000ffff 	.word	0x0000ffff
    6c38:	00006abd 	.word	0x00006abd

00006c3c <osSemaphoreWait>:
    6c3c:	b590      	push	{r4, r7, lr}
    6c3e:	f3ef 8405 	mrs	r4, IPSR
    6c42:	2c00      	cmp	r4, #0
    6c44:	d103      	bne.n	6c4e <osSemaphoreWait+0x12>
    6c46:	4f03      	ldr	r7, [pc, #12]	; (6c54 <osSemaphoreWait+0x18>)
    6c48:	46bc      	mov	ip, r7
    6c4a:	df00      	svc	0
    6c4c:	bd90      	pop	{r4, r7, pc}
    6c4e:	2001      	movs	r0, #1
    6c50:	4240      	negs	r0, r0
    6c52:	e7fb      	b.n	6c4c <osSemaphoreWait+0x10>
    6c54:	00006ae9 	.word	0x00006ae9

00006c58 <osSemaphoreRelease>:
    6c58:	b5b0      	push	{r4, r5, r7, lr}
    6c5a:	f3ef 8405 	mrs	r4, IPSR
    6c5e:	2c00      	cmp	r4, #0
    6c60:	d105      	bne.n	6c6e <osSemaphoreRelease+0x16>
    6c62:	4f0c      	ldr	r7, [pc, #48]	; (6c94 <osSemaphoreRelease+0x3c>)
    6c64:	46bc      	mov	ip, r7
    6c66:	df00      	svc	0
    6c68:	0003      	movs	r3, r0
    6c6a:	0018      	movs	r0, r3
    6c6c:	bdb0      	pop	{r4, r5, r7, pc}
    6c6e:	2380      	movs	r3, #128	; 0x80
    6c70:	0782      	lsls	r2, r0, #30
    6c72:	d1fa      	bne.n	6c6a <osSemaphoreRelease+0x12>
    6c74:	2800      	cmp	r0, #0
    6c76:	d0f8      	beq.n	6c6a <osSemaphoreRelease+0x12>
    6c78:	7802      	ldrb	r2, [r0, #0]
    6c7a:	2a02      	cmp	r2, #2
    6c7c:	d1f5      	bne.n	6c6a <osSemaphoreRelease+0x12>
    6c7e:	8841      	ldrh	r1, [r0, #2]
    6c80:	4a03      	ldr	r2, [pc, #12]	; (6c90 <osSemaphoreRelease+0x38>)
    6c82:	3301      	adds	r3, #1
    6c84:	4291      	cmp	r1, r2
    6c86:	d0f0      	beq.n	6c6a <osSemaphoreRelease+0x12>
    6c88:	f000 fee4 	bl	7a54 <isr_sem_send>
    6c8c:	2300      	movs	r3, #0
    6c8e:	e7ec      	b.n	6c6a <osSemaphoreRelease+0x12>
    6c90:	0000ffff 	.word	0x0000ffff
    6c94:	00006b71 	.word	0x00006b71

00006c98 <osSemaphoreDelete>:
    6c98:	b5b0      	push	{r4, r5, r7, lr}
    6c9a:	0005      	movs	r5, r0
    6c9c:	f3ef 8405 	mrs	r4, IPSR
    6ca0:	2082      	movs	r0, #130	; 0x82
    6ca2:	2c00      	cmp	r4, #0
    6ca4:	d000      	beq.n	6ca8 <osSemaphoreDelete+0x10>
    6ca6:	bdb0      	pop	{r4, r5, r7, pc}
    6ca8:	0028      	movs	r0, r5
    6caa:	4f02      	ldr	r7, [pc, #8]	; (6cb4 <osSemaphoreDelete+0x1c>)
    6cac:	46bc      	mov	ip, r7
    6cae:	df00      	svc	0
    6cb0:	e7f9      	b.n	6ca6 <osSemaphoreDelete+0xe>
    6cb2:	0000      	.short	0x0000
    6cb4:	00006b9d 	.word	0x00006b9d

00006cb8 <svcPoolCreate>:
    6cb8:	b510      	push	{r4, lr}
    6cba:	1e04      	subs	r4, r0, #0
    6cbc:	d011      	beq.n	6ce2 <svcPoolCreate+0x2a>
    6cbe:	6801      	ldr	r1, [r0, #0]
    6cc0:	2900      	cmp	r1, #0
    6cc2:	d00e      	beq.n	6ce2 <svcPoolCreate+0x2a>
    6cc4:	6842      	ldr	r2, [r0, #4]
    6cc6:	2a00      	cmp	r2, #0
    6cc8:	d00b      	beq.n	6ce2 <svcPoolCreate+0x2a>
    6cca:	6880      	ldr	r0, [r0, #8]
    6ccc:	2800      	cmp	r0, #0
    6cce:	d008      	beq.n	6ce2 <svcPoolCreate+0x2a>
    6cd0:	2303      	movs	r3, #3
    6cd2:	3203      	adds	r2, #3
    6cd4:	439a      	bics	r2, r3
    6cd6:	4351      	muls	r1, r2
    6cd8:	310c      	adds	r1, #12
    6cda:	f000 fc81 	bl	75e0 <_init_box>
    6cde:	68a0      	ldr	r0, [r4, #8]
    6ce0:	bd10      	pop	{r4, pc}
    6ce2:	2000      	movs	r0, #0
    6ce4:	e7fc      	b.n	6ce0 <svcPoolCreate+0x28>
    6ce6:	46c0      	nop			; (mov r8, r8)

00006ce8 <sysPoolAlloc>:
    6ce8:	b510      	push	{r4, lr}
    6cea:	2800      	cmp	r0, #0
    6cec:	d002      	beq.n	6cf4 <sysPoolAlloc+0xc>
    6cee:	f000 fca3 	bl	7638 <rt_alloc_box>
    6cf2:	bd10      	pop	{r4, pc}
    6cf4:	2000      	movs	r0, #0
    6cf6:	e7fc      	b.n	6cf2 <sysPoolAlloc+0xa>

00006cf8 <sysPoolFree>:
    6cf8:	b510      	push	{r4, lr}
    6cfa:	2380      	movs	r3, #128	; 0x80
    6cfc:	2800      	cmp	r0, #0
    6cfe:	d006      	beq.n	6d0e <sysPoolFree+0x16>
    6d00:	f000 fcba 	bl	7678 <rt_free_box>
    6d04:	1e42      	subs	r2, r0, #1
    6d06:	4190      	sbcs	r0, r2
    6d08:	2386      	movs	r3, #134	; 0x86
    6d0a:	4240      	negs	r0, r0
    6d0c:	4003      	ands	r3, r0
    6d0e:	0018      	movs	r0, r3
    6d10:	bd10      	pop	{r4, pc}
    6d12:	46c0      	nop			; (mov r8, r8)

00006d14 <osPoolCreate>:
    6d14:	b5b0      	push	{r4, r5, r7, lr}
    6d16:	0004      	movs	r4, r0
    6d18:	f3ef 8005 	mrs	r0, IPSR
    6d1c:	2800      	cmp	r0, #0
    6d1e:	d120      	bne.n	6d62 <osPoolCreate+0x4e>
    6d20:	f3ef 8014 	mrs	r0, CONTROL
    6d24:	07c0      	lsls	r0, r0, #31
    6d26:	d504      	bpl.n	6d32 <osPoolCreate+0x1e>
    6d28:	0020      	movs	r0, r4
    6d2a:	4f10      	ldr	r7, [pc, #64]	; (6d6c <osPoolCreate+0x58>)
    6d2c:	46bc      	mov	ip, r7
    6d2e:	df00      	svc	0
    6d30:	bdb0      	pop	{r4, r5, r7, pc}
    6d32:	480d      	ldr	r0, [pc, #52]	; (6d68 <osPoolCreate+0x54>)
    6d34:	7800      	ldrb	r0, [r0, #0]
    6d36:	2800      	cmp	r0, #0
    6d38:	d1f6      	bne.n	6d28 <osPoolCreate+0x14>
    6d3a:	2c00      	cmp	r4, #0
    6d3c:	d011      	beq.n	6d62 <osPoolCreate+0x4e>
    6d3e:	6821      	ldr	r1, [r4, #0]
    6d40:	2900      	cmp	r1, #0
    6d42:	d00e      	beq.n	6d62 <osPoolCreate+0x4e>
    6d44:	6862      	ldr	r2, [r4, #4]
    6d46:	2a00      	cmp	r2, #0
    6d48:	d00b      	beq.n	6d62 <osPoolCreate+0x4e>
    6d4a:	68a0      	ldr	r0, [r4, #8]
    6d4c:	2800      	cmp	r0, #0
    6d4e:	d008      	beq.n	6d62 <osPoolCreate+0x4e>
    6d50:	2303      	movs	r3, #3
    6d52:	3203      	adds	r2, #3
    6d54:	439a      	bics	r2, r3
    6d56:	4351      	muls	r1, r2
    6d58:	310c      	adds	r1, #12
    6d5a:	f000 fc41 	bl	75e0 <_init_box>
    6d5e:	68a0      	ldr	r0, [r4, #8]
    6d60:	e7e6      	b.n	6d30 <osPoolCreate+0x1c>
    6d62:	2000      	movs	r0, #0
    6d64:	e7e4      	b.n	6d30 <osPoolCreate+0x1c>
    6d66:	46c0      	nop			; (mov r8, r8)
    6d68:	20006079 	.word	0x20006079
    6d6c:	00006cb9 	.word	0x00006cb9

00006d70 <osPoolAlloc>:
    6d70:	b5b0      	push	{r4, r5, r7, lr}
    6d72:	f3ef 8405 	mrs	r4, IPSR
    6d76:	2c00      	cmp	r4, #0
    6d78:	d103      	bne.n	6d82 <osPoolAlloc+0x12>
    6d7a:	f3ef 8414 	mrs	r4, CONTROL
    6d7e:	07e4      	lsls	r4, r4, #31
    6d80:	d404      	bmi.n	6d8c <osPoolAlloc+0x1c>
    6d82:	2800      	cmp	r0, #0
    6d84:	d006      	beq.n	6d94 <osPoolAlloc+0x24>
    6d86:	f000 fc57 	bl	7638 <rt_alloc_box>
    6d8a:	bdb0      	pop	{r4, r5, r7, pc}
    6d8c:	4f02      	ldr	r7, [pc, #8]	; (6d98 <osPoolAlloc+0x28>)
    6d8e:	46bc      	mov	ip, r7
    6d90:	df00      	svc	0
    6d92:	e7fa      	b.n	6d8a <osPoolAlloc+0x1a>
    6d94:	2000      	movs	r0, #0
    6d96:	e7f8      	b.n	6d8a <osPoolAlloc+0x1a>
    6d98:	00006ce9 	.word	0x00006ce9

00006d9c <osPoolCAlloc>:
    6d9c:	b5b0      	push	{r4, r5, r7, lr}
    6d9e:	0004      	movs	r4, r0
    6da0:	f3ef 8005 	mrs	r0, IPSR
    6da4:	2800      	cmp	r0, #0
    6da6:	d103      	bne.n	6db0 <osPoolCAlloc+0x14>
    6da8:	f3ef 8014 	mrs	r0, CONTROL
    6dac:	07c0      	lsls	r0, r0, #31
    6dae:	d410      	bmi.n	6dd2 <osPoolCAlloc+0x36>
    6db0:	2c00      	cmp	r4, #0
    6db2:	d015      	beq.n	6de0 <osPoolCAlloc+0x44>
    6db4:	0020      	movs	r0, r4
    6db6:	f000 fc3f 	bl	7638 <rt_alloc_box>
    6dba:	2800      	cmp	r0, #0
    6dbc:	d010      	beq.n	6de0 <osPoolCAlloc+0x44>
    6dbe:	68a3      	ldr	r3, [r4, #8]
    6dc0:	2b00      	cmp	r3, #0
    6dc2:	d005      	beq.n	6dd0 <osPoolCAlloc+0x34>
    6dc4:	0002      	movs	r2, r0
    6dc6:	2100      	movs	r1, #0
    6dc8:	3b04      	subs	r3, #4
    6dca:	c202      	stmia	r2!, {r1}
    6dcc:	2b00      	cmp	r3, #0
    6dce:	d1fb      	bne.n	6dc8 <osPoolCAlloc+0x2c>
    6dd0:	bdb0      	pop	{r4, r5, r7, pc}
    6dd2:	0020      	movs	r0, r4
    6dd4:	4f03      	ldr	r7, [pc, #12]	; (6de4 <osPoolCAlloc+0x48>)
    6dd6:	46bc      	mov	ip, r7
    6dd8:	df00      	svc	0
    6dda:	2c00      	cmp	r4, #0
    6ddc:	d1ed      	bne.n	6dba <osPoolCAlloc+0x1e>
    6dde:	e7f7      	b.n	6dd0 <osPoolCAlloc+0x34>
    6de0:	2000      	movs	r0, #0
    6de2:	e7f5      	b.n	6dd0 <osPoolCAlloc+0x34>
    6de4:	00006ce9 	.word	0x00006ce9

00006de8 <osPoolFree>:
    6de8:	b5b0      	push	{r4, r5, r7, lr}
    6dea:	f3ef 8405 	mrs	r4, IPSR
    6dee:	2c00      	cmp	r4, #0
    6df0:	d103      	bne.n	6dfa <osPoolFree+0x12>
    6df2:	f3ef 8414 	mrs	r4, CONTROL
    6df6:	07e4      	lsls	r4, r4, #31
    6df8:	d40a      	bmi.n	6e10 <osPoolFree+0x28>
    6dfa:	2800      	cmp	r0, #0
    6dfc:	d00c      	beq.n	6e18 <osPoolFree+0x30>
    6dfe:	f000 fc3b 	bl	7678 <rt_free_box>
    6e02:	0003      	movs	r3, r0
    6e04:	1e5a      	subs	r2, r3, #1
    6e06:	4193      	sbcs	r3, r2
    6e08:	2086      	movs	r0, #134	; 0x86
    6e0a:	425b      	negs	r3, r3
    6e0c:	4018      	ands	r0, r3
    6e0e:	bdb0      	pop	{r4, r5, r7, pc}
    6e10:	4f02      	ldr	r7, [pc, #8]	; (6e1c <osPoolFree+0x34>)
    6e12:	46bc      	mov	ip, r7
    6e14:	df00      	svc	0
    6e16:	e7fa      	b.n	6e0e <osPoolFree+0x26>
    6e18:	2080      	movs	r0, #128	; 0x80
    6e1a:	e7f8      	b.n	6e0e <osPoolFree+0x26>
    6e1c:	00006cf9 	.word	0x00006cf9

00006e20 <svcMessageCreate>:
    6e20:	b510      	push	{r4, lr}
    6e22:	1e04      	subs	r4, r0, #0
    6e24:	d00f      	beq.n	6e46 <svcMessageCreate+0x26>
    6e26:	6801      	ldr	r1, [r0, #0]
    6e28:	2900      	cmp	r1, #0
    6e2a:	d00c      	beq.n	6e46 <svcMessageCreate+0x26>
    6e2c:	6840      	ldr	r0, [r0, #4]
    6e2e:	2800      	cmp	r0, #0
    6e30:	d009      	beq.n	6e46 <svcMessageCreate+0x26>
    6e32:	7803      	ldrb	r3, [r0, #0]
    6e34:	2b00      	cmp	r3, #0
    6e36:	d106      	bne.n	6e46 <svcMessageCreate+0x26>
    6e38:	3104      	adds	r1, #4
    6e3a:	0089      	lsls	r1, r1, #2
    6e3c:	b289      	uxth	r1, r1
    6e3e:	f000 fe2b 	bl	7a98 <rt_mbx_init>
    6e42:	6860      	ldr	r0, [r4, #4]
    6e44:	bd10      	pop	{r4, pc}
    6e46:	2000      	movs	r0, #0
    6e48:	e7fc      	b.n	6e44 <svcMessageCreate+0x24>
    6e4a:	46c0      	nop			; (mov r8, r8)

00006e4c <svcMessagePut>:
    6e4c:	b570      	push	{r4, r5, r6, lr}
    6e4e:	0004      	movs	r4, r0
    6e50:	b082      	sub	sp, #8
    6e52:	000e      	movs	r6, r1
    6e54:	0015      	movs	r5, r2
    6e56:	2800      	cmp	r0, #0
    6e58:	d005      	beq.n	6e66 <svcMessagePut+0x1a>
    6e5a:	7803      	ldrb	r3, [r0, #0]
    6e5c:	2080      	movs	r0, #128	; 0x80
    6e5e:	2b01      	cmp	r3, #1
    6e60:	d003      	beq.n	6e6a <svcMessagePut+0x1e>
    6e62:	b002      	add	sp, #8
    6e64:	bd70      	pop	{r4, r5, r6, pc}
    6e66:	2080      	movs	r0, #128	; 0x80
    6e68:	e7fb      	b.n	6e62 <svcMessagePut+0x16>
    6e6a:	2200      	movs	r2, #0
    6e6c:	2d00      	cmp	r5, #0
    6e6e:	d014      	beq.n	6e9a <svcMessagePut+0x4e>
    6e70:	1c6b      	adds	r3, r5, #1
    6e72:	d01f      	beq.n	6eb4 <svcMessagePut+0x68>
    6e74:	4b11      	ldr	r3, [pc, #68]	; (6ebc <svcMessagePut+0x70>)
    6e76:	429d      	cmp	r5, r3
    6e78:	d81e      	bhi.n	6eb8 <svcMessagePut+0x6c>
    6e7a:	20fa      	movs	r0, #250	; 0xfa
    6e7c:	4b10      	ldr	r3, [pc, #64]	; (6ec0 <svcMessagePut+0x74>)
    6e7e:	0080      	lsls	r0, r0, #2
    6e80:	4368      	muls	r0, r5
    6e82:	681b      	ldr	r3, [r3, #0]
    6e84:	9301      	str	r3, [sp, #4]
    6e86:	3b01      	subs	r3, #1
    6e88:	18c0      	adds	r0, r0, r3
    6e8a:	9901      	ldr	r1, [sp, #4]
    6e8c:	f7fd fda2 	bl	49d4 <__aeabi_uidiv>
    6e90:	4b0c      	ldr	r3, [pc, #48]	; (6ec4 <svcMessagePut+0x78>)
    6e92:	001a      	movs	r2, r3
    6e94:	4298      	cmp	r0, r3
    6e96:	d800      	bhi.n	6e9a <svcMessagePut+0x4e>
    6e98:	b282      	uxth	r2, r0
    6e9a:	0031      	movs	r1, r6
    6e9c:	0020      	movs	r0, r4
    6e9e:	f000 fe09 	bl	7ab4 <rt_mbx_send>
    6ea2:	0003      	movs	r3, r0
    6ea4:	2000      	movs	r0, #0
    6ea6:	2b01      	cmp	r3, #1
    6ea8:	d1db      	bne.n	6e62 <svcMessagePut+0x16>
    6eaa:	30c1      	adds	r0, #193	; 0xc1
    6eac:	2d00      	cmp	r5, #0
    6eae:	d1d8      	bne.n	6e62 <svcMessagePut+0x16>
    6eb0:	3840      	subs	r0, #64	; 0x40
    6eb2:	e7d6      	b.n	6e62 <svcMessagePut+0x16>
    6eb4:	4a04      	ldr	r2, [pc, #16]	; (6ec8 <svcMessagePut+0x7c>)
    6eb6:	e7f0      	b.n	6e9a <svcMessagePut+0x4e>
    6eb8:	4a02      	ldr	r2, [pc, #8]	; (6ec4 <svcMessagePut+0x78>)
    6eba:	e7ee      	b.n	6e9a <svcMessagePut+0x4e>
    6ebc:	003d0900 	.word	0x003d0900
    6ec0:	00008c68 	.word	0x00008c68
    6ec4:	0000fffe 	.word	0x0000fffe
    6ec8:	0000ffff 	.word	0x0000ffff

00006ecc <svcMessageGet>:
    6ecc:	b510      	push	{r4, lr}
    6ece:	0004      	movs	r4, r0
    6ed0:	b086      	sub	sp, #24
    6ed2:	2800      	cmp	r0, #0
    6ed4:	d002      	beq.n	6edc <svcMessageGet+0x10>
    6ed6:	7803      	ldrb	r3, [r0, #0]
    6ed8:	2b01      	cmp	r3, #1
    6eda:	d005      	beq.n	6ee8 <svcMessageGet+0x1c>
    6edc:	2080      	movs	r0, #128	; 0x80
    6ede:	2100      	movs	r1, #0
    6ee0:	2200      	movs	r2, #0
    6ee2:	2300      	movs	r3, #0
    6ee4:	b006      	add	sp, #24
    6ee6:	bd10      	pop	{r4, pc}
    6ee8:	2900      	cmp	r1, #0
    6eea:	d01c      	beq.n	6f26 <svcMessageGet+0x5a>
    6eec:	1c4b      	adds	r3, r1, #1
    6eee:	d02a      	beq.n	6f46 <svcMessageGet+0x7a>
    6ef0:	4b16      	ldr	r3, [pc, #88]	; (6f4c <svcMessageGet+0x80>)
    6ef2:	4299      	cmp	r1, r3
    6ef4:	d820      	bhi.n	6f38 <svcMessageGet+0x6c>
    6ef6:	20fa      	movs	r0, #250	; 0xfa
    6ef8:	4b15      	ldr	r3, [pc, #84]	; (6f50 <svcMessageGet+0x84>)
    6efa:	0080      	lsls	r0, r0, #2
    6efc:	4341      	muls	r1, r0
    6efe:	681b      	ldr	r3, [r3, #0]
    6f00:	9301      	str	r3, [sp, #4]
    6f02:	3b01      	subs	r3, #1
    6f04:	1858      	adds	r0, r3, r1
    6f06:	9901      	ldr	r1, [sp, #4]
    6f08:	f7fd fd64 	bl	49d4 <__aeabi_uidiv>
    6f0c:	4b11      	ldr	r3, [pc, #68]	; (6f54 <svcMessageGet+0x88>)
    6f0e:	001a      	movs	r2, r3
    6f10:	4298      	cmp	r0, r3
    6f12:	d916      	bls.n	6f42 <svcMessageGet+0x76>
    6f14:	a904      	add	r1, sp, #16
    6f16:	0020      	movs	r0, r4
    6f18:	f000 fe18 	bl	7b4c <rt_mbx_wait>
    6f1c:	2801      	cmp	r0, #1
    6f1e:	d00d      	beq.n	6f3c <svcMessageGet+0x70>
    6f20:	2010      	movs	r0, #16
    6f22:	9904      	ldr	r1, [sp, #16]
    6f24:	e7dc      	b.n	6ee0 <svcMessageGet+0x14>
    6f26:	2200      	movs	r2, #0
    6f28:	a904      	add	r1, sp, #16
    6f2a:	f000 fe0f 	bl	7b4c <rt_mbx_wait>
    6f2e:	2801      	cmp	r0, #1
    6f30:	d1f6      	bne.n	6f20 <svcMessageGet+0x54>
    6f32:	2000      	movs	r0, #0
    6f34:	9904      	ldr	r1, [sp, #16]
    6f36:	e7d3      	b.n	6ee0 <svcMessageGet+0x14>
    6f38:	4a06      	ldr	r2, [pc, #24]	; (6f54 <svcMessageGet+0x88>)
    6f3a:	e7eb      	b.n	6f14 <svcMessageGet+0x48>
    6f3c:	2040      	movs	r0, #64	; 0x40
    6f3e:	9904      	ldr	r1, [sp, #16]
    6f40:	e7ce      	b.n	6ee0 <svcMessageGet+0x14>
    6f42:	b282      	uxth	r2, r0
    6f44:	e7e6      	b.n	6f14 <svcMessageGet+0x48>
    6f46:	4a04      	ldr	r2, [pc, #16]	; (6f58 <svcMessageGet+0x8c>)
    6f48:	e7e4      	b.n	6f14 <svcMessageGet+0x48>
    6f4a:	46c0      	nop			; (mov r8, r8)
    6f4c:	003d0900 	.word	0x003d0900
    6f50:	00008c68 	.word	0x00008c68
    6f54:	0000fffe 	.word	0x0000fffe
    6f58:	0000ffff 	.word	0x0000ffff

00006f5c <isrMessagePut>:
    6f5c:	b570      	push	{r4, r5, r6, lr}
    6f5e:	0004      	movs	r4, r0
    6f60:	000d      	movs	r5, r1
    6f62:	2080      	movs	r0, #128	; 0x80
    6f64:	2c00      	cmp	r4, #0
    6f66:	d001      	beq.n	6f6c <isrMessagePut+0x10>
    6f68:	2a00      	cmp	r2, #0
    6f6a:	d000      	beq.n	6f6e <isrMessagePut+0x12>
    6f6c:	bd70      	pop	{r4, r5, r6, pc}
    6f6e:	7823      	ldrb	r3, [r4, #0]
    6f70:	2b01      	cmp	r3, #1
    6f72:	d1fb      	bne.n	6f6c <isrMessagePut+0x10>
    6f74:	0020      	movs	r0, r4
    6f76:	f000 fe45 	bl	7c04 <rt_mbx_check>
    6f7a:	0003      	movs	r3, r0
    6f7c:	2081      	movs	r0, #129	; 0x81
    6f7e:	2b00      	cmp	r3, #0
    6f80:	d0f4      	beq.n	6f6c <isrMessagePut+0x10>
    6f82:	0020      	movs	r0, r4
    6f84:	0029      	movs	r1, r5
    6f86:	f000 fe41 	bl	7c0c <isr_mbx_send>
    6f8a:	2000      	movs	r0, #0
    6f8c:	e7ee      	b.n	6f6c <isrMessagePut+0x10>
    6f8e:	46c0      	nop			; (mov r8, r8)

00006f90 <isrMessageGet>:
    6f90:	b570      	push	{r4, r5, r6, lr}
    6f92:	0004      	movs	r4, r0
    6f94:	b084      	sub	sp, #16
    6f96:	0008      	movs	r0, r1
    6f98:	0015      	movs	r5, r2
    6f9a:	2900      	cmp	r1, #0
    6f9c:	d004      	beq.n	6fa8 <isrMessageGet+0x18>
    6f9e:	2a00      	cmp	r2, #0
    6fa0:	d102      	bne.n	6fa8 <isrMessageGet+0x18>
    6fa2:	780b      	ldrb	r3, [r1, #0]
    6fa4:	2b01      	cmp	r3, #1
    6fa6:	d004      	beq.n	6fb2 <isrMessageGet+0x22>
    6fa8:	2380      	movs	r3, #128	; 0x80
    6faa:	6023      	str	r3, [r4, #0]
    6fac:	0020      	movs	r0, r4
    6fae:	b004      	add	sp, #16
    6fb0:	bd70      	pop	{r4, r5, r6, pc}
    6fb2:	a902      	add	r1, sp, #8
    6fb4:	ae01      	add	r6, sp, #4
    6fb6:	f000 fe2f 	bl	7c18 <isr_mbx_receive>
    6fba:	2804      	cmp	r0, #4
    6fbc:	d004      	beq.n	6fc8 <isrMessageGet+0x38>
    6fbe:	0023      	movs	r3, r4
    6fc0:	9501      	str	r5, [sp, #4]
    6fc2:	ce07      	ldmia	r6!, {r0, r1, r2}
    6fc4:	c307      	stmia	r3!, {r0, r1, r2}
    6fc6:	e7f1      	b.n	6fac <isrMessageGet+0x1c>
    6fc8:	2310      	movs	r3, #16
    6fca:	9301      	str	r3, [sp, #4]
    6fcc:	0023      	movs	r3, r4
    6fce:	ce07      	ldmia	r6!, {r0, r1, r2}
    6fd0:	c307      	stmia	r3!, {r0, r1, r2}
    6fd2:	e7eb      	b.n	6fac <isrMessageGet+0x1c>

00006fd4 <osMessageCreate>:
    6fd4:	b5b0      	push	{r4, r5, r7, lr}
    6fd6:	0004      	movs	r4, r0
    6fd8:	f3ef 8005 	mrs	r0, IPSR
    6fdc:	2800      	cmp	r0, #0
    6fde:	d11e      	bne.n	701e <osMessageCreate+0x4a>
    6fe0:	f3ef 8014 	mrs	r0, CONTROL
    6fe4:	07c0      	lsls	r0, r0, #31
    6fe6:	d504      	bpl.n	6ff2 <osMessageCreate+0x1e>
    6fe8:	0020      	movs	r0, r4
    6fea:	4f0f      	ldr	r7, [pc, #60]	; (7028 <osMessageCreate+0x54>)
    6fec:	46bc      	mov	ip, r7
    6fee:	df00      	svc	0
    6ff0:	bdb0      	pop	{r4, r5, r7, pc}
    6ff2:	480c      	ldr	r0, [pc, #48]	; (7024 <osMessageCreate+0x50>)
    6ff4:	7800      	ldrb	r0, [r0, #0]
    6ff6:	2800      	cmp	r0, #0
    6ff8:	d1f6      	bne.n	6fe8 <osMessageCreate+0x14>
    6ffa:	2c00      	cmp	r4, #0
    6ffc:	d00f      	beq.n	701e <osMessageCreate+0x4a>
    6ffe:	6823      	ldr	r3, [r4, #0]
    7000:	2b00      	cmp	r3, #0
    7002:	d00c      	beq.n	701e <osMessageCreate+0x4a>
    7004:	6860      	ldr	r0, [r4, #4]
    7006:	2800      	cmp	r0, #0
    7008:	d009      	beq.n	701e <osMessageCreate+0x4a>
    700a:	7802      	ldrb	r2, [r0, #0]
    700c:	2a00      	cmp	r2, #0
    700e:	d106      	bne.n	701e <osMessageCreate+0x4a>
    7010:	1d19      	adds	r1, r3, #4
    7012:	008b      	lsls	r3, r1, #2
    7014:	b299      	uxth	r1, r3
    7016:	f000 fd3f 	bl	7a98 <rt_mbx_init>
    701a:	6860      	ldr	r0, [r4, #4]
    701c:	e7e8      	b.n	6ff0 <osMessageCreate+0x1c>
    701e:	2000      	movs	r0, #0
    7020:	e7e6      	b.n	6ff0 <osMessageCreate+0x1c>
    7022:	46c0      	nop			; (mov r8, r8)
    7024:	20006079 	.word	0x20006079
    7028:	00006e21 	.word	0x00006e21

0000702c <osMessagePut>:
    702c:	b5b0      	push	{r4, r5, r7, lr}
    702e:	0004      	movs	r4, r0
    7030:	000d      	movs	r5, r1
    7032:	f3ef 8105 	mrs	r1, IPSR
    7036:	2900      	cmp	r1, #0
    7038:	d008      	beq.n	704c <osMessagePut+0x20>
    703a:	2080      	movs	r0, #128	; 0x80
    703c:	2c00      	cmp	r4, #0
    703e:	d004      	beq.n	704a <osMessagePut+0x1e>
    7040:	2a00      	cmp	r2, #0
    7042:	d102      	bne.n	704a <osMessagePut+0x1e>
    7044:	7823      	ldrb	r3, [r4, #0]
    7046:	2b01      	cmp	r3, #1
    7048:	d005      	beq.n	7056 <osMessagePut+0x2a>
    704a:	bdb0      	pop	{r4, r5, r7, pc}
    704c:	0029      	movs	r1, r5
    704e:	4f08      	ldr	r7, [pc, #32]	; (7070 <osMessagePut+0x44>)
    7050:	46bc      	mov	ip, r7
    7052:	df00      	svc	0
    7054:	e7f9      	b.n	704a <osMessagePut+0x1e>
    7056:	0020      	movs	r0, r4
    7058:	f000 fdd4 	bl	7c04 <rt_mbx_check>
    705c:	0003      	movs	r3, r0
    705e:	2081      	movs	r0, #129	; 0x81
    7060:	2b00      	cmp	r3, #0
    7062:	d0f2      	beq.n	704a <osMessagePut+0x1e>
    7064:	0020      	movs	r0, r4
    7066:	0029      	movs	r1, r5
    7068:	f000 fdd0 	bl	7c0c <isr_mbx_send>
    706c:	2000      	movs	r0, #0
    706e:	e7ec      	b.n	704a <osMessagePut+0x1e>
    7070:	00006e4d 	.word	0x00006e4d

00007074 <osMessageGet>:
    7074:	b5f0      	push	{r4, r5, r6, r7, lr}
    7076:	0004      	movs	r4, r0
    7078:	b085      	sub	sp, #20
    707a:	0008      	movs	r0, r1
    707c:	0015      	movs	r5, r2
    707e:	f3ef 8105 	mrs	r1, IPSR
    7082:	2900      	cmp	r1, #0
    7084:	d109      	bne.n	709a <osMessageGet+0x26>
    7086:	0011      	movs	r1, r2
    7088:	4f11      	ldr	r7, [pc, #68]	; (70d0 <osMessageGet+0x5c>)
    708a:	46bc      	mov	ip, r7
    708c:	df00      	svc	0
    708e:	6020      	str	r0, [r4, #0]
    7090:	6061      	str	r1, [r4, #4]
    7092:	60a2      	str	r2, [r4, #8]
    7094:	0020      	movs	r0, r4
    7096:	b005      	add	sp, #20
    7098:	bdf0      	pop	{r4, r5, r6, r7, pc}
    709a:	2800      	cmp	r0, #0
    709c:	d004      	beq.n	70a8 <osMessageGet+0x34>
    709e:	2a00      	cmp	r2, #0
    70a0:	d102      	bne.n	70a8 <osMessageGet+0x34>
    70a2:	7803      	ldrb	r3, [r0, #0]
    70a4:	2b01      	cmp	r3, #1
    70a6:	d002      	beq.n	70ae <osMessageGet+0x3a>
    70a8:	2380      	movs	r3, #128	; 0x80
    70aa:	6023      	str	r3, [r4, #0]
    70ac:	e7f2      	b.n	7094 <osMessageGet+0x20>
    70ae:	a902      	add	r1, sp, #8
    70b0:	ae01      	add	r6, sp, #4
    70b2:	f000 fdb1 	bl	7c18 <isr_mbx_receive>
    70b6:	2804      	cmp	r0, #4
    70b8:	d004      	beq.n	70c4 <osMessageGet+0x50>
    70ba:	0023      	movs	r3, r4
    70bc:	9501      	str	r5, [sp, #4]
    70be:	ce07      	ldmia	r6!, {r0, r1, r2}
    70c0:	c307      	stmia	r3!, {r0, r1, r2}
    70c2:	e7e7      	b.n	7094 <osMessageGet+0x20>
    70c4:	2310      	movs	r3, #16
    70c6:	9301      	str	r3, [sp, #4]
    70c8:	0023      	movs	r3, r4
    70ca:	ce07      	ldmia	r6!, {r0, r1, r2}
    70cc:	c307      	stmia	r3!, {r0, r1, r2}
    70ce:	e7e1      	b.n	7094 <osMessageGet+0x20>
    70d0:	00006ecd 	.word	0x00006ecd

000070d4 <svcMailCreate>:
    70d4:	b570      	push	{r4, r5, r6, lr}
    70d6:	1e04      	subs	r4, r0, #0
    70d8:	d021      	beq.n	711e <svcMailCreate+0x4a>
    70da:	6801      	ldr	r1, [r0, #0]
    70dc:	2900      	cmp	r1, #0
    70de:	d01e      	beq.n	711e <svcMailCreate+0x4a>
    70e0:	6842      	ldr	r2, [r0, #4]
    70e2:	2a00      	cmp	r2, #0
    70e4:	d01b      	beq.n	711e <svcMailCreate+0x4a>
    70e6:	6883      	ldr	r3, [r0, #8]
    70e8:	2b00      	cmp	r3, #0
    70ea:	d018      	beq.n	711e <svcMailCreate+0x4a>
    70ec:	6858      	ldr	r0, [r3, #4]
    70ee:	681d      	ldr	r5, [r3, #0]
    70f0:	2800      	cmp	r0, #0
    70f2:	d014      	beq.n	711e <svcMailCreate+0x4a>
    70f4:	2d00      	cmp	r5, #0
    70f6:	d012      	beq.n	711e <svcMailCreate+0x4a>
    70f8:	782b      	ldrb	r3, [r5, #0]
    70fa:	2b00      	cmp	r3, #0
    70fc:	d10f      	bne.n	711e <svcMailCreate+0x4a>
    70fe:	3303      	adds	r3, #3
    7100:	3203      	adds	r2, #3
    7102:	439a      	bics	r2, r3
    7104:	4351      	muls	r1, r2
    7106:	310c      	adds	r1, #12
    7108:	f000 fa6a 	bl	75e0 <_init_box>
    710c:	6823      	ldr	r3, [r4, #0]
    710e:	0028      	movs	r0, r5
    7110:	1d19      	adds	r1, r3, #4
    7112:	0089      	lsls	r1, r1, #2
    7114:	b289      	uxth	r1, r1
    7116:	f000 fcbf 	bl	7a98 <rt_mbx_init>
    711a:	68a0      	ldr	r0, [r4, #8]
    711c:	bd70      	pop	{r4, r5, r6, pc}
    711e:	2000      	movs	r0, #0
    7120:	e7fc      	b.n	711c <svcMailCreate+0x48>
    7122:	46c0      	nop			; (mov r8, r8)

00007124 <sysMailAlloc>:
    7124:	b530      	push	{r4, r5, lr}
    7126:	000d      	movs	r5, r1
    7128:	b083      	sub	sp, #12
    712a:	2800      	cmp	r0, #0
    712c:	d035      	beq.n	719a <sysMailAlloc+0x76>
    712e:	6804      	ldr	r4, [r0, #0]
    7130:	6840      	ldr	r0, [r0, #4]
    7132:	2800      	cmp	r0, #0
    7134:	d031      	beq.n	719a <sysMailAlloc+0x76>
    7136:	2c00      	cmp	r4, #0
    7138:	d02f      	beq.n	719a <sysMailAlloc+0x76>
    713a:	2a00      	cmp	r2, #0
    713c:	d007      	beq.n	714e <sysMailAlloc+0x2a>
    713e:	2900      	cmp	r1, #0
    7140:	d12b      	bne.n	719a <sysMailAlloc+0x76>
    7142:	f000 fa79 	bl	7638 <rt_alloc_box>
    7146:	2800      	cmp	r0, #0
    7148:	d027      	beq.n	719a <sysMailAlloc+0x76>
    714a:	b003      	add	sp, #12
    714c:	bd30      	pop	{r4, r5, pc}
    714e:	f000 fa73 	bl	7638 <rt_alloc_box>
    7152:	2800      	cmp	r0, #0
    7154:	d1f9      	bne.n	714a <sysMailAlloc+0x26>
    7156:	2d00      	cmp	r5, #0
    7158:	d01f      	beq.n	719a <sysMailAlloc+0x76>
    715a:	6863      	ldr	r3, [r4, #4]
    715c:	2b00      	cmp	r3, #0
    715e:	d020      	beq.n	71a2 <sysMailAlloc+0x7e>
    7160:	4b16      	ldr	r3, [pc, #88]	; (71bc <sysMailAlloc+0x98>)
    7162:	0020      	movs	r0, r4
    7164:	6819      	ldr	r1, [r3, #0]
    7166:	f000 fdf1 	bl	7d4c <rt_put_prio>
    716a:	1c6b      	adds	r3, r5, #1
    716c:	d021      	beq.n	71b2 <sysMailAlloc+0x8e>
    716e:	4b14      	ldr	r3, [pc, #80]	; (71c0 <sysMailAlloc+0x9c>)
    7170:	429d      	cmp	r5, r3
    7172:	d814      	bhi.n	719e <sysMailAlloc+0x7a>
    7174:	20fa      	movs	r0, #250	; 0xfa
    7176:	4b13      	ldr	r3, [pc, #76]	; (71c4 <sysMailAlloc+0xa0>)
    7178:	0080      	lsls	r0, r0, #2
    717a:	4368      	muls	r0, r5
    717c:	681b      	ldr	r3, [r3, #0]
    717e:	9301      	str	r3, [sp, #4]
    7180:	3b01      	subs	r3, #1
    7182:	18c0      	adds	r0, r0, r3
    7184:	9901      	ldr	r1, [sp, #4]
    7186:	f7fd fc25 	bl	49d4 <__aeabi_uidiv>
    718a:	4b0f      	ldr	r3, [pc, #60]	; (71c8 <sysMailAlloc+0xa4>)
    718c:	0002      	movs	r2, r0
    718e:	0018      	movs	r0, r3
    7190:	429a      	cmp	r2, r3
    7192:	d910      	bls.n	71b6 <sysMailAlloc+0x92>
    7194:	2108      	movs	r1, #8
    7196:	f001 fa13 	bl	85c0 <rt_block>
    719a:	2000      	movs	r0, #0
    719c:	e7d5      	b.n	714a <sysMailAlloc+0x26>
    719e:	480a      	ldr	r0, [pc, #40]	; (71c8 <sysMailAlloc+0xa4>)
    71a0:	e7f8      	b.n	7194 <sysMailAlloc+0x70>
    71a2:	4a06      	ldr	r2, [pc, #24]	; (71bc <sysMailAlloc+0x98>)
    71a4:	6812      	ldr	r2, [r2, #0]
    71a6:	6062      	str	r2, [r4, #4]
    71a8:	6053      	str	r3, [r2, #4]
    71aa:	2303      	movs	r3, #3
    71ac:	6094      	str	r4, [r2, #8]
    71ae:	7063      	strb	r3, [r4, #1]
    71b0:	e7db      	b.n	716a <sysMailAlloc+0x46>
    71b2:	4806      	ldr	r0, [pc, #24]	; (71cc <sysMailAlloc+0xa8>)
    71b4:	e7ee      	b.n	7194 <sysMailAlloc+0x70>
    71b6:	b290      	uxth	r0, r2
    71b8:	e7ec      	b.n	7194 <sysMailAlloc+0x70>
    71ba:	46c0      	nop			; (mov r8, r8)
    71bc:	200060b8 	.word	0x200060b8
    71c0:	003d0900 	.word	0x003d0900
    71c4:	00008c68 	.word	0x00008c68
    71c8:	0000fffe 	.word	0x0000fffe
    71cc:	0000ffff 	.word	0x0000ffff

000071d0 <sysMailFree>:
    71d0:	b570      	push	{r4, r5, r6, lr}
    71d2:	0016      	movs	r6, r2
    71d4:	2800      	cmp	r0, #0
    71d6:	d00e      	beq.n	71f6 <sysMailFree+0x26>
    71d8:	6804      	ldr	r4, [r0, #0]
    71da:	2c00      	cmp	r4, #0
    71dc:	d00b      	beq.n	71f6 <sysMailFree+0x26>
    71de:	6845      	ldr	r5, [r0, #4]
    71e0:	2080      	movs	r0, #128	; 0x80
    71e2:	2d00      	cmp	r5, #0
    71e4:	d006      	beq.n	71f4 <sysMailFree+0x24>
    71e6:	0028      	movs	r0, r5
    71e8:	f000 fa46 	bl	7678 <rt_free_box>
    71ec:	0003      	movs	r3, r0
    71ee:	2086      	movs	r0, #134	; 0x86
    71f0:	2b00      	cmp	r3, #0
    71f2:	d002      	beq.n	71fa <sysMailFree+0x2a>
    71f4:	bd70      	pop	{r4, r5, r6, pc}
    71f6:	2080      	movs	r0, #128	; 0x80
    71f8:	e7fc      	b.n	71f4 <sysMailFree+0x24>
    71fa:	6863      	ldr	r3, [r4, #4]
    71fc:	2b00      	cmp	r3, #0
    71fe:	d002      	beq.n	7206 <sysMailFree+0x36>
    7200:	7863      	ldrb	r3, [r4, #1]
    7202:	2b03      	cmp	r3, #3
    7204:	d001      	beq.n	720a <sysMailFree+0x3a>
    7206:	2000      	movs	r0, #0
    7208:	e7f4      	b.n	71f4 <sysMailFree+0x24>
    720a:	2e00      	cmp	r6, #0
    720c:	d113      	bne.n	7236 <sysMailFree+0x66>
    720e:	0028      	movs	r0, r5
    7210:	f000 fa12 	bl	7638 <rt_alloc_box>
    7214:	1e05      	subs	r5, r0, #0
    7216:	d0f6      	beq.n	7206 <sysMailFree+0x36>
    7218:	0020      	movs	r0, r4
    721a:	f000 fdbd 	bl	7d98 <rt_get_first>
    721e:	0004      	movs	r4, r0
    7220:	0029      	movs	r1, r5
    7222:	f000 f987 	bl	7534 <rt_ret_val>
    7226:	0020      	movs	r0, r4
    7228:	f000 feee 	bl	8008 <rt_rmv_dly>
    722c:	0020      	movs	r0, r4
    722e:	f001 f9a1 	bl	8574 <rt_dispatch>
    7232:	2000      	movs	r0, #0
    7234:	e7de      	b.n	71f4 <sysMailFree+0x24>
    7236:	0020      	movs	r0, r4
    7238:	0029      	movs	r1, r5
    723a:	f000 fefb 	bl	8034 <rt_psq_enq>
    723e:	f001 f8dd 	bl	83fc <rt_psh_req>
    7242:	2000      	movs	r0, #0
    7244:	e7d6      	b.n	71f4 <sysMailFree+0x24>
    7246:	46c0      	nop			; (mov r8, r8)

00007248 <osMailCreate>:
    7248:	b5b0      	push	{r4, r5, r7, lr}
    724a:	0004      	movs	r4, r0
    724c:	f3ef 8005 	mrs	r0, IPSR
    7250:	2800      	cmp	r0, #0
    7252:	d130      	bne.n	72b6 <osMailCreate+0x6e>
    7254:	f3ef 8014 	mrs	r0, CONTROL
    7258:	07c0      	lsls	r0, r0, #31
    725a:	d504      	bpl.n	7266 <osMailCreate+0x1e>
    725c:	0020      	movs	r0, r4
    725e:	4f18      	ldr	r7, [pc, #96]	; (72c0 <osMailCreate+0x78>)
    7260:	46bc      	mov	ip, r7
    7262:	df00      	svc	0
    7264:	bdb0      	pop	{r4, r5, r7, pc}
    7266:	4815      	ldr	r0, [pc, #84]	; (72bc <osMailCreate+0x74>)
    7268:	7800      	ldrb	r0, [r0, #0]
    726a:	2800      	cmp	r0, #0
    726c:	d1f6      	bne.n	725c <osMailCreate+0x14>
    726e:	2c00      	cmp	r4, #0
    7270:	d021      	beq.n	72b6 <osMailCreate+0x6e>
    7272:	6821      	ldr	r1, [r4, #0]
    7274:	2900      	cmp	r1, #0
    7276:	d01e      	beq.n	72b6 <osMailCreate+0x6e>
    7278:	6862      	ldr	r2, [r4, #4]
    727a:	2a00      	cmp	r2, #0
    727c:	d01b      	beq.n	72b6 <osMailCreate+0x6e>
    727e:	68a3      	ldr	r3, [r4, #8]
    7280:	2b00      	cmp	r3, #0
    7282:	d018      	beq.n	72b6 <osMailCreate+0x6e>
    7284:	6858      	ldr	r0, [r3, #4]
    7286:	681d      	ldr	r5, [r3, #0]
    7288:	2800      	cmp	r0, #0
    728a:	d014      	beq.n	72b6 <osMailCreate+0x6e>
    728c:	2d00      	cmp	r5, #0
    728e:	d012      	beq.n	72b6 <osMailCreate+0x6e>
    7290:	782b      	ldrb	r3, [r5, #0]
    7292:	2b00      	cmp	r3, #0
    7294:	d10f      	bne.n	72b6 <osMailCreate+0x6e>
    7296:	3303      	adds	r3, #3
    7298:	3203      	adds	r2, #3
    729a:	439a      	bics	r2, r3
    729c:	4351      	muls	r1, r2
    729e:	310c      	adds	r1, #12
    72a0:	f000 f99e 	bl	75e0 <_init_box>
    72a4:	6823      	ldr	r3, [r4, #0]
    72a6:	0028      	movs	r0, r5
    72a8:	1d19      	adds	r1, r3, #4
    72aa:	0089      	lsls	r1, r1, #2
    72ac:	b289      	uxth	r1, r1
    72ae:	f000 fbf3 	bl	7a98 <rt_mbx_init>
    72b2:	68a0      	ldr	r0, [r4, #8]
    72b4:	e7d6      	b.n	7264 <osMailCreate+0x1c>
    72b6:	2000      	movs	r0, #0
    72b8:	e7d4      	b.n	7264 <osMailCreate+0x1c>
    72ba:	46c0      	nop			; (mov r8, r8)
    72bc:	20006079 	.word	0x20006079
    72c0:	000070d5 	.word	0x000070d5

000072c4 <osMailAlloc>:
    72c4:	b580      	push	{r7, lr}
    72c6:	f3ef 8205 	mrs	r2, IPSR
    72ca:	2a00      	cmp	r2, #0
    72cc:	d104      	bne.n	72d8 <osMailAlloc+0x14>
    72ce:	2200      	movs	r2, #0
    72d0:	4f09      	ldr	r7, [pc, #36]	; (72f8 <osMailAlloc+0x34>)
    72d2:	46bc      	mov	ip, r7
    72d4:	df00      	svc	0
    72d6:	bd80      	pop	{r7, pc}
    72d8:	2800      	cmp	r0, #0
    72da:	d00a      	beq.n	72f2 <osMailAlloc+0x2e>
    72dc:	6803      	ldr	r3, [r0, #0]
    72de:	6840      	ldr	r0, [r0, #4]
    72e0:	2800      	cmp	r0, #0
    72e2:	d006      	beq.n	72f2 <osMailAlloc+0x2e>
    72e4:	2b00      	cmp	r3, #0
    72e6:	d004      	beq.n	72f2 <osMailAlloc+0x2e>
    72e8:	2900      	cmp	r1, #0
    72ea:	d102      	bne.n	72f2 <osMailAlloc+0x2e>
    72ec:	f000 f9a4 	bl	7638 <rt_alloc_box>
    72f0:	e7f1      	b.n	72d6 <osMailAlloc+0x12>
    72f2:	2000      	movs	r0, #0
    72f4:	e7ef      	b.n	72d6 <osMailAlloc+0x12>
    72f6:	0000      	.short	0x0000
    72f8:	00007125 	.word	0x00007125

000072fc <osMailCAlloc>:
    72fc:	b5b0      	push	{r4, r5, r7, lr}
    72fe:	0004      	movs	r4, r0
    7300:	f3ef 8205 	mrs	r2, IPSR
    7304:	2a00      	cmp	r2, #0
    7306:	d112      	bne.n	732e <osMailCAlloc+0x32>
    7308:	2200      	movs	r2, #0
    730a:	4f13      	ldr	r7, [pc, #76]	; (7358 <osMailCAlloc+0x5c>)
    730c:	46bc      	mov	ip, r7
    730e:	df00      	svc	0
    7310:	6863      	ldr	r3, [r4, #4]
    7312:	2b00      	cmp	r3, #0
    7314:	d00a      	beq.n	732c <osMailCAlloc+0x30>
    7316:	2800      	cmp	r0, #0
    7318:	d01b      	beq.n	7352 <osMailCAlloc+0x56>
    731a:	689b      	ldr	r3, [r3, #8]
    731c:	2b00      	cmp	r3, #0
    731e:	d005      	beq.n	732c <osMailCAlloc+0x30>
    7320:	0002      	movs	r2, r0
    7322:	2100      	movs	r1, #0
    7324:	3b04      	subs	r3, #4
    7326:	c202      	stmia	r2!, {r1}
    7328:	2b00      	cmp	r3, #0
    732a:	d1fb      	bne.n	7324 <osMailCAlloc+0x28>
    732c:	bdb0      	pop	{r4, r5, r7, pc}
    732e:	2800      	cmp	r0, #0
    7330:	d00f      	beq.n	7352 <osMailCAlloc+0x56>
    7332:	6803      	ldr	r3, [r0, #0]
    7334:	6840      	ldr	r0, [r0, #4]
    7336:	2800      	cmp	r0, #0
    7338:	d00b      	beq.n	7352 <osMailCAlloc+0x56>
    733a:	2b00      	cmp	r3, #0
    733c:	d009      	beq.n	7352 <osMailCAlloc+0x56>
    733e:	2900      	cmp	r1, #0
    7340:	d107      	bne.n	7352 <osMailCAlloc+0x56>
    7342:	f000 f979 	bl	7638 <rt_alloc_box>
    7346:	2800      	cmp	r0, #0
    7348:	d003      	beq.n	7352 <osMailCAlloc+0x56>
    734a:	6863      	ldr	r3, [r4, #4]
    734c:	2b00      	cmp	r3, #0
    734e:	d1e4      	bne.n	731a <osMailCAlloc+0x1e>
    7350:	e7ec      	b.n	732c <osMailCAlloc+0x30>
    7352:	2000      	movs	r0, #0
    7354:	e7ea      	b.n	732c <osMailCAlloc+0x30>
    7356:	0000      	.short	0x0000
    7358:	00007125 	.word	0x00007125

0000735c <osMailFree>:
    735c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    735e:	f3ef 8205 	mrs	r2, IPSR
    7362:	2a00      	cmp	r2, #0
    7364:	d106      	bne.n	7374 <osMailFree+0x18>
    7366:	2200      	movs	r2, #0
    7368:	4f13      	ldr	r7, [pc, #76]	; (73b8 <osMailFree+0x5c>)
    736a:	46bc      	mov	ip, r7
    736c:	df00      	svc	0
    736e:	0004      	movs	r4, r0
    7370:	0020      	movs	r0, r4
    7372:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7374:	2800      	cmp	r0, #0
    7376:	d01a      	beq.n	73ae <osMailFree+0x52>
    7378:	6805      	ldr	r5, [r0, #0]
    737a:	2d00      	cmp	r5, #0
    737c:	d017      	beq.n	73ae <osMailFree+0x52>
    737e:	6846      	ldr	r6, [r0, #4]
    7380:	2480      	movs	r4, #128	; 0x80
    7382:	2e00      	cmp	r6, #0
    7384:	d0f4      	beq.n	7370 <osMailFree+0x14>
    7386:	0030      	movs	r0, r6
    7388:	f000 f976 	bl	7678 <rt_free_box>
    738c:	3406      	adds	r4, #6
    738e:	2800      	cmp	r0, #0
    7390:	d1ee      	bne.n	7370 <osMailFree+0x14>
    7392:	686b      	ldr	r3, [r5, #4]
    7394:	2b00      	cmp	r3, #0
    7396:	d00c      	beq.n	73b2 <osMailFree+0x56>
    7398:	786b      	ldrb	r3, [r5, #1]
    739a:	2400      	movs	r4, #0
    739c:	2b03      	cmp	r3, #3
    739e:	d1e7      	bne.n	7370 <osMailFree+0x14>
    73a0:	0031      	movs	r1, r6
    73a2:	0028      	movs	r0, r5
    73a4:	f000 fe46 	bl	8034 <rt_psq_enq>
    73a8:	f001 f828 	bl	83fc <rt_psh_req>
    73ac:	e7e0      	b.n	7370 <osMailFree+0x14>
    73ae:	2480      	movs	r4, #128	; 0x80
    73b0:	e7de      	b.n	7370 <osMailFree+0x14>
    73b2:	2400      	movs	r4, #0
    73b4:	e7dc      	b.n	7370 <osMailFree+0x14>
    73b6:	0000      	.short	0x0000
    73b8:	000071d1 	.word	0x000071d1

000073bc <osMailPut>:
    73bc:	b5b0      	push	{r4, r5, r7, lr}
    73be:	0002      	movs	r2, r0
    73c0:	000c      	movs	r4, r1
    73c2:	2800      	cmp	r0, #0
    73c4:	d00e      	beq.n	73e4 <osMailPut+0x28>
    73c6:	2086      	movs	r0, #134	; 0x86
    73c8:	2900      	cmp	r1, #0
    73ca:	d00a      	beq.n	73e2 <osMailPut+0x26>
    73cc:	6815      	ldr	r5, [r2, #0]
    73ce:	f3ef 8205 	mrs	r2, IPSR
    73d2:	2a00      	cmp	r2, #0
    73d4:	d008      	beq.n	73e8 <osMailPut+0x2c>
    73d6:	2d00      	cmp	r5, #0
    73d8:	d004      	beq.n	73e4 <osMailPut+0x28>
    73da:	782b      	ldrb	r3, [r5, #0]
    73dc:	3806      	subs	r0, #6
    73de:	2b01      	cmp	r3, #1
    73e0:	d008      	beq.n	73f4 <osMailPut+0x38>
    73e2:	bdb0      	pop	{r4, r5, r7, pc}
    73e4:	2080      	movs	r0, #128	; 0x80
    73e6:	e7fc      	b.n	73e2 <osMailPut+0x26>
    73e8:	0028      	movs	r0, r5
    73ea:	2200      	movs	r2, #0
    73ec:	4f08      	ldr	r7, [pc, #32]	; (7410 <osMailPut+0x54>)
    73ee:	46bc      	mov	ip, r7
    73f0:	df00      	svc	0
    73f2:	e7f6      	b.n	73e2 <osMailPut+0x26>
    73f4:	0028      	movs	r0, r5
    73f6:	f000 fc05 	bl	7c04 <rt_mbx_check>
    73fa:	0003      	movs	r3, r0
    73fc:	2081      	movs	r0, #129	; 0x81
    73fe:	2b00      	cmp	r3, #0
    7400:	d0ef      	beq.n	73e2 <osMailPut+0x26>
    7402:	0028      	movs	r0, r5
    7404:	0021      	movs	r1, r4
    7406:	f000 fc01 	bl	7c0c <isr_mbx_send>
    740a:	2000      	movs	r0, #0
    740c:	e7e9      	b.n	73e2 <osMailPut+0x26>
    740e:	0000      	.short	0x0000
    7410:	00006e4d 	.word	0x00006e4d

00007414 <osMailGet>:
    7414:	b5b0      	push	{r4, r5, r7, lr}
    7416:	0004      	movs	r4, r0
    7418:	b084      	sub	sp, #16
    741a:	2900      	cmp	r1, #0
    741c:	d012      	beq.n	7444 <osMailGet+0x30>
    741e:	6808      	ldr	r0, [r1, #0]
    7420:	f3ef 8105 	mrs	r1, IPSR
    7424:	2900      	cmp	r1, #0
    7426:	d113      	bne.n	7450 <osMailGet+0x3c>
    7428:	0011      	movs	r1, r2
    742a:	4f0d      	ldr	r7, [pc, #52]	; (7460 <osMailGet+0x4c>)
    742c:	46bc      	mov	ip, r7
    742e:	df00      	svc	0
    7430:	2810      	cmp	r0, #16
    7432:	d005      	beq.n	7440 <osMailGet+0x2c>
    7434:	6020      	str	r0, [r4, #0]
    7436:	6061      	str	r1, [r4, #4]
    7438:	60a2      	str	r2, [r4, #8]
    743a:	0020      	movs	r0, r4
    743c:	b004      	add	sp, #16
    743e:	bdb0      	pop	{r4, r5, r7, pc}
    7440:	3010      	adds	r0, #16
    7442:	e7f7      	b.n	7434 <osMailGet+0x20>
    7444:	2380      	movs	r3, #128	; 0x80
    7446:	6003      	str	r3, [r0, #0]
    7448:	2300      	movs	r3, #0
    744a:	6043      	str	r3, [r0, #4]
    744c:	6083      	str	r3, [r0, #8]
    744e:	e7f4      	b.n	743a <osMailGet+0x26>
    7450:	0001      	movs	r1, r0
    7452:	a801      	add	r0, sp, #4
    7454:	f7ff fd9c 	bl	6f90 <isrMessageGet>
    7458:	9801      	ldr	r0, [sp, #4]
    745a:	9902      	ldr	r1, [sp, #8]
    745c:	9a03      	ldr	r2, [sp, #12]
    745e:	e7e7      	b.n	7430 <osMailGet+0x1c>
    7460:	00006ecd 	.word	0x00006ecd

00007464 <os_suspend>:
    7464:	b580      	push	{r7, lr}
    7466:	4f02      	ldr	r7, [pc, #8]	; (7470 <os_suspend+0xc>)
    7468:	46bc      	mov	ip, r7
    746a:	df00      	svc	0
    746c:	bd80      	pop	{r7, pc}
    746e:	0000      	.short	0x0000
    7470:	000081ad 	.word	0x000081ad

00007474 <os_resume>:
    7474:	b580      	push	{r7, lr}
    7476:	4f02      	ldr	r7, [pc, #8]	; (7480 <os_resume+0xc>)
    7478:	46bc      	mov	ip, r7
    747a:	df00      	svc	0
    747c:	bd80      	pop	{r7, pc}
    747e:	0000      	.short	0x0000
    7480:	0000823d 	.word	0x0000823d

00007484 <rt_init_stack>:
    7484:	b5f0      	push	{r4, r5, r6, r7, lr}
    7486:	464e      	mov	r6, r9
    7488:	4645      	mov	r5, r8
    748a:	4657      	mov	r7, sl
    748c:	b4e0      	push	{r5, r6, r7}
    748e:	4b26      	ldr	r3, [pc, #152]	; (7528 <rt_init_stack+0xa4>)
    7490:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    7492:	b082      	sub	sp, #8
    7494:	4680      	mov	r8, r0
    7496:	4689      	mov	r9, r1
    7498:	08a4      	lsrs	r4, r4, #2
    749a:	681b      	ldr	r3, [r3, #0]
    749c:	d104      	bne.n	74a8 <rt_init_stack+0x24>
    749e:	9301      	str	r3, [sp, #4]
    74a0:	466b      	mov	r3, sp
    74a2:	889c      	ldrh	r4, [r3, #4]
    74a4:	9b01      	ldr	r3, [sp, #4]
    74a6:	08a4      	lsrs	r4, r4, #2
    74a8:	469a      	mov	sl, r3
    74aa:	4643      	mov	r3, r8
    74ac:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    74ae:	00a5      	lsls	r5, r4, #2
    74b0:	197d      	adds	r5, r7, r5
    74b2:	076b      	lsls	r3, r5, #29
    74b4:	d500      	bpl.n	74b8 <rt_init_stack+0x34>
    74b6:	3d04      	subs	r5, #4
    74b8:	2280      	movs	r2, #128	; 0x80
    74ba:	1f2b      	subs	r3, r5, #4
    74bc:	002e      	movs	r6, r5
    74be:	0452      	lsls	r2, r2, #17
    74c0:	601a      	str	r2, [r3, #0]
    74c2:	464a      	mov	r2, r9
    74c4:	3b04      	subs	r3, #4
    74c6:	3e40      	subs	r6, #64	; 0x40
    74c8:	601a      	str	r2, [r3, #0]
    74ca:	2100      	movs	r1, #0
    74cc:	2238      	movs	r2, #56	; 0x38
    74ce:	0030      	movs	r0, r6
    74d0:	f7fd fe30 	bl	5134 <memset>
    74d4:	4643      	mov	r3, r8
    74d6:	69db      	ldr	r3, [r3, #28]
    74d8:	3d20      	subs	r5, #32
    74da:	602b      	str	r3, [r5, #0]
    74dc:	464a      	mov	r2, r9
    74de:	4643      	mov	r3, r8
    74e0:	629e      	str	r6, [r3, #40]	; 0x28
    74e2:	631a      	str	r2, [r3, #48]	; 0x30
    74e4:	4653      	mov	r3, sl
    74e6:	00db      	lsls	r3, r3, #3
    74e8:	d516      	bpl.n	7518 <rt_init_stack+0x94>
    74ea:	2c11      	cmp	r4, #17
    74ec:	d914      	bls.n	7518 <rt_init_stack+0x94>
    74ee:	3c10      	subs	r4, #16
    74f0:	0864      	lsrs	r4, r4, #1
    74f2:	1e62      	subs	r2, r4, #1
    74f4:	2a00      	cmp	r2, #0
    74f6:	d00a      	beq.n	750e <rt_init_stack+0x8a>
    74f8:	0033      	movs	r3, r6
    74fa:	490c      	ldr	r1, [pc, #48]	; (752c <rt_init_stack+0xa8>)
    74fc:	3b08      	subs	r3, #8
    74fe:	3a01      	subs	r2, #1
    7500:	6059      	str	r1, [r3, #4]
    7502:	6019      	str	r1, [r3, #0]
    7504:	2a00      	cmp	r2, #0
    7506:	d1f9      	bne.n	74fc <rt_init_stack+0x78>
    7508:	00e4      	lsls	r4, r4, #3
    750a:	1b36      	subs	r6, r6, r4
    750c:	3608      	adds	r6, #8
    750e:	3e04      	subs	r6, #4
    7510:	42b7      	cmp	r7, r6
    7512:	d201      	bcs.n	7518 <rt_init_stack+0x94>
    7514:	4b05      	ldr	r3, [pc, #20]	; (752c <rt_init_stack+0xa8>)
    7516:	6033      	str	r3, [r6, #0]
    7518:	4b05      	ldr	r3, [pc, #20]	; (7530 <rt_init_stack+0xac>)
    751a:	603b      	str	r3, [r7, #0]
    751c:	b002      	add	sp, #8
    751e:	bc1c      	pop	{r2, r3, r4}
    7520:	4690      	mov	r8, r2
    7522:	4699      	mov	r9, r3
    7524:	46a2      	mov	sl, r4
    7526:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7528:	00008c48 	.word	0x00008c48
    752c:	cccccccc 	.word	0xcccccccc
    7530:	e25a2ea5 	.word	0xe25a2ea5

00007534 <rt_ret_val>:
    7534:	6a83      	ldr	r3, [r0, #40]	; 0x28
    7536:	6219      	str	r1, [r3, #32]
    7538:	4770      	bx	lr
    753a:	46c0      	nop			; (mov r8, r8)

0000753c <rt_ret_val2>:
    753c:	6a83      	ldr	r3, [r0, #40]	; 0x28
    753e:	6219      	str	r1, [r3, #32]
    7540:	625a      	str	r2, [r3, #36]	; 0x24
    7542:	4770      	bx	lr

00007544 <rt_init_mem>:
    7544:	0003      	movs	r3, r0
    7546:	2001      	movs	r0, #1
    7548:	2b00      	cmp	r3, #0
    754a:	d008      	beq.n	755e <rt_init_mem+0x1a>
    754c:	2907      	cmp	r1, #7
    754e:	d906      	bls.n	755e <rt_init_mem+0x1a>
    7550:	2200      	movs	r2, #0
    7552:	2000      	movs	r0, #0
    7554:	3904      	subs	r1, #4
    7556:	1859      	adds	r1, r3, r1
    7558:	6019      	str	r1, [r3, #0]
    755a:	600a      	str	r2, [r1, #0]
    755c:	605a      	str	r2, [r3, #4]
    755e:	4770      	bx	lr

00007560 <rt_alloc_mem>:
    7560:	b510      	push	{r4, lr}
    7562:	2800      	cmp	r0, #0
    7564:	d018      	beq.n	7598 <rt_alloc_mem+0x38>
    7566:	2900      	cmp	r1, #0
    7568:	d016      	beq.n	7598 <rt_alloc_mem+0x38>
    756a:	2303      	movs	r3, #3
    756c:	310b      	adds	r1, #11
    756e:	4399      	bics	r1, r3
    7570:	6802      	ldr	r2, [r0, #0]
    7572:	e003      	b.n	757c <rt_alloc_mem+0x1c>
    7574:	0010      	movs	r0, r2
    7576:	6812      	ldr	r2, [r2, #0]
    7578:	2a00      	cmp	r2, #0
    757a:	d00d      	beq.n	7598 <rt_alloc_mem+0x38>
    757c:	6844      	ldr	r4, [r0, #4]
    757e:	1a13      	subs	r3, r2, r0
    7580:	1b1b      	subs	r3, r3, r4
    7582:	4299      	cmp	r1, r3
    7584:	d8f6      	bhi.n	7574 <rt_alloc_mem+0x14>
    7586:	2c00      	cmp	r4, #0
    7588:	d008      	beq.n	759c <rt_alloc_mem+0x3c>
    758a:	1904      	adds	r4, r0, r4
    758c:	6022      	str	r2, [r4, #0]
    758e:	6061      	str	r1, [r4, #4]
    7590:	6004      	str	r4, [r0, #0]
    7592:	0020      	movs	r0, r4
    7594:	3008      	adds	r0, #8
    7596:	e000      	b.n	759a <rt_alloc_mem+0x3a>
    7598:	2000      	movs	r0, #0
    759a:	bd10      	pop	{r4, pc}
    759c:	6041      	str	r1, [r0, #4]
    759e:	3008      	adds	r0, #8
    75a0:	e7fb      	b.n	759a <rt_alloc_mem+0x3a>
    75a2:	46c0      	nop			; (mov r8, r8)

000075a4 <rt_free_mem>:
    75a4:	2800      	cmp	r0, #0
    75a6:	d015      	beq.n	75d4 <rt_free_mem+0x30>
    75a8:	2900      	cmp	r1, #0
    75aa:	d013      	beq.n	75d4 <rt_free_mem+0x30>
    75ac:	3908      	subs	r1, #8
    75ae:	4288      	cmp	r0, r1
    75b0:	d012      	beq.n	75d8 <rt_free_mem+0x34>
    75b2:	6803      	ldr	r3, [r0, #0]
    75b4:	2b00      	cmp	r3, #0
    75b6:	d105      	bne.n	75c4 <rt_free_mem+0x20>
    75b8:	e00c      	b.n	75d4 <rt_free_mem+0x30>
    75ba:	681a      	ldr	r2, [r3, #0]
    75bc:	0018      	movs	r0, r3
    75be:	2a00      	cmp	r2, #0
    75c0:	d008      	beq.n	75d4 <rt_free_mem+0x30>
    75c2:	0013      	movs	r3, r2
    75c4:	4299      	cmp	r1, r3
    75c6:	d1f8      	bne.n	75ba <rt_free_mem+0x16>
    75c8:	2800      	cmp	r0, #0
    75ca:	d005      	beq.n	75d8 <rt_free_mem+0x34>
    75cc:	680b      	ldr	r3, [r1, #0]
    75ce:	6003      	str	r3, [r0, #0]
    75d0:	2000      	movs	r0, #0
    75d2:	e000      	b.n	75d6 <rt_free_mem+0x32>
    75d4:	2001      	movs	r0, #1
    75d6:	4770      	bx	lr
    75d8:	2300      	movs	r3, #0
    75da:	2000      	movs	r0, #0
    75dc:	604b      	str	r3, [r1, #4]
    75de:	e7fa      	b.n	75d6 <rt_free_mem+0x32>

000075e0 <_init_box>:
    75e0:	b530      	push	{r4, r5, lr}
    75e2:	2a00      	cmp	r2, #0
    75e4:	db1e      	blt.n	7624 <_init_box+0x44>
    75e6:	2303      	movs	r3, #3
    75e8:	3203      	adds	r2, #3
    75ea:	439a      	bics	r2, r3
    75ec:	3309      	adds	r3, #9
    75ee:	2401      	movs	r4, #1
    75f0:	2a00      	cmp	r2, #0
    75f2:	d015      	beq.n	7620 <_init_box+0x40>
    75f4:	18d5      	adds	r5, r2, r3
    75f6:	428d      	cmp	r5, r1
    75f8:	d812      	bhi.n	7620 <_init_box+0x40>
    75fa:	1841      	adds	r1, r0, r1
    75fc:	18c3      	adds	r3, r0, r3
    75fe:	6041      	str	r1, [r0, #4]
    7600:	6003      	str	r3, [r0, #0]
    7602:	6082      	str	r2, [r0, #8]
    7604:	1898      	adds	r0, r3, r2
    7606:	1a89      	subs	r1, r1, r2
    7608:	4281      	cmp	r1, r0
    760a:	d201      	bcs.n	7610 <_init_box+0x30>
    760c:	e011      	b.n	7632 <_init_box+0x52>
    760e:	0020      	movs	r0, r4
    7610:	1884      	adds	r4, r0, r2
    7612:	6018      	str	r0, [r3, #0]
    7614:	189b      	adds	r3, r3, r2
    7616:	42a1      	cmp	r1, r4
    7618:	d2f9      	bcs.n	760e <_init_box+0x2e>
    761a:	2300      	movs	r3, #0
    761c:	2400      	movs	r4, #0
    761e:	6003      	str	r3, [r0, #0]
    7620:	0020      	movs	r0, r4
    7622:	bd30      	pop	{r4, r5, pc}
    7624:	2307      	movs	r3, #7
    7626:	0052      	lsls	r2, r2, #1
    7628:	0852      	lsrs	r2, r2, #1
    762a:	3207      	adds	r2, #7
    762c:	439a      	bics	r2, r3
    762e:	3309      	adds	r3, #9
    7630:	e7dd      	b.n	75ee <_init_box+0xe>
    7632:	0018      	movs	r0, r3
    7634:	e7f1      	b.n	761a <_init_box+0x3a>
    7636:	46c0      	nop			; (mov r8, r8)

00007638 <rt_alloc_box>:
    7638:	f3ef 8310 	mrs	r3, PRIMASK
    763c:	b672      	cpsid	i
    763e:	2201      	movs	r2, #1
    7640:	4013      	ands	r3, r2
    7642:	6802      	ldr	r2, [r0, #0]
    7644:	2a00      	cmp	r2, #0
    7646:	d001      	beq.n	764c <rt_alloc_box+0x14>
    7648:	6811      	ldr	r1, [r2, #0]
    764a:	6001      	str	r1, [r0, #0]
    764c:	2b00      	cmp	r3, #0
    764e:	d100      	bne.n	7652 <rt_alloc_box+0x1a>
    7650:	b662      	cpsie	i
    7652:	0010      	movs	r0, r2
    7654:	4770      	bx	lr
    7656:	46c0      	nop			; (mov r8, r8)

00007658 <_calloc_box>:
    7658:	b510      	push	{r4, lr}
    765a:	0004      	movs	r4, r0
    765c:	f7fd fb45 	bl	4cea <_alloc_box>
    7660:	2800      	cmp	r0, #0
    7662:	d008      	beq.n	7676 <_calloc_box+0x1e>
    7664:	68a3      	ldr	r3, [r4, #8]
    7666:	2b00      	cmp	r3, #0
    7668:	d005      	beq.n	7676 <_calloc_box+0x1e>
    766a:	0002      	movs	r2, r0
    766c:	2100      	movs	r1, #0
    766e:	3b04      	subs	r3, #4
    7670:	c202      	stmia	r2!, {r1}
    7672:	2b00      	cmp	r3, #0
    7674:	d1fb      	bne.n	766e <_calloc_box+0x16>
    7676:	bd10      	pop	{r4, pc}

00007678 <rt_free_box>:
    7678:	0003      	movs	r3, r0
    767a:	2001      	movs	r0, #1
    767c:	4299      	cmp	r1, r3
    767e:	d30b      	bcc.n	7698 <rt_free_box+0x20>
    7680:	685a      	ldr	r2, [r3, #4]
    7682:	4291      	cmp	r1, r2
    7684:	d208      	bcs.n	7698 <rt_free_box+0x20>
    7686:	f3ef 8210 	mrs	r2, PRIMASK
    768a:	b672      	cpsid	i
    768c:	4010      	ands	r0, r2
    768e:	681a      	ldr	r2, [r3, #0]
    7690:	600a      	str	r2, [r1, #0]
    7692:	6019      	str	r1, [r3, #0]
    7694:	d101      	bne.n	769a <rt_free_box+0x22>
    7696:	b662      	cpsie	i
    7698:	4770      	bx	lr
    769a:	2000      	movs	r0, #0
    769c:	e7fc      	b.n	7698 <rt_free_box+0x20>
    769e:	46c0      	nop			; (mov r8, r8)

000076a0 <rt_mut_init>:
    76a0:	2303      	movs	r3, #3
    76a2:	7003      	strb	r3, [r0, #0]
    76a4:	2300      	movs	r3, #0
    76a6:	8043      	strh	r3, [r0, #2]
    76a8:	6043      	str	r3, [r0, #4]
    76aa:	6083      	str	r3, [r0, #8]
    76ac:	60c3      	str	r3, [r0, #12]
    76ae:	4770      	bx	lr

000076b0 <rt_mut_delete>:
    76b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    76b2:	8843      	ldrh	r3, [r0, #2]
    76b4:	0005      	movs	r5, r0
    76b6:	2b00      	cmp	r3, #0
    76b8:	d02c      	beq.n	7714 <rt_mut_delete+0x64>
    76ba:	6880      	ldr	r0, [r0, #8]
    76bc:	6a04      	ldr	r4, [r0, #32]
    76be:	42a5      	cmp	r5, r4
    76c0:	d05a      	beq.n	7778 <rt_mut_delete+0xc8>
    76c2:	2c00      	cmp	r4, #0
    76c4:	d01a      	beq.n	76fc <rt_mut_delete+0x4c>
    76c6:	68e3      	ldr	r3, [r4, #12]
    76c8:	429d      	cmp	r5, r3
    76ca:	d050      	beq.n	776e <rt_mut_delete+0xbe>
    76cc:	001a      	movs	r2, r3
    76ce:	e003      	b.n	76d8 <rt_mut_delete+0x28>
    76d0:	68d1      	ldr	r1, [r2, #12]
    76d2:	428d      	cmp	r5, r1
    76d4:	d04c      	beq.n	7770 <rt_mut_delete+0xc0>
    76d6:	000a      	movs	r2, r1
    76d8:	2a00      	cmp	r2, #0
    76da:	d1f9      	bne.n	76d0 <rt_mut_delete+0x20>
    76dc:	2224      	movs	r2, #36	; 0x24
    76de:	5c81      	ldrb	r1, [r0, r2]
    76e0:	6862      	ldr	r2, [r4, #4]
    76e2:	2a00      	cmp	r2, #0
    76e4:	d005      	beq.n	76f2 <rt_mut_delete+0x42>
    76e6:	7892      	ldrb	r2, [r2, #2]
    76e8:	1c14      	adds	r4, r2, #0
    76ea:	428a      	cmp	r2, r1
    76ec:	d200      	bcs.n	76f0 <rt_mut_delete+0x40>
    76ee:	1c0c      	adds	r4, r1, #0
    76f0:	b2e1      	uxtb	r1, r4
    76f2:	2b00      	cmp	r3, #0
    76f4:	d004      	beq.n	7700 <rt_mut_delete+0x50>
    76f6:	001c      	movs	r4, r3
    76f8:	68db      	ldr	r3, [r3, #12]
    76fa:	e7f1      	b.n	76e0 <rt_mut_delete+0x30>
    76fc:	2324      	movs	r3, #36	; 0x24
    76fe:	5cc1      	ldrb	r1, [r0, r3]
    7700:	7883      	ldrb	r3, [r0, #2]
    7702:	428b      	cmp	r3, r1
    7704:	d006      	beq.n	7714 <rt_mut_delete+0x64>
    7706:	4b20      	ldr	r3, [pc, #128]	; (7788 <rt_mut_delete+0xd8>)
    7708:	7081      	strb	r1, [r0, #2]
    770a:	681b      	ldr	r3, [r3, #0]
    770c:	4298      	cmp	r0, r3
    770e:	d001      	beq.n	7714 <rt_mut_delete+0x64>
    7710:	f000 fb72 	bl	7df8 <rt_resort_prio>
    7714:	686b      	ldr	r3, [r5, #4]
    7716:	4e1d      	ldr	r6, [pc, #116]	; (778c <rt_mut_delete+0xdc>)
    7718:	2b00      	cmp	r3, #0
    771a:	d012      	beq.n	7742 <rt_mut_delete+0x92>
    771c:	2701      	movs	r7, #1
    771e:	0028      	movs	r0, r5
    7720:	f000 fb3a 	bl	7d98 <rt_get_first>
    7724:	0004      	movs	r4, r0
    7726:	2100      	movs	r1, #0
    7728:	f7ff ff04 	bl	7534 <rt_ret_val>
    772c:	0020      	movs	r0, r4
    772e:	f000 fc6b 	bl	8008 <rt_rmv_dly>
    7732:	7067      	strb	r7, [r4, #1]
    7734:	0021      	movs	r1, r4
    7736:	0030      	movs	r0, r6
    7738:	f000 fb08 	bl	7d4c <rt_put_prio>
    773c:	686b      	ldr	r3, [r5, #4]
    773e:	2b00      	cmp	r3, #0
    7740:	d1ed      	bne.n	771e <rt_mut_delete+0x6e>
    7742:	6873      	ldr	r3, [r6, #4]
    7744:	2b00      	cmp	r3, #0
    7746:	d00e      	beq.n	7766 <rt_mut_delete+0xb6>
    7748:	4c0f      	ldr	r4, [pc, #60]	; (7788 <rt_mut_delete+0xd8>)
    774a:	789a      	ldrb	r2, [r3, #2]
    774c:	6821      	ldr	r1, [r4, #0]
    774e:	788b      	ldrb	r3, [r1, #2]
    7750:	429a      	cmp	r2, r3
    7752:	d908      	bls.n	7766 <rt_mut_delete+0xb6>
    7754:	0030      	movs	r0, r6
    7756:	f000 faf9 	bl	7d4c <rt_put_prio>
    775a:	2201      	movs	r2, #1
    775c:	6823      	ldr	r3, [r4, #0]
    775e:	2000      	movs	r0, #0
    7760:	705a      	strb	r2, [r3, #1]
    7762:	f000 ff07 	bl	8574 <rt_dispatch>
    7766:	2300      	movs	r3, #0
    7768:	2000      	movs	r0, #0
    776a:	702b      	strb	r3, [r5, #0]
    776c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    776e:	0022      	movs	r2, r4
    7770:	68eb      	ldr	r3, [r5, #12]
    7772:	60d3      	str	r3, [r2, #12]
    7774:	68e3      	ldr	r3, [r4, #12]
    7776:	e7b1      	b.n	76dc <rt_mut_delete+0x2c>
    7778:	2324      	movs	r3, #36	; 0x24
    777a:	68ec      	ldr	r4, [r5, #12]
    777c:	6204      	str	r4, [r0, #32]
    777e:	5cc1      	ldrb	r1, [r0, r3]
    7780:	2c00      	cmp	r4, #0
    7782:	d0bd      	beq.n	7700 <rt_mut_delete+0x50>
    7784:	68e3      	ldr	r3, [r4, #12]
    7786:	e7ab      	b.n	76e0 <rt_mut_delete+0x30>
    7788:	200060b8 	.word	0x200060b8
    778c:	20006084 	.word	0x20006084

00007790 <rt_mut_release>:
    7790:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7792:	8843      	ldrh	r3, [r0, #2]
    7794:	0004      	movs	r4, r0
    7796:	20ff      	movs	r0, #255	; 0xff
    7798:	2b00      	cmp	r3, #0
    779a:	d100      	bne.n	779e <rt_mut_release+0xe>
    779c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    779e:	4d3c      	ldr	r5, [pc, #240]	; (7890 <rt_mut_release+0x100>)
    77a0:	68a1      	ldr	r1, [r4, #8]
    77a2:	682a      	ldr	r2, [r5, #0]
    77a4:	4291      	cmp	r1, r2
    77a6:	d1f9      	bne.n	779c <rt_mut_release+0xc>
    77a8:	3b01      	subs	r3, #1
    77aa:	b29b      	uxth	r3, r3
    77ac:	8063      	strh	r3, [r4, #2]
    77ae:	2b00      	cmp	r3, #0
    77b0:	d140      	bne.n	7834 <rt_mut_release+0xa4>
    77b2:	6a0e      	ldr	r6, [r1, #32]
    77b4:	42b4      	cmp	r4, r6
    77b6:	d062      	beq.n	787e <rt_mut_release+0xee>
    77b8:	2e00      	cmp	r6, #0
    77ba:	d01a      	beq.n	77f2 <rt_mut_release+0x62>
    77bc:	68f3      	ldr	r3, [r6, #12]
    77be:	429c      	cmp	r4, r3
    77c0:	d03a      	beq.n	7838 <rt_mut_release+0xa8>
    77c2:	001a      	movs	r2, r3
    77c4:	e003      	b.n	77ce <rt_mut_release+0x3e>
    77c6:	68d0      	ldr	r0, [r2, #12]
    77c8:	4284      	cmp	r4, r0
    77ca:	d036      	beq.n	783a <rt_mut_release+0xaa>
    77cc:	0002      	movs	r2, r0
    77ce:	2a00      	cmp	r2, #0
    77d0:	d1f9      	bne.n	77c6 <rt_mut_release+0x36>
    77d2:	2224      	movs	r2, #36	; 0x24
    77d4:	5c8f      	ldrb	r7, [r1, r2]
    77d6:	6872      	ldr	r2, [r6, #4]
    77d8:	2a00      	cmp	r2, #0
    77da:	d005      	beq.n	77e8 <rt_mut_release+0x58>
    77dc:	7892      	ldrb	r2, [r2, #2]
    77de:	1c10      	adds	r0, r2, #0
    77e0:	42ba      	cmp	r2, r7
    77e2:	d200      	bcs.n	77e6 <rt_mut_release+0x56>
    77e4:	1c38      	adds	r0, r7, #0
    77e6:	b2c7      	uxtb	r7, r0
    77e8:	2b00      	cmp	r3, #0
    77ea:	d004      	beq.n	77f6 <rt_mut_release+0x66>
    77ec:	001e      	movs	r6, r3
    77ee:	68db      	ldr	r3, [r3, #12]
    77f0:	e7f1      	b.n	77d6 <rt_mut_release+0x46>
    77f2:	2324      	movs	r3, #36	; 0x24
    77f4:	5ccf      	ldrb	r7, [r1, r3]
    77f6:	708f      	strb	r7, [r1, #2]
    77f8:	6863      	ldr	r3, [r4, #4]
    77fa:	2b00      	cmp	r3, #0
    77fc:	d030      	beq.n	7860 <rt_mut_release+0xd0>
    77fe:	0020      	movs	r0, r4
    7800:	f000 faca 	bl	7d98 <rt_get_first>
    7804:	0006      	movs	r6, r0
    7806:	2100      	movs	r1, #0
    7808:	f7ff fe94 	bl	7534 <rt_ret_val>
    780c:	0030      	movs	r0, r6
    780e:	f000 fbfb 	bl	8008 <rt_rmv_dly>
    7812:	2301      	movs	r3, #1
    7814:	8063      	strh	r3, [r4, #2]
    7816:	6a33      	ldr	r3, [r6, #32]
    7818:	60a6      	str	r6, [r4, #8]
    781a:	60e3      	str	r3, [r4, #12]
    781c:	6234      	str	r4, [r6, #32]
    781e:	4c1d      	ldr	r4, [pc, #116]	; (7894 <rt_mut_release+0x104>)
    7820:	6829      	ldr	r1, [r5, #0]
    7822:	6863      	ldr	r3, [r4, #4]
    7824:	788a      	ldrb	r2, [r1, #2]
    7826:	789b      	ldrb	r3, [r3, #2]
    7828:	2701      	movs	r7, #1
    782a:	429a      	cmp	r2, r3
    782c:	d309      	bcc.n	7842 <rt_mut_release+0xb2>
    782e:	0030      	movs	r0, r6
    7830:	f000 fea0 	bl	8574 <rt_dispatch>
    7834:	2000      	movs	r0, #0
    7836:	e7b1      	b.n	779c <rt_mut_release+0xc>
    7838:	0032      	movs	r2, r6
    783a:	68e3      	ldr	r3, [r4, #12]
    783c:	60d3      	str	r3, [r2, #12]
    783e:	68f3      	ldr	r3, [r6, #12]
    7840:	e7c7      	b.n	77d2 <rt_mut_release+0x42>
    7842:	0020      	movs	r0, r4
    7844:	f000 fa82 	bl	7d4c <rt_put_prio>
    7848:	0031      	movs	r1, r6
    784a:	0020      	movs	r0, r4
    784c:	f000 fa7e 	bl	7d4c <rt_put_prio>
    7850:	682b      	ldr	r3, [r5, #0]
    7852:	2000      	movs	r0, #0
    7854:	705f      	strb	r7, [r3, #1]
    7856:	7077      	strb	r7, [r6, #1]
    7858:	f000 fe8c 	bl	8574 <rt_dispatch>
    785c:	2000      	movs	r0, #0
    785e:	e79d      	b.n	779c <rt_mut_release+0xc>
    7860:	480c      	ldr	r0, [pc, #48]	; (7894 <rt_mut_release+0x104>)
    7862:	6843      	ldr	r3, [r0, #4]
    7864:	789b      	ldrb	r3, [r3, #2]
    7866:	42bb      	cmp	r3, r7
    7868:	d9e4      	bls.n	7834 <rt_mut_release+0xa4>
    786a:	f000 fa6f 	bl	7d4c <rt_put_prio>
    786e:	2201      	movs	r2, #1
    7870:	682b      	ldr	r3, [r5, #0]
    7872:	2000      	movs	r0, #0
    7874:	705a      	strb	r2, [r3, #1]
    7876:	f000 fe7d 	bl	8574 <rt_dispatch>
    787a:	2000      	movs	r0, #0
    787c:	e78e      	b.n	779c <rt_mut_release+0xc>
    787e:	2324      	movs	r3, #36	; 0x24
    7880:	68e6      	ldr	r6, [r4, #12]
    7882:	620e      	str	r6, [r1, #32]
    7884:	5ccf      	ldrb	r7, [r1, r3]
    7886:	2e00      	cmp	r6, #0
    7888:	d0b5      	beq.n	77f6 <rt_mut_release+0x66>
    788a:	68f3      	ldr	r3, [r6, #12]
    788c:	e7a3      	b.n	77d6 <rt_mut_release+0x46>
    788e:	46c0      	nop			; (mov r8, r8)
    7890:	200060b8 	.word	0x200060b8
    7894:	20006084 	.word	0x20006084

00007898 <rt_mut_wait>:
    7898:	b570      	push	{r4, r5, r6, lr}
    789a:	8843      	ldrh	r3, [r0, #2]
    789c:	0004      	movs	r4, r0
    789e:	000d      	movs	r5, r1
    78a0:	2b00      	cmp	r3, #0
    78a2:	d017      	beq.n	78d4 <rt_mut_wait+0x3c>
    78a4:	4e19      	ldr	r6, [pc, #100]	; (790c <rt_mut_wait+0x74>)
    78a6:	6882      	ldr	r2, [r0, #8]
    78a8:	6831      	ldr	r1, [r6, #0]
    78aa:	428a      	cmp	r2, r1
    78ac:	d026      	beq.n	78fc <rt_mut_wait+0x64>
    78ae:	2001      	movs	r0, #1
    78b0:	2d00      	cmp	r5, #0
    78b2:	d00e      	beq.n	78d2 <rt_mut_wait+0x3a>
    78b4:	788b      	ldrb	r3, [r1, #2]
    78b6:	7890      	ldrb	r0, [r2, #2]
    78b8:	4298      	cmp	r0, r3
    78ba:	d319      	bcc.n	78f0 <rt_mut_wait+0x58>
    78bc:	6863      	ldr	r3, [r4, #4]
    78be:	2b00      	cmp	r3, #0
    78c0:	d012      	beq.n	78e8 <rt_mut_wait+0x50>
    78c2:	0020      	movs	r0, r4
    78c4:	f000 fa42 	bl	7d4c <rt_put_prio>
    78c8:	0028      	movs	r0, r5
    78ca:	2109      	movs	r1, #9
    78cc:	f000 fe78 	bl	85c0 <rt_block>
    78d0:	2001      	movs	r0, #1
    78d2:	bd70      	pop	{r4, r5, r6, pc}
    78d4:	4b0d      	ldr	r3, [pc, #52]	; (790c <rt_mut_wait+0x74>)
    78d6:	681b      	ldr	r3, [r3, #0]
    78d8:	6a1a      	ldr	r2, [r3, #32]
    78da:	6083      	str	r3, [r0, #8]
    78dc:	60c2      	str	r2, [r0, #12]
    78de:	6218      	str	r0, [r3, #32]
    78e0:	2301      	movs	r3, #1
    78e2:	8043      	strh	r3, [r0, #2]
    78e4:	2000      	movs	r0, #0
    78e6:	e7f4      	b.n	78d2 <rt_mut_wait+0x3a>
    78e8:	6061      	str	r1, [r4, #4]
    78ea:	604b      	str	r3, [r1, #4]
    78ec:	608c      	str	r4, [r1, #8]
    78ee:	e7eb      	b.n	78c8 <rt_mut_wait+0x30>
    78f0:	7093      	strb	r3, [r2, #2]
    78f2:	68a0      	ldr	r0, [r4, #8]
    78f4:	f000 fa80 	bl	7df8 <rt_resort_prio>
    78f8:	6831      	ldr	r1, [r6, #0]
    78fa:	e7df      	b.n	78bc <rt_mut_wait+0x24>
    78fc:	4a04      	ldr	r2, [pc, #16]	; (7910 <rt_mut_wait+0x78>)
    78fe:	20ff      	movs	r0, #255	; 0xff
    7900:	4293      	cmp	r3, r2
    7902:	d0e6      	beq.n	78d2 <rt_mut_wait+0x3a>
    7904:	3301      	adds	r3, #1
    7906:	8063      	strh	r3, [r4, #2]
    7908:	2000      	movs	r0, #0
    790a:	e7e2      	b.n	78d2 <rt_mut_wait+0x3a>
    790c:	200060b8 	.word	0x200060b8
    7910:	0000ffff 	.word	0x0000ffff

00007914 <rt_time_get>:
    7914:	4b01      	ldr	r3, [pc, #4]	; (791c <rt_time_get+0x8>)
    7916:	6818      	ldr	r0, [r3, #0]
    7918:	4770      	bx	lr
    791a:	46c0      	nop			; (mov r8, r8)
    791c:	20006080 	.word	0x20006080

00007920 <rt_dly_wait>:
    7920:	b510      	push	{r4, lr}
    7922:	2103      	movs	r1, #3
    7924:	f000 fe4c 	bl	85c0 <rt_block>
    7928:	bd10      	pop	{r4, pc}
    792a:	46c0      	nop			; (mov r8, r8)

0000792c <rt_itv_set>:
    792c:	4b03      	ldr	r3, [pc, #12]	; (793c <rt_itv_set+0x10>)
    792e:	681a      	ldr	r2, [r3, #0]
    7930:	4b03      	ldr	r3, [pc, #12]	; (7940 <rt_itv_set+0x14>)
    7932:	82d0      	strh	r0, [r2, #22]
    7934:	681b      	ldr	r3, [r3, #0]
    7936:	18c0      	adds	r0, r0, r3
    7938:	8290      	strh	r0, [r2, #20]
    793a:	4770      	bx	lr
    793c:	200060b8 	.word	0x200060b8
    7940:	20006080 	.word	0x20006080

00007944 <rt_itv_wait>:
    7944:	b510      	push	{r4, lr}
    7946:	4b08      	ldr	r3, [pc, #32]	; (7968 <rt_itv_wait+0x24>)
    7948:	681a      	ldr	r2, [r3, #0]
    794a:	4b08      	ldr	r3, [pc, #32]	; (796c <rt_itv_wait+0x28>)
    794c:	8a90      	ldrh	r0, [r2, #20]
    794e:	681b      	ldr	r3, [r3, #0]
    7950:	8ad1      	ldrh	r1, [r2, #22]
    7952:	1ac3      	subs	r3, r0, r3
    7954:	1841      	adds	r1, r0, r1
    7956:	8291      	strh	r1, [r2, #20]
    7958:	b298      	uxth	r0, r3
    795a:	041b      	lsls	r3, r3, #16
    795c:	d402      	bmi.n	7964 <rt_itv_wait+0x20>
    795e:	2104      	movs	r1, #4
    7960:	f000 fe2e 	bl	85c0 <rt_block>
    7964:	bd10      	pop	{r4, pc}
    7966:	46c0      	nop			; (mov r8, r8)
    7968:	200060b8 	.word	0x200060b8
    796c:	20006080 	.word	0x20006080

00007970 <rt_sem_init>:
    7970:	2302      	movs	r3, #2
    7972:	7003      	strb	r3, [r0, #0]
    7974:	2300      	movs	r3, #0
    7976:	8041      	strh	r1, [r0, #2]
    7978:	6043      	str	r3, [r0, #4]
    797a:	4770      	bx	lr

0000797c <rt_sem_delete>:
    797c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    797e:	6843      	ldr	r3, [r0, #4]
    7980:	0005      	movs	r5, r0
    7982:	4e16      	ldr	r6, [pc, #88]	; (79dc <rt_sem_delete+0x60>)
    7984:	2b00      	cmp	r3, #0
    7986:	d012      	beq.n	79ae <rt_sem_delete+0x32>
    7988:	2701      	movs	r7, #1
    798a:	0028      	movs	r0, r5
    798c:	f000 fa04 	bl	7d98 <rt_get_first>
    7990:	0004      	movs	r4, r0
    7992:	2100      	movs	r1, #0
    7994:	f7ff fdce 	bl	7534 <rt_ret_val>
    7998:	0020      	movs	r0, r4
    799a:	f000 fb35 	bl	8008 <rt_rmv_dly>
    799e:	7067      	strb	r7, [r4, #1]
    79a0:	0021      	movs	r1, r4
    79a2:	0030      	movs	r0, r6
    79a4:	f000 f9d2 	bl	7d4c <rt_put_prio>
    79a8:	686b      	ldr	r3, [r5, #4]
    79aa:	2b00      	cmp	r3, #0
    79ac:	d1ed      	bne.n	798a <rt_sem_delete+0xe>
    79ae:	6873      	ldr	r3, [r6, #4]
    79b0:	2b00      	cmp	r3, #0
    79b2:	d00e      	beq.n	79d2 <rt_sem_delete+0x56>
    79b4:	4c0a      	ldr	r4, [pc, #40]	; (79e0 <rt_sem_delete+0x64>)
    79b6:	789a      	ldrb	r2, [r3, #2]
    79b8:	6821      	ldr	r1, [r4, #0]
    79ba:	788b      	ldrb	r3, [r1, #2]
    79bc:	429a      	cmp	r2, r3
    79be:	d908      	bls.n	79d2 <rt_sem_delete+0x56>
    79c0:	0030      	movs	r0, r6
    79c2:	f000 f9c3 	bl	7d4c <rt_put_prio>
    79c6:	2201      	movs	r2, #1
    79c8:	6823      	ldr	r3, [r4, #0]
    79ca:	2000      	movs	r0, #0
    79cc:	705a      	strb	r2, [r3, #1]
    79ce:	f000 fdd1 	bl	8574 <rt_dispatch>
    79d2:	2300      	movs	r3, #0
    79d4:	2000      	movs	r0, #0
    79d6:	702b      	strb	r3, [r5, #0]
    79d8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    79da:	46c0      	nop			; (mov r8, r8)
    79dc:	20006084 	.word	0x20006084
    79e0:	200060b8 	.word	0x200060b8

000079e4 <rt_sem_send>:
    79e4:	6843      	ldr	r3, [r0, #4]
    79e6:	b510      	push	{r4, lr}
    79e8:	2b00      	cmp	r3, #0
    79ea:	d00d      	beq.n	7a08 <rt_sem_send+0x24>
    79ec:	f000 f9d4 	bl	7d98 <rt_get_first>
    79f0:	0004      	movs	r4, r0
    79f2:	2101      	movs	r1, #1
    79f4:	f7ff fd9e 	bl	7534 <rt_ret_val>
    79f8:	0020      	movs	r0, r4
    79fa:	f000 fb05 	bl	8008 <rt_rmv_dly>
    79fe:	0020      	movs	r0, r4
    7a00:	f000 fdb8 	bl	8574 <rt_dispatch>
    7a04:	2000      	movs	r0, #0
    7a06:	bd10      	pop	{r4, pc}
    7a08:	8843      	ldrh	r3, [r0, #2]
    7a0a:	3301      	adds	r3, #1
    7a0c:	8043      	strh	r3, [r0, #2]
    7a0e:	e7f9      	b.n	7a04 <rt_sem_send+0x20>

00007a10 <rt_sem_wait>:
    7a10:	b510      	push	{r4, lr}
    7a12:	8843      	ldrh	r3, [r0, #2]
    7a14:	000c      	movs	r4, r1
    7a16:	2b00      	cmp	r3, #0
    7a18:	d110      	bne.n	7a3c <rt_sem_wait+0x2c>
    7a1a:	2301      	movs	r3, #1
    7a1c:	2900      	cmp	r1, #0
    7a1e:	d00b      	beq.n	7a38 <rt_sem_wait+0x28>
    7a20:	6843      	ldr	r3, [r0, #4]
    7a22:	2b00      	cmp	r3, #0
    7a24:	d00e      	beq.n	7a44 <rt_sem_wait+0x34>
    7a26:	4b0a      	ldr	r3, [pc, #40]	; (7a50 <rt_sem_wait+0x40>)
    7a28:	6819      	ldr	r1, [r3, #0]
    7a2a:	f000 f98f 	bl	7d4c <rt_put_prio>
    7a2e:	2107      	movs	r1, #7
    7a30:	0020      	movs	r0, r4
    7a32:	f000 fdc5 	bl	85c0 <rt_block>
    7a36:	2301      	movs	r3, #1
    7a38:	0018      	movs	r0, r3
    7a3a:	bd10      	pop	{r4, pc}
    7a3c:	3b01      	subs	r3, #1
    7a3e:	8043      	strh	r3, [r0, #2]
    7a40:	2300      	movs	r3, #0
    7a42:	e7f9      	b.n	7a38 <rt_sem_wait+0x28>
    7a44:	4a02      	ldr	r2, [pc, #8]	; (7a50 <rt_sem_wait+0x40>)
    7a46:	6812      	ldr	r2, [r2, #0]
    7a48:	6042      	str	r2, [r0, #4]
    7a4a:	6053      	str	r3, [r2, #4]
    7a4c:	6090      	str	r0, [r2, #8]
    7a4e:	e7ee      	b.n	7a2e <rt_sem_wait+0x1e>
    7a50:	200060b8 	.word	0x200060b8

00007a54 <isr_sem_send>:
    7a54:	b510      	push	{r4, lr}
    7a56:	2100      	movs	r1, #0
    7a58:	f000 faec 	bl	8034 <rt_psq_enq>
    7a5c:	f000 fcce 	bl	83fc <rt_psh_req>
    7a60:	bd10      	pop	{r4, pc}
    7a62:	46c0      	nop			; (mov r8, r8)

00007a64 <rt_sem_psh>:
    7a64:	6843      	ldr	r3, [r0, #4]
    7a66:	b510      	push	{r4, lr}
    7a68:	2b00      	cmp	r3, #0
    7a6a:	d00f      	beq.n	7a8c <rt_sem_psh+0x28>
    7a6c:	f000 f994 	bl	7d98 <rt_get_first>
    7a70:	0004      	movs	r4, r0
    7a72:	f000 fac9 	bl	8008 <rt_rmv_dly>
    7a76:	2301      	movs	r3, #1
    7a78:	2101      	movs	r1, #1
    7a7a:	0020      	movs	r0, r4
    7a7c:	7063      	strb	r3, [r4, #1]
    7a7e:	f7ff fd59 	bl	7534 <rt_ret_val>
    7a82:	0021      	movs	r1, r4
    7a84:	4803      	ldr	r0, [pc, #12]	; (7a94 <rt_sem_psh+0x30>)
    7a86:	f000 f961 	bl	7d4c <rt_put_prio>
    7a8a:	bd10      	pop	{r4, pc}
    7a8c:	8843      	ldrh	r3, [r0, #2]
    7a8e:	3301      	adds	r3, #1
    7a90:	8043      	strh	r3, [r0, #2]
    7a92:	e7fa      	b.n	7a8a <rt_sem_psh+0x26>
    7a94:	20006084 	.word	0x20006084

00007a98 <rt_mbx_init>:
    7a98:	2301      	movs	r3, #1
    7a9a:	7003      	strb	r3, [r0, #0]
    7a9c:	2300      	movs	r3, #0
    7a9e:	3910      	subs	r1, #16
    7aa0:	0889      	lsrs	r1, r1, #2
    7aa2:	7043      	strb	r3, [r0, #1]
    7aa4:	7083      	strb	r3, [r0, #2]
    7aa6:	6043      	str	r3, [r0, #4]
    7aa8:	8103      	strh	r3, [r0, #8]
    7aaa:	8143      	strh	r3, [r0, #10]
    7aac:	8183      	strh	r3, [r0, #12]
    7aae:	81c1      	strh	r1, [r0, #14]
    7ab0:	4770      	bx	lr
    7ab2:	46c0      	nop			; (mov r8, r8)

00007ab4 <rt_mbx_send>:
    7ab4:	6843      	ldr	r3, [r0, #4]
    7ab6:	b570      	push	{r4, r5, r6, lr}
    7ab8:	000d      	movs	r5, r1
    7aba:	0016      	movs	r6, r2
    7abc:	2b00      	cmp	r3, #0
    7abe:	d002      	beq.n	7ac6 <rt_mbx_send+0x12>
    7ac0:	7842      	ldrb	r2, [r0, #1]
    7ac2:	2a01      	cmp	r2, #1
    7ac4:	d028      	beq.n	7b18 <rt_mbx_send+0x64>
    7ac6:	8982      	ldrh	r2, [r0, #12]
    7ac8:	89c4      	ldrh	r4, [r0, #14]
    7aca:	42a2      	cmp	r2, r4
    7acc:	d013      	beq.n	7af6 <rt_mbx_send+0x42>
    7ace:	8903      	ldrh	r3, [r0, #8]
    7ad0:	1d19      	adds	r1, r3, #4
    7ad2:	0089      	lsls	r1, r1, #2
    7ad4:	500d      	str	r5, [r1, r0]
    7ad6:	f3ef 8110 	mrs	r1, PRIMASK
    7ada:	b672      	cpsid	i
    7adc:	3201      	adds	r2, #1
    7ade:	8182      	strh	r2, [r0, #12]
    7ae0:	b662      	cpsie	i
    7ae2:	3301      	adds	r3, #1
    7ae4:	b29b      	uxth	r3, r3
    7ae6:	429c      	cmp	r4, r3
    7ae8:	d003      	beq.n	7af2 <rt_mbx_send+0x3e>
    7aea:	2200      	movs	r2, #0
    7aec:	8103      	strh	r3, [r0, #8]
    7aee:	0010      	movs	r0, r2
    7af0:	bd70      	pop	{r4, r5, r6, pc}
    7af2:	2300      	movs	r3, #0
    7af4:	e7f9      	b.n	7aea <rt_mbx_send+0x36>
    7af6:	2201      	movs	r2, #1
    7af8:	2e00      	cmp	r6, #0
    7afa:	d0f8      	beq.n	7aee <rt_mbx_send+0x3a>
    7afc:	2b00      	cmp	r3, #0
    7afe:	d01a      	beq.n	7b36 <rt_mbx_send+0x82>
    7b00:	4c11      	ldr	r4, [pc, #68]	; (7b48 <rt_mbx_send+0x94>)
    7b02:	6821      	ldr	r1, [r4, #0]
    7b04:	f000 f922 	bl	7d4c <rt_put_prio>
    7b08:	6822      	ldr	r2, [r4, #0]
    7b0a:	61d5      	str	r5, [r2, #28]
    7b0c:	2108      	movs	r1, #8
    7b0e:	0030      	movs	r0, r6
    7b10:	f000 fd56 	bl	85c0 <rt_block>
    7b14:	2201      	movs	r2, #1
    7b16:	e7ea      	b.n	7aee <rt_mbx_send+0x3a>
    7b18:	f000 f93e 	bl	7d98 <rt_get_first>
    7b1c:	0004      	movs	r4, r0
    7b1e:	002a      	movs	r2, r5
    7b20:	2110      	movs	r1, #16
    7b22:	f7ff fd0b 	bl	753c <rt_ret_val2>
    7b26:	0020      	movs	r0, r4
    7b28:	f000 fa6e 	bl	8008 <rt_rmv_dly>
    7b2c:	0020      	movs	r0, r4
    7b2e:	f000 fd21 	bl	8574 <rt_dispatch>
    7b32:	2200      	movs	r2, #0
    7b34:	e7db      	b.n	7aee <rt_mbx_send+0x3a>
    7b36:	4a04      	ldr	r2, [pc, #16]	; (7b48 <rt_mbx_send+0x94>)
    7b38:	6812      	ldr	r2, [r2, #0]
    7b3a:	6042      	str	r2, [r0, #4]
    7b3c:	6053      	str	r3, [r2, #4]
    7b3e:	2302      	movs	r3, #2
    7b40:	6090      	str	r0, [r2, #8]
    7b42:	7043      	strb	r3, [r0, #1]
    7b44:	e7e1      	b.n	7b0a <rt_mbx_send+0x56>
    7b46:	46c0      	nop			; (mov r8, r8)
    7b48:	200060b8 	.word	0x200060b8

00007b4c <rt_mbx_wait>:
    7b4c:	b570      	push	{r4, r5, r6, lr}
    7b4e:	0015      	movs	r5, r2
    7b50:	8982      	ldrh	r2, [r0, #12]
    7b52:	0004      	movs	r4, r0
    7b54:	2a00      	cmp	r2, #0
    7b56:	d018      	beq.n	7b8a <rt_mbx_wait+0x3e>
    7b58:	8943      	ldrh	r3, [r0, #10]
    7b5a:	1d18      	adds	r0, r3, #4
    7b5c:	0080      	lsls	r0, r0, #2
    7b5e:	5900      	ldr	r0, [r0, r4]
    7b60:	3301      	adds	r3, #1
    7b62:	6008      	str	r0, [r1, #0]
    7b64:	89e1      	ldrh	r1, [r4, #14]
    7b66:	b29b      	uxth	r3, r3
    7b68:	8163      	strh	r3, [r4, #10]
    7b6a:	4299      	cmp	r1, r3
    7b6c:	d01e      	beq.n	7bac <rt_mbx_wait+0x60>
    7b6e:	6863      	ldr	r3, [r4, #4]
    7b70:	2b00      	cmp	r3, #0
    7b72:	d002      	beq.n	7b7a <rt_mbx_wait+0x2e>
    7b74:	7863      	ldrb	r3, [r4, #1]
    7b76:	2b02      	cmp	r3, #2
    7b78:	d025      	beq.n	7bc6 <rt_mbx_wait+0x7a>
    7b7a:	f3ef 8310 	mrs	r3, PRIMASK
    7b7e:	b672      	cpsid	i
    7b80:	3a01      	subs	r2, #1
    7b82:	81a2      	strh	r2, [r4, #12]
    7b84:	b662      	cpsie	i
    7b86:	2000      	movs	r0, #0
    7b88:	bd70      	pop	{r4, r5, r6, pc}
    7b8a:	2001      	movs	r0, #1
    7b8c:	2d00      	cmp	r5, #0
    7b8e:	d0fb      	beq.n	7b88 <rt_mbx_wait+0x3c>
    7b90:	6863      	ldr	r3, [r4, #4]
    7b92:	2b00      	cmp	r3, #0
    7b94:	d010      	beq.n	7bb8 <rt_mbx_wait+0x6c>
    7b96:	4b1a      	ldr	r3, [pc, #104]	; (7c00 <rt_mbx_wait+0xb4>)
    7b98:	0020      	movs	r0, r4
    7b9a:	6819      	ldr	r1, [r3, #0]
    7b9c:	f000 f8d6 	bl	7d4c <rt_put_prio>
    7ba0:	0028      	movs	r0, r5
    7ba2:	2108      	movs	r1, #8
    7ba4:	f000 fd0c 	bl	85c0 <rt_block>
    7ba8:	2001      	movs	r0, #1
    7baa:	e7ed      	b.n	7b88 <rt_mbx_wait+0x3c>
    7bac:	2300      	movs	r3, #0
    7bae:	8163      	strh	r3, [r4, #10]
    7bb0:	6863      	ldr	r3, [r4, #4]
    7bb2:	2b00      	cmp	r3, #0
    7bb4:	d1de      	bne.n	7b74 <rt_mbx_wait+0x28>
    7bb6:	e7e0      	b.n	7b7a <rt_mbx_wait+0x2e>
    7bb8:	4a11      	ldr	r2, [pc, #68]	; (7c00 <rt_mbx_wait+0xb4>)
    7bba:	6812      	ldr	r2, [r2, #0]
    7bbc:	6062      	str	r2, [r4, #4]
    7bbe:	6053      	str	r3, [r2, #4]
    7bc0:	6094      	str	r4, [r2, #8]
    7bc2:	7060      	strb	r0, [r4, #1]
    7bc4:	e7ec      	b.n	7ba0 <rt_mbx_wait+0x54>
    7bc6:	0020      	movs	r0, r4
    7bc8:	f000 f8e6 	bl	7d98 <rt_get_first>
    7bcc:	0005      	movs	r5, r0
    7bce:	2100      	movs	r1, #0
    7bd0:	f7ff fcb0 	bl	7534 <rt_ret_val>
    7bd4:	8923      	ldrh	r3, [r4, #8]
    7bd6:	69e9      	ldr	r1, [r5, #28]
    7bd8:	1d1a      	adds	r2, r3, #4
    7bda:	0092      	lsls	r2, r2, #2
    7bdc:	5111      	str	r1, [r2, r4]
    7bde:	3301      	adds	r3, #1
    7be0:	89e2      	ldrh	r2, [r4, #14]
    7be2:	b29b      	uxth	r3, r3
    7be4:	8123      	strh	r3, [r4, #8]
    7be6:	429a      	cmp	r2, r3
    7be8:	d101      	bne.n	7bee <rt_mbx_wait+0xa2>
    7bea:	2300      	movs	r3, #0
    7bec:	8123      	strh	r3, [r4, #8]
    7bee:	0028      	movs	r0, r5
    7bf0:	f000 fa0a 	bl	8008 <rt_rmv_dly>
    7bf4:	0028      	movs	r0, r5
    7bf6:	f000 fcbd 	bl	8574 <rt_dispatch>
    7bfa:	2000      	movs	r0, #0
    7bfc:	e7c4      	b.n	7b88 <rt_mbx_wait+0x3c>
    7bfe:	46c0      	nop			; (mov r8, r8)
    7c00:	200060b8 	.word	0x200060b8

00007c04 <rt_mbx_check>:
    7c04:	89c3      	ldrh	r3, [r0, #14]
    7c06:	8980      	ldrh	r0, [r0, #12]
    7c08:	1a18      	subs	r0, r3, r0
    7c0a:	4770      	bx	lr

00007c0c <isr_mbx_send>:
    7c0c:	b510      	push	{r4, lr}
    7c0e:	f000 fa11 	bl	8034 <rt_psq_enq>
    7c12:	f000 fbf3 	bl	83fc <rt_psh_req>
    7c16:	bd10      	pop	{r4, pc}

00007c18 <isr_mbx_receive>:
    7c18:	b510      	push	{r4, lr}
    7c1a:	8982      	ldrh	r2, [r0, #12]
    7c1c:	0004      	movs	r4, r0
    7c1e:	2000      	movs	r0, #0
    7c20:	2a00      	cmp	r2, #0
    7c22:	d017      	beq.n	7c54 <isr_mbx_receive+0x3c>
    7c24:	8963      	ldrh	r3, [r4, #10]
    7c26:	1d18      	adds	r0, r3, #4
    7c28:	0080      	lsls	r0, r0, #2
    7c2a:	5900      	ldr	r0, [r0, r4]
    7c2c:	6008      	str	r0, [r1, #0]
    7c2e:	6861      	ldr	r1, [r4, #4]
    7c30:	2900      	cmp	r1, #0
    7c32:	d002      	beq.n	7c3a <isr_mbx_receive+0x22>
    7c34:	7861      	ldrb	r1, [r4, #1]
    7c36:	2902      	cmp	r1, #2
    7c38:	d010      	beq.n	7c5c <isr_mbx_receive+0x44>
    7c3a:	f3ef 8110 	mrs	r1, PRIMASK
    7c3e:	b672      	cpsid	i
    7c40:	3a01      	subs	r2, #1
    7c42:	81a2      	strh	r2, [r4, #12]
    7c44:	b662      	cpsie	i
    7c46:	3301      	adds	r3, #1
    7c48:	89e2      	ldrh	r2, [r4, #14]
    7c4a:	b29b      	uxth	r3, r3
    7c4c:	8163      	strh	r3, [r4, #10]
    7c4e:	2004      	movs	r0, #4
    7c50:	429a      	cmp	r2, r3
    7c52:	d000      	beq.n	7c56 <isr_mbx_receive+0x3e>
    7c54:	bd10      	pop	{r4, pc}
    7c56:	2300      	movs	r3, #0
    7c58:	8163      	strh	r3, [r4, #10]
    7c5a:	e7fb      	b.n	7c54 <isr_mbx_receive+0x3c>
    7c5c:	2100      	movs	r1, #0
    7c5e:	0020      	movs	r0, r4
    7c60:	f000 f9e8 	bl	8034 <rt_psq_enq>
    7c64:	f000 fbca 	bl	83fc <rt_psh_req>
    7c68:	89a2      	ldrh	r2, [r4, #12]
    7c6a:	8963      	ldrh	r3, [r4, #10]
    7c6c:	e7e5      	b.n	7c3a <isr_mbx_receive+0x22>
    7c6e:	46c0      	nop			; (mov r8, r8)

00007c70 <rt_mbx_psh>:
    7c70:	6843      	ldr	r3, [r0, #4]
    7c72:	b570      	push	{r4, r5, r6, lr}
    7c74:	0004      	movs	r4, r0
    7c76:	000e      	movs	r6, r1
    7c78:	2b00      	cmp	r3, #0
    7c7a:	d04b      	beq.n	7d14 <rt_mbx_psh+0xa4>
    7c7c:	7845      	ldrb	r5, [r0, #1]
    7c7e:	2d02      	cmp	r5, #2
    7c80:	d023      	beq.n	7cca <rt_mbx_psh+0x5a>
    7c82:	2d03      	cmp	r5, #3
    7c84:	d002      	beq.n	7c8c <rt_mbx_psh+0x1c>
    7c86:	2d01      	cmp	r5, #1
    7c88:	d00f      	beq.n	7caa <rt_mbx_psh+0x3a>
    7c8a:	bd70      	pop	{r4, r5, r6, pc}
    7c8c:	0008      	movs	r0, r1
    7c8e:	f7ff fcd3 	bl	7638 <rt_alloc_box>
    7c92:	1e05      	subs	r5, r0, #0
    7c94:	d0f9      	beq.n	7c8a <rt_mbx_psh+0x1a>
    7c96:	0020      	movs	r0, r4
    7c98:	f000 f87e 	bl	7d98 <rt_get_first>
    7c9c:	0029      	movs	r1, r5
    7c9e:	0004      	movs	r4, r0
    7ca0:	f7ff fc48 	bl	7534 <rt_ret_val>
    7ca4:	2301      	movs	r3, #1
    7ca6:	7063      	strb	r3, [r4, #1]
    7ca8:	e007      	b.n	7cba <rt_mbx_psh+0x4a>
    7caa:	f000 f875 	bl	7d98 <rt_get_first>
    7cae:	0004      	movs	r4, r0
    7cb0:	0032      	movs	r2, r6
    7cb2:	2110      	movs	r1, #16
    7cb4:	f7ff fc42 	bl	753c <rt_ret_val2>
    7cb8:	7065      	strb	r5, [r4, #1]
    7cba:	0020      	movs	r0, r4
    7cbc:	f000 f9a4 	bl	8008 <rt_rmv_dly>
    7cc0:	0021      	movs	r1, r4
    7cc2:	4821      	ldr	r0, [pc, #132]	; (7d48 <rt_mbx_psh+0xd8>)
    7cc4:	f000 f842 	bl	7d4c <rt_put_prio>
    7cc8:	e7df      	b.n	7c8a <rt_mbx_psh+0x1a>
    7cca:	f000 f865 	bl	7d98 <rt_get_first>
    7cce:	0005      	movs	r5, r0
    7cd0:	2100      	movs	r1, #0
    7cd2:	f7ff fc2f 	bl	7534 <rt_ret_val>
    7cd6:	8923      	ldrh	r3, [r4, #8]
    7cd8:	69e9      	ldr	r1, [r5, #28]
    7cda:	1d1a      	adds	r2, r3, #4
    7cdc:	0092      	lsls	r2, r2, #2
    7cde:	5111      	str	r1, [r2, r4]
    7ce0:	f3ef 8210 	mrs	r2, PRIMASK
    7ce4:	b672      	cpsid	i
    7ce6:	89a2      	ldrh	r2, [r4, #12]
    7ce8:	3201      	adds	r2, #1
    7cea:	81a2      	strh	r2, [r4, #12]
    7cec:	b662      	cpsie	i
    7cee:	3301      	adds	r3, #1
    7cf0:	89e2      	ldrh	r2, [r4, #14]
    7cf2:	b29b      	uxth	r3, r3
    7cf4:	8123      	strh	r3, [r4, #8]
    7cf6:	429a      	cmp	r2, r3
    7cf8:	d009      	beq.n	7d0e <rt_mbx_psh+0x9e>
    7cfa:	2301      	movs	r3, #1
    7cfc:	0028      	movs	r0, r5
    7cfe:	706b      	strb	r3, [r5, #1]
    7d00:	f000 f982 	bl	8008 <rt_rmv_dly>
    7d04:	0029      	movs	r1, r5
    7d06:	4810      	ldr	r0, [pc, #64]	; (7d48 <rt_mbx_psh+0xd8>)
    7d08:	f000 f820 	bl	7d4c <rt_put_prio>
    7d0c:	e7bd      	b.n	7c8a <rt_mbx_psh+0x1a>
    7d0e:	2300      	movs	r3, #0
    7d10:	8123      	strh	r3, [r4, #8]
    7d12:	e7f2      	b.n	7cfa <rt_mbx_psh+0x8a>
    7d14:	8981      	ldrh	r1, [r0, #12]
    7d16:	89c5      	ldrh	r5, [r0, #14]
    7d18:	42a9      	cmp	r1, r5
    7d1a:	d20f      	bcs.n	7d3c <rt_mbx_psh+0xcc>
    7d1c:	8902      	ldrh	r2, [r0, #8]
    7d1e:	1d10      	adds	r0, r2, #4
    7d20:	0080      	lsls	r0, r0, #2
    7d22:	5106      	str	r6, [r0, r4]
    7d24:	f3ef 8010 	mrs	r0, PRIMASK
    7d28:	b672      	cpsid	i
    7d2a:	3101      	adds	r1, #1
    7d2c:	81a1      	strh	r1, [r4, #12]
    7d2e:	b662      	cpsie	i
    7d30:	3201      	adds	r2, #1
    7d32:	b292      	uxth	r2, r2
    7d34:	4295      	cmp	r5, r2
    7d36:	d005      	beq.n	7d44 <rt_mbx_psh+0xd4>
    7d38:	8122      	strh	r2, [r4, #8]
    7d3a:	e7a6      	b.n	7c8a <rt_mbx_psh+0x1a>
    7d3c:	2003      	movs	r0, #3
    7d3e:	f7f9 fe9d 	bl	1a7c <os_error>
    7d42:	e7a2      	b.n	7c8a <rt_mbx_psh+0x1a>
    7d44:	8123      	strh	r3, [r4, #8]
    7d46:	e7a0      	b.n	7c8a <rt_mbx_psh+0x1a>
    7d48:	20006084 	.word	0x20006084

00007d4c <rt_put_prio>:
    7d4c:	b530      	push	{r4, r5, lr}
    7d4e:	7805      	ldrb	r5, [r0, #0]
    7d50:	6842      	ldr	r2, [r0, #4]
    7d52:	3d01      	subs	r5, #1
    7d54:	b2ed      	uxtb	r5, r5
    7d56:	788c      	ldrb	r4, [r1, #2]
    7d58:	2a00      	cmp	r2, #0
    7d5a:	d01a      	beq.n	7d92 <rt_put_prio+0x46>
    7d5c:	7893      	ldrb	r3, [r2, #2]
    7d5e:	42a3      	cmp	r3, r4
    7d60:	d204      	bcs.n	7d6c <rt_put_prio+0x20>
    7d62:	e00e      	b.n	7d82 <rt_put_prio+0x36>
    7d64:	7898      	ldrb	r0, [r3, #2]
    7d66:	4284      	cmp	r4, r0
    7d68:	d80d      	bhi.n	7d86 <rt_put_prio+0x3a>
    7d6a:	001a      	movs	r2, r3
    7d6c:	6853      	ldr	r3, [r2, #4]
    7d6e:	2b00      	cmp	r3, #0
    7d70:	d1f8      	bne.n	7d64 <rt_put_prio+0x18>
    7d72:	2300      	movs	r3, #0
    7d74:	604b      	str	r3, [r1, #4]
    7d76:	6051      	str	r1, [r2, #4]
    7d78:	2d02      	cmp	r5, #2
    7d7a:	d900      	bls.n	7d7e <rt_put_prio+0x32>
    7d7c:	2200      	movs	r2, #0
    7d7e:	608a      	str	r2, [r1, #8]
    7d80:	bd30      	pop	{r4, r5, pc}
    7d82:	0013      	movs	r3, r2
    7d84:	0002      	movs	r2, r0
    7d86:	604b      	str	r3, [r1, #4]
    7d88:	6051      	str	r1, [r2, #4]
    7d8a:	2d02      	cmp	r5, #2
    7d8c:	d8f6      	bhi.n	7d7c <rt_put_prio+0x30>
    7d8e:	6099      	str	r1, [r3, #8]
    7d90:	e7f5      	b.n	7d7e <rt_put_prio+0x32>
    7d92:	0002      	movs	r2, r0
    7d94:	e7ed      	b.n	7d72 <rt_put_prio+0x26>
    7d96:	46c0      	nop			; (mov r8, r8)

00007d98 <rt_get_first>:
    7d98:	6843      	ldr	r3, [r0, #4]
    7d9a:	7802      	ldrb	r2, [r0, #0]
    7d9c:	6859      	ldr	r1, [r3, #4]
    7d9e:	3a01      	subs	r2, #1
    7da0:	6041      	str	r1, [r0, #4]
    7da2:	2a02      	cmp	r2, #2
    7da4:	d808      	bhi.n	7db8 <rt_get_first+0x20>
    7da6:	2900      	cmp	r1, #0
    7da8:	d002      	beq.n	7db0 <rt_get_first+0x18>
    7daa:	2200      	movs	r2, #0
    7dac:	6088      	str	r0, [r1, #8]
    7dae:	605a      	str	r2, [r3, #4]
    7db0:	2200      	movs	r2, #0
    7db2:	609a      	str	r2, [r3, #8]
    7db4:	0018      	movs	r0, r3
    7db6:	4770      	bx	lr
    7db8:	2200      	movs	r2, #0
    7dba:	605a      	str	r2, [r3, #4]
    7dbc:	e7fa      	b.n	7db4 <rt_get_first+0x1c>
    7dbe:	46c0      	nop			; (mov r8, r8)

00007dc0 <rt_put_rdy_first>:
    7dc0:	4b03      	ldr	r3, [pc, #12]	; (7dd0 <rt_put_rdy_first+0x10>)
    7dc2:	685a      	ldr	r2, [r3, #4]
    7dc4:	6042      	str	r2, [r0, #4]
    7dc6:	2200      	movs	r2, #0
    7dc8:	6058      	str	r0, [r3, #4]
    7dca:	6082      	str	r2, [r0, #8]
    7dcc:	4770      	bx	lr
    7dce:	46c0      	nop			; (mov r8, r8)
    7dd0:	20006084 	.word	0x20006084

00007dd4 <rt_get_same_rdy_prio>:
    7dd4:	4b06      	ldr	r3, [pc, #24]	; (7df0 <rt_get_same_rdy_prio+0x1c>)
    7dd6:	4a07      	ldr	r2, [pc, #28]	; (7df4 <rt_get_same_rdy_prio+0x20>)
    7dd8:	6858      	ldr	r0, [r3, #4]
    7dda:	6812      	ldr	r2, [r2, #0]
    7ddc:	7881      	ldrb	r1, [r0, #2]
    7dde:	7892      	ldrb	r2, [r2, #2]
    7de0:	4291      	cmp	r1, r2
    7de2:	d102      	bne.n	7dea <rt_get_same_rdy_prio+0x16>
    7de4:	6842      	ldr	r2, [r0, #4]
    7de6:	605a      	str	r2, [r3, #4]
    7de8:	4770      	bx	lr
    7dea:	2000      	movs	r0, #0
    7dec:	e7fc      	b.n	7de8 <rt_get_same_rdy_prio+0x14>
    7dee:	46c0      	nop			; (mov r8, r8)
    7df0:	20006084 	.word	0x20006084
    7df4:	200060b8 	.word	0x200060b8

00007df8 <rt_resort_prio>:
    7df8:	6881      	ldr	r1, [r0, #8]
    7dfa:	b530      	push	{r4, r5, lr}
    7dfc:	2900      	cmp	r1, #0
    7dfe:	d030      	beq.n	7e62 <rt_resort_prio+0x6a>
    7e00:	780b      	ldrb	r3, [r1, #0]
    7e02:	000a      	movs	r2, r1
    7e04:	2b00      	cmp	r3, #0
    7e06:	d103      	bne.n	7e10 <rt_resort_prio+0x18>
    7e08:	6892      	ldr	r2, [r2, #8]
    7e0a:	7813      	ldrb	r3, [r2, #0]
    7e0c:	2b00      	cmp	r3, #0
    7e0e:	d0fb      	beq.n	7e08 <rt_resort_prio+0x10>
    7e10:	6843      	ldr	r3, [r0, #4]
    7e12:	604b      	str	r3, [r1, #4]
    7e14:	6843      	ldr	r3, [r0, #4]
    7e16:	2b00      	cmp	r3, #0
    7e18:	d000      	beq.n	7e1c <rt_resort_prio+0x24>
    7e1a:	6099      	str	r1, [r3, #8]
    7e1c:	7815      	ldrb	r5, [r2, #0]
    7e1e:	6851      	ldr	r1, [r2, #4]
    7e20:	3d01      	subs	r5, #1
    7e22:	b2ed      	uxtb	r5, r5
    7e24:	7884      	ldrb	r4, [r0, #2]
    7e26:	2900      	cmp	r1, #0
    7e28:	d029      	beq.n	7e7e <rt_resort_prio+0x86>
    7e2a:	788b      	ldrb	r3, [r1, #2]
    7e2c:	42a3      	cmp	r3, r4
    7e2e:	d204      	bcs.n	7e3a <rt_resort_prio+0x42>
    7e30:	e00e      	b.n	7e50 <rt_resort_prio+0x58>
    7e32:	789a      	ldrb	r2, [r3, #2]
    7e34:	4294      	cmp	r4, r2
    7e36:	d80d      	bhi.n	7e54 <rt_resort_prio+0x5c>
    7e38:	0019      	movs	r1, r3
    7e3a:	684b      	ldr	r3, [r1, #4]
    7e3c:	2b00      	cmp	r3, #0
    7e3e:	d1f8      	bne.n	7e32 <rt_resort_prio+0x3a>
    7e40:	2300      	movs	r3, #0
    7e42:	6043      	str	r3, [r0, #4]
    7e44:	6048      	str	r0, [r1, #4]
    7e46:	2d02      	cmp	r5, #2
    7e48:	d909      	bls.n	7e5e <rt_resort_prio+0x66>
    7e4a:	2300      	movs	r3, #0
    7e4c:	6083      	str	r3, [r0, #8]
    7e4e:	bd30      	pop	{r4, r5, pc}
    7e50:	000b      	movs	r3, r1
    7e52:	0011      	movs	r1, r2
    7e54:	6043      	str	r3, [r0, #4]
    7e56:	6048      	str	r0, [r1, #4]
    7e58:	2d02      	cmp	r5, #2
    7e5a:	d8f6      	bhi.n	7e4a <rt_resort_prio+0x52>
    7e5c:	6098      	str	r0, [r3, #8]
    7e5e:	6081      	str	r1, [r0, #8]
    7e60:	e7f5      	b.n	7e4e <rt_resort_prio+0x56>
    7e62:	7843      	ldrb	r3, [r0, #1]
    7e64:	2b01      	cmp	r3, #1
    7e66:	d1f2      	bne.n	7e4e <rt_resort_prio+0x56>
    7e68:	4a06      	ldr	r2, [pc, #24]	; (7e84 <rt_resort_prio+0x8c>)
    7e6a:	0013      	movs	r3, r2
    7e6c:	e001      	b.n	7e72 <rt_resort_prio+0x7a>
    7e6e:	1e0b      	subs	r3, r1, #0
    7e70:	d0d4      	beq.n	7e1c <rt_resort_prio+0x24>
    7e72:	6859      	ldr	r1, [r3, #4]
    7e74:	4288      	cmp	r0, r1
    7e76:	d1fa      	bne.n	7e6e <rt_resort_prio+0x76>
    7e78:	6841      	ldr	r1, [r0, #4]
    7e7a:	6059      	str	r1, [r3, #4]
    7e7c:	e7ce      	b.n	7e1c <rt_resort_prio+0x24>
    7e7e:	0011      	movs	r1, r2
    7e80:	e7de      	b.n	7e40 <rt_resort_prio+0x48>
    7e82:	46c0      	nop			; (mov r8, r8)
    7e84:	20006084 	.word	0x20006084

00007e88 <rt_put_dly>:
    7e88:	b530      	push	{r4, r5, lr}
    7e8a:	4c17      	ldr	r4, [pc, #92]	; (7ee8 <rt_put_dly+0x60>)
    7e8c:	68e2      	ldr	r2, [r4, #12]
    7e8e:	2a00      	cmp	r2, #0
    7e90:	d023      	beq.n	7eda <rt_put_dly+0x52>
    7e92:	8aa3      	ldrh	r3, [r4, #20]
    7e94:	4299      	cmp	r1, r3
    7e96:	d804      	bhi.n	7ea2 <rt_put_dly+0x1a>
    7e98:	e022      	b.n	7ee0 <rt_put_dly+0x58>
    7e9a:	68d4      	ldr	r4, [r2, #12]
    7e9c:	2c00      	cmp	r4, #0
    7e9e:	d013      	beq.n	7ec8 <rt_put_dly+0x40>
    7ea0:	0022      	movs	r2, r4
    7ea2:	8a94      	ldrh	r4, [r2, #20]
    7ea4:	191b      	adds	r3, r3, r4
    7ea6:	4299      	cmp	r1, r3
    7ea8:	d8f7      	bhi.n	7e9a <rt_put_dly+0x12>
    7eaa:	68d5      	ldr	r5, [r2, #12]
    7eac:	60c5      	str	r5, [r0, #12]
    7eae:	60d0      	str	r0, [r2, #12]
    7eb0:	68c4      	ldr	r4, [r0, #12]
    7eb2:	6102      	str	r2, [r0, #16]
    7eb4:	2c00      	cmp	r4, #0
    7eb6:	d000      	beq.n	7eba <rt_put_dly+0x32>
    7eb8:	6120      	str	r0, [r4, #16]
    7eba:	1a5b      	subs	r3, r3, r1
    7ebc:	b29b      	uxth	r3, r3
    7ebe:	8283      	strh	r3, [r0, #20]
    7ec0:	8a91      	ldrh	r1, [r2, #20]
    7ec2:	1acb      	subs	r3, r1, r3
    7ec4:	8293      	strh	r3, [r2, #20]
    7ec6:	bd30      	pop	{r4, r5, pc}
    7ec8:	b29b      	uxth	r3, r3
    7eca:	2400      	movs	r4, #0
    7ecc:	1acb      	subs	r3, r1, r3
    7ece:	60c4      	str	r4, [r0, #12]
    7ed0:	60d0      	str	r0, [r2, #12]
    7ed2:	6102      	str	r2, [r0, #16]
    7ed4:	8293      	strh	r3, [r2, #20]
    7ed6:	8284      	strh	r4, [r0, #20]
    7ed8:	e7f5      	b.n	7ec6 <rt_put_dly+0x3e>
    7eda:	2300      	movs	r3, #0
    7edc:	0022      	movs	r2, r4
    7ede:	e7f4      	b.n	7eca <rt_put_dly+0x42>
    7ee0:	0015      	movs	r5, r2
    7ee2:	0022      	movs	r2, r4
    7ee4:	e7e2      	b.n	7eac <rt_put_dly+0x24>
    7ee6:	46c0      	nop			; (mov r8, r8)
    7ee8:	2000609c 	.word	0x2000609c

00007eec <rt_dec_dly>:
    7eec:	b5f0      	push	{r4, r5, r6, r7, lr}
    7eee:	464e      	mov	r6, r9
    7ef0:	4657      	mov	r7, sl
    7ef2:	4645      	mov	r5, r8
    7ef4:	b4e0      	push	{r5, r6, r7}
    7ef6:	4e36      	ldr	r6, [pc, #216]	; (7fd0 <rt_dec_dly+0xe4>)
    7ef8:	68f0      	ldr	r0, [r6, #12]
    7efa:	2800      	cmp	r0, #0
    7efc:	d059      	beq.n	7fb2 <rt_dec_dly+0xc6>
    7efe:	8ab3      	ldrh	r3, [r6, #20]
    7f00:	3b01      	subs	r3, #1
    7f02:	b29b      	uxth	r3, r3
    7f04:	82b3      	strh	r3, [r6, #20]
    7f06:	2b00      	cmp	r3, #0
    7f08:	d153      	bne.n	7fb2 <rt_dec_dly+0xc6>
    7f0a:	4b32      	ldr	r3, [pc, #200]	; (7fd4 <rt_dec_dly+0xe8>)
    7f0c:	2500      	movs	r5, #0
    7f0e:	469c      	mov	ip, r3
    7f10:	781f      	ldrb	r7, [r3, #0]
    7f12:	4b31      	ldr	r3, [pc, #196]	; (7fd8 <rt_dec_dly+0xec>)
    7f14:	46e2      	mov	sl, ip
    7f16:	881b      	ldrh	r3, [r3, #0]
    7f18:	3f01      	subs	r7, #1
    7f1a:	4699      	mov	r9, r3
    7f1c:	2301      	movs	r3, #1
    7f1e:	4698      	mov	r8, r3
    7f20:	b2ff      	uxtb	r7, r7
    7f22:	6883      	ldr	r3, [r0, #8]
    7f24:	2b00      	cmp	r3, #0
    7f26:	d007      	beq.n	7f38 <rt_dec_dly+0x4c>
    7f28:	6842      	ldr	r2, [r0, #4]
    7f2a:	605a      	str	r2, [r3, #4]
    7f2c:	6842      	ldr	r2, [r0, #4]
    7f2e:	2a00      	cmp	r2, #0
    7f30:	d001      	beq.n	7f36 <rt_dec_dly+0x4a>
    7f32:	6093      	str	r3, [r2, #8]
    7f34:	6045      	str	r5, [r0, #4]
    7f36:	6085      	str	r5, [r0, #8]
    7f38:	4663      	mov	r3, ip
    7f3a:	685a      	ldr	r2, [r3, #4]
    7f3c:	7884      	ldrb	r4, [r0, #2]
    7f3e:	2a00      	cmp	r2, #0
    7f40:	d03c      	beq.n	7fbc <rt_dec_dly+0xd0>
    7f42:	7893      	ldrb	r3, [r2, #2]
    7f44:	42a3      	cmp	r3, r4
    7f46:	d204      	bcs.n	7f52 <rt_dec_dly+0x66>
    7f48:	e01c      	b.n	7f84 <rt_dec_dly+0x98>
    7f4a:	7899      	ldrb	r1, [r3, #2]
    7f4c:	428c      	cmp	r4, r1
    7f4e:	d81b      	bhi.n	7f88 <rt_dec_dly+0x9c>
    7f50:	001a      	movs	r2, r3
    7f52:	6853      	ldr	r3, [r2, #4]
    7f54:	2b00      	cmp	r3, #0
    7f56:	d1f8      	bne.n	7f4a <rt_dec_dly+0x5e>
    7f58:	6045      	str	r5, [r0, #4]
    7f5a:	6050      	str	r0, [r2, #4]
    7f5c:	2f02      	cmp	r7, #2
    7f5e:	d900      	bls.n	7f62 <rt_dec_dly+0x76>
    7f60:	2200      	movs	r2, #0
    7f62:	7843      	ldrb	r3, [r0, #1]
    7f64:	6082      	str	r2, [r0, #8]
    7f66:	8a82      	ldrh	r2, [r0, #20]
    7f68:	2b04      	cmp	r3, #4
    7f6a:	d017      	beq.n	7f9c <rt_dec_dly+0xb0>
    7f6c:	4643      	mov	r3, r8
    7f6e:	7043      	strb	r3, [r0, #1]
    7f70:	68c3      	ldr	r3, [r0, #12]
    7f72:	2b00      	cmp	r3, #0
    7f74:	d01a      	beq.n	7fac <rt_dec_dly+0xc0>
    7f76:	611e      	str	r6, [r3, #16]
    7f78:	60c5      	str	r5, [r0, #12]
    7f7a:	6105      	str	r5, [r0, #16]
    7f7c:	2a00      	cmp	r2, #0
    7f7e:	d123      	bne.n	7fc8 <rt_dec_dly+0xdc>
    7f80:	0018      	movs	r0, r3
    7f82:	e7ce      	b.n	7f22 <rt_dec_dly+0x36>
    7f84:	0013      	movs	r3, r2
    7f86:	4652      	mov	r2, sl
    7f88:	6043      	str	r3, [r0, #4]
    7f8a:	6050      	str	r0, [r2, #4]
    7f8c:	2f02      	cmp	r7, #2
    7f8e:	d8e7      	bhi.n	7f60 <rt_dec_dly+0x74>
    7f90:	6098      	str	r0, [r3, #8]
    7f92:	7843      	ldrb	r3, [r0, #1]
    7f94:	6082      	str	r2, [r0, #8]
    7f96:	8a82      	ldrh	r2, [r0, #20]
    7f98:	2b04      	cmp	r3, #4
    7f9a:	d1e7      	bne.n	7f6c <rt_dec_dly+0x80>
    7f9c:	8ac3      	ldrh	r3, [r0, #22]
    7f9e:	444b      	add	r3, r9
    7fa0:	8283      	strh	r3, [r0, #20]
    7fa2:	4643      	mov	r3, r8
    7fa4:	7043      	strb	r3, [r0, #1]
    7fa6:	68c3      	ldr	r3, [r0, #12]
    7fa8:	2b00      	cmp	r3, #0
    7faa:	d1e4      	bne.n	7f76 <rt_dec_dly+0x8a>
    7fac:	82b2      	strh	r2, [r6, #20]
    7fae:	60f3      	str	r3, [r6, #12]
    7fb0:	6103      	str	r3, [r0, #16]
    7fb2:	bc1c      	pop	{r2, r3, r4}
    7fb4:	4690      	mov	r8, r2
    7fb6:	4699      	mov	r9, r3
    7fb8:	46a2      	mov	sl, r4
    7fba:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7fbc:	4652      	mov	r2, sl
    7fbe:	6045      	str	r5, [r0, #4]
    7fc0:	6050      	str	r0, [r2, #4]
    7fc2:	2f02      	cmp	r7, #2
    7fc4:	d8cc      	bhi.n	7f60 <rt_dec_dly+0x74>
    7fc6:	e7cc      	b.n	7f62 <rt_dec_dly+0x76>
    7fc8:	82b2      	strh	r2, [r6, #20]
    7fca:	60f3      	str	r3, [r6, #12]
    7fcc:	e7f1      	b.n	7fb2 <rt_dec_dly+0xc6>
    7fce:	46c0      	nop			; (mov r8, r8)
    7fd0:	2000609c 	.word	0x2000609c
    7fd4:	20006084 	.word	0x20006084
    7fd8:	20006080 	.word	0x20006080

00007fdc <rt_rmv_list>:
    7fdc:	6883      	ldr	r3, [r0, #8]
    7fde:	2b00      	cmp	r3, #0
    7fe0:	d006      	beq.n	7ff0 <rt_rmv_list+0x14>
    7fe2:	6842      	ldr	r2, [r0, #4]
    7fe4:	605a      	str	r2, [r3, #4]
    7fe6:	6842      	ldr	r2, [r0, #4]
    7fe8:	2a00      	cmp	r2, #0
    7fea:	d000      	beq.n	7fee <rt_rmv_list+0x12>
    7fec:	6093      	str	r3, [r2, #8]
    7fee:	4770      	bx	lr
    7ff0:	4b04      	ldr	r3, [pc, #16]	; (8004 <rt_rmv_list+0x28>)
    7ff2:	e001      	b.n	7ff8 <rt_rmv_list+0x1c>
    7ff4:	1e13      	subs	r3, r2, #0
    7ff6:	d0fa      	beq.n	7fee <rt_rmv_list+0x12>
    7ff8:	685a      	ldr	r2, [r3, #4]
    7ffa:	4290      	cmp	r0, r2
    7ffc:	d1fa      	bne.n	7ff4 <rt_rmv_list+0x18>
    7ffe:	6842      	ldr	r2, [r0, #4]
    8000:	605a      	str	r2, [r3, #4]
    8002:	e7f4      	b.n	7fee <rt_rmv_list+0x12>
    8004:	20006084 	.word	0x20006084

00008008 <rt_rmv_dly>:
    8008:	6903      	ldr	r3, [r0, #16]
    800a:	b510      	push	{r4, lr}
    800c:	2b00      	cmp	r3, #0
    800e:	d00d      	beq.n	802c <rt_rmv_dly+0x24>
    8010:	68c2      	ldr	r2, [r0, #12]
    8012:	60da      	str	r2, [r3, #12]
    8014:	68c1      	ldr	r1, [r0, #12]
    8016:	2900      	cmp	r1, #0
    8018:	d009      	beq.n	802e <rt_rmv_dly+0x26>
    801a:	8a9c      	ldrh	r4, [r3, #20]
    801c:	8a82      	ldrh	r2, [r0, #20]
    801e:	18a2      	adds	r2, r4, r2
    8020:	829a      	strh	r2, [r3, #20]
    8022:	610b      	str	r3, [r1, #16]
    8024:	2300      	movs	r3, #0
    8026:	60c3      	str	r3, [r0, #12]
    8028:	2300      	movs	r3, #0
    802a:	6103      	str	r3, [r0, #16]
    802c:	bd10      	pop	{r4, pc}
    802e:	8299      	strh	r1, [r3, #20]
    8030:	e7fa      	b.n	8028 <rt_rmv_dly+0x20>
    8032:	46c0      	nop			; (mov r8, r8)

00008034 <rt_psq_enq>:
    8034:	b570      	push	{r4, r5, r6, lr}
    8036:	4c0f      	ldr	r4, [pc, #60]	; (8074 <rt_psq_enq+0x40>)
    8038:	78e5      	ldrb	r5, [r4, #3]
    803a:	f3ef 8310 	mrs	r3, PRIMASK
    803e:	b672      	cpsid	i
    8040:	78a3      	ldrb	r3, [r4, #2]
    8042:	429d      	cmp	r5, r3
    8044:	d907      	bls.n	8056 <rt_psq_enq+0x22>
    8046:	1c5a      	adds	r2, r3, #1
    8048:	7823      	ldrb	r3, [r4, #0]
    804a:	70a2      	strb	r2, [r4, #2]
    804c:	1c5a      	adds	r2, r3, #1
    804e:	4295      	cmp	r5, r2
    8050:	d00d      	beq.n	806e <rt_psq_enq+0x3a>
    8052:	b2d2      	uxtb	r2, r2
    8054:	7022      	strb	r2, [r4, #0]
    8056:	b662      	cpsie	i
    8058:	429d      	cmp	r5, r3
    805a:	d904      	bls.n	8066 <rt_psq_enq+0x32>
    805c:	00db      	lsls	r3, r3, #3
    805e:	18e3      	adds	r3, r4, r3
    8060:	6058      	str	r0, [r3, #4]
    8062:	6099      	str	r1, [r3, #8]
    8064:	bd70      	pop	{r4, r5, r6, pc}
    8066:	2002      	movs	r0, #2
    8068:	f7f9 fd08 	bl	1a7c <os_error>
    806c:	e7fa      	b.n	8064 <rt_psq_enq+0x30>
    806e:	2200      	movs	r2, #0
    8070:	7022      	strb	r2, [r4, #0]
    8072:	e7f0      	b.n	8056 <rt_psq_enq+0x22>
    8074:	20004c58 	.word	0x20004c58

00008078 <rt_evt_wait>:
    8078:	4b10      	ldr	r3, [pc, #64]	; (80bc <rt_evt_wait+0x44>)
    807a:	b570      	push	{r4, r5, r6, lr}
    807c:	681b      	ldr	r3, [r3, #0]
    807e:	000c      	movs	r4, r1
    8080:	2a00      	cmp	r2, #0
    8082:	d00b      	beq.n	809c <rt_evt_wait+0x24>
    8084:	0005      	movs	r5, r0
    8086:	8b1a      	ldrh	r2, [r3, #24]
    8088:	2106      	movs	r1, #6
    808a:	4015      	ands	r5, r2
    808c:	42a8      	cmp	r0, r5
    808e:	d00a      	beq.n	80a6 <rt_evt_wait+0x2e>
    8090:	8358      	strh	r0, [r3, #26]
    8092:	0020      	movs	r0, r4
    8094:	f000 fa94 	bl	85c0 <rt_block>
    8098:	2001      	movs	r0, #1
    809a:	e007      	b.n	80ac <rt_evt_wait+0x34>
    809c:	8b1a      	ldrh	r2, [r3, #24]
    809e:	0011      	movs	r1, r2
    80a0:	4001      	ands	r1, r0
    80a2:	d004      	beq.n	80ae <rt_evt_wait+0x36>
    80a4:	8359      	strh	r1, [r3, #26]
    80a6:	4382      	bics	r2, r0
    80a8:	2002      	movs	r0, #2
    80aa:	831a      	strh	r2, [r3, #24]
    80ac:	bd70      	pop	{r4, r5, r6, pc}
    80ae:	8358      	strh	r0, [r3, #26]
    80b0:	2105      	movs	r1, #5
    80b2:	0020      	movs	r0, r4
    80b4:	f000 fa84 	bl	85c0 <rt_block>
    80b8:	2001      	movs	r0, #1
    80ba:	e7f7      	b.n	80ac <rt_evt_wait+0x34>
    80bc:	200060b8 	.word	0x200060b8

000080c0 <rt_evt_set>:
    80c0:	3901      	subs	r1, #1
    80c2:	4b14      	ldr	r3, [pc, #80]	; (8114 <rt_evt_set+0x54>)
    80c4:	0089      	lsls	r1, r1, #2
    80c6:	b510      	push	{r4, lr}
    80c8:	58cc      	ldr	r4, [r1, r3]
    80ca:	2c00      	cmp	r4, #0
    80cc:	d008      	beq.n	80e0 <rt_evt_set+0x20>
    80ce:	8b23      	ldrh	r3, [r4, #24]
    80d0:	8b62      	ldrh	r2, [r4, #26]
    80d2:	4318      	orrs	r0, r3
    80d4:	7863      	ldrb	r3, [r4, #1]
    80d6:	8320      	strh	r0, [r4, #24]
    80d8:	2b06      	cmp	r3, #6
    80da:	d016      	beq.n	810a <rt_evt_set+0x4a>
    80dc:	2b05      	cmp	r3, #5
    80de:	d000      	beq.n	80e2 <rt_evt_set+0x22>
    80e0:	bd10      	pop	{r4, pc}
    80e2:	0013      	movs	r3, r2
    80e4:	4003      	ands	r3, r0
    80e6:	d0fb      	beq.n	80e0 <rt_evt_set+0x20>
    80e8:	8363      	strh	r3, [r4, #26]
    80ea:	4390      	bics	r0, r2
    80ec:	8320      	strh	r0, [r4, #24]
    80ee:	0020      	movs	r0, r4
    80f0:	f7ff ff8a 	bl	8008 <rt_rmv_dly>
    80f4:	2301      	movs	r3, #1
    80f6:	0020      	movs	r0, r4
    80f8:	7063      	strb	r3, [r4, #1]
    80fa:	8b62      	ldrh	r2, [r4, #26]
    80fc:	2108      	movs	r1, #8
    80fe:	f7ff fa1d 	bl	753c <rt_ret_val2>
    8102:	0020      	movs	r0, r4
    8104:	f000 fa36 	bl	8574 <rt_dispatch>
    8108:	e7ea      	b.n	80e0 <rt_evt_set+0x20>
    810a:	0013      	movs	r3, r2
    810c:	4003      	ands	r3, r0
    810e:	429a      	cmp	r2, r3
    8110:	d1e6      	bne.n	80e0 <rt_evt_set+0x20>
    8112:	e7ea      	b.n	80ea <rt_evt_set+0x2a>
    8114:	20004cdc 	.word	0x20004cdc

00008118 <rt_evt_clr>:
    8118:	3901      	subs	r1, #1
    811a:	4b04      	ldr	r3, [pc, #16]	; (812c <rt_evt_clr+0x14>)
    811c:	0089      	lsls	r1, r1, #2
    811e:	58cb      	ldr	r3, [r1, r3]
    8120:	2b00      	cmp	r3, #0
    8122:	d002      	beq.n	812a <rt_evt_clr+0x12>
    8124:	8b1a      	ldrh	r2, [r3, #24]
    8126:	4382      	bics	r2, r0
    8128:	831a      	strh	r2, [r3, #24]
    812a:	4770      	bx	lr
    812c:	20004cdc 	.word	0x20004cdc

00008130 <isr_evt_set>:
    8130:	3901      	subs	r1, #1
    8132:	4b06      	ldr	r3, [pc, #24]	; (814c <isr_evt_set+0x1c>)
    8134:	0089      	lsls	r1, r1, #2
    8136:	58cb      	ldr	r3, [r1, r3]
    8138:	b510      	push	{r4, lr}
    813a:	2b00      	cmp	r3, #0
    813c:	d005      	beq.n	814a <isr_evt_set+0x1a>
    813e:	0001      	movs	r1, r0
    8140:	0018      	movs	r0, r3
    8142:	f7ff ff77 	bl	8034 <rt_psq_enq>
    8146:	f000 f959 	bl	83fc <rt_psh_req>
    814a:	bd10      	pop	{r4, pc}
    814c:	20004cdc 	.word	0x20004cdc

00008150 <rt_evt_get>:
    8150:	4b01      	ldr	r3, [pc, #4]	; (8158 <rt_evt_get+0x8>)
    8152:	681b      	ldr	r3, [r3, #0]
    8154:	8b58      	ldrh	r0, [r3, #26]
    8156:	4770      	bx	lr
    8158:	200060b8 	.word	0x200060b8

0000815c <rt_evt_psh>:
    815c:	b510      	push	{r4, lr}
    815e:	8b03      	ldrh	r3, [r0, #24]
    8160:	0004      	movs	r4, r0
    8162:	4319      	orrs	r1, r3
    8164:	7843      	ldrb	r3, [r0, #1]
    8166:	8301      	strh	r1, [r0, #24]
    8168:	8b42      	ldrh	r2, [r0, #26]
    816a:	2b06      	cmp	r3, #6
    816c:	d017      	beq.n	819e <rt_evt_psh+0x42>
    816e:	2b05      	cmp	r3, #5
    8170:	d000      	beq.n	8174 <rt_evt_psh+0x18>
    8172:	bd10      	pop	{r4, pc}
    8174:	0013      	movs	r3, r2
    8176:	400b      	ands	r3, r1
    8178:	d0fb      	beq.n	8172 <rt_evt_psh+0x16>
    817a:	8343      	strh	r3, [r0, #26]
    817c:	4391      	bics	r1, r2
    817e:	8321      	strh	r1, [r4, #24]
    8180:	0020      	movs	r0, r4
    8182:	f7ff ff41 	bl	8008 <rt_rmv_dly>
    8186:	2301      	movs	r3, #1
    8188:	0020      	movs	r0, r4
    818a:	7063      	strb	r3, [r4, #1]
    818c:	8b62      	ldrh	r2, [r4, #26]
    818e:	2108      	movs	r1, #8
    8190:	f7ff f9d4 	bl	753c <rt_ret_val2>
    8194:	0021      	movs	r1, r4
    8196:	4804      	ldr	r0, [pc, #16]	; (81a8 <rt_evt_psh+0x4c>)
    8198:	f7ff fdd8 	bl	7d4c <rt_put_prio>
    819c:	e7e9      	b.n	8172 <rt_evt_psh+0x16>
    819e:	0013      	movs	r3, r2
    81a0:	400b      	ands	r3, r1
    81a2:	429a      	cmp	r2, r3
    81a4:	d1e5      	bne.n	8172 <rt_evt_psh+0x16>
    81a6:	e7e9      	b.n	817c <rt_evt_psh+0x20>
    81a8:	20006084 	.word	0x20006084

000081ac <rt_suspend>:
    81ac:	4b1c      	ldr	r3, [pc, #112]	; (8220 <rt_suspend+0x74>)
    81ae:	b510      	push	{r4, lr}
    81b0:	681b      	ldr	r3, [r3, #0]
    81b2:	2b00      	cmp	r3, #0
    81b4:	db20      	blt.n	81f8 <rt_suspend+0x4c>
    81b6:	491b      	ldr	r1, [pc, #108]	; (8224 <rt_suspend+0x78>)
    81b8:	095a      	lsrs	r2, r3, #5
    81ba:	468c      	mov	ip, r1
    81bc:	211f      	movs	r1, #31
    81be:	400b      	ands	r3, r1
    81c0:	391e      	subs	r1, #30
    81c2:	0008      	movs	r0, r1
    81c4:	4098      	lsls	r0, r3
    81c6:	0092      	lsls	r2, r2, #2
    81c8:	4462      	add	r2, ip
    81ca:	6010      	str	r0, [r2, #0]
    81cc:	4816      	ldr	r0, [pc, #88]	; (8228 <rt_suspend+0x7c>)
    81ce:	4a17      	ldr	r2, [pc, #92]	; (822c <rt_suspend+0x80>)
    81d0:	7001      	strb	r1, [r0, #0]
    81d2:	6813      	ldr	r3, [r2, #0]
    81d4:	0f1b      	lsrs	r3, r3, #28
    81d6:	400b      	ands	r3, r1
    81d8:	7043      	strb	r3, [r0, #1]
    81da:	06db      	lsls	r3, r3, #27
    81dc:	6013      	str	r3, [r2, #0]
    81de:	4b14      	ldr	r3, [pc, #80]	; (8230 <rt_suspend+0x84>)
    81e0:	68da      	ldr	r2, [r3, #12]
    81e2:	2a00      	cmp	r2, #0
    81e4:	d019      	beq.n	821a <rt_suspend+0x6e>
    81e6:	8a9c      	ldrh	r4, [r3, #20]
    81e8:	f7fe f9e6 	bl	65b8 <sysUserTimerWakeupTime>
    81ec:	0003      	movs	r3, r0
    81ee:	0020      	movs	r0, r4
    81f0:	429c      	cmp	r4, r3
    81f2:	d900      	bls.n	81f6 <rt_suspend+0x4a>
    81f4:	0018      	movs	r0, r3
    81f6:	bd10      	pop	{r4, pc}
    81f8:	2005      	movs	r0, #5
    81fa:	4b0e      	ldr	r3, [pc, #56]	; (8234 <rt_suspend+0x88>)
    81fc:	490a      	ldr	r1, [pc, #40]	; (8228 <rt_suspend+0x7c>)
    81fe:	6018      	str	r0, [r3, #0]
    8200:	2301      	movs	r3, #1
    8202:	4a0a      	ldr	r2, [pc, #40]	; (822c <rt_suspend+0x80>)
    8204:	700b      	strb	r3, [r1, #0]
    8206:	6813      	ldr	r3, [r2, #0]
    8208:	0e9b      	lsrs	r3, r3, #26
    820a:	4003      	ands	r3, r0
    820c:	704b      	strb	r3, [r1, #1]
    820e:	065b      	lsls	r3, r3, #25
    8210:	6013      	str	r3, [r2, #0]
    8212:	4b07      	ldr	r3, [pc, #28]	; (8230 <rt_suspend+0x84>)
    8214:	68da      	ldr	r2, [r3, #12]
    8216:	2a00      	cmp	r2, #0
    8218:	d1e5      	bne.n	81e6 <rt_suspend+0x3a>
    821a:	4c07      	ldr	r4, [pc, #28]	; (8238 <rt_suspend+0x8c>)
    821c:	e7e4      	b.n	81e8 <rt_suspend+0x3c>
    821e:	46c0      	nop			; (mov r8, r8)
    8220:	200060b4 	.word	0x200060b4
    8224:	e000e180 	.word	0xe000e180
    8228:	2000603d 	.word	0x2000603d
    822c:	e000ed04 	.word	0xe000ed04
    8230:	2000609c 	.word	0x2000609c
    8234:	e000e010 	.word	0xe000e010
    8238:	0000ffff 	.word	0x0000ffff

0000823c <rt_resume>:
    823c:	b5f0      	push	{r4, r5, r6, r7, lr}
    823e:	4647      	mov	r7, r8
    8240:	4b32      	ldr	r3, [pc, #200]	; (830c <rt_resume+0xd0>)
    8242:	b480      	push	{r7}
    8244:	0007      	movs	r7, r0
    8246:	6818      	ldr	r0, [r3, #0]
    8248:	2301      	movs	r3, #1
    824a:	7043      	strb	r3, [r0, #1]
    824c:	4698      	mov	r8, r3
    824e:	f7ff fdb7 	bl	7dc0 <rt_put_rdy_first>
    8252:	2200      	movs	r2, #0
    8254:	4b2e      	ldr	r3, [pc, #184]	; (8310 <rt_resume+0xd4>)
    8256:	4e2f      	ldr	r6, [pc, #188]	; (8314 <rt_resume+0xd8>)
    8258:	601a      	str	r2, [r3, #0]
    825a:	68f3      	ldr	r3, [r6, #12]
    825c:	2b00      	cmp	r3, #0
    825e:	d04f      	beq.n	8300 <rt_resume+0xc4>
    8260:	8ab3      	ldrh	r3, [r6, #20]
    8262:	429f      	cmp	r7, r3
    8264:	d336      	bcc.n	82d4 <rt_resume+0x98>
    8266:	4d2c      	ldr	r5, [pc, #176]	; (8318 <rt_resume+0xdc>)
    8268:	1afc      	subs	r4, r7, r3
    826a:	682a      	ldr	r2, [r5, #0]
    826c:	4694      	mov	ip, r2
    826e:	4463      	add	r3, ip
    8270:	602b      	str	r3, [r5, #0]
    8272:	4643      	mov	r3, r8
    8274:	82b3      	strh	r3, [r6, #20]
    8276:	e006      	b.n	8286 <rt_resume+0x4a>
    8278:	682b      	ldr	r3, [r5, #0]
    827a:	3c01      	subs	r4, #1
    827c:	3301      	adds	r3, #1
    827e:	602b      	str	r3, [r5, #0]
    8280:	68f3      	ldr	r3, [r6, #12]
    8282:	2b00      	cmp	r3, #0
    8284:	d003      	beq.n	828e <rt_resume+0x52>
    8286:	f7ff fe31 	bl	7eec <rt_dec_dly>
    828a:	2c00      	cmp	r4, #0
    828c:	d1f4      	bne.n	8278 <rt_resume+0x3c>
    828e:	0038      	movs	r0, r7
    8290:	f7fe f99e 	bl	65d0 <sysUserTimerUpdate>
    8294:	4821      	ldr	r0, [pc, #132]	; (831c <rt_resume+0xe0>)
    8296:	f7ff fd7f 	bl	7d98 <rt_get_first>
    829a:	f000 f963 	bl	8564 <rt_switch_req>
    829e:	4b20      	ldr	r3, [pc, #128]	; (8320 <rt_resume+0xe4>)
    82a0:	681b      	ldr	r3, [r3, #0]
    82a2:	2b00      	cmp	r3, #0
    82a4:	db1d      	blt.n	82e2 <rt_resume+0xa6>
    82a6:	491f      	ldr	r1, [pc, #124]	; (8324 <rt_resume+0xe8>)
    82a8:	095a      	lsrs	r2, r3, #5
    82aa:	468c      	mov	ip, r1
    82ac:	211f      	movs	r1, #31
    82ae:	400b      	ands	r3, r1
    82b0:	391e      	subs	r1, #30
    82b2:	4099      	lsls	r1, r3
    82b4:	0092      	lsls	r2, r2, #2
    82b6:	4462      	add	r2, ip
    82b8:	6011      	str	r1, [r2, #0]
    82ba:	2100      	movs	r1, #0
    82bc:	4a1a      	ldr	r2, [pc, #104]	; (8328 <rt_resume+0xec>)
    82be:	7011      	strb	r1, [r2, #0]
    82c0:	7890      	ldrb	r0, [r2, #2]
    82c2:	7853      	ldrb	r3, [r2, #1]
    82c4:	4303      	orrs	r3, r0
    82c6:	4819      	ldr	r0, [pc, #100]	; (832c <rt_resume+0xf0>)
    82c8:	071b      	lsls	r3, r3, #28
    82ca:	6003      	str	r3, [r0, #0]
    82cc:	7091      	strb	r1, [r2, #2]
    82ce:	bc04      	pop	{r2}
    82d0:	4690      	mov	r8, r2
    82d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    82d4:	4910      	ldr	r1, [pc, #64]	; (8318 <rt_resume+0xdc>)
    82d6:	1bdb      	subs	r3, r3, r7
    82d8:	680a      	ldr	r2, [r1, #0]
    82da:	82b3      	strh	r3, [r6, #20]
    82dc:	19d2      	adds	r2, r2, r7
    82de:	600a      	str	r2, [r1, #0]
    82e0:	e7d5      	b.n	828e <rt_resume+0x52>
    82e2:	2207      	movs	r2, #7
    82e4:	2000      	movs	r0, #0
    82e6:	4910      	ldr	r1, [pc, #64]	; (8328 <rt_resume+0xec>)
    82e8:	4b11      	ldr	r3, [pc, #68]	; (8330 <rt_resume+0xf4>)
    82ea:	601a      	str	r2, [r3, #0]
    82ec:	7008      	strb	r0, [r1, #0]
    82ee:	788b      	ldrb	r3, [r1, #2]
    82f0:	784a      	ldrb	r2, [r1, #1]
    82f2:	009b      	lsls	r3, r3, #2
    82f4:	4313      	orrs	r3, r2
    82f6:	4a0d      	ldr	r2, [pc, #52]	; (832c <rt_resume+0xf0>)
    82f8:	069b      	lsls	r3, r3, #26
    82fa:	6013      	str	r3, [r2, #0]
    82fc:	7088      	strb	r0, [r1, #2]
    82fe:	e7e6      	b.n	82ce <rt_resume+0x92>
    8300:	4a05      	ldr	r2, [pc, #20]	; (8318 <rt_resume+0xdc>)
    8302:	6813      	ldr	r3, [r2, #0]
    8304:	19db      	adds	r3, r3, r7
    8306:	6013      	str	r3, [r2, #0]
    8308:	e7c1      	b.n	828e <rt_resume+0x52>
    830a:	46c0      	nop			; (mov r8, r8)
    830c:	200060b8 	.word	0x200060b8
    8310:	200060f4 	.word	0x200060f4
    8314:	2000609c 	.word	0x2000609c
    8318:	20006080 	.word	0x20006080
    831c:	20006084 	.word	0x20006084
    8320:	200060b4 	.word	0x200060b4
    8324:	e000e100 	.word	0xe000e100
    8328:	2000603d 	.word	0x2000603d
    832c:	e000ed04 	.word	0xe000ed04
    8330:	e000e010 	.word	0xe000e010

00008334 <rt_tsk_lock>:
    8334:	4b13      	ldr	r3, [pc, #76]	; (8384 <rt_tsk_lock+0x50>)
    8336:	681b      	ldr	r3, [r3, #0]
    8338:	2b00      	cmp	r3, #0
    833a:	db14      	blt.n	8366 <rt_tsk_lock+0x32>
    833c:	4912      	ldr	r1, [pc, #72]	; (8388 <rt_tsk_lock+0x54>)
    833e:	095a      	lsrs	r2, r3, #5
    8340:	468c      	mov	ip, r1
    8342:	211f      	movs	r1, #31
    8344:	400b      	ands	r3, r1
    8346:	391e      	subs	r1, #30
    8348:	0008      	movs	r0, r1
    834a:	4098      	lsls	r0, r3
    834c:	0092      	lsls	r2, r2, #2
    834e:	4462      	add	r2, ip
    8350:	6010      	str	r0, [r2, #0]
    8352:	480e      	ldr	r0, [pc, #56]	; (838c <rt_tsk_lock+0x58>)
    8354:	4a0e      	ldr	r2, [pc, #56]	; (8390 <rt_tsk_lock+0x5c>)
    8356:	7001      	strb	r1, [r0, #0]
    8358:	6813      	ldr	r3, [r2, #0]
    835a:	0f1b      	lsrs	r3, r3, #28
    835c:	400b      	ands	r3, r1
    835e:	7043      	strb	r3, [r0, #1]
    8360:	06db      	lsls	r3, r3, #27
    8362:	6013      	str	r3, [r2, #0]
    8364:	4770      	bx	lr
    8366:	2005      	movs	r0, #5
    8368:	4b0a      	ldr	r3, [pc, #40]	; (8394 <rt_tsk_lock+0x60>)
    836a:	4908      	ldr	r1, [pc, #32]	; (838c <rt_tsk_lock+0x58>)
    836c:	6018      	str	r0, [r3, #0]
    836e:	2301      	movs	r3, #1
    8370:	4a07      	ldr	r2, [pc, #28]	; (8390 <rt_tsk_lock+0x5c>)
    8372:	700b      	strb	r3, [r1, #0]
    8374:	6813      	ldr	r3, [r2, #0]
    8376:	0e9b      	lsrs	r3, r3, #26
    8378:	4003      	ands	r3, r0
    837a:	704b      	strb	r3, [r1, #1]
    837c:	065b      	lsls	r3, r3, #25
    837e:	6013      	str	r3, [r2, #0]
    8380:	e7f0      	b.n	8364 <rt_tsk_lock+0x30>
    8382:	46c0      	nop			; (mov r8, r8)
    8384:	200060b4 	.word	0x200060b4
    8388:	e000e180 	.word	0xe000e180
    838c:	2000603d 	.word	0x2000603d
    8390:	e000ed04 	.word	0xe000ed04
    8394:	e000e010 	.word	0xe000e010

00008398 <rt_tsk_unlock>:
    8398:	4b13      	ldr	r3, [pc, #76]	; (83e8 <rt_tsk_unlock+0x50>)
    839a:	681b      	ldr	r3, [r3, #0]
    839c:	2b00      	cmp	r3, #0
    839e:	db14      	blt.n	83ca <rt_tsk_unlock+0x32>
    83a0:	4912      	ldr	r1, [pc, #72]	; (83ec <rt_tsk_unlock+0x54>)
    83a2:	095a      	lsrs	r2, r3, #5
    83a4:	468c      	mov	ip, r1
    83a6:	211f      	movs	r1, #31
    83a8:	400b      	ands	r3, r1
    83aa:	391e      	subs	r1, #30
    83ac:	4099      	lsls	r1, r3
    83ae:	0092      	lsls	r2, r2, #2
    83b0:	4462      	add	r2, ip
    83b2:	6011      	str	r1, [r2, #0]
    83b4:	2100      	movs	r1, #0
    83b6:	4a0e      	ldr	r2, [pc, #56]	; (83f0 <rt_tsk_unlock+0x58>)
    83b8:	7011      	strb	r1, [r2, #0]
    83ba:	7890      	ldrb	r0, [r2, #2]
    83bc:	7853      	ldrb	r3, [r2, #1]
    83be:	4303      	orrs	r3, r0
    83c0:	480c      	ldr	r0, [pc, #48]	; (83f4 <rt_tsk_unlock+0x5c>)
    83c2:	071b      	lsls	r3, r3, #28
    83c4:	6003      	str	r3, [r0, #0]
    83c6:	7091      	strb	r1, [r2, #2]
    83c8:	4770      	bx	lr
    83ca:	2207      	movs	r2, #7
    83cc:	2000      	movs	r0, #0
    83ce:	4908      	ldr	r1, [pc, #32]	; (83f0 <rt_tsk_unlock+0x58>)
    83d0:	4b09      	ldr	r3, [pc, #36]	; (83f8 <rt_tsk_unlock+0x60>)
    83d2:	601a      	str	r2, [r3, #0]
    83d4:	7008      	strb	r0, [r1, #0]
    83d6:	788b      	ldrb	r3, [r1, #2]
    83d8:	784a      	ldrb	r2, [r1, #1]
    83da:	009b      	lsls	r3, r3, #2
    83dc:	4313      	orrs	r3, r2
    83de:	4a05      	ldr	r2, [pc, #20]	; (83f4 <rt_tsk_unlock+0x5c>)
    83e0:	069b      	lsls	r3, r3, #26
    83e2:	6013      	str	r3, [r2, #0]
    83e4:	7088      	strb	r0, [r1, #2]
    83e6:	e7ef      	b.n	83c8 <rt_tsk_unlock+0x30>
    83e8:	200060b4 	.word	0x200060b4
    83ec:	e000e100 	.word	0xe000e100
    83f0:	2000603d 	.word	0x2000603d
    83f4:	e000ed04 	.word	0xe000ed04
    83f8:	e000e010 	.word	0xe000e010

000083fc <rt_psh_req>:
    83fc:	4b05      	ldr	r3, [pc, #20]	; (8414 <rt_psh_req+0x18>)
    83fe:	781a      	ldrb	r2, [r3, #0]
    8400:	2a00      	cmp	r2, #0
    8402:	d002      	beq.n	840a <rt_psh_req+0xe>
    8404:	2201      	movs	r2, #1
    8406:	709a      	strb	r2, [r3, #2]
    8408:	4770      	bx	lr
    840a:	2280      	movs	r2, #128	; 0x80
    840c:	4b02      	ldr	r3, [pc, #8]	; (8418 <rt_psh_req+0x1c>)
    840e:	0552      	lsls	r2, r2, #21
    8410:	601a      	str	r2, [r3, #0]
    8412:	e7f9      	b.n	8408 <rt_psh_req+0xc>
    8414:	2000603d 	.word	0x2000603d
    8418:	e000ed04 	.word	0xe000ed04

0000841c <rt_pop_req>:
    841c:	4b1c      	ldr	r3, [pc, #112]	; (8490 <rt_pop_req+0x74>)
    841e:	b570      	push	{r4, r5, r6, lr}
    8420:	6818      	ldr	r0, [r3, #0]
    8422:	2301      	movs	r3, #1
    8424:	7043      	strb	r3, [r0, #1]
    8426:	f7ff fccb 	bl	7dc0 <rt_put_rdy_first>
    842a:	4d1a      	ldr	r5, [pc, #104]	; (8494 <rt_pop_req+0x78>)
    842c:	78ab      	ldrb	r3, [r5, #2]
    842e:	786c      	ldrb	r4, [r5, #1]
    8430:	2b00      	cmp	r3, #0
    8432:	d112      	bne.n	845a <rt_pop_req+0x3e>
    8434:	e024      	b.n	8480 <rt_pop_req+0x64>
    8436:	2a01      	cmp	r2, #1
    8438:	d01e      	beq.n	8478 <rt_pop_req+0x5c>
    843a:	f7ff fb13 	bl	7a64 <rt_sem_psh>
    843e:	78eb      	ldrb	r3, [r5, #3]
    8440:	3401      	adds	r4, #1
    8442:	429c      	cmp	r4, r3
    8444:	d016      	beq.n	8474 <rt_pop_req+0x58>
    8446:	f3ef 8310 	mrs	r3, PRIMASK
    844a:	b672      	cpsid	i
    844c:	78ab      	ldrb	r3, [r5, #2]
    844e:	3b01      	subs	r3, #1
    8450:	b2db      	uxtb	r3, r3
    8452:	70ab      	strb	r3, [r5, #2]
    8454:	b662      	cpsie	i
    8456:	2b00      	cmp	r3, #0
    8458:	d012      	beq.n	8480 <rt_pop_req+0x64>
    845a:	00e3      	lsls	r3, r4, #3
    845c:	18eb      	adds	r3, r5, r3
    845e:	6858      	ldr	r0, [r3, #4]
    8460:	7802      	ldrb	r2, [r0, #0]
    8462:	2a00      	cmp	r2, #0
    8464:	d1e7      	bne.n	8436 <rt_pop_req+0x1a>
    8466:	8919      	ldrh	r1, [r3, #8]
    8468:	f7ff fe78 	bl	815c <rt_evt_psh>
    846c:	78eb      	ldrb	r3, [r5, #3]
    846e:	3401      	adds	r4, #1
    8470:	429c      	cmp	r4, r3
    8472:	d1e8      	bne.n	8446 <rt_pop_req+0x2a>
    8474:	2400      	movs	r4, #0
    8476:	e7e6      	b.n	8446 <rt_pop_req+0x2a>
    8478:	6899      	ldr	r1, [r3, #8]
    847a:	f7ff fbf9 	bl	7c70 <rt_mbx_psh>
    847e:	e7de      	b.n	843e <rt_pop_req+0x22>
    8480:	706c      	strb	r4, [r5, #1]
    8482:	4805      	ldr	r0, [pc, #20]	; (8498 <rt_pop_req+0x7c>)
    8484:	f7ff fc88 	bl	7d98 <rt_get_first>
    8488:	f000 f86c 	bl	8564 <rt_switch_req>
    848c:	bd70      	pop	{r4, r5, r6, pc}
    848e:	46c0      	nop			; (mov r8, r8)
    8490:	200060b8 	.word	0x200060b8
    8494:	20004c58 	.word	0x20004c58
    8498:	20006084 	.word	0x20006084

0000849c <os_tick_init>:
    849c:	4b09      	ldr	r3, [pc, #36]	; (84c4 <os_tick_init+0x28>)
    849e:	21ff      	movs	r1, #255	; 0xff
    84a0:	681a      	ldr	r2, [r3, #0]
    84a2:	4b09      	ldr	r3, [pc, #36]	; (84c8 <os_tick_init+0x2c>)
    84a4:	2001      	movs	r0, #1
    84a6:	601a      	str	r2, [r3, #0]
    84a8:	2200      	movs	r2, #0
    84aa:	4b08      	ldr	r3, [pc, #32]	; (84cc <os_tick_init+0x30>)
    84ac:	0609      	lsls	r1, r1, #24
    84ae:	601a      	str	r2, [r3, #0]
    84b0:	4b07      	ldr	r3, [pc, #28]	; (84d0 <os_tick_init+0x34>)
    84b2:	3207      	adds	r2, #7
    84b4:	601a      	str	r2, [r3, #0]
    84b6:	4a07      	ldr	r2, [pc, #28]	; (84d4 <os_tick_init+0x38>)
    84b8:	4240      	negs	r0, r0
    84ba:	6813      	ldr	r3, [r2, #0]
    84bc:	430b      	orrs	r3, r1
    84be:	6013      	str	r3, [r2, #0]
    84c0:	4770      	bx	lr
    84c2:	46c0      	nop			; (mov r8, r8)
    84c4:	00008c58 	.word	0x00008c58
    84c8:	e000e014 	.word	0xe000e014
    84cc:	e000e018 	.word	0xe000e018
    84d0:	e000e010 	.word	0xe000e010
    84d4:	e000ed20 	.word	0xe000ed20

000084d8 <os_tick_val>:
    84d8:	4b02      	ldr	r3, [pc, #8]	; (84e4 <os_tick_val+0xc>)
    84da:	6818      	ldr	r0, [r3, #0]
    84dc:	4b02      	ldr	r3, [pc, #8]	; (84e8 <os_tick_val+0x10>)
    84de:	681b      	ldr	r3, [r3, #0]
    84e0:	1a18      	subs	r0, r3, r0
    84e2:	4770      	bx	lr
    84e4:	e000e018 	.word	0xe000e018
    84e8:	00008c58 	.word	0x00008c58

000084ec <os_tick_ovf>:
    84ec:	4b02      	ldr	r3, [pc, #8]	; (84f8 <os_tick_ovf+0xc>)
    84ee:	6818      	ldr	r0, [r3, #0]
    84f0:	0140      	lsls	r0, r0, #5
    84f2:	0fc0      	lsrs	r0, r0, #31
    84f4:	4770      	bx	lr
    84f6:	46c0      	nop			; (mov r8, r8)
    84f8:	e000ed04 	.word	0xe000ed04

000084fc <os_tick_irqack>:
    84fc:	4770      	bx	lr
    84fe:	46c0      	nop			; (mov r8, r8)

00008500 <rt_systick>:
    8500:	4b0b      	ldr	r3, [pc, #44]	; (8530 <rt_systick+0x30>)
    8502:	b510      	push	{r4, lr}
    8504:	6818      	ldr	r0, [r3, #0]
    8506:	2301      	movs	r3, #1
    8508:	7043      	strb	r3, [r0, #1]
    850a:	f7ff fc59 	bl	7dc0 <rt_put_rdy_first>
    850e:	f000 faeb 	bl	8ae8 <rt_chk_robin>
    8512:	4a08      	ldr	r2, [pc, #32]	; (8534 <rt_systick+0x34>)
    8514:	6813      	ldr	r3, [r2, #0]
    8516:	3301      	adds	r3, #1
    8518:	6013      	str	r3, [r2, #0]
    851a:	f7ff fce7 	bl	7eec <rt_dec_dly>
    851e:	f7fd ffed 	bl	64fc <sysTimerTick>
    8522:	4805      	ldr	r0, [pc, #20]	; (8538 <rt_systick+0x38>)
    8524:	f7ff fc38 	bl	7d98 <rt_get_first>
    8528:	f000 f81c 	bl	8564 <rt_switch_req>
    852c:	bd10      	pop	{r4, pc}
    852e:	46c0      	nop			; (mov r8, r8)
    8530:	200060b8 	.word	0x200060b8
    8534:	20006080 	.word	0x20006080
    8538:	20006084 	.word	0x20006084

0000853c <rt_stk_check>:
    853c:	4b07      	ldr	r3, [pc, #28]	; (855c <rt_stk_check+0x20>)
    853e:	b510      	push	{r4, lr}
    8540:	681b      	ldr	r3, [r3, #0]
    8542:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    8544:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    8546:	429a      	cmp	r2, r3
    8548:	d803      	bhi.n	8552 <rt_stk_check+0x16>
    854a:	4b05      	ldr	r3, [pc, #20]	; (8560 <rt_stk_check+0x24>)
    854c:	6812      	ldr	r2, [r2, #0]
    854e:	429a      	cmp	r2, r3
    8550:	d002      	beq.n	8558 <rt_stk_check+0x1c>
    8552:	2001      	movs	r0, #1
    8554:	f7f9 fa92 	bl	1a7c <os_error>
    8558:	bd10      	pop	{r4, pc}
    855a:	46c0      	nop			; (mov r8, r8)
    855c:	200060b8 	.word	0x200060b8
    8560:	e25a2ea5 	.word	0xe25a2ea5

00008564 <rt_switch_req>:
    8564:	4b02      	ldr	r3, [pc, #8]	; (8570 <rt_switch_req+0xc>)
    8566:	6058      	str	r0, [r3, #4]
    8568:	2302      	movs	r3, #2
    856a:	7043      	strb	r3, [r0, #1]
    856c:	4770      	bx	lr
    856e:	46c0      	nop			; (mov r8, r8)
    8570:	200060b8 	.word	0x200060b8

00008574 <rt_dispatch>:
    8574:	b570      	push	{r4, r5, r6, lr}
    8576:	1e04      	subs	r4, r0, #0
    8578:	d015      	beq.n	85a6 <rt_dispatch+0x32>
    857a:	4d0f      	ldr	r5, [pc, #60]	; (85b8 <rt_dispatch+0x44>)
    857c:	78a2      	ldrb	r2, [r4, #2]
    857e:	6828      	ldr	r0, [r5, #0]
    8580:	7883      	ldrb	r3, [r0, #2]
    8582:	429a      	cmp	r2, r3
    8584:	d806      	bhi.n	8594 <rt_dispatch+0x20>
    8586:	2301      	movs	r3, #1
    8588:	0021      	movs	r1, r4
    858a:	7063      	strb	r3, [r4, #1]
    858c:	480b      	ldr	r0, [pc, #44]	; (85bc <rt_dispatch+0x48>)
    858e:	f7ff fbdd 	bl	7d4c <rt_put_prio>
    8592:	bd70      	pop	{r4, r5, r6, pc}
    8594:	f7ff fc14 	bl	7dc0 <rt_put_rdy_first>
    8598:	2301      	movs	r3, #1
    859a:	682a      	ldr	r2, [r5, #0]
    859c:	7053      	strb	r3, [r2, #1]
    859e:	3301      	adds	r3, #1
    85a0:	606c      	str	r4, [r5, #4]
    85a2:	7063      	strb	r3, [r4, #1]
    85a4:	e7f5      	b.n	8592 <rt_dispatch+0x1e>
    85a6:	4805      	ldr	r0, [pc, #20]	; (85bc <rt_dispatch+0x48>)
    85a8:	f7ff fbf6 	bl	7d98 <rt_get_first>
    85ac:	4b02      	ldr	r3, [pc, #8]	; (85b8 <rt_dispatch+0x44>)
    85ae:	6058      	str	r0, [r3, #4]
    85b0:	2302      	movs	r3, #2
    85b2:	7043      	strb	r3, [r0, #1]
    85b4:	e7ed      	b.n	8592 <rt_dispatch+0x1e>
    85b6:	46c0      	nop			; (mov r8, r8)
    85b8:	200060b8 	.word	0x200060b8
    85bc:	20006084 	.word	0x20006084

000085c0 <rt_block>:
    85c0:	b570      	push	{r4, r5, r6, lr}
    85c2:	000d      	movs	r5, r1
    85c4:	2800      	cmp	r0, #0
    85c6:	d00f      	beq.n	85e8 <rt_block+0x28>
    85c8:	4b08      	ldr	r3, [pc, #32]	; (85ec <rt_block+0x2c>)
    85ca:	4c09      	ldr	r4, [pc, #36]	; (85f0 <rt_block+0x30>)
    85cc:	4298      	cmp	r0, r3
    85ce:	d003      	beq.n	85d8 <rt_block+0x18>
    85d0:	0001      	movs	r1, r0
    85d2:	6820      	ldr	r0, [r4, #0]
    85d4:	f7ff fc58 	bl	7e88 <rt_put_dly>
    85d8:	6823      	ldr	r3, [r4, #0]
    85da:	4806      	ldr	r0, [pc, #24]	; (85f4 <rt_block+0x34>)
    85dc:	705d      	strb	r5, [r3, #1]
    85de:	f7ff fbdb 	bl	7d98 <rt_get_first>
    85e2:	2302      	movs	r3, #2
    85e4:	6060      	str	r0, [r4, #4]
    85e6:	7043      	strb	r3, [r0, #1]
    85e8:	bd70      	pop	{r4, r5, r6, pc}
    85ea:	46c0      	nop			; (mov r8, r8)
    85ec:	0000ffff 	.word	0x0000ffff
    85f0:	200060b8 	.word	0x200060b8
    85f4:	20006084 	.word	0x20006084

000085f8 <rt_tsk_pass>:
    85f8:	b570      	push	{r4, r5, r6, lr}
    85fa:	f7ff fbeb 	bl	7dd4 <rt_get_same_rdy_prio>
    85fe:	1e04      	subs	r4, r0, #0
    8600:	d00a      	beq.n	8618 <rt_tsk_pass+0x20>
    8602:	4d06      	ldr	r5, [pc, #24]	; (861c <rt_tsk_pass+0x24>)
    8604:	4806      	ldr	r0, [pc, #24]	; (8620 <rt_tsk_pass+0x28>)
    8606:	6829      	ldr	r1, [r5, #0]
    8608:	f7ff fba0 	bl	7d4c <rt_put_prio>
    860c:	2301      	movs	r3, #1
    860e:	682a      	ldr	r2, [r5, #0]
    8610:	7053      	strb	r3, [r2, #1]
    8612:	3301      	adds	r3, #1
    8614:	606c      	str	r4, [r5, #4]
    8616:	7063      	strb	r3, [r4, #1]
    8618:	bd70      	pop	{r4, r5, r6, pc}
    861a:	46c0      	nop			; (mov r8, r8)
    861c:	200060b8 	.word	0x200060b8
    8620:	20006084 	.word	0x20006084

00008624 <rt_tsk_self>:
    8624:	4b03      	ldr	r3, [pc, #12]	; (8634 <rt_tsk_self+0x10>)
    8626:	681b      	ldr	r3, [r3, #0]
    8628:	2b00      	cmp	r3, #0
    862a:	d001      	beq.n	8630 <rt_tsk_self+0xc>
    862c:	78d8      	ldrb	r0, [r3, #3]
    862e:	4770      	bx	lr
    8630:	2000      	movs	r0, #0
    8632:	e7fc      	b.n	862e <rt_tsk_self+0xa>
    8634:	200060b8 	.word	0x200060b8

00008638 <rt_tsk_prio>:
    8638:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    863a:	2800      	cmp	r0, #0
    863c:	d10c      	bne.n	8658 <rt_tsk_prio+0x20>
    863e:	2224      	movs	r2, #36	; 0x24
    8640:	4c27      	ldr	r4, [pc, #156]	; (86e0 <rt_tsk_prio+0xa8>)
    8642:	6823      	ldr	r3, [r4, #0]
    8644:	7099      	strb	r1, [r3, #2]
    8646:	5499      	strb	r1, [r3, r2]
    8648:	4d26      	ldr	r5, [pc, #152]	; (86e4 <rt_tsk_prio+0xac>)
    864a:	686a      	ldr	r2, [r5, #4]
    864c:	7892      	ldrb	r2, [r2, #2]
    864e:	428a      	cmp	r2, r1
    8650:	d82c      	bhi.n	86ac <rt_tsk_prio+0x74>
    8652:	2200      	movs	r2, #0
    8654:	0010      	movs	r0, r2
    8656:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8658:	4b23      	ldr	r3, [pc, #140]	; (86e8 <rt_tsk_prio+0xb0>)
    865a:	22ff      	movs	r2, #255	; 0xff
    865c:	881b      	ldrh	r3, [r3, #0]
    865e:	4298      	cmp	r0, r3
    8660:	d8f8      	bhi.n	8654 <rt_tsk_prio+0x1c>
    8662:	1e43      	subs	r3, r0, #1
    8664:	4821      	ldr	r0, [pc, #132]	; (86ec <rt_tsk_prio+0xb4>)
    8666:	009b      	lsls	r3, r3, #2
    8668:	581d      	ldr	r5, [r3, r0]
    866a:	2d00      	cmp	r5, #0
    866c:	d0f2      	beq.n	8654 <rt_tsk_prio+0x1c>
    866e:	2324      	movs	r3, #36	; 0x24
    8670:	4c1b      	ldr	r4, [pc, #108]	; (86e0 <rt_tsk_prio+0xa8>)
    8672:	70a9      	strb	r1, [r5, #2]
    8674:	54e9      	strb	r1, [r5, r3]
    8676:	6823      	ldr	r3, [r4, #0]
    8678:	429d      	cmp	r5, r3
    867a:	d0e5      	beq.n	8648 <rt_tsk_prio+0x10>
    867c:	0028      	movs	r0, r5
    867e:	f7ff fbbb 	bl	7df8 <rt_resort_prio>
    8682:	786d      	ldrb	r5, [r5, #1]
    8684:	2d01      	cmp	r5, #1
    8686:	d1e4      	bne.n	8652 <rt_tsk_prio+0x1a>
    8688:	4f16      	ldr	r7, [pc, #88]	; (86e4 <rt_tsk_prio+0xac>)
    868a:	0038      	movs	r0, r7
    868c:	f7ff fb84 	bl	7d98 <rt_get_first>
    8690:	1e06      	subs	r6, r0, #0
    8692:	d023      	beq.n	86dc <rt_tsk_prio+0xa4>
    8694:	6820      	ldr	r0, [r4, #0]
    8696:	78b2      	ldrb	r2, [r6, #2]
    8698:	7883      	ldrb	r3, [r0, #2]
    869a:	429a      	cmp	r2, r3
    869c:	d815      	bhi.n	86ca <rt_tsk_prio+0x92>
    869e:	7075      	strb	r5, [r6, #1]
    86a0:	0031      	movs	r1, r6
    86a2:	0038      	movs	r0, r7
    86a4:	f7ff fb52 	bl	7d4c <rt_put_prio>
    86a8:	2200      	movs	r2, #0
    86aa:	e7d3      	b.n	8654 <rt_tsk_prio+0x1c>
    86ac:	0019      	movs	r1, r3
    86ae:	0028      	movs	r0, r5
    86b0:	f7ff fb4c 	bl	7d4c <rt_put_prio>
    86b4:	2301      	movs	r3, #1
    86b6:	0028      	movs	r0, r5
    86b8:	6822      	ldr	r2, [r4, #0]
    86ba:	7053      	strb	r3, [r2, #1]
    86bc:	f7ff fb6c 	bl	7d98 <rt_get_first>
    86c0:	2302      	movs	r3, #2
    86c2:	6060      	str	r0, [r4, #4]
    86c4:	2200      	movs	r2, #0
    86c6:	7043      	strb	r3, [r0, #1]
    86c8:	e7c4      	b.n	8654 <rt_tsk_prio+0x1c>
    86ca:	f7ff fb79 	bl	7dc0 <rt_put_rdy_first>
    86ce:	6823      	ldr	r3, [r4, #0]
    86d0:	2200      	movs	r2, #0
    86d2:	705d      	strb	r5, [r3, #1]
    86d4:	2302      	movs	r3, #2
    86d6:	6066      	str	r6, [r4, #4]
    86d8:	7073      	strb	r3, [r6, #1]
    86da:	e7bb      	b.n	8654 <rt_tsk_prio+0x1c>
    86dc:	0038      	movs	r0, r7
    86de:	e7ed      	b.n	86bc <rt_tsk_prio+0x84>
    86e0:	200060b8 	.word	0x200060b8
    86e4:	20006084 	.word	0x20006084
    86e8:	00008c44 	.word	0x00008c44
    86ec:	20004cdc 	.word	0x20004cdc

000086f0 <rt_tsk_create>:
    86f0:	b5f0      	push	{r4, r5, r6, r7, lr}
    86f2:	4647      	mov	r7, r8
    86f4:	b480      	push	{r7}
    86f6:	001f      	movs	r7, r3
    86f8:	23ff      	movs	r3, #255	; 0xff
    86fa:	400b      	ands	r3, r1
    86fc:	4690      	mov	r8, r2
    86fe:	001a      	movs	r2, r3
    8700:	4253      	negs	r3, r2
    8702:	4153      	adcs	r3, r2
    8704:	0006      	movs	r6, r0
    8706:	4831      	ldr	r0, [pc, #196]	; (87cc <rt_tsk_create+0xdc>)
    8708:	18cc      	adds	r4, r1, r3
    870a:	f7fe ff95 	bl	7638 <rt_alloc_box>
    870e:	1e05      	subs	r5, r0, #0
    8710:	d032      	beq.n	8778 <rt_tsk_create+0x88>
    8712:	4643      	mov	r3, r8
    8714:	2101      	movs	r1, #1
    8716:	62c3      	str	r3, [r0, #44]	; 0x2c
    8718:	2300      	movs	r3, #0
    871a:	0a22      	lsrs	r2, r4, #8
    871c:	7041      	strb	r1, [r0, #1]
    871e:	b2e4      	uxtb	r4, r4
    8720:	3123      	adds	r1, #35	; 0x23
    8722:	b292      	uxth	r2, r2
    8724:	7003      	strb	r3, [r0, #0]
    8726:	84c2      	strh	r2, [r0, #38]	; 0x26
    8728:	61c7      	str	r7, [r0, #28]
    872a:	7084      	strb	r4, [r0, #2]
    872c:	5444      	strb	r4, [r0, r1]
    872e:	2100      	movs	r1, #0
    8730:	6043      	str	r3, [r0, #4]
    8732:	6083      	str	r3, [r0, #8]
    8734:	60c3      	str	r3, [r0, #12]
    8736:	6103      	str	r3, [r0, #16]
    8738:	6203      	str	r3, [r0, #32]
    873a:	8283      	strh	r3, [r0, #20]
    873c:	82c3      	strh	r3, [r0, #22]
    873e:	8303      	strh	r3, [r0, #24]
    8740:	8343      	strh	r3, [r0, #26]
    8742:	3325      	adds	r3, #37	; 0x25
    8744:	54c1      	strb	r1, [r0, r3]
    8746:	2a00      	cmp	r2, #0
    8748:	d01a      	beq.n	8780 <rt_tsk_create+0x90>
    874a:	0031      	movs	r1, r6
    874c:	0028      	movs	r0, r5
    874e:	f7fe fe99 	bl	7484 <rt_init_stack>
    8752:	4b1f      	ldr	r3, [pc, #124]	; (87d0 <rt_tsk_create+0xe0>)
    8754:	8819      	ldrh	r1, [r3, #0]
    8756:	2900      	cmp	r1, #0
    8758:	d00e      	beq.n	8778 <rt_tsk_create+0x88>
    875a:	481e      	ldr	r0, [pc, #120]	; (87d4 <rt_tsk_create+0xe4>)
    875c:	6803      	ldr	r3, [r0, #0]
    875e:	2b00      	cmp	r3, #0
    8760:	d02f      	beq.n	87c2 <rt_tsk_create+0xd2>
    8762:	2201      	movs	r2, #1
    8764:	e005      	b.n	8772 <rt_tsk_create+0x82>
    8766:	00a3      	lsls	r3, r4, #2
    8768:	3b04      	subs	r3, #4
    876a:	58c3      	ldr	r3, [r0, r3]
    876c:	2b00      	cmp	r3, #0
    876e:	d00c      	beq.n	878a <rt_tsk_create+0x9a>
    8770:	0022      	movs	r2, r4
    8772:	1c54      	adds	r4, r2, #1
    8774:	428c      	cmp	r4, r1
    8776:	d9f6      	bls.n	8766 <rt_tsk_create+0x76>
    8778:	2000      	movs	r0, #0
    877a:	bc04      	pop	{r2}
    877c:	4690      	mov	r8, r2
    877e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8780:	4815      	ldr	r0, [pc, #84]	; (87d8 <rt_tsk_create+0xe8>)
    8782:	f7fe ff59 	bl	7638 <rt_alloc_box>
    8786:	62e8      	str	r0, [r5, #44]	; 0x2c
    8788:	e7df      	b.n	874a <rt_tsk_create+0x5a>
    878a:	b2e3      	uxtb	r3, r4
    878c:	0092      	lsls	r2, r2, #2
    878e:	4e13      	ldr	r6, [pc, #76]	; (87dc <rt_tsk_create+0xec>)
    8790:	5085      	str	r5, [r0, r2]
    8792:	70eb      	strb	r3, [r5, #3]
    8794:	6830      	ldr	r0, [r6, #0]
    8796:	78aa      	ldrb	r2, [r5, #2]
    8798:	7883      	ldrb	r3, [r0, #2]
    879a:	429a      	cmp	r2, r3
    879c:	d807      	bhi.n	87ae <rt_tsk_create+0xbe>
    879e:	2301      	movs	r3, #1
    87a0:	480f      	ldr	r0, [pc, #60]	; (87e0 <rt_tsk_create+0xf0>)
    87a2:	706b      	strb	r3, [r5, #1]
    87a4:	0029      	movs	r1, r5
    87a6:	f7ff fad1 	bl	7d4c <rt_put_prio>
    87aa:	0020      	movs	r0, r4
    87ac:	e7e5      	b.n	877a <rt_tsk_create+0x8a>
    87ae:	f7ff fb07 	bl	7dc0 <rt_put_rdy_first>
    87b2:	2301      	movs	r3, #1
    87b4:	6832      	ldr	r2, [r6, #0]
    87b6:	0020      	movs	r0, r4
    87b8:	7053      	strb	r3, [r2, #1]
    87ba:	3301      	adds	r3, #1
    87bc:	6075      	str	r5, [r6, #4]
    87be:	706b      	strb	r3, [r5, #1]
    87c0:	e7db      	b.n	877a <rt_tsk_create+0x8a>
    87c2:	2301      	movs	r3, #1
    87c4:	2200      	movs	r2, #0
    87c6:	2401      	movs	r4, #1
    87c8:	e7e0      	b.n	878c <rt_tsk_create+0x9c>
    87ca:	46c0      	nop			; (mov r8, r8)
    87cc:	20000908 	.word	0x20000908
    87d0:	00008c44 	.word	0x00008c44
    87d4:	20004cdc 	.word	0x20004cdc
    87d8:	200009e8 	.word	0x200009e8
    87dc:	200060b8 	.word	0x200060b8
    87e0:	20006084 	.word	0x20006084

000087e4 <rt_tsk_delete>:
    87e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    87e6:	4644      	mov	r4, r8
    87e8:	465f      	mov	r7, fp
    87ea:	4656      	mov	r6, sl
    87ec:	464d      	mov	r5, r9
    87ee:	4b5a      	ldr	r3, [pc, #360]	; (8958 <rt_tsk_delete+0x174>)
    87f0:	b4f0      	push	{r4, r5, r6, r7}
    87f2:	4698      	mov	r8, r3
    87f4:	681c      	ldr	r4, [r3, #0]
    87f6:	2800      	cmp	r0, #0
    87f8:	d00e      	beq.n	8818 <rt_tsk_delete+0x34>
    87fa:	78e3      	ldrb	r3, [r4, #3]
    87fc:	4298      	cmp	r0, r3
    87fe:	d00b      	beq.n	8818 <rt_tsk_delete+0x34>
    8800:	4b56      	ldr	r3, [pc, #344]	; (895c <rt_tsk_delete+0x178>)
    8802:	881a      	ldrh	r2, [r3, #0]
    8804:	23ff      	movs	r3, #255	; 0xff
    8806:	4290      	cmp	r0, r2
    8808:	d952      	bls.n	88b0 <rt_tsk_delete+0xcc>
    880a:	0018      	movs	r0, r3
    880c:	bc3c      	pop	{r2, r3, r4, r5}
    880e:	4690      	mov	r8, r2
    8810:	4699      	mov	r9, r3
    8812:	46a2      	mov	sl, r4
    8814:	46ab      	mov	fp, r5
    8816:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8818:	2300      	movs	r3, #0
    881a:	7063      	strb	r3, [r4, #1]
    881c:	f7fc fa53 	bl	4cc6 <rt_get_PSP>
    8820:	62a0      	str	r0, [r4, #40]	; 0x28
    8822:	f7ff fe8b 	bl	853c <rt_stk_check>
    8826:	4643      	mov	r3, r8
    8828:	681a      	ldr	r2, [r3, #0]
    882a:	4f4d      	ldr	r7, [pc, #308]	; (8960 <rt_tsk_delete+0x17c>)
    882c:	6a14      	ldr	r4, [r2, #32]
    882e:	2c00      	cmp	r4, #0
    8830:	d023      	beq.n	887a <rt_tsk_delete+0x96>
    8832:	2601      	movs	r6, #1
    8834:	e016      	b.n	8864 <rt_tsk_delete+0x80>
    8836:	0020      	movs	r0, r4
    8838:	f7ff faae 	bl	7d98 <rt_get_first>
    883c:	0005      	movs	r5, r0
    883e:	2100      	movs	r1, #0
    8840:	f7fe fe78 	bl	7534 <rt_ret_val>
    8844:	0028      	movs	r0, r5
    8846:	f7ff fbdf 	bl	8008 <rt_rmv_dly>
    884a:	706e      	strb	r6, [r5, #1]
    884c:	0029      	movs	r1, r5
    884e:	0038      	movs	r0, r7
    8850:	f7ff fa7c 	bl	7d4c <rt_put_prio>
    8854:	68e3      	ldr	r3, [r4, #12]
    8856:	6a2a      	ldr	r2, [r5, #32]
    8858:	8066      	strh	r6, [r4, #2]
    885a:	60a5      	str	r5, [r4, #8]
    885c:	60e2      	str	r2, [r4, #12]
    885e:	622c      	str	r4, [r5, #32]
    8860:	1e1c      	subs	r4, r3, #0
    8862:	d008      	beq.n	8876 <rt_tsk_delete+0x92>
    8864:	6863      	ldr	r3, [r4, #4]
    8866:	2b00      	cmp	r3, #0
    8868:	d1e5      	bne.n	8836 <rt_tsk_delete+0x52>
    886a:	68e2      	ldr	r2, [r4, #12]
    886c:	8063      	strh	r3, [r4, #2]
    886e:	60a3      	str	r3, [r4, #8]
    8870:	60e3      	str	r3, [r4, #12]
    8872:	1e14      	subs	r4, r2, #0
    8874:	d1f6      	bne.n	8864 <rt_tsk_delete+0x80>
    8876:	4643      	mov	r3, r8
    8878:	681a      	ldr	r2, [r3, #0]
    887a:	2400      	movs	r4, #0
    887c:	78d3      	ldrb	r3, [r2, #3]
    887e:	4939      	ldr	r1, [pc, #228]	; (8964 <rt_tsk_delete+0x180>)
    8880:	3b01      	subs	r3, #1
    8882:	009b      	lsls	r3, r3, #2
    8884:	505c      	str	r4, [r3, r1]
    8886:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    8888:	4837      	ldr	r0, [pc, #220]	; (8968 <rt_tsk_delete+0x184>)
    888a:	f7fe fef5 	bl	7678 <rt_free_box>
    888e:	4643      	mov	r3, r8
    8890:	6819      	ldr	r1, [r3, #0]
    8892:	4836      	ldr	r0, [pc, #216]	; (896c <rt_tsk_delete+0x188>)
    8894:	62cc      	str	r4, [r1, #44]	; 0x2c
    8896:	f7fe feef 	bl	7678 <rt_free_box>
    889a:	4643      	mov	r3, r8
    889c:	601c      	str	r4, [r3, #0]
    889e:	0038      	movs	r0, r7
    88a0:	f7ff fa7a 	bl	7d98 <rt_get_first>
    88a4:	4643      	mov	r3, r8
    88a6:	6058      	str	r0, [r3, #4]
    88a8:	2302      	movs	r3, #2
    88aa:	7043      	strb	r3, [r0, #1]
    88ac:	2300      	movs	r3, #0
    88ae:	e7ac      	b.n	880a <rt_tsk_delete+0x26>
    88b0:	4a2c      	ldr	r2, [pc, #176]	; (8964 <rt_tsk_delete+0x180>)
    88b2:	1e46      	subs	r6, r0, #1
    88b4:	4692      	mov	sl, r2
    88b6:	00b2      	lsls	r2, r6, #2
    88b8:	4693      	mov	fp, r2
    88ba:	4652      	mov	r2, sl
    88bc:	4659      	mov	r1, fp
    88be:	5856      	ldr	r6, [r2, r1]
    88c0:	2e00      	cmp	r6, #0
    88c2:	d0a2      	beq.n	880a <rt_tsk_delete+0x26>
    88c4:	0030      	movs	r0, r6
    88c6:	f7ff fb89 	bl	7fdc <rt_rmv_list>
    88ca:	0030      	movs	r0, r6
    88cc:	f7ff fb9c 	bl	8008 <rt_rmv_dly>
    88d0:	2301      	movs	r3, #1
    88d2:	6a34      	ldr	r4, [r6, #32]
    88d4:	4f22      	ldr	r7, [pc, #136]	; (8960 <rt_tsk_delete+0x17c>)
    88d6:	4699      	mov	r9, r3
    88d8:	2c00      	cmp	r4, #0
    88da:	d11a      	bne.n	8912 <rt_tsk_delete+0x12e>
    88dc:	e022      	b.n	8924 <rt_tsk_delete+0x140>
    88de:	0020      	movs	r0, r4
    88e0:	f7ff fa5a 	bl	7d98 <rt_get_first>
    88e4:	0005      	movs	r5, r0
    88e6:	2100      	movs	r1, #0
    88e8:	f7fe fe24 	bl	7534 <rt_ret_val>
    88ec:	0028      	movs	r0, r5
    88ee:	f7ff fb8b 	bl	8008 <rt_rmv_dly>
    88f2:	464b      	mov	r3, r9
    88f4:	0029      	movs	r1, r5
    88f6:	706b      	strb	r3, [r5, #1]
    88f8:	0038      	movs	r0, r7
    88fa:	f7ff fa27 	bl	7d4c <rt_put_prio>
    88fe:	464a      	mov	r2, r9
    8900:	68e3      	ldr	r3, [r4, #12]
    8902:	8062      	strh	r2, [r4, #2]
    8904:	6a2a      	ldr	r2, [r5, #32]
    8906:	60a5      	str	r5, [r4, #8]
    8908:	60e2      	str	r2, [r4, #12]
    890a:	622c      	str	r4, [r5, #32]
    890c:	001c      	movs	r4, r3
    890e:	2c00      	cmp	r4, #0
    8910:	d008      	beq.n	8924 <rt_tsk_delete+0x140>
    8912:	6863      	ldr	r3, [r4, #4]
    8914:	2b00      	cmp	r3, #0
    8916:	d1e2      	bne.n	88de <rt_tsk_delete+0xfa>
    8918:	68e2      	ldr	r2, [r4, #12]
    891a:	8063      	strh	r3, [r4, #2]
    891c:	60a3      	str	r3, [r4, #8]
    891e:	60e3      	str	r3, [r4, #12]
    8920:	0014      	movs	r4, r2
    8922:	e7f4      	b.n	890e <rt_tsk_delete+0x12a>
    8924:	4653      	mov	r3, sl
    8926:	465a      	mov	r2, fp
    8928:	2400      	movs	r4, #0
    892a:	509c      	str	r4, [r3, r2]
    892c:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    892e:	480e      	ldr	r0, [pc, #56]	; (8968 <rt_tsk_delete+0x184>)
    8930:	f7fe fea2 	bl	7678 <rt_free_box>
    8934:	0031      	movs	r1, r6
    8936:	62f4      	str	r4, [r6, #44]	; 0x2c
    8938:	480c      	ldr	r0, [pc, #48]	; (896c <rt_tsk_delete+0x188>)
    893a:	f7fe fe9d 	bl	7678 <rt_free_box>
    893e:	4643      	mov	r3, r8
    8940:	6819      	ldr	r1, [r3, #0]
    8942:	687b      	ldr	r3, [r7, #4]
    8944:	789a      	ldrb	r2, [r3, #2]
    8946:	788b      	ldrb	r3, [r1, #2]
    8948:	429a      	cmp	r2, r3
    894a:	d9af      	bls.n	88ac <rt_tsk_delete+0xc8>
    894c:	2301      	movs	r3, #1
    894e:	0038      	movs	r0, r7
    8950:	704b      	strb	r3, [r1, #1]
    8952:	f7ff f9fb 	bl	7d4c <rt_put_prio>
    8956:	e7a2      	b.n	889e <rt_tsk_delete+0xba>
    8958:	200060b8 	.word	0x200060b8
    895c:	00008c44 	.word	0x00008c44
    8960:	20006084 	.word	0x20006084
    8964:	20004cdc 	.word	0x20004cdc
    8968:	200009e8 	.word	0x200009e8
    896c:	20000908 	.word	0x20000908

00008970 <rt_sys_init>:
    8970:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8972:	4b2b      	ldr	r3, [pc, #172]	; (8a20 <rt_sys_init+0xb0>)
    8974:	881a      	ldrh	r2, [r3, #0]
    8976:	2a00      	cmp	r2, #0
    8978:	d004      	beq.n	8984 <rt_sys_init+0x14>
    897a:	0092      	lsls	r2, r2, #2
    897c:	2100      	movs	r1, #0
    897e:	4829      	ldr	r0, [pc, #164]	; (8a24 <rt_sys_init+0xb4>)
    8980:	f7fc fbd8 	bl	5134 <memset>
    8984:	4b28      	ldr	r3, [pc, #160]	; (8a28 <rt_sys_init+0xb8>)
    8986:	2234      	movs	r2, #52	; 0x34
    8988:	8819      	ldrh	r1, [r3, #0]
    898a:	4828      	ldr	r0, [pc, #160]	; (8a2c <rt_sys_init+0xbc>)
    898c:	f7fe fe28 	bl	75e0 <_init_box>
    8990:	2280      	movs	r2, #128	; 0x80
    8992:	4b27      	ldr	r3, [pc, #156]	; (8a30 <rt_sys_init+0xc0>)
    8994:	0612      	lsls	r2, r2, #24
    8996:	881b      	ldrh	r3, [r3, #0]
    8998:	4f26      	ldr	r7, [pc, #152]	; (8a34 <rt_sys_init+0xc4>)
    899a:	431a      	orrs	r2, r3
    899c:	4b26      	ldr	r3, [pc, #152]	; (8a38 <rt_sys_init+0xc8>)
    899e:	0038      	movs	r0, r7
    89a0:	6819      	ldr	r1, [r3, #0]
    89a2:	f7fe fe1d 	bl	75e0 <_init_box>
    89a6:	4b25      	ldr	r3, [pc, #148]	; (8a3c <rt_sys_init+0xcc>)
    89a8:	2208      	movs	r2, #8
    89aa:	6818      	ldr	r0, [r3, #0]
    89ac:	4b24      	ldr	r3, [pc, #144]	; (8a40 <rt_sys_init+0xd0>)
    89ae:	2600      	movs	r6, #0
    89b0:	8819      	ldrh	r1, [r3, #0]
    89b2:	f7fe fe15 	bl	75e0 <_init_box>
    89b6:	23ff      	movs	r3, #255	; 0xff
    89b8:	2500      	movs	r5, #0
    89ba:	4c22      	ldr	r4, [pc, #136]	; (8a44 <rt_sys_init+0xd4>)
    89bc:	0038      	movs	r0, r7
    89be:	70e3      	strb	r3, [r4, #3]
    89c0:	3bfe      	subs	r3, #254	; 0xfe
    89c2:	7063      	strb	r3, [r4, #1]
    89c4:	3323      	adds	r3, #35	; 0x23
    89c6:	54e6      	strb	r6, [r4, r3]
    89c8:	3301      	adds	r3, #1
    89ca:	54e6      	strb	r6, [r4, r3]
    89cc:	84e5      	strh	r5, [r4, #38]	; 0x26
    89ce:	7026      	strb	r6, [r4, #0]
    89d0:	70a6      	strb	r6, [r4, #2]
    89d2:	6065      	str	r5, [r4, #4]
    89d4:	60a5      	str	r5, [r4, #8]
    89d6:	60e5      	str	r5, [r4, #12]
    89d8:	6125      	str	r5, [r4, #16]
    89da:	6225      	str	r5, [r4, #32]
    89dc:	82a5      	strh	r5, [r4, #20]
    89de:	82e5      	strh	r5, [r4, #22]
    89e0:	8325      	strh	r5, [r4, #24]
    89e2:	8365      	strh	r5, [r4, #26]
    89e4:	f7fe fe28 	bl	7638 <rt_alloc_box>
    89e8:	4917      	ldr	r1, [pc, #92]	; (8a48 <rt_sys_init+0xd8>)
    89ea:	62e0      	str	r0, [r4, #44]	; 0x2c
    89ec:	0020      	movs	r0, r4
    89ee:	f7fe fd49 	bl	7484 <rt_init_stack>
    89f2:	2204      	movs	r2, #4
    89f4:	4b15      	ldr	r3, [pc, #84]	; (8a4c <rt_sys_init+0xdc>)
    89f6:	701a      	strb	r2, [r3, #0]
    89f8:	605d      	str	r5, [r3, #4]
    89fa:	4b15      	ldr	r3, [pc, #84]	; (8a50 <rt_sys_init+0xe0>)
    89fc:	701a      	strb	r2, [r3, #0]
    89fe:	60dd      	str	r5, [r3, #12]
    8a00:	611d      	str	r5, [r3, #16]
    8a02:	829d      	strh	r5, [r3, #20]
    8a04:	4b13      	ldr	r3, [pc, #76]	; (8a54 <rt_sys_init+0xe4>)
    8a06:	4a14      	ldr	r2, [pc, #80]	; (8a58 <rt_sys_init+0xe8>)
    8a08:	601c      	str	r4, [r3, #0]
    8a0a:	2302      	movs	r3, #2
    8a0c:	7812      	ldrb	r2, [r2, #0]
    8a0e:	7063      	strb	r3, [r4, #1]
    8a10:	4b12      	ldr	r3, [pc, #72]	; (8a5c <rt_sys_init+0xec>)
    8a12:	701e      	strb	r6, [r3, #0]
    8a14:	705e      	strb	r6, [r3, #1]
    8a16:	70da      	strb	r2, [r3, #3]
    8a18:	f000 f85a 	bl	8ad0 <rt_init_robin>
    8a1c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8a1e:	46c0      	nop			; (mov r8, r8)
    8a20:	00008c44 	.word	0x00008c44
    8a24:	20004cdc 	.word	0x20004cdc
    8a28:	00008c70 	.word	0x00008c70
    8a2c:	20000908 	.word	0x20000908
    8a30:	00008c48 	.word	0x00008c48
    8a34:	200009e8 	.word	0x200009e8
    8a38:	00008c74 	.word	0x00008c74
    8a3c:	20004d18 	.word	0x20004d18
    8a40:	00008c98 	.word	0x00008c98
    8a44:	200060c0 	.word	0x200060c0
    8a48:	00001a75 	.word	0x00001a75
    8a4c:	20006084 	.word	0x20006084
    8a50:	2000609c 	.word	0x2000609c
    8a54:	200060b8 	.word	0x200060b8
    8a58:	00008c7c 	.word	0x00008c7c
    8a5c:	20004c58 	.word	0x20004c58

00008a60 <rt_sys_start>:
    8a60:	21ff      	movs	r1, #255	; 0xff
    8a62:	4b16      	ldr	r3, [pc, #88]	; (8abc <rt_sys_start+0x5c>)
    8a64:	0409      	lsls	r1, r1, #16
    8a66:	681a      	ldr	r2, [r3, #0]
    8a68:	b510      	push	{r4, lr}
    8a6a:	430a      	orrs	r2, r1
    8a6c:	601a      	str	r2, [r3, #0]
    8a6e:	681b      	ldr	r3, [r3, #0]
    8a70:	4913      	ldr	r1, [pc, #76]	; (8ac0 <rt_sys_start+0x60>)
    8a72:	025b      	lsls	r3, r3, #9
    8a74:	680a      	ldr	r2, [r1, #0]
    8a76:	0e9b      	lsrs	r3, r3, #26
    8a78:	069b      	lsls	r3, r3, #26
    8a7a:	4313      	orrs	r3, r2
    8a7c:	600b      	str	r3, [r1, #0]
    8a7e:	f7ff fd0d 	bl	849c <os_tick_init>
    8a82:	4c10      	ldr	r4, [pc, #64]	; (8ac4 <rt_sys_start+0x64>)
    8a84:	6020      	str	r0, [r4, #0]
    8a86:	2800      	cmp	r0, #0
    8a88:	db17      	blt.n	8aba <rt_sys_start+0x5a>
    8a8a:	4a0f      	ldr	r2, [pc, #60]	; (8ac8 <rt_sys_start+0x68>)
    8a8c:	0883      	lsrs	r3, r0, #2
    8a8e:	4694      	mov	ip, r2
    8a90:	2218      	movs	r2, #24
    8a92:	00c0      	lsls	r0, r0, #3
    8a94:	4010      	ands	r0, r2
    8a96:	32e7      	adds	r2, #231	; 0xe7
    8a98:	4082      	lsls	r2, r0
    8a9a:	009b      	lsls	r3, r3, #2
    8a9c:	4463      	add	r3, ip
    8a9e:	6819      	ldr	r1, [r3, #0]
    8aa0:	430a      	orrs	r2, r1
    8aa2:	490a      	ldr	r1, [pc, #40]	; (8acc <rt_sys_start+0x6c>)
    8aa4:	601a      	str	r2, [r3, #0]
    8aa6:	468c      	mov	ip, r1
    8aa8:	211f      	movs	r1, #31
    8aaa:	6822      	ldr	r2, [r4, #0]
    8aac:	0953      	lsrs	r3, r2, #5
    8aae:	400a      	ands	r2, r1
    8ab0:	391e      	subs	r1, #30
    8ab2:	4091      	lsls	r1, r2
    8ab4:	009b      	lsls	r3, r3, #2
    8ab6:	4463      	add	r3, ip
    8ab8:	6019      	str	r1, [r3, #0]
    8aba:	bd10      	pop	{r4, pc}
    8abc:	e000ed20 	.word	0xe000ed20
    8ac0:	e000ed1c 	.word	0xe000ed1c
    8ac4:	200060b4 	.word	0x200060b4
    8ac8:	e000e400 	.word	0xe000e400
    8acc:	e000e100 	.word	0xe000e100

00008ad0 <rt_init_robin>:
    8ad0:	2200      	movs	r2, #0
    8ad2:	4b03      	ldr	r3, [pc, #12]	; (8ae0 <rt_init_robin+0x10>)
    8ad4:	601a      	str	r2, [r3, #0]
    8ad6:	4a03      	ldr	r2, [pc, #12]	; (8ae4 <rt_init_robin+0x14>)
    8ad8:	6812      	ldr	r2, [r2, #0]
    8ada:	80da      	strh	r2, [r3, #6]
    8adc:	4770      	bx	lr
    8ade:	46c0      	nop			; (mov r8, r8)
    8ae0:	200060f4 	.word	0x200060f4
    8ae4:	00008c4c 	.word	0x00008c4c

00008ae8 <rt_chk_robin>:
    8ae8:	b510      	push	{r4, lr}
    8aea:	4a0f      	ldr	r2, [pc, #60]	; (8b28 <rt_chk_robin+0x40>)
    8aec:	4c0f      	ldr	r4, [pc, #60]	; (8b2c <rt_chk_robin+0x44>)
    8aee:	6811      	ldr	r1, [r2, #0]
    8af0:	6863      	ldr	r3, [r4, #4]
    8af2:	4299      	cmp	r1, r3
    8af4:	d014      	beq.n	8b20 <rt_chk_robin+0x38>
    8af6:	6013      	str	r3, [r2, #0]
    8af8:	4b0d      	ldr	r3, [pc, #52]	; (8b30 <rt_chk_robin+0x48>)
    8afa:	8819      	ldrh	r1, [r3, #0]
    8afc:	88d3      	ldrh	r3, [r2, #6]
    8afe:	3b01      	subs	r3, #1
    8b00:	18cb      	adds	r3, r1, r3
    8b02:	b29b      	uxth	r3, r3
    8b04:	8093      	strh	r3, [r2, #4]
    8b06:	4299      	cmp	r1, r3
    8b08:	d000      	beq.n	8b0c <rt_chk_robin+0x24>
    8b0a:	bd10      	pop	{r4, pc}
    8b0c:	2300      	movs	r3, #0
    8b0e:	0020      	movs	r0, r4
    8b10:	6013      	str	r3, [r2, #0]
    8b12:	f7ff f941 	bl	7d98 <rt_get_first>
    8b16:	0001      	movs	r1, r0
    8b18:	0020      	movs	r0, r4
    8b1a:	f7ff f917 	bl	7d4c <rt_put_prio>
    8b1e:	e7f4      	b.n	8b0a <rt_chk_robin+0x22>
    8b20:	4b03      	ldr	r3, [pc, #12]	; (8b30 <rt_chk_robin+0x48>)
    8b22:	8819      	ldrh	r1, [r3, #0]
    8b24:	8893      	ldrh	r3, [r2, #4]
    8b26:	e7ee      	b.n	8b06 <rt_chk_robin+0x1e>
    8b28:	200060f4 	.word	0x200060f4
    8b2c:	20006084 	.word	0x20006084
    8b30:	20006080 	.word	0x20006080
    8b34:	00000000 	.word	0x00000000

00008b38 <__eeprom_erase_page_veneer>:
    8b38:	b401      	push	{r0}
    8b3a:	4802      	ldr	r0, [pc, #8]	; (8b44 <__eeprom_erase_page_veneer+0xc>)
    8b3c:	4684      	mov	ip, r0
    8b3e:	bc01      	pop	{r0}
    8b40:	4760      	bx	ip
    8b42:	bf00      	nop
    8b44:	2010002d 	.word	0x2010002d

00008b48 <__eeprom_program_word_veneer>:
    8b48:	b401      	push	{r0}
    8b4a:	4802      	ldr	r0, [pc, #8]	; (8b54 <__eeprom_program_word_veneer+0xc>)
    8b4c:	4684      	mov	ip, r0
    8b4e:	bc01      	pop	{r0}
    8b50:	4760      	bx	ip
    8b52:	bf00      	nop
    8b54:	20100151 	.word	0x20100151

00008b58 <__eeprom_read_word_veneer>:
    8b58:	b401      	push	{r0}
    8b5a:	4802      	ldr	r0, [pc, #8]	; (8b64 <__eeprom_read_word_veneer+0xc>)
    8b5c:	4684      	mov	ip, r0
    8b5e:	bc01      	pop	{r0}
    8b60:	4760      	bx	ip
    8b62:	bf00      	nop
    8b64:	20100229 	.word	0x20100229

00008b68 <threadPacketParserDef>:
    8b68:	000030d9 00000001 00000001 00000400     .0..............

00008b78 <threadFSMProceedDef>:
    8b78:	00000501 00000000 00000001 00000400     ................

00008b88 <threadDUTProceedDef>:
    8b88:	00000399 00000000 00000001 00000400     ................

00008b98 <message_def>:
    8b98:	00000004 20000868                       ....h.. 

00008ba0 <os_mutex_def_MutexMdbReg>:
    8ba0:	2000088c 74697865 00000000 70616548     ... exit....Heap
    8bb0:	646e6120 61747320 63206b63 696c6c6f      and stack colli
    8bc0:	6e6f6973 0000000a 00001496 00001484     sion............
    8bd0:	000014a2 000014ae 000014ae 000014ae     ................
    8be0:	000014ae 000014ae 000014ae 000014ae     ................
    8bf0:	000014ae 000014ae 000014ae 0000149c     ................
    8c00:	000014ae 000014ae 000014ae 00001428     ............(...
    8c10:	000014ae 000014a2 000014ae 000014ae     ................
    8c20:	000014a8 6c383025 00002058 32302520     ....%08lX .. %02
    8c30:	00000058 34302520 00000058 38302520     X... %04X... %08
    8c40:	0000584c                                LX..

00008c44 <os_maxtaskrun>:
    8c44:	00000004                                ....

00008c48 <os_stackinfo>:
    8c48:	01021000                                ....

00008c4c <os_rrobin>:
    8c4c:	00010005                                ....

00008c50 <os_tickfreq>:
    8c50:	04c4b400                                ....

00008c54 <os_tickus_i>:
    8c54:	00000050                                         P.

00008c56 <os_tickus_f>:
	...

00008c58 <os_trv>:
    8c58:	0001387f                                .8..

00008c5c <os_flags>:
    8c5c:	00000001                                ....

00008c60 <CMSIS_RTOS_API_Version>:
    8c60:	00010002                                ....

00008c64 <CMSIS_RTOS_RTX_Version>:
    8c64:	00040052                                R...

00008c68 <os_clockrate>:
    8c68:	000003e8                                ....

00008c6c <os_timernum>:
    8c6c:	00000000                                ....

00008c70 <mp_tcb_size>:
    8c70:	000000dc                                ....

00008c74 <mp_stk_size>:
    8c74:	00003010                                .0..

00008c78 <os_stack_sz>:
    8c78:	00001260                                `...

00008c7c <os_fifo_size>:
    8c7c:	00000010                                ....

00008c80 <os_thread_def_osTimerThread>:
    8c80:	000066ed 00000002 00000001 00000200     .f..............

00008c90 <os_messageQ_def_osTimerMessageQ>:
    8c90:	00000004 20004cf0                       .....L. 

00008c98 <mp_tmr_size>:
    8c98:	00000000                                ....

00008c9c <os_thread_def_main>:
    8c9c:	00000235 00000000 00000001 00000040     5...........@...

00008cac <os_mutex_def_readpackMutex>:
    8cac:	2000531c                                .S. 

00008cb0 <os_mutex_def_sendpackMutex>:
    8cb0:	20005330                                0S. 

00008cb4 <crc_table>:
    8cb4:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    8cc4:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    8cd4:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    8ce4:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    8cf4:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    8d04:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    8d14:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    8d24:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    8d34:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    8d44:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    8d54:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    8d64:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    8d74:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    8d84:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    8d94:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    8da4:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    8db4:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    8dc4:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    8dd4:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    8de4:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    8df4:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    8e04:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    8e14:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    8e24:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    8e34:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    8e44:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    8e54:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    8e64:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    8e74:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    8e84:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    8e94:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    8ea4:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    8eb4:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    8ec4:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    8ed4:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    8ee4:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    8ef4:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    8f04:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    8f14:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    8f24:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    8f34:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    8f44:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    8f54:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    8f64:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    8f74:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    8f84:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    8f94:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    8fa4:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    8fb4:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    8fc4:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    8fd4:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    8fe4:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    8ff4:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    9004:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    9014:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    9024:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    9034:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    9044:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    9054:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    9064:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    9074:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    9084:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    9094:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    90a4:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

000090b4 <crc_table_low>:
    90b4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    90c4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    90d4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    90e4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    90f4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    9104:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    9114:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    9124:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    9134:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    9144:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    9154:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    9164:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    9174:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    9184:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    9194:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    91a4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

000091b4 <crc_table_high>:
    91b4:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    91c4:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    91d4:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    91e4:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    91f4:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    9204:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    9214:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    9224:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    9234:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    9244:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    9254:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    9264:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    9274:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    9284:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    9294:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    92a4:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

000092b4 <defBsiParam>:
    92b4:	56789abc 00011234 00020a00 00000a00     ..xV4...........
    92c4:	00000000                                ....

000092c8 <device_additional_info>:
    92c8:	31554153 6e6f6320 6f727472 72656c6c     SAU1 conrtroller
    92d8:	00000000                                ....

000092dc <proc_PDU_table>:
    92dc:	0000407d 0000407d 0000407d 00003f41     }@..}@..}@..A?..
    92ec:	000039e1 0000407d 0000407d 0000407d     .9..}@..}@..}@..
    92fc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    930c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    931c:	00003b31 00003949 0000407d 0000407d     1;..I9..}@..}@..
    932c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    933c:	00003d35 0000407d 0000407d 0000407d     5=..}@..}@..}@..
    934c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    935c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    936c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    937c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    938c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    939c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    93ac:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    93bc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    93cc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    93dc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    93ec:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    93fc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    940c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    941c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    942c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    943c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    944c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    945c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    946c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    947c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    948c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    949c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    94ac:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    94bc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    94cc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    94dc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    94ec:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    94fc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    950c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    951c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    952c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    953c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    954c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    955c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    956c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    957c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    958c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    959c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    95ac:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    95bc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    95cc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    95dc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    95ec:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    95fc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    960c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    961c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    962c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    963c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    964c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    965c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    966c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    967c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    968c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    969c:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    96ac:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    96bc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..
    96cc:	0000407d 0000407d 0000407d 0000407d     }@..}@..}@..}@..

000096dc <_global_impure_ptr>:
    96dc:	20000018                                ... 

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
