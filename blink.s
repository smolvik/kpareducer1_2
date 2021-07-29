
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 d5 05 00 00 65 06 00 00 65 06 00 00     ... ....e...e...
	...
      2c:	07 4c 00 00 00 00 00 00 00 00 00 00 8d 4c 00 00     .L...........L..
      3c:	d5 4c 00 00 65 06 00 00 65 06 00 00 65 06 00 00     .L..e...e...e...
      4c:	65 06 00 00 65 06 00 00 65 06 00 00 55 12 00 00     e...e...e...U...
      5c:	91 0b 00 00 65 06 00 00 65 06 00 00 65 06 00 00     ....e...e...e...
      6c:	65 06 00 00 65 06 00 00 65 06 00 00 65 03 00 00     e...e...e...e...
      7c:	89 03 00 00 65 06 00 00 65 06 00 00 6d 27 00 00     ....e...e...m'..
      8c:	65 06 00 00 65 06 00 00 65 06 00 00 65 06 00 00     e...e...e...e...
      9c:	65 06 00 00 65 06 00 00 00 00 00 00 00 00 00 00     e...e...........
      ac:	65 06 00 00 09 04 00 00 65 06 00 00 65 06 00 00     e.......e...e...
      bc:	65 06 00 00                                         e...

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

00000138 <dut_pwr_on>:
     138:	b580      	push	{r7, lr}
     13a:	af00      	add	r7, sp, #0
     13c:	4b02      	ldr	r3, [pc, #8]	; (148 <dut_pwr_on+0x10>)
     13e:	2222      	movs	r2, #34	; 0x22
     140:	621a      	str	r2, [r3, #32]
     142:	46c0      	nop			; (mov r8, r8)
     144:	46bd      	mov	sp, r7
     146:	bd80      	pop	{r7, pc}
     148:	400b0000 	.word	0x400b0000

0000014c <dut_pwr_off>:
     14c:	b580      	push	{r7, lr}
     14e:	af00      	add	r7, sp, #0
     150:	4b02      	ldr	r3, [pc, #8]	; (15c <dut_pwr_off+0x10>)
     152:	2222      	movs	r2, #34	; 0x22
     154:	625a      	str	r2, [r3, #36]	; 0x24
     156:	46c0      	nop			; (mov r8, r8)
     158:	46bd      	mov	sp, r7
     15a:	bd80      	pop	{r7, pc}
     15c:	400b0000 	.word	0x400b0000

00000160 <dut_reset_off>:
     160:	b580      	push	{r7, lr}
     162:	af00      	add	r7, sp, #0
     164:	4b03      	ldr	r3, [pc, #12]	; (174 <dut_reset_off+0x14>)
     166:	2280      	movs	r2, #128	; 0x80
     168:	0112      	lsls	r2, r2, #4
     16a:	625a      	str	r2, [r3, #36]	; 0x24
     16c:	46c0      	nop			; (mov r8, r8)
     16e:	46bd      	mov	sp, r7
     170:	bd80      	pop	{r7, pc}
     172:	46c0      	nop			; (mov r8, r8)
     174:	400b0000 	.word	0x400b0000

00000178 <dut_reset_on>:
     178:	b580      	push	{r7, lr}
     17a:	af00      	add	r7, sp, #0
     17c:	4b03      	ldr	r3, [pc, #12]	; (18c <dut_reset_on+0x14>)
     17e:	2280      	movs	r2, #128	; 0x80
     180:	0112      	lsls	r2, r2, #4
     182:	621a      	str	r2, [r3, #32]
     184:	46c0      	nop			; (mov r8, r8)
     186:	46bd      	mov	sp, r7
     188:	bd80      	pop	{r7, pc}
     18a:	46c0      	nop			; (mov r8, r8)
     18c:	400b0000 	.word	0x400b0000

00000190 <dut_set_speed>:
     190:	b590      	push	{r4, r7, lr}
     192:	b085      	sub	sp, #20
     194:	af00      	add	r7, sp, #0
     196:	6078      	str	r0, [r7, #4]
     198:	687b      	ldr	r3, [r7, #4]
     19a:	121a      	asrs	r2, r3, #8
     19c:	4b11      	ldr	r3, [pc, #68]	; (1e4 <dut_set_speed+0x54>)
     19e:	601a      	str	r2, [r3, #0]
     1a0:	687b      	ldr	r3, [r7, #4]
     1a2:	4a11      	ldr	r2, [pc, #68]	; (1e8 <dut_set_speed+0x58>)
     1a4:	4353      	muls	r3, r2
     1a6:	14db      	asrs	r3, r3, #19
     1a8:	60fb      	str	r3, [r7, #12]
     1aa:	687b      	ldr	r3, [r7, #4]
     1ac:	2b00      	cmp	r3, #0
     1ae:	db07      	blt.n	1c0 <dut_set_speed+0x30>
     1b0:	4b0e      	ldr	r3, [pc, #56]	; (1ec <dut_set_speed+0x5c>)
     1b2:	4a0e      	ldr	r2, [pc, #56]	; (1ec <dut_set_speed+0x5c>)
     1b4:	6812      	ldr	r2, [r2, #0]
     1b6:	2180      	movs	r1, #128	; 0x80
     1b8:	0089      	lsls	r1, r1, #2
     1ba:	430a      	orrs	r2, r1
     1bc:	601a      	str	r2, [r3, #0]
     1be:	e005      	b.n	1cc <dut_set_speed+0x3c>
     1c0:	4b0a      	ldr	r3, [pc, #40]	; (1ec <dut_set_speed+0x5c>)
     1c2:	4a0a      	ldr	r2, [pc, #40]	; (1ec <dut_set_speed+0x5c>)
     1c4:	6812      	ldr	r2, [r2, #0]
     1c6:	490a      	ldr	r1, [pc, #40]	; (1f0 <dut_set_speed+0x60>)
     1c8:	400a      	ands	r2, r1
     1ca:	601a      	str	r2, [r3, #0]
     1cc:	4c09      	ldr	r4, [pc, #36]	; (1f4 <dut_set_speed+0x64>)
     1ce:	68fb      	ldr	r3, [r7, #12]
     1d0:	0018      	movs	r0, r3
     1d2:	f004 fec9 	bl	4f68 <abs>
     1d6:	0003      	movs	r3, r0
     1d8:	6063      	str	r3, [r4, #4]
     1da:	46c0      	nop			; (mov r8, r8)
     1dc:	46bd      	mov	sp, r7
     1de:	b005      	add	sp, #20
     1e0:	bd90      	pop	{r4, r7, pc}
     1e2:	46c0      	nop			; (mov r8, r8)
     1e4:	2000089c 	.word	0x2000089c
     1e8:	000013db 	.word	0x000013db
     1ec:	400b0000 	.word	0x400b0000
     1f0:	fffffdff 	.word	0xfffffdff
     1f4:	40090000 	.word	0x40090000

000001f8 <dut_set_torque>:
     1f8:	b590      	push	{r4, r7, lr}
     1fa:	b085      	sub	sp, #20
     1fc:	af00      	add	r7, sp, #0
     1fe:	6078      	str	r0, [r7, #4]
     200:	4b11      	ldr	r3, [pc, #68]	; (248 <__GCC_VERSION+0x2b>)
     202:	687a      	ldr	r2, [r7, #4]
     204:	601a      	str	r2, [r3, #0]
     206:	687b      	ldr	r3, [r7, #4]
     208:	4a10      	ldr	r2, [pc, #64]	; (24c <__GCC_VERSION+0x2f>)
     20a:	4353      	muls	r3, r2
     20c:	139b      	asrs	r3, r3, #14
     20e:	60fb      	str	r3, [r7, #12]
     210:	687b      	ldr	r3, [r7, #4]
     212:	2b00      	cmp	r3, #0
     214:	db07      	blt.n	226 <__GCC_VERSION+0x9>
     216:	4b0e      	ldr	r3, [pc, #56]	; (250 <__GCC_VERSION+0x33>)
     218:	4a0d      	ldr	r2, [pc, #52]	; (250 <__GCC_VERSION+0x33>)
     21a:	6812      	ldr	r2, [r2, #0]
     21c:	2180      	movs	r1, #128	; 0x80
     21e:	00c9      	lsls	r1, r1, #3
     220:	430a      	orrs	r2, r1
     222:	601a      	str	r2, [r3, #0]
     224:	e005      	b.n	232 <__GCC_VERSION+0x15>
     226:	4b0a      	ldr	r3, [pc, #40]	; (250 <__GCC_VERSION+0x33>)
     228:	4a09      	ldr	r2, [pc, #36]	; (250 <__GCC_VERSION+0x33>)
     22a:	6812      	ldr	r2, [r2, #0]
     22c:	4909      	ldr	r1, [pc, #36]	; (254 <__GCC_VERSION+0x37>)
     22e:	400a      	ands	r2, r1
     230:	601a      	str	r2, [r3, #0]
     232:	4c09      	ldr	r4, [pc, #36]	; (258 <__GCC_VERSION+0x3b>)
     234:	68fb      	ldr	r3, [r7, #12]
     236:	0018      	movs	r0, r3
     238:	f004 fe96 	bl	4f68 <abs>
     23c:	0003      	movs	r3, r0
     23e:	60a3      	str	r3, [r4, #8]
     240:	46c0      	nop			; (mov r8, r8)
     242:	46bd      	mov	sp, r7
     244:	b005      	add	sp, #20
     246:	bd90      	pop	{r4, r7, pc}
     248:	200008a0 	.word	0x200008a0
     24c:	00001a98 	.word	0x00001a98
     250:	400b0000 	.word	0x400b0000
     254:	fffffbff 	.word	0xfffffbff
     258:	40090000 	.word	0x40090000

0000025c <main>:
     25c:	b580      	push	{r7, lr}
     25e:	b084      	sub	sp, #16
     260:	af00      	add	r7, sp, #0
     262:	f001 fecd 	bl	2000 <SystemInit>
     266:	f000 fa3b 	bl	6e0 <mdb485_init>
     26a:	f000 fe55 	bl	f18 <mdb232_init>
     26e:	f001 fefd 	bl	206c <RemoteMacInit>
     272:	4b2f      	ldr	r3, [pc, #188]	; (330 <main+0xd4>)
     274:	60fb      	str	r3, [r7, #12]
     276:	e009      	b.n	28c <main+0x30>
     278:	68fb      	ldr	r3, [r7, #12]
     27a:	1e5a      	subs	r2, r3, #1
     27c:	60fa      	str	r2, [r7, #12]
     27e:	2b00      	cmp	r3, #0
     280:	d104      	bne.n	28c <main+0x30>
     282:	4b2c      	ldr	r3, [pc, #176]	; (334 <main+0xd8>)
     284:	0018      	movs	r0, r3
     286:	f003 f8a3 	bl	33d0 <par_save>
     28a:	e004      	b.n	296 <main+0x3a>
     28c:	4b2a      	ldr	r3, [pc, #168]	; (338 <main+0xdc>)
     28e:	681b      	ldr	r3, [r3, #0]
     290:	2208      	movs	r2, #8
     292:	4013      	ands	r3, r2
     294:	d0f0      	beq.n	278 <main+0x1c>
     296:	003b      	movs	r3, r7
     298:	0018      	movs	r0, r3
     29a:	f003 f8c5 	bl	3428 <par_read>
     29e:	003b      	movs	r3, r7
     2a0:	210c      	movs	r1, #12
     2a2:	0018      	movs	r0, r3
     2a4:	f003 f830 	bl	3308 <crc16>
     2a8:	1e03      	subs	r3, r0, #0
     2aa:	d108      	bne.n	2be <main+0x62>
     2ac:	003b      	movs	r3, r7
     2ae:	0018      	movs	r0, r3
     2b0:	f001 ff8c 	bl	21cc <EthernetConfig>
     2b4:	003b      	movs	r3, r7
     2b6:	0018      	movs	r0, r3
     2b8:	f002 fa86 	bl	27c8 <network_config>
     2bc:	e007      	b.n	2ce <main+0x72>
     2be:	4b1d      	ldr	r3, [pc, #116]	; (334 <main+0xd8>)
     2c0:	0018      	movs	r0, r3
     2c2:	f001 ff83 	bl	21cc <EthernetConfig>
     2c6:	4b1b      	ldr	r3, [pc, #108]	; (334 <main+0xd8>)
     2c8:	0018      	movs	r0, r3
     2ca:	f002 fa7d 	bl	27c8 <network_config>
     2ce:	f7ff ff3d 	bl	14c <dut_pwr_off>
     2d2:	f7ff ff45 	bl	160 <dut_reset_off>
     2d6:	4b19      	ldr	r3, [pc, #100]	; (33c <main+0xe0>)
     2d8:	0018      	movs	r0, r3
     2da:	f006 fac7 	bl	686c <osMutexCreate>
     2de:	0002      	movs	r2, r0
     2e0:	4b17      	ldr	r3, [pc, #92]	; (340 <main+0xe4>)
     2e2:	601a      	str	r2, [r3, #0]
     2e4:	f005 fcc2 	bl	5c6c <osKernelInitialize>
     2e8:	4b16      	ldr	r3, [pc, #88]	; (344 <main+0xe8>)
     2ea:	2100      	movs	r1, #0
     2ec:	0018      	movs	r0, r3
     2ee:	f006 fd9f 	bl	6e30 <osMessageCreate>
     2f2:	0002      	movs	r2, r0
     2f4:	4b14      	ldr	r3, [pc, #80]	; (348 <main+0xec>)
     2f6:	601a      	str	r2, [r3, #0]
     2f8:	4b14      	ldr	r3, [pc, #80]	; (34c <main+0xf0>)
     2fa:	2100      	movs	r1, #0
     2fc:	0018      	movs	r0, r3
     2fe:	f005 fe47 	bl	5f90 <osThreadCreate>
     302:	0002      	movs	r2, r0
     304:	4b12      	ldr	r3, [pc, #72]	; (350 <main+0xf4>)
     306:	601a      	str	r2, [r3, #0]
     308:	4b12      	ldr	r3, [pc, #72]	; (354 <main+0xf8>)
     30a:	2100      	movs	r1, #0
     30c:	0018      	movs	r0, r3
     30e:	f005 fe3f 	bl	5f90 <osThreadCreate>
     312:	0002      	movs	r2, r0
     314:	4b10      	ldr	r3, [pc, #64]	; (358 <main+0xfc>)
     316:	601a      	str	r2, [r3, #0]
     318:	4b10      	ldr	r3, [pc, #64]	; (35c <main+0x100>)
     31a:	2100      	movs	r1, #0
     31c:	0018      	movs	r0, r3
     31e:	f005 fe37 	bl	5f90 <osThreadCreate>
     322:	0002      	movs	r2, r0
     324:	4b0e      	ldr	r3, [pc, #56]	; (360 <main+0x104>)
     326:	601a      	str	r2, [r3, #0]
     328:	f005 fd3c 	bl	5da4 <osKernelStart>
     32c:	e7fe      	b.n	32c <main+0xd0>
     32e:	46c0      	nop			; (mov r8, r8)
     330:	00989680 	.word	0x00989680
     334:	0000919c 	.word	0x0000919c
     338:	400a8000 	.word	0x400a8000
     33c:	00008a88 	.word	0x00008a88
     340:	20000888 	.word	0x20000888
     344:	00008a80 	.word	0x00008a80
     348:	20000864 	.word	0x20000864
     34c:	00008a50 	.word	0x00008a50
     350:	20000858 	.word	0x20000858
     354:	00008a60 	.word	0x00008a60
     358:	2000085c 	.word	0x2000085c
     35c:	00008a70 	.word	0x00008a70
     360:	20000860 	.word	0x20000860

00000364 <TIMER1_Handler>:
     364:	b580      	push	{r7, lr}
     366:	af00      	add	r7, sp, #0
     368:	4b05      	ldr	r3, [pc, #20]	; (380 <TIMER1_Handler+0x1c>)
     36a:	2200      	movs	r2, #0
     36c:	655a      	str	r2, [r3, #84]	; 0x54
     36e:	4b05      	ldr	r3, [pc, #20]	; (384 <TIMER1_Handler+0x20>)
     370:	681b      	ldr	r3, [r3, #0]
     372:	2101      	movs	r1, #1
     374:	0018      	movs	r0, r3
     376:	f006 f9bd 	bl	66f4 <osSignalSet>
     37a:	46c0      	nop			; (mov r8, r8)
     37c:	46bd      	mov	sp, r7
     37e:	bd80      	pop	{r7, pc}
     380:	40070000 	.word	0x40070000
     384:	20000860 	.word	0x20000860

00000388 <TIMER2_Handler>:
     388:	b580      	push	{r7, lr}
     38a:	af00      	add	r7, sp, #0
     38c:	4b18      	ldr	r3, [pc, #96]	; (3f0 <TIMER2_Handler+0x68>)
     38e:	2200      	movs	r2, #0
     390:	655a      	str	r2, [r3, #84]	; 0x54
     392:	4b18      	ldr	r3, [pc, #96]	; (3f4 <TIMER2_Handler+0x6c>)
     394:	681a      	ldr	r2, [r3, #0]
     396:	4b18      	ldr	r3, [pc, #96]	; (3f8 <TIMER2_Handler+0x70>)
     398:	681b      	ldr	r3, [r3, #0]
     39a:	18d3      	adds	r3, r2, r3
     39c:	041b      	lsls	r3, r3, #16
     39e:	0c1a      	lsrs	r2, r3, #16
     3a0:	4b14      	ldr	r3, [pc, #80]	; (3f4 <TIMER2_Handler+0x6c>)
     3a2:	601a      	str	r2, [r3, #0]
     3a4:	4b15      	ldr	r3, [pc, #84]	; (3fc <TIMER2_Handler+0x74>)
     3a6:	681a      	ldr	r2, [r3, #0]
     3a8:	4b13      	ldr	r3, [pc, #76]	; (3f8 <TIMER2_Handler+0x70>)
     3aa:	681b      	ldr	r3, [r3, #0]
     3ac:	18d3      	adds	r3, r2, r3
     3ae:	041b      	lsls	r3, r3, #16
     3b0:	0c1a      	lsrs	r2, r3, #16
     3b2:	4b12      	ldr	r3, [pc, #72]	; (3fc <TIMER2_Handler+0x74>)
     3b4:	601a      	str	r2, [r3, #0]
     3b6:	4b0f      	ldr	r3, [pc, #60]	; (3f4 <TIMER2_Handler+0x6c>)
     3b8:	681b      	ldr	r3, [r3, #0]
     3ba:	4a11      	ldr	r2, [pc, #68]	; (400 <_stack_size>)
     3bc:	4293      	cmp	r3, r2
     3be:	d904      	bls.n	3ca <TIMER2_Handler+0x42>
     3c0:	4b10      	ldr	r3, [pc, #64]	; (404 <_stack_size+0x4>)
     3c2:	2280      	movs	r2, #128	; 0x80
     3c4:	0152      	lsls	r2, r2, #5
     3c6:	621a      	str	r2, [r3, #32]
     3c8:	e003      	b.n	3d2 <TIMER2_Handler+0x4a>
     3ca:	4b0e      	ldr	r3, [pc, #56]	; (404 <_stack_size+0x4>)
     3cc:	2280      	movs	r2, #128	; 0x80
     3ce:	0152      	lsls	r2, r2, #5
     3d0:	625a      	str	r2, [r3, #36]	; 0x24
     3d2:	4b0a      	ldr	r3, [pc, #40]	; (3fc <TIMER2_Handler+0x74>)
     3d4:	681b      	ldr	r3, [r3, #0]
     3d6:	4a0a      	ldr	r2, [pc, #40]	; (400 <_stack_size>)
     3d8:	4293      	cmp	r3, r2
     3da:	d903      	bls.n	3e4 <TIMER2_Handler+0x5c>
     3dc:	4b09      	ldr	r3, [pc, #36]	; (404 <_stack_size+0x4>)
     3de:	2201      	movs	r2, #1
     3e0:	621a      	str	r2, [r3, #32]
     3e2:	e002      	b.n	3ea <TIMER2_Handler+0x62>
     3e4:	4b07      	ldr	r3, [pc, #28]	; (404 <_stack_size+0x4>)
     3e6:	2201      	movs	r2, #1
     3e8:	625a      	str	r2, [r3, #36]	; 0x24
     3ea:	46c0      	nop			; (mov r8, r8)
     3ec:	46bd      	mov	sp, r7
     3ee:	bd80      	pop	{r7, pc}
     3f0:	40078000 	.word	0x40078000
     3f4:	200008a4 	.word	0x200008a4
     3f8:	2000089c 	.word	0x2000089c
     3fc:	20000000 	.word	0x20000000
     400:	00007530 	.word	0x00007530
     404:	400b0000 	.word	0x400b0000

00000408 <EXT_INT1_Handler>:
     408:	b580      	push	{r7, lr}
     40a:	af00      	add	r7, sp, #0
     40c:	201c      	movs	r0, #28
     40e:	f7ff fe77 	bl	100 <__NVIC_ClearPendingIRQ>
     412:	201c      	movs	r0, #28
     414:	f7ff fe54 	bl	c0 <__NVIC_DisableIRQ>
     418:	4b03      	ldr	r3, [pc, #12]	; (428 <EXT_INT1_Handler+0x20>)
     41a:	681b      	ldr	r3, [r3, #0]
     41c:	1c5a      	adds	r2, r3, #1
     41e:	4b02      	ldr	r3, [pc, #8]	; (428 <EXT_INT1_Handler+0x20>)
     420:	601a      	str	r2, [r3, #0]
     422:	46c0      	nop			; (mov r8, r8)
     424:	46bd      	mov	sp, r7
     426:	bd80      	pop	{r7, pc}
     428:	200008a8 	.word	0x200008a8

0000042c <threadDUTProceed>:
     42c:	b580      	push	{r7, lr}
     42e:	b092      	sub	sp, #72	; 0x48
     430:	af00      	add	r7, sp, #0
     432:	6078      	str	r0, [r7, #4]
     434:	2300      	movs	r3, #0
     436:	647b      	str	r3, [r7, #68]	; 0x44
     438:	2318      	movs	r3, #24
     43a:	18fb      	adds	r3, r7, r3
     43c:	2200      	movs	r2, #0
     43e:	601a      	str	r2, [r3, #0]
     440:	2318      	movs	r3, #24
     442:	18fb      	adds	r3, r7, r3
     444:	2200      	movs	r2, #0
     446:	605a      	str	r2, [r3, #4]
     448:	2318      	movs	r3, #24
     44a:	18fb      	adds	r3, r7, r3
     44c:	2200      	movs	r2, #0
     44e:	609a      	str	r2, [r3, #8]
     450:	2318      	movs	r3, #24
     452:	18fb      	adds	r3, r7, r3
     454:	2200      	movs	r2, #0
     456:	60da      	str	r2, [r3, #12]
     458:	2318      	movs	r3, #24
     45a:	18fb      	adds	r3, r7, r3
     45c:	2200      	movs	r2, #0
     45e:	611a      	str	r2, [r3, #16]
     460:	2318      	movs	r3, #24
     462:	18fb      	adds	r3, r7, r3
     464:	2200      	movs	r2, #0
     466:	615a      	str	r2, [r3, #20]
     468:	2318      	movs	r3, #24
     46a:	18fb      	adds	r3, r7, r3
     46c:	2200      	movs	r2, #0
     46e:	619a      	str	r2, [r3, #24]
     470:	2318      	movs	r3, #24
     472:	18fb      	adds	r3, r7, r3
     474:	2200      	movs	r2, #0
     476:	61da      	str	r2, [r3, #28]
     478:	230c      	movs	r3, #12
     47a:	18f8      	adds	r0, r7, r3
     47c:	2301      	movs	r3, #1
     47e:	425b      	negs	r3, r3
     480:	001a      	movs	r2, r3
     482:	2100      	movs	r1, #0
     484:	f006 f964 	bl	6750 <osSignalWait>
     488:	230c      	movs	r3, #12
     48a:	18fb      	adds	r3, r7, r3
     48c:	681b      	ldr	r3, [r3, #0]
     48e:	2b08      	cmp	r3, #8
     490:	d1f2      	bne.n	478 <threadDUTProceed+0x4c>
     492:	230c      	movs	r3, #12
     494:	18fb      	adds	r3, r7, r3
     496:	685b      	ldr	r3, [r3, #4]
     498:	2b02      	cmp	r3, #2
     49a:	d033      	beq.n	504 <threadDUTProceed+0xd8>
     49c:	2b08      	cmp	r3, #8
     49e:	d049      	beq.n	534 <threadDUTProceed+0x108>
     4a0:	2b01      	cmp	r3, #1
     4a2:	d16f      	bne.n	584 <threadDUTProceed+0x158>
     4a4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     4a6:	2b01      	cmp	r3, #1
     4a8:	d91f      	bls.n	4ea <threadDUTProceed+0xbe>
     4aa:	4b37      	ldr	r3, [pc, #220]	; (588 <threadDUTProceed+0x15c>)
     4ac:	681b      	ldr	r3, [r3, #0]
     4ae:	021a      	lsls	r2, r3, #8
     4b0:	2318      	movs	r3, #24
     4b2:	18fb      	adds	r3, r7, r3
     4b4:	609a      	str	r2, [r3, #8]
     4b6:	4b35      	ldr	r3, [pc, #212]	; (58c <threadDUTProceed+0x160>)
     4b8:	681a      	ldr	r2, [r3, #0]
     4ba:	2318      	movs	r3, #24
     4bc:	18fb      	adds	r3, r7, r3
     4be:	605a      	str	r2, [r3, #4]
     4c0:	f003 fdfe 	bl	40c0 <fsm_get_cyccnt>
     4c4:	0002      	movs	r2, r0
     4c6:	2318      	movs	r3, #24
     4c8:	18fb      	adds	r3, r7, r3
     4ca:	619a      	str	r2, [r3, #24]
     4cc:	f003 fdee 	bl	40ac <fsm_get_mode>
     4d0:	0003      	movs	r3, r0
     4d2:	001a      	movs	r2, r3
     4d4:	2318      	movs	r3, #24
     4d6:	18fb      	adds	r3, r7, r3
     4d8:	61da      	str	r2, [r3, #28]
     4da:	2318      	movs	r3, #24
     4dc:	18fb      	adds	r3, r7, r3
     4de:	2120      	movs	r1, #32
     4e0:	0018      	movs	r0, r3
     4e2:	f003 f815 	bl	3510 <mdb_fifo_write>
     4e6:	2300      	movs	r3, #0
     4e8:	647b      	str	r3, [r7, #68]	; 0x44
     4ea:	2301      	movs	r3, #1
     4ec:	647b      	str	r3, [r7, #68]	; 0x44
     4ee:	2204      	movs	r2, #4
     4f0:	2100      	movs	r1, #0
     4f2:	2001      	movs	r0, #1
     4f4:	f000 fd6a 	bl	fcc <mdb232_read_inputregs>
     4f8:	2202      	movs	r2, #2
     4fa:	2102      	movs	r1, #2
     4fc:	2010      	movs	r0, #16
     4fe:	f000 fa77 	bl	9f0 <mdb485_read_inputregs>
     502:	e03f      	b.n	584 <threadDUTProceed+0x158>
     504:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     506:	2202      	movs	r2, #2
     508:	4313      	orrs	r3, r2
     50a:	647b      	str	r3, [r7, #68]	; 0x44
     50c:	2318      	movs	r3, #24
     50e:	18fb      	adds	r3, r7, r3
     510:	2200      	movs	r2, #0
     512:	611a      	str	r2, [r3, #16]
     514:	f000 fe1e 	bl	1154 <mdb232_get_crc>
     518:	1e03      	subs	r3, r0, #0
     51a:	d130      	bne.n	57e <threadDUTProceed+0x152>
     51c:	2308      	movs	r3, #8
     51e:	18fb      	adds	r3, r7, r3
     520:	0018      	movs	r0, r3
     522:	f000 fe35 	bl	1190 <mdb232_bikm_get_torque>
     526:	0002      	movs	r2, r0
     528:	2318      	movs	r3, #24
     52a:	18fb      	adds	r3, r7, r3
     52c:	611a      	str	r2, [r3, #16]
     52e:	2300      	movs	r3, #0
     530:	60bb      	str	r3, [r7, #8]
     532:	e024      	b.n	57e <threadDUTProceed+0x152>
     534:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     536:	2204      	movs	r2, #4
     538:	4313      	orrs	r3, r2
     53a:	647b      	str	r3, [r7, #68]	; 0x44
     53c:	f000 face 	bl	adc <mdb485_get_crc>
     540:	1e03      	subs	r3, r0, #0
     542:	d11e      	bne.n	582 <threadDUTProceed+0x156>
     544:	f000 fab6 	bl	ab4 <mdb485_get_func>
     548:	0003      	movs	r3, r0
     54a:	643b      	str	r3, [r7, #64]	; 0x40
     54c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     54e:	2b04      	cmp	r3, #4
     550:	d117      	bne.n	582 <threadDUTProceed+0x156>
     552:	f000 fae1 	bl	b18 <mdb485_si30_get_counter>
     556:	0003      	movs	r3, r0
     558:	63fb      	str	r3, [r7, #60]	; 0x3c
     55a:	2318      	movs	r3, #24
     55c:	18fb      	adds	r3, r7, r3
     55e:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     560:	601a      	str	r2, [r3, #0]
     562:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     564:	021b      	lsls	r3, r3, #8
     566:	001a      	movs	r2, r3
     568:	2304      	movs	r3, #4
     56a:	4313      	orrs	r3, r2
     56c:	63bb      	str	r3, [r7, #56]	; 0x38
     56e:	4b08      	ldr	r3, [pc, #32]	; (590 <threadDUTProceed+0x164>)
     570:	681b      	ldr	r3, [r3, #0]
     572:	6bb9      	ldr	r1, [r7, #56]	; 0x38
     574:	2200      	movs	r2, #0
     576:	0018      	movs	r0, r3
     578:	f006 fc86 	bl	6e88 <osMessagePut>
     57c:	e001      	b.n	582 <threadDUTProceed+0x156>
     57e:	46c0      	nop			; (mov r8, r8)
     580:	e77a      	b.n	478 <threadDUTProceed+0x4c>
     582:	46c0      	nop			; (mov r8, r8)
     584:	e778      	b.n	478 <threadDUTProceed+0x4c>
     586:	46c0      	nop			; (mov r8, r8)
     588:	2000089c 	.word	0x2000089c
     58c:	200008a0 	.word	0x200008a0
     590:	20000864 	.word	0x20000864

00000594 <threadFSMProceed>:
     594:	b580      	push	{r7, lr}
     596:	b086      	sub	sp, #24
     598:	af00      	add	r7, sp, #0
     59a:	6078      	str	r0, [r7, #4]
     59c:	4b0b      	ldr	r3, [pc, #44]	; (5cc <threadFSMProceed+0x38>)
     59e:	6819      	ldr	r1, [r3, #0]
     5a0:	2308      	movs	r3, #8
     5a2:	18f8      	adds	r0, r7, r3
     5a4:	2301      	movs	r3, #1
     5a6:	425b      	negs	r3, r3
     5a8:	001a      	movs	r2, r3
     5aa:	f006 fc91 	bl	6ed0 <osMessageGet>
     5ae:	2308      	movs	r3, #8
     5b0:	18fb      	adds	r3, r7, r3
     5b2:	681b      	ldr	r3, [r3, #0]
     5b4:	2b10      	cmp	r3, #16
     5b6:	d1f1      	bne.n	59c <threadFSMProceed+0x8>
     5b8:	2308      	movs	r3, #8
     5ba:	18fb      	adds	r3, r7, r3
     5bc:	685b      	ldr	r3, [r3, #4]
     5be:	617b      	str	r3, [r7, #20]
     5c0:	4b03      	ldr	r3, [pc, #12]	; (5d0 <threadFSMProceed+0x3c>)
     5c2:	681b      	ldr	r3, [r3, #0]
     5c4:	697a      	ldr	r2, [r7, #20]
     5c6:	0010      	movs	r0, r2
     5c8:	4798      	blx	r3
     5ca:	e7e7      	b.n	59c <threadFSMProceed+0x8>
     5cc:	20000864 	.word	0x20000864
     5d0:	20000014 	.word	0x20000014

000005d4 <handler_reset>:
     5d4:	b580      	push	{r7, lr}
     5d6:	b082      	sub	sp, #8
     5d8:	af00      	add	r7, sp, #0
     5da:	4b1a      	ldr	r3, [pc, #104]	; (644 <handler_reset+0x70>)
     5dc:	607b      	str	r3, [r7, #4]
     5de:	4b1a      	ldr	r3, [pc, #104]	; (648 <handler_reset+0x74>)
     5e0:	603b      	str	r3, [r7, #0]
     5e2:	e007      	b.n	5f4 <handler_reset+0x20>
     5e4:	683b      	ldr	r3, [r7, #0]
     5e6:	1d1a      	adds	r2, r3, #4
     5e8:	603a      	str	r2, [r7, #0]
     5ea:	687a      	ldr	r2, [r7, #4]
     5ec:	1d11      	adds	r1, r2, #4
     5ee:	6079      	str	r1, [r7, #4]
     5f0:	6812      	ldr	r2, [r2, #0]
     5f2:	601a      	str	r2, [r3, #0]
     5f4:	683a      	ldr	r2, [r7, #0]
     5f6:	4b15      	ldr	r3, [pc, #84]	; (64c <handler_reset+0x78>)
     5f8:	429a      	cmp	r2, r3
     5fa:	d3f3      	bcc.n	5e4 <handler_reset+0x10>
     5fc:	4b14      	ldr	r3, [pc, #80]	; (650 <handler_reset+0x7c>)
     5fe:	607b      	str	r3, [r7, #4]
     600:	4b14      	ldr	r3, [pc, #80]	; (654 <handler_reset+0x80>)
     602:	603b      	str	r3, [r7, #0]
     604:	e007      	b.n	616 <handler_reset+0x42>
     606:	683b      	ldr	r3, [r7, #0]
     608:	1d1a      	adds	r2, r3, #4
     60a:	603a      	str	r2, [r7, #0]
     60c:	687a      	ldr	r2, [r7, #4]
     60e:	1d11      	adds	r1, r2, #4
     610:	6079      	str	r1, [r7, #4]
     612:	6812      	ldr	r2, [r2, #0]
     614:	601a      	str	r2, [r3, #0]
     616:	683a      	ldr	r2, [r7, #0]
     618:	4b0f      	ldr	r3, [pc, #60]	; (658 <handler_reset+0x84>)
     61a:	429a      	cmp	r2, r3
     61c:	d3f3      	bcc.n	606 <handler_reset+0x32>
     61e:	4b0f      	ldr	r3, [pc, #60]	; (65c <handler_reset+0x88>)
     620:	603b      	str	r3, [r7, #0]
     622:	e004      	b.n	62e <handler_reset+0x5a>
     624:	683b      	ldr	r3, [r7, #0]
     626:	1d1a      	adds	r2, r3, #4
     628:	603a      	str	r2, [r7, #0]
     62a:	2200      	movs	r2, #0
     62c:	601a      	str	r2, [r3, #0]
     62e:	683a      	ldr	r2, [r7, #0]
     630:	4b0b      	ldr	r3, [pc, #44]	; (660 <handler_reset+0x8c>)
     632:	429a      	cmp	r2, r3
     634:	d3f6      	bcc.n	624 <handler_reset+0x50>
     636:	f7ff fe11 	bl	25c <main>
     63a:	46c0      	nop			; (mov r8, r8)
     63c:	46bd      	mov	sp, r7
     63e:	b002      	add	sp, #8
     640:	bd80      	pop	{r7, pc}
     642:	46c0      	nop			; (mov r8, r8)
     644:	000095c8 	.word	0x000095c8
     648:	20000000 	.word	0x20000000
     64c:	20000858 	.word	0x20000858
     650:	00009e20 	.word	0x00009e20
     654:	20100000 	.word	0x20100000
     658:	201002a0 	.word	0x201002a0
     65c:	20000858 	.word	0x20000858
     660:	20006104 	.word	0x20006104

00000664 <default_handler>:
     664:	b580      	push	{r7, lr}
     666:	af00      	add	r7, sp, #0
     668:	e7fe      	b.n	668 <default_handler+0x4>
     66a:	46c0      	nop			; (mov r8, r8)

0000066c <__NVIC_EnableIRQ>:
     66c:	b580      	push	{r7, lr}
     66e:	b082      	sub	sp, #8
     670:	af00      	add	r7, sp, #0
     672:	0002      	movs	r2, r0
     674:	1dfb      	adds	r3, r7, #7
     676:	701a      	strb	r2, [r3, #0]
     678:	1dfb      	adds	r3, r7, #7
     67a:	781b      	ldrb	r3, [r3, #0]
     67c:	2b7f      	cmp	r3, #127	; 0x7f
     67e:	d809      	bhi.n	694 <__NVIC_EnableIRQ+0x28>
     680:	4b06      	ldr	r3, [pc, #24]	; (69c <__NVIC_EnableIRQ+0x30>)
     682:	1dfa      	adds	r2, r7, #7
     684:	7812      	ldrb	r2, [r2, #0]
     686:	0011      	movs	r1, r2
     688:	221f      	movs	r2, #31
     68a:	400a      	ands	r2, r1
     68c:	2101      	movs	r1, #1
     68e:	4091      	lsls	r1, r2
     690:	000a      	movs	r2, r1
     692:	601a      	str	r2, [r3, #0]
     694:	46c0      	nop			; (mov r8, r8)
     696:	46bd      	mov	sp, r7
     698:	b002      	add	sp, #8
     69a:	bd80      	pop	{r7, pc}
     69c:	e000e100 	.word	0xe000e100

000006a0 <__NVIC_DisableIRQ>:
     6a0:	b580      	push	{r7, lr}
     6a2:	b082      	sub	sp, #8
     6a4:	af00      	add	r7, sp, #0
     6a6:	0002      	movs	r2, r0
     6a8:	1dfb      	adds	r3, r7, #7
     6aa:	701a      	strb	r2, [r3, #0]
     6ac:	1dfb      	adds	r3, r7, #7
     6ae:	781b      	ldrb	r3, [r3, #0]
     6b0:	2b7f      	cmp	r3, #127	; 0x7f
     6b2:	d80e      	bhi.n	6d2 <__NVIC_DisableIRQ+0x32>
     6b4:	4909      	ldr	r1, [pc, #36]	; (6dc <__NVIC_DisableIRQ+0x3c>)
     6b6:	1dfb      	adds	r3, r7, #7
     6b8:	781b      	ldrb	r3, [r3, #0]
     6ba:	001a      	movs	r2, r3
     6bc:	231f      	movs	r3, #31
     6be:	4013      	ands	r3, r2
     6c0:	2201      	movs	r2, #1
     6c2:	409a      	lsls	r2, r3
     6c4:	0013      	movs	r3, r2
     6c6:	2280      	movs	r2, #128	; 0x80
     6c8:	508b      	str	r3, [r1, r2]
     6ca:	f3bf 8f4f 	dsb	sy
     6ce:	f3bf 8f6f 	isb	sy
     6d2:	46c0      	nop			; (mov r8, r8)
     6d4:	46bd      	mov	sp, r7
     6d6:	b002      	add	sp, #8
     6d8:	bd80      	pop	{r7, pc}
     6da:	46c0      	nop			; (mov r8, r8)
     6dc:	e000e100 	.word	0xe000e100

000006e0 <mdb485_init>:
     6e0:	b580      	push	{r7, lr}
     6e2:	af00      	add	r7, sp, #0
     6e4:	4b14      	ldr	r3, [pc, #80]	; (738 <mdb485_init+0x58>)
     6e6:	2234      	movs	r2, #52	; 0x34
     6e8:	625a      	str	r2, [r3, #36]	; 0x24
     6ea:	4b13      	ldr	r3, [pc, #76]	; (738 <mdb485_init+0x58>)
     6ec:	2205      	movs	r2, #5
     6ee:	629a      	str	r2, [r3, #40]	; 0x28
     6f0:	4b11      	ldr	r3, [pc, #68]	; (738 <mdb485_init+0x58>)
     6f2:	4a11      	ldr	r2, [pc, #68]	; (738 <mdb485_init+0x58>)
     6f4:	6b52      	ldr	r2, [r2, #52]	; 0x34
     6f6:	213f      	movs	r1, #63	; 0x3f
     6f8:	438a      	bics	r2, r1
     6fa:	635a      	str	r2, [r3, #52]	; 0x34
     6fc:	4b0e      	ldr	r3, [pc, #56]	; (738 <mdb485_init+0x58>)
     6fe:	4a0e      	ldr	r2, [pc, #56]	; (738 <mdb485_init+0x58>)
     700:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     702:	2110      	movs	r1, #16
     704:	430a      	orrs	r2, r1
     706:	62da      	str	r2, [r3, #44]	; 0x2c
     708:	4b0b      	ldr	r3, [pc, #44]	; (738 <mdb485_init+0x58>)
     70a:	4a0b      	ldr	r2, [pc, #44]	; (738 <mdb485_init+0x58>)
     70c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     70e:	2160      	movs	r1, #96	; 0x60
     710:	430a      	orrs	r2, r1
     712:	62da      	str	r2, [r3, #44]	; 0x2c
     714:	4b08      	ldr	r3, [pc, #32]	; (738 <mdb485_init+0x58>)
     716:	4a08      	ldr	r2, [pc, #32]	; (738 <mdb485_init+0x58>)
     718:	6b12      	ldr	r2, [r2, #48]	; 0x30
     71a:	4908      	ldr	r1, [pc, #32]	; (73c <mdb485_init+0x5c>)
     71c:	430a      	orrs	r2, r1
     71e:	631a      	str	r2, [r3, #48]	; 0x30
     720:	4b05      	ldr	r3, [pc, #20]	; (738 <mdb485_init+0x58>)
     722:	4a05      	ldr	r2, [pc, #20]	; (738 <mdb485_init+0x58>)
     724:	6b92      	ldr	r2, [r2, #56]	; 0x38
     726:	2140      	movs	r1, #64	; 0x40
     728:	430a      	orrs	r2, r1
     72a:	639a      	str	r2, [r3, #56]	; 0x38
     72c:	2007      	movs	r0, #7
     72e:	f7ff ff9d 	bl	66c <__NVIC_EnableIRQ>
     732:	46c0      	nop			; (mov r8, r8)
     734:	46bd      	mov	sp, r7
     736:	bd80      	pop	{r7, pc}
     738:	40038000 	.word	0x40038000
     73c:	00000301 	.word	0x00000301

00000740 <mdb485_send>:
     740:	b580      	push	{r7, lr}
     742:	b084      	sub	sp, #16
     744:	af00      	add	r7, sp, #0
     746:	6078      	str	r0, [r7, #4]
     748:	6039      	str	r1, [r7, #0]
     74a:	4b17      	ldr	r3, [pc, #92]	; (7a8 <mdb485_send+0x68>)
     74c:	4a16      	ldr	r2, [pc, #88]	; (7a8 <mdb485_send+0x68>)
     74e:	6812      	ldr	r2, [r2, #0]
     750:	2180      	movs	r1, #128	; 0x80
     752:	0209      	lsls	r1, r1, #8
     754:	430a      	orrs	r2, r1
     756:	601a      	str	r2, [r3, #0]
     758:	2300      	movs	r3, #0
     75a:	60fb      	str	r3, [r7, #12]
     75c:	e00e      	b.n	77c <mdb485_send+0x3c>
     75e:	46c0      	nop			; (mov r8, r8)
     760:	4b12      	ldr	r3, [pc, #72]	; (7ac <mdb485_send+0x6c>)
     762:	699b      	ldr	r3, [r3, #24]
     764:	2220      	movs	r2, #32
     766:	4013      	ands	r3, r2
     768:	d1fa      	bne.n	760 <mdb485_send+0x20>
     76a:	4a10      	ldr	r2, [pc, #64]	; (7ac <mdb485_send+0x6c>)
     76c:	687b      	ldr	r3, [r7, #4]
     76e:	1c59      	adds	r1, r3, #1
     770:	6079      	str	r1, [r7, #4]
     772:	781b      	ldrb	r3, [r3, #0]
     774:	6013      	str	r3, [r2, #0]
     776:	68fb      	ldr	r3, [r7, #12]
     778:	3301      	adds	r3, #1
     77a:	60fb      	str	r3, [r7, #12]
     77c:	68fa      	ldr	r2, [r7, #12]
     77e:	683b      	ldr	r3, [r7, #0]
     780:	429a      	cmp	r2, r3
     782:	dbec      	blt.n	75e <mdb485_send+0x1e>
     784:	46c0      	nop			; (mov r8, r8)
     786:	4b09      	ldr	r3, [pc, #36]	; (7ac <mdb485_send+0x6c>)
     788:	699b      	ldr	r3, [r3, #24]
     78a:	2208      	movs	r2, #8
     78c:	4013      	ands	r3, r2
     78e:	d1fa      	bne.n	786 <mdb485_send+0x46>
     790:	4b05      	ldr	r3, [pc, #20]	; (7a8 <mdb485_send+0x68>)
     792:	4a05      	ldr	r2, [pc, #20]	; (7a8 <mdb485_send+0x68>)
     794:	6812      	ldr	r2, [r2, #0]
     796:	4906      	ldr	r1, [pc, #24]	; (7b0 <mdb485_send+0x70>)
     798:	400a      	ands	r2, r1
     79a:	601a      	str	r2, [r3, #0]
     79c:	683b      	ldr	r3, [r7, #0]
     79e:	0018      	movs	r0, r3
     7a0:	46bd      	mov	sp, r7
     7a2:	b004      	add	sp, #16
     7a4:	bd80      	pop	{r7, pc}
     7a6:	46c0      	nop			; (mov r8, r8)
     7a8:	400c0000 	.word	0x400c0000
     7ac:	40038000 	.word	0x40038000
     7b0:	ffff7fff 	.word	0xffff7fff

000007b4 <mdb485_putch>:
     7b4:	b580      	push	{r7, lr}
     7b6:	b082      	sub	sp, #8
     7b8:	af00      	add	r7, sp, #0
     7ba:	0002      	movs	r2, r0
     7bc:	1dfb      	adds	r3, r7, #7
     7be:	701a      	strb	r2, [r3, #0]
     7c0:	46c0      	nop			; (mov r8, r8)
     7c2:	4b06      	ldr	r3, [pc, #24]	; (7dc <mdb485_putch+0x28>)
     7c4:	699b      	ldr	r3, [r3, #24]
     7c6:	2220      	movs	r2, #32
     7c8:	4013      	ands	r3, r2
     7ca:	d1fa      	bne.n	7c2 <mdb485_putch+0xe>
     7cc:	4b03      	ldr	r3, [pc, #12]	; (7dc <mdb485_putch+0x28>)
     7ce:	1dfa      	adds	r2, r7, #7
     7d0:	7812      	ldrb	r2, [r2, #0]
     7d2:	601a      	str	r2, [r3, #0]
     7d4:	46c0      	nop			; (mov r8, r8)
     7d6:	46bd      	mov	sp, r7
     7d8:	b002      	add	sp, #8
     7da:	bd80      	pop	{r7, pc}
     7dc:	40038000 	.word	0x40038000

000007e0 <mdb485_writeregs>:
     7e0:	b590      	push	{r4, r7, lr}
     7e2:	b089      	sub	sp, #36	; 0x24
     7e4:	af00      	add	r7, sp, #0
     7e6:	0004      	movs	r4, r0
     7e8:	0008      	movs	r0, r1
     7ea:	0011      	movs	r1, r2
     7ec:	607b      	str	r3, [r7, #4]
     7ee:	230f      	movs	r3, #15
     7f0:	18fb      	adds	r3, r7, r3
     7f2:	1c22      	adds	r2, r4, #0
     7f4:	701a      	strb	r2, [r3, #0]
     7f6:	230c      	movs	r3, #12
     7f8:	18fb      	adds	r3, r7, r3
     7fa:	1c02      	adds	r2, r0, #0
     7fc:	801a      	strh	r2, [r3, #0]
     7fe:	230a      	movs	r3, #10
     800:	18fb      	adds	r3, r7, r3
     802:	1c0a      	adds	r2, r1, #0
     804:	801a      	strh	r2, [r3, #0]
     806:	4b48      	ldr	r3, [pc, #288]	; (928 <mdb485_writeregs+0x148>)
     808:	61bb      	str	r3, [r7, #24]
     80a:	230a      	movs	r3, #10
     80c:	18fb      	adds	r3, r7, r3
     80e:	881b      	ldrh	r3, [r3, #0]
     810:	005b      	lsls	r3, r3, #1
     812:	617b      	str	r3, [r7, #20]
     814:	69bb      	ldr	r3, [r7, #24]
     816:	1c5a      	adds	r2, r3, #1
     818:	61ba      	str	r2, [r7, #24]
     81a:	220f      	movs	r2, #15
     81c:	18ba      	adds	r2, r7, r2
     81e:	7812      	ldrb	r2, [r2, #0]
     820:	701a      	strb	r2, [r3, #0]
     822:	69bb      	ldr	r3, [r7, #24]
     824:	1c5a      	adds	r2, r3, #1
     826:	61ba      	str	r2, [r7, #24]
     828:	2210      	movs	r2, #16
     82a:	701a      	strb	r2, [r3, #0]
     82c:	69bb      	ldr	r3, [r7, #24]
     82e:	1c5a      	adds	r2, r3, #1
     830:	61ba      	str	r2, [r7, #24]
     832:	220c      	movs	r2, #12
     834:	18ba      	adds	r2, r7, r2
     836:	8812      	ldrh	r2, [r2, #0]
     838:	0a12      	lsrs	r2, r2, #8
     83a:	b292      	uxth	r2, r2
     83c:	b2d2      	uxtb	r2, r2
     83e:	701a      	strb	r2, [r3, #0]
     840:	69bb      	ldr	r3, [r7, #24]
     842:	1c5a      	adds	r2, r3, #1
     844:	61ba      	str	r2, [r7, #24]
     846:	220c      	movs	r2, #12
     848:	18ba      	adds	r2, r7, r2
     84a:	8812      	ldrh	r2, [r2, #0]
     84c:	b2d2      	uxtb	r2, r2
     84e:	701a      	strb	r2, [r3, #0]
     850:	69bb      	ldr	r3, [r7, #24]
     852:	1c5a      	adds	r2, r3, #1
     854:	61ba      	str	r2, [r7, #24]
     856:	220a      	movs	r2, #10
     858:	18ba      	adds	r2, r7, r2
     85a:	8812      	ldrh	r2, [r2, #0]
     85c:	0a12      	lsrs	r2, r2, #8
     85e:	b292      	uxth	r2, r2
     860:	b2d2      	uxtb	r2, r2
     862:	701a      	strb	r2, [r3, #0]
     864:	69bb      	ldr	r3, [r7, #24]
     866:	1c5a      	adds	r2, r3, #1
     868:	61ba      	str	r2, [r7, #24]
     86a:	220a      	movs	r2, #10
     86c:	18ba      	adds	r2, r7, r2
     86e:	8812      	ldrh	r2, [r2, #0]
     870:	b2d2      	uxtb	r2, r2
     872:	701a      	strb	r2, [r3, #0]
     874:	69bb      	ldr	r3, [r7, #24]
     876:	1c5a      	adds	r2, r3, #1
     878:	61ba      	str	r2, [r7, #24]
     87a:	697a      	ldr	r2, [r7, #20]
     87c:	b2d2      	uxtb	r2, r2
     87e:	701a      	strb	r2, [r3, #0]
     880:	697b      	ldr	r3, [r7, #20]
     882:	3307      	adds	r3, #7
     884:	2b10      	cmp	r3, #16
     886:	dc4a      	bgt.n	91e <mdb485_writeregs+0x13e>
     888:	2300      	movs	r3, #0
     88a:	61fb      	str	r3, [r7, #28]
     88c:	e01b      	b.n	8c6 <mdb485_writeregs+0xe6>
     88e:	687b      	ldr	r3, [r7, #4]
     890:	1c9a      	adds	r2, r3, #2
     892:	607a      	str	r2, [r7, #4]
     894:	2212      	movs	r2, #18
     896:	18ba      	adds	r2, r7, r2
     898:	881b      	ldrh	r3, [r3, #0]
     89a:	8013      	strh	r3, [r2, #0]
     89c:	69bb      	ldr	r3, [r7, #24]
     89e:	1c5a      	adds	r2, r3, #1
     8a0:	61ba      	str	r2, [r7, #24]
     8a2:	2212      	movs	r2, #18
     8a4:	18ba      	adds	r2, r7, r2
     8a6:	8812      	ldrh	r2, [r2, #0]
     8a8:	0a12      	lsrs	r2, r2, #8
     8aa:	b292      	uxth	r2, r2
     8ac:	b2d2      	uxtb	r2, r2
     8ae:	701a      	strb	r2, [r3, #0]
     8b0:	69bb      	ldr	r3, [r7, #24]
     8b2:	1c5a      	adds	r2, r3, #1
     8b4:	61ba      	str	r2, [r7, #24]
     8b6:	2212      	movs	r2, #18
     8b8:	18ba      	adds	r2, r7, r2
     8ba:	8812      	ldrh	r2, [r2, #0]
     8bc:	b2d2      	uxtb	r2, r2
     8be:	701a      	strb	r2, [r3, #0]
     8c0:	69fb      	ldr	r3, [r7, #28]
     8c2:	3301      	adds	r3, #1
     8c4:	61fb      	str	r3, [r7, #28]
     8c6:	230a      	movs	r3, #10
     8c8:	18fb      	adds	r3, r7, r3
     8ca:	881a      	ldrh	r2, [r3, #0]
     8cc:	69fb      	ldr	r3, [r7, #28]
     8ce:	429a      	cmp	r2, r3
     8d0:	dcdd      	bgt.n	88e <mdb485_writeregs+0xae>
     8d2:	697b      	ldr	r3, [r7, #20]
     8d4:	1dda      	adds	r2, r3, #7
     8d6:	2310      	movs	r3, #16
     8d8:	18fc      	adds	r4, r7, r3
     8da:	4b13      	ldr	r3, [pc, #76]	; (928 <mdb485_writeregs+0x148>)
     8dc:	0011      	movs	r1, r2
     8de:	0018      	movs	r0, r3
     8e0:	f002 fd12 	bl	3308 <crc16>
     8e4:	0003      	movs	r3, r0
     8e6:	8023      	strh	r3, [r4, #0]
     8e8:	69bb      	ldr	r3, [r7, #24]
     8ea:	1c5a      	adds	r2, r3, #1
     8ec:	61ba      	str	r2, [r7, #24]
     8ee:	2210      	movs	r2, #16
     8f0:	18ba      	adds	r2, r7, r2
     8f2:	8812      	ldrh	r2, [r2, #0]
     8f4:	b2d2      	uxtb	r2, r2
     8f6:	701a      	strb	r2, [r3, #0]
     8f8:	69bb      	ldr	r3, [r7, #24]
     8fa:	1c5a      	adds	r2, r3, #1
     8fc:	61ba      	str	r2, [r7, #24]
     8fe:	2210      	movs	r2, #16
     900:	18ba      	adds	r2, r7, r2
     902:	8812      	ldrh	r2, [r2, #0]
     904:	0a12      	lsrs	r2, r2, #8
     906:	b292      	uxth	r2, r2
     908:	b2d2      	uxtb	r2, r2
     90a:	701a      	strb	r2, [r3, #0]
     90c:	697b      	ldr	r3, [r7, #20]
     90e:	3309      	adds	r3, #9
     910:	001a      	movs	r2, r3
     912:	4b05      	ldr	r3, [pc, #20]	; (928 <mdb485_writeregs+0x148>)
     914:	0011      	movs	r1, r2
     916:	0018      	movs	r0, r3
     918:	f7ff ff12 	bl	740 <mdb485_send>
     91c:	e000      	b.n	920 <mdb485_writeregs+0x140>
     91e:	46c0      	nop			; (mov r8, r8)
     920:	46bd      	mov	sp, r7
     922:	b009      	add	sp, #36	; 0x24
     924:	bd90      	pop	{r4, r7, pc}
     926:	46c0      	nop			; (mov r8, r8)
     928:	200008bc 	.word	0x200008bc

0000092c <mdb485_readregs>:
     92c:	b590      	push	{r4, r7, lr}
     92e:	b085      	sub	sp, #20
     930:	af00      	add	r7, sp, #0
     932:	0004      	movs	r4, r0
     934:	0008      	movs	r0, r1
     936:	0011      	movs	r1, r2
     938:	1dfb      	adds	r3, r7, #7
     93a:	1c22      	adds	r2, r4, #0
     93c:	701a      	strb	r2, [r3, #0]
     93e:	1d3b      	adds	r3, r7, #4
     940:	1c02      	adds	r2, r0, #0
     942:	801a      	strh	r2, [r3, #0]
     944:	1cbb      	adds	r3, r7, #2
     946:	1c0a      	adds	r2, r1, #0
     948:	801a      	strh	r2, [r3, #0]
     94a:	4b28      	ldr	r3, [pc, #160]	; (9ec <mdb485_readregs+0xc0>)
     94c:	60fb      	str	r3, [r7, #12]
     94e:	68fb      	ldr	r3, [r7, #12]
     950:	1c5a      	adds	r2, r3, #1
     952:	60fa      	str	r2, [r7, #12]
     954:	1dfa      	adds	r2, r7, #7
     956:	7812      	ldrb	r2, [r2, #0]
     958:	701a      	strb	r2, [r3, #0]
     95a:	68fb      	ldr	r3, [r7, #12]
     95c:	1c5a      	adds	r2, r3, #1
     95e:	60fa      	str	r2, [r7, #12]
     960:	2203      	movs	r2, #3
     962:	701a      	strb	r2, [r3, #0]
     964:	68fb      	ldr	r3, [r7, #12]
     966:	1c5a      	adds	r2, r3, #1
     968:	60fa      	str	r2, [r7, #12]
     96a:	1d3a      	adds	r2, r7, #4
     96c:	8812      	ldrh	r2, [r2, #0]
     96e:	0a12      	lsrs	r2, r2, #8
     970:	b292      	uxth	r2, r2
     972:	b2d2      	uxtb	r2, r2
     974:	701a      	strb	r2, [r3, #0]
     976:	68fb      	ldr	r3, [r7, #12]
     978:	1c5a      	adds	r2, r3, #1
     97a:	60fa      	str	r2, [r7, #12]
     97c:	1d3a      	adds	r2, r7, #4
     97e:	8812      	ldrh	r2, [r2, #0]
     980:	b2d2      	uxtb	r2, r2
     982:	701a      	strb	r2, [r3, #0]
     984:	68fb      	ldr	r3, [r7, #12]
     986:	1c5a      	adds	r2, r3, #1
     988:	60fa      	str	r2, [r7, #12]
     98a:	1cba      	adds	r2, r7, #2
     98c:	8812      	ldrh	r2, [r2, #0]
     98e:	0a12      	lsrs	r2, r2, #8
     990:	b292      	uxth	r2, r2
     992:	b2d2      	uxtb	r2, r2
     994:	701a      	strb	r2, [r3, #0]
     996:	68fb      	ldr	r3, [r7, #12]
     998:	1c5a      	adds	r2, r3, #1
     99a:	60fa      	str	r2, [r7, #12]
     99c:	1cba      	adds	r2, r7, #2
     99e:	8812      	ldrh	r2, [r2, #0]
     9a0:	b2d2      	uxtb	r2, r2
     9a2:	701a      	strb	r2, [r3, #0]
     9a4:	230a      	movs	r3, #10
     9a6:	18fc      	adds	r4, r7, r3
     9a8:	4b10      	ldr	r3, [pc, #64]	; (9ec <mdb485_readregs+0xc0>)
     9aa:	2106      	movs	r1, #6
     9ac:	0018      	movs	r0, r3
     9ae:	f002 fcab 	bl	3308 <crc16>
     9b2:	0003      	movs	r3, r0
     9b4:	8023      	strh	r3, [r4, #0]
     9b6:	68fb      	ldr	r3, [r7, #12]
     9b8:	1c5a      	adds	r2, r3, #1
     9ba:	60fa      	str	r2, [r7, #12]
     9bc:	220a      	movs	r2, #10
     9be:	18ba      	adds	r2, r7, r2
     9c0:	8812      	ldrh	r2, [r2, #0]
     9c2:	b2d2      	uxtb	r2, r2
     9c4:	701a      	strb	r2, [r3, #0]
     9c6:	68fb      	ldr	r3, [r7, #12]
     9c8:	1c5a      	adds	r2, r3, #1
     9ca:	60fa      	str	r2, [r7, #12]
     9cc:	220a      	movs	r2, #10
     9ce:	18ba      	adds	r2, r7, r2
     9d0:	8812      	ldrh	r2, [r2, #0]
     9d2:	0a12      	lsrs	r2, r2, #8
     9d4:	b292      	uxth	r2, r2
     9d6:	b2d2      	uxtb	r2, r2
     9d8:	701a      	strb	r2, [r3, #0]
     9da:	4b04      	ldr	r3, [pc, #16]	; (9ec <mdb485_readregs+0xc0>)
     9dc:	2108      	movs	r1, #8
     9de:	0018      	movs	r0, r3
     9e0:	f7ff feae 	bl	740 <mdb485_send>
     9e4:	46c0      	nop			; (mov r8, r8)
     9e6:	46bd      	mov	sp, r7
     9e8:	b005      	add	sp, #20
     9ea:	bd90      	pop	{r4, r7, pc}
     9ec:	200008bc 	.word	0x200008bc

000009f0 <mdb485_read_inputregs>:
     9f0:	b590      	push	{r4, r7, lr}
     9f2:	b085      	sub	sp, #20
     9f4:	af00      	add	r7, sp, #0
     9f6:	0004      	movs	r4, r0
     9f8:	0008      	movs	r0, r1
     9fa:	0011      	movs	r1, r2
     9fc:	1dfb      	adds	r3, r7, #7
     9fe:	1c22      	adds	r2, r4, #0
     a00:	701a      	strb	r2, [r3, #0]
     a02:	1d3b      	adds	r3, r7, #4
     a04:	1c02      	adds	r2, r0, #0
     a06:	801a      	strh	r2, [r3, #0]
     a08:	1cbb      	adds	r3, r7, #2
     a0a:	1c0a      	adds	r2, r1, #0
     a0c:	801a      	strh	r2, [r3, #0]
     a0e:	4b28      	ldr	r3, [pc, #160]	; (ab0 <mdb485_read_inputregs+0xc0>)
     a10:	60fb      	str	r3, [r7, #12]
     a12:	68fb      	ldr	r3, [r7, #12]
     a14:	1c5a      	adds	r2, r3, #1
     a16:	60fa      	str	r2, [r7, #12]
     a18:	1dfa      	adds	r2, r7, #7
     a1a:	7812      	ldrb	r2, [r2, #0]
     a1c:	701a      	strb	r2, [r3, #0]
     a1e:	68fb      	ldr	r3, [r7, #12]
     a20:	1c5a      	adds	r2, r3, #1
     a22:	60fa      	str	r2, [r7, #12]
     a24:	2204      	movs	r2, #4
     a26:	701a      	strb	r2, [r3, #0]
     a28:	68fb      	ldr	r3, [r7, #12]
     a2a:	1c5a      	adds	r2, r3, #1
     a2c:	60fa      	str	r2, [r7, #12]
     a2e:	1d3a      	adds	r2, r7, #4
     a30:	8812      	ldrh	r2, [r2, #0]
     a32:	0a12      	lsrs	r2, r2, #8
     a34:	b292      	uxth	r2, r2
     a36:	b2d2      	uxtb	r2, r2
     a38:	701a      	strb	r2, [r3, #0]
     a3a:	68fb      	ldr	r3, [r7, #12]
     a3c:	1c5a      	adds	r2, r3, #1
     a3e:	60fa      	str	r2, [r7, #12]
     a40:	1d3a      	adds	r2, r7, #4
     a42:	8812      	ldrh	r2, [r2, #0]
     a44:	b2d2      	uxtb	r2, r2
     a46:	701a      	strb	r2, [r3, #0]
     a48:	68fb      	ldr	r3, [r7, #12]
     a4a:	1c5a      	adds	r2, r3, #1
     a4c:	60fa      	str	r2, [r7, #12]
     a4e:	1cba      	adds	r2, r7, #2
     a50:	8812      	ldrh	r2, [r2, #0]
     a52:	0a12      	lsrs	r2, r2, #8
     a54:	b292      	uxth	r2, r2
     a56:	b2d2      	uxtb	r2, r2
     a58:	701a      	strb	r2, [r3, #0]
     a5a:	68fb      	ldr	r3, [r7, #12]
     a5c:	1c5a      	adds	r2, r3, #1
     a5e:	60fa      	str	r2, [r7, #12]
     a60:	1cba      	adds	r2, r7, #2
     a62:	8812      	ldrh	r2, [r2, #0]
     a64:	b2d2      	uxtb	r2, r2
     a66:	701a      	strb	r2, [r3, #0]
     a68:	230a      	movs	r3, #10
     a6a:	18fc      	adds	r4, r7, r3
     a6c:	4b10      	ldr	r3, [pc, #64]	; (ab0 <mdb485_read_inputregs+0xc0>)
     a6e:	2106      	movs	r1, #6
     a70:	0018      	movs	r0, r3
     a72:	f002 fc49 	bl	3308 <crc16>
     a76:	0003      	movs	r3, r0
     a78:	8023      	strh	r3, [r4, #0]
     a7a:	68fb      	ldr	r3, [r7, #12]
     a7c:	1c5a      	adds	r2, r3, #1
     a7e:	60fa      	str	r2, [r7, #12]
     a80:	220a      	movs	r2, #10
     a82:	18ba      	adds	r2, r7, r2
     a84:	8812      	ldrh	r2, [r2, #0]
     a86:	b2d2      	uxtb	r2, r2
     a88:	701a      	strb	r2, [r3, #0]
     a8a:	68fb      	ldr	r3, [r7, #12]
     a8c:	1c5a      	adds	r2, r3, #1
     a8e:	60fa      	str	r2, [r7, #12]
     a90:	220a      	movs	r2, #10
     a92:	18ba      	adds	r2, r7, r2
     a94:	8812      	ldrh	r2, [r2, #0]
     a96:	0a12      	lsrs	r2, r2, #8
     a98:	b292      	uxth	r2, r2
     a9a:	b2d2      	uxtb	r2, r2
     a9c:	701a      	strb	r2, [r3, #0]
     a9e:	4b04      	ldr	r3, [pc, #16]	; (ab0 <mdb485_read_inputregs+0xc0>)
     aa0:	2108      	movs	r1, #8
     aa2:	0018      	movs	r0, r3
     aa4:	f7ff fe4c 	bl	740 <mdb485_send>
     aa8:	46c0      	nop			; (mov r8, r8)
     aaa:	46bd      	mov	sp, r7
     aac:	b005      	add	sp, #20
     aae:	bd90      	pop	{r4, r7, pc}
     ab0:	200008bc 	.word	0x200008bc

00000ab4 <mdb485_get_func>:
     ab4:	b580      	push	{r7, lr}
     ab6:	b082      	sub	sp, #8
     ab8:	af00      	add	r7, sp, #0
     aba:	2007      	movs	r0, #7
     abc:	f7ff fdf0 	bl	6a0 <__NVIC_DisableIRQ>
     ac0:	4b05      	ldr	r3, [pc, #20]	; (ad8 <mdb485_get_func+0x24>)
     ac2:	785b      	ldrb	r3, [r3, #1]
     ac4:	607b      	str	r3, [r7, #4]
     ac6:	2007      	movs	r0, #7
     ac8:	f7ff fdd0 	bl	66c <__NVIC_EnableIRQ>
     acc:	687b      	ldr	r3, [r7, #4]
     ace:	0018      	movs	r0, r3
     ad0:	46bd      	mov	sp, r7
     ad2:	b002      	add	sp, #8
     ad4:	bd80      	pop	{r7, pc}
     ad6:	46c0      	nop			; (mov r8, r8)
     ad8:	200008ac 	.word	0x200008ac

00000adc <mdb485_get_crc>:
     adc:	b590      	push	{r4, r7, lr}
     ade:	b083      	sub	sp, #12
     ae0:	af00      	add	r7, sp, #0
     ae2:	2007      	movs	r0, #7
     ae4:	f7ff fddc 	bl	6a0 <__NVIC_DisableIRQ>
     ae8:	4b09      	ldr	r3, [pc, #36]	; (b10 <mdb485_get_crc+0x34>)
     aea:	681a      	ldr	r2, [r3, #0]
     aec:	1dbc      	adds	r4, r7, #6
     aee:	4b09      	ldr	r3, [pc, #36]	; (b14 <mdb485_get_crc+0x38>)
     af0:	0011      	movs	r1, r2
     af2:	0018      	movs	r0, r3
     af4:	f002 fc08 	bl	3308 <crc16>
     af8:	0003      	movs	r3, r0
     afa:	8023      	strh	r3, [r4, #0]
     afc:	2007      	movs	r0, #7
     afe:	f7ff fdb5 	bl	66c <__NVIC_EnableIRQ>
     b02:	1dbb      	adds	r3, r7, #6
     b04:	881b      	ldrh	r3, [r3, #0]
     b06:	0018      	movs	r0, r3
     b08:	46bd      	mov	sp, r7
     b0a:	b003      	add	sp, #12
     b0c:	bd90      	pop	{r4, r7, pc}
     b0e:	46c0      	nop			; (mov r8, r8)
     b10:	200008cc 	.word	0x200008cc
     b14:	200008ac 	.word	0x200008ac

00000b18 <mdb485_si30_get_counter>:
     b18:	b580      	push	{r7, lr}
     b1a:	b082      	sub	sp, #8
     b1c:	af00      	add	r7, sp, #0
     b1e:	4b1a      	ldr	r3, [pc, #104]	; (b88 <mdb485_si30_get_counter+0x70>)
     b20:	607b      	str	r3, [r7, #4]
     b22:	2007      	movs	r0, #7
     b24:	f7ff fdbc 	bl	6a0 <__NVIC_DisableIRQ>
     b28:	4b18      	ldr	r3, [pc, #96]	; (b8c <mdb485_si30_get_counter+0x74>)
     b2a:	681b      	ldr	r3, [r3, #0]
     b2c:	2b00      	cmp	r3, #0
     b2e:	d022      	beq.n	b76 <mdb485_si30_get_counter+0x5e>
     b30:	687b      	ldr	r3, [r7, #4]
     b32:	1c5a      	adds	r2, r3, #1
     b34:	607a      	str	r2, [r7, #4]
     b36:	781b      	ldrb	r3, [r3, #0]
     b38:	061b      	lsls	r3, r3, #24
     b3a:	603b      	str	r3, [r7, #0]
     b3c:	687b      	ldr	r3, [r7, #4]
     b3e:	1c5a      	adds	r2, r3, #1
     b40:	607a      	str	r2, [r7, #4]
     b42:	781b      	ldrb	r3, [r3, #0]
     b44:	041b      	lsls	r3, r3, #16
     b46:	001a      	movs	r2, r3
     b48:	683b      	ldr	r3, [r7, #0]
     b4a:	4313      	orrs	r3, r2
     b4c:	603b      	str	r3, [r7, #0]
     b4e:	687b      	ldr	r3, [r7, #4]
     b50:	1c5a      	adds	r2, r3, #1
     b52:	607a      	str	r2, [r7, #4]
     b54:	781b      	ldrb	r3, [r3, #0]
     b56:	021b      	lsls	r3, r3, #8
     b58:	001a      	movs	r2, r3
     b5a:	683b      	ldr	r3, [r7, #0]
     b5c:	4313      	orrs	r3, r2
     b5e:	603b      	str	r3, [r7, #0]
     b60:	687b      	ldr	r3, [r7, #4]
     b62:	781b      	ldrb	r3, [r3, #0]
     b64:	001a      	movs	r2, r3
     b66:	683b      	ldr	r3, [r7, #0]
     b68:	4313      	orrs	r3, r2
     b6a:	603b      	str	r3, [r7, #0]
     b6c:	2007      	movs	r0, #7
     b6e:	f7ff fd7d 	bl	66c <__NVIC_EnableIRQ>
     b72:	683b      	ldr	r3, [r7, #0]
     b74:	e003      	b.n	b7e <mdb485_si30_get_counter+0x66>
     b76:	2007      	movs	r0, #7
     b78:	f7ff fd78 	bl	66c <__NVIC_EnableIRQ>
     b7c:	2300      	movs	r3, #0
     b7e:	0018      	movs	r0, r3
     b80:	46bd      	mov	sp, r7
     b82:	b002      	add	sp, #8
     b84:	bd80      	pop	{r7, pc}
     b86:	46c0      	nop			; (mov r8, r8)
     b88:	200008af 	.word	0x200008af
     b8c:	200008cc 	.word	0x200008cc

00000b90 <UART2_Handler>:
     b90:	b580      	push	{r7, lr}
     b92:	b082      	sub	sp, #8
     b94:	af00      	add	r7, sp, #0
     b96:	4b16      	ldr	r3, [pc, #88]	; (bf0 <UART2_Handler+0x60>)
     b98:	2200      	movs	r2, #0
     b9a:	601a      	str	r2, [r3, #0]
     b9c:	4b15      	ldr	r3, [pc, #84]	; (bf4 <UART2_Handler+0x64>)
     b9e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     ba0:	2240      	movs	r2, #64	; 0x40
     ba2:	4013      	ands	r3, r2
     ba4:	d016      	beq.n	bd4 <UART2_Handler+0x44>
     ba6:	4b14      	ldr	r3, [pc, #80]	; (bf8 <UART2_Handler+0x68>)
     ba8:	603b      	str	r3, [r7, #0]
     baa:	2300      	movs	r3, #0
     bac:	607b      	str	r3, [r7, #4]
     bae:	e009      	b.n	bc4 <UART2_Handler+0x34>
     bb0:	683b      	ldr	r3, [r7, #0]
     bb2:	1c5a      	adds	r2, r3, #1
     bb4:	603a      	str	r2, [r7, #0]
     bb6:	4a0f      	ldr	r2, [pc, #60]	; (bf4 <UART2_Handler+0x64>)
     bb8:	6812      	ldr	r2, [r2, #0]
     bba:	b2d2      	uxtb	r2, r2
     bbc:	701a      	strb	r2, [r3, #0]
     bbe:	687b      	ldr	r3, [r7, #4]
     bc0:	3301      	adds	r3, #1
     bc2:	607b      	str	r3, [r7, #4]
     bc4:	687b      	ldr	r3, [r7, #4]
     bc6:	2b0f      	cmp	r3, #15
     bc8:	dc04      	bgt.n	bd4 <UART2_Handler+0x44>
     bca:	4b0a      	ldr	r3, [pc, #40]	; (bf4 <UART2_Handler+0x64>)
     bcc:	699b      	ldr	r3, [r3, #24]
     bce:	2210      	movs	r2, #16
     bd0:	4013      	ands	r3, r2
     bd2:	d0ed      	beq.n	bb0 <UART2_Handler+0x20>
     bd4:	4b06      	ldr	r3, [pc, #24]	; (bf0 <UART2_Handler+0x60>)
     bd6:	687a      	ldr	r2, [r7, #4]
     bd8:	601a      	str	r2, [r3, #0]
     bda:	4b08      	ldr	r3, [pc, #32]	; (bfc <UART2_Handler+0x6c>)
     bdc:	681b      	ldr	r3, [r3, #0]
     bde:	2108      	movs	r1, #8
     be0:	0018      	movs	r0, r3
     be2:	f005 fd87 	bl	66f4 <osSignalSet>
     be6:	46c0      	nop			; (mov r8, r8)
     be8:	46bd      	mov	sp, r7
     bea:	b002      	add	sp, #8
     bec:	bd80      	pop	{r7, pc}
     bee:	46c0      	nop			; (mov r8, r8)
     bf0:	200008cc 	.word	0x200008cc
     bf4:	40038000 	.word	0x40038000
     bf8:	200008ac 	.word	0x200008ac
     bfc:	20000860 	.word	0x20000860

00000c00 <_exit>:
     c00:	b580      	push	{r7, lr}
     c02:	b082      	sub	sp, #8
     c04:	af00      	add	r7, sp, #0
     c06:	6078      	str	r0, [r7, #4]
     c08:	4b03      	ldr	r3, [pc, #12]	; (c18 <_exit+0x18>)
     c0a:	2204      	movs	r2, #4
     c0c:	0019      	movs	r1, r3
     c0e:	2001      	movs	r0, #1
     c10:	f000 f90c 	bl	e2c <_write>
     c14:	e7fe      	b.n	c14 <_exit+0x14>
     c16:	46c0      	nop			; (mov r8, r8)
     c18:	00008a8c 	.word	0x00008a8c

00000c1c <_close>:
     c1c:	b580      	push	{r7, lr}
     c1e:	b082      	sub	sp, #8
     c20:	af00      	add	r7, sp, #0
     c22:	6078      	str	r0, [r7, #4]
     c24:	2301      	movs	r3, #1
     c26:	425b      	negs	r3, r3
     c28:	0018      	movs	r0, r3
     c2a:	46bd      	mov	sp, r7
     c2c:	b002      	add	sp, #8
     c2e:	bd80      	pop	{r7, pc}

00000c30 <_execve>:
     c30:	b580      	push	{r7, lr}
     c32:	b084      	sub	sp, #16
     c34:	af00      	add	r7, sp, #0
     c36:	60f8      	str	r0, [r7, #12]
     c38:	60b9      	str	r1, [r7, #8]
     c3a:	607a      	str	r2, [r7, #4]
     c3c:	4b04      	ldr	r3, [pc, #16]	; (c50 <_execve+0x20>)
     c3e:	220c      	movs	r2, #12
     c40:	601a      	str	r2, [r3, #0]
     c42:	2301      	movs	r3, #1
     c44:	425b      	negs	r3, r3
     c46:	0018      	movs	r0, r3
     c48:	46bd      	mov	sp, r7
     c4a:	b004      	add	sp, #16
     c4c:	bd80      	pop	{r7, pc}
     c4e:	46c0      	nop			; (mov r8, r8)
     c50:	2000607c 	.word	0x2000607c

00000c54 <_fork>:
     c54:	b580      	push	{r7, lr}
     c56:	af00      	add	r7, sp, #0
     c58:	4b03      	ldr	r3, [pc, #12]	; (c68 <_fork+0x14>)
     c5a:	220b      	movs	r2, #11
     c5c:	601a      	str	r2, [r3, #0]
     c5e:	2301      	movs	r3, #1
     c60:	425b      	negs	r3, r3
     c62:	0018      	movs	r0, r3
     c64:	46bd      	mov	sp, r7
     c66:	bd80      	pop	{r7, pc}
     c68:	2000607c 	.word	0x2000607c

00000c6c <_fstat>:
     c6c:	b580      	push	{r7, lr}
     c6e:	b082      	sub	sp, #8
     c70:	af00      	add	r7, sp, #0
     c72:	6078      	str	r0, [r7, #4]
     c74:	6039      	str	r1, [r7, #0]
     c76:	683b      	ldr	r3, [r7, #0]
     c78:	2280      	movs	r2, #128	; 0x80
     c7a:	0192      	lsls	r2, r2, #6
     c7c:	605a      	str	r2, [r3, #4]
     c7e:	2300      	movs	r3, #0
     c80:	0018      	movs	r0, r3
     c82:	46bd      	mov	sp, r7
     c84:	b002      	add	sp, #8
     c86:	bd80      	pop	{r7, pc}

00000c88 <_getpid>:
     c88:	b580      	push	{r7, lr}
     c8a:	af00      	add	r7, sp, #0
     c8c:	2301      	movs	r3, #1
     c8e:	0018      	movs	r0, r3
     c90:	46bd      	mov	sp, r7
     c92:	bd80      	pop	{r7, pc}

00000c94 <_isatty>:
     c94:	b580      	push	{r7, lr}
     c96:	b082      	sub	sp, #8
     c98:	af00      	add	r7, sp, #0
     c9a:	6078      	str	r0, [r7, #4]
     c9c:	687b      	ldr	r3, [r7, #4]
     c9e:	3300      	adds	r3, #0
     ca0:	2b02      	cmp	r3, #2
     ca2:	d801      	bhi.n	ca8 <_isatty+0x14>
     ca4:	2301      	movs	r3, #1
     ca6:	e003      	b.n	cb0 <_isatty+0x1c>
     ca8:	4b03      	ldr	r3, [pc, #12]	; (cb8 <_isatty+0x24>)
     caa:	2209      	movs	r2, #9
     cac:	601a      	str	r2, [r3, #0]
     cae:	2300      	movs	r3, #0
     cb0:	0018      	movs	r0, r3
     cb2:	46bd      	mov	sp, r7
     cb4:	b002      	add	sp, #8
     cb6:	bd80      	pop	{r7, pc}
     cb8:	2000607c 	.word	0x2000607c

00000cbc <_kill>:
     cbc:	b580      	push	{r7, lr}
     cbe:	b082      	sub	sp, #8
     cc0:	af00      	add	r7, sp, #0
     cc2:	6078      	str	r0, [r7, #4]
     cc4:	6039      	str	r1, [r7, #0]
     cc6:	4b04      	ldr	r3, [pc, #16]	; (cd8 <_kill+0x1c>)
     cc8:	2216      	movs	r2, #22
     cca:	601a      	str	r2, [r3, #0]
     ccc:	2301      	movs	r3, #1
     cce:	425b      	negs	r3, r3
     cd0:	0018      	movs	r0, r3
     cd2:	46bd      	mov	sp, r7
     cd4:	b002      	add	sp, #8
     cd6:	bd80      	pop	{r7, pc}
     cd8:	2000607c 	.word	0x2000607c

00000cdc <_link>:
     cdc:	b580      	push	{r7, lr}
     cde:	b082      	sub	sp, #8
     ce0:	af00      	add	r7, sp, #0
     ce2:	6078      	str	r0, [r7, #4]
     ce4:	6039      	str	r1, [r7, #0]
     ce6:	4b04      	ldr	r3, [pc, #16]	; (cf8 <_link+0x1c>)
     ce8:	221f      	movs	r2, #31
     cea:	601a      	str	r2, [r3, #0]
     cec:	2301      	movs	r3, #1
     cee:	425b      	negs	r3, r3
     cf0:	0018      	movs	r0, r3
     cf2:	46bd      	mov	sp, r7
     cf4:	b002      	add	sp, #8
     cf6:	bd80      	pop	{r7, pc}
     cf8:	2000607c 	.word	0x2000607c

00000cfc <_lseek>:
     cfc:	b580      	push	{r7, lr}
     cfe:	b084      	sub	sp, #16
     d00:	af00      	add	r7, sp, #0
     d02:	60f8      	str	r0, [r7, #12]
     d04:	60b9      	str	r1, [r7, #8]
     d06:	607a      	str	r2, [r7, #4]
     d08:	2300      	movs	r3, #0
     d0a:	0018      	movs	r0, r3
     d0c:	46bd      	mov	sp, r7
     d0e:	b004      	add	sp, #16
     d10:	bd80      	pop	{r7, pc}
     d12:	46c0      	nop			; (mov r8, r8)

00000d14 <_sbrk>:
     d14:	b580      	push	{r7, lr}
     d16:	b086      	sub	sp, #24
     d18:	af00      	add	r7, sp, #0
     d1a:	6078      	str	r0, [r7, #4]
     d1c:	4b16      	ldr	r3, [pc, #88]	; (d78 <_sbrk+0x64>)
     d1e:	681b      	ldr	r3, [r3, #0]
     d20:	2b00      	cmp	r3, #0
     d22:	d102      	bne.n	d2a <_sbrk+0x16>
     d24:	4b14      	ldr	r3, [pc, #80]	; (d78 <_sbrk+0x64>)
     d26:	4a15      	ldr	r2, [pc, #84]	; (d7c <_sbrk+0x68>)
     d28:	601a      	str	r2, [r3, #0]
     d2a:	4b13      	ldr	r3, [pc, #76]	; (d78 <_sbrk+0x64>)
     d2c:	681b      	ldr	r3, [r3, #0]
     d2e:	617b      	str	r3, [r7, #20]
     d30:	f3ef 8308 	mrs	r3, MSP
     d34:	60fb      	str	r3, [r7, #12]
     d36:	68fb      	ldr	r3, [r7, #12]
     d38:	613b      	str	r3, [r7, #16]
     d3a:	4b0f      	ldr	r3, [pc, #60]	; (d78 <_sbrk+0x64>)
     d3c:	681a      	ldr	r2, [r3, #0]
     d3e:	687b      	ldr	r3, [r7, #4]
     d40:	18d2      	adds	r2, r2, r3
     d42:	693b      	ldr	r3, [r7, #16]
     d44:	429a      	cmp	r2, r3
     d46:	d90b      	bls.n	d60 <_sbrk+0x4c>
     d48:	4b0d      	ldr	r3, [pc, #52]	; (d80 <_sbrk+0x6c>)
     d4a:	2219      	movs	r2, #25
     d4c:	0019      	movs	r1, r3
     d4e:	2002      	movs	r0, #2
     d50:	f000 f86c 	bl	e2c <_write>
     d54:	4b0b      	ldr	r3, [pc, #44]	; (d84 <_sbrk+0x70>)
     d56:	220c      	movs	r2, #12
     d58:	601a      	str	r2, [r3, #0]
     d5a:	2301      	movs	r3, #1
     d5c:	425b      	negs	r3, r3
     d5e:	e006      	b.n	d6e <_sbrk+0x5a>
     d60:	4b05      	ldr	r3, [pc, #20]	; (d78 <_sbrk+0x64>)
     d62:	681a      	ldr	r2, [r3, #0]
     d64:	687b      	ldr	r3, [r7, #4]
     d66:	18d2      	adds	r2, r2, r3
     d68:	4b03      	ldr	r3, [pc, #12]	; (d78 <_sbrk+0x64>)
     d6a:	601a      	str	r2, [r3, #0]
     d6c:	697b      	ldr	r3, [r7, #20]
     d6e:	0018      	movs	r0, r3
     d70:	46bd      	mov	sp, r7
     d72:	b006      	add	sp, #24
     d74:	bd80      	pop	{r7, pc}
     d76:	46c0      	nop			; (mov r8, r8)
     d78:	200008d4 	.word	0x200008d4
     d7c:	20006104 	.word	0x20006104
     d80:	00008a94 	.word	0x00008a94
     d84:	2000607c 	.word	0x2000607c

00000d88 <_read>:
     d88:	b580      	push	{r7, lr}
     d8a:	b086      	sub	sp, #24
     d8c:	af00      	add	r7, sp, #0
     d8e:	60f8      	str	r0, [r7, #12]
     d90:	60b9      	str	r1, [r7, #8]
     d92:	607a      	str	r2, [r7, #4]
     d94:	2300      	movs	r3, #0
     d96:	617b      	str	r3, [r7, #20]
     d98:	68fb      	ldr	r3, [r7, #12]
     d9a:	2b00      	cmp	r3, #0
     d9c:	d005      	beq.n	daa <_read+0x22>
     d9e:	4b06      	ldr	r3, [pc, #24]	; (db8 <_read+0x30>)
     da0:	2209      	movs	r2, #9
     da2:	601a      	str	r2, [r3, #0]
     da4:	2301      	movs	r3, #1
     da6:	425b      	negs	r3, r3
     da8:	e001      	b.n	dae <_read+0x26>
     daa:	46c0      	nop			; (mov r8, r8)
     dac:	697b      	ldr	r3, [r7, #20]
     dae:	0018      	movs	r0, r3
     db0:	46bd      	mov	sp, r7
     db2:	b006      	add	sp, #24
     db4:	bd80      	pop	{r7, pc}
     db6:	46c0      	nop			; (mov r8, r8)
     db8:	2000607c 	.word	0x2000607c

00000dbc <_stat>:
     dbc:	b580      	push	{r7, lr}
     dbe:	b082      	sub	sp, #8
     dc0:	af00      	add	r7, sp, #0
     dc2:	6078      	str	r0, [r7, #4]
     dc4:	6039      	str	r1, [r7, #0]
     dc6:	683b      	ldr	r3, [r7, #0]
     dc8:	2280      	movs	r2, #128	; 0x80
     dca:	0192      	lsls	r2, r2, #6
     dcc:	605a      	str	r2, [r3, #4]
     dce:	2300      	movs	r3, #0
     dd0:	0018      	movs	r0, r3
     dd2:	46bd      	mov	sp, r7
     dd4:	b002      	add	sp, #8
     dd6:	bd80      	pop	{r7, pc}

00000dd8 <_times>:
     dd8:	b580      	push	{r7, lr}
     dda:	b082      	sub	sp, #8
     ddc:	af00      	add	r7, sp, #0
     dde:	6078      	str	r0, [r7, #4]
     de0:	2301      	movs	r3, #1
     de2:	425b      	negs	r3, r3
     de4:	0018      	movs	r0, r3
     de6:	46bd      	mov	sp, r7
     de8:	b002      	add	sp, #8
     dea:	bd80      	pop	{r7, pc}

00000dec <_unlink>:
     dec:	b580      	push	{r7, lr}
     dee:	b082      	sub	sp, #8
     df0:	af00      	add	r7, sp, #0
     df2:	6078      	str	r0, [r7, #4]
     df4:	4b04      	ldr	r3, [pc, #16]	; (e08 <_unlink+0x1c>)
     df6:	2202      	movs	r2, #2
     df8:	601a      	str	r2, [r3, #0]
     dfa:	2301      	movs	r3, #1
     dfc:	425b      	negs	r3, r3
     dfe:	0018      	movs	r0, r3
     e00:	46bd      	mov	sp, r7
     e02:	b002      	add	sp, #8
     e04:	bd80      	pop	{r7, pc}
     e06:	46c0      	nop			; (mov r8, r8)
     e08:	2000607c 	.word	0x2000607c

00000e0c <_wait>:
     e0c:	b580      	push	{r7, lr}
     e0e:	b082      	sub	sp, #8
     e10:	af00      	add	r7, sp, #0
     e12:	6078      	str	r0, [r7, #4]
     e14:	4b04      	ldr	r3, [pc, #16]	; (e28 <_wait+0x1c>)
     e16:	220a      	movs	r2, #10
     e18:	601a      	str	r2, [r3, #0]
     e1a:	2301      	movs	r3, #1
     e1c:	425b      	negs	r3, r3
     e1e:	0018      	movs	r0, r3
     e20:	46bd      	mov	sp, r7
     e22:	b002      	add	sp, #8
     e24:	bd80      	pop	{r7, pc}
     e26:	46c0      	nop			; (mov r8, r8)
     e28:	2000607c 	.word	0x2000607c

00000e2c <_write>:
     e2c:	b580      	push	{r7, lr}
     e2e:	b086      	sub	sp, #24
     e30:	af00      	add	r7, sp, #0
     e32:	60f8      	str	r0, [r7, #12]
     e34:	60b9      	str	r1, [r7, #8]
     e36:	607a      	str	r2, [r7, #4]
     e38:	68fb      	ldr	r3, [r7, #12]
     e3a:	2b01      	cmp	r3, #1
     e3c:	d002      	beq.n	e44 <_write+0x18>
     e3e:	2b02      	cmp	r3, #2
     e40:	d00b      	beq.n	e5a <_write+0x2e>
     e42:	e015      	b.n	e70 <_write+0x44>
     e44:	2300      	movs	r3, #0
     e46:	617b      	str	r3, [r7, #20]
     e48:	e002      	b.n	e50 <_write+0x24>
     e4a:	697b      	ldr	r3, [r7, #20]
     e4c:	3301      	adds	r3, #1
     e4e:	617b      	str	r3, [r7, #20]
     e50:	697a      	ldr	r2, [r7, #20]
     e52:	687b      	ldr	r3, [r7, #4]
     e54:	429a      	cmp	r2, r3
     e56:	dbf8      	blt.n	e4a <_write+0x1e>
     e58:	e010      	b.n	e7c <_write+0x50>
     e5a:	2300      	movs	r3, #0
     e5c:	617b      	str	r3, [r7, #20]
     e5e:	e002      	b.n	e66 <_write+0x3a>
     e60:	697b      	ldr	r3, [r7, #20]
     e62:	3301      	adds	r3, #1
     e64:	617b      	str	r3, [r7, #20]
     e66:	697a      	ldr	r2, [r7, #20]
     e68:	687b      	ldr	r3, [r7, #4]
     e6a:	429a      	cmp	r2, r3
     e6c:	dbf8      	blt.n	e60 <_write+0x34>
     e6e:	e005      	b.n	e7c <_write+0x50>
     e70:	4b05      	ldr	r3, [pc, #20]	; (e88 <_write+0x5c>)
     e72:	2209      	movs	r2, #9
     e74:	601a      	str	r2, [r3, #0]
     e76:	2301      	movs	r3, #1
     e78:	425b      	negs	r3, r3
     e7a:	e000      	b.n	e7e <_write+0x52>
     e7c:	687b      	ldr	r3, [r7, #4]
     e7e:	0018      	movs	r0, r3
     e80:	46bd      	mov	sp, r7
     e82:	b006      	add	sp, #24
     e84:	bd80      	pop	{r7, pc}
     e86:	46c0      	nop			; (mov r8, r8)
     e88:	2000607c 	.word	0x2000607c

00000e8c <_init>:
     e8c:	b580      	push	{r7, lr}
     e8e:	af00      	add	r7, sp, #0
     e90:	46c0      	nop			; (mov r8, r8)
     e92:	46bd      	mov	sp, r7
     e94:	bd80      	pop	{r7, pc}
     e96:	46c0      	nop			; (mov r8, r8)

00000e98 <_fini>:
     e98:	b580      	push	{r7, lr}
     e9a:	af00      	add	r7, sp, #0
     e9c:	46c0      	nop			; (mov r8, r8)
     e9e:	46bd      	mov	sp, r7
     ea0:	bd80      	pop	{r7, pc}
     ea2:	46c0      	nop			; (mov r8, r8)

00000ea4 <__NVIC_EnableIRQ>:
     ea4:	b580      	push	{r7, lr}
     ea6:	b082      	sub	sp, #8
     ea8:	af00      	add	r7, sp, #0
     eaa:	0002      	movs	r2, r0
     eac:	1dfb      	adds	r3, r7, #7
     eae:	701a      	strb	r2, [r3, #0]
     eb0:	1dfb      	adds	r3, r7, #7
     eb2:	781b      	ldrb	r3, [r3, #0]
     eb4:	2b7f      	cmp	r3, #127	; 0x7f
     eb6:	d809      	bhi.n	ecc <__NVIC_EnableIRQ+0x28>
     eb8:	4b06      	ldr	r3, [pc, #24]	; (ed4 <__NVIC_EnableIRQ+0x30>)
     eba:	1dfa      	adds	r2, r7, #7
     ebc:	7812      	ldrb	r2, [r2, #0]
     ebe:	0011      	movs	r1, r2
     ec0:	221f      	movs	r2, #31
     ec2:	400a      	ands	r2, r1
     ec4:	2101      	movs	r1, #1
     ec6:	4091      	lsls	r1, r2
     ec8:	000a      	movs	r2, r1
     eca:	601a      	str	r2, [r3, #0]
     ecc:	46c0      	nop			; (mov r8, r8)
     ece:	46bd      	mov	sp, r7
     ed0:	b002      	add	sp, #8
     ed2:	bd80      	pop	{r7, pc}
     ed4:	e000e100 	.word	0xe000e100

00000ed8 <__NVIC_DisableIRQ>:
     ed8:	b580      	push	{r7, lr}
     eda:	b082      	sub	sp, #8
     edc:	af00      	add	r7, sp, #0
     ede:	0002      	movs	r2, r0
     ee0:	1dfb      	adds	r3, r7, #7
     ee2:	701a      	strb	r2, [r3, #0]
     ee4:	1dfb      	adds	r3, r7, #7
     ee6:	781b      	ldrb	r3, [r3, #0]
     ee8:	2b7f      	cmp	r3, #127	; 0x7f
     eea:	d80e      	bhi.n	f0a <__NVIC_DisableIRQ+0x32>
     eec:	4909      	ldr	r1, [pc, #36]	; (f14 <__NVIC_DisableIRQ+0x3c>)
     eee:	1dfb      	adds	r3, r7, #7
     ef0:	781b      	ldrb	r3, [r3, #0]
     ef2:	001a      	movs	r2, r3
     ef4:	231f      	movs	r3, #31
     ef6:	4013      	ands	r3, r2
     ef8:	2201      	movs	r2, #1
     efa:	409a      	lsls	r2, r3
     efc:	0013      	movs	r3, r2
     efe:	2280      	movs	r2, #128	; 0x80
     f00:	508b      	str	r3, [r1, r2]
     f02:	f3bf 8f4f 	dsb	sy
     f06:	f3bf 8f6f 	isb	sy
     f0a:	46c0      	nop			; (mov r8, r8)
     f0c:	46bd      	mov	sp, r7
     f0e:	b002      	add	sp, #8
     f10:	bd80      	pop	{r7, pc}
     f12:	46c0      	nop			; (mov r8, r8)
     f14:	e000e100 	.word	0xe000e100

00000f18 <mdb232_init>:
     f18:	b580      	push	{r7, lr}
     f1a:	af00      	add	r7, sp, #0
     f1c:	4b15      	ldr	r3, [pc, #84]	; (f74 <mdb232_init+0x5c>)
     f1e:	229c      	movs	r2, #156	; 0x9c
     f20:	0052      	lsls	r2, r2, #1
     f22:	625a      	str	r2, [r3, #36]	; 0x24
     f24:	4b13      	ldr	r3, [pc, #76]	; (f74 <mdb232_init+0x5c>)
     f26:	2220      	movs	r2, #32
     f28:	629a      	str	r2, [r3, #40]	; 0x28
     f2a:	4b12      	ldr	r3, [pc, #72]	; (f74 <mdb232_init+0x5c>)
     f2c:	4a11      	ldr	r2, [pc, #68]	; (f74 <mdb232_init+0x5c>)
     f2e:	6b52      	ldr	r2, [r2, #52]	; 0x34
     f30:	213f      	movs	r1, #63	; 0x3f
     f32:	438a      	bics	r2, r1
     f34:	635a      	str	r2, [r3, #52]	; 0x34
     f36:	4b0f      	ldr	r3, [pc, #60]	; (f74 <mdb232_init+0x5c>)
     f38:	4a0e      	ldr	r2, [pc, #56]	; (f74 <mdb232_init+0x5c>)
     f3a:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     f3c:	2110      	movs	r1, #16
     f3e:	430a      	orrs	r2, r1
     f40:	62da      	str	r2, [r3, #44]	; 0x2c
     f42:	4b0c      	ldr	r3, [pc, #48]	; (f74 <mdb232_init+0x5c>)
     f44:	4a0b      	ldr	r2, [pc, #44]	; (f74 <mdb232_init+0x5c>)
     f46:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     f48:	2160      	movs	r1, #96	; 0x60
     f4a:	430a      	orrs	r2, r1
     f4c:	62da      	str	r2, [r3, #44]	; 0x2c
     f4e:	4b09      	ldr	r3, [pc, #36]	; (f74 <mdb232_init+0x5c>)
     f50:	4a08      	ldr	r2, [pc, #32]	; (f74 <mdb232_init+0x5c>)
     f52:	6b12      	ldr	r2, [r2, #48]	; 0x30
     f54:	4908      	ldr	r1, [pc, #32]	; (f78 <mdb232_init+0x60>)
     f56:	430a      	orrs	r2, r1
     f58:	631a      	str	r2, [r3, #48]	; 0x30
     f5a:	4b06      	ldr	r3, [pc, #24]	; (f74 <mdb232_init+0x5c>)
     f5c:	4a05      	ldr	r2, [pc, #20]	; (f74 <mdb232_init+0x5c>)
     f5e:	6b92      	ldr	r2, [r2, #56]	; 0x38
     f60:	2140      	movs	r1, #64	; 0x40
     f62:	430a      	orrs	r2, r1
     f64:	639a      	str	r2, [r3, #56]	; 0x38
     f66:	2006      	movs	r0, #6
     f68:	f7ff ff9c 	bl	ea4 <__NVIC_EnableIRQ>
     f6c:	46c0      	nop			; (mov r8, r8)
     f6e:	46bd      	mov	sp, r7
     f70:	bd80      	pop	{r7, pc}
     f72:	46c0      	nop			; (mov r8, r8)
     f74:	40030000 	.word	0x40030000
     f78:	00000301 	.word	0x00000301

00000f7c <mdb232_send>:
     f7c:	b580      	push	{r7, lr}
     f7e:	b084      	sub	sp, #16
     f80:	af00      	add	r7, sp, #0
     f82:	6078      	str	r0, [r7, #4]
     f84:	6039      	str	r1, [r7, #0]
     f86:	2300      	movs	r3, #0
     f88:	60fb      	str	r3, [r7, #12]
     f8a:	e00e      	b.n	faa <mdb232_send+0x2e>
     f8c:	46c0      	nop			; (mov r8, r8)
     f8e:	4b0e      	ldr	r3, [pc, #56]	; (fc8 <mdb232_send+0x4c>)
     f90:	699b      	ldr	r3, [r3, #24]
     f92:	2220      	movs	r2, #32
     f94:	4013      	ands	r3, r2
     f96:	d1fa      	bne.n	f8e <mdb232_send+0x12>
     f98:	4a0b      	ldr	r2, [pc, #44]	; (fc8 <mdb232_send+0x4c>)
     f9a:	687b      	ldr	r3, [r7, #4]
     f9c:	1c59      	adds	r1, r3, #1
     f9e:	6079      	str	r1, [r7, #4]
     fa0:	781b      	ldrb	r3, [r3, #0]
     fa2:	6013      	str	r3, [r2, #0]
     fa4:	68fb      	ldr	r3, [r7, #12]
     fa6:	3301      	adds	r3, #1
     fa8:	60fb      	str	r3, [r7, #12]
     faa:	68fa      	ldr	r2, [r7, #12]
     fac:	683b      	ldr	r3, [r7, #0]
     fae:	429a      	cmp	r2, r3
     fb0:	dbec      	blt.n	f8c <mdb232_send+0x10>
     fb2:	46c0      	nop			; (mov r8, r8)
     fb4:	4b04      	ldr	r3, [pc, #16]	; (fc8 <mdb232_send+0x4c>)
     fb6:	699b      	ldr	r3, [r3, #24]
     fb8:	2208      	movs	r2, #8
     fba:	4013      	ands	r3, r2
     fbc:	d1fa      	bne.n	fb4 <mdb232_send+0x38>
     fbe:	683b      	ldr	r3, [r7, #0]
     fc0:	0018      	movs	r0, r3
     fc2:	46bd      	mov	sp, r7
     fc4:	b004      	add	sp, #16
     fc6:	bd80      	pop	{r7, pc}
     fc8:	40030000 	.word	0x40030000

00000fcc <mdb232_read_inputregs>:
     fcc:	b590      	push	{r4, r7, lr}
     fce:	b085      	sub	sp, #20
     fd0:	af00      	add	r7, sp, #0
     fd2:	0004      	movs	r4, r0
     fd4:	0008      	movs	r0, r1
     fd6:	0011      	movs	r1, r2
     fd8:	1dfb      	adds	r3, r7, #7
     fda:	1c22      	adds	r2, r4, #0
     fdc:	701a      	strb	r2, [r3, #0]
     fde:	1d3b      	adds	r3, r7, #4
     fe0:	1c02      	adds	r2, r0, #0
     fe2:	801a      	strh	r2, [r3, #0]
     fe4:	1cbb      	adds	r3, r7, #2
     fe6:	1c0a      	adds	r2, r1, #0
     fe8:	801a      	strh	r2, [r3, #0]
     fea:	4b28      	ldr	r3, [pc, #160]	; (108c <mdb232_read_inputregs+0xc0>)
     fec:	60fb      	str	r3, [r7, #12]
     fee:	68fb      	ldr	r3, [r7, #12]
     ff0:	1c5a      	adds	r2, r3, #1
     ff2:	60fa      	str	r2, [r7, #12]
     ff4:	1dfa      	adds	r2, r7, #7
     ff6:	7812      	ldrb	r2, [r2, #0]
     ff8:	701a      	strb	r2, [r3, #0]
     ffa:	68fb      	ldr	r3, [r7, #12]
     ffc:	1c5a      	adds	r2, r3, #1
     ffe:	60fa      	str	r2, [r7, #12]
    1000:	2204      	movs	r2, #4
    1002:	701a      	strb	r2, [r3, #0]
    1004:	68fb      	ldr	r3, [r7, #12]
    1006:	1c5a      	adds	r2, r3, #1
    1008:	60fa      	str	r2, [r7, #12]
    100a:	1d3a      	adds	r2, r7, #4
    100c:	8812      	ldrh	r2, [r2, #0]
    100e:	0a12      	lsrs	r2, r2, #8
    1010:	b292      	uxth	r2, r2
    1012:	b2d2      	uxtb	r2, r2
    1014:	701a      	strb	r2, [r3, #0]
    1016:	68fb      	ldr	r3, [r7, #12]
    1018:	1c5a      	adds	r2, r3, #1
    101a:	60fa      	str	r2, [r7, #12]
    101c:	1d3a      	adds	r2, r7, #4
    101e:	8812      	ldrh	r2, [r2, #0]
    1020:	b2d2      	uxtb	r2, r2
    1022:	701a      	strb	r2, [r3, #0]
    1024:	68fb      	ldr	r3, [r7, #12]
    1026:	1c5a      	adds	r2, r3, #1
    1028:	60fa      	str	r2, [r7, #12]
    102a:	1cba      	adds	r2, r7, #2
    102c:	8812      	ldrh	r2, [r2, #0]
    102e:	0a12      	lsrs	r2, r2, #8
    1030:	b292      	uxth	r2, r2
    1032:	b2d2      	uxtb	r2, r2
    1034:	701a      	strb	r2, [r3, #0]
    1036:	68fb      	ldr	r3, [r7, #12]
    1038:	1c5a      	adds	r2, r3, #1
    103a:	60fa      	str	r2, [r7, #12]
    103c:	1cba      	adds	r2, r7, #2
    103e:	8812      	ldrh	r2, [r2, #0]
    1040:	b2d2      	uxtb	r2, r2
    1042:	701a      	strb	r2, [r3, #0]
    1044:	230a      	movs	r3, #10
    1046:	18fc      	adds	r4, r7, r3
    1048:	4b10      	ldr	r3, [pc, #64]	; (108c <mdb232_read_inputregs+0xc0>)
    104a:	2106      	movs	r1, #6
    104c:	0018      	movs	r0, r3
    104e:	f002 f95b 	bl	3308 <crc16>
    1052:	0003      	movs	r3, r0
    1054:	8023      	strh	r3, [r4, #0]
    1056:	68fb      	ldr	r3, [r7, #12]
    1058:	1c5a      	adds	r2, r3, #1
    105a:	60fa      	str	r2, [r7, #12]
    105c:	220a      	movs	r2, #10
    105e:	18ba      	adds	r2, r7, r2
    1060:	8812      	ldrh	r2, [r2, #0]
    1062:	b2d2      	uxtb	r2, r2
    1064:	701a      	strb	r2, [r3, #0]
    1066:	68fb      	ldr	r3, [r7, #12]
    1068:	1c5a      	adds	r2, r3, #1
    106a:	60fa      	str	r2, [r7, #12]
    106c:	220a      	movs	r2, #10
    106e:	18ba      	adds	r2, r7, r2
    1070:	8812      	ldrh	r2, [r2, #0]
    1072:	0a12      	lsrs	r2, r2, #8
    1074:	b292      	uxth	r2, r2
    1076:	b2d2      	uxtb	r2, r2
    1078:	701a      	strb	r2, [r3, #0]
    107a:	4b04      	ldr	r3, [pc, #16]	; (108c <mdb232_read_inputregs+0xc0>)
    107c:	2108      	movs	r1, #8
    107e:	0018      	movs	r0, r3
    1080:	f7ff ff7c 	bl	f7c <mdb232_send>
    1084:	46c0      	nop			; (mov r8, r8)
    1086:	46bd      	mov	sp, r7
    1088:	b005      	add	sp, #20
    108a:	bd90      	pop	{r4, r7, pc}
    108c:	200008e8 	.word	0x200008e8

00001090 <mdb232_readregs>:
    1090:	b590      	push	{r4, r7, lr}
    1092:	b085      	sub	sp, #20
    1094:	af00      	add	r7, sp, #0
    1096:	0004      	movs	r4, r0
    1098:	0008      	movs	r0, r1
    109a:	0011      	movs	r1, r2
    109c:	1dfb      	adds	r3, r7, #7
    109e:	1c22      	adds	r2, r4, #0
    10a0:	701a      	strb	r2, [r3, #0]
    10a2:	1d3b      	adds	r3, r7, #4
    10a4:	1c02      	adds	r2, r0, #0
    10a6:	801a      	strh	r2, [r3, #0]
    10a8:	1cbb      	adds	r3, r7, #2
    10aa:	1c0a      	adds	r2, r1, #0
    10ac:	801a      	strh	r2, [r3, #0]
    10ae:	4b28      	ldr	r3, [pc, #160]	; (1150 <mdb232_readregs+0xc0>)
    10b0:	60fb      	str	r3, [r7, #12]
    10b2:	68fb      	ldr	r3, [r7, #12]
    10b4:	1c5a      	adds	r2, r3, #1
    10b6:	60fa      	str	r2, [r7, #12]
    10b8:	1dfa      	adds	r2, r7, #7
    10ba:	7812      	ldrb	r2, [r2, #0]
    10bc:	701a      	strb	r2, [r3, #0]
    10be:	68fb      	ldr	r3, [r7, #12]
    10c0:	1c5a      	adds	r2, r3, #1
    10c2:	60fa      	str	r2, [r7, #12]
    10c4:	2203      	movs	r2, #3
    10c6:	701a      	strb	r2, [r3, #0]
    10c8:	68fb      	ldr	r3, [r7, #12]
    10ca:	1c5a      	adds	r2, r3, #1
    10cc:	60fa      	str	r2, [r7, #12]
    10ce:	1d3a      	adds	r2, r7, #4
    10d0:	8812      	ldrh	r2, [r2, #0]
    10d2:	0a12      	lsrs	r2, r2, #8
    10d4:	b292      	uxth	r2, r2
    10d6:	b2d2      	uxtb	r2, r2
    10d8:	701a      	strb	r2, [r3, #0]
    10da:	68fb      	ldr	r3, [r7, #12]
    10dc:	1c5a      	adds	r2, r3, #1
    10de:	60fa      	str	r2, [r7, #12]
    10e0:	1d3a      	adds	r2, r7, #4
    10e2:	8812      	ldrh	r2, [r2, #0]
    10e4:	b2d2      	uxtb	r2, r2
    10e6:	701a      	strb	r2, [r3, #0]
    10e8:	68fb      	ldr	r3, [r7, #12]
    10ea:	1c5a      	adds	r2, r3, #1
    10ec:	60fa      	str	r2, [r7, #12]
    10ee:	1cba      	adds	r2, r7, #2
    10f0:	8812      	ldrh	r2, [r2, #0]
    10f2:	0a12      	lsrs	r2, r2, #8
    10f4:	b292      	uxth	r2, r2
    10f6:	b2d2      	uxtb	r2, r2
    10f8:	701a      	strb	r2, [r3, #0]
    10fa:	68fb      	ldr	r3, [r7, #12]
    10fc:	1c5a      	adds	r2, r3, #1
    10fe:	60fa      	str	r2, [r7, #12]
    1100:	1cba      	adds	r2, r7, #2
    1102:	8812      	ldrh	r2, [r2, #0]
    1104:	b2d2      	uxtb	r2, r2
    1106:	701a      	strb	r2, [r3, #0]
    1108:	230a      	movs	r3, #10
    110a:	18fc      	adds	r4, r7, r3
    110c:	4b10      	ldr	r3, [pc, #64]	; (1150 <mdb232_readregs+0xc0>)
    110e:	2106      	movs	r1, #6
    1110:	0018      	movs	r0, r3
    1112:	f002 f8f9 	bl	3308 <crc16>
    1116:	0003      	movs	r3, r0
    1118:	8023      	strh	r3, [r4, #0]
    111a:	68fb      	ldr	r3, [r7, #12]
    111c:	1c5a      	adds	r2, r3, #1
    111e:	60fa      	str	r2, [r7, #12]
    1120:	220a      	movs	r2, #10
    1122:	18ba      	adds	r2, r7, r2
    1124:	8812      	ldrh	r2, [r2, #0]
    1126:	b2d2      	uxtb	r2, r2
    1128:	701a      	strb	r2, [r3, #0]
    112a:	68fb      	ldr	r3, [r7, #12]
    112c:	1c5a      	adds	r2, r3, #1
    112e:	60fa      	str	r2, [r7, #12]
    1130:	220a      	movs	r2, #10
    1132:	18ba      	adds	r2, r7, r2
    1134:	8812      	ldrh	r2, [r2, #0]
    1136:	0a12      	lsrs	r2, r2, #8
    1138:	b292      	uxth	r2, r2
    113a:	b2d2      	uxtb	r2, r2
    113c:	701a      	strb	r2, [r3, #0]
    113e:	4b04      	ldr	r3, [pc, #16]	; (1150 <mdb232_readregs+0xc0>)
    1140:	2108      	movs	r1, #8
    1142:	0018      	movs	r0, r3
    1144:	f7ff ff1a 	bl	f7c <mdb232_send>
    1148:	46c0      	nop			; (mov r8, r8)
    114a:	46bd      	mov	sp, r7
    114c:	b005      	add	sp, #20
    114e:	bd90      	pop	{r4, r7, pc}
    1150:	200008e8 	.word	0x200008e8

00001154 <mdb232_get_crc>:
    1154:	b590      	push	{r4, r7, lr}
    1156:	b083      	sub	sp, #12
    1158:	af00      	add	r7, sp, #0
    115a:	2006      	movs	r0, #6
    115c:	f7ff febc 	bl	ed8 <__NVIC_DisableIRQ>
    1160:	4b09      	ldr	r3, [pc, #36]	; (1188 <mdb232_get_crc+0x34>)
    1162:	681a      	ldr	r2, [r3, #0]
    1164:	1dbc      	adds	r4, r7, #6
    1166:	4b09      	ldr	r3, [pc, #36]	; (118c <mdb232_get_crc+0x38>)
    1168:	0011      	movs	r1, r2
    116a:	0018      	movs	r0, r3
    116c:	f002 f8cc 	bl	3308 <crc16>
    1170:	0003      	movs	r3, r0
    1172:	8023      	strh	r3, [r4, #0]
    1174:	2006      	movs	r0, #6
    1176:	f7ff fe95 	bl	ea4 <__NVIC_EnableIRQ>
    117a:	1dbb      	adds	r3, r7, #6
    117c:	881b      	ldrh	r3, [r3, #0]
    117e:	0018      	movs	r0, r3
    1180:	46bd      	mov	sp, r7
    1182:	b003      	add	sp, #12
    1184:	bd90      	pop	{r4, r7, pc}
    1186:	46c0      	nop			; (mov r8, r8)
    1188:	200008f8 	.word	0x200008f8
    118c:	200008d8 	.word	0x200008d8

00001190 <mdb232_bikm_get_torque>:
    1190:	b580      	push	{r7, lr}
    1192:	b086      	sub	sp, #24
    1194:	af00      	add	r7, sp, #0
    1196:	6078      	str	r0, [r7, #4]
    1198:	4b2b      	ldr	r3, [pc, #172]	; (1248 <mdb232_bikm_get_torque+0xb8>)
    119a:	617b      	str	r3, [r7, #20]
    119c:	687b      	ldr	r3, [r7, #4]
    119e:	2201      	movs	r2, #1
    11a0:	4252      	negs	r2, r2
    11a2:	601a      	str	r2, [r3, #0]
    11a4:	2006      	movs	r0, #6
    11a6:	f7ff fe97 	bl	ed8 <__NVIC_DisableIRQ>
    11aa:	4b28      	ldr	r3, [pc, #160]	; (124c <mdb232_bikm_get_torque+0xbc>)
    11ac:	681b      	ldr	r3, [r3, #0]
    11ae:	2b00      	cmp	r3, #0
    11b0:	d041      	beq.n	1236 <mdb232_bikm_get_torque+0xa6>
    11b2:	4b27      	ldr	r3, [pc, #156]	; (1250 <mdb232_bikm_get_torque+0xc0>)
    11b4:	781b      	ldrb	r3, [r3, #0]
    11b6:	001a      	movs	r2, r3
    11b8:	687b      	ldr	r3, [r7, #4]
    11ba:	601a      	str	r2, [r3, #0]
    11bc:	697b      	ldr	r3, [r7, #20]
    11be:	1c5a      	adds	r2, r3, #1
    11c0:	617a      	str	r2, [r7, #20]
    11c2:	781b      	ldrb	r3, [r3, #0]
    11c4:	041b      	lsls	r3, r3, #16
    11c6:	613b      	str	r3, [r7, #16]
    11c8:	697b      	ldr	r3, [r7, #20]
    11ca:	1c5a      	adds	r2, r3, #1
    11cc:	617a      	str	r2, [r7, #20]
    11ce:	781b      	ldrb	r3, [r3, #0]
    11d0:	061b      	lsls	r3, r3, #24
    11d2:	001a      	movs	r2, r3
    11d4:	693b      	ldr	r3, [r7, #16]
    11d6:	4313      	orrs	r3, r2
    11d8:	613b      	str	r3, [r7, #16]
    11da:	697b      	ldr	r3, [r7, #20]
    11dc:	1c5a      	adds	r2, r3, #1
    11de:	617a      	str	r2, [r7, #20]
    11e0:	781b      	ldrb	r3, [r3, #0]
    11e2:	001a      	movs	r2, r3
    11e4:	693b      	ldr	r3, [r7, #16]
    11e6:	4313      	orrs	r3, r2
    11e8:	613b      	str	r3, [r7, #16]
    11ea:	697b      	ldr	r3, [r7, #20]
    11ec:	781b      	ldrb	r3, [r3, #0]
    11ee:	021b      	lsls	r3, r3, #8
    11f0:	001a      	movs	r2, r3
    11f2:	693b      	ldr	r3, [r7, #16]
    11f4:	4313      	orrs	r3, r2
    11f6:	613b      	str	r3, [r7, #16]
    11f8:	2006      	movs	r0, #6
    11fa:	f7ff fe53 	bl	ea4 <__NVIC_EnableIRQ>
    11fe:	693b      	ldr	r3, [r7, #16]
    1200:	0ddb      	lsrs	r3, r3, #23
    1202:	22ff      	movs	r2, #255	; 0xff
    1204:	4013      	ands	r3, r2
    1206:	3b7f      	subs	r3, #127	; 0x7f
    1208:	60fb      	str	r3, [r7, #12]
    120a:	693b      	ldr	r3, [r7, #16]
    120c:	025b      	lsls	r3, r3, #9
    120e:	0a5b      	lsrs	r3, r3, #9
    1210:	2280      	movs	r2, #128	; 0x80
    1212:	0412      	lsls	r2, r2, #16
    1214:	4313      	orrs	r3, r2
    1216:	60bb      	str	r3, [r7, #8]
    1218:	68fb      	ldr	r3, [r7, #12]
    121a:	220e      	movs	r2, #14
    121c:	1ad3      	subs	r3, r2, r3
    121e:	2201      	movs	r2, #1
    1220:	409a      	lsls	r2, r3
    1222:	0013      	movs	r3, r2
    1224:	001a      	movs	r2, r3
    1226:	68bb      	ldr	r3, [r7, #8]
    1228:	18d2      	adds	r2, r2, r3
    122a:	68fb      	ldr	r3, [r7, #12]
    122c:	210f      	movs	r1, #15
    122e:	1acb      	subs	r3, r1, r3
    1230:	40da      	lsrs	r2, r3
    1232:	0013      	movs	r3, r2
    1234:	e003      	b.n	123e <mdb232_bikm_get_torque+0xae>
    1236:	2006      	movs	r0, #6
    1238:	f7ff fe34 	bl	ea4 <__NVIC_EnableIRQ>
    123c:	2300      	movs	r3, #0
    123e:	0018      	movs	r0, r3
    1240:	46bd      	mov	sp, r7
    1242:	b006      	add	sp, #24
    1244:	bd80      	pop	{r7, pc}
    1246:	46c0      	nop			; (mov r8, r8)
    1248:	200008db 	.word	0x200008db
    124c:	200008f8 	.word	0x200008f8
    1250:	200008d8 	.word	0x200008d8

00001254 <UART1_Handler>:
    1254:	b580      	push	{r7, lr}
    1256:	b082      	sub	sp, #8
    1258:	af00      	add	r7, sp, #0
    125a:	4b16      	ldr	r3, [pc, #88]	; (12b4 <UART1_Handler+0x60>)
    125c:	2200      	movs	r2, #0
    125e:	601a      	str	r2, [r3, #0]
    1260:	4b15      	ldr	r3, [pc, #84]	; (12b8 <UART1_Handler+0x64>)
    1262:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1264:	2240      	movs	r2, #64	; 0x40
    1266:	4013      	ands	r3, r2
    1268:	d016      	beq.n	1298 <UART1_Handler+0x44>
    126a:	4b14      	ldr	r3, [pc, #80]	; (12bc <UART1_Handler+0x68>)
    126c:	603b      	str	r3, [r7, #0]
    126e:	2300      	movs	r3, #0
    1270:	607b      	str	r3, [r7, #4]
    1272:	e009      	b.n	1288 <UART1_Handler+0x34>
    1274:	683b      	ldr	r3, [r7, #0]
    1276:	1c5a      	adds	r2, r3, #1
    1278:	603a      	str	r2, [r7, #0]
    127a:	4a0f      	ldr	r2, [pc, #60]	; (12b8 <UART1_Handler+0x64>)
    127c:	6812      	ldr	r2, [r2, #0]
    127e:	b2d2      	uxtb	r2, r2
    1280:	701a      	strb	r2, [r3, #0]
    1282:	687b      	ldr	r3, [r7, #4]
    1284:	3301      	adds	r3, #1
    1286:	607b      	str	r3, [r7, #4]
    1288:	687b      	ldr	r3, [r7, #4]
    128a:	2b0f      	cmp	r3, #15
    128c:	dc04      	bgt.n	1298 <UART1_Handler+0x44>
    128e:	4b0a      	ldr	r3, [pc, #40]	; (12b8 <UART1_Handler+0x64>)
    1290:	699b      	ldr	r3, [r3, #24]
    1292:	2210      	movs	r2, #16
    1294:	4013      	ands	r3, r2
    1296:	d0ed      	beq.n	1274 <UART1_Handler+0x20>
    1298:	4b06      	ldr	r3, [pc, #24]	; (12b4 <UART1_Handler+0x60>)
    129a:	687a      	ldr	r2, [r7, #4]
    129c:	601a      	str	r2, [r3, #0]
    129e:	4b08      	ldr	r3, [pc, #32]	; (12c0 <UART1_Handler+0x6c>)
    12a0:	681b      	ldr	r3, [r3, #0]
    12a2:	2102      	movs	r1, #2
    12a4:	0018      	movs	r0, r3
    12a6:	f005 fa25 	bl	66f4 <osSignalSet>
    12aa:	46c0      	nop			; (mov r8, r8)
    12ac:	46bd      	mov	sp, r7
    12ae:	b002      	add	sp, #8
    12b0:	bd80      	pop	{r7, pc}
    12b2:	46c0      	nop			; (mov r8, r8)
    12b4:	200008f8 	.word	0x200008f8
    12b8:	40030000 	.word	0x40030000
    12bc:	200008d8 	.word	0x200008d8
    12c0:	20000860 	.word	0x20000860

000012c4 <xputc>:
    12c4:	b580      	push	{r7, lr}
    12c6:	b082      	sub	sp, #8
    12c8:	af00      	add	r7, sp, #0
    12ca:	0002      	movs	r2, r0
    12cc:	1dfb      	adds	r3, r7, #7
    12ce:	701a      	strb	r2, [r3, #0]
    12d0:	1dfb      	adds	r3, r7, #7
    12d2:	781b      	ldrb	r3, [r3, #0]
    12d4:	2b0a      	cmp	r3, #10
    12d6:	d102      	bne.n	12de <xputc+0x1a>
    12d8:	200d      	movs	r0, #13
    12da:	f7ff fff3 	bl	12c4 <xputc>
    12de:	4b0d      	ldr	r3, [pc, #52]	; (1314 <xputc+0x50>)
    12e0:	681b      	ldr	r3, [r3, #0]
    12e2:	2b00      	cmp	r3, #0
    12e4:	d008      	beq.n	12f8 <xputc+0x34>
    12e6:	4b0b      	ldr	r3, [pc, #44]	; (1314 <xputc+0x50>)
    12e8:	681b      	ldr	r3, [r3, #0]
    12ea:	1c59      	adds	r1, r3, #1
    12ec:	4a09      	ldr	r2, [pc, #36]	; (1314 <xputc+0x50>)
    12ee:	6011      	str	r1, [r2, #0]
    12f0:	1dfa      	adds	r2, r7, #7
    12f2:	7812      	ldrb	r2, [r2, #0]
    12f4:	701a      	strb	r2, [r3, #0]
    12f6:	e009      	b.n	130c <xputc+0x48>
    12f8:	4b07      	ldr	r3, [pc, #28]	; (1318 <xputc+0x54>)
    12fa:	681b      	ldr	r3, [r3, #0]
    12fc:	2b00      	cmp	r3, #0
    12fe:	d005      	beq.n	130c <xputc+0x48>
    1300:	4b05      	ldr	r3, [pc, #20]	; (1318 <xputc+0x54>)
    1302:	681b      	ldr	r3, [r3, #0]
    1304:	1dfa      	adds	r2, r7, #7
    1306:	7812      	ldrb	r2, [r2, #0]
    1308:	0010      	movs	r0, r2
    130a:	4798      	blx	r3
    130c:	46bd      	mov	sp, r7
    130e:	b002      	add	sp, #8
    1310:	bd80      	pop	{r7, pc}
    1312:	46c0      	nop			; (mov r8, r8)
    1314:	20000900 	.word	0x20000900
    1318:	200008fc 	.word	0x200008fc

0000131c <xputs>:
    131c:	b580      	push	{r7, lr}
    131e:	b082      	sub	sp, #8
    1320:	af00      	add	r7, sp, #0
    1322:	6078      	str	r0, [r7, #4]
    1324:	e006      	b.n	1334 <xputs+0x18>
    1326:	687b      	ldr	r3, [r7, #4]
    1328:	1c5a      	adds	r2, r3, #1
    132a:	607a      	str	r2, [r7, #4]
    132c:	781b      	ldrb	r3, [r3, #0]
    132e:	0018      	movs	r0, r3
    1330:	f7ff ffc8 	bl	12c4 <xputc>
    1334:	687b      	ldr	r3, [r7, #4]
    1336:	781b      	ldrb	r3, [r3, #0]
    1338:	2b00      	cmp	r3, #0
    133a:	d1f4      	bne.n	1326 <xputs+0xa>
    133c:	46c0      	nop			; (mov r8, r8)
    133e:	46bd      	mov	sp, r7
    1340:	b002      	add	sp, #8
    1342:	bd80      	pop	{r7, pc}

00001344 <xfputs>:
    1344:	b580      	push	{r7, lr}
    1346:	b084      	sub	sp, #16
    1348:	af00      	add	r7, sp, #0
    134a:	6078      	str	r0, [r7, #4]
    134c:	6039      	str	r1, [r7, #0]
    134e:	4b0c      	ldr	r3, [pc, #48]	; (1380 <xfputs+0x3c>)
    1350:	681b      	ldr	r3, [r3, #0]
    1352:	60fb      	str	r3, [r7, #12]
    1354:	4b0a      	ldr	r3, [pc, #40]	; (1380 <xfputs+0x3c>)
    1356:	687a      	ldr	r2, [r7, #4]
    1358:	601a      	str	r2, [r3, #0]
    135a:	e006      	b.n	136a <xfputs+0x26>
    135c:	683b      	ldr	r3, [r7, #0]
    135e:	1c5a      	adds	r2, r3, #1
    1360:	603a      	str	r2, [r7, #0]
    1362:	781b      	ldrb	r3, [r3, #0]
    1364:	0018      	movs	r0, r3
    1366:	f7ff ffad 	bl	12c4 <xputc>
    136a:	683b      	ldr	r3, [r7, #0]
    136c:	781b      	ldrb	r3, [r3, #0]
    136e:	2b00      	cmp	r3, #0
    1370:	d1f4      	bne.n	135c <xfputs+0x18>
    1372:	4b03      	ldr	r3, [pc, #12]	; (1380 <xfputs+0x3c>)
    1374:	68fa      	ldr	r2, [r7, #12]
    1376:	601a      	str	r2, [r3, #0]
    1378:	46c0      	nop			; (mov r8, r8)
    137a:	46bd      	mov	sp, r7
    137c:	b004      	add	sp, #16
    137e:	bd80      	pop	{r7, pc}
    1380:	200008fc 	.word	0x200008fc

00001384 <xvprintf>:
    1384:	b580      	push	{r7, lr}
    1386:	b08e      	sub	sp, #56	; 0x38
    1388:	af00      	add	r7, sp, #0
    138a:	6078      	str	r0, [r7, #4]
    138c:	6039      	str	r1, [r7, #0]
    138e:	687b      	ldr	r3, [r7, #4]
    1390:	1c5a      	adds	r2, r3, #1
    1392:	607a      	str	r2, [r7, #4]
    1394:	221f      	movs	r2, #31
    1396:	18ba      	adds	r2, r7, r2
    1398:	781b      	ldrb	r3, [r3, #0]
    139a:	7013      	strb	r3, [r2, #0]
    139c:	231f      	movs	r3, #31
    139e:	18fb      	adds	r3, r7, r3
    13a0:	781b      	ldrb	r3, [r3, #0]
    13a2:	2b00      	cmp	r3, #0
    13a4:	d100      	bne.n	13a8 <xvprintf+0x24>
    13a6:	e172      	b.n	168e <xvprintf+0x30a>
    13a8:	231f      	movs	r3, #31
    13aa:	18fb      	adds	r3, r7, r3
    13ac:	781b      	ldrb	r3, [r3, #0]
    13ae:	2b25      	cmp	r3, #37	; 0x25
    13b0:	d006      	beq.n	13c0 <xvprintf+0x3c>
    13b2:	231f      	movs	r3, #31
    13b4:	18fb      	adds	r3, r7, r3
    13b6:	781b      	ldrb	r3, [r3, #0]
    13b8:	0018      	movs	r0, r3
    13ba:	f7ff ff83 	bl	12c4 <xputc>
    13be:	e165      	b.n	168c <xvprintf+0x308>
    13c0:	2300      	movs	r3, #0
    13c2:	627b      	str	r3, [r7, #36]	; 0x24
    13c4:	687b      	ldr	r3, [r7, #4]
    13c6:	1c5a      	adds	r2, r3, #1
    13c8:	607a      	str	r2, [r7, #4]
    13ca:	221f      	movs	r2, #31
    13cc:	18ba      	adds	r2, r7, r2
    13ce:	781b      	ldrb	r3, [r3, #0]
    13d0:	7013      	strb	r3, [r2, #0]
    13d2:	231f      	movs	r3, #31
    13d4:	18fb      	adds	r3, r7, r3
    13d6:	781b      	ldrb	r3, [r3, #0]
    13d8:	2b30      	cmp	r3, #48	; 0x30
    13da:	d109      	bne.n	13f0 <xvprintf+0x6c>
    13dc:	2301      	movs	r3, #1
    13de:	627b      	str	r3, [r7, #36]	; 0x24
    13e0:	687b      	ldr	r3, [r7, #4]
    13e2:	1c5a      	adds	r2, r3, #1
    13e4:	607a      	str	r2, [r7, #4]
    13e6:	221f      	movs	r2, #31
    13e8:	18ba      	adds	r2, r7, r2
    13ea:	781b      	ldrb	r3, [r3, #0]
    13ec:	7013      	strb	r3, [r2, #0]
    13ee:	e00d      	b.n	140c <xvprintf+0x88>
    13f0:	231f      	movs	r3, #31
    13f2:	18fb      	adds	r3, r7, r3
    13f4:	781b      	ldrb	r3, [r3, #0]
    13f6:	2b2d      	cmp	r3, #45	; 0x2d
    13f8:	d108      	bne.n	140c <xvprintf+0x88>
    13fa:	2302      	movs	r3, #2
    13fc:	627b      	str	r3, [r7, #36]	; 0x24
    13fe:	687b      	ldr	r3, [r7, #4]
    1400:	1c5a      	adds	r2, r3, #1
    1402:	607a      	str	r2, [r7, #4]
    1404:	221f      	movs	r2, #31
    1406:	18ba      	adds	r2, r7, r2
    1408:	781b      	ldrb	r3, [r3, #0]
    140a:	7013      	strb	r3, [r2, #0]
    140c:	2300      	movs	r3, #0
    140e:	62bb      	str	r3, [r7, #40]	; 0x28
    1410:	e012      	b.n	1438 <xvprintf+0xb4>
    1412:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1414:	0013      	movs	r3, r2
    1416:	009b      	lsls	r3, r3, #2
    1418:	189b      	adds	r3, r3, r2
    141a:	005b      	lsls	r3, r3, #1
    141c:	001a      	movs	r2, r3
    141e:	231f      	movs	r3, #31
    1420:	18fb      	adds	r3, r7, r3
    1422:	781b      	ldrb	r3, [r3, #0]
    1424:	18d3      	adds	r3, r2, r3
    1426:	3b30      	subs	r3, #48	; 0x30
    1428:	62bb      	str	r3, [r7, #40]	; 0x28
    142a:	687b      	ldr	r3, [r7, #4]
    142c:	1c5a      	adds	r2, r3, #1
    142e:	607a      	str	r2, [r7, #4]
    1430:	221f      	movs	r2, #31
    1432:	18ba      	adds	r2, r7, r2
    1434:	781b      	ldrb	r3, [r3, #0]
    1436:	7013      	strb	r3, [r2, #0]
    1438:	231f      	movs	r3, #31
    143a:	18fb      	adds	r3, r7, r3
    143c:	781b      	ldrb	r3, [r3, #0]
    143e:	2b2f      	cmp	r3, #47	; 0x2f
    1440:	d904      	bls.n	144c <xvprintf+0xc8>
    1442:	231f      	movs	r3, #31
    1444:	18fb      	adds	r3, r7, r3
    1446:	781b      	ldrb	r3, [r3, #0]
    1448:	2b39      	cmp	r3, #57	; 0x39
    144a:	d9e2      	bls.n	1412 <xvprintf+0x8e>
    144c:	231f      	movs	r3, #31
    144e:	18fb      	adds	r3, r7, r3
    1450:	781b      	ldrb	r3, [r3, #0]
    1452:	2b6c      	cmp	r3, #108	; 0x6c
    1454:	d004      	beq.n	1460 <xvprintf+0xdc>
    1456:	231f      	movs	r3, #31
    1458:	18fb      	adds	r3, r7, r3
    145a:	781b      	ldrb	r3, [r3, #0]
    145c:	2b4c      	cmp	r3, #76	; 0x4c
    145e:	d10a      	bne.n	1476 <xvprintf+0xf2>
    1460:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1462:	2204      	movs	r2, #4
    1464:	4313      	orrs	r3, r2
    1466:	627b      	str	r3, [r7, #36]	; 0x24
    1468:	687b      	ldr	r3, [r7, #4]
    146a:	1c5a      	adds	r2, r3, #1
    146c:	607a      	str	r2, [r7, #4]
    146e:	221f      	movs	r2, #31
    1470:	18ba      	adds	r2, r7, r2
    1472:	781b      	ldrb	r3, [r3, #0]
    1474:	7013      	strb	r3, [r2, #0]
    1476:	231f      	movs	r3, #31
    1478:	18fb      	adds	r3, r7, r3
    147a:	781b      	ldrb	r3, [r3, #0]
    147c:	2b00      	cmp	r3, #0
    147e:	d100      	bne.n	1482 <xvprintf+0xfe>
    1480:	e107      	b.n	1692 <xvprintf+0x30e>
    1482:	231e      	movs	r3, #30
    1484:	18fb      	adds	r3, r7, r3
    1486:	221f      	movs	r2, #31
    1488:	18ba      	adds	r2, r7, r2
    148a:	7812      	ldrb	r2, [r2, #0]
    148c:	701a      	strb	r2, [r3, #0]
    148e:	231e      	movs	r3, #30
    1490:	18fb      	adds	r3, r7, r3
    1492:	781b      	ldrb	r3, [r3, #0]
    1494:	2b60      	cmp	r3, #96	; 0x60
    1496:	d906      	bls.n	14a6 <xvprintf+0x122>
    1498:	231e      	movs	r3, #30
    149a:	18fb      	adds	r3, r7, r3
    149c:	221e      	movs	r2, #30
    149e:	18ba      	adds	r2, r7, r2
    14a0:	7812      	ldrb	r2, [r2, #0]
    14a2:	3a20      	subs	r2, #32
    14a4:	701a      	strb	r2, [r3, #0]
    14a6:	231e      	movs	r3, #30
    14a8:	18fb      	adds	r3, r7, r3
    14aa:	781b      	ldrb	r3, [r3, #0]
    14ac:	3b42      	subs	r3, #66	; 0x42
    14ae:	2b16      	cmp	r3, #22
    14b0:	d847      	bhi.n	1542 <xvprintf+0x1be>
    14b2:	009a      	lsls	r2, r3, #2
    14b4:	4b79      	ldr	r3, [pc, #484]	; (169c <xvprintf+0x318>)
    14b6:	18d3      	adds	r3, r2, r3
    14b8:	681b      	ldr	r3, [r3, #0]
    14ba:	469f      	mov	pc, r3
    14bc:	683b      	ldr	r3, [r7, #0]
    14be:	1d1a      	adds	r2, r3, #4
    14c0:	603a      	str	r2, [r7, #0]
    14c2:	681b      	ldr	r3, [r3, #0]
    14c4:	61bb      	str	r3, [r7, #24]
    14c6:	2300      	movs	r3, #0
    14c8:	62fb      	str	r3, [r7, #44]	; 0x2c
    14ca:	e002      	b.n	14d2 <xvprintf+0x14e>
    14cc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14ce:	3301      	adds	r3, #1
    14d0:	62fb      	str	r3, [r7, #44]	; 0x2c
    14d2:	69ba      	ldr	r2, [r7, #24]
    14d4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14d6:	18d3      	adds	r3, r2, r3
    14d8:	781b      	ldrb	r3, [r3, #0]
    14da:	2b00      	cmp	r3, #0
    14dc:	d1f6      	bne.n	14cc <xvprintf+0x148>
    14de:	e002      	b.n	14e6 <xvprintf+0x162>
    14e0:	2020      	movs	r0, #32
    14e2:	f7ff feef 	bl	12c4 <xputc>
    14e6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    14e8:	2202      	movs	r2, #2
    14ea:	4013      	ands	r3, r2
    14ec:	d105      	bne.n	14fa <xvprintf+0x176>
    14ee:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14f0:	1c5a      	adds	r2, r3, #1
    14f2:	62fa      	str	r2, [r7, #44]	; 0x2c
    14f4:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14f6:	4293      	cmp	r3, r2
    14f8:	d3f2      	bcc.n	14e0 <xvprintf+0x15c>
    14fa:	69bb      	ldr	r3, [r7, #24]
    14fc:	0018      	movs	r0, r3
    14fe:	f7ff ff0d 	bl	131c <xputs>
    1502:	e002      	b.n	150a <xvprintf+0x186>
    1504:	2020      	movs	r0, #32
    1506:	f7ff fedd 	bl	12c4 <xputc>
    150a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    150c:	1c5a      	adds	r2, r3, #1
    150e:	62fa      	str	r2, [r7, #44]	; 0x2c
    1510:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1512:	4293      	cmp	r3, r2
    1514:	d3f6      	bcc.n	1504 <xvprintf+0x180>
    1516:	e0b9      	b.n	168c <xvprintf+0x308>
    1518:	683b      	ldr	r3, [r7, #0]
    151a:	1d1a      	adds	r2, r3, #4
    151c:	603a      	str	r2, [r7, #0]
    151e:	681b      	ldr	r3, [r3, #0]
    1520:	b2db      	uxtb	r3, r3
    1522:	0018      	movs	r0, r3
    1524:	f7ff fece 	bl	12c4 <xputc>
    1528:	e0b0      	b.n	168c <xvprintf+0x308>
    152a:	2302      	movs	r3, #2
    152c:	637b      	str	r3, [r7, #52]	; 0x34
    152e:	e00f      	b.n	1550 <xvprintf+0x1cc>
    1530:	2308      	movs	r3, #8
    1532:	637b      	str	r3, [r7, #52]	; 0x34
    1534:	e00c      	b.n	1550 <xvprintf+0x1cc>
    1536:	230a      	movs	r3, #10
    1538:	637b      	str	r3, [r7, #52]	; 0x34
    153a:	e009      	b.n	1550 <xvprintf+0x1cc>
    153c:	2310      	movs	r3, #16
    153e:	637b      	str	r3, [r7, #52]	; 0x34
    1540:	e006      	b.n	1550 <xvprintf+0x1cc>
    1542:	231f      	movs	r3, #31
    1544:	18fb      	adds	r3, r7, r3
    1546:	781b      	ldrb	r3, [r3, #0]
    1548:	0018      	movs	r0, r3
    154a:	f7ff febb 	bl	12c4 <xputc>
    154e:	e09d      	b.n	168c <xvprintf+0x308>
    1550:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1552:	2204      	movs	r2, #4
    1554:	4013      	ands	r3, r2
    1556:	d004      	beq.n	1562 <xvprintf+0x1de>
    1558:	683b      	ldr	r3, [r7, #0]
    155a:	1d1a      	adds	r2, r3, #4
    155c:	603a      	str	r2, [r7, #0]
    155e:	681b      	ldr	r3, [r3, #0]
    1560:	e00d      	b.n	157e <xvprintf+0x1fa>
    1562:	231e      	movs	r3, #30
    1564:	18fb      	adds	r3, r7, r3
    1566:	781b      	ldrb	r3, [r3, #0]
    1568:	2b44      	cmp	r3, #68	; 0x44
    156a:	d104      	bne.n	1576 <xvprintf+0x1f2>
    156c:	683b      	ldr	r3, [r7, #0]
    156e:	1d1a      	adds	r2, r3, #4
    1570:	603a      	str	r2, [r7, #0]
    1572:	681b      	ldr	r3, [r3, #0]
    1574:	e003      	b.n	157e <xvprintf+0x1fa>
    1576:	683b      	ldr	r3, [r7, #0]
    1578:	1d1a      	adds	r2, r3, #4
    157a:	603a      	str	r2, [r7, #0]
    157c:	681b      	ldr	r3, [r3, #0]
    157e:	623b      	str	r3, [r7, #32]
    1580:	231e      	movs	r3, #30
    1582:	18fb      	adds	r3, r7, r3
    1584:	781b      	ldrb	r3, [r3, #0]
    1586:	2b44      	cmp	r3, #68	; 0x44
    1588:	d109      	bne.n	159e <xvprintf+0x21a>
    158a:	6a3b      	ldr	r3, [r7, #32]
    158c:	2b00      	cmp	r3, #0
    158e:	da06      	bge.n	159e <xvprintf+0x21a>
    1590:	6a3b      	ldr	r3, [r7, #32]
    1592:	425b      	negs	r3, r3
    1594:	623b      	str	r3, [r7, #32]
    1596:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1598:	2208      	movs	r2, #8
    159a:	4313      	orrs	r3, r2
    159c:	627b      	str	r3, [r7, #36]	; 0x24
    159e:	2300      	movs	r3, #0
    15a0:	633b      	str	r3, [r7, #48]	; 0x30
    15a2:	6a3b      	ldr	r3, [r7, #32]
    15a4:	6b79      	ldr	r1, [r7, #52]	; 0x34
    15a6:	0018      	movs	r0, r3
    15a8:	f003 fa0e 	bl	49c8 <__aeabi_uidivmod>
    15ac:	000b      	movs	r3, r1
    15ae:	001a      	movs	r2, r3
    15b0:	231e      	movs	r3, #30
    15b2:	18fb      	adds	r3, r7, r3
    15b4:	701a      	strb	r2, [r3, #0]
    15b6:	6b79      	ldr	r1, [r7, #52]	; 0x34
    15b8:	6a38      	ldr	r0, [r7, #32]
    15ba:	f003 f97f 	bl	48bc <__aeabi_uidiv>
    15be:	0003      	movs	r3, r0
    15c0:	623b      	str	r3, [r7, #32]
    15c2:	231e      	movs	r3, #30
    15c4:	18fb      	adds	r3, r7, r3
    15c6:	781b      	ldrb	r3, [r3, #0]
    15c8:	2b09      	cmp	r3, #9
    15ca:	d90e      	bls.n	15ea <xvprintf+0x266>
    15cc:	231f      	movs	r3, #31
    15ce:	18fb      	adds	r3, r7, r3
    15d0:	781b      	ldrb	r3, [r3, #0]
    15d2:	2b78      	cmp	r3, #120	; 0x78
    15d4:	d101      	bne.n	15da <xvprintf+0x256>
    15d6:	2327      	movs	r3, #39	; 0x27
    15d8:	e000      	b.n	15dc <xvprintf+0x258>
    15da:	2307      	movs	r3, #7
    15dc:	221e      	movs	r2, #30
    15de:	18ba      	adds	r2, r7, r2
    15e0:	211e      	movs	r1, #30
    15e2:	1879      	adds	r1, r7, r1
    15e4:	7809      	ldrb	r1, [r1, #0]
    15e6:	185b      	adds	r3, r3, r1
    15e8:	7013      	strb	r3, [r2, #0]
    15ea:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15ec:	1c5a      	adds	r2, r3, #1
    15ee:	633a      	str	r2, [r7, #48]	; 0x30
    15f0:	221e      	movs	r2, #30
    15f2:	18ba      	adds	r2, r7, r2
    15f4:	7812      	ldrb	r2, [r2, #0]
    15f6:	3230      	adds	r2, #48	; 0x30
    15f8:	b2d1      	uxtb	r1, r2
    15fa:	2208      	movs	r2, #8
    15fc:	18ba      	adds	r2, r7, r2
    15fe:	54d1      	strb	r1, [r2, r3]
    1600:	6a3b      	ldr	r3, [r7, #32]
    1602:	2b00      	cmp	r3, #0
    1604:	d002      	beq.n	160c <xvprintf+0x288>
    1606:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1608:	2b0f      	cmp	r3, #15
    160a:	d9ca      	bls.n	15a2 <xvprintf+0x21e>
    160c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    160e:	2208      	movs	r2, #8
    1610:	4013      	ands	r3, r2
    1612:	d006      	beq.n	1622 <xvprintf+0x29e>
    1614:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1616:	1c5a      	adds	r2, r3, #1
    1618:	633a      	str	r2, [r7, #48]	; 0x30
    161a:	2208      	movs	r2, #8
    161c:	18ba      	adds	r2, r7, r2
    161e:	212d      	movs	r1, #45	; 0x2d
    1620:	54d1      	strb	r1, [r2, r3]
    1622:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1624:	62fb      	str	r3, [r7, #44]	; 0x2c
    1626:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1628:	2201      	movs	r2, #1
    162a:	4013      	ands	r3, r2
    162c:	d001      	beq.n	1632 <xvprintf+0x2ae>
    162e:	2230      	movs	r2, #48	; 0x30
    1630:	e000      	b.n	1634 <xvprintf+0x2b0>
    1632:	2220      	movs	r2, #32
    1634:	231e      	movs	r3, #30
    1636:	18fb      	adds	r3, r7, r3
    1638:	701a      	strb	r2, [r3, #0]
    163a:	e005      	b.n	1648 <xvprintf+0x2c4>
    163c:	231e      	movs	r3, #30
    163e:	18fb      	adds	r3, r7, r3
    1640:	781b      	ldrb	r3, [r3, #0]
    1642:	0018      	movs	r0, r3
    1644:	f7ff fe3e 	bl	12c4 <xputc>
    1648:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    164a:	2202      	movs	r2, #2
    164c:	4013      	ands	r3, r2
    164e:	d105      	bne.n	165c <xvprintf+0x2d8>
    1650:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1652:	1c5a      	adds	r2, r3, #1
    1654:	62fa      	str	r2, [r7, #44]	; 0x2c
    1656:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1658:	4293      	cmp	r3, r2
    165a:	d3ef      	bcc.n	163c <xvprintf+0x2b8>
    165c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    165e:	3b01      	subs	r3, #1
    1660:	633b      	str	r3, [r7, #48]	; 0x30
    1662:	2308      	movs	r3, #8
    1664:	18fa      	adds	r2, r7, r3
    1666:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1668:	18d3      	adds	r3, r2, r3
    166a:	781b      	ldrb	r3, [r3, #0]
    166c:	0018      	movs	r0, r3
    166e:	f7ff fe29 	bl	12c4 <xputc>
    1672:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1674:	2b00      	cmp	r3, #0
    1676:	d1f1      	bne.n	165c <xvprintf+0x2d8>
    1678:	e002      	b.n	1680 <xvprintf+0x2fc>
    167a:	2020      	movs	r0, #32
    167c:	f7ff fe22 	bl	12c4 <xputc>
    1680:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1682:	1c5a      	adds	r2, r3, #1
    1684:	62fa      	str	r2, [r7, #44]	; 0x2c
    1686:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1688:	4293      	cmp	r3, r2
    168a:	d3f6      	bcc.n	167a <xvprintf+0x2f6>
    168c:	e67f      	b.n	138e <xvprintf+0xa>
    168e:	46c0      	nop			; (mov r8, r8)
    1690:	e000      	b.n	1694 <xvprintf+0x310>
    1692:	46c0      	nop			; (mov r8, r8)
    1694:	46c0      	nop			; (mov r8, r8)
    1696:	46bd      	mov	sp, r7
    1698:	b00e      	add	sp, #56	; 0x38
    169a:	bd80      	pop	{r7, pc}
    169c:	00008ab0 	.word	0x00008ab0

000016a0 <xprintf>:
    16a0:	b40f      	push	{r0, r1, r2, r3}
    16a2:	b580      	push	{r7, lr}
    16a4:	b082      	sub	sp, #8
    16a6:	af00      	add	r7, sp, #0
    16a8:	2314      	movs	r3, #20
    16aa:	18fb      	adds	r3, r7, r3
    16ac:	607b      	str	r3, [r7, #4]
    16ae:	687a      	ldr	r2, [r7, #4]
    16b0:	693b      	ldr	r3, [r7, #16]
    16b2:	0011      	movs	r1, r2
    16b4:	0018      	movs	r0, r3
    16b6:	f7ff fe65 	bl	1384 <xvprintf>
    16ba:	46c0      	nop			; (mov r8, r8)
    16bc:	46bd      	mov	sp, r7
    16be:	b002      	add	sp, #8
    16c0:	bc80      	pop	{r7}
    16c2:	bc08      	pop	{r3}
    16c4:	b004      	add	sp, #16
    16c6:	4718      	bx	r3

000016c8 <xsprintf>:
    16c8:	b40e      	push	{r1, r2, r3}
    16ca:	b580      	push	{r7, lr}
    16cc:	b085      	sub	sp, #20
    16ce:	af00      	add	r7, sp, #0
    16d0:	6078      	str	r0, [r7, #4]
    16d2:	4b0d      	ldr	r3, [pc, #52]	; (1708 <xsprintf+0x40>)
    16d4:	687a      	ldr	r2, [r7, #4]
    16d6:	601a      	str	r2, [r3, #0]
    16d8:	2320      	movs	r3, #32
    16da:	18fb      	adds	r3, r7, r3
    16dc:	60fb      	str	r3, [r7, #12]
    16de:	68fa      	ldr	r2, [r7, #12]
    16e0:	69fb      	ldr	r3, [r7, #28]
    16e2:	0011      	movs	r1, r2
    16e4:	0018      	movs	r0, r3
    16e6:	f7ff fe4d 	bl	1384 <xvprintf>
    16ea:	4b07      	ldr	r3, [pc, #28]	; (1708 <xsprintf+0x40>)
    16ec:	681b      	ldr	r3, [r3, #0]
    16ee:	2200      	movs	r2, #0
    16f0:	701a      	strb	r2, [r3, #0]
    16f2:	4b05      	ldr	r3, [pc, #20]	; (1708 <xsprintf+0x40>)
    16f4:	2200      	movs	r2, #0
    16f6:	601a      	str	r2, [r3, #0]
    16f8:	46c0      	nop			; (mov r8, r8)
    16fa:	46bd      	mov	sp, r7
    16fc:	b005      	add	sp, #20
    16fe:	bc80      	pop	{r7}
    1700:	bc08      	pop	{r3}
    1702:	b003      	add	sp, #12
    1704:	4718      	bx	r3
    1706:	46c0      	nop			; (mov r8, r8)
    1708:	20000900 	.word	0x20000900

0000170c <xfprintf>:
    170c:	b40e      	push	{r1, r2, r3}
    170e:	b580      	push	{r7, lr}
    1710:	b085      	sub	sp, #20
    1712:	af00      	add	r7, sp, #0
    1714:	6078      	str	r0, [r7, #4]
    1716:	4b0c      	ldr	r3, [pc, #48]	; (1748 <xfprintf+0x3c>)
    1718:	681b      	ldr	r3, [r3, #0]
    171a:	60fb      	str	r3, [r7, #12]
    171c:	4b0a      	ldr	r3, [pc, #40]	; (1748 <xfprintf+0x3c>)
    171e:	687a      	ldr	r2, [r7, #4]
    1720:	601a      	str	r2, [r3, #0]
    1722:	2320      	movs	r3, #32
    1724:	18fb      	adds	r3, r7, r3
    1726:	60bb      	str	r3, [r7, #8]
    1728:	68ba      	ldr	r2, [r7, #8]
    172a:	69fb      	ldr	r3, [r7, #28]
    172c:	0011      	movs	r1, r2
    172e:	0018      	movs	r0, r3
    1730:	f7ff fe28 	bl	1384 <xvprintf>
    1734:	4b04      	ldr	r3, [pc, #16]	; (1748 <xfprintf+0x3c>)
    1736:	68fa      	ldr	r2, [r7, #12]
    1738:	601a      	str	r2, [r3, #0]
    173a:	46c0      	nop			; (mov r8, r8)
    173c:	46bd      	mov	sp, r7
    173e:	b005      	add	sp, #20
    1740:	bc80      	pop	{r7}
    1742:	bc08      	pop	{r3}
    1744:	b003      	add	sp, #12
    1746:	4718      	bx	r3
    1748:	200008fc 	.word	0x200008fc

0000174c <put_dump>:
    174c:	b580      	push	{r7, lr}
    174e:	b088      	sub	sp, #32
    1750:	af00      	add	r7, sp, #0
    1752:	60f8      	str	r0, [r7, #12]
    1754:	60b9      	str	r1, [r7, #8]
    1756:	607a      	str	r2, [r7, #4]
    1758:	603b      	str	r3, [r7, #0]
    175a:	68ba      	ldr	r2, [r7, #8]
    175c:	4b38      	ldr	r3, [pc, #224]	; (1840 <put_dump+0xf4>)
    175e:	0011      	movs	r1, r2
    1760:	0018      	movs	r0, r3
    1762:	f7ff ff9d 	bl	16a0 <xprintf>
    1766:	683b      	ldr	r3, [r7, #0]
    1768:	2b02      	cmp	r3, #2
    176a:	d03c      	beq.n	17e6 <put_dump+0x9a>
    176c:	2b04      	cmp	r3, #4
    176e:	d04d      	beq.n	180c <put_dump+0xc0>
    1770:	2b01      	cmp	r3, #1
    1772:	d15d      	bne.n	1830 <put_dump+0xe4>
    1774:	68fb      	ldr	r3, [r7, #12]
    1776:	613b      	str	r3, [r7, #16]
    1778:	2300      	movs	r3, #0
    177a:	61fb      	str	r3, [r7, #28]
    177c:	e00c      	b.n	1798 <put_dump+0x4c>
    177e:	69fb      	ldr	r3, [r7, #28]
    1780:	693a      	ldr	r2, [r7, #16]
    1782:	18d3      	adds	r3, r2, r3
    1784:	781b      	ldrb	r3, [r3, #0]
    1786:	001a      	movs	r2, r3
    1788:	4b2e      	ldr	r3, [pc, #184]	; (1844 <put_dump+0xf8>)
    178a:	0011      	movs	r1, r2
    178c:	0018      	movs	r0, r3
    178e:	f7ff ff87 	bl	16a0 <xprintf>
    1792:	69fb      	ldr	r3, [r7, #28]
    1794:	3301      	adds	r3, #1
    1796:	61fb      	str	r3, [r7, #28]
    1798:	69fa      	ldr	r2, [r7, #28]
    179a:	687b      	ldr	r3, [r7, #4]
    179c:	429a      	cmp	r2, r3
    179e:	dbee      	blt.n	177e <put_dump+0x32>
    17a0:	2020      	movs	r0, #32
    17a2:	f7ff fd8f 	bl	12c4 <xputc>
    17a6:	2300      	movs	r3, #0
    17a8:	61fb      	str	r3, [r7, #28]
    17aa:	e017      	b.n	17dc <put_dump+0x90>
    17ac:	69fb      	ldr	r3, [r7, #28]
    17ae:	693a      	ldr	r2, [r7, #16]
    17b0:	18d3      	adds	r3, r2, r3
    17b2:	781b      	ldrb	r3, [r3, #0]
    17b4:	2b1f      	cmp	r3, #31
    17b6:	d90a      	bls.n	17ce <put_dump+0x82>
    17b8:	69fb      	ldr	r3, [r7, #28]
    17ba:	693a      	ldr	r2, [r7, #16]
    17bc:	18d3      	adds	r3, r2, r3
    17be:	781b      	ldrb	r3, [r3, #0]
    17c0:	2b7e      	cmp	r3, #126	; 0x7e
    17c2:	d804      	bhi.n	17ce <put_dump+0x82>
    17c4:	69fb      	ldr	r3, [r7, #28]
    17c6:	693a      	ldr	r2, [r7, #16]
    17c8:	18d3      	adds	r3, r2, r3
    17ca:	781b      	ldrb	r3, [r3, #0]
    17cc:	e000      	b.n	17d0 <put_dump+0x84>
    17ce:	232e      	movs	r3, #46	; 0x2e
    17d0:	0018      	movs	r0, r3
    17d2:	f7ff fd77 	bl	12c4 <xputc>
    17d6:	69fb      	ldr	r3, [r7, #28]
    17d8:	3301      	adds	r3, #1
    17da:	61fb      	str	r3, [r7, #28]
    17dc:	69fa      	ldr	r2, [r7, #28]
    17de:	687b      	ldr	r3, [r7, #4]
    17e0:	429a      	cmp	r2, r3
    17e2:	dbe3      	blt.n	17ac <put_dump+0x60>
    17e4:	e024      	b.n	1830 <put_dump+0xe4>
    17e6:	68fb      	ldr	r3, [r7, #12]
    17e8:	61bb      	str	r3, [r7, #24]
    17ea:	69bb      	ldr	r3, [r7, #24]
    17ec:	1c9a      	adds	r2, r3, #2
    17ee:	61ba      	str	r2, [r7, #24]
    17f0:	881b      	ldrh	r3, [r3, #0]
    17f2:	001a      	movs	r2, r3
    17f4:	4b14      	ldr	r3, [pc, #80]	; (1848 <put_dump+0xfc>)
    17f6:	0011      	movs	r1, r2
    17f8:	0018      	movs	r0, r3
    17fa:	f7ff ff51 	bl	16a0 <xprintf>
    17fe:	687b      	ldr	r3, [r7, #4]
    1800:	3b01      	subs	r3, #1
    1802:	607b      	str	r3, [r7, #4]
    1804:	687b      	ldr	r3, [r7, #4]
    1806:	2b00      	cmp	r3, #0
    1808:	d1ef      	bne.n	17ea <put_dump+0x9e>
    180a:	e011      	b.n	1830 <put_dump+0xe4>
    180c:	68fb      	ldr	r3, [r7, #12]
    180e:	617b      	str	r3, [r7, #20]
    1810:	697b      	ldr	r3, [r7, #20]
    1812:	1d1a      	adds	r2, r3, #4
    1814:	617a      	str	r2, [r7, #20]
    1816:	681a      	ldr	r2, [r3, #0]
    1818:	4b0c      	ldr	r3, [pc, #48]	; (184c <put_dump+0x100>)
    181a:	0011      	movs	r1, r2
    181c:	0018      	movs	r0, r3
    181e:	f7ff ff3f 	bl	16a0 <xprintf>
    1822:	687b      	ldr	r3, [r7, #4]
    1824:	3b01      	subs	r3, #1
    1826:	607b      	str	r3, [r7, #4]
    1828:	687b      	ldr	r3, [r7, #4]
    182a:	2b00      	cmp	r3, #0
    182c:	d1f0      	bne.n	1810 <put_dump+0xc4>
    182e:	46c0      	nop			; (mov r8, r8)
    1830:	200a      	movs	r0, #10
    1832:	f7ff fd47 	bl	12c4 <xputc>
    1836:	46c0      	nop			; (mov r8, r8)
    1838:	46bd      	mov	sp, r7
    183a:	b008      	add	sp, #32
    183c:	bd80      	pop	{r7, pc}
    183e:	46c0      	nop			; (mov r8, r8)
    1840:	00008b0c 	.word	0x00008b0c
    1844:	00008b14 	.word	0x00008b14
    1848:	00008b1c 	.word	0x00008b1c
    184c:	00008b24 	.word	0x00008b24

00001850 <xgets>:
    1850:	b580      	push	{r7, lr}
    1852:	b084      	sub	sp, #16
    1854:	af00      	add	r7, sp, #0
    1856:	6078      	str	r0, [r7, #4]
    1858:	6039      	str	r1, [r7, #0]
    185a:	4b24      	ldr	r3, [pc, #144]	; (18ec <xgets+0x9c>)
    185c:	681b      	ldr	r3, [r3, #0]
    185e:	2b00      	cmp	r3, #0
    1860:	d101      	bne.n	1866 <xgets+0x16>
    1862:	2300      	movs	r3, #0
    1864:	e03e      	b.n	18e4 <xgets+0x94>
    1866:	2300      	movs	r3, #0
    1868:	60fb      	str	r3, [r7, #12]
    186a:	4b20      	ldr	r3, [pc, #128]	; (18ec <xgets+0x9c>)
    186c:	681b      	ldr	r3, [r3, #0]
    186e:	4798      	blx	r3
    1870:	0003      	movs	r3, r0
    1872:	60bb      	str	r3, [r7, #8]
    1874:	68bb      	ldr	r3, [r7, #8]
    1876:	2b00      	cmp	r3, #0
    1878:	d101      	bne.n	187e <xgets+0x2e>
    187a:	2300      	movs	r3, #0
    187c:	e032      	b.n	18e4 <xgets+0x94>
    187e:	68bb      	ldr	r3, [r7, #8]
    1880:	2b0d      	cmp	r3, #13
    1882:	d025      	beq.n	18d0 <xgets+0x80>
    1884:	68bb      	ldr	r3, [r7, #8]
    1886:	2b08      	cmp	r3, #8
    1888:	d10b      	bne.n	18a2 <xgets+0x52>
    188a:	68fb      	ldr	r3, [r7, #12]
    188c:	2b00      	cmp	r3, #0
    188e:	d008      	beq.n	18a2 <xgets+0x52>
    1890:	68fb      	ldr	r3, [r7, #12]
    1892:	3b01      	subs	r3, #1
    1894:	60fb      	str	r3, [r7, #12]
    1896:	68bb      	ldr	r3, [r7, #8]
    1898:	b2db      	uxtb	r3, r3
    189a:	0018      	movs	r0, r3
    189c:	f7ff fd12 	bl	12c4 <xputc>
    18a0:	e015      	b.n	18ce <xgets+0x7e>
    18a2:	68bb      	ldr	r3, [r7, #8]
    18a4:	2b1f      	cmp	r3, #31
    18a6:	dde0      	ble.n	186a <xgets+0x1a>
    18a8:	683b      	ldr	r3, [r7, #0]
    18aa:	1e5a      	subs	r2, r3, #1
    18ac:	68fb      	ldr	r3, [r7, #12]
    18ae:	429a      	cmp	r2, r3
    18b0:	dddb      	ble.n	186a <xgets+0x1a>
    18b2:	68fb      	ldr	r3, [r7, #12]
    18b4:	1c5a      	adds	r2, r3, #1
    18b6:	60fa      	str	r2, [r7, #12]
    18b8:	001a      	movs	r2, r3
    18ba:	687b      	ldr	r3, [r7, #4]
    18bc:	189b      	adds	r3, r3, r2
    18be:	68ba      	ldr	r2, [r7, #8]
    18c0:	b2d2      	uxtb	r2, r2
    18c2:	701a      	strb	r2, [r3, #0]
    18c4:	68bb      	ldr	r3, [r7, #8]
    18c6:	b2db      	uxtb	r3, r3
    18c8:	0018      	movs	r0, r3
    18ca:	f7ff fcfb 	bl	12c4 <xputc>
    18ce:	e7cc      	b.n	186a <xgets+0x1a>
    18d0:	46c0      	nop			; (mov r8, r8)
    18d2:	68fb      	ldr	r3, [r7, #12]
    18d4:	687a      	ldr	r2, [r7, #4]
    18d6:	18d3      	adds	r3, r2, r3
    18d8:	2200      	movs	r2, #0
    18da:	701a      	strb	r2, [r3, #0]
    18dc:	200a      	movs	r0, #10
    18de:	f7ff fcf1 	bl	12c4 <xputc>
    18e2:	2301      	movs	r3, #1
    18e4:	0018      	movs	r0, r3
    18e6:	46bd      	mov	sp, r7
    18e8:	b004      	add	sp, #16
    18ea:	bd80      	pop	{r7, pc}
    18ec:	20000904 	.word	0x20000904

000018f0 <xfgets>:
    18f0:	b580      	push	{r7, lr}
    18f2:	b086      	sub	sp, #24
    18f4:	af00      	add	r7, sp, #0
    18f6:	60f8      	str	r0, [r7, #12]
    18f8:	60b9      	str	r1, [r7, #8]
    18fa:	607a      	str	r2, [r7, #4]
    18fc:	4b0a      	ldr	r3, [pc, #40]	; (1928 <xfgets+0x38>)
    18fe:	681b      	ldr	r3, [r3, #0]
    1900:	617b      	str	r3, [r7, #20]
    1902:	4b09      	ldr	r3, [pc, #36]	; (1928 <xfgets+0x38>)
    1904:	68fa      	ldr	r2, [r7, #12]
    1906:	601a      	str	r2, [r3, #0]
    1908:	687a      	ldr	r2, [r7, #4]
    190a:	68bb      	ldr	r3, [r7, #8]
    190c:	0011      	movs	r1, r2
    190e:	0018      	movs	r0, r3
    1910:	f7ff ff9e 	bl	1850 <xgets>
    1914:	0003      	movs	r3, r0
    1916:	613b      	str	r3, [r7, #16]
    1918:	4b03      	ldr	r3, [pc, #12]	; (1928 <xfgets+0x38>)
    191a:	697a      	ldr	r2, [r7, #20]
    191c:	601a      	str	r2, [r3, #0]
    191e:	693b      	ldr	r3, [r7, #16]
    1920:	0018      	movs	r0, r3
    1922:	46bd      	mov	sp, r7
    1924:	b006      	add	sp, #24
    1926:	bd80      	pop	{r7, pc}
    1928:	20000904 	.word	0x20000904

0000192c <xatoi>:
    192c:	b580      	push	{r7, lr}
    192e:	b084      	sub	sp, #16
    1930:	af00      	add	r7, sp, #0
    1932:	6078      	str	r0, [r7, #4]
    1934:	6039      	str	r1, [r7, #0]
    1936:	2309      	movs	r3, #9
    1938:	18fb      	adds	r3, r7, r3
    193a:	2200      	movs	r2, #0
    193c:	701a      	strb	r2, [r3, #0]
    193e:	683b      	ldr	r3, [r7, #0]
    1940:	2200      	movs	r2, #0
    1942:	601a      	str	r2, [r3, #0]
    1944:	e004      	b.n	1950 <xatoi+0x24>
    1946:	687b      	ldr	r3, [r7, #4]
    1948:	681b      	ldr	r3, [r3, #0]
    194a:	1c5a      	adds	r2, r3, #1
    194c:	687b      	ldr	r3, [r7, #4]
    194e:	601a      	str	r2, [r3, #0]
    1950:	687b      	ldr	r3, [r7, #4]
    1952:	681a      	ldr	r2, [r3, #0]
    1954:	230b      	movs	r3, #11
    1956:	18fb      	adds	r3, r7, r3
    1958:	7812      	ldrb	r2, [r2, #0]
    195a:	701a      	strb	r2, [r3, #0]
    195c:	230b      	movs	r3, #11
    195e:	18fb      	adds	r3, r7, r3
    1960:	781b      	ldrb	r3, [r3, #0]
    1962:	2b20      	cmp	r3, #32
    1964:	d0ef      	beq.n	1946 <xatoi+0x1a>
    1966:	230b      	movs	r3, #11
    1968:	18fb      	adds	r3, r7, r3
    196a:	781b      	ldrb	r3, [r3, #0]
    196c:	2b2d      	cmp	r3, #45	; 0x2d
    196e:	d10e      	bne.n	198e <xatoi+0x62>
    1970:	2309      	movs	r3, #9
    1972:	18fb      	adds	r3, r7, r3
    1974:	2201      	movs	r2, #1
    1976:	701a      	strb	r2, [r3, #0]
    1978:	687b      	ldr	r3, [r7, #4]
    197a:	681b      	ldr	r3, [r3, #0]
    197c:	1c5a      	adds	r2, r3, #1
    197e:	687b      	ldr	r3, [r7, #4]
    1980:	601a      	str	r2, [r3, #0]
    1982:	687b      	ldr	r3, [r7, #4]
    1984:	681a      	ldr	r2, [r3, #0]
    1986:	230b      	movs	r3, #11
    1988:	18fb      	adds	r3, r7, r3
    198a:	7812      	ldrb	r2, [r2, #0]
    198c:	701a      	strb	r2, [r3, #0]
    198e:	230b      	movs	r3, #11
    1990:	18fb      	adds	r3, r7, r3
    1992:	781b      	ldrb	r3, [r3, #0]
    1994:	2b30      	cmp	r3, #48	; 0x30
    1996:	d149      	bne.n	1a2c <xatoi+0x100>
    1998:	687b      	ldr	r3, [r7, #4]
    199a:	681b      	ldr	r3, [r3, #0]
    199c:	1c5a      	adds	r2, r3, #1
    199e:	687b      	ldr	r3, [r7, #4]
    19a0:	601a      	str	r2, [r3, #0]
    19a2:	687b      	ldr	r3, [r7, #4]
    19a4:	681a      	ldr	r2, [r3, #0]
    19a6:	230b      	movs	r3, #11
    19a8:	18fb      	adds	r3, r7, r3
    19aa:	7812      	ldrb	r2, [r2, #0]
    19ac:	701a      	strb	r2, [r3, #0]
    19ae:	230b      	movs	r3, #11
    19b0:	18fb      	adds	r3, r7, r3
    19b2:	781b      	ldrb	r3, [r3, #0]
    19b4:	2b62      	cmp	r3, #98	; 0x62
    19b6:	d011      	beq.n	19dc <xatoi+0xb0>
    19b8:	2b78      	cmp	r3, #120	; 0x78
    19ba:	d11f      	bne.n	19fc <xatoi+0xd0>
    19bc:	230a      	movs	r3, #10
    19be:	18fb      	adds	r3, r7, r3
    19c0:	2210      	movs	r2, #16
    19c2:	701a      	strb	r2, [r3, #0]
    19c4:	687b      	ldr	r3, [r7, #4]
    19c6:	681b      	ldr	r3, [r3, #0]
    19c8:	1c5a      	adds	r2, r3, #1
    19ca:	687b      	ldr	r3, [r7, #4]
    19cc:	601a      	str	r2, [r3, #0]
    19ce:	687b      	ldr	r3, [r7, #4]
    19d0:	681a      	ldr	r2, [r3, #0]
    19d2:	230b      	movs	r3, #11
    19d4:	18fb      	adds	r3, r7, r3
    19d6:	7812      	ldrb	r2, [r2, #0]
    19d8:	701a      	strb	r2, [r3, #0]
    19da:	e037      	b.n	1a4c <xatoi+0x120>
    19dc:	230a      	movs	r3, #10
    19de:	18fb      	adds	r3, r7, r3
    19e0:	2202      	movs	r2, #2
    19e2:	701a      	strb	r2, [r3, #0]
    19e4:	687b      	ldr	r3, [r7, #4]
    19e6:	681b      	ldr	r3, [r3, #0]
    19e8:	1c5a      	adds	r2, r3, #1
    19ea:	687b      	ldr	r3, [r7, #4]
    19ec:	601a      	str	r2, [r3, #0]
    19ee:	687b      	ldr	r3, [r7, #4]
    19f0:	681a      	ldr	r2, [r3, #0]
    19f2:	230b      	movs	r3, #11
    19f4:	18fb      	adds	r3, r7, r3
    19f6:	7812      	ldrb	r2, [r2, #0]
    19f8:	701a      	strb	r2, [r3, #0]
    19fa:	e027      	b.n	1a4c <xatoi+0x120>
    19fc:	230b      	movs	r3, #11
    19fe:	18fb      	adds	r3, r7, r3
    1a00:	781b      	ldrb	r3, [r3, #0]
    1a02:	2b20      	cmp	r3, #32
    1a04:	d801      	bhi.n	1a0a <xatoi+0xde>
    1a06:	2301      	movs	r3, #1
    1a08:	e079      	b.n	1afe <xatoi+0x1d2>
    1a0a:	230b      	movs	r3, #11
    1a0c:	18fb      	adds	r3, r7, r3
    1a0e:	781b      	ldrb	r3, [r3, #0]
    1a10:	2b2f      	cmp	r3, #47	; 0x2f
    1a12:	d904      	bls.n	1a1e <xatoi+0xf2>
    1a14:	230b      	movs	r3, #11
    1a16:	18fb      	adds	r3, r7, r3
    1a18:	781b      	ldrb	r3, [r3, #0]
    1a1a:	2b39      	cmp	r3, #57	; 0x39
    1a1c:	d901      	bls.n	1a22 <xatoi+0xf6>
    1a1e:	2300      	movs	r3, #0
    1a20:	e06d      	b.n	1afe <xatoi+0x1d2>
    1a22:	230a      	movs	r3, #10
    1a24:	18fb      	adds	r3, r7, r3
    1a26:	2208      	movs	r2, #8
    1a28:	701a      	strb	r2, [r3, #0]
    1a2a:	e00f      	b.n	1a4c <xatoi+0x120>
    1a2c:	230b      	movs	r3, #11
    1a2e:	18fb      	adds	r3, r7, r3
    1a30:	781b      	ldrb	r3, [r3, #0]
    1a32:	2b2f      	cmp	r3, #47	; 0x2f
    1a34:	d904      	bls.n	1a40 <xatoi+0x114>
    1a36:	230b      	movs	r3, #11
    1a38:	18fb      	adds	r3, r7, r3
    1a3a:	781b      	ldrb	r3, [r3, #0]
    1a3c:	2b39      	cmp	r3, #57	; 0x39
    1a3e:	d901      	bls.n	1a44 <xatoi+0x118>
    1a40:	2300      	movs	r3, #0
    1a42:	e05c      	b.n	1afe <xatoi+0x1d2>
    1a44:	230a      	movs	r3, #10
    1a46:	18fb      	adds	r3, r7, r3
    1a48:	220a      	movs	r2, #10
    1a4a:	701a      	strb	r2, [r3, #0]
    1a4c:	2300      	movs	r3, #0
    1a4e:	60fb      	str	r3, [r7, #12]
    1a50:	e044      	b.n	1adc <xatoi+0x1b0>
    1a52:	230b      	movs	r3, #11
    1a54:	18fb      	adds	r3, r7, r3
    1a56:	781b      	ldrb	r3, [r3, #0]
    1a58:	2b60      	cmp	r3, #96	; 0x60
    1a5a:	d906      	bls.n	1a6a <xatoi+0x13e>
    1a5c:	230b      	movs	r3, #11
    1a5e:	18fb      	adds	r3, r7, r3
    1a60:	220b      	movs	r2, #11
    1a62:	18ba      	adds	r2, r7, r2
    1a64:	7812      	ldrb	r2, [r2, #0]
    1a66:	3a20      	subs	r2, #32
    1a68:	701a      	strb	r2, [r3, #0]
    1a6a:	230b      	movs	r3, #11
    1a6c:	18fb      	adds	r3, r7, r3
    1a6e:	220b      	movs	r2, #11
    1a70:	18ba      	adds	r2, r7, r2
    1a72:	7812      	ldrb	r2, [r2, #0]
    1a74:	3a30      	subs	r2, #48	; 0x30
    1a76:	701a      	strb	r2, [r3, #0]
    1a78:	230b      	movs	r3, #11
    1a7a:	18fb      	adds	r3, r7, r3
    1a7c:	781b      	ldrb	r3, [r3, #0]
    1a7e:	2b10      	cmp	r3, #16
    1a80:	d90d      	bls.n	1a9e <xatoi+0x172>
    1a82:	230b      	movs	r3, #11
    1a84:	18fb      	adds	r3, r7, r3
    1a86:	220b      	movs	r2, #11
    1a88:	18ba      	adds	r2, r7, r2
    1a8a:	7812      	ldrb	r2, [r2, #0]
    1a8c:	3a07      	subs	r2, #7
    1a8e:	701a      	strb	r2, [r3, #0]
    1a90:	230b      	movs	r3, #11
    1a92:	18fb      	adds	r3, r7, r3
    1a94:	781b      	ldrb	r3, [r3, #0]
    1a96:	2b09      	cmp	r3, #9
    1a98:	d801      	bhi.n	1a9e <xatoi+0x172>
    1a9a:	2300      	movs	r3, #0
    1a9c:	e02f      	b.n	1afe <xatoi+0x1d2>
    1a9e:	230b      	movs	r3, #11
    1aa0:	18fa      	adds	r2, r7, r3
    1aa2:	230a      	movs	r3, #10
    1aa4:	18fb      	adds	r3, r7, r3
    1aa6:	7812      	ldrb	r2, [r2, #0]
    1aa8:	781b      	ldrb	r3, [r3, #0]
    1aaa:	429a      	cmp	r2, r3
    1aac:	d301      	bcc.n	1ab2 <xatoi+0x186>
    1aae:	2300      	movs	r3, #0
    1ab0:	e025      	b.n	1afe <xatoi+0x1d2>
    1ab2:	230a      	movs	r3, #10
    1ab4:	18fb      	adds	r3, r7, r3
    1ab6:	781b      	ldrb	r3, [r3, #0]
    1ab8:	68fa      	ldr	r2, [r7, #12]
    1aba:	435a      	muls	r2, r3
    1abc:	230b      	movs	r3, #11
    1abe:	18fb      	adds	r3, r7, r3
    1ac0:	781b      	ldrb	r3, [r3, #0]
    1ac2:	18d3      	adds	r3, r2, r3
    1ac4:	60fb      	str	r3, [r7, #12]
    1ac6:	687b      	ldr	r3, [r7, #4]
    1ac8:	681b      	ldr	r3, [r3, #0]
    1aca:	1c5a      	adds	r2, r3, #1
    1acc:	687b      	ldr	r3, [r7, #4]
    1ace:	601a      	str	r2, [r3, #0]
    1ad0:	687b      	ldr	r3, [r7, #4]
    1ad2:	681a      	ldr	r2, [r3, #0]
    1ad4:	230b      	movs	r3, #11
    1ad6:	18fb      	adds	r3, r7, r3
    1ad8:	7812      	ldrb	r2, [r2, #0]
    1ada:	701a      	strb	r2, [r3, #0]
    1adc:	230b      	movs	r3, #11
    1ade:	18fb      	adds	r3, r7, r3
    1ae0:	781b      	ldrb	r3, [r3, #0]
    1ae2:	2b20      	cmp	r3, #32
    1ae4:	d8b5      	bhi.n	1a52 <xatoi+0x126>
    1ae6:	2309      	movs	r3, #9
    1ae8:	18fb      	adds	r3, r7, r3
    1aea:	781b      	ldrb	r3, [r3, #0]
    1aec:	2b00      	cmp	r3, #0
    1aee:	d002      	beq.n	1af6 <xatoi+0x1ca>
    1af0:	68fb      	ldr	r3, [r7, #12]
    1af2:	425b      	negs	r3, r3
    1af4:	60fb      	str	r3, [r7, #12]
    1af6:	68fa      	ldr	r2, [r7, #12]
    1af8:	683b      	ldr	r3, [r7, #0]
    1afa:	601a      	str	r2, [r3, #0]
    1afc:	2301      	movs	r3, #1
    1afe:	0018      	movs	r0, r3
    1b00:	46bd      	mov	sp, r7
    1b02:	b004      	add	sp, #16
    1b04:	bd80      	pop	{r7, pc}
    1b06:	46c0      	nop			; (mov r8, r8)

00001b08 <os_idle_demon>:
    1b08:	b580      	push	{r7, lr}
    1b0a:	af00      	add	r7, sp, #0
    1b0c:	e7fe      	b.n	1b0c <os_idle_demon+0x4>
    1b0e:	46c0      	nop			; (mov r8, r8)

00001b10 <os_error>:
    1b10:	b580      	push	{r7, lr}
    1b12:	b082      	sub	sp, #8
    1b14:	af00      	add	r7, sp, #0
    1b16:	6078      	str	r0, [r7, #4]
    1b18:	687b      	ldr	r3, [r7, #4]
    1b1a:	2b02      	cmp	r3, #2
    1b1c:	d009      	beq.n	1b32 <os_error+0x22>
    1b1e:	d802      	bhi.n	1b26 <os_error+0x16>
    1b20:	2b01      	cmp	r3, #1
    1b22:	d005      	beq.n	1b30 <os_error+0x20>
    1b24:	e008      	b.n	1b38 <os_error+0x28>
    1b26:	2b03      	cmp	r3, #3
    1b28:	d004      	beq.n	1b34 <os_error+0x24>
    1b2a:	2b04      	cmp	r3, #4
    1b2c:	d003      	beq.n	1b36 <os_error+0x26>
    1b2e:	e003      	b.n	1b38 <os_error+0x28>
    1b30:	e002      	b.n	1b38 <os_error+0x28>
    1b32:	e001      	b.n	1b38 <os_error+0x28>
    1b34:	e000      	b.n	1b38 <os_error+0x28>
    1b36:	46c0      	nop			; (mov r8, r8)
    1b38:	e7fe      	b.n	1b38 <os_error+0x28>
    1b3a:	46c0      	nop			; (mov r8, r8)

00001b3c <software_init_hook>:
    1b3c:	2000      	movs	r0, #0
    1b3e:	2100      	movs	r1, #0
    1b40:	4604      	mov	r4, r0
    1b42:	460d      	mov	r5, r1
    1b44:	4808      	ldr	r0, [pc, #32]	; (1b68 <software_init_hook+0x2c>)
    1b46:	f003 fa13 	bl	4f70 <atexit>
    1b4a:	f003 fa43 	bl	4fd4 <__libc_init_array>
    1b4e:	4620      	mov	r0, r4
    1b50:	4629      	mov	r1, r5
    1b52:	f004 f88b 	bl	5c6c <osKernelInitialize>
    1b56:	4805      	ldr	r0, [pc, #20]	; (1b6c <software_init_hook+0x30>)
    1b58:	2100      	movs	r1, #0
    1b5a:	f004 fa19 	bl	5f90 <osThreadCreate>
    1b5e:	f004 f921 	bl	5da4 <osKernelStart>
    1b62:	f003 fa0d 	bl	4f80 <exit>
    1b66:	0000      	.short	0x0000
    1b68:	00004fa1 	.word	0x00004fa1
    1b6c:	00008b84 	.word	0x00008b84

00001b70 <__NVIC_EnableIRQ>:
    1b70:	b580      	push	{r7, lr}
    1b72:	b082      	sub	sp, #8
    1b74:	af00      	add	r7, sp, #0
    1b76:	0002      	movs	r2, r0
    1b78:	1dfb      	adds	r3, r7, #7
    1b7a:	701a      	strb	r2, [r3, #0]
    1b7c:	1dfb      	adds	r3, r7, #7
    1b7e:	781b      	ldrb	r3, [r3, #0]
    1b80:	2b7f      	cmp	r3, #127	; 0x7f
    1b82:	d809      	bhi.n	1b98 <__NVIC_EnableIRQ+0x28>
    1b84:	4b06      	ldr	r3, [pc, #24]	; (1ba0 <__NVIC_EnableIRQ+0x30>)
    1b86:	1dfa      	adds	r2, r7, #7
    1b88:	7812      	ldrb	r2, [r2, #0]
    1b8a:	0011      	movs	r1, r2
    1b8c:	221f      	movs	r2, #31
    1b8e:	400a      	ands	r2, r1
    1b90:	2101      	movs	r1, #1
    1b92:	4091      	lsls	r1, r2
    1b94:	000a      	movs	r2, r1
    1b96:	601a      	str	r2, [r3, #0]
    1b98:	46c0      	nop			; (mov r8, r8)
    1b9a:	46bd      	mov	sp, r7
    1b9c:	b002      	add	sp, #8
    1b9e:	bd80      	pop	{r7, pc}
    1ba0:	e000e100 	.word	0xe000e100

00001ba4 <__NVIC_ClearPendingIRQ>:
    1ba4:	b580      	push	{r7, lr}
    1ba6:	b082      	sub	sp, #8
    1ba8:	af00      	add	r7, sp, #0
    1baa:	0002      	movs	r2, r0
    1bac:	1dfb      	adds	r3, r7, #7
    1bae:	701a      	strb	r2, [r3, #0]
    1bb0:	1dfb      	adds	r3, r7, #7
    1bb2:	781b      	ldrb	r3, [r3, #0]
    1bb4:	2b7f      	cmp	r3, #127	; 0x7f
    1bb6:	d80a      	bhi.n	1bce <__NVIC_ClearPendingIRQ+0x2a>
    1bb8:	4907      	ldr	r1, [pc, #28]	; (1bd8 <__NVIC_ClearPendingIRQ+0x34>)
    1bba:	1dfb      	adds	r3, r7, #7
    1bbc:	781b      	ldrb	r3, [r3, #0]
    1bbe:	001a      	movs	r2, r3
    1bc0:	231f      	movs	r3, #31
    1bc2:	4013      	ands	r3, r2
    1bc4:	2201      	movs	r2, #1
    1bc6:	409a      	lsls	r2, r3
    1bc8:	23c0      	movs	r3, #192	; 0xc0
    1bca:	005b      	lsls	r3, r3, #1
    1bcc:	50ca      	str	r2, [r1, r3]
    1bce:	46c0      	nop			; (mov r8, r8)
    1bd0:	46bd      	mov	sp, r7
    1bd2:	b002      	add	sp, #8
    1bd4:	bd80      	pop	{r7, pc}
    1bd6:	46c0      	nop			; (mov r8, r8)
    1bd8:	e000e100 	.word	0xe000e100

00001bdc <__NVIC_SetPriority>:
    1bdc:	b5b0      	push	{r4, r5, r7, lr}
    1bde:	b082      	sub	sp, #8
    1be0:	af00      	add	r7, sp, #0
    1be2:	0002      	movs	r2, r0
    1be4:	6039      	str	r1, [r7, #0]
    1be6:	1dfb      	adds	r3, r7, #7
    1be8:	701a      	strb	r2, [r3, #0]
    1bea:	1dfb      	adds	r3, r7, #7
    1bec:	781b      	ldrb	r3, [r3, #0]
    1bee:	2b7f      	cmp	r3, #127	; 0x7f
    1bf0:	d828      	bhi.n	1c44 <__NVIC_SetPriority+0x68>
    1bf2:	4c2f      	ldr	r4, [pc, #188]	; (1cb0 <__NVIC_SetPriority+0xd4>)
    1bf4:	1dfb      	adds	r3, r7, #7
    1bf6:	781b      	ldrb	r3, [r3, #0]
    1bf8:	b25b      	sxtb	r3, r3
    1bfa:	089b      	lsrs	r3, r3, #2
    1bfc:	492c      	ldr	r1, [pc, #176]	; (1cb0 <__NVIC_SetPriority+0xd4>)
    1bfe:	1dfa      	adds	r2, r7, #7
    1c00:	7812      	ldrb	r2, [r2, #0]
    1c02:	b252      	sxtb	r2, r2
    1c04:	0892      	lsrs	r2, r2, #2
    1c06:	32c0      	adds	r2, #192	; 0xc0
    1c08:	0092      	lsls	r2, r2, #2
    1c0a:	5852      	ldr	r2, [r2, r1]
    1c0c:	1df9      	adds	r1, r7, #7
    1c0e:	7809      	ldrb	r1, [r1, #0]
    1c10:	0008      	movs	r0, r1
    1c12:	2103      	movs	r1, #3
    1c14:	4001      	ands	r1, r0
    1c16:	00c9      	lsls	r1, r1, #3
    1c18:	20ff      	movs	r0, #255	; 0xff
    1c1a:	4088      	lsls	r0, r1
    1c1c:	0001      	movs	r1, r0
    1c1e:	43c9      	mvns	r1, r1
    1c20:	4011      	ands	r1, r2
    1c22:	683a      	ldr	r2, [r7, #0]
    1c24:	0192      	lsls	r2, r2, #6
    1c26:	20ff      	movs	r0, #255	; 0xff
    1c28:	4010      	ands	r0, r2
    1c2a:	1dfa      	adds	r2, r7, #7
    1c2c:	7812      	ldrb	r2, [r2, #0]
    1c2e:	0015      	movs	r5, r2
    1c30:	2203      	movs	r2, #3
    1c32:	402a      	ands	r2, r5
    1c34:	00d2      	lsls	r2, r2, #3
    1c36:	4090      	lsls	r0, r2
    1c38:	0002      	movs	r2, r0
    1c3a:	430a      	orrs	r2, r1
    1c3c:	33c0      	adds	r3, #192	; 0xc0
    1c3e:	009b      	lsls	r3, r3, #2
    1c40:	511a      	str	r2, [r3, r4]
    1c42:	e031      	b.n	1ca8 <__NVIC_SetPriority+0xcc>
    1c44:	4c1b      	ldr	r4, [pc, #108]	; (1cb4 <__NVIC_SetPriority+0xd8>)
    1c46:	1dfb      	adds	r3, r7, #7
    1c48:	781b      	ldrb	r3, [r3, #0]
    1c4a:	001a      	movs	r2, r3
    1c4c:	230f      	movs	r3, #15
    1c4e:	4013      	ands	r3, r2
    1c50:	3b08      	subs	r3, #8
    1c52:	0899      	lsrs	r1, r3, #2
    1c54:	4a17      	ldr	r2, [pc, #92]	; (1cb4 <__NVIC_SetPriority+0xd8>)
    1c56:	1dfb      	adds	r3, r7, #7
    1c58:	781b      	ldrb	r3, [r3, #0]
    1c5a:	0018      	movs	r0, r3
    1c5c:	230f      	movs	r3, #15
    1c5e:	4003      	ands	r3, r0
    1c60:	3b08      	subs	r3, #8
    1c62:	089b      	lsrs	r3, r3, #2
    1c64:	3306      	adds	r3, #6
    1c66:	009b      	lsls	r3, r3, #2
    1c68:	18d3      	adds	r3, r2, r3
    1c6a:	3304      	adds	r3, #4
    1c6c:	681b      	ldr	r3, [r3, #0]
    1c6e:	1dfa      	adds	r2, r7, #7
    1c70:	7812      	ldrb	r2, [r2, #0]
    1c72:	0010      	movs	r0, r2
    1c74:	2203      	movs	r2, #3
    1c76:	4002      	ands	r2, r0
    1c78:	00d2      	lsls	r2, r2, #3
    1c7a:	20ff      	movs	r0, #255	; 0xff
    1c7c:	4090      	lsls	r0, r2
    1c7e:	0002      	movs	r2, r0
    1c80:	43d2      	mvns	r2, r2
    1c82:	401a      	ands	r2, r3
    1c84:	683b      	ldr	r3, [r7, #0]
    1c86:	019b      	lsls	r3, r3, #6
    1c88:	20ff      	movs	r0, #255	; 0xff
    1c8a:	4018      	ands	r0, r3
    1c8c:	1dfb      	adds	r3, r7, #7
    1c8e:	781b      	ldrb	r3, [r3, #0]
    1c90:	001d      	movs	r5, r3
    1c92:	2303      	movs	r3, #3
    1c94:	402b      	ands	r3, r5
    1c96:	00db      	lsls	r3, r3, #3
    1c98:	4098      	lsls	r0, r3
    1c9a:	0003      	movs	r3, r0
    1c9c:	431a      	orrs	r2, r3
    1c9e:	1d8b      	adds	r3, r1, #6
    1ca0:	009b      	lsls	r3, r3, #2
    1ca2:	18e3      	adds	r3, r4, r3
    1ca4:	3304      	adds	r3, #4
    1ca6:	601a      	str	r2, [r3, #0]
    1ca8:	46c0      	nop			; (mov r8, r8)
    1caa:	46bd      	mov	sp, r7
    1cac:	b002      	add	sp, #8
    1cae:	bdb0      	pop	{r4, r5, r7, pc}
    1cb0:	e000e100 	.word	0xe000e100
    1cb4:	e000ed00 	.word	0xe000ed00

00001cb8 <PortConfig>:
    1cb8:	b580      	push	{r7, lr}
    1cba:	af00      	add	r7, sp, #0
    1cbc:	4b4c      	ldr	r3, [pc, #304]	; (1df0 <PortConfig+0x138>)
    1cbe:	4a4c      	ldr	r2, [pc, #304]	; (1df0 <PortConfig+0x138>)
    1cc0:	68d2      	ldr	r2, [r2, #12]
    1cc2:	2108      	movs	r1, #8
    1cc4:	430a      	orrs	r2, r1
    1cc6:	60da      	str	r2, [r3, #12]
    1cc8:	4b49      	ldr	r3, [pc, #292]	; (1df0 <PortConfig+0x138>)
    1cca:	4a49      	ldr	r2, [pc, #292]	; (1df0 <PortConfig+0x138>)
    1ccc:	6852      	ldr	r2, [r2, #4]
    1cce:	2108      	movs	r1, #8
    1cd0:	438a      	bics	r2, r1
    1cd2:	605a      	str	r2, [r3, #4]
    1cd4:	4b47      	ldr	r3, [pc, #284]	; (1df4 <PortConfig+0x13c>)
    1cd6:	4a47      	ldr	r2, [pc, #284]	; (1df4 <PortConfig+0x13c>)
    1cd8:	68d2      	ldr	r2, [r2, #12]
    1cda:	21de      	movs	r1, #222	; 0xde
    1cdc:	0209      	lsls	r1, r1, #8
    1cde:	430a      	orrs	r2, r1
    1ce0:	60da      	str	r2, [r3, #12]
    1ce2:	4b44      	ldr	r3, [pc, #272]	; (1df4 <PortConfig+0x13c>)
    1ce4:	4a43      	ldr	r2, [pc, #268]	; (1df4 <PortConfig+0x13c>)
    1ce6:	6812      	ldr	r2, [r2, #0]
    1ce8:	4943      	ldr	r1, [pc, #268]	; (1df8 <PortConfig+0x140>)
    1cea:	400a      	ands	r2, r1
    1cec:	601a      	str	r2, [r3, #0]
    1cee:	4b41      	ldr	r3, [pc, #260]	; (1df4 <PortConfig+0x13c>)
    1cf0:	4a40      	ldr	r2, [pc, #256]	; (1df4 <PortConfig+0x13c>)
    1cf2:	6852      	ldr	r2, [r2, #4]
    1cf4:	21de      	movs	r1, #222	; 0xde
    1cf6:	0209      	lsls	r1, r1, #8
    1cf8:	430a      	orrs	r2, r1
    1cfa:	605a      	str	r2, [r3, #4]
    1cfc:	4b3d      	ldr	r3, [pc, #244]	; (1df4 <PortConfig+0x13c>)
    1cfe:	4a3d      	ldr	r2, [pc, #244]	; (1df4 <PortConfig+0x13c>)
    1d00:	6992      	ldr	r2, [r2, #24]
    1d02:	493e      	ldr	r1, [pc, #248]	; (1dfc <PortConfig+0x144>)
    1d04:	430a      	orrs	r2, r1
    1d06:	619a      	str	r2, [r3, #24]
    1d08:	4b3a      	ldr	r3, [pc, #232]	; (1df4 <PortConfig+0x13c>)
    1d0a:	4a3a      	ldr	r2, [pc, #232]	; (1df4 <PortConfig+0x13c>)
    1d0c:	68d2      	ldr	r2, [r2, #12]
    1d0e:	493c      	ldr	r1, [pc, #240]	; (1e00 <PortConfig+0x148>)
    1d10:	430a      	orrs	r2, r1
    1d12:	60da      	str	r2, [r3, #12]
    1d14:	4b37      	ldr	r3, [pc, #220]	; (1df4 <PortConfig+0x13c>)
    1d16:	4a37      	ldr	r2, [pc, #220]	; (1df4 <PortConfig+0x13c>)
    1d18:	6812      	ldr	r2, [r2, #0]
    1d1a:	0a52      	lsrs	r2, r2, #9
    1d1c:	0252      	lsls	r2, r2, #9
    1d1e:	601a      	str	r2, [r3, #0]
    1d20:	4b34      	ldr	r3, [pc, #208]	; (1df4 <PortConfig+0x13c>)
    1d22:	4a34      	ldr	r2, [pc, #208]	; (1df4 <PortConfig+0x13c>)
    1d24:	6852      	ldr	r2, [r2, #4]
    1d26:	4936      	ldr	r1, [pc, #216]	; (1e00 <PortConfig+0x148>)
    1d28:	430a      	orrs	r2, r1
    1d2a:	605a      	str	r2, [r3, #4]
    1d2c:	4b31      	ldr	r3, [pc, #196]	; (1df4 <PortConfig+0x13c>)
    1d2e:	4a31      	ldr	r2, [pc, #196]	; (1df4 <PortConfig+0x13c>)
    1d30:	6992      	ldr	r2, [r2, #24]
    1d32:	4934      	ldr	r1, [pc, #208]	; (1e04 <PortConfig+0x14c>)
    1d34:	430a      	orrs	r2, r1
    1d36:	619a      	str	r2, [r3, #24]
    1d38:	4b33      	ldr	r3, [pc, #204]	; (1e08 <PortConfig+0x150>)
    1d3a:	4a33      	ldr	r2, [pc, #204]	; (1e08 <PortConfig+0x150>)
    1d3c:	6892      	ldr	r2, [r2, #8]
    1d3e:	21a0      	movs	r1, #160	; 0xa0
    1d40:	0549      	lsls	r1, r1, #21
    1d42:	430a      	orrs	r2, r1
    1d44:	609a      	str	r2, [r3, #8]
    1d46:	4b30      	ldr	r3, [pc, #192]	; (1e08 <PortConfig+0x150>)
    1d48:	4a2f      	ldr	r2, [pc, #188]	; (1e08 <PortConfig+0x150>)
    1d4a:	68d2      	ldr	r2, [r2, #12]
    1d4c:	21e0      	movs	r1, #224	; 0xe0
    1d4e:	0209      	lsls	r1, r1, #8
    1d50:	430a      	orrs	r2, r1
    1d52:	60da      	str	r2, [r3, #12]
    1d54:	4b2c      	ldr	r3, [pc, #176]	; (1e08 <PortConfig+0x150>)
    1d56:	4a2c      	ldr	r2, [pc, #176]	; (1e08 <PortConfig+0x150>)
    1d58:	6992      	ldr	r2, [r2, #24]
    1d5a:	21fc      	movs	r1, #252	; 0xfc
    1d5c:	0609      	lsls	r1, r1, #24
    1d5e:	430a      	orrs	r2, r1
    1d60:	619a      	str	r2, [r3, #24]
    1d62:	4b29      	ldr	r3, [pc, #164]	; (1e08 <PortConfig+0x150>)
    1d64:	4a28      	ldr	r2, [pc, #160]	; (1e08 <PortConfig+0x150>)
    1d66:	6812      	ldr	r2, [r2, #0]
    1d68:	4928      	ldr	r1, [pc, #160]	; (1e0c <PortConfig+0x154>)
    1d6a:	400a      	ands	r2, r1
    1d6c:	601a      	str	r2, [r3, #0]
    1d6e:	4b26      	ldr	r3, [pc, #152]	; (1e08 <PortConfig+0x150>)
    1d70:	4a25      	ldr	r2, [pc, #148]	; (1e08 <PortConfig+0x150>)
    1d72:	6852      	ldr	r2, [r2, #4]
    1d74:	2180      	movs	r1, #128	; 0x80
    1d76:	0209      	lsls	r1, r1, #8
    1d78:	430a      	orrs	r2, r1
    1d7a:	605a      	str	r2, [r3, #4]
    1d7c:	4b24      	ldr	r3, [pc, #144]	; (1e10 <PortConfig+0x158>)
    1d7e:	4a24      	ldr	r2, [pc, #144]	; (1e10 <PortConfig+0x158>)
    1d80:	6892      	ldr	r2, [r2, #8]
    1d82:	4924      	ldr	r1, [pc, #144]	; (1e14 <PortConfig+0x15c>)
    1d84:	400a      	ands	r2, r1
    1d86:	609a      	str	r2, [r3, #8]
    1d88:	4b21      	ldr	r3, [pc, #132]	; (1e10 <PortConfig+0x158>)
    1d8a:	4a21      	ldr	r2, [pc, #132]	; (1e10 <PortConfig+0x158>)
    1d8c:	6892      	ldr	r2, [r2, #8]
    1d8e:	21a0      	movs	r1, #160	; 0xa0
    1d90:	0049      	lsls	r1, r1, #1
    1d92:	430a      	orrs	r2, r1
    1d94:	609a      	str	r2, [r3, #8]
    1d96:	4b1e      	ldr	r3, [pc, #120]	; (1e10 <PortConfig+0x158>)
    1d98:	4a1d      	ldr	r2, [pc, #116]	; (1e10 <PortConfig+0x158>)
    1d9a:	68d2      	ldr	r2, [r2, #12]
    1d9c:	2118      	movs	r1, #24
    1d9e:	430a      	orrs	r2, r1
    1da0:	60da      	str	r2, [r3, #12]
    1da2:	4b1b      	ldr	r3, [pc, #108]	; (1e10 <PortConfig+0x158>)
    1da4:	4a1a      	ldr	r2, [pc, #104]	; (1e10 <PortConfig+0x158>)
    1da6:	6992      	ldr	r2, [r2, #24]
    1da8:	21f0      	movs	r1, #240	; 0xf0
    1daa:	0089      	lsls	r1, r1, #2
    1dac:	430a      	orrs	r2, r1
    1dae:	619a      	str	r2, [r3, #24]
    1db0:	4b17      	ldr	r3, [pc, #92]	; (1e10 <PortConfig+0x158>)
    1db2:	4a17      	ldr	r2, [pc, #92]	; (1e10 <PortConfig+0x158>)
    1db4:	6812      	ldr	r2, [r2, #0]
    1db6:	2118      	movs	r1, #24
    1db8:	438a      	bics	r2, r1
    1dba:	601a      	str	r2, [r3, #0]
    1dbc:	4b14      	ldr	r3, [pc, #80]	; (1e10 <PortConfig+0x158>)
    1dbe:	4a14      	ldr	r2, [pc, #80]	; (1e10 <PortConfig+0x158>)
    1dc0:	68d2      	ldr	r2, [r2, #12]
    1dc2:	2120      	movs	r1, #32
    1dc4:	430a      	orrs	r2, r1
    1dc6:	60da      	str	r2, [r3, #12]
    1dc8:	4b11      	ldr	r3, [pc, #68]	; (1e10 <PortConfig+0x158>)
    1dca:	4a11      	ldr	r2, [pc, #68]	; (1e10 <PortConfig+0x158>)
    1dcc:	6892      	ldr	r2, [r2, #8]
    1dce:	2180      	movs	r1, #128	; 0x80
    1dd0:	00c9      	lsls	r1, r1, #3
    1dd2:	430a      	orrs	r2, r1
    1dd4:	609a      	str	r2, [r3, #8]
    1dd6:	201c      	movs	r0, #28
    1dd8:	f7ff fee4 	bl	1ba4 <__NVIC_ClearPendingIRQ>
    1ddc:	4b0e      	ldr	r3, [pc, #56]	; (1e18 <PortConfig+0x160>)
    1dde:	4a0e      	ldr	r2, [pc, #56]	; (1e18 <PortConfig+0x160>)
    1de0:	68d2      	ldr	r2, [r2, #12]
    1de2:	2106      	movs	r1, #6
    1de4:	438a      	bics	r2, r1
    1de6:	60da      	str	r2, [r3, #12]
    1de8:	46c0      	nop			; (mov r8, r8)
    1dea:	46bd      	mov	sp, r7
    1dec:	bd80      	pop	{r7, pc}
    1dee:	46c0      	nop			; (mov r8, r8)
    1df0:	400a8000 	.word	0x400a8000
    1df4:	400b0000 	.word	0x400b0000
    1df8:	ffff21ff 	.word	0xffff21ff
    1dfc:	f3fc0000 	.word	0xf3fc0000
    1e00:	000001ff 	.word	0x000001ff
    1e04:	0003ffff 	.word	0x0003ffff
    1e08:	400c0000 	.word	0x400c0000
    1e0c:	ffff1fff 	.word	0xffff1fff
    1e10:	400b8000 	.word	0x400b8000
    1e14:	fffffc3f 	.word	0xfffffc3f
    1e18:	400c8000 	.word	0x400c8000

00001e1c <ClkConfig>:
    1e1c:	b580      	push	{r7, lr}
    1e1e:	af00      	add	r7, sp, #0
    1e20:	4b4b      	ldr	r3, [pc, #300]	; (1f50 <ClkConfig+0x134>)
    1e22:	2280      	movs	r2, #128	; 0x80
    1e24:	0092      	lsls	r2, r2, #2
    1e26:	619a      	str	r2, [r3, #24]
    1e28:	4b4a      	ldr	r3, [pc, #296]	; (1f54 <ClkConfig+0x138>)
    1e2a:	4a4a      	ldr	r2, [pc, #296]	; (1f54 <ClkConfig+0x138>)
    1e2c:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1e2e:	2118      	movs	r1, #24
    1e30:	430a      	orrs	r2, r1
    1e32:	63da      	str	r2, [r3, #60]	; 0x3c
    1e34:	4b47      	ldr	r3, [pc, #284]	; (1f54 <ClkConfig+0x138>)
    1e36:	4a48      	ldr	r2, [pc, #288]	; (1f58 <ClkConfig+0x13c>)
    1e38:	649a      	str	r2, [r3, #72]	; 0x48
    1e3a:	4b46      	ldr	r3, [pc, #280]	; (1f54 <ClkConfig+0x138>)
    1e3c:	2201      	movs	r2, #1
    1e3e:	645a      	str	r2, [r3, #68]	; 0x44
    1e40:	4b43      	ldr	r3, [pc, #268]	; (1f50 <ClkConfig+0x134>)
    1e42:	4a43      	ldr	r2, [pc, #268]	; (1f50 <ClkConfig+0x134>)
    1e44:	6892      	ldr	r2, [r2, #8]
    1e46:	2105      	movs	r1, #5
    1e48:	430a      	orrs	r2, r1
    1e4a:	609a      	str	r2, [r3, #8]
    1e4c:	46c0      	nop			; (mov r8, r8)
    1e4e:	4b40      	ldr	r3, [pc, #256]	; (1f50 <ClkConfig+0x134>)
    1e50:	681b      	ldr	r3, [r3, #0]
    1e52:	220c      	movs	r2, #12
    1e54:	4013      	ands	r3, r2
    1e56:	2b0c      	cmp	r3, #12
    1e58:	d1f9      	bne.n	1e4e <ClkConfig+0x32>
    1e5a:	4b3d      	ldr	r3, [pc, #244]	; (1f50 <ClkConfig+0x134>)
    1e5c:	4a3c      	ldr	r2, [pc, #240]	; (1f50 <ClkConfig+0x134>)
    1e5e:	68d2      	ldr	r2, [r2, #12]
    1e60:	2102      	movs	r1, #2
    1e62:	430a      	orrs	r2, r1
    1e64:	60da      	str	r2, [r3, #12]
    1e66:	4b3a      	ldr	r3, [pc, #232]	; (1f50 <ClkConfig+0x134>)
    1e68:	4a3c      	ldr	r2, [pc, #240]	; (1f5c <ClkConfig+0x140>)
    1e6a:	605a      	str	r2, [r3, #4]
    1e6c:	46c0      	nop			; (mov r8, r8)
    1e6e:	4b38      	ldr	r3, [pc, #224]	; (1f50 <ClkConfig+0x134>)
    1e70:	681b      	ldr	r3, [r3, #0]
    1e72:	2202      	movs	r2, #2
    1e74:	4013      	ands	r3, r2
    1e76:	d0fa      	beq.n	1e6e <ClkConfig+0x52>
    1e78:	4b35      	ldr	r3, [pc, #212]	; (1f50 <ClkConfig+0x134>)
    1e7a:	4a35      	ldr	r2, [pc, #212]	; (1f50 <ClkConfig+0x134>)
    1e7c:	69d2      	ldr	r2, [r2, #28]
    1e7e:	2108      	movs	r1, #8
    1e80:	430a      	orrs	r2, r1
    1e82:	61da      	str	r2, [r3, #28]
    1e84:	4b36      	ldr	r3, [pc, #216]	; (1f60 <ClkConfig+0x144>)
    1e86:	4a36      	ldr	r2, [pc, #216]	; (1f60 <ClkConfig+0x144>)
    1e88:	6812      	ldr	r2, [r2, #0]
    1e8a:	2118      	movs	r1, #24
    1e8c:	430a      	orrs	r2, r1
    1e8e:	601a      	str	r2, [r3, #0]
    1e90:	4b2f      	ldr	r3, [pc, #188]	; (1f50 <ClkConfig+0x134>)
    1e92:	4a2f      	ldr	r2, [pc, #188]	; (1f50 <ClkConfig+0x134>)
    1e94:	69d2      	ldr	r2, [r2, #28]
    1e96:	2108      	movs	r1, #8
    1e98:	438a      	bics	r2, r1
    1e9a:	61da      	str	r2, [r3, #28]
    1e9c:	4b2c      	ldr	r3, [pc, #176]	; (1f50 <ClkConfig+0x134>)
    1e9e:	4a2c      	ldr	r2, [pc, #176]	; (1f50 <ClkConfig+0x134>)
    1ea0:	68d2      	ldr	r2, [r2, #12]
    1ea2:	2180      	movs	r1, #128	; 0x80
    1ea4:	0049      	lsls	r1, r1, #1
    1ea6:	430a      	orrs	r2, r1
    1ea8:	60da      	str	r2, [r3, #12]
    1eaa:	4b29      	ldr	r3, [pc, #164]	; (1f50 <ClkConfig+0x134>)
    1eac:	4a28      	ldr	r2, [pc, #160]	; (1f50 <ClkConfig+0x134>)
    1eae:	68d2      	ldr	r2, [r2, #12]
    1eb0:	2104      	movs	r1, #4
    1eb2:	430a      	orrs	r2, r1
    1eb4:	60da      	str	r2, [r3, #12]
    1eb6:	4b26      	ldr	r3, [pc, #152]	; (1f50 <ClkConfig+0x134>)
    1eb8:	22e4      	movs	r2, #228	; 0xe4
    1eba:	0592      	lsls	r2, r2, #22
    1ebc:	635a      	str	r2, [r3, #52]	; 0x34
    1ebe:	4b24      	ldr	r3, [pc, #144]	; (1f50 <ClkConfig+0x134>)
    1ec0:	4a23      	ldr	r2, [pc, #140]	; (1f50 <ClkConfig+0x134>)
    1ec2:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1ec4:	2180      	movs	r1, #128	; 0x80
    1ec6:	0449      	lsls	r1, r1, #17
    1ec8:	430a      	orrs	r2, r1
    1eca:	625a      	str	r2, [r3, #36]	; 0x24
    1ecc:	4b20      	ldr	r3, [pc, #128]	; (1f50 <ClkConfig+0x134>)
    1ece:	4a20      	ldr	r2, [pc, #128]	; (1f50 <ClkConfig+0x134>)
    1ed0:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1ed2:	21ff      	movs	r1, #255	; 0xff
    1ed4:	438a      	bics	r2, r1
    1ed6:	625a      	str	r2, [r3, #36]	; 0x24
    1ed8:	4b1d      	ldr	r3, [pc, #116]	; (1f50 <ClkConfig+0x134>)
    1eda:	4a1d      	ldr	r2, [pc, #116]	; (1f50 <ClkConfig+0x134>)
    1edc:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1ede:	2180      	movs	r1, #128	; 0x80
    1ee0:	0489      	lsls	r1, r1, #18
    1ee2:	430a      	orrs	r2, r1
    1ee4:	625a      	str	r2, [r3, #36]	; 0x24
    1ee6:	4b1a      	ldr	r3, [pc, #104]	; (1f50 <ClkConfig+0x134>)
    1ee8:	4a19      	ldr	r2, [pc, #100]	; (1f50 <ClkConfig+0x134>)
    1eea:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1eec:	491d      	ldr	r1, [pc, #116]	; (1f64 <ClkConfig+0x148>)
    1eee:	400a      	ands	r2, r1
    1ef0:	625a      	str	r2, [r3, #36]	; 0x24
    1ef2:	4b17      	ldr	r3, [pc, #92]	; (1f50 <ClkConfig+0x134>)
    1ef4:	4a16      	ldr	r2, [pc, #88]	; (1f50 <ClkConfig+0x134>)
    1ef6:	69d2      	ldr	r2, [r2, #28]
    1ef8:	491b      	ldr	r1, [pc, #108]	; (1f68 <ClkConfig+0x14c>)
    1efa:	430a      	orrs	r2, r1
    1efc:	61da      	str	r2, [r3, #28]
    1efe:	4b14      	ldr	r3, [pc, #80]	; (1f50 <ClkConfig+0x134>)
    1f00:	4a13      	ldr	r2, [pc, #76]	; (1f50 <ClkConfig+0x134>)
    1f02:	69d2      	ldr	r2, [r2, #28]
    1f04:	2180      	movs	r1, #128	; 0x80
    1f06:	430a      	orrs	r2, r1
    1f08:	61da      	str	r2, [r3, #28]
    1f0a:	4b11      	ldr	r3, [pc, #68]	; (1f50 <ClkConfig+0x134>)
    1f0c:	4a10      	ldr	r2, [pc, #64]	; (1f50 <ClkConfig+0x134>)
    1f0e:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1f10:	2180      	movs	r1, #128	; 0x80
    1f12:	0489      	lsls	r1, r1, #18
    1f14:	430a      	orrs	r2, r1
    1f16:	629a      	str	r2, [r3, #40]	; 0x28
    1f18:	4b0d      	ldr	r3, [pc, #52]	; (1f50 <ClkConfig+0x134>)
    1f1a:	4a0d      	ldr	r2, [pc, #52]	; (1f50 <ClkConfig+0x134>)
    1f1c:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1f1e:	4911      	ldr	r1, [pc, #68]	; (1f64 <ClkConfig+0x148>)
    1f20:	400a      	ands	r2, r1
    1f22:	629a      	str	r2, [r3, #40]	; 0x28
    1f24:	4b0a      	ldr	r3, [pc, #40]	; (1f50 <ClkConfig+0x134>)
    1f26:	4a0a      	ldr	r2, [pc, #40]	; (1f50 <ClkConfig+0x134>)
    1f28:	69d2      	ldr	r2, [r2, #28]
    1f2a:	2140      	movs	r1, #64	; 0x40
    1f2c:	430a      	orrs	r2, r1
    1f2e:	61da      	str	r2, [r3, #28]
    1f30:	4b07      	ldr	r3, [pc, #28]	; (1f50 <ClkConfig+0x134>)
    1f32:	4a07      	ldr	r2, [pc, #28]	; (1f50 <ClkConfig+0x134>)
    1f34:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1f36:	2180      	movs	r1, #128	; 0x80
    1f38:	0449      	lsls	r1, r1, #17
    1f3a:	430a      	orrs	r2, r1
    1f3c:	629a      	str	r2, [r3, #40]	; 0x28
    1f3e:	4b04      	ldr	r3, [pc, #16]	; (1f50 <ClkConfig+0x134>)
    1f40:	4a03      	ldr	r2, [pc, #12]	; (1f50 <ClkConfig+0x134>)
    1f42:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1f44:	21ff      	movs	r1, #255	; 0xff
    1f46:	438a      	bics	r2, r1
    1f48:	629a      	str	r2, [r3, #40]	; 0x28
    1f4a:	46c0      	nop			; (mov r8, r8)
    1f4c:	46bd      	mov	sp, r7
    1f4e:	bd80      	pop	{r7, pc}
    1f50:	40020000 	.word	0x40020000
    1f54:	400d8000 	.word	0x400d8000
    1f58:	000fffff 	.word	0x000fffff
    1f5c:	00000b04 	.word	0x00000b04
    1f60:	40018000 	.word	0x40018000
    1f64:	ffff00ff 	.word	0xffff00ff
    1f68:	03e4c000 	.word	0x03e4c000

00001f6c <TimerConfig>:
    1f6c:	b580      	push	{r7, lr}
    1f6e:	af00      	add	r7, sp, #0
    1f70:	4b19      	ldr	r3, [pc, #100]	; (1fd8 <TimerConfig+0x6c>)
    1f72:	2200      	movs	r2, #0
    1f74:	601a      	str	r2, [r3, #0]
    1f76:	4b18      	ldr	r3, [pc, #96]	; (1fd8 <TimerConfig+0x6c>)
    1f78:	225f      	movs	r2, #95	; 0x5f
    1f7a:	605a      	str	r2, [r3, #4]
    1f7c:	4b16      	ldr	r3, [pc, #88]	; (1fd8 <TimerConfig+0x6c>)
    1f7e:	4a17      	ldr	r2, [pc, #92]	; (1fdc <TimerConfig+0x70>)
    1f80:	609a      	str	r2, [r3, #8]
    1f82:	4b15      	ldr	r3, [pc, #84]	; (1fd8 <TimerConfig+0x6c>)
    1f84:	4a14      	ldr	r2, [pc, #80]	; (1fd8 <TimerConfig+0x6c>)
    1f86:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1f88:	2102      	movs	r1, #2
    1f8a:	430a      	orrs	r2, r1
    1f8c:	659a      	str	r2, [r3, #88]	; 0x58
    1f8e:	4b12      	ldr	r3, [pc, #72]	; (1fd8 <TimerConfig+0x6c>)
    1f90:	4a11      	ldr	r2, [pc, #68]	; (1fd8 <TimerConfig+0x6c>)
    1f92:	68d2      	ldr	r2, [r2, #12]
    1f94:	2101      	movs	r1, #1
    1f96:	430a      	orrs	r2, r1
    1f98:	60da      	str	r2, [r3, #12]
    1f9a:	200e      	movs	r0, #14
    1f9c:	f7ff fde8 	bl	1b70 <__NVIC_EnableIRQ>
    1fa0:	4b0f      	ldr	r3, [pc, #60]	; (1fe0 <TimerConfig+0x74>)
    1fa2:	2200      	movs	r2, #0
    1fa4:	601a      	str	r2, [r3, #0]
    1fa6:	4b0e      	ldr	r3, [pc, #56]	; (1fe0 <TimerConfig+0x74>)
    1fa8:	225f      	movs	r2, #95	; 0x5f
    1faa:	605a      	str	r2, [r3, #4]
    1fac:	4b0c      	ldr	r3, [pc, #48]	; (1fe0 <TimerConfig+0x74>)
    1fae:	22ee      	movs	r2, #238	; 0xee
    1fb0:	0092      	lsls	r2, r2, #2
    1fb2:	609a      	str	r2, [r3, #8]
    1fb4:	4b0a      	ldr	r3, [pc, #40]	; (1fe0 <TimerConfig+0x74>)
    1fb6:	4a0a      	ldr	r2, [pc, #40]	; (1fe0 <TimerConfig+0x74>)
    1fb8:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1fba:	2102      	movs	r1, #2
    1fbc:	430a      	orrs	r2, r1
    1fbe:	659a      	str	r2, [r3, #88]	; 0x58
    1fc0:	4b07      	ldr	r3, [pc, #28]	; (1fe0 <TimerConfig+0x74>)
    1fc2:	4a07      	ldr	r2, [pc, #28]	; (1fe0 <TimerConfig+0x74>)
    1fc4:	68d2      	ldr	r2, [r2, #12]
    1fc6:	2101      	movs	r1, #1
    1fc8:	430a      	orrs	r2, r1
    1fca:	60da      	str	r2, [r3, #12]
    1fcc:	200f      	movs	r0, #15
    1fce:	f7ff fdcf 	bl	1b70 <__NVIC_EnableIRQ>
    1fd2:	46c0      	nop			; (mov r8, r8)
    1fd4:	46bd      	mov	sp, r7
    1fd6:	bd80      	pop	{r7, pc}
    1fd8:	40070000 	.word	0x40070000
    1fdc:	0001869f 	.word	0x0001869f
    1fe0:	40078000 	.word	0x40078000

00001fe4 <dac_init>:
    1fe4:	b580      	push	{r7, lr}
    1fe6:	af00      	add	r7, sp, #0
    1fe8:	4b04      	ldr	r3, [pc, #16]	; (1ffc <dac_init+0x18>)
    1fea:	4a04      	ldr	r2, [pc, #16]	; (1ffc <dac_init+0x18>)
    1fec:	6812      	ldr	r2, [r2, #0]
    1fee:	210c      	movs	r1, #12
    1ff0:	430a      	orrs	r2, r1
    1ff2:	601a      	str	r2, [r3, #0]
    1ff4:	46c0      	nop			; (mov r8, r8)
    1ff6:	46bd      	mov	sp, r7
    1ff8:	bd80      	pop	{r7, pc}
    1ffa:	46c0      	nop			; (mov r8, r8)
    1ffc:	40090000 	.word	0x40090000

00002000 <SystemInit>:
    2000:	b580      	push	{r7, lr}
    2002:	af00      	add	r7, sp, #0
    2004:	f7ff ff0a 	bl	1e1c <ClkConfig>
    2008:	f7ff fe56 	bl	1cb8 <PortConfig>
    200c:	f7ff ffae 	bl	1f6c <TimerConfig>
    2010:	f7ff ffe8 	bl	1fe4 <dac_init>
    2014:	2100      	movs	r1, #0
    2016:	2012      	movs	r0, #18
    2018:	f7ff fde0 	bl	1bdc <__NVIC_SetPriority>
    201c:	2101      	movs	r1, #1
    201e:	200e      	movs	r0, #14
    2020:	f7ff fddc 	bl	1bdc <__NVIC_SetPriority>
    2024:	2301      	movs	r3, #1
    2026:	425b      	negs	r3, r3
    2028:	2103      	movs	r1, #3
    202a:	0018      	movs	r0, r3
    202c:	f7ff fdd6 	bl	1bdc <__NVIC_SetPriority>
    2030:	46c0      	nop			; (mov r8, r8)
    2032:	46bd      	mov	sp, r7
    2034:	bd80      	pop	{r7, pc}
    2036:	46c0      	nop			; (mov r8, r8)

00002038 <__NVIC_EnableIRQ>:
    2038:	b580      	push	{r7, lr}
    203a:	b082      	sub	sp, #8
    203c:	af00      	add	r7, sp, #0
    203e:	0002      	movs	r2, r0
    2040:	1dfb      	adds	r3, r7, #7
    2042:	701a      	strb	r2, [r3, #0]
    2044:	1dfb      	adds	r3, r7, #7
    2046:	781b      	ldrb	r3, [r3, #0]
    2048:	2b7f      	cmp	r3, #127	; 0x7f
    204a:	d809      	bhi.n	2060 <__NVIC_EnableIRQ+0x28>
    204c:	4b06      	ldr	r3, [pc, #24]	; (2068 <__NVIC_EnableIRQ+0x30>)
    204e:	1dfa      	adds	r2, r7, #7
    2050:	7812      	ldrb	r2, [r2, #0]
    2052:	0011      	movs	r1, r2
    2054:	221f      	movs	r2, #31
    2056:	400a      	ands	r2, r1
    2058:	2101      	movs	r1, #1
    205a:	4091      	lsls	r1, r2
    205c:	000a      	movs	r2, r1
    205e:	601a      	str	r2, [r3, #0]
    2060:	46c0      	nop			; (mov r8, r8)
    2062:	46bd      	mov	sp, r7
    2064:	b002      	add	sp, #8
    2066:	bd80      	pop	{r7, pc}
    2068:	e000e100 	.word	0xe000e100

0000206c <RemoteMacInit>:
    206c:	b580      	push	{r7, lr}
    206e:	af00      	add	r7, sp, #0
    2070:	4b0a      	ldr	r3, [pc, #40]	; (209c <RemoteMacInit+0x30>)
    2072:	2200      	movs	r2, #0
    2074:	801a      	strh	r2, [r3, #0]
    2076:	4b09      	ldr	r3, [pc, #36]	; (209c <RemoteMacInit+0x30>)
    2078:	2200      	movs	r2, #0
    207a:	805a      	strh	r2, [r3, #2]
    207c:	4b07      	ldr	r3, [pc, #28]	; (209c <RemoteMacInit+0x30>)
    207e:	2200      	movs	r2, #0
    2080:	809a      	strh	r2, [r3, #4]
    2082:	4b06      	ldr	r3, [pc, #24]	; (209c <RemoteMacInit+0x30>)
    2084:	2200      	movs	r2, #0
    2086:	80da      	strh	r2, [r3, #6]
    2088:	4b04      	ldr	r3, [pc, #16]	; (209c <RemoteMacInit+0x30>)
    208a:	2200      	movs	r2, #0
    208c:	811a      	strh	r2, [r3, #8]
    208e:	4b03      	ldr	r3, [pc, #12]	; (209c <RemoteMacInit+0x30>)
    2090:	2200      	movs	r2, #0
    2092:	815a      	strh	r2, [r3, #10]
    2094:	46c0      	nop			; (mov r8, r8)
    2096:	46bd      	mov	sp, r7
    2098:	bd80      	pop	{r7, pc}
    209a:	46c0      	nop			; (mov r8, r8)
    209c:	20004d1c 	.word	0x20004d1c

000020a0 <PHYInit>:
    20a0:	b580      	push	{r7, lr}
    20a2:	b084      	sub	sp, #16
    20a4:	af00      	add	r7, sp, #0
    20a6:	0002      	movs	r2, r0
    20a8:	1dfb      	adds	r3, r7, #7
    20aa:	701a      	strb	r2, [r3, #0]
    20ac:	1dbb      	adds	r3, r7, #6
    20ae:	1c0a      	adds	r2, r1, #0
    20b0:	701a      	strb	r2, [r3, #0]
    20b2:	23c0      	movs	r3, #192	; 0xc0
    20b4:	059b      	lsls	r3, r3, #22
    20b6:	8e9b      	ldrh	r3, [r3, #52]	; 0x34
    20b8:	b29b      	uxth	r3, r3
    20ba:	60fb      	str	r3, [r7, #12]
    20bc:	68fa      	ldr	r2, [r7, #12]
    20be:	23ee      	movs	r3, #238	; 0xee
    20c0:	00db      	lsls	r3, r3, #3
    20c2:	4013      	ands	r3, r2
    20c4:	60fb      	str	r3, [r7, #12]
    20c6:	1dfb      	adds	r3, r7, #7
    20c8:	781b      	ldrb	r3, [r3, #0]
    20ca:	02da      	lsls	r2, r3, #11
    20cc:	1dbb      	adds	r3, r7, #6
    20ce:	781b      	ldrb	r3, [r3, #0]
    20d0:	005b      	lsls	r3, r3, #1
    20d2:	4313      	orrs	r3, r2
    20d4:	001a      	movs	r2, r3
    20d6:	68fb      	ldr	r3, [r7, #12]
    20d8:	4313      	orrs	r3, r2
    20da:	2201      	movs	r2, #1
    20dc:	4313      	orrs	r3, r2
    20de:	60fb      	str	r3, [r7, #12]
    20e0:	23c0      	movs	r3, #192	; 0xc0
    20e2:	059b      	lsls	r3, r3, #22
    20e4:	68fa      	ldr	r2, [r7, #12]
    20e6:	b292      	uxth	r2, r2
    20e8:	869a      	strh	r2, [r3, #52]	; 0x34
    20ea:	46c0      	nop			; (mov r8, r8)
    20ec:	23c0      	movs	r3, #192	; 0xc0
    20ee:	059b      	lsls	r3, r3, #22
    20f0:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    20f2:	b29b      	uxth	r3, r3
    20f4:	001a      	movs	r2, r3
    20f6:	2310      	movs	r3, #16
    20f8:	4013      	ands	r3, r2
    20fa:	d0f7      	beq.n	20ec <PHYInit+0x4c>
    20fc:	46c0      	nop			; (mov r8, r8)
    20fe:	46bd      	mov	sp, r7
    2100:	b004      	add	sp, #16
    2102:	bd80      	pop	{r7, pc}

00002104 <SetPHYReg>:
    2104:	b590      	push	{r4, r7, lr}
    2106:	b085      	sub	sp, #20
    2108:	af00      	add	r7, sp, #0
    210a:	0004      	movs	r4, r0
    210c:	0008      	movs	r0, r1
    210e:	0011      	movs	r1, r2
    2110:	1dfb      	adds	r3, r7, #7
    2112:	1c22      	adds	r2, r4, #0
    2114:	701a      	strb	r2, [r3, #0]
    2116:	1dbb      	adds	r3, r7, #6
    2118:	1c02      	adds	r2, r0, #0
    211a:	701a      	strb	r2, [r3, #0]
    211c:	1d3b      	adds	r3, r7, #4
    211e:	1c0a      	adds	r2, r1, #0
    2120:	801a      	strh	r2, [r3, #0]
    2122:	23c0      	movs	r3, #192	; 0xc0
    2124:	059b      	lsls	r3, r3, #22
    2126:	1d3a      	adds	r2, r7, #4
    2128:	8812      	ldrh	r2, [r2, #0]
    212a:	84da      	strh	r2, [r3, #38]	; 0x26
    212c:	1dfb      	adds	r3, r7, #7
    212e:	781b      	ldrb	r3, [r3, #0]
    2130:	021a      	lsls	r2, r3, #8
    2132:	23f8      	movs	r3, #248	; 0xf8
    2134:	015b      	lsls	r3, r3, #5
    2136:	4013      	ands	r3, r2
    2138:	22c0      	movs	r2, #192	; 0xc0
    213a:	0212      	lsls	r2, r2, #8
    213c:	431a      	orrs	r2, r3
    213e:	1dbb      	adds	r3, r7, #6
    2140:	781b      	ldrb	r3, [r3, #0]
    2142:	211f      	movs	r1, #31
    2144:	400b      	ands	r3, r1
    2146:	4313      	orrs	r3, r2
    2148:	2220      	movs	r2, #32
    214a:	4313      	orrs	r3, r2
    214c:	60fb      	str	r3, [r7, #12]
    214e:	23c0      	movs	r3, #192	; 0xc0
    2150:	059b      	lsls	r3, r3, #22
    2152:	68fa      	ldr	r2, [r7, #12]
    2154:	b292      	uxth	r2, r2
    2156:	849a      	strh	r2, [r3, #36]	; 0x24
    2158:	46c0      	nop			; (mov r8, r8)
    215a:	23c0      	movs	r3, #192	; 0xc0
    215c:	059b      	lsls	r3, r3, #22
    215e:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2160:	b29b      	uxth	r3, r3
    2162:	b21b      	sxth	r3, r3
    2164:	2b00      	cmp	r3, #0
    2166:	daf8      	bge.n	215a <SetPHYReg+0x56>
    2168:	46c0      	nop			; (mov r8, r8)
    216a:	46bd      	mov	sp, r7
    216c:	b005      	add	sp, #20
    216e:	bd90      	pop	{r4, r7, pc}

00002170 <GetPHYReg>:
    2170:	b580      	push	{r7, lr}
    2172:	b084      	sub	sp, #16
    2174:	af00      	add	r7, sp, #0
    2176:	0002      	movs	r2, r0
    2178:	1dfb      	adds	r3, r7, #7
    217a:	701a      	strb	r2, [r3, #0]
    217c:	1dbb      	adds	r3, r7, #6
    217e:	1c0a      	adds	r2, r1, #0
    2180:	701a      	strb	r2, [r3, #0]
    2182:	1dfb      	adds	r3, r7, #7
    2184:	781b      	ldrb	r3, [r3, #0]
    2186:	021a      	lsls	r2, r3, #8
    2188:	23f8      	movs	r3, #248	; 0xf8
    218a:	015b      	lsls	r3, r3, #5
    218c:	4013      	ands	r3, r2
    218e:	4a0e      	ldr	r2, [pc, #56]	; (21c8 <GetPHYReg+0x58>)
    2190:	431a      	orrs	r2, r3
    2192:	1dbb      	adds	r3, r7, #6
    2194:	781b      	ldrb	r3, [r3, #0]
    2196:	211f      	movs	r1, #31
    2198:	400b      	ands	r3, r1
    219a:	4313      	orrs	r3, r2
    219c:	60fb      	str	r3, [r7, #12]
    219e:	23c0      	movs	r3, #192	; 0xc0
    21a0:	059b      	lsls	r3, r3, #22
    21a2:	68fa      	ldr	r2, [r7, #12]
    21a4:	b292      	uxth	r2, r2
    21a6:	849a      	strh	r2, [r3, #36]	; 0x24
    21a8:	46c0      	nop			; (mov r8, r8)
    21aa:	23c0      	movs	r3, #192	; 0xc0
    21ac:	059b      	lsls	r3, r3, #22
    21ae:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    21b0:	b29b      	uxth	r3, r3
    21b2:	b21b      	sxth	r3, r3
    21b4:	2b00      	cmp	r3, #0
    21b6:	daf8      	bge.n	21aa <GetPHYReg+0x3a>
    21b8:	23c0      	movs	r3, #192	; 0xc0
    21ba:	059b      	lsls	r3, r3, #22
    21bc:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    21be:	b29b      	uxth	r3, r3
    21c0:	0018      	movs	r0, r3
    21c2:	46bd      	mov	sp, r7
    21c4:	b004      	add	sp, #16
    21c6:	bd80      	pop	{r7, pc}
    21c8:	0000e020 	.word	0x0000e020

000021cc <EthernetConfig>:
    21cc:	b580      	push	{r7, lr}
    21ce:	b084      	sub	sp, #16
    21d0:	af00      	add	r7, sp, #0
    21d2:	6078      	str	r0, [r7, #4]
    21d4:	2103      	movs	r1, #3
    21d6:	201c      	movs	r0, #28
    21d8:	f7ff ff62 	bl	20a0 <PHYInit>
    21dc:	687b      	ldr	r3, [r7, #4]
    21de:	2b00      	cmp	r3, #0
    21e0:	d00b      	beq.n	21fa <EthernetConfig+0x2e>
    21e2:	687b      	ldr	r3, [r7, #4]
    21e4:	889a      	ldrh	r2, [r3, #4]
    21e6:	4b18      	ldr	r3, [pc, #96]	; (2248 <EthernetConfig+0x7c>)
    21e8:	801a      	strh	r2, [r3, #0]
    21ea:	687b      	ldr	r3, [r7, #4]
    21ec:	88da      	ldrh	r2, [r3, #6]
    21ee:	4b16      	ldr	r3, [pc, #88]	; (2248 <EthernetConfig+0x7c>)
    21f0:	805a      	strh	r2, [r3, #2]
    21f2:	687b      	ldr	r3, [r7, #4]
    21f4:	891a      	ldrh	r2, [r3, #8]
    21f6:	4b14      	ldr	r3, [pc, #80]	; (2248 <EthernetConfig+0x7c>)
    21f8:	809a      	strh	r2, [r3, #4]
    21fa:	23c0      	movs	r3, #192	; 0xc0
    21fc:	059b      	lsls	r3, r3, #22
    21fe:	4a12      	ldr	r2, [pc, #72]	; (2248 <EthernetConfig+0x7c>)
    2200:	8812      	ldrh	r2, [r2, #0]
    2202:	805a      	strh	r2, [r3, #2]
    2204:	23c0      	movs	r3, #192	; 0xc0
    2206:	059b      	lsls	r3, r3, #22
    2208:	4a0f      	ldr	r2, [pc, #60]	; (2248 <EthernetConfig+0x7c>)
    220a:	8852      	ldrh	r2, [r2, #2]
    220c:	809a      	strh	r2, [r3, #4]
    220e:	23c0      	movs	r3, #192	; 0xc0
    2210:	059b      	lsls	r3, r3, #22
    2212:	4a0d      	ldr	r2, [pc, #52]	; (2248 <EthernetConfig+0x7c>)
    2214:	8892      	ldrh	r2, [r2, #4]
    2216:	80da      	strh	r2, [r3, #6]
    2218:	f000 f81e 	bl	2258 <MACReset>
    221c:	23c0      	movs	r3, #192	; 0xc0
    221e:	059b      	lsls	r3, r3, #22
    2220:	2207      	movs	r2, #7
    2222:	841a      	strh	r2, [r3, #32]
    2224:	2012      	movs	r0, #18
    2226:	f7ff ff07 	bl	2038 <__NVIC_EnableIRQ>
    222a:	4b08      	ldr	r3, [pc, #32]	; (224c <EthernetConfig+0x80>)
    222c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    222e:	60fb      	str	r3, [r7, #12]
    2230:	68fb      	ldr	r3, [r7, #12]
    2232:	b29a      	uxth	r2, r3
    2234:	4b06      	ldr	r3, [pc, #24]	; (2250 <EthernetConfig+0x84>)
    2236:	801a      	strh	r2, [r3, #0]
    2238:	68fb      	ldr	r3, [r7, #12]
    223a:	b29a      	uxth	r2, r3
    223c:	4b05      	ldr	r3, [pc, #20]	; (2254 <EthernetConfig+0x88>)
    223e:	801a      	strh	r2, [r3, #0]
    2240:	46c0      	nop			; (mov r8, r8)
    2242:	46bd      	mov	sp, r7
    2244:	b004      	add	sp, #16
    2246:	bd80      	pop	{r7, pc}
    2248:	20000008 	.word	0x20000008
    224c:	400d8000 	.word	0x400d8000
    2250:	20004d30 	.word	0x20004d30
    2254:	20004d32 	.word	0x20004d32

00002258 <MACReset>:
    2258:	b580      	push	{r7, lr}
    225a:	af00      	add	r7, sp, #0
    225c:	23c0      	movs	r3, #192	; 0xc0
    225e:	059b      	lsls	r3, r3, #22
    2260:	22c0      	movs	r2, #192	; 0xc0
    2262:	0592      	lsls	r2, r2, #22
    2264:	8bd2      	ldrh	r2, [r2, #30]
    2266:	b292      	uxth	r2, r2
    2268:	2103      	movs	r1, #3
    226a:	430a      	orrs	r2, r1
    226c:	b292      	uxth	r2, r2
    226e:	83da      	strh	r2, [r3, #30]
    2270:	f000 f86a 	bl	2348 <ClearMemory>
    2274:	23c0      	movs	r3, #192	; 0xc0
    2276:	059b      	lsls	r3, r3, #22
    2278:	2280      	movs	r2, #128	; 0x80
    227a:	0152      	lsls	r2, r2, #5
    227c:	801a      	strh	r2, [r3, #0]
    227e:	23c0      	movs	r3, #192	; 0xc0
    2280:	059b      	lsls	r3, r3, #22
    2282:	2200      	movs	r2, #0
    2284:	811a      	strh	r2, [r3, #8]
    2286:	23c0      	movs	r3, #192	; 0xc0
    2288:	059b      	lsls	r3, r3, #22
    228a:	2200      	movs	r2, #0
    228c:	815a      	strh	r2, [r3, #10]
    228e:	23c0      	movs	r3, #192	; 0xc0
    2290:	059b      	lsls	r3, r3, #22
    2292:	2200      	movs	r2, #0
    2294:	819a      	strh	r2, [r3, #12]
    2296:	23c0      	movs	r3, #192	; 0xc0
    2298:	059b      	lsls	r3, r3, #22
    229a:	4a26      	ldr	r2, [pc, #152]	; (2334 <MACReset+0xdc>)
    229c:	81da      	strh	r2, [r3, #14]
    229e:	23c0      	movs	r3, #192	; 0xc0
    22a0:	059b      	lsls	r3, r3, #22
    22a2:	2260      	movs	r2, #96	; 0x60
    22a4:	821a      	strh	r2, [r3, #16]
    22a6:	23c0      	movs	r3, #192	; 0xc0
    22a8:	059b      	lsls	r3, r3, #22
    22aa:	2250      	movs	r2, #80	; 0x50
    22ac:	825a      	strh	r2, [r3, #18]
    22ae:	23c0      	movs	r3, #192	; 0xc0
    22b0:	059b      	lsls	r3, r3, #22
    22b2:	2280      	movs	r2, #128	; 0x80
    22b4:	0092      	lsls	r2, r2, #2
    22b6:	829a      	strh	r2, [r3, #20]
    22b8:	23c0      	movs	r3, #192	; 0xc0
    22ba:	059b      	lsls	r3, r3, #22
    22bc:	2205      	movs	r2, #5
    22be:	82da      	strh	r2, [r3, #22]
    22c0:	23c0      	movs	r3, #192	; 0xc0
    22c2:	059b      	lsls	r3, r3, #22
    22c4:	4a1c      	ldr	r2, [pc, #112]	; (2338 <MACReset+0xe0>)
    22c6:	831a      	strh	r2, [r3, #24]
    22c8:	23c0      	movs	r3, #192	; 0xc0
    22ca:	059b      	lsls	r3, r3, #22
    22cc:	4a1b      	ldr	r2, [pc, #108]	; (233c <MACReset+0xe4>)
    22ce:	835a      	strh	r2, [r3, #26]
    22d0:	23c0      	movs	r3, #192	; 0xc0
    22d2:	059b      	lsls	r3, r3, #22
    22d4:	2280      	movs	r2, #128	; 0x80
    22d6:	839a      	strh	r2, [r3, #28]
    22d8:	23c0      	movs	r3, #192	; 0xc0
    22da:	059b      	lsls	r3, r3, #22
    22dc:	4a18      	ldr	r2, [pc, #96]	; (2340 <MACReset+0xe8>)
    22de:	83da      	strh	r2, [r3, #30]
    22e0:	23c0      	movs	r3, #192	; 0xc0
    22e2:	059b      	lsls	r3, r3, #22
    22e4:	2200      	movs	r2, #0
    22e6:	841a      	strh	r2, [r3, #32]
    22e8:	23c0      	movs	r3, #192	; 0xc0
    22ea:	059b      	lsls	r3, r3, #22
    22ec:	2201      	movs	r2, #1
    22ee:	4252      	negs	r2, r2
    22f0:	845a      	strh	r2, [r3, #34]	; 0x22
    22f2:	23c0      	movs	r3, #192	; 0xc0
    22f4:	059b      	lsls	r3, r3, #22
    22f6:	2200      	movs	r2, #0
    22f8:	851a      	strh	r2, [r3, #40]	; 0x28
    22fa:	23c0      	movs	r3, #192	; 0xc0
    22fc:	059b      	lsls	r3, r3, #22
    22fe:	2280      	movs	r2, #128	; 0x80
    2300:	0152      	lsls	r2, r2, #5
    2302:	855a      	strh	r2, [r3, #42]	; 0x2a
    2304:	23c0      	movs	r3, #192	; 0xc0
    2306:	059b      	lsls	r3, r3, #22
    2308:	22c0      	movs	r2, #192	; 0xc0
    230a:	0592      	lsls	r2, r2, #22
    230c:	8b92      	ldrh	r2, [r2, #28]
    230e:	b292      	uxth	r2, r2
    2310:	490c      	ldr	r1, [pc, #48]	; (2344 <MACReset+0xec>)
    2312:	400a      	ands	r2, r1
    2314:	b292      	uxth	r2, r2
    2316:	839a      	strh	r2, [r3, #28]
    2318:	23c0      	movs	r3, #192	; 0xc0
    231a:	059b      	lsls	r3, r3, #22
    231c:	22c0      	movs	r2, #192	; 0xc0
    231e:	0592      	lsls	r2, r2, #22
    2320:	8bd2      	ldrh	r2, [r2, #30]
    2322:	b292      	uxth	r2, r2
    2324:	2103      	movs	r1, #3
    2326:	438a      	bics	r2, r1
    2328:	b292      	uxth	r2, r2
    232a:	83da      	strh	r2, [r3, #30]
    232c:	46c0      	nop			; (mov r8, r8)
    232e:	46bd      	mov	sp, r7
    2330:	bd80      	pop	{r7, pc}
    2332:	46c0      	nop			; (mov r8, r8)
    2334:	ffff8000 	.word	0xffff8000
    2338:	ffff8606 	.word	0xffff8606
    233c:	ffff81fa 	.word	0xffff81fa
    2340:	00003003 	.word	0x00003003
    2344:	ffffbfff 	.word	0xffffbfff

00002348 <ClearMemory>:
    2348:	b580      	push	{r7, lr}
    234a:	b082      	sub	sp, #8
    234c:	af00      	add	r7, sp, #0
    234e:	23e0      	movs	r3, #224	; 0xe0
    2350:	059b      	lsls	r3, r3, #22
    2352:	603b      	str	r3, [r7, #0]
    2354:	2300      	movs	r3, #0
    2356:	607b      	str	r3, [r7, #4]
    2358:	e007      	b.n	236a <ClearMemory+0x22>
    235a:	683b      	ldr	r3, [r7, #0]
    235c:	1d1a      	adds	r2, r3, #4
    235e:	603a      	str	r2, [r7, #0]
    2360:	2200      	movs	r2, #0
    2362:	601a      	str	r2, [r3, #0]
    2364:	687b      	ldr	r3, [r7, #4]
    2366:	3301      	adds	r3, #1
    2368:	607b      	str	r3, [r7, #4]
    236a:	687b      	ldr	r3, [r7, #4]
    236c:	4a03      	ldr	r2, [pc, #12]	; (237c <ClearMemory+0x34>)
    236e:	4293      	cmp	r3, r2
    2370:	d9f3      	bls.n	235a <ClearMemory+0x12>
    2372:	46c0      	nop			; (mov r8, r8)
    2374:	46bd      	mov	sp, r7
    2376:	b002      	add	sp, #8
    2378:	bd80      	pop	{r7, pc}
    237a:	46c0      	nop			; (mov r8, r8)
    237c:	000007ff 	.word	0x000007ff

00002380 <ReadPacket>:
    2380:	b580      	push	{r7, lr}
    2382:	b08a      	sub	sp, #40	; 0x28
    2384:	af00      	add	r7, sp, #0
    2386:	6078      	str	r0, [r7, #4]
    2388:	2316      	movs	r3, #22
    238a:	18fb      	adds	r3, r7, r3
    238c:	2200      	movs	r2, #0
    238e:	801a      	strh	r2, [r3, #0]
    2390:	2326      	movs	r3, #38	; 0x26
    2392:	18fb      	adds	r3, r7, r3
    2394:	2200      	movs	r2, #0
    2396:	801a      	strh	r2, [r3, #0]
    2398:	4b71      	ldr	r3, [pc, #452]	; (2560 <ReadPacket+0x1e0>)
    239a:	681a      	ldr	r2, [r3, #0]
    239c:	2301      	movs	r3, #1
    239e:	425b      	negs	r3, r3
    23a0:	0019      	movs	r1, r3
    23a2:	0010      	movs	r0, r2
    23a4:	f004 fa88 	bl	68b8 <osMutexWait>
    23a8:	23c0      	movs	r3, #192	; 0xc0
    23aa:	059a      	lsls	r2, r3, #22
    23ac:	2314      	movs	r3, #20
    23ae:	18fb      	adds	r3, r7, r3
    23b0:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    23b2:	801a      	strh	r2, [r3, #0]
    23b4:	23c0      	movs	r3, #192	; 0xc0
    23b6:	059a      	lsls	r2, r3, #22
    23b8:	2312      	movs	r3, #18
    23ba:	18fb      	adds	r3, r7, r3
    23bc:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    23be:	801a      	strh	r2, [r3, #0]
    23c0:	2314      	movs	r3, #20
    23c2:	18fa      	adds	r2, r7, r3
    23c4:	2312      	movs	r3, #18
    23c6:	18fb      	adds	r3, r7, r3
    23c8:	8812      	ldrh	r2, [r2, #0]
    23ca:	881b      	ldrh	r3, [r3, #0]
    23cc:	429a      	cmp	r2, r3
    23ce:	d90e      	bls.n	23ee <ReadPacket+0x6e>
    23d0:	2326      	movs	r3, #38	; 0x26
    23d2:	18fb      	adds	r3, r7, r3
    23d4:	2214      	movs	r2, #20
    23d6:	18b9      	adds	r1, r7, r2
    23d8:	2212      	movs	r2, #18
    23da:	18ba      	adds	r2, r7, r2
    23dc:	8809      	ldrh	r1, [r1, #0]
    23de:	8812      	ldrh	r2, [r2, #0]
    23e0:	1a8a      	subs	r2, r1, r2
    23e2:	801a      	strh	r2, [r3, #0]
    23e4:	2316      	movs	r3, #22
    23e6:	18fb      	adds	r3, r7, r3
    23e8:	2200      	movs	r2, #0
    23ea:	801a      	strh	r2, [r3, #0]
    23ec:	e00e      	b.n	240c <ReadPacket+0x8c>
    23ee:	2326      	movs	r3, #38	; 0x26
    23f0:	18fb      	adds	r3, r7, r3
    23f2:	2212      	movs	r2, #18
    23f4:	18ba      	adds	r2, r7, r2
    23f6:	8812      	ldrh	r2, [r2, #0]
    23f8:	2180      	movs	r1, #128	; 0x80
    23fa:	0149      	lsls	r1, r1, #5
    23fc:	1a8a      	subs	r2, r1, r2
    23fe:	801a      	strh	r2, [r3, #0]
    2400:	2316      	movs	r3, #22
    2402:	18fb      	adds	r3, r7, r3
    2404:	2214      	movs	r2, #20
    2406:	18ba      	adds	r2, r7, r2
    2408:	8812      	ldrh	r2, [r2, #0]
    240a:	801a      	strh	r2, [r3, #0]
    240c:	2312      	movs	r3, #18
    240e:	18fb      	adds	r3, r7, r3
    2410:	881b      	ldrh	r3, [r3, #0]
    2412:	22e0      	movs	r2, #224	; 0xe0
    2414:	0592      	lsls	r2, r2, #22
    2416:	4694      	mov	ip, r2
    2418:	4463      	add	r3, ip
    241a:	623b      	str	r3, [r7, #32]
    241c:	687b      	ldr	r3, [r7, #4]
    241e:	61fb      	str	r3, [r7, #28]
    2420:	2308      	movs	r3, #8
    2422:	18fa      	adds	r2, r7, r3
    2424:	6a3b      	ldr	r3, [r7, #32]
    2426:	1d19      	adds	r1, r3, #4
    2428:	6239      	str	r1, [r7, #32]
    242a:	681b      	ldr	r3, [r3, #0]
    242c:	6013      	str	r3, [r2, #0]
    242e:	2308      	movs	r3, #8
    2430:	18fb      	adds	r3, r7, r3
    2432:	881b      	ldrh	r3, [r3, #0]
    2434:	3303      	adds	r3, #3
    2436:	2b00      	cmp	r3, #0
    2438:	da00      	bge.n	243c <ReadPacket+0xbc>
    243a:	3303      	adds	r3, #3
    243c:	109b      	asrs	r3, r3, #2
    243e:	60fb      	str	r3, [r7, #12]
    2440:	2326      	movs	r3, #38	; 0x26
    2442:	18fb      	adds	r3, r7, r3
    2444:	2226      	movs	r2, #38	; 0x26
    2446:	18ba      	adds	r2, r7, r2
    2448:	8812      	ldrh	r2, [r2, #0]
    244a:	3a04      	subs	r2, #4
    244c:	801a      	strh	r2, [r3, #0]
    244e:	6a3b      	ldr	r3, [r7, #32]
    2450:	b29b      	uxth	r3, r3
    2452:	4a44      	ldr	r2, [pc, #272]	; (2564 <ReadPacket+0x1e4>)
    2454:	4293      	cmp	r3, r2
    2456:	d902      	bls.n	245e <ReadPacket+0xde>
    2458:	23e0      	movs	r3, #224	; 0xe0
    245a:	059b      	lsls	r3, r3, #22
    245c:	623b      	str	r3, [r7, #32]
    245e:	2308      	movs	r3, #8
    2460:	18fb      	adds	r3, r7, r3
    2462:	881b      	ldrh	r3, [r3, #0]
    2464:	2226      	movs	r2, #38	; 0x26
    2466:	18ba      	adds	r2, r7, r2
    2468:	8812      	ldrh	r2, [r2, #0]
    246a:	429a      	cmp	r2, r3
    246c:	d312      	bcc.n	2494 <ReadPacket+0x114>
    246e:	2300      	movs	r3, #0
    2470:	61bb      	str	r3, [r7, #24]
    2472:	e00a      	b.n	248a <ReadPacket+0x10a>
    2474:	69fb      	ldr	r3, [r7, #28]
    2476:	1d1a      	adds	r2, r3, #4
    2478:	61fa      	str	r2, [r7, #28]
    247a:	6a3a      	ldr	r2, [r7, #32]
    247c:	1d11      	adds	r1, r2, #4
    247e:	6239      	str	r1, [r7, #32]
    2480:	6812      	ldr	r2, [r2, #0]
    2482:	601a      	str	r2, [r3, #0]
    2484:	69bb      	ldr	r3, [r7, #24]
    2486:	3301      	adds	r3, #1
    2488:	61bb      	str	r3, [r7, #24]
    248a:	69ba      	ldr	r2, [r7, #24]
    248c:	68fb      	ldr	r3, [r7, #12]
    248e:	429a      	cmp	r2, r3
    2490:	d3f0      	bcc.n	2474 <ReadPacket+0xf4>
    2492:	e034      	b.n	24fe <ReadPacket+0x17e>
    2494:	2326      	movs	r3, #38	; 0x26
    2496:	18fb      	adds	r3, r7, r3
    2498:	881b      	ldrh	r3, [r3, #0]
    249a:	089b      	lsrs	r3, r3, #2
    249c:	b29b      	uxth	r3, r3
    249e:	001a      	movs	r2, r3
    24a0:	68fb      	ldr	r3, [r7, #12]
    24a2:	1a9b      	subs	r3, r3, r2
    24a4:	60fb      	str	r3, [r7, #12]
    24a6:	2300      	movs	r3, #0
    24a8:	61bb      	str	r3, [r7, #24]
    24aa:	e00a      	b.n	24c2 <ReadPacket+0x142>
    24ac:	69fb      	ldr	r3, [r7, #28]
    24ae:	1d1a      	adds	r2, r3, #4
    24b0:	61fa      	str	r2, [r7, #28]
    24b2:	6a3a      	ldr	r2, [r7, #32]
    24b4:	1d11      	adds	r1, r2, #4
    24b6:	6239      	str	r1, [r7, #32]
    24b8:	6812      	ldr	r2, [r2, #0]
    24ba:	601a      	str	r2, [r3, #0]
    24bc:	69bb      	ldr	r3, [r7, #24]
    24be:	3301      	adds	r3, #1
    24c0:	61bb      	str	r3, [r7, #24]
    24c2:	2326      	movs	r3, #38	; 0x26
    24c4:	18fb      	adds	r3, r7, r3
    24c6:	881b      	ldrh	r3, [r3, #0]
    24c8:	089b      	lsrs	r3, r3, #2
    24ca:	b29b      	uxth	r3, r3
    24cc:	001a      	movs	r2, r3
    24ce:	69bb      	ldr	r3, [r7, #24]
    24d0:	429a      	cmp	r2, r3
    24d2:	d8eb      	bhi.n	24ac <ReadPacket+0x12c>
    24d4:	23e0      	movs	r3, #224	; 0xe0
    24d6:	059b      	lsls	r3, r3, #22
    24d8:	623b      	str	r3, [r7, #32]
    24da:	2300      	movs	r3, #0
    24dc:	61bb      	str	r3, [r7, #24]
    24de:	e00a      	b.n	24f6 <ReadPacket+0x176>
    24e0:	69fb      	ldr	r3, [r7, #28]
    24e2:	1d1a      	adds	r2, r3, #4
    24e4:	61fa      	str	r2, [r7, #28]
    24e6:	6a3a      	ldr	r2, [r7, #32]
    24e8:	1d11      	adds	r1, r2, #4
    24ea:	6239      	str	r1, [r7, #32]
    24ec:	6812      	ldr	r2, [r2, #0]
    24ee:	601a      	str	r2, [r3, #0]
    24f0:	69bb      	ldr	r3, [r7, #24]
    24f2:	3301      	adds	r3, #1
    24f4:	61bb      	str	r3, [r7, #24]
    24f6:	69ba      	ldr	r2, [r7, #24]
    24f8:	68fb      	ldr	r3, [r7, #12]
    24fa:	429a      	cmp	r2, r3
    24fc:	d3f0      	bcc.n	24e0 <ReadPacket+0x160>
    24fe:	6a3b      	ldr	r3, [r7, #32]
    2500:	b29b      	uxth	r3, r3
    2502:	4a18      	ldr	r2, [pc, #96]	; (2564 <ReadPacket+0x1e4>)
    2504:	4293      	cmp	r3, r2
    2506:	d902      	bls.n	250e <ReadPacket+0x18e>
    2508:	23e0      	movs	r3, #224	; 0xe0
    250a:	059b      	lsls	r3, r3, #22
    250c:	623b      	str	r3, [r7, #32]
    250e:	23c0      	movs	r3, #192	; 0xc0
    2510:	059b      	lsls	r3, r3, #22
    2512:	6a3a      	ldr	r2, [r7, #32]
    2514:	b292      	uxth	r2, r2
    2516:	851a      	strh	r2, [r3, #40]	; 0x28
    2518:	23c0      	movs	r3, #192	; 0xc0
    251a:	059b      	lsls	r3, r3, #22
    251c:	22c0      	movs	r2, #192	; 0xc0
    251e:	0592      	lsls	r2, r2, #22
    2520:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    2522:	b292      	uxth	r2, r2
    2524:	3a20      	subs	r2, #32
    2526:	b292      	uxth	r2, r2
    2528:	861a      	strh	r2, [r3, #48]	; 0x30
    252a:	687b      	ldr	r3, [r7, #4]
    252c:	88da      	ldrh	r2, [r3, #6]
    252e:	4b0e      	ldr	r3, [pc, #56]	; (2568 <ReadPacket+0x1e8>)
    2530:	801a      	strh	r2, [r3, #0]
    2532:	687b      	ldr	r3, [r7, #4]
    2534:	891a      	ldrh	r2, [r3, #8]
    2536:	4b0c      	ldr	r3, [pc, #48]	; (2568 <ReadPacket+0x1e8>)
    2538:	805a      	strh	r2, [r3, #2]
    253a:	687b      	ldr	r3, [r7, #4]
    253c:	895a      	ldrh	r2, [r3, #10]
    253e:	4b0a      	ldr	r3, [pc, #40]	; (2568 <ReadPacket+0x1e8>)
    2540:	809a      	strh	r2, [r3, #4]
    2542:	4b09      	ldr	r3, [pc, #36]	; (2568 <ReadPacket+0x1e8>)
    2544:	2201      	movs	r2, #1
    2546:	815a      	strh	r2, [r3, #10]
    2548:	4b05      	ldr	r3, [pc, #20]	; (2560 <ReadPacket+0x1e0>)
    254a:	681b      	ldr	r3, [r3, #0]
    254c:	0018      	movs	r0, r3
    254e:	f004 f9c3 	bl	68d8 <osMutexRelease>
    2552:	2308      	movs	r3, #8
    2554:	18fb      	adds	r3, r7, r3
    2556:	881b      	ldrh	r3, [r3, #0]
    2558:	0018      	movs	r0, r3
    255a:	46bd      	mov	sp, r7
    255c:	b00a      	add	sp, #40	; 0x28
    255e:	bd80      	pop	{r7, pc}
    2560:	2000532c 	.word	0x2000532c
    2564:	00000fff 	.word	0x00000fff
    2568:	20004d1c 	.word	0x20004d1c

0000256c <SendPacket>:
    256c:	b580      	push	{r7, lr}
    256e:	b08a      	sub	sp, #40	; 0x28
    2570:	af00      	add	r7, sp, #0
    2572:	6078      	str	r0, [r7, #4]
    2574:	6039      	str	r1, [r7, #0]
    2576:	4b79      	ldr	r3, [pc, #484]	; (275c <SendPacket+0x1f0>)
    2578:	681a      	ldr	r2, [r3, #0]
    257a:	2301      	movs	r3, #1
    257c:	425b      	negs	r3, r3
    257e:	0019      	movs	r1, r3
    2580:	0010      	movs	r0, r2
    2582:	f004 f999 	bl	68b8 <osMutexWait>
    2586:	23c0      	movs	r3, #192	; 0xc0
    2588:	059b      	lsls	r3, r3, #22
    258a:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    258c:	b29b      	uxth	r3, r3
    258e:	61bb      	str	r3, [r7, #24]
    2590:	23c0      	movs	r3, #192	; 0xc0
    2592:	059b      	lsls	r3, r3, #22
    2594:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    2596:	b29b      	uxth	r3, r3
    2598:	617b      	str	r3, [r7, #20]
    259a:	69ba      	ldr	r2, [r7, #24]
    259c:	697b      	ldr	r3, [r7, #20]
    259e:	429a      	cmp	r2, r3
    25a0:	d90d      	bls.n	25be <SendPacket+0x52>
    25a2:	69bb      	ldr	r3, [r7, #24]
    25a4:	b29a      	uxth	r2, r3
    25a6:	697b      	ldr	r3, [r7, #20]
    25a8:	b29b      	uxth	r3, r3
    25aa:	1ad3      	subs	r3, r2, r3
    25ac:	b29a      	uxth	r2, r3
    25ae:	230c      	movs	r3, #12
    25b0:	18fb      	adds	r3, r7, r3
    25b2:	801a      	strh	r2, [r3, #0]
    25b4:	230c      	movs	r3, #12
    25b6:	18fb      	adds	r3, r7, r3
    25b8:	2200      	movs	r2, #0
    25ba:	805a      	strh	r2, [r3, #2]
    25bc:	e011      	b.n	25e2 <SendPacket+0x76>
    25be:	697b      	ldr	r3, [r7, #20]
    25c0:	b29b      	uxth	r3, r3
    25c2:	2280      	movs	r2, #128	; 0x80
    25c4:	0192      	lsls	r2, r2, #6
    25c6:	1ad3      	subs	r3, r2, r3
    25c8:	b29a      	uxth	r2, r3
    25ca:	230c      	movs	r3, #12
    25cc:	18fb      	adds	r3, r7, r3
    25ce:	801a      	strh	r2, [r3, #0]
    25d0:	69bb      	ldr	r3, [r7, #24]
    25d2:	b29b      	uxth	r3, r3
    25d4:	4a62      	ldr	r2, [pc, #392]	; (2760 <SendPacket+0x1f4>)
    25d6:	4694      	mov	ip, r2
    25d8:	4463      	add	r3, ip
    25da:	b29a      	uxth	r2, r3
    25dc:	230c      	movs	r3, #12
    25de:	18fb      	adds	r3, r7, r3
    25e0:	805a      	strh	r2, [r3, #2]
    25e2:	230c      	movs	r3, #12
    25e4:	18fb      	adds	r3, r7, r3
    25e6:	881b      	ldrh	r3, [r3, #0]
    25e8:	001a      	movs	r2, r3
    25ea:	230c      	movs	r3, #12
    25ec:	18fb      	adds	r3, r7, r3
    25ee:	885b      	ldrh	r3, [r3, #2]
    25f0:	18d3      	adds	r3, r2, r3
    25f2:	3b08      	subs	r3, #8
    25f4:	001a      	movs	r2, r3
    25f6:	683b      	ldr	r3, [r7, #0]
    25f8:	429a      	cmp	r2, r3
    25fa:	da01      	bge.n	2600 <SendPacket+0x94>
    25fc:	2300      	movs	r3, #0
    25fe:	e0a9      	b.n	2754 <SendPacket+0x1e8>
    2600:	683b      	ldr	r3, [r7, #0]
    2602:	613b      	str	r3, [r7, #16]
    2604:	687b      	ldr	r3, [r7, #4]
    2606:	623b      	str	r3, [r7, #32]
    2608:	697b      	ldr	r3, [r7, #20]
    260a:	22e0      	movs	r2, #224	; 0xe0
    260c:	0592      	lsls	r2, r2, #22
    260e:	4694      	mov	ip, r2
    2610:	4463      	add	r3, ip
    2612:	61fb      	str	r3, [r7, #28]
    2614:	69fb      	ldr	r3, [r7, #28]
    2616:	1d1a      	adds	r2, r3, #4
    2618:	61fa      	str	r2, [r7, #28]
    261a:	693a      	ldr	r2, [r7, #16]
    261c:	601a      	str	r2, [r3, #0]
    261e:	230c      	movs	r3, #12
    2620:	18fb      	adds	r3, r7, r3
    2622:	881b      	ldrh	r3, [r3, #0]
    2624:	3b04      	subs	r3, #4
    2626:	b29a      	uxth	r2, r3
    2628:	230c      	movs	r3, #12
    262a:	18fb      	adds	r3, r7, r3
    262c:	801a      	strh	r2, [r3, #0]
    262e:	69fb      	ldr	r3, [r7, #28]
    2630:	b29b      	uxth	r3, r3
    2632:	4a4c      	ldr	r2, [pc, #304]	; (2764 <SendPacket+0x1f8>)
    2634:	4293      	cmp	r3, r2
    2636:	d901      	bls.n	263c <SendPacket+0xd0>
    2638:	4b4b      	ldr	r3, [pc, #300]	; (2768 <SendPacket+0x1fc>)
    263a:	61fb      	str	r3, [r7, #28]
    263c:	683b      	ldr	r3, [r7, #0]
    263e:	3303      	adds	r3, #3
    2640:	2b00      	cmp	r3, #0
    2642:	da00      	bge.n	2646 <SendPacket+0xda>
    2644:	3303      	adds	r3, #3
    2646:	109b      	asrs	r3, r3, #2
    2648:	613b      	str	r3, [r7, #16]
    264a:	230c      	movs	r3, #12
    264c:	18fb      	adds	r3, r7, r3
    264e:	881b      	ldrh	r3, [r3, #0]
    2650:	001a      	movs	r2, r3
    2652:	683b      	ldr	r3, [r7, #0]
    2654:	429a      	cmp	r2, r3
    2656:	db1a      	blt.n	268e <SendPacket+0x122>
    2658:	2326      	movs	r3, #38	; 0x26
    265a:	18fb      	adds	r3, r7, r3
    265c:	2200      	movs	r2, #0
    265e:	801a      	strh	r2, [r3, #0]
    2660:	e00e      	b.n	2680 <SendPacket+0x114>
    2662:	69fb      	ldr	r3, [r7, #28]
    2664:	1d1a      	adds	r2, r3, #4
    2666:	61fa      	str	r2, [r7, #28]
    2668:	6a3a      	ldr	r2, [r7, #32]
    266a:	1d11      	adds	r1, r2, #4
    266c:	6239      	str	r1, [r7, #32]
    266e:	6812      	ldr	r2, [r2, #0]
    2670:	601a      	str	r2, [r3, #0]
    2672:	2326      	movs	r3, #38	; 0x26
    2674:	18fb      	adds	r3, r7, r3
    2676:	881a      	ldrh	r2, [r3, #0]
    2678:	2326      	movs	r3, #38	; 0x26
    267a:	18fb      	adds	r3, r7, r3
    267c:	3201      	adds	r2, #1
    267e:	801a      	strh	r2, [r3, #0]
    2680:	2326      	movs	r3, #38	; 0x26
    2682:	18fb      	adds	r3, r7, r3
    2684:	881a      	ldrh	r2, [r3, #0]
    2686:	693b      	ldr	r3, [r7, #16]
    2688:	429a      	cmp	r2, r3
    268a:	d3ea      	bcc.n	2662 <SendPacket+0xf6>
    268c:	e042      	b.n	2714 <SendPacket+0x1a8>
    268e:	230c      	movs	r3, #12
    2690:	18fb      	adds	r3, r7, r3
    2692:	881b      	ldrh	r3, [r3, #0]
    2694:	089b      	lsrs	r3, r3, #2
    2696:	b29b      	uxth	r3, r3
    2698:	001a      	movs	r2, r3
    269a:	693b      	ldr	r3, [r7, #16]
    269c:	1a9b      	subs	r3, r3, r2
    269e:	613b      	str	r3, [r7, #16]
    26a0:	2326      	movs	r3, #38	; 0x26
    26a2:	18fb      	adds	r3, r7, r3
    26a4:	2200      	movs	r2, #0
    26a6:	801a      	strh	r2, [r3, #0]
    26a8:	e00e      	b.n	26c8 <SendPacket+0x15c>
    26aa:	69fb      	ldr	r3, [r7, #28]
    26ac:	1d1a      	adds	r2, r3, #4
    26ae:	61fa      	str	r2, [r7, #28]
    26b0:	6a3a      	ldr	r2, [r7, #32]
    26b2:	1d11      	adds	r1, r2, #4
    26b4:	6239      	str	r1, [r7, #32]
    26b6:	6812      	ldr	r2, [r2, #0]
    26b8:	601a      	str	r2, [r3, #0]
    26ba:	2326      	movs	r3, #38	; 0x26
    26bc:	18fb      	adds	r3, r7, r3
    26be:	881a      	ldrh	r2, [r3, #0]
    26c0:	2326      	movs	r3, #38	; 0x26
    26c2:	18fb      	adds	r3, r7, r3
    26c4:	3201      	adds	r2, #1
    26c6:	801a      	strh	r2, [r3, #0]
    26c8:	230c      	movs	r3, #12
    26ca:	18fb      	adds	r3, r7, r3
    26cc:	881b      	ldrh	r3, [r3, #0]
    26ce:	089b      	lsrs	r3, r3, #2
    26d0:	b29b      	uxth	r3, r3
    26d2:	2226      	movs	r2, #38	; 0x26
    26d4:	18ba      	adds	r2, r7, r2
    26d6:	8812      	ldrh	r2, [r2, #0]
    26d8:	429a      	cmp	r2, r3
    26da:	d3e6      	bcc.n	26aa <SendPacket+0x13e>
    26dc:	4b22      	ldr	r3, [pc, #136]	; (2768 <SendPacket+0x1fc>)
    26de:	61fb      	str	r3, [r7, #28]
    26e0:	2326      	movs	r3, #38	; 0x26
    26e2:	18fb      	adds	r3, r7, r3
    26e4:	2200      	movs	r2, #0
    26e6:	801a      	strh	r2, [r3, #0]
    26e8:	e00e      	b.n	2708 <SendPacket+0x19c>
    26ea:	69fb      	ldr	r3, [r7, #28]
    26ec:	1d1a      	adds	r2, r3, #4
    26ee:	61fa      	str	r2, [r7, #28]
    26f0:	6a3a      	ldr	r2, [r7, #32]
    26f2:	1d11      	adds	r1, r2, #4
    26f4:	6239      	str	r1, [r7, #32]
    26f6:	6812      	ldr	r2, [r2, #0]
    26f8:	601a      	str	r2, [r3, #0]
    26fa:	2326      	movs	r3, #38	; 0x26
    26fc:	18fb      	adds	r3, r7, r3
    26fe:	881a      	ldrh	r2, [r3, #0]
    2700:	2326      	movs	r3, #38	; 0x26
    2702:	18fb      	adds	r3, r7, r3
    2704:	3201      	adds	r2, #1
    2706:	801a      	strh	r2, [r3, #0]
    2708:	2326      	movs	r3, #38	; 0x26
    270a:	18fb      	adds	r3, r7, r3
    270c:	881a      	ldrh	r2, [r3, #0]
    270e:	693b      	ldr	r3, [r7, #16]
    2710:	429a      	cmp	r2, r3
    2712:	d3ea      	bcc.n	26ea <SendPacket+0x17e>
    2714:	69fb      	ldr	r3, [r7, #28]
    2716:	b29b      	uxth	r3, r3
    2718:	4a12      	ldr	r2, [pc, #72]	; (2764 <SendPacket+0x1f8>)
    271a:	4293      	cmp	r3, r2
    271c:	d901      	bls.n	2722 <SendPacket+0x1b6>
    271e:	4b12      	ldr	r3, [pc, #72]	; (2768 <SendPacket+0x1fc>)
    2720:	61fb      	str	r3, [r7, #28]
    2722:	2300      	movs	r3, #0
    2724:	613b      	str	r3, [r7, #16]
    2726:	69fb      	ldr	r3, [r7, #28]
    2728:	1d1a      	adds	r2, r3, #4
    272a:	61fa      	str	r2, [r7, #28]
    272c:	693a      	ldr	r2, [r7, #16]
    272e:	601a      	str	r2, [r3, #0]
    2730:	69fb      	ldr	r3, [r7, #28]
    2732:	b29b      	uxth	r3, r3
    2734:	4a0b      	ldr	r2, [pc, #44]	; (2764 <SendPacket+0x1f8>)
    2736:	4293      	cmp	r3, r2
    2738:	d901      	bls.n	273e <SendPacket+0x1d2>
    273a:	4b0b      	ldr	r3, [pc, #44]	; (2768 <SendPacket+0x1fc>)
    273c:	61fb      	str	r3, [r7, #28]
    273e:	23c0      	movs	r3, #192	; 0xc0
    2740:	059b      	lsls	r3, r3, #22
    2742:	69fa      	ldr	r2, [r7, #28]
    2744:	b292      	uxth	r2, r2
    2746:	855a      	strh	r2, [r3, #42]	; 0x2a
    2748:	4b04      	ldr	r3, [pc, #16]	; (275c <SendPacket+0x1f0>)
    274a:	681b      	ldr	r3, [r3, #0]
    274c:	0018      	movs	r0, r3
    274e:	f004 f8c3 	bl	68d8 <osMutexRelease>
    2752:	683b      	ldr	r3, [r7, #0]
    2754:	0018      	movs	r0, r3
    2756:	46bd      	mov	sp, r7
    2758:	b00a      	add	sp, #40	; 0x28
    275a:	bd80      	pop	{r7, pc}
    275c:	20005340 	.word	0x20005340
    2760:	fffff000 	.word	0xfffff000
    2764:	00001ffc 	.word	0x00001ffc
    2768:	38001000 	.word	0x38001000

0000276c <ETHERNET_Handler>:
    276c:	b580      	push	{r7, lr}
    276e:	b082      	sub	sp, #8
    2770:	af00      	add	r7, sp, #0
    2772:	23c0      	movs	r3, #192	; 0xc0
    2774:	059a      	lsls	r2, r3, #22
    2776:	1dbb      	adds	r3, r7, #6
    2778:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    277a:	801a      	strh	r2, [r3, #0]
    277c:	23c0      	movs	r3, #192	; 0xc0
    277e:	059b      	lsls	r3, r3, #22
    2780:	1dba      	adds	r2, r7, #6
    2782:	8812      	ldrh	r2, [r2, #0]
    2784:	845a      	strh	r2, [r3, #34]	; 0x22
    2786:	1dbb      	adds	r3, r7, #6
    2788:	881b      	ldrh	r3, [r3, #0]
    278a:	2201      	movs	r2, #1
    278c:	4013      	ands	r3, r2
    278e:	d008      	beq.n	27a2 <ETHERNET_Handler+0x36>
    2790:	4b0a      	ldr	r3, [pc, #40]	; (27bc <ETHERNET_Handler+0x50>)
    2792:	2201      	movs	r2, #1
    2794:	601a      	str	r2, [r3, #0]
    2796:	4b0a      	ldr	r3, [pc, #40]	; (27c0 <ETHERNET_Handler+0x54>)
    2798:	681b      	ldr	r3, [r3, #0]
    279a:	2101      	movs	r1, #1
    279c:	0018      	movs	r0, r3
    279e:	f003 ffa9 	bl	66f4 <osSignalSet>
    27a2:	1dbb      	adds	r3, r7, #6
    27a4:	881b      	ldrh	r3, [r3, #0]
    27a6:	2202      	movs	r2, #2
    27a8:	4013      	ands	r3, r2
    27aa:	d002      	beq.n	27b2 <ETHERNET_Handler+0x46>
    27ac:	4b05      	ldr	r3, [pc, #20]	; (27c4 <ETHERNET_Handler+0x58>)
    27ae:	2201      	movs	r2, #1
    27b0:	601a      	str	r2, [r3, #0]
    27b2:	46c0      	nop			; (mov r8, r8)
    27b4:	46bd      	mov	sp, r7
    27b6:	b002      	add	sp, #8
    27b8:	bd80      	pop	{r7, pc}
    27ba:	46c0      	nop			; (mov r8, r8)
    27bc:	20004d28 	.word	0x20004d28
    27c0:	20000858 	.word	0x20000858
    27c4:	20004d2c 	.word	0x20004d2c

000027c8 <network_config>:
    27c8:	b580      	push	{r7, lr}
    27ca:	b082      	sub	sp, #8
    27cc:	af00      	add	r7, sp, #0
    27ce:	6078      	str	r0, [r7, #4]
    27d0:	687b      	ldr	r3, [r7, #4]
    27d2:	2b00      	cmp	r3, #0
    27d4:	d007      	beq.n	27e6 <network_config+0x1e>
    27d6:	687b      	ldr	r3, [r7, #4]
    27d8:	881a      	ldrh	r2, [r3, #0]
    27da:	4b05      	ldr	r3, [pc, #20]	; (27f0 <network_config+0x28>)
    27dc:	801a      	strh	r2, [r3, #0]
    27de:	687b      	ldr	r3, [r7, #4]
    27e0:	885a      	ldrh	r2, [r3, #2]
    27e2:	4b03      	ldr	r3, [pc, #12]	; (27f0 <network_config+0x28>)
    27e4:	805a      	strh	r2, [r3, #2]
    27e6:	46c0      	nop			; (mov r8, r8)
    27e8:	46bd      	mov	sp, r7
    27ea:	b002      	add	sp, #8
    27ec:	bd80      	pop	{r7, pc}
    27ee:	46c0      	nop			; (mov r8, r8)
    27f0:	20000010 	.word	0x20000010

000027f4 <Answear_ARP>:
    27f4:	b580      	push	{r7, lr}
    27f6:	b08c      	sub	sp, #48	; 0x30
    27f8:	af00      	add	r7, sp, #0
    27fa:	4b36      	ldr	r3, [pc, #216]	; (28d4 <Answear_ARP+0xe0>)
    27fc:	88da      	ldrh	r2, [r3, #6]
    27fe:	1d3b      	adds	r3, r7, #4
    2800:	801a      	strh	r2, [r3, #0]
    2802:	4b34      	ldr	r3, [pc, #208]	; (28d4 <Answear_ARP+0xe0>)
    2804:	891a      	ldrh	r2, [r3, #8]
    2806:	1d3b      	adds	r3, r7, #4
    2808:	805a      	strh	r2, [r3, #2]
    280a:	4b32      	ldr	r3, [pc, #200]	; (28d4 <Answear_ARP+0xe0>)
    280c:	895a      	ldrh	r2, [r3, #10]
    280e:	1d3b      	adds	r3, r7, #4
    2810:	809a      	strh	r2, [r3, #4]
    2812:	23c0      	movs	r3, #192	; 0xc0
    2814:	059b      	lsls	r3, r3, #22
    2816:	885b      	ldrh	r3, [r3, #2]
    2818:	b29a      	uxth	r2, r3
    281a:	1d3b      	adds	r3, r7, #4
    281c:	80da      	strh	r2, [r3, #6]
    281e:	23c0      	movs	r3, #192	; 0xc0
    2820:	059b      	lsls	r3, r3, #22
    2822:	889b      	ldrh	r3, [r3, #4]
    2824:	b29a      	uxth	r2, r3
    2826:	1d3b      	adds	r3, r7, #4
    2828:	811a      	strh	r2, [r3, #8]
    282a:	23c0      	movs	r3, #192	; 0xc0
    282c:	059b      	lsls	r3, r3, #22
    282e:	88db      	ldrh	r3, [r3, #6]
    2830:	b29a      	uxth	r2, r3
    2832:	1d3b      	adds	r3, r7, #4
    2834:	815a      	strh	r2, [r3, #10]
    2836:	4b27      	ldr	r3, [pc, #156]	; (28d4 <Answear_ARP+0xe0>)
    2838:	899a      	ldrh	r2, [r3, #12]
    283a:	1d3b      	adds	r3, r7, #4
    283c:	819a      	strh	r2, [r3, #12]
    283e:	4b25      	ldr	r3, [pc, #148]	; (28d4 <Answear_ARP+0xe0>)
    2840:	89da      	ldrh	r2, [r3, #14]
    2842:	1d3b      	adds	r3, r7, #4
    2844:	81da      	strh	r2, [r3, #14]
    2846:	4b23      	ldr	r3, [pc, #140]	; (28d4 <Answear_ARP+0xe0>)
    2848:	8a1a      	ldrh	r2, [r3, #16]
    284a:	1d3b      	adds	r3, r7, #4
    284c:	821a      	strh	r2, [r3, #16]
    284e:	4b21      	ldr	r3, [pc, #132]	; (28d4 <Answear_ARP+0xe0>)
    2850:	8a5a      	ldrh	r2, [r3, #18]
    2852:	1d3b      	adds	r3, r7, #4
    2854:	825a      	strh	r2, [r3, #18]
    2856:	1d3b      	adds	r3, r7, #4
    2858:	2280      	movs	r2, #128	; 0x80
    285a:	0092      	lsls	r2, r2, #2
    285c:	829a      	strh	r2, [r3, #20]
    285e:	23c0      	movs	r3, #192	; 0xc0
    2860:	059b      	lsls	r3, r3, #22
    2862:	885b      	ldrh	r3, [r3, #2]
    2864:	b29a      	uxth	r2, r3
    2866:	1d3b      	adds	r3, r7, #4
    2868:	82da      	strh	r2, [r3, #22]
    286a:	23c0      	movs	r3, #192	; 0xc0
    286c:	059b      	lsls	r3, r3, #22
    286e:	889b      	ldrh	r3, [r3, #4]
    2870:	b29a      	uxth	r2, r3
    2872:	1d3b      	adds	r3, r7, #4
    2874:	831a      	strh	r2, [r3, #24]
    2876:	23c0      	movs	r3, #192	; 0xc0
    2878:	059b      	lsls	r3, r3, #22
    287a:	88db      	ldrh	r3, [r3, #6]
    287c:	b29a      	uxth	r2, r3
    287e:	1d3b      	adds	r3, r7, #4
    2880:	835a      	strh	r2, [r3, #26]
    2882:	4b15      	ldr	r3, [pc, #84]	; (28d8 <Answear_ARP+0xe4>)
    2884:	881a      	ldrh	r2, [r3, #0]
    2886:	1d3b      	adds	r3, r7, #4
    2888:	839a      	strh	r2, [r3, #28]
    288a:	4b13      	ldr	r3, [pc, #76]	; (28d8 <Answear_ARP+0xe4>)
    288c:	885a      	ldrh	r2, [r3, #2]
    288e:	1d3b      	adds	r3, r7, #4
    2890:	83da      	strh	r2, [r3, #30]
    2892:	4b10      	ldr	r3, [pc, #64]	; (28d4 <Answear_ARP+0xe0>)
    2894:	88da      	ldrh	r2, [r3, #6]
    2896:	1d3b      	adds	r3, r7, #4
    2898:	841a      	strh	r2, [r3, #32]
    289a:	4b0e      	ldr	r3, [pc, #56]	; (28d4 <Answear_ARP+0xe0>)
    289c:	891a      	ldrh	r2, [r3, #8]
    289e:	1d3b      	adds	r3, r7, #4
    28a0:	845a      	strh	r2, [r3, #34]	; 0x22
    28a2:	4b0c      	ldr	r3, [pc, #48]	; (28d4 <Answear_ARP+0xe0>)
    28a4:	895a      	ldrh	r2, [r3, #10]
    28a6:	1d3b      	adds	r3, r7, #4
    28a8:	849a      	strh	r2, [r3, #36]	; 0x24
    28aa:	4b0a      	ldr	r3, [pc, #40]	; (28d4 <Answear_ARP+0xe0>)
    28ac:	8b9a      	ldrh	r2, [r3, #28]
    28ae:	1d3b      	adds	r3, r7, #4
    28b0:	84da      	strh	r2, [r3, #38]	; 0x26
    28b2:	4b08      	ldr	r3, [pc, #32]	; (28d4 <Answear_ARP+0xe0>)
    28b4:	8bda      	ldrh	r2, [r3, #30]
    28b6:	1d3b      	adds	r3, r7, #4
    28b8:	851a      	strh	r2, [r3, #40]	; 0x28
    28ba:	1d3b      	adds	r3, r7, #4
    28bc:	2200      	movs	r2, #0
    28be:	855a      	strh	r2, [r3, #42]	; 0x2a
    28c0:	1d3b      	adds	r3, r7, #4
    28c2:	212a      	movs	r1, #42	; 0x2a
    28c4:	0018      	movs	r0, r3
    28c6:	f7ff fe51 	bl	256c <SendPacket>
    28ca:	46c0      	nop			; (mov r8, r8)
    28cc:	46bd      	mov	sp, r7
    28ce:	b00c      	add	sp, #48	; 0x30
    28d0:	bd80      	pop	{r7, pc}
    28d2:	46c0      	nop			; (mov r8, r8)
    28d4:	20004d38 	.word	0x20004d38
    28d8:	20000010 	.word	0x20000010

000028dc <CheckSum_UDP>:
    28dc:	b580      	push	{r7, lr}
    28de:	b086      	sub	sp, #24
    28e0:	af00      	add	r7, sp, #0
    28e2:	0002      	movs	r2, r0
    28e4:	6039      	str	r1, [r7, #0]
    28e6:	1dbb      	adds	r3, r7, #6
    28e8:	801a      	strh	r2, [r3, #0]
    28ea:	2300      	movs	r3, #0
    28ec:	613b      	str	r3, [r7, #16]
    28ee:	230d      	movs	r3, #13
    28f0:	617b      	str	r3, [r7, #20]
    28f2:	e019      	b.n	2928 <CheckSum_UDP+0x4c>
    28f4:	697b      	ldr	r3, [r7, #20]
    28f6:	005b      	lsls	r3, r3, #1
    28f8:	683a      	ldr	r2, [r7, #0]
    28fa:	18d3      	adds	r3, r2, r3
    28fc:	881b      	ldrh	r3, [r3, #0]
    28fe:	021b      	lsls	r3, r3, #8
    2900:	041b      	lsls	r3, r3, #16
    2902:	0c1a      	lsrs	r2, r3, #16
    2904:	697b      	ldr	r3, [r7, #20]
    2906:	005b      	lsls	r3, r3, #1
    2908:	6839      	ldr	r1, [r7, #0]
    290a:	18cb      	adds	r3, r1, r3
    290c:	881b      	ldrh	r3, [r3, #0]
    290e:	0a1b      	lsrs	r3, r3, #8
    2910:	b29b      	uxth	r3, r3
    2912:	0019      	movs	r1, r3
    2914:	23ff      	movs	r3, #255	; 0xff
    2916:	400b      	ands	r3, r1
    2918:	18d3      	adds	r3, r2, r3
    291a:	001a      	movs	r2, r3
    291c:	693b      	ldr	r3, [r7, #16]
    291e:	189b      	adds	r3, r3, r2
    2920:	613b      	str	r3, [r7, #16]
    2922:	697b      	ldr	r3, [r7, #20]
    2924:	3301      	adds	r3, #1
    2926:	617b      	str	r3, [r7, #20]
    2928:	697b      	ldr	r3, [r7, #20]
    292a:	2b10      	cmp	r3, #16
    292c:	d9e2      	bls.n	28f4 <CheckSum_UDP+0x18>
    292e:	683b      	ldr	r3, [r7, #0]
    2930:	3316      	adds	r3, #22
    2932:	881b      	ldrh	r3, [r3, #0]
    2934:	0a1b      	lsrs	r3, r3, #8
    2936:	b29b      	uxth	r3, r3
    2938:	001a      	movs	r2, r3
    293a:	23ff      	movs	r3, #255	; 0xff
    293c:	4013      	ands	r3, r2
    293e:	693a      	ldr	r2, [r7, #16]
    2940:	18d3      	adds	r3, r2, r3
    2942:	613b      	str	r3, [r7, #16]
    2944:	1dbb      	adds	r3, r7, #6
    2946:	881b      	ldrh	r3, [r3, #0]
    2948:	693a      	ldr	r2, [r7, #16]
    294a:	18d3      	adds	r3, r2, r3
    294c:	613b      	str	r3, [r7, #16]
    294e:	683b      	ldr	r3, [r7, #0]
    2950:	3322      	adds	r3, #34	; 0x22
    2952:	881b      	ldrh	r3, [r3, #0]
    2954:	021b      	lsls	r3, r3, #8
    2956:	041b      	lsls	r3, r3, #16
    2958:	0c1a      	lsrs	r2, r3, #16
    295a:	683b      	ldr	r3, [r7, #0]
    295c:	3322      	adds	r3, #34	; 0x22
    295e:	881b      	ldrh	r3, [r3, #0]
    2960:	0a1b      	lsrs	r3, r3, #8
    2962:	b29b      	uxth	r3, r3
    2964:	0019      	movs	r1, r3
    2966:	23ff      	movs	r3, #255	; 0xff
    2968:	400b      	ands	r3, r1
    296a:	18d3      	adds	r3, r2, r3
    296c:	001a      	movs	r2, r3
    296e:	693b      	ldr	r3, [r7, #16]
    2970:	189b      	adds	r3, r3, r2
    2972:	613b      	str	r3, [r7, #16]
    2974:	683b      	ldr	r3, [r7, #0]
    2976:	3324      	adds	r3, #36	; 0x24
    2978:	881b      	ldrh	r3, [r3, #0]
    297a:	021b      	lsls	r3, r3, #8
    297c:	041b      	lsls	r3, r3, #16
    297e:	0c1a      	lsrs	r2, r3, #16
    2980:	683b      	ldr	r3, [r7, #0]
    2982:	3324      	adds	r3, #36	; 0x24
    2984:	881b      	ldrh	r3, [r3, #0]
    2986:	0a1b      	lsrs	r3, r3, #8
    2988:	b29b      	uxth	r3, r3
    298a:	0019      	movs	r1, r3
    298c:	23ff      	movs	r3, #255	; 0xff
    298e:	400b      	ands	r3, r1
    2990:	18d3      	adds	r3, r2, r3
    2992:	001a      	movs	r2, r3
    2994:	693b      	ldr	r3, [r7, #16]
    2996:	189b      	adds	r3, r3, r2
    2998:	613b      	str	r3, [r7, #16]
    299a:	1dbb      	adds	r3, r7, #6
    299c:	881b      	ldrh	r3, [r3, #0]
    299e:	693a      	ldr	r2, [r7, #16]
    29a0:	18d3      	adds	r3, r2, r3
    29a2:	613b      	str	r3, [r7, #16]
    29a4:	683b      	ldr	r3, [r7, #0]
    29a6:	3328      	adds	r3, #40	; 0x28
    29a8:	881b      	ldrh	r3, [r3, #0]
    29aa:	021b      	lsls	r3, r3, #8
    29ac:	041b      	lsls	r3, r3, #16
    29ae:	0c1a      	lsrs	r2, r3, #16
    29b0:	683b      	ldr	r3, [r7, #0]
    29b2:	3328      	adds	r3, #40	; 0x28
    29b4:	881b      	ldrh	r3, [r3, #0]
    29b6:	0a1b      	lsrs	r3, r3, #8
    29b8:	b29b      	uxth	r3, r3
    29ba:	0019      	movs	r1, r3
    29bc:	23ff      	movs	r3, #255	; 0xff
    29be:	400b      	ands	r3, r1
    29c0:	18d3      	adds	r3, r2, r3
    29c2:	001a      	movs	r2, r3
    29c4:	693b      	ldr	r3, [r7, #16]
    29c6:	189b      	adds	r3, r3, r2
    29c8:	613b      	str	r3, [r7, #16]
    29ca:	683b      	ldr	r3, [r7, #0]
    29cc:	332a      	adds	r3, #42	; 0x2a
    29ce:	60fb      	str	r3, [r7, #12]
    29d0:	2300      	movs	r3, #0
    29d2:	617b      	str	r3, [r7, #20]
    29d4:	e017      	b.n	2a06 <CheckSum_UDP+0x12a>
    29d6:	697b      	ldr	r3, [r7, #20]
    29d8:	2201      	movs	r2, #1
    29da:	4013      	ands	r3, r2
    29dc:	d008      	beq.n	29f0 <CheckSum_UDP+0x114>
    29de:	68fb      	ldr	r3, [r7, #12]
    29e0:	1c5a      	adds	r2, r3, #1
    29e2:	60fa      	str	r2, [r7, #12]
    29e4:	781b      	ldrb	r3, [r3, #0]
    29e6:	001a      	movs	r2, r3
    29e8:	693b      	ldr	r3, [r7, #16]
    29ea:	189b      	adds	r3, r3, r2
    29ec:	613b      	str	r3, [r7, #16]
    29ee:	e007      	b.n	2a00 <CheckSum_UDP+0x124>
    29f0:	68fb      	ldr	r3, [r7, #12]
    29f2:	1c5a      	adds	r2, r3, #1
    29f4:	60fa      	str	r2, [r7, #12]
    29f6:	781b      	ldrb	r3, [r3, #0]
    29f8:	021b      	lsls	r3, r3, #8
    29fa:	693a      	ldr	r2, [r7, #16]
    29fc:	18d3      	adds	r3, r2, r3
    29fe:	613b      	str	r3, [r7, #16]
    2a00:	697b      	ldr	r3, [r7, #20]
    2a02:	3301      	adds	r3, #1
    2a04:	617b      	str	r3, [r7, #20]
    2a06:	1dbb      	adds	r3, r7, #6
    2a08:	881b      	ldrh	r3, [r3, #0]
    2a0a:	3b08      	subs	r3, #8
    2a0c:	001a      	movs	r2, r3
    2a0e:	697b      	ldr	r3, [r7, #20]
    2a10:	429a      	cmp	r2, r3
    2a12:	d8e0      	bhi.n	29d6 <CheckSum_UDP+0xfa>
    2a14:	e006      	b.n	2a24 <CheckSum_UDP+0x148>
    2a16:	693b      	ldr	r3, [r7, #16]
    2a18:	0c1a      	lsrs	r2, r3, #16
    2a1a:	693b      	ldr	r3, [r7, #16]
    2a1c:	041b      	lsls	r3, r3, #16
    2a1e:	0c1b      	lsrs	r3, r3, #16
    2a20:	18d3      	adds	r3, r2, r3
    2a22:	613b      	str	r3, [r7, #16]
    2a24:	693b      	ldr	r3, [r7, #16]
    2a26:	0c1b      	lsrs	r3, r3, #16
    2a28:	d1f5      	bne.n	2a16 <CheckSum_UDP+0x13a>
    2a2a:	693b      	ldr	r3, [r7, #16]
    2a2c:	b29b      	uxth	r3, r3
    2a2e:	43db      	mvns	r3, r3
    2a30:	b29b      	uxth	r3, r3
    2a32:	0018      	movs	r0, r3
    2a34:	46bd      	mov	sp, r7
    2a36:	b006      	add	sp, #24
    2a38:	bd80      	pop	{r7, pc}
    2a3a:	46c0      	nop			; (mov r8, r8)

00002a3c <CheckSum_IP>:
    2a3c:	b580      	push	{r7, lr}
    2a3e:	b084      	sub	sp, #16
    2a40:	af00      	add	r7, sp, #0
    2a42:	6078      	str	r0, [r7, #4]
    2a44:	2300      	movs	r3, #0
    2a46:	60bb      	str	r3, [r7, #8]
    2a48:	2300      	movs	r3, #0
    2a4a:	60fb      	str	r3, [r7, #12]
    2a4c:	e011      	b.n	2a72 <CheckSum_IP+0x36>
    2a4e:	68fb      	ldr	r3, [r7, #12]
    2a50:	2b05      	cmp	r3, #5
    2a52:	d00a      	beq.n	2a6a <CheckSum_IP+0x2e>
    2a54:	68fb      	ldr	r3, [r7, #12]
    2a56:	3307      	adds	r3, #7
    2a58:	005b      	lsls	r3, r3, #1
    2a5a:	687a      	ldr	r2, [r7, #4]
    2a5c:	18d3      	adds	r3, r2, r3
    2a5e:	881b      	ldrh	r3, [r3, #0]
    2a60:	001a      	movs	r2, r3
    2a62:	68bb      	ldr	r3, [r7, #8]
    2a64:	189b      	adds	r3, r3, r2
    2a66:	60bb      	str	r3, [r7, #8]
    2a68:	e000      	b.n	2a6c <CheckSum_IP+0x30>
    2a6a:	46c0      	nop			; (mov r8, r8)
    2a6c:	68fb      	ldr	r3, [r7, #12]
    2a6e:	3301      	adds	r3, #1
    2a70:	60fb      	str	r3, [r7, #12]
    2a72:	68fb      	ldr	r3, [r7, #12]
    2a74:	2b09      	cmp	r3, #9
    2a76:	d9ea      	bls.n	2a4e <CheckSum_IP+0x12>
    2a78:	68bb      	ldr	r3, [r7, #8]
    2a7a:	0c1a      	lsrs	r2, r3, #16
    2a7c:	68bb      	ldr	r3, [r7, #8]
    2a7e:	041b      	lsls	r3, r3, #16
    2a80:	0c1b      	lsrs	r3, r3, #16
    2a82:	18d3      	adds	r3, r2, r3
    2a84:	60bb      	str	r3, [r7, #8]
    2a86:	68bb      	ldr	r3, [r7, #8]
    2a88:	b29b      	uxth	r3, r3
    2a8a:	43db      	mvns	r3, r3
    2a8c:	b29b      	uxth	r3, r3
    2a8e:	0018      	movs	r0, r3
    2a90:	46bd      	mov	sp, r7
    2a92:	b004      	add	sp, #16
    2a94:	bd80      	pop	{r7, pc}
    2a96:	46c0      	nop			; (mov r8, r8)

00002a98 <CheckSum_ICMP>:
    2a98:	b580      	push	{r7, lr}
    2a9a:	b084      	sub	sp, #16
    2a9c:	af00      	add	r7, sp, #0
    2a9e:	0002      	movs	r2, r0
    2aa0:	6039      	str	r1, [r7, #0]
    2aa2:	1dbb      	adds	r3, r7, #6
    2aa4:	801a      	strh	r2, [r3, #0]
    2aa6:	2300      	movs	r3, #0
    2aa8:	60bb      	str	r3, [r7, #8]
    2aaa:	2300      	movs	r3, #0
    2aac:	60fb      	str	r3, [r7, #12]
    2aae:	e011      	b.n	2ad4 <CheckSum_ICMP+0x3c>
    2ab0:	68fb      	ldr	r3, [r7, #12]
    2ab2:	2b01      	cmp	r3, #1
    2ab4:	d00a      	beq.n	2acc <CheckSum_ICMP+0x34>
    2ab6:	68fb      	ldr	r3, [r7, #12]
    2ab8:	3311      	adds	r3, #17
    2aba:	005b      	lsls	r3, r3, #1
    2abc:	683a      	ldr	r2, [r7, #0]
    2abe:	18d3      	adds	r3, r2, r3
    2ac0:	881b      	ldrh	r3, [r3, #0]
    2ac2:	001a      	movs	r2, r3
    2ac4:	68bb      	ldr	r3, [r7, #8]
    2ac6:	189b      	adds	r3, r3, r2
    2ac8:	60bb      	str	r3, [r7, #8]
    2aca:	e000      	b.n	2ace <CheckSum_ICMP+0x36>
    2acc:	46c0      	nop			; (mov r8, r8)
    2ace:	68fb      	ldr	r3, [r7, #12]
    2ad0:	3301      	adds	r3, #1
    2ad2:	60fb      	str	r3, [r7, #12]
    2ad4:	1dbb      	adds	r3, r7, #6
    2ad6:	881a      	ldrh	r2, [r3, #0]
    2ad8:	68fb      	ldr	r3, [r7, #12]
    2ada:	429a      	cmp	r2, r3
    2adc:	d8e8      	bhi.n	2ab0 <CheckSum_ICMP+0x18>
    2ade:	68bb      	ldr	r3, [r7, #8]
    2ae0:	0c1a      	lsrs	r2, r3, #16
    2ae2:	68bb      	ldr	r3, [r7, #8]
    2ae4:	041b      	lsls	r3, r3, #16
    2ae6:	0c1b      	lsrs	r3, r3, #16
    2ae8:	18d3      	adds	r3, r2, r3
    2aea:	60bb      	str	r3, [r7, #8]
    2aec:	68bb      	ldr	r3, [r7, #8]
    2aee:	b29b      	uxth	r3, r3
    2af0:	43db      	mvns	r3, r3
    2af2:	b29b      	uxth	r3, r3
    2af4:	0018      	movs	r0, r3
    2af6:	46bd      	mov	sp, r7
    2af8:	b004      	add	sp, #16
    2afa:	bd80      	pop	{r7, pc}

00002afc <Request_ICMP>:
    2afc:	b580      	push	{r7, lr}
    2afe:	b096      	sub	sp, #88	; 0x58
    2b00:	af00      	add	r7, sp, #0
    2b02:	4b73      	ldr	r3, [pc, #460]	; (2cd0 <Request_ICMP+0x1d4>)
    2b04:	881a      	ldrh	r2, [r3, #0]
    2b06:	1d3b      	adds	r3, r7, #4
    2b08:	801a      	strh	r2, [r3, #0]
    2b0a:	4b71      	ldr	r3, [pc, #452]	; (2cd0 <Request_ICMP+0x1d4>)
    2b0c:	885a      	ldrh	r2, [r3, #2]
    2b0e:	1d3b      	adds	r3, r7, #4
    2b10:	805a      	strh	r2, [r3, #2]
    2b12:	4b6f      	ldr	r3, [pc, #444]	; (2cd0 <Request_ICMP+0x1d4>)
    2b14:	889a      	ldrh	r2, [r3, #4]
    2b16:	1d3b      	adds	r3, r7, #4
    2b18:	809a      	strh	r2, [r3, #4]
    2b1a:	23c0      	movs	r3, #192	; 0xc0
    2b1c:	059b      	lsls	r3, r3, #22
    2b1e:	885b      	ldrh	r3, [r3, #2]
    2b20:	b29a      	uxth	r2, r3
    2b22:	1d3b      	adds	r3, r7, #4
    2b24:	80da      	strh	r2, [r3, #6]
    2b26:	23c0      	movs	r3, #192	; 0xc0
    2b28:	059b      	lsls	r3, r3, #22
    2b2a:	889b      	ldrh	r3, [r3, #4]
    2b2c:	b29a      	uxth	r2, r3
    2b2e:	1d3b      	adds	r3, r7, #4
    2b30:	811a      	strh	r2, [r3, #8]
    2b32:	23c0      	movs	r3, #192	; 0xc0
    2b34:	059b      	lsls	r3, r3, #22
    2b36:	88db      	ldrh	r3, [r3, #6]
    2b38:	b29a      	uxth	r2, r3
    2b3a:	1d3b      	adds	r3, r7, #4
    2b3c:	815a      	strh	r2, [r3, #10]
    2b3e:	1d3b      	adds	r3, r7, #4
    2b40:	2208      	movs	r2, #8
    2b42:	819a      	strh	r2, [r3, #12]
    2b44:	1d3b      	adds	r3, r7, #4
    2b46:	2245      	movs	r2, #69	; 0x45
    2b48:	81da      	strh	r2, [r3, #14]
    2b4a:	1d3b      	adds	r3, r7, #4
    2b4c:	22f0      	movs	r2, #240	; 0xf0
    2b4e:	0192      	lsls	r2, r2, #6
    2b50:	821a      	strh	r2, [r3, #16]
    2b52:	4b60      	ldr	r3, [pc, #384]	; (2cd4 <Request_ICMP+0x1d8>)
    2b54:	881a      	ldrh	r2, [r3, #0]
    2b56:	1d3b      	adds	r3, r7, #4
    2b58:	825a      	strh	r2, [r3, #18]
    2b5a:	1d3b      	adds	r3, r7, #4
    2b5c:	2200      	movs	r2, #0
    2b5e:	829a      	strh	r2, [r3, #20]
    2b60:	1d3b      	adds	r3, r7, #4
    2b62:	22c0      	movs	r2, #192	; 0xc0
    2b64:	0052      	lsls	r2, r2, #1
    2b66:	82da      	strh	r2, [r3, #22]
    2b68:	1d3b      	adds	r3, r7, #4
    2b6a:	2200      	movs	r2, #0
    2b6c:	831a      	strh	r2, [r3, #24]
    2b6e:	4b5a      	ldr	r3, [pc, #360]	; (2cd8 <Request_ICMP+0x1dc>)
    2b70:	881a      	ldrh	r2, [r3, #0]
    2b72:	1d3b      	adds	r3, r7, #4
    2b74:	835a      	strh	r2, [r3, #26]
    2b76:	4b58      	ldr	r3, [pc, #352]	; (2cd8 <Request_ICMP+0x1dc>)
    2b78:	885a      	ldrh	r2, [r3, #2]
    2b7a:	1d3b      	adds	r3, r7, #4
    2b7c:	839a      	strh	r2, [r3, #28]
    2b7e:	4b54      	ldr	r3, [pc, #336]	; (2cd0 <Request_ICMP+0x1d4>)
    2b80:	88da      	ldrh	r2, [r3, #6]
    2b82:	1d3b      	adds	r3, r7, #4
    2b84:	83da      	strh	r2, [r3, #30]
    2b86:	4b52      	ldr	r3, [pc, #328]	; (2cd0 <Request_ICMP+0x1d4>)
    2b88:	891a      	ldrh	r2, [r3, #8]
    2b8a:	1d3b      	adds	r3, r7, #4
    2b8c:	841a      	strh	r2, [r3, #32]
    2b8e:	1d3b      	adds	r3, r7, #4
    2b90:	0018      	movs	r0, r3
    2b92:	f7ff ff53 	bl	2a3c <CheckSum_IP>
    2b96:	0003      	movs	r3, r0
    2b98:	001a      	movs	r2, r3
    2b9a:	1d3b      	adds	r3, r7, #4
    2b9c:	831a      	strh	r2, [r3, #24]
    2b9e:	1d3b      	adds	r3, r7, #4
    2ba0:	2208      	movs	r2, #8
    2ba2:	845a      	strh	r2, [r3, #34]	; 0x22
    2ba4:	1d3b      	adds	r3, r7, #4
    2ba6:	2200      	movs	r2, #0
    2ba8:	849a      	strh	r2, [r3, #36]	; 0x24
    2baa:	1d3b      	adds	r3, r7, #4
    2bac:	2202      	movs	r2, #2
    2bae:	84da      	strh	r2, [r3, #38]	; 0x26
    2bb0:	4b4a      	ldr	r3, [pc, #296]	; (2cdc <Request_ICMP+0x1e0>)
    2bb2:	881a      	ldrh	r2, [r3, #0]
    2bb4:	1d3b      	adds	r3, r7, #4
    2bb6:	851a      	strh	r2, [r3, #40]	; 0x28
    2bb8:	2300      	movs	r3, #0
    2bba:	657b      	str	r3, [r7, #84]	; 0x54
    2bbc:	2300      	movs	r3, #0
    2bbe:	653b      	str	r3, [r7, #80]	; 0x50
    2bc0:	e021      	b.n	2c06 <Request_ICMP+0x10a>
    2bc2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2bc4:	b2db      	uxtb	r3, r3
    2bc6:	3361      	adds	r3, #97	; 0x61
    2bc8:	b2da      	uxtb	r2, r3
    2bca:	003b      	movs	r3, r7
    2bcc:	701a      	strb	r2, [r3, #0]
    2bce:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2bd0:	b2db      	uxtb	r3, r3
    2bd2:	3362      	adds	r3, #98	; 0x62
    2bd4:	b2da      	uxtb	r2, r3
    2bd6:	003b      	movs	r3, r7
    2bd8:	705a      	strb	r2, [r3, #1]
    2bda:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2bdc:	3315      	adds	r3, #21
    2bde:	001a      	movs	r2, r3
    2be0:	003b      	movs	r3, r7
    2be2:	785b      	ldrb	r3, [r3, #1]
    2be4:	021b      	lsls	r3, r3, #8
    2be6:	b219      	sxth	r1, r3
    2be8:	003b      	movs	r3, r7
    2bea:	781b      	ldrb	r3, [r3, #0]
    2bec:	b21b      	sxth	r3, r3
    2bee:	430b      	orrs	r3, r1
    2bf0:	b21b      	sxth	r3, r3
    2bf2:	b299      	uxth	r1, r3
    2bf4:	1d3b      	adds	r3, r7, #4
    2bf6:	0052      	lsls	r2, r2, #1
    2bf8:	52d1      	strh	r1, [r2, r3]
    2bfa:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2bfc:	3302      	adds	r3, #2
    2bfe:	657b      	str	r3, [r7, #84]	; 0x54
    2c00:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2c02:	3301      	adds	r3, #1
    2c04:	653b      	str	r3, [r7, #80]	; 0x50
    2c06:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2c08:	2b1f      	cmp	r3, #31
    2c0a:	d9da      	bls.n	2bc2 <Request_ICMP+0xc6>
    2c0c:	1d3b      	adds	r3, r7, #4
    2c0e:	0019      	movs	r1, r3
    2c10:	2014      	movs	r0, #20
    2c12:	f7ff ff41 	bl	2a98 <CheckSum_ICMP>
    2c16:	0003      	movs	r3, r0
    2c18:	001a      	movs	r2, r3
    2c1a:	1d3b      	adds	r3, r7, #4
    2c1c:	849a      	strh	r2, [r3, #36]	; 0x24
    2c1e:	1d3b      	adds	r3, r7, #4
    2c20:	214a      	movs	r1, #74	; 0x4a
    2c22:	0018      	movs	r0, r3
    2c24:	f7ff fca2 	bl	256c <SendPacket>
    2c28:	4b2a      	ldr	r3, [pc, #168]	; (2cd4 <Request_ICMP+0x1d8>)
    2c2a:	881b      	ldrh	r3, [r3, #0]
    2c2c:	0a1b      	lsrs	r3, r3, #8
    2c2e:	b29b      	uxth	r3, r3
    2c30:	b2da      	uxtb	r2, r3
    2c32:	003b      	movs	r3, r7
    2c34:	701a      	strb	r2, [r3, #0]
    2c36:	4b27      	ldr	r3, [pc, #156]	; (2cd4 <Request_ICMP+0x1d8>)
    2c38:	881b      	ldrh	r3, [r3, #0]
    2c3a:	b2da      	uxtb	r2, r3
    2c3c:	003b      	movs	r3, r7
    2c3e:	705a      	strb	r2, [r3, #1]
    2c40:	003b      	movs	r3, r7
    2c42:	781b      	ldrb	r3, [r3, #0]
    2c44:	3301      	adds	r3, #1
    2c46:	b2da      	uxtb	r2, r3
    2c48:	003b      	movs	r3, r7
    2c4a:	701a      	strb	r2, [r3, #0]
    2c4c:	003b      	movs	r3, r7
    2c4e:	781b      	ldrb	r3, [r3, #0]
    2c50:	2b00      	cmp	r3, #0
    2c52:	d105      	bne.n	2c60 <Request_ICMP+0x164>
    2c54:	003b      	movs	r3, r7
    2c56:	785b      	ldrb	r3, [r3, #1]
    2c58:	3301      	adds	r3, #1
    2c5a:	b2da      	uxtb	r2, r3
    2c5c:	003b      	movs	r3, r7
    2c5e:	705a      	strb	r2, [r3, #1]
    2c60:	003b      	movs	r3, r7
    2c62:	781b      	ldrb	r3, [r3, #0]
    2c64:	021b      	lsls	r3, r3, #8
    2c66:	b21a      	sxth	r2, r3
    2c68:	003b      	movs	r3, r7
    2c6a:	785b      	ldrb	r3, [r3, #1]
    2c6c:	b21b      	sxth	r3, r3
    2c6e:	4313      	orrs	r3, r2
    2c70:	b21b      	sxth	r3, r3
    2c72:	b29a      	uxth	r2, r3
    2c74:	4b17      	ldr	r3, [pc, #92]	; (2cd4 <Request_ICMP+0x1d8>)
    2c76:	801a      	strh	r2, [r3, #0]
    2c78:	4b18      	ldr	r3, [pc, #96]	; (2cdc <Request_ICMP+0x1e0>)
    2c7a:	881b      	ldrh	r3, [r3, #0]
    2c7c:	0a1b      	lsrs	r3, r3, #8
    2c7e:	b29b      	uxth	r3, r3
    2c80:	b2da      	uxtb	r2, r3
    2c82:	003b      	movs	r3, r7
    2c84:	701a      	strb	r2, [r3, #0]
    2c86:	4b15      	ldr	r3, [pc, #84]	; (2cdc <Request_ICMP+0x1e0>)
    2c88:	881b      	ldrh	r3, [r3, #0]
    2c8a:	b2da      	uxtb	r2, r3
    2c8c:	003b      	movs	r3, r7
    2c8e:	705a      	strb	r2, [r3, #1]
    2c90:	003b      	movs	r3, r7
    2c92:	781b      	ldrb	r3, [r3, #0]
    2c94:	3301      	adds	r3, #1
    2c96:	b2da      	uxtb	r2, r3
    2c98:	003b      	movs	r3, r7
    2c9a:	701a      	strb	r2, [r3, #0]
    2c9c:	003b      	movs	r3, r7
    2c9e:	781b      	ldrb	r3, [r3, #0]
    2ca0:	2b00      	cmp	r3, #0
    2ca2:	d105      	bne.n	2cb0 <Request_ICMP+0x1b4>
    2ca4:	003b      	movs	r3, r7
    2ca6:	785b      	ldrb	r3, [r3, #1]
    2ca8:	3301      	adds	r3, #1
    2caa:	b2da      	uxtb	r2, r3
    2cac:	003b      	movs	r3, r7
    2cae:	705a      	strb	r2, [r3, #1]
    2cb0:	003b      	movs	r3, r7
    2cb2:	781b      	ldrb	r3, [r3, #0]
    2cb4:	021b      	lsls	r3, r3, #8
    2cb6:	b21a      	sxth	r2, r3
    2cb8:	003b      	movs	r3, r7
    2cba:	785b      	ldrb	r3, [r3, #1]
    2cbc:	b21b      	sxth	r3, r3
    2cbe:	4313      	orrs	r3, r2
    2cc0:	b21b      	sxth	r3, r3
    2cc2:	b29a      	uxth	r2, r3
    2cc4:	4b05      	ldr	r3, [pc, #20]	; (2cdc <Request_ICMP+0x1e0>)
    2cc6:	801a      	strh	r2, [r3, #0]
    2cc8:	46c0      	nop			; (mov r8, r8)
    2cca:	46bd      	mov	sp, r7
    2ccc:	b016      	add	sp, #88	; 0x58
    2cce:	bd80      	pop	{r7, pc}
    2cd0:	20004d1c 	.word	0x20004d1c
    2cd4:	20004d30 	.word	0x20004d30
    2cd8:	20000010 	.word	0x20000010
    2cdc:	20004d32 	.word	0x20004d32

00002ce0 <Answear_ICMP>:
    2ce0:	b580      	push	{r7, lr}
    2ce2:	b082      	sub	sp, #8
    2ce4:	af00      	add	r7, sp, #0
    2ce6:	4b53      	ldr	r3, [pc, #332]	; (2e34 <Answear_ICMP+0x154>)
    2ce8:	4a53      	ldr	r2, [pc, #332]	; (2e38 <Answear_ICMP+0x158>)
    2cea:	5a9a      	ldrh	r2, [r3, r2]
    2cec:	1cbb      	adds	r3, r7, #2
    2cee:	3a26      	subs	r2, #38	; 0x26
    2cf0:	801a      	strh	r2, [r3, #0]
    2cf2:	1cbb      	adds	r3, r7, #2
    2cf4:	881b      	ldrh	r3, [r3, #0]
    2cf6:	2201      	movs	r2, #1
    2cf8:	4013      	ands	r3, r2
    2cfa:	d017      	beq.n	2d2c <Answear_ICMP+0x4c>
    2cfc:	1cbb      	adds	r3, r7, #2
    2cfe:	881b      	ldrh	r3, [r3, #0]
    2d00:	3301      	adds	r3, #1
    2d02:	105a      	asrs	r2, r3, #1
    2d04:	1cbb      	adds	r3, r7, #2
    2d06:	801a      	strh	r2, [r3, #0]
    2d08:	1cbb      	adds	r3, r7, #2
    2d0a:	881b      	ldrh	r3, [r3, #0]
    2d0c:	3310      	adds	r3, #16
    2d0e:	001a      	movs	r2, r3
    2d10:	1cbb      	adds	r3, r7, #2
    2d12:	881b      	ldrh	r3, [r3, #0]
    2d14:	3310      	adds	r3, #16
    2d16:	0019      	movs	r1, r3
    2d18:	4b46      	ldr	r3, [pc, #280]	; (2e34 <Answear_ICMP+0x154>)
    2d1a:	0049      	lsls	r1, r1, #1
    2d1c:	5acb      	ldrh	r3, [r1, r3]
    2d1e:	21ff      	movs	r1, #255	; 0xff
    2d20:	400b      	ands	r3, r1
    2d22:	b299      	uxth	r1, r3
    2d24:	4b43      	ldr	r3, [pc, #268]	; (2e34 <Answear_ICMP+0x154>)
    2d26:	0052      	lsls	r2, r2, #1
    2d28:	52d1      	strh	r1, [r2, r3]
    2d2a:	e004      	b.n	2d36 <Answear_ICMP+0x56>
    2d2c:	1cbb      	adds	r3, r7, #2
    2d2e:	1cba      	adds	r2, r7, #2
    2d30:	8812      	ldrh	r2, [r2, #0]
    2d32:	0852      	lsrs	r2, r2, #1
    2d34:	801a      	strh	r2, [r3, #0]
    2d36:	4b3f      	ldr	r3, [pc, #252]	; (2e34 <Answear_ICMP+0x154>)
    2d38:	88da      	ldrh	r2, [r3, #6]
    2d3a:	4b40      	ldr	r3, [pc, #256]	; (2e3c <Answear_ICMP+0x15c>)
    2d3c:	801a      	strh	r2, [r3, #0]
    2d3e:	4b3d      	ldr	r3, [pc, #244]	; (2e34 <Answear_ICMP+0x154>)
    2d40:	891a      	ldrh	r2, [r3, #8]
    2d42:	4b3e      	ldr	r3, [pc, #248]	; (2e3c <Answear_ICMP+0x15c>)
    2d44:	805a      	strh	r2, [r3, #2]
    2d46:	4b3b      	ldr	r3, [pc, #236]	; (2e34 <Answear_ICMP+0x154>)
    2d48:	895a      	ldrh	r2, [r3, #10]
    2d4a:	4b3c      	ldr	r3, [pc, #240]	; (2e3c <Answear_ICMP+0x15c>)
    2d4c:	809a      	strh	r2, [r3, #4]
    2d4e:	23c0      	movs	r3, #192	; 0xc0
    2d50:	059b      	lsls	r3, r3, #22
    2d52:	885b      	ldrh	r3, [r3, #2]
    2d54:	b29a      	uxth	r2, r3
    2d56:	4b39      	ldr	r3, [pc, #228]	; (2e3c <Answear_ICMP+0x15c>)
    2d58:	80da      	strh	r2, [r3, #6]
    2d5a:	23c0      	movs	r3, #192	; 0xc0
    2d5c:	059b      	lsls	r3, r3, #22
    2d5e:	889b      	ldrh	r3, [r3, #4]
    2d60:	b29a      	uxth	r2, r3
    2d62:	4b36      	ldr	r3, [pc, #216]	; (2e3c <Answear_ICMP+0x15c>)
    2d64:	811a      	strh	r2, [r3, #8]
    2d66:	23c0      	movs	r3, #192	; 0xc0
    2d68:	059b      	lsls	r3, r3, #22
    2d6a:	88db      	ldrh	r3, [r3, #6]
    2d6c:	b29a      	uxth	r2, r3
    2d6e:	4b33      	ldr	r3, [pc, #204]	; (2e3c <Answear_ICMP+0x15c>)
    2d70:	815a      	strh	r2, [r3, #10]
    2d72:	4b30      	ldr	r3, [pc, #192]	; (2e34 <Answear_ICMP+0x154>)
    2d74:	899a      	ldrh	r2, [r3, #12]
    2d76:	4b31      	ldr	r3, [pc, #196]	; (2e3c <Answear_ICMP+0x15c>)
    2d78:	819a      	strh	r2, [r3, #12]
    2d7a:	2307      	movs	r3, #7
    2d7c:	607b      	str	r3, [r7, #4]
    2d7e:	e00a      	b.n	2d96 <Answear_ICMP+0xb6>
    2d80:	4b2c      	ldr	r3, [pc, #176]	; (2e34 <Answear_ICMP+0x154>)
    2d82:	687a      	ldr	r2, [r7, #4]
    2d84:	0052      	lsls	r2, r2, #1
    2d86:	5ad1      	ldrh	r1, [r2, r3]
    2d88:	4b2c      	ldr	r3, [pc, #176]	; (2e3c <Answear_ICMP+0x15c>)
    2d8a:	687a      	ldr	r2, [r7, #4]
    2d8c:	0052      	lsls	r2, r2, #1
    2d8e:	52d1      	strh	r1, [r2, r3]
    2d90:	687b      	ldr	r3, [r7, #4]
    2d92:	3301      	adds	r3, #1
    2d94:	607b      	str	r3, [r7, #4]
    2d96:	687b      	ldr	r3, [r7, #4]
    2d98:	2b0b      	cmp	r3, #11
    2d9a:	d9f1      	bls.n	2d80 <Answear_ICMP+0xa0>
    2d9c:	4b25      	ldr	r3, [pc, #148]	; (2e34 <Answear_ICMP+0x154>)
    2d9e:	0018      	movs	r0, r3
    2da0:	f7ff fe4c 	bl	2a3c <CheckSum_IP>
    2da4:	0003      	movs	r3, r0
    2da6:	001a      	movs	r2, r3
    2da8:	4b24      	ldr	r3, [pc, #144]	; (2e3c <Answear_ICMP+0x15c>)
    2daa:	831a      	strh	r2, [r3, #24]
    2dac:	4b21      	ldr	r3, [pc, #132]	; (2e34 <Answear_ICMP+0x154>)
    2dae:	8bda      	ldrh	r2, [r3, #30]
    2db0:	4b22      	ldr	r3, [pc, #136]	; (2e3c <Answear_ICMP+0x15c>)
    2db2:	835a      	strh	r2, [r3, #26]
    2db4:	4b1f      	ldr	r3, [pc, #124]	; (2e34 <Answear_ICMP+0x154>)
    2db6:	8c1a      	ldrh	r2, [r3, #32]
    2db8:	4b20      	ldr	r3, [pc, #128]	; (2e3c <Answear_ICMP+0x15c>)
    2dba:	839a      	strh	r2, [r3, #28]
    2dbc:	4b1d      	ldr	r3, [pc, #116]	; (2e34 <Answear_ICMP+0x154>)
    2dbe:	8b5a      	ldrh	r2, [r3, #26]
    2dc0:	4b1e      	ldr	r3, [pc, #120]	; (2e3c <Answear_ICMP+0x15c>)
    2dc2:	83da      	strh	r2, [r3, #30]
    2dc4:	4b1b      	ldr	r3, [pc, #108]	; (2e34 <Answear_ICMP+0x154>)
    2dc6:	8b9a      	ldrh	r2, [r3, #28]
    2dc8:	4b1c      	ldr	r3, [pc, #112]	; (2e3c <Answear_ICMP+0x15c>)
    2dca:	841a      	strh	r2, [r3, #32]
    2dcc:	4b1b      	ldr	r3, [pc, #108]	; (2e3c <Answear_ICMP+0x15c>)
    2dce:	2200      	movs	r2, #0
    2dd0:	845a      	strh	r2, [r3, #34]	; 0x22
    2dd2:	4b18      	ldr	r3, [pc, #96]	; (2e34 <Answear_ICMP+0x154>)
    2dd4:	2200      	movs	r2, #0
    2dd6:	845a      	strh	r2, [r3, #34]	; 0x22
    2dd8:	4a16      	ldr	r2, [pc, #88]	; (2e34 <Answear_ICMP+0x154>)
    2dda:	1cbb      	adds	r3, r7, #2
    2ddc:	881b      	ldrh	r3, [r3, #0]
    2dde:	0011      	movs	r1, r2
    2de0:	0018      	movs	r0, r3
    2de2:	f7ff fe59 	bl	2a98 <CheckSum_ICMP>
    2de6:	0003      	movs	r3, r0
    2de8:	001a      	movs	r2, r3
    2dea:	4b14      	ldr	r3, [pc, #80]	; (2e3c <Answear_ICMP+0x15c>)
    2dec:	849a      	strh	r2, [r3, #36]	; 0x24
    2dee:	2313      	movs	r3, #19
    2df0:	607b      	str	r3, [r7, #4]
    2df2:	e00a      	b.n	2e0a <Answear_ICMP+0x12a>
    2df4:	4b0f      	ldr	r3, [pc, #60]	; (2e34 <Answear_ICMP+0x154>)
    2df6:	687a      	ldr	r2, [r7, #4]
    2df8:	0052      	lsls	r2, r2, #1
    2dfa:	5ad1      	ldrh	r1, [r2, r3]
    2dfc:	4b0f      	ldr	r3, [pc, #60]	; (2e3c <Answear_ICMP+0x15c>)
    2dfe:	687a      	ldr	r2, [r7, #4]
    2e00:	0052      	lsls	r2, r2, #1
    2e02:	52d1      	strh	r1, [r2, r3]
    2e04:	687b      	ldr	r3, [r7, #4]
    2e06:	3301      	adds	r3, #1
    2e08:	607b      	str	r3, [r7, #4]
    2e0a:	1cbb      	adds	r3, r7, #2
    2e0c:	881b      	ldrh	r3, [r3, #0]
    2e0e:	3311      	adds	r3, #17
    2e10:	001a      	movs	r2, r3
    2e12:	687b      	ldr	r3, [r7, #4]
    2e14:	429a      	cmp	r2, r3
    2e16:	d8ed      	bhi.n	2df4 <Answear_ICMP+0x114>
    2e18:	1cbb      	adds	r3, r7, #2
    2e1a:	881b      	ldrh	r3, [r3, #0]
    2e1c:	3311      	adds	r3, #17
    2e1e:	005a      	lsls	r2, r3, #1
    2e20:	4b06      	ldr	r3, [pc, #24]	; (2e3c <Answear_ICMP+0x15c>)
    2e22:	0011      	movs	r1, r2
    2e24:	0018      	movs	r0, r3
    2e26:	f7ff fba1 	bl	256c <SendPacket>
    2e2a:	46c0      	nop			; (mov r8, r8)
    2e2c:	46bd      	mov	sp, r7
    2e2e:	b002      	add	sp, #8
    2e30:	bd80      	pop	{r7, pc}
    2e32:	46c0      	nop			; (mov r8, r8)
    2e34:	20004d38 	.word	0x20004d38
    2e38:	000005dc 	.word	0x000005dc
    2e3c:	20005344 	.word	0x20005344

00002e40 <Send_UDP>:
    2e40:	b590      	push	{r4, r7, lr}
    2e42:	b089      	sub	sp, #36	; 0x24
    2e44:	af00      	add	r7, sp, #0
    2e46:	6078      	str	r0, [r7, #4]
    2e48:	6039      	str	r1, [r7, #0]
    2e4a:	4b86      	ldr	r3, [pc, #536]	; (3064 <Send_UDP+0x224>)
    2e4c:	881a      	ldrh	r2, [r3, #0]
    2e4e:	4b86      	ldr	r3, [pc, #536]	; (3068 <Send_UDP+0x228>)
    2e50:	801a      	strh	r2, [r3, #0]
    2e52:	4b84      	ldr	r3, [pc, #528]	; (3064 <Send_UDP+0x224>)
    2e54:	885a      	ldrh	r2, [r3, #2]
    2e56:	4b84      	ldr	r3, [pc, #528]	; (3068 <Send_UDP+0x228>)
    2e58:	805a      	strh	r2, [r3, #2]
    2e5a:	4b82      	ldr	r3, [pc, #520]	; (3064 <Send_UDP+0x224>)
    2e5c:	889a      	ldrh	r2, [r3, #4]
    2e5e:	4b82      	ldr	r3, [pc, #520]	; (3068 <Send_UDP+0x228>)
    2e60:	809a      	strh	r2, [r3, #4]
    2e62:	23c0      	movs	r3, #192	; 0xc0
    2e64:	059b      	lsls	r3, r3, #22
    2e66:	885b      	ldrh	r3, [r3, #2]
    2e68:	b29a      	uxth	r2, r3
    2e6a:	4b7f      	ldr	r3, [pc, #508]	; (3068 <Send_UDP+0x228>)
    2e6c:	80da      	strh	r2, [r3, #6]
    2e6e:	23c0      	movs	r3, #192	; 0xc0
    2e70:	059b      	lsls	r3, r3, #22
    2e72:	889b      	ldrh	r3, [r3, #4]
    2e74:	b29a      	uxth	r2, r3
    2e76:	4b7c      	ldr	r3, [pc, #496]	; (3068 <Send_UDP+0x228>)
    2e78:	811a      	strh	r2, [r3, #8]
    2e7a:	23c0      	movs	r3, #192	; 0xc0
    2e7c:	059b      	lsls	r3, r3, #22
    2e7e:	88db      	ldrh	r3, [r3, #6]
    2e80:	b29a      	uxth	r2, r3
    2e82:	4b79      	ldr	r3, [pc, #484]	; (3068 <Send_UDP+0x228>)
    2e84:	815a      	strh	r2, [r3, #10]
    2e86:	4b78      	ldr	r3, [pc, #480]	; (3068 <Send_UDP+0x228>)
    2e88:	2208      	movs	r2, #8
    2e8a:	819a      	strh	r2, [r3, #12]
    2e8c:	4b76      	ldr	r3, [pc, #472]	; (3068 <Send_UDP+0x228>)
    2e8e:	2245      	movs	r2, #69	; 0x45
    2e90:	81da      	strh	r2, [r3, #14]
    2e92:	4b75      	ldr	r3, [pc, #468]	; (3068 <Send_UDP+0x228>)
    2e94:	22f0      	movs	r2, #240	; 0xf0
    2e96:	0192      	lsls	r2, r2, #6
    2e98:	821a      	strh	r2, [r3, #16]
    2e9a:	4b74      	ldr	r3, [pc, #464]	; (306c <Send_UDP+0x22c>)
    2e9c:	881a      	ldrh	r2, [r3, #0]
    2e9e:	4b72      	ldr	r3, [pc, #456]	; (3068 <Send_UDP+0x228>)
    2ea0:	825a      	strh	r2, [r3, #18]
    2ea2:	4b71      	ldr	r3, [pc, #452]	; (3068 <Send_UDP+0x228>)
    2ea4:	2200      	movs	r2, #0
    2ea6:	829a      	strh	r2, [r3, #20]
    2ea8:	4b6f      	ldr	r3, [pc, #444]	; (3068 <Send_UDP+0x228>)
    2eaa:	228c      	movs	r2, #140	; 0x8c
    2eac:	0152      	lsls	r2, r2, #5
    2eae:	82da      	strh	r2, [r3, #22]
    2eb0:	4b6d      	ldr	r3, [pc, #436]	; (3068 <Send_UDP+0x228>)
    2eb2:	2200      	movs	r2, #0
    2eb4:	831a      	strh	r2, [r3, #24]
    2eb6:	4b6e      	ldr	r3, [pc, #440]	; (3070 <Send_UDP+0x230>)
    2eb8:	881a      	ldrh	r2, [r3, #0]
    2eba:	4b6b      	ldr	r3, [pc, #428]	; (3068 <Send_UDP+0x228>)
    2ebc:	835a      	strh	r2, [r3, #26]
    2ebe:	4b6c      	ldr	r3, [pc, #432]	; (3070 <Send_UDP+0x230>)
    2ec0:	885a      	ldrh	r2, [r3, #2]
    2ec2:	4b69      	ldr	r3, [pc, #420]	; (3068 <Send_UDP+0x228>)
    2ec4:	839a      	strh	r2, [r3, #28]
    2ec6:	4b67      	ldr	r3, [pc, #412]	; (3064 <Send_UDP+0x224>)
    2ec8:	88da      	ldrh	r2, [r3, #6]
    2eca:	4b67      	ldr	r3, [pc, #412]	; (3068 <Send_UDP+0x228>)
    2ecc:	83da      	strh	r2, [r3, #30]
    2ece:	4b65      	ldr	r3, [pc, #404]	; (3064 <Send_UDP+0x224>)
    2ed0:	891a      	ldrh	r2, [r3, #8]
    2ed2:	4b65      	ldr	r3, [pc, #404]	; (3068 <Send_UDP+0x228>)
    2ed4:	841a      	strh	r2, [r3, #32]
    2ed6:	2316      	movs	r3, #22
    2ed8:	18fb      	adds	r3, r7, r3
    2eda:	22fb      	movs	r2, #251	; 0xfb
    2edc:	0052      	lsls	r2, r2, #1
    2ede:	801a      	strh	r2, [r3, #0]
    2ee0:	2316      	movs	r3, #22
    2ee2:	18fb      	adds	r3, r7, r3
    2ee4:	2216      	movs	r2, #22
    2ee6:	18ba      	adds	r2, r7, r2
    2ee8:	8812      	ldrh	r2, [r2, #0]
    2eea:	ba52      	rev16	r2, r2
    2eec:	801a      	strh	r2, [r3, #0]
    2eee:	4b61      	ldr	r3, [pc, #388]	; (3074 <Send_UDP+0x234>)
    2ef0:	881a      	ldrh	r2, [r3, #0]
    2ef2:	2314      	movs	r3, #20
    2ef4:	18fb      	adds	r3, r7, r3
    2ef6:	ba52      	rev16	r2, r2
    2ef8:	801a      	strh	r2, [r3, #0]
    2efa:	4b5b      	ldr	r3, [pc, #364]	; (3068 <Send_UDP+0x228>)
    2efc:	2216      	movs	r2, #22
    2efe:	18ba      	adds	r2, r7, r2
    2f00:	8812      	ldrh	r2, [r2, #0]
    2f02:	845a      	strh	r2, [r3, #34]	; 0x22
    2f04:	4b58      	ldr	r3, [pc, #352]	; (3068 <Send_UDP+0x228>)
    2f06:	2214      	movs	r2, #20
    2f08:	18ba      	adds	r2, r7, r2
    2f0a:	8812      	ldrh	r2, [r2, #0]
    2f0c:	849a      	strh	r2, [r3, #36]	; 0x24
    2f0e:	4b56      	ldr	r3, [pc, #344]	; (3068 <Send_UDP+0x228>)
    2f10:	22c0      	movs	r2, #192	; 0xc0
    2f12:	0112      	lsls	r2, r2, #4
    2f14:	84da      	strh	r2, [r3, #38]	; 0x26
    2f16:	4b54      	ldr	r3, [pc, #336]	; (3068 <Send_UDP+0x228>)
    2f18:	2200      	movs	r2, #0
    2f1a:	851a      	strh	r2, [r3, #40]	; 0x28
    2f1c:	4b56      	ldr	r3, [pc, #344]	; (3078 <Send_UDP+0x238>)
    2f1e:	61bb      	str	r3, [r7, #24]
    2f20:	683a      	ldr	r2, [r7, #0]
    2f22:	23fe      	movs	r3, #254	; 0xfe
    2f24:	005b      	lsls	r3, r3, #1
    2f26:	429a      	cmp	r2, r3
    2f28:	dd02      	ble.n	2f30 <Send_UDP+0xf0>
    2f2a:	23fe      	movs	r3, #254	; 0xfe
    2f2c:	005b      	lsls	r3, r3, #1
    2f2e:	603b      	str	r3, [r7, #0]
    2f30:	2300      	movs	r3, #0
    2f32:	61fb      	str	r3, [r7, #28]
    2f34:	e00a      	b.n	2f4c <Send_UDP+0x10c>
    2f36:	69bb      	ldr	r3, [r7, #24]
    2f38:	1c5a      	adds	r2, r3, #1
    2f3a:	61ba      	str	r2, [r7, #24]
    2f3c:	687a      	ldr	r2, [r7, #4]
    2f3e:	1c51      	adds	r1, r2, #1
    2f40:	6079      	str	r1, [r7, #4]
    2f42:	7812      	ldrb	r2, [r2, #0]
    2f44:	701a      	strb	r2, [r3, #0]
    2f46:	69fb      	ldr	r3, [r7, #28]
    2f48:	3301      	adds	r3, #1
    2f4a:	61fb      	str	r3, [r7, #28]
    2f4c:	683b      	ldr	r3, [r7, #0]
    2f4e:	69fa      	ldr	r2, [r7, #28]
    2f50:	429a      	cmp	r2, r3
    2f52:	d3f0      	bcc.n	2f36 <Send_UDP+0xf6>
    2f54:	683b      	ldr	r3, [r7, #0]
    2f56:	b29a      	uxth	r2, r3
    2f58:	2312      	movs	r3, #18
    2f5a:	18fb      	adds	r3, r7, r3
    2f5c:	321c      	adds	r2, #28
    2f5e:	801a      	strh	r2, [r3, #0]
    2f60:	2312      	movs	r3, #18
    2f62:	18fb      	adds	r3, r7, r3
    2f64:	881b      	ldrh	r3, [r3, #0]
    2f66:	021b      	lsls	r3, r3, #8
    2f68:	b29a      	uxth	r2, r3
    2f6a:	2312      	movs	r3, #18
    2f6c:	18fb      	adds	r3, r7, r3
    2f6e:	881b      	ldrh	r3, [r3, #0]
    2f70:	0a1b      	lsrs	r3, r3, #8
    2f72:	b29b      	uxth	r3, r3
    2f74:	18d3      	adds	r3, r2, r3
    2f76:	b29a      	uxth	r2, r3
    2f78:	4b3b      	ldr	r3, [pc, #236]	; (3068 <Send_UDP+0x228>)
    2f7a:	821a      	strh	r2, [r3, #16]
    2f7c:	4b3a      	ldr	r3, [pc, #232]	; (3068 <Send_UDP+0x228>)
    2f7e:	0018      	movs	r0, r3
    2f80:	f7ff fd5c 	bl	2a3c <CheckSum_IP>
    2f84:	0003      	movs	r3, r0
    2f86:	001a      	movs	r2, r3
    2f88:	4b37      	ldr	r3, [pc, #220]	; (3068 <Send_UDP+0x228>)
    2f8a:	831a      	strh	r2, [r3, #24]
    2f8c:	683b      	ldr	r3, [r7, #0]
    2f8e:	b29a      	uxth	r2, r3
    2f90:	2310      	movs	r3, #16
    2f92:	18fb      	adds	r3, r7, r3
    2f94:	3208      	adds	r2, #8
    2f96:	801a      	strh	r2, [r3, #0]
    2f98:	2310      	movs	r3, #16
    2f9a:	18fb      	adds	r3, r7, r3
    2f9c:	881b      	ldrh	r3, [r3, #0]
    2f9e:	021b      	lsls	r3, r3, #8
    2fa0:	b29a      	uxth	r2, r3
    2fa2:	2310      	movs	r3, #16
    2fa4:	18fb      	adds	r3, r7, r3
    2fa6:	881b      	ldrh	r3, [r3, #0]
    2fa8:	0a1b      	lsrs	r3, r3, #8
    2faa:	b29b      	uxth	r3, r3
    2fac:	18d3      	adds	r3, r2, r3
    2fae:	b29a      	uxth	r2, r3
    2fb0:	4b2d      	ldr	r3, [pc, #180]	; (3068 <Send_UDP+0x228>)
    2fb2:	84da      	strh	r2, [r3, #38]	; 0x26
    2fb4:	683b      	ldr	r3, [r7, #0]
    2fb6:	b29b      	uxth	r3, r3
    2fb8:	3308      	adds	r3, #8
    2fba:	b29b      	uxth	r3, r3
    2fbc:	220e      	movs	r2, #14
    2fbe:	18bc      	adds	r4, r7, r2
    2fc0:	4a29      	ldr	r2, [pc, #164]	; (3068 <Send_UDP+0x228>)
    2fc2:	0011      	movs	r1, r2
    2fc4:	0018      	movs	r0, r3
    2fc6:	f7ff fc89 	bl	28dc <CheckSum_UDP>
    2fca:	0003      	movs	r3, r0
    2fcc:	8023      	strh	r3, [r4, #0]
    2fce:	230e      	movs	r3, #14
    2fd0:	18fb      	adds	r3, r7, r3
    2fd2:	881b      	ldrh	r3, [r3, #0]
    2fd4:	021b      	lsls	r3, r3, #8
    2fd6:	b29a      	uxth	r2, r3
    2fd8:	230e      	movs	r3, #14
    2fda:	18fb      	adds	r3, r7, r3
    2fdc:	881b      	ldrh	r3, [r3, #0]
    2fde:	0a1b      	lsrs	r3, r3, #8
    2fe0:	b29b      	uxth	r3, r3
    2fe2:	18d3      	adds	r3, r2, r3
    2fe4:	b29a      	uxth	r2, r3
    2fe6:	4b20      	ldr	r3, [pc, #128]	; (3068 <Send_UDP+0x228>)
    2fe8:	851a      	strh	r2, [r3, #40]	; 0x28
    2fea:	683b      	ldr	r3, [r7, #0]
    2fec:	332a      	adds	r3, #42	; 0x2a
    2fee:	001a      	movs	r2, r3
    2ff0:	4b1d      	ldr	r3, [pc, #116]	; (3068 <Send_UDP+0x228>)
    2ff2:	0011      	movs	r1, r2
    2ff4:	0018      	movs	r0, r3
    2ff6:	f7ff fab9 	bl	256c <SendPacket>
    2ffa:	4b1c      	ldr	r3, [pc, #112]	; (306c <Send_UDP+0x22c>)
    2ffc:	881b      	ldrh	r3, [r3, #0]
    2ffe:	0a1b      	lsrs	r3, r3, #8
    3000:	b29b      	uxth	r3, r3
    3002:	b2da      	uxtb	r2, r3
    3004:	230c      	movs	r3, #12
    3006:	18fb      	adds	r3, r7, r3
    3008:	701a      	strb	r2, [r3, #0]
    300a:	4b18      	ldr	r3, [pc, #96]	; (306c <Send_UDP+0x22c>)
    300c:	881b      	ldrh	r3, [r3, #0]
    300e:	b2da      	uxtb	r2, r3
    3010:	230c      	movs	r3, #12
    3012:	18fb      	adds	r3, r7, r3
    3014:	705a      	strb	r2, [r3, #1]
    3016:	230c      	movs	r3, #12
    3018:	18fb      	adds	r3, r7, r3
    301a:	781b      	ldrb	r3, [r3, #0]
    301c:	3301      	adds	r3, #1
    301e:	b2da      	uxtb	r2, r3
    3020:	230c      	movs	r3, #12
    3022:	18fb      	adds	r3, r7, r3
    3024:	701a      	strb	r2, [r3, #0]
    3026:	230c      	movs	r3, #12
    3028:	18fb      	adds	r3, r7, r3
    302a:	781b      	ldrb	r3, [r3, #0]
    302c:	2b00      	cmp	r3, #0
    302e:	d107      	bne.n	3040 <Send_UDP+0x200>
    3030:	230c      	movs	r3, #12
    3032:	18fb      	adds	r3, r7, r3
    3034:	785b      	ldrb	r3, [r3, #1]
    3036:	3301      	adds	r3, #1
    3038:	b2da      	uxtb	r2, r3
    303a:	230c      	movs	r3, #12
    303c:	18fb      	adds	r3, r7, r3
    303e:	705a      	strb	r2, [r3, #1]
    3040:	230c      	movs	r3, #12
    3042:	18fb      	adds	r3, r7, r3
    3044:	781b      	ldrb	r3, [r3, #0]
    3046:	021b      	lsls	r3, r3, #8
    3048:	b21a      	sxth	r2, r3
    304a:	230c      	movs	r3, #12
    304c:	18fb      	adds	r3, r7, r3
    304e:	785b      	ldrb	r3, [r3, #1]
    3050:	b21b      	sxth	r3, r3
    3052:	4313      	orrs	r3, r2
    3054:	b21b      	sxth	r3, r3
    3056:	b29a      	uxth	r2, r3
    3058:	4b04      	ldr	r3, [pc, #16]	; (306c <Send_UDP+0x22c>)
    305a:	801a      	strh	r2, [r3, #0]
    305c:	46c0      	nop			; (mov r8, r8)
    305e:	46bd      	mov	sp, r7
    3060:	b009      	add	sp, #36	; 0x24
    3062:	bd90      	pop	{r4, r7, pc}
    3064:	20004d1c 	.word	0x20004d1c
    3068:	20005584 	.word	0x20005584
    306c:	20004d30 	.word	0x20004d30
    3070:	20000010 	.word	0x20000010
    3074:	20005318 	.word	0x20005318
    3078:	200055ae 	.word	0x200055ae

0000307c <PacketParser>:
    307c:	b580      	push	{r7, lr}
    307e:	b082      	sub	sp, #8
    3080:	af00      	add	r7, sp, #0
    3082:	4b4a      	ldr	r3, [pc, #296]	; (31ac <PacketParser+0x130>)
    3084:	899b      	ldrh	r3, [r3, #12]
    3086:	2b08      	cmp	r3, #8
    3088:	d005      	beq.n	3096 <PacketParser+0x1a>
    308a:	22c1      	movs	r2, #193	; 0xc1
    308c:	00d2      	lsls	r2, r2, #3
    308e:	4293      	cmp	r3, r2
    3090:	d100      	bne.n	3094 <PacketParser+0x18>
    3092:	e06d      	b.n	3170 <PacketParser+0xf4>
    3094:	e086      	b.n	31a4 <PacketParser+0x128>
    3096:	4b45      	ldr	r3, [pc, #276]	; (31ac <PacketParser+0x130>)
    3098:	8b9a      	ldrh	r2, [r3, #28]
    309a:	4b45      	ldr	r3, [pc, #276]	; (31b0 <PacketParser+0x134>)
    309c:	811a      	strh	r2, [r3, #8]
    309e:	4b43      	ldr	r3, [pc, #268]	; (31ac <PacketParser+0x130>)
    30a0:	8bda      	ldrh	r2, [r3, #30]
    30a2:	4b43      	ldr	r3, [pc, #268]	; (31b0 <PacketParser+0x134>)
    30a4:	80da      	strh	r2, [r3, #6]
    30a6:	4b42      	ldr	r3, [pc, #264]	; (31b0 <PacketParser+0x134>)
    30a8:	895b      	ldrh	r3, [r3, #10]
    30aa:	2b00      	cmp	r3, #0
    30ac:	d100      	bne.n	30b0 <PacketParser+0x34>
    30ae:	e074      	b.n	319a <PacketParser+0x11e>
    30b0:	4b3e      	ldr	r3, [pc, #248]	; (31ac <PacketParser+0x130>)
    30b2:	8bda      	ldrh	r2, [r3, #30]
    30b4:	4b3f      	ldr	r3, [pc, #252]	; (31b4 <PacketParser+0x138>)
    30b6:	881b      	ldrh	r3, [r3, #0]
    30b8:	429a      	cmp	r2, r3
    30ba:	d000      	beq.n	30be <PacketParser+0x42>
    30bc:	e06f      	b.n	319e <PacketParser+0x122>
    30be:	4b3b      	ldr	r3, [pc, #236]	; (31ac <PacketParser+0x130>)
    30c0:	8c1a      	ldrh	r2, [r3, #32]
    30c2:	4b3c      	ldr	r3, [pc, #240]	; (31b4 <PacketParser+0x138>)
    30c4:	885b      	ldrh	r3, [r3, #2]
    30c6:	429a      	cmp	r2, r3
    30c8:	d000      	beq.n	30cc <PacketParser+0x50>
    30ca:	e068      	b.n	319e <PacketParser+0x122>
    30cc:	4b37      	ldr	r3, [pc, #220]	; (31ac <PacketParser+0x130>)
    30ce:	0018      	movs	r0, r3
    30d0:	f7ff fcb4 	bl	2a3c <CheckSum_IP>
    30d4:	0003      	movs	r3, r0
    30d6:	001a      	movs	r2, r3
    30d8:	4b34      	ldr	r3, [pc, #208]	; (31ac <PacketParser+0x130>)
    30da:	8b1b      	ldrh	r3, [r3, #24]
    30dc:	429a      	cmp	r2, r3
    30de:	d000      	beq.n	30e2 <PacketParser+0x66>
    30e0:	e05d      	b.n	319e <PacketParser+0x122>
    30e2:	4b32      	ldr	r3, [pc, #200]	; (31ac <PacketParser+0x130>)
    30e4:	8adb      	ldrh	r3, [r3, #22]
    30e6:	001a      	movs	r2, r3
    30e8:	23ff      	movs	r3, #255	; 0xff
    30ea:	021b      	lsls	r3, r3, #8
    30ec:	401a      	ands	r2, r3
    30ee:	2380      	movs	r3, #128	; 0x80
    30f0:	005b      	lsls	r3, r3, #1
    30f2:	429a      	cmp	r2, r3
    30f4:	d110      	bne.n	3118 <PacketParser+0x9c>
    30f6:	4b2d      	ldr	r3, [pc, #180]	; (31ac <PacketParser+0x130>)
    30f8:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    30fa:	2b00      	cmp	r3, #0
    30fc:	d105      	bne.n	310a <PacketParser+0x8e>
    30fe:	4b2e      	ldr	r3, [pc, #184]	; (31b8 <PacketParser+0x13c>)
    3100:	681b      	ldr	r3, [r3, #0]
    3102:	1c5a      	adds	r2, r3, #1
    3104:	4b2c      	ldr	r3, [pc, #176]	; (31b8 <PacketParser+0x13c>)
    3106:	601a      	str	r2, [r3, #0]
    3108:	e049      	b.n	319e <PacketParser+0x122>
    310a:	4b28      	ldr	r3, [pc, #160]	; (31ac <PacketParser+0x130>)
    310c:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    310e:	2b08      	cmp	r3, #8
    3110:	d145      	bne.n	319e <PacketParser+0x122>
    3112:	f7ff fde5 	bl	2ce0 <Answear_ICMP>
    3116:	e042      	b.n	319e <PacketParser+0x122>
    3118:	4b24      	ldr	r3, [pc, #144]	; (31ac <PacketParser+0x130>)
    311a:	8adb      	ldrh	r3, [r3, #22]
    311c:	001a      	movs	r2, r3
    311e:	23ff      	movs	r3, #255	; 0xff
    3120:	021b      	lsls	r3, r3, #8
    3122:	401a      	ands	r2, r3
    3124:	2388      	movs	r3, #136	; 0x88
    3126:	015b      	lsls	r3, r3, #5
    3128:	429a      	cmp	r2, r3
    312a:	d138      	bne.n	319e <PacketParser+0x122>
    312c:	4b1f      	ldr	r3, [pc, #124]	; (31ac <PacketParser+0x130>)
    312e:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    3130:	021b      	lsls	r3, r3, #8
    3132:	b29a      	uxth	r2, r3
    3134:	4b1d      	ldr	r3, [pc, #116]	; (31ac <PacketParser+0x130>)
    3136:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    3138:	0a1b      	lsrs	r3, r3, #8
    313a:	b29b      	uxth	r3, r3
    313c:	18d3      	adds	r3, r2, r3
    313e:	b29a      	uxth	r2, r3
    3140:	4b1e      	ldr	r3, [pc, #120]	; (31bc <PacketParser+0x140>)
    3142:	801a      	strh	r2, [r3, #0]
    3144:	4b19      	ldr	r3, [pc, #100]	; (31ac <PacketParser+0x130>)
    3146:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    3148:	021b      	lsls	r3, r3, #8
    314a:	b299      	uxth	r1, r3
    314c:	4b17      	ldr	r3, [pc, #92]	; (31ac <PacketParser+0x130>)
    314e:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    3150:	0a1b      	lsrs	r3, r3, #8
    3152:	b29a      	uxth	r2, r3
    3154:	1dbb      	adds	r3, r7, #6
    3156:	188a      	adds	r2, r1, r2
    3158:	801a      	strh	r2, [r3, #0]
    315a:	1dbb      	adds	r3, r7, #6
    315c:	881a      	ldrh	r2, [r3, #0]
    315e:	23fb      	movs	r3, #251	; 0xfb
    3160:	005b      	lsls	r3, r3, #1
    3162:	429a      	cmp	r2, r3
    3164:	d11b      	bne.n	319e <PacketParser+0x122>
    3166:	4b16      	ldr	r3, [pc, #88]	; (31c0 <PacketParser+0x144>)
    3168:	0018      	movs	r0, r3
    316a:	f000 ff21 	bl	3fb0 <mdb_proc_adu>
    316e:	e016      	b.n	319e <PacketParser+0x122>
    3170:	4b0e      	ldr	r3, [pc, #56]	; (31ac <PacketParser+0x130>)
    3172:	8a9a      	ldrh	r2, [r3, #20]
    3174:	2380      	movs	r3, #128	; 0x80
    3176:	005b      	lsls	r3, r3, #1
    3178:	429a      	cmp	r2, r3
    317a:	d112      	bne.n	31a2 <PacketParser+0x126>
    317c:	4b0b      	ldr	r3, [pc, #44]	; (31ac <PacketParser+0x130>)
    317e:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    3180:	4b0c      	ldr	r3, [pc, #48]	; (31b4 <PacketParser+0x138>)
    3182:	881b      	ldrh	r3, [r3, #0]
    3184:	429a      	cmp	r2, r3
    3186:	d10c      	bne.n	31a2 <PacketParser+0x126>
    3188:	4b08      	ldr	r3, [pc, #32]	; (31ac <PacketParser+0x130>)
    318a:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    318c:	4b09      	ldr	r3, [pc, #36]	; (31b4 <PacketParser+0x138>)
    318e:	885b      	ldrh	r3, [r3, #2]
    3190:	429a      	cmp	r2, r3
    3192:	d106      	bne.n	31a2 <PacketParser+0x126>
    3194:	f7ff fb2e 	bl	27f4 <Answear_ARP>
    3198:	e003      	b.n	31a2 <PacketParser+0x126>
    319a:	46c0      	nop			; (mov r8, r8)
    319c:	e002      	b.n	31a4 <PacketParser+0x128>
    319e:	46c0      	nop			; (mov r8, r8)
    31a0:	e000      	b.n	31a4 <PacketParser+0x128>
    31a2:	46c0      	nop			; (mov r8, r8)
    31a4:	46c0      	nop			; (mov r8, r8)
    31a6:	46bd      	mov	sp, r7
    31a8:	b002      	add	sp, #8
    31aa:	bd80      	pop	{r7, pc}
    31ac:	20004d38 	.word	0x20004d38
    31b0:	20004d1c 	.word	0x20004d1c
    31b4:	20000010 	.word	0x20000010
    31b8:	20004d34 	.word	0x20004d34
    31bc:	20005318 	.word	0x20005318
    31c0:	20004d62 	.word	0x20004d62

000031c4 <threadPacketParser>:
    31c4:	b580      	push	{r7, lr}
    31c6:	b086      	sub	sp, #24
    31c8:	af00      	add	r7, sp, #0
    31ca:	6078      	str	r0, [r7, #4]
    31cc:	4b31      	ldr	r3, [pc, #196]	; (3294 <threadPacketParser+0xd0>)
    31ce:	0018      	movs	r0, r3
    31d0:	f003 fb4c 	bl	686c <osMutexCreate>
    31d4:	0002      	movs	r2, r0
    31d6:	4b30      	ldr	r3, [pc, #192]	; (3298 <threadPacketParser+0xd4>)
    31d8:	601a      	str	r2, [r3, #0]
    31da:	4b30      	ldr	r3, [pc, #192]	; (329c <threadPacketParser+0xd8>)
    31dc:	0018      	movs	r0, r3
    31de:	f003 fb45 	bl	686c <osMutexCreate>
    31e2:	0002      	movs	r2, r0
    31e4:	4b2e      	ldr	r3, [pc, #184]	; (32a0 <threadPacketParser+0xdc>)
    31e6:	601a      	str	r2, [r3, #0]
    31e8:	230c      	movs	r3, #12
    31ea:	18f8      	adds	r0, r7, r3
    31ec:	23fa      	movs	r3, #250	; 0xfa
    31ee:	005b      	lsls	r3, r3, #1
    31f0:	001a      	movs	r2, r3
    31f2:	2100      	movs	r1, #0
    31f4:	f003 faac 	bl	6750 <osSignalWait>
    31f8:	230c      	movs	r3, #12
    31fa:	18fb      	adds	r3, r7, r3
    31fc:	681b      	ldr	r3, [r3, #0]
    31fe:	2b08      	cmp	r3, #8
    3200:	d120      	bne.n	3244 <threadPacketParser+0x80>
    3202:	230c      	movs	r3, #12
    3204:	18fb      	adds	r3, r7, r3
    3206:	685b      	ldr	r3, [r3, #4]
    3208:	2b01      	cmp	r3, #1
    320a:	d142      	bne.n	3292 <threadPacketParser+0xce>
    320c:	4b25      	ldr	r3, [pc, #148]	; (32a4 <threadPacketParser+0xe0>)
    320e:	4a25      	ldr	r2, [pc, #148]	; (32a4 <threadPacketParser+0xe0>)
    3210:	6812      	ldr	r2, [r2, #0]
    3212:	2180      	movs	r1, #128	; 0x80
    3214:	404a      	eors	r2, r1
    3216:	601a      	str	r2, [r3, #0]
    3218:	e00a      	b.n	3230 <threadPacketParser+0x6c>
    321a:	4b23      	ldr	r3, [pc, #140]	; (32a8 <threadPacketParser+0xe4>)
    321c:	0018      	movs	r0, r3
    321e:	f7ff f8af 	bl	2380 <ReadPacket>
    3222:	0003      	movs	r3, r0
    3224:	b299      	uxth	r1, r3
    3226:	4b20      	ldr	r3, [pc, #128]	; (32a8 <threadPacketParser+0xe4>)
    3228:	4a20      	ldr	r2, [pc, #128]	; (32ac <threadPacketParser+0xe8>)
    322a:	5299      	strh	r1, [r3, r2]
    322c:	f7ff ff26 	bl	307c <PacketParser>
    3230:	23c0      	movs	r3, #192	; 0xc0
    3232:	059b      	lsls	r3, r3, #22
    3234:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    3236:	b29b      	uxth	r3, r3
    3238:	001a      	movs	r2, r3
    323a:	23e0      	movs	r3, #224	; 0xe0
    323c:	4013      	ands	r3, r2
    323e:	d1ec      	bne.n	321a <threadPacketParser+0x56>
    3240:	46c0      	nop			; (mov r8, r8)
    3242:	e026      	b.n	3292 <threadPacketParser+0xce>
    3244:	230c      	movs	r3, #12
    3246:	18fb      	adds	r3, r7, r3
    3248:	681b      	ldr	r3, [r3, #0]
    324a:	2b40      	cmp	r3, #64	; 0x40
    324c:	d1cc      	bne.n	31e8 <threadPacketParser+0x24>
    324e:	23c0      	movs	r3, #192	; 0xc0
    3250:	059b      	lsls	r3, r3, #22
    3252:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3254:	b29b      	uxth	r3, r3
    3256:	001a      	movs	r2, r3
    3258:	2302      	movs	r3, #2
    325a:	4013      	ands	r3, r2
    325c:	d104      	bne.n	3268 <threadPacketParser+0xa4>
    325e:	4b14      	ldr	r3, [pc, #80]	; (32b0 <threadPacketParser+0xec>)
    3260:	2280      	movs	r2, #128	; 0x80
    3262:	0212      	lsls	r2, r2, #8
    3264:	621a      	str	r2, [r3, #32]
    3266:	e003      	b.n	3270 <threadPacketParser+0xac>
    3268:	4b11      	ldr	r3, [pc, #68]	; (32b0 <threadPacketParser+0xec>)
    326a:	2280      	movs	r2, #128	; 0x80
    326c:	0212      	lsls	r2, r2, #8
    326e:	625a      	str	r2, [r3, #36]	; 0x24
    3270:	23c0      	movs	r3, #192	; 0xc0
    3272:	059b      	lsls	r3, r3, #22
    3274:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3276:	b29b      	uxth	r3, r3
    3278:	001a      	movs	r2, r3
    327a:	2308      	movs	r3, #8
    327c:	4013      	ands	r3, r2
    327e:	d104      	bne.n	328a <threadPacketParser+0xc6>
    3280:	4b0b      	ldr	r3, [pc, #44]	; (32b0 <threadPacketParser+0xec>)
    3282:	2280      	movs	r2, #128	; 0x80
    3284:	01d2      	lsls	r2, r2, #7
    3286:	621a      	str	r2, [r3, #32]
    3288:	e7ae      	b.n	31e8 <threadPacketParser+0x24>
    328a:	4b09      	ldr	r3, [pc, #36]	; (32b0 <threadPacketParser+0xec>)
    328c:	2280      	movs	r2, #128	; 0x80
    328e:	01d2      	lsls	r2, r2, #7
    3290:	625a      	str	r2, [r3, #36]	; 0x24
    3292:	e7a9      	b.n	31e8 <threadPacketParser+0x24>
    3294:	00008b94 	.word	0x00008b94
    3298:	2000532c 	.word	0x2000532c
    329c:	00008b98 	.word	0x00008b98
    32a0:	20005340 	.word	0x20005340
    32a4:	400c0000 	.word	0x400c0000
    32a8:	20004d38 	.word	0x20004d38
    32ac:	000005dc 	.word	0x000005dc
    32b0:	400b0000 	.word	0x400b0000

000032b4 <crc32>:
    32b4:	b580      	push	{r7, lr}
    32b6:	b084      	sub	sp, #16
    32b8:	af00      	add	r7, sp, #0
    32ba:	6078      	str	r0, [r7, #4]
    32bc:	6039      	str	r1, [r7, #0]
    32be:	2301      	movs	r3, #1
    32c0:	425b      	negs	r3, r3
    32c2:	60bb      	str	r3, [r7, #8]
    32c4:	2300      	movs	r3, #0
    32c6:	60fb      	str	r3, [r7, #12]
    32c8:	e012      	b.n	32f0 <crc32+0x3c>
    32ca:	68bb      	ldr	r3, [r7, #8]
    32cc:	0a1a      	lsrs	r2, r3, #8
    32ce:	68fb      	ldr	r3, [r7, #12]
    32d0:	6879      	ldr	r1, [r7, #4]
    32d2:	18cb      	adds	r3, r1, r3
    32d4:	781b      	ldrb	r3, [r3, #0]
    32d6:	0019      	movs	r1, r3
    32d8:	68bb      	ldr	r3, [r7, #8]
    32da:	404b      	eors	r3, r1
    32dc:	21ff      	movs	r1, #255	; 0xff
    32de:	4019      	ands	r1, r3
    32e0:	4b08      	ldr	r3, [pc, #32]	; (3304 <crc32+0x50>)
    32e2:	0089      	lsls	r1, r1, #2
    32e4:	58cb      	ldr	r3, [r1, r3]
    32e6:	4053      	eors	r3, r2
    32e8:	60bb      	str	r3, [r7, #8]
    32ea:	68fb      	ldr	r3, [r7, #12]
    32ec:	3301      	adds	r3, #1
    32ee:	60fb      	str	r3, [r7, #12]
    32f0:	68fa      	ldr	r2, [r7, #12]
    32f2:	683b      	ldr	r3, [r7, #0]
    32f4:	429a      	cmp	r2, r3
    32f6:	d3e8      	bcc.n	32ca <crc32+0x16>
    32f8:	68bb      	ldr	r3, [r7, #8]
    32fa:	0018      	movs	r0, r3
    32fc:	46bd      	mov	sp, r7
    32fe:	b004      	add	sp, #16
    3300:	bd80      	pop	{r7, pc}
    3302:	46c0      	nop			; (mov r8, r8)
    3304:	00008b9c 	.word	0x00008b9c

00003308 <crc16>:
    3308:	b580      	push	{r7, lr}
    330a:	b086      	sub	sp, #24
    330c:	af00      	add	r7, sp, #0
    330e:	6078      	str	r0, [r7, #4]
    3310:	6039      	str	r1, [r7, #0]
    3312:	2317      	movs	r3, #23
    3314:	18fb      	adds	r3, r7, r3
    3316:	22ff      	movs	r2, #255	; 0xff
    3318:	701a      	strb	r2, [r3, #0]
    331a:	2316      	movs	r3, #22
    331c:	18fb      	adds	r3, r7, r3
    331e:	22ff      	movs	r2, #255	; 0xff
    3320:	701a      	strb	r2, [r3, #0]
    3322:	2300      	movs	r3, #0
    3324:	613b      	str	r3, [r7, #16]
    3326:	e01e      	b.n	3366 <crc16+0x5e>
    3328:	693b      	ldr	r3, [r7, #16]
    332a:	687a      	ldr	r2, [r7, #4]
    332c:	18d3      	adds	r3, r2, r3
    332e:	781a      	ldrb	r2, [r3, #0]
    3330:	2317      	movs	r3, #23
    3332:	18fb      	adds	r3, r7, r3
    3334:	781b      	ldrb	r3, [r3, #0]
    3336:	4053      	eors	r3, r2
    3338:	b2db      	uxtb	r3, r3
    333a:	60fb      	str	r3, [r7, #12]
    333c:	4a14      	ldr	r2, [pc, #80]	; (3390 <crc16+0x88>)
    333e:	68fb      	ldr	r3, [r7, #12]
    3340:	18d3      	adds	r3, r2, r3
    3342:	7819      	ldrb	r1, [r3, #0]
    3344:	2317      	movs	r3, #23
    3346:	18fb      	adds	r3, r7, r3
    3348:	2216      	movs	r2, #22
    334a:	18ba      	adds	r2, r7, r2
    334c:	7812      	ldrb	r2, [r2, #0]
    334e:	404a      	eors	r2, r1
    3350:	701a      	strb	r2, [r3, #0]
    3352:	2316      	movs	r3, #22
    3354:	18fb      	adds	r3, r7, r3
    3356:	490f      	ldr	r1, [pc, #60]	; (3394 <crc16+0x8c>)
    3358:	68fa      	ldr	r2, [r7, #12]
    335a:	188a      	adds	r2, r1, r2
    335c:	7812      	ldrb	r2, [r2, #0]
    335e:	701a      	strb	r2, [r3, #0]
    3360:	693b      	ldr	r3, [r7, #16]
    3362:	3301      	adds	r3, #1
    3364:	613b      	str	r3, [r7, #16]
    3366:	693a      	ldr	r2, [r7, #16]
    3368:	683b      	ldr	r3, [r7, #0]
    336a:	429a      	cmp	r2, r3
    336c:	dbdc      	blt.n	3328 <crc16+0x20>
    336e:	2316      	movs	r3, #22
    3370:	18fb      	adds	r3, r7, r3
    3372:	781b      	ldrb	r3, [r3, #0]
    3374:	021b      	lsls	r3, r3, #8
    3376:	b21a      	sxth	r2, r3
    3378:	2317      	movs	r3, #23
    337a:	18fb      	adds	r3, r7, r3
    337c:	781b      	ldrb	r3, [r3, #0]
    337e:	b21b      	sxth	r3, r3
    3380:	4313      	orrs	r3, r2
    3382:	b21b      	sxth	r3, r3
    3384:	b29b      	uxth	r3, r3
    3386:	0018      	movs	r0, r3
    3388:	46bd      	mov	sp, r7
    338a:	b006      	add	sp, #24
    338c:	bd80      	pop	{r7, pc}
    338e:	46c0      	nop			; (mov r8, r8)
    3390:	00008f9c 	.word	0x00008f9c
    3394:	0000909c 	.word	0x0000909c

00003398 <eeprom_on>:
    3398:	b580      	push	{r7, lr}
    339a:	af00      	add	r7, sp, #0
    339c:	b672      	cpsid	i
    339e:	4b04      	ldr	r3, [pc, #16]	; (33b0 <eeprom_on+0x18>)
    33a0:	4a03      	ldr	r2, [pc, #12]	; (33b0 <eeprom_on+0x18>)
    33a2:	69d2      	ldr	r2, [r2, #28]
    33a4:	2108      	movs	r1, #8
    33a6:	430a      	orrs	r2, r1
    33a8:	61da      	str	r2, [r3, #28]
    33aa:	46c0      	nop			; (mov r8, r8)
    33ac:	46bd      	mov	sp, r7
    33ae:	bd80      	pop	{r7, pc}
    33b0:	40020000 	.word	0x40020000

000033b4 <eeprom_off>:
    33b4:	b580      	push	{r7, lr}
    33b6:	af00      	add	r7, sp, #0
    33b8:	b662      	cpsie	i
    33ba:	4b04      	ldr	r3, [pc, #16]	; (33cc <eeprom_off+0x18>)
    33bc:	4a03      	ldr	r2, [pc, #12]	; (33cc <eeprom_off+0x18>)
    33be:	69d2      	ldr	r2, [r2, #28]
    33c0:	2108      	movs	r1, #8
    33c2:	438a      	bics	r2, r1
    33c4:	61da      	str	r2, [r3, #28]
    33c6:	46c0      	nop			; (mov r8, r8)
    33c8:	46bd      	mov	sp, r7
    33ca:	bd80      	pop	{r7, pc}
    33cc:	40020000 	.word	0x40020000

000033d0 <par_save>:
    33d0:	b580      	push	{r7, lr}
    33d2:	b086      	sub	sp, #24
    33d4:	af00      	add	r7, sp, #0
    33d6:	6078      	str	r0, [r7, #4]
    33d8:	f7ff ffde 	bl	3398 <eeprom_on>
    33dc:	f005 fb28 	bl	8a30 <__eeprom_erase_page_veneer>
    33e0:	1e03      	subs	r3, r0, #0
    33e2:	d01b      	beq.n	341c <par_save+0x4c>
    33e4:	687b      	ldr	r3, [r7, #4]
    33e6:	613b      	str	r3, [r7, #16]
    33e8:	2303      	movs	r3, #3
    33ea:	60bb      	str	r3, [r7, #8]
    33ec:	2300      	movs	r3, #0
    33ee:	60fb      	str	r3, [r7, #12]
    33f0:	2300      	movs	r3, #0
    33f2:	617b      	str	r3, [r7, #20]
    33f4:	e00e      	b.n	3414 <par_save+0x44>
    33f6:	693b      	ldr	r3, [r7, #16]
    33f8:	1d1a      	adds	r2, r3, #4
    33fa:	613a      	str	r2, [r7, #16]
    33fc:	681a      	ldr	r2, [r3, #0]
    33fe:	68fb      	ldr	r3, [r7, #12]
    3400:	0011      	movs	r1, r2
    3402:	0018      	movs	r0, r3
    3404:	f005 fb0c 	bl	8a20 <__eeprom_program_word_veneer>
    3408:	68fb      	ldr	r3, [r7, #12]
    340a:	3304      	adds	r3, #4
    340c:	60fb      	str	r3, [r7, #12]
    340e:	697b      	ldr	r3, [r7, #20]
    3410:	3301      	adds	r3, #1
    3412:	617b      	str	r3, [r7, #20]
    3414:	697a      	ldr	r2, [r7, #20]
    3416:	68bb      	ldr	r3, [r7, #8]
    3418:	429a      	cmp	r2, r3
    341a:	dbec      	blt.n	33f6 <par_save+0x26>
    341c:	f7ff ffca 	bl	33b4 <eeprom_off>
    3420:	46c0      	nop			; (mov r8, r8)
    3422:	46bd      	mov	sp, r7
    3424:	b006      	add	sp, #24
    3426:	bd80      	pop	{r7, pc}

00003428 <par_read>:
    3428:	b590      	push	{r4, r7, lr}
    342a:	b087      	sub	sp, #28
    342c:	af00      	add	r7, sp, #0
    342e:	6078      	str	r0, [r7, #4]
    3430:	f7ff ffb2 	bl	3398 <eeprom_on>
    3434:	687b      	ldr	r3, [r7, #4]
    3436:	613b      	str	r3, [r7, #16]
    3438:	2303      	movs	r3, #3
    343a:	60bb      	str	r3, [r7, #8]
    343c:	2300      	movs	r3, #0
    343e:	60fb      	str	r3, [r7, #12]
    3440:	2300      	movs	r3, #0
    3442:	617b      	str	r3, [r7, #20]
    3444:	e00e      	b.n	3464 <par_read+0x3c>
    3446:	693c      	ldr	r4, [r7, #16]
    3448:	1d23      	adds	r3, r4, #4
    344a:	613b      	str	r3, [r7, #16]
    344c:	68fb      	ldr	r3, [r7, #12]
    344e:	0018      	movs	r0, r3
    3450:	f005 faf6 	bl	8a40 <__eeprom_read_word_veneer>
    3454:	0003      	movs	r3, r0
    3456:	6023      	str	r3, [r4, #0]
    3458:	68fb      	ldr	r3, [r7, #12]
    345a:	3304      	adds	r3, #4
    345c:	60fb      	str	r3, [r7, #12]
    345e:	697b      	ldr	r3, [r7, #20]
    3460:	3301      	adds	r3, #1
    3462:	617b      	str	r3, [r7, #20]
    3464:	697a      	ldr	r2, [r7, #20]
    3466:	68bb      	ldr	r3, [r7, #8]
    3468:	429a      	cmp	r2, r3
    346a:	dbec      	blt.n	3446 <par_read+0x1e>
    346c:	f7ff ffa2 	bl	33b4 <eeprom_off>
    3470:	46c0      	nop			; (mov r8, r8)
    3472:	46bd      	mov	sp, r7
    3474:	b007      	add	sp, #28
    3476:	bd90      	pop	{r4, r7, pc}

00003478 <mdb_fifo_read>:
    3478:	b580      	push	{r7, lr}
    347a:	b086      	sub	sp, #24
    347c:	af00      	add	r7, sp, #0
    347e:	6078      	str	r0, [r7, #4]
    3480:	6039      	str	r1, [r7, #0]
    3482:	4b1f      	ldr	r3, [pc, #124]	; (3500 <mdb_fifo_read+0x88>)
    3484:	681a      	ldr	r2, [r3, #0]
    3486:	2301      	movs	r3, #1
    3488:	425b      	negs	r3, r3
    348a:	0019      	movs	r1, r3
    348c:	0010      	movs	r0, r2
    348e:	f003 fa13 	bl	68b8 <osMutexWait>
    3492:	4b1c      	ldr	r3, [pc, #112]	; (3504 <mdb_fifo_read+0x8c>)
    3494:	681a      	ldr	r2, [r3, #0]
    3496:	4b1c      	ldr	r3, [pc, #112]	; (3508 <mdb_fifo_read+0x90>)
    3498:	681b      	ldr	r3, [r3, #0]
    349a:	1ad3      	subs	r3, r2, r3
    349c:	05db      	lsls	r3, r3, #23
    349e:	0ddb      	lsrs	r3, r3, #23
    34a0:	613b      	str	r3, [r7, #16]
    34a2:	693b      	ldr	r3, [r7, #16]
    34a4:	2280      	movs	r2, #128	; 0x80
    34a6:	0092      	lsls	r2, r2, #2
    34a8:	1ad3      	subs	r3, r2, r3
    34aa:	60fb      	str	r3, [r7, #12]
    34ac:	683a      	ldr	r2, [r7, #0]
    34ae:	693b      	ldr	r3, [r7, #16]
    34b0:	429a      	cmp	r2, r3
    34b2:	d819      	bhi.n	34e8 <mdb_fifo_read+0x70>
    34b4:	2300      	movs	r3, #0
    34b6:	617b      	str	r3, [r7, #20]
    34b8:	e011      	b.n	34de <mdb_fifo_read+0x66>
    34ba:	687b      	ldr	r3, [r7, #4]
    34bc:	1c5a      	adds	r2, r3, #1
    34be:	607a      	str	r2, [r7, #4]
    34c0:	4a11      	ldr	r2, [pc, #68]	; (3508 <mdb_fifo_read+0x90>)
    34c2:	6812      	ldr	r2, [r2, #0]
    34c4:	4911      	ldr	r1, [pc, #68]	; (350c <mdb_fifo_read+0x94>)
    34c6:	5c8a      	ldrb	r2, [r1, r2]
    34c8:	701a      	strb	r2, [r3, #0]
    34ca:	4b0f      	ldr	r3, [pc, #60]	; (3508 <mdb_fifo_read+0x90>)
    34cc:	681b      	ldr	r3, [r3, #0]
    34ce:	3301      	adds	r3, #1
    34d0:	05db      	lsls	r3, r3, #23
    34d2:	0dda      	lsrs	r2, r3, #23
    34d4:	4b0c      	ldr	r3, [pc, #48]	; (3508 <mdb_fifo_read+0x90>)
    34d6:	601a      	str	r2, [r3, #0]
    34d8:	697b      	ldr	r3, [r7, #20]
    34da:	3301      	adds	r3, #1
    34dc:	617b      	str	r3, [r7, #20]
    34de:	697a      	ldr	r2, [r7, #20]
    34e0:	683b      	ldr	r3, [r7, #0]
    34e2:	429a      	cmp	r2, r3
    34e4:	dbe9      	blt.n	34ba <mdb_fifo_read+0x42>
    34e6:	e001      	b.n	34ec <mdb_fifo_read+0x74>
    34e8:	2300      	movs	r3, #0
    34ea:	603b      	str	r3, [r7, #0]
    34ec:	4b04      	ldr	r3, [pc, #16]	; (3500 <mdb_fifo_read+0x88>)
    34ee:	681b      	ldr	r3, [r3, #0]
    34f0:	0018      	movs	r0, r3
    34f2:	f003 f9f1 	bl	68d8 <osMutexRelease>
    34f6:	683b      	ldr	r3, [r7, #0]
    34f8:	0018      	movs	r0, r3
    34fa:	46bd      	mov	sp, r7
    34fc:	b006      	add	sp, #24
    34fe:	bd80      	pop	{r7, pc}
    3500:	20000888 	.word	0x20000888
    3504:	20005d60 	.word	0x20005d60
    3508:	20005d64 	.word	0x20005d64
    350c:	20005b60 	.word	0x20005b60

00003510 <mdb_fifo_write>:
    3510:	b580      	push	{r7, lr}
    3512:	b086      	sub	sp, #24
    3514:	af00      	add	r7, sp, #0
    3516:	6078      	str	r0, [r7, #4]
    3518:	6039      	str	r1, [r7, #0]
    351a:	4b1c      	ldr	r3, [pc, #112]	; (358c <mdb_fifo_write+0x7c>)
    351c:	681a      	ldr	r2, [r3, #0]
    351e:	2301      	movs	r3, #1
    3520:	425b      	negs	r3, r3
    3522:	0019      	movs	r1, r3
    3524:	0010      	movs	r0, r2
    3526:	f003 f9c7 	bl	68b8 <osMutexWait>
    352a:	4b19      	ldr	r3, [pc, #100]	; (3590 <mdb_fifo_write+0x80>)
    352c:	681a      	ldr	r2, [r3, #0]
    352e:	4b19      	ldr	r3, [pc, #100]	; (3594 <mdb_fifo_write+0x84>)
    3530:	681b      	ldr	r3, [r3, #0]
    3532:	1ad3      	subs	r3, r2, r3
    3534:	05db      	lsls	r3, r3, #23
    3536:	0ddb      	lsrs	r3, r3, #23
    3538:	613b      	str	r3, [r7, #16]
    353a:	693b      	ldr	r3, [r7, #16]
    353c:	2280      	movs	r2, #128	; 0x80
    353e:	0092      	lsls	r2, r2, #2
    3540:	1ad3      	subs	r3, r2, r3
    3542:	60fb      	str	r3, [r7, #12]
    3544:	2300      	movs	r3, #0
    3546:	617b      	str	r3, [r7, #20]
    3548:	e011      	b.n	356e <mdb_fifo_write+0x5e>
    354a:	4b11      	ldr	r3, [pc, #68]	; (3590 <mdb_fifo_write+0x80>)
    354c:	681a      	ldr	r2, [r3, #0]
    354e:	687b      	ldr	r3, [r7, #4]
    3550:	1c59      	adds	r1, r3, #1
    3552:	6079      	str	r1, [r7, #4]
    3554:	7819      	ldrb	r1, [r3, #0]
    3556:	4b10      	ldr	r3, [pc, #64]	; (3598 <mdb_fifo_write+0x88>)
    3558:	5499      	strb	r1, [r3, r2]
    355a:	4b0d      	ldr	r3, [pc, #52]	; (3590 <mdb_fifo_write+0x80>)
    355c:	681b      	ldr	r3, [r3, #0]
    355e:	3301      	adds	r3, #1
    3560:	05db      	lsls	r3, r3, #23
    3562:	0dda      	lsrs	r2, r3, #23
    3564:	4b0a      	ldr	r3, [pc, #40]	; (3590 <mdb_fifo_write+0x80>)
    3566:	601a      	str	r2, [r3, #0]
    3568:	697b      	ldr	r3, [r7, #20]
    356a:	3301      	adds	r3, #1
    356c:	617b      	str	r3, [r7, #20]
    356e:	697a      	ldr	r2, [r7, #20]
    3570:	683b      	ldr	r3, [r7, #0]
    3572:	429a      	cmp	r2, r3
    3574:	dbe9      	blt.n	354a <mdb_fifo_write+0x3a>
    3576:	4b05      	ldr	r3, [pc, #20]	; (358c <mdb_fifo_write+0x7c>)
    3578:	681b      	ldr	r3, [r3, #0]
    357a:	0018      	movs	r0, r3
    357c:	f003 f9ac 	bl	68d8 <osMutexRelease>
    3580:	683b      	ldr	r3, [r7, #0]
    3582:	0018      	movs	r0, r3
    3584:	46bd      	mov	sp, r7
    3586:	b006      	add	sp, #24
    3588:	bd80      	pop	{r7, pc}
    358a:	46c0      	nop			; (mov r8, r8)
    358c:	20000888 	.word	0x20000888
    3590:	20005d60 	.word	0x20005d60
    3594:	20005d64 	.word	0x20005d64
    3598:	20005b60 	.word	0x20005b60

0000359c <mdb_get_testparam>:
    359c:	b5b0      	push	{r4, r5, r7, lr}
    359e:	b086      	sub	sp, #24
    35a0:	af00      	add	r7, sp, #0
    35a2:	6078      	str	r0, [r7, #4]
    35a4:	4b84      	ldr	r3, [pc, #528]	; (37b8 <mdb_get_testparam+0x21c>)
    35a6:	885b      	ldrh	r3, [r3, #2]
    35a8:	041b      	lsls	r3, r3, #16
    35aa:	4a83      	ldr	r2, [pc, #524]	; (37b8 <mdb_get_testparam+0x21c>)
    35ac:	8892      	ldrh	r2, [r2, #4]
    35ae:	4313      	orrs	r3, r2
    35b0:	001a      	movs	r2, r3
    35b2:	687b      	ldr	r3, [r7, #4]
    35b4:	21ff      	movs	r1, #255	; 0xff
    35b6:	4011      	ands	r1, r2
    35b8:	000c      	movs	r4, r1
    35ba:	7819      	ldrb	r1, [r3, #0]
    35bc:	2000      	movs	r0, #0
    35be:	4001      	ands	r1, r0
    35c0:	1c08      	adds	r0, r1, #0
    35c2:	1c21      	adds	r1, r4, #0
    35c4:	4301      	orrs	r1, r0
    35c6:	7019      	strb	r1, [r3, #0]
    35c8:	0a11      	lsrs	r1, r2, #8
    35ca:	20ff      	movs	r0, #255	; 0xff
    35cc:	4001      	ands	r1, r0
    35ce:	000c      	movs	r4, r1
    35d0:	7859      	ldrb	r1, [r3, #1]
    35d2:	2000      	movs	r0, #0
    35d4:	4001      	ands	r1, r0
    35d6:	1c08      	adds	r0, r1, #0
    35d8:	1c21      	adds	r1, r4, #0
    35da:	4301      	orrs	r1, r0
    35dc:	7059      	strb	r1, [r3, #1]
    35de:	0c11      	lsrs	r1, r2, #16
    35e0:	20ff      	movs	r0, #255	; 0xff
    35e2:	4001      	ands	r1, r0
    35e4:	000c      	movs	r4, r1
    35e6:	7899      	ldrb	r1, [r3, #2]
    35e8:	2000      	movs	r0, #0
    35ea:	4001      	ands	r1, r0
    35ec:	1c08      	adds	r0, r1, #0
    35ee:	1c21      	adds	r1, r4, #0
    35f0:	4301      	orrs	r1, r0
    35f2:	7099      	strb	r1, [r3, #2]
    35f4:	0e10      	lsrs	r0, r2, #24
    35f6:	78da      	ldrb	r2, [r3, #3]
    35f8:	2100      	movs	r1, #0
    35fa:	400a      	ands	r2, r1
    35fc:	1c11      	adds	r1, r2, #0
    35fe:	1c02      	adds	r2, r0, #0
    3600:	430a      	orrs	r2, r1
    3602:	70da      	strb	r2, [r3, #3]
    3604:	4b6c      	ldr	r3, [pc, #432]	; (37b8 <mdb_get_testparam+0x21c>)
    3606:	88db      	ldrh	r3, [r3, #6]
    3608:	041b      	lsls	r3, r3, #16
    360a:	4a6b      	ldr	r2, [pc, #428]	; (37b8 <mdb_get_testparam+0x21c>)
    360c:	8912      	ldrh	r2, [r2, #8]
    360e:	4313      	orrs	r3, r2
    3610:	001a      	movs	r2, r3
    3612:	687b      	ldr	r3, [r7, #4]
    3614:	21ff      	movs	r1, #255	; 0xff
    3616:	4011      	ands	r1, r2
    3618:	000c      	movs	r4, r1
    361a:	7919      	ldrb	r1, [r3, #4]
    361c:	2000      	movs	r0, #0
    361e:	4001      	ands	r1, r0
    3620:	1c08      	adds	r0, r1, #0
    3622:	1c21      	adds	r1, r4, #0
    3624:	4301      	orrs	r1, r0
    3626:	7119      	strb	r1, [r3, #4]
    3628:	0a11      	lsrs	r1, r2, #8
    362a:	20ff      	movs	r0, #255	; 0xff
    362c:	4001      	ands	r1, r0
    362e:	000c      	movs	r4, r1
    3630:	7959      	ldrb	r1, [r3, #5]
    3632:	2000      	movs	r0, #0
    3634:	4001      	ands	r1, r0
    3636:	1c08      	adds	r0, r1, #0
    3638:	1c21      	adds	r1, r4, #0
    363a:	4301      	orrs	r1, r0
    363c:	7159      	strb	r1, [r3, #5]
    363e:	0c11      	lsrs	r1, r2, #16
    3640:	20ff      	movs	r0, #255	; 0xff
    3642:	4001      	ands	r1, r0
    3644:	000c      	movs	r4, r1
    3646:	7999      	ldrb	r1, [r3, #6]
    3648:	2000      	movs	r0, #0
    364a:	4001      	ands	r1, r0
    364c:	1c08      	adds	r0, r1, #0
    364e:	1c21      	adds	r1, r4, #0
    3650:	4301      	orrs	r1, r0
    3652:	7199      	strb	r1, [r3, #6]
    3654:	0e10      	lsrs	r0, r2, #24
    3656:	79da      	ldrb	r2, [r3, #7]
    3658:	2100      	movs	r1, #0
    365a:	400a      	ands	r2, r1
    365c:	1c11      	adds	r1, r2, #0
    365e:	1c02      	adds	r2, r0, #0
    3660:	430a      	orrs	r2, r1
    3662:	71da      	strb	r2, [r3, #7]
    3664:	4b54      	ldr	r3, [pc, #336]	; (37b8 <mdb_get_testparam+0x21c>)
    3666:	895b      	ldrh	r3, [r3, #10]
    3668:	041b      	lsls	r3, r3, #16
    366a:	4a53      	ldr	r2, [pc, #332]	; (37b8 <mdb_get_testparam+0x21c>)
    366c:	8992      	ldrh	r2, [r2, #12]
    366e:	4313      	orrs	r3, r2
    3670:	001a      	movs	r2, r3
    3672:	687b      	ldr	r3, [r7, #4]
    3674:	21ff      	movs	r1, #255	; 0xff
    3676:	4011      	ands	r1, r2
    3678:	000c      	movs	r4, r1
    367a:	7a19      	ldrb	r1, [r3, #8]
    367c:	2000      	movs	r0, #0
    367e:	4001      	ands	r1, r0
    3680:	1c08      	adds	r0, r1, #0
    3682:	1c21      	adds	r1, r4, #0
    3684:	4301      	orrs	r1, r0
    3686:	7219      	strb	r1, [r3, #8]
    3688:	0a11      	lsrs	r1, r2, #8
    368a:	20ff      	movs	r0, #255	; 0xff
    368c:	4001      	ands	r1, r0
    368e:	000c      	movs	r4, r1
    3690:	7a59      	ldrb	r1, [r3, #9]
    3692:	2000      	movs	r0, #0
    3694:	4001      	ands	r1, r0
    3696:	1c08      	adds	r0, r1, #0
    3698:	1c21      	adds	r1, r4, #0
    369a:	4301      	orrs	r1, r0
    369c:	7259      	strb	r1, [r3, #9]
    369e:	0c11      	lsrs	r1, r2, #16
    36a0:	20ff      	movs	r0, #255	; 0xff
    36a2:	4001      	ands	r1, r0
    36a4:	000c      	movs	r4, r1
    36a6:	7a99      	ldrb	r1, [r3, #10]
    36a8:	2000      	movs	r0, #0
    36aa:	4001      	ands	r1, r0
    36ac:	1c08      	adds	r0, r1, #0
    36ae:	1c21      	adds	r1, r4, #0
    36b0:	4301      	orrs	r1, r0
    36b2:	7299      	strb	r1, [r3, #10]
    36b4:	0e10      	lsrs	r0, r2, #24
    36b6:	7ada      	ldrb	r2, [r3, #11]
    36b8:	2100      	movs	r1, #0
    36ba:	400a      	ands	r2, r1
    36bc:	1c11      	adds	r1, r2, #0
    36be:	1c02      	adds	r2, r0, #0
    36c0:	430a      	orrs	r2, r1
    36c2:	72da      	strb	r2, [r3, #11]
    36c4:	4b3c      	ldr	r3, [pc, #240]	; (37b8 <mdb_get_testparam+0x21c>)
    36c6:	89db      	ldrh	r3, [r3, #14]
    36c8:	041b      	lsls	r3, r3, #16
    36ca:	4a3b      	ldr	r2, [pc, #236]	; (37b8 <mdb_get_testparam+0x21c>)
    36cc:	8a12      	ldrh	r2, [r2, #16]
    36ce:	4313      	orrs	r3, r2
    36d0:	001a      	movs	r2, r3
    36d2:	687b      	ldr	r3, [r7, #4]
    36d4:	21ff      	movs	r1, #255	; 0xff
    36d6:	4011      	ands	r1, r2
    36d8:	000c      	movs	r4, r1
    36da:	7b19      	ldrb	r1, [r3, #12]
    36dc:	2000      	movs	r0, #0
    36de:	4001      	ands	r1, r0
    36e0:	1c08      	adds	r0, r1, #0
    36e2:	1c21      	adds	r1, r4, #0
    36e4:	4301      	orrs	r1, r0
    36e6:	7319      	strb	r1, [r3, #12]
    36e8:	0a11      	lsrs	r1, r2, #8
    36ea:	20ff      	movs	r0, #255	; 0xff
    36ec:	4001      	ands	r1, r0
    36ee:	000c      	movs	r4, r1
    36f0:	7b59      	ldrb	r1, [r3, #13]
    36f2:	2000      	movs	r0, #0
    36f4:	4001      	ands	r1, r0
    36f6:	1c08      	adds	r0, r1, #0
    36f8:	1c21      	adds	r1, r4, #0
    36fa:	4301      	orrs	r1, r0
    36fc:	7359      	strb	r1, [r3, #13]
    36fe:	0c11      	lsrs	r1, r2, #16
    3700:	20ff      	movs	r0, #255	; 0xff
    3702:	4001      	ands	r1, r0
    3704:	000c      	movs	r4, r1
    3706:	7b99      	ldrb	r1, [r3, #14]
    3708:	2000      	movs	r0, #0
    370a:	4001      	ands	r1, r0
    370c:	1c08      	adds	r0, r1, #0
    370e:	1c21      	adds	r1, r4, #0
    3710:	4301      	orrs	r1, r0
    3712:	7399      	strb	r1, [r3, #14]
    3714:	0e10      	lsrs	r0, r2, #24
    3716:	7bda      	ldrb	r2, [r3, #15]
    3718:	2100      	movs	r1, #0
    371a:	400a      	ands	r2, r1
    371c:	1c11      	adds	r1, r2, #0
    371e:	1c02      	adds	r2, r0, #0
    3720:	430a      	orrs	r2, r1
    3722:	73da      	strb	r2, [r3, #15]
    3724:	4b25      	ldr	r3, [pc, #148]	; (37bc <mdb_get_testparam+0x220>)
    3726:	613b      	str	r3, [r7, #16]
    3728:	4b25      	ldr	r3, [pc, #148]	; (37c0 <mdb_get_testparam+0x224>)
    372a:	60fb      	str	r3, [r7, #12]
    372c:	2300      	movs	r3, #0
    372e:	617b      	str	r3, [r7, #20]
    3730:	e03a      	b.n	37a8 <mdb_get_testparam+0x20c>
    3732:	693b      	ldr	r3, [r7, #16]
    3734:	1c9a      	adds	r2, r3, #2
    3736:	613a      	str	r2, [r7, #16]
    3738:	8819      	ldrh	r1, [r3, #0]
    373a:	687a      	ldr	r2, [r7, #4]
    373c:	697b      	ldr	r3, [r7, #20]
    373e:	3308      	adds	r3, #8
    3740:	005b      	lsls	r3, r3, #1
    3742:	20ff      	movs	r0, #255	; 0xff
    3744:	4008      	ands	r0, r1
    3746:	0005      	movs	r5, r0
    3748:	5c98      	ldrb	r0, [r3, r2]
    374a:	2400      	movs	r4, #0
    374c:	4020      	ands	r0, r4
    374e:	1c04      	adds	r4, r0, #0
    3750:	1c28      	adds	r0, r5, #0
    3752:	4320      	orrs	r0, r4
    3754:	5498      	strb	r0, [r3, r2]
    3756:	0a09      	lsrs	r1, r1, #8
    3758:	b288      	uxth	r0, r1
    375a:	18d3      	adds	r3, r2, r3
    375c:	785a      	ldrb	r2, [r3, #1]
    375e:	2100      	movs	r1, #0
    3760:	400a      	ands	r2, r1
    3762:	1c11      	adds	r1, r2, #0
    3764:	1c02      	adds	r2, r0, #0
    3766:	430a      	orrs	r2, r1
    3768:	705a      	strb	r2, [r3, #1]
    376a:	68fb      	ldr	r3, [r7, #12]
    376c:	1c9a      	adds	r2, r3, #2
    376e:	60fa      	str	r2, [r7, #12]
    3770:	881a      	ldrh	r2, [r3, #0]
    3772:	6879      	ldr	r1, [r7, #4]
    3774:	697b      	ldr	r3, [r7, #20]
    3776:	330c      	adds	r3, #12
    3778:	005b      	lsls	r3, r3, #1
    377a:	18cb      	adds	r3, r1, r3
    377c:	21ff      	movs	r1, #255	; 0xff
    377e:	4011      	ands	r1, r2
    3780:	000c      	movs	r4, r1
    3782:	7899      	ldrb	r1, [r3, #2]
    3784:	2000      	movs	r0, #0
    3786:	4001      	ands	r1, r0
    3788:	1c08      	adds	r0, r1, #0
    378a:	1c21      	adds	r1, r4, #0
    378c:	4301      	orrs	r1, r0
    378e:	7099      	strb	r1, [r3, #2]
    3790:	0a12      	lsrs	r2, r2, #8
    3792:	b290      	uxth	r0, r2
    3794:	78da      	ldrb	r2, [r3, #3]
    3796:	2100      	movs	r1, #0
    3798:	400a      	ands	r2, r1
    379a:	1c11      	adds	r1, r2, #0
    379c:	1c02      	adds	r2, r0, #0
    379e:	430a      	orrs	r2, r1
    37a0:	70da      	strb	r2, [r3, #3]
    37a2:	697b      	ldr	r3, [r7, #20]
    37a4:	3301      	adds	r3, #1
    37a6:	617b      	str	r3, [r7, #20]
    37a8:	697b      	ldr	r3, [r7, #20]
    37aa:	2b04      	cmp	r3, #4
    37ac:	ddc1      	ble.n	3732 <mdb_get_testparam+0x196>
    37ae:	46c0      	nop			; (mov r8, r8)
    37b0:	46bd      	mov	sp, r7
    37b2:	b006      	add	sp, #24
    37b4:	bdb0      	pop	{r4, r5, r7, pc}
    37b6:	46c0      	nop			; (mov r8, r8)
    37b8:	20005d68 	.word	0x20005d68
    37bc:	20005d7a 	.word	0x20005d7a
    37c0:	20005d84 	.word	0x20005d84

000037c4 <mdb_get_holding_register>:
    37c4:	b580      	push	{r7, lr}
    37c6:	b084      	sub	sp, #16
    37c8:	af00      	add	r7, sp, #0
    37ca:	6078      	str	r0, [r7, #4]
    37cc:	687b      	ldr	r3, [r7, #4]
    37ce:	2b00      	cmp	r3, #0
    37d0:	db02      	blt.n	37d8 <mdb_get_holding_register+0x14>
    37d2:	687b      	ldr	r3, [r7, #4]
    37d4:	2b25      	cmp	r3, #37	; 0x25
    37d6:	dd01      	ble.n	37dc <mdb_get_holding_register+0x18>
    37d8:	2300      	movs	r3, #0
    37da:	e009      	b.n	37f0 <mdb_get_holding_register+0x2c>
    37dc:	230e      	movs	r3, #14
    37de:	18fb      	adds	r3, r7, r3
    37e0:	4a05      	ldr	r2, [pc, #20]	; (37f8 <mdb_get_holding_register+0x34>)
    37e2:	6879      	ldr	r1, [r7, #4]
    37e4:	0049      	lsls	r1, r1, #1
    37e6:	5a8a      	ldrh	r2, [r1, r2]
    37e8:	801a      	strh	r2, [r3, #0]
    37ea:	230e      	movs	r3, #14
    37ec:	18fb      	adds	r3, r7, r3
    37ee:	881b      	ldrh	r3, [r3, #0]
    37f0:	0018      	movs	r0, r3
    37f2:	46bd      	mov	sp, r7
    37f4:	b004      	add	sp, #16
    37f6:	bd80      	pop	{r7, pc}
    37f8:	20005d68 	.word	0x20005d68

000037fc <pdu_report_server_id>:
    37fc:	b580      	push	{r7, lr}
    37fe:	b086      	sub	sp, #24
    3800:	af00      	add	r7, sp, #0
    3802:	6078      	str	r0, [r7, #4]
    3804:	2311      	movs	r3, #17
    3806:	60fb      	str	r3, [r7, #12]
    3808:	4b1f      	ldr	r3, [pc, #124]	; (3888 <pdu_report_server_id+0x8c>)
    380a:	681a      	ldr	r2, [r3, #0]
    380c:	687b      	ldr	r3, [r7, #4]
    380e:	18d2      	adds	r2, r2, r3
    3810:	230b      	movs	r3, #11
    3812:	18fb      	adds	r3, r7, r3
    3814:	7812      	ldrb	r2, [r2, #0]
    3816:	701a      	strb	r2, [r3, #0]
    3818:	687b      	ldr	r3, [r7, #4]
    381a:	617b      	str	r3, [r7, #20]
    381c:	697b      	ldr	r3, [r7, #20]
    381e:	1c5a      	adds	r2, r3, #1
    3820:	617a      	str	r2, [r7, #20]
    3822:	4a1a      	ldr	r2, [pc, #104]	; (388c <pdu_report_server_id+0x90>)
    3824:	210b      	movs	r1, #11
    3826:	1879      	adds	r1, r7, r1
    3828:	7809      	ldrb	r1, [r1, #0]
    382a:	54d1      	strb	r1, [r2, r3]
    382c:	697b      	ldr	r3, [r7, #20]
    382e:	1c5a      	adds	r2, r3, #1
    3830:	617a      	str	r2, [r7, #20]
    3832:	68fa      	ldr	r2, [r7, #12]
    3834:	b2d2      	uxtb	r2, r2
    3836:	3202      	adds	r2, #2
    3838:	b2d1      	uxtb	r1, r2
    383a:	4a14      	ldr	r2, [pc, #80]	; (388c <pdu_report_server_id+0x90>)
    383c:	54d1      	strb	r1, [r2, r3]
    383e:	697b      	ldr	r3, [r7, #20]
    3840:	1c5a      	adds	r2, r3, #1
    3842:	617a      	str	r2, [r7, #20]
    3844:	4a11      	ldr	r2, [pc, #68]	; (388c <pdu_report_server_id+0x90>)
    3846:	2111      	movs	r1, #17
    3848:	54d1      	strb	r1, [r2, r3]
    384a:	697b      	ldr	r3, [r7, #20]
    384c:	1c5a      	adds	r2, r3, #1
    384e:	617a      	str	r2, [r7, #20]
    3850:	4a0e      	ldr	r2, [pc, #56]	; (388c <pdu_report_server_id+0x90>)
    3852:	21ff      	movs	r1, #255	; 0xff
    3854:	54d1      	strb	r1, [r2, r3]
    3856:	2300      	movs	r3, #0
    3858:	613b      	str	r3, [r7, #16]
    385a:	e00b      	b.n	3874 <pdu_report_server_id+0x78>
    385c:	697b      	ldr	r3, [r7, #20]
    385e:	1c5a      	adds	r2, r3, #1
    3860:	617a      	str	r2, [r7, #20]
    3862:	490b      	ldr	r1, [pc, #44]	; (3890 <pdu_report_server_id+0x94>)
    3864:	693a      	ldr	r2, [r7, #16]
    3866:	188a      	adds	r2, r1, r2
    3868:	7811      	ldrb	r1, [r2, #0]
    386a:	4a08      	ldr	r2, [pc, #32]	; (388c <pdu_report_server_id+0x90>)
    386c:	54d1      	strb	r1, [r2, r3]
    386e:	693b      	ldr	r3, [r7, #16]
    3870:	3301      	adds	r3, #1
    3872:	613b      	str	r3, [r7, #16]
    3874:	693a      	ldr	r2, [r7, #16]
    3876:	68fb      	ldr	r3, [r7, #12]
    3878:	429a      	cmp	r2, r3
    387a:	dbef      	blt.n	385c <pdu_report_server_id+0x60>
    387c:	697b      	ldr	r3, [r7, #20]
    387e:	0018      	movs	r0, r3
    3880:	46bd      	mov	sp, r7
    3882:	b006      	add	sp, #24
    3884:	bd80      	pop	{r7, pc}
    3886:	46c0      	nop			; (mov r8, r8)
    3888:	20005dc0 	.word	0x20005dc0
    388c:	20005dc4 	.word	0x20005dc4
    3890:	000091a8 	.word	0x000091a8

00003894 <pdu_read_input_registers>:
    3894:	b580      	push	{r7, lr}
    3896:	b086      	sub	sp, #24
    3898:	af00      	add	r7, sp, #0
    389a:	6078      	str	r0, [r7, #4]
    389c:	4b4e      	ldr	r3, [pc, #312]	; (39d8 <pdu_read_input_registers+0x144>)
    389e:	681a      	ldr	r2, [r3, #0]
    38a0:	687b      	ldr	r3, [r7, #4]
    38a2:	18d2      	adds	r2, r2, r3
    38a4:	230f      	movs	r3, #15
    38a6:	18fb      	adds	r3, r7, r3
    38a8:	7812      	ldrb	r2, [r2, #0]
    38aa:	701a      	strb	r2, [r3, #0]
    38ac:	4b4a      	ldr	r3, [pc, #296]	; (39d8 <pdu_read_input_registers+0x144>)
    38ae:	681a      	ldr	r2, [r3, #0]
    38b0:	687b      	ldr	r3, [r7, #4]
    38b2:	3301      	adds	r3, #1
    38b4:	18d3      	adds	r3, r2, r3
    38b6:	781b      	ldrb	r3, [r3, #0]
    38b8:	021b      	lsls	r3, r3, #8
    38ba:	b21a      	sxth	r2, r3
    38bc:	4b46      	ldr	r3, [pc, #280]	; (39d8 <pdu_read_input_registers+0x144>)
    38be:	6819      	ldr	r1, [r3, #0]
    38c0:	687b      	ldr	r3, [r7, #4]
    38c2:	3302      	adds	r3, #2
    38c4:	18cb      	adds	r3, r1, r3
    38c6:	781b      	ldrb	r3, [r3, #0]
    38c8:	b21b      	sxth	r3, r3
    38ca:	4313      	orrs	r3, r2
    38cc:	b21a      	sxth	r2, r3
    38ce:	230c      	movs	r3, #12
    38d0:	18fb      	adds	r3, r7, r3
    38d2:	801a      	strh	r2, [r3, #0]
    38d4:	4b40      	ldr	r3, [pc, #256]	; (39d8 <pdu_read_input_registers+0x144>)
    38d6:	681a      	ldr	r2, [r3, #0]
    38d8:	687b      	ldr	r3, [r7, #4]
    38da:	3303      	adds	r3, #3
    38dc:	18d3      	adds	r3, r2, r3
    38de:	781b      	ldrb	r3, [r3, #0]
    38e0:	021b      	lsls	r3, r3, #8
    38e2:	b21a      	sxth	r2, r3
    38e4:	4b3c      	ldr	r3, [pc, #240]	; (39d8 <pdu_read_input_registers+0x144>)
    38e6:	6819      	ldr	r1, [r3, #0]
    38e8:	687b      	ldr	r3, [r7, #4]
    38ea:	3304      	adds	r3, #4
    38ec:	18cb      	adds	r3, r1, r3
    38ee:	781b      	ldrb	r3, [r3, #0]
    38f0:	b21b      	sxth	r3, r3
    38f2:	4313      	orrs	r3, r2
    38f4:	b21a      	sxth	r2, r3
    38f6:	230a      	movs	r3, #10
    38f8:	18fb      	adds	r3, r7, r3
    38fa:	801a      	strh	r2, [r3, #0]
    38fc:	230c      	movs	r3, #12
    38fe:	18fb      	adds	r3, r7, r3
    3900:	881b      	ldrh	r3, [r3, #0]
    3902:	2bff      	cmp	r3, #255	; 0xff
    3904:	d90a      	bls.n	391c <pdu_read_input_registers+0x88>
    3906:	230c      	movs	r3, #12
    3908:	18fb      	adds	r3, r7, r3
    390a:	881a      	ldrh	r2, [r3, #0]
    390c:	230a      	movs	r3, #10
    390e:	18fb      	adds	r3, r7, r3
    3910:	881b      	ldrh	r3, [r3, #0]
    3912:	18d2      	adds	r2, r2, r3
    3914:	2304      	movs	r3, #4
    3916:	33ff      	adds	r3, #255	; 0xff
    3918:	429a      	cmp	r2, r3
    391a:	dd15      	ble.n	3948 <pdu_read_input_registers+0xb4>
    391c:	687b      	ldr	r3, [r7, #4]
    391e:	613b      	str	r3, [r7, #16]
    3920:	693b      	ldr	r3, [r7, #16]
    3922:	1c5a      	adds	r2, r3, #1
    3924:	613a      	str	r2, [r7, #16]
    3926:	220f      	movs	r2, #15
    3928:	18ba      	adds	r2, r7, r2
    392a:	7812      	ldrb	r2, [r2, #0]
    392c:	2180      	movs	r1, #128	; 0x80
    392e:	4249      	negs	r1, r1
    3930:	430a      	orrs	r2, r1
    3932:	b2d1      	uxtb	r1, r2
    3934:	4a29      	ldr	r2, [pc, #164]	; (39dc <pdu_read_input_registers+0x148>)
    3936:	54d1      	strb	r1, [r2, r3]
    3938:	693b      	ldr	r3, [r7, #16]
    393a:	1c5a      	adds	r2, r3, #1
    393c:	613a      	str	r2, [r7, #16]
    393e:	4a27      	ldr	r2, [pc, #156]	; (39dc <pdu_read_input_registers+0x148>)
    3940:	2102      	movs	r1, #2
    3942:	54d1      	strb	r1, [r2, r3]
    3944:	693b      	ldr	r3, [r7, #16]
    3946:	e042      	b.n	39ce <pdu_read_input_registers+0x13a>
    3948:	687b      	ldr	r3, [r7, #4]
    394a:	613b      	str	r3, [r7, #16]
    394c:	693b      	ldr	r3, [r7, #16]
    394e:	1c5a      	adds	r2, r3, #1
    3950:	613a      	str	r2, [r7, #16]
    3952:	4a22      	ldr	r2, [pc, #136]	; (39dc <pdu_read_input_registers+0x148>)
    3954:	210f      	movs	r1, #15
    3956:	1879      	adds	r1, r7, r1
    3958:	7809      	ldrb	r1, [r1, #0]
    395a:	54d1      	strb	r1, [r2, r3]
    395c:	693b      	ldr	r3, [r7, #16]
    395e:	1c5a      	adds	r2, r3, #1
    3960:	613a      	str	r2, [r7, #16]
    3962:	220a      	movs	r2, #10
    3964:	18ba      	adds	r2, r7, r2
    3966:	8812      	ldrh	r2, [r2, #0]
    3968:	b2d2      	uxtb	r2, r2
    396a:	1892      	adds	r2, r2, r2
    396c:	b2d1      	uxtb	r1, r2
    396e:	4a1b      	ldr	r2, [pc, #108]	; (39dc <pdu_read_input_registers+0x148>)
    3970:	54d1      	strb	r1, [r2, r3]
    3972:	2300      	movs	r3, #0
    3974:	617b      	str	r3, [r7, #20]
    3976:	e023      	b.n	39c0 <pdu_read_input_registers+0x12c>
    3978:	230c      	movs	r3, #12
    397a:	18fb      	adds	r3, r7, r3
    397c:	881b      	ldrh	r3, [r3, #0]
    397e:	1e5a      	subs	r2, r3, #1
    3980:	3aff      	subs	r2, #255	; 0xff
    3982:	697b      	ldr	r3, [r7, #20]
    3984:	18d1      	adds	r1, r2, r3
    3986:	2308      	movs	r3, #8
    3988:	18fb      	adds	r3, r7, r3
    398a:	4a15      	ldr	r2, [pc, #84]	; (39e0 <pdu_read_input_registers+0x14c>)
    398c:	0049      	lsls	r1, r1, #1
    398e:	5a8a      	ldrh	r2, [r1, r2]
    3990:	801a      	strh	r2, [r3, #0]
    3992:	693b      	ldr	r3, [r7, #16]
    3994:	1c5a      	adds	r2, r3, #1
    3996:	613a      	str	r2, [r7, #16]
    3998:	2208      	movs	r2, #8
    399a:	18ba      	adds	r2, r7, r2
    399c:	8812      	ldrh	r2, [r2, #0]
    399e:	0a12      	lsrs	r2, r2, #8
    39a0:	b292      	uxth	r2, r2
    39a2:	b2d1      	uxtb	r1, r2
    39a4:	4a0d      	ldr	r2, [pc, #52]	; (39dc <pdu_read_input_registers+0x148>)
    39a6:	54d1      	strb	r1, [r2, r3]
    39a8:	693b      	ldr	r3, [r7, #16]
    39aa:	1c5a      	adds	r2, r3, #1
    39ac:	613a      	str	r2, [r7, #16]
    39ae:	2208      	movs	r2, #8
    39b0:	18ba      	adds	r2, r7, r2
    39b2:	8812      	ldrh	r2, [r2, #0]
    39b4:	b2d1      	uxtb	r1, r2
    39b6:	4a09      	ldr	r2, [pc, #36]	; (39dc <pdu_read_input_registers+0x148>)
    39b8:	54d1      	strb	r1, [r2, r3]
    39ba:	697b      	ldr	r3, [r7, #20]
    39bc:	3301      	adds	r3, #1
    39be:	617b      	str	r3, [r7, #20]
    39c0:	230a      	movs	r3, #10
    39c2:	18fb      	adds	r3, r7, r3
    39c4:	881a      	ldrh	r2, [r3, #0]
    39c6:	697b      	ldr	r3, [r7, #20]
    39c8:	429a      	cmp	r2, r3
    39ca:	dcd5      	bgt.n	3978 <pdu_read_input_registers+0xe4>
    39cc:	693b      	ldr	r3, [r7, #16]
    39ce:	0018      	movs	r0, r3
    39d0:	46bd      	mov	sp, r7
    39d2:	b006      	add	sp, #24
    39d4:	bd80      	pop	{r7, pc}
    39d6:	46c0      	nop			; (mov r8, r8)
    39d8:	20005dc0 	.word	0x20005dc0
    39dc:	20005dc4 	.word	0x20005dc4
    39e0:	20005db4 	.word	0x20005db4

000039e4 <pdu_write_multiply_registers>:
    39e4:	b580      	push	{r7, lr}
    39e6:	b08a      	sub	sp, #40	; 0x28
    39e8:	af00      	add	r7, sp, #0
    39ea:	6078      	str	r0, [r7, #4]
    39ec:	4b64      	ldr	r3, [pc, #400]	; (3b80 <pdu_write_multiply_registers+0x19c>)
    39ee:	681a      	ldr	r2, [r3, #0]
    39f0:	687b      	ldr	r3, [r7, #4]
    39f2:	18d2      	adds	r2, r2, r3
    39f4:	231f      	movs	r3, #31
    39f6:	18fb      	adds	r3, r7, r3
    39f8:	7812      	ldrb	r2, [r2, #0]
    39fa:	701a      	strb	r2, [r3, #0]
    39fc:	4b60      	ldr	r3, [pc, #384]	; (3b80 <pdu_write_multiply_registers+0x19c>)
    39fe:	681a      	ldr	r2, [r3, #0]
    3a00:	687b      	ldr	r3, [r7, #4]
    3a02:	3301      	adds	r3, #1
    3a04:	18d3      	adds	r3, r2, r3
    3a06:	781b      	ldrb	r3, [r3, #0]
    3a08:	021b      	lsls	r3, r3, #8
    3a0a:	b21a      	sxth	r2, r3
    3a0c:	4b5c      	ldr	r3, [pc, #368]	; (3b80 <pdu_write_multiply_registers+0x19c>)
    3a0e:	6819      	ldr	r1, [r3, #0]
    3a10:	687b      	ldr	r3, [r7, #4]
    3a12:	3302      	adds	r3, #2
    3a14:	18cb      	adds	r3, r1, r3
    3a16:	781b      	ldrb	r3, [r3, #0]
    3a18:	b21b      	sxth	r3, r3
    3a1a:	4313      	orrs	r3, r2
    3a1c:	b21a      	sxth	r2, r3
    3a1e:	231c      	movs	r3, #28
    3a20:	18fb      	adds	r3, r7, r3
    3a22:	801a      	strh	r2, [r3, #0]
    3a24:	4b56      	ldr	r3, [pc, #344]	; (3b80 <pdu_write_multiply_registers+0x19c>)
    3a26:	681a      	ldr	r2, [r3, #0]
    3a28:	687b      	ldr	r3, [r7, #4]
    3a2a:	3303      	adds	r3, #3
    3a2c:	18d3      	adds	r3, r2, r3
    3a2e:	781b      	ldrb	r3, [r3, #0]
    3a30:	021b      	lsls	r3, r3, #8
    3a32:	b21a      	sxth	r2, r3
    3a34:	4b52      	ldr	r3, [pc, #328]	; (3b80 <pdu_write_multiply_registers+0x19c>)
    3a36:	6819      	ldr	r1, [r3, #0]
    3a38:	687b      	ldr	r3, [r7, #4]
    3a3a:	3304      	adds	r3, #4
    3a3c:	18cb      	adds	r3, r1, r3
    3a3e:	781b      	ldrb	r3, [r3, #0]
    3a40:	b21b      	sxth	r3, r3
    3a42:	4313      	orrs	r3, r2
    3a44:	b21a      	sxth	r2, r3
    3a46:	231a      	movs	r3, #26
    3a48:	18fb      	adds	r3, r7, r3
    3a4a:	801a      	strh	r2, [r3, #0]
    3a4c:	4b4c      	ldr	r3, [pc, #304]	; (3b80 <pdu_write_multiply_registers+0x19c>)
    3a4e:	681a      	ldr	r2, [r3, #0]
    3a50:	687b      	ldr	r3, [r7, #4]
    3a52:	3305      	adds	r3, #5
    3a54:	18d2      	adds	r2, r2, r3
    3a56:	2319      	movs	r3, #25
    3a58:	18fb      	adds	r3, r7, r3
    3a5a:	7812      	ldrb	r2, [r2, #0]
    3a5c:	701a      	strb	r2, [r3, #0]
    3a5e:	231c      	movs	r3, #28
    3a60:	18fb      	adds	r3, r7, r3
    3a62:	881a      	ldrh	r2, [r3, #0]
    3a64:	231a      	movs	r3, #26
    3a66:	18fb      	adds	r3, r7, r3
    3a68:	881b      	ldrh	r3, [r3, #0]
    3a6a:	18d3      	adds	r3, r2, r3
    3a6c:	2b26      	cmp	r3, #38	; 0x26
    3a6e:	dd14      	ble.n	3a9a <pdu_write_multiply_registers+0xb6>
    3a70:	687b      	ldr	r3, [r7, #4]
    3a72:	623b      	str	r3, [r7, #32]
    3a74:	6a3b      	ldr	r3, [r7, #32]
    3a76:	1c5a      	adds	r2, r3, #1
    3a78:	623a      	str	r2, [r7, #32]
    3a7a:	221f      	movs	r2, #31
    3a7c:	18ba      	adds	r2, r7, r2
    3a7e:	7812      	ldrb	r2, [r2, #0]
    3a80:	2180      	movs	r1, #128	; 0x80
    3a82:	4249      	negs	r1, r1
    3a84:	430a      	orrs	r2, r1
    3a86:	b2d1      	uxtb	r1, r2
    3a88:	4a3e      	ldr	r2, [pc, #248]	; (3b84 <pdu_write_multiply_registers+0x1a0>)
    3a8a:	54d1      	strb	r1, [r2, r3]
    3a8c:	6a3b      	ldr	r3, [r7, #32]
    3a8e:	1c5a      	adds	r2, r3, #1
    3a90:	623a      	str	r2, [r7, #32]
    3a92:	4a3c      	ldr	r2, [pc, #240]	; (3b84 <pdu_write_multiply_registers+0x1a0>)
    3a94:	2102      	movs	r1, #2
    3a96:	54d1      	strb	r1, [r2, r3]
    3a98:	e04b      	b.n	3b32 <pdu_write_multiply_registers+0x14e>
    3a9a:	687b      	ldr	r3, [r7, #4]
    3a9c:	3306      	adds	r3, #6
    3a9e:	623b      	str	r3, [r7, #32]
    3aa0:	2300      	movs	r3, #0
    3aa2:	627b      	str	r3, [r7, #36]	; 0x24
    3aa4:	e028      	b.n	3af8 <pdu_write_multiply_registers+0x114>
    3aa6:	4b36      	ldr	r3, [pc, #216]	; (3b80 <pdu_write_multiply_registers+0x19c>)
    3aa8:	681a      	ldr	r2, [r3, #0]
    3aaa:	6a3b      	ldr	r3, [r7, #32]
    3aac:	1c59      	adds	r1, r3, #1
    3aae:	6239      	str	r1, [r7, #32]
    3ab0:	18d3      	adds	r3, r2, r3
    3ab2:	781b      	ldrb	r3, [r3, #0]
    3ab4:	b29a      	uxth	r2, r3
    3ab6:	2316      	movs	r3, #22
    3ab8:	18fb      	adds	r3, r7, r3
    3aba:	0212      	lsls	r2, r2, #8
    3abc:	801a      	strh	r2, [r3, #0]
    3abe:	4b30      	ldr	r3, [pc, #192]	; (3b80 <pdu_write_multiply_registers+0x19c>)
    3ac0:	681a      	ldr	r2, [r3, #0]
    3ac2:	6a3b      	ldr	r3, [r7, #32]
    3ac4:	1c59      	adds	r1, r3, #1
    3ac6:	6239      	str	r1, [r7, #32]
    3ac8:	18d3      	adds	r3, r2, r3
    3aca:	781b      	ldrb	r3, [r3, #0]
    3acc:	b299      	uxth	r1, r3
    3ace:	2316      	movs	r3, #22
    3ad0:	18fb      	adds	r3, r7, r3
    3ad2:	2216      	movs	r2, #22
    3ad4:	18ba      	adds	r2, r7, r2
    3ad6:	8812      	ldrh	r2, [r2, #0]
    3ad8:	430a      	orrs	r2, r1
    3ada:	801a      	strh	r2, [r3, #0]
    3adc:	231c      	movs	r3, #28
    3ade:	18fb      	adds	r3, r7, r3
    3ae0:	881a      	ldrh	r2, [r3, #0]
    3ae2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3ae4:	18d2      	adds	r2, r2, r3
    3ae6:	4b28      	ldr	r3, [pc, #160]	; (3b88 <pdu_write_multiply_registers+0x1a4>)
    3ae8:	0052      	lsls	r2, r2, #1
    3aea:	2116      	movs	r1, #22
    3aec:	1879      	adds	r1, r7, r1
    3aee:	8809      	ldrh	r1, [r1, #0]
    3af0:	52d1      	strh	r1, [r2, r3]
    3af2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3af4:	3301      	adds	r3, #1
    3af6:	627b      	str	r3, [r7, #36]	; 0x24
    3af8:	231a      	movs	r3, #26
    3afa:	18fb      	adds	r3, r7, r3
    3afc:	881a      	ldrh	r2, [r3, #0]
    3afe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3b00:	429a      	cmp	r2, r3
    3b02:	dcd0      	bgt.n	3aa6 <pdu_write_multiply_registers+0xc2>
    3b04:	687b      	ldr	r3, [r7, #4]
    3b06:	623b      	str	r3, [r7, #32]
    3b08:	687b      	ldr	r3, [r7, #4]
    3b0a:	627b      	str	r3, [r7, #36]	; 0x24
    3b0c:	e00c      	b.n	3b28 <pdu_write_multiply_registers+0x144>
    3b0e:	6a3b      	ldr	r3, [r7, #32]
    3b10:	1c5a      	adds	r2, r3, #1
    3b12:	623a      	str	r2, [r7, #32]
    3b14:	4a1a      	ldr	r2, [pc, #104]	; (3b80 <pdu_write_multiply_registers+0x19c>)
    3b16:	6811      	ldr	r1, [r2, #0]
    3b18:	6a7a      	ldr	r2, [r7, #36]	; 0x24
    3b1a:	188a      	adds	r2, r1, r2
    3b1c:	7811      	ldrb	r1, [r2, #0]
    3b1e:	4a19      	ldr	r2, [pc, #100]	; (3b84 <pdu_write_multiply_registers+0x1a0>)
    3b20:	54d1      	strb	r1, [r2, r3]
    3b22:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3b24:	3301      	adds	r3, #1
    3b26:	627b      	str	r3, [r7, #36]	; 0x24
    3b28:	687b      	ldr	r3, [r7, #4]
    3b2a:	1d5a      	adds	r2, r3, #5
    3b2c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3b2e:	429a      	cmp	r2, r3
    3b30:	dced      	bgt.n	3b0e <pdu_write_multiply_registers+0x12a>
    3b32:	231c      	movs	r3, #28
    3b34:	18fb      	adds	r3, r7, r3
    3b36:	881b      	ldrh	r3, [r3, #0]
    3b38:	2b00      	cmp	r3, #0
    3b3a:	d107      	bne.n	3b4c <pdu_write_multiply_registers+0x168>
    3b3c:	4b13      	ldr	r3, [pc, #76]	; (3b8c <pdu_write_multiply_registers+0x1a8>)
    3b3e:	6818      	ldr	r0, [r3, #0]
    3b40:	4b11      	ldr	r3, [pc, #68]	; (3b88 <pdu_write_multiply_registers+0x1a4>)
    3b42:	881b      	ldrh	r3, [r3, #0]
    3b44:	2200      	movs	r2, #0
    3b46:	0019      	movs	r1, r3
    3b48:	f003 f99e 	bl	6e88 <osMessagePut>
    3b4c:	231c      	movs	r3, #28
    3b4e:	18fb      	adds	r3, r7, r3
    3b50:	881b      	ldrh	r3, [r3, #0]
    3b52:	2b20      	cmp	r3, #32
    3b54:	d10f      	bne.n	3b76 <pdu_write_multiply_registers+0x192>
    3b56:	4b0e      	ldr	r3, [pc, #56]	; (3b90 <pdu_write_multiply_registers+0x1ac>)
    3b58:	210c      	movs	r1, #12
    3b5a:	0018      	movs	r0, r3
    3b5c:	f7ff fbd4 	bl	3308 <crc16>
    3b60:	1e03      	subs	r3, r0, #0
    3b62:	d108      	bne.n	3b76 <pdu_write_multiply_registers+0x192>
    3b64:	4b0a      	ldr	r3, [pc, #40]	; (3b90 <pdu_write_multiply_registers+0x1ac>)
    3b66:	0018      	movs	r0, r3
    3b68:	f7ff fc32 	bl	33d0 <par_save>
    3b6c:	2308      	movs	r3, #8
    3b6e:	18fb      	adds	r3, r7, r3
    3b70:	0018      	movs	r0, r3
    3b72:	f7ff fc59 	bl	3428 <par_read>
    3b76:	6a3b      	ldr	r3, [r7, #32]
    3b78:	0018      	movs	r0, r3
    3b7a:	46bd      	mov	sp, r7
    3b7c:	b00a      	add	sp, #40	; 0x28
    3b7e:	bd80      	pop	{r7, pc}
    3b80:	20005dc0 	.word	0x20005dc0
    3b84:	20005dc4 	.word	0x20005dc4
    3b88:	20005d68 	.word	0x20005d68
    3b8c:	20000864 	.word	0x20000864
    3b90:	20005da8 	.word	0x20005da8

00003b94 <u16tobe>:
    3b94:	b580      	push	{r7, lr}
    3b96:	b082      	sub	sp, #8
    3b98:	af00      	add	r7, sp, #0
    3b9a:	0002      	movs	r2, r0
    3b9c:	6039      	str	r1, [r7, #0]
    3b9e:	1dbb      	adds	r3, r7, #6
    3ba0:	801a      	strh	r2, [r3, #0]
    3ba2:	683b      	ldr	r3, [r7, #0]
    3ba4:	1c5a      	adds	r2, r3, #1
    3ba6:	603a      	str	r2, [r7, #0]
    3ba8:	1dba      	adds	r2, r7, #6
    3baa:	8812      	ldrh	r2, [r2, #0]
    3bac:	0a12      	lsrs	r2, r2, #8
    3bae:	b292      	uxth	r2, r2
    3bb0:	b2d2      	uxtb	r2, r2
    3bb2:	701a      	strb	r2, [r3, #0]
    3bb4:	683b      	ldr	r3, [r7, #0]
    3bb6:	1c5a      	adds	r2, r3, #1
    3bb8:	603a      	str	r2, [r7, #0]
    3bba:	1dba      	adds	r2, r7, #6
    3bbc:	8812      	ldrh	r2, [r2, #0]
    3bbe:	b2d2      	uxtb	r2, r2
    3bc0:	701a      	strb	r2, [r3, #0]
    3bc2:	46c0      	nop			; (mov r8, r8)
    3bc4:	46bd      	mov	sp, r7
    3bc6:	b002      	add	sp, #8
    3bc8:	bd80      	pop	{r7, pc}
    3bca:	46c0      	nop			; (mov r8, r8)

00003bcc <u32tobe>:
    3bcc:	b580      	push	{r7, lr}
    3bce:	b082      	sub	sp, #8
    3bd0:	af00      	add	r7, sp, #0
    3bd2:	6078      	str	r0, [r7, #4]
    3bd4:	6039      	str	r1, [r7, #0]
    3bd6:	683b      	ldr	r3, [r7, #0]
    3bd8:	1c5a      	adds	r2, r3, #1
    3bda:	603a      	str	r2, [r7, #0]
    3bdc:	687a      	ldr	r2, [r7, #4]
    3bde:	0e12      	lsrs	r2, r2, #24
    3be0:	b2d2      	uxtb	r2, r2
    3be2:	701a      	strb	r2, [r3, #0]
    3be4:	683b      	ldr	r3, [r7, #0]
    3be6:	1c5a      	adds	r2, r3, #1
    3be8:	603a      	str	r2, [r7, #0]
    3bea:	687a      	ldr	r2, [r7, #4]
    3bec:	0c12      	lsrs	r2, r2, #16
    3bee:	b2d2      	uxtb	r2, r2
    3bf0:	701a      	strb	r2, [r3, #0]
    3bf2:	683b      	ldr	r3, [r7, #0]
    3bf4:	1c5a      	adds	r2, r3, #1
    3bf6:	603a      	str	r2, [r7, #0]
    3bf8:	687a      	ldr	r2, [r7, #4]
    3bfa:	0a12      	lsrs	r2, r2, #8
    3bfc:	b2d2      	uxtb	r2, r2
    3bfe:	701a      	strb	r2, [r3, #0]
    3c00:	683b      	ldr	r3, [r7, #0]
    3c02:	1c5a      	adds	r2, r3, #1
    3c04:	603a      	str	r2, [r7, #0]
    3c06:	687a      	ldr	r2, [r7, #4]
    3c08:	b2d2      	uxtb	r2, r2
    3c0a:	701a      	strb	r2, [r3, #0]
    3c0c:	46c0      	nop			; (mov r8, r8)
    3c0e:	46bd      	mov	sp, r7
    3c10:	b002      	add	sp, #8
    3c12:	bd80      	pop	{r7, pc}

00003c14 <pdu_read_fifo_queue>:
    3c14:	b580      	push	{r7, lr}
    3c16:	b090      	sub	sp, #64	; 0x40
    3c18:	af00      	add	r7, sp, #0
    3c1a:	6078      	str	r0, [r7, #4]
    3c1c:	2336      	movs	r3, #54	; 0x36
    3c1e:	18fb      	adds	r3, r7, r3
    3c20:	2203      	movs	r2, #3
    3c22:	801a      	strh	r2, [r3, #0]
    3c24:	4b7c      	ldr	r3, [pc, #496]	; (3e18 <pdu_read_fifo_queue+0x204>)
    3c26:	681a      	ldr	r2, [r3, #0]
    3c28:	687b      	ldr	r3, [r7, #4]
    3c2a:	18d2      	adds	r2, r2, r3
    3c2c:	2335      	movs	r3, #53	; 0x35
    3c2e:	18fb      	adds	r3, r7, r3
    3c30:	7812      	ldrb	r2, [r2, #0]
    3c32:	701a      	strb	r2, [r3, #0]
    3c34:	4b78      	ldr	r3, [pc, #480]	; (3e18 <pdu_read_fifo_queue+0x204>)
    3c36:	681a      	ldr	r2, [r3, #0]
    3c38:	687b      	ldr	r3, [r7, #4]
    3c3a:	3301      	adds	r3, #1
    3c3c:	18d3      	adds	r3, r2, r3
    3c3e:	781b      	ldrb	r3, [r3, #0]
    3c40:	021b      	lsls	r3, r3, #8
    3c42:	b21a      	sxth	r2, r3
    3c44:	4b74      	ldr	r3, [pc, #464]	; (3e18 <pdu_read_fifo_queue+0x204>)
    3c46:	6819      	ldr	r1, [r3, #0]
    3c48:	687b      	ldr	r3, [r7, #4]
    3c4a:	3302      	adds	r3, #2
    3c4c:	18cb      	adds	r3, r1, r3
    3c4e:	781b      	ldrb	r3, [r3, #0]
    3c50:	b21b      	sxth	r3, r3
    3c52:	4313      	orrs	r3, r2
    3c54:	b21a      	sxth	r2, r3
    3c56:	2332      	movs	r3, #50	; 0x32
    3c58:	18fb      	adds	r3, r7, r3
    3c5a:	801a      	strh	r2, [r3, #0]
    3c5c:	2332      	movs	r3, #50	; 0x32
    3c5e:	18fb      	adds	r3, r7, r3
    3c60:	881a      	ldrh	r2, [r3, #0]
    3c62:	2380      	movs	r3, #128	; 0x80
    3c64:	009b      	lsls	r3, r3, #2
    3c66:	429a      	cmp	r2, r3
    3c68:	d014      	beq.n	3c94 <pdu_read_fifo_queue+0x80>
    3c6a:	687b      	ldr	r3, [r7, #4]
    3c6c:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c6e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c70:	1c5a      	adds	r2, r3, #1
    3c72:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c74:	2235      	movs	r2, #53	; 0x35
    3c76:	18ba      	adds	r2, r7, r2
    3c78:	7812      	ldrb	r2, [r2, #0]
    3c7a:	2180      	movs	r1, #128	; 0x80
    3c7c:	4249      	negs	r1, r1
    3c7e:	430a      	orrs	r2, r1
    3c80:	b2d1      	uxtb	r1, r2
    3c82:	4a66      	ldr	r2, [pc, #408]	; (3e1c <pdu_read_fifo_queue+0x208>)
    3c84:	54d1      	strb	r1, [r2, r3]
    3c86:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c88:	1c5a      	adds	r2, r3, #1
    3c8a:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c8c:	4a63      	ldr	r2, [pc, #396]	; (3e1c <pdu_read_fifo_queue+0x208>)
    3c8e:	2102      	movs	r1, #2
    3c90:	54d1      	strb	r1, [r2, r3]
    3c92:	e0bb      	b.n	3e0c <pdu_read_fifo_queue+0x1f8>
    3c94:	687b      	ldr	r3, [r7, #4]
    3c96:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c98:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c9a:	1c5a      	adds	r2, r3, #1
    3c9c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c9e:	4a5f      	ldr	r2, [pc, #380]	; (3e1c <pdu_read_fifo_queue+0x208>)
    3ca0:	2135      	movs	r1, #53	; 0x35
    3ca2:	1879      	adds	r1, r7, r1
    3ca4:	7809      	ldrb	r1, [r1, #0]
    3ca6:	54d1      	strb	r1, [r2, r3]
    3ca8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3caa:	1c5a      	adds	r2, r3, #1
    3cac:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cae:	4a5b      	ldr	r2, [pc, #364]	; (3e1c <pdu_read_fifo_queue+0x208>)
    3cb0:	2100      	movs	r1, #0
    3cb2:	54d1      	strb	r1, [r2, r3]
    3cb4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cb6:	1c5a      	adds	r2, r3, #1
    3cb8:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cba:	4a58      	ldr	r2, [pc, #352]	; (3e1c <pdu_read_fifo_queue+0x208>)
    3cbc:	2100      	movs	r1, #0
    3cbe:	54d1      	strb	r1, [r2, r3]
    3cc0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cc2:	1c5a      	adds	r2, r3, #1
    3cc4:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cc6:	4a55      	ldr	r2, [pc, #340]	; (3e1c <pdu_read_fifo_queue+0x208>)
    3cc8:	2100      	movs	r1, #0
    3cca:	54d1      	strb	r1, [r2, r3]
    3ccc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cce:	1c5a      	adds	r2, r3, #1
    3cd0:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cd2:	4a52      	ldr	r2, [pc, #328]	; (3e1c <pdu_read_fifo_queue+0x208>)
    3cd4:	2100      	movs	r1, #0
    3cd6:	54d1      	strb	r1, [r2, r3]
    3cd8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cda:	62fb      	str	r3, [r7, #44]	; 0x2c
    3cdc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3cde:	4b4f      	ldr	r3, [pc, #316]	; (3e1c <pdu_read_fifo_queue+0x208>)
    3ce0:	18d3      	adds	r3, r2, r3
    3ce2:	63bb      	str	r3, [r7, #56]	; 0x38
    3ce4:	e06e      	b.n	3dc4 <pdu_read_fifo_queue+0x1b0>
    3ce6:	2300      	movs	r3, #0
    3ce8:	62bb      	str	r3, [r7, #40]	; 0x28
    3cea:	2308      	movs	r3, #8
    3cec:	18fb      	adds	r3, r7, r3
    3cee:	2120      	movs	r1, #32
    3cf0:	0018      	movs	r0, r3
    3cf2:	f7ff fbc1 	bl	3478 <mdb_fifo_read>
    3cf6:	0003      	movs	r3, r0
    3cf8:	62bb      	str	r3, [r7, #40]	; 0x28
    3cfa:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3cfc:	2b00      	cmp	r3, #0
    3cfe:	d069      	beq.n	3dd4 <pdu_read_fifo_queue+0x1c0>
    3d00:	2308      	movs	r3, #8
    3d02:	18fb      	adds	r3, r7, r3
    3d04:	681b      	ldr	r3, [r3, #0]
    3d06:	001a      	movs	r2, r3
    3d08:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d0a:	0019      	movs	r1, r3
    3d0c:	0010      	movs	r0, r2
    3d0e:	f7ff ff5d 	bl	3bcc <u32tobe>
    3d12:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d14:	3304      	adds	r3, #4
    3d16:	63bb      	str	r3, [r7, #56]	; 0x38
    3d18:	2308      	movs	r3, #8
    3d1a:	18fb      	adds	r3, r7, r3
    3d1c:	685b      	ldr	r3, [r3, #4]
    3d1e:	001a      	movs	r2, r3
    3d20:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d22:	0019      	movs	r1, r3
    3d24:	0010      	movs	r0, r2
    3d26:	f7ff ff51 	bl	3bcc <u32tobe>
    3d2a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d2c:	3304      	adds	r3, #4
    3d2e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d30:	2308      	movs	r3, #8
    3d32:	18fb      	adds	r3, r7, r3
    3d34:	689b      	ldr	r3, [r3, #8]
    3d36:	001a      	movs	r2, r3
    3d38:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d3a:	0019      	movs	r1, r3
    3d3c:	0010      	movs	r0, r2
    3d3e:	f7ff ff45 	bl	3bcc <u32tobe>
    3d42:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d44:	3304      	adds	r3, #4
    3d46:	63bb      	str	r3, [r7, #56]	; 0x38
    3d48:	2308      	movs	r3, #8
    3d4a:	18fb      	adds	r3, r7, r3
    3d4c:	68db      	ldr	r3, [r3, #12]
    3d4e:	001a      	movs	r2, r3
    3d50:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d52:	0019      	movs	r1, r3
    3d54:	0010      	movs	r0, r2
    3d56:	f7ff ff39 	bl	3bcc <u32tobe>
    3d5a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d5c:	3304      	adds	r3, #4
    3d5e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d60:	2308      	movs	r3, #8
    3d62:	18fb      	adds	r3, r7, r3
    3d64:	691b      	ldr	r3, [r3, #16]
    3d66:	001a      	movs	r2, r3
    3d68:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d6a:	0019      	movs	r1, r3
    3d6c:	0010      	movs	r0, r2
    3d6e:	f7ff ff2d 	bl	3bcc <u32tobe>
    3d72:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d74:	3304      	adds	r3, #4
    3d76:	63bb      	str	r3, [r7, #56]	; 0x38
    3d78:	2308      	movs	r3, #8
    3d7a:	18fb      	adds	r3, r7, r3
    3d7c:	695b      	ldr	r3, [r3, #20]
    3d7e:	001a      	movs	r2, r3
    3d80:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d82:	0019      	movs	r1, r3
    3d84:	0010      	movs	r0, r2
    3d86:	f7ff ff21 	bl	3bcc <u32tobe>
    3d8a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d8c:	3304      	adds	r3, #4
    3d8e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d90:	2308      	movs	r3, #8
    3d92:	18fb      	adds	r3, r7, r3
    3d94:	699b      	ldr	r3, [r3, #24]
    3d96:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d98:	0011      	movs	r1, r2
    3d9a:	0018      	movs	r0, r3
    3d9c:	f7ff ff16 	bl	3bcc <u32tobe>
    3da0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3da2:	3304      	adds	r3, #4
    3da4:	63bb      	str	r3, [r7, #56]	; 0x38
    3da6:	2308      	movs	r3, #8
    3da8:	18fb      	adds	r3, r7, r3
    3daa:	69db      	ldr	r3, [r3, #28]
    3dac:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3dae:	0011      	movs	r1, r2
    3db0:	0018      	movs	r0, r3
    3db2:	f7ff ff0b 	bl	3bcc <u32tobe>
    3db6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3db8:	3304      	adds	r3, #4
    3dba:	63bb      	str	r3, [r7, #56]	; 0x38
    3dbc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3dbe:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3dc0:	18d3      	adds	r3, r2, r3
    3dc2:	63fb      	str	r3, [r7, #60]	; 0x3c
    3dc4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dc6:	3320      	adds	r3, #32
    3dc8:	001a      	movs	r2, r3
    3dca:	23fc      	movs	r3, #252	; 0xfc
    3dcc:	33ff      	adds	r3, #255	; 0xff
    3dce:	429a      	cmp	r2, r3
    3dd0:	d989      	bls.n	3ce6 <pdu_read_fifo_queue+0xd2>
    3dd2:	e000      	b.n	3dd6 <pdu_read_fifo_queue+0x1c2>
    3dd4:	46c0      	nop			; (mov r8, r8)
    3dd6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dd8:	b29a      	uxth	r2, r3
    3dda:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3ddc:	b29b      	uxth	r3, r3
    3dde:	1ad3      	subs	r3, r2, r3
    3de0:	b29b      	uxth	r3, r3
    3de2:	3302      	adds	r3, #2
    3de4:	b298      	uxth	r0, r3
    3de6:	687b      	ldr	r3, [r7, #4]
    3de8:	1c5a      	adds	r2, r3, #1
    3dea:	4b0c      	ldr	r3, [pc, #48]	; (3e1c <pdu_read_fifo_queue+0x208>)
    3dec:	18d3      	adds	r3, r2, r3
    3dee:	0019      	movs	r1, r3
    3df0:	f7ff fed0 	bl	3b94 <u16tobe>
    3df4:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3df6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3df8:	1ad3      	subs	r3, r2, r3
    3dfa:	105b      	asrs	r3, r3, #1
    3dfc:	b298      	uxth	r0, r3
    3dfe:	687b      	ldr	r3, [r7, #4]
    3e00:	1cda      	adds	r2, r3, #3
    3e02:	4b06      	ldr	r3, [pc, #24]	; (3e1c <pdu_read_fifo_queue+0x208>)
    3e04:	18d3      	adds	r3, r2, r3
    3e06:	0019      	movs	r1, r3
    3e08:	f7ff fec4 	bl	3b94 <u16tobe>
    3e0c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e0e:	0018      	movs	r0, r3
    3e10:	46bd      	mov	sp, r7
    3e12:	b010      	add	sp, #64	; 0x40
    3e14:	bd80      	pop	{r7, pc}
    3e16:	46c0      	nop			; (mov r8, r8)
    3e18:	20005dc0 	.word	0x20005dc0
    3e1c:	20005dc4 	.word	0x20005dc4

00003e20 <pdu_read_holding_registers>:
    3e20:	b580      	push	{r7, lr}
    3e22:	b086      	sub	sp, #24
    3e24:	af00      	add	r7, sp, #0
    3e26:	6078      	str	r0, [r7, #4]
    3e28:	4b49      	ldr	r3, [pc, #292]	; (3f50 <pdu_read_holding_registers+0x130>)
    3e2a:	681a      	ldr	r2, [r3, #0]
    3e2c:	687b      	ldr	r3, [r7, #4]
    3e2e:	18d2      	adds	r2, r2, r3
    3e30:	230f      	movs	r3, #15
    3e32:	18fb      	adds	r3, r7, r3
    3e34:	7812      	ldrb	r2, [r2, #0]
    3e36:	701a      	strb	r2, [r3, #0]
    3e38:	4b45      	ldr	r3, [pc, #276]	; (3f50 <pdu_read_holding_registers+0x130>)
    3e3a:	681a      	ldr	r2, [r3, #0]
    3e3c:	687b      	ldr	r3, [r7, #4]
    3e3e:	3301      	adds	r3, #1
    3e40:	18d3      	adds	r3, r2, r3
    3e42:	781b      	ldrb	r3, [r3, #0]
    3e44:	021b      	lsls	r3, r3, #8
    3e46:	b21a      	sxth	r2, r3
    3e48:	4b41      	ldr	r3, [pc, #260]	; (3f50 <pdu_read_holding_registers+0x130>)
    3e4a:	6819      	ldr	r1, [r3, #0]
    3e4c:	687b      	ldr	r3, [r7, #4]
    3e4e:	3302      	adds	r3, #2
    3e50:	18cb      	adds	r3, r1, r3
    3e52:	781b      	ldrb	r3, [r3, #0]
    3e54:	b21b      	sxth	r3, r3
    3e56:	4313      	orrs	r3, r2
    3e58:	b21a      	sxth	r2, r3
    3e5a:	230c      	movs	r3, #12
    3e5c:	18fb      	adds	r3, r7, r3
    3e5e:	801a      	strh	r2, [r3, #0]
    3e60:	4b3b      	ldr	r3, [pc, #236]	; (3f50 <pdu_read_holding_registers+0x130>)
    3e62:	681a      	ldr	r2, [r3, #0]
    3e64:	687b      	ldr	r3, [r7, #4]
    3e66:	3303      	adds	r3, #3
    3e68:	18d3      	adds	r3, r2, r3
    3e6a:	781b      	ldrb	r3, [r3, #0]
    3e6c:	021b      	lsls	r3, r3, #8
    3e6e:	b21a      	sxth	r2, r3
    3e70:	4b37      	ldr	r3, [pc, #220]	; (3f50 <pdu_read_holding_registers+0x130>)
    3e72:	6819      	ldr	r1, [r3, #0]
    3e74:	687b      	ldr	r3, [r7, #4]
    3e76:	3304      	adds	r3, #4
    3e78:	18cb      	adds	r3, r1, r3
    3e7a:	781b      	ldrb	r3, [r3, #0]
    3e7c:	b21b      	sxth	r3, r3
    3e7e:	4313      	orrs	r3, r2
    3e80:	b21a      	sxth	r2, r3
    3e82:	230a      	movs	r3, #10
    3e84:	18fb      	adds	r3, r7, r3
    3e86:	801a      	strh	r2, [r3, #0]
    3e88:	230c      	movs	r3, #12
    3e8a:	18fb      	adds	r3, r7, r3
    3e8c:	881a      	ldrh	r2, [r3, #0]
    3e8e:	230a      	movs	r3, #10
    3e90:	18fb      	adds	r3, r7, r3
    3e92:	881b      	ldrh	r3, [r3, #0]
    3e94:	18d3      	adds	r3, r2, r3
    3e96:	2b26      	cmp	r3, #38	; 0x26
    3e98:	dd14      	ble.n	3ec4 <pdu_read_holding_registers+0xa4>
    3e9a:	687b      	ldr	r3, [r7, #4]
    3e9c:	613b      	str	r3, [r7, #16]
    3e9e:	693b      	ldr	r3, [r7, #16]
    3ea0:	1c5a      	adds	r2, r3, #1
    3ea2:	613a      	str	r2, [r7, #16]
    3ea4:	220f      	movs	r2, #15
    3ea6:	18ba      	adds	r2, r7, r2
    3ea8:	7812      	ldrb	r2, [r2, #0]
    3eaa:	2180      	movs	r1, #128	; 0x80
    3eac:	4249      	negs	r1, r1
    3eae:	430a      	orrs	r2, r1
    3eb0:	b2d1      	uxtb	r1, r2
    3eb2:	4a28      	ldr	r2, [pc, #160]	; (3f54 <pdu_read_holding_registers+0x134>)
    3eb4:	54d1      	strb	r1, [r2, r3]
    3eb6:	693b      	ldr	r3, [r7, #16]
    3eb8:	1c5a      	adds	r2, r3, #1
    3eba:	613a      	str	r2, [r7, #16]
    3ebc:	4a25      	ldr	r2, [pc, #148]	; (3f54 <pdu_read_holding_registers+0x134>)
    3ebe:	2102      	movs	r1, #2
    3ec0:	54d1      	strb	r1, [r2, r3]
    3ec2:	e03f      	b.n	3f44 <pdu_read_holding_registers+0x124>
    3ec4:	687b      	ldr	r3, [r7, #4]
    3ec6:	613b      	str	r3, [r7, #16]
    3ec8:	693b      	ldr	r3, [r7, #16]
    3eca:	1c5a      	adds	r2, r3, #1
    3ecc:	613a      	str	r2, [r7, #16]
    3ece:	4a21      	ldr	r2, [pc, #132]	; (3f54 <pdu_read_holding_registers+0x134>)
    3ed0:	210f      	movs	r1, #15
    3ed2:	1879      	adds	r1, r7, r1
    3ed4:	7809      	ldrb	r1, [r1, #0]
    3ed6:	54d1      	strb	r1, [r2, r3]
    3ed8:	693b      	ldr	r3, [r7, #16]
    3eda:	1c5a      	adds	r2, r3, #1
    3edc:	613a      	str	r2, [r7, #16]
    3ede:	220a      	movs	r2, #10
    3ee0:	18ba      	adds	r2, r7, r2
    3ee2:	8812      	ldrh	r2, [r2, #0]
    3ee4:	b2d2      	uxtb	r2, r2
    3ee6:	1892      	adds	r2, r2, r2
    3ee8:	b2d1      	uxtb	r1, r2
    3eea:	4a1a      	ldr	r2, [pc, #104]	; (3f54 <pdu_read_holding_registers+0x134>)
    3eec:	54d1      	strb	r1, [r2, r3]
    3eee:	2300      	movs	r3, #0
    3ef0:	617b      	str	r3, [r7, #20]
    3ef2:	e021      	b.n	3f38 <pdu_read_holding_registers+0x118>
    3ef4:	230c      	movs	r3, #12
    3ef6:	18fb      	adds	r3, r7, r3
    3ef8:	881a      	ldrh	r2, [r3, #0]
    3efa:	697b      	ldr	r3, [r7, #20]
    3efc:	18d1      	adds	r1, r2, r3
    3efe:	2308      	movs	r3, #8
    3f00:	18fb      	adds	r3, r7, r3
    3f02:	4a15      	ldr	r2, [pc, #84]	; (3f58 <pdu_read_holding_registers+0x138>)
    3f04:	0049      	lsls	r1, r1, #1
    3f06:	5a8a      	ldrh	r2, [r1, r2]
    3f08:	801a      	strh	r2, [r3, #0]
    3f0a:	693b      	ldr	r3, [r7, #16]
    3f0c:	1c5a      	adds	r2, r3, #1
    3f0e:	613a      	str	r2, [r7, #16]
    3f10:	2208      	movs	r2, #8
    3f12:	18ba      	adds	r2, r7, r2
    3f14:	8812      	ldrh	r2, [r2, #0]
    3f16:	0a12      	lsrs	r2, r2, #8
    3f18:	b292      	uxth	r2, r2
    3f1a:	b2d1      	uxtb	r1, r2
    3f1c:	4a0d      	ldr	r2, [pc, #52]	; (3f54 <pdu_read_holding_registers+0x134>)
    3f1e:	54d1      	strb	r1, [r2, r3]
    3f20:	693b      	ldr	r3, [r7, #16]
    3f22:	1c5a      	adds	r2, r3, #1
    3f24:	613a      	str	r2, [r7, #16]
    3f26:	2208      	movs	r2, #8
    3f28:	18ba      	adds	r2, r7, r2
    3f2a:	8812      	ldrh	r2, [r2, #0]
    3f2c:	b2d1      	uxtb	r1, r2
    3f2e:	4a09      	ldr	r2, [pc, #36]	; (3f54 <pdu_read_holding_registers+0x134>)
    3f30:	54d1      	strb	r1, [r2, r3]
    3f32:	697b      	ldr	r3, [r7, #20]
    3f34:	3301      	adds	r3, #1
    3f36:	617b      	str	r3, [r7, #20]
    3f38:	230a      	movs	r3, #10
    3f3a:	18fb      	adds	r3, r7, r3
    3f3c:	881a      	ldrh	r2, [r3, #0]
    3f3e:	697b      	ldr	r3, [r7, #20]
    3f40:	429a      	cmp	r2, r3
    3f42:	dcd7      	bgt.n	3ef4 <pdu_read_holding_registers+0xd4>
    3f44:	693b      	ldr	r3, [r7, #16]
    3f46:	0018      	movs	r0, r3
    3f48:	46bd      	mov	sp, r7
    3f4a:	b006      	add	sp, #24
    3f4c:	bd80      	pop	{r7, pc}
    3f4e:	46c0      	nop			; (mov r8, r8)
    3f50:	20005dc0 	.word	0x20005dc0
    3f54:	20005dc4 	.word	0x20005dc4
    3f58:	20005d68 	.word	0x20005d68

00003f5c <pdu_illegal_function_error>:
    3f5c:	b580      	push	{r7, lr}
    3f5e:	b084      	sub	sp, #16
    3f60:	af00      	add	r7, sp, #0
    3f62:	6078      	str	r0, [r7, #4]
    3f64:	4b10      	ldr	r3, [pc, #64]	; (3fa8 <pdu_illegal_function_error+0x4c>)
    3f66:	681a      	ldr	r2, [r3, #0]
    3f68:	687b      	ldr	r3, [r7, #4]
    3f6a:	18d2      	adds	r2, r2, r3
    3f6c:	230f      	movs	r3, #15
    3f6e:	18fb      	adds	r3, r7, r3
    3f70:	7812      	ldrb	r2, [r2, #0]
    3f72:	701a      	strb	r2, [r3, #0]
    3f74:	687b      	ldr	r3, [r7, #4]
    3f76:	60bb      	str	r3, [r7, #8]
    3f78:	68bb      	ldr	r3, [r7, #8]
    3f7a:	1c5a      	adds	r2, r3, #1
    3f7c:	60ba      	str	r2, [r7, #8]
    3f7e:	220f      	movs	r2, #15
    3f80:	18ba      	adds	r2, r7, r2
    3f82:	7812      	ldrb	r2, [r2, #0]
    3f84:	2180      	movs	r1, #128	; 0x80
    3f86:	4249      	negs	r1, r1
    3f88:	430a      	orrs	r2, r1
    3f8a:	b2d1      	uxtb	r1, r2
    3f8c:	4a07      	ldr	r2, [pc, #28]	; (3fac <pdu_illegal_function_error+0x50>)
    3f8e:	54d1      	strb	r1, [r2, r3]
    3f90:	68bb      	ldr	r3, [r7, #8]
    3f92:	1c5a      	adds	r2, r3, #1
    3f94:	60ba      	str	r2, [r7, #8]
    3f96:	4a05      	ldr	r2, [pc, #20]	; (3fac <pdu_illegal_function_error+0x50>)
    3f98:	2101      	movs	r1, #1
    3f9a:	54d1      	strb	r1, [r2, r3]
    3f9c:	68bb      	ldr	r3, [r7, #8]
    3f9e:	0018      	movs	r0, r3
    3fa0:	46bd      	mov	sp, r7
    3fa2:	b004      	add	sp, #16
    3fa4:	bd80      	pop	{r7, pc}
    3fa6:	46c0      	nop			; (mov r8, r8)
    3fa8:	20005dc0 	.word	0x20005dc0
    3fac:	20005dc4 	.word	0x20005dc4

00003fb0 <mdb_proc_adu>:
    3fb0:	b580      	push	{r7, lr}
    3fb2:	b086      	sub	sp, #24
    3fb4:	af00      	add	r7, sp, #0
    3fb6:	6078      	str	r0, [r7, #4]
    3fb8:	4b39      	ldr	r3, [pc, #228]	; (40a0 <mdb_proc_adu+0xf0>)
    3fba:	687a      	ldr	r2, [r7, #4]
    3fbc:	601a      	str	r2, [r3, #0]
    3fbe:	4b38      	ldr	r3, [pc, #224]	; (40a0 <mdb_proc_adu+0xf0>)
    3fc0:	681b      	ldr	r3, [r3, #0]
    3fc2:	781b      	ldrb	r3, [r3, #0]
    3fc4:	021b      	lsls	r3, r3, #8
    3fc6:	b21a      	sxth	r2, r3
    3fc8:	4b35      	ldr	r3, [pc, #212]	; (40a0 <mdb_proc_adu+0xf0>)
    3fca:	681b      	ldr	r3, [r3, #0]
    3fcc:	3301      	adds	r3, #1
    3fce:	781b      	ldrb	r3, [r3, #0]
    3fd0:	b21b      	sxth	r3, r3
    3fd2:	4313      	orrs	r3, r2
    3fd4:	b21a      	sxth	r2, r3
    3fd6:	2312      	movs	r3, #18
    3fd8:	18fb      	adds	r3, r7, r3
    3fda:	801a      	strh	r2, [r3, #0]
    3fdc:	4b30      	ldr	r3, [pc, #192]	; (40a0 <mdb_proc_adu+0xf0>)
    3fde:	681b      	ldr	r3, [r3, #0]
    3fe0:	3302      	adds	r3, #2
    3fe2:	781b      	ldrb	r3, [r3, #0]
    3fe4:	021b      	lsls	r3, r3, #8
    3fe6:	b21a      	sxth	r2, r3
    3fe8:	4b2d      	ldr	r3, [pc, #180]	; (40a0 <mdb_proc_adu+0xf0>)
    3fea:	681b      	ldr	r3, [r3, #0]
    3fec:	3303      	adds	r3, #3
    3fee:	781b      	ldrb	r3, [r3, #0]
    3ff0:	b21b      	sxth	r3, r3
    3ff2:	4313      	orrs	r3, r2
    3ff4:	b21a      	sxth	r2, r3
    3ff6:	2310      	movs	r3, #16
    3ff8:	18fb      	adds	r3, r7, r3
    3ffa:	801a      	strh	r2, [r3, #0]
    3ffc:	4b28      	ldr	r3, [pc, #160]	; (40a0 <mdb_proc_adu+0xf0>)
    3ffe:	681b      	ldr	r3, [r3, #0]
    4000:	3304      	adds	r3, #4
    4002:	781b      	ldrb	r3, [r3, #0]
    4004:	021b      	lsls	r3, r3, #8
    4006:	b21a      	sxth	r2, r3
    4008:	4b25      	ldr	r3, [pc, #148]	; (40a0 <mdb_proc_adu+0xf0>)
    400a:	681b      	ldr	r3, [r3, #0]
    400c:	3305      	adds	r3, #5
    400e:	781b      	ldrb	r3, [r3, #0]
    4010:	b21b      	sxth	r3, r3
    4012:	4313      	orrs	r3, r2
    4014:	b21a      	sxth	r2, r3
    4016:	230e      	movs	r3, #14
    4018:	18fb      	adds	r3, r7, r3
    401a:	801a      	strh	r2, [r3, #0]
    401c:	4b20      	ldr	r3, [pc, #128]	; (40a0 <mdb_proc_adu+0xf0>)
    401e:	681a      	ldr	r2, [r3, #0]
    4020:	230d      	movs	r3, #13
    4022:	18fb      	adds	r3, r7, r3
    4024:	7992      	ldrb	r2, [r2, #6]
    4026:	701a      	strb	r2, [r3, #0]
    4028:	4b1d      	ldr	r3, [pc, #116]	; (40a0 <mdb_proc_adu+0xf0>)
    402a:	681a      	ldr	r2, [r3, #0]
    402c:	230c      	movs	r3, #12
    402e:	18fb      	adds	r3, r7, r3
    4030:	79d2      	ldrb	r2, [r2, #7]
    4032:	701a      	strb	r2, [r3, #0]
    4034:	230d      	movs	r3, #13
    4036:	18fb      	adds	r3, r7, r3
    4038:	781b      	ldrb	r3, [r3, #0]
    403a:	2b11      	cmp	r3, #17
    403c:	d12b      	bne.n	4096 <mdb_proc_adu+0xe6>
    403e:	230c      	movs	r3, #12
    4040:	18fb      	adds	r3, r7, r3
    4042:	781a      	ldrb	r2, [r3, #0]
    4044:	4b17      	ldr	r3, [pc, #92]	; (40a4 <mdb_proc_adu+0xf4>)
    4046:	0092      	lsls	r2, r2, #2
    4048:	58d3      	ldr	r3, [r2, r3]
    404a:	2007      	movs	r0, #7
    404c:	4798      	blx	r3
    404e:	0003      	movs	r3, r0
    4050:	60bb      	str	r3, [r7, #8]
    4052:	2300      	movs	r3, #0
    4054:	617b      	str	r3, [r7, #20]
    4056:	e00c      	b.n	4072 <mdb_proc_adu+0xc2>
    4058:	4b11      	ldr	r3, [pc, #68]	; (40a0 <mdb_proc_adu+0xf0>)
    405a:	681a      	ldr	r2, [r3, #0]
    405c:	697b      	ldr	r3, [r7, #20]
    405e:	18d3      	adds	r3, r2, r3
    4060:	7819      	ldrb	r1, [r3, #0]
    4062:	4a11      	ldr	r2, [pc, #68]	; (40a8 <mdb_proc_adu+0xf8>)
    4064:	697b      	ldr	r3, [r7, #20]
    4066:	18d3      	adds	r3, r2, r3
    4068:	1c0a      	adds	r2, r1, #0
    406a:	701a      	strb	r2, [r3, #0]
    406c:	697b      	ldr	r3, [r7, #20]
    406e:	3301      	adds	r3, #1
    4070:	617b      	str	r3, [r7, #20]
    4072:	697b      	ldr	r3, [r7, #20]
    4074:	2b06      	cmp	r3, #6
    4076:	ddef      	ble.n	4058 <mdb_proc_adu+0xa8>
    4078:	4b0b      	ldr	r3, [pc, #44]	; (40a8 <mdb_proc_adu+0xf8>)
    407a:	2200      	movs	r2, #0
    407c:	711a      	strb	r2, [r3, #4]
    407e:	68bb      	ldr	r3, [r7, #8]
    4080:	b2db      	uxtb	r3, r3
    4082:	3b06      	subs	r3, #6
    4084:	b2da      	uxtb	r2, r3
    4086:	4b08      	ldr	r3, [pc, #32]	; (40a8 <mdb_proc_adu+0xf8>)
    4088:	715a      	strb	r2, [r3, #5]
    408a:	68ba      	ldr	r2, [r7, #8]
    408c:	4b06      	ldr	r3, [pc, #24]	; (40a8 <mdb_proc_adu+0xf8>)
    408e:	0011      	movs	r1, r2
    4090:	0018      	movs	r0, r3
    4092:	f7fe fed5 	bl	2e40 <Send_UDP>
    4096:	46c0      	nop			; (mov r8, r8)
    4098:	46bd      	mov	sp, r7
    409a:	b006      	add	sp, #24
    409c:	bd80      	pop	{r7, pc}
    409e:	46c0      	nop			; (mov r8, r8)
    40a0:	20005dc0 	.word	0x20005dc0
    40a4:	000091bc 	.word	0x000091bc
    40a8:	20005dc4 	.word	0x20005dc4

000040ac <fsm_get_mode>:
    40ac:	b580      	push	{r7, lr}
    40ae:	af00      	add	r7, sp, #0
    40b0:	4b02      	ldr	r3, [pc, #8]	; (40bc <fsm_get_mode+0x10>)
    40b2:	781b      	ldrb	r3, [r3, #0]
    40b4:	0018      	movs	r0, r3
    40b6:	46bd      	mov	sp, r7
    40b8:	bd80      	pop	{r7, pc}
    40ba:	46c0      	nop			; (mov r8, r8)
    40bc:	20006044 	.word	0x20006044

000040c0 <fsm_get_cyccnt>:
    40c0:	b580      	push	{r7, lr}
    40c2:	af00      	add	r7, sp, #0
    40c4:	4b02      	ldr	r3, [pc, #8]	; (40d0 <fsm_get_cyccnt+0x10>)
    40c6:	681b      	ldr	r3, [r3, #0]
    40c8:	0018      	movs	r0, r3
    40ca:	46bd      	mov	sp, r7
    40cc:	bd80      	pop	{r7, pc}
    40ce:	46c0      	nop			; (mov r8, r8)
    40d0:	20006010 	.word	0x20006010

000040d4 <fsm_idle>:
    40d4:	b580      	push	{r7, lr}
    40d6:	b084      	sub	sp, #16
    40d8:	af00      	add	r7, sp, #0
    40da:	6078      	str	r0, [r7, #4]
    40dc:	230b      	movs	r3, #11
    40de:	18fb      	adds	r3, r7, r3
    40e0:	687a      	ldr	r2, [r7, #4]
    40e2:	701a      	strb	r2, [r3, #0]
    40e4:	230b      	movs	r3, #11
    40e6:	18fb      	adds	r3, r7, r3
    40e8:	781b      	ldrb	r3, [r3, #0]
    40ea:	2b01      	cmp	r3, #1
    40ec:	d000      	beq.n	40f0 <fsm_idle+0x1c>
    40ee:	e09a      	b.n	4226 <fsm_idle+0x152>
    40f0:	4b4f      	ldr	r3, [pc, #316]	; (4230 <fsm_idle+0x15c>)
    40f2:	0018      	movs	r0, r3
    40f4:	f7ff fa52 	bl	359c <mdb_get_testparam>
    40f8:	4b4d      	ldr	r3, [pc, #308]	; (4230 <fsm_idle+0x15c>)
    40fa:	681a      	ldr	r2, [r3, #0]
    40fc:	4b4d      	ldr	r3, [pc, #308]	; (4234 <fsm_idle+0x160>)
    40fe:	601a      	str	r2, [r3, #0]
    4100:	4b4c      	ldr	r3, [pc, #304]	; (4234 <fsm_idle+0x160>)
    4102:	681b      	ldr	r3, [r3, #0]
    4104:	2b00      	cmp	r3, #0
    4106:	d100      	bne.n	410a <fsm_idle+0x36>
    4108:	e08d      	b.n	4226 <fsm_idle+0x152>
    410a:	4b4b      	ldr	r3, [pc, #300]	; (4238 <fsm_idle+0x164>)
    410c:	4a4b      	ldr	r2, [pc, #300]	; (423c <fsm_idle+0x168>)
    410e:	601a      	str	r2, [r3, #0]
    4110:	4b4b      	ldr	r3, [pc, #300]	; (4240 <fsm_idle+0x16c>)
    4112:	2201      	movs	r2, #1
    4114:	701a      	strb	r2, [r3, #0]
    4116:	4b4b      	ldr	r3, [pc, #300]	; (4244 <fsm_idle+0x170>)
    4118:	2200      	movs	r2, #0
    411a:	601a      	str	r2, [r3, #0]
    411c:	4b4a      	ldr	r3, [pc, #296]	; (4248 <fsm_idle+0x174>)
    411e:	2200      	movs	r2, #0
    4120:	601a      	str	r2, [r3, #0]
    4122:	2300      	movs	r3, #0
    4124:	60fb      	str	r3, [r7, #12]
    4126:	e032      	b.n	418e <fsm_idle+0xba>
    4128:	4b41      	ldr	r3, [pc, #260]	; (4230 <fsm_idle+0x15c>)
    412a:	689b      	ldr	r3, [r3, #8]
    412c:	4a40      	ldr	r2, [pc, #256]	; (4230 <fsm_idle+0x15c>)
    412e:	68f9      	ldr	r1, [r7, #12]
    4130:	3108      	adds	r1, #8
    4132:	0049      	lsls	r1, r1, #1
    4134:	5a8a      	ldrh	r2, [r1, r2]
    4136:	435a      	muls	r2, r3
    4138:	0013      	movs	r3, r2
    413a:	009b      	lsls	r3, r3, #2
    413c:	189b      	adds	r3, r3, r2
    413e:	00db      	lsls	r3, r3, #3
    4140:	189b      	adds	r3, r3, r2
    4142:	2280      	movs	r2, #128	; 0x80
    4144:	0112      	lsls	r2, r2, #4
    4146:	4694      	mov	ip, r2
    4148:	4463      	add	r3, ip
    414a:	0b1b      	lsrs	r3, r3, #12
    414c:	0019      	movs	r1, r3
    414e:	4b3f      	ldr	r3, [pc, #252]	; (424c <fsm_idle+0x178>)
    4150:	68fa      	ldr	r2, [r7, #12]
    4152:	0092      	lsls	r2, r2, #2
    4154:	50d1      	str	r1, [r2, r3]
    4156:	4b36      	ldr	r3, [pc, #216]	; (4230 <fsm_idle+0x15c>)
    4158:	68db      	ldr	r3, [r3, #12]
    415a:	4935      	ldr	r1, [pc, #212]	; (4230 <fsm_idle+0x15c>)
    415c:	68fa      	ldr	r2, [r7, #12]
    415e:	320c      	adds	r2, #12
    4160:	0052      	lsls	r2, r2, #1
    4162:	188a      	adds	r2, r1, r2
    4164:	3202      	adds	r2, #2
    4166:	8812      	ldrh	r2, [r2, #0]
    4168:	435a      	muls	r2, r3
    416a:	0013      	movs	r3, r2
    416c:	009b      	lsls	r3, r3, #2
    416e:	189b      	adds	r3, r3, r2
    4170:	00db      	lsls	r3, r3, #3
    4172:	189b      	adds	r3, r3, r2
    4174:	2280      	movs	r2, #128	; 0x80
    4176:	0112      	lsls	r2, r2, #4
    4178:	4694      	mov	ip, r2
    417a:	4463      	add	r3, ip
    417c:	0b1b      	lsrs	r3, r3, #12
    417e:	0019      	movs	r1, r3
    4180:	4b33      	ldr	r3, [pc, #204]	; (4250 <fsm_idle+0x17c>)
    4182:	68fa      	ldr	r2, [r7, #12]
    4184:	0092      	lsls	r2, r2, #2
    4186:	50d1      	str	r1, [r2, r3]
    4188:	68fb      	ldr	r3, [r7, #12]
    418a:	3301      	adds	r3, #1
    418c:	60fb      	str	r3, [r7, #12]
    418e:	68fb      	ldr	r3, [r7, #12]
    4190:	2b04      	cmp	r3, #4
    4192:	ddc9      	ble.n	4128 <fsm_idle+0x54>
    4194:	2300      	movs	r3, #0
    4196:	60fb      	str	r3, [r7, #12]
    4198:	e020      	b.n	41dc <fsm_idle+0x108>
    419a:	68fb      	ldr	r3, [r7, #12]
    419c:	1c5a      	adds	r2, r3, #1
    419e:	4b2c      	ldr	r3, [pc, #176]	; (4250 <fsm_idle+0x17c>)
    41a0:	0092      	lsls	r2, r2, #2
    41a2:	58d2      	ldr	r2, [r2, r3]
    41a4:	4b2a      	ldr	r3, [pc, #168]	; (4250 <fsm_idle+0x17c>)
    41a6:	68f9      	ldr	r1, [r7, #12]
    41a8:	0089      	lsls	r1, r1, #2
    41aa:	58cb      	ldr	r3, [r1, r3]
    41ac:	1ad3      	subs	r3, r2, r3
    41ae:	0098      	lsls	r0, r3, #2
    41b0:	68fb      	ldr	r3, [r7, #12]
    41b2:	1c5a      	adds	r2, r3, #1
    41b4:	4b25      	ldr	r3, [pc, #148]	; (424c <fsm_idle+0x178>)
    41b6:	0092      	lsls	r2, r2, #2
    41b8:	58d2      	ldr	r2, [r2, r3]
    41ba:	4b24      	ldr	r3, [pc, #144]	; (424c <fsm_idle+0x178>)
    41bc:	68f9      	ldr	r1, [r7, #12]
    41be:	0089      	lsls	r1, r1, #2
    41c0:	58cb      	ldr	r3, [r1, r3]
    41c2:	1ad3      	subs	r3, r2, r3
    41c4:	0019      	movs	r1, r3
    41c6:	f000 fc03 	bl	49d0 <__aeabi_idiv>
    41ca:	0003      	movs	r3, r0
    41cc:	0019      	movs	r1, r3
    41ce:	4b21      	ldr	r3, [pc, #132]	; (4254 <fsm_idle+0x180>)
    41d0:	68fa      	ldr	r2, [r7, #12]
    41d2:	0092      	lsls	r2, r2, #2
    41d4:	50d1      	str	r1, [r2, r3]
    41d6:	68fb      	ldr	r3, [r7, #12]
    41d8:	3301      	adds	r3, #1
    41da:	60fb      	str	r3, [r7, #12]
    41dc:	68fb      	ldr	r3, [r7, #12]
    41de:	2b03      	cmp	r3, #3
    41e0:	dddb      	ble.n	419a <fsm_idle+0xc6>
    41e2:	4b1a      	ldr	r3, [pc, #104]	; (424c <fsm_idle+0x178>)
    41e4:	681a      	ldr	r2, [r3, #0]
    41e6:	4b1c      	ldr	r3, [pc, #112]	; (4258 <fsm_idle+0x184>)
    41e8:	601a      	str	r2, [r3, #0]
    41ea:	4b18      	ldr	r3, [pc, #96]	; (424c <fsm_idle+0x178>)
    41ec:	685a      	ldr	r2, [r3, #4]
    41ee:	4b1b      	ldr	r3, [pc, #108]	; (425c <fsm_idle+0x188>)
    41f0:	601a      	str	r2, [r3, #0]
    41f2:	4b17      	ldr	r3, [pc, #92]	; (4250 <fsm_idle+0x17c>)
    41f4:	681a      	ldr	r2, [r3, #0]
    41f6:	4b1a      	ldr	r3, [pc, #104]	; (4260 <fsm_idle+0x18c>)
    41f8:	601a      	str	r2, [r3, #0]
    41fa:	4b15      	ldr	r3, [pc, #84]	; (4250 <fsm_idle+0x17c>)
    41fc:	685a      	ldr	r2, [r3, #4]
    41fe:	4b19      	ldr	r3, [pc, #100]	; (4264 <fsm_idle+0x190>)
    4200:	601a      	str	r2, [r3, #0]
    4202:	4b14      	ldr	r3, [pc, #80]	; (4254 <fsm_idle+0x180>)
    4204:	681a      	ldr	r2, [r3, #0]
    4206:	4b18      	ldr	r3, [pc, #96]	; (4268 <fsm_idle+0x194>)
    4208:	601a      	str	r2, [r3, #0]
    420a:	f7fb ff95 	bl	138 <dut_pwr_on>
    420e:	f7fb ffb3 	bl	178 <dut_reset_on>
    4212:	4b07      	ldr	r3, [pc, #28]	; (4230 <fsm_idle+0x15c>)
    4214:	685b      	ldr	r3, [r3, #4]
    4216:	0018      	movs	r0, r3
    4218:	f7fb ffba 	bl	190 <dut_set_speed>
    421c:	4b10      	ldr	r3, [pc, #64]	; (4260 <fsm_idle+0x18c>)
    421e:	681b      	ldr	r3, [r3, #0]
    4220:	0018      	movs	r0, r3
    4222:	f7fb ffe9 	bl	1f8 <dut_set_torque>
    4226:	46c0      	nop			; (mov r8, r8)
    4228:	46bd      	mov	sp, r7
    422a:	b004      	add	sp, #16
    422c:	bd80      	pop	{r7, pc}
    422e:	46c0      	nop			; (mov r8, r8)
    4230:	2000601c 	.word	0x2000601c
    4234:	20006010 	.word	0x20006010
    4238:	20000014 	.word	0x20000014
    423c:	0000426d 	.word	0x0000426d
    4240:	20006044 	.word	0x20006044
    4244:	20006014 	.word	0x20006014
    4248:	20006018 	.word	0x20006018
    424c:	20005fd4 	.word	0x20005fd4
    4250:	20005fe8 	.word	0x20005fe8
    4254:	20005ffc 	.word	0x20005ffc
    4258:	20005fc4 	.word	0x20005fc4
    425c:	20005fc8 	.word	0x20005fc8
    4260:	20005fcc 	.word	0x20005fcc
    4264:	20005fd0 	.word	0x20005fd0
    4268:	20005fc0 	.word	0x20005fc0

0000426c <fsm_work>:
    426c:	b580      	push	{r7, lr}
    426e:	b086      	sub	sp, #24
    4270:	af00      	add	r7, sp, #0
    4272:	6078      	str	r0, [r7, #4]
    4274:	2313      	movs	r3, #19
    4276:	18fb      	adds	r3, r7, r3
    4278:	687a      	ldr	r2, [r7, #4]
    427a:	701a      	strb	r2, [r3, #0]
    427c:	687b      	ldr	r3, [r7, #4]
    427e:	121b      	asrs	r3, r3, #8
    4280:	60fb      	str	r3, [r7, #12]
    4282:	2313      	movs	r3, #19
    4284:	18fb      	adds	r3, r7, r3
    4286:	781b      	ldrb	r3, [r3, #0]
    4288:	2b04      	cmp	r3, #4
    428a:	d000      	beq.n	428e <fsm_work+0x22>
    428c:	e0fc      	b.n	4488 <fsm_work+0x21c>
    428e:	68fb      	ldr	r3, [r7, #12]
    4290:	617b      	str	r3, [r7, #20]
    4292:	f7fb ff65 	bl	160 <dut_reset_off>
    4296:	4b8d      	ldr	r3, [pc, #564]	; (44cc <fsm_work+0x260>)
    4298:	689b      	ldr	r3, [r3, #8]
    429a:	001a      	movs	r2, r3
    429c:	697b      	ldr	r3, [r7, #20]
    429e:	429a      	cmp	r2, r3
    42a0:	dc29      	bgt.n	42f6 <fsm_work+0x8a>
    42a2:	4b8b      	ldr	r3, [pc, #556]	; (44d0 <fsm_work+0x264>)
    42a4:	2201      	movs	r2, #1
    42a6:	601a      	str	r2, [r3, #0]
    42a8:	4b8a      	ldr	r3, [pc, #552]	; (44d4 <fsm_work+0x268>)
    42aa:	2200      	movs	r2, #0
    42ac:	601a      	str	r2, [r3, #0]
    42ae:	4b8a      	ldr	r3, [pc, #552]	; (44d8 <fsm_work+0x26c>)
    42b0:	681a      	ldr	r2, [r3, #0]
    42b2:	4b8a      	ldr	r3, [pc, #552]	; (44dc <fsm_work+0x270>)
    42b4:	601a      	str	r2, [r3, #0]
    42b6:	4b88      	ldr	r3, [pc, #544]	; (44d8 <fsm_work+0x26c>)
    42b8:	685a      	ldr	r2, [r3, #4]
    42ba:	4b89      	ldr	r3, [pc, #548]	; (44e0 <fsm_work+0x274>)
    42bc:	601a      	str	r2, [r3, #0]
    42be:	4b89      	ldr	r3, [pc, #548]	; (44e4 <fsm_work+0x278>)
    42c0:	681b      	ldr	r3, [r3, #0]
    42c2:	425a      	negs	r2, r3
    42c4:	4b88      	ldr	r3, [pc, #544]	; (44e8 <fsm_work+0x27c>)
    42c6:	601a      	str	r2, [r3, #0]
    42c8:	4b86      	ldr	r3, [pc, #536]	; (44e4 <fsm_work+0x278>)
    42ca:	685b      	ldr	r3, [r3, #4]
    42cc:	425a      	negs	r2, r3
    42ce:	4b87      	ldr	r3, [pc, #540]	; (44ec <fsm_work+0x280>)
    42d0:	601a      	str	r2, [r3, #0]
    42d2:	4b87      	ldr	r3, [pc, #540]	; (44f0 <fsm_work+0x284>)
    42d4:	681b      	ldr	r3, [r3, #0]
    42d6:	425a      	negs	r2, r3
    42d8:	4b86      	ldr	r3, [pc, #536]	; (44f4 <fsm_work+0x288>)
    42da:	601a      	str	r2, [r3, #0]
    42dc:	4b7b      	ldr	r3, [pc, #492]	; (44cc <fsm_work+0x260>)
    42de:	685b      	ldr	r3, [r3, #4]
    42e0:	425b      	negs	r3, r3
    42e2:	0018      	movs	r0, r3
    42e4:	f7fb ff54 	bl	190 <dut_set_speed>
    42e8:	4b7f      	ldr	r3, [pc, #508]	; (44e8 <fsm_work+0x27c>)
    42ea:	681b      	ldr	r3, [r3, #0]
    42ec:	425b      	negs	r3, r3
    42ee:	0018      	movs	r0, r3
    42f0:	f7fb ff82 	bl	1f8 <dut_set_torque>
    42f4:	e0e7      	b.n	44c6 <fsm_work+0x25a>
    42f6:	4b76      	ldr	r3, [pc, #472]	; (44d0 <fsm_work+0x264>)
    42f8:	681b      	ldr	r3, [r3, #0]
    42fa:	2b00      	cmp	r3, #0
    42fc:	d03f      	beq.n	437e <fsm_work+0x112>
    42fe:	697b      	ldr	r3, [r7, #20]
    4300:	2b00      	cmp	r3, #0
    4302:	dc3c      	bgt.n	437e <fsm_work+0x112>
    4304:	4b7c      	ldr	r3, [pc, #496]	; (44f8 <fsm_work+0x28c>)
    4306:	681b      	ldr	r3, [r3, #0]
    4308:	1e5a      	subs	r2, r3, #1
    430a:	4b7b      	ldr	r3, [pc, #492]	; (44f8 <fsm_work+0x28c>)
    430c:	601a      	str	r2, [r3, #0]
    430e:	4b70      	ldr	r3, [pc, #448]	; (44d0 <fsm_work+0x264>)
    4310:	2200      	movs	r2, #0
    4312:	601a      	str	r2, [r3, #0]
    4314:	4b6f      	ldr	r3, [pc, #444]	; (44d4 <fsm_work+0x268>)
    4316:	2200      	movs	r2, #0
    4318:	601a      	str	r2, [r3, #0]
    431a:	4b77      	ldr	r3, [pc, #476]	; (44f8 <fsm_work+0x28c>)
    431c:	681b      	ldr	r3, [r3, #0]
    431e:	2b00      	cmp	r3, #0
    4320:	d10e      	bne.n	4340 <fsm_work+0xd4>
    4322:	4b76      	ldr	r3, [pc, #472]	; (44fc <fsm_work+0x290>)
    4324:	4a76      	ldr	r2, [pc, #472]	; (4500 <fsm_work+0x294>)
    4326:	601a      	str	r2, [r3, #0]
    4328:	4b76      	ldr	r3, [pc, #472]	; (4504 <fsm_work+0x298>)
    432a:	2204      	movs	r2, #4
    432c:	701a      	strb	r2, [r3, #0]
    432e:	2000      	movs	r0, #0
    4330:	f7fb ff2e 	bl	190 <dut_set_speed>
    4334:	2000      	movs	r0, #0
    4336:	f7fb ff5f 	bl	1f8 <dut_set_torque>
    433a:	f7fb ff1d 	bl	178 <dut_reset_on>
    433e:	e0c2      	b.n	44c6 <fsm_work+0x25a>
    4340:	4b65      	ldr	r3, [pc, #404]	; (44d8 <fsm_work+0x26c>)
    4342:	681a      	ldr	r2, [r3, #0]
    4344:	4b65      	ldr	r3, [pc, #404]	; (44dc <fsm_work+0x270>)
    4346:	601a      	str	r2, [r3, #0]
    4348:	4b63      	ldr	r3, [pc, #396]	; (44d8 <fsm_work+0x26c>)
    434a:	685a      	ldr	r2, [r3, #4]
    434c:	4b64      	ldr	r3, [pc, #400]	; (44e0 <fsm_work+0x274>)
    434e:	601a      	str	r2, [r3, #0]
    4350:	4b64      	ldr	r3, [pc, #400]	; (44e4 <fsm_work+0x278>)
    4352:	681a      	ldr	r2, [r3, #0]
    4354:	4b64      	ldr	r3, [pc, #400]	; (44e8 <fsm_work+0x27c>)
    4356:	601a      	str	r2, [r3, #0]
    4358:	4b62      	ldr	r3, [pc, #392]	; (44e4 <fsm_work+0x278>)
    435a:	685a      	ldr	r2, [r3, #4]
    435c:	4b63      	ldr	r3, [pc, #396]	; (44ec <fsm_work+0x280>)
    435e:	601a      	str	r2, [r3, #0]
    4360:	4b63      	ldr	r3, [pc, #396]	; (44f0 <fsm_work+0x284>)
    4362:	681a      	ldr	r2, [r3, #0]
    4364:	4b63      	ldr	r3, [pc, #396]	; (44f4 <fsm_work+0x288>)
    4366:	601a      	str	r2, [r3, #0]
    4368:	4b58      	ldr	r3, [pc, #352]	; (44cc <fsm_work+0x260>)
    436a:	685b      	ldr	r3, [r3, #4]
    436c:	0018      	movs	r0, r3
    436e:	f7fb ff0f 	bl	190 <dut_set_speed>
    4372:	4b5d      	ldr	r3, [pc, #372]	; (44e8 <fsm_work+0x27c>)
    4374:	681b      	ldr	r3, [r3, #0]
    4376:	0018      	movs	r0, r3
    4378:	f7fb ff3e 	bl	1f8 <dut_set_torque>
    437c:	e0a3      	b.n	44c6 <fsm_work+0x25a>
    437e:	4b54      	ldr	r3, [pc, #336]	; (44d0 <fsm_work+0x264>)
    4380:	681b      	ldr	r3, [r3, #0]
    4382:	2b00      	cmp	r3, #0
    4384:	d03c      	beq.n	4400 <fsm_work+0x194>
    4386:	4b51      	ldr	r3, [pc, #324]	; (44cc <fsm_work+0x260>)
    4388:	689b      	ldr	r3, [r3, #8]
    438a:	001a      	movs	r2, r3
    438c:	697b      	ldr	r3, [r7, #20]
    438e:	1ad3      	subs	r3, r2, r3
    4390:	617b      	str	r3, [r7, #20]
    4392:	4b53      	ldr	r3, [pc, #332]	; (44e0 <fsm_work+0x274>)
    4394:	681b      	ldr	r3, [r3, #0]
    4396:	697a      	ldr	r2, [r7, #20]
    4398:	429a      	cmp	r2, r3
    439a:	db64      	blt.n	4466 <fsm_work+0x1fa>
    439c:	4b4d      	ldr	r3, [pc, #308]	; (44d4 <fsm_work+0x268>)
    439e:	681b      	ldr	r3, [r3, #0]
    43a0:	1c5a      	adds	r2, r3, #1
    43a2:	4b4c      	ldr	r3, [pc, #304]	; (44d4 <fsm_work+0x268>)
    43a4:	601a      	str	r2, [r3, #0]
    43a6:	4b4b      	ldr	r3, [pc, #300]	; (44d4 <fsm_work+0x268>)
    43a8:	681b      	ldr	r3, [r3, #0]
    43aa:	2b03      	cmp	r3, #3
    43ac:	d85b      	bhi.n	4466 <fsm_work+0x1fa>
    43ae:	4b49      	ldr	r3, [pc, #292]	; (44d4 <fsm_work+0x268>)
    43b0:	681a      	ldr	r2, [r3, #0]
    43b2:	4b49      	ldr	r3, [pc, #292]	; (44d8 <fsm_work+0x26c>)
    43b4:	0092      	lsls	r2, r2, #2
    43b6:	58d2      	ldr	r2, [r2, r3]
    43b8:	4b48      	ldr	r3, [pc, #288]	; (44dc <fsm_work+0x270>)
    43ba:	601a      	str	r2, [r3, #0]
    43bc:	4b45      	ldr	r3, [pc, #276]	; (44d4 <fsm_work+0x268>)
    43be:	681b      	ldr	r3, [r3, #0]
    43c0:	1c5a      	adds	r2, r3, #1
    43c2:	4b45      	ldr	r3, [pc, #276]	; (44d8 <fsm_work+0x26c>)
    43c4:	0092      	lsls	r2, r2, #2
    43c6:	58d2      	ldr	r2, [r2, r3]
    43c8:	4b45      	ldr	r3, [pc, #276]	; (44e0 <fsm_work+0x274>)
    43ca:	601a      	str	r2, [r3, #0]
    43cc:	4b41      	ldr	r3, [pc, #260]	; (44d4 <fsm_work+0x268>)
    43ce:	681a      	ldr	r2, [r3, #0]
    43d0:	4b44      	ldr	r3, [pc, #272]	; (44e4 <fsm_work+0x278>)
    43d2:	0092      	lsls	r2, r2, #2
    43d4:	58d3      	ldr	r3, [r2, r3]
    43d6:	425a      	negs	r2, r3
    43d8:	4b43      	ldr	r3, [pc, #268]	; (44e8 <fsm_work+0x27c>)
    43da:	601a      	str	r2, [r3, #0]
    43dc:	4b3d      	ldr	r3, [pc, #244]	; (44d4 <fsm_work+0x268>)
    43de:	681b      	ldr	r3, [r3, #0]
    43e0:	1c5a      	adds	r2, r3, #1
    43e2:	4b40      	ldr	r3, [pc, #256]	; (44e4 <fsm_work+0x278>)
    43e4:	0092      	lsls	r2, r2, #2
    43e6:	58d3      	ldr	r3, [r2, r3]
    43e8:	425a      	negs	r2, r3
    43ea:	4b40      	ldr	r3, [pc, #256]	; (44ec <fsm_work+0x280>)
    43ec:	601a      	str	r2, [r3, #0]
    43ee:	4b39      	ldr	r3, [pc, #228]	; (44d4 <fsm_work+0x268>)
    43f0:	681a      	ldr	r2, [r3, #0]
    43f2:	4b3f      	ldr	r3, [pc, #252]	; (44f0 <fsm_work+0x284>)
    43f4:	0092      	lsls	r2, r2, #2
    43f6:	58d3      	ldr	r3, [r2, r3]
    43f8:	425a      	negs	r2, r3
    43fa:	4b3e      	ldr	r3, [pc, #248]	; (44f4 <fsm_work+0x288>)
    43fc:	601a      	str	r2, [r3, #0]
    43fe:	e032      	b.n	4466 <fsm_work+0x1fa>
    4400:	4b37      	ldr	r3, [pc, #220]	; (44e0 <fsm_work+0x274>)
    4402:	681b      	ldr	r3, [r3, #0]
    4404:	697a      	ldr	r2, [r7, #20]
    4406:	429a      	cmp	r2, r3
    4408:	db2d      	blt.n	4466 <fsm_work+0x1fa>
    440a:	4b32      	ldr	r3, [pc, #200]	; (44d4 <fsm_work+0x268>)
    440c:	681b      	ldr	r3, [r3, #0]
    440e:	1c5a      	adds	r2, r3, #1
    4410:	4b30      	ldr	r3, [pc, #192]	; (44d4 <fsm_work+0x268>)
    4412:	601a      	str	r2, [r3, #0]
    4414:	4b2f      	ldr	r3, [pc, #188]	; (44d4 <fsm_work+0x268>)
    4416:	681b      	ldr	r3, [r3, #0]
    4418:	2b03      	cmp	r3, #3
    441a:	d824      	bhi.n	4466 <fsm_work+0x1fa>
    441c:	4b2d      	ldr	r3, [pc, #180]	; (44d4 <fsm_work+0x268>)
    441e:	681a      	ldr	r2, [r3, #0]
    4420:	4b2d      	ldr	r3, [pc, #180]	; (44d8 <fsm_work+0x26c>)
    4422:	0092      	lsls	r2, r2, #2
    4424:	58d2      	ldr	r2, [r2, r3]
    4426:	4b2d      	ldr	r3, [pc, #180]	; (44dc <fsm_work+0x270>)
    4428:	601a      	str	r2, [r3, #0]
    442a:	4b2a      	ldr	r3, [pc, #168]	; (44d4 <fsm_work+0x268>)
    442c:	681b      	ldr	r3, [r3, #0]
    442e:	1c5a      	adds	r2, r3, #1
    4430:	4b29      	ldr	r3, [pc, #164]	; (44d8 <fsm_work+0x26c>)
    4432:	0092      	lsls	r2, r2, #2
    4434:	58d2      	ldr	r2, [r2, r3]
    4436:	4b2a      	ldr	r3, [pc, #168]	; (44e0 <fsm_work+0x274>)
    4438:	601a      	str	r2, [r3, #0]
    443a:	4b26      	ldr	r3, [pc, #152]	; (44d4 <fsm_work+0x268>)
    443c:	681a      	ldr	r2, [r3, #0]
    443e:	4b29      	ldr	r3, [pc, #164]	; (44e4 <fsm_work+0x278>)
    4440:	0092      	lsls	r2, r2, #2
    4442:	58d2      	ldr	r2, [r2, r3]
    4444:	4b28      	ldr	r3, [pc, #160]	; (44e8 <fsm_work+0x27c>)
    4446:	601a      	str	r2, [r3, #0]
    4448:	4b22      	ldr	r3, [pc, #136]	; (44d4 <fsm_work+0x268>)
    444a:	681b      	ldr	r3, [r3, #0]
    444c:	1c5a      	adds	r2, r3, #1
    444e:	4b25      	ldr	r3, [pc, #148]	; (44e4 <fsm_work+0x278>)
    4450:	0092      	lsls	r2, r2, #2
    4452:	58d2      	ldr	r2, [r2, r3]
    4454:	4b25      	ldr	r3, [pc, #148]	; (44ec <fsm_work+0x280>)
    4456:	601a      	str	r2, [r3, #0]
    4458:	4b1e      	ldr	r3, [pc, #120]	; (44d4 <fsm_work+0x268>)
    445a:	681a      	ldr	r2, [r3, #0]
    445c:	4b24      	ldr	r3, [pc, #144]	; (44f0 <fsm_work+0x284>)
    445e:	0092      	lsls	r2, r2, #2
    4460:	58d2      	ldr	r2, [r2, r3]
    4462:	4b24      	ldr	r3, [pc, #144]	; (44f4 <fsm_work+0x288>)
    4464:	601a      	str	r2, [r3, #0]
    4466:	4b20      	ldr	r3, [pc, #128]	; (44e8 <fsm_work+0x27c>)
    4468:	681b      	ldr	r3, [r3, #0]
    446a:	009a      	lsls	r2, r3, #2
    446c:	4b1b      	ldr	r3, [pc, #108]	; (44dc <fsm_work+0x270>)
    446e:	681b      	ldr	r3, [r3, #0]
    4470:	6979      	ldr	r1, [r7, #20]
    4472:	1ac9      	subs	r1, r1, r3
    4474:	4b1f      	ldr	r3, [pc, #124]	; (44f4 <fsm_work+0x288>)
    4476:	681b      	ldr	r3, [r3, #0]
    4478:	434b      	muls	r3, r1
    447a:	18d3      	adds	r3, r2, r3
    447c:	60bb      	str	r3, [r7, #8]
    447e:	68bb      	ldr	r3, [r7, #8]
    4480:	109b      	asrs	r3, r3, #2
    4482:	0018      	movs	r0, r3
    4484:	f7fb feb8 	bl	1f8 <dut_set_torque>
    4488:	2313      	movs	r3, #19
    448a:	18fb      	adds	r3, r7, r3
    448c:	781b      	ldrb	r3, [r3, #0]
    448e:	2b03      	cmp	r3, #3
    4490:	d10e      	bne.n	44b0 <fsm_work+0x244>
    4492:	4b1a      	ldr	r3, [pc, #104]	; (44fc <fsm_work+0x290>)
    4494:	4a1a      	ldr	r2, [pc, #104]	; (4500 <fsm_work+0x294>)
    4496:	601a      	str	r2, [r3, #0]
    4498:	4b1a      	ldr	r3, [pc, #104]	; (4504 <fsm_work+0x298>)
    449a:	2204      	movs	r2, #4
    449c:	701a      	strb	r2, [r3, #0]
    449e:	2000      	movs	r0, #0
    44a0:	f7fb fe76 	bl	190 <dut_set_speed>
    44a4:	2000      	movs	r0, #0
    44a6:	f7fb fea7 	bl	1f8 <dut_set_torque>
    44aa:	f7fb fe65 	bl	178 <dut_reset_on>
    44ae:	e00a      	b.n	44c6 <fsm_work+0x25a>
    44b0:	2313      	movs	r3, #19
    44b2:	18fb      	adds	r3, r7, r3
    44b4:	781b      	ldrb	r3, [r3, #0]
    44b6:	2b02      	cmp	r3, #2
    44b8:	d105      	bne.n	44c6 <fsm_work+0x25a>
    44ba:	4b10      	ldr	r3, [pc, #64]	; (44fc <fsm_work+0x290>)
    44bc:	4a12      	ldr	r2, [pc, #72]	; (4508 <fsm_work+0x29c>)
    44be:	601a      	str	r2, [r3, #0]
    44c0:	4b10      	ldr	r3, [pc, #64]	; (4504 <fsm_work+0x298>)
    44c2:	2202      	movs	r2, #2
    44c4:	701a      	strb	r2, [r3, #0]
    44c6:	46bd      	mov	sp, r7
    44c8:	b006      	add	sp, #24
    44ca:	bd80      	pop	{r7, pc}
    44cc:	2000601c 	.word	0x2000601c
    44d0:	20006018 	.word	0x20006018
    44d4:	20006014 	.word	0x20006014
    44d8:	20005fd4 	.word	0x20005fd4
    44dc:	20005fc4 	.word	0x20005fc4
    44e0:	20005fc8 	.word	0x20005fc8
    44e4:	20005fe8 	.word	0x20005fe8
    44e8:	20005fcc 	.word	0x20005fcc
    44ec:	20005fd0 	.word	0x20005fd0
    44f0:	20005ffc 	.word	0x20005ffc
    44f4:	20005fc0 	.word	0x20005fc0
    44f8:	20006010 	.word	0x20006010
    44fc:	20000014 	.word	0x20000014
    4500:	0000450d 	.word	0x0000450d
    4504:	20006044 	.word	0x20006044
    4508:	0000456d 	.word	0x0000456d

0000450c <fsm_clean>:
    450c:	b580      	push	{r7, lr}
    450e:	b084      	sub	sp, #16
    4510:	af00      	add	r7, sp, #0
    4512:	6078      	str	r0, [r7, #4]
    4514:	230f      	movs	r3, #15
    4516:	18fb      	adds	r3, r7, r3
    4518:	687a      	ldr	r2, [r7, #4]
    451a:	701a      	strb	r2, [r3, #0]
    451c:	230f      	movs	r3, #15
    451e:	18fb      	adds	r3, r7, r3
    4520:	781b      	ldrb	r3, [r3, #0]
    4522:	2b04      	cmp	r3, #4
    4524:	d112      	bne.n	454c <fsm_clean+0x40>
    4526:	4b0b      	ldr	r3, [pc, #44]	; (4554 <fsm_clean+0x48>)
    4528:	4a0b      	ldr	r2, [pc, #44]	; (4558 <fsm_clean+0x4c>)
    452a:	601a      	str	r2, [r3, #0]
    452c:	4b0b      	ldr	r3, [pc, #44]	; (455c <fsm_clean+0x50>)
    452e:	2200      	movs	r2, #0
    4530:	701a      	strb	r2, [r3, #0]
    4532:	f7fb fe15 	bl	160 <dut_reset_off>
    4536:	f7fb fe09 	bl	14c <dut_pwr_off>
    453a:	4b09      	ldr	r3, [pc, #36]	; (4560 <fsm_clean+0x54>)
    453c:	2200      	movs	r2, #0
    453e:	601a      	str	r2, [r3, #0]
    4540:	4b08      	ldr	r3, [pc, #32]	; (4564 <fsm_clean+0x58>)
    4542:	2200      	movs	r2, #0
    4544:	601a      	str	r2, [r3, #0]
    4546:	4b08      	ldr	r3, [pc, #32]	; (4568 <fsm_clean+0x5c>)
    4548:	2200      	movs	r2, #0
    454a:	601a      	str	r2, [r3, #0]
    454c:	46c0      	nop			; (mov r8, r8)
    454e:	46bd      	mov	sp, r7
    4550:	b004      	add	sp, #16
    4552:	bd80      	pop	{r7, pc}
    4554:	20000014 	.word	0x20000014
    4558:	000040d5 	.word	0x000040d5
    455c:	20006044 	.word	0x20006044
    4560:	20006010 	.word	0x20006010
    4564:	20006014 	.word	0x20006014
    4568:	20006018 	.word	0x20006018

0000456c <fsm_complete>:
    456c:	b580      	push	{r7, lr}
    456e:	b086      	sub	sp, #24
    4570:	af00      	add	r7, sp, #0
    4572:	6078      	str	r0, [r7, #4]
    4574:	2313      	movs	r3, #19
    4576:	18fb      	adds	r3, r7, r3
    4578:	687a      	ldr	r2, [r7, #4]
    457a:	701a      	strb	r2, [r3, #0]
    457c:	687b      	ldr	r3, [r7, #4]
    457e:	121b      	asrs	r3, r3, #8
    4580:	60fb      	str	r3, [r7, #12]
    4582:	2313      	movs	r3, #19
    4584:	18fb      	adds	r3, r7, r3
    4586:	781b      	ldrb	r3, [r3, #0]
    4588:	2b04      	cmp	r3, #4
    458a:	d000      	beq.n	458e <fsm_complete+0x22>
    458c:	e0ea      	b.n	4764 <fsm_complete+0x1f8>
    458e:	68fb      	ldr	r3, [r7, #12]
    4590:	617b      	str	r3, [r7, #20]
    4592:	f7fb fde5 	bl	160 <dut_reset_off>
    4596:	4b84      	ldr	r3, [pc, #528]	; (47a8 <fsm_complete+0x23c>)
    4598:	689b      	ldr	r3, [r3, #8]
    459a:	001a      	movs	r2, r3
    459c:	697b      	ldr	r3, [r7, #20]
    459e:	429a      	cmp	r2, r3
    45a0:	dc29      	bgt.n	45f6 <fsm_complete+0x8a>
    45a2:	4b82      	ldr	r3, [pc, #520]	; (47ac <fsm_complete+0x240>)
    45a4:	2201      	movs	r2, #1
    45a6:	601a      	str	r2, [r3, #0]
    45a8:	4b81      	ldr	r3, [pc, #516]	; (47b0 <fsm_complete+0x244>)
    45aa:	2200      	movs	r2, #0
    45ac:	601a      	str	r2, [r3, #0]
    45ae:	4b81      	ldr	r3, [pc, #516]	; (47b4 <fsm_complete+0x248>)
    45b0:	681a      	ldr	r2, [r3, #0]
    45b2:	4b81      	ldr	r3, [pc, #516]	; (47b8 <fsm_complete+0x24c>)
    45b4:	601a      	str	r2, [r3, #0]
    45b6:	4b7f      	ldr	r3, [pc, #508]	; (47b4 <fsm_complete+0x248>)
    45b8:	685a      	ldr	r2, [r3, #4]
    45ba:	4b80      	ldr	r3, [pc, #512]	; (47bc <fsm_complete+0x250>)
    45bc:	601a      	str	r2, [r3, #0]
    45be:	4b80      	ldr	r3, [pc, #512]	; (47c0 <fsm_complete+0x254>)
    45c0:	681b      	ldr	r3, [r3, #0]
    45c2:	425a      	negs	r2, r3
    45c4:	4b7f      	ldr	r3, [pc, #508]	; (47c4 <fsm_complete+0x258>)
    45c6:	601a      	str	r2, [r3, #0]
    45c8:	4b7d      	ldr	r3, [pc, #500]	; (47c0 <fsm_complete+0x254>)
    45ca:	685b      	ldr	r3, [r3, #4]
    45cc:	425a      	negs	r2, r3
    45ce:	4b7e      	ldr	r3, [pc, #504]	; (47c8 <fsm_complete+0x25c>)
    45d0:	601a      	str	r2, [r3, #0]
    45d2:	4b7e      	ldr	r3, [pc, #504]	; (47cc <fsm_complete+0x260>)
    45d4:	681b      	ldr	r3, [r3, #0]
    45d6:	425a      	negs	r2, r3
    45d8:	4b7d      	ldr	r3, [pc, #500]	; (47d0 <fsm_complete+0x264>)
    45da:	601a      	str	r2, [r3, #0]
    45dc:	4b72      	ldr	r3, [pc, #456]	; (47a8 <fsm_complete+0x23c>)
    45de:	685b      	ldr	r3, [r3, #4]
    45e0:	425b      	negs	r3, r3
    45e2:	0018      	movs	r0, r3
    45e4:	f7fb fdd4 	bl	190 <dut_set_speed>
    45e8:	4b76      	ldr	r3, [pc, #472]	; (47c4 <fsm_complete+0x258>)
    45ea:	681b      	ldr	r3, [r3, #0]
    45ec:	425b      	negs	r3, r3
    45ee:	0018      	movs	r0, r3
    45f0:	f7fb fe02 	bl	1f8 <dut_set_torque>
    45f4:	e0d5      	b.n	47a2 <fsm_complete+0x236>
    45f6:	4b6d      	ldr	r3, [pc, #436]	; (47ac <fsm_complete+0x240>)
    45f8:	681b      	ldr	r3, [r3, #0]
    45fa:	2b00      	cmp	r3, #0
    45fc:	d02d      	beq.n	465a <fsm_complete+0xee>
    45fe:	697b      	ldr	r3, [r7, #20]
    4600:	2b00      	cmp	r3, #0
    4602:	dc2a      	bgt.n	465a <fsm_complete+0xee>
    4604:	4b73      	ldr	r3, [pc, #460]	; (47d4 <fsm_complete+0x268>)
    4606:	681b      	ldr	r3, [r3, #0]
    4608:	1e5a      	subs	r2, r3, #1
    460a:	4b72      	ldr	r3, [pc, #456]	; (47d4 <fsm_complete+0x268>)
    460c:	601a      	str	r2, [r3, #0]
    460e:	4b67      	ldr	r3, [pc, #412]	; (47ac <fsm_complete+0x240>)
    4610:	2200      	movs	r2, #0
    4612:	601a      	str	r2, [r3, #0]
    4614:	4b66      	ldr	r3, [pc, #408]	; (47b0 <fsm_complete+0x244>)
    4616:	2200      	movs	r2, #0
    4618:	601a      	str	r2, [r3, #0]
    461a:	4b6e      	ldr	r3, [pc, #440]	; (47d4 <fsm_complete+0x268>)
    461c:	681b      	ldr	r3, [r3, #0]
    461e:	2b00      	cmp	r3, #0
    4620:	d10e      	bne.n	4640 <fsm_complete+0xd4>
    4622:	4b6d      	ldr	r3, [pc, #436]	; (47d8 <fsm_complete+0x26c>)
    4624:	4a6d      	ldr	r2, [pc, #436]	; (47dc <fsm_complete+0x270>)
    4626:	601a      	str	r2, [r3, #0]
    4628:	4b6d      	ldr	r3, [pc, #436]	; (47e0 <fsm_complete+0x274>)
    462a:	2204      	movs	r2, #4
    462c:	701a      	strb	r2, [r3, #0]
    462e:	2000      	movs	r0, #0
    4630:	f7fb fdae 	bl	190 <dut_set_speed>
    4634:	2000      	movs	r0, #0
    4636:	f7fb fddf 	bl	1f8 <dut_set_torque>
    463a:	f7fb fd9d 	bl	178 <dut_reset_on>
    463e:	e0b0      	b.n	47a2 <fsm_complete+0x236>
    4640:	2000      	movs	r0, #0
    4642:	f7fb fda5 	bl	190 <dut_set_speed>
    4646:	2000      	movs	r0, #0
    4648:	f7fb fdd6 	bl	1f8 <dut_set_torque>
    464c:	4b62      	ldr	r3, [pc, #392]	; (47d8 <fsm_complete+0x26c>)
    464e:	4a65      	ldr	r2, [pc, #404]	; (47e4 <fsm_complete+0x278>)
    4650:	601a      	str	r2, [r3, #0]
    4652:	4b63      	ldr	r3, [pc, #396]	; (47e0 <fsm_complete+0x274>)
    4654:	2203      	movs	r2, #3
    4656:	701a      	strb	r2, [r3, #0]
    4658:	e0a3      	b.n	47a2 <fsm_complete+0x236>
    465a:	4b54      	ldr	r3, [pc, #336]	; (47ac <fsm_complete+0x240>)
    465c:	681b      	ldr	r3, [r3, #0]
    465e:	2b00      	cmp	r3, #0
    4660:	d03c      	beq.n	46dc <fsm_complete+0x170>
    4662:	4b51      	ldr	r3, [pc, #324]	; (47a8 <fsm_complete+0x23c>)
    4664:	689b      	ldr	r3, [r3, #8]
    4666:	001a      	movs	r2, r3
    4668:	697b      	ldr	r3, [r7, #20]
    466a:	1ad3      	subs	r3, r2, r3
    466c:	617b      	str	r3, [r7, #20]
    466e:	4b53      	ldr	r3, [pc, #332]	; (47bc <fsm_complete+0x250>)
    4670:	681b      	ldr	r3, [r3, #0]
    4672:	697a      	ldr	r2, [r7, #20]
    4674:	429a      	cmp	r2, r3
    4676:	db64      	blt.n	4742 <fsm_complete+0x1d6>
    4678:	4b4d      	ldr	r3, [pc, #308]	; (47b0 <fsm_complete+0x244>)
    467a:	681b      	ldr	r3, [r3, #0]
    467c:	1c5a      	adds	r2, r3, #1
    467e:	4b4c      	ldr	r3, [pc, #304]	; (47b0 <fsm_complete+0x244>)
    4680:	601a      	str	r2, [r3, #0]
    4682:	4b4b      	ldr	r3, [pc, #300]	; (47b0 <fsm_complete+0x244>)
    4684:	681b      	ldr	r3, [r3, #0]
    4686:	2b03      	cmp	r3, #3
    4688:	d85b      	bhi.n	4742 <fsm_complete+0x1d6>
    468a:	4b49      	ldr	r3, [pc, #292]	; (47b0 <fsm_complete+0x244>)
    468c:	681a      	ldr	r2, [r3, #0]
    468e:	4b49      	ldr	r3, [pc, #292]	; (47b4 <fsm_complete+0x248>)
    4690:	0092      	lsls	r2, r2, #2
    4692:	58d2      	ldr	r2, [r2, r3]
    4694:	4b48      	ldr	r3, [pc, #288]	; (47b8 <fsm_complete+0x24c>)
    4696:	601a      	str	r2, [r3, #0]
    4698:	4b45      	ldr	r3, [pc, #276]	; (47b0 <fsm_complete+0x244>)
    469a:	681b      	ldr	r3, [r3, #0]
    469c:	1c5a      	adds	r2, r3, #1
    469e:	4b45      	ldr	r3, [pc, #276]	; (47b4 <fsm_complete+0x248>)
    46a0:	0092      	lsls	r2, r2, #2
    46a2:	58d2      	ldr	r2, [r2, r3]
    46a4:	4b45      	ldr	r3, [pc, #276]	; (47bc <fsm_complete+0x250>)
    46a6:	601a      	str	r2, [r3, #0]
    46a8:	4b41      	ldr	r3, [pc, #260]	; (47b0 <fsm_complete+0x244>)
    46aa:	681a      	ldr	r2, [r3, #0]
    46ac:	4b44      	ldr	r3, [pc, #272]	; (47c0 <fsm_complete+0x254>)
    46ae:	0092      	lsls	r2, r2, #2
    46b0:	58d3      	ldr	r3, [r2, r3]
    46b2:	425a      	negs	r2, r3
    46b4:	4b43      	ldr	r3, [pc, #268]	; (47c4 <fsm_complete+0x258>)
    46b6:	601a      	str	r2, [r3, #0]
    46b8:	4b3d      	ldr	r3, [pc, #244]	; (47b0 <fsm_complete+0x244>)
    46ba:	681b      	ldr	r3, [r3, #0]
    46bc:	1c5a      	adds	r2, r3, #1
    46be:	4b40      	ldr	r3, [pc, #256]	; (47c0 <fsm_complete+0x254>)
    46c0:	0092      	lsls	r2, r2, #2
    46c2:	58d3      	ldr	r3, [r2, r3]
    46c4:	425a      	negs	r2, r3
    46c6:	4b40      	ldr	r3, [pc, #256]	; (47c8 <fsm_complete+0x25c>)
    46c8:	601a      	str	r2, [r3, #0]
    46ca:	4b39      	ldr	r3, [pc, #228]	; (47b0 <fsm_complete+0x244>)
    46cc:	681a      	ldr	r2, [r3, #0]
    46ce:	4b3f      	ldr	r3, [pc, #252]	; (47cc <fsm_complete+0x260>)
    46d0:	0092      	lsls	r2, r2, #2
    46d2:	58d3      	ldr	r3, [r2, r3]
    46d4:	425a      	negs	r2, r3
    46d6:	4b3e      	ldr	r3, [pc, #248]	; (47d0 <fsm_complete+0x264>)
    46d8:	601a      	str	r2, [r3, #0]
    46da:	e032      	b.n	4742 <fsm_complete+0x1d6>
    46dc:	4b37      	ldr	r3, [pc, #220]	; (47bc <fsm_complete+0x250>)
    46de:	681b      	ldr	r3, [r3, #0]
    46e0:	697a      	ldr	r2, [r7, #20]
    46e2:	429a      	cmp	r2, r3
    46e4:	db2d      	blt.n	4742 <fsm_complete+0x1d6>
    46e6:	4b32      	ldr	r3, [pc, #200]	; (47b0 <fsm_complete+0x244>)
    46e8:	681b      	ldr	r3, [r3, #0]
    46ea:	1c5a      	adds	r2, r3, #1
    46ec:	4b30      	ldr	r3, [pc, #192]	; (47b0 <fsm_complete+0x244>)
    46ee:	601a      	str	r2, [r3, #0]
    46f0:	4b2f      	ldr	r3, [pc, #188]	; (47b0 <fsm_complete+0x244>)
    46f2:	681b      	ldr	r3, [r3, #0]
    46f4:	2b03      	cmp	r3, #3
    46f6:	d824      	bhi.n	4742 <fsm_complete+0x1d6>
    46f8:	4b2d      	ldr	r3, [pc, #180]	; (47b0 <fsm_complete+0x244>)
    46fa:	681a      	ldr	r2, [r3, #0]
    46fc:	4b2d      	ldr	r3, [pc, #180]	; (47b4 <fsm_complete+0x248>)
    46fe:	0092      	lsls	r2, r2, #2
    4700:	58d2      	ldr	r2, [r2, r3]
    4702:	4b2d      	ldr	r3, [pc, #180]	; (47b8 <fsm_complete+0x24c>)
    4704:	601a      	str	r2, [r3, #0]
    4706:	4b2a      	ldr	r3, [pc, #168]	; (47b0 <fsm_complete+0x244>)
    4708:	681b      	ldr	r3, [r3, #0]
    470a:	1c5a      	adds	r2, r3, #1
    470c:	4b29      	ldr	r3, [pc, #164]	; (47b4 <fsm_complete+0x248>)
    470e:	0092      	lsls	r2, r2, #2
    4710:	58d2      	ldr	r2, [r2, r3]
    4712:	4b2a      	ldr	r3, [pc, #168]	; (47bc <fsm_complete+0x250>)
    4714:	601a      	str	r2, [r3, #0]
    4716:	4b26      	ldr	r3, [pc, #152]	; (47b0 <fsm_complete+0x244>)
    4718:	681a      	ldr	r2, [r3, #0]
    471a:	4b29      	ldr	r3, [pc, #164]	; (47c0 <fsm_complete+0x254>)
    471c:	0092      	lsls	r2, r2, #2
    471e:	58d2      	ldr	r2, [r2, r3]
    4720:	4b28      	ldr	r3, [pc, #160]	; (47c4 <fsm_complete+0x258>)
    4722:	601a      	str	r2, [r3, #0]
    4724:	4b22      	ldr	r3, [pc, #136]	; (47b0 <fsm_complete+0x244>)
    4726:	681b      	ldr	r3, [r3, #0]
    4728:	1c5a      	adds	r2, r3, #1
    472a:	4b25      	ldr	r3, [pc, #148]	; (47c0 <fsm_complete+0x254>)
    472c:	0092      	lsls	r2, r2, #2
    472e:	58d2      	ldr	r2, [r2, r3]
    4730:	4b25      	ldr	r3, [pc, #148]	; (47c8 <fsm_complete+0x25c>)
    4732:	601a      	str	r2, [r3, #0]
    4734:	4b1e      	ldr	r3, [pc, #120]	; (47b0 <fsm_complete+0x244>)
    4736:	681a      	ldr	r2, [r3, #0]
    4738:	4b24      	ldr	r3, [pc, #144]	; (47cc <fsm_complete+0x260>)
    473a:	0092      	lsls	r2, r2, #2
    473c:	58d2      	ldr	r2, [r2, r3]
    473e:	4b24      	ldr	r3, [pc, #144]	; (47d0 <fsm_complete+0x264>)
    4740:	601a      	str	r2, [r3, #0]
    4742:	4b20      	ldr	r3, [pc, #128]	; (47c4 <fsm_complete+0x258>)
    4744:	681b      	ldr	r3, [r3, #0]
    4746:	009a      	lsls	r2, r3, #2
    4748:	4b1b      	ldr	r3, [pc, #108]	; (47b8 <fsm_complete+0x24c>)
    474a:	681b      	ldr	r3, [r3, #0]
    474c:	6979      	ldr	r1, [r7, #20]
    474e:	1ac9      	subs	r1, r1, r3
    4750:	4b1f      	ldr	r3, [pc, #124]	; (47d0 <fsm_complete+0x264>)
    4752:	681b      	ldr	r3, [r3, #0]
    4754:	434b      	muls	r3, r1
    4756:	18d3      	adds	r3, r2, r3
    4758:	60bb      	str	r3, [r7, #8]
    475a:	68bb      	ldr	r3, [r7, #8]
    475c:	109b      	asrs	r3, r3, #2
    475e:	0018      	movs	r0, r3
    4760:	f7fb fd4a 	bl	1f8 <dut_set_torque>
    4764:	2313      	movs	r3, #19
    4766:	18fb      	adds	r3, r7, r3
    4768:	781b      	ldrb	r3, [r3, #0]
    476a:	2b03      	cmp	r3, #3
    476c:	d10e      	bne.n	478c <fsm_complete+0x220>
    476e:	4b1a      	ldr	r3, [pc, #104]	; (47d8 <fsm_complete+0x26c>)
    4770:	4a1a      	ldr	r2, [pc, #104]	; (47dc <fsm_complete+0x270>)
    4772:	601a      	str	r2, [r3, #0]
    4774:	4b1a      	ldr	r3, [pc, #104]	; (47e0 <fsm_complete+0x274>)
    4776:	2204      	movs	r2, #4
    4778:	701a      	strb	r2, [r3, #0]
    477a:	2000      	movs	r0, #0
    477c:	f7fb fd08 	bl	190 <dut_set_speed>
    4780:	2000      	movs	r0, #0
    4782:	f7fb fd39 	bl	1f8 <dut_set_torque>
    4786:	f7fb fcf7 	bl	178 <dut_reset_on>
    478a:	e00a      	b.n	47a2 <fsm_complete+0x236>
    478c:	2313      	movs	r3, #19
    478e:	18fb      	adds	r3, r7, r3
    4790:	781b      	ldrb	r3, [r3, #0]
    4792:	2b02      	cmp	r3, #2
    4794:	d105      	bne.n	47a2 <fsm_complete+0x236>
    4796:	4b10      	ldr	r3, [pc, #64]	; (47d8 <fsm_complete+0x26c>)
    4798:	4a13      	ldr	r2, [pc, #76]	; (47e8 <fsm_complete+0x27c>)
    479a:	601a      	str	r2, [r3, #0]
    479c:	4b10      	ldr	r3, [pc, #64]	; (47e0 <fsm_complete+0x274>)
    479e:	2202      	movs	r2, #2
    47a0:	701a      	strb	r2, [r3, #0]
    47a2:	46bd      	mov	sp, r7
    47a4:	b006      	add	sp, #24
    47a6:	bd80      	pop	{r7, pc}
    47a8:	2000601c 	.word	0x2000601c
    47ac:	20006018 	.word	0x20006018
    47b0:	20006014 	.word	0x20006014
    47b4:	20005fd4 	.word	0x20005fd4
    47b8:	20005fc4 	.word	0x20005fc4
    47bc:	20005fc8 	.word	0x20005fc8
    47c0:	20005fe8 	.word	0x20005fe8
    47c4:	20005fcc 	.word	0x20005fcc
    47c8:	20005fd0 	.word	0x20005fd0
    47cc:	20005ffc 	.word	0x20005ffc
    47d0:	20005fc0 	.word	0x20005fc0
    47d4:	20006010 	.word	0x20006010
    47d8:	20000014 	.word	0x20000014
    47dc:	0000450d 	.word	0x0000450d
    47e0:	20006044 	.word	0x20006044
    47e4:	000047ed 	.word	0x000047ed
    47e8:	0000456d 	.word	0x0000456d

000047ec <fsm_wait>:
    47ec:	b580      	push	{r7, lr}
    47ee:	b084      	sub	sp, #16
    47f0:	af00      	add	r7, sp, #0
    47f2:	6078      	str	r0, [r7, #4]
    47f4:	230f      	movs	r3, #15
    47f6:	18fb      	adds	r3, r7, r3
    47f8:	687a      	ldr	r2, [r7, #4]
    47fa:	701a      	strb	r2, [r3, #0]
    47fc:	230f      	movs	r3, #15
    47fe:	18fb      	adds	r3, r7, r3
    4800:	781b      	ldrb	r3, [r3, #0]
    4802:	2b01      	cmp	r3, #1
    4804:	d12b      	bne.n	485e <fsm_wait+0x72>
    4806:	4b1e      	ldr	r3, [pc, #120]	; (4880 <fsm_wait+0x94>)
    4808:	4a1e      	ldr	r2, [pc, #120]	; (4884 <fsm_wait+0x98>)
    480a:	601a      	str	r2, [r3, #0]
    480c:	4b1e      	ldr	r3, [pc, #120]	; (4888 <fsm_wait+0x9c>)
    480e:	2201      	movs	r2, #1
    4810:	701a      	strb	r2, [r3, #0]
    4812:	4b1e      	ldr	r3, [pc, #120]	; (488c <fsm_wait+0xa0>)
    4814:	2200      	movs	r2, #0
    4816:	601a      	str	r2, [r3, #0]
    4818:	4b1d      	ldr	r3, [pc, #116]	; (4890 <fsm_wait+0xa4>)
    481a:	2200      	movs	r2, #0
    481c:	601a      	str	r2, [r3, #0]
    481e:	4b1d      	ldr	r3, [pc, #116]	; (4894 <fsm_wait+0xa8>)
    4820:	681a      	ldr	r2, [r3, #0]
    4822:	4b1d      	ldr	r3, [pc, #116]	; (4898 <fsm_wait+0xac>)
    4824:	601a      	str	r2, [r3, #0]
    4826:	4b1b      	ldr	r3, [pc, #108]	; (4894 <fsm_wait+0xa8>)
    4828:	685a      	ldr	r2, [r3, #4]
    482a:	4b1c      	ldr	r3, [pc, #112]	; (489c <fsm_wait+0xb0>)
    482c:	601a      	str	r2, [r3, #0]
    482e:	4b1c      	ldr	r3, [pc, #112]	; (48a0 <fsm_wait+0xb4>)
    4830:	681a      	ldr	r2, [r3, #0]
    4832:	4b1c      	ldr	r3, [pc, #112]	; (48a4 <fsm_wait+0xb8>)
    4834:	601a      	str	r2, [r3, #0]
    4836:	4b1a      	ldr	r3, [pc, #104]	; (48a0 <fsm_wait+0xb4>)
    4838:	685a      	ldr	r2, [r3, #4]
    483a:	4b1b      	ldr	r3, [pc, #108]	; (48a8 <fsm_wait+0xbc>)
    483c:	601a      	str	r2, [r3, #0]
    483e:	4b1b      	ldr	r3, [pc, #108]	; (48ac <fsm_wait+0xc0>)
    4840:	681a      	ldr	r2, [r3, #0]
    4842:	4b1b      	ldr	r3, [pc, #108]	; (48b0 <fsm_wait+0xc4>)
    4844:	601a      	str	r2, [r3, #0]
    4846:	4b1b      	ldr	r3, [pc, #108]	; (48b4 <fsm_wait+0xc8>)
    4848:	685b      	ldr	r3, [r3, #4]
    484a:	0018      	movs	r0, r3
    484c:	f7fb fca0 	bl	190 <dut_set_speed>
    4850:	4b14      	ldr	r3, [pc, #80]	; (48a4 <fsm_wait+0xb8>)
    4852:	681b      	ldr	r3, [r3, #0]
    4854:	0018      	movs	r0, r3
    4856:	f7fb fccf 	bl	1f8 <dut_set_torque>
    485a:	f7fb fc8d 	bl	178 <dut_reset_on>
    485e:	230f      	movs	r3, #15
    4860:	18fb      	adds	r3, r7, r3
    4862:	781b      	ldrb	r3, [r3, #0]
    4864:	2b03      	cmp	r3, #3
    4866:	d107      	bne.n	4878 <fsm_wait+0x8c>
    4868:	4b05      	ldr	r3, [pc, #20]	; (4880 <fsm_wait+0x94>)
    486a:	4a13      	ldr	r2, [pc, #76]	; (48b8 <fsm_wait+0xcc>)
    486c:	601a      	str	r2, [r3, #0]
    486e:	4b06      	ldr	r3, [pc, #24]	; (4888 <fsm_wait+0x9c>)
    4870:	2204      	movs	r2, #4
    4872:	701a      	strb	r2, [r3, #0]
    4874:	f7fb fc80 	bl	178 <dut_reset_on>
    4878:	46c0      	nop			; (mov r8, r8)
    487a:	46bd      	mov	sp, r7
    487c:	b004      	add	sp, #16
    487e:	bd80      	pop	{r7, pc}
    4880:	20000014 	.word	0x20000014
    4884:	0000426d 	.word	0x0000426d
    4888:	20006044 	.word	0x20006044
    488c:	20006014 	.word	0x20006014
    4890:	20006018 	.word	0x20006018
    4894:	20005fd4 	.word	0x20005fd4
    4898:	20005fc4 	.word	0x20005fc4
    489c:	20005fc8 	.word	0x20005fc8
    48a0:	20005fe8 	.word	0x20005fe8
    48a4:	20005fcc 	.word	0x20005fcc
    48a8:	20005fd0 	.word	0x20005fd0
    48ac:	20005ffc 	.word	0x20005ffc
    48b0:	20005fc0 	.word	0x20005fc0
    48b4:	2000601c 	.word	0x2000601c
    48b8:	0000450d 	.word	0x0000450d

000048bc <__aeabi_uidiv>:
    48bc:	2200      	movs	r2, #0
    48be:	0843      	lsrs	r3, r0, #1
    48c0:	428b      	cmp	r3, r1
    48c2:	d374      	bcc.n	49ae <__aeabi_uidiv+0xf2>
    48c4:	0903      	lsrs	r3, r0, #4
    48c6:	428b      	cmp	r3, r1
    48c8:	d35f      	bcc.n	498a <__aeabi_uidiv+0xce>
    48ca:	0a03      	lsrs	r3, r0, #8
    48cc:	428b      	cmp	r3, r1
    48ce:	d344      	bcc.n	495a <__aeabi_uidiv+0x9e>
    48d0:	0b03      	lsrs	r3, r0, #12
    48d2:	428b      	cmp	r3, r1
    48d4:	d328      	bcc.n	4928 <__aeabi_uidiv+0x6c>
    48d6:	0c03      	lsrs	r3, r0, #16
    48d8:	428b      	cmp	r3, r1
    48da:	d30d      	bcc.n	48f8 <__aeabi_uidiv+0x3c>
    48dc:	22ff      	movs	r2, #255	; 0xff
    48de:	0209      	lsls	r1, r1, #8
    48e0:	ba12      	rev	r2, r2
    48e2:	0c03      	lsrs	r3, r0, #16
    48e4:	428b      	cmp	r3, r1
    48e6:	d302      	bcc.n	48ee <__aeabi_uidiv+0x32>
    48e8:	1212      	asrs	r2, r2, #8
    48ea:	0209      	lsls	r1, r1, #8
    48ec:	d065      	beq.n	49ba <__aeabi_uidiv+0xfe>
    48ee:	0b03      	lsrs	r3, r0, #12
    48f0:	428b      	cmp	r3, r1
    48f2:	d319      	bcc.n	4928 <__aeabi_uidiv+0x6c>
    48f4:	e000      	b.n	48f8 <__aeabi_uidiv+0x3c>
    48f6:	0a09      	lsrs	r1, r1, #8
    48f8:	0bc3      	lsrs	r3, r0, #15
    48fa:	428b      	cmp	r3, r1
    48fc:	d301      	bcc.n	4902 <__aeabi_uidiv+0x46>
    48fe:	03cb      	lsls	r3, r1, #15
    4900:	1ac0      	subs	r0, r0, r3
    4902:	4152      	adcs	r2, r2
    4904:	0b83      	lsrs	r3, r0, #14
    4906:	428b      	cmp	r3, r1
    4908:	d301      	bcc.n	490e <__aeabi_uidiv+0x52>
    490a:	038b      	lsls	r3, r1, #14
    490c:	1ac0      	subs	r0, r0, r3
    490e:	4152      	adcs	r2, r2
    4910:	0b43      	lsrs	r3, r0, #13
    4912:	428b      	cmp	r3, r1
    4914:	d301      	bcc.n	491a <__aeabi_uidiv+0x5e>
    4916:	034b      	lsls	r3, r1, #13
    4918:	1ac0      	subs	r0, r0, r3
    491a:	4152      	adcs	r2, r2
    491c:	0b03      	lsrs	r3, r0, #12
    491e:	428b      	cmp	r3, r1
    4920:	d301      	bcc.n	4926 <__aeabi_uidiv+0x6a>
    4922:	030b      	lsls	r3, r1, #12
    4924:	1ac0      	subs	r0, r0, r3
    4926:	4152      	adcs	r2, r2
    4928:	0ac3      	lsrs	r3, r0, #11
    492a:	428b      	cmp	r3, r1
    492c:	d301      	bcc.n	4932 <__aeabi_uidiv+0x76>
    492e:	02cb      	lsls	r3, r1, #11
    4930:	1ac0      	subs	r0, r0, r3
    4932:	4152      	adcs	r2, r2
    4934:	0a83      	lsrs	r3, r0, #10
    4936:	428b      	cmp	r3, r1
    4938:	d301      	bcc.n	493e <__aeabi_uidiv+0x82>
    493a:	028b      	lsls	r3, r1, #10
    493c:	1ac0      	subs	r0, r0, r3
    493e:	4152      	adcs	r2, r2
    4940:	0a43      	lsrs	r3, r0, #9
    4942:	428b      	cmp	r3, r1
    4944:	d301      	bcc.n	494a <__aeabi_uidiv+0x8e>
    4946:	024b      	lsls	r3, r1, #9
    4948:	1ac0      	subs	r0, r0, r3
    494a:	4152      	adcs	r2, r2
    494c:	0a03      	lsrs	r3, r0, #8
    494e:	428b      	cmp	r3, r1
    4950:	d301      	bcc.n	4956 <__aeabi_uidiv+0x9a>
    4952:	020b      	lsls	r3, r1, #8
    4954:	1ac0      	subs	r0, r0, r3
    4956:	4152      	adcs	r2, r2
    4958:	d2cd      	bcs.n	48f6 <__aeabi_uidiv+0x3a>
    495a:	09c3      	lsrs	r3, r0, #7
    495c:	428b      	cmp	r3, r1
    495e:	d301      	bcc.n	4964 <__aeabi_uidiv+0xa8>
    4960:	01cb      	lsls	r3, r1, #7
    4962:	1ac0      	subs	r0, r0, r3
    4964:	4152      	adcs	r2, r2
    4966:	0983      	lsrs	r3, r0, #6
    4968:	428b      	cmp	r3, r1
    496a:	d301      	bcc.n	4970 <__aeabi_uidiv+0xb4>
    496c:	018b      	lsls	r3, r1, #6
    496e:	1ac0      	subs	r0, r0, r3
    4970:	4152      	adcs	r2, r2
    4972:	0943      	lsrs	r3, r0, #5
    4974:	428b      	cmp	r3, r1
    4976:	d301      	bcc.n	497c <__aeabi_uidiv+0xc0>
    4978:	014b      	lsls	r3, r1, #5
    497a:	1ac0      	subs	r0, r0, r3
    497c:	4152      	adcs	r2, r2
    497e:	0903      	lsrs	r3, r0, #4
    4980:	428b      	cmp	r3, r1
    4982:	d301      	bcc.n	4988 <__aeabi_uidiv+0xcc>
    4984:	010b      	lsls	r3, r1, #4
    4986:	1ac0      	subs	r0, r0, r3
    4988:	4152      	adcs	r2, r2
    498a:	08c3      	lsrs	r3, r0, #3
    498c:	428b      	cmp	r3, r1
    498e:	d301      	bcc.n	4994 <__aeabi_uidiv+0xd8>
    4990:	00cb      	lsls	r3, r1, #3
    4992:	1ac0      	subs	r0, r0, r3
    4994:	4152      	adcs	r2, r2
    4996:	0883      	lsrs	r3, r0, #2
    4998:	428b      	cmp	r3, r1
    499a:	d301      	bcc.n	49a0 <__aeabi_uidiv+0xe4>
    499c:	008b      	lsls	r3, r1, #2
    499e:	1ac0      	subs	r0, r0, r3
    49a0:	4152      	adcs	r2, r2
    49a2:	0843      	lsrs	r3, r0, #1
    49a4:	428b      	cmp	r3, r1
    49a6:	d301      	bcc.n	49ac <__aeabi_uidiv+0xf0>
    49a8:	004b      	lsls	r3, r1, #1
    49aa:	1ac0      	subs	r0, r0, r3
    49ac:	4152      	adcs	r2, r2
    49ae:	1a41      	subs	r1, r0, r1
    49b0:	d200      	bcs.n	49b4 <__aeabi_uidiv+0xf8>
    49b2:	4601      	mov	r1, r0
    49b4:	4152      	adcs	r2, r2
    49b6:	4610      	mov	r0, r2
    49b8:	4770      	bx	lr
    49ba:	e7ff      	b.n	49bc <__aeabi_uidiv+0x100>
    49bc:	b501      	push	{r0, lr}
    49be:	2000      	movs	r0, #0
    49c0:	f000 f8f0 	bl	4ba4 <__aeabi_idiv0>
    49c4:	bd02      	pop	{r1, pc}
    49c6:	46c0      	nop			; (mov r8, r8)

000049c8 <__aeabi_uidivmod>:
    49c8:	2900      	cmp	r1, #0
    49ca:	d0f7      	beq.n	49bc <__aeabi_uidiv+0x100>
    49cc:	e776      	b.n	48bc <__aeabi_uidiv>
    49ce:	4770      	bx	lr

000049d0 <__aeabi_idiv>:
    49d0:	4603      	mov	r3, r0
    49d2:	430b      	orrs	r3, r1
    49d4:	d47f      	bmi.n	4ad6 <__aeabi_idiv+0x106>
    49d6:	2200      	movs	r2, #0
    49d8:	0843      	lsrs	r3, r0, #1
    49da:	428b      	cmp	r3, r1
    49dc:	d374      	bcc.n	4ac8 <__aeabi_idiv+0xf8>
    49de:	0903      	lsrs	r3, r0, #4
    49e0:	428b      	cmp	r3, r1
    49e2:	d35f      	bcc.n	4aa4 <__aeabi_idiv+0xd4>
    49e4:	0a03      	lsrs	r3, r0, #8
    49e6:	428b      	cmp	r3, r1
    49e8:	d344      	bcc.n	4a74 <__aeabi_idiv+0xa4>
    49ea:	0b03      	lsrs	r3, r0, #12
    49ec:	428b      	cmp	r3, r1
    49ee:	d328      	bcc.n	4a42 <__aeabi_idiv+0x72>
    49f0:	0c03      	lsrs	r3, r0, #16
    49f2:	428b      	cmp	r3, r1
    49f4:	d30d      	bcc.n	4a12 <__aeabi_idiv+0x42>
    49f6:	22ff      	movs	r2, #255	; 0xff
    49f8:	0209      	lsls	r1, r1, #8
    49fa:	ba12      	rev	r2, r2
    49fc:	0c03      	lsrs	r3, r0, #16
    49fe:	428b      	cmp	r3, r1
    4a00:	d302      	bcc.n	4a08 <__aeabi_idiv+0x38>
    4a02:	1212      	asrs	r2, r2, #8
    4a04:	0209      	lsls	r1, r1, #8
    4a06:	d065      	beq.n	4ad4 <__aeabi_idiv+0x104>
    4a08:	0b03      	lsrs	r3, r0, #12
    4a0a:	428b      	cmp	r3, r1
    4a0c:	d319      	bcc.n	4a42 <__aeabi_idiv+0x72>
    4a0e:	e000      	b.n	4a12 <__aeabi_idiv+0x42>
    4a10:	0a09      	lsrs	r1, r1, #8
    4a12:	0bc3      	lsrs	r3, r0, #15
    4a14:	428b      	cmp	r3, r1
    4a16:	d301      	bcc.n	4a1c <__aeabi_idiv+0x4c>
    4a18:	03cb      	lsls	r3, r1, #15
    4a1a:	1ac0      	subs	r0, r0, r3
    4a1c:	4152      	adcs	r2, r2
    4a1e:	0b83      	lsrs	r3, r0, #14
    4a20:	428b      	cmp	r3, r1
    4a22:	d301      	bcc.n	4a28 <__aeabi_idiv+0x58>
    4a24:	038b      	lsls	r3, r1, #14
    4a26:	1ac0      	subs	r0, r0, r3
    4a28:	4152      	adcs	r2, r2
    4a2a:	0b43      	lsrs	r3, r0, #13
    4a2c:	428b      	cmp	r3, r1
    4a2e:	d301      	bcc.n	4a34 <__aeabi_idiv+0x64>
    4a30:	034b      	lsls	r3, r1, #13
    4a32:	1ac0      	subs	r0, r0, r3
    4a34:	4152      	adcs	r2, r2
    4a36:	0b03      	lsrs	r3, r0, #12
    4a38:	428b      	cmp	r3, r1
    4a3a:	d301      	bcc.n	4a40 <__aeabi_idiv+0x70>
    4a3c:	030b      	lsls	r3, r1, #12
    4a3e:	1ac0      	subs	r0, r0, r3
    4a40:	4152      	adcs	r2, r2
    4a42:	0ac3      	lsrs	r3, r0, #11
    4a44:	428b      	cmp	r3, r1
    4a46:	d301      	bcc.n	4a4c <__aeabi_idiv+0x7c>
    4a48:	02cb      	lsls	r3, r1, #11
    4a4a:	1ac0      	subs	r0, r0, r3
    4a4c:	4152      	adcs	r2, r2
    4a4e:	0a83      	lsrs	r3, r0, #10
    4a50:	428b      	cmp	r3, r1
    4a52:	d301      	bcc.n	4a58 <__aeabi_idiv+0x88>
    4a54:	028b      	lsls	r3, r1, #10
    4a56:	1ac0      	subs	r0, r0, r3
    4a58:	4152      	adcs	r2, r2
    4a5a:	0a43      	lsrs	r3, r0, #9
    4a5c:	428b      	cmp	r3, r1
    4a5e:	d301      	bcc.n	4a64 <__aeabi_idiv+0x94>
    4a60:	024b      	lsls	r3, r1, #9
    4a62:	1ac0      	subs	r0, r0, r3
    4a64:	4152      	adcs	r2, r2
    4a66:	0a03      	lsrs	r3, r0, #8
    4a68:	428b      	cmp	r3, r1
    4a6a:	d301      	bcc.n	4a70 <__aeabi_idiv+0xa0>
    4a6c:	020b      	lsls	r3, r1, #8
    4a6e:	1ac0      	subs	r0, r0, r3
    4a70:	4152      	adcs	r2, r2
    4a72:	d2cd      	bcs.n	4a10 <__aeabi_idiv+0x40>
    4a74:	09c3      	lsrs	r3, r0, #7
    4a76:	428b      	cmp	r3, r1
    4a78:	d301      	bcc.n	4a7e <__aeabi_idiv+0xae>
    4a7a:	01cb      	lsls	r3, r1, #7
    4a7c:	1ac0      	subs	r0, r0, r3
    4a7e:	4152      	adcs	r2, r2
    4a80:	0983      	lsrs	r3, r0, #6
    4a82:	428b      	cmp	r3, r1
    4a84:	d301      	bcc.n	4a8a <__aeabi_idiv+0xba>
    4a86:	018b      	lsls	r3, r1, #6
    4a88:	1ac0      	subs	r0, r0, r3
    4a8a:	4152      	adcs	r2, r2
    4a8c:	0943      	lsrs	r3, r0, #5
    4a8e:	428b      	cmp	r3, r1
    4a90:	d301      	bcc.n	4a96 <__aeabi_idiv+0xc6>
    4a92:	014b      	lsls	r3, r1, #5
    4a94:	1ac0      	subs	r0, r0, r3
    4a96:	4152      	adcs	r2, r2
    4a98:	0903      	lsrs	r3, r0, #4
    4a9a:	428b      	cmp	r3, r1
    4a9c:	d301      	bcc.n	4aa2 <__aeabi_idiv+0xd2>
    4a9e:	010b      	lsls	r3, r1, #4
    4aa0:	1ac0      	subs	r0, r0, r3
    4aa2:	4152      	adcs	r2, r2
    4aa4:	08c3      	lsrs	r3, r0, #3
    4aa6:	428b      	cmp	r3, r1
    4aa8:	d301      	bcc.n	4aae <__aeabi_idiv+0xde>
    4aaa:	00cb      	lsls	r3, r1, #3
    4aac:	1ac0      	subs	r0, r0, r3
    4aae:	4152      	adcs	r2, r2
    4ab0:	0883      	lsrs	r3, r0, #2
    4ab2:	428b      	cmp	r3, r1
    4ab4:	d301      	bcc.n	4aba <__aeabi_idiv+0xea>
    4ab6:	008b      	lsls	r3, r1, #2
    4ab8:	1ac0      	subs	r0, r0, r3
    4aba:	4152      	adcs	r2, r2
    4abc:	0843      	lsrs	r3, r0, #1
    4abe:	428b      	cmp	r3, r1
    4ac0:	d301      	bcc.n	4ac6 <__aeabi_idiv+0xf6>
    4ac2:	004b      	lsls	r3, r1, #1
    4ac4:	1ac0      	subs	r0, r0, r3
    4ac6:	4152      	adcs	r2, r2
    4ac8:	1a41      	subs	r1, r0, r1
    4aca:	d200      	bcs.n	4ace <__aeabi_idiv+0xfe>
    4acc:	4601      	mov	r1, r0
    4ace:	4152      	adcs	r2, r2
    4ad0:	4610      	mov	r0, r2
    4ad2:	4770      	bx	lr
    4ad4:	e05d      	b.n	4b92 <__aeabi_idiv+0x1c2>
    4ad6:	0fca      	lsrs	r2, r1, #31
    4ad8:	d000      	beq.n	4adc <__aeabi_idiv+0x10c>
    4ada:	4249      	negs	r1, r1
    4adc:	1003      	asrs	r3, r0, #32
    4ade:	d300      	bcc.n	4ae2 <__aeabi_idiv+0x112>
    4ae0:	4240      	negs	r0, r0
    4ae2:	4053      	eors	r3, r2
    4ae4:	2200      	movs	r2, #0
    4ae6:	469c      	mov	ip, r3
    4ae8:	0903      	lsrs	r3, r0, #4
    4aea:	428b      	cmp	r3, r1
    4aec:	d32d      	bcc.n	4b4a <__aeabi_idiv+0x17a>
    4aee:	0a03      	lsrs	r3, r0, #8
    4af0:	428b      	cmp	r3, r1
    4af2:	d312      	bcc.n	4b1a <__aeabi_idiv+0x14a>
    4af4:	22fc      	movs	r2, #252	; 0xfc
    4af6:	0189      	lsls	r1, r1, #6
    4af8:	ba12      	rev	r2, r2
    4afa:	0a03      	lsrs	r3, r0, #8
    4afc:	428b      	cmp	r3, r1
    4afe:	d30c      	bcc.n	4b1a <__aeabi_idiv+0x14a>
    4b00:	0189      	lsls	r1, r1, #6
    4b02:	1192      	asrs	r2, r2, #6
    4b04:	428b      	cmp	r3, r1
    4b06:	d308      	bcc.n	4b1a <__aeabi_idiv+0x14a>
    4b08:	0189      	lsls	r1, r1, #6
    4b0a:	1192      	asrs	r2, r2, #6
    4b0c:	428b      	cmp	r3, r1
    4b0e:	d304      	bcc.n	4b1a <__aeabi_idiv+0x14a>
    4b10:	0189      	lsls	r1, r1, #6
    4b12:	d03a      	beq.n	4b8a <__aeabi_idiv+0x1ba>
    4b14:	1192      	asrs	r2, r2, #6
    4b16:	e000      	b.n	4b1a <__aeabi_idiv+0x14a>
    4b18:	0989      	lsrs	r1, r1, #6
    4b1a:	09c3      	lsrs	r3, r0, #7
    4b1c:	428b      	cmp	r3, r1
    4b1e:	d301      	bcc.n	4b24 <__aeabi_idiv+0x154>
    4b20:	01cb      	lsls	r3, r1, #7
    4b22:	1ac0      	subs	r0, r0, r3
    4b24:	4152      	adcs	r2, r2
    4b26:	0983      	lsrs	r3, r0, #6
    4b28:	428b      	cmp	r3, r1
    4b2a:	d301      	bcc.n	4b30 <__aeabi_idiv+0x160>
    4b2c:	018b      	lsls	r3, r1, #6
    4b2e:	1ac0      	subs	r0, r0, r3
    4b30:	4152      	adcs	r2, r2
    4b32:	0943      	lsrs	r3, r0, #5
    4b34:	428b      	cmp	r3, r1
    4b36:	d301      	bcc.n	4b3c <__aeabi_idiv+0x16c>
    4b38:	014b      	lsls	r3, r1, #5
    4b3a:	1ac0      	subs	r0, r0, r3
    4b3c:	4152      	adcs	r2, r2
    4b3e:	0903      	lsrs	r3, r0, #4
    4b40:	428b      	cmp	r3, r1
    4b42:	d301      	bcc.n	4b48 <__aeabi_idiv+0x178>
    4b44:	010b      	lsls	r3, r1, #4
    4b46:	1ac0      	subs	r0, r0, r3
    4b48:	4152      	adcs	r2, r2
    4b4a:	08c3      	lsrs	r3, r0, #3
    4b4c:	428b      	cmp	r3, r1
    4b4e:	d301      	bcc.n	4b54 <__aeabi_idiv+0x184>
    4b50:	00cb      	lsls	r3, r1, #3
    4b52:	1ac0      	subs	r0, r0, r3
    4b54:	4152      	adcs	r2, r2
    4b56:	0883      	lsrs	r3, r0, #2
    4b58:	428b      	cmp	r3, r1
    4b5a:	d301      	bcc.n	4b60 <__aeabi_idiv+0x190>
    4b5c:	008b      	lsls	r3, r1, #2
    4b5e:	1ac0      	subs	r0, r0, r3
    4b60:	4152      	adcs	r2, r2
    4b62:	d2d9      	bcs.n	4b18 <__aeabi_idiv+0x148>
    4b64:	0843      	lsrs	r3, r0, #1
    4b66:	428b      	cmp	r3, r1
    4b68:	d301      	bcc.n	4b6e <__aeabi_idiv+0x19e>
    4b6a:	004b      	lsls	r3, r1, #1
    4b6c:	1ac0      	subs	r0, r0, r3
    4b6e:	4152      	adcs	r2, r2
    4b70:	1a41      	subs	r1, r0, r1
    4b72:	d200      	bcs.n	4b76 <__aeabi_idiv+0x1a6>
    4b74:	4601      	mov	r1, r0
    4b76:	4663      	mov	r3, ip
    4b78:	4152      	adcs	r2, r2
    4b7a:	105b      	asrs	r3, r3, #1
    4b7c:	4610      	mov	r0, r2
    4b7e:	d301      	bcc.n	4b84 <__aeabi_idiv+0x1b4>
    4b80:	4240      	negs	r0, r0
    4b82:	2b00      	cmp	r3, #0
    4b84:	d500      	bpl.n	4b88 <__aeabi_idiv+0x1b8>
    4b86:	4249      	negs	r1, r1
    4b88:	4770      	bx	lr
    4b8a:	4663      	mov	r3, ip
    4b8c:	105b      	asrs	r3, r3, #1
    4b8e:	d300      	bcc.n	4b92 <__aeabi_idiv+0x1c2>
    4b90:	4240      	negs	r0, r0
    4b92:	b501      	push	{r0, lr}
    4b94:	2000      	movs	r0, #0
    4b96:	f000 f805 	bl	4ba4 <__aeabi_idiv0>
    4b9a:	bd02      	pop	{r1, pc}

00004b9c <__aeabi_idivmod>:
    4b9c:	2900      	cmp	r1, #0
    4b9e:	d0f8      	beq.n	4b92 <__aeabi_idiv+0x1c2>
    4ba0:	e716      	b.n	49d0 <__aeabi_idiv>
    4ba2:	4770      	bx	lr

00004ba4 <__aeabi_idiv0>:
    4ba4:	4770      	bx	lr
    4ba6:	46c0      	nop			; (mov r8, r8)

00004ba8 <rt_set_PSP>:
    4ba8:	f380 8809 	msr	PSP, r0
    4bac:	4770      	bx	lr

00004bae <rt_get_PSP>:
    4bae:	f3ef 8009 	mrs	r0, PSP
    4bb2:	4770      	bx	lr

00004bb4 <os_set_env>:
    4bb4:	4668      	mov	r0, sp
    4bb6:	f380 8809 	msr	PSP, r0
    4bba:	484a      	ldr	r0, [pc, #296]	; (4ce4 <OS_Tick_Handler+0xa>)
    4bbc:	7800      	ldrb	r0, [r0, #0]
    4bbe:	07c0      	lsls	r0, r0, #31
    4bc0:	d103      	bne.n	4bca <PrivilegedE>
    4bc2:	2003      	movs	r0, #3
    4bc4:	f380 8814 	msr	CONTROL, r0
    4bc8:	4770      	bx	lr

00004bca <PrivilegedE>:
    4bca:	2002      	movs	r0, #2
    4bcc:	f380 8814 	msr	CONTROL, r0
    4bd0:	4770      	bx	lr

00004bd2 <_alloc_box>:
    4bd2:	4b45      	ldr	r3, [pc, #276]	; (4ce8 <OS_Tick_Handler+0xe>)
    4bd4:	469c      	mov	ip, r3
    4bd6:	f3ef 8305 	mrs	r3, IPSR
    4bda:	061b      	lsls	r3, r3, #24
    4bdc:	d105      	bne.n	4bea <PrivilegedA>
    4bde:	f3ef 8314 	mrs	r3, CONTROL
    4be2:	07db      	lsls	r3, r3, #31
    4be4:	d001      	beq.n	4bea <PrivilegedA>
    4be6:	df00      	svc	0
    4be8:	4770      	bx	lr

00004bea <PrivilegedA>:
    4bea:	4760      	bx	ip

00004bec <_free_box>:
    4bec:	4b3f      	ldr	r3, [pc, #252]	; (4cec <OS_Tick_Handler+0x12>)
    4bee:	469c      	mov	ip, r3
    4bf0:	f3ef 8305 	mrs	r3, IPSR
    4bf4:	061b      	lsls	r3, r3, #24
    4bf6:	d105      	bne.n	4c04 <PrivilegedF>
    4bf8:	f3ef 8314 	mrs	r3, CONTROL
    4bfc:	07db      	lsls	r3, r3, #31
    4bfe:	d001      	beq.n	4c04 <PrivilegedF>
    4c00:	df00      	svc	0
    4c02:	4770      	bx	lr

00004c04 <PrivilegedF>:
    4c04:	4760      	bx	ip

00004c06 <SVC_Handler>:
    4c06:	f3ef 8009 	mrs	r0, PSP
    4c0a:	6981      	ldr	r1, [r0, #24]
    4c0c:	3902      	subs	r1, #2
    4c0e:	7809      	ldrb	r1, [r1, #0]
    4c10:	2900      	cmp	r1, #0
    4c12:	d12b      	bne.n	4c6c <SVC_User>
    4c14:	46a6      	mov	lr, r4
    4c16:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4c18:	46a4      	mov	ip, r4
    4c1a:	4674      	mov	r4, lr
    4c1c:	47e0      	blx	ip
    4c1e:	f3ef 8309 	mrs	r3, PSP
    4c22:	c307      	stmia	r3!, {r0, r1, r2}
    4c24:	4b32      	ldr	r3, [pc, #200]	; (4cf0 <OS_Tick_Handler+0x16>)
    4c26:	cb06      	ldmia	r3!, {r1, r2}
    4c28:	4291      	cmp	r1, r2
    4c2a:	d01c      	beq.n	4c66 <SVC_Exit>
    4c2c:	3b08      	subs	r3, #8
    4c2e:	2900      	cmp	r1, #0
    4c30:	d00d      	beq.n	4c4e <SVC_Next>
    4c32:	f3ef 8009 	mrs	r0, PSP
    4c36:	3820      	subs	r0, #32
    4c38:	6288      	str	r0, [r1, #40]	; 0x28
    4c3a:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4c3c:	4644      	mov	r4, r8
    4c3e:	464d      	mov	r5, r9
    4c40:	4656      	mov	r6, sl
    4c42:	465f      	mov	r7, fp
    4c44:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4c46:	b40c      	push	{r2, r3}
    4c48:	f003 fba6 	bl	8398 <rt_stk_check>
    4c4c:	bc0c      	pop	{r2, r3}

00004c4e <SVC_Next>:
    4c4e:	601a      	str	r2, [r3, #0]
    4c50:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4c52:	3010      	adds	r0, #16
    4c54:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4c56:	46a0      	mov	r8, r4
    4c58:	46a9      	mov	r9, r5
    4c5a:	46b2      	mov	sl, r6
    4c5c:	46bb      	mov	fp, r7
    4c5e:	f380 8809 	msr	PSP, r0
    4c62:	3820      	subs	r0, #32
    4c64:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004c66 <SVC_Exit>:
    4c66:	2002      	movs	r0, #2
    4c68:	43c0      	mvns	r0, r0
    4c6a:	4700      	bx	r0

00004c6c <SVC_User>:
    4c6c:	b510      	push	{r4, lr}
    4c6e:	4a21      	ldr	r2, [pc, #132]	; (4cf4 <OS_Tick_Handler+0x1a>)
    4c70:	6812      	ldr	r2, [r2, #0]
    4c72:	4291      	cmp	r1, r2
    4c74:	d809      	bhi.n	4c8a <SVC_Done>
    4c76:	4c20      	ldr	r4, [pc, #128]	; (4cf8 <OS_Tick_Handler+0x1e>)
    4c78:	0089      	lsls	r1, r1, #2
    4c7a:	5864      	ldr	r4, [r4, r1]
    4c7c:	46a6      	mov	lr, r4
    4c7e:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4c80:	46a4      	mov	ip, r4
    4c82:	47f0      	blx	lr
    4c84:	f3ef 8409 	mrs	r4, PSP
    4c88:	c40f      	stmia	r4!, {r0, r1, r2, r3}

00004c8a <SVC_Done>:
    4c8a:	bd10      	pop	{r4, pc}

00004c8c <PendSV_Handler>:
    4c8c:	f003 faf4 	bl	8278 <rt_pop_req>

00004c90 <Sys_Switch>:
    4c90:	4b17      	ldr	r3, [pc, #92]	; (4cf0 <OS_Tick_Handler+0x16>)
    4c92:	cb06      	ldmia	r3!, {r1, r2}
    4c94:	4291      	cmp	r1, r2
    4c96:	d01a      	beq.n	4cce <Sys_Exit>
    4c98:	3b08      	subs	r3, #8
    4c9a:	f3ef 8009 	mrs	r0, PSP
    4c9e:	3820      	subs	r0, #32
    4ca0:	6288      	str	r0, [r1, #40]	; 0x28
    4ca2:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4ca4:	4644      	mov	r4, r8
    4ca6:	464d      	mov	r5, r9
    4ca8:	4656      	mov	r6, sl
    4caa:	465f      	mov	r7, fp
    4cac:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4cae:	b40c      	push	{r2, r3}
    4cb0:	f003 fb72 	bl	8398 <rt_stk_check>
    4cb4:	bc0c      	pop	{r2, r3}
    4cb6:	601a      	str	r2, [r3, #0]
    4cb8:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4cba:	3010      	adds	r0, #16
    4cbc:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4cbe:	46a0      	mov	r8, r4
    4cc0:	46a9      	mov	r9, r5
    4cc2:	46b2      	mov	sl, r6
    4cc4:	46bb      	mov	fp, r7
    4cc6:	f380 8809 	msr	PSP, r0
    4cca:	3820      	subs	r0, #32
    4ccc:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004cce <Sys_Exit>:
    4cce:	2002      	movs	r0, #2
    4cd0:	43c0      	mvns	r0, r0
    4cd2:	4700      	bx	r0

00004cd4 <SysTick_Handler>:
    4cd4:	f003 fb42 	bl	835c <rt_systick>
    4cd8:	e7da      	b.n	4c90 <Sys_Switch>

00004cda <OS_Tick_Handler>:
    4cda:	f003 fb3d 	bl	8358 <os_tick_irqack>
    4cde:	f003 fb3d 	bl	835c <rt_systick>
    4ce2:	e7d5      	b.n	4c90 <Sys_Switch>
    4ce4:	00008b44 	.word	0x00008b44
    4ce8:	00007495 	.word	0x00007495
    4cec:	000074d5 	.word	0x000074d5
    4cf0:	200060c0 	.word	0x200060c0
    4cf4:	00000000 	.word	0x00000000
    4cf8:	fffffffc 	.word	0xfffffffc

00004cfc <__aeabi_uldivmod>:
    4cfc:	2b00      	cmp	r3, #0
    4cfe:	d111      	bne.n	4d24 <__aeabi_uldivmod+0x28>
    4d00:	2a00      	cmp	r2, #0
    4d02:	d10f      	bne.n	4d24 <__aeabi_uldivmod+0x28>
    4d04:	2900      	cmp	r1, #0
    4d06:	d100      	bne.n	4d0a <__aeabi_uldivmod+0xe>
    4d08:	2800      	cmp	r0, #0
    4d0a:	d002      	beq.n	4d12 <__aeabi_uldivmod+0x16>
    4d0c:	2100      	movs	r1, #0
    4d0e:	43c9      	mvns	r1, r1
    4d10:	1c08      	adds	r0, r1, #0
    4d12:	b407      	push	{r0, r1, r2}
    4d14:	4802      	ldr	r0, [pc, #8]	; (4d20 <__aeabi_uldivmod+0x24>)
    4d16:	a102      	add	r1, pc, #8	; (adr r1, 4d20 <__aeabi_uldivmod+0x24>)
    4d18:	1840      	adds	r0, r0, r1
    4d1a:	9002      	str	r0, [sp, #8]
    4d1c:	bd03      	pop	{r0, r1, pc}
    4d1e:	46c0      	nop			; (mov r8, r8)
    4d20:	fffffe85 	.word	0xfffffe85
    4d24:	b403      	push	{r0, r1}
    4d26:	4668      	mov	r0, sp
    4d28:	b501      	push	{r0, lr}
    4d2a:	9802      	ldr	r0, [sp, #8]
    4d2c:	f000 f832 	bl	4d94 <__udivmoddi4>
    4d30:	9b01      	ldr	r3, [sp, #4]
    4d32:	469e      	mov	lr, r3
    4d34:	b002      	add	sp, #8
    4d36:	bc0c      	pop	{r2, r3}
    4d38:	4770      	bx	lr
    4d3a:	46c0      	nop			; (mov r8, r8)

00004d3c <__aeabi_lmul>:
    4d3c:	b5f0      	push	{r4, r5, r6, r7, lr}
    4d3e:	464f      	mov	r7, r9
    4d40:	4646      	mov	r6, r8
    4d42:	b4c0      	push	{r6, r7}
    4d44:	0416      	lsls	r6, r2, #16
    4d46:	0c36      	lsrs	r6, r6, #16
    4d48:	4699      	mov	r9, r3
    4d4a:	0033      	movs	r3, r6
    4d4c:	0405      	lsls	r5, r0, #16
    4d4e:	0c2c      	lsrs	r4, r5, #16
    4d50:	0c07      	lsrs	r7, r0, #16
    4d52:	0c15      	lsrs	r5, r2, #16
    4d54:	4363      	muls	r3, r4
    4d56:	437e      	muls	r6, r7
    4d58:	436f      	muls	r7, r5
    4d5a:	4365      	muls	r5, r4
    4d5c:	0c1c      	lsrs	r4, r3, #16
    4d5e:	19ad      	adds	r5, r5, r6
    4d60:	1964      	adds	r4, r4, r5
    4d62:	469c      	mov	ip, r3
    4d64:	42a6      	cmp	r6, r4
    4d66:	d903      	bls.n	4d70 <__aeabi_lmul+0x34>
    4d68:	2380      	movs	r3, #128	; 0x80
    4d6a:	025b      	lsls	r3, r3, #9
    4d6c:	4698      	mov	r8, r3
    4d6e:	4447      	add	r7, r8
    4d70:	4663      	mov	r3, ip
    4d72:	0c25      	lsrs	r5, r4, #16
    4d74:	19ef      	adds	r7, r5, r7
    4d76:	041d      	lsls	r5, r3, #16
    4d78:	464b      	mov	r3, r9
    4d7a:	434a      	muls	r2, r1
    4d7c:	4343      	muls	r3, r0
    4d7e:	0c2d      	lsrs	r5, r5, #16
    4d80:	0424      	lsls	r4, r4, #16
    4d82:	1964      	adds	r4, r4, r5
    4d84:	1899      	adds	r1, r3, r2
    4d86:	19c9      	adds	r1, r1, r7
    4d88:	0020      	movs	r0, r4
    4d8a:	bc0c      	pop	{r2, r3}
    4d8c:	4690      	mov	r8, r2
    4d8e:	4699      	mov	r9, r3
    4d90:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4d92:	46c0      	nop			; (mov r8, r8)

00004d94 <__udivmoddi4>:
    4d94:	b5f0      	push	{r4, r5, r6, r7, lr}
    4d96:	464d      	mov	r5, r9
    4d98:	4656      	mov	r6, sl
    4d9a:	4644      	mov	r4, r8
    4d9c:	465f      	mov	r7, fp
    4d9e:	b4f0      	push	{r4, r5, r6, r7}
    4da0:	4692      	mov	sl, r2
    4da2:	b083      	sub	sp, #12
    4da4:	0004      	movs	r4, r0
    4da6:	000d      	movs	r5, r1
    4da8:	4699      	mov	r9, r3
    4daa:	428b      	cmp	r3, r1
    4dac:	d82f      	bhi.n	4e0e <__udivmoddi4+0x7a>
    4dae:	d02c      	beq.n	4e0a <__udivmoddi4+0x76>
    4db0:	4649      	mov	r1, r9
    4db2:	4650      	mov	r0, sl
    4db4:	f000 f8ae 	bl	4f14 <__clzdi2>
    4db8:	0029      	movs	r1, r5
    4dba:	0006      	movs	r6, r0
    4dbc:	0020      	movs	r0, r4
    4dbe:	f000 f8a9 	bl	4f14 <__clzdi2>
    4dc2:	1a33      	subs	r3, r6, r0
    4dc4:	4698      	mov	r8, r3
    4dc6:	3b20      	subs	r3, #32
    4dc8:	469b      	mov	fp, r3
    4dca:	d500      	bpl.n	4dce <__udivmoddi4+0x3a>
    4dcc:	e074      	b.n	4eb8 <__udivmoddi4+0x124>
    4dce:	4653      	mov	r3, sl
    4dd0:	465a      	mov	r2, fp
    4dd2:	4093      	lsls	r3, r2
    4dd4:	001f      	movs	r7, r3
    4dd6:	4653      	mov	r3, sl
    4dd8:	4642      	mov	r2, r8
    4dda:	4093      	lsls	r3, r2
    4ddc:	001e      	movs	r6, r3
    4dde:	42af      	cmp	r7, r5
    4de0:	d829      	bhi.n	4e36 <__udivmoddi4+0xa2>
    4de2:	d026      	beq.n	4e32 <__udivmoddi4+0x9e>
    4de4:	465b      	mov	r3, fp
    4de6:	1ba4      	subs	r4, r4, r6
    4de8:	41bd      	sbcs	r5, r7
    4dea:	2b00      	cmp	r3, #0
    4dec:	da00      	bge.n	4df0 <__udivmoddi4+0x5c>
    4dee:	e079      	b.n	4ee4 <__udivmoddi4+0x150>
    4df0:	2200      	movs	r2, #0
    4df2:	2300      	movs	r3, #0
    4df4:	9200      	str	r2, [sp, #0]
    4df6:	9301      	str	r3, [sp, #4]
    4df8:	2301      	movs	r3, #1
    4dfa:	465a      	mov	r2, fp
    4dfc:	4093      	lsls	r3, r2
    4dfe:	9301      	str	r3, [sp, #4]
    4e00:	2301      	movs	r3, #1
    4e02:	4642      	mov	r2, r8
    4e04:	4093      	lsls	r3, r2
    4e06:	9300      	str	r3, [sp, #0]
    4e08:	e019      	b.n	4e3e <__udivmoddi4+0xaa>
    4e0a:	4282      	cmp	r2, r0
    4e0c:	d9d0      	bls.n	4db0 <__udivmoddi4+0x1c>
    4e0e:	2200      	movs	r2, #0
    4e10:	2300      	movs	r3, #0
    4e12:	9200      	str	r2, [sp, #0]
    4e14:	9301      	str	r3, [sp, #4]
    4e16:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4e18:	2b00      	cmp	r3, #0
    4e1a:	d001      	beq.n	4e20 <__udivmoddi4+0x8c>
    4e1c:	601c      	str	r4, [r3, #0]
    4e1e:	605d      	str	r5, [r3, #4]
    4e20:	9800      	ldr	r0, [sp, #0]
    4e22:	9901      	ldr	r1, [sp, #4]
    4e24:	b003      	add	sp, #12
    4e26:	bc3c      	pop	{r2, r3, r4, r5}
    4e28:	4690      	mov	r8, r2
    4e2a:	4699      	mov	r9, r3
    4e2c:	46a2      	mov	sl, r4
    4e2e:	46ab      	mov	fp, r5
    4e30:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4e32:	42a3      	cmp	r3, r4
    4e34:	d9d6      	bls.n	4de4 <__udivmoddi4+0x50>
    4e36:	2200      	movs	r2, #0
    4e38:	2300      	movs	r3, #0
    4e3a:	9200      	str	r2, [sp, #0]
    4e3c:	9301      	str	r3, [sp, #4]
    4e3e:	4643      	mov	r3, r8
    4e40:	2b00      	cmp	r3, #0
    4e42:	d0e8      	beq.n	4e16 <__udivmoddi4+0x82>
    4e44:	07fb      	lsls	r3, r7, #31
    4e46:	0872      	lsrs	r2, r6, #1
    4e48:	431a      	orrs	r2, r3
    4e4a:	4646      	mov	r6, r8
    4e4c:	087b      	lsrs	r3, r7, #1
    4e4e:	e00e      	b.n	4e6e <__udivmoddi4+0xda>
    4e50:	42ab      	cmp	r3, r5
    4e52:	d101      	bne.n	4e58 <__udivmoddi4+0xc4>
    4e54:	42a2      	cmp	r2, r4
    4e56:	d80c      	bhi.n	4e72 <__udivmoddi4+0xde>
    4e58:	1aa4      	subs	r4, r4, r2
    4e5a:	419d      	sbcs	r5, r3
    4e5c:	2001      	movs	r0, #1
    4e5e:	1924      	adds	r4, r4, r4
    4e60:	416d      	adcs	r5, r5
    4e62:	2100      	movs	r1, #0
    4e64:	3e01      	subs	r6, #1
    4e66:	1824      	adds	r4, r4, r0
    4e68:	414d      	adcs	r5, r1
    4e6a:	2e00      	cmp	r6, #0
    4e6c:	d006      	beq.n	4e7c <__udivmoddi4+0xe8>
    4e6e:	42ab      	cmp	r3, r5
    4e70:	d9ee      	bls.n	4e50 <__udivmoddi4+0xbc>
    4e72:	3e01      	subs	r6, #1
    4e74:	1924      	adds	r4, r4, r4
    4e76:	416d      	adcs	r5, r5
    4e78:	2e00      	cmp	r6, #0
    4e7a:	d1f8      	bne.n	4e6e <__udivmoddi4+0xda>
    4e7c:	465b      	mov	r3, fp
    4e7e:	9800      	ldr	r0, [sp, #0]
    4e80:	9901      	ldr	r1, [sp, #4]
    4e82:	1900      	adds	r0, r0, r4
    4e84:	4169      	adcs	r1, r5
    4e86:	2b00      	cmp	r3, #0
    4e88:	db22      	blt.n	4ed0 <__udivmoddi4+0x13c>
    4e8a:	002b      	movs	r3, r5
    4e8c:	465a      	mov	r2, fp
    4e8e:	40d3      	lsrs	r3, r2
    4e90:	002a      	movs	r2, r5
    4e92:	4644      	mov	r4, r8
    4e94:	40e2      	lsrs	r2, r4
    4e96:	001c      	movs	r4, r3
    4e98:	465b      	mov	r3, fp
    4e9a:	0015      	movs	r5, r2
    4e9c:	2b00      	cmp	r3, #0
    4e9e:	db2c      	blt.n	4efa <__udivmoddi4+0x166>
    4ea0:	0026      	movs	r6, r4
    4ea2:	409e      	lsls	r6, r3
    4ea4:	0033      	movs	r3, r6
    4ea6:	0026      	movs	r6, r4
    4ea8:	4647      	mov	r7, r8
    4eaa:	40be      	lsls	r6, r7
    4eac:	0032      	movs	r2, r6
    4eae:	1a80      	subs	r0, r0, r2
    4eb0:	4199      	sbcs	r1, r3
    4eb2:	9000      	str	r0, [sp, #0]
    4eb4:	9101      	str	r1, [sp, #4]
    4eb6:	e7ae      	b.n	4e16 <__udivmoddi4+0x82>
    4eb8:	4642      	mov	r2, r8
    4eba:	2320      	movs	r3, #32
    4ebc:	1a9b      	subs	r3, r3, r2
    4ebe:	4652      	mov	r2, sl
    4ec0:	40da      	lsrs	r2, r3
    4ec2:	4641      	mov	r1, r8
    4ec4:	0013      	movs	r3, r2
    4ec6:	464a      	mov	r2, r9
    4ec8:	408a      	lsls	r2, r1
    4eca:	0017      	movs	r7, r2
    4ecc:	431f      	orrs	r7, r3
    4ece:	e782      	b.n	4dd6 <__udivmoddi4+0x42>
    4ed0:	4642      	mov	r2, r8
    4ed2:	2320      	movs	r3, #32
    4ed4:	1a9b      	subs	r3, r3, r2
    4ed6:	002a      	movs	r2, r5
    4ed8:	4646      	mov	r6, r8
    4eda:	409a      	lsls	r2, r3
    4edc:	0023      	movs	r3, r4
    4ede:	40f3      	lsrs	r3, r6
    4ee0:	4313      	orrs	r3, r2
    4ee2:	e7d5      	b.n	4e90 <__udivmoddi4+0xfc>
    4ee4:	4642      	mov	r2, r8
    4ee6:	2320      	movs	r3, #32
    4ee8:	2100      	movs	r1, #0
    4eea:	1a9b      	subs	r3, r3, r2
    4eec:	2200      	movs	r2, #0
    4eee:	9100      	str	r1, [sp, #0]
    4ef0:	9201      	str	r2, [sp, #4]
    4ef2:	2201      	movs	r2, #1
    4ef4:	40da      	lsrs	r2, r3
    4ef6:	9201      	str	r2, [sp, #4]
    4ef8:	e782      	b.n	4e00 <__udivmoddi4+0x6c>
    4efa:	4642      	mov	r2, r8
    4efc:	2320      	movs	r3, #32
    4efe:	0026      	movs	r6, r4
    4f00:	1a9b      	subs	r3, r3, r2
    4f02:	40de      	lsrs	r6, r3
    4f04:	002f      	movs	r7, r5
    4f06:	46b4      	mov	ip, r6
    4f08:	4097      	lsls	r7, r2
    4f0a:	4666      	mov	r6, ip
    4f0c:	003b      	movs	r3, r7
    4f0e:	4333      	orrs	r3, r6
    4f10:	e7c9      	b.n	4ea6 <__udivmoddi4+0x112>
    4f12:	46c0      	nop			; (mov r8, r8)

00004f14 <__clzdi2>:
    4f14:	b510      	push	{r4, lr}
    4f16:	2900      	cmp	r1, #0
    4f18:	d103      	bne.n	4f22 <__clzdi2+0xe>
    4f1a:	f000 f807 	bl	4f2c <__clzsi2>
    4f1e:	3020      	adds	r0, #32
    4f20:	e002      	b.n	4f28 <__clzdi2+0x14>
    4f22:	1c08      	adds	r0, r1, #0
    4f24:	f000 f802 	bl	4f2c <__clzsi2>
    4f28:	bd10      	pop	{r4, pc}
    4f2a:	46c0      	nop			; (mov r8, r8)

00004f2c <__clzsi2>:
    4f2c:	211c      	movs	r1, #28
    4f2e:	2301      	movs	r3, #1
    4f30:	041b      	lsls	r3, r3, #16
    4f32:	4298      	cmp	r0, r3
    4f34:	d301      	bcc.n	4f3a <__clzsi2+0xe>
    4f36:	0c00      	lsrs	r0, r0, #16
    4f38:	3910      	subs	r1, #16
    4f3a:	0a1b      	lsrs	r3, r3, #8
    4f3c:	4298      	cmp	r0, r3
    4f3e:	d301      	bcc.n	4f44 <__clzsi2+0x18>
    4f40:	0a00      	lsrs	r0, r0, #8
    4f42:	3908      	subs	r1, #8
    4f44:	091b      	lsrs	r3, r3, #4
    4f46:	4298      	cmp	r0, r3
    4f48:	d301      	bcc.n	4f4e <__clzsi2+0x22>
    4f4a:	0900      	lsrs	r0, r0, #4
    4f4c:	3904      	subs	r1, #4
    4f4e:	a202      	add	r2, pc, #8	; (adr r2, 4f58 <__clzsi2+0x2c>)
    4f50:	5c10      	ldrb	r0, [r2, r0]
    4f52:	1840      	adds	r0, r0, r1
    4f54:	4770      	bx	lr
    4f56:	46c0      	nop			; (mov r8, r8)
    4f58:	02020304 	.word	0x02020304
    4f5c:	01010101 	.word	0x01010101
	...

00004f68 <abs>:
    4f68:	17c3      	asrs	r3, r0, #31
    4f6a:	18c0      	adds	r0, r0, r3
    4f6c:	4058      	eors	r0, r3
    4f6e:	4770      	bx	lr

00004f70 <atexit>:
    4f70:	b510      	push	{r4, lr}
    4f72:	0001      	movs	r1, r0
    4f74:	2300      	movs	r3, #0
    4f76:	2200      	movs	r2, #0
    4f78:	2000      	movs	r0, #0
    4f7a:	f000 f8a7 	bl	50cc <__register_exitproc>
    4f7e:	bd10      	pop	{r4, pc}

00004f80 <exit>:
    4f80:	b510      	push	{r4, lr}
    4f82:	2100      	movs	r1, #0
    4f84:	0004      	movs	r4, r0
    4f86:	f000 f917 	bl	51b8 <__call_exitprocs>
    4f8a:	4b04      	ldr	r3, [pc, #16]	; (4f9c <exit+0x1c>)
    4f8c:	6818      	ldr	r0, [r3, #0]
    4f8e:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    4f90:	2b00      	cmp	r3, #0
    4f92:	d000      	beq.n	4f96 <exit+0x16>
    4f94:	4798      	blx	r3
    4f96:	0020      	movs	r0, r4
    4f98:	f7fb fe32 	bl	c00 <_exit>
    4f9c:	000095bc 	.word	0x000095bc

00004fa0 <__libc_fini_array>:
    4fa0:	b570      	push	{r4, r5, r6, lr}
    4fa2:	4b09      	ldr	r3, [pc, #36]	; (4fc8 <__libc_fini_array+0x28>)
    4fa4:	4c09      	ldr	r4, [pc, #36]	; (4fcc <__libc_fini_array+0x2c>)
    4fa6:	1ae4      	subs	r4, r4, r3
    4fa8:	10a4      	asrs	r4, r4, #2
    4faa:	d009      	beq.n	4fc0 <__libc_fini_array+0x20>
    4fac:	4a08      	ldr	r2, [pc, #32]	; (4fd0 <__libc_fini_array+0x30>)
    4fae:	18a5      	adds	r5, r4, r2
    4fb0:	00ad      	lsls	r5, r5, #2
    4fb2:	18ed      	adds	r5, r5, r3
    4fb4:	682b      	ldr	r3, [r5, #0]
    4fb6:	3c01      	subs	r4, #1
    4fb8:	4798      	blx	r3
    4fba:	3d04      	subs	r5, #4
    4fbc:	2c00      	cmp	r4, #0
    4fbe:	d1f9      	bne.n	4fb4 <__libc_fini_array+0x14>
    4fc0:	f7fb ff6a 	bl	e98 <_fini>
    4fc4:	bd70      	pop	{r4, r5, r6, pc}
    4fc6:	46c0      	nop			; (mov r8, r8)
	...
    4fd0:	3fffffff 	.word	0x3fffffff

00004fd4 <__libc_init_array>:
    4fd4:	b570      	push	{r4, r5, r6, lr}
    4fd6:	4e0d      	ldr	r6, [pc, #52]	; (500c <__libc_init_array+0x38>)
    4fd8:	4d0d      	ldr	r5, [pc, #52]	; (5010 <__libc_init_array+0x3c>)
    4fda:	2400      	movs	r4, #0
    4fdc:	1bad      	subs	r5, r5, r6
    4fde:	10ad      	asrs	r5, r5, #2
    4fe0:	d005      	beq.n	4fee <__libc_init_array+0x1a>
    4fe2:	00a3      	lsls	r3, r4, #2
    4fe4:	58f3      	ldr	r3, [r6, r3]
    4fe6:	3401      	adds	r4, #1
    4fe8:	4798      	blx	r3
    4fea:	42a5      	cmp	r5, r4
    4fec:	d1f9      	bne.n	4fe2 <__libc_init_array+0xe>
    4fee:	f7fb ff4d 	bl	e8c <_init>
    4ff2:	4e08      	ldr	r6, [pc, #32]	; (5014 <__libc_init_array+0x40>)
    4ff4:	4d08      	ldr	r5, [pc, #32]	; (5018 <__libc_init_array+0x44>)
    4ff6:	2400      	movs	r4, #0
    4ff8:	1bad      	subs	r5, r5, r6
    4ffa:	10ad      	asrs	r5, r5, #2
    4ffc:	d005      	beq.n	500a <__libc_init_array+0x36>
    4ffe:	00a3      	lsls	r3, r4, #2
    5000:	58f3      	ldr	r3, [r6, r3]
    5002:	3401      	adds	r4, #1
    5004:	4798      	blx	r3
    5006:	42a5      	cmp	r5, r4
    5008:	d1f9      	bne.n	4ffe <__libc_init_array+0x2a>
    500a:	bd70      	pop	{r4, r5, r6, pc}
	...

0000501c <cleanup_glue>:
    501c:	b570      	push	{r4, r5, r6, lr}
    501e:	000c      	movs	r4, r1
    5020:	6809      	ldr	r1, [r1, #0]
    5022:	0005      	movs	r5, r0
    5024:	2900      	cmp	r1, #0
    5026:	d001      	beq.n	502c <cleanup_glue+0x10>
    5028:	f7ff fff8 	bl	501c <cleanup_glue>
    502c:	0028      	movs	r0, r5
    502e:	0021      	movs	r1, r4
    5030:	f000 f990 	bl	5354 <_free_r>
    5034:	bd70      	pop	{r4, r5, r6, pc}
    5036:	46c0      	nop			; (mov r8, r8)

00005038 <_reclaim_reent>:
    5038:	4b23      	ldr	r3, [pc, #140]	; (50c8 <_reclaim_reent+0x90>)
    503a:	b570      	push	{r4, r5, r6, lr}
    503c:	681b      	ldr	r3, [r3, #0]
    503e:	0005      	movs	r5, r0
    5040:	4283      	cmp	r3, r0
    5042:	d034      	beq.n	50ae <_reclaim_reent+0x76>
    5044:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    5046:	2b00      	cmp	r3, #0
    5048:	d011      	beq.n	506e <_reclaim_reent+0x36>
    504a:	2600      	movs	r6, #0
    504c:	5999      	ldr	r1, [r3, r6]
    504e:	2900      	cmp	r1, #0
    5050:	d006      	beq.n	5060 <_reclaim_reent+0x28>
    5052:	680c      	ldr	r4, [r1, #0]
    5054:	0028      	movs	r0, r5
    5056:	f000 f97d 	bl	5354 <_free_r>
    505a:	1e21      	subs	r1, r4, #0
    505c:	d1f9      	bne.n	5052 <_reclaim_reent+0x1a>
    505e:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    5060:	3604      	adds	r6, #4
    5062:	2e80      	cmp	r6, #128	; 0x80
    5064:	d1f2      	bne.n	504c <_reclaim_reent+0x14>
    5066:	0019      	movs	r1, r3
    5068:	0028      	movs	r0, r5
    506a:	f000 f973 	bl	5354 <_free_r>
    506e:	6c29      	ldr	r1, [r5, #64]	; 0x40
    5070:	2900      	cmp	r1, #0
    5072:	d002      	beq.n	507a <_reclaim_reent+0x42>
    5074:	0028      	movs	r0, r5
    5076:	f000 f96d 	bl	5354 <_free_r>
    507a:	23a4      	movs	r3, #164	; 0xa4
    507c:	005b      	lsls	r3, r3, #1
    507e:	58e9      	ldr	r1, [r5, r3]
    5080:	2900      	cmp	r1, #0
    5082:	d00b      	beq.n	509c <_reclaim_reent+0x64>
    5084:	002e      	movs	r6, r5
    5086:	364d      	adds	r6, #77	; 0x4d
    5088:	36ff      	adds	r6, #255	; 0xff
    508a:	42b1      	cmp	r1, r6
    508c:	d006      	beq.n	509c <_reclaim_reent+0x64>
    508e:	680c      	ldr	r4, [r1, #0]
    5090:	0028      	movs	r0, r5
    5092:	f000 f95f 	bl	5354 <_free_r>
    5096:	0021      	movs	r1, r4
    5098:	42a6      	cmp	r6, r4
    509a:	d1f8      	bne.n	508e <_reclaim_reent+0x56>
    509c:	6d69      	ldr	r1, [r5, #84]	; 0x54
    509e:	2900      	cmp	r1, #0
    50a0:	d002      	beq.n	50a8 <_reclaim_reent+0x70>
    50a2:	0028      	movs	r0, r5
    50a4:	f000 f956 	bl	5354 <_free_r>
    50a8:	6bab      	ldr	r3, [r5, #56]	; 0x38
    50aa:	2b00      	cmp	r3, #0
    50ac:	d100      	bne.n	50b0 <_reclaim_reent+0x78>
    50ae:	bd70      	pop	{r4, r5, r6, pc}
    50b0:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    50b2:	0028      	movs	r0, r5
    50b4:	4798      	blx	r3
    50b6:	23b8      	movs	r3, #184	; 0xb8
    50b8:	009b      	lsls	r3, r3, #2
    50ba:	58e9      	ldr	r1, [r5, r3]
    50bc:	2900      	cmp	r1, #0
    50be:	d0f6      	beq.n	50ae <_reclaim_reent+0x76>
    50c0:	0028      	movs	r0, r5
    50c2:	f7ff ffab 	bl	501c <cleanup_glue>
    50c6:	e7f2      	b.n	50ae <_reclaim_reent+0x76>
    50c8:	20000440 	.word	0x20000440

000050cc <__register_exitproc>:
    50cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    50ce:	4644      	mov	r4, r8
    50d0:	465f      	mov	r7, fp
    50d2:	4656      	mov	r6, sl
    50d4:	464d      	mov	r5, r9
    50d6:	469b      	mov	fp, r3
    50d8:	4b2f      	ldr	r3, [pc, #188]	; (5198 <__register_exitproc+0xcc>)
    50da:	b4f0      	push	{r4, r5, r6, r7}
    50dc:	681c      	ldr	r4, [r3, #0]
    50de:	23a4      	movs	r3, #164	; 0xa4
    50e0:	005b      	lsls	r3, r3, #1
    50e2:	0005      	movs	r5, r0
    50e4:	58e0      	ldr	r0, [r4, r3]
    50e6:	000e      	movs	r6, r1
    50e8:	4690      	mov	r8, r2
    50ea:	2800      	cmp	r0, #0
    50ec:	d04b      	beq.n	5186 <__register_exitproc+0xba>
    50ee:	6843      	ldr	r3, [r0, #4]
    50f0:	2b1f      	cmp	r3, #31
    50f2:	dc0d      	bgt.n	5110 <__register_exitproc+0x44>
    50f4:	1c5c      	adds	r4, r3, #1
    50f6:	2d00      	cmp	r5, #0
    50f8:	d121      	bne.n	513e <__register_exitproc+0x72>
    50fa:	3302      	adds	r3, #2
    50fc:	009b      	lsls	r3, r3, #2
    50fe:	6044      	str	r4, [r0, #4]
    5100:	501e      	str	r6, [r3, r0]
    5102:	2000      	movs	r0, #0
    5104:	bc3c      	pop	{r2, r3, r4, r5}
    5106:	4690      	mov	r8, r2
    5108:	4699      	mov	r9, r3
    510a:	46a2      	mov	sl, r4
    510c:	46ab      	mov	fp, r5
    510e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5110:	4b22      	ldr	r3, [pc, #136]	; (519c <__register_exitproc+0xd0>)
    5112:	2b00      	cmp	r3, #0
    5114:	d03c      	beq.n	5190 <__register_exitproc+0xc4>
    5116:	20c8      	movs	r0, #200	; 0xc8
    5118:	0040      	lsls	r0, r0, #1
    511a:	e000      	b.n	511e <__register_exitproc+0x52>
    511c:	bf00      	nop
    511e:	2800      	cmp	r0, #0
    5120:	d036      	beq.n	5190 <__register_exitproc+0xc4>
    5122:	22a4      	movs	r2, #164	; 0xa4
    5124:	2300      	movs	r3, #0
    5126:	0052      	lsls	r2, r2, #1
    5128:	58a1      	ldr	r1, [r4, r2]
    512a:	6043      	str	r3, [r0, #4]
    512c:	6001      	str	r1, [r0, #0]
    512e:	50a0      	str	r0, [r4, r2]
    5130:	3240      	adds	r2, #64	; 0x40
    5132:	5083      	str	r3, [r0, r2]
    5134:	3204      	adds	r2, #4
    5136:	5083      	str	r3, [r0, r2]
    5138:	2401      	movs	r4, #1
    513a:	2d00      	cmp	r5, #0
    513c:	d0dd      	beq.n	50fa <__register_exitproc+0x2e>
    513e:	009a      	lsls	r2, r3, #2
    5140:	4691      	mov	r9, r2
    5142:	4481      	add	r9, r0
    5144:	4642      	mov	r2, r8
    5146:	2188      	movs	r1, #136	; 0x88
    5148:	464f      	mov	r7, r9
    514a:	507a      	str	r2, [r7, r1]
    514c:	22c4      	movs	r2, #196	; 0xc4
    514e:	0052      	lsls	r2, r2, #1
    5150:	4690      	mov	r8, r2
    5152:	4480      	add	r8, r0
    5154:	4642      	mov	r2, r8
    5156:	3987      	subs	r1, #135	; 0x87
    5158:	4099      	lsls	r1, r3
    515a:	6812      	ldr	r2, [r2, #0]
    515c:	468a      	mov	sl, r1
    515e:	430a      	orrs	r2, r1
    5160:	4694      	mov	ip, r2
    5162:	4642      	mov	r2, r8
    5164:	4661      	mov	r1, ip
    5166:	6011      	str	r1, [r2, #0]
    5168:	2284      	movs	r2, #132	; 0x84
    516a:	4649      	mov	r1, r9
    516c:	465f      	mov	r7, fp
    516e:	0052      	lsls	r2, r2, #1
    5170:	508f      	str	r7, [r1, r2]
    5172:	2d02      	cmp	r5, #2
    5174:	d1c1      	bne.n	50fa <__register_exitproc+0x2e>
    5176:	0002      	movs	r2, r0
    5178:	4655      	mov	r5, sl
    517a:	328d      	adds	r2, #141	; 0x8d
    517c:	32ff      	adds	r2, #255	; 0xff
    517e:	6811      	ldr	r1, [r2, #0]
    5180:	430d      	orrs	r5, r1
    5182:	6015      	str	r5, [r2, #0]
    5184:	e7b9      	b.n	50fa <__register_exitproc+0x2e>
    5186:	0020      	movs	r0, r4
    5188:	304d      	adds	r0, #77	; 0x4d
    518a:	30ff      	adds	r0, #255	; 0xff
    518c:	50e0      	str	r0, [r4, r3]
    518e:	e7ae      	b.n	50ee <__register_exitproc+0x22>
    5190:	2001      	movs	r0, #1
    5192:	4240      	negs	r0, r0
    5194:	e7b6      	b.n	5104 <__register_exitproc+0x38>
    5196:	46c0      	nop			; (mov r8, r8)
    5198:	000095bc 	.word	0x000095bc
    519c:	00000000 	.word	0x00000000

000051a0 <register_fini>:
    51a0:	4b03      	ldr	r3, [pc, #12]	; (51b0 <register_fini+0x10>)
    51a2:	b510      	push	{r4, lr}
    51a4:	2b00      	cmp	r3, #0
    51a6:	d002      	beq.n	51ae <register_fini+0xe>
    51a8:	4802      	ldr	r0, [pc, #8]	; (51b4 <register_fini+0x14>)
    51aa:	f7ff fee1 	bl	4f70 <atexit>
    51ae:	bd10      	pop	{r4, pc}
    51b0:	00000000 	.word	0x00000000
    51b4:	00004fa1 	.word	0x00004fa1

000051b8 <__call_exitprocs>:
    51b8:	b5f0      	push	{r4, r5, r6, r7, lr}
    51ba:	465f      	mov	r7, fp
    51bc:	4656      	mov	r6, sl
    51be:	464d      	mov	r5, r9
    51c0:	4644      	mov	r4, r8
    51c2:	b4f0      	push	{r4, r5, r6, r7}
    51c4:	000f      	movs	r7, r1
    51c6:	4b39      	ldr	r3, [pc, #228]	; (52ac <__call_exitprocs+0xf4>)
    51c8:	b085      	sub	sp, #20
    51ca:	681b      	ldr	r3, [r3, #0]
    51cc:	9001      	str	r0, [sp, #4]
    51ce:	9302      	str	r3, [sp, #8]
    51d0:	3349      	adds	r3, #73	; 0x49
    51d2:	33ff      	adds	r3, #255	; 0xff
    51d4:	9303      	str	r3, [sp, #12]
    51d6:	22a4      	movs	r2, #164	; 0xa4
    51d8:	9b02      	ldr	r3, [sp, #8]
    51da:	0052      	lsls	r2, r2, #1
    51dc:	589e      	ldr	r6, [r3, r2]
    51de:	2e00      	cmp	r6, #0
    51e0:	d04e      	beq.n	5280 <__call_exitprocs+0xc8>
    51e2:	9b03      	ldr	r3, [sp, #12]
    51e4:	4699      	mov	r9, r3
    51e6:	23c4      	movs	r3, #196	; 0xc4
    51e8:	005b      	lsls	r3, r3, #1
    51ea:	4698      	mov	r8, r3
    51ec:	3304      	adds	r3, #4
    51ee:	469a      	mov	sl, r3
    51f0:	6874      	ldr	r4, [r6, #4]
    51f2:	44b0      	add	r8, r6
    51f4:	00a5      	lsls	r5, r4, #2
    51f6:	1975      	adds	r5, r6, r5
    51f8:	44b2      	add	sl, r6
    51fa:	3c01      	subs	r4, #1
    51fc:	d508      	bpl.n	5210 <__call_exitprocs+0x58>
    51fe:	e02d      	b.n	525c <__call_exitprocs+0xa4>
    5200:	1d6b      	adds	r3, r5, #5
    5202:	33ff      	adds	r3, #255	; 0xff
    5204:	681b      	ldr	r3, [r3, #0]
    5206:	429f      	cmp	r7, r3
    5208:	d004      	beq.n	5214 <__call_exitprocs+0x5c>
    520a:	3d04      	subs	r5, #4
    520c:	3c01      	subs	r4, #1
    520e:	d325      	bcc.n	525c <__call_exitprocs+0xa4>
    5210:	2f00      	cmp	r7, #0
    5212:	d1f5      	bne.n	5200 <__call_exitprocs+0x48>
    5214:	6873      	ldr	r3, [r6, #4]
    5216:	686a      	ldr	r2, [r5, #4]
    5218:	3b01      	subs	r3, #1
    521a:	42a3      	cmp	r3, r4
    521c:	d039      	beq.n	5292 <__call_exitprocs+0xda>
    521e:	2300      	movs	r3, #0
    5220:	606b      	str	r3, [r5, #4]
    5222:	2a00      	cmp	r2, #0
    5224:	d0f1      	beq.n	520a <__call_exitprocs+0x52>
    5226:	6873      	ldr	r3, [r6, #4]
    5228:	4641      	mov	r1, r8
    522a:	469b      	mov	fp, r3
    522c:	2301      	movs	r3, #1
    522e:	40a3      	lsls	r3, r4
    5230:	6809      	ldr	r1, [r1, #0]
    5232:	4219      	tst	r1, r3
    5234:	d02b      	beq.n	528e <__call_exitprocs+0xd6>
    5236:	4651      	mov	r1, sl
    5238:	6809      	ldr	r1, [r1, #0]
    523a:	4219      	tst	r1, r3
    523c:	d12b      	bne.n	5296 <__call_exitprocs+0xde>
    523e:	002b      	movs	r3, r5
    5240:	3384      	adds	r3, #132	; 0x84
    5242:	6819      	ldr	r1, [r3, #0]
    5244:	9801      	ldr	r0, [sp, #4]
    5246:	4790      	blx	r2
    5248:	6873      	ldr	r3, [r6, #4]
    524a:	455b      	cmp	r3, fp
    524c:	d1c3      	bne.n	51d6 <__call_exitprocs+0x1e>
    524e:	464b      	mov	r3, r9
    5250:	681b      	ldr	r3, [r3, #0]
    5252:	42b3      	cmp	r3, r6
    5254:	d1bf      	bne.n	51d6 <__call_exitprocs+0x1e>
    5256:	3d04      	subs	r5, #4
    5258:	3c01      	subs	r4, #1
    525a:	d2d9      	bcs.n	5210 <__call_exitprocs+0x58>
    525c:	4b14      	ldr	r3, [pc, #80]	; (52b0 <__call_exitprocs+0xf8>)
    525e:	2b00      	cmp	r3, #0
    5260:	d00e      	beq.n	5280 <__call_exitprocs+0xc8>
    5262:	6873      	ldr	r3, [r6, #4]
    5264:	2b00      	cmp	r3, #0
    5266:	d11b      	bne.n	52a0 <__call_exitprocs+0xe8>
    5268:	6833      	ldr	r3, [r6, #0]
    526a:	2b00      	cmp	r3, #0
    526c:	d01c      	beq.n	52a8 <__call_exitprocs+0xf0>
    526e:	464a      	mov	r2, r9
    5270:	0030      	movs	r0, r6
    5272:	6013      	str	r3, [r2, #0]
    5274:	e000      	b.n	5278 <__call_exitprocs+0xc0>
    5276:	bf00      	nop
    5278:	464b      	mov	r3, r9
    527a:	681e      	ldr	r6, [r3, #0]
    527c:	2e00      	cmp	r6, #0
    527e:	d1b2      	bne.n	51e6 <__call_exitprocs+0x2e>
    5280:	b005      	add	sp, #20
    5282:	bc3c      	pop	{r2, r3, r4, r5}
    5284:	4690      	mov	r8, r2
    5286:	4699      	mov	r9, r3
    5288:	46a2      	mov	sl, r4
    528a:	46ab      	mov	fp, r5
    528c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    528e:	4790      	blx	r2
    5290:	e7da      	b.n	5248 <__call_exitprocs+0x90>
    5292:	6074      	str	r4, [r6, #4]
    5294:	e7c5      	b.n	5222 <__call_exitprocs+0x6a>
    5296:	002b      	movs	r3, r5
    5298:	3384      	adds	r3, #132	; 0x84
    529a:	6818      	ldr	r0, [r3, #0]
    529c:	4790      	blx	r2
    529e:	e7d3      	b.n	5248 <__call_exitprocs+0x90>
    52a0:	6833      	ldr	r3, [r6, #0]
    52a2:	46b1      	mov	r9, r6
    52a4:	001e      	movs	r6, r3
    52a6:	e7e9      	b.n	527c <__call_exitprocs+0xc4>
    52a8:	2300      	movs	r3, #0
    52aa:	e7fa      	b.n	52a2 <__call_exitprocs+0xea>
    52ac:	000095bc 	.word	0x000095bc
    52b0:	00000000 	.word	0x00000000

000052b4 <_malloc_trim_r>:
    52b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    52b6:	000c      	movs	r4, r1
    52b8:	0006      	movs	r6, r0
    52ba:	f000 fbd7 	bl	5a6c <__malloc_lock>
    52be:	4f20      	ldr	r7, [pc, #128]	; (5340 <_malloc_trim_r+0x8c>)
    52c0:	68bb      	ldr	r3, [r7, #8]
    52c2:	685d      	ldr	r5, [r3, #4]
    52c4:	2303      	movs	r3, #3
    52c6:	439d      	bics	r5, r3
    52c8:	4b1e      	ldr	r3, [pc, #120]	; (5344 <_malloc_trim_r+0x90>)
    52ca:	1b2c      	subs	r4, r5, r4
    52cc:	469c      	mov	ip, r3
    52ce:	4464      	add	r4, ip
    52d0:	0b24      	lsrs	r4, r4, #12
    52d2:	4b1d      	ldr	r3, [pc, #116]	; (5348 <_malloc_trim_r+0x94>)
    52d4:	3c01      	subs	r4, #1
    52d6:	0324      	lsls	r4, r4, #12
    52d8:	429c      	cmp	r4, r3
    52da:	dd07      	ble.n	52ec <_malloc_trim_r+0x38>
    52dc:	2100      	movs	r1, #0
    52de:	0030      	movs	r0, r6
    52e0:	f000 fbc8 	bl	5a74 <_sbrk_r>
    52e4:	68bb      	ldr	r3, [r7, #8]
    52e6:	195b      	adds	r3, r3, r5
    52e8:	4298      	cmp	r0, r3
    52ea:	d004      	beq.n	52f6 <_malloc_trim_r+0x42>
    52ec:	0030      	movs	r0, r6
    52ee:	f000 fbbf 	bl	5a70 <__malloc_unlock>
    52f2:	2000      	movs	r0, #0
    52f4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    52f6:	4261      	negs	r1, r4
    52f8:	0030      	movs	r0, r6
    52fa:	f000 fbbb 	bl	5a74 <_sbrk_r>
    52fe:	1c43      	adds	r3, r0, #1
    5300:	d00d      	beq.n	531e <_malloc_trim_r+0x6a>
    5302:	2301      	movs	r3, #1
    5304:	1b2d      	subs	r5, r5, r4
    5306:	68ba      	ldr	r2, [r7, #8]
    5308:	431d      	orrs	r5, r3
    530a:	4b10      	ldr	r3, [pc, #64]	; (534c <_malloc_trim_r+0x98>)
    530c:	6055      	str	r5, [r2, #4]
    530e:	681a      	ldr	r2, [r3, #0]
    5310:	0030      	movs	r0, r6
    5312:	1b14      	subs	r4, r2, r4
    5314:	601c      	str	r4, [r3, #0]
    5316:	f000 fbab 	bl	5a70 <__malloc_unlock>
    531a:	2001      	movs	r0, #1
    531c:	e7ea      	b.n	52f4 <_malloc_trim_r+0x40>
    531e:	2100      	movs	r1, #0
    5320:	0030      	movs	r0, r6
    5322:	f000 fba7 	bl	5a74 <_sbrk_r>
    5326:	68bb      	ldr	r3, [r7, #8]
    5328:	1ac2      	subs	r2, r0, r3
    532a:	2a0f      	cmp	r2, #15
    532c:	ddde      	ble.n	52ec <_malloc_trim_r+0x38>
    532e:	4908      	ldr	r1, [pc, #32]	; (5350 <_malloc_trim_r+0x9c>)
    5330:	6809      	ldr	r1, [r1, #0]
    5332:	1a40      	subs	r0, r0, r1
    5334:	4905      	ldr	r1, [pc, #20]	; (534c <_malloc_trim_r+0x98>)
    5336:	6008      	str	r0, [r1, #0]
    5338:	2101      	movs	r1, #1
    533a:	430a      	orrs	r2, r1
    533c:	605a      	str	r2, [r3, #4]
    533e:	e7d5      	b.n	52ec <_malloc_trim_r+0x38>
    5340:	20000444 	.word	0x20000444
    5344:	00000fef 	.word	0x00000fef
    5348:	00000fff 	.word	0x00000fff
    534c:	20006054 	.word	0x20006054
    5350:	20000850 	.word	0x20000850

00005354 <_free_r>:
    5354:	b5f0      	push	{r4, r5, r6, r7, lr}
    5356:	4647      	mov	r7, r8
    5358:	0005      	movs	r5, r0
    535a:	b480      	push	{r7}
    535c:	1e0c      	subs	r4, r1, #0
    535e:	d03e      	beq.n	53de <_free_r+0x8a>
    5360:	f000 fb84 	bl	5a6c <__malloc_lock>
    5364:	2301      	movs	r3, #1
    5366:	0021      	movs	r1, r4
    5368:	4698      	mov	r8, r3
    536a:	3908      	subs	r1, #8
    536c:	684e      	ldr	r6, [r1, #4]
    536e:	4642      	mov	r2, r8
    5370:	0033      	movs	r3, r6
    5372:	2003      	movs	r0, #3
    5374:	4393      	bics	r3, r2
    5376:	18cc      	adds	r4, r1, r3
    5378:	6862      	ldr	r2, [r4, #4]
    537a:	4382      	bics	r2, r0
    537c:	4860      	ldr	r0, [pc, #384]	; (5500 <_free_r+0x1ac>)
    537e:	6887      	ldr	r7, [r0, #8]
    5380:	42bc      	cmp	r4, r7
    5382:	d05a      	beq.n	543a <_free_r+0xe6>
    5384:	4647      	mov	r7, r8
    5386:	6062      	str	r2, [r4, #4]
    5388:	4237      	tst	r7, r6
    538a:	d10b      	bne.n	53a4 <_free_r+0x50>
    538c:	2708      	movs	r7, #8
    538e:	46bc      	mov	ip, r7
    5390:	680e      	ldr	r6, [r1, #0]
    5392:	4484      	add	ip, r0
    5394:	1b89      	subs	r1, r1, r6
    5396:	199b      	adds	r3, r3, r6
    5398:	688e      	ldr	r6, [r1, #8]
    539a:	4566      	cmp	r6, ip
    539c:	d066      	beq.n	546c <_free_r+0x118>
    539e:	68cf      	ldr	r7, [r1, #12]
    53a0:	60f7      	str	r7, [r6, #12]
    53a2:	60be      	str	r6, [r7, #8]
    53a4:	2601      	movs	r6, #1
    53a6:	18a7      	adds	r7, r4, r2
    53a8:	687f      	ldr	r7, [r7, #4]
    53aa:	4237      	tst	r7, r6
    53ac:	d036      	beq.n	541c <_free_r+0xc8>
    53ae:	4a55      	ldr	r2, [pc, #340]	; (5504 <_free_r+0x1b0>)
    53b0:	431e      	orrs	r6, r3
    53b2:	604e      	str	r6, [r1, #4]
    53b4:	50cb      	str	r3, [r1, r3]
    53b6:	4293      	cmp	r3, r2
    53b8:	d814      	bhi.n	53e4 <_free_r+0x90>
    53ba:	08db      	lsrs	r3, r3, #3
    53bc:	3aff      	subs	r2, #255	; 0xff
    53be:	109c      	asrs	r4, r3, #2
    53c0:	3aff      	subs	r2, #255	; 0xff
    53c2:	40a2      	lsls	r2, r4
    53c4:	6844      	ldr	r4, [r0, #4]
    53c6:	00db      	lsls	r3, r3, #3
    53c8:	4322      	orrs	r2, r4
    53ca:	6042      	str	r2, [r0, #4]
    53cc:	1818      	adds	r0, r3, r0
    53ce:	6883      	ldr	r3, [r0, #8]
    53d0:	60c8      	str	r0, [r1, #12]
    53d2:	608b      	str	r3, [r1, #8]
    53d4:	6081      	str	r1, [r0, #8]
    53d6:	60d9      	str	r1, [r3, #12]
    53d8:	0028      	movs	r0, r5
    53da:	f000 fb49 	bl	5a70 <__malloc_unlock>
    53de:	bc04      	pop	{r2}
    53e0:	4690      	mov	r8, r2
    53e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    53e4:	0a5a      	lsrs	r2, r3, #9
    53e6:	2a04      	cmp	r2, #4
    53e8:	d84f      	bhi.n	548a <_free_r+0x136>
    53ea:	099c      	lsrs	r4, r3, #6
    53ec:	0026      	movs	r6, r4
    53ee:	3439      	adds	r4, #57	; 0x39
    53f0:	3638      	adds	r6, #56	; 0x38
    53f2:	0064      	lsls	r4, r4, #1
    53f4:	00a4      	lsls	r4, r4, #2
    53f6:	1904      	adds	r4, r0, r4
    53f8:	3c08      	subs	r4, #8
    53fa:	68a2      	ldr	r2, [r4, #8]
    53fc:	2703      	movs	r7, #3
    53fe:	4294      	cmp	r4, r2
    5400:	d04a      	beq.n	5498 <_free_r+0x144>
    5402:	6850      	ldr	r0, [r2, #4]
    5404:	43b8      	bics	r0, r7
    5406:	4283      	cmp	r3, r0
    5408:	d202      	bcs.n	5410 <_free_r+0xbc>
    540a:	6892      	ldr	r2, [r2, #8]
    540c:	4294      	cmp	r4, r2
    540e:	d1f8      	bne.n	5402 <_free_r+0xae>
    5410:	68d4      	ldr	r4, [r2, #12]
    5412:	60cc      	str	r4, [r1, #12]
    5414:	608a      	str	r2, [r1, #8]
    5416:	60a1      	str	r1, [r4, #8]
    5418:	60d1      	str	r1, [r2, #12]
    541a:	e7dd      	b.n	53d8 <_free_r+0x84>
    541c:	189b      	adds	r3, r3, r2
    541e:	4f3a      	ldr	r7, [pc, #232]	; (5508 <_free_r+0x1b4>)
    5420:	68a2      	ldr	r2, [r4, #8]
    5422:	42ba      	cmp	r2, r7
    5424:	d040      	beq.n	54a8 <_free_r+0x154>
    5426:	68e4      	ldr	r4, [r4, #12]
    5428:	431e      	orrs	r6, r3
    542a:	60d4      	str	r4, [r2, #12]
    542c:	60a2      	str	r2, [r4, #8]
    542e:	4a35      	ldr	r2, [pc, #212]	; (5504 <_free_r+0x1b0>)
    5430:	604e      	str	r6, [r1, #4]
    5432:	50cb      	str	r3, [r1, r3]
    5434:	4293      	cmp	r3, r2
    5436:	d8d5      	bhi.n	53e4 <_free_r+0x90>
    5438:	e7bf      	b.n	53ba <_free_r+0x66>
    543a:	189b      	adds	r3, r3, r2
    543c:	4642      	mov	r2, r8
    543e:	4232      	tst	r2, r6
    5440:	d106      	bne.n	5450 <_free_r+0xfc>
    5442:	680a      	ldr	r2, [r1, #0]
    5444:	1a89      	subs	r1, r1, r2
    5446:	688c      	ldr	r4, [r1, #8]
    5448:	189b      	adds	r3, r3, r2
    544a:	68ca      	ldr	r2, [r1, #12]
    544c:	60e2      	str	r2, [r4, #12]
    544e:	6094      	str	r4, [r2, #8]
    5450:	2401      	movs	r4, #1
    5452:	4a2e      	ldr	r2, [pc, #184]	; (550c <_free_r+0x1b8>)
    5454:	431c      	orrs	r4, r3
    5456:	6812      	ldr	r2, [r2, #0]
    5458:	604c      	str	r4, [r1, #4]
    545a:	6081      	str	r1, [r0, #8]
    545c:	4293      	cmp	r3, r2
    545e:	d3bb      	bcc.n	53d8 <_free_r+0x84>
    5460:	4b2b      	ldr	r3, [pc, #172]	; (5510 <_free_r+0x1bc>)
    5462:	0028      	movs	r0, r5
    5464:	6819      	ldr	r1, [r3, #0]
    5466:	f7ff ff25 	bl	52b4 <_malloc_trim_r>
    546a:	e7b5      	b.n	53d8 <_free_r+0x84>
    546c:	4646      	mov	r6, r8
    546e:	18a0      	adds	r0, r4, r2
    5470:	6840      	ldr	r0, [r0, #4]
    5472:	4230      	tst	r0, r6
    5474:	d13e      	bne.n	54f4 <_free_r+0x1a0>
    5476:	68a0      	ldr	r0, [r4, #8]
    5478:	18d3      	adds	r3, r2, r3
    547a:	68e2      	ldr	r2, [r4, #12]
    547c:	60c2      	str	r2, [r0, #12]
    547e:	6090      	str	r0, [r2, #8]
    5480:	4642      	mov	r2, r8
    5482:	431a      	orrs	r2, r3
    5484:	604a      	str	r2, [r1, #4]
    5486:	50cb      	str	r3, [r1, r3]
    5488:	e7a6      	b.n	53d8 <_free_r+0x84>
    548a:	2a14      	cmp	r2, #20
    548c:	d814      	bhi.n	54b8 <_free_r+0x164>
    548e:	0016      	movs	r6, r2
    5490:	325c      	adds	r2, #92	; 0x5c
    5492:	365b      	adds	r6, #91	; 0x5b
    5494:	0054      	lsls	r4, r2, #1
    5496:	e7ad      	b.n	53f4 <_free_r+0xa0>
    5498:	2301      	movs	r3, #1
    549a:	10b6      	asrs	r6, r6, #2
    549c:	40b3      	lsls	r3, r6
    549e:	6842      	ldr	r2, [r0, #4]
    54a0:	4313      	orrs	r3, r2
    54a2:	6043      	str	r3, [r0, #4]
    54a4:	0022      	movs	r2, r4
    54a6:	e7b4      	b.n	5412 <_free_r+0xbe>
    54a8:	431e      	orrs	r6, r3
    54aa:	60d1      	str	r1, [r2, #12]
    54ac:	6091      	str	r1, [r2, #8]
    54ae:	60ca      	str	r2, [r1, #12]
    54b0:	608a      	str	r2, [r1, #8]
    54b2:	604e      	str	r6, [r1, #4]
    54b4:	50cb      	str	r3, [r1, r3]
    54b6:	e78f      	b.n	53d8 <_free_r+0x84>
    54b8:	2a54      	cmp	r2, #84	; 0x54
    54ba:	d805      	bhi.n	54c8 <_free_r+0x174>
    54bc:	0b1c      	lsrs	r4, r3, #12
    54be:	0026      	movs	r6, r4
    54c0:	346f      	adds	r4, #111	; 0x6f
    54c2:	366e      	adds	r6, #110	; 0x6e
    54c4:	0064      	lsls	r4, r4, #1
    54c6:	e795      	b.n	53f4 <_free_r+0xa0>
    54c8:	24aa      	movs	r4, #170	; 0xaa
    54ca:	0064      	lsls	r4, r4, #1
    54cc:	42a2      	cmp	r2, r4
    54ce:	d805      	bhi.n	54dc <_free_r+0x188>
    54d0:	0bdc      	lsrs	r4, r3, #15
    54d2:	0026      	movs	r6, r4
    54d4:	3478      	adds	r4, #120	; 0x78
    54d6:	3677      	adds	r6, #119	; 0x77
    54d8:	0064      	lsls	r4, r4, #1
    54da:	e78b      	b.n	53f4 <_free_r+0xa0>
    54dc:	4c0d      	ldr	r4, [pc, #52]	; (5514 <_free_r+0x1c0>)
    54de:	42a2      	cmp	r2, r4
    54e0:	d805      	bhi.n	54ee <_free_r+0x19a>
    54e2:	0c9c      	lsrs	r4, r3, #18
    54e4:	0026      	movs	r6, r4
    54e6:	347d      	adds	r4, #125	; 0x7d
    54e8:	367c      	adds	r6, #124	; 0x7c
    54ea:	0064      	lsls	r4, r4, #1
    54ec:	e782      	b.n	53f4 <_free_r+0xa0>
    54ee:	24fe      	movs	r4, #254	; 0xfe
    54f0:	267e      	movs	r6, #126	; 0x7e
    54f2:	e77f      	b.n	53f4 <_free_r+0xa0>
    54f4:	4642      	mov	r2, r8
    54f6:	431a      	orrs	r2, r3
    54f8:	604a      	str	r2, [r1, #4]
    54fa:	50cb      	str	r3, [r1, r3]
    54fc:	e76c      	b.n	53d8 <_free_r+0x84>
    54fe:	46c0      	nop			; (mov r8, r8)
    5500:	20000444 	.word	0x20000444
    5504:	000001ff 	.word	0x000001ff
    5508:	2000044c 	.word	0x2000044c
    550c:	2000084c 	.word	0x2000084c
    5510:	20006050 	.word	0x20006050
    5514:	00000554 	.word	0x00000554

00005518 <_malloc_r>:
    5518:	b5f0      	push	{r4, r5, r6, r7, lr}
    551a:	465f      	mov	r7, fp
    551c:	464d      	mov	r5, r9
    551e:	4656      	mov	r6, sl
    5520:	4644      	mov	r4, r8
    5522:	b4f0      	push	{r4, r5, r6, r7}
    5524:	000d      	movs	r5, r1
    5526:	350b      	adds	r5, #11
    5528:	b083      	sub	sp, #12
    552a:	0007      	movs	r7, r0
    552c:	2d16      	cmp	r5, #22
    552e:	d800      	bhi.n	5532 <_malloc_r+0x1a>
    5530:	e0a8      	b.n	5684 <_malloc_r+0x16c>
    5532:	2307      	movs	r3, #7
    5534:	439d      	bics	r5, r3
    5536:	d500      	bpl.n	553a <_malloc_r+0x22>
    5538:	e0ce      	b.n	56d8 <_malloc_r+0x1c0>
    553a:	42a9      	cmp	r1, r5
    553c:	d900      	bls.n	5540 <_malloc_r+0x28>
    553e:	e0cb      	b.n	56d8 <_malloc_r+0x1c0>
    5540:	f000 fa94 	bl	5a6c <__malloc_lock>
    5544:	23f8      	movs	r3, #248	; 0xf8
    5546:	33ff      	adds	r3, #255	; 0xff
    5548:	429d      	cmp	r5, r3
    554a:	d800      	bhi.n	554e <_malloc_r+0x36>
    554c:	e284      	b.n	5a58 <_malloc_r+0x540>
    554e:	0a6b      	lsrs	r3, r5, #9
    5550:	d100      	bne.n	5554 <_malloc_r+0x3c>
    5552:	e0c5      	b.n	56e0 <_malloc_r+0x1c8>
    5554:	2b04      	cmp	r3, #4
    5556:	d900      	bls.n	555a <_malloc_r+0x42>
    5558:	e16c      	b.n	5834 <_malloc_r+0x31c>
    555a:	2338      	movs	r3, #56	; 0x38
    555c:	09a9      	lsrs	r1, r5, #6
    555e:	469c      	mov	ip, r3
    5560:	3301      	adds	r3, #1
    5562:	4698      	mov	r8, r3
    5564:	4488      	add	r8, r1
    5566:	4643      	mov	r3, r8
    5568:	448c      	add	ip, r1
    556a:	0059      	lsls	r1, r3, #1
    556c:	4ec9      	ldr	r6, [pc, #804]	; (5894 <_malloc_r+0x37c>)
    556e:	0089      	lsls	r1, r1, #2
    5570:	1871      	adds	r1, r6, r1
    5572:	3908      	subs	r1, #8
    5574:	68cc      	ldr	r4, [r1, #12]
    5576:	42a1      	cmp	r1, r4
    5578:	d017      	beq.n	55aa <_malloc_r+0x92>
    557a:	2303      	movs	r3, #3
    557c:	6862      	ldr	r2, [r4, #4]
    557e:	439a      	bics	r2, r3
    5580:	0013      	movs	r3, r2
    5582:	1b52      	subs	r2, r2, r5
    5584:	2a0f      	cmp	r2, #15
    5586:	dd00      	ble.n	558a <_malloc_r+0x72>
    5588:	e0b0      	b.n	56ec <_malloc_r+0x1d4>
    558a:	2003      	movs	r0, #3
    558c:	2a00      	cmp	r2, #0
    558e:	db09      	blt.n	55a4 <_malloc_r+0x8c>
    5590:	e08d      	b.n	56ae <_malloc_r+0x196>
    5592:	6863      	ldr	r3, [r4, #4]
    5594:	4383      	bics	r3, r0
    5596:	1b5a      	subs	r2, r3, r5
    5598:	2a0f      	cmp	r2, #15
    559a:	dd00      	ble.n	559e <_malloc_r+0x86>
    559c:	e0a6      	b.n	56ec <_malloc_r+0x1d4>
    559e:	2a00      	cmp	r2, #0
    55a0:	db00      	blt.n	55a4 <_malloc_r+0x8c>
    55a2:	e084      	b.n	56ae <_malloc_r+0x196>
    55a4:	68e4      	ldr	r4, [r4, #12]
    55a6:	42a1      	cmp	r1, r4
    55a8:	d1f3      	bne.n	5592 <_malloc_r+0x7a>
    55aa:	4643      	mov	r3, r8
    55ac:	9300      	str	r3, [sp, #0]
    55ae:	0032      	movs	r2, r6
    55b0:	6934      	ldr	r4, [r6, #16]
    55b2:	3208      	adds	r2, #8
    55b4:	4294      	cmp	r4, r2
    55b6:	d100      	bne.n	55ba <_malloc_r+0xa2>
    55b8:	e18f      	b.n	58da <_malloc_r+0x3c2>
    55ba:	2303      	movs	r3, #3
    55bc:	6861      	ldr	r1, [r4, #4]
    55be:	4399      	bics	r1, r3
    55c0:	000b      	movs	r3, r1
    55c2:	1b48      	subs	r0, r1, r5
    55c4:	280f      	cmp	r0, #15
    55c6:	dd00      	ble.n	55ca <_malloc_r+0xb2>
    55c8:	e176      	b.n	58b8 <_malloc_r+0x3a0>
    55ca:	6172      	str	r2, [r6, #20]
    55cc:	6132      	str	r2, [r6, #16]
    55ce:	2800      	cmp	r0, #0
    55d0:	da71      	bge.n	56b6 <_malloc_r+0x19e>
    55d2:	4ab1      	ldr	r2, [pc, #708]	; (5898 <_malloc_r+0x380>)
    55d4:	4291      	cmp	r1, r2
    55d6:	d900      	bls.n	55da <_malloc_r+0xc2>
    55d8:	e134      	b.n	5844 <_malloc_r+0x32c>
    55da:	2301      	movs	r3, #1
    55dc:	08c8      	lsrs	r0, r1, #3
    55de:	1082      	asrs	r2, r0, #2
    55e0:	4093      	lsls	r3, r2
    55e2:	6872      	ldr	r2, [r6, #4]
    55e4:	431a      	orrs	r2, r3
    55e6:	00c3      	lsls	r3, r0, #3
    55e8:	199b      	adds	r3, r3, r6
    55ea:	6898      	ldr	r0, [r3, #8]
    55ec:	6072      	str	r2, [r6, #4]
    55ee:	60e3      	str	r3, [r4, #12]
    55f0:	60a0      	str	r0, [r4, #8]
    55f2:	609c      	str	r4, [r3, #8]
    55f4:	0013      	movs	r3, r2
    55f6:	60c4      	str	r4, [r0, #12]
    55f8:	2001      	movs	r0, #1
    55fa:	9900      	ldr	r1, [sp, #0]
    55fc:	108a      	asrs	r2, r1, #2
    55fe:	4090      	lsls	r0, r2
    5600:	4298      	cmp	r0, r3
    5602:	d900      	bls.n	5606 <_malloc_r+0xee>
    5604:	e075      	b.n	56f2 <_malloc_r+0x1da>
    5606:	4203      	tst	r3, r0
    5608:	d10c      	bne.n	5624 <_malloc_r+0x10c>
    560a:	2203      	movs	r2, #3
    560c:	4391      	bics	r1, r2
    560e:	1d0a      	adds	r2, r1, #4
    5610:	0040      	lsls	r0, r0, #1
    5612:	9200      	str	r2, [sp, #0]
    5614:	4203      	tst	r3, r0
    5616:	d105      	bne.n	5624 <_malloc_r+0x10c>
    5618:	9a00      	ldr	r2, [sp, #0]
    561a:	0040      	lsls	r0, r0, #1
    561c:	3204      	adds	r2, #4
    561e:	9200      	str	r2, [sp, #0]
    5620:	4203      	tst	r3, r0
    5622:	d0f9      	beq.n	5618 <_malloc_r+0x100>
    5624:	2303      	movs	r3, #3
    5626:	4698      	mov	r8, r3
    5628:	9a00      	ldr	r2, [sp, #0]
    562a:	00d3      	lsls	r3, r2, #3
    562c:	4699      	mov	r9, r3
    562e:	44b1      	add	r9, r6
    5630:	46cc      	mov	ip, r9
    5632:	4692      	mov	sl, r2
    5634:	4663      	mov	r3, ip
    5636:	68dc      	ldr	r4, [r3, #12]
    5638:	45a4      	cmp	ip, r4
    563a:	d107      	bne.n	564c <_malloc_r+0x134>
    563c:	e14f      	b.n	58de <_malloc_r+0x3c6>
    563e:	2a00      	cmp	r2, #0
    5640:	db00      	blt.n	5644 <_malloc_r+0x12c>
    5642:	e15f      	b.n	5904 <_malloc_r+0x3ec>
    5644:	68e4      	ldr	r4, [r4, #12]
    5646:	45a4      	cmp	ip, r4
    5648:	d100      	bne.n	564c <_malloc_r+0x134>
    564a:	e148      	b.n	58de <_malloc_r+0x3c6>
    564c:	4642      	mov	r2, r8
    564e:	6863      	ldr	r3, [r4, #4]
    5650:	4393      	bics	r3, r2
    5652:	1b5a      	subs	r2, r3, r5
    5654:	2a0f      	cmp	r2, #15
    5656:	ddf2      	ble.n	563e <_malloc_r+0x126>
    5658:	2101      	movs	r1, #1
    565a:	1963      	adds	r3, r4, r5
    565c:	430d      	orrs	r5, r1
    565e:	6065      	str	r5, [r4, #4]
    5660:	68e0      	ldr	r0, [r4, #12]
    5662:	68a5      	ldr	r5, [r4, #8]
    5664:	3608      	adds	r6, #8
    5666:	60e8      	str	r0, [r5, #12]
    5668:	4311      	orrs	r1, r2
    566a:	6085      	str	r5, [r0, #8]
    566c:	60f3      	str	r3, [r6, #12]
    566e:	60b3      	str	r3, [r6, #8]
    5670:	0038      	movs	r0, r7
    5672:	60de      	str	r6, [r3, #12]
    5674:	609e      	str	r6, [r3, #8]
    5676:	6059      	str	r1, [r3, #4]
    5678:	509a      	str	r2, [r3, r2]
    567a:	f000 f9f9 	bl	5a70 <__malloc_unlock>
    567e:	0020      	movs	r0, r4
    5680:	3008      	adds	r0, #8
    5682:	e022      	b.n	56ca <_malloc_r+0x1b2>
    5684:	2910      	cmp	r1, #16
    5686:	d827      	bhi.n	56d8 <_malloc_r+0x1c0>
    5688:	0038      	movs	r0, r7
    568a:	f000 f9ef 	bl	5a6c <__malloc_lock>
    568e:	2510      	movs	r5, #16
    5690:	2306      	movs	r3, #6
    5692:	2102      	movs	r1, #2
    5694:	4e7f      	ldr	r6, [pc, #508]	; (5894 <_malloc_r+0x37c>)
    5696:	009b      	lsls	r3, r3, #2
    5698:	18f3      	adds	r3, r6, r3
    569a:	001a      	movs	r2, r3
    569c:	685c      	ldr	r4, [r3, #4]
    569e:	3a08      	subs	r2, #8
    56a0:	4294      	cmp	r4, r2
    56a2:	d100      	bne.n	56a6 <_malloc_r+0x18e>
    56a4:	e127      	b.n	58f6 <_malloc_r+0x3de>
    56a6:	2303      	movs	r3, #3
    56a8:	6862      	ldr	r2, [r4, #4]
    56aa:	439a      	bics	r2, r3
    56ac:	0013      	movs	r3, r2
    56ae:	68e2      	ldr	r2, [r4, #12]
    56b0:	68a1      	ldr	r1, [r4, #8]
    56b2:	60ca      	str	r2, [r1, #12]
    56b4:	6091      	str	r1, [r2, #8]
    56b6:	2201      	movs	r2, #1
    56b8:	18e3      	adds	r3, r4, r3
    56ba:	6859      	ldr	r1, [r3, #4]
    56bc:	0038      	movs	r0, r7
    56be:	430a      	orrs	r2, r1
    56c0:	605a      	str	r2, [r3, #4]
    56c2:	f000 f9d5 	bl	5a70 <__malloc_unlock>
    56c6:	0020      	movs	r0, r4
    56c8:	3008      	adds	r0, #8
    56ca:	b003      	add	sp, #12
    56cc:	bc3c      	pop	{r2, r3, r4, r5}
    56ce:	4690      	mov	r8, r2
    56d0:	4699      	mov	r9, r3
    56d2:	46a2      	mov	sl, r4
    56d4:	46ab      	mov	fp, r5
    56d6:	bdf0      	pop	{r4, r5, r6, r7, pc}
    56d8:	230c      	movs	r3, #12
    56da:	2000      	movs	r0, #0
    56dc:	603b      	str	r3, [r7, #0]
    56de:	e7f4      	b.n	56ca <_malloc_r+0x1b2>
    56e0:	2340      	movs	r3, #64	; 0x40
    56e2:	4698      	mov	r8, r3
    56e4:	3b01      	subs	r3, #1
    56e6:	2180      	movs	r1, #128	; 0x80
    56e8:	469c      	mov	ip, r3
    56ea:	e73f      	b.n	556c <_malloc_r+0x54>
    56ec:	4663      	mov	r3, ip
    56ee:	9300      	str	r3, [sp, #0]
    56f0:	e75d      	b.n	55ae <_malloc_r+0x96>
    56f2:	2303      	movs	r3, #3
    56f4:	68b4      	ldr	r4, [r6, #8]
    56f6:	6862      	ldr	r2, [r4, #4]
    56f8:	439a      	bics	r2, r3
    56fa:	4690      	mov	r8, r2
    56fc:	42aa      	cmp	r2, r5
    56fe:	d303      	bcc.n	5708 <_malloc_r+0x1f0>
    5700:	1b52      	subs	r2, r2, r5
    5702:	2a0f      	cmp	r2, #15
    5704:	dd00      	ble.n	5708 <_malloc_r+0x1f0>
    5706:	e087      	b.n	5818 <_malloc_r+0x300>
    5708:	0023      	movs	r3, r4
    570a:	4443      	add	r3, r8
    570c:	4a63      	ldr	r2, [pc, #396]	; (589c <_malloc_r+0x384>)
    570e:	9301      	str	r3, [sp, #4]
    5710:	4b63      	ldr	r3, [pc, #396]	; (58a0 <_malloc_r+0x388>)
    5712:	4693      	mov	fp, r2
    5714:	681b      	ldr	r3, [r3, #0]
    5716:	6812      	ldr	r2, [r2, #0]
    5718:	18eb      	adds	r3, r5, r3
    571a:	3201      	adds	r2, #1
    571c:	d100      	bne.n	5720 <_malloc_r+0x208>
    571e:	e157      	b.n	59d0 <_malloc_r+0x4b8>
    5720:	4a60      	ldr	r2, [pc, #384]	; (58a4 <_malloc_r+0x38c>)
    5722:	4694      	mov	ip, r2
    5724:	4463      	add	r3, ip
    5726:	0b1b      	lsrs	r3, r3, #12
    5728:	031b      	lsls	r3, r3, #12
    572a:	9300      	str	r3, [sp, #0]
    572c:	9900      	ldr	r1, [sp, #0]
    572e:	0038      	movs	r0, r7
    5730:	f000 f9a0 	bl	5a74 <_sbrk_r>
    5734:	0003      	movs	r3, r0
    5736:	4681      	mov	r9, r0
    5738:	3301      	adds	r3, #1
    573a:	d061      	beq.n	5800 <_malloc_r+0x2e8>
    573c:	9b01      	ldr	r3, [sp, #4]
    573e:	4283      	cmp	r3, r0
    5740:	d900      	bls.n	5744 <_malloc_r+0x22c>
    5742:	e0fd      	b.n	5940 <_malloc_r+0x428>
    5744:	4b58      	ldr	r3, [pc, #352]	; (58a8 <_malloc_r+0x390>)
    5746:	9a00      	ldr	r2, [sp, #0]
    5748:	469a      	mov	sl, r3
    574a:	681b      	ldr	r3, [r3, #0]
    574c:	469c      	mov	ip, r3
    574e:	4653      	mov	r3, sl
    5750:	4462      	add	r2, ip
    5752:	601a      	str	r2, [r3, #0]
    5754:	9b01      	ldr	r3, [sp, #4]
    5756:	0011      	movs	r1, r2
    5758:	454b      	cmp	r3, r9
    575a:	d100      	bne.n	575e <_malloc_r+0x246>
    575c:	e143      	b.n	59e6 <_malloc_r+0x4ce>
    575e:	465b      	mov	r3, fp
    5760:	681b      	ldr	r3, [r3, #0]
    5762:	3301      	adds	r3, #1
    5764:	d100      	bne.n	5768 <_malloc_r+0x250>
    5766:	e14f      	b.n	5a08 <_malloc_r+0x4f0>
    5768:	464b      	mov	r3, r9
    576a:	9a01      	ldr	r2, [sp, #4]
    576c:	1a9b      	subs	r3, r3, r2
    576e:	1859      	adds	r1, r3, r1
    5770:	4653      	mov	r3, sl
    5772:	6019      	str	r1, [r3, #0]
    5774:	2307      	movs	r3, #7
    5776:	464a      	mov	r2, r9
    5778:	4013      	ands	r3, r2
    577a:	d100      	bne.n	577e <_malloc_r+0x266>
    577c:	e117      	b.n	59ae <_malloc_r+0x496>
    577e:	2108      	movs	r1, #8
    5780:	4689      	mov	r9, r1
    5782:	494a      	ldr	r1, [pc, #296]	; (58ac <_malloc_r+0x394>)
    5784:	1ad2      	subs	r2, r2, r3
    5786:	4491      	add	r9, r2
    5788:	1ac9      	subs	r1, r1, r3
    578a:	9b00      	ldr	r3, [sp, #0]
    578c:	0038      	movs	r0, r7
    578e:	444b      	add	r3, r9
    5790:	051b      	lsls	r3, r3, #20
    5792:	0d1b      	lsrs	r3, r3, #20
    5794:	1acb      	subs	r3, r1, r3
    5796:	0019      	movs	r1, r3
    5798:	469b      	mov	fp, r3
    579a:	f000 f96b 	bl	5a74 <_sbrk_r>
    579e:	1c43      	adds	r3, r0, #1
    57a0:	d100      	bne.n	57a4 <_malloc_r+0x28c>
    57a2:	e135      	b.n	5a10 <_malloc_r+0x4f8>
    57a4:	464b      	mov	r3, r9
    57a6:	1ac0      	subs	r0, r0, r3
    57a8:	2301      	movs	r3, #1
    57aa:	4458      	add	r0, fp
    57ac:	4318      	orrs	r0, r3
    57ae:	4653      	mov	r3, sl
    57b0:	681b      	ldr	r3, [r3, #0]
    57b2:	445b      	add	r3, fp
    57b4:	0019      	movs	r1, r3
    57b6:	4653      	mov	r3, sl
    57b8:	6019      	str	r1, [r3, #0]
    57ba:	464b      	mov	r3, r9
    57bc:	60b3      	str	r3, [r6, #8]
    57be:	6058      	str	r0, [r3, #4]
    57c0:	42b4      	cmp	r4, r6
    57c2:	d013      	beq.n	57ec <_malloc_r+0x2d4>
    57c4:	4643      	mov	r3, r8
    57c6:	2b0f      	cmp	r3, #15
    57c8:	d800      	bhi.n	57cc <_malloc_r+0x2b4>
    57ca:	e0e1      	b.n	5990 <_malloc_r+0x478>
    57cc:	4643      	mov	r3, r8
    57ce:	2207      	movs	r2, #7
    57d0:	6860      	ldr	r0, [r4, #4]
    57d2:	3b0c      	subs	r3, #12
    57d4:	4393      	bics	r3, r2
    57d6:	3a06      	subs	r2, #6
    57d8:	4002      	ands	r2, r0
    57da:	2005      	movs	r0, #5
    57dc:	431a      	orrs	r2, r3
    57de:	6062      	str	r2, [r4, #4]
    57e0:	18e2      	adds	r2, r4, r3
    57e2:	6050      	str	r0, [r2, #4]
    57e4:	6090      	str	r0, [r2, #8]
    57e6:	2b0f      	cmp	r3, #15
    57e8:	d900      	bls.n	57ec <_malloc_r+0x2d4>
    57ea:	e115      	b.n	5a18 <_malloc_r+0x500>
    57ec:	4b30      	ldr	r3, [pc, #192]	; (58b0 <_malloc_r+0x398>)
    57ee:	681a      	ldr	r2, [r3, #0]
    57f0:	4291      	cmp	r1, r2
    57f2:	d900      	bls.n	57f6 <_malloc_r+0x2de>
    57f4:	6019      	str	r1, [r3, #0]
    57f6:	4b2f      	ldr	r3, [pc, #188]	; (58b4 <_malloc_r+0x39c>)
    57f8:	681a      	ldr	r2, [r3, #0]
    57fa:	4291      	cmp	r1, r2
    57fc:	d900      	bls.n	5800 <_malloc_r+0x2e8>
    57fe:	6019      	str	r1, [r3, #0]
    5800:	2303      	movs	r3, #3
    5802:	68b4      	ldr	r4, [r6, #8]
    5804:	6862      	ldr	r2, [r4, #4]
    5806:	439a      	bics	r2, r3
    5808:	0013      	movs	r3, r2
    580a:	1b52      	subs	r2, r2, r5
    580c:	429d      	cmp	r5, r3
    580e:	d900      	bls.n	5812 <_malloc_r+0x2fa>
    5810:	e0c1      	b.n	5996 <_malloc_r+0x47e>
    5812:	2a0f      	cmp	r2, #15
    5814:	dc00      	bgt.n	5818 <_malloc_r+0x300>
    5816:	e0be      	b.n	5996 <_malloc_r+0x47e>
    5818:	2301      	movs	r3, #1
    581a:	0029      	movs	r1, r5
    581c:	1965      	adds	r5, r4, r5
    581e:	4319      	orrs	r1, r3
    5820:	4313      	orrs	r3, r2
    5822:	6061      	str	r1, [r4, #4]
    5824:	0038      	movs	r0, r7
    5826:	60b5      	str	r5, [r6, #8]
    5828:	606b      	str	r3, [r5, #4]
    582a:	f000 f921 	bl	5a70 <__malloc_unlock>
    582e:	0020      	movs	r0, r4
    5830:	3008      	adds	r0, #8
    5832:	e74a      	b.n	56ca <_malloc_r+0x1b2>
    5834:	2b14      	cmp	r3, #20
    5836:	d974      	bls.n	5922 <_malloc_r+0x40a>
    5838:	2b54      	cmp	r3, #84	; 0x54
    583a:	d900      	bls.n	583e <_malloc_r+0x326>
    583c:	e0b0      	b.n	59a0 <_malloc_r+0x488>
    583e:	0b29      	lsrs	r1, r5, #12
    5840:	236e      	movs	r3, #110	; 0x6e
    5842:	e68c      	b.n	555e <_malloc_r+0x46>
    5844:	0a4a      	lsrs	r2, r1, #9
    5846:	2a04      	cmp	r2, #4
    5848:	d974      	bls.n	5934 <_malloc_r+0x41c>
    584a:	2a14      	cmp	r2, #20
    584c:	d900      	bls.n	5850 <_malloc_r+0x338>
    584e:	e0c2      	b.n	59d6 <_malloc_r+0x4be>
    5850:	0010      	movs	r0, r2
    5852:	325c      	adds	r2, #92	; 0x5c
    5854:	305b      	adds	r0, #91	; 0x5b
    5856:	0052      	lsls	r2, r2, #1
    5858:	2108      	movs	r1, #8
    585a:	4249      	negs	r1, r1
    585c:	468c      	mov	ip, r1
    585e:	0092      	lsls	r2, r2, #2
    5860:	18b2      	adds	r2, r6, r2
    5862:	4494      	add	ip, r2
    5864:	4662      	mov	r2, ip
    5866:	6892      	ldr	r2, [r2, #8]
    5868:	310b      	adds	r1, #11
    586a:	4688      	mov	r8, r1
    586c:	4594      	cmp	ip, r2
    586e:	d100      	bne.n	5872 <_malloc_r+0x35a>
    5870:	e0a0      	b.n	59b4 <_malloc_r+0x49c>
    5872:	4641      	mov	r1, r8
    5874:	6850      	ldr	r0, [r2, #4]
    5876:	4388      	bics	r0, r1
    5878:	4283      	cmp	r3, r0
    587a:	d202      	bcs.n	5882 <_malloc_r+0x36a>
    587c:	6892      	ldr	r2, [r2, #8]
    587e:	4594      	cmp	ip, r2
    5880:	d1f7      	bne.n	5872 <_malloc_r+0x35a>
    5882:	68d3      	ldr	r3, [r2, #12]
    5884:	469c      	mov	ip, r3
    5886:	6873      	ldr	r3, [r6, #4]
    5888:	4661      	mov	r1, ip
    588a:	60a2      	str	r2, [r4, #8]
    588c:	60e1      	str	r1, [r4, #12]
    588e:	608c      	str	r4, [r1, #8]
    5890:	60d4      	str	r4, [r2, #12]
    5892:	e6b1      	b.n	55f8 <_malloc_r+0xe0>
    5894:	20000444 	.word	0x20000444
    5898:	000001ff 	.word	0x000001ff
    589c:	20000850 	.word	0x20000850
    58a0:	20006050 	.word	0x20006050
    58a4:	0000100f 	.word	0x0000100f
    58a8:	20006054 	.word	0x20006054
    58ac:	00001008 	.word	0x00001008
    58b0:	2000604c 	.word	0x2000604c
    58b4:	20006048 	.word	0x20006048
    58b8:	2101      	movs	r1, #1
    58ba:	1963      	adds	r3, r4, r5
    58bc:	430d      	orrs	r5, r1
    58be:	4301      	orrs	r1, r0
    58c0:	6065      	str	r5, [r4, #4]
    58c2:	6173      	str	r3, [r6, #20]
    58c4:	6133      	str	r3, [r6, #16]
    58c6:	60da      	str	r2, [r3, #12]
    58c8:	609a      	str	r2, [r3, #8]
    58ca:	6059      	str	r1, [r3, #4]
    58cc:	5018      	str	r0, [r3, r0]
    58ce:	0038      	movs	r0, r7
    58d0:	f000 f8ce 	bl	5a70 <__malloc_unlock>
    58d4:	0020      	movs	r0, r4
    58d6:	3008      	adds	r0, #8
    58d8:	e6f7      	b.n	56ca <_malloc_r+0x1b2>
    58da:	6873      	ldr	r3, [r6, #4]
    58dc:	e68c      	b.n	55f8 <_malloc_r+0xe0>
    58de:	2308      	movs	r3, #8
    58e0:	469b      	mov	fp, r3
    58e2:	3b07      	subs	r3, #7
    58e4:	44dc      	add	ip, fp
    58e6:	469b      	mov	fp, r3
    58e8:	44da      	add	sl, fp
    58ea:	4643      	mov	r3, r8
    58ec:	4652      	mov	r2, sl
    58ee:	4213      	tst	r3, r2
    58f0:	d000      	beq.n	58f4 <_malloc_r+0x3dc>
    58f2:	e69f      	b.n	5634 <_malloc_r+0x11c>
    58f4:	e033      	b.n	595e <_malloc_r+0x446>
    58f6:	68dc      	ldr	r4, [r3, #12]
    58f8:	1c8a      	adds	r2, r1, #2
    58fa:	9200      	str	r2, [sp, #0]
    58fc:	42a3      	cmp	r3, r4
    58fe:	d100      	bne.n	5902 <_malloc_r+0x3ea>
    5900:	e655      	b.n	55ae <_malloc_r+0x96>
    5902:	e6d0      	b.n	56a6 <_malloc_r+0x18e>
    5904:	2201      	movs	r2, #1
    5906:	18e3      	adds	r3, r4, r3
    5908:	6859      	ldr	r1, [r3, #4]
    590a:	0038      	movs	r0, r7
    590c:	430a      	orrs	r2, r1
    590e:	605a      	str	r2, [r3, #4]
    5910:	68e3      	ldr	r3, [r4, #12]
    5912:	68a2      	ldr	r2, [r4, #8]
    5914:	60d3      	str	r3, [r2, #12]
    5916:	609a      	str	r2, [r3, #8]
    5918:	f000 f8aa 	bl	5a70 <__malloc_unlock>
    591c:	0020      	movs	r0, r4
    591e:	3008      	adds	r0, #8
    5920:	e6d3      	b.n	56ca <_malloc_r+0x1b2>
    5922:	225b      	movs	r2, #91	; 0x5b
    5924:	4694      	mov	ip, r2
    5926:	3201      	adds	r2, #1
    5928:	4690      	mov	r8, r2
    592a:	4498      	add	r8, r3
    592c:	449c      	add	ip, r3
    592e:	4643      	mov	r3, r8
    5930:	0059      	lsls	r1, r3, #1
    5932:	e61b      	b.n	556c <_malloc_r+0x54>
    5934:	098a      	lsrs	r2, r1, #6
    5936:	0010      	movs	r0, r2
    5938:	3239      	adds	r2, #57	; 0x39
    593a:	3038      	adds	r0, #56	; 0x38
    593c:	0052      	lsls	r2, r2, #1
    593e:	e78b      	b.n	5858 <_malloc_r+0x340>
    5940:	42b4      	cmp	r4, r6
    5942:	d000      	beq.n	5946 <_malloc_r+0x42e>
    5944:	e75c      	b.n	5800 <_malloc_r+0x2e8>
    5946:	e6fd      	b.n	5744 <_malloc_r+0x22c>
    5948:	9b00      	ldr	r3, [sp, #0]
    594a:	3b01      	subs	r3, #1
    594c:	9300      	str	r3, [sp, #0]
    594e:	2308      	movs	r3, #8
    5950:	425b      	negs	r3, r3
    5952:	469c      	mov	ip, r3
    5954:	44e1      	add	r9, ip
    5956:	464b      	mov	r3, r9
    5958:	689b      	ldr	r3, [r3, #8]
    595a:	4599      	cmp	r9, r3
    595c:	d17a      	bne.n	5a54 <_malloc_r+0x53c>
    595e:	4643      	mov	r3, r8
    5960:	9a00      	ldr	r2, [sp, #0]
    5962:	4213      	tst	r3, r2
    5964:	d1f0      	bne.n	5948 <_malloc_r+0x430>
    5966:	6873      	ldr	r3, [r6, #4]
    5968:	4383      	bics	r3, r0
    596a:	6073      	str	r3, [r6, #4]
    596c:	0040      	lsls	r0, r0, #1
    596e:	4298      	cmp	r0, r3
    5970:	d900      	bls.n	5974 <_malloc_r+0x45c>
    5972:	e6be      	b.n	56f2 <_malloc_r+0x1da>
    5974:	2800      	cmp	r0, #0
    5976:	d100      	bne.n	597a <_malloc_r+0x462>
    5978:	e6bb      	b.n	56f2 <_malloc_r+0x1da>
    597a:	4203      	tst	r3, r0
    597c:	d170      	bne.n	5a60 <_malloc_r+0x548>
    597e:	4652      	mov	r2, sl
    5980:	9200      	str	r2, [sp, #0]
    5982:	9a00      	ldr	r2, [sp, #0]
    5984:	0040      	lsls	r0, r0, #1
    5986:	3204      	adds	r2, #4
    5988:	9200      	str	r2, [sp, #0]
    598a:	4203      	tst	r3, r0
    598c:	d0f9      	beq.n	5982 <_malloc_r+0x46a>
    598e:	e64b      	b.n	5628 <_malloc_r+0x110>
    5990:	2301      	movs	r3, #1
    5992:	464a      	mov	r2, r9
    5994:	6053      	str	r3, [r2, #4]
    5996:	0038      	movs	r0, r7
    5998:	f000 f86a 	bl	5a70 <__malloc_unlock>
    599c:	2000      	movs	r0, #0
    599e:	e694      	b.n	56ca <_malloc_r+0x1b2>
    59a0:	22aa      	movs	r2, #170	; 0xaa
    59a2:	0052      	lsls	r2, r2, #1
    59a4:	4293      	cmp	r3, r2
    59a6:	d80d      	bhi.n	59c4 <_malloc_r+0x4ac>
    59a8:	0be9      	lsrs	r1, r5, #15
    59aa:	2377      	movs	r3, #119	; 0x77
    59ac:	e5d7      	b.n	555e <_malloc_r+0x46>
    59ae:	2180      	movs	r1, #128	; 0x80
    59b0:	0149      	lsls	r1, r1, #5
    59b2:	e6ea      	b.n	578a <_malloc_r+0x272>
    59b4:	2301      	movs	r3, #1
    59b6:	1080      	asrs	r0, r0, #2
    59b8:	4083      	lsls	r3, r0
    59ba:	6872      	ldr	r2, [r6, #4]
    59bc:	4313      	orrs	r3, r2
    59be:	6073      	str	r3, [r6, #4]
    59c0:	4662      	mov	r2, ip
    59c2:	e761      	b.n	5888 <_malloc_r+0x370>
    59c4:	4a28      	ldr	r2, [pc, #160]	; (5a68 <_malloc_r+0x550>)
    59c6:	4293      	cmp	r3, r2
    59c8:	d818      	bhi.n	59fc <_malloc_r+0x4e4>
    59ca:	0ca9      	lsrs	r1, r5, #18
    59cc:	237c      	movs	r3, #124	; 0x7c
    59ce:	e5c6      	b.n	555e <_malloc_r+0x46>
    59d0:	3310      	adds	r3, #16
    59d2:	9300      	str	r3, [sp, #0]
    59d4:	e6aa      	b.n	572c <_malloc_r+0x214>
    59d6:	2a54      	cmp	r2, #84	; 0x54
    59d8:	d826      	bhi.n	5a28 <_malloc_r+0x510>
    59da:	0b0a      	lsrs	r2, r1, #12
    59dc:	0010      	movs	r0, r2
    59de:	326f      	adds	r2, #111	; 0x6f
    59e0:	306e      	adds	r0, #110	; 0x6e
    59e2:	0052      	lsls	r2, r2, #1
    59e4:	e738      	b.n	5858 <_malloc_r+0x340>
    59e6:	051b      	lsls	r3, r3, #20
    59e8:	d000      	beq.n	59ec <_malloc_r+0x4d4>
    59ea:	e6b8      	b.n	575e <_malloc_r+0x246>
    59ec:	9b00      	ldr	r3, [sp, #0]
    59ee:	68b2      	ldr	r2, [r6, #8]
    59f0:	4443      	add	r3, r8
    59f2:	0018      	movs	r0, r3
    59f4:	2301      	movs	r3, #1
    59f6:	4303      	orrs	r3, r0
    59f8:	6053      	str	r3, [r2, #4]
    59fa:	e6f7      	b.n	57ec <_malloc_r+0x2d4>
    59fc:	237f      	movs	r3, #127	; 0x7f
    59fe:	4698      	mov	r8, r3
    5a00:	3b01      	subs	r3, #1
    5a02:	21fe      	movs	r1, #254	; 0xfe
    5a04:	469c      	mov	ip, r3
    5a06:	e5b1      	b.n	556c <_malloc_r+0x54>
    5a08:	465b      	mov	r3, fp
    5a0a:	464a      	mov	r2, r9
    5a0c:	601a      	str	r2, [r3, #0]
    5a0e:	e6b1      	b.n	5774 <_malloc_r+0x25c>
    5a10:	2300      	movs	r3, #0
    5a12:	2001      	movs	r0, #1
    5a14:	469b      	mov	fp, r3
    5a16:	e6ca      	b.n	57ae <_malloc_r+0x296>
    5a18:	0021      	movs	r1, r4
    5a1a:	0038      	movs	r0, r7
    5a1c:	3108      	adds	r1, #8
    5a1e:	f7ff fc99 	bl	5354 <_free_r>
    5a22:	4653      	mov	r3, sl
    5a24:	6819      	ldr	r1, [r3, #0]
    5a26:	e6e1      	b.n	57ec <_malloc_r+0x2d4>
    5a28:	20aa      	movs	r0, #170	; 0xaa
    5a2a:	0040      	lsls	r0, r0, #1
    5a2c:	4282      	cmp	r2, r0
    5a2e:	d805      	bhi.n	5a3c <_malloc_r+0x524>
    5a30:	0bca      	lsrs	r2, r1, #15
    5a32:	0010      	movs	r0, r2
    5a34:	3278      	adds	r2, #120	; 0x78
    5a36:	3077      	adds	r0, #119	; 0x77
    5a38:	0052      	lsls	r2, r2, #1
    5a3a:	e70d      	b.n	5858 <_malloc_r+0x340>
    5a3c:	480a      	ldr	r0, [pc, #40]	; (5a68 <_malloc_r+0x550>)
    5a3e:	4282      	cmp	r2, r0
    5a40:	d805      	bhi.n	5a4e <_malloc_r+0x536>
    5a42:	0c8a      	lsrs	r2, r1, #18
    5a44:	0010      	movs	r0, r2
    5a46:	327d      	adds	r2, #125	; 0x7d
    5a48:	307c      	adds	r0, #124	; 0x7c
    5a4a:	0052      	lsls	r2, r2, #1
    5a4c:	e704      	b.n	5858 <_malloc_r+0x340>
    5a4e:	22fe      	movs	r2, #254	; 0xfe
    5a50:	207e      	movs	r0, #126	; 0x7e
    5a52:	e701      	b.n	5858 <_malloc_r+0x340>
    5a54:	6873      	ldr	r3, [r6, #4]
    5a56:	e789      	b.n	596c <_malloc_r+0x454>
    5a58:	08e9      	lsrs	r1, r5, #3
    5a5a:	1c4b      	adds	r3, r1, #1
    5a5c:	005b      	lsls	r3, r3, #1
    5a5e:	e619      	b.n	5694 <_malloc_r+0x17c>
    5a60:	4653      	mov	r3, sl
    5a62:	9300      	str	r3, [sp, #0]
    5a64:	e5e0      	b.n	5628 <_malloc_r+0x110>
    5a66:	46c0      	nop			; (mov r8, r8)
    5a68:	00000554 	.word	0x00000554

00005a6c <__malloc_lock>:
    5a6c:	4770      	bx	lr
    5a6e:	46c0      	nop			; (mov r8, r8)

00005a70 <__malloc_unlock>:
    5a70:	4770      	bx	lr
    5a72:	46c0      	nop			; (mov r8, r8)

00005a74 <_sbrk_r>:
    5a74:	2300      	movs	r3, #0
    5a76:	b570      	push	{r4, r5, r6, lr}
    5a78:	4c06      	ldr	r4, [pc, #24]	; (5a94 <_sbrk_r+0x20>)
    5a7a:	0005      	movs	r5, r0
    5a7c:	0008      	movs	r0, r1
    5a7e:	6023      	str	r3, [r4, #0]
    5a80:	f7fb f948 	bl	d14 <_sbrk>
    5a84:	1c43      	adds	r3, r0, #1
    5a86:	d000      	beq.n	5a8a <_sbrk_r+0x16>
    5a88:	bd70      	pop	{r4, r5, r6, pc}
    5a8a:	6823      	ldr	r3, [r4, #0]
    5a8c:	2b00      	cmp	r3, #0
    5a8e:	d0fb      	beq.n	5a88 <_sbrk_r+0x14>
    5a90:	602b      	str	r3, [r5, #0]
    5a92:	e7f9      	b.n	5a88 <_sbrk_r+0x14>
    5a94:	2000607c 	.word	0x2000607c

00005a98 <osThreadExit>:
    5a98:	b580      	push	{r7, lr}
    5a9a:	4f03      	ldr	r7, [pc, #12]	; (5aa8 <osThreadExit+0x10>)
    5a9c:	46bc      	mov	ip, r7
    5a9e:	df00      	svc	0
    5aa0:	4f02      	ldr	r7, [pc, #8]	; (5aac <osThreadExit+0x14>)
    5aa2:	46bc      	mov	ip, r7
    5aa4:	df00      	svc	0
    5aa6:	e7fe      	b.n	5aa6 <osThreadExit+0xe>
    5aa8:	00005ed9 	.word	0x00005ed9
    5aac:	00005ef5 	.word	0x00005ef5

00005ab0 <svcKernelInitialize>:
    5ab0:	b570      	push	{r4, r5, r6, lr}
    5ab2:	4c39      	ldr	r4, [pc, #228]	; (5b98 <svcKernelInitialize+0xe8>)
    5ab4:	b084      	sub	sp, #16
    5ab6:	7823      	ldrb	r3, [r4, #0]
    5ab8:	2b00      	cmp	r3, #0
    5aba:	d00b      	beq.n	5ad4 <svcKernelInitialize+0x24>
    5abc:	22ff      	movs	r2, #255	; 0xff
    5abe:	4b37      	ldr	r3, [pc, #220]	; (5b9c <svcKernelInitialize+0xec>)
    5ac0:	681b      	ldr	r3, [r3, #0]
    5ac2:	709a      	strb	r2, [r3, #2]
    5ac4:	2301      	movs	r3, #1
    5ac6:	2200      	movs	r2, #0
    5ac8:	2000      	movs	r0, #0
    5aca:	7023      	strb	r3, [r4, #0]
    5acc:	4b34      	ldr	r3, [pc, #208]	; (5ba0 <svcKernelInitialize+0xf0>)
    5ace:	701a      	strb	r2, [r3, #0]
    5ad0:	b004      	add	sp, #16
    5ad2:	bd70      	pop	{r4, r5, r6, pc}
    5ad4:	4b33      	ldr	r3, [pc, #204]	; (5ba4 <svcKernelInitialize+0xf4>)
    5ad6:	4e34      	ldr	r6, [pc, #208]	; (5ba8 <svcKernelInitialize+0xf8>)
    5ad8:	6819      	ldr	r1, [r3, #0]
    5ada:	0030      	movs	r0, r6
    5adc:	f001 fc60 	bl	73a0 <rt_init_mem>
    5ae0:	0003      	movs	r3, r0
    5ae2:	2085      	movs	r0, #133	; 0x85
    5ae4:	2b00      	cmp	r3, #0
    5ae6:	d1f3      	bne.n	5ad0 <svcKernelInitialize+0x20>
    5ae8:	f002 fe70 	bl	87cc <rt_sys_init>
    5aec:	21ff      	movs	r1, #255	; 0xff
    5aee:	4a2b      	ldr	r2, [pc, #172]	; (5b9c <svcKernelInitialize+0xec>)
    5af0:	7823      	ldrb	r3, [r4, #0]
    5af2:	6812      	ldr	r2, [r2, #0]
    5af4:	7091      	strb	r1, [r2, #2]
    5af6:	2b00      	cmp	r3, #0
    5af8:	d1e4      	bne.n	5ac4 <svcKernelInitialize+0x14>
    5afa:	4b2c      	ldr	r3, [pc, #176]	; (5bac <svcKernelInitialize+0xfc>)
    5afc:	681a      	ldr	r2, [r3, #0]
    5afe:	9201      	str	r2, [sp, #4]
    5b00:	2a00      	cmp	r2, #0
    5b02:	d047      	beq.n	5b94 <svcKernelInitialize+0xe4>
    5b04:	685d      	ldr	r5, [r3, #4]
    5b06:	2d00      	cmp	r5, #0
    5b08:	d044      	beq.n	5b94 <svcKernelInitialize+0xe4>
    5b0a:	782b      	ldrb	r3, [r5, #0]
    5b0c:	2b00      	cmp	r3, #0
    5b0e:	d141      	bne.n	5b94 <svcKernelInitialize+0xe4>
    5b10:	0011      	movs	r1, r2
    5b12:	3104      	adds	r1, #4
    5b14:	0089      	lsls	r1, r1, #2
    5b16:	b289      	uxth	r1, r1
    5b18:	0028      	movs	r0, r5
    5b1a:	f001 feeb 	bl	78f4 <rt_mbx_init>
    5b1e:	4b24      	ldr	r3, [pc, #144]	; (5bb0 <svcKernelInitialize+0x100>)
    5b20:	601d      	str	r5, [r3, #0]
    5b22:	4b24      	ldr	r3, [pc, #144]	; (5bb4 <svcKernelInitialize+0x104>)
    5b24:	681a      	ldr	r2, [r3, #0]
    5b26:	9201      	str	r2, [sp, #4]
    5b28:	2a00      	cmp	r2, #0
    5b2a:	d01e      	beq.n	5b6a <svcKernelInitialize+0xba>
    5b2c:	685a      	ldr	r2, [r3, #4]
    5b2e:	9202      	str	r2, [sp, #8]
    5b30:	3203      	adds	r2, #3
    5b32:	2a06      	cmp	r2, #6
    5b34:	d819      	bhi.n	5b6a <svcKernelInitialize+0xba>
    5b36:	68db      	ldr	r3, [r3, #12]
    5b38:	9303      	str	r3, [sp, #12]
    5b3a:	2b00      	cmp	r3, #0
    5b3c:	d019      	beq.n	5b72 <svcKernelInitialize+0xc2>
    5b3e:	0019      	movs	r1, r3
    5b40:	0030      	movs	r0, r6
    5b42:	f001 fc3b 	bl	73bc <rt_alloc_mem>
    5b46:	1e05      	subs	r5, r0, #0
    5b48:	d00f      	beq.n	5b6a <svcKernelInitialize+0xba>
    5b4a:	9b03      	ldr	r3, [sp, #12]
    5b4c:	9902      	ldr	r1, [sp, #8]
    5b4e:	021b      	lsls	r3, r3, #8
    5b50:	3104      	adds	r1, #4
    5b52:	4319      	orrs	r1, r3
    5b54:	0002      	movs	r2, r0
    5b56:	2300      	movs	r3, #0
    5b58:	9801      	ldr	r0, [sp, #4]
    5b5a:	f002 fcf7 	bl	854c <rt_tsk_create>
    5b5e:	2800      	cmp	r0, #0
    5b60:	d110      	bne.n	5b84 <svcKernelInitialize+0xd4>
    5b62:	0029      	movs	r1, r5
    5b64:	0030      	movs	r0, r6
    5b66:	f001 fc4b 	bl	7400 <rt_free_mem>
    5b6a:	2300      	movs	r3, #0
    5b6c:	4a12      	ldr	r2, [pc, #72]	; (5bb8 <svcKernelInitialize+0x108>)
    5b6e:	6013      	str	r3, [r2, #0]
    5b70:	e7a8      	b.n	5ac4 <svcKernelInitialize+0x14>
    5b72:	9902      	ldr	r1, [sp, #8]
    5b74:	2300      	movs	r3, #0
    5b76:	3104      	adds	r1, #4
    5b78:	2200      	movs	r2, #0
    5b7a:	9801      	ldr	r0, [sp, #4]
    5b7c:	f002 fce6 	bl	854c <rt_tsk_create>
    5b80:	2800      	cmp	r0, #0
    5b82:	d0f2      	beq.n	5b6a <svcKernelInitialize+0xba>
    5b84:	3801      	subs	r0, #1
    5b86:	4b0d      	ldr	r3, [pc, #52]	; (5bbc <svcKernelInitialize+0x10c>)
    5b88:	0080      	lsls	r0, r0, #2
    5b8a:	58c3      	ldr	r3, [r0, r3]
    5b8c:	490c      	ldr	r1, [pc, #48]	; (5bc0 <svcKernelInitialize+0x110>)
    5b8e:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5b90:	6351      	str	r1, [r2, #52]	; 0x34
    5b92:	e7eb      	b.n	5b6c <svcKernelInitialize+0xbc>
    5b94:	2500      	movs	r5, #0
    5b96:	e7c2      	b.n	5b1e <svcKernelInitialize+0x6e>
    5b98:	20006080 	.word	0x20006080
    5b9c:	200060c0 	.word	0x200060c0
    5ba0:	20006081 	.word	0x20006081
    5ba4:	00008b60 	.word	0x00008b60
    5ba8:	200039f8 	.word	0x200039f8
    5bac:	00008b78 	.word	0x00008b78
    5bb0:	20004d10 	.word	0x20004d10
    5bb4:	00008b68 	.word	0x00008b68
    5bb8:	20004cec 	.word	0x20004cec
    5bbc:	20004cdc 	.word	0x20004cdc
    5bc0:	00005a99 	.word	0x00005a99

00005bc4 <svcKernelStart>:
    5bc4:	b570      	push	{r4, r5, r6, lr}
    5bc6:	4c10      	ldr	r4, [pc, #64]	; (5c08 <svcKernelStart+0x44>)
    5bc8:	7823      	ldrb	r3, [r4, #0]
    5bca:	2b00      	cmp	r3, #0
    5bcc:	d001      	beq.n	5bd2 <svcKernelStart+0xe>
    5bce:	2000      	movs	r0, #0
    5bd0:	bd70      	pop	{r4, r5, r6, pc}
    5bd2:	4d0e      	ldr	r5, [pc, #56]	; (5c0c <svcKernelStart+0x48>)
    5bd4:	3324      	adds	r3, #36	; 0x24
    5bd6:	682a      	ldr	r2, [r5, #0]
    5bd8:	2000      	movs	r0, #0
    5bda:	5cd1      	ldrb	r1, [r2, r3]
    5bdc:	f002 fc5a 	bl	8494 <rt_tsk_prio>
    5be0:	682b      	ldr	r3, [r5, #0]
    5be2:	78da      	ldrb	r2, [r3, #3]
    5be4:	2aff      	cmp	r2, #255	; 0xff
    5be6:	d007      	beq.n	5bf8 <svcKernelStart+0x34>
    5be8:	686a      	ldr	r2, [r5, #4]
    5bea:	2a00      	cmp	r2, #0
    5bec:	d009      	beq.n	5c02 <svcKernelStart+0x3e>
    5bee:	f002 fe65 	bl	88bc <rt_sys_start>
    5bf2:	2301      	movs	r3, #1
    5bf4:	7023      	strb	r3, [r4, #0]
    5bf6:	e7ea      	b.n	5bce <svcKernelStart+0xa>
    5bf8:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5bfa:	3220      	adds	r2, #32
    5bfc:	f382 8809 	msr	PSP, r2
    5c00:	e7f2      	b.n	5be8 <svcKernelStart+0x24>
    5c02:	c50c      	stmia	r5!, {r2, r3}
    5c04:	e7f3      	b.n	5bee <svcKernelStart+0x2a>
    5c06:	46c0      	nop			; (mov r8, r8)
    5c08:	20006081 	.word	0x20006081
    5c0c:	200060c0 	.word	0x200060c0

00005c10 <svcKernelRunning>:
    5c10:	4b01      	ldr	r3, [pc, #4]	; (5c18 <svcKernelRunning+0x8>)
    5c12:	7818      	ldrb	r0, [r3, #0]
    5c14:	4770      	bx	lr
    5c16:	46c0      	nop			; (mov r8, r8)
    5c18:	20006081 	.word	0x20006081

00005c1c <svcKernelSysTick>:
    5c1c:	b510      	push	{r4, lr}
    5c1e:	b082      	sub	sp, #8
    5c20:	f002 fb88 	bl	8334 <os_tick_val>
    5c24:	0004      	movs	r4, r0
    5c26:	f002 fb8f 	bl	8348 <os_tick_ovf>
    5c2a:	2800      	cmp	r0, #0
    5c2c:	d109      	bne.n	5c42 <svcKernelSysTick+0x26>
    5c2e:	4b0d      	ldr	r3, [pc, #52]	; (5c64 <svcKernelSysTick+0x48>)
    5c30:	681b      	ldr	r3, [r3, #0]
    5c32:	1c58      	adds	r0, r3, #1
    5c34:	9301      	str	r3, [sp, #4]
    5c36:	4b0c      	ldr	r3, [pc, #48]	; (5c68 <svcKernelSysTick+0x4c>)
    5c38:	681b      	ldr	r3, [r3, #0]
    5c3a:	4358      	muls	r0, r3
    5c3c:	1900      	adds	r0, r0, r4
    5c3e:	b002      	add	sp, #8
    5c40:	bd10      	pop	{r4, pc}
    5c42:	f002 fb77 	bl	8334 <os_tick_val>
    5c46:	4284      	cmp	r4, r0
    5c48:	d809      	bhi.n	5c5e <svcKernelSysTick+0x42>
    5c4a:	4b06      	ldr	r3, [pc, #24]	; (5c64 <svcKernelSysTick+0x48>)
    5c4c:	4a06      	ldr	r2, [pc, #24]	; (5c68 <svcKernelSysTick+0x4c>)
    5c4e:	681b      	ldr	r3, [r3, #0]
    5c50:	6810      	ldr	r0, [r2, #0]
    5c52:	9301      	str	r3, [sp, #4]
    5c54:	3001      	adds	r0, #1
    5c56:	3301      	adds	r3, #1
    5c58:	4358      	muls	r0, r3
    5c5a:	1900      	adds	r0, r0, r4
    5c5c:	e7ef      	b.n	5c3e <svcKernelSysTick+0x22>
    5c5e:	0004      	movs	r4, r0
    5c60:	e7f3      	b.n	5c4a <svcKernelSysTick+0x2e>
    5c62:	46c0      	nop			; (mov r8, r8)
    5c64:	00008b40 	.word	0x00008b40
    5c68:	20006088 	.word	0x20006088

00005c6c <osKernelInitialize>:
    5c6c:	b5f0      	push	{r4, r5, r6, r7, lr}
    5c6e:	b085      	sub	sp, #20
    5c70:	f3ef 8405 	mrs	r4, IPSR
    5c74:	2582      	movs	r5, #130	; 0x82
    5c76:	2c00      	cmp	r4, #0
    5c78:	d002      	beq.n	5c80 <osKernelInitialize+0x14>
    5c7a:	0028      	movs	r0, r5
    5c7c:	b005      	add	sp, #20
    5c7e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5c80:	f3ef 8414 	mrs	r4, CONTROL
    5c84:	07e4      	lsls	r4, r4, #31
    5c86:	d504      	bpl.n	5c92 <osKernelInitialize+0x26>
    5c88:	4f45      	ldr	r7, [pc, #276]	; (5da0 <osKernelInitialize+0x134>)
    5c8a:	46bc      	mov	ip, r7
    5c8c:	df00      	svc	0
    5c8e:	0005      	movs	r5, r0
    5c90:	e7f3      	b.n	5c7a <osKernelInitialize+0xe>
    5c92:	4c38      	ldr	r4, [pc, #224]	; (5d74 <osKernelInitialize+0x108>)
    5c94:	7823      	ldrb	r3, [r4, #0]
    5c96:	2b00      	cmp	r3, #0
    5c98:	d00a      	beq.n	5cb0 <osKernelInitialize+0x44>
    5c9a:	22ff      	movs	r2, #255	; 0xff
    5c9c:	4b36      	ldr	r3, [pc, #216]	; (5d78 <osKernelInitialize+0x10c>)
    5c9e:	681b      	ldr	r3, [r3, #0]
    5ca0:	709a      	strb	r2, [r3, #2]
    5ca2:	2301      	movs	r3, #1
    5ca4:	2200      	movs	r2, #0
    5ca6:	7023      	strb	r3, [r4, #0]
    5ca8:	4b34      	ldr	r3, [pc, #208]	; (5d7c <osKernelInitialize+0x110>)
    5caa:	2500      	movs	r5, #0
    5cac:	701a      	strb	r2, [r3, #0]
    5cae:	e7e4      	b.n	5c7a <osKernelInitialize+0xe>
    5cb0:	4e33      	ldr	r6, [pc, #204]	; (5d80 <osKernelInitialize+0x114>)
    5cb2:	4b34      	ldr	r3, [pc, #208]	; (5d84 <osKernelInitialize+0x118>)
    5cb4:	0030      	movs	r0, r6
    5cb6:	6819      	ldr	r1, [r3, #0]
    5cb8:	f001 fb72 	bl	73a0 <rt_init_mem>
    5cbc:	3503      	adds	r5, #3
    5cbe:	2800      	cmp	r0, #0
    5cc0:	d1db      	bne.n	5c7a <osKernelInitialize+0xe>
    5cc2:	f002 fd83 	bl	87cc <rt_sys_init>
    5cc6:	21ff      	movs	r1, #255	; 0xff
    5cc8:	4a2b      	ldr	r2, [pc, #172]	; (5d78 <osKernelInitialize+0x10c>)
    5cca:	7823      	ldrb	r3, [r4, #0]
    5ccc:	6812      	ldr	r2, [r2, #0]
    5cce:	7091      	strb	r1, [r2, #2]
    5cd0:	2b00      	cmp	r3, #0
    5cd2:	d1e6      	bne.n	5ca2 <osKernelInitialize+0x36>
    5cd4:	4b2c      	ldr	r3, [pc, #176]	; (5d88 <osKernelInitialize+0x11c>)
    5cd6:	681a      	ldr	r2, [r3, #0]
    5cd8:	9201      	str	r2, [sp, #4]
    5cda:	2a00      	cmp	r2, #0
    5cdc:	d047      	beq.n	5d6e <osKernelInitialize+0x102>
    5cde:	685d      	ldr	r5, [r3, #4]
    5ce0:	2d00      	cmp	r5, #0
    5ce2:	d044      	beq.n	5d6e <osKernelInitialize+0x102>
    5ce4:	782b      	ldrb	r3, [r5, #0]
    5ce6:	2b00      	cmp	r3, #0
    5ce8:	d141      	bne.n	5d6e <osKernelInitialize+0x102>
    5cea:	0011      	movs	r1, r2
    5cec:	3104      	adds	r1, #4
    5cee:	0089      	lsls	r1, r1, #2
    5cf0:	b289      	uxth	r1, r1
    5cf2:	0028      	movs	r0, r5
    5cf4:	f001 fdfe 	bl	78f4 <rt_mbx_init>
    5cf8:	4b24      	ldr	r3, [pc, #144]	; (5d8c <osKernelInitialize+0x120>)
    5cfa:	601d      	str	r5, [r3, #0]
    5cfc:	4b24      	ldr	r3, [pc, #144]	; (5d90 <osKernelInitialize+0x124>)
    5cfe:	681a      	ldr	r2, [r3, #0]
    5d00:	9201      	str	r2, [sp, #4]
    5d02:	2a00      	cmp	r2, #0
    5d04:	d01e      	beq.n	5d44 <osKernelInitialize+0xd8>
    5d06:	685a      	ldr	r2, [r3, #4]
    5d08:	9202      	str	r2, [sp, #8]
    5d0a:	3203      	adds	r2, #3
    5d0c:	2a06      	cmp	r2, #6
    5d0e:	d819      	bhi.n	5d44 <osKernelInitialize+0xd8>
    5d10:	68db      	ldr	r3, [r3, #12]
    5d12:	9303      	str	r3, [sp, #12]
    5d14:	2b00      	cmp	r3, #0
    5d16:	d019      	beq.n	5d4c <osKernelInitialize+0xe0>
    5d18:	0019      	movs	r1, r3
    5d1a:	0030      	movs	r0, r6
    5d1c:	f001 fb4e 	bl	73bc <rt_alloc_mem>
    5d20:	1e05      	subs	r5, r0, #0
    5d22:	d00f      	beq.n	5d44 <osKernelInitialize+0xd8>
    5d24:	9902      	ldr	r1, [sp, #8]
    5d26:	9b03      	ldr	r3, [sp, #12]
    5d28:	3104      	adds	r1, #4
    5d2a:	021b      	lsls	r3, r3, #8
    5d2c:	4319      	orrs	r1, r3
    5d2e:	0002      	movs	r2, r0
    5d30:	2300      	movs	r3, #0
    5d32:	9801      	ldr	r0, [sp, #4]
    5d34:	f002 fc0a 	bl	854c <rt_tsk_create>
    5d38:	2800      	cmp	r0, #0
    5d3a:	d110      	bne.n	5d5e <osKernelInitialize+0xf2>
    5d3c:	0029      	movs	r1, r5
    5d3e:	0030      	movs	r0, r6
    5d40:	f001 fb5e 	bl	7400 <rt_free_mem>
    5d44:	2300      	movs	r3, #0
    5d46:	4a13      	ldr	r2, [pc, #76]	; (5d94 <osKernelInitialize+0x128>)
    5d48:	6013      	str	r3, [r2, #0]
    5d4a:	e7aa      	b.n	5ca2 <osKernelInitialize+0x36>
    5d4c:	9902      	ldr	r1, [sp, #8]
    5d4e:	2300      	movs	r3, #0
    5d50:	3104      	adds	r1, #4
    5d52:	2200      	movs	r2, #0
    5d54:	9801      	ldr	r0, [sp, #4]
    5d56:	f002 fbf9 	bl	854c <rt_tsk_create>
    5d5a:	2800      	cmp	r0, #0
    5d5c:	d0f2      	beq.n	5d44 <osKernelInitialize+0xd8>
    5d5e:	3801      	subs	r0, #1
    5d60:	4b0d      	ldr	r3, [pc, #52]	; (5d98 <osKernelInitialize+0x12c>)
    5d62:	0080      	lsls	r0, r0, #2
    5d64:	58c3      	ldr	r3, [r0, r3]
    5d66:	490d      	ldr	r1, [pc, #52]	; (5d9c <osKernelInitialize+0x130>)
    5d68:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5d6a:	6351      	str	r1, [r2, #52]	; 0x34
    5d6c:	e7eb      	b.n	5d46 <osKernelInitialize+0xda>
    5d6e:	2500      	movs	r5, #0
    5d70:	e7c2      	b.n	5cf8 <osKernelInitialize+0x8c>
    5d72:	46c0      	nop			; (mov r8, r8)
    5d74:	20006080 	.word	0x20006080
    5d78:	200060c0 	.word	0x200060c0
    5d7c:	20006081 	.word	0x20006081
    5d80:	200039f8 	.word	0x200039f8
    5d84:	00008b60 	.word	0x00008b60
    5d88:	00008b78 	.word	0x00008b78
    5d8c:	20004d10 	.word	0x20004d10
    5d90:	00008b68 	.word	0x00008b68
    5d94:	20004cec 	.word	0x20004cec
    5d98:	20004cdc 	.word	0x20004cdc
    5d9c:	00005a99 	.word	0x00005a99
    5da0:	00005ab1 	.word	0x00005ab1

00005da4 <osKernelStart>:
    5da4:	b5b0      	push	{r4, r5, r7, lr}
    5da6:	b088      	sub	sp, #32
    5da8:	f3ef 8405 	mrs	r4, IPSR
    5dac:	2582      	movs	r5, #130	; 0x82
    5dae:	2c00      	cmp	r4, #0
    5db0:	d002      	beq.n	5db8 <osKernelStart+0x14>
    5db2:	0028      	movs	r0, r5
    5db4:	b008      	add	sp, #32
    5db6:	bdb0      	pop	{r4, r5, r7, pc}
    5db8:	f3ef 8414 	mrs	r4, CONTROL
    5dbc:	3d7f      	subs	r5, #127	; 0x7f
    5dbe:	402c      	ands	r4, r5
    5dc0:	2c02      	cmp	r4, #2
    5dc2:	d01c      	beq.n	5dfe <osKernelStart+0x5a>
    5dc4:	2c03      	cmp	r4, #3
    5dc6:	d014      	beq.n	5df2 <osKernelStart+0x4e>
    5dc8:	2c01      	cmp	r4, #1
    5dca:	d020      	beq.n	5e0e <osKernelStart+0x6a>
    5dcc:	ac08      	add	r4, sp, #32
    5dce:	f384 8809 	msr	PSP, r4
    5dd2:	4c10      	ldr	r4, [pc, #64]	; (5e14 <osKernelStart+0x70>)
    5dd4:	7824      	ldrb	r4, [r4, #0]
    5dd6:	07e4      	lsls	r4, r4, #31
    5dd8:	d515      	bpl.n	5e06 <osKernelStart+0x62>
    5dda:	2402      	movs	r4, #2
    5ddc:	f384 8814 	msr	CONTROL, r4
    5de0:	f3bf 8f4f 	dsb	sy
    5de4:	f3bf 8f6f 	isb	sy
    5de8:	4f0b      	ldr	r7, [pc, #44]	; (5e18 <osKernelStart+0x74>)
    5dea:	46bc      	mov	ip, r7
    5dec:	df00      	svc	0
    5dee:	0005      	movs	r5, r0
    5df0:	e7df      	b.n	5db2 <osKernelStart+0xe>
    5df2:	4c08      	ldr	r4, [pc, #32]	; (5e14 <osKernelStart+0x70>)
    5df4:	25ff      	movs	r5, #255	; 0xff
    5df6:	7824      	ldrb	r4, [r4, #0]
    5df8:	07e4      	lsls	r4, r4, #31
    5dfa:	d4da      	bmi.n	5db2 <osKernelStart+0xe>
    5dfc:	e7f4      	b.n	5de8 <osKernelStart+0x44>
    5dfe:	4c05      	ldr	r4, [pc, #20]	; (5e14 <osKernelStart+0x70>)
    5e00:	7824      	ldrb	r4, [r4, #0]
    5e02:	07e4      	lsls	r4, r4, #31
    5e04:	d4f0      	bmi.n	5de8 <osKernelStart+0x44>
    5e06:	2403      	movs	r4, #3
    5e08:	f384 8814 	msr	CONTROL, r4
    5e0c:	e7e8      	b.n	5de0 <osKernelStart+0x3c>
    5e0e:	25ff      	movs	r5, #255	; 0xff
    5e10:	e7cf      	b.n	5db2 <osKernelStart+0xe>
    5e12:	46c0      	nop			; (mov r8, r8)
    5e14:	00008b44 	.word	0x00008b44
    5e18:	00005bc5 	.word	0x00005bc5

00005e1c <osKernelRunning>:
    5e1c:	b590      	push	{r4, r7, lr}
    5e1e:	f3ef 8405 	mrs	r4, IPSR
    5e22:	2c00      	cmp	r4, #0
    5e24:	d107      	bne.n	5e36 <osKernelRunning+0x1a>
    5e26:	f3ef 8414 	mrs	r4, CONTROL
    5e2a:	07e4      	lsls	r4, r4, #31
    5e2c:	d503      	bpl.n	5e36 <osKernelRunning+0x1a>
    5e2e:	4f04      	ldr	r7, [pc, #16]	; (5e40 <osKernelRunning+0x24>)
    5e30:	46bc      	mov	ip, r7
    5e32:	df00      	svc	0
    5e34:	e001      	b.n	5e3a <osKernelRunning+0x1e>
    5e36:	4b01      	ldr	r3, [pc, #4]	; (5e3c <osKernelRunning+0x20>)
    5e38:	7818      	ldrb	r0, [r3, #0]
    5e3a:	bd90      	pop	{r4, r7, pc}
    5e3c:	20006081 	.word	0x20006081
    5e40:	00005c11 	.word	0x00005c11

00005e44 <osKernelSysTick>:
    5e44:	b5b0      	push	{r4, r5, r7, lr}
    5e46:	f3ef 8405 	mrs	r4, IPSR
    5e4a:	2500      	movs	r5, #0
    5e4c:	2c00      	cmp	r4, #0
    5e4e:	d103      	bne.n	5e58 <osKernelSysTick+0x14>
    5e50:	4f02      	ldr	r7, [pc, #8]	; (5e5c <osKernelSysTick+0x18>)
    5e52:	46bc      	mov	ip, r7
    5e54:	df00      	svc	0
    5e56:	0005      	movs	r5, r0
    5e58:	0028      	movs	r0, r5
    5e5a:	bdb0      	pop	{r4, r5, r7, pc}
    5e5c:	00005c1d 	.word	0x00005c1d

00005e60 <svcThreadCreate>:
    5e60:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5e62:	0004      	movs	r4, r0
    5e64:	000d      	movs	r5, r1
    5e66:	2800      	cmp	r0, #0
    5e68:	d01f      	beq.n	5eaa <svcThreadCreate+0x4a>
    5e6a:	6800      	ldr	r0, [r0, #0]
    5e6c:	2800      	cmp	r0, #0
    5e6e:	d01c      	beq.n	5eaa <svcThreadCreate+0x4a>
    5e70:	6863      	ldr	r3, [r4, #4]
    5e72:	1cda      	adds	r2, r3, #3
    5e74:	2a06      	cmp	r2, #6
    5e76:	d818      	bhi.n	5eaa <svcThreadCreate+0x4a>
    5e78:	68e1      	ldr	r1, [r4, #12]
    5e7a:	2900      	cmp	r1, #0
    5e7c:	d017      	beq.n	5eae <svcThreadCreate+0x4e>
    5e7e:	4e13      	ldr	r6, [pc, #76]	; (5ecc <svcThreadCreate+0x6c>)
    5e80:	0030      	movs	r0, r6
    5e82:	f001 fa9b 	bl	73bc <rt_alloc_mem>
    5e86:	1e07      	subs	r7, r0, #0
    5e88:	d00f      	beq.n	5eaa <svcThreadCreate+0x4a>
    5e8a:	6863      	ldr	r3, [r4, #4]
    5e8c:	6820      	ldr	r0, [r4, #0]
    5e8e:	1d19      	adds	r1, r3, #4
    5e90:	68e3      	ldr	r3, [r4, #12]
    5e92:	003a      	movs	r2, r7
    5e94:	021b      	lsls	r3, r3, #8
    5e96:	4319      	orrs	r1, r3
    5e98:	002b      	movs	r3, r5
    5e9a:	f002 fb57 	bl	854c <rt_tsk_create>
    5e9e:	2800      	cmp	r0, #0
    5ea0:	d10c      	bne.n	5ebc <svcThreadCreate+0x5c>
    5ea2:	0039      	movs	r1, r7
    5ea4:	0030      	movs	r0, r6
    5ea6:	f001 faab 	bl	7400 <rt_free_mem>
    5eaa:	2000      	movs	r0, #0
    5eac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5eae:	1d19      	adds	r1, r3, #4
    5eb0:	2200      	movs	r2, #0
    5eb2:	002b      	movs	r3, r5
    5eb4:	f002 fb4a 	bl	854c <rt_tsk_create>
    5eb8:	2800      	cmp	r0, #0
    5eba:	d0f6      	beq.n	5eaa <svcThreadCreate+0x4a>
    5ebc:	4b04      	ldr	r3, [pc, #16]	; (5ed0 <svcThreadCreate+0x70>)
    5ebe:	3801      	subs	r0, #1
    5ec0:	0080      	lsls	r0, r0, #2
    5ec2:	58c0      	ldr	r0, [r0, r3]
    5ec4:	4a03      	ldr	r2, [pc, #12]	; (5ed4 <svcThreadCreate+0x74>)
    5ec6:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5ec8:	635a      	str	r2, [r3, #52]	; 0x34
    5eca:	e7ef      	b.n	5eac <svcThreadCreate+0x4c>
    5ecc:	200039f8 	.word	0x200039f8
    5ed0:	20004cdc 	.word	0x20004cdc
    5ed4:	00005a99 	.word	0x00005a99

00005ed8 <svcThreadGetId>:
    5ed8:	b510      	push	{r4, lr}
    5eda:	f002 fad1 	bl	8480 <rt_tsk_self>
    5ede:	2800      	cmp	r0, #0
    5ee0:	d004      	beq.n	5eec <svcThreadGetId+0x14>
    5ee2:	3801      	subs	r0, #1
    5ee4:	4b02      	ldr	r3, [pc, #8]	; (5ef0 <svcThreadGetId+0x18>)
    5ee6:	0080      	lsls	r0, r0, #2
    5ee8:	58c0      	ldr	r0, [r0, r3]
    5eea:	bd10      	pop	{r4, pc}
    5eec:	2000      	movs	r0, #0
    5eee:	e7fc      	b.n	5eea <svcThreadGetId+0x12>
    5ef0:	20004cdc 	.word	0x20004cdc

00005ef4 <svcThreadTerminate>:
    5ef4:	0003      	movs	r3, r0
    5ef6:	b510      	push	{r4, lr}
    5ef8:	2080      	movs	r0, #128	; 0x80
    5efa:	2b00      	cmp	r3, #0
    5efc:	d017      	beq.n	5f2e <svcThreadTerminate+0x3a>
    5efe:	079a      	lsls	r2, r3, #30
    5f00:	d115      	bne.n	5f2e <svcThreadTerminate+0x3a>
    5f02:	781a      	ldrb	r2, [r3, #0]
    5f04:	2a00      	cmp	r2, #0
    5f06:	d112      	bne.n	5f2e <svcThreadTerminate+0x3a>
    5f08:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    5f0a:	2400      	movs	r4, #0
    5f0c:	2a00      	cmp	r2, #0
    5f0e:	d000      	beq.n	5f12 <svcThreadTerminate+0x1e>
    5f10:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    5f12:	78d8      	ldrb	r0, [r3, #3]
    5f14:	f002 fb94 	bl	8640 <rt_tsk_delete>
    5f18:	0003      	movs	r3, r0
    5f1a:	2081      	movs	r0, #129	; 0x81
    5f1c:	2bff      	cmp	r3, #255	; 0xff
    5f1e:	d006      	beq.n	5f2e <svcThreadTerminate+0x3a>
    5f20:	2c00      	cmp	r4, #0
    5f22:	d005      	beq.n	5f30 <svcThreadTerminate+0x3c>
    5f24:	0021      	movs	r1, r4
    5f26:	4803      	ldr	r0, [pc, #12]	; (5f34 <svcThreadTerminate+0x40>)
    5f28:	f001 fa6a 	bl	7400 <rt_free_mem>
    5f2c:	2000      	movs	r0, #0
    5f2e:	bd10      	pop	{r4, pc}
    5f30:	2000      	movs	r0, #0
    5f32:	e7fc      	b.n	5f2e <svcThreadTerminate+0x3a>
    5f34:	200039f8 	.word	0x200039f8

00005f38 <svcThreadYield>:
    5f38:	b510      	push	{r4, lr}
    5f3a:	f002 fa8b 	bl	8454 <rt_tsk_pass>
    5f3e:	2000      	movs	r0, #0
    5f40:	bd10      	pop	{r4, pc}
    5f42:	46c0      	nop			; (mov r8, r8)

00005f44 <svcThreadSetPriority>:
    5f44:	0003      	movs	r3, r0
    5f46:	b510      	push	{r4, lr}
    5f48:	2080      	movs	r0, #128	; 0x80
    5f4a:	2b00      	cmp	r3, #0
    5f4c:	d008      	beq.n	5f60 <svcThreadSetPriority+0x1c>
    5f4e:	079a      	lsls	r2, r3, #30
    5f50:	d106      	bne.n	5f60 <svcThreadSetPriority+0x1c>
    5f52:	781a      	ldrb	r2, [r3, #0]
    5f54:	2a00      	cmp	r2, #0
    5f56:	d103      	bne.n	5f60 <svcThreadSetPriority+0x1c>
    5f58:	1cca      	adds	r2, r1, #3
    5f5a:	2086      	movs	r0, #134	; 0x86
    5f5c:	2a06      	cmp	r2, #6
    5f5e:	d900      	bls.n	5f62 <svcThreadSetPriority+0x1e>
    5f60:	bd10      	pop	{r4, pc}
    5f62:	3104      	adds	r1, #4
    5f64:	78d8      	ldrb	r0, [r3, #3]
    5f66:	b2c9      	uxtb	r1, r1
    5f68:	f002 fa94 	bl	8494 <rt_tsk_prio>
    5f6c:	0003      	movs	r3, r0
    5f6e:	2081      	movs	r0, #129	; 0x81
    5f70:	2bff      	cmp	r3, #255	; 0xff
    5f72:	d0f5      	beq.n	5f60 <svcThreadSetPriority+0x1c>
    5f74:	2000      	movs	r0, #0
    5f76:	e7f3      	b.n	5f60 <svcThreadSetPriority+0x1c>

00005f78 <svcThreadGetPriority>:
    5f78:	0003      	movs	r3, r0
    5f7a:	2084      	movs	r0, #132	; 0x84
    5f7c:	2b00      	cmp	r3, #0
    5f7e:	d006      	beq.n	5f8e <svcThreadGetPriority+0x16>
    5f80:	079a      	lsls	r2, r3, #30
    5f82:	d104      	bne.n	5f8e <svcThreadGetPriority+0x16>
    5f84:	781a      	ldrb	r2, [r3, #0]
    5f86:	2a00      	cmp	r2, #0
    5f88:	d101      	bne.n	5f8e <svcThreadGetPriority+0x16>
    5f8a:	7898      	ldrb	r0, [r3, #2]
    5f8c:	3804      	subs	r0, #4
    5f8e:	4770      	bx	lr

00005f90 <osThreadCreate>:
    5f90:	b5f0      	push	{r4, r5, r6, r7, lr}
    5f92:	4647      	mov	r7, r8
    5f94:	0004      	movs	r4, r0
    5f96:	b480      	push	{r7}
    5f98:	000d      	movs	r5, r1
    5f9a:	f3ef 8105 	mrs	r1, IPSR
    5f9e:	2900      	cmp	r1, #0
    5fa0:	d132      	bne.n	6008 <osThreadCreate+0x78>
    5fa2:	f3ef 8114 	mrs	r1, CONTROL
    5fa6:	07c9      	lsls	r1, r1, #31
    5fa8:	d507      	bpl.n	5fba <osThreadCreate+0x2a>
    5faa:	0020      	movs	r0, r4
    5fac:	0029      	movs	r1, r5
    5fae:	4f23      	ldr	r7, [pc, #140]	; (603c <osThreadCreate+0xac>)
    5fb0:	46bc      	mov	ip, r7
    5fb2:	df00      	svc	0
    5fb4:	bc04      	pop	{r2}
    5fb6:	4690      	mov	r8, r2
    5fb8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5fba:	491c      	ldr	r1, [pc, #112]	; (602c <osThreadCreate+0x9c>)
    5fbc:	7809      	ldrb	r1, [r1, #0]
    5fbe:	2900      	cmp	r1, #0
    5fc0:	d1f3      	bne.n	5faa <osThreadCreate+0x1a>
    5fc2:	2800      	cmp	r0, #0
    5fc4:	d020      	beq.n	6008 <osThreadCreate+0x78>
    5fc6:	6800      	ldr	r0, [r0, #0]
    5fc8:	2800      	cmp	r0, #0
    5fca:	d01d      	beq.n	6008 <osThreadCreate+0x78>
    5fcc:	6863      	ldr	r3, [r4, #4]
    5fce:	1cda      	adds	r2, r3, #3
    5fd0:	2a06      	cmp	r2, #6
    5fd2:	d819      	bhi.n	6008 <osThreadCreate+0x78>
    5fd4:	68e1      	ldr	r1, [r4, #12]
    5fd6:	2900      	cmp	r1, #0
    5fd8:	d018      	beq.n	600c <osThreadCreate+0x7c>
    5fda:	4e15      	ldr	r6, [pc, #84]	; (6030 <osThreadCreate+0xa0>)
    5fdc:	0030      	movs	r0, r6
    5fde:	f001 f9ed 	bl	73bc <rt_alloc_mem>
    5fe2:	4680      	mov	r8, r0
    5fe4:	2800      	cmp	r0, #0
    5fe6:	d00f      	beq.n	6008 <osThreadCreate+0x78>
    5fe8:	6863      	ldr	r3, [r4, #4]
    5fea:	6820      	ldr	r0, [r4, #0]
    5fec:	1d19      	adds	r1, r3, #4
    5fee:	68e3      	ldr	r3, [r4, #12]
    5ff0:	4642      	mov	r2, r8
    5ff2:	021b      	lsls	r3, r3, #8
    5ff4:	4319      	orrs	r1, r3
    5ff6:	002b      	movs	r3, r5
    5ff8:	f002 faa8 	bl	854c <rt_tsk_create>
    5ffc:	2800      	cmp	r0, #0
    5ffe:	d10c      	bne.n	601a <osThreadCreate+0x8a>
    6000:	4641      	mov	r1, r8
    6002:	0030      	movs	r0, r6
    6004:	f001 f9fc 	bl	7400 <rt_free_mem>
    6008:	2000      	movs	r0, #0
    600a:	e7d3      	b.n	5fb4 <osThreadCreate+0x24>
    600c:	1d19      	adds	r1, r3, #4
    600e:	2200      	movs	r2, #0
    6010:	002b      	movs	r3, r5
    6012:	f002 fa9b 	bl	854c <rt_tsk_create>
    6016:	2800      	cmp	r0, #0
    6018:	d0f6      	beq.n	6008 <osThreadCreate+0x78>
    601a:	4b06      	ldr	r3, [pc, #24]	; (6034 <osThreadCreate+0xa4>)
    601c:	3801      	subs	r0, #1
    601e:	0080      	lsls	r0, r0, #2
    6020:	58c0      	ldr	r0, [r0, r3]
    6022:	4a05      	ldr	r2, [pc, #20]	; (6038 <osThreadCreate+0xa8>)
    6024:	6a83      	ldr	r3, [r0, #40]	; 0x28
    6026:	635a      	str	r2, [r3, #52]	; 0x34
    6028:	e7c4      	b.n	5fb4 <osThreadCreate+0x24>
    602a:	46c0      	nop			; (mov r8, r8)
    602c:	20006081 	.word	0x20006081
    6030:	200039f8 	.word	0x200039f8
    6034:	20004cdc 	.word	0x20004cdc
    6038:	00005a99 	.word	0x00005a99
    603c:	00005e61 	.word	0x00005e61

00006040 <osThreadGetId>:
    6040:	b590      	push	{r4, r7, lr}
    6042:	f3ef 8405 	mrs	r4, IPSR
    6046:	2c00      	cmp	r4, #0
    6048:	d103      	bne.n	6052 <osThreadGetId+0x12>
    604a:	4f03      	ldr	r7, [pc, #12]	; (6058 <osThreadGetId+0x18>)
    604c:	46bc      	mov	ip, r7
    604e:	df00      	svc	0
    6050:	bd90      	pop	{r4, r7, pc}
    6052:	2000      	movs	r0, #0
    6054:	e7fc      	b.n	6050 <osThreadGetId+0x10>
    6056:	0000      	.short	0x0000
    6058:	00005ed9 	.word	0x00005ed9

0000605c <osThreadTerminate>:
    605c:	b5b0      	push	{r4, r5, r7, lr}
    605e:	0005      	movs	r5, r0
    6060:	f3ef 8405 	mrs	r4, IPSR
    6064:	2082      	movs	r0, #130	; 0x82
    6066:	2c00      	cmp	r4, #0
    6068:	d000      	beq.n	606c <osThreadTerminate+0x10>
    606a:	bdb0      	pop	{r4, r5, r7, pc}
    606c:	0028      	movs	r0, r5
    606e:	4f02      	ldr	r7, [pc, #8]	; (6078 <osThreadTerminate+0x1c>)
    6070:	46bc      	mov	ip, r7
    6072:	df00      	svc	0
    6074:	e7f9      	b.n	606a <osThreadTerminate+0xe>
    6076:	0000      	.short	0x0000
    6078:	00005ef5 	.word	0x00005ef5

0000607c <osThreadYield>:
    607c:	b5b0      	push	{r4, r5, r7, lr}
    607e:	f3ef 8405 	mrs	r4, IPSR
    6082:	2582      	movs	r5, #130	; 0x82
    6084:	2c00      	cmp	r4, #0
    6086:	d001      	beq.n	608c <osThreadYield+0x10>
    6088:	0028      	movs	r0, r5
    608a:	bdb0      	pop	{r4, r5, r7, pc}
    608c:	4f02      	ldr	r7, [pc, #8]	; (6098 <osThreadYield+0x1c>)
    608e:	46bc      	mov	ip, r7
    6090:	df00      	svc	0
    6092:	0005      	movs	r5, r0
    6094:	e7f8      	b.n	6088 <osThreadYield+0xc>
    6096:	0000      	.short	0x0000
    6098:	00005f39 	.word	0x00005f39

0000609c <osThreadSetPriority>:
    609c:	b5b0      	push	{r4, r5, r7, lr}
    609e:	0005      	movs	r5, r0
    60a0:	f3ef 8405 	mrs	r4, IPSR
    60a4:	2082      	movs	r0, #130	; 0x82
    60a6:	2c00      	cmp	r4, #0
    60a8:	d000      	beq.n	60ac <osThreadSetPriority+0x10>
    60aa:	bdb0      	pop	{r4, r5, r7, pc}
    60ac:	0028      	movs	r0, r5
    60ae:	4f02      	ldr	r7, [pc, #8]	; (60b8 <osThreadSetPriority+0x1c>)
    60b0:	46bc      	mov	ip, r7
    60b2:	df00      	svc	0
    60b4:	e7f9      	b.n	60aa <osThreadSetPriority+0xe>
    60b6:	0000      	.short	0x0000
    60b8:	00005f45 	.word	0x00005f45

000060bc <osThreadGetPriority>:
    60bc:	b5b0      	push	{r4, r5, r7, lr}
    60be:	0005      	movs	r5, r0
    60c0:	f3ef 8405 	mrs	r4, IPSR
    60c4:	2084      	movs	r0, #132	; 0x84
    60c6:	2c00      	cmp	r4, #0
    60c8:	d000      	beq.n	60cc <osThreadGetPriority+0x10>
    60ca:	bdb0      	pop	{r4, r5, r7, pc}
    60cc:	0028      	movs	r0, r5
    60ce:	4f02      	ldr	r7, [pc, #8]	; (60d8 <osThreadGetPriority+0x1c>)
    60d0:	46bc      	mov	ip, r7
    60d2:	df00      	svc	0
    60d4:	e7f9      	b.n	60ca <osThreadGetPriority+0xe>
    60d6:	0000      	.short	0x0000
    60d8:	00005f79 	.word	0x00005f79

000060dc <svcDelay>:
    60dc:	b500      	push	{lr}
    60de:	b083      	sub	sp, #12
    60e0:	2800      	cmp	r0, #0
    60e2:	d019      	beq.n	6118 <svcDelay+0x3c>
    60e4:	1c43      	adds	r3, r0, #1
    60e6:	d01c      	beq.n	6122 <svcDelay+0x46>
    60e8:	4b10      	ldr	r3, [pc, #64]	; (612c <svcDelay+0x50>)
    60ea:	4298      	cmp	r0, r3
    60ec:	d817      	bhi.n	611e <svcDelay+0x42>
    60ee:	4b10      	ldr	r3, [pc, #64]	; (6130 <svcDelay+0x54>)
    60f0:	681b      	ldr	r3, [r3, #0]
    60f2:	9301      	str	r3, [sp, #4]
    60f4:	23fa      	movs	r3, #250	; 0xfa
    60f6:	009b      	lsls	r3, r3, #2
    60f8:	4358      	muls	r0, r3
    60fa:	9b01      	ldr	r3, [sp, #4]
    60fc:	9901      	ldr	r1, [sp, #4]
    60fe:	3b01      	subs	r3, #1
    6100:	18c0      	adds	r0, r0, r3
    6102:	f7fe fbdb 	bl	48bc <__aeabi_uidiv>
    6106:	4b0b      	ldr	r3, [pc, #44]	; (6134 <svcDelay+0x58>)
    6108:	0002      	movs	r2, r0
    610a:	0018      	movs	r0, r3
    610c:	429a      	cmp	r2, r3
    610e:	d90a      	bls.n	6126 <svcDelay+0x4a>
    6110:	f001 fb34 	bl	777c <rt_dly_wait>
    6114:	2040      	movs	r0, #64	; 0x40
    6116:	e000      	b.n	611a <svcDelay+0x3e>
    6118:	2000      	movs	r0, #0
    611a:	b003      	add	sp, #12
    611c:	bd00      	pop	{pc}
    611e:	4805      	ldr	r0, [pc, #20]	; (6134 <svcDelay+0x58>)
    6120:	e7f6      	b.n	6110 <svcDelay+0x34>
    6122:	4805      	ldr	r0, [pc, #20]	; (6138 <svcDelay+0x5c>)
    6124:	e7f4      	b.n	6110 <svcDelay+0x34>
    6126:	b290      	uxth	r0, r2
    6128:	e7f2      	b.n	6110 <svcDelay+0x34>
    612a:	46c0      	nop			; (mov r8, r8)
    612c:	003d0900 	.word	0x003d0900
    6130:	00008b50 	.word	0x00008b50
    6134:	0000fffe 	.word	0x0000fffe
    6138:	0000ffff 	.word	0x0000ffff

0000613c <osDelay>:
    613c:	b5b0      	push	{r4, r5, r7, lr}
    613e:	0005      	movs	r5, r0
    6140:	f3ef 8405 	mrs	r4, IPSR
    6144:	2082      	movs	r0, #130	; 0x82
    6146:	2c00      	cmp	r4, #0
    6148:	d000      	beq.n	614c <osDelay+0x10>
    614a:	bdb0      	pop	{r4, r5, r7, pc}
    614c:	0028      	movs	r0, r5
    614e:	4f02      	ldr	r7, [pc, #8]	; (6158 <osDelay+0x1c>)
    6150:	46bc      	mov	ip, r7
    6152:	df00      	svc	0
    6154:	e7f9      	b.n	614a <osDelay+0xe>
    6156:	0000      	.short	0x0000
    6158:	000060dd 	.word	0x000060dd

0000615c <osWait>:
    615c:	23ff      	movs	r3, #255	; 0xff
    615e:	6003      	str	r3, [r0, #0]
    6160:	4770      	bx	lr
    6162:	46c0      	nop			; (mov r8, r8)

00006164 <svcTimerCreate>:
    6164:	b510      	push	{r4, lr}
    6166:	2800      	cmp	r0, #0
    6168:	d016      	beq.n	6198 <svcTimerCreate+0x34>
    616a:	6803      	ldr	r3, [r0, #0]
    616c:	2b00      	cmp	r3, #0
    616e:	d013      	beq.n	6198 <svcTimerCreate+0x34>
    6170:	6843      	ldr	r3, [r0, #4]
    6172:	2b00      	cmp	r3, #0
    6174:	d010      	beq.n	6198 <svcTimerCreate+0x34>
    6176:	2901      	cmp	r1, #1
    6178:	d80e      	bhi.n	6198 <svcTimerCreate+0x34>
    617a:	4c08      	ldr	r4, [pc, #32]	; (619c <svcTimerCreate+0x38>)
    617c:	6824      	ldr	r4, [r4, #0]
    617e:	2c00      	cmp	r4, #0
    6180:	d00a      	beq.n	6198 <svcTimerCreate+0x34>
    6182:	791c      	ldrb	r4, [r3, #4]
    6184:	2c00      	cmp	r4, #0
    6186:	d107      	bne.n	6198 <svcTimerCreate+0x34>
    6188:	6158      	str	r0, [r3, #20]
    618a:	0018      	movs	r0, r3
    618c:	601c      	str	r4, [r3, #0]
    618e:	3401      	adds	r4, #1
    6190:	711c      	strb	r4, [r3, #4]
    6192:	7159      	strb	r1, [r3, #5]
    6194:	611a      	str	r2, [r3, #16]
    6196:	bd10      	pop	{r4, pc}
    6198:	2000      	movs	r0, #0
    619a:	e7fc      	b.n	6196 <svcTimerCreate+0x32>
    619c:	20004cec 	.word	0x20004cec

000061a0 <svcTimerStart>:
    61a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    61a2:	0004      	movs	r4, r0
    61a4:	2080      	movs	r0, #128	; 0x80
    61a6:	07a3      	lsls	r3, r4, #30
    61a8:	d104      	bne.n	61b4 <svcTimerStart+0x14>
    61aa:	2c00      	cmp	r4, #0
    61ac:	d002      	beq.n	61b4 <svcTimerStart+0x14>
    61ae:	3006      	adds	r0, #6
    61b0:	2900      	cmp	r1, #0
    61b2:	d100      	bne.n	61b6 <svcTimerStart+0x16>
    61b4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    61b6:	22fa      	movs	r2, #250	; 0xfa
    61b8:	4b2f      	ldr	r3, [pc, #188]	; (6278 <svcTimerStart+0xd8>)
    61ba:	0092      	lsls	r2, r2, #2
    61bc:	681e      	ldr	r6, [r3, #0]
    61be:	0008      	movs	r0, r1
    61c0:	2300      	movs	r3, #0
    61c2:	2100      	movs	r1, #0
    61c4:	f7fe fdba 	bl	4d3c <__aeabi_lmul>
    61c8:	2700      	movs	r7, #0
    61ca:	0002      	movs	r2, r0
    61cc:	000b      	movs	r3, r1
    61ce:	2001      	movs	r0, #1
    61d0:	4240      	negs	r0, r0
    61d2:	17c1      	asrs	r1, r0, #31
    61d4:	1980      	adds	r0, r0, r6
    61d6:	4179      	adcs	r1, r7
    61d8:	1880      	adds	r0, r0, r2
    61da:	4159      	adcs	r1, r3
    61dc:	003b      	movs	r3, r7
    61de:	0032      	movs	r2, r6
    61e0:	f7fe fd8c 	bl	4cfc <__aeabi_uldivmod>
    61e4:	7923      	ldrb	r3, [r4, #4]
    61e6:	2b01      	cmp	r3, #1
    61e8:	d011      	beq.n	620e <svcTimerStart+0x6e>
    61ea:	2b02      	cmp	r3, #2
    61ec:	d10d      	bne.n	620a <svcTimerStart+0x6a>
    61ee:	4d23      	ldr	r5, [pc, #140]	; (627c <svcTimerStart+0xdc>)
    61f0:	6829      	ldr	r1, [r5, #0]
    61f2:	2900      	cmp	r1, #0
    61f4:	d009      	beq.n	620a <svcTimerStart+0x6a>
    61f6:	428c      	cmp	r4, r1
    61f8:	d03a      	beq.n	6270 <svcTimerStart+0xd0>
    61fa:	000a      	movs	r2, r1
    61fc:	e002      	b.n	6204 <svcTimerStart+0x64>
    61fe:	429c      	cmp	r4, r3
    6200:	d028      	beq.n	6254 <svcTimerStart+0xb4>
    6202:	001a      	movs	r2, r3
    6204:	6813      	ldr	r3, [r2, #0]
    6206:	2b00      	cmp	r3, #0
    6208:	d1f9      	bne.n	61fe <svcTimerStart+0x5e>
    620a:	2081      	movs	r0, #129	; 0x81
    620c:	e7d2      	b.n	61b4 <svcTimerStart+0x14>
    620e:	2302      	movs	r3, #2
    6210:	4d1a      	ldr	r5, [pc, #104]	; (627c <svcTimerStart+0xdc>)
    6212:	7123      	strb	r3, [r4, #4]
    6214:	6829      	ldr	r1, [r5, #0]
    6216:	60e0      	str	r0, [r4, #12]
    6218:	2900      	cmp	r1, #0
    621a:	d00b      	beq.n	6234 <svcTimerStart+0x94>
    621c:	688a      	ldr	r2, [r1, #8]
    621e:	4290      	cmp	r0, r2
    6220:	d204      	bcs.n	622c <svcTimerStart+0x8c>
    6222:	e00f      	b.n	6244 <svcTimerStart+0xa4>
    6224:	689a      	ldr	r2, [r3, #8]
    6226:	4282      	cmp	r2, r0
    6228:	d80e      	bhi.n	6248 <svcTimerStart+0xa8>
    622a:	0019      	movs	r1, r3
    622c:	680b      	ldr	r3, [r1, #0]
    622e:	1a80      	subs	r0, r0, r2
    6230:	2b00      	cmp	r3, #0
    6232:	d1f7      	bne.n	6224 <svcTimerStart+0x84>
    6234:	2300      	movs	r3, #0
    6236:	60a0      	str	r0, [r4, #8]
    6238:	6023      	str	r3, [r4, #0]
    623a:	2900      	cmp	r1, #0
    623c:	d015      	beq.n	626a <svcTimerStart+0xca>
    623e:	600c      	str	r4, [r1, #0]
    6240:	2000      	movs	r0, #0
    6242:	e7b7      	b.n	61b4 <svcTimerStart+0x14>
    6244:	000b      	movs	r3, r1
    6246:	2100      	movs	r1, #0
    6248:	60a0      	str	r0, [r4, #8]
    624a:	689a      	ldr	r2, [r3, #8]
    624c:	6023      	str	r3, [r4, #0]
    624e:	1a10      	subs	r0, r2, r0
    6250:	6098      	str	r0, [r3, #8]
    6252:	e7f2      	b.n	623a <svcTimerStart+0x9a>
    6254:	6823      	ldr	r3, [r4, #0]
    6256:	6013      	str	r3, [r2, #0]
    6258:	6823      	ldr	r3, [r4, #0]
    625a:	2b00      	cmp	r3, #0
    625c:	d0dc      	beq.n	6218 <svcTimerStart+0x78>
    625e:	68a6      	ldr	r6, [r4, #8]
    6260:	689a      	ldr	r2, [r3, #8]
    6262:	46b4      	mov	ip, r6
    6264:	4462      	add	r2, ip
    6266:	609a      	str	r2, [r3, #8]
    6268:	e7d6      	b.n	6218 <svcTimerStart+0x78>
    626a:	602c      	str	r4, [r5, #0]
    626c:	2000      	movs	r0, #0
    626e:	e7a1      	b.n	61b4 <svcTimerStart+0x14>
    6270:	6823      	ldr	r3, [r4, #0]
    6272:	602b      	str	r3, [r5, #0]
    6274:	0019      	movs	r1, r3
    6276:	e7f0      	b.n	625a <svcTimerStart+0xba>
    6278:	00008b50 	.word	0x00008b50
    627c:	20006084 	.word	0x20006084

00006280 <svcTimerStop>:
    6280:	0003      	movs	r3, r0
    6282:	2080      	movs	r0, #128	; 0x80
    6284:	079a      	lsls	r2, r3, #30
    6286:	d105      	bne.n	6294 <svcTimerStop+0x14>
    6288:	2b00      	cmp	r3, #0
    628a:	d003      	beq.n	6294 <svcTimerStop+0x14>
    628c:	791a      	ldrb	r2, [r3, #4]
    628e:	2a02      	cmp	r2, #2
    6290:	d001      	beq.n	6296 <svcTimerStop+0x16>
    6292:	2081      	movs	r0, #129	; 0x81
    6294:	4770      	bx	lr
    6296:	2201      	movs	r2, #1
    6298:	480e      	ldr	r0, [pc, #56]	; (62d4 <svcTimerStop+0x54>)
    629a:	711a      	strb	r2, [r3, #4]
    629c:	6801      	ldr	r1, [r0, #0]
    629e:	2900      	cmp	r1, #0
    62a0:	d0f7      	beq.n	6292 <svcTimerStop+0x12>
    62a2:	428b      	cmp	r3, r1
    62a4:	d105      	bne.n	62b2 <svcTimerStop+0x32>
    62a6:	681a      	ldr	r2, [r3, #0]
    62a8:	6002      	str	r2, [r0, #0]
    62aa:	e009      	b.n	62c0 <svcTimerStop+0x40>
    62ac:	4293      	cmp	r3, r2
    62ae:	d004      	beq.n	62ba <svcTimerStop+0x3a>
    62b0:	0011      	movs	r1, r2
    62b2:	680a      	ldr	r2, [r1, #0]
    62b4:	2a00      	cmp	r2, #0
    62b6:	d1f9      	bne.n	62ac <svcTimerStop+0x2c>
    62b8:	e7eb      	b.n	6292 <svcTimerStop+0x12>
    62ba:	681a      	ldr	r2, [r3, #0]
    62bc:	600a      	str	r2, [r1, #0]
    62be:	681a      	ldr	r2, [r3, #0]
    62c0:	2a00      	cmp	r2, #0
    62c2:	d004      	beq.n	62ce <svcTimerStop+0x4e>
    62c4:	6891      	ldr	r1, [r2, #8]
    62c6:	689b      	ldr	r3, [r3, #8]
    62c8:	468c      	mov	ip, r1
    62ca:	4463      	add	r3, ip
    62cc:	6093      	str	r3, [r2, #8]
    62ce:	2000      	movs	r0, #0
    62d0:	e7e0      	b.n	6294 <svcTimerStop+0x14>
    62d2:	46c0      	nop			; (mov r8, r8)
    62d4:	20006084 	.word	0x20006084

000062d8 <svcTimerDelete>:
    62d8:	0002      	movs	r2, r0
    62da:	2080      	movs	r0, #128	; 0x80
    62dc:	0793      	lsls	r3, r2, #30
    62de:	d117      	bne.n	6310 <svcTimerDelete+0x38>
    62e0:	2a00      	cmp	r2, #0
    62e2:	d015      	beq.n	6310 <svcTimerDelete+0x38>
    62e4:	7913      	ldrb	r3, [r2, #4]
    62e6:	2b01      	cmp	r3, #1
    62e8:	d00f      	beq.n	630a <svcTimerDelete+0x32>
    62ea:	2081      	movs	r0, #129	; 0x81
    62ec:	2b02      	cmp	r3, #2
    62ee:	d10f      	bne.n	6310 <svcTimerDelete+0x38>
    62f0:	4810      	ldr	r0, [pc, #64]	; (6334 <svcTimerDelete+0x5c>)
    62f2:	6801      	ldr	r1, [r0, #0]
    62f4:	2900      	cmp	r1, #0
    62f6:	d008      	beq.n	630a <svcTimerDelete+0x32>
    62f8:	428a      	cmp	r2, r1
    62fa:	d103      	bne.n	6304 <svcTimerDelete+0x2c>
    62fc:	e017      	b.n	632e <svcTimerDelete+0x56>
    62fe:	429a      	cmp	r2, r3
    6300:	d007      	beq.n	6312 <svcTimerDelete+0x3a>
    6302:	0019      	movs	r1, r3
    6304:	680b      	ldr	r3, [r1, #0]
    6306:	2b00      	cmp	r3, #0
    6308:	d1f9      	bne.n	62fe <svcTimerDelete+0x26>
    630a:	2300      	movs	r3, #0
    630c:	2000      	movs	r0, #0
    630e:	7113      	strb	r3, [r2, #4]
    6310:	4770      	bx	lr
    6312:	6813      	ldr	r3, [r2, #0]
    6314:	600b      	str	r3, [r1, #0]
    6316:	6813      	ldr	r3, [r2, #0]
    6318:	2b00      	cmp	r3, #0
    631a:	d0f6      	beq.n	630a <svcTimerDelete+0x32>
    631c:	6890      	ldr	r0, [r2, #8]
    631e:	6899      	ldr	r1, [r3, #8]
    6320:	4684      	mov	ip, r0
    6322:	4461      	add	r1, ip
    6324:	6099      	str	r1, [r3, #8]
    6326:	2300      	movs	r3, #0
    6328:	2000      	movs	r0, #0
    632a:	7113      	strb	r3, [r2, #4]
    632c:	e7f0      	b.n	6310 <svcTimerDelete+0x38>
    632e:	6813      	ldr	r3, [r2, #0]
    6330:	6003      	str	r3, [r0, #0]
    6332:	e7f1      	b.n	6318 <svcTimerDelete+0x40>
    6334:	20006084 	.word	0x20006084

00006338 <svcTimerCall>:
    6338:	0003      	movs	r3, r0
    633a:	0782      	lsls	r2, r0, #30
    633c:	d105      	bne.n	634a <svcTimerCall+0x12>
    633e:	2800      	cmp	r0, #0
    6340:	d006      	beq.n	6350 <svcTimerCall+0x18>
    6342:	6942      	ldr	r2, [r0, #20]
    6344:	6919      	ldr	r1, [r3, #16]
    6346:	6810      	ldr	r0, [r2, #0]
    6348:	4770      	bx	lr
    634a:	2000      	movs	r0, #0
    634c:	2100      	movs	r1, #0
    634e:	e7fb      	b.n	6348 <svcTimerCall+0x10>
    6350:	2000      	movs	r0, #0
    6352:	0001      	movs	r1, r0
    6354:	e7f8      	b.n	6348 <svcTimerCall+0x10>
    6356:	46c0      	nop			; (mov r8, r8)

00006358 <sysTimerTick>:
    6358:	b5f0      	push	{r4, r5, r6, r7, lr}
    635a:	464e      	mov	r6, r9
    635c:	4657      	mov	r7, sl
    635e:	4645      	mov	r5, r8
    6360:	b4e0      	push	{r5, r6, r7}
    6362:	4e2a      	ldr	r6, [pc, #168]	; (640c <sysTimerTick+0xb4>)
    6364:	6834      	ldr	r4, [r6, #0]
    6366:	2c00      	cmp	r4, #0
    6368:	d028      	beq.n	63bc <sysTimerTick+0x64>
    636a:	2200      	movs	r2, #0
    636c:	68a3      	ldr	r3, [r4, #8]
    636e:	4f28      	ldr	r7, [pc, #160]	; (6410 <sysTimerTick+0xb8>)
    6370:	3b01      	subs	r3, #1
    6372:	60a3      	str	r3, [r4, #8]
    6374:	4690      	mov	r8, r2
    6376:	2b00      	cmp	r3, #0
    6378:	d120      	bne.n	63bc <sysTimerTick+0x64>
    637a:	6825      	ldr	r5, [r4, #0]
    637c:	683b      	ldr	r3, [r7, #0]
    637e:	6035      	str	r5, [r6, #0]
    6380:	4699      	mov	r9, r3
    6382:	2b00      	cmp	r3, #0
    6384:	d003      	beq.n	638e <sysTimerTick+0x36>
    6386:	781b      	ldrb	r3, [r3, #0]
    6388:	469a      	mov	sl, r3
    638a:	2b01      	cmp	r3, #1
    638c:	d002      	beq.n	6394 <sysTimerTick+0x3c>
    638e:	2004      	movs	r0, #4
    6390:	f7fb fbbe 	bl	1b10 <os_error>
    6394:	4648      	mov	r0, r9
    6396:	f001 fb63 	bl	7a60 <rt_mbx_check>
    639a:	2800      	cmp	r0, #0
    639c:	d0f7      	beq.n	638e <sysTimerTick+0x36>
    639e:	0021      	movs	r1, r4
    63a0:	4648      	mov	r0, r9
    63a2:	f001 fb61 	bl	7a68 <isr_mbx_send>
    63a6:	7963      	ldrb	r3, [r4, #5]
    63a8:	2b01      	cmp	r3, #1
    63aa:	d00c      	beq.n	63c6 <sysTimerTick+0x6e>
    63ac:	4653      	mov	r3, sl
    63ae:	7123      	strb	r3, [r4, #4]
    63b0:	2d00      	cmp	r5, #0
    63b2:	d003      	beq.n	63bc <sysTimerTick+0x64>
    63b4:	68ab      	ldr	r3, [r5, #8]
    63b6:	002c      	movs	r4, r5
    63b8:	2b00      	cmp	r3, #0
    63ba:	d0de      	beq.n	637a <sysTimerTick+0x22>
    63bc:	bc1c      	pop	{r2, r3, r4}
    63be:	4690      	mov	r8, r2
    63c0:	4699      	mov	r9, r3
    63c2:	46a2      	mov	sl, r4
    63c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    63c6:	6830      	ldr	r0, [r6, #0]
    63c8:	68e2      	ldr	r2, [r4, #12]
    63ca:	2800      	cmp	r0, #0
    63cc:	d00b      	beq.n	63e6 <sysTimerTick+0x8e>
    63ce:	6881      	ldr	r1, [r0, #8]
    63d0:	4291      	cmp	r1, r2
    63d2:	d904      	bls.n	63de <sysTimerTick+0x86>
    63d4:	e00e      	b.n	63f4 <sysTimerTick+0x9c>
    63d6:	6899      	ldr	r1, [r3, #8]
    63d8:	4291      	cmp	r1, r2
    63da:	d80d      	bhi.n	63f8 <sysTimerTick+0xa0>
    63dc:	0018      	movs	r0, r3
    63de:	6803      	ldr	r3, [r0, #0]
    63e0:	1a52      	subs	r2, r2, r1
    63e2:	2b00      	cmp	r3, #0
    63e4:	d1f7      	bne.n	63d6 <sysTimerTick+0x7e>
    63e6:	4643      	mov	r3, r8
    63e8:	60a2      	str	r2, [r4, #8]
    63ea:	6023      	str	r3, [r4, #0]
    63ec:	2800      	cmp	r0, #0
    63ee:	d00a      	beq.n	6406 <sysTimerTick+0xae>
    63f0:	6004      	str	r4, [r0, #0]
    63f2:	e7dd      	b.n	63b0 <sysTimerTick+0x58>
    63f4:	0003      	movs	r3, r0
    63f6:	2000      	movs	r0, #0
    63f8:	60a2      	str	r2, [r4, #8]
    63fa:	6899      	ldr	r1, [r3, #8]
    63fc:	6023      	str	r3, [r4, #0]
    63fe:	1a8a      	subs	r2, r1, r2
    6400:	609a      	str	r2, [r3, #8]
    6402:	2800      	cmp	r0, #0
    6404:	d1f4      	bne.n	63f0 <sysTimerTick+0x98>
    6406:	6034      	str	r4, [r6, #0]
    6408:	e7d2      	b.n	63b0 <sysTimerTick+0x58>
    640a:	46c0      	nop			; (mov r8, r8)
    640c:	20006084 	.word	0x20006084
    6410:	20004d10 	.word	0x20004d10

00006414 <sysUserTimerWakeupTime>:
    6414:	4b04      	ldr	r3, [pc, #16]	; (6428 <sysUserTimerWakeupTime+0x14>)
    6416:	681b      	ldr	r3, [r3, #0]
    6418:	2b00      	cmp	r3, #0
    641a:	d001      	beq.n	6420 <sysUserTimerWakeupTime+0xc>
    641c:	6898      	ldr	r0, [r3, #8]
    641e:	4770      	bx	lr
    6420:	2001      	movs	r0, #1
    6422:	4240      	negs	r0, r0
    6424:	e7fb      	b.n	641e <sysUserTimerWakeupTime+0xa>
    6426:	46c0      	nop			; (mov r8, r8)
    6428:	20006084 	.word	0x20006084

0000642c <sysUserTimerUpdate>:
    642c:	b570      	push	{r4, r5, r6, lr}
    642e:	4d0e      	ldr	r5, [pc, #56]	; (6468 <sysUserTimerUpdate+0x3c>)
    6430:	0004      	movs	r4, r0
    6432:	682b      	ldr	r3, [r5, #0]
    6434:	2b00      	cmp	r3, #0
    6436:	d012      	beq.n	645e <sysUserTimerUpdate+0x32>
    6438:	2800      	cmp	r0, #0
    643a:	d010      	beq.n	645e <sysUserTimerUpdate+0x32>
    643c:	689a      	ldr	r2, [r3, #8]
    643e:	2601      	movs	r6, #1
    6440:	4290      	cmp	r0, r2
    6442:	d205      	bcs.n	6450 <sysUserTimerUpdate+0x24>
    6444:	e00c      	b.n	6460 <sysUserTimerUpdate+0x34>
    6446:	2c00      	cmp	r4, #0
    6448:	d009      	beq.n	645e <sysUserTimerUpdate+0x32>
    644a:	689a      	ldr	r2, [r3, #8]
    644c:	42a2      	cmp	r2, r4
    644e:	d807      	bhi.n	6460 <sysUserTimerUpdate+0x34>
    6450:	609e      	str	r6, [r3, #8]
    6452:	1aa4      	subs	r4, r4, r2
    6454:	f7ff ff80 	bl	6358 <sysTimerTick>
    6458:	682b      	ldr	r3, [r5, #0]
    645a:	2b00      	cmp	r3, #0
    645c:	d1f3      	bne.n	6446 <sysUserTimerUpdate+0x1a>
    645e:	bd70      	pop	{r4, r5, r6, pc}
    6460:	1b14      	subs	r4, r2, r4
    6462:	609c      	str	r4, [r3, #8]
    6464:	e7fb      	b.n	645e <sysUserTimerUpdate+0x32>
    6466:	46c0      	nop			; (mov r8, r8)
    6468:	20006084 	.word	0x20006084

0000646c <osTimerCreate>:
    646c:	b5b0      	push	{r4, r5, r7, lr}
    646e:	f3ef 8405 	mrs	r4, IPSR
    6472:	2c00      	cmp	r4, #0
    6474:	d124      	bne.n	64c0 <osTimerCreate+0x54>
    6476:	f3ef 8414 	mrs	r4, CONTROL
    647a:	2501      	movs	r5, #1
    647c:	4225      	tst	r5, r4
    647e:	d003      	beq.n	6488 <osTimerCreate+0x1c>
    6480:	4f12      	ldr	r7, [pc, #72]	; (64cc <osTimerCreate+0x60>)
    6482:	46bc      	mov	ip, r7
    6484:	df00      	svc	0
    6486:	bdb0      	pop	{r4, r5, r7, pc}
    6488:	4c0e      	ldr	r4, [pc, #56]	; (64c4 <osTimerCreate+0x58>)
    648a:	7824      	ldrb	r4, [r4, #0]
    648c:	2c00      	cmp	r4, #0
    648e:	d1f7      	bne.n	6480 <osTimerCreate+0x14>
    6490:	2800      	cmp	r0, #0
    6492:	d015      	beq.n	64c0 <osTimerCreate+0x54>
    6494:	6803      	ldr	r3, [r0, #0]
    6496:	2b00      	cmp	r3, #0
    6498:	d012      	beq.n	64c0 <osTimerCreate+0x54>
    649a:	6843      	ldr	r3, [r0, #4]
    649c:	2b00      	cmp	r3, #0
    649e:	d00f      	beq.n	64c0 <osTimerCreate+0x54>
    64a0:	2901      	cmp	r1, #1
    64a2:	d80d      	bhi.n	64c0 <osTimerCreate+0x54>
    64a4:	4c08      	ldr	r4, [pc, #32]	; (64c8 <osTimerCreate+0x5c>)
    64a6:	6824      	ldr	r4, [r4, #0]
    64a8:	2c00      	cmp	r4, #0
    64aa:	d009      	beq.n	64c0 <osTimerCreate+0x54>
    64ac:	791c      	ldrb	r4, [r3, #4]
    64ae:	2c00      	cmp	r4, #0
    64b0:	d106      	bne.n	64c0 <osTimerCreate+0x54>
    64b2:	6158      	str	r0, [r3, #20]
    64b4:	601c      	str	r4, [r3, #0]
    64b6:	711d      	strb	r5, [r3, #4]
    64b8:	7159      	strb	r1, [r3, #5]
    64ba:	611a      	str	r2, [r3, #16]
    64bc:	0018      	movs	r0, r3
    64be:	e7e2      	b.n	6486 <osTimerCreate+0x1a>
    64c0:	2000      	movs	r0, #0
    64c2:	e7e0      	b.n	6486 <osTimerCreate+0x1a>
    64c4:	20006081 	.word	0x20006081
    64c8:	20004cec 	.word	0x20004cec
    64cc:	00006165 	.word	0x00006165

000064d0 <osTimerStart>:
    64d0:	b5b0      	push	{r4, r5, r7, lr}
    64d2:	0005      	movs	r5, r0
    64d4:	f3ef 8405 	mrs	r4, IPSR
    64d8:	2082      	movs	r0, #130	; 0x82
    64da:	2c00      	cmp	r4, #0
    64dc:	d000      	beq.n	64e0 <osTimerStart+0x10>
    64de:	bdb0      	pop	{r4, r5, r7, pc}
    64e0:	0028      	movs	r0, r5
    64e2:	4f02      	ldr	r7, [pc, #8]	; (64ec <osTimerStart+0x1c>)
    64e4:	46bc      	mov	ip, r7
    64e6:	df00      	svc	0
    64e8:	e7f9      	b.n	64de <osTimerStart+0xe>
    64ea:	0000      	.short	0x0000
    64ec:	000061a1 	.word	0x000061a1

000064f0 <osTimerStop>:
    64f0:	b5b0      	push	{r4, r5, r7, lr}
    64f2:	0005      	movs	r5, r0
    64f4:	f3ef 8405 	mrs	r4, IPSR
    64f8:	2082      	movs	r0, #130	; 0x82
    64fa:	2c00      	cmp	r4, #0
    64fc:	d000      	beq.n	6500 <osTimerStop+0x10>
    64fe:	bdb0      	pop	{r4, r5, r7, pc}
    6500:	0028      	movs	r0, r5
    6502:	4f02      	ldr	r7, [pc, #8]	; (650c <osTimerStop+0x1c>)
    6504:	46bc      	mov	ip, r7
    6506:	df00      	svc	0
    6508:	e7f9      	b.n	64fe <osTimerStop+0xe>
    650a:	0000      	.short	0x0000
    650c:	00006281 	.word	0x00006281

00006510 <osTimerDelete>:
    6510:	b5b0      	push	{r4, r5, r7, lr}
    6512:	0005      	movs	r5, r0
    6514:	f3ef 8405 	mrs	r4, IPSR
    6518:	2082      	movs	r0, #130	; 0x82
    651a:	2c00      	cmp	r4, #0
    651c:	d000      	beq.n	6520 <osTimerDelete+0x10>
    651e:	bdb0      	pop	{r4, r5, r7, pc}
    6520:	0028      	movs	r0, r5
    6522:	4f02      	ldr	r7, [pc, #8]	; (652c <osTimerDelete+0x1c>)
    6524:	46bc      	mov	ip, r7
    6526:	df00      	svc	0
    6528:	e7f9      	b.n	651e <osTimerDelete+0xe>
    652a:	0000      	.short	0x0000
    652c:	000062d9 	.word	0x000062d9

00006530 <osTimerCall>:
    6530:	b590      	push	{r4, r7, lr}
    6532:	0004      	movs	r4, r0
    6534:	0008      	movs	r0, r1
    6536:	4f03      	ldr	r7, [pc, #12]	; (6544 <osTimerCall+0x14>)
    6538:	46bc      	mov	ip, r7
    653a:	df00      	svc	0
    653c:	6020      	str	r0, [r4, #0]
    653e:	6061      	str	r1, [r4, #4]
    6540:	0020      	movs	r0, r4
    6542:	bd90      	pop	{r4, r7, pc}
    6544:	00006339 	.word	0x00006339

00006548 <osTimerThread>:
    6548:	b5b0      	push	{r4, r5, r7, lr}
    654a:	4d0a      	ldr	r5, [pc, #40]	; (6574 <osTimerThread+0x2c>)
    654c:	6828      	ldr	r0, [r5, #0]
    654e:	f3ef 8105 	mrs	r1, IPSR
    6552:	2900      	cmp	r1, #0
    6554:	d1fb      	bne.n	654e <osTimerThread+0x6>
    6556:	3901      	subs	r1, #1
    6558:	4f07      	ldr	r7, [pc, #28]	; (6578 <osTimerThread+0x30>)
    655a:	46bc      	mov	ip, r7
    655c:	df00      	svc	0
    655e:	2810      	cmp	r0, #16
    6560:	d1f4      	bne.n	654c <osTimerThread+0x4>
    6562:	0008      	movs	r0, r1
    6564:	4f05      	ldr	r7, [pc, #20]	; (657c <osTimerThread+0x34>)
    6566:	46bc      	mov	ip, r7
    6568:	df00      	svc	0
    656a:	1e04      	subs	r4, r0, #0
    656c:	d0ee      	beq.n	654c <osTimerThread+0x4>
    656e:	0008      	movs	r0, r1
    6570:	47a0      	blx	r4
    6572:	e7eb      	b.n	654c <osTimerThread+0x4>
    6574:	20004d10 	.word	0x20004d10
    6578:	00006d29 	.word	0x00006d29
    657c:	00006339 	.word	0x00006339

00006580 <svcSignalSet>:
    6580:	b510      	push	{r4, lr}
    6582:	2800      	cmp	r0, #0
    6584:	d00e      	beq.n	65a4 <svcSignalSet+0x24>
    6586:	0783      	lsls	r3, r0, #30
    6588:	d10c      	bne.n	65a4 <svcSignalSet+0x24>
    658a:	7803      	ldrb	r3, [r0, #0]
    658c:	2b00      	cmp	r3, #0
    658e:	d109      	bne.n	65a4 <svcSignalSet+0x24>
    6590:	0c0b      	lsrs	r3, r1, #16
    6592:	d107      	bne.n	65a4 <svcSignalSet+0x24>
    6594:	78c3      	ldrb	r3, [r0, #3]
    6596:	8b04      	ldrh	r4, [r0, #24]
    6598:	b288      	uxth	r0, r1
    659a:	0019      	movs	r1, r3
    659c:	f001 fcbe 	bl	7f1c <rt_evt_set>
    65a0:	0020      	movs	r0, r4
    65a2:	e001      	b.n	65a8 <svcSignalSet+0x28>
    65a4:	2080      	movs	r0, #128	; 0x80
    65a6:	0600      	lsls	r0, r0, #24
    65a8:	bd10      	pop	{r4, pc}
    65aa:	46c0      	nop			; (mov r8, r8)

000065ac <svcSignalClear>:
    65ac:	b510      	push	{r4, lr}
    65ae:	2800      	cmp	r0, #0
    65b0:	d00e      	beq.n	65d0 <svcSignalClear+0x24>
    65b2:	0783      	lsls	r3, r0, #30
    65b4:	d10c      	bne.n	65d0 <svcSignalClear+0x24>
    65b6:	7803      	ldrb	r3, [r0, #0]
    65b8:	2b00      	cmp	r3, #0
    65ba:	d109      	bne.n	65d0 <svcSignalClear+0x24>
    65bc:	0c0b      	lsrs	r3, r1, #16
    65be:	d107      	bne.n	65d0 <svcSignalClear+0x24>
    65c0:	78c3      	ldrb	r3, [r0, #3]
    65c2:	8b04      	ldrh	r4, [r0, #24]
    65c4:	b288      	uxth	r0, r1
    65c6:	0019      	movs	r1, r3
    65c8:	f001 fcd4 	bl	7f74 <rt_evt_clr>
    65cc:	0020      	movs	r0, r4
    65ce:	e001      	b.n	65d4 <svcSignalClear+0x28>
    65d0:	2080      	movs	r0, #128	; 0x80
    65d2:	0600      	lsls	r0, r0, #24
    65d4:	bd10      	pop	{r4, pc}
    65d6:	46c0      	nop			; (mov r8, r8)

000065d8 <svcSignalWait>:
    65d8:	b5f0      	push	{r4, r5, r6, r7, lr}
    65da:	0c04      	lsrs	r4, r0, #16
    65dc:	b083      	sub	sp, #12
    65de:	0006      	movs	r6, r0
    65e0:	000d      	movs	r5, r1
    65e2:	0424      	lsls	r4, r4, #16
    65e4:	d149      	bne.n	667a <svcSignalWait+0xa2>
    65e6:	2800      	cmp	r0, #0
    65e8:	d026      	beq.n	6638 <svcSignalWait+0x60>
    65ea:	b287      	uxth	r7, r0
    65ec:	2100      	movs	r1, #0
    65ee:	2d00      	cmp	r5, #0
    65f0:	d013      	beq.n	661a <svcSignalWait+0x42>
    65f2:	1c6b      	adds	r3, r5, #1
    65f4:	d05c      	beq.n	66b0 <svcSignalWait+0xd8>
    65f6:	4b2f      	ldr	r3, [pc, #188]	; (66b4 <svcSignalWait+0xdc>)
    65f8:	429d      	cmp	r5, r3
    65fa:	d84f      	bhi.n	669c <svcSignalWait+0xc4>
    65fc:	20fa      	movs	r0, #250	; 0xfa
    65fe:	4b2e      	ldr	r3, [pc, #184]	; (66b8 <svcSignalWait+0xe0>)
    6600:	0080      	lsls	r0, r0, #2
    6602:	4368      	muls	r0, r5
    6604:	681b      	ldr	r3, [r3, #0]
    6606:	9301      	str	r3, [sp, #4]
    6608:	3b01      	subs	r3, #1
    660a:	18c0      	adds	r0, r0, r3
    660c:	9901      	ldr	r1, [sp, #4]
    660e:	f7fe f955 	bl	48bc <__aeabi_uidiv>
    6612:	4b2a      	ldr	r3, [pc, #168]	; (66bc <svcSignalWait+0xe4>)
    6614:	0019      	movs	r1, r3
    6616:	4298      	cmp	r0, r3
    6618:	d946      	bls.n	66a8 <svcSignalWait+0xd0>
    661a:	2201      	movs	r2, #1
    661c:	0038      	movs	r0, r7
    661e:	f001 fc59 	bl	7ed4 <rt_evt_wait>
    6622:	2802      	cmp	r0, #2
    6624:	d035      	beq.n	6692 <svcSignalWait+0xba>
    6626:	0028      	movs	r0, r5
    6628:	1e45      	subs	r5, r0, #1
    662a:	41a8      	sbcs	r0, r5
    662c:	0180      	lsls	r0, r0, #6
    662e:	0021      	movs	r1, r4
    6630:	2200      	movs	r2, #0
    6632:	2300      	movs	r3, #0
    6634:	b003      	add	sp, #12
    6636:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6638:	2900      	cmp	r1, #0
    663a:	d021      	beq.n	6680 <svcSignalWait+0xa8>
    663c:	1c4b      	adds	r3, r1, #1
    663e:	d035      	beq.n	66ac <svcSignalWait+0xd4>
    6640:	4b1c      	ldr	r3, [pc, #112]	; (66b4 <svcSignalWait+0xdc>)
    6642:	4299      	cmp	r1, r3
    6644:	d82c      	bhi.n	66a0 <svcSignalWait+0xc8>
    6646:	20fa      	movs	r0, #250	; 0xfa
    6648:	4b1b      	ldr	r3, [pc, #108]	; (66b8 <svcSignalWait+0xe0>)
    664a:	0080      	lsls	r0, r0, #2
    664c:	4348      	muls	r0, r1
    664e:	681b      	ldr	r3, [r3, #0]
    6650:	9301      	str	r3, [sp, #4]
    6652:	3b01      	subs	r3, #1
    6654:	18c0      	adds	r0, r0, r3
    6656:	9901      	ldr	r1, [sp, #4]
    6658:	f7fe f930 	bl	48bc <__aeabi_uidiv>
    665c:	4b17      	ldr	r3, [pc, #92]	; (66bc <svcSignalWait+0xe4>)
    665e:	0019      	movs	r1, r3
    6660:	4298      	cmp	r0, r3
    6662:	d91f      	bls.n	66a4 <svcSignalWait+0xcc>
    6664:	2200      	movs	r2, #0
    6666:	4816      	ldr	r0, [pc, #88]	; (66c0 <svcSignalWait+0xe8>)
    6668:	f001 fc34 	bl	7ed4 <rt_evt_wait>
    666c:	2802      	cmp	r0, #2
    666e:	d113      	bne.n	6698 <svcSignalWait+0xc0>
    6670:	4b14      	ldr	r3, [pc, #80]	; (66c4 <svcSignalWait+0xec>)
    6672:	2008      	movs	r0, #8
    6674:	681b      	ldr	r3, [r3, #0]
    6676:	8b5c      	ldrh	r4, [r3, #26]
    6678:	e7d9      	b.n	662e <svcSignalWait+0x56>
    667a:	2086      	movs	r0, #134	; 0x86
    667c:	2100      	movs	r1, #0
    667e:	e7d7      	b.n	6630 <svcSignalWait+0x58>
    6680:	2200      	movs	r2, #0
    6682:	2100      	movs	r1, #0
    6684:	480e      	ldr	r0, [pc, #56]	; (66c0 <svcSignalWait+0xe8>)
    6686:	f001 fc25 	bl	7ed4 <rt_evt_wait>
    668a:	2802      	cmp	r0, #2
    668c:	d0f0      	beq.n	6670 <svcSignalWait+0x98>
    668e:	2000      	movs	r0, #0
    6690:	e7cd      	b.n	662e <svcSignalWait+0x56>
    6692:	0034      	movs	r4, r6
    6694:	2008      	movs	r0, #8
    6696:	e7ca      	b.n	662e <svcSignalWait+0x56>
    6698:	2040      	movs	r0, #64	; 0x40
    669a:	e7c8      	b.n	662e <svcSignalWait+0x56>
    669c:	4907      	ldr	r1, [pc, #28]	; (66bc <svcSignalWait+0xe4>)
    669e:	e7bc      	b.n	661a <svcSignalWait+0x42>
    66a0:	4906      	ldr	r1, [pc, #24]	; (66bc <svcSignalWait+0xe4>)
    66a2:	e7df      	b.n	6664 <svcSignalWait+0x8c>
    66a4:	b281      	uxth	r1, r0
    66a6:	e7dd      	b.n	6664 <svcSignalWait+0x8c>
    66a8:	b281      	uxth	r1, r0
    66aa:	e7b6      	b.n	661a <svcSignalWait+0x42>
    66ac:	4904      	ldr	r1, [pc, #16]	; (66c0 <svcSignalWait+0xe8>)
    66ae:	e7d9      	b.n	6664 <svcSignalWait+0x8c>
    66b0:	4903      	ldr	r1, [pc, #12]	; (66c0 <svcSignalWait+0xe8>)
    66b2:	e7b2      	b.n	661a <svcSignalWait+0x42>
    66b4:	003d0900 	.word	0x003d0900
    66b8:	00008b50 	.word	0x00008b50
    66bc:	0000fffe 	.word	0x0000fffe
    66c0:	0000ffff 	.word	0x0000ffff
    66c4:	200060c0 	.word	0x200060c0

000066c8 <isrSignalSet>:
    66c8:	b510      	push	{r4, lr}
    66ca:	2800      	cmp	r0, #0
    66cc:	d00e      	beq.n	66ec <isrSignalSet+0x24>
    66ce:	0783      	lsls	r3, r0, #30
    66d0:	d10c      	bne.n	66ec <isrSignalSet+0x24>
    66d2:	7803      	ldrb	r3, [r0, #0]
    66d4:	2b00      	cmp	r3, #0
    66d6:	d109      	bne.n	66ec <isrSignalSet+0x24>
    66d8:	0c0b      	lsrs	r3, r1, #16
    66da:	d107      	bne.n	66ec <isrSignalSet+0x24>
    66dc:	78c3      	ldrb	r3, [r0, #3]
    66de:	8b04      	ldrh	r4, [r0, #24]
    66e0:	b288      	uxth	r0, r1
    66e2:	0019      	movs	r1, r3
    66e4:	f001 fc52 	bl	7f8c <isr_evt_set>
    66e8:	0020      	movs	r0, r4
    66ea:	e001      	b.n	66f0 <isrSignalSet+0x28>
    66ec:	2080      	movs	r0, #128	; 0x80
    66ee:	0600      	lsls	r0, r0, #24
    66f0:	bd10      	pop	{r4, pc}
    66f2:	46c0      	nop			; (mov r8, r8)

000066f4 <osSignalSet>:
    66f4:	b5b0      	push	{r4, r5, r7, lr}
    66f6:	f3ef 8405 	mrs	r4, IPSR
    66fa:	2c00      	cmp	r4, #0
    66fc:	d103      	bne.n	6706 <osSignalSet+0x12>
    66fe:	4f0c      	ldr	r7, [pc, #48]	; (6730 <osSignalSet+0x3c>)
    6700:	46bc      	mov	ip, r7
    6702:	df00      	svc	0
    6704:	bdb0      	pop	{r4, r5, r7, pc}
    6706:	2800      	cmp	r0, #0
    6708:	d00e      	beq.n	6728 <osSignalSet+0x34>
    670a:	0783      	lsls	r3, r0, #30
    670c:	d10c      	bne.n	6728 <osSignalSet+0x34>
    670e:	7803      	ldrb	r3, [r0, #0]
    6710:	2b00      	cmp	r3, #0
    6712:	d109      	bne.n	6728 <osSignalSet+0x34>
    6714:	0c0b      	lsrs	r3, r1, #16
    6716:	d107      	bne.n	6728 <osSignalSet+0x34>
    6718:	78c3      	ldrb	r3, [r0, #3]
    671a:	8b04      	ldrh	r4, [r0, #24]
    671c:	b288      	uxth	r0, r1
    671e:	0019      	movs	r1, r3
    6720:	f001 fc34 	bl	7f8c <isr_evt_set>
    6724:	0020      	movs	r0, r4
    6726:	e7ed      	b.n	6704 <osSignalSet+0x10>
    6728:	2080      	movs	r0, #128	; 0x80
    672a:	0600      	lsls	r0, r0, #24
    672c:	e7ea      	b.n	6704 <osSignalSet+0x10>
    672e:	0000      	.short	0x0000
    6730:	00006581 	.word	0x00006581

00006734 <osSignalClear>:
    6734:	b590      	push	{r4, r7, lr}
    6736:	f3ef 8405 	mrs	r4, IPSR
    673a:	2c00      	cmp	r4, #0
    673c:	d103      	bne.n	6746 <osSignalClear+0x12>
    673e:	4f03      	ldr	r7, [pc, #12]	; (674c <osSignalClear+0x18>)
    6740:	46bc      	mov	ip, r7
    6742:	df00      	svc	0
    6744:	bd90      	pop	{r4, r7, pc}
    6746:	2080      	movs	r0, #128	; 0x80
    6748:	0600      	lsls	r0, r0, #24
    674a:	e7fb      	b.n	6744 <osSignalClear+0x10>
    674c:	000065ad 	.word	0x000065ad

00006750 <osSignalWait>:
    6750:	b5f0      	push	{r4, r5, r6, r7, lr}
    6752:	0004      	movs	r4, r0
    6754:	f3ef 8505 	mrs	r5, IPSR
    6758:	2d00      	cmp	r5, #0
    675a:	d109      	bne.n	6770 <osSignalWait+0x20>
    675c:	0008      	movs	r0, r1
    675e:	0011      	movs	r1, r2
    6760:	4f05      	ldr	r7, [pc, #20]	; (6778 <osSignalWait+0x28>)
    6762:	46bc      	mov	ip, r7
    6764:	df00      	svc	0
    6766:	6020      	str	r0, [r4, #0]
    6768:	6061      	str	r1, [r4, #4]
    676a:	60a2      	str	r2, [r4, #8]
    676c:	0020      	movs	r0, r4
    676e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6770:	2382      	movs	r3, #130	; 0x82
    6772:	6003      	str	r3, [r0, #0]
    6774:	e7fa      	b.n	676c <osSignalWait+0x1c>
    6776:	0000      	.short	0x0000
    6778:	000065d9 	.word	0x000065d9

0000677c <svcMutexCreate>:
    677c:	b510      	push	{r4, lr}
    677e:	2800      	cmp	r0, #0
    6780:	d00a      	beq.n	6798 <svcMutexCreate+0x1c>
    6782:	6804      	ldr	r4, [r0, #0]
    6784:	2c00      	cmp	r4, #0
    6786:	d007      	beq.n	6798 <svcMutexCreate+0x1c>
    6788:	7823      	ldrb	r3, [r4, #0]
    678a:	2b00      	cmp	r3, #0
    678c:	d104      	bne.n	6798 <svcMutexCreate+0x1c>
    678e:	0020      	movs	r0, r4
    6790:	f000 feb4 	bl	74fc <rt_mut_init>
    6794:	0020      	movs	r0, r4
    6796:	bd10      	pop	{r4, pc}
    6798:	2000      	movs	r0, #0
    679a:	e7fc      	b.n	6796 <svcMutexCreate+0x1a>

0000679c <svcMutexWait>:
    679c:	b510      	push	{r4, lr}
    679e:	0004      	movs	r4, r0
    67a0:	b082      	sub	sp, #8
    67a2:	2080      	movs	r0, #128	; 0x80
    67a4:	07a3      	lsls	r3, r4, #30
    67a6:	d104      	bne.n	67b2 <svcMutexWait+0x16>
    67a8:	2c00      	cmp	r4, #0
    67aa:	d002      	beq.n	67b2 <svcMutexWait+0x16>
    67ac:	7823      	ldrb	r3, [r4, #0]
    67ae:	2b03      	cmp	r3, #3
    67b0:	d001      	beq.n	67b6 <svcMutexWait+0x1a>
    67b2:	b002      	add	sp, #8
    67b4:	bd10      	pop	{r4, pc}
    67b6:	2900      	cmp	r1, #0
    67b8:	d01b      	beq.n	67f2 <svcMutexWait+0x56>
    67ba:	1c4b      	adds	r3, r1, #1
    67bc:	d025      	beq.n	680a <svcMutexWait+0x6e>
    67be:	4b16      	ldr	r3, [pc, #88]	; (6818 <svcMutexWait+0x7c>)
    67c0:	4299      	cmp	r1, r3
    67c2:	d824      	bhi.n	680e <svcMutexWait+0x72>
    67c4:	20fa      	movs	r0, #250	; 0xfa
    67c6:	4b15      	ldr	r3, [pc, #84]	; (681c <svcMutexWait+0x80>)
    67c8:	0080      	lsls	r0, r0, #2
    67ca:	4341      	muls	r1, r0
    67cc:	681b      	ldr	r3, [r3, #0]
    67ce:	9301      	str	r3, [sp, #4]
    67d0:	3b01      	subs	r3, #1
    67d2:	1858      	adds	r0, r3, r1
    67d4:	9901      	ldr	r1, [sp, #4]
    67d6:	f7fe f871 	bl	48bc <__aeabi_uidiv>
    67da:	4b11      	ldr	r3, [pc, #68]	; (6820 <svcMutexWait+0x84>)
    67dc:	0019      	movs	r1, r3
    67de:	4298      	cmp	r0, r3
    67e0:	d917      	bls.n	6812 <svcMutexWait+0x76>
    67e2:	0020      	movs	r0, r4
    67e4:	f000 ff86 	bl	76f4 <rt_mut_wait>
    67e8:	0003      	movs	r3, r0
    67ea:	2801      	cmp	r0, #1
    67ec:	d108      	bne.n	6800 <svcMutexWait+0x64>
    67ee:	20c1      	movs	r0, #193	; 0xc1
    67f0:	e7df      	b.n	67b2 <svcMutexWait+0x16>
    67f2:	2100      	movs	r1, #0
    67f4:	0020      	movs	r0, r4
    67f6:	f000 ff7d 	bl	76f4 <rt_mut_wait>
    67fa:	0003      	movs	r3, r0
    67fc:	2801      	cmp	r0, #1
    67fe:	d002      	beq.n	6806 <svcMutexWait+0x6a>
    6800:	2000      	movs	r0, #0
    6802:	2bff      	cmp	r3, #255	; 0xff
    6804:	d1d5      	bne.n	67b2 <svcMutexWait+0x16>
    6806:	2081      	movs	r0, #129	; 0x81
    6808:	e7d3      	b.n	67b2 <svcMutexWait+0x16>
    680a:	4906      	ldr	r1, [pc, #24]	; (6824 <svcMutexWait+0x88>)
    680c:	e7e9      	b.n	67e2 <svcMutexWait+0x46>
    680e:	4904      	ldr	r1, [pc, #16]	; (6820 <svcMutexWait+0x84>)
    6810:	e7e7      	b.n	67e2 <svcMutexWait+0x46>
    6812:	b281      	uxth	r1, r0
    6814:	e7e5      	b.n	67e2 <svcMutexWait+0x46>
    6816:	46c0      	nop			; (mov r8, r8)
    6818:	003d0900 	.word	0x003d0900
    681c:	00008b50 	.word	0x00008b50
    6820:	0000fffe 	.word	0x0000fffe
    6824:	0000ffff 	.word	0x0000ffff

00006828 <svcMutexRelease>:
    6828:	b510      	push	{r4, lr}
    682a:	2380      	movs	r3, #128	; 0x80
    682c:	0782      	lsls	r2, r0, #30
    682e:	d104      	bne.n	683a <svcMutexRelease+0x12>
    6830:	2800      	cmp	r0, #0
    6832:	d002      	beq.n	683a <svcMutexRelease+0x12>
    6834:	7802      	ldrb	r2, [r0, #0]
    6836:	2a03      	cmp	r2, #3
    6838:	d001      	beq.n	683e <svcMutexRelease+0x16>
    683a:	0018      	movs	r0, r3
    683c:	bd10      	pop	{r4, pc}
    683e:	f000 fed5 	bl	75ec <rt_mut_release>
    6842:	2381      	movs	r3, #129	; 0x81
    6844:	28ff      	cmp	r0, #255	; 0xff
    6846:	d0f8      	beq.n	683a <svcMutexRelease+0x12>
    6848:	2300      	movs	r3, #0
    684a:	e7f6      	b.n	683a <svcMutexRelease+0x12>

0000684c <svcMutexDelete>:
    684c:	b510      	push	{r4, lr}
    684e:	2380      	movs	r3, #128	; 0x80
    6850:	0782      	lsls	r2, r0, #30
    6852:	d104      	bne.n	685e <svcMutexDelete+0x12>
    6854:	2800      	cmp	r0, #0
    6856:	d002      	beq.n	685e <svcMutexDelete+0x12>
    6858:	7802      	ldrb	r2, [r0, #0]
    685a:	2a03      	cmp	r2, #3
    685c:	d001      	beq.n	6862 <svcMutexDelete+0x16>
    685e:	0018      	movs	r0, r3
    6860:	bd10      	pop	{r4, pc}
    6862:	f000 fe53 	bl	750c <rt_mut_delete>
    6866:	2300      	movs	r3, #0
    6868:	e7f9      	b.n	685e <svcMutexDelete+0x12>
    686a:	46c0      	nop			; (mov r8, r8)

0000686c <osMutexCreate>:
    686c:	b5b0      	push	{r4, r5, r7, lr}
    686e:	f3ef 8405 	mrs	r4, IPSR
    6872:	2c00      	cmp	r4, #0
    6874:	d119      	bne.n	68aa <osMutexCreate+0x3e>
    6876:	f3ef 8414 	mrs	r4, CONTROL
    687a:	07e4      	lsls	r4, r4, #31
    687c:	d411      	bmi.n	68a2 <osMutexCreate+0x36>
    687e:	4c0c      	ldr	r4, [pc, #48]	; (68b0 <osMutexCreate+0x44>)
    6880:	7824      	ldrb	r4, [r4, #0]
    6882:	2c00      	cmp	r4, #0
    6884:	d10d      	bne.n	68a2 <osMutexCreate+0x36>
    6886:	2800      	cmp	r0, #0
    6888:	d00f      	beq.n	68aa <osMutexCreate+0x3e>
    688a:	6804      	ldr	r4, [r0, #0]
    688c:	2c00      	cmp	r4, #0
    688e:	d00c      	beq.n	68aa <osMutexCreate+0x3e>
    6890:	7823      	ldrb	r3, [r4, #0]
    6892:	2000      	movs	r0, #0
    6894:	2b00      	cmp	r3, #0
    6896:	d107      	bne.n	68a8 <osMutexCreate+0x3c>
    6898:	0020      	movs	r0, r4
    689a:	f000 fe2f 	bl	74fc <rt_mut_init>
    689e:	0020      	movs	r0, r4
    68a0:	e002      	b.n	68a8 <osMutexCreate+0x3c>
    68a2:	4f04      	ldr	r7, [pc, #16]	; (68b4 <osMutexCreate+0x48>)
    68a4:	46bc      	mov	ip, r7
    68a6:	df00      	svc	0
    68a8:	bdb0      	pop	{r4, r5, r7, pc}
    68aa:	2000      	movs	r0, #0
    68ac:	e7fc      	b.n	68a8 <osMutexCreate+0x3c>
    68ae:	46c0      	nop			; (mov r8, r8)
    68b0:	20006081 	.word	0x20006081
    68b4:	0000677d 	.word	0x0000677d

000068b8 <osMutexWait>:
    68b8:	b5b0      	push	{r4, r5, r7, lr}
    68ba:	0005      	movs	r5, r0
    68bc:	f3ef 8405 	mrs	r4, IPSR
    68c0:	2082      	movs	r0, #130	; 0x82
    68c2:	2c00      	cmp	r4, #0
    68c4:	d000      	beq.n	68c8 <osMutexWait+0x10>
    68c6:	bdb0      	pop	{r4, r5, r7, pc}
    68c8:	0028      	movs	r0, r5
    68ca:	4f02      	ldr	r7, [pc, #8]	; (68d4 <osMutexWait+0x1c>)
    68cc:	46bc      	mov	ip, r7
    68ce:	df00      	svc	0
    68d0:	e7f9      	b.n	68c6 <osMutexWait+0xe>
    68d2:	0000      	.short	0x0000
    68d4:	0000679d 	.word	0x0000679d

000068d8 <osMutexRelease>:
    68d8:	b5b0      	push	{r4, r5, r7, lr}
    68da:	0005      	movs	r5, r0
    68dc:	f3ef 8405 	mrs	r4, IPSR
    68e0:	2082      	movs	r0, #130	; 0x82
    68e2:	2c00      	cmp	r4, #0
    68e4:	d000      	beq.n	68e8 <osMutexRelease+0x10>
    68e6:	bdb0      	pop	{r4, r5, r7, pc}
    68e8:	0028      	movs	r0, r5
    68ea:	4f02      	ldr	r7, [pc, #8]	; (68f4 <osMutexRelease+0x1c>)
    68ec:	46bc      	mov	ip, r7
    68ee:	df00      	svc	0
    68f0:	e7f9      	b.n	68e6 <osMutexRelease+0xe>
    68f2:	0000      	.short	0x0000
    68f4:	00006829 	.word	0x00006829

000068f8 <osMutexDelete>:
    68f8:	b5b0      	push	{r4, r5, r7, lr}
    68fa:	0005      	movs	r5, r0
    68fc:	f3ef 8405 	mrs	r4, IPSR
    6900:	2082      	movs	r0, #130	; 0x82
    6902:	2c00      	cmp	r4, #0
    6904:	d000      	beq.n	6908 <osMutexDelete+0x10>
    6906:	bdb0      	pop	{r4, r5, r7, pc}
    6908:	0028      	movs	r0, r5
    690a:	4f02      	ldr	r7, [pc, #8]	; (6914 <osMutexDelete+0x1c>)
    690c:	46bc      	mov	ip, r7
    690e:	df00      	svc	0
    6910:	e7f9      	b.n	6906 <osMutexDelete+0xe>
    6912:	0000      	.short	0x0000
    6914:	0000684d 	.word	0x0000684d

00006918 <svcSemaphoreCreate>:
    6918:	b510      	push	{r4, lr}
    691a:	2800      	cmp	r0, #0
    691c:	d00e      	beq.n	693c <svcSemaphoreCreate+0x24>
    691e:	6804      	ldr	r4, [r0, #0]
    6920:	2c00      	cmp	r4, #0
    6922:	d00b      	beq.n	693c <svcSemaphoreCreate+0x24>
    6924:	7823      	ldrb	r3, [r4, #0]
    6926:	2b00      	cmp	r3, #0
    6928:	d108      	bne.n	693c <svcSemaphoreCreate+0x24>
    692a:	4b05      	ldr	r3, [pc, #20]	; (6940 <svcSemaphoreCreate+0x28>)
    692c:	4299      	cmp	r1, r3
    692e:	dc05      	bgt.n	693c <svcSemaphoreCreate+0x24>
    6930:	0020      	movs	r0, r4
    6932:	b289      	uxth	r1, r1
    6934:	f000 ff4a 	bl	77cc <rt_sem_init>
    6938:	0020      	movs	r0, r4
    693a:	bd10      	pop	{r4, pc}
    693c:	2000      	movs	r0, #0
    693e:	e7fc      	b.n	693a <svcSemaphoreCreate+0x22>
    6940:	0000ffff 	.word	0x0000ffff

00006944 <svcSemaphoreWait>:
    6944:	b510      	push	{r4, lr}
    6946:	0004      	movs	r4, r0
    6948:	b082      	sub	sp, #8
    694a:	0783      	lsls	r3, r0, #30
    694c:	d111      	bne.n	6972 <svcSemaphoreWait+0x2e>
    694e:	2800      	cmp	r0, #0
    6950:	d00f      	beq.n	6972 <svcSemaphoreWait+0x2e>
    6952:	7803      	ldrb	r3, [r0, #0]
    6954:	2b02      	cmp	r3, #2
    6956:	d10c      	bne.n	6972 <svcSemaphoreWait+0x2e>
    6958:	2300      	movs	r3, #0
    695a:	2900      	cmp	r1, #0
    695c:	d10c      	bne.n	6978 <svcSemaphoreWait+0x34>
    695e:	0019      	movs	r1, r3
    6960:	0020      	movs	r0, r4
    6962:	f000 ff83 	bl	786c <rt_sem_wait>
    6966:	2801      	cmp	r0, #1
    6968:	d023      	beq.n	69b2 <svcSemaphoreWait+0x6e>
    696a:	8860      	ldrh	r0, [r4, #2]
    696c:	3001      	adds	r0, #1
    696e:	b002      	add	sp, #8
    6970:	bd10      	pop	{r4, pc}
    6972:	2001      	movs	r0, #1
    6974:	4240      	negs	r0, r0
    6976:	e7fa      	b.n	696e <svcSemaphoreWait+0x2a>
    6978:	1c4b      	adds	r3, r1, #1
    697a:	d01c      	beq.n	69b6 <svcSemaphoreWait+0x72>
    697c:	4b0f      	ldr	r3, [pc, #60]	; (69bc <svcSemaphoreWait+0x78>)
    697e:	4299      	cmp	r1, r3
    6980:	d810      	bhi.n	69a4 <svcSemaphoreWait+0x60>
    6982:	20fa      	movs	r0, #250	; 0xfa
    6984:	4b0e      	ldr	r3, [pc, #56]	; (69c0 <svcSemaphoreWait+0x7c>)
    6986:	0080      	lsls	r0, r0, #2
    6988:	4341      	muls	r1, r0
    698a:	681b      	ldr	r3, [r3, #0]
    698c:	9301      	str	r3, [sp, #4]
    698e:	3b01      	subs	r3, #1
    6990:	1858      	adds	r0, r3, r1
    6992:	9901      	ldr	r1, [sp, #4]
    6994:	f7fd ff92 	bl	48bc <__aeabi_uidiv>
    6998:	4a0a      	ldr	r2, [pc, #40]	; (69c4 <svcSemaphoreWait+0x80>)
    699a:	0013      	movs	r3, r2
    699c:	4290      	cmp	r0, r2
    699e:	d8de      	bhi.n	695e <svcSemaphoreWait+0x1a>
    69a0:	b283      	uxth	r3, r0
    69a2:	e7dc      	b.n	695e <svcSemaphoreWait+0x1a>
    69a4:	4b07      	ldr	r3, [pc, #28]	; (69c4 <svcSemaphoreWait+0x80>)
    69a6:	0020      	movs	r0, r4
    69a8:	0019      	movs	r1, r3
    69aa:	f000 ff5f 	bl	786c <rt_sem_wait>
    69ae:	2801      	cmp	r0, #1
    69b0:	d1db      	bne.n	696a <svcSemaphoreWait+0x26>
    69b2:	2000      	movs	r0, #0
    69b4:	e7db      	b.n	696e <svcSemaphoreWait+0x2a>
    69b6:	4b04      	ldr	r3, [pc, #16]	; (69c8 <svcSemaphoreWait+0x84>)
    69b8:	e7d1      	b.n	695e <svcSemaphoreWait+0x1a>
    69ba:	46c0      	nop			; (mov r8, r8)
    69bc:	003d0900 	.word	0x003d0900
    69c0:	00008b50 	.word	0x00008b50
    69c4:	0000fffe 	.word	0x0000fffe
    69c8:	0000ffff 	.word	0x0000ffff

000069cc <svcSemaphoreRelease>:
    69cc:	b510      	push	{r4, lr}
    69ce:	2380      	movs	r3, #128	; 0x80
    69d0:	0782      	lsls	r2, r0, #30
    69d2:	d104      	bne.n	69de <svcSemaphoreRelease+0x12>
    69d4:	2800      	cmp	r0, #0
    69d6:	d002      	beq.n	69de <svcSemaphoreRelease+0x12>
    69d8:	7802      	ldrb	r2, [r0, #0]
    69da:	2a02      	cmp	r2, #2
    69dc:	d001      	beq.n	69e2 <svcSemaphoreRelease+0x16>
    69de:	0018      	movs	r0, r3
    69e0:	bd10      	pop	{r4, pc}
    69e2:	8841      	ldrh	r1, [r0, #2]
    69e4:	4a03      	ldr	r2, [pc, #12]	; (69f4 <svcSemaphoreRelease+0x28>)
    69e6:	3301      	adds	r3, #1
    69e8:	4291      	cmp	r1, r2
    69ea:	d0f8      	beq.n	69de <svcSemaphoreRelease+0x12>
    69ec:	f000 ff28 	bl	7840 <rt_sem_send>
    69f0:	2300      	movs	r3, #0
    69f2:	e7f4      	b.n	69de <svcSemaphoreRelease+0x12>
    69f4:	0000ffff 	.word	0x0000ffff

000069f8 <svcSemaphoreDelete>:
    69f8:	b510      	push	{r4, lr}
    69fa:	2380      	movs	r3, #128	; 0x80
    69fc:	0782      	lsls	r2, r0, #30
    69fe:	d104      	bne.n	6a0a <svcSemaphoreDelete+0x12>
    6a00:	2800      	cmp	r0, #0
    6a02:	d002      	beq.n	6a0a <svcSemaphoreDelete+0x12>
    6a04:	7802      	ldrb	r2, [r0, #0]
    6a06:	2a02      	cmp	r2, #2
    6a08:	d001      	beq.n	6a0e <svcSemaphoreDelete+0x16>
    6a0a:	0018      	movs	r0, r3
    6a0c:	bd10      	pop	{r4, pc}
    6a0e:	f000 fee3 	bl	77d8 <rt_sem_delete>
    6a12:	2300      	movs	r3, #0
    6a14:	e7f9      	b.n	6a0a <svcSemaphoreDelete+0x12>
    6a16:	46c0      	nop			; (mov r8, r8)

00006a18 <isrSemaphoreRelease>:
    6a18:	b510      	push	{r4, lr}
    6a1a:	2380      	movs	r3, #128	; 0x80
    6a1c:	0782      	lsls	r2, r0, #30
    6a1e:	d104      	bne.n	6a2a <isrSemaphoreRelease+0x12>
    6a20:	2800      	cmp	r0, #0
    6a22:	d002      	beq.n	6a2a <isrSemaphoreRelease+0x12>
    6a24:	7802      	ldrb	r2, [r0, #0]
    6a26:	2a02      	cmp	r2, #2
    6a28:	d001      	beq.n	6a2e <isrSemaphoreRelease+0x16>
    6a2a:	0018      	movs	r0, r3
    6a2c:	bd10      	pop	{r4, pc}
    6a2e:	8841      	ldrh	r1, [r0, #2]
    6a30:	4a03      	ldr	r2, [pc, #12]	; (6a40 <isrSemaphoreRelease+0x28>)
    6a32:	3301      	adds	r3, #1
    6a34:	4291      	cmp	r1, r2
    6a36:	d0f8      	beq.n	6a2a <isrSemaphoreRelease+0x12>
    6a38:	f000 ff3a 	bl	78b0 <isr_sem_send>
    6a3c:	2300      	movs	r3, #0
    6a3e:	e7f4      	b.n	6a2a <isrSemaphoreRelease+0x12>
    6a40:	0000ffff 	.word	0x0000ffff

00006a44 <osSemaphoreCreate>:
    6a44:	b5b0      	push	{r4, r5, r7, lr}
    6a46:	f3ef 8405 	mrs	r4, IPSR
    6a4a:	2c00      	cmp	r4, #0
    6a4c:	d11c      	bne.n	6a88 <osSemaphoreCreate+0x44>
    6a4e:	f3ef 8414 	mrs	r4, CONTROL
    6a52:	07e4      	lsls	r4, r4, #31
    6a54:	d503      	bpl.n	6a5e <osSemaphoreCreate+0x1a>
    6a56:	4f0f      	ldr	r7, [pc, #60]	; (6a94 <osSemaphoreCreate+0x50>)
    6a58:	46bc      	mov	ip, r7
    6a5a:	df00      	svc	0
    6a5c:	bdb0      	pop	{r4, r5, r7, pc}
    6a5e:	4c0b      	ldr	r4, [pc, #44]	; (6a8c <osSemaphoreCreate+0x48>)
    6a60:	7824      	ldrb	r4, [r4, #0]
    6a62:	2c00      	cmp	r4, #0
    6a64:	d1f7      	bne.n	6a56 <osSemaphoreCreate+0x12>
    6a66:	2800      	cmp	r0, #0
    6a68:	d00e      	beq.n	6a88 <osSemaphoreCreate+0x44>
    6a6a:	6804      	ldr	r4, [r0, #0]
    6a6c:	2c00      	cmp	r4, #0
    6a6e:	d00b      	beq.n	6a88 <osSemaphoreCreate+0x44>
    6a70:	7823      	ldrb	r3, [r4, #0]
    6a72:	2b00      	cmp	r3, #0
    6a74:	d108      	bne.n	6a88 <osSemaphoreCreate+0x44>
    6a76:	4b06      	ldr	r3, [pc, #24]	; (6a90 <osSemaphoreCreate+0x4c>)
    6a78:	4299      	cmp	r1, r3
    6a7a:	dc05      	bgt.n	6a88 <osSemaphoreCreate+0x44>
    6a7c:	0020      	movs	r0, r4
    6a7e:	b289      	uxth	r1, r1
    6a80:	f000 fea4 	bl	77cc <rt_sem_init>
    6a84:	0020      	movs	r0, r4
    6a86:	e7e9      	b.n	6a5c <osSemaphoreCreate+0x18>
    6a88:	2000      	movs	r0, #0
    6a8a:	e7e7      	b.n	6a5c <osSemaphoreCreate+0x18>
    6a8c:	20006081 	.word	0x20006081
    6a90:	0000ffff 	.word	0x0000ffff
    6a94:	00006919 	.word	0x00006919

00006a98 <osSemaphoreWait>:
    6a98:	b590      	push	{r4, r7, lr}
    6a9a:	f3ef 8405 	mrs	r4, IPSR
    6a9e:	2c00      	cmp	r4, #0
    6aa0:	d103      	bne.n	6aaa <osSemaphoreWait+0x12>
    6aa2:	4f03      	ldr	r7, [pc, #12]	; (6ab0 <osSemaphoreWait+0x18>)
    6aa4:	46bc      	mov	ip, r7
    6aa6:	df00      	svc	0
    6aa8:	bd90      	pop	{r4, r7, pc}
    6aaa:	2001      	movs	r0, #1
    6aac:	4240      	negs	r0, r0
    6aae:	e7fb      	b.n	6aa8 <osSemaphoreWait+0x10>
    6ab0:	00006945 	.word	0x00006945

00006ab4 <osSemaphoreRelease>:
    6ab4:	b5b0      	push	{r4, r5, r7, lr}
    6ab6:	f3ef 8405 	mrs	r4, IPSR
    6aba:	2c00      	cmp	r4, #0
    6abc:	d105      	bne.n	6aca <osSemaphoreRelease+0x16>
    6abe:	4f0c      	ldr	r7, [pc, #48]	; (6af0 <osSemaphoreRelease+0x3c>)
    6ac0:	46bc      	mov	ip, r7
    6ac2:	df00      	svc	0
    6ac4:	0003      	movs	r3, r0
    6ac6:	0018      	movs	r0, r3
    6ac8:	bdb0      	pop	{r4, r5, r7, pc}
    6aca:	2380      	movs	r3, #128	; 0x80
    6acc:	0782      	lsls	r2, r0, #30
    6ace:	d1fa      	bne.n	6ac6 <osSemaphoreRelease+0x12>
    6ad0:	2800      	cmp	r0, #0
    6ad2:	d0f8      	beq.n	6ac6 <osSemaphoreRelease+0x12>
    6ad4:	7802      	ldrb	r2, [r0, #0]
    6ad6:	2a02      	cmp	r2, #2
    6ad8:	d1f5      	bne.n	6ac6 <osSemaphoreRelease+0x12>
    6ada:	8841      	ldrh	r1, [r0, #2]
    6adc:	4a03      	ldr	r2, [pc, #12]	; (6aec <osSemaphoreRelease+0x38>)
    6ade:	3301      	adds	r3, #1
    6ae0:	4291      	cmp	r1, r2
    6ae2:	d0f0      	beq.n	6ac6 <osSemaphoreRelease+0x12>
    6ae4:	f000 fee4 	bl	78b0 <isr_sem_send>
    6ae8:	2300      	movs	r3, #0
    6aea:	e7ec      	b.n	6ac6 <osSemaphoreRelease+0x12>
    6aec:	0000ffff 	.word	0x0000ffff
    6af0:	000069cd 	.word	0x000069cd

00006af4 <osSemaphoreDelete>:
    6af4:	b5b0      	push	{r4, r5, r7, lr}
    6af6:	0005      	movs	r5, r0
    6af8:	f3ef 8405 	mrs	r4, IPSR
    6afc:	2082      	movs	r0, #130	; 0x82
    6afe:	2c00      	cmp	r4, #0
    6b00:	d000      	beq.n	6b04 <osSemaphoreDelete+0x10>
    6b02:	bdb0      	pop	{r4, r5, r7, pc}
    6b04:	0028      	movs	r0, r5
    6b06:	4f02      	ldr	r7, [pc, #8]	; (6b10 <osSemaphoreDelete+0x1c>)
    6b08:	46bc      	mov	ip, r7
    6b0a:	df00      	svc	0
    6b0c:	e7f9      	b.n	6b02 <osSemaphoreDelete+0xe>
    6b0e:	0000      	.short	0x0000
    6b10:	000069f9 	.word	0x000069f9

00006b14 <svcPoolCreate>:
    6b14:	b510      	push	{r4, lr}
    6b16:	1e04      	subs	r4, r0, #0
    6b18:	d011      	beq.n	6b3e <svcPoolCreate+0x2a>
    6b1a:	6801      	ldr	r1, [r0, #0]
    6b1c:	2900      	cmp	r1, #0
    6b1e:	d00e      	beq.n	6b3e <svcPoolCreate+0x2a>
    6b20:	6842      	ldr	r2, [r0, #4]
    6b22:	2a00      	cmp	r2, #0
    6b24:	d00b      	beq.n	6b3e <svcPoolCreate+0x2a>
    6b26:	6880      	ldr	r0, [r0, #8]
    6b28:	2800      	cmp	r0, #0
    6b2a:	d008      	beq.n	6b3e <svcPoolCreate+0x2a>
    6b2c:	2303      	movs	r3, #3
    6b2e:	3203      	adds	r2, #3
    6b30:	439a      	bics	r2, r3
    6b32:	4351      	muls	r1, r2
    6b34:	310c      	adds	r1, #12
    6b36:	f000 fc81 	bl	743c <_init_box>
    6b3a:	68a0      	ldr	r0, [r4, #8]
    6b3c:	bd10      	pop	{r4, pc}
    6b3e:	2000      	movs	r0, #0
    6b40:	e7fc      	b.n	6b3c <svcPoolCreate+0x28>
    6b42:	46c0      	nop			; (mov r8, r8)

00006b44 <sysPoolAlloc>:
    6b44:	b510      	push	{r4, lr}
    6b46:	2800      	cmp	r0, #0
    6b48:	d002      	beq.n	6b50 <sysPoolAlloc+0xc>
    6b4a:	f000 fca3 	bl	7494 <rt_alloc_box>
    6b4e:	bd10      	pop	{r4, pc}
    6b50:	2000      	movs	r0, #0
    6b52:	e7fc      	b.n	6b4e <sysPoolAlloc+0xa>

00006b54 <sysPoolFree>:
    6b54:	b510      	push	{r4, lr}
    6b56:	2380      	movs	r3, #128	; 0x80
    6b58:	2800      	cmp	r0, #0
    6b5a:	d006      	beq.n	6b6a <sysPoolFree+0x16>
    6b5c:	f000 fcba 	bl	74d4 <rt_free_box>
    6b60:	1e42      	subs	r2, r0, #1
    6b62:	4190      	sbcs	r0, r2
    6b64:	2386      	movs	r3, #134	; 0x86
    6b66:	4240      	negs	r0, r0
    6b68:	4003      	ands	r3, r0
    6b6a:	0018      	movs	r0, r3
    6b6c:	bd10      	pop	{r4, pc}
    6b6e:	46c0      	nop			; (mov r8, r8)

00006b70 <osPoolCreate>:
    6b70:	b5b0      	push	{r4, r5, r7, lr}
    6b72:	0004      	movs	r4, r0
    6b74:	f3ef 8005 	mrs	r0, IPSR
    6b78:	2800      	cmp	r0, #0
    6b7a:	d120      	bne.n	6bbe <osPoolCreate+0x4e>
    6b7c:	f3ef 8014 	mrs	r0, CONTROL
    6b80:	07c0      	lsls	r0, r0, #31
    6b82:	d504      	bpl.n	6b8e <osPoolCreate+0x1e>
    6b84:	0020      	movs	r0, r4
    6b86:	4f10      	ldr	r7, [pc, #64]	; (6bc8 <osPoolCreate+0x58>)
    6b88:	46bc      	mov	ip, r7
    6b8a:	df00      	svc	0
    6b8c:	bdb0      	pop	{r4, r5, r7, pc}
    6b8e:	480d      	ldr	r0, [pc, #52]	; (6bc4 <osPoolCreate+0x54>)
    6b90:	7800      	ldrb	r0, [r0, #0]
    6b92:	2800      	cmp	r0, #0
    6b94:	d1f6      	bne.n	6b84 <osPoolCreate+0x14>
    6b96:	2c00      	cmp	r4, #0
    6b98:	d011      	beq.n	6bbe <osPoolCreate+0x4e>
    6b9a:	6821      	ldr	r1, [r4, #0]
    6b9c:	2900      	cmp	r1, #0
    6b9e:	d00e      	beq.n	6bbe <osPoolCreate+0x4e>
    6ba0:	6862      	ldr	r2, [r4, #4]
    6ba2:	2a00      	cmp	r2, #0
    6ba4:	d00b      	beq.n	6bbe <osPoolCreate+0x4e>
    6ba6:	68a0      	ldr	r0, [r4, #8]
    6ba8:	2800      	cmp	r0, #0
    6baa:	d008      	beq.n	6bbe <osPoolCreate+0x4e>
    6bac:	2303      	movs	r3, #3
    6bae:	3203      	adds	r2, #3
    6bb0:	439a      	bics	r2, r3
    6bb2:	4351      	muls	r1, r2
    6bb4:	310c      	adds	r1, #12
    6bb6:	f000 fc41 	bl	743c <_init_box>
    6bba:	68a0      	ldr	r0, [r4, #8]
    6bbc:	e7e6      	b.n	6b8c <osPoolCreate+0x1c>
    6bbe:	2000      	movs	r0, #0
    6bc0:	e7e4      	b.n	6b8c <osPoolCreate+0x1c>
    6bc2:	46c0      	nop			; (mov r8, r8)
    6bc4:	20006081 	.word	0x20006081
    6bc8:	00006b15 	.word	0x00006b15

00006bcc <osPoolAlloc>:
    6bcc:	b5b0      	push	{r4, r5, r7, lr}
    6bce:	f3ef 8405 	mrs	r4, IPSR
    6bd2:	2c00      	cmp	r4, #0
    6bd4:	d103      	bne.n	6bde <osPoolAlloc+0x12>
    6bd6:	f3ef 8414 	mrs	r4, CONTROL
    6bda:	07e4      	lsls	r4, r4, #31
    6bdc:	d404      	bmi.n	6be8 <osPoolAlloc+0x1c>
    6bde:	2800      	cmp	r0, #0
    6be0:	d006      	beq.n	6bf0 <osPoolAlloc+0x24>
    6be2:	f000 fc57 	bl	7494 <rt_alloc_box>
    6be6:	bdb0      	pop	{r4, r5, r7, pc}
    6be8:	4f02      	ldr	r7, [pc, #8]	; (6bf4 <osPoolAlloc+0x28>)
    6bea:	46bc      	mov	ip, r7
    6bec:	df00      	svc	0
    6bee:	e7fa      	b.n	6be6 <osPoolAlloc+0x1a>
    6bf0:	2000      	movs	r0, #0
    6bf2:	e7f8      	b.n	6be6 <osPoolAlloc+0x1a>
    6bf4:	00006b45 	.word	0x00006b45

00006bf8 <osPoolCAlloc>:
    6bf8:	b5b0      	push	{r4, r5, r7, lr}
    6bfa:	0004      	movs	r4, r0
    6bfc:	f3ef 8005 	mrs	r0, IPSR
    6c00:	2800      	cmp	r0, #0
    6c02:	d103      	bne.n	6c0c <osPoolCAlloc+0x14>
    6c04:	f3ef 8014 	mrs	r0, CONTROL
    6c08:	07c0      	lsls	r0, r0, #31
    6c0a:	d410      	bmi.n	6c2e <osPoolCAlloc+0x36>
    6c0c:	2c00      	cmp	r4, #0
    6c0e:	d015      	beq.n	6c3c <osPoolCAlloc+0x44>
    6c10:	0020      	movs	r0, r4
    6c12:	f000 fc3f 	bl	7494 <rt_alloc_box>
    6c16:	2800      	cmp	r0, #0
    6c18:	d010      	beq.n	6c3c <osPoolCAlloc+0x44>
    6c1a:	68a3      	ldr	r3, [r4, #8]
    6c1c:	2b00      	cmp	r3, #0
    6c1e:	d005      	beq.n	6c2c <osPoolCAlloc+0x34>
    6c20:	0002      	movs	r2, r0
    6c22:	2100      	movs	r1, #0
    6c24:	3b04      	subs	r3, #4
    6c26:	c202      	stmia	r2!, {r1}
    6c28:	2b00      	cmp	r3, #0
    6c2a:	d1fb      	bne.n	6c24 <osPoolCAlloc+0x2c>
    6c2c:	bdb0      	pop	{r4, r5, r7, pc}
    6c2e:	0020      	movs	r0, r4
    6c30:	4f03      	ldr	r7, [pc, #12]	; (6c40 <osPoolCAlloc+0x48>)
    6c32:	46bc      	mov	ip, r7
    6c34:	df00      	svc	0
    6c36:	2c00      	cmp	r4, #0
    6c38:	d1ed      	bne.n	6c16 <osPoolCAlloc+0x1e>
    6c3a:	e7f7      	b.n	6c2c <osPoolCAlloc+0x34>
    6c3c:	2000      	movs	r0, #0
    6c3e:	e7f5      	b.n	6c2c <osPoolCAlloc+0x34>
    6c40:	00006b45 	.word	0x00006b45

00006c44 <osPoolFree>:
    6c44:	b5b0      	push	{r4, r5, r7, lr}
    6c46:	f3ef 8405 	mrs	r4, IPSR
    6c4a:	2c00      	cmp	r4, #0
    6c4c:	d103      	bne.n	6c56 <osPoolFree+0x12>
    6c4e:	f3ef 8414 	mrs	r4, CONTROL
    6c52:	07e4      	lsls	r4, r4, #31
    6c54:	d40a      	bmi.n	6c6c <osPoolFree+0x28>
    6c56:	2800      	cmp	r0, #0
    6c58:	d00c      	beq.n	6c74 <osPoolFree+0x30>
    6c5a:	f000 fc3b 	bl	74d4 <rt_free_box>
    6c5e:	0003      	movs	r3, r0
    6c60:	1e5a      	subs	r2, r3, #1
    6c62:	4193      	sbcs	r3, r2
    6c64:	2086      	movs	r0, #134	; 0x86
    6c66:	425b      	negs	r3, r3
    6c68:	4018      	ands	r0, r3
    6c6a:	bdb0      	pop	{r4, r5, r7, pc}
    6c6c:	4f02      	ldr	r7, [pc, #8]	; (6c78 <osPoolFree+0x34>)
    6c6e:	46bc      	mov	ip, r7
    6c70:	df00      	svc	0
    6c72:	e7fa      	b.n	6c6a <osPoolFree+0x26>
    6c74:	2080      	movs	r0, #128	; 0x80
    6c76:	e7f8      	b.n	6c6a <osPoolFree+0x26>
    6c78:	00006b55 	.word	0x00006b55

00006c7c <svcMessageCreate>:
    6c7c:	b510      	push	{r4, lr}
    6c7e:	1e04      	subs	r4, r0, #0
    6c80:	d00f      	beq.n	6ca2 <svcMessageCreate+0x26>
    6c82:	6801      	ldr	r1, [r0, #0]
    6c84:	2900      	cmp	r1, #0
    6c86:	d00c      	beq.n	6ca2 <svcMessageCreate+0x26>
    6c88:	6840      	ldr	r0, [r0, #4]
    6c8a:	2800      	cmp	r0, #0
    6c8c:	d009      	beq.n	6ca2 <svcMessageCreate+0x26>
    6c8e:	7803      	ldrb	r3, [r0, #0]
    6c90:	2b00      	cmp	r3, #0
    6c92:	d106      	bne.n	6ca2 <svcMessageCreate+0x26>
    6c94:	3104      	adds	r1, #4
    6c96:	0089      	lsls	r1, r1, #2
    6c98:	b289      	uxth	r1, r1
    6c9a:	f000 fe2b 	bl	78f4 <rt_mbx_init>
    6c9e:	6860      	ldr	r0, [r4, #4]
    6ca0:	bd10      	pop	{r4, pc}
    6ca2:	2000      	movs	r0, #0
    6ca4:	e7fc      	b.n	6ca0 <svcMessageCreate+0x24>
    6ca6:	46c0      	nop			; (mov r8, r8)

00006ca8 <svcMessagePut>:
    6ca8:	b570      	push	{r4, r5, r6, lr}
    6caa:	0004      	movs	r4, r0
    6cac:	b082      	sub	sp, #8
    6cae:	000e      	movs	r6, r1
    6cb0:	0015      	movs	r5, r2
    6cb2:	2800      	cmp	r0, #0
    6cb4:	d005      	beq.n	6cc2 <svcMessagePut+0x1a>
    6cb6:	7803      	ldrb	r3, [r0, #0]
    6cb8:	2080      	movs	r0, #128	; 0x80
    6cba:	2b01      	cmp	r3, #1
    6cbc:	d003      	beq.n	6cc6 <svcMessagePut+0x1e>
    6cbe:	b002      	add	sp, #8
    6cc0:	bd70      	pop	{r4, r5, r6, pc}
    6cc2:	2080      	movs	r0, #128	; 0x80
    6cc4:	e7fb      	b.n	6cbe <svcMessagePut+0x16>
    6cc6:	2200      	movs	r2, #0
    6cc8:	2d00      	cmp	r5, #0
    6cca:	d014      	beq.n	6cf6 <svcMessagePut+0x4e>
    6ccc:	1c6b      	adds	r3, r5, #1
    6cce:	d01f      	beq.n	6d10 <svcMessagePut+0x68>
    6cd0:	4b11      	ldr	r3, [pc, #68]	; (6d18 <svcMessagePut+0x70>)
    6cd2:	429d      	cmp	r5, r3
    6cd4:	d81e      	bhi.n	6d14 <svcMessagePut+0x6c>
    6cd6:	20fa      	movs	r0, #250	; 0xfa
    6cd8:	4b10      	ldr	r3, [pc, #64]	; (6d1c <svcMessagePut+0x74>)
    6cda:	0080      	lsls	r0, r0, #2
    6cdc:	4368      	muls	r0, r5
    6cde:	681b      	ldr	r3, [r3, #0]
    6ce0:	9301      	str	r3, [sp, #4]
    6ce2:	3b01      	subs	r3, #1
    6ce4:	18c0      	adds	r0, r0, r3
    6ce6:	9901      	ldr	r1, [sp, #4]
    6ce8:	f7fd fde8 	bl	48bc <__aeabi_uidiv>
    6cec:	4b0c      	ldr	r3, [pc, #48]	; (6d20 <svcMessagePut+0x78>)
    6cee:	001a      	movs	r2, r3
    6cf0:	4298      	cmp	r0, r3
    6cf2:	d800      	bhi.n	6cf6 <svcMessagePut+0x4e>
    6cf4:	b282      	uxth	r2, r0
    6cf6:	0031      	movs	r1, r6
    6cf8:	0020      	movs	r0, r4
    6cfa:	f000 fe09 	bl	7910 <rt_mbx_send>
    6cfe:	0003      	movs	r3, r0
    6d00:	2000      	movs	r0, #0
    6d02:	2b01      	cmp	r3, #1
    6d04:	d1db      	bne.n	6cbe <svcMessagePut+0x16>
    6d06:	30c1      	adds	r0, #193	; 0xc1
    6d08:	2d00      	cmp	r5, #0
    6d0a:	d1d8      	bne.n	6cbe <svcMessagePut+0x16>
    6d0c:	3840      	subs	r0, #64	; 0x40
    6d0e:	e7d6      	b.n	6cbe <svcMessagePut+0x16>
    6d10:	4a04      	ldr	r2, [pc, #16]	; (6d24 <svcMessagePut+0x7c>)
    6d12:	e7f0      	b.n	6cf6 <svcMessagePut+0x4e>
    6d14:	4a02      	ldr	r2, [pc, #8]	; (6d20 <svcMessagePut+0x78>)
    6d16:	e7ee      	b.n	6cf6 <svcMessagePut+0x4e>
    6d18:	003d0900 	.word	0x003d0900
    6d1c:	00008b50 	.word	0x00008b50
    6d20:	0000fffe 	.word	0x0000fffe
    6d24:	0000ffff 	.word	0x0000ffff

00006d28 <svcMessageGet>:
    6d28:	b510      	push	{r4, lr}
    6d2a:	0004      	movs	r4, r0
    6d2c:	b086      	sub	sp, #24
    6d2e:	2800      	cmp	r0, #0
    6d30:	d002      	beq.n	6d38 <svcMessageGet+0x10>
    6d32:	7803      	ldrb	r3, [r0, #0]
    6d34:	2b01      	cmp	r3, #1
    6d36:	d005      	beq.n	6d44 <svcMessageGet+0x1c>
    6d38:	2080      	movs	r0, #128	; 0x80
    6d3a:	2100      	movs	r1, #0
    6d3c:	2200      	movs	r2, #0
    6d3e:	2300      	movs	r3, #0
    6d40:	b006      	add	sp, #24
    6d42:	bd10      	pop	{r4, pc}
    6d44:	2900      	cmp	r1, #0
    6d46:	d01c      	beq.n	6d82 <svcMessageGet+0x5a>
    6d48:	1c4b      	adds	r3, r1, #1
    6d4a:	d02a      	beq.n	6da2 <svcMessageGet+0x7a>
    6d4c:	4b16      	ldr	r3, [pc, #88]	; (6da8 <svcMessageGet+0x80>)
    6d4e:	4299      	cmp	r1, r3
    6d50:	d820      	bhi.n	6d94 <svcMessageGet+0x6c>
    6d52:	20fa      	movs	r0, #250	; 0xfa
    6d54:	4b15      	ldr	r3, [pc, #84]	; (6dac <svcMessageGet+0x84>)
    6d56:	0080      	lsls	r0, r0, #2
    6d58:	4341      	muls	r1, r0
    6d5a:	681b      	ldr	r3, [r3, #0]
    6d5c:	9301      	str	r3, [sp, #4]
    6d5e:	3b01      	subs	r3, #1
    6d60:	1858      	adds	r0, r3, r1
    6d62:	9901      	ldr	r1, [sp, #4]
    6d64:	f7fd fdaa 	bl	48bc <__aeabi_uidiv>
    6d68:	4b11      	ldr	r3, [pc, #68]	; (6db0 <svcMessageGet+0x88>)
    6d6a:	001a      	movs	r2, r3
    6d6c:	4298      	cmp	r0, r3
    6d6e:	d916      	bls.n	6d9e <svcMessageGet+0x76>
    6d70:	a904      	add	r1, sp, #16
    6d72:	0020      	movs	r0, r4
    6d74:	f000 fe18 	bl	79a8 <rt_mbx_wait>
    6d78:	2801      	cmp	r0, #1
    6d7a:	d00d      	beq.n	6d98 <svcMessageGet+0x70>
    6d7c:	2010      	movs	r0, #16
    6d7e:	9904      	ldr	r1, [sp, #16]
    6d80:	e7dc      	b.n	6d3c <svcMessageGet+0x14>
    6d82:	2200      	movs	r2, #0
    6d84:	a904      	add	r1, sp, #16
    6d86:	f000 fe0f 	bl	79a8 <rt_mbx_wait>
    6d8a:	2801      	cmp	r0, #1
    6d8c:	d1f6      	bne.n	6d7c <svcMessageGet+0x54>
    6d8e:	2000      	movs	r0, #0
    6d90:	9904      	ldr	r1, [sp, #16]
    6d92:	e7d3      	b.n	6d3c <svcMessageGet+0x14>
    6d94:	4a06      	ldr	r2, [pc, #24]	; (6db0 <svcMessageGet+0x88>)
    6d96:	e7eb      	b.n	6d70 <svcMessageGet+0x48>
    6d98:	2040      	movs	r0, #64	; 0x40
    6d9a:	9904      	ldr	r1, [sp, #16]
    6d9c:	e7ce      	b.n	6d3c <svcMessageGet+0x14>
    6d9e:	b282      	uxth	r2, r0
    6da0:	e7e6      	b.n	6d70 <svcMessageGet+0x48>
    6da2:	4a04      	ldr	r2, [pc, #16]	; (6db4 <svcMessageGet+0x8c>)
    6da4:	e7e4      	b.n	6d70 <svcMessageGet+0x48>
    6da6:	46c0      	nop			; (mov r8, r8)
    6da8:	003d0900 	.word	0x003d0900
    6dac:	00008b50 	.word	0x00008b50
    6db0:	0000fffe 	.word	0x0000fffe
    6db4:	0000ffff 	.word	0x0000ffff

00006db8 <isrMessagePut>:
    6db8:	b570      	push	{r4, r5, r6, lr}
    6dba:	0004      	movs	r4, r0
    6dbc:	000d      	movs	r5, r1
    6dbe:	2080      	movs	r0, #128	; 0x80
    6dc0:	2c00      	cmp	r4, #0
    6dc2:	d001      	beq.n	6dc8 <isrMessagePut+0x10>
    6dc4:	2a00      	cmp	r2, #0
    6dc6:	d000      	beq.n	6dca <isrMessagePut+0x12>
    6dc8:	bd70      	pop	{r4, r5, r6, pc}
    6dca:	7823      	ldrb	r3, [r4, #0]
    6dcc:	2b01      	cmp	r3, #1
    6dce:	d1fb      	bne.n	6dc8 <isrMessagePut+0x10>
    6dd0:	0020      	movs	r0, r4
    6dd2:	f000 fe45 	bl	7a60 <rt_mbx_check>
    6dd6:	0003      	movs	r3, r0
    6dd8:	2081      	movs	r0, #129	; 0x81
    6dda:	2b00      	cmp	r3, #0
    6ddc:	d0f4      	beq.n	6dc8 <isrMessagePut+0x10>
    6dde:	0020      	movs	r0, r4
    6de0:	0029      	movs	r1, r5
    6de2:	f000 fe41 	bl	7a68 <isr_mbx_send>
    6de6:	2000      	movs	r0, #0
    6de8:	e7ee      	b.n	6dc8 <isrMessagePut+0x10>
    6dea:	46c0      	nop			; (mov r8, r8)

00006dec <isrMessageGet>:
    6dec:	b570      	push	{r4, r5, r6, lr}
    6dee:	0004      	movs	r4, r0
    6df0:	b084      	sub	sp, #16
    6df2:	0008      	movs	r0, r1
    6df4:	0015      	movs	r5, r2
    6df6:	2900      	cmp	r1, #0
    6df8:	d004      	beq.n	6e04 <isrMessageGet+0x18>
    6dfa:	2a00      	cmp	r2, #0
    6dfc:	d102      	bne.n	6e04 <isrMessageGet+0x18>
    6dfe:	780b      	ldrb	r3, [r1, #0]
    6e00:	2b01      	cmp	r3, #1
    6e02:	d004      	beq.n	6e0e <isrMessageGet+0x22>
    6e04:	2380      	movs	r3, #128	; 0x80
    6e06:	6023      	str	r3, [r4, #0]
    6e08:	0020      	movs	r0, r4
    6e0a:	b004      	add	sp, #16
    6e0c:	bd70      	pop	{r4, r5, r6, pc}
    6e0e:	a902      	add	r1, sp, #8
    6e10:	ae01      	add	r6, sp, #4
    6e12:	f000 fe2f 	bl	7a74 <isr_mbx_receive>
    6e16:	2804      	cmp	r0, #4
    6e18:	d004      	beq.n	6e24 <isrMessageGet+0x38>
    6e1a:	0023      	movs	r3, r4
    6e1c:	9501      	str	r5, [sp, #4]
    6e1e:	ce07      	ldmia	r6!, {r0, r1, r2}
    6e20:	c307      	stmia	r3!, {r0, r1, r2}
    6e22:	e7f1      	b.n	6e08 <isrMessageGet+0x1c>
    6e24:	2310      	movs	r3, #16
    6e26:	9301      	str	r3, [sp, #4]
    6e28:	0023      	movs	r3, r4
    6e2a:	ce07      	ldmia	r6!, {r0, r1, r2}
    6e2c:	c307      	stmia	r3!, {r0, r1, r2}
    6e2e:	e7eb      	b.n	6e08 <isrMessageGet+0x1c>

00006e30 <osMessageCreate>:
    6e30:	b5b0      	push	{r4, r5, r7, lr}
    6e32:	0004      	movs	r4, r0
    6e34:	f3ef 8005 	mrs	r0, IPSR
    6e38:	2800      	cmp	r0, #0
    6e3a:	d11e      	bne.n	6e7a <osMessageCreate+0x4a>
    6e3c:	f3ef 8014 	mrs	r0, CONTROL
    6e40:	07c0      	lsls	r0, r0, #31
    6e42:	d504      	bpl.n	6e4e <osMessageCreate+0x1e>
    6e44:	0020      	movs	r0, r4
    6e46:	4f0f      	ldr	r7, [pc, #60]	; (6e84 <osMessageCreate+0x54>)
    6e48:	46bc      	mov	ip, r7
    6e4a:	df00      	svc	0
    6e4c:	bdb0      	pop	{r4, r5, r7, pc}
    6e4e:	480c      	ldr	r0, [pc, #48]	; (6e80 <osMessageCreate+0x50>)
    6e50:	7800      	ldrb	r0, [r0, #0]
    6e52:	2800      	cmp	r0, #0
    6e54:	d1f6      	bne.n	6e44 <osMessageCreate+0x14>
    6e56:	2c00      	cmp	r4, #0
    6e58:	d00f      	beq.n	6e7a <osMessageCreate+0x4a>
    6e5a:	6823      	ldr	r3, [r4, #0]
    6e5c:	2b00      	cmp	r3, #0
    6e5e:	d00c      	beq.n	6e7a <osMessageCreate+0x4a>
    6e60:	6860      	ldr	r0, [r4, #4]
    6e62:	2800      	cmp	r0, #0
    6e64:	d009      	beq.n	6e7a <osMessageCreate+0x4a>
    6e66:	7802      	ldrb	r2, [r0, #0]
    6e68:	2a00      	cmp	r2, #0
    6e6a:	d106      	bne.n	6e7a <osMessageCreate+0x4a>
    6e6c:	1d19      	adds	r1, r3, #4
    6e6e:	008b      	lsls	r3, r1, #2
    6e70:	b299      	uxth	r1, r3
    6e72:	f000 fd3f 	bl	78f4 <rt_mbx_init>
    6e76:	6860      	ldr	r0, [r4, #4]
    6e78:	e7e8      	b.n	6e4c <osMessageCreate+0x1c>
    6e7a:	2000      	movs	r0, #0
    6e7c:	e7e6      	b.n	6e4c <osMessageCreate+0x1c>
    6e7e:	46c0      	nop			; (mov r8, r8)
    6e80:	20006081 	.word	0x20006081
    6e84:	00006c7d 	.word	0x00006c7d

00006e88 <osMessagePut>:
    6e88:	b5b0      	push	{r4, r5, r7, lr}
    6e8a:	0004      	movs	r4, r0
    6e8c:	000d      	movs	r5, r1
    6e8e:	f3ef 8105 	mrs	r1, IPSR
    6e92:	2900      	cmp	r1, #0
    6e94:	d008      	beq.n	6ea8 <osMessagePut+0x20>
    6e96:	2080      	movs	r0, #128	; 0x80
    6e98:	2c00      	cmp	r4, #0
    6e9a:	d004      	beq.n	6ea6 <osMessagePut+0x1e>
    6e9c:	2a00      	cmp	r2, #0
    6e9e:	d102      	bne.n	6ea6 <osMessagePut+0x1e>
    6ea0:	7823      	ldrb	r3, [r4, #0]
    6ea2:	2b01      	cmp	r3, #1
    6ea4:	d005      	beq.n	6eb2 <osMessagePut+0x2a>
    6ea6:	bdb0      	pop	{r4, r5, r7, pc}
    6ea8:	0029      	movs	r1, r5
    6eaa:	4f08      	ldr	r7, [pc, #32]	; (6ecc <osMessagePut+0x44>)
    6eac:	46bc      	mov	ip, r7
    6eae:	df00      	svc	0
    6eb0:	e7f9      	b.n	6ea6 <osMessagePut+0x1e>
    6eb2:	0020      	movs	r0, r4
    6eb4:	f000 fdd4 	bl	7a60 <rt_mbx_check>
    6eb8:	0003      	movs	r3, r0
    6eba:	2081      	movs	r0, #129	; 0x81
    6ebc:	2b00      	cmp	r3, #0
    6ebe:	d0f2      	beq.n	6ea6 <osMessagePut+0x1e>
    6ec0:	0020      	movs	r0, r4
    6ec2:	0029      	movs	r1, r5
    6ec4:	f000 fdd0 	bl	7a68 <isr_mbx_send>
    6ec8:	2000      	movs	r0, #0
    6eca:	e7ec      	b.n	6ea6 <osMessagePut+0x1e>
    6ecc:	00006ca9 	.word	0x00006ca9

00006ed0 <osMessageGet>:
    6ed0:	b5f0      	push	{r4, r5, r6, r7, lr}
    6ed2:	0004      	movs	r4, r0
    6ed4:	b085      	sub	sp, #20
    6ed6:	0008      	movs	r0, r1
    6ed8:	0015      	movs	r5, r2
    6eda:	f3ef 8105 	mrs	r1, IPSR
    6ede:	2900      	cmp	r1, #0
    6ee0:	d109      	bne.n	6ef6 <osMessageGet+0x26>
    6ee2:	0011      	movs	r1, r2
    6ee4:	4f11      	ldr	r7, [pc, #68]	; (6f2c <osMessageGet+0x5c>)
    6ee6:	46bc      	mov	ip, r7
    6ee8:	df00      	svc	0
    6eea:	6020      	str	r0, [r4, #0]
    6eec:	6061      	str	r1, [r4, #4]
    6eee:	60a2      	str	r2, [r4, #8]
    6ef0:	0020      	movs	r0, r4
    6ef2:	b005      	add	sp, #20
    6ef4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6ef6:	2800      	cmp	r0, #0
    6ef8:	d004      	beq.n	6f04 <osMessageGet+0x34>
    6efa:	2a00      	cmp	r2, #0
    6efc:	d102      	bne.n	6f04 <osMessageGet+0x34>
    6efe:	7803      	ldrb	r3, [r0, #0]
    6f00:	2b01      	cmp	r3, #1
    6f02:	d002      	beq.n	6f0a <osMessageGet+0x3a>
    6f04:	2380      	movs	r3, #128	; 0x80
    6f06:	6023      	str	r3, [r4, #0]
    6f08:	e7f2      	b.n	6ef0 <osMessageGet+0x20>
    6f0a:	a902      	add	r1, sp, #8
    6f0c:	ae01      	add	r6, sp, #4
    6f0e:	f000 fdb1 	bl	7a74 <isr_mbx_receive>
    6f12:	2804      	cmp	r0, #4
    6f14:	d004      	beq.n	6f20 <osMessageGet+0x50>
    6f16:	0023      	movs	r3, r4
    6f18:	9501      	str	r5, [sp, #4]
    6f1a:	ce07      	ldmia	r6!, {r0, r1, r2}
    6f1c:	c307      	stmia	r3!, {r0, r1, r2}
    6f1e:	e7e7      	b.n	6ef0 <osMessageGet+0x20>
    6f20:	2310      	movs	r3, #16
    6f22:	9301      	str	r3, [sp, #4]
    6f24:	0023      	movs	r3, r4
    6f26:	ce07      	ldmia	r6!, {r0, r1, r2}
    6f28:	c307      	stmia	r3!, {r0, r1, r2}
    6f2a:	e7e1      	b.n	6ef0 <osMessageGet+0x20>
    6f2c:	00006d29 	.word	0x00006d29

00006f30 <svcMailCreate>:
    6f30:	b570      	push	{r4, r5, r6, lr}
    6f32:	1e04      	subs	r4, r0, #0
    6f34:	d021      	beq.n	6f7a <svcMailCreate+0x4a>
    6f36:	6801      	ldr	r1, [r0, #0]
    6f38:	2900      	cmp	r1, #0
    6f3a:	d01e      	beq.n	6f7a <svcMailCreate+0x4a>
    6f3c:	6842      	ldr	r2, [r0, #4]
    6f3e:	2a00      	cmp	r2, #0
    6f40:	d01b      	beq.n	6f7a <svcMailCreate+0x4a>
    6f42:	6883      	ldr	r3, [r0, #8]
    6f44:	2b00      	cmp	r3, #0
    6f46:	d018      	beq.n	6f7a <svcMailCreate+0x4a>
    6f48:	6858      	ldr	r0, [r3, #4]
    6f4a:	681d      	ldr	r5, [r3, #0]
    6f4c:	2800      	cmp	r0, #0
    6f4e:	d014      	beq.n	6f7a <svcMailCreate+0x4a>
    6f50:	2d00      	cmp	r5, #0
    6f52:	d012      	beq.n	6f7a <svcMailCreate+0x4a>
    6f54:	782b      	ldrb	r3, [r5, #0]
    6f56:	2b00      	cmp	r3, #0
    6f58:	d10f      	bne.n	6f7a <svcMailCreate+0x4a>
    6f5a:	3303      	adds	r3, #3
    6f5c:	3203      	adds	r2, #3
    6f5e:	439a      	bics	r2, r3
    6f60:	4351      	muls	r1, r2
    6f62:	310c      	adds	r1, #12
    6f64:	f000 fa6a 	bl	743c <_init_box>
    6f68:	6823      	ldr	r3, [r4, #0]
    6f6a:	0028      	movs	r0, r5
    6f6c:	1d19      	adds	r1, r3, #4
    6f6e:	0089      	lsls	r1, r1, #2
    6f70:	b289      	uxth	r1, r1
    6f72:	f000 fcbf 	bl	78f4 <rt_mbx_init>
    6f76:	68a0      	ldr	r0, [r4, #8]
    6f78:	bd70      	pop	{r4, r5, r6, pc}
    6f7a:	2000      	movs	r0, #0
    6f7c:	e7fc      	b.n	6f78 <svcMailCreate+0x48>
    6f7e:	46c0      	nop			; (mov r8, r8)

00006f80 <sysMailAlloc>:
    6f80:	b530      	push	{r4, r5, lr}
    6f82:	000d      	movs	r5, r1
    6f84:	b083      	sub	sp, #12
    6f86:	2800      	cmp	r0, #0
    6f88:	d035      	beq.n	6ff6 <sysMailAlloc+0x76>
    6f8a:	6804      	ldr	r4, [r0, #0]
    6f8c:	6840      	ldr	r0, [r0, #4]
    6f8e:	2800      	cmp	r0, #0
    6f90:	d031      	beq.n	6ff6 <sysMailAlloc+0x76>
    6f92:	2c00      	cmp	r4, #0
    6f94:	d02f      	beq.n	6ff6 <sysMailAlloc+0x76>
    6f96:	2a00      	cmp	r2, #0
    6f98:	d007      	beq.n	6faa <sysMailAlloc+0x2a>
    6f9a:	2900      	cmp	r1, #0
    6f9c:	d12b      	bne.n	6ff6 <sysMailAlloc+0x76>
    6f9e:	f000 fa79 	bl	7494 <rt_alloc_box>
    6fa2:	2800      	cmp	r0, #0
    6fa4:	d027      	beq.n	6ff6 <sysMailAlloc+0x76>
    6fa6:	b003      	add	sp, #12
    6fa8:	bd30      	pop	{r4, r5, pc}
    6faa:	f000 fa73 	bl	7494 <rt_alloc_box>
    6fae:	2800      	cmp	r0, #0
    6fb0:	d1f9      	bne.n	6fa6 <sysMailAlloc+0x26>
    6fb2:	2d00      	cmp	r5, #0
    6fb4:	d01f      	beq.n	6ff6 <sysMailAlloc+0x76>
    6fb6:	6863      	ldr	r3, [r4, #4]
    6fb8:	2b00      	cmp	r3, #0
    6fba:	d020      	beq.n	6ffe <sysMailAlloc+0x7e>
    6fbc:	4b16      	ldr	r3, [pc, #88]	; (7018 <sysMailAlloc+0x98>)
    6fbe:	0020      	movs	r0, r4
    6fc0:	6819      	ldr	r1, [r3, #0]
    6fc2:	f000 fdf1 	bl	7ba8 <rt_put_prio>
    6fc6:	1c6b      	adds	r3, r5, #1
    6fc8:	d021      	beq.n	700e <sysMailAlloc+0x8e>
    6fca:	4b14      	ldr	r3, [pc, #80]	; (701c <sysMailAlloc+0x9c>)
    6fcc:	429d      	cmp	r5, r3
    6fce:	d814      	bhi.n	6ffa <sysMailAlloc+0x7a>
    6fd0:	20fa      	movs	r0, #250	; 0xfa
    6fd2:	4b13      	ldr	r3, [pc, #76]	; (7020 <sysMailAlloc+0xa0>)
    6fd4:	0080      	lsls	r0, r0, #2
    6fd6:	4368      	muls	r0, r5
    6fd8:	681b      	ldr	r3, [r3, #0]
    6fda:	9301      	str	r3, [sp, #4]
    6fdc:	3b01      	subs	r3, #1
    6fde:	18c0      	adds	r0, r0, r3
    6fe0:	9901      	ldr	r1, [sp, #4]
    6fe2:	f7fd fc6b 	bl	48bc <__aeabi_uidiv>
    6fe6:	4b0f      	ldr	r3, [pc, #60]	; (7024 <sysMailAlloc+0xa4>)
    6fe8:	0002      	movs	r2, r0
    6fea:	0018      	movs	r0, r3
    6fec:	429a      	cmp	r2, r3
    6fee:	d910      	bls.n	7012 <sysMailAlloc+0x92>
    6ff0:	2108      	movs	r1, #8
    6ff2:	f001 fa13 	bl	841c <rt_block>
    6ff6:	2000      	movs	r0, #0
    6ff8:	e7d5      	b.n	6fa6 <sysMailAlloc+0x26>
    6ffa:	480a      	ldr	r0, [pc, #40]	; (7024 <sysMailAlloc+0xa4>)
    6ffc:	e7f8      	b.n	6ff0 <sysMailAlloc+0x70>
    6ffe:	4a06      	ldr	r2, [pc, #24]	; (7018 <sysMailAlloc+0x98>)
    7000:	6812      	ldr	r2, [r2, #0]
    7002:	6062      	str	r2, [r4, #4]
    7004:	6053      	str	r3, [r2, #4]
    7006:	2303      	movs	r3, #3
    7008:	6094      	str	r4, [r2, #8]
    700a:	7063      	strb	r3, [r4, #1]
    700c:	e7db      	b.n	6fc6 <sysMailAlloc+0x46>
    700e:	4806      	ldr	r0, [pc, #24]	; (7028 <sysMailAlloc+0xa8>)
    7010:	e7ee      	b.n	6ff0 <sysMailAlloc+0x70>
    7012:	b290      	uxth	r0, r2
    7014:	e7ec      	b.n	6ff0 <sysMailAlloc+0x70>
    7016:	46c0      	nop			; (mov r8, r8)
    7018:	200060c0 	.word	0x200060c0
    701c:	003d0900 	.word	0x003d0900
    7020:	00008b50 	.word	0x00008b50
    7024:	0000fffe 	.word	0x0000fffe
    7028:	0000ffff 	.word	0x0000ffff

0000702c <sysMailFree>:
    702c:	b570      	push	{r4, r5, r6, lr}
    702e:	0016      	movs	r6, r2
    7030:	2800      	cmp	r0, #0
    7032:	d00e      	beq.n	7052 <sysMailFree+0x26>
    7034:	6804      	ldr	r4, [r0, #0]
    7036:	2c00      	cmp	r4, #0
    7038:	d00b      	beq.n	7052 <sysMailFree+0x26>
    703a:	6845      	ldr	r5, [r0, #4]
    703c:	2080      	movs	r0, #128	; 0x80
    703e:	2d00      	cmp	r5, #0
    7040:	d006      	beq.n	7050 <sysMailFree+0x24>
    7042:	0028      	movs	r0, r5
    7044:	f000 fa46 	bl	74d4 <rt_free_box>
    7048:	0003      	movs	r3, r0
    704a:	2086      	movs	r0, #134	; 0x86
    704c:	2b00      	cmp	r3, #0
    704e:	d002      	beq.n	7056 <sysMailFree+0x2a>
    7050:	bd70      	pop	{r4, r5, r6, pc}
    7052:	2080      	movs	r0, #128	; 0x80
    7054:	e7fc      	b.n	7050 <sysMailFree+0x24>
    7056:	6863      	ldr	r3, [r4, #4]
    7058:	2b00      	cmp	r3, #0
    705a:	d002      	beq.n	7062 <sysMailFree+0x36>
    705c:	7863      	ldrb	r3, [r4, #1]
    705e:	2b03      	cmp	r3, #3
    7060:	d001      	beq.n	7066 <sysMailFree+0x3a>
    7062:	2000      	movs	r0, #0
    7064:	e7f4      	b.n	7050 <sysMailFree+0x24>
    7066:	2e00      	cmp	r6, #0
    7068:	d113      	bne.n	7092 <sysMailFree+0x66>
    706a:	0028      	movs	r0, r5
    706c:	f000 fa12 	bl	7494 <rt_alloc_box>
    7070:	1e05      	subs	r5, r0, #0
    7072:	d0f6      	beq.n	7062 <sysMailFree+0x36>
    7074:	0020      	movs	r0, r4
    7076:	f000 fdbd 	bl	7bf4 <rt_get_first>
    707a:	0004      	movs	r4, r0
    707c:	0029      	movs	r1, r5
    707e:	f000 f987 	bl	7390 <rt_ret_val>
    7082:	0020      	movs	r0, r4
    7084:	f000 feee 	bl	7e64 <rt_rmv_dly>
    7088:	0020      	movs	r0, r4
    708a:	f001 f9a1 	bl	83d0 <rt_dispatch>
    708e:	2000      	movs	r0, #0
    7090:	e7de      	b.n	7050 <sysMailFree+0x24>
    7092:	0020      	movs	r0, r4
    7094:	0029      	movs	r1, r5
    7096:	f000 fefb 	bl	7e90 <rt_psq_enq>
    709a:	f001 f8dd 	bl	8258 <rt_psh_req>
    709e:	2000      	movs	r0, #0
    70a0:	e7d6      	b.n	7050 <sysMailFree+0x24>
    70a2:	46c0      	nop			; (mov r8, r8)

000070a4 <osMailCreate>:
    70a4:	b5b0      	push	{r4, r5, r7, lr}
    70a6:	0004      	movs	r4, r0
    70a8:	f3ef 8005 	mrs	r0, IPSR
    70ac:	2800      	cmp	r0, #0
    70ae:	d130      	bne.n	7112 <osMailCreate+0x6e>
    70b0:	f3ef 8014 	mrs	r0, CONTROL
    70b4:	07c0      	lsls	r0, r0, #31
    70b6:	d504      	bpl.n	70c2 <osMailCreate+0x1e>
    70b8:	0020      	movs	r0, r4
    70ba:	4f18      	ldr	r7, [pc, #96]	; (711c <osMailCreate+0x78>)
    70bc:	46bc      	mov	ip, r7
    70be:	df00      	svc	0
    70c0:	bdb0      	pop	{r4, r5, r7, pc}
    70c2:	4815      	ldr	r0, [pc, #84]	; (7118 <osMailCreate+0x74>)
    70c4:	7800      	ldrb	r0, [r0, #0]
    70c6:	2800      	cmp	r0, #0
    70c8:	d1f6      	bne.n	70b8 <osMailCreate+0x14>
    70ca:	2c00      	cmp	r4, #0
    70cc:	d021      	beq.n	7112 <osMailCreate+0x6e>
    70ce:	6821      	ldr	r1, [r4, #0]
    70d0:	2900      	cmp	r1, #0
    70d2:	d01e      	beq.n	7112 <osMailCreate+0x6e>
    70d4:	6862      	ldr	r2, [r4, #4]
    70d6:	2a00      	cmp	r2, #0
    70d8:	d01b      	beq.n	7112 <osMailCreate+0x6e>
    70da:	68a3      	ldr	r3, [r4, #8]
    70dc:	2b00      	cmp	r3, #0
    70de:	d018      	beq.n	7112 <osMailCreate+0x6e>
    70e0:	6858      	ldr	r0, [r3, #4]
    70e2:	681d      	ldr	r5, [r3, #0]
    70e4:	2800      	cmp	r0, #0
    70e6:	d014      	beq.n	7112 <osMailCreate+0x6e>
    70e8:	2d00      	cmp	r5, #0
    70ea:	d012      	beq.n	7112 <osMailCreate+0x6e>
    70ec:	782b      	ldrb	r3, [r5, #0]
    70ee:	2b00      	cmp	r3, #0
    70f0:	d10f      	bne.n	7112 <osMailCreate+0x6e>
    70f2:	3303      	adds	r3, #3
    70f4:	3203      	adds	r2, #3
    70f6:	439a      	bics	r2, r3
    70f8:	4351      	muls	r1, r2
    70fa:	310c      	adds	r1, #12
    70fc:	f000 f99e 	bl	743c <_init_box>
    7100:	6823      	ldr	r3, [r4, #0]
    7102:	0028      	movs	r0, r5
    7104:	1d19      	adds	r1, r3, #4
    7106:	0089      	lsls	r1, r1, #2
    7108:	b289      	uxth	r1, r1
    710a:	f000 fbf3 	bl	78f4 <rt_mbx_init>
    710e:	68a0      	ldr	r0, [r4, #8]
    7110:	e7d6      	b.n	70c0 <osMailCreate+0x1c>
    7112:	2000      	movs	r0, #0
    7114:	e7d4      	b.n	70c0 <osMailCreate+0x1c>
    7116:	46c0      	nop			; (mov r8, r8)
    7118:	20006081 	.word	0x20006081
    711c:	00006f31 	.word	0x00006f31

00007120 <osMailAlloc>:
    7120:	b580      	push	{r7, lr}
    7122:	f3ef 8205 	mrs	r2, IPSR
    7126:	2a00      	cmp	r2, #0
    7128:	d104      	bne.n	7134 <osMailAlloc+0x14>
    712a:	2200      	movs	r2, #0
    712c:	4f09      	ldr	r7, [pc, #36]	; (7154 <osMailAlloc+0x34>)
    712e:	46bc      	mov	ip, r7
    7130:	df00      	svc	0
    7132:	bd80      	pop	{r7, pc}
    7134:	2800      	cmp	r0, #0
    7136:	d00a      	beq.n	714e <osMailAlloc+0x2e>
    7138:	6803      	ldr	r3, [r0, #0]
    713a:	6840      	ldr	r0, [r0, #4]
    713c:	2800      	cmp	r0, #0
    713e:	d006      	beq.n	714e <osMailAlloc+0x2e>
    7140:	2b00      	cmp	r3, #0
    7142:	d004      	beq.n	714e <osMailAlloc+0x2e>
    7144:	2900      	cmp	r1, #0
    7146:	d102      	bne.n	714e <osMailAlloc+0x2e>
    7148:	f000 f9a4 	bl	7494 <rt_alloc_box>
    714c:	e7f1      	b.n	7132 <osMailAlloc+0x12>
    714e:	2000      	movs	r0, #0
    7150:	e7ef      	b.n	7132 <osMailAlloc+0x12>
    7152:	0000      	.short	0x0000
    7154:	00006f81 	.word	0x00006f81

00007158 <osMailCAlloc>:
    7158:	b5b0      	push	{r4, r5, r7, lr}
    715a:	0004      	movs	r4, r0
    715c:	f3ef 8205 	mrs	r2, IPSR
    7160:	2a00      	cmp	r2, #0
    7162:	d112      	bne.n	718a <osMailCAlloc+0x32>
    7164:	2200      	movs	r2, #0
    7166:	4f13      	ldr	r7, [pc, #76]	; (71b4 <osMailCAlloc+0x5c>)
    7168:	46bc      	mov	ip, r7
    716a:	df00      	svc	0
    716c:	6863      	ldr	r3, [r4, #4]
    716e:	2b00      	cmp	r3, #0
    7170:	d00a      	beq.n	7188 <osMailCAlloc+0x30>
    7172:	2800      	cmp	r0, #0
    7174:	d01b      	beq.n	71ae <osMailCAlloc+0x56>
    7176:	689b      	ldr	r3, [r3, #8]
    7178:	2b00      	cmp	r3, #0
    717a:	d005      	beq.n	7188 <osMailCAlloc+0x30>
    717c:	0002      	movs	r2, r0
    717e:	2100      	movs	r1, #0
    7180:	3b04      	subs	r3, #4
    7182:	c202      	stmia	r2!, {r1}
    7184:	2b00      	cmp	r3, #0
    7186:	d1fb      	bne.n	7180 <osMailCAlloc+0x28>
    7188:	bdb0      	pop	{r4, r5, r7, pc}
    718a:	2800      	cmp	r0, #0
    718c:	d00f      	beq.n	71ae <osMailCAlloc+0x56>
    718e:	6803      	ldr	r3, [r0, #0]
    7190:	6840      	ldr	r0, [r0, #4]
    7192:	2800      	cmp	r0, #0
    7194:	d00b      	beq.n	71ae <osMailCAlloc+0x56>
    7196:	2b00      	cmp	r3, #0
    7198:	d009      	beq.n	71ae <osMailCAlloc+0x56>
    719a:	2900      	cmp	r1, #0
    719c:	d107      	bne.n	71ae <osMailCAlloc+0x56>
    719e:	f000 f979 	bl	7494 <rt_alloc_box>
    71a2:	2800      	cmp	r0, #0
    71a4:	d003      	beq.n	71ae <osMailCAlloc+0x56>
    71a6:	6863      	ldr	r3, [r4, #4]
    71a8:	2b00      	cmp	r3, #0
    71aa:	d1e4      	bne.n	7176 <osMailCAlloc+0x1e>
    71ac:	e7ec      	b.n	7188 <osMailCAlloc+0x30>
    71ae:	2000      	movs	r0, #0
    71b0:	e7ea      	b.n	7188 <osMailCAlloc+0x30>
    71b2:	0000      	.short	0x0000
    71b4:	00006f81 	.word	0x00006f81

000071b8 <osMailFree>:
    71b8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    71ba:	f3ef 8205 	mrs	r2, IPSR
    71be:	2a00      	cmp	r2, #0
    71c0:	d106      	bne.n	71d0 <osMailFree+0x18>
    71c2:	2200      	movs	r2, #0
    71c4:	4f13      	ldr	r7, [pc, #76]	; (7214 <osMailFree+0x5c>)
    71c6:	46bc      	mov	ip, r7
    71c8:	df00      	svc	0
    71ca:	0004      	movs	r4, r0
    71cc:	0020      	movs	r0, r4
    71ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    71d0:	2800      	cmp	r0, #0
    71d2:	d01a      	beq.n	720a <osMailFree+0x52>
    71d4:	6805      	ldr	r5, [r0, #0]
    71d6:	2d00      	cmp	r5, #0
    71d8:	d017      	beq.n	720a <osMailFree+0x52>
    71da:	6846      	ldr	r6, [r0, #4]
    71dc:	2480      	movs	r4, #128	; 0x80
    71de:	2e00      	cmp	r6, #0
    71e0:	d0f4      	beq.n	71cc <osMailFree+0x14>
    71e2:	0030      	movs	r0, r6
    71e4:	f000 f976 	bl	74d4 <rt_free_box>
    71e8:	3406      	adds	r4, #6
    71ea:	2800      	cmp	r0, #0
    71ec:	d1ee      	bne.n	71cc <osMailFree+0x14>
    71ee:	686b      	ldr	r3, [r5, #4]
    71f0:	2b00      	cmp	r3, #0
    71f2:	d00c      	beq.n	720e <osMailFree+0x56>
    71f4:	786b      	ldrb	r3, [r5, #1]
    71f6:	2400      	movs	r4, #0
    71f8:	2b03      	cmp	r3, #3
    71fa:	d1e7      	bne.n	71cc <osMailFree+0x14>
    71fc:	0031      	movs	r1, r6
    71fe:	0028      	movs	r0, r5
    7200:	f000 fe46 	bl	7e90 <rt_psq_enq>
    7204:	f001 f828 	bl	8258 <rt_psh_req>
    7208:	e7e0      	b.n	71cc <osMailFree+0x14>
    720a:	2480      	movs	r4, #128	; 0x80
    720c:	e7de      	b.n	71cc <osMailFree+0x14>
    720e:	2400      	movs	r4, #0
    7210:	e7dc      	b.n	71cc <osMailFree+0x14>
    7212:	0000      	.short	0x0000
    7214:	0000702d 	.word	0x0000702d

00007218 <osMailPut>:
    7218:	b5b0      	push	{r4, r5, r7, lr}
    721a:	0002      	movs	r2, r0
    721c:	000c      	movs	r4, r1
    721e:	2800      	cmp	r0, #0
    7220:	d00e      	beq.n	7240 <osMailPut+0x28>
    7222:	2086      	movs	r0, #134	; 0x86
    7224:	2900      	cmp	r1, #0
    7226:	d00a      	beq.n	723e <osMailPut+0x26>
    7228:	6815      	ldr	r5, [r2, #0]
    722a:	f3ef 8205 	mrs	r2, IPSR
    722e:	2a00      	cmp	r2, #0
    7230:	d008      	beq.n	7244 <osMailPut+0x2c>
    7232:	2d00      	cmp	r5, #0
    7234:	d004      	beq.n	7240 <osMailPut+0x28>
    7236:	782b      	ldrb	r3, [r5, #0]
    7238:	3806      	subs	r0, #6
    723a:	2b01      	cmp	r3, #1
    723c:	d008      	beq.n	7250 <osMailPut+0x38>
    723e:	bdb0      	pop	{r4, r5, r7, pc}
    7240:	2080      	movs	r0, #128	; 0x80
    7242:	e7fc      	b.n	723e <osMailPut+0x26>
    7244:	0028      	movs	r0, r5
    7246:	2200      	movs	r2, #0
    7248:	4f08      	ldr	r7, [pc, #32]	; (726c <osMailPut+0x54>)
    724a:	46bc      	mov	ip, r7
    724c:	df00      	svc	0
    724e:	e7f6      	b.n	723e <osMailPut+0x26>
    7250:	0028      	movs	r0, r5
    7252:	f000 fc05 	bl	7a60 <rt_mbx_check>
    7256:	0003      	movs	r3, r0
    7258:	2081      	movs	r0, #129	; 0x81
    725a:	2b00      	cmp	r3, #0
    725c:	d0ef      	beq.n	723e <osMailPut+0x26>
    725e:	0028      	movs	r0, r5
    7260:	0021      	movs	r1, r4
    7262:	f000 fc01 	bl	7a68 <isr_mbx_send>
    7266:	2000      	movs	r0, #0
    7268:	e7e9      	b.n	723e <osMailPut+0x26>
    726a:	0000      	.short	0x0000
    726c:	00006ca9 	.word	0x00006ca9

00007270 <osMailGet>:
    7270:	b5b0      	push	{r4, r5, r7, lr}
    7272:	0004      	movs	r4, r0
    7274:	b084      	sub	sp, #16
    7276:	2900      	cmp	r1, #0
    7278:	d012      	beq.n	72a0 <osMailGet+0x30>
    727a:	6808      	ldr	r0, [r1, #0]
    727c:	f3ef 8105 	mrs	r1, IPSR
    7280:	2900      	cmp	r1, #0
    7282:	d113      	bne.n	72ac <osMailGet+0x3c>
    7284:	0011      	movs	r1, r2
    7286:	4f0d      	ldr	r7, [pc, #52]	; (72bc <osMailGet+0x4c>)
    7288:	46bc      	mov	ip, r7
    728a:	df00      	svc	0
    728c:	2810      	cmp	r0, #16
    728e:	d005      	beq.n	729c <osMailGet+0x2c>
    7290:	6020      	str	r0, [r4, #0]
    7292:	6061      	str	r1, [r4, #4]
    7294:	60a2      	str	r2, [r4, #8]
    7296:	0020      	movs	r0, r4
    7298:	b004      	add	sp, #16
    729a:	bdb0      	pop	{r4, r5, r7, pc}
    729c:	3010      	adds	r0, #16
    729e:	e7f7      	b.n	7290 <osMailGet+0x20>
    72a0:	2380      	movs	r3, #128	; 0x80
    72a2:	6003      	str	r3, [r0, #0]
    72a4:	2300      	movs	r3, #0
    72a6:	6043      	str	r3, [r0, #4]
    72a8:	6083      	str	r3, [r0, #8]
    72aa:	e7f4      	b.n	7296 <osMailGet+0x26>
    72ac:	0001      	movs	r1, r0
    72ae:	a801      	add	r0, sp, #4
    72b0:	f7ff fd9c 	bl	6dec <isrMessageGet>
    72b4:	9801      	ldr	r0, [sp, #4]
    72b6:	9902      	ldr	r1, [sp, #8]
    72b8:	9a03      	ldr	r2, [sp, #12]
    72ba:	e7e7      	b.n	728c <osMailGet+0x1c>
    72bc:	00006d29 	.word	0x00006d29

000072c0 <os_suspend>:
    72c0:	b580      	push	{r7, lr}
    72c2:	4f02      	ldr	r7, [pc, #8]	; (72cc <os_suspend+0xc>)
    72c4:	46bc      	mov	ip, r7
    72c6:	df00      	svc	0
    72c8:	bd80      	pop	{r7, pc}
    72ca:	0000      	.short	0x0000
    72cc:	00008009 	.word	0x00008009

000072d0 <os_resume>:
    72d0:	b580      	push	{r7, lr}
    72d2:	4f02      	ldr	r7, [pc, #8]	; (72dc <os_resume+0xc>)
    72d4:	46bc      	mov	ip, r7
    72d6:	df00      	svc	0
    72d8:	bd80      	pop	{r7, pc}
    72da:	0000      	.short	0x0000
    72dc:	00008099 	.word	0x00008099

000072e0 <rt_init_stack>:
    72e0:	b5f0      	push	{r4, r5, r6, r7, lr}
    72e2:	464e      	mov	r6, r9
    72e4:	4645      	mov	r5, r8
    72e6:	4657      	mov	r7, sl
    72e8:	b4e0      	push	{r5, r6, r7}
    72ea:	4b26      	ldr	r3, [pc, #152]	; (7384 <rt_init_stack+0xa4>)
    72ec:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    72ee:	b082      	sub	sp, #8
    72f0:	4680      	mov	r8, r0
    72f2:	4689      	mov	r9, r1
    72f4:	08a4      	lsrs	r4, r4, #2
    72f6:	681b      	ldr	r3, [r3, #0]
    72f8:	d104      	bne.n	7304 <rt_init_stack+0x24>
    72fa:	9301      	str	r3, [sp, #4]
    72fc:	466b      	mov	r3, sp
    72fe:	889c      	ldrh	r4, [r3, #4]
    7300:	9b01      	ldr	r3, [sp, #4]
    7302:	08a4      	lsrs	r4, r4, #2
    7304:	469a      	mov	sl, r3
    7306:	4643      	mov	r3, r8
    7308:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    730a:	00a5      	lsls	r5, r4, #2
    730c:	197d      	adds	r5, r7, r5
    730e:	076b      	lsls	r3, r5, #29
    7310:	d500      	bpl.n	7314 <rt_init_stack+0x34>
    7312:	3d04      	subs	r5, #4
    7314:	2280      	movs	r2, #128	; 0x80
    7316:	1f2b      	subs	r3, r5, #4
    7318:	002e      	movs	r6, r5
    731a:	0452      	lsls	r2, r2, #17
    731c:	601a      	str	r2, [r3, #0]
    731e:	464a      	mov	r2, r9
    7320:	3b04      	subs	r3, #4
    7322:	3e40      	subs	r6, #64	; 0x40
    7324:	601a      	str	r2, [r3, #0]
    7326:	2100      	movs	r1, #0
    7328:	2238      	movs	r2, #56	; 0x38
    732a:	0030      	movs	r0, r6
    732c:	f001 fb30 	bl	8990 <memset>
    7330:	4643      	mov	r3, r8
    7332:	69db      	ldr	r3, [r3, #28]
    7334:	3d20      	subs	r5, #32
    7336:	602b      	str	r3, [r5, #0]
    7338:	464a      	mov	r2, r9
    733a:	4643      	mov	r3, r8
    733c:	629e      	str	r6, [r3, #40]	; 0x28
    733e:	631a      	str	r2, [r3, #48]	; 0x30
    7340:	4653      	mov	r3, sl
    7342:	00db      	lsls	r3, r3, #3
    7344:	d516      	bpl.n	7374 <rt_init_stack+0x94>
    7346:	2c11      	cmp	r4, #17
    7348:	d914      	bls.n	7374 <rt_init_stack+0x94>
    734a:	3c10      	subs	r4, #16
    734c:	0864      	lsrs	r4, r4, #1
    734e:	1e62      	subs	r2, r4, #1
    7350:	2a00      	cmp	r2, #0
    7352:	d00a      	beq.n	736a <rt_init_stack+0x8a>
    7354:	0033      	movs	r3, r6
    7356:	490c      	ldr	r1, [pc, #48]	; (7388 <rt_init_stack+0xa8>)
    7358:	3b08      	subs	r3, #8
    735a:	3a01      	subs	r2, #1
    735c:	6059      	str	r1, [r3, #4]
    735e:	6019      	str	r1, [r3, #0]
    7360:	2a00      	cmp	r2, #0
    7362:	d1f9      	bne.n	7358 <rt_init_stack+0x78>
    7364:	00e4      	lsls	r4, r4, #3
    7366:	1b36      	subs	r6, r6, r4
    7368:	3608      	adds	r6, #8
    736a:	3e04      	subs	r6, #4
    736c:	42b7      	cmp	r7, r6
    736e:	d201      	bcs.n	7374 <rt_init_stack+0x94>
    7370:	4b05      	ldr	r3, [pc, #20]	; (7388 <rt_init_stack+0xa8>)
    7372:	6033      	str	r3, [r6, #0]
    7374:	4b05      	ldr	r3, [pc, #20]	; (738c <rt_init_stack+0xac>)
    7376:	603b      	str	r3, [r7, #0]
    7378:	b002      	add	sp, #8
    737a:	bc1c      	pop	{r2, r3, r4}
    737c:	4690      	mov	r8, r2
    737e:	4699      	mov	r9, r3
    7380:	46a2      	mov	sl, r4
    7382:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7384:	00008b30 	.word	0x00008b30
    7388:	cccccccc 	.word	0xcccccccc
    738c:	e25a2ea5 	.word	0xe25a2ea5

00007390 <rt_ret_val>:
    7390:	6a83      	ldr	r3, [r0, #40]	; 0x28
    7392:	6219      	str	r1, [r3, #32]
    7394:	4770      	bx	lr
    7396:	46c0      	nop			; (mov r8, r8)

00007398 <rt_ret_val2>:
    7398:	6a83      	ldr	r3, [r0, #40]	; 0x28
    739a:	6219      	str	r1, [r3, #32]
    739c:	625a      	str	r2, [r3, #36]	; 0x24
    739e:	4770      	bx	lr

000073a0 <rt_init_mem>:
    73a0:	0003      	movs	r3, r0
    73a2:	2001      	movs	r0, #1
    73a4:	2b00      	cmp	r3, #0
    73a6:	d008      	beq.n	73ba <rt_init_mem+0x1a>
    73a8:	2907      	cmp	r1, #7
    73aa:	d906      	bls.n	73ba <rt_init_mem+0x1a>
    73ac:	2200      	movs	r2, #0
    73ae:	2000      	movs	r0, #0
    73b0:	3904      	subs	r1, #4
    73b2:	1859      	adds	r1, r3, r1
    73b4:	6019      	str	r1, [r3, #0]
    73b6:	600a      	str	r2, [r1, #0]
    73b8:	605a      	str	r2, [r3, #4]
    73ba:	4770      	bx	lr

000073bc <rt_alloc_mem>:
    73bc:	b510      	push	{r4, lr}
    73be:	2800      	cmp	r0, #0
    73c0:	d018      	beq.n	73f4 <rt_alloc_mem+0x38>
    73c2:	2900      	cmp	r1, #0
    73c4:	d016      	beq.n	73f4 <rt_alloc_mem+0x38>
    73c6:	2303      	movs	r3, #3
    73c8:	310b      	adds	r1, #11
    73ca:	4399      	bics	r1, r3
    73cc:	6802      	ldr	r2, [r0, #0]
    73ce:	e003      	b.n	73d8 <rt_alloc_mem+0x1c>
    73d0:	0010      	movs	r0, r2
    73d2:	6812      	ldr	r2, [r2, #0]
    73d4:	2a00      	cmp	r2, #0
    73d6:	d00d      	beq.n	73f4 <rt_alloc_mem+0x38>
    73d8:	6844      	ldr	r4, [r0, #4]
    73da:	1a13      	subs	r3, r2, r0
    73dc:	1b1b      	subs	r3, r3, r4
    73de:	4299      	cmp	r1, r3
    73e0:	d8f6      	bhi.n	73d0 <rt_alloc_mem+0x14>
    73e2:	2c00      	cmp	r4, #0
    73e4:	d008      	beq.n	73f8 <rt_alloc_mem+0x3c>
    73e6:	1904      	adds	r4, r0, r4
    73e8:	6022      	str	r2, [r4, #0]
    73ea:	6061      	str	r1, [r4, #4]
    73ec:	6004      	str	r4, [r0, #0]
    73ee:	0020      	movs	r0, r4
    73f0:	3008      	adds	r0, #8
    73f2:	e000      	b.n	73f6 <rt_alloc_mem+0x3a>
    73f4:	2000      	movs	r0, #0
    73f6:	bd10      	pop	{r4, pc}
    73f8:	6041      	str	r1, [r0, #4]
    73fa:	3008      	adds	r0, #8
    73fc:	e7fb      	b.n	73f6 <rt_alloc_mem+0x3a>
    73fe:	46c0      	nop			; (mov r8, r8)

00007400 <rt_free_mem>:
    7400:	2800      	cmp	r0, #0
    7402:	d015      	beq.n	7430 <rt_free_mem+0x30>
    7404:	2900      	cmp	r1, #0
    7406:	d013      	beq.n	7430 <rt_free_mem+0x30>
    7408:	3908      	subs	r1, #8
    740a:	4288      	cmp	r0, r1
    740c:	d012      	beq.n	7434 <rt_free_mem+0x34>
    740e:	6803      	ldr	r3, [r0, #0]
    7410:	2b00      	cmp	r3, #0
    7412:	d105      	bne.n	7420 <rt_free_mem+0x20>
    7414:	e00c      	b.n	7430 <rt_free_mem+0x30>
    7416:	681a      	ldr	r2, [r3, #0]
    7418:	0018      	movs	r0, r3
    741a:	2a00      	cmp	r2, #0
    741c:	d008      	beq.n	7430 <rt_free_mem+0x30>
    741e:	0013      	movs	r3, r2
    7420:	4299      	cmp	r1, r3
    7422:	d1f8      	bne.n	7416 <rt_free_mem+0x16>
    7424:	2800      	cmp	r0, #0
    7426:	d005      	beq.n	7434 <rt_free_mem+0x34>
    7428:	680b      	ldr	r3, [r1, #0]
    742a:	6003      	str	r3, [r0, #0]
    742c:	2000      	movs	r0, #0
    742e:	e000      	b.n	7432 <rt_free_mem+0x32>
    7430:	2001      	movs	r0, #1
    7432:	4770      	bx	lr
    7434:	2300      	movs	r3, #0
    7436:	2000      	movs	r0, #0
    7438:	604b      	str	r3, [r1, #4]
    743a:	e7fa      	b.n	7432 <rt_free_mem+0x32>

0000743c <_init_box>:
    743c:	b530      	push	{r4, r5, lr}
    743e:	2a00      	cmp	r2, #0
    7440:	db1e      	blt.n	7480 <_init_box+0x44>
    7442:	2303      	movs	r3, #3
    7444:	3203      	adds	r2, #3
    7446:	439a      	bics	r2, r3
    7448:	3309      	adds	r3, #9
    744a:	2401      	movs	r4, #1
    744c:	2a00      	cmp	r2, #0
    744e:	d015      	beq.n	747c <_init_box+0x40>
    7450:	18d5      	adds	r5, r2, r3
    7452:	428d      	cmp	r5, r1
    7454:	d812      	bhi.n	747c <_init_box+0x40>
    7456:	1841      	adds	r1, r0, r1
    7458:	18c3      	adds	r3, r0, r3
    745a:	6041      	str	r1, [r0, #4]
    745c:	6003      	str	r3, [r0, #0]
    745e:	6082      	str	r2, [r0, #8]
    7460:	1898      	adds	r0, r3, r2
    7462:	1a89      	subs	r1, r1, r2
    7464:	4281      	cmp	r1, r0
    7466:	d201      	bcs.n	746c <_init_box+0x30>
    7468:	e011      	b.n	748e <_init_box+0x52>
    746a:	0020      	movs	r0, r4
    746c:	1884      	adds	r4, r0, r2
    746e:	6018      	str	r0, [r3, #0]
    7470:	189b      	adds	r3, r3, r2
    7472:	42a1      	cmp	r1, r4
    7474:	d2f9      	bcs.n	746a <_init_box+0x2e>
    7476:	2300      	movs	r3, #0
    7478:	2400      	movs	r4, #0
    747a:	6003      	str	r3, [r0, #0]
    747c:	0020      	movs	r0, r4
    747e:	bd30      	pop	{r4, r5, pc}
    7480:	2307      	movs	r3, #7
    7482:	0052      	lsls	r2, r2, #1
    7484:	0852      	lsrs	r2, r2, #1
    7486:	3207      	adds	r2, #7
    7488:	439a      	bics	r2, r3
    748a:	3309      	adds	r3, #9
    748c:	e7dd      	b.n	744a <_init_box+0xe>
    748e:	0018      	movs	r0, r3
    7490:	e7f1      	b.n	7476 <_init_box+0x3a>
    7492:	46c0      	nop			; (mov r8, r8)

00007494 <rt_alloc_box>:
    7494:	f3ef 8310 	mrs	r3, PRIMASK
    7498:	b672      	cpsid	i
    749a:	2201      	movs	r2, #1
    749c:	4013      	ands	r3, r2
    749e:	6802      	ldr	r2, [r0, #0]
    74a0:	2a00      	cmp	r2, #0
    74a2:	d001      	beq.n	74a8 <rt_alloc_box+0x14>
    74a4:	6811      	ldr	r1, [r2, #0]
    74a6:	6001      	str	r1, [r0, #0]
    74a8:	2b00      	cmp	r3, #0
    74aa:	d100      	bne.n	74ae <rt_alloc_box+0x1a>
    74ac:	b662      	cpsie	i
    74ae:	0010      	movs	r0, r2
    74b0:	4770      	bx	lr
    74b2:	46c0      	nop			; (mov r8, r8)

000074b4 <_calloc_box>:
    74b4:	b510      	push	{r4, lr}
    74b6:	0004      	movs	r4, r0
    74b8:	f7fd fb8b 	bl	4bd2 <_alloc_box>
    74bc:	2800      	cmp	r0, #0
    74be:	d008      	beq.n	74d2 <_calloc_box+0x1e>
    74c0:	68a3      	ldr	r3, [r4, #8]
    74c2:	2b00      	cmp	r3, #0
    74c4:	d005      	beq.n	74d2 <_calloc_box+0x1e>
    74c6:	0002      	movs	r2, r0
    74c8:	2100      	movs	r1, #0
    74ca:	3b04      	subs	r3, #4
    74cc:	c202      	stmia	r2!, {r1}
    74ce:	2b00      	cmp	r3, #0
    74d0:	d1fb      	bne.n	74ca <_calloc_box+0x16>
    74d2:	bd10      	pop	{r4, pc}

000074d4 <rt_free_box>:
    74d4:	0003      	movs	r3, r0
    74d6:	2001      	movs	r0, #1
    74d8:	4299      	cmp	r1, r3
    74da:	d30b      	bcc.n	74f4 <rt_free_box+0x20>
    74dc:	685a      	ldr	r2, [r3, #4]
    74de:	4291      	cmp	r1, r2
    74e0:	d208      	bcs.n	74f4 <rt_free_box+0x20>
    74e2:	f3ef 8210 	mrs	r2, PRIMASK
    74e6:	b672      	cpsid	i
    74e8:	4010      	ands	r0, r2
    74ea:	681a      	ldr	r2, [r3, #0]
    74ec:	600a      	str	r2, [r1, #0]
    74ee:	6019      	str	r1, [r3, #0]
    74f0:	d101      	bne.n	74f6 <rt_free_box+0x22>
    74f2:	b662      	cpsie	i
    74f4:	4770      	bx	lr
    74f6:	2000      	movs	r0, #0
    74f8:	e7fc      	b.n	74f4 <rt_free_box+0x20>
    74fa:	46c0      	nop			; (mov r8, r8)

000074fc <rt_mut_init>:
    74fc:	2303      	movs	r3, #3
    74fe:	7003      	strb	r3, [r0, #0]
    7500:	2300      	movs	r3, #0
    7502:	8043      	strh	r3, [r0, #2]
    7504:	6043      	str	r3, [r0, #4]
    7506:	6083      	str	r3, [r0, #8]
    7508:	60c3      	str	r3, [r0, #12]
    750a:	4770      	bx	lr

0000750c <rt_mut_delete>:
    750c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    750e:	8843      	ldrh	r3, [r0, #2]
    7510:	0005      	movs	r5, r0
    7512:	2b00      	cmp	r3, #0
    7514:	d02c      	beq.n	7570 <rt_mut_delete+0x64>
    7516:	6880      	ldr	r0, [r0, #8]
    7518:	6a04      	ldr	r4, [r0, #32]
    751a:	42a5      	cmp	r5, r4
    751c:	d05a      	beq.n	75d4 <rt_mut_delete+0xc8>
    751e:	2c00      	cmp	r4, #0
    7520:	d01a      	beq.n	7558 <rt_mut_delete+0x4c>
    7522:	68e3      	ldr	r3, [r4, #12]
    7524:	429d      	cmp	r5, r3
    7526:	d050      	beq.n	75ca <rt_mut_delete+0xbe>
    7528:	001a      	movs	r2, r3
    752a:	e003      	b.n	7534 <rt_mut_delete+0x28>
    752c:	68d1      	ldr	r1, [r2, #12]
    752e:	428d      	cmp	r5, r1
    7530:	d04c      	beq.n	75cc <rt_mut_delete+0xc0>
    7532:	000a      	movs	r2, r1
    7534:	2a00      	cmp	r2, #0
    7536:	d1f9      	bne.n	752c <rt_mut_delete+0x20>
    7538:	2224      	movs	r2, #36	; 0x24
    753a:	5c81      	ldrb	r1, [r0, r2]
    753c:	6862      	ldr	r2, [r4, #4]
    753e:	2a00      	cmp	r2, #0
    7540:	d005      	beq.n	754e <rt_mut_delete+0x42>
    7542:	7892      	ldrb	r2, [r2, #2]
    7544:	1c14      	adds	r4, r2, #0
    7546:	428a      	cmp	r2, r1
    7548:	d200      	bcs.n	754c <rt_mut_delete+0x40>
    754a:	1c0c      	adds	r4, r1, #0
    754c:	b2e1      	uxtb	r1, r4
    754e:	2b00      	cmp	r3, #0
    7550:	d004      	beq.n	755c <rt_mut_delete+0x50>
    7552:	001c      	movs	r4, r3
    7554:	68db      	ldr	r3, [r3, #12]
    7556:	e7f1      	b.n	753c <rt_mut_delete+0x30>
    7558:	2324      	movs	r3, #36	; 0x24
    755a:	5cc1      	ldrb	r1, [r0, r3]
    755c:	7883      	ldrb	r3, [r0, #2]
    755e:	428b      	cmp	r3, r1
    7560:	d006      	beq.n	7570 <rt_mut_delete+0x64>
    7562:	4b20      	ldr	r3, [pc, #128]	; (75e4 <rt_mut_delete+0xd8>)
    7564:	7081      	strb	r1, [r0, #2]
    7566:	681b      	ldr	r3, [r3, #0]
    7568:	4298      	cmp	r0, r3
    756a:	d001      	beq.n	7570 <rt_mut_delete+0x64>
    756c:	f000 fb72 	bl	7c54 <rt_resort_prio>
    7570:	686b      	ldr	r3, [r5, #4]
    7572:	4e1d      	ldr	r6, [pc, #116]	; (75e8 <rt_mut_delete+0xdc>)
    7574:	2b00      	cmp	r3, #0
    7576:	d012      	beq.n	759e <rt_mut_delete+0x92>
    7578:	2701      	movs	r7, #1
    757a:	0028      	movs	r0, r5
    757c:	f000 fb3a 	bl	7bf4 <rt_get_first>
    7580:	0004      	movs	r4, r0
    7582:	2100      	movs	r1, #0
    7584:	f7ff ff04 	bl	7390 <rt_ret_val>
    7588:	0020      	movs	r0, r4
    758a:	f000 fc6b 	bl	7e64 <rt_rmv_dly>
    758e:	7067      	strb	r7, [r4, #1]
    7590:	0021      	movs	r1, r4
    7592:	0030      	movs	r0, r6
    7594:	f000 fb08 	bl	7ba8 <rt_put_prio>
    7598:	686b      	ldr	r3, [r5, #4]
    759a:	2b00      	cmp	r3, #0
    759c:	d1ed      	bne.n	757a <rt_mut_delete+0x6e>
    759e:	6873      	ldr	r3, [r6, #4]
    75a0:	2b00      	cmp	r3, #0
    75a2:	d00e      	beq.n	75c2 <rt_mut_delete+0xb6>
    75a4:	4c0f      	ldr	r4, [pc, #60]	; (75e4 <rt_mut_delete+0xd8>)
    75a6:	789a      	ldrb	r2, [r3, #2]
    75a8:	6821      	ldr	r1, [r4, #0]
    75aa:	788b      	ldrb	r3, [r1, #2]
    75ac:	429a      	cmp	r2, r3
    75ae:	d908      	bls.n	75c2 <rt_mut_delete+0xb6>
    75b0:	0030      	movs	r0, r6
    75b2:	f000 faf9 	bl	7ba8 <rt_put_prio>
    75b6:	2201      	movs	r2, #1
    75b8:	6823      	ldr	r3, [r4, #0]
    75ba:	2000      	movs	r0, #0
    75bc:	705a      	strb	r2, [r3, #1]
    75be:	f000 ff07 	bl	83d0 <rt_dispatch>
    75c2:	2300      	movs	r3, #0
    75c4:	2000      	movs	r0, #0
    75c6:	702b      	strb	r3, [r5, #0]
    75c8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    75ca:	0022      	movs	r2, r4
    75cc:	68eb      	ldr	r3, [r5, #12]
    75ce:	60d3      	str	r3, [r2, #12]
    75d0:	68e3      	ldr	r3, [r4, #12]
    75d2:	e7b1      	b.n	7538 <rt_mut_delete+0x2c>
    75d4:	2324      	movs	r3, #36	; 0x24
    75d6:	68ec      	ldr	r4, [r5, #12]
    75d8:	6204      	str	r4, [r0, #32]
    75da:	5cc1      	ldrb	r1, [r0, r3]
    75dc:	2c00      	cmp	r4, #0
    75de:	d0bd      	beq.n	755c <rt_mut_delete+0x50>
    75e0:	68e3      	ldr	r3, [r4, #12]
    75e2:	e7ab      	b.n	753c <rt_mut_delete+0x30>
    75e4:	200060c0 	.word	0x200060c0
    75e8:	2000608c 	.word	0x2000608c

000075ec <rt_mut_release>:
    75ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    75ee:	8843      	ldrh	r3, [r0, #2]
    75f0:	0004      	movs	r4, r0
    75f2:	20ff      	movs	r0, #255	; 0xff
    75f4:	2b00      	cmp	r3, #0
    75f6:	d100      	bne.n	75fa <rt_mut_release+0xe>
    75f8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    75fa:	4d3c      	ldr	r5, [pc, #240]	; (76ec <rt_mut_release+0x100>)
    75fc:	68a1      	ldr	r1, [r4, #8]
    75fe:	682a      	ldr	r2, [r5, #0]
    7600:	4291      	cmp	r1, r2
    7602:	d1f9      	bne.n	75f8 <rt_mut_release+0xc>
    7604:	3b01      	subs	r3, #1
    7606:	b29b      	uxth	r3, r3
    7608:	8063      	strh	r3, [r4, #2]
    760a:	2b00      	cmp	r3, #0
    760c:	d140      	bne.n	7690 <rt_mut_release+0xa4>
    760e:	6a0e      	ldr	r6, [r1, #32]
    7610:	42b4      	cmp	r4, r6
    7612:	d062      	beq.n	76da <rt_mut_release+0xee>
    7614:	2e00      	cmp	r6, #0
    7616:	d01a      	beq.n	764e <rt_mut_release+0x62>
    7618:	68f3      	ldr	r3, [r6, #12]
    761a:	429c      	cmp	r4, r3
    761c:	d03a      	beq.n	7694 <rt_mut_release+0xa8>
    761e:	001a      	movs	r2, r3
    7620:	e003      	b.n	762a <rt_mut_release+0x3e>
    7622:	68d0      	ldr	r0, [r2, #12]
    7624:	4284      	cmp	r4, r0
    7626:	d036      	beq.n	7696 <rt_mut_release+0xaa>
    7628:	0002      	movs	r2, r0
    762a:	2a00      	cmp	r2, #0
    762c:	d1f9      	bne.n	7622 <rt_mut_release+0x36>
    762e:	2224      	movs	r2, #36	; 0x24
    7630:	5c8f      	ldrb	r7, [r1, r2]
    7632:	6872      	ldr	r2, [r6, #4]
    7634:	2a00      	cmp	r2, #0
    7636:	d005      	beq.n	7644 <rt_mut_release+0x58>
    7638:	7892      	ldrb	r2, [r2, #2]
    763a:	1c10      	adds	r0, r2, #0
    763c:	42ba      	cmp	r2, r7
    763e:	d200      	bcs.n	7642 <rt_mut_release+0x56>
    7640:	1c38      	adds	r0, r7, #0
    7642:	b2c7      	uxtb	r7, r0
    7644:	2b00      	cmp	r3, #0
    7646:	d004      	beq.n	7652 <rt_mut_release+0x66>
    7648:	001e      	movs	r6, r3
    764a:	68db      	ldr	r3, [r3, #12]
    764c:	e7f1      	b.n	7632 <rt_mut_release+0x46>
    764e:	2324      	movs	r3, #36	; 0x24
    7650:	5ccf      	ldrb	r7, [r1, r3]
    7652:	708f      	strb	r7, [r1, #2]
    7654:	6863      	ldr	r3, [r4, #4]
    7656:	2b00      	cmp	r3, #0
    7658:	d030      	beq.n	76bc <rt_mut_release+0xd0>
    765a:	0020      	movs	r0, r4
    765c:	f000 faca 	bl	7bf4 <rt_get_first>
    7660:	0006      	movs	r6, r0
    7662:	2100      	movs	r1, #0
    7664:	f7ff fe94 	bl	7390 <rt_ret_val>
    7668:	0030      	movs	r0, r6
    766a:	f000 fbfb 	bl	7e64 <rt_rmv_dly>
    766e:	2301      	movs	r3, #1
    7670:	8063      	strh	r3, [r4, #2]
    7672:	6a33      	ldr	r3, [r6, #32]
    7674:	60a6      	str	r6, [r4, #8]
    7676:	60e3      	str	r3, [r4, #12]
    7678:	6234      	str	r4, [r6, #32]
    767a:	4c1d      	ldr	r4, [pc, #116]	; (76f0 <rt_mut_release+0x104>)
    767c:	6829      	ldr	r1, [r5, #0]
    767e:	6863      	ldr	r3, [r4, #4]
    7680:	788a      	ldrb	r2, [r1, #2]
    7682:	789b      	ldrb	r3, [r3, #2]
    7684:	2701      	movs	r7, #1
    7686:	429a      	cmp	r2, r3
    7688:	d309      	bcc.n	769e <rt_mut_release+0xb2>
    768a:	0030      	movs	r0, r6
    768c:	f000 fea0 	bl	83d0 <rt_dispatch>
    7690:	2000      	movs	r0, #0
    7692:	e7b1      	b.n	75f8 <rt_mut_release+0xc>
    7694:	0032      	movs	r2, r6
    7696:	68e3      	ldr	r3, [r4, #12]
    7698:	60d3      	str	r3, [r2, #12]
    769a:	68f3      	ldr	r3, [r6, #12]
    769c:	e7c7      	b.n	762e <rt_mut_release+0x42>
    769e:	0020      	movs	r0, r4
    76a0:	f000 fa82 	bl	7ba8 <rt_put_prio>
    76a4:	0031      	movs	r1, r6
    76a6:	0020      	movs	r0, r4
    76a8:	f000 fa7e 	bl	7ba8 <rt_put_prio>
    76ac:	682b      	ldr	r3, [r5, #0]
    76ae:	2000      	movs	r0, #0
    76b0:	705f      	strb	r7, [r3, #1]
    76b2:	7077      	strb	r7, [r6, #1]
    76b4:	f000 fe8c 	bl	83d0 <rt_dispatch>
    76b8:	2000      	movs	r0, #0
    76ba:	e79d      	b.n	75f8 <rt_mut_release+0xc>
    76bc:	480c      	ldr	r0, [pc, #48]	; (76f0 <rt_mut_release+0x104>)
    76be:	6843      	ldr	r3, [r0, #4]
    76c0:	789b      	ldrb	r3, [r3, #2]
    76c2:	42bb      	cmp	r3, r7
    76c4:	d9e4      	bls.n	7690 <rt_mut_release+0xa4>
    76c6:	f000 fa6f 	bl	7ba8 <rt_put_prio>
    76ca:	2201      	movs	r2, #1
    76cc:	682b      	ldr	r3, [r5, #0]
    76ce:	2000      	movs	r0, #0
    76d0:	705a      	strb	r2, [r3, #1]
    76d2:	f000 fe7d 	bl	83d0 <rt_dispatch>
    76d6:	2000      	movs	r0, #0
    76d8:	e78e      	b.n	75f8 <rt_mut_release+0xc>
    76da:	2324      	movs	r3, #36	; 0x24
    76dc:	68e6      	ldr	r6, [r4, #12]
    76de:	620e      	str	r6, [r1, #32]
    76e0:	5ccf      	ldrb	r7, [r1, r3]
    76e2:	2e00      	cmp	r6, #0
    76e4:	d0b5      	beq.n	7652 <rt_mut_release+0x66>
    76e6:	68f3      	ldr	r3, [r6, #12]
    76e8:	e7a3      	b.n	7632 <rt_mut_release+0x46>
    76ea:	46c0      	nop			; (mov r8, r8)
    76ec:	200060c0 	.word	0x200060c0
    76f0:	2000608c 	.word	0x2000608c

000076f4 <rt_mut_wait>:
    76f4:	b570      	push	{r4, r5, r6, lr}
    76f6:	8843      	ldrh	r3, [r0, #2]
    76f8:	0004      	movs	r4, r0
    76fa:	000d      	movs	r5, r1
    76fc:	2b00      	cmp	r3, #0
    76fe:	d017      	beq.n	7730 <rt_mut_wait+0x3c>
    7700:	4e19      	ldr	r6, [pc, #100]	; (7768 <rt_mut_wait+0x74>)
    7702:	6882      	ldr	r2, [r0, #8]
    7704:	6831      	ldr	r1, [r6, #0]
    7706:	428a      	cmp	r2, r1
    7708:	d026      	beq.n	7758 <rt_mut_wait+0x64>
    770a:	2001      	movs	r0, #1
    770c:	2d00      	cmp	r5, #0
    770e:	d00e      	beq.n	772e <rt_mut_wait+0x3a>
    7710:	788b      	ldrb	r3, [r1, #2]
    7712:	7890      	ldrb	r0, [r2, #2]
    7714:	4298      	cmp	r0, r3
    7716:	d319      	bcc.n	774c <rt_mut_wait+0x58>
    7718:	6863      	ldr	r3, [r4, #4]
    771a:	2b00      	cmp	r3, #0
    771c:	d012      	beq.n	7744 <rt_mut_wait+0x50>
    771e:	0020      	movs	r0, r4
    7720:	f000 fa42 	bl	7ba8 <rt_put_prio>
    7724:	0028      	movs	r0, r5
    7726:	2109      	movs	r1, #9
    7728:	f000 fe78 	bl	841c <rt_block>
    772c:	2001      	movs	r0, #1
    772e:	bd70      	pop	{r4, r5, r6, pc}
    7730:	4b0d      	ldr	r3, [pc, #52]	; (7768 <rt_mut_wait+0x74>)
    7732:	681b      	ldr	r3, [r3, #0]
    7734:	6a1a      	ldr	r2, [r3, #32]
    7736:	6083      	str	r3, [r0, #8]
    7738:	60c2      	str	r2, [r0, #12]
    773a:	6218      	str	r0, [r3, #32]
    773c:	2301      	movs	r3, #1
    773e:	8043      	strh	r3, [r0, #2]
    7740:	2000      	movs	r0, #0
    7742:	e7f4      	b.n	772e <rt_mut_wait+0x3a>
    7744:	6061      	str	r1, [r4, #4]
    7746:	604b      	str	r3, [r1, #4]
    7748:	608c      	str	r4, [r1, #8]
    774a:	e7eb      	b.n	7724 <rt_mut_wait+0x30>
    774c:	7093      	strb	r3, [r2, #2]
    774e:	68a0      	ldr	r0, [r4, #8]
    7750:	f000 fa80 	bl	7c54 <rt_resort_prio>
    7754:	6831      	ldr	r1, [r6, #0]
    7756:	e7df      	b.n	7718 <rt_mut_wait+0x24>
    7758:	4a04      	ldr	r2, [pc, #16]	; (776c <rt_mut_wait+0x78>)
    775a:	20ff      	movs	r0, #255	; 0xff
    775c:	4293      	cmp	r3, r2
    775e:	d0e6      	beq.n	772e <rt_mut_wait+0x3a>
    7760:	3301      	adds	r3, #1
    7762:	8063      	strh	r3, [r4, #2]
    7764:	2000      	movs	r0, #0
    7766:	e7e2      	b.n	772e <rt_mut_wait+0x3a>
    7768:	200060c0 	.word	0x200060c0
    776c:	0000ffff 	.word	0x0000ffff

00007770 <rt_time_get>:
    7770:	4b01      	ldr	r3, [pc, #4]	; (7778 <rt_time_get+0x8>)
    7772:	6818      	ldr	r0, [r3, #0]
    7774:	4770      	bx	lr
    7776:	46c0      	nop			; (mov r8, r8)
    7778:	20006088 	.word	0x20006088

0000777c <rt_dly_wait>:
    777c:	b510      	push	{r4, lr}
    777e:	2103      	movs	r1, #3
    7780:	f000 fe4c 	bl	841c <rt_block>
    7784:	bd10      	pop	{r4, pc}
    7786:	46c0      	nop			; (mov r8, r8)

00007788 <rt_itv_set>:
    7788:	4b03      	ldr	r3, [pc, #12]	; (7798 <rt_itv_set+0x10>)
    778a:	681a      	ldr	r2, [r3, #0]
    778c:	4b03      	ldr	r3, [pc, #12]	; (779c <rt_itv_set+0x14>)
    778e:	82d0      	strh	r0, [r2, #22]
    7790:	681b      	ldr	r3, [r3, #0]
    7792:	18c0      	adds	r0, r0, r3
    7794:	8290      	strh	r0, [r2, #20]
    7796:	4770      	bx	lr
    7798:	200060c0 	.word	0x200060c0
    779c:	20006088 	.word	0x20006088

000077a0 <rt_itv_wait>:
    77a0:	b510      	push	{r4, lr}
    77a2:	4b08      	ldr	r3, [pc, #32]	; (77c4 <rt_itv_wait+0x24>)
    77a4:	681a      	ldr	r2, [r3, #0]
    77a6:	4b08      	ldr	r3, [pc, #32]	; (77c8 <rt_itv_wait+0x28>)
    77a8:	8a90      	ldrh	r0, [r2, #20]
    77aa:	681b      	ldr	r3, [r3, #0]
    77ac:	8ad1      	ldrh	r1, [r2, #22]
    77ae:	1ac3      	subs	r3, r0, r3
    77b0:	1841      	adds	r1, r0, r1
    77b2:	8291      	strh	r1, [r2, #20]
    77b4:	b298      	uxth	r0, r3
    77b6:	041b      	lsls	r3, r3, #16
    77b8:	d402      	bmi.n	77c0 <rt_itv_wait+0x20>
    77ba:	2104      	movs	r1, #4
    77bc:	f000 fe2e 	bl	841c <rt_block>
    77c0:	bd10      	pop	{r4, pc}
    77c2:	46c0      	nop			; (mov r8, r8)
    77c4:	200060c0 	.word	0x200060c0
    77c8:	20006088 	.word	0x20006088

000077cc <rt_sem_init>:
    77cc:	2302      	movs	r3, #2
    77ce:	7003      	strb	r3, [r0, #0]
    77d0:	2300      	movs	r3, #0
    77d2:	8041      	strh	r1, [r0, #2]
    77d4:	6043      	str	r3, [r0, #4]
    77d6:	4770      	bx	lr

000077d8 <rt_sem_delete>:
    77d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    77da:	6843      	ldr	r3, [r0, #4]
    77dc:	0005      	movs	r5, r0
    77de:	4e16      	ldr	r6, [pc, #88]	; (7838 <rt_sem_delete+0x60>)
    77e0:	2b00      	cmp	r3, #0
    77e2:	d012      	beq.n	780a <rt_sem_delete+0x32>
    77e4:	2701      	movs	r7, #1
    77e6:	0028      	movs	r0, r5
    77e8:	f000 fa04 	bl	7bf4 <rt_get_first>
    77ec:	0004      	movs	r4, r0
    77ee:	2100      	movs	r1, #0
    77f0:	f7ff fdce 	bl	7390 <rt_ret_val>
    77f4:	0020      	movs	r0, r4
    77f6:	f000 fb35 	bl	7e64 <rt_rmv_dly>
    77fa:	7067      	strb	r7, [r4, #1]
    77fc:	0021      	movs	r1, r4
    77fe:	0030      	movs	r0, r6
    7800:	f000 f9d2 	bl	7ba8 <rt_put_prio>
    7804:	686b      	ldr	r3, [r5, #4]
    7806:	2b00      	cmp	r3, #0
    7808:	d1ed      	bne.n	77e6 <rt_sem_delete+0xe>
    780a:	6873      	ldr	r3, [r6, #4]
    780c:	2b00      	cmp	r3, #0
    780e:	d00e      	beq.n	782e <rt_sem_delete+0x56>
    7810:	4c0a      	ldr	r4, [pc, #40]	; (783c <rt_sem_delete+0x64>)
    7812:	789a      	ldrb	r2, [r3, #2]
    7814:	6821      	ldr	r1, [r4, #0]
    7816:	788b      	ldrb	r3, [r1, #2]
    7818:	429a      	cmp	r2, r3
    781a:	d908      	bls.n	782e <rt_sem_delete+0x56>
    781c:	0030      	movs	r0, r6
    781e:	f000 f9c3 	bl	7ba8 <rt_put_prio>
    7822:	2201      	movs	r2, #1
    7824:	6823      	ldr	r3, [r4, #0]
    7826:	2000      	movs	r0, #0
    7828:	705a      	strb	r2, [r3, #1]
    782a:	f000 fdd1 	bl	83d0 <rt_dispatch>
    782e:	2300      	movs	r3, #0
    7830:	2000      	movs	r0, #0
    7832:	702b      	strb	r3, [r5, #0]
    7834:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7836:	46c0      	nop			; (mov r8, r8)
    7838:	2000608c 	.word	0x2000608c
    783c:	200060c0 	.word	0x200060c0

00007840 <rt_sem_send>:
    7840:	6843      	ldr	r3, [r0, #4]
    7842:	b510      	push	{r4, lr}
    7844:	2b00      	cmp	r3, #0
    7846:	d00d      	beq.n	7864 <rt_sem_send+0x24>
    7848:	f000 f9d4 	bl	7bf4 <rt_get_first>
    784c:	0004      	movs	r4, r0
    784e:	2101      	movs	r1, #1
    7850:	f7ff fd9e 	bl	7390 <rt_ret_val>
    7854:	0020      	movs	r0, r4
    7856:	f000 fb05 	bl	7e64 <rt_rmv_dly>
    785a:	0020      	movs	r0, r4
    785c:	f000 fdb8 	bl	83d0 <rt_dispatch>
    7860:	2000      	movs	r0, #0
    7862:	bd10      	pop	{r4, pc}
    7864:	8843      	ldrh	r3, [r0, #2]
    7866:	3301      	adds	r3, #1
    7868:	8043      	strh	r3, [r0, #2]
    786a:	e7f9      	b.n	7860 <rt_sem_send+0x20>

0000786c <rt_sem_wait>:
    786c:	b510      	push	{r4, lr}
    786e:	8843      	ldrh	r3, [r0, #2]
    7870:	000c      	movs	r4, r1
    7872:	2b00      	cmp	r3, #0
    7874:	d110      	bne.n	7898 <rt_sem_wait+0x2c>
    7876:	2301      	movs	r3, #1
    7878:	2900      	cmp	r1, #0
    787a:	d00b      	beq.n	7894 <rt_sem_wait+0x28>
    787c:	6843      	ldr	r3, [r0, #4]
    787e:	2b00      	cmp	r3, #0
    7880:	d00e      	beq.n	78a0 <rt_sem_wait+0x34>
    7882:	4b0a      	ldr	r3, [pc, #40]	; (78ac <rt_sem_wait+0x40>)
    7884:	6819      	ldr	r1, [r3, #0]
    7886:	f000 f98f 	bl	7ba8 <rt_put_prio>
    788a:	2107      	movs	r1, #7
    788c:	0020      	movs	r0, r4
    788e:	f000 fdc5 	bl	841c <rt_block>
    7892:	2301      	movs	r3, #1
    7894:	0018      	movs	r0, r3
    7896:	bd10      	pop	{r4, pc}
    7898:	3b01      	subs	r3, #1
    789a:	8043      	strh	r3, [r0, #2]
    789c:	2300      	movs	r3, #0
    789e:	e7f9      	b.n	7894 <rt_sem_wait+0x28>
    78a0:	4a02      	ldr	r2, [pc, #8]	; (78ac <rt_sem_wait+0x40>)
    78a2:	6812      	ldr	r2, [r2, #0]
    78a4:	6042      	str	r2, [r0, #4]
    78a6:	6053      	str	r3, [r2, #4]
    78a8:	6090      	str	r0, [r2, #8]
    78aa:	e7ee      	b.n	788a <rt_sem_wait+0x1e>
    78ac:	200060c0 	.word	0x200060c0

000078b0 <isr_sem_send>:
    78b0:	b510      	push	{r4, lr}
    78b2:	2100      	movs	r1, #0
    78b4:	f000 faec 	bl	7e90 <rt_psq_enq>
    78b8:	f000 fcce 	bl	8258 <rt_psh_req>
    78bc:	bd10      	pop	{r4, pc}
    78be:	46c0      	nop			; (mov r8, r8)

000078c0 <rt_sem_psh>:
    78c0:	6843      	ldr	r3, [r0, #4]
    78c2:	b510      	push	{r4, lr}
    78c4:	2b00      	cmp	r3, #0
    78c6:	d00f      	beq.n	78e8 <rt_sem_psh+0x28>
    78c8:	f000 f994 	bl	7bf4 <rt_get_first>
    78cc:	0004      	movs	r4, r0
    78ce:	f000 fac9 	bl	7e64 <rt_rmv_dly>
    78d2:	2301      	movs	r3, #1
    78d4:	2101      	movs	r1, #1
    78d6:	0020      	movs	r0, r4
    78d8:	7063      	strb	r3, [r4, #1]
    78da:	f7ff fd59 	bl	7390 <rt_ret_val>
    78de:	0021      	movs	r1, r4
    78e0:	4803      	ldr	r0, [pc, #12]	; (78f0 <rt_sem_psh+0x30>)
    78e2:	f000 f961 	bl	7ba8 <rt_put_prio>
    78e6:	bd10      	pop	{r4, pc}
    78e8:	8843      	ldrh	r3, [r0, #2]
    78ea:	3301      	adds	r3, #1
    78ec:	8043      	strh	r3, [r0, #2]
    78ee:	e7fa      	b.n	78e6 <rt_sem_psh+0x26>
    78f0:	2000608c 	.word	0x2000608c

000078f4 <rt_mbx_init>:
    78f4:	2301      	movs	r3, #1
    78f6:	7003      	strb	r3, [r0, #0]
    78f8:	2300      	movs	r3, #0
    78fa:	3910      	subs	r1, #16
    78fc:	0889      	lsrs	r1, r1, #2
    78fe:	7043      	strb	r3, [r0, #1]
    7900:	7083      	strb	r3, [r0, #2]
    7902:	6043      	str	r3, [r0, #4]
    7904:	8103      	strh	r3, [r0, #8]
    7906:	8143      	strh	r3, [r0, #10]
    7908:	8183      	strh	r3, [r0, #12]
    790a:	81c1      	strh	r1, [r0, #14]
    790c:	4770      	bx	lr
    790e:	46c0      	nop			; (mov r8, r8)

00007910 <rt_mbx_send>:
    7910:	6843      	ldr	r3, [r0, #4]
    7912:	b570      	push	{r4, r5, r6, lr}
    7914:	000d      	movs	r5, r1
    7916:	0016      	movs	r6, r2
    7918:	2b00      	cmp	r3, #0
    791a:	d002      	beq.n	7922 <rt_mbx_send+0x12>
    791c:	7842      	ldrb	r2, [r0, #1]
    791e:	2a01      	cmp	r2, #1
    7920:	d028      	beq.n	7974 <rt_mbx_send+0x64>
    7922:	8982      	ldrh	r2, [r0, #12]
    7924:	89c4      	ldrh	r4, [r0, #14]
    7926:	42a2      	cmp	r2, r4
    7928:	d013      	beq.n	7952 <rt_mbx_send+0x42>
    792a:	8903      	ldrh	r3, [r0, #8]
    792c:	1d19      	adds	r1, r3, #4
    792e:	0089      	lsls	r1, r1, #2
    7930:	500d      	str	r5, [r1, r0]
    7932:	f3ef 8110 	mrs	r1, PRIMASK
    7936:	b672      	cpsid	i
    7938:	3201      	adds	r2, #1
    793a:	8182      	strh	r2, [r0, #12]
    793c:	b662      	cpsie	i
    793e:	3301      	adds	r3, #1
    7940:	b29b      	uxth	r3, r3
    7942:	429c      	cmp	r4, r3
    7944:	d003      	beq.n	794e <rt_mbx_send+0x3e>
    7946:	2200      	movs	r2, #0
    7948:	8103      	strh	r3, [r0, #8]
    794a:	0010      	movs	r0, r2
    794c:	bd70      	pop	{r4, r5, r6, pc}
    794e:	2300      	movs	r3, #0
    7950:	e7f9      	b.n	7946 <rt_mbx_send+0x36>
    7952:	2201      	movs	r2, #1
    7954:	2e00      	cmp	r6, #0
    7956:	d0f8      	beq.n	794a <rt_mbx_send+0x3a>
    7958:	2b00      	cmp	r3, #0
    795a:	d01a      	beq.n	7992 <rt_mbx_send+0x82>
    795c:	4c11      	ldr	r4, [pc, #68]	; (79a4 <rt_mbx_send+0x94>)
    795e:	6821      	ldr	r1, [r4, #0]
    7960:	f000 f922 	bl	7ba8 <rt_put_prio>
    7964:	6822      	ldr	r2, [r4, #0]
    7966:	61d5      	str	r5, [r2, #28]
    7968:	2108      	movs	r1, #8
    796a:	0030      	movs	r0, r6
    796c:	f000 fd56 	bl	841c <rt_block>
    7970:	2201      	movs	r2, #1
    7972:	e7ea      	b.n	794a <rt_mbx_send+0x3a>
    7974:	f000 f93e 	bl	7bf4 <rt_get_first>
    7978:	0004      	movs	r4, r0
    797a:	002a      	movs	r2, r5
    797c:	2110      	movs	r1, #16
    797e:	f7ff fd0b 	bl	7398 <rt_ret_val2>
    7982:	0020      	movs	r0, r4
    7984:	f000 fa6e 	bl	7e64 <rt_rmv_dly>
    7988:	0020      	movs	r0, r4
    798a:	f000 fd21 	bl	83d0 <rt_dispatch>
    798e:	2200      	movs	r2, #0
    7990:	e7db      	b.n	794a <rt_mbx_send+0x3a>
    7992:	4a04      	ldr	r2, [pc, #16]	; (79a4 <rt_mbx_send+0x94>)
    7994:	6812      	ldr	r2, [r2, #0]
    7996:	6042      	str	r2, [r0, #4]
    7998:	6053      	str	r3, [r2, #4]
    799a:	2302      	movs	r3, #2
    799c:	6090      	str	r0, [r2, #8]
    799e:	7043      	strb	r3, [r0, #1]
    79a0:	e7e1      	b.n	7966 <rt_mbx_send+0x56>
    79a2:	46c0      	nop			; (mov r8, r8)
    79a4:	200060c0 	.word	0x200060c0

000079a8 <rt_mbx_wait>:
    79a8:	b570      	push	{r4, r5, r6, lr}
    79aa:	0015      	movs	r5, r2
    79ac:	8982      	ldrh	r2, [r0, #12]
    79ae:	0004      	movs	r4, r0
    79b0:	2a00      	cmp	r2, #0
    79b2:	d018      	beq.n	79e6 <rt_mbx_wait+0x3e>
    79b4:	8943      	ldrh	r3, [r0, #10]
    79b6:	1d18      	adds	r0, r3, #4
    79b8:	0080      	lsls	r0, r0, #2
    79ba:	5900      	ldr	r0, [r0, r4]
    79bc:	3301      	adds	r3, #1
    79be:	6008      	str	r0, [r1, #0]
    79c0:	89e1      	ldrh	r1, [r4, #14]
    79c2:	b29b      	uxth	r3, r3
    79c4:	8163      	strh	r3, [r4, #10]
    79c6:	4299      	cmp	r1, r3
    79c8:	d01e      	beq.n	7a08 <rt_mbx_wait+0x60>
    79ca:	6863      	ldr	r3, [r4, #4]
    79cc:	2b00      	cmp	r3, #0
    79ce:	d002      	beq.n	79d6 <rt_mbx_wait+0x2e>
    79d0:	7863      	ldrb	r3, [r4, #1]
    79d2:	2b02      	cmp	r3, #2
    79d4:	d025      	beq.n	7a22 <rt_mbx_wait+0x7a>
    79d6:	f3ef 8310 	mrs	r3, PRIMASK
    79da:	b672      	cpsid	i
    79dc:	3a01      	subs	r2, #1
    79de:	81a2      	strh	r2, [r4, #12]
    79e0:	b662      	cpsie	i
    79e2:	2000      	movs	r0, #0
    79e4:	bd70      	pop	{r4, r5, r6, pc}
    79e6:	2001      	movs	r0, #1
    79e8:	2d00      	cmp	r5, #0
    79ea:	d0fb      	beq.n	79e4 <rt_mbx_wait+0x3c>
    79ec:	6863      	ldr	r3, [r4, #4]
    79ee:	2b00      	cmp	r3, #0
    79f0:	d010      	beq.n	7a14 <rt_mbx_wait+0x6c>
    79f2:	4b1a      	ldr	r3, [pc, #104]	; (7a5c <rt_mbx_wait+0xb4>)
    79f4:	0020      	movs	r0, r4
    79f6:	6819      	ldr	r1, [r3, #0]
    79f8:	f000 f8d6 	bl	7ba8 <rt_put_prio>
    79fc:	0028      	movs	r0, r5
    79fe:	2108      	movs	r1, #8
    7a00:	f000 fd0c 	bl	841c <rt_block>
    7a04:	2001      	movs	r0, #1
    7a06:	e7ed      	b.n	79e4 <rt_mbx_wait+0x3c>
    7a08:	2300      	movs	r3, #0
    7a0a:	8163      	strh	r3, [r4, #10]
    7a0c:	6863      	ldr	r3, [r4, #4]
    7a0e:	2b00      	cmp	r3, #0
    7a10:	d1de      	bne.n	79d0 <rt_mbx_wait+0x28>
    7a12:	e7e0      	b.n	79d6 <rt_mbx_wait+0x2e>
    7a14:	4a11      	ldr	r2, [pc, #68]	; (7a5c <rt_mbx_wait+0xb4>)
    7a16:	6812      	ldr	r2, [r2, #0]
    7a18:	6062      	str	r2, [r4, #4]
    7a1a:	6053      	str	r3, [r2, #4]
    7a1c:	6094      	str	r4, [r2, #8]
    7a1e:	7060      	strb	r0, [r4, #1]
    7a20:	e7ec      	b.n	79fc <rt_mbx_wait+0x54>
    7a22:	0020      	movs	r0, r4
    7a24:	f000 f8e6 	bl	7bf4 <rt_get_first>
    7a28:	0005      	movs	r5, r0
    7a2a:	2100      	movs	r1, #0
    7a2c:	f7ff fcb0 	bl	7390 <rt_ret_val>
    7a30:	8923      	ldrh	r3, [r4, #8]
    7a32:	69e9      	ldr	r1, [r5, #28]
    7a34:	1d1a      	adds	r2, r3, #4
    7a36:	0092      	lsls	r2, r2, #2
    7a38:	5111      	str	r1, [r2, r4]
    7a3a:	3301      	adds	r3, #1
    7a3c:	89e2      	ldrh	r2, [r4, #14]
    7a3e:	b29b      	uxth	r3, r3
    7a40:	8123      	strh	r3, [r4, #8]
    7a42:	429a      	cmp	r2, r3
    7a44:	d101      	bne.n	7a4a <rt_mbx_wait+0xa2>
    7a46:	2300      	movs	r3, #0
    7a48:	8123      	strh	r3, [r4, #8]
    7a4a:	0028      	movs	r0, r5
    7a4c:	f000 fa0a 	bl	7e64 <rt_rmv_dly>
    7a50:	0028      	movs	r0, r5
    7a52:	f000 fcbd 	bl	83d0 <rt_dispatch>
    7a56:	2000      	movs	r0, #0
    7a58:	e7c4      	b.n	79e4 <rt_mbx_wait+0x3c>
    7a5a:	46c0      	nop			; (mov r8, r8)
    7a5c:	200060c0 	.word	0x200060c0

00007a60 <rt_mbx_check>:
    7a60:	89c3      	ldrh	r3, [r0, #14]
    7a62:	8980      	ldrh	r0, [r0, #12]
    7a64:	1a18      	subs	r0, r3, r0
    7a66:	4770      	bx	lr

00007a68 <isr_mbx_send>:
    7a68:	b510      	push	{r4, lr}
    7a6a:	f000 fa11 	bl	7e90 <rt_psq_enq>
    7a6e:	f000 fbf3 	bl	8258 <rt_psh_req>
    7a72:	bd10      	pop	{r4, pc}

00007a74 <isr_mbx_receive>:
    7a74:	b510      	push	{r4, lr}
    7a76:	8982      	ldrh	r2, [r0, #12]
    7a78:	0004      	movs	r4, r0
    7a7a:	2000      	movs	r0, #0
    7a7c:	2a00      	cmp	r2, #0
    7a7e:	d017      	beq.n	7ab0 <isr_mbx_receive+0x3c>
    7a80:	8963      	ldrh	r3, [r4, #10]
    7a82:	1d18      	adds	r0, r3, #4
    7a84:	0080      	lsls	r0, r0, #2
    7a86:	5900      	ldr	r0, [r0, r4]
    7a88:	6008      	str	r0, [r1, #0]
    7a8a:	6861      	ldr	r1, [r4, #4]
    7a8c:	2900      	cmp	r1, #0
    7a8e:	d002      	beq.n	7a96 <isr_mbx_receive+0x22>
    7a90:	7861      	ldrb	r1, [r4, #1]
    7a92:	2902      	cmp	r1, #2
    7a94:	d010      	beq.n	7ab8 <isr_mbx_receive+0x44>
    7a96:	f3ef 8110 	mrs	r1, PRIMASK
    7a9a:	b672      	cpsid	i
    7a9c:	3a01      	subs	r2, #1
    7a9e:	81a2      	strh	r2, [r4, #12]
    7aa0:	b662      	cpsie	i
    7aa2:	3301      	adds	r3, #1
    7aa4:	89e2      	ldrh	r2, [r4, #14]
    7aa6:	b29b      	uxth	r3, r3
    7aa8:	8163      	strh	r3, [r4, #10]
    7aaa:	2004      	movs	r0, #4
    7aac:	429a      	cmp	r2, r3
    7aae:	d000      	beq.n	7ab2 <isr_mbx_receive+0x3e>
    7ab0:	bd10      	pop	{r4, pc}
    7ab2:	2300      	movs	r3, #0
    7ab4:	8163      	strh	r3, [r4, #10]
    7ab6:	e7fb      	b.n	7ab0 <isr_mbx_receive+0x3c>
    7ab8:	2100      	movs	r1, #0
    7aba:	0020      	movs	r0, r4
    7abc:	f000 f9e8 	bl	7e90 <rt_psq_enq>
    7ac0:	f000 fbca 	bl	8258 <rt_psh_req>
    7ac4:	89a2      	ldrh	r2, [r4, #12]
    7ac6:	8963      	ldrh	r3, [r4, #10]
    7ac8:	e7e5      	b.n	7a96 <isr_mbx_receive+0x22>
    7aca:	46c0      	nop			; (mov r8, r8)

00007acc <rt_mbx_psh>:
    7acc:	6843      	ldr	r3, [r0, #4]
    7ace:	b570      	push	{r4, r5, r6, lr}
    7ad0:	0004      	movs	r4, r0
    7ad2:	000e      	movs	r6, r1
    7ad4:	2b00      	cmp	r3, #0
    7ad6:	d04b      	beq.n	7b70 <rt_mbx_psh+0xa4>
    7ad8:	7845      	ldrb	r5, [r0, #1]
    7ada:	2d02      	cmp	r5, #2
    7adc:	d023      	beq.n	7b26 <rt_mbx_psh+0x5a>
    7ade:	2d03      	cmp	r5, #3
    7ae0:	d002      	beq.n	7ae8 <rt_mbx_psh+0x1c>
    7ae2:	2d01      	cmp	r5, #1
    7ae4:	d00f      	beq.n	7b06 <rt_mbx_psh+0x3a>
    7ae6:	bd70      	pop	{r4, r5, r6, pc}
    7ae8:	0008      	movs	r0, r1
    7aea:	f7ff fcd3 	bl	7494 <rt_alloc_box>
    7aee:	1e05      	subs	r5, r0, #0
    7af0:	d0f9      	beq.n	7ae6 <rt_mbx_psh+0x1a>
    7af2:	0020      	movs	r0, r4
    7af4:	f000 f87e 	bl	7bf4 <rt_get_first>
    7af8:	0029      	movs	r1, r5
    7afa:	0004      	movs	r4, r0
    7afc:	f7ff fc48 	bl	7390 <rt_ret_val>
    7b00:	2301      	movs	r3, #1
    7b02:	7063      	strb	r3, [r4, #1]
    7b04:	e007      	b.n	7b16 <rt_mbx_psh+0x4a>
    7b06:	f000 f875 	bl	7bf4 <rt_get_first>
    7b0a:	0004      	movs	r4, r0
    7b0c:	0032      	movs	r2, r6
    7b0e:	2110      	movs	r1, #16
    7b10:	f7ff fc42 	bl	7398 <rt_ret_val2>
    7b14:	7065      	strb	r5, [r4, #1]
    7b16:	0020      	movs	r0, r4
    7b18:	f000 f9a4 	bl	7e64 <rt_rmv_dly>
    7b1c:	0021      	movs	r1, r4
    7b1e:	4821      	ldr	r0, [pc, #132]	; (7ba4 <rt_mbx_psh+0xd8>)
    7b20:	f000 f842 	bl	7ba8 <rt_put_prio>
    7b24:	e7df      	b.n	7ae6 <rt_mbx_psh+0x1a>
    7b26:	f000 f865 	bl	7bf4 <rt_get_first>
    7b2a:	0005      	movs	r5, r0
    7b2c:	2100      	movs	r1, #0
    7b2e:	f7ff fc2f 	bl	7390 <rt_ret_val>
    7b32:	8923      	ldrh	r3, [r4, #8]
    7b34:	69e9      	ldr	r1, [r5, #28]
    7b36:	1d1a      	adds	r2, r3, #4
    7b38:	0092      	lsls	r2, r2, #2
    7b3a:	5111      	str	r1, [r2, r4]
    7b3c:	f3ef 8210 	mrs	r2, PRIMASK
    7b40:	b672      	cpsid	i
    7b42:	89a2      	ldrh	r2, [r4, #12]
    7b44:	3201      	adds	r2, #1
    7b46:	81a2      	strh	r2, [r4, #12]
    7b48:	b662      	cpsie	i
    7b4a:	3301      	adds	r3, #1
    7b4c:	89e2      	ldrh	r2, [r4, #14]
    7b4e:	b29b      	uxth	r3, r3
    7b50:	8123      	strh	r3, [r4, #8]
    7b52:	429a      	cmp	r2, r3
    7b54:	d009      	beq.n	7b6a <rt_mbx_psh+0x9e>
    7b56:	2301      	movs	r3, #1
    7b58:	0028      	movs	r0, r5
    7b5a:	706b      	strb	r3, [r5, #1]
    7b5c:	f000 f982 	bl	7e64 <rt_rmv_dly>
    7b60:	0029      	movs	r1, r5
    7b62:	4810      	ldr	r0, [pc, #64]	; (7ba4 <rt_mbx_psh+0xd8>)
    7b64:	f000 f820 	bl	7ba8 <rt_put_prio>
    7b68:	e7bd      	b.n	7ae6 <rt_mbx_psh+0x1a>
    7b6a:	2300      	movs	r3, #0
    7b6c:	8123      	strh	r3, [r4, #8]
    7b6e:	e7f2      	b.n	7b56 <rt_mbx_psh+0x8a>
    7b70:	8981      	ldrh	r1, [r0, #12]
    7b72:	89c5      	ldrh	r5, [r0, #14]
    7b74:	42a9      	cmp	r1, r5
    7b76:	d20f      	bcs.n	7b98 <rt_mbx_psh+0xcc>
    7b78:	8902      	ldrh	r2, [r0, #8]
    7b7a:	1d10      	adds	r0, r2, #4
    7b7c:	0080      	lsls	r0, r0, #2
    7b7e:	5106      	str	r6, [r0, r4]
    7b80:	f3ef 8010 	mrs	r0, PRIMASK
    7b84:	b672      	cpsid	i
    7b86:	3101      	adds	r1, #1
    7b88:	81a1      	strh	r1, [r4, #12]
    7b8a:	b662      	cpsie	i
    7b8c:	3201      	adds	r2, #1
    7b8e:	b292      	uxth	r2, r2
    7b90:	4295      	cmp	r5, r2
    7b92:	d005      	beq.n	7ba0 <rt_mbx_psh+0xd4>
    7b94:	8122      	strh	r2, [r4, #8]
    7b96:	e7a6      	b.n	7ae6 <rt_mbx_psh+0x1a>
    7b98:	2003      	movs	r0, #3
    7b9a:	f7f9 ffb9 	bl	1b10 <os_error>
    7b9e:	e7a2      	b.n	7ae6 <rt_mbx_psh+0x1a>
    7ba0:	8123      	strh	r3, [r4, #8]
    7ba2:	e7a0      	b.n	7ae6 <rt_mbx_psh+0x1a>
    7ba4:	2000608c 	.word	0x2000608c

00007ba8 <rt_put_prio>:
    7ba8:	b530      	push	{r4, r5, lr}
    7baa:	7805      	ldrb	r5, [r0, #0]
    7bac:	6842      	ldr	r2, [r0, #4]
    7bae:	3d01      	subs	r5, #1
    7bb0:	b2ed      	uxtb	r5, r5
    7bb2:	788c      	ldrb	r4, [r1, #2]
    7bb4:	2a00      	cmp	r2, #0
    7bb6:	d01a      	beq.n	7bee <rt_put_prio+0x46>
    7bb8:	7893      	ldrb	r3, [r2, #2]
    7bba:	42a3      	cmp	r3, r4
    7bbc:	d204      	bcs.n	7bc8 <rt_put_prio+0x20>
    7bbe:	e00e      	b.n	7bde <rt_put_prio+0x36>
    7bc0:	7898      	ldrb	r0, [r3, #2]
    7bc2:	4284      	cmp	r4, r0
    7bc4:	d80d      	bhi.n	7be2 <rt_put_prio+0x3a>
    7bc6:	001a      	movs	r2, r3
    7bc8:	6853      	ldr	r3, [r2, #4]
    7bca:	2b00      	cmp	r3, #0
    7bcc:	d1f8      	bne.n	7bc0 <rt_put_prio+0x18>
    7bce:	2300      	movs	r3, #0
    7bd0:	604b      	str	r3, [r1, #4]
    7bd2:	6051      	str	r1, [r2, #4]
    7bd4:	2d02      	cmp	r5, #2
    7bd6:	d900      	bls.n	7bda <rt_put_prio+0x32>
    7bd8:	2200      	movs	r2, #0
    7bda:	608a      	str	r2, [r1, #8]
    7bdc:	bd30      	pop	{r4, r5, pc}
    7bde:	0013      	movs	r3, r2
    7be0:	0002      	movs	r2, r0
    7be2:	604b      	str	r3, [r1, #4]
    7be4:	6051      	str	r1, [r2, #4]
    7be6:	2d02      	cmp	r5, #2
    7be8:	d8f6      	bhi.n	7bd8 <rt_put_prio+0x30>
    7bea:	6099      	str	r1, [r3, #8]
    7bec:	e7f5      	b.n	7bda <rt_put_prio+0x32>
    7bee:	0002      	movs	r2, r0
    7bf0:	e7ed      	b.n	7bce <rt_put_prio+0x26>
    7bf2:	46c0      	nop			; (mov r8, r8)

00007bf4 <rt_get_first>:
    7bf4:	6843      	ldr	r3, [r0, #4]
    7bf6:	7802      	ldrb	r2, [r0, #0]
    7bf8:	6859      	ldr	r1, [r3, #4]
    7bfa:	3a01      	subs	r2, #1
    7bfc:	6041      	str	r1, [r0, #4]
    7bfe:	2a02      	cmp	r2, #2
    7c00:	d808      	bhi.n	7c14 <rt_get_first+0x20>
    7c02:	2900      	cmp	r1, #0
    7c04:	d002      	beq.n	7c0c <rt_get_first+0x18>
    7c06:	2200      	movs	r2, #0
    7c08:	6088      	str	r0, [r1, #8]
    7c0a:	605a      	str	r2, [r3, #4]
    7c0c:	2200      	movs	r2, #0
    7c0e:	609a      	str	r2, [r3, #8]
    7c10:	0018      	movs	r0, r3
    7c12:	4770      	bx	lr
    7c14:	2200      	movs	r2, #0
    7c16:	605a      	str	r2, [r3, #4]
    7c18:	e7fa      	b.n	7c10 <rt_get_first+0x1c>
    7c1a:	46c0      	nop			; (mov r8, r8)

00007c1c <rt_put_rdy_first>:
    7c1c:	4b03      	ldr	r3, [pc, #12]	; (7c2c <rt_put_rdy_first+0x10>)
    7c1e:	685a      	ldr	r2, [r3, #4]
    7c20:	6042      	str	r2, [r0, #4]
    7c22:	2200      	movs	r2, #0
    7c24:	6058      	str	r0, [r3, #4]
    7c26:	6082      	str	r2, [r0, #8]
    7c28:	4770      	bx	lr
    7c2a:	46c0      	nop			; (mov r8, r8)
    7c2c:	2000608c 	.word	0x2000608c

00007c30 <rt_get_same_rdy_prio>:
    7c30:	4b06      	ldr	r3, [pc, #24]	; (7c4c <rt_get_same_rdy_prio+0x1c>)
    7c32:	4a07      	ldr	r2, [pc, #28]	; (7c50 <rt_get_same_rdy_prio+0x20>)
    7c34:	6858      	ldr	r0, [r3, #4]
    7c36:	6812      	ldr	r2, [r2, #0]
    7c38:	7881      	ldrb	r1, [r0, #2]
    7c3a:	7892      	ldrb	r2, [r2, #2]
    7c3c:	4291      	cmp	r1, r2
    7c3e:	d102      	bne.n	7c46 <rt_get_same_rdy_prio+0x16>
    7c40:	6842      	ldr	r2, [r0, #4]
    7c42:	605a      	str	r2, [r3, #4]
    7c44:	4770      	bx	lr
    7c46:	2000      	movs	r0, #0
    7c48:	e7fc      	b.n	7c44 <rt_get_same_rdy_prio+0x14>
    7c4a:	46c0      	nop			; (mov r8, r8)
    7c4c:	2000608c 	.word	0x2000608c
    7c50:	200060c0 	.word	0x200060c0

00007c54 <rt_resort_prio>:
    7c54:	6881      	ldr	r1, [r0, #8]
    7c56:	b530      	push	{r4, r5, lr}
    7c58:	2900      	cmp	r1, #0
    7c5a:	d030      	beq.n	7cbe <rt_resort_prio+0x6a>
    7c5c:	780b      	ldrb	r3, [r1, #0]
    7c5e:	000a      	movs	r2, r1
    7c60:	2b00      	cmp	r3, #0
    7c62:	d103      	bne.n	7c6c <rt_resort_prio+0x18>
    7c64:	6892      	ldr	r2, [r2, #8]
    7c66:	7813      	ldrb	r3, [r2, #0]
    7c68:	2b00      	cmp	r3, #0
    7c6a:	d0fb      	beq.n	7c64 <rt_resort_prio+0x10>
    7c6c:	6843      	ldr	r3, [r0, #4]
    7c6e:	604b      	str	r3, [r1, #4]
    7c70:	6843      	ldr	r3, [r0, #4]
    7c72:	2b00      	cmp	r3, #0
    7c74:	d000      	beq.n	7c78 <rt_resort_prio+0x24>
    7c76:	6099      	str	r1, [r3, #8]
    7c78:	7815      	ldrb	r5, [r2, #0]
    7c7a:	6851      	ldr	r1, [r2, #4]
    7c7c:	3d01      	subs	r5, #1
    7c7e:	b2ed      	uxtb	r5, r5
    7c80:	7884      	ldrb	r4, [r0, #2]
    7c82:	2900      	cmp	r1, #0
    7c84:	d029      	beq.n	7cda <rt_resort_prio+0x86>
    7c86:	788b      	ldrb	r3, [r1, #2]
    7c88:	42a3      	cmp	r3, r4
    7c8a:	d204      	bcs.n	7c96 <rt_resort_prio+0x42>
    7c8c:	e00e      	b.n	7cac <rt_resort_prio+0x58>
    7c8e:	789a      	ldrb	r2, [r3, #2]
    7c90:	4294      	cmp	r4, r2
    7c92:	d80d      	bhi.n	7cb0 <rt_resort_prio+0x5c>
    7c94:	0019      	movs	r1, r3
    7c96:	684b      	ldr	r3, [r1, #4]
    7c98:	2b00      	cmp	r3, #0
    7c9a:	d1f8      	bne.n	7c8e <rt_resort_prio+0x3a>
    7c9c:	2300      	movs	r3, #0
    7c9e:	6043      	str	r3, [r0, #4]
    7ca0:	6048      	str	r0, [r1, #4]
    7ca2:	2d02      	cmp	r5, #2
    7ca4:	d909      	bls.n	7cba <rt_resort_prio+0x66>
    7ca6:	2300      	movs	r3, #0
    7ca8:	6083      	str	r3, [r0, #8]
    7caa:	bd30      	pop	{r4, r5, pc}
    7cac:	000b      	movs	r3, r1
    7cae:	0011      	movs	r1, r2
    7cb0:	6043      	str	r3, [r0, #4]
    7cb2:	6048      	str	r0, [r1, #4]
    7cb4:	2d02      	cmp	r5, #2
    7cb6:	d8f6      	bhi.n	7ca6 <rt_resort_prio+0x52>
    7cb8:	6098      	str	r0, [r3, #8]
    7cba:	6081      	str	r1, [r0, #8]
    7cbc:	e7f5      	b.n	7caa <rt_resort_prio+0x56>
    7cbe:	7843      	ldrb	r3, [r0, #1]
    7cc0:	2b01      	cmp	r3, #1
    7cc2:	d1f2      	bne.n	7caa <rt_resort_prio+0x56>
    7cc4:	4a06      	ldr	r2, [pc, #24]	; (7ce0 <rt_resort_prio+0x8c>)
    7cc6:	0013      	movs	r3, r2
    7cc8:	e001      	b.n	7cce <rt_resort_prio+0x7a>
    7cca:	1e0b      	subs	r3, r1, #0
    7ccc:	d0d4      	beq.n	7c78 <rt_resort_prio+0x24>
    7cce:	6859      	ldr	r1, [r3, #4]
    7cd0:	4288      	cmp	r0, r1
    7cd2:	d1fa      	bne.n	7cca <rt_resort_prio+0x76>
    7cd4:	6841      	ldr	r1, [r0, #4]
    7cd6:	6059      	str	r1, [r3, #4]
    7cd8:	e7ce      	b.n	7c78 <rt_resort_prio+0x24>
    7cda:	0011      	movs	r1, r2
    7cdc:	e7de      	b.n	7c9c <rt_resort_prio+0x48>
    7cde:	46c0      	nop			; (mov r8, r8)
    7ce0:	2000608c 	.word	0x2000608c

00007ce4 <rt_put_dly>:
    7ce4:	b530      	push	{r4, r5, lr}
    7ce6:	4c17      	ldr	r4, [pc, #92]	; (7d44 <rt_put_dly+0x60>)
    7ce8:	68e2      	ldr	r2, [r4, #12]
    7cea:	2a00      	cmp	r2, #0
    7cec:	d023      	beq.n	7d36 <rt_put_dly+0x52>
    7cee:	8aa3      	ldrh	r3, [r4, #20]
    7cf0:	4299      	cmp	r1, r3
    7cf2:	d804      	bhi.n	7cfe <rt_put_dly+0x1a>
    7cf4:	e022      	b.n	7d3c <rt_put_dly+0x58>
    7cf6:	68d4      	ldr	r4, [r2, #12]
    7cf8:	2c00      	cmp	r4, #0
    7cfa:	d013      	beq.n	7d24 <rt_put_dly+0x40>
    7cfc:	0022      	movs	r2, r4
    7cfe:	8a94      	ldrh	r4, [r2, #20]
    7d00:	191b      	adds	r3, r3, r4
    7d02:	4299      	cmp	r1, r3
    7d04:	d8f7      	bhi.n	7cf6 <rt_put_dly+0x12>
    7d06:	68d5      	ldr	r5, [r2, #12]
    7d08:	60c5      	str	r5, [r0, #12]
    7d0a:	60d0      	str	r0, [r2, #12]
    7d0c:	68c4      	ldr	r4, [r0, #12]
    7d0e:	6102      	str	r2, [r0, #16]
    7d10:	2c00      	cmp	r4, #0
    7d12:	d000      	beq.n	7d16 <rt_put_dly+0x32>
    7d14:	6120      	str	r0, [r4, #16]
    7d16:	1a5b      	subs	r3, r3, r1
    7d18:	b29b      	uxth	r3, r3
    7d1a:	8283      	strh	r3, [r0, #20]
    7d1c:	8a91      	ldrh	r1, [r2, #20]
    7d1e:	1acb      	subs	r3, r1, r3
    7d20:	8293      	strh	r3, [r2, #20]
    7d22:	bd30      	pop	{r4, r5, pc}
    7d24:	b29b      	uxth	r3, r3
    7d26:	2400      	movs	r4, #0
    7d28:	1acb      	subs	r3, r1, r3
    7d2a:	60c4      	str	r4, [r0, #12]
    7d2c:	60d0      	str	r0, [r2, #12]
    7d2e:	6102      	str	r2, [r0, #16]
    7d30:	8293      	strh	r3, [r2, #20]
    7d32:	8284      	strh	r4, [r0, #20]
    7d34:	e7f5      	b.n	7d22 <rt_put_dly+0x3e>
    7d36:	2300      	movs	r3, #0
    7d38:	0022      	movs	r2, r4
    7d3a:	e7f4      	b.n	7d26 <rt_put_dly+0x42>
    7d3c:	0015      	movs	r5, r2
    7d3e:	0022      	movs	r2, r4
    7d40:	e7e2      	b.n	7d08 <rt_put_dly+0x24>
    7d42:	46c0      	nop			; (mov r8, r8)
    7d44:	200060a4 	.word	0x200060a4

00007d48 <rt_dec_dly>:
    7d48:	b5f0      	push	{r4, r5, r6, r7, lr}
    7d4a:	464e      	mov	r6, r9
    7d4c:	4657      	mov	r7, sl
    7d4e:	4645      	mov	r5, r8
    7d50:	b4e0      	push	{r5, r6, r7}
    7d52:	4e36      	ldr	r6, [pc, #216]	; (7e2c <rt_dec_dly+0xe4>)
    7d54:	68f0      	ldr	r0, [r6, #12]
    7d56:	2800      	cmp	r0, #0
    7d58:	d059      	beq.n	7e0e <rt_dec_dly+0xc6>
    7d5a:	8ab3      	ldrh	r3, [r6, #20]
    7d5c:	3b01      	subs	r3, #1
    7d5e:	b29b      	uxth	r3, r3
    7d60:	82b3      	strh	r3, [r6, #20]
    7d62:	2b00      	cmp	r3, #0
    7d64:	d153      	bne.n	7e0e <rt_dec_dly+0xc6>
    7d66:	4b32      	ldr	r3, [pc, #200]	; (7e30 <rt_dec_dly+0xe8>)
    7d68:	2500      	movs	r5, #0
    7d6a:	469c      	mov	ip, r3
    7d6c:	781f      	ldrb	r7, [r3, #0]
    7d6e:	4b31      	ldr	r3, [pc, #196]	; (7e34 <rt_dec_dly+0xec>)
    7d70:	46e2      	mov	sl, ip
    7d72:	881b      	ldrh	r3, [r3, #0]
    7d74:	3f01      	subs	r7, #1
    7d76:	4699      	mov	r9, r3
    7d78:	2301      	movs	r3, #1
    7d7a:	4698      	mov	r8, r3
    7d7c:	b2ff      	uxtb	r7, r7
    7d7e:	6883      	ldr	r3, [r0, #8]
    7d80:	2b00      	cmp	r3, #0
    7d82:	d007      	beq.n	7d94 <rt_dec_dly+0x4c>
    7d84:	6842      	ldr	r2, [r0, #4]
    7d86:	605a      	str	r2, [r3, #4]
    7d88:	6842      	ldr	r2, [r0, #4]
    7d8a:	2a00      	cmp	r2, #0
    7d8c:	d001      	beq.n	7d92 <rt_dec_dly+0x4a>
    7d8e:	6093      	str	r3, [r2, #8]
    7d90:	6045      	str	r5, [r0, #4]
    7d92:	6085      	str	r5, [r0, #8]
    7d94:	4663      	mov	r3, ip
    7d96:	685a      	ldr	r2, [r3, #4]
    7d98:	7884      	ldrb	r4, [r0, #2]
    7d9a:	2a00      	cmp	r2, #0
    7d9c:	d03c      	beq.n	7e18 <rt_dec_dly+0xd0>
    7d9e:	7893      	ldrb	r3, [r2, #2]
    7da0:	42a3      	cmp	r3, r4
    7da2:	d204      	bcs.n	7dae <rt_dec_dly+0x66>
    7da4:	e01c      	b.n	7de0 <rt_dec_dly+0x98>
    7da6:	7899      	ldrb	r1, [r3, #2]
    7da8:	428c      	cmp	r4, r1
    7daa:	d81b      	bhi.n	7de4 <rt_dec_dly+0x9c>
    7dac:	001a      	movs	r2, r3
    7dae:	6853      	ldr	r3, [r2, #4]
    7db0:	2b00      	cmp	r3, #0
    7db2:	d1f8      	bne.n	7da6 <rt_dec_dly+0x5e>
    7db4:	6045      	str	r5, [r0, #4]
    7db6:	6050      	str	r0, [r2, #4]
    7db8:	2f02      	cmp	r7, #2
    7dba:	d900      	bls.n	7dbe <rt_dec_dly+0x76>
    7dbc:	2200      	movs	r2, #0
    7dbe:	7843      	ldrb	r3, [r0, #1]
    7dc0:	6082      	str	r2, [r0, #8]
    7dc2:	8a82      	ldrh	r2, [r0, #20]
    7dc4:	2b04      	cmp	r3, #4
    7dc6:	d017      	beq.n	7df8 <rt_dec_dly+0xb0>
    7dc8:	4643      	mov	r3, r8
    7dca:	7043      	strb	r3, [r0, #1]
    7dcc:	68c3      	ldr	r3, [r0, #12]
    7dce:	2b00      	cmp	r3, #0
    7dd0:	d01a      	beq.n	7e08 <rt_dec_dly+0xc0>
    7dd2:	611e      	str	r6, [r3, #16]
    7dd4:	60c5      	str	r5, [r0, #12]
    7dd6:	6105      	str	r5, [r0, #16]
    7dd8:	2a00      	cmp	r2, #0
    7dda:	d123      	bne.n	7e24 <rt_dec_dly+0xdc>
    7ddc:	0018      	movs	r0, r3
    7dde:	e7ce      	b.n	7d7e <rt_dec_dly+0x36>
    7de0:	0013      	movs	r3, r2
    7de2:	4652      	mov	r2, sl
    7de4:	6043      	str	r3, [r0, #4]
    7de6:	6050      	str	r0, [r2, #4]
    7de8:	2f02      	cmp	r7, #2
    7dea:	d8e7      	bhi.n	7dbc <rt_dec_dly+0x74>
    7dec:	6098      	str	r0, [r3, #8]
    7dee:	7843      	ldrb	r3, [r0, #1]
    7df0:	6082      	str	r2, [r0, #8]
    7df2:	8a82      	ldrh	r2, [r0, #20]
    7df4:	2b04      	cmp	r3, #4
    7df6:	d1e7      	bne.n	7dc8 <rt_dec_dly+0x80>
    7df8:	8ac3      	ldrh	r3, [r0, #22]
    7dfa:	444b      	add	r3, r9
    7dfc:	8283      	strh	r3, [r0, #20]
    7dfe:	4643      	mov	r3, r8
    7e00:	7043      	strb	r3, [r0, #1]
    7e02:	68c3      	ldr	r3, [r0, #12]
    7e04:	2b00      	cmp	r3, #0
    7e06:	d1e4      	bne.n	7dd2 <rt_dec_dly+0x8a>
    7e08:	82b2      	strh	r2, [r6, #20]
    7e0a:	60f3      	str	r3, [r6, #12]
    7e0c:	6103      	str	r3, [r0, #16]
    7e0e:	bc1c      	pop	{r2, r3, r4}
    7e10:	4690      	mov	r8, r2
    7e12:	4699      	mov	r9, r3
    7e14:	46a2      	mov	sl, r4
    7e16:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7e18:	4652      	mov	r2, sl
    7e1a:	6045      	str	r5, [r0, #4]
    7e1c:	6050      	str	r0, [r2, #4]
    7e1e:	2f02      	cmp	r7, #2
    7e20:	d8cc      	bhi.n	7dbc <rt_dec_dly+0x74>
    7e22:	e7cc      	b.n	7dbe <rt_dec_dly+0x76>
    7e24:	82b2      	strh	r2, [r6, #20]
    7e26:	60f3      	str	r3, [r6, #12]
    7e28:	e7f1      	b.n	7e0e <rt_dec_dly+0xc6>
    7e2a:	46c0      	nop			; (mov r8, r8)
    7e2c:	200060a4 	.word	0x200060a4
    7e30:	2000608c 	.word	0x2000608c
    7e34:	20006088 	.word	0x20006088

00007e38 <rt_rmv_list>:
    7e38:	6883      	ldr	r3, [r0, #8]
    7e3a:	2b00      	cmp	r3, #0
    7e3c:	d006      	beq.n	7e4c <rt_rmv_list+0x14>
    7e3e:	6842      	ldr	r2, [r0, #4]
    7e40:	605a      	str	r2, [r3, #4]
    7e42:	6842      	ldr	r2, [r0, #4]
    7e44:	2a00      	cmp	r2, #0
    7e46:	d000      	beq.n	7e4a <rt_rmv_list+0x12>
    7e48:	6093      	str	r3, [r2, #8]
    7e4a:	4770      	bx	lr
    7e4c:	4b04      	ldr	r3, [pc, #16]	; (7e60 <rt_rmv_list+0x28>)
    7e4e:	e001      	b.n	7e54 <rt_rmv_list+0x1c>
    7e50:	1e13      	subs	r3, r2, #0
    7e52:	d0fa      	beq.n	7e4a <rt_rmv_list+0x12>
    7e54:	685a      	ldr	r2, [r3, #4]
    7e56:	4290      	cmp	r0, r2
    7e58:	d1fa      	bne.n	7e50 <rt_rmv_list+0x18>
    7e5a:	6842      	ldr	r2, [r0, #4]
    7e5c:	605a      	str	r2, [r3, #4]
    7e5e:	e7f4      	b.n	7e4a <rt_rmv_list+0x12>
    7e60:	2000608c 	.word	0x2000608c

00007e64 <rt_rmv_dly>:
    7e64:	6903      	ldr	r3, [r0, #16]
    7e66:	b510      	push	{r4, lr}
    7e68:	2b00      	cmp	r3, #0
    7e6a:	d00d      	beq.n	7e88 <rt_rmv_dly+0x24>
    7e6c:	68c2      	ldr	r2, [r0, #12]
    7e6e:	60da      	str	r2, [r3, #12]
    7e70:	68c1      	ldr	r1, [r0, #12]
    7e72:	2900      	cmp	r1, #0
    7e74:	d009      	beq.n	7e8a <rt_rmv_dly+0x26>
    7e76:	8a9c      	ldrh	r4, [r3, #20]
    7e78:	8a82      	ldrh	r2, [r0, #20]
    7e7a:	18a2      	adds	r2, r4, r2
    7e7c:	829a      	strh	r2, [r3, #20]
    7e7e:	610b      	str	r3, [r1, #16]
    7e80:	2300      	movs	r3, #0
    7e82:	60c3      	str	r3, [r0, #12]
    7e84:	2300      	movs	r3, #0
    7e86:	6103      	str	r3, [r0, #16]
    7e88:	bd10      	pop	{r4, pc}
    7e8a:	8299      	strh	r1, [r3, #20]
    7e8c:	e7fa      	b.n	7e84 <rt_rmv_dly+0x20>
    7e8e:	46c0      	nop			; (mov r8, r8)

00007e90 <rt_psq_enq>:
    7e90:	b570      	push	{r4, r5, r6, lr}
    7e92:	4c0f      	ldr	r4, [pc, #60]	; (7ed0 <rt_psq_enq+0x40>)
    7e94:	78e5      	ldrb	r5, [r4, #3]
    7e96:	f3ef 8310 	mrs	r3, PRIMASK
    7e9a:	b672      	cpsid	i
    7e9c:	78a3      	ldrb	r3, [r4, #2]
    7e9e:	429d      	cmp	r5, r3
    7ea0:	d907      	bls.n	7eb2 <rt_psq_enq+0x22>
    7ea2:	1c5a      	adds	r2, r3, #1
    7ea4:	7823      	ldrb	r3, [r4, #0]
    7ea6:	70a2      	strb	r2, [r4, #2]
    7ea8:	1c5a      	adds	r2, r3, #1
    7eaa:	4295      	cmp	r5, r2
    7eac:	d00d      	beq.n	7eca <rt_psq_enq+0x3a>
    7eae:	b2d2      	uxtb	r2, r2
    7eb0:	7022      	strb	r2, [r4, #0]
    7eb2:	b662      	cpsie	i
    7eb4:	429d      	cmp	r5, r3
    7eb6:	d904      	bls.n	7ec2 <rt_psq_enq+0x32>
    7eb8:	00db      	lsls	r3, r3, #3
    7eba:	18e3      	adds	r3, r4, r3
    7ebc:	6058      	str	r0, [r3, #4]
    7ebe:	6099      	str	r1, [r3, #8]
    7ec0:	bd70      	pop	{r4, r5, r6, pc}
    7ec2:	2002      	movs	r0, #2
    7ec4:	f7f9 fe24 	bl	1b10 <os_error>
    7ec8:	e7fa      	b.n	7ec0 <rt_psq_enq+0x30>
    7eca:	2200      	movs	r2, #0
    7ecc:	7022      	strb	r2, [r4, #0]
    7ece:	e7f0      	b.n	7eb2 <rt_psq_enq+0x22>
    7ed0:	20004c58 	.word	0x20004c58

00007ed4 <rt_evt_wait>:
    7ed4:	4b10      	ldr	r3, [pc, #64]	; (7f18 <rt_evt_wait+0x44>)
    7ed6:	b570      	push	{r4, r5, r6, lr}
    7ed8:	681b      	ldr	r3, [r3, #0]
    7eda:	000c      	movs	r4, r1
    7edc:	2a00      	cmp	r2, #0
    7ede:	d00b      	beq.n	7ef8 <rt_evt_wait+0x24>
    7ee0:	0005      	movs	r5, r0
    7ee2:	8b1a      	ldrh	r2, [r3, #24]
    7ee4:	2106      	movs	r1, #6
    7ee6:	4015      	ands	r5, r2
    7ee8:	42a8      	cmp	r0, r5
    7eea:	d00a      	beq.n	7f02 <rt_evt_wait+0x2e>
    7eec:	8358      	strh	r0, [r3, #26]
    7eee:	0020      	movs	r0, r4
    7ef0:	f000 fa94 	bl	841c <rt_block>
    7ef4:	2001      	movs	r0, #1
    7ef6:	e007      	b.n	7f08 <rt_evt_wait+0x34>
    7ef8:	8b1a      	ldrh	r2, [r3, #24]
    7efa:	0011      	movs	r1, r2
    7efc:	4001      	ands	r1, r0
    7efe:	d004      	beq.n	7f0a <rt_evt_wait+0x36>
    7f00:	8359      	strh	r1, [r3, #26]
    7f02:	4382      	bics	r2, r0
    7f04:	2002      	movs	r0, #2
    7f06:	831a      	strh	r2, [r3, #24]
    7f08:	bd70      	pop	{r4, r5, r6, pc}
    7f0a:	8358      	strh	r0, [r3, #26]
    7f0c:	2105      	movs	r1, #5
    7f0e:	0020      	movs	r0, r4
    7f10:	f000 fa84 	bl	841c <rt_block>
    7f14:	2001      	movs	r0, #1
    7f16:	e7f7      	b.n	7f08 <rt_evt_wait+0x34>
    7f18:	200060c0 	.word	0x200060c0

00007f1c <rt_evt_set>:
    7f1c:	3901      	subs	r1, #1
    7f1e:	4b14      	ldr	r3, [pc, #80]	; (7f70 <rt_evt_set+0x54>)
    7f20:	0089      	lsls	r1, r1, #2
    7f22:	b510      	push	{r4, lr}
    7f24:	58cc      	ldr	r4, [r1, r3]
    7f26:	2c00      	cmp	r4, #0
    7f28:	d008      	beq.n	7f3c <rt_evt_set+0x20>
    7f2a:	8b23      	ldrh	r3, [r4, #24]
    7f2c:	8b62      	ldrh	r2, [r4, #26]
    7f2e:	4318      	orrs	r0, r3
    7f30:	7863      	ldrb	r3, [r4, #1]
    7f32:	8320      	strh	r0, [r4, #24]
    7f34:	2b06      	cmp	r3, #6
    7f36:	d016      	beq.n	7f66 <rt_evt_set+0x4a>
    7f38:	2b05      	cmp	r3, #5
    7f3a:	d000      	beq.n	7f3e <rt_evt_set+0x22>
    7f3c:	bd10      	pop	{r4, pc}
    7f3e:	0013      	movs	r3, r2
    7f40:	4003      	ands	r3, r0
    7f42:	d0fb      	beq.n	7f3c <rt_evt_set+0x20>
    7f44:	8363      	strh	r3, [r4, #26]
    7f46:	4390      	bics	r0, r2
    7f48:	8320      	strh	r0, [r4, #24]
    7f4a:	0020      	movs	r0, r4
    7f4c:	f7ff ff8a 	bl	7e64 <rt_rmv_dly>
    7f50:	2301      	movs	r3, #1
    7f52:	0020      	movs	r0, r4
    7f54:	7063      	strb	r3, [r4, #1]
    7f56:	8b62      	ldrh	r2, [r4, #26]
    7f58:	2108      	movs	r1, #8
    7f5a:	f7ff fa1d 	bl	7398 <rt_ret_val2>
    7f5e:	0020      	movs	r0, r4
    7f60:	f000 fa36 	bl	83d0 <rt_dispatch>
    7f64:	e7ea      	b.n	7f3c <rt_evt_set+0x20>
    7f66:	0013      	movs	r3, r2
    7f68:	4003      	ands	r3, r0
    7f6a:	429a      	cmp	r2, r3
    7f6c:	d1e6      	bne.n	7f3c <rt_evt_set+0x20>
    7f6e:	e7ea      	b.n	7f46 <rt_evt_set+0x2a>
    7f70:	20004cdc 	.word	0x20004cdc

00007f74 <rt_evt_clr>:
    7f74:	3901      	subs	r1, #1
    7f76:	4b04      	ldr	r3, [pc, #16]	; (7f88 <rt_evt_clr+0x14>)
    7f78:	0089      	lsls	r1, r1, #2
    7f7a:	58cb      	ldr	r3, [r1, r3]
    7f7c:	2b00      	cmp	r3, #0
    7f7e:	d002      	beq.n	7f86 <rt_evt_clr+0x12>
    7f80:	8b1a      	ldrh	r2, [r3, #24]
    7f82:	4382      	bics	r2, r0
    7f84:	831a      	strh	r2, [r3, #24]
    7f86:	4770      	bx	lr
    7f88:	20004cdc 	.word	0x20004cdc

00007f8c <isr_evt_set>:
    7f8c:	3901      	subs	r1, #1
    7f8e:	4b06      	ldr	r3, [pc, #24]	; (7fa8 <isr_evt_set+0x1c>)
    7f90:	0089      	lsls	r1, r1, #2
    7f92:	58cb      	ldr	r3, [r1, r3]
    7f94:	b510      	push	{r4, lr}
    7f96:	2b00      	cmp	r3, #0
    7f98:	d005      	beq.n	7fa6 <isr_evt_set+0x1a>
    7f9a:	0001      	movs	r1, r0
    7f9c:	0018      	movs	r0, r3
    7f9e:	f7ff ff77 	bl	7e90 <rt_psq_enq>
    7fa2:	f000 f959 	bl	8258 <rt_psh_req>
    7fa6:	bd10      	pop	{r4, pc}
    7fa8:	20004cdc 	.word	0x20004cdc

00007fac <rt_evt_get>:
    7fac:	4b01      	ldr	r3, [pc, #4]	; (7fb4 <rt_evt_get+0x8>)
    7fae:	681b      	ldr	r3, [r3, #0]
    7fb0:	8b58      	ldrh	r0, [r3, #26]
    7fb2:	4770      	bx	lr
    7fb4:	200060c0 	.word	0x200060c0

00007fb8 <rt_evt_psh>:
    7fb8:	b510      	push	{r4, lr}
    7fba:	8b03      	ldrh	r3, [r0, #24]
    7fbc:	0004      	movs	r4, r0
    7fbe:	4319      	orrs	r1, r3
    7fc0:	7843      	ldrb	r3, [r0, #1]
    7fc2:	8301      	strh	r1, [r0, #24]
    7fc4:	8b42      	ldrh	r2, [r0, #26]
    7fc6:	2b06      	cmp	r3, #6
    7fc8:	d017      	beq.n	7ffa <rt_evt_psh+0x42>
    7fca:	2b05      	cmp	r3, #5
    7fcc:	d000      	beq.n	7fd0 <rt_evt_psh+0x18>
    7fce:	bd10      	pop	{r4, pc}
    7fd0:	0013      	movs	r3, r2
    7fd2:	400b      	ands	r3, r1
    7fd4:	d0fb      	beq.n	7fce <rt_evt_psh+0x16>
    7fd6:	8343      	strh	r3, [r0, #26]
    7fd8:	4391      	bics	r1, r2
    7fda:	8321      	strh	r1, [r4, #24]
    7fdc:	0020      	movs	r0, r4
    7fde:	f7ff ff41 	bl	7e64 <rt_rmv_dly>
    7fe2:	2301      	movs	r3, #1
    7fe4:	0020      	movs	r0, r4
    7fe6:	7063      	strb	r3, [r4, #1]
    7fe8:	8b62      	ldrh	r2, [r4, #26]
    7fea:	2108      	movs	r1, #8
    7fec:	f7ff f9d4 	bl	7398 <rt_ret_val2>
    7ff0:	0021      	movs	r1, r4
    7ff2:	4804      	ldr	r0, [pc, #16]	; (8004 <rt_evt_psh+0x4c>)
    7ff4:	f7ff fdd8 	bl	7ba8 <rt_put_prio>
    7ff8:	e7e9      	b.n	7fce <rt_evt_psh+0x16>
    7ffa:	0013      	movs	r3, r2
    7ffc:	400b      	ands	r3, r1
    7ffe:	429a      	cmp	r2, r3
    8000:	d1e5      	bne.n	7fce <rt_evt_psh+0x16>
    8002:	e7e9      	b.n	7fd8 <rt_evt_psh+0x20>
    8004:	2000608c 	.word	0x2000608c

00008008 <rt_suspend>:
    8008:	4b1c      	ldr	r3, [pc, #112]	; (807c <rt_suspend+0x74>)
    800a:	b510      	push	{r4, lr}
    800c:	681b      	ldr	r3, [r3, #0]
    800e:	2b00      	cmp	r3, #0
    8010:	db20      	blt.n	8054 <rt_suspend+0x4c>
    8012:	491b      	ldr	r1, [pc, #108]	; (8080 <rt_suspend+0x78>)
    8014:	095a      	lsrs	r2, r3, #5
    8016:	468c      	mov	ip, r1
    8018:	211f      	movs	r1, #31
    801a:	400b      	ands	r3, r1
    801c:	391e      	subs	r1, #30
    801e:	0008      	movs	r0, r1
    8020:	4098      	lsls	r0, r3
    8022:	0092      	lsls	r2, r2, #2
    8024:	4462      	add	r2, ip
    8026:	6010      	str	r0, [r2, #0]
    8028:	4816      	ldr	r0, [pc, #88]	; (8084 <rt_suspend+0x7c>)
    802a:	4a17      	ldr	r2, [pc, #92]	; (8088 <rt_suspend+0x80>)
    802c:	7001      	strb	r1, [r0, #0]
    802e:	6813      	ldr	r3, [r2, #0]
    8030:	0f1b      	lsrs	r3, r3, #28
    8032:	400b      	ands	r3, r1
    8034:	7043      	strb	r3, [r0, #1]
    8036:	06db      	lsls	r3, r3, #27
    8038:	6013      	str	r3, [r2, #0]
    803a:	4b14      	ldr	r3, [pc, #80]	; (808c <rt_suspend+0x84>)
    803c:	68da      	ldr	r2, [r3, #12]
    803e:	2a00      	cmp	r2, #0
    8040:	d019      	beq.n	8076 <rt_suspend+0x6e>
    8042:	8a9c      	ldrh	r4, [r3, #20]
    8044:	f7fe f9e6 	bl	6414 <sysUserTimerWakeupTime>
    8048:	0003      	movs	r3, r0
    804a:	0020      	movs	r0, r4
    804c:	429c      	cmp	r4, r3
    804e:	d900      	bls.n	8052 <rt_suspend+0x4a>
    8050:	0018      	movs	r0, r3
    8052:	bd10      	pop	{r4, pc}
    8054:	2005      	movs	r0, #5
    8056:	4b0e      	ldr	r3, [pc, #56]	; (8090 <rt_suspend+0x88>)
    8058:	490a      	ldr	r1, [pc, #40]	; (8084 <rt_suspend+0x7c>)
    805a:	6018      	str	r0, [r3, #0]
    805c:	2301      	movs	r3, #1
    805e:	4a0a      	ldr	r2, [pc, #40]	; (8088 <rt_suspend+0x80>)
    8060:	700b      	strb	r3, [r1, #0]
    8062:	6813      	ldr	r3, [r2, #0]
    8064:	0e9b      	lsrs	r3, r3, #26
    8066:	4003      	ands	r3, r0
    8068:	704b      	strb	r3, [r1, #1]
    806a:	065b      	lsls	r3, r3, #25
    806c:	6013      	str	r3, [r2, #0]
    806e:	4b07      	ldr	r3, [pc, #28]	; (808c <rt_suspend+0x84>)
    8070:	68da      	ldr	r2, [r3, #12]
    8072:	2a00      	cmp	r2, #0
    8074:	d1e5      	bne.n	8042 <rt_suspend+0x3a>
    8076:	4c07      	ldr	r4, [pc, #28]	; (8094 <rt_suspend+0x8c>)
    8078:	e7e4      	b.n	8044 <rt_suspend+0x3c>
    807a:	46c0      	nop			; (mov r8, r8)
    807c:	200060bc 	.word	0x200060bc
    8080:	e000e180 	.word	0xe000e180
    8084:	20006045 	.word	0x20006045
    8088:	e000ed04 	.word	0xe000ed04
    808c:	200060a4 	.word	0x200060a4
    8090:	e000e010 	.word	0xe000e010
    8094:	0000ffff 	.word	0x0000ffff

00008098 <rt_resume>:
    8098:	b5f0      	push	{r4, r5, r6, r7, lr}
    809a:	4647      	mov	r7, r8
    809c:	4b32      	ldr	r3, [pc, #200]	; (8168 <rt_resume+0xd0>)
    809e:	b480      	push	{r7}
    80a0:	0007      	movs	r7, r0
    80a2:	6818      	ldr	r0, [r3, #0]
    80a4:	2301      	movs	r3, #1
    80a6:	7043      	strb	r3, [r0, #1]
    80a8:	4698      	mov	r8, r3
    80aa:	f7ff fdb7 	bl	7c1c <rt_put_rdy_first>
    80ae:	2200      	movs	r2, #0
    80b0:	4b2e      	ldr	r3, [pc, #184]	; (816c <rt_resume+0xd4>)
    80b2:	4e2f      	ldr	r6, [pc, #188]	; (8170 <rt_resume+0xd8>)
    80b4:	601a      	str	r2, [r3, #0]
    80b6:	68f3      	ldr	r3, [r6, #12]
    80b8:	2b00      	cmp	r3, #0
    80ba:	d04f      	beq.n	815c <rt_resume+0xc4>
    80bc:	8ab3      	ldrh	r3, [r6, #20]
    80be:	429f      	cmp	r7, r3
    80c0:	d336      	bcc.n	8130 <rt_resume+0x98>
    80c2:	4d2c      	ldr	r5, [pc, #176]	; (8174 <rt_resume+0xdc>)
    80c4:	1afc      	subs	r4, r7, r3
    80c6:	682a      	ldr	r2, [r5, #0]
    80c8:	4694      	mov	ip, r2
    80ca:	4463      	add	r3, ip
    80cc:	602b      	str	r3, [r5, #0]
    80ce:	4643      	mov	r3, r8
    80d0:	82b3      	strh	r3, [r6, #20]
    80d2:	e006      	b.n	80e2 <rt_resume+0x4a>
    80d4:	682b      	ldr	r3, [r5, #0]
    80d6:	3c01      	subs	r4, #1
    80d8:	3301      	adds	r3, #1
    80da:	602b      	str	r3, [r5, #0]
    80dc:	68f3      	ldr	r3, [r6, #12]
    80de:	2b00      	cmp	r3, #0
    80e0:	d003      	beq.n	80ea <rt_resume+0x52>
    80e2:	f7ff fe31 	bl	7d48 <rt_dec_dly>
    80e6:	2c00      	cmp	r4, #0
    80e8:	d1f4      	bne.n	80d4 <rt_resume+0x3c>
    80ea:	0038      	movs	r0, r7
    80ec:	f7fe f99e 	bl	642c <sysUserTimerUpdate>
    80f0:	4821      	ldr	r0, [pc, #132]	; (8178 <rt_resume+0xe0>)
    80f2:	f7ff fd7f 	bl	7bf4 <rt_get_first>
    80f6:	f000 f963 	bl	83c0 <rt_switch_req>
    80fa:	4b20      	ldr	r3, [pc, #128]	; (817c <rt_resume+0xe4>)
    80fc:	681b      	ldr	r3, [r3, #0]
    80fe:	2b00      	cmp	r3, #0
    8100:	db1d      	blt.n	813e <rt_resume+0xa6>
    8102:	491f      	ldr	r1, [pc, #124]	; (8180 <rt_resume+0xe8>)
    8104:	095a      	lsrs	r2, r3, #5
    8106:	468c      	mov	ip, r1
    8108:	211f      	movs	r1, #31
    810a:	400b      	ands	r3, r1
    810c:	391e      	subs	r1, #30
    810e:	4099      	lsls	r1, r3
    8110:	0092      	lsls	r2, r2, #2
    8112:	4462      	add	r2, ip
    8114:	6011      	str	r1, [r2, #0]
    8116:	2100      	movs	r1, #0
    8118:	4a1a      	ldr	r2, [pc, #104]	; (8184 <rt_resume+0xec>)
    811a:	7011      	strb	r1, [r2, #0]
    811c:	7890      	ldrb	r0, [r2, #2]
    811e:	7853      	ldrb	r3, [r2, #1]
    8120:	4303      	orrs	r3, r0
    8122:	4819      	ldr	r0, [pc, #100]	; (8188 <rt_resume+0xf0>)
    8124:	071b      	lsls	r3, r3, #28
    8126:	6003      	str	r3, [r0, #0]
    8128:	7091      	strb	r1, [r2, #2]
    812a:	bc04      	pop	{r2}
    812c:	4690      	mov	r8, r2
    812e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8130:	4910      	ldr	r1, [pc, #64]	; (8174 <rt_resume+0xdc>)
    8132:	1bdb      	subs	r3, r3, r7
    8134:	680a      	ldr	r2, [r1, #0]
    8136:	82b3      	strh	r3, [r6, #20]
    8138:	19d2      	adds	r2, r2, r7
    813a:	600a      	str	r2, [r1, #0]
    813c:	e7d5      	b.n	80ea <rt_resume+0x52>
    813e:	2207      	movs	r2, #7
    8140:	2000      	movs	r0, #0
    8142:	4910      	ldr	r1, [pc, #64]	; (8184 <rt_resume+0xec>)
    8144:	4b11      	ldr	r3, [pc, #68]	; (818c <rt_resume+0xf4>)
    8146:	601a      	str	r2, [r3, #0]
    8148:	7008      	strb	r0, [r1, #0]
    814a:	788b      	ldrb	r3, [r1, #2]
    814c:	784a      	ldrb	r2, [r1, #1]
    814e:	009b      	lsls	r3, r3, #2
    8150:	4313      	orrs	r3, r2
    8152:	4a0d      	ldr	r2, [pc, #52]	; (8188 <rt_resume+0xf0>)
    8154:	069b      	lsls	r3, r3, #26
    8156:	6013      	str	r3, [r2, #0]
    8158:	7088      	strb	r0, [r1, #2]
    815a:	e7e6      	b.n	812a <rt_resume+0x92>
    815c:	4a05      	ldr	r2, [pc, #20]	; (8174 <rt_resume+0xdc>)
    815e:	6813      	ldr	r3, [r2, #0]
    8160:	19db      	adds	r3, r3, r7
    8162:	6013      	str	r3, [r2, #0]
    8164:	e7c1      	b.n	80ea <rt_resume+0x52>
    8166:	46c0      	nop			; (mov r8, r8)
    8168:	200060c0 	.word	0x200060c0
    816c:	200060fc 	.word	0x200060fc
    8170:	200060a4 	.word	0x200060a4
    8174:	20006088 	.word	0x20006088
    8178:	2000608c 	.word	0x2000608c
    817c:	200060bc 	.word	0x200060bc
    8180:	e000e100 	.word	0xe000e100
    8184:	20006045 	.word	0x20006045
    8188:	e000ed04 	.word	0xe000ed04
    818c:	e000e010 	.word	0xe000e010

00008190 <rt_tsk_lock>:
    8190:	4b13      	ldr	r3, [pc, #76]	; (81e0 <rt_tsk_lock+0x50>)
    8192:	681b      	ldr	r3, [r3, #0]
    8194:	2b00      	cmp	r3, #0
    8196:	db14      	blt.n	81c2 <rt_tsk_lock+0x32>
    8198:	4912      	ldr	r1, [pc, #72]	; (81e4 <rt_tsk_lock+0x54>)
    819a:	095a      	lsrs	r2, r3, #5
    819c:	468c      	mov	ip, r1
    819e:	211f      	movs	r1, #31
    81a0:	400b      	ands	r3, r1
    81a2:	391e      	subs	r1, #30
    81a4:	0008      	movs	r0, r1
    81a6:	4098      	lsls	r0, r3
    81a8:	0092      	lsls	r2, r2, #2
    81aa:	4462      	add	r2, ip
    81ac:	6010      	str	r0, [r2, #0]
    81ae:	480e      	ldr	r0, [pc, #56]	; (81e8 <rt_tsk_lock+0x58>)
    81b0:	4a0e      	ldr	r2, [pc, #56]	; (81ec <rt_tsk_lock+0x5c>)
    81b2:	7001      	strb	r1, [r0, #0]
    81b4:	6813      	ldr	r3, [r2, #0]
    81b6:	0f1b      	lsrs	r3, r3, #28
    81b8:	400b      	ands	r3, r1
    81ba:	7043      	strb	r3, [r0, #1]
    81bc:	06db      	lsls	r3, r3, #27
    81be:	6013      	str	r3, [r2, #0]
    81c0:	4770      	bx	lr
    81c2:	2005      	movs	r0, #5
    81c4:	4b0a      	ldr	r3, [pc, #40]	; (81f0 <rt_tsk_lock+0x60>)
    81c6:	4908      	ldr	r1, [pc, #32]	; (81e8 <rt_tsk_lock+0x58>)
    81c8:	6018      	str	r0, [r3, #0]
    81ca:	2301      	movs	r3, #1
    81cc:	4a07      	ldr	r2, [pc, #28]	; (81ec <rt_tsk_lock+0x5c>)
    81ce:	700b      	strb	r3, [r1, #0]
    81d0:	6813      	ldr	r3, [r2, #0]
    81d2:	0e9b      	lsrs	r3, r3, #26
    81d4:	4003      	ands	r3, r0
    81d6:	704b      	strb	r3, [r1, #1]
    81d8:	065b      	lsls	r3, r3, #25
    81da:	6013      	str	r3, [r2, #0]
    81dc:	e7f0      	b.n	81c0 <rt_tsk_lock+0x30>
    81de:	46c0      	nop			; (mov r8, r8)
    81e0:	200060bc 	.word	0x200060bc
    81e4:	e000e180 	.word	0xe000e180
    81e8:	20006045 	.word	0x20006045
    81ec:	e000ed04 	.word	0xe000ed04
    81f0:	e000e010 	.word	0xe000e010

000081f4 <rt_tsk_unlock>:
    81f4:	4b13      	ldr	r3, [pc, #76]	; (8244 <rt_tsk_unlock+0x50>)
    81f6:	681b      	ldr	r3, [r3, #0]
    81f8:	2b00      	cmp	r3, #0
    81fa:	db14      	blt.n	8226 <rt_tsk_unlock+0x32>
    81fc:	4912      	ldr	r1, [pc, #72]	; (8248 <rt_tsk_unlock+0x54>)
    81fe:	095a      	lsrs	r2, r3, #5
    8200:	468c      	mov	ip, r1
    8202:	211f      	movs	r1, #31
    8204:	400b      	ands	r3, r1
    8206:	391e      	subs	r1, #30
    8208:	4099      	lsls	r1, r3
    820a:	0092      	lsls	r2, r2, #2
    820c:	4462      	add	r2, ip
    820e:	6011      	str	r1, [r2, #0]
    8210:	2100      	movs	r1, #0
    8212:	4a0e      	ldr	r2, [pc, #56]	; (824c <rt_tsk_unlock+0x58>)
    8214:	7011      	strb	r1, [r2, #0]
    8216:	7890      	ldrb	r0, [r2, #2]
    8218:	7853      	ldrb	r3, [r2, #1]
    821a:	4303      	orrs	r3, r0
    821c:	480c      	ldr	r0, [pc, #48]	; (8250 <rt_tsk_unlock+0x5c>)
    821e:	071b      	lsls	r3, r3, #28
    8220:	6003      	str	r3, [r0, #0]
    8222:	7091      	strb	r1, [r2, #2]
    8224:	4770      	bx	lr
    8226:	2207      	movs	r2, #7
    8228:	2000      	movs	r0, #0
    822a:	4908      	ldr	r1, [pc, #32]	; (824c <rt_tsk_unlock+0x58>)
    822c:	4b09      	ldr	r3, [pc, #36]	; (8254 <rt_tsk_unlock+0x60>)
    822e:	601a      	str	r2, [r3, #0]
    8230:	7008      	strb	r0, [r1, #0]
    8232:	788b      	ldrb	r3, [r1, #2]
    8234:	784a      	ldrb	r2, [r1, #1]
    8236:	009b      	lsls	r3, r3, #2
    8238:	4313      	orrs	r3, r2
    823a:	4a05      	ldr	r2, [pc, #20]	; (8250 <rt_tsk_unlock+0x5c>)
    823c:	069b      	lsls	r3, r3, #26
    823e:	6013      	str	r3, [r2, #0]
    8240:	7088      	strb	r0, [r1, #2]
    8242:	e7ef      	b.n	8224 <rt_tsk_unlock+0x30>
    8244:	200060bc 	.word	0x200060bc
    8248:	e000e100 	.word	0xe000e100
    824c:	20006045 	.word	0x20006045
    8250:	e000ed04 	.word	0xe000ed04
    8254:	e000e010 	.word	0xe000e010

00008258 <rt_psh_req>:
    8258:	4b05      	ldr	r3, [pc, #20]	; (8270 <rt_psh_req+0x18>)
    825a:	781a      	ldrb	r2, [r3, #0]
    825c:	2a00      	cmp	r2, #0
    825e:	d002      	beq.n	8266 <rt_psh_req+0xe>
    8260:	2201      	movs	r2, #1
    8262:	709a      	strb	r2, [r3, #2]
    8264:	4770      	bx	lr
    8266:	2280      	movs	r2, #128	; 0x80
    8268:	4b02      	ldr	r3, [pc, #8]	; (8274 <rt_psh_req+0x1c>)
    826a:	0552      	lsls	r2, r2, #21
    826c:	601a      	str	r2, [r3, #0]
    826e:	e7f9      	b.n	8264 <rt_psh_req+0xc>
    8270:	20006045 	.word	0x20006045
    8274:	e000ed04 	.word	0xe000ed04

00008278 <rt_pop_req>:
    8278:	4b1c      	ldr	r3, [pc, #112]	; (82ec <rt_pop_req+0x74>)
    827a:	b570      	push	{r4, r5, r6, lr}
    827c:	6818      	ldr	r0, [r3, #0]
    827e:	2301      	movs	r3, #1
    8280:	7043      	strb	r3, [r0, #1]
    8282:	f7ff fccb 	bl	7c1c <rt_put_rdy_first>
    8286:	4d1a      	ldr	r5, [pc, #104]	; (82f0 <rt_pop_req+0x78>)
    8288:	78ab      	ldrb	r3, [r5, #2]
    828a:	786c      	ldrb	r4, [r5, #1]
    828c:	2b00      	cmp	r3, #0
    828e:	d112      	bne.n	82b6 <rt_pop_req+0x3e>
    8290:	e024      	b.n	82dc <rt_pop_req+0x64>
    8292:	2a01      	cmp	r2, #1
    8294:	d01e      	beq.n	82d4 <rt_pop_req+0x5c>
    8296:	f7ff fb13 	bl	78c0 <rt_sem_psh>
    829a:	78eb      	ldrb	r3, [r5, #3]
    829c:	3401      	adds	r4, #1
    829e:	429c      	cmp	r4, r3
    82a0:	d016      	beq.n	82d0 <rt_pop_req+0x58>
    82a2:	f3ef 8310 	mrs	r3, PRIMASK
    82a6:	b672      	cpsid	i
    82a8:	78ab      	ldrb	r3, [r5, #2]
    82aa:	3b01      	subs	r3, #1
    82ac:	b2db      	uxtb	r3, r3
    82ae:	70ab      	strb	r3, [r5, #2]
    82b0:	b662      	cpsie	i
    82b2:	2b00      	cmp	r3, #0
    82b4:	d012      	beq.n	82dc <rt_pop_req+0x64>
    82b6:	00e3      	lsls	r3, r4, #3
    82b8:	18eb      	adds	r3, r5, r3
    82ba:	6858      	ldr	r0, [r3, #4]
    82bc:	7802      	ldrb	r2, [r0, #0]
    82be:	2a00      	cmp	r2, #0
    82c0:	d1e7      	bne.n	8292 <rt_pop_req+0x1a>
    82c2:	8919      	ldrh	r1, [r3, #8]
    82c4:	f7ff fe78 	bl	7fb8 <rt_evt_psh>
    82c8:	78eb      	ldrb	r3, [r5, #3]
    82ca:	3401      	adds	r4, #1
    82cc:	429c      	cmp	r4, r3
    82ce:	d1e8      	bne.n	82a2 <rt_pop_req+0x2a>
    82d0:	2400      	movs	r4, #0
    82d2:	e7e6      	b.n	82a2 <rt_pop_req+0x2a>
    82d4:	6899      	ldr	r1, [r3, #8]
    82d6:	f7ff fbf9 	bl	7acc <rt_mbx_psh>
    82da:	e7de      	b.n	829a <rt_pop_req+0x22>
    82dc:	706c      	strb	r4, [r5, #1]
    82de:	4805      	ldr	r0, [pc, #20]	; (82f4 <rt_pop_req+0x7c>)
    82e0:	f7ff fc88 	bl	7bf4 <rt_get_first>
    82e4:	f000 f86c 	bl	83c0 <rt_switch_req>
    82e8:	bd70      	pop	{r4, r5, r6, pc}
    82ea:	46c0      	nop			; (mov r8, r8)
    82ec:	200060c0 	.word	0x200060c0
    82f0:	20004c58 	.word	0x20004c58
    82f4:	2000608c 	.word	0x2000608c

000082f8 <os_tick_init>:
    82f8:	4b09      	ldr	r3, [pc, #36]	; (8320 <os_tick_init+0x28>)
    82fa:	21ff      	movs	r1, #255	; 0xff
    82fc:	681a      	ldr	r2, [r3, #0]
    82fe:	4b09      	ldr	r3, [pc, #36]	; (8324 <os_tick_init+0x2c>)
    8300:	2001      	movs	r0, #1
    8302:	601a      	str	r2, [r3, #0]
    8304:	2200      	movs	r2, #0
    8306:	4b08      	ldr	r3, [pc, #32]	; (8328 <os_tick_init+0x30>)
    8308:	0609      	lsls	r1, r1, #24
    830a:	601a      	str	r2, [r3, #0]
    830c:	4b07      	ldr	r3, [pc, #28]	; (832c <os_tick_init+0x34>)
    830e:	3207      	adds	r2, #7
    8310:	601a      	str	r2, [r3, #0]
    8312:	4a07      	ldr	r2, [pc, #28]	; (8330 <os_tick_init+0x38>)
    8314:	4240      	negs	r0, r0
    8316:	6813      	ldr	r3, [r2, #0]
    8318:	430b      	orrs	r3, r1
    831a:	6013      	str	r3, [r2, #0]
    831c:	4770      	bx	lr
    831e:	46c0      	nop			; (mov r8, r8)
    8320:	00008b40 	.word	0x00008b40
    8324:	e000e014 	.word	0xe000e014
    8328:	e000e018 	.word	0xe000e018
    832c:	e000e010 	.word	0xe000e010
    8330:	e000ed20 	.word	0xe000ed20

00008334 <os_tick_val>:
    8334:	4b02      	ldr	r3, [pc, #8]	; (8340 <os_tick_val+0xc>)
    8336:	6818      	ldr	r0, [r3, #0]
    8338:	4b02      	ldr	r3, [pc, #8]	; (8344 <os_tick_val+0x10>)
    833a:	681b      	ldr	r3, [r3, #0]
    833c:	1a18      	subs	r0, r3, r0
    833e:	4770      	bx	lr
    8340:	e000e018 	.word	0xe000e018
    8344:	00008b40 	.word	0x00008b40

00008348 <os_tick_ovf>:
    8348:	4b02      	ldr	r3, [pc, #8]	; (8354 <os_tick_ovf+0xc>)
    834a:	6818      	ldr	r0, [r3, #0]
    834c:	0140      	lsls	r0, r0, #5
    834e:	0fc0      	lsrs	r0, r0, #31
    8350:	4770      	bx	lr
    8352:	46c0      	nop			; (mov r8, r8)
    8354:	e000ed04 	.word	0xe000ed04

00008358 <os_tick_irqack>:
    8358:	4770      	bx	lr
    835a:	46c0      	nop			; (mov r8, r8)

0000835c <rt_systick>:
    835c:	4b0b      	ldr	r3, [pc, #44]	; (838c <rt_systick+0x30>)
    835e:	b510      	push	{r4, lr}
    8360:	6818      	ldr	r0, [r3, #0]
    8362:	2301      	movs	r3, #1
    8364:	7043      	strb	r3, [r0, #1]
    8366:	f7ff fc59 	bl	7c1c <rt_put_rdy_first>
    836a:	f000 faeb 	bl	8944 <rt_chk_robin>
    836e:	4a08      	ldr	r2, [pc, #32]	; (8390 <rt_systick+0x34>)
    8370:	6813      	ldr	r3, [r2, #0]
    8372:	3301      	adds	r3, #1
    8374:	6013      	str	r3, [r2, #0]
    8376:	f7ff fce7 	bl	7d48 <rt_dec_dly>
    837a:	f7fd ffed 	bl	6358 <sysTimerTick>
    837e:	4805      	ldr	r0, [pc, #20]	; (8394 <rt_systick+0x38>)
    8380:	f7ff fc38 	bl	7bf4 <rt_get_first>
    8384:	f000 f81c 	bl	83c0 <rt_switch_req>
    8388:	bd10      	pop	{r4, pc}
    838a:	46c0      	nop			; (mov r8, r8)
    838c:	200060c0 	.word	0x200060c0
    8390:	20006088 	.word	0x20006088
    8394:	2000608c 	.word	0x2000608c

00008398 <rt_stk_check>:
    8398:	4b07      	ldr	r3, [pc, #28]	; (83b8 <rt_stk_check+0x20>)
    839a:	b510      	push	{r4, lr}
    839c:	681b      	ldr	r3, [r3, #0]
    839e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    83a0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    83a2:	429a      	cmp	r2, r3
    83a4:	d803      	bhi.n	83ae <rt_stk_check+0x16>
    83a6:	4b05      	ldr	r3, [pc, #20]	; (83bc <rt_stk_check+0x24>)
    83a8:	6812      	ldr	r2, [r2, #0]
    83aa:	429a      	cmp	r2, r3
    83ac:	d002      	beq.n	83b4 <rt_stk_check+0x1c>
    83ae:	2001      	movs	r0, #1
    83b0:	f7f9 fbae 	bl	1b10 <os_error>
    83b4:	bd10      	pop	{r4, pc}
    83b6:	46c0      	nop			; (mov r8, r8)
    83b8:	200060c0 	.word	0x200060c0
    83bc:	e25a2ea5 	.word	0xe25a2ea5

000083c0 <rt_switch_req>:
    83c0:	4b02      	ldr	r3, [pc, #8]	; (83cc <rt_switch_req+0xc>)
    83c2:	6058      	str	r0, [r3, #4]
    83c4:	2302      	movs	r3, #2
    83c6:	7043      	strb	r3, [r0, #1]
    83c8:	4770      	bx	lr
    83ca:	46c0      	nop			; (mov r8, r8)
    83cc:	200060c0 	.word	0x200060c0

000083d0 <rt_dispatch>:
    83d0:	b570      	push	{r4, r5, r6, lr}
    83d2:	1e04      	subs	r4, r0, #0
    83d4:	d015      	beq.n	8402 <rt_dispatch+0x32>
    83d6:	4d0f      	ldr	r5, [pc, #60]	; (8414 <rt_dispatch+0x44>)
    83d8:	78a2      	ldrb	r2, [r4, #2]
    83da:	6828      	ldr	r0, [r5, #0]
    83dc:	7883      	ldrb	r3, [r0, #2]
    83de:	429a      	cmp	r2, r3
    83e0:	d806      	bhi.n	83f0 <rt_dispatch+0x20>
    83e2:	2301      	movs	r3, #1
    83e4:	0021      	movs	r1, r4
    83e6:	7063      	strb	r3, [r4, #1]
    83e8:	480b      	ldr	r0, [pc, #44]	; (8418 <rt_dispatch+0x48>)
    83ea:	f7ff fbdd 	bl	7ba8 <rt_put_prio>
    83ee:	bd70      	pop	{r4, r5, r6, pc}
    83f0:	f7ff fc14 	bl	7c1c <rt_put_rdy_first>
    83f4:	2301      	movs	r3, #1
    83f6:	682a      	ldr	r2, [r5, #0]
    83f8:	7053      	strb	r3, [r2, #1]
    83fa:	3301      	adds	r3, #1
    83fc:	606c      	str	r4, [r5, #4]
    83fe:	7063      	strb	r3, [r4, #1]
    8400:	e7f5      	b.n	83ee <rt_dispatch+0x1e>
    8402:	4805      	ldr	r0, [pc, #20]	; (8418 <rt_dispatch+0x48>)
    8404:	f7ff fbf6 	bl	7bf4 <rt_get_first>
    8408:	4b02      	ldr	r3, [pc, #8]	; (8414 <rt_dispatch+0x44>)
    840a:	6058      	str	r0, [r3, #4]
    840c:	2302      	movs	r3, #2
    840e:	7043      	strb	r3, [r0, #1]
    8410:	e7ed      	b.n	83ee <rt_dispatch+0x1e>
    8412:	46c0      	nop			; (mov r8, r8)
    8414:	200060c0 	.word	0x200060c0
    8418:	2000608c 	.word	0x2000608c

0000841c <rt_block>:
    841c:	b570      	push	{r4, r5, r6, lr}
    841e:	000d      	movs	r5, r1
    8420:	2800      	cmp	r0, #0
    8422:	d00f      	beq.n	8444 <rt_block+0x28>
    8424:	4b08      	ldr	r3, [pc, #32]	; (8448 <rt_block+0x2c>)
    8426:	4c09      	ldr	r4, [pc, #36]	; (844c <rt_block+0x30>)
    8428:	4298      	cmp	r0, r3
    842a:	d003      	beq.n	8434 <rt_block+0x18>
    842c:	0001      	movs	r1, r0
    842e:	6820      	ldr	r0, [r4, #0]
    8430:	f7ff fc58 	bl	7ce4 <rt_put_dly>
    8434:	6823      	ldr	r3, [r4, #0]
    8436:	4806      	ldr	r0, [pc, #24]	; (8450 <rt_block+0x34>)
    8438:	705d      	strb	r5, [r3, #1]
    843a:	f7ff fbdb 	bl	7bf4 <rt_get_first>
    843e:	2302      	movs	r3, #2
    8440:	6060      	str	r0, [r4, #4]
    8442:	7043      	strb	r3, [r0, #1]
    8444:	bd70      	pop	{r4, r5, r6, pc}
    8446:	46c0      	nop			; (mov r8, r8)
    8448:	0000ffff 	.word	0x0000ffff
    844c:	200060c0 	.word	0x200060c0
    8450:	2000608c 	.word	0x2000608c

00008454 <rt_tsk_pass>:
    8454:	b570      	push	{r4, r5, r6, lr}
    8456:	f7ff fbeb 	bl	7c30 <rt_get_same_rdy_prio>
    845a:	1e04      	subs	r4, r0, #0
    845c:	d00a      	beq.n	8474 <rt_tsk_pass+0x20>
    845e:	4d06      	ldr	r5, [pc, #24]	; (8478 <rt_tsk_pass+0x24>)
    8460:	4806      	ldr	r0, [pc, #24]	; (847c <rt_tsk_pass+0x28>)
    8462:	6829      	ldr	r1, [r5, #0]
    8464:	f7ff fba0 	bl	7ba8 <rt_put_prio>
    8468:	2301      	movs	r3, #1
    846a:	682a      	ldr	r2, [r5, #0]
    846c:	7053      	strb	r3, [r2, #1]
    846e:	3301      	adds	r3, #1
    8470:	606c      	str	r4, [r5, #4]
    8472:	7063      	strb	r3, [r4, #1]
    8474:	bd70      	pop	{r4, r5, r6, pc}
    8476:	46c0      	nop			; (mov r8, r8)
    8478:	200060c0 	.word	0x200060c0
    847c:	2000608c 	.word	0x2000608c

00008480 <rt_tsk_self>:
    8480:	4b03      	ldr	r3, [pc, #12]	; (8490 <rt_tsk_self+0x10>)
    8482:	681b      	ldr	r3, [r3, #0]
    8484:	2b00      	cmp	r3, #0
    8486:	d001      	beq.n	848c <rt_tsk_self+0xc>
    8488:	78d8      	ldrb	r0, [r3, #3]
    848a:	4770      	bx	lr
    848c:	2000      	movs	r0, #0
    848e:	e7fc      	b.n	848a <rt_tsk_self+0xa>
    8490:	200060c0 	.word	0x200060c0

00008494 <rt_tsk_prio>:
    8494:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8496:	2800      	cmp	r0, #0
    8498:	d10c      	bne.n	84b4 <rt_tsk_prio+0x20>
    849a:	2224      	movs	r2, #36	; 0x24
    849c:	4c27      	ldr	r4, [pc, #156]	; (853c <rt_tsk_prio+0xa8>)
    849e:	6823      	ldr	r3, [r4, #0]
    84a0:	7099      	strb	r1, [r3, #2]
    84a2:	5499      	strb	r1, [r3, r2]
    84a4:	4d26      	ldr	r5, [pc, #152]	; (8540 <rt_tsk_prio+0xac>)
    84a6:	686a      	ldr	r2, [r5, #4]
    84a8:	7892      	ldrb	r2, [r2, #2]
    84aa:	428a      	cmp	r2, r1
    84ac:	d82c      	bhi.n	8508 <rt_tsk_prio+0x74>
    84ae:	2200      	movs	r2, #0
    84b0:	0010      	movs	r0, r2
    84b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    84b4:	4b23      	ldr	r3, [pc, #140]	; (8544 <rt_tsk_prio+0xb0>)
    84b6:	22ff      	movs	r2, #255	; 0xff
    84b8:	881b      	ldrh	r3, [r3, #0]
    84ba:	4298      	cmp	r0, r3
    84bc:	d8f8      	bhi.n	84b0 <rt_tsk_prio+0x1c>
    84be:	1e43      	subs	r3, r0, #1
    84c0:	4821      	ldr	r0, [pc, #132]	; (8548 <rt_tsk_prio+0xb4>)
    84c2:	009b      	lsls	r3, r3, #2
    84c4:	581d      	ldr	r5, [r3, r0]
    84c6:	2d00      	cmp	r5, #0
    84c8:	d0f2      	beq.n	84b0 <rt_tsk_prio+0x1c>
    84ca:	2324      	movs	r3, #36	; 0x24
    84cc:	4c1b      	ldr	r4, [pc, #108]	; (853c <rt_tsk_prio+0xa8>)
    84ce:	70a9      	strb	r1, [r5, #2]
    84d0:	54e9      	strb	r1, [r5, r3]
    84d2:	6823      	ldr	r3, [r4, #0]
    84d4:	429d      	cmp	r5, r3
    84d6:	d0e5      	beq.n	84a4 <rt_tsk_prio+0x10>
    84d8:	0028      	movs	r0, r5
    84da:	f7ff fbbb 	bl	7c54 <rt_resort_prio>
    84de:	786d      	ldrb	r5, [r5, #1]
    84e0:	2d01      	cmp	r5, #1
    84e2:	d1e4      	bne.n	84ae <rt_tsk_prio+0x1a>
    84e4:	4f16      	ldr	r7, [pc, #88]	; (8540 <rt_tsk_prio+0xac>)
    84e6:	0038      	movs	r0, r7
    84e8:	f7ff fb84 	bl	7bf4 <rt_get_first>
    84ec:	1e06      	subs	r6, r0, #0
    84ee:	d023      	beq.n	8538 <rt_tsk_prio+0xa4>
    84f0:	6820      	ldr	r0, [r4, #0]
    84f2:	78b2      	ldrb	r2, [r6, #2]
    84f4:	7883      	ldrb	r3, [r0, #2]
    84f6:	429a      	cmp	r2, r3
    84f8:	d815      	bhi.n	8526 <rt_tsk_prio+0x92>
    84fa:	7075      	strb	r5, [r6, #1]
    84fc:	0031      	movs	r1, r6
    84fe:	0038      	movs	r0, r7
    8500:	f7ff fb52 	bl	7ba8 <rt_put_prio>
    8504:	2200      	movs	r2, #0
    8506:	e7d3      	b.n	84b0 <rt_tsk_prio+0x1c>
    8508:	0019      	movs	r1, r3
    850a:	0028      	movs	r0, r5
    850c:	f7ff fb4c 	bl	7ba8 <rt_put_prio>
    8510:	2301      	movs	r3, #1
    8512:	0028      	movs	r0, r5
    8514:	6822      	ldr	r2, [r4, #0]
    8516:	7053      	strb	r3, [r2, #1]
    8518:	f7ff fb6c 	bl	7bf4 <rt_get_first>
    851c:	2302      	movs	r3, #2
    851e:	6060      	str	r0, [r4, #4]
    8520:	2200      	movs	r2, #0
    8522:	7043      	strb	r3, [r0, #1]
    8524:	e7c4      	b.n	84b0 <rt_tsk_prio+0x1c>
    8526:	f7ff fb79 	bl	7c1c <rt_put_rdy_first>
    852a:	6823      	ldr	r3, [r4, #0]
    852c:	2200      	movs	r2, #0
    852e:	705d      	strb	r5, [r3, #1]
    8530:	2302      	movs	r3, #2
    8532:	6066      	str	r6, [r4, #4]
    8534:	7073      	strb	r3, [r6, #1]
    8536:	e7bb      	b.n	84b0 <rt_tsk_prio+0x1c>
    8538:	0038      	movs	r0, r7
    853a:	e7ed      	b.n	8518 <rt_tsk_prio+0x84>
    853c:	200060c0 	.word	0x200060c0
    8540:	2000608c 	.word	0x2000608c
    8544:	00008b2c 	.word	0x00008b2c
    8548:	20004cdc 	.word	0x20004cdc

0000854c <rt_tsk_create>:
    854c:	b5f0      	push	{r4, r5, r6, r7, lr}
    854e:	4647      	mov	r7, r8
    8550:	b480      	push	{r7}
    8552:	001f      	movs	r7, r3
    8554:	23ff      	movs	r3, #255	; 0xff
    8556:	400b      	ands	r3, r1
    8558:	4690      	mov	r8, r2
    855a:	001a      	movs	r2, r3
    855c:	4253      	negs	r3, r2
    855e:	4153      	adcs	r3, r2
    8560:	0006      	movs	r6, r0
    8562:	4831      	ldr	r0, [pc, #196]	; (8628 <rt_tsk_create+0xdc>)
    8564:	18cc      	adds	r4, r1, r3
    8566:	f7fe ff95 	bl	7494 <rt_alloc_box>
    856a:	1e05      	subs	r5, r0, #0
    856c:	d032      	beq.n	85d4 <rt_tsk_create+0x88>
    856e:	4643      	mov	r3, r8
    8570:	2101      	movs	r1, #1
    8572:	62c3      	str	r3, [r0, #44]	; 0x2c
    8574:	2300      	movs	r3, #0
    8576:	0a22      	lsrs	r2, r4, #8
    8578:	7041      	strb	r1, [r0, #1]
    857a:	b2e4      	uxtb	r4, r4
    857c:	3123      	adds	r1, #35	; 0x23
    857e:	b292      	uxth	r2, r2
    8580:	7003      	strb	r3, [r0, #0]
    8582:	84c2      	strh	r2, [r0, #38]	; 0x26
    8584:	61c7      	str	r7, [r0, #28]
    8586:	7084      	strb	r4, [r0, #2]
    8588:	5444      	strb	r4, [r0, r1]
    858a:	2100      	movs	r1, #0
    858c:	6043      	str	r3, [r0, #4]
    858e:	6083      	str	r3, [r0, #8]
    8590:	60c3      	str	r3, [r0, #12]
    8592:	6103      	str	r3, [r0, #16]
    8594:	6203      	str	r3, [r0, #32]
    8596:	8283      	strh	r3, [r0, #20]
    8598:	82c3      	strh	r3, [r0, #22]
    859a:	8303      	strh	r3, [r0, #24]
    859c:	8343      	strh	r3, [r0, #26]
    859e:	3325      	adds	r3, #37	; 0x25
    85a0:	54c1      	strb	r1, [r0, r3]
    85a2:	2a00      	cmp	r2, #0
    85a4:	d01a      	beq.n	85dc <rt_tsk_create+0x90>
    85a6:	0031      	movs	r1, r6
    85a8:	0028      	movs	r0, r5
    85aa:	f7fe fe99 	bl	72e0 <rt_init_stack>
    85ae:	4b1f      	ldr	r3, [pc, #124]	; (862c <rt_tsk_create+0xe0>)
    85b0:	8819      	ldrh	r1, [r3, #0]
    85b2:	2900      	cmp	r1, #0
    85b4:	d00e      	beq.n	85d4 <rt_tsk_create+0x88>
    85b6:	481e      	ldr	r0, [pc, #120]	; (8630 <rt_tsk_create+0xe4>)
    85b8:	6803      	ldr	r3, [r0, #0]
    85ba:	2b00      	cmp	r3, #0
    85bc:	d02f      	beq.n	861e <rt_tsk_create+0xd2>
    85be:	2201      	movs	r2, #1
    85c0:	e005      	b.n	85ce <rt_tsk_create+0x82>
    85c2:	00a3      	lsls	r3, r4, #2
    85c4:	3b04      	subs	r3, #4
    85c6:	58c3      	ldr	r3, [r0, r3]
    85c8:	2b00      	cmp	r3, #0
    85ca:	d00c      	beq.n	85e6 <rt_tsk_create+0x9a>
    85cc:	0022      	movs	r2, r4
    85ce:	1c54      	adds	r4, r2, #1
    85d0:	428c      	cmp	r4, r1
    85d2:	d9f6      	bls.n	85c2 <rt_tsk_create+0x76>
    85d4:	2000      	movs	r0, #0
    85d6:	bc04      	pop	{r2}
    85d8:	4690      	mov	r8, r2
    85da:	bdf0      	pop	{r4, r5, r6, r7, pc}
    85dc:	4815      	ldr	r0, [pc, #84]	; (8634 <rt_tsk_create+0xe8>)
    85de:	f7fe ff59 	bl	7494 <rt_alloc_box>
    85e2:	62e8      	str	r0, [r5, #44]	; 0x2c
    85e4:	e7df      	b.n	85a6 <rt_tsk_create+0x5a>
    85e6:	b2e3      	uxtb	r3, r4
    85e8:	0092      	lsls	r2, r2, #2
    85ea:	4e13      	ldr	r6, [pc, #76]	; (8638 <rt_tsk_create+0xec>)
    85ec:	5085      	str	r5, [r0, r2]
    85ee:	70eb      	strb	r3, [r5, #3]
    85f0:	6830      	ldr	r0, [r6, #0]
    85f2:	78aa      	ldrb	r2, [r5, #2]
    85f4:	7883      	ldrb	r3, [r0, #2]
    85f6:	429a      	cmp	r2, r3
    85f8:	d807      	bhi.n	860a <rt_tsk_create+0xbe>
    85fa:	2301      	movs	r3, #1
    85fc:	480f      	ldr	r0, [pc, #60]	; (863c <rt_tsk_create+0xf0>)
    85fe:	706b      	strb	r3, [r5, #1]
    8600:	0029      	movs	r1, r5
    8602:	f7ff fad1 	bl	7ba8 <rt_put_prio>
    8606:	0020      	movs	r0, r4
    8608:	e7e5      	b.n	85d6 <rt_tsk_create+0x8a>
    860a:	f7ff fb07 	bl	7c1c <rt_put_rdy_first>
    860e:	2301      	movs	r3, #1
    8610:	6832      	ldr	r2, [r6, #0]
    8612:	0020      	movs	r0, r4
    8614:	7053      	strb	r3, [r2, #1]
    8616:	3301      	adds	r3, #1
    8618:	6075      	str	r5, [r6, #4]
    861a:	706b      	strb	r3, [r5, #1]
    861c:	e7db      	b.n	85d6 <rt_tsk_create+0x8a>
    861e:	2301      	movs	r3, #1
    8620:	2200      	movs	r2, #0
    8622:	2401      	movs	r4, #1
    8624:	e7e0      	b.n	85e8 <rt_tsk_create+0x9c>
    8626:	46c0      	nop			; (mov r8, r8)
    8628:	20000908 	.word	0x20000908
    862c:	00008b2c 	.word	0x00008b2c
    8630:	20004cdc 	.word	0x20004cdc
    8634:	200009e8 	.word	0x200009e8
    8638:	200060c0 	.word	0x200060c0
    863c:	2000608c 	.word	0x2000608c

00008640 <rt_tsk_delete>:
    8640:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8642:	4644      	mov	r4, r8
    8644:	465f      	mov	r7, fp
    8646:	4656      	mov	r6, sl
    8648:	464d      	mov	r5, r9
    864a:	4b5a      	ldr	r3, [pc, #360]	; (87b4 <rt_tsk_delete+0x174>)
    864c:	b4f0      	push	{r4, r5, r6, r7}
    864e:	4698      	mov	r8, r3
    8650:	681c      	ldr	r4, [r3, #0]
    8652:	2800      	cmp	r0, #0
    8654:	d00e      	beq.n	8674 <rt_tsk_delete+0x34>
    8656:	78e3      	ldrb	r3, [r4, #3]
    8658:	4298      	cmp	r0, r3
    865a:	d00b      	beq.n	8674 <rt_tsk_delete+0x34>
    865c:	4b56      	ldr	r3, [pc, #344]	; (87b8 <rt_tsk_delete+0x178>)
    865e:	881a      	ldrh	r2, [r3, #0]
    8660:	23ff      	movs	r3, #255	; 0xff
    8662:	4290      	cmp	r0, r2
    8664:	d952      	bls.n	870c <rt_tsk_delete+0xcc>
    8666:	0018      	movs	r0, r3
    8668:	bc3c      	pop	{r2, r3, r4, r5}
    866a:	4690      	mov	r8, r2
    866c:	4699      	mov	r9, r3
    866e:	46a2      	mov	sl, r4
    8670:	46ab      	mov	fp, r5
    8672:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8674:	2300      	movs	r3, #0
    8676:	7063      	strb	r3, [r4, #1]
    8678:	f7fc fa99 	bl	4bae <rt_get_PSP>
    867c:	62a0      	str	r0, [r4, #40]	; 0x28
    867e:	f7ff fe8b 	bl	8398 <rt_stk_check>
    8682:	4643      	mov	r3, r8
    8684:	681a      	ldr	r2, [r3, #0]
    8686:	4f4d      	ldr	r7, [pc, #308]	; (87bc <rt_tsk_delete+0x17c>)
    8688:	6a14      	ldr	r4, [r2, #32]
    868a:	2c00      	cmp	r4, #0
    868c:	d023      	beq.n	86d6 <rt_tsk_delete+0x96>
    868e:	2601      	movs	r6, #1
    8690:	e016      	b.n	86c0 <rt_tsk_delete+0x80>
    8692:	0020      	movs	r0, r4
    8694:	f7ff faae 	bl	7bf4 <rt_get_first>
    8698:	0005      	movs	r5, r0
    869a:	2100      	movs	r1, #0
    869c:	f7fe fe78 	bl	7390 <rt_ret_val>
    86a0:	0028      	movs	r0, r5
    86a2:	f7ff fbdf 	bl	7e64 <rt_rmv_dly>
    86a6:	706e      	strb	r6, [r5, #1]
    86a8:	0029      	movs	r1, r5
    86aa:	0038      	movs	r0, r7
    86ac:	f7ff fa7c 	bl	7ba8 <rt_put_prio>
    86b0:	68e3      	ldr	r3, [r4, #12]
    86b2:	6a2a      	ldr	r2, [r5, #32]
    86b4:	8066      	strh	r6, [r4, #2]
    86b6:	60a5      	str	r5, [r4, #8]
    86b8:	60e2      	str	r2, [r4, #12]
    86ba:	622c      	str	r4, [r5, #32]
    86bc:	1e1c      	subs	r4, r3, #0
    86be:	d008      	beq.n	86d2 <rt_tsk_delete+0x92>
    86c0:	6863      	ldr	r3, [r4, #4]
    86c2:	2b00      	cmp	r3, #0
    86c4:	d1e5      	bne.n	8692 <rt_tsk_delete+0x52>
    86c6:	68e2      	ldr	r2, [r4, #12]
    86c8:	8063      	strh	r3, [r4, #2]
    86ca:	60a3      	str	r3, [r4, #8]
    86cc:	60e3      	str	r3, [r4, #12]
    86ce:	1e14      	subs	r4, r2, #0
    86d0:	d1f6      	bne.n	86c0 <rt_tsk_delete+0x80>
    86d2:	4643      	mov	r3, r8
    86d4:	681a      	ldr	r2, [r3, #0]
    86d6:	2400      	movs	r4, #0
    86d8:	78d3      	ldrb	r3, [r2, #3]
    86da:	4939      	ldr	r1, [pc, #228]	; (87c0 <rt_tsk_delete+0x180>)
    86dc:	3b01      	subs	r3, #1
    86de:	009b      	lsls	r3, r3, #2
    86e0:	505c      	str	r4, [r3, r1]
    86e2:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    86e4:	4837      	ldr	r0, [pc, #220]	; (87c4 <rt_tsk_delete+0x184>)
    86e6:	f7fe fef5 	bl	74d4 <rt_free_box>
    86ea:	4643      	mov	r3, r8
    86ec:	6819      	ldr	r1, [r3, #0]
    86ee:	4836      	ldr	r0, [pc, #216]	; (87c8 <rt_tsk_delete+0x188>)
    86f0:	62cc      	str	r4, [r1, #44]	; 0x2c
    86f2:	f7fe feef 	bl	74d4 <rt_free_box>
    86f6:	4643      	mov	r3, r8
    86f8:	601c      	str	r4, [r3, #0]
    86fa:	0038      	movs	r0, r7
    86fc:	f7ff fa7a 	bl	7bf4 <rt_get_first>
    8700:	4643      	mov	r3, r8
    8702:	6058      	str	r0, [r3, #4]
    8704:	2302      	movs	r3, #2
    8706:	7043      	strb	r3, [r0, #1]
    8708:	2300      	movs	r3, #0
    870a:	e7ac      	b.n	8666 <rt_tsk_delete+0x26>
    870c:	4a2c      	ldr	r2, [pc, #176]	; (87c0 <rt_tsk_delete+0x180>)
    870e:	1e46      	subs	r6, r0, #1
    8710:	4692      	mov	sl, r2
    8712:	00b2      	lsls	r2, r6, #2
    8714:	4693      	mov	fp, r2
    8716:	4652      	mov	r2, sl
    8718:	4659      	mov	r1, fp
    871a:	5856      	ldr	r6, [r2, r1]
    871c:	2e00      	cmp	r6, #0
    871e:	d0a2      	beq.n	8666 <rt_tsk_delete+0x26>
    8720:	0030      	movs	r0, r6
    8722:	f7ff fb89 	bl	7e38 <rt_rmv_list>
    8726:	0030      	movs	r0, r6
    8728:	f7ff fb9c 	bl	7e64 <rt_rmv_dly>
    872c:	2301      	movs	r3, #1
    872e:	6a34      	ldr	r4, [r6, #32]
    8730:	4f22      	ldr	r7, [pc, #136]	; (87bc <rt_tsk_delete+0x17c>)
    8732:	4699      	mov	r9, r3
    8734:	2c00      	cmp	r4, #0
    8736:	d11a      	bne.n	876e <rt_tsk_delete+0x12e>
    8738:	e022      	b.n	8780 <rt_tsk_delete+0x140>
    873a:	0020      	movs	r0, r4
    873c:	f7ff fa5a 	bl	7bf4 <rt_get_first>
    8740:	0005      	movs	r5, r0
    8742:	2100      	movs	r1, #0
    8744:	f7fe fe24 	bl	7390 <rt_ret_val>
    8748:	0028      	movs	r0, r5
    874a:	f7ff fb8b 	bl	7e64 <rt_rmv_dly>
    874e:	464b      	mov	r3, r9
    8750:	0029      	movs	r1, r5
    8752:	706b      	strb	r3, [r5, #1]
    8754:	0038      	movs	r0, r7
    8756:	f7ff fa27 	bl	7ba8 <rt_put_prio>
    875a:	464a      	mov	r2, r9
    875c:	68e3      	ldr	r3, [r4, #12]
    875e:	8062      	strh	r2, [r4, #2]
    8760:	6a2a      	ldr	r2, [r5, #32]
    8762:	60a5      	str	r5, [r4, #8]
    8764:	60e2      	str	r2, [r4, #12]
    8766:	622c      	str	r4, [r5, #32]
    8768:	001c      	movs	r4, r3
    876a:	2c00      	cmp	r4, #0
    876c:	d008      	beq.n	8780 <rt_tsk_delete+0x140>
    876e:	6863      	ldr	r3, [r4, #4]
    8770:	2b00      	cmp	r3, #0
    8772:	d1e2      	bne.n	873a <rt_tsk_delete+0xfa>
    8774:	68e2      	ldr	r2, [r4, #12]
    8776:	8063      	strh	r3, [r4, #2]
    8778:	60a3      	str	r3, [r4, #8]
    877a:	60e3      	str	r3, [r4, #12]
    877c:	0014      	movs	r4, r2
    877e:	e7f4      	b.n	876a <rt_tsk_delete+0x12a>
    8780:	4653      	mov	r3, sl
    8782:	465a      	mov	r2, fp
    8784:	2400      	movs	r4, #0
    8786:	509c      	str	r4, [r3, r2]
    8788:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    878a:	480e      	ldr	r0, [pc, #56]	; (87c4 <rt_tsk_delete+0x184>)
    878c:	f7fe fea2 	bl	74d4 <rt_free_box>
    8790:	0031      	movs	r1, r6
    8792:	62f4      	str	r4, [r6, #44]	; 0x2c
    8794:	480c      	ldr	r0, [pc, #48]	; (87c8 <rt_tsk_delete+0x188>)
    8796:	f7fe fe9d 	bl	74d4 <rt_free_box>
    879a:	4643      	mov	r3, r8
    879c:	6819      	ldr	r1, [r3, #0]
    879e:	687b      	ldr	r3, [r7, #4]
    87a0:	789a      	ldrb	r2, [r3, #2]
    87a2:	788b      	ldrb	r3, [r1, #2]
    87a4:	429a      	cmp	r2, r3
    87a6:	d9af      	bls.n	8708 <rt_tsk_delete+0xc8>
    87a8:	2301      	movs	r3, #1
    87aa:	0038      	movs	r0, r7
    87ac:	704b      	strb	r3, [r1, #1]
    87ae:	f7ff f9fb 	bl	7ba8 <rt_put_prio>
    87b2:	e7a2      	b.n	86fa <rt_tsk_delete+0xba>
    87b4:	200060c0 	.word	0x200060c0
    87b8:	00008b2c 	.word	0x00008b2c
    87bc:	2000608c 	.word	0x2000608c
    87c0:	20004cdc 	.word	0x20004cdc
    87c4:	200009e8 	.word	0x200009e8
    87c8:	20000908 	.word	0x20000908

000087cc <rt_sys_init>:
    87cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    87ce:	4b2b      	ldr	r3, [pc, #172]	; (887c <rt_sys_init+0xb0>)
    87d0:	881a      	ldrh	r2, [r3, #0]
    87d2:	2a00      	cmp	r2, #0
    87d4:	d004      	beq.n	87e0 <rt_sys_init+0x14>
    87d6:	0092      	lsls	r2, r2, #2
    87d8:	2100      	movs	r1, #0
    87da:	4829      	ldr	r0, [pc, #164]	; (8880 <rt_sys_init+0xb4>)
    87dc:	f000 f8d8 	bl	8990 <memset>
    87e0:	4b28      	ldr	r3, [pc, #160]	; (8884 <rt_sys_init+0xb8>)
    87e2:	2234      	movs	r2, #52	; 0x34
    87e4:	8819      	ldrh	r1, [r3, #0]
    87e6:	4828      	ldr	r0, [pc, #160]	; (8888 <rt_sys_init+0xbc>)
    87e8:	f7fe fe28 	bl	743c <_init_box>
    87ec:	2280      	movs	r2, #128	; 0x80
    87ee:	4b27      	ldr	r3, [pc, #156]	; (888c <rt_sys_init+0xc0>)
    87f0:	0612      	lsls	r2, r2, #24
    87f2:	881b      	ldrh	r3, [r3, #0]
    87f4:	4f26      	ldr	r7, [pc, #152]	; (8890 <rt_sys_init+0xc4>)
    87f6:	431a      	orrs	r2, r3
    87f8:	4b26      	ldr	r3, [pc, #152]	; (8894 <rt_sys_init+0xc8>)
    87fa:	0038      	movs	r0, r7
    87fc:	6819      	ldr	r1, [r3, #0]
    87fe:	f7fe fe1d 	bl	743c <_init_box>
    8802:	4b25      	ldr	r3, [pc, #148]	; (8898 <rt_sys_init+0xcc>)
    8804:	2208      	movs	r2, #8
    8806:	6818      	ldr	r0, [r3, #0]
    8808:	4b24      	ldr	r3, [pc, #144]	; (889c <rt_sys_init+0xd0>)
    880a:	2600      	movs	r6, #0
    880c:	8819      	ldrh	r1, [r3, #0]
    880e:	f7fe fe15 	bl	743c <_init_box>
    8812:	23ff      	movs	r3, #255	; 0xff
    8814:	2500      	movs	r5, #0
    8816:	4c22      	ldr	r4, [pc, #136]	; (88a0 <rt_sys_init+0xd4>)
    8818:	0038      	movs	r0, r7
    881a:	70e3      	strb	r3, [r4, #3]
    881c:	3bfe      	subs	r3, #254	; 0xfe
    881e:	7063      	strb	r3, [r4, #1]
    8820:	3323      	adds	r3, #35	; 0x23
    8822:	54e6      	strb	r6, [r4, r3]
    8824:	3301      	adds	r3, #1
    8826:	54e6      	strb	r6, [r4, r3]
    8828:	84e5      	strh	r5, [r4, #38]	; 0x26
    882a:	7026      	strb	r6, [r4, #0]
    882c:	70a6      	strb	r6, [r4, #2]
    882e:	6065      	str	r5, [r4, #4]
    8830:	60a5      	str	r5, [r4, #8]
    8832:	60e5      	str	r5, [r4, #12]
    8834:	6125      	str	r5, [r4, #16]
    8836:	6225      	str	r5, [r4, #32]
    8838:	82a5      	strh	r5, [r4, #20]
    883a:	82e5      	strh	r5, [r4, #22]
    883c:	8325      	strh	r5, [r4, #24]
    883e:	8365      	strh	r5, [r4, #26]
    8840:	f7fe fe28 	bl	7494 <rt_alloc_box>
    8844:	4917      	ldr	r1, [pc, #92]	; (88a4 <rt_sys_init+0xd8>)
    8846:	62e0      	str	r0, [r4, #44]	; 0x2c
    8848:	0020      	movs	r0, r4
    884a:	f7fe fd49 	bl	72e0 <rt_init_stack>
    884e:	2204      	movs	r2, #4
    8850:	4b15      	ldr	r3, [pc, #84]	; (88a8 <rt_sys_init+0xdc>)
    8852:	701a      	strb	r2, [r3, #0]
    8854:	605d      	str	r5, [r3, #4]
    8856:	4b15      	ldr	r3, [pc, #84]	; (88ac <rt_sys_init+0xe0>)
    8858:	701a      	strb	r2, [r3, #0]
    885a:	60dd      	str	r5, [r3, #12]
    885c:	611d      	str	r5, [r3, #16]
    885e:	829d      	strh	r5, [r3, #20]
    8860:	4b13      	ldr	r3, [pc, #76]	; (88b0 <rt_sys_init+0xe4>)
    8862:	4a14      	ldr	r2, [pc, #80]	; (88b4 <rt_sys_init+0xe8>)
    8864:	601c      	str	r4, [r3, #0]
    8866:	2302      	movs	r3, #2
    8868:	7812      	ldrb	r2, [r2, #0]
    886a:	7063      	strb	r3, [r4, #1]
    886c:	4b12      	ldr	r3, [pc, #72]	; (88b8 <rt_sys_init+0xec>)
    886e:	701e      	strb	r6, [r3, #0]
    8870:	705e      	strb	r6, [r3, #1]
    8872:	70da      	strb	r2, [r3, #3]
    8874:	f000 f85a 	bl	892c <rt_init_robin>
    8878:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    887a:	46c0      	nop			; (mov r8, r8)
    887c:	00008b2c 	.word	0x00008b2c
    8880:	20004cdc 	.word	0x20004cdc
    8884:	00008b58 	.word	0x00008b58
    8888:	20000908 	.word	0x20000908
    888c:	00008b30 	.word	0x00008b30
    8890:	200009e8 	.word	0x200009e8
    8894:	00008b5c 	.word	0x00008b5c
    8898:	20004d18 	.word	0x20004d18
    889c:	00008b80 	.word	0x00008b80
    88a0:	200060c8 	.word	0x200060c8
    88a4:	00001b09 	.word	0x00001b09
    88a8:	2000608c 	.word	0x2000608c
    88ac:	200060a4 	.word	0x200060a4
    88b0:	200060c0 	.word	0x200060c0
    88b4:	00008b64 	.word	0x00008b64
    88b8:	20004c58 	.word	0x20004c58

000088bc <rt_sys_start>:
    88bc:	21ff      	movs	r1, #255	; 0xff
    88be:	4b16      	ldr	r3, [pc, #88]	; (8918 <rt_sys_start+0x5c>)
    88c0:	0409      	lsls	r1, r1, #16
    88c2:	681a      	ldr	r2, [r3, #0]
    88c4:	b510      	push	{r4, lr}
    88c6:	430a      	orrs	r2, r1
    88c8:	601a      	str	r2, [r3, #0]
    88ca:	681b      	ldr	r3, [r3, #0]
    88cc:	4913      	ldr	r1, [pc, #76]	; (891c <rt_sys_start+0x60>)
    88ce:	025b      	lsls	r3, r3, #9
    88d0:	680a      	ldr	r2, [r1, #0]
    88d2:	0e9b      	lsrs	r3, r3, #26
    88d4:	069b      	lsls	r3, r3, #26
    88d6:	4313      	orrs	r3, r2
    88d8:	600b      	str	r3, [r1, #0]
    88da:	f7ff fd0d 	bl	82f8 <os_tick_init>
    88de:	4c10      	ldr	r4, [pc, #64]	; (8920 <rt_sys_start+0x64>)
    88e0:	6020      	str	r0, [r4, #0]
    88e2:	2800      	cmp	r0, #0
    88e4:	db17      	blt.n	8916 <rt_sys_start+0x5a>
    88e6:	4a0f      	ldr	r2, [pc, #60]	; (8924 <rt_sys_start+0x68>)
    88e8:	0883      	lsrs	r3, r0, #2
    88ea:	4694      	mov	ip, r2
    88ec:	2218      	movs	r2, #24
    88ee:	00c0      	lsls	r0, r0, #3
    88f0:	4010      	ands	r0, r2
    88f2:	32e7      	adds	r2, #231	; 0xe7
    88f4:	4082      	lsls	r2, r0
    88f6:	009b      	lsls	r3, r3, #2
    88f8:	4463      	add	r3, ip
    88fa:	6819      	ldr	r1, [r3, #0]
    88fc:	430a      	orrs	r2, r1
    88fe:	490a      	ldr	r1, [pc, #40]	; (8928 <rt_sys_start+0x6c>)
    8900:	601a      	str	r2, [r3, #0]
    8902:	468c      	mov	ip, r1
    8904:	211f      	movs	r1, #31
    8906:	6822      	ldr	r2, [r4, #0]
    8908:	0953      	lsrs	r3, r2, #5
    890a:	400a      	ands	r2, r1
    890c:	391e      	subs	r1, #30
    890e:	4091      	lsls	r1, r2
    8910:	009b      	lsls	r3, r3, #2
    8912:	4463      	add	r3, ip
    8914:	6019      	str	r1, [r3, #0]
    8916:	bd10      	pop	{r4, pc}
    8918:	e000ed20 	.word	0xe000ed20
    891c:	e000ed1c 	.word	0xe000ed1c
    8920:	200060bc 	.word	0x200060bc
    8924:	e000e400 	.word	0xe000e400
    8928:	e000e100 	.word	0xe000e100

0000892c <rt_init_robin>:
    892c:	2200      	movs	r2, #0
    892e:	4b03      	ldr	r3, [pc, #12]	; (893c <rt_init_robin+0x10>)
    8930:	601a      	str	r2, [r3, #0]
    8932:	4a03      	ldr	r2, [pc, #12]	; (8940 <rt_init_robin+0x14>)
    8934:	6812      	ldr	r2, [r2, #0]
    8936:	80da      	strh	r2, [r3, #6]
    8938:	4770      	bx	lr
    893a:	46c0      	nop			; (mov r8, r8)
    893c:	200060fc 	.word	0x200060fc
    8940:	00008b34 	.word	0x00008b34

00008944 <rt_chk_robin>:
    8944:	b510      	push	{r4, lr}
    8946:	4a0f      	ldr	r2, [pc, #60]	; (8984 <rt_chk_robin+0x40>)
    8948:	4c0f      	ldr	r4, [pc, #60]	; (8988 <rt_chk_robin+0x44>)
    894a:	6811      	ldr	r1, [r2, #0]
    894c:	6863      	ldr	r3, [r4, #4]
    894e:	4299      	cmp	r1, r3
    8950:	d014      	beq.n	897c <rt_chk_robin+0x38>
    8952:	6013      	str	r3, [r2, #0]
    8954:	4b0d      	ldr	r3, [pc, #52]	; (898c <rt_chk_robin+0x48>)
    8956:	8819      	ldrh	r1, [r3, #0]
    8958:	88d3      	ldrh	r3, [r2, #6]
    895a:	3b01      	subs	r3, #1
    895c:	18cb      	adds	r3, r1, r3
    895e:	b29b      	uxth	r3, r3
    8960:	8093      	strh	r3, [r2, #4]
    8962:	4299      	cmp	r1, r3
    8964:	d000      	beq.n	8968 <rt_chk_robin+0x24>
    8966:	bd10      	pop	{r4, pc}
    8968:	2300      	movs	r3, #0
    896a:	0020      	movs	r0, r4
    896c:	6013      	str	r3, [r2, #0]
    896e:	f7ff f941 	bl	7bf4 <rt_get_first>
    8972:	0001      	movs	r1, r0
    8974:	0020      	movs	r0, r4
    8976:	f7ff f917 	bl	7ba8 <rt_put_prio>
    897a:	e7f4      	b.n	8966 <rt_chk_robin+0x22>
    897c:	4b03      	ldr	r3, [pc, #12]	; (898c <rt_chk_robin+0x48>)
    897e:	8819      	ldrh	r1, [r3, #0]
    8980:	8893      	ldrh	r3, [r2, #4]
    8982:	e7ee      	b.n	8962 <rt_chk_robin+0x1e>
    8984:	200060fc 	.word	0x200060fc
    8988:	2000608c 	.word	0x2000608c
    898c:	20006088 	.word	0x20006088

00008990 <memset>:
    8990:	b570      	push	{r4, r5, r6, lr}
    8992:	0783      	lsls	r3, r0, #30
    8994:	d03f      	beq.n	8a16 <memset+0x86>
    8996:	1e54      	subs	r4, r2, #1
    8998:	2a00      	cmp	r2, #0
    899a:	d03b      	beq.n	8a14 <memset+0x84>
    899c:	b2ce      	uxtb	r6, r1
    899e:	0003      	movs	r3, r0
    89a0:	2503      	movs	r5, #3
    89a2:	e003      	b.n	89ac <memset+0x1c>
    89a4:	1e62      	subs	r2, r4, #1
    89a6:	2c00      	cmp	r4, #0
    89a8:	d034      	beq.n	8a14 <memset+0x84>
    89aa:	0014      	movs	r4, r2
    89ac:	3301      	adds	r3, #1
    89ae:	1e5a      	subs	r2, r3, #1
    89b0:	7016      	strb	r6, [r2, #0]
    89b2:	422b      	tst	r3, r5
    89b4:	d1f6      	bne.n	89a4 <memset+0x14>
    89b6:	2c03      	cmp	r4, #3
    89b8:	d924      	bls.n	8a04 <memset+0x74>
    89ba:	25ff      	movs	r5, #255	; 0xff
    89bc:	400d      	ands	r5, r1
    89be:	022a      	lsls	r2, r5, #8
    89c0:	4315      	orrs	r5, r2
    89c2:	042a      	lsls	r2, r5, #16
    89c4:	4315      	orrs	r5, r2
    89c6:	2c0f      	cmp	r4, #15
    89c8:	d911      	bls.n	89ee <memset+0x5e>
    89ca:	0026      	movs	r6, r4
    89cc:	3e10      	subs	r6, #16
    89ce:	0936      	lsrs	r6, r6, #4
    89d0:	3601      	adds	r6, #1
    89d2:	0136      	lsls	r6, r6, #4
    89d4:	001a      	movs	r2, r3
    89d6:	199b      	adds	r3, r3, r6
    89d8:	6015      	str	r5, [r2, #0]
    89da:	6055      	str	r5, [r2, #4]
    89dc:	6095      	str	r5, [r2, #8]
    89de:	60d5      	str	r5, [r2, #12]
    89e0:	3210      	adds	r2, #16
    89e2:	4293      	cmp	r3, r2
    89e4:	d1f8      	bne.n	89d8 <memset+0x48>
    89e6:	220f      	movs	r2, #15
    89e8:	4014      	ands	r4, r2
    89ea:	2c03      	cmp	r4, #3
    89ec:	d90a      	bls.n	8a04 <memset+0x74>
    89ee:	1f26      	subs	r6, r4, #4
    89f0:	08b6      	lsrs	r6, r6, #2
    89f2:	3601      	adds	r6, #1
    89f4:	00b6      	lsls	r6, r6, #2
    89f6:	001a      	movs	r2, r3
    89f8:	199b      	adds	r3, r3, r6
    89fa:	c220      	stmia	r2!, {r5}
    89fc:	4293      	cmp	r3, r2
    89fe:	d1fc      	bne.n	89fa <memset+0x6a>
    8a00:	2203      	movs	r2, #3
    8a02:	4014      	ands	r4, r2
    8a04:	2c00      	cmp	r4, #0
    8a06:	d005      	beq.n	8a14 <memset+0x84>
    8a08:	b2c9      	uxtb	r1, r1
    8a0a:	191c      	adds	r4, r3, r4
    8a0c:	7019      	strb	r1, [r3, #0]
    8a0e:	3301      	adds	r3, #1
    8a10:	429c      	cmp	r4, r3
    8a12:	d1fb      	bne.n	8a0c <memset+0x7c>
    8a14:	bd70      	pop	{r4, r5, r6, pc}
    8a16:	0014      	movs	r4, r2
    8a18:	0003      	movs	r3, r0
    8a1a:	e7cc      	b.n	89b6 <memset+0x26>
    8a1c:	0000      	movs	r0, r0
	...

00008a20 <__eeprom_program_word_veneer>:
    8a20:	b401      	push	{r0}
    8a22:	4802      	ldr	r0, [pc, #8]	; (8a2c <__eeprom_program_word_veneer+0xc>)
    8a24:	4684      	mov	ip, r0
    8a26:	bc01      	pop	{r0}
    8a28:	4760      	bx	ip
    8a2a:	bf00      	nop
    8a2c:	20100151 	.word	0x20100151

00008a30 <__eeprom_erase_page_veneer>:
    8a30:	b401      	push	{r0}
    8a32:	4802      	ldr	r0, [pc, #8]	; (8a3c <__eeprom_erase_page_veneer+0xc>)
    8a34:	4684      	mov	ip, r0
    8a36:	bc01      	pop	{r0}
    8a38:	4760      	bx	ip
    8a3a:	bf00      	nop
    8a3c:	2010002d 	.word	0x2010002d

00008a40 <__eeprom_read_word_veneer>:
    8a40:	b401      	push	{r0}
    8a42:	4802      	ldr	r0, [pc, #8]	; (8a4c <__eeprom_read_word_veneer+0xc>)
    8a44:	4684      	mov	ip, r0
    8a46:	bc01      	pop	{r0}
    8a48:	4760      	bx	ip
    8a4a:	bf00      	nop
    8a4c:	20100229 	.word	0x20100229

00008a50 <threadPacketParserDef>:
    8a50:	000031c5 00000001 00000001 00000400     .1..............

00008a60 <threadFSMProceedDef>:
    8a60:	00000595 00000000 00000001 00000400     ................

00008a70 <threadDUTProceedDef>:
    8a70:	0000042d 00000000 00000001 00000400     -...............

00008a80 <message_def>:
    8a80:	00000004 20000868                       ....h.. 

00008a88 <os_mutex_def_MutexMdbReg>:
    8a88:	2000088c 74697865 00000000 70616548     ... exit....Heap
    8a98:	646e6120 61747320 63206b63 696c6c6f      and stack colli
    8aa8:	6e6f6973 0000000a 0000152a 00001518     sion....*.......
    8ab8:	00001536 00001542 00001542 00001542     6...B...B...B...
    8ac8:	00001542 00001542 00001542 00001542     B...B...B...B...
    8ad8:	00001542 00001542 00001542 00001530     B...B...B...0...
    8ae8:	00001542 00001542 00001542 000014bc     B...B...B.......
    8af8:	00001542 00001536 00001542 00001542     B...6...B...B...
    8b08:	0000153c 6c383025 00002058 32302520     <...%08lX .. %02
    8b18:	00000058 34302520 00000058 38302520     X... %04X... %08
    8b28:	0000584c                                LX..

00008b2c <os_maxtaskrun>:
    8b2c:	00000004                                ....

00008b30 <os_stackinfo>:
    8b30:	01021000                                ....

00008b34 <os_rrobin>:
    8b34:	00010005                                ....

00008b38 <os_tickfreq>:
    8b38:	04c4b400                                ....

00008b3c <os_tickus_i>:
    8b3c:	00000050                                         P.

00008b3e <os_tickus_f>:
	...

00008b40 <os_trv>:
    8b40:	0001387f                                .8..

00008b44 <os_flags>:
    8b44:	00000001                                ....

00008b48 <CMSIS_RTOS_API_Version>:
    8b48:	00010002                                ....

00008b4c <CMSIS_RTOS_RTX_Version>:
    8b4c:	00040052                                R...

00008b50 <os_clockrate>:
    8b50:	000003e8                                ....

00008b54 <os_timernum>:
    8b54:	00000000                                ....

00008b58 <mp_tcb_size>:
    8b58:	000000dc                                ....

00008b5c <mp_stk_size>:
    8b5c:	00003010                                .0..

00008b60 <os_stack_sz>:
    8b60:	00001260                                `...

00008b64 <os_fifo_size>:
    8b64:	00000010                                ....

00008b68 <os_thread_def_osTimerThread>:
    8b68:	00006549 00000002 00000001 00000200     Ie..............

00008b78 <os_messageQ_def_osTimerMessageQ>:
    8b78:	00000004 20004cf0                       .....L. 

00008b80 <mp_tmr_size>:
    8b80:	00000000                                ....

00008b84 <os_thread_def_main>:
    8b84:	0000025d 00000000 00000001 00000040     ]...........@...

00008b94 <os_mutex_def_readpackMutex>:
    8b94:	2000531c                                .S. 

00008b98 <os_mutex_def_sendpackMutex>:
    8b98:	20005330                                0S. 

00008b9c <crc_table>:
    8b9c:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    8bac:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    8bbc:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    8bcc:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    8bdc:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    8bec:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    8bfc:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    8c0c:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    8c1c:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    8c2c:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    8c3c:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    8c4c:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    8c5c:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    8c6c:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    8c7c:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    8c8c:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    8c9c:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    8cac:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    8cbc:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    8ccc:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    8cdc:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    8cec:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    8cfc:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    8d0c:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    8d1c:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    8d2c:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    8d3c:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    8d4c:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    8d5c:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    8d6c:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    8d7c:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    8d8c:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    8d9c:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    8dac:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    8dbc:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    8dcc:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    8ddc:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    8dec:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    8dfc:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    8e0c:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    8e1c:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    8e2c:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    8e3c:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    8e4c:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    8e5c:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    8e6c:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    8e7c:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    8e8c:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    8e9c:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    8eac:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    8ebc:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    8ecc:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    8edc:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    8eec:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    8efc:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    8f0c:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    8f1c:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    8f2c:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    8f3c:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    8f4c:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    8f5c:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    8f6c:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    8f7c:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    8f8c:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

00008f9c <crc_table_low>:
    8f9c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8fac:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8fbc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8fcc:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8fdc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8fec:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8ffc:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    900c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    901c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    902c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    903c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    904c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    905c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    906c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    907c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    908c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

0000909c <crc_table_high>:
    909c:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    90ac:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    90bc:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    90cc:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    90dc:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    90ec:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    90fc:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    910c:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    911c:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    912c:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    913c:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    914c:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    915c:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    916c:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    917c:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    918c:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

0000919c <defBsiParam>:
    919c:	0100000a 78563412 d108bc9a              .....4Vx....

000091a8 <device_additional_info>:
    91a8:	31554153 6e6f6320 6f727472 72656c6c     SAU1 conrtroller
    91b8:	00000000                                ....

000091bc <proc_PDU_table>:
    91bc:	00003f5d 00003f5d 00003f5d 00003e21     ]?..]?..]?..!>..
    91cc:	00003895 00003f5d 00003f5d 00003f5d     .8..]?..]?..]?..
    91dc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    91ec:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    91fc:	000039e5 000037fd 00003f5d 00003f5d     .9...7..]?..]?..
    920c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    921c:	00003c15 00003f5d 00003f5d 00003f5d     .<..]?..]?..]?..
    922c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    923c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    924c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    925c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    926c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    927c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    928c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    929c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    92ac:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    92bc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    92cc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    92dc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    92ec:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    92fc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    930c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    931c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    932c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    933c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    934c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    935c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    936c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    937c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    938c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    939c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    93ac:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    93bc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    93cc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    93dc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    93ec:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    93fc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    940c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    941c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    942c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    943c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    944c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    945c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    946c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    947c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    948c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    949c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    94ac:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    94bc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    94cc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    94dc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    94ec:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    94fc:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    950c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    951c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    952c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    953c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    954c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    955c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    956c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    957c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    958c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    959c:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..
    95ac:	00003f5d 00003f5d 00003f5d 00003f5d     ]?..]?..]?..]?..

000095bc <_global_impure_ptr>:
    95bc:	20000018                                ... 

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
