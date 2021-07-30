
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 c9 05 00 00 59 06 00 00 59 06 00 00     ... ....Y...Y...
	...
      2c:	af 4d 00 00 00 00 00 00 00 00 00 00 35 4e 00 00     .M..........5N..
      3c:	7d 4e 00 00 59 06 00 00 59 06 00 00 59 06 00 00     }N..Y...Y...Y...
      4c:	59 06 00 00 59 06 00 00 59 06 00 00 49 12 00 00     Y...Y...Y...I...
      5c:	85 0b 00 00 59 06 00 00 59 06 00 00 59 06 00 00     ....Y...Y...Y...
      6c:	59 06 00 00 59 06 00 00 59 06 00 00 65 03 00 00     Y...Y...Y...e...
      7c:	89 03 00 00 59 06 00 00 59 06 00 00 61 27 00 00     ....Y...Y...a'..
      8c:	59 06 00 00 59 06 00 00 59 06 00 00 59 06 00 00     Y...Y...Y...Y...
      9c:	59 06 00 00 59 06 00 00 00 00 00 00 00 00 00 00     Y...Y...........
      ac:	59 06 00 00 09 04 00 00 59 06 00 00 59 06 00 00     Y.......Y...Y...
      bc:	59 06 00 00                                         Y...

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
     1d2:	f004 ff9d 	bl	5110 <abs>
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
     238:	f004 ff6a 	bl	5110 <abs>
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
     262:	f001 fec7 	bl	1ff4 <SystemInit>
     266:	f000 fa35 	bl	6d4 <mdb485_init>
     26a:	f000 fe4f 	bl	f0c <mdb232_init>
     26e:	f001 fef7 	bl	2060 <RemoteMacInit>
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
     286:	f003 f977 	bl	3578 <par_save>
     28a:	e004      	b.n	296 <main+0x3a>
     28c:	4b2a      	ldr	r3, [pc, #168]	; (338 <main+0xdc>)
     28e:	681b      	ldr	r3, [r3, #0]
     290:	2208      	movs	r2, #8
     292:	4013      	ands	r3, r2
     294:	d0f0      	beq.n	278 <main+0x1c>
     296:	003b      	movs	r3, r7
     298:	0018      	movs	r0, r3
     29a:	f003 f999 	bl	35d0 <par_read>
     29e:	003b      	movs	r3, r7
     2a0:	210c      	movs	r1, #12
     2a2:	0018      	movs	r0, r3
     2a4:	f003 f904 	bl	34b0 <crc16>
     2a8:	1e03      	subs	r3, r0, #0
     2aa:	d108      	bne.n	2be <main+0x62>
     2ac:	003b      	movs	r3, r7
     2ae:	0018      	movs	r0, r3
     2b0:	f001 ff86 	bl	21c0 <EthernetConfig>
     2b4:	003b      	movs	r3, r7
     2b6:	0018      	movs	r0, r3
     2b8:	f002 fa80 	bl	27bc <network_config>
     2bc:	e007      	b.n	2ce <main+0x72>
     2be:	4b1d      	ldr	r3, [pc, #116]	; (334 <main+0xd8>)
     2c0:	0018      	movs	r0, r3
     2c2:	f001 ff7d 	bl	21c0 <EthernetConfig>
     2c6:	4b1b      	ldr	r3, [pc, #108]	; (334 <main+0xd8>)
     2c8:	0018      	movs	r0, r3
     2ca:	f002 fa77 	bl	27bc <network_config>
     2ce:	f7ff ff3d 	bl	14c <dut_pwr_off>
     2d2:	f7ff ff45 	bl	160 <dut_reset_off>
     2d6:	4b19      	ldr	r3, [pc, #100]	; (33c <main+0xe0>)
     2d8:	0018      	movs	r0, r3
     2da:	f006 fb9b 	bl	6a14 <osMutexCreate>
     2de:	0002      	movs	r2, r0
     2e0:	4b17      	ldr	r3, [pc, #92]	; (340 <main+0xe4>)
     2e2:	601a      	str	r2, [r3, #0]
     2e4:	f005 fd96 	bl	5e14 <osKernelInitialize>
     2e8:	4b16      	ldr	r3, [pc, #88]	; (344 <main+0xe8>)
     2ea:	2100      	movs	r1, #0
     2ec:	0018      	movs	r0, r3
     2ee:	f006 fe73 	bl	6fd8 <osMessageCreate>
     2f2:	0002      	movs	r2, r0
     2f4:	4b14      	ldr	r3, [pc, #80]	; (348 <main+0xec>)
     2f6:	601a      	str	r2, [r3, #0]
     2f8:	4b14      	ldr	r3, [pc, #80]	; (34c <main+0xf0>)
     2fa:	2100      	movs	r1, #0
     2fc:	0018      	movs	r0, r3
     2fe:	f005 ff1b 	bl	6138 <osThreadCreate>
     302:	0002      	movs	r2, r0
     304:	4b12      	ldr	r3, [pc, #72]	; (350 <main+0xf4>)
     306:	601a      	str	r2, [r3, #0]
     308:	4b12      	ldr	r3, [pc, #72]	; (354 <main+0xf8>)
     30a:	2100      	movs	r1, #0
     30c:	0018      	movs	r0, r3
     30e:	f005 ff13 	bl	6138 <osThreadCreate>
     312:	0002      	movs	r2, r0
     314:	4b10      	ldr	r3, [pc, #64]	; (358 <main+0xfc>)
     316:	601a      	str	r2, [r3, #0]
     318:	4b10      	ldr	r3, [pc, #64]	; (35c <main+0x100>)
     31a:	2100      	movs	r1, #0
     31c:	0018      	movs	r0, r3
     31e:	f005 ff0b 	bl	6138 <osThreadCreate>
     322:	0002      	movs	r2, r0
     324:	4b0e      	ldr	r3, [pc, #56]	; (360 <main+0x104>)
     326:	601a      	str	r2, [r3, #0]
     328:	f005 fe10 	bl	5f4c <osKernelStart>
     32c:	e7fe      	b.n	32c <main+0xd0>
     32e:	46c0      	nop			; (mov r8, r8)
     330:	00989680 	.word	0x00989680
     334:	0000934c 	.word	0x0000934c
     338:	400a8000 	.word	0x400a8000
     33c:	00008c30 	.word	0x00008c30
     340:	20000888 	.word	0x20000888
     344:	00008c28 	.word	0x00008c28
     348:	20000864 	.word	0x20000864
     34c:	00008bf8 	.word	0x00008bf8
     350:	20000858 	.word	0x20000858
     354:	00008c08 	.word	0x00008c08
     358:	2000085c 	.word	0x2000085c
     35c:	00008c18 	.word	0x00008c18
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
     376:	f006 fa91 	bl	689c <osSignalSet>
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
     484:	f006 fa38 	bl	68f8 <osSignalWait>
     488:	230c      	movs	r3, #12
     48a:	18fb      	adds	r3, r7, r3
     48c:	681b      	ldr	r3, [r3, #0]
     48e:	2b08      	cmp	r3, #8
     490:	d1f2      	bne.n	478 <threadDUTProceed+0x4c>
     492:	230c      	movs	r3, #12
     494:	18fb      	adds	r3, r7, r3
     496:	685b      	ldr	r3, [r3, #4]
     498:	2b02      	cmp	r3, #2
     49a:	d02e      	beq.n	4fa <threadDUTProceed+0xce>
     49c:	2b08      	cmp	r3, #8
     49e:	d044      	beq.n	52a <threadDUTProceed+0xfe>
     4a0:	2b01      	cmp	r3, #1
     4a2:	d16a      	bne.n	57a <threadDUTProceed+0x14e>
     4a4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     4a6:	2b01      	cmp	r3, #1
     4a8:	d91f      	bls.n	4ea <threadDUTProceed+0xbe>
     4aa:	4b34      	ldr	r3, [pc, #208]	; (57c <threadDUTProceed+0x150>)
     4ac:	681b      	ldr	r3, [r3, #0]
     4ae:	021a      	lsls	r2, r3, #8
     4b0:	2318      	movs	r3, #24
     4b2:	18fb      	adds	r3, r7, r3
     4b4:	609a      	str	r2, [r3, #8]
     4b6:	4b32      	ldr	r3, [pc, #200]	; (580 <threadDUTProceed+0x154>)
     4b8:	681a      	ldr	r2, [r3, #0]
     4ba:	2318      	movs	r3, #24
     4bc:	18fb      	adds	r3, r7, r3
     4be:	605a      	str	r2, [r3, #4]
     4c0:	f003 fed2 	bl	4268 <fsm_get_cyccnt>
     4c4:	0002      	movs	r2, r0
     4c6:	2318      	movs	r3, #24
     4c8:	18fb      	adds	r3, r7, r3
     4ca:	619a      	str	r2, [r3, #24]
     4cc:	f003 fec2 	bl	4254 <fsm_get_mode>
     4d0:	0003      	movs	r3, r0
     4d2:	001a      	movs	r2, r3
     4d4:	2318      	movs	r3, #24
     4d6:	18fb      	adds	r3, r7, r3
     4d8:	61da      	str	r2, [r3, #28]
     4da:	2318      	movs	r3, #24
     4dc:	18fb      	adds	r3, r7, r3
     4de:	2120      	movs	r1, #32
     4e0:	0018      	movs	r0, r3
     4e2:	f003 f8e9 	bl	36b8 <mdb_fifo_write>
     4e6:	2300      	movs	r3, #0
     4e8:	647b      	str	r3, [r7, #68]	; 0x44
     4ea:	2301      	movs	r3, #1
     4ec:	647b      	str	r3, [r7, #68]	; 0x44
     4ee:	2204      	movs	r2, #4
     4f0:	2100      	movs	r1, #0
     4f2:	2001      	movs	r0, #1
     4f4:	f000 fd64 	bl	fc0 <mdb232_read_inputregs>
     4f8:	e03f      	b.n	57a <threadDUTProceed+0x14e>
     4fa:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     4fc:	2202      	movs	r2, #2
     4fe:	4313      	orrs	r3, r2
     500:	647b      	str	r3, [r7, #68]	; 0x44
     502:	2318      	movs	r3, #24
     504:	18fb      	adds	r3, r7, r3
     506:	2200      	movs	r2, #0
     508:	611a      	str	r2, [r3, #16]
     50a:	f000 fe1d 	bl	1148 <mdb232_get_crc>
     50e:	1e03      	subs	r3, r0, #0
     510:	d130      	bne.n	574 <threadDUTProceed+0x148>
     512:	2308      	movs	r3, #8
     514:	18fb      	adds	r3, r7, r3
     516:	0018      	movs	r0, r3
     518:	f000 fe34 	bl	1184 <mdb232_bikm_get_torque>
     51c:	0002      	movs	r2, r0
     51e:	2318      	movs	r3, #24
     520:	18fb      	adds	r3, r7, r3
     522:	611a      	str	r2, [r3, #16]
     524:	2300      	movs	r3, #0
     526:	60bb      	str	r3, [r7, #8]
     528:	e024      	b.n	574 <threadDUTProceed+0x148>
     52a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     52c:	2204      	movs	r2, #4
     52e:	4313      	orrs	r3, r2
     530:	647b      	str	r3, [r7, #68]	; 0x44
     532:	f000 facd 	bl	ad0 <mdb485_get_crc>
     536:	1e03      	subs	r3, r0, #0
     538:	d11e      	bne.n	578 <threadDUTProceed+0x14c>
     53a:	f000 fab5 	bl	aa8 <mdb485_get_func>
     53e:	0003      	movs	r3, r0
     540:	643b      	str	r3, [r7, #64]	; 0x40
     542:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     544:	2b04      	cmp	r3, #4
     546:	d117      	bne.n	578 <threadDUTProceed+0x14c>
     548:	f000 fae0 	bl	b0c <mdb485_si30_get_counter>
     54c:	0003      	movs	r3, r0
     54e:	63fb      	str	r3, [r7, #60]	; 0x3c
     550:	2318      	movs	r3, #24
     552:	18fb      	adds	r3, r7, r3
     554:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     556:	601a      	str	r2, [r3, #0]
     558:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     55a:	021b      	lsls	r3, r3, #8
     55c:	001a      	movs	r2, r3
     55e:	2304      	movs	r3, #4
     560:	4313      	orrs	r3, r2
     562:	63bb      	str	r3, [r7, #56]	; 0x38
     564:	4b07      	ldr	r3, [pc, #28]	; (584 <threadDUTProceed+0x158>)
     566:	681b      	ldr	r3, [r3, #0]
     568:	6bb9      	ldr	r1, [r7, #56]	; 0x38
     56a:	2200      	movs	r2, #0
     56c:	0018      	movs	r0, r3
     56e:	f006 fd5f 	bl	7030 <osMessagePut>
     572:	e001      	b.n	578 <threadDUTProceed+0x14c>
     574:	46c0      	nop			; (mov r8, r8)
     576:	e77f      	b.n	478 <threadDUTProceed+0x4c>
     578:	46c0      	nop			; (mov r8, r8)
     57a:	e77d      	b.n	478 <threadDUTProceed+0x4c>
     57c:	2000089c 	.word	0x2000089c
     580:	200008a0 	.word	0x200008a0
     584:	20000864 	.word	0x20000864

00000588 <threadFSMProceed>:
     588:	b580      	push	{r7, lr}
     58a:	b086      	sub	sp, #24
     58c:	af00      	add	r7, sp, #0
     58e:	6078      	str	r0, [r7, #4]
     590:	4b0b      	ldr	r3, [pc, #44]	; (5c0 <threadFSMProceed+0x38>)
     592:	6819      	ldr	r1, [r3, #0]
     594:	2308      	movs	r3, #8
     596:	18f8      	adds	r0, r7, r3
     598:	2301      	movs	r3, #1
     59a:	425b      	negs	r3, r3
     59c:	001a      	movs	r2, r3
     59e:	f006 fd6b 	bl	7078 <osMessageGet>
     5a2:	2308      	movs	r3, #8
     5a4:	18fb      	adds	r3, r7, r3
     5a6:	681b      	ldr	r3, [r3, #0]
     5a8:	2b10      	cmp	r3, #16
     5aa:	d1f1      	bne.n	590 <threadFSMProceed+0x8>
     5ac:	2308      	movs	r3, #8
     5ae:	18fb      	adds	r3, r7, r3
     5b0:	685b      	ldr	r3, [r3, #4]
     5b2:	617b      	str	r3, [r7, #20]
     5b4:	4b03      	ldr	r3, [pc, #12]	; (5c4 <threadFSMProceed+0x3c>)
     5b6:	681b      	ldr	r3, [r3, #0]
     5b8:	697a      	ldr	r2, [r7, #20]
     5ba:	0010      	movs	r0, r2
     5bc:	4798      	blx	r3
     5be:	e7e7      	b.n	590 <threadFSMProceed+0x8>
     5c0:	20000864 	.word	0x20000864
     5c4:	20000014 	.word	0x20000014

000005c8 <handler_reset>:
     5c8:	b580      	push	{r7, lr}
     5ca:	b082      	sub	sp, #8
     5cc:	af00      	add	r7, sp, #0
     5ce:	4b1a      	ldr	r3, [pc, #104]	; (638 <handler_reset+0x70>)
     5d0:	607b      	str	r3, [r7, #4]
     5d2:	4b1a      	ldr	r3, [pc, #104]	; (63c <handler_reset+0x74>)
     5d4:	603b      	str	r3, [r7, #0]
     5d6:	e007      	b.n	5e8 <handler_reset+0x20>
     5d8:	683b      	ldr	r3, [r7, #0]
     5da:	1d1a      	adds	r2, r3, #4
     5dc:	603a      	str	r2, [r7, #0]
     5de:	687a      	ldr	r2, [r7, #4]
     5e0:	1d11      	adds	r1, r2, #4
     5e2:	6079      	str	r1, [r7, #4]
     5e4:	6812      	ldr	r2, [r2, #0]
     5e6:	601a      	str	r2, [r3, #0]
     5e8:	683a      	ldr	r2, [r7, #0]
     5ea:	4b15      	ldr	r3, [pc, #84]	; (640 <handler_reset+0x78>)
     5ec:	429a      	cmp	r2, r3
     5ee:	d3f3      	bcc.n	5d8 <handler_reset+0x10>
     5f0:	4b14      	ldr	r3, [pc, #80]	; (644 <handler_reset+0x7c>)
     5f2:	607b      	str	r3, [r7, #4]
     5f4:	4b14      	ldr	r3, [pc, #80]	; (648 <handler_reset+0x80>)
     5f6:	603b      	str	r3, [r7, #0]
     5f8:	e007      	b.n	60a <handler_reset+0x42>
     5fa:	683b      	ldr	r3, [r7, #0]
     5fc:	1d1a      	adds	r2, r3, #4
     5fe:	603a      	str	r2, [r7, #0]
     600:	687a      	ldr	r2, [r7, #4]
     602:	1d11      	adds	r1, r2, #4
     604:	6079      	str	r1, [r7, #4]
     606:	6812      	ldr	r2, [r2, #0]
     608:	601a      	str	r2, [r3, #0]
     60a:	683a      	ldr	r2, [r7, #0]
     60c:	4b0f      	ldr	r3, [pc, #60]	; (64c <handler_reset+0x84>)
     60e:	429a      	cmp	r2, r3
     610:	d3f3      	bcc.n	5fa <handler_reset+0x32>
     612:	4b0f      	ldr	r3, [pc, #60]	; (650 <handler_reset+0x88>)
     614:	603b      	str	r3, [r7, #0]
     616:	e004      	b.n	622 <handler_reset+0x5a>
     618:	683b      	ldr	r3, [r7, #0]
     61a:	1d1a      	adds	r2, r3, #4
     61c:	603a      	str	r2, [r7, #0]
     61e:	2200      	movs	r2, #0
     620:	601a      	str	r2, [r3, #0]
     622:	683a      	ldr	r2, [r7, #0]
     624:	4b0b      	ldr	r3, [pc, #44]	; (654 <handler_reset+0x8c>)
     626:	429a      	cmp	r2, r3
     628:	d3f6      	bcc.n	618 <handler_reset+0x50>
     62a:	f7ff fe17 	bl	25c <main>
     62e:	46c0      	nop			; (mov r8, r8)
     630:	46bd      	mov	sp, r7
     632:	b002      	add	sp, #8
     634:	bd80      	pop	{r7, pc}
     636:	46c0      	nop			; (mov r8, r8)
     638:	00009778 	.word	0x00009778
     63c:	20000000 	.word	0x20000000
     640:	20000858 	.word	0x20000858
     644:	00009fd0 	.word	0x00009fd0
     648:	20100000 	.word	0x20100000
     64c:	201002a0 	.word	0x201002a0
     650:	20000858 	.word	0x20000858
     654:	20006104 	.word	0x20006104

00000658 <default_handler>:
     658:	b580      	push	{r7, lr}
     65a:	af00      	add	r7, sp, #0
     65c:	e7fe      	b.n	65c <default_handler+0x4>
     65e:	46c0      	nop			; (mov r8, r8)

00000660 <__NVIC_EnableIRQ>:
     660:	b580      	push	{r7, lr}
     662:	b082      	sub	sp, #8
     664:	af00      	add	r7, sp, #0
     666:	0002      	movs	r2, r0
     668:	1dfb      	adds	r3, r7, #7
     66a:	701a      	strb	r2, [r3, #0]
     66c:	1dfb      	adds	r3, r7, #7
     66e:	781b      	ldrb	r3, [r3, #0]
     670:	2b7f      	cmp	r3, #127	; 0x7f
     672:	d809      	bhi.n	688 <__NVIC_EnableIRQ+0x28>
     674:	4b06      	ldr	r3, [pc, #24]	; (690 <__NVIC_EnableIRQ+0x30>)
     676:	1dfa      	adds	r2, r7, #7
     678:	7812      	ldrb	r2, [r2, #0]
     67a:	0011      	movs	r1, r2
     67c:	221f      	movs	r2, #31
     67e:	400a      	ands	r2, r1
     680:	2101      	movs	r1, #1
     682:	4091      	lsls	r1, r2
     684:	000a      	movs	r2, r1
     686:	601a      	str	r2, [r3, #0]
     688:	46c0      	nop			; (mov r8, r8)
     68a:	46bd      	mov	sp, r7
     68c:	b002      	add	sp, #8
     68e:	bd80      	pop	{r7, pc}
     690:	e000e100 	.word	0xe000e100

00000694 <__NVIC_DisableIRQ>:
     694:	b580      	push	{r7, lr}
     696:	b082      	sub	sp, #8
     698:	af00      	add	r7, sp, #0
     69a:	0002      	movs	r2, r0
     69c:	1dfb      	adds	r3, r7, #7
     69e:	701a      	strb	r2, [r3, #0]
     6a0:	1dfb      	adds	r3, r7, #7
     6a2:	781b      	ldrb	r3, [r3, #0]
     6a4:	2b7f      	cmp	r3, #127	; 0x7f
     6a6:	d80e      	bhi.n	6c6 <__NVIC_DisableIRQ+0x32>
     6a8:	4909      	ldr	r1, [pc, #36]	; (6d0 <__NVIC_DisableIRQ+0x3c>)
     6aa:	1dfb      	adds	r3, r7, #7
     6ac:	781b      	ldrb	r3, [r3, #0]
     6ae:	001a      	movs	r2, r3
     6b0:	231f      	movs	r3, #31
     6b2:	4013      	ands	r3, r2
     6b4:	2201      	movs	r2, #1
     6b6:	409a      	lsls	r2, r3
     6b8:	0013      	movs	r3, r2
     6ba:	2280      	movs	r2, #128	; 0x80
     6bc:	508b      	str	r3, [r1, r2]
     6be:	f3bf 8f4f 	dsb	sy
     6c2:	f3bf 8f6f 	isb	sy
     6c6:	46c0      	nop			; (mov r8, r8)
     6c8:	46bd      	mov	sp, r7
     6ca:	b002      	add	sp, #8
     6cc:	bd80      	pop	{r7, pc}
     6ce:	46c0      	nop			; (mov r8, r8)
     6d0:	e000e100 	.word	0xe000e100

000006d4 <mdb485_init>:
     6d4:	b580      	push	{r7, lr}
     6d6:	af00      	add	r7, sp, #0
     6d8:	4b14      	ldr	r3, [pc, #80]	; (72c <mdb485_init+0x58>)
     6da:	2234      	movs	r2, #52	; 0x34
     6dc:	625a      	str	r2, [r3, #36]	; 0x24
     6de:	4b13      	ldr	r3, [pc, #76]	; (72c <mdb485_init+0x58>)
     6e0:	2205      	movs	r2, #5
     6e2:	629a      	str	r2, [r3, #40]	; 0x28
     6e4:	4b11      	ldr	r3, [pc, #68]	; (72c <mdb485_init+0x58>)
     6e6:	4a11      	ldr	r2, [pc, #68]	; (72c <mdb485_init+0x58>)
     6e8:	6b52      	ldr	r2, [r2, #52]	; 0x34
     6ea:	213f      	movs	r1, #63	; 0x3f
     6ec:	438a      	bics	r2, r1
     6ee:	635a      	str	r2, [r3, #52]	; 0x34
     6f0:	4b0e      	ldr	r3, [pc, #56]	; (72c <mdb485_init+0x58>)
     6f2:	4a0e      	ldr	r2, [pc, #56]	; (72c <mdb485_init+0x58>)
     6f4:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     6f6:	2110      	movs	r1, #16
     6f8:	430a      	orrs	r2, r1
     6fa:	62da      	str	r2, [r3, #44]	; 0x2c
     6fc:	4b0b      	ldr	r3, [pc, #44]	; (72c <mdb485_init+0x58>)
     6fe:	4a0b      	ldr	r2, [pc, #44]	; (72c <mdb485_init+0x58>)
     700:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     702:	2160      	movs	r1, #96	; 0x60
     704:	430a      	orrs	r2, r1
     706:	62da      	str	r2, [r3, #44]	; 0x2c
     708:	4b08      	ldr	r3, [pc, #32]	; (72c <mdb485_init+0x58>)
     70a:	4a08      	ldr	r2, [pc, #32]	; (72c <mdb485_init+0x58>)
     70c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     70e:	4908      	ldr	r1, [pc, #32]	; (730 <mdb485_init+0x5c>)
     710:	430a      	orrs	r2, r1
     712:	631a      	str	r2, [r3, #48]	; 0x30
     714:	4b05      	ldr	r3, [pc, #20]	; (72c <mdb485_init+0x58>)
     716:	4a05      	ldr	r2, [pc, #20]	; (72c <mdb485_init+0x58>)
     718:	6b92      	ldr	r2, [r2, #56]	; 0x38
     71a:	2140      	movs	r1, #64	; 0x40
     71c:	430a      	orrs	r2, r1
     71e:	639a      	str	r2, [r3, #56]	; 0x38
     720:	2007      	movs	r0, #7
     722:	f7ff ff9d 	bl	660 <__NVIC_EnableIRQ>
     726:	46c0      	nop			; (mov r8, r8)
     728:	46bd      	mov	sp, r7
     72a:	bd80      	pop	{r7, pc}
     72c:	40038000 	.word	0x40038000
     730:	00000301 	.word	0x00000301

00000734 <mdb485_send>:
     734:	b580      	push	{r7, lr}
     736:	b084      	sub	sp, #16
     738:	af00      	add	r7, sp, #0
     73a:	6078      	str	r0, [r7, #4]
     73c:	6039      	str	r1, [r7, #0]
     73e:	4b17      	ldr	r3, [pc, #92]	; (79c <mdb485_send+0x68>)
     740:	4a16      	ldr	r2, [pc, #88]	; (79c <mdb485_send+0x68>)
     742:	6812      	ldr	r2, [r2, #0]
     744:	2180      	movs	r1, #128	; 0x80
     746:	0209      	lsls	r1, r1, #8
     748:	430a      	orrs	r2, r1
     74a:	601a      	str	r2, [r3, #0]
     74c:	2300      	movs	r3, #0
     74e:	60fb      	str	r3, [r7, #12]
     750:	e00e      	b.n	770 <mdb485_send+0x3c>
     752:	46c0      	nop			; (mov r8, r8)
     754:	4b12      	ldr	r3, [pc, #72]	; (7a0 <mdb485_send+0x6c>)
     756:	699b      	ldr	r3, [r3, #24]
     758:	2220      	movs	r2, #32
     75a:	4013      	ands	r3, r2
     75c:	d1fa      	bne.n	754 <mdb485_send+0x20>
     75e:	4a10      	ldr	r2, [pc, #64]	; (7a0 <mdb485_send+0x6c>)
     760:	687b      	ldr	r3, [r7, #4]
     762:	1c59      	adds	r1, r3, #1
     764:	6079      	str	r1, [r7, #4]
     766:	781b      	ldrb	r3, [r3, #0]
     768:	6013      	str	r3, [r2, #0]
     76a:	68fb      	ldr	r3, [r7, #12]
     76c:	3301      	adds	r3, #1
     76e:	60fb      	str	r3, [r7, #12]
     770:	68fa      	ldr	r2, [r7, #12]
     772:	683b      	ldr	r3, [r7, #0]
     774:	429a      	cmp	r2, r3
     776:	dbec      	blt.n	752 <mdb485_send+0x1e>
     778:	46c0      	nop			; (mov r8, r8)
     77a:	4b09      	ldr	r3, [pc, #36]	; (7a0 <mdb485_send+0x6c>)
     77c:	699b      	ldr	r3, [r3, #24]
     77e:	2208      	movs	r2, #8
     780:	4013      	ands	r3, r2
     782:	d1fa      	bne.n	77a <mdb485_send+0x46>
     784:	4b05      	ldr	r3, [pc, #20]	; (79c <mdb485_send+0x68>)
     786:	4a05      	ldr	r2, [pc, #20]	; (79c <mdb485_send+0x68>)
     788:	6812      	ldr	r2, [r2, #0]
     78a:	4906      	ldr	r1, [pc, #24]	; (7a4 <mdb485_send+0x70>)
     78c:	400a      	ands	r2, r1
     78e:	601a      	str	r2, [r3, #0]
     790:	683b      	ldr	r3, [r7, #0]
     792:	0018      	movs	r0, r3
     794:	46bd      	mov	sp, r7
     796:	b004      	add	sp, #16
     798:	bd80      	pop	{r7, pc}
     79a:	46c0      	nop			; (mov r8, r8)
     79c:	400c0000 	.word	0x400c0000
     7a0:	40038000 	.word	0x40038000
     7a4:	ffff7fff 	.word	0xffff7fff

000007a8 <mdb485_putch>:
     7a8:	b580      	push	{r7, lr}
     7aa:	b082      	sub	sp, #8
     7ac:	af00      	add	r7, sp, #0
     7ae:	0002      	movs	r2, r0
     7b0:	1dfb      	adds	r3, r7, #7
     7b2:	701a      	strb	r2, [r3, #0]
     7b4:	46c0      	nop			; (mov r8, r8)
     7b6:	4b06      	ldr	r3, [pc, #24]	; (7d0 <mdb485_putch+0x28>)
     7b8:	699b      	ldr	r3, [r3, #24]
     7ba:	2220      	movs	r2, #32
     7bc:	4013      	ands	r3, r2
     7be:	d1fa      	bne.n	7b6 <mdb485_putch+0xe>
     7c0:	4b03      	ldr	r3, [pc, #12]	; (7d0 <mdb485_putch+0x28>)
     7c2:	1dfa      	adds	r2, r7, #7
     7c4:	7812      	ldrb	r2, [r2, #0]
     7c6:	601a      	str	r2, [r3, #0]
     7c8:	46c0      	nop			; (mov r8, r8)
     7ca:	46bd      	mov	sp, r7
     7cc:	b002      	add	sp, #8
     7ce:	bd80      	pop	{r7, pc}
     7d0:	40038000 	.word	0x40038000

000007d4 <mdb485_writeregs>:
     7d4:	b590      	push	{r4, r7, lr}
     7d6:	b089      	sub	sp, #36	; 0x24
     7d8:	af00      	add	r7, sp, #0
     7da:	0004      	movs	r4, r0
     7dc:	0008      	movs	r0, r1
     7de:	0011      	movs	r1, r2
     7e0:	607b      	str	r3, [r7, #4]
     7e2:	230f      	movs	r3, #15
     7e4:	18fb      	adds	r3, r7, r3
     7e6:	1c22      	adds	r2, r4, #0
     7e8:	701a      	strb	r2, [r3, #0]
     7ea:	230c      	movs	r3, #12
     7ec:	18fb      	adds	r3, r7, r3
     7ee:	1c02      	adds	r2, r0, #0
     7f0:	801a      	strh	r2, [r3, #0]
     7f2:	230a      	movs	r3, #10
     7f4:	18fb      	adds	r3, r7, r3
     7f6:	1c0a      	adds	r2, r1, #0
     7f8:	801a      	strh	r2, [r3, #0]
     7fa:	4b48      	ldr	r3, [pc, #288]	; (91c <mdb485_writeregs+0x148>)
     7fc:	61bb      	str	r3, [r7, #24]
     7fe:	230a      	movs	r3, #10
     800:	18fb      	adds	r3, r7, r3
     802:	881b      	ldrh	r3, [r3, #0]
     804:	005b      	lsls	r3, r3, #1
     806:	617b      	str	r3, [r7, #20]
     808:	69bb      	ldr	r3, [r7, #24]
     80a:	1c5a      	adds	r2, r3, #1
     80c:	61ba      	str	r2, [r7, #24]
     80e:	220f      	movs	r2, #15
     810:	18ba      	adds	r2, r7, r2
     812:	7812      	ldrb	r2, [r2, #0]
     814:	701a      	strb	r2, [r3, #0]
     816:	69bb      	ldr	r3, [r7, #24]
     818:	1c5a      	adds	r2, r3, #1
     81a:	61ba      	str	r2, [r7, #24]
     81c:	2210      	movs	r2, #16
     81e:	701a      	strb	r2, [r3, #0]
     820:	69bb      	ldr	r3, [r7, #24]
     822:	1c5a      	adds	r2, r3, #1
     824:	61ba      	str	r2, [r7, #24]
     826:	220c      	movs	r2, #12
     828:	18ba      	adds	r2, r7, r2
     82a:	8812      	ldrh	r2, [r2, #0]
     82c:	0a12      	lsrs	r2, r2, #8
     82e:	b292      	uxth	r2, r2
     830:	b2d2      	uxtb	r2, r2
     832:	701a      	strb	r2, [r3, #0]
     834:	69bb      	ldr	r3, [r7, #24]
     836:	1c5a      	adds	r2, r3, #1
     838:	61ba      	str	r2, [r7, #24]
     83a:	220c      	movs	r2, #12
     83c:	18ba      	adds	r2, r7, r2
     83e:	8812      	ldrh	r2, [r2, #0]
     840:	b2d2      	uxtb	r2, r2
     842:	701a      	strb	r2, [r3, #0]
     844:	69bb      	ldr	r3, [r7, #24]
     846:	1c5a      	adds	r2, r3, #1
     848:	61ba      	str	r2, [r7, #24]
     84a:	220a      	movs	r2, #10
     84c:	18ba      	adds	r2, r7, r2
     84e:	8812      	ldrh	r2, [r2, #0]
     850:	0a12      	lsrs	r2, r2, #8
     852:	b292      	uxth	r2, r2
     854:	b2d2      	uxtb	r2, r2
     856:	701a      	strb	r2, [r3, #0]
     858:	69bb      	ldr	r3, [r7, #24]
     85a:	1c5a      	adds	r2, r3, #1
     85c:	61ba      	str	r2, [r7, #24]
     85e:	220a      	movs	r2, #10
     860:	18ba      	adds	r2, r7, r2
     862:	8812      	ldrh	r2, [r2, #0]
     864:	b2d2      	uxtb	r2, r2
     866:	701a      	strb	r2, [r3, #0]
     868:	69bb      	ldr	r3, [r7, #24]
     86a:	1c5a      	adds	r2, r3, #1
     86c:	61ba      	str	r2, [r7, #24]
     86e:	697a      	ldr	r2, [r7, #20]
     870:	b2d2      	uxtb	r2, r2
     872:	701a      	strb	r2, [r3, #0]
     874:	697b      	ldr	r3, [r7, #20]
     876:	3307      	adds	r3, #7
     878:	2b10      	cmp	r3, #16
     87a:	dc4a      	bgt.n	912 <mdb485_writeregs+0x13e>
     87c:	2300      	movs	r3, #0
     87e:	61fb      	str	r3, [r7, #28]
     880:	e01b      	b.n	8ba <mdb485_writeregs+0xe6>
     882:	687b      	ldr	r3, [r7, #4]
     884:	1c9a      	adds	r2, r3, #2
     886:	607a      	str	r2, [r7, #4]
     888:	2212      	movs	r2, #18
     88a:	18ba      	adds	r2, r7, r2
     88c:	881b      	ldrh	r3, [r3, #0]
     88e:	8013      	strh	r3, [r2, #0]
     890:	69bb      	ldr	r3, [r7, #24]
     892:	1c5a      	adds	r2, r3, #1
     894:	61ba      	str	r2, [r7, #24]
     896:	2212      	movs	r2, #18
     898:	18ba      	adds	r2, r7, r2
     89a:	8812      	ldrh	r2, [r2, #0]
     89c:	0a12      	lsrs	r2, r2, #8
     89e:	b292      	uxth	r2, r2
     8a0:	b2d2      	uxtb	r2, r2
     8a2:	701a      	strb	r2, [r3, #0]
     8a4:	69bb      	ldr	r3, [r7, #24]
     8a6:	1c5a      	adds	r2, r3, #1
     8a8:	61ba      	str	r2, [r7, #24]
     8aa:	2212      	movs	r2, #18
     8ac:	18ba      	adds	r2, r7, r2
     8ae:	8812      	ldrh	r2, [r2, #0]
     8b0:	b2d2      	uxtb	r2, r2
     8b2:	701a      	strb	r2, [r3, #0]
     8b4:	69fb      	ldr	r3, [r7, #28]
     8b6:	3301      	adds	r3, #1
     8b8:	61fb      	str	r3, [r7, #28]
     8ba:	230a      	movs	r3, #10
     8bc:	18fb      	adds	r3, r7, r3
     8be:	881a      	ldrh	r2, [r3, #0]
     8c0:	69fb      	ldr	r3, [r7, #28]
     8c2:	429a      	cmp	r2, r3
     8c4:	dcdd      	bgt.n	882 <mdb485_writeregs+0xae>
     8c6:	697b      	ldr	r3, [r7, #20]
     8c8:	1dda      	adds	r2, r3, #7
     8ca:	2310      	movs	r3, #16
     8cc:	18fc      	adds	r4, r7, r3
     8ce:	4b13      	ldr	r3, [pc, #76]	; (91c <mdb485_writeregs+0x148>)
     8d0:	0011      	movs	r1, r2
     8d2:	0018      	movs	r0, r3
     8d4:	f002 fdec 	bl	34b0 <crc16>
     8d8:	0003      	movs	r3, r0
     8da:	8023      	strh	r3, [r4, #0]
     8dc:	69bb      	ldr	r3, [r7, #24]
     8de:	1c5a      	adds	r2, r3, #1
     8e0:	61ba      	str	r2, [r7, #24]
     8e2:	2210      	movs	r2, #16
     8e4:	18ba      	adds	r2, r7, r2
     8e6:	8812      	ldrh	r2, [r2, #0]
     8e8:	b2d2      	uxtb	r2, r2
     8ea:	701a      	strb	r2, [r3, #0]
     8ec:	69bb      	ldr	r3, [r7, #24]
     8ee:	1c5a      	adds	r2, r3, #1
     8f0:	61ba      	str	r2, [r7, #24]
     8f2:	2210      	movs	r2, #16
     8f4:	18ba      	adds	r2, r7, r2
     8f6:	8812      	ldrh	r2, [r2, #0]
     8f8:	0a12      	lsrs	r2, r2, #8
     8fa:	b292      	uxth	r2, r2
     8fc:	b2d2      	uxtb	r2, r2
     8fe:	701a      	strb	r2, [r3, #0]
     900:	697b      	ldr	r3, [r7, #20]
     902:	3309      	adds	r3, #9
     904:	001a      	movs	r2, r3
     906:	4b05      	ldr	r3, [pc, #20]	; (91c <mdb485_writeregs+0x148>)
     908:	0011      	movs	r1, r2
     90a:	0018      	movs	r0, r3
     90c:	f7ff ff12 	bl	734 <mdb485_send>
     910:	e000      	b.n	914 <mdb485_writeregs+0x140>
     912:	46c0      	nop			; (mov r8, r8)
     914:	46bd      	mov	sp, r7
     916:	b009      	add	sp, #36	; 0x24
     918:	bd90      	pop	{r4, r7, pc}
     91a:	46c0      	nop			; (mov r8, r8)
     91c:	200008bc 	.word	0x200008bc

00000920 <mdb485_readregs>:
     920:	b590      	push	{r4, r7, lr}
     922:	b085      	sub	sp, #20
     924:	af00      	add	r7, sp, #0
     926:	0004      	movs	r4, r0
     928:	0008      	movs	r0, r1
     92a:	0011      	movs	r1, r2
     92c:	1dfb      	adds	r3, r7, #7
     92e:	1c22      	adds	r2, r4, #0
     930:	701a      	strb	r2, [r3, #0]
     932:	1d3b      	adds	r3, r7, #4
     934:	1c02      	adds	r2, r0, #0
     936:	801a      	strh	r2, [r3, #0]
     938:	1cbb      	adds	r3, r7, #2
     93a:	1c0a      	adds	r2, r1, #0
     93c:	801a      	strh	r2, [r3, #0]
     93e:	4b28      	ldr	r3, [pc, #160]	; (9e0 <mdb485_readregs+0xc0>)
     940:	60fb      	str	r3, [r7, #12]
     942:	68fb      	ldr	r3, [r7, #12]
     944:	1c5a      	adds	r2, r3, #1
     946:	60fa      	str	r2, [r7, #12]
     948:	1dfa      	adds	r2, r7, #7
     94a:	7812      	ldrb	r2, [r2, #0]
     94c:	701a      	strb	r2, [r3, #0]
     94e:	68fb      	ldr	r3, [r7, #12]
     950:	1c5a      	adds	r2, r3, #1
     952:	60fa      	str	r2, [r7, #12]
     954:	2203      	movs	r2, #3
     956:	701a      	strb	r2, [r3, #0]
     958:	68fb      	ldr	r3, [r7, #12]
     95a:	1c5a      	adds	r2, r3, #1
     95c:	60fa      	str	r2, [r7, #12]
     95e:	1d3a      	adds	r2, r7, #4
     960:	8812      	ldrh	r2, [r2, #0]
     962:	0a12      	lsrs	r2, r2, #8
     964:	b292      	uxth	r2, r2
     966:	b2d2      	uxtb	r2, r2
     968:	701a      	strb	r2, [r3, #0]
     96a:	68fb      	ldr	r3, [r7, #12]
     96c:	1c5a      	adds	r2, r3, #1
     96e:	60fa      	str	r2, [r7, #12]
     970:	1d3a      	adds	r2, r7, #4
     972:	8812      	ldrh	r2, [r2, #0]
     974:	b2d2      	uxtb	r2, r2
     976:	701a      	strb	r2, [r3, #0]
     978:	68fb      	ldr	r3, [r7, #12]
     97a:	1c5a      	adds	r2, r3, #1
     97c:	60fa      	str	r2, [r7, #12]
     97e:	1cba      	adds	r2, r7, #2
     980:	8812      	ldrh	r2, [r2, #0]
     982:	0a12      	lsrs	r2, r2, #8
     984:	b292      	uxth	r2, r2
     986:	b2d2      	uxtb	r2, r2
     988:	701a      	strb	r2, [r3, #0]
     98a:	68fb      	ldr	r3, [r7, #12]
     98c:	1c5a      	adds	r2, r3, #1
     98e:	60fa      	str	r2, [r7, #12]
     990:	1cba      	adds	r2, r7, #2
     992:	8812      	ldrh	r2, [r2, #0]
     994:	b2d2      	uxtb	r2, r2
     996:	701a      	strb	r2, [r3, #0]
     998:	230a      	movs	r3, #10
     99a:	18fc      	adds	r4, r7, r3
     99c:	4b10      	ldr	r3, [pc, #64]	; (9e0 <mdb485_readregs+0xc0>)
     99e:	2106      	movs	r1, #6
     9a0:	0018      	movs	r0, r3
     9a2:	f002 fd85 	bl	34b0 <crc16>
     9a6:	0003      	movs	r3, r0
     9a8:	8023      	strh	r3, [r4, #0]
     9aa:	68fb      	ldr	r3, [r7, #12]
     9ac:	1c5a      	adds	r2, r3, #1
     9ae:	60fa      	str	r2, [r7, #12]
     9b0:	220a      	movs	r2, #10
     9b2:	18ba      	adds	r2, r7, r2
     9b4:	8812      	ldrh	r2, [r2, #0]
     9b6:	b2d2      	uxtb	r2, r2
     9b8:	701a      	strb	r2, [r3, #0]
     9ba:	68fb      	ldr	r3, [r7, #12]
     9bc:	1c5a      	adds	r2, r3, #1
     9be:	60fa      	str	r2, [r7, #12]
     9c0:	220a      	movs	r2, #10
     9c2:	18ba      	adds	r2, r7, r2
     9c4:	8812      	ldrh	r2, [r2, #0]
     9c6:	0a12      	lsrs	r2, r2, #8
     9c8:	b292      	uxth	r2, r2
     9ca:	b2d2      	uxtb	r2, r2
     9cc:	701a      	strb	r2, [r3, #0]
     9ce:	4b04      	ldr	r3, [pc, #16]	; (9e0 <mdb485_readregs+0xc0>)
     9d0:	2108      	movs	r1, #8
     9d2:	0018      	movs	r0, r3
     9d4:	f7ff feae 	bl	734 <mdb485_send>
     9d8:	46c0      	nop			; (mov r8, r8)
     9da:	46bd      	mov	sp, r7
     9dc:	b005      	add	sp, #20
     9de:	bd90      	pop	{r4, r7, pc}
     9e0:	200008bc 	.word	0x200008bc

000009e4 <mdb485_read_inputregs>:
     9e4:	b590      	push	{r4, r7, lr}
     9e6:	b085      	sub	sp, #20
     9e8:	af00      	add	r7, sp, #0
     9ea:	0004      	movs	r4, r0
     9ec:	0008      	movs	r0, r1
     9ee:	0011      	movs	r1, r2
     9f0:	1dfb      	adds	r3, r7, #7
     9f2:	1c22      	adds	r2, r4, #0
     9f4:	701a      	strb	r2, [r3, #0]
     9f6:	1d3b      	adds	r3, r7, #4
     9f8:	1c02      	adds	r2, r0, #0
     9fa:	801a      	strh	r2, [r3, #0]
     9fc:	1cbb      	adds	r3, r7, #2
     9fe:	1c0a      	adds	r2, r1, #0
     a00:	801a      	strh	r2, [r3, #0]
     a02:	4b28      	ldr	r3, [pc, #160]	; (aa4 <mdb485_read_inputregs+0xc0>)
     a04:	60fb      	str	r3, [r7, #12]
     a06:	68fb      	ldr	r3, [r7, #12]
     a08:	1c5a      	adds	r2, r3, #1
     a0a:	60fa      	str	r2, [r7, #12]
     a0c:	1dfa      	adds	r2, r7, #7
     a0e:	7812      	ldrb	r2, [r2, #0]
     a10:	701a      	strb	r2, [r3, #0]
     a12:	68fb      	ldr	r3, [r7, #12]
     a14:	1c5a      	adds	r2, r3, #1
     a16:	60fa      	str	r2, [r7, #12]
     a18:	2204      	movs	r2, #4
     a1a:	701a      	strb	r2, [r3, #0]
     a1c:	68fb      	ldr	r3, [r7, #12]
     a1e:	1c5a      	adds	r2, r3, #1
     a20:	60fa      	str	r2, [r7, #12]
     a22:	1d3a      	adds	r2, r7, #4
     a24:	8812      	ldrh	r2, [r2, #0]
     a26:	0a12      	lsrs	r2, r2, #8
     a28:	b292      	uxth	r2, r2
     a2a:	b2d2      	uxtb	r2, r2
     a2c:	701a      	strb	r2, [r3, #0]
     a2e:	68fb      	ldr	r3, [r7, #12]
     a30:	1c5a      	adds	r2, r3, #1
     a32:	60fa      	str	r2, [r7, #12]
     a34:	1d3a      	adds	r2, r7, #4
     a36:	8812      	ldrh	r2, [r2, #0]
     a38:	b2d2      	uxtb	r2, r2
     a3a:	701a      	strb	r2, [r3, #0]
     a3c:	68fb      	ldr	r3, [r7, #12]
     a3e:	1c5a      	adds	r2, r3, #1
     a40:	60fa      	str	r2, [r7, #12]
     a42:	1cba      	adds	r2, r7, #2
     a44:	8812      	ldrh	r2, [r2, #0]
     a46:	0a12      	lsrs	r2, r2, #8
     a48:	b292      	uxth	r2, r2
     a4a:	b2d2      	uxtb	r2, r2
     a4c:	701a      	strb	r2, [r3, #0]
     a4e:	68fb      	ldr	r3, [r7, #12]
     a50:	1c5a      	adds	r2, r3, #1
     a52:	60fa      	str	r2, [r7, #12]
     a54:	1cba      	adds	r2, r7, #2
     a56:	8812      	ldrh	r2, [r2, #0]
     a58:	b2d2      	uxtb	r2, r2
     a5a:	701a      	strb	r2, [r3, #0]
     a5c:	230a      	movs	r3, #10
     a5e:	18fc      	adds	r4, r7, r3
     a60:	4b10      	ldr	r3, [pc, #64]	; (aa4 <mdb485_read_inputregs+0xc0>)
     a62:	2106      	movs	r1, #6
     a64:	0018      	movs	r0, r3
     a66:	f002 fd23 	bl	34b0 <crc16>
     a6a:	0003      	movs	r3, r0
     a6c:	8023      	strh	r3, [r4, #0]
     a6e:	68fb      	ldr	r3, [r7, #12]
     a70:	1c5a      	adds	r2, r3, #1
     a72:	60fa      	str	r2, [r7, #12]
     a74:	220a      	movs	r2, #10
     a76:	18ba      	adds	r2, r7, r2
     a78:	8812      	ldrh	r2, [r2, #0]
     a7a:	b2d2      	uxtb	r2, r2
     a7c:	701a      	strb	r2, [r3, #0]
     a7e:	68fb      	ldr	r3, [r7, #12]
     a80:	1c5a      	adds	r2, r3, #1
     a82:	60fa      	str	r2, [r7, #12]
     a84:	220a      	movs	r2, #10
     a86:	18ba      	adds	r2, r7, r2
     a88:	8812      	ldrh	r2, [r2, #0]
     a8a:	0a12      	lsrs	r2, r2, #8
     a8c:	b292      	uxth	r2, r2
     a8e:	b2d2      	uxtb	r2, r2
     a90:	701a      	strb	r2, [r3, #0]
     a92:	4b04      	ldr	r3, [pc, #16]	; (aa4 <mdb485_read_inputregs+0xc0>)
     a94:	2108      	movs	r1, #8
     a96:	0018      	movs	r0, r3
     a98:	f7ff fe4c 	bl	734 <mdb485_send>
     a9c:	46c0      	nop			; (mov r8, r8)
     a9e:	46bd      	mov	sp, r7
     aa0:	b005      	add	sp, #20
     aa2:	bd90      	pop	{r4, r7, pc}
     aa4:	200008bc 	.word	0x200008bc

00000aa8 <mdb485_get_func>:
     aa8:	b580      	push	{r7, lr}
     aaa:	b082      	sub	sp, #8
     aac:	af00      	add	r7, sp, #0
     aae:	2007      	movs	r0, #7
     ab0:	f7ff fdf0 	bl	694 <__NVIC_DisableIRQ>
     ab4:	4b05      	ldr	r3, [pc, #20]	; (acc <mdb485_get_func+0x24>)
     ab6:	785b      	ldrb	r3, [r3, #1]
     ab8:	607b      	str	r3, [r7, #4]
     aba:	2007      	movs	r0, #7
     abc:	f7ff fdd0 	bl	660 <__NVIC_EnableIRQ>
     ac0:	687b      	ldr	r3, [r7, #4]
     ac2:	0018      	movs	r0, r3
     ac4:	46bd      	mov	sp, r7
     ac6:	b002      	add	sp, #8
     ac8:	bd80      	pop	{r7, pc}
     aca:	46c0      	nop			; (mov r8, r8)
     acc:	200008ac 	.word	0x200008ac

00000ad0 <mdb485_get_crc>:
     ad0:	b590      	push	{r4, r7, lr}
     ad2:	b083      	sub	sp, #12
     ad4:	af00      	add	r7, sp, #0
     ad6:	2007      	movs	r0, #7
     ad8:	f7ff fddc 	bl	694 <__NVIC_DisableIRQ>
     adc:	4b09      	ldr	r3, [pc, #36]	; (b04 <mdb485_get_crc+0x34>)
     ade:	681a      	ldr	r2, [r3, #0]
     ae0:	1dbc      	adds	r4, r7, #6
     ae2:	4b09      	ldr	r3, [pc, #36]	; (b08 <mdb485_get_crc+0x38>)
     ae4:	0011      	movs	r1, r2
     ae6:	0018      	movs	r0, r3
     ae8:	f002 fce2 	bl	34b0 <crc16>
     aec:	0003      	movs	r3, r0
     aee:	8023      	strh	r3, [r4, #0]
     af0:	2007      	movs	r0, #7
     af2:	f7ff fdb5 	bl	660 <__NVIC_EnableIRQ>
     af6:	1dbb      	adds	r3, r7, #6
     af8:	881b      	ldrh	r3, [r3, #0]
     afa:	0018      	movs	r0, r3
     afc:	46bd      	mov	sp, r7
     afe:	b003      	add	sp, #12
     b00:	bd90      	pop	{r4, r7, pc}
     b02:	46c0      	nop			; (mov r8, r8)
     b04:	200008cc 	.word	0x200008cc
     b08:	200008ac 	.word	0x200008ac

00000b0c <mdb485_si30_get_counter>:
     b0c:	b580      	push	{r7, lr}
     b0e:	b082      	sub	sp, #8
     b10:	af00      	add	r7, sp, #0
     b12:	4b1a      	ldr	r3, [pc, #104]	; (b7c <mdb485_si30_get_counter+0x70>)
     b14:	607b      	str	r3, [r7, #4]
     b16:	2007      	movs	r0, #7
     b18:	f7ff fdbc 	bl	694 <__NVIC_DisableIRQ>
     b1c:	4b18      	ldr	r3, [pc, #96]	; (b80 <mdb485_si30_get_counter+0x74>)
     b1e:	681b      	ldr	r3, [r3, #0]
     b20:	2b00      	cmp	r3, #0
     b22:	d022      	beq.n	b6a <mdb485_si30_get_counter+0x5e>
     b24:	687b      	ldr	r3, [r7, #4]
     b26:	1c5a      	adds	r2, r3, #1
     b28:	607a      	str	r2, [r7, #4]
     b2a:	781b      	ldrb	r3, [r3, #0]
     b2c:	061b      	lsls	r3, r3, #24
     b2e:	603b      	str	r3, [r7, #0]
     b30:	687b      	ldr	r3, [r7, #4]
     b32:	1c5a      	adds	r2, r3, #1
     b34:	607a      	str	r2, [r7, #4]
     b36:	781b      	ldrb	r3, [r3, #0]
     b38:	041b      	lsls	r3, r3, #16
     b3a:	001a      	movs	r2, r3
     b3c:	683b      	ldr	r3, [r7, #0]
     b3e:	4313      	orrs	r3, r2
     b40:	603b      	str	r3, [r7, #0]
     b42:	687b      	ldr	r3, [r7, #4]
     b44:	1c5a      	adds	r2, r3, #1
     b46:	607a      	str	r2, [r7, #4]
     b48:	781b      	ldrb	r3, [r3, #0]
     b4a:	021b      	lsls	r3, r3, #8
     b4c:	001a      	movs	r2, r3
     b4e:	683b      	ldr	r3, [r7, #0]
     b50:	4313      	orrs	r3, r2
     b52:	603b      	str	r3, [r7, #0]
     b54:	687b      	ldr	r3, [r7, #4]
     b56:	781b      	ldrb	r3, [r3, #0]
     b58:	001a      	movs	r2, r3
     b5a:	683b      	ldr	r3, [r7, #0]
     b5c:	4313      	orrs	r3, r2
     b5e:	603b      	str	r3, [r7, #0]
     b60:	2007      	movs	r0, #7
     b62:	f7ff fd7d 	bl	660 <__NVIC_EnableIRQ>
     b66:	683b      	ldr	r3, [r7, #0]
     b68:	e003      	b.n	b72 <mdb485_si30_get_counter+0x66>
     b6a:	2007      	movs	r0, #7
     b6c:	f7ff fd78 	bl	660 <__NVIC_EnableIRQ>
     b70:	2300      	movs	r3, #0
     b72:	0018      	movs	r0, r3
     b74:	46bd      	mov	sp, r7
     b76:	b002      	add	sp, #8
     b78:	bd80      	pop	{r7, pc}
     b7a:	46c0      	nop			; (mov r8, r8)
     b7c:	200008af 	.word	0x200008af
     b80:	200008cc 	.word	0x200008cc

00000b84 <UART2_Handler>:
     b84:	b580      	push	{r7, lr}
     b86:	b082      	sub	sp, #8
     b88:	af00      	add	r7, sp, #0
     b8a:	4b16      	ldr	r3, [pc, #88]	; (be4 <UART2_Handler+0x60>)
     b8c:	2200      	movs	r2, #0
     b8e:	601a      	str	r2, [r3, #0]
     b90:	4b15      	ldr	r3, [pc, #84]	; (be8 <UART2_Handler+0x64>)
     b92:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     b94:	2240      	movs	r2, #64	; 0x40
     b96:	4013      	ands	r3, r2
     b98:	d016      	beq.n	bc8 <UART2_Handler+0x44>
     b9a:	4b14      	ldr	r3, [pc, #80]	; (bec <UART2_Handler+0x68>)
     b9c:	603b      	str	r3, [r7, #0]
     b9e:	2300      	movs	r3, #0
     ba0:	607b      	str	r3, [r7, #4]
     ba2:	e009      	b.n	bb8 <UART2_Handler+0x34>
     ba4:	683b      	ldr	r3, [r7, #0]
     ba6:	1c5a      	adds	r2, r3, #1
     ba8:	603a      	str	r2, [r7, #0]
     baa:	4a0f      	ldr	r2, [pc, #60]	; (be8 <UART2_Handler+0x64>)
     bac:	6812      	ldr	r2, [r2, #0]
     bae:	b2d2      	uxtb	r2, r2
     bb0:	701a      	strb	r2, [r3, #0]
     bb2:	687b      	ldr	r3, [r7, #4]
     bb4:	3301      	adds	r3, #1
     bb6:	607b      	str	r3, [r7, #4]
     bb8:	687b      	ldr	r3, [r7, #4]
     bba:	2b0f      	cmp	r3, #15
     bbc:	dc04      	bgt.n	bc8 <UART2_Handler+0x44>
     bbe:	4b0a      	ldr	r3, [pc, #40]	; (be8 <UART2_Handler+0x64>)
     bc0:	699b      	ldr	r3, [r3, #24]
     bc2:	2210      	movs	r2, #16
     bc4:	4013      	ands	r3, r2
     bc6:	d0ed      	beq.n	ba4 <UART2_Handler+0x20>
     bc8:	4b06      	ldr	r3, [pc, #24]	; (be4 <UART2_Handler+0x60>)
     bca:	687a      	ldr	r2, [r7, #4]
     bcc:	601a      	str	r2, [r3, #0]
     bce:	4b08      	ldr	r3, [pc, #32]	; (bf0 <UART2_Handler+0x6c>)
     bd0:	681b      	ldr	r3, [r3, #0]
     bd2:	2108      	movs	r1, #8
     bd4:	0018      	movs	r0, r3
     bd6:	f005 fe61 	bl	689c <osSignalSet>
     bda:	46c0      	nop			; (mov r8, r8)
     bdc:	46bd      	mov	sp, r7
     bde:	b002      	add	sp, #8
     be0:	bd80      	pop	{r7, pc}
     be2:	46c0      	nop			; (mov r8, r8)
     be4:	200008cc 	.word	0x200008cc
     be8:	40038000 	.word	0x40038000
     bec:	200008ac 	.word	0x200008ac
     bf0:	20000860 	.word	0x20000860

00000bf4 <_exit>:
     bf4:	b580      	push	{r7, lr}
     bf6:	b082      	sub	sp, #8
     bf8:	af00      	add	r7, sp, #0
     bfa:	6078      	str	r0, [r7, #4]
     bfc:	4b03      	ldr	r3, [pc, #12]	; (c0c <_exit+0x18>)
     bfe:	2204      	movs	r2, #4
     c00:	0019      	movs	r1, r3
     c02:	2001      	movs	r0, #1
     c04:	f000 f90c 	bl	e20 <_write>
     c08:	e7fe      	b.n	c08 <_exit+0x14>
     c0a:	46c0      	nop			; (mov r8, r8)
     c0c:	00008c34 	.word	0x00008c34

00000c10 <_close>:
     c10:	b580      	push	{r7, lr}
     c12:	b082      	sub	sp, #8
     c14:	af00      	add	r7, sp, #0
     c16:	6078      	str	r0, [r7, #4]
     c18:	2301      	movs	r3, #1
     c1a:	425b      	negs	r3, r3
     c1c:	0018      	movs	r0, r3
     c1e:	46bd      	mov	sp, r7
     c20:	b002      	add	sp, #8
     c22:	bd80      	pop	{r7, pc}

00000c24 <_execve>:
     c24:	b580      	push	{r7, lr}
     c26:	b084      	sub	sp, #16
     c28:	af00      	add	r7, sp, #0
     c2a:	60f8      	str	r0, [r7, #12]
     c2c:	60b9      	str	r1, [r7, #8]
     c2e:	607a      	str	r2, [r7, #4]
     c30:	4b04      	ldr	r3, [pc, #16]	; (c44 <_execve+0x20>)
     c32:	220c      	movs	r2, #12
     c34:	601a      	str	r2, [r3, #0]
     c36:	2301      	movs	r3, #1
     c38:	425b      	negs	r3, r3
     c3a:	0018      	movs	r0, r3
     c3c:	46bd      	mov	sp, r7
     c3e:	b004      	add	sp, #16
     c40:	bd80      	pop	{r7, pc}
     c42:	46c0      	nop			; (mov r8, r8)
     c44:	2000607c 	.word	0x2000607c

00000c48 <_fork>:
     c48:	b580      	push	{r7, lr}
     c4a:	af00      	add	r7, sp, #0
     c4c:	4b03      	ldr	r3, [pc, #12]	; (c5c <_fork+0x14>)
     c4e:	220b      	movs	r2, #11
     c50:	601a      	str	r2, [r3, #0]
     c52:	2301      	movs	r3, #1
     c54:	425b      	negs	r3, r3
     c56:	0018      	movs	r0, r3
     c58:	46bd      	mov	sp, r7
     c5a:	bd80      	pop	{r7, pc}
     c5c:	2000607c 	.word	0x2000607c

00000c60 <_fstat>:
     c60:	b580      	push	{r7, lr}
     c62:	b082      	sub	sp, #8
     c64:	af00      	add	r7, sp, #0
     c66:	6078      	str	r0, [r7, #4]
     c68:	6039      	str	r1, [r7, #0]
     c6a:	683b      	ldr	r3, [r7, #0]
     c6c:	2280      	movs	r2, #128	; 0x80
     c6e:	0192      	lsls	r2, r2, #6
     c70:	605a      	str	r2, [r3, #4]
     c72:	2300      	movs	r3, #0
     c74:	0018      	movs	r0, r3
     c76:	46bd      	mov	sp, r7
     c78:	b002      	add	sp, #8
     c7a:	bd80      	pop	{r7, pc}

00000c7c <_getpid>:
     c7c:	b580      	push	{r7, lr}
     c7e:	af00      	add	r7, sp, #0
     c80:	2301      	movs	r3, #1
     c82:	0018      	movs	r0, r3
     c84:	46bd      	mov	sp, r7
     c86:	bd80      	pop	{r7, pc}

00000c88 <_isatty>:
     c88:	b580      	push	{r7, lr}
     c8a:	b082      	sub	sp, #8
     c8c:	af00      	add	r7, sp, #0
     c8e:	6078      	str	r0, [r7, #4]
     c90:	687b      	ldr	r3, [r7, #4]
     c92:	3300      	adds	r3, #0
     c94:	2b02      	cmp	r3, #2
     c96:	d801      	bhi.n	c9c <_isatty+0x14>
     c98:	2301      	movs	r3, #1
     c9a:	e003      	b.n	ca4 <_isatty+0x1c>
     c9c:	4b03      	ldr	r3, [pc, #12]	; (cac <_isatty+0x24>)
     c9e:	2209      	movs	r2, #9
     ca0:	601a      	str	r2, [r3, #0]
     ca2:	2300      	movs	r3, #0
     ca4:	0018      	movs	r0, r3
     ca6:	46bd      	mov	sp, r7
     ca8:	b002      	add	sp, #8
     caa:	bd80      	pop	{r7, pc}
     cac:	2000607c 	.word	0x2000607c

00000cb0 <_kill>:
     cb0:	b580      	push	{r7, lr}
     cb2:	b082      	sub	sp, #8
     cb4:	af00      	add	r7, sp, #0
     cb6:	6078      	str	r0, [r7, #4]
     cb8:	6039      	str	r1, [r7, #0]
     cba:	4b04      	ldr	r3, [pc, #16]	; (ccc <_kill+0x1c>)
     cbc:	2216      	movs	r2, #22
     cbe:	601a      	str	r2, [r3, #0]
     cc0:	2301      	movs	r3, #1
     cc2:	425b      	negs	r3, r3
     cc4:	0018      	movs	r0, r3
     cc6:	46bd      	mov	sp, r7
     cc8:	b002      	add	sp, #8
     cca:	bd80      	pop	{r7, pc}
     ccc:	2000607c 	.word	0x2000607c

00000cd0 <_link>:
     cd0:	b580      	push	{r7, lr}
     cd2:	b082      	sub	sp, #8
     cd4:	af00      	add	r7, sp, #0
     cd6:	6078      	str	r0, [r7, #4]
     cd8:	6039      	str	r1, [r7, #0]
     cda:	4b04      	ldr	r3, [pc, #16]	; (cec <_link+0x1c>)
     cdc:	221f      	movs	r2, #31
     cde:	601a      	str	r2, [r3, #0]
     ce0:	2301      	movs	r3, #1
     ce2:	425b      	negs	r3, r3
     ce4:	0018      	movs	r0, r3
     ce6:	46bd      	mov	sp, r7
     ce8:	b002      	add	sp, #8
     cea:	bd80      	pop	{r7, pc}
     cec:	2000607c 	.word	0x2000607c

00000cf0 <_lseek>:
     cf0:	b580      	push	{r7, lr}
     cf2:	b084      	sub	sp, #16
     cf4:	af00      	add	r7, sp, #0
     cf6:	60f8      	str	r0, [r7, #12]
     cf8:	60b9      	str	r1, [r7, #8]
     cfa:	607a      	str	r2, [r7, #4]
     cfc:	2300      	movs	r3, #0
     cfe:	0018      	movs	r0, r3
     d00:	46bd      	mov	sp, r7
     d02:	b004      	add	sp, #16
     d04:	bd80      	pop	{r7, pc}
     d06:	46c0      	nop			; (mov r8, r8)

00000d08 <_sbrk>:
     d08:	b580      	push	{r7, lr}
     d0a:	b086      	sub	sp, #24
     d0c:	af00      	add	r7, sp, #0
     d0e:	6078      	str	r0, [r7, #4]
     d10:	4b16      	ldr	r3, [pc, #88]	; (d6c <_sbrk+0x64>)
     d12:	681b      	ldr	r3, [r3, #0]
     d14:	2b00      	cmp	r3, #0
     d16:	d102      	bne.n	d1e <_sbrk+0x16>
     d18:	4b14      	ldr	r3, [pc, #80]	; (d6c <_sbrk+0x64>)
     d1a:	4a15      	ldr	r2, [pc, #84]	; (d70 <_sbrk+0x68>)
     d1c:	601a      	str	r2, [r3, #0]
     d1e:	4b13      	ldr	r3, [pc, #76]	; (d6c <_sbrk+0x64>)
     d20:	681b      	ldr	r3, [r3, #0]
     d22:	617b      	str	r3, [r7, #20]
     d24:	f3ef 8308 	mrs	r3, MSP
     d28:	60fb      	str	r3, [r7, #12]
     d2a:	68fb      	ldr	r3, [r7, #12]
     d2c:	613b      	str	r3, [r7, #16]
     d2e:	4b0f      	ldr	r3, [pc, #60]	; (d6c <_sbrk+0x64>)
     d30:	681a      	ldr	r2, [r3, #0]
     d32:	687b      	ldr	r3, [r7, #4]
     d34:	18d2      	adds	r2, r2, r3
     d36:	693b      	ldr	r3, [r7, #16]
     d38:	429a      	cmp	r2, r3
     d3a:	d90b      	bls.n	d54 <_sbrk+0x4c>
     d3c:	4b0d      	ldr	r3, [pc, #52]	; (d74 <_sbrk+0x6c>)
     d3e:	2219      	movs	r2, #25
     d40:	0019      	movs	r1, r3
     d42:	2002      	movs	r0, #2
     d44:	f000 f86c 	bl	e20 <_write>
     d48:	4b0b      	ldr	r3, [pc, #44]	; (d78 <_sbrk+0x70>)
     d4a:	220c      	movs	r2, #12
     d4c:	601a      	str	r2, [r3, #0]
     d4e:	2301      	movs	r3, #1
     d50:	425b      	negs	r3, r3
     d52:	e006      	b.n	d62 <_sbrk+0x5a>
     d54:	4b05      	ldr	r3, [pc, #20]	; (d6c <_sbrk+0x64>)
     d56:	681a      	ldr	r2, [r3, #0]
     d58:	687b      	ldr	r3, [r7, #4]
     d5a:	18d2      	adds	r2, r2, r3
     d5c:	4b03      	ldr	r3, [pc, #12]	; (d6c <_sbrk+0x64>)
     d5e:	601a      	str	r2, [r3, #0]
     d60:	697b      	ldr	r3, [r7, #20]
     d62:	0018      	movs	r0, r3
     d64:	46bd      	mov	sp, r7
     d66:	b006      	add	sp, #24
     d68:	bd80      	pop	{r7, pc}
     d6a:	46c0      	nop			; (mov r8, r8)
     d6c:	200008d4 	.word	0x200008d4
     d70:	20006104 	.word	0x20006104
     d74:	00008c3c 	.word	0x00008c3c
     d78:	2000607c 	.word	0x2000607c

00000d7c <_read>:
     d7c:	b580      	push	{r7, lr}
     d7e:	b086      	sub	sp, #24
     d80:	af00      	add	r7, sp, #0
     d82:	60f8      	str	r0, [r7, #12]
     d84:	60b9      	str	r1, [r7, #8]
     d86:	607a      	str	r2, [r7, #4]
     d88:	2300      	movs	r3, #0
     d8a:	617b      	str	r3, [r7, #20]
     d8c:	68fb      	ldr	r3, [r7, #12]
     d8e:	2b00      	cmp	r3, #0
     d90:	d005      	beq.n	d9e <_read+0x22>
     d92:	4b06      	ldr	r3, [pc, #24]	; (dac <_read+0x30>)
     d94:	2209      	movs	r2, #9
     d96:	601a      	str	r2, [r3, #0]
     d98:	2301      	movs	r3, #1
     d9a:	425b      	negs	r3, r3
     d9c:	e001      	b.n	da2 <_read+0x26>
     d9e:	46c0      	nop			; (mov r8, r8)
     da0:	697b      	ldr	r3, [r7, #20]
     da2:	0018      	movs	r0, r3
     da4:	46bd      	mov	sp, r7
     da6:	b006      	add	sp, #24
     da8:	bd80      	pop	{r7, pc}
     daa:	46c0      	nop			; (mov r8, r8)
     dac:	2000607c 	.word	0x2000607c

00000db0 <_stat>:
     db0:	b580      	push	{r7, lr}
     db2:	b082      	sub	sp, #8
     db4:	af00      	add	r7, sp, #0
     db6:	6078      	str	r0, [r7, #4]
     db8:	6039      	str	r1, [r7, #0]
     dba:	683b      	ldr	r3, [r7, #0]
     dbc:	2280      	movs	r2, #128	; 0x80
     dbe:	0192      	lsls	r2, r2, #6
     dc0:	605a      	str	r2, [r3, #4]
     dc2:	2300      	movs	r3, #0
     dc4:	0018      	movs	r0, r3
     dc6:	46bd      	mov	sp, r7
     dc8:	b002      	add	sp, #8
     dca:	bd80      	pop	{r7, pc}

00000dcc <_times>:
     dcc:	b580      	push	{r7, lr}
     dce:	b082      	sub	sp, #8
     dd0:	af00      	add	r7, sp, #0
     dd2:	6078      	str	r0, [r7, #4]
     dd4:	2301      	movs	r3, #1
     dd6:	425b      	negs	r3, r3
     dd8:	0018      	movs	r0, r3
     dda:	46bd      	mov	sp, r7
     ddc:	b002      	add	sp, #8
     dde:	bd80      	pop	{r7, pc}

00000de0 <_unlink>:
     de0:	b580      	push	{r7, lr}
     de2:	b082      	sub	sp, #8
     de4:	af00      	add	r7, sp, #0
     de6:	6078      	str	r0, [r7, #4]
     de8:	4b04      	ldr	r3, [pc, #16]	; (dfc <_unlink+0x1c>)
     dea:	2202      	movs	r2, #2
     dec:	601a      	str	r2, [r3, #0]
     dee:	2301      	movs	r3, #1
     df0:	425b      	negs	r3, r3
     df2:	0018      	movs	r0, r3
     df4:	46bd      	mov	sp, r7
     df6:	b002      	add	sp, #8
     df8:	bd80      	pop	{r7, pc}
     dfa:	46c0      	nop			; (mov r8, r8)
     dfc:	2000607c 	.word	0x2000607c

00000e00 <_wait>:
     e00:	b580      	push	{r7, lr}
     e02:	b082      	sub	sp, #8
     e04:	af00      	add	r7, sp, #0
     e06:	6078      	str	r0, [r7, #4]
     e08:	4b04      	ldr	r3, [pc, #16]	; (e1c <_wait+0x1c>)
     e0a:	220a      	movs	r2, #10
     e0c:	601a      	str	r2, [r3, #0]
     e0e:	2301      	movs	r3, #1
     e10:	425b      	negs	r3, r3
     e12:	0018      	movs	r0, r3
     e14:	46bd      	mov	sp, r7
     e16:	b002      	add	sp, #8
     e18:	bd80      	pop	{r7, pc}
     e1a:	46c0      	nop			; (mov r8, r8)
     e1c:	2000607c 	.word	0x2000607c

00000e20 <_write>:
     e20:	b580      	push	{r7, lr}
     e22:	b086      	sub	sp, #24
     e24:	af00      	add	r7, sp, #0
     e26:	60f8      	str	r0, [r7, #12]
     e28:	60b9      	str	r1, [r7, #8]
     e2a:	607a      	str	r2, [r7, #4]
     e2c:	68fb      	ldr	r3, [r7, #12]
     e2e:	2b01      	cmp	r3, #1
     e30:	d002      	beq.n	e38 <_write+0x18>
     e32:	2b02      	cmp	r3, #2
     e34:	d00b      	beq.n	e4e <_write+0x2e>
     e36:	e015      	b.n	e64 <_write+0x44>
     e38:	2300      	movs	r3, #0
     e3a:	617b      	str	r3, [r7, #20]
     e3c:	e002      	b.n	e44 <_write+0x24>
     e3e:	697b      	ldr	r3, [r7, #20]
     e40:	3301      	adds	r3, #1
     e42:	617b      	str	r3, [r7, #20]
     e44:	697a      	ldr	r2, [r7, #20]
     e46:	687b      	ldr	r3, [r7, #4]
     e48:	429a      	cmp	r2, r3
     e4a:	dbf8      	blt.n	e3e <_write+0x1e>
     e4c:	e010      	b.n	e70 <_write+0x50>
     e4e:	2300      	movs	r3, #0
     e50:	617b      	str	r3, [r7, #20]
     e52:	e002      	b.n	e5a <_write+0x3a>
     e54:	697b      	ldr	r3, [r7, #20]
     e56:	3301      	adds	r3, #1
     e58:	617b      	str	r3, [r7, #20]
     e5a:	697a      	ldr	r2, [r7, #20]
     e5c:	687b      	ldr	r3, [r7, #4]
     e5e:	429a      	cmp	r2, r3
     e60:	dbf8      	blt.n	e54 <_write+0x34>
     e62:	e005      	b.n	e70 <_write+0x50>
     e64:	4b05      	ldr	r3, [pc, #20]	; (e7c <_write+0x5c>)
     e66:	2209      	movs	r2, #9
     e68:	601a      	str	r2, [r3, #0]
     e6a:	2301      	movs	r3, #1
     e6c:	425b      	negs	r3, r3
     e6e:	e000      	b.n	e72 <_write+0x52>
     e70:	687b      	ldr	r3, [r7, #4]
     e72:	0018      	movs	r0, r3
     e74:	46bd      	mov	sp, r7
     e76:	b006      	add	sp, #24
     e78:	bd80      	pop	{r7, pc}
     e7a:	46c0      	nop			; (mov r8, r8)
     e7c:	2000607c 	.word	0x2000607c

00000e80 <_init>:
     e80:	b580      	push	{r7, lr}
     e82:	af00      	add	r7, sp, #0
     e84:	46c0      	nop			; (mov r8, r8)
     e86:	46bd      	mov	sp, r7
     e88:	bd80      	pop	{r7, pc}
     e8a:	46c0      	nop			; (mov r8, r8)

00000e8c <_fini>:
     e8c:	b580      	push	{r7, lr}
     e8e:	af00      	add	r7, sp, #0
     e90:	46c0      	nop			; (mov r8, r8)
     e92:	46bd      	mov	sp, r7
     e94:	bd80      	pop	{r7, pc}
     e96:	46c0      	nop			; (mov r8, r8)

00000e98 <__NVIC_EnableIRQ>:
     e98:	b580      	push	{r7, lr}
     e9a:	b082      	sub	sp, #8
     e9c:	af00      	add	r7, sp, #0
     e9e:	0002      	movs	r2, r0
     ea0:	1dfb      	adds	r3, r7, #7
     ea2:	701a      	strb	r2, [r3, #0]
     ea4:	1dfb      	adds	r3, r7, #7
     ea6:	781b      	ldrb	r3, [r3, #0]
     ea8:	2b7f      	cmp	r3, #127	; 0x7f
     eaa:	d809      	bhi.n	ec0 <__NVIC_EnableIRQ+0x28>
     eac:	4b06      	ldr	r3, [pc, #24]	; (ec8 <__NVIC_EnableIRQ+0x30>)
     eae:	1dfa      	adds	r2, r7, #7
     eb0:	7812      	ldrb	r2, [r2, #0]
     eb2:	0011      	movs	r1, r2
     eb4:	221f      	movs	r2, #31
     eb6:	400a      	ands	r2, r1
     eb8:	2101      	movs	r1, #1
     eba:	4091      	lsls	r1, r2
     ebc:	000a      	movs	r2, r1
     ebe:	601a      	str	r2, [r3, #0]
     ec0:	46c0      	nop			; (mov r8, r8)
     ec2:	46bd      	mov	sp, r7
     ec4:	b002      	add	sp, #8
     ec6:	bd80      	pop	{r7, pc}
     ec8:	e000e100 	.word	0xe000e100

00000ecc <__NVIC_DisableIRQ>:
     ecc:	b580      	push	{r7, lr}
     ece:	b082      	sub	sp, #8
     ed0:	af00      	add	r7, sp, #0
     ed2:	0002      	movs	r2, r0
     ed4:	1dfb      	adds	r3, r7, #7
     ed6:	701a      	strb	r2, [r3, #0]
     ed8:	1dfb      	adds	r3, r7, #7
     eda:	781b      	ldrb	r3, [r3, #0]
     edc:	2b7f      	cmp	r3, #127	; 0x7f
     ede:	d80e      	bhi.n	efe <__NVIC_DisableIRQ+0x32>
     ee0:	4909      	ldr	r1, [pc, #36]	; (f08 <__NVIC_DisableIRQ+0x3c>)
     ee2:	1dfb      	adds	r3, r7, #7
     ee4:	781b      	ldrb	r3, [r3, #0]
     ee6:	001a      	movs	r2, r3
     ee8:	231f      	movs	r3, #31
     eea:	4013      	ands	r3, r2
     eec:	2201      	movs	r2, #1
     eee:	409a      	lsls	r2, r3
     ef0:	0013      	movs	r3, r2
     ef2:	2280      	movs	r2, #128	; 0x80
     ef4:	508b      	str	r3, [r1, r2]
     ef6:	f3bf 8f4f 	dsb	sy
     efa:	f3bf 8f6f 	isb	sy
     efe:	46c0      	nop			; (mov r8, r8)
     f00:	46bd      	mov	sp, r7
     f02:	b002      	add	sp, #8
     f04:	bd80      	pop	{r7, pc}
     f06:	46c0      	nop			; (mov r8, r8)
     f08:	e000e100 	.word	0xe000e100

00000f0c <mdb232_init>:
     f0c:	b580      	push	{r7, lr}
     f0e:	af00      	add	r7, sp, #0
     f10:	4b15      	ldr	r3, [pc, #84]	; (f68 <mdb232_init+0x5c>)
     f12:	229c      	movs	r2, #156	; 0x9c
     f14:	0052      	lsls	r2, r2, #1
     f16:	625a      	str	r2, [r3, #36]	; 0x24
     f18:	4b13      	ldr	r3, [pc, #76]	; (f68 <mdb232_init+0x5c>)
     f1a:	2220      	movs	r2, #32
     f1c:	629a      	str	r2, [r3, #40]	; 0x28
     f1e:	4b12      	ldr	r3, [pc, #72]	; (f68 <mdb232_init+0x5c>)
     f20:	4a11      	ldr	r2, [pc, #68]	; (f68 <mdb232_init+0x5c>)
     f22:	6b52      	ldr	r2, [r2, #52]	; 0x34
     f24:	213f      	movs	r1, #63	; 0x3f
     f26:	438a      	bics	r2, r1
     f28:	635a      	str	r2, [r3, #52]	; 0x34
     f2a:	4b0f      	ldr	r3, [pc, #60]	; (f68 <mdb232_init+0x5c>)
     f2c:	4a0e      	ldr	r2, [pc, #56]	; (f68 <mdb232_init+0x5c>)
     f2e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     f30:	2110      	movs	r1, #16
     f32:	430a      	orrs	r2, r1
     f34:	62da      	str	r2, [r3, #44]	; 0x2c
     f36:	4b0c      	ldr	r3, [pc, #48]	; (f68 <mdb232_init+0x5c>)
     f38:	4a0b      	ldr	r2, [pc, #44]	; (f68 <mdb232_init+0x5c>)
     f3a:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     f3c:	2160      	movs	r1, #96	; 0x60
     f3e:	430a      	orrs	r2, r1
     f40:	62da      	str	r2, [r3, #44]	; 0x2c
     f42:	4b09      	ldr	r3, [pc, #36]	; (f68 <mdb232_init+0x5c>)
     f44:	4a08      	ldr	r2, [pc, #32]	; (f68 <mdb232_init+0x5c>)
     f46:	6b12      	ldr	r2, [r2, #48]	; 0x30
     f48:	4908      	ldr	r1, [pc, #32]	; (f6c <mdb232_init+0x60>)
     f4a:	430a      	orrs	r2, r1
     f4c:	631a      	str	r2, [r3, #48]	; 0x30
     f4e:	4b06      	ldr	r3, [pc, #24]	; (f68 <mdb232_init+0x5c>)
     f50:	4a05      	ldr	r2, [pc, #20]	; (f68 <mdb232_init+0x5c>)
     f52:	6b92      	ldr	r2, [r2, #56]	; 0x38
     f54:	2140      	movs	r1, #64	; 0x40
     f56:	430a      	orrs	r2, r1
     f58:	639a      	str	r2, [r3, #56]	; 0x38
     f5a:	2006      	movs	r0, #6
     f5c:	f7ff ff9c 	bl	e98 <__NVIC_EnableIRQ>
     f60:	46c0      	nop			; (mov r8, r8)
     f62:	46bd      	mov	sp, r7
     f64:	bd80      	pop	{r7, pc}
     f66:	46c0      	nop			; (mov r8, r8)
     f68:	40030000 	.word	0x40030000
     f6c:	00000301 	.word	0x00000301

00000f70 <mdb232_send>:
     f70:	b580      	push	{r7, lr}
     f72:	b084      	sub	sp, #16
     f74:	af00      	add	r7, sp, #0
     f76:	6078      	str	r0, [r7, #4]
     f78:	6039      	str	r1, [r7, #0]
     f7a:	2300      	movs	r3, #0
     f7c:	60fb      	str	r3, [r7, #12]
     f7e:	e00e      	b.n	f9e <mdb232_send+0x2e>
     f80:	46c0      	nop			; (mov r8, r8)
     f82:	4b0e      	ldr	r3, [pc, #56]	; (fbc <mdb232_send+0x4c>)
     f84:	699b      	ldr	r3, [r3, #24]
     f86:	2220      	movs	r2, #32
     f88:	4013      	ands	r3, r2
     f8a:	d1fa      	bne.n	f82 <mdb232_send+0x12>
     f8c:	4a0b      	ldr	r2, [pc, #44]	; (fbc <mdb232_send+0x4c>)
     f8e:	687b      	ldr	r3, [r7, #4]
     f90:	1c59      	adds	r1, r3, #1
     f92:	6079      	str	r1, [r7, #4]
     f94:	781b      	ldrb	r3, [r3, #0]
     f96:	6013      	str	r3, [r2, #0]
     f98:	68fb      	ldr	r3, [r7, #12]
     f9a:	3301      	adds	r3, #1
     f9c:	60fb      	str	r3, [r7, #12]
     f9e:	68fa      	ldr	r2, [r7, #12]
     fa0:	683b      	ldr	r3, [r7, #0]
     fa2:	429a      	cmp	r2, r3
     fa4:	dbec      	blt.n	f80 <mdb232_send+0x10>
     fa6:	46c0      	nop			; (mov r8, r8)
     fa8:	4b04      	ldr	r3, [pc, #16]	; (fbc <mdb232_send+0x4c>)
     faa:	699b      	ldr	r3, [r3, #24]
     fac:	2208      	movs	r2, #8
     fae:	4013      	ands	r3, r2
     fb0:	d1fa      	bne.n	fa8 <mdb232_send+0x38>
     fb2:	683b      	ldr	r3, [r7, #0]
     fb4:	0018      	movs	r0, r3
     fb6:	46bd      	mov	sp, r7
     fb8:	b004      	add	sp, #16
     fba:	bd80      	pop	{r7, pc}
     fbc:	40030000 	.word	0x40030000

00000fc0 <mdb232_read_inputregs>:
     fc0:	b590      	push	{r4, r7, lr}
     fc2:	b085      	sub	sp, #20
     fc4:	af00      	add	r7, sp, #0
     fc6:	0004      	movs	r4, r0
     fc8:	0008      	movs	r0, r1
     fca:	0011      	movs	r1, r2
     fcc:	1dfb      	adds	r3, r7, #7
     fce:	1c22      	adds	r2, r4, #0
     fd0:	701a      	strb	r2, [r3, #0]
     fd2:	1d3b      	adds	r3, r7, #4
     fd4:	1c02      	adds	r2, r0, #0
     fd6:	801a      	strh	r2, [r3, #0]
     fd8:	1cbb      	adds	r3, r7, #2
     fda:	1c0a      	adds	r2, r1, #0
     fdc:	801a      	strh	r2, [r3, #0]
     fde:	4b28      	ldr	r3, [pc, #160]	; (1080 <mdb232_read_inputregs+0xc0>)
     fe0:	60fb      	str	r3, [r7, #12]
     fe2:	68fb      	ldr	r3, [r7, #12]
     fe4:	1c5a      	adds	r2, r3, #1
     fe6:	60fa      	str	r2, [r7, #12]
     fe8:	1dfa      	adds	r2, r7, #7
     fea:	7812      	ldrb	r2, [r2, #0]
     fec:	701a      	strb	r2, [r3, #0]
     fee:	68fb      	ldr	r3, [r7, #12]
     ff0:	1c5a      	adds	r2, r3, #1
     ff2:	60fa      	str	r2, [r7, #12]
     ff4:	2204      	movs	r2, #4
     ff6:	701a      	strb	r2, [r3, #0]
     ff8:	68fb      	ldr	r3, [r7, #12]
     ffa:	1c5a      	adds	r2, r3, #1
     ffc:	60fa      	str	r2, [r7, #12]
     ffe:	1d3a      	adds	r2, r7, #4
    1000:	8812      	ldrh	r2, [r2, #0]
    1002:	0a12      	lsrs	r2, r2, #8
    1004:	b292      	uxth	r2, r2
    1006:	b2d2      	uxtb	r2, r2
    1008:	701a      	strb	r2, [r3, #0]
    100a:	68fb      	ldr	r3, [r7, #12]
    100c:	1c5a      	adds	r2, r3, #1
    100e:	60fa      	str	r2, [r7, #12]
    1010:	1d3a      	adds	r2, r7, #4
    1012:	8812      	ldrh	r2, [r2, #0]
    1014:	b2d2      	uxtb	r2, r2
    1016:	701a      	strb	r2, [r3, #0]
    1018:	68fb      	ldr	r3, [r7, #12]
    101a:	1c5a      	adds	r2, r3, #1
    101c:	60fa      	str	r2, [r7, #12]
    101e:	1cba      	adds	r2, r7, #2
    1020:	8812      	ldrh	r2, [r2, #0]
    1022:	0a12      	lsrs	r2, r2, #8
    1024:	b292      	uxth	r2, r2
    1026:	b2d2      	uxtb	r2, r2
    1028:	701a      	strb	r2, [r3, #0]
    102a:	68fb      	ldr	r3, [r7, #12]
    102c:	1c5a      	adds	r2, r3, #1
    102e:	60fa      	str	r2, [r7, #12]
    1030:	1cba      	adds	r2, r7, #2
    1032:	8812      	ldrh	r2, [r2, #0]
    1034:	b2d2      	uxtb	r2, r2
    1036:	701a      	strb	r2, [r3, #0]
    1038:	230a      	movs	r3, #10
    103a:	18fc      	adds	r4, r7, r3
    103c:	4b10      	ldr	r3, [pc, #64]	; (1080 <mdb232_read_inputregs+0xc0>)
    103e:	2106      	movs	r1, #6
    1040:	0018      	movs	r0, r3
    1042:	f002 fa35 	bl	34b0 <crc16>
    1046:	0003      	movs	r3, r0
    1048:	8023      	strh	r3, [r4, #0]
    104a:	68fb      	ldr	r3, [r7, #12]
    104c:	1c5a      	adds	r2, r3, #1
    104e:	60fa      	str	r2, [r7, #12]
    1050:	220a      	movs	r2, #10
    1052:	18ba      	adds	r2, r7, r2
    1054:	8812      	ldrh	r2, [r2, #0]
    1056:	b2d2      	uxtb	r2, r2
    1058:	701a      	strb	r2, [r3, #0]
    105a:	68fb      	ldr	r3, [r7, #12]
    105c:	1c5a      	adds	r2, r3, #1
    105e:	60fa      	str	r2, [r7, #12]
    1060:	220a      	movs	r2, #10
    1062:	18ba      	adds	r2, r7, r2
    1064:	8812      	ldrh	r2, [r2, #0]
    1066:	0a12      	lsrs	r2, r2, #8
    1068:	b292      	uxth	r2, r2
    106a:	b2d2      	uxtb	r2, r2
    106c:	701a      	strb	r2, [r3, #0]
    106e:	4b04      	ldr	r3, [pc, #16]	; (1080 <mdb232_read_inputregs+0xc0>)
    1070:	2108      	movs	r1, #8
    1072:	0018      	movs	r0, r3
    1074:	f7ff ff7c 	bl	f70 <mdb232_send>
    1078:	46c0      	nop			; (mov r8, r8)
    107a:	46bd      	mov	sp, r7
    107c:	b005      	add	sp, #20
    107e:	bd90      	pop	{r4, r7, pc}
    1080:	200008e8 	.word	0x200008e8

00001084 <mdb232_readregs>:
    1084:	b590      	push	{r4, r7, lr}
    1086:	b085      	sub	sp, #20
    1088:	af00      	add	r7, sp, #0
    108a:	0004      	movs	r4, r0
    108c:	0008      	movs	r0, r1
    108e:	0011      	movs	r1, r2
    1090:	1dfb      	adds	r3, r7, #7
    1092:	1c22      	adds	r2, r4, #0
    1094:	701a      	strb	r2, [r3, #0]
    1096:	1d3b      	adds	r3, r7, #4
    1098:	1c02      	adds	r2, r0, #0
    109a:	801a      	strh	r2, [r3, #0]
    109c:	1cbb      	adds	r3, r7, #2
    109e:	1c0a      	adds	r2, r1, #0
    10a0:	801a      	strh	r2, [r3, #0]
    10a2:	4b28      	ldr	r3, [pc, #160]	; (1144 <mdb232_readregs+0xc0>)
    10a4:	60fb      	str	r3, [r7, #12]
    10a6:	68fb      	ldr	r3, [r7, #12]
    10a8:	1c5a      	adds	r2, r3, #1
    10aa:	60fa      	str	r2, [r7, #12]
    10ac:	1dfa      	adds	r2, r7, #7
    10ae:	7812      	ldrb	r2, [r2, #0]
    10b0:	701a      	strb	r2, [r3, #0]
    10b2:	68fb      	ldr	r3, [r7, #12]
    10b4:	1c5a      	adds	r2, r3, #1
    10b6:	60fa      	str	r2, [r7, #12]
    10b8:	2203      	movs	r2, #3
    10ba:	701a      	strb	r2, [r3, #0]
    10bc:	68fb      	ldr	r3, [r7, #12]
    10be:	1c5a      	adds	r2, r3, #1
    10c0:	60fa      	str	r2, [r7, #12]
    10c2:	1d3a      	adds	r2, r7, #4
    10c4:	8812      	ldrh	r2, [r2, #0]
    10c6:	0a12      	lsrs	r2, r2, #8
    10c8:	b292      	uxth	r2, r2
    10ca:	b2d2      	uxtb	r2, r2
    10cc:	701a      	strb	r2, [r3, #0]
    10ce:	68fb      	ldr	r3, [r7, #12]
    10d0:	1c5a      	adds	r2, r3, #1
    10d2:	60fa      	str	r2, [r7, #12]
    10d4:	1d3a      	adds	r2, r7, #4
    10d6:	8812      	ldrh	r2, [r2, #0]
    10d8:	b2d2      	uxtb	r2, r2
    10da:	701a      	strb	r2, [r3, #0]
    10dc:	68fb      	ldr	r3, [r7, #12]
    10de:	1c5a      	adds	r2, r3, #1
    10e0:	60fa      	str	r2, [r7, #12]
    10e2:	1cba      	adds	r2, r7, #2
    10e4:	8812      	ldrh	r2, [r2, #0]
    10e6:	0a12      	lsrs	r2, r2, #8
    10e8:	b292      	uxth	r2, r2
    10ea:	b2d2      	uxtb	r2, r2
    10ec:	701a      	strb	r2, [r3, #0]
    10ee:	68fb      	ldr	r3, [r7, #12]
    10f0:	1c5a      	adds	r2, r3, #1
    10f2:	60fa      	str	r2, [r7, #12]
    10f4:	1cba      	adds	r2, r7, #2
    10f6:	8812      	ldrh	r2, [r2, #0]
    10f8:	b2d2      	uxtb	r2, r2
    10fa:	701a      	strb	r2, [r3, #0]
    10fc:	230a      	movs	r3, #10
    10fe:	18fc      	adds	r4, r7, r3
    1100:	4b10      	ldr	r3, [pc, #64]	; (1144 <mdb232_readregs+0xc0>)
    1102:	2106      	movs	r1, #6
    1104:	0018      	movs	r0, r3
    1106:	f002 f9d3 	bl	34b0 <crc16>
    110a:	0003      	movs	r3, r0
    110c:	8023      	strh	r3, [r4, #0]
    110e:	68fb      	ldr	r3, [r7, #12]
    1110:	1c5a      	adds	r2, r3, #1
    1112:	60fa      	str	r2, [r7, #12]
    1114:	220a      	movs	r2, #10
    1116:	18ba      	adds	r2, r7, r2
    1118:	8812      	ldrh	r2, [r2, #0]
    111a:	b2d2      	uxtb	r2, r2
    111c:	701a      	strb	r2, [r3, #0]
    111e:	68fb      	ldr	r3, [r7, #12]
    1120:	1c5a      	adds	r2, r3, #1
    1122:	60fa      	str	r2, [r7, #12]
    1124:	220a      	movs	r2, #10
    1126:	18ba      	adds	r2, r7, r2
    1128:	8812      	ldrh	r2, [r2, #0]
    112a:	0a12      	lsrs	r2, r2, #8
    112c:	b292      	uxth	r2, r2
    112e:	b2d2      	uxtb	r2, r2
    1130:	701a      	strb	r2, [r3, #0]
    1132:	4b04      	ldr	r3, [pc, #16]	; (1144 <mdb232_readregs+0xc0>)
    1134:	2108      	movs	r1, #8
    1136:	0018      	movs	r0, r3
    1138:	f7ff ff1a 	bl	f70 <mdb232_send>
    113c:	46c0      	nop			; (mov r8, r8)
    113e:	46bd      	mov	sp, r7
    1140:	b005      	add	sp, #20
    1142:	bd90      	pop	{r4, r7, pc}
    1144:	200008e8 	.word	0x200008e8

00001148 <mdb232_get_crc>:
    1148:	b590      	push	{r4, r7, lr}
    114a:	b083      	sub	sp, #12
    114c:	af00      	add	r7, sp, #0
    114e:	2006      	movs	r0, #6
    1150:	f7ff febc 	bl	ecc <__NVIC_DisableIRQ>
    1154:	4b09      	ldr	r3, [pc, #36]	; (117c <mdb232_get_crc+0x34>)
    1156:	681a      	ldr	r2, [r3, #0]
    1158:	1dbc      	adds	r4, r7, #6
    115a:	4b09      	ldr	r3, [pc, #36]	; (1180 <mdb232_get_crc+0x38>)
    115c:	0011      	movs	r1, r2
    115e:	0018      	movs	r0, r3
    1160:	f002 f9a6 	bl	34b0 <crc16>
    1164:	0003      	movs	r3, r0
    1166:	8023      	strh	r3, [r4, #0]
    1168:	2006      	movs	r0, #6
    116a:	f7ff fe95 	bl	e98 <__NVIC_EnableIRQ>
    116e:	1dbb      	adds	r3, r7, #6
    1170:	881b      	ldrh	r3, [r3, #0]
    1172:	0018      	movs	r0, r3
    1174:	46bd      	mov	sp, r7
    1176:	b003      	add	sp, #12
    1178:	bd90      	pop	{r4, r7, pc}
    117a:	46c0      	nop			; (mov r8, r8)
    117c:	200008f8 	.word	0x200008f8
    1180:	200008d8 	.word	0x200008d8

00001184 <mdb232_bikm_get_torque>:
    1184:	b580      	push	{r7, lr}
    1186:	b086      	sub	sp, #24
    1188:	af00      	add	r7, sp, #0
    118a:	6078      	str	r0, [r7, #4]
    118c:	4b2b      	ldr	r3, [pc, #172]	; (123c <mdb232_bikm_get_torque+0xb8>)
    118e:	617b      	str	r3, [r7, #20]
    1190:	687b      	ldr	r3, [r7, #4]
    1192:	2201      	movs	r2, #1
    1194:	4252      	negs	r2, r2
    1196:	601a      	str	r2, [r3, #0]
    1198:	2006      	movs	r0, #6
    119a:	f7ff fe97 	bl	ecc <__NVIC_DisableIRQ>
    119e:	4b28      	ldr	r3, [pc, #160]	; (1240 <mdb232_bikm_get_torque+0xbc>)
    11a0:	681b      	ldr	r3, [r3, #0]
    11a2:	2b00      	cmp	r3, #0
    11a4:	d041      	beq.n	122a <mdb232_bikm_get_torque+0xa6>
    11a6:	4b27      	ldr	r3, [pc, #156]	; (1244 <mdb232_bikm_get_torque+0xc0>)
    11a8:	781b      	ldrb	r3, [r3, #0]
    11aa:	001a      	movs	r2, r3
    11ac:	687b      	ldr	r3, [r7, #4]
    11ae:	601a      	str	r2, [r3, #0]
    11b0:	697b      	ldr	r3, [r7, #20]
    11b2:	1c5a      	adds	r2, r3, #1
    11b4:	617a      	str	r2, [r7, #20]
    11b6:	781b      	ldrb	r3, [r3, #0]
    11b8:	041b      	lsls	r3, r3, #16
    11ba:	613b      	str	r3, [r7, #16]
    11bc:	697b      	ldr	r3, [r7, #20]
    11be:	1c5a      	adds	r2, r3, #1
    11c0:	617a      	str	r2, [r7, #20]
    11c2:	781b      	ldrb	r3, [r3, #0]
    11c4:	061b      	lsls	r3, r3, #24
    11c6:	001a      	movs	r2, r3
    11c8:	693b      	ldr	r3, [r7, #16]
    11ca:	4313      	orrs	r3, r2
    11cc:	613b      	str	r3, [r7, #16]
    11ce:	697b      	ldr	r3, [r7, #20]
    11d0:	1c5a      	adds	r2, r3, #1
    11d2:	617a      	str	r2, [r7, #20]
    11d4:	781b      	ldrb	r3, [r3, #0]
    11d6:	001a      	movs	r2, r3
    11d8:	693b      	ldr	r3, [r7, #16]
    11da:	4313      	orrs	r3, r2
    11dc:	613b      	str	r3, [r7, #16]
    11de:	697b      	ldr	r3, [r7, #20]
    11e0:	781b      	ldrb	r3, [r3, #0]
    11e2:	021b      	lsls	r3, r3, #8
    11e4:	001a      	movs	r2, r3
    11e6:	693b      	ldr	r3, [r7, #16]
    11e8:	4313      	orrs	r3, r2
    11ea:	613b      	str	r3, [r7, #16]
    11ec:	2006      	movs	r0, #6
    11ee:	f7ff fe53 	bl	e98 <__NVIC_EnableIRQ>
    11f2:	693b      	ldr	r3, [r7, #16]
    11f4:	0ddb      	lsrs	r3, r3, #23
    11f6:	22ff      	movs	r2, #255	; 0xff
    11f8:	4013      	ands	r3, r2
    11fa:	3b7f      	subs	r3, #127	; 0x7f
    11fc:	60fb      	str	r3, [r7, #12]
    11fe:	693b      	ldr	r3, [r7, #16]
    1200:	025b      	lsls	r3, r3, #9
    1202:	0a5b      	lsrs	r3, r3, #9
    1204:	2280      	movs	r2, #128	; 0x80
    1206:	0412      	lsls	r2, r2, #16
    1208:	4313      	orrs	r3, r2
    120a:	60bb      	str	r3, [r7, #8]
    120c:	68fb      	ldr	r3, [r7, #12]
    120e:	220e      	movs	r2, #14
    1210:	1ad3      	subs	r3, r2, r3
    1212:	2201      	movs	r2, #1
    1214:	409a      	lsls	r2, r3
    1216:	0013      	movs	r3, r2
    1218:	001a      	movs	r2, r3
    121a:	68bb      	ldr	r3, [r7, #8]
    121c:	18d2      	adds	r2, r2, r3
    121e:	68fb      	ldr	r3, [r7, #12]
    1220:	210f      	movs	r1, #15
    1222:	1acb      	subs	r3, r1, r3
    1224:	40da      	lsrs	r2, r3
    1226:	0013      	movs	r3, r2
    1228:	e003      	b.n	1232 <mdb232_bikm_get_torque+0xae>
    122a:	2006      	movs	r0, #6
    122c:	f7ff fe34 	bl	e98 <__NVIC_EnableIRQ>
    1230:	2300      	movs	r3, #0
    1232:	0018      	movs	r0, r3
    1234:	46bd      	mov	sp, r7
    1236:	b006      	add	sp, #24
    1238:	bd80      	pop	{r7, pc}
    123a:	46c0      	nop			; (mov r8, r8)
    123c:	200008db 	.word	0x200008db
    1240:	200008f8 	.word	0x200008f8
    1244:	200008d8 	.word	0x200008d8

00001248 <UART1_Handler>:
    1248:	b580      	push	{r7, lr}
    124a:	b082      	sub	sp, #8
    124c:	af00      	add	r7, sp, #0
    124e:	4b16      	ldr	r3, [pc, #88]	; (12a8 <UART1_Handler+0x60>)
    1250:	2200      	movs	r2, #0
    1252:	601a      	str	r2, [r3, #0]
    1254:	4b15      	ldr	r3, [pc, #84]	; (12ac <UART1_Handler+0x64>)
    1256:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1258:	2240      	movs	r2, #64	; 0x40
    125a:	4013      	ands	r3, r2
    125c:	d016      	beq.n	128c <UART1_Handler+0x44>
    125e:	4b14      	ldr	r3, [pc, #80]	; (12b0 <UART1_Handler+0x68>)
    1260:	603b      	str	r3, [r7, #0]
    1262:	2300      	movs	r3, #0
    1264:	607b      	str	r3, [r7, #4]
    1266:	e009      	b.n	127c <UART1_Handler+0x34>
    1268:	683b      	ldr	r3, [r7, #0]
    126a:	1c5a      	adds	r2, r3, #1
    126c:	603a      	str	r2, [r7, #0]
    126e:	4a0f      	ldr	r2, [pc, #60]	; (12ac <UART1_Handler+0x64>)
    1270:	6812      	ldr	r2, [r2, #0]
    1272:	b2d2      	uxtb	r2, r2
    1274:	701a      	strb	r2, [r3, #0]
    1276:	687b      	ldr	r3, [r7, #4]
    1278:	3301      	adds	r3, #1
    127a:	607b      	str	r3, [r7, #4]
    127c:	687b      	ldr	r3, [r7, #4]
    127e:	2b0f      	cmp	r3, #15
    1280:	dc04      	bgt.n	128c <UART1_Handler+0x44>
    1282:	4b0a      	ldr	r3, [pc, #40]	; (12ac <UART1_Handler+0x64>)
    1284:	699b      	ldr	r3, [r3, #24]
    1286:	2210      	movs	r2, #16
    1288:	4013      	ands	r3, r2
    128a:	d0ed      	beq.n	1268 <UART1_Handler+0x20>
    128c:	4b06      	ldr	r3, [pc, #24]	; (12a8 <UART1_Handler+0x60>)
    128e:	687a      	ldr	r2, [r7, #4]
    1290:	601a      	str	r2, [r3, #0]
    1292:	4b08      	ldr	r3, [pc, #32]	; (12b4 <UART1_Handler+0x6c>)
    1294:	681b      	ldr	r3, [r3, #0]
    1296:	2102      	movs	r1, #2
    1298:	0018      	movs	r0, r3
    129a:	f005 faff 	bl	689c <osSignalSet>
    129e:	46c0      	nop			; (mov r8, r8)
    12a0:	46bd      	mov	sp, r7
    12a2:	b002      	add	sp, #8
    12a4:	bd80      	pop	{r7, pc}
    12a6:	46c0      	nop			; (mov r8, r8)
    12a8:	200008f8 	.word	0x200008f8
    12ac:	40030000 	.word	0x40030000
    12b0:	200008d8 	.word	0x200008d8
    12b4:	20000860 	.word	0x20000860

000012b8 <xputc>:
    12b8:	b580      	push	{r7, lr}
    12ba:	b082      	sub	sp, #8
    12bc:	af00      	add	r7, sp, #0
    12be:	0002      	movs	r2, r0
    12c0:	1dfb      	adds	r3, r7, #7
    12c2:	701a      	strb	r2, [r3, #0]
    12c4:	1dfb      	adds	r3, r7, #7
    12c6:	781b      	ldrb	r3, [r3, #0]
    12c8:	2b0a      	cmp	r3, #10
    12ca:	d102      	bne.n	12d2 <xputc+0x1a>
    12cc:	200d      	movs	r0, #13
    12ce:	f7ff fff3 	bl	12b8 <xputc>
    12d2:	4b0d      	ldr	r3, [pc, #52]	; (1308 <xputc+0x50>)
    12d4:	681b      	ldr	r3, [r3, #0]
    12d6:	2b00      	cmp	r3, #0
    12d8:	d008      	beq.n	12ec <xputc+0x34>
    12da:	4b0b      	ldr	r3, [pc, #44]	; (1308 <xputc+0x50>)
    12dc:	681b      	ldr	r3, [r3, #0]
    12de:	1c59      	adds	r1, r3, #1
    12e0:	4a09      	ldr	r2, [pc, #36]	; (1308 <xputc+0x50>)
    12e2:	6011      	str	r1, [r2, #0]
    12e4:	1dfa      	adds	r2, r7, #7
    12e6:	7812      	ldrb	r2, [r2, #0]
    12e8:	701a      	strb	r2, [r3, #0]
    12ea:	e009      	b.n	1300 <xputc+0x48>
    12ec:	4b07      	ldr	r3, [pc, #28]	; (130c <xputc+0x54>)
    12ee:	681b      	ldr	r3, [r3, #0]
    12f0:	2b00      	cmp	r3, #0
    12f2:	d005      	beq.n	1300 <xputc+0x48>
    12f4:	4b05      	ldr	r3, [pc, #20]	; (130c <xputc+0x54>)
    12f6:	681b      	ldr	r3, [r3, #0]
    12f8:	1dfa      	adds	r2, r7, #7
    12fa:	7812      	ldrb	r2, [r2, #0]
    12fc:	0010      	movs	r0, r2
    12fe:	4798      	blx	r3
    1300:	46bd      	mov	sp, r7
    1302:	b002      	add	sp, #8
    1304:	bd80      	pop	{r7, pc}
    1306:	46c0      	nop			; (mov r8, r8)
    1308:	20000900 	.word	0x20000900
    130c:	200008fc 	.word	0x200008fc

00001310 <xputs>:
    1310:	b580      	push	{r7, lr}
    1312:	b082      	sub	sp, #8
    1314:	af00      	add	r7, sp, #0
    1316:	6078      	str	r0, [r7, #4]
    1318:	e006      	b.n	1328 <xputs+0x18>
    131a:	687b      	ldr	r3, [r7, #4]
    131c:	1c5a      	adds	r2, r3, #1
    131e:	607a      	str	r2, [r7, #4]
    1320:	781b      	ldrb	r3, [r3, #0]
    1322:	0018      	movs	r0, r3
    1324:	f7ff ffc8 	bl	12b8 <xputc>
    1328:	687b      	ldr	r3, [r7, #4]
    132a:	781b      	ldrb	r3, [r3, #0]
    132c:	2b00      	cmp	r3, #0
    132e:	d1f4      	bne.n	131a <xputs+0xa>
    1330:	46c0      	nop			; (mov r8, r8)
    1332:	46bd      	mov	sp, r7
    1334:	b002      	add	sp, #8
    1336:	bd80      	pop	{r7, pc}

00001338 <xfputs>:
    1338:	b580      	push	{r7, lr}
    133a:	b084      	sub	sp, #16
    133c:	af00      	add	r7, sp, #0
    133e:	6078      	str	r0, [r7, #4]
    1340:	6039      	str	r1, [r7, #0]
    1342:	4b0c      	ldr	r3, [pc, #48]	; (1374 <xfputs+0x3c>)
    1344:	681b      	ldr	r3, [r3, #0]
    1346:	60fb      	str	r3, [r7, #12]
    1348:	4b0a      	ldr	r3, [pc, #40]	; (1374 <xfputs+0x3c>)
    134a:	687a      	ldr	r2, [r7, #4]
    134c:	601a      	str	r2, [r3, #0]
    134e:	e006      	b.n	135e <xfputs+0x26>
    1350:	683b      	ldr	r3, [r7, #0]
    1352:	1c5a      	adds	r2, r3, #1
    1354:	603a      	str	r2, [r7, #0]
    1356:	781b      	ldrb	r3, [r3, #0]
    1358:	0018      	movs	r0, r3
    135a:	f7ff ffad 	bl	12b8 <xputc>
    135e:	683b      	ldr	r3, [r7, #0]
    1360:	781b      	ldrb	r3, [r3, #0]
    1362:	2b00      	cmp	r3, #0
    1364:	d1f4      	bne.n	1350 <xfputs+0x18>
    1366:	4b03      	ldr	r3, [pc, #12]	; (1374 <xfputs+0x3c>)
    1368:	68fa      	ldr	r2, [r7, #12]
    136a:	601a      	str	r2, [r3, #0]
    136c:	46c0      	nop			; (mov r8, r8)
    136e:	46bd      	mov	sp, r7
    1370:	b004      	add	sp, #16
    1372:	bd80      	pop	{r7, pc}
    1374:	200008fc 	.word	0x200008fc

00001378 <xvprintf>:
    1378:	b580      	push	{r7, lr}
    137a:	b08e      	sub	sp, #56	; 0x38
    137c:	af00      	add	r7, sp, #0
    137e:	6078      	str	r0, [r7, #4]
    1380:	6039      	str	r1, [r7, #0]
    1382:	687b      	ldr	r3, [r7, #4]
    1384:	1c5a      	adds	r2, r3, #1
    1386:	607a      	str	r2, [r7, #4]
    1388:	221f      	movs	r2, #31
    138a:	18ba      	adds	r2, r7, r2
    138c:	781b      	ldrb	r3, [r3, #0]
    138e:	7013      	strb	r3, [r2, #0]
    1390:	231f      	movs	r3, #31
    1392:	18fb      	adds	r3, r7, r3
    1394:	781b      	ldrb	r3, [r3, #0]
    1396:	2b00      	cmp	r3, #0
    1398:	d100      	bne.n	139c <xvprintf+0x24>
    139a:	e172      	b.n	1682 <xvprintf+0x30a>
    139c:	231f      	movs	r3, #31
    139e:	18fb      	adds	r3, r7, r3
    13a0:	781b      	ldrb	r3, [r3, #0]
    13a2:	2b25      	cmp	r3, #37	; 0x25
    13a4:	d006      	beq.n	13b4 <xvprintf+0x3c>
    13a6:	231f      	movs	r3, #31
    13a8:	18fb      	adds	r3, r7, r3
    13aa:	781b      	ldrb	r3, [r3, #0]
    13ac:	0018      	movs	r0, r3
    13ae:	f7ff ff83 	bl	12b8 <xputc>
    13b2:	e165      	b.n	1680 <xvprintf+0x308>
    13b4:	2300      	movs	r3, #0
    13b6:	627b      	str	r3, [r7, #36]	; 0x24
    13b8:	687b      	ldr	r3, [r7, #4]
    13ba:	1c5a      	adds	r2, r3, #1
    13bc:	607a      	str	r2, [r7, #4]
    13be:	221f      	movs	r2, #31
    13c0:	18ba      	adds	r2, r7, r2
    13c2:	781b      	ldrb	r3, [r3, #0]
    13c4:	7013      	strb	r3, [r2, #0]
    13c6:	231f      	movs	r3, #31
    13c8:	18fb      	adds	r3, r7, r3
    13ca:	781b      	ldrb	r3, [r3, #0]
    13cc:	2b30      	cmp	r3, #48	; 0x30
    13ce:	d109      	bne.n	13e4 <xvprintf+0x6c>
    13d0:	2301      	movs	r3, #1
    13d2:	627b      	str	r3, [r7, #36]	; 0x24
    13d4:	687b      	ldr	r3, [r7, #4]
    13d6:	1c5a      	adds	r2, r3, #1
    13d8:	607a      	str	r2, [r7, #4]
    13da:	221f      	movs	r2, #31
    13dc:	18ba      	adds	r2, r7, r2
    13de:	781b      	ldrb	r3, [r3, #0]
    13e0:	7013      	strb	r3, [r2, #0]
    13e2:	e00d      	b.n	1400 <xvprintf+0x88>
    13e4:	231f      	movs	r3, #31
    13e6:	18fb      	adds	r3, r7, r3
    13e8:	781b      	ldrb	r3, [r3, #0]
    13ea:	2b2d      	cmp	r3, #45	; 0x2d
    13ec:	d108      	bne.n	1400 <xvprintf+0x88>
    13ee:	2302      	movs	r3, #2
    13f0:	627b      	str	r3, [r7, #36]	; 0x24
    13f2:	687b      	ldr	r3, [r7, #4]
    13f4:	1c5a      	adds	r2, r3, #1
    13f6:	607a      	str	r2, [r7, #4]
    13f8:	221f      	movs	r2, #31
    13fa:	18ba      	adds	r2, r7, r2
    13fc:	781b      	ldrb	r3, [r3, #0]
    13fe:	7013      	strb	r3, [r2, #0]
    1400:	2300      	movs	r3, #0
    1402:	62bb      	str	r3, [r7, #40]	; 0x28
    1404:	e012      	b.n	142c <xvprintf+0xb4>
    1406:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1408:	0013      	movs	r3, r2
    140a:	009b      	lsls	r3, r3, #2
    140c:	189b      	adds	r3, r3, r2
    140e:	005b      	lsls	r3, r3, #1
    1410:	001a      	movs	r2, r3
    1412:	231f      	movs	r3, #31
    1414:	18fb      	adds	r3, r7, r3
    1416:	781b      	ldrb	r3, [r3, #0]
    1418:	18d3      	adds	r3, r2, r3
    141a:	3b30      	subs	r3, #48	; 0x30
    141c:	62bb      	str	r3, [r7, #40]	; 0x28
    141e:	687b      	ldr	r3, [r7, #4]
    1420:	1c5a      	adds	r2, r3, #1
    1422:	607a      	str	r2, [r7, #4]
    1424:	221f      	movs	r2, #31
    1426:	18ba      	adds	r2, r7, r2
    1428:	781b      	ldrb	r3, [r3, #0]
    142a:	7013      	strb	r3, [r2, #0]
    142c:	231f      	movs	r3, #31
    142e:	18fb      	adds	r3, r7, r3
    1430:	781b      	ldrb	r3, [r3, #0]
    1432:	2b2f      	cmp	r3, #47	; 0x2f
    1434:	d904      	bls.n	1440 <xvprintf+0xc8>
    1436:	231f      	movs	r3, #31
    1438:	18fb      	adds	r3, r7, r3
    143a:	781b      	ldrb	r3, [r3, #0]
    143c:	2b39      	cmp	r3, #57	; 0x39
    143e:	d9e2      	bls.n	1406 <xvprintf+0x8e>
    1440:	231f      	movs	r3, #31
    1442:	18fb      	adds	r3, r7, r3
    1444:	781b      	ldrb	r3, [r3, #0]
    1446:	2b6c      	cmp	r3, #108	; 0x6c
    1448:	d004      	beq.n	1454 <xvprintf+0xdc>
    144a:	231f      	movs	r3, #31
    144c:	18fb      	adds	r3, r7, r3
    144e:	781b      	ldrb	r3, [r3, #0]
    1450:	2b4c      	cmp	r3, #76	; 0x4c
    1452:	d10a      	bne.n	146a <xvprintf+0xf2>
    1454:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1456:	2204      	movs	r2, #4
    1458:	4313      	orrs	r3, r2
    145a:	627b      	str	r3, [r7, #36]	; 0x24
    145c:	687b      	ldr	r3, [r7, #4]
    145e:	1c5a      	adds	r2, r3, #1
    1460:	607a      	str	r2, [r7, #4]
    1462:	221f      	movs	r2, #31
    1464:	18ba      	adds	r2, r7, r2
    1466:	781b      	ldrb	r3, [r3, #0]
    1468:	7013      	strb	r3, [r2, #0]
    146a:	231f      	movs	r3, #31
    146c:	18fb      	adds	r3, r7, r3
    146e:	781b      	ldrb	r3, [r3, #0]
    1470:	2b00      	cmp	r3, #0
    1472:	d100      	bne.n	1476 <xvprintf+0xfe>
    1474:	e107      	b.n	1686 <xvprintf+0x30e>
    1476:	231e      	movs	r3, #30
    1478:	18fb      	adds	r3, r7, r3
    147a:	221f      	movs	r2, #31
    147c:	18ba      	adds	r2, r7, r2
    147e:	7812      	ldrb	r2, [r2, #0]
    1480:	701a      	strb	r2, [r3, #0]
    1482:	231e      	movs	r3, #30
    1484:	18fb      	adds	r3, r7, r3
    1486:	781b      	ldrb	r3, [r3, #0]
    1488:	2b60      	cmp	r3, #96	; 0x60
    148a:	d906      	bls.n	149a <xvprintf+0x122>
    148c:	231e      	movs	r3, #30
    148e:	18fb      	adds	r3, r7, r3
    1490:	221e      	movs	r2, #30
    1492:	18ba      	adds	r2, r7, r2
    1494:	7812      	ldrb	r2, [r2, #0]
    1496:	3a20      	subs	r2, #32
    1498:	701a      	strb	r2, [r3, #0]
    149a:	231e      	movs	r3, #30
    149c:	18fb      	adds	r3, r7, r3
    149e:	781b      	ldrb	r3, [r3, #0]
    14a0:	3b42      	subs	r3, #66	; 0x42
    14a2:	2b16      	cmp	r3, #22
    14a4:	d847      	bhi.n	1536 <xvprintf+0x1be>
    14a6:	009a      	lsls	r2, r3, #2
    14a8:	4b79      	ldr	r3, [pc, #484]	; (1690 <xvprintf+0x318>)
    14aa:	18d3      	adds	r3, r2, r3
    14ac:	681b      	ldr	r3, [r3, #0]
    14ae:	469f      	mov	pc, r3
    14b0:	683b      	ldr	r3, [r7, #0]
    14b2:	1d1a      	adds	r2, r3, #4
    14b4:	603a      	str	r2, [r7, #0]
    14b6:	681b      	ldr	r3, [r3, #0]
    14b8:	61bb      	str	r3, [r7, #24]
    14ba:	2300      	movs	r3, #0
    14bc:	62fb      	str	r3, [r7, #44]	; 0x2c
    14be:	e002      	b.n	14c6 <xvprintf+0x14e>
    14c0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14c2:	3301      	adds	r3, #1
    14c4:	62fb      	str	r3, [r7, #44]	; 0x2c
    14c6:	69ba      	ldr	r2, [r7, #24]
    14c8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14ca:	18d3      	adds	r3, r2, r3
    14cc:	781b      	ldrb	r3, [r3, #0]
    14ce:	2b00      	cmp	r3, #0
    14d0:	d1f6      	bne.n	14c0 <xvprintf+0x148>
    14d2:	e002      	b.n	14da <xvprintf+0x162>
    14d4:	2020      	movs	r0, #32
    14d6:	f7ff feef 	bl	12b8 <xputc>
    14da:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    14dc:	2202      	movs	r2, #2
    14de:	4013      	ands	r3, r2
    14e0:	d105      	bne.n	14ee <xvprintf+0x176>
    14e2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14e4:	1c5a      	adds	r2, r3, #1
    14e6:	62fa      	str	r2, [r7, #44]	; 0x2c
    14e8:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14ea:	4293      	cmp	r3, r2
    14ec:	d3f2      	bcc.n	14d4 <xvprintf+0x15c>
    14ee:	69bb      	ldr	r3, [r7, #24]
    14f0:	0018      	movs	r0, r3
    14f2:	f7ff ff0d 	bl	1310 <xputs>
    14f6:	e002      	b.n	14fe <xvprintf+0x186>
    14f8:	2020      	movs	r0, #32
    14fa:	f7ff fedd 	bl	12b8 <xputc>
    14fe:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1500:	1c5a      	adds	r2, r3, #1
    1502:	62fa      	str	r2, [r7, #44]	; 0x2c
    1504:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1506:	4293      	cmp	r3, r2
    1508:	d3f6      	bcc.n	14f8 <xvprintf+0x180>
    150a:	e0b9      	b.n	1680 <xvprintf+0x308>
    150c:	683b      	ldr	r3, [r7, #0]
    150e:	1d1a      	adds	r2, r3, #4
    1510:	603a      	str	r2, [r7, #0]
    1512:	681b      	ldr	r3, [r3, #0]
    1514:	b2db      	uxtb	r3, r3
    1516:	0018      	movs	r0, r3
    1518:	f7ff fece 	bl	12b8 <xputc>
    151c:	e0b0      	b.n	1680 <xvprintf+0x308>
    151e:	2302      	movs	r3, #2
    1520:	637b      	str	r3, [r7, #52]	; 0x34
    1522:	e00f      	b.n	1544 <xvprintf+0x1cc>
    1524:	2308      	movs	r3, #8
    1526:	637b      	str	r3, [r7, #52]	; 0x34
    1528:	e00c      	b.n	1544 <xvprintf+0x1cc>
    152a:	230a      	movs	r3, #10
    152c:	637b      	str	r3, [r7, #52]	; 0x34
    152e:	e009      	b.n	1544 <xvprintf+0x1cc>
    1530:	2310      	movs	r3, #16
    1532:	637b      	str	r3, [r7, #52]	; 0x34
    1534:	e006      	b.n	1544 <xvprintf+0x1cc>
    1536:	231f      	movs	r3, #31
    1538:	18fb      	adds	r3, r7, r3
    153a:	781b      	ldrb	r3, [r3, #0]
    153c:	0018      	movs	r0, r3
    153e:	f7ff febb 	bl	12b8 <xputc>
    1542:	e09d      	b.n	1680 <xvprintf+0x308>
    1544:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1546:	2204      	movs	r2, #4
    1548:	4013      	ands	r3, r2
    154a:	d004      	beq.n	1556 <xvprintf+0x1de>
    154c:	683b      	ldr	r3, [r7, #0]
    154e:	1d1a      	adds	r2, r3, #4
    1550:	603a      	str	r2, [r7, #0]
    1552:	681b      	ldr	r3, [r3, #0]
    1554:	e00d      	b.n	1572 <xvprintf+0x1fa>
    1556:	231e      	movs	r3, #30
    1558:	18fb      	adds	r3, r7, r3
    155a:	781b      	ldrb	r3, [r3, #0]
    155c:	2b44      	cmp	r3, #68	; 0x44
    155e:	d104      	bne.n	156a <xvprintf+0x1f2>
    1560:	683b      	ldr	r3, [r7, #0]
    1562:	1d1a      	adds	r2, r3, #4
    1564:	603a      	str	r2, [r7, #0]
    1566:	681b      	ldr	r3, [r3, #0]
    1568:	e003      	b.n	1572 <xvprintf+0x1fa>
    156a:	683b      	ldr	r3, [r7, #0]
    156c:	1d1a      	adds	r2, r3, #4
    156e:	603a      	str	r2, [r7, #0]
    1570:	681b      	ldr	r3, [r3, #0]
    1572:	623b      	str	r3, [r7, #32]
    1574:	231e      	movs	r3, #30
    1576:	18fb      	adds	r3, r7, r3
    1578:	781b      	ldrb	r3, [r3, #0]
    157a:	2b44      	cmp	r3, #68	; 0x44
    157c:	d109      	bne.n	1592 <xvprintf+0x21a>
    157e:	6a3b      	ldr	r3, [r7, #32]
    1580:	2b00      	cmp	r3, #0
    1582:	da06      	bge.n	1592 <xvprintf+0x21a>
    1584:	6a3b      	ldr	r3, [r7, #32]
    1586:	425b      	negs	r3, r3
    1588:	623b      	str	r3, [r7, #32]
    158a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    158c:	2208      	movs	r2, #8
    158e:	4313      	orrs	r3, r2
    1590:	627b      	str	r3, [r7, #36]	; 0x24
    1592:	2300      	movs	r3, #0
    1594:	633b      	str	r3, [r7, #48]	; 0x30
    1596:	6a3b      	ldr	r3, [r7, #32]
    1598:	6b79      	ldr	r1, [r7, #52]	; 0x34
    159a:	0018      	movs	r0, r3
    159c:	f003 fae8 	bl	4b70 <__aeabi_uidivmod>
    15a0:	000b      	movs	r3, r1
    15a2:	001a      	movs	r2, r3
    15a4:	231e      	movs	r3, #30
    15a6:	18fb      	adds	r3, r7, r3
    15a8:	701a      	strb	r2, [r3, #0]
    15aa:	6b79      	ldr	r1, [r7, #52]	; 0x34
    15ac:	6a38      	ldr	r0, [r7, #32]
    15ae:	f003 fa59 	bl	4a64 <__aeabi_uidiv>
    15b2:	0003      	movs	r3, r0
    15b4:	623b      	str	r3, [r7, #32]
    15b6:	231e      	movs	r3, #30
    15b8:	18fb      	adds	r3, r7, r3
    15ba:	781b      	ldrb	r3, [r3, #0]
    15bc:	2b09      	cmp	r3, #9
    15be:	d90e      	bls.n	15de <xvprintf+0x266>
    15c0:	231f      	movs	r3, #31
    15c2:	18fb      	adds	r3, r7, r3
    15c4:	781b      	ldrb	r3, [r3, #0]
    15c6:	2b78      	cmp	r3, #120	; 0x78
    15c8:	d101      	bne.n	15ce <xvprintf+0x256>
    15ca:	2327      	movs	r3, #39	; 0x27
    15cc:	e000      	b.n	15d0 <xvprintf+0x258>
    15ce:	2307      	movs	r3, #7
    15d0:	221e      	movs	r2, #30
    15d2:	18ba      	adds	r2, r7, r2
    15d4:	211e      	movs	r1, #30
    15d6:	1879      	adds	r1, r7, r1
    15d8:	7809      	ldrb	r1, [r1, #0]
    15da:	185b      	adds	r3, r3, r1
    15dc:	7013      	strb	r3, [r2, #0]
    15de:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15e0:	1c5a      	adds	r2, r3, #1
    15e2:	633a      	str	r2, [r7, #48]	; 0x30
    15e4:	221e      	movs	r2, #30
    15e6:	18ba      	adds	r2, r7, r2
    15e8:	7812      	ldrb	r2, [r2, #0]
    15ea:	3230      	adds	r2, #48	; 0x30
    15ec:	b2d1      	uxtb	r1, r2
    15ee:	2208      	movs	r2, #8
    15f0:	18ba      	adds	r2, r7, r2
    15f2:	54d1      	strb	r1, [r2, r3]
    15f4:	6a3b      	ldr	r3, [r7, #32]
    15f6:	2b00      	cmp	r3, #0
    15f8:	d002      	beq.n	1600 <xvprintf+0x288>
    15fa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15fc:	2b0f      	cmp	r3, #15
    15fe:	d9ca      	bls.n	1596 <xvprintf+0x21e>
    1600:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1602:	2208      	movs	r2, #8
    1604:	4013      	ands	r3, r2
    1606:	d006      	beq.n	1616 <xvprintf+0x29e>
    1608:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    160a:	1c5a      	adds	r2, r3, #1
    160c:	633a      	str	r2, [r7, #48]	; 0x30
    160e:	2208      	movs	r2, #8
    1610:	18ba      	adds	r2, r7, r2
    1612:	212d      	movs	r1, #45	; 0x2d
    1614:	54d1      	strb	r1, [r2, r3]
    1616:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1618:	62fb      	str	r3, [r7, #44]	; 0x2c
    161a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    161c:	2201      	movs	r2, #1
    161e:	4013      	ands	r3, r2
    1620:	d001      	beq.n	1626 <xvprintf+0x2ae>
    1622:	2230      	movs	r2, #48	; 0x30
    1624:	e000      	b.n	1628 <xvprintf+0x2b0>
    1626:	2220      	movs	r2, #32
    1628:	231e      	movs	r3, #30
    162a:	18fb      	adds	r3, r7, r3
    162c:	701a      	strb	r2, [r3, #0]
    162e:	e005      	b.n	163c <xvprintf+0x2c4>
    1630:	231e      	movs	r3, #30
    1632:	18fb      	adds	r3, r7, r3
    1634:	781b      	ldrb	r3, [r3, #0]
    1636:	0018      	movs	r0, r3
    1638:	f7ff fe3e 	bl	12b8 <xputc>
    163c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    163e:	2202      	movs	r2, #2
    1640:	4013      	ands	r3, r2
    1642:	d105      	bne.n	1650 <xvprintf+0x2d8>
    1644:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1646:	1c5a      	adds	r2, r3, #1
    1648:	62fa      	str	r2, [r7, #44]	; 0x2c
    164a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    164c:	4293      	cmp	r3, r2
    164e:	d3ef      	bcc.n	1630 <xvprintf+0x2b8>
    1650:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1652:	3b01      	subs	r3, #1
    1654:	633b      	str	r3, [r7, #48]	; 0x30
    1656:	2308      	movs	r3, #8
    1658:	18fa      	adds	r2, r7, r3
    165a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    165c:	18d3      	adds	r3, r2, r3
    165e:	781b      	ldrb	r3, [r3, #0]
    1660:	0018      	movs	r0, r3
    1662:	f7ff fe29 	bl	12b8 <xputc>
    1666:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1668:	2b00      	cmp	r3, #0
    166a:	d1f1      	bne.n	1650 <xvprintf+0x2d8>
    166c:	e002      	b.n	1674 <xvprintf+0x2fc>
    166e:	2020      	movs	r0, #32
    1670:	f7ff fe22 	bl	12b8 <xputc>
    1674:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1676:	1c5a      	adds	r2, r3, #1
    1678:	62fa      	str	r2, [r7, #44]	; 0x2c
    167a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    167c:	4293      	cmp	r3, r2
    167e:	d3f6      	bcc.n	166e <xvprintf+0x2f6>
    1680:	e67f      	b.n	1382 <xvprintf+0xa>
    1682:	46c0      	nop			; (mov r8, r8)
    1684:	e000      	b.n	1688 <xvprintf+0x310>
    1686:	46c0      	nop			; (mov r8, r8)
    1688:	46c0      	nop			; (mov r8, r8)
    168a:	46bd      	mov	sp, r7
    168c:	b00e      	add	sp, #56	; 0x38
    168e:	bd80      	pop	{r7, pc}
    1690:	00008c58 	.word	0x00008c58

00001694 <xprintf>:
    1694:	b40f      	push	{r0, r1, r2, r3}
    1696:	b580      	push	{r7, lr}
    1698:	b082      	sub	sp, #8
    169a:	af00      	add	r7, sp, #0
    169c:	2314      	movs	r3, #20
    169e:	18fb      	adds	r3, r7, r3
    16a0:	607b      	str	r3, [r7, #4]
    16a2:	687a      	ldr	r2, [r7, #4]
    16a4:	693b      	ldr	r3, [r7, #16]
    16a6:	0011      	movs	r1, r2
    16a8:	0018      	movs	r0, r3
    16aa:	f7ff fe65 	bl	1378 <xvprintf>
    16ae:	46c0      	nop			; (mov r8, r8)
    16b0:	46bd      	mov	sp, r7
    16b2:	b002      	add	sp, #8
    16b4:	bc80      	pop	{r7}
    16b6:	bc08      	pop	{r3}
    16b8:	b004      	add	sp, #16
    16ba:	4718      	bx	r3

000016bc <xsprintf>:
    16bc:	b40e      	push	{r1, r2, r3}
    16be:	b580      	push	{r7, lr}
    16c0:	b085      	sub	sp, #20
    16c2:	af00      	add	r7, sp, #0
    16c4:	6078      	str	r0, [r7, #4]
    16c6:	4b0d      	ldr	r3, [pc, #52]	; (16fc <xsprintf+0x40>)
    16c8:	687a      	ldr	r2, [r7, #4]
    16ca:	601a      	str	r2, [r3, #0]
    16cc:	2320      	movs	r3, #32
    16ce:	18fb      	adds	r3, r7, r3
    16d0:	60fb      	str	r3, [r7, #12]
    16d2:	68fa      	ldr	r2, [r7, #12]
    16d4:	69fb      	ldr	r3, [r7, #28]
    16d6:	0011      	movs	r1, r2
    16d8:	0018      	movs	r0, r3
    16da:	f7ff fe4d 	bl	1378 <xvprintf>
    16de:	4b07      	ldr	r3, [pc, #28]	; (16fc <xsprintf+0x40>)
    16e0:	681b      	ldr	r3, [r3, #0]
    16e2:	2200      	movs	r2, #0
    16e4:	701a      	strb	r2, [r3, #0]
    16e6:	4b05      	ldr	r3, [pc, #20]	; (16fc <xsprintf+0x40>)
    16e8:	2200      	movs	r2, #0
    16ea:	601a      	str	r2, [r3, #0]
    16ec:	46c0      	nop			; (mov r8, r8)
    16ee:	46bd      	mov	sp, r7
    16f0:	b005      	add	sp, #20
    16f2:	bc80      	pop	{r7}
    16f4:	bc08      	pop	{r3}
    16f6:	b003      	add	sp, #12
    16f8:	4718      	bx	r3
    16fa:	46c0      	nop			; (mov r8, r8)
    16fc:	20000900 	.word	0x20000900

00001700 <xfprintf>:
    1700:	b40e      	push	{r1, r2, r3}
    1702:	b580      	push	{r7, lr}
    1704:	b085      	sub	sp, #20
    1706:	af00      	add	r7, sp, #0
    1708:	6078      	str	r0, [r7, #4]
    170a:	4b0c      	ldr	r3, [pc, #48]	; (173c <xfprintf+0x3c>)
    170c:	681b      	ldr	r3, [r3, #0]
    170e:	60fb      	str	r3, [r7, #12]
    1710:	4b0a      	ldr	r3, [pc, #40]	; (173c <xfprintf+0x3c>)
    1712:	687a      	ldr	r2, [r7, #4]
    1714:	601a      	str	r2, [r3, #0]
    1716:	2320      	movs	r3, #32
    1718:	18fb      	adds	r3, r7, r3
    171a:	60bb      	str	r3, [r7, #8]
    171c:	68ba      	ldr	r2, [r7, #8]
    171e:	69fb      	ldr	r3, [r7, #28]
    1720:	0011      	movs	r1, r2
    1722:	0018      	movs	r0, r3
    1724:	f7ff fe28 	bl	1378 <xvprintf>
    1728:	4b04      	ldr	r3, [pc, #16]	; (173c <xfprintf+0x3c>)
    172a:	68fa      	ldr	r2, [r7, #12]
    172c:	601a      	str	r2, [r3, #0]
    172e:	46c0      	nop			; (mov r8, r8)
    1730:	46bd      	mov	sp, r7
    1732:	b005      	add	sp, #20
    1734:	bc80      	pop	{r7}
    1736:	bc08      	pop	{r3}
    1738:	b003      	add	sp, #12
    173a:	4718      	bx	r3
    173c:	200008fc 	.word	0x200008fc

00001740 <put_dump>:
    1740:	b580      	push	{r7, lr}
    1742:	b088      	sub	sp, #32
    1744:	af00      	add	r7, sp, #0
    1746:	60f8      	str	r0, [r7, #12]
    1748:	60b9      	str	r1, [r7, #8]
    174a:	607a      	str	r2, [r7, #4]
    174c:	603b      	str	r3, [r7, #0]
    174e:	68ba      	ldr	r2, [r7, #8]
    1750:	4b38      	ldr	r3, [pc, #224]	; (1834 <put_dump+0xf4>)
    1752:	0011      	movs	r1, r2
    1754:	0018      	movs	r0, r3
    1756:	f7ff ff9d 	bl	1694 <xprintf>
    175a:	683b      	ldr	r3, [r7, #0]
    175c:	2b02      	cmp	r3, #2
    175e:	d03c      	beq.n	17da <put_dump+0x9a>
    1760:	2b04      	cmp	r3, #4
    1762:	d04d      	beq.n	1800 <put_dump+0xc0>
    1764:	2b01      	cmp	r3, #1
    1766:	d15d      	bne.n	1824 <put_dump+0xe4>
    1768:	68fb      	ldr	r3, [r7, #12]
    176a:	613b      	str	r3, [r7, #16]
    176c:	2300      	movs	r3, #0
    176e:	61fb      	str	r3, [r7, #28]
    1770:	e00c      	b.n	178c <put_dump+0x4c>
    1772:	69fb      	ldr	r3, [r7, #28]
    1774:	693a      	ldr	r2, [r7, #16]
    1776:	18d3      	adds	r3, r2, r3
    1778:	781b      	ldrb	r3, [r3, #0]
    177a:	001a      	movs	r2, r3
    177c:	4b2e      	ldr	r3, [pc, #184]	; (1838 <put_dump+0xf8>)
    177e:	0011      	movs	r1, r2
    1780:	0018      	movs	r0, r3
    1782:	f7ff ff87 	bl	1694 <xprintf>
    1786:	69fb      	ldr	r3, [r7, #28]
    1788:	3301      	adds	r3, #1
    178a:	61fb      	str	r3, [r7, #28]
    178c:	69fa      	ldr	r2, [r7, #28]
    178e:	687b      	ldr	r3, [r7, #4]
    1790:	429a      	cmp	r2, r3
    1792:	dbee      	blt.n	1772 <put_dump+0x32>
    1794:	2020      	movs	r0, #32
    1796:	f7ff fd8f 	bl	12b8 <xputc>
    179a:	2300      	movs	r3, #0
    179c:	61fb      	str	r3, [r7, #28]
    179e:	e017      	b.n	17d0 <put_dump+0x90>
    17a0:	69fb      	ldr	r3, [r7, #28]
    17a2:	693a      	ldr	r2, [r7, #16]
    17a4:	18d3      	adds	r3, r2, r3
    17a6:	781b      	ldrb	r3, [r3, #0]
    17a8:	2b1f      	cmp	r3, #31
    17aa:	d90a      	bls.n	17c2 <put_dump+0x82>
    17ac:	69fb      	ldr	r3, [r7, #28]
    17ae:	693a      	ldr	r2, [r7, #16]
    17b0:	18d3      	adds	r3, r2, r3
    17b2:	781b      	ldrb	r3, [r3, #0]
    17b4:	2b7e      	cmp	r3, #126	; 0x7e
    17b6:	d804      	bhi.n	17c2 <put_dump+0x82>
    17b8:	69fb      	ldr	r3, [r7, #28]
    17ba:	693a      	ldr	r2, [r7, #16]
    17bc:	18d3      	adds	r3, r2, r3
    17be:	781b      	ldrb	r3, [r3, #0]
    17c0:	e000      	b.n	17c4 <put_dump+0x84>
    17c2:	232e      	movs	r3, #46	; 0x2e
    17c4:	0018      	movs	r0, r3
    17c6:	f7ff fd77 	bl	12b8 <xputc>
    17ca:	69fb      	ldr	r3, [r7, #28]
    17cc:	3301      	adds	r3, #1
    17ce:	61fb      	str	r3, [r7, #28]
    17d0:	69fa      	ldr	r2, [r7, #28]
    17d2:	687b      	ldr	r3, [r7, #4]
    17d4:	429a      	cmp	r2, r3
    17d6:	dbe3      	blt.n	17a0 <put_dump+0x60>
    17d8:	e024      	b.n	1824 <put_dump+0xe4>
    17da:	68fb      	ldr	r3, [r7, #12]
    17dc:	61bb      	str	r3, [r7, #24]
    17de:	69bb      	ldr	r3, [r7, #24]
    17e0:	1c9a      	adds	r2, r3, #2
    17e2:	61ba      	str	r2, [r7, #24]
    17e4:	881b      	ldrh	r3, [r3, #0]
    17e6:	001a      	movs	r2, r3
    17e8:	4b14      	ldr	r3, [pc, #80]	; (183c <put_dump+0xfc>)
    17ea:	0011      	movs	r1, r2
    17ec:	0018      	movs	r0, r3
    17ee:	f7ff ff51 	bl	1694 <xprintf>
    17f2:	687b      	ldr	r3, [r7, #4]
    17f4:	3b01      	subs	r3, #1
    17f6:	607b      	str	r3, [r7, #4]
    17f8:	687b      	ldr	r3, [r7, #4]
    17fa:	2b00      	cmp	r3, #0
    17fc:	d1ef      	bne.n	17de <put_dump+0x9e>
    17fe:	e011      	b.n	1824 <put_dump+0xe4>
    1800:	68fb      	ldr	r3, [r7, #12]
    1802:	617b      	str	r3, [r7, #20]
    1804:	697b      	ldr	r3, [r7, #20]
    1806:	1d1a      	adds	r2, r3, #4
    1808:	617a      	str	r2, [r7, #20]
    180a:	681a      	ldr	r2, [r3, #0]
    180c:	4b0c      	ldr	r3, [pc, #48]	; (1840 <put_dump+0x100>)
    180e:	0011      	movs	r1, r2
    1810:	0018      	movs	r0, r3
    1812:	f7ff ff3f 	bl	1694 <xprintf>
    1816:	687b      	ldr	r3, [r7, #4]
    1818:	3b01      	subs	r3, #1
    181a:	607b      	str	r3, [r7, #4]
    181c:	687b      	ldr	r3, [r7, #4]
    181e:	2b00      	cmp	r3, #0
    1820:	d1f0      	bne.n	1804 <put_dump+0xc4>
    1822:	46c0      	nop			; (mov r8, r8)
    1824:	200a      	movs	r0, #10
    1826:	f7ff fd47 	bl	12b8 <xputc>
    182a:	46c0      	nop			; (mov r8, r8)
    182c:	46bd      	mov	sp, r7
    182e:	b008      	add	sp, #32
    1830:	bd80      	pop	{r7, pc}
    1832:	46c0      	nop			; (mov r8, r8)
    1834:	00008cb4 	.word	0x00008cb4
    1838:	00008cbc 	.word	0x00008cbc
    183c:	00008cc4 	.word	0x00008cc4
    1840:	00008ccc 	.word	0x00008ccc

00001844 <xgets>:
    1844:	b580      	push	{r7, lr}
    1846:	b084      	sub	sp, #16
    1848:	af00      	add	r7, sp, #0
    184a:	6078      	str	r0, [r7, #4]
    184c:	6039      	str	r1, [r7, #0]
    184e:	4b24      	ldr	r3, [pc, #144]	; (18e0 <xgets+0x9c>)
    1850:	681b      	ldr	r3, [r3, #0]
    1852:	2b00      	cmp	r3, #0
    1854:	d101      	bne.n	185a <xgets+0x16>
    1856:	2300      	movs	r3, #0
    1858:	e03e      	b.n	18d8 <xgets+0x94>
    185a:	2300      	movs	r3, #0
    185c:	60fb      	str	r3, [r7, #12]
    185e:	4b20      	ldr	r3, [pc, #128]	; (18e0 <xgets+0x9c>)
    1860:	681b      	ldr	r3, [r3, #0]
    1862:	4798      	blx	r3
    1864:	0003      	movs	r3, r0
    1866:	60bb      	str	r3, [r7, #8]
    1868:	68bb      	ldr	r3, [r7, #8]
    186a:	2b00      	cmp	r3, #0
    186c:	d101      	bne.n	1872 <xgets+0x2e>
    186e:	2300      	movs	r3, #0
    1870:	e032      	b.n	18d8 <xgets+0x94>
    1872:	68bb      	ldr	r3, [r7, #8]
    1874:	2b0d      	cmp	r3, #13
    1876:	d025      	beq.n	18c4 <xgets+0x80>
    1878:	68bb      	ldr	r3, [r7, #8]
    187a:	2b08      	cmp	r3, #8
    187c:	d10b      	bne.n	1896 <xgets+0x52>
    187e:	68fb      	ldr	r3, [r7, #12]
    1880:	2b00      	cmp	r3, #0
    1882:	d008      	beq.n	1896 <xgets+0x52>
    1884:	68fb      	ldr	r3, [r7, #12]
    1886:	3b01      	subs	r3, #1
    1888:	60fb      	str	r3, [r7, #12]
    188a:	68bb      	ldr	r3, [r7, #8]
    188c:	b2db      	uxtb	r3, r3
    188e:	0018      	movs	r0, r3
    1890:	f7ff fd12 	bl	12b8 <xputc>
    1894:	e015      	b.n	18c2 <xgets+0x7e>
    1896:	68bb      	ldr	r3, [r7, #8]
    1898:	2b1f      	cmp	r3, #31
    189a:	dde0      	ble.n	185e <xgets+0x1a>
    189c:	683b      	ldr	r3, [r7, #0]
    189e:	1e5a      	subs	r2, r3, #1
    18a0:	68fb      	ldr	r3, [r7, #12]
    18a2:	429a      	cmp	r2, r3
    18a4:	dddb      	ble.n	185e <xgets+0x1a>
    18a6:	68fb      	ldr	r3, [r7, #12]
    18a8:	1c5a      	adds	r2, r3, #1
    18aa:	60fa      	str	r2, [r7, #12]
    18ac:	001a      	movs	r2, r3
    18ae:	687b      	ldr	r3, [r7, #4]
    18b0:	189b      	adds	r3, r3, r2
    18b2:	68ba      	ldr	r2, [r7, #8]
    18b4:	b2d2      	uxtb	r2, r2
    18b6:	701a      	strb	r2, [r3, #0]
    18b8:	68bb      	ldr	r3, [r7, #8]
    18ba:	b2db      	uxtb	r3, r3
    18bc:	0018      	movs	r0, r3
    18be:	f7ff fcfb 	bl	12b8 <xputc>
    18c2:	e7cc      	b.n	185e <xgets+0x1a>
    18c4:	46c0      	nop			; (mov r8, r8)
    18c6:	68fb      	ldr	r3, [r7, #12]
    18c8:	687a      	ldr	r2, [r7, #4]
    18ca:	18d3      	adds	r3, r2, r3
    18cc:	2200      	movs	r2, #0
    18ce:	701a      	strb	r2, [r3, #0]
    18d0:	200a      	movs	r0, #10
    18d2:	f7ff fcf1 	bl	12b8 <xputc>
    18d6:	2301      	movs	r3, #1
    18d8:	0018      	movs	r0, r3
    18da:	46bd      	mov	sp, r7
    18dc:	b004      	add	sp, #16
    18de:	bd80      	pop	{r7, pc}
    18e0:	20000904 	.word	0x20000904

000018e4 <xfgets>:
    18e4:	b580      	push	{r7, lr}
    18e6:	b086      	sub	sp, #24
    18e8:	af00      	add	r7, sp, #0
    18ea:	60f8      	str	r0, [r7, #12]
    18ec:	60b9      	str	r1, [r7, #8]
    18ee:	607a      	str	r2, [r7, #4]
    18f0:	4b0a      	ldr	r3, [pc, #40]	; (191c <xfgets+0x38>)
    18f2:	681b      	ldr	r3, [r3, #0]
    18f4:	617b      	str	r3, [r7, #20]
    18f6:	4b09      	ldr	r3, [pc, #36]	; (191c <xfgets+0x38>)
    18f8:	68fa      	ldr	r2, [r7, #12]
    18fa:	601a      	str	r2, [r3, #0]
    18fc:	687a      	ldr	r2, [r7, #4]
    18fe:	68bb      	ldr	r3, [r7, #8]
    1900:	0011      	movs	r1, r2
    1902:	0018      	movs	r0, r3
    1904:	f7ff ff9e 	bl	1844 <xgets>
    1908:	0003      	movs	r3, r0
    190a:	613b      	str	r3, [r7, #16]
    190c:	4b03      	ldr	r3, [pc, #12]	; (191c <xfgets+0x38>)
    190e:	697a      	ldr	r2, [r7, #20]
    1910:	601a      	str	r2, [r3, #0]
    1912:	693b      	ldr	r3, [r7, #16]
    1914:	0018      	movs	r0, r3
    1916:	46bd      	mov	sp, r7
    1918:	b006      	add	sp, #24
    191a:	bd80      	pop	{r7, pc}
    191c:	20000904 	.word	0x20000904

00001920 <xatoi>:
    1920:	b580      	push	{r7, lr}
    1922:	b084      	sub	sp, #16
    1924:	af00      	add	r7, sp, #0
    1926:	6078      	str	r0, [r7, #4]
    1928:	6039      	str	r1, [r7, #0]
    192a:	2309      	movs	r3, #9
    192c:	18fb      	adds	r3, r7, r3
    192e:	2200      	movs	r2, #0
    1930:	701a      	strb	r2, [r3, #0]
    1932:	683b      	ldr	r3, [r7, #0]
    1934:	2200      	movs	r2, #0
    1936:	601a      	str	r2, [r3, #0]
    1938:	e004      	b.n	1944 <xatoi+0x24>
    193a:	687b      	ldr	r3, [r7, #4]
    193c:	681b      	ldr	r3, [r3, #0]
    193e:	1c5a      	adds	r2, r3, #1
    1940:	687b      	ldr	r3, [r7, #4]
    1942:	601a      	str	r2, [r3, #0]
    1944:	687b      	ldr	r3, [r7, #4]
    1946:	681a      	ldr	r2, [r3, #0]
    1948:	230b      	movs	r3, #11
    194a:	18fb      	adds	r3, r7, r3
    194c:	7812      	ldrb	r2, [r2, #0]
    194e:	701a      	strb	r2, [r3, #0]
    1950:	230b      	movs	r3, #11
    1952:	18fb      	adds	r3, r7, r3
    1954:	781b      	ldrb	r3, [r3, #0]
    1956:	2b20      	cmp	r3, #32
    1958:	d0ef      	beq.n	193a <xatoi+0x1a>
    195a:	230b      	movs	r3, #11
    195c:	18fb      	adds	r3, r7, r3
    195e:	781b      	ldrb	r3, [r3, #0]
    1960:	2b2d      	cmp	r3, #45	; 0x2d
    1962:	d10e      	bne.n	1982 <xatoi+0x62>
    1964:	2309      	movs	r3, #9
    1966:	18fb      	adds	r3, r7, r3
    1968:	2201      	movs	r2, #1
    196a:	701a      	strb	r2, [r3, #0]
    196c:	687b      	ldr	r3, [r7, #4]
    196e:	681b      	ldr	r3, [r3, #0]
    1970:	1c5a      	adds	r2, r3, #1
    1972:	687b      	ldr	r3, [r7, #4]
    1974:	601a      	str	r2, [r3, #0]
    1976:	687b      	ldr	r3, [r7, #4]
    1978:	681a      	ldr	r2, [r3, #0]
    197a:	230b      	movs	r3, #11
    197c:	18fb      	adds	r3, r7, r3
    197e:	7812      	ldrb	r2, [r2, #0]
    1980:	701a      	strb	r2, [r3, #0]
    1982:	230b      	movs	r3, #11
    1984:	18fb      	adds	r3, r7, r3
    1986:	781b      	ldrb	r3, [r3, #0]
    1988:	2b30      	cmp	r3, #48	; 0x30
    198a:	d149      	bne.n	1a20 <xatoi+0x100>
    198c:	687b      	ldr	r3, [r7, #4]
    198e:	681b      	ldr	r3, [r3, #0]
    1990:	1c5a      	adds	r2, r3, #1
    1992:	687b      	ldr	r3, [r7, #4]
    1994:	601a      	str	r2, [r3, #0]
    1996:	687b      	ldr	r3, [r7, #4]
    1998:	681a      	ldr	r2, [r3, #0]
    199a:	230b      	movs	r3, #11
    199c:	18fb      	adds	r3, r7, r3
    199e:	7812      	ldrb	r2, [r2, #0]
    19a0:	701a      	strb	r2, [r3, #0]
    19a2:	230b      	movs	r3, #11
    19a4:	18fb      	adds	r3, r7, r3
    19a6:	781b      	ldrb	r3, [r3, #0]
    19a8:	2b62      	cmp	r3, #98	; 0x62
    19aa:	d011      	beq.n	19d0 <xatoi+0xb0>
    19ac:	2b78      	cmp	r3, #120	; 0x78
    19ae:	d11f      	bne.n	19f0 <xatoi+0xd0>
    19b0:	230a      	movs	r3, #10
    19b2:	18fb      	adds	r3, r7, r3
    19b4:	2210      	movs	r2, #16
    19b6:	701a      	strb	r2, [r3, #0]
    19b8:	687b      	ldr	r3, [r7, #4]
    19ba:	681b      	ldr	r3, [r3, #0]
    19bc:	1c5a      	adds	r2, r3, #1
    19be:	687b      	ldr	r3, [r7, #4]
    19c0:	601a      	str	r2, [r3, #0]
    19c2:	687b      	ldr	r3, [r7, #4]
    19c4:	681a      	ldr	r2, [r3, #0]
    19c6:	230b      	movs	r3, #11
    19c8:	18fb      	adds	r3, r7, r3
    19ca:	7812      	ldrb	r2, [r2, #0]
    19cc:	701a      	strb	r2, [r3, #0]
    19ce:	e037      	b.n	1a40 <xatoi+0x120>
    19d0:	230a      	movs	r3, #10
    19d2:	18fb      	adds	r3, r7, r3
    19d4:	2202      	movs	r2, #2
    19d6:	701a      	strb	r2, [r3, #0]
    19d8:	687b      	ldr	r3, [r7, #4]
    19da:	681b      	ldr	r3, [r3, #0]
    19dc:	1c5a      	adds	r2, r3, #1
    19de:	687b      	ldr	r3, [r7, #4]
    19e0:	601a      	str	r2, [r3, #0]
    19e2:	687b      	ldr	r3, [r7, #4]
    19e4:	681a      	ldr	r2, [r3, #0]
    19e6:	230b      	movs	r3, #11
    19e8:	18fb      	adds	r3, r7, r3
    19ea:	7812      	ldrb	r2, [r2, #0]
    19ec:	701a      	strb	r2, [r3, #0]
    19ee:	e027      	b.n	1a40 <xatoi+0x120>
    19f0:	230b      	movs	r3, #11
    19f2:	18fb      	adds	r3, r7, r3
    19f4:	781b      	ldrb	r3, [r3, #0]
    19f6:	2b20      	cmp	r3, #32
    19f8:	d801      	bhi.n	19fe <xatoi+0xde>
    19fa:	2301      	movs	r3, #1
    19fc:	e079      	b.n	1af2 <xatoi+0x1d2>
    19fe:	230b      	movs	r3, #11
    1a00:	18fb      	adds	r3, r7, r3
    1a02:	781b      	ldrb	r3, [r3, #0]
    1a04:	2b2f      	cmp	r3, #47	; 0x2f
    1a06:	d904      	bls.n	1a12 <xatoi+0xf2>
    1a08:	230b      	movs	r3, #11
    1a0a:	18fb      	adds	r3, r7, r3
    1a0c:	781b      	ldrb	r3, [r3, #0]
    1a0e:	2b39      	cmp	r3, #57	; 0x39
    1a10:	d901      	bls.n	1a16 <xatoi+0xf6>
    1a12:	2300      	movs	r3, #0
    1a14:	e06d      	b.n	1af2 <xatoi+0x1d2>
    1a16:	230a      	movs	r3, #10
    1a18:	18fb      	adds	r3, r7, r3
    1a1a:	2208      	movs	r2, #8
    1a1c:	701a      	strb	r2, [r3, #0]
    1a1e:	e00f      	b.n	1a40 <xatoi+0x120>
    1a20:	230b      	movs	r3, #11
    1a22:	18fb      	adds	r3, r7, r3
    1a24:	781b      	ldrb	r3, [r3, #0]
    1a26:	2b2f      	cmp	r3, #47	; 0x2f
    1a28:	d904      	bls.n	1a34 <xatoi+0x114>
    1a2a:	230b      	movs	r3, #11
    1a2c:	18fb      	adds	r3, r7, r3
    1a2e:	781b      	ldrb	r3, [r3, #0]
    1a30:	2b39      	cmp	r3, #57	; 0x39
    1a32:	d901      	bls.n	1a38 <xatoi+0x118>
    1a34:	2300      	movs	r3, #0
    1a36:	e05c      	b.n	1af2 <xatoi+0x1d2>
    1a38:	230a      	movs	r3, #10
    1a3a:	18fb      	adds	r3, r7, r3
    1a3c:	220a      	movs	r2, #10
    1a3e:	701a      	strb	r2, [r3, #0]
    1a40:	2300      	movs	r3, #0
    1a42:	60fb      	str	r3, [r7, #12]
    1a44:	e044      	b.n	1ad0 <xatoi+0x1b0>
    1a46:	230b      	movs	r3, #11
    1a48:	18fb      	adds	r3, r7, r3
    1a4a:	781b      	ldrb	r3, [r3, #0]
    1a4c:	2b60      	cmp	r3, #96	; 0x60
    1a4e:	d906      	bls.n	1a5e <xatoi+0x13e>
    1a50:	230b      	movs	r3, #11
    1a52:	18fb      	adds	r3, r7, r3
    1a54:	220b      	movs	r2, #11
    1a56:	18ba      	adds	r2, r7, r2
    1a58:	7812      	ldrb	r2, [r2, #0]
    1a5a:	3a20      	subs	r2, #32
    1a5c:	701a      	strb	r2, [r3, #0]
    1a5e:	230b      	movs	r3, #11
    1a60:	18fb      	adds	r3, r7, r3
    1a62:	220b      	movs	r2, #11
    1a64:	18ba      	adds	r2, r7, r2
    1a66:	7812      	ldrb	r2, [r2, #0]
    1a68:	3a30      	subs	r2, #48	; 0x30
    1a6a:	701a      	strb	r2, [r3, #0]
    1a6c:	230b      	movs	r3, #11
    1a6e:	18fb      	adds	r3, r7, r3
    1a70:	781b      	ldrb	r3, [r3, #0]
    1a72:	2b10      	cmp	r3, #16
    1a74:	d90d      	bls.n	1a92 <xatoi+0x172>
    1a76:	230b      	movs	r3, #11
    1a78:	18fb      	adds	r3, r7, r3
    1a7a:	220b      	movs	r2, #11
    1a7c:	18ba      	adds	r2, r7, r2
    1a7e:	7812      	ldrb	r2, [r2, #0]
    1a80:	3a07      	subs	r2, #7
    1a82:	701a      	strb	r2, [r3, #0]
    1a84:	230b      	movs	r3, #11
    1a86:	18fb      	adds	r3, r7, r3
    1a88:	781b      	ldrb	r3, [r3, #0]
    1a8a:	2b09      	cmp	r3, #9
    1a8c:	d801      	bhi.n	1a92 <xatoi+0x172>
    1a8e:	2300      	movs	r3, #0
    1a90:	e02f      	b.n	1af2 <xatoi+0x1d2>
    1a92:	230b      	movs	r3, #11
    1a94:	18fa      	adds	r2, r7, r3
    1a96:	230a      	movs	r3, #10
    1a98:	18fb      	adds	r3, r7, r3
    1a9a:	7812      	ldrb	r2, [r2, #0]
    1a9c:	781b      	ldrb	r3, [r3, #0]
    1a9e:	429a      	cmp	r2, r3
    1aa0:	d301      	bcc.n	1aa6 <xatoi+0x186>
    1aa2:	2300      	movs	r3, #0
    1aa4:	e025      	b.n	1af2 <xatoi+0x1d2>
    1aa6:	230a      	movs	r3, #10
    1aa8:	18fb      	adds	r3, r7, r3
    1aaa:	781b      	ldrb	r3, [r3, #0]
    1aac:	68fa      	ldr	r2, [r7, #12]
    1aae:	435a      	muls	r2, r3
    1ab0:	230b      	movs	r3, #11
    1ab2:	18fb      	adds	r3, r7, r3
    1ab4:	781b      	ldrb	r3, [r3, #0]
    1ab6:	18d3      	adds	r3, r2, r3
    1ab8:	60fb      	str	r3, [r7, #12]
    1aba:	687b      	ldr	r3, [r7, #4]
    1abc:	681b      	ldr	r3, [r3, #0]
    1abe:	1c5a      	adds	r2, r3, #1
    1ac0:	687b      	ldr	r3, [r7, #4]
    1ac2:	601a      	str	r2, [r3, #0]
    1ac4:	687b      	ldr	r3, [r7, #4]
    1ac6:	681a      	ldr	r2, [r3, #0]
    1ac8:	230b      	movs	r3, #11
    1aca:	18fb      	adds	r3, r7, r3
    1acc:	7812      	ldrb	r2, [r2, #0]
    1ace:	701a      	strb	r2, [r3, #0]
    1ad0:	230b      	movs	r3, #11
    1ad2:	18fb      	adds	r3, r7, r3
    1ad4:	781b      	ldrb	r3, [r3, #0]
    1ad6:	2b20      	cmp	r3, #32
    1ad8:	d8b5      	bhi.n	1a46 <xatoi+0x126>
    1ada:	2309      	movs	r3, #9
    1adc:	18fb      	adds	r3, r7, r3
    1ade:	781b      	ldrb	r3, [r3, #0]
    1ae0:	2b00      	cmp	r3, #0
    1ae2:	d002      	beq.n	1aea <xatoi+0x1ca>
    1ae4:	68fb      	ldr	r3, [r7, #12]
    1ae6:	425b      	negs	r3, r3
    1ae8:	60fb      	str	r3, [r7, #12]
    1aea:	68fa      	ldr	r2, [r7, #12]
    1aec:	683b      	ldr	r3, [r7, #0]
    1aee:	601a      	str	r2, [r3, #0]
    1af0:	2301      	movs	r3, #1
    1af2:	0018      	movs	r0, r3
    1af4:	46bd      	mov	sp, r7
    1af6:	b004      	add	sp, #16
    1af8:	bd80      	pop	{r7, pc}
    1afa:	46c0      	nop			; (mov r8, r8)

00001afc <os_idle_demon>:
    1afc:	b580      	push	{r7, lr}
    1afe:	af00      	add	r7, sp, #0
    1b00:	e7fe      	b.n	1b00 <os_idle_demon+0x4>
    1b02:	46c0      	nop			; (mov r8, r8)

00001b04 <os_error>:
    1b04:	b580      	push	{r7, lr}
    1b06:	b082      	sub	sp, #8
    1b08:	af00      	add	r7, sp, #0
    1b0a:	6078      	str	r0, [r7, #4]
    1b0c:	687b      	ldr	r3, [r7, #4]
    1b0e:	2b02      	cmp	r3, #2
    1b10:	d009      	beq.n	1b26 <os_error+0x22>
    1b12:	d802      	bhi.n	1b1a <os_error+0x16>
    1b14:	2b01      	cmp	r3, #1
    1b16:	d005      	beq.n	1b24 <os_error+0x20>
    1b18:	e008      	b.n	1b2c <os_error+0x28>
    1b1a:	2b03      	cmp	r3, #3
    1b1c:	d004      	beq.n	1b28 <os_error+0x24>
    1b1e:	2b04      	cmp	r3, #4
    1b20:	d003      	beq.n	1b2a <os_error+0x26>
    1b22:	e003      	b.n	1b2c <os_error+0x28>
    1b24:	e002      	b.n	1b2c <os_error+0x28>
    1b26:	e001      	b.n	1b2c <os_error+0x28>
    1b28:	e000      	b.n	1b2c <os_error+0x28>
    1b2a:	46c0      	nop			; (mov r8, r8)
    1b2c:	e7fe      	b.n	1b2c <os_error+0x28>
    1b2e:	46c0      	nop			; (mov r8, r8)

00001b30 <software_init_hook>:
    1b30:	2000      	movs	r0, #0
    1b32:	2100      	movs	r1, #0
    1b34:	4604      	mov	r4, r0
    1b36:	460d      	mov	r5, r1
    1b38:	4808      	ldr	r0, [pc, #32]	; (1b5c <software_init_hook+0x2c>)
    1b3a:	f003 faed 	bl	5118 <atexit>
    1b3e:	f003 fb1d 	bl	517c <__libc_init_array>
    1b42:	4620      	mov	r0, r4
    1b44:	4629      	mov	r1, r5
    1b46:	f004 f965 	bl	5e14 <osKernelInitialize>
    1b4a:	4805      	ldr	r0, [pc, #20]	; (1b60 <software_init_hook+0x30>)
    1b4c:	2100      	movs	r1, #0
    1b4e:	f004 faf3 	bl	6138 <osThreadCreate>
    1b52:	f004 f9fb 	bl	5f4c <osKernelStart>
    1b56:	f003 fae7 	bl	5128 <exit>
    1b5a:	0000      	.short	0x0000
    1b5c:	00005149 	.word	0x00005149
    1b60:	00008d2c 	.word	0x00008d2c

00001b64 <__NVIC_EnableIRQ>:
    1b64:	b580      	push	{r7, lr}
    1b66:	b082      	sub	sp, #8
    1b68:	af00      	add	r7, sp, #0
    1b6a:	0002      	movs	r2, r0
    1b6c:	1dfb      	adds	r3, r7, #7
    1b6e:	701a      	strb	r2, [r3, #0]
    1b70:	1dfb      	adds	r3, r7, #7
    1b72:	781b      	ldrb	r3, [r3, #0]
    1b74:	2b7f      	cmp	r3, #127	; 0x7f
    1b76:	d809      	bhi.n	1b8c <__NVIC_EnableIRQ+0x28>
    1b78:	4b06      	ldr	r3, [pc, #24]	; (1b94 <__NVIC_EnableIRQ+0x30>)
    1b7a:	1dfa      	adds	r2, r7, #7
    1b7c:	7812      	ldrb	r2, [r2, #0]
    1b7e:	0011      	movs	r1, r2
    1b80:	221f      	movs	r2, #31
    1b82:	400a      	ands	r2, r1
    1b84:	2101      	movs	r1, #1
    1b86:	4091      	lsls	r1, r2
    1b88:	000a      	movs	r2, r1
    1b8a:	601a      	str	r2, [r3, #0]
    1b8c:	46c0      	nop			; (mov r8, r8)
    1b8e:	46bd      	mov	sp, r7
    1b90:	b002      	add	sp, #8
    1b92:	bd80      	pop	{r7, pc}
    1b94:	e000e100 	.word	0xe000e100

00001b98 <__NVIC_ClearPendingIRQ>:
    1b98:	b580      	push	{r7, lr}
    1b9a:	b082      	sub	sp, #8
    1b9c:	af00      	add	r7, sp, #0
    1b9e:	0002      	movs	r2, r0
    1ba0:	1dfb      	adds	r3, r7, #7
    1ba2:	701a      	strb	r2, [r3, #0]
    1ba4:	1dfb      	adds	r3, r7, #7
    1ba6:	781b      	ldrb	r3, [r3, #0]
    1ba8:	2b7f      	cmp	r3, #127	; 0x7f
    1baa:	d80a      	bhi.n	1bc2 <__NVIC_ClearPendingIRQ+0x2a>
    1bac:	4907      	ldr	r1, [pc, #28]	; (1bcc <__NVIC_ClearPendingIRQ+0x34>)
    1bae:	1dfb      	adds	r3, r7, #7
    1bb0:	781b      	ldrb	r3, [r3, #0]
    1bb2:	001a      	movs	r2, r3
    1bb4:	231f      	movs	r3, #31
    1bb6:	4013      	ands	r3, r2
    1bb8:	2201      	movs	r2, #1
    1bba:	409a      	lsls	r2, r3
    1bbc:	23c0      	movs	r3, #192	; 0xc0
    1bbe:	005b      	lsls	r3, r3, #1
    1bc0:	50ca      	str	r2, [r1, r3]
    1bc2:	46c0      	nop			; (mov r8, r8)
    1bc4:	46bd      	mov	sp, r7
    1bc6:	b002      	add	sp, #8
    1bc8:	bd80      	pop	{r7, pc}
    1bca:	46c0      	nop			; (mov r8, r8)
    1bcc:	e000e100 	.word	0xe000e100

00001bd0 <__NVIC_SetPriority>:
    1bd0:	b5b0      	push	{r4, r5, r7, lr}
    1bd2:	b082      	sub	sp, #8
    1bd4:	af00      	add	r7, sp, #0
    1bd6:	0002      	movs	r2, r0
    1bd8:	6039      	str	r1, [r7, #0]
    1bda:	1dfb      	adds	r3, r7, #7
    1bdc:	701a      	strb	r2, [r3, #0]
    1bde:	1dfb      	adds	r3, r7, #7
    1be0:	781b      	ldrb	r3, [r3, #0]
    1be2:	2b7f      	cmp	r3, #127	; 0x7f
    1be4:	d828      	bhi.n	1c38 <__NVIC_SetPriority+0x68>
    1be6:	4c2f      	ldr	r4, [pc, #188]	; (1ca4 <__NVIC_SetPriority+0xd4>)
    1be8:	1dfb      	adds	r3, r7, #7
    1bea:	781b      	ldrb	r3, [r3, #0]
    1bec:	b25b      	sxtb	r3, r3
    1bee:	089b      	lsrs	r3, r3, #2
    1bf0:	492c      	ldr	r1, [pc, #176]	; (1ca4 <__NVIC_SetPriority+0xd4>)
    1bf2:	1dfa      	adds	r2, r7, #7
    1bf4:	7812      	ldrb	r2, [r2, #0]
    1bf6:	b252      	sxtb	r2, r2
    1bf8:	0892      	lsrs	r2, r2, #2
    1bfa:	32c0      	adds	r2, #192	; 0xc0
    1bfc:	0092      	lsls	r2, r2, #2
    1bfe:	5852      	ldr	r2, [r2, r1]
    1c00:	1df9      	adds	r1, r7, #7
    1c02:	7809      	ldrb	r1, [r1, #0]
    1c04:	0008      	movs	r0, r1
    1c06:	2103      	movs	r1, #3
    1c08:	4001      	ands	r1, r0
    1c0a:	00c9      	lsls	r1, r1, #3
    1c0c:	20ff      	movs	r0, #255	; 0xff
    1c0e:	4088      	lsls	r0, r1
    1c10:	0001      	movs	r1, r0
    1c12:	43c9      	mvns	r1, r1
    1c14:	4011      	ands	r1, r2
    1c16:	683a      	ldr	r2, [r7, #0]
    1c18:	0192      	lsls	r2, r2, #6
    1c1a:	20ff      	movs	r0, #255	; 0xff
    1c1c:	4010      	ands	r0, r2
    1c1e:	1dfa      	adds	r2, r7, #7
    1c20:	7812      	ldrb	r2, [r2, #0]
    1c22:	0015      	movs	r5, r2
    1c24:	2203      	movs	r2, #3
    1c26:	402a      	ands	r2, r5
    1c28:	00d2      	lsls	r2, r2, #3
    1c2a:	4090      	lsls	r0, r2
    1c2c:	0002      	movs	r2, r0
    1c2e:	430a      	orrs	r2, r1
    1c30:	33c0      	adds	r3, #192	; 0xc0
    1c32:	009b      	lsls	r3, r3, #2
    1c34:	511a      	str	r2, [r3, r4]
    1c36:	e031      	b.n	1c9c <__NVIC_SetPriority+0xcc>
    1c38:	4c1b      	ldr	r4, [pc, #108]	; (1ca8 <__NVIC_SetPriority+0xd8>)
    1c3a:	1dfb      	adds	r3, r7, #7
    1c3c:	781b      	ldrb	r3, [r3, #0]
    1c3e:	001a      	movs	r2, r3
    1c40:	230f      	movs	r3, #15
    1c42:	4013      	ands	r3, r2
    1c44:	3b08      	subs	r3, #8
    1c46:	0899      	lsrs	r1, r3, #2
    1c48:	4a17      	ldr	r2, [pc, #92]	; (1ca8 <__NVIC_SetPriority+0xd8>)
    1c4a:	1dfb      	adds	r3, r7, #7
    1c4c:	781b      	ldrb	r3, [r3, #0]
    1c4e:	0018      	movs	r0, r3
    1c50:	230f      	movs	r3, #15
    1c52:	4003      	ands	r3, r0
    1c54:	3b08      	subs	r3, #8
    1c56:	089b      	lsrs	r3, r3, #2
    1c58:	3306      	adds	r3, #6
    1c5a:	009b      	lsls	r3, r3, #2
    1c5c:	18d3      	adds	r3, r2, r3
    1c5e:	3304      	adds	r3, #4
    1c60:	681b      	ldr	r3, [r3, #0]
    1c62:	1dfa      	adds	r2, r7, #7
    1c64:	7812      	ldrb	r2, [r2, #0]
    1c66:	0010      	movs	r0, r2
    1c68:	2203      	movs	r2, #3
    1c6a:	4002      	ands	r2, r0
    1c6c:	00d2      	lsls	r2, r2, #3
    1c6e:	20ff      	movs	r0, #255	; 0xff
    1c70:	4090      	lsls	r0, r2
    1c72:	0002      	movs	r2, r0
    1c74:	43d2      	mvns	r2, r2
    1c76:	401a      	ands	r2, r3
    1c78:	683b      	ldr	r3, [r7, #0]
    1c7a:	019b      	lsls	r3, r3, #6
    1c7c:	20ff      	movs	r0, #255	; 0xff
    1c7e:	4018      	ands	r0, r3
    1c80:	1dfb      	adds	r3, r7, #7
    1c82:	781b      	ldrb	r3, [r3, #0]
    1c84:	001d      	movs	r5, r3
    1c86:	2303      	movs	r3, #3
    1c88:	402b      	ands	r3, r5
    1c8a:	00db      	lsls	r3, r3, #3
    1c8c:	4098      	lsls	r0, r3
    1c8e:	0003      	movs	r3, r0
    1c90:	431a      	orrs	r2, r3
    1c92:	1d8b      	adds	r3, r1, #6
    1c94:	009b      	lsls	r3, r3, #2
    1c96:	18e3      	adds	r3, r4, r3
    1c98:	3304      	adds	r3, #4
    1c9a:	601a      	str	r2, [r3, #0]
    1c9c:	46c0      	nop			; (mov r8, r8)
    1c9e:	46bd      	mov	sp, r7
    1ca0:	b002      	add	sp, #8
    1ca2:	bdb0      	pop	{r4, r5, r7, pc}
    1ca4:	e000e100 	.word	0xe000e100
    1ca8:	e000ed00 	.word	0xe000ed00

00001cac <PortConfig>:
    1cac:	b580      	push	{r7, lr}
    1cae:	af00      	add	r7, sp, #0
    1cb0:	4b4c      	ldr	r3, [pc, #304]	; (1de4 <PortConfig+0x138>)
    1cb2:	4a4c      	ldr	r2, [pc, #304]	; (1de4 <PortConfig+0x138>)
    1cb4:	68d2      	ldr	r2, [r2, #12]
    1cb6:	2108      	movs	r1, #8
    1cb8:	430a      	orrs	r2, r1
    1cba:	60da      	str	r2, [r3, #12]
    1cbc:	4b49      	ldr	r3, [pc, #292]	; (1de4 <PortConfig+0x138>)
    1cbe:	4a49      	ldr	r2, [pc, #292]	; (1de4 <PortConfig+0x138>)
    1cc0:	6852      	ldr	r2, [r2, #4]
    1cc2:	2108      	movs	r1, #8
    1cc4:	438a      	bics	r2, r1
    1cc6:	605a      	str	r2, [r3, #4]
    1cc8:	4b47      	ldr	r3, [pc, #284]	; (1de8 <PortConfig+0x13c>)
    1cca:	4a47      	ldr	r2, [pc, #284]	; (1de8 <PortConfig+0x13c>)
    1ccc:	68d2      	ldr	r2, [r2, #12]
    1cce:	21de      	movs	r1, #222	; 0xde
    1cd0:	0209      	lsls	r1, r1, #8
    1cd2:	430a      	orrs	r2, r1
    1cd4:	60da      	str	r2, [r3, #12]
    1cd6:	4b44      	ldr	r3, [pc, #272]	; (1de8 <PortConfig+0x13c>)
    1cd8:	4a43      	ldr	r2, [pc, #268]	; (1de8 <PortConfig+0x13c>)
    1cda:	6812      	ldr	r2, [r2, #0]
    1cdc:	4943      	ldr	r1, [pc, #268]	; (1dec <PortConfig+0x140>)
    1cde:	400a      	ands	r2, r1
    1ce0:	601a      	str	r2, [r3, #0]
    1ce2:	4b41      	ldr	r3, [pc, #260]	; (1de8 <PortConfig+0x13c>)
    1ce4:	4a40      	ldr	r2, [pc, #256]	; (1de8 <PortConfig+0x13c>)
    1ce6:	6852      	ldr	r2, [r2, #4]
    1ce8:	21de      	movs	r1, #222	; 0xde
    1cea:	0209      	lsls	r1, r1, #8
    1cec:	430a      	orrs	r2, r1
    1cee:	605a      	str	r2, [r3, #4]
    1cf0:	4b3d      	ldr	r3, [pc, #244]	; (1de8 <PortConfig+0x13c>)
    1cf2:	4a3d      	ldr	r2, [pc, #244]	; (1de8 <PortConfig+0x13c>)
    1cf4:	6992      	ldr	r2, [r2, #24]
    1cf6:	493e      	ldr	r1, [pc, #248]	; (1df0 <PortConfig+0x144>)
    1cf8:	430a      	orrs	r2, r1
    1cfa:	619a      	str	r2, [r3, #24]
    1cfc:	4b3a      	ldr	r3, [pc, #232]	; (1de8 <PortConfig+0x13c>)
    1cfe:	4a3a      	ldr	r2, [pc, #232]	; (1de8 <PortConfig+0x13c>)
    1d00:	68d2      	ldr	r2, [r2, #12]
    1d02:	493c      	ldr	r1, [pc, #240]	; (1df4 <PortConfig+0x148>)
    1d04:	430a      	orrs	r2, r1
    1d06:	60da      	str	r2, [r3, #12]
    1d08:	4b37      	ldr	r3, [pc, #220]	; (1de8 <PortConfig+0x13c>)
    1d0a:	4a37      	ldr	r2, [pc, #220]	; (1de8 <PortConfig+0x13c>)
    1d0c:	6812      	ldr	r2, [r2, #0]
    1d0e:	0a52      	lsrs	r2, r2, #9
    1d10:	0252      	lsls	r2, r2, #9
    1d12:	601a      	str	r2, [r3, #0]
    1d14:	4b34      	ldr	r3, [pc, #208]	; (1de8 <PortConfig+0x13c>)
    1d16:	4a34      	ldr	r2, [pc, #208]	; (1de8 <PortConfig+0x13c>)
    1d18:	6852      	ldr	r2, [r2, #4]
    1d1a:	4936      	ldr	r1, [pc, #216]	; (1df4 <PortConfig+0x148>)
    1d1c:	430a      	orrs	r2, r1
    1d1e:	605a      	str	r2, [r3, #4]
    1d20:	4b31      	ldr	r3, [pc, #196]	; (1de8 <PortConfig+0x13c>)
    1d22:	4a31      	ldr	r2, [pc, #196]	; (1de8 <PortConfig+0x13c>)
    1d24:	6992      	ldr	r2, [r2, #24]
    1d26:	4934      	ldr	r1, [pc, #208]	; (1df8 <PortConfig+0x14c>)
    1d28:	430a      	orrs	r2, r1
    1d2a:	619a      	str	r2, [r3, #24]
    1d2c:	4b33      	ldr	r3, [pc, #204]	; (1dfc <PortConfig+0x150>)
    1d2e:	4a33      	ldr	r2, [pc, #204]	; (1dfc <PortConfig+0x150>)
    1d30:	6892      	ldr	r2, [r2, #8]
    1d32:	21a0      	movs	r1, #160	; 0xa0
    1d34:	0549      	lsls	r1, r1, #21
    1d36:	430a      	orrs	r2, r1
    1d38:	609a      	str	r2, [r3, #8]
    1d3a:	4b30      	ldr	r3, [pc, #192]	; (1dfc <PortConfig+0x150>)
    1d3c:	4a2f      	ldr	r2, [pc, #188]	; (1dfc <PortConfig+0x150>)
    1d3e:	68d2      	ldr	r2, [r2, #12]
    1d40:	21e0      	movs	r1, #224	; 0xe0
    1d42:	0209      	lsls	r1, r1, #8
    1d44:	430a      	orrs	r2, r1
    1d46:	60da      	str	r2, [r3, #12]
    1d48:	4b2c      	ldr	r3, [pc, #176]	; (1dfc <PortConfig+0x150>)
    1d4a:	4a2c      	ldr	r2, [pc, #176]	; (1dfc <PortConfig+0x150>)
    1d4c:	6992      	ldr	r2, [r2, #24]
    1d4e:	21fc      	movs	r1, #252	; 0xfc
    1d50:	0609      	lsls	r1, r1, #24
    1d52:	430a      	orrs	r2, r1
    1d54:	619a      	str	r2, [r3, #24]
    1d56:	4b29      	ldr	r3, [pc, #164]	; (1dfc <PortConfig+0x150>)
    1d58:	4a28      	ldr	r2, [pc, #160]	; (1dfc <PortConfig+0x150>)
    1d5a:	6812      	ldr	r2, [r2, #0]
    1d5c:	4928      	ldr	r1, [pc, #160]	; (1e00 <PortConfig+0x154>)
    1d5e:	400a      	ands	r2, r1
    1d60:	601a      	str	r2, [r3, #0]
    1d62:	4b26      	ldr	r3, [pc, #152]	; (1dfc <PortConfig+0x150>)
    1d64:	4a25      	ldr	r2, [pc, #148]	; (1dfc <PortConfig+0x150>)
    1d66:	6852      	ldr	r2, [r2, #4]
    1d68:	2180      	movs	r1, #128	; 0x80
    1d6a:	0209      	lsls	r1, r1, #8
    1d6c:	430a      	orrs	r2, r1
    1d6e:	605a      	str	r2, [r3, #4]
    1d70:	4b24      	ldr	r3, [pc, #144]	; (1e04 <PortConfig+0x158>)
    1d72:	4a24      	ldr	r2, [pc, #144]	; (1e04 <PortConfig+0x158>)
    1d74:	6892      	ldr	r2, [r2, #8]
    1d76:	4924      	ldr	r1, [pc, #144]	; (1e08 <PortConfig+0x15c>)
    1d78:	400a      	ands	r2, r1
    1d7a:	609a      	str	r2, [r3, #8]
    1d7c:	4b21      	ldr	r3, [pc, #132]	; (1e04 <PortConfig+0x158>)
    1d7e:	4a21      	ldr	r2, [pc, #132]	; (1e04 <PortConfig+0x158>)
    1d80:	6892      	ldr	r2, [r2, #8]
    1d82:	21a0      	movs	r1, #160	; 0xa0
    1d84:	0049      	lsls	r1, r1, #1
    1d86:	430a      	orrs	r2, r1
    1d88:	609a      	str	r2, [r3, #8]
    1d8a:	4b1e      	ldr	r3, [pc, #120]	; (1e04 <PortConfig+0x158>)
    1d8c:	4a1d      	ldr	r2, [pc, #116]	; (1e04 <PortConfig+0x158>)
    1d8e:	68d2      	ldr	r2, [r2, #12]
    1d90:	2118      	movs	r1, #24
    1d92:	430a      	orrs	r2, r1
    1d94:	60da      	str	r2, [r3, #12]
    1d96:	4b1b      	ldr	r3, [pc, #108]	; (1e04 <PortConfig+0x158>)
    1d98:	4a1a      	ldr	r2, [pc, #104]	; (1e04 <PortConfig+0x158>)
    1d9a:	6992      	ldr	r2, [r2, #24]
    1d9c:	21f0      	movs	r1, #240	; 0xf0
    1d9e:	0089      	lsls	r1, r1, #2
    1da0:	430a      	orrs	r2, r1
    1da2:	619a      	str	r2, [r3, #24]
    1da4:	4b17      	ldr	r3, [pc, #92]	; (1e04 <PortConfig+0x158>)
    1da6:	4a17      	ldr	r2, [pc, #92]	; (1e04 <PortConfig+0x158>)
    1da8:	6812      	ldr	r2, [r2, #0]
    1daa:	2118      	movs	r1, #24
    1dac:	438a      	bics	r2, r1
    1dae:	601a      	str	r2, [r3, #0]
    1db0:	4b14      	ldr	r3, [pc, #80]	; (1e04 <PortConfig+0x158>)
    1db2:	4a14      	ldr	r2, [pc, #80]	; (1e04 <PortConfig+0x158>)
    1db4:	68d2      	ldr	r2, [r2, #12]
    1db6:	2120      	movs	r1, #32
    1db8:	430a      	orrs	r2, r1
    1dba:	60da      	str	r2, [r3, #12]
    1dbc:	4b11      	ldr	r3, [pc, #68]	; (1e04 <PortConfig+0x158>)
    1dbe:	4a11      	ldr	r2, [pc, #68]	; (1e04 <PortConfig+0x158>)
    1dc0:	6892      	ldr	r2, [r2, #8]
    1dc2:	2180      	movs	r1, #128	; 0x80
    1dc4:	00c9      	lsls	r1, r1, #3
    1dc6:	430a      	orrs	r2, r1
    1dc8:	609a      	str	r2, [r3, #8]
    1dca:	201c      	movs	r0, #28
    1dcc:	f7ff fee4 	bl	1b98 <__NVIC_ClearPendingIRQ>
    1dd0:	4b0e      	ldr	r3, [pc, #56]	; (1e0c <PortConfig+0x160>)
    1dd2:	4a0e      	ldr	r2, [pc, #56]	; (1e0c <PortConfig+0x160>)
    1dd4:	68d2      	ldr	r2, [r2, #12]
    1dd6:	2106      	movs	r1, #6
    1dd8:	438a      	bics	r2, r1
    1dda:	60da      	str	r2, [r3, #12]
    1ddc:	46c0      	nop			; (mov r8, r8)
    1dde:	46bd      	mov	sp, r7
    1de0:	bd80      	pop	{r7, pc}
    1de2:	46c0      	nop			; (mov r8, r8)
    1de4:	400a8000 	.word	0x400a8000
    1de8:	400b0000 	.word	0x400b0000
    1dec:	ffff21ff 	.word	0xffff21ff
    1df0:	f3fc0000 	.word	0xf3fc0000
    1df4:	000001ff 	.word	0x000001ff
    1df8:	0003ffff 	.word	0x0003ffff
    1dfc:	400c0000 	.word	0x400c0000
    1e00:	ffff1fff 	.word	0xffff1fff
    1e04:	400b8000 	.word	0x400b8000
    1e08:	fffffc3f 	.word	0xfffffc3f
    1e0c:	400c8000 	.word	0x400c8000

00001e10 <ClkConfig>:
    1e10:	b580      	push	{r7, lr}
    1e12:	af00      	add	r7, sp, #0
    1e14:	4b4b      	ldr	r3, [pc, #300]	; (1f44 <ClkConfig+0x134>)
    1e16:	2280      	movs	r2, #128	; 0x80
    1e18:	0092      	lsls	r2, r2, #2
    1e1a:	619a      	str	r2, [r3, #24]
    1e1c:	4b4a      	ldr	r3, [pc, #296]	; (1f48 <ClkConfig+0x138>)
    1e1e:	4a4a      	ldr	r2, [pc, #296]	; (1f48 <ClkConfig+0x138>)
    1e20:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1e22:	2118      	movs	r1, #24
    1e24:	430a      	orrs	r2, r1
    1e26:	63da      	str	r2, [r3, #60]	; 0x3c
    1e28:	4b47      	ldr	r3, [pc, #284]	; (1f48 <ClkConfig+0x138>)
    1e2a:	4a48      	ldr	r2, [pc, #288]	; (1f4c <ClkConfig+0x13c>)
    1e2c:	649a      	str	r2, [r3, #72]	; 0x48
    1e2e:	4b46      	ldr	r3, [pc, #280]	; (1f48 <ClkConfig+0x138>)
    1e30:	2201      	movs	r2, #1
    1e32:	645a      	str	r2, [r3, #68]	; 0x44
    1e34:	4b43      	ldr	r3, [pc, #268]	; (1f44 <ClkConfig+0x134>)
    1e36:	4a43      	ldr	r2, [pc, #268]	; (1f44 <ClkConfig+0x134>)
    1e38:	6892      	ldr	r2, [r2, #8]
    1e3a:	2105      	movs	r1, #5
    1e3c:	430a      	orrs	r2, r1
    1e3e:	609a      	str	r2, [r3, #8]
    1e40:	46c0      	nop			; (mov r8, r8)
    1e42:	4b40      	ldr	r3, [pc, #256]	; (1f44 <ClkConfig+0x134>)
    1e44:	681b      	ldr	r3, [r3, #0]
    1e46:	220c      	movs	r2, #12
    1e48:	4013      	ands	r3, r2
    1e4a:	2b0c      	cmp	r3, #12
    1e4c:	d1f9      	bne.n	1e42 <ClkConfig+0x32>
    1e4e:	4b3d      	ldr	r3, [pc, #244]	; (1f44 <ClkConfig+0x134>)
    1e50:	4a3c      	ldr	r2, [pc, #240]	; (1f44 <ClkConfig+0x134>)
    1e52:	68d2      	ldr	r2, [r2, #12]
    1e54:	2102      	movs	r1, #2
    1e56:	430a      	orrs	r2, r1
    1e58:	60da      	str	r2, [r3, #12]
    1e5a:	4b3a      	ldr	r3, [pc, #232]	; (1f44 <ClkConfig+0x134>)
    1e5c:	4a3c      	ldr	r2, [pc, #240]	; (1f50 <ClkConfig+0x140>)
    1e5e:	605a      	str	r2, [r3, #4]
    1e60:	46c0      	nop			; (mov r8, r8)
    1e62:	4b38      	ldr	r3, [pc, #224]	; (1f44 <ClkConfig+0x134>)
    1e64:	681b      	ldr	r3, [r3, #0]
    1e66:	2202      	movs	r2, #2
    1e68:	4013      	ands	r3, r2
    1e6a:	d0fa      	beq.n	1e62 <ClkConfig+0x52>
    1e6c:	4b35      	ldr	r3, [pc, #212]	; (1f44 <ClkConfig+0x134>)
    1e6e:	4a35      	ldr	r2, [pc, #212]	; (1f44 <ClkConfig+0x134>)
    1e70:	69d2      	ldr	r2, [r2, #28]
    1e72:	2108      	movs	r1, #8
    1e74:	430a      	orrs	r2, r1
    1e76:	61da      	str	r2, [r3, #28]
    1e78:	4b36      	ldr	r3, [pc, #216]	; (1f54 <ClkConfig+0x144>)
    1e7a:	4a36      	ldr	r2, [pc, #216]	; (1f54 <ClkConfig+0x144>)
    1e7c:	6812      	ldr	r2, [r2, #0]
    1e7e:	2118      	movs	r1, #24
    1e80:	430a      	orrs	r2, r1
    1e82:	601a      	str	r2, [r3, #0]
    1e84:	4b2f      	ldr	r3, [pc, #188]	; (1f44 <ClkConfig+0x134>)
    1e86:	4a2f      	ldr	r2, [pc, #188]	; (1f44 <ClkConfig+0x134>)
    1e88:	69d2      	ldr	r2, [r2, #28]
    1e8a:	2108      	movs	r1, #8
    1e8c:	438a      	bics	r2, r1
    1e8e:	61da      	str	r2, [r3, #28]
    1e90:	4b2c      	ldr	r3, [pc, #176]	; (1f44 <ClkConfig+0x134>)
    1e92:	4a2c      	ldr	r2, [pc, #176]	; (1f44 <ClkConfig+0x134>)
    1e94:	68d2      	ldr	r2, [r2, #12]
    1e96:	2180      	movs	r1, #128	; 0x80
    1e98:	0049      	lsls	r1, r1, #1
    1e9a:	430a      	orrs	r2, r1
    1e9c:	60da      	str	r2, [r3, #12]
    1e9e:	4b29      	ldr	r3, [pc, #164]	; (1f44 <ClkConfig+0x134>)
    1ea0:	4a28      	ldr	r2, [pc, #160]	; (1f44 <ClkConfig+0x134>)
    1ea2:	68d2      	ldr	r2, [r2, #12]
    1ea4:	2104      	movs	r1, #4
    1ea6:	430a      	orrs	r2, r1
    1ea8:	60da      	str	r2, [r3, #12]
    1eaa:	4b26      	ldr	r3, [pc, #152]	; (1f44 <ClkConfig+0x134>)
    1eac:	22e4      	movs	r2, #228	; 0xe4
    1eae:	0592      	lsls	r2, r2, #22
    1eb0:	635a      	str	r2, [r3, #52]	; 0x34
    1eb2:	4b24      	ldr	r3, [pc, #144]	; (1f44 <ClkConfig+0x134>)
    1eb4:	4a23      	ldr	r2, [pc, #140]	; (1f44 <ClkConfig+0x134>)
    1eb6:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1eb8:	2180      	movs	r1, #128	; 0x80
    1eba:	0449      	lsls	r1, r1, #17
    1ebc:	430a      	orrs	r2, r1
    1ebe:	625a      	str	r2, [r3, #36]	; 0x24
    1ec0:	4b20      	ldr	r3, [pc, #128]	; (1f44 <ClkConfig+0x134>)
    1ec2:	4a20      	ldr	r2, [pc, #128]	; (1f44 <ClkConfig+0x134>)
    1ec4:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1ec6:	21ff      	movs	r1, #255	; 0xff
    1ec8:	438a      	bics	r2, r1
    1eca:	625a      	str	r2, [r3, #36]	; 0x24
    1ecc:	4b1d      	ldr	r3, [pc, #116]	; (1f44 <ClkConfig+0x134>)
    1ece:	4a1d      	ldr	r2, [pc, #116]	; (1f44 <ClkConfig+0x134>)
    1ed0:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1ed2:	2180      	movs	r1, #128	; 0x80
    1ed4:	0489      	lsls	r1, r1, #18
    1ed6:	430a      	orrs	r2, r1
    1ed8:	625a      	str	r2, [r3, #36]	; 0x24
    1eda:	4b1a      	ldr	r3, [pc, #104]	; (1f44 <ClkConfig+0x134>)
    1edc:	4a19      	ldr	r2, [pc, #100]	; (1f44 <ClkConfig+0x134>)
    1ede:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1ee0:	491d      	ldr	r1, [pc, #116]	; (1f58 <ClkConfig+0x148>)
    1ee2:	400a      	ands	r2, r1
    1ee4:	625a      	str	r2, [r3, #36]	; 0x24
    1ee6:	4b17      	ldr	r3, [pc, #92]	; (1f44 <ClkConfig+0x134>)
    1ee8:	4a16      	ldr	r2, [pc, #88]	; (1f44 <ClkConfig+0x134>)
    1eea:	69d2      	ldr	r2, [r2, #28]
    1eec:	491b      	ldr	r1, [pc, #108]	; (1f5c <ClkConfig+0x14c>)
    1eee:	430a      	orrs	r2, r1
    1ef0:	61da      	str	r2, [r3, #28]
    1ef2:	4b14      	ldr	r3, [pc, #80]	; (1f44 <ClkConfig+0x134>)
    1ef4:	4a13      	ldr	r2, [pc, #76]	; (1f44 <ClkConfig+0x134>)
    1ef6:	69d2      	ldr	r2, [r2, #28]
    1ef8:	2180      	movs	r1, #128	; 0x80
    1efa:	430a      	orrs	r2, r1
    1efc:	61da      	str	r2, [r3, #28]
    1efe:	4b11      	ldr	r3, [pc, #68]	; (1f44 <ClkConfig+0x134>)
    1f00:	4a10      	ldr	r2, [pc, #64]	; (1f44 <ClkConfig+0x134>)
    1f02:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1f04:	2180      	movs	r1, #128	; 0x80
    1f06:	0489      	lsls	r1, r1, #18
    1f08:	430a      	orrs	r2, r1
    1f0a:	629a      	str	r2, [r3, #40]	; 0x28
    1f0c:	4b0d      	ldr	r3, [pc, #52]	; (1f44 <ClkConfig+0x134>)
    1f0e:	4a0d      	ldr	r2, [pc, #52]	; (1f44 <ClkConfig+0x134>)
    1f10:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1f12:	4911      	ldr	r1, [pc, #68]	; (1f58 <ClkConfig+0x148>)
    1f14:	400a      	ands	r2, r1
    1f16:	629a      	str	r2, [r3, #40]	; 0x28
    1f18:	4b0a      	ldr	r3, [pc, #40]	; (1f44 <ClkConfig+0x134>)
    1f1a:	4a0a      	ldr	r2, [pc, #40]	; (1f44 <ClkConfig+0x134>)
    1f1c:	69d2      	ldr	r2, [r2, #28]
    1f1e:	2140      	movs	r1, #64	; 0x40
    1f20:	430a      	orrs	r2, r1
    1f22:	61da      	str	r2, [r3, #28]
    1f24:	4b07      	ldr	r3, [pc, #28]	; (1f44 <ClkConfig+0x134>)
    1f26:	4a07      	ldr	r2, [pc, #28]	; (1f44 <ClkConfig+0x134>)
    1f28:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1f2a:	2180      	movs	r1, #128	; 0x80
    1f2c:	0449      	lsls	r1, r1, #17
    1f2e:	430a      	orrs	r2, r1
    1f30:	629a      	str	r2, [r3, #40]	; 0x28
    1f32:	4b04      	ldr	r3, [pc, #16]	; (1f44 <ClkConfig+0x134>)
    1f34:	4a03      	ldr	r2, [pc, #12]	; (1f44 <ClkConfig+0x134>)
    1f36:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1f38:	21ff      	movs	r1, #255	; 0xff
    1f3a:	438a      	bics	r2, r1
    1f3c:	629a      	str	r2, [r3, #40]	; 0x28
    1f3e:	46c0      	nop			; (mov r8, r8)
    1f40:	46bd      	mov	sp, r7
    1f42:	bd80      	pop	{r7, pc}
    1f44:	40020000 	.word	0x40020000
    1f48:	400d8000 	.word	0x400d8000
    1f4c:	000fffff 	.word	0x000fffff
    1f50:	00000b04 	.word	0x00000b04
    1f54:	40018000 	.word	0x40018000
    1f58:	ffff00ff 	.word	0xffff00ff
    1f5c:	03e4c000 	.word	0x03e4c000

00001f60 <TimerConfig>:
    1f60:	b580      	push	{r7, lr}
    1f62:	af00      	add	r7, sp, #0
    1f64:	4b19      	ldr	r3, [pc, #100]	; (1fcc <TimerConfig+0x6c>)
    1f66:	2200      	movs	r2, #0
    1f68:	601a      	str	r2, [r3, #0]
    1f6a:	4b18      	ldr	r3, [pc, #96]	; (1fcc <TimerConfig+0x6c>)
    1f6c:	225f      	movs	r2, #95	; 0x5f
    1f6e:	605a      	str	r2, [r3, #4]
    1f70:	4b16      	ldr	r3, [pc, #88]	; (1fcc <TimerConfig+0x6c>)
    1f72:	4a17      	ldr	r2, [pc, #92]	; (1fd0 <TimerConfig+0x70>)
    1f74:	609a      	str	r2, [r3, #8]
    1f76:	4b15      	ldr	r3, [pc, #84]	; (1fcc <TimerConfig+0x6c>)
    1f78:	4a14      	ldr	r2, [pc, #80]	; (1fcc <TimerConfig+0x6c>)
    1f7a:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1f7c:	2102      	movs	r1, #2
    1f7e:	430a      	orrs	r2, r1
    1f80:	659a      	str	r2, [r3, #88]	; 0x58
    1f82:	4b12      	ldr	r3, [pc, #72]	; (1fcc <TimerConfig+0x6c>)
    1f84:	4a11      	ldr	r2, [pc, #68]	; (1fcc <TimerConfig+0x6c>)
    1f86:	68d2      	ldr	r2, [r2, #12]
    1f88:	2101      	movs	r1, #1
    1f8a:	430a      	orrs	r2, r1
    1f8c:	60da      	str	r2, [r3, #12]
    1f8e:	200e      	movs	r0, #14
    1f90:	f7ff fde8 	bl	1b64 <__NVIC_EnableIRQ>
    1f94:	4b0f      	ldr	r3, [pc, #60]	; (1fd4 <TimerConfig+0x74>)
    1f96:	2200      	movs	r2, #0
    1f98:	601a      	str	r2, [r3, #0]
    1f9a:	4b0e      	ldr	r3, [pc, #56]	; (1fd4 <TimerConfig+0x74>)
    1f9c:	225f      	movs	r2, #95	; 0x5f
    1f9e:	605a      	str	r2, [r3, #4]
    1fa0:	4b0c      	ldr	r3, [pc, #48]	; (1fd4 <TimerConfig+0x74>)
    1fa2:	22ee      	movs	r2, #238	; 0xee
    1fa4:	0092      	lsls	r2, r2, #2
    1fa6:	609a      	str	r2, [r3, #8]
    1fa8:	4b0a      	ldr	r3, [pc, #40]	; (1fd4 <TimerConfig+0x74>)
    1faa:	4a0a      	ldr	r2, [pc, #40]	; (1fd4 <TimerConfig+0x74>)
    1fac:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1fae:	2102      	movs	r1, #2
    1fb0:	430a      	orrs	r2, r1
    1fb2:	659a      	str	r2, [r3, #88]	; 0x58
    1fb4:	4b07      	ldr	r3, [pc, #28]	; (1fd4 <TimerConfig+0x74>)
    1fb6:	4a07      	ldr	r2, [pc, #28]	; (1fd4 <TimerConfig+0x74>)
    1fb8:	68d2      	ldr	r2, [r2, #12]
    1fba:	2101      	movs	r1, #1
    1fbc:	430a      	orrs	r2, r1
    1fbe:	60da      	str	r2, [r3, #12]
    1fc0:	200f      	movs	r0, #15
    1fc2:	f7ff fdcf 	bl	1b64 <__NVIC_EnableIRQ>
    1fc6:	46c0      	nop			; (mov r8, r8)
    1fc8:	46bd      	mov	sp, r7
    1fca:	bd80      	pop	{r7, pc}
    1fcc:	40070000 	.word	0x40070000
    1fd0:	0001869f 	.word	0x0001869f
    1fd4:	40078000 	.word	0x40078000

00001fd8 <dac_init>:
    1fd8:	b580      	push	{r7, lr}
    1fda:	af00      	add	r7, sp, #0
    1fdc:	4b04      	ldr	r3, [pc, #16]	; (1ff0 <dac_init+0x18>)
    1fde:	4a04      	ldr	r2, [pc, #16]	; (1ff0 <dac_init+0x18>)
    1fe0:	6812      	ldr	r2, [r2, #0]
    1fe2:	210c      	movs	r1, #12
    1fe4:	430a      	orrs	r2, r1
    1fe6:	601a      	str	r2, [r3, #0]
    1fe8:	46c0      	nop			; (mov r8, r8)
    1fea:	46bd      	mov	sp, r7
    1fec:	bd80      	pop	{r7, pc}
    1fee:	46c0      	nop			; (mov r8, r8)
    1ff0:	40090000 	.word	0x40090000

00001ff4 <SystemInit>:
    1ff4:	b580      	push	{r7, lr}
    1ff6:	af00      	add	r7, sp, #0
    1ff8:	f7ff ff0a 	bl	1e10 <ClkConfig>
    1ffc:	f7ff fe56 	bl	1cac <PortConfig>
    2000:	f7ff ffae 	bl	1f60 <TimerConfig>
    2004:	f7ff ffe8 	bl	1fd8 <dac_init>
    2008:	2100      	movs	r1, #0
    200a:	2012      	movs	r0, #18
    200c:	f7ff fde0 	bl	1bd0 <__NVIC_SetPriority>
    2010:	2101      	movs	r1, #1
    2012:	200e      	movs	r0, #14
    2014:	f7ff fddc 	bl	1bd0 <__NVIC_SetPriority>
    2018:	2301      	movs	r3, #1
    201a:	425b      	negs	r3, r3
    201c:	2103      	movs	r1, #3
    201e:	0018      	movs	r0, r3
    2020:	f7ff fdd6 	bl	1bd0 <__NVIC_SetPriority>
    2024:	46c0      	nop			; (mov r8, r8)
    2026:	46bd      	mov	sp, r7
    2028:	bd80      	pop	{r7, pc}
    202a:	46c0      	nop			; (mov r8, r8)

0000202c <__NVIC_EnableIRQ>:
    202c:	b580      	push	{r7, lr}
    202e:	b082      	sub	sp, #8
    2030:	af00      	add	r7, sp, #0
    2032:	0002      	movs	r2, r0
    2034:	1dfb      	adds	r3, r7, #7
    2036:	701a      	strb	r2, [r3, #0]
    2038:	1dfb      	adds	r3, r7, #7
    203a:	781b      	ldrb	r3, [r3, #0]
    203c:	2b7f      	cmp	r3, #127	; 0x7f
    203e:	d809      	bhi.n	2054 <__NVIC_EnableIRQ+0x28>
    2040:	4b06      	ldr	r3, [pc, #24]	; (205c <__NVIC_EnableIRQ+0x30>)
    2042:	1dfa      	adds	r2, r7, #7
    2044:	7812      	ldrb	r2, [r2, #0]
    2046:	0011      	movs	r1, r2
    2048:	221f      	movs	r2, #31
    204a:	400a      	ands	r2, r1
    204c:	2101      	movs	r1, #1
    204e:	4091      	lsls	r1, r2
    2050:	000a      	movs	r2, r1
    2052:	601a      	str	r2, [r3, #0]
    2054:	46c0      	nop			; (mov r8, r8)
    2056:	46bd      	mov	sp, r7
    2058:	b002      	add	sp, #8
    205a:	bd80      	pop	{r7, pc}
    205c:	e000e100 	.word	0xe000e100

00002060 <RemoteMacInit>:
    2060:	b580      	push	{r7, lr}
    2062:	af00      	add	r7, sp, #0
    2064:	4b0a      	ldr	r3, [pc, #40]	; (2090 <RemoteMacInit+0x30>)
    2066:	2200      	movs	r2, #0
    2068:	801a      	strh	r2, [r3, #0]
    206a:	4b09      	ldr	r3, [pc, #36]	; (2090 <RemoteMacInit+0x30>)
    206c:	2200      	movs	r2, #0
    206e:	805a      	strh	r2, [r3, #2]
    2070:	4b07      	ldr	r3, [pc, #28]	; (2090 <RemoteMacInit+0x30>)
    2072:	2200      	movs	r2, #0
    2074:	809a      	strh	r2, [r3, #4]
    2076:	4b06      	ldr	r3, [pc, #24]	; (2090 <RemoteMacInit+0x30>)
    2078:	2200      	movs	r2, #0
    207a:	80da      	strh	r2, [r3, #6]
    207c:	4b04      	ldr	r3, [pc, #16]	; (2090 <RemoteMacInit+0x30>)
    207e:	2200      	movs	r2, #0
    2080:	811a      	strh	r2, [r3, #8]
    2082:	4b03      	ldr	r3, [pc, #12]	; (2090 <RemoteMacInit+0x30>)
    2084:	2200      	movs	r2, #0
    2086:	815a      	strh	r2, [r3, #10]
    2088:	46c0      	nop			; (mov r8, r8)
    208a:	46bd      	mov	sp, r7
    208c:	bd80      	pop	{r7, pc}
    208e:	46c0      	nop			; (mov r8, r8)
    2090:	20004d1c 	.word	0x20004d1c

00002094 <PHYInit>:
    2094:	b580      	push	{r7, lr}
    2096:	b084      	sub	sp, #16
    2098:	af00      	add	r7, sp, #0
    209a:	0002      	movs	r2, r0
    209c:	1dfb      	adds	r3, r7, #7
    209e:	701a      	strb	r2, [r3, #0]
    20a0:	1dbb      	adds	r3, r7, #6
    20a2:	1c0a      	adds	r2, r1, #0
    20a4:	701a      	strb	r2, [r3, #0]
    20a6:	23c0      	movs	r3, #192	; 0xc0
    20a8:	059b      	lsls	r3, r3, #22
    20aa:	8e9b      	ldrh	r3, [r3, #52]	; 0x34
    20ac:	b29b      	uxth	r3, r3
    20ae:	60fb      	str	r3, [r7, #12]
    20b0:	68fa      	ldr	r2, [r7, #12]
    20b2:	23ee      	movs	r3, #238	; 0xee
    20b4:	00db      	lsls	r3, r3, #3
    20b6:	4013      	ands	r3, r2
    20b8:	60fb      	str	r3, [r7, #12]
    20ba:	1dfb      	adds	r3, r7, #7
    20bc:	781b      	ldrb	r3, [r3, #0]
    20be:	02da      	lsls	r2, r3, #11
    20c0:	1dbb      	adds	r3, r7, #6
    20c2:	781b      	ldrb	r3, [r3, #0]
    20c4:	005b      	lsls	r3, r3, #1
    20c6:	4313      	orrs	r3, r2
    20c8:	001a      	movs	r2, r3
    20ca:	68fb      	ldr	r3, [r7, #12]
    20cc:	4313      	orrs	r3, r2
    20ce:	2201      	movs	r2, #1
    20d0:	4313      	orrs	r3, r2
    20d2:	60fb      	str	r3, [r7, #12]
    20d4:	23c0      	movs	r3, #192	; 0xc0
    20d6:	059b      	lsls	r3, r3, #22
    20d8:	68fa      	ldr	r2, [r7, #12]
    20da:	b292      	uxth	r2, r2
    20dc:	869a      	strh	r2, [r3, #52]	; 0x34
    20de:	46c0      	nop			; (mov r8, r8)
    20e0:	23c0      	movs	r3, #192	; 0xc0
    20e2:	059b      	lsls	r3, r3, #22
    20e4:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    20e6:	b29b      	uxth	r3, r3
    20e8:	001a      	movs	r2, r3
    20ea:	2310      	movs	r3, #16
    20ec:	4013      	ands	r3, r2
    20ee:	d0f7      	beq.n	20e0 <PHYInit+0x4c>
    20f0:	46c0      	nop			; (mov r8, r8)
    20f2:	46bd      	mov	sp, r7
    20f4:	b004      	add	sp, #16
    20f6:	bd80      	pop	{r7, pc}

000020f8 <SetPHYReg>:
    20f8:	b590      	push	{r4, r7, lr}
    20fa:	b085      	sub	sp, #20
    20fc:	af00      	add	r7, sp, #0
    20fe:	0004      	movs	r4, r0
    2100:	0008      	movs	r0, r1
    2102:	0011      	movs	r1, r2
    2104:	1dfb      	adds	r3, r7, #7
    2106:	1c22      	adds	r2, r4, #0
    2108:	701a      	strb	r2, [r3, #0]
    210a:	1dbb      	adds	r3, r7, #6
    210c:	1c02      	adds	r2, r0, #0
    210e:	701a      	strb	r2, [r3, #0]
    2110:	1d3b      	adds	r3, r7, #4
    2112:	1c0a      	adds	r2, r1, #0
    2114:	801a      	strh	r2, [r3, #0]
    2116:	23c0      	movs	r3, #192	; 0xc0
    2118:	059b      	lsls	r3, r3, #22
    211a:	1d3a      	adds	r2, r7, #4
    211c:	8812      	ldrh	r2, [r2, #0]
    211e:	84da      	strh	r2, [r3, #38]	; 0x26
    2120:	1dfb      	adds	r3, r7, #7
    2122:	781b      	ldrb	r3, [r3, #0]
    2124:	021a      	lsls	r2, r3, #8
    2126:	23f8      	movs	r3, #248	; 0xf8
    2128:	015b      	lsls	r3, r3, #5
    212a:	4013      	ands	r3, r2
    212c:	22c0      	movs	r2, #192	; 0xc0
    212e:	0212      	lsls	r2, r2, #8
    2130:	431a      	orrs	r2, r3
    2132:	1dbb      	adds	r3, r7, #6
    2134:	781b      	ldrb	r3, [r3, #0]
    2136:	211f      	movs	r1, #31
    2138:	400b      	ands	r3, r1
    213a:	4313      	orrs	r3, r2
    213c:	2220      	movs	r2, #32
    213e:	4313      	orrs	r3, r2
    2140:	60fb      	str	r3, [r7, #12]
    2142:	23c0      	movs	r3, #192	; 0xc0
    2144:	059b      	lsls	r3, r3, #22
    2146:	68fa      	ldr	r2, [r7, #12]
    2148:	b292      	uxth	r2, r2
    214a:	849a      	strh	r2, [r3, #36]	; 0x24
    214c:	46c0      	nop			; (mov r8, r8)
    214e:	23c0      	movs	r3, #192	; 0xc0
    2150:	059b      	lsls	r3, r3, #22
    2152:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2154:	b29b      	uxth	r3, r3
    2156:	b21b      	sxth	r3, r3
    2158:	2b00      	cmp	r3, #0
    215a:	daf8      	bge.n	214e <SetPHYReg+0x56>
    215c:	46c0      	nop			; (mov r8, r8)
    215e:	46bd      	mov	sp, r7
    2160:	b005      	add	sp, #20
    2162:	bd90      	pop	{r4, r7, pc}

00002164 <GetPHYReg>:
    2164:	b580      	push	{r7, lr}
    2166:	b084      	sub	sp, #16
    2168:	af00      	add	r7, sp, #0
    216a:	0002      	movs	r2, r0
    216c:	1dfb      	adds	r3, r7, #7
    216e:	701a      	strb	r2, [r3, #0]
    2170:	1dbb      	adds	r3, r7, #6
    2172:	1c0a      	adds	r2, r1, #0
    2174:	701a      	strb	r2, [r3, #0]
    2176:	1dfb      	adds	r3, r7, #7
    2178:	781b      	ldrb	r3, [r3, #0]
    217a:	021a      	lsls	r2, r3, #8
    217c:	23f8      	movs	r3, #248	; 0xf8
    217e:	015b      	lsls	r3, r3, #5
    2180:	4013      	ands	r3, r2
    2182:	4a0e      	ldr	r2, [pc, #56]	; (21bc <GetPHYReg+0x58>)
    2184:	431a      	orrs	r2, r3
    2186:	1dbb      	adds	r3, r7, #6
    2188:	781b      	ldrb	r3, [r3, #0]
    218a:	211f      	movs	r1, #31
    218c:	400b      	ands	r3, r1
    218e:	4313      	orrs	r3, r2
    2190:	60fb      	str	r3, [r7, #12]
    2192:	23c0      	movs	r3, #192	; 0xc0
    2194:	059b      	lsls	r3, r3, #22
    2196:	68fa      	ldr	r2, [r7, #12]
    2198:	b292      	uxth	r2, r2
    219a:	849a      	strh	r2, [r3, #36]	; 0x24
    219c:	46c0      	nop			; (mov r8, r8)
    219e:	23c0      	movs	r3, #192	; 0xc0
    21a0:	059b      	lsls	r3, r3, #22
    21a2:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    21a4:	b29b      	uxth	r3, r3
    21a6:	b21b      	sxth	r3, r3
    21a8:	2b00      	cmp	r3, #0
    21aa:	daf8      	bge.n	219e <GetPHYReg+0x3a>
    21ac:	23c0      	movs	r3, #192	; 0xc0
    21ae:	059b      	lsls	r3, r3, #22
    21b0:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    21b2:	b29b      	uxth	r3, r3
    21b4:	0018      	movs	r0, r3
    21b6:	46bd      	mov	sp, r7
    21b8:	b004      	add	sp, #16
    21ba:	bd80      	pop	{r7, pc}
    21bc:	0000e020 	.word	0x0000e020

000021c0 <EthernetConfig>:
    21c0:	b580      	push	{r7, lr}
    21c2:	b084      	sub	sp, #16
    21c4:	af00      	add	r7, sp, #0
    21c6:	6078      	str	r0, [r7, #4]
    21c8:	2103      	movs	r1, #3
    21ca:	201c      	movs	r0, #28
    21cc:	f7ff ff62 	bl	2094 <PHYInit>
    21d0:	687b      	ldr	r3, [r7, #4]
    21d2:	2b00      	cmp	r3, #0
    21d4:	d00b      	beq.n	21ee <EthernetConfig+0x2e>
    21d6:	687b      	ldr	r3, [r7, #4]
    21d8:	889a      	ldrh	r2, [r3, #4]
    21da:	4b18      	ldr	r3, [pc, #96]	; (223c <EthernetConfig+0x7c>)
    21dc:	801a      	strh	r2, [r3, #0]
    21de:	687b      	ldr	r3, [r7, #4]
    21e0:	88da      	ldrh	r2, [r3, #6]
    21e2:	4b16      	ldr	r3, [pc, #88]	; (223c <EthernetConfig+0x7c>)
    21e4:	805a      	strh	r2, [r3, #2]
    21e6:	687b      	ldr	r3, [r7, #4]
    21e8:	891a      	ldrh	r2, [r3, #8]
    21ea:	4b14      	ldr	r3, [pc, #80]	; (223c <EthernetConfig+0x7c>)
    21ec:	809a      	strh	r2, [r3, #4]
    21ee:	23c0      	movs	r3, #192	; 0xc0
    21f0:	059b      	lsls	r3, r3, #22
    21f2:	4a12      	ldr	r2, [pc, #72]	; (223c <EthernetConfig+0x7c>)
    21f4:	8812      	ldrh	r2, [r2, #0]
    21f6:	805a      	strh	r2, [r3, #2]
    21f8:	23c0      	movs	r3, #192	; 0xc0
    21fa:	059b      	lsls	r3, r3, #22
    21fc:	4a0f      	ldr	r2, [pc, #60]	; (223c <EthernetConfig+0x7c>)
    21fe:	8852      	ldrh	r2, [r2, #2]
    2200:	809a      	strh	r2, [r3, #4]
    2202:	23c0      	movs	r3, #192	; 0xc0
    2204:	059b      	lsls	r3, r3, #22
    2206:	4a0d      	ldr	r2, [pc, #52]	; (223c <EthernetConfig+0x7c>)
    2208:	8892      	ldrh	r2, [r2, #4]
    220a:	80da      	strh	r2, [r3, #6]
    220c:	f000 f81e 	bl	224c <MACReset>
    2210:	23c0      	movs	r3, #192	; 0xc0
    2212:	059b      	lsls	r3, r3, #22
    2214:	2207      	movs	r2, #7
    2216:	841a      	strh	r2, [r3, #32]
    2218:	2012      	movs	r0, #18
    221a:	f7ff ff07 	bl	202c <__NVIC_EnableIRQ>
    221e:	4b08      	ldr	r3, [pc, #32]	; (2240 <EthernetConfig+0x80>)
    2220:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    2222:	60fb      	str	r3, [r7, #12]
    2224:	68fb      	ldr	r3, [r7, #12]
    2226:	b29a      	uxth	r2, r3
    2228:	4b06      	ldr	r3, [pc, #24]	; (2244 <EthernetConfig+0x84>)
    222a:	801a      	strh	r2, [r3, #0]
    222c:	68fb      	ldr	r3, [r7, #12]
    222e:	b29a      	uxth	r2, r3
    2230:	4b05      	ldr	r3, [pc, #20]	; (2248 <EthernetConfig+0x88>)
    2232:	801a      	strh	r2, [r3, #0]
    2234:	46c0      	nop			; (mov r8, r8)
    2236:	46bd      	mov	sp, r7
    2238:	b004      	add	sp, #16
    223a:	bd80      	pop	{r7, pc}
    223c:	20000008 	.word	0x20000008
    2240:	400d8000 	.word	0x400d8000
    2244:	20004d30 	.word	0x20004d30
    2248:	20004d32 	.word	0x20004d32

0000224c <MACReset>:
    224c:	b580      	push	{r7, lr}
    224e:	af00      	add	r7, sp, #0
    2250:	23c0      	movs	r3, #192	; 0xc0
    2252:	059b      	lsls	r3, r3, #22
    2254:	22c0      	movs	r2, #192	; 0xc0
    2256:	0592      	lsls	r2, r2, #22
    2258:	8bd2      	ldrh	r2, [r2, #30]
    225a:	b292      	uxth	r2, r2
    225c:	2103      	movs	r1, #3
    225e:	430a      	orrs	r2, r1
    2260:	b292      	uxth	r2, r2
    2262:	83da      	strh	r2, [r3, #30]
    2264:	f000 f86a 	bl	233c <ClearMemory>
    2268:	23c0      	movs	r3, #192	; 0xc0
    226a:	059b      	lsls	r3, r3, #22
    226c:	2280      	movs	r2, #128	; 0x80
    226e:	0152      	lsls	r2, r2, #5
    2270:	801a      	strh	r2, [r3, #0]
    2272:	23c0      	movs	r3, #192	; 0xc0
    2274:	059b      	lsls	r3, r3, #22
    2276:	2200      	movs	r2, #0
    2278:	811a      	strh	r2, [r3, #8]
    227a:	23c0      	movs	r3, #192	; 0xc0
    227c:	059b      	lsls	r3, r3, #22
    227e:	2200      	movs	r2, #0
    2280:	815a      	strh	r2, [r3, #10]
    2282:	23c0      	movs	r3, #192	; 0xc0
    2284:	059b      	lsls	r3, r3, #22
    2286:	2200      	movs	r2, #0
    2288:	819a      	strh	r2, [r3, #12]
    228a:	23c0      	movs	r3, #192	; 0xc0
    228c:	059b      	lsls	r3, r3, #22
    228e:	4a26      	ldr	r2, [pc, #152]	; (2328 <MACReset+0xdc>)
    2290:	81da      	strh	r2, [r3, #14]
    2292:	23c0      	movs	r3, #192	; 0xc0
    2294:	059b      	lsls	r3, r3, #22
    2296:	2260      	movs	r2, #96	; 0x60
    2298:	821a      	strh	r2, [r3, #16]
    229a:	23c0      	movs	r3, #192	; 0xc0
    229c:	059b      	lsls	r3, r3, #22
    229e:	2250      	movs	r2, #80	; 0x50
    22a0:	825a      	strh	r2, [r3, #18]
    22a2:	23c0      	movs	r3, #192	; 0xc0
    22a4:	059b      	lsls	r3, r3, #22
    22a6:	2280      	movs	r2, #128	; 0x80
    22a8:	0092      	lsls	r2, r2, #2
    22aa:	829a      	strh	r2, [r3, #20]
    22ac:	23c0      	movs	r3, #192	; 0xc0
    22ae:	059b      	lsls	r3, r3, #22
    22b0:	2205      	movs	r2, #5
    22b2:	82da      	strh	r2, [r3, #22]
    22b4:	23c0      	movs	r3, #192	; 0xc0
    22b6:	059b      	lsls	r3, r3, #22
    22b8:	4a1c      	ldr	r2, [pc, #112]	; (232c <MACReset+0xe0>)
    22ba:	831a      	strh	r2, [r3, #24]
    22bc:	23c0      	movs	r3, #192	; 0xc0
    22be:	059b      	lsls	r3, r3, #22
    22c0:	4a1b      	ldr	r2, [pc, #108]	; (2330 <MACReset+0xe4>)
    22c2:	835a      	strh	r2, [r3, #26]
    22c4:	23c0      	movs	r3, #192	; 0xc0
    22c6:	059b      	lsls	r3, r3, #22
    22c8:	2280      	movs	r2, #128	; 0x80
    22ca:	839a      	strh	r2, [r3, #28]
    22cc:	23c0      	movs	r3, #192	; 0xc0
    22ce:	059b      	lsls	r3, r3, #22
    22d0:	4a18      	ldr	r2, [pc, #96]	; (2334 <MACReset+0xe8>)
    22d2:	83da      	strh	r2, [r3, #30]
    22d4:	23c0      	movs	r3, #192	; 0xc0
    22d6:	059b      	lsls	r3, r3, #22
    22d8:	2200      	movs	r2, #0
    22da:	841a      	strh	r2, [r3, #32]
    22dc:	23c0      	movs	r3, #192	; 0xc0
    22de:	059b      	lsls	r3, r3, #22
    22e0:	2201      	movs	r2, #1
    22e2:	4252      	negs	r2, r2
    22e4:	845a      	strh	r2, [r3, #34]	; 0x22
    22e6:	23c0      	movs	r3, #192	; 0xc0
    22e8:	059b      	lsls	r3, r3, #22
    22ea:	2200      	movs	r2, #0
    22ec:	851a      	strh	r2, [r3, #40]	; 0x28
    22ee:	23c0      	movs	r3, #192	; 0xc0
    22f0:	059b      	lsls	r3, r3, #22
    22f2:	2280      	movs	r2, #128	; 0x80
    22f4:	0152      	lsls	r2, r2, #5
    22f6:	855a      	strh	r2, [r3, #42]	; 0x2a
    22f8:	23c0      	movs	r3, #192	; 0xc0
    22fa:	059b      	lsls	r3, r3, #22
    22fc:	22c0      	movs	r2, #192	; 0xc0
    22fe:	0592      	lsls	r2, r2, #22
    2300:	8b92      	ldrh	r2, [r2, #28]
    2302:	b292      	uxth	r2, r2
    2304:	490c      	ldr	r1, [pc, #48]	; (2338 <MACReset+0xec>)
    2306:	400a      	ands	r2, r1
    2308:	b292      	uxth	r2, r2
    230a:	839a      	strh	r2, [r3, #28]
    230c:	23c0      	movs	r3, #192	; 0xc0
    230e:	059b      	lsls	r3, r3, #22
    2310:	22c0      	movs	r2, #192	; 0xc0
    2312:	0592      	lsls	r2, r2, #22
    2314:	8bd2      	ldrh	r2, [r2, #30]
    2316:	b292      	uxth	r2, r2
    2318:	2103      	movs	r1, #3
    231a:	438a      	bics	r2, r1
    231c:	b292      	uxth	r2, r2
    231e:	83da      	strh	r2, [r3, #30]
    2320:	46c0      	nop			; (mov r8, r8)
    2322:	46bd      	mov	sp, r7
    2324:	bd80      	pop	{r7, pc}
    2326:	46c0      	nop			; (mov r8, r8)
    2328:	ffff8000 	.word	0xffff8000
    232c:	ffff8606 	.word	0xffff8606
    2330:	ffff81fa 	.word	0xffff81fa
    2334:	00003003 	.word	0x00003003
    2338:	ffffbfff 	.word	0xffffbfff

0000233c <ClearMemory>:
    233c:	b580      	push	{r7, lr}
    233e:	b082      	sub	sp, #8
    2340:	af00      	add	r7, sp, #0
    2342:	23e0      	movs	r3, #224	; 0xe0
    2344:	059b      	lsls	r3, r3, #22
    2346:	603b      	str	r3, [r7, #0]
    2348:	2300      	movs	r3, #0
    234a:	607b      	str	r3, [r7, #4]
    234c:	e007      	b.n	235e <ClearMemory+0x22>
    234e:	683b      	ldr	r3, [r7, #0]
    2350:	1d1a      	adds	r2, r3, #4
    2352:	603a      	str	r2, [r7, #0]
    2354:	2200      	movs	r2, #0
    2356:	601a      	str	r2, [r3, #0]
    2358:	687b      	ldr	r3, [r7, #4]
    235a:	3301      	adds	r3, #1
    235c:	607b      	str	r3, [r7, #4]
    235e:	687b      	ldr	r3, [r7, #4]
    2360:	4a03      	ldr	r2, [pc, #12]	; (2370 <ClearMemory+0x34>)
    2362:	4293      	cmp	r3, r2
    2364:	d9f3      	bls.n	234e <ClearMemory+0x12>
    2366:	46c0      	nop			; (mov r8, r8)
    2368:	46bd      	mov	sp, r7
    236a:	b002      	add	sp, #8
    236c:	bd80      	pop	{r7, pc}
    236e:	46c0      	nop			; (mov r8, r8)
    2370:	000007ff 	.word	0x000007ff

00002374 <ReadPacket>:
    2374:	b580      	push	{r7, lr}
    2376:	b08a      	sub	sp, #40	; 0x28
    2378:	af00      	add	r7, sp, #0
    237a:	6078      	str	r0, [r7, #4]
    237c:	2316      	movs	r3, #22
    237e:	18fb      	adds	r3, r7, r3
    2380:	2200      	movs	r2, #0
    2382:	801a      	strh	r2, [r3, #0]
    2384:	2326      	movs	r3, #38	; 0x26
    2386:	18fb      	adds	r3, r7, r3
    2388:	2200      	movs	r2, #0
    238a:	801a      	strh	r2, [r3, #0]
    238c:	4b71      	ldr	r3, [pc, #452]	; (2554 <ReadPacket+0x1e0>)
    238e:	681a      	ldr	r2, [r3, #0]
    2390:	2301      	movs	r3, #1
    2392:	425b      	negs	r3, r3
    2394:	0019      	movs	r1, r3
    2396:	0010      	movs	r0, r2
    2398:	f004 fb62 	bl	6a60 <osMutexWait>
    239c:	23c0      	movs	r3, #192	; 0xc0
    239e:	059a      	lsls	r2, r3, #22
    23a0:	2314      	movs	r3, #20
    23a2:	18fb      	adds	r3, r7, r3
    23a4:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    23a6:	801a      	strh	r2, [r3, #0]
    23a8:	23c0      	movs	r3, #192	; 0xc0
    23aa:	059a      	lsls	r2, r3, #22
    23ac:	2312      	movs	r3, #18
    23ae:	18fb      	adds	r3, r7, r3
    23b0:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    23b2:	801a      	strh	r2, [r3, #0]
    23b4:	2314      	movs	r3, #20
    23b6:	18fa      	adds	r2, r7, r3
    23b8:	2312      	movs	r3, #18
    23ba:	18fb      	adds	r3, r7, r3
    23bc:	8812      	ldrh	r2, [r2, #0]
    23be:	881b      	ldrh	r3, [r3, #0]
    23c0:	429a      	cmp	r2, r3
    23c2:	d90e      	bls.n	23e2 <ReadPacket+0x6e>
    23c4:	2326      	movs	r3, #38	; 0x26
    23c6:	18fb      	adds	r3, r7, r3
    23c8:	2214      	movs	r2, #20
    23ca:	18b9      	adds	r1, r7, r2
    23cc:	2212      	movs	r2, #18
    23ce:	18ba      	adds	r2, r7, r2
    23d0:	8809      	ldrh	r1, [r1, #0]
    23d2:	8812      	ldrh	r2, [r2, #0]
    23d4:	1a8a      	subs	r2, r1, r2
    23d6:	801a      	strh	r2, [r3, #0]
    23d8:	2316      	movs	r3, #22
    23da:	18fb      	adds	r3, r7, r3
    23dc:	2200      	movs	r2, #0
    23de:	801a      	strh	r2, [r3, #0]
    23e0:	e00e      	b.n	2400 <ReadPacket+0x8c>
    23e2:	2326      	movs	r3, #38	; 0x26
    23e4:	18fb      	adds	r3, r7, r3
    23e6:	2212      	movs	r2, #18
    23e8:	18ba      	adds	r2, r7, r2
    23ea:	8812      	ldrh	r2, [r2, #0]
    23ec:	2180      	movs	r1, #128	; 0x80
    23ee:	0149      	lsls	r1, r1, #5
    23f0:	1a8a      	subs	r2, r1, r2
    23f2:	801a      	strh	r2, [r3, #0]
    23f4:	2316      	movs	r3, #22
    23f6:	18fb      	adds	r3, r7, r3
    23f8:	2214      	movs	r2, #20
    23fa:	18ba      	adds	r2, r7, r2
    23fc:	8812      	ldrh	r2, [r2, #0]
    23fe:	801a      	strh	r2, [r3, #0]
    2400:	2312      	movs	r3, #18
    2402:	18fb      	adds	r3, r7, r3
    2404:	881b      	ldrh	r3, [r3, #0]
    2406:	22e0      	movs	r2, #224	; 0xe0
    2408:	0592      	lsls	r2, r2, #22
    240a:	4694      	mov	ip, r2
    240c:	4463      	add	r3, ip
    240e:	623b      	str	r3, [r7, #32]
    2410:	687b      	ldr	r3, [r7, #4]
    2412:	61fb      	str	r3, [r7, #28]
    2414:	2308      	movs	r3, #8
    2416:	18fa      	adds	r2, r7, r3
    2418:	6a3b      	ldr	r3, [r7, #32]
    241a:	1d19      	adds	r1, r3, #4
    241c:	6239      	str	r1, [r7, #32]
    241e:	681b      	ldr	r3, [r3, #0]
    2420:	6013      	str	r3, [r2, #0]
    2422:	2308      	movs	r3, #8
    2424:	18fb      	adds	r3, r7, r3
    2426:	881b      	ldrh	r3, [r3, #0]
    2428:	3303      	adds	r3, #3
    242a:	2b00      	cmp	r3, #0
    242c:	da00      	bge.n	2430 <ReadPacket+0xbc>
    242e:	3303      	adds	r3, #3
    2430:	109b      	asrs	r3, r3, #2
    2432:	60fb      	str	r3, [r7, #12]
    2434:	2326      	movs	r3, #38	; 0x26
    2436:	18fb      	adds	r3, r7, r3
    2438:	2226      	movs	r2, #38	; 0x26
    243a:	18ba      	adds	r2, r7, r2
    243c:	8812      	ldrh	r2, [r2, #0]
    243e:	3a04      	subs	r2, #4
    2440:	801a      	strh	r2, [r3, #0]
    2442:	6a3b      	ldr	r3, [r7, #32]
    2444:	b29b      	uxth	r3, r3
    2446:	4a44      	ldr	r2, [pc, #272]	; (2558 <ReadPacket+0x1e4>)
    2448:	4293      	cmp	r3, r2
    244a:	d902      	bls.n	2452 <ReadPacket+0xde>
    244c:	23e0      	movs	r3, #224	; 0xe0
    244e:	059b      	lsls	r3, r3, #22
    2450:	623b      	str	r3, [r7, #32]
    2452:	2308      	movs	r3, #8
    2454:	18fb      	adds	r3, r7, r3
    2456:	881b      	ldrh	r3, [r3, #0]
    2458:	2226      	movs	r2, #38	; 0x26
    245a:	18ba      	adds	r2, r7, r2
    245c:	8812      	ldrh	r2, [r2, #0]
    245e:	429a      	cmp	r2, r3
    2460:	d312      	bcc.n	2488 <ReadPacket+0x114>
    2462:	2300      	movs	r3, #0
    2464:	61bb      	str	r3, [r7, #24]
    2466:	e00a      	b.n	247e <ReadPacket+0x10a>
    2468:	69fb      	ldr	r3, [r7, #28]
    246a:	1d1a      	adds	r2, r3, #4
    246c:	61fa      	str	r2, [r7, #28]
    246e:	6a3a      	ldr	r2, [r7, #32]
    2470:	1d11      	adds	r1, r2, #4
    2472:	6239      	str	r1, [r7, #32]
    2474:	6812      	ldr	r2, [r2, #0]
    2476:	601a      	str	r2, [r3, #0]
    2478:	69bb      	ldr	r3, [r7, #24]
    247a:	3301      	adds	r3, #1
    247c:	61bb      	str	r3, [r7, #24]
    247e:	69ba      	ldr	r2, [r7, #24]
    2480:	68fb      	ldr	r3, [r7, #12]
    2482:	429a      	cmp	r2, r3
    2484:	d3f0      	bcc.n	2468 <ReadPacket+0xf4>
    2486:	e034      	b.n	24f2 <ReadPacket+0x17e>
    2488:	2326      	movs	r3, #38	; 0x26
    248a:	18fb      	adds	r3, r7, r3
    248c:	881b      	ldrh	r3, [r3, #0]
    248e:	089b      	lsrs	r3, r3, #2
    2490:	b29b      	uxth	r3, r3
    2492:	001a      	movs	r2, r3
    2494:	68fb      	ldr	r3, [r7, #12]
    2496:	1a9b      	subs	r3, r3, r2
    2498:	60fb      	str	r3, [r7, #12]
    249a:	2300      	movs	r3, #0
    249c:	61bb      	str	r3, [r7, #24]
    249e:	e00a      	b.n	24b6 <ReadPacket+0x142>
    24a0:	69fb      	ldr	r3, [r7, #28]
    24a2:	1d1a      	adds	r2, r3, #4
    24a4:	61fa      	str	r2, [r7, #28]
    24a6:	6a3a      	ldr	r2, [r7, #32]
    24a8:	1d11      	adds	r1, r2, #4
    24aa:	6239      	str	r1, [r7, #32]
    24ac:	6812      	ldr	r2, [r2, #0]
    24ae:	601a      	str	r2, [r3, #0]
    24b0:	69bb      	ldr	r3, [r7, #24]
    24b2:	3301      	adds	r3, #1
    24b4:	61bb      	str	r3, [r7, #24]
    24b6:	2326      	movs	r3, #38	; 0x26
    24b8:	18fb      	adds	r3, r7, r3
    24ba:	881b      	ldrh	r3, [r3, #0]
    24bc:	089b      	lsrs	r3, r3, #2
    24be:	b29b      	uxth	r3, r3
    24c0:	001a      	movs	r2, r3
    24c2:	69bb      	ldr	r3, [r7, #24]
    24c4:	429a      	cmp	r2, r3
    24c6:	d8eb      	bhi.n	24a0 <ReadPacket+0x12c>
    24c8:	23e0      	movs	r3, #224	; 0xe0
    24ca:	059b      	lsls	r3, r3, #22
    24cc:	623b      	str	r3, [r7, #32]
    24ce:	2300      	movs	r3, #0
    24d0:	61bb      	str	r3, [r7, #24]
    24d2:	e00a      	b.n	24ea <ReadPacket+0x176>
    24d4:	69fb      	ldr	r3, [r7, #28]
    24d6:	1d1a      	adds	r2, r3, #4
    24d8:	61fa      	str	r2, [r7, #28]
    24da:	6a3a      	ldr	r2, [r7, #32]
    24dc:	1d11      	adds	r1, r2, #4
    24de:	6239      	str	r1, [r7, #32]
    24e0:	6812      	ldr	r2, [r2, #0]
    24e2:	601a      	str	r2, [r3, #0]
    24e4:	69bb      	ldr	r3, [r7, #24]
    24e6:	3301      	adds	r3, #1
    24e8:	61bb      	str	r3, [r7, #24]
    24ea:	69ba      	ldr	r2, [r7, #24]
    24ec:	68fb      	ldr	r3, [r7, #12]
    24ee:	429a      	cmp	r2, r3
    24f0:	d3f0      	bcc.n	24d4 <ReadPacket+0x160>
    24f2:	6a3b      	ldr	r3, [r7, #32]
    24f4:	b29b      	uxth	r3, r3
    24f6:	4a18      	ldr	r2, [pc, #96]	; (2558 <ReadPacket+0x1e4>)
    24f8:	4293      	cmp	r3, r2
    24fa:	d902      	bls.n	2502 <ReadPacket+0x18e>
    24fc:	23e0      	movs	r3, #224	; 0xe0
    24fe:	059b      	lsls	r3, r3, #22
    2500:	623b      	str	r3, [r7, #32]
    2502:	23c0      	movs	r3, #192	; 0xc0
    2504:	059b      	lsls	r3, r3, #22
    2506:	6a3a      	ldr	r2, [r7, #32]
    2508:	b292      	uxth	r2, r2
    250a:	851a      	strh	r2, [r3, #40]	; 0x28
    250c:	23c0      	movs	r3, #192	; 0xc0
    250e:	059b      	lsls	r3, r3, #22
    2510:	22c0      	movs	r2, #192	; 0xc0
    2512:	0592      	lsls	r2, r2, #22
    2514:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    2516:	b292      	uxth	r2, r2
    2518:	3a20      	subs	r2, #32
    251a:	b292      	uxth	r2, r2
    251c:	861a      	strh	r2, [r3, #48]	; 0x30
    251e:	687b      	ldr	r3, [r7, #4]
    2520:	88da      	ldrh	r2, [r3, #6]
    2522:	4b0e      	ldr	r3, [pc, #56]	; (255c <ReadPacket+0x1e8>)
    2524:	801a      	strh	r2, [r3, #0]
    2526:	687b      	ldr	r3, [r7, #4]
    2528:	891a      	ldrh	r2, [r3, #8]
    252a:	4b0c      	ldr	r3, [pc, #48]	; (255c <ReadPacket+0x1e8>)
    252c:	805a      	strh	r2, [r3, #2]
    252e:	687b      	ldr	r3, [r7, #4]
    2530:	895a      	ldrh	r2, [r3, #10]
    2532:	4b0a      	ldr	r3, [pc, #40]	; (255c <ReadPacket+0x1e8>)
    2534:	809a      	strh	r2, [r3, #4]
    2536:	4b09      	ldr	r3, [pc, #36]	; (255c <ReadPacket+0x1e8>)
    2538:	2201      	movs	r2, #1
    253a:	815a      	strh	r2, [r3, #10]
    253c:	4b05      	ldr	r3, [pc, #20]	; (2554 <ReadPacket+0x1e0>)
    253e:	681b      	ldr	r3, [r3, #0]
    2540:	0018      	movs	r0, r3
    2542:	f004 fa9d 	bl	6a80 <osMutexRelease>
    2546:	2308      	movs	r3, #8
    2548:	18fb      	adds	r3, r7, r3
    254a:	881b      	ldrh	r3, [r3, #0]
    254c:	0018      	movs	r0, r3
    254e:	46bd      	mov	sp, r7
    2550:	b00a      	add	sp, #40	; 0x28
    2552:	bd80      	pop	{r7, pc}
    2554:	2000532c 	.word	0x2000532c
    2558:	00000fff 	.word	0x00000fff
    255c:	20004d1c 	.word	0x20004d1c

00002560 <SendPacket>:
    2560:	b580      	push	{r7, lr}
    2562:	b08a      	sub	sp, #40	; 0x28
    2564:	af00      	add	r7, sp, #0
    2566:	6078      	str	r0, [r7, #4]
    2568:	6039      	str	r1, [r7, #0]
    256a:	4b79      	ldr	r3, [pc, #484]	; (2750 <SendPacket+0x1f0>)
    256c:	681a      	ldr	r2, [r3, #0]
    256e:	2301      	movs	r3, #1
    2570:	425b      	negs	r3, r3
    2572:	0019      	movs	r1, r3
    2574:	0010      	movs	r0, r2
    2576:	f004 fa73 	bl	6a60 <osMutexWait>
    257a:	23c0      	movs	r3, #192	; 0xc0
    257c:	059b      	lsls	r3, r3, #22
    257e:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    2580:	b29b      	uxth	r3, r3
    2582:	61bb      	str	r3, [r7, #24]
    2584:	23c0      	movs	r3, #192	; 0xc0
    2586:	059b      	lsls	r3, r3, #22
    2588:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    258a:	b29b      	uxth	r3, r3
    258c:	617b      	str	r3, [r7, #20]
    258e:	69ba      	ldr	r2, [r7, #24]
    2590:	697b      	ldr	r3, [r7, #20]
    2592:	429a      	cmp	r2, r3
    2594:	d90d      	bls.n	25b2 <SendPacket+0x52>
    2596:	69bb      	ldr	r3, [r7, #24]
    2598:	b29a      	uxth	r2, r3
    259a:	697b      	ldr	r3, [r7, #20]
    259c:	b29b      	uxth	r3, r3
    259e:	1ad3      	subs	r3, r2, r3
    25a0:	b29a      	uxth	r2, r3
    25a2:	230c      	movs	r3, #12
    25a4:	18fb      	adds	r3, r7, r3
    25a6:	801a      	strh	r2, [r3, #0]
    25a8:	230c      	movs	r3, #12
    25aa:	18fb      	adds	r3, r7, r3
    25ac:	2200      	movs	r2, #0
    25ae:	805a      	strh	r2, [r3, #2]
    25b0:	e011      	b.n	25d6 <SendPacket+0x76>
    25b2:	697b      	ldr	r3, [r7, #20]
    25b4:	b29b      	uxth	r3, r3
    25b6:	2280      	movs	r2, #128	; 0x80
    25b8:	0192      	lsls	r2, r2, #6
    25ba:	1ad3      	subs	r3, r2, r3
    25bc:	b29a      	uxth	r2, r3
    25be:	230c      	movs	r3, #12
    25c0:	18fb      	adds	r3, r7, r3
    25c2:	801a      	strh	r2, [r3, #0]
    25c4:	69bb      	ldr	r3, [r7, #24]
    25c6:	b29b      	uxth	r3, r3
    25c8:	4a62      	ldr	r2, [pc, #392]	; (2754 <SendPacket+0x1f4>)
    25ca:	4694      	mov	ip, r2
    25cc:	4463      	add	r3, ip
    25ce:	b29a      	uxth	r2, r3
    25d0:	230c      	movs	r3, #12
    25d2:	18fb      	adds	r3, r7, r3
    25d4:	805a      	strh	r2, [r3, #2]
    25d6:	230c      	movs	r3, #12
    25d8:	18fb      	adds	r3, r7, r3
    25da:	881b      	ldrh	r3, [r3, #0]
    25dc:	001a      	movs	r2, r3
    25de:	230c      	movs	r3, #12
    25e0:	18fb      	adds	r3, r7, r3
    25e2:	885b      	ldrh	r3, [r3, #2]
    25e4:	18d3      	adds	r3, r2, r3
    25e6:	3b08      	subs	r3, #8
    25e8:	001a      	movs	r2, r3
    25ea:	683b      	ldr	r3, [r7, #0]
    25ec:	429a      	cmp	r2, r3
    25ee:	da01      	bge.n	25f4 <SendPacket+0x94>
    25f0:	2300      	movs	r3, #0
    25f2:	e0a9      	b.n	2748 <SendPacket+0x1e8>
    25f4:	683b      	ldr	r3, [r7, #0]
    25f6:	613b      	str	r3, [r7, #16]
    25f8:	687b      	ldr	r3, [r7, #4]
    25fa:	623b      	str	r3, [r7, #32]
    25fc:	697b      	ldr	r3, [r7, #20]
    25fe:	22e0      	movs	r2, #224	; 0xe0
    2600:	0592      	lsls	r2, r2, #22
    2602:	4694      	mov	ip, r2
    2604:	4463      	add	r3, ip
    2606:	61fb      	str	r3, [r7, #28]
    2608:	69fb      	ldr	r3, [r7, #28]
    260a:	1d1a      	adds	r2, r3, #4
    260c:	61fa      	str	r2, [r7, #28]
    260e:	693a      	ldr	r2, [r7, #16]
    2610:	601a      	str	r2, [r3, #0]
    2612:	230c      	movs	r3, #12
    2614:	18fb      	adds	r3, r7, r3
    2616:	881b      	ldrh	r3, [r3, #0]
    2618:	3b04      	subs	r3, #4
    261a:	b29a      	uxth	r2, r3
    261c:	230c      	movs	r3, #12
    261e:	18fb      	adds	r3, r7, r3
    2620:	801a      	strh	r2, [r3, #0]
    2622:	69fb      	ldr	r3, [r7, #28]
    2624:	b29b      	uxth	r3, r3
    2626:	4a4c      	ldr	r2, [pc, #304]	; (2758 <SendPacket+0x1f8>)
    2628:	4293      	cmp	r3, r2
    262a:	d901      	bls.n	2630 <SendPacket+0xd0>
    262c:	4b4b      	ldr	r3, [pc, #300]	; (275c <SendPacket+0x1fc>)
    262e:	61fb      	str	r3, [r7, #28]
    2630:	683b      	ldr	r3, [r7, #0]
    2632:	3303      	adds	r3, #3
    2634:	2b00      	cmp	r3, #0
    2636:	da00      	bge.n	263a <SendPacket+0xda>
    2638:	3303      	adds	r3, #3
    263a:	109b      	asrs	r3, r3, #2
    263c:	613b      	str	r3, [r7, #16]
    263e:	230c      	movs	r3, #12
    2640:	18fb      	adds	r3, r7, r3
    2642:	881b      	ldrh	r3, [r3, #0]
    2644:	001a      	movs	r2, r3
    2646:	683b      	ldr	r3, [r7, #0]
    2648:	429a      	cmp	r2, r3
    264a:	db1a      	blt.n	2682 <SendPacket+0x122>
    264c:	2326      	movs	r3, #38	; 0x26
    264e:	18fb      	adds	r3, r7, r3
    2650:	2200      	movs	r2, #0
    2652:	801a      	strh	r2, [r3, #0]
    2654:	e00e      	b.n	2674 <SendPacket+0x114>
    2656:	69fb      	ldr	r3, [r7, #28]
    2658:	1d1a      	adds	r2, r3, #4
    265a:	61fa      	str	r2, [r7, #28]
    265c:	6a3a      	ldr	r2, [r7, #32]
    265e:	1d11      	adds	r1, r2, #4
    2660:	6239      	str	r1, [r7, #32]
    2662:	6812      	ldr	r2, [r2, #0]
    2664:	601a      	str	r2, [r3, #0]
    2666:	2326      	movs	r3, #38	; 0x26
    2668:	18fb      	adds	r3, r7, r3
    266a:	881a      	ldrh	r2, [r3, #0]
    266c:	2326      	movs	r3, #38	; 0x26
    266e:	18fb      	adds	r3, r7, r3
    2670:	3201      	adds	r2, #1
    2672:	801a      	strh	r2, [r3, #0]
    2674:	2326      	movs	r3, #38	; 0x26
    2676:	18fb      	adds	r3, r7, r3
    2678:	881a      	ldrh	r2, [r3, #0]
    267a:	693b      	ldr	r3, [r7, #16]
    267c:	429a      	cmp	r2, r3
    267e:	d3ea      	bcc.n	2656 <SendPacket+0xf6>
    2680:	e042      	b.n	2708 <SendPacket+0x1a8>
    2682:	230c      	movs	r3, #12
    2684:	18fb      	adds	r3, r7, r3
    2686:	881b      	ldrh	r3, [r3, #0]
    2688:	089b      	lsrs	r3, r3, #2
    268a:	b29b      	uxth	r3, r3
    268c:	001a      	movs	r2, r3
    268e:	693b      	ldr	r3, [r7, #16]
    2690:	1a9b      	subs	r3, r3, r2
    2692:	613b      	str	r3, [r7, #16]
    2694:	2326      	movs	r3, #38	; 0x26
    2696:	18fb      	adds	r3, r7, r3
    2698:	2200      	movs	r2, #0
    269a:	801a      	strh	r2, [r3, #0]
    269c:	e00e      	b.n	26bc <SendPacket+0x15c>
    269e:	69fb      	ldr	r3, [r7, #28]
    26a0:	1d1a      	adds	r2, r3, #4
    26a2:	61fa      	str	r2, [r7, #28]
    26a4:	6a3a      	ldr	r2, [r7, #32]
    26a6:	1d11      	adds	r1, r2, #4
    26a8:	6239      	str	r1, [r7, #32]
    26aa:	6812      	ldr	r2, [r2, #0]
    26ac:	601a      	str	r2, [r3, #0]
    26ae:	2326      	movs	r3, #38	; 0x26
    26b0:	18fb      	adds	r3, r7, r3
    26b2:	881a      	ldrh	r2, [r3, #0]
    26b4:	2326      	movs	r3, #38	; 0x26
    26b6:	18fb      	adds	r3, r7, r3
    26b8:	3201      	adds	r2, #1
    26ba:	801a      	strh	r2, [r3, #0]
    26bc:	230c      	movs	r3, #12
    26be:	18fb      	adds	r3, r7, r3
    26c0:	881b      	ldrh	r3, [r3, #0]
    26c2:	089b      	lsrs	r3, r3, #2
    26c4:	b29b      	uxth	r3, r3
    26c6:	2226      	movs	r2, #38	; 0x26
    26c8:	18ba      	adds	r2, r7, r2
    26ca:	8812      	ldrh	r2, [r2, #0]
    26cc:	429a      	cmp	r2, r3
    26ce:	d3e6      	bcc.n	269e <SendPacket+0x13e>
    26d0:	4b22      	ldr	r3, [pc, #136]	; (275c <SendPacket+0x1fc>)
    26d2:	61fb      	str	r3, [r7, #28]
    26d4:	2326      	movs	r3, #38	; 0x26
    26d6:	18fb      	adds	r3, r7, r3
    26d8:	2200      	movs	r2, #0
    26da:	801a      	strh	r2, [r3, #0]
    26dc:	e00e      	b.n	26fc <SendPacket+0x19c>
    26de:	69fb      	ldr	r3, [r7, #28]
    26e0:	1d1a      	adds	r2, r3, #4
    26e2:	61fa      	str	r2, [r7, #28]
    26e4:	6a3a      	ldr	r2, [r7, #32]
    26e6:	1d11      	adds	r1, r2, #4
    26e8:	6239      	str	r1, [r7, #32]
    26ea:	6812      	ldr	r2, [r2, #0]
    26ec:	601a      	str	r2, [r3, #0]
    26ee:	2326      	movs	r3, #38	; 0x26
    26f0:	18fb      	adds	r3, r7, r3
    26f2:	881a      	ldrh	r2, [r3, #0]
    26f4:	2326      	movs	r3, #38	; 0x26
    26f6:	18fb      	adds	r3, r7, r3
    26f8:	3201      	adds	r2, #1
    26fa:	801a      	strh	r2, [r3, #0]
    26fc:	2326      	movs	r3, #38	; 0x26
    26fe:	18fb      	adds	r3, r7, r3
    2700:	881a      	ldrh	r2, [r3, #0]
    2702:	693b      	ldr	r3, [r7, #16]
    2704:	429a      	cmp	r2, r3
    2706:	d3ea      	bcc.n	26de <SendPacket+0x17e>
    2708:	69fb      	ldr	r3, [r7, #28]
    270a:	b29b      	uxth	r3, r3
    270c:	4a12      	ldr	r2, [pc, #72]	; (2758 <SendPacket+0x1f8>)
    270e:	4293      	cmp	r3, r2
    2710:	d901      	bls.n	2716 <SendPacket+0x1b6>
    2712:	4b12      	ldr	r3, [pc, #72]	; (275c <SendPacket+0x1fc>)
    2714:	61fb      	str	r3, [r7, #28]
    2716:	2300      	movs	r3, #0
    2718:	613b      	str	r3, [r7, #16]
    271a:	69fb      	ldr	r3, [r7, #28]
    271c:	1d1a      	adds	r2, r3, #4
    271e:	61fa      	str	r2, [r7, #28]
    2720:	693a      	ldr	r2, [r7, #16]
    2722:	601a      	str	r2, [r3, #0]
    2724:	69fb      	ldr	r3, [r7, #28]
    2726:	b29b      	uxth	r3, r3
    2728:	4a0b      	ldr	r2, [pc, #44]	; (2758 <SendPacket+0x1f8>)
    272a:	4293      	cmp	r3, r2
    272c:	d901      	bls.n	2732 <SendPacket+0x1d2>
    272e:	4b0b      	ldr	r3, [pc, #44]	; (275c <SendPacket+0x1fc>)
    2730:	61fb      	str	r3, [r7, #28]
    2732:	23c0      	movs	r3, #192	; 0xc0
    2734:	059b      	lsls	r3, r3, #22
    2736:	69fa      	ldr	r2, [r7, #28]
    2738:	b292      	uxth	r2, r2
    273a:	855a      	strh	r2, [r3, #42]	; 0x2a
    273c:	4b04      	ldr	r3, [pc, #16]	; (2750 <SendPacket+0x1f0>)
    273e:	681b      	ldr	r3, [r3, #0]
    2740:	0018      	movs	r0, r3
    2742:	f004 f99d 	bl	6a80 <osMutexRelease>
    2746:	683b      	ldr	r3, [r7, #0]
    2748:	0018      	movs	r0, r3
    274a:	46bd      	mov	sp, r7
    274c:	b00a      	add	sp, #40	; 0x28
    274e:	bd80      	pop	{r7, pc}
    2750:	20005340 	.word	0x20005340
    2754:	fffff000 	.word	0xfffff000
    2758:	00001ffc 	.word	0x00001ffc
    275c:	38001000 	.word	0x38001000

00002760 <ETHERNET_Handler>:
    2760:	b580      	push	{r7, lr}
    2762:	b082      	sub	sp, #8
    2764:	af00      	add	r7, sp, #0
    2766:	23c0      	movs	r3, #192	; 0xc0
    2768:	059a      	lsls	r2, r3, #22
    276a:	1dbb      	adds	r3, r7, #6
    276c:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    276e:	801a      	strh	r2, [r3, #0]
    2770:	23c0      	movs	r3, #192	; 0xc0
    2772:	059b      	lsls	r3, r3, #22
    2774:	1dba      	adds	r2, r7, #6
    2776:	8812      	ldrh	r2, [r2, #0]
    2778:	845a      	strh	r2, [r3, #34]	; 0x22
    277a:	1dbb      	adds	r3, r7, #6
    277c:	881b      	ldrh	r3, [r3, #0]
    277e:	2201      	movs	r2, #1
    2780:	4013      	ands	r3, r2
    2782:	d008      	beq.n	2796 <ETHERNET_Handler+0x36>
    2784:	4b0a      	ldr	r3, [pc, #40]	; (27b0 <ETHERNET_Handler+0x50>)
    2786:	2201      	movs	r2, #1
    2788:	601a      	str	r2, [r3, #0]
    278a:	4b0a      	ldr	r3, [pc, #40]	; (27b4 <ETHERNET_Handler+0x54>)
    278c:	681b      	ldr	r3, [r3, #0]
    278e:	2101      	movs	r1, #1
    2790:	0018      	movs	r0, r3
    2792:	f004 f883 	bl	689c <osSignalSet>
    2796:	1dbb      	adds	r3, r7, #6
    2798:	881b      	ldrh	r3, [r3, #0]
    279a:	2202      	movs	r2, #2
    279c:	4013      	ands	r3, r2
    279e:	d002      	beq.n	27a6 <ETHERNET_Handler+0x46>
    27a0:	4b05      	ldr	r3, [pc, #20]	; (27b8 <ETHERNET_Handler+0x58>)
    27a2:	2201      	movs	r2, #1
    27a4:	601a      	str	r2, [r3, #0]
    27a6:	46c0      	nop			; (mov r8, r8)
    27a8:	46bd      	mov	sp, r7
    27aa:	b002      	add	sp, #8
    27ac:	bd80      	pop	{r7, pc}
    27ae:	46c0      	nop			; (mov r8, r8)
    27b0:	20004d28 	.word	0x20004d28
    27b4:	20000858 	.word	0x20000858
    27b8:	20004d2c 	.word	0x20004d2c

000027bc <network_config>:
    27bc:	b580      	push	{r7, lr}
    27be:	b082      	sub	sp, #8
    27c0:	af00      	add	r7, sp, #0
    27c2:	6078      	str	r0, [r7, #4]
    27c4:	687b      	ldr	r3, [r7, #4]
    27c6:	2b00      	cmp	r3, #0
    27c8:	d007      	beq.n	27da <network_config+0x1e>
    27ca:	687b      	ldr	r3, [r7, #4]
    27cc:	881a      	ldrh	r2, [r3, #0]
    27ce:	4b05      	ldr	r3, [pc, #20]	; (27e4 <network_config+0x28>)
    27d0:	801a      	strh	r2, [r3, #0]
    27d2:	687b      	ldr	r3, [r7, #4]
    27d4:	885a      	ldrh	r2, [r3, #2]
    27d6:	4b03      	ldr	r3, [pc, #12]	; (27e4 <network_config+0x28>)
    27d8:	805a      	strh	r2, [r3, #2]
    27da:	46c0      	nop			; (mov r8, r8)
    27dc:	46bd      	mov	sp, r7
    27de:	b002      	add	sp, #8
    27e0:	bd80      	pop	{r7, pc}
    27e2:	46c0      	nop			; (mov r8, r8)
    27e4:	20000010 	.word	0x20000010

000027e8 <Answear_ARP>:
    27e8:	b580      	push	{r7, lr}
    27ea:	b08c      	sub	sp, #48	; 0x30
    27ec:	af00      	add	r7, sp, #0
    27ee:	4b36      	ldr	r3, [pc, #216]	; (28c8 <Answear_ARP+0xe0>)
    27f0:	88da      	ldrh	r2, [r3, #6]
    27f2:	1d3b      	adds	r3, r7, #4
    27f4:	801a      	strh	r2, [r3, #0]
    27f6:	4b34      	ldr	r3, [pc, #208]	; (28c8 <Answear_ARP+0xe0>)
    27f8:	891a      	ldrh	r2, [r3, #8]
    27fa:	1d3b      	adds	r3, r7, #4
    27fc:	805a      	strh	r2, [r3, #2]
    27fe:	4b32      	ldr	r3, [pc, #200]	; (28c8 <Answear_ARP+0xe0>)
    2800:	895a      	ldrh	r2, [r3, #10]
    2802:	1d3b      	adds	r3, r7, #4
    2804:	809a      	strh	r2, [r3, #4]
    2806:	23c0      	movs	r3, #192	; 0xc0
    2808:	059b      	lsls	r3, r3, #22
    280a:	885b      	ldrh	r3, [r3, #2]
    280c:	b29a      	uxth	r2, r3
    280e:	1d3b      	adds	r3, r7, #4
    2810:	80da      	strh	r2, [r3, #6]
    2812:	23c0      	movs	r3, #192	; 0xc0
    2814:	059b      	lsls	r3, r3, #22
    2816:	889b      	ldrh	r3, [r3, #4]
    2818:	b29a      	uxth	r2, r3
    281a:	1d3b      	adds	r3, r7, #4
    281c:	811a      	strh	r2, [r3, #8]
    281e:	23c0      	movs	r3, #192	; 0xc0
    2820:	059b      	lsls	r3, r3, #22
    2822:	88db      	ldrh	r3, [r3, #6]
    2824:	b29a      	uxth	r2, r3
    2826:	1d3b      	adds	r3, r7, #4
    2828:	815a      	strh	r2, [r3, #10]
    282a:	4b27      	ldr	r3, [pc, #156]	; (28c8 <Answear_ARP+0xe0>)
    282c:	899a      	ldrh	r2, [r3, #12]
    282e:	1d3b      	adds	r3, r7, #4
    2830:	819a      	strh	r2, [r3, #12]
    2832:	4b25      	ldr	r3, [pc, #148]	; (28c8 <Answear_ARP+0xe0>)
    2834:	89da      	ldrh	r2, [r3, #14]
    2836:	1d3b      	adds	r3, r7, #4
    2838:	81da      	strh	r2, [r3, #14]
    283a:	4b23      	ldr	r3, [pc, #140]	; (28c8 <Answear_ARP+0xe0>)
    283c:	8a1a      	ldrh	r2, [r3, #16]
    283e:	1d3b      	adds	r3, r7, #4
    2840:	821a      	strh	r2, [r3, #16]
    2842:	4b21      	ldr	r3, [pc, #132]	; (28c8 <Answear_ARP+0xe0>)
    2844:	8a5a      	ldrh	r2, [r3, #18]
    2846:	1d3b      	adds	r3, r7, #4
    2848:	825a      	strh	r2, [r3, #18]
    284a:	1d3b      	adds	r3, r7, #4
    284c:	2280      	movs	r2, #128	; 0x80
    284e:	0092      	lsls	r2, r2, #2
    2850:	829a      	strh	r2, [r3, #20]
    2852:	23c0      	movs	r3, #192	; 0xc0
    2854:	059b      	lsls	r3, r3, #22
    2856:	885b      	ldrh	r3, [r3, #2]
    2858:	b29a      	uxth	r2, r3
    285a:	1d3b      	adds	r3, r7, #4
    285c:	82da      	strh	r2, [r3, #22]
    285e:	23c0      	movs	r3, #192	; 0xc0
    2860:	059b      	lsls	r3, r3, #22
    2862:	889b      	ldrh	r3, [r3, #4]
    2864:	b29a      	uxth	r2, r3
    2866:	1d3b      	adds	r3, r7, #4
    2868:	831a      	strh	r2, [r3, #24]
    286a:	23c0      	movs	r3, #192	; 0xc0
    286c:	059b      	lsls	r3, r3, #22
    286e:	88db      	ldrh	r3, [r3, #6]
    2870:	b29a      	uxth	r2, r3
    2872:	1d3b      	adds	r3, r7, #4
    2874:	835a      	strh	r2, [r3, #26]
    2876:	4b15      	ldr	r3, [pc, #84]	; (28cc <Answear_ARP+0xe4>)
    2878:	881a      	ldrh	r2, [r3, #0]
    287a:	1d3b      	adds	r3, r7, #4
    287c:	839a      	strh	r2, [r3, #28]
    287e:	4b13      	ldr	r3, [pc, #76]	; (28cc <Answear_ARP+0xe4>)
    2880:	885a      	ldrh	r2, [r3, #2]
    2882:	1d3b      	adds	r3, r7, #4
    2884:	83da      	strh	r2, [r3, #30]
    2886:	4b10      	ldr	r3, [pc, #64]	; (28c8 <Answear_ARP+0xe0>)
    2888:	88da      	ldrh	r2, [r3, #6]
    288a:	1d3b      	adds	r3, r7, #4
    288c:	841a      	strh	r2, [r3, #32]
    288e:	4b0e      	ldr	r3, [pc, #56]	; (28c8 <Answear_ARP+0xe0>)
    2890:	891a      	ldrh	r2, [r3, #8]
    2892:	1d3b      	adds	r3, r7, #4
    2894:	845a      	strh	r2, [r3, #34]	; 0x22
    2896:	4b0c      	ldr	r3, [pc, #48]	; (28c8 <Answear_ARP+0xe0>)
    2898:	895a      	ldrh	r2, [r3, #10]
    289a:	1d3b      	adds	r3, r7, #4
    289c:	849a      	strh	r2, [r3, #36]	; 0x24
    289e:	4b0a      	ldr	r3, [pc, #40]	; (28c8 <Answear_ARP+0xe0>)
    28a0:	8b9a      	ldrh	r2, [r3, #28]
    28a2:	1d3b      	adds	r3, r7, #4
    28a4:	84da      	strh	r2, [r3, #38]	; 0x26
    28a6:	4b08      	ldr	r3, [pc, #32]	; (28c8 <Answear_ARP+0xe0>)
    28a8:	8bda      	ldrh	r2, [r3, #30]
    28aa:	1d3b      	adds	r3, r7, #4
    28ac:	851a      	strh	r2, [r3, #40]	; 0x28
    28ae:	1d3b      	adds	r3, r7, #4
    28b0:	2200      	movs	r2, #0
    28b2:	855a      	strh	r2, [r3, #42]	; 0x2a
    28b4:	1d3b      	adds	r3, r7, #4
    28b6:	212a      	movs	r1, #42	; 0x2a
    28b8:	0018      	movs	r0, r3
    28ba:	f7ff fe51 	bl	2560 <SendPacket>
    28be:	46c0      	nop			; (mov r8, r8)
    28c0:	46bd      	mov	sp, r7
    28c2:	b00c      	add	sp, #48	; 0x30
    28c4:	bd80      	pop	{r7, pc}
    28c6:	46c0      	nop			; (mov r8, r8)
    28c8:	20004d38 	.word	0x20004d38
    28cc:	20000010 	.word	0x20000010

000028d0 <CheckSum_UDP>:
    28d0:	b580      	push	{r7, lr}
    28d2:	b086      	sub	sp, #24
    28d4:	af00      	add	r7, sp, #0
    28d6:	0002      	movs	r2, r0
    28d8:	6039      	str	r1, [r7, #0]
    28da:	1dbb      	adds	r3, r7, #6
    28dc:	801a      	strh	r2, [r3, #0]
    28de:	2300      	movs	r3, #0
    28e0:	613b      	str	r3, [r7, #16]
    28e2:	230d      	movs	r3, #13
    28e4:	617b      	str	r3, [r7, #20]
    28e6:	e019      	b.n	291c <CheckSum_UDP+0x4c>
    28e8:	697b      	ldr	r3, [r7, #20]
    28ea:	005b      	lsls	r3, r3, #1
    28ec:	683a      	ldr	r2, [r7, #0]
    28ee:	18d3      	adds	r3, r2, r3
    28f0:	881b      	ldrh	r3, [r3, #0]
    28f2:	021b      	lsls	r3, r3, #8
    28f4:	041b      	lsls	r3, r3, #16
    28f6:	0c1a      	lsrs	r2, r3, #16
    28f8:	697b      	ldr	r3, [r7, #20]
    28fa:	005b      	lsls	r3, r3, #1
    28fc:	6839      	ldr	r1, [r7, #0]
    28fe:	18cb      	adds	r3, r1, r3
    2900:	881b      	ldrh	r3, [r3, #0]
    2902:	0a1b      	lsrs	r3, r3, #8
    2904:	b29b      	uxth	r3, r3
    2906:	0019      	movs	r1, r3
    2908:	23ff      	movs	r3, #255	; 0xff
    290a:	400b      	ands	r3, r1
    290c:	18d3      	adds	r3, r2, r3
    290e:	001a      	movs	r2, r3
    2910:	693b      	ldr	r3, [r7, #16]
    2912:	189b      	adds	r3, r3, r2
    2914:	613b      	str	r3, [r7, #16]
    2916:	697b      	ldr	r3, [r7, #20]
    2918:	3301      	adds	r3, #1
    291a:	617b      	str	r3, [r7, #20]
    291c:	697b      	ldr	r3, [r7, #20]
    291e:	2b10      	cmp	r3, #16
    2920:	d9e2      	bls.n	28e8 <CheckSum_UDP+0x18>
    2922:	683b      	ldr	r3, [r7, #0]
    2924:	3316      	adds	r3, #22
    2926:	881b      	ldrh	r3, [r3, #0]
    2928:	0a1b      	lsrs	r3, r3, #8
    292a:	b29b      	uxth	r3, r3
    292c:	001a      	movs	r2, r3
    292e:	23ff      	movs	r3, #255	; 0xff
    2930:	4013      	ands	r3, r2
    2932:	693a      	ldr	r2, [r7, #16]
    2934:	18d3      	adds	r3, r2, r3
    2936:	613b      	str	r3, [r7, #16]
    2938:	1dbb      	adds	r3, r7, #6
    293a:	881b      	ldrh	r3, [r3, #0]
    293c:	693a      	ldr	r2, [r7, #16]
    293e:	18d3      	adds	r3, r2, r3
    2940:	613b      	str	r3, [r7, #16]
    2942:	683b      	ldr	r3, [r7, #0]
    2944:	3322      	adds	r3, #34	; 0x22
    2946:	881b      	ldrh	r3, [r3, #0]
    2948:	021b      	lsls	r3, r3, #8
    294a:	041b      	lsls	r3, r3, #16
    294c:	0c1a      	lsrs	r2, r3, #16
    294e:	683b      	ldr	r3, [r7, #0]
    2950:	3322      	adds	r3, #34	; 0x22
    2952:	881b      	ldrh	r3, [r3, #0]
    2954:	0a1b      	lsrs	r3, r3, #8
    2956:	b29b      	uxth	r3, r3
    2958:	0019      	movs	r1, r3
    295a:	23ff      	movs	r3, #255	; 0xff
    295c:	400b      	ands	r3, r1
    295e:	18d3      	adds	r3, r2, r3
    2960:	001a      	movs	r2, r3
    2962:	693b      	ldr	r3, [r7, #16]
    2964:	189b      	adds	r3, r3, r2
    2966:	613b      	str	r3, [r7, #16]
    2968:	683b      	ldr	r3, [r7, #0]
    296a:	3324      	adds	r3, #36	; 0x24
    296c:	881b      	ldrh	r3, [r3, #0]
    296e:	021b      	lsls	r3, r3, #8
    2970:	041b      	lsls	r3, r3, #16
    2972:	0c1a      	lsrs	r2, r3, #16
    2974:	683b      	ldr	r3, [r7, #0]
    2976:	3324      	adds	r3, #36	; 0x24
    2978:	881b      	ldrh	r3, [r3, #0]
    297a:	0a1b      	lsrs	r3, r3, #8
    297c:	b29b      	uxth	r3, r3
    297e:	0019      	movs	r1, r3
    2980:	23ff      	movs	r3, #255	; 0xff
    2982:	400b      	ands	r3, r1
    2984:	18d3      	adds	r3, r2, r3
    2986:	001a      	movs	r2, r3
    2988:	693b      	ldr	r3, [r7, #16]
    298a:	189b      	adds	r3, r3, r2
    298c:	613b      	str	r3, [r7, #16]
    298e:	1dbb      	adds	r3, r7, #6
    2990:	881b      	ldrh	r3, [r3, #0]
    2992:	693a      	ldr	r2, [r7, #16]
    2994:	18d3      	adds	r3, r2, r3
    2996:	613b      	str	r3, [r7, #16]
    2998:	683b      	ldr	r3, [r7, #0]
    299a:	3328      	adds	r3, #40	; 0x28
    299c:	881b      	ldrh	r3, [r3, #0]
    299e:	021b      	lsls	r3, r3, #8
    29a0:	041b      	lsls	r3, r3, #16
    29a2:	0c1a      	lsrs	r2, r3, #16
    29a4:	683b      	ldr	r3, [r7, #0]
    29a6:	3328      	adds	r3, #40	; 0x28
    29a8:	881b      	ldrh	r3, [r3, #0]
    29aa:	0a1b      	lsrs	r3, r3, #8
    29ac:	b29b      	uxth	r3, r3
    29ae:	0019      	movs	r1, r3
    29b0:	23ff      	movs	r3, #255	; 0xff
    29b2:	400b      	ands	r3, r1
    29b4:	18d3      	adds	r3, r2, r3
    29b6:	001a      	movs	r2, r3
    29b8:	693b      	ldr	r3, [r7, #16]
    29ba:	189b      	adds	r3, r3, r2
    29bc:	613b      	str	r3, [r7, #16]
    29be:	683b      	ldr	r3, [r7, #0]
    29c0:	332a      	adds	r3, #42	; 0x2a
    29c2:	60fb      	str	r3, [r7, #12]
    29c4:	2300      	movs	r3, #0
    29c6:	617b      	str	r3, [r7, #20]
    29c8:	e017      	b.n	29fa <CheckSum_UDP+0x12a>
    29ca:	697b      	ldr	r3, [r7, #20]
    29cc:	2201      	movs	r2, #1
    29ce:	4013      	ands	r3, r2
    29d0:	d008      	beq.n	29e4 <CheckSum_UDP+0x114>
    29d2:	68fb      	ldr	r3, [r7, #12]
    29d4:	1c5a      	adds	r2, r3, #1
    29d6:	60fa      	str	r2, [r7, #12]
    29d8:	781b      	ldrb	r3, [r3, #0]
    29da:	001a      	movs	r2, r3
    29dc:	693b      	ldr	r3, [r7, #16]
    29de:	189b      	adds	r3, r3, r2
    29e0:	613b      	str	r3, [r7, #16]
    29e2:	e007      	b.n	29f4 <CheckSum_UDP+0x124>
    29e4:	68fb      	ldr	r3, [r7, #12]
    29e6:	1c5a      	adds	r2, r3, #1
    29e8:	60fa      	str	r2, [r7, #12]
    29ea:	781b      	ldrb	r3, [r3, #0]
    29ec:	021b      	lsls	r3, r3, #8
    29ee:	693a      	ldr	r2, [r7, #16]
    29f0:	18d3      	adds	r3, r2, r3
    29f2:	613b      	str	r3, [r7, #16]
    29f4:	697b      	ldr	r3, [r7, #20]
    29f6:	3301      	adds	r3, #1
    29f8:	617b      	str	r3, [r7, #20]
    29fa:	1dbb      	adds	r3, r7, #6
    29fc:	881b      	ldrh	r3, [r3, #0]
    29fe:	3b08      	subs	r3, #8
    2a00:	001a      	movs	r2, r3
    2a02:	697b      	ldr	r3, [r7, #20]
    2a04:	429a      	cmp	r2, r3
    2a06:	d8e0      	bhi.n	29ca <CheckSum_UDP+0xfa>
    2a08:	e006      	b.n	2a18 <CheckSum_UDP+0x148>
    2a0a:	693b      	ldr	r3, [r7, #16]
    2a0c:	0c1a      	lsrs	r2, r3, #16
    2a0e:	693b      	ldr	r3, [r7, #16]
    2a10:	041b      	lsls	r3, r3, #16
    2a12:	0c1b      	lsrs	r3, r3, #16
    2a14:	18d3      	adds	r3, r2, r3
    2a16:	613b      	str	r3, [r7, #16]
    2a18:	693b      	ldr	r3, [r7, #16]
    2a1a:	0c1b      	lsrs	r3, r3, #16
    2a1c:	d1f5      	bne.n	2a0a <CheckSum_UDP+0x13a>
    2a1e:	693b      	ldr	r3, [r7, #16]
    2a20:	b29b      	uxth	r3, r3
    2a22:	43db      	mvns	r3, r3
    2a24:	b29b      	uxth	r3, r3
    2a26:	0018      	movs	r0, r3
    2a28:	46bd      	mov	sp, r7
    2a2a:	b006      	add	sp, #24
    2a2c:	bd80      	pop	{r7, pc}
    2a2e:	46c0      	nop			; (mov r8, r8)

00002a30 <CheckSum_IP>:
    2a30:	b580      	push	{r7, lr}
    2a32:	b084      	sub	sp, #16
    2a34:	af00      	add	r7, sp, #0
    2a36:	6078      	str	r0, [r7, #4]
    2a38:	2300      	movs	r3, #0
    2a3a:	60bb      	str	r3, [r7, #8]
    2a3c:	2300      	movs	r3, #0
    2a3e:	60fb      	str	r3, [r7, #12]
    2a40:	e011      	b.n	2a66 <CheckSum_IP+0x36>
    2a42:	68fb      	ldr	r3, [r7, #12]
    2a44:	2b05      	cmp	r3, #5
    2a46:	d00a      	beq.n	2a5e <CheckSum_IP+0x2e>
    2a48:	68fb      	ldr	r3, [r7, #12]
    2a4a:	3307      	adds	r3, #7
    2a4c:	005b      	lsls	r3, r3, #1
    2a4e:	687a      	ldr	r2, [r7, #4]
    2a50:	18d3      	adds	r3, r2, r3
    2a52:	881b      	ldrh	r3, [r3, #0]
    2a54:	001a      	movs	r2, r3
    2a56:	68bb      	ldr	r3, [r7, #8]
    2a58:	189b      	adds	r3, r3, r2
    2a5a:	60bb      	str	r3, [r7, #8]
    2a5c:	e000      	b.n	2a60 <CheckSum_IP+0x30>
    2a5e:	46c0      	nop			; (mov r8, r8)
    2a60:	68fb      	ldr	r3, [r7, #12]
    2a62:	3301      	adds	r3, #1
    2a64:	60fb      	str	r3, [r7, #12]
    2a66:	68fb      	ldr	r3, [r7, #12]
    2a68:	2b09      	cmp	r3, #9
    2a6a:	d9ea      	bls.n	2a42 <CheckSum_IP+0x12>
    2a6c:	68bb      	ldr	r3, [r7, #8]
    2a6e:	0c1a      	lsrs	r2, r3, #16
    2a70:	68bb      	ldr	r3, [r7, #8]
    2a72:	041b      	lsls	r3, r3, #16
    2a74:	0c1b      	lsrs	r3, r3, #16
    2a76:	18d3      	adds	r3, r2, r3
    2a78:	60bb      	str	r3, [r7, #8]
    2a7a:	68bb      	ldr	r3, [r7, #8]
    2a7c:	b29b      	uxth	r3, r3
    2a7e:	43db      	mvns	r3, r3
    2a80:	b29b      	uxth	r3, r3
    2a82:	0018      	movs	r0, r3
    2a84:	46bd      	mov	sp, r7
    2a86:	b004      	add	sp, #16
    2a88:	bd80      	pop	{r7, pc}
    2a8a:	46c0      	nop			; (mov r8, r8)

00002a8c <CheckSum_ICMP>:
    2a8c:	b580      	push	{r7, lr}
    2a8e:	b084      	sub	sp, #16
    2a90:	af00      	add	r7, sp, #0
    2a92:	0002      	movs	r2, r0
    2a94:	6039      	str	r1, [r7, #0]
    2a96:	1dbb      	adds	r3, r7, #6
    2a98:	801a      	strh	r2, [r3, #0]
    2a9a:	2300      	movs	r3, #0
    2a9c:	60bb      	str	r3, [r7, #8]
    2a9e:	2300      	movs	r3, #0
    2aa0:	60fb      	str	r3, [r7, #12]
    2aa2:	e011      	b.n	2ac8 <CheckSum_ICMP+0x3c>
    2aa4:	68fb      	ldr	r3, [r7, #12]
    2aa6:	2b01      	cmp	r3, #1
    2aa8:	d00a      	beq.n	2ac0 <CheckSum_ICMP+0x34>
    2aaa:	68fb      	ldr	r3, [r7, #12]
    2aac:	3311      	adds	r3, #17
    2aae:	005b      	lsls	r3, r3, #1
    2ab0:	683a      	ldr	r2, [r7, #0]
    2ab2:	18d3      	adds	r3, r2, r3
    2ab4:	881b      	ldrh	r3, [r3, #0]
    2ab6:	001a      	movs	r2, r3
    2ab8:	68bb      	ldr	r3, [r7, #8]
    2aba:	189b      	adds	r3, r3, r2
    2abc:	60bb      	str	r3, [r7, #8]
    2abe:	e000      	b.n	2ac2 <CheckSum_ICMP+0x36>
    2ac0:	46c0      	nop			; (mov r8, r8)
    2ac2:	68fb      	ldr	r3, [r7, #12]
    2ac4:	3301      	adds	r3, #1
    2ac6:	60fb      	str	r3, [r7, #12]
    2ac8:	1dbb      	adds	r3, r7, #6
    2aca:	881a      	ldrh	r2, [r3, #0]
    2acc:	68fb      	ldr	r3, [r7, #12]
    2ace:	429a      	cmp	r2, r3
    2ad0:	d8e8      	bhi.n	2aa4 <CheckSum_ICMP+0x18>
    2ad2:	68bb      	ldr	r3, [r7, #8]
    2ad4:	0c1a      	lsrs	r2, r3, #16
    2ad6:	68bb      	ldr	r3, [r7, #8]
    2ad8:	041b      	lsls	r3, r3, #16
    2ada:	0c1b      	lsrs	r3, r3, #16
    2adc:	18d3      	adds	r3, r2, r3
    2ade:	60bb      	str	r3, [r7, #8]
    2ae0:	68bb      	ldr	r3, [r7, #8]
    2ae2:	b29b      	uxth	r3, r3
    2ae4:	43db      	mvns	r3, r3
    2ae6:	b29b      	uxth	r3, r3
    2ae8:	0018      	movs	r0, r3
    2aea:	46bd      	mov	sp, r7
    2aec:	b004      	add	sp, #16
    2aee:	bd80      	pop	{r7, pc}

00002af0 <Request_ICMP>:
    2af0:	b580      	push	{r7, lr}
    2af2:	b096      	sub	sp, #88	; 0x58
    2af4:	af00      	add	r7, sp, #0
    2af6:	4b73      	ldr	r3, [pc, #460]	; (2cc4 <Request_ICMP+0x1d4>)
    2af8:	881a      	ldrh	r2, [r3, #0]
    2afa:	1d3b      	adds	r3, r7, #4
    2afc:	801a      	strh	r2, [r3, #0]
    2afe:	4b71      	ldr	r3, [pc, #452]	; (2cc4 <Request_ICMP+0x1d4>)
    2b00:	885a      	ldrh	r2, [r3, #2]
    2b02:	1d3b      	adds	r3, r7, #4
    2b04:	805a      	strh	r2, [r3, #2]
    2b06:	4b6f      	ldr	r3, [pc, #444]	; (2cc4 <Request_ICMP+0x1d4>)
    2b08:	889a      	ldrh	r2, [r3, #4]
    2b0a:	1d3b      	adds	r3, r7, #4
    2b0c:	809a      	strh	r2, [r3, #4]
    2b0e:	23c0      	movs	r3, #192	; 0xc0
    2b10:	059b      	lsls	r3, r3, #22
    2b12:	885b      	ldrh	r3, [r3, #2]
    2b14:	b29a      	uxth	r2, r3
    2b16:	1d3b      	adds	r3, r7, #4
    2b18:	80da      	strh	r2, [r3, #6]
    2b1a:	23c0      	movs	r3, #192	; 0xc0
    2b1c:	059b      	lsls	r3, r3, #22
    2b1e:	889b      	ldrh	r3, [r3, #4]
    2b20:	b29a      	uxth	r2, r3
    2b22:	1d3b      	adds	r3, r7, #4
    2b24:	811a      	strh	r2, [r3, #8]
    2b26:	23c0      	movs	r3, #192	; 0xc0
    2b28:	059b      	lsls	r3, r3, #22
    2b2a:	88db      	ldrh	r3, [r3, #6]
    2b2c:	b29a      	uxth	r2, r3
    2b2e:	1d3b      	adds	r3, r7, #4
    2b30:	815a      	strh	r2, [r3, #10]
    2b32:	1d3b      	adds	r3, r7, #4
    2b34:	2208      	movs	r2, #8
    2b36:	819a      	strh	r2, [r3, #12]
    2b38:	1d3b      	adds	r3, r7, #4
    2b3a:	2245      	movs	r2, #69	; 0x45
    2b3c:	81da      	strh	r2, [r3, #14]
    2b3e:	1d3b      	adds	r3, r7, #4
    2b40:	22f0      	movs	r2, #240	; 0xf0
    2b42:	0192      	lsls	r2, r2, #6
    2b44:	821a      	strh	r2, [r3, #16]
    2b46:	4b60      	ldr	r3, [pc, #384]	; (2cc8 <Request_ICMP+0x1d8>)
    2b48:	881a      	ldrh	r2, [r3, #0]
    2b4a:	1d3b      	adds	r3, r7, #4
    2b4c:	825a      	strh	r2, [r3, #18]
    2b4e:	1d3b      	adds	r3, r7, #4
    2b50:	2200      	movs	r2, #0
    2b52:	829a      	strh	r2, [r3, #20]
    2b54:	1d3b      	adds	r3, r7, #4
    2b56:	22c0      	movs	r2, #192	; 0xc0
    2b58:	0052      	lsls	r2, r2, #1
    2b5a:	82da      	strh	r2, [r3, #22]
    2b5c:	1d3b      	adds	r3, r7, #4
    2b5e:	2200      	movs	r2, #0
    2b60:	831a      	strh	r2, [r3, #24]
    2b62:	4b5a      	ldr	r3, [pc, #360]	; (2ccc <Request_ICMP+0x1dc>)
    2b64:	881a      	ldrh	r2, [r3, #0]
    2b66:	1d3b      	adds	r3, r7, #4
    2b68:	835a      	strh	r2, [r3, #26]
    2b6a:	4b58      	ldr	r3, [pc, #352]	; (2ccc <Request_ICMP+0x1dc>)
    2b6c:	885a      	ldrh	r2, [r3, #2]
    2b6e:	1d3b      	adds	r3, r7, #4
    2b70:	839a      	strh	r2, [r3, #28]
    2b72:	4b54      	ldr	r3, [pc, #336]	; (2cc4 <Request_ICMP+0x1d4>)
    2b74:	88da      	ldrh	r2, [r3, #6]
    2b76:	1d3b      	adds	r3, r7, #4
    2b78:	83da      	strh	r2, [r3, #30]
    2b7a:	4b52      	ldr	r3, [pc, #328]	; (2cc4 <Request_ICMP+0x1d4>)
    2b7c:	891a      	ldrh	r2, [r3, #8]
    2b7e:	1d3b      	adds	r3, r7, #4
    2b80:	841a      	strh	r2, [r3, #32]
    2b82:	1d3b      	adds	r3, r7, #4
    2b84:	0018      	movs	r0, r3
    2b86:	f7ff ff53 	bl	2a30 <CheckSum_IP>
    2b8a:	0003      	movs	r3, r0
    2b8c:	001a      	movs	r2, r3
    2b8e:	1d3b      	adds	r3, r7, #4
    2b90:	831a      	strh	r2, [r3, #24]
    2b92:	1d3b      	adds	r3, r7, #4
    2b94:	2208      	movs	r2, #8
    2b96:	845a      	strh	r2, [r3, #34]	; 0x22
    2b98:	1d3b      	adds	r3, r7, #4
    2b9a:	2200      	movs	r2, #0
    2b9c:	849a      	strh	r2, [r3, #36]	; 0x24
    2b9e:	1d3b      	adds	r3, r7, #4
    2ba0:	2202      	movs	r2, #2
    2ba2:	84da      	strh	r2, [r3, #38]	; 0x26
    2ba4:	4b4a      	ldr	r3, [pc, #296]	; (2cd0 <Request_ICMP+0x1e0>)
    2ba6:	881a      	ldrh	r2, [r3, #0]
    2ba8:	1d3b      	adds	r3, r7, #4
    2baa:	851a      	strh	r2, [r3, #40]	; 0x28
    2bac:	2300      	movs	r3, #0
    2bae:	657b      	str	r3, [r7, #84]	; 0x54
    2bb0:	2300      	movs	r3, #0
    2bb2:	653b      	str	r3, [r7, #80]	; 0x50
    2bb4:	e021      	b.n	2bfa <Request_ICMP+0x10a>
    2bb6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2bb8:	b2db      	uxtb	r3, r3
    2bba:	3361      	adds	r3, #97	; 0x61
    2bbc:	b2da      	uxtb	r2, r3
    2bbe:	003b      	movs	r3, r7
    2bc0:	701a      	strb	r2, [r3, #0]
    2bc2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2bc4:	b2db      	uxtb	r3, r3
    2bc6:	3362      	adds	r3, #98	; 0x62
    2bc8:	b2da      	uxtb	r2, r3
    2bca:	003b      	movs	r3, r7
    2bcc:	705a      	strb	r2, [r3, #1]
    2bce:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2bd0:	3315      	adds	r3, #21
    2bd2:	001a      	movs	r2, r3
    2bd4:	003b      	movs	r3, r7
    2bd6:	785b      	ldrb	r3, [r3, #1]
    2bd8:	021b      	lsls	r3, r3, #8
    2bda:	b219      	sxth	r1, r3
    2bdc:	003b      	movs	r3, r7
    2bde:	781b      	ldrb	r3, [r3, #0]
    2be0:	b21b      	sxth	r3, r3
    2be2:	430b      	orrs	r3, r1
    2be4:	b21b      	sxth	r3, r3
    2be6:	b299      	uxth	r1, r3
    2be8:	1d3b      	adds	r3, r7, #4
    2bea:	0052      	lsls	r2, r2, #1
    2bec:	52d1      	strh	r1, [r2, r3]
    2bee:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2bf0:	3302      	adds	r3, #2
    2bf2:	657b      	str	r3, [r7, #84]	; 0x54
    2bf4:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2bf6:	3301      	adds	r3, #1
    2bf8:	653b      	str	r3, [r7, #80]	; 0x50
    2bfa:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2bfc:	2b1f      	cmp	r3, #31
    2bfe:	d9da      	bls.n	2bb6 <Request_ICMP+0xc6>
    2c00:	1d3b      	adds	r3, r7, #4
    2c02:	0019      	movs	r1, r3
    2c04:	2014      	movs	r0, #20
    2c06:	f7ff ff41 	bl	2a8c <CheckSum_ICMP>
    2c0a:	0003      	movs	r3, r0
    2c0c:	001a      	movs	r2, r3
    2c0e:	1d3b      	adds	r3, r7, #4
    2c10:	849a      	strh	r2, [r3, #36]	; 0x24
    2c12:	1d3b      	adds	r3, r7, #4
    2c14:	214a      	movs	r1, #74	; 0x4a
    2c16:	0018      	movs	r0, r3
    2c18:	f7ff fca2 	bl	2560 <SendPacket>
    2c1c:	4b2a      	ldr	r3, [pc, #168]	; (2cc8 <Request_ICMP+0x1d8>)
    2c1e:	881b      	ldrh	r3, [r3, #0]
    2c20:	0a1b      	lsrs	r3, r3, #8
    2c22:	b29b      	uxth	r3, r3
    2c24:	b2da      	uxtb	r2, r3
    2c26:	003b      	movs	r3, r7
    2c28:	701a      	strb	r2, [r3, #0]
    2c2a:	4b27      	ldr	r3, [pc, #156]	; (2cc8 <Request_ICMP+0x1d8>)
    2c2c:	881b      	ldrh	r3, [r3, #0]
    2c2e:	b2da      	uxtb	r2, r3
    2c30:	003b      	movs	r3, r7
    2c32:	705a      	strb	r2, [r3, #1]
    2c34:	003b      	movs	r3, r7
    2c36:	781b      	ldrb	r3, [r3, #0]
    2c38:	3301      	adds	r3, #1
    2c3a:	b2da      	uxtb	r2, r3
    2c3c:	003b      	movs	r3, r7
    2c3e:	701a      	strb	r2, [r3, #0]
    2c40:	003b      	movs	r3, r7
    2c42:	781b      	ldrb	r3, [r3, #0]
    2c44:	2b00      	cmp	r3, #0
    2c46:	d105      	bne.n	2c54 <Request_ICMP+0x164>
    2c48:	003b      	movs	r3, r7
    2c4a:	785b      	ldrb	r3, [r3, #1]
    2c4c:	3301      	adds	r3, #1
    2c4e:	b2da      	uxtb	r2, r3
    2c50:	003b      	movs	r3, r7
    2c52:	705a      	strb	r2, [r3, #1]
    2c54:	003b      	movs	r3, r7
    2c56:	781b      	ldrb	r3, [r3, #0]
    2c58:	021b      	lsls	r3, r3, #8
    2c5a:	b21a      	sxth	r2, r3
    2c5c:	003b      	movs	r3, r7
    2c5e:	785b      	ldrb	r3, [r3, #1]
    2c60:	b21b      	sxth	r3, r3
    2c62:	4313      	orrs	r3, r2
    2c64:	b21b      	sxth	r3, r3
    2c66:	b29a      	uxth	r2, r3
    2c68:	4b17      	ldr	r3, [pc, #92]	; (2cc8 <Request_ICMP+0x1d8>)
    2c6a:	801a      	strh	r2, [r3, #0]
    2c6c:	4b18      	ldr	r3, [pc, #96]	; (2cd0 <Request_ICMP+0x1e0>)
    2c6e:	881b      	ldrh	r3, [r3, #0]
    2c70:	0a1b      	lsrs	r3, r3, #8
    2c72:	b29b      	uxth	r3, r3
    2c74:	b2da      	uxtb	r2, r3
    2c76:	003b      	movs	r3, r7
    2c78:	701a      	strb	r2, [r3, #0]
    2c7a:	4b15      	ldr	r3, [pc, #84]	; (2cd0 <Request_ICMP+0x1e0>)
    2c7c:	881b      	ldrh	r3, [r3, #0]
    2c7e:	b2da      	uxtb	r2, r3
    2c80:	003b      	movs	r3, r7
    2c82:	705a      	strb	r2, [r3, #1]
    2c84:	003b      	movs	r3, r7
    2c86:	781b      	ldrb	r3, [r3, #0]
    2c88:	3301      	adds	r3, #1
    2c8a:	b2da      	uxtb	r2, r3
    2c8c:	003b      	movs	r3, r7
    2c8e:	701a      	strb	r2, [r3, #0]
    2c90:	003b      	movs	r3, r7
    2c92:	781b      	ldrb	r3, [r3, #0]
    2c94:	2b00      	cmp	r3, #0
    2c96:	d105      	bne.n	2ca4 <Request_ICMP+0x1b4>
    2c98:	003b      	movs	r3, r7
    2c9a:	785b      	ldrb	r3, [r3, #1]
    2c9c:	3301      	adds	r3, #1
    2c9e:	b2da      	uxtb	r2, r3
    2ca0:	003b      	movs	r3, r7
    2ca2:	705a      	strb	r2, [r3, #1]
    2ca4:	003b      	movs	r3, r7
    2ca6:	781b      	ldrb	r3, [r3, #0]
    2ca8:	021b      	lsls	r3, r3, #8
    2caa:	b21a      	sxth	r2, r3
    2cac:	003b      	movs	r3, r7
    2cae:	785b      	ldrb	r3, [r3, #1]
    2cb0:	b21b      	sxth	r3, r3
    2cb2:	4313      	orrs	r3, r2
    2cb4:	b21b      	sxth	r3, r3
    2cb6:	b29a      	uxth	r2, r3
    2cb8:	4b05      	ldr	r3, [pc, #20]	; (2cd0 <Request_ICMP+0x1e0>)
    2cba:	801a      	strh	r2, [r3, #0]
    2cbc:	46c0      	nop			; (mov r8, r8)
    2cbe:	46bd      	mov	sp, r7
    2cc0:	b016      	add	sp, #88	; 0x58
    2cc2:	bd80      	pop	{r7, pc}
    2cc4:	20004d1c 	.word	0x20004d1c
    2cc8:	20004d30 	.word	0x20004d30
    2ccc:	20000010 	.word	0x20000010
    2cd0:	20004d32 	.word	0x20004d32

00002cd4 <Answear_ICMP>:
    2cd4:	b580      	push	{r7, lr}
    2cd6:	b082      	sub	sp, #8
    2cd8:	af00      	add	r7, sp, #0
    2cda:	4b53      	ldr	r3, [pc, #332]	; (2e28 <Answear_ICMP+0x154>)
    2cdc:	4a53      	ldr	r2, [pc, #332]	; (2e2c <Answear_ICMP+0x158>)
    2cde:	5a9a      	ldrh	r2, [r3, r2]
    2ce0:	1cbb      	adds	r3, r7, #2
    2ce2:	3a26      	subs	r2, #38	; 0x26
    2ce4:	801a      	strh	r2, [r3, #0]
    2ce6:	1cbb      	adds	r3, r7, #2
    2ce8:	881b      	ldrh	r3, [r3, #0]
    2cea:	2201      	movs	r2, #1
    2cec:	4013      	ands	r3, r2
    2cee:	d017      	beq.n	2d20 <Answear_ICMP+0x4c>
    2cf0:	1cbb      	adds	r3, r7, #2
    2cf2:	881b      	ldrh	r3, [r3, #0]
    2cf4:	3301      	adds	r3, #1
    2cf6:	105a      	asrs	r2, r3, #1
    2cf8:	1cbb      	adds	r3, r7, #2
    2cfa:	801a      	strh	r2, [r3, #0]
    2cfc:	1cbb      	adds	r3, r7, #2
    2cfe:	881b      	ldrh	r3, [r3, #0]
    2d00:	3310      	adds	r3, #16
    2d02:	001a      	movs	r2, r3
    2d04:	1cbb      	adds	r3, r7, #2
    2d06:	881b      	ldrh	r3, [r3, #0]
    2d08:	3310      	adds	r3, #16
    2d0a:	0019      	movs	r1, r3
    2d0c:	4b46      	ldr	r3, [pc, #280]	; (2e28 <Answear_ICMP+0x154>)
    2d0e:	0049      	lsls	r1, r1, #1
    2d10:	5acb      	ldrh	r3, [r1, r3]
    2d12:	21ff      	movs	r1, #255	; 0xff
    2d14:	400b      	ands	r3, r1
    2d16:	b299      	uxth	r1, r3
    2d18:	4b43      	ldr	r3, [pc, #268]	; (2e28 <Answear_ICMP+0x154>)
    2d1a:	0052      	lsls	r2, r2, #1
    2d1c:	52d1      	strh	r1, [r2, r3]
    2d1e:	e004      	b.n	2d2a <Answear_ICMP+0x56>
    2d20:	1cbb      	adds	r3, r7, #2
    2d22:	1cba      	adds	r2, r7, #2
    2d24:	8812      	ldrh	r2, [r2, #0]
    2d26:	0852      	lsrs	r2, r2, #1
    2d28:	801a      	strh	r2, [r3, #0]
    2d2a:	4b3f      	ldr	r3, [pc, #252]	; (2e28 <Answear_ICMP+0x154>)
    2d2c:	88da      	ldrh	r2, [r3, #6]
    2d2e:	4b40      	ldr	r3, [pc, #256]	; (2e30 <Answear_ICMP+0x15c>)
    2d30:	801a      	strh	r2, [r3, #0]
    2d32:	4b3d      	ldr	r3, [pc, #244]	; (2e28 <Answear_ICMP+0x154>)
    2d34:	891a      	ldrh	r2, [r3, #8]
    2d36:	4b3e      	ldr	r3, [pc, #248]	; (2e30 <Answear_ICMP+0x15c>)
    2d38:	805a      	strh	r2, [r3, #2]
    2d3a:	4b3b      	ldr	r3, [pc, #236]	; (2e28 <Answear_ICMP+0x154>)
    2d3c:	895a      	ldrh	r2, [r3, #10]
    2d3e:	4b3c      	ldr	r3, [pc, #240]	; (2e30 <Answear_ICMP+0x15c>)
    2d40:	809a      	strh	r2, [r3, #4]
    2d42:	23c0      	movs	r3, #192	; 0xc0
    2d44:	059b      	lsls	r3, r3, #22
    2d46:	885b      	ldrh	r3, [r3, #2]
    2d48:	b29a      	uxth	r2, r3
    2d4a:	4b39      	ldr	r3, [pc, #228]	; (2e30 <Answear_ICMP+0x15c>)
    2d4c:	80da      	strh	r2, [r3, #6]
    2d4e:	23c0      	movs	r3, #192	; 0xc0
    2d50:	059b      	lsls	r3, r3, #22
    2d52:	889b      	ldrh	r3, [r3, #4]
    2d54:	b29a      	uxth	r2, r3
    2d56:	4b36      	ldr	r3, [pc, #216]	; (2e30 <Answear_ICMP+0x15c>)
    2d58:	811a      	strh	r2, [r3, #8]
    2d5a:	23c0      	movs	r3, #192	; 0xc0
    2d5c:	059b      	lsls	r3, r3, #22
    2d5e:	88db      	ldrh	r3, [r3, #6]
    2d60:	b29a      	uxth	r2, r3
    2d62:	4b33      	ldr	r3, [pc, #204]	; (2e30 <Answear_ICMP+0x15c>)
    2d64:	815a      	strh	r2, [r3, #10]
    2d66:	4b30      	ldr	r3, [pc, #192]	; (2e28 <Answear_ICMP+0x154>)
    2d68:	899a      	ldrh	r2, [r3, #12]
    2d6a:	4b31      	ldr	r3, [pc, #196]	; (2e30 <Answear_ICMP+0x15c>)
    2d6c:	819a      	strh	r2, [r3, #12]
    2d6e:	2307      	movs	r3, #7
    2d70:	607b      	str	r3, [r7, #4]
    2d72:	e00a      	b.n	2d8a <Answear_ICMP+0xb6>
    2d74:	4b2c      	ldr	r3, [pc, #176]	; (2e28 <Answear_ICMP+0x154>)
    2d76:	687a      	ldr	r2, [r7, #4]
    2d78:	0052      	lsls	r2, r2, #1
    2d7a:	5ad1      	ldrh	r1, [r2, r3]
    2d7c:	4b2c      	ldr	r3, [pc, #176]	; (2e30 <Answear_ICMP+0x15c>)
    2d7e:	687a      	ldr	r2, [r7, #4]
    2d80:	0052      	lsls	r2, r2, #1
    2d82:	52d1      	strh	r1, [r2, r3]
    2d84:	687b      	ldr	r3, [r7, #4]
    2d86:	3301      	adds	r3, #1
    2d88:	607b      	str	r3, [r7, #4]
    2d8a:	687b      	ldr	r3, [r7, #4]
    2d8c:	2b0b      	cmp	r3, #11
    2d8e:	d9f1      	bls.n	2d74 <Answear_ICMP+0xa0>
    2d90:	4b25      	ldr	r3, [pc, #148]	; (2e28 <Answear_ICMP+0x154>)
    2d92:	0018      	movs	r0, r3
    2d94:	f7ff fe4c 	bl	2a30 <CheckSum_IP>
    2d98:	0003      	movs	r3, r0
    2d9a:	001a      	movs	r2, r3
    2d9c:	4b24      	ldr	r3, [pc, #144]	; (2e30 <Answear_ICMP+0x15c>)
    2d9e:	831a      	strh	r2, [r3, #24]
    2da0:	4b21      	ldr	r3, [pc, #132]	; (2e28 <Answear_ICMP+0x154>)
    2da2:	8bda      	ldrh	r2, [r3, #30]
    2da4:	4b22      	ldr	r3, [pc, #136]	; (2e30 <Answear_ICMP+0x15c>)
    2da6:	835a      	strh	r2, [r3, #26]
    2da8:	4b1f      	ldr	r3, [pc, #124]	; (2e28 <Answear_ICMP+0x154>)
    2daa:	8c1a      	ldrh	r2, [r3, #32]
    2dac:	4b20      	ldr	r3, [pc, #128]	; (2e30 <Answear_ICMP+0x15c>)
    2dae:	839a      	strh	r2, [r3, #28]
    2db0:	4b1d      	ldr	r3, [pc, #116]	; (2e28 <Answear_ICMP+0x154>)
    2db2:	8b5a      	ldrh	r2, [r3, #26]
    2db4:	4b1e      	ldr	r3, [pc, #120]	; (2e30 <Answear_ICMP+0x15c>)
    2db6:	83da      	strh	r2, [r3, #30]
    2db8:	4b1b      	ldr	r3, [pc, #108]	; (2e28 <Answear_ICMP+0x154>)
    2dba:	8b9a      	ldrh	r2, [r3, #28]
    2dbc:	4b1c      	ldr	r3, [pc, #112]	; (2e30 <Answear_ICMP+0x15c>)
    2dbe:	841a      	strh	r2, [r3, #32]
    2dc0:	4b1b      	ldr	r3, [pc, #108]	; (2e30 <Answear_ICMP+0x15c>)
    2dc2:	2200      	movs	r2, #0
    2dc4:	845a      	strh	r2, [r3, #34]	; 0x22
    2dc6:	4b18      	ldr	r3, [pc, #96]	; (2e28 <Answear_ICMP+0x154>)
    2dc8:	2200      	movs	r2, #0
    2dca:	845a      	strh	r2, [r3, #34]	; 0x22
    2dcc:	4a16      	ldr	r2, [pc, #88]	; (2e28 <Answear_ICMP+0x154>)
    2dce:	1cbb      	adds	r3, r7, #2
    2dd0:	881b      	ldrh	r3, [r3, #0]
    2dd2:	0011      	movs	r1, r2
    2dd4:	0018      	movs	r0, r3
    2dd6:	f7ff fe59 	bl	2a8c <CheckSum_ICMP>
    2dda:	0003      	movs	r3, r0
    2ddc:	001a      	movs	r2, r3
    2dde:	4b14      	ldr	r3, [pc, #80]	; (2e30 <Answear_ICMP+0x15c>)
    2de0:	849a      	strh	r2, [r3, #36]	; 0x24
    2de2:	2313      	movs	r3, #19
    2de4:	607b      	str	r3, [r7, #4]
    2de6:	e00a      	b.n	2dfe <Answear_ICMP+0x12a>
    2de8:	4b0f      	ldr	r3, [pc, #60]	; (2e28 <Answear_ICMP+0x154>)
    2dea:	687a      	ldr	r2, [r7, #4]
    2dec:	0052      	lsls	r2, r2, #1
    2dee:	5ad1      	ldrh	r1, [r2, r3]
    2df0:	4b0f      	ldr	r3, [pc, #60]	; (2e30 <Answear_ICMP+0x15c>)
    2df2:	687a      	ldr	r2, [r7, #4]
    2df4:	0052      	lsls	r2, r2, #1
    2df6:	52d1      	strh	r1, [r2, r3]
    2df8:	687b      	ldr	r3, [r7, #4]
    2dfa:	3301      	adds	r3, #1
    2dfc:	607b      	str	r3, [r7, #4]
    2dfe:	1cbb      	adds	r3, r7, #2
    2e00:	881b      	ldrh	r3, [r3, #0]
    2e02:	3311      	adds	r3, #17
    2e04:	001a      	movs	r2, r3
    2e06:	687b      	ldr	r3, [r7, #4]
    2e08:	429a      	cmp	r2, r3
    2e0a:	d8ed      	bhi.n	2de8 <Answear_ICMP+0x114>
    2e0c:	1cbb      	adds	r3, r7, #2
    2e0e:	881b      	ldrh	r3, [r3, #0]
    2e10:	3311      	adds	r3, #17
    2e12:	005a      	lsls	r2, r3, #1
    2e14:	4b06      	ldr	r3, [pc, #24]	; (2e30 <Answear_ICMP+0x15c>)
    2e16:	0011      	movs	r1, r2
    2e18:	0018      	movs	r0, r3
    2e1a:	f7ff fba1 	bl	2560 <SendPacket>
    2e1e:	46c0      	nop			; (mov r8, r8)
    2e20:	46bd      	mov	sp, r7
    2e22:	b002      	add	sp, #8
    2e24:	bd80      	pop	{r7, pc}
    2e26:	46c0      	nop			; (mov r8, r8)
    2e28:	20004d38 	.word	0x20004d38
    2e2c:	000005dc 	.word	0x000005dc
    2e30:	20005344 	.word	0x20005344

00002e34 <DestinationUnreachable_ICMP>:
    2e34:	b580      	push	{r7, lr}
    2e36:	b096      	sub	sp, #88	; 0x58
    2e38:	af00      	add	r7, sp, #0
    2e3a:	4b61      	ldr	r3, [pc, #388]	; (2fc0 <DestinationUnreachable_ICMP+0x18c>)
    2e3c:	881a      	ldrh	r2, [r3, #0]
    2e3e:	2308      	movs	r3, #8
    2e40:	18fb      	adds	r3, r7, r3
    2e42:	801a      	strh	r2, [r3, #0]
    2e44:	4b5e      	ldr	r3, [pc, #376]	; (2fc0 <DestinationUnreachable_ICMP+0x18c>)
    2e46:	885a      	ldrh	r2, [r3, #2]
    2e48:	2308      	movs	r3, #8
    2e4a:	18fb      	adds	r3, r7, r3
    2e4c:	805a      	strh	r2, [r3, #2]
    2e4e:	4b5c      	ldr	r3, [pc, #368]	; (2fc0 <DestinationUnreachable_ICMP+0x18c>)
    2e50:	889a      	ldrh	r2, [r3, #4]
    2e52:	2308      	movs	r3, #8
    2e54:	18fb      	adds	r3, r7, r3
    2e56:	809a      	strh	r2, [r3, #4]
    2e58:	23c0      	movs	r3, #192	; 0xc0
    2e5a:	059b      	lsls	r3, r3, #22
    2e5c:	885b      	ldrh	r3, [r3, #2]
    2e5e:	b29a      	uxth	r2, r3
    2e60:	2308      	movs	r3, #8
    2e62:	18fb      	adds	r3, r7, r3
    2e64:	80da      	strh	r2, [r3, #6]
    2e66:	23c0      	movs	r3, #192	; 0xc0
    2e68:	059b      	lsls	r3, r3, #22
    2e6a:	889b      	ldrh	r3, [r3, #4]
    2e6c:	b29a      	uxth	r2, r3
    2e6e:	2308      	movs	r3, #8
    2e70:	18fb      	adds	r3, r7, r3
    2e72:	811a      	strh	r2, [r3, #8]
    2e74:	23c0      	movs	r3, #192	; 0xc0
    2e76:	059b      	lsls	r3, r3, #22
    2e78:	88db      	ldrh	r3, [r3, #6]
    2e7a:	b29a      	uxth	r2, r3
    2e7c:	2308      	movs	r3, #8
    2e7e:	18fb      	adds	r3, r7, r3
    2e80:	815a      	strh	r2, [r3, #10]
    2e82:	2308      	movs	r3, #8
    2e84:	18fb      	adds	r3, r7, r3
    2e86:	2208      	movs	r2, #8
    2e88:	819a      	strh	r2, [r3, #12]
    2e8a:	2308      	movs	r3, #8
    2e8c:	18fb      	adds	r3, r7, r3
    2e8e:	2245      	movs	r2, #69	; 0x45
    2e90:	81da      	strh	r2, [r3, #14]
    2e92:	2308      	movs	r3, #8
    2e94:	18fb      	adds	r3, r7, r3
    2e96:	22e0      	movs	r2, #224	; 0xe0
    2e98:	0192      	lsls	r2, r2, #6
    2e9a:	821a      	strh	r2, [r3, #16]
    2e9c:	4b49      	ldr	r3, [pc, #292]	; (2fc4 <DestinationUnreachable_ICMP+0x190>)
    2e9e:	881a      	ldrh	r2, [r3, #0]
    2ea0:	2308      	movs	r3, #8
    2ea2:	18fb      	adds	r3, r7, r3
    2ea4:	825a      	strh	r2, [r3, #18]
    2ea6:	2308      	movs	r3, #8
    2ea8:	18fb      	adds	r3, r7, r3
    2eaa:	2200      	movs	r2, #0
    2eac:	829a      	strh	r2, [r3, #20]
    2eae:	2308      	movs	r3, #8
    2eb0:	18fb      	adds	r3, r7, r3
    2eb2:	22c0      	movs	r2, #192	; 0xc0
    2eb4:	0052      	lsls	r2, r2, #1
    2eb6:	82da      	strh	r2, [r3, #22]
    2eb8:	2308      	movs	r3, #8
    2eba:	18fb      	adds	r3, r7, r3
    2ebc:	2200      	movs	r2, #0
    2ebe:	831a      	strh	r2, [r3, #24]
    2ec0:	4b41      	ldr	r3, [pc, #260]	; (2fc8 <DestinationUnreachable_ICMP+0x194>)
    2ec2:	881a      	ldrh	r2, [r3, #0]
    2ec4:	2308      	movs	r3, #8
    2ec6:	18fb      	adds	r3, r7, r3
    2ec8:	835a      	strh	r2, [r3, #26]
    2eca:	4b3f      	ldr	r3, [pc, #252]	; (2fc8 <DestinationUnreachable_ICMP+0x194>)
    2ecc:	885a      	ldrh	r2, [r3, #2]
    2ece:	2308      	movs	r3, #8
    2ed0:	18fb      	adds	r3, r7, r3
    2ed2:	839a      	strh	r2, [r3, #28]
    2ed4:	4b3a      	ldr	r3, [pc, #232]	; (2fc0 <DestinationUnreachable_ICMP+0x18c>)
    2ed6:	88da      	ldrh	r2, [r3, #6]
    2ed8:	2308      	movs	r3, #8
    2eda:	18fb      	adds	r3, r7, r3
    2edc:	83da      	strh	r2, [r3, #30]
    2ede:	4b38      	ldr	r3, [pc, #224]	; (2fc0 <DestinationUnreachable_ICMP+0x18c>)
    2ee0:	891a      	ldrh	r2, [r3, #8]
    2ee2:	2308      	movs	r3, #8
    2ee4:	18fb      	adds	r3, r7, r3
    2ee6:	841a      	strh	r2, [r3, #32]
    2ee8:	2308      	movs	r3, #8
    2eea:	18fb      	adds	r3, r7, r3
    2eec:	0018      	movs	r0, r3
    2eee:	f7ff fd9f 	bl	2a30 <CheckSum_IP>
    2ef2:	0003      	movs	r3, r0
    2ef4:	001a      	movs	r2, r3
    2ef6:	2308      	movs	r3, #8
    2ef8:	18fb      	adds	r3, r7, r3
    2efa:	831a      	strh	r2, [r3, #24]
    2efc:	2308      	movs	r3, #8
    2efe:	18fb      	adds	r3, r7, r3
    2f00:	4a32      	ldr	r2, [pc, #200]	; (2fcc <DestinationUnreachable_ICMP+0x198>)
    2f02:	845a      	strh	r2, [r3, #34]	; 0x22
    2f04:	2308      	movs	r3, #8
    2f06:	18fb      	adds	r3, r7, r3
    2f08:	2200      	movs	r2, #0
    2f0a:	849a      	strh	r2, [r3, #36]	; 0x24
    2f0c:	2308      	movs	r3, #8
    2f0e:	18fb      	adds	r3, r7, r3
    2f10:	2200      	movs	r2, #0
    2f12:	84da      	strh	r2, [r3, #38]	; 0x26
    2f14:	2308      	movs	r3, #8
    2f16:	18fb      	adds	r3, r7, r3
    2f18:	2200      	movs	r2, #0
    2f1a:	851a      	strh	r2, [r3, #40]	; 0x28
    2f1c:	2300      	movs	r3, #0
    2f1e:	657b      	str	r3, [r7, #84]	; 0x54
    2f20:	e00e      	b.n	2f40 <DestinationUnreachable_ICMP+0x10c>
    2f22:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2f24:	3315      	adds	r3, #21
    2f26:	001a      	movs	r2, r3
    2f28:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2f2a:	1dd9      	adds	r1, r3, #7
    2f2c:	4b28      	ldr	r3, [pc, #160]	; (2fd0 <DestinationUnreachable_ICMP+0x19c>)
    2f2e:	0049      	lsls	r1, r1, #1
    2f30:	5ac9      	ldrh	r1, [r1, r3]
    2f32:	2308      	movs	r3, #8
    2f34:	18fb      	adds	r3, r7, r3
    2f36:	0052      	lsls	r2, r2, #1
    2f38:	52d1      	strh	r1, [r2, r3]
    2f3a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2f3c:	3301      	adds	r3, #1
    2f3e:	657b      	str	r3, [r7, #84]	; 0x54
    2f40:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2f42:	2b0d      	cmp	r3, #13
    2f44:	d9ed      	bls.n	2f22 <DestinationUnreachable_ICMP+0xee>
    2f46:	2308      	movs	r3, #8
    2f48:	18fb      	adds	r3, r7, r3
    2f4a:	0019      	movs	r1, r3
    2f4c:	2012      	movs	r0, #18
    2f4e:	f7ff fd9d 	bl	2a8c <CheckSum_ICMP>
    2f52:	0003      	movs	r3, r0
    2f54:	001a      	movs	r2, r3
    2f56:	2308      	movs	r3, #8
    2f58:	18fb      	adds	r3, r7, r3
    2f5a:	849a      	strh	r2, [r3, #36]	; 0x24
    2f5c:	2308      	movs	r3, #8
    2f5e:	18fb      	adds	r3, r7, r3
    2f60:	2146      	movs	r1, #70	; 0x46
    2f62:	0018      	movs	r0, r3
    2f64:	f7ff fafc 	bl	2560 <SendPacket>
    2f68:	4b16      	ldr	r3, [pc, #88]	; (2fc4 <DestinationUnreachable_ICMP+0x190>)
    2f6a:	881b      	ldrh	r3, [r3, #0]
    2f6c:	0a1b      	lsrs	r3, r3, #8
    2f6e:	b29b      	uxth	r3, r3
    2f70:	b2da      	uxtb	r2, r3
    2f72:	1d3b      	adds	r3, r7, #4
    2f74:	701a      	strb	r2, [r3, #0]
    2f76:	4b13      	ldr	r3, [pc, #76]	; (2fc4 <DestinationUnreachable_ICMP+0x190>)
    2f78:	881b      	ldrh	r3, [r3, #0]
    2f7a:	b2da      	uxtb	r2, r3
    2f7c:	1d3b      	adds	r3, r7, #4
    2f7e:	705a      	strb	r2, [r3, #1]
    2f80:	1d3b      	adds	r3, r7, #4
    2f82:	781b      	ldrb	r3, [r3, #0]
    2f84:	3301      	adds	r3, #1
    2f86:	b2da      	uxtb	r2, r3
    2f88:	1d3b      	adds	r3, r7, #4
    2f8a:	701a      	strb	r2, [r3, #0]
    2f8c:	1d3b      	adds	r3, r7, #4
    2f8e:	781b      	ldrb	r3, [r3, #0]
    2f90:	2b00      	cmp	r3, #0
    2f92:	d105      	bne.n	2fa0 <DestinationUnreachable_ICMP+0x16c>
    2f94:	1d3b      	adds	r3, r7, #4
    2f96:	785b      	ldrb	r3, [r3, #1]
    2f98:	3301      	adds	r3, #1
    2f9a:	b2da      	uxtb	r2, r3
    2f9c:	1d3b      	adds	r3, r7, #4
    2f9e:	705a      	strb	r2, [r3, #1]
    2fa0:	1d3b      	adds	r3, r7, #4
    2fa2:	781b      	ldrb	r3, [r3, #0]
    2fa4:	021b      	lsls	r3, r3, #8
    2fa6:	b21a      	sxth	r2, r3
    2fa8:	1d3b      	adds	r3, r7, #4
    2faa:	785b      	ldrb	r3, [r3, #1]
    2fac:	b21b      	sxth	r3, r3
    2fae:	4313      	orrs	r3, r2
    2fb0:	b21b      	sxth	r3, r3
    2fb2:	b29a      	uxth	r2, r3
    2fb4:	4b03      	ldr	r3, [pc, #12]	; (2fc4 <DestinationUnreachable_ICMP+0x190>)
    2fb6:	801a      	strh	r2, [r3, #0]
    2fb8:	46c0      	nop			; (mov r8, r8)
    2fba:	46bd      	mov	sp, r7
    2fbc:	b016      	add	sp, #88	; 0x58
    2fbe:	bd80      	pop	{r7, pc}
    2fc0:	20004d1c 	.word	0x20004d1c
    2fc4:	20004d30 	.word	0x20004d30
    2fc8:	20000010 	.word	0x20000010
    2fcc:	00000303 	.word	0x00000303
    2fd0:	20004d38 	.word	0x20004d38

00002fd4 <Send_UDP>:
    2fd4:	b590      	push	{r4, r7, lr}
    2fd6:	b089      	sub	sp, #36	; 0x24
    2fd8:	af00      	add	r7, sp, #0
    2fda:	6078      	str	r0, [r7, #4]
    2fdc:	6039      	str	r1, [r7, #0]
    2fde:	4b86      	ldr	r3, [pc, #536]	; (31f8 <Send_UDP+0x224>)
    2fe0:	881a      	ldrh	r2, [r3, #0]
    2fe2:	4b86      	ldr	r3, [pc, #536]	; (31fc <Send_UDP+0x228>)
    2fe4:	801a      	strh	r2, [r3, #0]
    2fe6:	4b84      	ldr	r3, [pc, #528]	; (31f8 <Send_UDP+0x224>)
    2fe8:	885a      	ldrh	r2, [r3, #2]
    2fea:	4b84      	ldr	r3, [pc, #528]	; (31fc <Send_UDP+0x228>)
    2fec:	805a      	strh	r2, [r3, #2]
    2fee:	4b82      	ldr	r3, [pc, #520]	; (31f8 <Send_UDP+0x224>)
    2ff0:	889a      	ldrh	r2, [r3, #4]
    2ff2:	4b82      	ldr	r3, [pc, #520]	; (31fc <Send_UDP+0x228>)
    2ff4:	809a      	strh	r2, [r3, #4]
    2ff6:	23c0      	movs	r3, #192	; 0xc0
    2ff8:	059b      	lsls	r3, r3, #22
    2ffa:	885b      	ldrh	r3, [r3, #2]
    2ffc:	b29a      	uxth	r2, r3
    2ffe:	4b7f      	ldr	r3, [pc, #508]	; (31fc <Send_UDP+0x228>)
    3000:	80da      	strh	r2, [r3, #6]
    3002:	23c0      	movs	r3, #192	; 0xc0
    3004:	059b      	lsls	r3, r3, #22
    3006:	889b      	ldrh	r3, [r3, #4]
    3008:	b29a      	uxth	r2, r3
    300a:	4b7c      	ldr	r3, [pc, #496]	; (31fc <Send_UDP+0x228>)
    300c:	811a      	strh	r2, [r3, #8]
    300e:	23c0      	movs	r3, #192	; 0xc0
    3010:	059b      	lsls	r3, r3, #22
    3012:	88db      	ldrh	r3, [r3, #6]
    3014:	b29a      	uxth	r2, r3
    3016:	4b79      	ldr	r3, [pc, #484]	; (31fc <Send_UDP+0x228>)
    3018:	815a      	strh	r2, [r3, #10]
    301a:	4b78      	ldr	r3, [pc, #480]	; (31fc <Send_UDP+0x228>)
    301c:	2208      	movs	r2, #8
    301e:	819a      	strh	r2, [r3, #12]
    3020:	4b76      	ldr	r3, [pc, #472]	; (31fc <Send_UDP+0x228>)
    3022:	2245      	movs	r2, #69	; 0x45
    3024:	81da      	strh	r2, [r3, #14]
    3026:	4b75      	ldr	r3, [pc, #468]	; (31fc <Send_UDP+0x228>)
    3028:	22f0      	movs	r2, #240	; 0xf0
    302a:	0192      	lsls	r2, r2, #6
    302c:	821a      	strh	r2, [r3, #16]
    302e:	4b74      	ldr	r3, [pc, #464]	; (3200 <Send_UDP+0x22c>)
    3030:	881a      	ldrh	r2, [r3, #0]
    3032:	4b72      	ldr	r3, [pc, #456]	; (31fc <Send_UDP+0x228>)
    3034:	825a      	strh	r2, [r3, #18]
    3036:	4b71      	ldr	r3, [pc, #452]	; (31fc <Send_UDP+0x228>)
    3038:	2200      	movs	r2, #0
    303a:	829a      	strh	r2, [r3, #20]
    303c:	4b6f      	ldr	r3, [pc, #444]	; (31fc <Send_UDP+0x228>)
    303e:	228c      	movs	r2, #140	; 0x8c
    3040:	0152      	lsls	r2, r2, #5
    3042:	82da      	strh	r2, [r3, #22]
    3044:	4b6d      	ldr	r3, [pc, #436]	; (31fc <Send_UDP+0x228>)
    3046:	2200      	movs	r2, #0
    3048:	831a      	strh	r2, [r3, #24]
    304a:	4b6e      	ldr	r3, [pc, #440]	; (3204 <Send_UDP+0x230>)
    304c:	881a      	ldrh	r2, [r3, #0]
    304e:	4b6b      	ldr	r3, [pc, #428]	; (31fc <Send_UDP+0x228>)
    3050:	835a      	strh	r2, [r3, #26]
    3052:	4b6c      	ldr	r3, [pc, #432]	; (3204 <Send_UDP+0x230>)
    3054:	885a      	ldrh	r2, [r3, #2]
    3056:	4b69      	ldr	r3, [pc, #420]	; (31fc <Send_UDP+0x228>)
    3058:	839a      	strh	r2, [r3, #28]
    305a:	4b67      	ldr	r3, [pc, #412]	; (31f8 <Send_UDP+0x224>)
    305c:	88da      	ldrh	r2, [r3, #6]
    305e:	4b67      	ldr	r3, [pc, #412]	; (31fc <Send_UDP+0x228>)
    3060:	83da      	strh	r2, [r3, #30]
    3062:	4b65      	ldr	r3, [pc, #404]	; (31f8 <Send_UDP+0x224>)
    3064:	891a      	ldrh	r2, [r3, #8]
    3066:	4b65      	ldr	r3, [pc, #404]	; (31fc <Send_UDP+0x228>)
    3068:	841a      	strh	r2, [r3, #32]
    306a:	2316      	movs	r3, #22
    306c:	18fb      	adds	r3, r7, r3
    306e:	22fb      	movs	r2, #251	; 0xfb
    3070:	0052      	lsls	r2, r2, #1
    3072:	801a      	strh	r2, [r3, #0]
    3074:	2316      	movs	r3, #22
    3076:	18fb      	adds	r3, r7, r3
    3078:	2216      	movs	r2, #22
    307a:	18ba      	adds	r2, r7, r2
    307c:	8812      	ldrh	r2, [r2, #0]
    307e:	ba52      	rev16	r2, r2
    3080:	801a      	strh	r2, [r3, #0]
    3082:	4b61      	ldr	r3, [pc, #388]	; (3208 <Send_UDP+0x234>)
    3084:	881a      	ldrh	r2, [r3, #0]
    3086:	2314      	movs	r3, #20
    3088:	18fb      	adds	r3, r7, r3
    308a:	ba52      	rev16	r2, r2
    308c:	801a      	strh	r2, [r3, #0]
    308e:	4b5b      	ldr	r3, [pc, #364]	; (31fc <Send_UDP+0x228>)
    3090:	2216      	movs	r2, #22
    3092:	18ba      	adds	r2, r7, r2
    3094:	8812      	ldrh	r2, [r2, #0]
    3096:	845a      	strh	r2, [r3, #34]	; 0x22
    3098:	4b58      	ldr	r3, [pc, #352]	; (31fc <Send_UDP+0x228>)
    309a:	2214      	movs	r2, #20
    309c:	18ba      	adds	r2, r7, r2
    309e:	8812      	ldrh	r2, [r2, #0]
    30a0:	849a      	strh	r2, [r3, #36]	; 0x24
    30a2:	4b56      	ldr	r3, [pc, #344]	; (31fc <Send_UDP+0x228>)
    30a4:	22c0      	movs	r2, #192	; 0xc0
    30a6:	0112      	lsls	r2, r2, #4
    30a8:	84da      	strh	r2, [r3, #38]	; 0x26
    30aa:	4b54      	ldr	r3, [pc, #336]	; (31fc <Send_UDP+0x228>)
    30ac:	2200      	movs	r2, #0
    30ae:	851a      	strh	r2, [r3, #40]	; 0x28
    30b0:	4b56      	ldr	r3, [pc, #344]	; (320c <Send_UDP+0x238>)
    30b2:	61bb      	str	r3, [r7, #24]
    30b4:	683a      	ldr	r2, [r7, #0]
    30b6:	23fe      	movs	r3, #254	; 0xfe
    30b8:	005b      	lsls	r3, r3, #1
    30ba:	429a      	cmp	r2, r3
    30bc:	dd02      	ble.n	30c4 <Send_UDP+0xf0>
    30be:	23fe      	movs	r3, #254	; 0xfe
    30c0:	005b      	lsls	r3, r3, #1
    30c2:	603b      	str	r3, [r7, #0]
    30c4:	2300      	movs	r3, #0
    30c6:	61fb      	str	r3, [r7, #28]
    30c8:	e00a      	b.n	30e0 <Send_UDP+0x10c>
    30ca:	69bb      	ldr	r3, [r7, #24]
    30cc:	1c5a      	adds	r2, r3, #1
    30ce:	61ba      	str	r2, [r7, #24]
    30d0:	687a      	ldr	r2, [r7, #4]
    30d2:	1c51      	adds	r1, r2, #1
    30d4:	6079      	str	r1, [r7, #4]
    30d6:	7812      	ldrb	r2, [r2, #0]
    30d8:	701a      	strb	r2, [r3, #0]
    30da:	69fb      	ldr	r3, [r7, #28]
    30dc:	3301      	adds	r3, #1
    30de:	61fb      	str	r3, [r7, #28]
    30e0:	683b      	ldr	r3, [r7, #0]
    30e2:	69fa      	ldr	r2, [r7, #28]
    30e4:	429a      	cmp	r2, r3
    30e6:	d3f0      	bcc.n	30ca <Send_UDP+0xf6>
    30e8:	683b      	ldr	r3, [r7, #0]
    30ea:	b29a      	uxth	r2, r3
    30ec:	2312      	movs	r3, #18
    30ee:	18fb      	adds	r3, r7, r3
    30f0:	321c      	adds	r2, #28
    30f2:	801a      	strh	r2, [r3, #0]
    30f4:	2312      	movs	r3, #18
    30f6:	18fb      	adds	r3, r7, r3
    30f8:	881b      	ldrh	r3, [r3, #0]
    30fa:	021b      	lsls	r3, r3, #8
    30fc:	b29a      	uxth	r2, r3
    30fe:	2312      	movs	r3, #18
    3100:	18fb      	adds	r3, r7, r3
    3102:	881b      	ldrh	r3, [r3, #0]
    3104:	0a1b      	lsrs	r3, r3, #8
    3106:	b29b      	uxth	r3, r3
    3108:	18d3      	adds	r3, r2, r3
    310a:	b29a      	uxth	r2, r3
    310c:	4b3b      	ldr	r3, [pc, #236]	; (31fc <Send_UDP+0x228>)
    310e:	821a      	strh	r2, [r3, #16]
    3110:	4b3a      	ldr	r3, [pc, #232]	; (31fc <Send_UDP+0x228>)
    3112:	0018      	movs	r0, r3
    3114:	f7ff fc8c 	bl	2a30 <CheckSum_IP>
    3118:	0003      	movs	r3, r0
    311a:	001a      	movs	r2, r3
    311c:	4b37      	ldr	r3, [pc, #220]	; (31fc <Send_UDP+0x228>)
    311e:	831a      	strh	r2, [r3, #24]
    3120:	683b      	ldr	r3, [r7, #0]
    3122:	b29a      	uxth	r2, r3
    3124:	2310      	movs	r3, #16
    3126:	18fb      	adds	r3, r7, r3
    3128:	3208      	adds	r2, #8
    312a:	801a      	strh	r2, [r3, #0]
    312c:	2310      	movs	r3, #16
    312e:	18fb      	adds	r3, r7, r3
    3130:	881b      	ldrh	r3, [r3, #0]
    3132:	021b      	lsls	r3, r3, #8
    3134:	b29a      	uxth	r2, r3
    3136:	2310      	movs	r3, #16
    3138:	18fb      	adds	r3, r7, r3
    313a:	881b      	ldrh	r3, [r3, #0]
    313c:	0a1b      	lsrs	r3, r3, #8
    313e:	b29b      	uxth	r3, r3
    3140:	18d3      	adds	r3, r2, r3
    3142:	b29a      	uxth	r2, r3
    3144:	4b2d      	ldr	r3, [pc, #180]	; (31fc <Send_UDP+0x228>)
    3146:	84da      	strh	r2, [r3, #38]	; 0x26
    3148:	683b      	ldr	r3, [r7, #0]
    314a:	b29b      	uxth	r3, r3
    314c:	3308      	adds	r3, #8
    314e:	b29b      	uxth	r3, r3
    3150:	220e      	movs	r2, #14
    3152:	18bc      	adds	r4, r7, r2
    3154:	4a29      	ldr	r2, [pc, #164]	; (31fc <Send_UDP+0x228>)
    3156:	0011      	movs	r1, r2
    3158:	0018      	movs	r0, r3
    315a:	f7ff fbb9 	bl	28d0 <CheckSum_UDP>
    315e:	0003      	movs	r3, r0
    3160:	8023      	strh	r3, [r4, #0]
    3162:	230e      	movs	r3, #14
    3164:	18fb      	adds	r3, r7, r3
    3166:	881b      	ldrh	r3, [r3, #0]
    3168:	021b      	lsls	r3, r3, #8
    316a:	b29a      	uxth	r2, r3
    316c:	230e      	movs	r3, #14
    316e:	18fb      	adds	r3, r7, r3
    3170:	881b      	ldrh	r3, [r3, #0]
    3172:	0a1b      	lsrs	r3, r3, #8
    3174:	b29b      	uxth	r3, r3
    3176:	18d3      	adds	r3, r2, r3
    3178:	b29a      	uxth	r2, r3
    317a:	4b20      	ldr	r3, [pc, #128]	; (31fc <Send_UDP+0x228>)
    317c:	851a      	strh	r2, [r3, #40]	; 0x28
    317e:	683b      	ldr	r3, [r7, #0]
    3180:	332a      	adds	r3, #42	; 0x2a
    3182:	001a      	movs	r2, r3
    3184:	4b1d      	ldr	r3, [pc, #116]	; (31fc <Send_UDP+0x228>)
    3186:	0011      	movs	r1, r2
    3188:	0018      	movs	r0, r3
    318a:	f7ff f9e9 	bl	2560 <SendPacket>
    318e:	4b1c      	ldr	r3, [pc, #112]	; (3200 <Send_UDP+0x22c>)
    3190:	881b      	ldrh	r3, [r3, #0]
    3192:	0a1b      	lsrs	r3, r3, #8
    3194:	b29b      	uxth	r3, r3
    3196:	b2da      	uxtb	r2, r3
    3198:	230c      	movs	r3, #12
    319a:	18fb      	adds	r3, r7, r3
    319c:	701a      	strb	r2, [r3, #0]
    319e:	4b18      	ldr	r3, [pc, #96]	; (3200 <Send_UDP+0x22c>)
    31a0:	881b      	ldrh	r3, [r3, #0]
    31a2:	b2da      	uxtb	r2, r3
    31a4:	230c      	movs	r3, #12
    31a6:	18fb      	adds	r3, r7, r3
    31a8:	705a      	strb	r2, [r3, #1]
    31aa:	230c      	movs	r3, #12
    31ac:	18fb      	adds	r3, r7, r3
    31ae:	781b      	ldrb	r3, [r3, #0]
    31b0:	3301      	adds	r3, #1
    31b2:	b2da      	uxtb	r2, r3
    31b4:	230c      	movs	r3, #12
    31b6:	18fb      	adds	r3, r7, r3
    31b8:	701a      	strb	r2, [r3, #0]
    31ba:	230c      	movs	r3, #12
    31bc:	18fb      	adds	r3, r7, r3
    31be:	781b      	ldrb	r3, [r3, #0]
    31c0:	2b00      	cmp	r3, #0
    31c2:	d107      	bne.n	31d4 <Send_UDP+0x200>
    31c4:	230c      	movs	r3, #12
    31c6:	18fb      	adds	r3, r7, r3
    31c8:	785b      	ldrb	r3, [r3, #1]
    31ca:	3301      	adds	r3, #1
    31cc:	b2da      	uxtb	r2, r3
    31ce:	230c      	movs	r3, #12
    31d0:	18fb      	adds	r3, r7, r3
    31d2:	705a      	strb	r2, [r3, #1]
    31d4:	230c      	movs	r3, #12
    31d6:	18fb      	adds	r3, r7, r3
    31d8:	781b      	ldrb	r3, [r3, #0]
    31da:	021b      	lsls	r3, r3, #8
    31dc:	b21a      	sxth	r2, r3
    31de:	230c      	movs	r3, #12
    31e0:	18fb      	adds	r3, r7, r3
    31e2:	785b      	ldrb	r3, [r3, #1]
    31e4:	b21b      	sxth	r3, r3
    31e6:	4313      	orrs	r3, r2
    31e8:	b21b      	sxth	r3, r3
    31ea:	b29a      	uxth	r2, r3
    31ec:	4b04      	ldr	r3, [pc, #16]	; (3200 <Send_UDP+0x22c>)
    31ee:	801a      	strh	r2, [r3, #0]
    31f0:	46c0      	nop			; (mov r8, r8)
    31f2:	46bd      	mov	sp, r7
    31f4:	b009      	add	sp, #36	; 0x24
    31f6:	bd90      	pop	{r4, r7, pc}
    31f8:	20004d1c 	.word	0x20004d1c
    31fc:	20005584 	.word	0x20005584
    3200:	20004d30 	.word	0x20004d30
    3204:	20000010 	.word	0x20000010
    3208:	20005318 	.word	0x20005318
    320c:	200055ae 	.word	0x200055ae

00003210 <PacketParser>:
    3210:	b580      	push	{r7, lr}
    3212:	b082      	sub	sp, #8
    3214:	af00      	add	r7, sp, #0
    3216:	4b4e      	ldr	r3, [pc, #312]	; (3350 <PacketParser+0x140>)
    3218:	899b      	ldrh	r3, [r3, #12]
    321a:	2b08      	cmp	r3, #8
    321c:	d005      	beq.n	322a <PacketParser+0x1a>
    321e:	22c1      	movs	r2, #193	; 0xc1
    3220:	00d2      	lsls	r2, r2, #3
    3222:	4293      	cmp	r3, r2
    3224:	d100      	bne.n	3228 <PacketParser+0x18>
    3226:	e070      	b.n	330a <PacketParser+0xfa>
    3228:	e08e      	b.n	3348 <PacketParser+0x138>
    322a:	4b49      	ldr	r3, [pc, #292]	; (3350 <PacketParser+0x140>)
    322c:	8b9a      	ldrh	r2, [r3, #28]
    322e:	4b49      	ldr	r3, [pc, #292]	; (3354 <PacketParser+0x144>)
    3230:	811a      	strh	r2, [r3, #8]
    3232:	4b47      	ldr	r3, [pc, #284]	; (3350 <PacketParser+0x140>)
    3234:	8bda      	ldrh	r2, [r3, #30]
    3236:	4b47      	ldr	r3, [pc, #284]	; (3354 <PacketParser+0x144>)
    3238:	80da      	strh	r2, [r3, #6]
    323a:	4b46      	ldr	r3, [pc, #280]	; (3354 <PacketParser+0x144>)
    323c:	895b      	ldrh	r3, [r3, #10]
    323e:	2b00      	cmp	r3, #0
    3240:	d100      	bne.n	3244 <PacketParser+0x34>
    3242:	e07c      	b.n	333e <PacketParser+0x12e>
    3244:	4b42      	ldr	r3, [pc, #264]	; (3350 <PacketParser+0x140>)
    3246:	8bda      	ldrh	r2, [r3, #30]
    3248:	4b43      	ldr	r3, [pc, #268]	; (3358 <PacketParser+0x148>)
    324a:	881b      	ldrh	r3, [r3, #0]
    324c:	429a      	cmp	r2, r3
    324e:	d000      	beq.n	3252 <PacketParser+0x42>
    3250:	e077      	b.n	3342 <PacketParser+0x132>
    3252:	4b3f      	ldr	r3, [pc, #252]	; (3350 <PacketParser+0x140>)
    3254:	8c1a      	ldrh	r2, [r3, #32]
    3256:	4b40      	ldr	r3, [pc, #256]	; (3358 <PacketParser+0x148>)
    3258:	885b      	ldrh	r3, [r3, #2]
    325a:	429a      	cmp	r2, r3
    325c:	d000      	beq.n	3260 <PacketParser+0x50>
    325e:	e070      	b.n	3342 <PacketParser+0x132>
    3260:	4b3b      	ldr	r3, [pc, #236]	; (3350 <PacketParser+0x140>)
    3262:	0018      	movs	r0, r3
    3264:	f7ff fbe4 	bl	2a30 <CheckSum_IP>
    3268:	0003      	movs	r3, r0
    326a:	001a      	movs	r2, r3
    326c:	4b38      	ldr	r3, [pc, #224]	; (3350 <PacketParser+0x140>)
    326e:	8b1b      	ldrh	r3, [r3, #24]
    3270:	429a      	cmp	r2, r3
    3272:	d000      	beq.n	3276 <PacketParser+0x66>
    3274:	e065      	b.n	3342 <PacketParser+0x132>
    3276:	4b36      	ldr	r3, [pc, #216]	; (3350 <PacketParser+0x140>)
    3278:	8adb      	ldrh	r3, [r3, #22]
    327a:	001a      	movs	r2, r3
    327c:	23ff      	movs	r3, #255	; 0xff
    327e:	021b      	lsls	r3, r3, #8
    3280:	401a      	ands	r2, r3
    3282:	2380      	movs	r3, #128	; 0x80
    3284:	005b      	lsls	r3, r3, #1
    3286:	429a      	cmp	r2, r3
    3288:	d110      	bne.n	32ac <PacketParser+0x9c>
    328a:	4b31      	ldr	r3, [pc, #196]	; (3350 <PacketParser+0x140>)
    328c:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    328e:	2b00      	cmp	r3, #0
    3290:	d105      	bne.n	329e <PacketParser+0x8e>
    3292:	4b32      	ldr	r3, [pc, #200]	; (335c <PacketParser+0x14c>)
    3294:	681b      	ldr	r3, [r3, #0]
    3296:	1c5a      	adds	r2, r3, #1
    3298:	4b30      	ldr	r3, [pc, #192]	; (335c <PacketParser+0x14c>)
    329a:	601a      	str	r2, [r3, #0]
    329c:	e051      	b.n	3342 <PacketParser+0x132>
    329e:	4b2c      	ldr	r3, [pc, #176]	; (3350 <PacketParser+0x140>)
    32a0:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    32a2:	2b08      	cmp	r3, #8
    32a4:	d14d      	bne.n	3342 <PacketParser+0x132>
    32a6:	f7ff fd15 	bl	2cd4 <Answear_ICMP>
    32aa:	e04a      	b.n	3342 <PacketParser+0x132>
    32ac:	4b28      	ldr	r3, [pc, #160]	; (3350 <PacketParser+0x140>)
    32ae:	8adb      	ldrh	r3, [r3, #22]
    32b0:	001a      	movs	r2, r3
    32b2:	23ff      	movs	r3, #255	; 0xff
    32b4:	021b      	lsls	r3, r3, #8
    32b6:	401a      	ands	r2, r3
    32b8:	2388      	movs	r3, #136	; 0x88
    32ba:	015b      	lsls	r3, r3, #5
    32bc:	429a      	cmp	r2, r3
    32be:	d140      	bne.n	3342 <PacketParser+0x132>
    32c0:	4b23      	ldr	r3, [pc, #140]	; (3350 <PacketParser+0x140>)
    32c2:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    32c4:	021b      	lsls	r3, r3, #8
    32c6:	b29a      	uxth	r2, r3
    32c8:	4b21      	ldr	r3, [pc, #132]	; (3350 <PacketParser+0x140>)
    32ca:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    32cc:	0a1b      	lsrs	r3, r3, #8
    32ce:	b29b      	uxth	r3, r3
    32d0:	18d3      	adds	r3, r2, r3
    32d2:	b29a      	uxth	r2, r3
    32d4:	4b22      	ldr	r3, [pc, #136]	; (3360 <PacketParser+0x150>)
    32d6:	801a      	strh	r2, [r3, #0]
    32d8:	4b1d      	ldr	r3, [pc, #116]	; (3350 <PacketParser+0x140>)
    32da:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    32dc:	021b      	lsls	r3, r3, #8
    32de:	b299      	uxth	r1, r3
    32e0:	4b1b      	ldr	r3, [pc, #108]	; (3350 <PacketParser+0x140>)
    32e2:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    32e4:	0a1b      	lsrs	r3, r3, #8
    32e6:	b29a      	uxth	r2, r3
    32e8:	1dbb      	adds	r3, r7, #6
    32ea:	188a      	adds	r2, r1, r2
    32ec:	801a      	strh	r2, [r3, #0]
    32ee:	1dbb      	adds	r3, r7, #6
    32f0:	881a      	ldrh	r2, [r3, #0]
    32f2:	23fb      	movs	r3, #251	; 0xfb
    32f4:	005b      	lsls	r3, r3, #1
    32f6:	429a      	cmp	r2, r3
    32f8:	d104      	bne.n	3304 <PacketParser+0xf4>
    32fa:	4b1a      	ldr	r3, [pc, #104]	; (3364 <PacketParser+0x154>)
    32fc:	0018      	movs	r0, r3
    32fe:	f000 ff2b 	bl	4158 <mdb_proc_adu>
    3302:	e01e      	b.n	3342 <PacketParser+0x132>
    3304:	f7ff fd96 	bl	2e34 <DestinationUnreachable_ICMP>
    3308:	e01b      	b.n	3342 <PacketParser+0x132>
    330a:	4b17      	ldr	r3, [pc, #92]	; (3368 <PacketParser+0x158>)
    330c:	2105      	movs	r1, #5
    330e:	0018      	movs	r0, r3
    3310:	f7fd fa10 	bl	734 <mdb485_send>
    3314:	4b0e      	ldr	r3, [pc, #56]	; (3350 <PacketParser+0x140>)
    3316:	8a9a      	ldrh	r2, [r3, #20]
    3318:	2380      	movs	r3, #128	; 0x80
    331a:	005b      	lsls	r3, r3, #1
    331c:	429a      	cmp	r2, r3
    331e:	d112      	bne.n	3346 <PacketParser+0x136>
    3320:	4b0b      	ldr	r3, [pc, #44]	; (3350 <PacketParser+0x140>)
    3322:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    3324:	4b0c      	ldr	r3, [pc, #48]	; (3358 <PacketParser+0x148>)
    3326:	881b      	ldrh	r3, [r3, #0]
    3328:	429a      	cmp	r2, r3
    332a:	d10c      	bne.n	3346 <PacketParser+0x136>
    332c:	4b08      	ldr	r3, [pc, #32]	; (3350 <PacketParser+0x140>)
    332e:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    3330:	4b09      	ldr	r3, [pc, #36]	; (3358 <PacketParser+0x148>)
    3332:	885b      	ldrh	r3, [r3, #2]
    3334:	429a      	cmp	r2, r3
    3336:	d106      	bne.n	3346 <PacketParser+0x136>
    3338:	f7ff fa56 	bl	27e8 <Answear_ARP>
    333c:	e003      	b.n	3346 <PacketParser+0x136>
    333e:	46c0      	nop			; (mov r8, r8)
    3340:	e002      	b.n	3348 <PacketParser+0x138>
    3342:	46c0      	nop			; (mov r8, r8)
    3344:	e000      	b.n	3348 <PacketParser+0x138>
    3346:	46c0      	nop			; (mov r8, r8)
    3348:	46c0      	nop			; (mov r8, r8)
    334a:	46bd      	mov	sp, r7
    334c:	b002      	add	sp, #8
    334e:	bd80      	pop	{r7, pc}
    3350:	20004d38 	.word	0x20004d38
    3354:	20004d1c 	.word	0x20004d1c
    3358:	20000010 	.word	0x20000010
    335c:	20004d34 	.word	0x20004d34
    3360:	20005318 	.word	0x20005318
    3364:	20004d62 	.word	0x20004d62
    3368:	00008d3c 	.word	0x00008d3c

0000336c <threadPacketParser>:
    336c:	b580      	push	{r7, lr}
    336e:	b086      	sub	sp, #24
    3370:	af00      	add	r7, sp, #0
    3372:	6078      	str	r0, [r7, #4]
    3374:	4b31      	ldr	r3, [pc, #196]	; (343c <threadPacketParser+0xd0>)
    3376:	0018      	movs	r0, r3
    3378:	f003 fb4c 	bl	6a14 <osMutexCreate>
    337c:	0002      	movs	r2, r0
    337e:	4b30      	ldr	r3, [pc, #192]	; (3440 <threadPacketParser+0xd4>)
    3380:	601a      	str	r2, [r3, #0]
    3382:	4b30      	ldr	r3, [pc, #192]	; (3444 <threadPacketParser+0xd8>)
    3384:	0018      	movs	r0, r3
    3386:	f003 fb45 	bl	6a14 <osMutexCreate>
    338a:	0002      	movs	r2, r0
    338c:	4b2e      	ldr	r3, [pc, #184]	; (3448 <threadPacketParser+0xdc>)
    338e:	601a      	str	r2, [r3, #0]
    3390:	230c      	movs	r3, #12
    3392:	18f8      	adds	r0, r7, r3
    3394:	23fa      	movs	r3, #250	; 0xfa
    3396:	005b      	lsls	r3, r3, #1
    3398:	001a      	movs	r2, r3
    339a:	2100      	movs	r1, #0
    339c:	f003 faac 	bl	68f8 <osSignalWait>
    33a0:	230c      	movs	r3, #12
    33a2:	18fb      	adds	r3, r7, r3
    33a4:	681b      	ldr	r3, [r3, #0]
    33a6:	2b08      	cmp	r3, #8
    33a8:	d120      	bne.n	33ec <threadPacketParser+0x80>
    33aa:	230c      	movs	r3, #12
    33ac:	18fb      	adds	r3, r7, r3
    33ae:	685b      	ldr	r3, [r3, #4]
    33b0:	2b01      	cmp	r3, #1
    33b2:	d142      	bne.n	343a <threadPacketParser+0xce>
    33b4:	4b25      	ldr	r3, [pc, #148]	; (344c <threadPacketParser+0xe0>)
    33b6:	4a25      	ldr	r2, [pc, #148]	; (344c <threadPacketParser+0xe0>)
    33b8:	6812      	ldr	r2, [r2, #0]
    33ba:	2180      	movs	r1, #128	; 0x80
    33bc:	404a      	eors	r2, r1
    33be:	601a      	str	r2, [r3, #0]
    33c0:	e00a      	b.n	33d8 <threadPacketParser+0x6c>
    33c2:	4b23      	ldr	r3, [pc, #140]	; (3450 <threadPacketParser+0xe4>)
    33c4:	0018      	movs	r0, r3
    33c6:	f7fe ffd5 	bl	2374 <ReadPacket>
    33ca:	0003      	movs	r3, r0
    33cc:	b299      	uxth	r1, r3
    33ce:	4b20      	ldr	r3, [pc, #128]	; (3450 <threadPacketParser+0xe4>)
    33d0:	4a20      	ldr	r2, [pc, #128]	; (3454 <threadPacketParser+0xe8>)
    33d2:	5299      	strh	r1, [r3, r2]
    33d4:	f7ff ff1c 	bl	3210 <PacketParser>
    33d8:	23c0      	movs	r3, #192	; 0xc0
    33da:	059b      	lsls	r3, r3, #22
    33dc:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    33de:	b29b      	uxth	r3, r3
    33e0:	001a      	movs	r2, r3
    33e2:	23e0      	movs	r3, #224	; 0xe0
    33e4:	4013      	ands	r3, r2
    33e6:	d1ec      	bne.n	33c2 <threadPacketParser+0x56>
    33e8:	46c0      	nop			; (mov r8, r8)
    33ea:	e026      	b.n	343a <threadPacketParser+0xce>
    33ec:	230c      	movs	r3, #12
    33ee:	18fb      	adds	r3, r7, r3
    33f0:	681b      	ldr	r3, [r3, #0]
    33f2:	2b40      	cmp	r3, #64	; 0x40
    33f4:	d1cc      	bne.n	3390 <threadPacketParser+0x24>
    33f6:	23c0      	movs	r3, #192	; 0xc0
    33f8:	059b      	lsls	r3, r3, #22
    33fa:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    33fc:	b29b      	uxth	r3, r3
    33fe:	001a      	movs	r2, r3
    3400:	2302      	movs	r3, #2
    3402:	4013      	ands	r3, r2
    3404:	d104      	bne.n	3410 <threadPacketParser+0xa4>
    3406:	4b14      	ldr	r3, [pc, #80]	; (3458 <threadPacketParser+0xec>)
    3408:	2280      	movs	r2, #128	; 0x80
    340a:	0212      	lsls	r2, r2, #8
    340c:	621a      	str	r2, [r3, #32]
    340e:	e003      	b.n	3418 <threadPacketParser+0xac>
    3410:	4b11      	ldr	r3, [pc, #68]	; (3458 <threadPacketParser+0xec>)
    3412:	2280      	movs	r2, #128	; 0x80
    3414:	0212      	lsls	r2, r2, #8
    3416:	625a      	str	r2, [r3, #36]	; 0x24
    3418:	23c0      	movs	r3, #192	; 0xc0
    341a:	059b      	lsls	r3, r3, #22
    341c:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    341e:	b29b      	uxth	r3, r3
    3420:	001a      	movs	r2, r3
    3422:	2308      	movs	r3, #8
    3424:	4013      	ands	r3, r2
    3426:	d104      	bne.n	3432 <threadPacketParser+0xc6>
    3428:	4b0b      	ldr	r3, [pc, #44]	; (3458 <threadPacketParser+0xec>)
    342a:	2280      	movs	r2, #128	; 0x80
    342c:	01d2      	lsls	r2, r2, #7
    342e:	621a      	str	r2, [r3, #32]
    3430:	e7ae      	b.n	3390 <threadPacketParser+0x24>
    3432:	4b09      	ldr	r3, [pc, #36]	; (3458 <threadPacketParser+0xec>)
    3434:	2280      	movs	r2, #128	; 0x80
    3436:	01d2      	lsls	r2, r2, #7
    3438:	625a      	str	r2, [r3, #36]	; 0x24
    343a:	e7a9      	b.n	3390 <threadPacketParser+0x24>
    343c:	00008d44 	.word	0x00008d44
    3440:	2000532c 	.word	0x2000532c
    3444:	00008d48 	.word	0x00008d48
    3448:	20005340 	.word	0x20005340
    344c:	400c0000 	.word	0x400c0000
    3450:	20004d38 	.word	0x20004d38
    3454:	000005dc 	.word	0x000005dc
    3458:	400b0000 	.word	0x400b0000

0000345c <crc32>:
    345c:	b580      	push	{r7, lr}
    345e:	b084      	sub	sp, #16
    3460:	af00      	add	r7, sp, #0
    3462:	6078      	str	r0, [r7, #4]
    3464:	6039      	str	r1, [r7, #0]
    3466:	2301      	movs	r3, #1
    3468:	425b      	negs	r3, r3
    346a:	60bb      	str	r3, [r7, #8]
    346c:	2300      	movs	r3, #0
    346e:	60fb      	str	r3, [r7, #12]
    3470:	e012      	b.n	3498 <crc32+0x3c>
    3472:	68bb      	ldr	r3, [r7, #8]
    3474:	0a1a      	lsrs	r2, r3, #8
    3476:	68fb      	ldr	r3, [r7, #12]
    3478:	6879      	ldr	r1, [r7, #4]
    347a:	18cb      	adds	r3, r1, r3
    347c:	781b      	ldrb	r3, [r3, #0]
    347e:	0019      	movs	r1, r3
    3480:	68bb      	ldr	r3, [r7, #8]
    3482:	404b      	eors	r3, r1
    3484:	21ff      	movs	r1, #255	; 0xff
    3486:	4019      	ands	r1, r3
    3488:	4b08      	ldr	r3, [pc, #32]	; (34ac <crc32+0x50>)
    348a:	0089      	lsls	r1, r1, #2
    348c:	58cb      	ldr	r3, [r1, r3]
    348e:	4053      	eors	r3, r2
    3490:	60bb      	str	r3, [r7, #8]
    3492:	68fb      	ldr	r3, [r7, #12]
    3494:	3301      	adds	r3, #1
    3496:	60fb      	str	r3, [r7, #12]
    3498:	68fa      	ldr	r2, [r7, #12]
    349a:	683b      	ldr	r3, [r7, #0]
    349c:	429a      	cmp	r2, r3
    349e:	d3e8      	bcc.n	3472 <crc32+0x16>
    34a0:	68bb      	ldr	r3, [r7, #8]
    34a2:	0018      	movs	r0, r3
    34a4:	46bd      	mov	sp, r7
    34a6:	b004      	add	sp, #16
    34a8:	bd80      	pop	{r7, pc}
    34aa:	46c0      	nop			; (mov r8, r8)
    34ac:	00008d4c 	.word	0x00008d4c

000034b0 <crc16>:
    34b0:	b580      	push	{r7, lr}
    34b2:	b086      	sub	sp, #24
    34b4:	af00      	add	r7, sp, #0
    34b6:	6078      	str	r0, [r7, #4]
    34b8:	6039      	str	r1, [r7, #0]
    34ba:	2317      	movs	r3, #23
    34bc:	18fb      	adds	r3, r7, r3
    34be:	22ff      	movs	r2, #255	; 0xff
    34c0:	701a      	strb	r2, [r3, #0]
    34c2:	2316      	movs	r3, #22
    34c4:	18fb      	adds	r3, r7, r3
    34c6:	22ff      	movs	r2, #255	; 0xff
    34c8:	701a      	strb	r2, [r3, #0]
    34ca:	2300      	movs	r3, #0
    34cc:	613b      	str	r3, [r7, #16]
    34ce:	e01e      	b.n	350e <crc16+0x5e>
    34d0:	693b      	ldr	r3, [r7, #16]
    34d2:	687a      	ldr	r2, [r7, #4]
    34d4:	18d3      	adds	r3, r2, r3
    34d6:	781a      	ldrb	r2, [r3, #0]
    34d8:	2317      	movs	r3, #23
    34da:	18fb      	adds	r3, r7, r3
    34dc:	781b      	ldrb	r3, [r3, #0]
    34de:	4053      	eors	r3, r2
    34e0:	b2db      	uxtb	r3, r3
    34e2:	60fb      	str	r3, [r7, #12]
    34e4:	4a14      	ldr	r2, [pc, #80]	; (3538 <crc16+0x88>)
    34e6:	68fb      	ldr	r3, [r7, #12]
    34e8:	18d3      	adds	r3, r2, r3
    34ea:	7819      	ldrb	r1, [r3, #0]
    34ec:	2317      	movs	r3, #23
    34ee:	18fb      	adds	r3, r7, r3
    34f0:	2216      	movs	r2, #22
    34f2:	18ba      	adds	r2, r7, r2
    34f4:	7812      	ldrb	r2, [r2, #0]
    34f6:	404a      	eors	r2, r1
    34f8:	701a      	strb	r2, [r3, #0]
    34fa:	2316      	movs	r3, #22
    34fc:	18fb      	adds	r3, r7, r3
    34fe:	490f      	ldr	r1, [pc, #60]	; (353c <crc16+0x8c>)
    3500:	68fa      	ldr	r2, [r7, #12]
    3502:	188a      	adds	r2, r1, r2
    3504:	7812      	ldrb	r2, [r2, #0]
    3506:	701a      	strb	r2, [r3, #0]
    3508:	693b      	ldr	r3, [r7, #16]
    350a:	3301      	adds	r3, #1
    350c:	613b      	str	r3, [r7, #16]
    350e:	693a      	ldr	r2, [r7, #16]
    3510:	683b      	ldr	r3, [r7, #0]
    3512:	429a      	cmp	r2, r3
    3514:	dbdc      	blt.n	34d0 <crc16+0x20>
    3516:	2316      	movs	r3, #22
    3518:	18fb      	adds	r3, r7, r3
    351a:	781b      	ldrb	r3, [r3, #0]
    351c:	021b      	lsls	r3, r3, #8
    351e:	b21a      	sxth	r2, r3
    3520:	2317      	movs	r3, #23
    3522:	18fb      	adds	r3, r7, r3
    3524:	781b      	ldrb	r3, [r3, #0]
    3526:	b21b      	sxth	r3, r3
    3528:	4313      	orrs	r3, r2
    352a:	b21b      	sxth	r3, r3
    352c:	b29b      	uxth	r3, r3
    352e:	0018      	movs	r0, r3
    3530:	46bd      	mov	sp, r7
    3532:	b006      	add	sp, #24
    3534:	bd80      	pop	{r7, pc}
    3536:	46c0      	nop			; (mov r8, r8)
    3538:	0000914c 	.word	0x0000914c
    353c:	0000924c 	.word	0x0000924c

00003540 <eeprom_on>:
    3540:	b580      	push	{r7, lr}
    3542:	af00      	add	r7, sp, #0
    3544:	b672      	cpsid	i
    3546:	4b04      	ldr	r3, [pc, #16]	; (3558 <eeprom_on+0x18>)
    3548:	4a03      	ldr	r2, [pc, #12]	; (3558 <eeprom_on+0x18>)
    354a:	69d2      	ldr	r2, [r2, #28]
    354c:	2108      	movs	r1, #8
    354e:	430a      	orrs	r2, r1
    3550:	61da      	str	r2, [r3, #28]
    3552:	46c0      	nop			; (mov r8, r8)
    3554:	46bd      	mov	sp, r7
    3556:	bd80      	pop	{r7, pc}
    3558:	40020000 	.word	0x40020000

0000355c <eeprom_off>:
    355c:	b580      	push	{r7, lr}
    355e:	af00      	add	r7, sp, #0
    3560:	b662      	cpsie	i
    3562:	4b04      	ldr	r3, [pc, #16]	; (3574 <eeprom_off+0x18>)
    3564:	4a03      	ldr	r2, [pc, #12]	; (3574 <eeprom_off+0x18>)
    3566:	69d2      	ldr	r2, [r2, #28]
    3568:	2108      	movs	r1, #8
    356a:	438a      	bics	r2, r1
    356c:	61da      	str	r2, [r3, #28]
    356e:	46c0      	nop			; (mov r8, r8)
    3570:	46bd      	mov	sp, r7
    3572:	bd80      	pop	{r7, pc}
    3574:	40020000 	.word	0x40020000

00003578 <par_save>:
    3578:	b580      	push	{r7, lr}
    357a:	b086      	sub	sp, #24
    357c:	af00      	add	r7, sp, #0
    357e:	6078      	str	r0, [r7, #4]
    3580:	f7ff ffde 	bl	3540 <eeprom_on>
    3584:	f005 fb28 	bl	8bd8 <__eeprom_erase_page_veneer>
    3588:	1e03      	subs	r3, r0, #0
    358a:	d01b      	beq.n	35c4 <par_save+0x4c>
    358c:	687b      	ldr	r3, [r7, #4]
    358e:	613b      	str	r3, [r7, #16]
    3590:	2303      	movs	r3, #3
    3592:	60bb      	str	r3, [r7, #8]
    3594:	2300      	movs	r3, #0
    3596:	60fb      	str	r3, [r7, #12]
    3598:	2300      	movs	r3, #0
    359a:	617b      	str	r3, [r7, #20]
    359c:	e00e      	b.n	35bc <par_save+0x44>
    359e:	693b      	ldr	r3, [r7, #16]
    35a0:	1d1a      	adds	r2, r3, #4
    35a2:	613a      	str	r2, [r7, #16]
    35a4:	681a      	ldr	r2, [r3, #0]
    35a6:	68fb      	ldr	r3, [r7, #12]
    35a8:	0011      	movs	r1, r2
    35aa:	0018      	movs	r0, r3
    35ac:	f005 fb0c 	bl	8bc8 <__eeprom_program_word_veneer>
    35b0:	68fb      	ldr	r3, [r7, #12]
    35b2:	3304      	adds	r3, #4
    35b4:	60fb      	str	r3, [r7, #12]
    35b6:	697b      	ldr	r3, [r7, #20]
    35b8:	3301      	adds	r3, #1
    35ba:	617b      	str	r3, [r7, #20]
    35bc:	697a      	ldr	r2, [r7, #20]
    35be:	68bb      	ldr	r3, [r7, #8]
    35c0:	429a      	cmp	r2, r3
    35c2:	dbec      	blt.n	359e <par_save+0x26>
    35c4:	f7ff ffca 	bl	355c <eeprom_off>
    35c8:	46c0      	nop			; (mov r8, r8)
    35ca:	46bd      	mov	sp, r7
    35cc:	b006      	add	sp, #24
    35ce:	bd80      	pop	{r7, pc}

000035d0 <par_read>:
    35d0:	b590      	push	{r4, r7, lr}
    35d2:	b087      	sub	sp, #28
    35d4:	af00      	add	r7, sp, #0
    35d6:	6078      	str	r0, [r7, #4]
    35d8:	f7ff ffb2 	bl	3540 <eeprom_on>
    35dc:	687b      	ldr	r3, [r7, #4]
    35de:	613b      	str	r3, [r7, #16]
    35e0:	2303      	movs	r3, #3
    35e2:	60bb      	str	r3, [r7, #8]
    35e4:	2300      	movs	r3, #0
    35e6:	60fb      	str	r3, [r7, #12]
    35e8:	2300      	movs	r3, #0
    35ea:	617b      	str	r3, [r7, #20]
    35ec:	e00e      	b.n	360c <par_read+0x3c>
    35ee:	693c      	ldr	r4, [r7, #16]
    35f0:	1d23      	adds	r3, r4, #4
    35f2:	613b      	str	r3, [r7, #16]
    35f4:	68fb      	ldr	r3, [r7, #12]
    35f6:	0018      	movs	r0, r3
    35f8:	f005 faf6 	bl	8be8 <__eeprom_read_word_veneer>
    35fc:	0003      	movs	r3, r0
    35fe:	6023      	str	r3, [r4, #0]
    3600:	68fb      	ldr	r3, [r7, #12]
    3602:	3304      	adds	r3, #4
    3604:	60fb      	str	r3, [r7, #12]
    3606:	697b      	ldr	r3, [r7, #20]
    3608:	3301      	adds	r3, #1
    360a:	617b      	str	r3, [r7, #20]
    360c:	697a      	ldr	r2, [r7, #20]
    360e:	68bb      	ldr	r3, [r7, #8]
    3610:	429a      	cmp	r2, r3
    3612:	dbec      	blt.n	35ee <par_read+0x1e>
    3614:	f7ff ffa2 	bl	355c <eeprom_off>
    3618:	46c0      	nop			; (mov r8, r8)
    361a:	46bd      	mov	sp, r7
    361c:	b007      	add	sp, #28
    361e:	bd90      	pop	{r4, r7, pc}

00003620 <mdb_fifo_read>:
    3620:	b580      	push	{r7, lr}
    3622:	b086      	sub	sp, #24
    3624:	af00      	add	r7, sp, #0
    3626:	6078      	str	r0, [r7, #4]
    3628:	6039      	str	r1, [r7, #0]
    362a:	4b1f      	ldr	r3, [pc, #124]	; (36a8 <mdb_fifo_read+0x88>)
    362c:	681a      	ldr	r2, [r3, #0]
    362e:	2301      	movs	r3, #1
    3630:	425b      	negs	r3, r3
    3632:	0019      	movs	r1, r3
    3634:	0010      	movs	r0, r2
    3636:	f003 fa13 	bl	6a60 <osMutexWait>
    363a:	4b1c      	ldr	r3, [pc, #112]	; (36ac <mdb_fifo_read+0x8c>)
    363c:	681a      	ldr	r2, [r3, #0]
    363e:	4b1c      	ldr	r3, [pc, #112]	; (36b0 <mdb_fifo_read+0x90>)
    3640:	681b      	ldr	r3, [r3, #0]
    3642:	1ad3      	subs	r3, r2, r3
    3644:	05db      	lsls	r3, r3, #23
    3646:	0ddb      	lsrs	r3, r3, #23
    3648:	613b      	str	r3, [r7, #16]
    364a:	693b      	ldr	r3, [r7, #16]
    364c:	2280      	movs	r2, #128	; 0x80
    364e:	0092      	lsls	r2, r2, #2
    3650:	1ad3      	subs	r3, r2, r3
    3652:	60fb      	str	r3, [r7, #12]
    3654:	683a      	ldr	r2, [r7, #0]
    3656:	693b      	ldr	r3, [r7, #16]
    3658:	429a      	cmp	r2, r3
    365a:	d819      	bhi.n	3690 <mdb_fifo_read+0x70>
    365c:	2300      	movs	r3, #0
    365e:	617b      	str	r3, [r7, #20]
    3660:	e011      	b.n	3686 <mdb_fifo_read+0x66>
    3662:	687b      	ldr	r3, [r7, #4]
    3664:	1c5a      	adds	r2, r3, #1
    3666:	607a      	str	r2, [r7, #4]
    3668:	4a11      	ldr	r2, [pc, #68]	; (36b0 <mdb_fifo_read+0x90>)
    366a:	6812      	ldr	r2, [r2, #0]
    366c:	4911      	ldr	r1, [pc, #68]	; (36b4 <mdb_fifo_read+0x94>)
    366e:	5c8a      	ldrb	r2, [r1, r2]
    3670:	701a      	strb	r2, [r3, #0]
    3672:	4b0f      	ldr	r3, [pc, #60]	; (36b0 <mdb_fifo_read+0x90>)
    3674:	681b      	ldr	r3, [r3, #0]
    3676:	3301      	adds	r3, #1
    3678:	05db      	lsls	r3, r3, #23
    367a:	0dda      	lsrs	r2, r3, #23
    367c:	4b0c      	ldr	r3, [pc, #48]	; (36b0 <mdb_fifo_read+0x90>)
    367e:	601a      	str	r2, [r3, #0]
    3680:	697b      	ldr	r3, [r7, #20]
    3682:	3301      	adds	r3, #1
    3684:	617b      	str	r3, [r7, #20]
    3686:	697a      	ldr	r2, [r7, #20]
    3688:	683b      	ldr	r3, [r7, #0]
    368a:	429a      	cmp	r2, r3
    368c:	dbe9      	blt.n	3662 <mdb_fifo_read+0x42>
    368e:	e001      	b.n	3694 <mdb_fifo_read+0x74>
    3690:	2300      	movs	r3, #0
    3692:	603b      	str	r3, [r7, #0]
    3694:	4b04      	ldr	r3, [pc, #16]	; (36a8 <mdb_fifo_read+0x88>)
    3696:	681b      	ldr	r3, [r3, #0]
    3698:	0018      	movs	r0, r3
    369a:	f003 f9f1 	bl	6a80 <osMutexRelease>
    369e:	683b      	ldr	r3, [r7, #0]
    36a0:	0018      	movs	r0, r3
    36a2:	46bd      	mov	sp, r7
    36a4:	b006      	add	sp, #24
    36a6:	bd80      	pop	{r7, pc}
    36a8:	20000888 	.word	0x20000888
    36ac:	20005d60 	.word	0x20005d60
    36b0:	20005d64 	.word	0x20005d64
    36b4:	20005b60 	.word	0x20005b60

000036b8 <mdb_fifo_write>:
    36b8:	b580      	push	{r7, lr}
    36ba:	b086      	sub	sp, #24
    36bc:	af00      	add	r7, sp, #0
    36be:	6078      	str	r0, [r7, #4]
    36c0:	6039      	str	r1, [r7, #0]
    36c2:	4b1c      	ldr	r3, [pc, #112]	; (3734 <mdb_fifo_write+0x7c>)
    36c4:	681a      	ldr	r2, [r3, #0]
    36c6:	2301      	movs	r3, #1
    36c8:	425b      	negs	r3, r3
    36ca:	0019      	movs	r1, r3
    36cc:	0010      	movs	r0, r2
    36ce:	f003 f9c7 	bl	6a60 <osMutexWait>
    36d2:	4b19      	ldr	r3, [pc, #100]	; (3738 <mdb_fifo_write+0x80>)
    36d4:	681a      	ldr	r2, [r3, #0]
    36d6:	4b19      	ldr	r3, [pc, #100]	; (373c <mdb_fifo_write+0x84>)
    36d8:	681b      	ldr	r3, [r3, #0]
    36da:	1ad3      	subs	r3, r2, r3
    36dc:	05db      	lsls	r3, r3, #23
    36de:	0ddb      	lsrs	r3, r3, #23
    36e0:	613b      	str	r3, [r7, #16]
    36e2:	693b      	ldr	r3, [r7, #16]
    36e4:	2280      	movs	r2, #128	; 0x80
    36e6:	0092      	lsls	r2, r2, #2
    36e8:	1ad3      	subs	r3, r2, r3
    36ea:	60fb      	str	r3, [r7, #12]
    36ec:	2300      	movs	r3, #0
    36ee:	617b      	str	r3, [r7, #20]
    36f0:	e011      	b.n	3716 <mdb_fifo_write+0x5e>
    36f2:	4b11      	ldr	r3, [pc, #68]	; (3738 <mdb_fifo_write+0x80>)
    36f4:	681a      	ldr	r2, [r3, #0]
    36f6:	687b      	ldr	r3, [r7, #4]
    36f8:	1c59      	adds	r1, r3, #1
    36fa:	6079      	str	r1, [r7, #4]
    36fc:	7819      	ldrb	r1, [r3, #0]
    36fe:	4b10      	ldr	r3, [pc, #64]	; (3740 <mdb_fifo_write+0x88>)
    3700:	5499      	strb	r1, [r3, r2]
    3702:	4b0d      	ldr	r3, [pc, #52]	; (3738 <mdb_fifo_write+0x80>)
    3704:	681b      	ldr	r3, [r3, #0]
    3706:	3301      	adds	r3, #1
    3708:	05db      	lsls	r3, r3, #23
    370a:	0dda      	lsrs	r2, r3, #23
    370c:	4b0a      	ldr	r3, [pc, #40]	; (3738 <mdb_fifo_write+0x80>)
    370e:	601a      	str	r2, [r3, #0]
    3710:	697b      	ldr	r3, [r7, #20]
    3712:	3301      	adds	r3, #1
    3714:	617b      	str	r3, [r7, #20]
    3716:	697a      	ldr	r2, [r7, #20]
    3718:	683b      	ldr	r3, [r7, #0]
    371a:	429a      	cmp	r2, r3
    371c:	dbe9      	blt.n	36f2 <mdb_fifo_write+0x3a>
    371e:	4b05      	ldr	r3, [pc, #20]	; (3734 <mdb_fifo_write+0x7c>)
    3720:	681b      	ldr	r3, [r3, #0]
    3722:	0018      	movs	r0, r3
    3724:	f003 f9ac 	bl	6a80 <osMutexRelease>
    3728:	683b      	ldr	r3, [r7, #0]
    372a:	0018      	movs	r0, r3
    372c:	46bd      	mov	sp, r7
    372e:	b006      	add	sp, #24
    3730:	bd80      	pop	{r7, pc}
    3732:	46c0      	nop			; (mov r8, r8)
    3734:	20000888 	.word	0x20000888
    3738:	20005d60 	.word	0x20005d60
    373c:	20005d64 	.word	0x20005d64
    3740:	20005b60 	.word	0x20005b60

00003744 <mdb_get_testparam>:
    3744:	b5b0      	push	{r4, r5, r7, lr}
    3746:	b086      	sub	sp, #24
    3748:	af00      	add	r7, sp, #0
    374a:	6078      	str	r0, [r7, #4]
    374c:	4b84      	ldr	r3, [pc, #528]	; (3960 <mdb_get_testparam+0x21c>)
    374e:	885b      	ldrh	r3, [r3, #2]
    3750:	041b      	lsls	r3, r3, #16
    3752:	4a83      	ldr	r2, [pc, #524]	; (3960 <mdb_get_testparam+0x21c>)
    3754:	8892      	ldrh	r2, [r2, #4]
    3756:	4313      	orrs	r3, r2
    3758:	001a      	movs	r2, r3
    375a:	687b      	ldr	r3, [r7, #4]
    375c:	21ff      	movs	r1, #255	; 0xff
    375e:	4011      	ands	r1, r2
    3760:	000c      	movs	r4, r1
    3762:	7819      	ldrb	r1, [r3, #0]
    3764:	2000      	movs	r0, #0
    3766:	4001      	ands	r1, r0
    3768:	1c08      	adds	r0, r1, #0
    376a:	1c21      	adds	r1, r4, #0
    376c:	4301      	orrs	r1, r0
    376e:	7019      	strb	r1, [r3, #0]
    3770:	0a11      	lsrs	r1, r2, #8
    3772:	20ff      	movs	r0, #255	; 0xff
    3774:	4001      	ands	r1, r0
    3776:	000c      	movs	r4, r1
    3778:	7859      	ldrb	r1, [r3, #1]
    377a:	2000      	movs	r0, #0
    377c:	4001      	ands	r1, r0
    377e:	1c08      	adds	r0, r1, #0
    3780:	1c21      	adds	r1, r4, #0
    3782:	4301      	orrs	r1, r0
    3784:	7059      	strb	r1, [r3, #1]
    3786:	0c11      	lsrs	r1, r2, #16
    3788:	20ff      	movs	r0, #255	; 0xff
    378a:	4001      	ands	r1, r0
    378c:	000c      	movs	r4, r1
    378e:	7899      	ldrb	r1, [r3, #2]
    3790:	2000      	movs	r0, #0
    3792:	4001      	ands	r1, r0
    3794:	1c08      	adds	r0, r1, #0
    3796:	1c21      	adds	r1, r4, #0
    3798:	4301      	orrs	r1, r0
    379a:	7099      	strb	r1, [r3, #2]
    379c:	0e10      	lsrs	r0, r2, #24
    379e:	78da      	ldrb	r2, [r3, #3]
    37a0:	2100      	movs	r1, #0
    37a2:	400a      	ands	r2, r1
    37a4:	1c11      	adds	r1, r2, #0
    37a6:	1c02      	adds	r2, r0, #0
    37a8:	430a      	orrs	r2, r1
    37aa:	70da      	strb	r2, [r3, #3]
    37ac:	4b6c      	ldr	r3, [pc, #432]	; (3960 <mdb_get_testparam+0x21c>)
    37ae:	88db      	ldrh	r3, [r3, #6]
    37b0:	041b      	lsls	r3, r3, #16
    37b2:	4a6b      	ldr	r2, [pc, #428]	; (3960 <mdb_get_testparam+0x21c>)
    37b4:	8912      	ldrh	r2, [r2, #8]
    37b6:	4313      	orrs	r3, r2
    37b8:	001a      	movs	r2, r3
    37ba:	687b      	ldr	r3, [r7, #4]
    37bc:	21ff      	movs	r1, #255	; 0xff
    37be:	4011      	ands	r1, r2
    37c0:	000c      	movs	r4, r1
    37c2:	7919      	ldrb	r1, [r3, #4]
    37c4:	2000      	movs	r0, #0
    37c6:	4001      	ands	r1, r0
    37c8:	1c08      	adds	r0, r1, #0
    37ca:	1c21      	adds	r1, r4, #0
    37cc:	4301      	orrs	r1, r0
    37ce:	7119      	strb	r1, [r3, #4]
    37d0:	0a11      	lsrs	r1, r2, #8
    37d2:	20ff      	movs	r0, #255	; 0xff
    37d4:	4001      	ands	r1, r0
    37d6:	000c      	movs	r4, r1
    37d8:	7959      	ldrb	r1, [r3, #5]
    37da:	2000      	movs	r0, #0
    37dc:	4001      	ands	r1, r0
    37de:	1c08      	adds	r0, r1, #0
    37e0:	1c21      	adds	r1, r4, #0
    37e2:	4301      	orrs	r1, r0
    37e4:	7159      	strb	r1, [r3, #5]
    37e6:	0c11      	lsrs	r1, r2, #16
    37e8:	20ff      	movs	r0, #255	; 0xff
    37ea:	4001      	ands	r1, r0
    37ec:	000c      	movs	r4, r1
    37ee:	7999      	ldrb	r1, [r3, #6]
    37f0:	2000      	movs	r0, #0
    37f2:	4001      	ands	r1, r0
    37f4:	1c08      	adds	r0, r1, #0
    37f6:	1c21      	adds	r1, r4, #0
    37f8:	4301      	orrs	r1, r0
    37fa:	7199      	strb	r1, [r3, #6]
    37fc:	0e10      	lsrs	r0, r2, #24
    37fe:	79da      	ldrb	r2, [r3, #7]
    3800:	2100      	movs	r1, #0
    3802:	400a      	ands	r2, r1
    3804:	1c11      	adds	r1, r2, #0
    3806:	1c02      	adds	r2, r0, #0
    3808:	430a      	orrs	r2, r1
    380a:	71da      	strb	r2, [r3, #7]
    380c:	4b54      	ldr	r3, [pc, #336]	; (3960 <mdb_get_testparam+0x21c>)
    380e:	895b      	ldrh	r3, [r3, #10]
    3810:	041b      	lsls	r3, r3, #16
    3812:	4a53      	ldr	r2, [pc, #332]	; (3960 <mdb_get_testparam+0x21c>)
    3814:	8992      	ldrh	r2, [r2, #12]
    3816:	4313      	orrs	r3, r2
    3818:	001a      	movs	r2, r3
    381a:	687b      	ldr	r3, [r7, #4]
    381c:	21ff      	movs	r1, #255	; 0xff
    381e:	4011      	ands	r1, r2
    3820:	000c      	movs	r4, r1
    3822:	7a19      	ldrb	r1, [r3, #8]
    3824:	2000      	movs	r0, #0
    3826:	4001      	ands	r1, r0
    3828:	1c08      	adds	r0, r1, #0
    382a:	1c21      	adds	r1, r4, #0
    382c:	4301      	orrs	r1, r0
    382e:	7219      	strb	r1, [r3, #8]
    3830:	0a11      	lsrs	r1, r2, #8
    3832:	20ff      	movs	r0, #255	; 0xff
    3834:	4001      	ands	r1, r0
    3836:	000c      	movs	r4, r1
    3838:	7a59      	ldrb	r1, [r3, #9]
    383a:	2000      	movs	r0, #0
    383c:	4001      	ands	r1, r0
    383e:	1c08      	adds	r0, r1, #0
    3840:	1c21      	adds	r1, r4, #0
    3842:	4301      	orrs	r1, r0
    3844:	7259      	strb	r1, [r3, #9]
    3846:	0c11      	lsrs	r1, r2, #16
    3848:	20ff      	movs	r0, #255	; 0xff
    384a:	4001      	ands	r1, r0
    384c:	000c      	movs	r4, r1
    384e:	7a99      	ldrb	r1, [r3, #10]
    3850:	2000      	movs	r0, #0
    3852:	4001      	ands	r1, r0
    3854:	1c08      	adds	r0, r1, #0
    3856:	1c21      	adds	r1, r4, #0
    3858:	4301      	orrs	r1, r0
    385a:	7299      	strb	r1, [r3, #10]
    385c:	0e10      	lsrs	r0, r2, #24
    385e:	7ada      	ldrb	r2, [r3, #11]
    3860:	2100      	movs	r1, #0
    3862:	400a      	ands	r2, r1
    3864:	1c11      	adds	r1, r2, #0
    3866:	1c02      	adds	r2, r0, #0
    3868:	430a      	orrs	r2, r1
    386a:	72da      	strb	r2, [r3, #11]
    386c:	4b3c      	ldr	r3, [pc, #240]	; (3960 <mdb_get_testparam+0x21c>)
    386e:	89db      	ldrh	r3, [r3, #14]
    3870:	041b      	lsls	r3, r3, #16
    3872:	4a3b      	ldr	r2, [pc, #236]	; (3960 <mdb_get_testparam+0x21c>)
    3874:	8a12      	ldrh	r2, [r2, #16]
    3876:	4313      	orrs	r3, r2
    3878:	001a      	movs	r2, r3
    387a:	687b      	ldr	r3, [r7, #4]
    387c:	21ff      	movs	r1, #255	; 0xff
    387e:	4011      	ands	r1, r2
    3880:	000c      	movs	r4, r1
    3882:	7b19      	ldrb	r1, [r3, #12]
    3884:	2000      	movs	r0, #0
    3886:	4001      	ands	r1, r0
    3888:	1c08      	adds	r0, r1, #0
    388a:	1c21      	adds	r1, r4, #0
    388c:	4301      	orrs	r1, r0
    388e:	7319      	strb	r1, [r3, #12]
    3890:	0a11      	lsrs	r1, r2, #8
    3892:	20ff      	movs	r0, #255	; 0xff
    3894:	4001      	ands	r1, r0
    3896:	000c      	movs	r4, r1
    3898:	7b59      	ldrb	r1, [r3, #13]
    389a:	2000      	movs	r0, #0
    389c:	4001      	ands	r1, r0
    389e:	1c08      	adds	r0, r1, #0
    38a0:	1c21      	adds	r1, r4, #0
    38a2:	4301      	orrs	r1, r0
    38a4:	7359      	strb	r1, [r3, #13]
    38a6:	0c11      	lsrs	r1, r2, #16
    38a8:	20ff      	movs	r0, #255	; 0xff
    38aa:	4001      	ands	r1, r0
    38ac:	000c      	movs	r4, r1
    38ae:	7b99      	ldrb	r1, [r3, #14]
    38b0:	2000      	movs	r0, #0
    38b2:	4001      	ands	r1, r0
    38b4:	1c08      	adds	r0, r1, #0
    38b6:	1c21      	adds	r1, r4, #0
    38b8:	4301      	orrs	r1, r0
    38ba:	7399      	strb	r1, [r3, #14]
    38bc:	0e10      	lsrs	r0, r2, #24
    38be:	7bda      	ldrb	r2, [r3, #15]
    38c0:	2100      	movs	r1, #0
    38c2:	400a      	ands	r2, r1
    38c4:	1c11      	adds	r1, r2, #0
    38c6:	1c02      	adds	r2, r0, #0
    38c8:	430a      	orrs	r2, r1
    38ca:	73da      	strb	r2, [r3, #15]
    38cc:	4b25      	ldr	r3, [pc, #148]	; (3964 <mdb_get_testparam+0x220>)
    38ce:	613b      	str	r3, [r7, #16]
    38d0:	4b25      	ldr	r3, [pc, #148]	; (3968 <mdb_get_testparam+0x224>)
    38d2:	60fb      	str	r3, [r7, #12]
    38d4:	2300      	movs	r3, #0
    38d6:	617b      	str	r3, [r7, #20]
    38d8:	e03a      	b.n	3950 <mdb_get_testparam+0x20c>
    38da:	693b      	ldr	r3, [r7, #16]
    38dc:	1c9a      	adds	r2, r3, #2
    38de:	613a      	str	r2, [r7, #16]
    38e0:	8819      	ldrh	r1, [r3, #0]
    38e2:	687a      	ldr	r2, [r7, #4]
    38e4:	697b      	ldr	r3, [r7, #20]
    38e6:	3308      	adds	r3, #8
    38e8:	005b      	lsls	r3, r3, #1
    38ea:	20ff      	movs	r0, #255	; 0xff
    38ec:	4008      	ands	r0, r1
    38ee:	0005      	movs	r5, r0
    38f0:	5c98      	ldrb	r0, [r3, r2]
    38f2:	2400      	movs	r4, #0
    38f4:	4020      	ands	r0, r4
    38f6:	1c04      	adds	r4, r0, #0
    38f8:	1c28      	adds	r0, r5, #0
    38fa:	4320      	orrs	r0, r4
    38fc:	5498      	strb	r0, [r3, r2]
    38fe:	0a09      	lsrs	r1, r1, #8
    3900:	b288      	uxth	r0, r1
    3902:	18d3      	adds	r3, r2, r3
    3904:	785a      	ldrb	r2, [r3, #1]
    3906:	2100      	movs	r1, #0
    3908:	400a      	ands	r2, r1
    390a:	1c11      	adds	r1, r2, #0
    390c:	1c02      	adds	r2, r0, #0
    390e:	430a      	orrs	r2, r1
    3910:	705a      	strb	r2, [r3, #1]
    3912:	68fb      	ldr	r3, [r7, #12]
    3914:	1c9a      	adds	r2, r3, #2
    3916:	60fa      	str	r2, [r7, #12]
    3918:	881a      	ldrh	r2, [r3, #0]
    391a:	6879      	ldr	r1, [r7, #4]
    391c:	697b      	ldr	r3, [r7, #20]
    391e:	330c      	adds	r3, #12
    3920:	005b      	lsls	r3, r3, #1
    3922:	18cb      	adds	r3, r1, r3
    3924:	21ff      	movs	r1, #255	; 0xff
    3926:	4011      	ands	r1, r2
    3928:	000c      	movs	r4, r1
    392a:	7899      	ldrb	r1, [r3, #2]
    392c:	2000      	movs	r0, #0
    392e:	4001      	ands	r1, r0
    3930:	1c08      	adds	r0, r1, #0
    3932:	1c21      	adds	r1, r4, #0
    3934:	4301      	orrs	r1, r0
    3936:	7099      	strb	r1, [r3, #2]
    3938:	0a12      	lsrs	r2, r2, #8
    393a:	b290      	uxth	r0, r2
    393c:	78da      	ldrb	r2, [r3, #3]
    393e:	2100      	movs	r1, #0
    3940:	400a      	ands	r2, r1
    3942:	1c11      	adds	r1, r2, #0
    3944:	1c02      	adds	r2, r0, #0
    3946:	430a      	orrs	r2, r1
    3948:	70da      	strb	r2, [r3, #3]
    394a:	697b      	ldr	r3, [r7, #20]
    394c:	3301      	adds	r3, #1
    394e:	617b      	str	r3, [r7, #20]
    3950:	697b      	ldr	r3, [r7, #20]
    3952:	2b04      	cmp	r3, #4
    3954:	ddc1      	ble.n	38da <mdb_get_testparam+0x196>
    3956:	46c0      	nop			; (mov r8, r8)
    3958:	46bd      	mov	sp, r7
    395a:	b006      	add	sp, #24
    395c:	bdb0      	pop	{r4, r5, r7, pc}
    395e:	46c0      	nop			; (mov r8, r8)
    3960:	20005d68 	.word	0x20005d68
    3964:	20005d7a 	.word	0x20005d7a
    3968:	20005d84 	.word	0x20005d84

0000396c <mdb_get_holding_register>:
    396c:	b580      	push	{r7, lr}
    396e:	b084      	sub	sp, #16
    3970:	af00      	add	r7, sp, #0
    3972:	6078      	str	r0, [r7, #4]
    3974:	687b      	ldr	r3, [r7, #4]
    3976:	2b00      	cmp	r3, #0
    3978:	db02      	blt.n	3980 <mdb_get_holding_register+0x14>
    397a:	687b      	ldr	r3, [r7, #4]
    397c:	2b25      	cmp	r3, #37	; 0x25
    397e:	dd01      	ble.n	3984 <mdb_get_holding_register+0x18>
    3980:	2300      	movs	r3, #0
    3982:	e009      	b.n	3998 <mdb_get_holding_register+0x2c>
    3984:	230e      	movs	r3, #14
    3986:	18fb      	adds	r3, r7, r3
    3988:	4a05      	ldr	r2, [pc, #20]	; (39a0 <mdb_get_holding_register+0x34>)
    398a:	6879      	ldr	r1, [r7, #4]
    398c:	0049      	lsls	r1, r1, #1
    398e:	5a8a      	ldrh	r2, [r1, r2]
    3990:	801a      	strh	r2, [r3, #0]
    3992:	230e      	movs	r3, #14
    3994:	18fb      	adds	r3, r7, r3
    3996:	881b      	ldrh	r3, [r3, #0]
    3998:	0018      	movs	r0, r3
    399a:	46bd      	mov	sp, r7
    399c:	b004      	add	sp, #16
    399e:	bd80      	pop	{r7, pc}
    39a0:	20005d68 	.word	0x20005d68

000039a4 <pdu_report_server_id>:
    39a4:	b580      	push	{r7, lr}
    39a6:	b086      	sub	sp, #24
    39a8:	af00      	add	r7, sp, #0
    39aa:	6078      	str	r0, [r7, #4]
    39ac:	2311      	movs	r3, #17
    39ae:	60fb      	str	r3, [r7, #12]
    39b0:	4b1f      	ldr	r3, [pc, #124]	; (3a30 <pdu_report_server_id+0x8c>)
    39b2:	681a      	ldr	r2, [r3, #0]
    39b4:	687b      	ldr	r3, [r7, #4]
    39b6:	18d2      	adds	r2, r2, r3
    39b8:	230b      	movs	r3, #11
    39ba:	18fb      	adds	r3, r7, r3
    39bc:	7812      	ldrb	r2, [r2, #0]
    39be:	701a      	strb	r2, [r3, #0]
    39c0:	687b      	ldr	r3, [r7, #4]
    39c2:	617b      	str	r3, [r7, #20]
    39c4:	697b      	ldr	r3, [r7, #20]
    39c6:	1c5a      	adds	r2, r3, #1
    39c8:	617a      	str	r2, [r7, #20]
    39ca:	4a1a      	ldr	r2, [pc, #104]	; (3a34 <pdu_report_server_id+0x90>)
    39cc:	210b      	movs	r1, #11
    39ce:	1879      	adds	r1, r7, r1
    39d0:	7809      	ldrb	r1, [r1, #0]
    39d2:	54d1      	strb	r1, [r2, r3]
    39d4:	697b      	ldr	r3, [r7, #20]
    39d6:	1c5a      	adds	r2, r3, #1
    39d8:	617a      	str	r2, [r7, #20]
    39da:	68fa      	ldr	r2, [r7, #12]
    39dc:	b2d2      	uxtb	r2, r2
    39de:	3202      	adds	r2, #2
    39e0:	b2d1      	uxtb	r1, r2
    39e2:	4a14      	ldr	r2, [pc, #80]	; (3a34 <pdu_report_server_id+0x90>)
    39e4:	54d1      	strb	r1, [r2, r3]
    39e6:	697b      	ldr	r3, [r7, #20]
    39e8:	1c5a      	adds	r2, r3, #1
    39ea:	617a      	str	r2, [r7, #20]
    39ec:	4a11      	ldr	r2, [pc, #68]	; (3a34 <pdu_report_server_id+0x90>)
    39ee:	2111      	movs	r1, #17
    39f0:	54d1      	strb	r1, [r2, r3]
    39f2:	697b      	ldr	r3, [r7, #20]
    39f4:	1c5a      	adds	r2, r3, #1
    39f6:	617a      	str	r2, [r7, #20]
    39f8:	4a0e      	ldr	r2, [pc, #56]	; (3a34 <pdu_report_server_id+0x90>)
    39fa:	21ff      	movs	r1, #255	; 0xff
    39fc:	54d1      	strb	r1, [r2, r3]
    39fe:	2300      	movs	r3, #0
    3a00:	613b      	str	r3, [r7, #16]
    3a02:	e00b      	b.n	3a1c <pdu_report_server_id+0x78>
    3a04:	697b      	ldr	r3, [r7, #20]
    3a06:	1c5a      	adds	r2, r3, #1
    3a08:	617a      	str	r2, [r7, #20]
    3a0a:	490b      	ldr	r1, [pc, #44]	; (3a38 <pdu_report_server_id+0x94>)
    3a0c:	693a      	ldr	r2, [r7, #16]
    3a0e:	188a      	adds	r2, r1, r2
    3a10:	7811      	ldrb	r1, [r2, #0]
    3a12:	4a08      	ldr	r2, [pc, #32]	; (3a34 <pdu_report_server_id+0x90>)
    3a14:	54d1      	strb	r1, [r2, r3]
    3a16:	693b      	ldr	r3, [r7, #16]
    3a18:	3301      	adds	r3, #1
    3a1a:	613b      	str	r3, [r7, #16]
    3a1c:	693a      	ldr	r2, [r7, #16]
    3a1e:	68fb      	ldr	r3, [r7, #12]
    3a20:	429a      	cmp	r2, r3
    3a22:	dbef      	blt.n	3a04 <pdu_report_server_id+0x60>
    3a24:	697b      	ldr	r3, [r7, #20]
    3a26:	0018      	movs	r0, r3
    3a28:	46bd      	mov	sp, r7
    3a2a:	b006      	add	sp, #24
    3a2c:	bd80      	pop	{r7, pc}
    3a2e:	46c0      	nop			; (mov r8, r8)
    3a30:	20005dc0 	.word	0x20005dc0
    3a34:	20005dc4 	.word	0x20005dc4
    3a38:	00009358 	.word	0x00009358

00003a3c <pdu_read_input_registers>:
    3a3c:	b580      	push	{r7, lr}
    3a3e:	b086      	sub	sp, #24
    3a40:	af00      	add	r7, sp, #0
    3a42:	6078      	str	r0, [r7, #4]
    3a44:	4b4e      	ldr	r3, [pc, #312]	; (3b80 <pdu_read_input_registers+0x144>)
    3a46:	681a      	ldr	r2, [r3, #0]
    3a48:	687b      	ldr	r3, [r7, #4]
    3a4a:	18d2      	adds	r2, r2, r3
    3a4c:	230f      	movs	r3, #15
    3a4e:	18fb      	adds	r3, r7, r3
    3a50:	7812      	ldrb	r2, [r2, #0]
    3a52:	701a      	strb	r2, [r3, #0]
    3a54:	4b4a      	ldr	r3, [pc, #296]	; (3b80 <pdu_read_input_registers+0x144>)
    3a56:	681a      	ldr	r2, [r3, #0]
    3a58:	687b      	ldr	r3, [r7, #4]
    3a5a:	3301      	adds	r3, #1
    3a5c:	18d3      	adds	r3, r2, r3
    3a5e:	781b      	ldrb	r3, [r3, #0]
    3a60:	021b      	lsls	r3, r3, #8
    3a62:	b21a      	sxth	r2, r3
    3a64:	4b46      	ldr	r3, [pc, #280]	; (3b80 <pdu_read_input_registers+0x144>)
    3a66:	6819      	ldr	r1, [r3, #0]
    3a68:	687b      	ldr	r3, [r7, #4]
    3a6a:	3302      	adds	r3, #2
    3a6c:	18cb      	adds	r3, r1, r3
    3a6e:	781b      	ldrb	r3, [r3, #0]
    3a70:	b21b      	sxth	r3, r3
    3a72:	4313      	orrs	r3, r2
    3a74:	b21a      	sxth	r2, r3
    3a76:	230c      	movs	r3, #12
    3a78:	18fb      	adds	r3, r7, r3
    3a7a:	801a      	strh	r2, [r3, #0]
    3a7c:	4b40      	ldr	r3, [pc, #256]	; (3b80 <pdu_read_input_registers+0x144>)
    3a7e:	681a      	ldr	r2, [r3, #0]
    3a80:	687b      	ldr	r3, [r7, #4]
    3a82:	3303      	adds	r3, #3
    3a84:	18d3      	adds	r3, r2, r3
    3a86:	781b      	ldrb	r3, [r3, #0]
    3a88:	021b      	lsls	r3, r3, #8
    3a8a:	b21a      	sxth	r2, r3
    3a8c:	4b3c      	ldr	r3, [pc, #240]	; (3b80 <pdu_read_input_registers+0x144>)
    3a8e:	6819      	ldr	r1, [r3, #0]
    3a90:	687b      	ldr	r3, [r7, #4]
    3a92:	3304      	adds	r3, #4
    3a94:	18cb      	adds	r3, r1, r3
    3a96:	781b      	ldrb	r3, [r3, #0]
    3a98:	b21b      	sxth	r3, r3
    3a9a:	4313      	orrs	r3, r2
    3a9c:	b21a      	sxth	r2, r3
    3a9e:	230a      	movs	r3, #10
    3aa0:	18fb      	adds	r3, r7, r3
    3aa2:	801a      	strh	r2, [r3, #0]
    3aa4:	230c      	movs	r3, #12
    3aa6:	18fb      	adds	r3, r7, r3
    3aa8:	881b      	ldrh	r3, [r3, #0]
    3aaa:	2bff      	cmp	r3, #255	; 0xff
    3aac:	d90a      	bls.n	3ac4 <pdu_read_input_registers+0x88>
    3aae:	230c      	movs	r3, #12
    3ab0:	18fb      	adds	r3, r7, r3
    3ab2:	881a      	ldrh	r2, [r3, #0]
    3ab4:	230a      	movs	r3, #10
    3ab6:	18fb      	adds	r3, r7, r3
    3ab8:	881b      	ldrh	r3, [r3, #0]
    3aba:	18d2      	adds	r2, r2, r3
    3abc:	2304      	movs	r3, #4
    3abe:	33ff      	adds	r3, #255	; 0xff
    3ac0:	429a      	cmp	r2, r3
    3ac2:	dd15      	ble.n	3af0 <pdu_read_input_registers+0xb4>
    3ac4:	687b      	ldr	r3, [r7, #4]
    3ac6:	613b      	str	r3, [r7, #16]
    3ac8:	693b      	ldr	r3, [r7, #16]
    3aca:	1c5a      	adds	r2, r3, #1
    3acc:	613a      	str	r2, [r7, #16]
    3ace:	220f      	movs	r2, #15
    3ad0:	18ba      	adds	r2, r7, r2
    3ad2:	7812      	ldrb	r2, [r2, #0]
    3ad4:	2180      	movs	r1, #128	; 0x80
    3ad6:	4249      	negs	r1, r1
    3ad8:	430a      	orrs	r2, r1
    3ada:	b2d1      	uxtb	r1, r2
    3adc:	4a29      	ldr	r2, [pc, #164]	; (3b84 <pdu_read_input_registers+0x148>)
    3ade:	54d1      	strb	r1, [r2, r3]
    3ae0:	693b      	ldr	r3, [r7, #16]
    3ae2:	1c5a      	adds	r2, r3, #1
    3ae4:	613a      	str	r2, [r7, #16]
    3ae6:	4a27      	ldr	r2, [pc, #156]	; (3b84 <pdu_read_input_registers+0x148>)
    3ae8:	2102      	movs	r1, #2
    3aea:	54d1      	strb	r1, [r2, r3]
    3aec:	693b      	ldr	r3, [r7, #16]
    3aee:	e042      	b.n	3b76 <pdu_read_input_registers+0x13a>
    3af0:	687b      	ldr	r3, [r7, #4]
    3af2:	613b      	str	r3, [r7, #16]
    3af4:	693b      	ldr	r3, [r7, #16]
    3af6:	1c5a      	adds	r2, r3, #1
    3af8:	613a      	str	r2, [r7, #16]
    3afa:	4a22      	ldr	r2, [pc, #136]	; (3b84 <pdu_read_input_registers+0x148>)
    3afc:	210f      	movs	r1, #15
    3afe:	1879      	adds	r1, r7, r1
    3b00:	7809      	ldrb	r1, [r1, #0]
    3b02:	54d1      	strb	r1, [r2, r3]
    3b04:	693b      	ldr	r3, [r7, #16]
    3b06:	1c5a      	adds	r2, r3, #1
    3b08:	613a      	str	r2, [r7, #16]
    3b0a:	220a      	movs	r2, #10
    3b0c:	18ba      	adds	r2, r7, r2
    3b0e:	8812      	ldrh	r2, [r2, #0]
    3b10:	b2d2      	uxtb	r2, r2
    3b12:	1892      	adds	r2, r2, r2
    3b14:	b2d1      	uxtb	r1, r2
    3b16:	4a1b      	ldr	r2, [pc, #108]	; (3b84 <pdu_read_input_registers+0x148>)
    3b18:	54d1      	strb	r1, [r2, r3]
    3b1a:	2300      	movs	r3, #0
    3b1c:	617b      	str	r3, [r7, #20]
    3b1e:	e023      	b.n	3b68 <pdu_read_input_registers+0x12c>
    3b20:	230c      	movs	r3, #12
    3b22:	18fb      	adds	r3, r7, r3
    3b24:	881b      	ldrh	r3, [r3, #0]
    3b26:	1e5a      	subs	r2, r3, #1
    3b28:	3aff      	subs	r2, #255	; 0xff
    3b2a:	697b      	ldr	r3, [r7, #20]
    3b2c:	18d1      	adds	r1, r2, r3
    3b2e:	2308      	movs	r3, #8
    3b30:	18fb      	adds	r3, r7, r3
    3b32:	4a15      	ldr	r2, [pc, #84]	; (3b88 <pdu_read_input_registers+0x14c>)
    3b34:	0049      	lsls	r1, r1, #1
    3b36:	5a8a      	ldrh	r2, [r1, r2]
    3b38:	801a      	strh	r2, [r3, #0]
    3b3a:	693b      	ldr	r3, [r7, #16]
    3b3c:	1c5a      	adds	r2, r3, #1
    3b3e:	613a      	str	r2, [r7, #16]
    3b40:	2208      	movs	r2, #8
    3b42:	18ba      	adds	r2, r7, r2
    3b44:	8812      	ldrh	r2, [r2, #0]
    3b46:	0a12      	lsrs	r2, r2, #8
    3b48:	b292      	uxth	r2, r2
    3b4a:	b2d1      	uxtb	r1, r2
    3b4c:	4a0d      	ldr	r2, [pc, #52]	; (3b84 <pdu_read_input_registers+0x148>)
    3b4e:	54d1      	strb	r1, [r2, r3]
    3b50:	693b      	ldr	r3, [r7, #16]
    3b52:	1c5a      	adds	r2, r3, #1
    3b54:	613a      	str	r2, [r7, #16]
    3b56:	2208      	movs	r2, #8
    3b58:	18ba      	adds	r2, r7, r2
    3b5a:	8812      	ldrh	r2, [r2, #0]
    3b5c:	b2d1      	uxtb	r1, r2
    3b5e:	4a09      	ldr	r2, [pc, #36]	; (3b84 <pdu_read_input_registers+0x148>)
    3b60:	54d1      	strb	r1, [r2, r3]
    3b62:	697b      	ldr	r3, [r7, #20]
    3b64:	3301      	adds	r3, #1
    3b66:	617b      	str	r3, [r7, #20]
    3b68:	230a      	movs	r3, #10
    3b6a:	18fb      	adds	r3, r7, r3
    3b6c:	881a      	ldrh	r2, [r3, #0]
    3b6e:	697b      	ldr	r3, [r7, #20]
    3b70:	429a      	cmp	r2, r3
    3b72:	dcd5      	bgt.n	3b20 <pdu_read_input_registers+0xe4>
    3b74:	693b      	ldr	r3, [r7, #16]
    3b76:	0018      	movs	r0, r3
    3b78:	46bd      	mov	sp, r7
    3b7a:	b006      	add	sp, #24
    3b7c:	bd80      	pop	{r7, pc}
    3b7e:	46c0      	nop			; (mov r8, r8)
    3b80:	20005dc0 	.word	0x20005dc0
    3b84:	20005dc4 	.word	0x20005dc4
    3b88:	20005db4 	.word	0x20005db4

00003b8c <pdu_write_multiply_registers>:
    3b8c:	b580      	push	{r7, lr}
    3b8e:	b08a      	sub	sp, #40	; 0x28
    3b90:	af00      	add	r7, sp, #0
    3b92:	6078      	str	r0, [r7, #4]
    3b94:	4b64      	ldr	r3, [pc, #400]	; (3d28 <pdu_write_multiply_registers+0x19c>)
    3b96:	681a      	ldr	r2, [r3, #0]
    3b98:	687b      	ldr	r3, [r7, #4]
    3b9a:	18d2      	adds	r2, r2, r3
    3b9c:	231f      	movs	r3, #31
    3b9e:	18fb      	adds	r3, r7, r3
    3ba0:	7812      	ldrb	r2, [r2, #0]
    3ba2:	701a      	strb	r2, [r3, #0]
    3ba4:	4b60      	ldr	r3, [pc, #384]	; (3d28 <pdu_write_multiply_registers+0x19c>)
    3ba6:	681a      	ldr	r2, [r3, #0]
    3ba8:	687b      	ldr	r3, [r7, #4]
    3baa:	3301      	adds	r3, #1
    3bac:	18d3      	adds	r3, r2, r3
    3bae:	781b      	ldrb	r3, [r3, #0]
    3bb0:	021b      	lsls	r3, r3, #8
    3bb2:	b21a      	sxth	r2, r3
    3bb4:	4b5c      	ldr	r3, [pc, #368]	; (3d28 <pdu_write_multiply_registers+0x19c>)
    3bb6:	6819      	ldr	r1, [r3, #0]
    3bb8:	687b      	ldr	r3, [r7, #4]
    3bba:	3302      	adds	r3, #2
    3bbc:	18cb      	adds	r3, r1, r3
    3bbe:	781b      	ldrb	r3, [r3, #0]
    3bc0:	b21b      	sxth	r3, r3
    3bc2:	4313      	orrs	r3, r2
    3bc4:	b21a      	sxth	r2, r3
    3bc6:	231c      	movs	r3, #28
    3bc8:	18fb      	adds	r3, r7, r3
    3bca:	801a      	strh	r2, [r3, #0]
    3bcc:	4b56      	ldr	r3, [pc, #344]	; (3d28 <pdu_write_multiply_registers+0x19c>)
    3bce:	681a      	ldr	r2, [r3, #0]
    3bd0:	687b      	ldr	r3, [r7, #4]
    3bd2:	3303      	adds	r3, #3
    3bd4:	18d3      	adds	r3, r2, r3
    3bd6:	781b      	ldrb	r3, [r3, #0]
    3bd8:	021b      	lsls	r3, r3, #8
    3bda:	b21a      	sxth	r2, r3
    3bdc:	4b52      	ldr	r3, [pc, #328]	; (3d28 <pdu_write_multiply_registers+0x19c>)
    3bde:	6819      	ldr	r1, [r3, #0]
    3be0:	687b      	ldr	r3, [r7, #4]
    3be2:	3304      	adds	r3, #4
    3be4:	18cb      	adds	r3, r1, r3
    3be6:	781b      	ldrb	r3, [r3, #0]
    3be8:	b21b      	sxth	r3, r3
    3bea:	4313      	orrs	r3, r2
    3bec:	b21a      	sxth	r2, r3
    3bee:	231a      	movs	r3, #26
    3bf0:	18fb      	adds	r3, r7, r3
    3bf2:	801a      	strh	r2, [r3, #0]
    3bf4:	4b4c      	ldr	r3, [pc, #304]	; (3d28 <pdu_write_multiply_registers+0x19c>)
    3bf6:	681a      	ldr	r2, [r3, #0]
    3bf8:	687b      	ldr	r3, [r7, #4]
    3bfa:	3305      	adds	r3, #5
    3bfc:	18d2      	adds	r2, r2, r3
    3bfe:	2319      	movs	r3, #25
    3c00:	18fb      	adds	r3, r7, r3
    3c02:	7812      	ldrb	r2, [r2, #0]
    3c04:	701a      	strb	r2, [r3, #0]
    3c06:	231c      	movs	r3, #28
    3c08:	18fb      	adds	r3, r7, r3
    3c0a:	881a      	ldrh	r2, [r3, #0]
    3c0c:	231a      	movs	r3, #26
    3c0e:	18fb      	adds	r3, r7, r3
    3c10:	881b      	ldrh	r3, [r3, #0]
    3c12:	18d3      	adds	r3, r2, r3
    3c14:	2b26      	cmp	r3, #38	; 0x26
    3c16:	dd14      	ble.n	3c42 <pdu_write_multiply_registers+0xb6>
    3c18:	687b      	ldr	r3, [r7, #4]
    3c1a:	623b      	str	r3, [r7, #32]
    3c1c:	6a3b      	ldr	r3, [r7, #32]
    3c1e:	1c5a      	adds	r2, r3, #1
    3c20:	623a      	str	r2, [r7, #32]
    3c22:	221f      	movs	r2, #31
    3c24:	18ba      	adds	r2, r7, r2
    3c26:	7812      	ldrb	r2, [r2, #0]
    3c28:	2180      	movs	r1, #128	; 0x80
    3c2a:	4249      	negs	r1, r1
    3c2c:	430a      	orrs	r2, r1
    3c2e:	b2d1      	uxtb	r1, r2
    3c30:	4a3e      	ldr	r2, [pc, #248]	; (3d2c <pdu_write_multiply_registers+0x1a0>)
    3c32:	54d1      	strb	r1, [r2, r3]
    3c34:	6a3b      	ldr	r3, [r7, #32]
    3c36:	1c5a      	adds	r2, r3, #1
    3c38:	623a      	str	r2, [r7, #32]
    3c3a:	4a3c      	ldr	r2, [pc, #240]	; (3d2c <pdu_write_multiply_registers+0x1a0>)
    3c3c:	2102      	movs	r1, #2
    3c3e:	54d1      	strb	r1, [r2, r3]
    3c40:	e04b      	b.n	3cda <pdu_write_multiply_registers+0x14e>
    3c42:	687b      	ldr	r3, [r7, #4]
    3c44:	3306      	adds	r3, #6
    3c46:	623b      	str	r3, [r7, #32]
    3c48:	2300      	movs	r3, #0
    3c4a:	627b      	str	r3, [r7, #36]	; 0x24
    3c4c:	e028      	b.n	3ca0 <pdu_write_multiply_registers+0x114>
    3c4e:	4b36      	ldr	r3, [pc, #216]	; (3d28 <pdu_write_multiply_registers+0x19c>)
    3c50:	681a      	ldr	r2, [r3, #0]
    3c52:	6a3b      	ldr	r3, [r7, #32]
    3c54:	1c59      	adds	r1, r3, #1
    3c56:	6239      	str	r1, [r7, #32]
    3c58:	18d3      	adds	r3, r2, r3
    3c5a:	781b      	ldrb	r3, [r3, #0]
    3c5c:	b29a      	uxth	r2, r3
    3c5e:	2316      	movs	r3, #22
    3c60:	18fb      	adds	r3, r7, r3
    3c62:	0212      	lsls	r2, r2, #8
    3c64:	801a      	strh	r2, [r3, #0]
    3c66:	4b30      	ldr	r3, [pc, #192]	; (3d28 <pdu_write_multiply_registers+0x19c>)
    3c68:	681a      	ldr	r2, [r3, #0]
    3c6a:	6a3b      	ldr	r3, [r7, #32]
    3c6c:	1c59      	adds	r1, r3, #1
    3c6e:	6239      	str	r1, [r7, #32]
    3c70:	18d3      	adds	r3, r2, r3
    3c72:	781b      	ldrb	r3, [r3, #0]
    3c74:	b299      	uxth	r1, r3
    3c76:	2316      	movs	r3, #22
    3c78:	18fb      	adds	r3, r7, r3
    3c7a:	2216      	movs	r2, #22
    3c7c:	18ba      	adds	r2, r7, r2
    3c7e:	8812      	ldrh	r2, [r2, #0]
    3c80:	430a      	orrs	r2, r1
    3c82:	801a      	strh	r2, [r3, #0]
    3c84:	231c      	movs	r3, #28
    3c86:	18fb      	adds	r3, r7, r3
    3c88:	881a      	ldrh	r2, [r3, #0]
    3c8a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3c8c:	18d2      	adds	r2, r2, r3
    3c8e:	4b28      	ldr	r3, [pc, #160]	; (3d30 <pdu_write_multiply_registers+0x1a4>)
    3c90:	0052      	lsls	r2, r2, #1
    3c92:	2116      	movs	r1, #22
    3c94:	1879      	adds	r1, r7, r1
    3c96:	8809      	ldrh	r1, [r1, #0]
    3c98:	52d1      	strh	r1, [r2, r3]
    3c9a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3c9c:	3301      	adds	r3, #1
    3c9e:	627b      	str	r3, [r7, #36]	; 0x24
    3ca0:	231a      	movs	r3, #26
    3ca2:	18fb      	adds	r3, r7, r3
    3ca4:	881a      	ldrh	r2, [r3, #0]
    3ca6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3ca8:	429a      	cmp	r2, r3
    3caa:	dcd0      	bgt.n	3c4e <pdu_write_multiply_registers+0xc2>
    3cac:	687b      	ldr	r3, [r7, #4]
    3cae:	623b      	str	r3, [r7, #32]
    3cb0:	687b      	ldr	r3, [r7, #4]
    3cb2:	627b      	str	r3, [r7, #36]	; 0x24
    3cb4:	e00c      	b.n	3cd0 <pdu_write_multiply_registers+0x144>
    3cb6:	6a3b      	ldr	r3, [r7, #32]
    3cb8:	1c5a      	adds	r2, r3, #1
    3cba:	623a      	str	r2, [r7, #32]
    3cbc:	4a1a      	ldr	r2, [pc, #104]	; (3d28 <pdu_write_multiply_registers+0x19c>)
    3cbe:	6811      	ldr	r1, [r2, #0]
    3cc0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
    3cc2:	188a      	adds	r2, r1, r2
    3cc4:	7811      	ldrb	r1, [r2, #0]
    3cc6:	4a19      	ldr	r2, [pc, #100]	; (3d2c <pdu_write_multiply_registers+0x1a0>)
    3cc8:	54d1      	strb	r1, [r2, r3]
    3cca:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3ccc:	3301      	adds	r3, #1
    3cce:	627b      	str	r3, [r7, #36]	; 0x24
    3cd0:	687b      	ldr	r3, [r7, #4]
    3cd2:	1d5a      	adds	r2, r3, #5
    3cd4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    3cd6:	429a      	cmp	r2, r3
    3cd8:	dced      	bgt.n	3cb6 <pdu_write_multiply_registers+0x12a>
    3cda:	231c      	movs	r3, #28
    3cdc:	18fb      	adds	r3, r7, r3
    3cde:	881b      	ldrh	r3, [r3, #0]
    3ce0:	2b00      	cmp	r3, #0
    3ce2:	d107      	bne.n	3cf4 <pdu_write_multiply_registers+0x168>
    3ce4:	4b13      	ldr	r3, [pc, #76]	; (3d34 <pdu_write_multiply_registers+0x1a8>)
    3ce6:	6818      	ldr	r0, [r3, #0]
    3ce8:	4b11      	ldr	r3, [pc, #68]	; (3d30 <pdu_write_multiply_registers+0x1a4>)
    3cea:	881b      	ldrh	r3, [r3, #0]
    3cec:	2200      	movs	r2, #0
    3cee:	0019      	movs	r1, r3
    3cf0:	f003 f99e 	bl	7030 <osMessagePut>
    3cf4:	231c      	movs	r3, #28
    3cf6:	18fb      	adds	r3, r7, r3
    3cf8:	881b      	ldrh	r3, [r3, #0]
    3cfa:	2b20      	cmp	r3, #32
    3cfc:	d10f      	bne.n	3d1e <pdu_write_multiply_registers+0x192>
    3cfe:	4b0e      	ldr	r3, [pc, #56]	; (3d38 <pdu_write_multiply_registers+0x1ac>)
    3d00:	210c      	movs	r1, #12
    3d02:	0018      	movs	r0, r3
    3d04:	f7ff fbd4 	bl	34b0 <crc16>
    3d08:	1e03      	subs	r3, r0, #0
    3d0a:	d108      	bne.n	3d1e <pdu_write_multiply_registers+0x192>
    3d0c:	4b0a      	ldr	r3, [pc, #40]	; (3d38 <pdu_write_multiply_registers+0x1ac>)
    3d0e:	0018      	movs	r0, r3
    3d10:	f7ff fc32 	bl	3578 <par_save>
    3d14:	2308      	movs	r3, #8
    3d16:	18fb      	adds	r3, r7, r3
    3d18:	0018      	movs	r0, r3
    3d1a:	f7ff fc59 	bl	35d0 <par_read>
    3d1e:	6a3b      	ldr	r3, [r7, #32]
    3d20:	0018      	movs	r0, r3
    3d22:	46bd      	mov	sp, r7
    3d24:	b00a      	add	sp, #40	; 0x28
    3d26:	bd80      	pop	{r7, pc}
    3d28:	20005dc0 	.word	0x20005dc0
    3d2c:	20005dc4 	.word	0x20005dc4
    3d30:	20005d68 	.word	0x20005d68
    3d34:	20000864 	.word	0x20000864
    3d38:	20005da8 	.word	0x20005da8

00003d3c <u16tobe>:
    3d3c:	b580      	push	{r7, lr}
    3d3e:	b082      	sub	sp, #8
    3d40:	af00      	add	r7, sp, #0
    3d42:	0002      	movs	r2, r0
    3d44:	6039      	str	r1, [r7, #0]
    3d46:	1dbb      	adds	r3, r7, #6
    3d48:	801a      	strh	r2, [r3, #0]
    3d4a:	683b      	ldr	r3, [r7, #0]
    3d4c:	1c5a      	adds	r2, r3, #1
    3d4e:	603a      	str	r2, [r7, #0]
    3d50:	1dba      	adds	r2, r7, #6
    3d52:	8812      	ldrh	r2, [r2, #0]
    3d54:	0a12      	lsrs	r2, r2, #8
    3d56:	b292      	uxth	r2, r2
    3d58:	b2d2      	uxtb	r2, r2
    3d5a:	701a      	strb	r2, [r3, #0]
    3d5c:	683b      	ldr	r3, [r7, #0]
    3d5e:	1c5a      	adds	r2, r3, #1
    3d60:	603a      	str	r2, [r7, #0]
    3d62:	1dba      	adds	r2, r7, #6
    3d64:	8812      	ldrh	r2, [r2, #0]
    3d66:	b2d2      	uxtb	r2, r2
    3d68:	701a      	strb	r2, [r3, #0]
    3d6a:	46c0      	nop			; (mov r8, r8)
    3d6c:	46bd      	mov	sp, r7
    3d6e:	b002      	add	sp, #8
    3d70:	bd80      	pop	{r7, pc}
    3d72:	46c0      	nop			; (mov r8, r8)

00003d74 <u32tobe>:
    3d74:	b580      	push	{r7, lr}
    3d76:	b082      	sub	sp, #8
    3d78:	af00      	add	r7, sp, #0
    3d7a:	6078      	str	r0, [r7, #4]
    3d7c:	6039      	str	r1, [r7, #0]
    3d7e:	683b      	ldr	r3, [r7, #0]
    3d80:	1c5a      	adds	r2, r3, #1
    3d82:	603a      	str	r2, [r7, #0]
    3d84:	687a      	ldr	r2, [r7, #4]
    3d86:	0e12      	lsrs	r2, r2, #24
    3d88:	b2d2      	uxtb	r2, r2
    3d8a:	701a      	strb	r2, [r3, #0]
    3d8c:	683b      	ldr	r3, [r7, #0]
    3d8e:	1c5a      	adds	r2, r3, #1
    3d90:	603a      	str	r2, [r7, #0]
    3d92:	687a      	ldr	r2, [r7, #4]
    3d94:	0c12      	lsrs	r2, r2, #16
    3d96:	b2d2      	uxtb	r2, r2
    3d98:	701a      	strb	r2, [r3, #0]
    3d9a:	683b      	ldr	r3, [r7, #0]
    3d9c:	1c5a      	adds	r2, r3, #1
    3d9e:	603a      	str	r2, [r7, #0]
    3da0:	687a      	ldr	r2, [r7, #4]
    3da2:	0a12      	lsrs	r2, r2, #8
    3da4:	b2d2      	uxtb	r2, r2
    3da6:	701a      	strb	r2, [r3, #0]
    3da8:	683b      	ldr	r3, [r7, #0]
    3daa:	1c5a      	adds	r2, r3, #1
    3dac:	603a      	str	r2, [r7, #0]
    3dae:	687a      	ldr	r2, [r7, #4]
    3db0:	b2d2      	uxtb	r2, r2
    3db2:	701a      	strb	r2, [r3, #0]
    3db4:	46c0      	nop			; (mov r8, r8)
    3db6:	46bd      	mov	sp, r7
    3db8:	b002      	add	sp, #8
    3dba:	bd80      	pop	{r7, pc}

00003dbc <pdu_read_fifo_queue>:
    3dbc:	b580      	push	{r7, lr}
    3dbe:	b090      	sub	sp, #64	; 0x40
    3dc0:	af00      	add	r7, sp, #0
    3dc2:	6078      	str	r0, [r7, #4]
    3dc4:	2336      	movs	r3, #54	; 0x36
    3dc6:	18fb      	adds	r3, r7, r3
    3dc8:	2203      	movs	r2, #3
    3dca:	801a      	strh	r2, [r3, #0]
    3dcc:	4b7c      	ldr	r3, [pc, #496]	; (3fc0 <pdu_read_fifo_queue+0x204>)
    3dce:	681a      	ldr	r2, [r3, #0]
    3dd0:	687b      	ldr	r3, [r7, #4]
    3dd2:	18d2      	adds	r2, r2, r3
    3dd4:	2335      	movs	r3, #53	; 0x35
    3dd6:	18fb      	adds	r3, r7, r3
    3dd8:	7812      	ldrb	r2, [r2, #0]
    3dda:	701a      	strb	r2, [r3, #0]
    3ddc:	4b78      	ldr	r3, [pc, #480]	; (3fc0 <pdu_read_fifo_queue+0x204>)
    3dde:	681a      	ldr	r2, [r3, #0]
    3de0:	687b      	ldr	r3, [r7, #4]
    3de2:	3301      	adds	r3, #1
    3de4:	18d3      	adds	r3, r2, r3
    3de6:	781b      	ldrb	r3, [r3, #0]
    3de8:	021b      	lsls	r3, r3, #8
    3dea:	b21a      	sxth	r2, r3
    3dec:	4b74      	ldr	r3, [pc, #464]	; (3fc0 <pdu_read_fifo_queue+0x204>)
    3dee:	6819      	ldr	r1, [r3, #0]
    3df0:	687b      	ldr	r3, [r7, #4]
    3df2:	3302      	adds	r3, #2
    3df4:	18cb      	adds	r3, r1, r3
    3df6:	781b      	ldrb	r3, [r3, #0]
    3df8:	b21b      	sxth	r3, r3
    3dfa:	4313      	orrs	r3, r2
    3dfc:	b21a      	sxth	r2, r3
    3dfe:	2332      	movs	r3, #50	; 0x32
    3e00:	18fb      	adds	r3, r7, r3
    3e02:	801a      	strh	r2, [r3, #0]
    3e04:	2332      	movs	r3, #50	; 0x32
    3e06:	18fb      	adds	r3, r7, r3
    3e08:	881a      	ldrh	r2, [r3, #0]
    3e0a:	2380      	movs	r3, #128	; 0x80
    3e0c:	009b      	lsls	r3, r3, #2
    3e0e:	429a      	cmp	r2, r3
    3e10:	d014      	beq.n	3e3c <pdu_read_fifo_queue+0x80>
    3e12:	687b      	ldr	r3, [r7, #4]
    3e14:	63fb      	str	r3, [r7, #60]	; 0x3c
    3e16:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e18:	1c5a      	adds	r2, r3, #1
    3e1a:	63fa      	str	r2, [r7, #60]	; 0x3c
    3e1c:	2235      	movs	r2, #53	; 0x35
    3e1e:	18ba      	adds	r2, r7, r2
    3e20:	7812      	ldrb	r2, [r2, #0]
    3e22:	2180      	movs	r1, #128	; 0x80
    3e24:	4249      	negs	r1, r1
    3e26:	430a      	orrs	r2, r1
    3e28:	b2d1      	uxtb	r1, r2
    3e2a:	4a66      	ldr	r2, [pc, #408]	; (3fc4 <pdu_read_fifo_queue+0x208>)
    3e2c:	54d1      	strb	r1, [r2, r3]
    3e2e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e30:	1c5a      	adds	r2, r3, #1
    3e32:	63fa      	str	r2, [r7, #60]	; 0x3c
    3e34:	4a63      	ldr	r2, [pc, #396]	; (3fc4 <pdu_read_fifo_queue+0x208>)
    3e36:	2102      	movs	r1, #2
    3e38:	54d1      	strb	r1, [r2, r3]
    3e3a:	e0bb      	b.n	3fb4 <pdu_read_fifo_queue+0x1f8>
    3e3c:	687b      	ldr	r3, [r7, #4]
    3e3e:	63fb      	str	r3, [r7, #60]	; 0x3c
    3e40:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e42:	1c5a      	adds	r2, r3, #1
    3e44:	63fa      	str	r2, [r7, #60]	; 0x3c
    3e46:	4a5f      	ldr	r2, [pc, #380]	; (3fc4 <pdu_read_fifo_queue+0x208>)
    3e48:	2135      	movs	r1, #53	; 0x35
    3e4a:	1879      	adds	r1, r7, r1
    3e4c:	7809      	ldrb	r1, [r1, #0]
    3e4e:	54d1      	strb	r1, [r2, r3]
    3e50:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e52:	1c5a      	adds	r2, r3, #1
    3e54:	63fa      	str	r2, [r7, #60]	; 0x3c
    3e56:	4a5b      	ldr	r2, [pc, #364]	; (3fc4 <pdu_read_fifo_queue+0x208>)
    3e58:	2100      	movs	r1, #0
    3e5a:	54d1      	strb	r1, [r2, r3]
    3e5c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e5e:	1c5a      	adds	r2, r3, #1
    3e60:	63fa      	str	r2, [r7, #60]	; 0x3c
    3e62:	4a58      	ldr	r2, [pc, #352]	; (3fc4 <pdu_read_fifo_queue+0x208>)
    3e64:	2100      	movs	r1, #0
    3e66:	54d1      	strb	r1, [r2, r3]
    3e68:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e6a:	1c5a      	adds	r2, r3, #1
    3e6c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3e6e:	4a55      	ldr	r2, [pc, #340]	; (3fc4 <pdu_read_fifo_queue+0x208>)
    3e70:	2100      	movs	r1, #0
    3e72:	54d1      	strb	r1, [r2, r3]
    3e74:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e76:	1c5a      	adds	r2, r3, #1
    3e78:	63fa      	str	r2, [r7, #60]	; 0x3c
    3e7a:	4a52      	ldr	r2, [pc, #328]	; (3fc4 <pdu_read_fifo_queue+0x208>)
    3e7c:	2100      	movs	r1, #0
    3e7e:	54d1      	strb	r1, [r2, r3]
    3e80:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3e82:	62fb      	str	r3, [r7, #44]	; 0x2c
    3e84:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3e86:	4b4f      	ldr	r3, [pc, #316]	; (3fc4 <pdu_read_fifo_queue+0x208>)
    3e88:	18d3      	adds	r3, r2, r3
    3e8a:	63bb      	str	r3, [r7, #56]	; 0x38
    3e8c:	e06e      	b.n	3f6c <pdu_read_fifo_queue+0x1b0>
    3e8e:	2300      	movs	r3, #0
    3e90:	62bb      	str	r3, [r7, #40]	; 0x28
    3e92:	2308      	movs	r3, #8
    3e94:	18fb      	adds	r3, r7, r3
    3e96:	2120      	movs	r1, #32
    3e98:	0018      	movs	r0, r3
    3e9a:	f7ff fbc1 	bl	3620 <mdb_fifo_read>
    3e9e:	0003      	movs	r3, r0
    3ea0:	62bb      	str	r3, [r7, #40]	; 0x28
    3ea2:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3ea4:	2b00      	cmp	r3, #0
    3ea6:	d069      	beq.n	3f7c <pdu_read_fifo_queue+0x1c0>
    3ea8:	2308      	movs	r3, #8
    3eaa:	18fb      	adds	r3, r7, r3
    3eac:	681b      	ldr	r3, [r3, #0]
    3eae:	001a      	movs	r2, r3
    3eb0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3eb2:	0019      	movs	r1, r3
    3eb4:	0010      	movs	r0, r2
    3eb6:	f7ff ff5d 	bl	3d74 <u32tobe>
    3eba:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3ebc:	3304      	adds	r3, #4
    3ebe:	63bb      	str	r3, [r7, #56]	; 0x38
    3ec0:	2308      	movs	r3, #8
    3ec2:	18fb      	adds	r3, r7, r3
    3ec4:	685b      	ldr	r3, [r3, #4]
    3ec6:	001a      	movs	r2, r3
    3ec8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3eca:	0019      	movs	r1, r3
    3ecc:	0010      	movs	r0, r2
    3ece:	f7ff ff51 	bl	3d74 <u32tobe>
    3ed2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3ed4:	3304      	adds	r3, #4
    3ed6:	63bb      	str	r3, [r7, #56]	; 0x38
    3ed8:	2308      	movs	r3, #8
    3eda:	18fb      	adds	r3, r7, r3
    3edc:	689b      	ldr	r3, [r3, #8]
    3ede:	001a      	movs	r2, r3
    3ee0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3ee2:	0019      	movs	r1, r3
    3ee4:	0010      	movs	r0, r2
    3ee6:	f7ff ff45 	bl	3d74 <u32tobe>
    3eea:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3eec:	3304      	adds	r3, #4
    3eee:	63bb      	str	r3, [r7, #56]	; 0x38
    3ef0:	2308      	movs	r3, #8
    3ef2:	18fb      	adds	r3, r7, r3
    3ef4:	68db      	ldr	r3, [r3, #12]
    3ef6:	001a      	movs	r2, r3
    3ef8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3efa:	0019      	movs	r1, r3
    3efc:	0010      	movs	r0, r2
    3efe:	f7ff ff39 	bl	3d74 <u32tobe>
    3f02:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3f04:	3304      	adds	r3, #4
    3f06:	63bb      	str	r3, [r7, #56]	; 0x38
    3f08:	2308      	movs	r3, #8
    3f0a:	18fb      	adds	r3, r7, r3
    3f0c:	691b      	ldr	r3, [r3, #16]
    3f0e:	001a      	movs	r2, r3
    3f10:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3f12:	0019      	movs	r1, r3
    3f14:	0010      	movs	r0, r2
    3f16:	f7ff ff2d 	bl	3d74 <u32tobe>
    3f1a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3f1c:	3304      	adds	r3, #4
    3f1e:	63bb      	str	r3, [r7, #56]	; 0x38
    3f20:	2308      	movs	r3, #8
    3f22:	18fb      	adds	r3, r7, r3
    3f24:	695b      	ldr	r3, [r3, #20]
    3f26:	001a      	movs	r2, r3
    3f28:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3f2a:	0019      	movs	r1, r3
    3f2c:	0010      	movs	r0, r2
    3f2e:	f7ff ff21 	bl	3d74 <u32tobe>
    3f32:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3f34:	3304      	adds	r3, #4
    3f36:	63bb      	str	r3, [r7, #56]	; 0x38
    3f38:	2308      	movs	r3, #8
    3f3a:	18fb      	adds	r3, r7, r3
    3f3c:	699b      	ldr	r3, [r3, #24]
    3f3e:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3f40:	0011      	movs	r1, r2
    3f42:	0018      	movs	r0, r3
    3f44:	f7ff ff16 	bl	3d74 <u32tobe>
    3f48:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3f4a:	3304      	adds	r3, #4
    3f4c:	63bb      	str	r3, [r7, #56]	; 0x38
    3f4e:	2308      	movs	r3, #8
    3f50:	18fb      	adds	r3, r7, r3
    3f52:	69db      	ldr	r3, [r3, #28]
    3f54:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3f56:	0011      	movs	r1, r2
    3f58:	0018      	movs	r0, r3
    3f5a:	f7ff ff0b 	bl	3d74 <u32tobe>
    3f5e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3f60:	3304      	adds	r3, #4
    3f62:	63bb      	str	r3, [r7, #56]	; 0x38
    3f64:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3f66:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3f68:	18d3      	adds	r3, r2, r3
    3f6a:	63fb      	str	r3, [r7, #60]	; 0x3c
    3f6c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3f6e:	3320      	adds	r3, #32
    3f70:	001a      	movs	r2, r3
    3f72:	23fc      	movs	r3, #252	; 0xfc
    3f74:	33ff      	adds	r3, #255	; 0xff
    3f76:	429a      	cmp	r2, r3
    3f78:	d989      	bls.n	3e8e <pdu_read_fifo_queue+0xd2>
    3f7a:	e000      	b.n	3f7e <pdu_read_fifo_queue+0x1c2>
    3f7c:	46c0      	nop			; (mov r8, r8)
    3f7e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3f80:	b29a      	uxth	r2, r3
    3f82:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3f84:	b29b      	uxth	r3, r3
    3f86:	1ad3      	subs	r3, r2, r3
    3f88:	b29b      	uxth	r3, r3
    3f8a:	3302      	adds	r3, #2
    3f8c:	b298      	uxth	r0, r3
    3f8e:	687b      	ldr	r3, [r7, #4]
    3f90:	1c5a      	adds	r2, r3, #1
    3f92:	4b0c      	ldr	r3, [pc, #48]	; (3fc4 <pdu_read_fifo_queue+0x208>)
    3f94:	18d3      	adds	r3, r2, r3
    3f96:	0019      	movs	r1, r3
    3f98:	f7ff fed0 	bl	3d3c <u16tobe>
    3f9c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3f9e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3fa0:	1ad3      	subs	r3, r2, r3
    3fa2:	105b      	asrs	r3, r3, #1
    3fa4:	b298      	uxth	r0, r3
    3fa6:	687b      	ldr	r3, [r7, #4]
    3fa8:	1cda      	adds	r2, r3, #3
    3faa:	4b06      	ldr	r3, [pc, #24]	; (3fc4 <pdu_read_fifo_queue+0x208>)
    3fac:	18d3      	adds	r3, r2, r3
    3fae:	0019      	movs	r1, r3
    3fb0:	f7ff fec4 	bl	3d3c <u16tobe>
    3fb4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3fb6:	0018      	movs	r0, r3
    3fb8:	46bd      	mov	sp, r7
    3fba:	b010      	add	sp, #64	; 0x40
    3fbc:	bd80      	pop	{r7, pc}
    3fbe:	46c0      	nop			; (mov r8, r8)
    3fc0:	20005dc0 	.word	0x20005dc0
    3fc4:	20005dc4 	.word	0x20005dc4

00003fc8 <pdu_read_holding_registers>:
    3fc8:	b580      	push	{r7, lr}
    3fca:	b086      	sub	sp, #24
    3fcc:	af00      	add	r7, sp, #0
    3fce:	6078      	str	r0, [r7, #4]
    3fd0:	4b49      	ldr	r3, [pc, #292]	; (40f8 <pdu_read_holding_registers+0x130>)
    3fd2:	681a      	ldr	r2, [r3, #0]
    3fd4:	687b      	ldr	r3, [r7, #4]
    3fd6:	18d2      	adds	r2, r2, r3
    3fd8:	230f      	movs	r3, #15
    3fda:	18fb      	adds	r3, r7, r3
    3fdc:	7812      	ldrb	r2, [r2, #0]
    3fde:	701a      	strb	r2, [r3, #0]
    3fe0:	4b45      	ldr	r3, [pc, #276]	; (40f8 <pdu_read_holding_registers+0x130>)
    3fe2:	681a      	ldr	r2, [r3, #0]
    3fe4:	687b      	ldr	r3, [r7, #4]
    3fe6:	3301      	adds	r3, #1
    3fe8:	18d3      	adds	r3, r2, r3
    3fea:	781b      	ldrb	r3, [r3, #0]
    3fec:	021b      	lsls	r3, r3, #8
    3fee:	b21a      	sxth	r2, r3
    3ff0:	4b41      	ldr	r3, [pc, #260]	; (40f8 <pdu_read_holding_registers+0x130>)
    3ff2:	6819      	ldr	r1, [r3, #0]
    3ff4:	687b      	ldr	r3, [r7, #4]
    3ff6:	3302      	adds	r3, #2
    3ff8:	18cb      	adds	r3, r1, r3
    3ffa:	781b      	ldrb	r3, [r3, #0]
    3ffc:	b21b      	sxth	r3, r3
    3ffe:	4313      	orrs	r3, r2
    4000:	b21a      	sxth	r2, r3
    4002:	230c      	movs	r3, #12
    4004:	18fb      	adds	r3, r7, r3
    4006:	801a      	strh	r2, [r3, #0]
    4008:	4b3b      	ldr	r3, [pc, #236]	; (40f8 <pdu_read_holding_registers+0x130>)
    400a:	681a      	ldr	r2, [r3, #0]
    400c:	687b      	ldr	r3, [r7, #4]
    400e:	3303      	adds	r3, #3
    4010:	18d3      	adds	r3, r2, r3
    4012:	781b      	ldrb	r3, [r3, #0]
    4014:	021b      	lsls	r3, r3, #8
    4016:	b21a      	sxth	r2, r3
    4018:	4b37      	ldr	r3, [pc, #220]	; (40f8 <pdu_read_holding_registers+0x130>)
    401a:	6819      	ldr	r1, [r3, #0]
    401c:	687b      	ldr	r3, [r7, #4]
    401e:	3304      	adds	r3, #4
    4020:	18cb      	adds	r3, r1, r3
    4022:	781b      	ldrb	r3, [r3, #0]
    4024:	b21b      	sxth	r3, r3
    4026:	4313      	orrs	r3, r2
    4028:	b21a      	sxth	r2, r3
    402a:	230a      	movs	r3, #10
    402c:	18fb      	adds	r3, r7, r3
    402e:	801a      	strh	r2, [r3, #0]
    4030:	230c      	movs	r3, #12
    4032:	18fb      	adds	r3, r7, r3
    4034:	881a      	ldrh	r2, [r3, #0]
    4036:	230a      	movs	r3, #10
    4038:	18fb      	adds	r3, r7, r3
    403a:	881b      	ldrh	r3, [r3, #0]
    403c:	18d3      	adds	r3, r2, r3
    403e:	2b26      	cmp	r3, #38	; 0x26
    4040:	dd14      	ble.n	406c <pdu_read_holding_registers+0xa4>
    4042:	687b      	ldr	r3, [r7, #4]
    4044:	613b      	str	r3, [r7, #16]
    4046:	693b      	ldr	r3, [r7, #16]
    4048:	1c5a      	adds	r2, r3, #1
    404a:	613a      	str	r2, [r7, #16]
    404c:	220f      	movs	r2, #15
    404e:	18ba      	adds	r2, r7, r2
    4050:	7812      	ldrb	r2, [r2, #0]
    4052:	2180      	movs	r1, #128	; 0x80
    4054:	4249      	negs	r1, r1
    4056:	430a      	orrs	r2, r1
    4058:	b2d1      	uxtb	r1, r2
    405a:	4a28      	ldr	r2, [pc, #160]	; (40fc <pdu_read_holding_registers+0x134>)
    405c:	54d1      	strb	r1, [r2, r3]
    405e:	693b      	ldr	r3, [r7, #16]
    4060:	1c5a      	adds	r2, r3, #1
    4062:	613a      	str	r2, [r7, #16]
    4064:	4a25      	ldr	r2, [pc, #148]	; (40fc <pdu_read_holding_registers+0x134>)
    4066:	2102      	movs	r1, #2
    4068:	54d1      	strb	r1, [r2, r3]
    406a:	e03f      	b.n	40ec <pdu_read_holding_registers+0x124>
    406c:	687b      	ldr	r3, [r7, #4]
    406e:	613b      	str	r3, [r7, #16]
    4070:	693b      	ldr	r3, [r7, #16]
    4072:	1c5a      	adds	r2, r3, #1
    4074:	613a      	str	r2, [r7, #16]
    4076:	4a21      	ldr	r2, [pc, #132]	; (40fc <pdu_read_holding_registers+0x134>)
    4078:	210f      	movs	r1, #15
    407a:	1879      	adds	r1, r7, r1
    407c:	7809      	ldrb	r1, [r1, #0]
    407e:	54d1      	strb	r1, [r2, r3]
    4080:	693b      	ldr	r3, [r7, #16]
    4082:	1c5a      	adds	r2, r3, #1
    4084:	613a      	str	r2, [r7, #16]
    4086:	220a      	movs	r2, #10
    4088:	18ba      	adds	r2, r7, r2
    408a:	8812      	ldrh	r2, [r2, #0]
    408c:	b2d2      	uxtb	r2, r2
    408e:	1892      	adds	r2, r2, r2
    4090:	b2d1      	uxtb	r1, r2
    4092:	4a1a      	ldr	r2, [pc, #104]	; (40fc <pdu_read_holding_registers+0x134>)
    4094:	54d1      	strb	r1, [r2, r3]
    4096:	2300      	movs	r3, #0
    4098:	617b      	str	r3, [r7, #20]
    409a:	e021      	b.n	40e0 <pdu_read_holding_registers+0x118>
    409c:	230c      	movs	r3, #12
    409e:	18fb      	adds	r3, r7, r3
    40a0:	881a      	ldrh	r2, [r3, #0]
    40a2:	697b      	ldr	r3, [r7, #20]
    40a4:	18d1      	adds	r1, r2, r3
    40a6:	2308      	movs	r3, #8
    40a8:	18fb      	adds	r3, r7, r3
    40aa:	4a15      	ldr	r2, [pc, #84]	; (4100 <pdu_read_holding_registers+0x138>)
    40ac:	0049      	lsls	r1, r1, #1
    40ae:	5a8a      	ldrh	r2, [r1, r2]
    40b0:	801a      	strh	r2, [r3, #0]
    40b2:	693b      	ldr	r3, [r7, #16]
    40b4:	1c5a      	adds	r2, r3, #1
    40b6:	613a      	str	r2, [r7, #16]
    40b8:	2208      	movs	r2, #8
    40ba:	18ba      	adds	r2, r7, r2
    40bc:	8812      	ldrh	r2, [r2, #0]
    40be:	0a12      	lsrs	r2, r2, #8
    40c0:	b292      	uxth	r2, r2
    40c2:	b2d1      	uxtb	r1, r2
    40c4:	4a0d      	ldr	r2, [pc, #52]	; (40fc <pdu_read_holding_registers+0x134>)
    40c6:	54d1      	strb	r1, [r2, r3]
    40c8:	693b      	ldr	r3, [r7, #16]
    40ca:	1c5a      	adds	r2, r3, #1
    40cc:	613a      	str	r2, [r7, #16]
    40ce:	2208      	movs	r2, #8
    40d0:	18ba      	adds	r2, r7, r2
    40d2:	8812      	ldrh	r2, [r2, #0]
    40d4:	b2d1      	uxtb	r1, r2
    40d6:	4a09      	ldr	r2, [pc, #36]	; (40fc <pdu_read_holding_registers+0x134>)
    40d8:	54d1      	strb	r1, [r2, r3]
    40da:	697b      	ldr	r3, [r7, #20]
    40dc:	3301      	adds	r3, #1
    40de:	617b      	str	r3, [r7, #20]
    40e0:	230a      	movs	r3, #10
    40e2:	18fb      	adds	r3, r7, r3
    40e4:	881a      	ldrh	r2, [r3, #0]
    40e6:	697b      	ldr	r3, [r7, #20]
    40e8:	429a      	cmp	r2, r3
    40ea:	dcd7      	bgt.n	409c <pdu_read_holding_registers+0xd4>
    40ec:	693b      	ldr	r3, [r7, #16]
    40ee:	0018      	movs	r0, r3
    40f0:	46bd      	mov	sp, r7
    40f2:	b006      	add	sp, #24
    40f4:	bd80      	pop	{r7, pc}
    40f6:	46c0      	nop			; (mov r8, r8)
    40f8:	20005dc0 	.word	0x20005dc0
    40fc:	20005dc4 	.word	0x20005dc4
    4100:	20005d68 	.word	0x20005d68

00004104 <pdu_illegal_function_error>:
    4104:	b580      	push	{r7, lr}
    4106:	b084      	sub	sp, #16
    4108:	af00      	add	r7, sp, #0
    410a:	6078      	str	r0, [r7, #4]
    410c:	4b10      	ldr	r3, [pc, #64]	; (4150 <pdu_illegal_function_error+0x4c>)
    410e:	681a      	ldr	r2, [r3, #0]
    4110:	687b      	ldr	r3, [r7, #4]
    4112:	18d2      	adds	r2, r2, r3
    4114:	230f      	movs	r3, #15
    4116:	18fb      	adds	r3, r7, r3
    4118:	7812      	ldrb	r2, [r2, #0]
    411a:	701a      	strb	r2, [r3, #0]
    411c:	687b      	ldr	r3, [r7, #4]
    411e:	60bb      	str	r3, [r7, #8]
    4120:	68bb      	ldr	r3, [r7, #8]
    4122:	1c5a      	adds	r2, r3, #1
    4124:	60ba      	str	r2, [r7, #8]
    4126:	220f      	movs	r2, #15
    4128:	18ba      	adds	r2, r7, r2
    412a:	7812      	ldrb	r2, [r2, #0]
    412c:	2180      	movs	r1, #128	; 0x80
    412e:	4249      	negs	r1, r1
    4130:	430a      	orrs	r2, r1
    4132:	b2d1      	uxtb	r1, r2
    4134:	4a07      	ldr	r2, [pc, #28]	; (4154 <pdu_illegal_function_error+0x50>)
    4136:	54d1      	strb	r1, [r2, r3]
    4138:	68bb      	ldr	r3, [r7, #8]
    413a:	1c5a      	adds	r2, r3, #1
    413c:	60ba      	str	r2, [r7, #8]
    413e:	4a05      	ldr	r2, [pc, #20]	; (4154 <pdu_illegal_function_error+0x50>)
    4140:	2101      	movs	r1, #1
    4142:	54d1      	strb	r1, [r2, r3]
    4144:	68bb      	ldr	r3, [r7, #8]
    4146:	0018      	movs	r0, r3
    4148:	46bd      	mov	sp, r7
    414a:	b004      	add	sp, #16
    414c:	bd80      	pop	{r7, pc}
    414e:	46c0      	nop			; (mov r8, r8)
    4150:	20005dc0 	.word	0x20005dc0
    4154:	20005dc4 	.word	0x20005dc4

00004158 <mdb_proc_adu>:
    4158:	b580      	push	{r7, lr}
    415a:	b086      	sub	sp, #24
    415c:	af00      	add	r7, sp, #0
    415e:	6078      	str	r0, [r7, #4]
    4160:	4b39      	ldr	r3, [pc, #228]	; (4248 <mdb_proc_adu+0xf0>)
    4162:	687a      	ldr	r2, [r7, #4]
    4164:	601a      	str	r2, [r3, #0]
    4166:	4b38      	ldr	r3, [pc, #224]	; (4248 <mdb_proc_adu+0xf0>)
    4168:	681b      	ldr	r3, [r3, #0]
    416a:	781b      	ldrb	r3, [r3, #0]
    416c:	021b      	lsls	r3, r3, #8
    416e:	b21a      	sxth	r2, r3
    4170:	4b35      	ldr	r3, [pc, #212]	; (4248 <mdb_proc_adu+0xf0>)
    4172:	681b      	ldr	r3, [r3, #0]
    4174:	3301      	adds	r3, #1
    4176:	781b      	ldrb	r3, [r3, #0]
    4178:	b21b      	sxth	r3, r3
    417a:	4313      	orrs	r3, r2
    417c:	b21a      	sxth	r2, r3
    417e:	2312      	movs	r3, #18
    4180:	18fb      	adds	r3, r7, r3
    4182:	801a      	strh	r2, [r3, #0]
    4184:	4b30      	ldr	r3, [pc, #192]	; (4248 <mdb_proc_adu+0xf0>)
    4186:	681b      	ldr	r3, [r3, #0]
    4188:	3302      	adds	r3, #2
    418a:	781b      	ldrb	r3, [r3, #0]
    418c:	021b      	lsls	r3, r3, #8
    418e:	b21a      	sxth	r2, r3
    4190:	4b2d      	ldr	r3, [pc, #180]	; (4248 <mdb_proc_adu+0xf0>)
    4192:	681b      	ldr	r3, [r3, #0]
    4194:	3303      	adds	r3, #3
    4196:	781b      	ldrb	r3, [r3, #0]
    4198:	b21b      	sxth	r3, r3
    419a:	4313      	orrs	r3, r2
    419c:	b21a      	sxth	r2, r3
    419e:	2310      	movs	r3, #16
    41a0:	18fb      	adds	r3, r7, r3
    41a2:	801a      	strh	r2, [r3, #0]
    41a4:	4b28      	ldr	r3, [pc, #160]	; (4248 <mdb_proc_adu+0xf0>)
    41a6:	681b      	ldr	r3, [r3, #0]
    41a8:	3304      	adds	r3, #4
    41aa:	781b      	ldrb	r3, [r3, #0]
    41ac:	021b      	lsls	r3, r3, #8
    41ae:	b21a      	sxth	r2, r3
    41b0:	4b25      	ldr	r3, [pc, #148]	; (4248 <mdb_proc_adu+0xf0>)
    41b2:	681b      	ldr	r3, [r3, #0]
    41b4:	3305      	adds	r3, #5
    41b6:	781b      	ldrb	r3, [r3, #0]
    41b8:	b21b      	sxth	r3, r3
    41ba:	4313      	orrs	r3, r2
    41bc:	b21a      	sxth	r2, r3
    41be:	230e      	movs	r3, #14
    41c0:	18fb      	adds	r3, r7, r3
    41c2:	801a      	strh	r2, [r3, #0]
    41c4:	4b20      	ldr	r3, [pc, #128]	; (4248 <mdb_proc_adu+0xf0>)
    41c6:	681a      	ldr	r2, [r3, #0]
    41c8:	230d      	movs	r3, #13
    41ca:	18fb      	adds	r3, r7, r3
    41cc:	7992      	ldrb	r2, [r2, #6]
    41ce:	701a      	strb	r2, [r3, #0]
    41d0:	4b1d      	ldr	r3, [pc, #116]	; (4248 <mdb_proc_adu+0xf0>)
    41d2:	681a      	ldr	r2, [r3, #0]
    41d4:	230c      	movs	r3, #12
    41d6:	18fb      	adds	r3, r7, r3
    41d8:	79d2      	ldrb	r2, [r2, #7]
    41da:	701a      	strb	r2, [r3, #0]
    41dc:	230d      	movs	r3, #13
    41de:	18fb      	adds	r3, r7, r3
    41e0:	781b      	ldrb	r3, [r3, #0]
    41e2:	2b11      	cmp	r3, #17
    41e4:	d12b      	bne.n	423e <mdb_proc_adu+0xe6>
    41e6:	230c      	movs	r3, #12
    41e8:	18fb      	adds	r3, r7, r3
    41ea:	781a      	ldrb	r2, [r3, #0]
    41ec:	4b17      	ldr	r3, [pc, #92]	; (424c <mdb_proc_adu+0xf4>)
    41ee:	0092      	lsls	r2, r2, #2
    41f0:	58d3      	ldr	r3, [r2, r3]
    41f2:	2007      	movs	r0, #7
    41f4:	4798      	blx	r3
    41f6:	0003      	movs	r3, r0
    41f8:	60bb      	str	r3, [r7, #8]
    41fa:	2300      	movs	r3, #0
    41fc:	617b      	str	r3, [r7, #20]
    41fe:	e00c      	b.n	421a <mdb_proc_adu+0xc2>
    4200:	4b11      	ldr	r3, [pc, #68]	; (4248 <mdb_proc_adu+0xf0>)
    4202:	681a      	ldr	r2, [r3, #0]
    4204:	697b      	ldr	r3, [r7, #20]
    4206:	18d3      	adds	r3, r2, r3
    4208:	7819      	ldrb	r1, [r3, #0]
    420a:	4a11      	ldr	r2, [pc, #68]	; (4250 <mdb_proc_adu+0xf8>)
    420c:	697b      	ldr	r3, [r7, #20]
    420e:	18d3      	adds	r3, r2, r3
    4210:	1c0a      	adds	r2, r1, #0
    4212:	701a      	strb	r2, [r3, #0]
    4214:	697b      	ldr	r3, [r7, #20]
    4216:	3301      	adds	r3, #1
    4218:	617b      	str	r3, [r7, #20]
    421a:	697b      	ldr	r3, [r7, #20]
    421c:	2b06      	cmp	r3, #6
    421e:	ddef      	ble.n	4200 <mdb_proc_adu+0xa8>
    4220:	4b0b      	ldr	r3, [pc, #44]	; (4250 <mdb_proc_adu+0xf8>)
    4222:	2200      	movs	r2, #0
    4224:	711a      	strb	r2, [r3, #4]
    4226:	68bb      	ldr	r3, [r7, #8]
    4228:	b2db      	uxtb	r3, r3
    422a:	3b06      	subs	r3, #6
    422c:	b2da      	uxtb	r2, r3
    422e:	4b08      	ldr	r3, [pc, #32]	; (4250 <mdb_proc_adu+0xf8>)
    4230:	715a      	strb	r2, [r3, #5]
    4232:	68ba      	ldr	r2, [r7, #8]
    4234:	4b06      	ldr	r3, [pc, #24]	; (4250 <mdb_proc_adu+0xf8>)
    4236:	0011      	movs	r1, r2
    4238:	0018      	movs	r0, r3
    423a:	f7fe fecb 	bl	2fd4 <Send_UDP>
    423e:	46c0      	nop			; (mov r8, r8)
    4240:	46bd      	mov	sp, r7
    4242:	b006      	add	sp, #24
    4244:	bd80      	pop	{r7, pc}
    4246:	46c0      	nop			; (mov r8, r8)
    4248:	20005dc0 	.word	0x20005dc0
    424c:	0000936c 	.word	0x0000936c
    4250:	20005dc4 	.word	0x20005dc4

00004254 <fsm_get_mode>:
    4254:	b580      	push	{r7, lr}
    4256:	af00      	add	r7, sp, #0
    4258:	4b02      	ldr	r3, [pc, #8]	; (4264 <fsm_get_mode+0x10>)
    425a:	781b      	ldrb	r3, [r3, #0]
    425c:	0018      	movs	r0, r3
    425e:	46bd      	mov	sp, r7
    4260:	bd80      	pop	{r7, pc}
    4262:	46c0      	nop			; (mov r8, r8)
    4264:	20006044 	.word	0x20006044

00004268 <fsm_get_cyccnt>:
    4268:	b580      	push	{r7, lr}
    426a:	af00      	add	r7, sp, #0
    426c:	4b02      	ldr	r3, [pc, #8]	; (4278 <fsm_get_cyccnt+0x10>)
    426e:	681b      	ldr	r3, [r3, #0]
    4270:	0018      	movs	r0, r3
    4272:	46bd      	mov	sp, r7
    4274:	bd80      	pop	{r7, pc}
    4276:	46c0      	nop			; (mov r8, r8)
    4278:	20006010 	.word	0x20006010

0000427c <fsm_idle>:
    427c:	b580      	push	{r7, lr}
    427e:	b084      	sub	sp, #16
    4280:	af00      	add	r7, sp, #0
    4282:	6078      	str	r0, [r7, #4]
    4284:	230b      	movs	r3, #11
    4286:	18fb      	adds	r3, r7, r3
    4288:	687a      	ldr	r2, [r7, #4]
    428a:	701a      	strb	r2, [r3, #0]
    428c:	230b      	movs	r3, #11
    428e:	18fb      	adds	r3, r7, r3
    4290:	781b      	ldrb	r3, [r3, #0]
    4292:	2b01      	cmp	r3, #1
    4294:	d000      	beq.n	4298 <fsm_idle+0x1c>
    4296:	e09a      	b.n	43ce <fsm_idle+0x152>
    4298:	4b4f      	ldr	r3, [pc, #316]	; (43d8 <fsm_idle+0x15c>)
    429a:	0018      	movs	r0, r3
    429c:	f7ff fa52 	bl	3744 <mdb_get_testparam>
    42a0:	4b4d      	ldr	r3, [pc, #308]	; (43d8 <fsm_idle+0x15c>)
    42a2:	681a      	ldr	r2, [r3, #0]
    42a4:	4b4d      	ldr	r3, [pc, #308]	; (43dc <fsm_idle+0x160>)
    42a6:	601a      	str	r2, [r3, #0]
    42a8:	4b4c      	ldr	r3, [pc, #304]	; (43dc <fsm_idle+0x160>)
    42aa:	681b      	ldr	r3, [r3, #0]
    42ac:	2b00      	cmp	r3, #0
    42ae:	d100      	bne.n	42b2 <fsm_idle+0x36>
    42b0:	e08d      	b.n	43ce <fsm_idle+0x152>
    42b2:	4b4b      	ldr	r3, [pc, #300]	; (43e0 <fsm_idle+0x164>)
    42b4:	4a4b      	ldr	r2, [pc, #300]	; (43e4 <fsm_idle+0x168>)
    42b6:	601a      	str	r2, [r3, #0]
    42b8:	4b4b      	ldr	r3, [pc, #300]	; (43e8 <fsm_idle+0x16c>)
    42ba:	2201      	movs	r2, #1
    42bc:	701a      	strb	r2, [r3, #0]
    42be:	4b4b      	ldr	r3, [pc, #300]	; (43ec <fsm_idle+0x170>)
    42c0:	2200      	movs	r2, #0
    42c2:	601a      	str	r2, [r3, #0]
    42c4:	4b4a      	ldr	r3, [pc, #296]	; (43f0 <fsm_idle+0x174>)
    42c6:	2200      	movs	r2, #0
    42c8:	601a      	str	r2, [r3, #0]
    42ca:	2300      	movs	r3, #0
    42cc:	60fb      	str	r3, [r7, #12]
    42ce:	e032      	b.n	4336 <fsm_idle+0xba>
    42d0:	4b41      	ldr	r3, [pc, #260]	; (43d8 <fsm_idle+0x15c>)
    42d2:	689b      	ldr	r3, [r3, #8]
    42d4:	4a40      	ldr	r2, [pc, #256]	; (43d8 <fsm_idle+0x15c>)
    42d6:	68f9      	ldr	r1, [r7, #12]
    42d8:	3108      	adds	r1, #8
    42da:	0049      	lsls	r1, r1, #1
    42dc:	5a8a      	ldrh	r2, [r1, r2]
    42de:	435a      	muls	r2, r3
    42e0:	0013      	movs	r3, r2
    42e2:	009b      	lsls	r3, r3, #2
    42e4:	189b      	adds	r3, r3, r2
    42e6:	00db      	lsls	r3, r3, #3
    42e8:	189b      	adds	r3, r3, r2
    42ea:	2280      	movs	r2, #128	; 0x80
    42ec:	0112      	lsls	r2, r2, #4
    42ee:	4694      	mov	ip, r2
    42f0:	4463      	add	r3, ip
    42f2:	0b1b      	lsrs	r3, r3, #12
    42f4:	0019      	movs	r1, r3
    42f6:	4b3f      	ldr	r3, [pc, #252]	; (43f4 <fsm_idle+0x178>)
    42f8:	68fa      	ldr	r2, [r7, #12]
    42fa:	0092      	lsls	r2, r2, #2
    42fc:	50d1      	str	r1, [r2, r3]
    42fe:	4b36      	ldr	r3, [pc, #216]	; (43d8 <fsm_idle+0x15c>)
    4300:	68db      	ldr	r3, [r3, #12]
    4302:	4935      	ldr	r1, [pc, #212]	; (43d8 <fsm_idle+0x15c>)
    4304:	68fa      	ldr	r2, [r7, #12]
    4306:	320c      	adds	r2, #12
    4308:	0052      	lsls	r2, r2, #1
    430a:	188a      	adds	r2, r1, r2
    430c:	3202      	adds	r2, #2
    430e:	8812      	ldrh	r2, [r2, #0]
    4310:	435a      	muls	r2, r3
    4312:	0013      	movs	r3, r2
    4314:	009b      	lsls	r3, r3, #2
    4316:	189b      	adds	r3, r3, r2
    4318:	00db      	lsls	r3, r3, #3
    431a:	189b      	adds	r3, r3, r2
    431c:	2280      	movs	r2, #128	; 0x80
    431e:	0112      	lsls	r2, r2, #4
    4320:	4694      	mov	ip, r2
    4322:	4463      	add	r3, ip
    4324:	0b1b      	lsrs	r3, r3, #12
    4326:	0019      	movs	r1, r3
    4328:	4b33      	ldr	r3, [pc, #204]	; (43f8 <fsm_idle+0x17c>)
    432a:	68fa      	ldr	r2, [r7, #12]
    432c:	0092      	lsls	r2, r2, #2
    432e:	50d1      	str	r1, [r2, r3]
    4330:	68fb      	ldr	r3, [r7, #12]
    4332:	3301      	adds	r3, #1
    4334:	60fb      	str	r3, [r7, #12]
    4336:	68fb      	ldr	r3, [r7, #12]
    4338:	2b04      	cmp	r3, #4
    433a:	ddc9      	ble.n	42d0 <fsm_idle+0x54>
    433c:	2300      	movs	r3, #0
    433e:	60fb      	str	r3, [r7, #12]
    4340:	e020      	b.n	4384 <fsm_idle+0x108>
    4342:	68fb      	ldr	r3, [r7, #12]
    4344:	1c5a      	adds	r2, r3, #1
    4346:	4b2c      	ldr	r3, [pc, #176]	; (43f8 <fsm_idle+0x17c>)
    4348:	0092      	lsls	r2, r2, #2
    434a:	58d2      	ldr	r2, [r2, r3]
    434c:	4b2a      	ldr	r3, [pc, #168]	; (43f8 <fsm_idle+0x17c>)
    434e:	68f9      	ldr	r1, [r7, #12]
    4350:	0089      	lsls	r1, r1, #2
    4352:	58cb      	ldr	r3, [r1, r3]
    4354:	1ad3      	subs	r3, r2, r3
    4356:	0098      	lsls	r0, r3, #2
    4358:	68fb      	ldr	r3, [r7, #12]
    435a:	1c5a      	adds	r2, r3, #1
    435c:	4b25      	ldr	r3, [pc, #148]	; (43f4 <fsm_idle+0x178>)
    435e:	0092      	lsls	r2, r2, #2
    4360:	58d2      	ldr	r2, [r2, r3]
    4362:	4b24      	ldr	r3, [pc, #144]	; (43f4 <fsm_idle+0x178>)
    4364:	68f9      	ldr	r1, [r7, #12]
    4366:	0089      	lsls	r1, r1, #2
    4368:	58cb      	ldr	r3, [r1, r3]
    436a:	1ad3      	subs	r3, r2, r3
    436c:	0019      	movs	r1, r3
    436e:	f000 fc03 	bl	4b78 <__aeabi_idiv>
    4372:	0003      	movs	r3, r0
    4374:	0019      	movs	r1, r3
    4376:	4b21      	ldr	r3, [pc, #132]	; (43fc <fsm_idle+0x180>)
    4378:	68fa      	ldr	r2, [r7, #12]
    437a:	0092      	lsls	r2, r2, #2
    437c:	50d1      	str	r1, [r2, r3]
    437e:	68fb      	ldr	r3, [r7, #12]
    4380:	3301      	adds	r3, #1
    4382:	60fb      	str	r3, [r7, #12]
    4384:	68fb      	ldr	r3, [r7, #12]
    4386:	2b03      	cmp	r3, #3
    4388:	dddb      	ble.n	4342 <fsm_idle+0xc6>
    438a:	4b1a      	ldr	r3, [pc, #104]	; (43f4 <fsm_idle+0x178>)
    438c:	681a      	ldr	r2, [r3, #0]
    438e:	4b1c      	ldr	r3, [pc, #112]	; (4400 <fsm_idle+0x184>)
    4390:	601a      	str	r2, [r3, #0]
    4392:	4b18      	ldr	r3, [pc, #96]	; (43f4 <fsm_idle+0x178>)
    4394:	685a      	ldr	r2, [r3, #4]
    4396:	4b1b      	ldr	r3, [pc, #108]	; (4404 <fsm_idle+0x188>)
    4398:	601a      	str	r2, [r3, #0]
    439a:	4b17      	ldr	r3, [pc, #92]	; (43f8 <fsm_idle+0x17c>)
    439c:	681a      	ldr	r2, [r3, #0]
    439e:	4b1a      	ldr	r3, [pc, #104]	; (4408 <fsm_idle+0x18c>)
    43a0:	601a      	str	r2, [r3, #0]
    43a2:	4b15      	ldr	r3, [pc, #84]	; (43f8 <fsm_idle+0x17c>)
    43a4:	685a      	ldr	r2, [r3, #4]
    43a6:	4b19      	ldr	r3, [pc, #100]	; (440c <fsm_idle+0x190>)
    43a8:	601a      	str	r2, [r3, #0]
    43aa:	4b14      	ldr	r3, [pc, #80]	; (43fc <fsm_idle+0x180>)
    43ac:	681a      	ldr	r2, [r3, #0]
    43ae:	4b18      	ldr	r3, [pc, #96]	; (4410 <fsm_idle+0x194>)
    43b0:	601a      	str	r2, [r3, #0]
    43b2:	f7fb fec1 	bl	138 <dut_pwr_on>
    43b6:	f7fb fedf 	bl	178 <dut_reset_on>
    43ba:	4b07      	ldr	r3, [pc, #28]	; (43d8 <fsm_idle+0x15c>)
    43bc:	685b      	ldr	r3, [r3, #4]
    43be:	0018      	movs	r0, r3
    43c0:	f7fb fee6 	bl	190 <dut_set_speed>
    43c4:	4b10      	ldr	r3, [pc, #64]	; (4408 <fsm_idle+0x18c>)
    43c6:	681b      	ldr	r3, [r3, #0]
    43c8:	0018      	movs	r0, r3
    43ca:	f7fb ff15 	bl	1f8 <dut_set_torque>
    43ce:	46c0      	nop			; (mov r8, r8)
    43d0:	46bd      	mov	sp, r7
    43d2:	b004      	add	sp, #16
    43d4:	bd80      	pop	{r7, pc}
    43d6:	46c0      	nop			; (mov r8, r8)
    43d8:	2000601c 	.word	0x2000601c
    43dc:	20006010 	.word	0x20006010
    43e0:	20000014 	.word	0x20000014
    43e4:	00004415 	.word	0x00004415
    43e8:	20006044 	.word	0x20006044
    43ec:	20006014 	.word	0x20006014
    43f0:	20006018 	.word	0x20006018
    43f4:	20005fd4 	.word	0x20005fd4
    43f8:	20005fe8 	.word	0x20005fe8
    43fc:	20005ffc 	.word	0x20005ffc
    4400:	20005fc4 	.word	0x20005fc4
    4404:	20005fc8 	.word	0x20005fc8
    4408:	20005fcc 	.word	0x20005fcc
    440c:	20005fd0 	.word	0x20005fd0
    4410:	20005fc0 	.word	0x20005fc0

00004414 <fsm_work>:
    4414:	b580      	push	{r7, lr}
    4416:	b086      	sub	sp, #24
    4418:	af00      	add	r7, sp, #0
    441a:	6078      	str	r0, [r7, #4]
    441c:	2313      	movs	r3, #19
    441e:	18fb      	adds	r3, r7, r3
    4420:	687a      	ldr	r2, [r7, #4]
    4422:	701a      	strb	r2, [r3, #0]
    4424:	687b      	ldr	r3, [r7, #4]
    4426:	121b      	asrs	r3, r3, #8
    4428:	60fb      	str	r3, [r7, #12]
    442a:	2313      	movs	r3, #19
    442c:	18fb      	adds	r3, r7, r3
    442e:	781b      	ldrb	r3, [r3, #0]
    4430:	2b04      	cmp	r3, #4
    4432:	d000      	beq.n	4436 <fsm_work+0x22>
    4434:	e0fc      	b.n	4630 <fsm_work+0x21c>
    4436:	68fb      	ldr	r3, [r7, #12]
    4438:	617b      	str	r3, [r7, #20]
    443a:	f7fb fe91 	bl	160 <dut_reset_off>
    443e:	4b8d      	ldr	r3, [pc, #564]	; (4674 <fsm_work+0x260>)
    4440:	689b      	ldr	r3, [r3, #8]
    4442:	001a      	movs	r2, r3
    4444:	697b      	ldr	r3, [r7, #20]
    4446:	429a      	cmp	r2, r3
    4448:	dc29      	bgt.n	449e <fsm_work+0x8a>
    444a:	4b8b      	ldr	r3, [pc, #556]	; (4678 <fsm_work+0x264>)
    444c:	2201      	movs	r2, #1
    444e:	601a      	str	r2, [r3, #0]
    4450:	4b8a      	ldr	r3, [pc, #552]	; (467c <fsm_work+0x268>)
    4452:	2200      	movs	r2, #0
    4454:	601a      	str	r2, [r3, #0]
    4456:	4b8a      	ldr	r3, [pc, #552]	; (4680 <fsm_work+0x26c>)
    4458:	681a      	ldr	r2, [r3, #0]
    445a:	4b8a      	ldr	r3, [pc, #552]	; (4684 <fsm_work+0x270>)
    445c:	601a      	str	r2, [r3, #0]
    445e:	4b88      	ldr	r3, [pc, #544]	; (4680 <fsm_work+0x26c>)
    4460:	685a      	ldr	r2, [r3, #4]
    4462:	4b89      	ldr	r3, [pc, #548]	; (4688 <fsm_work+0x274>)
    4464:	601a      	str	r2, [r3, #0]
    4466:	4b89      	ldr	r3, [pc, #548]	; (468c <fsm_work+0x278>)
    4468:	681b      	ldr	r3, [r3, #0]
    446a:	425a      	negs	r2, r3
    446c:	4b88      	ldr	r3, [pc, #544]	; (4690 <fsm_work+0x27c>)
    446e:	601a      	str	r2, [r3, #0]
    4470:	4b86      	ldr	r3, [pc, #536]	; (468c <fsm_work+0x278>)
    4472:	685b      	ldr	r3, [r3, #4]
    4474:	425a      	negs	r2, r3
    4476:	4b87      	ldr	r3, [pc, #540]	; (4694 <fsm_work+0x280>)
    4478:	601a      	str	r2, [r3, #0]
    447a:	4b87      	ldr	r3, [pc, #540]	; (4698 <fsm_work+0x284>)
    447c:	681b      	ldr	r3, [r3, #0]
    447e:	425a      	negs	r2, r3
    4480:	4b86      	ldr	r3, [pc, #536]	; (469c <fsm_work+0x288>)
    4482:	601a      	str	r2, [r3, #0]
    4484:	4b7b      	ldr	r3, [pc, #492]	; (4674 <fsm_work+0x260>)
    4486:	685b      	ldr	r3, [r3, #4]
    4488:	425b      	negs	r3, r3
    448a:	0018      	movs	r0, r3
    448c:	f7fb fe80 	bl	190 <dut_set_speed>
    4490:	4b7f      	ldr	r3, [pc, #508]	; (4690 <fsm_work+0x27c>)
    4492:	681b      	ldr	r3, [r3, #0]
    4494:	425b      	negs	r3, r3
    4496:	0018      	movs	r0, r3
    4498:	f7fb feae 	bl	1f8 <dut_set_torque>
    449c:	e0e7      	b.n	466e <fsm_work+0x25a>
    449e:	4b76      	ldr	r3, [pc, #472]	; (4678 <fsm_work+0x264>)
    44a0:	681b      	ldr	r3, [r3, #0]
    44a2:	2b00      	cmp	r3, #0
    44a4:	d03f      	beq.n	4526 <fsm_work+0x112>
    44a6:	697b      	ldr	r3, [r7, #20]
    44a8:	2b00      	cmp	r3, #0
    44aa:	dc3c      	bgt.n	4526 <fsm_work+0x112>
    44ac:	4b7c      	ldr	r3, [pc, #496]	; (46a0 <fsm_work+0x28c>)
    44ae:	681b      	ldr	r3, [r3, #0]
    44b0:	1e5a      	subs	r2, r3, #1
    44b2:	4b7b      	ldr	r3, [pc, #492]	; (46a0 <fsm_work+0x28c>)
    44b4:	601a      	str	r2, [r3, #0]
    44b6:	4b70      	ldr	r3, [pc, #448]	; (4678 <fsm_work+0x264>)
    44b8:	2200      	movs	r2, #0
    44ba:	601a      	str	r2, [r3, #0]
    44bc:	4b6f      	ldr	r3, [pc, #444]	; (467c <fsm_work+0x268>)
    44be:	2200      	movs	r2, #0
    44c0:	601a      	str	r2, [r3, #0]
    44c2:	4b77      	ldr	r3, [pc, #476]	; (46a0 <fsm_work+0x28c>)
    44c4:	681b      	ldr	r3, [r3, #0]
    44c6:	2b00      	cmp	r3, #0
    44c8:	d10e      	bne.n	44e8 <fsm_work+0xd4>
    44ca:	4b76      	ldr	r3, [pc, #472]	; (46a4 <fsm_work+0x290>)
    44cc:	4a76      	ldr	r2, [pc, #472]	; (46a8 <fsm_work+0x294>)
    44ce:	601a      	str	r2, [r3, #0]
    44d0:	4b76      	ldr	r3, [pc, #472]	; (46ac <fsm_work+0x298>)
    44d2:	2204      	movs	r2, #4
    44d4:	701a      	strb	r2, [r3, #0]
    44d6:	2000      	movs	r0, #0
    44d8:	f7fb fe5a 	bl	190 <dut_set_speed>
    44dc:	2000      	movs	r0, #0
    44de:	f7fb fe8b 	bl	1f8 <dut_set_torque>
    44e2:	f7fb fe49 	bl	178 <dut_reset_on>
    44e6:	e0c2      	b.n	466e <fsm_work+0x25a>
    44e8:	4b65      	ldr	r3, [pc, #404]	; (4680 <fsm_work+0x26c>)
    44ea:	681a      	ldr	r2, [r3, #0]
    44ec:	4b65      	ldr	r3, [pc, #404]	; (4684 <fsm_work+0x270>)
    44ee:	601a      	str	r2, [r3, #0]
    44f0:	4b63      	ldr	r3, [pc, #396]	; (4680 <fsm_work+0x26c>)
    44f2:	685a      	ldr	r2, [r3, #4]
    44f4:	4b64      	ldr	r3, [pc, #400]	; (4688 <fsm_work+0x274>)
    44f6:	601a      	str	r2, [r3, #0]
    44f8:	4b64      	ldr	r3, [pc, #400]	; (468c <fsm_work+0x278>)
    44fa:	681a      	ldr	r2, [r3, #0]
    44fc:	4b64      	ldr	r3, [pc, #400]	; (4690 <fsm_work+0x27c>)
    44fe:	601a      	str	r2, [r3, #0]
    4500:	4b62      	ldr	r3, [pc, #392]	; (468c <fsm_work+0x278>)
    4502:	685a      	ldr	r2, [r3, #4]
    4504:	4b63      	ldr	r3, [pc, #396]	; (4694 <fsm_work+0x280>)
    4506:	601a      	str	r2, [r3, #0]
    4508:	4b63      	ldr	r3, [pc, #396]	; (4698 <fsm_work+0x284>)
    450a:	681a      	ldr	r2, [r3, #0]
    450c:	4b63      	ldr	r3, [pc, #396]	; (469c <fsm_work+0x288>)
    450e:	601a      	str	r2, [r3, #0]
    4510:	4b58      	ldr	r3, [pc, #352]	; (4674 <fsm_work+0x260>)
    4512:	685b      	ldr	r3, [r3, #4]
    4514:	0018      	movs	r0, r3
    4516:	f7fb fe3b 	bl	190 <dut_set_speed>
    451a:	4b5d      	ldr	r3, [pc, #372]	; (4690 <fsm_work+0x27c>)
    451c:	681b      	ldr	r3, [r3, #0]
    451e:	0018      	movs	r0, r3
    4520:	f7fb fe6a 	bl	1f8 <dut_set_torque>
    4524:	e0a3      	b.n	466e <fsm_work+0x25a>
    4526:	4b54      	ldr	r3, [pc, #336]	; (4678 <fsm_work+0x264>)
    4528:	681b      	ldr	r3, [r3, #0]
    452a:	2b00      	cmp	r3, #0
    452c:	d03c      	beq.n	45a8 <fsm_work+0x194>
    452e:	4b51      	ldr	r3, [pc, #324]	; (4674 <fsm_work+0x260>)
    4530:	689b      	ldr	r3, [r3, #8]
    4532:	001a      	movs	r2, r3
    4534:	697b      	ldr	r3, [r7, #20]
    4536:	1ad3      	subs	r3, r2, r3
    4538:	617b      	str	r3, [r7, #20]
    453a:	4b53      	ldr	r3, [pc, #332]	; (4688 <fsm_work+0x274>)
    453c:	681b      	ldr	r3, [r3, #0]
    453e:	697a      	ldr	r2, [r7, #20]
    4540:	429a      	cmp	r2, r3
    4542:	db64      	blt.n	460e <fsm_work+0x1fa>
    4544:	4b4d      	ldr	r3, [pc, #308]	; (467c <fsm_work+0x268>)
    4546:	681b      	ldr	r3, [r3, #0]
    4548:	1c5a      	adds	r2, r3, #1
    454a:	4b4c      	ldr	r3, [pc, #304]	; (467c <fsm_work+0x268>)
    454c:	601a      	str	r2, [r3, #0]
    454e:	4b4b      	ldr	r3, [pc, #300]	; (467c <fsm_work+0x268>)
    4550:	681b      	ldr	r3, [r3, #0]
    4552:	2b03      	cmp	r3, #3
    4554:	d85b      	bhi.n	460e <fsm_work+0x1fa>
    4556:	4b49      	ldr	r3, [pc, #292]	; (467c <fsm_work+0x268>)
    4558:	681a      	ldr	r2, [r3, #0]
    455a:	4b49      	ldr	r3, [pc, #292]	; (4680 <fsm_work+0x26c>)
    455c:	0092      	lsls	r2, r2, #2
    455e:	58d2      	ldr	r2, [r2, r3]
    4560:	4b48      	ldr	r3, [pc, #288]	; (4684 <fsm_work+0x270>)
    4562:	601a      	str	r2, [r3, #0]
    4564:	4b45      	ldr	r3, [pc, #276]	; (467c <fsm_work+0x268>)
    4566:	681b      	ldr	r3, [r3, #0]
    4568:	1c5a      	adds	r2, r3, #1
    456a:	4b45      	ldr	r3, [pc, #276]	; (4680 <fsm_work+0x26c>)
    456c:	0092      	lsls	r2, r2, #2
    456e:	58d2      	ldr	r2, [r2, r3]
    4570:	4b45      	ldr	r3, [pc, #276]	; (4688 <fsm_work+0x274>)
    4572:	601a      	str	r2, [r3, #0]
    4574:	4b41      	ldr	r3, [pc, #260]	; (467c <fsm_work+0x268>)
    4576:	681a      	ldr	r2, [r3, #0]
    4578:	4b44      	ldr	r3, [pc, #272]	; (468c <fsm_work+0x278>)
    457a:	0092      	lsls	r2, r2, #2
    457c:	58d3      	ldr	r3, [r2, r3]
    457e:	425a      	negs	r2, r3
    4580:	4b43      	ldr	r3, [pc, #268]	; (4690 <fsm_work+0x27c>)
    4582:	601a      	str	r2, [r3, #0]
    4584:	4b3d      	ldr	r3, [pc, #244]	; (467c <fsm_work+0x268>)
    4586:	681b      	ldr	r3, [r3, #0]
    4588:	1c5a      	adds	r2, r3, #1
    458a:	4b40      	ldr	r3, [pc, #256]	; (468c <fsm_work+0x278>)
    458c:	0092      	lsls	r2, r2, #2
    458e:	58d3      	ldr	r3, [r2, r3]
    4590:	425a      	negs	r2, r3
    4592:	4b40      	ldr	r3, [pc, #256]	; (4694 <fsm_work+0x280>)
    4594:	601a      	str	r2, [r3, #0]
    4596:	4b39      	ldr	r3, [pc, #228]	; (467c <fsm_work+0x268>)
    4598:	681a      	ldr	r2, [r3, #0]
    459a:	4b3f      	ldr	r3, [pc, #252]	; (4698 <fsm_work+0x284>)
    459c:	0092      	lsls	r2, r2, #2
    459e:	58d3      	ldr	r3, [r2, r3]
    45a0:	425a      	negs	r2, r3
    45a2:	4b3e      	ldr	r3, [pc, #248]	; (469c <fsm_work+0x288>)
    45a4:	601a      	str	r2, [r3, #0]
    45a6:	e032      	b.n	460e <fsm_work+0x1fa>
    45a8:	4b37      	ldr	r3, [pc, #220]	; (4688 <fsm_work+0x274>)
    45aa:	681b      	ldr	r3, [r3, #0]
    45ac:	697a      	ldr	r2, [r7, #20]
    45ae:	429a      	cmp	r2, r3
    45b0:	db2d      	blt.n	460e <fsm_work+0x1fa>
    45b2:	4b32      	ldr	r3, [pc, #200]	; (467c <fsm_work+0x268>)
    45b4:	681b      	ldr	r3, [r3, #0]
    45b6:	1c5a      	adds	r2, r3, #1
    45b8:	4b30      	ldr	r3, [pc, #192]	; (467c <fsm_work+0x268>)
    45ba:	601a      	str	r2, [r3, #0]
    45bc:	4b2f      	ldr	r3, [pc, #188]	; (467c <fsm_work+0x268>)
    45be:	681b      	ldr	r3, [r3, #0]
    45c0:	2b03      	cmp	r3, #3
    45c2:	d824      	bhi.n	460e <fsm_work+0x1fa>
    45c4:	4b2d      	ldr	r3, [pc, #180]	; (467c <fsm_work+0x268>)
    45c6:	681a      	ldr	r2, [r3, #0]
    45c8:	4b2d      	ldr	r3, [pc, #180]	; (4680 <fsm_work+0x26c>)
    45ca:	0092      	lsls	r2, r2, #2
    45cc:	58d2      	ldr	r2, [r2, r3]
    45ce:	4b2d      	ldr	r3, [pc, #180]	; (4684 <fsm_work+0x270>)
    45d0:	601a      	str	r2, [r3, #0]
    45d2:	4b2a      	ldr	r3, [pc, #168]	; (467c <fsm_work+0x268>)
    45d4:	681b      	ldr	r3, [r3, #0]
    45d6:	1c5a      	adds	r2, r3, #1
    45d8:	4b29      	ldr	r3, [pc, #164]	; (4680 <fsm_work+0x26c>)
    45da:	0092      	lsls	r2, r2, #2
    45dc:	58d2      	ldr	r2, [r2, r3]
    45de:	4b2a      	ldr	r3, [pc, #168]	; (4688 <fsm_work+0x274>)
    45e0:	601a      	str	r2, [r3, #0]
    45e2:	4b26      	ldr	r3, [pc, #152]	; (467c <fsm_work+0x268>)
    45e4:	681a      	ldr	r2, [r3, #0]
    45e6:	4b29      	ldr	r3, [pc, #164]	; (468c <fsm_work+0x278>)
    45e8:	0092      	lsls	r2, r2, #2
    45ea:	58d2      	ldr	r2, [r2, r3]
    45ec:	4b28      	ldr	r3, [pc, #160]	; (4690 <fsm_work+0x27c>)
    45ee:	601a      	str	r2, [r3, #0]
    45f0:	4b22      	ldr	r3, [pc, #136]	; (467c <fsm_work+0x268>)
    45f2:	681b      	ldr	r3, [r3, #0]
    45f4:	1c5a      	adds	r2, r3, #1
    45f6:	4b25      	ldr	r3, [pc, #148]	; (468c <fsm_work+0x278>)
    45f8:	0092      	lsls	r2, r2, #2
    45fa:	58d2      	ldr	r2, [r2, r3]
    45fc:	4b25      	ldr	r3, [pc, #148]	; (4694 <fsm_work+0x280>)
    45fe:	601a      	str	r2, [r3, #0]
    4600:	4b1e      	ldr	r3, [pc, #120]	; (467c <fsm_work+0x268>)
    4602:	681a      	ldr	r2, [r3, #0]
    4604:	4b24      	ldr	r3, [pc, #144]	; (4698 <fsm_work+0x284>)
    4606:	0092      	lsls	r2, r2, #2
    4608:	58d2      	ldr	r2, [r2, r3]
    460a:	4b24      	ldr	r3, [pc, #144]	; (469c <fsm_work+0x288>)
    460c:	601a      	str	r2, [r3, #0]
    460e:	4b20      	ldr	r3, [pc, #128]	; (4690 <fsm_work+0x27c>)
    4610:	681b      	ldr	r3, [r3, #0]
    4612:	009a      	lsls	r2, r3, #2
    4614:	4b1b      	ldr	r3, [pc, #108]	; (4684 <fsm_work+0x270>)
    4616:	681b      	ldr	r3, [r3, #0]
    4618:	6979      	ldr	r1, [r7, #20]
    461a:	1ac9      	subs	r1, r1, r3
    461c:	4b1f      	ldr	r3, [pc, #124]	; (469c <fsm_work+0x288>)
    461e:	681b      	ldr	r3, [r3, #0]
    4620:	434b      	muls	r3, r1
    4622:	18d3      	adds	r3, r2, r3
    4624:	60bb      	str	r3, [r7, #8]
    4626:	68bb      	ldr	r3, [r7, #8]
    4628:	109b      	asrs	r3, r3, #2
    462a:	0018      	movs	r0, r3
    462c:	f7fb fde4 	bl	1f8 <dut_set_torque>
    4630:	2313      	movs	r3, #19
    4632:	18fb      	adds	r3, r7, r3
    4634:	781b      	ldrb	r3, [r3, #0]
    4636:	2b03      	cmp	r3, #3
    4638:	d10e      	bne.n	4658 <fsm_work+0x244>
    463a:	4b1a      	ldr	r3, [pc, #104]	; (46a4 <fsm_work+0x290>)
    463c:	4a1a      	ldr	r2, [pc, #104]	; (46a8 <fsm_work+0x294>)
    463e:	601a      	str	r2, [r3, #0]
    4640:	4b1a      	ldr	r3, [pc, #104]	; (46ac <fsm_work+0x298>)
    4642:	2204      	movs	r2, #4
    4644:	701a      	strb	r2, [r3, #0]
    4646:	2000      	movs	r0, #0
    4648:	f7fb fda2 	bl	190 <dut_set_speed>
    464c:	2000      	movs	r0, #0
    464e:	f7fb fdd3 	bl	1f8 <dut_set_torque>
    4652:	f7fb fd91 	bl	178 <dut_reset_on>
    4656:	e00a      	b.n	466e <fsm_work+0x25a>
    4658:	2313      	movs	r3, #19
    465a:	18fb      	adds	r3, r7, r3
    465c:	781b      	ldrb	r3, [r3, #0]
    465e:	2b02      	cmp	r3, #2
    4660:	d105      	bne.n	466e <fsm_work+0x25a>
    4662:	4b10      	ldr	r3, [pc, #64]	; (46a4 <fsm_work+0x290>)
    4664:	4a12      	ldr	r2, [pc, #72]	; (46b0 <fsm_work+0x29c>)
    4666:	601a      	str	r2, [r3, #0]
    4668:	4b10      	ldr	r3, [pc, #64]	; (46ac <fsm_work+0x298>)
    466a:	2202      	movs	r2, #2
    466c:	701a      	strb	r2, [r3, #0]
    466e:	46bd      	mov	sp, r7
    4670:	b006      	add	sp, #24
    4672:	bd80      	pop	{r7, pc}
    4674:	2000601c 	.word	0x2000601c
    4678:	20006018 	.word	0x20006018
    467c:	20006014 	.word	0x20006014
    4680:	20005fd4 	.word	0x20005fd4
    4684:	20005fc4 	.word	0x20005fc4
    4688:	20005fc8 	.word	0x20005fc8
    468c:	20005fe8 	.word	0x20005fe8
    4690:	20005fcc 	.word	0x20005fcc
    4694:	20005fd0 	.word	0x20005fd0
    4698:	20005ffc 	.word	0x20005ffc
    469c:	20005fc0 	.word	0x20005fc0
    46a0:	20006010 	.word	0x20006010
    46a4:	20000014 	.word	0x20000014
    46a8:	000046b5 	.word	0x000046b5
    46ac:	20006044 	.word	0x20006044
    46b0:	00004715 	.word	0x00004715

000046b4 <fsm_clean>:
    46b4:	b580      	push	{r7, lr}
    46b6:	b084      	sub	sp, #16
    46b8:	af00      	add	r7, sp, #0
    46ba:	6078      	str	r0, [r7, #4]
    46bc:	230f      	movs	r3, #15
    46be:	18fb      	adds	r3, r7, r3
    46c0:	687a      	ldr	r2, [r7, #4]
    46c2:	701a      	strb	r2, [r3, #0]
    46c4:	230f      	movs	r3, #15
    46c6:	18fb      	adds	r3, r7, r3
    46c8:	781b      	ldrb	r3, [r3, #0]
    46ca:	2b04      	cmp	r3, #4
    46cc:	d112      	bne.n	46f4 <fsm_clean+0x40>
    46ce:	4b0b      	ldr	r3, [pc, #44]	; (46fc <fsm_clean+0x48>)
    46d0:	4a0b      	ldr	r2, [pc, #44]	; (4700 <fsm_clean+0x4c>)
    46d2:	601a      	str	r2, [r3, #0]
    46d4:	4b0b      	ldr	r3, [pc, #44]	; (4704 <fsm_clean+0x50>)
    46d6:	2200      	movs	r2, #0
    46d8:	701a      	strb	r2, [r3, #0]
    46da:	f7fb fd41 	bl	160 <dut_reset_off>
    46de:	f7fb fd35 	bl	14c <dut_pwr_off>
    46e2:	4b09      	ldr	r3, [pc, #36]	; (4708 <fsm_clean+0x54>)
    46e4:	2200      	movs	r2, #0
    46e6:	601a      	str	r2, [r3, #0]
    46e8:	4b08      	ldr	r3, [pc, #32]	; (470c <fsm_clean+0x58>)
    46ea:	2200      	movs	r2, #0
    46ec:	601a      	str	r2, [r3, #0]
    46ee:	4b08      	ldr	r3, [pc, #32]	; (4710 <fsm_clean+0x5c>)
    46f0:	2200      	movs	r2, #0
    46f2:	601a      	str	r2, [r3, #0]
    46f4:	46c0      	nop			; (mov r8, r8)
    46f6:	46bd      	mov	sp, r7
    46f8:	b004      	add	sp, #16
    46fa:	bd80      	pop	{r7, pc}
    46fc:	20000014 	.word	0x20000014
    4700:	0000427d 	.word	0x0000427d
    4704:	20006044 	.word	0x20006044
    4708:	20006010 	.word	0x20006010
    470c:	20006014 	.word	0x20006014
    4710:	20006018 	.word	0x20006018

00004714 <fsm_complete>:
    4714:	b580      	push	{r7, lr}
    4716:	b086      	sub	sp, #24
    4718:	af00      	add	r7, sp, #0
    471a:	6078      	str	r0, [r7, #4]
    471c:	2313      	movs	r3, #19
    471e:	18fb      	adds	r3, r7, r3
    4720:	687a      	ldr	r2, [r7, #4]
    4722:	701a      	strb	r2, [r3, #0]
    4724:	687b      	ldr	r3, [r7, #4]
    4726:	121b      	asrs	r3, r3, #8
    4728:	60fb      	str	r3, [r7, #12]
    472a:	2313      	movs	r3, #19
    472c:	18fb      	adds	r3, r7, r3
    472e:	781b      	ldrb	r3, [r3, #0]
    4730:	2b04      	cmp	r3, #4
    4732:	d000      	beq.n	4736 <fsm_complete+0x22>
    4734:	e0ea      	b.n	490c <fsm_complete+0x1f8>
    4736:	68fb      	ldr	r3, [r7, #12]
    4738:	617b      	str	r3, [r7, #20]
    473a:	f7fb fd11 	bl	160 <dut_reset_off>
    473e:	4b84      	ldr	r3, [pc, #528]	; (4950 <fsm_complete+0x23c>)
    4740:	689b      	ldr	r3, [r3, #8]
    4742:	001a      	movs	r2, r3
    4744:	697b      	ldr	r3, [r7, #20]
    4746:	429a      	cmp	r2, r3
    4748:	dc29      	bgt.n	479e <fsm_complete+0x8a>
    474a:	4b82      	ldr	r3, [pc, #520]	; (4954 <fsm_complete+0x240>)
    474c:	2201      	movs	r2, #1
    474e:	601a      	str	r2, [r3, #0]
    4750:	4b81      	ldr	r3, [pc, #516]	; (4958 <fsm_complete+0x244>)
    4752:	2200      	movs	r2, #0
    4754:	601a      	str	r2, [r3, #0]
    4756:	4b81      	ldr	r3, [pc, #516]	; (495c <fsm_complete+0x248>)
    4758:	681a      	ldr	r2, [r3, #0]
    475a:	4b81      	ldr	r3, [pc, #516]	; (4960 <fsm_complete+0x24c>)
    475c:	601a      	str	r2, [r3, #0]
    475e:	4b7f      	ldr	r3, [pc, #508]	; (495c <fsm_complete+0x248>)
    4760:	685a      	ldr	r2, [r3, #4]
    4762:	4b80      	ldr	r3, [pc, #512]	; (4964 <fsm_complete+0x250>)
    4764:	601a      	str	r2, [r3, #0]
    4766:	4b80      	ldr	r3, [pc, #512]	; (4968 <fsm_complete+0x254>)
    4768:	681b      	ldr	r3, [r3, #0]
    476a:	425a      	negs	r2, r3
    476c:	4b7f      	ldr	r3, [pc, #508]	; (496c <fsm_complete+0x258>)
    476e:	601a      	str	r2, [r3, #0]
    4770:	4b7d      	ldr	r3, [pc, #500]	; (4968 <fsm_complete+0x254>)
    4772:	685b      	ldr	r3, [r3, #4]
    4774:	425a      	negs	r2, r3
    4776:	4b7e      	ldr	r3, [pc, #504]	; (4970 <fsm_complete+0x25c>)
    4778:	601a      	str	r2, [r3, #0]
    477a:	4b7e      	ldr	r3, [pc, #504]	; (4974 <fsm_complete+0x260>)
    477c:	681b      	ldr	r3, [r3, #0]
    477e:	425a      	negs	r2, r3
    4780:	4b7d      	ldr	r3, [pc, #500]	; (4978 <fsm_complete+0x264>)
    4782:	601a      	str	r2, [r3, #0]
    4784:	4b72      	ldr	r3, [pc, #456]	; (4950 <fsm_complete+0x23c>)
    4786:	685b      	ldr	r3, [r3, #4]
    4788:	425b      	negs	r3, r3
    478a:	0018      	movs	r0, r3
    478c:	f7fb fd00 	bl	190 <dut_set_speed>
    4790:	4b76      	ldr	r3, [pc, #472]	; (496c <fsm_complete+0x258>)
    4792:	681b      	ldr	r3, [r3, #0]
    4794:	425b      	negs	r3, r3
    4796:	0018      	movs	r0, r3
    4798:	f7fb fd2e 	bl	1f8 <dut_set_torque>
    479c:	e0d5      	b.n	494a <fsm_complete+0x236>
    479e:	4b6d      	ldr	r3, [pc, #436]	; (4954 <fsm_complete+0x240>)
    47a0:	681b      	ldr	r3, [r3, #0]
    47a2:	2b00      	cmp	r3, #0
    47a4:	d02d      	beq.n	4802 <fsm_complete+0xee>
    47a6:	697b      	ldr	r3, [r7, #20]
    47a8:	2b00      	cmp	r3, #0
    47aa:	dc2a      	bgt.n	4802 <fsm_complete+0xee>
    47ac:	4b73      	ldr	r3, [pc, #460]	; (497c <fsm_complete+0x268>)
    47ae:	681b      	ldr	r3, [r3, #0]
    47b0:	1e5a      	subs	r2, r3, #1
    47b2:	4b72      	ldr	r3, [pc, #456]	; (497c <fsm_complete+0x268>)
    47b4:	601a      	str	r2, [r3, #0]
    47b6:	4b67      	ldr	r3, [pc, #412]	; (4954 <fsm_complete+0x240>)
    47b8:	2200      	movs	r2, #0
    47ba:	601a      	str	r2, [r3, #0]
    47bc:	4b66      	ldr	r3, [pc, #408]	; (4958 <fsm_complete+0x244>)
    47be:	2200      	movs	r2, #0
    47c0:	601a      	str	r2, [r3, #0]
    47c2:	4b6e      	ldr	r3, [pc, #440]	; (497c <fsm_complete+0x268>)
    47c4:	681b      	ldr	r3, [r3, #0]
    47c6:	2b00      	cmp	r3, #0
    47c8:	d10e      	bne.n	47e8 <fsm_complete+0xd4>
    47ca:	4b6d      	ldr	r3, [pc, #436]	; (4980 <fsm_complete+0x26c>)
    47cc:	4a6d      	ldr	r2, [pc, #436]	; (4984 <fsm_complete+0x270>)
    47ce:	601a      	str	r2, [r3, #0]
    47d0:	4b6d      	ldr	r3, [pc, #436]	; (4988 <fsm_complete+0x274>)
    47d2:	2204      	movs	r2, #4
    47d4:	701a      	strb	r2, [r3, #0]
    47d6:	2000      	movs	r0, #0
    47d8:	f7fb fcda 	bl	190 <dut_set_speed>
    47dc:	2000      	movs	r0, #0
    47de:	f7fb fd0b 	bl	1f8 <dut_set_torque>
    47e2:	f7fb fcc9 	bl	178 <dut_reset_on>
    47e6:	e0b0      	b.n	494a <fsm_complete+0x236>
    47e8:	2000      	movs	r0, #0
    47ea:	f7fb fcd1 	bl	190 <dut_set_speed>
    47ee:	2000      	movs	r0, #0
    47f0:	f7fb fd02 	bl	1f8 <dut_set_torque>
    47f4:	4b62      	ldr	r3, [pc, #392]	; (4980 <fsm_complete+0x26c>)
    47f6:	4a65      	ldr	r2, [pc, #404]	; (498c <fsm_complete+0x278>)
    47f8:	601a      	str	r2, [r3, #0]
    47fa:	4b63      	ldr	r3, [pc, #396]	; (4988 <fsm_complete+0x274>)
    47fc:	2203      	movs	r2, #3
    47fe:	701a      	strb	r2, [r3, #0]
    4800:	e0a3      	b.n	494a <fsm_complete+0x236>
    4802:	4b54      	ldr	r3, [pc, #336]	; (4954 <fsm_complete+0x240>)
    4804:	681b      	ldr	r3, [r3, #0]
    4806:	2b00      	cmp	r3, #0
    4808:	d03c      	beq.n	4884 <fsm_complete+0x170>
    480a:	4b51      	ldr	r3, [pc, #324]	; (4950 <fsm_complete+0x23c>)
    480c:	689b      	ldr	r3, [r3, #8]
    480e:	001a      	movs	r2, r3
    4810:	697b      	ldr	r3, [r7, #20]
    4812:	1ad3      	subs	r3, r2, r3
    4814:	617b      	str	r3, [r7, #20]
    4816:	4b53      	ldr	r3, [pc, #332]	; (4964 <fsm_complete+0x250>)
    4818:	681b      	ldr	r3, [r3, #0]
    481a:	697a      	ldr	r2, [r7, #20]
    481c:	429a      	cmp	r2, r3
    481e:	db64      	blt.n	48ea <fsm_complete+0x1d6>
    4820:	4b4d      	ldr	r3, [pc, #308]	; (4958 <fsm_complete+0x244>)
    4822:	681b      	ldr	r3, [r3, #0]
    4824:	1c5a      	adds	r2, r3, #1
    4826:	4b4c      	ldr	r3, [pc, #304]	; (4958 <fsm_complete+0x244>)
    4828:	601a      	str	r2, [r3, #0]
    482a:	4b4b      	ldr	r3, [pc, #300]	; (4958 <fsm_complete+0x244>)
    482c:	681b      	ldr	r3, [r3, #0]
    482e:	2b03      	cmp	r3, #3
    4830:	d85b      	bhi.n	48ea <fsm_complete+0x1d6>
    4832:	4b49      	ldr	r3, [pc, #292]	; (4958 <fsm_complete+0x244>)
    4834:	681a      	ldr	r2, [r3, #0]
    4836:	4b49      	ldr	r3, [pc, #292]	; (495c <fsm_complete+0x248>)
    4838:	0092      	lsls	r2, r2, #2
    483a:	58d2      	ldr	r2, [r2, r3]
    483c:	4b48      	ldr	r3, [pc, #288]	; (4960 <fsm_complete+0x24c>)
    483e:	601a      	str	r2, [r3, #0]
    4840:	4b45      	ldr	r3, [pc, #276]	; (4958 <fsm_complete+0x244>)
    4842:	681b      	ldr	r3, [r3, #0]
    4844:	1c5a      	adds	r2, r3, #1
    4846:	4b45      	ldr	r3, [pc, #276]	; (495c <fsm_complete+0x248>)
    4848:	0092      	lsls	r2, r2, #2
    484a:	58d2      	ldr	r2, [r2, r3]
    484c:	4b45      	ldr	r3, [pc, #276]	; (4964 <fsm_complete+0x250>)
    484e:	601a      	str	r2, [r3, #0]
    4850:	4b41      	ldr	r3, [pc, #260]	; (4958 <fsm_complete+0x244>)
    4852:	681a      	ldr	r2, [r3, #0]
    4854:	4b44      	ldr	r3, [pc, #272]	; (4968 <fsm_complete+0x254>)
    4856:	0092      	lsls	r2, r2, #2
    4858:	58d3      	ldr	r3, [r2, r3]
    485a:	425a      	negs	r2, r3
    485c:	4b43      	ldr	r3, [pc, #268]	; (496c <fsm_complete+0x258>)
    485e:	601a      	str	r2, [r3, #0]
    4860:	4b3d      	ldr	r3, [pc, #244]	; (4958 <fsm_complete+0x244>)
    4862:	681b      	ldr	r3, [r3, #0]
    4864:	1c5a      	adds	r2, r3, #1
    4866:	4b40      	ldr	r3, [pc, #256]	; (4968 <fsm_complete+0x254>)
    4868:	0092      	lsls	r2, r2, #2
    486a:	58d3      	ldr	r3, [r2, r3]
    486c:	425a      	negs	r2, r3
    486e:	4b40      	ldr	r3, [pc, #256]	; (4970 <fsm_complete+0x25c>)
    4870:	601a      	str	r2, [r3, #0]
    4872:	4b39      	ldr	r3, [pc, #228]	; (4958 <fsm_complete+0x244>)
    4874:	681a      	ldr	r2, [r3, #0]
    4876:	4b3f      	ldr	r3, [pc, #252]	; (4974 <fsm_complete+0x260>)
    4878:	0092      	lsls	r2, r2, #2
    487a:	58d3      	ldr	r3, [r2, r3]
    487c:	425a      	negs	r2, r3
    487e:	4b3e      	ldr	r3, [pc, #248]	; (4978 <fsm_complete+0x264>)
    4880:	601a      	str	r2, [r3, #0]
    4882:	e032      	b.n	48ea <fsm_complete+0x1d6>
    4884:	4b37      	ldr	r3, [pc, #220]	; (4964 <fsm_complete+0x250>)
    4886:	681b      	ldr	r3, [r3, #0]
    4888:	697a      	ldr	r2, [r7, #20]
    488a:	429a      	cmp	r2, r3
    488c:	db2d      	blt.n	48ea <fsm_complete+0x1d6>
    488e:	4b32      	ldr	r3, [pc, #200]	; (4958 <fsm_complete+0x244>)
    4890:	681b      	ldr	r3, [r3, #0]
    4892:	1c5a      	adds	r2, r3, #1
    4894:	4b30      	ldr	r3, [pc, #192]	; (4958 <fsm_complete+0x244>)
    4896:	601a      	str	r2, [r3, #0]
    4898:	4b2f      	ldr	r3, [pc, #188]	; (4958 <fsm_complete+0x244>)
    489a:	681b      	ldr	r3, [r3, #0]
    489c:	2b03      	cmp	r3, #3
    489e:	d824      	bhi.n	48ea <fsm_complete+0x1d6>
    48a0:	4b2d      	ldr	r3, [pc, #180]	; (4958 <fsm_complete+0x244>)
    48a2:	681a      	ldr	r2, [r3, #0]
    48a4:	4b2d      	ldr	r3, [pc, #180]	; (495c <fsm_complete+0x248>)
    48a6:	0092      	lsls	r2, r2, #2
    48a8:	58d2      	ldr	r2, [r2, r3]
    48aa:	4b2d      	ldr	r3, [pc, #180]	; (4960 <fsm_complete+0x24c>)
    48ac:	601a      	str	r2, [r3, #0]
    48ae:	4b2a      	ldr	r3, [pc, #168]	; (4958 <fsm_complete+0x244>)
    48b0:	681b      	ldr	r3, [r3, #0]
    48b2:	1c5a      	adds	r2, r3, #1
    48b4:	4b29      	ldr	r3, [pc, #164]	; (495c <fsm_complete+0x248>)
    48b6:	0092      	lsls	r2, r2, #2
    48b8:	58d2      	ldr	r2, [r2, r3]
    48ba:	4b2a      	ldr	r3, [pc, #168]	; (4964 <fsm_complete+0x250>)
    48bc:	601a      	str	r2, [r3, #0]
    48be:	4b26      	ldr	r3, [pc, #152]	; (4958 <fsm_complete+0x244>)
    48c0:	681a      	ldr	r2, [r3, #0]
    48c2:	4b29      	ldr	r3, [pc, #164]	; (4968 <fsm_complete+0x254>)
    48c4:	0092      	lsls	r2, r2, #2
    48c6:	58d2      	ldr	r2, [r2, r3]
    48c8:	4b28      	ldr	r3, [pc, #160]	; (496c <fsm_complete+0x258>)
    48ca:	601a      	str	r2, [r3, #0]
    48cc:	4b22      	ldr	r3, [pc, #136]	; (4958 <fsm_complete+0x244>)
    48ce:	681b      	ldr	r3, [r3, #0]
    48d0:	1c5a      	adds	r2, r3, #1
    48d2:	4b25      	ldr	r3, [pc, #148]	; (4968 <fsm_complete+0x254>)
    48d4:	0092      	lsls	r2, r2, #2
    48d6:	58d2      	ldr	r2, [r2, r3]
    48d8:	4b25      	ldr	r3, [pc, #148]	; (4970 <fsm_complete+0x25c>)
    48da:	601a      	str	r2, [r3, #0]
    48dc:	4b1e      	ldr	r3, [pc, #120]	; (4958 <fsm_complete+0x244>)
    48de:	681a      	ldr	r2, [r3, #0]
    48e0:	4b24      	ldr	r3, [pc, #144]	; (4974 <fsm_complete+0x260>)
    48e2:	0092      	lsls	r2, r2, #2
    48e4:	58d2      	ldr	r2, [r2, r3]
    48e6:	4b24      	ldr	r3, [pc, #144]	; (4978 <fsm_complete+0x264>)
    48e8:	601a      	str	r2, [r3, #0]
    48ea:	4b20      	ldr	r3, [pc, #128]	; (496c <fsm_complete+0x258>)
    48ec:	681b      	ldr	r3, [r3, #0]
    48ee:	009a      	lsls	r2, r3, #2
    48f0:	4b1b      	ldr	r3, [pc, #108]	; (4960 <fsm_complete+0x24c>)
    48f2:	681b      	ldr	r3, [r3, #0]
    48f4:	6979      	ldr	r1, [r7, #20]
    48f6:	1ac9      	subs	r1, r1, r3
    48f8:	4b1f      	ldr	r3, [pc, #124]	; (4978 <fsm_complete+0x264>)
    48fa:	681b      	ldr	r3, [r3, #0]
    48fc:	434b      	muls	r3, r1
    48fe:	18d3      	adds	r3, r2, r3
    4900:	60bb      	str	r3, [r7, #8]
    4902:	68bb      	ldr	r3, [r7, #8]
    4904:	109b      	asrs	r3, r3, #2
    4906:	0018      	movs	r0, r3
    4908:	f7fb fc76 	bl	1f8 <dut_set_torque>
    490c:	2313      	movs	r3, #19
    490e:	18fb      	adds	r3, r7, r3
    4910:	781b      	ldrb	r3, [r3, #0]
    4912:	2b03      	cmp	r3, #3
    4914:	d10e      	bne.n	4934 <fsm_complete+0x220>
    4916:	4b1a      	ldr	r3, [pc, #104]	; (4980 <fsm_complete+0x26c>)
    4918:	4a1a      	ldr	r2, [pc, #104]	; (4984 <fsm_complete+0x270>)
    491a:	601a      	str	r2, [r3, #0]
    491c:	4b1a      	ldr	r3, [pc, #104]	; (4988 <fsm_complete+0x274>)
    491e:	2204      	movs	r2, #4
    4920:	701a      	strb	r2, [r3, #0]
    4922:	2000      	movs	r0, #0
    4924:	f7fb fc34 	bl	190 <dut_set_speed>
    4928:	2000      	movs	r0, #0
    492a:	f7fb fc65 	bl	1f8 <dut_set_torque>
    492e:	f7fb fc23 	bl	178 <dut_reset_on>
    4932:	e00a      	b.n	494a <fsm_complete+0x236>
    4934:	2313      	movs	r3, #19
    4936:	18fb      	adds	r3, r7, r3
    4938:	781b      	ldrb	r3, [r3, #0]
    493a:	2b02      	cmp	r3, #2
    493c:	d105      	bne.n	494a <fsm_complete+0x236>
    493e:	4b10      	ldr	r3, [pc, #64]	; (4980 <fsm_complete+0x26c>)
    4940:	4a13      	ldr	r2, [pc, #76]	; (4990 <fsm_complete+0x27c>)
    4942:	601a      	str	r2, [r3, #0]
    4944:	4b10      	ldr	r3, [pc, #64]	; (4988 <fsm_complete+0x274>)
    4946:	2202      	movs	r2, #2
    4948:	701a      	strb	r2, [r3, #0]
    494a:	46bd      	mov	sp, r7
    494c:	b006      	add	sp, #24
    494e:	bd80      	pop	{r7, pc}
    4950:	2000601c 	.word	0x2000601c
    4954:	20006018 	.word	0x20006018
    4958:	20006014 	.word	0x20006014
    495c:	20005fd4 	.word	0x20005fd4
    4960:	20005fc4 	.word	0x20005fc4
    4964:	20005fc8 	.word	0x20005fc8
    4968:	20005fe8 	.word	0x20005fe8
    496c:	20005fcc 	.word	0x20005fcc
    4970:	20005fd0 	.word	0x20005fd0
    4974:	20005ffc 	.word	0x20005ffc
    4978:	20005fc0 	.word	0x20005fc0
    497c:	20006010 	.word	0x20006010
    4980:	20000014 	.word	0x20000014
    4984:	000046b5 	.word	0x000046b5
    4988:	20006044 	.word	0x20006044
    498c:	00004995 	.word	0x00004995
    4990:	00004715 	.word	0x00004715

00004994 <fsm_wait>:
    4994:	b580      	push	{r7, lr}
    4996:	b084      	sub	sp, #16
    4998:	af00      	add	r7, sp, #0
    499a:	6078      	str	r0, [r7, #4]
    499c:	230f      	movs	r3, #15
    499e:	18fb      	adds	r3, r7, r3
    49a0:	687a      	ldr	r2, [r7, #4]
    49a2:	701a      	strb	r2, [r3, #0]
    49a4:	230f      	movs	r3, #15
    49a6:	18fb      	adds	r3, r7, r3
    49a8:	781b      	ldrb	r3, [r3, #0]
    49aa:	2b01      	cmp	r3, #1
    49ac:	d12b      	bne.n	4a06 <fsm_wait+0x72>
    49ae:	4b1e      	ldr	r3, [pc, #120]	; (4a28 <fsm_wait+0x94>)
    49b0:	4a1e      	ldr	r2, [pc, #120]	; (4a2c <fsm_wait+0x98>)
    49b2:	601a      	str	r2, [r3, #0]
    49b4:	4b1e      	ldr	r3, [pc, #120]	; (4a30 <fsm_wait+0x9c>)
    49b6:	2201      	movs	r2, #1
    49b8:	701a      	strb	r2, [r3, #0]
    49ba:	4b1e      	ldr	r3, [pc, #120]	; (4a34 <fsm_wait+0xa0>)
    49bc:	2200      	movs	r2, #0
    49be:	601a      	str	r2, [r3, #0]
    49c0:	4b1d      	ldr	r3, [pc, #116]	; (4a38 <fsm_wait+0xa4>)
    49c2:	2200      	movs	r2, #0
    49c4:	601a      	str	r2, [r3, #0]
    49c6:	4b1d      	ldr	r3, [pc, #116]	; (4a3c <fsm_wait+0xa8>)
    49c8:	681a      	ldr	r2, [r3, #0]
    49ca:	4b1d      	ldr	r3, [pc, #116]	; (4a40 <fsm_wait+0xac>)
    49cc:	601a      	str	r2, [r3, #0]
    49ce:	4b1b      	ldr	r3, [pc, #108]	; (4a3c <fsm_wait+0xa8>)
    49d0:	685a      	ldr	r2, [r3, #4]
    49d2:	4b1c      	ldr	r3, [pc, #112]	; (4a44 <fsm_wait+0xb0>)
    49d4:	601a      	str	r2, [r3, #0]
    49d6:	4b1c      	ldr	r3, [pc, #112]	; (4a48 <fsm_wait+0xb4>)
    49d8:	681a      	ldr	r2, [r3, #0]
    49da:	4b1c      	ldr	r3, [pc, #112]	; (4a4c <fsm_wait+0xb8>)
    49dc:	601a      	str	r2, [r3, #0]
    49de:	4b1a      	ldr	r3, [pc, #104]	; (4a48 <fsm_wait+0xb4>)
    49e0:	685a      	ldr	r2, [r3, #4]
    49e2:	4b1b      	ldr	r3, [pc, #108]	; (4a50 <fsm_wait+0xbc>)
    49e4:	601a      	str	r2, [r3, #0]
    49e6:	4b1b      	ldr	r3, [pc, #108]	; (4a54 <fsm_wait+0xc0>)
    49e8:	681a      	ldr	r2, [r3, #0]
    49ea:	4b1b      	ldr	r3, [pc, #108]	; (4a58 <fsm_wait+0xc4>)
    49ec:	601a      	str	r2, [r3, #0]
    49ee:	4b1b      	ldr	r3, [pc, #108]	; (4a5c <fsm_wait+0xc8>)
    49f0:	685b      	ldr	r3, [r3, #4]
    49f2:	0018      	movs	r0, r3
    49f4:	f7fb fbcc 	bl	190 <dut_set_speed>
    49f8:	4b14      	ldr	r3, [pc, #80]	; (4a4c <fsm_wait+0xb8>)
    49fa:	681b      	ldr	r3, [r3, #0]
    49fc:	0018      	movs	r0, r3
    49fe:	f7fb fbfb 	bl	1f8 <dut_set_torque>
    4a02:	f7fb fbb9 	bl	178 <dut_reset_on>
    4a06:	230f      	movs	r3, #15
    4a08:	18fb      	adds	r3, r7, r3
    4a0a:	781b      	ldrb	r3, [r3, #0]
    4a0c:	2b03      	cmp	r3, #3
    4a0e:	d107      	bne.n	4a20 <fsm_wait+0x8c>
    4a10:	4b05      	ldr	r3, [pc, #20]	; (4a28 <fsm_wait+0x94>)
    4a12:	4a13      	ldr	r2, [pc, #76]	; (4a60 <fsm_wait+0xcc>)
    4a14:	601a      	str	r2, [r3, #0]
    4a16:	4b06      	ldr	r3, [pc, #24]	; (4a30 <fsm_wait+0x9c>)
    4a18:	2204      	movs	r2, #4
    4a1a:	701a      	strb	r2, [r3, #0]
    4a1c:	f7fb fbac 	bl	178 <dut_reset_on>
    4a20:	46c0      	nop			; (mov r8, r8)
    4a22:	46bd      	mov	sp, r7
    4a24:	b004      	add	sp, #16
    4a26:	bd80      	pop	{r7, pc}
    4a28:	20000014 	.word	0x20000014
    4a2c:	00004415 	.word	0x00004415
    4a30:	20006044 	.word	0x20006044
    4a34:	20006014 	.word	0x20006014
    4a38:	20006018 	.word	0x20006018
    4a3c:	20005fd4 	.word	0x20005fd4
    4a40:	20005fc4 	.word	0x20005fc4
    4a44:	20005fc8 	.word	0x20005fc8
    4a48:	20005fe8 	.word	0x20005fe8
    4a4c:	20005fcc 	.word	0x20005fcc
    4a50:	20005fd0 	.word	0x20005fd0
    4a54:	20005ffc 	.word	0x20005ffc
    4a58:	20005fc0 	.word	0x20005fc0
    4a5c:	2000601c 	.word	0x2000601c
    4a60:	000046b5 	.word	0x000046b5

00004a64 <__aeabi_uidiv>:
    4a64:	2200      	movs	r2, #0
    4a66:	0843      	lsrs	r3, r0, #1
    4a68:	428b      	cmp	r3, r1
    4a6a:	d374      	bcc.n	4b56 <__aeabi_uidiv+0xf2>
    4a6c:	0903      	lsrs	r3, r0, #4
    4a6e:	428b      	cmp	r3, r1
    4a70:	d35f      	bcc.n	4b32 <__aeabi_uidiv+0xce>
    4a72:	0a03      	lsrs	r3, r0, #8
    4a74:	428b      	cmp	r3, r1
    4a76:	d344      	bcc.n	4b02 <__aeabi_uidiv+0x9e>
    4a78:	0b03      	lsrs	r3, r0, #12
    4a7a:	428b      	cmp	r3, r1
    4a7c:	d328      	bcc.n	4ad0 <__aeabi_uidiv+0x6c>
    4a7e:	0c03      	lsrs	r3, r0, #16
    4a80:	428b      	cmp	r3, r1
    4a82:	d30d      	bcc.n	4aa0 <__aeabi_uidiv+0x3c>
    4a84:	22ff      	movs	r2, #255	; 0xff
    4a86:	0209      	lsls	r1, r1, #8
    4a88:	ba12      	rev	r2, r2
    4a8a:	0c03      	lsrs	r3, r0, #16
    4a8c:	428b      	cmp	r3, r1
    4a8e:	d302      	bcc.n	4a96 <__aeabi_uidiv+0x32>
    4a90:	1212      	asrs	r2, r2, #8
    4a92:	0209      	lsls	r1, r1, #8
    4a94:	d065      	beq.n	4b62 <__aeabi_uidiv+0xfe>
    4a96:	0b03      	lsrs	r3, r0, #12
    4a98:	428b      	cmp	r3, r1
    4a9a:	d319      	bcc.n	4ad0 <__aeabi_uidiv+0x6c>
    4a9c:	e000      	b.n	4aa0 <__aeabi_uidiv+0x3c>
    4a9e:	0a09      	lsrs	r1, r1, #8
    4aa0:	0bc3      	lsrs	r3, r0, #15
    4aa2:	428b      	cmp	r3, r1
    4aa4:	d301      	bcc.n	4aaa <__aeabi_uidiv+0x46>
    4aa6:	03cb      	lsls	r3, r1, #15
    4aa8:	1ac0      	subs	r0, r0, r3
    4aaa:	4152      	adcs	r2, r2
    4aac:	0b83      	lsrs	r3, r0, #14
    4aae:	428b      	cmp	r3, r1
    4ab0:	d301      	bcc.n	4ab6 <__aeabi_uidiv+0x52>
    4ab2:	038b      	lsls	r3, r1, #14
    4ab4:	1ac0      	subs	r0, r0, r3
    4ab6:	4152      	adcs	r2, r2
    4ab8:	0b43      	lsrs	r3, r0, #13
    4aba:	428b      	cmp	r3, r1
    4abc:	d301      	bcc.n	4ac2 <__aeabi_uidiv+0x5e>
    4abe:	034b      	lsls	r3, r1, #13
    4ac0:	1ac0      	subs	r0, r0, r3
    4ac2:	4152      	adcs	r2, r2
    4ac4:	0b03      	lsrs	r3, r0, #12
    4ac6:	428b      	cmp	r3, r1
    4ac8:	d301      	bcc.n	4ace <__aeabi_uidiv+0x6a>
    4aca:	030b      	lsls	r3, r1, #12
    4acc:	1ac0      	subs	r0, r0, r3
    4ace:	4152      	adcs	r2, r2
    4ad0:	0ac3      	lsrs	r3, r0, #11
    4ad2:	428b      	cmp	r3, r1
    4ad4:	d301      	bcc.n	4ada <__aeabi_uidiv+0x76>
    4ad6:	02cb      	lsls	r3, r1, #11
    4ad8:	1ac0      	subs	r0, r0, r3
    4ada:	4152      	adcs	r2, r2
    4adc:	0a83      	lsrs	r3, r0, #10
    4ade:	428b      	cmp	r3, r1
    4ae0:	d301      	bcc.n	4ae6 <__aeabi_uidiv+0x82>
    4ae2:	028b      	lsls	r3, r1, #10
    4ae4:	1ac0      	subs	r0, r0, r3
    4ae6:	4152      	adcs	r2, r2
    4ae8:	0a43      	lsrs	r3, r0, #9
    4aea:	428b      	cmp	r3, r1
    4aec:	d301      	bcc.n	4af2 <__aeabi_uidiv+0x8e>
    4aee:	024b      	lsls	r3, r1, #9
    4af0:	1ac0      	subs	r0, r0, r3
    4af2:	4152      	adcs	r2, r2
    4af4:	0a03      	lsrs	r3, r0, #8
    4af6:	428b      	cmp	r3, r1
    4af8:	d301      	bcc.n	4afe <__aeabi_uidiv+0x9a>
    4afa:	020b      	lsls	r3, r1, #8
    4afc:	1ac0      	subs	r0, r0, r3
    4afe:	4152      	adcs	r2, r2
    4b00:	d2cd      	bcs.n	4a9e <__aeabi_uidiv+0x3a>
    4b02:	09c3      	lsrs	r3, r0, #7
    4b04:	428b      	cmp	r3, r1
    4b06:	d301      	bcc.n	4b0c <__aeabi_uidiv+0xa8>
    4b08:	01cb      	lsls	r3, r1, #7
    4b0a:	1ac0      	subs	r0, r0, r3
    4b0c:	4152      	adcs	r2, r2
    4b0e:	0983      	lsrs	r3, r0, #6
    4b10:	428b      	cmp	r3, r1
    4b12:	d301      	bcc.n	4b18 <__aeabi_uidiv+0xb4>
    4b14:	018b      	lsls	r3, r1, #6
    4b16:	1ac0      	subs	r0, r0, r3
    4b18:	4152      	adcs	r2, r2
    4b1a:	0943      	lsrs	r3, r0, #5
    4b1c:	428b      	cmp	r3, r1
    4b1e:	d301      	bcc.n	4b24 <__aeabi_uidiv+0xc0>
    4b20:	014b      	lsls	r3, r1, #5
    4b22:	1ac0      	subs	r0, r0, r3
    4b24:	4152      	adcs	r2, r2
    4b26:	0903      	lsrs	r3, r0, #4
    4b28:	428b      	cmp	r3, r1
    4b2a:	d301      	bcc.n	4b30 <__aeabi_uidiv+0xcc>
    4b2c:	010b      	lsls	r3, r1, #4
    4b2e:	1ac0      	subs	r0, r0, r3
    4b30:	4152      	adcs	r2, r2
    4b32:	08c3      	lsrs	r3, r0, #3
    4b34:	428b      	cmp	r3, r1
    4b36:	d301      	bcc.n	4b3c <__aeabi_uidiv+0xd8>
    4b38:	00cb      	lsls	r3, r1, #3
    4b3a:	1ac0      	subs	r0, r0, r3
    4b3c:	4152      	adcs	r2, r2
    4b3e:	0883      	lsrs	r3, r0, #2
    4b40:	428b      	cmp	r3, r1
    4b42:	d301      	bcc.n	4b48 <__aeabi_uidiv+0xe4>
    4b44:	008b      	lsls	r3, r1, #2
    4b46:	1ac0      	subs	r0, r0, r3
    4b48:	4152      	adcs	r2, r2
    4b4a:	0843      	lsrs	r3, r0, #1
    4b4c:	428b      	cmp	r3, r1
    4b4e:	d301      	bcc.n	4b54 <__aeabi_uidiv+0xf0>
    4b50:	004b      	lsls	r3, r1, #1
    4b52:	1ac0      	subs	r0, r0, r3
    4b54:	4152      	adcs	r2, r2
    4b56:	1a41      	subs	r1, r0, r1
    4b58:	d200      	bcs.n	4b5c <__aeabi_uidiv+0xf8>
    4b5a:	4601      	mov	r1, r0
    4b5c:	4152      	adcs	r2, r2
    4b5e:	4610      	mov	r0, r2
    4b60:	4770      	bx	lr
    4b62:	e7ff      	b.n	4b64 <__aeabi_uidiv+0x100>
    4b64:	b501      	push	{r0, lr}
    4b66:	2000      	movs	r0, #0
    4b68:	f000 f8f0 	bl	4d4c <__aeabi_idiv0>
    4b6c:	bd02      	pop	{r1, pc}
    4b6e:	46c0      	nop			; (mov r8, r8)

00004b70 <__aeabi_uidivmod>:
    4b70:	2900      	cmp	r1, #0
    4b72:	d0f7      	beq.n	4b64 <__aeabi_uidiv+0x100>
    4b74:	e776      	b.n	4a64 <__aeabi_uidiv>
    4b76:	4770      	bx	lr

00004b78 <__aeabi_idiv>:
    4b78:	4603      	mov	r3, r0
    4b7a:	430b      	orrs	r3, r1
    4b7c:	d47f      	bmi.n	4c7e <__aeabi_idiv+0x106>
    4b7e:	2200      	movs	r2, #0
    4b80:	0843      	lsrs	r3, r0, #1
    4b82:	428b      	cmp	r3, r1
    4b84:	d374      	bcc.n	4c70 <__aeabi_idiv+0xf8>
    4b86:	0903      	lsrs	r3, r0, #4
    4b88:	428b      	cmp	r3, r1
    4b8a:	d35f      	bcc.n	4c4c <__aeabi_idiv+0xd4>
    4b8c:	0a03      	lsrs	r3, r0, #8
    4b8e:	428b      	cmp	r3, r1
    4b90:	d344      	bcc.n	4c1c <__aeabi_idiv+0xa4>
    4b92:	0b03      	lsrs	r3, r0, #12
    4b94:	428b      	cmp	r3, r1
    4b96:	d328      	bcc.n	4bea <__aeabi_idiv+0x72>
    4b98:	0c03      	lsrs	r3, r0, #16
    4b9a:	428b      	cmp	r3, r1
    4b9c:	d30d      	bcc.n	4bba <__aeabi_idiv+0x42>
    4b9e:	22ff      	movs	r2, #255	; 0xff
    4ba0:	0209      	lsls	r1, r1, #8
    4ba2:	ba12      	rev	r2, r2
    4ba4:	0c03      	lsrs	r3, r0, #16
    4ba6:	428b      	cmp	r3, r1
    4ba8:	d302      	bcc.n	4bb0 <__aeabi_idiv+0x38>
    4baa:	1212      	asrs	r2, r2, #8
    4bac:	0209      	lsls	r1, r1, #8
    4bae:	d065      	beq.n	4c7c <__aeabi_idiv+0x104>
    4bb0:	0b03      	lsrs	r3, r0, #12
    4bb2:	428b      	cmp	r3, r1
    4bb4:	d319      	bcc.n	4bea <__aeabi_idiv+0x72>
    4bb6:	e000      	b.n	4bba <__aeabi_idiv+0x42>
    4bb8:	0a09      	lsrs	r1, r1, #8
    4bba:	0bc3      	lsrs	r3, r0, #15
    4bbc:	428b      	cmp	r3, r1
    4bbe:	d301      	bcc.n	4bc4 <__aeabi_idiv+0x4c>
    4bc0:	03cb      	lsls	r3, r1, #15
    4bc2:	1ac0      	subs	r0, r0, r3
    4bc4:	4152      	adcs	r2, r2
    4bc6:	0b83      	lsrs	r3, r0, #14
    4bc8:	428b      	cmp	r3, r1
    4bca:	d301      	bcc.n	4bd0 <__aeabi_idiv+0x58>
    4bcc:	038b      	lsls	r3, r1, #14
    4bce:	1ac0      	subs	r0, r0, r3
    4bd0:	4152      	adcs	r2, r2
    4bd2:	0b43      	lsrs	r3, r0, #13
    4bd4:	428b      	cmp	r3, r1
    4bd6:	d301      	bcc.n	4bdc <__aeabi_idiv+0x64>
    4bd8:	034b      	lsls	r3, r1, #13
    4bda:	1ac0      	subs	r0, r0, r3
    4bdc:	4152      	adcs	r2, r2
    4bde:	0b03      	lsrs	r3, r0, #12
    4be0:	428b      	cmp	r3, r1
    4be2:	d301      	bcc.n	4be8 <__aeabi_idiv+0x70>
    4be4:	030b      	lsls	r3, r1, #12
    4be6:	1ac0      	subs	r0, r0, r3
    4be8:	4152      	adcs	r2, r2
    4bea:	0ac3      	lsrs	r3, r0, #11
    4bec:	428b      	cmp	r3, r1
    4bee:	d301      	bcc.n	4bf4 <__aeabi_idiv+0x7c>
    4bf0:	02cb      	lsls	r3, r1, #11
    4bf2:	1ac0      	subs	r0, r0, r3
    4bf4:	4152      	adcs	r2, r2
    4bf6:	0a83      	lsrs	r3, r0, #10
    4bf8:	428b      	cmp	r3, r1
    4bfa:	d301      	bcc.n	4c00 <__aeabi_idiv+0x88>
    4bfc:	028b      	lsls	r3, r1, #10
    4bfe:	1ac0      	subs	r0, r0, r3
    4c00:	4152      	adcs	r2, r2
    4c02:	0a43      	lsrs	r3, r0, #9
    4c04:	428b      	cmp	r3, r1
    4c06:	d301      	bcc.n	4c0c <__aeabi_idiv+0x94>
    4c08:	024b      	lsls	r3, r1, #9
    4c0a:	1ac0      	subs	r0, r0, r3
    4c0c:	4152      	adcs	r2, r2
    4c0e:	0a03      	lsrs	r3, r0, #8
    4c10:	428b      	cmp	r3, r1
    4c12:	d301      	bcc.n	4c18 <__aeabi_idiv+0xa0>
    4c14:	020b      	lsls	r3, r1, #8
    4c16:	1ac0      	subs	r0, r0, r3
    4c18:	4152      	adcs	r2, r2
    4c1a:	d2cd      	bcs.n	4bb8 <__aeabi_idiv+0x40>
    4c1c:	09c3      	lsrs	r3, r0, #7
    4c1e:	428b      	cmp	r3, r1
    4c20:	d301      	bcc.n	4c26 <__aeabi_idiv+0xae>
    4c22:	01cb      	lsls	r3, r1, #7
    4c24:	1ac0      	subs	r0, r0, r3
    4c26:	4152      	adcs	r2, r2
    4c28:	0983      	lsrs	r3, r0, #6
    4c2a:	428b      	cmp	r3, r1
    4c2c:	d301      	bcc.n	4c32 <__aeabi_idiv+0xba>
    4c2e:	018b      	lsls	r3, r1, #6
    4c30:	1ac0      	subs	r0, r0, r3
    4c32:	4152      	adcs	r2, r2
    4c34:	0943      	lsrs	r3, r0, #5
    4c36:	428b      	cmp	r3, r1
    4c38:	d301      	bcc.n	4c3e <__aeabi_idiv+0xc6>
    4c3a:	014b      	lsls	r3, r1, #5
    4c3c:	1ac0      	subs	r0, r0, r3
    4c3e:	4152      	adcs	r2, r2
    4c40:	0903      	lsrs	r3, r0, #4
    4c42:	428b      	cmp	r3, r1
    4c44:	d301      	bcc.n	4c4a <__aeabi_idiv+0xd2>
    4c46:	010b      	lsls	r3, r1, #4
    4c48:	1ac0      	subs	r0, r0, r3
    4c4a:	4152      	adcs	r2, r2
    4c4c:	08c3      	lsrs	r3, r0, #3
    4c4e:	428b      	cmp	r3, r1
    4c50:	d301      	bcc.n	4c56 <__aeabi_idiv+0xde>
    4c52:	00cb      	lsls	r3, r1, #3
    4c54:	1ac0      	subs	r0, r0, r3
    4c56:	4152      	adcs	r2, r2
    4c58:	0883      	lsrs	r3, r0, #2
    4c5a:	428b      	cmp	r3, r1
    4c5c:	d301      	bcc.n	4c62 <__aeabi_idiv+0xea>
    4c5e:	008b      	lsls	r3, r1, #2
    4c60:	1ac0      	subs	r0, r0, r3
    4c62:	4152      	adcs	r2, r2
    4c64:	0843      	lsrs	r3, r0, #1
    4c66:	428b      	cmp	r3, r1
    4c68:	d301      	bcc.n	4c6e <__aeabi_idiv+0xf6>
    4c6a:	004b      	lsls	r3, r1, #1
    4c6c:	1ac0      	subs	r0, r0, r3
    4c6e:	4152      	adcs	r2, r2
    4c70:	1a41      	subs	r1, r0, r1
    4c72:	d200      	bcs.n	4c76 <__aeabi_idiv+0xfe>
    4c74:	4601      	mov	r1, r0
    4c76:	4152      	adcs	r2, r2
    4c78:	4610      	mov	r0, r2
    4c7a:	4770      	bx	lr
    4c7c:	e05d      	b.n	4d3a <__aeabi_idiv+0x1c2>
    4c7e:	0fca      	lsrs	r2, r1, #31
    4c80:	d000      	beq.n	4c84 <__aeabi_idiv+0x10c>
    4c82:	4249      	negs	r1, r1
    4c84:	1003      	asrs	r3, r0, #32
    4c86:	d300      	bcc.n	4c8a <__aeabi_idiv+0x112>
    4c88:	4240      	negs	r0, r0
    4c8a:	4053      	eors	r3, r2
    4c8c:	2200      	movs	r2, #0
    4c8e:	469c      	mov	ip, r3
    4c90:	0903      	lsrs	r3, r0, #4
    4c92:	428b      	cmp	r3, r1
    4c94:	d32d      	bcc.n	4cf2 <__aeabi_idiv+0x17a>
    4c96:	0a03      	lsrs	r3, r0, #8
    4c98:	428b      	cmp	r3, r1
    4c9a:	d312      	bcc.n	4cc2 <__aeabi_idiv+0x14a>
    4c9c:	22fc      	movs	r2, #252	; 0xfc
    4c9e:	0189      	lsls	r1, r1, #6
    4ca0:	ba12      	rev	r2, r2
    4ca2:	0a03      	lsrs	r3, r0, #8
    4ca4:	428b      	cmp	r3, r1
    4ca6:	d30c      	bcc.n	4cc2 <__aeabi_idiv+0x14a>
    4ca8:	0189      	lsls	r1, r1, #6
    4caa:	1192      	asrs	r2, r2, #6
    4cac:	428b      	cmp	r3, r1
    4cae:	d308      	bcc.n	4cc2 <__aeabi_idiv+0x14a>
    4cb0:	0189      	lsls	r1, r1, #6
    4cb2:	1192      	asrs	r2, r2, #6
    4cb4:	428b      	cmp	r3, r1
    4cb6:	d304      	bcc.n	4cc2 <__aeabi_idiv+0x14a>
    4cb8:	0189      	lsls	r1, r1, #6
    4cba:	d03a      	beq.n	4d32 <__aeabi_idiv+0x1ba>
    4cbc:	1192      	asrs	r2, r2, #6
    4cbe:	e000      	b.n	4cc2 <__aeabi_idiv+0x14a>
    4cc0:	0989      	lsrs	r1, r1, #6
    4cc2:	09c3      	lsrs	r3, r0, #7
    4cc4:	428b      	cmp	r3, r1
    4cc6:	d301      	bcc.n	4ccc <__aeabi_idiv+0x154>
    4cc8:	01cb      	lsls	r3, r1, #7
    4cca:	1ac0      	subs	r0, r0, r3
    4ccc:	4152      	adcs	r2, r2
    4cce:	0983      	lsrs	r3, r0, #6
    4cd0:	428b      	cmp	r3, r1
    4cd2:	d301      	bcc.n	4cd8 <__aeabi_idiv+0x160>
    4cd4:	018b      	lsls	r3, r1, #6
    4cd6:	1ac0      	subs	r0, r0, r3
    4cd8:	4152      	adcs	r2, r2
    4cda:	0943      	lsrs	r3, r0, #5
    4cdc:	428b      	cmp	r3, r1
    4cde:	d301      	bcc.n	4ce4 <__aeabi_idiv+0x16c>
    4ce0:	014b      	lsls	r3, r1, #5
    4ce2:	1ac0      	subs	r0, r0, r3
    4ce4:	4152      	adcs	r2, r2
    4ce6:	0903      	lsrs	r3, r0, #4
    4ce8:	428b      	cmp	r3, r1
    4cea:	d301      	bcc.n	4cf0 <__aeabi_idiv+0x178>
    4cec:	010b      	lsls	r3, r1, #4
    4cee:	1ac0      	subs	r0, r0, r3
    4cf0:	4152      	adcs	r2, r2
    4cf2:	08c3      	lsrs	r3, r0, #3
    4cf4:	428b      	cmp	r3, r1
    4cf6:	d301      	bcc.n	4cfc <__aeabi_idiv+0x184>
    4cf8:	00cb      	lsls	r3, r1, #3
    4cfa:	1ac0      	subs	r0, r0, r3
    4cfc:	4152      	adcs	r2, r2
    4cfe:	0883      	lsrs	r3, r0, #2
    4d00:	428b      	cmp	r3, r1
    4d02:	d301      	bcc.n	4d08 <__aeabi_idiv+0x190>
    4d04:	008b      	lsls	r3, r1, #2
    4d06:	1ac0      	subs	r0, r0, r3
    4d08:	4152      	adcs	r2, r2
    4d0a:	d2d9      	bcs.n	4cc0 <__aeabi_idiv+0x148>
    4d0c:	0843      	lsrs	r3, r0, #1
    4d0e:	428b      	cmp	r3, r1
    4d10:	d301      	bcc.n	4d16 <__aeabi_idiv+0x19e>
    4d12:	004b      	lsls	r3, r1, #1
    4d14:	1ac0      	subs	r0, r0, r3
    4d16:	4152      	adcs	r2, r2
    4d18:	1a41      	subs	r1, r0, r1
    4d1a:	d200      	bcs.n	4d1e <__aeabi_idiv+0x1a6>
    4d1c:	4601      	mov	r1, r0
    4d1e:	4663      	mov	r3, ip
    4d20:	4152      	adcs	r2, r2
    4d22:	105b      	asrs	r3, r3, #1
    4d24:	4610      	mov	r0, r2
    4d26:	d301      	bcc.n	4d2c <__aeabi_idiv+0x1b4>
    4d28:	4240      	negs	r0, r0
    4d2a:	2b00      	cmp	r3, #0
    4d2c:	d500      	bpl.n	4d30 <__aeabi_idiv+0x1b8>
    4d2e:	4249      	negs	r1, r1
    4d30:	4770      	bx	lr
    4d32:	4663      	mov	r3, ip
    4d34:	105b      	asrs	r3, r3, #1
    4d36:	d300      	bcc.n	4d3a <__aeabi_idiv+0x1c2>
    4d38:	4240      	negs	r0, r0
    4d3a:	b501      	push	{r0, lr}
    4d3c:	2000      	movs	r0, #0
    4d3e:	f000 f805 	bl	4d4c <__aeabi_idiv0>
    4d42:	bd02      	pop	{r1, pc}

00004d44 <__aeabi_idivmod>:
    4d44:	2900      	cmp	r1, #0
    4d46:	d0f8      	beq.n	4d3a <__aeabi_idiv+0x1c2>
    4d48:	e716      	b.n	4b78 <__aeabi_idiv>
    4d4a:	4770      	bx	lr

00004d4c <__aeabi_idiv0>:
    4d4c:	4770      	bx	lr
    4d4e:	46c0      	nop			; (mov r8, r8)

00004d50 <rt_set_PSP>:
    4d50:	f380 8809 	msr	PSP, r0
    4d54:	4770      	bx	lr

00004d56 <rt_get_PSP>:
    4d56:	f3ef 8009 	mrs	r0, PSP
    4d5a:	4770      	bx	lr

00004d5c <os_set_env>:
    4d5c:	4668      	mov	r0, sp
    4d5e:	f380 8809 	msr	PSP, r0
    4d62:	484a      	ldr	r0, [pc, #296]	; (4e8c <OS_Tick_Handler+0xa>)
    4d64:	7800      	ldrb	r0, [r0, #0]
    4d66:	07c0      	lsls	r0, r0, #31
    4d68:	d103      	bne.n	4d72 <PrivilegedE>
    4d6a:	2003      	movs	r0, #3
    4d6c:	f380 8814 	msr	CONTROL, r0
    4d70:	4770      	bx	lr

00004d72 <PrivilegedE>:
    4d72:	2002      	movs	r0, #2
    4d74:	f380 8814 	msr	CONTROL, r0
    4d78:	4770      	bx	lr

00004d7a <_alloc_box>:
    4d7a:	4b45      	ldr	r3, [pc, #276]	; (4e90 <OS_Tick_Handler+0xe>)
    4d7c:	469c      	mov	ip, r3
    4d7e:	f3ef 8305 	mrs	r3, IPSR
    4d82:	061b      	lsls	r3, r3, #24
    4d84:	d105      	bne.n	4d92 <PrivilegedA>
    4d86:	f3ef 8314 	mrs	r3, CONTROL
    4d8a:	07db      	lsls	r3, r3, #31
    4d8c:	d001      	beq.n	4d92 <PrivilegedA>
    4d8e:	df00      	svc	0
    4d90:	4770      	bx	lr

00004d92 <PrivilegedA>:
    4d92:	4760      	bx	ip

00004d94 <_free_box>:
    4d94:	4b3f      	ldr	r3, [pc, #252]	; (4e94 <OS_Tick_Handler+0x12>)
    4d96:	469c      	mov	ip, r3
    4d98:	f3ef 8305 	mrs	r3, IPSR
    4d9c:	061b      	lsls	r3, r3, #24
    4d9e:	d105      	bne.n	4dac <PrivilegedF>
    4da0:	f3ef 8314 	mrs	r3, CONTROL
    4da4:	07db      	lsls	r3, r3, #31
    4da6:	d001      	beq.n	4dac <PrivilegedF>
    4da8:	df00      	svc	0
    4daa:	4770      	bx	lr

00004dac <PrivilegedF>:
    4dac:	4760      	bx	ip

00004dae <SVC_Handler>:
    4dae:	f3ef 8009 	mrs	r0, PSP
    4db2:	6981      	ldr	r1, [r0, #24]
    4db4:	3902      	subs	r1, #2
    4db6:	7809      	ldrb	r1, [r1, #0]
    4db8:	2900      	cmp	r1, #0
    4dba:	d12b      	bne.n	4e14 <SVC_User>
    4dbc:	46a6      	mov	lr, r4
    4dbe:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4dc0:	46a4      	mov	ip, r4
    4dc2:	4674      	mov	r4, lr
    4dc4:	47e0      	blx	ip
    4dc6:	f3ef 8309 	mrs	r3, PSP
    4dca:	c307      	stmia	r3!, {r0, r1, r2}
    4dcc:	4b32      	ldr	r3, [pc, #200]	; (4e98 <OS_Tick_Handler+0x16>)
    4dce:	cb06      	ldmia	r3!, {r1, r2}
    4dd0:	4291      	cmp	r1, r2
    4dd2:	d01c      	beq.n	4e0e <SVC_Exit>
    4dd4:	3b08      	subs	r3, #8
    4dd6:	2900      	cmp	r1, #0
    4dd8:	d00d      	beq.n	4df6 <SVC_Next>
    4dda:	f3ef 8009 	mrs	r0, PSP
    4dde:	3820      	subs	r0, #32
    4de0:	6288      	str	r0, [r1, #40]	; 0x28
    4de2:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4de4:	4644      	mov	r4, r8
    4de6:	464d      	mov	r5, r9
    4de8:	4656      	mov	r6, sl
    4dea:	465f      	mov	r7, fp
    4dec:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4dee:	b40c      	push	{r2, r3}
    4df0:	f003 fba6 	bl	8540 <rt_stk_check>
    4df4:	bc0c      	pop	{r2, r3}

00004df6 <SVC_Next>:
    4df6:	601a      	str	r2, [r3, #0]
    4df8:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4dfa:	3010      	adds	r0, #16
    4dfc:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4dfe:	46a0      	mov	r8, r4
    4e00:	46a9      	mov	r9, r5
    4e02:	46b2      	mov	sl, r6
    4e04:	46bb      	mov	fp, r7
    4e06:	f380 8809 	msr	PSP, r0
    4e0a:	3820      	subs	r0, #32
    4e0c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004e0e <SVC_Exit>:
    4e0e:	2002      	movs	r0, #2
    4e10:	43c0      	mvns	r0, r0
    4e12:	4700      	bx	r0

00004e14 <SVC_User>:
    4e14:	b510      	push	{r4, lr}
    4e16:	4a21      	ldr	r2, [pc, #132]	; (4e9c <OS_Tick_Handler+0x1a>)
    4e18:	6812      	ldr	r2, [r2, #0]
    4e1a:	4291      	cmp	r1, r2
    4e1c:	d809      	bhi.n	4e32 <SVC_Done>
    4e1e:	4c20      	ldr	r4, [pc, #128]	; (4ea0 <OS_Tick_Handler+0x1e>)
    4e20:	0089      	lsls	r1, r1, #2
    4e22:	5864      	ldr	r4, [r4, r1]
    4e24:	46a6      	mov	lr, r4
    4e26:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4e28:	46a4      	mov	ip, r4
    4e2a:	47f0      	blx	lr
    4e2c:	f3ef 8409 	mrs	r4, PSP
    4e30:	c40f      	stmia	r4!, {r0, r1, r2, r3}

00004e32 <SVC_Done>:
    4e32:	bd10      	pop	{r4, pc}

00004e34 <PendSV_Handler>:
    4e34:	f003 faf4 	bl	8420 <rt_pop_req>

00004e38 <Sys_Switch>:
    4e38:	4b17      	ldr	r3, [pc, #92]	; (4e98 <OS_Tick_Handler+0x16>)
    4e3a:	cb06      	ldmia	r3!, {r1, r2}
    4e3c:	4291      	cmp	r1, r2
    4e3e:	d01a      	beq.n	4e76 <Sys_Exit>
    4e40:	3b08      	subs	r3, #8
    4e42:	f3ef 8009 	mrs	r0, PSP
    4e46:	3820      	subs	r0, #32
    4e48:	6288      	str	r0, [r1, #40]	; 0x28
    4e4a:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4e4c:	4644      	mov	r4, r8
    4e4e:	464d      	mov	r5, r9
    4e50:	4656      	mov	r6, sl
    4e52:	465f      	mov	r7, fp
    4e54:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4e56:	b40c      	push	{r2, r3}
    4e58:	f003 fb72 	bl	8540 <rt_stk_check>
    4e5c:	bc0c      	pop	{r2, r3}
    4e5e:	601a      	str	r2, [r3, #0]
    4e60:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4e62:	3010      	adds	r0, #16
    4e64:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4e66:	46a0      	mov	r8, r4
    4e68:	46a9      	mov	r9, r5
    4e6a:	46b2      	mov	sl, r6
    4e6c:	46bb      	mov	fp, r7
    4e6e:	f380 8809 	msr	PSP, r0
    4e72:	3820      	subs	r0, #32
    4e74:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004e76 <Sys_Exit>:
    4e76:	2002      	movs	r0, #2
    4e78:	43c0      	mvns	r0, r0
    4e7a:	4700      	bx	r0

00004e7c <SysTick_Handler>:
    4e7c:	f003 fb42 	bl	8504 <rt_systick>
    4e80:	e7da      	b.n	4e38 <Sys_Switch>

00004e82 <OS_Tick_Handler>:
    4e82:	f003 fb3d 	bl	8500 <os_tick_irqack>
    4e86:	f003 fb3d 	bl	8504 <rt_systick>
    4e8a:	e7d5      	b.n	4e38 <Sys_Switch>
    4e8c:	00008cec 	.word	0x00008cec
    4e90:	0000763d 	.word	0x0000763d
    4e94:	0000767d 	.word	0x0000767d
    4e98:	200060c0 	.word	0x200060c0
    4e9c:	00000000 	.word	0x00000000
    4ea0:	fffffffc 	.word	0xfffffffc

00004ea4 <__aeabi_uldivmod>:
    4ea4:	2b00      	cmp	r3, #0
    4ea6:	d111      	bne.n	4ecc <__aeabi_uldivmod+0x28>
    4ea8:	2a00      	cmp	r2, #0
    4eaa:	d10f      	bne.n	4ecc <__aeabi_uldivmod+0x28>
    4eac:	2900      	cmp	r1, #0
    4eae:	d100      	bne.n	4eb2 <__aeabi_uldivmod+0xe>
    4eb0:	2800      	cmp	r0, #0
    4eb2:	d002      	beq.n	4eba <__aeabi_uldivmod+0x16>
    4eb4:	2100      	movs	r1, #0
    4eb6:	43c9      	mvns	r1, r1
    4eb8:	1c08      	adds	r0, r1, #0
    4eba:	b407      	push	{r0, r1, r2}
    4ebc:	4802      	ldr	r0, [pc, #8]	; (4ec8 <__aeabi_uldivmod+0x24>)
    4ebe:	a102      	add	r1, pc, #8	; (adr r1, 4ec8 <__aeabi_uldivmod+0x24>)
    4ec0:	1840      	adds	r0, r0, r1
    4ec2:	9002      	str	r0, [sp, #8]
    4ec4:	bd03      	pop	{r0, r1, pc}
    4ec6:	46c0      	nop			; (mov r8, r8)
    4ec8:	fffffe85 	.word	0xfffffe85
    4ecc:	b403      	push	{r0, r1}
    4ece:	4668      	mov	r0, sp
    4ed0:	b501      	push	{r0, lr}
    4ed2:	9802      	ldr	r0, [sp, #8]
    4ed4:	f000 f832 	bl	4f3c <__udivmoddi4>
    4ed8:	9b01      	ldr	r3, [sp, #4]
    4eda:	469e      	mov	lr, r3
    4edc:	b002      	add	sp, #8
    4ede:	bc0c      	pop	{r2, r3}
    4ee0:	4770      	bx	lr
    4ee2:	46c0      	nop			; (mov r8, r8)

00004ee4 <__aeabi_lmul>:
    4ee4:	b5f0      	push	{r4, r5, r6, r7, lr}
    4ee6:	464f      	mov	r7, r9
    4ee8:	4646      	mov	r6, r8
    4eea:	b4c0      	push	{r6, r7}
    4eec:	0416      	lsls	r6, r2, #16
    4eee:	0c36      	lsrs	r6, r6, #16
    4ef0:	4699      	mov	r9, r3
    4ef2:	0033      	movs	r3, r6
    4ef4:	0405      	lsls	r5, r0, #16
    4ef6:	0c2c      	lsrs	r4, r5, #16
    4ef8:	0c07      	lsrs	r7, r0, #16
    4efa:	0c15      	lsrs	r5, r2, #16
    4efc:	4363      	muls	r3, r4
    4efe:	437e      	muls	r6, r7
    4f00:	436f      	muls	r7, r5
    4f02:	4365      	muls	r5, r4
    4f04:	0c1c      	lsrs	r4, r3, #16
    4f06:	19ad      	adds	r5, r5, r6
    4f08:	1964      	adds	r4, r4, r5
    4f0a:	469c      	mov	ip, r3
    4f0c:	42a6      	cmp	r6, r4
    4f0e:	d903      	bls.n	4f18 <__aeabi_lmul+0x34>
    4f10:	2380      	movs	r3, #128	; 0x80
    4f12:	025b      	lsls	r3, r3, #9
    4f14:	4698      	mov	r8, r3
    4f16:	4447      	add	r7, r8
    4f18:	4663      	mov	r3, ip
    4f1a:	0c25      	lsrs	r5, r4, #16
    4f1c:	19ef      	adds	r7, r5, r7
    4f1e:	041d      	lsls	r5, r3, #16
    4f20:	464b      	mov	r3, r9
    4f22:	434a      	muls	r2, r1
    4f24:	4343      	muls	r3, r0
    4f26:	0c2d      	lsrs	r5, r5, #16
    4f28:	0424      	lsls	r4, r4, #16
    4f2a:	1964      	adds	r4, r4, r5
    4f2c:	1899      	adds	r1, r3, r2
    4f2e:	19c9      	adds	r1, r1, r7
    4f30:	0020      	movs	r0, r4
    4f32:	bc0c      	pop	{r2, r3}
    4f34:	4690      	mov	r8, r2
    4f36:	4699      	mov	r9, r3
    4f38:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4f3a:	46c0      	nop			; (mov r8, r8)

00004f3c <__udivmoddi4>:
    4f3c:	b5f0      	push	{r4, r5, r6, r7, lr}
    4f3e:	464d      	mov	r5, r9
    4f40:	4656      	mov	r6, sl
    4f42:	4644      	mov	r4, r8
    4f44:	465f      	mov	r7, fp
    4f46:	b4f0      	push	{r4, r5, r6, r7}
    4f48:	4692      	mov	sl, r2
    4f4a:	b083      	sub	sp, #12
    4f4c:	0004      	movs	r4, r0
    4f4e:	000d      	movs	r5, r1
    4f50:	4699      	mov	r9, r3
    4f52:	428b      	cmp	r3, r1
    4f54:	d82f      	bhi.n	4fb6 <__udivmoddi4+0x7a>
    4f56:	d02c      	beq.n	4fb2 <__udivmoddi4+0x76>
    4f58:	4649      	mov	r1, r9
    4f5a:	4650      	mov	r0, sl
    4f5c:	f000 f8ae 	bl	50bc <__clzdi2>
    4f60:	0029      	movs	r1, r5
    4f62:	0006      	movs	r6, r0
    4f64:	0020      	movs	r0, r4
    4f66:	f000 f8a9 	bl	50bc <__clzdi2>
    4f6a:	1a33      	subs	r3, r6, r0
    4f6c:	4698      	mov	r8, r3
    4f6e:	3b20      	subs	r3, #32
    4f70:	469b      	mov	fp, r3
    4f72:	d500      	bpl.n	4f76 <__udivmoddi4+0x3a>
    4f74:	e074      	b.n	5060 <__udivmoddi4+0x124>
    4f76:	4653      	mov	r3, sl
    4f78:	465a      	mov	r2, fp
    4f7a:	4093      	lsls	r3, r2
    4f7c:	001f      	movs	r7, r3
    4f7e:	4653      	mov	r3, sl
    4f80:	4642      	mov	r2, r8
    4f82:	4093      	lsls	r3, r2
    4f84:	001e      	movs	r6, r3
    4f86:	42af      	cmp	r7, r5
    4f88:	d829      	bhi.n	4fde <__udivmoddi4+0xa2>
    4f8a:	d026      	beq.n	4fda <__udivmoddi4+0x9e>
    4f8c:	465b      	mov	r3, fp
    4f8e:	1ba4      	subs	r4, r4, r6
    4f90:	41bd      	sbcs	r5, r7
    4f92:	2b00      	cmp	r3, #0
    4f94:	da00      	bge.n	4f98 <__udivmoddi4+0x5c>
    4f96:	e079      	b.n	508c <__udivmoddi4+0x150>
    4f98:	2200      	movs	r2, #0
    4f9a:	2300      	movs	r3, #0
    4f9c:	9200      	str	r2, [sp, #0]
    4f9e:	9301      	str	r3, [sp, #4]
    4fa0:	2301      	movs	r3, #1
    4fa2:	465a      	mov	r2, fp
    4fa4:	4093      	lsls	r3, r2
    4fa6:	9301      	str	r3, [sp, #4]
    4fa8:	2301      	movs	r3, #1
    4faa:	4642      	mov	r2, r8
    4fac:	4093      	lsls	r3, r2
    4fae:	9300      	str	r3, [sp, #0]
    4fb0:	e019      	b.n	4fe6 <__udivmoddi4+0xaa>
    4fb2:	4282      	cmp	r2, r0
    4fb4:	d9d0      	bls.n	4f58 <__udivmoddi4+0x1c>
    4fb6:	2200      	movs	r2, #0
    4fb8:	2300      	movs	r3, #0
    4fba:	9200      	str	r2, [sp, #0]
    4fbc:	9301      	str	r3, [sp, #4]
    4fbe:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4fc0:	2b00      	cmp	r3, #0
    4fc2:	d001      	beq.n	4fc8 <__udivmoddi4+0x8c>
    4fc4:	601c      	str	r4, [r3, #0]
    4fc6:	605d      	str	r5, [r3, #4]
    4fc8:	9800      	ldr	r0, [sp, #0]
    4fca:	9901      	ldr	r1, [sp, #4]
    4fcc:	b003      	add	sp, #12
    4fce:	bc3c      	pop	{r2, r3, r4, r5}
    4fd0:	4690      	mov	r8, r2
    4fd2:	4699      	mov	r9, r3
    4fd4:	46a2      	mov	sl, r4
    4fd6:	46ab      	mov	fp, r5
    4fd8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4fda:	42a3      	cmp	r3, r4
    4fdc:	d9d6      	bls.n	4f8c <__udivmoddi4+0x50>
    4fde:	2200      	movs	r2, #0
    4fe0:	2300      	movs	r3, #0
    4fe2:	9200      	str	r2, [sp, #0]
    4fe4:	9301      	str	r3, [sp, #4]
    4fe6:	4643      	mov	r3, r8
    4fe8:	2b00      	cmp	r3, #0
    4fea:	d0e8      	beq.n	4fbe <__udivmoddi4+0x82>
    4fec:	07fb      	lsls	r3, r7, #31
    4fee:	0872      	lsrs	r2, r6, #1
    4ff0:	431a      	orrs	r2, r3
    4ff2:	4646      	mov	r6, r8
    4ff4:	087b      	lsrs	r3, r7, #1
    4ff6:	e00e      	b.n	5016 <__udivmoddi4+0xda>
    4ff8:	42ab      	cmp	r3, r5
    4ffa:	d101      	bne.n	5000 <__udivmoddi4+0xc4>
    4ffc:	42a2      	cmp	r2, r4
    4ffe:	d80c      	bhi.n	501a <__udivmoddi4+0xde>
    5000:	1aa4      	subs	r4, r4, r2
    5002:	419d      	sbcs	r5, r3
    5004:	2001      	movs	r0, #1
    5006:	1924      	adds	r4, r4, r4
    5008:	416d      	adcs	r5, r5
    500a:	2100      	movs	r1, #0
    500c:	3e01      	subs	r6, #1
    500e:	1824      	adds	r4, r4, r0
    5010:	414d      	adcs	r5, r1
    5012:	2e00      	cmp	r6, #0
    5014:	d006      	beq.n	5024 <__udivmoddi4+0xe8>
    5016:	42ab      	cmp	r3, r5
    5018:	d9ee      	bls.n	4ff8 <__udivmoddi4+0xbc>
    501a:	3e01      	subs	r6, #1
    501c:	1924      	adds	r4, r4, r4
    501e:	416d      	adcs	r5, r5
    5020:	2e00      	cmp	r6, #0
    5022:	d1f8      	bne.n	5016 <__udivmoddi4+0xda>
    5024:	465b      	mov	r3, fp
    5026:	9800      	ldr	r0, [sp, #0]
    5028:	9901      	ldr	r1, [sp, #4]
    502a:	1900      	adds	r0, r0, r4
    502c:	4169      	adcs	r1, r5
    502e:	2b00      	cmp	r3, #0
    5030:	db22      	blt.n	5078 <__udivmoddi4+0x13c>
    5032:	002b      	movs	r3, r5
    5034:	465a      	mov	r2, fp
    5036:	40d3      	lsrs	r3, r2
    5038:	002a      	movs	r2, r5
    503a:	4644      	mov	r4, r8
    503c:	40e2      	lsrs	r2, r4
    503e:	001c      	movs	r4, r3
    5040:	465b      	mov	r3, fp
    5042:	0015      	movs	r5, r2
    5044:	2b00      	cmp	r3, #0
    5046:	db2c      	blt.n	50a2 <__udivmoddi4+0x166>
    5048:	0026      	movs	r6, r4
    504a:	409e      	lsls	r6, r3
    504c:	0033      	movs	r3, r6
    504e:	0026      	movs	r6, r4
    5050:	4647      	mov	r7, r8
    5052:	40be      	lsls	r6, r7
    5054:	0032      	movs	r2, r6
    5056:	1a80      	subs	r0, r0, r2
    5058:	4199      	sbcs	r1, r3
    505a:	9000      	str	r0, [sp, #0]
    505c:	9101      	str	r1, [sp, #4]
    505e:	e7ae      	b.n	4fbe <__udivmoddi4+0x82>
    5060:	4642      	mov	r2, r8
    5062:	2320      	movs	r3, #32
    5064:	1a9b      	subs	r3, r3, r2
    5066:	4652      	mov	r2, sl
    5068:	40da      	lsrs	r2, r3
    506a:	4641      	mov	r1, r8
    506c:	0013      	movs	r3, r2
    506e:	464a      	mov	r2, r9
    5070:	408a      	lsls	r2, r1
    5072:	0017      	movs	r7, r2
    5074:	431f      	orrs	r7, r3
    5076:	e782      	b.n	4f7e <__udivmoddi4+0x42>
    5078:	4642      	mov	r2, r8
    507a:	2320      	movs	r3, #32
    507c:	1a9b      	subs	r3, r3, r2
    507e:	002a      	movs	r2, r5
    5080:	4646      	mov	r6, r8
    5082:	409a      	lsls	r2, r3
    5084:	0023      	movs	r3, r4
    5086:	40f3      	lsrs	r3, r6
    5088:	4313      	orrs	r3, r2
    508a:	e7d5      	b.n	5038 <__udivmoddi4+0xfc>
    508c:	4642      	mov	r2, r8
    508e:	2320      	movs	r3, #32
    5090:	2100      	movs	r1, #0
    5092:	1a9b      	subs	r3, r3, r2
    5094:	2200      	movs	r2, #0
    5096:	9100      	str	r1, [sp, #0]
    5098:	9201      	str	r2, [sp, #4]
    509a:	2201      	movs	r2, #1
    509c:	40da      	lsrs	r2, r3
    509e:	9201      	str	r2, [sp, #4]
    50a0:	e782      	b.n	4fa8 <__udivmoddi4+0x6c>
    50a2:	4642      	mov	r2, r8
    50a4:	2320      	movs	r3, #32
    50a6:	0026      	movs	r6, r4
    50a8:	1a9b      	subs	r3, r3, r2
    50aa:	40de      	lsrs	r6, r3
    50ac:	002f      	movs	r7, r5
    50ae:	46b4      	mov	ip, r6
    50b0:	4097      	lsls	r7, r2
    50b2:	4666      	mov	r6, ip
    50b4:	003b      	movs	r3, r7
    50b6:	4333      	orrs	r3, r6
    50b8:	e7c9      	b.n	504e <__udivmoddi4+0x112>
    50ba:	46c0      	nop			; (mov r8, r8)

000050bc <__clzdi2>:
    50bc:	b510      	push	{r4, lr}
    50be:	2900      	cmp	r1, #0
    50c0:	d103      	bne.n	50ca <__clzdi2+0xe>
    50c2:	f000 f807 	bl	50d4 <__clzsi2>
    50c6:	3020      	adds	r0, #32
    50c8:	e002      	b.n	50d0 <__clzdi2+0x14>
    50ca:	1c08      	adds	r0, r1, #0
    50cc:	f000 f802 	bl	50d4 <__clzsi2>
    50d0:	bd10      	pop	{r4, pc}
    50d2:	46c0      	nop			; (mov r8, r8)

000050d4 <__clzsi2>:
    50d4:	211c      	movs	r1, #28
    50d6:	2301      	movs	r3, #1
    50d8:	041b      	lsls	r3, r3, #16
    50da:	4298      	cmp	r0, r3
    50dc:	d301      	bcc.n	50e2 <__clzsi2+0xe>
    50de:	0c00      	lsrs	r0, r0, #16
    50e0:	3910      	subs	r1, #16
    50e2:	0a1b      	lsrs	r3, r3, #8
    50e4:	4298      	cmp	r0, r3
    50e6:	d301      	bcc.n	50ec <__clzsi2+0x18>
    50e8:	0a00      	lsrs	r0, r0, #8
    50ea:	3908      	subs	r1, #8
    50ec:	091b      	lsrs	r3, r3, #4
    50ee:	4298      	cmp	r0, r3
    50f0:	d301      	bcc.n	50f6 <__clzsi2+0x22>
    50f2:	0900      	lsrs	r0, r0, #4
    50f4:	3904      	subs	r1, #4
    50f6:	a202      	add	r2, pc, #8	; (adr r2, 5100 <__clzsi2+0x2c>)
    50f8:	5c10      	ldrb	r0, [r2, r0]
    50fa:	1840      	adds	r0, r0, r1
    50fc:	4770      	bx	lr
    50fe:	46c0      	nop			; (mov r8, r8)
    5100:	02020304 	.word	0x02020304
    5104:	01010101 	.word	0x01010101
	...

00005110 <abs>:
    5110:	17c3      	asrs	r3, r0, #31
    5112:	18c0      	adds	r0, r0, r3
    5114:	4058      	eors	r0, r3
    5116:	4770      	bx	lr

00005118 <atexit>:
    5118:	b510      	push	{r4, lr}
    511a:	0001      	movs	r1, r0
    511c:	2300      	movs	r3, #0
    511e:	2200      	movs	r2, #0
    5120:	2000      	movs	r0, #0
    5122:	f000 f8a7 	bl	5274 <__register_exitproc>
    5126:	bd10      	pop	{r4, pc}

00005128 <exit>:
    5128:	b510      	push	{r4, lr}
    512a:	2100      	movs	r1, #0
    512c:	0004      	movs	r4, r0
    512e:	f000 f917 	bl	5360 <__call_exitprocs>
    5132:	4b04      	ldr	r3, [pc, #16]	; (5144 <exit+0x1c>)
    5134:	6818      	ldr	r0, [r3, #0]
    5136:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    5138:	2b00      	cmp	r3, #0
    513a:	d000      	beq.n	513e <exit+0x16>
    513c:	4798      	blx	r3
    513e:	0020      	movs	r0, r4
    5140:	f7fb fd58 	bl	bf4 <_exit>
    5144:	0000976c 	.word	0x0000976c

00005148 <__libc_fini_array>:
    5148:	b570      	push	{r4, r5, r6, lr}
    514a:	4b09      	ldr	r3, [pc, #36]	; (5170 <__libc_fini_array+0x28>)
    514c:	4c09      	ldr	r4, [pc, #36]	; (5174 <__libc_fini_array+0x2c>)
    514e:	1ae4      	subs	r4, r4, r3
    5150:	10a4      	asrs	r4, r4, #2
    5152:	d009      	beq.n	5168 <__libc_fini_array+0x20>
    5154:	4a08      	ldr	r2, [pc, #32]	; (5178 <__libc_fini_array+0x30>)
    5156:	18a5      	adds	r5, r4, r2
    5158:	00ad      	lsls	r5, r5, #2
    515a:	18ed      	adds	r5, r5, r3
    515c:	682b      	ldr	r3, [r5, #0]
    515e:	3c01      	subs	r4, #1
    5160:	4798      	blx	r3
    5162:	3d04      	subs	r5, #4
    5164:	2c00      	cmp	r4, #0
    5166:	d1f9      	bne.n	515c <__libc_fini_array+0x14>
    5168:	f7fb fe90 	bl	e8c <_fini>
    516c:	bd70      	pop	{r4, r5, r6, pc}
    516e:	46c0      	nop			; (mov r8, r8)
	...
    5178:	3fffffff 	.word	0x3fffffff

0000517c <__libc_init_array>:
    517c:	b570      	push	{r4, r5, r6, lr}
    517e:	4e0d      	ldr	r6, [pc, #52]	; (51b4 <__libc_init_array+0x38>)
    5180:	4d0d      	ldr	r5, [pc, #52]	; (51b8 <__libc_init_array+0x3c>)
    5182:	2400      	movs	r4, #0
    5184:	1bad      	subs	r5, r5, r6
    5186:	10ad      	asrs	r5, r5, #2
    5188:	d005      	beq.n	5196 <__libc_init_array+0x1a>
    518a:	00a3      	lsls	r3, r4, #2
    518c:	58f3      	ldr	r3, [r6, r3]
    518e:	3401      	adds	r4, #1
    5190:	4798      	blx	r3
    5192:	42a5      	cmp	r5, r4
    5194:	d1f9      	bne.n	518a <__libc_init_array+0xe>
    5196:	f7fb fe73 	bl	e80 <_init>
    519a:	4e08      	ldr	r6, [pc, #32]	; (51bc <__libc_init_array+0x40>)
    519c:	4d08      	ldr	r5, [pc, #32]	; (51c0 <__libc_init_array+0x44>)
    519e:	2400      	movs	r4, #0
    51a0:	1bad      	subs	r5, r5, r6
    51a2:	10ad      	asrs	r5, r5, #2
    51a4:	d005      	beq.n	51b2 <__libc_init_array+0x36>
    51a6:	00a3      	lsls	r3, r4, #2
    51a8:	58f3      	ldr	r3, [r6, r3]
    51aa:	3401      	adds	r4, #1
    51ac:	4798      	blx	r3
    51ae:	42a5      	cmp	r5, r4
    51b0:	d1f9      	bne.n	51a6 <__libc_init_array+0x2a>
    51b2:	bd70      	pop	{r4, r5, r6, pc}
	...

000051c4 <cleanup_glue>:
    51c4:	b570      	push	{r4, r5, r6, lr}
    51c6:	000c      	movs	r4, r1
    51c8:	6809      	ldr	r1, [r1, #0]
    51ca:	0005      	movs	r5, r0
    51cc:	2900      	cmp	r1, #0
    51ce:	d001      	beq.n	51d4 <cleanup_glue+0x10>
    51d0:	f7ff fff8 	bl	51c4 <cleanup_glue>
    51d4:	0028      	movs	r0, r5
    51d6:	0021      	movs	r1, r4
    51d8:	f000 f990 	bl	54fc <_free_r>
    51dc:	bd70      	pop	{r4, r5, r6, pc}
    51de:	46c0      	nop			; (mov r8, r8)

000051e0 <_reclaim_reent>:
    51e0:	4b23      	ldr	r3, [pc, #140]	; (5270 <_reclaim_reent+0x90>)
    51e2:	b570      	push	{r4, r5, r6, lr}
    51e4:	681b      	ldr	r3, [r3, #0]
    51e6:	0005      	movs	r5, r0
    51e8:	4283      	cmp	r3, r0
    51ea:	d034      	beq.n	5256 <_reclaim_reent+0x76>
    51ec:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    51ee:	2b00      	cmp	r3, #0
    51f0:	d011      	beq.n	5216 <_reclaim_reent+0x36>
    51f2:	2600      	movs	r6, #0
    51f4:	5999      	ldr	r1, [r3, r6]
    51f6:	2900      	cmp	r1, #0
    51f8:	d006      	beq.n	5208 <_reclaim_reent+0x28>
    51fa:	680c      	ldr	r4, [r1, #0]
    51fc:	0028      	movs	r0, r5
    51fe:	f000 f97d 	bl	54fc <_free_r>
    5202:	1e21      	subs	r1, r4, #0
    5204:	d1f9      	bne.n	51fa <_reclaim_reent+0x1a>
    5206:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    5208:	3604      	adds	r6, #4
    520a:	2e80      	cmp	r6, #128	; 0x80
    520c:	d1f2      	bne.n	51f4 <_reclaim_reent+0x14>
    520e:	0019      	movs	r1, r3
    5210:	0028      	movs	r0, r5
    5212:	f000 f973 	bl	54fc <_free_r>
    5216:	6c29      	ldr	r1, [r5, #64]	; 0x40
    5218:	2900      	cmp	r1, #0
    521a:	d002      	beq.n	5222 <_reclaim_reent+0x42>
    521c:	0028      	movs	r0, r5
    521e:	f000 f96d 	bl	54fc <_free_r>
    5222:	23a4      	movs	r3, #164	; 0xa4
    5224:	005b      	lsls	r3, r3, #1
    5226:	58e9      	ldr	r1, [r5, r3]
    5228:	2900      	cmp	r1, #0
    522a:	d00b      	beq.n	5244 <_reclaim_reent+0x64>
    522c:	002e      	movs	r6, r5
    522e:	364d      	adds	r6, #77	; 0x4d
    5230:	36ff      	adds	r6, #255	; 0xff
    5232:	42b1      	cmp	r1, r6
    5234:	d006      	beq.n	5244 <_reclaim_reent+0x64>
    5236:	680c      	ldr	r4, [r1, #0]
    5238:	0028      	movs	r0, r5
    523a:	f000 f95f 	bl	54fc <_free_r>
    523e:	0021      	movs	r1, r4
    5240:	42a6      	cmp	r6, r4
    5242:	d1f8      	bne.n	5236 <_reclaim_reent+0x56>
    5244:	6d69      	ldr	r1, [r5, #84]	; 0x54
    5246:	2900      	cmp	r1, #0
    5248:	d002      	beq.n	5250 <_reclaim_reent+0x70>
    524a:	0028      	movs	r0, r5
    524c:	f000 f956 	bl	54fc <_free_r>
    5250:	6bab      	ldr	r3, [r5, #56]	; 0x38
    5252:	2b00      	cmp	r3, #0
    5254:	d100      	bne.n	5258 <_reclaim_reent+0x78>
    5256:	bd70      	pop	{r4, r5, r6, pc}
    5258:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    525a:	0028      	movs	r0, r5
    525c:	4798      	blx	r3
    525e:	23b8      	movs	r3, #184	; 0xb8
    5260:	009b      	lsls	r3, r3, #2
    5262:	58e9      	ldr	r1, [r5, r3]
    5264:	2900      	cmp	r1, #0
    5266:	d0f6      	beq.n	5256 <_reclaim_reent+0x76>
    5268:	0028      	movs	r0, r5
    526a:	f7ff ffab 	bl	51c4 <cleanup_glue>
    526e:	e7f2      	b.n	5256 <_reclaim_reent+0x76>
    5270:	20000440 	.word	0x20000440

00005274 <__register_exitproc>:
    5274:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5276:	4644      	mov	r4, r8
    5278:	465f      	mov	r7, fp
    527a:	4656      	mov	r6, sl
    527c:	464d      	mov	r5, r9
    527e:	469b      	mov	fp, r3
    5280:	4b2f      	ldr	r3, [pc, #188]	; (5340 <__register_exitproc+0xcc>)
    5282:	b4f0      	push	{r4, r5, r6, r7}
    5284:	681c      	ldr	r4, [r3, #0]
    5286:	23a4      	movs	r3, #164	; 0xa4
    5288:	005b      	lsls	r3, r3, #1
    528a:	0005      	movs	r5, r0
    528c:	58e0      	ldr	r0, [r4, r3]
    528e:	000e      	movs	r6, r1
    5290:	4690      	mov	r8, r2
    5292:	2800      	cmp	r0, #0
    5294:	d04b      	beq.n	532e <__register_exitproc+0xba>
    5296:	6843      	ldr	r3, [r0, #4]
    5298:	2b1f      	cmp	r3, #31
    529a:	dc0d      	bgt.n	52b8 <__register_exitproc+0x44>
    529c:	1c5c      	adds	r4, r3, #1
    529e:	2d00      	cmp	r5, #0
    52a0:	d121      	bne.n	52e6 <__register_exitproc+0x72>
    52a2:	3302      	adds	r3, #2
    52a4:	009b      	lsls	r3, r3, #2
    52a6:	6044      	str	r4, [r0, #4]
    52a8:	501e      	str	r6, [r3, r0]
    52aa:	2000      	movs	r0, #0
    52ac:	bc3c      	pop	{r2, r3, r4, r5}
    52ae:	4690      	mov	r8, r2
    52b0:	4699      	mov	r9, r3
    52b2:	46a2      	mov	sl, r4
    52b4:	46ab      	mov	fp, r5
    52b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    52b8:	4b22      	ldr	r3, [pc, #136]	; (5344 <__register_exitproc+0xd0>)
    52ba:	2b00      	cmp	r3, #0
    52bc:	d03c      	beq.n	5338 <__register_exitproc+0xc4>
    52be:	20c8      	movs	r0, #200	; 0xc8
    52c0:	0040      	lsls	r0, r0, #1
    52c2:	e000      	b.n	52c6 <__register_exitproc+0x52>
    52c4:	bf00      	nop
    52c6:	2800      	cmp	r0, #0
    52c8:	d036      	beq.n	5338 <__register_exitproc+0xc4>
    52ca:	22a4      	movs	r2, #164	; 0xa4
    52cc:	2300      	movs	r3, #0
    52ce:	0052      	lsls	r2, r2, #1
    52d0:	58a1      	ldr	r1, [r4, r2]
    52d2:	6043      	str	r3, [r0, #4]
    52d4:	6001      	str	r1, [r0, #0]
    52d6:	50a0      	str	r0, [r4, r2]
    52d8:	3240      	adds	r2, #64	; 0x40
    52da:	5083      	str	r3, [r0, r2]
    52dc:	3204      	adds	r2, #4
    52de:	5083      	str	r3, [r0, r2]
    52e0:	2401      	movs	r4, #1
    52e2:	2d00      	cmp	r5, #0
    52e4:	d0dd      	beq.n	52a2 <__register_exitproc+0x2e>
    52e6:	009a      	lsls	r2, r3, #2
    52e8:	4691      	mov	r9, r2
    52ea:	4481      	add	r9, r0
    52ec:	4642      	mov	r2, r8
    52ee:	2188      	movs	r1, #136	; 0x88
    52f0:	464f      	mov	r7, r9
    52f2:	507a      	str	r2, [r7, r1]
    52f4:	22c4      	movs	r2, #196	; 0xc4
    52f6:	0052      	lsls	r2, r2, #1
    52f8:	4690      	mov	r8, r2
    52fa:	4480      	add	r8, r0
    52fc:	4642      	mov	r2, r8
    52fe:	3987      	subs	r1, #135	; 0x87
    5300:	4099      	lsls	r1, r3
    5302:	6812      	ldr	r2, [r2, #0]
    5304:	468a      	mov	sl, r1
    5306:	430a      	orrs	r2, r1
    5308:	4694      	mov	ip, r2
    530a:	4642      	mov	r2, r8
    530c:	4661      	mov	r1, ip
    530e:	6011      	str	r1, [r2, #0]
    5310:	2284      	movs	r2, #132	; 0x84
    5312:	4649      	mov	r1, r9
    5314:	465f      	mov	r7, fp
    5316:	0052      	lsls	r2, r2, #1
    5318:	508f      	str	r7, [r1, r2]
    531a:	2d02      	cmp	r5, #2
    531c:	d1c1      	bne.n	52a2 <__register_exitproc+0x2e>
    531e:	0002      	movs	r2, r0
    5320:	4655      	mov	r5, sl
    5322:	328d      	adds	r2, #141	; 0x8d
    5324:	32ff      	adds	r2, #255	; 0xff
    5326:	6811      	ldr	r1, [r2, #0]
    5328:	430d      	orrs	r5, r1
    532a:	6015      	str	r5, [r2, #0]
    532c:	e7b9      	b.n	52a2 <__register_exitproc+0x2e>
    532e:	0020      	movs	r0, r4
    5330:	304d      	adds	r0, #77	; 0x4d
    5332:	30ff      	adds	r0, #255	; 0xff
    5334:	50e0      	str	r0, [r4, r3]
    5336:	e7ae      	b.n	5296 <__register_exitproc+0x22>
    5338:	2001      	movs	r0, #1
    533a:	4240      	negs	r0, r0
    533c:	e7b6      	b.n	52ac <__register_exitproc+0x38>
    533e:	46c0      	nop			; (mov r8, r8)
    5340:	0000976c 	.word	0x0000976c
    5344:	00000000 	.word	0x00000000

00005348 <register_fini>:
    5348:	4b03      	ldr	r3, [pc, #12]	; (5358 <register_fini+0x10>)
    534a:	b510      	push	{r4, lr}
    534c:	2b00      	cmp	r3, #0
    534e:	d002      	beq.n	5356 <register_fini+0xe>
    5350:	4802      	ldr	r0, [pc, #8]	; (535c <register_fini+0x14>)
    5352:	f7ff fee1 	bl	5118 <atexit>
    5356:	bd10      	pop	{r4, pc}
    5358:	00000000 	.word	0x00000000
    535c:	00005149 	.word	0x00005149

00005360 <__call_exitprocs>:
    5360:	b5f0      	push	{r4, r5, r6, r7, lr}
    5362:	465f      	mov	r7, fp
    5364:	4656      	mov	r6, sl
    5366:	464d      	mov	r5, r9
    5368:	4644      	mov	r4, r8
    536a:	b4f0      	push	{r4, r5, r6, r7}
    536c:	000f      	movs	r7, r1
    536e:	4b39      	ldr	r3, [pc, #228]	; (5454 <__call_exitprocs+0xf4>)
    5370:	b085      	sub	sp, #20
    5372:	681b      	ldr	r3, [r3, #0]
    5374:	9001      	str	r0, [sp, #4]
    5376:	9302      	str	r3, [sp, #8]
    5378:	3349      	adds	r3, #73	; 0x49
    537a:	33ff      	adds	r3, #255	; 0xff
    537c:	9303      	str	r3, [sp, #12]
    537e:	22a4      	movs	r2, #164	; 0xa4
    5380:	9b02      	ldr	r3, [sp, #8]
    5382:	0052      	lsls	r2, r2, #1
    5384:	589e      	ldr	r6, [r3, r2]
    5386:	2e00      	cmp	r6, #0
    5388:	d04e      	beq.n	5428 <__call_exitprocs+0xc8>
    538a:	9b03      	ldr	r3, [sp, #12]
    538c:	4699      	mov	r9, r3
    538e:	23c4      	movs	r3, #196	; 0xc4
    5390:	005b      	lsls	r3, r3, #1
    5392:	4698      	mov	r8, r3
    5394:	3304      	adds	r3, #4
    5396:	469a      	mov	sl, r3
    5398:	6874      	ldr	r4, [r6, #4]
    539a:	44b0      	add	r8, r6
    539c:	00a5      	lsls	r5, r4, #2
    539e:	1975      	adds	r5, r6, r5
    53a0:	44b2      	add	sl, r6
    53a2:	3c01      	subs	r4, #1
    53a4:	d508      	bpl.n	53b8 <__call_exitprocs+0x58>
    53a6:	e02d      	b.n	5404 <__call_exitprocs+0xa4>
    53a8:	1d6b      	adds	r3, r5, #5
    53aa:	33ff      	adds	r3, #255	; 0xff
    53ac:	681b      	ldr	r3, [r3, #0]
    53ae:	429f      	cmp	r7, r3
    53b0:	d004      	beq.n	53bc <__call_exitprocs+0x5c>
    53b2:	3d04      	subs	r5, #4
    53b4:	3c01      	subs	r4, #1
    53b6:	d325      	bcc.n	5404 <__call_exitprocs+0xa4>
    53b8:	2f00      	cmp	r7, #0
    53ba:	d1f5      	bne.n	53a8 <__call_exitprocs+0x48>
    53bc:	6873      	ldr	r3, [r6, #4]
    53be:	686a      	ldr	r2, [r5, #4]
    53c0:	3b01      	subs	r3, #1
    53c2:	42a3      	cmp	r3, r4
    53c4:	d039      	beq.n	543a <__call_exitprocs+0xda>
    53c6:	2300      	movs	r3, #0
    53c8:	606b      	str	r3, [r5, #4]
    53ca:	2a00      	cmp	r2, #0
    53cc:	d0f1      	beq.n	53b2 <__call_exitprocs+0x52>
    53ce:	6873      	ldr	r3, [r6, #4]
    53d0:	4641      	mov	r1, r8
    53d2:	469b      	mov	fp, r3
    53d4:	2301      	movs	r3, #1
    53d6:	40a3      	lsls	r3, r4
    53d8:	6809      	ldr	r1, [r1, #0]
    53da:	4219      	tst	r1, r3
    53dc:	d02b      	beq.n	5436 <__call_exitprocs+0xd6>
    53de:	4651      	mov	r1, sl
    53e0:	6809      	ldr	r1, [r1, #0]
    53e2:	4219      	tst	r1, r3
    53e4:	d12b      	bne.n	543e <__call_exitprocs+0xde>
    53e6:	002b      	movs	r3, r5
    53e8:	3384      	adds	r3, #132	; 0x84
    53ea:	6819      	ldr	r1, [r3, #0]
    53ec:	9801      	ldr	r0, [sp, #4]
    53ee:	4790      	blx	r2
    53f0:	6873      	ldr	r3, [r6, #4]
    53f2:	455b      	cmp	r3, fp
    53f4:	d1c3      	bne.n	537e <__call_exitprocs+0x1e>
    53f6:	464b      	mov	r3, r9
    53f8:	681b      	ldr	r3, [r3, #0]
    53fa:	42b3      	cmp	r3, r6
    53fc:	d1bf      	bne.n	537e <__call_exitprocs+0x1e>
    53fe:	3d04      	subs	r5, #4
    5400:	3c01      	subs	r4, #1
    5402:	d2d9      	bcs.n	53b8 <__call_exitprocs+0x58>
    5404:	4b14      	ldr	r3, [pc, #80]	; (5458 <__call_exitprocs+0xf8>)
    5406:	2b00      	cmp	r3, #0
    5408:	d00e      	beq.n	5428 <__call_exitprocs+0xc8>
    540a:	6873      	ldr	r3, [r6, #4]
    540c:	2b00      	cmp	r3, #0
    540e:	d11b      	bne.n	5448 <__call_exitprocs+0xe8>
    5410:	6833      	ldr	r3, [r6, #0]
    5412:	2b00      	cmp	r3, #0
    5414:	d01c      	beq.n	5450 <__call_exitprocs+0xf0>
    5416:	464a      	mov	r2, r9
    5418:	0030      	movs	r0, r6
    541a:	6013      	str	r3, [r2, #0]
    541c:	e000      	b.n	5420 <__call_exitprocs+0xc0>
    541e:	bf00      	nop
    5420:	464b      	mov	r3, r9
    5422:	681e      	ldr	r6, [r3, #0]
    5424:	2e00      	cmp	r6, #0
    5426:	d1b2      	bne.n	538e <__call_exitprocs+0x2e>
    5428:	b005      	add	sp, #20
    542a:	bc3c      	pop	{r2, r3, r4, r5}
    542c:	4690      	mov	r8, r2
    542e:	4699      	mov	r9, r3
    5430:	46a2      	mov	sl, r4
    5432:	46ab      	mov	fp, r5
    5434:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5436:	4790      	blx	r2
    5438:	e7da      	b.n	53f0 <__call_exitprocs+0x90>
    543a:	6074      	str	r4, [r6, #4]
    543c:	e7c5      	b.n	53ca <__call_exitprocs+0x6a>
    543e:	002b      	movs	r3, r5
    5440:	3384      	adds	r3, #132	; 0x84
    5442:	6818      	ldr	r0, [r3, #0]
    5444:	4790      	blx	r2
    5446:	e7d3      	b.n	53f0 <__call_exitprocs+0x90>
    5448:	6833      	ldr	r3, [r6, #0]
    544a:	46b1      	mov	r9, r6
    544c:	001e      	movs	r6, r3
    544e:	e7e9      	b.n	5424 <__call_exitprocs+0xc4>
    5450:	2300      	movs	r3, #0
    5452:	e7fa      	b.n	544a <__call_exitprocs+0xea>
    5454:	0000976c 	.word	0x0000976c
    5458:	00000000 	.word	0x00000000

0000545c <_malloc_trim_r>:
    545c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    545e:	000c      	movs	r4, r1
    5460:	0006      	movs	r6, r0
    5462:	f000 fbd7 	bl	5c14 <__malloc_lock>
    5466:	4f20      	ldr	r7, [pc, #128]	; (54e8 <_malloc_trim_r+0x8c>)
    5468:	68bb      	ldr	r3, [r7, #8]
    546a:	685d      	ldr	r5, [r3, #4]
    546c:	2303      	movs	r3, #3
    546e:	439d      	bics	r5, r3
    5470:	4b1e      	ldr	r3, [pc, #120]	; (54ec <_malloc_trim_r+0x90>)
    5472:	1b2c      	subs	r4, r5, r4
    5474:	469c      	mov	ip, r3
    5476:	4464      	add	r4, ip
    5478:	0b24      	lsrs	r4, r4, #12
    547a:	4b1d      	ldr	r3, [pc, #116]	; (54f0 <_malloc_trim_r+0x94>)
    547c:	3c01      	subs	r4, #1
    547e:	0324      	lsls	r4, r4, #12
    5480:	429c      	cmp	r4, r3
    5482:	dd07      	ble.n	5494 <_malloc_trim_r+0x38>
    5484:	2100      	movs	r1, #0
    5486:	0030      	movs	r0, r6
    5488:	f000 fbc8 	bl	5c1c <_sbrk_r>
    548c:	68bb      	ldr	r3, [r7, #8]
    548e:	195b      	adds	r3, r3, r5
    5490:	4298      	cmp	r0, r3
    5492:	d004      	beq.n	549e <_malloc_trim_r+0x42>
    5494:	0030      	movs	r0, r6
    5496:	f000 fbbf 	bl	5c18 <__malloc_unlock>
    549a:	2000      	movs	r0, #0
    549c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    549e:	4261      	negs	r1, r4
    54a0:	0030      	movs	r0, r6
    54a2:	f000 fbbb 	bl	5c1c <_sbrk_r>
    54a6:	1c43      	adds	r3, r0, #1
    54a8:	d00d      	beq.n	54c6 <_malloc_trim_r+0x6a>
    54aa:	2301      	movs	r3, #1
    54ac:	1b2d      	subs	r5, r5, r4
    54ae:	68ba      	ldr	r2, [r7, #8]
    54b0:	431d      	orrs	r5, r3
    54b2:	4b10      	ldr	r3, [pc, #64]	; (54f4 <_malloc_trim_r+0x98>)
    54b4:	6055      	str	r5, [r2, #4]
    54b6:	681a      	ldr	r2, [r3, #0]
    54b8:	0030      	movs	r0, r6
    54ba:	1b14      	subs	r4, r2, r4
    54bc:	601c      	str	r4, [r3, #0]
    54be:	f000 fbab 	bl	5c18 <__malloc_unlock>
    54c2:	2001      	movs	r0, #1
    54c4:	e7ea      	b.n	549c <_malloc_trim_r+0x40>
    54c6:	2100      	movs	r1, #0
    54c8:	0030      	movs	r0, r6
    54ca:	f000 fba7 	bl	5c1c <_sbrk_r>
    54ce:	68bb      	ldr	r3, [r7, #8]
    54d0:	1ac2      	subs	r2, r0, r3
    54d2:	2a0f      	cmp	r2, #15
    54d4:	ddde      	ble.n	5494 <_malloc_trim_r+0x38>
    54d6:	4908      	ldr	r1, [pc, #32]	; (54f8 <_malloc_trim_r+0x9c>)
    54d8:	6809      	ldr	r1, [r1, #0]
    54da:	1a40      	subs	r0, r0, r1
    54dc:	4905      	ldr	r1, [pc, #20]	; (54f4 <_malloc_trim_r+0x98>)
    54de:	6008      	str	r0, [r1, #0]
    54e0:	2101      	movs	r1, #1
    54e2:	430a      	orrs	r2, r1
    54e4:	605a      	str	r2, [r3, #4]
    54e6:	e7d5      	b.n	5494 <_malloc_trim_r+0x38>
    54e8:	20000444 	.word	0x20000444
    54ec:	00000fef 	.word	0x00000fef
    54f0:	00000fff 	.word	0x00000fff
    54f4:	20006054 	.word	0x20006054
    54f8:	20000850 	.word	0x20000850

000054fc <_free_r>:
    54fc:	b5f0      	push	{r4, r5, r6, r7, lr}
    54fe:	4647      	mov	r7, r8
    5500:	0005      	movs	r5, r0
    5502:	b480      	push	{r7}
    5504:	1e0c      	subs	r4, r1, #0
    5506:	d03e      	beq.n	5586 <_free_r+0x8a>
    5508:	f000 fb84 	bl	5c14 <__malloc_lock>
    550c:	2301      	movs	r3, #1
    550e:	0021      	movs	r1, r4
    5510:	4698      	mov	r8, r3
    5512:	3908      	subs	r1, #8
    5514:	684e      	ldr	r6, [r1, #4]
    5516:	4642      	mov	r2, r8
    5518:	0033      	movs	r3, r6
    551a:	2003      	movs	r0, #3
    551c:	4393      	bics	r3, r2
    551e:	18cc      	adds	r4, r1, r3
    5520:	6862      	ldr	r2, [r4, #4]
    5522:	4382      	bics	r2, r0
    5524:	4860      	ldr	r0, [pc, #384]	; (56a8 <_free_r+0x1ac>)
    5526:	6887      	ldr	r7, [r0, #8]
    5528:	42bc      	cmp	r4, r7
    552a:	d05a      	beq.n	55e2 <_free_r+0xe6>
    552c:	4647      	mov	r7, r8
    552e:	6062      	str	r2, [r4, #4]
    5530:	4237      	tst	r7, r6
    5532:	d10b      	bne.n	554c <_free_r+0x50>
    5534:	2708      	movs	r7, #8
    5536:	46bc      	mov	ip, r7
    5538:	680e      	ldr	r6, [r1, #0]
    553a:	4484      	add	ip, r0
    553c:	1b89      	subs	r1, r1, r6
    553e:	199b      	adds	r3, r3, r6
    5540:	688e      	ldr	r6, [r1, #8]
    5542:	4566      	cmp	r6, ip
    5544:	d066      	beq.n	5614 <_free_r+0x118>
    5546:	68cf      	ldr	r7, [r1, #12]
    5548:	60f7      	str	r7, [r6, #12]
    554a:	60be      	str	r6, [r7, #8]
    554c:	2601      	movs	r6, #1
    554e:	18a7      	adds	r7, r4, r2
    5550:	687f      	ldr	r7, [r7, #4]
    5552:	4237      	tst	r7, r6
    5554:	d036      	beq.n	55c4 <_free_r+0xc8>
    5556:	4a55      	ldr	r2, [pc, #340]	; (56ac <_free_r+0x1b0>)
    5558:	431e      	orrs	r6, r3
    555a:	604e      	str	r6, [r1, #4]
    555c:	50cb      	str	r3, [r1, r3]
    555e:	4293      	cmp	r3, r2
    5560:	d814      	bhi.n	558c <_free_r+0x90>
    5562:	08db      	lsrs	r3, r3, #3
    5564:	3aff      	subs	r2, #255	; 0xff
    5566:	109c      	asrs	r4, r3, #2
    5568:	3aff      	subs	r2, #255	; 0xff
    556a:	40a2      	lsls	r2, r4
    556c:	6844      	ldr	r4, [r0, #4]
    556e:	00db      	lsls	r3, r3, #3
    5570:	4322      	orrs	r2, r4
    5572:	6042      	str	r2, [r0, #4]
    5574:	1818      	adds	r0, r3, r0
    5576:	6883      	ldr	r3, [r0, #8]
    5578:	60c8      	str	r0, [r1, #12]
    557a:	608b      	str	r3, [r1, #8]
    557c:	6081      	str	r1, [r0, #8]
    557e:	60d9      	str	r1, [r3, #12]
    5580:	0028      	movs	r0, r5
    5582:	f000 fb49 	bl	5c18 <__malloc_unlock>
    5586:	bc04      	pop	{r2}
    5588:	4690      	mov	r8, r2
    558a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    558c:	0a5a      	lsrs	r2, r3, #9
    558e:	2a04      	cmp	r2, #4
    5590:	d84f      	bhi.n	5632 <_free_r+0x136>
    5592:	099c      	lsrs	r4, r3, #6
    5594:	0026      	movs	r6, r4
    5596:	3439      	adds	r4, #57	; 0x39
    5598:	3638      	adds	r6, #56	; 0x38
    559a:	0064      	lsls	r4, r4, #1
    559c:	00a4      	lsls	r4, r4, #2
    559e:	1904      	adds	r4, r0, r4
    55a0:	3c08      	subs	r4, #8
    55a2:	68a2      	ldr	r2, [r4, #8]
    55a4:	2703      	movs	r7, #3
    55a6:	4294      	cmp	r4, r2
    55a8:	d04a      	beq.n	5640 <_free_r+0x144>
    55aa:	6850      	ldr	r0, [r2, #4]
    55ac:	43b8      	bics	r0, r7
    55ae:	4283      	cmp	r3, r0
    55b0:	d202      	bcs.n	55b8 <_free_r+0xbc>
    55b2:	6892      	ldr	r2, [r2, #8]
    55b4:	4294      	cmp	r4, r2
    55b6:	d1f8      	bne.n	55aa <_free_r+0xae>
    55b8:	68d4      	ldr	r4, [r2, #12]
    55ba:	60cc      	str	r4, [r1, #12]
    55bc:	608a      	str	r2, [r1, #8]
    55be:	60a1      	str	r1, [r4, #8]
    55c0:	60d1      	str	r1, [r2, #12]
    55c2:	e7dd      	b.n	5580 <_free_r+0x84>
    55c4:	189b      	adds	r3, r3, r2
    55c6:	4f3a      	ldr	r7, [pc, #232]	; (56b0 <_free_r+0x1b4>)
    55c8:	68a2      	ldr	r2, [r4, #8]
    55ca:	42ba      	cmp	r2, r7
    55cc:	d040      	beq.n	5650 <_free_r+0x154>
    55ce:	68e4      	ldr	r4, [r4, #12]
    55d0:	431e      	orrs	r6, r3
    55d2:	60d4      	str	r4, [r2, #12]
    55d4:	60a2      	str	r2, [r4, #8]
    55d6:	4a35      	ldr	r2, [pc, #212]	; (56ac <_free_r+0x1b0>)
    55d8:	604e      	str	r6, [r1, #4]
    55da:	50cb      	str	r3, [r1, r3]
    55dc:	4293      	cmp	r3, r2
    55de:	d8d5      	bhi.n	558c <_free_r+0x90>
    55e0:	e7bf      	b.n	5562 <_free_r+0x66>
    55e2:	189b      	adds	r3, r3, r2
    55e4:	4642      	mov	r2, r8
    55e6:	4232      	tst	r2, r6
    55e8:	d106      	bne.n	55f8 <_free_r+0xfc>
    55ea:	680a      	ldr	r2, [r1, #0]
    55ec:	1a89      	subs	r1, r1, r2
    55ee:	688c      	ldr	r4, [r1, #8]
    55f0:	189b      	adds	r3, r3, r2
    55f2:	68ca      	ldr	r2, [r1, #12]
    55f4:	60e2      	str	r2, [r4, #12]
    55f6:	6094      	str	r4, [r2, #8]
    55f8:	2401      	movs	r4, #1
    55fa:	4a2e      	ldr	r2, [pc, #184]	; (56b4 <_free_r+0x1b8>)
    55fc:	431c      	orrs	r4, r3
    55fe:	6812      	ldr	r2, [r2, #0]
    5600:	604c      	str	r4, [r1, #4]
    5602:	6081      	str	r1, [r0, #8]
    5604:	4293      	cmp	r3, r2
    5606:	d3bb      	bcc.n	5580 <_free_r+0x84>
    5608:	4b2b      	ldr	r3, [pc, #172]	; (56b8 <_free_r+0x1bc>)
    560a:	0028      	movs	r0, r5
    560c:	6819      	ldr	r1, [r3, #0]
    560e:	f7ff ff25 	bl	545c <_malloc_trim_r>
    5612:	e7b5      	b.n	5580 <_free_r+0x84>
    5614:	4646      	mov	r6, r8
    5616:	18a0      	adds	r0, r4, r2
    5618:	6840      	ldr	r0, [r0, #4]
    561a:	4230      	tst	r0, r6
    561c:	d13e      	bne.n	569c <_free_r+0x1a0>
    561e:	68a0      	ldr	r0, [r4, #8]
    5620:	18d3      	adds	r3, r2, r3
    5622:	68e2      	ldr	r2, [r4, #12]
    5624:	60c2      	str	r2, [r0, #12]
    5626:	6090      	str	r0, [r2, #8]
    5628:	4642      	mov	r2, r8
    562a:	431a      	orrs	r2, r3
    562c:	604a      	str	r2, [r1, #4]
    562e:	50cb      	str	r3, [r1, r3]
    5630:	e7a6      	b.n	5580 <_free_r+0x84>
    5632:	2a14      	cmp	r2, #20
    5634:	d814      	bhi.n	5660 <_free_r+0x164>
    5636:	0016      	movs	r6, r2
    5638:	325c      	adds	r2, #92	; 0x5c
    563a:	365b      	adds	r6, #91	; 0x5b
    563c:	0054      	lsls	r4, r2, #1
    563e:	e7ad      	b.n	559c <_free_r+0xa0>
    5640:	2301      	movs	r3, #1
    5642:	10b6      	asrs	r6, r6, #2
    5644:	40b3      	lsls	r3, r6
    5646:	6842      	ldr	r2, [r0, #4]
    5648:	4313      	orrs	r3, r2
    564a:	6043      	str	r3, [r0, #4]
    564c:	0022      	movs	r2, r4
    564e:	e7b4      	b.n	55ba <_free_r+0xbe>
    5650:	431e      	orrs	r6, r3
    5652:	60d1      	str	r1, [r2, #12]
    5654:	6091      	str	r1, [r2, #8]
    5656:	60ca      	str	r2, [r1, #12]
    5658:	608a      	str	r2, [r1, #8]
    565a:	604e      	str	r6, [r1, #4]
    565c:	50cb      	str	r3, [r1, r3]
    565e:	e78f      	b.n	5580 <_free_r+0x84>
    5660:	2a54      	cmp	r2, #84	; 0x54
    5662:	d805      	bhi.n	5670 <_free_r+0x174>
    5664:	0b1c      	lsrs	r4, r3, #12
    5666:	0026      	movs	r6, r4
    5668:	346f      	adds	r4, #111	; 0x6f
    566a:	366e      	adds	r6, #110	; 0x6e
    566c:	0064      	lsls	r4, r4, #1
    566e:	e795      	b.n	559c <_free_r+0xa0>
    5670:	24aa      	movs	r4, #170	; 0xaa
    5672:	0064      	lsls	r4, r4, #1
    5674:	42a2      	cmp	r2, r4
    5676:	d805      	bhi.n	5684 <_free_r+0x188>
    5678:	0bdc      	lsrs	r4, r3, #15
    567a:	0026      	movs	r6, r4
    567c:	3478      	adds	r4, #120	; 0x78
    567e:	3677      	adds	r6, #119	; 0x77
    5680:	0064      	lsls	r4, r4, #1
    5682:	e78b      	b.n	559c <_free_r+0xa0>
    5684:	4c0d      	ldr	r4, [pc, #52]	; (56bc <_free_r+0x1c0>)
    5686:	42a2      	cmp	r2, r4
    5688:	d805      	bhi.n	5696 <_free_r+0x19a>
    568a:	0c9c      	lsrs	r4, r3, #18
    568c:	0026      	movs	r6, r4
    568e:	347d      	adds	r4, #125	; 0x7d
    5690:	367c      	adds	r6, #124	; 0x7c
    5692:	0064      	lsls	r4, r4, #1
    5694:	e782      	b.n	559c <_free_r+0xa0>
    5696:	24fe      	movs	r4, #254	; 0xfe
    5698:	267e      	movs	r6, #126	; 0x7e
    569a:	e77f      	b.n	559c <_free_r+0xa0>
    569c:	4642      	mov	r2, r8
    569e:	431a      	orrs	r2, r3
    56a0:	604a      	str	r2, [r1, #4]
    56a2:	50cb      	str	r3, [r1, r3]
    56a4:	e76c      	b.n	5580 <_free_r+0x84>
    56a6:	46c0      	nop			; (mov r8, r8)
    56a8:	20000444 	.word	0x20000444
    56ac:	000001ff 	.word	0x000001ff
    56b0:	2000044c 	.word	0x2000044c
    56b4:	2000084c 	.word	0x2000084c
    56b8:	20006050 	.word	0x20006050
    56bc:	00000554 	.word	0x00000554

000056c0 <_malloc_r>:
    56c0:	b5f0      	push	{r4, r5, r6, r7, lr}
    56c2:	465f      	mov	r7, fp
    56c4:	464d      	mov	r5, r9
    56c6:	4656      	mov	r6, sl
    56c8:	4644      	mov	r4, r8
    56ca:	b4f0      	push	{r4, r5, r6, r7}
    56cc:	000d      	movs	r5, r1
    56ce:	350b      	adds	r5, #11
    56d0:	b083      	sub	sp, #12
    56d2:	0007      	movs	r7, r0
    56d4:	2d16      	cmp	r5, #22
    56d6:	d800      	bhi.n	56da <_malloc_r+0x1a>
    56d8:	e0a8      	b.n	582c <_malloc_r+0x16c>
    56da:	2307      	movs	r3, #7
    56dc:	439d      	bics	r5, r3
    56de:	d500      	bpl.n	56e2 <_malloc_r+0x22>
    56e0:	e0ce      	b.n	5880 <_malloc_r+0x1c0>
    56e2:	42a9      	cmp	r1, r5
    56e4:	d900      	bls.n	56e8 <_malloc_r+0x28>
    56e6:	e0cb      	b.n	5880 <_malloc_r+0x1c0>
    56e8:	f000 fa94 	bl	5c14 <__malloc_lock>
    56ec:	23f8      	movs	r3, #248	; 0xf8
    56ee:	33ff      	adds	r3, #255	; 0xff
    56f0:	429d      	cmp	r5, r3
    56f2:	d800      	bhi.n	56f6 <_malloc_r+0x36>
    56f4:	e284      	b.n	5c00 <_malloc_r+0x540>
    56f6:	0a6b      	lsrs	r3, r5, #9
    56f8:	d100      	bne.n	56fc <_malloc_r+0x3c>
    56fa:	e0c5      	b.n	5888 <_malloc_r+0x1c8>
    56fc:	2b04      	cmp	r3, #4
    56fe:	d900      	bls.n	5702 <_malloc_r+0x42>
    5700:	e16c      	b.n	59dc <_malloc_r+0x31c>
    5702:	2338      	movs	r3, #56	; 0x38
    5704:	09a9      	lsrs	r1, r5, #6
    5706:	469c      	mov	ip, r3
    5708:	3301      	adds	r3, #1
    570a:	4698      	mov	r8, r3
    570c:	4488      	add	r8, r1
    570e:	4643      	mov	r3, r8
    5710:	448c      	add	ip, r1
    5712:	0059      	lsls	r1, r3, #1
    5714:	4ec9      	ldr	r6, [pc, #804]	; (5a3c <_malloc_r+0x37c>)
    5716:	0089      	lsls	r1, r1, #2
    5718:	1871      	adds	r1, r6, r1
    571a:	3908      	subs	r1, #8
    571c:	68cc      	ldr	r4, [r1, #12]
    571e:	42a1      	cmp	r1, r4
    5720:	d017      	beq.n	5752 <_malloc_r+0x92>
    5722:	2303      	movs	r3, #3
    5724:	6862      	ldr	r2, [r4, #4]
    5726:	439a      	bics	r2, r3
    5728:	0013      	movs	r3, r2
    572a:	1b52      	subs	r2, r2, r5
    572c:	2a0f      	cmp	r2, #15
    572e:	dd00      	ble.n	5732 <_malloc_r+0x72>
    5730:	e0b0      	b.n	5894 <_malloc_r+0x1d4>
    5732:	2003      	movs	r0, #3
    5734:	2a00      	cmp	r2, #0
    5736:	db09      	blt.n	574c <_malloc_r+0x8c>
    5738:	e08d      	b.n	5856 <_malloc_r+0x196>
    573a:	6863      	ldr	r3, [r4, #4]
    573c:	4383      	bics	r3, r0
    573e:	1b5a      	subs	r2, r3, r5
    5740:	2a0f      	cmp	r2, #15
    5742:	dd00      	ble.n	5746 <_malloc_r+0x86>
    5744:	e0a6      	b.n	5894 <_malloc_r+0x1d4>
    5746:	2a00      	cmp	r2, #0
    5748:	db00      	blt.n	574c <_malloc_r+0x8c>
    574a:	e084      	b.n	5856 <_malloc_r+0x196>
    574c:	68e4      	ldr	r4, [r4, #12]
    574e:	42a1      	cmp	r1, r4
    5750:	d1f3      	bne.n	573a <_malloc_r+0x7a>
    5752:	4643      	mov	r3, r8
    5754:	9300      	str	r3, [sp, #0]
    5756:	0032      	movs	r2, r6
    5758:	6934      	ldr	r4, [r6, #16]
    575a:	3208      	adds	r2, #8
    575c:	4294      	cmp	r4, r2
    575e:	d100      	bne.n	5762 <_malloc_r+0xa2>
    5760:	e18f      	b.n	5a82 <_malloc_r+0x3c2>
    5762:	2303      	movs	r3, #3
    5764:	6861      	ldr	r1, [r4, #4]
    5766:	4399      	bics	r1, r3
    5768:	000b      	movs	r3, r1
    576a:	1b48      	subs	r0, r1, r5
    576c:	280f      	cmp	r0, #15
    576e:	dd00      	ble.n	5772 <_malloc_r+0xb2>
    5770:	e176      	b.n	5a60 <_malloc_r+0x3a0>
    5772:	6172      	str	r2, [r6, #20]
    5774:	6132      	str	r2, [r6, #16]
    5776:	2800      	cmp	r0, #0
    5778:	da71      	bge.n	585e <_malloc_r+0x19e>
    577a:	4ab1      	ldr	r2, [pc, #708]	; (5a40 <_malloc_r+0x380>)
    577c:	4291      	cmp	r1, r2
    577e:	d900      	bls.n	5782 <_malloc_r+0xc2>
    5780:	e134      	b.n	59ec <_malloc_r+0x32c>
    5782:	2301      	movs	r3, #1
    5784:	08c8      	lsrs	r0, r1, #3
    5786:	1082      	asrs	r2, r0, #2
    5788:	4093      	lsls	r3, r2
    578a:	6872      	ldr	r2, [r6, #4]
    578c:	431a      	orrs	r2, r3
    578e:	00c3      	lsls	r3, r0, #3
    5790:	199b      	adds	r3, r3, r6
    5792:	6898      	ldr	r0, [r3, #8]
    5794:	6072      	str	r2, [r6, #4]
    5796:	60e3      	str	r3, [r4, #12]
    5798:	60a0      	str	r0, [r4, #8]
    579a:	609c      	str	r4, [r3, #8]
    579c:	0013      	movs	r3, r2
    579e:	60c4      	str	r4, [r0, #12]
    57a0:	2001      	movs	r0, #1
    57a2:	9900      	ldr	r1, [sp, #0]
    57a4:	108a      	asrs	r2, r1, #2
    57a6:	4090      	lsls	r0, r2
    57a8:	4298      	cmp	r0, r3
    57aa:	d900      	bls.n	57ae <_malloc_r+0xee>
    57ac:	e075      	b.n	589a <_malloc_r+0x1da>
    57ae:	4203      	tst	r3, r0
    57b0:	d10c      	bne.n	57cc <_malloc_r+0x10c>
    57b2:	2203      	movs	r2, #3
    57b4:	4391      	bics	r1, r2
    57b6:	1d0a      	adds	r2, r1, #4
    57b8:	0040      	lsls	r0, r0, #1
    57ba:	9200      	str	r2, [sp, #0]
    57bc:	4203      	tst	r3, r0
    57be:	d105      	bne.n	57cc <_malloc_r+0x10c>
    57c0:	9a00      	ldr	r2, [sp, #0]
    57c2:	0040      	lsls	r0, r0, #1
    57c4:	3204      	adds	r2, #4
    57c6:	9200      	str	r2, [sp, #0]
    57c8:	4203      	tst	r3, r0
    57ca:	d0f9      	beq.n	57c0 <_malloc_r+0x100>
    57cc:	2303      	movs	r3, #3
    57ce:	4698      	mov	r8, r3
    57d0:	9a00      	ldr	r2, [sp, #0]
    57d2:	00d3      	lsls	r3, r2, #3
    57d4:	4699      	mov	r9, r3
    57d6:	44b1      	add	r9, r6
    57d8:	46cc      	mov	ip, r9
    57da:	4692      	mov	sl, r2
    57dc:	4663      	mov	r3, ip
    57de:	68dc      	ldr	r4, [r3, #12]
    57e0:	45a4      	cmp	ip, r4
    57e2:	d107      	bne.n	57f4 <_malloc_r+0x134>
    57e4:	e14f      	b.n	5a86 <_malloc_r+0x3c6>
    57e6:	2a00      	cmp	r2, #0
    57e8:	db00      	blt.n	57ec <_malloc_r+0x12c>
    57ea:	e15f      	b.n	5aac <_malloc_r+0x3ec>
    57ec:	68e4      	ldr	r4, [r4, #12]
    57ee:	45a4      	cmp	ip, r4
    57f0:	d100      	bne.n	57f4 <_malloc_r+0x134>
    57f2:	e148      	b.n	5a86 <_malloc_r+0x3c6>
    57f4:	4642      	mov	r2, r8
    57f6:	6863      	ldr	r3, [r4, #4]
    57f8:	4393      	bics	r3, r2
    57fa:	1b5a      	subs	r2, r3, r5
    57fc:	2a0f      	cmp	r2, #15
    57fe:	ddf2      	ble.n	57e6 <_malloc_r+0x126>
    5800:	2101      	movs	r1, #1
    5802:	1963      	adds	r3, r4, r5
    5804:	430d      	orrs	r5, r1
    5806:	6065      	str	r5, [r4, #4]
    5808:	68e0      	ldr	r0, [r4, #12]
    580a:	68a5      	ldr	r5, [r4, #8]
    580c:	3608      	adds	r6, #8
    580e:	60e8      	str	r0, [r5, #12]
    5810:	4311      	orrs	r1, r2
    5812:	6085      	str	r5, [r0, #8]
    5814:	60f3      	str	r3, [r6, #12]
    5816:	60b3      	str	r3, [r6, #8]
    5818:	0038      	movs	r0, r7
    581a:	60de      	str	r6, [r3, #12]
    581c:	609e      	str	r6, [r3, #8]
    581e:	6059      	str	r1, [r3, #4]
    5820:	509a      	str	r2, [r3, r2]
    5822:	f000 f9f9 	bl	5c18 <__malloc_unlock>
    5826:	0020      	movs	r0, r4
    5828:	3008      	adds	r0, #8
    582a:	e022      	b.n	5872 <_malloc_r+0x1b2>
    582c:	2910      	cmp	r1, #16
    582e:	d827      	bhi.n	5880 <_malloc_r+0x1c0>
    5830:	0038      	movs	r0, r7
    5832:	f000 f9ef 	bl	5c14 <__malloc_lock>
    5836:	2510      	movs	r5, #16
    5838:	2306      	movs	r3, #6
    583a:	2102      	movs	r1, #2
    583c:	4e7f      	ldr	r6, [pc, #508]	; (5a3c <_malloc_r+0x37c>)
    583e:	009b      	lsls	r3, r3, #2
    5840:	18f3      	adds	r3, r6, r3
    5842:	001a      	movs	r2, r3
    5844:	685c      	ldr	r4, [r3, #4]
    5846:	3a08      	subs	r2, #8
    5848:	4294      	cmp	r4, r2
    584a:	d100      	bne.n	584e <_malloc_r+0x18e>
    584c:	e127      	b.n	5a9e <_malloc_r+0x3de>
    584e:	2303      	movs	r3, #3
    5850:	6862      	ldr	r2, [r4, #4]
    5852:	439a      	bics	r2, r3
    5854:	0013      	movs	r3, r2
    5856:	68e2      	ldr	r2, [r4, #12]
    5858:	68a1      	ldr	r1, [r4, #8]
    585a:	60ca      	str	r2, [r1, #12]
    585c:	6091      	str	r1, [r2, #8]
    585e:	2201      	movs	r2, #1
    5860:	18e3      	adds	r3, r4, r3
    5862:	6859      	ldr	r1, [r3, #4]
    5864:	0038      	movs	r0, r7
    5866:	430a      	orrs	r2, r1
    5868:	605a      	str	r2, [r3, #4]
    586a:	f000 f9d5 	bl	5c18 <__malloc_unlock>
    586e:	0020      	movs	r0, r4
    5870:	3008      	adds	r0, #8
    5872:	b003      	add	sp, #12
    5874:	bc3c      	pop	{r2, r3, r4, r5}
    5876:	4690      	mov	r8, r2
    5878:	4699      	mov	r9, r3
    587a:	46a2      	mov	sl, r4
    587c:	46ab      	mov	fp, r5
    587e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5880:	230c      	movs	r3, #12
    5882:	2000      	movs	r0, #0
    5884:	603b      	str	r3, [r7, #0]
    5886:	e7f4      	b.n	5872 <_malloc_r+0x1b2>
    5888:	2340      	movs	r3, #64	; 0x40
    588a:	4698      	mov	r8, r3
    588c:	3b01      	subs	r3, #1
    588e:	2180      	movs	r1, #128	; 0x80
    5890:	469c      	mov	ip, r3
    5892:	e73f      	b.n	5714 <_malloc_r+0x54>
    5894:	4663      	mov	r3, ip
    5896:	9300      	str	r3, [sp, #0]
    5898:	e75d      	b.n	5756 <_malloc_r+0x96>
    589a:	2303      	movs	r3, #3
    589c:	68b4      	ldr	r4, [r6, #8]
    589e:	6862      	ldr	r2, [r4, #4]
    58a0:	439a      	bics	r2, r3
    58a2:	4690      	mov	r8, r2
    58a4:	42aa      	cmp	r2, r5
    58a6:	d303      	bcc.n	58b0 <_malloc_r+0x1f0>
    58a8:	1b52      	subs	r2, r2, r5
    58aa:	2a0f      	cmp	r2, #15
    58ac:	dd00      	ble.n	58b0 <_malloc_r+0x1f0>
    58ae:	e087      	b.n	59c0 <_malloc_r+0x300>
    58b0:	0023      	movs	r3, r4
    58b2:	4443      	add	r3, r8
    58b4:	4a63      	ldr	r2, [pc, #396]	; (5a44 <_malloc_r+0x384>)
    58b6:	9301      	str	r3, [sp, #4]
    58b8:	4b63      	ldr	r3, [pc, #396]	; (5a48 <_malloc_r+0x388>)
    58ba:	4693      	mov	fp, r2
    58bc:	681b      	ldr	r3, [r3, #0]
    58be:	6812      	ldr	r2, [r2, #0]
    58c0:	18eb      	adds	r3, r5, r3
    58c2:	3201      	adds	r2, #1
    58c4:	d100      	bne.n	58c8 <_malloc_r+0x208>
    58c6:	e157      	b.n	5b78 <_malloc_r+0x4b8>
    58c8:	4a60      	ldr	r2, [pc, #384]	; (5a4c <_malloc_r+0x38c>)
    58ca:	4694      	mov	ip, r2
    58cc:	4463      	add	r3, ip
    58ce:	0b1b      	lsrs	r3, r3, #12
    58d0:	031b      	lsls	r3, r3, #12
    58d2:	9300      	str	r3, [sp, #0]
    58d4:	9900      	ldr	r1, [sp, #0]
    58d6:	0038      	movs	r0, r7
    58d8:	f000 f9a0 	bl	5c1c <_sbrk_r>
    58dc:	0003      	movs	r3, r0
    58de:	4681      	mov	r9, r0
    58e0:	3301      	adds	r3, #1
    58e2:	d061      	beq.n	59a8 <_malloc_r+0x2e8>
    58e4:	9b01      	ldr	r3, [sp, #4]
    58e6:	4283      	cmp	r3, r0
    58e8:	d900      	bls.n	58ec <_malloc_r+0x22c>
    58ea:	e0fd      	b.n	5ae8 <_malloc_r+0x428>
    58ec:	4b58      	ldr	r3, [pc, #352]	; (5a50 <_malloc_r+0x390>)
    58ee:	9a00      	ldr	r2, [sp, #0]
    58f0:	469a      	mov	sl, r3
    58f2:	681b      	ldr	r3, [r3, #0]
    58f4:	469c      	mov	ip, r3
    58f6:	4653      	mov	r3, sl
    58f8:	4462      	add	r2, ip
    58fa:	601a      	str	r2, [r3, #0]
    58fc:	9b01      	ldr	r3, [sp, #4]
    58fe:	0011      	movs	r1, r2
    5900:	454b      	cmp	r3, r9
    5902:	d100      	bne.n	5906 <_malloc_r+0x246>
    5904:	e143      	b.n	5b8e <_malloc_r+0x4ce>
    5906:	465b      	mov	r3, fp
    5908:	681b      	ldr	r3, [r3, #0]
    590a:	3301      	adds	r3, #1
    590c:	d100      	bne.n	5910 <_malloc_r+0x250>
    590e:	e14f      	b.n	5bb0 <_malloc_r+0x4f0>
    5910:	464b      	mov	r3, r9
    5912:	9a01      	ldr	r2, [sp, #4]
    5914:	1a9b      	subs	r3, r3, r2
    5916:	1859      	adds	r1, r3, r1
    5918:	4653      	mov	r3, sl
    591a:	6019      	str	r1, [r3, #0]
    591c:	2307      	movs	r3, #7
    591e:	464a      	mov	r2, r9
    5920:	4013      	ands	r3, r2
    5922:	d100      	bne.n	5926 <_malloc_r+0x266>
    5924:	e117      	b.n	5b56 <_malloc_r+0x496>
    5926:	2108      	movs	r1, #8
    5928:	4689      	mov	r9, r1
    592a:	494a      	ldr	r1, [pc, #296]	; (5a54 <_malloc_r+0x394>)
    592c:	1ad2      	subs	r2, r2, r3
    592e:	4491      	add	r9, r2
    5930:	1ac9      	subs	r1, r1, r3
    5932:	9b00      	ldr	r3, [sp, #0]
    5934:	0038      	movs	r0, r7
    5936:	444b      	add	r3, r9
    5938:	051b      	lsls	r3, r3, #20
    593a:	0d1b      	lsrs	r3, r3, #20
    593c:	1acb      	subs	r3, r1, r3
    593e:	0019      	movs	r1, r3
    5940:	469b      	mov	fp, r3
    5942:	f000 f96b 	bl	5c1c <_sbrk_r>
    5946:	1c43      	adds	r3, r0, #1
    5948:	d100      	bne.n	594c <_malloc_r+0x28c>
    594a:	e135      	b.n	5bb8 <_malloc_r+0x4f8>
    594c:	464b      	mov	r3, r9
    594e:	1ac0      	subs	r0, r0, r3
    5950:	2301      	movs	r3, #1
    5952:	4458      	add	r0, fp
    5954:	4318      	orrs	r0, r3
    5956:	4653      	mov	r3, sl
    5958:	681b      	ldr	r3, [r3, #0]
    595a:	445b      	add	r3, fp
    595c:	0019      	movs	r1, r3
    595e:	4653      	mov	r3, sl
    5960:	6019      	str	r1, [r3, #0]
    5962:	464b      	mov	r3, r9
    5964:	60b3      	str	r3, [r6, #8]
    5966:	6058      	str	r0, [r3, #4]
    5968:	42b4      	cmp	r4, r6
    596a:	d013      	beq.n	5994 <_malloc_r+0x2d4>
    596c:	4643      	mov	r3, r8
    596e:	2b0f      	cmp	r3, #15
    5970:	d800      	bhi.n	5974 <_malloc_r+0x2b4>
    5972:	e0e1      	b.n	5b38 <_malloc_r+0x478>
    5974:	4643      	mov	r3, r8
    5976:	2207      	movs	r2, #7
    5978:	6860      	ldr	r0, [r4, #4]
    597a:	3b0c      	subs	r3, #12
    597c:	4393      	bics	r3, r2
    597e:	3a06      	subs	r2, #6
    5980:	4002      	ands	r2, r0
    5982:	2005      	movs	r0, #5
    5984:	431a      	orrs	r2, r3
    5986:	6062      	str	r2, [r4, #4]
    5988:	18e2      	adds	r2, r4, r3
    598a:	6050      	str	r0, [r2, #4]
    598c:	6090      	str	r0, [r2, #8]
    598e:	2b0f      	cmp	r3, #15
    5990:	d900      	bls.n	5994 <_malloc_r+0x2d4>
    5992:	e115      	b.n	5bc0 <_malloc_r+0x500>
    5994:	4b30      	ldr	r3, [pc, #192]	; (5a58 <_malloc_r+0x398>)
    5996:	681a      	ldr	r2, [r3, #0]
    5998:	4291      	cmp	r1, r2
    599a:	d900      	bls.n	599e <_malloc_r+0x2de>
    599c:	6019      	str	r1, [r3, #0]
    599e:	4b2f      	ldr	r3, [pc, #188]	; (5a5c <_malloc_r+0x39c>)
    59a0:	681a      	ldr	r2, [r3, #0]
    59a2:	4291      	cmp	r1, r2
    59a4:	d900      	bls.n	59a8 <_malloc_r+0x2e8>
    59a6:	6019      	str	r1, [r3, #0]
    59a8:	2303      	movs	r3, #3
    59aa:	68b4      	ldr	r4, [r6, #8]
    59ac:	6862      	ldr	r2, [r4, #4]
    59ae:	439a      	bics	r2, r3
    59b0:	0013      	movs	r3, r2
    59b2:	1b52      	subs	r2, r2, r5
    59b4:	429d      	cmp	r5, r3
    59b6:	d900      	bls.n	59ba <_malloc_r+0x2fa>
    59b8:	e0c1      	b.n	5b3e <_malloc_r+0x47e>
    59ba:	2a0f      	cmp	r2, #15
    59bc:	dc00      	bgt.n	59c0 <_malloc_r+0x300>
    59be:	e0be      	b.n	5b3e <_malloc_r+0x47e>
    59c0:	2301      	movs	r3, #1
    59c2:	0029      	movs	r1, r5
    59c4:	1965      	adds	r5, r4, r5
    59c6:	4319      	orrs	r1, r3
    59c8:	4313      	orrs	r3, r2
    59ca:	6061      	str	r1, [r4, #4]
    59cc:	0038      	movs	r0, r7
    59ce:	60b5      	str	r5, [r6, #8]
    59d0:	606b      	str	r3, [r5, #4]
    59d2:	f000 f921 	bl	5c18 <__malloc_unlock>
    59d6:	0020      	movs	r0, r4
    59d8:	3008      	adds	r0, #8
    59da:	e74a      	b.n	5872 <_malloc_r+0x1b2>
    59dc:	2b14      	cmp	r3, #20
    59de:	d974      	bls.n	5aca <_malloc_r+0x40a>
    59e0:	2b54      	cmp	r3, #84	; 0x54
    59e2:	d900      	bls.n	59e6 <_malloc_r+0x326>
    59e4:	e0b0      	b.n	5b48 <_malloc_r+0x488>
    59e6:	0b29      	lsrs	r1, r5, #12
    59e8:	236e      	movs	r3, #110	; 0x6e
    59ea:	e68c      	b.n	5706 <_malloc_r+0x46>
    59ec:	0a4a      	lsrs	r2, r1, #9
    59ee:	2a04      	cmp	r2, #4
    59f0:	d974      	bls.n	5adc <_malloc_r+0x41c>
    59f2:	2a14      	cmp	r2, #20
    59f4:	d900      	bls.n	59f8 <_malloc_r+0x338>
    59f6:	e0c2      	b.n	5b7e <_malloc_r+0x4be>
    59f8:	0010      	movs	r0, r2
    59fa:	325c      	adds	r2, #92	; 0x5c
    59fc:	305b      	adds	r0, #91	; 0x5b
    59fe:	0052      	lsls	r2, r2, #1
    5a00:	2108      	movs	r1, #8
    5a02:	4249      	negs	r1, r1
    5a04:	468c      	mov	ip, r1
    5a06:	0092      	lsls	r2, r2, #2
    5a08:	18b2      	adds	r2, r6, r2
    5a0a:	4494      	add	ip, r2
    5a0c:	4662      	mov	r2, ip
    5a0e:	6892      	ldr	r2, [r2, #8]
    5a10:	310b      	adds	r1, #11
    5a12:	4688      	mov	r8, r1
    5a14:	4594      	cmp	ip, r2
    5a16:	d100      	bne.n	5a1a <_malloc_r+0x35a>
    5a18:	e0a0      	b.n	5b5c <_malloc_r+0x49c>
    5a1a:	4641      	mov	r1, r8
    5a1c:	6850      	ldr	r0, [r2, #4]
    5a1e:	4388      	bics	r0, r1
    5a20:	4283      	cmp	r3, r0
    5a22:	d202      	bcs.n	5a2a <_malloc_r+0x36a>
    5a24:	6892      	ldr	r2, [r2, #8]
    5a26:	4594      	cmp	ip, r2
    5a28:	d1f7      	bne.n	5a1a <_malloc_r+0x35a>
    5a2a:	68d3      	ldr	r3, [r2, #12]
    5a2c:	469c      	mov	ip, r3
    5a2e:	6873      	ldr	r3, [r6, #4]
    5a30:	4661      	mov	r1, ip
    5a32:	60a2      	str	r2, [r4, #8]
    5a34:	60e1      	str	r1, [r4, #12]
    5a36:	608c      	str	r4, [r1, #8]
    5a38:	60d4      	str	r4, [r2, #12]
    5a3a:	e6b1      	b.n	57a0 <_malloc_r+0xe0>
    5a3c:	20000444 	.word	0x20000444
    5a40:	000001ff 	.word	0x000001ff
    5a44:	20000850 	.word	0x20000850
    5a48:	20006050 	.word	0x20006050
    5a4c:	0000100f 	.word	0x0000100f
    5a50:	20006054 	.word	0x20006054
    5a54:	00001008 	.word	0x00001008
    5a58:	2000604c 	.word	0x2000604c
    5a5c:	20006048 	.word	0x20006048
    5a60:	2101      	movs	r1, #1
    5a62:	1963      	adds	r3, r4, r5
    5a64:	430d      	orrs	r5, r1
    5a66:	4301      	orrs	r1, r0
    5a68:	6065      	str	r5, [r4, #4]
    5a6a:	6173      	str	r3, [r6, #20]
    5a6c:	6133      	str	r3, [r6, #16]
    5a6e:	60da      	str	r2, [r3, #12]
    5a70:	609a      	str	r2, [r3, #8]
    5a72:	6059      	str	r1, [r3, #4]
    5a74:	5018      	str	r0, [r3, r0]
    5a76:	0038      	movs	r0, r7
    5a78:	f000 f8ce 	bl	5c18 <__malloc_unlock>
    5a7c:	0020      	movs	r0, r4
    5a7e:	3008      	adds	r0, #8
    5a80:	e6f7      	b.n	5872 <_malloc_r+0x1b2>
    5a82:	6873      	ldr	r3, [r6, #4]
    5a84:	e68c      	b.n	57a0 <_malloc_r+0xe0>
    5a86:	2308      	movs	r3, #8
    5a88:	469b      	mov	fp, r3
    5a8a:	3b07      	subs	r3, #7
    5a8c:	44dc      	add	ip, fp
    5a8e:	469b      	mov	fp, r3
    5a90:	44da      	add	sl, fp
    5a92:	4643      	mov	r3, r8
    5a94:	4652      	mov	r2, sl
    5a96:	4213      	tst	r3, r2
    5a98:	d000      	beq.n	5a9c <_malloc_r+0x3dc>
    5a9a:	e69f      	b.n	57dc <_malloc_r+0x11c>
    5a9c:	e033      	b.n	5b06 <_malloc_r+0x446>
    5a9e:	68dc      	ldr	r4, [r3, #12]
    5aa0:	1c8a      	adds	r2, r1, #2
    5aa2:	9200      	str	r2, [sp, #0]
    5aa4:	42a3      	cmp	r3, r4
    5aa6:	d100      	bne.n	5aaa <_malloc_r+0x3ea>
    5aa8:	e655      	b.n	5756 <_malloc_r+0x96>
    5aaa:	e6d0      	b.n	584e <_malloc_r+0x18e>
    5aac:	2201      	movs	r2, #1
    5aae:	18e3      	adds	r3, r4, r3
    5ab0:	6859      	ldr	r1, [r3, #4]
    5ab2:	0038      	movs	r0, r7
    5ab4:	430a      	orrs	r2, r1
    5ab6:	605a      	str	r2, [r3, #4]
    5ab8:	68e3      	ldr	r3, [r4, #12]
    5aba:	68a2      	ldr	r2, [r4, #8]
    5abc:	60d3      	str	r3, [r2, #12]
    5abe:	609a      	str	r2, [r3, #8]
    5ac0:	f000 f8aa 	bl	5c18 <__malloc_unlock>
    5ac4:	0020      	movs	r0, r4
    5ac6:	3008      	adds	r0, #8
    5ac8:	e6d3      	b.n	5872 <_malloc_r+0x1b2>
    5aca:	225b      	movs	r2, #91	; 0x5b
    5acc:	4694      	mov	ip, r2
    5ace:	3201      	adds	r2, #1
    5ad0:	4690      	mov	r8, r2
    5ad2:	4498      	add	r8, r3
    5ad4:	449c      	add	ip, r3
    5ad6:	4643      	mov	r3, r8
    5ad8:	0059      	lsls	r1, r3, #1
    5ada:	e61b      	b.n	5714 <_malloc_r+0x54>
    5adc:	098a      	lsrs	r2, r1, #6
    5ade:	0010      	movs	r0, r2
    5ae0:	3239      	adds	r2, #57	; 0x39
    5ae2:	3038      	adds	r0, #56	; 0x38
    5ae4:	0052      	lsls	r2, r2, #1
    5ae6:	e78b      	b.n	5a00 <_malloc_r+0x340>
    5ae8:	42b4      	cmp	r4, r6
    5aea:	d000      	beq.n	5aee <_malloc_r+0x42e>
    5aec:	e75c      	b.n	59a8 <_malloc_r+0x2e8>
    5aee:	e6fd      	b.n	58ec <_malloc_r+0x22c>
    5af0:	9b00      	ldr	r3, [sp, #0]
    5af2:	3b01      	subs	r3, #1
    5af4:	9300      	str	r3, [sp, #0]
    5af6:	2308      	movs	r3, #8
    5af8:	425b      	negs	r3, r3
    5afa:	469c      	mov	ip, r3
    5afc:	44e1      	add	r9, ip
    5afe:	464b      	mov	r3, r9
    5b00:	689b      	ldr	r3, [r3, #8]
    5b02:	4599      	cmp	r9, r3
    5b04:	d17a      	bne.n	5bfc <_malloc_r+0x53c>
    5b06:	4643      	mov	r3, r8
    5b08:	9a00      	ldr	r2, [sp, #0]
    5b0a:	4213      	tst	r3, r2
    5b0c:	d1f0      	bne.n	5af0 <_malloc_r+0x430>
    5b0e:	6873      	ldr	r3, [r6, #4]
    5b10:	4383      	bics	r3, r0
    5b12:	6073      	str	r3, [r6, #4]
    5b14:	0040      	lsls	r0, r0, #1
    5b16:	4298      	cmp	r0, r3
    5b18:	d900      	bls.n	5b1c <_malloc_r+0x45c>
    5b1a:	e6be      	b.n	589a <_malloc_r+0x1da>
    5b1c:	2800      	cmp	r0, #0
    5b1e:	d100      	bne.n	5b22 <_malloc_r+0x462>
    5b20:	e6bb      	b.n	589a <_malloc_r+0x1da>
    5b22:	4203      	tst	r3, r0
    5b24:	d170      	bne.n	5c08 <_malloc_r+0x548>
    5b26:	4652      	mov	r2, sl
    5b28:	9200      	str	r2, [sp, #0]
    5b2a:	9a00      	ldr	r2, [sp, #0]
    5b2c:	0040      	lsls	r0, r0, #1
    5b2e:	3204      	adds	r2, #4
    5b30:	9200      	str	r2, [sp, #0]
    5b32:	4203      	tst	r3, r0
    5b34:	d0f9      	beq.n	5b2a <_malloc_r+0x46a>
    5b36:	e64b      	b.n	57d0 <_malloc_r+0x110>
    5b38:	2301      	movs	r3, #1
    5b3a:	464a      	mov	r2, r9
    5b3c:	6053      	str	r3, [r2, #4]
    5b3e:	0038      	movs	r0, r7
    5b40:	f000 f86a 	bl	5c18 <__malloc_unlock>
    5b44:	2000      	movs	r0, #0
    5b46:	e694      	b.n	5872 <_malloc_r+0x1b2>
    5b48:	22aa      	movs	r2, #170	; 0xaa
    5b4a:	0052      	lsls	r2, r2, #1
    5b4c:	4293      	cmp	r3, r2
    5b4e:	d80d      	bhi.n	5b6c <_malloc_r+0x4ac>
    5b50:	0be9      	lsrs	r1, r5, #15
    5b52:	2377      	movs	r3, #119	; 0x77
    5b54:	e5d7      	b.n	5706 <_malloc_r+0x46>
    5b56:	2180      	movs	r1, #128	; 0x80
    5b58:	0149      	lsls	r1, r1, #5
    5b5a:	e6ea      	b.n	5932 <_malloc_r+0x272>
    5b5c:	2301      	movs	r3, #1
    5b5e:	1080      	asrs	r0, r0, #2
    5b60:	4083      	lsls	r3, r0
    5b62:	6872      	ldr	r2, [r6, #4]
    5b64:	4313      	orrs	r3, r2
    5b66:	6073      	str	r3, [r6, #4]
    5b68:	4662      	mov	r2, ip
    5b6a:	e761      	b.n	5a30 <_malloc_r+0x370>
    5b6c:	4a28      	ldr	r2, [pc, #160]	; (5c10 <_malloc_r+0x550>)
    5b6e:	4293      	cmp	r3, r2
    5b70:	d818      	bhi.n	5ba4 <_malloc_r+0x4e4>
    5b72:	0ca9      	lsrs	r1, r5, #18
    5b74:	237c      	movs	r3, #124	; 0x7c
    5b76:	e5c6      	b.n	5706 <_malloc_r+0x46>
    5b78:	3310      	adds	r3, #16
    5b7a:	9300      	str	r3, [sp, #0]
    5b7c:	e6aa      	b.n	58d4 <_malloc_r+0x214>
    5b7e:	2a54      	cmp	r2, #84	; 0x54
    5b80:	d826      	bhi.n	5bd0 <_malloc_r+0x510>
    5b82:	0b0a      	lsrs	r2, r1, #12
    5b84:	0010      	movs	r0, r2
    5b86:	326f      	adds	r2, #111	; 0x6f
    5b88:	306e      	adds	r0, #110	; 0x6e
    5b8a:	0052      	lsls	r2, r2, #1
    5b8c:	e738      	b.n	5a00 <_malloc_r+0x340>
    5b8e:	051b      	lsls	r3, r3, #20
    5b90:	d000      	beq.n	5b94 <_malloc_r+0x4d4>
    5b92:	e6b8      	b.n	5906 <_malloc_r+0x246>
    5b94:	9b00      	ldr	r3, [sp, #0]
    5b96:	68b2      	ldr	r2, [r6, #8]
    5b98:	4443      	add	r3, r8
    5b9a:	0018      	movs	r0, r3
    5b9c:	2301      	movs	r3, #1
    5b9e:	4303      	orrs	r3, r0
    5ba0:	6053      	str	r3, [r2, #4]
    5ba2:	e6f7      	b.n	5994 <_malloc_r+0x2d4>
    5ba4:	237f      	movs	r3, #127	; 0x7f
    5ba6:	4698      	mov	r8, r3
    5ba8:	3b01      	subs	r3, #1
    5baa:	21fe      	movs	r1, #254	; 0xfe
    5bac:	469c      	mov	ip, r3
    5bae:	e5b1      	b.n	5714 <_malloc_r+0x54>
    5bb0:	465b      	mov	r3, fp
    5bb2:	464a      	mov	r2, r9
    5bb4:	601a      	str	r2, [r3, #0]
    5bb6:	e6b1      	b.n	591c <_malloc_r+0x25c>
    5bb8:	2300      	movs	r3, #0
    5bba:	2001      	movs	r0, #1
    5bbc:	469b      	mov	fp, r3
    5bbe:	e6ca      	b.n	5956 <_malloc_r+0x296>
    5bc0:	0021      	movs	r1, r4
    5bc2:	0038      	movs	r0, r7
    5bc4:	3108      	adds	r1, #8
    5bc6:	f7ff fc99 	bl	54fc <_free_r>
    5bca:	4653      	mov	r3, sl
    5bcc:	6819      	ldr	r1, [r3, #0]
    5bce:	e6e1      	b.n	5994 <_malloc_r+0x2d4>
    5bd0:	20aa      	movs	r0, #170	; 0xaa
    5bd2:	0040      	lsls	r0, r0, #1
    5bd4:	4282      	cmp	r2, r0
    5bd6:	d805      	bhi.n	5be4 <_malloc_r+0x524>
    5bd8:	0bca      	lsrs	r2, r1, #15
    5bda:	0010      	movs	r0, r2
    5bdc:	3278      	adds	r2, #120	; 0x78
    5bde:	3077      	adds	r0, #119	; 0x77
    5be0:	0052      	lsls	r2, r2, #1
    5be2:	e70d      	b.n	5a00 <_malloc_r+0x340>
    5be4:	480a      	ldr	r0, [pc, #40]	; (5c10 <_malloc_r+0x550>)
    5be6:	4282      	cmp	r2, r0
    5be8:	d805      	bhi.n	5bf6 <_malloc_r+0x536>
    5bea:	0c8a      	lsrs	r2, r1, #18
    5bec:	0010      	movs	r0, r2
    5bee:	327d      	adds	r2, #125	; 0x7d
    5bf0:	307c      	adds	r0, #124	; 0x7c
    5bf2:	0052      	lsls	r2, r2, #1
    5bf4:	e704      	b.n	5a00 <_malloc_r+0x340>
    5bf6:	22fe      	movs	r2, #254	; 0xfe
    5bf8:	207e      	movs	r0, #126	; 0x7e
    5bfa:	e701      	b.n	5a00 <_malloc_r+0x340>
    5bfc:	6873      	ldr	r3, [r6, #4]
    5bfe:	e789      	b.n	5b14 <_malloc_r+0x454>
    5c00:	08e9      	lsrs	r1, r5, #3
    5c02:	1c4b      	adds	r3, r1, #1
    5c04:	005b      	lsls	r3, r3, #1
    5c06:	e619      	b.n	583c <_malloc_r+0x17c>
    5c08:	4653      	mov	r3, sl
    5c0a:	9300      	str	r3, [sp, #0]
    5c0c:	e5e0      	b.n	57d0 <_malloc_r+0x110>
    5c0e:	46c0      	nop			; (mov r8, r8)
    5c10:	00000554 	.word	0x00000554

00005c14 <__malloc_lock>:
    5c14:	4770      	bx	lr
    5c16:	46c0      	nop			; (mov r8, r8)

00005c18 <__malloc_unlock>:
    5c18:	4770      	bx	lr
    5c1a:	46c0      	nop			; (mov r8, r8)

00005c1c <_sbrk_r>:
    5c1c:	2300      	movs	r3, #0
    5c1e:	b570      	push	{r4, r5, r6, lr}
    5c20:	4c06      	ldr	r4, [pc, #24]	; (5c3c <_sbrk_r+0x20>)
    5c22:	0005      	movs	r5, r0
    5c24:	0008      	movs	r0, r1
    5c26:	6023      	str	r3, [r4, #0]
    5c28:	f7fb f86e 	bl	d08 <_sbrk>
    5c2c:	1c43      	adds	r3, r0, #1
    5c2e:	d000      	beq.n	5c32 <_sbrk_r+0x16>
    5c30:	bd70      	pop	{r4, r5, r6, pc}
    5c32:	6823      	ldr	r3, [r4, #0]
    5c34:	2b00      	cmp	r3, #0
    5c36:	d0fb      	beq.n	5c30 <_sbrk_r+0x14>
    5c38:	602b      	str	r3, [r5, #0]
    5c3a:	e7f9      	b.n	5c30 <_sbrk_r+0x14>
    5c3c:	2000607c 	.word	0x2000607c

00005c40 <osThreadExit>:
    5c40:	b580      	push	{r7, lr}
    5c42:	4f03      	ldr	r7, [pc, #12]	; (5c50 <osThreadExit+0x10>)
    5c44:	46bc      	mov	ip, r7
    5c46:	df00      	svc	0
    5c48:	4f02      	ldr	r7, [pc, #8]	; (5c54 <osThreadExit+0x14>)
    5c4a:	46bc      	mov	ip, r7
    5c4c:	df00      	svc	0
    5c4e:	e7fe      	b.n	5c4e <osThreadExit+0xe>
    5c50:	00006081 	.word	0x00006081
    5c54:	0000609d 	.word	0x0000609d

00005c58 <svcKernelInitialize>:
    5c58:	b570      	push	{r4, r5, r6, lr}
    5c5a:	4c39      	ldr	r4, [pc, #228]	; (5d40 <svcKernelInitialize+0xe8>)
    5c5c:	b084      	sub	sp, #16
    5c5e:	7823      	ldrb	r3, [r4, #0]
    5c60:	2b00      	cmp	r3, #0
    5c62:	d00b      	beq.n	5c7c <svcKernelInitialize+0x24>
    5c64:	22ff      	movs	r2, #255	; 0xff
    5c66:	4b37      	ldr	r3, [pc, #220]	; (5d44 <svcKernelInitialize+0xec>)
    5c68:	681b      	ldr	r3, [r3, #0]
    5c6a:	709a      	strb	r2, [r3, #2]
    5c6c:	2301      	movs	r3, #1
    5c6e:	2200      	movs	r2, #0
    5c70:	2000      	movs	r0, #0
    5c72:	7023      	strb	r3, [r4, #0]
    5c74:	4b34      	ldr	r3, [pc, #208]	; (5d48 <svcKernelInitialize+0xf0>)
    5c76:	701a      	strb	r2, [r3, #0]
    5c78:	b004      	add	sp, #16
    5c7a:	bd70      	pop	{r4, r5, r6, pc}
    5c7c:	4b33      	ldr	r3, [pc, #204]	; (5d4c <svcKernelInitialize+0xf4>)
    5c7e:	4e34      	ldr	r6, [pc, #208]	; (5d50 <svcKernelInitialize+0xf8>)
    5c80:	6819      	ldr	r1, [r3, #0]
    5c82:	0030      	movs	r0, r6
    5c84:	f001 fc60 	bl	7548 <rt_init_mem>
    5c88:	0003      	movs	r3, r0
    5c8a:	2085      	movs	r0, #133	; 0x85
    5c8c:	2b00      	cmp	r3, #0
    5c8e:	d1f3      	bne.n	5c78 <svcKernelInitialize+0x20>
    5c90:	f002 fe70 	bl	8974 <rt_sys_init>
    5c94:	21ff      	movs	r1, #255	; 0xff
    5c96:	4a2b      	ldr	r2, [pc, #172]	; (5d44 <svcKernelInitialize+0xec>)
    5c98:	7823      	ldrb	r3, [r4, #0]
    5c9a:	6812      	ldr	r2, [r2, #0]
    5c9c:	7091      	strb	r1, [r2, #2]
    5c9e:	2b00      	cmp	r3, #0
    5ca0:	d1e4      	bne.n	5c6c <svcKernelInitialize+0x14>
    5ca2:	4b2c      	ldr	r3, [pc, #176]	; (5d54 <svcKernelInitialize+0xfc>)
    5ca4:	681a      	ldr	r2, [r3, #0]
    5ca6:	9201      	str	r2, [sp, #4]
    5ca8:	2a00      	cmp	r2, #0
    5caa:	d047      	beq.n	5d3c <svcKernelInitialize+0xe4>
    5cac:	685d      	ldr	r5, [r3, #4]
    5cae:	2d00      	cmp	r5, #0
    5cb0:	d044      	beq.n	5d3c <svcKernelInitialize+0xe4>
    5cb2:	782b      	ldrb	r3, [r5, #0]
    5cb4:	2b00      	cmp	r3, #0
    5cb6:	d141      	bne.n	5d3c <svcKernelInitialize+0xe4>
    5cb8:	0011      	movs	r1, r2
    5cba:	3104      	adds	r1, #4
    5cbc:	0089      	lsls	r1, r1, #2
    5cbe:	b289      	uxth	r1, r1
    5cc0:	0028      	movs	r0, r5
    5cc2:	f001 feeb 	bl	7a9c <rt_mbx_init>
    5cc6:	4b24      	ldr	r3, [pc, #144]	; (5d58 <svcKernelInitialize+0x100>)
    5cc8:	601d      	str	r5, [r3, #0]
    5cca:	4b24      	ldr	r3, [pc, #144]	; (5d5c <svcKernelInitialize+0x104>)
    5ccc:	681a      	ldr	r2, [r3, #0]
    5cce:	9201      	str	r2, [sp, #4]
    5cd0:	2a00      	cmp	r2, #0
    5cd2:	d01e      	beq.n	5d12 <svcKernelInitialize+0xba>
    5cd4:	685a      	ldr	r2, [r3, #4]
    5cd6:	9202      	str	r2, [sp, #8]
    5cd8:	3203      	adds	r2, #3
    5cda:	2a06      	cmp	r2, #6
    5cdc:	d819      	bhi.n	5d12 <svcKernelInitialize+0xba>
    5cde:	68db      	ldr	r3, [r3, #12]
    5ce0:	9303      	str	r3, [sp, #12]
    5ce2:	2b00      	cmp	r3, #0
    5ce4:	d019      	beq.n	5d1a <svcKernelInitialize+0xc2>
    5ce6:	0019      	movs	r1, r3
    5ce8:	0030      	movs	r0, r6
    5cea:	f001 fc3b 	bl	7564 <rt_alloc_mem>
    5cee:	1e05      	subs	r5, r0, #0
    5cf0:	d00f      	beq.n	5d12 <svcKernelInitialize+0xba>
    5cf2:	9b03      	ldr	r3, [sp, #12]
    5cf4:	9902      	ldr	r1, [sp, #8]
    5cf6:	021b      	lsls	r3, r3, #8
    5cf8:	3104      	adds	r1, #4
    5cfa:	4319      	orrs	r1, r3
    5cfc:	0002      	movs	r2, r0
    5cfe:	2300      	movs	r3, #0
    5d00:	9801      	ldr	r0, [sp, #4]
    5d02:	f002 fcf7 	bl	86f4 <rt_tsk_create>
    5d06:	2800      	cmp	r0, #0
    5d08:	d110      	bne.n	5d2c <svcKernelInitialize+0xd4>
    5d0a:	0029      	movs	r1, r5
    5d0c:	0030      	movs	r0, r6
    5d0e:	f001 fc4b 	bl	75a8 <rt_free_mem>
    5d12:	2300      	movs	r3, #0
    5d14:	4a12      	ldr	r2, [pc, #72]	; (5d60 <svcKernelInitialize+0x108>)
    5d16:	6013      	str	r3, [r2, #0]
    5d18:	e7a8      	b.n	5c6c <svcKernelInitialize+0x14>
    5d1a:	9902      	ldr	r1, [sp, #8]
    5d1c:	2300      	movs	r3, #0
    5d1e:	3104      	adds	r1, #4
    5d20:	2200      	movs	r2, #0
    5d22:	9801      	ldr	r0, [sp, #4]
    5d24:	f002 fce6 	bl	86f4 <rt_tsk_create>
    5d28:	2800      	cmp	r0, #0
    5d2a:	d0f2      	beq.n	5d12 <svcKernelInitialize+0xba>
    5d2c:	3801      	subs	r0, #1
    5d2e:	4b0d      	ldr	r3, [pc, #52]	; (5d64 <svcKernelInitialize+0x10c>)
    5d30:	0080      	lsls	r0, r0, #2
    5d32:	58c3      	ldr	r3, [r0, r3]
    5d34:	490c      	ldr	r1, [pc, #48]	; (5d68 <svcKernelInitialize+0x110>)
    5d36:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5d38:	6351      	str	r1, [r2, #52]	; 0x34
    5d3a:	e7eb      	b.n	5d14 <svcKernelInitialize+0xbc>
    5d3c:	2500      	movs	r5, #0
    5d3e:	e7c2      	b.n	5cc6 <svcKernelInitialize+0x6e>
    5d40:	20006080 	.word	0x20006080
    5d44:	200060c0 	.word	0x200060c0
    5d48:	20006081 	.word	0x20006081
    5d4c:	00008d08 	.word	0x00008d08
    5d50:	200039f8 	.word	0x200039f8
    5d54:	00008d20 	.word	0x00008d20
    5d58:	20004d10 	.word	0x20004d10
    5d5c:	00008d10 	.word	0x00008d10
    5d60:	20004cec 	.word	0x20004cec
    5d64:	20004cdc 	.word	0x20004cdc
    5d68:	00005c41 	.word	0x00005c41

00005d6c <svcKernelStart>:
    5d6c:	b570      	push	{r4, r5, r6, lr}
    5d6e:	4c10      	ldr	r4, [pc, #64]	; (5db0 <svcKernelStart+0x44>)
    5d70:	7823      	ldrb	r3, [r4, #0]
    5d72:	2b00      	cmp	r3, #0
    5d74:	d001      	beq.n	5d7a <svcKernelStart+0xe>
    5d76:	2000      	movs	r0, #0
    5d78:	bd70      	pop	{r4, r5, r6, pc}
    5d7a:	4d0e      	ldr	r5, [pc, #56]	; (5db4 <svcKernelStart+0x48>)
    5d7c:	3324      	adds	r3, #36	; 0x24
    5d7e:	682a      	ldr	r2, [r5, #0]
    5d80:	2000      	movs	r0, #0
    5d82:	5cd1      	ldrb	r1, [r2, r3]
    5d84:	f002 fc5a 	bl	863c <rt_tsk_prio>
    5d88:	682b      	ldr	r3, [r5, #0]
    5d8a:	78da      	ldrb	r2, [r3, #3]
    5d8c:	2aff      	cmp	r2, #255	; 0xff
    5d8e:	d007      	beq.n	5da0 <svcKernelStart+0x34>
    5d90:	686a      	ldr	r2, [r5, #4]
    5d92:	2a00      	cmp	r2, #0
    5d94:	d009      	beq.n	5daa <svcKernelStart+0x3e>
    5d96:	f002 fe65 	bl	8a64 <rt_sys_start>
    5d9a:	2301      	movs	r3, #1
    5d9c:	7023      	strb	r3, [r4, #0]
    5d9e:	e7ea      	b.n	5d76 <svcKernelStart+0xa>
    5da0:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5da2:	3220      	adds	r2, #32
    5da4:	f382 8809 	msr	PSP, r2
    5da8:	e7f2      	b.n	5d90 <svcKernelStart+0x24>
    5daa:	c50c      	stmia	r5!, {r2, r3}
    5dac:	e7f3      	b.n	5d96 <svcKernelStart+0x2a>
    5dae:	46c0      	nop			; (mov r8, r8)
    5db0:	20006081 	.word	0x20006081
    5db4:	200060c0 	.word	0x200060c0

00005db8 <svcKernelRunning>:
    5db8:	4b01      	ldr	r3, [pc, #4]	; (5dc0 <svcKernelRunning+0x8>)
    5dba:	7818      	ldrb	r0, [r3, #0]
    5dbc:	4770      	bx	lr
    5dbe:	46c0      	nop			; (mov r8, r8)
    5dc0:	20006081 	.word	0x20006081

00005dc4 <svcKernelSysTick>:
    5dc4:	b510      	push	{r4, lr}
    5dc6:	b082      	sub	sp, #8
    5dc8:	f002 fb88 	bl	84dc <os_tick_val>
    5dcc:	0004      	movs	r4, r0
    5dce:	f002 fb8f 	bl	84f0 <os_tick_ovf>
    5dd2:	2800      	cmp	r0, #0
    5dd4:	d109      	bne.n	5dea <svcKernelSysTick+0x26>
    5dd6:	4b0d      	ldr	r3, [pc, #52]	; (5e0c <svcKernelSysTick+0x48>)
    5dd8:	681b      	ldr	r3, [r3, #0]
    5dda:	1c58      	adds	r0, r3, #1
    5ddc:	9301      	str	r3, [sp, #4]
    5dde:	4b0c      	ldr	r3, [pc, #48]	; (5e10 <svcKernelSysTick+0x4c>)
    5de0:	681b      	ldr	r3, [r3, #0]
    5de2:	4358      	muls	r0, r3
    5de4:	1900      	adds	r0, r0, r4
    5de6:	b002      	add	sp, #8
    5de8:	bd10      	pop	{r4, pc}
    5dea:	f002 fb77 	bl	84dc <os_tick_val>
    5dee:	4284      	cmp	r4, r0
    5df0:	d809      	bhi.n	5e06 <svcKernelSysTick+0x42>
    5df2:	4b06      	ldr	r3, [pc, #24]	; (5e0c <svcKernelSysTick+0x48>)
    5df4:	4a06      	ldr	r2, [pc, #24]	; (5e10 <svcKernelSysTick+0x4c>)
    5df6:	681b      	ldr	r3, [r3, #0]
    5df8:	6810      	ldr	r0, [r2, #0]
    5dfa:	9301      	str	r3, [sp, #4]
    5dfc:	3001      	adds	r0, #1
    5dfe:	3301      	adds	r3, #1
    5e00:	4358      	muls	r0, r3
    5e02:	1900      	adds	r0, r0, r4
    5e04:	e7ef      	b.n	5de6 <svcKernelSysTick+0x22>
    5e06:	0004      	movs	r4, r0
    5e08:	e7f3      	b.n	5df2 <svcKernelSysTick+0x2e>
    5e0a:	46c0      	nop			; (mov r8, r8)
    5e0c:	00008ce8 	.word	0x00008ce8
    5e10:	20006088 	.word	0x20006088

00005e14 <osKernelInitialize>:
    5e14:	b5f0      	push	{r4, r5, r6, r7, lr}
    5e16:	b085      	sub	sp, #20
    5e18:	f3ef 8405 	mrs	r4, IPSR
    5e1c:	2582      	movs	r5, #130	; 0x82
    5e1e:	2c00      	cmp	r4, #0
    5e20:	d002      	beq.n	5e28 <osKernelInitialize+0x14>
    5e22:	0028      	movs	r0, r5
    5e24:	b005      	add	sp, #20
    5e26:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5e28:	f3ef 8414 	mrs	r4, CONTROL
    5e2c:	07e4      	lsls	r4, r4, #31
    5e2e:	d504      	bpl.n	5e3a <osKernelInitialize+0x26>
    5e30:	4f45      	ldr	r7, [pc, #276]	; (5f48 <osKernelInitialize+0x134>)
    5e32:	46bc      	mov	ip, r7
    5e34:	df00      	svc	0
    5e36:	0005      	movs	r5, r0
    5e38:	e7f3      	b.n	5e22 <osKernelInitialize+0xe>
    5e3a:	4c38      	ldr	r4, [pc, #224]	; (5f1c <osKernelInitialize+0x108>)
    5e3c:	7823      	ldrb	r3, [r4, #0]
    5e3e:	2b00      	cmp	r3, #0
    5e40:	d00a      	beq.n	5e58 <osKernelInitialize+0x44>
    5e42:	22ff      	movs	r2, #255	; 0xff
    5e44:	4b36      	ldr	r3, [pc, #216]	; (5f20 <osKernelInitialize+0x10c>)
    5e46:	681b      	ldr	r3, [r3, #0]
    5e48:	709a      	strb	r2, [r3, #2]
    5e4a:	2301      	movs	r3, #1
    5e4c:	2200      	movs	r2, #0
    5e4e:	7023      	strb	r3, [r4, #0]
    5e50:	4b34      	ldr	r3, [pc, #208]	; (5f24 <osKernelInitialize+0x110>)
    5e52:	2500      	movs	r5, #0
    5e54:	701a      	strb	r2, [r3, #0]
    5e56:	e7e4      	b.n	5e22 <osKernelInitialize+0xe>
    5e58:	4e33      	ldr	r6, [pc, #204]	; (5f28 <osKernelInitialize+0x114>)
    5e5a:	4b34      	ldr	r3, [pc, #208]	; (5f2c <osKernelInitialize+0x118>)
    5e5c:	0030      	movs	r0, r6
    5e5e:	6819      	ldr	r1, [r3, #0]
    5e60:	f001 fb72 	bl	7548 <rt_init_mem>
    5e64:	3503      	adds	r5, #3
    5e66:	2800      	cmp	r0, #0
    5e68:	d1db      	bne.n	5e22 <osKernelInitialize+0xe>
    5e6a:	f002 fd83 	bl	8974 <rt_sys_init>
    5e6e:	21ff      	movs	r1, #255	; 0xff
    5e70:	4a2b      	ldr	r2, [pc, #172]	; (5f20 <osKernelInitialize+0x10c>)
    5e72:	7823      	ldrb	r3, [r4, #0]
    5e74:	6812      	ldr	r2, [r2, #0]
    5e76:	7091      	strb	r1, [r2, #2]
    5e78:	2b00      	cmp	r3, #0
    5e7a:	d1e6      	bne.n	5e4a <osKernelInitialize+0x36>
    5e7c:	4b2c      	ldr	r3, [pc, #176]	; (5f30 <osKernelInitialize+0x11c>)
    5e7e:	681a      	ldr	r2, [r3, #0]
    5e80:	9201      	str	r2, [sp, #4]
    5e82:	2a00      	cmp	r2, #0
    5e84:	d047      	beq.n	5f16 <osKernelInitialize+0x102>
    5e86:	685d      	ldr	r5, [r3, #4]
    5e88:	2d00      	cmp	r5, #0
    5e8a:	d044      	beq.n	5f16 <osKernelInitialize+0x102>
    5e8c:	782b      	ldrb	r3, [r5, #0]
    5e8e:	2b00      	cmp	r3, #0
    5e90:	d141      	bne.n	5f16 <osKernelInitialize+0x102>
    5e92:	0011      	movs	r1, r2
    5e94:	3104      	adds	r1, #4
    5e96:	0089      	lsls	r1, r1, #2
    5e98:	b289      	uxth	r1, r1
    5e9a:	0028      	movs	r0, r5
    5e9c:	f001 fdfe 	bl	7a9c <rt_mbx_init>
    5ea0:	4b24      	ldr	r3, [pc, #144]	; (5f34 <osKernelInitialize+0x120>)
    5ea2:	601d      	str	r5, [r3, #0]
    5ea4:	4b24      	ldr	r3, [pc, #144]	; (5f38 <osKernelInitialize+0x124>)
    5ea6:	681a      	ldr	r2, [r3, #0]
    5ea8:	9201      	str	r2, [sp, #4]
    5eaa:	2a00      	cmp	r2, #0
    5eac:	d01e      	beq.n	5eec <osKernelInitialize+0xd8>
    5eae:	685a      	ldr	r2, [r3, #4]
    5eb0:	9202      	str	r2, [sp, #8]
    5eb2:	3203      	adds	r2, #3
    5eb4:	2a06      	cmp	r2, #6
    5eb6:	d819      	bhi.n	5eec <osKernelInitialize+0xd8>
    5eb8:	68db      	ldr	r3, [r3, #12]
    5eba:	9303      	str	r3, [sp, #12]
    5ebc:	2b00      	cmp	r3, #0
    5ebe:	d019      	beq.n	5ef4 <osKernelInitialize+0xe0>
    5ec0:	0019      	movs	r1, r3
    5ec2:	0030      	movs	r0, r6
    5ec4:	f001 fb4e 	bl	7564 <rt_alloc_mem>
    5ec8:	1e05      	subs	r5, r0, #0
    5eca:	d00f      	beq.n	5eec <osKernelInitialize+0xd8>
    5ecc:	9902      	ldr	r1, [sp, #8]
    5ece:	9b03      	ldr	r3, [sp, #12]
    5ed0:	3104      	adds	r1, #4
    5ed2:	021b      	lsls	r3, r3, #8
    5ed4:	4319      	orrs	r1, r3
    5ed6:	0002      	movs	r2, r0
    5ed8:	2300      	movs	r3, #0
    5eda:	9801      	ldr	r0, [sp, #4]
    5edc:	f002 fc0a 	bl	86f4 <rt_tsk_create>
    5ee0:	2800      	cmp	r0, #0
    5ee2:	d110      	bne.n	5f06 <osKernelInitialize+0xf2>
    5ee4:	0029      	movs	r1, r5
    5ee6:	0030      	movs	r0, r6
    5ee8:	f001 fb5e 	bl	75a8 <rt_free_mem>
    5eec:	2300      	movs	r3, #0
    5eee:	4a13      	ldr	r2, [pc, #76]	; (5f3c <osKernelInitialize+0x128>)
    5ef0:	6013      	str	r3, [r2, #0]
    5ef2:	e7aa      	b.n	5e4a <osKernelInitialize+0x36>
    5ef4:	9902      	ldr	r1, [sp, #8]
    5ef6:	2300      	movs	r3, #0
    5ef8:	3104      	adds	r1, #4
    5efa:	2200      	movs	r2, #0
    5efc:	9801      	ldr	r0, [sp, #4]
    5efe:	f002 fbf9 	bl	86f4 <rt_tsk_create>
    5f02:	2800      	cmp	r0, #0
    5f04:	d0f2      	beq.n	5eec <osKernelInitialize+0xd8>
    5f06:	3801      	subs	r0, #1
    5f08:	4b0d      	ldr	r3, [pc, #52]	; (5f40 <osKernelInitialize+0x12c>)
    5f0a:	0080      	lsls	r0, r0, #2
    5f0c:	58c3      	ldr	r3, [r0, r3]
    5f0e:	490d      	ldr	r1, [pc, #52]	; (5f44 <osKernelInitialize+0x130>)
    5f10:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5f12:	6351      	str	r1, [r2, #52]	; 0x34
    5f14:	e7eb      	b.n	5eee <osKernelInitialize+0xda>
    5f16:	2500      	movs	r5, #0
    5f18:	e7c2      	b.n	5ea0 <osKernelInitialize+0x8c>
    5f1a:	46c0      	nop			; (mov r8, r8)
    5f1c:	20006080 	.word	0x20006080
    5f20:	200060c0 	.word	0x200060c0
    5f24:	20006081 	.word	0x20006081
    5f28:	200039f8 	.word	0x200039f8
    5f2c:	00008d08 	.word	0x00008d08
    5f30:	00008d20 	.word	0x00008d20
    5f34:	20004d10 	.word	0x20004d10
    5f38:	00008d10 	.word	0x00008d10
    5f3c:	20004cec 	.word	0x20004cec
    5f40:	20004cdc 	.word	0x20004cdc
    5f44:	00005c41 	.word	0x00005c41
    5f48:	00005c59 	.word	0x00005c59

00005f4c <osKernelStart>:
    5f4c:	b5b0      	push	{r4, r5, r7, lr}
    5f4e:	b088      	sub	sp, #32
    5f50:	f3ef 8405 	mrs	r4, IPSR
    5f54:	2582      	movs	r5, #130	; 0x82
    5f56:	2c00      	cmp	r4, #0
    5f58:	d002      	beq.n	5f60 <osKernelStart+0x14>
    5f5a:	0028      	movs	r0, r5
    5f5c:	b008      	add	sp, #32
    5f5e:	bdb0      	pop	{r4, r5, r7, pc}
    5f60:	f3ef 8414 	mrs	r4, CONTROL
    5f64:	3d7f      	subs	r5, #127	; 0x7f
    5f66:	402c      	ands	r4, r5
    5f68:	2c02      	cmp	r4, #2
    5f6a:	d01c      	beq.n	5fa6 <osKernelStart+0x5a>
    5f6c:	2c03      	cmp	r4, #3
    5f6e:	d014      	beq.n	5f9a <osKernelStart+0x4e>
    5f70:	2c01      	cmp	r4, #1
    5f72:	d020      	beq.n	5fb6 <osKernelStart+0x6a>
    5f74:	ac08      	add	r4, sp, #32
    5f76:	f384 8809 	msr	PSP, r4
    5f7a:	4c10      	ldr	r4, [pc, #64]	; (5fbc <osKernelStart+0x70>)
    5f7c:	7824      	ldrb	r4, [r4, #0]
    5f7e:	07e4      	lsls	r4, r4, #31
    5f80:	d515      	bpl.n	5fae <osKernelStart+0x62>
    5f82:	2402      	movs	r4, #2
    5f84:	f384 8814 	msr	CONTROL, r4
    5f88:	f3bf 8f4f 	dsb	sy
    5f8c:	f3bf 8f6f 	isb	sy
    5f90:	4f0b      	ldr	r7, [pc, #44]	; (5fc0 <osKernelStart+0x74>)
    5f92:	46bc      	mov	ip, r7
    5f94:	df00      	svc	0
    5f96:	0005      	movs	r5, r0
    5f98:	e7df      	b.n	5f5a <osKernelStart+0xe>
    5f9a:	4c08      	ldr	r4, [pc, #32]	; (5fbc <osKernelStart+0x70>)
    5f9c:	25ff      	movs	r5, #255	; 0xff
    5f9e:	7824      	ldrb	r4, [r4, #0]
    5fa0:	07e4      	lsls	r4, r4, #31
    5fa2:	d4da      	bmi.n	5f5a <osKernelStart+0xe>
    5fa4:	e7f4      	b.n	5f90 <osKernelStart+0x44>
    5fa6:	4c05      	ldr	r4, [pc, #20]	; (5fbc <osKernelStart+0x70>)
    5fa8:	7824      	ldrb	r4, [r4, #0]
    5faa:	07e4      	lsls	r4, r4, #31
    5fac:	d4f0      	bmi.n	5f90 <osKernelStart+0x44>
    5fae:	2403      	movs	r4, #3
    5fb0:	f384 8814 	msr	CONTROL, r4
    5fb4:	e7e8      	b.n	5f88 <osKernelStart+0x3c>
    5fb6:	25ff      	movs	r5, #255	; 0xff
    5fb8:	e7cf      	b.n	5f5a <osKernelStart+0xe>
    5fba:	46c0      	nop			; (mov r8, r8)
    5fbc:	00008cec 	.word	0x00008cec
    5fc0:	00005d6d 	.word	0x00005d6d

00005fc4 <osKernelRunning>:
    5fc4:	b590      	push	{r4, r7, lr}
    5fc6:	f3ef 8405 	mrs	r4, IPSR
    5fca:	2c00      	cmp	r4, #0
    5fcc:	d107      	bne.n	5fde <osKernelRunning+0x1a>
    5fce:	f3ef 8414 	mrs	r4, CONTROL
    5fd2:	07e4      	lsls	r4, r4, #31
    5fd4:	d503      	bpl.n	5fde <osKernelRunning+0x1a>
    5fd6:	4f04      	ldr	r7, [pc, #16]	; (5fe8 <osKernelRunning+0x24>)
    5fd8:	46bc      	mov	ip, r7
    5fda:	df00      	svc	0
    5fdc:	e001      	b.n	5fe2 <osKernelRunning+0x1e>
    5fde:	4b01      	ldr	r3, [pc, #4]	; (5fe4 <osKernelRunning+0x20>)
    5fe0:	7818      	ldrb	r0, [r3, #0]
    5fe2:	bd90      	pop	{r4, r7, pc}
    5fe4:	20006081 	.word	0x20006081
    5fe8:	00005db9 	.word	0x00005db9

00005fec <osKernelSysTick>:
    5fec:	b5b0      	push	{r4, r5, r7, lr}
    5fee:	f3ef 8405 	mrs	r4, IPSR
    5ff2:	2500      	movs	r5, #0
    5ff4:	2c00      	cmp	r4, #0
    5ff6:	d103      	bne.n	6000 <osKernelSysTick+0x14>
    5ff8:	4f02      	ldr	r7, [pc, #8]	; (6004 <osKernelSysTick+0x18>)
    5ffa:	46bc      	mov	ip, r7
    5ffc:	df00      	svc	0
    5ffe:	0005      	movs	r5, r0
    6000:	0028      	movs	r0, r5
    6002:	bdb0      	pop	{r4, r5, r7, pc}
    6004:	00005dc5 	.word	0x00005dc5

00006008 <svcThreadCreate>:
    6008:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    600a:	0004      	movs	r4, r0
    600c:	000d      	movs	r5, r1
    600e:	2800      	cmp	r0, #0
    6010:	d01f      	beq.n	6052 <svcThreadCreate+0x4a>
    6012:	6800      	ldr	r0, [r0, #0]
    6014:	2800      	cmp	r0, #0
    6016:	d01c      	beq.n	6052 <svcThreadCreate+0x4a>
    6018:	6863      	ldr	r3, [r4, #4]
    601a:	1cda      	adds	r2, r3, #3
    601c:	2a06      	cmp	r2, #6
    601e:	d818      	bhi.n	6052 <svcThreadCreate+0x4a>
    6020:	68e1      	ldr	r1, [r4, #12]
    6022:	2900      	cmp	r1, #0
    6024:	d017      	beq.n	6056 <svcThreadCreate+0x4e>
    6026:	4e13      	ldr	r6, [pc, #76]	; (6074 <svcThreadCreate+0x6c>)
    6028:	0030      	movs	r0, r6
    602a:	f001 fa9b 	bl	7564 <rt_alloc_mem>
    602e:	1e07      	subs	r7, r0, #0
    6030:	d00f      	beq.n	6052 <svcThreadCreate+0x4a>
    6032:	6863      	ldr	r3, [r4, #4]
    6034:	6820      	ldr	r0, [r4, #0]
    6036:	1d19      	adds	r1, r3, #4
    6038:	68e3      	ldr	r3, [r4, #12]
    603a:	003a      	movs	r2, r7
    603c:	021b      	lsls	r3, r3, #8
    603e:	4319      	orrs	r1, r3
    6040:	002b      	movs	r3, r5
    6042:	f002 fb57 	bl	86f4 <rt_tsk_create>
    6046:	2800      	cmp	r0, #0
    6048:	d10c      	bne.n	6064 <svcThreadCreate+0x5c>
    604a:	0039      	movs	r1, r7
    604c:	0030      	movs	r0, r6
    604e:	f001 faab 	bl	75a8 <rt_free_mem>
    6052:	2000      	movs	r0, #0
    6054:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6056:	1d19      	adds	r1, r3, #4
    6058:	2200      	movs	r2, #0
    605a:	002b      	movs	r3, r5
    605c:	f002 fb4a 	bl	86f4 <rt_tsk_create>
    6060:	2800      	cmp	r0, #0
    6062:	d0f6      	beq.n	6052 <svcThreadCreate+0x4a>
    6064:	4b04      	ldr	r3, [pc, #16]	; (6078 <svcThreadCreate+0x70>)
    6066:	3801      	subs	r0, #1
    6068:	0080      	lsls	r0, r0, #2
    606a:	58c0      	ldr	r0, [r0, r3]
    606c:	4a03      	ldr	r2, [pc, #12]	; (607c <svcThreadCreate+0x74>)
    606e:	6a83      	ldr	r3, [r0, #40]	; 0x28
    6070:	635a      	str	r2, [r3, #52]	; 0x34
    6072:	e7ef      	b.n	6054 <svcThreadCreate+0x4c>
    6074:	200039f8 	.word	0x200039f8
    6078:	20004cdc 	.word	0x20004cdc
    607c:	00005c41 	.word	0x00005c41

00006080 <svcThreadGetId>:
    6080:	b510      	push	{r4, lr}
    6082:	f002 fad1 	bl	8628 <rt_tsk_self>
    6086:	2800      	cmp	r0, #0
    6088:	d004      	beq.n	6094 <svcThreadGetId+0x14>
    608a:	3801      	subs	r0, #1
    608c:	4b02      	ldr	r3, [pc, #8]	; (6098 <svcThreadGetId+0x18>)
    608e:	0080      	lsls	r0, r0, #2
    6090:	58c0      	ldr	r0, [r0, r3]
    6092:	bd10      	pop	{r4, pc}
    6094:	2000      	movs	r0, #0
    6096:	e7fc      	b.n	6092 <svcThreadGetId+0x12>
    6098:	20004cdc 	.word	0x20004cdc

0000609c <svcThreadTerminate>:
    609c:	0003      	movs	r3, r0
    609e:	b510      	push	{r4, lr}
    60a0:	2080      	movs	r0, #128	; 0x80
    60a2:	2b00      	cmp	r3, #0
    60a4:	d017      	beq.n	60d6 <svcThreadTerminate+0x3a>
    60a6:	079a      	lsls	r2, r3, #30
    60a8:	d115      	bne.n	60d6 <svcThreadTerminate+0x3a>
    60aa:	781a      	ldrb	r2, [r3, #0]
    60ac:	2a00      	cmp	r2, #0
    60ae:	d112      	bne.n	60d6 <svcThreadTerminate+0x3a>
    60b0:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    60b2:	2400      	movs	r4, #0
    60b4:	2a00      	cmp	r2, #0
    60b6:	d000      	beq.n	60ba <svcThreadTerminate+0x1e>
    60b8:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    60ba:	78d8      	ldrb	r0, [r3, #3]
    60bc:	f002 fb94 	bl	87e8 <rt_tsk_delete>
    60c0:	0003      	movs	r3, r0
    60c2:	2081      	movs	r0, #129	; 0x81
    60c4:	2bff      	cmp	r3, #255	; 0xff
    60c6:	d006      	beq.n	60d6 <svcThreadTerminate+0x3a>
    60c8:	2c00      	cmp	r4, #0
    60ca:	d005      	beq.n	60d8 <svcThreadTerminate+0x3c>
    60cc:	0021      	movs	r1, r4
    60ce:	4803      	ldr	r0, [pc, #12]	; (60dc <svcThreadTerminate+0x40>)
    60d0:	f001 fa6a 	bl	75a8 <rt_free_mem>
    60d4:	2000      	movs	r0, #0
    60d6:	bd10      	pop	{r4, pc}
    60d8:	2000      	movs	r0, #0
    60da:	e7fc      	b.n	60d6 <svcThreadTerminate+0x3a>
    60dc:	200039f8 	.word	0x200039f8

000060e0 <svcThreadYield>:
    60e0:	b510      	push	{r4, lr}
    60e2:	f002 fa8b 	bl	85fc <rt_tsk_pass>
    60e6:	2000      	movs	r0, #0
    60e8:	bd10      	pop	{r4, pc}
    60ea:	46c0      	nop			; (mov r8, r8)

000060ec <svcThreadSetPriority>:
    60ec:	0003      	movs	r3, r0
    60ee:	b510      	push	{r4, lr}
    60f0:	2080      	movs	r0, #128	; 0x80
    60f2:	2b00      	cmp	r3, #0
    60f4:	d008      	beq.n	6108 <svcThreadSetPriority+0x1c>
    60f6:	079a      	lsls	r2, r3, #30
    60f8:	d106      	bne.n	6108 <svcThreadSetPriority+0x1c>
    60fa:	781a      	ldrb	r2, [r3, #0]
    60fc:	2a00      	cmp	r2, #0
    60fe:	d103      	bne.n	6108 <svcThreadSetPriority+0x1c>
    6100:	1cca      	adds	r2, r1, #3
    6102:	2086      	movs	r0, #134	; 0x86
    6104:	2a06      	cmp	r2, #6
    6106:	d900      	bls.n	610a <svcThreadSetPriority+0x1e>
    6108:	bd10      	pop	{r4, pc}
    610a:	3104      	adds	r1, #4
    610c:	78d8      	ldrb	r0, [r3, #3]
    610e:	b2c9      	uxtb	r1, r1
    6110:	f002 fa94 	bl	863c <rt_tsk_prio>
    6114:	0003      	movs	r3, r0
    6116:	2081      	movs	r0, #129	; 0x81
    6118:	2bff      	cmp	r3, #255	; 0xff
    611a:	d0f5      	beq.n	6108 <svcThreadSetPriority+0x1c>
    611c:	2000      	movs	r0, #0
    611e:	e7f3      	b.n	6108 <svcThreadSetPriority+0x1c>

00006120 <svcThreadGetPriority>:
    6120:	0003      	movs	r3, r0
    6122:	2084      	movs	r0, #132	; 0x84
    6124:	2b00      	cmp	r3, #0
    6126:	d006      	beq.n	6136 <svcThreadGetPriority+0x16>
    6128:	079a      	lsls	r2, r3, #30
    612a:	d104      	bne.n	6136 <svcThreadGetPriority+0x16>
    612c:	781a      	ldrb	r2, [r3, #0]
    612e:	2a00      	cmp	r2, #0
    6130:	d101      	bne.n	6136 <svcThreadGetPriority+0x16>
    6132:	7898      	ldrb	r0, [r3, #2]
    6134:	3804      	subs	r0, #4
    6136:	4770      	bx	lr

00006138 <osThreadCreate>:
    6138:	b5f0      	push	{r4, r5, r6, r7, lr}
    613a:	4647      	mov	r7, r8
    613c:	0004      	movs	r4, r0
    613e:	b480      	push	{r7}
    6140:	000d      	movs	r5, r1
    6142:	f3ef 8105 	mrs	r1, IPSR
    6146:	2900      	cmp	r1, #0
    6148:	d132      	bne.n	61b0 <osThreadCreate+0x78>
    614a:	f3ef 8114 	mrs	r1, CONTROL
    614e:	07c9      	lsls	r1, r1, #31
    6150:	d507      	bpl.n	6162 <osThreadCreate+0x2a>
    6152:	0020      	movs	r0, r4
    6154:	0029      	movs	r1, r5
    6156:	4f23      	ldr	r7, [pc, #140]	; (61e4 <osThreadCreate+0xac>)
    6158:	46bc      	mov	ip, r7
    615a:	df00      	svc	0
    615c:	bc04      	pop	{r2}
    615e:	4690      	mov	r8, r2
    6160:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6162:	491c      	ldr	r1, [pc, #112]	; (61d4 <osThreadCreate+0x9c>)
    6164:	7809      	ldrb	r1, [r1, #0]
    6166:	2900      	cmp	r1, #0
    6168:	d1f3      	bne.n	6152 <osThreadCreate+0x1a>
    616a:	2800      	cmp	r0, #0
    616c:	d020      	beq.n	61b0 <osThreadCreate+0x78>
    616e:	6800      	ldr	r0, [r0, #0]
    6170:	2800      	cmp	r0, #0
    6172:	d01d      	beq.n	61b0 <osThreadCreate+0x78>
    6174:	6863      	ldr	r3, [r4, #4]
    6176:	1cda      	adds	r2, r3, #3
    6178:	2a06      	cmp	r2, #6
    617a:	d819      	bhi.n	61b0 <osThreadCreate+0x78>
    617c:	68e1      	ldr	r1, [r4, #12]
    617e:	2900      	cmp	r1, #0
    6180:	d018      	beq.n	61b4 <osThreadCreate+0x7c>
    6182:	4e15      	ldr	r6, [pc, #84]	; (61d8 <osThreadCreate+0xa0>)
    6184:	0030      	movs	r0, r6
    6186:	f001 f9ed 	bl	7564 <rt_alloc_mem>
    618a:	4680      	mov	r8, r0
    618c:	2800      	cmp	r0, #0
    618e:	d00f      	beq.n	61b0 <osThreadCreate+0x78>
    6190:	6863      	ldr	r3, [r4, #4]
    6192:	6820      	ldr	r0, [r4, #0]
    6194:	1d19      	adds	r1, r3, #4
    6196:	68e3      	ldr	r3, [r4, #12]
    6198:	4642      	mov	r2, r8
    619a:	021b      	lsls	r3, r3, #8
    619c:	4319      	orrs	r1, r3
    619e:	002b      	movs	r3, r5
    61a0:	f002 faa8 	bl	86f4 <rt_tsk_create>
    61a4:	2800      	cmp	r0, #0
    61a6:	d10c      	bne.n	61c2 <osThreadCreate+0x8a>
    61a8:	4641      	mov	r1, r8
    61aa:	0030      	movs	r0, r6
    61ac:	f001 f9fc 	bl	75a8 <rt_free_mem>
    61b0:	2000      	movs	r0, #0
    61b2:	e7d3      	b.n	615c <osThreadCreate+0x24>
    61b4:	1d19      	adds	r1, r3, #4
    61b6:	2200      	movs	r2, #0
    61b8:	002b      	movs	r3, r5
    61ba:	f002 fa9b 	bl	86f4 <rt_tsk_create>
    61be:	2800      	cmp	r0, #0
    61c0:	d0f6      	beq.n	61b0 <osThreadCreate+0x78>
    61c2:	4b06      	ldr	r3, [pc, #24]	; (61dc <osThreadCreate+0xa4>)
    61c4:	3801      	subs	r0, #1
    61c6:	0080      	lsls	r0, r0, #2
    61c8:	58c0      	ldr	r0, [r0, r3]
    61ca:	4a05      	ldr	r2, [pc, #20]	; (61e0 <osThreadCreate+0xa8>)
    61cc:	6a83      	ldr	r3, [r0, #40]	; 0x28
    61ce:	635a      	str	r2, [r3, #52]	; 0x34
    61d0:	e7c4      	b.n	615c <osThreadCreate+0x24>
    61d2:	46c0      	nop			; (mov r8, r8)
    61d4:	20006081 	.word	0x20006081
    61d8:	200039f8 	.word	0x200039f8
    61dc:	20004cdc 	.word	0x20004cdc
    61e0:	00005c41 	.word	0x00005c41
    61e4:	00006009 	.word	0x00006009

000061e8 <osThreadGetId>:
    61e8:	b590      	push	{r4, r7, lr}
    61ea:	f3ef 8405 	mrs	r4, IPSR
    61ee:	2c00      	cmp	r4, #0
    61f0:	d103      	bne.n	61fa <osThreadGetId+0x12>
    61f2:	4f03      	ldr	r7, [pc, #12]	; (6200 <osThreadGetId+0x18>)
    61f4:	46bc      	mov	ip, r7
    61f6:	df00      	svc	0
    61f8:	bd90      	pop	{r4, r7, pc}
    61fa:	2000      	movs	r0, #0
    61fc:	e7fc      	b.n	61f8 <osThreadGetId+0x10>
    61fe:	0000      	.short	0x0000
    6200:	00006081 	.word	0x00006081

00006204 <osThreadTerminate>:
    6204:	b5b0      	push	{r4, r5, r7, lr}
    6206:	0005      	movs	r5, r0
    6208:	f3ef 8405 	mrs	r4, IPSR
    620c:	2082      	movs	r0, #130	; 0x82
    620e:	2c00      	cmp	r4, #0
    6210:	d000      	beq.n	6214 <osThreadTerminate+0x10>
    6212:	bdb0      	pop	{r4, r5, r7, pc}
    6214:	0028      	movs	r0, r5
    6216:	4f02      	ldr	r7, [pc, #8]	; (6220 <osThreadTerminate+0x1c>)
    6218:	46bc      	mov	ip, r7
    621a:	df00      	svc	0
    621c:	e7f9      	b.n	6212 <osThreadTerminate+0xe>
    621e:	0000      	.short	0x0000
    6220:	0000609d 	.word	0x0000609d

00006224 <osThreadYield>:
    6224:	b5b0      	push	{r4, r5, r7, lr}
    6226:	f3ef 8405 	mrs	r4, IPSR
    622a:	2582      	movs	r5, #130	; 0x82
    622c:	2c00      	cmp	r4, #0
    622e:	d001      	beq.n	6234 <osThreadYield+0x10>
    6230:	0028      	movs	r0, r5
    6232:	bdb0      	pop	{r4, r5, r7, pc}
    6234:	4f02      	ldr	r7, [pc, #8]	; (6240 <osThreadYield+0x1c>)
    6236:	46bc      	mov	ip, r7
    6238:	df00      	svc	0
    623a:	0005      	movs	r5, r0
    623c:	e7f8      	b.n	6230 <osThreadYield+0xc>
    623e:	0000      	.short	0x0000
    6240:	000060e1 	.word	0x000060e1

00006244 <osThreadSetPriority>:
    6244:	b5b0      	push	{r4, r5, r7, lr}
    6246:	0005      	movs	r5, r0
    6248:	f3ef 8405 	mrs	r4, IPSR
    624c:	2082      	movs	r0, #130	; 0x82
    624e:	2c00      	cmp	r4, #0
    6250:	d000      	beq.n	6254 <osThreadSetPriority+0x10>
    6252:	bdb0      	pop	{r4, r5, r7, pc}
    6254:	0028      	movs	r0, r5
    6256:	4f02      	ldr	r7, [pc, #8]	; (6260 <osThreadSetPriority+0x1c>)
    6258:	46bc      	mov	ip, r7
    625a:	df00      	svc	0
    625c:	e7f9      	b.n	6252 <osThreadSetPriority+0xe>
    625e:	0000      	.short	0x0000
    6260:	000060ed 	.word	0x000060ed

00006264 <osThreadGetPriority>:
    6264:	b5b0      	push	{r4, r5, r7, lr}
    6266:	0005      	movs	r5, r0
    6268:	f3ef 8405 	mrs	r4, IPSR
    626c:	2084      	movs	r0, #132	; 0x84
    626e:	2c00      	cmp	r4, #0
    6270:	d000      	beq.n	6274 <osThreadGetPriority+0x10>
    6272:	bdb0      	pop	{r4, r5, r7, pc}
    6274:	0028      	movs	r0, r5
    6276:	4f02      	ldr	r7, [pc, #8]	; (6280 <osThreadGetPriority+0x1c>)
    6278:	46bc      	mov	ip, r7
    627a:	df00      	svc	0
    627c:	e7f9      	b.n	6272 <osThreadGetPriority+0xe>
    627e:	0000      	.short	0x0000
    6280:	00006121 	.word	0x00006121

00006284 <svcDelay>:
    6284:	b500      	push	{lr}
    6286:	b083      	sub	sp, #12
    6288:	2800      	cmp	r0, #0
    628a:	d019      	beq.n	62c0 <svcDelay+0x3c>
    628c:	1c43      	adds	r3, r0, #1
    628e:	d01c      	beq.n	62ca <svcDelay+0x46>
    6290:	4b10      	ldr	r3, [pc, #64]	; (62d4 <svcDelay+0x50>)
    6292:	4298      	cmp	r0, r3
    6294:	d817      	bhi.n	62c6 <svcDelay+0x42>
    6296:	4b10      	ldr	r3, [pc, #64]	; (62d8 <svcDelay+0x54>)
    6298:	681b      	ldr	r3, [r3, #0]
    629a:	9301      	str	r3, [sp, #4]
    629c:	23fa      	movs	r3, #250	; 0xfa
    629e:	009b      	lsls	r3, r3, #2
    62a0:	4358      	muls	r0, r3
    62a2:	9b01      	ldr	r3, [sp, #4]
    62a4:	9901      	ldr	r1, [sp, #4]
    62a6:	3b01      	subs	r3, #1
    62a8:	18c0      	adds	r0, r0, r3
    62aa:	f7fe fbdb 	bl	4a64 <__aeabi_uidiv>
    62ae:	4b0b      	ldr	r3, [pc, #44]	; (62dc <svcDelay+0x58>)
    62b0:	0002      	movs	r2, r0
    62b2:	0018      	movs	r0, r3
    62b4:	429a      	cmp	r2, r3
    62b6:	d90a      	bls.n	62ce <svcDelay+0x4a>
    62b8:	f001 fb34 	bl	7924 <rt_dly_wait>
    62bc:	2040      	movs	r0, #64	; 0x40
    62be:	e000      	b.n	62c2 <svcDelay+0x3e>
    62c0:	2000      	movs	r0, #0
    62c2:	b003      	add	sp, #12
    62c4:	bd00      	pop	{pc}
    62c6:	4805      	ldr	r0, [pc, #20]	; (62dc <svcDelay+0x58>)
    62c8:	e7f6      	b.n	62b8 <svcDelay+0x34>
    62ca:	4805      	ldr	r0, [pc, #20]	; (62e0 <svcDelay+0x5c>)
    62cc:	e7f4      	b.n	62b8 <svcDelay+0x34>
    62ce:	b290      	uxth	r0, r2
    62d0:	e7f2      	b.n	62b8 <svcDelay+0x34>
    62d2:	46c0      	nop			; (mov r8, r8)
    62d4:	003d0900 	.word	0x003d0900
    62d8:	00008cf8 	.word	0x00008cf8
    62dc:	0000fffe 	.word	0x0000fffe
    62e0:	0000ffff 	.word	0x0000ffff

000062e4 <osDelay>:
    62e4:	b5b0      	push	{r4, r5, r7, lr}
    62e6:	0005      	movs	r5, r0
    62e8:	f3ef 8405 	mrs	r4, IPSR
    62ec:	2082      	movs	r0, #130	; 0x82
    62ee:	2c00      	cmp	r4, #0
    62f0:	d000      	beq.n	62f4 <osDelay+0x10>
    62f2:	bdb0      	pop	{r4, r5, r7, pc}
    62f4:	0028      	movs	r0, r5
    62f6:	4f02      	ldr	r7, [pc, #8]	; (6300 <osDelay+0x1c>)
    62f8:	46bc      	mov	ip, r7
    62fa:	df00      	svc	0
    62fc:	e7f9      	b.n	62f2 <osDelay+0xe>
    62fe:	0000      	.short	0x0000
    6300:	00006285 	.word	0x00006285

00006304 <osWait>:
    6304:	23ff      	movs	r3, #255	; 0xff
    6306:	6003      	str	r3, [r0, #0]
    6308:	4770      	bx	lr
    630a:	46c0      	nop			; (mov r8, r8)

0000630c <svcTimerCreate>:
    630c:	b510      	push	{r4, lr}
    630e:	2800      	cmp	r0, #0
    6310:	d016      	beq.n	6340 <svcTimerCreate+0x34>
    6312:	6803      	ldr	r3, [r0, #0]
    6314:	2b00      	cmp	r3, #0
    6316:	d013      	beq.n	6340 <svcTimerCreate+0x34>
    6318:	6843      	ldr	r3, [r0, #4]
    631a:	2b00      	cmp	r3, #0
    631c:	d010      	beq.n	6340 <svcTimerCreate+0x34>
    631e:	2901      	cmp	r1, #1
    6320:	d80e      	bhi.n	6340 <svcTimerCreate+0x34>
    6322:	4c08      	ldr	r4, [pc, #32]	; (6344 <svcTimerCreate+0x38>)
    6324:	6824      	ldr	r4, [r4, #0]
    6326:	2c00      	cmp	r4, #0
    6328:	d00a      	beq.n	6340 <svcTimerCreate+0x34>
    632a:	791c      	ldrb	r4, [r3, #4]
    632c:	2c00      	cmp	r4, #0
    632e:	d107      	bne.n	6340 <svcTimerCreate+0x34>
    6330:	6158      	str	r0, [r3, #20]
    6332:	0018      	movs	r0, r3
    6334:	601c      	str	r4, [r3, #0]
    6336:	3401      	adds	r4, #1
    6338:	711c      	strb	r4, [r3, #4]
    633a:	7159      	strb	r1, [r3, #5]
    633c:	611a      	str	r2, [r3, #16]
    633e:	bd10      	pop	{r4, pc}
    6340:	2000      	movs	r0, #0
    6342:	e7fc      	b.n	633e <svcTimerCreate+0x32>
    6344:	20004cec 	.word	0x20004cec

00006348 <svcTimerStart>:
    6348:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    634a:	0004      	movs	r4, r0
    634c:	2080      	movs	r0, #128	; 0x80
    634e:	07a3      	lsls	r3, r4, #30
    6350:	d104      	bne.n	635c <svcTimerStart+0x14>
    6352:	2c00      	cmp	r4, #0
    6354:	d002      	beq.n	635c <svcTimerStart+0x14>
    6356:	3006      	adds	r0, #6
    6358:	2900      	cmp	r1, #0
    635a:	d100      	bne.n	635e <svcTimerStart+0x16>
    635c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    635e:	22fa      	movs	r2, #250	; 0xfa
    6360:	4b2f      	ldr	r3, [pc, #188]	; (6420 <svcTimerStart+0xd8>)
    6362:	0092      	lsls	r2, r2, #2
    6364:	681e      	ldr	r6, [r3, #0]
    6366:	0008      	movs	r0, r1
    6368:	2300      	movs	r3, #0
    636a:	2100      	movs	r1, #0
    636c:	f7fe fdba 	bl	4ee4 <__aeabi_lmul>
    6370:	2700      	movs	r7, #0
    6372:	0002      	movs	r2, r0
    6374:	000b      	movs	r3, r1
    6376:	2001      	movs	r0, #1
    6378:	4240      	negs	r0, r0
    637a:	17c1      	asrs	r1, r0, #31
    637c:	1980      	adds	r0, r0, r6
    637e:	4179      	adcs	r1, r7
    6380:	1880      	adds	r0, r0, r2
    6382:	4159      	adcs	r1, r3
    6384:	003b      	movs	r3, r7
    6386:	0032      	movs	r2, r6
    6388:	f7fe fd8c 	bl	4ea4 <__aeabi_uldivmod>
    638c:	7923      	ldrb	r3, [r4, #4]
    638e:	2b01      	cmp	r3, #1
    6390:	d011      	beq.n	63b6 <svcTimerStart+0x6e>
    6392:	2b02      	cmp	r3, #2
    6394:	d10d      	bne.n	63b2 <svcTimerStart+0x6a>
    6396:	4d23      	ldr	r5, [pc, #140]	; (6424 <svcTimerStart+0xdc>)
    6398:	6829      	ldr	r1, [r5, #0]
    639a:	2900      	cmp	r1, #0
    639c:	d009      	beq.n	63b2 <svcTimerStart+0x6a>
    639e:	428c      	cmp	r4, r1
    63a0:	d03a      	beq.n	6418 <svcTimerStart+0xd0>
    63a2:	000a      	movs	r2, r1
    63a4:	e002      	b.n	63ac <svcTimerStart+0x64>
    63a6:	429c      	cmp	r4, r3
    63a8:	d028      	beq.n	63fc <svcTimerStart+0xb4>
    63aa:	001a      	movs	r2, r3
    63ac:	6813      	ldr	r3, [r2, #0]
    63ae:	2b00      	cmp	r3, #0
    63b0:	d1f9      	bne.n	63a6 <svcTimerStart+0x5e>
    63b2:	2081      	movs	r0, #129	; 0x81
    63b4:	e7d2      	b.n	635c <svcTimerStart+0x14>
    63b6:	2302      	movs	r3, #2
    63b8:	4d1a      	ldr	r5, [pc, #104]	; (6424 <svcTimerStart+0xdc>)
    63ba:	7123      	strb	r3, [r4, #4]
    63bc:	6829      	ldr	r1, [r5, #0]
    63be:	60e0      	str	r0, [r4, #12]
    63c0:	2900      	cmp	r1, #0
    63c2:	d00b      	beq.n	63dc <svcTimerStart+0x94>
    63c4:	688a      	ldr	r2, [r1, #8]
    63c6:	4290      	cmp	r0, r2
    63c8:	d204      	bcs.n	63d4 <svcTimerStart+0x8c>
    63ca:	e00f      	b.n	63ec <svcTimerStart+0xa4>
    63cc:	689a      	ldr	r2, [r3, #8]
    63ce:	4282      	cmp	r2, r0
    63d0:	d80e      	bhi.n	63f0 <svcTimerStart+0xa8>
    63d2:	0019      	movs	r1, r3
    63d4:	680b      	ldr	r3, [r1, #0]
    63d6:	1a80      	subs	r0, r0, r2
    63d8:	2b00      	cmp	r3, #0
    63da:	d1f7      	bne.n	63cc <svcTimerStart+0x84>
    63dc:	2300      	movs	r3, #0
    63de:	60a0      	str	r0, [r4, #8]
    63e0:	6023      	str	r3, [r4, #0]
    63e2:	2900      	cmp	r1, #0
    63e4:	d015      	beq.n	6412 <svcTimerStart+0xca>
    63e6:	600c      	str	r4, [r1, #0]
    63e8:	2000      	movs	r0, #0
    63ea:	e7b7      	b.n	635c <svcTimerStart+0x14>
    63ec:	000b      	movs	r3, r1
    63ee:	2100      	movs	r1, #0
    63f0:	60a0      	str	r0, [r4, #8]
    63f2:	689a      	ldr	r2, [r3, #8]
    63f4:	6023      	str	r3, [r4, #0]
    63f6:	1a10      	subs	r0, r2, r0
    63f8:	6098      	str	r0, [r3, #8]
    63fa:	e7f2      	b.n	63e2 <svcTimerStart+0x9a>
    63fc:	6823      	ldr	r3, [r4, #0]
    63fe:	6013      	str	r3, [r2, #0]
    6400:	6823      	ldr	r3, [r4, #0]
    6402:	2b00      	cmp	r3, #0
    6404:	d0dc      	beq.n	63c0 <svcTimerStart+0x78>
    6406:	68a6      	ldr	r6, [r4, #8]
    6408:	689a      	ldr	r2, [r3, #8]
    640a:	46b4      	mov	ip, r6
    640c:	4462      	add	r2, ip
    640e:	609a      	str	r2, [r3, #8]
    6410:	e7d6      	b.n	63c0 <svcTimerStart+0x78>
    6412:	602c      	str	r4, [r5, #0]
    6414:	2000      	movs	r0, #0
    6416:	e7a1      	b.n	635c <svcTimerStart+0x14>
    6418:	6823      	ldr	r3, [r4, #0]
    641a:	602b      	str	r3, [r5, #0]
    641c:	0019      	movs	r1, r3
    641e:	e7f0      	b.n	6402 <svcTimerStart+0xba>
    6420:	00008cf8 	.word	0x00008cf8
    6424:	20006084 	.word	0x20006084

00006428 <svcTimerStop>:
    6428:	0003      	movs	r3, r0
    642a:	2080      	movs	r0, #128	; 0x80
    642c:	079a      	lsls	r2, r3, #30
    642e:	d105      	bne.n	643c <svcTimerStop+0x14>
    6430:	2b00      	cmp	r3, #0
    6432:	d003      	beq.n	643c <svcTimerStop+0x14>
    6434:	791a      	ldrb	r2, [r3, #4]
    6436:	2a02      	cmp	r2, #2
    6438:	d001      	beq.n	643e <svcTimerStop+0x16>
    643a:	2081      	movs	r0, #129	; 0x81
    643c:	4770      	bx	lr
    643e:	2201      	movs	r2, #1
    6440:	480e      	ldr	r0, [pc, #56]	; (647c <svcTimerStop+0x54>)
    6442:	711a      	strb	r2, [r3, #4]
    6444:	6801      	ldr	r1, [r0, #0]
    6446:	2900      	cmp	r1, #0
    6448:	d0f7      	beq.n	643a <svcTimerStop+0x12>
    644a:	428b      	cmp	r3, r1
    644c:	d105      	bne.n	645a <svcTimerStop+0x32>
    644e:	681a      	ldr	r2, [r3, #0]
    6450:	6002      	str	r2, [r0, #0]
    6452:	e009      	b.n	6468 <svcTimerStop+0x40>
    6454:	4293      	cmp	r3, r2
    6456:	d004      	beq.n	6462 <svcTimerStop+0x3a>
    6458:	0011      	movs	r1, r2
    645a:	680a      	ldr	r2, [r1, #0]
    645c:	2a00      	cmp	r2, #0
    645e:	d1f9      	bne.n	6454 <svcTimerStop+0x2c>
    6460:	e7eb      	b.n	643a <svcTimerStop+0x12>
    6462:	681a      	ldr	r2, [r3, #0]
    6464:	600a      	str	r2, [r1, #0]
    6466:	681a      	ldr	r2, [r3, #0]
    6468:	2a00      	cmp	r2, #0
    646a:	d004      	beq.n	6476 <svcTimerStop+0x4e>
    646c:	6891      	ldr	r1, [r2, #8]
    646e:	689b      	ldr	r3, [r3, #8]
    6470:	468c      	mov	ip, r1
    6472:	4463      	add	r3, ip
    6474:	6093      	str	r3, [r2, #8]
    6476:	2000      	movs	r0, #0
    6478:	e7e0      	b.n	643c <svcTimerStop+0x14>
    647a:	46c0      	nop			; (mov r8, r8)
    647c:	20006084 	.word	0x20006084

00006480 <svcTimerDelete>:
    6480:	0002      	movs	r2, r0
    6482:	2080      	movs	r0, #128	; 0x80
    6484:	0793      	lsls	r3, r2, #30
    6486:	d117      	bne.n	64b8 <svcTimerDelete+0x38>
    6488:	2a00      	cmp	r2, #0
    648a:	d015      	beq.n	64b8 <svcTimerDelete+0x38>
    648c:	7913      	ldrb	r3, [r2, #4]
    648e:	2b01      	cmp	r3, #1
    6490:	d00f      	beq.n	64b2 <svcTimerDelete+0x32>
    6492:	2081      	movs	r0, #129	; 0x81
    6494:	2b02      	cmp	r3, #2
    6496:	d10f      	bne.n	64b8 <svcTimerDelete+0x38>
    6498:	4810      	ldr	r0, [pc, #64]	; (64dc <svcTimerDelete+0x5c>)
    649a:	6801      	ldr	r1, [r0, #0]
    649c:	2900      	cmp	r1, #0
    649e:	d008      	beq.n	64b2 <svcTimerDelete+0x32>
    64a0:	428a      	cmp	r2, r1
    64a2:	d103      	bne.n	64ac <svcTimerDelete+0x2c>
    64a4:	e017      	b.n	64d6 <svcTimerDelete+0x56>
    64a6:	429a      	cmp	r2, r3
    64a8:	d007      	beq.n	64ba <svcTimerDelete+0x3a>
    64aa:	0019      	movs	r1, r3
    64ac:	680b      	ldr	r3, [r1, #0]
    64ae:	2b00      	cmp	r3, #0
    64b0:	d1f9      	bne.n	64a6 <svcTimerDelete+0x26>
    64b2:	2300      	movs	r3, #0
    64b4:	2000      	movs	r0, #0
    64b6:	7113      	strb	r3, [r2, #4]
    64b8:	4770      	bx	lr
    64ba:	6813      	ldr	r3, [r2, #0]
    64bc:	600b      	str	r3, [r1, #0]
    64be:	6813      	ldr	r3, [r2, #0]
    64c0:	2b00      	cmp	r3, #0
    64c2:	d0f6      	beq.n	64b2 <svcTimerDelete+0x32>
    64c4:	6890      	ldr	r0, [r2, #8]
    64c6:	6899      	ldr	r1, [r3, #8]
    64c8:	4684      	mov	ip, r0
    64ca:	4461      	add	r1, ip
    64cc:	6099      	str	r1, [r3, #8]
    64ce:	2300      	movs	r3, #0
    64d0:	2000      	movs	r0, #0
    64d2:	7113      	strb	r3, [r2, #4]
    64d4:	e7f0      	b.n	64b8 <svcTimerDelete+0x38>
    64d6:	6813      	ldr	r3, [r2, #0]
    64d8:	6003      	str	r3, [r0, #0]
    64da:	e7f1      	b.n	64c0 <svcTimerDelete+0x40>
    64dc:	20006084 	.word	0x20006084

000064e0 <svcTimerCall>:
    64e0:	0003      	movs	r3, r0
    64e2:	0782      	lsls	r2, r0, #30
    64e4:	d105      	bne.n	64f2 <svcTimerCall+0x12>
    64e6:	2800      	cmp	r0, #0
    64e8:	d006      	beq.n	64f8 <svcTimerCall+0x18>
    64ea:	6942      	ldr	r2, [r0, #20]
    64ec:	6919      	ldr	r1, [r3, #16]
    64ee:	6810      	ldr	r0, [r2, #0]
    64f0:	4770      	bx	lr
    64f2:	2000      	movs	r0, #0
    64f4:	2100      	movs	r1, #0
    64f6:	e7fb      	b.n	64f0 <svcTimerCall+0x10>
    64f8:	2000      	movs	r0, #0
    64fa:	0001      	movs	r1, r0
    64fc:	e7f8      	b.n	64f0 <svcTimerCall+0x10>
    64fe:	46c0      	nop			; (mov r8, r8)

00006500 <sysTimerTick>:
    6500:	b5f0      	push	{r4, r5, r6, r7, lr}
    6502:	464e      	mov	r6, r9
    6504:	4657      	mov	r7, sl
    6506:	4645      	mov	r5, r8
    6508:	b4e0      	push	{r5, r6, r7}
    650a:	4e2a      	ldr	r6, [pc, #168]	; (65b4 <sysTimerTick+0xb4>)
    650c:	6834      	ldr	r4, [r6, #0]
    650e:	2c00      	cmp	r4, #0
    6510:	d028      	beq.n	6564 <sysTimerTick+0x64>
    6512:	2200      	movs	r2, #0
    6514:	68a3      	ldr	r3, [r4, #8]
    6516:	4f28      	ldr	r7, [pc, #160]	; (65b8 <sysTimerTick+0xb8>)
    6518:	3b01      	subs	r3, #1
    651a:	60a3      	str	r3, [r4, #8]
    651c:	4690      	mov	r8, r2
    651e:	2b00      	cmp	r3, #0
    6520:	d120      	bne.n	6564 <sysTimerTick+0x64>
    6522:	6825      	ldr	r5, [r4, #0]
    6524:	683b      	ldr	r3, [r7, #0]
    6526:	6035      	str	r5, [r6, #0]
    6528:	4699      	mov	r9, r3
    652a:	2b00      	cmp	r3, #0
    652c:	d003      	beq.n	6536 <sysTimerTick+0x36>
    652e:	781b      	ldrb	r3, [r3, #0]
    6530:	469a      	mov	sl, r3
    6532:	2b01      	cmp	r3, #1
    6534:	d002      	beq.n	653c <sysTimerTick+0x3c>
    6536:	2004      	movs	r0, #4
    6538:	f7fb fae4 	bl	1b04 <os_error>
    653c:	4648      	mov	r0, r9
    653e:	f001 fb63 	bl	7c08 <rt_mbx_check>
    6542:	2800      	cmp	r0, #0
    6544:	d0f7      	beq.n	6536 <sysTimerTick+0x36>
    6546:	0021      	movs	r1, r4
    6548:	4648      	mov	r0, r9
    654a:	f001 fb61 	bl	7c10 <isr_mbx_send>
    654e:	7963      	ldrb	r3, [r4, #5]
    6550:	2b01      	cmp	r3, #1
    6552:	d00c      	beq.n	656e <sysTimerTick+0x6e>
    6554:	4653      	mov	r3, sl
    6556:	7123      	strb	r3, [r4, #4]
    6558:	2d00      	cmp	r5, #0
    655a:	d003      	beq.n	6564 <sysTimerTick+0x64>
    655c:	68ab      	ldr	r3, [r5, #8]
    655e:	002c      	movs	r4, r5
    6560:	2b00      	cmp	r3, #0
    6562:	d0de      	beq.n	6522 <sysTimerTick+0x22>
    6564:	bc1c      	pop	{r2, r3, r4}
    6566:	4690      	mov	r8, r2
    6568:	4699      	mov	r9, r3
    656a:	46a2      	mov	sl, r4
    656c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    656e:	6830      	ldr	r0, [r6, #0]
    6570:	68e2      	ldr	r2, [r4, #12]
    6572:	2800      	cmp	r0, #0
    6574:	d00b      	beq.n	658e <sysTimerTick+0x8e>
    6576:	6881      	ldr	r1, [r0, #8]
    6578:	4291      	cmp	r1, r2
    657a:	d904      	bls.n	6586 <sysTimerTick+0x86>
    657c:	e00e      	b.n	659c <sysTimerTick+0x9c>
    657e:	6899      	ldr	r1, [r3, #8]
    6580:	4291      	cmp	r1, r2
    6582:	d80d      	bhi.n	65a0 <sysTimerTick+0xa0>
    6584:	0018      	movs	r0, r3
    6586:	6803      	ldr	r3, [r0, #0]
    6588:	1a52      	subs	r2, r2, r1
    658a:	2b00      	cmp	r3, #0
    658c:	d1f7      	bne.n	657e <sysTimerTick+0x7e>
    658e:	4643      	mov	r3, r8
    6590:	60a2      	str	r2, [r4, #8]
    6592:	6023      	str	r3, [r4, #0]
    6594:	2800      	cmp	r0, #0
    6596:	d00a      	beq.n	65ae <sysTimerTick+0xae>
    6598:	6004      	str	r4, [r0, #0]
    659a:	e7dd      	b.n	6558 <sysTimerTick+0x58>
    659c:	0003      	movs	r3, r0
    659e:	2000      	movs	r0, #0
    65a0:	60a2      	str	r2, [r4, #8]
    65a2:	6899      	ldr	r1, [r3, #8]
    65a4:	6023      	str	r3, [r4, #0]
    65a6:	1a8a      	subs	r2, r1, r2
    65a8:	609a      	str	r2, [r3, #8]
    65aa:	2800      	cmp	r0, #0
    65ac:	d1f4      	bne.n	6598 <sysTimerTick+0x98>
    65ae:	6034      	str	r4, [r6, #0]
    65b0:	e7d2      	b.n	6558 <sysTimerTick+0x58>
    65b2:	46c0      	nop			; (mov r8, r8)
    65b4:	20006084 	.word	0x20006084
    65b8:	20004d10 	.word	0x20004d10

000065bc <sysUserTimerWakeupTime>:
    65bc:	4b04      	ldr	r3, [pc, #16]	; (65d0 <sysUserTimerWakeupTime+0x14>)
    65be:	681b      	ldr	r3, [r3, #0]
    65c0:	2b00      	cmp	r3, #0
    65c2:	d001      	beq.n	65c8 <sysUserTimerWakeupTime+0xc>
    65c4:	6898      	ldr	r0, [r3, #8]
    65c6:	4770      	bx	lr
    65c8:	2001      	movs	r0, #1
    65ca:	4240      	negs	r0, r0
    65cc:	e7fb      	b.n	65c6 <sysUserTimerWakeupTime+0xa>
    65ce:	46c0      	nop			; (mov r8, r8)
    65d0:	20006084 	.word	0x20006084

000065d4 <sysUserTimerUpdate>:
    65d4:	b570      	push	{r4, r5, r6, lr}
    65d6:	4d0e      	ldr	r5, [pc, #56]	; (6610 <sysUserTimerUpdate+0x3c>)
    65d8:	0004      	movs	r4, r0
    65da:	682b      	ldr	r3, [r5, #0]
    65dc:	2b00      	cmp	r3, #0
    65de:	d012      	beq.n	6606 <sysUserTimerUpdate+0x32>
    65e0:	2800      	cmp	r0, #0
    65e2:	d010      	beq.n	6606 <sysUserTimerUpdate+0x32>
    65e4:	689a      	ldr	r2, [r3, #8]
    65e6:	2601      	movs	r6, #1
    65e8:	4290      	cmp	r0, r2
    65ea:	d205      	bcs.n	65f8 <sysUserTimerUpdate+0x24>
    65ec:	e00c      	b.n	6608 <sysUserTimerUpdate+0x34>
    65ee:	2c00      	cmp	r4, #0
    65f0:	d009      	beq.n	6606 <sysUserTimerUpdate+0x32>
    65f2:	689a      	ldr	r2, [r3, #8]
    65f4:	42a2      	cmp	r2, r4
    65f6:	d807      	bhi.n	6608 <sysUserTimerUpdate+0x34>
    65f8:	609e      	str	r6, [r3, #8]
    65fa:	1aa4      	subs	r4, r4, r2
    65fc:	f7ff ff80 	bl	6500 <sysTimerTick>
    6600:	682b      	ldr	r3, [r5, #0]
    6602:	2b00      	cmp	r3, #0
    6604:	d1f3      	bne.n	65ee <sysUserTimerUpdate+0x1a>
    6606:	bd70      	pop	{r4, r5, r6, pc}
    6608:	1b14      	subs	r4, r2, r4
    660a:	609c      	str	r4, [r3, #8]
    660c:	e7fb      	b.n	6606 <sysUserTimerUpdate+0x32>
    660e:	46c0      	nop			; (mov r8, r8)
    6610:	20006084 	.word	0x20006084

00006614 <osTimerCreate>:
    6614:	b5b0      	push	{r4, r5, r7, lr}
    6616:	f3ef 8405 	mrs	r4, IPSR
    661a:	2c00      	cmp	r4, #0
    661c:	d124      	bne.n	6668 <osTimerCreate+0x54>
    661e:	f3ef 8414 	mrs	r4, CONTROL
    6622:	2501      	movs	r5, #1
    6624:	4225      	tst	r5, r4
    6626:	d003      	beq.n	6630 <osTimerCreate+0x1c>
    6628:	4f12      	ldr	r7, [pc, #72]	; (6674 <osTimerCreate+0x60>)
    662a:	46bc      	mov	ip, r7
    662c:	df00      	svc	0
    662e:	bdb0      	pop	{r4, r5, r7, pc}
    6630:	4c0e      	ldr	r4, [pc, #56]	; (666c <osTimerCreate+0x58>)
    6632:	7824      	ldrb	r4, [r4, #0]
    6634:	2c00      	cmp	r4, #0
    6636:	d1f7      	bne.n	6628 <osTimerCreate+0x14>
    6638:	2800      	cmp	r0, #0
    663a:	d015      	beq.n	6668 <osTimerCreate+0x54>
    663c:	6803      	ldr	r3, [r0, #0]
    663e:	2b00      	cmp	r3, #0
    6640:	d012      	beq.n	6668 <osTimerCreate+0x54>
    6642:	6843      	ldr	r3, [r0, #4]
    6644:	2b00      	cmp	r3, #0
    6646:	d00f      	beq.n	6668 <osTimerCreate+0x54>
    6648:	2901      	cmp	r1, #1
    664a:	d80d      	bhi.n	6668 <osTimerCreate+0x54>
    664c:	4c08      	ldr	r4, [pc, #32]	; (6670 <osTimerCreate+0x5c>)
    664e:	6824      	ldr	r4, [r4, #0]
    6650:	2c00      	cmp	r4, #0
    6652:	d009      	beq.n	6668 <osTimerCreate+0x54>
    6654:	791c      	ldrb	r4, [r3, #4]
    6656:	2c00      	cmp	r4, #0
    6658:	d106      	bne.n	6668 <osTimerCreate+0x54>
    665a:	6158      	str	r0, [r3, #20]
    665c:	601c      	str	r4, [r3, #0]
    665e:	711d      	strb	r5, [r3, #4]
    6660:	7159      	strb	r1, [r3, #5]
    6662:	611a      	str	r2, [r3, #16]
    6664:	0018      	movs	r0, r3
    6666:	e7e2      	b.n	662e <osTimerCreate+0x1a>
    6668:	2000      	movs	r0, #0
    666a:	e7e0      	b.n	662e <osTimerCreate+0x1a>
    666c:	20006081 	.word	0x20006081
    6670:	20004cec 	.word	0x20004cec
    6674:	0000630d 	.word	0x0000630d

00006678 <osTimerStart>:
    6678:	b5b0      	push	{r4, r5, r7, lr}
    667a:	0005      	movs	r5, r0
    667c:	f3ef 8405 	mrs	r4, IPSR
    6680:	2082      	movs	r0, #130	; 0x82
    6682:	2c00      	cmp	r4, #0
    6684:	d000      	beq.n	6688 <osTimerStart+0x10>
    6686:	bdb0      	pop	{r4, r5, r7, pc}
    6688:	0028      	movs	r0, r5
    668a:	4f02      	ldr	r7, [pc, #8]	; (6694 <osTimerStart+0x1c>)
    668c:	46bc      	mov	ip, r7
    668e:	df00      	svc	0
    6690:	e7f9      	b.n	6686 <osTimerStart+0xe>
    6692:	0000      	.short	0x0000
    6694:	00006349 	.word	0x00006349

00006698 <osTimerStop>:
    6698:	b5b0      	push	{r4, r5, r7, lr}
    669a:	0005      	movs	r5, r0
    669c:	f3ef 8405 	mrs	r4, IPSR
    66a0:	2082      	movs	r0, #130	; 0x82
    66a2:	2c00      	cmp	r4, #0
    66a4:	d000      	beq.n	66a8 <osTimerStop+0x10>
    66a6:	bdb0      	pop	{r4, r5, r7, pc}
    66a8:	0028      	movs	r0, r5
    66aa:	4f02      	ldr	r7, [pc, #8]	; (66b4 <osTimerStop+0x1c>)
    66ac:	46bc      	mov	ip, r7
    66ae:	df00      	svc	0
    66b0:	e7f9      	b.n	66a6 <osTimerStop+0xe>
    66b2:	0000      	.short	0x0000
    66b4:	00006429 	.word	0x00006429

000066b8 <osTimerDelete>:
    66b8:	b5b0      	push	{r4, r5, r7, lr}
    66ba:	0005      	movs	r5, r0
    66bc:	f3ef 8405 	mrs	r4, IPSR
    66c0:	2082      	movs	r0, #130	; 0x82
    66c2:	2c00      	cmp	r4, #0
    66c4:	d000      	beq.n	66c8 <osTimerDelete+0x10>
    66c6:	bdb0      	pop	{r4, r5, r7, pc}
    66c8:	0028      	movs	r0, r5
    66ca:	4f02      	ldr	r7, [pc, #8]	; (66d4 <osTimerDelete+0x1c>)
    66cc:	46bc      	mov	ip, r7
    66ce:	df00      	svc	0
    66d0:	e7f9      	b.n	66c6 <osTimerDelete+0xe>
    66d2:	0000      	.short	0x0000
    66d4:	00006481 	.word	0x00006481

000066d8 <osTimerCall>:
    66d8:	b590      	push	{r4, r7, lr}
    66da:	0004      	movs	r4, r0
    66dc:	0008      	movs	r0, r1
    66de:	4f03      	ldr	r7, [pc, #12]	; (66ec <osTimerCall+0x14>)
    66e0:	46bc      	mov	ip, r7
    66e2:	df00      	svc	0
    66e4:	6020      	str	r0, [r4, #0]
    66e6:	6061      	str	r1, [r4, #4]
    66e8:	0020      	movs	r0, r4
    66ea:	bd90      	pop	{r4, r7, pc}
    66ec:	000064e1 	.word	0x000064e1

000066f0 <osTimerThread>:
    66f0:	b5b0      	push	{r4, r5, r7, lr}
    66f2:	4d0a      	ldr	r5, [pc, #40]	; (671c <osTimerThread+0x2c>)
    66f4:	6828      	ldr	r0, [r5, #0]
    66f6:	f3ef 8105 	mrs	r1, IPSR
    66fa:	2900      	cmp	r1, #0
    66fc:	d1fb      	bne.n	66f6 <osTimerThread+0x6>
    66fe:	3901      	subs	r1, #1
    6700:	4f07      	ldr	r7, [pc, #28]	; (6720 <osTimerThread+0x30>)
    6702:	46bc      	mov	ip, r7
    6704:	df00      	svc	0
    6706:	2810      	cmp	r0, #16
    6708:	d1f4      	bne.n	66f4 <osTimerThread+0x4>
    670a:	0008      	movs	r0, r1
    670c:	4f05      	ldr	r7, [pc, #20]	; (6724 <osTimerThread+0x34>)
    670e:	46bc      	mov	ip, r7
    6710:	df00      	svc	0
    6712:	1e04      	subs	r4, r0, #0
    6714:	d0ee      	beq.n	66f4 <osTimerThread+0x4>
    6716:	0008      	movs	r0, r1
    6718:	47a0      	blx	r4
    671a:	e7eb      	b.n	66f4 <osTimerThread+0x4>
    671c:	20004d10 	.word	0x20004d10
    6720:	00006ed1 	.word	0x00006ed1
    6724:	000064e1 	.word	0x000064e1

00006728 <svcSignalSet>:
    6728:	b510      	push	{r4, lr}
    672a:	2800      	cmp	r0, #0
    672c:	d00e      	beq.n	674c <svcSignalSet+0x24>
    672e:	0783      	lsls	r3, r0, #30
    6730:	d10c      	bne.n	674c <svcSignalSet+0x24>
    6732:	7803      	ldrb	r3, [r0, #0]
    6734:	2b00      	cmp	r3, #0
    6736:	d109      	bne.n	674c <svcSignalSet+0x24>
    6738:	0c0b      	lsrs	r3, r1, #16
    673a:	d107      	bne.n	674c <svcSignalSet+0x24>
    673c:	78c3      	ldrb	r3, [r0, #3]
    673e:	8b04      	ldrh	r4, [r0, #24]
    6740:	b288      	uxth	r0, r1
    6742:	0019      	movs	r1, r3
    6744:	f001 fcbe 	bl	80c4 <rt_evt_set>
    6748:	0020      	movs	r0, r4
    674a:	e001      	b.n	6750 <svcSignalSet+0x28>
    674c:	2080      	movs	r0, #128	; 0x80
    674e:	0600      	lsls	r0, r0, #24
    6750:	bd10      	pop	{r4, pc}
    6752:	46c0      	nop			; (mov r8, r8)

00006754 <svcSignalClear>:
    6754:	b510      	push	{r4, lr}
    6756:	2800      	cmp	r0, #0
    6758:	d00e      	beq.n	6778 <svcSignalClear+0x24>
    675a:	0783      	lsls	r3, r0, #30
    675c:	d10c      	bne.n	6778 <svcSignalClear+0x24>
    675e:	7803      	ldrb	r3, [r0, #0]
    6760:	2b00      	cmp	r3, #0
    6762:	d109      	bne.n	6778 <svcSignalClear+0x24>
    6764:	0c0b      	lsrs	r3, r1, #16
    6766:	d107      	bne.n	6778 <svcSignalClear+0x24>
    6768:	78c3      	ldrb	r3, [r0, #3]
    676a:	8b04      	ldrh	r4, [r0, #24]
    676c:	b288      	uxth	r0, r1
    676e:	0019      	movs	r1, r3
    6770:	f001 fcd4 	bl	811c <rt_evt_clr>
    6774:	0020      	movs	r0, r4
    6776:	e001      	b.n	677c <svcSignalClear+0x28>
    6778:	2080      	movs	r0, #128	; 0x80
    677a:	0600      	lsls	r0, r0, #24
    677c:	bd10      	pop	{r4, pc}
    677e:	46c0      	nop			; (mov r8, r8)

00006780 <svcSignalWait>:
    6780:	b5f0      	push	{r4, r5, r6, r7, lr}
    6782:	0c04      	lsrs	r4, r0, #16
    6784:	b083      	sub	sp, #12
    6786:	0006      	movs	r6, r0
    6788:	000d      	movs	r5, r1
    678a:	0424      	lsls	r4, r4, #16
    678c:	d149      	bne.n	6822 <svcSignalWait+0xa2>
    678e:	2800      	cmp	r0, #0
    6790:	d026      	beq.n	67e0 <svcSignalWait+0x60>
    6792:	b287      	uxth	r7, r0
    6794:	2100      	movs	r1, #0
    6796:	2d00      	cmp	r5, #0
    6798:	d013      	beq.n	67c2 <svcSignalWait+0x42>
    679a:	1c6b      	adds	r3, r5, #1
    679c:	d05c      	beq.n	6858 <svcSignalWait+0xd8>
    679e:	4b2f      	ldr	r3, [pc, #188]	; (685c <svcSignalWait+0xdc>)
    67a0:	429d      	cmp	r5, r3
    67a2:	d84f      	bhi.n	6844 <svcSignalWait+0xc4>
    67a4:	20fa      	movs	r0, #250	; 0xfa
    67a6:	4b2e      	ldr	r3, [pc, #184]	; (6860 <svcSignalWait+0xe0>)
    67a8:	0080      	lsls	r0, r0, #2
    67aa:	4368      	muls	r0, r5
    67ac:	681b      	ldr	r3, [r3, #0]
    67ae:	9301      	str	r3, [sp, #4]
    67b0:	3b01      	subs	r3, #1
    67b2:	18c0      	adds	r0, r0, r3
    67b4:	9901      	ldr	r1, [sp, #4]
    67b6:	f7fe f955 	bl	4a64 <__aeabi_uidiv>
    67ba:	4b2a      	ldr	r3, [pc, #168]	; (6864 <svcSignalWait+0xe4>)
    67bc:	0019      	movs	r1, r3
    67be:	4298      	cmp	r0, r3
    67c0:	d946      	bls.n	6850 <svcSignalWait+0xd0>
    67c2:	2201      	movs	r2, #1
    67c4:	0038      	movs	r0, r7
    67c6:	f001 fc59 	bl	807c <rt_evt_wait>
    67ca:	2802      	cmp	r0, #2
    67cc:	d035      	beq.n	683a <svcSignalWait+0xba>
    67ce:	0028      	movs	r0, r5
    67d0:	1e45      	subs	r5, r0, #1
    67d2:	41a8      	sbcs	r0, r5
    67d4:	0180      	lsls	r0, r0, #6
    67d6:	0021      	movs	r1, r4
    67d8:	2200      	movs	r2, #0
    67da:	2300      	movs	r3, #0
    67dc:	b003      	add	sp, #12
    67de:	bdf0      	pop	{r4, r5, r6, r7, pc}
    67e0:	2900      	cmp	r1, #0
    67e2:	d021      	beq.n	6828 <svcSignalWait+0xa8>
    67e4:	1c4b      	adds	r3, r1, #1
    67e6:	d035      	beq.n	6854 <svcSignalWait+0xd4>
    67e8:	4b1c      	ldr	r3, [pc, #112]	; (685c <svcSignalWait+0xdc>)
    67ea:	4299      	cmp	r1, r3
    67ec:	d82c      	bhi.n	6848 <svcSignalWait+0xc8>
    67ee:	20fa      	movs	r0, #250	; 0xfa
    67f0:	4b1b      	ldr	r3, [pc, #108]	; (6860 <svcSignalWait+0xe0>)
    67f2:	0080      	lsls	r0, r0, #2
    67f4:	4348      	muls	r0, r1
    67f6:	681b      	ldr	r3, [r3, #0]
    67f8:	9301      	str	r3, [sp, #4]
    67fa:	3b01      	subs	r3, #1
    67fc:	18c0      	adds	r0, r0, r3
    67fe:	9901      	ldr	r1, [sp, #4]
    6800:	f7fe f930 	bl	4a64 <__aeabi_uidiv>
    6804:	4b17      	ldr	r3, [pc, #92]	; (6864 <svcSignalWait+0xe4>)
    6806:	0019      	movs	r1, r3
    6808:	4298      	cmp	r0, r3
    680a:	d91f      	bls.n	684c <svcSignalWait+0xcc>
    680c:	2200      	movs	r2, #0
    680e:	4816      	ldr	r0, [pc, #88]	; (6868 <svcSignalWait+0xe8>)
    6810:	f001 fc34 	bl	807c <rt_evt_wait>
    6814:	2802      	cmp	r0, #2
    6816:	d113      	bne.n	6840 <svcSignalWait+0xc0>
    6818:	4b14      	ldr	r3, [pc, #80]	; (686c <svcSignalWait+0xec>)
    681a:	2008      	movs	r0, #8
    681c:	681b      	ldr	r3, [r3, #0]
    681e:	8b5c      	ldrh	r4, [r3, #26]
    6820:	e7d9      	b.n	67d6 <svcSignalWait+0x56>
    6822:	2086      	movs	r0, #134	; 0x86
    6824:	2100      	movs	r1, #0
    6826:	e7d7      	b.n	67d8 <svcSignalWait+0x58>
    6828:	2200      	movs	r2, #0
    682a:	2100      	movs	r1, #0
    682c:	480e      	ldr	r0, [pc, #56]	; (6868 <svcSignalWait+0xe8>)
    682e:	f001 fc25 	bl	807c <rt_evt_wait>
    6832:	2802      	cmp	r0, #2
    6834:	d0f0      	beq.n	6818 <svcSignalWait+0x98>
    6836:	2000      	movs	r0, #0
    6838:	e7cd      	b.n	67d6 <svcSignalWait+0x56>
    683a:	0034      	movs	r4, r6
    683c:	2008      	movs	r0, #8
    683e:	e7ca      	b.n	67d6 <svcSignalWait+0x56>
    6840:	2040      	movs	r0, #64	; 0x40
    6842:	e7c8      	b.n	67d6 <svcSignalWait+0x56>
    6844:	4907      	ldr	r1, [pc, #28]	; (6864 <svcSignalWait+0xe4>)
    6846:	e7bc      	b.n	67c2 <svcSignalWait+0x42>
    6848:	4906      	ldr	r1, [pc, #24]	; (6864 <svcSignalWait+0xe4>)
    684a:	e7df      	b.n	680c <svcSignalWait+0x8c>
    684c:	b281      	uxth	r1, r0
    684e:	e7dd      	b.n	680c <svcSignalWait+0x8c>
    6850:	b281      	uxth	r1, r0
    6852:	e7b6      	b.n	67c2 <svcSignalWait+0x42>
    6854:	4904      	ldr	r1, [pc, #16]	; (6868 <svcSignalWait+0xe8>)
    6856:	e7d9      	b.n	680c <svcSignalWait+0x8c>
    6858:	4903      	ldr	r1, [pc, #12]	; (6868 <svcSignalWait+0xe8>)
    685a:	e7b2      	b.n	67c2 <svcSignalWait+0x42>
    685c:	003d0900 	.word	0x003d0900
    6860:	00008cf8 	.word	0x00008cf8
    6864:	0000fffe 	.word	0x0000fffe
    6868:	0000ffff 	.word	0x0000ffff
    686c:	200060c0 	.word	0x200060c0

00006870 <isrSignalSet>:
    6870:	b510      	push	{r4, lr}
    6872:	2800      	cmp	r0, #0
    6874:	d00e      	beq.n	6894 <isrSignalSet+0x24>
    6876:	0783      	lsls	r3, r0, #30
    6878:	d10c      	bne.n	6894 <isrSignalSet+0x24>
    687a:	7803      	ldrb	r3, [r0, #0]
    687c:	2b00      	cmp	r3, #0
    687e:	d109      	bne.n	6894 <isrSignalSet+0x24>
    6880:	0c0b      	lsrs	r3, r1, #16
    6882:	d107      	bne.n	6894 <isrSignalSet+0x24>
    6884:	78c3      	ldrb	r3, [r0, #3]
    6886:	8b04      	ldrh	r4, [r0, #24]
    6888:	b288      	uxth	r0, r1
    688a:	0019      	movs	r1, r3
    688c:	f001 fc52 	bl	8134 <isr_evt_set>
    6890:	0020      	movs	r0, r4
    6892:	e001      	b.n	6898 <isrSignalSet+0x28>
    6894:	2080      	movs	r0, #128	; 0x80
    6896:	0600      	lsls	r0, r0, #24
    6898:	bd10      	pop	{r4, pc}
    689a:	46c0      	nop			; (mov r8, r8)

0000689c <osSignalSet>:
    689c:	b5b0      	push	{r4, r5, r7, lr}
    689e:	f3ef 8405 	mrs	r4, IPSR
    68a2:	2c00      	cmp	r4, #0
    68a4:	d103      	bne.n	68ae <osSignalSet+0x12>
    68a6:	4f0c      	ldr	r7, [pc, #48]	; (68d8 <osSignalSet+0x3c>)
    68a8:	46bc      	mov	ip, r7
    68aa:	df00      	svc	0
    68ac:	bdb0      	pop	{r4, r5, r7, pc}
    68ae:	2800      	cmp	r0, #0
    68b0:	d00e      	beq.n	68d0 <osSignalSet+0x34>
    68b2:	0783      	lsls	r3, r0, #30
    68b4:	d10c      	bne.n	68d0 <osSignalSet+0x34>
    68b6:	7803      	ldrb	r3, [r0, #0]
    68b8:	2b00      	cmp	r3, #0
    68ba:	d109      	bne.n	68d0 <osSignalSet+0x34>
    68bc:	0c0b      	lsrs	r3, r1, #16
    68be:	d107      	bne.n	68d0 <osSignalSet+0x34>
    68c0:	78c3      	ldrb	r3, [r0, #3]
    68c2:	8b04      	ldrh	r4, [r0, #24]
    68c4:	b288      	uxth	r0, r1
    68c6:	0019      	movs	r1, r3
    68c8:	f001 fc34 	bl	8134 <isr_evt_set>
    68cc:	0020      	movs	r0, r4
    68ce:	e7ed      	b.n	68ac <osSignalSet+0x10>
    68d0:	2080      	movs	r0, #128	; 0x80
    68d2:	0600      	lsls	r0, r0, #24
    68d4:	e7ea      	b.n	68ac <osSignalSet+0x10>
    68d6:	0000      	.short	0x0000
    68d8:	00006729 	.word	0x00006729

000068dc <osSignalClear>:
    68dc:	b590      	push	{r4, r7, lr}
    68de:	f3ef 8405 	mrs	r4, IPSR
    68e2:	2c00      	cmp	r4, #0
    68e4:	d103      	bne.n	68ee <osSignalClear+0x12>
    68e6:	4f03      	ldr	r7, [pc, #12]	; (68f4 <osSignalClear+0x18>)
    68e8:	46bc      	mov	ip, r7
    68ea:	df00      	svc	0
    68ec:	bd90      	pop	{r4, r7, pc}
    68ee:	2080      	movs	r0, #128	; 0x80
    68f0:	0600      	lsls	r0, r0, #24
    68f2:	e7fb      	b.n	68ec <osSignalClear+0x10>
    68f4:	00006755 	.word	0x00006755

000068f8 <osSignalWait>:
    68f8:	b5f0      	push	{r4, r5, r6, r7, lr}
    68fa:	0004      	movs	r4, r0
    68fc:	f3ef 8505 	mrs	r5, IPSR
    6900:	2d00      	cmp	r5, #0
    6902:	d109      	bne.n	6918 <osSignalWait+0x20>
    6904:	0008      	movs	r0, r1
    6906:	0011      	movs	r1, r2
    6908:	4f05      	ldr	r7, [pc, #20]	; (6920 <osSignalWait+0x28>)
    690a:	46bc      	mov	ip, r7
    690c:	df00      	svc	0
    690e:	6020      	str	r0, [r4, #0]
    6910:	6061      	str	r1, [r4, #4]
    6912:	60a2      	str	r2, [r4, #8]
    6914:	0020      	movs	r0, r4
    6916:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6918:	2382      	movs	r3, #130	; 0x82
    691a:	6003      	str	r3, [r0, #0]
    691c:	e7fa      	b.n	6914 <osSignalWait+0x1c>
    691e:	0000      	.short	0x0000
    6920:	00006781 	.word	0x00006781

00006924 <svcMutexCreate>:
    6924:	b510      	push	{r4, lr}
    6926:	2800      	cmp	r0, #0
    6928:	d00a      	beq.n	6940 <svcMutexCreate+0x1c>
    692a:	6804      	ldr	r4, [r0, #0]
    692c:	2c00      	cmp	r4, #0
    692e:	d007      	beq.n	6940 <svcMutexCreate+0x1c>
    6930:	7823      	ldrb	r3, [r4, #0]
    6932:	2b00      	cmp	r3, #0
    6934:	d104      	bne.n	6940 <svcMutexCreate+0x1c>
    6936:	0020      	movs	r0, r4
    6938:	f000 feb4 	bl	76a4 <rt_mut_init>
    693c:	0020      	movs	r0, r4
    693e:	bd10      	pop	{r4, pc}
    6940:	2000      	movs	r0, #0
    6942:	e7fc      	b.n	693e <svcMutexCreate+0x1a>

00006944 <svcMutexWait>:
    6944:	b510      	push	{r4, lr}
    6946:	0004      	movs	r4, r0
    6948:	b082      	sub	sp, #8
    694a:	2080      	movs	r0, #128	; 0x80
    694c:	07a3      	lsls	r3, r4, #30
    694e:	d104      	bne.n	695a <svcMutexWait+0x16>
    6950:	2c00      	cmp	r4, #0
    6952:	d002      	beq.n	695a <svcMutexWait+0x16>
    6954:	7823      	ldrb	r3, [r4, #0]
    6956:	2b03      	cmp	r3, #3
    6958:	d001      	beq.n	695e <svcMutexWait+0x1a>
    695a:	b002      	add	sp, #8
    695c:	bd10      	pop	{r4, pc}
    695e:	2900      	cmp	r1, #0
    6960:	d01b      	beq.n	699a <svcMutexWait+0x56>
    6962:	1c4b      	adds	r3, r1, #1
    6964:	d025      	beq.n	69b2 <svcMutexWait+0x6e>
    6966:	4b16      	ldr	r3, [pc, #88]	; (69c0 <svcMutexWait+0x7c>)
    6968:	4299      	cmp	r1, r3
    696a:	d824      	bhi.n	69b6 <svcMutexWait+0x72>
    696c:	20fa      	movs	r0, #250	; 0xfa
    696e:	4b15      	ldr	r3, [pc, #84]	; (69c4 <svcMutexWait+0x80>)
    6970:	0080      	lsls	r0, r0, #2
    6972:	4341      	muls	r1, r0
    6974:	681b      	ldr	r3, [r3, #0]
    6976:	9301      	str	r3, [sp, #4]
    6978:	3b01      	subs	r3, #1
    697a:	1858      	adds	r0, r3, r1
    697c:	9901      	ldr	r1, [sp, #4]
    697e:	f7fe f871 	bl	4a64 <__aeabi_uidiv>
    6982:	4b11      	ldr	r3, [pc, #68]	; (69c8 <svcMutexWait+0x84>)
    6984:	0019      	movs	r1, r3
    6986:	4298      	cmp	r0, r3
    6988:	d917      	bls.n	69ba <svcMutexWait+0x76>
    698a:	0020      	movs	r0, r4
    698c:	f000 ff86 	bl	789c <rt_mut_wait>
    6990:	0003      	movs	r3, r0
    6992:	2801      	cmp	r0, #1
    6994:	d108      	bne.n	69a8 <svcMutexWait+0x64>
    6996:	20c1      	movs	r0, #193	; 0xc1
    6998:	e7df      	b.n	695a <svcMutexWait+0x16>
    699a:	2100      	movs	r1, #0
    699c:	0020      	movs	r0, r4
    699e:	f000 ff7d 	bl	789c <rt_mut_wait>
    69a2:	0003      	movs	r3, r0
    69a4:	2801      	cmp	r0, #1
    69a6:	d002      	beq.n	69ae <svcMutexWait+0x6a>
    69a8:	2000      	movs	r0, #0
    69aa:	2bff      	cmp	r3, #255	; 0xff
    69ac:	d1d5      	bne.n	695a <svcMutexWait+0x16>
    69ae:	2081      	movs	r0, #129	; 0x81
    69b0:	e7d3      	b.n	695a <svcMutexWait+0x16>
    69b2:	4906      	ldr	r1, [pc, #24]	; (69cc <svcMutexWait+0x88>)
    69b4:	e7e9      	b.n	698a <svcMutexWait+0x46>
    69b6:	4904      	ldr	r1, [pc, #16]	; (69c8 <svcMutexWait+0x84>)
    69b8:	e7e7      	b.n	698a <svcMutexWait+0x46>
    69ba:	b281      	uxth	r1, r0
    69bc:	e7e5      	b.n	698a <svcMutexWait+0x46>
    69be:	46c0      	nop			; (mov r8, r8)
    69c0:	003d0900 	.word	0x003d0900
    69c4:	00008cf8 	.word	0x00008cf8
    69c8:	0000fffe 	.word	0x0000fffe
    69cc:	0000ffff 	.word	0x0000ffff

000069d0 <svcMutexRelease>:
    69d0:	b510      	push	{r4, lr}
    69d2:	2380      	movs	r3, #128	; 0x80
    69d4:	0782      	lsls	r2, r0, #30
    69d6:	d104      	bne.n	69e2 <svcMutexRelease+0x12>
    69d8:	2800      	cmp	r0, #0
    69da:	d002      	beq.n	69e2 <svcMutexRelease+0x12>
    69dc:	7802      	ldrb	r2, [r0, #0]
    69de:	2a03      	cmp	r2, #3
    69e0:	d001      	beq.n	69e6 <svcMutexRelease+0x16>
    69e2:	0018      	movs	r0, r3
    69e4:	bd10      	pop	{r4, pc}
    69e6:	f000 fed5 	bl	7794 <rt_mut_release>
    69ea:	2381      	movs	r3, #129	; 0x81
    69ec:	28ff      	cmp	r0, #255	; 0xff
    69ee:	d0f8      	beq.n	69e2 <svcMutexRelease+0x12>
    69f0:	2300      	movs	r3, #0
    69f2:	e7f6      	b.n	69e2 <svcMutexRelease+0x12>

000069f4 <svcMutexDelete>:
    69f4:	b510      	push	{r4, lr}
    69f6:	2380      	movs	r3, #128	; 0x80
    69f8:	0782      	lsls	r2, r0, #30
    69fa:	d104      	bne.n	6a06 <svcMutexDelete+0x12>
    69fc:	2800      	cmp	r0, #0
    69fe:	d002      	beq.n	6a06 <svcMutexDelete+0x12>
    6a00:	7802      	ldrb	r2, [r0, #0]
    6a02:	2a03      	cmp	r2, #3
    6a04:	d001      	beq.n	6a0a <svcMutexDelete+0x16>
    6a06:	0018      	movs	r0, r3
    6a08:	bd10      	pop	{r4, pc}
    6a0a:	f000 fe53 	bl	76b4 <rt_mut_delete>
    6a0e:	2300      	movs	r3, #0
    6a10:	e7f9      	b.n	6a06 <svcMutexDelete+0x12>
    6a12:	46c0      	nop			; (mov r8, r8)

00006a14 <osMutexCreate>:
    6a14:	b5b0      	push	{r4, r5, r7, lr}
    6a16:	f3ef 8405 	mrs	r4, IPSR
    6a1a:	2c00      	cmp	r4, #0
    6a1c:	d119      	bne.n	6a52 <osMutexCreate+0x3e>
    6a1e:	f3ef 8414 	mrs	r4, CONTROL
    6a22:	07e4      	lsls	r4, r4, #31
    6a24:	d411      	bmi.n	6a4a <osMutexCreate+0x36>
    6a26:	4c0c      	ldr	r4, [pc, #48]	; (6a58 <osMutexCreate+0x44>)
    6a28:	7824      	ldrb	r4, [r4, #0]
    6a2a:	2c00      	cmp	r4, #0
    6a2c:	d10d      	bne.n	6a4a <osMutexCreate+0x36>
    6a2e:	2800      	cmp	r0, #0
    6a30:	d00f      	beq.n	6a52 <osMutexCreate+0x3e>
    6a32:	6804      	ldr	r4, [r0, #0]
    6a34:	2c00      	cmp	r4, #0
    6a36:	d00c      	beq.n	6a52 <osMutexCreate+0x3e>
    6a38:	7823      	ldrb	r3, [r4, #0]
    6a3a:	2000      	movs	r0, #0
    6a3c:	2b00      	cmp	r3, #0
    6a3e:	d107      	bne.n	6a50 <osMutexCreate+0x3c>
    6a40:	0020      	movs	r0, r4
    6a42:	f000 fe2f 	bl	76a4 <rt_mut_init>
    6a46:	0020      	movs	r0, r4
    6a48:	e002      	b.n	6a50 <osMutexCreate+0x3c>
    6a4a:	4f04      	ldr	r7, [pc, #16]	; (6a5c <osMutexCreate+0x48>)
    6a4c:	46bc      	mov	ip, r7
    6a4e:	df00      	svc	0
    6a50:	bdb0      	pop	{r4, r5, r7, pc}
    6a52:	2000      	movs	r0, #0
    6a54:	e7fc      	b.n	6a50 <osMutexCreate+0x3c>
    6a56:	46c0      	nop			; (mov r8, r8)
    6a58:	20006081 	.word	0x20006081
    6a5c:	00006925 	.word	0x00006925

00006a60 <osMutexWait>:
    6a60:	b5b0      	push	{r4, r5, r7, lr}
    6a62:	0005      	movs	r5, r0
    6a64:	f3ef 8405 	mrs	r4, IPSR
    6a68:	2082      	movs	r0, #130	; 0x82
    6a6a:	2c00      	cmp	r4, #0
    6a6c:	d000      	beq.n	6a70 <osMutexWait+0x10>
    6a6e:	bdb0      	pop	{r4, r5, r7, pc}
    6a70:	0028      	movs	r0, r5
    6a72:	4f02      	ldr	r7, [pc, #8]	; (6a7c <osMutexWait+0x1c>)
    6a74:	46bc      	mov	ip, r7
    6a76:	df00      	svc	0
    6a78:	e7f9      	b.n	6a6e <osMutexWait+0xe>
    6a7a:	0000      	.short	0x0000
    6a7c:	00006945 	.word	0x00006945

00006a80 <osMutexRelease>:
    6a80:	b5b0      	push	{r4, r5, r7, lr}
    6a82:	0005      	movs	r5, r0
    6a84:	f3ef 8405 	mrs	r4, IPSR
    6a88:	2082      	movs	r0, #130	; 0x82
    6a8a:	2c00      	cmp	r4, #0
    6a8c:	d000      	beq.n	6a90 <osMutexRelease+0x10>
    6a8e:	bdb0      	pop	{r4, r5, r7, pc}
    6a90:	0028      	movs	r0, r5
    6a92:	4f02      	ldr	r7, [pc, #8]	; (6a9c <osMutexRelease+0x1c>)
    6a94:	46bc      	mov	ip, r7
    6a96:	df00      	svc	0
    6a98:	e7f9      	b.n	6a8e <osMutexRelease+0xe>
    6a9a:	0000      	.short	0x0000
    6a9c:	000069d1 	.word	0x000069d1

00006aa0 <osMutexDelete>:
    6aa0:	b5b0      	push	{r4, r5, r7, lr}
    6aa2:	0005      	movs	r5, r0
    6aa4:	f3ef 8405 	mrs	r4, IPSR
    6aa8:	2082      	movs	r0, #130	; 0x82
    6aaa:	2c00      	cmp	r4, #0
    6aac:	d000      	beq.n	6ab0 <osMutexDelete+0x10>
    6aae:	bdb0      	pop	{r4, r5, r7, pc}
    6ab0:	0028      	movs	r0, r5
    6ab2:	4f02      	ldr	r7, [pc, #8]	; (6abc <osMutexDelete+0x1c>)
    6ab4:	46bc      	mov	ip, r7
    6ab6:	df00      	svc	0
    6ab8:	e7f9      	b.n	6aae <osMutexDelete+0xe>
    6aba:	0000      	.short	0x0000
    6abc:	000069f5 	.word	0x000069f5

00006ac0 <svcSemaphoreCreate>:
    6ac0:	b510      	push	{r4, lr}
    6ac2:	2800      	cmp	r0, #0
    6ac4:	d00e      	beq.n	6ae4 <svcSemaphoreCreate+0x24>
    6ac6:	6804      	ldr	r4, [r0, #0]
    6ac8:	2c00      	cmp	r4, #0
    6aca:	d00b      	beq.n	6ae4 <svcSemaphoreCreate+0x24>
    6acc:	7823      	ldrb	r3, [r4, #0]
    6ace:	2b00      	cmp	r3, #0
    6ad0:	d108      	bne.n	6ae4 <svcSemaphoreCreate+0x24>
    6ad2:	4b05      	ldr	r3, [pc, #20]	; (6ae8 <svcSemaphoreCreate+0x28>)
    6ad4:	4299      	cmp	r1, r3
    6ad6:	dc05      	bgt.n	6ae4 <svcSemaphoreCreate+0x24>
    6ad8:	0020      	movs	r0, r4
    6ada:	b289      	uxth	r1, r1
    6adc:	f000 ff4a 	bl	7974 <rt_sem_init>
    6ae0:	0020      	movs	r0, r4
    6ae2:	bd10      	pop	{r4, pc}
    6ae4:	2000      	movs	r0, #0
    6ae6:	e7fc      	b.n	6ae2 <svcSemaphoreCreate+0x22>
    6ae8:	0000ffff 	.word	0x0000ffff

00006aec <svcSemaphoreWait>:
    6aec:	b510      	push	{r4, lr}
    6aee:	0004      	movs	r4, r0
    6af0:	b082      	sub	sp, #8
    6af2:	0783      	lsls	r3, r0, #30
    6af4:	d111      	bne.n	6b1a <svcSemaphoreWait+0x2e>
    6af6:	2800      	cmp	r0, #0
    6af8:	d00f      	beq.n	6b1a <svcSemaphoreWait+0x2e>
    6afa:	7803      	ldrb	r3, [r0, #0]
    6afc:	2b02      	cmp	r3, #2
    6afe:	d10c      	bne.n	6b1a <svcSemaphoreWait+0x2e>
    6b00:	2300      	movs	r3, #0
    6b02:	2900      	cmp	r1, #0
    6b04:	d10c      	bne.n	6b20 <svcSemaphoreWait+0x34>
    6b06:	0019      	movs	r1, r3
    6b08:	0020      	movs	r0, r4
    6b0a:	f000 ff83 	bl	7a14 <rt_sem_wait>
    6b0e:	2801      	cmp	r0, #1
    6b10:	d023      	beq.n	6b5a <svcSemaphoreWait+0x6e>
    6b12:	8860      	ldrh	r0, [r4, #2]
    6b14:	3001      	adds	r0, #1
    6b16:	b002      	add	sp, #8
    6b18:	bd10      	pop	{r4, pc}
    6b1a:	2001      	movs	r0, #1
    6b1c:	4240      	negs	r0, r0
    6b1e:	e7fa      	b.n	6b16 <svcSemaphoreWait+0x2a>
    6b20:	1c4b      	adds	r3, r1, #1
    6b22:	d01c      	beq.n	6b5e <svcSemaphoreWait+0x72>
    6b24:	4b0f      	ldr	r3, [pc, #60]	; (6b64 <svcSemaphoreWait+0x78>)
    6b26:	4299      	cmp	r1, r3
    6b28:	d810      	bhi.n	6b4c <svcSemaphoreWait+0x60>
    6b2a:	20fa      	movs	r0, #250	; 0xfa
    6b2c:	4b0e      	ldr	r3, [pc, #56]	; (6b68 <svcSemaphoreWait+0x7c>)
    6b2e:	0080      	lsls	r0, r0, #2
    6b30:	4341      	muls	r1, r0
    6b32:	681b      	ldr	r3, [r3, #0]
    6b34:	9301      	str	r3, [sp, #4]
    6b36:	3b01      	subs	r3, #1
    6b38:	1858      	adds	r0, r3, r1
    6b3a:	9901      	ldr	r1, [sp, #4]
    6b3c:	f7fd ff92 	bl	4a64 <__aeabi_uidiv>
    6b40:	4a0a      	ldr	r2, [pc, #40]	; (6b6c <svcSemaphoreWait+0x80>)
    6b42:	0013      	movs	r3, r2
    6b44:	4290      	cmp	r0, r2
    6b46:	d8de      	bhi.n	6b06 <svcSemaphoreWait+0x1a>
    6b48:	b283      	uxth	r3, r0
    6b4a:	e7dc      	b.n	6b06 <svcSemaphoreWait+0x1a>
    6b4c:	4b07      	ldr	r3, [pc, #28]	; (6b6c <svcSemaphoreWait+0x80>)
    6b4e:	0020      	movs	r0, r4
    6b50:	0019      	movs	r1, r3
    6b52:	f000 ff5f 	bl	7a14 <rt_sem_wait>
    6b56:	2801      	cmp	r0, #1
    6b58:	d1db      	bne.n	6b12 <svcSemaphoreWait+0x26>
    6b5a:	2000      	movs	r0, #0
    6b5c:	e7db      	b.n	6b16 <svcSemaphoreWait+0x2a>
    6b5e:	4b04      	ldr	r3, [pc, #16]	; (6b70 <svcSemaphoreWait+0x84>)
    6b60:	e7d1      	b.n	6b06 <svcSemaphoreWait+0x1a>
    6b62:	46c0      	nop			; (mov r8, r8)
    6b64:	003d0900 	.word	0x003d0900
    6b68:	00008cf8 	.word	0x00008cf8
    6b6c:	0000fffe 	.word	0x0000fffe
    6b70:	0000ffff 	.word	0x0000ffff

00006b74 <svcSemaphoreRelease>:
    6b74:	b510      	push	{r4, lr}
    6b76:	2380      	movs	r3, #128	; 0x80
    6b78:	0782      	lsls	r2, r0, #30
    6b7a:	d104      	bne.n	6b86 <svcSemaphoreRelease+0x12>
    6b7c:	2800      	cmp	r0, #0
    6b7e:	d002      	beq.n	6b86 <svcSemaphoreRelease+0x12>
    6b80:	7802      	ldrb	r2, [r0, #0]
    6b82:	2a02      	cmp	r2, #2
    6b84:	d001      	beq.n	6b8a <svcSemaphoreRelease+0x16>
    6b86:	0018      	movs	r0, r3
    6b88:	bd10      	pop	{r4, pc}
    6b8a:	8841      	ldrh	r1, [r0, #2]
    6b8c:	4a03      	ldr	r2, [pc, #12]	; (6b9c <svcSemaphoreRelease+0x28>)
    6b8e:	3301      	adds	r3, #1
    6b90:	4291      	cmp	r1, r2
    6b92:	d0f8      	beq.n	6b86 <svcSemaphoreRelease+0x12>
    6b94:	f000 ff28 	bl	79e8 <rt_sem_send>
    6b98:	2300      	movs	r3, #0
    6b9a:	e7f4      	b.n	6b86 <svcSemaphoreRelease+0x12>
    6b9c:	0000ffff 	.word	0x0000ffff

00006ba0 <svcSemaphoreDelete>:
    6ba0:	b510      	push	{r4, lr}
    6ba2:	2380      	movs	r3, #128	; 0x80
    6ba4:	0782      	lsls	r2, r0, #30
    6ba6:	d104      	bne.n	6bb2 <svcSemaphoreDelete+0x12>
    6ba8:	2800      	cmp	r0, #0
    6baa:	d002      	beq.n	6bb2 <svcSemaphoreDelete+0x12>
    6bac:	7802      	ldrb	r2, [r0, #0]
    6bae:	2a02      	cmp	r2, #2
    6bb0:	d001      	beq.n	6bb6 <svcSemaphoreDelete+0x16>
    6bb2:	0018      	movs	r0, r3
    6bb4:	bd10      	pop	{r4, pc}
    6bb6:	f000 fee3 	bl	7980 <rt_sem_delete>
    6bba:	2300      	movs	r3, #0
    6bbc:	e7f9      	b.n	6bb2 <svcSemaphoreDelete+0x12>
    6bbe:	46c0      	nop			; (mov r8, r8)

00006bc0 <isrSemaphoreRelease>:
    6bc0:	b510      	push	{r4, lr}
    6bc2:	2380      	movs	r3, #128	; 0x80
    6bc4:	0782      	lsls	r2, r0, #30
    6bc6:	d104      	bne.n	6bd2 <isrSemaphoreRelease+0x12>
    6bc8:	2800      	cmp	r0, #0
    6bca:	d002      	beq.n	6bd2 <isrSemaphoreRelease+0x12>
    6bcc:	7802      	ldrb	r2, [r0, #0]
    6bce:	2a02      	cmp	r2, #2
    6bd0:	d001      	beq.n	6bd6 <isrSemaphoreRelease+0x16>
    6bd2:	0018      	movs	r0, r3
    6bd4:	bd10      	pop	{r4, pc}
    6bd6:	8841      	ldrh	r1, [r0, #2]
    6bd8:	4a03      	ldr	r2, [pc, #12]	; (6be8 <isrSemaphoreRelease+0x28>)
    6bda:	3301      	adds	r3, #1
    6bdc:	4291      	cmp	r1, r2
    6bde:	d0f8      	beq.n	6bd2 <isrSemaphoreRelease+0x12>
    6be0:	f000 ff3a 	bl	7a58 <isr_sem_send>
    6be4:	2300      	movs	r3, #0
    6be6:	e7f4      	b.n	6bd2 <isrSemaphoreRelease+0x12>
    6be8:	0000ffff 	.word	0x0000ffff

00006bec <osSemaphoreCreate>:
    6bec:	b5b0      	push	{r4, r5, r7, lr}
    6bee:	f3ef 8405 	mrs	r4, IPSR
    6bf2:	2c00      	cmp	r4, #0
    6bf4:	d11c      	bne.n	6c30 <osSemaphoreCreate+0x44>
    6bf6:	f3ef 8414 	mrs	r4, CONTROL
    6bfa:	07e4      	lsls	r4, r4, #31
    6bfc:	d503      	bpl.n	6c06 <osSemaphoreCreate+0x1a>
    6bfe:	4f0f      	ldr	r7, [pc, #60]	; (6c3c <osSemaphoreCreate+0x50>)
    6c00:	46bc      	mov	ip, r7
    6c02:	df00      	svc	0
    6c04:	bdb0      	pop	{r4, r5, r7, pc}
    6c06:	4c0b      	ldr	r4, [pc, #44]	; (6c34 <osSemaphoreCreate+0x48>)
    6c08:	7824      	ldrb	r4, [r4, #0]
    6c0a:	2c00      	cmp	r4, #0
    6c0c:	d1f7      	bne.n	6bfe <osSemaphoreCreate+0x12>
    6c0e:	2800      	cmp	r0, #0
    6c10:	d00e      	beq.n	6c30 <osSemaphoreCreate+0x44>
    6c12:	6804      	ldr	r4, [r0, #0]
    6c14:	2c00      	cmp	r4, #0
    6c16:	d00b      	beq.n	6c30 <osSemaphoreCreate+0x44>
    6c18:	7823      	ldrb	r3, [r4, #0]
    6c1a:	2b00      	cmp	r3, #0
    6c1c:	d108      	bne.n	6c30 <osSemaphoreCreate+0x44>
    6c1e:	4b06      	ldr	r3, [pc, #24]	; (6c38 <osSemaphoreCreate+0x4c>)
    6c20:	4299      	cmp	r1, r3
    6c22:	dc05      	bgt.n	6c30 <osSemaphoreCreate+0x44>
    6c24:	0020      	movs	r0, r4
    6c26:	b289      	uxth	r1, r1
    6c28:	f000 fea4 	bl	7974 <rt_sem_init>
    6c2c:	0020      	movs	r0, r4
    6c2e:	e7e9      	b.n	6c04 <osSemaphoreCreate+0x18>
    6c30:	2000      	movs	r0, #0
    6c32:	e7e7      	b.n	6c04 <osSemaphoreCreate+0x18>
    6c34:	20006081 	.word	0x20006081
    6c38:	0000ffff 	.word	0x0000ffff
    6c3c:	00006ac1 	.word	0x00006ac1

00006c40 <osSemaphoreWait>:
    6c40:	b590      	push	{r4, r7, lr}
    6c42:	f3ef 8405 	mrs	r4, IPSR
    6c46:	2c00      	cmp	r4, #0
    6c48:	d103      	bne.n	6c52 <osSemaphoreWait+0x12>
    6c4a:	4f03      	ldr	r7, [pc, #12]	; (6c58 <osSemaphoreWait+0x18>)
    6c4c:	46bc      	mov	ip, r7
    6c4e:	df00      	svc	0
    6c50:	bd90      	pop	{r4, r7, pc}
    6c52:	2001      	movs	r0, #1
    6c54:	4240      	negs	r0, r0
    6c56:	e7fb      	b.n	6c50 <osSemaphoreWait+0x10>
    6c58:	00006aed 	.word	0x00006aed

00006c5c <osSemaphoreRelease>:
    6c5c:	b5b0      	push	{r4, r5, r7, lr}
    6c5e:	f3ef 8405 	mrs	r4, IPSR
    6c62:	2c00      	cmp	r4, #0
    6c64:	d105      	bne.n	6c72 <osSemaphoreRelease+0x16>
    6c66:	4f0c      	ldr	r7, [pc, #48]	; (6c98 <osSemaphoreRelease+0x3c>)
    6c68:	46bc      	mov	ip, r7
    6c6a:	df00      	svc	0
    6c6c:	0003      	movs	r3, r0
    6c6e:	0018      	movs	r0, r3
    6c70:	bdb0      	pop	{r4, r5, r7, pc}
    6c72:	2380      	movs	r3, #128	; 0x80
    6c74:	0782      	lsls	r2, r0, #30
    6c76:	d1fa      	bne.n	6c6e <osSemaphoreRelease+0x12>
    6c78:	2800      	cmp	r0, #0
    6c7a:	d0f8      	beq.n	6c6e <osSemaphoreRelease+0x12>
    6c7c:	7802      	ldrb	r2, [r0, #0]
    6c7e:	2a02      	cmp	r2, #2
    6c80:	d1f5      	bne.n	6c6e <osSemaphoreRelease+0x12>
    6c82:	8841      	ldrh	r1, [r0, #2]
    6c84:	4a03      	ldr	r2, [pc, #12]	; (6c94 <osSemaphoreRelease+0x38>)
    6c86:	3301      	adds	r3, #1
    6c88:	4291      	cmp	r1, r2
    6c8a:	d0f0      	beq.n	6c6e <osSemaphoreRelease+0x12>
    6c8c:	f000 fee4 	bl	7a58 <isr_sem_send>
    6c90:	2300      	movs	r3, #0
    6c92:	e7ec      	b.n	6c6e <osSemaphoreRelease+0x12>
    6c94:	0000ffff 	.word	0x0000ffff
    6c98:	00006b75 	.word	0x00006b75

00006c9c <osSemaphoreDelete>:
    6c9c:	b5b0      	push	{r4, r5, r7, lr}
    6c9e:	0005      	movs	r5, r0
    6ca0:	f3ef 8405 	mrs	r4, IPSR
    6ca4:	2082      	movs	r0, #130	; 0x82
    6ca6:	2c00      	cmp	r4, #0
    6ca8:	d000      	beq.n	6cac <osSemaphoreDelete+0x10>
    6caa:	bdb0      	pop	{r4, r5, r7, pc}
    6cac:	0028      	movs	r0, r5
    6cae:	4f02      	ldr	r7, [pc, #8]	; (6cb8 <osSemaphoreDelete+0x1c>)
    6cb0:	46bc      	mov	ip, r7
    6cb2:	df00      	svc	0
    6cb4:	e7f9      	b.n	6caa <osSemaphoreDelete+0xe>
    6cb6:	0000      	.short	0x0000
    6cb8:	00006ba1 	.word	0x00006ba1

00006cbc <svcPoolCreate>:
    6cbc:	b510      	push	{r4, lr}
    6cbe:	1e04      	subs	r4, r0, #0
    6cc0:	d011      	beq.n	6ce6 <svcPoolCreate+0x2a>
    6cc2:	6801      	ldr	r1, [r0, #0]
    6cc4:	2900      	cmp	r1, #0
    6cc6:	d00e      	beq.n	6ce6 <svcPoolCreate+0x2a>
    6cc8:	6842      	ldr	r2, [r0, #4]
    6cca:	2a00      	cmp	r2, #0
    6ccc:	d00b      	beq.n	6ce6 <svcPoolCreate+0x2a>
    6cce:	6880      	ldr	r0, [r0, #8]
    6cd0:	2800      	cmp	r0, #0
    6cd2:	d008      	beq.n	6ce6 <svcPoolCreate+0x2a>
    6cd4:	2303      	movs	r3, #3
    6cd6:	3203      	adds	r2, #3
    6cd8:	439a      	bics	r2, r3
    6cda:	4351      	muls	r1, r2
    6cdc:	310c      	adds	r1, #12
    6cde:	f000 fc81 	bl	75e4 <_init_box>
    6ce2:	68a0      	ldr	r0, [r4, #8]
    6ce4:	bd10      	pop	{r4, pc}
    6ce6:	2000      	movs	r0, #0
    6ce8:	e7fc      	b.n	6ce4 <svcPoolCreate+0x28>
    6cea:	46c0      	nop			; (mov r8, r8)

00006cec <sysPoolAlloc>:
    6cec:	b510      	push	{r4, lr}
    6cee:	2800      	cmp	r0, #0
    6cf0:	d002      	beq.n	6cf8 <sysPoolAlloc+0xc>
    6cf2:	f000 fca3 	bl	763c <rt_alloc_box>
    6cf6:	bd10      	pop	{r4, pc}
    6cf8:	2000      	movs	r0, #0
    6cfa:	e7fc      	b.n	6cf6 <sysPoolAlloc+0xa>

00006cfc <sysPoolFree>:
    6cfc:	b510      	push	{r4, lr}
    6cfe:	2380      	movs	r3, #128	; 0x80
    6d00:	2800      	cmp	r0, #0
    6d02:	d006      	beq.n	6d12 <sysPoolFree+0x16>
    6d04:	f000 fcba 	bl	767c <rt_free_box>
    6d08:	1e42      	subs	r2, r0, #1
    6d0a:	4190      	sbcs	r0, r2
    6d0c:	2386      	movs	r3, #134	; 0x86
    6d0e:	4240      	negs	r0, r0
    6d10:	4003      	ands	r3, r0
    6d12:	0018      	movs	r0, r3
    6d14:	bd10      	pop	{r4, pc}
    6d16:	46c0      	nop			; (mov r8, r8)

00006d18 <osPoolCreate>:
    6d18:	b5b0      	push	{r4, r5, r7, lr}
    6d1a:	0004      	movs	r4, r0
    6d1c:	f3ef 8005 	mrs	r0, IPSR
    6d20:	2800      	cmp	r0, #0
    6d22:	d120      	bne.n	6d66 <osPoolCreate+0x4e>
    6d24:	f3ef 8014 	mrs	r0, CONTROL
    6d28:	07c0      	lsls	r0, r0, #31
    6d2a:	d504      	bpl.n	6d36 <osPoolCreate+0x1e>
    6d2c:	0020      	movs	r0, r4
    6d2e:	4f10      	ldr	r7, [pc, #64]	; (6d70 <osPoolCreate+0x58>)
    6d30:	46bc      	mov	ip, r7
    6d32:	df00      	svc	0
    6d34:	bdb0      	pop	{r4, r5, r7, pc}
    6d36:	480d      	ldr	r0, [pc, #52]	; (6d6c <osPoolCreate+0x54>)
    6d38:	7800      	ldrb	r0, [r0, #0]
    6d3a:	2800      	cmp	r0, #0
    6d3c:	d1f6      	bne.n	6d2c <osPoolCreate+0x14>
    6d3e:	2c00      	cmp	r4, #0
    6d40:	d011      	beq.n	6d66 <osPoolCreate+0x4e>
    6d42:	6821      	ldr	r1, [r4, #0]
    6d44:	2900      	cmp	r1, #0
    6d46:	d00e      	beq.n	6d66 <osPoolCreate+0x4e>
    6d48:	6862      	ldr	r2, [r4, #4]
    6d4a:	2a00      	cmp	r2, #0
    6d4c:	d00b      	beq.n	6d66 <osPoolCreate+0x4e>
    6d4e:	68a0      	ldr	r0, [r4, #8]
    6d50:	2800      	cmp	r0, #0
    6d52:	d008      	beq.n	6d66 <osPoolCreate+0x4e>
    6d54:	2303      	movs	r3, #3
    6d56:	3203      	adds	r2, #3
    6d58:	439a      	bics	r2, r3
    6d5a:	4351      	muls	r1, r2
    6d5c:	310c      	adds	r1, #12
    6d5e:	f000 fc41 	bl	75e4 <_init_box>
    6d62:	68a0      	ldr	r0, [r4, #8]
    6d64:	e7e6      	b.n	6d34 <osPoolCreate+0x1c>
    6d66:	2000      	movs	r0, #0
    6d68:	e7e4      	b.n	6d34 <osPoolCreate+0x1c>
    6d6a:	46c0      	nop			; (mov r8, r8)
    6d6c:	20006081 	.word	0x20006081
    6d70:	00006cbd 	.word	0x00006cbd

00006d74 <osPoolAlloc>:
    6d74:	b5b0      	push	{r4, r5, r7, lr}
    6d76:	f3ef 8405 	mrs	r4, IPSR
    6d7a:	2c00      	cmp	r4, #0
    6d7c:	d103      	bne.n	6d86 <osPoolAlloc+0x12>
    6d7e:	f3ef 8414 	mrs	r4, CONTROL
    6d82:	07e4      	lsls	r4, r4, #31
    6d84:	d404      	bmi.n	6d90 <osPoolAlloc+0x1c>
    6d86:	2800      	cmp	r0, #0
    6d88:	d006      	beq.n	6d98 <osPoolAlloc+0x24>
    6d8a:	f000 fc57 	bl	763c <rt_alloc_box>
    6d8e:	bdb0      	pop	{r4, r5, r7, pc}
    6d90:	4f02      	ldr	r7, [pc, #8]	; (6d9c <osPoolAlloc+0x28>)
    6d92:	46bc      	mov	ip, r7
    6d94:	df00      	svc	0
    6d96:	e7fa      	b.n	6d8e <osPoolAlloc+0x1a>
    6d98:	2000      	movs	r0, #0
    6d9a:	e7f8      	b.n	6d8e <osPoolAlloc+0x1a>
    6d9c:	00006ced 	.word	0x00006ced

00006da0 <osPoolCAlloc>:
    6da0:	b5b0      	push	{r4, r5, r7, lr}
    6da2:	0004      	movs	r4, r0
    6da4:	f3ef 8005 	mrs	r0, IPSR
    6da8:	2800      	cmp	r0, #0
    6daa:	d103      	bne.n	6db4 <osPoolCAlloc+0x14>
    6dac:	f3ef 8014 	mrs	r0, CONTROL
    6db0:	07c0      	lsls	r0, r0, #31
    6db2:	d410      	bmi.n	6dd6 <osPoolCAlloc+0x36>
    6db4:	2c00      	cmp	r4, #0
    6db6:	d015      	beq.n	6de4 <osPoolCAlloc+0x44>
    6db8:	0020      	movs	r0, r4
    6dba:	f000 fc3f 	bl	763c <rt_alloc_box>
    6dbe:	2800      	cmp	r0, #0
    6dc0:	d010      	beq.n	6de4 <osPoolCAlloc+0x44>
    6dc2:	68a3      	ldr	r3, [r4, #8]
    6dc4:	2b00      	cmp	r3, #0
    6dc6:	d005      	beq.n	6dd4 <osPoolCAlloc+0x34>
    6dc8:	0002      	movs	r2, r0
    6dca:	2100      	movs	r1, #0
    6dcc:	3b04      	subs	r3, #4
    6dce:	c202      	stmia	r2!, {r1}
    6dd0:	2b00      	cmp	r3, #0
    6dd2:	d1fb      	bne.n	6dcc <osPoolCAlloc+0x2c>
    6dd4:	bdb0      	pop	{r4, r5, r7, pc}
    6dd6:	0020      	movs	r0, r4
    6dd8:	4f03      	ldr	r7, [pc, #12]	; (6de8 <osPoolCAlloc+0x48>)
    6dda:	46bc      	mov	ip, r7
    6ddc:	df00      	svc	0
    6dde:	2c00      	cmp	r4, #0
    6de0:	d1ed      	bne.n	6dbe <osPoolCAlloc+0x1e>
    6de2:	e7f7      	b.n	6dd4 <osPoolCAlloc+0x34>
    6de4:	2000      	movs	r0, #0
    6de6:	e7f5      	b.n	6dd4 <osPoolCAlloc+0x34>
    6de8:	00006ced 	.word	0x00006ced

00006dec <osPoolFree>:
    6dec:	b5b0      	push	{r4, r5, r7, lr}
    6dee:	f3ef 8405 	mrs	r4, IPSR
    6df2:	2c00      	cmp	r4, #0
    6df4:	d103      	bne.n	6dfe <osPoolFree+0x12>
    6df6:	f3ef 8414 	mrs	r4, CONTROL
    6dfa:	07e4      	lsls	r4, r4, #31
    6dfc:	d40a      	bmi.n	6e14 <osPoolFree+0x28>
    6dfe:	2800      	cmp	r0, #0
    6e00:	d00c      	beq.n	6e1c <osPoolFree+0x30>
    6e02:	f000 fc3b 	bl	767c <rt_free_box>
    6e06:	0003      	movs	r3, r0
    6e08:	1e5a      	subs	r2, r3, #1
    6e0a:	4193      	sbcs	r3, r2
    6e0c:	2086      	movs	r0, #134	; 0x86
    6e0e:	425b      	negs	r3, r3
    6e10:	4018      	ands	r0, r3
    6e12:	bdb0      	pop	{r4, r5, r7, pc}
    6e14:	4f02      	ldr	r7, [pc, #8]	; (6e20 <osPoolFree+0x34>)
    6e16:	46bc      	mov	ip, r7
    6e18:	df00      	svc	0
    6e1a:	e7fa      	b.n	6e12 <osPoolFree+0x26>
    6e1c:	2080      	movs	r0, #128	; 0x80
    6e1e:	e7f8      	b.n	6e12 <osPoolFree+0x26>
    6e20:	00006cfd 	.word	0x00006cfd

00006e24 <svcMessageCreate>:
    6e24:	b510      	push	{r4, lr}
    6e26:	1e04      	subs	r4, r0, #0
    6e28:	d00f      	beq.n	6e4a <svcMessageCreate+0x26>
    6e2a:	6801      	ldr	r1, [r0, #0]
    6e2c:	2900      	cmp	r1, #0
    6e2e:	d00c      	beq.n	6e4a <svcMessageCreate+0x26>
    6e30:	6840      	ldr	r0, [r0, #4]
    6e32:	2800      	cmp	r0, #0
    6e34:	d009      	beq.n	6e4a <svcMessageCreate+0x26>
    6e36:	7803      	ldrb	r3, [r0, #0]
    6e38:	2b00      	cmp	r3, #0
    6e3a:	d106      	bne.n	6e4a <svcMessageCreate+0x26>
    6e3c:	3104      	adds	r1, #4
    6e3e:	0089      	lsls	r1, r1, #2
    6e40:	b289      	uxth	r1, r1
    6e42:	f000 fe2b 	bl	7a9c <rt_mbx_init>
    6e46:	6860      	ldr	r0, [r4, #4]
    6e48:	bd10      	pop	{r4, pc}
    6e4a:	2000      	movs	r0, #0
    6e4c:	e7fc      	b.n	6e48 <svcMessageCreate+0x24>
    6e4e:	46c0      	nop			; (mov r8, r8)

00006e50 <svcMessagePut>:
    6e50:	b570      	push	{r4, r5, r6, lr}
    6e52:	0004      	movs	r4, r0
    6e54:	b082      	sub	sp, #8
    6e56:	000e      	movs	r6, r1
    6e58:	0015      	movs	r5, r2
    6e5a:	2800      	cmp	r0, #0
    6e5c:	d005      	beq.n	6e6a <svcMessagePut+0x1a>
    6e5e:	7803      	ldrb	r3, [r0, #0]
    6e60:	2080      	movs	r0, #128	; 0x80
    6e62:	2b01      	cmp	r3, #1
    6e64:	d003      	beq.n	6e6e <svcMessagePut+0x1e>
    6e66:	b002      	add	sp, #8
    6e68:	bd70      	pop	{r4, r5, r6, pc}
    6e6a:	2080      	movs	r0, #128	; 0x80
    6e6c:	e7fb      	b.n	6e66 <svcMessagePut+0x16>
    6e6e:	2200      	movs	r2, #0
    6e70:	2d00      	cmp	r5, #0
    6e72:	d014      	beq.n	6e9e <svcMessagePut+0x4e>
    6e74:	1c6b      	adds	r3, r5, #1
    6e76:	d01f      	beq.n	6eb8 <svcMessagePut+0x68>
    6e78:	4b11      	ldr	r3, [pc, #68]	; (6ec0 <svcMessagePut+0x70>)
    6e7a:	429d      	cmp	r5, r3
    6e7c:	d81e      	bhi.n	6ebc <svcMessagePut+0x6c>
    6e7e:	20fa      	movs	r0, #250	; 0xfa
    6e80:	4b10      	ldr	r3, [pc, #64]	; (6ec4 <svcMessagePut+0x74>)
    6e82:	0080      	lsls	r0, r0, #2
    6e84:	4368      	muls	r0, r5
    6e86:	681b      	ldr	r3, [r3, #0]
    6e88:	9301      	str	r3, [sp, #4]
    6e8a:	3b01      	subs	r3, #1
    6e8c:	18c0      	adds	r0, r0, r3
    6e8e:	9901      	ldr	r1, [sp, #4]
    6e90:	f7fd fde8 	bl	4a64 <__aeabi_uidiv>
    6e94:	4b0c      	ldr	r3, [pc, #48]	; (6ec8 <svcMessagePut+0x78>)
    6e96:	001a      	movs	r2, r3
    6e98:	4298      	cmp	r0, r3
    6e9a:	d800      	bhi.n	6e9e <svcMessagePut+0x4e>
    6e9c:	b282      	uxth	r2, r0
    6e9e:	0031      	movs	r1, r6
    6ea0:	0020      	movs	r0, r4
    6ea2:	f000 fe09 	bl	7ab8 <rt_mbx_send>
    6ea6:	0003      	movs	r3, r0
    6ea8:	2000      	movs	r0, #0
    6eaa:	2b01      	cmp	r3, #1
    6eac:	d1db      	bne.n	6e66 <svcMessagePut+0x16>
    6eae:	30c1      	adds	r0, #193	; 0xc1
    6eb0:	2d00      	cmp	r5, #0
    6eb2:	d1d8      	bne.n	6e66 <svcMessagePut+0x16>
    6eb4:	3840      	subs	r0, #64	; 0x40
    6eb6:	e7d6      	b.n	6e66 <svcMessagePut+0x16>
    6eb8:	4a04      	ldr	r2, [pc, #16]	; (6ecc <svcMessagePut+0x7c>)
    6eba:	e7f0      	b.n	6e9e <svcMessagePut+0x4e>
    6ebc:	4a02      	ldr	r2, [pc, #8]	; (6ec8 <svcMessagePut+0x78>)
    6ebe:	e7ee      	b.n	6e9e <svcMessagePut+0x4e>
    6ec0:	003d0900 	.word	0x003d0900
    6ec4:	00008cf8 	.word	0x00008cf8
    6ec8:	0000fffe 	.word	0x0000fffe
    6ecc:	0000ffff 	.word	0x0000ffff

00006ed0 <svcMessageGet>:
    6ed0:	b510      	push	{r4, lr}
    6ed2:	0004      	movs	r4, r0
    6ed4:	b086      	sub	sp, #24
    6ed6:	2800      	cmp	r0, #0
    6ed8:	d002      	beq.n	6ee0 <svcMessageGet+0x10>
    6eda:	7803      	ldrb	r3, [r0, #0]
    6edc:	2b01      	cmp	r3, #1
    6ede:	d005      	beq.n	6eec <svcMessageGet+0x1c>
    6ee0:	2080      	movs	r0, #128	; 0x80
    6ee2:	2100      	movs	r1, #0
    6ee4:	2200      	movs	r2, #0
    6ee6:	2300      	movs	r3, #0
    6ee8:	b006      	add	sp, #24
    6eea:	bd10      	pop	{r4, pc}
    6eec:	2900      	cmp	r1, #0
    6eee:	d01c      	beq.n	6f2a <svcMessageGet+0x5a>
    6ef0:	1c4b      	adds	r3, r1, #1
    6ef2:	d02a      	beq.n	6f4a <svcMessageGet+0x7a>
    6ef4:	4b16      	ldr	r3, [pc, #88]	; (6f50 <svcMessageGet+0x80>)
    6ef6:	4299      	cmp	r1, r3
    6ef8:	d820      	bhi.n	6f3c <svcMessageGet+0x6c>
    6efa:	20fa      	movs	r0, #250	; 0xfa
    6efc:	4b15      	ldr	r3, [pc, #84]	; (6f54 <svcMessageGet+0x84>)
    6efe:	0080      	lsls	r0, r0, #2
    6f00:	4341      	muls	r1, r0
    6f02:	681b      	ldr	r3, [r3, #0]
    6f04:	9301      	str	r3, [sp, #4]
    6f06:	3b01      	subs	r3, #1
    6f08:	1858      	adds	r0, r3, r1
    6f0a:	9901      	ldr	r1, [sp, #4]
    6f0c:	f7fd fdaa 	bl	4a64 <__aeabi_uidiv>
    6f10:	4b11      	ldr	r3, [pc, #68]	; (6f58 <svcMessageGet+0x88>)
    6f12:	001a      	movs	r2, r3
    6f14:	4298      	cmp	r0, r3
    6f16:	d916      	bls.n	6f46 <svcMessageGet+0x76>
    6f18:	a904      	add	r1, sp, #16
    6f1a:	0020      	movs	r0, r4
    6f1c:	f000 fe18 	bl	7b50 <rt_mbx_wait>
    6f20:	2801      	cmp	r0, #1
    6f22:	d00d      	beq.n	6f40 <svcMessageGet+0x70>
    6f24:	2010      	movs	r0, #16
    6f26:	9904      	ldr	r1, [sp, #16]
    6f28:	e7dc      	b.n	6ee4 <svcMessageGet+0x14>
    6f2a:	2200      	movs	r2, #0
    6f2c:	a904      	add	r1, sp, #16
    6f2e:	f000 fe0f 	bl	7b50 <rt_mbx_wait>
    6f32:	2801      	cmp	r0, #1
    6f34:	d1f6      	bne.n	6f24 <svcMessageGet+0x54>
    6f36:	2000      	movs	r0, #0
    6f38:	9904      	ldr	r1, [sp, #16]
    6f3a:	e7d3      	b.n	6ee4 <svcMessageGet+0x14>
    6f3c:	4a06      	ldr	r2, [pc, #24]	; (6f58 <svcMessageGet+0x88>)
    6f3e:	e7eb      	b.n	6f18 <svcMessageGet+0x48>
    6f40:	2040      	movs	r0, #64	; 0x40
    6f42:	9904      	ldr	r1, [sp, #16]
    6f44:	e7ce      	b.n	6ee4 <svcMessageGet+0x14>
    6f46:	b282      	uxth	r2, r0
    6f48:	e7e6      	b.n	6f18 <svcMessageGet+0x48>
    6f4a:	4a04      	ldr	r2, [pc, #16]	; (6f5c <svcMessageGet+0x8c>)
    6f4c:	e7e4      	b.n	6f18 <svcMessageGet+0x48>
    6f4e:	46c0      	nop			; (mov r8, r8)
    6f50:	003d0900 	.word	0x003d0900
    6f54:	00008cf8 	.word	0x00008cf8
    6f58:	0000fffe 	.word	0x0000fffe
    6f5c:	0000ffff 	.word	0x0000ffff

00006f60 <isrMessagePut>:
    6f60:	b570      	push	{r4, r5, r6, lr}
    6f62:	0004      	movs	r4, r0
    6f64:	000d      	movs	r5, r1
    6f66:	2080      	movs	r0, #128	; 0x80
    6f68:	2c00      	cmp	r4, #0
    6f6a:	d001      	beq.n	6f70 <isrMessagePut+0x10>
    6f6c:	2a00      	cmp	r2, #0
    6f6e:	d000      	beq.n	6f72 <isrMessagePut+0x12>
    6f70:	bd70      	pop	{r4, r5, r6, pc}
    6f72:	7823      	ldrb	r3, [r4, #0]
    6f74:	2b01      	cmp	r3, #1
    6f76:	d1fb      	bne.n	6f70 <isrMessagePut+0x10>
    6f78:	0020      	movs	r0, r4
    6f7a:	f000 fe45 	bl	7c08 <rt_mbx_check>
    6f7e:	0003      	movs	r3, r0
    6f80:	2081      	movs	r0, #129	; 0x81
    6f82:	2b00      	cmp	r3, #0
    6f84:	d0f4      	beq.n	6f70 <isrMessagePut+0x10>
    6f86:	0020      	movs	r0, r4
    6f88:	0029      	movs	r1, r5
    6f8a:	f000 fe41 	bl	7c10 <isr_mbx_send>
    6f8e:	2000      	movs	r0, #0
    6f90:	e7ee      	b.n	6f70 <isrMessagePut+0x10>
    6f92:	46c0      	nop			; (mov r8, r8)

00006f94 <isrMessageGet>:
    6f94:	b570      	push	{r4, r5, r6, lr}
    6f96:	0004      	movs	r4, r0
    6f98:	b084      	sub	sp, #16
    6f9a:	0008      	movs	r0, r1
    6f9c:	0015      	movs	r5, r2
    6f9e:	2900      	cmp	r1, #0
    6fa0:	d004      	beq.n	6fac <isrMessageGet+0x18>
    6fa2:	2a00      	cmp	r2, #0
    6fa4:	d102      	bne.n	6fac <isrMessageGet+0x18>
    6fa6:	780b      	ldrb	r3, [r1, #0]
    6fa8:	2b01      	cmp	r3, #1
    6faa:	d004      	beq.n	6fb6 <isrMessageGet+0x22>
    6fac:	2380      	movs	r3, #128	; 0x80
    6fae:	6023      	str	r3, [r4, #0]
    6fb0:	0020      	movs	r0, r4
    6fb2:	b004      	add	sp, #16
    6fb4:	bd70      	pop	{r4, r5, r6, pc}
    6fb6:	a902      	add	r1, sp, #8
    6fb8:	ae01      	add	r6, sp, #4
    6fba:	f000 fe2f 	bl	7c1c <isr_mbx_receive>
    6fbe:	2804      	cmp	r0, #4
    6fc0:	d004      	beq.n	6fcc <isrMessageGet+0x38>
    6fc2:	0023      	movs	r3, r4
    6fc4:	9501      	str	r5, [sp, #4]
    6fc6:	ce07      	ldmia	r6!, {r0, r1, r2}
    6fc8:	c307      	stmia	r3!, {r0, r1, r2}
    6fca:	e7f1      	b.n	6fb0 <isrMessageGet+0x1c>
    6fcc:	2310      	movs	r3, #16
    6fce:	9301      	str	r3, [sp, #4]
    6fd0:	0023      	movs	r3, r4
    6fd2:	ce07      	ldmia	r6!, {r0, r1, r2}
    6fd4:	c307      	stmia	r3!, {r0, r1, r2}
    6fd6:	e7eb      	b.n	6fb0 <isrMessageGet+0x1c>

00006fd8 <osMessageCreate>:
    6fd8:	b5b0      	push	{r4, r5, r7, lr}
    6fda:	0004      	movs	r4, r0
    6fdc:	f3ef 8005 	mrs	r0, IPSR
    6fe0:	2800      	cmp	r0, #0
    6fe2:	d11e      	bne.n	7022 <osMessageCreate+0x4a>
    6fe4:	f3ef 8014 	mrs	r0, CONTROL
    6fe8:	07c0      	lsls	r0, r0, #31
    6fea:	d504      	bpl.n	6ff6 <osMessageCreate+0x1e>
    6fec:	0020      	movs	r0, r4
    6fee:	4f0f      	ldr	r7, [pc, #60]	; (702c <osMessageCreate+0x54>)
    6ff0:	46bc      	mov	ip, r7
    6ff2:	df00      	svc	0
    6ff4:	bdb0      	pop	{r4, r5, r7, pc}
    6ff6:	480c      	ldr	r0, [pc, #48]	; (7028 <osMessageCreate+0x50>)
    6ff8:	7800      	ldrb	r0, [r0, #0]
    6ffa:	2800      	cmp	r0, #0
    6ffc:	d1f6      	bne.n	6fec <osMessageCreate+0x14>
    6ffe:	2c00      	cmp	r4, #0
    7000:	d00f      	beq.n	7022 <osMessageCreate+0x4a>
    7002:	6823      	ldr	r3, [r4, #0]
    7004:	2b00      	cmp	r3, #0
    7006:	d00c      	beq.n	7022 <osMessageCreate+0x4a>
    7008:	6860      	ldr	r0, [r4, #4]
    700a:	2800      	cmp	r0, #0
    700c:	d009      	beq.n	7022 <osMessageCreate+0x4a>
    700e:	7802      	ldrb	r2, [r0, #0]
    7010:	2a00      	cmp	r2, #0
    7012:	d106      	bne.n	7022 <osMessageCreate+0x4a>
    7014:	1d19      	adds	r1, r3, #4
    7016:	008b      	lsls	r3, r1, #2
    7018:	b299      	uxth	r1, r3
    701a:	f000 fd3f 	bl	7a9c <rt_mbx_init>
    701e:	6860      	ldr	r0, [r4, #4]
    7020:	e7e8      	b.n	6ff4 <osMessageCreate+0x1c>
    7022:	2000      	movs	r0, #0
    7024:	e7e6      	b.n	6ff4 <osMessageCreate+0x1c>
    7026:	46c0      	nop			; (mov r8, r8)
    7028:	20006081 	.word	0x20006081
    702c:	00006e25 	.word	0x00006e25

00007030 <osMessagePut>:
    7030:	b5b0      	push	{r4, r5, r7, lr}
    7032:	0004      	movs	r4, r0
    7034:	000d      	movs	r5, r1
    7036:	f3ef 8105 	mrs	r1, IPSR
    703a:	2900      	cmp	r1, #0
    703c:	d008      	beq.n	7050 <osMessagePut+0x20>
    703e:	2080      	movs	r0, #128	; 0x80
    7040:	2c00      	cmp	r4, #0
    7042:	d004      	beq.n	704e <osMessagePut+0x1e>
    7044:	2a00      	cmp	r2, #0
    7046:	d102      	bne.n	704e <osMessagePut+0x1e>
    7048:	7823      	ldrb	r3, [r4, #0]
    704a:	2b01      	cmp	r3, #1
    704c:	d005      	beq.n	705a <osMessagePut+0x2a>
    704e:	bdb0      	pop	{r4, r5, r7, pc}
    7050:	0029      	movs	r1, r5
    7052:	4f08      	ldr	r7, [pc, #32]	; (7074 <osMessagePut+0x44>)
    7054:	46bc      	mov	ip, r7
    7056:	df00      	svc	0
    7058:	e7f9      	b.n	704e <osMessagePut+0x1e>
    705a:	0020      	movs	r0, r4
    705c:	f000 fdd4 	bl	7c08 <rt_mbx_check>
    7060:	0003      	movs	r3, r0
    7062:	2081      	movs	r0, #129	; 0x81
    7064:	2b00      	cmp	r3, #0
    7066:	d0f2      	beq.n	704e <osMessagePut+0x1e>
    7068:	0020      	movs	r0, r4
    706a:	0029      	movs	r1, r5
    706c:	f000 fdd0 	bl	7c10 <isr_mbx_send>
    7070:	2000      	movs	r0, #0
    7072:	e7ec      	b.n	704e <osMessagePut+0x1e>
    7074:	00006e51 	.word	0x00006e51

00007078 <osMessageGet>:
    7078:	b5f0      	push	{r4, r5, r6, r7, lr}
    707a:	0004      	movs	r4, r0
    707c:	b085      	sub	sp, #20
    707e:	0008      	movs	r0, r1
    7080:	0015      	movs	r5, r2
    7082:	f3ef 8105 	mrs	r1, IPSR
    7086:	2900      	cmp	r1, #0
    7088:	d109      	bne.n	709e <osMessageGet+0x26>
    708a:	0011      	movs	r1, r2
    708c:	4f11      	ldr	r7, [pc, #68]	; (70d4 <osMessageGet+0x5c>)
    708e:	46bc      	mov	ip, r7
    7090:	df00      	svc	0
    7092:	6020      	str	r0, [r4, #0]
    7094:	6061      	str	r1, [r4, #4]
    7096:	60a2      	str	r2, [r4, #8]
    7098:	0020      	movs	r0, r4
    709a:	b005      	add	sp, #20
    709c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    709e:	2800      	cmp	r0, #0
    70a0:	d004      	beq.n	70ac <osMessageGet+0x34>
    70a2:	2a00      	cmp	r2, #0
    70a4:	d102      	bne.n	70ac <osMessageGet+0x34>
    70a6:	7803      	ldrb	r3, [r0, #0]
    70a8:	2b01      	cmp	r3, #1
    70aa:	d002      	beq.n	70b2 <osMessageGet+0x3a>
    70ac:	2380      	movs	r3, #128	; 0x80
    70ae:	6023      	str	r3, [r4, #0]
    70b0:	e7f2      	b.n	7098 <osMessageGet+0x20>
    70b2:	a902      	add	r1, sp, #8
    70b4:	ae01      	add	r6, sp, #4
    70b6:	f000 fdb1 	bl	7c1c <isr_mbx_receive>
    70ba:	2804      	cmp	r0, #4
    70bc:	d004      	beq.n	70c8 <osMessageGet+0x50>
    70be:	0023      	movs	r3, r4
    70c0:	9501      	str	r5, [sp, #4]
    70c2:	ce07      	ldmia	r6!, {r0, r1, r2}
    70c4:	c307      	stmia	r3!, {r0, r1, r2}
    70c6:	e7e7      	b.n	7098 <osMessageGet+0x20>
    70c8:	2310      	movs	r3, #16
    70ca:	9301      	str	r3, [sp, #4]
    70cc:	0023      	movs	r3, r4
    70ce:	ce07      	ldmia	r6!, {r0, r1, r2}
    70d0:	c307      	stmia	r3!, {r0, r1, r2}
    70d2:	e7e1      	b.n	7098 <osMessageGet+0x20>
    70d4:	00006ed1 	.word	0x00006ed1

000070d8 <svcMailCreate>:
    70d8:	b570      	push	{r4, r5, r6, lr}
    70da:	1e04      	subs	r4, r0, #0
    70dc:	d021      	beq.n	7122 <svcMailCreate+0x4a>
    70de:	6801      	ldr	r1, [r0, #0]
    70e0:	2900      	cmp	r1, #0
    70e2:	d01e      	beq.n	7122 <svcMailCreate+0x4a>
    70e4:	6842      	ldr	r2, [r0, #4]
    70e6:	2a00      	cmp	r2, #0
    70e8:	d01b      	beq.n	7122 <svcMailCreate+0x4a>
    70ea:	6883      	ldr	r3, [r0, #8]
    70ec:	2b00      	cmp	r3, #0
    70ee:	d018      	beq.n	7122 <svcMailCreate+0x4a>
    70f0:	6858      	ldr	r0, [r3, #4]
    70f2:	681d      	ldr	r5, [r3, #0]
    70f4:	2800      	cmp	r0, #0
    70f6:	d014      	beq.n	7122 <svcMailCreate+0x4a>
    70f8:	2d00      	cmp	r5, #0
    70fa:	d012      	beq.n	7122 <svcMailCreate+0x4a>
    70fc:	782b      	ldrb	r3, [r5, #0]
    70fe:	2b00      	cmp	r3, #0
    7100:	d10f      	bne.n	7122 <svcMailCreate+0x4a>
    7102:	3303      	adds	r3, #3
    7104:	3203      	adds	r2, #3
    7106:	439a      	bics	r2, r3
    7108:	4351      	muls	r1, r2
    710a:	310c      	adds	r1, #12
    710c:	f000 fa6a 	bl	75e4 <_init_box>
    7110:	6823      	ldr	r3, [r4, #0]
    7112:	0028      	movs	r0, r5
    7114:	1d19      	adds	r1, r3, #4
    7116:	0089      	lsls	r1, r1, #2
    7118:	b289      	uxth	r1, r1
    711a:	f000 fcbf 	bl	7a9c <rt_mbx_init>
    711e:	68a0      	ldr	r0, [r4, #8]
    7120:	bd70      	pop	{r4, r5, r6, pc}
    7122:	2000      	movs	r0, #0
    7124:	e7fc      	b.n	7120 <svcMailCreate+0x48>
    7126:	46c0      	nop			; (mov r8, r8)

00007128 <sysMailAlloc>:
    7128:	b530      	push	{r4, r5, lr}
    712a:	000d      	movs	r5, r1
    712c:	b083      	sub	sp, #12
    712e:	2800      	cmp	r0, #0
    7130:	d035      	beq.n	719e <sysMailAlloc+0x76>
    7132:	6804      	ldr	r4, [r0, #0]
    7134:	6840      	ldr	r0, [r0, #4]
    7136:	2800      	cmp	r0, #0
    7138:	d031      	beq.n	719e <sysMailAlloc+0x76>
    713a:	2c00      	cmp	r4, #0
    713c:	d02f      	beq.n	719e <sysMailAlloc+0x76>
    713e:	2a00      	cmp	r2, #0
    7140:	d007      	beq.n	7152 <sysMailAlloc+0x2a>
    7142:	2900      	cmp	r1, #0
    7144:	d12b      	bne.n	719e <sysMailAlloc+0x76>
    7146:	f000 fa79 	bl	763c <rt_alloc_box>
    714a:	2800      	cmp	r0, #0
    714c:	d027      	beq.n	719e <sysMailAlloc+0x76>
    714e:	b003      	add	sp, #12
    7150:	bd30      	pop	{r4, r5, pc}
    7152:	f000 fa73 	bl	763c <rt_alloc_box>
    7156:	2800      	cmp	r0, #0
    7158:	d1f9      	bne.n	714e <sysMailAlloc+0x26>
    715a:	2d00      	cmp	r5, #0
    715c:	d01f      	beq.n	719e <sysMailAlloc+0x76>
    715e:	6863      	ldr	r3, [r4, #4]
    7160:	2b00      	cmp	r3, #0
    7162:	d020      	beq.n	71a6 <sysMailAlloc+0x7e>
    7164:	4b16      	ldr	r3, [pc, #88]	; (71c0 <sysMailAlloc+0x98>)
    7166:	0020      	movs	r0, r4
    7168:	6819      	ldr	r1, [r3, #0]
    716a:	f000 fdf1 	bl	7d50 <rt_put_prio>
    716e:	1c6b      	adds	r3, r5, #1
    7170:	d021      	beq.n	71b6 <sysMailAlloc+0x8e>
    7172:	4b14      	ldr	r3, [pc, #80]	; (71c4 <sysMailAlloc+0x9c>)
    7174:	429d      	cmp	r5, r3
    7176:	d814      	bhi.n	71a2 <sysMailAlloc+0x7a>
    7178:	20fa      	movs	r0, #250	; 0xfa
    717a:	4b13      	ldr	r3, [pc, #76]	; (71c8 <sysMailAlloc+0xa0>)
    717c:	0080      	lsls	r0, r0, #2
    717e:	4368      	muls	r0, r5
    7180:	681b      	ldr	r3, [r3, #0]
    7182:	9301      	str	r3, [sp, #4]
    7184:	3b01      	subs	r3, #1
    7186:	18c0      	adds	r0, r0, r3
    7188:	9901      	ldr	r1, [sp, #4]
    718a:	f7fd fc6b 	bl	4a64 <__aeabi_uidiv>
    718e:	4b0f      	ldr	r3, [pc, #60]	; (71cc <sysMailAlloc+0xa4>)
    7190:	0002      	movs	r2, r0
    7192:	0018      	movs	r0, r3
    7194:	429a      	cmp	r2, r3
    7196:	d910      	bls.n	71ba <sysMailAlloc+0x92>
    7198:	2108      	movs	r1, #8
    719a:	f001 fa13 	bl	85c4 <rt_block>
    719e:	2000      	movs	r0, #0
    71a0:	e7d5      	b.n	714e <sysMailAlloc+0x26>
    71a2:	480a      	ldr	r0, [pc, #40]	; (71cc <sysMailAlloc+0xa4>)
    71a4:	e7f8      	b.n	7198 <sysMailAlloc+0x70>
    71a6:	4a06      	ldr	r2, [pc, #24]	; (71c0 <sysMailAlloc+0x98>)
    71a8:	6812      	ldr	r2, [r2, #0]
    71aa:	6062      	str	r2, [r4, #4]
    71ac:	6053      	str	r3, [r2, #4]
    71ae:	2303      	movs	r3, #3
    71b0:	6094      	str	r4, [r2, #8]
    71b2:	7063      	strb	r3, [r4, #1]
    71b4:	e7db      	b.n	716e <sysMailAlloc+0x46>
    71b6:	4806      	ldr	r0, [pc, #24]	; (71d0 <sysMailAlloc+0xa8>)
    71b8:	e7ee      	b.n	7198 <sysMailAlloc+0x70>
    71ba:	b290      	uxth	r0, r2
    71bc:	e7ec      	b.n	7198 <sysMailAlloc+0x70>
    71be:	46c0      	nop			; (mov r8, r8)
    71c0:	200060c0 	.word	0x200060c0
    71c4:	003d0900 	.word	0x003d0900
    71c8:	00008cf8 	.word	0x00008cf8
    71cc:	0000fffe 	.word	0x0000fffe
    71d0:	0000ffff 	.word	0x0000ffff

000071d4 <sysMailFree>:
    71d4:	b570      	push	{r4, r5, r6, lr}
    71d6:	0016      	movs	r6, r2
    71d8:	2800      	cmp	r0, #0
    71da:	d00e      	beq.n	71fa <sysMailFree+0x26>
    71dc:	6804      	ldr	r4, [r0, #0]
    71de:	2c00      	cmp	r4, #0
    71e0:	d00b      	beq.n	71fa <sysMailFree+0x26>
    71e2:	6845      	ldr	r5, [r0, #4]
    71e4:	2080      	movs	r0, #128	; 0x80
    71e6:	2d00      	cmp	r5, #0
    71e8:	d006      	beq.n	71f8 <sysMailFree+0x24>
    71ea:	0028      	movs	r0, r5
    71ec:	f000 fa46 	bl	767c <rt_free_box>
    71f0:	0003      	movs	r3, r0
    71f2:	2086      	movs	r0, #134	; 0x86
    71f4:	2b00      	cmp	r3, #0
    71f6:	d002      	beq.n	71fe <sysMailFree+0x2a>
    71f8:	bd70      	pop	{r4, r5, r6, pc}
    71fa:	2080      	movs	r0, #128	; 0x80
    71fc:	e7fc      	b.n	71f8 <sysMailFree+0x24>
    71fe:	6863      	ldr	r3, [r4, #4]
    7200:	2b00      	cmp	r3, #0
    7202:	d002      	beq.n	720a <sysMailFree+0x36>
    7204:	7863      	ldrb	r3, [r4, #1]
    7206:	2b03      	cmp	r3, #3
    7208:	d001      	beq.n	720e <sysMailFree+0x3a>
    720a:	2000      	movs	r0, #0
    720c:	e7f4      	b.n	71f8 <sysMailFree+0x24>
    720e:	2e00      	cmp	r6, #0
    7210:	d113      	bne.n	723a <sysMailFree+0x66>
    7212:	0028      	movs	r0, r5
    7214:	f000 fa12 	bl	763c <rt_alloc_box>
    7218:	1e05      	subs	r5, r0, #0
    721a:	d0f6      	beq.n	720a <sysMailFree+0x36>
    721c:	0020      	movs	r0, r4
    721e:	f000 fdbd 	bl	7d9c <rt_get_first>
    7222:	0004      	movs	r4, r0
    7224:	0029      	movs	r1, r5
    7226:	f000 f987 	bl	7538 <rt_ret_val>
    722a:	0020      	movs	r0, r4
    722c:	f000 feee 	bl	800c <rt_rmv_dly>
    7230:	0020      	movs	r0, r4
    7232:	f001 f9a1 	bl	8578 <rt_dispatch>
    7236:	2000      	movs	r0, #0
    7238:	e7de      	b.n	71f8 <sysMailFree+0x24>
    723a:	0020      	movs	r0, r4
    723c:	0029      	movs	r1, r5
    723e:	f000 fefb 	bl	8038 <rt_psq_enq>
    7242:	f001 f8dd 	bl	8400 <rt_psh_req>
    7246:	2000      	movs	r0, #0
    7248:	e7d6      	b.n	71f8 <sysMailFree+0x24>
    724a:	46c0      	nop			; (mov r8, r8)

0000724c <osMailCreate>:
    724c:	b5b0      	push	{r4, r5, r7, lr}
    724e:	0004      	movs	r4, r0
    7250:	f3ef 8005 	mrs	r0, IPSR
    7254:	2800      	cmp	r0, #0
    7256:	d130      	bne.n	72ba <osMailCreate+0x6e>
    7258:	f3ef 8014 	mrs	r0, CONTROL
    725c:	07c0      	lsls	r0, r0, #31
    725e:	d504      	bpl.n	726a <osMailCreate+0x1e>
    7260:	0020      	movs	r0, r4
    7262:	4f18      	ldr	r7, [pc, #96]	; (72c4 <osMailCreate+0x78>)
    7264:	46bc      	mov	ip, r7
    7266:	df00      	svc	0
    7268:	bdb0      	pop	{r4, r5, r7, pc}
    726a:	4815      	ldr	r0, [pc, #84]	; (72c0 <osMailCreate+0x74>)
    726c:	7800      	ldrb	r0, [r0, #0]
    726e:	2800      	cmp	r0, #0
    7270:	d1f6      	bne.n	7260 <osMailCreate+0x14>
    7272:	2c00      	cmp	r4, #0
    7274:	d021      	beq.n	72ba <osMailCreate+0x6e>
    7276:	6821      	ldr	r1, [r4, #0]
    7278:	2900      	cmp	r1, #0
    727a:	d01e      	beq.n	72ba <osMailCreate+0x6e>
    727c:	6862      	ldr	r2, [r4, #4]
    727e:	2a00      	cmp	r2, #0
    7280:	d01b      	beq.n	72ba <osMailCreate+0x6e>
    7282:	68a3      	ldr	r3, [r4, #8]
    7284:	2b00      	cmp	r3, #0
    7286:	d018      	beq.n	72ba <osMailCreate+0x6e>
    7288:	6858      	ldr	r0, [r3, #4]
    728a:	681d      	ldr	r5, [r3, #0]
    728c:	2800      	cmp	r0, #0
    728e:	d014      	beq.n	72ba <osMailCreate+0x6e>
    7290:	2d00      	cmp	r5, #0
    7292:	d012      	beq.n	72ba <osMailCreate+0x6e>
    7294:	782b      	ldrb	r3, [r5, #0]
    7296:	2b00      	cmp	r3, #0
    7298:	d10f      	bne.n	72ba <osMailCreate+0x6e>
    729a:	3303      	adds	r3, #3
    729c:	3203      	adds	r2, #3
    729e:	439a      	bics	r2, r3
    72a0:	4351      	muls	r1, r2
    72a2:	310c      	adds	r1, #12
    72a4:	f000 f99e 	bl	75e4 <_init_box>
    72a8:	6823      	ldr	r3, [r4, #0]
    72aa:	0028      	movs	r0, r5
    72ac:	1d19      	adds	r1, r3, #4
    72ae:	0089      	lsls	r1, r1, #2
    72b0:	b289      	uxth	r1, r1
    72b2:	f000 fbf3 	bl	7a9c <rt_mbx_init>
    72b6:	68a0      	ldr	r0, [r4, #8]
    72b8:	e7d6      	b.n	7268 <osMailCreate+0x1c>
    72ba:	2000      	movs	r0, #0
    72bc:	e7d4      	b.n	7268 <osMailCreate+0x1c>
    72be:	46c0      	nop			; (mov r8, r8)
    72c0:	20006081 	.word	0x20006081
    72c4:	000070d9 	.word	0x000070d9

000072c8 <osMailAlloc>:
    72c8:	b580      	push	{r7, lr}
    72ca:	f3ef 8205 	mrs	r2, IPSR
    72ce:	2a00      	cmp	r2, #0
    72d0:	d104      	bne.n	72dc <osMailAlloc+0x14>
    72d2:	2200      	movs	r2, #0
    72d4:	4f09      	ldr	r7, [pc, #36]	; (72fc <osMailAlloc+0x34>)
    72d6:	46bc      	mov	ip, r7
    72d8:	df00      	svc	0
    72da:	bd80      	pop	{r7, pc}
    72dc:	2800      	cmp	r0, #0
    72de:	d00a      	beq.n	72f6 <osMailAlloc+0x2e>
    72e0:	6803      	ldr	r3, [r0, #0]
    72e2:	6840      	ldr	r0, [r0, #4]
    72e4:	2800      	cmp	r0, #0
    72e6:	d006      	beq.n	72f6 <osMailAlloc+0x2e>
    72e8:	2b00      	cmp	r3, #0
    72ea:	d004      	beq.n	72f6 <osMailAlloc+0x2e>
    72ec:	2900      	cmp	r1, #0
    72ee:	d102      	bne.n	72f6 <osMailAlloc+0x2e>
    72f0:	f000 f9a4 	bl	763c <rt_alloc_box>
    72f4:	e7f1      	b.n	72da <osMailAlloc+0x12>
    72f6:	2000      	movs	r0, #0
    72f8:	e7ef      	b.n	72da <osMailAlloc+0x12>
    72fa:	0000      	.short	0x0000
    72fc:	00007129 	.word	0x00007129

00007300 <osMailCAlloc>:
    7300:	b5b0      	push	{r4, r5, r7, lr}
    7302:	0004      	movs	r4, r0
    7304:	f3ef 8205 	mrs	r2, IPSR
    7308:	2a00      	cmp	r2, #0
    730a:	d112      	bne.n	7332 <osMailCAlloc+0x32>
    730c:	2200      	movs	r2, #0
    730e:	4f13      	ldr	r7, [pc, #76]	; (735c <osMailCAlloc+0x5c>)
    7310:	46bc      	mov	ip, r7
    7312:	df00      	svc	0
    7314:	6863      	ldr	r3, [r4, #4]
    7316:	2b00      	cmp	r3, #0
    7318:	d00a      	beq.n	7330 <osMailCAlloc+0x30>
    731a:	2800      	cmp	r0, #0
    731c:	d01b      	beq.n	7356 <osMailCAlloc+0x56>
    731e:	689b      	ldr	r3, [r3, #8]
    7320:	2b00      	cmp	r3, #0
    7322:	d005      	beq.n	7330 <osMailCAlloc+0x30>
    7324:	0002      	movs	r2, r0
    7326:	2100      	movs	r1, #0
    7328:	3b04      	subs	r3, #4
    732a:	c202      	stmia	r2!, {r1}
    732c:	2b00      	cmp	r3, #0
    732e:	d1fb      	bne.n	7328 <osMailCAlloc+0x28>
    7330:	bdb0      	pop	{r4, r5, r7, pc}
    7332:	2800      	cmp	r0, #0
    7334:	d00f      	beq.n	7356 <osMailCAlloc+0x56>
    7336:	6803      	ldr	r3, [r0, #0]
    7338:	6840      	ldr	r0, [r0, #4]
    733a:	2800      	cmp	r0, #0
    733c:	d00b      	beq.n	7356 <osMailCAlloc+0x56>
    733e:	2b00      	cmp	r3, #0
    7340:	d009      	beq.n	7356 <osMailCAlloc+0x56>
    7342:	2900      	cmp	r1, #0
    7344:	d107      	bne.n	7356 <osMailCAlloc+0x56>
    7346:	f000 f979 	bl	763c <rt_alloc_box>
    734a:	2800      	cmp	r0, #0
    734c:	d003      	beq.n	7356 <osMailCAlloc+0x56>
    734e:	6863      	ldr	r3, [r4, #4]
    7350:	2b00      	cmp	r3, #0
    7352:	d1e4      	bne.n	731e <osMailCAlloc+0x1e>
    7354:	e7ec      	b.n	7330 <osMailCAlloc+0x30>
    7356:	2000      	movs	r0, #0
    7358:	e7ea      	b.n	7330 <osMailCAlloc+0x30>
    735a:	0000      	.short	0x0000
    735c:	00007129 	.word	0x00007129

00007360 <osMailFree>:
    7360:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7362:	f3ef 8205 	mrs	r2, IPSR
    7366:	2a00      	cmp	r2, #0
    7368:	d106      	bne.n	7378 <osMailFree+0x18>
    736a:	2200      	movs	r2, #0
    736c:	4f13      	ldr	r7, [pc, #76]	; (73bc <osMailFree+0x5c>)
    736e:	46bc      	mov	ip, r7
    7370:	df00      	svc	0
    7372:	0004      	movs	r4, r0
    7374:	0020      	movs	r0, r4
    7376:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7378:	2800      	cmp	r0, #0
    737a:	d01a      	beq.n	73b2 <osMailFree+0x52>
    737c:	6805      	ldr	r5, [r0, #0]
    737e:	2d00      	cmp	r5, #0
    7380:	d017      	beq.n	73b2 <osMailFree+0x52>
    7382:	6846      	ldr	r6, [r0, #4]
    7384:	2480      	movs	r4, #128	; 0x80
    7386:	2e00      	cmp	r6, #0
    7388:	d0f4      	beq.n	7374 <osMailFree+0x14>
    738a:	0030      	movs	r0, r6
    738c:	f000 f976 	bl	767c <rt_free_box>
    7390:	3406      	adds	r4, #6
    7392:	2800      	cmp	r0, #0
    7394:	d1ee      	bne.n	7374 <osMailFree+0x14>
    7396:	686b      	ldr	r3, [r5, #4]
    7398:	2b00      	cmp	r3, #0
    739a:	d00c      	beq.n	73b6 <osMailFree+0x56>
    739c:	786b      	ldrb	r3, [r5, #1]
    739e:	2400      	movs	r4, #0
    73a0:	2b03      	cmp	r3, #3
    73a2:	d1e7      	bne.n	7374 <osMailFree+0x14>
    73a4:	0031      	movs	r1, r6
    73a6:	0028      	movs	r0, r5
    73a8:	f000 fe46 	bl	8038 <rt_psq_enq>
    73ac:	f001 f828 	bl	8400 <rt_psh_req>
    73b0:	e7e0      	b.n	7374 <osMailFree+0x14>
    73b2:	2480      	movs	r4, #128	; 0x80
    73b4:	e7de      	b.n	7374 <osMailFree+0x14>
    73b6:	2400      	movs	r4, #0
    73b8:	e7dc      	b.n	7374 <osMailFree+0x14>
    73ba:	0000      	.short	0x0000
    73bc:	000071d5 	.word	0x000071d5

000073c0 <osMailPut>:
    73c0:	b5b0      	push	{r4, r5, r7, lr}
    73c2:	0002      	movs	r2, r0
    73c4:	000c      	movs	r4, r1
    73c6:	2800      	cmp	r0, #0
    73c8:	d00e      	beq.n	73e8 <osMailPut+0x28>
    73ca:	2086      	movs	r0, #134	; 0x86
    73cc:	2900      	cmp	r1, #0
    73ce:	d00a      	beq.n	73e6 <osMailPut+0x26>
    73d0:	6815      	ldr	r5, [r2, #0]
    73d2:	f3ef 8205 	mrs	r2, IPSR
    73d6:	2a00      	cmp	r2, #0
    73d8:	d008      	beq.n	73ec <osMailPut+0x2c>
    73da:	2d00      	cmp	r5, #0
    73dc:	d004      	beq.n	73e8 <osMailPut+0x28>
    73de:	782b      	ldrb	r3, [r5, #0]
    73e0:	3806      	subs	r0, #6
    73e2:	2b01      	cmp	r3, #1
    73e4:	d008      	beq.n	73f8 <osMailPut+0x38>
    73e6:	bdb0      	pop	{r4, r5, r7, pc}
    73e8:	2080      	movs	r0, #128	; 0x80
    73ea:	e7fc      	b.n	73e6 <osMailPut+0x26>
    73ec:	0028      	movs	r0, r5
    73ee:	2200      	movs	r2, #0
    73f0:	4f08      	ldr	r7, [pc, #32]	; (7414 <osMailPut+0x54>)
    73f2:	46bc      	mov	ip, r7
    73f4:	df00      	svc	0
    73f6:	e7f6      	b.n	73e6 <osMailPut+0x26>
    73f8:	0028      	movs	r0, r5
    73fa:	f000 fc05 	bl	7c08 <rt_mbx_check>
    73fe:	0003      	movs	r3, r0
    7400:	2081      	movs	r0, #129	; 0x81
    7402:	2b00      	cmp	r3, #0
    7404:	d0ef      	beq.n	73e6 <osMailPut+0x26>
    7406:	0028      	movs	r0, r5
    7408:	0021      	movs	r1, r4
    740a:	f000 fc01 	bl	7c10 <isr_mbx_send>
    740e:	2000      	movs	r0, #0
    7410:	e7e9      	b.n	73e6 <osMailPut+0x26>
    7412:	0000      	.short	0x0000
    7414:	00006e51 	.word	0x00006e51

00007418 <osMailGet>:
    7418:	b5b0      	push	{r4, r5, r7, lr}
    741a:	0004      	movs	r4, r0
    741c:	b084      	sub	sp, #16
    741e:	2900      	cmp	r1, #0
    7420:	d012      	beq.n	7448 <osMailGet+0x30>
    7422:	6808      	ldr	r0, [r1, #0]
    7424:	f3ef 8105 	mrs	r1, IPSR
    7428:	2900      	cmp	r1, #0
    742a:	d113      	bne.n	7454 <osMailGet+0x3c>
    742c:	0011      	movs	r1, r2
    742e:	4f0d      	ldr	r7, [pc, #52]	; (7464 <osMailGet+0x4c>)
    7430:	46bc      	mov	ip, r7
    7432:	df00      	svc	0
    7434:	2810      	cmp	r0, #16
    7436:	d005      	beq.n	7444 <osMailGet+0x2c>
    7438:	6020      	str	r0, [r4, #0]
    743a:	6061      	str	r1, [r4, #4]
    743c:	60a2      	str	r2, [r4, #8]
    743e:	0020      	movs	r0, r4
    7440:	b004      	add	sp, #16
    7442:	bdb0      	pop	{r4, r5, r7, pc}
    7444:	3010      	adds	r0, #16
    7446:	e7f7      	b.n	7438 <osMailGet+0x20>
    7448:	2380      	movs	r3, #128	; 0x80
    744a:	6003      	str	r3, [r0, #0]
    744c:	2300      	movs	r3, #0
    744e:	6043      	str	r3, [r0, #4]
    7450:	6083      	str	r3, [r0, #8]
    7452:	e7f4      	b.n	743e <osMailGet+0x26>
    7454:	0001      	movs	r1, r0
    7456:	a801      	add	r0, sp, #4
    7458:	f7ff fd9c 	bl	6f94 <isrMessageGet>
    745c:	9801      	ldr	r0, [sp, #4]
    745e:	9902      	ldr	r1, [sp, #8]
    7460:	9a03      	ldr	r2, [sp, #12]
    7462:	e7e7      	b.n	7434 <osMailGet+0x1c>
    7464:	00006ed1 	.word	0x00006ed1

00007468 <os_suspend>:
    7468:	b580      	push	{r7, lr}
    746a:	4f02      	ldr	r7, [pc, #8]	; (7474 <os_suspend+0xc>)
    746c:	46bc      	mov	ip, r7
    746e:	df00      	svc	0
    7470:	bd80      	pop	{r7, pc}
    7472:	0000      	.short	0x0000
    7474:	000081b1 	.word	0x000081b1

00007478 <os_resume>:
    7478:	b580      	push	{r7, lr}
    747a:	4f02      	ldr	r7, [pc, #8]	; (7484 <os_resume+0xc>)
    747c:	46bc      	mov	ip, r7
    747e:	df00      	svc	0
    7480:	bd80      	pop	{r7, pc}
    7482:	0000      	.short	0x0000
    7484:	00008241 	.word	0x00008241

00007488 <rt_init_stack>:
    7488:	b5f0      	push	{r4, r5, r6, r7, lr}
    748a:	464e      	mov	r6, r9
    748c:	4645      	mov	r5, r8
    748e:	4657      	mov	r7, sl
    7490:	b4e0      	push	{r5, r6, r7}
    7492:	4b26      	ldr	r3, [pc, #152]	; (752c <rt_init_stack+0xa4>)
    7494:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    7496:	b082      	sub	sp, #8
    7498:	4680      	mov	r8, r0
    749a:	4689      	mov	r9, r1
    749c:	08a4      	lsrs	r4, r4, #2
    749e:	681b      	ldr	r3, [r3, #0]
    74a0:	d104      	bne.n	74ac <rt_init_stack+0x24>
    74a2:	9301      	str	r3, [sp, #4]
    74a4:	466b      	mov	r3, sp
    74a6:	889c      	ldrh	r4, [r3, #4]
    74a8:	9b01      	ldr	r3, [sp, #4]
    74aa:	08a4      	lsrs	r4, r4, #2
    74ac:	469a      	mov	sl, r3
    74ae:	4643      	mov	r3, r8
    74b0:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    74b2:	00a5      	lsls	r5, r4, #2
    74b4:	197d      	adds	r5, r7, r5
    74b6:	076b      	lsls	r3, r5, #29
    74b8:	d500      	bpl.n	74bc <rt_init_stack+0x34>
    74ba:	3d04      	subs	r5, #4
    74bc:	2280      	movs	r2, #128	; 0x80
    74be:	1f2b      	subs	r3, r5, #4
    74c0:	002e      	movs	r6, r5
    74c2:	0452      	lsls	r2, r2, #17
    74c4:	601a      	str	r2, [r3, #0]
    74c6:	464a      	mov	r2, r9
    74c8:	3b04      	subs	r3, #4
    74ca:	3e40      	subs	r6, #64	; 0x40
    74cc:	601a      	str	r2, [r3, #0]
    74ce:	2100      	movs	r1, #0
    74d0:	2238      	movs	r2, #56	; 0x38
    74d2:	0030      	movs	r0, r6
    74d4:	f001 fb30 	bl	8b38 <memset>
    74d8:	4643      	mov	r3, r8
    74da:	69db      	ldr	r3, [r3, #28]
    74dc:	3d20      	subs	r5, #32
    74de:	602b      	str	r3, [r5, #0]
    74e0:	464a      	mov	r2, r9
    74e2:	4643      	mov	r3, r8
    74e4:	629e      	str	r6, [r3, #40]	; 0x28
    74e6:	631a      	str	r2, [r3, #48]	; 0x30
    74e8:	4653      	mov	r3, sl
    74ea:	00db      	lsls	r3, r3, #3
    74ec:	d516      	bpl.n	751c <rt_init_stack+0x94>
    74ee:	2c11      	cmp	r4, #17
    74f0:	d914      	bls.n	751c <rt_init_stack+0x94>
    74f2:	3c10      	subs	r4, #16
    74f4:	0864      	lsrs	r4, r4, #1
    74f6:	1e62      	subs	r2, r4, #1
    74f8:	2a00      	cmp	r2, #0
    74fa:	d00a      	beq.n	7512 <rt_init_stack+0x8a>
    74fc:	0033      	movs	r3, r6
    74fe:	490c      	ldr	r1, [pc, #48]	; (7530 <rt_init_stack+0xa8>)
    7500:	3b08      	subs	r3, #8
    7502:	3a01      	subs	r2, #1
    7504:	6059      	str	r1, [r3, #4]
    7506:	6019      	str	r1, [r3, #0]
    7508:	2a00      	cmp	r2, #0
    750a:	d1f9      	bne.n	7500 <rt_init_stack+0x78>
    750c:	00e4      	lsls	r4, r4, #3
    750e:	1b36      	subs	r6, r6, r4
    7510:	3608      	adds	r6, #8
    7512:	3e04      	subs	r6, #4
    7514:	42b7      	cmp	r7, r6
    7516:	d201      	bcs.n	751c <rt_init_stack+0x94>
    7518:	4b05      	ldr	r3, [pc, #20]	; (7530 <rt_init_stack+0xa8>)
    751a:	6033      	str	r3, [r6, #0]
    751c:	4b05      	ldr	r3, [pc, #20]	; (7534 <rt_init_stack+0xac>)
    751e:	603b      	str	r3, [r7, #0]
    7520:	b002      	add	sp, #8
    7522:	bc1c      	pop	{r2, r3, r4}
    7524:	4690      	mov	r8, r2
    7526:	4699      	mov	r9, r3
    7528:	46a2      	mov	sl, r4
    752a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    752c:	00008cd8 	.word	0x00008cd8
    7530:	cccccccc 	.word	0xcccccccc
    7534:	e25a2ea5 	.word	0xe25a2ea5

00007538 <rt_ret_val>:
    7538:	6a83      	ldr	r3, [r0, #40]	; 0x28
    753a:	6219      	str	r1, [r3, #32]
    753c:	4770      	bx	lr
    753e:	46c0      	nop			; (mov r8, r8)

00007540 <rt_ret_val2>:
    7540:	6a83      	ldr	r3, [r0, #40]	; 0x28
    7542:	6219      	str	r1, [r3, #32]
    7544:	625a      	str	r2, [r3, #36]	; 0x24
    7546:	4770      	bx	lr

00007548 <rt_init_mem>:
    7548:	0003      	movs	r3, r0
    754a:	2001      	movs	r0, #1
    754c:	2b00      	cmp	r3, #0
    754e:	d008      	beq.n	7562 <rt_init_mem+0x1a>
    7550:	2907      	cmp	r1, #7
    7552:	d906      	bls.n	7562 <rt_init_mem+0x1a>
    7554:	2200      	movs	r2, #0
    7556:	2000      	movs	r0, #0
    7558:	3904      	subs	r1, #4
    755a:	1859      	adds	r1, r3, r1
    755c:	6019      	str	r1, [r3, #0]
    755e:	600a      	str	r2, [r1, #0]
    7560:	605a      	str	r2, [r3, #4]
    7562:	4770      	bx	lr

00007564 <rt_alloc_mem>:
    7564:	b510      	push	{r4, lr}
    7566:	2800      	cmp	r0, #0
    7568:	d018      	beq.n	759c <rt_alloc_mem+0x38>
    756a:	2900      	cmp	r1, #0
    756c:	d016      	beq.n	759c <rt_alloc_mem+0x38>
    756e:	2303      	movs	r3, #3
    7570:	310b      	adds	r1, #11
    7572:	4399      	bics	r1, r3
    7574:	6802      	ldr	r2, [r0, #0]
    7576:	e003      	b.n	7580 <rt_alloc_mem+0x1c>
    7578:	0010      	movs	r0, r2
    757a:	6812      	ldr	r2, [r2, #0]
    757c:	2a00      	cmp	r2, #0
    757e:	d00d      	beq.n	759c <rt_alloc_mem+0x38>
    7580:	6844      	ldr	r4, [r0, #4]
    7582:	1a13      	subs	r3, r2, r0
    7584:	1b1b      	subs	r3, r3, r4
    7586:	4299      	cmp	r1, r3
    7588:	d8f6      	bhi.n	7578 <rt_alloc_mem+0x14>
    758a:	2c00      	cmp	r4, #0
    758c:	d008      	beq.n	75a0 <rt_alloc_mem+0x3c>
    758e:	1904      	adds	r4, r0, r4
    7590:	6022      	str	r2, [r4, #0]
    7592:	6061      	str	r1, [r4, #4]
    7594:	6004      	str	r4, [r0, #0]
    7596:	0020      	movs	r0, r4
    7598:	3008      	adds	r0, #8
    759a:	e000      	b.n	759e <rt_alloc_mem+0x3a>
    759c:	2000      	movs	r0, #0
    759e:	bd10      	pop	{r4, pc}
    75a0:	6041      	str	r1, [r0, #4]
    75a2:	3008      	adds	r0, #8
    75a4:	e7fb      	b.n	759e <rt_alloc_mem+0x3a>
    75a6:	46c0      	nop			; (mov r8, r8)

000075a8 <rt_free_mem>:
    75a8:	2800      	cmp	r0, #0
    75aa:	d015      	beq.n	75d8 <rt_free_mem+0x30>
    75ac:	2900      	cmp	r1, #0
    75ae:	d013      	beq.n	75d8 <rt_free_mem+0x30>
    75b0:	3908      	subs	r1, #8
    75b2:	4288      	cmp	r0, r1
    75b4:	d012      	beq.n	75dc <rt_free_mem+0x34>
    75b6:	6803      	ldr	r3, [r0, #0]
    75b8:	2b00      	cmp	r3, #0
    75ba:	d105      	bne.n	75c8 <rt_free_mem+0x20>
    75bc:	e00c      	b.n	75d8 <rt_free_mem+0x30>
    75be:	681a      	ldr	r2, [r3, #0]
    75c0:	0018      	movs	r0, r3
    75c2:	2a00      	cmp	r2, #0
    75c4:	d008      	beq.n	75d8 <rt_free_mem+0x30>
    75c6:	0013      	movs	r3, r2
    75c8:	4299      	cmp	r1, r3
    75ca:	d1f8      	bne.n	75be <rt_free_mem+0x16>
    75cc:	2800      	cmp	r0, #0
    75ce:	d005      	beq.n	75dc <rt_free_mem+0x34>
    75d0:	680b      	ldr	r3, [r1, #0]
    75d2:	6003      	str	r3, [r0, #0]
    75d4:	2000      	movs	r0, #0
    75d6:	e000      	b.n	75da <rt_free_mem+0x32>
    75d8:	2001      	movs	r0, #1
    75da:	4770      	bx	lr
    75dc:	2300      	movs	r3, #0
    75de:	2000      	movs	r0, #0
    75e0:	604b      	str	r3, [r1, #4]
    75e2:	e7fa      	b.n	75da <rt_free_mem+0x32>

000075e4 <_init_box>:
    75e4:	b530      	push	{r4, r5, lr}
    75e6:	2a00      	cmp	r2, #0
    75e8:	db1e      	blt.n	7628 <_init_box+0x44>
    75ea:	2303      	movs	r3, #3
    75ec:	3203      	adds	r2, #3
    75ee:	439a      	bics	r2, r3
    75f0:	3309      	adds	r3, #9
    75f2:	2401      	movs	r4, #1
    75f4:	2a00      	cmp	r2, #0
    75f6:	d015      	beq.n	7624 <_init_box+0x40>
    75f8:	18d5      	adds	r5, r2, r3
    75fa:	428d      	cmp	r5, r1
    75fc:	d812      	bhi.n	7624 <_init_box+0x40>
    75fe:	1841      	adds	r1, r0, r1
    7600:	18c3      	adds	r3, r0, r3
    7602:	6041      	str	r1, [r0, #4]
    7604:	6003      	str	r3, [r0, #0]
    7606:	6082      	str	r2, [r0, #8]
    7608:	1898      	adds	r0, r3, r2
    760a:	1a89      	subs	r1, r1, r2
    760c:	4281      	cmp	r1, r0
    760e:	d201      	bcs.n	7614 <_init_box+0x30>
    7610:	e011      	b.n	7636 <_init_box+0x52>
    7612:	0020      	movs	r0, r4
    7614:	1884      	adds	r4, r0, r2
    7616:	6018      	str	r0, [r3, #0]
    7618:	189b      	adds	r3, r3, r2
    761a:	42a1      	cmp	r1, r4
    761c:	d2f9      	bcs.n	7612 <_init_box+0x2e>
    761e:	2300      	movs	r3, #0
    7620:	2400      	movs	r4, #0
    7622:	6003      	str	r3, [r0, #0]
    7624:	0020      	movs	r0, r4
    7626:	bd30      	pop	{r4, r5, pc}
    7628:	2307      	movs	r3, #7
    762a:	0052      	lsls	r2, r2, #1
    762c:	0852      	lsrs	r2, r2, #1
    762e:	3207      	adds	r2, #7
    7630:	439a      	bics	r2, r3
    7632:	3309      	adds	r3, #9
    7634:	e7dd      	b.n	75f2 <_init_box+0xe>
    7636:	0018      	movs	r0, r3
    7638:	e7f1      	b.n	761e <_init_box+0x3a>
    763a:	46c0      	nop			; (mov r8, r8)

0000763c <rt_alloc_box>:
    763c:	f3ef 8310 	mrs	r3, PRIMASK
    7640:	b672      	cpsid	i
    7642:	2201      	movs	r2, #1
    7644:	4013      	ands	r3, r2
    7646:	6802      	ldr	r2, [r0, #0]
    7648:	2a00      	cmp	r2, #0
    764a:	d001      	beq.n	7650 <rt_alloc_box+0x14>
    764c:	6811      	ldr	r1, [r2, #0]
    764e:	6001      	str	r1, [r0, #0]
    7650:	2b00      	cmp	r3, #0
    7652:	d100      	bne.n	7656 <rt_alloc_box+0x1a>
    7654:	b662      	cpsie	i
    7656:	0010      	movs	r0, r2
    7658:	4770      	bx	lr
    765a:	46c0      	nop			; (mov r8, r8)

0000765c <_calloc_box>:
    765c:	b510      	push	{r4, lr}
    765e:	0004      	movs	r4, r0
    7660:	f7fd fb8b 	bl	4d7a <_alloc_box>
    7664:	2800      	cmp	r0, #0
    7666:	d008      	beq.n	767a <_calloc_box+0x1e>
    7668:	68a3      	ldr	r3, [r4, #8]
    766a:	2b00      	cmp	r3, #0
    766c:	d005      	beq.n	767a <_calloc_box+0x1e>
    766e:	0002      	movs	r2, r0
    7670:	2100      	movs	r1, #0
    7672:	3b04      	subs	r3, #4
    7674:	c202      	stmia	r2!, {r1}
    7676:	2b00      	cmp	r3, #0
    7678:	d1fb      	bne.n	7672 <_calloc_box+0x16>
    767a:	bd10      	pop	{r4, pc}

0000767c <rt_free_box>:
    767c:	0003      	movs	r3, r0
    767e:	2001      	movs	r0, #1
    7680:	4299      	cmp	r1, r3
    7682:	d30b      	bcc.n	769c <rt_free_box+0x20>
    7684:	685a      	ldr	r2, [r3, #4]
    7686:	4291      	cmp	r1, r2
    7688:	d208      	bcs.n	769c <rt_free_box+0x20>
    768a:	f3ef 8210 	mrs	r2, PRIMASK
    768e:	b672      	cpsid	i
    7690:	4010      	ands	r0, r2
    7692:	681a      	ldr	r2, [r3, #0]
    7694:	600a      	str	r2, [r1, #0]
    7696:	6019      	str	r1, [r3, #0]
    7698:	d101      	bne.n	769e <rt_free_box+0x22>
    769a:	b662      	cpsie	i
    769c:	4770      	bx	lr
    769e:	2000      	movs	r0, #0
    76a0:	e7fc      	b.n	769c <rt_free_box+0x20>
    76a2:	46c0      	nop			; (mov r8, r8)

000076a4 <rt_mut_init>:
    76a4:	2303      	movs	r3, #3
    76a6:	7003      	strb	r3, [r0, #0]
    76a8:	2300      	movs	r3, #0
    76aa:	8043      	strh	r3, [r0, #2]
    76ac:	6043      	str	r3, [r0, #4]
    76ae:	6083      	str	r3, [r0, #8]
    76b0:	60c3      	str	r3, [r0, #12]
    76b2:	4770      	bx	lr

000076b4 <rt_mut_delete>:
    76b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    76b6:	8843      	ldrh	r3, [r0, #2]
    76b8:	0005      	movs	r5, r0
    76ba:	2b00      	cmp	r3, #0
    76bc:	d02c      	beq.n	7718 <rt_mut_delete+0x64>
    76be:	6880      	ldr	r0, [r0, #8]
    76c0:	6a04      	ldr	r4, [r0, #32]
    76c2:	42a5      	cmp	r5, r4
    76c4:	d05a      	beq.n	777c <rt_mut_delete+0xc8>
    76c6:	2c00      	cmp	r4, #0
    76c8:	d01a      	beq.n	7700 <rt_mut_delete+0x4c>
    76ca:	68e3      	ldr	r3, [r4, #12]
    76cc:	429d      	cmp	r5, r3
    76ce:	d050      	beq.n	7772 <rt_mut_delete+0xbe>
    76d0:	001a      	movs	r2, r3
    76d2:	e003      	b.n	76dc <rt_mut_delete+0x28>
    76d4:	68d1      	ldr	r1, [r2, #12]
    76d6:	428d      	cmp	r5, r1
    76d8:	d04c      	beq.n	7774 <rt_mut_delete+0xc0>
    76da:	000a      	movs	r2, r1
    76dc:	2a00      	cmp	r2, #0
    76de:	d1f9      	bne.n	76d4 <rt_mut_delete+0x20>
    76e0:	2224      	movs	r2, #36	; 0x24
    76e2:	5c81      	ldrb	r1, [r0, r2]
    76e4:	6862      	ldr	r2, [r4, #4]
    76e6:	2a00      	cmp	r2, #0
    76e8:	d005      	beq.n	76f6 <rt_mut_delete+0x42>
    76ea:	7892      	ldrb	r2, [r2, #2]
    76ec:	1c14      	adds	r4, r2, #0
    76ee:	428a      	cmp	r2, r1
    76f0:	d200      	bcs.n	76f4 <rt_mut_delete+0x40>
    76f2:	1c0c      	adds	r4, r1, #0
    76f4:	b2e1      	uxtb	r1, r4
    76f6:	2b00      	cmp	r3, #0
    76f8:	d004      	beq.n	7704 <rt_mut_delete+0x50>
    76fa:	001c      	movs	r4, r3
    76fc:	68db      	ldr	r3, [r3, #12]
    76fe:	e7f1      	b.n	76e4 <rt_mut_delete+0x30>
    7700:	2324      	movs	r3, #36	; 0x24
    7702:	5cc1      	ldrb	r1, [r0, r3]
    7704:	7883      	ldrb	r3, [r0, #2]
    7706:	428b      	cmp	r3, r1
    7708:	d006      	beq.n	7718 <rt_mut_delete+0x64>
    770a:	4b20      	ldr	r3, [pc, #128]	; (778c <rt_mut_delete+0xd8>)
    770c:	7081      	strb	r1, [r0, #2]
    770e:	681b      	ldr	r3, [r3, #0]
    7710:	4298      	cmp	r0, r3
    7712:	d001      	beq.n	7718 <rt_mut_delete+0x64>
    7714:	f000 fb72 	bl	7dfc <rt_resort_prio>
    7718:	686b      	ldr	r3, [r5, #4]
    771a:	4e1d      	ldr	r6, [pc, #116]	; (7790 <rt_mut_delete+0xdc>)
    771c:	2b00      	cmp	r3, #0
    771e:	d012      	beq.n	7746 <rt_mut_delete+0x92>
    7720:	2701      	movs	r7, #1
    7722:	0028      	movs	r0, r5
    7724:	f000 fb3a 	bl	7d9c <rt_get_first>
    7728:	0004      	movs	r4, r0
    772a:	2100      	movs	r1, #0
    772c:	f7ff ff04 	bl	7538 <rt_ret_val>
    7730:	0020      	movs	r0, r4
    7732:	f000 fc6b 	bl	800c <rt_rmv_dly>
    7736:	7067      	strb	r7, [r4, #1]
    7738:	0021      	movs	r1, r4
    773a:	0030      	movs	r0, r6
    773c:	f000 fb08 	bl	7d50 <rt_put_prio>
    7740:	686b      	ldr	r3, [r5, #4]
    7742:	2b00      	cmp	r3, #0
    7744:	d1ed      	bne.n	7722 <rt_mut_delete+0x6e>
    7746:	6873      	ldr	r3, [r6, #4]
    7748:	2b00      	cmp	r3, #0
    774a:	d00e      	beq.n	776a <rt_mut_delete+0xb6>
    774c:	4c0f      	ldr	r4, [pc, #60]	; (778c <rt_mut_delete+0xd8>)
    774e:	789a      	ldrb	r2, [r3, #2]
    7750:	6821      	ldr	r1, [r4, #0]
    7752:	788b      	ldrb	r3, [r1, #2]
    7754:	429a      	cmp	r2, r3
    7756:	d908      	bls.n	776a <rt_mut_delete+0xb6>
    7758:	0030      	movs	r0, r6
    775a:	f000 faf9 	bl	7d50 <rt_put_prio>
    775e:	2201      	movs	r2, #1
    7760:	6823      	ldr	r3, [r4, #0]
    7762:	2000      	movs	r0, #0
    7764:	705a      	strb	r2, [r3, #1]
    7766:	f000 ff07 	bl	8578 <rt_dispatch>
    776a:	2300      	movs	r3, #0
    776c:	2000      	movs	r0, #0
    776e:	702b      	strb	r3, [r5, #0]
    7770:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7772:	0022      	movs	r2, r4
    7774:	68eb      	ldr	r3, [r5, #12]
    7776:	60d3      	str	r3, [r2, #12]
    7778:	68e3      	ldr	r3, [r4, #12]
    777a:	e7b1      	b.n	76e0 <rt_mut_delete+0x2c>
    777c:	2324      	movs	r3, #36	; 0x24
    777e:	68ec      	ldr	r4, [r5, #12]
    7780:	6204      	str	r4, [r0, #32]
    7782:	5cc1      	ldrb	r1, [r0, r3]
    7784:	2c00      	cmp	r4, #0
    7786:	d0bd      	beq.n	7704 <rt_mut_delete+0x50>
    7788:	68e3      	ldr	r3, [r4, #12]
    778a:	e7ab      	b.n	76e4 <rt_mut_delete+0x30>
    778c:	200060c0 	.word	0x200060c0
    7790:	2000608c 	.word	0x2000608c

00007794 <rt_mut_release>:
    7794:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7796:	8843      	ldrh	r3, [r0, #2]
    7798:	0004      	movs	r4, r0
    779a:	20ff      	movs	r0, #255	; 0xff
    779c:	2b00      	cmp	r3, #0
    779e:	d100      	bne.n	77a2 <rt_mut_release+0xe>
    77a0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    77a2:	4d3c      	ldr	r5, [pc, #240]	; (7894 <rt_mut_release+0x100>)
    77a4:	68a1      	ldr	r1, [r4, #8]
    77a6:	682a      	ldr	r2, [r5, #0]
    77a8:	4291      	cmp	r1, r2
    77aa:	d1f9      	bne.n	77a0 <rt_mut_release+0xc>
    77ac:	3b01      	subs	r3, #1
    77ae:	b29b      	uxth	r3, r3
    77b0:	8063      	strh	r3, [r4, #2]
    77b2:	2b00      	cmp	r3, #0
    77b4:	d140      	bne.n	7838 <rt_mut_release+0xa4>
    77b6:	6a0e      	ldr	r6, [r1, #32]
    77b8:	42b4      	cmp	r4, r6
    77ba:	d062      	beq.n	7882 <rt_mut_release+0xee>
    77bc:	2e00      	cmp	r6, #0
    77be:	d01a      	beq.n	77f6 <rt_mut_release+0x62>
    77c0:	68f3      	ldr	r3, [r6, #12]
    77c2:	429c      	cmp	r4, r3
    77c4:	d03a      	beq.n	783c <rt_mut_release+0xa8>
    77c6:	001a      	movs	r2, r3
    77c8:	e003      	b.n	77d2 <rt_mut_release+0x3e>
    77ca:	68d0      	ldr	r0, [r2, #12]
    77cc:	4284      	cmp	r4, r0
    77ce:	d036      	beq.n	783e <rt_mut_release+0xaa>
    77d0:	0002      	movs	r2, r0
    77d2:	2a00      	cmp	r2, #0
    77d4:	d1f9      	bne.n	77ca <rt_mut_release+0x36>
    77d6:	2224      	movs	r2, #36	; 0x24
    77d8:	5c8f      	ldrb	r7, [r1, r2]
    77da:	6872      	ldr	r2, [r6, #4]
    77dc:	2a00      	cmp	r2, #0
    77de:	d005      	beq.n	77ec <rt_mut_release+0x58>
    77e0:	7892      	ldrb	r2, [r2, #2]
    77e2:	1c10      	adds	r0, r2, #0
    77e4:	42ba      	cmp	r2, r7
    77e6:	d200      	bcs.n	77ea <rt_mut_release+0x56>
    77e8:	1c38      	adds	r0, r7, #0
    77ea:	b2c7      	uxtb	r7, r0
    77ec:	2b00      	cmp	r3, #0
    77ee:	d004      	beq.n	77fa <rt_mut_release+0x66>
    77f0:	001e      	movs	r6, r3
    77f2:	68db      	ldr	r3, [r3, #12]
    77f4:	e7f1      	b.n	77da <rt_mut_release+0x46>
    77f6:	2324      	movs	r3, #36	; 0x24
    77f8:	5ccf      	ldrb	r7, [r1, r3]
    77fa:	708f      	strb	r7, [r1, #2]
    77fc:	6863      	ldr	r3, [r4, #4]
    77fe:	2b00      	cmp	r3, #0
    7800:	d030      	beq.n	7864 <rt_mut_release+0xd0>
    7802:	0020      	movs	r0, r4
    7804:	f000 faca 	bl	7d9c <rt_get_first>
    7808:	0006      	movs	r6, r0
    780a:	2100      	movs	r1, #0
    780c:	f7ff fe94 	bl	7538 <rt_ret_val>
    7810:	0030      	movs	r0, r6
    7812:	f000 fbfb 	bl	800c <rt_rmv_dly>
    7816:	2301      	movs	r3, #1
    7818:	8063      	strh	r3, [r4, #2]
    781a:	6a33      	ldr	r3, [r6, #32]
    781c:	60a6      	str	r6, [r4, #8]
    781e:	60e3      	str	r3, [r4, #12]
    7820:	6234      	str	r4, [r6, #32]
    7822:	4c1d      	ldr	r4, [pc, #116]	; (7898 <rt_mut_release+0x104>)
    7824:	6829      	ldr	r1, [r5, #0]
    7826:	6863      	ldr	r3, [r4, #4]
    7828:	788a      	ldrb	r2, [r1, #2]
    782a:	789b      	ldrb	r3, [r3, #2]
    782c:	2701      	movs	r7, #1
    782e:	429a      	cmp	r2, r3
    7830:	d309      	bcc.n	7846 <rt_mut_release+0xb2>
    7832:	0030      	movs	r0, r6
    7834:	f000 fea0 	bl	8578 <rt_dispatch>
    7838:	2000      	movs	r0, #0
    783a:	e7b1      	b.n	77a0 <rt_mut_release+0xc>
    783c:	0032      	movs	r2, r6
    783e:	68e3      	ldr	r3, [r4, #12]
    7840:	60d3      	str	r3, [r2, #12]
    7842:	68f3      	ldr	r3, [r6, #12]
    7844:	e7c7      	b.n	77d6 <rt_mut_release+0x42>
    7846:	0020      	movs	r0, r4
    7848:	f000 fa82 	bl	7d50 <rt_put_prio>
    784c:	0031      	movs	r1, r6
    784e:	0020      	movs	r0, r4
    7850:	f000 fa7e 	bl	7d50 <rt_put_prio>
    7854:	682b      	ldr	r3, [r5, #0]
    7856:	2000      	movs	r0, #0
    7858:	705f      	strb	r7, [r3, #1]
    785a:	7077      	strb	r7, [r6, #1]
    785c:	f000 fe8c 	bl	8578 <rt_dispatch>
    7860:	2000      	movs	r0, #0
    7862:	e79d      	b.n	77a0 <rt_mut_release+0xc>
    7864:	480c      	ldr	r0, [pc, #48]	; (7898 <rt_mut_release+0x104>)
    7866:	6843      	ldr	r3, [r0, #4]
    7868:	789b      	ldrb	r3, [r3, #2]
    786a:	42bb      	cmp	r3, r7
    786c:	d9e4      	bls.n	7838 <rt_mut_release+0xa4>
    786e:	f000 fa6f 	bl	7d50 <rt_put_prio>
    7872:	2201      	movs	r2, #1
    7874:	682b      	ldr	r3, [r5, #0]
    7876:	2000      	movs	r0, #0
    7878:	705a      	strb	r2, [r3, #1]
    787a:	f000 fe7d 	bl	8578 <rt_dispatch>
    787e:	2000      	movs	r0, #0
    7880:	e78e      	b.n	77a0 <rt_mut_release+0xc>
    7882:	2324      	movs	r3, #36	; 0x24
    7884:	68e6      	ldr	r6, [r4, #12]
    7886:	620e      	str	r6, [r1, #32]
    7888:	5ccf      	ldrb	r7, [r1, r3]
    788a:	2e00      	cmp	r6, #0
    788c:	d0b5      	beq.n	77fa <rt_mut_release+0x66>
    788e:	68f3      	ldr	r3, [r6, #12]
    7890:	e7a3      	b.n	77da <rt_mut_release+0x46>
    7892:	46c0      	nop			; (mov r8, r8)
    7894:	200060c0 	.word	0x200060c0
    7898:	2000608c 	.word	0x2000608c

0000789c <rt_mut_wait>:
    789c:	b570      	push	{r4, r5, r6, lr}
    789e:	8843      	ldrh	r3, [r0, #2]
    78a0:	0004      	movs	r4, r0
    78a2:	000d      	movs	r5, r1
    78a4:	2b00      	cmp	r3, #0
    78a6:	d017      	beq.n	78d8 <rt_mut_wait+0x3c>
    78a8:	4e19      	ldr	r6, [pc, #100]	; (7910 <rt_mut_wait+0x74>)
    78aa:	6882      	ldr	r2, [r0, #8]
    78ac:	6831      	ldr	r1, [r6, #0]
    78ae:	428a      	cmp	r2, r1
    78b0:	d026      	beq.n	7900 <rt_mut_wait+0x64>
    78b2:	2001      	movs	r0, #1
    78b4:	2d00      	cmp	r5, #0
    78b6:	d00e      	beq.n	78d6 <rt_mut_wait+0x3a>
    78b8:	788b      	ldrb	r3, [r1, #2]
    78ba:	7890      	ldrb	r0, [r2, #2]
    78bc:	4298      	cmp	r0, r3
    78be:	d319      	bcc.n	78f4 <rt_mut_wait+0x58>
    78c0:	6863      	ldr	r3, [r4, #4]
    78c2:	2b00      	cmp	r3, #0
    78c4:	d012      	beq.n	78ec <rt_mut_wait+0x50>
    78c6:	0020      	movs	r0, r4
    78c8:	f000 fa42 	bl	7d50 <rt_put_prio>
    78cc:	0028      	movs	r0, r5
    78ce:	2109      	movs	r1, #9
    78d0:	f000 fe78 	bl	85c4 <rt_block>
    78d4:	2001      	movs	r0, #1
    78d6:	bd70      	pop	{r4, r5, r6, pc}
    78d8:	4b0d      	ldr	r3, [pc, #52]	; (7910 <rt_mut_wait+0x74>)
    78da:	681b      	ldr	r3, [r3, #0]
    78dc:	6a1a      	ldr	r2, [r3, #32]
    78de:	6083      	str	r3, [r0, #8]
    78e0:	60c2      	str	r2, [r0, #12]
    78e2:	6218      	str	r0, [r3, #32]
    78e4:	2301      	movs	r3, #1
    78e6:	8043      	strh	r3, [r0, #2]
    78e8:	2000      	movs	r0, #0
    78ea:	e7f4      	b.n	78d6 <rt_mut_wait+0x3a>
    78ec:	6061      	str	r1, [r4, #4]
    78ee:	604b      	str	r3, [r1, #4]
    78f0:	608c      	str	r4, [r1, #8]
    78f2:	e7eb      	b.n	78cc <rt_mut_wait+0x30>
    78f4:	7093      	strb	r3, [r2, #2]
    78f6:	68a0      	ldr	r0, [r4, #8]
    78f8:	f000 fa80 	bl	7dfc <rt_resort_prio>
    78fc:	6831      	ldr	r1, [r6, #0]
    78fe:	e7df      	b.n	78c0 <rt_mut_wait+0x24>
    7900:	4a04      	ldr	r2, [pc, #16]	; (7914 <rt_mut_wait+0x78>)
    7902:	20ff      	movs	r0, #255	; 0xff
    7904:	4293      	cmp	r3, r2
    7906:	d0e6      	beq.n	78d6 <rt_mut_wait+0x3a>
    7908:	3301      	adds	r3, #1
    790a:	8063      	strh	r3, [r4, #2]
    790c:	2000      	movs	r0, #0
    790e:	e7e2      	b.n	78d6 <rt_mut_wait+0x3a>
    7910:	200060c0 	.word	0x200060c0
    7914:	0000ffff 	.word	0x0000ffff

00007918 <rt_time_get>:
    7918:	4b01      	ldr	r3, [pc, #4]	; (7920 <rt_time_get+0x8>)
    791a:	6818      	ldr	r0, [r3, #0]
    791c:	4770      	bx	lr
    791e:	46c0      	nop			; (mov r8, r8)
    7920:	20006088 	.word	0x20006088

00007924 <rt_dly_wait>:
    7924:	b510      	push	{r4, lr}
    7926:	2103      	movs	r1, #3
    7928:	f000 fe4c 	bl	85c4 <rt_block>
    792c:	bd10      	pop	{r4, pc}
    792e:	46c0      	nop			; (mov r8, r8)

00007930 <rt_itv_set>:
    7930:	4b03      	ldr	r3, [pc, #12]	; (7940 <rt_itv_set+0x10>)
    7932:	681a      	ldr	r2, [r3, #0]
    7934:	4b03      	ldr	r3, [pc, #12]	; (7944 <rt_itv_set+0x14>)
    7936:	82d0      	strh	r0, [r2, #22]
    7938:	681b      	ldr	r3, [r3, #0]
    793a:	18c0      	adds	r0, r0, r3
    793c:	8290      	strh	r0, [r2, #20]
    793e:	4770      	bx	lr
    7940:	200060c0 	.word	0x200060c0
    7944:	20006088 	.word	0x20006088

00007948 <rt_itv_wait>:
    7948:	b510      	push	{r4, lr}
    794a:	4b08      	ldr	r3, [pc, #32]	; (796c <rt_itv_wait+0x24>)
    794c:	681a      	ldr	r2, [r3, #0]
    794e:	4b08      	ldr	r3, [pc, #32]	; (7970 <rt_itv_wait+0x28>)
    7950:	8a90      	ldrh	r0, [r2, #20]
    7952:	681b      	ldr	r3, [r3, #0]
    7954:	8ad1      	ldrh	r1, [r2, #22]
    7956:	1ac3      	subs	r3, r0, r3
    7958:	1841      	adds	r1, r0, r1
    795a:	8291      	strh	r1, [r2, #20]
    795c:	b298      	uxth	r0, r3
    795e:	041b      	lsls	r3, r3, #16
    7960:	d402      	bmi.n	7968 <rt_itv_wait+0x20>
    7962:	2104      	movs	r1, #4
    7964:	f000 fe2e 	bl	85c4 <rt_block>
    7968:	bd10      	pop	{r4, pc}
    796a:	46c0      	nop			; (mov r8, r8)
    796c:	200060c0 	.word	0x200060c0
    7970:	20006088 	.word	0x20006088

00007974 <rt_sem_init>:
    7974:	2302      	movs	r3, #2
    7976:	7003      	strb	r3, [r0, #0]
    7978:	2300      	movs	r3, #0
    797a:	8041      	strh	r1, [r0, #2]
    797c:	6043      	str	r3, [r0, #4]
    797e:	4770      	bx	lr

00007980 <rt_sem_delete>:
    7980:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7982:	6843      	ldr	r3, [r0, #4]
    7984:	0005      	movs	r5, r0
    7986:	4e16      	ldr	r6, [pc, #88]	; (79e0 <rt_sem_delete+0x60>)
    7988:	2b00      	cmp	r3, #0
    798a:	d012      	beq.n	79b2 <rt_sem_delete+0x32>
    798c:	2701      	movs	r7, #1
    798e:	0028      	movs	r0, r5
    7990:	f000 fa04 	bl	7d9c <rt_get_first>
    7994:	0004      	movs	r4, r0
    7996:	2100      	movs	r1, #0
    7998:	f7ff fdce 	bl	7538 <rt_ret_val>
    799c:	0020      	movs	r0, r4
    799e:	f000 fb35 	bl	800c <rt_rmv_dly>
    79a2:	7067      	strb	r7, [r4, #1]
    79a4:	0021      	movs	r1, r4
    79a6:	0030      	movs	r0, r6
    79a8:	f000 f9d2 	bl	7d50 <rt_put_prio>
    79ac:	686b      	ldr	r3, [r5, #4]
    79ae:	2b00      	cmp	r3, #0
    79b0:	d1ed      	bne.n	798e <rt_sem_delete+0xe>
    79b2:	6873      	ldr	r3, [r6, #4]
    79b4:	2b00      	cmp	r3, #0
    79b6:	d00e      	beq.n	79d6 <rt_sem_delete+0x56>
    79b8:	4c0a      	ldr	r4, [pc, #40]	; (79e4 <rt_sem_delete+0x64>)
    79ba:	789a      	ldrb	r2, [r3, #2]
    79bc:	6821      	ldr	r1, [r4, #0]
    79be:	788b      	ldrb	r3, [r1, #2]
    79c0:	429a      	cmp	r2, r3
    79c2:	d908      	bls.n	79d6 <rt_sem_delete+0x56>
    79c4:	0030      	movs	r0, r6
    79c6:	f000 f9c3 	bl	7d50 <rt_put_prio>
    79ca:	2201      	movs	r2, #1
    79cc:	6823      	ldr	r3, [r4, #0]
    79ce:	2000      	movs	r0, #0
    79d0:	705a      	strb	r2, [r3, #1]
    79d2:	f000 fdd1 	bl	8578 <rt_dispatch>
    79d6:	2300      	movs	r3, #0
    79d8:	2000      	movs	r0, #0
    79da:	702b      	strb	r3, [r5, #0]
    79dc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    79de:	46c0      	nop			; (mov r8, r8)
    79e0:	2000608c 	.word	0x2000608c
    79e4:	200060c0 	.word	0x200060c0

000079e8 <rt_sem_send>:
    79e8:	6843      	ldr	r3, [r0, #4]
    79ea:	b510      	push	{r4, lr}
    79ec:	2b00      	cmp	r3, #0
    79ee:	d00d      	beq.n	7a0c <rt_sem_send+0x24>
    79f0:	f000 f9d4 	bl	7d9c <rt_get_first>
    79f4:	0004      	movs	r4, r0
    79f6:	2101      	movs	r1, #1
    79f8:	f7ff fd9e 	bl	7538 <rt_ret_val>
    79fc:	0020      	movs	r0, r4
    79fe:	f000 fb05 	bl	800c <rt_rmv_dly>
    7a02:	0020      	movs	r0, r4
    7a04:	f000 fdb8 	bl	8578 <rt_dispatch>
    7a08:	2000      	movs	r0, #0
    7a0a:	bd10      	pop	{r4, pc}
    7a0c:	8843      	ldrh	r3, [r0, #2]
    7a0e:	3301      	adds	r3, #1
    7a10:	8043      	strh	r3, [r0, #2]
    7a12:	e7f9      	b.n	7a08 <rt_sem_send+0x20>

00007a14 <rt_sem_wait>:
    7a14:	b510      	push	{r4, lr}
    7a16:	8843      	ldrh	r3, [r0, #2]
    7a18:	000c      	movs	r4, r1
    7a1a:	2b00      	cmp	r3, #0
    7a1c:	d110      	bne.n	7a40 <rt_sem_wait+0x2c>
    7a1e:	2301      	movs	r3, #1
    7a20:	2900      	cmp	r1, #0
    7a22:	d00b      	beq.n	7a3c <rt_sem_wait+0x28>
    7a24:	6843      	ldr	r3, [r0, #4]
    7a26:	2b00      	cmp	r3, #0
    7a28:	d00e      	beq.n	7a48 <rt_sem_wait+0x34>
    7a2a:	4b0a      	ldr	r3, [pc, #40]	; (7a54 <rt_sem_wait+0x40>)
    7a2c:	6819      	ldr	r1, [r3, #0]
    7a2e:	f000 f98f 	bl	7d50 <rt_put_prio>
    7a32:	2107      	movs	r1, #7
    7a34:	0020      	movs	r0, r4
    7a36:	f000 fdc5 	bl	85c4 <rt_block>
    7a3a:	2301      	movs	r3, #1
    7a3c:	0018      	movs	r0, r3
    7a3e:	bd10      	pop	{r4, pc}
    7a40:	3b01      	subs	r3, #1
    7a42:	8043      	strh	r3, [r0, #2]
    7a44:	2300      	movs	r3, #0
    7a46:	e7f9      	b.n	7a3c <rt_sem_wait+0x28>
    7a48:	4a02      	ldr	r2, [pc, #8]	; (7a54 <rt_sem_wait+0x40>)
    7a4a:	6812      	ldr	r2, [r2, #0]
    7a4c:	6042      	str	r2, [r0, #4]
    7a4e:	6053      	str	r3, [r2, #4]
    7a50:	6090      	str	r0, [r2, #8]
    7a52:	e7ee      	b.n	7a32 <rt_sem_wait+0x1e>
    7a54:	200060c0 	.word	0x200060c0

00007a58 <isr_sem_send>:
    7a58:	b510      	push	{r4, lr}
    7a5a:	2100      	movs	r1, #0
    7a5c:	f000 faec 	bl	8038 <rt_psq_enq>
    7a60:	f000 fcce 	bl	8400 <rt_psh_req>
    7a64:	bd10      	pop	{r4, pc}
    7a66:	46c0      	nop			; (mov r8, r8)

00007a68 <rt_sem_psh>:
    7a68:	6843      	ldr	r3, [r0, #4]
    7a6a:	b510      	push	{r4, lr}
    7a6c:	2b00      	cmp	r3, #0
    7a6e:	d00f      	beq.n	7a90 <rt_sem_psh+0x28>
    7a70:	f000 f994 	bl	7d9c <rt_get_first>
    7a74:	0004      	movs	r4, r0
    7a76:	f000 fac9 	bl	800c <rt_rmv_dly>
    7a7a:	2301      	movs	r3, #1
    7a7c:	2101      	movs	r1, #1
    7a7e:	0020      	movs	r0, r4
    7a80:	7063      	strb	r3, [r4, #1]
    7a82:	f7ff fd59 	bl	7538 <rt_ret_val>
    7a86:	0021      	movs	r1, r4
    7a88:	4803      	ldr	r0, [pc, #12]	; (7a98 <rt_sem_psh+0x30>)
    7a8a:	f000 f961 	bl	7d50 <rt_put_prio>
    7a8e:	bd10      	pop	{r4, pc}
    7a90:	8843      	ldrh	r3, [r0, #2]
    7a92:	3301      	adds	r3, #1
    7a94:	8043      	strh	r3, [r0, #2]
    7a96:	e7fa      	b.n	7a8e <rt_sem_psh+0x26>
    7a98:	2000608c 	.word	0x2000608c

00007a9c <rt_mbx_init>:
    7a9c:	2301      	movs	r3, #1
    7a9e:	7003      	strb	r3, [r0, #0]
    7aa0:	2300      	movs	r3, #0
    7aa2:	3910      	subs	r1, #16
    7aa4:	0889      	lsrs	r1, r1, #2
    7aa6:	7043      	strb	r3, [r0, #1]
    7aa8:	7083      	strb	r3, [r0, #2]
    7aaa:	6043      	str	r3, [r0, #4]
    7aac:	8103      	strh	r3, [r0, #8]
    7aae:	8143      	strh	r3, [r0, #10]
    7ab0:	8183      	strh	r3, [r0, #12]
    7ab2:	81c1      	strh	r1, [r0, #14]
    7ab4:	4770      	bx	lr
    7ab6:	46c0      	nop			; (mov r8, r8)

00007ab8 <rt_mbx_send>:
    7ab8:	6843      	ldr	r3, [r0, #4]
    7aba:	b570      	push	{r4, r5, r6, lr}
    7abc:	000d      	movs	r5, r1
    7abe:	0016      	movs	r6, r2
    7ac0:	2b00      	cmp	r3, #0
    7ac2:	d002      	beq.n	7aca <rt_mbx_send+0x12>
    7ac4:	7842      	ldrb	r2, [r0, #1]
    7ac6:	2a01      	cmp	r2, #1
    7ac8:	d028      	beq.n	7b1c <rt_mbx_send+0x64>
    7aca:	8982      	ldrh	r2, [r0, #12]
    7acc:	89c4      	ldrh	r4, [r0, #14]
    7ace:	42a2      	cmp	r2, r4
    7ad0:	d013      	beq.n	7afa <rt_mbx_send+0x42>
    7ad2:	8903      	ldrh	r3, [r0, #8]
    7ad4:	1d19      	adds	r1, r3, #4
    7ad6:	0089      	lsls	r1, r1, #2
    7ad8:	500d      	str	r5, [r1, r0]
    7ada:	f3ef 8110 	mrs	r1, PRIMASK
    7ade:	b672      	cpsid	i
    7ae0:	3201      	adds	r2, #1
    7ae2:	8182      	strh	r2, [r0, #12]
    7ae4:	b662      	cpsie	i
    7ae6:	3301      	adds	r3, #1
    7ae8:	b29b      	uxth	r3, r3
    7aea:	429c      	cmp	r4, r3
    7aec:	d003      	beq.n	7af6 <rt_mbx_send+0x3e>
    7aee:	2200      	movs	r2, #0
    7af0:	8103      	strh	r3, [r0, #8]
    7af2:	0010      	movs	r0, r2
    7af4:	bd70      	pop	{r4, r5, r6, pc}
    7af6:	2300      	movs	r3, #0
    7af8:	e7f9      	b.n	7aee <rt_mbx_send+0x36>
    7afa:	2201      	movs	r2, #1
    7afc:	2e00      	cmp	r6, #0
    7afe:	d0f8      	beq.n	7af2 <rt_mbx_send+0x3a>
    7b00:	2b00      	cmp	r3, #0
    7b02:	d01a      	beq.n	7b3a <rt_mbx_send+0x82>
    7b04:	4c11      	ldr	r4, [pc, #68]	; (7b4c <rt_mbx_send+0x94>)
    7b06:	6821      	ldr	r1, [r4, #0]
    7b08:	f000 f922 	bl	7d50 <rt_put_prio>
    7b0c:	6822      	ldr	r2, [r4, #0]
    7b0e:	61d5      	str	r5, [r2, #28]
    7b10:	2108      	movs	r1, #8
    7b12:	0030      	movs	r0, r6
    7b14:	f000 fd56 	bl	85c4 <rt_block>
    7b18:	2201      	movs	r2, #1
    7b1a:	e7ea      	b.n	7af2 <rt_mbx_send+0x3a>
    7b1c:	f000 f93e 	bl	7d9c <rt_get_first>
    7b20:	0004      	movs	r4, r0
    7b22:	002a      	movs	r2, r5
    7b24:	2110      	movs	r1, #16
    7b26:	f7ff fd0b 	bl	7540 <rt_ret_val2>
    7b2a:	0020      	movs	r0, r4
    7b2c:	f000 fa6e 	bl	800c <rt_rmv_dly>
    7b30:	0020      	movs	r0, r4
    7b32:	f000 fd21 	bl	8578 <rt_dispatch>
    7b36:	2200      	movs	r2, #0
    7b38:	e7db      	b.n	7af2 <rt_mbx_send+0x3a>
    7b3a:	4a04      	ldr	r2, [pc, #16]	; (7b4c <rt_mbx_send+0x94>)
    7b3c:	6812      	ldr	r2, [r2, #0]
    7b3e:	6042      	str	r2, [r0, #4]
    7b40:	6053      	str	r3, [r2, #4]
    7b42:	2302      	movs	r3, #2
    7b44:	6090      	str	r0, [r2, #8]
    7b46:	7043      	strb	r3, [r0, #1]
    7b48:	e7e1      	b.n	7b0e <rt_mbx_send+0x56>
    7b4a:	46c0      	nop			; (mov r8, r8)
    7b4c:	200060c0 	.word	0x200060c0

00007b50 <rt_mbx_wait>:
    7b50:	b570      	push	{r4, r5, r6, lr}
    7b52:	0015      	movs	r5, r2
    7b54:	8982      	ldrh	r2, [r0, #12]
    7b56:	0004      	movs	r4, r0
    7b58:	2a00      	cmp	r2, #0
    7b5a:	d018      	beq.n	7b8e <rt_mbx_wait+0x3e>
    7b5c:	8943      	ldrh	r3, [r0, #10]
    7b5e:	1d18      	adds	r0, r3, #4
    7b60:	0080      	lsls	r0, r0, #2
    7b62:	5900      	ldr	r0, [r0, r4]
    7b64:	3301      	adds	r3, #1
    7b66:	6008      	str	r0, [r1, #0]
    7b68:	89e1      	ldrh	r1, [r4, #14]
    7b6a:	b29b      	uxth	r3, r3
    7b6c:	8163      	strh	r3, [r4, #10]
    7b6e:	4299      	cmp	r1, r3
    7b70:	d01e      	beq.n	7bb0 <rt_mbx_wait+0x60>
    7b72:	6863      	ldr	r3, [r4, #4]
    7b74:	2b00      	cmp	r3, #0
    7b76:	d002      	beq.n	7b7e <rt_mbx_wait+0x2e>
    7b78:	7863      	ldrb	r3, [r4, #1]
    7b7a:	2b02      	cmp	r3, #2
    7b7c:	d025      	beq.n	7bca <rt_mbx_wait+0x7a>
    7b7e:	f3ef 8310 	mrs	r3, PRIMASK
    7b82:	b672      	cpsid	i
    7b84:	3a01      	subs	r2, #1
    7b86:	81a2      	strh	r2, [r4, #12]
    7b88:	b662      	cpsie	i
    7b8a:	2000      	movs	r0, #0
    7b8c:	bd70      	pop	{r4, r5, r6, pc}
    7b8e:	2001      	movs	r0, #1
    7b90:	2d00      	cmp	r5, #0
    7b92:	d0fb      	beq.n	7b8c <rt_mbx_wait+0x3c>
    7b94:	6863      	ldr	r3, [r4, #4]
    7b96:	2b00      	cmp	r3, #0
    7b98:	d010      	beq.n	7bbc <rt_mbx_wait+0x6c>
    7b9a:	4b1a      	ldr	r3, [pc, #104]	; (7c04 <rt_mbx_wait+0xb4>)
    7b9c:	0020      	movs	r0, r4
    7b9e:	6819      	ldr	r1, [r3, #0]
    7ba0:	f000 f8d6 	bl	7d50 <rt_put_prio>
    7ba4:	0028      	movs	r0, r5
    7ba6:	2108      	movs	r1, #8
    7ba8:	f000 fd0c 	bl	85c4 <rt_block>
    7bac:	2001      	movs	r0, #1
    7bae:	e7ed      	b.n	7b8c <rt_mbx_wait+0x3c>
    7bb0:	2300      	movs	r3, #0
    7bb2:	8163      	strh	r3, [r4, #10]
    7bb4:	6863      	ldr	r3, [r4, #4]
    7bb6:	2b00      	cmp	r3, #0
    7bb8:	d1de      	bne.n	7b78 <rt_mbx_wait+0x28>
    7bba:	e7e0      	b.n	7b7e <rt_mbx_wait+0x2e>
    7bbc:	4a11      	ldr	r2, [pc, #68]	; (7c04 <rt_mbx_wait+0xb4>)
    7bbe:	6812      	ldr	r2, [r2, #0]
    7bc0:	6062      	str	r2, [r4, #4]
    7bc2:	6053      	str	r3, [r2, #4]
    7bc4:	6094      	str	r4, [r2, #8]
    7bc6:	7060      	strb	r0, [r4, #1]
    7bc8:	e7ec      	b.n	7ba4 <rt_mbx_wait+0x54>
    7bca:	0020      	movs	r0, r4
    7bcc:	f000 f8e6 	bl	7d9c <rt_get_first>
    7bd0:	0005      	movs	r5, r0
    7bd2:	2100      	movs	r1, #0
    7bd4:	f7ff fcb0 	bl	7538 <rt_ret_val>
    7bd8:	8923      	ldrh	r3, [r4, #8]
    7bda:	69e9      	ldr	r1, [r5, #28]
    7bdc:	1d1a      	adds	r2, r3, #4
    7bde:	0092      	lsls	r2, r2, #2
    7be0:	5111      	str	r1, [r2, r4]
    7be2:	3301      	adds	r3, #1
    7be4:	89e2      	ldrh	r2, [r4, #14]
    7be6:	b29b      	uxth	r3, r3
    7be8:	8123      	strh	r3, [r4, #8]
    7bea:	429a      	cmp	r2, r3
    7bec:	d101      	bne.n	7bf2 <rt_mbx_wait+0xa2>
    7bee:	2300      	movs	r3, #0
    7bf0:	8123      	strh	r3, [r4, #8]
    7bf2:	0028      	movs	r0, r5
    7bf4:	f000 fa0a 	bl	800c <rt_rmv_dly>
    7bf8:	0028      	movs	r0, r5
    7bfa:	f000 fcbd 	bl	8578 <rt_dispatch>
    7bfe:	2000      	movs	r0, #0
    7c00:	e7c4      	b.n	7b8c <rt_mbx_wait+0x3c>
    7c02:	46c0      	nop			; (mov r8, r8)
    7c04:	200060c0 	.word	0x200060c0

00007c08 <rt_mbx_check>:
    7c08:	89c3      	ldrh	r3, [r0, #14]
    7c0a:	8980      	ldrh	r0, [r0, #12]
    7c0c:	1a18      	subs	r0, r3, r0
    7c0e:	4770      	bx	lr

00007c10 <isr_mbx_send>:
    7c10:	b510      	push	{r4, lr}
    7c12:	f000 fa11 	bl	8038 <rt_psq_enq>
    7c16:	f000 fbf3 	bl	8400 <rt_psh_req>
    7c1a:	bd10      	pop	{r4, pc}

00007c1c <isr_mbx_receive>:
    7c1c:	b510      	push	{r4, lr}
    7c1e:	8982      	ldrh	r2, [r0, #12]
    7c20:	0004      	movs	r4, r0
    7c22:	2000      	movs	r0, #0
    7c24:	2a00      	cmp	r2, #0
    7c26:	d017      	beq.n	7c58 <isr_mbx_receive+0x3c>
    7c28:	8963      	ldrh	r3, [r4, #10]
    7c2a:	1d18      	adds	r0, r3, #4
    7c2c:	0080      	lsls	r0, r0, #2
    7c2e:	5900      	ldr	r0, [r0, r4]
    7c30:	6008      	str	r0, [r1, #0]
    7c32:	6861      	ldr	r1, [r4, #4]
    7c34:	2900      	cmp	r1, #0
    7c36:	d002      	beq.n	7c3e <isr_mbx_receive+0x22>
    7c38:	7861      	ldrb	r1, [r4, #1]
    7c3a:	2902      	cmp	r1, #2
    7c3c:	d010      	beq.n	7c60 <isr_mbx_receive+0x44>
    7c3e:	f3ef 8110 	mrs	r1, PRIMASK
    7c42:	b672      	cpsid	i
    7c44:	3a01      	subs	r2, #1
    7c46:	81a2      	strh	r2, [r4, #12]
    7c48:	b662      	cpsie	i
    7c4a:	3301      	adds	r3, #1
    7c4c:	89e2      	ldrh	r2, [r4, #14]
    7c4e:	b29b      	uxth	r3, r3
    7c50:	8163      	strh	r3, [r4, #10]
    7c52:	2004      	movs	r0, #4
    7c54:	429a      	cmp	r2, r3
    7c56:	d000      	beq.n	7c5a <isr_mbx_receive+0x3e>
    7c58:	bd10      	pop	{r4, pc}
    7c5a:	2300      	movs	r3, #0
    7c5c:	8163      	strh	r3, [r4, #10]
    7c5e:	e7fb      	b.n	7c58 <isr_mbx_receive+0x3c>
    7c60:	2100      	movs	r1, #0
    7c62:	0020      	movs	r0, r4
    7c64:	f000 f9e8 	bl	8038 <rt_psq_enq>
    7c68:	f000 fbca 	bl	8400 <rt_psh_req>
    7c6c:	89a2      	ldrh	r2, [r4, #12]
    7c6e:	8963      	ldrh	r3, [r4, #10]
    7c70:	e7e5      	b.n	7c3e <isr_mbx_receive+0x22>
    7c72:	46c0      	nop			; (mov r8, r8)

00007c74 <rt_mbx_psh>:
    7c74:	6843      	ldr	r3, [r0, #4]
    7c76:	b570      	push	{r4, r5, r6, lr}
    7c78:	0004      	movs	r4, r0
    7c7a:	000e      	movs	r6, r1
    7c7c:	2b00      	cmp	r3, #0
    7c7e:	d04b      	beq.n	7d18 <rt_mbx_psh+0xa4>
    7c80:	7845      	ldrb	r5, [r0, #1]
    7c82:	2d02      	cmp	r5, #2
    7c84:	d023      	beq.n	7cce <rt_mbx_psh+0x5a>
    7c86:	2d03      	cmp	r5, #3
    7c88:	d002      	beq.n	7c90 <rt_mbx_psh+0x1c>
    7c8a:	2d01      	cmp	r5, #1
    7c8c:	d00f      	beq.n	7cae <rt_mbx_psh+0x3a>
    7c8e:	bd70      	pop	{r4, r5, r6, pc}
    7c90:	0008      	movs	r0, r1
    7c92:	f7ff fcd3 	bl	763c <rt_alloc_box>
    7c96:	1e05      	subs	r5, r0, #0
    7c98:	d0f9      	beq.n	7c8e <rt_mbx_psh+0x1a>
    7c9a:	0020      	movs	r0, r4
    7c9c:	f000 f87e 	bl	7d9c <rt_get_first>
    7ca0:	0029      	movs	r1, r5
    7ca2:	0004      	movs	r4, r0
    7ca4:	f7ff fc48 	bl	7538 <rt_ret_val>
    7ca8:	2301      	movs	r3, #1
    7caa:	7063      	strb	r3, [r4, #1]
    7cac:	e007      	b.n	7cbe <rt_mbx_psh+0x4a>
    7cae:	f000 f875 	bl	7d9c <rt_get_first>
    7cb2:	0004      	movs	r4, r0
    7cb4:	0032      	movs	r2, r6
    7cb6:	2110      	movs	r1, #16
    7cb8:	f7ff fc42 	bl	7540 <rt_ret_val2>
    7cbc:	7065      	strb	r5, [r4, #1]
    7cbe:	0020      	movs	r0, r4
    7cc0:	f000 f9a4 	bl	800c <rt_rmv_dly>
    7cc4:	0021      	movs	r1, r4
    7cc6:	4821      	ldr	r0, [pc, #132]	; (7d4c <rt_mbx_psh+0xd8>)
    7cc8:	f000 f842 	bl	7d50 <rt_put_prio>
    7ccc:	e7df      	b.n	7c8e <rt_mbx_psh+0x1a>
    7cce:	f000 f865 	bl	7d9c <rt_get_first>
    7cd2:	0005      	movs	r5, r0
    7cd4:	2100      	movs	r1, #0
    7cd6:	f7ff fc2f 	bl	7538 <rt_ret_val>
    7cda:	8923      	ldrh	r3, [r4, #8]
    7cdc:	69e9      	ldr	r1, [r5, #28]
    7cde:	1d1a      	adds	r2, r3, #4
    7ce0:	0092      	lsls	r2, r2, #2
    7ce2:	5111      	str	r1, [r2, r4]
    7ce4:	f3ef 8210 	mrs	r2, PRIMASK
    7ce8:	b672      	cpsid	i
    7cea:	89a2      	ldrh	r2, [r4, #12]
    7cec:	3201      	adds	r2, #1
    7cee:	81a2      	strh	r2, [r4, #12]
    7cf0:	b662      	cpsie	i
    7cf2:	3301      	adds	r3, #1
    7cf4:	89e2      	ldrh	r2, [r4, #14]
    7cf6:	b29b      	uxth	r3, r3
    7cf8:	8123      	strh	r3, [r4, #8]
    7cfa:	429a      	cmp	r2, r3
    7cfc:	d009      	beq.n	7d12 <rt_mbx_psh+0x9e>
    7cfe:	2301      	movs	r3, #1
    7d00:	0028      	movs	r0, r5
    7d02:	706b      	strb	r3, [r5, #1]
    7d04:	f000 f982 	bl	800c <rt_rmv_dly>
    7d08:	0029      	movs	r1, r5
    7d0a:	4810      	ldr	r0, [pc, #64]	; (7d4c <rt_mbx_psh+0xd8>)
    7d0c:	f000 f820 	bl	7d50 <rt_put_prio>
    7d10:	e7bd      	b.n	7c8e <rt_mbx_psh+0x1a>
    7d12:	2300      	movs	r3, #0
    7d14:	8123      	strh	r3, [r4, #8]
    7d16:	e7f2      	b.n	7cfe <rt_mbx_psh+0x8a>
    7d18:	8981      	ldrh	r1, [r0, #12]
    7d1a:	89c5      	ldrh	r5, [r0, #14]
    7d1c:	42a9      	cmp	r1, r5
    7d1e:	d20f      	bcs.n	7d40 <rt_mbx_psh+0xcc>
    7d20:	8902      	ldrh	r2, [r0, #8]
    7d22:	1d10      	adds	r0, r2, #4
    7d24:	0080      	lsls	r0, r0, #2
    7d26:	5106      	str	r6, [r0, r4]
    7d28:	f3ef 8010 	mrs	r0, PRIMASK
    7d2c:	b672      	cpsid	i
    7d2e:	3101      	adds	r1, #1
    7d30:	81a1      	strh	r1, [r4, #12]
    7d32:	b662      	cpsie	i
    7d34:	3201      	adds	r2, #1
    7d36:	b292      	uxth	r2, r2
    7d38:	4295      	cmp	r5, r2
    7d3a:	d005      	beq.n	7d48 <rt_mbx_psh+0xd4>
    7d3c:	8122      	strh	r2, [r4, #8]
    7d3e:	e7a6      	b.n	7c8e <rt_mbx_psh+0x1a>
    7d40:	2003      	movs	r0, #3
    7d42:	f7f9 fedf 	bl	1b04 <os_error>
    7d46:	e7a2      	b.n	7c8e <rt_mbx_psh+0x1a>
    7d48:	8123      	strh	r3, [r4, #8]
    7d4a:	e7a0      	b.n	7c8e <rt_mbx_psh+0x1a>
    7d4c:	2000608c 	.word	0x2000608c

00007d50 <rt_put_prio>:
    7d50:	b530      	push	{r4, r5, lr}
    7d52:	7805      	ldrb	r5, [r0, #0]
    7d54:	6842      	ldr	r2, [r0, #4]
    7d56:	3d01      	subs	r5, #1
    7d58:	b2ed      	uxtb	r5, r5
    7d5a:	788c      	ldrb	r4, [r1, #2]
    7d5c:	2a00      	cmp	r2, #0
    7d5e:	d01a      	beq.n	7d96 <rt_put_prio+0x46>
    7d60:	7893      	ldrb	r3, [r2, #2]
    7d62:	42a3      	cmp	r3, r4
    7d64:	d204      	bcs.n	7d70 <rt_put_prio+0x20>
    7d66:	e00e      	b.n	7d86 <rt_put_prio+0x36>
    7d68:	7898      	ldrb	r0, [r3, #2]
    7d6a:	4284      	cmp	r4, r0
    7d6c:	d80d      	bhi.n	7d8a <rt_put_prio+0x3a>
    7d6e:	001a      	movs	r2, r3
    7d70:	6853      	ldr	r3, [r2, #4]
    7d72:	2b00      	cmp	r3, #0
    7d74:	d1f8      	bne.n	7d68 <rt_put_prio+0x18>
    7d76:	2300      	movs	r3, #0
    7d78:	604b      	str	r3, [r1, #4]
    7d7a:	6051      	str	r1, [r2, #4]
    7d7c:	2d02      	cmp	r5, #2
    7d7e:	d900      	bls.n	7d82 <rt_put_prio+0x32>
    7d80:	2200      	movs	r2, #0
    7d82:	608a      	str	r2, [r1, #8]
    7d84:	bd30      	pop	{r4, r5, pc}
    7d86:	0013      	movs	r3, r2
    7d88:	0002      	movs	r2, r0
    7d8a:	604b      	str	r3, [r1, #4]
    7d8c:	6051      	str	r1, [r2, #4]
    7d8e:	2d02      	cmp	r5, #2
    7d90:	d8f6      	bhi.n	7d80 <rt_put_prio+0x30>
    7d92:	6099      	str	r1, [r3, #8]
    7d94:	e7f5      	b.n	7d82 <rt_put_prio+0x32>
    7d96:	0002      	movs	r2, r0
    7d98:	e7ed      	b.n	7d76 <rt_put_prio+0x26>
    7d9a:	46c0      	nop			; (mov r8, r8)

00007d9c <rt_get_first>:
    7d9c:	6843      	ldr	r3, [r0, #4]
    7d9e:	7802      	ldrb	r2, [r0, #0]
    7da0:	6859      	ldr	r1, [r3, #4]
    7da2:	3a01      	subs	r2, #1
    7da4:	6041      	str	r1, [r0, #4]
    7da6:	2a02      	cmp	r2, #2
    7da8:	d808      	bhi.n	7dbc <rt_get_first+0x20>
    7daa:	2900      	cmp	r1, #0
    7dac:	d002      	beq.n	7db4 <rt_get_first+0x18>
    7dae:	2200      	movs	r2, #0
    7db0:	6088      	str	r0, [r1, #8]
    7db2:	605a      	str	r2, [r3, #4]
    7db4:	2200      	movs	r2, #0
    7db6:	609a      	str	r2, [r3, #8]
    7db8:	0018      	movs	r0, r3
    7dba:	4770      	bx	lr
    7dbc:	2200      	movs	r2, #0
    7dbe:	605a      	str	r2, [r3, #4]
    7dc0:	e7fa      	b.n	7db8 <rt_get_first+0x1c>
    7dc2:	46c0      	nop			; (mov r8, r8)

00007dc4 <rt_put_rdy_first>:
    7dc4:	4b03      	ldr	r3, [pc, #12]	; (7dd4 <rt_put_rdy_first+0x10>)
    7dc6:	685a      	ldr	r2, [r3, #4]
    7dc8:	6042      	str	r2, [r0, #4]
    7dca:	2200      	movs	r2, #0
    7dcc:	6058      	str	r0, [r3, #4]
    7dce:	6082      	str	r2, [r0, #8]
    7dd0:	4770      	bx	lr
    7dd2:	46c0      	nop			; (mov r8, r8)
    7dd4:	2000608c 	.word	0x2000608c

00007dd8 <rt_get_same_rdy_prio>:
    7dd8:	4b06      	ldr	r3, [pc, #24]	; (7df4 <rt_get_same_rdy_prio+0x1c>)
    7dda:	4a07      	ldr	r2, [pc, #28]	; (7df8 <rt_get_same_rdy_prio+0x20>)
    7ddc:	6858      	ldr	r0, [r3, #4]
    7dde:	6812      	ldr	r2, [r2, #0]
    7de0:	7881      	ldrb	r1, [r0, #2]
    7de2:	7892      	ldrb	r2, [r2, #2]
    7de4:	4291      	cmp	r1, r2
    7de6:	d102      	bne.n	7dee <rt_get_same_rdy_prio+0x16>
    7de8:	6842      	ldr	r2, [r0, #4]
    7dea:	605a      	str	r2, [r3, #4]
    7dec:	4770      	bx	lr
    7dee:	2000      	movs	r0, #0
    7df0:	e7fc      	b.n	7dec <rt_get_same_rdy_prio+0x14>
    7df2:	46c0      	nop			; (mov r8, r8)
    7df4:	2000608c 	.word	0x2000608c
    7df8:	200060c0 	.word	0x200060c0

00007dfc <rt_resort_prio>:
    7dfc:	6881      	ldr	r1, [r0, #8]
    7dfe:	b530      	push	{r4, r5, lr}
    7e00:	2900      	cmp	r1, #0
    7e02:	d030      	beq.n	7e66 <rt_resort_prio+0x6a>
    7e04:	780b      	ldrb	r3, [r1, #0]
    7e06:	000a      	movs	r2, r1
    7e08:	2b00      	cmp	r3, #0
    7e0a:	d103      	bne.n	7e14 <rt_resort_prio+0x18>
    7e0c:	6892      	ldr	r2, [r2, #8]
    7e0e:	7813      	ldrb	r3, [r2, #0]
    7e10:	2b00      	cmp	r3, #0
    7e12:	d0fb      	beq.n	7e0c <rt_resort_prio+0x10>
    7e14:	6843      	ldr	r3, [r0, #4]
    7e16:	604b      	str	r3, [r1, #4]
    7e18:	6843      	ldr	r3, [r0, #4]
    7e1a:	2b00      	cmp	r3, #0
    7e1c:	d000      	beq.n	7e20 <rt_resort_prio+0x24>
    7e1e:	6099      	str	r1, [r3, #8]
    7e20:	7815      	ldrb	r5, [r2, #0]
    7e22:	6851      	ldr	r1, [r2, #4]
    7e24:	3d01      	subs	r5, #1
    7e26:	b2ed      	uxtb	r5, r5
    7e28:	7884      	ldrb	r4, [r0, #2]
    7e2a:	2900      	cmp	r1, #0
    7e2c:	d029      	beq.n	7e82 <rt_resort_prio+0x86>
    7e2e:	788b      	ldrb	r3, [r1, #2]
    7e30:	42a3      	cmp	r3, r4
    7e32:	d204      	bcs.n	7e3e <rt_resort_prio+0x42>
    7e34:	e00e      	b.n	7e54 <rt_resort_prio+0x58>
    7e36:	789a      	ldrb	r2, [r3, #2]
    7e38:	4294      	cmp	r4, r2
    7e3a:	d80d      	bhi.n	7e58 <rt_resort_prio+0x5c>
    7e3c:	0019      	movs	r1, r3
    7e3e:	684b      	ldr	r3, [r1, #4]
    7e40:	2b00      	cmp	r3, #0
    7e42:	d1f8      	bne.n	7e36 <rt_resort_prio+0x3a>
    7e44:	2300      	movs	r3, #0
    7e46:	6043      	str	r3, [r0, #4]
    7e48:	6048      	str	r0, [r1, #4]
    7e4a:	2d02      	cmp	r5, #2
    7e4c:	d909      	bls.n	7e62 <rt_resort_prio+0x66>
    7e4e:	2300      	movs	r3, #0
    7e50:	6083      	str	r3, [r0, #8]
    7e52:	bd30      	pop	{r4, r5, pc}
    7e54:	000b      	movs	r3, r1
    7e56:	0011      	movs	r1, r2
    7e58:	6043      	str	r3, [r0, #4]
    7e5a:	6048      	str	r0, [r1, #4]
    7e5c:	2d02      	cmp	r5, #2
    7e5e:	d8f6      	bhi.n	7e4e <rt_resort_prio+0x52>
    7e60:	6098      	str	r0, [r3, #8]
    7e62:	6081      	str	r1, [r0, #8]
    7e64:	e7f5      	b.n	7e52 <rt_resort_prio+0x56>
    7e66:	7843      	ldrb	r3, [r0, #1]
    7e68:	2b01      	cmp	r3, #1
    7e6a:	d1f2      	bne.n	7e52 <rt_resort_prio+0x56>
    7e6c:	4a06      	ldr	r2, [pc, #24]	; (7e88 <rt_resort_prio+0x8c>)
    7e6e:	0013      	movs	r3, r2
    7e70:	e001      	b.n	7e76 <rt_resort_prio+0x7a>
    7e72:	1e0b      	subs	r3, r1, #0
    7e74:	d0d4      	beq.n	7e20 <rt_resort_prio+0x24>
    7e76:	6859      	ldr	r1, [r3, #4]
    7e78:	4288      	cmp	r0, r1
    7e7a:	d1fa      	bne.n	7e72 <rt_resort_prio+0x76>
    7e7c:	6841      	ldr	r1, [r0, #4]
    7e7e:	6059      	str	r1, [r3, #4]
    7e80:	e7ce      	b.n	7e20 <rt_resort_prio+0x24>
    7e82:	0011      	movs	r1, r2
    7e84:	e7de      	b.n	7e44 <rt_resort_prio+0x48>
    7e86:	46c0      	nop			; (mov r8, r8)
    7e88:	2000608c 	.word	0x2000608c

00007e8c <rt_put_dly>:
    7e8c:	b530      	push	{r4, r5, lr}
    7e8e:	4c17      	ldr	r4, [pc, #92]	; (7eec <rt_put_dly+0x60>)
    7e90:	68e2      	ldr	r2, [r4, #12]
    7e92:	2a00      	cmp	r2, #0
    7e94:	d023      	beq.n	7ede <rt_put_dly+0x52>
    7e96:	8aa3      	ldrh	r3, [r4, #20]
    7e98:	4299      	cmp	r1, r3
    7e9a:	d804      	bhi.n	7ea6 <rt_put_dly+0x1a>
    7e9c:	e022      	b.n	7ee4 <rt_put_dly+0x58>
    7e9e:	68d4      	ldr	r4, [r2, #12]
    7ea0:	2c00      	cmp	r4, #0
    7ea2:	d013      	beq.n	7ecc <rt_put_dly+0x40>
    7ea4:	0022      	movs	r2, r4
    7ea6:	8a94      	ldrh	r4, [r2, #20]
    7ea8:	191b      	adds	r3, r3, r4
    7eaa:	4299      	cmp	r1, r3
    7eac:	d8f7      	bhi.n	7e9e <rt_put_dly+0x12>
    7eae:	68d5      	ldr	r5, [r2, #12]
    7eb0:	60c5      	str	r5, [r0, #12]
    7eb2:	60d0      	str	r0, [r2, #12]
    7eb4:	68c4      	ldr	r4, [r0, #12]
    7eb6:	6102      	str	r2, [r0, #16]
    7eb8:	2c00      	cmp	r4, #0
    7eba:	d000      	beq.n	7ebe <rt_put_dly+0x32>
    7ebc:	6120      	str	r0, [r4, #16]
    7ebe:	1a5b      	subs	r3, r3, r1
    7ec0:	b29b      	uxth	r3, r3
    7ec2:	8283      	strh	r3, [r0, #20]
    7ec4:	8a91      	ldrh	r1, [r2, #20]
    7ec6:	1acb      	subs	r3, r1, r3
    7ec8:	8293      	strh	r3, [r2, #20]
    7eca:	bd30      	pop	{r4, r5, pc}
    7ecc:	b29b      	uxth	r3, r3
    7ece:	2400      	movs	r4, #0
    7ed0:	1acb      	subs	r3, r1, r3
    7ed2:	60c4      	str	r4, [r0, #12]
    7ed4:	60d0      	str	r0, [r2, #12]
    7ed6:	6102      	str	r2, [r0, #16]
    7ed8:	8293      	strh	r3, [r2, #20]
    7eda:	8284      	strh	r4, [r0, #20]
    7edc:	e7f5      	b.n	7eca <rt_put_dly+0x3e>
    7ede:	2300      	movs	r3, #0
    7ee0:	0022      	movs	r2, r4
    7ee2:	e7f4      	b.n	7ece <rt_put_dly+0x42>
    7ee4:	0015      	movs	r5, r2
    7ee6:	0022      	movs	r2, r4
    7ee8:	e7e2      	b.n	7eb0 <rt_put_dly+0x24>
    7eea:	46c0      	nop			; (mov r8, r8)
    7eec:	200060a4 	.word	0x200060a4

00007ef0 <rt_dec_dly>:
    7ef0:	b5f0      	push	{r4, r5, r6, r7, lr}
    7ef2:	464e      	mov	r6, r9
    7ef4:	4657      	mov	r7, sl
    7ef6:	4645      	mov	r5, r8
    7ef8:	b4e0      	push	{r5, r6, r7}
    7efa:	4e36      	ldr	r6, [pc, #216]	; (7fd4 <rt_dec_dly+0xe4>)
    7efc:	68f0      	ldr	r0, [r6, #12]
    7efe:	2800      	cmp	r0, #0
    7f00:	d059      	beq.n	7fb6 <rt_dec_dly+0xc6>
    7f02:	8ab3      	ldrh	r3, [r6, #20]
    7f04:	3b01      	subs	r3, #1
    7f06:	b29b      	uxth	r3, r3
    7f08:	82b3      	strh	r3, [r6, #20]
    7f0a:	2b00      	cmp	r3, #0
    7f0c:	d153      	bne.n	7fb6 <rt_dec_dly+0xc6>
    7f0e:	4b32      	ldr	r3, [pc, #200]	; (7fd8 <rt_dec_dly+0xe8>)
    7f10:	2500      	movs	r5, #0
    7f12:	469c      	mov	ip, r3
    7f14:	781f      	ldrb	r7, [r3, #0]
    7f16:	4b31      	ldr	r3, [pc, #196]	; (7fdc <rt_dec_dly+0xec>)
    7f18:	46e2      	mov	sl, ip
    7f1a:	881b      	ldrh	r3, [r3, #0]
    7f1c:	3f01      	subs	r7, #1
    7f1e:	4699      	mov	r9, r3
    7f20:	2301      	movs	r3, #1
    7f22:	4698      	mov	r8, r3
    7f24:	b2ff      	uxtb	r7, r7
    7f26:	6883      	ldr	r3, [r0, #8]
    7f28:	2b00      	cmp	r3, #0
    7f2a:	d007      	beq.n	7f3c <rt_dec_dly+0x4c>
    7f2c:	6842      	ldr	r2, [r0, #4]
    7f2e:	605a      	str	r2, [r3, #4]
    7f30:	6842      	ldr	r2, [r0, #4]
    7f32:	2a00      	cmp	r2, #0
    7f34:	d001      	beq.n	7f3a <rt_dec_dly+0x4a>
    7f36:	6093      	str	r3, [r2, #8]
    7f38:	6045      	str	r5, [r0, #4]
    7f3a:	6085      	str	r5, [r0, #8]
    7f3c:	4663      	mov	r3, ip
    7f3e:	685a      	ldr	r2, [r3, #4]
    7f40:	7884      	ldrb	r4, [r0, #2]
    7f42:	2a00      	cmp	r2, #0
    7f44:	d03c      	beq.n	7fc0 <rt_dec_dly+0xd0>
    7f46:	7893      	ldrb	r3, [r2, #2]
    7f48:	42a3      	cmp	r3, r4
    7f4a:	d204      	bcs.n	7f56 <rt_dec_dly+0x66>
    7f4c:	e01c      	b.n	7f88 <rt_dec_dly+0x98>
    7f4e:	7899      	ldrb	r1, [r3, #2]
    7f50:	428c      	cmp	r4, r1
    7f52:	d81b      	bhi.n	7f8c <rt_dec_dly+0x9c>
    7f54:	001a      	movs	r2, r3
    7f56:	6853      	ldr	r3, [r2, #4]
    7f58:	2b00      	cmp	r3, #0
    7f5a:	d1f8      	bne.n	7f4e <rt_dec_dly+0x5e>
    7f5c:	6045      	str	r5, [r0, #4]
    7f5e:	6050      	str	r0, [r2, #4]
    7f60:	2f02      	cmp	r7, #2
    7f62:	d900      	bls.n	7f66 <rt_dec_dly+0x76>
    7f64:	2200      	movs	r2, #0
    7f66:	7843      	ldrb	r3, [r0, #1]
    7f68:	6082      	str	r2, [r0, #8]
    7f6a:	8a82      	ldrh	r2, [r0, #20]
    7f6c:	2b04      	cmp	r3, #4
    7f6e:	d017      	beq.n	7fa0 <rt_dec_dly+0xb0>
    7f70:	4643      	mov	r3, r8
    7f72:	7043      	strb	r3, [r0, #1]
    7f74:	68c3      	ldr	r3, [r0, #12]
    7f76:	2b00      	cmp	r3, #0
    7f78:	d01a      	beq.n	7fb0 <rt_dec_dly+0xc0>
    7f7a:	611e      	str	r6, [r3, #16]
    7f7c:	60c5      	str	r5, [r0, #12]
    7f7e:	6105      	str	r5, [r0, #16]
    7f80:	2a00      	cmp	r2, #0
    7f82:	d123      	bne.n	7fcc <rt_dec_dly+0xdc>
    7f84:	0018      	movs	r0, r3
    7f86:	e7ce      	b.n	7f26 <rt_dec_dly+0x36>
    7f88:	0013      	movs	r3, r2
    7f8a:	4652      	mov	r2, sl
    7f8c:	6043      	str	r3, [r0, #4]
    7f8e:	6050      	str	r0, [r2, #4]
    7f90:	2f02      	cmp	r7, #2
    7f92:	d8e7      	bhi.n	7f64 <rt_dec_dly+0x74>
    7f94:	6098      	str	r0, [r3, #8]
    7f96:	7843      	ldrb	r3, [r0, #1]
    7f98:	6082      	str	r2, [r0, #8]
    7f9a:	8a82      	ldrh	r2, [r0, #20]
    7f9c:	2b04      	cmp	r3, #4
    7f9e:	d1e7      	bne.n	7f70 <rt_dec_dly+0x80>
    7fa0:	8ac3      	ldrh	r3, [r0, #22]
    7fa2:	444b      	add	r3, r9
    7fa4:	8283      	strh	r3, [r0, #20]
    7fa6:	4643      	mov	r3, r8
    7fa8:	7043      	strb	r3, [r0, #1]
    7faa:	68c3      	ldr	r3, [r0, #12]
    7fac:	2b00      	cmp	r3, #0
    7fae:	d1e4      	bne.n	7f7a <rt_dec_dly+0x8a>
    7fb0:	82b2      	strh	r2, [r6, #20]
    7fb2:	60f3      	str	r3, [r6, #12]
    7fb4:	6103      	str	r3, [r0, #16]
    7fb6:	bc1c      	pop	{r2, r3, r4}
    7fb8:	4690      	mov	r8, r2
    7fba:	4699      	mov	r9, r3
    7fbc:	46a2      	mov	sl, r4
    7fbe:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7fc0:	4652      	mov	r2, sl
    7fc2:	6045      	str	r5, [r0, #4]
    7fc4:	6050      	str	r0, [r2, #4]
    7fc6:	2f02      	cmp	r7, #2
    7fc8:	d8cc      	bhi.n	7f64 <rt_dec_dly+0x74>
    7fca:	e7cc      	b.n	7f66 <rt_dec_dly+0x76>
    7fcc:	82b2      	strh	r2, [r6, #20]
    7fce:	60f3      	str	r3, [r6, #12]
    7fd0:	e7f1      	b.n	7fb6 <rt_dec_dly+0xc6>
    7fd2:	46c0      	nop			; (mov r8, r8)
    7fd4:	200060a4 	.word	0x200060a4
    7fd8:	2000608c 	.word	0x2000608c
    7fdc:	20006088 	.word	0x20006088

00007fe0 <rt_rmv_list>:
    7fe0:	6883      	ldr	r3, [r0, #8]
    7fe2:	2b00      	cmp	r3, #0
    7fe4:	d006      	beq.n	7ff4 <rt_rmv_list+0x14>
    7fe6:	6842      	ldr	r2, [r0, #4]
    7fe8:	605a      	str	r2, [r3, #4]
    7fea:	6842      	ldr	r2, [r0, #4]
    7fec:	2a00      	cmp	r2, #0
    7fee:	d000      	beq.n	7ff2 <rt_rmv_list+0x12>
    7ff0:	6093      	str	r3, [r2, #8]
    7ff2:	4770      	bx	lr
    7ff4:	4b04      	ldr	r3, [pc, #16]	; (8008 <rt_rmv_list+0x28>)
    7ff6:	e001      	b.n	7ffc <rt_rmv_list+0x1c>
    7ff8:	1e13      	subs	r3, r2, #0
    7ffa:	d0fa      	beq.n	7ff2 <rt_rmv_list+0x12>
    7ffc:	685a      	ldr	r2, [r3, #4]
    7ffe:	4290      	cmp	r0, r2
    8000:	d1fa      	bne.n	7ff8 <rt_rmv_list+0x18>
    8002:	6842      	ldr	r2, [r0, #4]
    8004:	605a      	str	r2, [r3, #4]
    8006:	e7f4      	b.n	7ff2 <rt_rmv_list+0x12>
    8008:	2000608c 	.word	0x2000608c

0000800c <rt_rmv_dly>:
    800c:	6903      	ldr	r3, [r0, #16]
    800e:	b510      	push	{r4, lr}
    8010:	2b00      	cmp	r3, #0
    8012:	d00d      	beq.n	8030 <rt_rmv_dly+0x24>
    8014:	68c2      	ldr	r2, [r0, #12]
    8016:	60da      	str	r2, [r3, #12]
    8018:	68c1      	ldr	r1, [r0, #12]
    801a:	2900      	cmp	r1, #0
    801c:	d009      	beq.n	8032 <rt_rmv_dly+0x26>
    801e:	8a9c      	ldrh	r4, [r3, #20]
    8020:	8a82      	ldrh	r2, [r0, #20]
    8022:	18a2      	adds	r2, r4, r2
    8024:	829a      	strh	r2, [r3, #20]
    8026:	610b      	str	r3, [r1, #16]
    8028:	2300      	movs	r3, #0
    802a:	60c3      	str	r3, [r0, #12]
    802c:	2300      	movs	r3, #0
    802e:	6103      	str	r3, [r0, #16]
    8030:	bd10      	pop	{r4, pc}
    8032:	8299      	strh	r1, [r3, #20]
    8034:	e7fa      	b.n	802c <rt_rmv_dly+0x20>
    8036:	46c0      	nop			; (mov r8, r8)

00008038 <rt_psq_enq>:
    8038:	b570      	push	{r4, r5, r6, lr}
    803a:	4c0f      	ldr	r4, [pc, #60]	; (8078 <rt_psq_enq+0x40>)
    803c:	78e5      	ldrb	r5, [r4, #3]
    803e:	f3ef 8310 	mrs	r3, PRIMASK
    8042:	b672      	cpsid	i
    8044:	78a3      	ldrb	r3, [r4, #2]
    8046:	429d      	cmp	r5, r3
    8048:	d907      	bls.n	805a <rt_psq_enq+0x22>
    804a:	1c5a      	adds	r2, r3, #1
    804c:	7823      	ldrb	r3, [r4, #0]
    804e:	70a2      	strb	r2, [r4, #2]
    8050:	1c5a      	adds	r2, r3, #1
    8052:	4295      	cmp	r5, r2
    8054:	d00d      	beq.n	8072 <rt_psq_enq+0x3a>
    8056:	b2d2      	uxtb	r2, r2
    8058:	7022      	strb	r2, [r4, #0]
    805a:	b662      	cpsie	i
    805c:	429d      	cmp	r5, r3
    805e:	d904      	bls.n	806a <rt_psq_enq+0x32>
    8060:	00db      	lsls	r3, r3, #3
    8062:	18e3      	adds	r3, r4, r3
    8064:	6058      	str	r0, [r3, #4]
    8066:	6099      	str	r1, [r3, #8]
    8068:	bd70      	pop	{r4, r5, r6, pc}
    806a:	2002      	movs	r0, #2
    806c:	f7f9 fd4a 	bl	1b04 <os_error>
    8070:	e7fa      	b.n	8068 <rt_psq_enq+0x30>
    8072:	2200      	movs	r2, #0
    8074:	7022      	strb	r2, [r4, #0]
    8076:	e7f0      	b.n	805a <rt_psq_enq+0x22>
    8078:	20004c58 	.word	0x20004c58

0000807c <rt_evt_wait>:
    807c:	4b10      	ldr	r3, [pc, #64]	; (80c0 <rt_evt_wait+0x44>)
    807e:	b570      	push	{r4, r5, r6, lr}
    8080:	681b      	ldr	r3, [r3, #0]
    8082:	000c      	movs	r4, r1
    8084:	2a00      	cmp	r2, #0
    8086:	d00b      	beq.n	80a0 <rt_evt_wait+0x24>
    8088:	0005      	movs	r5, r0
    808a:	8b1a      	ldrh	r2, [r3, #24]
    808c:	2106      	movs	r1, #6
    808e:	4015      	ands	r5, r2
    8090:	42a8      	cmp	r0, r5
    8092:	d00a      	beq.n	80aa <rt_evt_wait+0x2e>
    8094:	8358      	strh	r0, [r3, #26]
    8096:	0020      	movs	r0, r4
    8098:	f000 fa94 	bl	85c4 <rt_block>
    809c:	2001      	movs	r0, #1
    809e:	e007      	b.n	80b0 <rt_evt_wait+0x34>
    80a0:	8b1a      	ldrh	r2, [r3, #24]
    80a2:	0011      	movs	r1, r2
    80a4:	4001      	ands	r1, r0
    80a6:	d004      	beq.n	80b2 <rt_evt_wait+0x36>
    80a8:	8359      	strh	r1, [r3, #26]
    80aa:	4382      	bics	r2, r0
    80ac:	2002      	movs	r0, #2
    80ae:	831a      	strh	r2, [r3, #24]
    80b0:	bd70      	pop	{r4, r5, r6, pc}
    80b2:	8358      	strh	r0, [r3, #26]
    80b4:	2105      	movs	r1, #5
    80b6:	0020      	movs	r0, r4
    80b8:	f000 fa84 	bl	85c4 <rt_block>
    80bc:	2001      	movs	r0, #1
    80be:	e7f7      	b.n	80b0 <rt_evt_wait+0x34>
    80c0:	200060c0 	.word	0x200060c0

000080c4 <rt_evt_set>:
    80c4:	3901      	subs	r1, #1
    80c6:	4b14      	ldr	r3, [pc, #80]	; (8118 <rt_evt_set+0x54>)
    80c8:	0089      	lsls	r1, r1, #2
    80ca:	b510      	push	{r4, lr}
    80cc:	58cc      	ldr	r4, [r1, r3]
    80ce:	2c00      	cmp	r4, #0
    80d0:	d008      	beq.n	80e4 <rt_evt_set+0x20>
    80d2:	8b23      	ldrh	r3, [r4, #24]
    80d4:	8b62      	ldrh	r2, [r4, #26]
    80d6:	4318      	orrs	r0, r3
    80d8:	7863      	ldrb	r3, [r4, #1]
    80da:	8320      	strh	r0, [r4, #24]
    80dc:	2b06      	cmp	r3, #6
    80de:	d016      	beq.n	810e <rt_evt_set+0x4a>
    80e0:	2b05      	cmp	r3, #5
    80e2:	d000      	beq.n	80e6 <rt_evt_set+0x22>
    80e4:	bd10      	pop	{r4, pc}
    80e6:	0013      	movs	r3, r2
    80e8:	4003      	ands	r3, r0
    80ea:	d0fb      	beq.n	80e4 <rt_evt_set+0x20>
    80ec:	8363      	strh	r3, [r4, #26]
    80ee:	4390      	bics	r0, r2
    80f0:	8320      	strh	r0, [r4, #24]
    80f2:	0020      	movs	r0, r4
    80f4:	f7ff ff8a 	bl	800c <rt_rmv_dly>
    80f8:	2301      	movs	r3, #1
    80fa:	0020      	movs	r0, r4
    80fc:	7063      	strb	r3, [r4, #1]
    80fe:	8b62      	ldrh	r2, [r4, #26]
    8100:	2108      	movs	r1, #8
    8102:	f7ff fa1d 	bl	7540 <rt_ret_val2>
    8106:	0020      	movs	r0, r4
    8108:	f000 fa36 	bl	8578 <rt_dispatch>
    810c:	e7ea      	b.n	80e4 <rt_evt_set+0x20>
    810e:	0013      	movs	r3, r2
    8110:	4003      	ands	r3, r0
    8112:	429a      	cmp	r2, r3
    8114:	d1e6      	bne.n	80e4 <rt_evt_set+0x20>
    8116:	e7ea      	b.n	80ee <rt_evt_set+0x2a>
    8118:	20004cdc 	.word	0x20004cdc

0000811c <rt_evt_clr>:
    811c:	3901      	subs	r1, #1
    811e:	4b04      	ldr	r3, [pc, #16]	; (8130 <rt_evt_clr+0x14>)
    8120:	0089      	lsls	r1, r1, #2
    8122:	58cb      	ldr	r3, [r1, r3]
    8124:	2b00      	cmp	r3, #0
    8126:	d002      	beq.n	812e <rt_evt_clr+0x12>
    8128:	8b1a      	ldrh	r2, [r3, #24]
    812a:	4382      	bics	r2, r0
    812c:	831a      	strh	r2, [r3, #24]
    812e:	4770      	bx	lr
    8130:	20004cdc 	.word	0x20004cdc

00008134 <isr_evt_set>:
    8134:	3901      	subs	r1, #1
    8136:	4b06      	ldr	r3, [pc, #24]	; (8150 <isr_evt_set+0x1c>)
    8138:	0089      	lsls	r1, r1, #2
    813a:	58cb      	ldr	r3, [r1, r3]
    813c:	b510      	push	{r4, lr}
    813e:	2b00      	cmp	r3, #0
    8140:	d005      	beq.n	814e <isr_evt_set+0x1a>
    8142:	0001      	movs	r1, r0
    8144:	0018      	movs	r0, r3
    8146:	f7ff ff77 	bl	8038 <rt_psq_enq>
    814a:	f000 f959 	bl	8400 <rt_psh_req>
    814e:	bd10      	pop	{r4, pc}
    8150:	20004cdc 	.word	0x20004cdc

00008154 <rt_evt_get>:
    8154:	4b01      	ldr	r3, [pc, #4]	; (815c <rt_evt_get+0x8>)
    8156:	681b      	ldr	r3, [r3, #0]
    8158:	8b58      	ldrh	r0, [r3, #26]
    815a:	4770      	bx	lr
    815c:	200060c0 	.word	0x200060c0

00008160 <rt_evt_psh>:
    8160:	b510      	push	{r4, lr}
    8162:	8b03      	ldrh	r3, [r0, #24]
    8164:	0004      	movs	r4, r0
    8166:	4319      	orrs	r1, r3
    8168:	7843      	ldrb	r3, [r0, #1]
    816a:	8301      	strh	r1, [r0, #24]
    816c:	8b42      	ldrh	r2, [r0, #26]
    816e:	2b06      	cmp	r3, #6
    8170:	d017      	beq.n	81a2 <rt_evt_psh+0x42>
    8172:	2b05      	cmp	r3, #5
    8174:	d000      	beq.n	8178 <rt_evt_psh+0x18>
    8176:	bd10      	pop	{r4, pc}
    8178:	0013      	movs	r3, r2
    817a:	400b      	ands	r3, r1
    817c:	d0fb      	beq.n	8176 <rt_evt_psh+0x16>
    817e:	8343      	strh	r3, [r0, #26]
    8180:	4391      	bics	r1, r2
    8182:	8321      	strh	r1, [r4, #24]
    8184:	0020      	movs	r0, r4
    8186:	f7ff ff41 	bl	800c <rt_rmv_dly>
    818a:	2301      	movs	r3, #1
    818c:	0020      	movs	r0, r4
    818e:	7063      	strb	r3, [r4, #1]
    8190:	8b62      	ldrh	r2, [r4, #26]
    8192:	2108      	movs	r1, #8
    8194:	f7ff f9d4 	bl	7540 <rt_ret_val2>
    8198:	0021      	movs	r1, r4
    819a:	4804      	ldr	r0, [pc, #16]	; (81ac <rt_evt_psh+0x4c>)
    819c:	f7ff fdd8 	bl	7d50 <rt_put_prio>
    81a0:	e7e9      	b.n	8176 <rt_evt_psh+0x16>
    81a2:	0013      	movs	r3, r2
    81a4:	400b      	ands	r3, r1
    81a6:	429a      	cmp	r2, r3
    81a8:	d1e5      	bne.n	8176 <rt_evt_psh+0x16>
    81aa:	e7e9      	b.n	8180 <rt_evt_psh+0x20>
    81ac:	2000608c 	.word	0x2000608c

000081b0 <rt_suspend>:
    81b0:	4b1c      	ldr	r3, [pc, #112]	; (8224 <rt_suspend+0x74>)
    81b2:	b510      	push	{r4, lr}
    81b4:	681b      	ldr	r3, [r3, #0]
    81b6:	2b00      	cmp	r3, #0
    81b8:	db20      	blt.n	81fc <rt_suspend+0x4c>
    81ba:	491b      	ldr	r1, [pc, #108]	; (8228 <rt_suspend+0x78>)
    81bc:	095a      	lsrs	r2, r3, #5
    81be:	468c      	mov	ip, r1
    81c0:	211f      	movs	r1, #31
    81c2:	400b      	ands	r3, r1
    81c4:	391e      	subs	r1, #30
    81c6:	0008      	movs	r0, r1
    81c8:	4098      	lsls	r0, r3
    81ca:	0092      	lsls	r2, r2, #2
    81cc:	4462      	add	r2, ip
    81ce:	6010      	str	r0, [r2, #0]
    81d0:	4816      	ldr	r0, [pc, #88]	; (822c <rt_suspend+0x7c>)
    81d2:	4a17      	ldr	r2, [pc, #92]	; (8230 <rt_suspend+0x80>)
    81d4:	7001      	strb	r1, [r0, #0]
    81d6:	6813      	ldr	r3, [r2, #0]
    81d8:	0f1b      	lsrs	r3, r3, #28
    81da:	400b      	ands	r3, r1
    81dc:	7043      	strb	r3, [r0, #1]
    81de:	06db      	lsls	r3, r3, #27
    81e0:	6013      	str	r3, [r2, #0]
    81e2:	4b14      	ldr	r3, [pc, #80]	; (8234 <rt_suspend+0x84>)
    81e4:	68da      	ldr	r2, [r3, #12]
    81e6:	2a00      	cmp	r2, #0
    81e8:	d019      	beq.n	821e <rt_suspend+0x6e>
    81ea:	8a9c      	ldrh	r4, [r3, #20]
    81ec:	f7fe f9e6 	bl	65bc <sysUserTimerWakeupTime>
    81f0:	0003      	movs	r3, r0
    81f2:	0020      	movs	r0, r4
    81f4:	429c      	cmp	r4, r3
    81f6:	d900      	bls.n	81fa <rt_suspend+0x4a>
    81f8:	0018      	movs	r0, r3
    81fa:	bd10      	pop	{r4, pc}
    81fc:	2005      	movs	r0, #5
    81fe:	4b0e      	ldr	r3, [pc, #56]	; (8238 <rt_suspend+0x88>)
    8200:	490a      	ldr	r1, [pc, #40]	; (822c <rt_suspend+0x7c>)
    8202:	6018      	str	r0, [r3, #0]
    8204:	2301      	movs	r3, #1
    8206:	4a0a      	ldr	r2, [pc, #40]	; (8230 <rt_suspend+0x80>)
    8208:	700b      	strb	r3, [r1, #0]
    820a:	6813      	ldr	r3, [r2, #0]
    820c:	0e9b      	lsrs	r3, r3, #26
    820e:	4003      	ands	r3, r0
    8210:	704b      	strb	r3, [r1, #1]
    8212:	065b      	lsls	r3, r3, #25
    8214:	6013      	str	r3, [r2, #0]
    8216:	4b07      	ldr	r3, [pc, #28]	; (8234 <rt_suspend+0x84>)
    8218:	68da      	ldr	r2, [r3, #12]
    821a:	2a00      	cmp	r2, #0
    821c:	d1e5      	bne.n	81ea <rt_suspend+0x3a>
    821e:	4c07      	ldr	r4, [pc, #28]	; (823c <rt_suspend+0x8c>)
    8220:	e7e4      	b.n	81ec <rt_suspend+0x3c>
    8222:	46c0      	nop			; (mov r8, r8)
    8224:	200060bc 	.word	0x200060bc
    8228:	e000e180 	.word	0xe000e180
    822c:	20006045 	.word	0x20006045
    8230:	e000ed04 	.word	0xe000ed04
    8234:	200060a4 	.word	0x200060a4
    8238:	e000e010 	.word	0xe000e010
    823c:	0000ffff 	.word	0x0000ffff

00008240 <rt_resume>:
    8240:	b5f0      	push	{r4, r5, r6, r7, lr}
    8242:	4647      	mov	r7, r8
    8244:	4b32      	ldr	r3, [pc, #200]	; (8310 <rt_resume+0xd0>)
    8246:	b480      	push	{r7}
    8248:	0007      	movs	r7, r0
    824a:	6818      	ldr	r0, [r3, #0]
    824c:	2301      	movs	r3, #1
    824e:	7043      	strb	r3, [r0, #1]
    8250:	4698      	mov	r8, r3
    8252:	f7ff fdb7 	bl	7dc4 <rt_put_rdy_first>
    8256:	2200      	movs	r2, #0
    8258:	4b2e      	ldr	r3, [pc, #184]	; (8314 <rt_resume+0xd4>)
    825a:	4e2f      	ldr	r6, [pc, #188]	; (8318 <rt_resume+0xd8>)
    825c:	601a      	str	r2, [r3, #0]
    825e:	68f3      	ldr	r3, [r6, #12]
    8260:	2b00      	cmp	r3, #0
    8262:	d04f      	beq.n	8304 <rt_resume+0xc4>
    8264:	8ab3      	ldrh	r3, [r6, #20]
    8266:	429f      	cmp	r7, r3
    8268:	d336      	bcc.n	82d8 <rt_resume+0x98>
    826a:	4d2c      	ldr	r5, [pc, #176]	; (831c <rt_resume+0xdc>)
    826c:	1afc      	subs	r4, r7, r3
    826e:	682a      	ldr	r2, [r5, #0]
    8270:	4694      	mov	ip, r2
    8272:	4463      	add	r3, ip
    8274:	602b      	str	r3, [r5, #0]
    8276:	4643      	mov	r3, r8
    8278:	82b3      	strh	r3, [r6, #20]
    827a:	e006      	b.n	828a <rt_resume+0x4a>
    827c:	682b      	ldr	r3, [r5, #0]
    827e:	3c01      	subs	r4, #1
    8280:	3301      	adds	r3, #1
    8282:	602b      	str	r3, [r5, #0]
    8284:	68f3      	ldr	r3, [r6, #12]
    8286:	2b00      	cmp	r3, #0
    8288:	d003      	beq.n	8292 <rt_resume+0x52>
    828a:	f7ff fe31 	bl	7ef0 <rt_dec_dly>
    828e:	2c00      	cmp	r4, #0
    8290:	d1f4      	bne.n	827c <rt_resume+0x3c>
    8292:	0038      	movs	r0, r7
    8294:	f7fe f99e 	bl	65d4 <sysUserTimerUpdate>
    8298:	4821      	ldr	r0, [pc, #132]	; (8320 <rt_resume+0xe0>)
    829a:	f7ff fd7f 	bl	7d9c <rt_get_first>
    829e:	f000 f963 	bl	8568 <rt_switch_req>
    82a2:	4b20      	ldr	r3, [pc, #128]	; (8324 <rt_resume+0xe4>)
    82a4:	681b      	ldr	r3, [r3, #0]
    82a6:	2b00      	cmp	r3, #0
    82a8:	db1d      	blt.n	82e6 <rt_resume+0xa6>
    82aa:	491f      	ldr	r1, [pc, #124]	; (8328 <rt_resume+0xe8>)
    82ac:	095a      	lsrs	r2, r3, #5
    82ae:	468c      	mov	ip, r1
    82b0:	211f      	movs	r1, #31
    82b2:	400b      	ands	r3, r1
    82b4:	391e      	subs	r1, #30
    82b6:	4099      	lsls	r1, r3
    82b8:	0092      	lsls	r2, r2, #2
    82ba:	4462      	add	r2, ip
    82bc:	6011      	str	r1, [r2, #0]
    82be:	2100      	movs	r1, #0
    82c0:	4a1a      	ldr	r2, [pc, #104]	; (832c <rt_resume+0xec>)
    82c2:	7011      	strb	r1, [r2, #0]
    82c4:	7890      	ldrb	r0, [r2, #2]
    82c6:	7853      	ldrb	r3, [r2, #1]
    82c8:	4303      	orrs	r3, r0
    82ca:	4819      	ldr	r0, [pc, #100]	; (8330 <rt_resume+0xf0>)
    82cc:	071b      	lsls	r3, r3, #28
    82ce:	6003      	str	r3, [r0, #0]
    82d0:	7091      	strb	r1, [r2, #2]
    82d2:	bc04      	pop	{r2}
    82d4:	4690      	mov	r8, r2
    82d6:	bdf0      	pop	{r4, r5, r6, r7, pc}
    82d8:	4910      	ldr	r1, [pc, #64]	; (831c <rt_resume+0xdc>)
    82da:	1bdb      	subs	r3, r3, r7
    82dc:	680a      	ldr	r2, [r1, #0]
    82de:	82b3      	strh	r3, [r6, #20]
    82e0:	19d2      	adds	r2, r2, r7
    82e2:	600a      	str	r2, [r1, #0]
    82e4:	e7d5      	b.n	8292 <rt_resume+0x52>
    82e6:	2207      	movs	r2, #7
    82e8:	2000      	movs	r0, #0
    82ea:	4910      	ldr	r1, [pc, #64]	; (832c <rt_resume+0xec>)
    82ec:	4b11      	ldr	r3, [pc, #68]	; (8334 <rt_resume+0xf4>)
    82ee:	601a      	str	r2, [r3, #0]
    82f0:	7008      	strb	r0, [r1, #0]
    82f2:	788b      	ldrb	r3, [r1, #2]
    82f4:	784a      	ldrb	r2, [r1, #1]
    82f6:	009b      	lsls	r3, r3, #2
    82f8:	4313      	orrs	r3, r2
    82fa:	4a0d      	ldr	r2, [pc, #52]	; (8330 <rt_resume+0xf0>)
    82fc:	069b      	lsls	r3, r3, #26
    82fe:	6013      	str	r3, [r2, #0]
    8300:	7088      	strb	r0, [r1, #2]
    8302:	e7e6      	b.n	82d2 <rt_resume+0x92>
    8304:	4a05      	ldr	r2, [pc, #20]	; (831c <rt_resume+0xdc>)
    8306:	6813      	ldr	r3, [r2, #0]
    8308:	19db      	adds	r3, r3, r7
    830a:	6013      	str	r3, [r2, #0]
    830c:	e7c1      	b.n	8292 <rt_resume+0x52>
    830e:	46c0      	nop			; (mov r8, r8)
    8310:	200060c0 	.word	0x200060c0
    8314:	200060fc 	.word	0x200060fc
    8318:	200060a4 	.word	0x200060a4
    831c:	20006088 	.word	0x20006088
    8320:	2000608c 	.word	0x2000608c
    8324:	200060bc 	.word	0x200060bc
    8328:	e000e100 	.word	0xe000e100
    832c:	20006045 	.word	0x20006045
    8330:	e000ed04 	.word	0xe000ed04
    8334:	e000e010 	.word	0xe000e010

00008338 <rt_tsk_lock>:
    8338:	4b13      	ldr	r3, [pc, #76]	; (8388 <rt_tsk_lock+0x50>)
    833a:	681b      	ldr	r3, [r3, #0]
    833c:	2b00      	cmp	r3, #0
    833e:	db14      	blt.n	836a <rt_tsk_lock+0x32>
    8340:	4912      	ldr	r1, [pc, #72]	; (838c <rt_tsk_lock+0x54>)
    8342:	095a      	lsrs	r2, r3, #5
    8344:	468c      	mov	ip, r1
    8346:	211f      	movs	r1, #31
    8348:	400b      	ands	r3, r1
    834a:	391e      	subs	r1, #30
    834c:	0008      	movs	r0, r1
    834e:	4098      	lsls	r0, r3
    8350:	0092      	lsls	r2, r2, #2
    8352:	4462      	add	r2, ip
    8354:	6010      	str	r0, [r2, #0]
    8356:	480e      	ldr	r0, [pc, #56]	; (8390 <rt_tsk_lock+0x58>)
    8358:	4a0e      	ldr	r2, [pc, #56]	; (8394 <rt_tsk_lock+0x5c>)
    835a:	7001      	strb	r1, [r0, #0]
    835c:	6813      	ldr	r3, [r2, #0]
    835e:	0f1b      	lsrs	r3, r3, #28
    8360:	400b      	ands	r3, r1
    8362:	7043      	strb	r3, [r0, #1]
    8364:	06db      	lsls	r3, r3, #27
    8366:	6013      	str	r3, [r2, #0]
    8368:	4770      	bx	lr
    836a:	2005      	movs	r0, #5
    836c:	4b0a      	ldr	r3, [pc, #40]	; (8398 <rt_tsk_lock+0x60>)
    836e:	4908      	ldr	r1, [pc, #32]	; (8390 <rt_tsk_lock+0x58>)
    8370:	6018      	str	r0, [r3, #0]
    8372:	2301      	movs	r3, #1
    8374:	4a07      	ldr	r2, [pc, #28]	; (8394 <rt_tsk_lock+0x5c>)
    8376:	700b      	strb	r3, [r1, #0]
    8378:	6813      	ldr	r3, [r2, #0]
    837a:	0e9b      	lsrs	r3, r3, #26
    837c:	4003      	ands	r3, r0
    837e:	704b      	strb	r3, [r1, #1]
    8380:	065b      	lsls	r3, r3, #25
    8382:	6013      	str	r3, [r2, #0]
    8384:	e7f0      	b.n	8368 <rt_tsk_lock+0x30>
    8386:	46c0      	nop			; (mov r8, r8)
    8388:	200060bc 	.word	0x200060bc
    838c:	e000e180 	.word	0xe000e180
    8390:	20006045 	.word	0x20006045
    8394:	e000ed04 	.word	0xe000ed04
    8398:	e000e010 	.word	0xe000e010

0000839c <rt_tsk_unlock>:
    839c:	4b13      	ldr	r3, [pc, #76]	; (83ec <rt_tsk_unlock+0x50>)
    839e:	681b      	ldr	r3, [r3, #0]
    83a0:	2b00      	cmp	r3, #0
    83a2:	db14      	blt.n	83ce <rt_tsk_unlock+0x32>
    83a4:	4912      	ldr	r1, [pc, #72]	; (83f0 <rt_tsk_unlock+0x54>)
    83a6:	095a      	lsrs	r2, r3, #5
    83a8:	468c      	mov	ip, r1
    83aa:	211f      	movs	r1, #31
    83ac:	400b      	ands	r3, r1
    83ae:	391e      	subs	r1, #30
    83b0:	4099      	lsls	r1, r3
    83b2:	0092      	lsls	r2, r2, #2
    83b4:	4462      	add	r2, ip
    83b6:	6011      	str	r1, [r2, #0]
    83b8:	2100      	movs	r1, #0
    83ba:	4a0e      	ldr	r2, [pc, #56]	; (83f4 <rt_tsk_unlock+0x58>)
    83bc:	7011      	strb	r1, [r2, #0]
    83be:	7890      	ldrb	r0, [r2, #2]
    83c0:	7853      	ldrb	r3, [r2, #1]
    83c2:	4303      	orrs	r3, r0
    83c4:	480c      	ldr	r0, [pc, #48]	; (83f8 <rt_tsk_unlock+0x5c>)
    83c6:	071b      	lsls	r3, r3, #28
    83c8:	6003      	str	r3, [r0, #0]
    83ca:	7091      	strb	r1, [r2, #2]
    83cc:	4770      	bx	lr
    83ce:	2207      	movs	r2, #7
    83d0:	2000      	movs	r0, #0
    83d2:	4908      	ldr	r1, [pc, #32]	; (83f4 <rt_tsk_unlock+0x58>)
    83d4:	4b09      	ldr	r3, [pc, #36]	; (83fc <rt_tsk_unlock+0x60>)
    83d6:	601a      	str	r2, [r3, #0]
    83d8:	7008      	strb	r0, [r1, #0]
    83da:	788b      	ldrb	r3, [r1, #2]
    83dc:	784a      	ldrb	r2, [r1, #1]
    83de:	009b      	lsls	r3, r3, #2
    83e0:	4313      	orrs	r3, r2
    83e2:	4a05      	ldr	r2, [pc, #20]	; (83f8 <rt_tsk_unlock+0x5c>)
    83e4:	069b      	lsls	r3, r3, #26
    83e6:	6013      	str	r3, [r2, #0]
    83e8:	7088      	strb	r0, [r1, #2]
    83ea:	e7ef      	b.n	83cc <rt_tsk_unlock+0x30>
    83ec:	200060bc 	.word	0x200060bc
    83f0:	e000e100 	.word	0xe000e100
    83f4:	20006045 	.word	0x20006045
    83f8:	e000ed04 	.word	0xe000ed04
    83fc:	e000e010 	.word	0xe000e010

00008400 <rt_psh_req>:
    8400:	4b05      	ldr	r3, [pc, #20]	; (8418 <rt_psh_req+0x18>)
    8402:	781a      	ldrb	r2, [r3, #0]
    8404:	2a00      	cmp	r2, #0
    8406:	d002      	beq.n	840e <rt_psh_req+0xe>
    8408:	2201      	movs	r2, #1
    840a:	709a      	strb	r2, [r3, #2]
    840c:	4770      	bx	lr
    840e:	2280      	movs	r2, #128	; 0x80
    8410:	4b02      	ldr	r3, [pc, #8]	; (841c <rt_psh_req+0x1c>)
    8412:	0552      	lsls	r2, r2, #21
    8414:	601a      	str	r2, [r3, #0]
    8416:	e7f9      	b.n	840c <rt_psh_req+0xc>
    8418:	20006045 	.word	0x20006045
    841c:	e000ed04 	.word	0xe000ed04

00008420 <rt_pop_req>:
    8420:	4b1c      	ldr	r3, [pc, #112]	; (8494 <rt_pop_req+0x74>)
    8422:	b570      	push	{r4, r5, r6, lr}
    8424:	6818      	ldr	r0, [r3, #0]
    8426:	2301      	movs	r3, #1
    8428:	7043      	strb	r3, [r0, #1]
    842a:	f7ff fccb 	bl	7dc4 <rt_put_rdy_first>
    842e:	4d1a      	ldr	r5, [pc, #104]	; (8498 <rt_pop_req+0x78>)
    8430:	78ab      	ldrb	r3, [r5, #2]
    8432:	786c      	ldrb	r4, [r5, #1]
    8434:	2b00      	cmp	r3, #0
    8436:	d112      	bne.n	845e <rt_pop_req+0x3e>
    8438:	e024      	b.n	8484 <rt_pop_req+0x64>
    843a:	2a01      	cmp	r2, #1
    843c:	d01e      	beq.n	847c <rt_pop_req+0x5c>
    843e:	f7ff fb13 	bl	7a68 <rt_sem_psh>
    8442:	78eb      	ldrb	r3, [r5, #3]
    8444:	3401      	adds	r4, #1
    8446:	429c      	cmp	r4, r3
    8448:	d016      	beq.n	8478 <rt_pop_req+0x58>
    844a:	f3ef 8310 	mrs	r3, PRIMASK
    844e:	b672      	cpsid	i
    8450:	78ab      	ldrb	r3, [r5, #2]
    8452:	3b01      	subs	r3, #1
    8454:	b2db      	uxtb	r3, r3
    8456:	70ab      	strb	r3, [r5, #2]
    8458:	b662      	cpsie	i
    845a:	2b00      	cmp	r3, #0
    845c:	d012      	beq.n	8484 <rt_pop_req+0x64>
    845e:	00e3      	lsls	r3, r4, #3
    8460:	18eb      	adds	r3, r5, r3
    8462:	6858      	ldr	r0, [r3, #4]
    8464:	7802      	ldrb	r2, [r0, #0]
    8466:	2a00      	cmp	r2, #0
    8468:	d1e7      	bne.n	843a <rt_pop_req+0x1a>
    846a:	8919      	ldrh	r1, [r3, #8]
    846c:	f7ff fe78 	bl	8160 <rt_evt_psh>
    8470:	78eb      	ldrb	r3, [r5, #3]
    8472:	3401      	adds	r4, #1
    8474:	429c      	cmp	r4, r3
    8476:	d1e8      	bne.n	844a <rt_pop_req+0x2a>
    8478:	2400      	movs	r4, #0
    847a:	e7e6      	b.n	844a <rt_pop_req+0x2a>
    847c:	6899      	ldr	r1, [r3, #8]
    847e:	f7ff fbf9 	bl	7c74 <rt_mbx_psh>
    8482:	e7de      	b.n	8442 <rt_pop_req+0x22>
    8484:	706c      	strb	r4, [r5, #1]
    8486:	4805      	ldr	r0, [pc, #20]	; (849c <rt_pop_req+0x7c>)
    8488:	f7ff fc88 	bl	7d9c <rt_get_first>
    848c:	f000 f86c 	bl	8568 <rt_switch_req>
    8490:	bd70      	pop	{r4, r5, r6, pc}
    8492:	46c0      	nop			; (mov r8, r8)
    8494:	200060c0 	.word	0x200060c0
    8498:	20004c58 	.word	0x20004c58
    849c:	2000608c 	.word	0x2000608c

000084a0 <os_tick_init>:
    84a0:	4b09      	ldr	r3, [pc, #36]	; (84c8 <os_tick_init+0x28>)
    84a2:	21ff      	movs	r1, #255	; 0xff
    84a4:	681a      	ldr	r2, [r3, #0]
    84a6:	4b09      	ldr	r3, [pc, #36]	; (84cc <os_tick_init+0x2c>)
    84a8:	2001      	movs	r0, #1
    84aa:	601a      	str	r2, [r3, #0]
    84ac:	2200      	movs	r2, #0
    84ae:	4b08      	ldr	r3, [pc, #32]	; (84d0 <os_tick_init+0x30>)
    84b0:	0609      	lsls	r1, r1, #24
    84b2:	601a      	str	r2, [r3, #0]
    84b4:	4b07      	ldr	r3, [pc, #28]	; (84d4 <os_tick_init+0x34>)
    84b6:	3207      	adds	r2, #7
    84b8:	601a      	str	r2, [r3, #0]
    84ba:	4a07      	ldr	r2, [pc, #28]	; (84d8 <os_tick_init+0x38>)
    84bc:	4240      	negs	r0, r0
    84be:	6813      	ldr	r3, [r2, #0]
    84c0:	430b      	orrs	r3, r1
    84c2:	6013      	str	r3, [r2, #0]
    84c4:	4770      	bx	lr
    84c6:	46c0      	nop			; (mov r8, r8)
    84c8:	00008ce8 	.word	0x00008ce8
    84cc:	e000e014 	.word	0xe000e014
    84d0:	e000e018 	.word	0xe000e018
    84d4:	e000e010 	.word	0xe000e010
    84d8:	e000ed20 	.word	0xe000ed20

000084dc <os_tick_val>:
    84dc:	4b02      	ldr	r3, [pc, #8]	; (84e8 <os_tick_val+0xc>)
    84de:	6818      	ldr	r0, [r3, #0]
    84e0:	4b02      	ldr	r3, [pc, #8]	; (84ec <os_tick_val+0x10>)
    84e2:	681b      	ldr	r3, [r3, #0]
    84e4:	1a18      	subs	r0, r3, r0
    84e6:	4770      	bx	lr
    84e8:	e000e018 	.word	0xe000e018
    84ec:	00008ce8 	.word	0x00008ce8

000084f0 <os_tick_ovf>:
    84f0:	4b02      	ldr	r3, [pc, #8]	; (84fc <os_tick_ovf+0xc>)
    84f2:	6818      	ldr	r0, [r3, #0]
    84f4:	0140      	lsls	r0, r0, #5
    84f6:	0fc0      	lsrs	r0, r0, #31
    84f8:	4770      	bx	lr
    84fa:	46c0      	nop			; (mov r8, r8)
    84fc:	e000ed04 	.word	0xe000ed04

00008500 <os_tick_irqack>:
    8500:	4770      	bx	lr
    8502:	46c0      	nop			; (mov r8, r8)

00008504 <rt_systick>:
    8504:	4b0b      	ldr	r3, [pc, #44]	; (8534 <rt_systick+0x30>)
    8506:	b510      	push	{r4, lr}
    8508:	6818      	ldr	r0, [r3, #0]
    850a:	2301      	movs	r3, #1
    850c:	7043      	strb	r3, [r0, #1]
    850e:	f7ff fc59 	bl	7dc4 <rt_put_rdy_first>
    8512:	f000 faeb 	bl	8aec <rt_chk_robin>
    8516:	4a08      	ldr	r2, [pc, #32]	; (8538 <rt_systick+0x34>)
    8518:	6813      	ldr	r3, [r2, #0]
    851a:	3301      	adds	r3, #1
    851c:	6013      	str	r3, [r2, #0]
    851e:	f7ff fce7 	bl	7ef0 <rt_dec_dly>
    8522:	f7fd ffed 	bl	6500 <sysTimerTick>
    8526:	4805      	ldr	r0, [pc, #20]	; (853c <rt_systick+0x38>)
    8528:	f7ff fc38 	bl	7d9c <rt_get_first>
    852c:	f000 f81c 	bl	8568 <rt_switch_req>
    8530:	bd10      	pop	{r4, pc}
    8532:	46c0      	nop			; (mov r8, r8)
    8534:	200060c0 	.word	0x200060c0
    8538:	20006088 	.word	0x20006088
    853c:	2000608c 	.word	0x2000608c

00008540 <rt_stk_check>:
    8540:	4b07      	ldr	r3, [pc, #28]	; (8560 <rt_stk_check+0x20>)
    8542:	b510      	push	{r4, lr}
    8544:	681b      	ldr	r3, [r3, #0]
    8546:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    8548:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    854a:	429a      	cmp	r2, r3
    854c:	d803      	bhi.n	8556 <rt_stk_check+0x16>
    854e:	4b05      	ldr	r3, [pc, #20]	; (8564 <rt_stk_check+0x24>)
    8550:	6812      	ldr	r2, [r2, #0]
    8552:	429a      	cmp	r2, r3
    8554:	d002      	beq.n	855c <rt_stk_check+0x1c>
    8556:	2001      	movs	r0, #1
    8558:	f7f9 fad4 	bl	1b04 <os_error>
    855c:	bd10      	pop	{r4, pc}
    855e:	46c0      	nop			; (mov r8, r8)
    8560:	200060c0 	.word	0x200060c0
    8564:	e25a2ea5 	.word	0xe25a2ea5

00008568 <rt_switch_req>:
    8568:	4b02      	ldr	r3, [pc, #8]	; (8574 <rt_switch_req+0xc>)
    856a:	6058      	str	r0, [r3, #4]
    856c:	2302      	movs	r3, #2
    856e:	7043      	strb	r3, [r0, #1]
    8570:	4770      	bx	lr
    8572:	46c0      	nop			; (mov r8, r8)
    8574:	200060c0 	.word	0x200060c0

00008578 <rt_dispatch>:
    8578:	b570      	push	{r4, r5, r6, lr}
    857a:	1e04      	subs	r4, r0, #0
    857c:	d015      	beq.n	85aa <rt_dispatch+0x32>
    857e:	4d0f      	ldr	r5, [pc, #60]	; (85bc <rt_dispatch+0x44>)
    8580:	78a2      	ldrb	r2, [r4, #2]
    8582:	6828      	ldr	r0, [r5, #0]
    8584:	7883      	ldrb	r3, [r0, #2]
    8586:	429a      	cmp	r2, r3
    8588:	d806      	bhi.n	8598 <rt_dispatch+0x20>
    858a:	2301      	movs	r3, #1
    858c:	0021      	movs	r1, r4
    858e:	7063      	strb	r3, [r4, #1]
    8590:	480b      	ldr	r0, [pc, #44]	; (85c0 <rt_dispatch+0x48>)
    8592:	f7ff fbdd 	bl	7d50 <rt_put_prio>
    8596:	bd70      	pop	{r4, r5, r6, pc}
    8598:	f7ff fc14 	bl	7dc4 <rt_put_rdy_first>
    859c:	2301      	movs	r3, #1
    859e:	682a      	ldr	r2, [r5, #0]
    85a0:	7053      	strb	r3, [r2, #1]
    85a2:	3301      	adds	r3, #1
    85a4:	606c      	str	r4, [r5, #4]
    85a6:	7063      	strb	r3, [r4, #1]
    85a8:	e7f5      	b.n	8596 <rt_dispatch+0x1e>
    85aa:	4805      	ldr	r0, [pc, #20]	; (85c0 <rt_dispatch+0x48>)
    85ac:	f7ff fbf6 	bl	7d9c <rt_get_first>
    85b0:	4b02      	ldr	r3, [pc, #8]	; (85bc <rt_dispatch+0x44>)
    85b2:	6058      	str	r0, [r3, #4]
    85b4:	2302      	movs	r3, #2
    85b6:	7043      	strb	r3, [r0, #1]
    85b8:	e7ed      	b.n	8596 <rt_dispatch+0x1e>
    85ba:	46c0      	nop			; (mov r8, r8)
    85bc:	200060c0 	.word	0x200060c0
    85c0:	2000608c 	.word	0x2000608c

000085c4 <rt_block>:
    85c4:	b570      	push	{r4, r5, r6, lr}
    85c6:	000d      	movs	r5, r1
    85c8:	2800      	cmp	r0, #0
    85ca:	d00f      	beq.n	85ec <rt_block+0x28>
    85cc:	4b08      	ldr	r3, [pc, #32]	; (85f0 <rt_block+0x2c>)
    85ce:	4c09      	ldr	r4, [pc, #36]	; (85f4 <rt_block+0x30>)
    85d0:	4298      	cmp	r0, r3
    85d2:	d003      	beq.n	85dc <rt_block+0x18>
    85d4:	0001      	movs	r1, r0
    85d6:	6820      	ldr	r0, [r4, #0]
    85d8:	f7ff fc58 	bl	7e8c <rt_put_dly>
    85dc:	6823      	ldr	r3, [r4, #0]
    85de:	4806      	ldr	r0, [pc, #24]	; (85f8 <rt_block+0x34>)
    85e0:	705d      	strb	r5, [r3, #1]
    85e2:	f7ff fbdb 	bl	7d9c <rt_get_first>
    85e6:	2302      	movs	r3, #2
    85e8:	6060      	str	r0, [r4, #4]
    85ea:	7043      	strb	r3, [r0, #1]
    85ec:	bd70      	pop	{r4, r5, r6, pc}
    85ee:	46c0      	nop			; (mov r8, r8)
    85f0:	0000ffff 	.word	0x0000ffff
    85f4:	200060c0 	.word	0x200060c0
    85f8:	2000608c 	.word	0x2000608c

000085fc <rt_tsk_pass>:
    85fc:	b570      	push	{r4, r5, r6, lr}
    85fe:	f7ff fbeb 	bl	7dd8 <rt_get_same_rdy_prio>
    8602:	1e04      	subs	r4, r0, #0
    8604:	d00a      	beq.n	861c <rt_tsk_pass+0x20>
    8606:	4d06      	ldr	r5, [pc, #24]	; (8620 <rt_tsk_pass+0x24>)
    8608:	4806      	ldr	r0, [pc, #24]	; (8624 <rt_tsk_pass+0x28>)
    860a:	6829      	ldr	r1, [r5, #0]
    860c:	f7ff fba0 	bl	7d50 <rt_put_prio>
    8610:	2301      	movs	r3, #1
    8612:	682a      	ldr	r2, [r5, #0]
    8614:	7053      	strb	r3, [r2, #1]
    8616:	3301      	adds	r3, #1
    8618:	606c      	str	r4, [r5, #4]
    861a:	7063      	strb	r3, [r4, #1]
    861c:	bd70      	pop	{r4, r5, r6, pc}
    861e:	46c0      	nop			; (mov r8, r8)
    8620:	200060c0 	.word	0x200060c0
    8624:	2000608c 	.word	0x2000608c

00008628 <rt_tsk_self>:
    8628:	4b03      	ldr	r3, [pc, #12]	; (8638 <rt_tsk_self+0x10>)
    862a:	681b      	ldr	r3, [r3, #0]
    862c:	2b00      	cmp	r3, #0
    862e:	d001      	beq.n	8634 <rt_tsk_self+0xc>
    8630:	78d8      	ldrb	r0, [r3, #3]
    8632:	4770      	bx	lr
    8634:	2000      	movs	r0, #0
    8636:	e7fc      	b.n	8632 <rt_tsk_self+0xa>
    8638:	200060c0 	.word	0x200060c0

0000863c <rt_tsk_prio>:
    863c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    863e:	2800      	cmp	r0, #0
    8640:	d10c      	bne.n	865c <rt_tsk_prio+0x20>
    8642:	2224      	movs	r2, #36	; 0x24
    8644:	4c27      	ldr	r4, [pc, #156]	; (86e4 <rt_tsk_prio+0xa8>)
    8646:	6823      	ldr	r3, [r4, #0]
    8648:	7099      	strb	r1, [r3, #2]
    864a:	5499      	strb	r1, [r3, r2]
    864c:	4d26      	ldr	r5, [pc, #152]	; (86e8 <rt_tsk_prio+0xac>)
    864e:	686a      	ldr	r2, [r5, #4]
    8650:	7892      	ldrb	r2, [r2, #2]
    8652:	428a      	cmp	r2, r1
    8654:	d82c      	bhi.n	86b0 <rt_tsk_prio+0x74>
    8656:	2200      	movs	r2, #0
    8658:	0010      	movs	r0, r2
    865a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    865c:	4b23      	ldr	r3, [pc, #140]	; (86ec <rt_tsk_prio+0xb0>)
    865e:	22ff      	movs	r2, #255	; 0xff
    8660:	881b      	ldrh	r3, [r3, #0]
    8662:	4298      	cmp	r0, r3
    8664:	d8f8      	bhi.n	8658 <rt_tsk_prio+0x1c>
    8666:	1e43      	subs	r3, r0, #1
    8668:	4821      	ldr	r0, [pc, #132]	; (86f0 <rt_tsk_prio+0xb4>)
    866a:	009b      	lsls	r3, r3, #2
    866c:	581d      	ldr	r5, [r3, r0]
    866e:	2d00      	cmp	r5, #0
    8670:	d0f2      	beq.n	8658 <rt_tsk_prio+0x1c>
    8672:	2324      	movs	r3, #36	; 0x24
    8674:	4c1b      	ldr	r4, [pc, #108]	; (86e4 <rt_tsk_prio+0xa8>)
    8676:	70a9      	strb	r1, [r5, #2]
    8678:	54e9      	strb	r1, [r5, r3]
    867a:	6823      	ldr	r3, [r4, #0]
    867c:	429d      	cmp	r5, r3
    867e:	d0e5      	beq.n	864c <rt_tsk_prio+0x10>
    8680:	0028      	movs	r0, r5
    8682:	f7ff fbbb 	bl	7dfc <rt_resort_prio>
    8686:	786d      	ldrb	r5, [r5, #1]
    8688:	2d01      	cmp	r5, #1
    868a:	d1e4      	bne.n	8656 <rt_tsk_prio+0x1a>
    868c:	4f16      	ldr	r7, [pc, #88]	; (86e8 <rt_tsk_prio+0xac>)
    868e:	0038      	movs	r0, r7
    8690:	f7ff fb84 	bl	7d9c <rt_get_first>
    8694:	1e06      	subs	r6, r0, #0
    8696:	d023      	beq.n	86e0 <rt_tsk_prio+0xa4>
    8698:	6820      	ldr	r0, [r4, #0]
    869a:	78b2      	ldrb	r2, [r6, #2]
    869c:	7883      	ldrb	r3, [r0, #2]
    869e:	429a      	cmp	r2, r3
    86a0:	d815      	bhi.n	86ce <rt_tsk_prio+0x92>
    86a2:	7075      	strb	r5, [r6, #1]
    86a4:	0031      	movs	r1, r6
    86a6:	0038      	movs	r0, r7
    86a8:	f7ff fb52 	bl	7d50 <rt_put_prio>
    86ac:	2200      	movs	r2, #0
    86ae:	e7d3      	b.n	8658 <rt_tsk_prio+0x1c>
    86b0:	0019      	movs	r1, r3
    86b2:	0028      	movs	r0, r5
    86b4:	f7ff fb4c 	bl	7d50 <rt_put_prio>
    86b8:	2301      	movs	r3, #1
    86ba:	0028      	movs	r0, r5
    86bc:	6822      	ldr	r2, [r4, #0]
    86be:	7053      	strb	r3, [r2, #1]
    86c0:	f7ff fb6c 	bl	7d9c <rt_get_first>
    86c4:	2302      	movs	r3, #2
    86c6:	6060      	str	r0, [r4, #4]
    86c8:	2200      	movs	r2, #0
    86ca:	7043      	strb	r3, [r0, #1]
    86cc:	e7c4      	b.n	8658 <rt_tsk_prio+0x1c>
    86ce:	f7ff fb79 	bl	7dc4 <rt_put_rdy_first>
    86d2:	6823      	ldr	r3, [r4, #0]
    86d4:	2200      	movs	r2, #0
    86d6:	705d      	strb	r5, [r3, #1]
    86d8:	2302      	movs	r3, #2
    86da:	6066      	str	r6, [r4, #4]
    86dc:	7073      	strb	r3, [r6, #1]
    86de:	e7bb      	b.n	8658 <rt_tsk_prio+0x1c>
    86e0:	0038      	movs	r0, r7
    86e2:	e7ed      	b.n	86c0 <rt_tsk_prio+0x84>
    86e4:	200060c0 	.word	0x200060c0
    86e8:	2000608c 	.word	0x2000608c
    86ec:	00008cd4 	.word	0x00008cd4
    86f0:	20004cdc 	.word	0x20004cdc

000086f4 <rt_tsk_create>:
    86f4:	b5f0      	push	{r4, r5, r6, r7, lr}
    86f6:	4647      	mov	r7, r8
    86f8:	b480      	push	{r7}
    86fa:	001f      	movs	r7, r3
    86fc:	23ff      	movs	r3, #255	; 0xff
    86fe:	400b      	ands	r3, r1
    8700:	4690      	mov	r8, r2
    8702:	001a      	movs	r2, r3
    8704:	4253      	negs	r3, r2
    8706:	4153      	adcs	r3, r2
    8708:	0006      	movs	r6, r0
    870a:	4831      	ldr	r0, [pc, #196]	; (87d0 <rt_tsk_create+0xdc>)
    870c:	18cc      	adds	r4, r1, r3
    870e:	f7fe ff95 	bl	763c <rt_alloc_box>
    8712:	1e05      	subs	r5, r0, #0
    8714:	d032      	beq.n	877c <rt_tsk_create+0x88>
    8716:	4643      	mov	r3, r8
    8718:	2101      	movs	r1, #1
    871a:	62c3      	str	r3, [r0, #44]	; 0x2c
    871c:	2300      	movs	r3, #0
    871e:	0a22      	lsrs	r2, r4, #8
    8720:	7041      	strb	r1, [r0, #1]
    8722:	b2e4      	uxtb	r4, r4
    8724:	3123      	adds	r1, #35	; 0x23
    8726:	b292      	uxth	r2, r2
    8728:	7003      	strb	r3, [r0, #0]
    872a:	84c2      	strh	r2, [r0, #38]	; 0x26
    872c:	61c7      	str	r7, [r0, #28]
    872e:	7084      	strb	r4, [r0, #2]
    8730:	5444      	strb	r4, [r0, r1]
    8732:	2100      	movs	r1, #0
    8734:	6043      	str	r3, [r0, #4]
    8736:	6083      	str	r3, [r0, #8]
    8738:	60c3      	str	r3, [r0, #12]
    873a:	6103      	str	r3, [r0, #16]
    873c:	6203      	str	r3, [r0, #32]
    873e:	8283      	strh	r3, [r0, #20]
    8740:	82c3      	strh	r3, [r0, #22]
    8742:	8303      	strh	r3, [r0, #24]
    8744:	8343      	strh	r3, [r0, #26]
    8746:	3325      	adds	r3, #37	; 0x25
    8748:	54c1      	strb	r1, [r0, r3]
    874a:	2a00      	cmp	r2, #0
    874c:	d01a      	beq.n	8784 <rt_tsk_create+0x90>
    874e:	0031      	movs	r1, r6
    8750:	0028      	movs	r0, r5
    8752:	f7fe fe99 	bl	7488 <rt_init_stack>
    8756:	4b1f      	ldr	r3, [pc, #124]	; (87d4 <rt_tsk_create+0xe0>)
    8758:	8819      	ldrh	r1, [r3, #0]
    875a:	2900      	cmp	r1, #0
    875c:	d00e      	beq.n	877c <rt_tsk_create+0x88>
    875e:	481e      	ldr	r0, [pc, #120]	; (87d8 <rt_tsk_create+0xe4>)
    8760:	6803      	ldr	r3, [r0, #0]
    8762:	2b00      	cmp	r3, #0
    8764:	d02f      	beq.n	87c6 <rt_tsk_create+0xd2>
    8766:	2201      	movs	r2, #1
    8768:	e005      	b.n	8776 <rt_tsk_create+0x82>
    876a:	00a3      	lsls	r3, r4, #2
    876c:	3b04      	subs	r3, #4
    876e:	58c3      	ldr	r3, [r0, r3]
    8770:	2b00      	cmp	r3, #0
    8772:	d00c      	beq.n	878e <rt_tsk_create+0x9a>
    8774:	0022      	movs	r2, r4
    8776:	1c54      	adds	r4, r2, #1
    8778:	428c      	cmp	r4, r1
    877a:	d9f6      	bls.n	876a <rt_tsk_create+0x76>
    877c:	2000      	movs	r0, #0
    877e:	bc04      	pop	{r2}
    8780:	4690      	mov	r8, r2
    8782:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8784:	4815      	ldr	r0, [pc, #84]	; (87dc <rt_tsk_create+0xe8>)
    8786:	f7fe ff59 	bl	763c <rt_alloc_box>
    878a:	62e8      	str	r0, [r5, #44]	; 0x2c
    878c:	e7df      	b.n	874e <rt_tsk_create+0x5a>
    878e:	b2e3      	uxtb	r3, r4
    8790:	0092      	lsls	r2, r2, #2
    8792:	4e13      	ldr	r6, [pc, #76]	; (87e0 <rt_tsk_create+0xec>)
    8794:	5085      	str	r5, [r0, r2]
    8796:	70eb      	strb	r3, [r5, #3]
    8798:	6830      	ldr	r0, [r6, #0]
    879a:	78aa      	ldrb	r2, [r5, #2]
    879c:	7883      	ldrb	r3, [r0, #2]
    879e:	429a      	cmp	r2, r3
    87a0:	d807      	bhi.n	87b2 <rt_tsk_create+0xbe>
    87a2:	2301      	movs	r3, #1
    87a4:	480f      	ldr	r0, [pc, #60]	; (87e4 <rt_tsk_create+0xf0>)
    87a6:	706b      	strb	r3, [r5, #1]
    87a8:	0029      	movs	r1, r5
    87aa:	f7ff fad1 	bl	7d50 <rt_put_prio>
    87ae:	0020      	movs	r0, r4
    87b0:	e7e5      	b.n	877e <rt_tsk_create+0x8a>
    87b2:	f7ff fb07 	bl	7dc4 <rt_put_rdy_first>
    87b6:	2301      	movs	r3, #1
    87b8:	6832      	ldr	r2, [r6, #0]
    87ba:	0020      	movs	r0, r4
    87bc:	7053      	strb	r3, [r2, #1]
    87be:	3301      	adds	r3, #1
    87c0:	6075      	str	r5, [r6, #4]
    87c2:	706b      	strb	r3, [r5, #1]
    87c4:	e7db      	b.n	877e <rt_tsk_create+0x8a>
    87c6:	2301      	movs	r3, #1
    87c8:	2200      	movs	r2, #0
    87ca:	2401      	movs	r4, #1
    87cc:	e7e0      	b.n	8790 <rt_tsk_create+0x9c>
    87ce:	46c0      	nop			; (mov r8, r8)
    87d0:	20000908 	.word	0x20000908
    87d4:	00008cd4 	.word	0x00008cd4
    87d8:	20004cdc 	.word	0x20004cdc
    87dc:	200009e8 	.word	0x200009e8
    87e0:	200060c0 	.word	0x200060c0
    87e4:	2000608c 	.word	0x2000608c

000087e8 <rt_tsk_delete>:
    87e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    87ea:	4644      	mov	r4, r8
    87ec:	465f      	mov	r7, fp
    87ee:	4656      	mov	r6, sl
    87f0:	464d      	mov	r5, r9
    87f2:	4b5a      	ldr	r3, [pc, #360]	; (895c <rt_tsk_delete+0x174>)
    87f4:	b4f0      	push	{r4, r5, r6, r7}
    87f6:	4698      	mov	r8, r3
    87f8:	681c      	ldr	r4, [r3, #0]
    87fa:	2800      	cmp	r0, #0
    87fc:	d00e      	beq.n	881c <rt_tsk_delete+0x34>
    87fe:	78e3      	ldrb	r3, [r4, #3]
    8800:	4298      	cmp	r0, r3
    8802:	d00b      	beq.n	881c <rt_tsk_delete+0x34>
    8804:	4b56      	ldr	r3, [pc, #344]	; (8960 <rt_tsk_delete+0x178>)
    8806:	881a      	ldrh	r2, [r3, #0]
    8808:	23ff      	movs	r3, #255	; 0xff
    880a:	4290      	cmp	r0, r2
    880c:	d952      	bls.n	88b4 <rt_tsk_delete+0xcc>
    880e:	0018      	movs	r0, r3
    8810:	bc3c      	pop	{r2, r3, r4, r5}
    8812:	4690      	mov	r8, r2
    8814:	4699      	mov	r9, r3
    8816:	46a2      	mov	sl, r4
    8818:	46ab      	mov	fp, r5
    881a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    881c:	2300      	movs	r3, #0
    881e:	7063      	strb	r3, [r4, #1]
    8820:	f7fc fa99 	bl	4d56 <rt_get_PSP>
    8824:	62a0      	str	r0, [r4, #40]	; 0x28
    8826:	f7ff fe8b 	bl	8540 <rt_stk_check>
    882a:	4643      	mov	r3, r8
    882c:	681a      	ldr	r2, [r3, #0]
    882e:	4f4d      	ldr	r7, [pc, #308]	; (8964 <rt_tsk_delete+0x17c>)
    8830:	6a14      	ldr	r4, [r2, #32]
    8832:	2c00      	cmp	r4, #0
    8834:	d023      	beq.n	887e <rt_tsk_delete+0x96>
    8836:	2601      	movs	r6, #1
    8838:	e016      	b.n	8868 <rt_tsk_delete+0x80>
    883a:	0020      	movs	r0, r4
    883c:	f7ff faae 	bl	7d9c <rt_get_first>
    8840:	0005      	movs	r5, r0
    8842:	2100      	movs	r1, #0
    8844:	f7fe fe78 	bl	7538 <rt_ret_val>
    8848:	0028      	movs	r0, r5
    884a:	f7ff fbdf 	bl	800c <rt_rmv_dly>
    884e:	706e      	strb	r6, [r5, #1]
    8850:	0029      	movs	r1, r5
    8852:	0038      	movs	r0, r7
    8854:	f7ff fa7c 	bl	7d50 <rt_put_prio>
    8858:	68e3      	ldr	r3, [r4, #12]
    885a:	6a2a      	ldr	r2, [r5, #32]
    885c:	8066      	strh	r6, [r4, #2]
    885e:	60a5      	str	r5, [r4, #8]
    8860:	60e2      	str	r2, [r4, #12]
    8862:	622c      	str	r4, [r5, #32]
    8864:	1e1c      	subs	r4, r3, #0
    8866:	d008      	beq.n	887a <rt_tsk_delete+0x92>
    8868:	6863      	ldr	r3, [r4, #4]
    886a:	2b00      	cmp	r3, #0
    886c:	d1e5      	bne.n	883a <rt_tsk_delete+0x52>
    886e:	68e2      	ldr	r2, [r4, #12]
    8870:	8063      	strh	r3, [r4, #2]
    8872:	60a3      	str	r3, [r4, #8]
    8874:	60e3      	str	r3, [r4, #12]
    8876:	1e14      	subs	r4, r2, #0
    8878:	d1f6      	bne.n	8868 <rt_tsk_delete+0x80>
    887a:	4643      	mov	r3, r8
    887c:	681a      	ldr	r2, [r3, #0]
    887e:	2400      	movs	r4, #0
    8880:	78d3      	ldrb	r3, [r2, #3]
    8882:	4939      	ldr	r1, [pc, #228]	; (8968 <rt_tsk_delete+0x180>)
    8884:	3b01      	subs	r3, #1
    8886:	009b      	lsls	r3, r3, #2
    8888:	505c      	str	r4, [r3, r1]
    888a:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    888c:	4837      	ldr	r0, [pc, #220]	; (896c <rt_tsk_delete+0x184>)
    888e:	f7fe fef5 	bl	767c <rt_free_box>
    8892:	4643      	mov	r3, r8
    8894:	6819      	ldr	r1, [r3, #0]
    8896:	4836      	ldr	r0, [pc, #216]	; (8970 <rt_tsk_delete+0x188>)
    8898:	62cc      	str	r4, [r1, #44]	; 0x2c
    889a:	f7fe feef 	bl	767c <rt_free_box>
    889e:	4643      	mov	r3, r8
    88a0:	601c      	str	r4, [r3, #0]
    88a2:	0038      	movs	r0, r7
    88a4:	f7ff fa7a 	bl	7d9c <rt_get_first>
    88a8:	4643      	mov	r3, r8
    88aa:	6058      	str	r0, [r3, #4]
    88ac:	2302      	movs	r3, #2
    88ae:	7043      	strb	r3, [r0, #1]
    88b0:	2300      	movs	r3, #0
    88b2:	e7ac      	b.n	880e <rt_tsk_delete+0x26>
    88b4:	4a2c      	ldr	r2, [pc, #176]	; (8968 <rt_tsk_delete+0x180>)
    88b6:	1e46      	subs	r6, r0, #1
    88b8:	4692      	mov	sl, r2
    88ba:	00b2      	lsls	r2, r6, #2
    88bc:	4693      	mov	fp, r2
    88be:	4652      	mov	r2, sl
    88c0:	4659      	mov	r1, fp
    88c2:	5856      	ldr	r6, [r2, r1]
    88c4:	2e00      	cmp	r6, #0
    88c6:	d0a2      	beq.n	880e <rt_tsk_delete+0x26>
    88c8:	0030      	movs	r0, r6
    88ca:	f7ff fb89 	bl	7fe0 <rt_rmv_list>
    88ce:	0030      	movs	r0, r6
    88d0:	f7ff fb9c 	bl	800c <rt_rmv_dly>
    88d4:	2301      	movs	r3, #1
    88d6:	6a34      	ldr	r4, [r6, #32]
    88d8:	4f22      	ldr	r7, [pc, #136]	; (8964 <rt_tsk_delete+0x17c>)
    88da:	4699      	mov	r9, r3
    88dc:	2c00      	cmp	r4, #0
    88de:	d11a      	bne.n	8916 <rt_tsk_delete+0x12e>
    88e0:	e022      	b.n	8928 <rt_tsk_delete+0x140>
    88e2:	0020      	movs	r0, r4
    88e4:	f7ff fa5a 	bl	7d9c <rt_get_first>
    88e8:	0005      	movs	r5, r0
    88ea:	2100      	movs	r1, #0
    88ec:	f7fe fe24 	bl	7538 <rt_ret_val>
    88f0:	0028      	movs	r0, r5
    88f2:	f7ff fb8b 	bl	800c <rt_rmv_dly>
    88f6:	464b      	mov	r3, r9
    88f8:	0029      	movs	r1, r5
    88fa:	706b      	strb	r3, [r5, #1]
    88fc:	0038      	movs	r0, r7
    88fe:	f7ff fa27 	bl	7d50 <rt_put_prio>
    8902:	464a      	mov	r2, r9
    8904:	68e3      	ldr	r3, [r4, #12]
    8906:	8062      	strh	r2, [r4, #2]
    8908:	6a2a      	ldr	r2, [r5, #32]
    890a:	60a5      	str	r5, [r4, #8]
    890c:	60e2      	str	r2, [r4, #12]
    890e:	622c      	str	r4, [r5, #32]
    8910:	001c      	movs	r4, r3
    8912:	2c00      	cmp	r4, #0
    8914:	d008      	beq.n	8928 <rt_tsk_delete+0x140>
    8916:	6863      	ldr	r3, [r4, #4]
    8918:	2b00      	cmp	r3, #0
    891a:	d1e2      	bne.n	88e2 <rt_tsk_delete+0xfa>
    891c:	68e2      	ldr	r2, [r4, #12]
    891e:	8063      	strh	r3, [r4, #2]
    8920:	60a3      	str	r3, [r4, #8]
    8922:	60e3      	str	r3, [r4, #12]
    8924:	0014      	movs	r4, r2
    8926:	e7f4      	b.n	8912 <rt_tsk_delete+0x12a>
    8928:	4653      	mov	r3, sl
    892a:	465a      	mov	r2, fp
    892c:	2400      	movs	r4, #0
    892e:	509c      	str	r4, [r3, r2]
    8930:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    8932:	480e      	ldr	r0, [pc, #56]	; (896c <rt_tsk_delete+0x184>)
    8934:	f7fe fea2 	bl	767c <rt_free_box>
    8938:	0031      	movs	r1, r6
    893a:	62f4      	str	r4, [r6, #44]	; 0x2c
    893c:	480c      	ldr	r0, [pc, #48]	; (8970 <rt_tsk_delete+0x188>)
    893e:	f7fe fe9d 	bl	767c <rt_free_box>
    8942:	4643      	mov	r3, r8
    8944:	6819      	ldr	r1, [r3, #0]
    8946:	687b      	ldr	r3, [r7, #4]
    8948:	789a      	ldrb	r2, [r3, #2]
    894a:	788b      	ldrb	r3, [r1, #2]
    894c:	429a      	cmp	r2, r3
    894e:	d9af      	bls.n	88b0 <rt_tsk_delete+0xc8>
    8950:	2301      	movs	r3, #1
    8952:	0038      	movs	r0, r7
    8954:	704b      	strb	r3, [r1, #1]
    8956:	f7ff f9fb 	bl	7d50 <rt_put_prio>
    895a:	e7a2      	b.n	88a2 <rt_tsk_delete+0xba>
    895c:	200060c0 	.word	0x200060c0
    8960:	00008cd4 	.word	0x00008cd4
    8964:	2000608c 	.word	0x2000608c
    8968:	20004cdc 	.word	0x20004cdc
    896c:	200009e8 	.word	0x200009e8
    8970:	20000908 	.word	0x20000908

00008974 <rt_sys_init>:
    8974:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8976:	4b2b      	ldr	r3, [pc, #172]	; (8a24 <rt_sys_init+0xb0>)
    8978:	881a      	ldrh	r2, [r3, #0]
    897a:	2a00      	cmp	r2, #0
    897c:	d004      	beq.n	8988 <rt_sys_init+0x14>
    897e:	0092      	lsls	r2, r2, #2
    8980:	2100      	movs	r1, #0
    8982:	4829      	ldr	r0, [pc, #164]	; (8a28 <rt_sys_init+0xb4>)
    8984:	f000 f8d8 	bl	8b38 <memset>
    8988:	4b28      	ldr	r3, [pc, #160]	; (8a2c <rt_sys_init+0xb8>)
    898a:	2234      	movs	r2, #52	; 0x34
    898c:	8819      	ldrh	r1, [r3, #0]
    898e:	4828      	ldr	r0, [pc, #160]	; (8a30 <rt_sys_init+0xbc>)
    8990:	f7fe fe28 	bl	75e4 <_init_box>
    8994:	2280      	movs	r2, #128	; 0x80
    8996:	4b27      	ldr	r3, [pc, #156]	; (8a34 <rt_sys_init+0xc0>)
    8998:	0612      	lsls	r2, r2, #24
    899a:	881b      	ldrh	r3, [r3, #0]
    899c:	4f26      	ldr	r7, [pc, #152]	; (8a38 <rt_sys_init+0xc4>)
    899e:	431a      	orrs	r2, r3
    89a0:	4b26      	ldr	r3, [pc, #152]	; (8a3c <rt_sys_init+0xc8>)
    89a2:	0038      	movs	r0, r7
    89a4:	6819      	ldr	r1, [r3, #0]
    89a6:	f7fe fe1d 	bl	75e4 <_init_box>
    89aa:	4b25      	ldr	r3, [pc, #148]	; (8a40 <rt_sys_init+0xcc>)
    89ac:	2208      	movs	r2, #8
    89ae:	6818      	ldr	r0, [r3, #0]
    89b0:	4b24      	ldr	r3, [pc, #144]	; (8a44 <rt_sys_init+0xd0>)
    89b2:	2600      	movs	r6, #0
    89b4:	8819      	ldrh	r1, [r3, #0]
    89b6:	f7fe fe15 	bl	75e4 <_init_box>
    89ba:	23ff      	movs	r3, #255	; 0xff
    89bc:	2500      	movs	r5, #0
    89be:	4c22      	ldr	r4, [pc, #136]	; (8a48 <rt_sys_init+0xd4>)
    89c0:	0038      	movs	r0, r7
    89c2:	70e3      	strb	r3, [r4, #3]
    89c4:	3bfe      	subs	r3, #254	; 0xfe
    89c6:	7063      	strb	r3, [r4, #1]
    89c8:	3323      	adds	r3, #35	; 0x23
    89ca:	54e6      	strb	r6, [r4, r3]
    89cc:	3301      	adds	r3, #1
    89ce:	54e6      	strb	r6, [r4, r3]
    89d0:	84e5      	strh	r5, [r4, #38]	; 0x26
    89d2:	7026      	strb	r6, [r4, #0]
    89d4:	70a6      	strb	r6, [r4, #2]
    89d6:	6065      	str	r5, [r4, #4]
    89d8:	60a5      	str	r5, [r4, #8]
    89da:	60e5      	str	r5, [r4, #12]
    89dc:	6125      	str	r5, [r4, #16]
    89de:	6225      	str	r5, [r4, #32]
    89e0:	82a5      	strh	r5, [r4, #20]
    89e2:	82e5      	strh	r5, [r4, #22]
    89e4:	8325      	strh	r5, [r4, #24]
    89e6:	8365      	strh	r5, [r4, #26]
    89e8:	f7fe fe28 	bl	763c <rt_alloc_box>
    89ec:	4917      	ldr	r1, [pc, #92]	; (8a4c <rt_sys_init+0xd8>)
    89ee:	62e0      	str	r0, [r4, #44]	; 0x2c
    89f0:	0020      	movs	r0, r4
    89f2:	f7fe fd49 	bl	7488 <rt_init_stack>
    89f6:	2204      	movs	r2, #4
    89f8:	4b15      	ldr	r3, [pc, #84]	; (8a50 <rt_sys_init+0xdc>)
    89fa:	701a      	strb	r2, [r3, #0]
    89fc:	605d      	str	r5, [r3, #4]
    89fe:	4b15      	ldr	r3, [pc, #84]	; (8a54 <rt_sys_init+0xe0>)
    8a00:	701a      	strb	r2, [r3, #0]
    8a02:	60dd      	str	r5, [r3, #12]
    8a04:	611d      	str	r5, [r3, #16]
    8a06:	829d      	strh	r5, [r3, #20]
    8a08:	4b13      	ldr	r3, [pc, #76]	; (8a58 <rt_sys_init+0xe4>)
    8a0a:	4a14      	ldr	r2, [pc, #80]	; (8a5c <rt_sys_init+0xe8>)
    8a0c:	601c      	str	r4, [r3, #0]
    8a0e:	2302      	movs	r3, #2
    8a10:	7812      	ldrb	r2, [r2, #0]
    8a12:	7063      	strb	r3, [r4, #1]
    8a14:	4b12      	ldr	r3, [pc, #72]	; (8a60 <rt_sys_init+0xec>)
    8a16:	701e      	strb	r6, [r3, #0]
    8a18:	705e      	strb	r6, [r3, #1]
    8a1a:	70da      	strb	r2, [r3, #3]
    8a1c:	f000 f85a 	bl	8ad4 <rt_init_robin>
    8a20:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8a22:	46c0      	nop			; (mov r8, r8)
    8a24:	00008cd4 	.word	0x00008cd4
    8a28:	20004cdc 	.word	0x20004cdc
    8a2c:	00008d00 	.word	0x00008d00
    8a30:	20000908 	.word	0x20000908
    8a34:	00008cd8 	.word	0x00008cd8
    8a38:	200009e8 	.word	0x200009e8
    8a3c:	00008d04 	.word	0x00008d04
    8a40:	20004d18 	.word	0x20004d18
    8a44:	00008d28 	.word	0x00008d28
    8a48:	200060c8 	.word	0x200060c8
    8a4c:	00001afd 	.word	0x00001afd
    8a50:	2000608c 	.word	0x2000608c
    8a54:	200060a4 	.word	0x200060a4
    8a58:	200060c0 	.word	0x200060c0
    8a5c:	00008d0c 	.word	0x00008d0c
    8a60:	20004c58 	.word	0x20004c58

00008a64 <rt_sys_start>:
    8a64:	21ff      	movs	r1, #255	; 0xff
    8a66:	4b16      	ldr	r3, [pc, #88]	; (8ac0 <rt_sys_start+0x5c>)
    8a68:	0409      	lsls	r1, r1, #16
    8a6a:	681a      	ldr	r2, [r3, #0]
    8a6c:	b510      	push	{r4, lr}
    8a6e:	430a      	orrs	r2, r1
    8a70:	601a      	str	r2, [r3, #0]
    8a72:	681b      	ldr	r3, [r3, #0]
    8a74:	4913      	ldr	r1, [pc, #76]	; (8ac4 <rt_sys_start+0x60>)
    8a76:	025b      	lsls	r3, r3, #9
    8a78:	680a      	ldr	r2, [r1, #0]
    8a7a:	0e9b      	lsrs	r3, r3, #26
    8a7c:	069b      	lsls	r3, r3, #26
    8a7e:	4313      	orrs	r3, r2
    8a80:	600b      	str	r3, [r1, #0]
    8a82:	f7ff fd0d 	bl	84a0 <os_tick_init>
    8a86:	4c10      	ldr	r4, [pc, #64]	; (8ac8 <rt_sys_start+0x64>)
    8a88:	6020      	str	r0, [r4, #0]
    8a8a:	2800      	cmp	r0, #0
    8a8c:	db17      	blt.n	8abe <rt_sys_start+0x5a>
    8a8e:	4a0f      	ldr	r2, [pc, #60]	; (8acc <rt_sys_start+0x68>)
    8a90:	0883      	lsrs	r3, r0, #2
    8a92:	4694      	mov	ip, r2
    8a94:	2218      	movs	r2, #24
    8a96:	00c0      	lsls	r0, r0, #3
    8a98:	4010      	ands	r0, r2
    8a9a:	32e7      	adds	r2, #231	; 0xe7
    8a9c:	4082      	lsls	r2, r0
    8a9e:	009b      	lsls	r3, r3, #2
    8aa0:	4463      	add	r3, ip
    8aa2:	6819      	ldr	r1, [r3, #0]
    8aa4:	430a      	orrs	r2, r1
    8aa6:	490a      	ldr	r1, [pc, #40]	; (8ad0 <rt_sys_start+0x6c>)
    8aa8:	601a      	str	r2, [r3, #0]
    8aaa:	468c      	mov	ip, r1
    8aac:	211f      	movs	r1, #31
    8aae:	6822      	ldr	r2, [r4, #0]
    8ab0:	0953      	lsrs	r3, r2, #5
    8ab2:	400a      	ands	r2, r1
    8ab4:	391e      	subs	r1, #30
    8ab6:	4091      	lsls	r1, r2
    8ab8:	009b      	lsls	r3, r3, #2
    8aba:	4463      	add	r3, ip
    8abc:	6019      	str	r1, [r3, #0]
    8abe:	bd10      	pop	{r4, pc}
    8ac0:	e000ed20 	.word	0xe000ed20
    8ac4:	e000ed1c 	.word	0xe000ed1c
    8ac8:	200060bc 	.word	0x200060bc
    8acc:	e000e400 	.word	0xe000e400
    8ad0:	e000e100 	.word	0xe000e100

00008ad4 <rt_init_robin>:
    8ad4:	2200      	movs	r2, #0
    8ad6:	4b03      	ldr	r3, [pc, #12]	; (8ae4 <rt_init_robin+0x10>)
    8ad8:	601a      	str	r2, [r3, #0]
    8ada:	4a03      	ldr	r2, [pc, #12]	; (8ae8 <rt_init_robin+0x14>)
    8adc:	6812      	ldr	r2, [r2, #0]
    8ade:	80da      	strh	r2, [r3, #6]
    8ae0:	4770      	bx	lr
    8ae2:	46c0      	nop			; (mov r8, r8)
    8ae4:	200060fc 	.word	0x200060fc
    8ae8:	00008cdc 	.word	0x00008cdc

00008aec <rt_chk_robin>:
    8aec:	b510      	push	{r4, lr}
    8aee:	4a0f      	ldr	r2, [pc, #60]	; (8b2c <rt_chk_robin+0x40>)
    8af0:	4c0f      	ldr	r4, [pc, #60]	; (8b30 <rt_chk_robin+0x44>)
    8af2:	6811      	ldr	r1, [r2, #0]
    8af4:	6863      	ldr	r3, [r4, #4]
    8af6:	4299      	cmp	r1, r3
    8af8:	d014      	beq.n	8b24 <rt_chk_robin+0x38>
    8afa:	6013      	str	r3, [r2, #0]
    8afc:	4b0d      	ldr	r3, [pc, #52]	; (8b34 <rt_chk_robin+0x48>)
    8afe:	8819      	ldrh	r1, [r3, #0]
    8b00:	88d3      	ldrh	r3, [r2, #6]
    8b02:	3b01      	subs	r3, #1
    8b04:	18cb      	adds	r3, r1, r3
    8b06:	b29b      	uxth	r3, r3
    8b08:	8093      	strh	r3, [r2, #4]
    8b0a:	4299      	cmp	r1, r3
    8b0c:	d000      	beq.n	8b10 <rt_chk_robin+0x24>
    8b0e:	bd10      	pop	{r4, pc}
    8b10:	2300      	movs	r3, #0
    8b12:	0020      	movs	r0, r4
    8b14:	6013      	str	r3, [r2, #0]
    8b16:	f7ff f941 	bl	7d9c <rt_get_first>
    8b1a:	0001      	movs	r1, r0
    8b1c:	0020      	movs	r0, r4
    8b1e:	f7ff f917 	bl	7d50 <rt_put_prio>
    8b22:	e7f4      	b.n	8b0e <rt_chk_robin+0x22>
    8b24:	4b03      	ldr	r3, [pc, #12]	; (8b34 <rt_chk_robin+0x48>)
    8b26:	8819      	ldrh	r1, [r3, #0]
    8b28:	8893      	ldrh	r3, [r2, #4]
    8b2a:	e7ee      	b.n	8b0a <rt_chk_robin+0x1e>
    8b2c:	200060fc 	.word	0x200060fc
    8b30:	2000608c 	.word	0x2000608c
    8b34:	20006088 	.word	0x20006088

00008b38 <memset>:
    8b38:	b570      	push	{r4, r5, r6, lr}
    8b3a:	0783      	lsls	r3, r0, #30
    8b3c:	d03f      	beq.n	8bbe <memset+0x86>
    8b3e:	1e54      	subs	r4, r2, #1
    8b40:	2a00      	cmp	r2, #0
    8b42:	d03b      	beq.n	8bbc <memset+0x84>
    8b44:	b2ce      	uxtb	r6, r1
    8b46:	0003      	movs	r3, r0
    8b48:	2503      	movs	r5, #3
    8b4a:	e003      	b.n	8b54 <memset+0x1c>
    8b4c:	1e62      	subs	r2, r4, #1
    8b4e:	2c00      	cmp	r4, #0
    8b50:	d034      	beq.n	8bbc <memset+0x84>
    8b52:	0014      	movs	r4, r2
    8b54:	3301      	adds	r3, #1
    8b56:	1e5a      	subs	r2, r3, #1
    8b58:	7016      	strb	r6, [r2, #0]
    8b5a:	422b      	tst	r3, r5
    8b5c:	d1f6      	bne.n	8b4c <memset+0x14>
    8b5e:	2c03      	cmp	r4, #3
    8b60:	d924      	bls.n	8bac <memset+0x74>
    8b62:	25ff      	movs	r5, #255	; 0xff
    8b64:	400d      	ands	r5, r1
    8b66:	022a      	lsls	r2, r5, #8
    8b68:	4315      	orrs	r5, r2
    8b6a:	042a      	lsls	r2, r5, #16
    8b6c:	4315      	orrs	r5, r2
    8b6e:	2c0f      	cmp	r4, #15
    8b70:	d911      	bls.n	8b96 <memset+0x5e>
    8b72:	0026      	movs	r6, r4
    8b74:	3e10      	subs	r6, #16
    8b76:	0936      	lsrs	r6, r6, #4
    8b78:	3601      	adds	r6, #1
    8b7a:	0136      	lsls	r6, r6, #4
    8b7c:	001a      	movs	r2, r3
    8b7e:	199b      	adds	r3, r3, r6
    8b80:	6015      	str	r5, [r2, #0]
    8b82:	6055      	str	r5, [r2, #4]
    8b84:	6095      	str	r5, [r2, #8]
    8b86:	60d5      	str	r5, [r2, #12]
    8b88:	3210      	adds	r2, #16
    8b8a:	4293      	cmp	r3, r2
    8b8c:	d1f8      	bne.n	8b80 <memset+0x48>
    8b8e:	220f      	movs	r2, #15
    8b90:	4014      	ands	r4, r2
    8b92:	2c03      	cmp	r4, #3
    8b94:	d90a      	bls.n	8bac <memset+0x74>
    8b96:	1f26      	subs	r6, r4, #4
    8b98:	08b6      	lsrs	r6, r6, #2
    8b9a:	3601      	adds	r6, #1
    8b9c:	00b6      	lsls	r6, r6, #2
    8b9e:	001a      	movs	r2, r3
    8ba0:	199b      	adds	r3, r3, r6
    8ba2:	c220      	stmia	r2!, {r5}
    8ba4:	4293      	cmp	r3, r2
    8ba6:	d1fc      	bne.n	8ba2 <memset+0x6a>
    8ba8:	2203      	movs	r2, #3
    8baa:	4014      	ands	r4, r2
    8bac:	2c00      	cmp	r4, #0
    8bae:	d005      	beq.n	8bbc <memset+0x84>
    8bb0:	b2c9      	uxtb	r1, r1
    8bb2:	191c      	adds	r4, r3, r4
    8bb4:	7019      	strb	r1, [r3, #0]
    8bb6:	3301      	adds	r3, #1
    8bb8:	429c      	cmp	r4, r3
    8bba:	d1fb      	bne.n	8bb4 <memset+0x7c>
    8bbc:	bd70      	pop	{r4, r5, r6, pc}
    8bbe:	0014      	movs	r4, r2
    8bc0:	0003      	movs	r3, r0
    8bc2:	e7cc      	b.n	8b5e <memset+0x26>
    8bc4:	0000      	movs	r0, r0
	...

00008bc8 <__eeprom_program_word_veneer>:
    8bc8:	b401      	push	{r0}
    8bca:	4802      	ldr	r0, [pc, #8]	; (8bd4 <__eeprom_program_word_veneer+0xc>)
    8bcc:	4684      	mov	ip, r0
    8bce:	bc01      	pop	{r0}
    8bd0:	4760      	bx	ip
    8bd2:	bf00      	nop
    8bd4:	20100151 	.word	0x20100151

00008bd8 <__eeprom_erase_page_veneer>:
    8bd8:	b401      	push	{r0}
    8bda:	4802      	ldr	r0, [pc, #8]	; (8be4 <__eeprom_erase_page_veneer+0xc>)
    8bdc:	4684      	mov	ip, r0
    8bde:	bc01      	pop	{r0}
    8be0:	4760      	bx	ip
    8be2:	bf00      	nop
    8be4:	2010002d 	.word	0x2010002d

00008be8 <__eeprom_read_word_veneer>:
    8be8:	b401      	push	{r0}
    8bea:	4802      	ldr	r0, [pc, #8]	; (8bf4 <__eeprom_read_word_veneer+0xc>)
    8bec:	4684      	mov	ip, r0
    8bee:	bc01      	pop	{r0}
    8bf0:	4760      	bx	ip
    8bf2:	bf00      	nop
    8bf4:	20100229 	.word	0x20100229

00008bf8 <threadPacketParserDef>:
    8bf8:	0000336d 00000001 00000001 00000400     m3..............

00008c08 <threadFSMProceedDef>:
    8c08:	00000589 00000000 00000001 00000400     ................

00008c18 <threadDUTProceedDef>:
    8c18:	0000042d 00000000 00000001 00000400     -...............

00008c28 <message_def>:
    8c28:	00000004 20000868                       ....h.. 

00008c30 <os_mutex_def_MutexMdbReg>:
    8c30:	2000088c 74697865 00000000 70616548     ... exit....Heap
    8c40:	646e6120 61747320 63206b63 696c6c6f      and stack colli
    8c50:	6e6f6973 0000000a 0000151e 0000150c     sion............
    8c60:	0000152a 00001536 00001536 00001536     *...6...6...6...
    8c70:	00001536 00001536 00001536 00001536     6...6...6...6...
    8c80:	00001536 00001536 00001536 00001524     6...6...6...$...
    8c90:	00001536 00001536 00001536 000014b0     6...6...6.......
    8ca0:	00001536 0000152a 00001536 00001536     6...*...6...6...
    8cb0:	00001530 6c383025 00002058 32302520     0...%08lX .. %02
    8cc0:	00000058 34302520 00000058 38302520     X... %04X... %08
    8cd0:	0000584c                                LX..

00008cd4 <os_maxtaskrun>:
    8cd4:	00000004                                ....

00008cd8 <os_stackinfo>:
    8cd8:	01021000                                ....

00008cdc <os_rrobin>:
    8cdc:	00010005                                ....

00008ce0 <os_tickfreq>:
    8ce0:	04c4b400                                ....

00008ce4 <os_tickus_i>:
    8ce4:	00000050                                         P.

00008ce6 <os_tickus_f>:
	...

00008ce8 <os_trv>:
    8ce8:	0001387f                                .8..

00008cec <os_flags>:
    8cec:	00000001                                ....

00008cf0 <CMSIS_RTOS_API_Version>:
    8cf0:	00010002                                ....

00008cf4 <CMSIS_RTOS_RTX_Version>:
    8cf4:	00040052                                R...

00008cf8 <os_clockrate>:
    8cf8:	000003e8                                ....

00008cfc <os_timernum>:
    8cfc:	00000000                                ....

00008d00 <mp_tcb_size>:
    8d00:	000000dc                                ....

00008d04 <mp_stk_size>:
    8d04:	00003010                                .0..

00008d08 <os_stack_sz>:
    8d08:	00001260                                `...

00008d0c <os_fifo_size>:
    8d0c:	00000010                                ....

00008d10 <os_thread_def_osTimerThread>:
    8d10:	000066f1 00000002 00000001 00000200     .f..............

00008d20 <os_messageQ_def_osTimerMessageQ>:
    8d20:	00000004 20004cf0                       .....L. 

00008d28 <mp_tmr_size>:
    8d28:	00000000                                ....

00008d2c <os_thread_def_main>:
    8d2c:	0000025d 00000000 00000001 00000040     ]...........@...
    8d3c:	0d707261 0000000a                       arp.....

00008d44 <os_mutex_def_readpackMutex>:
    8d44:	2000531c                                .S. 

00008d48 <os_mutex_def_sendpackMutex>:
    8d48:	20005330                                0S. 

00008d4c <crc_table>:
    8d4c:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    8d5c:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    8d6c:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    8d7c:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    8d8c:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    8d9c:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    8dac:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    8dbc:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    8dcc:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    8ddc:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    8dec:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    8dfc:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    8e0c:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    8e1c:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    8e2c:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    8e3c:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    8e4c:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    8e5c:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    8e6c:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    8e7c:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    8e8c:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    8e9c:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    8eac:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    8ebc:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    8ecc:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    8edc:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    8eec:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    8efc:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    8f0c:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    8f1c:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    8f2c:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    8f3c:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    8f4c:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    8f5c:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    8f6c:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    8f7c:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    8f8c:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    8f9c:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    8fac:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    8fbc:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    8fcc:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    8fdc:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    8fec:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    8ffc:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    900c:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    901c:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    902c:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    903c:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    904c:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    905c:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    906c:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    907c:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    908c:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    909c:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    90ac:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    90bc:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    90cc:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    90dc:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    90ec:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    90fc:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    910c:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    911c:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    912c:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    913c:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

0000914c <crc_table_low>:
    914c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    915c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    916c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    917c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    918c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    919c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    91ac:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    91bc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    91cc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    91dc:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    91ec:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    91fc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    920c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    921c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    922c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    923c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

0000924c <crc_table_high>:
    924c:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    925c:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    926c:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    927c:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    928c:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    929c:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    92ac:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    92bc:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    92cc:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    92dc:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    92ec:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    92fc:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    930c:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    931c:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    932c:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    933c:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

0000934c <defBsiParam>:
    934c:	0100000a 78563412 d108bc9a              .....4Vx....

00009358 <device_additional_info>:
    9358:	31554153 6e6f6320 6f727472 72656c6c     SAU1 conrtroller
    9368:	00000000                                ....

0000936c <proc_PDU_table>:
    936c:	00004105 00004105 00004105 00003fc9     .A...A...A...?..
    937c:	00003a3d 00004105 00004105 00004105     =:...A...A...A..
    938c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    939c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    93ac:	00003b8d 000039a5 00004105 00004105     .;...9...A...A..
    93bc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    93cc:	00003dbd 00004105 00004105 00004105     .=...A...A...A..
    93dc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    93ec:	00004105 00004105 00004105 00004105     .A...A...A...A..
    93fc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    940c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    941c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    942c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    943c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    944c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    945c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    946c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    947c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    948c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    949c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    94ac:	00004105 00004105 00004105 00004105     .A...A...A...A..
    94bc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    94cc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    94dc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    94ec:	00004105 00004105 00004105 00004105     .A...A...A...A..
    94fc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    950c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    951c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    952c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    953c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    954c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    955c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    956c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    957c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    958c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    959c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    95ac:	00004105 00004105 00004105 00004105     .A...A...A...A..
    95bc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    95cc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    95dc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    95ec:	00004105 00004105 00004105 00004105     .A...A...A...A..
    95fc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    960c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    961c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    962c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    963c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    964c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    965c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    966c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    967c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    968c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    969c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    96ac:	00004105 00004105 00004105 00004105     .A...A...A...A..
    96bc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    96cc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    96dc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    96ec:	00004105 00004105 00004105 00004105     .A...A...A...A..
    96fc:	00004105 00004105 00004105 00004105     .A...A...A...A..
    970c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    971c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    972c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    973c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    974c:	00004105 00004105 00004105 00004105     .A...A...A...A..
    975c:	00004105 00004105 00004105 00004105     .A...A...A...A..

0000976c <_global_impure_ptr>:
    976c:	20000018                                ... 

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
