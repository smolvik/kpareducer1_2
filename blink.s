
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 55 04 00 00 e5 04 00 00 e5 04 00 00     ... U...........
	...
      2c:	8b 49 00 00 00 00 00 00 00 00 00 00 11 4a 00 00     .I...........J..
      3c:	59 4a 00 00 e5 04 00 00 e5 04 00 00 e5 04 00 00     YJ..............
      4c:	e5 04 00 00 e5 04 00 00 e5 04 00 00 81 10 00 00     ................
      5c:	11 0a 00 00 e5 04 00 00 e5 04 00 00 e5 04 00 00     ................
      6c:	e5 04 00 00 e5 04 00 00 e5 04 00 00 41 02 00 00     ............A...
      7c:	65 02 00 00 e5 04 00 00 e5 04 00 00 31 25 00 00     e...........1%..
      8c:	e5 04 00 00 e5 04 00 00 e5 04 00 00 e5 04 00 00     ................
      9c:	e5 04 00 00 e5 04 00 00 00 00 00 00 00 00 00 00     ................
      ac:	e5 04 00 00 b9 02 00 00 e5 04 00 00 e5 04 00 00     ................
      bc:	e5 04 00 00                                         ....

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
     168:	b580      	push	{r7, lr}
     16a:	b082      	sub	sp, #8
     16c:	af00      	add	r7, sp, #0
     16e:	6078      	str	r0, [r7, #4]
     170:	687b      	ldr	r3, [r7, #4]
     172:	121b      	asrs	r3, r3, #8
     174:	001a      	movs	r2, r3
     176:	4b03      	ldr	r3, [pc, #12]	; (184 <dut_set_speed+0x1c>)
     178:	601a      	str	r2, [r3, #0]
     17a:	46c0      	nop			; (mov r8, r8)
     17c:	46bd      	mov	sp, r7
     17e:	b002      	add	sp, #8
     180:	bd80      	pop	{r7, pc}
     182:	46c0      	nop			; (mov r8, r8)
     184:	2000089c 	.word	0x2000089c

00000188 <dut_set_torque>:
     188:	b580      	push	{r7, lr}
     18a:	b082      	sub	sp, #8
     18c:	af00      	add	r7, sp, #0
     18e:	6078      	str	r0, [r7, #4]
     190:	4b03      	ldr	r3, [pc, #12]	; (1a0 <dut_set_torque+0x18>)
     192:	687a      	ldr	r2, [r7, #4]
     194:	601a      	str	r2, [r3, #0]
     196:	46c0      	nop			; (mov r8, r8)
     198:	46bd      	mov	sp, r7
     19a:	b002      	add	sp, #8
     19c:	bd80      	pop	{r7, pc}
     19e:	46c0      	nop			; (mov r8, r8)
     1a0:	200008a0 	.word	0x200008a0

000001a4 <main>:
     1a4:	b580      	push	{r7, lr}
     1a6:	af00      	add	r7, sp, #0
     1a8:	f001 fe1e 	bl	1de8 <SystemInit>
     1ac:	f000 f9d8 	bl	560 <mdb485_init>
     1b0:	f000 fdf2 	bl	d98 <mdb232_init>
     1b4:	f001 fe4c 	bl	1e50 <RemoteMacInit>
     1b8:	f001 fefa 	bl	1fb0 <EthernetConfig>
     1bc:	f7ff ffbc 	bl	138 <dut_reset_off>
     1c0:	4b15      	ldr	r3, [pc, #84]	; (218 <__UVISION_VERSION+0xf>)
     1c2:	0018      	movs	r0, r3
     1c4:	f006 fa56 	bl	6674 <osMutexCreate>
     1c8:	0002      	movs	r2, r0
     1ca:	4b14      	ldr	r3, [pc, #80]	; (21c <__UVISION_VERSION+0x13>)
     1cc:	601a      	str	r2, [r3, #0]
     1ce:	f005 fc51 	bl	5a74 <osKernelInitialize>
     1d2:	4b13      	ldr	r3, [pc, #76]	; (220 <__GCC_VERSION+0x3>)
     1d4:	2100      	movs	r1, #0
     1d6:	0018      	movs	r0, r3
     1d8:	f006 fd2e 	bl	6c38 <osMessageCreate>
     1dc:	0002      	movs	r2, r0
     1de:	4b11      	ldr	r3, [pc, #68]	; (224 <__GCC_VERSION+0x7>)
     1e0:	601a      	str	r2, [r3, #0]
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <__GCC_VERSION+0xb>)
     1e4:	2100      	movs	r1, #0
     1e6:	0018      	movs	r0, r3
     1e8:	f005 fdd6 	bl	5d98 <osThreadCreate>
     1ec:	0002      	movs	r2, r0
     1ee:	4b0f      	ldr	r3, [pc, #60]	; (22c <__GCC_VERSION+0xf>)
     1f0:	601a      	str	r2, [r3, #0]
     1f2:	4b0f      	ldr	r3, [pc, #60]	; (230 <__GCC_VERSION+0x13>)
     1f4:	2100      	movs	r1, #0
     1f6:	0018      	movs	r0, r3
     1f8:	f005 fdce 	bl	5d98 <osThreadCreate>
     1fc:	0002      	movs	r2, r0
     1fe:	4b0d      	ldr	r3, [pc, #52]	; (234 <__GCC_VERSION+0x17>)
     200:	601a      	str	r2, [r3, #0]
     202:	4b0d      	ldr	r3, [pc, #52]	; (238 <__GCC_VERSION+0x1b>)
     204:	2100      	movs	r1, #0
     206:	0018      	movs	r0, r3
     208:	f005 fdc6 	bl	5d98 <osThreadCreate>
     20c:	0002      	movs	r2, r0
     20e:	4b0b      	ldr	r3, [pc, #44]	; (23c <__GCC_VERSION+0x1f>)
     210:	601a      	str	r2, [r3, #0]
     212:	f005 fccb 	bl	5bac <osKernelStart>
     216:	e7fe      	b.n	216 <__UVISION_VERSION+0xd>
     218:	00008800 	.word	0x00008800
     21c:	20000888 	.word	0x20000888
     220:	000087f8 	.word	0x000087f8
     224:	20000864 	.word	0x20000864
     228:	000087c8 	.word	0x000087c8
     22c:	20000858 	.word	0x20000858
     230:	000087d8 	.word	0x000087d8
     234:	2000085c 	.word	0x2000085c
     238:	000087e8 	.word	0x000087e8
     23c:	20000860 	.word	0x20000860

00000240 <TIMER1_Handler>:
     240:	b580      	push	{r7, lr}
     242:	af00      	add	r7, sp, #0
     244:	4b05      	ldr	r3, [pc, #20]	; (25c <TIMER1_Handler+0x1c>)
     246:	2200      	movs	r2, #0
     248:	655a      	str	r2, [r3, #84]	; 0x54
     24a:	4b05      	ldr	r3, [pc, #20]	; (260 <TIMER1_Handler+0x20>)
     24c:	681b      	ldr	r3, [r3, #0]
     24e:	2101      	movs	r1, #1
     250:	0018      	movs	r0, r3
     252:	f006 f953 	bl	64fc <osSignalSet>
     256:	46c0      	nop			; (mov r8, r8)
     258:	46bd      	mov	sp, r7
     25a:	bd80      	pop	{r7, pc}
     25c:	40070000 	.word	0x40070000
     260:	20000860 	.word	0x20000860

00000264 <TIMER2_Handler>:
     264:	b580      	push	{r7, lr}
     266:	af00      	add	r7, sp, #0
     268:	4b0e      	ldr	r3, [pc, #56]	; (2a4 <TIMER2_Handler+0x40>)
     26a:	2200      	movs	r2, #0
     26c:	655a      	str	r2, [r3, #84]	; 0x54
     26e:	4b0e      	ldr	r3, [pc, #56]	; (2a8 <TIMER2_Handler+0x44>)
     270:	681a      	ldr	r2, [r3, #0]
     272:	4b0e      	ldr	r3, [pc, #56]	; (2ac <TIMER2_Handler+0x48>)
     274:	681b      	ldr	r3, [r3, #0]
     276:	18d3      	adds	r3, r2, r3
     278:	041b      	lsls	r3, r3, #16
     27a:	0c1a      	lsrs	r2, r3, #16
     27c:	4b0a      	ldr	r3, [pc, #40]	; (2a8 <TIMER2_Handler+0x44>)
     27e:	601a      	str	r2, [r3, #0]
     280:	4b09      	ldr	r3, [pc, #36]	; (2a8 <TIMER2_Handler+0x44>)
     282:	681b      	ldr	r3, [r3, #0]
     284:	4a0a      	ldr	r2, [pc, #40]	; (2b0 <TIMER2_Handler+0x4c>)
     286:	4293      	cmp	r3, r2
     288:	d904      	bls.n	294 <TIMER2_Handler+0x30>
     28a:	4b0a      	ldr	r3, [pc, #40]	; (2b4 <TIMER2_Handler+0x50>)
     28c:	2280      	movs	r2, #128	; 0x80
     28e:	0152      	lsls	r2, r2, #5
     290:	621a      	str	r2, [r3, #32]
     292:	e003      	b.n	29c <TIMER2_Handler+0x38>
     294:	4b07      	ldr	r3, [pc, #28]	; (2b4 <TIMER2_Handler+0x50>)
     296:	2280      	movs	r2, #128	; 0x80
     298:	0152      	lsls	r2, r2, #5
     29a:	625a      	str	r2, [r3, #36]	; 0x24
     29c:	46c0      	nop			; (mov r8, r8)
     29e:	46bd      	mov	sp, r7
     2a0:	bd80      	pop	{r7, pc}
     2a2:	46c0      	nop			; (mov r8, r8)
     2a4:	40078000 	.word	0x40078000
     2a8:	200008a4 	.word	0x200008a4
     2ac:	2000089c 	.word	0x2000089c
     2b0:	00007530 	.word	0x00007530
     2b4:	400b0000 	.word	0x400b0000

000002b8 <EXT_INT1_Handler>:
     2b8:	b580      	push	{r7, lr}
     2ba:	af00      	add	r7, sp, #0
     2bc:	201c      	movs	r0, #28
     2be:	f7ff ff1f 	bl	100 <__NVIC_ClearPendingIRQ>
     2c2:	201c      	movs	r0, #28
     2c4:	f7ff fefc 	bl	c0 <__NVIC_DisableIRQ>
     2c8:	4b03      	ldr	r3, [pc, #12]	; (2d8 <EXT_INT1_Handler+0x20>)
     2ca:	681b      	ldr	r3, [r3, #0]
     2cc:	1c5a      	adds	r2, r3, #1
     2ce:	4b02      	ldr	r3, [pc, #8]	; (2d8 <EXT_INT1_Handler+0x20>)
     2d0:	601a      	str	r2, [r3, #0]
     2d2:	46c0      	nop			; (mov r8, r8)
     2d4:	46bd      	mov	sp, r7
     2d6:	bd80      	pop	{r7, pc}
     2d8:	200008a8 	.word	0x200008a8

000002dc <threadDUTProceed>:
     2dc:	b580      	push	{r7, lr}
     2de:	b092      	sub	sp, #72	; 0x48
     2e0:	af00      	add	r7, sp, #0
     2e2:	6078      	str	r0, [r7, #4]
     2e4:	2300      	movs	r3, #0
     2e6:	647b      	str	r3, [r7, #68]	; 0x44
     2e8:	2318      	movs	r3, #24
     2ea:	18fb      	adds	r3, r7, r3
     2ec:	2200      	movs	r2, #0
     2ee:	601a      	str	r2, [r3, #0]
     2f0:	2318      	movs	r3, #24
     2f2:	18fb      	adds	r3, r7, r3
     2f4:	2200      	movs	r2, #0
     2f6:	605a      	str	r2, [r3, #4]
     2f8:	2318      	movs	r3, #24
     2fa:	18fb      	adds	r3, r7, r3
     2fc:	2200      	movs	r2, #0
     2fe:	609a      	str	r2, [r3, #8]
     300:	2318      	movs	r3, #24
     302:	18fb      	adds	r3, r7, r3
     304:	2200      	movs	r2, #0
     306:	60da      	str	r2, [r3, #12]
     308:	2318      	movs	r3, #24
     30a:	18fb      	adds	r3, r7, r3
     30c:	2200      	movs	r2, #0
     30e:	611a      	str	r2, [r3, #16]
     310:	2318      	movs	r3, #24
     312:	18fb      	adds	r3, r7, r3
     314:	2200      	movs	r2, #0
     316:	615a      	str	r2, [r3, #20]
     318:	2318      	movs	r3, #24
     31a:	18fb      	adds	r3, r7, r3
     31c:	2200      	movs	r2, #0
     31e:	619a      	str	r2, [r3, #24]
     320:	2318      	movs	r3, #24
     322:	18fb      	adds	r3, r7, r3
     324:	2200      	movs	r2, #0
     326:	61da      	str	r2, [r3, #28]
     328:	230c      	movs	r3, #12
     32a:	18f8      	adds	r0, r7, r3
     32c:	2301      	movs	r3, #1
     32e:	425b      	negs	r3, r3
     330:	001a      	movs	r2, r3
     332:	2100      	movs	r1, #0
     334:	f006 f910 	bl	6558 <osSignalWait>
     338:	230c      	movs	r3, #12
     33a:	18fb      	adds	r3, r7, r3
     33c:	681b      	ldr	r3, [r3, #0]
     33e:	2b08      	cmp	r3, #8
     340:	d1f2      	bne.n	328 <threadDUTProceed+0x4c>
     342:	230c      	movs	r3, #12
     344:	18fb      	adds	r3, r7, r3
     346:	685b      	ldr	r3, [r3, #4]
     348:	2b02      	cmp	r3, #2
     34a:	d02d      	beq.n	3a8 <threadDUTProceed+0xcc>
     34c:	2b08      	cmp	r3, #8
     34e:	d037      	beq.n	3c0 <threadDUTProceed+0xe4>
     350:	2b01      	cmp	r3, #1
     352:	d159      	bne.n	408 <_stack_size+0x8>
     354:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     356:	2b01      	cmp	r3, #1
     358:	d919      	bls.n	38e <threadDUTProceed+0xb2>
     35a:	4b2c      	ldr	r3, [pc, #176]	; (40c <_stack_size+0xc>)
     35c:	681a      	ldr	r2, [r3, #0]
     35e:	2318      	movs	r3, #24
     360:	18fb      	adds	r3, r7, r3
     362:	605a      	str	r2, [r3, #4]
     364:	f003 fe80 	bl	4068 <fsm_get_cyccnt>
     368:	0002      	movs	r2, r0
     36a:	2318      	movs	r3, #24
     36c:	18fb      	adds	r3, r7, r3
     36e:	619a      	str	r2, [r3, #24]
     370:	f003 fe70 	bl	4054 <fsm_get_mode>
     374:	0003      	movs	r3, r0
     376:	001a      	movs	r2, r3
     378:	2318      	movs	r3, #24
     37a:	18fb      	adds	r3, r7, r3
     37c:	61da      	str	r2, [r3, #28]
     37e:	2318      	movs	r3, #24
     380:	18fb      	adds	r3, r7, r3
     382:	2120      	movs	r1, #32
     384:	0018      	movs	r0, r3
     386:	f003 f8b3 	bl	34f0 <mdb_fifo_write>
     38a:	2300      	movs	r3, #0
     38c:	647b      	str	r3, [r7, #68]	; 0x44
     38e:	2301      	movs	r3, #1
     390:	647b      	str	r3, [r7, #68]	; 0x44
     392:	2204      	movs	r2, #4
     394:	2100      	movs	r1, #0
     396:	2001      	movs	r0, #1
     398:	f000 fd58 	bl	e4c <mdb232_read_inputregs>
     39c:	2202      	movs	r2, #2
     39e:	2100      	movs	r1, #0
     3a0:	2010      	movs	r0, #16
     3a2:	f000 fa65 	bl	870 <mdb485_read_inputregs>
     3a6:	e02f      	b.n	408 <_stack_size+0x8>
     3a8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3aa:	2202      	movs	r2, #2
     3ac:	4313      	orrs	r3, r2
     3ae:	647b      	str	r3, [r7, #68]	; 0x44
     3b0:	f000 fe10 	bl	fd4 <mdb232_bikm_get_torque>
     3b4:	0003      	movs	r3, r0
     3b6:	001a      	movs	r2, r3
     3b8:	2318      	movs	r3, #24
     3ba:	18fb      	adds	r3, r7, r3
     3bc:	605a      	str	r2, [r3, #4]
     3be:	e023      	b.n	408 <_stack_size+0x8>
     3c0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3c2:	2204      	movs	r2, #4
     3c4:	4313      	orrs	r3, r2
     3c6:	647b      	str	r3, [r7, #68]	; 0x44
     3c8:	f000 fac8 	bl	95c <mdb485_get_crc>
     3cc:	1e03      	subs	r3, r0, #0
     3ce:	d11a      	bne.n	406 <_stack_size+0x6>
     3d0:	f000 fab0 	bl	934 <mdb485_get_func>
     3d4:	0003      	movs	r3, r0
     3d6:	643b      	str	r3, [r7, #64]	; 0x40
     3d8:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     3da:	2b04      	cmp	r3, #4
     3dc:	d113      	bne.n	406 <_stack_size+0x6>
     3de:	f000 fadb 	bl	998 <mdb485_si30_get_counter>
     3e2:	0003      	movs	r3, r0
     3e4:	63fb      	str	r3, [r7, #60]	; 0x3c
     3e6:	2318      	movs	r3, #24
     3e8:	18fb      	adds	r3, r7, r3
     3ea:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     3ec:	601a      	str	r2, [r3, #0]
     3ee:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     3f0:	021b      	lsls	r3, r3, #8
     3f2:	2204      	movs	r2, #4
     3f4:	4313      	orrs	r3, r2
     3f6:	63bb      	str	r3, [r7, #56]	; 0x38
     3f8:	4b05      	ldr	r3, [pc, #20]	; (410 <_stack_size+0x10>)
     3fa:	681b      	ldr	r3, [r3, #0]
     3fc:	6bb9      	ldr	r1, [r7, #56]	; 0x38
     3fe:	2200      	movs	r2, #0
     400:	0018      	movs	r0, r3
     402:	f006 fc45 	bl	6c90 <osMessagePut>
     406:	46c0      	nop			; (mov r8, r8)
     408:	e78e      	b.n	328 <threadDUTProceed+0x4c>
     40a:	46c0      	nop			; (mov r8, r8)
     40c:	200008a0 	.word	0x200008a0
     410:	20000864 	.word	0x20000864

00000414 <threadFSMProceed>:
     414:	b580      	push	{r7, lr}
     416:	b086      	sub	sp, #24
     418:	af00      	add	r7, sp, #0
     41a:	6078      	str	r0, [r7, #4]
     41c:	4b0b      	ldr	r3, [pc, #44]	; (44c <threadFSMProceed+0x38>)
     41e:	6819      	ldr	r1, [r3, #0]
     420:	2308      	movs	r3, #8
     422:	18f8      	adds	r0, r7, r3
     424:	2301      	movs	r3, #1
     426:	425b      	negs	r3, r3
     428:	001a      	movs	r2, r3
     42a:	f006 fc55 	bl	6cd8 <osMessageGet>
     42e:	2308      	movs	r3, #8
     430:	18fb      	adds	r3, r7, r3
     432:	681b      	ldr	r3, [r3, #0]
     434:	2b10      	cmp	r3, #16
     436:	d1f1      	bne.n	41c <threadFSMProceed+0x8>
     438:	2308      	movs	r3, #8
     43a:	18fb      	adds	r3, r7, r3
     43c:	685b      	ldr	r3, [r3, #4]
     43e:	617b      	str	r3, [r7, #20]
     440:	4b03      	ldr	r3, [pc, #12]	; (450 <threadFSMProceed+0x3c>)
     442:	681b      	ldr	r3, [r3, #0]
     444:	697a      	ldr	r2, [r7, #20]
     446:	0010      	movs	r0, r2
     448:	4798      	blx	r3
     44a:	e7e7      	b.n	41c <threadFSMProceed+0x8>
     44c:	20000864 	.word	0x20000864
     450:	20000010 	.word	0x20000010

00000454 <handler_reset>:
     454:	b580      	push	{r7, lr}
     456:	b082      	sub	sp, #8
     458:	af00      	add	r7, sp, #0
     45a:	4b1a      	ldr	r3, [pc, #104]	; (4c4 <handler_reset+0x70>)
     45c:	607b      	str	r3, [r7, #4]
     45e:	4b1a      	ldr	r3, [pc, #104]	; (4c8 <handler_reset+0x74>)
     460:	603b      	str	r3, [r7, #0]
     462:	e007      	b.n	474 <handler_reset+0x20>
     464:	683b      	ldr	r3, [r7, #0]
     466:	1d1a      	adds	r2, r3, #4
     468:	603a      	str	r2, [r7, #0]
     46a:	687a      	ldr	r2, [r7, #4]
     46c:	1d11      	adds	r1, r2, #4
     46e:	6079      	str	r1, [r7, #4]
     470:	6812      	ldr	r2, [r2, #0]
     472:	601a      	str	r2, [r3, #0]
     474:	683a      	ldr	r2, [r7, #0]
     476:	4b15      	ldr	r3, [pc, #84]	; (4cc <handler_reset+0x78>)
     478:	429a      	cmp	r2, r3
     47a:	d3f3      	bcc.n	464 <handler_reset+0x10>
     47c:	4b14      	ldr	r3, [pc, #80]	; (4d0 <handler_reset+0x7c>)
     47e:	607b      	str	r3, [r7, #4]
     480:	4b14      	ldr	r3, [pc, #80]	; (4d4 <handler_reset+0x80>)
     482:	603b      	str	r3, [r7, #0]
     484:	e007      	b.n	496 <handler_reset+0x42>
     486:	683b      	ldr	r3, [r7, #0]
     488:	1d1a      	adds	r2, r3, #4
     48a:	603a      	str	r2, [r7, #0]
     48c:	687a      	ldr	r2, [r7, #4]
     48e:	1d11      	adds	r1, r2, #4
     490:	6079      	str	r1, [r7, #4]
     492:	6812      	ldr	r2, [r2, #0]
     494:	601a      	str	r2, [r3, #0]
     496:	683a      	ldr	r2, [r7, #0]
     498:	4b0f      	ldr	r3, [pc, #60]	; (4d8 <handler_reset+0x84>)
     49a:	429a      	cmp	r2, r3
     49c:	d3f3      	bcc.n	486 <handler_reset+0x32>
     49e:	4b0f      	ldr	r3, [pc, #60]	; (4dc <handler_reset+0x88>)
     4a0:	603b      	str	r3, [r7, #0]
     4a2:	e004      	b.n	4ae <handler_reset+0x5a>
     4a4:	683b      	ldr	r3, [r7, #0]
     4a6:	1d1a      	adds	r2, r3, #4
     4a8:	603a      	str	r2, [r7, #0]
     4aa:	2200      	movs	r2, #0
     4ac:	601a      	str	r2, [r3, #0]
     4ae:	683a      	ldr	r2, [r7, #0]
     4b0:	4b0b      	ldr	r3, [pc, #44]	; (4e0 <handler_reset+0x8c>)
     4b2:	429a      	cmp	r2, r3
     4b4:	d3f6      	bcc.n	4a4 <handler_reset+0x50>
     4b6:	f7ff fe75 	bl	1a4 <main>
     4ba:	46c0      	nop			; (mov r8, r8)
     4bc:	46bd      	mov	sp, r7
     4be:	b002      	add	sp, #8
     4c0:	bd80      	pop	{r7, pc}
     4c2:	46c0      	nop			; (mov r8, r8)
     4c4:	00009348 	.word	0x00009348
     4c8:	20000000 	.word	0x20000000
     4cc:	20000858 	.word	0x20000858
     4d0:	00009ba0 	.word	0x00009ba0
     4d4:	20100000 	.word	0x20100000
     4d8:	201002a0 	.word	0x201002a0
     4dc:	20000858 	.word	0x20000858
     4e0:	200060f8 	.word	0x200060f8

000004e4 <default_handler>:
     4e4:	b580      	push	{r7, lr}
     4e6:	af00      	add	r7, sp, #0
     4e8:	e7fe      	b.n	4e8 <default_handler+0x4>
     4ea:	46c0      	nop			; (mov r8, r8)

000004ec <__NVIC_EnableIRQ>:
     4ec:	b580      	push	{r7, lr}
     4ee:	b082      	sub	sp, #8
     4f0:	af00      	add	r7, sp, #0
     4f2:	0002      	movs	r2, r0
     4f4:	1dfb      	adds	r3, r7, #7
     4f6:	701a      	strb	r2, [r3, #0]
     4f8:	1dfb      	adds	r3, r7, #7
     4fa:	781b      	ldrb	r3, [r3, #0]
     4fc:	2b7f      	cmp	r3, #127	; 0x7f
     4fe:	d809      	bhi.n	514 <__NVIC_EnableIRQ+0x28>
     500:	4b06      	ldr	r3, [pc, #24]	; (51c <__NVIC_EnableIRQ+0x30>)
     502:	1dfa      	adds	r2, r7, #7
     504:	7812      	ldrb	r2, [r2, #0]
     506:	0011      	movs	r1, r2
     508:	221f      	movs	r2, #31
     50a:	400a      	ands	r2, r1
     50c:	2101      	movs	r1, #1
     50e:	4091      	lsls	r1, r2
     510:	000a      	movs	r2, r1
     512:	601a      	str	r2, [r3, #0]
     514:	46c0      	nop			; (mov r8, r8)
     516:	46bd      	mov	sp, r7
     518:	b002      	add	sp, #8
     51a:	bd80      	pop	{r7, pc}
     51c:	e000e100 	.word	0xe000e100

00000520 <__NVIC_DisableIRQ>:
     520:	b580      	push	{r7, lr}
     522:	b082      	sub	sp, #8
     524:	af00      	add	r7, sp, #0
     526:	0002      	movs	r2, r0
     528:	1dfb      	adds	r3, r7, #7
     52a:	701a      	strb	r2, [r3, #0]
     52c:	1dfb      	adds	r3, r7, #7
     52e:	781b      	ldrb	r3, [r3, #0]
     530:	2b7f      	cmp	r3, #127	; 0x7f
     532:	d80e      	bhi.n	552 <__NVIC_DisableIRQ+0x32>
     534:	4909      	ldr	r1, [pc, #36]	; (55c <__NVIC_DisableIRQ+0x3c>)
     536:	1dfb      	adds	r3, r7, #7
     538:	781b      	ldrb	r3, [r3, #0]
     53a:	001a      	movs	r2, r3
     53c:	231f      	movs	r3, #31
     53e:	4013      	ands	r3, r2
     540:	2201      	movs	r2, #1
     542:	409a      	lsls	r2, r3
     544:	0013      	movs	r3, r2
     546:	2280      	movs	r2, #128	; 0x80
     548:	508b      	str	r3, [r1, r2]
     54a:	f3bf 8f4f 	dsb	sy
     54e:	f3bf 8f6f 	isb	sy
     552:	46c0      	nop			; (mov r8, r8)
     554:	46bd      	mov	sp, r7
     556:	b002      	add	sp, #8
     558:	bd80      	pop	{r7, pc}
     55a:	46c0      	nop			; (mov r8, r8)
     55c:	e000e100 	.word	0xe000e100

00000560 <mdb485_init>:
     560:	b580      	push	{r7, lr}
     562:	af00      	add	r7, sp, #0
     564:	4b14      	ldr	r3, [pc, #80]	; (5b8 <mdb485_init+0x58>)
     566:	2234      	movs	r2, #52	; 0x34
     568:	625a      	str	r2, [r3, #36]	; 0x24
     56a:	4b13      	ldr	r3, [pc, #76]	; (5b8 <mdb485_init+0x58>)
     56c:	2205      	movs	r2, #5
     56e:	629a      	str	r2, [r3, #40]	; 0x28
     570:	4b11      	ldr	r3, [pc, #68]	; (5b8 <mdb485_init+0x58>)
     572:	4a11      	ldr	r2, [pc, #68]	; (5b8 <mdb485_init+0x58>)
     574:	6b52      	ldr	r2, [r2, #52]	; 0x34
     576:	213f      	movs	r1, #63	; 0x3f
     578:	438a      	bics	r2, r1
     57a:	635a      	str	r2, [r3, #52]	; 0x34
     57c:	4b0e      	ldr	r3, [pc, #56]	; (5b8 <mdb485_init+0x58>)
     57e:	4a0e      	ldr	r2, [pc, #56]	; (5b8 <mdb485_init+0x58>)
     580:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     582:	2110      	movs	r1, #16
     584:	430a      	orrs	r2, r1
     586:	62da      	str	r2, [r3, #44]	; 0x2c
     588:	4b0b      	ldr	r3, [pc, #44]	; (5b8 <mdb485_init+0x58>)
     58a:	4a0b      	ldr	r2, [pc, #44]	; (5b8 <mdb485_init+0x58>)
     58c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     58e:	2160      	movs	r1, #96	; 0x60
     590:	430a      	orrs	r2, r1
     592:	62da      	str	r2, [r3, #44]	; 0x2c
     594:	4b08      	ldr	r3, [pc, #32]	; (5b8 <mdb485_init+0x58>)
     596:	4a08      	ldr	r2, [pc, #32]	; (5b8 <mdb485_init+0x58>)
     598:	6b12      	ldr	r2, [r2, #48]	; 0x30
     59a:	4908      	ldr	r1, [pc, #32]	; (5bc <mdb485_init+0x5c>)
     59c:	430a      	orrs	r2, r1
     59e:	631a      	str	r2, [r3, #48]	; 0x30
     5a0:	4b05      	ldr	r3, [pc, #20]	; (5b8 <mdb485_init+0x58>)
     5a2:	4a05      	ldr	r2, [pc, #20]	; (5b8 <mdb485_init+0x58>)
     5a4:	6b92      	ldr	r2, [r2, #56]	; 0x38
     5a6:	2140      	movs	r1, #64	; 0x40
     5a8:	430a      	orrs	r2, r1
     5aa:	639a      	str	r2, [r3, #56]	; 0x38
     5ac:	2007      	movs	r0, #7
     5ae:	f7ff ff9d 	bl	4ec <__NVIC_EnableIRQ>
     5b2:	46c0      	nop			; (mov r8, r8)
     5b4:	46bd      	mov	sp, r7
     5b6:	bd80      	pop	{r7, pc}
     5b8:	40038000 	.word	0x40038000
     5bc:	00000301 	.word	0x00000301

000005c0 <mdb485_send>:
     5c0:	b580      	push	{r7, lr}
     5c2:	b084      	sub	sp, #16
     5c4:	af00      	add	r7, sp, #0
     5c6:	6078      	str	r0, [r7, #4]
     5c8:	6039      	str	r1, [r7, #0]
     5ca:	4b17      	ldr	r3, [pc, #92]	; (628 <mdb485_send+0x68>)
     5cc:	4a16      	ldr	r2, [pc, #88]	; (628 <mdb485_send+0x68>)
     5ce:	6812      	ldr	r2, [r2, #0]
     5d0:	2180      	movs	r1, #128	; 0x80
     5d2:	0209      	lsls	r1, r1, #8
     5d4:	430a      	orrs	r2, r1
     5d6:	601a      	str	r2, [r3, #0]
     5d8:	2300      	movs	r3, #0
     5da:	60fb      	str	r3, [r7, #12]
     5dc:	e00e      	b.n	5fc <mdb485_send+0x3c>
     5de:	46c0      	nop			; (mov r8, r8)
     5e0:	4b12      	ldr	r3, [pc, #72]	; (62c <mdb485_send+0x6c>)
     5e2:	699b      	ldr	r3, [r3, #24]
     5e4:	2220      	movs	r2, #32
     5e6:	4013      	ands	r3, r2
     5e8:	d1fa      	bne.n	5e0 <mdb485_send+0x20>
     5ea:	4a10      	ldr	r2, [pc, #64]	; (62c <mdb485_send+0x6c>)
     5ec:	687b      	ldr	r3, [r7, #4]
     5ee:	1c59      	adds	r1, r3, #1
     5f0:	6079      	str	r1, [r7, #4]
     5f2:	781b      	ldrb	r3, [r3, #0]
     5f4:	6013      	str	r3, [r2, #0]
     5f6:	68fb      	ldr	r3, [r7, #12]
     5f8:	3301      	adds	r3, #1
     5fa:	60fb      	str	r3, [r7, #12]
     5fc:	68fa      	ldr	r2, [r7, #12]
     5fe:	683b      	ldr	r3, [r7, #0]
     600:	429a      	cmp	r2, r3
     602:	dbec      	blt.n	5de <mdb485_send+0x1e>
     604:	46c0      	nop			; (mov r8, r8)
     606:	4b09      	ldr	r3, [pc, #36]	; (62c <mdb485_send+0x6c>)
     608:	699b      	ldr	r3, [r3, #24]
     60a:	2208      	movs	r2, #8
     60c:	4013      	ands	r3, r2
     60e:	d1fa      	bne.n	606 <mdb485_send+0x46>
     610:	4b05      	ldr	r3, [pc, #20]	; (628 <mdb485_send+0x68>)
     612:	4a05      	ldr	r2, [pc, #20]	; (628 <mdb485_send+0x68>)
     614:	6812      	ldr	r2, [r2, #0]
     616:	4906      	ldr	r1, [pc, #24]	; (630 <mdb485_send+0x70>)
     618:	400a      	ands	r2, r1
     61a:	601a      	str	r2, [r3, #0]
     61c:	683b      	ldr	r3, [r7, #0]
     61e:	0018      	movs	r0, r3
     620:	46bd      	mov	sp, r7
     622:	b004      	add	sp, #16
     624:	bd80      	pop	{r7, pc}
     626:	46c0      	nop			; (mov r8, r8)
     628:	400c0000 	.word	0x400c0000
     62c:	40038000 	.word	0x40038000
     630:	ffff7fff 	.word	0xffff7fff

00000634 <mdb485_putch>:
     634:	b580      	push	{r7, lr}
     636:	b082      	sub	sp, #8
     638:	af00      	add	r7, sp, #0
     63a:	0002      	movs	r2, r0
     63c:	1dfb      	adds	r3, r7, #7
     63e:	701a      	strb	r2, [r3, #0]
     640:	46c0      	nop			; (mov r8, r8)
     642:	4b06      	ldr	r3, [pc, #24]	; (65c <mdb485_putch+0x28>)
     644:	699b      	ldr	r3, [r3, #24]
     646:	2220      	movs	r2, #32
     648:	4013      	ands	r3, r2
     64a:	d1fa      	bne.n	642 <mdb485_putch+0xe>
     64c:	4b03      	ldr	r3, [pc, #12]	; (65c <mdb485_putch+0x28>)
     64e:	1dfa      	adds	r2, r7, #7
     650:	7812      	ldrb	r2, [r2, #0]
     652:	601a      	str	r2, [r3, #0]
     654:	46c0      	nop			; (mov r8, r8)
     656:	46bd      	mov	sp, r7
     658:	b002      	add	sp, #8
     65a:	bd80      	pop	{r7, pc}
     65c:	40038000 	.word	0x40038000

00000660 <mdb485_writeregs>:
     660:	b590      	push	{r4, r7, lr}
     662:	b089      	sub	sp, #36	; 0x24
     664:	af00      	add	r7, sp, #0
     666:	0004      	movs	r4, r0
     668:	0008      	movs	r0, r1
     66a:	0011      	movs	r1, r2
     66c:	607b      	str	r3, [r7, #4]
     66e:	230f      	movs	r3, #15
     670:	18fb      	adds	r3, r7, r3
     672:	1c22      	adds	r2, r4, #0
     674:	701a      	strb	r2, [r3, #0]
     676:	230c      	movs	r3, #12
     678:	18fb      	adds	r3, r7, r3
     67a:	1c02      	adds	r2, r0, #0
     67c:	801a      	strh	r2, [r3, #0]
     67e:	230a      	movs	r3, #10
     680:	18fb      	adds	r3, r7, r3
     682:	1c0a      	adds	r2, r1, #0
     684:	801a      	strh	r2, [r3, #0]
     686:	4b48      	ldr	r3, [pc, #288]	; (7a8 <mdb485_writeregs+0x148>)
     688:	61bb      	str	r3, [r7, #24]
     68a:	230a      	movs	r3, #10
     68c:	18fb      	adds	r3, r7, r3
     68e:	881b      	ldrh	r3, [r3, #0]
     690:	005b      	lsls	r3, r3, #1
     692:	617b      	str	r3, [r7, #20]
     694:	69bb      	ldr	r3, [r7, #24]
     696:	1c5a      	adds	r2, r3, #1
     698:	61ba      	str	r2, [r7, #24]
     69a:	220f      	movs	r2, #15
     69c:	18ba      	adds	r2, r7, r2
     69e:	7812      	ldrb	r2, [r2, #0]
     6a0:	701a      	strb	r2, [r3, #0]
     6a2:	69bb      	ldr	r3, [r7, #24]
     6a4:	1c5a      	adds	r2, r3, #1
     6a6:	61ba      	str	r2, [r7, #24]
     6a8:	2210      	movs	r2, #16
     6aa:	701a      	strb	r2, [r3, #0]
     6ac:	69bb      	ldr	r3, [r7, #24]
     6ae:	1c5a      	adds	r2, r3, #1
     6b0:	61ba      	str	r2, [r7, #24]
     6b2:	220c      	movs	r2, #12
     6b4:	18ba      	adds	r2, r7, r2
     6b6:	8812      	ldrh	r2, [r2, #0]
     6b8:	0a12      	lsrs	r2, r2, #8
     6ba:	b292      	uxth	r2, r2
     6bc:	b2d2      	uxtb	r2, r2
     6be:	701a      	strb	r2, [r3, #0]
     6c0:	69bb      	ldr	r3, [r7, #24]
     6c2:	1c5a      	adds	r2, r3, #1
     6c4:	61ba      	str	r2, [r7, #24]
     6c6:	220c      	movs	r2, #12
     6c8:	18ba      	adds	r2, r7, r2
     6ca:	8812      	ldrh	r2, [r2, #0]
     6cc:	b2d2      	uxtb	r2, r2
     6ce:	701a      	strb	r2, [r3, #0]
     6d0:	69bb      	ldr	r3, [r7, #24]
     6d2:	1c5a      	adds	r2, r3, #1
     6d4:	61ba      	str	r2, [r7, #24]
     6d6:	220a      	movs	r2, #10
     6d8:	18ba      	adds	r2, r7, r2
     6da:	8812      	ldrh	r2, [r2, #0]
     6dc:	0a12      	lsrs	r2, r2, #8
     6de:	b292      	uxth	r2, r2
     6e0:	b2d2      	uxtb	r2, r2
     6e2:	701a      	strb	r2, [r3, #0]
     6e4:	69bb      	ldr	r3, [r7, #24]
     6e6:	1c5a      	adds	r2, r3, #1
     6e8:	61ba      	str	r2, [r7, #24]
     6ea:	220a      	movs	r2, #10
     6ec:	18ba      	adds	r2, r7, r2
     6ee:	8812      	ldrh	r2, [r2, #0]
     6f0:	b2d2      	uxtb	r2, r2
     6f2:	701a      	strb	r2, [r3, #0]
     6f4:	69bb      	ldr	r3, [r7, #24]
     6f6:	1c5a      	adds	r2, r3, #1
     6f8:	61ba      	str	r2, [r7, #24]
     6fa:	697a      	ldr	r2, [r7, #20]
     6fc:	b2d2      	uxtb	r2, r2
     6fe:	701a      	strb	r2, [r3, #0]
     700:	697b      	ldr	r3, [r7, #20]
     702:	3307      	adds	r3, #7
     704:	2b10      	cmp	r3, #16
     706:	dc4a      	bgt.n	79e <mdb485_writeregs+0x13e>
     708:	2300      	movs	r3, #0
     70a:	61fb      	str	r3, [r7, #28]
     70c:	e01b      	b.n	746 <mdb485_writeregs+0xe6>
     70e:	687b      	ldr	r3, [r7, #4]
     710:	1c9a      	adds	r2, r3, #2
     712:	607a      	str	r2, [r7, #4]
     714:	2212      	movs	r2, #18
     716:	18ba      	adds	r2, r7, r2
     718:	881b      	ldrh	r3, [r3, #0]
     71a:	8013      	strh	r3, [r2, #0]
     71c:	69bb      	ldr	r3, [r7, #24]
     71e:	1c5a      	adds	r2, r3, #1
     720:	61ba      	str	r2, [r7, #24]
     722:	2212      	movs	r2, #18
     724:	18ba      	adds	r2, r7, r2
     726:	8812      	ldrh	r2, [r2, #0]
     728:	0a12      	lsrs	r2, r2, #8
     72a:	b292      	uxth	r2, r2
     72c:	b2d2      	uxtb	r2, r2
     72e:	701a      	strb	r2, [r3, #0]
     730:	69bb      	ldr	r3, [r7, #24]
     732:	1c5a      	adds	r2, r3, #1
     734:	61ba      	str	r2, [r7, #24]
     736:	2212      	movs	r2, #18
     738:	18ba      	adds	r2, r7, r2
     73a:	8812      	ldrh	r2, [r2, #0]
     73c:	b2d2      	uxtb	r2, r2
     73e:	701a      	strb	r2, [r3, #0]
     740:	69fb      	ldr	r3, [r7, #28]
     742:	3301      	adds	r3, #1
     744:	61fb      	str	r3, [r7, #28]
     746:	230a      	movs	r3, #10
     748:	18fb      	adds	r3, r7, r3
     74a:	881a      	ldrh	r2, [r3, #0]
     74c:	69fb      	ldr	r3, [r7, #28]
     74e:	429a      	cmp	r2, r3
     750:	dcdd      	bgt.n	70e <mdb485_writeregs+0xae>
     752:	697b      	ldr	r3, [r7, #20]
     754:	1dda      	adds	r2, r3, #7
     756:	2310      	movs	r3, #16
     758:	18fc      	adds	r4, r7, r3
     75a:	4b13      	ldr	r3, [pc, #76]	; (7a8 <mdb485_writeregs+0x148>)
     75c:	0011      	movs	r1, r2
     75e:	0018      	movs	r0, r3
     760:	f002 fca6 	bl	30b0 <crc16>
     764:	0003      	movs	r3, r0
     766:	8023      	strh	r3, [r4, #0]
     768:	69bb      	ldr	r3, [r7, #24]
     76a:	1c5a      	adds	r2, r3, #1
     76c:	61ba      	str	r2, [r7, #24]
     76e:	2210      	movs	r2, #16
     770:	18ba      	adds	r2, r7, r2
     772:	8812      	ldrh	r2, [r2, #0]
     774:	b2d2      	uxtb	r2, r2
     776:	701a      	strb	r2, [r3, #0]
     778:	69bb      	ldr	r3, [r7, #24]
     77a:	1c5a      	adds	r2, r3, #1
     77c:	61ba      	str	r2, [r7, #24]
     77e:	2210      	movs	r2, #16
     780:	18ba      	adds	r2, r7, r2
     782:	8812      	ldrh	r2, [r2, #0]
     784:	0a12      	lsrs	r2, r2, #8
     786:	b292      	uxth	r2, r2
     788:	b2d2      	uxtb	r2, r2
     78a:	701a      	strb	r2, [r3, #0]
     78c:	697b      	ldr	r3, [r7, #20]
     78e:	3309      	adds	r3, #9
     790:	001a      	movs	r2, r3
     792:	4b05      	ldr	r3, [pc, #20]	; (7a8 <mdb485_writeregs+0x148>)
     794:	0011      	movs	r1, r2
     796:	0018      	movs	r0, r3
     798:	f7ff ff12 	bl	5c0 <mdb485_send>
     79c:	e000      	b.n	7a0 <mdb485_writeregs+0x140>
     79e:	46c0      	nop			; (mov r8, r8)
     7a0:	46bd      	mov	sp, r7
     7a2:	b009      	add	sp, #36	; 0x24
     7a4:	bd90      	pop	{r4, r7, pc}
     7a6:	46c0      	nop			; (mov r8, r8)
     7a8:	200008bc 	.word	0x200008bc

000007ac <mdb485_readregs>:
     7ac:	b590      	push	{r4, r7, lr}
     7ae:	b085      	sub	sp, #20
     7b0:	af00      	add	r7, sp, #0
     7b2:	0004      	movs	r4, r0
     7b4:	0008      	movs	r0, r1
     7b6:	0011      	movs	r1, r2
     7b8:	1dfb      	adds	r3, r7, #7
     7ba:	1c22      	adds	r2, r4, #0
     7bc:	701a      	strb	r2, [r3, #0]
     7be:	1d3b      	adds	r3, r7, #4
     7c0:	1c02      	adds	r2, r0, #0
     7c2:	801a      	strh	r2, [r3, #0]
     7c4:	1cbb      	adds	r3, r7, #2
     7c6:	1c0a      	adds	r2, r1, #0
     7c8:	801a      	strh	r2, [r3, #0]
     7ca:	4b28      	ldr	r3, [pc, #160]	; (86c <mdb485_readregs+0xc0>)
     7cc:	60fb      	str	r3, [r7, #12]
     7ce:	68fb      	ldr	r3, [r7, #12]
     7d0:	1c5a      	adds	r2, r3, #1
     7d2:	60fa      	str	r2, [r7, #12]
     7d4:	1dfa      	adds	r2, r7, #7
     7d6:	7812      	ldrb	r2, [r2, #0]
     7d8:	701a      	strb	r2, [r3, #0]
     7da:	68fb      	ldr	r3, [r7, #12]
     7dc:	1c5a      	adds	r2, r3, #1
     7de:	60fa      	str	r2, [r7, #12]
     7e0:	2203      	movs	r2, #3
     7e2:	701a      	strb	r2, [r3, #0]
     7e4:	68fb      	ldr	r3, [r7, #12]
     7e6:	1c5a      	adds	r2, r3, #1
     7e8:	60fa      	str	r2, [r7, #12]
     7ea:	1d3a      	adds	r2, r7, #4
     7ec:	8812      	ldrh	r2, [r2, #0]
     7ee:	0a12      	lsrs	r2, r2, #8
     7f0:	b292      	uxth	r2, r2
     7f2:	b2d2      	uxtb	r2, r2
     7f4:	701a      	strb	r2, [r3, #0]
     7f6:	68fb      	ldr	r3, [r7, #12]
     7f8:	1c5a      	adds	r2, r3, #1
     7fa:	60fa      	str	r2, [r7, #12]
     7fc:	1d3a      	adds	r2, r7, #4
     7fe:	8812      	ldrh	r2, [r2, #0]
     800:	b2d2      	uxtb	r2, r2
     802:	701a      	strb	r2, [r3, #0]
     804:	68fb      	ldr	r3, [r7, #12]
     806:	1c5a      	adds	r2, r3, #1
     808:	60fa      	str	r2, [r7, #12]
     80a:	1cba      	adds	r2, r7, #2
     80c:	8812      	ldrh	r2, [r2, #0]
     80e:	0a12      	lsrs	r2, r2, #8
     810:	b292      	uxth	r2, r2
     812:	b2d2      	uxtb	r2, r2
     814:	701a      	strb	r2, [r3, #0]
     816:	68fb      	ldr	r3, [r7, #12]
     818:	1c5a      	adds	r2, r3, #1
     81a:	60fa      	str	r2, [r7, #12]
     81c:	1cba      	adds	r2, r7, #2
     81e:	8812      	ldrh	r2, [r2, #0]
     820:	b2d2      	uxtb	r2, r2
     822:	701a      	strb	r2, [r3, #0]
     824:	230a      	movs	r3, #10
     826:	18fc      	adds	r4, r7, r3
     828:	4b10      	ldr	r3, [pc, #64]	; (86c <mdb485_readregs+0xc0>)
     82a:	2106      	movs	r1, #6
     82c:	0018      	movs	r0, r3
     82e:	f002 fc3f 	bl	30b0 <crc16>
     832:	0003      	movs	r3, r0
     834:	8023      	strh	r3, [r4, #0]
     836:	68fb      	ldr	r3, [r7, #12]
     838:	1c5a      	adds	r2, r3, #1
     83a:	60fa      	str	r2, [r7, #12]
     83c:	220a      	movs	r2, #10
     83e:	18ba      	adds	r2, r7, r2
     840:	8812      	ldrh	r2, [r2, #0]
     842:	b2d2      	uxtb	r2, r2
     844:	701a      	strb	r2, [r3, #0]
     846:	68fb      	ldr	r3, [r7, #12]
     848:	1c5a      	adds	r2, r3, #1
     84a:	60fa      	str	r2, [r7, #12]
     84c:	220a      	movs	r2, #10
     84e:	18ba      	adds	r2, r7, r2
     850:	8812      	ldrh	r2, [r2, #0]
     852:	0a12      	lsrs	r2, r2, #8
     854:	b292      	uxth	r2, r2
     856:	b2d2      	uxtb	r2, r2
     858:	701a      	strb	r2, [r3, #0]
     85a:	4b04      	ldr	r3, [pc, #16]	; (86c <mdb485_readregs+0xc0>)
     85c:	2108      	movs	r1, #8
     85e:	0018      	movs	r0, r3
     860:	f7ff feae 	bl	5c0 <mdb485_send>
     864:	46c0      	nop			; (mov r8, r8)
     866:	46bd      	mov	sp, r7
     868:	b005      	add	sp, #20
     86a:	bd90      	pop	{r4, r7, pc}
     86c:	200008bc 	.word	0x200008bc

00000870 <mdb485_read_inputregs>:
     870:	b590      	push	{r4, r7, lr}
     872:	b085      	sub	sp, #20
     874:	af00      	add	r7, sp, #0
     876:	0004      	movs	r4, r0
     878:	0008      	movs	r0, r1
     87a:	0011      	movs	r1, r2
     87c:	1dfb      	adds	r3, r7, #7
     87e:	1c22      	adds	r2, r4, #0
     880:	701a      	strb	r2, [r3, #0]
     882:	1d3b      	adds	r3, r7, #4
     884:	1c02      	adds	r2, r0, #0
     886:	801a      	strh	r2, [r3, #0]
     888:	1cbb      	adds	r3, r7, #2
     88a:	1c0a      	adds	r2, r1, #0
     88c:	801a      	strh	r2, [r3, #0]
     88e:	4b28      	ldr	r3, [pc, #160]	; (930 <mdb485_read_inputregs+0xc0>)
     890:	60fb      	str	r3, [r7, #12]
     892:	68fb      	ldr	r3, [r7, #12]
     894:	1c5a      	adds	r2, r3, #1
     896:	60fa      	str	r2, [r7, #12]
     898:	1dfa      	adds	r2, r7, #7
     89a:	7812      	ldrb	r2, [r2, #0]
     89c:	701a      	strb	r2, [r3, #0]
     89e:	68fb      	ldr	r3, [r7, #12]
     8a0:	1c5a      	adds	r2, r3, #1
     8a2:	60fa      	str	r2, [r7, #12]
     8a4:	2204      	movs	r2, #4
     8a6:	701a      	strb	r2, [r3, #0]
     8a8:	68fb      	ldr	r3, [r7, #12]
     8aa:	1c5a      	adds	r2, r3, #1
     8ac:	60fa      	str	r2, [r7, #12]
     8ae:	1d3a      	adds	r2, r7, #4
     8b0:	8812      	ldrh	r2, [r2, #0]
     8b2:	0a12      	lsrs	r2, r2, #8
     8b4:	b292      	uxth	r2, r2
     8b6:	b2d2      	uxtb	r2, r2
     8b8:	701a      	strb	r2, [r3, #0]
     8ba:	68fb      	ldr	r3, [r7, #12]
     8bc:	1c5a      	adds	r2, r3, #1
     8be:	60fa      	str	r2, [r7, #12]
     8c0:	1d3a      	adds	r2, r7, #4
     8c2:	8812      	ldrh	r2, [r2, #0]
     8c4:	b2d2      	uxtb	r2, r2
     8c6:	701a      	strb	r2, [r3, #0]
     8c8:	68fb      	ldr	r3, [r7, #12]
     8ca:	1c5a      	adds	r2, r3, #1
     8cc:	60fa      	str	r2, [r7, #12]
     8ce:	1cba      	adds	r2, r7, #2
     8d0:	8812      	ldrh	r2, [r2, #0]
     8d2:	0a12      	lsrs	r2, r2, #8
     8d4:	b292      	uxth	r2, r2
     8d6:	b2d2      	uxtb	r2, r2
     8d8:	701a      	strb	r2, [r3, #0]
     8da:	68fb      	ldr	r3, [r7, #12]
     8dc:	1c5a      	adds	r2, r3, #1
     8de:	60fa      	str	r2, [r7, #12]
     8e0:	1cba      	adds	r2, r7, #2
     8e2:	8812      	ldrh	r2, [r2, #0]
     8e4:	b2d2      	uxtb	r2, r2
     8e6:	701a      	strb	r2, [r3, #0]
     8e8:	230a      	movs	r3, #10
     8ea:	18fc      	adds	r4, r7, r3
     8ec:	4b10      	ldr	r3, [pc, #64]	; (930 <mdb485_read_inputregs+0xc0>)
     8ee:	2106      	movs	r1, #6
     8f0:	0018      	movs	r0, r3
     8f2:	f002 fbdd 	bl	30b0 <crc16>
     8f6:	0003      	movs	r3, r0
     8f8:	8023      	strh	r3, [r4, #0]
     8fa:	68fb      	ldr	r3, [r7, #12]
     8fc:	1c5a      	adds	r2, r3, #1
     8fe:	60fa      	str	r2, [r7, #12]
     900:	220a      	movs	r2, #10
     902:	18ba      	adds	r2, r7, r2
     904:	8812      	ldrh	r2, [r2, #0]
     906:	b2d2      	uxtb	r2, r2
     908:	701a      	strb	r2, [r3, #0]
     90a:	68fb      	ldr	r3, [r7, #12]
     90c:	1c5a      	adds	r2, r3, #1
     90e:	60fa      	str	r2, [r7, #12]
     910:	220a      	movs	r2, #10
     912:	18ba      	adds	r2, r7, r2
     914:	8812      	ldrh	r2, [r2, #0]
     916:	0a12      	lsrs	r2, r2, #8
     918:	b292      	uxth	r2, r2
     91a:	b2d2      	uxtb	r2, r2
     91c:	701a      	strb	r2, [r3, #0]
     91e:	4b04      	ldr	r3, [pc, #16]	; (930 <mdb485_read_inputregs+0xc0>)
     920:	2108      	movs	r1, #8
     922:	0018      	movs	r0, r3
     924:	f7ff fe4c 	bl	5c0 <mdb485_send>
     928:	46c0      	nop			; (mov r8, r8)
     92a:	46bd      	mov	sp, r7
     92c:	b005      	add	sp, #20
     92e:	bd90      	pop	{r4, r7, pc}
     930:	200008bc 	.word	0x200008bc

00000934 <mdb485_get_func>:
     934:	b580      	push	{r7, lr}
     936:	b082      	sub	sp, #8
     938:	af00      	add	r7, sp, #0
     93a:	2007      	movs	r0, #7
     93c:	f7ff fdf0 	bl	520 <__NVIC_DisableIRQ>
     940:	4b05      	ldr	r3, [pc, #20]	; (958 <mdb485_get_func+0x24>)
     942:	785b      	ldrb	r3, [r3, #1]
     944:	607b      	str	r3, [r7, #4]
     946:	2007      	movs	r0, #7
     948:	f7ff fdd0 	bl	4ec <__NVIC_EnableIRQ>
     94c:	687b      	ldr	r3, [r7, #4]
     94e:	0018      	movs	r0, r3
     950:	46bd      	mov	sp, r7
     952:	b002      	add	sp, #8
     954:	bd80      	pop	{r7, pc}
     956:	46c0      	nop			; (mov r8, r8)
     958:	200008ac 	.word	0x200008ac

0000095c <mdb485_get_crc>:
     95c:	b590      	push	{r4, r7, lr}
     95e:	b083      	sub	sp, #12
     960:	af00      	add	r7, sp, #0
     962:	2007      	movs	r0, #7
     964:	f7ff fddc 	bl	520 <__NVIC_DisableIRQ>
     968:	4b09      	ldr	r3, [pc, #36]	; (990 <mdb485_get_crc+0x34>)
     96a:	681a      	ldr	r2, [r3, #0]
     96c:	1dbc      	adds	r4, r7, #6
     96e:	4b09      	ldr	r3, [pc, #36]	; (994 <mdb485_get_crc+0x38>)
     970:	0011      	movs	r1, r2
     972:	0018      	movs	r0, r3
     974:	f002 fb9c 	bl	30b0 <crc16>
     978:	0003      	movs	r3, r0
     97a:	8023      	strh	r3, [r4, #0]
     97c:	2007      	movs	r0, #7
     97e:	f7ff fdb5 	bl	4ec <__NVIC_EnableIRQ>
     982:	1dbb      	adds	r3, r7, #6
     984:	881b      	ldrh	r3, [r3, #0]
     986:	0018      	movs	r0, r3
     988:	46bd      	mov	sp, r7
     98a:	b003      	add	sp, #12
     98c:	bd90      	pop	{r4, r7, pc}
     98e:	46c0      	nop			; (mov r8, r8)
     990:	200008cc 	.word	0x200008cc
     994:	200008ac 	.word	0x200008ac

00000998 <mdb485_si30_get_counter>:
     998:	b580      	push	{r7, lr}
     99a:	b082      	sub	sp, #8
     99c:	af00      	add	r7, sp, #0
     99e:	4b1a      	ldr	r3, [pc, #104]	; (a08 <mdb485_si30_get_counter+0x70>)
     9a0:	607b      	str	r3, [r7, #4]
     9a2:	2007      	movs	r0, #7
     9a4:	f7ff fdbc 	bl	520 <__NVIC_DisableIRQ>
     9a8:	4b18      	ldr	r3, [pc, #96]	; (a0c <mdb485_si30_get_counter+0x74>)
     9aa:	681b      	ldr	r3, [r3, #0]
     9ac:	2b00      	cmp	r3, #0
     9ae:	d022      	beq.n	9f6 <mdb485_si30_get_counter+0x5e>
     9b0:	687b      	ldr	r3, [r7, #4]
     9b2:	1c5a      	adds	r2, r3, #1
     9b4:	607a      	str	r2, [r7, #4]
     9b6:	781b      	ldrb	r3, [r3, #0]
     9b8:	061b      	lsls	r3, r3, #24
     9ba:	603b      	str	r3, [r7, #0]
     9bc:	687b      	ldr	r3, [r7, #4]
     9be:	1c5a      	adds	r2, r3, #1
     9c0:	607a      	str	r2, [r7, #4]
     9c2:	781b      	ldrb	r3, [r3, #0]
     9c4:	041b      	lsls	r3, r3, #16
     9c6:	001a      	movs	r2, r3
     9c8:	683b      	ldr	r3, [r7, #0]
     9ca:	4313      	orrs	r3, r2
     9cc:	603b      	str	r3, [r7, #0]
     9ce:	687b      	ldr	r3, [r7, #4]
     9d0:	1c5a      	adds	r2, r3, #1
     9d2:	607a      	str	r2, [r7, #4]
     9d4:	781b      	ldrb	r3, [r3, #0]
     9d6:	021b      	lsls	r3, r3, #8
     9d8:	001a      	movs	r2, r3
     9da:	683b      	ldr	r3, [r7, #0]
     9dc:	4313      	orrs	r3, r2
     9de:	603b      	str	r3, [r7, #0]
     9e0:	687b      	ldr	r3, [r7, #4]
     9e2:	781b      	ldrb	r3, [r3, #0]
     9e4:	001a      	movs	r2, r3
     9e6:	683b      	ldr	r3, [r7, #0]
     9e8:	4313      	orrs	r3, r2
     9ea:	603b      	str	r3, [r7, #0]
     9ec:	2007      	movs	r0, #7
     9ee:	f7ff fd7d 	bl	4ec <__NVIC_EnableIRQ>
     9f2:	683b      	ldr	r3, [r7, #0]
     9f4:	e003      	b.n	9fe <mdb485_si30_get_counter+0x66>
     9f6:	2007      	movs	r0, #7
     9f8:	f7ff fd78 	bl	4ec <__NVIC_EnableIRQ>
     9fc:	2300      	movs	r3, #0
     9fe:	0018      	movs	r0, r3
     a00:	46bd      	mov	sp, r7
     a02:	b002      	add	sp, #8
     a04:	bd80      	pop	{r7, pc}
     a06:	46c0      	nop			; (mov r8, r8)
     a08:	200008af 	.word	0x200008af
     a0c:	200008cc 	.word	0x200008cc

00000a10 <UART2_Handler>:
     a10:	b580      	push	{r7, lr}
     a12:	b082      	sub	sp, #8
     a14:	af00      	add	r7, sp, #0
     a16:	4b16      	ldr	r3, [pc, #88]	; (a70 <UART2_Handler+0x60>)
     a18:	2200      	movs	r2, #0
     a1a:	601a      	str	r2, [r3, #0]
     a1c:	4b15      	ldr	r3, [pc, #84]	; (a74 <UART2_Handler+0x64>)
     a1e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     a20:	2240      	movs	r2, #64	; 0x40
     a22:	4013      	ands	r3, r2
     a24:	d016      	beq.n	a54 <UART2_Handler+0x44>
     a26:	4b14      	ldr	r3, [pc, #80]	; (a78 <UART2_Handler+0x68>)
     a28:	603b      	str	r3, [r7, #0]
     a2a:	2300      	movs	r3, #0
     a2c:	607b      	str	r3, [r7, #4]
     a2e:	e009      	b.n	a44 <UART2_Handler+0x34>
     a30:	683b      	ldr	r3, [r7, #0]
     a32:	1c5a      	adds	r2, r3, #1
     a34:	603a      	str	r2, [r7, #0]
     a36:	4a0f      	ldr	r2, [pc, #60]	; (a74 <UART2_Handler+0x64>)
     a38:	6812      	ldr	r2, [r2, #0]
     a3a:	b2d2      	uxtb	r2, r2
     a3c:	701a      	strb	r2, [r3, #0]
     a3e:	687b      	ldr	r3, [r7, #4]
     a40:	3301      	adds	r3, #1
     a42:	607b      	str	r3, [r7, #4]
     a44:	687b      	ldr	r3, [r7, #4]
     a46:	2b0f      	cmp	r3, #15
     a48:	dc04      	bgt.n	a54 <UART2_Handler+0x44>
     a4a:	4b0a      	ldr	r3, [pc, #40]	; (a74 <UART2_Handler+0x64>)
     a4c:	699b      	ldr	r3, [r3, #24]
     a4e:	2210      	movs	r2, #16
     a50:	4013      	ands	r3, r2
     a52:	d0ed      	beq.n	a30 <UART2_Handler+0x20>
     a54:	4b06      	ldr	r3, [pc, #24]	; (a70 <UART2_Handler+0x60>)
     a56:	687a      	ldr	r2, [r7, #4]
     a58:	601a      	str	r2, [r3, #0]
     a5a:	4b08      	ldr	r3, [pc, #32]	; (a7c <UART2_Handler+0x6c>)
     a5c:	681b      	ldr	r3, [r3, #0]
     a5e:	2108      	movs	r1, #8
     a60:	0018      	movs	r0, r3
     a62:	f005 fd4b 	bl	64fc <osSignalSet>
     a66:	46c0      	nop			; (mov r8, r8)
     a68:	46bd      	mov	sp, r7
     a6a:	b002      	add	sp, #8
     a6c:	bd80      	pop	{r7, pc}
     a6e:	46c0      	nop			; (mov r8, r8)
     a70:	200008cc 	.word	0x200008cc
     a74:	40038000 	.word	0x40038000
     a78:	200008ac 	.word	0x200008ac
     a7c:	20000860 	.word	0x20000860

00000a80 <_exit>:
     a80:	b580      	push	{r7, lr}
     a82:	b082      	sub	sp, #8
     a84:	af00      	add	r7, sp, #0
     a86:	6078      	str	r0, [r7, #4]
     a88:	4b03      	ldr	r3, [pc, #12]	; (a98 <_exit+0x18>)
     a8a:	2204      	movs	r2, #4
     a8c:	0019      	movs	r1, r3
     a8e:	2001      	movs	r0, #1
     a90:	f000 f90c 	bl	cac <_write>
     a94:	e7fe      	b.n	a94 <_exit+0x14>
     a96:	46c0      	nop			; (mov r8, r8)
     a98:	00008804 	.word	0x00008804

00000a9c <_close>:
     a9c:	b580      	push	{r7, lr}
     a9e:	b082      	sub	sp, #8
     aa0:	af00      	add	r7, sp, #0
     aa2:	6078      	str	r0, [r7, #4]
     aa4:	2301      	movs	r3, #1
     aa6:	425b      	negs	r3, r3
     aa8:	0018      	movs	r0, r3
     aaa:	46bd      	mov	sp, r7
     aac:	b002      	add	sp, #8
     aae:	bd80      	pop	{r7, pc}

00000ab0 <_execve>:
     ab0:	b580      	push	{r7, lr}
     ab2:	b084      	sub	sp, #16
     ab4:	af00      	add	r7, sp, #0
     ab6:	60f8      	str	r0, [r7, #12]
     ab8:	60b9      	str	r1, [r7, #8]
     aba:	607a      	str	r2, [r7, #4]
     abc:	4b04      	ldr	r3, [pc, #16]	; (ad0 <_execve+0x20>)
     abe:	220c      	movs	r2, #12
     ac0:	601a      	str	r2, [r3, #0]
     ac2:	2301      	movs	r3, #1
     ac4:	425b      	negs	r3, r3
     ac6:	0018      	movs	r0, r3
     ac8:	46bd      	mov	sp, r7
     aca:	b004      	add	sp, #16
     acc:	bd80      	pop	{r7, pc}
     ace:	46c0      	nop			; (mov r8, r8)
     ad0:	20006070 	.word	0x20006070

00000ad4 <_fork>:
     ad4:	b580      	push	{r7, lr}
     ad6:	af00      	add	r7, sp, #0
     ad8:	4b03      	ldr	r3, [pc, #12]	; (ae8 <_fork+0x14>)
     ada:	220b      	movs	r2, #11
     adc:	601a      	str	r2, [r3, #0]
     ade:	2301      	movs	r3, #1
     ae0:	425b      	negs	r3, r3
     ae2:	0018      	movs	r0, r3
     ae4:	46bd      	mov	sp, r7
     ae6:	bd80      	pop	{r7, pc}
     ae8:	20006070 	.word	0x20006070

00000aec <_fstat>:
     aec:	b580      	push	{r7, lr}
     aee:	b082      	sub	sp, #8
     af0:	af00      	add	r7, sp, #0
     af2:	6078      	str	r0, [r7, #4]
     af4:	6039      	str	r1, [r7, #0]
     af6:	683b      	ldr	r3, [r7, #0]
     af8:	2280      	movs	r2, #128	; 0x80
     afa:	0192      	lsls	r2, r2, #6
     afc:	605a      	str	r2, [r3, #4]
     afe:	2300      	movs	r3, #0
     b00:	0018      	movs	r0, r3
     b02:	46bd      	mov	sp, r7
     b04:	b002      	add	sp, #8
     b06:	bd80      	pop	{r7, pc}

00000b08 <_getpid>:
     b08:	b580      	push	{r7, lr}
     b0a:	af00      	add	r7, sp, #0
     b0c:	2301      	movs	r3, #1
     b0e:	0018      	movs	r0, r3
     b10:	46bd      	mov	sp, r7
     b12:	bd80      	pop	{r7, pc}

00000b14 <_isatty>:
     b14:	b580      	push	{r7, lr}
     b16:	b082      	sub	sp, #8
     b18:	af00      	add	r7, sp, #0
     b1a:	6078      	str	r0, [r7, #4]
     b1c:	687b      	ldr	r3, [r7, #4]
     b1e:	3300      	adds	r3, #0
     b20:	2b02      	cmp	r3, #2
     b22:	d801      	bhi.n	b28 <_isatty+0x14>
     b24:	2301      	movs	r3, #1
     b26:	e003      	b.n	b30 <_isatty+0x1c>
     b28:	4b03      	ldr	r3, [pc, #12]	; (b38 <_isatty+0x24>)
     b2a:	2209      	movs	r2, #9
     b2c:	601a      	str	r2, [r3, #0]
     b2e:	2300      	movs	r3, #0
     b30:	0018      	movs	r0, r3
     b32:	46bd      	mov	sp, r7
     b34:	b002      	add	sp, #8
     b36:	bd80      	pop	{r7, pc}
     b38:	20006070 	.word	0x20006070

00000b3c <_kill>:
     b3c:	b580      	push	{r7, lr}
     b3e:	b082      	sub	sp, #8
     b40:	af00      	add	r7, sp, #0
     b42:	6078      	str	r0, [r7, #4]
     b44:	6039      	str	r1, [r7, #0]
     b46:	4b04      	ldr	r3, [pc, #16]	; (b58 <_kill+0x1c>)
     b48:	2216      	movs	r2, #22
     b4a:	601a      	str	r2, [r3, #0]
     b4c:	2301      	movs	r3, #1
     b4e:	425b      	negs	r3, r3
     b50:	0018      	movs	r0, r3
     b52:	46bd      	mov	sp, r7
     b54:	b002      	add	sp, #8
     b56:	bd80      	pop	{r7, pc}
     b58:	20006070 	.word	0x20006070

00000b5c <_link>:
     b5c:	b580      	push	{r7, lr}
     b5e:	b082      	sub	sp, #8
     b60:	af00      	add	r7, sp, #0
     b62:	6078      	str	r0, [r7, #4]
     b64:	6039      	str	r1, [r7, #0]
     b66:	4b04      	ldr	r3, [pc, #16]	; (b78 <_link+0x1c>)
     b68:	221f      	movs	r2, #31
     b6a:	601a      	str	r2, [r3, #0]
     b6c:	2301      	movs	r3, #1
     b6e:	425b      	negs	r3, r3
     b70:	0018      	movs	r0, r3
     b72:	46bd      	mov	sp, r7
     b74:	b002      	add	sp, #8
     b76:	bd80      	pop	{r7, pc}
     b78:	20006070 	.word	0x20006070

00000b7c <_lseek>:
     b7c:	b580      	push	{r7, lr}
     b7e:	b084      	sub	sp, #16
     b80:	af00      	add	r7, sp, #0
     b82:	60f8      	str	r0, [r7, #12]
     b84:	60b9      	str	r1, [r7, #8]
     b86:	607a      	str	r2, [r7, #4]
     b88:	2300      	movs	r3, #0
     b8a:	0018      	movs	r0, r3
     b8c:	46bd      	mov	sp, r7
     b8e:	b004      	add	sp, #16
     b90:	bd80      	pop	{r7, pc}
     b92:	46c0      	nop			; (mov r8, r8)

00000b94 <_sbrk>:
     b94:	b580      	push	{r7, lr}
     b96:	b086      	sub	sp, #24
     b98:	af00      	add	r7, sp, #0
     b9a:	6078      	str	r0, [r7, #4]
     b9c:	4b16      	ldr	r3, [pc, #88]	; (bf8 <_sbrk+0x64>)
     b9e:	681b      	ldr	r3, [r3, #0]
     ba0:	2b00      	cmp	r3, #0
     ba2:	d102      	bne.n	baa <_sbrk+0x16>
     ba4:	4b14      	ldr	r3, [pc, #80]	; (bf8 <_sbrk+0x64>)
     ba6:	4a15      	ldr	r2, [pc, #84]	; (bfc <_sbrk+0x68>)
     ba8:	601a      	str	r2, [r3, #0]
     baa:	4b13      	ldr	r3, [pc, #76]	; (bf8 <_sbrk+0x64>)
     bac:	681b      	ldr	r3, [r3, #0]
     bae:	617b      	str	r3, [r7, #20]
     bb0:	f3ef 8308 	mrs	r3, MSP
     bb4:	60fb      	str	r3, [r7, #12]
     bb6:	68fb      	ldr	r3, [r7, #12]
     bb8:	613b      	str	r3, [r7, #16]
     bba:	4b0f      	ldr	r3, [pc, #60]	; (bf8 <_sbrk+0x64>)
     bbc:	681a      	ldr	r2, [r3, #0]
     bbe:	687b      	ldr	r3, [r7, #4]
     bc0:	18d2      	adds	r2, r2, r3
     bc2:	693b      	ldr	r3, [r7, #16]
     bc4:	429a      	cmp	r2, r3
     bc6:	d90b      	bls.n	be0 <_sbrk+0x4c>
     bc8:	4b0d      	ldr	r3, [pc, #52]	; (c00 <_sbrk+0x6c>)
     bca:	2219      	movs	r2, #25
     bcc:	0019      	movs	r1, r3
     bce:	2002      	movs	r0, #2
     bd0:	f000 f86c 	bl	cac <_write>
     bd4:	4b0b      	ldr	r3, [pc, #44]	; (c04 <_sbrk+0x70>)
     bd6:	220c      	movs	r2, #12
     bd8:	601a      	str	r2, [r3, #0]
     bda:	2301      	movs	r3, #1
     bdc:	425b      	negs	r3, r3
     bde:	e006      	b.n	bee <_sbrk+0x5a>
     be0:	4b05      	ldr	r3, [pc, #20]	; (bf8 <_sbrk+0x64>)
     be2:	681a      	ldr	r2, [r3, #0]
     be4:	687b      	ldr	r3, [r7, #4]
     be6:	18d2      	adds	r2, r2, r3
     be8:	4b03      	ldr	r3, [pc, #12]	; (bf8 <_sbrk+0x64>)
     bea:	601a      	str	r2, [r3, #0]
     bec:	697b      	ldr	r3, [r7, #20]
     bee:	0018      	movs	r0, r3
     bf0:	46bd      	mov	sp, r7
     bf2:	b006      	add	sp, #24
     bf4:	bd80      	pop	{r7, pc}
     bf6:	46c0      	nop			; (mov r8, r8)
     bf8:	200008d4 	.word	0x200008d4
     bfc:	200060f8 	.word	0x200060f8
     c00:	0000880c 	.word	0x0000880c
     c04:	20006070 	.word	0x20006070

00000c08 <_read>:
     c08:	b580      	push	{r7, lr}
     c0a:	b086      	sub	sp, #24
     c0c:	af00      	add	r7, sp, #0
     c0e:	60f8      	str	r0, [r7, #12]
     c10:	60b9      	str	r1, [r7, #8]
     c12:	607a      	str	r2, [r7, #4]
     c14:	2300      	movs	r3, #0
     c16:	617b      	str	r3, [r7, #20]
     c18:	68fb      	ldr	r3, [r7, #12]
     c1a:	2b00      	cmp	r3, #0
     c1c:	d005      	beq.n	c2a <_read+0x22>
     c1e:	4b06      	ldr	r3, [pc, #24]	; (c38 <_read+0x30>)
     c20:	2209      	movs	r2, #9
     c22:	601a      	str	r2, [r3, #0]
     c24:	2301      	movs	r3, #1
     c26:	425b      	negs	r3, r3
     c28:	e001      	b.n	c2e <_read+0x26>
     c2a:	46c0      	nop			; (mov r8, r8)
     c2c:	697b      	ldr	r3, [r7, #20]
     c2e:	0018      	movs	r0, r3
     c30:	46bd      	mov	sp, r7
     c32:	b006      	add	sp, #24
     c34:	bd80      	pop	{r7, pc}
     c36:	46c0      	nop			; (mov r8, r8)
     c38:	20006070 	.word	0x20006070

00000c3c <_stat>:
     c3c:	b580      	push	{r7, lr}
     c3e:	b082      	sub	sp, #8
     c40:	af00      	add	r7, sp, #0
     c42:	6078      	str	r0, [r7, #4]
     c44:	6039      	str	r1, [r7, #0]
     c46:	683b      	ldr	r3, [r7, #0]
     c48:	2280      	movs	r2, #128	; 0x80
     c4a:	0192      	lsls	r2, r2, #6
     c4c:	605a      	str	r2, [r3, #4]
     c4e:	2300      	movs	r3, #0
     c50:	0018      	movs	r0, r3
     c52:	46bd      	mov	sp, r7
     c54:	b002      	add	sp, #8
     c56:	bd80      	pop	{r7, pc}

00000c58 <_times>:
     c58:	b580      	push	{r7, lr}
     c5a:	b082      	sub	sp, #8
     c5c:	af00      	add	r7, sp, #0
     c5e:	6078      	str	r0, [r7, #4]
     c60:	2301      	movs	r3, #1
     c62:	425b      	negs	r3, r3
     c64:	0018      	movs	r0, r3
     c66:	46bd      	mov	sp, r7
     c68:	b002      	add	sp, #8
     c6a:	bd80      	pop	{r7, pc}

00000c6c <_unlink>:
     c6c:	b580      	push	{r7, lr}
     c6e:	b082      	sub	sp, #8
     c70:	af00      	add	r7, sp, #0
     c72:	6078      	str	r0, [r7, #4]
     c74:	4b04      	ldr	r3, [pc, #16]	; (c88 <_unlink+0x1c>)
     c76:	2202      	movs	r2, #2
     c78:	601a      	str	r2, [r3, #0]
     c7a:	2301      	movs	r3, #1
     c7c:	425b      	negs	r3, r3
     c7e:	0018      	movs	r0, r3
     c80:	46bd      	mov	sp, r7
     c82:	b002      	add	sp, #8
     c84:	bd80      	pop	{r7, pc}
     c86:	46c0      	nop			; (mov r8, r8)
     c88:	20006070 	.word	0x20006070

00000c8c <_wait>:
     c8c:	b580      	push	{r7, lr}
     c8e:	b082      	sub	sp, #8
     c90:	af00      	add	r7, sp, #0
     c92:	6078      	str	r0, [r7, #4]
     c94:	4b04      	ldr	r3, [pc, #16]	; (ca8 <_wait+0x1c>)
     c96:	220a      	movs	r2, #10
     c98:	601a      	str	r2, [r3, #0]
     c9a:	2301      	movs	r3, #1
     c9c:	425b      	negs	r3, r3
     c9e:	0018      	movs	r0, r3
     ca0:	46bd      	mov	sp, r7
     ca2:	b002      	add	sp, #8
     ca4:	bd80      	pop	{r7, pc}
     ca6:	46c0      	nop			; (mov r8, r8)
     ca8:	20006070 	.word	0x20006070

00000cac <_write>:
     cac:	b580      	push	{r7, lr}
     cae:	b086      	sub	sp, #24
     cb0:	af00      	add	r7, sp, #0
     cb2:	60f8      	str	r0, [r7, #12]
     cb4:	60b9      	str	r1, [r7, #8]
     cb6:	607a      	str	r2, [r7, #4]
     cb8:	68fb      	ldr	r3, [r7, #12]
     cba:	2b01      	cmp	r3, #1
     cbc:	d002      	beq.n	cc4 <_write+0x18>
     cbe:	2b02      	cmp	r3, #2
     cc0:	d00b      	beq.n	cda <_write+0x2e>
     cc2:	e015      	b.n	cf0 <_write+0x44>
     cc4:	2300      	movs	r3, #0
     cc6:	617b      	str	r3, [r7, #20]
     cc8:	e002      	b.n	cd0 <_write+0x24>
     cca:	697b      	ldr	r3, [r7, #20]
     ccc:	3301      	adds	r3, #1
     cce:	617b      	str	r3, [r7, #20]
     cd0:	697a      	ldr	r2, [r7, #20]
     cd2:	687b      	ldr	r3, [r7, #4]
     cd4:	429a      	cmp	r2, r3
     cd6:	dbf8      	blt.n	cca <_write+0x1e>
     cd8:	e010      	b.n	cfc <_write+0x50>
     cda:	2300      	movs	r3, #0
     cdc:	617b      	str	r3, [r7, #20]
     cde:	e002      	b.n	ce6 <_write+0x3a>
     ce0:	697b      	ldr	r3, [r7, #20]
     ce2:	3301      	adds	r3, #1
     ce4:	617b      	str	r3, [r7, #20]
     ce6:	697a      	ldr	r2, [r7, #20]
     ce8:	687b      	ldr	r3, [r7, #4]
     cea:	429a      	cmp	r2, r3
     cec:	dbf8      	blt.n	ce0 <_write+0x34>
     cee:	e005      	b.n	cfc <_write+0x50>
     cf0:	4b05      	ldr	r3, [pc, #20]	; (d08 <_write+0x5c>)
     cf2:	2209      	movs	r2, #9
     cf4:	601a      	str	r2, [r3, #0]
     cf6:	2301      	movs	r3, #1
     cf8:	425b      	negs	r3, r3
     cfa:	e000      	b.n	cfe <_write+0x52>
     cfc:	687b      	ldr	r3, [r7, #4]
     cfe:	0018      	movs	r0, r3
     d00:	46bd      	mov	sp, r7
     d02:	b006      	add	sp, #24
     d04:	bd80      	pop	{r7, pc}
     d06:	46c0      	nop			; (mov r8, r8)
     d08:	20006070 	.word	0x20006070

00000d0c <_init>:
     d0c:	b580      	push	{r7, lr}
     d0e:	af00      	add	r7, sp, #0
     d10:	46c0      	nop			; (mov r8, r8)
     d12:	46bd      	mov	sp, r7
     d14:	bd80      	pop	{r7, pc}
     d16:	46c0      	nop			; (mov r8, r8)

00000d18 <_fini>:
     d18:	b580      	push	{r7, lr}
     d1a:	af00      	add	r7, sp, #0
     d1c:	46c0      	nop			; (mov r8, r8)
     d1e:	46bd      	mov	sp, r7
     d20:	bd80      	pop	{r7, pc}
     d22:	46c0      	nop			; (mov r8, r8)

00000d24 <__NVIC_EnableIRQ>:
     d24:	b580      	push	{r7, lr}
     d26:	b082      	sub	sp, #8
     d28:	af00      	add	r7, sp, #0
     d2a:	0002      	movs	r2, r0
     d2c:	1dfb      	adds	r3, r7, #7
     d2e:	701a      	strb	r2, [r3, #0]
     d30:	1dfb      	adds	r3, r7, #7
     d32:	781b      	ldrb	r3, [r3, #0]
     d34:	2b7f      	cmp	r3, #127	; 0x7f
     d36:	d809      	bhi.n	d4c <__NVIC_EnableIRQ+0x28>
     d38:	4b06      	ldr	r3, [pc, #24]	; (d54 <__NVIC_EnableIRQ+0x30>)
     d3a:	1dfa      	adds	r2, r7, #7
     d3c:	7812      	ldrb	r2, [r2, #0]
     d3e:	0011      	movs	r1, r2
     d40:	221f      	movs	r2, #31
     d42:	400a      	ands	r2, r1
     d44:	2101      	movs	r1, #1
     d46:	4091      	lsls	r1, r2
     d48:	000a      	movs	r2, r1
     d4a:	601a      	str	r2, [r3, #0]
     d4c:	46c0      	nop			; (mov r8, r8)
     d4e:	46bd      	mov	sp, r7
     d50:	b002      	add	sp, #8
     d52:	bd80      	pop	{r7, pc}
     d54:	e000e100 	.word	0xe000e100

00000d58 <__NVIC_DisableIRQ>:
     d58:	b580      	push	{r7, lr}
     d5a:	b082      	sub	sp, #8
     d5c:	af00      	add	r7, sp, #0
     d5e:	0002      	movs	r2, r0
     d60:	1dfb      	adds	r3, r7, #7
     d62:	701a      	strb	r2, [r3, #0]
     d64:	1dfb      	adds	r3, r7, #7
     d66:	781b      	ldrb	r3, [r3, #0]
     d68:	2b7f      	cmp	r3, #127	; 0x7f
     d6a:	d80e      	bhi.n	d8a <__NVIC_DisableIRQ+0x32>
     d6c:	4909      	ldr	r1, [pc, #36]	; (d94 <__NVIC_DisableIRQ+0x3c>)
     d6e:	1dfb      	adds	r3, r7, #7
     d70:	781b      	ldrb	r3, [r3, #0]
     d72:	001a      	movs	r2, r3
     d74:	231f      	movs	r3, #31
     d76:	4013      	ands	r3, r2
     d78:	2201      	movs	r2, #1
     d7a:	409a      	lsls	r2, r3
     d7c:	0013      	movs	r3, r2
     d7e:	2280      	movs	r2, #128	; 0x80
     d80:	508b      	str	r3, [r1, r2]
     d82:	f3bf 8f4f 	dsb	sy
     d86:	f3bf 8f6f 	isb	sy
     d8a:	46c0      	nop			; (mov r8, r8)
     d8c:	46bd      	mov	sp, r7
     d8e:	b002      	add	sp, #8
     d90:	bd80      	pop	{r7, pc}
     d92:	46c0      	nop			; (mov r8, r8)
     d94:	e000e100 	.word	0xe000e100

00000d98 <mdb232_init>:
     d98:	b580      	push	{r7, lr}
     d9a:	af00      	add	r7, sp, #0
     d9c:	4b15      	ldr	r3, [pc, #84]	; (df4 <mdb232_init+0x5c>)
     d9e:	229c      	movs	r2, #156	; 0x9c
     da0:	0052      	lsls	r2, r2, #1
     da2:	625a      	str	r2, [r3, #36]	; 0x24
     da4:	4b13      	ldr	r3, [pc, #76]	; (df4 <mdb232_init+0x5c>)
     da6:	2220      	movs	r2, #32
     da8:	629a      	str	r2, [r3, #40]	; 0x28
     daa:	4b12      	ldr	r3, [pc, #72]	; (df4 <mdb232_init+0x5c>)
     dac:	4a11      	ldr	r2, [pc, #68]	; (df4 <mdb232_init+0x5c>)
     dae:	6b52      	ldr	r2, [r2, #52]	; 0x34
     db0:	213f      	movs	r1, #63	; 0x3f
     db2:	438a      	bics	r2, r1
     db4:	635a      	str	r2, [r3, #52]	; 0x34
     db6:	4b0f      	ldr	r3, [pc, #60]	; (df4 <mdb232_init+0x5c>)
     db8:	4a0e      	ldr	r2, [pc, #56]	; (df4 <mdb232_init+0x5c>)
     dba:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     dbc:	2110      	movs	r1, #16
     dbe:	430a      	orrs	r2, r1
     dc0:	62da      	str	r2, [r3, #44]	; 0x2c
     dc2:	4b0c      	ldr	r3, [pc, #48]	; (df4 <mdb232_init+0x5c>)
     dc4:	4a0b      	ldr	r2, [pc, #44]	; (df4 <mdb232_init+0x5c>)
     dc6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     dc8:	2160      	movs	r1, #96	; 0x60
     dca:	430a      	orrs	r2, r1
     dcc:	62da      	str	r2, [r3, #44]	; 0x2c
     dce:	4b09      	ldr	r3, [pc, #36]	; (df4 <mdb232_init+0x5c>)
     dd0:	4a08      	ldr	r2, [pc, #32]	; (df4 <mdb232_init+0x5c>)
     dd2:	6b12      	ldr	r2, [r2, #48]	; 0x30
     dd4:	4908      	ldr	r1, [pc, #32]	; (df8 <mdb232_init+0x60>)
     dd6:	430a      	orrs	r2, r1
     dd8:	631a      	str	r2, [r3, #48]	; 0x30
     dda:	4b06      	ldr	r3, [pc, #24]	; (df4 <mdb232_init+0x5c>)
     ddc:	4a05      	ldr	r2, [pc, #20]	; (df4 <mdb232_init+0x5c>)
     dde:	6b92      	ldr	r2, [r2, #56]	; 0x38
     de0:	2140      	movs	r1, #64	; 0x40
     de2:	430a      	orrs	r2, r1
     de4:	639a      	str	r2, [r3, #56]	; 0x38
     de6:	2006      	movs	r0, #6
     de8:	f7ff ff9c 	bl	d24 <__NVIC_EnableIRQ>
     dec:	46c0      	nop			; (mov r8, r8)
     dee:	46bd      	mov	sp, r7
     df0:	bd80      	pop	{r7, pc}
     df2:	46c0      	nop			; (mov r8, r8)
     df4:	40030000 	.word	0x40030000
     df8:	00000301 	.word	0x00000301

00000dfc <mdb232_send>:
     dfc:	b580      	push	{r7, lr}
     dfe:	b084      	sub	sp, #16
     e00:	af00      	add	r7, sp, #0
     e02:	6078      	str	r0, [r7, #4]
     e04:	6039      	str	r1, [r7, #0]
     e06:	2300      	movs	r3, #0
     e08:	60fb      	str	r3, [r7, #12]
     e0a:	e00e      	b.n	e2a <mdb232_send+0x2e>
     e0c:	46c0      	nop			; (mov r8, r8)
     e0e:	4b0e      	ldr	r3, [pc, #56]	; (e48 <mdb232_send+0x4c>)
     e10:	699b      	ldr	r3, [r3, #24]
     e12:	2220      	movs	r2, #32
     e14:	4013      	ands	r3, r2
     e16:	d1fa      	bne.n	e0e <mdb232_send+0x12>
     e18:	4a0b      	ldr	r2, [pc, #44]	; (e48 <mdb232_send+0x4c>)
     e1a:	687b      	ldr	r3, [r7, #4]
     e1c:	1c59      	adds	r1, r3, #1
     e1e:	6079      	str	r1, [r7, #4]
     e20:	781b      	ldrb	r3, [r3, #0]
     e22:	6013      	str	r3, [r2, #0]
     e24:	68fb      	ldr	r3, [r7, #12]
     e26:	3301      	adds	r3, #1
     e28:	60fb      	str	r3, [r7, #12]
     e2a:	68fa      	ldr	r2, [r7, #12]
     e2c:	683b      	ldr	r3, [r7, #0]
     e2e:	429a      	cmp	r2, r3
     e30:	dbec      	blt.n	e0c <mdb232_send+0x10>
     e32:	46c0      	nop			; (mov r8, r8)
     e34:	4b04      	ldr	r3, [pc, #16]	; (e48 <mdb232_send+0x4c>)
     e36:	699b      	ldr	r3, [r3, #24]
     e38:	2208      	movs	r2, #8
     e3a:	4013      	ands	r3, r2
     e3c:	d1fa      	bne.n	e34 <mdb232_send+0x38>
     e3e:	683b      	ldr	r3, [r7, #0]
     e40:	0018      	movs	r0, r3
     e42:	46bd      	mov	sp, r7
     e44:	b004      	add	sp, #16
     e46:	bd80      	pop	{r7, pc}
     e48:	40030000 	.word	0x40030000

00000e4c <mdb232_read_inputregs>:
     e4c:	b590      	push	{r4, r7, lr}
     e4e:	b085      	sub	sp, #20
     e50:	af00      	add	r7, sp, #0
     e52:	0004      	movs	r4, r0
     e54:	0008      	movs	r0, r1
     e56:	0011      	movs	r1, r2
     e58:	1dfb      	adds	r3, r7, #7
     e5a:	1c22      	adds	r2, r4, #0
     e5c:	701a      	strb	r2, [r3, #0]
     e5e:	1d3b      	adds	r3, r7, #4
     e60:	1c02      	adds	r2, r0, #0
     e62:	801a      	strh	r2, [r3, #0]
     e64:	1cbb      	adds	r3, r7, #2
     e66:	1c0a      	adds	r2, r1, #0
     e68:	801a      	strh	r2, [r3, #0]
     e6a:	4b28      	ldr	r3, [pc, #160]	; (f0c <mdb232_read_inputregs+0xc0>)
     e6c:	60fb      	str	r3, [r7, #12]
     e6e:	68fb      	ldr	r3, [r7, #12]
     e70:	1c5a      	adds	r2, r3, #1
     e72:	60fa      	str	r2, [r7, #12]
     e74:	1dfa      	adds	r2, r7, #7
     e76:	7812      	ldrb	r2, [r2, #0]
     e78:	701a      	strb	r2, [r3, #0]
     e7a:	68fb      	ldr	r3, [r7, #12]
     e7c:	1c5a      	adds	r2, r3, #1
     e7e:	60fa      	str	r2, [r7, #12]
     e80:	2204      	movs	r2, #4
     e82:	701a      	strb	r2, [r3, #0]
     e84:	68fb      	ldr	r3, [r7, #12]
     e86:	1c5a      	adds	r2, r3, #1
     e88:	60fa      	str	r2, [r7, #12]
     e8a:	1d3a      	adds	r2, r7, #4
     e8c:	8812      	ldrh	r2, [r2, #0]
     e8e:	0a12      	lsrs	r2, r2, #8
     e90:	b292      	uxth	r2, r2
     e92:	b2d2      	uxtb	r2, r2
     e94:	701a      	strb	r2, [r3, #0]
     e96:	68fb      	ldr	r3, [r7, #12]
     e98:	1c5a      	adds	r2, r3, #1
     e9a:	60fa      	str	r2, [r7, #12]
     e9c:	1d3a      	adds	r2, r7, #4
     e9e:	8812      	ldrh	r2, [r2, #0]
     ea0:	b2d2      	uxtb	r2, r2
     ea2:	701a      	strb	r2, [r3, #0]
     ea4:	68fb      	ldr	r3, [r7, #12]
     ea6:	1c5a      	adds	r2, r3, #1
     ea8:	60fa      	str	r2, [r7, #12]
     eaa:	1cba      	adds	r2, r7, #2
     eac:	8812      	ldrh	r2, [r2, #0]
     eae:	0a12      	lsrs	r2, r2, #8
     eb0:	b292      	uxth	r2, r2
     eb2:	b2d2      	uxtb	r2, r2
     eb4:	701a      	strb	r2, [r3, #0]
     eb6:	68fb      	ldr	r3, [r7, #12]
     eb8:	1c5a      	adds	r2, r3, #1
     eba:	60fa      	str	r2, [r7, #12]
     ebc:	1cba      	adds	r2, r7, #2
     ebe:	8812      	ldrh	r2, [r2, #0]
     ec0:	b2d2      	uxtb	r2, r2
     ec2:	701a      	strb	r2, [r3, #0]
     ec4:	230a      	movs	r3, #10
     ec6:	18fc      	adds	r4, r7, r3
     ec8:	4b10      	ldr	r3, [pc, #64]	; (f0c <mdb232_read_inputregs+0xc0>)
     eca:	2106      	movs	r1, #6
     ecc:	0018      	movs	r0, r3
     ece:	f002 f8ef 	bl	30b0 <crc16>
     ed2:	0003      	movs	r3, r0
     ed4:	8023      	strh	r3, [r4, #0]
     ed6:	68fb      	ldr	r3, [r7, #12]
     ed8:	1c5a      	adds	r2, r3, #1
     eda:	60fa      	str	r2, [r7, #12]
     edc:	220a      	movs	r2, #10
     ede:	18ba      	adds	r2, r7, r2
     ee0:	8812      	ldrh	r2, [r2, #0]
     ee2:	b2d2      	uxtb	r2, r2
     ee4:	701a      	strb	r2, [r3, #0]
     ee6:	68fb      	ldr	r3, [r7, #12]
     ee8:	1c5a      	adds	r2, r3, #1
     eea:	60fa      	str	r2, [r7, #12]
     eec:	220a      	movs	r2, #10
     eee:	18ba      	adds	r2, r7, r2
     ef0:	8812      	ldrh	r2, [r2, #0]
     ef2:	0a12      	lsrs	r2, r2, #8
     ef4:	b292      	uxth	r2, r2
     ef6:	b2d2      	uxtb	r2, r2
     ef8:	701a      	strb	r2, [r3, #0]
     efa:	4b04      	ldr	r3, [pc, #16]	; (f0c <mdb232_read_inputregs+0xc0>)
     efc:	2108      	movs	r1, #8
     efe:	0018      	movs	r0, r3
     f00:	f7ff ff7c 	bl	dfc <mdb232_send>
     f04:	46c0      	nop			; (mov r8, r8)
     f06:	46bd      	mov	sp, r7
     f08:	b005      	add	sp, #20
     f0a:	bd90      	pop	{r4, r7, pc}
     f0c:	200008e8 	.word	0x200008e8

00000f10 <mdb232_readregs>:
     f10:	b590      	push	{r4, r7, lr}
     f12:	b085      	sub	sp, #20
     f14:	af00      	add	r7, sp, #0
     f16:	0004      	movs	r4, r0
     f18:	0008      	movs	r0, r1
     f1a:	0011      	movs	r1, r2
     f1c:	1dfb      	adds	r3, r7, #7
     f1e:	1c22      	adds	r2, r4, #0
     f20:	701a      	strb	r2, [r3, #0]
     f22:	1d3b      	adds	r3, r7, #4
     f24:	1c02      	adds	r2, r0, #0
     f26:	801a      	strh	r2, [r3, #0]
     f28:	1cbb      	adds	r3, r7, #2
     f2a:	1c0a      	adds	r2, r1, #0
     f2c:	801a      	strh	r2, [r3, #0]
     f2e:	4b28      	ldr	r3, [pc, #160]	; (fd0 <mdb232_readregs+0xc0>)
     f30:	60fb      	str	r3, [r7, #12]
     f32:	68fb      	ldr	r3, [r7, #12]
     f34:	1c5a      	adds	r2, r3, #1
     f36:	60fa      	str	r2, [r7, #12]
     f38:	1dfa      	adds	r2, r7, #7
     f3a:	7812      	ldrb	r2, [r2, #0]
     f3c:	701a      	strb	r2, [r3, #0]
     f3e:	68fb      	ldr	r3, [r7, #12]
     f40:	1c5a      	adds	r2, r3, #1
     f42:	60fa      	str	r2, [r7, #12]
     f44:	2203      	movs	r2, #3
     f46:	701a      	strb	r2, [r3, #0]
     f48:	68fb      	ldr	r3, [r7, #12]
     f4a:	1c5a      	adds	r2, r3, #1
     f4c:	60fa      	str	r2, [r7, #12]
     f4e:	1d3a      	adds	r2, r7, #4
     f50:	8812      	ldrh	r2, [r2, #0]
     f52:	0a12      	lsrs	r2, r2, #8
     f54:	b292      	uxth	r2, r2
     f56:	b2d2      	uxtb	r2, r2
     f58:	701a      	strb	r2, [r3, #0]
     f5a:	68fb      	ldr	r3, [r7, #12]
     f5c:	1c5a      	adds	r2, r3, #1
     f5e:	60fa      	str	r2, [r7, #12]
     f60:	1d3a      	adds	r2, r7, #4
     f62:	8812      	ldrh	r2, [r2, #0]
     f64:	b2d2      	uxtb	r2, r2
     f66:	701a      	strb	r2, [r3, #0]
     f68:	68fb      	ldr	r3, [r7, #12]
     f6a:	1c5a      	adds	r2, r3, #1
     f6c:	60fa      	str	r2, [r7, #12]
     f6e:	1cba      	adds	r2, r7, #2
     f70:	8812      	ldrh	r2, [r2, #0]
     f72:	0a12      	lsrs	r2, r2, #8
     f74:	b292      	uxth	r2, r2
     f76:	b2d2      	uxtb	r2, r2
     f78:	701a      	strb	r2, [r3, #0]
     f7a:	68fb      	ldr	r3, [r7, #12]
     f7c:	1c5a      	adds	r2, r3, #1
     f7e:	60fa      	str	r2, [r7, #12]
     f80:	1cba      	adds	r2, r7, #2
     f82:	8812      	ldrh	r2, [r2, #0]
     f84:	b2d2      	uxtb	r2, r2
     f86:	701a      	strb	r2, [r3, #0]
     f88:	230a      	movs	r3, #10
     f8a:	18fc      	adds	r4, r7, r3
     f8c:	4b10      	ldr	r3, [pc, #64]	; (fd0 <mdb232_readregs+0xc0>)
     f8e:	2106      	movs	r1, #6
     f90:	0018      	movs	r0, r3
     f92:	f002 f88d 	bl	30b0 <crc16>
     f96:	0003      	movs	r3, r0
     f98:	8023      	strh	r3, [r4, #0]
     f9a:	68fb      	ldr	r3, [r7, #12]
     f9c:	1c5a      	adds	r2, r3, #1
     f9e:	60fa      	str	r2, [r7, #12]
     fa0:	220a      	movs	r2, #10
     fa2:	18ba      	adds	r2, r7, r2
     fa4:	8812      	ldrh	r2, [r2, #0]
     fa6:	b2d2      	uxtb	r2, r2
     fa8:	701a      	strb	r2, [r3, #0]
     faa:	68fb      	ldr	r3, [r7, #12]
     fac:	1c5a      	adds	r2, r3, #1
     fae:	60fa      	str	r2, [r7, #12]
     fb0:	220a      	movs	r2, #10
     fb2:	18ba      	adds	r2, r7, r2
     fb4:	8812      	ldrh	r2, [r2, #0]
     fb6:	0a12      	lsrs	r2, r2, #8
     fb8:	b292      	uxth	r2, r2
     fba:	b2d2      	uxtb	r2, r2
     fbc:	701a      	strb	r2, [r3, #0]
     fbe:	4b04      	ldr	r3, [pc, #16]	; (fd0 <mdb232_readregs+0xc0>)
     fc0:	2108      	movs	r1, #8
     fc2:	0018      	movs	r0, r3
     fc4:	f7ff ff1a 	bl	dfc <mdb232_send>
     fc8:	46c0      	nop			; (mov r8, r8)
     fca:	46bd      	mov	sp, r7
     fcc:	b005      	add	sp, #20
     fce:	bd90      	pop	{r4, r7, pc}
     fd0:	200008e8 	.word	0x200008e8

00000fd4 <mdb232_bikm_get_torque>:
     fd4:	b580      	push	{r7, lr}
     fd6:	b084      	sub	sp, #16
     fd8:	af00      	add	r7, sp, #0
     fda:	4b27      	ldr	r3, [pc, #156]	; (1078 <mdb232_bikm_get_torque+0xa4>)
     fdc:	60fb      	str	r3, [r7, #12]
     fde:	2006      	movs	r0, #6
     fe0:	f7ff feba 	bl	d58 <__NVIC_DisableIRQ>
     fe4:	4b25      	ldr	r3, [pc, #148]	; (107c <mdb232_bikm_get_torque+0xa8>)
     fe6:	681b      	ldr	r3, [r3, #0]
     fe8:	2b00      	cmp	r3, #0
     fea:	d03c      	beq.n	1066 <mdb232_bikm_get_torque+0x92>
     fec:	68fb      	ldr	r3, [r7, #12]
     fee:	1c5a      	adds	r2, r3, #1
     ff0:	60fa      	str	r2, [r7, #12]
     ff2:	781b      	ldrb	r3, [r3, #0]
     ff4:	041b      	lsls	r3, r3, #16
     ff6:	60bb      	str	r3, [r7, #8]
     ff8:	68fb      	ldr	r3, [r7, #12]
     ffa:	1c5a      	adds	r2, r3, #1
     ffc:	60fa      	str	r2, [r7, #12]
     ffe:	781b      	ldrb	r3, [r3, #0]
    1000:	061b      	lsls	r3, r3, #24
    1002:	001a      	movs	r2, r3
    1004:	68bb      	ldr	r3, [r7, #8]
    1006:	4313      	orrs	r3, r2
    1008:	60bb      	str	r3, [r7, #8]
    100a:	68fb      	ldr	r3, [r7, #12]
    100c:	1c5a      	adds	r2, r3, #1
    100e:	60fa      	str	r2, [r7, #12]
    1010:	781b      	ldrb	r3, [r3, #0]
    1012:	001a      	movs	r2, r3
    1014:	68bb      	ldr	r3, [r7, #8]
    1016:	4313      	orrs	r3, r2
    1018:	60bb      	str	r3, [r7, #8]
    101a:	68fb      	ldr	r3, [r7, #12]
    101c:	781b      	ldrb	r3, [r3, #0]
    101e:	021b      	lsls	r3, r3, #8
    1020:	001a      	movs	r2, r3
    1022:	68bb      	ldr	r3, [r7, #8]
    1024:	4313      	orrs	r3, r2
    1026:	60bb      	str	r3, [r7, #8]
    1028:	2006      	movs	r0, #6
    102a:	f7ff fe7b 	bl	d24 <__NVIC_EnableIRQ>
    102e:	68bb      	ldr	r3, [r7, #8]
    1030:	0ddb      	lsrs	r3, r3, #23
    1032:	22ff      	movs	r2, #255	; 0xff
    1034:	4013      	ands	r3, r2
    1036:	3b7f      	subs	r3, #127	; 0x7f
    1038:	607b      	str	r3, [r7, #4]
    103a:	68bb      	ldr	r3, [r7, #8]
    103c:	025b      	lsls	r3, r3, #9
    103e:	0a5b      	lsrs	r3, r3, #9
    1040:	2280      	movs	r2, #128	; 0x80
    1042:	0412      	lsls	r2, r2, #16
    1044:	4313      	orrs	r3, r2
    1046:	603b      	str	r3, [r7, #0]
    1048:	687b      	ldr	r3, [r7, #4]
    104a:	220e      	movs	r2, #14
    104c:	1ad3      	subs	r3, r2, r3
    104e:	2201      	movs	r2, #1
    1050:	409a      	lsls	r2, r3
    1052:	0013      	movs	r3, r2
    1054:	001a      	movs	r2, r3
    1056:	683b      	ldr	r3, [r7, #0]
    1058:	18d2      	adds	r2, r2, r3
    105a:	687b      	ldr	r3, [r7, #4]
    105c:	210f      	movs	r1, #15
    105e:	1acb      	subs	r3, r1, r3
    1060:	40da      	lsrs	r2, r3
    1062:	0013      	movs	r3, r2
    1064:	e003      	b.n	106e <mdb232_bikm_get_torque+0x9a>
    1066:	2006      	movs	r0, #6
    1068:	f7ff fe5c 	bl	d24 <__NVIC_EnableIRQ>
    106c:	2300      	movs	r3, #0
    106e:	0018      	movs	r0, r3
    1070:	46bd      	mov	sp, r7
    1072:	b004      	add	sp, #16
    1074:	bd80      	pop	{r7, pc}
    1076:	46c0      	nop			; (mov r8, r8)
    1078:	200008db 	.word	0x200008db
    107c:	200008f8 	.word	0x200008f8

00001080 <UART1_Handler>:
    1080:	b580      	push	{r7, lr}
    1082:	b082      	sub	sp, #8
    1084:	af00      	add	r7, sp, #0
    1086:	4b16      	ldr	r3, [pc, #88]	; (10e0 <UART1_Handler+0x60>)
    1088:	2200      	movs	r2, #0
    108a:	601a      	str	r2, [r3, #0]
    108c:	4b15      	ldr	r3, [pc, #84]	; (10e4 <UART1_Handler+0x64>)
    108e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1090:	2240      	movs	r2, #64	; 0x40
    1092:	4013      	ands	r3, r2
    1094:	d016      	beq.n	10c4 <UART1_Handler+0x44>
    1096:	4b14      	ldr	r3, [pc, #80]	; (10e8 <UART1_Handler+0x68>)
    1098:	603b      	str	r3, [r7, #0]
    109a:	2300      	movs	r3, #0
    109c:	607b      	str	r3, [r7, #4]
    109e:	e009      	b.n	10b4 <UART1_Handler+0x34>
    10a0:	683b      	ldr	r3, [r7, #0]
    10a2:	1c5a      	adds	r2, r3, #1
    10a4:	603a      	str	r2, [r7, #0]
    10a6:	4a0f      	ldr	r2, [pc, #60]	; (10e4 <UART1_Handler+0x64>)
    10a8:	6812      	ldr	r2, [r2, #0]
    10aa:	b2d2      	uxtb	r2, r2
    10ac:	701a      	strb	r2, [r3, #0]
    10ae:	687b      	ldr	r3, [r7, #4]
    10b0:	3301      	adds	r3, #1
    10b2:	607b      	str	r3, [r7, #4]
    10b4:	687b      	ldr	r3, [r7, #4]
    10b6:	2b0f      	cmp	r3, #15
    10b8:	dc04      	bgt.n	10c4 <UART1_Handler+0x44>
    10ba:	4b0a      	ldr	r3, [pc, #40]	; (10e4 <UART1_Handler+0x64>)
    10bc:	699b      	ldr	r3, [r3, #24]
    10be:	2210      	movs	r2, #16
    10c0:	4013      	ands	r3, r2
    10c2:	d0ed      	beq.n	10a0 <UART1_Handler+0x20>
    10c4:	4b06      	ldr	r3, [pc, #24]	; (10e0 <UART1_Handler+0x60>)
    10c6:	687a      	ldr	r2, [r7, #4]
    10c8:	601a      	str	r2, [r3, #0]
    10ca:	4b08      	ldr	r3, [pc, #32]	; (10ec <UART1_Handler+0x6c>)
    10cc:	681b      	ldr	r3, [r3, #0]
    10ce:	2102      	movs	r1, #2
    10d0:	0018      	movs	r0, r3
    10d2:	f005 fa13 	bl	64fc <osSignalSet>
    10d6:	46c0      	nop			; (mov r8, r8)
    10d8:	46bd      	mov	sp, r7
    10da:	b002      	add	sp, #8
    10dc:	bd80      	pop	{r7, pc}
    10de:	46c0      	nop			; (mov r8, r8)
    10e0:	200008f8 	.word	0x200008f8
    10e4:	40030000 	.word	0x40030000
    10e8:	200008d8 	.word	0x200008d8
    10ec:	20000860 	.word	0x20000860

000010f0 <xputc>:
    10f0:	b580      	push	{r7, lr}
    10f2:	b082      	sub	sp, #8
    10f4:	af00      	add	r7, sp, #0
    10f6:	0002      	movs	r2, r0
    10f8:	1dfb      	adds	r3, r7, #7
    10fa:	701a      	strb	r2, [r3, #0]
    10fc:	1dfb      	adds	r3, r7, #7
    10fe:	781b      	ldrb	r3, [r3, #0]
    1100:	2b0a      	cmp	r3, #10
    1102:	d102      	bne.n	110a <xputc+0x1a>
    1104:	200d      	movs	r0, #13
    1106:	f7ff fff3 	bl	10f0 <xputc>
    110a:	4b0d      	ldr	r3, [pc, #52]	; (1140 <xputc+0x50>)
    110c:	681b      	ldr	r3, [r3, #0]
    110e:	2b00      	cmp	r3, #0
    1110:	d008      	beq.n	1124 <xputc+0x34>
    1112:	4b0b      	ldr	r3, [pc, #44]	; (1140 <xputc+0x50>)
    1114:	681b      	ldr	r3, [r3, #0]
    1116:	1c59      	adds	r1, r3, #1
    1118:	4a09      	ldr	r2, [pc, #36]	; (1140 <xputc+0x50>)
    111a:	6011      	str	r1, [r2, #0]
    111c:	1dfa      	adds	r2, r7, #7
    111e:	7812      	ldrb	r2, [r2, #0]
    1120:	701a      	strb	r2, [r3, #0]
    1122:	e009      	b.n	1138 <xputc+0x48>
    1124:	4b07      	ldr	r3, [pc, #28]	; (1144 <xputc+0x54>)
    1126:	681b      	ldr	r3, [r3, #0]
    1128:	2b00      	cmp	r3, #0
    112a:	d005      	beq.n	1138 <xputc+0x48>
    112c:	4b05      	ldr	r3, [pc, #20]	; (1144 <xputc+0x54>)
    112e:	681b      	ldr	r3, [r3, #0]
    1130:	1dfa      	adds	r2, r7, #7
    1132:	7812      	ldrb	r2, [r2, #0]
    1134:	0010      	movs	r0, r2
    1136:	4798      	blx	r3
    1138:	46bd      	mov	sp, r7
    113a:	b002      	add	sp, #8
    113c:	bd80      	pop	{r7, pc}
    113e:	46c0      	nop			; (mov r8, r8)
    1140:	20000900 	.word	0x20000900
    1144:	200008fc 	.word	0x200008fc

00001148 <xputs>:
    1148:	b580      	push	{r7, lr}
    114a:	b082      	sub	sp, #8
    114c:	af00      	add	r7, sp, #0
    114e:	6078      	str	r0, [r7, #4]
    1150:	e006      	b.n	1160 <xputs+0x18>
    1152:	687b      	ldr	r3, [r7, #4]
    1154:	1c5a      	adds	r2, r3, #1
    1156:	607a      	str	r2, [r7, #4]
    1158:	781b      	ldrb	r3, [r3, #0]
    115a:	0018      	movs	r0, r3
    115c:	f7ff ffc8 	bl	10f0 <xputc>
    1160:	687b      	ldr	r3, [r7, #4]
    1162:	781b      	ldrb	r3, [r3, #0]
    1164:	2b00      	cmp	r3, #0
    1166:	d1f4      	bne.n	1152 <xputs+0xa>
    1168:	46c0      	nop			; (mov r8, r8)
    116a:	46bd      	mov	sp, r7
    116c:	b002      	add	sp, #8
    116e:	bd80      	pop	{r7, pc}

00001170 <xfputs>:
    1170:	b580      	push	{r7, lr}
    1172:	b084      	sub	sp, #16
    1174:	af00      	add	r7, sp, #0
    1176:	6078      	str	r0, [r7, #4]
    1178:	6039      	str	r1, [r7, #0]
    117a:	4b0c      	ldr	r3, [pc, #48]	; (11ac <xfputs+0x3c>)
    117c:	681b      	ldr	r3, [r3, #0]
    117e:	60fb      	str	r3, [r7, #12]
    1180:	4b0a      	ldr	r3, [pc, #40]	; (11ac <xfputs+0x3c>)
    1182:	687a      	ldr	r2, [r7, #4]
    1184:	601a      	str	r2, [r3, #0]
    1186:	e006      	b.n	1196 <xfputs+0x26>
    1188:	683b      	ldr	r3, [r7, #0]
    118a:	1c5a      	adds	r2, r3, #1
    118c:	603a      	str	r2, [r7, #0]
    118e:	781b      	ldrb	r3, [r3, #0]
    1190:	0018      	movs	r0, r3
    1192:	f7ff ffad 	bl	10f0 <xputc>
    1196:	683b      	ldr	r3, [r7, #0]
    1198:	781b      	ldrb	r3, [r3, #0]
    119a:	2b00      	cmp	r3, #0
    119c:	d1f4      	bne.n	1188 <xfputs+0x18>
    119e:	4b03      	ldr	r3, [pc, #12]	; (11ac <xfputs+0x3c>)
    11a0:	68fa      	ldr	r2, [r7, #12]
    11a2:	601a      	str	r2, [r3, #0]
    11a4:	46c0      	nop			; (mov r8, r8)
    11a6:	46bd      	mov	sp, r7
    11a8:	b004      	add	sp, #16
    11aa:	bd80      	pop	{r7, pc}
    11ac:	200008fc 	.word	0x200008fc

000011b0 <xvprintf>:
    11b0:	b580      	push	{r7, lr}
    11b2:	b08e      	sub	sp, #56	; 0x38
    11b4:	af00      	add	r7, sp, #0
    11b6:	6078      	str	r0, [r7, #4]
    11b8:	6039      	str	r1, [r7, #0]
    11ba:	687b      	ldr	r3, [r7, #4]
    11bc:	1c5a      	adds	r2, r3, #1
    11be:	607a      	str	r2, [r7, #4]
    11c0:	221f      	movs	r2, #31
    11c2:	18ba      	adds	r2, r7, r2
    11c4:	781b      	ldrb	r3, [r3, #0]
    11c6:	7013      	strb	r3, [r2, #0]
    11c8:	231f      	movs	r3, #31
    11ca:	18fb      	adds	r3, r7, r3
    11cc:	781b      	ldrb	r3, [r3, #0]
    11ce:	2b00      	cmp	r3, #0
    11d0:	d100      	bne.n	11d4 <xvprintf+0x24>
    11d2:	e172      	b.n	14ba <xvprintf+0x30a>
    11d4:	231f      	movs	r3, #31
    11d6:	18fb      	adds	r3, r7, r3
    11d8:	781b      	ldrb	r3, [r3, #0]
    11da:	2b25      	cmp	r3, #37	; 0x25
    11dc:	d006      	beq.n	11ec <xvprintf+0x3c>
    11de:	231f      	movs	r3, #31
    11e0:	18fb      	adds	r3, r7, r3
    11e2:	781b      	ldrb	r3, [r3, #0]
    11e4:	0018      	movs	r0, r3
    11e6:	f7ff ff83 	bl	10f0 <xputc>
    11ea:	e165      	b.n	14b8 <xvprintf+0x308>
    11ec:	2300      	movs	r3, #0
    11ee:	627b      	str	r3, [r7, #36]	; 0x24
    11f0:	687b      	ldr	r3, [r7, #4]
    11f2:	1c5a      	adds	r2, r3, #1
    11f4:	607a      	str	r2, [r7, #4]
    11f6:	221f      	movs	r2, #31
    11f8:	18ba      	adds	r2, r7, r2
    11fa:	781b      	ldrb	r3, [r3, #0]
    11fc:	7013      	strb	r3, [r2, #0]
    11fe:	231f      	movs	r3, #31
    1200:	18fb      	adds	r3, r7, r3
    1202:	781b      	ldrb	r3, [r3, #0]
    1204:	2b30      	cmp	r3, #48	; 0x30
    1206:	d109      	bne.n	121c <xvprintf+0x6c>
    1208:	2301      	movs	r3, #1
    120a:	627b      	str	r3, [r7, #36]	; 0x24
    120c:	687b      	ldr	r3, [r7, #4]
    120e:	1c5a      	adds	r2, r3, #1
    1210:	607a      	str	r2, [r7, #4]
    1212:	221f      	movs	r2, #31
    1214:	18ba      	adds	r2, r7, r2
    1216:	781b      	ldrb	r3, [r3, #0]
    1218:	7013      	strb	r3, [r2, #0]
    121a:	e00d      	b.n	1238 <xvprintf+0x88>
    121c:	231f      	movs	r3, #31
    121e:	18fb      	adds	r3, r7, r3
    1220:	781b      	ldrb	r3, [r3, #0]
    1222:	2b2d      	cmp	r3, #45	; 0x2d
    1224:	d108      	bne.n	1238 <xvprintf+0x88>
    1226:	2302      	movs	r3, #2
    1228:	627b      	str	r3, [r7, #36]	; 0x24
    122a:	687b      	ldr	r3, [r7, #4]
    122c:	1c5a      	adds	r2, r3, #1
    122e:	607a      	str	r2, [r7, #4]
    1230:	221f      	movs	r2, #31
    1232:	18ba      	adds	r2, r7, r2
    1234:	781b      	ldrb	r3, [r3, #0]
    1236:	7013      	strb	r3, [r2, #0]
    1238:	2300      	movs	r3, #0
    123a:	62bb      	str	r3, [r7, #40]	; 0x28
    123c:	e012      	b.n	1264 <xvprintf+0xb4>
    123e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1240:	0013      	movs	r3, r2
    1242:	009b      	lsls	r3, r3, #2
    1244:	189b      	adds	r3, r3, r2
    1246:	005b      	lsls	r3, r3, #1
    1248:	001a      	movs	r2, r3
    124a:	231f      	movs	r3, #31
    124c:	18fb      	adds	r3, r7, r3
    124e:	781b      	ldrb	r3, [r3, #0]
    1250:	18d3      	adds	r3, r2, r3
    1252:	3b30      	subs	r3, #48	; 0x30
    1254:	62bb      	str	r3, [r7, #40]	; 0x28
    1256:	687b      	ldr	r3, [r7, #4]
    1258:	1c5a      	adds	r2, r3, #1
    125a:	607a      	str	r2, [r7, #4]
    125c:	221f      	movs	r2, #31
    125e:	18ba      	adds	r2, r7, r2
    1260:	781b      	ldrb	r3, [r3, #0]
    1262:	7013      	strb	r3, [r2, #0]
    1264:	231f      	movs	r3, #31
    1266:	18fb      	adds	r3, r7, r3
    1268:	781b      	ldrb	r3, [r3, #0]
    126a:	2b2f      	cmp	r3, #47	; 0x2f
    126c:	d904      	bls.n	1278 <xvprintf+0xc8>
    126e:	231f      	movs	r3, #31
    1270:	18fb      	adds	r3, r7, r3
    1272:	781b      	ldrb	r3, [r3, #0]
    1274:	2b39      	cmp	r3, #57	; 0x39
    1276:	d9e2      	bls.n	123e <xvprintf+0x8e>
    1278:	231f      	movs	r3, #31
    127a:	18fb      	adds	r3, r7, r3
    127c:	781b      	ldrb	r3, [r3, #0]
    127e:	2b6c      	cmp	r3, #108	; 0x6c
    1280:	d004      	beq.n	128c <xvprintf+0xdc>
    1282:	231f      	movs	r3, #31
    1284:	18fb      	adds	r3, r7, r3
    1286:	781b      	ldrb	r3, [r3, #0]
    1288:	2b4c      	cmp	r3, #76	; 0x4c
    128a:	d10a      	bne.n	12a2 <xvprintf+0xf2>
    128c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    128e:	2204      	movs	r2, #4
    1290:	4313      	orrs	r3, r2
    1292:	627b      	str	r3, [r7, #36]	; 0x24
    1294:	687b      	ldr	r3, [r7, #4]
    1296:	1c5a      	adds	r2, r3, #1
    1298:	607a      	str	r2, [r7, #4]
    129a:	221f      	movs	r2, #31
    129c:	18ba      	adds	r2, r7, r2
    129e:	781b      	ldrb	r3, [r3, #0]
    12a0:	7013      	strb	r3, [r2, #0]
    12a2:	231f      	movs	r3, #31
    12a4:	18fb      	adds	r3, r7, r3
    12a6:	781b      	ldrb	r3, [r3, #0]
    12a8:	2b00      	cmp	r3, #0
    12aa:	d100      	bne.n	12ae <xvprintf+0xfe>
    12ac:	e107      	b.n	14be <xvprintf+0x30e>
    12ae:	231e      	movs	r3, #30
    12b0:	18fb      	adds	r3, r7, r3
    12b2:	221f      	movs	r2, #31
    12b4:	18ba      	adds	r2, r7, r2
    12b6:	7812      	ldrb	r2, [r2, #0]
    12b8:	701a      	strb	r2, [r3, #0]
    12ba:	231e      	movs	r3, #30
    12bc:	18fb      	adds	r3, r7, r3
    12be:	781b      	ldrb	r3, [r3, #0]
    12c0:	2b60      	cmp	r3, #96	; 0x60
    12c2:	d906      	bls.n	12d2 <xvprintf+0x122>
    12c4:	231e      	movs	r3, #30
    12c6:	18fb      	adds	r3, r7, r3
    12c8:	221e      	movs	r2, #30
    12ca:	18ba      	adds	r2, r7, r2
    12cc:	7812      	ldrb	r2, [r2, #0]
    12ce:	3a20      	subs	r2, #32
    12d0:	701a      	strb	r2, [r3, #0]
    12d2:	231e      	movs	r3, #30
    12d4:	18fb      	adds	r3, r7, r3
    12d6:	781b      	ldrb	r3, [r3, #0]
    12d8:	3b42      	subs	r3, #66	; 0x42
    12da:	2b16      	cmp	r3, #22
    12dc:	d847      	bhi.n	136e <xvprintf+0x1be>
    12de:	009a      	lsls	r2, r3, #2
    12e0:	4b79      	ldr	r3, [pc, #484]	; (14c8 <xvprintf+0x318>)
    12e2:	18d3      	adds	r3, r2, r3
    12e4:	681b      	ldr	r3, [r3, #0]
    12e6:	469f      	mov	pc, r3
    12e8:	683b      	ldr	r3, [r7, #0]
    12ea:	1d1a      	adds	r2, r3, #4
    12ec:	603a      	str	r2, [r7, #0]
    12ee:	681b      	ldr	r3, [r3, #0]
    12f0:	61bb      	str	r3, [r7, #24]
    12f2:	2300      	movs	r3, #0
    12f4:	62fb      	str	r3, [r7, #44]	; 0x2c
    12f6:	e002      	b.n	12fe <xvprintf+0x14e>
    12f8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12fa:	3301      	adds	r3, #1
    12fc:	62fb      	str	r3, [r7, #44]	; 0x2c
    12fe:	69ba      	ldr	r2, [r7, #24]
    1300:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1302:	18d3      	adds	r3, r2, r3
    1304:	781b      	ldrb	r3, [r3, #0]
    1306:	2b00      	cmp	r3, #0
    1308:	d1f6      	bne.n	12f8 <xvprintf+0x148>
    130a:	e002      	b.n	1312 <xvprintf+0x162>
    130c:	2020      	movs	r0, #32
    130e:	f7ff feef 	bl	10f0 <xputc>
    1312:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1314:	2202      	movs	r2, #2
    1316:	4013      	ands	r3, r2
    1318:	d105      	bne.n	1326 <xvprintf+0x176>
    131a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    131c:	1c5a      	adds	r2, r3, #1
    131e:	62fa      	str	r2, [r7, #44]	; 0x2c
    1320:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1322:	4293      	cmp	r3, r2
    1324:	d3f2      	bcc.n	130c <xvprintf+0x15c>
    1326:	69bb      	ldr	r3, [r7, #24]
    1328:	0018      	movs	r0, r3
    132a:	f7ff ff0d 	bl	1148 <xputs>
    132e:	e002      	b.n	1336 <xvprintf+0x186>
    1330:	2020      	movs	r0, #32
    1332:	f7ff fedd 	bl	10f0 <xputc>
    1336:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1338:	1c5a      	adds	r2, r3, #1
    133a:	62fa      	str	r2, [r7, #44]	; 0x2c
    133c:	6aba      	ldr	r2, [r7, #40]	; 0x28
    133e:	4293      	cmp	r3, r2
    1340:	d3f6      	bcc.n	1330 <xvprintf+0x180>
    1342:	e0b9      	b.n	14b8 <xvprintf+0x308>
    1344:	683b      	ldr	r3, [r7, #0]
    1346:	1d1a      	adds	r2, r3, #4
    1348:	603a      	str	r2, [r7, #0]
    134a:	681b      	ldr	r3, [r3, #0]
    134c:	b2db      	uxtb	r3, r3
    134e:	0018      	movs	r0, r3
    1350:	f7ff fece 	bl	10f0 <xputc>
    1354:	e0b0      	b.n	14b8 <xvprintf+0x308>
    1356:	2302      	movs	r3, #2
    1358:	637b      	str	r3, [r7, #52]	; 0x34
    135a:	e00f      	b.n	137c <xvprintf+0x1cc>
    135c:	2308      	movs	r3, #8
    135e:	637b      	str	r3, [r7, #52]	; 0x34
    1360:	e00c      	b.n	137c <xvprintf+0x1cc>
    1362:	230a      	movs	r3, #10
    1364:	637b      	str	r3, [r7, #52]	; 0x34
    1366:	e009      	b.n	137c <xvprintf+0x1cc>
    1368:	2310      	movs	r3, #16
    136a:	637b      	str	r3, [r7, #52]	; 0x34
    136c:	e006      	b.n	137c <xvprintf+0x1cc>
    136e:	231f      	movs	r3, #31
    1370:	18fb      	adds	r3, r7, r3
    1372:	781b      	ldrb	r3, [r3, #0]
    1374:	0018      	movs	r0, r3
    1376:	f7ff febb 	bl	10f0 <xputc>
    137a:	e09d      	b.n	14b8 <xvprintf+0x308>
    137c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    137e:	2204      	movs	r2, #4
    1380:	4013      	ands	r3, r2
    1382:	d004      	beq.n	138e <xvprintf+0x1de>
    1384:	683b      	ldr	r3, [r7, #0]
    1386:	1d1a      	adds	r2, r3, #4
    1388:	603a      	str	r2, [r7, #0]
    138a:	681b      	ldr	r3, [r3, #0]
    138c:	e00d      	b.n	13aa <xvprintf+0x1fa>
    138e:	231e      	movs	r3, #30
    1390:	18fb      	adds	r3, r7, r3
    1392:	781b      	ldrb	r3, [r3, #0]
    1394:	2b44      	cmp	r3, #68	; 0x44
    1396:	d104      	bne.n	13a2 <xvprintf+0x1f2>
    1398:	683b      	ldr	r3, [r7, #0]
    139a:	1d1a      	adds	r2, r3, #4
    139c:	603a      	str	r2, [r7, #0]
    139e:	681b      	ldr	r3, [r3, #0]
    13a0:	e003      	b.n	13aa <xvprintf+0x1fa>
    13a2:	683b      	ldr	r3, [r7, #0]
    13a4:	1d1a      	adds	r2, r3, #4
    13a6:	603a      	str	r2, [r7, #0]
    13a8:	681b      	ldr	r3, [r3, #0]
    13aa:	623b      	str	r3, [r7, #32]
    13ac:	231e      	movs	r3, #30
    13ae:	18fb      	adds	r3, r7, r3
    13b0:	781b      	ldrb	r3, [r3, #0]
    13b2:	2b44      	cmp	r3, #68	; 0x44
    13b4:	d109      	bne.n	13ca <xvprintf+0x21a>
    13b6:	6a3b      	ldr	r3, [r7, #32]
    13b8:	2b00      	cmp	r3, #0
    13ba:	da06      	bge.n	13ca <xvprintf+0x21a>
    13bc:	6a3b      	ldr	r3, [r7, #32]
    13be:	425b      	negs	r3, r3
    13c0:	623b      	str	r3, [r7, #32]
    13c2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13c4:	2208      	movs	r2, #8
    13c6:	4313      	orrs	r3, r2
    13c8:	627b      	str	r3, [r7, #36]	; 0x24
    13ca:	2300      	movs	r3, #0
    13cc:	633b      	str	r3, [r7, #48]	; 0x30
    13ce:	6a3b      	ldr	r3, [r7, #32]
    13d0:	6b79      	ldr	r1, [r7, #52]	; 0x34
    13d2:	0018      	movs	r0, r3
    13d4:	f003 f9ba 	bl	474c <__aeabi_uidivmod>
    13d8:	000b      	movs	r3, r1
    13da:	001a      	movs	r2, r3
    13dc:	231e      	movs	r3, #30
    13de:	18fb      	adds	r3, r7, r3
    13e0:	701a      	strb	r2, [r3, #0]
    13e2:	6b79      	ldr	r1, [r7, #52]	; 0x34
    13e4:	6a38      	ldr	r0, [r7, #32]
    13e6:	f003 f92b 	bl	4640 <__aeabi_uidiv>
    13ea:	0003      	movs	r3, r0
    13ec:	623b      	str	r3, [r7, #32]
    13ee:	231e      	movs	r3, #30
    13f0:	18fb      	adds	r3, r7, r3
    13f2:	781b      	ldrb	r3, [r3, #0]
    13f4:	2b09      	cmp	r3, #9
    13f6:	d90e      	bls.n	1416 <xvprintf+0x266>
    13f8:	231f      	movs	r3, #31
    13fa:	18fb      	adds	r3, r7, r3
    13fc:	781b      	ldrb	r3, [r3, #0]
    13fe:	2b78      	cmp	r3, #120	; 0x78
    1400:	d101      	bne.n	1406 <xvprintf+0x256>
    1402:	2327      	movs	r3, #39	; 0x27
    1404:	e000      	b.n	1408 <xvprintf+0x258>
    1406:	2307      	movs	r3, #7
    1408:	221e      	movs	r2, #30
    140a:	18ba      	adds	r2, r7, r2
    140c:	211e      	movs	r1, #30
    140e:	1879      	adds	r1, r7, r1
    1410:	7809      	ldrb	r1, [r1, #0]
    1412:	185b      	adds	r3, r3, r1
    1414:	7013      	strb	r3, [r2, #0]
    1416:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1418:	1c5a      	adds	r2, r3, #1
    141a:	633a      	str	r2, [r7, #48]	; 0x30
    141c:	221e      	movs	r2, #30
    141e:	18ba      	adds	r2, r7, r2
    1420:	7812      	ldrb	r2, [r2, #0]
    1422:	3230      	adds	r2, #48	; 0x30
    1424:	b2d1      	uxtb	r1, r2
    1426:	2208      	movs	r2, #8
    1428:	18ba      	adds	r2, r7, r2
    142a:	54d1      	strb	r1, [r2, r3]
    142c:	6a3b      	ldr	r3, [r7, #32]
    142e:	2b00      	cmp	r3, #0
    1430:	d002      	beq.n	1438 <xvprintf+0x288>
    1432:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1434:	2b0f      	cmp	r3, #15
    1436:	d9ca      	bls.n	13ce <xvprintf+0x21e>
    1438:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    143a:	2208      	movs	r2, #8
    143c:	4013      	ands	r3, r2
    143e:	d006      	beq.n	144e <xvprintf+0x29e>
    1440:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1442:	1c5a      	adds	r2, r3, #1
    1444:	633a      	str	r2, [r7, #48]	; 0x30
    1446:	2208      	movs	r2, #8
    1448:	18ba      	adds	r2, r7, r2
    144a:	212d      	movs	r1, #45	; 0x2d
    144c:	54d1      	strb	r1, [r2, r3]
    144e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1450:	62fb      	str	r3, [r7, #44]	; 0x2c
    1452:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1454:	2201      	movs	r2, #1
    1456:	4013      	ands	r3, r2
    1458:	d001      	beq.n	145e <xvprintf+0x2ae>
    145a:	2230      	movs	r2, #48	; 0x30
    145c:	e000      	b.n	1460 <xvprintf+0x2b0>
    145e:	2220      	movs	r2, #32
    1460:	231e      	movs	r3, #30
    1462:	18fb      	adds	r3, r7, r3
    1464:	701a      	strb	r2, [r3, #0]
    1466:	e005      	b.n	1474 <xvprintf+0x2c4>
    1468:	231e      	movs	r3, #30
    146a:	18fb      	adds	r3, r7, r3
    146c:	781b      	ldrb	r3, [r3, #0]
    146e:	0018      	movs	r0, r3
    1470:	f7ff fe3e 	bl	10f0 <xputc>
    1474:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1476:	2202      	movs	r2, #2
    1478:	4013      	ands	r3, r2
    147a:	d105      	bne.n	1488 <xvprintf+0x2d8>
    147c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    147e:	1c5a      	adds	r2, r3, #1
    1480:	62fa      	str	r2, [r7, #44]	; 0x2c
    1482:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1484:	4293      	cmp	r3, r2
    1486:	d3ef      	bcc.n	1468 <xvprintf+0x2b8>
    1488:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    148a:	3b01      	subs	r3, #1
    148c:	633b      	str	r3, [r7, #48]	; 0x30
    148e:	2308      	movs	r3, #8
    1490:	18fa      	adds	r2, r7, r3
    1492:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1494:	18d3      	adds	r3, r2, r3
    1496:	781b      	ldrb	r3, [r3, #0]
    1498:	0018      	movs	r0, r3
    149a:	f7ff fe29 	bl	10f0 <xputc>
    149e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14a0:	2b00      	cmp	r3, #0
    14a2:	d1f1      	bne.n	1488 <xvprintf+0x2d8>
    14a4:	e002      	b.n	14ac <xvprintf+0x2fc>
    14a6:	2020      	movs	r0, #32
    14a8:	f7ff fe22 	bl	10f0 <xputc>
    14ac:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14ae:	1c5a      	adds	r2, r3, #1
    14b0:	62fa      	str	r2, [r7, #44]	; 0x2c
    14b2:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14b4:	4293      	cmp	r3, r2
    14b6:	d3f6      	bcc.n	14a6 <xvprintf+0x2f6>
    14b8:	e67f      	b.n	11ba <xvprintf+0xa>
    14ba:	46c0      	nop			; (mov r8, r8)
    14bc:	e000      	b.n	14c0 <xvprintf+0x310>
    14be:	46c0      	nop			; (mov r8, r8)
    14c0:	46c0      	nop			; (mov r8, r8)
    14c2:	46bd      	mov	sp, r7
    14c4:	b00e      	add	sp, #56	; 0x38
    14c6:	bd80      	pop	{r7, pc}
    14c8:	00008828 	.word	0x00008828

000014cc <xprintf>:
    14cc:	b40f      	push	{r0, r1, r2, r3}
    14ce:	b580      	push	{r7, lr}
    14d0:	b082      	sub	sp, #8
    14d2:	af00      	add	r7, sp, #0
    14d4:	2314      	movs	r3, #20
    14d6:	18fb      	adds	r3, r7, r3
    14d8:	607b      	str	r3, [r7, #4]
    14da:	687a      	ldr	r2, [r7, #4]
    14dc:	693b      	ldr	r3, [r7, #16]
    14de:	0011      	movs	r1, r2
    14e0:	0018      	movs	r0, r3
    14e2:	f7ff fe65 	bl	11b0 <xvprintf>
    14e6:	46c0      	nop			; (mov r8, r8)
    14e8:	46bd      	mov	sp, r7
    14ea:	b002      	add	sp, #8
    14ec:	bc80      	pop	{r7}
    14ee:	bc08      	pop	{r3}
    14f0:	b004      	add	sp, #16
    14f2:	4718      	bx	r3

000014f4 <xsprintf>:
    14f4:	b40e      	push	{r1, r2, r3}
    14f6:	b580      	push	{r7, lr}
    14f8:	b085      	sub	sp, #20
    14fa:	af00      	add	r7, sp, #0
    14fc:	6078      	str	r0, [r7, #4]
    14fe:	4b0d      	ldr	r3, [pc, #52]	; (1534 <xsprintf+0x40>)
    1500:	687a      	ldr	r2, [r7, #4]
    1502:	601a      	str	r2, [r3, #0]
    1504:	2320      	movs	r3, #32
    1506:	18fb      	adds	r3, r7, r3
    1508:	60fb      	str	r3, [r7, #12]
    150a:	68fa      	ldr	r2, [r7, #12]
    150c:	69fb      	ldr	r3, [r7, #28]
    150e:	0011      	movs	r1, r2
    1510:	0018      	movs	r0, r3
    1512:	f7ff fe4d 	bl	11b0 <xvprintf>
    1516:	4b07      	ldr	r3, [pc, #28]	; (1534 <xsprintf+0x40>)
    1518:	681b      	ldr	r3, [r3, #0]
    151a:	2200      	movs	r2, #0
    151c:	701a      	strb	r2, [r3, #0]
    151e:	4b05      	ldr	r3, [pc, #20]	; (1534 <xsprintf+0x40>)
    1520:	2200      	movs	r2, #0
    1522:	601a      	str	r2, [r3, #0]
    1524:	46c0      	nop			; (mov r8, r8)
    1526:	46bd      	mov	sp, r7
    1528:	b005      	add	sp, #20
    152a:	bc80      	pop	{r7}
    152c:	bc08      	pop	{r3}
    152e:	b003      	add	sp, #12
    1530:	4718      	bx	r3
    1532:	46c0      	nop			; (mov r8, r8)
    1534:	20000900 	.word	0x20000900

00001538 <xfprintf>:
    1538:	b40e      	push	{r1, r2, r3}
    153a:	b580      	push	{r7, lr}
    153c:	b085      	sub	sp, #20
    153e:	af00      	add	r7, sp, #0
    1540:	6078      	str	r0, [r7, #4]
    1542:	4b0c      	ldr	r3, [pc, #48]	; (1574 <xfprintf+0x3c>)
    1544:	681b      	ldr	r3, [r3, #0]
    1546:	60fb      	str	r3, [r7, #12]
    1548:	4b0a      	ldr	r3, [pc, #40]	; (1574 <xfprintf+0x3c>)
    154a:	687a      	ldr	r2, [r7, #4]
    154c:	601a      	str	r2, [r3, #0]
    154e:	2320      	movs	r3, #32
    1550:	18fb      	adds	r3, r7, r3
    1552:	60bb      	str	r3, [r7, #8]
    1554:	68ba      	ldr	r2, [r7, #8]
    1556:	69fb      	ldr	r3, [r7, #28]
    1558:	0011      	movs	r1, r2
    155a:	0018      	movs	r0, r3
    155c:	f7ff fe28 	bl	11b0 <xvprintf>
    1560:	4b04      	ldr	r3, [pc, #16]	; (1574 <xfprintf+0x3c>)
    1562:	68fa      	ldr	r2, [r7, #12]
    1564:	601a      	str	r2, [r3, #0]
    1566:	46c0      	nop			; (mov r8, r8)
    1568:	46bd      	mov	sp, r7
    156a:	b005      	add	sp, #20
    156c:	bc80      	pop	{r7}
    156e:	bc08      	pop	{r3}
    1570:	b003      	add	sp, #12
    1572:	4718      	bx	r3
    1574:	200008fc 	.word	0x200008fc

00001578 <put_dump>:
    1578:	b580      	push	{r7, lr}
    157a:	b088      	sub	sp, #32
    157c:	af00      	add	r7, sp, #0
    157e:	60f8      	str	r0, [r7, #12]
    1580:	60b9      	str	r1, [r7, #8]
    1582:	607a      	str	r2, [r7, #4]
    1584:	603b      	str	r3, [r7, #0]
    1586:	68ba      	ldr	r2, [r7, #8]
    1588:	4b38      	ldr	r3, [pc, #224]	; (166c <put_dump+0xf4>)
    158a:	0011      	movs	r1, r2
    158c:	0018      	movs	r0, r3
    158e:	f7ff ff9d 	bl	14cc <xprintf>
    1592:	683b      	ldr	r3, [r7, #0]
    1594:	2b02      	cmp	r3, #2
    1596:	d03c      	beq.n	1612 <put_dump+0x9a>
    1598:	2b04      	cmp	r3, #4
    159a:	d04d      	beq.n	1638 <put_dump+0xc0>
    159c:	2b01      	cmp	r3, #1
    159e:	d15d      	bne.n	165c <put_dump+0xe4>
    15a0:	68fb      	ldr	r3, [r7, #12]
    15a2:	613b      	str	r3, [r7, #16]
    15a4:	2300      	movs	r3, #0
    15a6:	61fb      	str	r3, [r7, #28]
    15a8:	e00c      	b.n	15c4 <put_dump+0x4c>
    15aa:	69fb      	ldr	r3, [r7, #28]
    15ac:	693a      	ldr	r2, [r7, #16]
    15ae:	18d3      	adds	r3, r2, r3
    15b0:	781b      	ldrb	r3, [r3, #0]
    15b2:	001a      	movs	r2, r3
    15b4:	4b2e      	ldr	r3, [pc, #184]	; (1670 <put_dump+0xf8>)
    15b6:	0011      	movs	r1, r2
    15b8:	0018      	movs	r0, r3
    15ba:	f7ff ff87 	bl	14cc <xprintf>
    15be:	69fb      	ldr	r3, [r7, #28]
    15c0:	3301      	adds	r3, #1
    15c2:	61fb      	str	r3, [r7, #28]
    15c4:	69fa      	ldr	r2, [r7, #28]
    15c6:	687b      	ldr	r3, [r7, #4]
    15c8:	429a      	cmp	r2, r3
    15ca:	dbee      	blt.n	15aa <put_dump+0x32>
    15cc:	2020      	movs	r0, #32
    15ce:	f7ff fd8f 	bl	10f0 <xputc>
    15d2:	2300      	movs	r3, #0
    15d4:	61fb      	str	r3, [r7, #28]
    15d6:	e017      	b.n	1608 <put_dump+0x90>
    15d8:	69fb      	ldr	r3, [r7, #28]
    15da:	693a      	ldr	r2, [r7, #16]
    15dc:	18d3      	adds	r3, r2, r3
    15de:	781b      	ldrb	r3, [r3, #0]
    15e0:	2b1f      	cmp	r3, #31
    15e2:	d90a      	bls.n	15fa <put_dump+0x82>
    15e4:	69fb      	ldr	r3, [r7, #28]
    15e6:	693a      	ldr	r2, [r7, #16]
    15e8:	18d3      	adds	r3, r2, r3
    15ea:	781b      	ldrb	r3, [r3, #0]
    15ec:	2b7e      	cmp	r3, #126	; 0x7e
    15ee:	d804      	bhi.n	15fa <put_dump+0x82>
    15f0:	69fb      	ldr	r3, [r7, #28]
    15f2:	693a      	ldr	r2, [r7, #16]
    15f4:	18d3      	adds	r3, r2, r3
    15f6:	781b      	ldrb	r3, [r3, #0]
    15f8:	e000      	b.n	15fc <put_dump+0x84>
    15fa:	232e      	movs	r3, #46	; 0x2e
    15fc:	0018      	movs	r0, r3
    15fe:	f7ff fd77 	bl	10f0 <xputc>
    1602:	69fb      	ldr	r3, [r7, #28]
    1604:	3301      	adds	r3, #1
    1606:	61fb      	str	r3, [r7, #28]
    1608:	69fa      	ldr	r2, [r7, #28]
    160a:	687b      	ldr	r3, [r7, #4]
    160c:	429a      	cmp	r2, r3
    160e:	dbe3      	blt.n	15d8 <put_dump+0x60>
    1610:	e024      	b.n	165c <put_dump+0xe4>
    1612:	68fb      	ldr	r3, [r7, #12]
    1614:	61bb      	str	r3, [r7, #24]
    1616:	69bb      	ldr	r3, [r7, #24]
    1618:	1c9a      	adds	r2, r3, #2
    161a:	61ba      	str	r2, [r7, #24]
    161c:	881b      	ldrh	r3, [r3, #0]
    161e:	001a      	movs	r2, r3
    1620:	4b14      	ldr	r3, [pc, #80]	; (1674 <put_dump+0xfc>)
    1622:	0011      	movs	r1, r2
    1624:	0018      	movs	r0, r3
    1626:	f7ff ff51 	bl	14cc <xprintf>
    162a:	687b      	ldr	r3, [r7, #4]
    162c:	3b01      	subs	r3, #1
    162e:	607b      	str	r3, [r7, #4]
    1630:	687b      	ldr	r3, [r7, #4]
    1632:	2b00      	cmp	r3, #0
    1634:	d1ef      	bne.n	1616 <put_dump+0x9e>
    1636:	e011      	b.n	165c <put_dump+0xe4>
    1638:	68fb      	ldr	r3, [r7, #12]
    163a:	617b      	str	r3, [r7, #20]
    163c:	697b      	ldr	r3, [r7, #20]
    163e:	1d1a      	adds	r2, r3, #4
    1640:	617a      	str	r2, [r7, #20]
    1642:	681a      	ldr	r2, [r3, #0]
    1644:	4b0c      	ldr	r3, [pc, #48]	; (1678 <put_dump+0x100>)
    1646:	0011      	movs	r1, r2
    1648:	0018      	movs	r0, r3
    164a:	f7ff ff3f 	bl	14cc <xprintf>
    164e:	687b      	ldr	r3, [r7, #4]
    1650:	3b01      	subs	r3, #1
    1652:	607b      	str	r3, [r7, #4]
    1654:	687b      	ldr	r3, [r7, #4]
    1656:	2b00      	cmp	r3, #0
    1658:	d1f0      	bne.n	163c <put_dump+0xc4>
    165a:	46c0      	nop			; (mov r8, r8)
    165c:	200a      	movs	r0, #10
    165e:	f7ff fd47 	bl	10f0 <xputc>
    1662:	46c0      	nop			; (mov r8, r8)
    1664:	46bd      	mov	sp, r7
    1666:	b008      	add	sp, #32
    1668:	bd80      	pop	{r7, pc}
    166a:	46c0      	nop			; (mov r8, r8)
    166c:	00008884 	.word	0x00008884
    1670:	0000888c 	.word	0x0000888c
    1674:	00008894 	.word	0x00008894
    1678:	0000889c 	.word	0x0000889c

0000167c <xgets>:
    167c:	b580      	push	{r7, lr}
    167e:	b084      	sub	sp, #16
    1680:	af00      	add	r7, sp, #0
    1682:	6078      	str	r0, [r7, #4]
    1684:	6039      	str	r1, [r7, #0]
    1686:	4b24      	ldr	r3, [pc, #144]	; (1718 <xgets+0x9c>)
    1688:	681b      	ldr	r3, [r3, #0]
    168a:	2b00      	cmp	r3, #0
    168c:	d101      	bne.n	1692 <xgets+0x16>
    168e:	2300      	movs	r3, #0
    1690:	e03e      	b.n	1710 <xgets+0x94>
    1692:	2300      	movs	r3, #0
    1694:	60fb      	str	r3, [r7, #12]
    1696:	4b20      	ldr	r3, [pc, #128]	; (1718 <xgets+0x9c>)
    1698:	681b      	ldr	r3, [r3, #0]
    169a:	4798      	blx	r3
    169c:	0003      	movs	r3, r0
    169e:	60bb      	str	r3, [r7, #8]
    16a0:	68bb      	ldr	r3, [r7, #8]
    16a2:	2b00      	cmp	r3, #0
    16a4:	d101      	bne.n	16aa <xgets+0x2e>
    16a6:	2300      	movs	r3, #0
    16a8:	e032      	b.n	1710 <xgets+0x94>
    16aa:	68bb      	ldr	r3, [r7, #8]
    16ac:	2b0d      	cmp	r3, #13
    16ae:	d025      	beq.n	16fc <xgets+0x80>
    16b0:	68bb      	ldr	r3, [r7, #8]
    16b2:	2b08      	cmp	r3, #8
    16b4:	d10b      	bne.n	16ce <xgets+0x52>
    16b6:	68fb      	ldr	r3, [r7, #12]
    16b8:	2b00      	cmp	r3, #0
    16ba:	d008      	beq.n	16ce <xgets+0x52>
    16bc:	68fb      	ldr	r3, [r7, #12]
    16be:	3b01      	subs	r3, #1
    16c0:	60fb      	str	r3, [r7, #12]
    16c2:	68bb      	ldr	r3, [r7, #8]
    16c4:	b2db      	uxtb	r3, r3
    16c6:	0018      	movs	r0, r3
    16c8:	f7ff fd12 	bl	10f0 <xputc>
    16cc:	e015      	b.n	16fa <xgets+0x7e>
    16ce:	68bb      	ldr	r3, [r7, #8]
    16d0:	2b1f      	cmp	r3, #31
    16d2:	dde0      	ble.n	1696 <xgets+0x1a>
    16d4:	683b      	ldr	r3, [r7, #0]
    16d6:	1e5a      	subs	r2, r3, #1
    16d8:	68fb      	ldr	r3, [r7, #12]
    16da:	429a      	cmp	r2, r3
    16dc:	dddb      	ble.n	1696 <xgets+0x1a>
    16de:	68fb      	ldr	r3, [r7, #12]
    16e0:	1c5a      	adds	r2, r3, #1
    16e2:	60fa      	str	r2, [r7, #12]
    16e4:	001a      	movs	r2, r3
    16e6:	687b      	ldr	r3, [r7, #4]
    16e8:	189b      	adds	r3, r3, r2
    16ea:	68ba      	ldr	r2, [r7, #8]
    16ec:	b2d2      	uxtb	r2, r2
    16ee:	701a      	strb	r2, [r3, #0]
    16f0:	68bb      	ldr	r3, [r7, #8]
    16f2:	b2db      	uxtb	r3, r3
    16f4:	0018      	movs	r0, r3
    16f6:	f7ff fcfb 	bl	10f0 <xputc>
    16fa:	e7cc      	b.n	1696 <xgets+0x1a>
    16fc:	46c0      	nop			; (mov r8, r8)
    16fe:	68fb      	ldr	r3, [r7, #12]
    1700:	687a      	ldr	r2, [r7, #4]
    1702:	18d3      	adds	r3, r2, r3
    1704:	2200      	movs	r2, #0
    1706:	701a      	strb	r2, [r3, #0]
    1708:	200a      	movs	r0, #10
    170a:	f7ff fcf1 	bl	10f0 <xputc>
    170e:	2301      	movs	r3, #1
    1710:	0018      	movs	r0, r3
    1712:	46bd      	mov	sp, r7
    1714:	b004      	add	sp, #16
    1716:	bd80      	pop	{r7, pc}
    1718:	20000904 	.word	0x20000904

0000171c <xfgets>:
    171c:	b580      	push	{r7, lr}
    171e:	b086      	sub	sp, #24
    1720:	af00      	add	r7, sp, #0
    1722:	60f8      	str	r0, [r7, #12]
    1724:	60b9      	str	r1, [r7, #8]
    1726:	607a      	str	r2, [r7, #4]
    1728:	4b0a      	ldr	r3, [pc, #40]	; (1754 <xfgets+0x38>)
    172a:	681b      	ldr	r3, [r3, #0]
    172c:	617b      	str	r3, [r7, #20]
    172e:	4b09      	ldr	r3, [pc, #36]	; (1754 <xfgets+0x38>)
    1730:	68fa      	ldr	r2, [r7, #12]
    1732:	601a      	str	r2, [r3, #0]
    1734:	687a      	ldr	r2, [r7, #4]
    1736:	68bb      	ldr	r3, [r7, #8]
    1738:	0011      	movs	r1, r2
    173a:	0018      	movs	r0, r3
    173c:	f7ff ff9e 	bl	167c <xgets>
    1740:	0003      	movs	r3, r0
    1742:	613b      	str	r3, [r7, #16]
    1744:	4b03      	ldr	r3, [pc, #12]	; (1754 <xfgets+0x38>)
    1746:	697a      	ldr	r2, [r7, #20]
    1748:	601a      	str	r2, [r3, #0]
    174a:	693b      	ldr	r3, [r7, #16]
    174c:	0018      	movs	r0, r3
    174e:	46bd      	mov	sp, r7
    1750:	b006      	add	sp, #24
    1752:	bd80      	pop	{r7, pc}
    1754:	20000904 	.word	0x20000904

00001758 <xatoi>:
    1758:	b580      	push	{r7, lr}
    175a:	b084      	sub	sp, #16
    175c:	af00      	add	r7, sp, #0
    175e:	6078      	str	r0, [r7, #4]
    1760:	6039      	str	r1, [r7, #0]
    1762:	2309      	movs	r3, #9
    1764:	18fb      	adds	r3, r7, r3
    1766:	2200      	movs	r2, #0
    1768:	701a      	strb	r2, [r3, #0]
    176a:	683b      	ldr	r3, [r7, #0]
    176c:	2200      	movs	r2, #0
    176e:	601a      	str	r2, [r3, #0]
    1770:	e004      	b.n	177c <xatoi+0x24>
    1772:	687b      	ldr	r3, [r7, #4]
    1774:	681b      	ldr	r3, [r3, #0]
    1776:	1c5a      	adds	r2, r3, #1
    1778:	687b      	ldr	r3, [r7, #4]
    177a:	601a      	str	r2, [r3, #0]
    177c:	687b      	ldr	r3, [r7, #4]
    177e:	681a      	ldr	r2, [r3, #0]
    1780:	230b      	movs	r3, #11
    1782:	18fb      	adds	r3, r7, r3
    1784:	7812      	ldrb	r2, [r2, #0]
    1786:	701a      	strb	r2, [r3, #0]
    1788:	230b      	movs	r3, #11
    178a:	18fb      	adds	r3, r7, r3
    178c:	781b      	ldrb	r3, [r3, #0]
    178e:	2b20      	cmp	r3, #32
    1790:	d0ef      	beq.n	1772 <xatoi+0x1a>
    1792:	230b      	movs	r3, #11
    1794:	18fb      	adds	r3, r7, r3
    1796:	781b      	ldrb	r3, [r3, #0]
    1798:	2b2d      	cmp	r3, #45	; 0x2d
    179a:	d10e      	bne.n	17ba <xatoi+0x62>
    179c:	2309      	movs	r3, #9
    179e:	18fb      	adds	r3, r7, r3
    17a0:	2201      	movs	r2, #1
    17a2:	701a      	strb	r2, [r3, #0]
    17a4:	687b      	ldr	r3, [r7, #4]
    17a6:	681b      	ldr	r3, [r3, #0]
    17a8:	1c5a      	adds	r2, r3, #1
    17aa:	687b      	ldr	r3, [r7, #4]
    17ac:	601a      	str	r2, [r3, #0]
    17ae:	687b      	ldr	r3, [r7, #4]
    17b0:	681a      	ldr	r2, [r3, #0]
    17b2:	230b      	movs	r3, #11
    17b4:	18fb      	adds	r3, r7, r3
    17b6:	7812      	ldrb	r2, [r2, #0]
    17b8:	701a      	strb	r2, [r3, #0]
    17ba:	230b      	movs	r3, #11
    17bc:	18fb      	adds	r3, r7, r3
    17be:	781b      	ldrb	r3, [r3, #0]
    17c0:	2b30      	cmp	r3, #48	; 0x30
    17c2:	d149      	bne.n	1858 <xatoi+0x100>
    17c4:	687b      	ldr	r3, [r7, #4]
    17c6:	681b      	ldr	r3, [r3, #0]
    17c8:	1c5a      	adds	r2, r3, #1
    17ca:	687b      	ldr	r3, [r7, #4]
    17cc:	601a      	str	r2, [r3, #0]
    17ce:	687b      	ldr	r3, [r7, #4]
    17d0:	681a      	ldr	r2, [r3, #0]
    17d2:	230b      	movs	r3, #11
    17d4:	18fb      	adds	r3, r7, r3
    17d6:	7812      	ldrb	r2, [r2, #0]
    17d8:	701a      	strb	r2, [r3, #0]
    17da:	230b      	movs	r3, #11
    17dc:	18fb      	adds	r3, r7, r3
    17de:	781b      	ldrb	r3, [r3, #0]
    17e0:	2b62      	cmp	r3, #98	; 0x62
    17e2:	d011      	beq.n	1808 <xatoi+0xb0>
    17e4:	2b78      	cmp	r3, #120	; 0x78
    17e6:	d11f      	bne.n	1828 <xatoi+0xd0>
    17e8:	230a      	movs	r3, #10
    17ea:	18fb      	adds	r3, r7, r3
    17ec:	2210      	movs	r2, #16
    17ee:	701a      	strb	r2, [r3, #0]
    17f0:	687b      	ldr	r3, [r7, #4]
    17f2:	681b      	ldr	r3, [r3, #0]
    17f4:	1c5a      	adds	r2, r3, #1
    17f6:	687b      	ldr	r3, [r7, #4]
    17f8:	601a      	str	r2, [r3, #0]
    17fa:	687b      	ldr	r3, [r7, #4]
    17fc:	681a      	ldr	r2, [r3, #0]
    17fe:	230b      	movs	r3, #11
    1800:	18fb      	adds	r3, r7, r3
    1802:	7812      	ldrb	r2, [r2, #0]
    1804:	701a      	strb	r2, [r3, #0]
    1806:	e037      	b.n	1878 <xatoi+0x120>
    1808:	230a      	movs	r3, #10
    180a:	18fb      	adds	r3, r7, r3
    180c:	2202      	movs	r2, #2
    180e:	701a      	strb	r2, [r3, #0]
    1810:	687b      	ldr	r3, [r7, #4]
    1812:	681b      	ldr	r3, [r3, #0]
    1814:	1c5a      	adds	r2, r3, #1
    1816:	687b      	ldr	r3, [r7, #4]
    1818:	601a      	str	r2, [r3, #0]
    181a:	687b      	ldr	r3, [r7, #4]
    181c:	681a      	ldr	r2, [r3, #0]
    181e:	230b      	movs	r3, #11
    1820:	18fb      	adds	r3, r7, r3
    1822:	7812      	ldrb	r2, [r2, #0]
    1824:	701a      	strb	r2, [r3, #0]
    1826:	e027      	b.n	1878 <xatoi+0x120>
    1828:	230b      	movs	r3, #11
    182a:	18fb      	adds	r3, r7, r3
    182c:	781b      	ldrb	r3, [r3, #0]
    182e:	2b20      	cmp	r3, #32
    1830:	d801      	bhi.n	1836 <xatoi+0xde>
    1832:	2301      	movs	r3, #1
    1834:	e079      	b.n	192a <xatoi+0x1d2>
    1836:	230b      	movs	r3, #11
    1838:	18fb      	adds	r3, r7, r3
    183a:	781b      	ldrb	r3, [r3, #0]
    183c:	2b2f      	cmp	r3, #47	; 0x2f
    183e:	d904      	bls.n	184a <xatoi+0xf2>
    1840:	230b      	movs	r3, #11
    1842:	18fb      	adds	r3, r7, r3
    1844:	781b      	ldrb	r3, [r3, #0]
    1846:	2b39      	cmp	r3, #57	; 0x39
    1848:	d901      	bls.n	184e <xatoi+0xf6>
    184a:	2300      	movs	r3, #0
    184c:	e06d      	b.n	192a <xatoi+0x1d2>
    184e:	230a      	movs	r3, #10
    1850:	18fb      	adds	r3, r7, r3
    1852:	2208      	movs	r2, #8
    1854:	701a      	strb	r2, [r3, #0]
    1856:	e00f      	b.n	1878 <xatoi+0x120>
    1858:	230b      	movs	r3, #11
    185a:	18fb      	adds	r3, r7, r3
    185c:	781b      	ldrb	r3, [r3, #0]
    185e:	2b2f      	cmp	r3, #47	; 0x2f
    1860:	d904      	bls.n	186c <xatoi+0x114>
    1862:	230b      	movs	r3, #11
    1864:	18fb      	adds	r3, r7, r3
    1866:	781b      	ldrb	r3, [r3, #0]
    1868:	2b39      	cmp	r3, #57	; 0x39
    186a:	d901      	bls.n	1870 <xatoi+0x118>
    186c:	2300      	movs	r3, #0
    186e:	e05c      	b.n	192a <xatoi+0x1d2>
    1870:	230a      	movs	r3, #10
    1872:	18fb      	adds	r3, r7, r3
    1874:	220a      	movs	r2, #10
    1876:	701a      	strb	r2, [r3, #0]
    1878:	2300      	movs	r3, #0
    187a:	60fb      	str	r3, [r7, #12]
    187c:	e044      	b.n	1908 <xatoi+0x1b0>
    187e:	230b      	movs	r3, #11
    1880:	18fb      	adds	r3, r7, r3
    1882:	781b      	ldrb	r3, [r3, #0]
    1884:	2b60      	cmp	r3, #96	; 0x60
    1886:	d906      	bls.n	1896 <xatoi+0x13e>
    1888:	230b      	movs	r3, #11
    188a:	18fb      	adds	r3, r7, r3
    188c:	220b      	movs	r2, #11
    188e:	18ba      	adds	r2, r7, r2
    1890:	7812      	ldrb	r2, [r2, #0]
    1892:	3a20      	subs	r2, #32
    1894:	701a      	strb	r2, [r3, #0]
    1896:	230b      	movs	r3, #11
    1898:	18fb      	adds	r3, r7, r3
    189a:	220b      	movs	r2, #11
    189c:	18ba      	adds	r2, r7, r2
    189e:	7812      	ldrb	r2, [r2, #0]
    18a0:	3a30      	subs	r2, #48	; 0x30
    18a2:	701a      	strb	r2, [r3, #0]
    18a4:	230b      	movs	r3, #11
    18a6:	18fb      	adds	r3, r7, r3
    18a8:	781b      	ldrb	r3, [r3, #0]
    18aa:	2b10      	cmp	r3, #16
    18ac:	d90d      	bls.n	18ca <xatoi+0x172>
    18ae:	230b      	movs	r3, #11
    18b0:	18fb      	adds	r3, r7, r3
    18b2:	220b      	movs	r2, #11
    18b4:	18ba      	adds	r2, r7, r2
    18b6:	7812      	ldrb	r2, [r2, #0]
    18b8:	3a07      	subs	r2, #7
    18ba:	701a      	strb	r2, [r3, #0]
    18bc:	230b      	movs	r3, #11
    18be:	18fb      	adds	r3, r7, r3
    18c0:	781b      	ldrb	r3, [r3, #0]
    18c2:	2b09      	cmp	r3, #9
    18c4:	d801      	bhi.n	18ca <xatoi+0x172>
    18c6:	2300      	movs	r3, #0
    18c8:	e02f      	b.n	192a <xatoi+0x1d2>
    18ca:	230b      	movs	r3, #11
    18cc:	18fa      	adds	r2, r7, r3
    18ce:	230a      	movs	r3, #10
    18d0:	18fb      	adds	r3, r7, r3
    18d2:	7812      	ldrb	r2, [r2, #0]
    18d4:	781b      	ldrb	r3, [r3, #0]
    18d6:	429a      	cmp	r2, r3
    18d8:	d301      	bcc.n	18de <xatoi+0x186>
    18da:	2300      	movs	r3, #0
    18dc:	e025      	b.n	192a <xatoi+0x1d2>
    18de:	230a      	movs	r3, #10
    18e0:	18fb      	adds	r3, r7, r3
    18e2:	781b      	ldrb	r3, [r3, #0]
    18e4:	68fa      	ldr	r2, [r7, #12]
    18e6:	435a      	muls	r2, r3
    18e8:	230b      	movs	r3, #11
    18ea:	18fb      	adds	r3, r7, r3
    18ec:	781b      	ldrb	r3, [r3, #0]
    18ee:	18d3      	adds	r3, r2, r3
    18f0:	60fb      	str	r3, [r7, #12]
    18f2:	687b      	ldr	r3, [r7, #4]
    18f4:	681b      	ldr	r3, [r3, #0]
    18f6:	1c5a      	adds	r2, r3, #1
    18f8:	687b      	ldr	r3, [r7, #4]
    18fa:	601a      	str	r2, [r3, #0]
    18fc:	687b      	ldr	r3, [r7, #4]
    18fe:	681a      	ldr	r2, [r3, #0]
    1900:	230b      	movs	r3, #11
    1902:	18fb      	adds	r3, r7, r3
    1904:	7812      	ldrb	r2, [r2, #0]
    1906:	701a      	strb	r2, [r3, #0]
    1908:	230b      	movs	r3, #11
    190a:	18fb      	adds	r3, r7, r3
    190c:	781b      	ldrb	r3, [r3, #0]
    190e:	2b20      	cmp	r3, #32
    1910:	d8b5      	bhi.n	187e <xatoi+0x126>
    1912:	2309      	movs	r3, #9
    1914:	18fb      	adds	r3, r7, r3
    1916:	781b      	ldrb	r3, [r3, #0]
    1918:	2b00      	cmp	r3, #0
    191a:	d002      	beq.n	1922 <xatoi+0x1ca>
    191c:	68fb      	ldr	r3, [r7, #12]
    191e:	425b      	negs	r3, r3
    1920:	60fb      	str	r3, [r7, #12]
    1922:	68fa      	ldr	r2, [r7, #12]
    1924:	683b      	ldr	r3, [r7, #0]
    1926:	601a      	str	r2, [r3, #0]
    1928:	2301      	movs	r3, #1
    192a:	0018      	movs	r0, r3
    192c:	46bd      	mov	sp, r7
    192e:	b004      	add	sp, #16
    1930:	bd80      	pop	{r7, pc}
    1932:	46c0      	nop			; (mov r8, r8)

00001934 <os_idle_demon>:
    1934:	b580      	push	{r7, lr}
    1936:	af00      	add	r7, sp, #0
    1938:	e7fe      	b.n	1938 <os_idle_demon+0x4>
    193a:	46c0      	nop			; (mov r8, r8)

0000193c <os_error>:
    193c:	b580      	push	{r7, lr}
    193e:	b082      	sub	sp, #8
    1940:	af00      	add	r7, sp, #0
    1942:	6078      	str	r0, [r7, #4]
    1944:	687b      	ldr	r3, [r7, #4]
    1946:	2b02      	cmp	r3, #2
    1948:	d009      	beq.n	195e <os_error+0x22>
    194a:	d802      	bhi.n	1952 <os_error+0x16>
    194c:	2b01      	cmp	r3, #1
    194e:	d005      	beq.n	195c <os_error+0x20>
    1950:	e008      	b.n	1964 <os_error+0x28>
    1952:	2b03      	cmp	r3, #3
    1954:	d004      	beq.n	1960 <os_error+0x24>
    1956:	2b04      	cmp	r3, #4
    1958:	d003      	beq.n	1962 <os_error+0x26>
    195a:	e003      	b.n	1964 <os_error+0x28>
    195c:	e002      	b.n	1964 <os_error+0x28>
    195e:	e001      	b.n	1964 <os_error+0x28>
    1960:	e000      	b.n	1964 <os_error+0x28>
    1962:	46c0      	nop			; (mov r8, r8)
    1964:	e7fe      	b.n	1964 <os_error+0x28>
    1966:	46c0      	nop			; (mov r8, r8)

00001968 <software_init_hook>:
    1968:	2000      	movs	r0, #0
    196a:	2100      	movs	r1, #0
    196c:	4604      	mov	r4, r0
    196e:	460d      	mov	r5, r1
    1970:	4808      	ldr	r0, [pc, #32]	; (1994 <software_init_hook+0x2c>)
    1972:	f003 f9bb 	bl	4cec <atexit>
    1976:	f003 f9eb 	bl	4d50 <__libc_init_array>
    197a:	4620      	mov	r0, r4
    197c:	4629      	mov	r1, r5
    197e:	f004 f879 	bl	5a74 <osKernelInitialize>
    1982:	4805      	ldr	r0, [pc, #20]	; (1998 <software_init_hook+0x30>)
    1984:	2100      	movs	r1, #0
    1986:	f004 fa07 	bl	5d98 <osThreadCreate>
    198a:	f004 f90f 	bl	5bac <osKernelStart>
    198e:	f003 f9b5 	bl	4cfc <exit>
    1992:	0000      	.short	0x0000
    1994:	00004d1d 	.word	0x00004d1d
    1998:	000088fc 	.word	0x000088fc

0000199c <__NVIC_EnableIRQ>:
    199c:	b580      	push	{r7, lr}
    199e:	b082      	sub	sp, #8
    19a0:	af00      	add	r7, sp, #0
    19a2:	0002      	movs	r2, r0
    19a4:	1dfb      	adds	r3, r7, #7
    19a6:	701a      	strb	r2, [r3, #0]
    19a8:	1dfb      	adds	r3, r7, #7
    19aa:	781b      	ldrb	r3, [r3, #0]
    19ac:	2b7f      	cmp	r3, #127	; 0x7f
    19ae:	d809      	bhi.n	19c4 <__NVIC_EnableIRQ+0x28>
    19b0:	4b06      	ldr	r3, [pc, #24]	; (19cc <__NVIC_EnableIRQ+0x30>)
    19b2:	1dfa      	adds	r2, r7, #7
    19b4:	7812      	ldrb	r2, [r2, #0]
    19b6:	0011      	movs	r1, r2
    19b8:	221f      	movs	r2, #31
    19ba:	400a      	ands	r2, r1
    19bc:	2101      	movs	r1, #1
    19be:	4091      	lsls	r1, r2
    19c0:	000a      	movs	r2, r1
    19c2:	601a      	str	r2, [r3, #0]
    19c4:	46c0      	nop			; (mov r8, r8)
    19c6:	46bd      	mov	sp, r7
    19c8:	b002      	add	sp, #8
    19ca:	bd80      	pop	{r7, pc}
    19cc:	e000e100 	.word	0xe000e100

000019d0 <__NVIC_ClearPendingIRQ>:
    19d0:	b580      	push	{r7, lr}
    19d2:	b082      	sub	sp, #8
    19d4:	af00      	add	r7, sp, #0
    19d6:	0002      	movs	r2, r0
    19d8:	1dfb      	adds	r3, r7, #7
    19da:	701a      	strb	r2, [r3, #0]
    19dc:	1dfb      	adds	r3, r7, #7
    19de:	781b      	ldrb	r3, [r3, #0]
    19e0:	2b7f      	cmp	r3, #127	; 0x7f
    19e2:	d80a      	bhi.n	19fa <__NVIC_ClearPendingIRQ+0x2a>
    19e4:	4907      	ldr	r1, [pc, #28]	; (1a04 <__NVIC_ClearPendingIRQ+0x34>)
    19e6:	1dfb      	adds	r3, r7, #7
    19e8:	781b      	ldrb	r3, [r3, #0]
    19ea:	001a      	movs	r2, r3
    19ec:	231f      	movs	r3, #31
    19ee:	4013      	ands	r3, r2
    19f0:	2201      	movs	r2, #1
    19f2:	409a      	lsls	r2, r3
    19f4:	23c0      	movs	r3, #192	; 0xc0
    19f6:	005b      	lsls	r3, r3, #1
    19f8:	50ca      	str	r2, [r1, r3]
    19fa:	46c0      	nop			; (mov r8, r8)
    19fc:	46bd      	mov	sp, r7
    19fe:	b002      	add	sp, #8
    1a00:	bd80      	pop	{r7, pc}
    1a02:	46c0      	nop			; (mov r8, r8)
    1a04:	e000e100 	.word	0xe000e100

00001a08 <__NVIC_SetPriority>:
    1a08:	b5b0      	push	{r4, r5, r7, lr}
    1a0a:	b082      	sub	sp, #8
    1a0c:	af00      	add	r7, sp, #0
    1a0e:	0002      	movs	r2, r0
    1a10:	6039      	str	r1, [r7, #0]
    1a12:	1dfb      	adds	r3, r7, #7
    1a14:	701a      	strb	r2, [r3, #0]
    1a16:	1dfb      	adds	r3, r7, #7
    1a18:	781b      	ldrb	r3, [r3, #0]
    1a1a:	2b7f      	cmp	r3, #127	; 0x7f
    1a1c:	d828      	bhi.n	1a70 <__NVIC_SetPriority+0x68>
    1a1e:	4c2f      	ldr	r4, [pc, #188]	; (1adc <__NVIC_SetPriority+0xd4>)
    1a20:	1dfb      	adds	r3, r7, #7
    1a22:	781b      	ldrb	r3, [r3, #0]
    1a24:	b25b      	sxtb	r3, r3
    1a26:	089b      	lsrs	r3, r3, #2
    1a28:	492c      	ldr	r1, [pc, #176]	; (1adc <__NVIC_SetPriority+0xd4>)
    1a2a:	1dfa      	adds	r2, r7, #7
    1a2c:	7812      	ldrb	r2, [r2, #0]
    1a2e:	b252      	sxtb	r2, r2
    1a30:	0892      	lsrs	r2, r2, #2
    1a32:	32c0      	adds	r2, #192	; 0xc0
    1a34:	0092      	lsls	r2, r2, #2
    1a36:	5852      	ldr	r2, [r2, r1]
    1a38:	1df9      	adds	r1, r7, #7
    1a3a:	7809      	ldrb	r1, [r1, #0]
    1a3c:	0008      	movs	r0, r1
    1a3e:	2103      	movs	r1, #3
    1a40:	4001      	ands	r1, r0
    1a42:	00c9      	lsls	r1, r1, #3
    1a44:	20ff      	movs	r0, #255	; 0xff
    1a46:	4088      	lsls	r0, r1
    1a48:	0001      	movs	r1, r0
    1a4a:	43c9      	mvns	r1, r1
    1a4c:	4011      	ands	r1, r2
    1a4e:	683a      	ldr	r2, [r7, #0]
    1a50:	0192      	lsls	r2, r2, #6
    1a52:	20ff      	movs	r0, #255	; 0xff
    1a54:	4010      	ands	r0, r2
    1a56:	1dfa      	adds	r2, r7, #7
    1a58:	7812      	ldrb	r2, [r2, #0]
    1a5a:	0015      	movs	r5, r2
    1a5c:	2203      	movs	r2, #3
    1a5e:	402a      	ands	r2, r5
    1a60:	00d2      	lsls	r2, r2, #3
    1a62:	4090      	lsls	r0, r2
    1a64:	0002      	movs	r2, r0
    1a66:	430a      	orrs	r2, r1
    1a68:	33c0      	adds	r3, #192	; 0xc0
    1a6a:	009b      	lsls	r3, r3, #2
    1a6c:	511a      	str	r2, [r3, r4]
    1a6e:	e031      	b.n	1ad4 <__NVIC_SetPriority+0xcc>
    1a70:	4c1b      	ldr	r4, [pc, #108]	; (1ae0 <__NVIC_SetPriority+0xd8>)
    1a72:	1dfb      	adds	r3, r7, #7
    1a74:	781b      	ldrb	r3, [r3, #0]
    1a76:	001a      	movs	r2, r3
    1a78:	230f      	movs	r3, #15
    1a7a:	4013      	ands	r3, r2
    1a7c:	3b08      	subs	r3, #8
    1a7e:	0899      	lsrs	r1, r3, #2
    1a80:	4a17      	ldr	r2, [pc, #92]	; (1ae0 <__NVIC_SetPriority+0xd8>)
    1a82:	1dfb      	adds	r3, r7, #7
    1a84:	781b      	ldrb	r3, [r3, #0]
    1a86:	0018      	movs	r0, r3
    1a88:	230f      	movs	r3, #15
    1a8a:	4003      	ands	r3, r0
    1a8c:	3b08      	subs	r3, #8
    1a8e:	089b      	lsrs	r3, r3, #2
    1a90:	3306      	adds	r3, #6
    1a92:	009b      	lsls	r3, r3, #2
    1a94:	18d3      	adds	r3, r2, r3
    1a96:	3304      	adds	r3, #4
    1a98:	681b      	ldr	r3, [r3, #0]
    1a9a:	1dfa      	adds	r2, r7, #7
    1a9c:	7812      	ldrb	r2, [r2, #0]
    1a9e:	0010      	movs	r0, r2
    1aa0:	2203      	movs	r2, #3
    1aa2:	4002      	ands	r2, r0
    1aa4:	00d2      	lsls	r2, r2, #3
    1aa6:	20ff      	movs	r0, #255	; 0xff
    1aa8:	4090      	lsls	r0, r2
    1aaa:	0002      	movs	r2, r0
    1aac:	43d2      	mvns	r2, r2
    1aae:	401a      	ands	r2, r3
    1ab0:	683b      	ldr	r3, [r7, #0]
    1ab2:	019b      	lsls	r3, r3, #6
    1ab4:	20ff      	movs	r0, #255	; 0xff
    1ab6:	4018      	ands	r0, r3
    1ab8:	1dfb      	adds	r3, r7, #7
    1aba:	781b      	ldrb	r3, [r3, #0]
    1abc:	001d      	movs	r5, r3
    1abe:	2303      	movs	r3, #3
    1ac0:	402b      	ands	r3, r5
    1ac2:	00db      	lsls	r3, r3, #3
    1ac4:	4098      	lsls	r0, r3
    1ac6:	0003      	movs	r3, r0
    1ac8:	431a      	orrs	r2, r3
    1aca:	1d8b      	adds	r3, r1, #6
    1acc:	009b      	lsls	r3, r3, #2
    1ace:	18e3      	adds	r3, r4, r3
    1ad0:	3304      	adds	r3, #4
    1ad2:	601a      	str	r2, [r3, #0]
    1ad4:	46c0      	nop			; (mov r8, r8)
    1ad6:	46bd      	mov	sp, r7
    1ad8:	b002      	add	sp, #8
    1ada:	bdb0      	pop	{r4, r5, r7, pc}
    1adc:	e000e100 	.word	0xe000e100
    1ae0:	e000ed00 	.word	0xe000ed00

00001ae4 <PortConfig>:
    1ae4:	b580      	push	{r7, lr}
    1ae6:	af00      	add	r7, sp, #0
    1ae8:	4b44      	ldr	r3, [pc, #272]	; (1bfc <PortConfig+0x118>)
    1aea:	4a44      	ldr	r2, [pc, #272]	; (1bfc <PortConfig+0x118>)
    1aec:	68d2      	ldr	r2, [r2, #12]
    1aee:	21de      	movs	r1, #222	; 0xde
    1af0:	0209      	lsls	r1, r1, #8
    1af2:	430a      	orrs	r2, r1
    1af4:	60da      	str	r2, [r3, #12]
    1af6:	4b41      	ldr	r3, [pc, #260]	; (1bfc <PortConfig+0x118>)
    1af8:	4a40      	ldr	r2, [pc, #256]	; (1bfc <PortConfig+0x118>)
    1afa:	6812      	ldr	r2, [r2, #0]
    1afc:	4940      	ldr	r1, [pc, #256]	; (1c00 <PortConfig+0x11c>)
    1afe:	400a      	ands	r2, r1
    1b00:	601a      	str	r2, [r3, #0]
    1b02:	4b3e      	ldr	r3, [pc, #248]	; (1bfc <PortConfig+0x118>)
    1b04:	4a3d      	ldr	r2, [pc, #244]	; (1bfc <PortConfig+0x118>)
    1b06:	6852      	ldr	r2, [r2, #4]
    1b08:	21de      	movs	r1, #222	; 0xde
    1b0a:	0209      	lsls	r1, r1, #8
    1b0c:	430a      	orrs	r2, r1
    1b0e:	605a      	str	r2, [r3, #4]
    1b10:	4b3a      	ldr	r3, [pc, #232]	; (1bfc <PortConfig+0x118>)
    1b12:	4a3a      	ldr	r2, [pc, #232]	; (1bfc <PortConfig+0x118>)
    1b14:	6992      	ldr	r2, [r2, #24]
    1b16:	493b      	ldr	r1, [pc, #236]	; (1c04 <PortConfig+0x120>)
    1b18:	430a      	orrs	r2, r1
    1b1a:	619a      	str	r2, [r3, #24]
    1b1c:	4b37      	ldr	r3, [pc, #220]	; (1bfc <PortConfig+0x118>)
    1b1e:	4a37      	ldr	r2, [pc, #220]	; (1bfc <PortConfig+0x118>)
    1b20:	68d2      	ldr	r2, [r2, #12]
    1b22:	21ff      	movs	r1, #255	; 0xff
    1b24:	0049      	lsls	r1, r1, #1
    1b26:	430a      	orrs	r2, r1
    1b28:	60da      	str	r2, [r3, #12]
    1b2a:	4b34      	ldr	r3, [pc, #208]	; (1bfc <PortConfig+0x118>)
    1b2c:	4a33      	ldr	r2, [pc, #204]	; (1bfc <PortConfig+0x118>)
    1b2e:	6812      	ldr	r2, [r2, #0]
    1b30:	4935      	ldr	r1, [pc, #212]	; (1c08 <PortConfig+0x124>)
    1b32:	400a      	ands	r2, r1
    1b34:	601a      	str	r2, [r3, #0]
    1b36:	4b31      	ldr	r3, [pc, #196]	; (1bfc <PortConfig+0x118>)
    1b38:	4a30      	ldr	r2, [pc, #192]	; (1bfc <PortConfig+0x118>)
    1b3a:	6852      	ldr	r2, [r2, #4]
    1b3c:	21ff      	movs	r1, #255	; 0xff
    1b3e:	0049      	lsls	r1, r1, #1
    1b40:	430a      	orrs	r2, r1
    1b42:	605a      	str	r2, [r3, #4]
    1b44:	4b2d      	ldr	r3, [pc, #180]	; (1bfc <PortConfig+0x118>)
    1b46:	4a2d      	ldr	r2, [pc, #180]	; (1bfc <PortConfig+0x118>)
    1b48:	6992      	ldr	r2, [r2, #24]
    1b4a:	4930      	ldr	r1, [pc, #192]	; (1c0c <PortConfig+0x128>)
    1b4c:	430a      	orrs	r2, r1
    1b4e:	619a      	str	r2, [r3, #24]
    1b50:	4b2f      	ldr	r3, [pc, #188]	; (1c10 <PortConfig+0x12c>)
    1b52:	4a2f      	ldr	r2, [pc, #188]	; (1c10 <PortConfig+0x12c>)
    1b54:	6892      	ldr	r2, [r2, #8]
    1b56:	21a0      	movs	r1, #160	; 0xa0
    1b58:	0549      	lsls	r1, r1, #21
    1b5a:	430a      	orrs	r2, r1
    1b5c:	609a      	str	r2, [r3, #8]
    1b5e:	4b2c      	ldr	r3, [pc, #176]	; (1c10 <PortConfig+0x12c>)
    1b60:	4a2b      	ldr	r2, [pc, #172]	; (1c10 <PortConfig+0x12c>)
    1b62:	68d2      	ldr	r2, [r2, #12]
    1b64:	21e0      	movs	r1, #224	; 0xe0
    1b66:	0209      	lsls	r1, r1, #8
    1b68:	430a      	orrs	r2, r1
    1b6a:	60da      	str	r2, [r3, #12]
    1b6c:	4b28      	ldr	r3, [pc, #160]	; (1c10 <PortConfig+0x12c>)
    1b6e:	4a28      	ldr	r2, [pc, #160]	; (1c10 <PortConfig+0x12c>)
    1b70:	6992      	ldr	r2, [r2, #24]
    1b72:	21fc      	movs	r1, #252	; 0xfc
    1b74:	0609      	lsls	r1, r1, #24
    1b76:	430a      	orrs	r2, r1
    1b78:	619a      	str	r2, [r3, #24]
    1b7a:	4b25      	ldr	r3, [pc, #148]	; (1c10 <PortConfig+0x12c>)
    1b7c:	4a24      	ldr	r2, [pc, #144]	; (1c10 <PortConfig+0x12c>)
    1b7e:	6812      	ldr	r2, [r2, #0]
    1b80:	4924      	ldr	r1, [pc, #144]	; (1c14 <PortConfig+0x130>)
    1b82:	400a      	ands	r2, r1
    1b84:	601a      	str	r2, [r3, #0]
    1b86:	4b22      	ldr	r3, [pc, #136]	; (1c10 <PortConfig+0x12c>)
    1b88:	4a21      	ldr	r2, [pc, #132]	; (1c10 <PortConfig+0x12c>)
    1b8a:	6852      	ldr	r2, [r2, #4]
    1b8c:	2180      	movs	r1, #128	; 0x80
    1b8e:	0209      	lsls	r1, r1, #8
    1b90:	430a      	orrs	r2, r1
    1b92:	605a      	str	r2, [r3, #4]
    1b94:	4b20      	ldr	r3, [pc, #128]	; (1c18 <PortConfig+0x134>)
    1b96:	4a20      	ldr	r2, [pc, #128]	; (1c18 <PortConfig+0x134>)
    1b98:	6892      	ldr	r2, [r2, #8]
    1b9a:	4920      	ldr	r1, [pc, #128]	; (1c1c <PortConfig+0x138>)
    1b9c:	400a      	ands	r2, r1
    1b9e:	609a      	str	r2, [r3, #8]
    1ba0:	4b1d      	ldr	r3, [pc, #116]	; (1c18 <PortConfig+0x134>)
    1ba2:	4a1d      	ldr	r2, [pc, #116]	; (1c18 <PortConfig+0x134>)
    1ba4:	6892      	ldr	r2, [r2, #8]
    1ba6:	21a0      	movs	r1, #160	; 0xa0
    1ba8:	0049      	lsls	r1, r1, #1
    1baa:	430a      	orrs	r2, r1
    1bac:	609a      	str	r2, [r3, #8]
    1bae:	4b1a      	ldr	r3, [pc, #104]	; (1c18 <PortConfig+0x134>)
    1bb0:	4a19      	ldr	r2, [pc, #100]	; (1c18 <PortConfig+0x134>)
    1bb2:	68d2      	ldr	r2, [r2, #12]
    1bb4:	2118      	movs	r1, #24
    1bb6:	430a      	orrs	r2, r1
    1bb8:	60da      	str	r2, [r3, #12]
    1bba:	4b17      	ldr	r3, [pc, #92]	; (1c18 <PortConfig+0x134>)
    1bbc:	4a16      	ldr	r2, [pc, #88]	; (1c18 <PortConfig+0x134>)
    1bbe:	6992      	ldr	r2, [r2, #24]
    1bc0:	21f0      	movs	r1, #240	; 0xf0
    1bc2:	0089      	lsls	r1, r1, #2
    1bc4:	430a      	orrs	r2, r1
    1bc6:	619a      	str	r2, [r3, #24]
    1bc8:	4b13      	ldr	r3, [pc, #76]	; (1c18 <PortConfig+0x134>)
    1bca:	4a13      	ldr	r2, [pc, #76]	; (1c18 <PortConfig+0x134>)
    1bcc:	6812      	ldr	r2, [r2, #0]
    1bce:	2118      	movs	r1, #24
    1bd0:	438a      	bics	r2, r1
    1bd2:	601a      	str	r2, [r3, #0]
    1bd4:	4b10      	ldr	r3, [pc, #64]	; (1c18 <PortConfig+0x134>)
    1bd6:	4a10      	ldr	r2, [pc, #64]	; (1c18 <PortConfig+0x134>)
    1bd8:	68d2      	ldr	r2, [r2, #12]
    1bda:	2120      	movs	r1, #32
    1bdc:	430a      	orrs	r2, r1
    1bde:	60da      	str	r2, [r3, #12]
    1be0:	4b0d      	ldr	r3, [pc, #52]	; (1c18 <PortConfig+0x134>)
    1be2:	4a0d      	ldr	r2, [pc, #52]	; (1c18 <PortConfig+0x134>)
    1be4:	6892      	ldr	r2, [r2, #8]
    1be6:	2180      	movs	r1, #128	; 0x80
    1be8:	00c9      	lsls	r1, r1, #3
    1bea:	430a      	orrs	r2, r1
    1bec:	609a      	str	r2, [r3, #8]
    1bee:	201c      	movs	r0, #28
    1bf0:	f7ff feee 	bl	19d0 <__NVIC_ClearPendingIRQ>
    1bf4:	46c0      	nop			; (mov r8, r8)
    1bf6:	46bd      	mov	sp, r7
    1bf8:	bd80      	pop	{r7, pc}
    1bfa:	46c0      	nop			; (mov r8, r8)
    1bfc:	400b0000 	.word	0x400b0000
    1c00:	ffff21ff 	.word	0xffff21ff
    1c04:	f3fc0000 	.word	0xf3fc0000
    1c08:	fffffe01 	.word	0xfffffe01
    1c0c:	0003fffc 	.word	0x0003fffc
    1c10:	400c0000 	.word	0x400c0000
    1c14:	ffff1fff 	.word	0xffff1fff
    1c18:	400b8000 	.word	0x400b8000
    1c1c:	fffffc3f 	.word	0xfffffc3f

00001c20 <ClkConfig>:
    1c20:	b580      	push	{r7, lr}
    1c22:	af00      	add	r7, sp, #0
    1c24:	4b4b      	ldr	r3, [pc, #300]	; (1d54 <ClkConfig+0x134>)
    1c26:	2280      	movs	r2, #128	; 0x80
    1c28:	0092      	lsls	r2, r2, #2
    1c2a:	619a      	str	r2, [r3, #24]
    1c2c:	4b4a      	ldr	r3, [pc, #296]	; (1d58 <ClkConfig+0x138>)
    1c2e:	4a4a      	ldr	r2, [pc, #296]	; (1d58 <ClkConfig+0x138>)
    1c30:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1c32:	2118      	movs	r1, #24
    1c34:	430a      	orrs	r2, r1
    1c36:	63da      	str	r2, [r3, #60]	; 0x3c
    1c38:	4b47      	ldr	r3, [pc, #284]	; (1d58 <ClkConfig+0x138>)
    1c3a:	4a48      	ldr	r2, [pc, #288]	; (1d5c <ClkConfig+0x13c>)
    1c3c:	649a      	str	r2, [r3, #72]	; 0x48
    1c3e:	4b46      	ldr	r3, [pc, #280]	; (1d58 <ClkConfig+0x138>)
    1c40:	2201      	movs	r2, #1
    1c42:	645a      	str	r2, [r3, #68]	; 0x44
    1c44:	4b43      	ldr	r3, [pc, #268]	; (1d54 <ClkConfig+0x134>)
    1c46:	4a43      	ldr	r2, [pc, #268]	; (1d54 <ClkConfig+0x134>)
    1c48:	6892      	ldr	r2, [r2, #8]
    1c4a:	2105      	movs	r1, #5
    1c4c:	430a      	orrs	r2, r1
    1c4e:	609a      	str	r2, [r3, #8]
    1c50:	46c0      	nop			; (mov r8, r8)
    1c52:	4b40      	ldr	r3, [pc, #256]	; (1d54 <ClkConfig+0x134>)
    1c54:	681b      	ldr	r3, [r3, #0]
    1c56:	220c      	movs	r2, #12
    1c58:	4013      	ands	r3, r2
    1c5a:	2b0c      	cmp	r3, #12
    1c5c:	d1f9      	bne.n	1c52 <ClkConfig+0x32>
    1c5e:	4b3d      	ldr	r3, [pc, #244]	; (1d54 <ClkConfig+0x134>)
    1c60:	4a3c      	ldr	r2, [pc, #240]	; (1d54 <ClkConfig+0x134>)
    1c62:	68d2      	ldr	r2, [r2, #12]
    1c64:	2102      	movs	r1, #2
    1c66:	430a      	orrs	r2, r1
    1c68:	60da      	str	r2, [r3, #12]
    1c6a:	4b3a      	ldr	r3, [pc, #232]	; (1d54 <ClkConfig+0x134>)
    1c6c:	4a3c      	ldr	r2, [pc, #240]	; (1d60 <ClkConfig+0x140>)
    1c6e:	605a      	str	r2, [r3, #4]
    1c70:	46c0      	nop			; (mov r8, r8)
    1c72:	4b38      	ldr	r3, [pc, #224]	; (1d54 <ClkConfig+0x134>)
    1c74:	681b      	ldr	r3, [r3, #0]
    1c76:	2202      	movs	r2, #2
    1c78:	4013      	ands	r3, r2
    1c7a:	d0fa      	beq.n	1c72 <ClkConfig+0x52>
    1c7c:	4b35      	ldr	r3, [pc, #212]	; (1d54 <ClkConfig+0x134>)
    1c7e:	4a35      	ldr	r2, [pc, #212]	; (1d54 <ClkConfig+0x134>)
    1c80:	69d2      	ldr	r2, [r2, #28]
    1c82:	2108      	movs	r1, #8
    1c84:	430a      	orrs	r2, r1
    1c86:	61da      	str	r2, [r3, #28]
    1c88:	4b36      	ldr	r3, [pc, #216]	; (1d64 <ClkConfig+0x144>)
    1c8a:	4a36      	ldr	r2, [pc, #216]	; (1d64 <ClkConfig+0x144>)
    1c8c:	6812      	ldr	r2, [r2, #0]
    1c8e:	2118      	movs	r1, #24
    1c90:	430a      	orrs	r2, r1
    1c92:	601a      	str	r2, [r3, #0]
    1c94:	4b2f      	ldr	r3, [pc, #188]	; (1d54 <ClkConfig+0x134>)
    1c96:	4a2f      	ldr	r2, [pc, #188]	; (1d54 <ClkConfig+0x134>)
    1c98:	69d2      	ldr	r2, [r2, #28]
    1c9a:	2108      	movs	r1, #8
    1c9c:	438a      	bics	r2, r1
    1c9e:	61da      	str	r2, [r3, #28]
    1ca0:	4b2c      	ldr	r3, [pc, #176]	; (1d54 <ClkConfig+0x134>)
    1ca2:	4a2c      	ldr	r2, [pc, #176]	; (1d54 <ClkConfig+0x134>)
    1ca4:	68d2      	ldr	r2, [r2, #12]
    1ca6:	2180      	movs	r1, #128	; 0x80
    1ca8:	0049      	lsls	r1, r1, #1
    1caa:	430a      	orrs	r2, r1
    1cac:	60da      	str	r2, [r3, #12]
    1cae:	4b29      	ldr	r3, [pc, #164]	; (1d54 <ClkConfig+0x134>)
    1cb0:	4a28      	ldr	r2, [pc, #160]	; (1d54 <ClkConfig+0x134>)
    1cb2:	68d2      	ldr	r2, [r2, #12]
    1cb4:	2104      	movs	r1, #4
    1cb6:	430a      	orrs	r2, r1
    1cb8:	60da      	str	r2, [r3, #12]
    1cba:	4b26      	ldr	r3, [pc, #152]	; (1d54 <ClkConfig+0x134>)
    1cbc:	22e4      	movs	r2, #228	; 0xe4
    1cbe:	0592      	lsls	r2, r2, #22
    1cc0:	635a      	str	r2, [r3, #52]	; 0x34
    1cc2:	4b24      	ldr	r3, [pc, #144]	; (1d54 <ClkConfig+0x134>)
    1cc4:	4a23      	ldr	r2, [pc, #140]	; (1d54 <ClkConfig+0x134>)
    1cc6:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cc8:	2180      	movs	r1, #128	; 0x80
    1cca:	0449      	lsls	r1, r1, #17
    1ccc:	430a      	orrs	r2, r1
    1cce:	625a      	str	r2, [r3, #36]	; 0x24
    1cd0:	4b20      	ldr	r3, [pc, #128]	; (1d54 <ClkConfig+0x134>)
    1cd2:	4a20      	ldr	r2, [pc, #128]	; (1d54 <ClkConfig+0x134>)
    1cd4:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cd6:	21ff      	movs	r1, #255	; 0xff
    1cd8:	438a      	bics	r2, r1
    1cda:	625a      	str	r2, [r3, #36]	; 0x24
    1cdc:	4b1d      	ldr	r3, [pc, #116]	; (1d54 <ClkConfig+0x134>)
    1cde:	4a1d      	ldr	r2, [pc, #116]	; (1d54 <ClkConfig+0x134>)
    1ce0:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1ce2:	2180      	movs	r1, #128	; 0x80
    1ce4:	0489      	lsls	r1, r1, #18
    1ce6:	430a      	orrs	r2, r1
    1ce8:	625a      	str	r2, [r3, #36]	; 0x24
    1cea:	4b1a      	ldr	r3, [pc, #104]	; (1d54 <ClkConfig+0x134>)
    1cec:	4a19      	ldr	r2, [pc, #100]	; (1d54 <ClkConfig+0x134>)
    1cee:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cf0:	491d      	ldr	r1, [pc, #116]	; (1d68 <ClkConfig+0x148>)
    1cf2:	400a      	ands	r2, r1
    1cf4:	625a      	str	r2, [r3, #36]	; 0x24
    1cf6:	4b17      	ldr	r3, [pc, #92]	; (1d54 <ClkConfig+0x134>)
    1cf8:	4a16      	ldr	r2, [pc, #88]	; (1d54 <ClkConfig+0x134>)
    1cfa:	69d2      	ldr	r2, [r2, #28]
    1cfc:	491b      	ldr	r1, [pc, #108]	; (1d6c <ClkConfig+0x14c>)
    1cfe:	430a      	orrs	r2, r1
    1d00:	61da      	str	r2, [r3, #28]
    1d02:	4b14      	ldr	r3, [pc, #80]	; (1d54 <ClkConfig+0x134>)
    1d04:	4a13      	ldr	r2, [pc, #76]	; (1d54 <ClkConfig+0x134>)
    1d06:	69d2      	ldr	r2, [r2, #28]
    1d08:	2180      	movs	r1, #128	; 0x80
    1d0a:	430a      	orrs	r2, r1
    1d0c:	61da      	str	r2, [r3, #28]
    1d0e:	4b11      	ldr	r3, [pc, #68]	; (1d54 <ClkConfig+0x134>)
    1d10:	4a10      	ldr	r2, [pc, #64]	; (1d54 <ClkConfig+0x134>)
    1d12:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d14:	2180      	movs	r1, #128	; 0x80
    1d16:	0489      	lsls	r1, r1, #18
    1d18:	430a      	orrs	r2, r1
    1d1a:	629a      	str	r2, [r3, #40]	; 0x28
    1d1c:	4b0d      	ldr	r3, [pc, #52]	; (1d54 <ClkConfig+0x134>)
    1d1e:	4a0d      	ldr	r2, [pc, #52]	; (1d54 <ClkConfig+0x134>)
    1d20:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d22:	4911      	ldr	r1, [pc, #68]	; (1d68 <ClkConfig+0x148>)
    1d24:	400a      	ands	r2, r1
    1d26:	629a      	str	r2, [r3, #40]	; 0x28
    1d28:	4b0a      	ldr	r3, [pc, #40]	; (1d54 <ClkConfig+0x134>)
    1d2a:	4a0a      	ldr	r2, [pc, #40]	; (1d54 <ClkConfig+0x134>)
    1d2c:	69d2      	ldr	r2, [r2, #28]
    1d2e:	2140      	movs	r1, #64	; 0x40
    1d30:	430a      	orrs	r2, r1
    1d32:	61da      	str	r2, [r3, #28]
    1d34:	4b07      	ldr	r3, [pc, #28]	; (1d54 <ClkConfig+0x134>)
    1d36:	4a07      	ldr	r2, [pc, #28]	; (1d54 <ClkConfig+0x134>)
    1d38:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d3a:	2180      	movs	r1, #128	; 0x80
    1d3c:	0449      	lsls	r1, r1, #17
    1d3e:	430a      	orrs	r2, r1
    1d40:	629a      	str	r2, [r3, #40]	; 0x28
    1d42:	4b04      	ldr	r3, [pc, #16]	; (1d54 <ClkConfig+0x134>)
    1d44:	4a03      	ldr	r2, [pc, #12]	; (1d54 <ClkConfig+0x134>)
    1d46:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d48:	21ff      	movs	r1, #255	; 0xff
    1d4a:	438a      	bics	r2, r1
    1d4c:	629a      	str	r2, [r3, #40]	; 0x28
    1d4e:	46c0      	nop			; (mov r8, r8)
    1d50:	46bd      	mov	sp, r7
    1d52:	bd80      	pop	{r7, pc}
    1d54:	40020000 	.word	0x40020000
    1d58:	400d8000 	.word	0x400d8000
    1d5c:	000fffff 	.word	0x000fffff
    1d60:	00000b04 	.word	0x00000b04
    1d64:	40018000 	.word	0x40018000
    1d68:	ffff00ff 	.word	0xffff00ff
    1d6c:	03c0c000 	.word	0x03c0c000

00001d70 <TimerConfig>:
    1d70:	b580      	push	{r7, lr}
    1d72:	af00      	add	r7, sp, #0
    1d74:	4b19      	ldr	r3, [pc, #100]	; (1ddc <TimerConfig+0x6c>)
    1d76:	2200      	movs	r2, #0
    1d78:	601a      	str	r2, [r3, #0]
    1d7a:	4b18      	ldr	r3, [pc, #96]	; (1ddc <TimerConfig+0x6c>)
    1d7c:	225f      	movs	r2, #95	; 0x5f
    1d7e:	605a      	str	r2, [r3, #4]
    1d80:	4b16      	ldr	r3, [pc, #88]	; (1ddc <TimerConfig+0x6c>)
    1d82:	4a17      	ldr	r2, [pc, #92]	; (1de0 <TimerConfig+0x70>)
    1d84:	609a      	str	r2, [r3, #8]
    1d86:	4b15      	ldr	r3, [pc, #84]	; (1ddc <TimerConfig+0x6c>)
    1d88:	4a14      	ldr	r2, [pc, #80]	; (1ddc <TimerConfig+0x6c>)
    1d8a:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1d8c:	2102      	movs	r1, #2
    1d8e:	430a      	orrs	r2, r1
    1d90:	659a      	str	r2, [r3, #88]	; 0x58
    1d92:	4b12      	ldr	r3, [pc, #72]	; (1ddc <TimerConfig+0x6c>)
    1d94:	4a11      	ldr	r2, [pc, #68]	; (1ddc <TimerConfig+0x6c>)
    1d96:	68d2      	ldr	r2, [r2, #12]
    1d98:	2101      	movs	r1, #1
    1d9a:	430a      	orrs	r2, r1
    1d9c:	60da      	str	r2, [r3, #12]
    1d9e:	200e      	movs	r0, #14
    1da0:	f7ff fdfc 	bl	199c <__NVIC_EnableIRQ>
    1da4:	4b0f      	ldr	r3, [pc, #60]	; (1de4 <TimerConfig+0x74>)
    1da6:	2200      	movs	r2, #0
    1da8:	601a      	str	r2, [r3, #0]
    1daa:	4b0e      	ldr	r3, [pc, #56]	; (1de4 <TimerConfig+0x74>)
    1dac:	225f      	movs	r2, #95	; 0x5f
    1dae:	605a      	str	r2, [r3, #4]
    1db0:	4b0c      	ldr	r3, [pc, #48]	; (1de4 <TimerConfig+0x74>)
    1db2:	22ee      	movs	r2, #238	; 0xee
    1db4:	0092      	lsls	r2, r2, #2
    1db6:	609a      	str	r2, [r3, #8]
    1db8:	4b0a      	ldr	r3, [pc, #40]	; (1de4 <TimerConfig+0x74>)
    1dba:	4a0a      	ldr	r2, [pc, #40]	; (1de4 <TimerConfig+0x74>)
    1dbc:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1dbe:	2102      	movs	r1, #2
    1dc0:	430a      	orrs	r2, r1
    1dc2:	659a      	str	r2, [r3, #88]	; 0x58
    1dc4:	4b07      	ldr	r3, [pc, #28]	; (1de4 <TimerConfig+0x74>)
    1dc6:	4a07      	ldr	r2, [pc, #28]	; (1de4 <TimerConfig+0x74>)
    1dc8:	68d2      	ldr	r2, [r2, #12]
    1dca:	2101      	movs	r1, #1
    1dcc:	430a      	orrs	r2, r1
    1dce:	60da      	str	r2, [r3, #12]
    1dd0:	200f      	movs	r0, #15
    1dd2:	f7ff fde3 	bl	199c <__NVIC_EnableIRQ>
    1dd6:	46c0      	nop			; (mov r8, r8)
    1dd8:	46bd      	mov	sp, r7
    1dda:	bd80      	pop	{r7, pc}
    1ddc:	40070000 	.word	0x40070000
    1de0:	0001869f 	.word	0x0001869f
    1de4:	40078000 	.word	0x40078000

00001de8 <SystemInit>:
    1de8:	b580      	push	{r7, lr}
    1dea:	af00      	add	r7, sp, #0
    1dec:	f7ff ff18 	bl	1c20 <ClkConfig>
    1df0:	f7ff fe78 	bl	1ae4 <PortConfig>
    1df4:	f7ff ffbc 	bl	1d70 <TimerConfig>
    1df8:	2100      	movs	r1, #0
    1dfa:	2012      	movs	r0, #18
    1dfc:	f7ff fe04 	bl	1a08 <__NVIC_SetPriority>
    1e00:	2101      	movs	r1, #1
    1e02:	200e      	movs	r0, #14
    1e04:	f7ff fe00 	bl	1a08 <__NVIC_SetPriority>
    1e08:	2301      	movs	r3, #1
    1e0a:	425b      	negs	r3, r3
    1e0c:	2103      	movs	r1, #3
    1e0e:	0018      	movs	r0, r3
    1e10:	f7ff fdfa 	bl	1a08 <__NVIC_SetPriority>
    1e14:	46c0      	nop			; (mov r8, r8)
    1e16:	46bd      	mov	sp, r7
    1e18:	bd80      	pop	{r7, pc}
    1e1a:	46c0      	nop			; (mov r8, r8)

00001e1c <__NVIC_EnableIRQ>:
    1e1c:	b580      	push	{r7, lr}
    1e1e:	b082      	sub	sp, #8
    1e20:	af00      	add	r7, sp, #0
    1e22:	0002      	movs	r2, r0
    1e24:	1dfb      	adds	r3, r7, #7
    1e26:	701a      	strb	r2, [r3, #0]
    1e28:	1dfb      	adds	r3, r7, #7
    1e2a:	781b      	ldrb	r3, [r3, #0]
    1e2c:	2b7f      	cmp	r3, #127	; 0x7f
    1e2e:	d809      	bhi.n	1e44 <__NVIC_EnableIRQ+0x28>
    1e30:	4b06      	ldr	r3, [pc, #24]	; (1e4c <__NVIC_EnableIRQ+0x30>)
    1e32:	1dfa      	adds	r2, r7, #7
    1e34:	7812      	ldrb	r2, [r2, #0]
    1e36:	0011      	movs	r1, r2
    1e38:	221f      	movs	r2, #31
    1e3a:	400a      	ands	r2, r1
    1e3c:	2101      	movs	r1, #1
    1e3e:	4091      	lsls	r1, r2
    1e40:	000a      	movs	r2, r1
    1e42:	601a      	str	r2, [r3, #0]
    1e44:	46c0      	nop			; (mov r8, r8)
    1e46:	46bd      	mov	sp, r7
    1e48:	b002      	add	sp, #8
    1e4a:	bd80      	pop	{r7, pc}
    1e4c:	e000e100 	.word	0xe000e100

00001e50 <RemoteMacInit>:
    1e50:	b580      	push	{r7, lr}
    1e52:	af00      	add	r7, sp, #0
    1e54:	4b0a      	ldr	r3, [pc, #40]	; (1e80 <RemoteMacInit+0x30>)
    1e56:	2200      	movs	r2, #0
    1e58:	801a      	strh	r2, [r3, #0]
    1e5a:	4b09      	ldr	r3, [pc, #36]	; (1e80 <RemoteMacInit+0x30>)
    1e5c:	2200      	movs	r2, #0
    1e5e:	805a      	strh	r2, [r3, #2]
    1e60:	4b07      	ldr	r3, [pc, #28]	; (1e80 <RemoteMacInit+0x30>)
    1e62:	2200      	movs	r2, #0
    1e64:	809a      	strh	r2, [r3, #4]
    1e66:	4b06      	ldr	r3, [pc, #24]	; (1e80 <RemoteMacInit+0x30>)
    1e68:	2200      	movs	r2, #0
    1e6a:	80da      	strh	r2, [r3, #6]
    1e6c:	4b04      	ldr	r3, [pc, #16]	; (1e80 <RemoteMacInit+0x30>)
    1e6e:	2200      	movs	r2, #0
    1e70:	811a      	strh	r2, [r3, #8]
    1e72:	4b03      	ldr	r3, [pc, #12]	; (1e80 <RemoteMacInit+0x30>)
    1e74:	2200      	movs	r2, #0
    1e76:	815a      	strh	r2, [r3, #10]
    1e78:	46c0      	nop			; (mov r8, r8)
    1e7a:	46bd      	mov	sp, r7
    1e7c:	bd80      	pop	{r7, pc}
    1e7e:	46c0      	nop			; (mov r8, r8)
    1e80:	20004d1c 	.word	0x20004d1c

00001e84 <PHYInit>:
    1e84:	b580      	push	{r7, lr}
    1e86:	b084      	sub	sp, #16
    1e88:	af00      	add	r7, sp, #0
    1e8a:	0002      	movs	r2, r0
    1e8c:	1dfb      	adds	r3, r7, #7
    1e8e:	701a      	strb	r2, [r3, #0]
    1e90:	1dbb      	adds	r3, r7, #6
    1e92:	1c0a      	adds	r2, r1, #0
    1e94:	701a      	strb	r2, [r3, #0]
    1e96:	23c0      	movs	r3, #192	; 0xc0
    1e98:	059b      	lsls	r3, r3, #22
    1e9a:	8e9b      	ldrh	r3, [r3, #52]	; 0x34
    1e9c:	b29b      	uxth	r3, r3
    1e9e:	60fb      	str	r3, [r7, #12]
    1ea0:	68fa      	ldr	r2, [r7, #12]
    1ea2:	23ee      	movs	r3, #238	; 0xee
    1ea4:	00db      	lsls	r3, r3, #3
    1ea6:	4013      	ands	r3, r2
    1ea8:	60fb      	str	r3, [r7, #12]
    1eaa:	1dfb      	adds	r3, r7, #7
    1eac:	781b      	ldrb	r3, [r3, #0]
    1eae:	02da      	lsls	r2, r3, #11
    1eb0:	1dbb      	adds	r3, r7, #6
    1eb2:	781b      	ldrb	r3, [r3, #0]
    1eb4:	005b      	lsls	r3, r3, #1
    1eb6:	4313      	orrs	r3, r2
    1eb8:	001a      	movs	r2, r3
    1eba:	68fb      	ldr	r3, [r7, #12]
    1ebc:	4313      	orrs	r3, r2
    1ebe:	2201      	movs	r2, #1
    1ec0:	4313      	orrs	r3, r2
    1ec2:	60fb      	str	r3, [r7, #12]
    1ec4:	23c0      	movs	r3, #192	; 0xc0
    1ec6:	059b      	lsls	r3, r3, #22
    1ec8:	68fa      	ldr	r2, [r7, #12]
    1eca:	b292      	uxth	r2, r2
    1ecc:	869a      	strh	r2, [r3, #52]	; 0x34
    1ece:	46c0      	nop			; (mov r8, r8)
    1ed0:	23c0      	movs	r3, #192	; 0xc0
    1ed2:	059b      	lsls	r3, r3, #22
    1ed4:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    1ed6:	b29b      	uxth	r3, r3
    1ed8:	001a      	movs	r2, r3
    1eda:	2310      	movs	r3, #16
    1edc:	4013      	ands	r3, r2
    1ede:	d0f7      	beq.n	1ed0 <PHYInit+0x4c>
    1ee0:	46c0      	nop			; (mov r8, r8)
    1ee2:	46bd      	mov	sp, r7
    1ee4:	b004      	add	sp, #16
    1ee6:	bd80      	pop	{r7, pc}

00001ee8 <SetPHYReg>:
    1ee8:	b590      	push	{r4, r7, lr}
    1eea:	b085      	sub	sp, #20
    1eec:	af00      	add	r7, sp, #0
    1eee:	0004      	movs	r4, r0
    1ef0:	0008      	movs	r0, r1
    1ef2:	0011      	movs	r1, r2
    1ef4:	1dfb      	adds	r3, r7, #7
    1ef6:	1c22      	adds	r2, r4, #0
    1ef8:	701a      	strb	r2, [r3, #0]
    1efa:	1dbb      	adds	r3, r7, #6
    1efc:	1c02      	adds	r2, r0, #0
    1efe:	701a      	strb	r2, [r3, #0]
    1f00:	1d3b      	adds	r3, r7, #4
    1f02:	1c0a      	adds	r2, r1, #0
    1f04:	801a      	strh	r2, [r3, #0]
    1f06:	23c0      	movs	r3, #192	; 0xc0
    1f08:	059b      	lsls	r3, r3, #22
    1f0a:	1d3a      	adds	r2, r7, #4
    1f0c:	8812      	ldrh	r2, [r2, #0]
    1f0e:	84da      	strh	r2, [r3, #38]	; 0x26
    1f10:	1dfb      	adds	r3, r7, #7
    1f12:	781b      	ldrb	r3, [r3, #0]
    1f14:	021a      	lsls	r2, r3, #8
    1f16:	23f8      	movs	r3, #248	; 0xf8
    1f18:	015b      	lsls	r3, r3, #5
    1f1a:	4013      	ands	r3, r2
    1f1c:	22c0      	movs	r2, #192	; 0xc0
    1f1e:	0212      	lsls	r2, r2, #8
    1f20:	431a      	orrs	r2, r3
    1f22:	1dbb      	adds	r3, r7, #6
    1f24:	781b      	ldrb	r3, [r3, #0]
    1f26:	211f      	movs	r1, #31
    1f28:	400b      	ands	r3, r1
    1f2a:	4313      	orrs	r3, r2
    1f2c:	2220      	movs	r2, #32
    1f2e:	4313      	orrs	r3, r2
    1f30:	60fb      	str	r3, [r7, #12]
    1f32:	23c0      	movs	r3, #192	; 0xc0
    1f34:	059b      	lsls	r3, r3, #22
    1f36:	68fa      	ldr	r2, [r7, #12]
    1f38:	b292      	uxth	r2, r2
    1f3a:	849a      	strh	r2, [r3, #36]	; 0x24
    1f3c:	46c0      	nop			; (mov r8, r8)
    1f3e:	23c0      	movs	r3, #192	; 0xc0
    1f40:	059b      	lsls	r3, r3, #22
    1f42:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1f44:	b29b      	uxth	r3, r3
    1f46:	b21b      	sxth	r3, r3
    1f48:	2b00      	cmp	r3, #0
    1f4a:	daf8      	bge.n	1f3e <SetPHYReg+0x56>
    1f4c:	46c0      	nop			; (mov r8, r8)
    1f4e:	46bd      	mov	sp, r7
    1f50:	b005      	add	sp, #20
    1f52:	bd90      	pop	{r4, r7, pc}

00001f54 <GetPHYReg>:
    1f54:	b580      	push	{r7, lr}
    1f56:	b084      	sub	sp, #16
    1f58:	af00      	add	r7, sp, #0
    1f5a:	0002      	movs	r2, r0
    1f5c:	1dfb      	adds	r3, r7, #7
    1f5e:	701a      	strb	r2, [r3, #0]
    1f60:	1dbb      	adds	r3, r7, #6
    1f62:	1c0a      	adds	r2, r1, #0
    1f64:	701a      	strb	r2, [r3, #0]
    1f66:	1dfb      	adds	r3, r7, #7
    1f68:	781b      	ldrb	r3, [r3, #0]
    1f6a:	021a      	lsls	r2, r3, #8
    1f6c:	23f8      	movs	r3, #248	; 0xf8
    1f6e:	015b      	lsls	r3, r3, #5
    1f70:	4013      	ands	r3, r2
    1f72:	4a0e      	ldr	r2, [pc, #56]	; (1fac <GetPHYReg+0x58>)
    1f74:	431a      	orrs	r2, r3
    1f76:	1dbb      	adds	r3, r7, #6
    1f78:	781b      	ldrb	r3, [r3, #0]
    1f7a:	211f      	movs	r1, #31
    1f7c:	400b      	ands	r3, r1
    1f7e:	4313      	orrs	r3, r2
    1f80:	60fb      	str	r3, [r7, #12]
    1f82:	23c0      	movs	r3, #192	; 0xc0
    1f84:	059b      	lsls	r3, r3, #22
    1f86:	68fa      	ldr	r2, [r7, #12]
    1f88:	b292      	uxth	r2, r2
    1f8a:	849a      	strh	r2, [r3, #36]	; 0x24
    1f8c:	46c0      	nop			; (mov r8, r8)
    1f8e:	23c0      	movs	r3, #192	; 0xc0
    1f90:	059b      	lsls	r3, r3, #22
    1f92:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1f94:	b29b      	uxth	r3, r3
    1f96:	b21b      	sxth	r3, r3
    1f98:	2b00      	cmp	r3, #0
    1f9a:	daf8      	bge.n	1f8e <GetPHYReg+0x3a>
    1f9c:	23c0      	movs	r3, #192	; 0xc0
    1f9e:	059b      	lsls	r3, r3, #22
    1fa0:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    1fa2:	b29b      	uxth	r3, r3
    1fa4:	0018      	movs	r0, r3
    1fa6:	46bd      	mov	sp, r7
    1fa8:	b004      	add	sp, #16
    1faa:	bd80      	pop	{r7, pc}
    1fac:	0000e020 	.word	0x0000e020

00001fb0 <EthernetConfig>:
    1fb0:	b580      	push	{r7, lr}
    1fb2:	b082      	sub	sp, #8
    1fb4:	af00      	add	r7, sp, #0
    1fb6:	2103      	movs	r1, #3
    1fb8:	201c      	movs	r0, #28
    1fba:	f7ff ff63 	bl	1e84 <PHYInit>
    1fbe:	23c0      	movs	r3, #192	; 0xc0
    1fc0:	059b      	lsls	r3, r3, #22
    1fc2:	4a12      	ldr	r2, [pc, #72]	; (200c <EthernetConfig+0x5c>)
    1fc4:	8812      	ldrh	r2, [r2, #0]
    1fc6:	805a      	strh	r2, [r3, #2]
    1fc8:	23c0      	movs	r3, #192	; 0xc0
    1fca:	059b      	lsls	r3, r3, #22
    1fcc:	4a0f      	ldr	r2, [pc, #60]	; (200c <EthernetConfig+0x5c>)
    1fce:	8852      	ldrh	r2, [r2, #2]
    1fd0:	809a      	strh	r2, [r3, #4]
    1fd2:	23c0      	movs	r3, #192	; 0xc0
    1fd4:	059b      	lsls	r3, r3, #22
    1fd6:	4a0d      	ldr	r2, [pc, #52]	; (200c <EthernetConfig+0x5c>)
    1fd8:	8892      	ldrh	r2, [r2, #4]
    1fda:	80da      	strh	r2, [r3, #6]
    1fdc:	f000 f81e 	bl	201c <MACReset>
    1fe0:	23c0      	movs	r3, #192	; 0xc0
    1fe2:	059b      	lsls	r3, r3, #22
    1fe4:	2207      	movs	r2, #7
    1fe6:	841a      	strh	r2, [r3, #32]
    1fe8:	2012      	movs	r0, #18
    1fea:	f7ff ff17 	bl	1e1c <__NVIC_EnableIRQ>
    1fee:	4b08      	ldr	r3, [pc, #32]	; (2010 <EthernetConfig+0x60>)
    1ff0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1ff2:	607b      	str	r3, [r7, #4]
    1ff4:	687b      	ldr	r3, [r7, #4]
    1ff6:	b29a      	uxth	r2, r3
    1ff8:	4b06      	ldr	r3, [pc, #24]	; (2014 <EthernetConfig+0x64>)
    1ffa:	801a      	strh	r2, [r3, #0]
    1ffc:	687b      	ldr	r3, [r7, #4]
    1ffe:	b29a      	uxth	r2, r3
    2000:	4b05      	ldr	r3, [pc, #20]	; (2018 <EthernetConfig+0x68>)
    2002:	801a      	strh	r2, [r3, #0]
    2004:	46c0      	nop			; (mov r8, r8)
    2006:	46bd      	mov	sp, r7
    2008:	b002      	add	sp, #8
    200a:	bd80      	pop	{r7, pc}
    200c:	20000004 	.word	0x20000004
    2010:	400d8000 	.word	0x400d8000
    2014:	20004d30 	.word	0x20004d30
    2018:	20004d32 	.word	0x20004d32

0000201c <MACReset>:
    201c:	b580      	push	{r7, lr}
    201e:	af00      	add	r7, sp, #0
    2020:	23c0      	movs	r3, #192	; 0xc0
    2022:	059b      	lsls	r3, r3, #22
    2024:	22c0      	movs	r2, #192	; 0xc0
    2026:	0592      	lsls	r2, r2, #22
    2028:	8bd2      	ldrh	r2, [r2, #30]
    202a:	b292      	uxth	r2, r2
    202c:	2103      	movs	r1, #3
    202e:	430a      	orrs	r2, r1
    2030:	b292      	uxth	r2, r2
    2032:	83da      	strh	r2, [r3, #30]
    2034:	f000 f86a 	bl	210c <ClearMemory>
    2038:	23c0      	movs	r3, #192	; 0xc0
    203a:	059b      	lsls	r3, r3, #22
    203c:	2280      	movs	r2, #128	; 0x80
    203e:	0152      	lsls	r2, r2, #5
    2040:	801a      	strh	r2, [r3, #0]
    2042:	23c0      	movs	r3, #192	; 0xc0
    2044:	059b      	lsls	r3, r3, #22
    2046:	2200      	movs	r2, #0
    2048:	811a      	strh	r2, [r3, #8]
    204a:	23c0      	movs	r3, #192	; 0xc0
    204c:	059b      	lsls	r3, r3, #22
    204e:	2200      	movs	r2, #0
    2050:	815a      	strh	r2, [r3, #10]
    2052:	23c0      	movs	r3, #192	; 0xc0
    2054:	059b      	lsls	r3, r3, #22
    2056:	2200      	movs	r2, #0
    2058:	819a      	strh	r2, [r3, #12]
    205a:	23c0      	movs	r3, #192	; 0xc0
    205c:	059b      	lsls	r3, r3, #22
    205e:	4a26      	ldr	r2, [pc, #152]	; (20f8 <MACReset+0xdc>)
    2060:	81da      	strh	r2, [r3, #14]
    2062:	23c0      	movs	r3, #192	; 0xc0
    2064:	059b      	lsls	r3, r3, #22
    2066:	2260      	movs	r2, #96	; 0x60
    2068:	821a      	strh	r2, [r3, #16]
    206a:	23c0      	movs	r3, #192	; 0xc0
    206c:	059b      	lsls	r3, r3, #22
    206e:	2250      	movs	r2, #80	; 0x50
    2070:	825a      	strh	r2, [r3, #18]
    2072:	23c0      	movs	r3, #192	; 0xc0
    2074:	059b      	lsls	r3, r3, #22
    2076:	2280      	movs	r2, #128	; 0x80
    2078:	0092      	lsls	r2, r2, #2
    207a:	829a      	strh	r2, [r3, #20]
    207c:	23c0      	movs	r3, #192	; 0xc0
    207e:	059b      	lsls	r3, r3, #22
    2080:	2205      	movs	r2, #5
    2082:	82da      	strh	r2, [r3, #22]
    2084:	23c0      	movs	r3, #192	; 0xc0
    2086:	059b      	lsls	r3, r3, #22
    2088:	4a1c      	ldr	r2, [pc, #112]	; (20fc <MACReset+0xe0>)
    208a:	831a      	strh	r2, [r3, #24]
    208c:	23c0      	movs	r3, #192	; 0xc0
    208e:	059b      	lsls	r3, r3, #22
    2090:	4a1b      	ldr	r2, [pc, #108]	; (2100 <MACReset+0xe4>)
    2092:	835a      	strh	r2, [r3, #26]
    2094:	23c0      	movs	r3, #192	; 0xc0
    2096:	059b      	lsls	r3, r3, #22
    2098:	2280      	movs	r2, #128	; 0x80
    209a:	839a      	strh	r2, [r3, #28]
    209c:	23c0      	movs	r3, #192	; 0xc0
    209e:	059b      	lsls	r3, r3, #22
    20a0:	4a18      	ldr	r2, [pc, #96]	; (2104 <MACReset+0xe8>)
    20a2:	83da      	strh	r2, [r3, #30]
    20a4:	23c0      	movs	r3, #192	; 0xc0
    20a6:	059b      	lsls	r3, r3, #22
    20a8:	2200      	movs	r2, #0
    20aa:	841a      	strh	r2, [r3, #32]
    20ac:	23c0      	movs	r3, #192	; 0xc0
    20ae:	059b      	lsls	r3, r3, #22
    20b0:	2201      	movs	r2, #1
    20b2:	4252      	negs	r2, r2
    20b4:	845a      	strh	r2, [r3, #34]	; 0x22
    20b6:	23c0      	movs	r3, #192	; 0xc0
    20b8:	059b      	lsls	r3, r3, #22
    20ba:	2200      	movs	r2, #0
    20bc:	851a      	strh	r2, [r3, #40]	; 0x28
    20be:	23c0      	movs	r3, #192	; 0xc0
    20c0:	059b      	lsls	r3, r3, #22
    20c2:	2280      	movs	r2, #128	; 0x80
    20c4:	0152      	lsls	r2, r2, #5
    20c6:	855a      	strh	r2, [r3, #42]	; 0x2a
    20c8:	23c0      	movs	r3, #192	; 0xc0
    20ca:	059b      	lsls	r3, r3, #22
    20cc:	22c0      	movs	r2, #192	; 0xc0
    20ce:	0592      	lsls	r2, r2, #22
    20d0:	8b92      	ldrh	r2, [r2, #28]
    20d2:	b292      	uxth	r2, r2
    20d4:	490c      	ldr	r1, [pc, #48]	; (2108 <MACReset+0xec>)
    20d6:	400a      	ands	r2, r1
    20d8:	b292      	uxth	r2, r2
    20da:	839a      	strh	r2, [r3, #28]
    20dc:	23c0      	movs	r3, #192	; 0xc0
    20de:	059b      	lsls	r3, r3, #22
    20e0:	22c0      	movs	r2, #192	; 0xc0
    20e2:	0592      	lsls	r2, r2, #22
    20e4:	8bd2      	ldrh	r2, [r2, #30]
    20e6:	b292      	uxth	r2, r2
    20e8:	2103      	movs	r1, #3
    20ea:	438a      	bics	r2, r1
    20ec:	b292      	uxth	r2, r2
    20ee:	83da      	strh	r2, [r3, #30]
    20f0:	46c0      	nop			; (mov r8, r8)
    20f2:	46bd      	mov	sp, r7
    20f4:	bd80      	pop	{r7, pc}
    20f6:	46c0      	nop			; (mov r8, r8)
    20f8:	ffff8000 	.word	0xffff8000
    20fc:	ffff8606 	.word	0xffff8606
    2100:	ffff81fa 	.word	0xffff81fa
    2104:	00003003 	.word	0x00003003
    2108:	ffffbfff 	.word	0xffffbfff

0000210c <ClearMemory>:
    210c:	b580      	push	{r7, lr}
    210e:	b082      	sub	sp, #8
    2110:	af00      	add	r7, sp, #0
    2112:	23e0      	movs	r3, #224	; 0xe0
    2114:	059b      	lsls	r3, r3, #22
    2116:	603b      	str	r3, [r7, #0]
    2118:	2300      	movs	r3, #0
    211a:	607b      	str	r3, [r7, #4]
    211c:	e007      	b.n	212e <ClearMemory+0x22>
    211e:	683b      	ldr	r3, [r7, #0]
    2120:	1d1a      	adds	r2, r3, #4
    2122:	603a      	str	r2, [r7, #0]
    2124:	2200      	movs	r2, #0
    2126:	601a      	str	r2, [r3, #0]
    2128:	687b      	ldr	r3, [r7, #4]
    212a:	3301      	adds	r3, #1
    212c:	607b      	str	r3, [r7, #4]
    212e:	687b      	ldr	r3, [r7, #4]
    2130:	4a03      	ldr	r2, [pc, #12]	; (2140 <ClearMemory+0x34>)
    2132:	4293      	cmp	r3, r2
    2134:	d9f3      	bls.n	211e <ClearMemory+0x12>
    2136:	46c0      	nop			; (mov r8, r8)
    2138:	46bd      	mov	sp, r7
    213a:	b002      	add	sp, #8
    213c:	bd80      	pop	{r7, pc}
    213e:	46c0      	nop			; (mov r8, r8)
    2140:	000007ff 	.word	0x000007ff

00002144 <ReadPacket>:
    2144:	b580      	push	{r7, lr}
    2146:	b08a      	sub	sp, #40	; 0x28
    2148:	af00      	add	r7, sp, #0
    214a:	6078      	str	r0, [r7, #4]
    214c:	2316      	movs	r3, #22
    214e:	18fb      	adds	r3, r7, r3
    2150:	2200      	movs	r2, #0
    2152:	801a      	strh	r2, [r3, #0]
    2154:	2326      	movs	r3, #38	; 0x26
    2156:	18fb      	adds	r3, r7, r3
    2158:	2200      	movs	r2, #0
    215a:	801a      	strh	r2, [r3, #0]
    215c:	4b71      	ldr	r3, [pc, #452]	; (2324 <ReadPacket+0x1e0>)
    215e:	681a      	ldr	r2, [r3, #0]
    2160:	2301      	movs	r3, #1
    2162:	425b      	negs	r3, r3
    2164:	0019      	movs	r1, r3
    2166:	0010      	movs	r0, r2
    2168:	f004 faaa 	bl	66c0 <osMutexWait>
    216c:	23c0      	movs	r3, #192	; 0xc0
    216e:	059a      	lsls	r2, r3, #22
    2170:	2314      	movs	r3, #20
    2172:	18fb      	adds	r3, r7, r3
    2174:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    2176:	801a      	strh	r2, [r3, #0]
    2178:	23c0      	movs	r3, #192	; 0xc0
    217a:	059a      	lsls	r2, r3, #22
    217c:	2312      	movs	r3, #18
    217e:	18fb      	adds	r3, r7, r3
    2180:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    2182:	801a      	strh	r2, [r3, #0]
    2184:	2314      	movs	r3, #20
    2186:	18fa      	adds	r2, r7, r3
    2188:	2312      	movs	r3, #18
    218a:	18fb      	adds	r3, r7, r3
    218c:	8812      	ldrh	r2, [r2, #0]
    218e:	881b      	ldrh	r3, [r3, #0]
    2190:	429a      	cmp	r2, r3
    2192:	d90e      	bls.n	21b2 <ReadPacket+0x6e>
    2194:	2326      	movs	r3, #38	; 0x26
    2196:	18fb      	adds	r3, r7, r3
    2198:	2214      	movs	r2, #20
    219a:	18b9      	adds	r1, r7, r2
    219c:	2212      	movs	r2, #18
    219e:	18ba      	adds	r2, r7, r2
    21a0:	8809      	ldrh	r1, [r1, #0]
    21a2:	8812      	ldrh	r2, [r2, #0]
    21a4:	1a8a      	subs	r2, r1, r2
    21a6:	801a      	strh	r2, [r3, #0]
    21a8:	2316      	movs	r3, #22
    21aa:	18fb      	adds	r3, r7, r3
    21ac:	2200      	movs	r2, #0
    21ae:	801a      	strh	r2, [r3, #0]
    21b0:	e00e      	b.n	21d0 <ReadPacket+0x8c>
    21b2:	2326      	movs	r3, #38	; 0x26
    21b4:	18fb      	adds	r3, r7, r3
    21b6:	2212      	movs	r2, #18
    21b8:	18ba      	adds	r2, r7, r2
    21ba:	8812      	ldrh	r2, [r2, #0]
    21bc:	2180      	movs	r1, #128	; 0x80
    21be:	0149      	lsls	r1, r1, #5
    21c0:	1a8a      	subs	r2, r1, r2
    21c2:	801a      	strh	r2, [r3, #0]
    21c4:	2316      	movs	r3, #22
    21c6:	18fb      	adds	r3, r7, r3
    21c8:	2214      	movs	r2, #20
    21ca:	18ba      	adds	r2, r7, r2
    21cc:	8812      	ldrh	r2, [r2, #0]
    21ce:	801a      	strh	r2, [r3, #0]
    21d0:	2312      	movs	r3, #18
    21d2:	18fb      	adds	r3, r7, r3
    21d4:	881b      	ldrh	r3, [r3, #0]
    21d6:	22e0      	movs	r2, #224	; 0xe0
    21d8:	0592      	lsls	r2, r2, #22
    21da:	4694      	mov	ip, r2
    21dc:	4463      	add	r3, ip
    21de:	623b      	str	r3, [r7, #32]
    21e0:	687b      	ldr	r3, [r7, #4]
    21e2:	61fb      	str	r3, [r7, #28]
    21e4:	2308      	movs	r3, #8
    21e6:	18fa      	adds	r2, r7, r3
    21e8:	6a3b      	ldr	r3, [r7, #32]
    21ea:	1d19      	adds	r1, r3, #4
    21ec:	6239      	str	r1, [r7, #32]
    21ee:	681b      	ldr	r3, [r3, #0]
    21f0:	6013      	str	r3, [r2, #0]
    21f2:	2308      	movs	r3, #8
    21f4:	18fb      	adds	r3, r7, r3
    21f6:	881b      	ldrh	r3, [r3, #0]
    21f8:	3303      	adds	r3, #3
    21fa:	2b00      	cmp	r3, #0
    21fc:	da00      	bge.n	2200 <ReadPacket+0xbc>
    21fe:	3303      	adds	r3, #3
    2200:	109b      	asrs	r3, r3, #2
    2202:	60fb      	str	r3, [r7, #12]
    2204:	2326      	movs	r3, #38	; 0x26
    2206:	18fb      	adds	r3, r7, r3
    2208:	2226      	movs	r2, #38	; 0x26
    220a:	18ba      	adds	r2, r7, r2
    220c:	8812      	ldrh	r2, [r2, #0]
    220e:	3a04      	subs	r2, #4
    2210:	801a      	strh	r2, [r3, #0]
    2212:	6a3b      	ldr	r3, [r7, #32]
    2214:	b29b      	uxth	r3, r3
    2216:	4a44      	ldr	r2, [pc, #272]	; (2328 <ReadPacket+0x1e4>)
    2218:	4293      	cmp	r3, r2
    221a:	d902      	bls.n	2222 <ReadPacket+0xde>
    221c:	23e0      	movs	r3, #224	; 0xe0
    221e:	059b      	lsls	r3, r3, #22
    2220:	623b      	str	r3, [r7, #32]
    2222:	2308      	movs	r3, #8
    2224:	18fb      	adds	r3, r7, r3
    2226:	881b      	ldrh	r3, [r3, #0]
    2228:	2226      	movs	r2, #38	; 0x26
    222a:	18ba      	adds	r2, r7, r2
    222c:	8812      	ldrh	r2, [r2, #0]
    222e:	429a      	cmp	r2, r3
    2230:	d312      	bcc.n	2258 <ReadPacket+0x114>
    2232:	2300      	movs	r3, #0
    2234:	61bb      	str	r3, [r7, #24]
    2236:	e00a      	b.n	224e <ReadPacket+0x10a>
    2238:	69fb      	ldr	r3, [r7, #28]
    223a:	1d1a      	adds	r2, r3, #4
    223c:	61fa      	str	r2, [r7, #28]
    223e:	6a3a      	ldr	r2, [r7, #32]
    2240:	1d11      	adds	r1, r2, #4
    2242:	6239      	str	r1, [r7, #32]
    2244:	6812      	ldr	r2, [r2, #0]
    2246:	601a      	str	r2, [r3, #0]
    2248:	69bb      	ldr	r3, [r7, #24]
    224a:	3301      	adds	r3, #1
    224c:	61bb      	str	r3, [r7, #24]
    224e:	69ba      	ldr	r2, [r7, #24]
    2250:	68fb      	ldr	r3, [r7, #12]
    2252:	429a      	cmp	r2, r3
    2254:	d3f0      	bcc.n	2238 <ReadPacket+0xf4>
    2256:	e034      	b.n	22c2 <ReadPacket+0x17e>
    2258:	2326      	movs	r3, #38	; 0x26
    225a:	18fb      	adds	r3, r7, r3
    225c:	881b      	ldrh	r3, [r3, #0]
    225e:	089b      	lsrs	r3, r3, #2
    2260:	b29b      	uxth	r3, r3
    2262:	001a      	movs	r2, r3
    2264:	68fb      	ldr	r3, [r7, #12]
    2266:	1a9b      	subs	r3, r3, r2
    2268:	60fb      	str	r3, [r7, #12]
    226a:	2300      	movs	r3, #0
    226c:	61bb      	str	r3, [r7, #24]
    226e:	e00a      	b.n	2286 <ReadPacket+0x142>
    2270:	69fb      	ldr	r3, [r7, #28]
    2272:	1d1a      	adds	r2, r3, #4
    2274:	61fa      	str	r2, [r7, #28]
    2276:	6a3a      	ldr	r2, [r7, #32]
    2278:	1d11      	adds	r1, r2, #4
    227a:	6239      	str	r1, [r7, #32]
    227c:	6812      	ldr	r2, [r2, #0]
    227e:	601a      	str	r2, [r3, #0]
    2280:	69bb      	ldr	r3, [r7, #24]
    2282:	3301      	adds	r3, #1
    2284:	61bb      	str	r3, [r7, #24]
    2286:	2326      	movs	r3, #38	; 0x26
    2288:	18fb      	adds	r3, r7, r3
    228a:	881b      	ldrh	r3, [r3, #0]
    228c:	089b      	lsrs	r3, r3, #2
    228e:	b29b      	uxth	r3, r3
    2290:	001a      	movs	r2, r3
    2292:	69bb      	ldr	r3, [r7, #24]
    2294:	429a      	cmp	r2, r3
    2296:	d8eb      	bhi.n	2270 <ReadPacket+0x12c>
    2298:	23e0      	movs	r3, #224	; 0xe0
    229a:	059b      	lsls	r3, r3, #22
    229c:	623b      	str	r3, [r7, #32]
    229e:	2300      	movs	r3, #0
    22a0:	61bb      	str	r3, [r7, #24]
    22a2:	e00a      	b.n	22ba <ReadPacket+0x176>
    22a4:	69fb      	ldr	r3, [r7, #28]
    22a6:	1d1a      	adds	r2, r3, #4
    22a8:	61fa      	str	r2, [r7, #28]
    22aa:	6a3a      	ldr	r2, [r7, #32]
    22ac:	1d11      	adds	r1, r2, #4
    22ae:	6239      	str	r1, [r7, #32]
    22b0:	6812      	ldr	r2, [r2, #0]
    22b2:	601a      	str	r2, [r3, #0]
    22b4:	69bb      	ldr	r3, [r7, #24]
    22b6:	3301      	adds	r3, #1
    22b8:	61bb      	str	r3, [r7, #24]
    22ba:	69ba      	ldr	r2, [r7, #24]
    22bc:	68fb      	ldr	r3, [r7, #12]
    22be:	429a      	cmp	r2, r3
    22c0:	d3f0      	bcc.n	22a4 <ReadPacket+0x160>
    22c2:	6a3b      	ldr	r3, [r7, #32]
    22c4:	b29b      	uxth	r3, r3
    22c6:	4a18      	ldr	r2, [pc, #96]	; (2328 <ReadPacket+0x1e4>)
    22c8:	4293      	cmp	r3, r2
    22ca:	d902      	bls.n	22d2 <ReadPacket+0x18e>
    22cc:	23e0      	movs	r3, #224	; 0xe0
    22ce:	059b      	lsls	r3, r3, #22
    22d0:	623b      	str	r3, [r7, #32]
    22d2:	23c0      	movs	r3, #192	; 0xc0
    22d4:	059b      	lsls	r3, r3, #22
    22d6:	6a3a      	ldr	r2, [r7, #32]
    22d8:	b292      	uxth	r2, r2
    22da:	851a      	strh	r2, [r3, #40]	; 0x28
    22dc:	23c0      	movs	r3, #192	; 0xc0
    22de:	059b      	lsls	r3, r3, #22
    22e0:	22c0      	movs	r2, #192	; 0xc0
    22e2:	0592      	lsls	r2, r2, #22
    22e4:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    22e6:	b292      	uxth	r2, r2
    22e8:	3a20      	subs	r2, #32
    22ea:	b292      	uxth	r2, r2
    22ec:	861a      	strh	r2, [r3, #48]	; 0x30
    22ee:	687b      	ldr	r3, [r7, #4]
    22f0:	88da      	ldrh	r2, [r3, #6]
    22f2:	4b0e      	ldr	r3, [pc, #56]	; (232c <ReadPacket+0x1e8>)
    22f4:	801a      	strh	r2, [r3, #0]
    22f6:	687b      	ldr	r3, [r7, #4]
    22f8:	891a      	ldrh	r2, [r3, #8]
    22fa:	4b0c      	ldr	r3, [pc, #48]	; (232c <ReadPacket+0x1e8>)
    22fc:	805a      	strh	r2, [r3, #2]
    22fe:	687b      	ldr	r3, [r7, #4]
    2300:	895a      	ldrh	r2, [r3, #10]
    2302:	4b0a      	ldr	r3, [pc, #40]	; (232c <ReadPacket+0x1e8>)
    2304:	809a      	strh	r2, [r3, #4]
    2306:	4b09      	ldr	r3, [pc, #36]	; (232c <ReadPacket+0x1e8>)
    2308:	2201      	movs	r2, #1
    230a:	815a      	strh	r2, [r3, #10]
    230c:	4b05      	ldr	r3, [pc, #20]	; (2324 <ReadPacket+0x1e0>)
    230e:	681b      	ldr	r3, [r3, #0]
    2310:	0018      	movs	r0, r3
    2312:	f004 f9e5 	bl	66e0 <osMutexRelease>
    2316:	2308      	movs	r3, #8
    2318:	18fb      	adds	r3, r7, r3
    231a:	881b      	ldrh	r3, [r3, #0]
    231c:	0018      	movs	r0, r3
    231e:	46bd      	mov	sp, r7
    2320:	b00a      	add	sp, #40	; 0x28
    2322:	bd80      	pop	{r7, pc}
    2324:	2000532c 	.word	0x2000532c
    2328:	00000fff 	.word	0x00000fff
    232c:	20004d1c 	.word	0x20004d1c

00002330 <SendPacket>:
    2330:	b580      	push	{r7, lr}
    2332:	b08a      	sub	sp, #40	; 0x28
    2334:	af00      	add	r7, sp, #0
    2336:	6078      	str	r0, [r7, #4]
    2338:	6039      	str	r1, [r7, #0]
    233a:	4b79      	ldr	r3, [pc, #484]	; (2520 <SendPacket+0x1f0>)
    233c:	681a      	ldr	r2, [r3, #0]
    233e:	2301      	movs	r3, #1
    2340:	425b      	negs	r3, r3
    2342:	0019      	movs	r1, r3
    2344:	0010      	movs	r0, r2
    2346:	f004 f9bb 	bl	66c0 <osMutexWait>
    234a:	23c0      	movs	r3, #192	; 0xc0
    234c:	059b      	lsls	r3, r3, #22
    234e:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    2350:	b29b      	uxth	r3, r3
    2352:	61bb      	str	r3, [r7, #24]
    2354:	23c0      	movs	r3, #192	; 0xc0
    2356:	059b      	lsls	r3, r3, #22
    2358:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    235a:	b29b      	uxth	r3, r3
    235c:	617b      	str	r3, [r7, #20]
    235e:	69ba      	ldr	r2, [r7, #24]
    2360:	697b      	ldr	r3, [r7, #20]
    2362:	429a      	cmp	r2, r3
    2364:	d90d      	bls.n	2382 <SendPacket+0x52>
    2366:	69bb      	ldr	r3, [r7, #24]
    2368:	b29a      	uxth	r2, r3
    236a:	697b      	ldr	r3, [r7, #20]
    236c:	b29b      	uxth	r3, r3
    236e:	1ad3      	subs	r3, r2, r3
    2370:	b29a      	uxth	r2, r3
    2372:	230c      	movs	r3, #12
    2374:	18fb      	adds	r3, r7, r3
    2376:	801a      	strh	r2, [r3, #0]
    2378:	230c      	movs	r3, #12
    237a:	18fb      	adds	r3, r7, r3
    237c:	2200      	movs	r2, #0
    237e:	805a      	strh	r2, [r3, #2]
    2380:	e011      	b.n	23a6 <SendPacket+0x76>
    2382:	697b      	ldr	r3, [r7, #20]
    2384:	b29b      	uxth	r3, r3
    2386:	2280      	movs	r2, #128	; 0x80
    2388:	0192      	lsls	r2, r2, #6
    238a:	1ad3      	subs	r3, r2, r3
    238c:	b29a      	uxth	r2, r3
    238e:	230c      	movs	r3, #12
    2390:	18fb      	adds	r3, r7, r3
    2392:	801a      	strh	r2, [r3, #0]
    2394:	69bb      	ldr	r3, [r7, #24]
    2396:	b29b      	uxth	r3, r3
    2398:	4a62      	ldr	r2, [pc, #392]	; (2524 <SendPacket+0x1f4>)
    239a:	4694      	mov	ip, r2
    239c:	4463      	add	r3, ip
    239e:	b29a      	uxth	r2, r3
    23a0:	230c      	movs	r3, #12
    23a2:	18fb      	adds	r3, r7, r3
    23a4:	805a      	strh	r2, [r3, #2]
    23a6:	230c      	movs	r3, #12
    23a8:	18fb      	adds	r3, r7, r3
    23aa:	881b      	ldrh	r3, [r3, #0]
    23ac:	001a      	movs	r2, r3
    23ae:	230c      	movs	r3, #12
    23b0:	18fb      	adds	r3, r7, r3
    23b2:	885b      	ldrh	r3, [r3, #2]
    23b4:	18d3      	adds	r3, r2, r3
    23b6:	3b08      	subs	r3, #8
    23b8:	001a      	movs	r2, r3
    23ba:	683b      	ldr	r3, [r7, #0]
    23bc:	429a      	cmp	r2, r3
    23be:	da01      	bge.n	23c4 <SendPacket+0x94>
    23c0:	2300      	movs	r3, #0
    23c2:	e0a9      	b.n	2518 <SendPacket+0x1e8>
    23c4:	683b      	ldr	r3, [r7, #0]
    23c6:	613b      	str	r3, [r7, #16]
    23c8:	687b      	ldr	r3, [r7, #4]
    23ca:	623b      	str	r3, [r7, #32]
    23cc:	697b      	ldr	r3, [r7, #20]
    23ce:	22e0      	movs	r2, #224	; 0xe0
    23d0:	0592      	lsls	r2, r2, #22
    23d2:	4694      	mov	ip, r2
    23d4:	4463      	add	r3, ip
    23d6:	61fb      	str	r3, [r7, #28]
    23d8:	69fb      	ldr	r3, [r7, #28]
    23da:	1d1a      	adds	r2, r3, #4
    23dc:	61fa      	str	r2, [r7, #28]
    23de:	693a      	ldr	r2, [r7, #16]
    23e0:	601a      	str	r2, [r3, #0]
    23e2:	230c      	movs	r3, #12
    23e4:	18fb      	adds	r3, r7, r3
    23e6:	881b      	ldrh	r3, [r3, #0]
    23e8:	3b04      	subs	r3, #4
    23ea:	b29a      	uxth	r2, r3
    23ec:	230c      	movs	r3, #12
    23ee:	18fb      	adds	r3, r7, r3
    23f0:	801a      	strh	r2, [r3, #0]
    23f2:	69fb      	ldr	r3, [r7, #28]
    23f4:	b29b      	uxth	r3, r3
    23f6:	4a4c      	ldr	r2, [pc, #304]	; (2528 <SendPacket+0x1f8>)
    23f8:	4293      	cmp	r3, r2
    23fa:	d901      	bls.n	2400 <SendPacket+0xd0>
    23fc:	4b4b      	ldr	r3, [pc, #300]	; (252c <SendPacket+0x1fc>)
    23fe:	61fb      	str	r3, [r7, #28]
    2400:	683b      	ldr	r3, [r7, #0]
    2402:	3303      	adds	r3, #3
    2404:	2b00      	cmp	r3, #0
    2406:	da00      	bge.n	240a <SendPacket+0xda>
    2408:	3303      	adds	r3, #3
    240a:	109b      	asrs	r3, r3, #2
    240c:	613b      	str	r3, [r7, #16]
    240e:	230c      	movs	r3, #12
    2410:	18fb      	adds	r3, r7, r3
    2412:	881b      	ldrh	r3, [r3, #0]
    2414:	001a      	movs	r2, r3
    2416:	683b      	ldr	r3, [r7, #0]
    2418:	429a      	cmp	r2, r3
    241a:	db1a      	blt.n	2452 <SendPacket+0x122>
    241c:	2326      	movs	r3, #38	; 0x26
    241e:	18fb      	adds	r3, r7, r3
    2420:	2200      	movs	r2, #0
    2422:	801a      	strh	r2, [r3, #0]
    2424:	e00e      	b.n	2444 <SendPacket+0x114>
    2426:	69fb      	ldr	r3, [r7, #28]
    2428:	1d1a      	adds	r2, r3, #4
    242a:	61fa      	str	r2, [r7, #28]
    242c:	6a3a      	ldr	r2, [r7, #32]
    242e:	1d11      	adds	r1, r2, #4
    2430:	6239      	str	r1, [r7, #32]
    2432:	6812      	ldr	r2, [r2, #0]
    2434:	601a      	str	r2, [r3, #0]
    2436:	2326      	movs	r3, #38	; 0x26
    2438:	18fb      	adds	r3, r7, r3
    243a:	881a      	ldrh	r2, [r3, #0]
    243c:	2326      	movs	r3, #38	; 0x26
    243e:	18fb      	adds	r3, r7, r3
    2440:	3201      	adds	r2, #1
    2442:	801a      	strh	r2, [r3, #0]
    2444:	2326      	movs	r3, #38	; 0x26
    2446:	18fb      	adds	r3, r7, r3
    2448:	881a      	ldrh	r2, [r3, #0]
    244a:	693b      	ldr	r3, [r7, #16]
    244c:	429a      	cmp	r2, r3
    244e:	d3ea      	bcc.n	2426 <SendPacket+0xf6>
    2450:	e042      	b.n	24d8 <SendPacket+0x1a8>
    2452:	230c      	movs	r3, #12
    2454:	18fb      	adds	r3, r7, r3
    2456:	881b      	ldrh	r3, [r3, #0]
    2458:	089b      	lsrs	r3, r3, #2
    245a:	b29b      	uxth	r3, r3
    245c:	001a      	movs	r2, r3
    245e:	693b      	ldr	r3, [r7, #16]
    2460:	1a9b      	subs	r3, r3, r2
    2462:	613b      	str	r3, [r7, #16]
    2464:	2326      	movs	r3, #38	; 0x26
    2466:	18fb      	adds	r3, r7, r3
    2468:	2200      	movs	r2, #0
    246a:	801a      	strh	r2, [r3, #0]
    246c:	e00e      	b.n	248c <SendPacket+0x15c>
    246e:	69fb      	ldr	r3, [r7, #28]
    2470:	1d1a      	adds	r2, r3, #4
    2472:	61fa      	str	r2, [r7, #28]
    2474:	6a3a      	ldr	r2, [r7, #32]
    2476:	1d11      	adds	r1, r2, #4
    2478:	6239      	str	r1, [r7, #32]
    247a:	6812      	ldr	r2, [r2, #0]
    247c:	601a      	str	r2, [r3, #0]
    247e:	2326      	movs	r3, #38	; 0x26
    2480:	18fb      	adds	r3, r7, r3
    2482:	881a      	ldrh	r2, [r3, #0]
    2484:	2326      	movs	r3, #38	; 0x26
    2486:	18fb      	adds	r3, r7, r3
    2488:	3201      	adds	r2, #1
    248a:	801a      	strh	r2, [r3, #0]
    248c:	230c      	movs	r3, #12
    248e:	18fb      	adds	r3, r7, r3
    2490:	881b      	ldrh	r3, [r3, #0]
    2492:	089b      	lsrs	r3, r3, #2
    2494:	b29b      	uxth	r3, r3
    2496:	2226      	movs	r2, #38	; 0x26
    2498:	18ba      	adds	r2, r7, r2
    249a:	8812      	ldrh	r2, [r2, #0]
    249c:	429a      	cmp	r2, r3
    249e:	d3e6      	bcc.n	246e <SendPacket+0x13e>
    24a0:	4b22      	ldr	r3, [pc, #136]	; (252c <SendPacket+0x1fc>)
    24a2:	61fb      	str	r3, [r7, #28]
    24a4:	2326      	movs	r3, #38	; 0x26
    24a6:	18fb      	adds	r3, r7, r3
    24a8:	2200      	movs	r2, #0
    24aa:	801a      	strh	r2, [r3, #0]
    24ac:	e00e      	b.n	24cc <SendPacket+0x19c>
    24ae:	69fb      	ldr	r3, [r7, #28]
    24b0:	1d1a      	adds	r2, r3, #4
    24b2:	61fa      	str	r2, [r7, #28]
    24b4:	6a3a      	ldr	r2, [r7, #32]
    24b6:	1d11      	adds	r1, r2, #4
    24b8:	6239      	str	r1, [r7, #32]
    24ba:	6812      	ldr	r2, [r2, #0]
    24bc:	601a      	str	r2, [r3, #0]
    24be:	2326      	movs	r3, #38	; 0x26
    24c0:	18fb      	adds	r3, r7, r3
    24c2:	881a      	ldrh	r2, [r3, #0]
    24c4:	2326      	movs	r3, #38	; 0x26
    24c6:	18fb      	adds	r3, r7, r3
    24c8:	3201      	adds	r2, #1
    24ca:	801a      	strh	r2, [r3, #0]
    24cc:	2326      	movs	r3, #38	; 0x26
    24ce:	18fb      	adds	r3, r7, r3
    24d0:	881a      	ldrh	r2, [r3, #0]
    24d2:	693b      	ldr	r3, [r7, #16]
    24d4:	429a      	cmp	r2, r3
    24d6:	d3ea      	bcc.n	24ae <SendPacket+0x17e>
    24d8:	69fb      	ldr	r3, [r7, #28]
    24da:	b29b      	uxth	r3, r3
    24dc:	4a12      	ldr	r2, [pc, #72]	; (2528 <SendPacket+0x1f8>)
    24de:	4293      	cmp	r3, r2
    24e0:	d901      	bls.n	24e6 <SendPacket+0x1b6>
    24e2:	4b12      	ldr	r3, [pc, #72]	; (252c <SendPacket+0x1fc>)
    24e4:	61fb      	str	r3, [r7, #28]
    24e6:	2300      	movs	r3, #0
    24e8:	613b      	str	r3, [r7, #16]
    24ea:	69fb      	ldr	r3, [r7, #28]
    24ec:	1d1a      	adds	r2, r3, #4
    24ee:	61fa      	str	r2, [r7, #28]
    24f0:	693a      	ldr	r2, [r7, #16]
    24f2:	601a      	str	r2, [r3, #0]
    24f4:	69fb      	ldr	r3, [r7, #28]
    24f6:	b29b      	uxth	r3, r3
    24f8:	4a0b      	ldr	r2, [pc, #44]	; (2528 <SendPacket+0x1f8>)
    24fa:	4293      	cmp	r3, r2
    24fc:	d901      	bls.n	2502 <SendPacket+0x1d2>
    24fe:	4b0b      	ldr	r3, [pc, #44]	; (252c <SendPacket+0x1fc>)
    2500:	61fb      	str	r3, [r7, #28]
    2502:	23c0      	movs	r3, #192	; 0xc0
    2504:	059b      	lsls	r3, r3, #22
    2506:	69fa      	ldr	r2, [r7, #28]
    2508:	b292      	uxth	r2, r2
    250a:	855a      	strh	r2, [r3, #42]	; 0x2a
    250c:	4b04      	ldr	r3, [pc, #16]	; (2520 <SendPacket+0x1f0>)
    250e:	681b      	ldr	r3, [r3, #0]
    2510:	0018      	movs	r0, r3
    2512:	f004 f8e5 	bl	66e0 <osMutexRelease>
    2516:	683b      	ldr	r3, [r7, #0]
    2518:	0018      	movs	r0, r3
    251a:	46bd      	mov	sp, r7
    251c:	b00a      	add	sp, #40	; 0x28
    251e:	bd80      	pop	{r7, pc}
    2520:	20005340 	.word	0x20005340
    2524:	fffff000 	.word	0xfffff000
    2528:	00001ffc 	.word	0x00001ffc
    252c:	38001000 	.word	0x38001000

00002530 <ETHERNET_Handler>:
    2530:	b580      	push	{r7, lr}
    2532:	b082      	sub	sp, #8
    2534:	af00      	add	r7, sp, #0
    2536:	23c0      	movs	r3, #192	; 0xc0
    2538:	059a      	lsls	r2, r3, #22
    253a:	1dbb      	adds	r3, r7, #6
    253c:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    253e:	801a      	strh	r2, [r3, #0]
    2540:	23c0      	movs	r3, #192	; 0xc0
    2542:	059b      	lsls	r3, r3, #22
    2544:	1dba      	adds	r2, r7, #6
    2546:	8812      	ldrh	r2, [r2, #0]
    2548:	845a      	strh	r2, [r3, #34]	; 0x22
    254a:	1dbb      	adds	r3, r7, #6
    254c:	881b      	ldrh	r3, [r3, #0]
    254e:	2201      	movs	r2, #1
    2550:	4013      	ands	r3, r2
    2552:	d008      	beq.n	2566 <ETHERNET_Handler+0x36>
    2554:	4b0a      	ldr	r3, [pc, #40]	; (2580 <ETHERNET_Handler+0x50>)
    2556:	2201      	movs	r2, #1
    2558:	601a      	str	r2, [r3, #0]
    255a:	4b0a      	ldr	r3, [pc, #40]	; (2584 <ETHERNET_Handler+0x54>)
    255c:	681b      	ldr	r3, [r3, #0]
    255e:	2101      	movs	r1, #1
    2560:	0018      	movs	r0, r3
    2562:	f003 ffcb 	bl	64fc <osSignalSet>
    2566:	1dbb      	adds	r3, r7, #6
    2568:	881b      	ldrh	r3, [r3, #0]
    256a:	2202      	movs	r2, #2
    256c:	4013      	ands	r3, r2
    256e:	d002      	beq.n	2576 <ETHERNET_Handler+0x46>
    2570:	4b05      	ldr	r3, [pc, #20]	; (2588 <ETHERNET_Handler+0x58>)
    2572:	2201      	movs	r2, #1
    2574:	601a      	str	r2, [r3, #0]
    2576:	46c0      	nop			; (mov r8, r8)
    2578:	46bd      	mov	sp, r7
    257a:	b002      	add	sp, #8
    257c:	bd80      	pop	{r7, pc}
    257e:	46c0      	nop			; (mov r8, r8)
    2580:	20004d28 	.word	0x20004d28
    2584:	20000858 	.word	0x20000858
    2588:	20004d2c 	.word	0x20004d2c

0000258c <network_config>:
    258c:	b580      	push	{r7, lr}
    258e:	af00      	add	r7, sp, #0
    2590:	46c0      	nop			; (mov r8, r8)
    2592:	46bd      	mov	sp, r7
    2594:	bd80      	pop	{r7, pc}
    2596:	46c0      	nop			; (mov r8, r8)

00002598 <Answear_ARP>:
    2598:	b580      	push	{r7, lr}
    259a:	b08c      	sub	sp, #48	; 0x30
    259c:	af00      	add	r7, sp, #0
    259e:	4b36      	ldr	r3, [pc, #216]	; (2678 <Answear_ARP+0xe0>)
    25a0:	88da      	ldrh	r2, [r3, #6]
    25a2:	1d3b      	adds	r3, r7, #4
    25a4:	801a      	strh	r2, [r3, #0]
    25a6:	4b34      	ldr	r3, [pc, #208]	; (2678 <Answear_ARP+0xe0>)
    25a8:	891a      	ldrh	r2, [r3, #8]
    25aa:	1d3b      	adds	r3, r7, #4
    25ac:	805a      	strh	r2, [r3, #2]
    25ae:	4b32      	ldr	r3, [pc, #200]	; (2678 <Answear_ARP+0xe0>)
    25b0:	895a      	ldrh	r2, [r3, #10]
    25b2:	1d3b      	adds	r3, r7, #4
    25b4:	809a      	strh	r2, [r3, #4]
    25b6:	23c0      	movs	r3, #192	; 0xc0
    25b8:	059b      	lsls	r3, r3, #22
    25ba:	885b      	ldrh	r3, [r3, #2]
    25bc:	b29a      	uxth	r2, r3
    25be:	1d3b      	adds	r3, r7, #4
    25c0:	80da      	strh	r2, [r3, #6]
    25c2:	23c0      	movs	r3, #192	; 0xc0
    25c4:	059b      	lsls	r3, r3, #22
    25c6:	889b      	ldrh	r3, [r3, #4]
    25c8:	b29a      	uxth	r2, r3
    25ca:	1d3b      	adds	r3, r7, #4
    25cc:	811a      	strh	r2, [r3, #8]
    25ce:	23c0      	movs	r3, #192	; 0xc0
    25d0:	059b      	lsls	r3, r3, #22
    25d2:	88db      	ldrh	r3, [r3, #6]
    25d4:	b29a      	uxth	r2, r3
    25d6:	1d3b      	adds	r3, r7, #4
    25d8:	815a      	strh	r2, [r3, #10]
    25da:	4b27      	ldr	r3, [pc, #156]	; (2678 <Answear_ARP+0xe0>)
    25dc:	899a      	ldrh	r2, [r3, #12]
    25de:	1d3b      	adds	r3, r7, #4
    25e0:	819a      	strh	r2, [r3, #12]
    25e2:	4b25      	ldr	r3, [pc, #148]	; (2678 <Answear_ARP+0xe0>)
    25e4:	89da      	ldrh	r2, [r3, #14]
    25e6:	1d3b      	adds	r3, r7, #4
    25e8:	81da      	strh	r2, [r3, #14]
    25ea:	4b23      	ldr	r3, [pc, #140]	; (2678 <Answear_ARP+0xe0>)
    25ec:	8a1a      	ldrh	r2, [r3, #16]
    25ee:	1d3b      	adds	r3, r7, #4
    25f0:	821a      	strh	r2, [r3, #16]
    25f2:	4b21      	ldr	r3, [pc, #132]	; (2678 <Answear_ARP+0xe0>)
    25f4:	8a5a      	ldrh	r2, [r3, #18]
    25f6:	1d3b      	adds	r3, r7, #4
    25f8:	825a      	strh	r2, [r3, #18]
    25fa:	1d3b      	adds	r3, r7, #4
    25fc:	2280      	movs	r2, #128	; 0x80
    25fe:	0092      	lsls	r2, r2, #2
    2600:	829a      	strh	r2, [r3, #20]
    2602:	23c0      	movs	r3, #192	; 0xc0
    2604:	059b      	lsls	r3, r3, #22
    2606:	885b      	ldrh	r3, [r3, #2]
    2608:	b29a      	uxth	r2, r3
    260a:	1d3b      	adds	r3, r7, #4
    260c:	82da      	strh	r2, [r3, #22]
    260e:	23c0      	movs	r3, #192	; 0xc0
    2610:	059b      	lsls	r3, r3, #22
    2612:	889b      	ldrh	r3, [r3, #4]
    2614:	b29a      	uxth	r2, r3
    2616:	1d3b      	adds	r3, r7, #4
    2618:	831a      	strh	r2, [r3, #24]
    261a:	23c0      	movs	r3, #192	; 0xc0
    261c:	059b      	lsls	r3, r3, #22
    261e:	88db      	ldrh	r3, [r3, #6]
    2620:	b29a      	uxth	r2, r3
    2622:	1d3b      	adds	r3, r7, #4
    2624:	835a      	strh	r2, [r3, #26]
    2626:	4b15      	ldr	r3, [pc, #84]	; (267c <Answear_ARP+0xe4>)
    2628:	881a      	ldrh	r2, [r3, #0]
    262a:	1d3b      	adds	r3, r7, #4
    262c:	839a      	strh	r2, [r3, #28]
    262e:	4b13      	ldr	r3, [pc, #76]	; (267c <Answear_ARP+0xe4>)
    2630:	885a      	ldrh	r2, [r3, #2]
    2632:	1d3b      	adds	r3, r7, #4
    2634:	83da      	strh	r2, [r3, #30]
    2636:	4b10      	ldr	r3, [pc, #64]	; (2678 <Answear_ARP+0xe0>)
    2638:	88da      	ldrh	r2, [r3, #6]
    263a:	1d3b      	adds	r3, r7, #4
    263c:	841a      	strh	r2, [r3, #32]
    263e:	4b0e      	ldr	r3, [pc, #56]	; (2678 <Answear_ARP+0xe0>)
    2640:	891a      	ldrh	r2, [r3, #8]
    2642:	1d3b      	adds	r3, r7, #4
    2644:	845a      	strh	r2, [r3, #34]	; 0x22
    2646:	4b0c      	ldr	r3, [pc, #48]	; (2678 <Answear_ARP+0xe0>)
    2648:	895a      	ldrh	r2, [r3, #10]
    264a:	1d3b      	adds	r3, r7, #4
    264c:	849a      	strh	r2, [r3, #36]	; 0x24
    264e:	4b0a      	ldr	r3, [pc, #40]	; (2678 <Answear_ARP+0xe0>)
    2650:	8b9a      	ldrh	r2, [r3, #28]
    2652:	1d3b      	adds	r3, r7, #4
    2654:	84da      	strh	r2, [r3, #38]	; 0x26
    2656:	4b08      	ldr	r3, [pc, #32]	; (2678 <Answear_ARP+0xe0>)
    2658:	8bda      	ldrh	r2, [r3, #30]
    265a:	1d3b      	adds	r3, r7, #4
    265c:	851a      	strh	r2, [r3, #40]	; 0x28
    265e:	1d3b      	adds	r3, r7, #4
    2660:	2200      	movs	r2, #0
    2662:	855a      	strh	r2, [r3, #42]	; 0x2a
    2664:	1d3b      	adds	r3, r7, #4
    2666:	212a      	movs	r1, #42	; 0x2a
    2668:	0018      	movs	r0, r3
    266a:	f7ff fe61 	bl	2330 <SendPacket>
    266e:	46c0      	nop			; (mov r8, r8)
    2670:	46bd      	mov	sp, r7
    2672:	b00c      	add	sp, #48	; 0x30
    2674:	bd80      	pop	{r7, pc}
    2676:	46c0      	nop			; (mov r8, r8)
    2678:	20004d38 	.word	0x20004d38
    267c:	2000000c 	.word	0x2000000c

00002680 <CheckSum_UDP>:
    2680:	b580      	push	{r7, lr}
    2682:	b086      	sub	sp, #24
    2684:	af00      	add	r7, sp, #0
    2686:	0002      	movs	r2, r0
    2688:	6039      	str	r1, [r7, #0]
    268a:	1dbb      	adds	r3, r7, #6
    268c:	801a      	strh	r2, [r3, #0]
    268e:	2300      	movs	r3, #0
    2690:	613b      	str	r3, [r7, #16]
    2692:	230d      	movs	r3, #13
    2694:	617b      	str	r3, [r7, #20]
    2696:	e019      	b.n	26cc <CheckSum_UDP+0x4c>
    2698:	697b      	ldr	r3, [r7, #20]
    269a:	005b      	lsls	r3, r3, #1
    269c:	683a      	ldr	r2, [r7, #0]
    269e:	18d3      	adds	r3, r2, r3
    26a0:	881b      	ldrh	r3, [r3, #0]
    26a2:	021b      	lsls	r3, r3, #8
    26a4:	041b      	lsls	r3, r3, #16
    26a6:	0c1a      	lsrs	r2, r3, #16
    26a8:	697b      	ldr	r3, [r7, #20]
    26aa:	005b      	lsls	r3, r3, #1
    26ac:	6839      	ldr	r1, [r7, #0]
    26ae:	18cb      	adds	r3, r1, r3
    26b0:	881b      	ldrh	r3, [r3, #0]
    26b2:	0a1b      	lsrs	r3, r3, #8
    26b4:	b29b      	uxth	r3, r3
    26b6:	0019      	movs	r1, r3
    26b8:	23ff      	movs	r3, #255	; 0xff
    26ba:	400b      	ands	r3, r1
    26bc:	18d3      	adds	r3, r2, r3
    26be:	001a      	movs	r2, r3
    26c0:	693b      	ldr	r3, [r7, #16]
    26c2:	189b      	adds	r3, r3, r2
    26c4:	613b      	str	r3, [r7, #16]
    26c6:	697b      	ldr	r3, [r7, #20]
    26c8:	3301      	adds	r3, #1
    26ca:	617b      	str	r3, [r7, #20]
    26cc:	697b      	ldr	r3, [r7, #20]
    26ce:	2b10      	cmp	r3, #16
    26d0:	d9e2      	bls.n	2698 <CheckSum_UDP+0x18>
    26d2:	683b      	ldr	r3, [r7, #0]
    26d4:	3316      	adds	r3, #22
    26d6:	881b      	ldrh	r3, [r3, #0]
    26d8:	0a1b      	lsrs	r3, r3, #8
    26da:	b29b      	uxth	r3, r3
    26dc:	001a      	movs	r2, r3
    26de:	23ff      	movs	r3, #255	; 0xff
    26e0:	4013      	ands	r3, r2
    26e2:	693a      	ldr	r2, [r7, #16]
    26e4:	18d3      	adds	r3, r2, r3
    26e6:	613b      	str	r3, [r7, #16]
    26e8:	1dbb      	adds	r3, r7, #6
    26ea:	881b      	ldrh	r3, [r3, #0]
    26ec:	693a      	ldr	r2, [r7, #16]
    26ee:	18d3      	adds	r3, r2, r3
    26f0:	613b      	str	r3, [r7, #16]
    26f2:	683b      	ldr	r3, [r7, #0]
    26f4:	3322      	adds	r3, #34	; 0x22
    26f6:	881b      	ldrh	r3, [r3, #0]
    26f8:	021b      	lsls	r3, r3, #8
    26fa:	041b      	lsls	r3, r3, #16
    26fc:	0c1a      	lsrs	r2, r3, #16
    26fe:	683b      	ldr	r3, [r7, #0]
    2700:	3322      	adds	r3, #34	; 0x22
    2702:	881b      	ldrh	r3, [r3, #0]
    2704:	0a1b      	lsrs	r3, r3, #8
    2706:	b29b      	uxth	r3, r3
    2708:	0019      	movs	r1, r3
    270a:	23ff      	movs	r3, #255	; 0xff
    270c:	400b      	ands	r3, r1
    270e:	18d3      	adds	r3, r2, r3
    2710:	001a      	movs	r2, r3
    2712:	693b      	ldr	r3, [r7, #16]
    2714:	189b      	adds	r3, r3, r2
    2716:	613b      	str	r3, [r7, #16]
    2718:	683b      	ldr	r3, [r7, #0]
    271a:	3324      	adds	r3, #36	; 0x24
    271c:	881b      	ldrh	r3, [r3, #0]
    271e:	021b      	lsls	r3, r3, #8
    2720:	041b      	lsls	r3, r3, #16
    2722:	0c1a      	lsrs	r2, r3, #16
    2724:	683b      	ldr	r3, [r7, #0]
    2726:	3324      	adds	r3, #36	; 0x24
    2728:	881b      	ldrh	r3, [r3, #0]
    272a:	0a1b      	lsrs	r3, r3, #8
    272c:	b29b      	uxth	r3, r3
    272e:	0019      	movs	r1, r3
    2730:	23ff      	movs	r3, #255	; 0xff
    2732:	400b      	ands	r3, r1
    2734:	18d3      	adds	r3, r2, r3
    2736:	001a      	movs	r2, r3
    2738:	693b      	ldr	r3, [r7, #16]
    273a:	189b      	adds	r3, r3, r2
    273c:	613b      	str	r3, [r7, #16]
    273e:	1dbb      	adds	r3, r7, #6
    2740:	881b      	ldrh	r3, [r3, #0]
    2742:	693a      	ldr	r2, [r7, #16]
    2744:	18d3      	adds	r3, r2, r3
    2746:	613b      	str	r3, [r7, #16]
    2748:	683b      	ldr	r3, [r7, #0]
    274a:	3328      	adds	r3, #40	; 0x28
    274c:	881b      	ldrh	r3, [r3, #0]
    274e:	021b      	lsls	r3, r3, #8
    2750:	041b      	lsls	r3, r3, #16
    2752:	0c1a      	lsrs	r2, r3, #16
    2754:	683b      	ldr	r3, [r7, #0]
    2756:	3328      	adds	r3, #40	; 0x28
    2758:	881b      	ldrh	r3, [r3, #0]
    275a:	0a1b      	lsrs	r3, r3, #8
    275c:	b29b      	uxth	r3, r3
    275e:	0019      	movs	r1, r3
    2760:	23ff      	movs	r3, #255	; 0xff
    2762:	400b      	ands	r3, r1
    2764:	18d3      	adds	r3, r2, r3
    2766:	001a      	movs	r2, r3
    2768:	693b      	ldr	r3, [r7, #16]
    276a:	189b      	adds	r3, r3, r2
    276c:	613b      	str	r3, [r7, #16]
    276e:	683b      	ldr	r3, [r7, #0]
    2770:	332a      	adds	r3, #42	; 0x2a
    2772:	60fb      	str	r3, [r7, #12]
    2774:	2300      	movs	r3, #0
    2776:	617b      	str	r3, [r7, #20]
    2778:	e017      	b.n	27aa <CheckSum_UDP+0x12a>
    277a:	697b      	ldr	r3, [r7, #20]
    277c:	2201      	movs	r2, #1
    277e:	4013      	ands	r3, r2
    2780:	d008      	beq.n	2794 <CheckSum_UDP+0x114>
    2782:	68fb      	ldr	r3, [r7, #12]
    2784:	1c5a      	adds	r2, r3, #1
    2786:	60fa      	str	r2, [r7, #12]
    2788:	781b      	ldrb	r3, [r3, #0]
    278a:	001a      	movs	r2, r3
    278c:	693b      	ldr	r3, [r7, #16]
    278e:	189b      	adds	r3, r3, r2
    2790:	613b      	str	r3, [r7, #16]
    2792:	e007      	b.n	27a4 <CheckSum_UDP+0x124>
    2794:	68fb      	ldr	r3, [r7, #12]
    2796:	1c5a      	adds	r2, r3, #1
    2798:	60fa      	str	r2, [r7, #12]
    279a:	781b      	ldrb	r3, [r3, #0]
    279c:	021b      	lsls	r3, r3, #8
    279e:	693a      	ldr	r2, [r7, #16]
    27a0:	18d3      	adds	r3, r2, r3
    27a2:	613b      	str	r3, [r7, #16]
    27a4:	697b      	ldr	r3, [r7, #20]
    27a6:	3301      	adds	r3, #1
    27a8:	617b      	str	r3, [r7, #20]
    27aa:	1dbb      	adds	r3, r7, #6
    27ac:	881b      	ldrh	r3, [r3, #0]
    27ae:	3b08      	subs	r3, #8
    27b0:	001a      	movs	r2, r3
    27b2:	697b      	ldr	r3, [r7, #20]
    27b4:	429a      	cmp	r2, r3
    27b6:	d8e0      	bhi.n	277a <CheckSum_UDP+0xfa>
    27b8:	e006      	b.n	27c8 <CheckSum_UDP+0x148>
    27ba:	693b      	ldr	r3, [r7, #16]
    27bc:	0c1a      	lsrs	r2, r3, #16
    27be:	693b      	ldr	r3, [r7, #16]
    27c0:	041b      	lsls	r3, r3, #16
    27c2:	0c1b      	lsrs	r3, r3, #16
    27c4:	18d3      	adds	r3, r2, r3
    27c6:	613b      	str	r3, [r7, #16]
    27c8:	693b      	ldr	r3, [r7, #16]
    27ca:	0c1b      	lsrs	r3, r3, #16
    27cc:	d1f5      	bne.n	27ba <CheckSum_UDP+0x13a>
    27ce:	693b      	ldr	r3, [r7, #16]
    27d0:	b29b      	uxth	r3, r3
    27d2:	43db      	mvns	r3, r3
    27d4:	b29b      	uxth	r3, r3
    27d6:	0018      	movs	r0, r3
    27d8:	46bd      	mov	sp, r7
    27da:	b006      	add	sp, #24
    27dc:	bd80      	pop	{r7, pc}
    27de:	46c0      	nop			; (mov r8, r8)

000027e0 <CheckSum_IP>:
    27e0:	b580      	push	{r7, lr}
    27e2:	b084      	sub	sp, #16
    27e4:	af00      	add	r7, sp, #0
    27e6:	6078      	str	r0, [r7, #4]
    27e8:	2300      	movs	r3, #0
    27ea:	60bb      	str	r3, [r7, #8]
    27ec:	2300      	movs	r3, #0
    27ee:	60fb      	str	r3, [r7, #12]
    27f0:	e011      	b.n	2816 <CheckSum_IP+0x36>
    27f2:	68fb      	ldr	r3, [r7, #12]
    27f4:	2b05      	cmp	r3, #5
    27f6:	d00a      	beq.n	280e <CheckSum_IP+0x2e>
    27f8:	68fb      	ldr	r3, [r7, #12]
    27fa:	3307      	adds	r3, #7
    27fc:	005b      	lsls	r3, r3, #1
    27fe:	687a      	ldr	r2, [r7, #4]
    2800:	18d3      	adds	r3, r2, r3
    2802:	881b      	ldrh	r3, [r3, #0]
    2804:	001a      	movs	r2, r3
    2806:	68bb      	ldr	r3, [r7, #8]
    2808:	189b      	adds	r3, r3, r2
    280a:	60bb      	str	r3, [r7, #8]
    280c:	e000      	b.n	2810 <CheckSum_IP+0x30>
    280e:	46c0      	nop			; (mov r8, r8)
    2810:	68fb      	ldr	r3, [r7, #12]
    2812:	3301      	adds	r3, #1
    2814:	60fb      	str	r3, [r7, #12]
    2816:	68fb      	ldr	r3, [r7, #12]
    2818:	2b09      	cmp	r3, #9
    281a:	d9ea      	bls.n	27f2 <CheckSum_IP+0x12>
    281c:	68bb      	ldr	r3, [r7, #8]
    281e:	0c1a      	lsrs	r2, r3, #16
    2820:	68bb      	ldr	r3, [r7, #8]
    2822:	041b      	lsls	r3, r3, #16
    2824:	0c1b      	lsrs	r3, r3, #16
    2826:	18d3      	adds	r3, r2, r3
    2828:	60bb      	str	r3, [r7, #8]
    282a:	68bb      	ldr	r3, [r7, #8]
    282c:	b29b      	uxth	r3, r3
    282e:	43db      	mvns	r3, r3
    2830:	b29b      	uxth	r3, r3
    2832:	0018      	movs	r0, r3
    2834:	46bd      	mov	sp, r7
    2836:	b004      	add	sp, #16
    2838:	bd80      	pop	{r7, pc}
    283a:	46c0      	nop			; (mov r8, r8)

0000283c <CheckSum_ICMP>:
    283c:	b580      	push	{r7, lr}
    283e:	b084      	sub	sp, #16
    2840:	af00      	add	r7, sp, #0
    2842:	0002      	movs	r2, r0
    2844:	6039      	str	r1, [r7, #0]
    2846:	1dbb      	adds	r3, r7, #6
    2848:	801a      	strh	r2, [r3, #0]
    284a:	2300      	movs	r3, #0
    284c:	60bb      	str	r3, [r7, #8]
    284e:	2300      	movs	r3, #0
    2850:	60fb      	str	r3, [r7, #12]
    2852:	e011      	b.n	2878 <CheckSum_ICMP+0x3c>
    2854:	68fb      	ldr	r3, [r7, #12]
    2856:	2b01      	cmp	r3, #1
    2858:	d00a      	beq.n	2870 <CheckSum_ICMP+0x34>
    285a:	68fb      	ldr	r3, [r7, #12]
    285c:	3311      	adds	r3, #17
    285e:	005b      	lsls	r3, r3, #1
    2860:	683a      	ldr	r2, [r7, #0]
    2862:	18d3      	adds	r3, r2, r3
    2864:	881b      	ldrh	r3, [r3, #0]
    2866:	001a      	movs	r2, r3
    2868:	68bb      	ldr	r3, [r7, #8]
    286a:	189b      	adds	r3, r3, r2
    286c:	60bb      	str	r3, [r7, #8]
    286e:	e000      	b.n	2872 <CheckSum_ICMP+0x36>
    2870:	46c0      	nop			; (mov r8, r8)
    2872:	68fb      	ldr	r3, [r7, #12]
    2874:	3301      	adds	r3, #1
    2876:	60fb      	str	r3, [r7, #12]
    2878:	1dbb      	adds	r3, r7, #6
    287a:	881a      	ldrh	r2, [r3, #0]
    287c:	68fb      	ldr	r3, [r7, #12]
    287e:	429a      	cmp	r2, r3
    2880:	d8e8      	bhi.n	2854 <CheckSum_ICMP+0x18>
    2882:	68bb      	ldr	r3, [r7, #8]
    2884:	0c1a      	lsrs	r2, r3, #16
    2886:	68bb      	ldr	r3, [r7, #8]
    2888:	041b      	lsls	r3, r3, #16
    288a:	0c1b      	lsrs	r3, r3, #16
    288c:	18d3      	adds	r3, r2, r3
    288e:	60bb      	str	r3, [r7, #8]
    2890:	68bb      	ldr	r3, [r7, #8]
    2892:	b29b      	uxth	r3, r3
    2894:	43db      	mvns	r3, r3
    2896:	b29b      	uxth	r3, r3
    2898:	0018      	movs	r0, r3
    289a:	46bd      	mov	sp, r7
    289c:	b004      	add	sp, #16
    289e:	bd80      	pop	{r7, pc}

000028a0 <Request_ICMP>:
    28a0:	b580      	push	{r7, lr}
    28a2:	b096      	sub	sp, #88	; 0x58
    28a4:	af00      	add	r7, sp, #0
    28a6:	4b73      	ldr	r3, [pc, #460]	; (2a74 <Request_ICMP+0x1d4>)
    28a8:	881a      	ldrh	r2, [r3, #0]
    28aa:	1d3b      	adds	r3, r7, #4
    28ac:	801a      	strh	r2, [r3, #0]
    28ae:	4b71      	ldr	r3, [pc, #452]	; (2a74 <Request_ICMP+0x1d4>)
    28b0:	885a      	ldrh	r2, [r3, #2]
    28b2:	1d3b      	adds	r3, r7, #4
    28b4:	805a      	strh	r2, [r3, #2]
    28b6:	4b6f      	ldr	r3, [pc, #444]	; (2a74 <Request_ICMP+0x1d4>)
    28b8:	889a      	ldrh	r2, [r3, #4]
    28ba:	1d3b      	adds	r3, r7, #4
    28bc:	809a      	strh	r2, [r3, #4]
    28be:	23c0      	movs	r3, #192	; 0xc0
    28c0:	059b      	lsls	r3, r3, #22
    28c2:	885b      	ldrh	r3, [r3, #2]
    28c4:	b29a      	uxth	r2, r3
    28c6:	1d3b      	adds	r3, r7, #4
    28c8:	80da      	strh	r2, [r3, #6]
    28ca:	23c0      	movs	r3, #192	; 0xc0
    28cc:	059b      	lsls	r3, r3, #22
    28ce:	889b      	ldrh	r3, [r3, #4]
    28d0:	b29a      	uxth	r2, r3
    28d2:	1d3b      	adds	r3, r7, #4
    28d4:	811a      	strh	r2, [r3, #8]
    28d6:	23c0      	movs	r3, #192	; 0xc0
    28d8:	059b      	lsls	r3, r3, #22
    28da:	88db      	ldrh	r3, [r3, #6]
    28dc:	b29a      	uxth	r2, r3
    28de:	1d3b      	adds	r3, r7, #4
    28e0:	815a      	strh	r2, [r3, #10]
    28e2:	1d3b      	adds	r3, r7, #4
    28e4:	2208      	movs	r2, #8
    28e6:	819a      	strh	r2, [r3, #12]
    28e8:	1d3b      	adds	r3, r7, #4
    28ea:	2245      	movs	r2, #69	; 0x45
    28ec:	81da      	strh	r2, [r3, #14]
    28ee:	1d3b      	adds	r3, r7, #4
    28f0:	22f0      	movs	r2, #240	; 0xf0
    28f2:	0192      	lsls	r2, r2, #6
    28f4:	821a      	strh	r2, [r3, #16]
    28f6:	4b60      	ldr	r3, [pc, #384]	; (2a78 <Request_ICMP+0x1d8>)
    28f8:	881a      	ldrh	r2, [r3, #0]
    28fa:	1d3b      	adds	r3, r7, #4
    28fc:	825a      	strh	r2, [r3, #18]
    28fe:	1d3b      	adds	r3, r7, #4
    2900:	2200      	movs	r2, #0
    2902:	829a      	strh	r2, [r3, #20]
    2904:	1d3b      	adds	r3, r7, #4
    2906:	22c0      	movs	r2, #192	; 0xc0
    2908:	0052      	lsls	r2, r2, #1
    290a:	82da      	strh	r2, [r3, #22]
    290c:	1d3b      	adds	r3, r7, #4
    290e:	2200      	movs	r2, #0
    2910:	831a      	strh	r2, [r3, #24]
    2912:	4b5a      	ldr	r3, [pc, #360]	; (2a7c <Request_ICMP+0x1dc>)
    2914:	881a      	ldrh	r2, [r3, #0]
    2916:	1d3b      	adds	r3, r7, #4
    2918:	835a      	strh	r2, [r3, #26]
    291a:	4b58      	ldr	r3, [pc, #352]	; (2a7c <Request_ICMP+0x1dc>)
    291c:	885a      	ldrh	r2, [r3, #2]
    291e:	1d3b      	adds	r3, r7, #4
    2920:	839a      	strh	r2, [r3, #28]
    2922:	4b54      	ldr	r3, [pc, #336]	; (2a74 <Request_ICMP+0x1d4>)
    2924:	88da      	ldrh	r2, [r3, #6]
    2926:	1d3b      	adds	r3, r7, #4
    2928:	83da      	strh	r2, [r3, #30]
    292a:	4b52      	ldr	r3, [pc, #328]	; (2a74 <Request_ICMP+0x1d4>)
    292c:	891a      	ldrh	r2, [r3, #8]
    292e:	1d3b      	adds	r3, r7, #4
    2930:	841a      	strh	r2, [r3, #32]
    2932:	1d3b      	adds	r3, r7, #4
    2934:	0018      	movs	r0, r3
    2936:	f7ff ff53 	bl	27e0 <CheckSum_IP>
    293a:	0003      	movs	r3, r0
    293c:	001a      	movs	r2, r3
    293e:	1d3b      	adds	r3, r7, #4
    2940:	831a      	strh	r2, [r3, #24]
    2942:	1d3b      	adds	r3, r7, #4
    2944:	2208      	movs	r2, #8
    2946:	845a      	strh	r2, [r3, #34]	; 0x22
    2948:	1d3b      	adds	r3, r7, #4
    294a:	2200      	movs	r2, #0
    294c:	849a      	strh	r2, [r3, #36]	; 0x24
    294e:	1d3b      	adds	r3, r7, #4
    2950:	2202      	movs	r2, #2
    2952:	84da      	strh	r2, [r3, #38]	; 0x26
    2954:	4b4a      	ldr	r3, [pc, #296]	; (2a80 <Request_ICMP+0x1e0>)
    2956:	881a      	ldrh	r2, [r3, #0]
    2958:	1d3b      	adds	r3, r7, #4
    295a:	851a      	strh	r2, [r3, #40]	; 0x28
    295c:	2300      	movs	r3, #0
    295e:	657b      	str	r3, [r7, #84]	; 0x54
    2960:	2300      	movs	r3, #0
    2962:	653b      	str	r3, [r7, #80]	; 0x50
    2964:	e021      	b.n	29aa <Request_ICMP+0x10a>
    2966:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2968:	b2db      	uxtb	r3, r3
    296a:	3361      	adds	r3, #97	; 0x61
    296c:	b2da      	uxtb	r2, r3
    296e:	003b      	movs	r3, r7
    2970:	701a      	strb	r2, [r3, #0]
    2972:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2974:	b2db      	uxtb	r3, r3
    2976:	3362      	adds	r3, #98	; 0x62
    2978:	b2da      	uxtb	r2, r3
    297a:	003b      	movs	r3, r7
    297c:	705a      	strb	r2, [r3, #1]
    297e:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2980:	3315      	adds	r3, #21
    2982:	001a      	movs	r2, r3
    2984:	003b      	movs	r3, r7
    2986:	785b      	ldrb	r3, [r3, #1]
    2988:	021b      	lsls	r3, r3, #8
    298a:	b219      	sxth	r1, r3
    298c:	003b      	movs	r3, r7
    298e:	781b      	ldrb	r3, [r3, #0]
    2990:	b21b      	sxth	r3, r3
    2992:	430b      	orrs	r3, r1
    2994:	b21b      	sxth	r3, r3
    2996:	b299      	uxth	r1, r3
    2998:	1d3b      	adds	r3, r7, #4
    299a:	0052      	lsls	r2, r2, #1
    299c:	52d1      	strh	r1, [r2, r3]
    299e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29a0:	3302      	adds	r3, #2
    29a2:	657b      	str	r3, [r7, #84]	; 0x54
    29a4:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    29a6:	3301      	adds	r3, #1
    29a8:	653b      	str	r3, [r7, #80]	; 0x50
    29aa:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29ac:	2b1f      	cmp	r3, #31
    29ae:	d9da      	bls.n	2966 <Request_ICMP+0xc6>
    29b0:	1d3b      	adds	r3, r7, #4
    29b2:	0019      	movs	r1, r3
    29b4:	2014      	movs	r0, #20
    29b6:	f7ff ff41 	bl	283c <CheckSum_ICMP>
    29ba:	0003      	movs	r3, r0
    29bc:	001a      	movs	r2, r3
    29be:	1d3b      	adds	r3, r7, #4
    29c0:	849a      	strh	r2, [r3, #36]	; 0x24
    29c2:	1d3b      	adds	r3, r7, #4
    29c4:	214a      	movs	r1, #74	; 0x4a
    29c6:	0018      	movs	r0, r3
    29c8:	f7ff fcb2 	bl	2330 <SendPacket>
    29cc:	4b2a      	ldr	r3, [pc, #168]	; (2a78 <Request_ICMP+0x1d8>)
    29ce:	881b      	ldrh	r3, [r3, #0]
    29d0:	0a1b      	lsrs	r3, r3, #8
    29d2:	b29b      	uxth	r3, r3
    29d4:	b2da      	uxtb	r2, r3
    29d6:	003b      	movs	r3, r7
    29d8:	701a      	strb	r2, [r3, #0]
    29da:	4b27      	ldr	r3, [pc, #156]	; (2a78 <Request_ICMP+0x1d8>)
    29dc:	881b      	ldrh	r3, [r3, #0]
    29de:	b2da      	uxtb	r2, r3
    29e0:	003b      	movs	r3, r7
    29e2:	705a      	strb	r2, [r3, #1]
    29e4:	003b      	movs	r3, r7
    29e6:	781b      	ldrb	r3, [r3, #0]
    29e8:	3301      	adds	r3, #1
    29ea:	b2da      	uxtb	r2, r3
    29ec:	003b      	movs	r3, r7
    29ee:	701a      	strb	r2, [r3, #0]
    29f0:	003b      	movs	r3, r7
    29f2:	781b      	ldrb	r3, [r3, #0]
    29f4:	2b00      	cmp	r3, #0
    29f6:	d105      	bne.n	2a04 <Request_ICMP+0x164>
    29f8:	003b      	movs	r3, r7
    29fa:	785b      	ldrb	r3, [r3, #1]
    29fc:	3301      	adds	r3, #1
    29fe:	b2da      	uxtb	r2, r3
    2a00:	003b      	movs	r3, r7
    2a02:	705a      	strb	r2, [r3, #1]
    2a04:	003b      	movs	r3, r7
    2a06:	781b      	ldrb	r3, [r3, #0]
    2a08:	021b      	lsls	r3, r3, #8
    2a0a:	b21a      	sxth	r2, r3
    2a0c:	003b      	movs	r3, r7
    2a0e:	785b      	ldrb	r3, [r3, #1]
    2a10:	b21b      	sxth	r3, r3
    2a12:	4313      	orrs	r3, r2
    2a14:	b21b      	sxth	r3, r3
    2a16:	b29a      	uxth	r2, r3
    2a18:	4b17      	ldr	r3, [pc, #92]	; (2a78 <Request_ICMP+0x1d8>)
    2a1a:	801a      	strh	r2, [r3, #0]
    2a1c:	4b18      	ldr	r3, [pc, #96]	; (2a80 <Request_ICMP+0x1e0>)
    2a1e:	881b      	ldrh	r3, [r3, #0]
    2a20:	0a1b      	lsrs	r3, r3, #8
    2a22:	b29b      	uxth	r3, r3
    2a24:	b2da      	uxtb	r2, r3
    2a26:	003b      	movs	r3, r7
    2a28:	701a      	strb	r2, [r3, #0]
    2a2a:	4b15      	ldr	r3, [pc, #84]	; (2a80 <Request_ICMP+0x1e0>)
    2a2c:	881b      	ldrh	r3, [r3, #0]
    2a2e:	b2da      	uxtb	r2, r3
    2a30:	003b      	movs	r3, r7
    2a32:	705a      	strb	r2, [r3, #1]
    2a34:	003b      	movs	r3, r7
    2a36:	781b      	ldrb	r3, [r3, #0]
    2a38:	3301      	adds	r3, #1
    2a3a:	b2da      	uxtb	r2, r3
    2a3c:	003b      	movs	r3, r7
    2a3e:	701a      	strb	r2, [r3, #0]
    2a40:	003b      	movs	r3, r7
    2a42:	781b      	ldrb	r3, [r3, #0]
    2a44:	2b00      	cmp	r3, #0
    2a46:	d105      	bne.n	2a54 <Request_ICMP+0x1b4>
    2a48:	003b      	movs	r3, r7
    2a4a:	785b      	ldrb	r3, [r3, #1]
    2a4c:	3301      	adds	r3, #1
    2a4e:	b2da      	uxtb	r2, r3
    2a50:	003b      	movs	r3, r7
    2a52:	705a      	strb	r2, [r3, #1]
    2a54:	003b      	movs	r3, r7
    2a56:	781b      	ldrb	r3, [r3, #0]
    2a58:	021b      	lsls	r3, r3, #8
    2a5a:	b21a      	sxth	r2, r3
    2a5c:	003b      	movs	r3, r7
    2a5e:	785b      	ldrb	r3, [r3, #1]
    2a60:	b21b      	sxth	r3, r3
    2a62:	4313      	orrs	r3, r2
    2a64:	b21b      	sxth	r3, r3
    2a66:	b29a      	uxth	r2, r3
    2a68:	4b05      	ldr	r3, [pc, #20]	; (2a80 <Request_ICMP+0x1e0>)
    2a6a:	801a      	strh	r2, [r3, #0]
    2a6c:	46c0      	nop			; (mov r8, r8)
    2a6e:	46bd      	mov	sp, r7
    2a70:	b016      	add	sp, #88	; 0x58
    2a72:	bd80      	pop	{r7, pc}
    2a74:	20004d1c 	.word	0x20004d1c
    2a78:	20004d30 	.word	0x20004d30
    2a7c:	2000000c 	.word	0x2000000c
    2a80:	20004d32 	.word	0x20004d32

00002a84 <Answear_ICMP>:
    2a84:	b580      	push	{r7, lr}
    2a86:	b082      	sub	sp, #8
    2a88:	af00      	add	r7, sp, #0
    2a8a:	4b53      	ldr	r3, [pc, #332]	; (2bd8 <Answear_ICMP+0x154>)
    2a8c:	4a53      	ldr	r2, [pc, #332]	; (2bdc <Answear_ICMP+0x158>)
    2a8e:	5a9a      	ldrh	r2, [r3, r2]
    2a90:	1cbb      	adds	r3, r7, #2
    2a92:	3a26      	subs	r2, #38	; 0x26
    2a94:	801a      	strh	r2, [r3, #0]
    2a96:	1cbb      	adds	r3, r7, #2
    2a98:	881b      	ldrh	r3, [r3, #0]
    2a9a:	2201      	movs	r2, #1
    2a9c:	4013      	ands	r3, r2
    2a9e:	d017      	beq.n	2ad0 <Answear_ICMP+0x4c>
    2aa0:	1cbb      	adds	r3, r7, #2
    2aa2:	881b      	ldrh	r3, [r3, #0]
    2aa4:	3301      	adds	r3, #1
    2aa6:	105a      	asrs	r2, r3, #1
    2aa8:	1cbb      	adds	r3, r7, #2
    2aaa:	801a      	strh	r2, [r3, #0]
    2aac:	1cbb      	adds	r3, r7, #2
    2aae:	881b      	ldrh	r3, [r3, #0]
    2ab0:	3310      	adds	r3, #16
    2ab2:	001a      	movs	r2, r3
    2ab4:	1cbb      	adds	r3, r7, #2
    2ab6:	881b      	ldrh	r3, [r3, #0]
    2ab8:	3310      	adds	r3, #16
    2aba:	0019      	movs	r1, r3
    2abc:	4b46      	ldr	r3, [pc, #280]	; (2bd8 <Answear_ICMP+0x154>)
    2abe:	0049      	lsls	r1, r1, #1
    2ac0:	5acb      	ldrh	r3, [r1, r3]
    2ac2:	21ff      	movs	r1, #255	; 0xff
    2ac4:	400b      	ands	r3, r1
    2ac6:	b299      	uxth	r1, r3
    2ac8:	4b43      	ldr	r3, [pc, #268]	; (2bd8 <Answear_ICMP+0x154>)
    2aca:	0052      	lsls	r2, r2, #1
    2acc:	52d1      	strh	r1, [r2, r3]
    2ace:	e004      	b.n	2ada <Answear_ICMP+0x56>
    2ad0:	1cbb      	adds	r3, r7, #2
    2ad2:	1cba      	adds	r2, r7, #2
    2ad4:	8812      	ldrh	r2, [r2, #0]
    2ad6:	0852      	lsrs	r2, r2, #1
    2ad8:	801a      	strh	r2, [r3, #0]
    2ada:	4b3f      	ldr	r3, [pc, #252]	; (2bd8 <Answear_ICMP+0x154>)
    2adc:	88da      	ldrh	r2, [r3, #6]
    2ade:	4b40      	ldr	r3, [pc, #256]	; (2be0 <Answear_ICMP+0x15c>)
    2ae0:	801a      	strh	r2, [r3, #0]
    2ae2:	4b3d      	ldr	r3, [pc, #244]	; (2bd8 <Answear_ICMP+0x154>)
    2ae4:	891a      	ldrh	r2, [r3, #8]
    2ae6:	4b3e      	ldr	r3, [pc, #248]	; (2be0 <Answear_ICMP+0x15c>)
    2ae8:	805a      	strh	r2, [r3, #2]
    2aea:	4b3b      	ldr	r3, [pc, #236]	; (2bd8 <Answear_ICMP+0x154>)
    2aec:	895a      	ldrh	r2, [r3, #10]
    2aee:	4b3c      	ldr	r3, [pc, #240]	; (2be0 <Answear_ICMP+0x15c>)
    2af0:	809a      	strh	r2, [r3, #4]
    2af2:	23c0      	movs	r3, #192	; 0xc0
    2af4:	059b      	lsls	r3, r3, #22
    2af6:	885b      	ldrh	r3, [r3, #2]
    2af8:	b29a      	uxth	r2, r3
    2afa:	4b39      	ldr	r3, [pc, #228]	; (2be0 <Answear_ICMP+0x15c>)
    2afc:	80da      	strh	r2, [r3, #6]
    2afe:	23c0      	movs	r3, #192	; 0xc0
    2b00:	059b      	lsls	r3, r3, #22
    2b02:	889b      	ldrh	r3, [r3, #4]
    2b04:	b29a      	uxth	r2, r3
    2b06:	4b36      	ldr	r3, [pc, #216]	; (2be0 <Answear_ICMP+0x15c>)
    2b08:	811a      	strh	r2, [r3, #8]
    2b0a:	23c0      	movs	r3, #192	; 0xc0
    2b0c:	059b      	lsls	r3, r3, #22
    2b0e:	88db      	ldrh	r3, [r3, #6]
    2b10:	b29a      	uxth	r2, r3
    2b12:	4b33      	ldr	r3, [pc, #204]	; (2be0 <Answear_ICMP+0x15c>)
    2b14:	815a      	strh	r2, [r3, #10]
    2b16:	4b30      	ldr	r3, [pc, #192]	; (2bd8 <Answear_ICMP+0x154>)
    2b18:	899a      	ldrh	r2, [r3, #12]
    2b1a:	4b31      	ldr	r3, [pc, #196]	; (2be0 <Answear_ICMP+0x15c>)
    2b1c:	819a      	strh	r2, [r3, #12]
    2b1e:	2307      	movs	r3, #7
    2b20:	607b      	str	r3, [r7, #4]
    2b22:	e00a      	b.n	2b3a <Answear_ICMP+0xb6>
    2b24:	4b2c      	ldr	r3, [pc, #176]	; (2bd8 <Answear_ICMP+0x154>)
    2b26:	687a      	ldr	r2, [r7, #4]
    2b28:	0052      	lsls	r2, r2, #1
    2b2a:	5ad1      	ldrh	r1, [r2, r3]
    2b2c:	4b2c      	ldr	r3, [pc, #176]	; (2be0 <Answear_ICMP+0x15c>)
    2b2e:	687a      	ldr	r2, [r7, #4]
    2b30:	0052      	lsls	r2, r2, #1
    2b32:	52d1      	strh	r1, [r2, r3]
    2b34:	687b      	ldr	r3, [r7, #4]
    2b36:	3301      	adds	r3, #1
    2b38:	607b      	str	r3, [r7, #4]
    2b3a:	687b      	ldr	r3, [r7, #4]
    2b3c:	2b0b      	cmp	r3, #11
    2b3e:	d9f1      	bls.n	2b24 <Answear_ICMP+0xa0>
    2b40:	4b25      	ldr	r3, [pc, #148]	; (2bd8 <Answear_ICMP+0x154>)
    2b42:	0018      	movs	r0, r3
    2b44:	f7ff fe4c 	bl	27e0 <CheckSum_IP>
    2b48:	0003      	movs	r3, r0
    2b4a:	001a      	movs	r2, r3
    2b4c:	4b24      	ldr	r3, [pc, #144]	; (2be0 <Answear_ICMP+0x15c>)
    2b4e:	831a      	strh	r2, [r3, #24]
    2b50:	4b21      	ldr	r3, [pc, #132]	; (2bd8 <Answear_ICMP+0x154>)
    2b52:	8bda      	ldrh	r2, [r3, #30]
    2b54:	4b22      	ldr	r3, [pc, #136]	; (2be0 <Answear_ICMP+0x15c>)
    2b56:	835a      	strh	r2, [r3, #26]
    2b58:	4b1f      	ldr	r3, [pc, #124]	; (2bd8 <Answear_ICMP+0x154>)
    2b5a:	8c1a      	ldrh	r2, [r3, #32]
    2b5c:	4b20      	ldr	r3, [pc, #128]	; (2be0 <Answear_ICMP+0x15c>)
    2b5e:	839a      	strh	r2, [r3, #28]
    2b60:	4b1d      	ldr	r3, [pc, #116]	; (2bd8 <Answear_ICMP+0x154>)
    2b62:	8b5a      	ldrh	r2, [r3, #26]
    2b64:	4b1e      	ldr	r3, [pc, #120]	; (2be0 <Answear_ICMP+0x15c>)
    2b66:	83da      	strh	r2, [r3, #30]
    2b68:	4b1b      	ldr	r3, [pc, #108]	; (2bd8 <Answear_ICMP+0x154>)
    2b6a:	8b9a      	ldrh	r2, [r3, #28]
    2b6c:	4b1c      	ldr	r3, [pc, #112]	; (2be0 <Answear_ICMP+0x15c>)
    2b6e:	841a      	strh	r2, [r3, #32]
    2b70:	4b1b      	ldr	r3, [pc, #108]	; (2be0 <Answear_ICMP+0x15c>)
    2b72:	2200      	movs	r2, #0
    2b74:	845a      	strh	r2, [r3, #34]	; 0x22
    2b76:	4b18      	ldr	r3, [pc, #96]	; (2bd8 <Answear_ICMP+0x154>)
    2b78:	2200      	movs	r2, #0
    2b7a:	845a      	strh	r2, [r3, #34]	; 0x22
    2b7c:	4a16      	ldr	r2, [pc, #88]	; (2bd8 <Answear_ICMP+0x154>)
    2b7e:	1cbb      	adds	r3, r7, #2
    2b80:	881b      	ldrh	r3, [r3, #0]
    2b82:	0011      	movs	r1, r2
    2b84:	0018      	movs	r0, r3
    2b86:	f7ff fe59 	bl	283c <CheckSum_ICMP>
    2b8a:	0003      	movs	r3, r0
    2b8c:	001a      	movs	r2, r3
    2b8e:	4b14      	ldr	r3, [pc, #80]	; (2be0 <Answear_ICMP+0x15c>)
    2b90:	849a      	strh	r2, [r3, #36]	; 0x24
    2b92:	2313      	movs	r3, #19
    2b94:	607b      	str	r3, [r7, #4]
    2b96:	e00a      	b.n	2bae <Answear_ICMP+0x12a>
    2b98:	4b0f      	ldr	r3, [pc, #60]	; (2bd8 <Answear_ICMP+0x154>)
    2b9a:	687a      	ldr	r2, [r7, #4]
    2b9c:	0052      	lsls	r2, r2, #1
    2b9e:	5ad1      	ldrh	r1, [r2, r3]
    2ba0:	4b0f      	ldr	r3, [pc, #60]	; (2be0 <Answear_ICMP+0x15c>)
    2ba2:	687a      	ldr	r2, [r7, #4]
    2ba4:	0052      	lsls	r2, r2, #1
    2ba6:	52d1      	strh	r1, [r2, r3]
    2ba8:	687b      	ldr	r3, [r7, #4]
    2baa:	3301      	adds	r3, #1
    2bac:	607b      	str	r3, [r7, #4]
    2bae:	1cbb      	adds	r3, r7, #2
    2bb0:	881b      	ldrh	r3, [r3, #0]
    2bb2:	3311      	adds	r3, #17
    2bb4:	001a      	movs	r2, r3
    2bb6:	687b      	ldr	r3, [r7, #4]
    2bb8:	429a      	cmp	r2, r3
    2bba:	d8ed      	bhi.n	2b98 <Answear_ICMP+0x114>
    2bbc:	1cbb      	adds	r3, r7, #2
    2bbe:	881b      	ldrh	r3, [r3, #0]
    2bc0:	3311      	adds	r3, #17
    2bc2:	005a      	lsls	r2, r3, #1
    2bc4:	4b06      	ldr	r3, [pc, #24]	; (2be0 <Answear_ICMP+0x15c>)
    2bc6:	0011      	movs	r1, r2
    2bc8:	0018      	movs	r0, r3
    2bca:	f7ff fbb1 	bl	2330 <SendPacket>
    2bce:	46c0      	nop			; (mov r8, r8)
    2bd0:	46bd      	mov	sp, r7
    2bd2:	b002      	add	sp, #8
    2bd4:	bd80      	pop	{r7, pc}
    2bd6:	46c0      	nop			; (mov r8, r8)
    2bd8:	20004d38 	.word	0x20004d38
    2bdc:	000005dc 	.word	0x000005dc
    2be0:	20005344 	.word	0x20005344

00002be4 <Send_UDP>:
    2be4:	b590      	push	{r4, r7, lr}
    2be6:	b089      	sub	sp, #36	; 0x24
    2be8:	af00      	add	r7, sp, #0
    2bea:	6078      	str	r0, [r7, #4]
    2bec:	6039      	str	r1, [r7, #0]
    2bee:	4b86      	ldr	r3, [pc, #536]	; (2e08 <Send_UDP+0x224>)
    2bf0:	881a      	ldrh	r2, [r3, #0]
    2bf2:	4b86      	ldr	r3, [pc, #536]	; (2e0c <Send_UDP+0x228>)
    2bf4:	801a      	strh	r2, [r3, #0]
    2bf6:	4b84      	ldr	r3, [pc, #528]	; (2e08 <Send_UDP+0x224>)
    2bf8:	885a      	ldrh	r2, [r3, #2]
    2bfa:	4b84      	ldr	r3, [pc, #528]	; (2e0c <Send_UDP+0x228>)
    2bfc:	805a      	strh	r2, [r3, #2]
    2bfe:	4b82      	ldr	r3, [pc, #520]	; (2e08 <Send_UDP+0x224>)
    2c00:	889a      	ldrh	r2, [r3, #4]
    2c02:	4b82      	ldr	r3, [pc, #520]	; (2e0c <Send_UDP+0x228>)
    2c04:	809a      	strh	r2, [r3, #4]
    2c06:	23c0      	movs	r3, #192	; 0xc0
    2c08:	059b      	lsls	r3, r3, #22
    2c0a:	885b      	ldrh	r3, [r3, #2]
    2c0c:	b29a      	uxth	r2, r3
    2c0e:	4b7f      	ldr	r3, [pc, #508]	; (2e0c <Send_UDP+0x228>)
    2c10:	80da      	strh	r2, [r3, #6]
    2c12:	23c0      	movs	r3, #192	; 0xc0
    2c14:	059b      	lsls	r3, r3, #22
    2c16:	889b      	ldrh	r3, [r3, #4]
    2c18:	b29a      	uxth	r2, r3
    2c1a:	4b7c      	ldr	r3, [pc, #496]	; (2e0c <Send_UDP+0x228>)
    2c1c:	811a      	strh	r2, [r3, #8]
    2c1e:	23c0      	movs	r3, #192	; 0xc0
    2c20:	059b      	lsls	r3, r3, #22
    2c22:	88db      	ldrh	r3, [r3, #6]
    2c24:	b29a      	uxth	r2, r3
    2c26:	4b79      	ldr	r3, [pc, #484]	; (2e0c <Send_UDP+0x228>)
    2c28:	815a      	strh	r2, [r3, #10]
    2c2a:	4b78      	ldr	r3, [pc, #480]	; (2e0c <Send_UDP+0x228>)
    2c2c:	2208      	movs	r2, #8
    2c2e:	819a      	strh	r2, [r3, #12]
    2c30:	4b76      	ldr	r3, [pc, #472]	; (2e0c <Send_UDP+0x228>)
    2c32:	2245      	movs	r2, #69	; 0x45
    2c34:	81da      	strh	r2, [r3, #14]
    2c36:	4b75      	ldr	r3, [pc, #468]	; (2e0c <Send_UDP+0x228>)
    2c38:	22f0      	movs	r2, #240	; 0xf0
    2c3a:	0192      	lsls	r2, r2, #6
    2c3c:	821a      	strh	r2, [r3, #16]
    2c3e:	4b74      	ldr	r3, [pc, #464]	; (2e10 <Send_UDP+0x22c>)
    2c40:	881a      	ldrh	r2, [r3, #0]
    2c42:	4b72      	ldr	r3, [pc, #456]	; (2e0c <Send_UDP+0x228>)
    2c44:	825a      	strh	r2, [r3, #18]
    2c46:	4b71      	ldr	r3, [pc, #452]	; (2e0c <Send_UDP+0x228>)
    2c48:	2200      	movs	r2, #0
    2c4a:	829a      	strh	r2, [r3, #20]
    2c4c:	4b6f      	ldr	r3, [pc, #444]	; (2e0c <Send_UDP+0x228>)
    2c4e:	228c      	movs	r2, #140	; 0x8c
    2c50:	0152      	lsls	r2, r2, #5
    2c52:	82da      	strh	r2, [r3, #22]
    2c54:	4b6d      	ldr	r3, [pc, #436]	; (2e0c <Send_UDP+0x228>)
    2c56:	2200      	movs	r2, #0
    2c58:	831a      	strh	r2, [r3, #24]
    2c5a:	4b6e      	ldr	r3, [pc, #440]	; (2e14 <Send_UDP+0x230>)
    2c5c:	881a      	ldrh	r2, [r3, #0]
    2c5e:	4b6b      	ldr	r3, [pc, #428]	; (2e0c <Send_UDP+0x228>)
    2c60:	835a      	strh	r2, [r3, #26]
    2c62:	4b6c      	ldr	r3, [pc, #432]	; (2e14 <Send_UDP+0x230>)
    2c64:	885a      	ldrh	r2, [r3, #2]
    2c66:	4b69      	ldr	r3, [pc, #420]	; (2e0c <Send_UDP+0x228>)
    2c68:	839a      	strh	r2, [r3, #28]
    2c6a:	4b67      	ldr	r3, [pc, #412]	; (2e08 <Send_UDP+0x224>)
    2c6c:	88da      	ldrh	r2, [r3, #6]
    2c6e:	4b67      	ldr	r3, [pc, #412]	; (2e0c <Send_UDP+0x228>)
    2c70:	83da      	strh	r2, [r3, #30]
    2c72:	4b65      	ldr	r3, [pc, #404]	; (2e08 <Send_UDP+0x224>)
    2c74:	891a      	ldrh	r2, [r3, #8]
    2c76:	4b65      	ldr	r3, [pc, #404]	; (2e0c <Send_UDP+0x228>)
    2c78:	841a      	strh	r2, [r3, #32]
    2c7a:	2316      	movs	r3, #22
    2c7c:	18fb      	adds	r3, r7, r3
    2c7e:	4a66      	ldr	r2, [pc, #408]	; (2e18 <Send_UDP+0x234>)
    2c80:	801a      	strh	r2, [r3, #0]
    2c82:	2316      	movs	r3, #22
    2c84:	18fb      	adds	r3, r7, r3
    2c86:	2216      	movs	r2, #22
    2c88:	18ba      	adds	r2, r7, r2
    2c8a:	8812      	ldrh	r2, [r2, #0]
    2c8c:	ba52      	rev16	r2, r2
    2c8e:	801a      	strh	r2, [r3, #0]
    2c90:	4b62      	ldr	r3, [pc, #392]	; (2e1c <Send_UDP+0x238>)
    2c92:	881a      	ldrh	r2, [r3, #0]
    2c94:	2314      	movs	r3, #20
    2c96:	18fb      	adds	r3, r7, r3
    2c98:	ba52      	rev16	r2, r2
    2c9a:	801a      	strh	r2, [r3, #0]
    2c9c:	4b5b      	ldr	r3, [pc, #364]	; (2e0c <Send_UDP+0x228>)
    2c9e:	2216      	movs	r2, #22
    2ca0:	18ba      	adds	r2, r7, r2
    2ca2:	8812      	ldrh	r2, [r2, #0]
    2ca4:	845a      	strh	r2, [r3, #34]	; 0x22
    2ca6:	4b59      	ldr	r3, [pc, #356]	; (2e0c <Send_UDP+0x228>)
    2ca8:	2214      	movs	r2, #20
    2caa:	18ba      	adds	r2, r7, r2
    2cac:	8812      	ldrh	r2, [r2, #0]
    2cae:	849a      	strh	r2, [r3, #36]	; 0x24
    2cb0:	4b56      	ldr	r3, [pc, #344]	; (2e0c <Send_UDP+0x228>)
    2cb2:	22c0      	movs	r2, #192	; 0xc0
    2cb4:	0112      	lsls	r2, r2, #4
    2cb6:	84da      	strh	r2, [r3, #38]	; 0x26
    2cb8:	4b54      	ldr	r3, [pc, #336]	; (2e0c <Send_UDP+0x228>)
    2cba:	2200      	movs	r2, #0
    2cbc:	851a      	strh	r2, [r3, #40]	; 0x28
    2cbe:	4b58      	ldr	r3, [pc, #352]	; (2e20 <Send_UDP+0x23c>)
    2cc0:	61bb      	str	r3, [r7, #24]
    2cc2:	683a      	ldr	r2, [r7, #0]
    2cc4:	23fe      	movs	r3, #254	; 0xfe
    2cc6:	005b      	lsls	r3, r3, #1
    2cc8:	429a      	cmp	r2, r3
    2cca:	dd02      	ble.n	2cd2 <Send_UDP+0xee>
    2ccc:	23fe      	movs	r3, #254	; 0xfe
    2cce:	005b      	lsls	r3, r3, #1
    2cd0:	603b      	str	r3, [r7, #0]
    2cd2:	2300      	movs	r3, #0
    2cd4:	61fb      	str	r3, [r7, #28]
    2cd6:	e00a      	b.n	2cee <Send_UDP+0x10a>
    2cd8:	69bb      	ldr	r3, [r7, #24]
    2cda:	1c5a      	adds	r2, r3, #1
    2cdc:	61ba      	str	r2, [r7, #24]
    2cde:	687a      	ldr	r2, [r7, #4]
    2ce0:	1c51      	adds	r1, r2, #1
    2ce2:	6079      	str	r1, [r7, #4]
    2ce4:	7812      	ldrb	r2, [r2, #0]
    2ce6:	701a      	strb	r2, [r3, #0]
    2ce8:	69fb      	ldr	r3, [r7, #28]
    2cea:	3301      	adds	r3, #1
    2cec:	61fb      	str	r3, [r7, #28]
    2cee:	683b      	ldr	r3, [r7, #0]
    2cf0:	69fa      	ldr	r2, [r7, #28]
    2cf2:	429a      	cmp	r2, r3
    2cf4:	d3f0      	bcc.n	2cd8 <Send_UDP+0xf4>
    2cf6:	683b      	ldr	r3, [r7, #0]
    2cf8:	b29a      	uxth	r2, r3
    2cfa:	2312      	movs	r3, #18
    2cfc:	18fb      	adds	r3, r7, r3
    2cfe:	321c      	adds	r2, #28
    2d00:	801a      	strh	r2, [r3, #0]
    2d02:	2312      	movs	r3, #18
    2d04:	18fb      	adds	r3, r7, r3
    2d06:	881b      	ldrh	r3, [r3, #0]
    2d08:	021b      	lsls	r3, r3, #8
    2d0a:	b29a      	uxth	r2, r3
    2d0c:	2312      	movs	r3, #18
    2d0e:	18fb      	adds	r3, r7, r3
    2d10:	881b      	ldrh	r3, [r3, #0]
    2d12:	0a1b      	lsrs	r3, r3, #8
    2d14:	b29b      	uxth	r3, r3
    2d16:	18d3      	adds	r3, r2, r3
    2d18:	b29a      	uxth	r2, r3
    2d1a:	4b3c      	ldr	r3, [pc, #240]	; (2e0c <Send_UDP+0x228>)
    2d1c:	821a      	strh	r2, [r3, #16]
    2d1e:	4b3b      	ldr	r3, [pc, #236]	; (2e0c <Send_UDP+0x228>)
    2d20:	0018      	movs	r0, r3
    2d22:	f7ff fd5d 	bl	27e0 <CheckSum_IP>
    2d26:	0003      	movs	r3, r0
    2d28:	001a      	movs	r2, r3
    2d2a:	4b38      	ldr	r3, [pc, #224]	; (2e0c <Send_UDP+0x228>)
    2d2c:	831a      	strh	r2, [r3, #24]
    2d2e:	683b      	ldr	r3, [r7, #0]
    2d30:	b29a      	uxth	r2, r3
    2d32:	2310      	movs	r3, #16
    2d34:	18fb      	adds	r3, r7, r3
    2d36:	3208      	adds	r2, #8
    2d38:	801a      	strh	r2, [r3, #0]
    2d3a:	2310      	movs	r3, #16
    2d3c:	18fb      	adds	r3, r7, r3
    2d3e:	881b      	ldrh	r3, [r3, #0]
    2d40:	021b      	lsls	r3, r3, #8
    2d42:	b29a      	uxth	r2, r3
    2d44:	2310      	movs	r3, #16
    2d46:	18fb      	adds	r3, r7, r3
    2d48:	881b      	ldrh	r3, [r3, #0]
    2d4a:	0a1b      	lsrs	r3, r3, #8
    2d4c:	b29b      	uxth	r3, r3
    2d4e:	18d3      	adds	r3, r2, r3
    2d50:	b29a      	uxth	r2, r3
    2d52:	4b2e      	ldr	r3, [pc, #184]	; (2e0c <Send_UDP+0x228>)
    2d54:	84da      	strh	r2, [r3, #38]	; 0x26
    2d56:	683b      	ldr	r3, [r7, #0]
    2d58:	b29b      	uxth	r3, r3
    2d5a:	3308      	adds	r3, #8
    2d5c:	b29b      	uxth	r3, r3
    2d5e:	220e      	movs	r2, #14
    2d60:	18bc      	adds	r4, r7, r2
    2d62:	4a2a      	ldr	r2, [pc, #168]	; (2e0c <Send_UDP+0x228>)
    2d64:	0011      	movs	r1, r2
    2d66:	0018      	movs	r0, r3
    2d68:	f7ff fc8a 	bl	2680 <CheckSum_UDP>
    2d6c:	0003      	movs	r3, r0
    2d6e:	8023      	strh	r3, [r4, #0]
    2d70:	230e      	movs	r3, #14
    2d72:	18fb      	adds	r3, r7, r3
    2d74:	881b      	ldrh	r3, [r3, #0]
    2d76:	021b      	lsls	r3, r3, #8
    2d78:	b29a      	uxth	r2, r3
    2d7a:	230e      	movs	r3, #14
    2d7c:	18fb      	adds	r3, r7, r3
    2d7e:	881b      	ldrh	r3, [r3, #0]
    2d80:	0a1b      	lsrs	r3, r3, #8
    2d82:	b29b      	uxth	r3, r3
    2d84:	18d3      	adds	r3, r2, r3
    2d86:	b29a      	uxth	r2, r3
    2d88:	4b20      	ldr	r3, [pc, #128]	; (2e0c <Send_UDP+0x228>)
    2d8a:	851a      	strh	r2, [r3, #40]	; 0x28
    2d8c:	683b      	ldr	r3, [r7, #0]
    2d8e:	332a      	adds	r3, #42	; 0x2a
    2d90:	001a      	movs	r2, r3
    2d92:	4b1e      	ldr	r3, [pc, #120]	; (2e0c <Send_UDP+0x228>)
    2d94:	0011      	movs	r1, r2
    2d96:	0018      	movs	r0, r3
    2d98:	f7ff faca 	bl	2330 <SendPacket>
    2d9c:	4b1c      	ldr	r3, [pc, #112]	; (2e10 <Send_UDP+0x22c>)
    2d9e:	881b      	ldrh	r3, [r3, #0]
    2da0:	0a1b      	lsrs	r3, r3, #8
    2da2:	b29b      	uxth	r3, r3
    2da4:	b2da      	uxtb	r2, r3
    2da6:	230c      	movs	r3, #12
    2da8:	18fb      	adds	r3, r7, r3
    2daa:	701a      	strb	r2, [r3, #0]
    2dac:	4b18      	ldr	r3, [pc, #96]	; (2e10 <Send_UDP+0x22c>)
    2dae:	881b      	ldrh	r3, [r3, #0]
    2db0:	b2da      	uxtb	r2, r3
    2db2:	230c      	movs	r3, #12
    2db4:	18fb      	adds	r3, r7, r3
    2db6:	705a      	strb	r2, [r3, #1]
    2db8:	230c      	movs	r3, #12
    2dba:	18fb      	adds	r3, r7, r3
    2dbc:	781b      	ldrb	r3, [r3, #0]
    2dbe:	3301      	adds	r3, #1
    2dc0:	b2da      	uxtb	r2, r3
    2dc2:	230c      	movs	r3, #12
    2dc4:	18fb      	adds	r3, r7, r3
    2dc6:	701a      	strb	r2, [r3, #0]
    2dc8:	230c      	movs	r3, #12
    2dca:	18fb      	adds	r3, r7, r3
    2dcc:	781b      	ldrb	r3, [r3, #0]
    2dce:	2b00      	cmp	r3, #0
    2dd0:	d107      	bne.n	2de2 <Send_UDP+0x1fe>
    2dd2:	230c      	movs	r3, #12
    2dd4:	18fb      	adds	r3, r7, r3
    2dd6:	785b      	ldrb	r3, [r3, #1]
    2dd8:	3301      	adds	r3, #1
    2dda:	b2da      	uxtb	r2, r3
    2ddc:	230c      	movs	r3, #12
    2dde:	18fb      	adds	r3, r7, r3
    2de0:	705a      	strb	r2, [r3, #1]
    2de2:	230c      	movs	r3, #12
    2de4:	18fb      	adds	r3, r7, r3
    2de6:	781b      	ldrb	r3, [r3, #0]
    2de8:	021b      	lsls	r3, r3, #8
    2dea:	b21a      	sxth	r2, r3
    2dec:	230c      	movs	r3, #12
    2dee:	18fb      	adds	r3, r7, r3
    2df0:	785b      	ldrb	r3, [r3, #1]
    2df2:	b21b      	sxth	r3, r3
    2df4:	4313      	orrs	r3, r2
    2df6:	b21b      	sxth	r3, r3
    2df8:	b29a      	uxth	r2, r3
    2dfa:	4b05      	ldr	r3, [pc, #20]	; (2e10 <Send_UDP+0x22c>)
    2dfc:	801a      	strh	r2, [r3, #0]
    2dfe:	46c0      	nop			; (mov r8, r8)
    2e00:	46bd      	mov	sp, r7
    2e02:	b009      	add	sp, #36	; 0x24
    2e04:	bd90      	pop	{r4, r7, pc}
    2e06:	46c0      	nop			; (mov r8, r8)
    2e08:	20004d1c 	.word	0x20004d1c
    2e0c:	20005584 	.word	0x20005584
    2e10:	20004d30 	.word	0x20004d30
    2e14:	2000000c 	.word	0x2000000c
    2e18:	00001234 	.word	0x00001234
    2e1c:	20005318 	.word	0x20005318
    2e20:	200055ae 	.word	0x200055ae

00002e24 <PacketParser>:
    2e24:	b580      	push	{r7, lr}
    2e26:	b082      	sub	sp, #8
    2e28:	af00      	add	r7, sp, #0
    2e2a:	4b49      	ldr	r3, [pc, #292]	; (2f50 <PacketParser+0x12c>)
    2e2c:	899b      	ldrh	r3, [r3, #12]
    2e2e:	2b08      	cmp	r3, #8
    2e30:	d005      	beq.n	2e3e <PacketParser+0x1a>
    2e32:	22c1      	movs	r2, #193	; 0xc1
    2e34:	00d2      	lsls	r2, r2, #3
    2e36:	4293      	cmp	r3, r2
    2e38:	d100      	bne.n	2e3c <PacketParser+0x18>
    2e3a:	e06b      	b.n	2f14 <PacketParser+0xf0>
    2e3c:	e084      	b.n	2f48 <PacketParser+0x124>
    2e3e:	4b44      	ldr	r3, [pc, #272]	; (2f50 <PacketParser+0x12c>)
    2e40:	8b9a      	ldrh	r2, [r3, #28]
    2e42:	4b44      	ldr	r3, [pc, #272]	; (2f54 <PacketParser+0x130>)
    2e44:	811a      	strh	r2, [r3, #8]
    2e46:	4b42      	ldr	r3, [pc, #264]	; (2f50 <PacketParser+0x12c>)
    2e48:	8bda      	ldrh	r2, [r3, #30]
    2e4a:	4b42      	ldr	r3, [pc, #264]	; (2f54 <PacketParser+0x130>)
    2e4c:	80da      	strh	r2, [r3, #6]
    2e4e:	4b41      	ldr	r3, [pc, #260]	; (2f54 <PacketParser+0x130>)
    2e50:	895b      	ldrh	r3, [r3, #10]
    2e52:	2b00      	cmp	r3, #0
    2e54:	d100      	bne.n	2e58 <PacketParser+0x34>
    2e56:	e072      	b.n	2f3e <PacketParser+0x11a>
    2e58:	4b3d      	ldr	r3, [pc, #244]	; (2f50 <PacketParser+0x12c>)
    2e5a:	8bda      	ldrh	r2, [r3, #30]
    2e5c:	4b3e      	ldr	r3, [pc, #248]	; (2f58 <PacketParser+0x134>)
    2e5e:	881b      	ldrh	r3, [r3, #0]
    2e60:	429a      	cmp	r2, r3
    2e62:	d000      	beq.n	2e66 <PacketParser+0x42>
    2e64:	e06d      	b.n	2f42 <PacketParser+0x11e>
    2e66:	4b3a      	ldr	r3, [pc, #232]	; (2f50 <PacketParser+0x12c>)
    2e68:	8c1a      	ldrh	r2, [r3, #32]
    2e6a:	4b3b      	ldr	r3, [pc, #236]	; (2f58 <PacketParser+0x134>)
    2e6c:	885b      	ldrh	r3, [r3, #2]
    2e6e:	429a      	cmp	r2, r3
    2e70:	d000      	beq.n	2e74 <PacketParser+0x50>
    2e72:	e066      	b.n	2f42 <PacketParser+0x11e>
    2e74:	4b36      	ldr	r3, [pc, #216]	; (2f50 <PacketParser+0x12c>)
    2e76:	0018      	movs	r0, r3
    2e78:	f7ff fcb2 	bl	27e0 <CheckSum_IP>
    2e7c:	0003      	movs	r3, r0
    2e7e:	001a      	movs	r2, r3
    2e80:	4b33      	ldr	r3, [pc, #204]	; (2f50 <PacketParser+0x12c>)
    2e82:	8b1b      	ldrh	r3, [r3, #24]
    2e84:	429a      	cmp	r2, r3
    2e86:	d15c      	bne.n	2f42 <PacketParser+0x11e>
    2e88:	4b31      	ldr	r3, [pc, #196]	; (2f50 <PacketParser+0x12c>)
    2e8a:	8adb      	ldrh	r3, [r3, #22]
    2e8c:	001a      	movs	r2, r3
    2e8e:	23ff      	movs	r3, #255	; 0xff
    2e90:	021b      	lsls	r3, r3, #8
    2e92:	401a      	ands	r2, r3
    2e94:	2380      	movs	r3, #128	; 0x80
    2e96:	005b      	lsls	r3, r3, #1
    2e98:	429a      	cmp	r2, r3
    2e9a:	d110      	bne.n	2ebe <PacketParser+0x9a>
    2e9c:	4b2c      	ldr	r3, [pc, #176]	; (2f50 <PacketParser+0x12c>)
    2e9e:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ea0:	2b00      	cmp	r3, #0
    2ea2:	d105      	bne.n	2eb0 <PacketParser+0x8c>
    2ea4:	4b2d      	ldr	r3, [pc, #180]	; (2f5c <PacketParser+0x138>)
    2ea6:	681b      	ldr	r3, [r3, #0]
    2ea8:	1c5a      	adds	r2, r3, #1
    2eaa:	4b2c      	ldr	r3, [pc, #176]	; (2f5c <PacketParser+0x138>)
    2eac:	601a      	str	r2, [r3, #0]
    2eae:	e048      	b.n	2f42 <PacketParser+0x11e>
    2eb0:	4b27      	ldr	r3, [pc, #156]	; (2f50 <PacketParser+0x12c>)
    2eb2:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2eb4:	2b08      	cmp	r3, #8
    2eb6:	d144      	bne.n	2f42 <PacketParser+0x11e>
    2eb8:	f7ff fde4 	bl	2a84 <Answear_ICMP>
    2ebc:	e041      	b.n	2f42 <PacketParser+0x11e>
    2ebe:	4b24      	ldr	r3, [pc, #144]	; (2f50 <PacketParser+0x12c>)
    2ec0:	8adb      	ldrh	r3, [r3, #22]
    2ec2:	001a      	movs	r2, r3
    2ec4:	23ff      	movs	r3, #255	; 0xff
    2ec6:	021b      	lsls	r3, r3, #8
    2ec8:	401a      	ands	r2, r3
    2eca:	2388      	movs	r3, #136	; 0x88
    2ecc:	015b      	lsls	r3, r3, #5
    2ece:	429a      	cmp	r2, r3
    2ed0:	d137      	bne.n	2f42 <PacketParser+0x11e>
    2ed2:	4b1f      	ldr	r3, [pc, #124]	; (2f50 <PacketParser+0x12c>)
    2ed4:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ed6:	021b      	lsls	r3, r3, #8
    2ed8:	b29a      	uxth	r2, r3
    2eda:	4b1d      	ldr	r3, [pc, #116]	; (2f50 <PacketParser+0x12c>)
    2edc:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ede:	0a1b      	lsrs	r3, r3, #8
    2ee0:	b29b      	uxth	r3, r3
    2ee2:	18d3      	adds	r3, r2, r3
    2ee4:	b29a      	uxth	r2, r3
    2ee6:	4b1e      	ldr	r3, [pc, #120]	; (2f60 <PacketParser+0x13c>)
    2ee8:	801a      	strh	r2, [r3, #0]
    2eea:	4b19      	ldr	r3, [pc, #100]	; (2f50 <PacketParser+0x12c>)
    2eec:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2eee:	021b      	lsls	r3, r3, #8
    2ef0:	b299      	uxth	r1, r3
    2ef2:	4b17      	ldr	r3, [pc, #92]	; (2f50 <PacketParser+0x12c>)
    2ef4:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2ef6:	0a1b      	lsrs	r3, r3, #8
    2ef8:	b29a      	uxth	r2, r3
    2efa:	1dbb      	adds	r3, r7, #6
    2efc:	188a      	adds	r2, r1, r2
    2efe:	801a      	strh	r2, [r3, #0]
    2f00:	1dbb      	adds	r3, r7, #6
    2f02:	881b      	ldrh	r3, [r3, #0]
    2f04:	4a17      	ldr	r2, [pc, #92]	; (2f64 <PacketParser+0x140>)
    2f06:	4293      	cmp	r3, r2
    2f08:	d11b      	bne.n	2f42 <PacketParser+0x11e>
    2f0a:	4b17      	ldr	r3, [pc, #92]	; (2f68 <PacketParser+0x144>)
    2f0c:	0018      	movs	r0, r3
    2f0e:	f001 f823 	bl	3f58 <mdb_proc_adu>
    2f12:	e016      	b.n	2f42 <PacketParser+0x11e>
    2f14:	4b0e      	ldr	r3, [pc, #56]	; (2f50 <PacketParser+0x12c>)
    2f16:	8a9a      	ldrh	r2, [r3, #20]
    2f18:	2380      	movs	r3, #128	; 0x80
    2f1a:	005b      	lsls	r3, r3, #1
    2f1c:	429a      	cmp	r2, r3
    2f1e:	d112      	bne.n	2f46 <PacketParser+0x122>
    2f20:	4b0b      	ldr	r3, [pc, #44]	; (2f50 <PacketParser+0x12c>)
    2f22:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    2f24:	4b0c      	ldr	r3, [pc, #48]	; (2f58 <PacketParser+0x134>)
    2f26:	881b      	ldrh	r3, [r3, #0]
    2f28:	429a      	cmp	r2, r3
    2f2a:	d10c      	bne.n	2f46 <PacketParser+0x122>
    2f2c:	4b08      	ldr	r3, [pc, #32]	; (2f50 <PacketParser+0x12c>)
    2f2e:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    2f30:	4b09      	ldr	r3, [pc, #36]	; (2f58 <PacketParser+0x134>)
    2f32:	885b      	ldrh	r3, [r3, #2]
    2f34:	429a      	cmp	r2, r3
    2f36:	d106      	bne.n	2f46 <PacketParser+0x122>
    2f38:	f7ff fb2e 	bl	2598 <Answear_ARP>
    2f3c:	e003      	b.n	2f46 <PacketParser+0x122>
    2f3e:	46c0      	nop			; (mov r8, r8)
    2f40:	e002      	b.n	2f48 <PacketParser+0x124>
    2f42:	46c0      	nop			; (mov r8, r8)
    2f44:	e000      	b.n	2f48 <PacketParser+0x124>
    2f46:	46c0      	nop			; (mov r8, r8)
    2f48:	46c0      	nop			; (mov r8, r8)
    2f4a:	46bd      	mov	sp, r7
    2f4c:	b002      	add	sp, #8
    2f4e:	bd80      	pop	{r7, pc}
    2f50:	20004d38 	.word	0x20004d38
    2f54:	20004d1c 	.word	0x20004d1c
    2f58:	2000000c 	.word	0x2000000c
    2f5c:	20004d34 	.word	0x20004d34
    2f60:	20005318 	.word	0x20005318
    2f64:	00001234 	.word	0x00001234
    2f68:	20004d62 	.word	0x20004d62

00002f6c <threadPacketParser>:
    2f6c:	b580      	push	{r7, lr}
    2f6e:	b086      	sub	sp, #24
    2f70:	af00      	add	r7, sp, #0
    2f72:	6078      	str	r0, [r7, #4]
    2f74:	4b31      	ldr	r3, [pc, #196]	; (303c <threadPacketParser+0xd0>)
    2f76:	0018      	movs	r0, r3
    2f78:	f003 fb7c 	bl	6674 <osMutexCreate>
    2f7c:	0002      	movs	r2, r0
    2f7e:	4b30      	ldr	r3, [pc, #192]	; (3040 <threadPacketParser+0xd4>)
    2f80:	601a      	str	r2, [r3, #0]
    2f82:	4b30      	ldr	r3, [pc, #192]	; (3044 <threadPacketParser+0xd8>)
    2f84:	0018      	movs	r0, r3
    2f86:	f003 fb75 	bl	6674 <osMutexCreate>
    2f8a:	0002      	movs	r2, r0
    2f8c:	4b2e      	ldr	r3, [pc, #184]	; (3048 <threadPacketParser+0xdc>)
    2f8e:	601a      	str	r2, [r3, #0]
    2f90:	230c      	movs	r3, #12
    2f92:	18f8      	adds	r0, r7, r3
    2f94:	23fa      	movs	r3, #250	; 0xfa
    2f96:	005b      	lsls	r3, r3, #1
    2f98:	001a      	movs	r2, r3
    2f9a:	2100      	movs	r1, #0
    2f9c:	f003 fadc 	bl	6558 <osSignalWait>
    2fa0:	230c      	movs	r3, #12
    2fa2:	18fb      	adds	r3, r7, r3
    2fa4:	681b      	ldr	r3, [r3, #0]
    2fa6:	2b08      	cmp	r3, #8
    2fa8:	d120      	bne.n	2fec <threadPacketParser+0x80>
    2faa:	230c      	movs	r3, #12
    2fac:	18fb      	adds	r3, r7, r3
    2fae:	685b      	ldr	r3, [r3, #4]
    2fb0:	2b01      	cmp	r3, #1
    2fb2:	d142      	bne.n	303a <threadPacketParser+0xce>
    2fb4:	4b25      	ldr	r3, [pc, #148]	; (304c <threadPacketParser+0xe0>)
    2fb6:	4a25      	ldr	r2, [pc, #148]	; (304c <threadPacketParser+0xe0>)
    2fb8:	6812      	ldr	r2, [r2, #0]
    2fba:	2180      	movs	r1, #128	; 0x80
    2fbc:	404a      	eors	r2, r1
    2fbe:	601a      	str	r2, [r3, #0]
    2fc0:	e00a      	b.n	2fd8 <threadPacketParser+0x6c>
    2fc2:	4b23      	ldr	r3, [pc, #140]	; (3050 <threadPacketParser+0xe4>)
    2fc4:	0018      	movs	r0, r3
    2fc6:	f7ff f8bd 	bl	2144 <ReadPacket>
    2fca:	0003      	movs	r3, r0
    2fcc:	b299      	uxth	r1, r3
    2fce:	4b20      	ldr	r3, [pc, #128]	; (3050 <threadPacketParser+0xe4>)
    2fd0:	4a20      	ldr	r2, [pc, #128]	; (3054 <threadPacketParser+0xe8>)
    2fd2:	5299      	strh	r1, [r3, r2]
    2fd4:	f7ff ff26 	bl	2e24 <PacketParser>
    2fd8:	23c0      	movs	r3, #192	; 0xc0
    2fda:	059b      	lsls	r3, r3, #22
    2fdc:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    2fde:	b29b      	uxth	r3, r3
    2fe0:	001a      	movs	r2, r3
    2fe2:	23e0      	movs	r3, #224	; 0xe0
    2fe4:	4013      	ands	r3, r2
    2fe6:	d1ec      	bne.n	2fc2 <threadPacketParser+0x56>
    2fe8:	46c0      	nop			; (mov r8, r8)
    2fea:	e026      	b.n	303a <threadPacketParser+0xce>
    2fec:	230c      	movs	r3, #12
    2fee:	18fb      	adds	r3, r7, r3
    2ff0:	681b      	ldr	r3, [r3, #0]
    2ff2:	2b40      	cmp	r3, #64	; 0x40
    2ff4:	d1cc      	bne.n	2f90 <threadPacketParser+0x24>
    2ff6:	23c0      	movs	r3, #192	; 0xc0
    2ff8:	059b      	lsls	r3, r3, #22
    2ffa:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    2ffc:	b29b      	uxth	r3, r3
    2ffe:	001a      	movs	r2, r3
    3000:	2302      	movs	r3, #2
    3002:	4013      	ands	r3, r2
    3004:	d104      	bne.n	3010 <threadPacketParser+0xa4>
    3006:	4b14      	ldr	r3, [pc, #80]	; (3058 <threadPacketParser+0xec>)
    3008:	2280      	movs	r2, #128	; 0x80
    300a:	0212      	lsls	r2, r2, #8
    300c:	621a      	str	r2, [r3, #32]
    300e:	e003      	b.n	3018 <threadPacketParser+0xac>
    3010:	4b11      	ldr	r3, [pc, #68]	; (3058 <threadPacketParser+0xec>)
    3012:	2280      	movs	r2, #128	; 0x80
    3014:	0212      	lsls	r2, r2, #8
    3016:	625a      	str	r2, [r3, #36]	; 0x24
    3018:	23c0      	movs	r3, #192	; 0xc0
    301a:	059b      	lsls	r3, r3, #22
    301c:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    301e:	b29b      	uxth	r3, r3
    3020:	001a      	movs	r2, r3
    3022:	2308      	movs	r3, #8
    3024:	4013      	ands	r3, r2
    3026:	d104      	bne.n	3032 <threadPacketParser+0xc6>
    3028:	4b0b      	ldr	r3, [pc, #44]	; (3058 <threadPacketParser+0xec>)
    302a:	2280      	movs	r2, #128	; 0x80
    302c:	01d2      	lsls	r2, r2, #7
    302e:	621a      	str	r2, [r3, #32]
    3030:	e7ae      	b.n	2f90 <threadPacketParser+0x24>
    3032:	4b09      	ldr	r3, [pc, #36]	; (3058 <threadPacketParser+0xec>)
    3034:	2280      	movs	r2, #128	; 0x80
    3036:	01d2      	lsls	r2, r2, #7
    3038:	625a      	str	r2, [r3, #36]	; 0x24
    303a:	e7a9      	b.n	2f90 <threadPacketParser+0x24>
    303c:	0000890c 	.word	0x0000890c
    3040:	2000532c 	.word	0x2000532c
    3044:	00008910 	.word	0x00008910
    3048:	20005340 	.word	0x20005340
    304c:	400c0000 	.word	0x400c0000
    3050:	20004d38 	.word	0x20004d38
    3054:	000005dc 	.word	0x000005dc
    3058:	400b0000 	.word	0x400b0000

0000305c <crc32>:
    305c:	b580      	push	{r7, lr}
    305e:	b084      	sub	sp, #16
    3060:	af00      	add	r7, sp, #0
    3062:	6078      	str	r0, [r7, #4]
    3064:	6039      	str	r1, [r7, #0]
    3066:	2301      	movs	r3, #1
    3068:	425b      	negs	r3, r3
    306a:	60bb      	str	r3, [r7, #8]
    306c:	2300      	movs	r3, #0
    306e:	60fb      	str	r3, [r7, #12]
    3070:	e012      	b.n	3098 <crc32+0x3c>
    3072:	68bb      	ldr	r3, [r7, #8]
    3074:	0a1a      	lsrs	r2, r3, #8
    3076:	68fb      	ldr	r3, [r7, #12]
    3078:	6879      	ldr	r1, [r7, #4]
    307a:	18cb      	adds	r3, r1, r3
    307c:	781b      	ldrb	r3, [r3, #0]
    307e:	0019      	movs	r1, r3
    3080:	68bb      	ldr	r3, [r7, #8]
    3082:	404b      	eors	r3, r1
    3084:	21ff      	movs	r1, #255	; 0xff
    3086:	4019      	ands	r1, r3
    3088:	4b08      	ldr	r3, [pc, #32]	; (30ac <crc32+0x50>)
    308a:	0089      	lsls	r1, r1, #2
    308c:	58cb      	ldr	r3, [r1, r3]
    308e:	4053      	eors	r3, r2
    3090:	60bb      	str	r3, [r7, #8]
    3092:	68fb      	ldr	r3, [r7, #12]
    3094:	3301      	adds	r3, #1
    3096:	60fb      	str	r3, [r7, #12]
    3098:	68fa      	ldr	r2, [r7, #12]
    309a:	683b      	ldr	r3, [r7, #0]
    309c:	429a      	cmp	r2, r3
    309e:	d3e8      	bcc.n	3072 <crc32+0x16>
    30a0:	68bb      	ldr	r3, [r7, #8]
    30a2:	0018      	movs	r0, r3
    30a4:	46bd      	mov	sp, r7
    30a6:	b004      	add	sp, #16
    30a8:	bd80      	pop	{r7, pc}
    30aa:	46c0      	nop			; (mov r8, r8)
    30ac:	00008914 	.word	0x00008914

000030b0 <crc16>:
    30b0:	b580      	push	{r7, lr}
    30b2:	b086      	sub	sp, #24
    30b4:	af00      	add	r7, sp, #0
    30b6:	6078      	str	r0, [r7, #4]
    30b8:	6039      	str	r1, [r7, #0]
    30ba:	2317      	movs	r3, #23
    30bc:	18fb      	adds	r3, r7, r3
    30be:	22ff      	movs	r2, #255	; 0xff
    30c0:	701a      	strb	r2, [r3, #0]
    30c2:	2316      	movs	r3, #22
    30c4:	18fb      	adds	r3, r7, r3
    30c6:	22ff      	movs	r2, #255	; 0xff
    30c8:	701a      	strb	r2, [r3, #0]
    30ca:	2300      	movs	r3, #0
    30cc:	613b      	str	r3, [r7, #16]
    30ce:	e01e      	b.n	310e <crc16+0x5e>
    30d0:	693b      	ldr	r3, [r7, #16]
    30d2:	687a      	ldr	r2, [r7, #4]
    30d4:	18d3      	adds	r3, r2, r3
    30d6:	781a      	ldrb	r2, [r3, #0]
    30d8:	2317      	movs	r3, #23
    30da:	18fb      	adds	r3, r7, r3
    30dc:	781b      	ldrb	r3, [r3, #0]
    30de:	4053      	eors	r3, r2
    30e0:	b2db      	uxtb	r3, r3
    30e2:	60fb      	str	r3, [r7, #12]
    30e4:	4a14      	ldr	r2, [pc, #80]	; (3138 <crc16+0x88>)
    30e6:	68fb      	ldr	r3, [r7, #12]
    30e8:	18d3      	adds	r3, r2, r3
    30ea:	7819      	ldrb	r1, [r3, #0]
    30ec:	2317      	movs	r3, #23
    30ee:	18fb      	adds	r3, r7, r3
    30f0:	2216      	movs	r2, #22
    30f2:	18ba      	adds	r2, r7, r2
    30f4:	7812      	ldrb	r2, [r2, #0]
    30f6:	404a      	eors	r2, r1
    30f8:	701a      	strb	r2, [r3, #0]
    30fa:	2316      	movs	r3, #22
    30fc:	18fb      	adds	r3, r7, r3
    30fe:	490f      	ldr	r1, [pc, #60]	; (313c <crc16+0x8c>)
    3100:	68fa      	ldr	r2, [r7, #12]
    3102:	188a      	adds	r2, r1, r2
    3104:	7812      	ldrb	r2, [r2, #0]
    3106:	701a      	strb	r2, [r3, #0]
    3108:	693b      	ldr	r3, [r7, #16]
    310a:	3301      	adds	r3, #1
    310c:	613b      	str	r3, [r7, #16]
    310e:	693a      	ldr	r2, [r7, #16]
    3110:	683b      	ldr	r3, [r7, #0]
    3112:	429a      	cmp	r2, r3
    3114:	dbdc      	blt.n	30d0 <crc16+0x20>
    3116:	2316      	movs	r3, #22
    3118:	18fb      	adds	r3, r7, r3
    311a:	781b      	ldrb	r3, [r3, #0]
    311c:	021b      	lsls	r3, r3, #8
    311e:	b21a      	sxth	r2, r3
    3120:	2317      	movs	r3, #23
    3122:	18fb      	adds	r3, r7, r3
    3124:	781b      	ldrb	r3, [r3, #0]
    3126:	b21b      	sxth	r3, r3
    3128:	4313      	orrs	r3, r2
    312a:	b21b      	sxth	r3, r3
    312c:	b29b      	uxth	r3, r3
    312e:	0018      	movs	r0, r3
    3130:	46bd      	mov	sp, r7
    3132:	b006      	add	sp, #24
    3134:	bd80      	pop	{r7, pc}
    3136:	46c0      	nop			; (mov r8, r8)
    3138:	00008d14 	.word	0x00008d14
    313c:	00008e14 	.word	0x00008e14

00003140 <eeprom_on>:
    3140:	b580      	push	{r7, lr}
    3142:	af00      	add	r7, sp, #0
    3144:	b672      	cpsid	i
    3146:	4b04      	ldr	r3, [pc, #16]	; (3158 <eeprom_on+0x18>)
    3148:	4a03      	ldr	r2, [pc, #12]	; (3158 <eeprom_on+0x18>)
    314a:	69d2      	ldr	r2, [r2, #28]
    314c:	2108      	movs	r1, #8
    314e:	430a      	orrs	r2, r1
    3150:	61da      	str	r2, [r3, #28]
    3152:	46c0      	nop			; (mov r8, r8)
    3154:	46bd      	mov	sp, r7
    3156:	bd80      	pop	{r7, pc}
    3158:	40020000 	.word	0x40020000

0000315c <eeprom_off>:
    315c:	b580      	push	{r7, lr}
    315e:	af00      	add	r7, sp, #0
    3160:	b662      	cpsie	i
    3162:	4b04      	ldr	r3, [pc, #16]	; (3174 <eeprom_off+0x18>)
    3164:	4a03      	ldr	r2, [pc, #12]	; (3174 <eeprom_off+0x18>)
    3166:	69d2      	ldr	r2, [r2, #28]
    3168:	2108      	movs	r1, #8
    316a:	438a      	bics	r2, r1
    316c:	61da      	str	r2, [r3, #28]
    316e:	46c0      	nop			; (mov r8, r8)
    3170:	46bd      	mov	sp, r7
    3172:	bd80      	pop	{r7, pc}
    3174:	40020000 	.word	0x40020000

00003178 <par_default>:
    3178:	b580      	push	{r7, lr}
    317a:	af00      	add	r7, sp, #0
    317c:	4b13      	ldr	r3, [pc, #76]	; (31cc <par_default+0x54>)
    317e:	0018      	movs	r0, r3
    3180:	2314      	movs	r3, #20
    3182:	001a      	movs	r2, r3
    3184:	2100      	movs	r1, #0
    3186:	f001 fe07 	bl	4d98 <memset>
    318a:	4b10      	ldr	r3, [pc, #64]	; (31cc <par_default+0x54>)
    318c:	22bc      	movs	r2, #188	; 0xbc
    318e:	701a      	strb	r2, [r3, #0]
    3190:	4b0e      	ldr	r3, [pc, #56]	; (31cc <par_default+0x54>)
    3192:	229a      	movs	r2, #154	; 0x9a
    3194:	705a      	strb	r2, [r3, #1]
    3196:	4b0d      	ldr	r3, [pc, #52]	; (31cc <par_default+0x54>)
    3198:	2278      	movs	r2, #120	; 0x78
    319a:	709a      	strb	r2, [r3, #2]
    319c:	4b0b      	ldr	r3, [pc, #44]	; (31cc <par_default+0x54>)
    319e:	2256      	movs	r2, #86	; 0x56
    31a0:	70da      	strb	r2, [r3, #3]
    31a2:	4b0a      	ldr	r3, [pc, #40]	; (31cc <par_default+0x54>)
    31a4:	2234      	movs	r2, #52	; 0x34
    31a6:	711a      	strb	r2, [r3, #4]
    31a8:	4b08      	ldr	r3, [pc, #32]	; (31cc <par_default+0x54>)
    31aa:	2212      	movs	r2, #18
    31ac:	715a      	strb	r2, [r3, #5]
    31ae:	4b07      	ldr	r3, [pc, #28]	; (31cc <par_default+0x54>)
    31b0:	2201      	movs	r2, #1
    31b2:	719a      	strb	r2, [r3, #6]
    31b4:	4b05      	ldr	r3, [pc, #20]	; (31cc <par_default+0x54>)
    31b6:	220a      	movs	r2, #10
    31b8:	725a      	strb	r2, [r3, #9]
    31ba:	4b04      	ldr	r3, [pc, #16]	; (31cc <par_default+0x54>)
    31bc:	2202      	movs	r2, #2
    31be:	729a      	strb	r2, [r3, #10]
    31c0:	4b02      	ldr	r3, [pc, #8]	; (31cc <par_default+0x54>)
    31c2:	220a      	movs	r2, #10
    31c4:	735a      	strb	r2, [r3, #13]
    31c6:	46c0      	nop			; (mov r8, r8)
    31c8:	46bd      	mov	sp, r7
    31ca:	bd80      	pop	{r7, pc}
    31cc:	20005b60 	.word	0x20005b60

000031d0 <par_save>:
    31d0:	b580      	push	{r7, lr}
    31d2:	b084      	sub	sp, #16
    31d4:	af00      	add	r7, sp, #0
    31d6:	f7ff ffb3 	bl	3140 <eeprom_on>
    31da:	f005 fadd 	bl	8798 <__eeprom_erase_page_veneer>
    31de:	1e03      	subs	r3, r0, #0
    31e0:	d01b      	beq.n	321a <par_save+0x4a>
    31e2:	4b11      	ldr	r3, [pc, #68]	; (3228 <par_save+0x58>)
    31e4:	60bb      	str	r3, [r7, #8]
    31e6:	2305      	movs	r3, #5
    31e8:	603b      	str	r3, [r7, #0]
    31ea:	2300      	movs	r3, #0
    31ec:	607b      	str	r3, [r7, #4]
    31ee:	2300      	movs	r3, #0
    31f0:	60fb      	str	r3, [r7, #12]
    31f2:	e00e      	b.n	3212 <par_save+0x42>
    31f4:	68bb      	ldr	r3, [r7, #8]
    31f6:	1d1a      	adds	r2, r3, #4
    31f8:	60ba      	str	r2, [r7, #8]
    31fa:	681a      	ldr	r2, [r3, #0]
    31fc:	687b      	ldr	r3, [r7, #4]
    31fe:	0011      	movs	r1, r2
    3200:	0018      	movs	r0, r3
    3202:	f005 fad9 	bl	87b8 <__eeprom_program_word_veneer>
    3206:	687b      	ldr	r3, [r7, #4]
    3208:	3304      	adds	r3, #4
    320a:	607b      	str	r3, [r7, #4]
    320c:	68fb      	ldr	r3, [r7, #12]
    320e:	3301      	adds	r3, #1
    3210:	60fb      	str	r3, [r7, #12]
    3212:	68fa      	ldr	r2, [r7, #12]
    3214:	683b      	ldr	r3, [r7, #0]
    3216:	429a      	cmp	r2, r3
    3218:	dbec      	blt.n	31f4 <par_save+0x24>
    321a:	f7ff ff9f 	bl	315c <eeprom_off>
    321e:	46c0      	nop			; (mov r8, r8)
    3220:	46bd      	mov	sp, r7
    3222:	b004      	add	sp, #16
    3224:	bd80      	pop	{r7, pc}
    3226:	46c0      	nop			; (mov r8, r8)
    3228:	20005b60 	.word	0x20005b60

0000322c <par_verify>:
    322c:	b590      	push	{r4, r7, lr}
    322e:	b087      	sub	sp, #28
    3230:	af00      	add	r7, sp, #0
    3232:	2301      	movs	r3, #1
    3234:	617b      	str	r3, [r7, #20]
    3236:	f7ff ff83 	bl	3140 <eeprom_on>
    323a:	4b13      	ldr	r3, [pc, #76]	; (3288 <par_verify+0x5c>)
    323c:	60fb      	str	r3, [r7, #12]
    323e:	2305      	movs	r3, #5
    3240:	607b      	str	r3, [r7, #4]
    3242:	2300      	movs	r3, #0
    3244:	60bb      	str	r3, [r7, #8]
    3246:	2300      	movs	r3, #0
    3248:	613b      	str	r3, [r7, #16]
    324a:	e012      	b.n	3272 <par_verify+0x46>
    324c:	68fb      	ldr	r3, [r7, #12]
    324e:	1d1a      	adds	r2, r3, #4
    3250:	60fa      	str	r2, [r7, #12]
    3252:	681c      	ldr	r4, [r3, #0]
    3254:	68bb      	ldr	r3, [r7, #8]
    3256:	0018      	movs	r0, r3
    3258:	f005 faa6 	bl	87a8 <__eeprom_read_word_veneer>
    325c:	0003      	movs	r3, r0
    325e:	429c      	cmp	r4, r3
    3260:	d001      	beq.n	3266 <par_verify+0x3a>
    3262:	2300      	movs	r3, #0
    3264:	617b      	str	r3, [r7, #20]
    3266:	68bb      	ldr	r3, [r7, #8]
    3268:	3304      	adds	r3, #4
    326a:	60bb      	str	r3, [r7, #8]
    326c:	693b      	ldr	r3, [r7, #16]
    326e:	3301      	adds	r3, #1
    3270:	613b      	str	r3, [r7, #16]
    3272:	693a      	ldr	r2, [r7, #16]
    3274:	687b      	ldr	r3, [r7, #4]
    3276:	429a      	cmp	r2, r3
    3278:	dbe8      	blt.n	324c <par_verify+0x20>
    327a:	f7ff ff6f 	bl	315c <eeprom_off>
    327e:	697b      	ldr	r3, [r7, #20]
    3280:	0018      	movs	r0, r3
    3282:	46bd      	mov	sp, r7
    3284:	b007      	add	sp, #28
    3286:	bd90      	pop	{r4, r7, pc}
    3288:	20005b60 	.word	0x20005b60

0000328c <par_read>:
    328c:	b590      	push	{r4, r7, lr}
    328e:	b085      	sub	sp, #20
    3290:	af00      	add	r7, sp, #0
    3292:	f7ff ff55 	bl	3140 <eeprom_on>
    3296:	4b16      	ldr	r3, [pc, #88]	; (32f0 <par_read+0x64>)
    3298:	60bb      	str	r3, [r7, #8]
    329a:	2305      	movs	r3, #5
    329c:	603b      	str	r3, [r7, #0]
    329e:	2300      	movs	r3, #0
    32a0:	607b      	str	r3, [r7, #4]
    32a2:	2300      	movs	r3, #0
    32a4:	60fb      	str	r3, [r7, #12]
    32a6:	e00e      	b.n	32c6 <par_read+0x3a>
    32a8:	68bc      	ldr	r4, [r7, #8]
    32aa:	1d23      	adds	r3, r4, #4
    32ac:	60bb      	str	r3, [r7, #8]
    32ae:	687b      	ldr	r3, [r7, #4]
    32b0:	0018      	movs	r0, r3
    32b2:	f005 fa79 	bl	87a8 <__eeprom_read_word_veneer>
    32b6:	0003      	movs	r3, r0
    32b8:	6023      	str	r3, [r4, #0]
    32ba:	687b      	ldr	r3, [r7, #4]
    32bc:	3304      	adds	r3, #4
    32be:	607b      	str	r3, [r7, #4]
    32c0:	68fb      	ldr	r3, [r7, #12]
    32c2:	3301      	adds	r3, #1
    32c4:	60fb      	str	r3, [r7, #12]
    32c6:	68fa      	ldr	r2, [r7, #12]
    32c8:	683b      	ldr	r3, [r7, #0]
    32ca:	429a      	cmp	r2, r3
    32cc:	dbec      	blt.n	32a8 <par_read+0x1c>
    32ce:	f7ff ff45 	bl	315c <eeprom_off>
    32d2:	4b07      	ldr	r3, [pc, #28]	; (32f0 <par_read+0x64>)
    32d4:	2114      	movs	r1, #20
    32d6:	0018      	movs	r0, r3
    32d8:	f7ff fec0 	bl	305c <crc32>
    32dc:	1e03      	subs	r3, r0, #0
    32de:	d001      	beq.n	32e4 <par_read+0x58>
    32e0:	2300      	movs	r3, #0
    32e2:	e000      	b.n	32e6 <par_read+0x5a>
    32e4:	2301      	movs	r3, #1
    32e6:	0018      	movs	r0, r3
    32e8:	46bd      	mov	sp, r7
    32ea:	b005      	add	sp, #20
    32ec:	bd90      	pop	{r4, r7, pc}
    32ee:	46c0      	nop			; (mov r8, r8)
    32f0:	20005b60 	.word	0x20005b60

000032f4 <par_update>:
    32f4:	b580      	push	{r7, lr}
    32f6:	b088      	sub	sp, #32
    32f8:	af00      	add	r7, sp, #0
    32fa:	6078      	str	r0, [r7, #4]
    32fc:	687b      	ldr	r3, [r7, #4]
    32fe:	1c5a      	adds	r2, r3, #1
    3300:	607a      	str	r2, [r7, #4]
    3302:	781b      	ldrb	r3, [r3, #0]
    3304:	617b      	str	r3, [r7, #20]
    3306:	687b      	ldr	r3, [r7, #4]
    3308:	1c5a      	adds	r2, r3, #1
    330a:	607a      	str	r2, [r7, #4]
    330c:	781b      	ldrb	r3, [r3, #0]
    330e:	613b      	str	r3, [r7, #16]
    3310:	687b      	ldr	r3, [r7, #4]
    3312:	1c5a      	adds	r2, r3, #1
    3314:	607a      	str	r2, [r7, #4]
    3316:	781b      	ldrb	r3, [r3, #0]
    3318:	60fb      	str	r3, [r7, #12]
    331a:	687b      	ldr	r3, [r7, #4]
    331c:	1c5a      	adds	r2, r3, #1
    331e:	607a      	str	r2, [r7, #4]
    3320:	781b      	ldrb	r3, [r3, #0]
    3322:	021b      	lsls	r3, r3, #8
    3324:	001a      	movs	r2, r3
    3326:	68fb      	ldr	r3, [r7, #12]
    3328:	189b      	adds	r3, r3, r2
    332a:	60fb      	str	r3, [r7, #12]
    332c:	68fb      	ldr	r3, [r7, #12]
    332e:	2201      	movs	r2, #1
    3330:	4013      	ands	r3, r2
    3332:	60bb      	str	r3, [r7, #8]
    3334:	697a      	ldr	r2, [r7, #20]
    3336:	693b      	ldr	r3, [r7, #16]
    3338:	18d3      	adds	r3, r2, r3
    333a:	2b14      	cmp	r3, #20
    333c:	d82c      	bhi.n	3398 <par_update+0xa4>
    333e:	68bb      	ldr	r3, [r7, #8]
    3340:	2b00      	cmp	r3, #0
    3342:	d126      	bne.n	3392 <par_update+0x9e>
    3344:	697a      	ldr	r2, [r7, #20]
    3346:	4b16      	ldr	r3, [pc, #88]	; (33a0 <par_update+0xac>)
    3348:	18d3      	adds	r3, r2, r3
    334a:	61bb      	str	r3, [r7, #24]
    334c:	2300      	movs	r3, #0
    334e:	61fb      	str	r3, [r7, #28]
    3350:	e00a      	b.n	3368 <par_update+0x74>
    3352:	69bb      	ldr	r3, [r7, #24]
    3354:	1c5a      	adds	r2, r3, #1
    3356:	61ba      	str	r2, [r7, #24]
    3358:	687a      	ldr	r2, [r7, #4]
    335a:	1c51      	adds	r1, r2, #1
    335c:	6079      	str	r1, [r7, #4]
    335e:	7812      	ldrb	r2, [r2, #0]
    3360:	701a      	strb	r2, [r3, #0]
    3362:	69fb      	ldr	r3, [r7, #28]
    3364:	3301      	adds	r3, #1
    3366:	61fb      	str	r3, [r7, #28]
    3368:	69fa      	ldr	r2, [r7, #28]
    336a:	693b      	ldr	r3, [r7, #16]
    336c:	429a      	cmp	r2, r3
    336e:	d3f0      	bcc.n	3352 <par_update+0x5e>
    3370:	4b0b      	ldr	r3, [pc, #44]	; (33a0 <par_update+0xac>)
    3372:	2110      	movs	r1, #16
    3374:	0018      	movs	r0, r3
    3376:	f7ff fe71 	bl	305c <crc32>
    337a:	0002      	movs	r2, r0
    337c:	4b08      	ldr	r3, [pc, #32]	; (33a0 <par_update+0xac>)
    337e:	611a      	str	r2, [r3, #16]
    3380:	f7ff ff26 	bl	31d0 <par_save>
    3384:	f7ff ff52 	bl	322c <par_verify>
    3388:	1e03      	subs	r3, r0, #0
    338a:	d106      	bne.n	339a <par_update+0xa6>
    338c:	f7ff fef4 	bl	3178 <par_default>
    3390:	e003      	b.n	339a <par_update+0xa6>
    3392:	f7ff ff7b 	bl	328c <par_read>
    3396:	e000      	b.n	339a <par_update+0xa6>
    3398:	46c0      	nop			; (mov r8, r8)
    339a:	46bd      	mov	sp, r7
    339c:	b008      	add	sp, #32
    339e:	bd80      	pop	{r7, pc}
    33a0:	20005b60 	.word	0x20005b60

000033a4 <par_mac>:
    33a4:	b580      	push	{r7, lr}
    33a6:	b084      	sub	sp, #16
    33a8:	af00      	add	r7, sp, #0
    33aa:	6078      	str	r0, [r7, #4]
    33ac:	4b0b      	ldr	r3, [pc, #44]	; (33dc <par_mac+0x38>)
    33ae:	60fb      	str	r3, [r7, #12]
    33b0:	2300      	movs	r3, #0
    33b2:	60bb      	str	r3, [r7, #8]
    33b4:	e00a      	b.n	33cc <par_mac+0x28>
    33b6:	687b      	ldr	r3, [r7, #4]
    33b8:	1c5a      	adds	r2, r3, #1
    33ba:	607a      	str	r2, [r7, #4]
    33bc:	68fa      	ldr	r2, [r7, #12]
    33be:	1e51      	subs	r1, r2, #1
    33c0:	60f9      	str	r1, [r7, #12]
    33c2:	7812      	ldrb	r2, [r2, #0]
    33c4:	701a      	strb	r2, [r3, #0]
    33c6:	68bb      	ldr	r3, [r7, #8]
    33c8:	3301      	adds	r3, #1
    33ca:	60bb      	str	r3, [r7, #8]
    33cc:	68bb      	ldr	r3, [r7, #8]
    33ce:	2b05      	cmp	r3, #5
    33d0:	ddf1      	ble.n	33b6 <par_mac+0x12>
    33d2:	46c0      	nop			; (mov r8, r8)
    33d4:	46bd      	mov	sp, r7
    33d6:	b004      	add	sp, #16
    33d8:	bd80      	pop	{r7, pc}
    33da:	46c0      	nop			; (mov r8, r8)
    33dc:	20005b65 	.word	0x20005b65

000033e0 <par_iploc>:
    33e0:	b580      	push	{r7, lr}
    33e2:	b084      	sub	sp, #16
    33e4:	af00      	add	r7, sp, #0
    33e6:	6078      	str	r0, [r7, #4]
    33e8:	4b0b      	ldr	r3, [pc, #44]	; (3418 <par_iploc+0x38>)
    33ea:	60fb      	str	r3, [r7, #12]
    33ec:	2300      	movs	r3, #0
    33ee:	60bb      	str	r3, [r7, #8]
    33f0:	e00a      	b.n	3408 <par_iploc+0x28>
    33f2:	687b      	ldr	r3, [r7, #4]
    33f4:	1c5a      	adds	r2, r3, #1
    33f6:	607a      	str	r2, [r7, #4]
    33f8:	68fa      	ldr	r2, [r7, #12]
    33fa:	1e51      	subs	r1, r2, #1
    33fc:	60f9      	str	r1, [r7, #12]
    33fe:	7812      	ldrb	r2, [r2, #0]
    3400:	701a      	strb	r2, [r3, #0]
    3402:	68bb      	ldr	r3, [r7, #8]
    3404:	3301      	adds	r3, #1
    3406:	60bb      	str	r3, [r7, #8]
    3408:	68bb      	ldr	r3, [r7, #8]
    340a:	2b03      	cmp	r3, #3
    340c:	ddf1      	ble.n	33f2 <par_iploc+0x12>
    340e:	46c0      	nop			; (mov r8, r8)
    3410:	46bd      	mov	sp, r7
    3412:	b004      	add	sp, #16
    3414:	bd80      	pop	{r7, pc}
    3416:	46c0      	nop			; (mov r8, r8)
    3418:	20005b69 	.word	0x20005b69

0000341c <par_iprem>:
    341c:	b580      	push	{r7, lr}
    341e:	b084      	sub	sp, #16
    3420:	af00      	add	r7, sp, #0
    3422:	6078      	str	r0, [r7, #4]
    3424:	4b0b      	ldr	r3, [pc, #44]	; (3454 <par_iprem+0x38>)
    3426:	60fb      	str	r3, [r7, #12]
    3428:	2300      	movs	r3, #0
    342a:	60bb      	str	r3, [r7, #8]
    342c:	e00a      	b.n	3444 <par_iprem+0x28>
    342e:	687b      	ldr	r3, [r7, #4]
    3430:	1c5a      	adds	r2, r3, #1
    3432:	607a      	str	r2, [r7, #4]
    3434:	68fa      	ldr	r2, [r7, #12]
    3436:	1e51      	subs	r1, r2, #1
    3438:	60f9      	str	r1, [r7, #12]
    343a:	7812      	ldrb	r2, [r2, #0]
    343c:	701a      	strb	r2, [r3, #0]
    343e:	68bb      	ldr	r3, [r7, #8]
    3440:	3301      	adds	r3, #1
    3442:	60bb      	str	r3, [r7, #8]
    3444:	68bb      	ldr	r3, [r7, #8]
    3446:	2b03      	cmp	r3, #3
    3448:	ddf1      	ble.n	342e <par_iprem+0x12>
    344a:	46c0      	nop			; (mov r8, r8)
    344c:	46bd      	mov	sp, r7
    344e:	b004      	add	sp, #16
    3450:	bd80      	pop	{r7, pc}
    3452:	46c0      	nop			; (mov r8, r8)
    3454:	20005b6d 	.word	0x20005b6d

00003458 <mdb_fifo_read>:
    3458:	b580      	push	{r7, lr}
    345a:	b086      	sub	sp, #24
    345c:	af00      	add	r7, sp, #0
    345e:	6078      	str	r0, [r7, #4]
    3460:	6039      	str	r1, [r7, #0]
    3462:	4b1f      	ldr	r3, [pc, #124]	; (34e0 <mdb_fifo_read+0x88>)
    3464:	681a      	ldr	r2, [r3, #0]
    3466:	2301      	movs	r3, #1
    3468:	425b      	negs	r3, r3
    346a:	0019      	movs	r1, r3
    346c:	0010      	movs	r0, r2
    346e:	f003 f927 	bl	66c0 <osMutexWait>
    3472:	4b1c      	ldr	r3, [pc, #112]	; (34e4 <mdb_fifo_read+0x8c>)
    3474:	681a      	ldr	r2, [r3, #0]
    3476:	4b1c      	ldr	r3, [pc, #112]	; (34e8 <mdb_fifo_read+0x90>)
    3478:	681b      	ldr	r3, [r3, #0]
    347a:	1ad3      	subs	r3, r2, r3
    347c:	05db      	lsls	r3, r3, #23
    347e:	0ddb      	lsrs	r3, r3, #23
    3480:	613b      	str	r3, [r7, #16]
    3482:	693b      	ldr	r3, [r7, #16]
    3484:	2280      	movs	r2, #128	; 0x80
    3486:	0092      	lsls	r2, r2, #2
    3488:	1ad3      	subs	r3, r2, r3
    348a:	60fb      	str	r3, [r7, #12]
    348c:	683a      	ldr	r2, [r7, #0]
    348e:	693b      	ldr	r3, [r7, #16]
    3490:	429a      	cmp	r2, r3
    3492:	d819      	bhi.n	34c8 <mdb_fifo_read+0x70>
    3494:	2300      	movs	r3, #0
    3496:	617b      	str	r3, [r7, #20]
    3498:	e011      	b.n	34be <mdb_fifo_read+0x66>
    349a:	687b      	ldr	r3, [r7, #4]
    349c:	1c5a      	adds	r2, r3, #1
    349e:	607a      	str	r2, [r7, #4]
    34a0:	4a11      	ldr	r2, [pc, #68]	; (34e8 <mdb_fifo_read+0x90>)
    34a2:	6812      	ldr	r2, [r2, #0]
    34a4:	4911      	ldr	r1, [pc, #68]	; (34ec <mdb_fifo_read+0x94>)
    34a6:	5c8a      	ldrb	r2, [r1, r2]
    34a8:	701a      	strb	r2, [r3, #0]
    34aa:	4b0f      	ldr	r3, [pc, #60]	; (34e8 <mdb_fifo_read+0x90>)
    34ac:	681b      	ldr	r3, [r3, #0]
    34ae:	3301      	adds	r3, #1
    34b0:	05db      	lsls	r3, r3, #23
    34b2:	0dda      	lsrs	r2, r3, #23
    34b4:	4b0c      	ldr	r3, [pc, #48]	; (34e8 <mdb_fifo_read+0x90>)
    34b6:	601a      	str	r2, [r3, #0]
    34b8:	697b      	ldr	r3, [r7, #20]
    34ba:	3301      	adds	r3, #1
    34bc:	617b      	str	r3, [r7, #20]
    34be:	697a      	ldr	r2, [r7, #20]
    34c0:	683b      	ldr	r3, [r7, #0]
    34c2:	429a      	cmp	r2, r3
    34c4:	dbe9      	blt.n	349a <mdb_fifo_read+0x42>
    34c6:	e001      	b.n	34cc <mdb_fifo_read+0x74>
    34c8:	2300      	movs	r3, #0
    34ca:	603b      	str	r3, [r7, #0]
    34cc:	4b04      	ldr	r3, [pc, #16]	; (34e0 <mdb_fifo_read+0x88>)
    34ce:	681b      	ldr	r3, [r3, #0]
    34d0:	0018      	movs	r0, r3
    34d2:	f003 f905 	bl	66e0 <osMutexRelease>
    34d6:	683b      	ldr	r3, [r7, #0]
    34d8:	0018      	movs	r0, r3
    34da:	46bd      	mov	sp, r7
    34dc:	b006      	add	sp, #24
    34de:	bd80      	pop	{r7, pc}
    34e0:	20000888 	.word	0x20000888
    34e4:	20005d74 	.word	0x20005d74
    34e8:	20005d78 	.word	0x20005d78
    34ec:	20005b74 	.word	0x20005b74

000034f0 <mdb_fifo_write>:
    34f0:	b580      	push	{r7, lr}
    34f2:	b086      	sub	sp, #24
    34f4:	af00      	add	r7, sp, #0
    34f6:	6078      	str	r0, [r7, #4]
    34f8:	6039      	str	r1, [r7, #0]
    34fa:	4b1c      	ldr	r3, [pc, #112]	; (356c <mdb_fifo_write+0x7c>)
    34fc:	681a      	ldr	r2, [r3, #0]
    34fe:	2301      	movs	r3, #1
    3500:	425b      	negs	r3, r3
    3502:	0019      	movs	r1, r3
    3504:	0010      	movs	r0, r2
    3506:	f003 f8db 	bl	66c0 <osMutexWait>
    350a:	4b19      	ldr	r3, [pc, #100]	; (3570 <mdb_fifo_write+0x80>)
    350c:	681a      	ldr	r2, [r3, #0]
    350e:	4b19      	ldr	r3, [pc, #100]	; (3574 <mdb_fifo_write+0x84>)
    3510:	681b      	ldr	r3, [r3, #0]
    3512:	1ad3      	subs	r3, r2, r3
    3514:	05db      	lsls	r3, r3, #23
    3516:	0ddb      	lsrs	r3, r3, #23
    3518:	613b      	str	r3, [r7, #16]
    351a:	693b      	ldr	r3, [r7, #16]
    351c:	2280      	movs	r2, #128	; 0x80
    351e:	0092      	lsls	r2, r2, #2
    3520:	1ad3      	subs	r3, r2, r3
    3522:	60fb      	str	r3, [r7, #12]
    3524:	2300      	movs	r3, #0
    3526:	617b      	str	r3, [r7, #20]
    3528:	e011      	b.n	354e <mdb_fifo_write+0x5e>
    352a:	4b11      	ldr	r3, [pc, #68]	; (3570 <mdb_fifo_write+0x80>)
    352c:	681a      	ldr	r2, [r3, #0]
    352e:	687b      	ldr	r3, [r7, #4]
    3530:	1c59      	adds	r1, r3, #1
    3532:	6079      	str	r1, [r7, #4]
    3534:	7819      	ldrb	r1, [r3, #0]
    3536:	4b10      	ldr	r3, [pc, #64]	; (3578 <mdb_fifo_write+0x88>)
    3538:	5499      	strb	r1, [r3, r2]
    353a:	4b0d      	ldr	r3, [pc, #52]	; (3570 <mdb_fifo_write+0x80>)
    353c:	681b      	ldr	r3, [r3, #0]
    353e:	3301      	adds	r3, #1
    3540:	05db      	lsls	r3, r3, #23
    3542:	0dda      	lsrs	r2, r3, #23
    3544:	4b0a      	ldr	r3, [pc, #40]	; (3570 <mdb_fifo_write+0x80>)
    3546:	601a      	str	r2, [r3, #0]
    3548:	697b      	ldr	r3, [r7, #20]
    354a:	3301      	adds	r3, #1
    354c:	617b      	str	r3, [r7, #20]
    354e:	697a      	ldr	r2, [r7, #20]
    3550:	683b      	ldr	r3, [r7, #0]
    3552:	429a      	cmp	r2, r3
    3554:	dbe9      	blt.n	352a <mdb_fifo_write+0x3a>
    3556:	4b05      	ldr	r3, [pc, #20]	; (356c <mdb_fifo_write+0x7c>)
    3558:	681b      	ldr	r3, [r3, #0]
    355a:	0018      	movs	r0, r3
    355c:	f003 f8c0 	bl	66e0 <osMutexRelease>
    3560:	683b      	ldr	r3, [r7, #0]
    3562:	0018      	movs	r0, r3
    3564:	46bd      	mov	sp, r7
    3566:	b006      	add	sp, #24
    3568:	bd80      	pop	{r7, pc}
    356a:	46c0      	nop			; (mov r8, r8)
    356c:	20000888 	.word	0x20000888
    3570:	20005d74 	.word	0x20005d74
    3574:	20005d78 	.word	0x20005d78
    3578:	20005b74 	.word	0x20005b74

0000357c <mdb_get_testparam>:
    357c:	b5b0      	push	{r4, r5, r7, lr}
    357e:	b086      	sub	sp, #24
    3580:	af00      	add	r7, sp, #0
    3582:	6078      	str	r0, [r7, #4]
    3584:	4b84      	ldr	r3, [pc, #528]	; (3798 <mdb_get_testparam+0x21c>)
    3586:	885b      	ldrh	r3, [r3, #2]
    3588:	041b      	lsls	r3, r3, #16
    358a:	4a83      	ldr	r2, [pc, #524]	; (3798 <mdb_get_testparam+0x21c>)
    358c:	8892      	ldrh	r2, [r2, #4]
    358e:	4313      	orrs	r3, r2
    3590:	001a      	movs	r2, r3
    3592:	687b      	ldr	r3, [r7, #4]
    3594:	21ff      	movs	r1, #255	; 0xff
    3596:	4011      	ands	r1, r2
    3598:	000c      	movs	r4, r1
    359a:	7819      	ldrb	r1, [r3, #0]
    359c:	2000      	movs	r0, #0
    359e:	4001      	ands	r1, r0
    35a0:	1c08      	adds	r0, r1, #0
    35a2:	1c21      	adds	r1, r4, #0
    35a4:	4301      	orrs	r1, r0
    35a6:	7019      	strb	r1, [r3, #0]
    35a8:	0a11      	lsrs	r1, r2, #8
    35aa:	20ff      	movs	r0, #255	; 0xff
    35ac:	4001      	ands	r1, r0
    35ae:	000c      	movs	r4, r1
    35b0:	7859      	ldrb	r1, [r3, #1]
    35b2:	2000      	movs	r0, #0
    35b4:	4001      	ands	r1, r0
    35b6:	1c08      	adds	r0, r1, #0
    35b8:	1c21      	adds	r1, r4, #0
    35ba:	4301      	orrs	r1, r0
    35bc:	7059      	strb	r1, [r3, #1]
    35be:	0c11      	lsrs	r1, r2, #16
    35c0:	20ff      	movs	r0, #255	; 0xff
    35c2:	4001      	ands	r1, r0
    35c4:	000c      	movs	r4, r1
    35c6:	7899      	ldrb	r1, [r3, #2]
    35c8:	2000      	movs	r0, #0
    35ca:	4001      	ands	r1, r0
    35cc:	1c08      	adds	r0, r1, #0
    35ce:	1c21      	adds	r1, r4, #0
    35d0:	4301      	orrs	r1, r0
    35d2:	7099      	strb	r1, [r3, #2]
    35d4:	0e10      	lsrs	r0, r2, #24
    35d6:	78da      	ldrb	r2, [r3, #3]
    35d8:	2100      	movs	r1, #0
    35da:	400a      	ands	r2, r1
    35dc:	1c11      	adds	r1, r2, #0
    35de:	1c02      	adds	r2, r0, #0
    35e0:	430a      	orrs	r2, r1
    35e2:	70da      	strb	r2, [r3, #3]
    35e4:	4b6c      	ldr	r3, [pc, #432]	; (3798 <mdb_get_testparam+0x21c>)
    35e6:	88db      	ldrh	r3, [r3, #6]
    35e8:	041b      	lsls	r3, r3, #16
    35ea:	4a6b      	ldr	r2, [pc, #428]	; (3798 <mdb_get_testparam+0x21c>)
    35ec:	8912      	ldrh	r2, [r2, #8]
    35ee:	4313      	orrs	r3, r2
    35f0:	001a      	movs	r2, r3
    35f2:	687b      	ldr	r3, [r7, #4]
    35f4:	21ff      	movs	r1, #255	; 0xff
    35f6:	4011      	ands	r1, r2
    35f8:	000c      	movs	r4, r1
    35fa:	7919      	ldrb	r1, [r3, #4]
    35fc:	2000      	movs	r0, #0
    35fe:	4001      	ands	r1, r0
    3600:	1c08      	adds	r0, r1, #0
    3602:	1c21      	adds	r1, r4, #0
    3604:	4301      	orrs	r1, r0
    3606:	7119      	strb	r1, [r3, #4]
    3608:	0a11      	lsrs	r1, r2, #8
    360a:	20ff      	movs	r0, #255	; 0xff
    360c:	4001      	ands	r1, r0
    360e:	000c      	movs	r4, r1
    3610:	7959      	ldrb	r1, [r3, #5]
    3612:	2000      	movs	r0, #0
    3614:	4001      	ands	r1, r0
    3616:	1c08      	adds	r0, r1, #0
    3618:	1c21      	adds	r1, r4, #0
    361a:	4301      	orrs	r1, r0
    361c:	7159      	strb	r1, [r3, #5]
    361e:	0c11      	lsrs	r1, r2, #16
    3620:	20ff      	movs	r0, #255	; 0xff
    3622:	4001      	ands	r1, r0
    3624:	000c      	movs	r4, r1
    3626:	7999      	ldrb	r1, [r3, #6]
    3628:	2000      	movs	r0, #0
    362a:	4001      	ands	r1, r0
    362c:	1c08      	adds	r0, r1, #0
    362e:	1c21      	adds	r1, r4, #0
    3630:	4301      	orrs	r1, r0
    3632:	7199      	strb	r1, [r3, #6]
    3634:	0e10      	lsrs	r0, r2, #24
    3636:	79da      	ldrb	r2, [r3, #7]
    3638:	2100      	movs	r1, #0
    363a:	400a      	ands	r2, r1
    363c:	1c11      	adds	r1, r2, #0
    363e:	1c02      	adds	r2, r0, #0
    3640:	430a      	orrs	r2, r1
    3642:	71da      	strb	r2, [r3, #7]
    3644:	4b54      	ldr	r3, [pc, #336]	; (3798 <mdb_get_testparam+0x21c>)
    3646:	895b      	ldrh	r3, [r3, #10]
    3648:	041b      	lsls	r3, r3, #16
    364a:	4a53      	ldr	r2, [pc, #332]	; (3798 <mdb_get_testparam+0x21c>)
    364c:	8992      	ldrh	r2, [r2, #12]
    364e:	4313      	orrs	r3, r2
    3650:	001a      	movs	r2, r3
    3652:	687b      	ldr	r3, [r7, #4]
    3654:	21ff      	movs	r1, #255	; 0xff
    3656:	4011      	ands	r1, r2
    3658:	000c      	movs	r4, r1
    365a:	7a19      	ldrb	r1, [r3, #8]
    365c:	2000      	movs	r0, #0
    365e:	4001      	ands	r1, r0
    3660:	1c08      	adds	r0, r1, #0
    3662:	1c21      	adds	r1, r4, #0
    3664:	4301      	orrs	r1, r0
    3666:	7219      	strb	r1, [r3, #8]
    3668:	0a11      	lsrs	r1, r2, #8
    366a:	20ff      	movs	r0, #255	; 0xff
    366c:	4001      	ands	r1, r0
    366e:	000c      	movs	r4, r1
    3670:	7a59      	ldrb	r1, [r3, #9]
    3672:	2000      	movs	r0, #0
    3674:	4001      	ands	r1, r0
    3676:	1c08      	adds	r0, r1, #0
    3678:	1c21      	adds	r1, r4, #0
    367a:	4301      	orrs	r1, r0
    367c:	7259      	strb	r1, [r3, #9]
    367e:	0c11      	lsrs	r1, r2, #16
    3680:	20ff      	movs	r0, #255	; 0xff
    3682:	4001      	ands	r1, r0
    3684:	000c      	movs	r4, r1
    3686:	7a99      	ldrb	r1, [r3, #10]
    3688:	2000      	movs	r0, #0
    368a:	4001      	ands	r1, r0
    368c:	1c08      	adds	r0, r1, #0
    368e:	1c21      	adds	r1, r4, #0
    3690:	4301      	orrs	r1, r0
    3692:	7299      	strb	r1, [r3, #10]
    3694:	0e10      	lsrs	r0, r2, #24
    3696:	7ada      	ldrb	r2, [r3, #11]
    3698:	2100      	movs	r1, #0
    369a:	400a      	ands	r2, r1
    369c:	1c11      	adds	r1, r2, #0
    369e:	1c02      	adds	r2, r0, #0
    36a0:	430a      	orrs	r2, r1
    36a2:	72da      	strb	r2, [r3, #11]
    36a4:	4b3c      	ldr	r3, [pc, #240]	; (3798 <mdb_get_testparam+0x21c>)
    36a6:	89db      	ldrh	r3, [r3, #14]
    36a8:	041b      	lsls	r3, r3, #16
    36aa:	4a3b      	ldr	r2, [pc, #236]	; (3798 <mdb_get_testparam+0x21c>)
    36ac:	8a12      	ldrh	r2, [r2, #16]
    36ae:	4313      	orrs	r3, r2
    36b0:	001a      	movs	r2, r3
    36b2:	687b      	ldr	r3, [r7, #4]
    36b4:	21ff      	movs	r1, #255	; 0xff
    36b6:	4011      	ands	r1, r2
    36b8:	000c      	movs	r4, r1
    36ba:	7b19      	ldrb	r1, [r3, #12]
    36bc:	2000      	movs	r0, #0
    36be:	4001      	ands	r1, r0
    36c0:	1c08      	adds	r0, r1, #0
    36c2:	1c21      	adds	r1, r4, #0
    36c4:	4301      	orrs	r1, r0
    36c6:	7319      	strb	r1, [r3, #12]
    36c8:	0a11      	lsrs	r1, r2, #8
    36ca:	20ff      	movs	r0, #255	; 0xff
    36cc:	4001      	ands	r1, r0
    36ce:	000c      	movs	r4, r1
    36d0:	7b59      	ldrb	r1, [r3, #13]
    36d2:	2000      	movs	r0, #0
    36d4:	4001      	ands	r1, r0
    36d6:	1c08      	adds	r0, r1, #0
    36d8:	1c21      	adds	r1, r4, #0
    36da:	4301      	orrs	r1, r0
    36dc:	7359      	strb	r1, [r3, #13]
    36de:	0c11      	lsrs	r1, r2, #16
    36e0:	20ff      	movs	r0, #255	; 0xff
    36e2:	4001      	ands	r1, r0
    36e4:	000c      	movs	r4, r1
    36e6:	7b99      	ldrb	r1, [r3, #14]
    36e8:	2000      	movs	r0, #0
    36ea:	4001      	ands	r1, r0
    36ec:	1c08      	adds	r0, r1, #0
    36ee:	1c21      	adds	r1, r4, #0
    36f0:	4301      	orrs	r1, r0
    36f2:	7399      	strb	r1, [r3, #14]
    36f4:	0e10      	lsrs	r0, r2, #24
    36f6:	7bda      	ldrb	r2, [r3, #15]
    36f8:	2100      	movs	r1, #0
    36fa:	400a      	ands	r2, r1
    36fc:	1c11      	adds	r1, r2, #0
    36fe:	1c02      	adds	r2, r0, #0
    3700:	430a      	orrs	r2, r1
    3702:	73da      	strb	r2, [r3, #15]
    3704:	4b25      	ldr	r3, [pc, #148]	; (379c <mdb_get_testparam+0x220>)
    3706:	613b      	str	r3, [r7, #16]
    3708:	4b25      	ldr	r3, [pc, #148]	; (37a0 <mdb_get_testparam+0x224>)
    370a:	60fb      	str	r3, [r7, #12]
    370c:	2300      	movs	r3, #0
    370e:	617b      	str	r3, [r7, #20]
    3710:	e03a      	b.n	3788 <mdb_get_testparam+0x20c>
    3712:	693b      	ldr	r3, [r7, #16]
    3714:	1c9a      	adds	r2, r3, #2
    3716:	613a      	str	r2, [r7, #16]
    3718:	8819      	ldrh	r1, [r3, #0]
    371a:	687a      	ldr	r2, [r7, #4]
    371c:	697b      	ldr	r3, [r7, #20]
    371e:	3308      	adds	r3, #8
    3720:	005b      	lsls	r3, r3, #1
    3722:	20ff      	movs	r0, #255	; 0xff
    3724:	4008      	ands	r0, r1
    3726:	0005      	movs	r5, r0
    3728:	5c98      	ldrb	r0, [r3, r2]
    372a:	2400      	movs	r4, #0
    372c:	4020      	ands	r0, r4
    372e:	1c04      	adds	r4, r0, #0
    3730:	1c28      	adds	r0, r5, #0
    3732:	4320      	orrs	r0, r4
    3734:	5498      	strb	r0, [r3, r2]
    3736:	0a09      	lsrs	r1, r1, #8
    3738:	b288      	uxth	r0, r1
    373a:	18d3      	adds	r3, r2, r3
    373c:	785a      	ldrb	r2, [r3, #1]
    373e:	2100      	movs	r1, #0
    3740:	400a      	ands	r2, r1
    3742:	1c11      	adds	r1, r2, #0
    3744:	1c02      	adds	r2, r0, #0
    3746:	430a      	orrs	r2, r1
    3748:	705a      	strb	r2, [r3, #1]
    374a:	68fb      	ldr	r3, [r7, #12]
    374c:	1c9a      	adds	r2, r3, #2
    374e:	60fa      	str	r2, [r7, #12]
    3750:	881a      	ldrh	r2, [r3, #0]
    3752:	6879      	ldr	r1, [r7, #4]
    3754:	697b      	ldr	r3, [r7, #20]
    3756:	330c      	adds	r3, #12
    3758:	005b      	lsls	r3, r3, #1
    375a:	18cb      	adds	r3, r1, r3
    375c:	21ff      	movs	r1, #255	; 0xff
    375e:	4011      	ands	r1, r2
    3760:	000c      	movs	r4, r1
    3762:	7899      	ldrb	r1, [r3, #2]
    3764:	2000      	movs	r0, #0
    3766:	4001      	ands	r1, r0
    3768:	1c08      	adds	r0, r1, #0
    376a:	1c21      	adds	r1, r4, #0
    376c:	4301      	orrs	r1, r0
    376e:	7099      	strb	r1, [r3, #2]
    3770:	0a12      	lsrs	r2, r2, #8
    3772:	b290      	uxth	r0, r2
    3774:	78da      	ldrb	r2, [r3, #3]
    3776:	2100      	movs	r1, #0
    3778:	400a      	ands	r2, r1
    377a:	1c11      	adds	r1, r2, #0
    377c:	1c02      	adds	r2, r0, #0
    377e:	430a      	orrs	r2, r1
    3780:	70da      	strb	r2, [r3, #3]
    3782:	697b      	ldr	r3, [r7, #20]
    3784:	3301      	adds	r3, #1
    3786:	617b      	str	r3, [r7, #20]
    3788:	697b      	ldr	r3, [r7, #20]
    378a:	2b04      	cmp	r3, #4
    378c:	ddc1      	ble.n	3712 <mdb_get_testparam+0x196>
    378e:	46c0      	nop			; (mov r8, r8)
    3790:	46bd      	mov	sp, r7
    3792:	b006      	add	sp, #24
    3794:	bdb0      	pop	{r4, r5, r7, pc}
    3796:	46c0      	nop			; (mov r8, r8)
    3798:	20005d7c 	.word	0x20005d7c
    379c:	20005d8e 	.word	0x20005d8e
    37a0:	20005d98 	.word	0x20005d98

000037a4 <mdb_get_holding_register>:
    37a4:	b580      	push	{r7, lr}
    37a6:	b084      	sub	sp, #16
    37a8:	af00      	add	r7, sp, #0
    37aa:	6078      	str	r0, [r7, #4]
    37ac:	687b      	ldr	r3, [r7, #4]
    37ae:	2b00      	cmp	r3, #0
    37b0:	db02      	blt.n	37b8 <mdb_get_holding_register+0x14>
    37b2:	687b      	ldr	r3, [r7, #4]
    37b4:	2b17      	cmp	r3, #23
    37b6:	dd01      	ble.n	37bc <mdb_get_holding_register+0x18>
    37b8:	2300      	movs	r3, #0
    37ba:	e009      	b.n	37d0 <mdb_get_holding_register+0x2c>
    37bc:	230e      	movs	r3, #14
    37be:	18fb      	adds	r3, r7, r3
    37c0:	4a05      	ldr	r2, [pc, #20]	; (37d8 <mdb_get_holding_register+0x34>)
    37c2:	6879      	ldr	r1, [r7, #4]
    37c4:	0049      	lsls	r1, r1, #1
    37c6:	5a8a      	ldrh	r2, [r1, r2]
    37c8:	801a      	strh	r2, [r3, #0]
    37ca:	230e      	movs	r3, #14
    37cc:	18fb      	adds	r3, r7, r3
    37ce:	881b      	ldrh	r3, [r3, #0]
    37d0:	0018      	movs	r0, r3
    37d2:	46bd      	mov	sp, r7
    37d4:	b004      	add	sp, #16
    37d6:	bd80      	pop	{r7, pc}
    37d8:	20005d7c 	.word	0x20005d7c

000037dc <pdu_report_server_id>:
    37dc:	b580      	push	{r7, lr}
    37de:	b086      	sub	sp, #24
    37e0:	af00      	add	r7, sp, #0
    37e2:	6078      	str	r0, [r7, #4]
    37e4:	2311      	movs	r3, #17
    37e6:	60fb      	str	r3, [r7, #12]
    37e8:	4b1f      	ldr	r3, [pc, #124]	; (3868 <pdu_report_server_id+0x8c>)
    37ea:	681a      	ldr	r2, [r3, #0]
    37ec:	687b      	ldr	r3, [r7, #4]
    37ee:	18d2      	adds	r2, r2, r3
    37f0:	230b      	movs	r3, #11
    37f2:	18fb      	adds	r3, r7, r3
    37f4:	7812      	ldrb	r2, [r2, #0]
    37f6:	701a      	strb	r2, [r3, #0]
    37f8:	687b      	ldr	r3, [r7, #4]
    37fa:	617b      	str	r3, [r7, #20]
    37fc:	697b      	ldr	r3, [r7, #20]
    37fe:	1c5a      	adds	r2, r3, #1
    3800:	617a      	str	r2, [r7, #20]
    3802:	4a1a      	ldr	r2, [pc, #104]	; (386c <pdu_report_server_id+0x90>)
    3804:	210b      	movs	r1, #11
    3806:	1879      	adds	r1, r7, r1
    3808:	7809      	ldrb	r1, [r1, #0]
    380a:	54d1      	strb	r1, [r2, r3]
    380c:	697b      	ldr	r3, [r7, #20]
    380e:	1c5a      	adds	r2, r3, #1
    3810:	617a      	str	r2, [r7, #20]
    3812:	68fa      	ldr	r2, [r7, #12]
    3814:	b2d2      	uxtb	r2, r2
    3816:	3202      	adds	r2, #2
    3818:	b2d1      	uxtb	r1, r2
    381a:	4a14      	ldr	r2, [pc, #80]	; (386c <pdu_report_server_id+0x90>)
    381c:	54d1      	strb	r1, [r2, r3]
    381e:	697b      	ldr	r3, [r7, #20]
    3820:	1c5a      	adds	r2, r3, #1
    3822:	617a      	str	r2, [r7, #20]
    3824:	4a11      	ldr	r2, [pc, #68]	; (386c <pdu_report_server_id+0x90>)
    3826:	2111      	movs	r1, #17
    3828:	54d1      	strb	r1, [r2, r3]
    382a:	697b      	ldr	r3, [r7, #20]
    382c:	1c5a      	adds	r2, r3, #1
    382e:	617a      	str	r2, [r7, #20]
    3830:	4a0e      	ldr	r2, [pc, #56]	; (386c <pdu_report_server_id+0x90>)
    3832:	21ff      	movs	r1, #255	; 0xff
    3834:	54d1      	strb	r1, [r2, r3]
    3836:	2300      	movs	r3, #0
    3838:	613b      	str	r3, [r7, #16]
    383a:	e00b      	b.n	3854 <pdu_report_server_id+0x78>
    383c:	697b      	ldr	r3, [r7, #20]
    383e:	1c5a      	adds	r2, r3, #1
    3840:	617a      	str	r2, [r7, #20]
    3842:	490b      	ldr	r1, [pc, #44]	; (3870 <pdu_report_server_id+0x94>)
    3844:	693a      	ldr	r2, [r7, #16]
    3846:	188a      	adds	r2, r1, r2
    3848:	7811      	ldrb	r1, [r2, #0]
    384a:	4a08      	ldr	r2, [pc, #32]	; (386c <pdu_report_server_id+0x90>)
    384c:	54d1      	strb	r1, [r2, r3]
    384e:	693b      	ldr	r3, [r7, #16]
    3850:	3301      	adds	r3, #1
    3852:	613b      	str	r3, [r7, #16]
    3854:	693a      	ldr	r2, [r7, #16]
    3856:	68fb      	ldr	r3, [r7, #12]
    3858:	429a      	cmp	r2, r3
    385a:	dbef      	blt.n	383c <pdu_report_server_id+0x60>
    385c:	697b      	ldr	r3, [r7, #20]
    385e:	0018      	movs	r0, r3
    3860:	46bd      	mov	sp, r7
    3862:	b006      	add	sp, #24
    3864:	bd80      	pop	{r7, pc}
    3866:	46c0      	nop			; (mov r8, r8)
    3868:	20005db8 	.word	0x20005db8
    386c:	20005dbc 	.word	0x20005dbc
    3870:	00008f28 	.word	0x00008f28

00003874 <pdu_read_input_registers>:
    3874:	b580      	push	{r7, lr}
    3876:	b086      	sub	sp, #24
    3878:	af00      	add	r7, sp, #0
    387a:	6078      	str	r0, [r7, #4]
    387c:	4b4e      	ldr	r3, [pc, #312]	; (39b8 <pdu_read_input_registers+0x144>)
    387e:	681a      	ldr	r2, [r3, #0]
    3880:	687b      	ldr	r3, [r7, #4]
    3882:	18d2      	adds	r2, r2, r3
    3884:	230f      	movs	r3, #15
    3886:	18fb      	adds	r3, r7, r3
    3888:	7812      	ldrb	r2, [r2, #0]
    388a:	701a      	strb	r2, [r3, #0]
    388c:	4b4a      	ldr	r3, [pc, #296]	; (39b8 <pdu_read_input_registers+0x144>)
    388e:	681a      	ldr	r2, [r3, #0]
    3890:	687b      	ldr	r3, [r7, #4]
    3892:	3301      	adds	r3, #1
    3894:	18d3      	adds	r3, r2, r3
    3896:	781b      	ldrb	r3, [r3, #0]
    3898:	021b      	lsls	r3, r3, #8
    389a:	b21a      	sxth	r2, r3
    389c:	4b46      	ldr	r3, [pc, #280]	; (39b8 <pdu_read_input_registers+0x144>)
    389e:	6819      	ldr	r1, [r3, #0]
    38a0:	687b      	ldr	r3, [r7, #4]
    38a2:	3302      	adds	r3, #2
    38a4:	18cb      	adds	r3, r1, r3
    38a6:	781b      	ldrb	r3, [r3, #0]
    38a8:	b21b      	sxth	r3, r3
    38aa:	4313      	orrs	r3, r2
    38ac:	b21a      	sxth	r2, r3
    38ae:	230c      	movs	r3, #12
    38b0:	18fb      	adds	r3, r7, r3
    38b2:	801a      	strh	r2, [r3, #0]
    38b4:	4b40      	ldr	r3, [pc, #256]	; (39b8 <pdu_read_input_registers+0x144>)
    38b6:	681a      	ldr	r2, [r3, #0]
    38b8:	687b      	ldr	r3, [r7, #4]
    38ba:	3303      	adds	r3, #3
    38bc:	18d3      	adds	r3, r2, r3
    38be:	781b      	ldrb	r3, [r3, #0]
    38c0:	021b      	lsls	r3, r3, #8
    38c2:	b21a      	sxth	r2, r3
    38c4:	4b3c      	ldr	r3, [pc, #240]	; (39b8 <pdu_read_input_registers+0x144>)
    38c6:	6819      	ldr	r1, [r3, #0]
    38c8:	687b      	ldr	r3, [r7, #4]
    38ca:	3304      	adds	r3, #4
    38cc:	18cb      	adds	r3, r1, r3
    38ce:	781b      	ldrb	r3, [r3, #0]
    38d0:	b21b      	sxth	r3, r3
    38d2:	4313      	orrs	r3, r2
    38d4:	b21a      	sxth	r2, r3
    38d6:	230a      	movs	r3, #10
    38d8:	18fb      	adds	r3, r7, r3
    38da:	801a      	strh	r2, [r3, #0]
    38dc:	230c      	movs	r3, #12
    38de:	18fb      	adds	r3, r7, r3
    38e0:	881b      	ldrh	r3, [r3, #0]
    38e2:	2bff      	cmp	r3, #255	; 0xff
    38e4:	d90a      	bls.n	38fc <pdu_read_input_registers+0x88>
    38e6:	230c      	movs	r3, #12
    38e8:	18fb      	adds	r3, r7, r3
    38ea:	881a      	ldrh	r2, [r3, #0]
    38ec:	230a      	movs	r3, #10
    38ee:	18fb      	adds	r3, r7, r3
    38f0:	881b      	ldrh	r3, [r3, #0]
    38f2:	18d2      	adds	r2, r2, r3
    38f4:	2304      	movs	r3, #4
    38f6:	33ff      	adds	r3, #255	; 0xff
    38f8:	429a      	cmp	r2, r3
    38fa:	dd15      	ble.n	3928 <pdu_read_input_registers+0xb4>
    38fc:	687b      	ldr	r3, [r7, #4]
    38fe:	613b      	str	r3, [r7, #16]
    3900:	693b      	ldr	r3, [r7, #16]
    3902:	1c5a      	adds	r2, r3, #1
    3904:	613a      	str	r2, [r7, #16]
    3906:	220f      	movs	r2, #15
    3908:	18ba      	adds	r2, r7, r2
    390a:	7812      	ldrb	r2, [r2, #0]
    390c:	2180      	movs	r1, #128	; 0x80
    390e:	4249      	negs	r1, r1
    3910:	430a      	orrs	r2, r1
    3912:	b2d1      	uxtb	r1, r2
    3914:	4a29      	ldr	r2, [pc, #164]	; (39bc <pdu_read_input_registers+0x148>)
    3916:	54d1      	strb	r1, [r2, r3]
    3918:	693b      	ldr	r3, [r7, #16]
    391a:	1c5a      	adds	r2, r3, #1
    391c:	613a      	str	r2, [r7, #16]
    391e:	4a27      	ldr	r2, [pc, #156]	; (39bc <pdu_read_input_registers+0x148>)
    3920:	2102      	movs	r1, #2
    3922:	54d1      	strb	r1, [r2, r3]
    3924:	693b      	ldr	r3, [r7, #16]
    3926:	e042      	b.n	39ae <pdu_read_input_registers+0x13a>
    3928:	687b      	ldr	r3, [r7, #4]
    392a:	613b      	str	r3, [r7, #16]
    392c:	693b      	ldr	r3, [r7, #16]
    392e:	1c5a      	adds	r2, r3, #1
    3930:	613a      	str	r2, [r7, #16]
    3932:	4a22      	ldr	r2, [pc, #136]	; (39bc <pdu_read_input_registers+0x148>)
    3934:	210f      	movs	r1, #15
    3936:	1879      	adds	r1, r7, r1
    3938:	7809      	ldrb	r1, [r1, #0]
    393a:	54d1      	strb	r1, [r2, r3]
    393c:	693b      	ldr	r3, [r7, #16]
    393e:	1c5a      	adds	r2, r3, #1
    3940:	613a      	str	r2, [r7, #16]
    3942:	220a      	movs	r2, #10
    3944:	18ba      	adds	r2, r7, r2
    3946:	8812      	ldrh	r2, [r2, #0]
    3948:	b2d2      	uxtb	r2, r2
    394a:	1892      	adds	r2, r2, r2
    394c:	b2d1      	uxtb	r1, r2
    394e:	4a1b      	ldr	r2, [pc, #108]	; (39bc <pdu_read_input_registers+0x148>)
    3950:	54d1      	strb	r1, [r2, r3]
    3952:	2300      	movs	r3, #0
    3954:	617b      	str	r3, [r7, #20]
    3956:	e023      	b.n	39a0 <pdu_read_input_registers+0x12c>
    3958:	230c      	movs	r3, #12
    395a:	18fb      	adds	r3, r7, r3
    395c:	881b      	ldrh	r3, [r3, #0]
    395e:	1e5a      	subs	r2, r3, #1
    3960:	3aff      	subs	r2, #255	; 0xff
    3962:	697b      	ldr	r3, [r7, #20]
    3964:	18d1      	adds	r1, r2, r3
    3966:	2308      	movs	r3, #8
    3968:	18fb      	adds	r3, r7, r3
    396a:	4a15      	ldr	r2, [pc, #84]	; (39c0 <pdu_read_input_registers+0x14c>)
    396c:	0049      	lsls	r1, r1, #1
    396e:	5a8a      	ldrh	r2, [r1, r2]
    3970:	801a      	strh	r2, [r3, #0]
    3972:	693b      	ldr	r3, [r7, #16]
    3974:	1c5a      	adds	r2, r3, #1
    3976:	613a      	str	r2, [r7, #16]
    3978:	2208      	movs	r2, #8
    397a:	18ba      	adds	r2, r7, r2
    397c:	8812      	ldrh	r2, [r2, #0]
    397e:	0a12      	lsrs	r2, r2, #8
    3980:	b292      	uxth	r2, r2
    3982:	b2d1      	uxtb	r1, r2
    3984:	4a0d      	ldr	r2, [pc, #52]	; (39bc <pdu_read_input_registers+0x148>)
    3986:	54d1      	strb	r1, [r2, r3]
    3988:	693b      	ldr	r3, [r7, #16]
    398a:	1c5a      	adds	r2, r3, #1
    398c:	613a      	str	r2, [r7, #16]
    398e:	2208      	movs	r2, #8
    3990:	18ba      	adds	r2, r7, r2
    3992:	8812      	ldrh	r2, [r2, #0]
    3994:	b2d1      	uxtb	r1, r2
    3996:	4a09      	ldr	r2, [pc, #36]	; (39bc <pdu_read_input_registers+0x148>)
    3998:	54d1      	strb	r1, [r2, r3]
    399a:	697b      	ldr	r3, [r7, #20]
    399c:	3301      	adds	r3, #1
    399e:	617b      	str	r3, [r7, #20]
    39a0:	230a      	movs	r3, #10
    39a2:	18fb      	adds	r3, r7, r3
    39a4:	881a      	ldrh	r2, [r3, #0]
    39a6:	697b      	ldr	r3, [r7, #20]
    39a8:	429a      	cmp	r2, r3
    39aa:	dcd5      	bgt.n	3958 <pdu_read_input_registers+0xe4>
    39ac:	693b      	ldr	r3, [r7, #16]
    39ae:	0018      	movs	r0, r3
    39b0:	46bd      	mov	sp, r7
    39b2:	b006      	add	sp, #24
    39b4:	bd80      	pop	{r7, pc}
    39b6:	46c0      	nop			; (mov r8, r8)
    39b8:	20005db8 	.word	0x20005db8
    39bc:	20005dbc 	.word	0x20005dbc
    39c0:	20005dac 	.word	0x20005dac

000039c4 <pdu_write_multiply_registers>:
    39c4:	b580      	push	{r7, lr}
    39c6:	b088      	sub	sp, #32
    39c8:	af00      	add	r7, sp, #0
    39ca:	6078      	str	r0, [r7, #4]
    39cc:	4b5a      	ldr	r3, [pc, #360]	; (3b38 <pdu_write_multiply_registers+0x174>)
    39ce:	681a      	ldr	r2, [r3, #0]
    39d0:	687b      	ldr	r3, [r7, #4]
    39d2:	18d2      	adds	r2, r2, r3
    39d4:	2317      	movs	r3, #23
    39d6:	18fb      	adds	r3, r7, r3
    39d8:	7812      	ldrb	r2, [r2, #0]
    39da:	701a      	strb	r2, [r3, #0]
    39dc:	4b56      	ldr	r3, [pc, #344]	; (3b38 <pdu_write_multiply_registers+0x174>)
    39de:	681a      	ldr	r2, [r3, #0]
    39e0:	687b      	ldr	r3, [r7, #4]
    39e2:	3301      	adds	r3, #1
    39e4:	18d3      	adds	r3, r2, r3
    39e6:	781b      	ldrb	r3, [r3, #0]
    39e8:	021b      	lsls	r3, r3, #8
    39ea:	b21a      	sxth	r2, r3
    39ec:	4b52      	ldr	r3, [pc, #328]	; (3b38 <pdu_write_multiply_registers+0x174>)
    39ee:	6819      	ldr	r1, [r3, #0]
    39f0:	687b      	ldr	r3, [r7, #4]
    39f2:	3302      	adds	r3, #2
    39f4:	18cb      	adds	r3, r1, r3
    39f6:	781b      	ldrb	r3, [r3, #0]
    39f8:	b21b      	sxth	r3, r3
    39fa:	4313      	orrs	r3, r2
    39fc:	b21a      	sxth	r2, r3
    39fe:	2314      	movs	r3, #20
    3a00:	18fb      	adds	r3, r7, r3
    3a02:	801a      	strh	r2, [r3, #0]
    3a04:	4b4c      	ldr	r3, [pc, #304]	; (3b38 <pdu_write_multiply_registers+0x174>)
    3a06:	681a      	ldr	r2, [r3, #0]
    3a08:	687b      	ldr	r3, [r7, #4]
    3a0a:	3303      	adds	r3, #3
    3a0c:	18d3      	adds	r3, r2, r3
    3a0e:	781b      	ldrb	r3, [r3, #0]
    3a10:	021b      	lsls	r3, r3, #8
    3a12:	b21a      	sxth	r2, r3
    3a14:	4b48      	ldr	r3, [pc, #288]	; (3b38 <pdu_write_multiply_registers+0x174>)
    3a16:	6819      	ldr	r1, [r3, #0]
    3a18:	687b      	ldr	r3, [r7, #4]
    3a1a:	3304      	adds	r3, #4
    3a1c:	18cb      	adds	r3, r1, r3
    3a1e:	781b      	ldrb	r3, [r3, #0]
    3a20:	b21b      	sxth	r3, r3
    3a22:	4313      	orrs	r3, r2
    3a24:	b21a      	sxth	r2, r3
    3a26:	2312      	movs	r3, #18
    3a28:	18fb      	adds	r3, r7, r3
    3a2a:	801a      	strh	r2, [r3, #0]
    3a2c:	4b42      	ldr	r3, [pc, #264]	; (3b38 <pdu_write_multiply_registers+0x174>)
    3a2e:	681a      	ldr	r2, [r3, #0]
    3a30:	687b      	ldr	r3, [r7, #4]
    3a32:	3305      	adds	r3, #5
    3a34:	18d2      	adds	r2, r2, r3
    3a36:	2311      	movs	r3, #17
    3a38:	18fb      	adds	r3, r7, r3
    3a3a:	7812      	ldrb	r2, [r2, #0]
    3a3c:	701a      	strb	r2, [r3, #0]
    3a3e:	2314      	movs	r3, #20
    3a40:	18fb      	adds	r3, r7, r3
    3a42:	881a      	ldrh	r2, [r3, #0]
    3a44:	2312      	movs	r3, #18
    3a46:	18fb      	adds	r3, r7, r3
    3a48:	881b      	ldrh	r3, [r3, #0]
    3a4a:	18d3      	adds	r3, r2, r3
    3a4c:	2b18      	cmp	r3, #24
    3a4e:	dd14      	ble.n	3a7a <pdu_write_multiply_registers+0xb6>
    3a50:	687b      	ldr	r3, [r7, #4]
    3a52:	61bb      	str	r3, [r7, #24]
    3a54:	69bb      	ldr	r3, [r7, #24]
    3a56:	1c5a      	adds	r2, r3, #1
    3a58:	61ba      	str	r2, [r7, #24]
    3a5a:	2217      	movs	r2, #23
    3a5c:	18ba      	adds	r2, r7, r2
    3a5e:	7812      	ldrb	r2, [r2, #0]
    3a60:	2180      	movs	r1, #128	; 0x80
    3a62:	4249      	negs	r1, r1
    3a64:	430a      	orrs	r2, r1
    3a66:	b2d1      	uxtb	r1, r2
    3a68:	4a34      	ldr	r2, [pc, #208]	; (3b3c <pdu_write_multiply_registers+0x178>)
    3a6a:	54d1      	strb	r1, [r2, r3]
    3a6c:	69bb      	ldr	r3, [r7, #24]
    3a6e:	1c5a      	adds	r2, r3, #1
    3a70:	61ba      	str	r2, [r7, #24]
    3a72:	4a32      	ldr	r2, [pc, #200]	; (3b3c <pdu_write_multiply_registers+0x178>)
    3a74:	2102      	movs	r1, #2
    3a76:	54d1      	strb	r1, [r2, r3]
    3a78:	e04b      	b.n	3b12 <pdu_write_multiply_registers+0x14e>
    3a7a:	687b      	ldr	r3, [r7, #4]
    3a7c:	3306      	adds	r3, #6
    3a7e:	61bb      	str	r3, [r7, #24]
    3a80:	2300      	movs	r3, #0
    3a82:	61fb      	str	r3, [r7, #28]
    3a84:	e028      	b.n	3ad8 <pdu_write_multiply_registers+0x114>
    3a86:	4b2c      	ldr	r3, [pc, #176]	; (3b38 <pdu_write_multiply_registers+0x174>)
    3a88:	681a      	ldr	r2, [r3, #0]
    3a8a:	69bb      	ldr	r3, [r7, #24]
    3a8c:	1c59      	adds	r1, r3, #1
    3a8e:	61b9      	str	r1, [r7, #24]
    3a90:	18d3      	adds	r3, r2, r3
    3a92:	781b      	ldrb	r3, [r3, #0]
    3a94:	b29a      	uxth	r2, r3
    3a96:	230e      	movs	r3, #14
    3a98:	18fb      	adds	r3, r7, r3
    3a9a:	0212      	lsls	r2, r2, #8
    3a9c:	801a      	strh	r2, [r3, #0]
    3a9e:	4b26      	ldr	r3, [pc, #152]	; (3b38 <pdu_write_multiply_registers+0x174>)
    3aa0:	681a      	ldr	r2, [r3, #0]
    3aa2:	69bb      	ldr	r3, [r7, #24]
    3aa4:	1c59      	adds	r1, r3, #1
    3aa6:	61b9      	str	r1, [r7, #24]
    3aa8:	18d3      	adds	r3, r2, r3
    3aaa:	781b      	ldrb	r3, [r3, #0]
    3aac:	b299      	uxth	r1, r3
    3aae:	230e      	movs	r3, #14
    3ab0:	18fb      	adds	r3, r7, r3
    3ab2:	220e      	movs	r2, #14
    3ab4:	18ba      	adds	r2, r7, r2
    3ab6:	8812      	ldrh	r2, [r2, #0]
    3ab8:	430a      	orrs	r2, r1
    3aba:	801a      	strh	r2, [r3, #0]
    3abc:	2314      	movs	r3, #20
    3abe:	18fb      	adds	r3, r7, r3
    3ac0:	881a      	ldrh	r2, [r3, #0]
    3ac2:	69fb      	ldr	r3, [r7, #28]
    3ac4:	18d2      	adds	r2, r2, r3
    3ac6:	4b1e      	ldr	r3, [pc, #120]	; (3b40 <pdu_write_multiply_registers+0x17c>)
    3ac8:	0052      	lsls	r2, r2, #1
    3aca:	210e      	movs	r1, #14
    3acc:	1879      	adds	r1, r7, r1
    3ace:	8809      	ldrh	r1, [r1, #0]
    3ad0:	52d1      	strh	r1, [r2, r3]
    3ad2:	69fb      	ldr	r3, [r7, #28]
    3ad4:	3301      	adds	r3, #1
    3ad6:	61fb      	str	r3, [r7, #28]
    3ad8:	2312      	movs	r3, #18
    3ada:	18fb      	adds	r3, r7, r3
    3adc:	881a      	ldrh	r2, [r3, #0]
    3ade:	69fb      	ldr	r3, [r7, #28]
    3ae0:	429a      	cmp	r2, r3
    3ae2:	dcd0      	bgt.n	3a86 <pdu_write_multiply_registers+0xc2>
    3ae4:	687b      	ldr	r3, [r7, #4]
    3ae6:	61bb      	str	r3, [r7, #24]
    3ae8:	687b      	ldr	r3, [r7, #4]
    3aea:	61fb      	str	r3, [r7, #28]
    3aec:	e00c      	b.n	3b08 <pdu_write_multiply_registers+0x144>
    3aee:	69bb      	ldr	r3, [r7, #24]
    3af0:	1c5a      	adds	r2, r3, #1
    3af2:	61ba      	str	r2, [r7, #24]
    3af4:	4a10      	ldr	r2, [pc, #64]	; (3b38 <pdu_write_multiply_registers+0x174>)
    3af6:	6811      	ldr	r1, [r2, #0]
    3af8:	69fa      	ldr	r2, [r7, #28]
    3afa:	188a      	adds	r2, r1, r2
    3afc:	7811      	ldrb	r1, [r2, #0]
    3afe:	4a0f      	ldr	r2, [pc, #60]	; (3b3c <pdu_write_multiply_registers+0x178>)
    3b00:	54d1      	strb	r1, [r2, r3]
    3b02:	69fb      	ldr	r3, [r7, #28]
    3b04:	3301      	adds	r3, #1
    3b06:	61fb      	str	r3, [r7, #28]
    3b08:	687b      	ldr	r3, [r7, #4]
    3b0a:	1d5a      	adds	r2, r3, #5
    3b0c:	69fb      	ldr	r3, [r7, #28]
    3b0e:	429a      	cmp	r2, r3
    3b10:	dced      	bgt.n	3aee <pdu_write_multiply_registers+0x12a>
    3b12:	2314      	movs	r3, #20
    3b14:	18fb      	adds	r3, r7, r3
    3b16:	881b      	ldrh	r3, [r3, #0]
    3b18:	2b00      	cmp	r3, #0
    3b1a:	d107      	bne.n	3b2c <pdu_write_multiply_registers+0x168>
    3b1c:	4b09      	ldr	r3, [pc, #36]	; (3b44 <pdu_write_multiply_registers+0x180>)
    3b1e:	6818      	ldr	r0, [r3, #0]
    3b20:	4b07      	ldr	r3, [pc, #28]	; (3b40 <pdu_write_multiply_registers+0x17c>)
    3b22:	881b      	ldrh	r3, [r3, #0]
    3b24:	2200      	movs	r2, #0
    3b26:	0019      	movs	r1, r3
    3b28:	f003 f8b2 	bl	6c90 <osMessagePut>
    3b2c:	69bb      	ldr	r3, [r7, #24]
    3b2e:	0018      	movs	r0, r3
    3b30:	46bd      	mov	sp, r7
    3b32:	b008      	add	sp, #32
    3b34:	bd80      	pop	{r7, pc}
    3b36:	46c0      	nop			; (mov r8, r8)
    3b38:	20005db8 	.word	0x20005db8
    3b3c:	20005dbc 	.word	0x20005dbc
    3b40:	20005d7c 	.word	0x20005d7c
    3b44:	20000864 	.word	0x20000864

00003b48 <u16tobe>:
    3b48:	b580      	push	{r7, lr}
    3b4a:	b082      	sub	sp, #8
    3b4c:	af00      	add	r7, sp, #0
    3b4e:	0002      	movs	r2, r0
    3b50:	6039      	str	r1, [r7, #0]
    3b52:	1dbb      	adds	r3, r7, #6
    3b54:	801a      	strh	r2, [r3, #0]
    3b56:	683b      	ldr	r3, [r7, #0]
    3b58:	1c5a      	adds	r2, r3, #1
    3b5a:	603a      	str	r2, [r7, #0]
    3b5c:	1dba      	adds	r2, r7, #6
    3b5e:	8812      	ldrh	r2, [r2, #0]
    3b60:	0a12      	lsrs	r2, r2, #8
    3b62:	b292      	uxth	r2, r2
    3b64:	b2d2      	uxtb	r2, r2
    3b66:	701a      	strb	r2, [r3, #0]
    3b68:	683b      	ldr	r3, [r7, #0]
    3b6a:	1c5a      	adds	r2, r3, #1
    3b6c:	603a      	str	r2, [r7, #0]
    3b6e:	1dba      	adds	r2, r7, #6
    3b70:	8812      	ldrh	r2, [r2, #0]
    3b72:	b2d2      	uxtb	r2, r2
    3b74:	701a      	strb	r2, [r3, #0]
    3b76:	46c0      	nop			; (mov r8, r8)
    3b78:	46bd      	mov	sp, r7
    3b7a:	b002      	add	sp, #8
    3b7c:	bd80      	pop	{r7, pc}
    3b7e:	46c0      	nop			; (mov r8, r8)

00003b80 <u32tobe>:
    3b80:	b580      	push	{r7, lr}
    3b82:	b082      	sub	sp, #8
    3b84:	af00      	add	r7, sp, #0
    3b86:	6078      	str	r0, [r7, #4]
    3b88:	6039      	str	r1, [r7, #0]
    3b8a:	683b      	ldr	r3, [r7, #0]
    3b8c:	1c5a      	adds	r2, r3, #1
    3b8e:	603a      	str	r2, [r7, #0]
    3b90:	687a      	ldr	r2, [r7, #4]
    3b92:	0e12      	lsrs	r2, r2, #24
    3b94:	b2d2      	uxtb	r2, r2
    3b96:	701a      	strb	r2, [r3, #0]
    3b98:	683b      	ldr	r3, [r7, #0]
    3b9a:	1c5a      	adds	r2, r3, #1
    3b9c:	603a      	str	r2, [r7, #0]
    3b9e:	687a      	ldr	r2, [r7, #4]
    3ba0:	0c12      	lsrs	r2, r2, #16
    3ba2:	b2d2      	uxtb	r2, r2
    3ba4:	701a      	strb	r2, [r3, #0]
    3ba6:	683b      	ldr	r3, [r7, #0]
    3ba8:	1c5a      	adds	r2, r3, #1
    3baa:	603a      	str	r2, [r7, #0]
    3bac:	687a      	ldr	r2, [r7, #4]
    3bae:	0a12      	lsrs	r2, r2, #8
    3bb0:	b2d2      	uxtb	r2, r2
    3bb2:	701a      	strb	r2, [r3, #0]
    3bb4:	683b      	ldr	r3, [r7, #0]
    3bb6:	1c5a      	adds	r2, r3, #1
    3bb8:	603a      	str	r2, [r7, #0]
    3bba:	687a      	ldr	r2, [r7, #4]
    3bbc:	b2d2      	uxtb	r2, r2
    3bbe:	701a      	strb	r2, [r3, #0]
    3bc0:	46c0      	nop			; (mov r8, r8)
    3bc2:	46bd      	mov	sp, r7
    3bc4:	b002      	add	sp, #8
    3bc6:	bd80      	pop	{r7, pc}

00003bc8 <pdu_read_fifo_queue>:
    3bc8:	b580      	push	{r7, lr}
    3bca:	b090      	sub	sp, #64	; 0x40
    3bcc:	af00      	add	r7, sp, #0
    3bce:	6078      	str	r0, [r7, #4]
    3bd0:	2336      	movs	r3, #54	; 0x36
    3bd2:	18fb      	adds	r3, r7, r3
    3bd4:	2203      	movs	r2, #3
    3bd6:	801a      	strh	r2, [r3, #0]
    3bd8:	4b79      	ldr	r3, [pc, #484]	; (3dc0 <pdu_read_fifo_queue+0x1f8>)
    3bda:	681a      	ldr	r2, [r3, #0]
    3bdc:	687b      	ldr	r3, [r7, #4]
    3bde:	18d2      	adds	r2, r2, r3
    3be0:	2335      	movs	r3, #53	; 0x35
    3be2:	18fb      	adds	r3, r7, r3
    3be4:	7812      	ldrb	r2, [r2, #0]
    3be6:	701a      	strb	r2, [r3, #0]
    3be8:	4b75      	ldr	r3, [pc, #468]	; (3dc0 <pdu_read_fifo_queue+0x1f8>)
    3bea:	681a      	ldr	r2, [r3, #0]
    3bec:	687b      	ldr	r3, [r7, #4]
    3bee:	3301      	adds	r3, #1
    3bf0:	18d3      	adds	r3, r2, r3
    3bf2:	781b      	ldrb	r3, [r3, #0]
    3bf4:	021b      	lsls	r3, r3, #8
    3bf6:	b21a      	sxth	r2, r3
    3bf8:	4b71      	ldr	r3, [pc, #452]	; (3dc0 <pdu_read_fifo_queue+0x1f8>)
    3bfa:	6819      	ldr	r1, [r3, #0]
    3bfc:	687b      	ldr	r3, [r7, #4]
    3bfe:	3302      	adds	r3, #2
    3c00:	18cb      	adds	r3, r1, r3
    3c02:	781b      	ldrb	r3, [r3, #0]
    3c04:	b21b      	sxth	r3, r3
    3c06:	4313      	orrs	r3, r2
    3c08:	b21a      	sxth	r2, r3
    3c0a:	2332      	movs	r3, #50	; 0x32
    3c0c:	18fb      	adds	r3, r7, r3
    3c0e:	801a      	strh	r2, [r3, #0]
    3c10:	2332      	movs	r3, #50	; 0x32
    3c12:	18fb      	adds	r3, r7, r3
    3c14:	881a      	ldrh	r2, [r3, #0]
    3c16:	2380      	movs	r3, #128	; 0x80
    3c18:	009b      	lsls	r3, r3, #2
    3c1a:	429a      	cmp	r2, r3
    3c1c:	d014      	beq.n	3c48 <pdu_read_fifo_queue+0x80>
    3c1e:	687b      	ldr	r3, [r7, #4]
    3c20:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c22:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c24:	1c5a      	adds	r2, r3, #1
    3c26:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c28:	2235      	movs	r2, #53	; 0x35
    3c2a:	18ba      	adds	r2, r7, r2
    3c2c:	7812      	ldrb	r2, [r2, #0]
    3c2e:	2180      	movs	r1, #128	; 0x80
    3c30:	4249      	negs	r1, r1
    3c32:	430a      	orrs	r2, r1
    3c34:	b2d1      	uxtb	r1, r2
    3c36:	4a63      	ldr	r2, [pc, #396]	; (3dc4 <pdu_read_fifo_queue+0x1fc>)
    3c38:	54d1      	strb	r1, [r2, r3]
    3c3a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c3c:	1c5a      	adds	r2, r3, #1
    3c3e:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c40:	4a60      	ldr	r2, [pc, #384]	; (3dc4 <pdu_read_fifo_queue+0x1fc>)
    3c42:	2102      	movs	r1, #2
    3c44:	54d1      	strb	r1, [r2, r3]
    3c46:	e0b5      	b.n	3db4 <pdu_read_fifo_queue+0x1ec>
    3c48:	687b      	ldr	r3, [r7, #4]
    3c4a:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c4c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c4e:	1c5a      	adds	r2, r3, #1
    3c50:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c52:	4a5c      	ldr	r2, [pc, #368]	; (3dc4 <pdu_read_fifo_queue+0x1fc>)
    3c54:	2135      	movs	r1, #53	; 0x35
    3c56:	1879      	adds	r1, r7, r1
    3c58:	7809      	ldrb	r1, [r1, #0]
    3c5a:	54d1      	strb	r1, [r2, r3]
    3c5c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c5e:	1c5a      	adds	r2, r3, #1
    3c60:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c62:	4a58      	ldr	r2, [pc, #352]	; (3dc4 <pdu_read_fifo_queue+0x1fc>)
    3c64:	2100      	movs	r1, #0
    3c66:	54d1      	strb	r1, [r2, r3]
    3c68:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c6a:	1c5a      	adds	r2, r3, #1
    3c6c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c6e:	4a55      	ldr	r2, [pc, #340]	; (3dc4 <pdu_read_fifo_queue+0x1fc>)
    3c70:	2100      	movs	r1, #0
    3c72:	54d1      	strb	r1, [r2, r3]
    3c74:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c76:	1c5a      	adds	r2, r3, #1
    3c78:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c7a:	4a52      	ldr	r2, [pc, #328]	; (3dc4 <pdu_read_fifo_queue+0x1fc>)
    3c7c:	2100      	movs	r1, #0
    3c7e:	54d1      	strb	r1, [r2, r3]
    3c80:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c82:	1c5a      	adds	r2, r3, #1
    3c84:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c86:	4a4f      	ldr	r2, [pc, #316]	; (3dc4 <pdu_read_fifo_queue+0x1fc>)
    3c88:	2100      	movs	r1, #0
    3c8a:	54d1      	strb	r1, [r2, r3]
    3c8c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c8e:	62fb      	str	r3, [r7, #44]	; 0x2c
    3c90:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3c92:	4b4c      	ldr	r3, [pc, #304]	; (3dc4 <pdu_read_fifo_queue+0x1fc>)
    3c94:	18d3      	adds	r3, r2, r3
    3c96:	63bb      	str	r3, [r7, #56]	; 0x38
    3c98:	e068      	b.n	3d6c <pdu_read_fifo_queue+0x1a4>
    3c9a:	2300      	movs	r3, #0
    3c9c:	62bb      	str	r3, [r7, #40]	; 0x28
    3c9e:	2308      	movs	r3, #8
    3ca0:	18fb      	adds	r3, r7, r3
    3ca2:	2120      	movs	r1, #32
    3ca4:	0018      	movs	r0, r3
    3ca6:	f7ff fbd7 	bl	3458 <mdb_fifo_read>
    3caa:	0003      	movs	r3, r0
    3cac:	62bb      	str	r3, [r7, #40]	; 0x28
    3cae:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3cb0:	2b00      	cmp	r3, #0
    3cb2:	d063      	beq.n	3d7c <pdu_read_fifo_queue+0x1b4>
    3cb4:	2308      	movs	r3, #8
    3cb6:	18fb      	adds	r3, r7, r3
    3cb8:	681b      	ldr	r3, [r3, #0]
    3cba:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cbc:	0011      	movs	r1, r2
    3cbe:	0018      	movs	r0, r3
    3cc0:	f7ff ff5e 	bl	3b80 <u32tobe>
    3cc4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cc6:	3304      	adds	r3, #4
    3cc8:	63bb      	str	r3, [r7, #56]	; 0x38
    3cca:	2308      	movs	r3, #8
    3ccc:	18fb      	adds	r3, r7, r3
    3cce:	685b      	ldr	r3, [r3, #4]
    3cd0:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cd2:	0011      	movs	r1, r2
    3cd4:	0018      	movs	r0, r3
    3cd6:	f7ff ff53 	bl	3b80 <u32tobe>
    3cda:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cdc:	3304      	adds	r3, #4
    3cde:	63bb      	str	r3, [r7, #56]	; 0x38
    3ce0:	2308      	movs	r3, #8
    3ce2:	18fb      	adds	r3, r7, r3
    3ce4:	689b      	ldr	r3, [r3, #8]
    3ce6:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3ce8:	0011      	movs	r1, r2
    3cea:	0018      	movs	r0, r3
    3cec:	f7ff ff48 	bl	3b80 <u32tobe>
    3cf0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cf2:	3304      	adds	r3, #4
    3cf4:	63bb      	str	r3, [r7, #56]	; 0x38
    3cf6:	2308      	movs	r3, #8
    3cf8:	18fb      	adds	r3, r7, r3
    3cfa:	68db      	ldr	r3, [r3, #12]
    3cfc:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cfe:	0011      	movs	r1, r2
    3d00:	0018      	movs	r0, r3
    3d02:	f7ff ff3d 	bl	3b80 <u32tobe>
    3d06:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d08:	3304      	adds	r3, #4
    3d0a:	63bb      	str	r3, [r7, #56]	; 0x38
    3d0c:	2308      	movs	r3, #8
    3d0e:	18fb      	adds	r3, r7, r3
    3d10:	691b      	ldr	r3, [r3, #16]
    3d12:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d14:	0011      	movs	r1, r2
    3d16:	0018      	movs	r0, r3
    3d18:	f7ff ff32 	bl	3b80 <u32tobe>
    3d1c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d1e:	3304      	adds	r3, #4
    3d20:	63bb      	str	r3, [r7, #56]	; 0x38
    3d22:	2308      	movs	r3, #8
    3d24:	18fb      	adds	r3, r7, r3
    3d26:	695b      	ldr	r3, [r3, #20]
    3d28:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d2a:	0011      	movs	r1, r2
    3d2c:	0018      	movs	r0, r3
    3d2e:	f7ff ff27 	bl	3b80 <u32tobe>
    3d32:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d34:	3304      	adds	r3, #4
    3d36:	63bb      	str	r3, [r7, #56]	; 0x38
    3d38:	2308      	movs	r3, #8
    3d3a:	18fb      	adds	r3, r7, r3
    3d3c:	699b      	ldr	r3, [r3, #24]
    3d3e:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d40:	0011      	movs	r1, r2
    3d42:	0018      	movs	r0, r3
    3d44:	f7ff ff1c 	bl	3b80 <u32tobe>
    3d48:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d4a:	3304      	adds	r3, #4
    3d4c:	63bb      	str	r3, [r7, #56]	; 0x38
    3d4e:	2308      	movs	r3, #8
    3d50:	18fb      	adds	r3, r7, r3
    3d52:	69db      	ldr	r3, [r3, #28]
    3d54:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d56:	0011      	movs	r1, r2
    3d58:	0018      	movs	r0, r3
    3d5a:	f7ff ff11 	bl	3b80 <u32tobe>
    3d5e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d60:	3304      	adds	r3, #4
    3d62:	63bb      	str	r3, [r7, #56]	; 0x38
    3d64:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3d66:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3d68:	18d3      	adds	r3, r2, r3
    3d6a:	63fb      	str	r3, [r7, #60]	; 0x3c
    3d6c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3d6e:	3320      	adds	r3, #32
    3d70:	001a      	movs	r2, r3
    3d72:	23fc      	movs	r3, #252	; 0xfc
    3d74:	33ff      	adds	r3, #255	; 0xff
    3d76:	429a      	cmp	r2, r3
    3d78:	d98f      	bls.n	3c9a <pdu_read_fifo_queue+0xd2>
    3d7a:	e000      	b.n	3d7e <pdu_read_fifo_queue+0x1b6>
    3d7c:	46c0      	nop			; (mov r8, r8)
    3d7e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3d80:	b29a      	uxth	r2, r3
    3d82:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3d84:	b29b      	uxth	r3, r3
    3d86:	1ad3      	subs	r3, r2, r3
    3d88:	b29b      	uxth	r3, r3
    3d8a:	3302      	adds	r3, #2
    3d8c:	b298      	uxth	r0, r3
    3d8e:	687b      	ldr	r3, [r7, #4]
    3d90:	1c5a      	adds	r2, r3, #1
    3d92:	4b0c      	ldr	r3, [pc, #48]	; (3dc4 <pdu_read_fifo_queue+0x1fc>)
    3d94:	18d3      	adds	r3, r2, r3
    3d96:	0019      	movs	r1, r3
    3d98:	f7ff fed6 	bl	3b48 <u16tobe>
    3d9c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3d9e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3da0:	1ad3      	subs	r3, r2, r3
    3da2:	105b      	asrs	r3, r3, #1
    3da4:	b298      	uxth	r0, r3
    3da6:	687b      	ldr	r3, [r7, #4]
    3da8:	1cda      	adds	r2, r3, #3
    3daa:	4b06      	ldr	r3, [pc, #24]	; (3dc4 <pdu_read_fifo_queue+0x1fc>)
    3dac:	18d3      	adds	r3, r2, r3
    3dae:	0019      	movs	r1, r3
    3db0:	f7ff feca 	bl	3b48 <u16tobe>
    3db4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3db6:	0018      	movs	r0, r3
    3db8:	46bd      	mov	sp, r7
    3dba:	b010      	add	sp, #64	; 0x40
    3dbc:	bd80      	pop	{r7, pc}
    3dbe:	46c0      	nop			; (mov r8, r8)
    3dc0:	20005db8 	.word	0x20005db8
    3dc4:	20005dbc 	.word	0x20005dbc

00003dc8 <pdu_read_holding_registers>:
    3dc8:	b580      	push	{r7, lr}
    3dca:	b086      	sub	sp, #24
    3dcc:	af00      	add	r7, sp, #0
    3dce:	6078      	str	r0, [r7, #4]
    3dd0:	4b49      	ldr	r3, [pc, #292]	; (3ef8 <pdu_read_holding_registers+0x130>)
    3dd2:	681a      	ldr	r2, [r3, #0]
    3dd4:	687b      	ldr	r3, [r7, #4]
    3dd6:	18d2      	adds	r2, r2, r3
    3dd8:	230f      	movs	r3, #15
    3dda:	18fb      	adds	r3, r7, r3
    3ddc:	7812      	ldrb	r2, [r2, #0]
    3dde:	701a      	strb	r2, [r3, #0]
    3de0:	4b45      	ldr	r3, [pc, #276]	; (3ef8 <pdu_read_holding_registers+0x130>)
    3de2:	681a      	ldr	r2, [r3, #0]
    3de4:	687b      	ldr	r3, [r7, #4]
    3de6:	3301      	adds	r3, #1
    3de8:	18d3      	adds	r3, r2, r3
    3dea:	781b      	ldrb	r3, [r3, #0]
    3dec:	021b      	lsls	r3, r3, #8
    3dee:	b21a      	sxth	r2, r3
    3df0:	4b41      	ldr	r3, [pc, #260]	; (3ef8 <pdu_read_holding_registers+0x130>)
    3df2:	6819      	ldr	r1, [r3, #0]
    3df4:	687b      	ldr	r3, [r7, #4]
    3df6:	3302      	adds	r3, #2
    3df8:	18cb      	adds	r3, r1, r3
    3dfa:	781b      	ldrb	r3, [r3, #0]
    3dfc:	b21b      	sxth	r3, r3
    3dfe:	4313      	orrs	r3, r2
    3e00:	b21a      	sxth	r2, r3
    3e02:	230c      	movs	r3, #12
    3e04:	18fb      	adds	r3, r7, r3
    3e06:	801a      	strh	r2, [r3, #0]
    3e08:	4b3b      	ldr	r3, [pc, #236]	; (3ef8 <pdu_read_holding_registers+0x130>)
    3e0a:	681a      	ldr	r2, [r3, #0]
    3e0c:	687b      	ldr	r3, [r7, #4]
    3e0e:	3303      	adds	r3, #3
    3e10:	18d3      	adds	r3, r2, r3
    3e12:	781b      	ldrb	r3, [r3, #0]
    3e14:	021b      	lsls	r3, r3, #8
    3e16:	b21a      	sxth	r2, r3
    3e18:	4b37      	ldr	r3, [pc, #220]	; (3ef8 <pdu_read_holding_registers+0x130>)
    3e1a:	6819      	ldr	r1, [r3, #0]
    3e1c:	687b      	ldr	r3, [r7, #4]
    3e1e:	3304      	adds	r3, #4
    3e20:	18cb      	adds	r3, r1, r3
    3e22:	781b      	ldrb	r3, [r3, #0]
    3e24:	b21b      	sxth	r3, r3
    3e26:	4313      	orrs	r3, r2
    3e28:	b21a      	sxth	r2, r3
    3e2a:	230a      	movs	r3, #10
    3e2c:	18fb      	adds	r3, r7, r3
    3e2e:	801a      	strh	r2, [r3, #0]
    3e30:	230c      	movs	r3, #12
    3e32:	18fb      	adds	r3, r7, r3
    3e34:	881a      	ldrh	r2, [r3, #0]
    3e36:	230a      	movs	r3, #10
    3e38:	18fb      	adds	r3, r7, r3
    3e3a:	881b      	ldrh	r3, [r3, #0]
    3e3c:	18d3      	adds	r3, r2, r3
    3e3e:	2b18      	cmp	r3, #24
    3e40:	dd14      	ble.n	3e6c <pdu_read_holding_registers+0xa4>
    3e42:	687b      	ldr	r3, [r7, #4]
    3e44:	613b      	str	r3, [r7, #16]
    3e46:	693b      	ldr	r3, [r7, #16]
    3e48:	1c5a      	adds	r2, r3, #1
    3e4a:	613a      	str	r2, [r7, #16]
    3e4c:	220f      	movs	r2, #15
    3e4e:	18ba      	adds	r2, r7, r2
    3e50:	7812      	ldrb	r2, [r2, #0]
    3e52:	2180      	movs	r1, #128	; 0x80
    3e54:	4249      	negs	r1, r1
    3e56:	430a      	orrs	r2, r1
    3e58:	b2d1      	uxtb	r1, r2
    3e5a:	4a28      	ldr	r2, [pc, #160]	; (3efc <pdu_read_holding_registers+0x134>)
    3e5c:	54d1      	strb	r1, [r2, r3]
    3e5e:	693b      	ldr	r3, [r7, #16]
    3e60:	1c5a      	adds	r2, r3, #1
    3e62:	613a      	str	r2, [r7, #16]
    3e64:	4a25      	ldr	r2, [pc, #148]	; (3efc <pdu_read_holding_registers+0x134>)
    3e66:	2102      	movs	r1, #2
    3e68:	54d1      	strb	r1, [r2, r3]
    3e6a:	e03f      	b.n	3eec <pdu_read_holding_registers+0x124>
    3e6c:	687b      	ldr	r3, [r7, #4]
    3e6e:	613b      	str	r3, [r7, #16]
    3e70:	693b      	ldr	r3, [r7, #16]
    3e72:	1c5a      	adds	r2, r3, #1
    3e74:	613a      	str	r2, [r7, #16]
    3e76:	4a21      	ldr	r2, [pc, #132]	; (3efc <pdu_read_holding_registers+0x134>)
    3e78:	210f      	movs	r1, #15
    3e7a:	1879      	adds	r1, r7, r1
    3e7c:	7809      	ldrb	r1, [r1, #0]
    3e7e:	54d1      	strb	r1, [r2, r3]
    3e80:	693b      	ldr	r3, [r7, #16]
    3e82:	1c5a      	adds	r2, r3, #1
    3e84:	613a      	str	r2, [r7, #16]
    3e86:	220a      	movs	r2, #10
    3e88:	18ba      	adds	r2, r7, r2
    3e8a:	8812      	ldrh	r2, [r2, #0]
    3e8c:	b2d2      	uxtb	r2, r2
    3e8e:	1892      	adds	r2, r2, r2
    3e90:	b2d1      	uxtb	r1, r2
    3e92:	4a1a      	ldr	r2, [pc, #104]	; (3efc <pdu_read_holding_registers+0x134>)
    3e94:	54d1      	strb	r1, [r2, r3]
    3e96:	2300      	movs	r3, #0
    3e98:	617b      	str	r3, [r7, #20]
    3e9a:	e021      	b.n	3ee0 <pdu_read_holding_registers+0x118>
    3e9c:	230c      	movs	r3, #12
    3e9e:	18fb      	adds	r3, r7, r3
    3ea0:	881a      	ldrh	r2, [r3, #0]
    3ea2:	697b      	ldr	r3, [r7, #20]
    3ea4:	18d1      	adds	r1, r2, r3
    3ea6:	2308      	movs	r3, #8
    3ea8:	18fb      	adds	r3, r7, r3
    3eaa:	4a15      	ldr	r2, [pc, #84]	; (3f00 <pdu_read_holding_registers+0x138>)
    3eac:	0049      	lsls	r1, r1, #1
    3eae:	5a8a      	ldrh	r2, [r1, r2]
    3eb0:	801a      	strh	r2, [r3, #0]
    3eb2:	693b      	ldr	r3, [r7, #16]
    3eb4:	1c5a      	adds	r2, r3, #1
    3eb6:	613a      	str	r2, [r7, #16]
    3eb8:	2208      	movs	r2, #8
    3eba:	18ba      	adds	r2, r7, r2
    3ebc:	8812      	ldrh	r2, [r2, #0]
    3ebe:	0a12      	lsrs	r2, r2, #8
    3ec0:	b292      	uxth	r2, r2
    3ec2:	b2d1      	uxtb	r1, r2
    3ec4:	4a0d      	ldr	r2, [pc, #52]	; (3efc <pdu_read_holding_registers+0x134>)
    3ec6:	54d1      	strb	r1, [r2, r3]
    3ec8:	693b      	ldr	r3, [r7, #16]
    3eca:	1c5a      	adds	r2, r3, #1
    3ecc:	613a      	str	r2, [r7, #16]
    3ece:	2208      	movs	r2, #8
    3ed0:	18ba      	adds	r2, r7, r2
    3ed2:	8812      	ldrh	r2, [r2, #0]
    3ed4:	b2d1      	uxtb	r1, r2
    3ed6:	4a09      	ldr	r2, [pc, #36]	; (3efc <pdu_read_holding_registers+0x134>)
    3ed8:	54d1      	strb	r1, [r2, r3]
    3eda:	697b      	ldr	r3, [r7, #20]
    3edc:	3301      	adds	r3, #1
    3ede:	617b      	str	r3, [r7, #20]
    3ee0:	230a      	movs	r3, #10
    3ee2:	18fb      	adds	r3, r7, r3
    3ee4:	881a      	ldrh	r2, [r3, #0]
    3ee6:	697b      	ldr	r3, [r7, #20]
    3ee8:	429a      	cmp	r2, r3
    3eea:	dcd7      	bgt.n	3e9c <pdu_read_holding_registers+0xd4>
    3eec:	693b      	ldr	r3, [r7, #16]
    3eee:	0018      	movs	r0, r3
    3ef0:	46bd      	mov	sp, r7
    3ef2:	b006      	add	sp, #24
    3ef4:	bd80      	pop	{r7, pc}
    3ef6:	46c0      	nop			; (mov r8, r8)
    3ef8:	20005db8 	.word	0x20005db8
    3efc:	20005dbc 	.word	0x20005dbc
    3f00:	20005d7c 	.word	0x20005d7c

00003f04 <pdu_illegal_function_error>:
    3f04:	b580      	push	{r7, lr}
    3f06:	b084      	sub	sp, #16
    3f08:	af00      	add	r7, sp, #0
    3f0a:	6078      	str	r0, [r7, #4]
    3f0c:	4b10      	ldr	r3, [pc, #64]	; (3f50 <pdu_illegal_function_error+0x4c>)
    3f0e:	681a      	ldr	r2, [r3, #0]
    3f10:	687b      	ldr	r3, [r7, #4]
    3f12:	18d2      	adds	r2, r2, r3
    3f14:	230f      	movs	r3, #15
    3f16:	18fb      	adds	r3, r7, r3
    3f18:	7812      	ldrb	r2, [r2, #0]
    3f1a:	701a      	strb	r2, [r3, #0]
    3f1c:	687b      	ldr	r3, [r7, #4]
    3f1e:	60bb      	str	r3, [r7, #8]
    3f20:	68bb      	ldr	r3, [r7, #8]
    3f22:	1c5a      	adds	r2, r3, #1
    3f24:	60ba      	str	r2, [r7, #8]
    3f26:	220f      	movs	r2, #15
    3f28:	18ba      	adds	r2, r7, r2
    3f2a:	7812      	ldrb	r2, [r2, #0]
    3f2c:	2180      	movs	r1, #128	; 0x80
    3f2e:	4249      	negs	r1, r1
    3f30:	430a      	orrs	r2, r1
    3f32:	b2d1      	uxtb	r1, r2
    3f34:	4a07      	ldr	r2, [pc, #28]	; (3f54 <pdu_illegal_function_error+0x50>)
    3f36:	54d1      	strb	r1, [r2, r3]
    3f38:	68bb      	ldr	r3, [r7, #8]
    3f3a:	1c5a      	adds	r2, r3, #1
    3f3c:	60ba      	str	r2, [r7, #8]
    3f3e:	4a05      	ldr	r2, [pc, #20]	; (3f54 <pdu_illegal_function_error+0x50>)
    3f40:	2101      	movs	r1, #1
    3f42:	54d1      	strb	r1, [r2, r3]
    3f44:	68bb      	ldr	r3, [r7, #8]
    3f46:	0018      	movs	r0, r3
    3f48:	46bd      	mov	sp, r7
    3f4a:	b004      	add	sp, #16
    3f4c:	bd80      	pop	{r7, pc}
    3f4e:	46c0      	nop			; (mov r8, r8)
    3f50:	20005db8 	.word	0x20005db8
    3f54:	20005dbc 	.word	0x20005dbc

00003f58 <mdb_proc_adu>:
    3f58:	b580      	push	{r7, lr}
    3f5a:	b086      	sub	sp, #24
    3f5c:	af00      	add	r7, sp, #0
    3f5e:	6078      	str	r0, [r7, #4]
    3f60:	4b39      	ldr	r3, [pc, #228]	; (4048 <mdb_proc_adu+0xf0>)
    3f62:	687a      	ldr	r2, [r7, #4]
    3f64:	601a      	str	r2, [r3, #0]
    3f66:	4b38      	ldr	r3, [pc, #224]	; (4048 <mdb_proc_adu+0xf0>)
    3f68:	681b      	ldr	r3, [r3, #0]
    3f6a:	781b      	ldrb	r3, [r3, #0]
    3f6c:	021b      	lsls	r3, r3, #8
    3f6e:	b21a      	sxth	r2, r3
    3f70:	4b35      	ldr	r3, [pc, #212]	; (4048 <mdb_proc_adu+0xf0>)
    3f72:	681b      	ldr	r3, [r3, #0]
    3f74:	3301      	adds	r3, #1
    3f76:	781b      	ldrb	r3, [r3, #0]
    3f78:	b21b      	sxth	r3, r3
    3f7a:	4313      	orrs	r3, r2
    3f7c:	b21a      	sxth	r2, r3
    3f7e:	2312      	movs	r3, #18
    3f80:	18fb      	adds	r3, r7, r3
    3f82:	801a      	strh	r2, [r3, #0]
    3f84:	4b30      	ldr	r3, [pc, #192]	; (4048 <mdb_proc_adu+0xf0>)
    3f86:	681b      	ldr	r3, [r3, #0]
    3f88:	3302      	adds	r3, #2
    3f8a:	781b      	ldrb	r3, [r3, #0]
    3f8c:	021b      	lsls	r3, r3, #8
    3f8e:	b21a      	sxth	r2, r3
    3f90:	4b2d      	ldr	r3, [pc, #180]	; (4048 <mdb_proc_adu+0xf0>)
    3f92:	681b      	ldr	r3, [r3, #0]
    3f94:	3303      	adds	r3, #3
    3f96:	781b      	ldrb	r3, [r3, #0]
    3f98:	b21b      	sxth	r3, r3
    3f9a:	4313      	orrs	r3, r2
    3f9c:	b21a      	sxth	r2, r3
    3f9e:	2310      	movs	r3, #16
    3fa0:	18fb      	adds	r3, r7, r3
    3fa2:	801a      	strh	r2, [r3, #0]
    3fa4:	4b28      	ldr	r3, [pc, #160]	; (4048 <mdb_proc_adu+0xf0>)
    3fa6:	681b      	ldr	r3, [r3, #0]
    3fa8:	3304      	adds	r3, #4
    3faa:	781b      	ldrb	r3, [r3, #0]
    3fac:	021b      	lsls	r3, r3, #8
    3fae:	b21a      	sxth	r2, r3
    3fb0:	4b25      	ldr	r3, [pc, #148]	; (4048 <mdb_proc_adu+0xf0>)
    3fb2:	681b      	ldr	r3, [r3, #0]
    3fb4:	3305      	adds	r3, #5
    3fb6:	781b      	ldrb	r3, [r3, #0]
    3fb8:	b21b      	sxth	r3, r3
    3fba:	4313      	orrs	r3, r2
    3fbc:	b21a      	sxth	r2, r3
    3fbe:	230e      	movs	r3, #14
    3fc0:	18fb      	adds	r3, r7, r3
    3fc2:	801a      	strh	r2, [r3, #0]
    3fc4:	4b20      	ldr	r3, [pc, #128]	; (4048 <mdb_proc_adu+0xf0>)
    3fc6:	681a      	ldr	r2, [r3, #0]
    3fc8:	230d      	movs	r3, #13
    3fca:	18fb      	adds	r3, r7, r3
    3fcc:	7992      	ldrb	r2, [r2, #6]
    3fce:	701a      	strb	r2, [r3, #0]
    3fd0:	4b1d      	ldr	r3, [pc, #116]	; (4048 <mdb_proc_adu+0xf0>)
    3fd2:	681a      	ldr	r2, [r3, #0]
    3fd4:	230c      	movs	r3, #12
    3fd6:	18fb      	adds	r3, r7, r3
    3fd8:	79d2      	ldrb	r2, [r2, #7]
    3fda:	701a      	strb	r2, [r3, #0]
    3fdc:	230d      	movs	r3, #13
    3fde:	18fb      	adds	r3, r7, r3
    3fe0:	781b      	ldrb	r3, [r3, #0]
    3fe2:	2b11      	cmp	r3, #17
    3fe4:	d12b      	bne.n	403e <mdb_proc_adu+0xe6>
    3fe6:	230c      	movs	r3, #12
    3fe8:	18fb      	adds	r3, r7, r3
    3fea:	781a      	ldrb	r2, [r3, #0]
    3fec:	4b17      	ldr	r3, [pc, #92]	; (404c <mdb_proc_adu+0xf4>)
    3fee:	0092      	lsls	r2, r2, #2
    3ff0:	58d3      	ldr	r3, [r2, r3]
    3ff2:	2007      	movs	r0, #7
    3ff4:	4798      	blx	r3
    3ff6:	0003      	movs	r3, r0
    3ff8:	60bb      	str	r3, [r7, #8]
    3ffa:	2300      	movs	r3, #0
    3ffc:	617b      	str	r3, [r7, #20]
    3ffe:	e00c      	b.n	401a <mdb_proc_adu+0xc2>
    4000:	4b11      	ldr	r3, [pc, #68]	; (4048 <mdb_proc_adu+0xf0>)
    4002:	681a      	ldr	r2, [r3, #0]
    4004:	697b      	ldr	r3, [r7, #20]
    4006:	18d3      	adds	r3, r2, r3
    4008:	7819      	ldrb	r1, [r3, #0]
    400a:	4a11      	ldr	r2, [pc, #68]	; (4050 <mdb_proc_adu+0xf8>)
    400c:	697b      	ldr	r3, [r7, #20]
    400e:	18d3      	adds	r3, r2, r3
    4010:	1c0a      	adds	r2, r1, #0
    4012:	701a      	strb	r2, [r3, #0]
    4014:	697b      	ldr	r3, [r7, #20]
    4016:	3301      	adds	r3, #1
    4018:	617b      	str	r3, [r7, #20]
    401a:	697b      	ldr	r3, [r7, #20]
    401c:	2b06      	cmp	r3, #6
    401e:	ddef      	ble.n	4000 <mdb_proc_adu+0xa8>
    4020:	4b0b      	ldr	r3, [pc, #44]	; (4050 <mdb_proc_adu+0xf8>)
    4022:	2200      	movs	r2, #0
    4024:	711a      	strb	r2, [r3, #4]
    4026:	68bb      	ldr	r3, [r7, #8]
    4028:	b2db      	uxtb	r3, r3
    402a:	3b06      	subs	r3, #6
    402c:	b2da      	uxtb	r2, r3
    402e:	4b08      	ldr	r3, [pc, #32]	; (4050 <mdb_proc_adu+0xf8>)
    4030:	715a      	strb	r2, [r3, #5]
    4032:	68ba      	ldr	r2, [r7, #8]
    4034:	4b06      	ldr	r3, [pc, #24]	; (4050 <mdb_proc_adu+0xf8>)
    4036:	0011      	movs	r1, r2
    4038:	0018      	movs	r0, r3
    403a:	f7fe fdd3 	bl	2be4 <Send_UDP>
    403e:	46c0      	nop			; (mov r8, r8)
    4040:	46bd      	mov	sp, r7
    4042:	b006      	add	sp, #24
    4044:	bd80      	pop	{r7, pc}
    4046:	46c0      	nop			; (mov r8, r8)
    4048:	20005db8 	.word	0x20005db8
    404c:	00008f3c 	.word	0x00008f3c
    4050:	20005dbc 	.word	0x20005dbc

00004054 <fsm_get_mode>:
    4054:	b580      	push	{r7, lr}
    4056:	af00      	add	r7, sp, #0
    4058:	4b02      	ldr	r3, [pc, #8]	; (4064 <fsm_get_mode+0x10>)
    405a:	781b      	ldrb	r3, [r3, #0]
    405c:	0018      	movs	r0, r3
    405e:	46bd      	mov	sp, r7
    4060:	bd80      	pop	{r7, pc}
    4062:	46c0      	nop			; (mov r8, r8)
    4064:	20006038 	.word	0x20006038

00004068 <fsm_get_cyccnt>:
    4068:	b580      	push	{r7, lr}
    406a:	af00      	add	r7, sp, #0
    406c:	4b02      	ldr	r3, [pc, #8]	; (4078 <fsm_get_cyccnt+0x10>)
    406e:	681b      	ldr	r3, [r3, #0]
    4070:	0018      	movs	r0, r3
    4072:	46bd      	mov	sp, r7
    4074:	bd80      	pop	{r7, pc}
    4076:	46c0      	nop			; (mov r8, r8)
    4078:	20006008 	.word	0x20006008

0000407c <fsm_idle>:
    407c:	b580      	push	{r7, lr}
    407e:	b084      	sub	sp, #16
    4080:	af00      	add	r7, sp, #0
    4082:	6078      	str	r0, [r7, #4]
    4084:	230b      	movs	r3, #11
    4086:	18fb      	adds	r3, r7, r3
    4088:	687a      	ldr	r2, [r7, #4]
    408a:	701a      	strb	r2, [r3, #0]
    408c:	230b      	movs	r3, #11
    408e:	18fb      	adds	r3, r7, r3
    4090:	781b      	ldrb	r3, [r3, #0]
    4092:	2b01      	cmp	r3, #1
    4094:	d000      	beq.n	4098 <fsm_idle+0x1c>
    4096:	e095      	b.n	41c4 <fsm_idle+0x148>
    4098:	4b4c      	ldr	r3, [pc, #304]	; (41cc <fsm_idle+0x150>)
    409a:	0018      	movs	r0, r3
    409c:	f7ff fa6e 	bl	357c <mdb_get_testparam>
    40a0:	4b4a      	ldr	r3, [pc, #296]	; (41cc <fsm_idle+0x150>)
    40a2:	681a      	ldr	r2, [r3, #0]
    40a4:	4b4a      	ldr	r3, [pc, #296]	; (41d0 <fsm_idle+0x154>)
    40a6:	601a      	str	r2, [r3, #0]
    40a8:	4b49      	ldr	r3, [pc, #292]	; (41d0 <fsm_idle+0x154>)
    40aa:	681b      	ldr	r3, [r3, #0]
    40ac:	2b00      	cmp	r3, #0
    40ae:	d100      	bne.n	40b2 <fsm_idle+0x36>
    40b0:	e088      	b.n	41c4 <fsm_idle+0x148>
    40b2:	4b48      	ldr	r3, [pc, #288]	; (41d4 <fsm_idle+0x158>)
    40b4:	4a48      	ldr	r2, [pc, #288]	; (41d8 <fsm_idle+0x15c>)
    40b6:	601a      	str	r2, [r3, #0]
    40b8:	4b48      	ldr	r3, [pc, #288]	; (41dc <fsm_idle+0x160>)
    40ba:	2201      	movs	r2, #1
    40bc:	701a      	strb	r2, [r3, #0]
    40be:	4b48      	ldr	r3, [pc, #288]	; (41e0 <fsm_idle+0x164>)
    40c0:	2200      	movs	r2, #0
    40c2:	601a      	str	r2, [r3, #0]
    40c4:	2300      	movs	r3, #0
    40c6:	60fb      	str	r3, [r7, #12]
    40c8:	e032      	b.n	4130 <fsm_idle+0xb4>
    40ca:	4b40      	ldr	r3, [pc, #256]	; (41cc <fsm_idle+0x150>)
    40cc:	689b      	ldr	r3, [r3, #8]
    40ce:	4a3f      	ldr	r2, [pc, #252]	; (41cc <fsm_idle+0x150>)
    40d0:	68f9      	ldr	r1, [r7, #12]
    40d2:	3108      	adds	r1, #8
    40d4:	0049      	lsls	r1, r1, #1
    40d6:	5a8a      	ldrh	r2, [r1, r2]
    40d8:	435a      	muls	r2, r3
    40da:	0013      	movs	r3, r2
    40dc:	009b      	lsls	r3, r3, #2
    40de:	189b      	adds	r3, r3, r2
    40e0:	00db      	lsls	r3, r3, #3
    40e2:	189b      	adds	r3, r3, r2
    40e4:	2280      	movs	r2, #128	; 0x80
    40e6:	0112      	lsls	r2, r2, #4
    40e8:	4694      	mov	ip, r2
    40ea:	4463      	add	r3, ip
    40ec:	0b1b      	lsrs	r3, r3, #12
    40ee:	0019      	movs	r1, r3
    40f0:	4b3c      	ldr	r3, [pc, #240]	; (41e4 <fsm_idle+0x168>)
    40f2:	68fa      	ldr	r2, [r7, #12]
    40f4:	0092      	lsls	r2, r2, #2
    40f6:	50d1      	str	r1, [r2, r3]
    40f8:	4b34      	ldr	r3, [pc, #208]	; (41cc <fsm_idle+0x150>)
    40fa:	68db      	ldr	r3, [r3, #12]
    40fc:	4933      	ldr	r1, [pc, #204]	; (41cc <fsm_idle+0x150>)
    40fe:	68fa      	ldr	r2, [r7, #12]
    4100:	320c      	adds	r2, #12
    4102:	0052      	lsls	r2, r2, #1
    4104:	188a      	adds	r2, r1, r2
    4106:	3202      	adds	r2, #2
    4108:	8812      	ldrh	r2, [r2, #0]
    410a:	435a      	muls	r2, r3
    410c:	0013      	movs	r3, r2
    410e:	009b      	lsls	r3, r3, #2
    4110:	189b      	adds	r3, r3, r2
    4112:	00db      	lsls	r3, r3, #3
    4114:	189b      	adds	r3, r3, r2
    4116:	2280      	movs	r2, #128	; 0x80
    4118:	0112      	lsls	r2, r2, #4
    411a:	4694      	mov	ip, r2
    411c:	4463      	add	r3, ip
    411e:	0b1b      	lsrs	r3, r3, #12
    4120:	0019      	movs	r1, r3
    4122:	4b31      	ldr	r3, [pc, #196]	; (41e8 <fsm_idle+0x16c>)
    4124:	68fa      	ldr	r2, [r7, #12]
    4126:	0092      	lsls	r2, r2, #2
    4128:	50d1      	str	r1, [r2, r3]
    412a:	68fb      	ldr	r3, [r7, #12]
    412c:	3301      	adds	r3, #1
    412e:	60fb      	str	r3, [r7, #12]
    4130:	68fb      	ldr	r3, [r7, #12]
    4132:	2b04      	cmp	r3, #4
    4134:	ddc9      	ble.n	40ca <fsm_idle+0x4e>
    4136:	2300      	movs	r3, #0
    4138:	60fb      	str	r3, [r7, #12]
    413a:	e020      	b.n	417e <fsm_idle+0x102>
    413c:	68fb      	ldr	r3, [r7, #12]
    413e:	1c5a      	adds	r2, r3, #1
    4140:	4b29      	ldr	r3, [pc, #164]	; (41e8 <fsm_idle+0x16c>)
    4142:	0092      	lsls	r2, r2, #2
    4144:	58d2      	ldr	r2, [r2, r3]
    4146:	4b28      	ldr	r3, [pc, #160]	; (41e8 <fsm_idle+0x16c>)
    4148:	68f9      	ldr	r1, [r7, #12]
    414a:	0089      	lsls	r1, r1, #2
    414c:	58cb      	ldr	r3, [r1, r3]
    414e:	1ad3      	subs	r3, r2, r3
    4150:	0098      	lsls	r0, r3, #2
    4152:	68fb      	ldr	r3, [r7, #12]
    4154:	1c5a      	adds	r2, r3, #1
    4156:	4b23      	ldr	r3, [pc, #140]	; (41e4 <fsm_idle+0x168>)
    4158:	0092      	lsls	r2, r2, #2
    415a:	58d2      	ldr	r2, [r2, r3]
    415c:	4b21      	ldr	r3, [pc, #132]	; (41e4 <fsm_idle+0x168>)
    415e:	68f9      	ldr	r1, [r7, #12]
    4160:	0089      	lsls	r1, r1, #2
    4162:	58cb      	ldr	r3, [r1, r3]
    4164:	1ad3      	subs	r3, r2, r3
    4166:	0019      	movs	r1, r3
    4168:	f000 faf4 	bl	4754 <__aeabi_idiv>
    416c:	0003      	movs	r3, r0
    416e:	0019      	movs	r1, r3
    4170:	4b1e      	ldr	r3, [pc, #120]	; (41ec <fsm_idle+0x170>)
    4172:	68fa      	ldr	r2, [r7, #12]
    4174:	0092      	lsls	r2, r2, #2
    4176:	50d1      	str	r1, [r2, r3]
    4178:	68fb      	ldr	r3, [r7, #12]
    417a:	3301      	adds	r3, #1
    417c:	60fb      	str	r3, [r7, #12]
    417e:	68fb      	ldr	r3, [r7, #12]
    4180:	2b03      	cmp	r3, #3
    4182:	dddb      	ble.n	413c <fsm_idle+0xc0>
    4184:	4b17      	ldr	r3, [pc, #92]	; (41e4 <fsm_idle+0x168>)
    4186:	681a      	ldr	r2, [r3, #0]
    4188:	4b19      	ldr	r3, [pc, #100]	; (41f0 <fsm_idle+0x174>)
    418a:	601a      	str	r2, [r3, #0]
    418c:	4b15      	ldr	r3, [pc, #84]	; (41e4 <fsm_idle+0x168>)
    418e:	685a      	ldr	r2, [r3, #4]
    4190:	4b18      	ldr	r3, [pc, #96]	; (41f4 <fsm_idle+0x178>)
    4192:	601a      	str	r2, [r3, #0]
    4194:	4b14      	ldr	r3, [pc, #80]	; (41e8 <fsm_idle+0x16c>)
    4196:	681a      	ldr	r2, [r3, #0]
    4198:	4b17      	ldr	r3, [pc, #92]	; (41f8 <fsm_idle+0x17c>)
    419a:	601a      	str	r2, [r3, #0]
    419c:	4b12      	ldr	r3, [pc, #72]	; (41e8 <fsm_idle+0x16c>)
    419e:	685a      	ldr	r2, [r3, #4]
    41a0:	4b16      	ldr	r3, [pc, #88]	; (41fc <fsm_idle+0x180>)
    41a2:	601a      	str	r2, [r3, #0]
    41a4:	4b11      	ldr	r3, [pc, #68]	; (41ec <fsm_idle+0x170>)
    41a6:	681a      	ldr	r2, [r3, #0]
    41a8:	4b15      	ldr	r3, [pc, #84]	; (4200 <fsm_idle+0x184>)
    41aa:	601a      	str	r2, [r3, #0]
    41ac:	f7fb ffd0 	bl	150 <dut_reset_on>
    41b0:	4b06      	ldr	r3, [pc, #24]	; (41cc <fsm_idle+0x150>)
    41b2:	685b      	ldr	r3, [r3, #4]
    41b4:	0018      	movs	r0, r3
    41b6:	f7fb ffd7 	bl	168 <dut_set_speed>
    41ba:	4b0f      	ldr	r3, [pc, #60]	; (41f8 <fsm_idle+0x17c>)
    41bc:	681b      	ldr	r3, [r3, #0]
    41be:	0018      	movs	r0, r3
    41c0:	f7fb ffe2 	bl	188 <dut_set_torque>
    41c4:	46c0      	nop			; (mov r8, r8)
    41c6:	46bd      	mov	sp, r7
    41c8:	b004      	add	sp, #16
    41ca:	bd80      	pop	{r7, pc}
    41cc:	20006010 	.word	0x20006010
    41d0:	20006008 	.word	0x20006008
    41d4:	20000010 	.word	0x20000010
    41d8:	00004205 	.word	0x00004205
    41dc:	20006038 	.word	0x20006038
    41e0:	2000600c 	.word	0x2000600c
    41e4:	20005fcc 	.word	0x20005fcc
    41e8:	20005fe0 	.word	0x20005fe0
    41ec:	20005ff4 	.word	0x20005ff4
    41f0:	20005fbc 	.word	0x20005fbc
    41f4:	20005fc0 	.word	0x20005fc0
    41f8:	20005fc4 	.word	0x20005fc4
    41fc:	20005fc8 	.word	0x20005fc8
    4200:	20005fb8 	.word	0x20005fb8

00004204 <fsm_work>:
    4204:	b580      	push	{r7, lr}
    4206:	b088      	sub	sp, #32
    4208:	af00      	add	r7, sp, #0
    420a:	6078      	str	r0, [r7, #4]
    420c:	231f      	movs	r3, #31
    420e:	18fb      	adds	r3, r7, r3
    4210:	687a      	ldr	r2, [r7, #4]
    4212:	701a      	strb	r2, [r3, #0]
    4214:	687b      	ldr	r3, [r7, #4]
    4216:	0a1b      	lsrs	r3, r3, #8
    4218:	61bb      	str	r3, [r7, #24]
    421a:	231f      	movs	r3, #31
    421c:	18fb      	adds	r3, r7, r3
    421e:	781b      	ldrb	r3, [r3, #0]
    4220:	2b04      	cmp	r3, #4
    4222:	d000      	beq.n	4226 <fsm_work+0x22>
    4224:	e07d      	b.n	4322 <fsm_work+0x11e>
    4226:	69bb      	ldr	r3, [r7, #24]
    4228:	617b      	str	r3, [r7, #20]
    422a:	2300      	movs	r3, #0
    422c:	613b      	str	r3, [r7, #16]
    422e:	f7fb ff83 	bl	138 <dut_reset_off>
    4232:	4b50      	ldr	r3, [pc, #320]	; (4374 <fsm_work+0x170>)
    4234:	681b      	ldr	r3, [r3, #0]
    4236:	001a      	movs	r2, r3
    4238:	697b      	ldr	r3, [r7, #20]
    423a:	4293      	cmp	r3, r2
    423c:	d35e      	bcc.n	42fc <fsm_work+0xf8>
    423e:	4b4e      	ldr	r3, [pc, #312]	; (4378 <fsm_work+0x174>)
    4240:	681b      	ldr	r3, [r3, #0]
    4242:	1c5a      	adds	r2, r3, #1
    4244:	4b4c      	ldr	r3, [pc, #304]	; (4378 <fsm_work+0x174>)
    4246:	601a      	str	r2, [r3, #0]
    4248:	4b4b      	ldr	r3, [pc, #300]	; (4378 <fsm_work+0x174>)
    424a:	681b      	ldr	r3, [r3, #0]
    424c:	2b03      	cmp	r3, #3
    424e:	d825      	bhi.n	429c <fsm_work+0x98>
    4250:	4b49      	ldr	r3, [pc, #292]	; (4378 <fsm_work+0x174>)
    4252:	681a      	ldr	r2, [r3, #0]
    4254:	4b49      	ldr	r3, [pc, #292]	; (437c <fsm_work+0x178>)
    4256:	0092      	lsls	r2, r2, #2
    4258:	58d2      	ldr	r2, [r2, r3]
    425a:	4b49      	ldr	r3, [pc, #292]	; (4380 <fsm_work+0x17c>)
    425c:	601a      	str	r2, [r3, #0]
    425e:	4b46      	ldr	r3, [pc, #280]	; (4378 <fsm_work+0x174>)
    4260:	681b      	ldr	r3, [r3, #0]
    4262:	1c5a      	adds	r2, r3, #1
    4264:	4b45      	ldr	r3, [pc, #276]	; (437c <fsm_work+0x178>)
    4266:	0092      	lsls	r2, r2, #2
    4268:	58d2      	ldr	r2, [r2, r3]
    426a:	4b42      	ldr	r3, [pc, #264]	; (4374 <fsm_work+0x170>)
    426c:	601a      	str	r2, [r3, #0]
    426e:	4b42      	ldr	r3, [pc, #264]	; (4378 <fsm_work+0x174>)
    4270:	681a      	ldr	r2, [r3, #0]
    4272:	4b44      	ldr	r3, [pc, #272]	; (4384 <fsm_work+0x180>)
    4274:	0092      	lsls	r2, r2, #2
    4276:	58d2      	ldr	r2, [r2, r3]
    4278:	4b43      	ldr	r3, [pc, #268]	; (4388 <fsm_work+0x184>)
    427a:	601a      	str	r2, [r3, #0]
    427c:	4b3e      	ldr	r3, [pc, #248]	; (4378 <fsm_work+0x174>)
    427e:	681b      	ldr	r3, [r3, #0]
    4280:	1c5a      	adds	r2, r3, #1
    4282:	4b40      	ldr	r3, [pc, #256]	; (4384 <fsm_work+0x180>)
    4284:	0092      	lsls	r2, r2, #2
    4286:	58d2      	ldr	r2, [r2, r3]
    4288:	4b40      	ldr	r3, [pc, #256]	; (438c <fsm_work+0x188>)
    428a:	601a      	str	r2, [r3, #0]
    428c:	4b3a      	ldr	r3, [pc, #232]	; (4378 <fsm_work+0x174>)
    428e:	681a      	ldr	r2, [r3, #0]
    4290:	4b3f      	ldr	r3, [pc, #252]	; (4390 <fsm_work+0x18c>)
    4292:	0092      	lsls	r2, r2, #2
    4294:	58d2      	ldr	r2, [r2, r3]
    4296:	4b3f      	ldr	r3, [pc, #252]	; (4394 <fsm_work+0x190>)
    4298:	601a      	str	r2, [r3, #0]
    429a:	e02f      	b.n	42fc <fsm_work+0xf8>
    429c:	4b36      	ldr	r3, [pc, #216]	; (4378 <fsm_work+0x174>)
    429e:	2200      	movs	r2, #0
    42a0:	601a      	str	r2, [r3, #0]
    42a2:	4b3d      	ldr	r3, [pc, #244]	; (4398 <fsm_work+0x194>)
    42a4:	681b      	ldr	r3, [r3, #0]
    42a6:	1e5a      	subs	r2, r3, #1
    42a8:	4b3b      	ldr	r3, [pc, #236]	; (4398 <fsm_work+0x194>)
    42aa:	601a      	str	r2, [r3, #0]
    42ac:	f7fb ff50 	bl	150 <dut_reset_on>
    42b0:	4b39      	ldr	r3, [pc, #228]	; (4398 <fsm_work+0x194>)
    42b2:	681b      	ldr	r3, [r3, #0]
    42b4:	2b00      	cmp	r3, #0
    42b6:	d10c      	bne.n	42d2 <fsm_work+0xce>
    42b8:	4b38      	ldr	r3, [pc, #224]	; (439c <fsm_work+0x198>)
    42ba:	4a39      	ldr	r2, [pc, #228]	; (43a0 <fsm_work+0x19c>)
    42bc:	601a      	str	r2, [r3, #0]
    42be:	4b39      	ldr	r3, [pc, #228]	; (43a4 <fsm_work+0x1a0>)
    42c0:	2204      	movs	r2, #4
    42c2:	701a      	strb	r2, [r3, #0]
    42c4:	2000      	movs	r0, #0
    42c6:	f7fb ff4f 	bl	168 <dut_set_speed>
    42ca:	2000      	movs	r0, #0
    42cc:	f7fb ff5c 	bl	188 <dut_set_torque>
    42d0:	e04c      	b.n	436c <fsm_work+0x168>
    42d2:	4b2a      	ldr	r3, [pc, #168]	; (437c <fsm_work+0x178>)
    42d4:	681a      	ldr	r2, [r3, #0]
    42d6:	4b2a      	ldr	r3, [pc, #168]	; (4380 <fsm_work+0x17c>)
    42d8:	601a      	str	r2, [r3, #0]
    42da:	4b28      	ldr	r3, [pc, #160]	; (437c <fsm_work+0x178>)
    42dc:	685a      	ldr	r2, [r3, #4]
    42de:	4b25      	ldr	r3, [pc, #148]	; (4374 <fsm_work+0x170>)
    42e0:	601a      	str	r2, [r3, #0]
    42e2:	4b28      	ldr	r3, [pc, #160]	; (4384 <fsm_work+0x180>)
    42e4:	681a      	ldr	r2, [r3, #0]
    42e6:	4b28      	ldr	r3, [pc, #160]	; (4388 <fsm_work+0x184>)
    42e8:	601a      	str	r2, [r3, #0]
    42ea:	4b26      	ldr	r3, [pc, #152]	; (4384 <fsm_work+0x180>)
    42ec:	685a      	ldr	r2, [r3, #4]
    42ee:	4b27      	ldr	r3, [pc, #156]	; (438c <fsm_work+0x188>)
    42f0:	601a      	str	r2, [r3, #0]
    42f2:	4b27      	ldr	r3, [pc, #156]	; (4390 <fsm_work+0x18c>)
    42f4:	681a      	ldr	r2, [r3, #0]
    42f6:	4b27      	ldr	r3, [pc, #156]	; (4394 <fsm_work+0x190>)
    42f8:	601a      	str	r2, [r3, #0]
    42fa:	e037      	b.n	436c <fsm_work+0x168>
    42fc:	4b22      	ldr	r3, [pc, #136]	; (4388 <fsm_work+0x184>)
    42fe:	681b      	ldr	r3, [r3, #0]
    4300:	009b      	lsls	r3, r3, #2
    4302:	0019      	movs	r1, r3
    4304:	4b1e      	ldr	r3, [pc, #120]	; (4380 <fsm_work+0x17c>)
    4306:	681b      	ldr	r3, [r3, #0]
    4308:	001a      	movs	r2, r3
    430a:	697b      	ldr	r3, [r7, #20]
    430c:	1a9a      	subs	r2, r3, r2
    430e:	4b21      	ldr	r3, [pc, #132]	; (4394 <fsm_work+0x190>)
    4310:	681b      	ldr	r3, [r3, #0]
    4312:	4353      	muls	r3, r2
    4314:	18cb      	adds	r3, r1, r3
    4316:	60fb      	str	r3, [r7, #12]
    4318:	68fb      	ldr	r3, [r7, #12]
    431a:	109b      	asrs	r3, r3, #2
    431c:	0018      	movs	r0, r3
    431e:	f7fb ff33 	bl	188 <dut_set_torque>
    4322:	231f      	movs	r3, #31
    4324:	18fb      	adds	r3, r7, r3
    4326:	781b      	ldrb	r3, [r3, #0]
    4328:	2b03      	cmp	r3, #3
    432a:	d114      	bne.n	4356 <fsm_work+0x152>
    432c:	4b1b      	ldr	r3, [pc, #108]	; (439c <fsm_work+0x198>)
    432e:	4a1c      	ldr	r2, [pc, #112]	; (43a0 <fsm_work+0x19c>)
    4330:	601a      	str	r2, [r3, #0]
    4332:	4b1c      	ldr	r3, [pc, #112]	; (43a4 <fsm_work+0x1a0>)
    4334:	2204      	movs	r2, #4
    4336:	701a      	strb	r2, [r3, #0]
    4338:	2000      	movs	r0, #0
    433a:	f7fb ff15 	bl	168 <dut_set_speed>
    433e:	2000      	movs	r0, #0
    4340:	f7fb ff22 	bl	188 <dut_set_torque>
    4344:	f7fb ff04 	bl	150 <dut_reset_on>
    4348:	4b13      	ldr	r3, [pc, #76]	; (4398 <fsm_work+0x194>)
    434a:	2200      	movs	r2, #0
    434c:	601a      	str	r2, [r3, #0]
    434e:	4b0a      	ldr	r3, [pc, #40]	; (4378 <fsm_work+0x174>)
    4350:	2200      	movs	r2, #0
    4352:	601a      	str	r2, [r3, #0]
    4354:	e00a      	b.n	436c <fsm_work+0x168>
    4356:	231f      	movs	r3, #31
    4358:	18fb      	adds	r3, r7, r3
    435a:	781b      	ldrb	r3, [r3, #0]
    435c:	2b02      	cmp	r3, #2
    435e:	d105      	bne.n	436c <fsm_work+0x168>
    4360:	4b0e      	ldr	r3, [pc, #56]	; (439c <fsm_work+0x198>)
    4362:	4a11      	ldr	r2, [pc, #68]	; (43a8 <fsm_work+0x1a4>)
    4364:	601a      	str	r2, [r3, #0]
    4366:	4b0f      	ldr	r3, [pc, #60]	; (43a4 <fsm_work+0x1a0>)
    4368:	2202      	movs	r2, #2
    436a:	701a      	strb	r2, [r3, #0]
    436c:	46bd      	mov	sp, r7
    436e:	b008      	add	sp, #32
    4370:	bd80      	pop	{r7, pc}
    4372:	46c0      	nop			; (mov r8, r8)
    4374:	20005fc0 	.word	0x20005fc0
    4378:	2000600c 	.word	0x2000600c
    437c:	20005fcc 	.word	0x20005fcc
    4380:	20005fbc 	.word	0x20005fbc
    4384:	20005fe0 	.word	0x20005fe0
    4388:	20005fc4 	.word	0x20005fc4
    438c:	20005fc8 	.word	0x20005fc8
    4390:	20005ff4 	.word	0x20005ff4
    4394:	20005fb8 	.word	0x20005fb8
    4398:	20006008 	.word	0x20006008
    439c:	20000010 	.word	0x20000010
    43a0:	000043ad 	.word	0x000043ad
    43a4:	20006038 	.word	0x20006038
    43a8:	000043ed 	.word	0x000043ed

000043ac <fsm_clean>:
    43ac:	b580      	push	{r7, lr}
    43ae:	b084      	sub	sp, #16
    43b0:	af00      	add	r7, sp, #0
    43b2:	6078      	str	r0, [r7, #4]
    43b4:	230f      	movs	r3, #15
    43b6:	18fb      	adds	r3, r7, r3
    43b8:	687a      	ldr	r2, [r7, #4]
    43ba:	701a      	strb	r2, [r3, #0]
    43bc:	230f      	movs	r3, #15
    43be:	18fb      	adds	r3, r7, r3
    43c0:	781b      	ldrb	r3, [r3, #0]
    43c2:	2b04      	cmp	r3, #4
    43c4:	d107      	bne.n	43d6 <fsm_clean+0x2a>
    43c6:	4b06      	ldr	r3, [pc, #24]	; (43e0 <fsm_clean+0x34>)
    43c8:	4a06      	ldr	r2, [pc, #24]	; (43e4 <fsm_clean+0x38>)
    43ca:	601a      	str	r2, [r3, #0]
    43cc:	4b06      	ldr	r3, [pc, #24]	; (43e8 <fsm_clean+0x3c>)
    43ce:	2200      	movs	r2, #0
    43d0:	701a      	strb	r2, [r3, #0]
    43d2:	f7fb feb1 	bl	138 <dut_reset_off>
    43d6:	46c0      	nop			; (mov r8, r8)
    43d8:	46bd      	mov	sp, r7
    43da:	b004      	add	sp, #16
    43dc:	bd80      	pop	{r7, pc}
    43de:	46c0      	nop			; (mov r8, r8)
    43e0:	20000010 	.word	0x20000010
    43e4:	0000407d 	.word	0x0000407d
    43e8:	20006038 	.word	0x20006038

000043ec <fsm_complete>:
    43ec:	b580      	push	{r7, lr}
    43ee:	b088      	sub	sp, #32
    43f0:	af00      	add	r7, sp, #0
    43f2:	6078      	str	r0, [r7, #4]
    43f4:	231f      	movs	r3, #31
    43f6:	18fb      	adds	r3, r7, r3
    43f8:	687a      	ldr	r2, [r7, #4]
    43fa:	701a      	strb	r2, [r3, #0]
    43fc:	687b      	ldr	r3, [r7, #4]
    43fe:	0a1b      	lsrs	r3, r3, #8
    4400:	61bb      	str	r3, [r7, #24]
    4402:	231f      	movs	r3, #31
    4404:	18fb      	adds	r3, r7, r3
    4406:	781b      	ldrb	r3, [r3, #0]
    4408:	2b04      	cmp	r3, #4
    440a:	d175      	bne.n	44f8 <fsm_complete+0x10c>
    440c:	69bb      	ldr	r3, [r7, #24]
    440e:	617b      	str	r3, [r7, #20]
    4410:	2300      	movs	r3, #0
    4412:	613b      	str	r3, [r7, #16]
    4414:	f7fb fe90 	bl	138 <dut_reset_off>
    4418:	4b45      	ldr	r3, [pc, #276]	; (4530 <fsm_complete+0x144>)
    441a:	681b      	ldr	r3, [r3, #0]
    441c:	001a      	movs	r2, r3
    441e:	697b      	ldr	r3, [r7, #20]
    4420:	4293      	cmp	r3, r2
    4422:	d356      	bcc.n	44d2 <fsm_complete+0xe6>
    4424:	4b43      	ldr	r3, [pc, #268]	; (4534 <fsm_complete+0x148>)
    4426:	681b      	ldr	r3, [r3, #0]
    4428:	1c5a      	adds	r2, r3, #1
    442a:	4b42      	ldr	r3, [pc, #264]	; (4534 <fsm_complete+0x148>)
    442c:	601a      	str	r2, [r3, #0]
    442e:	4b41      	ldr	r3, [pc, #260]	; (4534 <fsm_complete+0x148>)
    4430:	681b      	ldr	r3, [r3, #0]
    4432:	2b03      	cmp	r3, #3
    4434:	d825      	bhi.n	4482 <fsm_complete+0x96>
    4436:	4b3f      	ldr	r3, [pc, #252]	; (4534 <fsm_complete+0x148>)
    4438:	681a      	ldr	r2, [r3, #0]
    443a:	4b3f      	ldr	r3, [pc, #252]	; (4538 <fsm_complete+0x14c>)
    443c:	0092      	lsls	r2, r2, #2
    443e:	58d2      	ldr	r2, [r2, r3]
    4440:	4b3e      	ldr	r3, [pc, #248]	; (453c <fsm_complete+0x150>)
    4442:	601a      	str	r2, [r3, #0]
    4444:	4b3b      	ldr	r3, [pc, #236]	; (4534 <fsm_complete+0x148>)
    4446:	681b      	ldr	r3, [r3, #0]
    4448:	1c5a      	adds	r2, r3, #1
    444a:	4b3b      	ldr	r3, [pc, #236]	; (4538 <fsm_complete+0x14c>)
    444c:	0092      	lsls	r2, r2, #2
    444e:	58d2      	ldr	r2, [r2, r3]
    4450:	4b37      	ldr	r3, [pc, #220]	; (4530 <fsm_complete+0x144>)
    4452:	601a      	str	r2, [r3, #0]
    4454:	4b37      	ldr	r3, [pc, #220]	; (4534 <fsm_complete+0x148>)
    4456:	681a      	ldr	r2, [r3, #0]
    4458:	4b39      	ldr	r3, [pc, #228]	; (4540 <fsm_complete+0x154>)
    445a:	0092      	lsls	r2, r2, #2
    445c:	58d2      	ldr	r2, [r2, r3]
    445e:	4b39      	ldr	r3, [pc, #228]	; (4544 <fsm_complete+0x158>)
    4460:	601a      	str	r2, [r3, #0]
    4462:	4b34      	ldr	r3, [pc, #208]	; (4534 <fsm_complete+0x148>)
    4464:	681b      	ldr	r3, [r3, #0]
    4466:	1c5a      	adds	r2, r3, #1
    4468:	4b35      	ldr	r3, [pc, #212]	; (4540 <fsm_complete+0x154>)
    446a:	0092      	lsls	r2, r2, #2
    446c:	58d2      	ldr	r2, [r2, r3]
    446e:	4b36      	ldr	r3, [pc, #216]	; (4548 <fsm_complete+0x15c>)
    4470:	601a      	str	r2, [r3, #0]
    4472:	4b30      	ldr	r3, [pc, #192]	; (4534 <fsm_complete+0x148>)
    4474:	681a      	ldr	r2, [r3, #0]
    4476:	4b35      	ldr	r3, [pc, #212]	; (454c <fsm_complete+0x160>)
    4478:	0092      	lsls	r2, r2, #2
    447a:	58d2      	ldr	r2, [r2, r3]
    447c:	4b34      	ldr	r3, [pc, #208]	; (4550 <fsm_complete+0x164>)
    447e:	601a      	str	r2, [r3, #0]
    4480:	e027      	b.n	44d2 <fsm_complete+0xe6>
    4482:	4b2c      	ldr	r3, [pc, #176]	; (4534 <fsm_complete+0x148>)
    4484:	2200      	movs	r2, #0
    4486:	601a      	str	r2, [r3, #0]
    4488:	4b32      	ldr	r3, [pc, #200]	; (4554 <fsm_complete+0x168>)
    448a:	681b      	ldr	r3, [r3, #0]
    448c:	1e5a      	subs	r2, r3, #1
    448e:	4b31      	ldr	r3, [pc, #196]	; (4554 <fsm_complete+0x168>)
    4490:	601a      	str	r2, [r3, #0]
    4492:	4b30      	ldr	r3, [pc, #192]	; (4554 <fsm_complete+0x168>)
    4494:	681b      	ldr	r3, [r3, #0]
    4496:	2b00      	cmp	r3, #0
    4498:	d10e      	bne.n	44b8 <fsm_complete+0xcc>
    449a:	4b2f      	ldr	r3, [pc, #188]	; (4558 <fsm_complete+0x16c>)
    449c:	4a2f      	ldr	r2, [pc, #188]	; (455c <fsm_complete+0x170>)
    449e:	601a      	str	r2, [r3, #0]
    44a0:	4b2f      	ldr	r3, [pc, #188]	; (4560 <fsm_complete+0x174>)
    44a2:	2204      	movs	r2, #4
    44a4:	701a      	strb	r2, [r3, #0]
    44a6:	2000      	movs	r0, #0
    44a8:	f7fb fe5e 	bl	168 <dut_set_speed>
    44ac:	2000      	movs	r0, #0
    44ae:	f7fb fe6b 	bl	188 <dut_set_torque>
    44b2:	f7fb fe4d 	bl	150 <dut_reset_on>
    44b6:	e038      	b.n	452a <fsm_complete+0x13e>
    44b8:	2000      	movs	r0, #0
    44ba:	f7fb fe55 	bl	168 <dut_set_speed>
    44be:	2000      	movs	r0, #0
    44c0:	f7fb fe62 	bl	188 <dut_set_torque>
    44c4:	4b24      	ldr	r3, [pc, #144]	; (4558 <fsm_complete+0x16c>)
    44c6:	4a27      	ldr	r2, [pc, #156]	; (4564 <fsm_complete+0x178>)
    44c8:	601a      	str	r2, [r3, #0]
    44ca:	4b25      	ldr	r3, [pc, #148]	; (4560 <fsm_complete+0x174>)
    44cc:	2203      	movs	r2, #3
    44ce:	701a      	strb	r2, [r3, #0]
    44d0:	e02b      	b.n	452a <fsm_complete+0x13e>
    44d2:	4b1c      	ldr	r3, [pc, #112]	; (4544 <fsm_complete+0x158>)
    44d4:	681b      	ldr	r3, [r3, #0]
    44d6:	009b      	lsls	r3, r3, #2
    44d8:	0019      	movs	r1, r3
    44da:	4b18      	ldr	r3, [pc, #96]	; (453c <fsm_complete+0x150>)
    44dc:	681b      	ldr	r3, [r3, #0]
    44de:	001a      	movs	r2, r3
    44e0:	697b      	ldr	r3, [r7, #20]
    44e2:	1a9a      	subs	r2, r3, r2
    44e4:	4b1a      	ldr	r3, [pc, #104]	; (4550 <fsm_complete+0x164>)
    44e6:	681b      	ldr	r3, [r3, #0]
    44e8:	4353      	muls	r3, r2
    44ea:	18cb      	adds	r3, r1, r3
    44ec:	60fb      	str	r3, [r7, #12]
    44ee:	68fb      	ldr	r3, [r7, #12]
    44f0:	109b      	asrs	r3, r3, #2
    44f2:	0018      	movs	r0, r3
    44f4:	f7fb fe48 	bl	188 <dut_set_torque>
    44f8:	231f      	movs	r3, #31
    44fa:	18fb      	adds	r3, r7, r3
    44fc:	781b      	ldrb	r3, [r3, #0]
    44fe:	2b03      	cmp	r3, #3
    4500:	d113      	bne.n	452a <fsm_complete+0x13e>
    4502:	4b15      	ldr	r3, [pc, #84]	; (4558 <fsm_complete+0x16c>)
    4504:	4a15      	ldr	r2, [pc, #84]	; (455c <fsm_complete+0x170>)
    4506:	601a      	str	r2, [r3, #0]
    4508:	4b15      	ldr	r3, [pc, #84]	; (4560 <fsm_complete+0x174>)
    450a:	2204      	movs	r2, #4
    450c:	701a      	strb	r2, [r3, #0]
    450e:	2000      	movs	r0, #0
    4510:	f7fb fe2a 	bl	168 <dut_set_speed>
    4514:	2000      	movs	r0, #0
    4516:	f7fb fe37 	bl	188 <dut_set_torque>
    451a:	f7fb fe19 	bl	150 <dut_reset_on>
    451e:	4b0d      	ldr	r3, [pc, #52]	; (4554 <fsm_complete+0x168>)
    4520:	2200      	movs	r2, #0
    4522:	601a      	str	r2, [r3, #0]
    4524:	4b03      	ldr	r3, [pc, #12]	; (4534 <fsm_complete+0x148>)
    4526:	2200      	movs	r2, #0
    4528:	601a      	str	r2, [r3, #0]
    452a:	46bd      	mov	sp, r7
    452c:	b008      	add	sp, #32
    452e:	bd80      	pop	{r7, pc}
    4530:	20005fc0 	.word	0x20005fc0
    4534:	2000600c 	.word	0x2000600c
    4538:	20005fcc 	.word	0x20005fcc
    453c:	20005fbc 	.word	0x20005fbc
    4540:	20005fe0 	.word	0x20005fe0
    4544:	20005fc4 	.word	0x20005fc4
    4548:	20005fc8 	.word	0x20005fc8
    454c:	20005ff4 	.word	0x20005ff4
    4550:	20005fb8 	.word	0x20005fb8
    4554:	20006008 	.word	0x20006008
    4558:	20000010 	.word	0x20000010
    455c:	000043ad 	.word	0x000043ad
    4560:	20006038 	.word	0x20006038
    4564:	00004569 	.word	0x00004569

00004568 <fsm_wait>:
    4568:	b580      	push	{r7, lr}
    456a:	b084      	sub	sp, #16
    456c:	af00      	add	r7, sp, #0
    456e:	6078      	str	r0, [r7, #4]
    4570:	230f      	movs	r3, #15
    4572:	18fb      	adds	r3, r7, r3
    4574:	687a      	ldr	r2, [r7, #4]
    4576:	701a      	strb	r2, [r3, #0]
    4578:	230f      	movs	r3, #15
    457a:	18fb      	adds	r3, r7, r3
    457c:	781b      	ldrb	r3, [r3, #0]
    457e:	2b01      	cmp	r3, #1
    4580:	d128      	bne.n	45d4 <fsm_wait+0x6c>
    4582:	4b20      	ldr	r3, [pc, #128]	; (4604 <fsm_wait+0x9c>)
    4584:	4a20      	ldr	r2, [pc, #128]	; (4608 <fsm_wait+0xa0>)
    4586:	601a      	str	r2, [r3, #0]
    4588:	4b20      	ldr	r3, [pc, #128]	; (460c <fsm_wait+0xa4>)
    458a:	2201      	movs	r2, #1
    458c:	701a      	strb	r2, [r3, #0]
    458e:	4b20      	ldr	r3, [pc, #128]	; (4610 <fsm_wait+0xa8>)
    4590:	2200      	movs	r2, #0
    4592:	601a      	str	r2, [r3, #0]
    4594:	4b1f      	ldr	r3, [pc, #124]	; (4614 <fsm_wait+0xac>)
    4596:	681a      	ldr	r2, [r3, #0]
    4598:	4b1f      	ldr	r3, [pc, #124]	; (4618 <fsm_wait+0xb0>)
    459a:	601a      	str	r2, [r3, #0]
    459c:	4b1d      	ldr	r3, [pc, #116]	; (4614 <fsm_wait+0xac>)
    459e:	685a      	ldr	r2, [r3, #4]
    45a0:	4b1e      	ldr	r3, [pc, #120]	; (461c <fsm_wait+0xb4>)
    45a2:	601a      	str	r2, [r3, #0]
    45a4:	4b1e      	ldr	r3, [pc, #120]	; (4620 <fsm_wait+0xb8>)
    45a6:	681a      	ldr	r2, [r3, #0]
    45a8:	4b1e      	ldr	r3, [pc, #120]	; (4624 <fsm_wait+0xbc>)
    45aa:	601a      	str	r2, [r3, #0]
    45ac:	4b1c      	ldr	r3, [pc, #112]	; (4620 <fsm_wait+0xb8>)
    45ae:	685a      	ldr	r2, [r3, #4]
    45b0:	4b1d      	ldr	r3, [pc, #116]	; (4628 <fsm_wait+0xc0>)
    45b2:	601a      	str	r2, [r3, #0]
    45b4:	4b1d      	ldr	r3, [pc, #116]	; (462c <fsm_wait+0xc4>)
    45b6:	681a      	ldr	r2, [r3, #0]
    45b8:	4b1d      	ldr	r3, [pc, #116]	; (4630 <fsm_wait+0xc8>)
    45ba:	601a      	str	r2, [r3, #0]
    45bc:	4b1d      	ldr	r3, [pc, #116]	; (4634 <fsm_wait+0xcc>)
    45be:	685b      	ldr	r3, [r3, #4]
    45c0:	0018      	movs	r0, r3
    45c2:	f7fb fdd1 	bl	168 <dut_set_speed>
    45c6:	4b17      	ldr	r3, [pc, #92]	; (4624 <fsm_wait+0xbc>)
    45c8:	681b      	ldr	r3, [r3, #0]
    45ca:	0018      	movs	r0, r3
    45cc:	f7fb fddc 	bl	188 <dut_set_torque>
    45d0:	f7fb fdbe 	bl	150 <dut_reset_on>
    45d4:	230f      	movs	r3, #15
    45d6:	18fb      	adds	r3, r7, r3
    45d8:	781b      	ldrb	r3, [r3, #0]
    45da:	2b03      	cmp	r3, #3
    45dc:	d10d      	bne.n	45fa <fsm_wait+0x92>
    45de:	4b09      	ldr	r3, [pc, #36]	; (4604 <fsm_wait+0x9c>)
    45e0:	4a15      	ldr	r2, [pc, #84]	; (4638 <fsm_wait+0xd0>)
    45e2:	601a      	str	r2, [r3, #0]
    45e4:	4b09      	ldr	r3, [pc, #36]	; (460c <fsm_wait+0xa4>)
    45e6:	2204      	movs	r2, #4
    45e8:	701a      	strb	r2, [r3, #0]
    45ea:	f7fb fdb1 	bl	150 <dut_reset_on>
    45ee:	4b13      	ldr	r3, [pc, #76]	; (463c <fsm_wait+0xd4>)
    45f0:	2200      	movs	r2, #0
    45f2:	601a      	str	r2, [r3, #0]
    45f4:	4b06      	ldr	r3, [pc, #24]	; (4610 <fsm_wait+0xa8>)
    45f6:	2200      	movs	r2, #0
    45f8:	601a      	str	r2, [r3, #0]
    45fa:	46c0      	nop			; (mov r8, r8)
    45fc:	46bd      	mov	sp, r7
    45fe:	b004      	add	sp, #16
    4600:	bd80      	pop	{r7, pc}
    4602:	46c0      	nop			; (mov r8, r8)
    4604:	20000010 	.word	0x20000010
    4608:	00004205 	.word	0x00004205
    460c:	20006038 	.word	0x20006038
    4610:	2000600c 	.word	0x2000600c
    4614:	20005fcc 	.word	0x20005fcc
    4618:	20005fbc 	.word	0x20005fbc
    461c:	20005fc0 	.word	0x20005fc0
    4620:	20005fe0 	.word	0x20005fe0
    4624:	20005fc4 	.word	0x20005fc4
    4628:	20005fc8 	.word	0x20005fc8
    462c:	20005ff4 	.word	0x20005ff4
    4630:	20005fb8 	.word	0x20005fb8
    4634:	20006010 	.word	0x20006010
    4638:	000043ad 	.word	0x000043ad
    463c:	20006008 	.word	0x20006008

00004640 <__aeabi_uidiv>:
    4640:	2200      	movs	r2, #0
    4642:	0843      	lsrs	r3, r0, #1
    4644:	428b      	cmp	r3, r1
    4646:	d374      	bcc.n	4732 <__aeabi_uidiv+0xf2>
    4648:	0903      	lsrs	r3, r0, #4
    464a:	428b      	cmp	r3, r1
    464c:	d35f      	bcc.n	470e <__aeabi_uidiv+0xce>
    464e:	0a03      	lsrs	r3, r0, #8
    4650:	428b      	cmp	r3, r1
    4652:	d344      	bcc.n	46de <__aeabi_uidiv+0x9e>
    4654:	0b03      	lsrs	r3, r0, #12
    4656:	428b      	cmp	r3, r1
    4658:	d328      	bcc.n	46ac <__aeabi_uidiv+0x6c>
    465a:	0c03      	lsrs	r3, r0, #16
    465c:	428b      	cmp	r3, r1
    465e:	d30d      	bcc.n	467c <__aeabi_uidiv+0x3c>
    4660:	22ff      	movs	r2, #255	; 0xff
    4662:	0209      	lsls	r1, r1, #8
    4664:	ba12      	rev	r2, r2
    4666:	0c03      	lsrs	r3, r0, #16
    4668:	428b      	cmp	r3, r1
    466a:	d302      	bcc.n	4672 <__aeabi_uidiv+0x32>
    466c:	1212      	asrs	r2, r2, #8
    466e:	0209      	lsls	r1, r1, #8
    4670:	d065      	beq.n	473e <__aeabi_uidiv+0xfe>
    4672:	0b03      	lsrs	r3, r0, #12
    4674:	428b      	cmp	r3, r1
    4676:	d319      	bcc.n	46ac <__aeabi_uidiv+0x6c>
    4678:	e000      	b.n	467c <__aeabi_uidiv+0x3c>
    467a:	0a09      	lsrs	r1, r1, #8
    467c:	0bc3      	lsrs	r3, r0, #15
    467e:	428b      	cmp	r3, r1
    4680:	d301      	bcc.n	4686 <__aeabi_uidiv+0x46>
    4682:	03cb      	lsls	r3, r1, #15
    4684:	1ac0      	subs	r0, r0, r3
    4686:	4152      	adcs	r2, r2
    4688:	0b83      	lsrs	r3, r0, #14
    468a:	428b      	cmp	r3, r1
    468c:	d301      	bcc.n	4692 <__aeabi_uidiv+0x52>
    468e:	038b      	lsls	r3, r1, #14
    4690:	1ac0      	subs	r0, r0, r3
    4692:	4152      	adcs	r2, r2
    4694:	0b43      	lsrs	r3, r0, #13
    4696:	428b      	cmp	r3, r1
    4698:	d301      	bcc.n	469e <__aeabi_uidiv+0x5e>
    469a:	034b      	lsls	r3, r1, #13
    469c:	1ac0      	subs	r0, r0, r3
    469e:	4152      	adcs	r2, r2
    46a0:	0b03      	lsrs	r3, r0, #12
    46a2:	428b      	cmp	r3, r1
    46a4:	d301      	bcc.n	46aa <__aeabi_uidiv+0x6a>
    46a6:	030b      	lsls	r3, r1, #12
    46a8:	1ac0      	subs	r0, r0, r3
    46aa:	4152      	adcs	r2, r2
    46ac:	0ac3      	lsrs	r3, r0, #11
    46ae:	428b      	cmp	r3, r1
    46b0:	d301      	bcc.n	46b6 <__aeabi_uidiv+0x76>
    46b2:	02cb      	lsls	r3, r1, #11
    46b4:	1ac0      	subs	r0, r0, r3
    46b6:	4152      	adcs	r2, r2
    46b8:	0a83      	lsrs	r3, r0, #10
    46ba:	428b      	cmp	r3, r1
    46bc:	d301      	bcc.n	46c2 <__aeabi_uidiv+0x82>
    46be:	028b      	lsls	r3, r1, #10
    46c0:	1ac0      	subs	r0, r0, r3
    46c2:	4152      	adcs	r2, r2
    46c4:	0a43      	lsrs	r3, r0, #9
    46c6:	428b      	cmp	r3, r1
    46c8:	d301      	bcc.n	46ce <__aeabi_uidiv+0x8e>
    46ca:	024b      	lsls	r3, r1, #9
    46cc:	1ac0      	subs	r0, r0, r3
    46ce:	4152      	adcs	r2, r2
    46d0:	0a03      	lsrs	r3, r0, #8
    46d2:	428b      	cmp	r3, r1
    46d4:	d301      	bcc.n	46da <__aeabi_uidiv+0x9a>
    46d6:	020b      	lsls	r3, r1, #8
    46d8:	1ac0      	subs	r0, r0, r3
    46da:	4152      	adcs	r2, r2
    46dc:	d2cd      	bcs.n	467a <__aeabi_uidiv+0x3a>
    46de:	09c3      	lsrs	r3, r0, #7
    46e0:	428b      	cmp	r3, r1
    46e2:	d301      	bcc.n	46e8 <__aeabi_uidiv+0xa8>
    46e4:	01cb      	lsls	r3, r1, #7
    46e6:	1ac0      	subs	r0, r0, r3
    46e8:	4152      	adcs	r2, r2
    46ea:	0983      	lsrs	r3, r0, #6
    46ec:	428b      	cmp	r3, r1
    46ee:	d301      	bcc.n	46f4 <__aeabi_uidiv+0xb4>
    46f0:	018b      	lsls	r3, r1, #6
    46f2:	1ac0      	subs	r0, r0, r3
    46f4:	4152      	adcs	r2, r2
    46f6:	0943      	lsrs	r3, r0, #5
    46f8:	428b      	cmp	r3, r1
    46fa:	d301      	bcc.n	4700 <__aeabi_uidiv+0xc0>
    46fc:	014b      	lsls	r3, r1, #5
    46fe:	1ac0      	subs	r0, r0, r3
    4700:	4152      	adcs	r2, r2
    4702:	0903      	lsrs	r3, r0, #4
    4704:	428b      	cmp	r3, r1
    4706:	d301      	bcc.n	470c <__aeabi_uidiv+0xcc>
    4708:	010b      	lsls	r3, r1, #4
    470a:	1ac0      	subs	r0, r0, r3
    470c:	4152      	adcs	r2, r2
    470e:	08c3      	lsrs	r3, r0, #3
    4710:	428b      	cmp	r3, r1
    4712:	d301      	bcc.n	4718 <__aeabi_uidiv+0xd8>
    4714:	00cb      	lsls	r3, r1, #3
    4716:	1ac0      	subs	r0, r0, r3
    4718:	4152      	adcs	r2, r2
    471a:	0883      	lsrs	r3, r0, #2
    471c:	428b      	cmp	r3, r1
    471e:	d301      	bcc.n	4724 <__aeabi_uidiv+0xe4>
    4720:	008b      	lsls	r3, r1, #2
    4722:	1ac0      	subs	r0, r0, r3
    4724:	4152      	adcs	r2, r2
    4726:	0843      	lsrs	r3, r0, #1
    4728:	428b      	cmp	r3, r1
    472a:	d301      	bcc.n	4730 <__aeabi_uidiv+0xf0>
    472c:	004b      	lsls	r3, r1, #1
    472e:	1ac0      	subs	r0, r0, r3
    4730:	4152      	adcs	r2, r2
    4732:	1a41      	subs	r1, r0, r1
    4734:	d200      	bcs.n	4738 <__aeabi_uidiv+0xf8>
    4736:	4601      	mov	r1, r0
    4738:	4152      	adcs	r2, r2
    473a:	4610      	mov	r0, r2
    473c:	4770      	bx	lr
    473e:	e7ff      	b.n	4740 <__aeabi_uidiv+0x100>
    4740:	b501      	push	{r0, lr}
    4742:	2000      	movs	r0, #0
    4744:	f000 f8f0 	bl	4928 <__aeabi_idiv0>
    4748:	bd02      	pop	{r1, pc}
    474a:	46c0      	nop			; (mov r8, r8)

0000474c <__aeabi_uidivmod>:
    474c:	2900      	cmp	r1, #0
    474e:	d0f7      	beq.n	4740 <__aeabi_uidiv+0x100>
    4750:	e776      	b.n	4640 <__aeabi_uidiv>
    4752:	4770      	bx	lr

00004754 <__aeabi_idiv>:
    4754:	4603      	mov	r3, r0
    4756:	430b      	orrs	r3, r1
    4758:	d47f      	bmi.n	485a <__aeabi_idiv+0x106>
    475a:	2200      	movs	r2, #0
    475c:	0843      	lsrs	r3, r0, #1
    475e:	428b      	cmp	r3, r1
    4760:	d374      	bcc.n	484c <__aeabi_idiv+0xf8>
    4762:	0903      	lsrs	r3, r0, #4
    4764:	428b      	cmp	r3, r1
    4766:	d35f      	bcc.n	4828 <__aeabi_idiv+0xd4>
    4768:	0a03      	lsrs	r3, r0, #8
    476a:	428b      	cmp	r3, r1
    476c:	d344      	bcc.n	47f8 <__aeabi_idiv+0xa4>
    476e:	0b03      	lsrs	r3, r0, #12
    4770:	428b      	cmp	r3, r1
    4772:	d328      	bcc.n	47c6 <__aeabi_idiv+0x72>
    4774:	0c03      	lsrs	r3, r0, #16
    4776:	428b      	cmp	r3, r1
    4778:	d30d      	bcc.n	4796 <__aeabi_idiv+0x42>
    477a:	22ff      	movs	r2, #255	; 0xff
    477c:	0209      	lsls	r1, r1, #8
    477e:	ba12      	rev	r2, r2
    4780:	0c03      	lsrs	r3, r0, #16
    4782:	428b      	cmp	r3, r1
    4784:	d302      	bcc.n	478c <__aeabi_idiv+0x38>
    4786:	1212      	asrs	r2, r2, #8
    4788:	0209      	lsls	r1, r1, #8
    478a:	d065      	beq.n	4858 <__aeabi_idiv+0x104>
    478c:	0b03      	lsrs	r3, r0, #12
    478e:	428b      	cmp	r3, r1
    4790:	d319      	bcc.n	47c6 <__aeabi_idiv+0x72>
    4792:	e000      	b.n	4796 <__aeabi_idiv+0x42>
    4794:	0a09      	lsrs	r1, r1, #8
    4796:	0bc3      	lsrs	r3, r0, #15
    4798:	428b      	cmp	r3, r1
    479a:	d301      	bcc.n	47a0 <__aeabi_idiv+0x4c>
    479c:	03cb      	lsls	r3, r1, #15
    479e:	1ac0      	subs	r0, r0, r3
    47a0:	4152      	adcs	r2, r2
    47a2:	0b83      	lsrs	r3, r0, #14
    47a4:	428b      	cmp	r3, r1
    47a6:	d301      	bcc.n	47ac <__aeabi_idiv+0x58>
    47a8:	038b      	lsls	r3, r1, #14
    47aa:	1ac0      	subs	r0, r0, r3
    47ac:	4152      	adcs	r2, r2
    47ae:	0b43      	lsrs	r3, r0, #13
    47b0:	428b      	cmp	r3, r1
    47b2:	d301      	bcc.n	47b8 <__aeabi_idiv+0x64>
    47b4:	034b      	lsls	r3, r1, #13
    47b6:	1ac0      	subs	r0, r0, r3
    47b8:	4152      	adcs	r2, r2
    47ba:	0b03      	lsrs	r3, r0, #12
    47bc:	428b      	cmp	r3, r1
    47be:	d301      	bcc.n	47c4 <__aeabi_idiv+0x70>
    47c0:	030b      	lsls	r3, r1, #12
    47c2:	1ac0      	subs	r0, r0, r3
    47c4:	4152      	adcs	r2, r2
    47c6:	0ac3      	lsrs	r3, r0, #11
    47c8:	428b      	cmp	r3, r1
    47ca:	d301      	bcc.n	47d0 <__aeabi_idiv+0x7c>
    47cc:	02cb      	lsls	r3, r1, #11
    47ce:	1ac0      	subs	r0, r0, r3
    47d0:	4152      	adcs	r2, r2
    47d2:	0a83      	lsrs	r3, r0, #10
    47d4:	428b      	cmp	r3, r1
    47d6:	d301      	bcc.n	47dc <__aeabi_idiv+0x88>
    47d8:	028b      	lsls	r3, r1, #10
    47da:	1ac0      	subs	r0, r0, r3
    47dc:	4152      	adcs	r2, r2
    47de:	0a43      	lsrs	r3, r0, #9
    47e0:	428b      	cmp	r3, r1
    47e2:	d301      	bcc.n	47e8 <__aeabi_idiv+0x94>
    47e4:	024b      	lsls	r3, r1, #9
    47e6:	1ac0      	subs	r0, r0, r3
    47e8:	4152      	adcs	r2, r2
    47ea:	0a03      	lsrs	r3, r0, #8
    47ec:	428b      	cmp	r3, r1
    47ee:	d301      	bcc.n	47f4 <__aeabi_idiv+0xa0>
    47f0:	020b      	lsls	r3, r1, #8
    47f2:	1ac0      	subs	r0, r0, r3
    47f4:	4152      	adcs	r2, r2
    47f6:	d2cd      	bcs.n	4794 <__aeabi_idiv+0x40>
    47f8:	09c3      	lsrs	r3, r0, #7
    47fa:	428b      	cmp	r3, r1
    47fc:	d301      	bcc.n	4802 <__aeabi_idiv+0xae>
    47fe:	01cb      	lsls	r3, r1, #7
    4800:	1ac0      	subs	r0, r0, r3
    4802:	4152      	adcs	r2, r2
    4804:	0983      	lsrs	r3, r0, #6
    4806:	428b      	cmp	r3, r1
    4808:	d301      	bcc.n	480e <__aeabi_idiv+0xba>
    480a:	018b      	lsls	r3, r1, #6
    480c:	1ac0      	subs	r0, r0, r3
    480e:	4152      	adcs	r2, r2
    4810:	0943      	lsrs	r3, r0, #5
    4812:	428b      	cmp	r3, r1
    4814:	d301      	bcc.n	481a <__aeabi_idiv+0xc6>
    4816:	014b      	lsls	r3, r1, #5
    4818:	1ac0      	subs	r0, r0, r3
    481a:	4152      	adcs	r2, r2
    481c:	0903      	lsrs	r3, r0, #4
    481e:	428b      	cmp	r3, r1
    4820:	d301      	bcc.n	4826 <__aeabi_idiv+0xd2>
    4822:	010b      	lsls	r3, r1, #4
    4824:	1ac0      	subs	r0, r0, r3
    4826:	4152      	adcs	r2, r2
    4828:	08c3      	lsrs	r3, r0, #3
    482a:	428b      	cmp	r3, r1
    482c:	d301      	bcc.n	4832 <__aeabi_idiv+0xde>
    482e:	00cb      	lsls	r3, r1, #3
    4830:	1ac0      	subs	r0, r0, r3
    4832:	4152      	adcs	r2, r2
    4834:	0883      	lsrs	r3, r0, #2
    4836:	428b      	cmp	r3, r1
    4838:	d301      	bcc.n	483e <__aeabi_idiv+0xea>
    483a:	008b      	lsls	r3, r1, #2
    483c:	1ac0      	subs	r0, r0, r3
    483e:	4152      	adcs	r2, r2
    4840:	0843      	lsrs	r3, r0, #1
    4842:	428b      	cmp	r3, r1
    4844:	d301      	bcc.n	484a <__aeabi_idiv+0xf6>
    4846:	004b      	lsls	r3, r1, #1
    4848:	1ac0      	subs	r0, r0, r3
    484a:	4152      	adcs	r2, r2
    484c:	1a41      	subs	r1, r0, r1
    484e:	d200      	bcs.n	4852 <__aeabi_idiv+0xfe>
    4850:	4601      	mov	r1, r0
    4852:	4152      	adcs	r2, r2
    4854:	4610      	mov	r0, r2
    4856:	4770      	bx	lr
    4858:	e05d      	b.n	4916 <__aeabi_idiv+0x1c2>
    485a:	0fca      	lsrs	r2, r1, #31
    485c:	d000      	beq.n	4860 <__aeabi_idiv+0x10c>
    485e:	4249      	negs	r1, r1
    4860:	1003      	asrs	r3, r0, #32
    4862:	d300      	bcc.n	4866 <__aeabi_idiv+0x112>
    4864:	4240      	negs	r0, r0
    4866:	4053      	eors	r3, r2
    4868:	2200      	movs	r2, #0
    486a:	469c      	mov	ip, r3
    486c:	0903      	lsrs	r3, r0, #4
    486e:	428b      	cmp	r3, r1
    4870:	d32d      	bcc.n	48ce <__aeabi_idiv+0x17a>
    4872:	0a03      	lsrs	r3, r0, #8
    4874:	428b      	cmp	r3, r1
    4876:	d312      	bcc.n	489e <__aeabi_idiv+0x14a>
    4878:	22fc      	movs	r2, #252	; 0xfc
    487a:	0189      	lsls	r1, r1, #6
    487c:	ba12      	rev	r2, r2
    487e:	0a03      	lsrs	r3, r0, #8
    4880:	428b      	cmp	r3, r1
    4882:	d30c      	bcc.n	489e <__aeabi_idiv+0x14a>
    4884:	0189      	lsls	r1, r1, #6
    4886:	1192      	asrs	r2, r2, #6
    4888:	428b      	cmp	r3, r1
    488a:	d308      	bcc.n	489e <__aeabi_idiv+0x14a>
    488c:	0189      	lsls	r1, r1, #6
    488e:	1192      	asrs	r2, r2, #6
    4890:	428b      	cmp	r3, r1
    4892:	d304      	bcc.n	489e <__aeabi_idiv+0x14a>
    4894:	0189      	lsls	r1, r1, #6
    4896:	d03a      	beq.n	490e <__aeabi_idiv+0x1ba>
    4898:	1192      	asrs	r2, r2, #6
    489a:	e000      	b.n	489e <__aeabi_idiv+0x14a>
    489c:	0989      	lsrs	r1, r1, #6
    489e:	09c3      	lsrs	r3, r0, #7
    48a0:	428b      	cmp	r3, r1
    48a2:	d301      	bcc.n	48a8 <__aeabi_idiv+0x154>
    48a4:	01cb      	lsls	r3, r1, #7
    48a6:	1ac0      	subs	r0, r0, r3
    48a8:	4152      	adcs	r2, r2
    48aa:	0983      	lsrs	r3, r0, #6
    48ac:	428b      	cmp	r3, r1
    48ae:	d301      	bcc.n	48b4 <__aeabi_idiv+0x160>
    48b0:	018b      	lsls	r3, r1, #6
    48b2:	1ac0      	subs	r0, r0, r3
    48b4:	4152      	adcs	r2, r2
    48b6:	0943      	lsrs	r3, r0, #5
    48b8:	428b      	cmp	r3, r1
    48ba:	d301      	bcc.n	48c0 <__aeabi_idiv+0x16c>
    48bc:	014b      	lsls	r3, r1, #5
    48be:	1ac0      	subs	r0, r0, r3
    48c0:	4152      	adcs	r2, r2
    48c2:	0903      	lsrs	r3, r0, #4
    48c4:	428b      	cmp	r3, r1
    48c6:	d301      	bcc.n	48cc <__aeabi_idiv+0x178>
    48c8:	010b      	lsls	r3, r1, #4
    48ca:	1ac0      	subs	r0, r0, r3
    48cc:	4152      	adcs	r2, r2
    48ce:	08c3      	lsrs	r3, r0, #3
    48d0:	428b      	cmp	r3, r1
    48d2:	d301      	bcc.n	48d8 <__aeabi_idiv+0x184>
    48d4:	00cb      	lsls	r3, r1, #3
    48d6:	1ac0      	subs	r0, r0, r3
    48d8:	4152      	adcs	r2, r2
    48da:	0883      	lsrs	r3, r0, #2
    48dc:	428b      	cmp	r3, r1
    48de:	d301      	bcc.n	48e4 <__aeabi_idiv+0x190>
    48e0:	008b      	lsls	r3, r1, #2
    48e2:	1ac0      	subs	r0, r0, r3
    48e4:	4152      	adcs	r2, r2
    48e6:	d2d9      	bcs.n	489c <__aeabi_idiv+0x148>
    48e8:	0843      	lsrs	r3, r0, #1
    48ea:	428b      	cmp	r3, r1
    48ec:	d301      	bcc.n	48f2 <__aeabi_idiv+0x19e>
    48ee:	004b      	lsls	r3, r1, #1
    48f0:	1ac0      	subs	r0, r0, r3
    48f2:	4152      	adcs	r2, r2
    48f4:	1a41      	subs	r1, r0, r1
    48f6:	d200      	bcs.n	48fa <__aeabi_idiv+0x1a6>
    48f8:	4601      	mov	r1, r0
    48fa:	4663      	mov	r3, ip
    48fc:	4152      	adcs	r2, r2
    48fe:	105b      	asrs	r3, r3, #1
    4900:	4610      	mov	r0, r2
    4902:	d301      	bcc.n	4908 <__aeabi_idiv+0x1b4>
    4904:	4240      	negs	r0, r0
    4906:	2b00      	cmp	r3, #0
    4908:	d500      	bpl.n	490c <__aeabi_idiv+0x1b8>
    490a:	4249      	negs	r1, r1
    490c:	4770      	bx	lr
    490e:	4663      	mov	r3, ip
    4910:	105b      	asrs	r3, r3, #1
    4912:	d300      	bcc.n	4916 <__aeabi_idiv+0x1c2>
    4914:	4240      	negs	r0, r0
    4916:	b501      	push	{r0, lr}
    4918:	2000      	movs	r0, #0
    491a:	f000 f805 	bl	4928 <__aeabi_idiv0>
    491e:	bd02      	pop	{r1, pc}

00004920 <__aeabi_idivmod>:
    4920:	2900      	cmp	r1, #0
    4922:	d0f8      	beq.n	4916 <__aeabi_idiv+0x1c2>
    4924:	e716      	b.n	4754 <__aeabi_idiv>
    4926:	4770      	bx	lr

00004928 <__aeabi_idiv0>:
    4928:	4770      	bx	lr
    492a:	46c0      	nop			; (mov r8, r8)

0000492c <rt_set_PSP>:
    492c:	f380 8809 	msr	PSP, r0
    4930:	4770      	bx	lr

00004932 <rt_get_PSP>:
    4932:	f3ef 8009 	mrs	r0, PSP
    4936:	4770      	bx	lr

00004938 <os_set_env>:
    4938:	4668      	mov	r0, sp
    493a:	f380 8809 	msr	PSP, r0
    493e:	484a      	ldr	r0, [pc, #296]	; (4a68 <OS_Tick_Handler+0xa>)
    4940:	7800      	ldrb	r0, [r0, #0]
    4942:	07c0      	lsls	r0, r0, #31
    4944:	d103      	bne.n	494e <PrivilegedE>
    4946:	2003      	movs	r0, #3
    4948:	f380 8814 	msr	CONTROL, r0
    494c:	4770      	bx	lr

0000494e <PrivilegedE>:
    494e:	2002      	movs	r0, #2
    4950:	f380 8814 	msr	CONTROL, r0
    4954:	4770      	bx	lr

00004956 <_alloc_box>:
    4956:	4b45      	ldr	r3, [pc, #276]	; (4a6c <OS_Tick_Handler+0xe>)
    4958:	469c      	mov	ip, r3
    495a:	f3ef 8305 	mrs	r3, IPSR
    495e:	061b      	lsls	r3, r3, #24
    4960:	d105      	bne.n	496e <PrivilegedA>
    4962:	f3ef 8314 	mrs	r3, CONTROL
    4966:	07db      	lsls	r3, r3, #31
    4968:	d001      	beq.n	496e <PrivilegedA>
    496a:	df00      	svc	0
    496c:	4770      	bx	lr

0000496e <PrivilegedA>:
    496e:	4760      	bx	ip

00004970 <_free_box>:
    4970:	4b3f      	ldr	r3, [pc, #252]	; (4a70 <OS_Tick_Handler+0x12>)
    4972:	469c      	mov	ip, r3
    4974:	f3ef 8305 	mrs	r3, IPSR
    4978:	061b      	lsls	r3, r3, #24
    497a:	d105      	bne.n	4988 <PrivilegedF>
    497c:	f3ef 8314 	mrs	r3, CONTROL
    4980:	07db      	lsls	r3, r3, #31
    4982:	d001      	beq.n	4988 <PrivilegedF>
    4984:	df00      	svc	0
    4986:	4770      	bx	lr

00004988 <PrivilegedF>:
    4988:	4760      	bx	ip

0000498a <SVC_Handler>:
    498a:	f3ef 8009 	mrs	r0, PSP
    498e:	6981      	ldr	r1, [r0, #24]
    4990:	3902      	subs	r1, #2
    4992:	7809      	ldrb	r1, [r1, #0]
    4994:	2900      	cmp	r1, #0
    4996:	d12b      	bne.n	49f0 <SVC_User>
    4998:	46a6      	mov	lr, r4
    499a:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    499c:	46a4      	mov	ip, r4
    499e:	4674      	mov	r4, lr
    49a0:	47e0      	blx	ip
    49a2:	f3ef 8309 	mrs	r3, PSP
    49a6:	c307      	stmia	r3!, {r0, r1, r2}
    49a8:	4b32      	ldr	r3, [pc, #200]	; (4a74 <OS_Tick_Handler+0x16>)
    49aa:	cb06      	ldmia	r3!, {r1, r2}
    49ac:	4291      	cmp	r1, r2
    49ae:	d01c      	beq.n	49ea <SVC_Exit>
    49b0:	3b08      	subs	r3, #8
    49b2:	2900      	cmp	r1, #0
    49b4:	d00d      	beq.n	49d2 <SVC_Next>
    49b6:	f3ef 8009 	mrs	r0, PSP
    49ba:	3820      	subs	r0, #32
    49bc:	6288      	str	r0, [r1, #40]	; 0x28
    49be:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    49c0:	4644      	mov	r4, r8
    49c2:	464d      	mov	r5, r9
    49c4:	4656      	mov	r6, sl
    49c6:	465f      	mov	r7, fp
    49c8:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    49ca:	b40c      	push	{r2, r3}
    49cc:	f003 fbe8 	bl	81a0 <rt_stk_check>
    49d0:	bc0c      	pop	{r2, r3}

000049d2 <SVC_Next>:
    49d2:	601a      	str	r2, [r3, #0]
    49d4:	6a90      	ldr	r0, [r2, #40]	; 0x28
    49d6:	3010      	adds	r0, #16
    49d8:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    49da:	46a0      	mov	r8, r4
    49dc:	46a9      	mov	r9, r5
    49de:	46b2      	mov	sl, r6
    49e0:	46bb      	mov	fp, r7
    49e2:	f380 8809 	msr	PSP, r0
    49e6:	3820      	subs	r0, #32
    49e8:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

000049ea <SVC_Exit>:
    49ea:	2002      	movs	r0, #2
    49ec:	43c0      	mvns	r0, r0
    49ee:	4700      	bx	r0

000049f0 <SVC_User>:
    49f0:	b510      	push	{r4, lr}
    49f2:	4a21      	ldr	r2, [pc, #132]	; (4a78 <OS_Tick_Handler+0x1a>)
    49f4:	6812      	ldr	r2, [r2, #0]
    49f6:	4291      	cmp	r1, r2
    49f8:	d809      	bhi.n	4a0e <SVC_Done>
    49fa:	4c20      	ldr	r4, [pc, #128]	; (4a7c <OS_Tick_Handler+0x1e>)
    49fc:	0089      	lsls	r1, r1, #2
    49fe:	5864      	ldr	r4, [r4, r1]
    4a00:	46a6      	mov	lr, r4
    4a02:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4a04:	46a4      	mov	ip, r4
    4a06:	47f0      	blx	lr
    4a08:	f3ef 8409 	mrs	r4, PSP
    4a0c:	c40f      	stmia	r4!, {r0, r1, r2, r3}

00004a0e <SVC_Done>:
    4a0e:	bd10      	pop	{r4, pc}

00004a10 <PendSV_Handler>:
    4a10:	f003 fb36 	bl	8080 <rt_pop_req>

00004a14 <Sys_Switch>:
    4a14:	4b17      	ldr	r3, [pc, #92]	; (4a74 <OS_Tick_Handler+0x16>)
    4a16:	cb06      	ldmia	r3!, {r1, r2}
    4a18:	4291      	cmp	r1, r2
    4a1a:	d01a      	beq.n	4a52 <Sys_Exit>
    4a1c:	3b08      	subs	r3, #8
    4a1e:	f3ef 8009 	mrs	r0, PSP
    4a22:	3820      	subs	r0, #32
    4a24:	6288      	str	r0, [r1, #40]	; 0x28
    4a26:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4a28:	4644      	mov	r4, r8
    4a2a:	464d      	mov	r5, r9
    4a2c:	4656      	mov	r6, sl
    4a2e:	465f      	mov	r7, fp
    4a30:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4a32:	b40c      	push	{r2, r3}
    4a34:	f003 fbb4 	bl	81a0 <rt_stk_check>
    4a38:	bc0c      	pop	{r2, r3}
    4a3a:	601a      	str	r2, [r3, #0]
    4a3c:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4a3e:	3010      	adds	r0, #16
    4a40:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4a42:	46a0      	mov	r8, r4
    4a44:	46a9      	mov	r9, r5
    4a46:	46b2      	mov	sl, r6
    4a48:	46bb      	mov	fp, r7
    4a4a:	f380 8809 	msr	PSP, r0
    4a4e:	3820      	subs	r0, #32
    4a50:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004a52 <Sys_Exit>:
    4a52:	2002      	movs	r0, #2
    4a54:	43c0      	mvns	r0, r0
    4a56:	4700      	bx	r0

00004a58 <SysTick_Handler>:
    4a58:	f003 fb84 	bl	8164 <rt_systick>
    4a5c:	e7da      	b.n	4a14 <Sys_Switch>

00004a5e <OS_Tick_Handler>:
    4a5e:	f003 fb7f 	bl	8160 <os_tick_irqack>
    4a62:	f003 fb7f 	bl	8164 <rt_systick>
    4a66:	e7d5      	b.n	4a14 <Sys_Switch>
    4a68:	000088bc 	.word	0x000088bc
    4a6c:	0000729d 	.word	0x0000729d
    4a70:	000072dd 	.word	0x000072dd
    4a74:	200060b4 	.word	0x200060b4
    4a78:	00000000 	.word	0x00000000
    4a7c:	fffffffc 	.word	0xfffffffc

00004a80 <__aeabi_uldivmod>:
    4a80:	2b00      	cmp	r3, #0
    4a82:	d111      	bne.n	4aa8 <__aeabi_uldivmod+0x28>
    4a84:	2a00      	cmp	r2, #0
    4a86:	d10f      	bne.n	4aa8 <__aeabi_uldivmod+0x28>
    4a88:	2900      	cmp	r1, #0
    4a8a:	d100      	bne.n	4a8e <__aeabi_uldivmod+0xe>
    4a8c:	2800      	cmp	r0, #0
    4a8e:	d002      	beq.n	4a96 <__aeabi_uldivmod+0x16>
    4a90:	2100      	movs	r1, #0
    4a92:	43c9      	mvns	r1, r1
    4a94:	1c08      	adds	r0, r1, #0
    4a96:	b407      	push	{r0, r1, r2}
    4a98:	4802      	ldr	r0, [pc, #8]	; (4aa4 <__aeabi_uldivmod+0x24>)
    4a9a:	a102      	add	r1, pc, #8	; (adr r1, 4aa4 <__aeabi_uldivmod+0x24>)
    4a9c:	1840      	adds	r0, r0, r1
    4a9e:	9002      	str	r0, [sp, #8]
    4aa0:	bd03      	pop	{r0, r1, pc}
    4aa2:	46c0      	nop			; (mov r8, r8)
    4aa4:	fffffe85 	.word	0xfffffe85
    4aa8:	b403      	push	{r0, r1}
    4aaa:	4668      	mov	r0, sp
    4aac:	b501      	push	{r0, lr}
    4aae:	9802      	ldr	r0, [sp, #8]
    4ab0:	f000 f832 	bl	4b18 <__udivmoddi4>
    4ab4:	9b01      	ldr	r3, [sp, #4]
    4ab6:	469e      	mov	lr, r3
    4ab8:	b002      	add	sp, #8
    4aba:	bc0c      	pop	{r2, r3}
    4abc:	4770      	bx	lr
    4abe:	46c0      	nop			; (mov r8, r8)

00004ac0 <__aeabi_lmul>:
    4ac0:	b5f0      	push	{r4, r5, r6, r7, lr}
    4ac2:	464f      	mov	r7, r9
    4ac4:	4646      	mov	r6, r8
    4ac6:	b4c0      	push	{r6, r7}
    4ac8:	0416      	lsls	r6, r2, #16
    4aca:	0c36      	lsrs	r6, r6, #16
    4acc:	4699      	mov	r9, r3
    4ace:	0033      	movs	r3, r6
    4ad0:	0405      	lsls	r5, r0, #16
    4ad2:	0c2c      	lsrs	r4, r5, #16
    4ad4:	0c07      	lsrs	r7, r0, #16
    4ad6:	0c15      	lsrs	r5, r2, #16
    4ad8:	4363      	muls	r3, r4
    4ada:	437e      	muls	r6, r7
    4adc:	436f      	muls	r7, r5
    4ade:	4365      	muls	r5, r4
    4ae0:	0c1c      	lsrs	r4, r3, #16
    4ae2:	19ad      	adds	r5, r5, r6
    4ae4:	1964      	adds	r4, r4, r5
    4ae6:	469c      	mov	ip, r3
    4ae8:	42a6      	cmp	r6, r4
    4aea:	d903      	bls.n	4af4 <__aeabi_lmul+0x34>
    4aec:	2380      	movs	r3, #128	; 0x80
    4aee:	025b      	lsls	r3, r3, #9
    4af0:	4698      	mov	r8, r3
    4af2:	4447      	add	r7, r8
    4af4:	4663      	mov	r3, ip
    4af6:	0c25      	lsrs	r5, r4, #16
    4af8:	19ef      	adds	r7, r5, r7
    4afa:	041d      	lsls	r5, r3, #16
    4afc:	464b      	mov	r3, r9
    4afe:	434a      	muls	r2, r1
    4b00:	4343      	muls	r3, r0
    4b02:	0c2d      	lsrs	r5, r5, #16
    4b04:	0424      	lsls	r4, r4, #16
    4b06:	1964      	adds	r4, r4, r5
    4b08:	1899      	adds	r1, r3, r2
    4b0a:	19c9      	adds	r1, r1, r7
    4b0c:	0020      	movs	r0, r4
    4b0e:	bc0c      	pop	{r2, r3}
    4b10:	4690      	mov	r8, r2
    4b12:	4699      	mov	r9, r3
    4b14:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4b16:	46c0      	nop			; (mov r8, r8)

00004b18 <__udivmoddi4>:
    4b18:	b5f0      	push	{r4, r5, r6, r7, lr}
    4b1a:	464d      	mov	r5, r9
    4b1c:	4656      	mov	r6, sl
    4b1e:	4644      	mov	r4, r8
    4b20:	465f      	mov	r7, fp
    4b22:	b4f0      	push	{r4, r5, r6, r7}
    4b24:	4692      	mov	sl, r2
    4b26:	b083      	sub	sp, #12
    4b28:	0004      	movs	r4, r0
    4b2a:	000d      	movs	r5, r1
    4b2c:	4699      	mov	r9, r3
    4b2e:	428b      	cmp	r3, r1
    4b30:	d82f      	bhi.n	4b92 <__udivmoddi4+0x7a>
    4b32:	d02c      	beq.n	4b8e <__udivmoddi4+0x76>
    4b34:	4649      	mov	r1, r9
    4b36:	4650      	mov	r0, sl
    4b38:	f000 f8ae 	bl	4c98 <__clzdi2>
    4b3c:	0029      	movs	r1, r5
    4b3e:	0006      	movs	r6, r0
    4b40:	0020      	movs	r0, r4
    4b42:	f000 f8a9 	bl	4c98 <__clzdi2>
    4b46:	1a33      	subs	r3, r6, r0
    4b48:	4698      	mov	r8, r3
    4b4a:	3b20      	subs	r3, #32
    4b4c:	469b      	mov	fp, r3
    4b4e:	d500      	bpl.n	4b52 <__udivmoddi4+0x3a>
    4b50:	e074      	b.n	4c3c <__udivmoddi4+0x124>
    4b52:	4653      	mov	r3, sl
    4b54:	465a      	mov	r2, fp
    4b56:	4093      	lsls	r3, r2
    4b58:	001f      	movs	r7, r3
    4b5a:	4653      	mov	r3, sl
    4b5c:	4642      	mov	r2, r8
    4b5e:	4093      	lsls	r3, r2
    4b60:	001e      	movs	r6, r3
    4b62:	42af      	cmp	r7, r5
    4b64:	d829      	bhi.n	4bba <__udivmoddi4+0xa2>
    4b66:	d026      	beq.n	4bb6 <__udivmoddi4+0x9e>
    4b68:	465b      	mov	r3, fp
    4b6a:	1ba4      	subs	r4, r4, r6
    4b6c:	41bd      	sbcs	r5, r7
    4b6e:	2b00      	cmp	r3, #0
    4b70:	da00      	bge.n	4b74 <__udivmoddi4+0x5c>
    4b72:	e079      	b.n	4c68 <__udivmoddi4+0x150>
    4b74:	2200      	movs	r2, #0
    4b76:	2300      	movs	r3, #0
    4b78:	9200      	str	r2, [sp, #0]
    4b7a:	9301      	str	r3, [sp, #4]
    4b7c:	2301      	movs	r3, #1
    4b7e:	465a      	mov	r2, fp
    4b80:	4093      	lsls	r3, r2
    4b82:	9301      	str	r3, [sp, #4]
    4b84:	2301      	movs	r3, #1
    4b86:	4642      	mov	r2, r8
    4b88:	4093      	lsls	r3, r2
    4b8a:	9300      	str	r3, [sp, #0]
    4b8c:	e019      	b.n	4bc2 <__udivmoddi4+0xaa>
    4b8e:	4282      	cmp	r2, r0
    4b90:	d9d0      	bls.n	4b34 <__udivmoddi4+0x1c>
    4b92:	2200      	movs	r2, #0
    4b94:	2300      	movs	r3, #0
    4b96:	9200      	str	r2, [sp, #0]
    4b98:	9301      	str	r3, [sp, #4]
    4b9a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4b9c:	2b00      	cmp	r3, #0
    4b9e:	d001      	beq.n	4ba4 <__udivmoddi4+0x8c>
    4ba0:	601c      	str	r4, [r3, #0]
    4ba2:	605d      	str	r5, [r3, #4]
    4ba4:	9800      	ldr	r0, [sp, #0]
    4ba6:	9901      	ldr	r1, [sp, #4]
    4ba8:	b003      	add	sp, #12
    4baa:	bc3c      	pop	{r2, r3, r4, r5}
    4bac:	4690      	mov	r8, r2
    4bae:	4699      	mov	r9, r3
    4bb0:	46a2      	mov	sl, r4
    4bb2:	46ab      	mov	fp, r5
    4bb4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4bb6:	42a3      	cmp	r3, r4
    4bb8:	d9d6      	bls.n	4b68 <__udivmoddi4+0x50>
    4bba:	2200      	movs	r2, #0
    4bbc:	2300      	movs	r3, #0
    4bbe:	9200      	str	r2, [sp, #0]
    4bc0:	9301      	str	r3, [sp, #4]
    4bc2:	4643      	mov	r3, r8
    4bc4:	2b00      	cmp	r3, #0
    4bc6:	d0e8      	beq.n	4b9a <__udivmoddi4+0x82>
    4bc8:	07fb      	lsls	r3, r7, #31
    4bca:	0872      	lsrs	r2, r6, #1
    4bcc:	431a      	orrs	r2, r3
    4bce:	4646      	mov	r6, r8
    4bd0:	087b      	lsrs	r3, r7, #1
    4bd2:	e00e      	b.n	4bf2 <__udivmoddi4+0xda>
    4bd4:	42ab      	cmp	r3, r5
    4bd6:	d101      	bne.n	4bdc <__udivmoddi4+0xc4>
    4bd8:	42a2      	cmp	r2, r4
    4bda:	d80c      	bhi.n	4bf6 <__udivmoddi4+0xde>
    4bdc:	1aa4      	subs	r4, r4, r2
    4bde:	419d      	sbcs	r5, r3
    4be0:	2001      	movs	r0, #1
    4be2:	1924      	adds	r4, r4, r4
    4be4:	416d      	adcs	r5, r5
    4be6:	2100      	movs	r1, #0
    4be8:	3e01      	subs	r6, #1
    4bea:	1824      	adds	r4, r4, r0
    4bec:	414d      	adcs	r5, r1
    4bee:	2e00      	cmp	r6, #0
    4bf0:	d006      	beq.n	4c00 <__udivmoddi4+0xe8>
    4bf2:	42ab      	cmp	r3, r5
    4bf4:	d9ee      	bls.n	4bd4 <__udivmoddi4+0xbc>
    4bf6:	3e01      	subs	r6, #1
    4bf8:	1924      	adds	r4, r4, r4
    4bfa:	416d      	adcs	r5, r5
    4bfc:	2e00      	cmp	r6, #0
    4bfe:	d1f8      	bne.n	4bf2 <__udivmoddi4+0xda>
    4c00:	465b      	mov	r3, fp
    4c02:	9800      	ldr	r0, [sp, #0]
    4c04:	9901      	ldr	r1, [sp, #4]
    4c06:	1900      	adds	r0, r0, r4
    4c08:	4169      	adcs	r1, r5
    4c0a:	2b00      	cmp	r3, #0
    4c0c:	db22      	blt.n	4c54 <__udivmoddi4+0x13c>
    4c0e:	002b      	movs	r3, r5
    4c10:	465a      	mov	r2, fp
    4c12:	40d3      	lsrs	r3, r2
    4c14:	002a      	movs	r2, r5
    4c16:	4644      	mov	r4, r8
    4c18:	40e2      	lsrs	r2, r4
    4c1a:	001c      	movs	r4, r3
    4c1c:	465b      	mov	r3, fp
    4c1e:	0015      	movs	r5, r2
    4c20:	2b00      	cmp	r3, #0
    4c22:	db2c      	blt.n	4c7e <__udivmoddi4+0x166>
    4c24:	0026      	movs	r6, r4
    4c26:	409e      	lsls	r6, r3
    4c28:	0033      	movs	r3, r6
    4c2a:	0026      	movs	r6, r4
    4c2c:	4647      	mov	r7, r8
    4c2e:	40be      	lsls	r6, r7
    4c30:	0032      	movs	r2, r6
    4c32:	1a80      	subs	r0, r0, r2
    4c34:	4199      	sbcs	r1, r3
    4c36:	9000      	str	r0, [sp, #0]
    4c38:	9101      	str	r1, [sp, #4]
    4c3a:	e7ae      	b.n	4b9a <__udivmoddi4+0x82>
    4c3c:	4642      	mov	r2, r8
    4c3e:	2320      	movs	r3, #32
    4c40:	1a9b      	subs	r3, r3, r2
    4c42:	4652      	mov	r2, sl
    4c44:	40da      	lsrs	r2, r3
    4c46:	4641      	mov	r1, r8
    4c48:	0013      	movs	r3, r2
    4c4a:	464a      	mov	r2, r9
    4c4c:	408a      	lsls	r2, r1
    4c4e:	0017      	movs	r7, r2
    4c50:	431f      	orrs	r7, r3
    4c52:	e782      	b.n	4b5a <__udivmoddi4+0x42>
    4c54:	4642      	mov	r2, r8
    4c56:	2320      	movs	r3, #32
    4c58:	1a9b      	subs	r3, r3, r2
    4c5a:	002a      	movs	r2, r5
    4c5c:	4646      	mov	r6, r8
    4c5e:	409a      	lsls	r2, r3
    4c60:	0023      	movs	r3, r4
    4c62:	40f3      	lsrs	r3, r6
    4c64:	4313      	orrs	r3, r2
    4c66:	e7d5      	b.n	4c14 <__udivmoddi4+0xfc>
    4c68:	4642      	mov	r2, r8
    4c6a:	2320      	movs	r3, #32
    4c6c:	2100      	movs	r1, #0
    4c6e:	1a9b      	subs	r3, r3, r2
    4c70:	2200      	movs	r2, #0
    4c72:	9100      	str	r1, [sp, #0]
    4c74:	9201      	str	r2, [sp, #4]
    4c76:	2201      	movs	r2, #1
    4c78:	40da      	lsrs	r2, r3
    4c7a:	9201      	str	r2, [sp, #4]
    4c7c:	e782      	b.n	4b84 <__udivmoddi4+0x6c>
    4c7e:	4642      	mov	r2, r8
    4c80:	2320      	movs	r3, #32
    4c82:	0026      	movs	r6, r4
    4c84:	1a9b      	subs	r3, r3, r2
    4c86:	40de      	lsrs	r6, r3
    4c88:	002f      	movs	r7, r5
    4c8a:	46b4      	mov	ip, r6
    4c8c:	4097      	lsls	r7, r2
    4c8e:	4666      	mov	r6, ip
    4c90:	003b      	movs	r3, r7
    4c92:	4333      	orrs	r3, r6
    4c94:	e7c9      	b.n	4c2a <__udivmoddi4+0x112>
    4c96:	46c0      	nop			; (mov r8, r8)

00004c98 <__clzdi2>:
    4c98:	b510      	push	{r4, lr}
    4c9a:	2900      	cmp	r1, #0
    4c9c:	d103      	bne.n	4ca6 <__clzdi2+0xe>
    4c9e:	f000 f807 	bl	4cb0 <__clzsi2>
    4ca2:	3020      	adds	r0, #32
    4ca4:	e002      	b.n	4cac <__clzdi2+0x14>
    4ca6:	1c08      	adds	r0, r1, #0
    4ca8:	f000 f802 	bl	4cb0 <__clzsi2>
    4cac:	bd10      	pop	{r4, pc}
    4cae:	46c0      	nop			; (mov r8, r8)

00004cb0 <__clzsi2>:
    4cb0:	211c      	movs	r1, #28
    4cb2:	2301      	movs	r3, #1
    4cb4:	041b      	lsls	r3, r3, #16
    4cb6:	4298      	cmp	r0, r3
    4cb8:	d301      	bcc.n	4cbe <__clzsi2+0xe>
    4cba:	0c00      	lsrs	r0, r0, #16
    4cbc:	3910      	subs	r1, #16
    4cbe:	0a1b      	lsrs	r3, r3, #8
    4cc0:	4298      	cmp	r0, r3
    4cc2:	d301      	bcc.n	4cc8 <__clzsi2+0x18>
    4cc4:	0a00      	lsrs	r0, r0, #8
    4cc6:	3908      	subs	r1, #8
    4cc8:	091b      	lsrs	r3, r3, #4
    4cca:	4298      	cmp	r0, r3
    4ccc:	d301      	bcc.n	4cd2 <__clzsi2+0x22>
    4cce:	0900      	lsrs	r0, r0, #4
    4cd0:	3904      	subs	r1, #4
    4cd2:	a202      	add	r2, pc, #8	; (adr r2, 4cdc <__clzsi2+0x2c>)
    4cd4:	5c10      	ldrb	r0, [r2, r0]
    4cd6:	1840      	adds	r0, r0, r1
    4cd8:	4770      	bx	lr
    4cda:	46c0      	nop			; (mov r8, r8)
    4cdc:	02020304 	.word	0x02020304
    4ce0:	01010101 	.word	0x01010101
	...

00004cec <atexit>:
    4cec:	b510      	push	{r4, lr}
    4cee:	0001      	movs	r1, r0
    4cf0:	2300      	movs	r3, #0
    4cf2:	2200      	movs	r2, #0
    4cf4:	2000      	movs	r0, #0
    4cf6:	f000 f8ed 	bl	4ed4 <__register_exitproc>
    4cfa:	bd10      	pop	{r4, pc}

00004cfc <exit>:
    4cfc:	b510      	push	{r4, lr}
    4cfe:	2100      	movs	r1, #0
    4d00:	0004      	movs	r4, r0
    4d02:	f000 f95d 	bl	4fc0 <__call_exitprocs>
    4d06:	4b04      	ldr	r3, [pc, #16]	; (4d18 <exit+0x1c>)
    4d08:	6818      	ldr	r0, [r3, #0]
    4d0a:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    4d0c:	2b00      	cmp	r3, #0
    4d0e:	d000      	beq.n	4d12 <exit+0x16>
    4d10:	4798      	blx	r3
    4d12:	0020      	movs	r0, r4
    4d14:	f7fb feb4 	bl	a80 <_exit>
    4d18:	0000933c 	.word	0x0000933c

00004d1c <__libc_fini_array>:
    4d1c:	b570      	push	{r4, r5, r6, lr}
    4d1e:	4b09      	ldr	r3, [pc, #36]	; (4d44 <__libc_fini_array+0x28>)
    4d20:	4c09      	ldr	r4, [pc, #36]	; (4d48 <__libc_fini_array+0x2c>)
    4d22:	1ae4      	subs	r4, r4, r3
    4d24:	10a4      	asrs	r4, r4, #2
    4d26:	d009      	beq.n	4d3c <__libc_fini_array+0x20>
    4d28:	4a08      	ldr	r2, [pc, #32]	; (4d4c <__libc_fini_array+0x30>)
    4d2a:	18a5      	adds	r5, r4, r2
    4d2c:	00ad      	lsls	r5, r5, #2
    4d2e:	18ed      	adds	r5, r5, r3
    4d30:	682b      	ldr	r3, [r5, #0]
    4d32:	3c01      	subs	r4, #1
    4d34:	4798      	blx	r3
    4d36:	3d04      	subs	r5, #4
    4d38:	2c00      	cmp	r4, #0
    4d3a:	d1f9      	bne.n	4d30 <__libc_fini_array+0x14>
    4d3c:	f7fb ffec 	bl	d18 <_fini>
    4d40:	bd70      	pop	{r4, r5, r6, pc}
    4d42:	46c0      	nop			; (mov r8, r8)
	...
    4d4c:	3fffffff 	.word	0x3fffffff

00004d50 <__libc_init_array>:
    4d50:	b570      	push	{r4, r5, r6, lr}
    4d52:	4e0d      	ldr	r6, [pc, #52]	; (4d88 <__libc_init_array+0x38>)
    4d54:	4d0d      	ldr	r5, [pc, #52]	; (4d8c <__libc_init_array+0x3c>)
    4d56:	2400      	movs	r4, #0
    4d58:	1bad      	subs	r5, r5, r6
    4d5a:	10ad      	asrs	r5, r5, #2
    4d5c:	d005      	beq.n	4d6a <__libc_init_array+0x1a>
    4d5e:	00a3      	lsls	r3, r4, #2
    4d60:	58f3      	ldr	r3, [r6, r3]
    4d62:	3401      	adds	r4, #1
    4d64:	4798      	blx	r3
    4d66:	42a5      	cmp	r5, r4
    4d68:	d1f9      	bne.n	4d5e <__libc_init_array+0xe>
    4d6a:	f7fb ffcf 	bl	d0c <_init>
    4d6e:	4e08      	ldr	r6, [pc, #32]	; (4d90 <__libc_init_array+0x40>)
    4d70:	4d08      	ldr	r5, [pc, #32]	; (4d94 <__libc_init_array+0x44>)
    4d72:	2400      	movs	r4, #0
    4d74:	1bad      	subs	r5, r5, r6
    4d76:	10ad      	asrs	r5, r5, #2
    4d78:	d005      	beq.n	4d86 <__libc_init_array+0x36>
    4d7a:	00a3      	lsls	r3, r4, #2
    4d7c:	58f3      	ldr	r3, [r6, r3]
    4d7e:	3401      	adds	r4, #1
    4d80:	4798      	blx	r3
    4d82:	42a5      	cmp	r5, r4
    4d84:	d1f9      	bne.n	4d7a <__libc_init_array+0x2a>
    4d86:	bd70      	pop	{r4, r5, r6, pc}
	...

00004d98 <memset>:
    4d98:	b570      	push	{r4, r5, r6, lr}
    4d9a:	0783      	lsls	r3, r0, #30
    4d9c:	d03f      	beq.n	4e1e <memset+0x86>
    4d9e:	1e54      	subs	r4, r2, #1
    4da0:	2a00      	cmp	r2, #0
    4da2:	d03b      	beq.n	4e1c <memset+0x84>
    4da4:	b2ce      	uxtb	r6, r1
    4da6:	0003      	movs	r3, r0
    4da8:	2503      	movs	r5, #3
    4daa:	e003      	b.n	4db4 <memset+0x1c>
    4dac:	1e62      	subs	r2, r4, #1
    4dae:	2c00      	cmp	r4, #0
    4db0:	d034      	beq.n	4e1c <memset+0x84>
    4db2:	0014      	movs	r4, r2
    4db4:	3301      	adds	r3, #1
    4db6:	1e5a      	subs	r2, r3, #1
    4db8:	7016      	strb	r6, [r2, #0]
    4dba:	422b      	tst	r3, r5
    4dbc:	d1f6      	bne.n	4dac <memset+0x14>
    4dbe:	2c03      	cmp	r4, #3
    4dc0:	d924      	bls.n	4e0c <memset+0x74>
    4dc2:	25ff      	movs	r5, #255	; 0xff
    4dc4:	400d      	ands	r5, r1
    4dc6:	022a      	lsls	r2, r5, #8
    4dc8:	4315      	orrs	r5, r2
    4dca:	042a      	lsls	r2, r5, #16
    4dcc:	4315      	orrs	r5, r2
    4dce:	2c0f      	cmp	r4, #15
    4dd0:	d911      	bls.n	4df6 <memset+0x5e>
    4dd2:	0026      	movs	r6, r4
    4dd4:	3e10      	subs	r6, #16
    4dd6:	0936      	lsrs	r6, r6, #4
    4dd8:	3601      	adds	r6, #1
    4dda:	0136      	lsls	r6, r6, #4
    4ddc:	001a      	movs	r2, r3
    4dde:	199b      	adds	r3, r3, r6
    4de0:	6015      	str	r5, [r2, #0]
    4de2:	6055      	str	r5, [r2, #4]
    4de4:	6095      	str	r5, [r2, #8]
    4de6:	60d5      	str	r5, [r2, #12]
    4de8:	3210      	adds	r2, #16
    4dea:	4293      	cmp	r3, r2
    4dec:	d1f8      	bne.n	4de0 <memset+0x48>
    4dee:	220f      	movs	r2, #15
    4df0:	4014      	ands	r4, r2
    4df2:	2c03      	cmp	r4, #3
    4df4:	d90a      	bls.n	4e0c <memset+0x74>
    4df6:	1f26      	subs	r6, r4, #4
    4df8:	08b6      	lsrs	r6, r6, #2
    4dfa:	3601      	adds	r6, #1
    4dfc:	00b6      	lsls	r6, r6, #2
    4dfe:	001a      	movs	r2, r3
    4e00:	199b      	adds	r3, r3, r6
    4e02:	c220      	stmia	r2!, {r5}
    4e04:	4293      	cmp	r3, r2
    4e06:	d1fc      	bne.n	4e02 <memset+0x6a>
    4e08:	2203      	movs	r2, #3
    4e0a:	4014      	ands	r4, r2
    4e0c:	2c00      	cmp	r4, #0
    4e0e:	d005      	beq.n	4e1c <memset+0x84>
    4e10:	b2c9      	uxtb	r1, r1
    4e12:	191c      	adds	r4, r3, r4
    4e14:	7019      	strb	r1, [r3, #0]
    4e16:	3301      	adds	r3, #1
    4e18:	429c      	cmp	r4, r3
    4e1a:	d1fb      	bne.n	4e14 <memset+0x7c>
    4e1c:	bd70      	pop	{r4, r5, r6, pc}
    4e1e:	0014      	movs	r4, r2
    4e20:	0003      	movs	r3, r0
    4e22:	e7cc      	b.n	4dbe <memset+0x26>

00004e24 <cleanup_glue>:
    4e24:	b570      	push	{r4, r5, r6, lr}
    4e26:	000c      	movs	r4, r1
    4e28:	6809      	ldr	r1, [r1, #0]
    4e2a:	0005      	movs	r5, r0
    4e2c:	2900      	cmp	r1, #0
    4e2e:	d001      	beq.n	4e34 <cleanup_glue+0x10>
    4e30:	f7ff fff8 	bl	4e24 <cleanup_glue>
    4e34:	0028      	movs	r0, r5
    4e36:	0021      	movs	r1, r4
    4e38:	f000 f990 	bl	515c <_free_r>
    4e3c:	bd70      	pop	{r4, r5, r6, pc}
    4e3e:	46c0      	nop			; (mov r8, r8)

00004e40 <_reclaim_reent>:
    4e40:	4b23      	ldr	r3, [pc, #140]	; (4ed0 <_reclaim_reent+0x90>)
    4e42:	b570      	push	{r4, r5, r6, lr}
    4e44:	681b      	ldr	r3, [r3, #0]
    4e46:	0005      	movs	r5, r0
    4e48:	4283      	cmp	r3, r0
    4e4a:	d034      	beq.n	4eb6 <_reclaim_reent+0x76>
    4e4c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    4e4e:	2b00      	cmp	r3, #0
    4e50:	d011      	beq.n	4e76 <_reclaim_reent+0x36>
    4e52:	2600      	movs	r6, #0
    4e54:	5999      	ldr	r1, [r3, r6]
    4e56:	2900      	cmp	r1, #0
    4e58:	d006      	beq.n	4e68 <_reclaim_reent+0x28>
    4e5a:	680c      	ldr	r4, [r1, #0]
    4e5c:	0028      	movs	r0, r5
    4e5e:	f000 f97d 	bl	515c <_free_r>
    4e62:	1e21      	subs	r1, r4, #0
    4e64:	d1f9      	bne.n	4e5a <_reclaim_reent+0x1a>
    4e66:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    4e68:	3604      	adds	r6, #4
    4e6a:	2e80      	cmp	r6, #128	; 0x80
    4e6c:	d1f2      	bne.n	4e54 <_reclaim_reent+0x14>
    4e6e:	0019      	movs	r1, r3
    4e70:	0028      	movs	r0, r5
    4e72:	f000 f973 	bl	515c <_free_r>
    4e76:	6c29      	ldr	r1, [r5, #64]	; 0x40
    4e78:	2900      	cmp	r1, #0
    4e7a:	d002      	beq.n	4e82 <_reclaim_reent+0x42>
    4e7c:	0028      	movs	r0, r5
    4e7e:	f000 f96d 	bl	515c <_free_r>
    4e82:	23a4      	movs	r3, #164	; 0xa4
    4e84:	005b      	lsls	r3, r3, #1
    4e86:	58e9      	ldr	r1, [r5, r3]
    4e88:	2900      	cmp	r1, #0
    4e8a:	d00b      	beq.n	4ea4 <_reclaim_reent+0x64>
    4e8c:	002e      	movs	r6, r5
    4e8e:	364d      	adds	r6, #77	; 0x4d
    4e90:	36ff      	adds	r6, #255	; 0xff
    4e92:	42b1      	cmp	r1, r6
    4e94:	d006      	beq.n	4ea4 <_reclaim_reent+0x64>
    4e96:	680c      	ldr	r4, [r1, #0]
    4e98:	0028      	movs	r0, r5
    4e9a:	f000 f95f 	bl	515c <_free_r>
    4e9e:	0021      	movs	r1, r4
    4ea0:	42a6      	cmp	r6, r4
    4ea2:	d1f8      	bne.n	4e96 <_reclaim_reent+0x56>
    4ea4:	6d69      	ldr	r1, [r5, #84]	; 0x54
    4ea6:	2900      	cmp	r1, #0
    4ea8:	d002      	beq.n	4eb0 <_reclaim_reent+0x70>
    4eaa:	0028      	movs	r0, r5
    4eac:	f000 f956 	bl	515c <_free_r>
    4eb0:	6bab      	ldr	r3, [r5, #56]	; 0x38
    4eb2:	2b00      	cmp	r3, #0
    4eb4:	d100      	bne.n	4eb8 <_reclaim_reent+0x78>
    4eb6:	bd70      	pop	{r4, r5, r6, pc}
    4eb8:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    4eba:	0028      	movs	r0, r5
    4ebc:	4798      	blx	r3
    4ebe:	23b8      	movs	r3, #184	; 0xb8
    4ec0:	009b      	lsls	r3, r3, #2
    4ec2:	58e9      	ldr	r1, [r5, r3]
    4ec4:	2900      	cmp	r1, #0
    4ec6:	d0f6      	beq.n	4eb6 <_reclaim_reent+0x76>
    4ec8:	0028      	movs	r0, r5
    4eca:	f7ff ffab 	bl	4e24 <cleanup_glue>
    4ece:	e7f2      	b.n	4eb6 <_reclaim_reent+0x76>
    4ed0:	20000440 	.word	0x20000440

00004ed4 <__register_exitproc>:
    4ed4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    4ed6:	4644      	mov	r4, r8
    4ed8:	465f      	mov	r7, fp
    4eda:	4656      	mov	r6, sl
    4edc:	464d      	mov	r5, r9
    4ede:	469b      	mov	fp, r3
    4ee0:	4b2f      	ldr	r3, [pc, #188]	; (4fa0 <__register_exitproc+0xcc>)
    4ee2:	b4f0      	push	{r4, r5, r6, r7}
    4ee4:	681c      	ldr	r4, [r3, #0]
    4ee6:	23a4      	movs	r3, #164	; 0xa4
    4ee8:	005b      	lsls	r3, r3, #1
    4eea:	0005      	movs	r5, r0
    4eec:	58e0      	ldr	r0, [r4, r3]
    4eee:	000e      	movs	r6, r1
    4ef0:	4690      	mov	r8, r2
    4ef2:	2800      	cmp	r0, #0
    4ef4:	d04b      	beq.n	4f8e <__register_exitproc+0xba>
    4ef6:	6843      	ldr	r3, [r0, #4]
    4ef8:	2b1f      	cmp	r3, #31
    4efa:	dc0d      	bgt.n	4f18 <__register_exitproc+0x44>
    4efc:	1c5c      	adds	r4, r3, #1
    4efe:	2d00      	cmp	r5, #0
    4f00:	d121      	bne.n	4f46 <__register_exitproc+0x72>
    4f02:	3302      	adds	r3, #2
    4f04:	009b      	lsls	r3, r3, #2
    4f06:	6044      	str	r4, [r0, #4]
    4f08:	501e      	str	r6, [r3, r0]
    4f0a:	2000      	movs	r0, #0
    4f0c:	bc3c      	pop	{r2, r3, r4, r5}
    4f0e:	4690      	mov	r8, r2
    4f10:	4699      	mov	r9, r3
    4f12:	46a2      	mov	sl, r4
    4f14:	46ab      	mov	fp, r5
    4f16:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    4f18:	4b22      	ldr	r3, [pc, #136]	; (4fa4 <__register_exitproc+0xd0>)
    4f1a:	2b00      	cmp	r3, #0
    4f1c:	d03c      	beq.n	4f98 <__register_exitproc+0xc4>
    4f1e:	20c8      	movs	r0, #200	; 0xc8
    4f20:	0040      	lsls	r0, r0, #1
    4f22:	e000      	b.n	4f26 <__register_exitproc+0x52>
    4f24:	bf00      	nop
    4f26:	2800      	cmp	r0, #0
    4f28:	d036      	beq.n	4f98 <__register_exitproc+0xc4>
    4f2a:	22a4      	movs	r2, #164	; 0xa4
    4f2c:	2300      	movs	r3, #0
    4f2e:	0052      	lsls	r2, r2, #1
    4f30:	58a1      	ldr	r1, [r4, r2]
    4f32:	6043      	str	r3, [r0, #4]
    4f34:	6001      	str	r1, [r0, #0]
    4f36:	50a0      	str	r0, [r4, r2]
    4f38:	3240      	adds	r2, #64	; 0x40
    4f3a:	5083      	str	r3, [r0, r2]
    4f3c:	3204      	adds	r2, #4
    4f3e:	5083      	str	r3, [r0, r2]
    4f40:	2401      	movs	r4, #1
    4f42:	2d00      	cmp	r5, #0
    4f44:	d0dd      	beq.n	4f02 <__register_exitproc+0x2e>
    4f46:	009a      	lsls	r2, r3, #2
    4f48:	4691      	mov	r9, r2
    4f4a:	4481      	add	r9, r0
    4f4c:	4642      	mov	r2, r8
    4f4e:	2188      	movs	r1, #136	; 0x88
    4f50:	464f      	mov	r7, r9
    4f52:	507a      	str	r2, [r7, r1]
    4f54:	22c4      	movs	r2, #196	; 0xc4
    4f56:	0052      	lsls	r2, r2, #1
    4f58:	4690      	mov	r8, r2
    4f5a:	4480      	add	r8, r0
    4f5c:	4642      	mov	r2, r8
    4f5e:	3987      	subs	r1, #135	; 0x87
    4f60:	4099      	lsls	r1, r3
    4f62:	6812      	ldr	r2, [r2, #0]
    4f64:	468a      	mov	sl, r1
    4f66:	430a      	orrs	r2, r1
    4f68:	4694      	mov	ip, r2
    4f6a:	4642      	mov	r2, r8
    4f6c:	4661      	mov	r1, ip
    4f6e:	6011      	str	r1, [r2, #0]
    4f70:	2284      	movs	r2, #132	; 0x84
    4f72:	4649      	mov	r1, r9
    4f74:	465f      	mov	r7, fp
    4f76:	0052      	lsls	r2, r2, #1
    4f78:	508f      	str	r7, [r1, r2]
    4f7a:	2d02      	cmp	r5, #2
    4f7c:	d1c1      	bne.n	4f02 <__register_exitproc+0x2e>
    4f7e:	0002      	movs	r2, r0
    4f80:	4655      	mov	r5, sl
    4f82:	328d      	adds	r2, #141	; 0x8d
    4f84:	32ff      	adds	r2, #255	; 0xff
    4f86:	6811      	ldr	r1, [r2, #0]
    4f88:	430d      	orrs	r5, r1
    4f8a:	6015      	str	r5, [r2, #0]
    4f8c:	e7b9      	b.n	4f02 <__register_exitproc+0x2e>
    4f8e:	0020      	movs	r0, r4
    4f90:	304d      	adds	r0, #77	; 0x4d
    4f92:	30ff      	adds	r0, #255	; 0xff
    4f94:	50e0      	str	r0, [r4, r3]
    4f96:	e7ae      	b.n	4ef6 <__register_exitproc+0x22>
    4f98:	2001      	movs	r0, #1
    4f9a:	4240      	negs	r0, r0
    4f9c:	e7b6      	b.n	4f0c <__register_exitproc+0x38>
    4f9e:	46c0      	nop			; (mov r8, r8)
    4fa0:	0000933c 	.word	0x0000933c
    4fa4:	00000000 	.word	0x00000000

00004fa8 <register_fini>:
    4fa8:	4b03      	ldr	r3, [pc, #12]	; (4fb8 <register_fini+0x10>)
    4faa:	b510      	push	{r4, lr}
    4fac:	2b00      	cmp	r3, #0
    4fae:	d002      	beq.n	4fb6 <register_fini+0xe>
    4fb0:	4802      	ldr	r0, [pc, #8]	; (4fbc <register_fini+0x14>)
    4fb2:	f7ff fe9b 	bl	4cec <atexit>
    4fb6:	bd10      	pop	{r4, pc}
    4fb8:	00000000 	.word	0x00000000
    4fbc:	00004d1d 	.word	0x00004d1d

00004fc0 <__call_exitprocs>:
    4fc0:	b5f0      	push	{r4, r5, r6, r7, lr}
    4fc2:	465f      	mov	r7, fp
    4fc4:	4656      	mov	r6, sl
    4fc6:	464d      	mov	r5, r9
    4fc8:	4644      	mov	r4, r8
    4fca:	b4f0      	push	{r4, r5, r6, r7}
    4fcc:	000f      	movs	r7, r1
    4fce:	4b39      	ldr	r3, [pc, #228]	; (50b4 <__call_exitprocs+0xf4>)
    4fd0:	b085      	sub	sp, #20
    4fd2:	681b      	ldr	r3, [r3, #0]
    4fd4:	9001      	str	r0, [sp, #4]
    4fd6:	9302      	str	r3, [sp, #8]
    4fd8:	3349      	adds	r3, #73	; 0x49
    4fda:	33ff      	adds	r3, #255	; 0xff
    4fdc:	9303      	str	r3, [sp, #12]
    4fde:	22a4      	movs	r2, #164	; 0xa4
    4fe0:	9b02      	ldr	r3, [sp, #8]
    4fe2:	0052      	lsls	r2, r2, #1
    4fe4:	589e      	ldr	r6, [r3, r2]
    4fe6:	2e00      	cmp	r6, #0
    4fe8:	d04e      	beq.n	5088 <__call_exitprocs+0xc8>
    4fea:	9b03      	ldr	r3, [sp, #12]
    4fec:	4699      	mov	r9, r3
    4fee:	23c4      	movs	r3, #196	; 0xc4
    4ff0:	005b      	lsls	r3, r3, #1
    4ff2:	4698      	mov	r8, r3
    4ff4:	3304      	adds	r3, #4
    4ff6:	469a      	mov	sl, r3
    4ff8:	6874      	ldr	r4, [r6, #4]
    4ffa:	44b0      	add	r8, r6
    4ffc:	00a5      	lsls	r5, r4, #2
    4ffe:	1975      	adds	r5, r6, r5
    5000:	44b2      	add	sl, r6
    5002:	3c01      	subs	r4, #1
    5004:	d508      	bpl.n	5018 <__call_exitprocs+0x58>
    5006:	e02d      	b.n	5064 <__call_exitprocs+0xa4>
    5008:	1d6b      	adds	r3, r5, #5
    500a:	33ff      	adds	r3, #255	; 0xff
    500c:	681b      	ldr	r3, [r3, #0]
    500e:	429f      	cmp	r7, r3
    5010:	d004      	beq.n	501c <__call_exitprocs+0x5c>
    5012:	3d04      	subs	r5, #4
    5014:	3c01      	subs	r4, #1
    5016:	d325      	bcc.n	5064 <__call_exitprocs+0xa4>
    5018:	2f00      	cmp	r7, #0
    501a:	d1f5      	bne.n	5008 <__call_exitprocs+0x48>
    501c:	6873      	ldr	r3, [r6, #4]
    501e:	686a      	ldr	r2, [r5, #4]
    5020:	3b01      	subs	r3, #1
    5022:	42a3      	cmp	r3, r4
    5024:	d039      	beq.n	509a <__call_exitprocs+0xda>
    5026:	2300      	movs	r3, #0
    5028:	606b      	str	r3, [r5, #4]
    502a:	2a00      	cmp	r2, #0
    502c:	d0f1      	beq.n	5012 <__call_exitprocs+0x52>
    502e:	6873      	ldr	r3, [r6, #4]
    5030:	4641      	mov	r1, r8
    5032:	469b      	mov	fp, r3
    5034:	2301      	movs	r3, #1
    5036:	40a3      	lsls	r3, r4
    5038:	6809      	ldr	r1, [r1, #0]
    503a:	4219      	tst	r1, r3
    503c:	d02b      	beq.n	5096 <__call_exitprocs+0xd6>
    503e:	4651      	mov	r1, sl
    5040:	6809      	ldr	r1, [r1, #0]
    5042:	4219      	tst	r1, r3
    5044:	d12b      	bne.n	509e <__call_exitprocs+0xde>
    5046:	002b      	movs	r3, r5
    5048:	3384      	adds	r3, #132	; 0x84
    504a:	6819      	ldr	r1, [r3, #0]
    504c:	9801      	ldr	r0, [sp, #4]
    504e:	4790      	blx	r2
    5050:	6873      	ldr	r3, [r6, #4]
    5052:	455b      	cmp	r3, fp
    5054:	d1c3      	bne.n	4fde <__call_exitprocs+0x1e>
    5056:	464b      	mov	r3, r9
    5058:	681b      	ldr	r3, [r3, #0]
    505a:	42b3      	cmp	r3, r6
    505c:	d1bf      	bne.n	4fde <__call_exitprocs+0x1e>
    505e:	3d04      	subs	r5, #4
    5060:	3c01      	subs	r4, #1
    5062:	d2d9      	bcs.n	5018 <__call_exitprocs+0x58>
    5064:	4b14      	ldr	r3, [pc, #80]	; (50b8 <__call_exitprocs+0xf8>)
    5066:	2b00      	cmp	r3, #0
    5068:	d00e      	beq.n	5088 <__call_exitprocs+0xc8>
    506a:	6873      	ldr	r3, [r6, #4]
    506c:	2b00      	cmp	r3, #0
    506e:	d11b      	bne.n	50a8 <__call_exitprocs+0xe8>
    5070:	6833      	ldr	r3, [r6, #0]
    5072:	2b00      	cmp	r3, #0
    5074:	d01c      	beq.n	50b0 <__call_exitprocs+0xf0>
    5076:	464a      	mov	r2, r9
    5078:	0030      	movs	r0, r6
    507a:	6013      	str	r3, [r2, #0]
    507c:	e000      	b.n	5080 <__call_exitprocs+0xc0>
    507e:	bf00      	nop
    5080:	464b      	mov	r3, r9
    5082:	681e      	ldr	r6, [r3, #0]
    5084:	2e00      	cmp	r6, #0
    5086:	d1b2      	bne.n	4fee <__call_exitprocs+0x2e>
    5088:	b005      	add	sp, #20
    508a:	bc3c      	pop	{r2, r3, r4, r5}
    508c:	4690      	mov	r8, r2
    508e:	4699      	mov	r9, r3
    5090:	46a2      	mov	sl, r4
    5092:	46ab      	mov	fp, r5
    5094:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5096:	4790      	blx	r2
    5098:	e7da      	b.n	5050 <__call_exitprocs+0x90>
    509a:	6074      	str	r4, [r6, #4]
    509c:	e7c5      	b.n	502a <__call_exitprocs+0x6a>
    509e:	002b      	movs	r3, r5
    50a0:	3384      	adds	r3, #132	; 0x84
    50a2:	6818      	ldr	r0, [r3, #0]
    50a4:	4790      	blx	r2
    50a6:	e7d3      	b.n	5050 <__call_exitprocs+0x90>
    50a8:	6833      	ldr	r3, [r6, #0]
    50aa:	46b1      	mov	r9, r6
    50ac:	001e      	movs	r6, r3
    50ae:	e7e9      	b.n	5084 <__call_exitprocs+0xc4>
    50b0:	2300      	movs	r3, #0
    50b2:	e7fa      	b.n	50aa <__call_exitprocs+0xea>
    50b4:	0000933c 	.word	0x0000933c
    50b8:	00000000 	.word	0x00000000

000050bc <_malloc_trim_r>:
    50bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    50be:	000c      	movs	r4, r1
    50c0:	0006      	movs	r6, r0
    50c2:	f000 fbd7 	bl	5874 <__malloc_lock>
    50c6:	4f20      	ldr	r7, [pc, #128]	; (5148 <_malloc_trim_r+0x8c>)
    50c8:	68bb      	ldr	r3, [r7, #8]
    50ca:	685d      	ldr	r5, [r3, #4]
    50cc:	2303      	movs	r3, #3
    50ce:	439d      	bics	r5, r3
    50d0:	4b1e      	ldr	r3, [pc, #120]	; (514c <_malloc_trim_r+0x90>)
    50d2:	1b2c      	subs	r4, r5, r4
    50d4:	469c      	mov	ip, r3
    50d6:	4464      	add	r4, ip
    50d8:	0b24      	lsrs	r4, r4, #12
    50da:	4b1d      	ldr	r3, [pc, #116]	; (5150 <_malloc_trim_r+0x94>)
    50dc:	3c01      	subs	r4, #1
    50de:	0324      	lsls	r4, r4, #12
    50e0:	429c      	cmp	r4, r3
    50e2:	dd07      	ble.n	50f4 <_malloc_trim_r+0x38>
    50e4:	2100      	movs	r1, #0
    50e6:	0030      	movs	r0, r6
    50e8:	f000 fbc8 	bl	587c <_sbrk_r>
    50ec:	68bb      	ldr	r3, [r7, #8]
    50ee:	195b      	adds	r3, r3, r5
    50f0:	4298      	cmp	r0, r3
    50f2:	d004      	beq.n	50fe <_malloc_trim_r+0x42>
    50f4:	0030      	movs	r0, r6
    50f6:	f000 fbbf 	bl	5878 <__malloc_unlock>
    50fa:	2000      	movs	r0, #0
    50fc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    50fe:	4261      	negs	r1, r4
    5100:	0030      	movs	r0, r6
    5102:	f000 fbbb 	bl	587c <_sbrk_r>
    5106:	1c43      	adds	r3, r0, #1
    5108:	d00d      	beq.n	5126 <_malloc_trim_r+0x6a>
    510a:	2301      	movs	r3, #1
    510c:	1b2d      	subs	r5, r5, r4
    510e:	68ba      	ldr	r2, [r7, #8]
    5110:	431d      	orrs	r5, r3
    5112:	4b10      	ldr	r3, [pc, #64]	; (5154 <_malloc_trim_r+0x98>)
    5114:	6055      	str	r5, [r2, #4]
    5116:	681a      	ldr	r2, [r3, #0]
    5118:	0030      	movs	r0, r6
    511a:	1b14      	subs	r4, r2, r4
    511c:	601c      	str	r4, [r3, #0]
    511e:	f000 fbab 	bl	5878 <__malloc_unlock>
    5122:	2001      	movs	r0, #1
    5124:	e7ea      	b.n	50fc <_malloc_trim_r+0x40>
    5126:	2100      	movs	r1, #0
    5128:	0030      	movs	r0, r6
    512a:	f000 fba7 	bl	587c <_sbrk_r>
    512e:	68bb      	ldr	r3, [r7, #8]
    5130:	1ac2      	subs	r2, r0, r3
    5132:	2a0f      	cmp	r2, #15
    5134:	ddde      	ble.n	50f4 <_malloc_trim_r+0x38>
    5136:	4908      	ldr	r1, [pc, #32]	; (5158 <_malloc_trim_r+0x9c>)
    5138:	6809      	ldr	r1, [r1, #0]
    513a:	1a40      	subs	r0, r0, r1
    513c:	4905      	ldr	r1, [pc, #20]	; (5154 <_malloc_trim_r+0x98>)
    513e:	6008      	str	r0, [r1, #0]
    5140:	2101      	movs	r1, #1
    5142:	430a      	orrs	r2, r1
    5144:	605a      	str	r2, [r3, #4]
    5146:	e7d5      	b.n	50f4 <_malloc_trim_r+0x38>
    5148:	20000444 	.word	0x20000444
    514c:	00000fef 	.word	0x00000fef
    5150:	00000fff 	.word	0x00000fff
    5154:	20006048 	.word	0x20006048
    5158:	20000850 	.word	0x20000850

0000515c <_free_r>:
    515c:	b5f0      	push	{r4, r5, r6, r7, lr}
    515e:	4647      	mov	r7, r8
    5160:	0005      	movs	r5, r0
    5162:	b480      	push	{r7}
    5164:	1e0c      	subs	r4, r1, #0
    5166:	d03e      	beq.n	51e6 <_free_r+0x8a>
    5168:	f000 fb84 	bl	5874 <__malloc_lock>
    516c:	2301      	movs	r3, #1
    516e:	0021      	movs	r1, r4
    5170:	4698      	mov	r8, r3
    5172:	3908      	subs	r1, #8
    5174:	684e      	ldr	r6, [r1, #4]
    5176:	4642      	mov	r2, r8
    5178:	0033      	movs	r3, r6
    517a:	2003      	movs	r0, #3
    517c:	4393      	bics	r3, r2
    517e:	18cc      	adds	r4, r1, r3
    5180:	6862      	ldr	r2, [r4, #4]
    5182:	4382      	bics	r2, r0
    5184:	4860      	ldr	r0, [pc, #384]	; (5308 <_free_r+0x1ac>)
    5186:	6887      	ldr	r7, [r0, #8]
    5188:	42bc      	cmp	r4, r7
    518a:	d05a      	beq.n	5242 <_free_r+0xe6>
    518c:	4647      	mov	r7, r8
    518e:	6062      	str	r2, [r4, #4]
    5190:	4237      	tst	r7, r6
    5192:	d10b      	bne.n	51ac <_free_r+0x50>
    5194:	2708      	movs	r7, #8
    5196:	46bc      	mov	ip, r7
    5198:	680e      	ldr	r6, [r1, #0]
    519a:	4484      	add	ip, r0
    519c:	1b89      	subs	r1, r1, r6
    519e:	199b      	adds	r3, r3, r6
    51a0:	688e      	ldr	r6, [r1, #8]
    51a2:	4566      	cmp	r6, ip
    51a4:	d066      	beq.n	5274 <_free_r+0x118>
    51a6:	68cf      	ldr	r7, [r1, #12]
    51a8:	60f7      	str	r7, [r6, #12]
    51aa:	60be      	str	r6, [r7, #8]
    51ac:	2601      	movs	r6, #1
    51ae:	18a7      	adds	r7, r4, r2
    51b0:	687f      	ldr	r7, [r7, #4]
    51b2:	4237      	tst	r7, r6
    51b4:	d036      	beq.n	5224 <_free_r+0xc8>
    51b6:	4a55      	ldr	r2, [pc, #340]	; (530c <_free_r+0x1b0>)
    51b8:	431e      	orrs	r6, r3
    51ba:	604e      	str	r6, [r1, #4]
    51bc:	50cb      	str	r3, [r1, r3]
    51be:	4293      	cmp	r3, r2
    51c0:	d814      	bhi.n	51ec <_free_r+0x90>
    51c2:	08db      	lsrs	r3, r3, #3
    51c4:	3aff      	subs	r2, #255	; 0xff
    51c6:	109c      	asrs	r4, r3, #2
    51c8:	3aff      	subs	r2, #255	; 0xff
    51ca:	40a2      	lsls	r2, r4
    51cc:	6844      	ldr	r4, [r0, #4]
    51ce:	00db      	lsls	r3, r3, #3
    51d0:	4322      	orrs	r2, r4
    51d2:	6042      	str	r2, [r0, #4]
    51d4:	1818      	adds	r0, r3, r0
    51d6:	6883      	ldr	r3, [r0, #8]
    51d8:	60c8      	str	r0, [r1, #12]
    51da:	608b      	str	r3, [r1, #8]
    51dc:	6081      	str	r1, [r0, #8]
    51de:	60d9      	str	r1, [r3, #12]
    51e0:	0028      	movs	r0, r5
    51e2:	f000 fb49 	bl	5878 <__malloc_unlock>
    51e6:	bc04      	pop	{r2}
    51e8:	4690      	mov	r8, r2
    51ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
    51ec:	0a5a      	lsrs	r2, r3, #9
    51ee:	2a04      	cmp	r2, #4
    51f0:	d84f      	bhi.n	5292 <_free_r+0x136>
    51f2:	099c      	lsrs	r4, r3, #6
    51f4:	0026      	movs	r6, r4
    51f6:	3439      	adds	r4, #57	; 0x39
    51f8:	3638      	adds	r6, #56	; 0x38
    51fa:	0064      	lsls	r4, r4, #1
    51fc:	00a4      	lsls	r4, r4, #2
    51fe:	1904      	adds	r4, r0, r4
    5200:	3c08      	subs	r4, #8
    5202:	68a2      	ldr	r2, [r4, #8]
    5204:	2703      	movs	r7, #3
    5206:	4294      	cmp	r4, r2
    5208:	d04a      	beq.n	52a0 <_free_r+0x144>
    520a:	6850      	ldr	r0, [r2, #4]
    520c:	43b8      	bics	r0, r7
    520e:	4283      	cmp	r3, r0
    5210:	d202      	bcs.n	5218 <_free_r+0xbc>
    5212:	6892      	ldr	r2, [r2, #8]
    5214:	4294      	cmp	r4, r2
    5216:	d1f8      	bne.n	520a <_free_r+0xae>
    5218:	68d4      	ldr	r4, [r2, #12]
    521a:	60cc      	str	r4, [r1, #12]
    521c:	608a      	str	r2, [r1, #8]
    521e:	60a1      	str	r1, [r4, #8]
    5220:	60d1      	str	r1, [r2, #12]
    5222:	e7dd      	b.n	51e0 <_free_r+0x84>
    5224:	189b      	adds	r3, r3, r2
    5226:	4f3a      	ldr	r7, [pc, #232]	; (5310 <_free_r+0x1b4>)
    5228:	68a2      	ldr	r2, [r4, #8]
    522a:	42ba      	cmp	r2, r7
    522c:	d040      	beq.n	52b0 <_free_r+0x154>
    522e:	68e4      	ldr	r4, [r4, #12]
    5230:	431e      	orrs	r6, r3
    5232:	60d4      	str	r4, [r2, #12]
    5234:	60a2      	str	r2, [r4, #8]
    5236:	4a35      	ldr	r2, [pc, #212]	; (530c <_free_r+0x1b0>)
    5238:	604e      	str	r6, [r1, #4]
    523a:	50cb      	str	r3, [r1, r3]
    523c:	4293      	cmp	r3, r2
    523e:	d8d5      	bhi.n	51ec <_free_r+0x90>
    5240:	e7bf      	b.n	51c2 <_free_r+0x66>
    5242:	189b      	adds	r3, r3, r2
    5244:	4642      	mov	r2, r8
    5246:	4232      	tst	r2, r6
    5248:	d106      	bne.n	5258 <_free_r+0xfc>
    524a:	680a      	ldr	r2, [r1, #0]
    524c:	1a89      	subs	r1, r1, r2
    524e:	688c      	ldr	r4, [r1, #8]
    5250:	189b      	adds	r3, r3, r2
    5252:	68ca      	ldr	r2, [r1, #12]
    5254:	60e2      	str	r2, [r4, #12]
    5256:	6094      	str	r4, [r2, #8]
    5258:	2401      	movs	r4, #1
    525a:	4a2e      	ldr	r2, [pc, #184]	; (5314 <_free_r+0x1b8>)
    525c:	431c      	orrs	r4, r3
    525e:	6812      	ldr	r2, [r2, #0]
    5260:	604c      	str	r4, [r1, #4]
    5262:	6081      	str	r1, [r0, #8]
    5264:	4293      	cmp	r3, r2
    5266:	d3bb      	bcc.n	51e0 <_free_r+0x84>
    5268:	4b2b      	ldr	r3, [pc, #172]	; (5318 <_free_r+0x1bc>)
    526a:	0028      	movs	r0, r5
    526c:	6819      	ldr	r1, [r3, #0]
    526e:	f7ff ff25 	bl	50bc <_malloc_trim_r>
    5272:	e7b5      	b.n	51e0 <_free_r+0x84>
    5274:	4646      	mov	r6, r8
    5276:	18a0      	adds	r0, r4, r2
    5278:	6840      	ldr	r0, [r0, #4]
    527a:	4230      	tst	r0, r6
    527c:	d13e      	bne.n	52fc <_free_r+0x1a0>
    527e:	68a0      	ldr	r0, [r4, #8]
    5280:	18d3      	adds	r3, r2, r3
    5282:	68e2      	ldr	r2, [r4, #12]
    5284:	60c2      	str	r2, [r0, #12]
    5286:	6090      	str	r0, [r2, #8]
    5288:	4642      	mov	r2, r8
    528a:	431a      	orrs	r2, r3
    528c:	604a      	str	r2, [r1, #4]
    528e:	50cb      	str	r3, [r1, r3]
    5290:	e7a6      	b.n	51e0 <_free_r+0x84>
    5292:	2a14      	cmp	r2, #20
    5294:	d814      	bhi.n	52c0 <_free_r+0x164>
    5296:	0016      	movs	r6, r2
    5298:	325c      	adds	r2, #92	; 0x5c
    529a:	365b      	adds	r6, #91	; 0x5b
    529c:	0054      	lsls	r4, r2, #1
    529e:	e7ad      	b.n	51fc <_free_r+0xa0>
    52a0:	2301      	movs	r3, #1
    52a2:	10b6      	asrs	r6, r6, #2
    52a4:	40b3      	lsls	r3, r6
    52a6:	6842      	ldr	r2, [r0, #4]
    52a8:	4313      	orrs	r3, r2
    52aa:	6043      	str	r3, [r0, #4]
    52ac:	0022      	movs	r2, r4
    52ae:	e7b4      	b.n	521a <_free_r+0xbe>
    52b0:	431e      	orrs	r6, r3
    52b2:	60d1      	str	r1, [r2, #12]
    52b4:	6091      	str	r1, [r2, #8]
    52b6:	60ca      	str	r2, [r1, #12]
    52b8:	608a      	str	r2, [r1, #8]
    52ba:	604e      	str	r6, [r1, #4]
    52bc:	50cb      	str	r3, [r1, r3]
    52be:	e78f      	b.n	51e0 <_free_r+0x84>
    52c0:	2a54      	cmp	r2, #84	; 0x54
    52c2:	d805      	bhi.n	52d0 <_free_r+0x174>
    52c4:	0b1c      	lsrs	r4, r3, #12
    52c6:	0026      	movs	r6, r4
    52c8:	346f      	adds	r4, #111	; 0x6f
    52ca:	366e      	adds	r6, #110	; 0x6e
    52cc:	0064      	lsls	r4, r4, #1
    52ce:	e795      	b.n	51fc <_free_r+0xa0>
    52d0:	24aa      	movs	r4, #170	; 0xaa
    52d2:	0064      	lsls	r4, r4, #1
    52d4:	42a2      	cmp	r2, r4
    52d6:	d805      	bhi.n	52e4 <_free_r+0x188>
    52d8:	0bdc      	lsrs	r4, r3, #15
    52da:	0026      	movs	r6, r4
    52dc:	3478      	adds	r4, #120	; 0x78
    52de:	3677      	adds	r6, #119	; 0x77
    52e0:	0064      	lsls	r4, r4, #1
    52e2:	e78b      	b.n	51fc <_free_r+0xa0>
    52e4:	4c0d      	ldr	r4, [pc, #52]	; (531c <_free_r+0x1c0>)
    52e6:	42a2      	cmp	r2, r4
    52e8:	d805      	bhi.n	52f6 <_free_r+0x19a>
    52ea:	0c9c      	lsrs	r4, r3, #18
    52ec:	0026      	movs	r6, r4
    52ee:	347d      	adds	r4, #125	; 0x7d
    52f0:	367c      	adds	r6, #124	; 0x7c
    52f2:	0064      	lsls	r4, r4, #1
    52f4:	e782      	b.n	51fc <_free_r+0xa0>
    52f6:	24fe      	movs	r4, #254	; 0xfe
    52f8:	267e      	movs	r6, #126	; 0x7e
    52fa:	e77f      	b.n	51fc <_free_r+0xa0>
    52fc:	4642      	mov	r2, r8
    52fe:	431a      	orrs	r2, r3
    5300:	604a      	str	r2, [r1, #4]
    5302:	50cb      	str	r3, [r1, r3]
    5304:	e76c      	b.n	51e0 <_free_r+0x84>
    5306:	46c0      	nop			; (mov r8, r8)
    5308:	20000444 	.word	0x20000444
    530c:	000001ff 	.word	0x000001ff
    5310:	2000044c 	.word	0x2000044c
    5314:	2000084c 	.word	0x2000084c
    5318:	20006044 	.word	0x20006044
    531c:	00000554 	.word	0x00000554

00005320 <_malloc_r>:
    5320:	b5f0      	push	{r4, r5, r6, r7, lr}
    5322:	465f      	mov	r7, fp
    5324:	464d      	mov	r5, r9
    5326:	4656      	mov	r6, sl
    5328:	4644      	mov	r4, r8
    532a:	b4f0      	push	{r4, r5, r6, r7}
    532c:	000d      	movs	r5, r1
    532e:	350b      	adds	r5, #11
    5330:	b083      	sub	sp, #12
    5332:	0007      	movs	r7, r0
    5334:	2d16      	cmp	r5, #22
    5336:	d800      	bhi.n	533a <_malloc_r+0x1a>
    5338:	e0a8      	b.n	548c <_malloc_r+0x16c>
    533a:	2307      	movs	r3, #7
    533c:	439d      	bics	r5, r3
    533e:	d500      	bpl.n	5342 <_malloc_r+0x22>
    5340:	e0ce      	b.n	54e0 <_malloc_r+0x1c0>
    5342:	42a9      	cmp	r1, r5
    5344:	d900      	bls.n	5348 <_malloc_r+0x28>
    5346:	e0cb      	b.n	54e0 <_malloc_r+0x1c0>
    5348:	f000 fa94 	bl	5874 <__malloc_lock>
    534c:	23f8      	movs	r3, #248	; 0xf8
    534e:	33ff      	adds	r3, #255	; 0xff
    5350:	429d      	cmp	r5, r3
    5352:	d800      	bhi.n	5356 <_malloc_r+0x36>
    5354:	e284      	b.n	5860 <_malloc_r+0x540>
    5356:	0a6b      	lsrs	r3, r5, #9
    5358:	d100      	bne.n	535c <_malloc_r+0x3c>
    535a:	e0c5      	b.n	54e8 <_malloc_r+0x1c8>
    535c:	2b04      	cmp	r3, #4
    535e:	d900      	bls.n	5362 <_malloc_r+0x42>
    5360:	e16c      	b.n	563c <_malloc_r+0x31c>
    5362:	2338      	movs	r3, #56	; 0x38
    5364:	09a9      	lsrs	r1, r5, #6
    5366:	469c      	mov	ip, r3
    5368:	3301      	adds	r3, #1
    536a:	4698      	mov	r8, r3
    536c:	4488      	add	r8, r1
    536e:	4643      	mov	r3, r8
    5370:	448c      	add	ip, r1
    5372:	0059      	lsls	r1, r3, #1
    5374:	4ec9      	ldr	r6, [pc, #804]	; (569c <_malloc_r+0x37c>)
    5376:	0089      	lsls	r1, r1, #2
    5378:	1871      	adds	r1, r6, r1
    537a:	3908      	subs	r1, #8
    537c:	68cc      	ldr	r4, [r1, #12]
    537e:	42a1      	cmp	r1, r4
    5380:	d017      	beq.n	53b2 <_malloc_r+0x92>
    5382:	2303      	movs	r3, #3
    5384:	6862      	ldr	r2, [r4, #4]
    5386:	439a      	bics	r2, r3
    5388:	0013      	movs	r3, r2
    538a:	1b52      	subs	r2, r2, r5
    538c:	2a0f      	cmp	r2, #15
    538e:	dd00      	ble.n	5392 <_malloc_r+0x72>
    5390:	e0b0      	b.n	54f4 <_malloc_r+0x1d4>
    5392:	2003      	movs	r0, #3
    5394:	2a00      	cmp	r2, #0
    5396:	db09      	blt.n	53ac <_malloc_r+0x8c>
    5398:	e08d      	b.n	54b6 <_malloc_r+0x196>
    539a:	6863      	ldr	r3, [r4, #4]
    539c:	4383      	bics	r3, r0
    539e:	1b5a      	subs	r2, r3, r5
    53a0:	2a0f      	cmp	r2, #15
    53a2:	dd00      	ble.n	53a6 <_malloc_r+0x86>
    53a4:	e0a6      	b.n	54f4 <_malloc_r+0x1d4>
    53a6:	2a00      	cmp	r2, #0
    53a8:	db00      	blt.n	53ac <_malloc_r+0x8c>
    53aa:	e084      	b.n	54b6 <_malloc_r+0x196>
    53ac:	68e4      	ldr	r4, [r4, #12]
    53ae:	42a1      	cmp	r1, r4
    53b0:	d1f3      	bne.n	539a <_malloc_r+0x7a>
    53b2:	4643      	mov	r3, r8
    53b4:	9300      	str	r3, [sp, #0]
    53b6:	0032      	movs	r2, r6
    53b8:	6934      	ldr	r4, [r6, #16]
    53ba:	3208      	adds	r2, #8
    53bc:	4294      	cmp	r4, r2
    53be:	d100      	bne.n	53c2 <_malloc_r+0xa2>
    53c0:	e18f      	b.n	56e2 <_malloc_r+0x3c2>
    53c2:	2303      	movs	r3, #3
    53c4:	6861      	ldr	r1, [r4, #4]
    53c6:	4399      	bics	r1, r3
    53c8:	000b      	movs	r3, r1
    53ca:	1b48      	subs	r0, r1, r5
    53cc:	280f      	cmp	r0, #15
    53ce:	dd00      	ble.n	53d2 <_malloc_r+0xb2>
    53d0:	e176      	b.n	56c0 <_malloc_r+0x3a0>
    53d2:	6172      	str	r2, [r6, #20]
    53d4:	6132      	str	r2, [r6, #16]
    53d6:	2800      	cmp	r0, #0
    53d8:	da71      	bge.n	54be <_malloc_r+0x19e>
    53da:	4ab1      	ldr	r2, [pc, #708]	; (56a0 <_malloc_r+0x380>)
    53dc:	4291      	cmp	r1, r2
    53de:	d900      	bls.n	53e2 <_malloc_r+0xc2>
    53e0:	e134      	b.n	564c <_malloc_r+0x32c>
    53e2:	2301      	movs	r3, #1
    53e4:	08c8      	lsrs	r0, r1, #3
    53e6:	1082      	asrs	r2, r0, #2
    53e8:	4093      	lsls	r3, r2
    53ea:	6872      	ldr	r2, [r6, #4]
    53ec:	431a      	orrs	r2, r3
    53ee:	00c3      	lsls	r3, r0, #3
    53f0:	199b      	adds	r3, r3, r6
    53f2:	6898      	ldr	r0, [r3, #8]
    53f4:	6072      	str	r2, [r6, #4]
    53f6:	60e3      	str	r3, [r4, #12]
    53f8:	60a0      	str	r0, [r4, #8]
    53fa:	609c      	str	r4, [r3, #8]
    53fc:	0013      	movs	r3, r2
    53fe:	60c4      	str	r4, [r0, #12]
    5400:	2001      	movs	r0, #1
    5402:	9900      	ldr	r1, [sp, #0]
    5404:	108a      	asrs	r2, r1, #2
    5406:	4090      	lsls	r0, r2
    5408:	4298      	cmp	r0, r3
    540a:	d900      	bls.n	540e <_malloc_r+0xee>
    540c:	e075      	b.n	54fa <_malloc_r+0x1da>
    540e:	4203      	tst	r3, r0
    5410:	d10c      	bne.n	542c <_malloc_r+0x10c>
    5412:	2203      	movs	r2, #3
    5414:	4391      	bics	r1, r2
    5416:	1d0a      	adds	r2, r1, #4
    5418:	0040      	lsls	r0, r0, #1
    541a:	9200      	str	r2, [sp, #0]
    541c:	4203      	tst	r3, r0
    541e:	d105      	bne.n	542c <_malloc_r+0x10c>
    5420:	9a00      	ldr	r2, [sp, #0]
    5422:	0040      	lsls	r0, r0, #1
    5424:	3204      	adds	r2, #4
    5426:	9200      	str	r2, [sp, #0]
    5428:	4203      	tst	r3, r0
    542a:	d0f9      	beq.n	5420 <_malloc_r+0x100>
    542c:	2303      	movs	r3, #3
    542e:	4698      	mov	r8, r3
    5430:	9a00      	ldr	r2, [sp, #0]
    5432:	00d3      	lsls	r3, r2, #3
    5434:	4699      	mov	r9, r3
    5436:	44b1      	add	r9, r6
    5438:	46cc      	mov	ip, r9
    543a:	4692      	mov	sl, r2
    543c:	4663      	mov	r3, ip
    543e:	68dc      	ldr	r4, [r3, #12]
    5440:	45a4      	cmp	ip, r4
    5442:	d107      	bne.n	5454 <_malloc_r+0x134>
    5444:	e14f      	b.n	56e6 <_malloc_r+0x3c6>
    5446:	2a00      	cmp	r2, #0
    5448:	db00      	blt.n	544c <_malloc_r+0x12c>
    544a:	e15f      	b.n	570c <_malloc_r+0x3ec>
    544c:	68e4      	ldr	r4, [r4, #12]
    544e:	45a4      	cmp	ip, r4
    5450:	d100      	bne.n	5454 <_malloc_r+0x134>
    5452:	e148      	b.n	56e6 <_malloc_r+0x3c6>
    5454:	4642      	mov	r2, r8
    5456:	6863      	ldr	r3, [r4, #4]
    5458:	4393      	bics	r3, r2
    545a:	1b5a      	subs	r2, r3, r5
    545c:	2a0f      	cmp	r2, #15
    545e:	ddf2      	ble.n	5446 <_malloc_r+0x126>
    5460:	2101      	movs	r1, #1
    5462:	1963      	adds	r3, r4, r5
    5464:	430d      	orrs	r5, r1
    5466:	6065      	str	r5, [r4, #4]
    5468:	68e0      	ldr	r0, [r4, #12]
    546a:	68a5      	ldr	r5, [r4, #8]
    546c:	3608      	adds	r6, #8
    546e:	60e8      	str	r0, [r5, #12]
    5470:	4311      	orrs	r1, r2
    5472:	6085      	str	r5, [r0, #8]
    5474:	60f3      	str	r3, [r6, #12]
    5476:	60b3      	str	r3, [r6, #8]
    5478:	0038      	movs	r0, r7
    547a:	60de      	str	r6, [r3, #12]
    547c:	609e      	str	r6, [r3, #8]
    547e:	6059      	str	r1, [r3, #4]
    5480:	509a      	str	r2, [r3, r2]
    5482:	f000 f9f9 	bl	5878 <__malloc_unlock>
    5486:	0020      	movs	r0, r4
    5488:	3008      	adds	r0, #8
    548a:	e022      	b.n	54d2 <_malloc_r+0x1b2>
    548c:	2910      	cmp	r1, #16
    548e:	d827      	bhi.n	54e0 <_malloc_r+0x1c0>
    5490:	0038      	movs	r0, r7
    5492:	f000 f9ef 	bl	5874 <__malloc_lock>
    5496:	2510      	movs	r5, #16
    5498:	2306      	movs	r3, #6
    549a:	2102      	movs	r1, #2
    549c:	4e7f      	ldr	r6, [pc, #508]	; (569c <_malloc_r+0x37c>)
    549e:	009b      	lsls	r3, r3, #2
    54a0:	18f3      	adds	r3, r6, r3
    54a2:	001a      	movs	r2, r3
    54a4:	685c      	ldr	r4, [r3, #4]
    54a6:	3a08      	subs	r2, #8
    54a8:	4294      	cmp	r4, r2
    54aa:	d100      	bne.n	54ae <_malloc_r+0x18e>
    54ac:	e127      	b.n	56fe <_malloc_r+0x3de>
    54ae:	2303      	movs	r3, #3
    54b0:	6862      	ldr	r2, [r4, #4]
    54b2:	439a      	bics	r2, r3
    54b4:	0013      	movs	r3, r2
    54b6:	68e2      	ldr	r2, [r4, #12]
    54b8:	68a1      	ldr	r1, [r4, #8]
    54ba:	60ca      	str	r2, [r1, #12]
    54bc:	6091      	str	r1, [r2, #8]
    54be:	2201      	movs	r2, #1
    54c0:	18e3      	adds	r3, r4, r3
    54c2:	6859      	ldr	r1, [r3, #4]
    54c4:	0038      	movs	r0, r7
    54c6:	430a      	orrs	r2, r1
    54c8:	605a      	str	r2, [r3, #4]
    54ca:	f000 f9d5 	bl	5878 <__malloc_unlock>
    54ce:	0020      	movs	r0, r4
    54d0:	3008      	adds	r0, #8
    54d2:	b003      	add	sp, #12
    54d4:	bc3c      	pop	{r2, r3, r4, r5}
    54d6:	4690      	mov	r8, r2
    54d8:	4699      	mov	r9, r3
    54da:	46a2      	mov	sl, r4
    54dc:	46ab      	mov	fp, r5
    54de:	bdf0      	pop	{r4, r5, r6, r7, pc}
    54e0:	230c      	movs	r3, #12
    54e2:	2000      	movs	r0, #0
    54e4:	603b      	str	r3, [r7, #0]
    54e6:	e7f4      	b.n	54d2 <_malloc_r+0x1b2>
    54e8:	2340      	movs	r3, #64	; 0x40
    54ea:	4698      	mov	r8, r3
    54ec:	3b01      	subs	r3, #1
    54ee:	2180      	movs	r1, #128	; 0x80
    54f0:	469c      	mov	ip, r3
    54f2:	e73f      	b.n	5374 <_malloc_r+0x54>
    54f4:	4663      	mov	r3, ip
    54f6:	9300      	str	r3, [sp, #0]
    54f8:	e75d      	b.n	53b6 <_malloc_r+0x96>
    54fa:	2303      	movs	r3, #3
    54fc:	68b4      	ldr	r4, [r6, #8]
    54fe:	6862      	ldr	r2, [r4, #4]
    5500:	439a      	bics	r2, r3
    5502:	4690      	mov	r8, r2
    5504:	42aa      	cmp	r2, r5
    5506:	d303      	bcc.n	5510 <_malloc_r+0x1f0>
    5508:	1b52      	subs	r2, r2, r5
    550a:	2a0f      	cmp	r2, #15
    550c:	dd00      	ble.n	5510 <_malloc_r+0x1f0>
    550e:	e087      	b.n	5620 <_malloc_r+0x300>
    5510:	0023      	movs	r3, r4
    5512:	4443      	add	r3, r8
    5514:	4a63      	ldr	r2, [pc, #396]	; (56a4 <_malloc_r+0x384>)
    5516:	9301      	str	r3, [sp, #4]
    5518:	4b63      	ldr	r3, [pc, #396]	; (56a8 <_malloc_r+0x388>)
    551a:	4693      	mov	fp, r2
    551c:	681b      	ldr	r3, [r3, #0]
    551e:	6812      	ldr	r2, [r2, #0]
    5520:	18eb      	adds	r3, r5, r3
    5522:	3201      	adds	r2, #1
    5524:	d100      	bne.n	5528 <_malloc_r+0x208>
    5526:	e157      	b.n	57d8 <_malloc_r+0x4b8>
    5528:	4a60      	ldr	r2, [pc, #384]	; (56ac <_malloc_r+0x38c>)
    552a:	4694      	mov	ip, r2
    552c:	4463      	add	r3, ip
    552e:	0b1b      	lsrs	r3, r3, #12
    5530:	031b      	lsls	r3, r3, #12
    5532:	9300      	str	r3, [sp, #0]
    5534:	9900      	ldr	r1, [sp, #0]
    5536:	0038      	movs	r0, r7
    5538:	f000 f9a0 	bl	587c <_sbrk_r>
    553c:	0003      	movs	r3, r0
    553e:	4681      	mov	r9, r0
    5540:	3301      	adds	r3, #1
    5542:	d061      	beq.n	5608 <_malloc_r+0x2e8>
    5544:	9b01      	ldr	r3, [sp, #4]
    5546:	4283      	cmp	r3, r0
    5548:	d900      	bls.n	554c <_malloc_r+0x22c>
    554a:	e0fd      	b.n	5748 <_malloc_r+0x428>
    554c:	4b58      	ldr	r3, [pc, #352]	; (56b0 <_malloc_r+0x390>)
    554e:	9a00      	ldr	r2, [sp, #0]
    5550:	469a      	mov	sl, r3
    5552:	681b      	ldr	r3, [r3, #0]
    5554:	469c      	mov	ip, r3
    5556:	4653      	mov	r3, sl
    5558:	4462      	add	r2, ip
    555a:	601a      	str	r2, [r3, #0]
    555c:	9b01      	ldr	r3, [sp, #4]
    555e:	0011      	movs	r1, r2
    5560:	454b      	cmp	r3, r9
    5562:	d100      	bne.n	5566 <_malloc_r+0x246>
    5564:	e143      	b.n	57ee <_malloc_r+0x4ce>
    5566:	465b      	mov	r3, fp
    5568:	681b      	ldr	r3, [r3, #0]
    556a:	3301      	adds	r3, #1
    556c:	d100      	bne.n	5570 <_malloc_r+0x250>
    556e:	e14f      	b.n	5810 <_malloc_r+0x4f0>
    5570:	464b      	mov	r3, r9
    5572:	9a01      	ldr	r2, [sp, #4]
    5574:	1a9b      	subs	r3, r3, r2
    5576:	1859      	adds	r1, r3, r1
    5578:	4653      	mov	r3, sl
    557a:	6019      	str	r1, [r3, #0]
    557c:	2307      	movs	r3, #7
    557e:	464a      	mov	r2, r9
    5580:	4013      	ands	r3, r2
    5582:	d100      	bne.n	5586 <_malloc_r+0x266>
    5584:	e117      	b.n	57b6 <_malloc_r+0x496>
    5586:	2108      	movs	r1, #8
    5588:	4689      	mov	r9, r1
    558a:	494a      	ldr	r1, [pc, #296]	; (56b4 <_malloc_r+0x394>)
    558c:	1ad2      	subs	r2, r2, r3
    558e:	4491      	add	r9, r2
    5590:	1ac9      	subs	r1, r1, r3
    5592:	9b00      	ldr	r3, [sp, #0]
    5594:	0038      	movs	r0, r7
    5596:	444b      	add	r3, r9
    5598:	051b      	lsls	r3, r3, #20
    559a:	0d1b      	lsrs	r3, r3, #20
    559c:	1acb      	subs	r3, r1, r3
    559e:	0019      	movs	r1, r3
    55a0:	469b      	mov	fp, r3
    55a2:	f000 f96b 	bl	587c <_sbrk_r>
    55a6:	1c43      	adds	r3, r0, #1
    55a8:	d100      	bne.n	55ac <_malloc_r+0x28c>
    55aa:	e135      	b.n	5818 <_malloc_r+0x4f8>
    55ac:	464b      	mov	r3, r9
    55ae:	1ac0      	subs	r0, r0, r3
    55b0:	2301      	movs	r3, #1
    55b2:	4458      	add	r0, fp
    55b4:	4318      	orrs	r0, r3
    55b6:	4653      	mov	r3, sl
    55b8:	681b      	ldr	r3, [r3, #0]
    55ba:	445b      	add	r3, fp
    55bc:	0019      	movs	r1, r3
    55be:	4653      	mov	r3, sl
    55c0:	6019      	str	r1, [r3, #0]
    55c2:	464b      	mov	r3, r9
    55c4:	60b3      	str	r3, [r6, #8]
    55c6:	6058      	str	r0, [r3, #4]
    55c8:	42b4      	cmp	r4, r6
    55ca:	d013      	beq.n	55f4 <_malloc_r+0x2d4>
    55cc:	4643      	mov	r3, r8
    55ce:	2b0f      	cmp	r3, #15
    55d0:	d800      	bhi.n	55d4 <_malloc_r+0x2b4>
    55d2:	e0e1      	b.n	5798 <_malloc_r+0x478>
    55d4:	4643      	mov	r3, r8
    55d6:	2207      	movs	r2, #7
    55d8:	6860      	ldr	r0, [r4, #4]
    55da:	3b0c      	subs	r3, #12
    55dc:	4393      	bics	r3, r2
    55de:	3a06      	subs	r2, #6
    55e0:	4002      	ands	r2, r0
    55e2:	2005      	movs	r0, #5
    55e4:	431a      	orrs	r2, r3
    55e6:	6062      	str	r2, [r4, #4]
    55e8:	18e2      	adds	r2, r4, r3
    55ea:	6050      	str	r0, [r2, #4]
    55ec:	6090      	str	r0, [r2, #8]
    55ee:	2b0f      	cmp	r3, #15
    55f0:	d900      	bls.n	55f4 <_malloc_r+0x2d4>
    55f2:	e115      	b.n	5820 <_malloc_r+0x500>
    55f4:	4b30      	ldr	r3, [pc, #192]	; (56b8 <_malloc_r+0x398>)
    55f6:	681a      	ldr	r2, [r3, #0]
    55f8:	4291      	cmp	r1, r2
    55fa:	d900      	bls.n	55fe <_malloc_r+0x2de>
    55fc:	6019      	str	r1, [r3, #0]
    55fe:	4b2f      	ldr	r3, [pc, #188]	; (56bc <_malloc_r+0x39c>)
    5600:	681a      	ldr	r2, [r3, #0]
    5602:	4291      	cmp	r1, r2
    5604:	d900      	bls.n	5608 <_malloc_r+0x2e8>
    5606:	6019      	str	r1, [r3, #0]
    5608:	2303      	movs	r3, #3
    560a:	68b4      	ldr	r4, [r6, #8]
    560c:	6862      	ldr	r2, [r4, #4]
    560e:	439a      	bics	r2, r3
    5610:	0013      	movs	r3, r2
    5612:	1b52      	subs	r2, r2, r5
    5614:	429d      	cmp	r5, r3
    5616:	d900      	bls.n	561a <_malloc_r+0x2fa>
    5618:	e0c1      	b.n	579e <_malloc_r+0x47e>
    561a:	2a0f      	cmp	r2, #15
    561c:	dc00      	bgt.n	5620 <_malloc_r+0x300>
    561e:	e0be      	b.n	579e <_malloc_r+0x47e>
    5620:	2301      	movs	r3, #1
    5622:	0029      	movs	r1, r5
    5624:	1965      	adds	r5, r4, r5
    5626:	4319      	orrs	r1, r3
    5628:	4313      	orrs	r3, r2
    562a:	6061      	str	r1, [r4, #4]
    562c:	0038      	movs	r0, r7
    562e:	60b5      	str	r5, [r6, #8]
    5630:	606b      	str	r3, [r5, #4]
    5632:	f000 f921 	bl	5878 <__malloc_unlock>
    5636:	0020      	movs	r0, r4
    5638:	3008      	adds	r0, #8
    563a:	e74a      	b.n	54d2 <_malloc_r+0x1b2>
    563c:	2b14      	cmp	r3, #20
    563e:	d974      	bls.n	572a <_malloc_r+0x40a>
    5640:	2b54      	cmp	r3, #84	; 0x54
    5642:	d900      	bls.n	5646 <_malloc_r+0x326>
    5644:	e0b0      	b.n	57a8 <_malloc_r+0x488>
    5646:	0b29      	lsrs	r1, r5, #12
    5648:	236e      	movs	r3, #110	; 0x6e
    564a:	e68c      	b.n	5366 <_malloc_r+0x46>
    564c:	0a4a      	lsrs	r2, r1, #9
    564e:	2a04      	cmp	r2, #4
    5650:	d974      	bls.n	573c <_malloc_r+0x41c>
    5652:	2a14      	cmp	r2, #20
    5654:	d900      	bls.n	5658 <_malloc_r+0x338>
    5656:	e0c2      	b.n	57de <_malloc_r+0x4be>
    5658:	0010      	movs	r0, r2
    565a:	325c      	adds	r2, #92	; 0x5c
    565c:	305b      	adds	r0, #91	; 0x5b
    565e:	0052      	lsls	r2, r2, #1
    5660:	2108      	movs	r1, #8
    5662:	4249      	negs	r1, r1
    5664:	468c      	mov	ip, r1
    5666:	0092      	lsls	r2, r2, #2
    5668:	18b2      	adds	r2, r6, r2
    566a:	4494      	add	ip, r2
    566c:	4662      	mov	r2, ip
    566e:	6892      	ldr	r2, [r2, #8]
    5670:	310b      	adds	r1, #11
    5672:	4688      	mov	r8, r1
    5674:	4594      	cmp	ip, r2
    5676:	d100      	bne.n	567a <_malloc_r+0x35a>
    5678:	e0a0      	b.n	57bc <_malloc_r+0x49c>
    567a:	4641      	mov	r1, r8
    567c:	6850      	ldr	r0, [r2, #4]
    567e:	4388      	bics	r0, r1
    5680:	4283      	cmp	r3, r0
    5682:	d202      	bcs.n	568a <_malloc_r+0x36a>
    5684:	6892      	ldr	r2, [r2, #8]
    5686:	4594      	cmp	ip, r2
    5688:	d1f7      	bne.n	567a <_malloc_r+0x35a>
    568a:	68d3      	ldr	r3, [r2, #12]
    568c:	469c      	mov	ip, r3
    568e:	6873      	ldr	r3, [r6, #4]
    5690:	4661      	mov	r1, ip
    5692:	60a2      	str	r2, [r4, #8]
    5694:	60e1      	str	r1, [r4, #12]
    5696:	608c      	str	r4, [r1, #8]
    5698:	60d4      	str	r4, [r2, #12]
    569a:	e6b1      	b.n	5400 <_malloc_r+0xe0>
    569c:	20000444 	.word	0x20000444
    56a0:	000001ff 	.word	0x000001ff
    56a4:	20000850 	.word	0x20000850
    56a8:	20006044 	.word	0x20006044
    56ac:	0000100f 	.word	0x0000100f
    56b0:	20006048 	.word	0x20006048
    56b4:	00001008 	.word	0x00001008
    56b8:	20006040 	.word	0x20006040
    56bc:	2000603c 	.word	0x2000603c
    56c0:	2101      	movs	r1, #1
    56c2:	1963      	adds	r3, r4, r5
    56c4:	430d      	orrs	r5, r1
    56c6:	4301      	orrs	r1, r0
    56c8:	6065      	str	r5, [r4, #4]
    56ca:	6173      	str	r3, [r6, #20]
    56cc:	6133      	str	r3, [r6, #16]
    56ce:	60da      	str	r2, [r3, #12]
    56d0:	609a      	str	r2, [r3, #8]
    56d2:	6059      	str	r1, [r3, #4]
    56d4:	5018      	str	r0, [r3, r0]
    56d6:	0038      	movs	r0, r7
    56d8:	f000 f8ce 	bl	5878 <__malloc_unlock>
    56dc:	0020      	movs	r0, r4
    56de:	3008      	adds	r0, #8
    56e0:	e6f7      	b.n	54d2 <_malloc_r+0x1b2>
    56e2:	6873      	ldr	r3, [r6, #4]
    56e4:	e68c      	b.n	5400 <_malloc_r+0xe0>
    56e6:	2308      	movs	r3, #8
    56e8:	469b      	mov	fp, r3
    56ea:	3b07      	subs	r3, #7
    56ec:	44dc      	add	ip, fp
    56ee:	469b      	mov	fp, r3
    56f0:	44da      	add	sl, fp
    56f2:	4643      	mov	r3, r8
    56f4:	4652      	mov	r2, sl
    56f6:	4213      	tst	r3, r2
    56f8:	d000      	beq.n	56fc <_malloc_r+0x3dc>
    56fa:	e69f      	b.n	543c <_malloc_r+0x11c>
    56fc:	e033      	b.n	5766 <_malloc_r+0x446>
    56fe:	68dc      	ldr	r4, [r3, #12]
    5700:	1c8a      	adds	r2, r1, #2
    5702:	9200      	str	r2, [sp, #0]
    5704:	42a3      	cmp	r3, r4
    5706:	d100      	bne.n	570a <_malloc_r+0x3ea>
    5708:	e655      	b.n	53b6 <_malloc_r+0x96>
    570a:	e6d0      	b.n	54ae <_malloc_r+0x18e>
    570c:	2201      	movs	r2, #1
    570e:	18e3      	adds	r3, r4, r3
    5710:	6859      	ldr	r1, [r3, #4]
    5712:	0038      	movs	r0, r7
    5714:	430a      	orrs	r2, r1
    5716:	605a      	str	r2, [r3, #4]
    5718:	68e3      	ldr	r3, [r4, #12]
    571a:	68a2      	ldr	r2, [r4, #8]
    571c:	60d3      	str	r3, [r2, #12]
    571e:	609a      	str	r2, [r3, #8]
    5720:	f000 f8aa 	bl	5878 <__malloc_unlock>
    5724:	0020      	movs	r0, r4
    5726:	3008      	adds	r0, #8
    5728:	e6d3      	b.n	54d2 <_malloc_r+0x1b2>
    572a:	225b      	movs	r2, #91	; 0x5b
    572c:	4694      	mov	ip, r2
    572e:	3201      	adds	r2, #1
    5730:	4690      	mov	r8, r2
    5732:	4498      	add	r8, r3
    5734:	449c      	add	ip, r3
    5736:	4643      	mov	r3, r8
    5738:	0059      	lsls	r1, r3, #1
    573a:	e61b      	b.n	5374 <_malloc_r+0x54>
    573c:	098a      	lsrs	r2, r1, #6
    573e:	0010      	movs	r0, r2
    5740:	3239      	adds	r2, #57	; 0x39
    5742:	3038      	adds	r0, #56	; 0x38
    5744:	0052      	lsls	r2, r2, #1
    5746:	e78b      	b.n	5660 <_malloc_r+0x340>
    5748:	42b4      	cmp	r4, r6
    574a:	d000      	beq.n	574e <_malloc_r+0x42e>
    574c:	e75c      	b.n	5608 <_malloc_r+0x2e8>
    574e:	e6fd      	b.n	554c <_malloc_r+0x22c>
    5750:	9b00      	ldr	r3, [sp, #0]
    5752:	3b01      	subs	r3, #1
    5754:	9300      	str	r3, [sp, #0]
    5756:	2308      	movs	r3, #8
    5758:	425b      	negs	r3, r3
    575a:	469c      	mov	ip, r3
    575c:	44e1      	add	r9, ip
    575e:	464b      	mov	r3, r9
    5760:	689b      	ldr	r3, [r3, #8]
    5762:	4599      	cmp	r9, r3
    5764:	d17a      	bne.n	585c <_malloc_r+0x53c>
    5766:	4643      	mov	r3, r8
    5768:	9a00      	ldr	r2, [sp, #0]
    576a:	4213      	tst	r3, r2
    576c:	d1f0      	bne.n	5750 <_malloc_r+0x430>
    576e:	6873      	ldr	r3, [r6, #4]
    5770:	4383      	bics	r3, r0
    5772:	6073      	str	r3, [r6, #4]
    5774:	0040      	lsls	r0, r0, #1
    5776:	4298      	cmp	r0, r3
    5778:	d900      	bls.n	577c <_malloc_r+0x45c>
    577a:	e6be      	b.n	54fa <_malloc_r+0x1da>
    577c:	2800      	cmp	r0, #0
    577e:	d100      	bne.n	5782 <_malloc_r+0x462>
    5780:	e6bb      	b.n	54fa <_malloc_r+0x1da>
    5782:	4203      	tst	r3, r0
    5784:	d170      	bne.n	5868 <_malloc_r+0x548>
    5786:	4652      	mov	r2, sl
    5788:	9200      	str	r2, [sp, #0]
    578a:	9a00      	ldr	r2, [sp, #0]
    578c:	0040      	lsls	r0, r0, #1
    578e:	3204      	adds	r2, #4
    5790:	9200      	str	r2, [sp, #0]
    5792:	4203      	tst	r3, r0
    5794:	d0f9      	beq.n	578a <_malloc_r+0x46a>
    5796:	e64b      	b.n	5430 <_malloc_r+0x110>
    5798:	2301      	movs	r3, #1
    579a:	464a      	mov	r2, r9
    579c:	6053      	str	r3, [r2, #4]
    579e:	0038      	movs	r0, r7
    57a0:	f000 f86a 	bl	5878 <__malloc_unlock>
    57a4:	2000      	movs	r0, #0
    57a6:	e694      	b.n	54d2 <_malloc_r+0x1b2>
    57a8:	22aa      	movs	r2, #170	; 0xaa
    57aa:	0052      	lsls	r2, r2, #1
    57ac:	4293      	cmp	r3, r2
    57ae:	d80d      	bhi.n	57cc <_malloc_r+0x4ac>
    57b0:	0be9      	lsrs	r1, r5, #15
    57b2:	2377      	movs	r3, #119	; 0x77
    57b4:	e5d7      	b.n	5366 <_malloc_r+0x46>
    57b6:	2180      	movs	r1, #128	; 0x80
    57b8:	0149      	lsls	r1, r1, #5
    57ba:	e6ea      	b.n	5592 <_malloc_r+0x272>
    57bc:	2301      	movs	r3, #1
    57be:	1080      	asrs	r0, r0, #2
    57c0:	4083      	lsls	r3, r0
    57c2:	6872      	ldr	r2, [r6, #4]
    57c4:	4313      	orrs	r3, r2
    57c6:	6073      	str	r3, [r6, #4]
    57c8:	4662      	mov	r2, ip
    57ca:	e761      	b.n	5690 <_malloc_r+0x370>
    57cc:	4a28      	ldr	r2, [pc, #160]	; (5870 <_malloc_r+0x550>)
    57ce:	4293      	cmp	r3, r2
    57d0:	d818      	bhi.n	5804 <_malloc_r+0x4e4>
    57d2:	0ca9      	lsrs	r1, r5, #18
    57d4:	237c      	movs	r3, #124	; 0x7c
    57d6:	e5c6      	b.n	5366 <_malloc_r+0x46>
    57d8:	3310      	adds	r3, #16
    57da:	9300      	str	r3, [sp, #0]
    57dc:	e6aa      	b.n	5534 <_malloc_r+0x214>
    57de:	2a54      	cmp	r2, #84	; 0x54
    57e0:	d826      	bhi.n	5830 <_malloc_r+0x510>
    57e2:	0b0a      	lsrs	r2, r1, #12
    57e4:	0010      	movs	r0, r2
    57e6:	326f      	adds	r2, #111	; 0x6f
    57e8:	306e      	adds	r0, #110	; 0x6e
    57ea:	0052      	lsls	r2, r2, #1
    57ec:	e738      	b.n	5660 <_malloc_r+0x340>
    57ee:	051b      	lsls	r3, r3, #20
    57f0:	d000      	beq.n	57f4 <_malloc_r+0x4d4>
    57f2:	e6b8      	b.n	5566 <_malloc_r+0x246>
    57f4:	9b00      	ldr	r3, [sp, #0]
    57f6:	68b2      	ldr	r2, [r6, #8]
    57f8:	4443      	add	r3, r8
    57fa:	0018      	movs	r0, r3
    57fc:	2301      	movs	r3, #1
    57fe:	4303      	orrs	r3, r0
    5800:	6053      	str	r3, [r2, #4]
    5802:	e6f7      	b.n	55f4 <_malloc_r+0x2d4>
    5804:	237f      	movs	r3, #127	; 0x7f
    5806:	4698      	mov	r8, r3
    5808:	3b01      	subs	r3, #1
    580a:	21fe      	movs	r1, #254	; 0xfe
    580c:	469c      	mov	ip, r3
    580e:	e5b1      	b.n	5374 <_malloc_r+0x54>
    5810:	465b      	mov	r3, fp
    5812:	464a      	mov	r2, r9
    5814:	601a      	str	r2, [r3, #0]
    5816:	e6b1      	b.n	557c <_malloc_r+0x25c>
    5818:	2300      	movs	r3, #0
    581a:	2001      	movs	r0, #1
    581c:	469b      	mov	fp, r3
    581e:	e6ca      	b.n	55b6 <_malloc_r+0x296>
    5820:	0021      	movs	r1, r4
    5822:	0038      	movs	r0, r7
    5824:	3108      	adds	r1, #8
    5826:	f7ff fc99 	bl	515c <_free_r>
    582a:	4653      	mov	r3, sl
    582c:	6819      	ldr	r1, [r3, #0]
    582e:	e6e1      	b.n	55f4 <_malloc_r+0x2d4>
    5830:	20aa      	movs	r0, #170	; 0xaa
    5832:	0040      	lsls	r0, r0, #1
    5834:	4282      	cmp	r2, r0
    5836:	d805      	bhi.n	5844 <_malloc_r+0x524>
    5838:	0bca      	lsrs	r2, r1, #15
    583a:	0010      	movs	r0, r2
    583c:	3278      	adds	r2, #120	; 0x78
    583e:	3077      	adds	r0, #119	; 0x77
    5840:	0052      	lsls	r2, r2, #1
    5842:	e70d      	b.n	5660 <_malloc_r+0x340>
    5844:	480a      	ldr	r0, [pc, #40]	; (5870 <_malloc_r+0x550>)
    5846:	4282      	cmp	r2, r0
    5848:	d805      	bhi.n	5856 <_malloc_r+0x536>
    584a:	0c8a      	lsrs	r2, r1, #18
    584c:	0010      	movs	r0, r2
    584e:	327d      	adds	r2, #125	; 0x7d
    5850:	307c      	adds	r0, #124	; 0x7c
    5852:	0052      	lsls	r2, r2, #1
    5854:	e704      	b.n	5660 <_malloc_r+0x340>
    5856:	22fe      	movs	r2, #254	; 0xfe
    5858:	207e      	movs	r0, #126	; 0x7e
    585a:	e701      	b.n	5660 <_malloc_r+0x340>
    585c:	6873      	ldr	r3, [r6, #4]
    585e:	e789      	b.n	5774 <_malloc_r+0x454>
    5860:	08e9      	lsrs	r1, r5, #3
    5862:	1c4b      	adds	r3, r1, #1
    5864:	005b      	lsls	r3, r3, #1
    5866:	e619      	b.n	549c <_malloc_r+0x17c>
    5868:	4653      	mov	r3, sl
    586a:	9300      	str	r3, [sp, #0]
    586c:	e5e0      	b.n	5430 <_malloc_r+0x110>
    586e:	46c0      	nop			; (mov r8, r8)
    5870:	00000554 	.word	0x00000554

00005874 <__malloc_lock>:
    5874:	4770      	bx	lr
    5876:	46c0      	nop			; (mov r8, r8)

00005878 <__malloc_unlock>:
    5878:	4770      	bx	lr
    587a:	46c0      	nop			; (mov r8, r8)

0000587c <_sbrk_r>:
    587c:	2300      	movs	r3, #0
    587e:	b570      	push	{r4, r5, r6, lr}
    5880:	4c06      	ldr	r4, [pc, #24]	; (589c <_sbrk_r+0x20>)
    5882:	0005      	movs	r5, r0
    5884:	0008      	movs	r0, r1
    5886:	6023      	str	r3, [r4, #0]
    5888:	f7fb f984 	bl	b94 <_sbrk>
    588c:	1c43      	adds	r3, r0, #1
    588e:	d000      	beq.n	5892 <_sbrk_r+0x16>
    5890:	bd70      	pop	{r4, r5, r6, pc}
    5892:	6823      	ldr	r3, [r4, #0]
    5894:	2b00      	cmp	r3, #0
    5896:	d0fb      	beq.n	5890 <_sbrk_r+0x14>
    5898:	602b      	str	r3, [r5, #0]
    589a:	e7f9      	b.n	5890 <_sbrk_r+0x14>
    589c:	20006070 	.word	0x20006070

000058a0 <osThreadExit>:
    58a0:	b580      	push	{r7, lr}
    58a2:	4f03      	ldr	r7, [pc, #12]	; (58b0 <osThreadExit+0x10>)
    58a4:	46bc      	mov	ip, r7
    58a6:	df00      	svc	0
    58a8:	4f02      	ldr	r7, [pc, #8]	; (58b4 <osThreadExit+0x14>)
    58aa:	46bc      	mov	ip, r7
    58ac:	df00      	svc	0
    58ae:	e7fe      	b.n	58ae <osThreadExit+0xe>
    58b0:	00005ce1 	.word	0x00005ce1
    58b4:	00005cfd 	.word	0x00005cfd

000058b8 <svcKernelInitialize>:
    58b8:	b570      	push	{r4, r5, r6, lr}
    58ba:	4c39      	ldr	r4, [pc, #228]	; (59a0 <svcKernelInitialize+0xe8>)
    58bc:	b084      	sub	sp, #16
    58be:	7823      	ldrb	r3, [r4, #0]
    58c0:	2b00      	cmp	r3, #0
    58c2:	d00b      	beq.n	58dc <svcKernelInitialize+0x24>
    58c4:	22ff      	movs	r2, #255	; 0xff
    58c6:	4b37      	ldr	r3, [pc, #220]	; (59a4 <svcKernelInitialize+0xec>)
    58c8:	681b      	ldr	r3, [r3, #0]
    58ca:	709a      	strb	r2, [r3, #2]
    58cc:	2301      	movs	r3, #1
    58ce:	2200      	movs	r2, #0
    58d0:	2000      	movs	r0, #0
    58d2:	7023      	strb	r3, [r4, #0]
    58d4:	4b34      	ldr	r3, [pc, #208]	; (59a8 <svcKernelInitialize+0xf0>)
    58d6:	701a      	strb	r2, [r3, #0]
    58d8:	b004      	add	sp, #16
    58da:	bd70      	pop	{r4, r5, r6, pc}
    58dc:	4b33      	ldr	r3, [pc, #204]	; (59ac <svcKernelInitialize+0xf4>)
    58de:	4e34      	ldr	r6, [pc, #208]	; (59b0 <svcKernelInitialize+0xf8>)
    58e0:	6819      	ldr	r1, [r3, #0]
    58e2:	0030      	movs	r0, r6
    58e4:	f001 fc60 	bl	71a8 <rt_init_mem>
    58e8:	0003      	movs	r3, r0
    58ea:	2085      	movs	r0, #133	; 0x85
    58ec:	2b00      	cmp	r3, #0
    58ee:	d1f3      	bne.n	58d8 <svcKernelInitialize+0x20>
    58f0:	f002 fe70 	bl	85d4 <rt_sys_init>
    58f4:	21ff      	movs	r1, #255	; 0xff
    58f6:	4a2b      	ldr	r2, [pc, #172]	; (59a4 <svcKernelInitialize+0xec>)
    58f8:	7823      	ldrb	r3, [r4, #0]
    58fa:	6812      	ldr	r2, [r2, #0]
    58fc:	7091      	strb	r1, [r2, #2]
    58fe:	2b00      	cmp	r3, #0
    5900:	d1e4      	bne.n	58cc <svcKernelInitialize+0x14>
    5902:	4b2c      	ldr	r3, [pc, #176]	; (59b4 <svcKernelInitialize+0xfc>)
    5904:	681a      	ldr	r2, [r3, #0]
    5906:	9201      	str	r2, [sp, #4]
    5908:	2a00      	cmp	r2, #0
    590a:	d047      	beq.n	599c <svcKernelInitialize+0xe4>
    590c:	685d      	ldr	r5, [r3, #4]
    590e:	2d00      	cmp	r5, #0
    5910:	d044      	beq.n	599c <svcKernelInitialize+0xe4>
    5912:	782b      	ldrb	r3, [r5, #0]
    5914:	2b00      	cmp	r3, #0
    5916:	d141      	bne.n	599c <svcKernelInitialize+0xe4>
    5918:	0011      	movs	r1, r2
    591a:	3104      	adds	r1, #4
    591c:	0089      	lsls	r1, r1, #2
    591e:	b289      	uxth	r1, r1
    5920:	0028      	movs	r0, r5
    5922:	f001 feeb 	bl	76fc <rt_mbx_init>
    5926:	4b24      	ldr	r3, [pc, #144]	; (59b8 <svcKernelInitialize+0x100>)
    5928:	601d      	str	r5, [r3, #0]
    592a:	4b24      	ldr	r3, [pc, #144]	; (59bc <svcKernelInitialize+0x104>)
    592c:	681a      	ldr	r2, [r3, #0]
    592e:	9201      	str	r2, [sp, #4]
    5930:	2a00      	cmp	r2, #0
    5932:	d01e      	beq.n	5972 <svcKernelInitialize+0xba>
    5934:	685a      	ldr	r2, [r3, #4]
    5936:	9202      	str	r2, [sp, #8]
    5938:	3203      	adds	r2, #3
    593a:	2a06      	cmp	r2, #6
    593c:	d819      	bhi.n	5972 <svcKernelInitialize+0xba>
    593e:	68db      	ldr	r3, [r3, #12]
    5940:	9303      	str	r3, [sp, #12]
    5942:	2b00      	cmp	r3, #0
    5944:	d019      	beq.n	597a <svcKernelInitialize+0xc2>
    5946:	0019      	movs	r1, r3
    5948:	0030      	movs	r0, r6
    594a:	f001 fc3b 	bl	71c4 <rt_alloc_mem>
    594e:	1e05      	subs	r5, r0, #0
    5950:	d00f      	beq.n	5972 <svcKernelInitialize+0xba>
    5952:	9b03      	ldr	r3, [sp, #12]
    5954:	9902      	ldr	r1, [sp, #8]
    5956:	021b      	lsls	r3, r3, #8
    5958:	3104      	adds	r1, #4
    595a:	4319      	orrs	r1, r3
    595c:	0002      	movs	r2, r0
    595e:	2300      	movs	r3, #0
    5960:	9801      	ldr	r0, [sp, #4]
    5962:	f002 fcf7 	bl	8354 <rt_tsk_create>
    5966:	2800      	cmp	r0, #0
    5968:	d110      	bne.n	598c <svcKernelInitialize+0xd4>
    596a:	0029      	movs	r1, r5
    596c:	0030      	movs	r0, r6
    596e:	f001 fc4b 	bl	7208 <rt_free_mem>
    5972:	2300      	movs	r3, #0
    5974:	4a12      	ldr	r2, [pc, #72]	; (59c0 <svcKernelInitialize+0x108>)
    5976:	6013      	str	r3, [r2, #0]
    5978:	e7a8      	b.n	58cc <svcKernelInitialize+0x14>
    597a:	9902      	ldr	r1, [sp, #8]
    597c:	2300      	movs	r3, #0
    597e:	3104      	adds	r1, #4
    5980:	2200      	movs	r2, #0
    5982:	9801      	ldr	r0, [sp, #4]
    5984:	f002 fce6 	bl	8354 <rt_tsk_create>
    5988:	2800      	cmp	r0, #0
    598a:	d0f2      	beq.n	5972 <svcKernelInitialize+0xba>
    598c:	3801      	subs	r0, #1
    598e:	4b0d      	ldr	r3, [pc, #52]	; (59c4 <svcKernelInitialize+0x10c>)
    5990:	0080      	lsls	r0, r0, #2
    5992:	58c3      	ldr	r3, [r0, r3]
    5994:	490c      	ldr	r1, [pc, #48]	; (59c8 <svcKernelInitialize+0x110>)
    5996:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5998:	6351      	str	r1, [r2, #52]	; 0x34
    599a:	e7eb      	b.n	5974 <svcKernelInitialize+0xbc>
    599c:	2500      	movs	r5, #0
    599e:	e7c2      	b.n	5926 <svcKernelInitialize+0x6e>
    59a0:	20006074 	.word	0x20006074
    59a4:	200060b4 	.word	0x200060b4
    59a8:	20006075 	.word	0x20006075
    59ac:	000088d8 	.word	0x000088d8
    59b0:	200039f8 	.word	0x200039f8
    59b4:	000088f0 	.word	0x000088f0
    59b8:	20004d10 	.word	0x20004d10
    59bc:	000088e0 	.word	0x000088e0
    59c0:	20004cec 	.word	0x20004cec
    59c4:	20004cdc 	.word	0x20004cdc
    59c8:	000058a1 	.word	0x000058a1

000059cc <svcKernelStart>:
    59cc:	b570      	push	{r4, r5, r6, lr}
    59ce:	4c10      	ldr	r4, [pc, #64]	; (5a10 <svcKernelStart+0x44>)
    59d0:	7823      	ldrb	r3, [r4, #0]
    59d2:	2b00      	cmp	r3, #0
    59d4:	d001      	beq.n	59da <svcKernelStart+0xe>
    59d6:	2000      	movs	r0, #0
    59d8:	bd70      	pop	{r4, r5, r6, pc}
    59da:	4d0e      	ldr	r5, [pc, #56]	; (5a14 <svcKernelStart+0x48>)
    59dc:	3324      	adds	r3, #36	; 0x24
    59de:	682a      	ldr	r2, [r5, #0]
    59e0:	2000      	movs	r0, #0
    59e2:	5cd1      	ldrb	r1, [r2, r3]
    59e4:	f002 fc5a 	bl	829c <rt_tsk_prio>
    59e8:	682b      	ldr	r3, [r5, #0]
    59ea:	78da      	ldrb	r2, [r3, #3]
    59ec:	2aff      	cmp	r2, #255	; 0xff
    59ee:	d007      	beq.n	5a00 <svcKernelStart+0x34>
    59f0:	686a      	ldr	r2, [r5, #4]
    59f2:	2a00      	cmp	r2, #0
    59f4:	d009      	beq.n	5a0a <svcKernelStart+0x3e>
    59f6:	f002 fe65 	bl	86c4 <rt_sys_start>
    59fa:	2301      	movs	r3, #1
    59fc:	7023      	strb	r3, [r4, #0]
    59fe:	e7ea      	b.n	59d6 <svcKernelStart+0xa>
    5a00:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5a02:	3220      	adds	r2, #32
    5a04:	f382 8809 	msr	PSP, r2
    5a08:	e7f2      	b.n	59f0 <svcKernelStart+0x24>
    5a0a:	c50c      	stmia	r5!, {r2, r3}
    5a0c:	e7f3      	b.n	59f6 <svcKernelStart+0x2a>
    5a0e:	46c0      	nop			; (mov r8, r8)
    5a10:	20006075 	.word	0x20006075
    5a14:	200060b4 	.word	0x200060b4

00005a18 <svcKernelRunning>:
    5a18:	4b01      	ldr	r3, [pc, #4]	; (5a20 <svcKernelRunning+0x8>)
    5a1a:	7818      	ldrb	r0, [r3, #0]
    5a1c:	4770      	bx	lr
    5a1e:	46c0      	nop			; (mov r8, r8)
    5a20:	20006075 	.word	0x20006075

00005a24 <svcKernelSysTick>:
    5a24:	b510      	push	{r4, lr}
    5a26:	b082      	sub	sp, #8
    5a28:	f002 fb88 	bl	813c <os_tick_val>
    5a2c:	0004      	movs	r4, r0
    5a2e:	f002 fb8f 	bl	8150 <os_tick_ovf>
    5a32:	2800      	cmp	r0, #0
    5a34:	d109      	bne.n	5a4a <svcKernelSysTick+0x26>
    5a36:	4b0d      	ldr	r3, [pc, #52]	; (5a6c <svcKernelSysTick+0x48>)
    5a38:	681b      	ldr	r3, [r3, #0]
    5a3a:	1c58      	adds	r0, r3, #1
    5a3c:	9301      	str	r3, [sp, #4]
    5a3e:	4b0c      	ldr	r3, [pc, #48]	; (5a70 <svcKernelSysTick+0x4c>)
    5a40:	681b      	ldr	r3, [r3, #0]
    5a42:	4358      	muls	r0, r3
    5a44:	1900      	adds	r0, r0, r4
    5a46:	b002      	add	sp, #8
    5a48:	bd10      	pop	{r4, pc}
    5a4a:	f002 fb77 	bl	813c <os_tick_val>
    5a4e:	4284      	cmp	r4, r0
    5a50:	d809      	bhi.n	5a66 <svcKernelSysTick+0x42>
    5a52:	4b06      	ldr	r3, [pc, #24]	; (5a6c <svcKernelSysTick+0x48>)
    5a54:	4a06      	ldr	r2, [pc, #24]	; (5a70 <svcKernelSysTick+0x4c>)
    5a56:	681b      	ldr	r3, [r3, #0]
    5a58:	6810      	ldr	r0, [r2, #0]
    5a5a:	9301      	str	r3, [sp, #4]
    5a5c:	3001      	adds	r0, #1
    5a5e:	3301      	adds	r3, #1
    5a60:	4358      	muls	r0, r3
    5a62:	1900      	adds	r0, r0, r4
    5a64:	e7ef      	b.n	5a46 <svcKernelSysTick+0x22>
    5a66:	0004      	movs	r4, r0
    5a68:	e7f3      	b.n	5a52 <svcKernelSysTick+0x2e>
    5a6a:	46c0      	nop			; (mov r8, r8)
    5a6c:	000088b8 	.word	0x000088b8
    5a70:	2000607c 	.word	0x2000607c

00005a74 <osKernelInitialize>:
    5a74:	b5f0      	push	{r4, r5, r6, r7, lr}
    5a76:	b085      	sub	sp, #20
    5a78:	f3ef 8405 	mrs	r4, IPSR
    5a7c:	2582      	movs	r5, #130	; 0x82
    5a7e:	2c00      	cmp	r4, #0
    5a80:	d002      	beq.n	5a88 <osKernelInitialize+0x14>
    5a82:	0028      	movs	r0, r5
    5a84:	b005      	add	sp, #20
    5a86:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5a88:	f3ef 8414 	mrs	r4, CONTROL
    5a8c:	07e4      	lsls	r4, r4, #31
    5a8e:	d504      	bpl.n	5a9a <osKernelInitialize+0x26>
    5a90:	4f45      	ldr	r7, [pc, #276]	; (5ba8 <osKernelInitialize+0x134>)
    5a92:	46bc      	mov	ip, r7
    5a94:	df00      	svc	0
    5a96:	0005      	movs	r5, r0
    5a98:	e7f3      	b.n	5a82 <osKernelInitialize+0xe>
    5a9a:	4c38      	ldr	r4, [pc, #224]	; (5b7c <osKernelInitialize+0x108>)
    5a9c:	7823      	ldrb	r3, [r4, #0]
    5a9e:	2b00      	cmp	r3, #0
    5aa0:	d00a      	beq.n	5ab8 <osKernelInitialize+0x44>
    5aa2:	22ff      	movs	r2, #255	; 0xff
    5aa4:	4b36      	ldr	r3, [pc, #216]	; (5b80 <osKernelInitialize+0x10c>)
    5aa6:	681b      	ldr	r3, [r3, #0]
    5aa8:	709a      	strb	r2, [r3, #2]
    5aaa:	2301      	movs	r3, #1
    5aac:	2200      	movs	r2, #0
    5aae:	7023      	strb	r3, [r4, #0]
    5ab0:	4b34      	ldr	r3, [pc, #208]	; (5b84 <osKernelInitialize+0x110>)
    5ab2:	2500      	movs	r5, #0
    5ab4:	701a      	strb	r2, [r3, #0]
    5ab6:	e7e4      	b.n	5a82 <osKernelInitialize+0xe>
    5ab8:	4e33      	ldr	r6, [pc, #204]	; (5b88 <osKernelInitialize+0x114>)
    5aba:	4b34      	ldr	r3, [pc, #208]	; (5b8c <osKernelInitialize+0x118>)
    5abc:	0030      	movs	r0, r6
    5abe:	6819      	ldr	r1, [r3, #0]
    5ac0:	f001 fb72 	bl	71a8 <rt_init_mem>
    5ac4:	3503      	adds	r5, #3
    5ac6:	2800      	cmp	r0, #0
    5ac8:	d1db      	bne.n	5a82 <osKernelInitialize+0xe>
    5aca:	f002 fd83 	bl	85d4 <rt_sys_init>
    5ace:	21ff      	movs	r1, #255	; 0xff
    5ad0:	4a2b      	ldr	r2, [pc, #172]	; (5b80 <osKernelInitialize+0x10c>)
    5ad2:	7823      	ldrb	r3, [r4, #0]
    5ad4:	6812      	ldr	r2, [r2, #0]
    5ad6:	7091      	strb	r1, [r2, #2]
    5ad8:	2b00      	cmp	r3, #0
    5ada:	d1e6      	bne.n	5aaa <osKernelInitialize+0x36>
    5adc:	4b2c      	ldr	r3, [pc, #176]	; (5b90 <osKernelInitialize+0x11c>)
    5ade:	681a      	ldr	r2, [r3, #0]
    5ae0:	9201      	str	r2, [sp, #4]
    5ae2:	2a00      	cmp	r2, #0
    5ae4:	d047      	beq.n	5b76 <osKernelInitialize+0x102>
    5ae6:	685d      	ldr	r5, [r3, #4]
    5ae8:	2d00      	cmp	r5, #0
    5aea:	d044      	beq.n	5b76 <osKernelInitialize+0x102>
    5aec:	782b      	ldrb	r3, [r5, #0]
    5aee:	2b00      	cmp	r3, #0
    5af0:	d141      	bne.n	5b76 <osKernelInitialize+0x102>
    5af2:	0011      	movs	r1, r2
    5af4:	3104      	adds	r1, #4
    5af6:	0089      	lsls	r1, r1, #2
    5af8:	b289      	uxth	r1, r1
    5afa:	0028      	movs	r0, r5
    5afc:	f001 fdfe 	bl	76fc <rt_mbx_init>
    5b00:	4b24      	ldr	r3, [pc, #144]	; (5b94 <osKernelInitialize+0x120>)
    5b02:	601d      	str	r5, [r3, #0]
    5b04:	4b24      	ldr	r3, [pc, #144]	; (5b98 <osKernelInitialize+0x124>)
    5b06:	681a      	ldr	r2, [r3, #0]
    5b08:	9201      	str	r2, [sp, #4]
    5b0a:	2a00      	cmp	r2, #0
    5b0c:	d01e      	beq.n	5b4c <osKernelInitialize+0xd8>
    5b0e:	685a      	ldr	r2, [r3, #4]
    5b10:	9202      	str	r2, [sp, #8]
    5b12:	3203      	adds	r2, #3
    5b14:	2a06      	cmp	r2, #6
    5b16:	d819      	bhi.n	5b4c <osKernelInitialize+0xd8>
    5b18:	68db      	ldr	r3, [r3, #12]
    5b1a:	9303      	str	r3, [sp, #12]
    5b1c:	2b00      	cmp	r3, #0
    5b1e:	d019      	beq.n	5b54 <osKernelInitialize+0xe0>
    5b20:	0019      	movs	r1, r3
    5b22:	0030      	movs	r0, r6
    5b24:	f001 fb4e 	bl	71c4 <rt_alloc_mem>
    5b28:	1e05      	subs	r5, r0, #0
    5b2a:	d00f      	beq.n	5b4c <osKernelInitialize+0xd8>
    5b2c:	9902      	ldr	r1, [sp, #8]
    5b2e:	9b03      	ldr	r3, [sp, #12]
    5b30:	3104      	adds	r1, #4
    5b32:	021b      	lsls	r3, r3, #8
    5b34:	4319      	orrs	r1, r3
    5b36:	0002      	movs	r2, r0
    5b38:	2300      	movs	r3, #0
    5b3a:	9801      	ldr	r0, [sp, #4]
    5b3c:	f002 fc0a 	bl	8354 <rt_tsk_create>
    5b40:	2800      	cmp	r0, #0
    5b42:	d110      	bne.n	5b66 <osKernelInitialize+0xf2>
    5b44:	0029      	movs	r1, r5
    5b46:	0030      	movs	r0, r6
    5b48:	f001 fb5e 	bl	7208 <rt_free_mem>
    5b4c:	2300      	movs	r3, #0
    5b4e:	4a13      	ldr	r2, [pc, #76]	; (5b9c <osKernelInitialize+0x128>)
    5b50:	6013      	str	r3, [r2, #0]
    5b52:	e7aa      	b.n	5aaa <osKernelInitialize+0x36>
    5b54:	9902      	ldr	r1, [sp, #8]
    5b56:	2300      	movs	r3, #0
    5b58:	3104      	adds	r1, #4
    5b5a:	2200      	movs	r2, #0
    5b5c:	9801      	ldr	r0, [sp, #4]
    5b5e:	f002 fbf9 	bl	8354 <rt_tsk_create>
    5b62:	2800      	cmp	r0, #0
    5b64:	d0f2      	beq.n	5b4c <osKernelInitialize+0xd8>
    5b66:	3801      	subs	r0, #1
    5b68:	4b0d      	ldr	r3, [pc, #52]	; (5ba0 <osKernelInitialize+0x12c>)
    5b6a:	0080      	lsls	r0, r0, #2
    5b6c:	58c3      	ldr	r3, [r0, r3]
    5b6e:	490d      	ldr	r1, [pc, #52]	; (5ba4 <osKernelInitialize+0x130>)
    5b70:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5b72:	6351      	str	r1, [r2, #52]	; 0x34
    5b74:	e7eb      	b.n	5b4e <osKernelInitialize+0xda>
    5b76:	2500      	movs	r5, #0
    5b78:	e7c2      	b.n	5b00 <osKernelInitialize+0x8c>
    5b7a:	46c0      	nop			; (mov r8, r8)
    5b7c:	20006074 	.word	0x20006074
    5b80:	200060b4 	.word	0x200060b4
    5b84:	20006075 	.word	0x20006075
    5b88:	200039f8 	.word	0x200039f8
    5b8c:	000088d8 	.word	0x000088d8
    5b90:	000088f0 	.word	0x000088f0
    5b94:	20004d10 	.word	0x20004d10
    5b98:	000088e0 	.word	0x000088e0
    5b9c:	20004cec 	.word	0x20004cec
    5ba0:	20004cdc 	.word	0x20004cdc
    5ba4:	000058a1 	.word	0x000058a1
    5ba8:	000058b9 	.word	0x000058b9

00005bac <osKernelStart>:
    5bac:	b5b0      	push	{r4, r5, r7, lr}
    5bae:	b088      	sub	sp, #32
    5bb0:	f3ef 8405 	mrs	r4, IPSR
    5bb4:	2582      	movs	r5, #130	; 0x82
    5bb6:	2c00      	cmp	r4, #0
    5bb8:	d002      	beq.n	5bc0 <osKernelStart+0x14>
    5bba:	0028      	movs	r0, r5
    5bbc:	b008      	add	sp, #32
    5bbe:	bdb0      	pop	{r4, r5, r7, pc}
    5bc0:	f3ef 8414 	mrs	r4, CONTROL
    5bc4:	3d7f      	subs	r5, #127	; 0x7f
    5bc6:	402c      	ands	r4, r5
    5bc8:	2c02      	cmp	r4, #2
    5bca:	d01c      	beq.n	5c06 <osKernelStart+0x5a>
    5bcc:	2c03      	cmp	r4, #3
    5bce:	d014      	beq.n	5bfa <osKernelStart+0x4e>
    5bd0:	2c01      	cmp	r4, #1
    5bd2:	d020      	beq.n	5c16 <osKernelStart+0x6a>
    5bd4:	ac08      	add	r4, sp, #32
    5bd6:	f384 8809 	msr	PSP, r4
    5bda:	4c10      	ldr	r4, [pc, #64]	; (5c1c <osKernelStart+0x70>)
    5bdc:	7824      	ldrb	r4, [r4, #0]
    5bde:	07e4      	lsls	r4, r4, #31
    5be0:	d515      	bpl.n	5c0e <osKernelStart+0x62>
    5be2:	2402      	movs	r4, #2
    5be4:	f384 8814 	msr	CONTROL, r4
    5be8:	f3bf 8f4f 	dsb	sy
    5bec:	f3bf 8f6f 	isb	sy
    5bf0:	4f0b      	ldr	r7, [pc, #44]	; (5c20 <osKernelStart+0x74>)
    5bf2:	46bc      	mov	ip, r7
    5bf4:	df00      	svc	0
    5bf6:	0005      	movs	r5, r0
    5bf8:	e7df      	b.n	5bba <osKernelStart+0xe>
    5bfa:	4c08      	ldr	r4, [pc, #32]	; (5c1c <osKernelStart+0x70>)
    5bfc:	25ff      	movs	r5, #255	; 0xff
    5bfe:	7824      	ldrb	r4, [r4, #0]
    5c00:	07e4      	lsls	r4, r4, #31
    5c02:	d4da      	bmi.n	5bba <osKernelStart+0xe>
    5c04:	e7f4      	b.n	5bf0 <osKernelStart+0x44>
    5c06:	4c05      	ldr	r4, [pc, #20]	; (5c1c <osKernelStart+0x70>)
    5c08:	7824      	ldrb	r4, [r4, #0]
    5c0a:	07e4      	lsls	r4, r4, #31
    5c0c:	d4f0      	bmi.n	5bf0 <osKernelStart+0x44>
    5c0e:	2403      	movs	r4, #3
    5c10:	f384 8814 	msr	CONTROL, r4
    5c14:	e7e8      	b.n	5be8 <osKernelStart+0x3c>
    5c16:	25ff      	movs	r5, #255	; 0xff
    5c18:	e7cf      	b.n	5bba <osKernelStart+0xe>
    5c1a:	46c0      	nop			; (mov r8, r8)
    5c1c:	000088bc 	.word	0x000088bc
    5c20:	000059cd 	.word	0x000059cd

00005c24 <osKernelRunning>:
    5c24:	b590      	push	{r4, r7, lr}
    5c26:	f3ef 8405 	mrs	r4, IPSR
    5c2a:	2c00      	cmp	r4, #0
    5c2c:	d107      	bne.n	5c3e <osKernelRunning+0x1a>
    5c2e:	f3ef 8414 	mrs	r4, CONTROL
    5c32:	07e4      	lsls	r4, r4, #31
    5c34:	d503      	bpl.n	5c3e <osKernelRunning+0x1a>
    5c36:	4f04      	ldr	r7, [pc, #16]	; (5c48 <osKernelRunning+0x24>)
    5c38:	46bc      	mov	ip, r7
    5c3a:	df00      	svc	0
    5c3c:	e001      	b.n	5c42 <osKernelRunning+0x1e>
    5c3e:	4b01      	ldr	r3, [pc, #4]	; (5c44 <osKernelRunning+0x20>)
    5c40:	7818      	ldrb	r0, [r3, #0]
    5c42:	bd90      	pop	{r4, r7, pc}
    5c44:	20006075 	.word	0x20006075
    5c48:	00005a19 	.word	0x00005a19

00005c4c <osKernelSysTick>:
    5c4c:	b5b0      	push	{r4, r5, r7, lr}
    5c4e:	f3ef 8405 	mrs	r4, IPSR
    5c52:	2500      	movs	r5, #0
    5c54:	2c00      	cmp	r4, #0
    5c56:	d103      	bne.n	5c60 <osKernelSysTick+0x14>
    5c58:	4f02      	ldr	r7, [pc, #8]	; (5c64 <osKernelSysTick+0x18>)
    5c5a:	46bc      	mov	ip, r7
    5c5c:	df00      	svc	0
    5c5e:	0005      	movs	r5, r0
    5c60:	0028      	movs	r0, r5
    5c62:	bdb0      	pop	{r4, r5, r7, pc}
    5c64:	00005a25 	.word	0x00005a25

00005c68 <svcThreadCreate>:
    5c68:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5c6a:	0004      	movs	r4, r0
    5c6c:	000d      	movs	r5, r1
    5c6e:	2800      	cmp	r0, #0
    5c70:	d01f      	beq.n	5cb2 <svcThreadCreate+0x4a>
    5c72:	6800      	ldr	r0, [r0, #0]
    5c74:	2800      	cmp	r0, #0
    5c76:	d01c      	beq.n	5cb2 <svcThreadCreate+0x4a>
    5c78:	6863      	ldr	r3, [r4, #4]
    5c7a:	1cda      	adds	r2, r3, #3
    5c7c:	2a06      	cmp	r2, #6
    5c7e:	d818      	bhi.n	5cb2 <svcThreadCreate+0x4a>
    5c80:	68e1      	ldr	r1, [r4, #12]
    5c82:	2900      	cmp	r1, #0
    5c84:	d017      	beq.n	5cb6 <svcThreadCreate+0x4e>
    5c86:	4e13      	ldr	r6, [pc, #76]	; (5cd4 <svcThreadCreate+0x6c>)
    5c88:	0030      	movs	r0, r6
    5c8a:	f001 fa9b 	bl	71c4 <rt_alloc_mem>
    5c8e:	1e07      	subs	r7, r0, #0
    5c90:	d00f      	beq.n	5cb2 <svcThreadCreate+0x4a>
    5c92:	6863      	ldr	r3, [r4, #4]
    5c94:	6820      	ldr	r0, [r4, #0]
    5c96:	1d19      	adds	r1, r3, #4
    5c98:	68e3      	ldr	r3, [r4, #12]
    5c9a:	003a      	movs	r2, r7
    5c9c:	021b      	lsls	r3, r3, #8
    5c9e:	4319      	orrs	r1, r3
    5ca0:	002b      	movs	r3, r5
    5ca2:	f002 fb57 	bl	8354 <rt_tsk_create>
    5ca6:	2800      	cmp	r0, #0
    5ca8:	d10c      	bne.n	5cc4 <svcThreadCreate+0x5c>
    5caa:	0039      	movs	r1, r7
    5cac:	0030      	movs	r0, r6
    5cae:	f001 faab 	bl	7208 <rt_free_mem>
    5cb2:	2000      	movs	r0, #0
    5cb4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5cb6:	1d19      	adds	r1, r3, #4
    5cb8:	2200      	movs	r2, #0
    5cba:	002b      	movs	r3, r5
    5cbc:	f002 fb4a 	bl	8354 <rt_tsk_create>
    5cc0:	2800      	cmp	r0, #0
    5cc2:	d0f6      	beq.n	5cb2 <svcThreadCreate+0x4a>
    5cc4:	4b04      	ldr	r3, [pc, #16]	; (5cd8 <svcThreadCreate+0x70>)
    5cc6:	3801      	subs	r0, #1
    5cc8:	0080      	lsls	r0, r0, #2
    5cca:	58c0      	ldr	r0, [r0, r3]
    5ccc:	4a03      	ldr	r2, [pc, #12]	; (5cdc <svcThreadCreate+0x74>)
    5cce:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5cd0:	635a      	str	r2, [r3, #52]	; 0x34
    5cd2:	e7ef      	b.n	5cb4 <svcThreadCreate+0x4c>
    5cd4:	200039f8 	.word	0x200039f8
    5cd8:	20004cdc 	.word	0x20004cdc
    5cdc:	000058a1 	.word	0x000058a1

00005ce0 <svcThreadGetId>:
    5ce0:	b510      	push	{r4, lr}
    5ce2:	f002 fad1 	bl	8288 <rt_tsk_self>
    5ce6:	2800      	cmp	r0, #0
    5ce8:	d004      	beq.n	5cf4 <svcThreadGetId+0x14>
    5cea:	3801      	subs	r0, #1
    5cec:	4b02      	ldr	r3, [pc, #8]	; (5cf8 <svcThreadGetId+0x18>)
    5cee:	0080      	lsls	r0, r0, #2
    5cf0:	58c0      	ldr	r0, [r0, r3]
    5cf2:	bd10      	pop	{r4, pc}
    5cf4:	2000      	movs	r0, #0
    5cf6:	e7fc      	b.n	5cf2 <svcThreadGetId+0x12>
    5cf8:	20004cdc 	.word	0x20004cdc

00005cfc <svcThreadTerminate>:
    5cfc:	0003      	movs	r3, r0
    5cfe:	b510      	push	{r4, lr}
    5d00:	2080      	movs	r0, #128	; 0x80
    5d02:	2b00      	cmp	r3, #0
    5d04:	d017      	beq.n	5d36 <svcThreadTerminate+0x3a>
    5d06:	079a      	lsls	r2, r3, #30
    5d08:	d115      	bne.n	5d36 <svcThreadTerminate+0x3a>
    5d0a:	781a      	ldrb	r2, [r3, #0]
    5d0c:	2a00      	cmp	r2, #0
    5d0e:	d112      	bne.n	5d36 <svcThreadTerminate+0x3a>
    5d10:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    5d12:	2400      	movs	r4, #0
    5d14:	2a00      	cmp	r2, #0
    5d16:	d000      	beq.n	5d1a <svcThreadTerminate+0x1e>
    5d18:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    5d1a:	78d8      	ldrb	r0, [r3, #3]
    5d1c:	f002 fb94 	bl	8448 <rt_tsk_delete>
    5d20:	0003      	movs	r3, r0
    5d22:	2081      	movs	r0, #129	; 0x81
    5d24:	2bff      	cmp	r3, #255	; 0xff
    5d26:	d006      	beq.n	5d36 <svcThreadTerminate+0x3a>
    5d28:	2c00      	cmp	r4, #0
    5d2a:	d005      	beq.n	5d38 <svcThreadTerminate+0x3c>
    5d2c:	0021      	movs	r1, r4
    5d2e:	4803      	ldr	r0, [pc, #12]	; (5d3c <svcThreadTerminate+0x40>)
    5d30:	f001 fa6a 	bl	7208 <rt_free_mem>
    5d34:	2000      	movs	r0, #0
    5d36:	bd10      	pop	{r4, pc}
    5d38:	2000      	movs	r0, #0
    5d3a:	e7fc      	b.n	5d36 <svcThreadTerminate+0x3a>
    5d3c:	200039f8 	.word	0x200039f8

00005d40 <svcThreadYield>:
    5d40:	b510      	push	{r4, lr}
    5d42:	f002 fa8b 	bl	825c <rt_tsk_pass>
    5d46:	2000      	movs	r0, #0
    5d48:	bd10      	pop	{r4, pc}
    5d4a:	46c0      	nop			; (mov r8, r8)

00005d4c <svcThreadSetPriority>:
    5d4c:	0003      	movs	r3, r0
    5d4e:	b510      	push	{r4, lr}
    5d50:	2080      	movs	r0, #128	; 0x80
    5d52:	2b00      	cmp	r3, #0
    5d54:	d008      	beq.n	5d68 <svcThreadSetPriority+0x1c>
    5d56:	079a      	lsls	r2, r3, #30
    5d58:	d106      	bne.n	5d68 <svcThreadSetPriority+0x1c>
    5d5a:	781a      	ldrb	r2, [r3, #0]
    5d5c:	2a00      	cmp	r2, #0
    5d5e:	d103      	bne.n	5d68 <svcThreadSetPriority+0x1c>
    5d60:	1cca      	adds	r2, r1, #3
    5d62:	2086      	movs	r0, #134	; 0x86
    5d64:	2a06      	cmp	r2, #6
    5d66:	d900      	bls.n	5d6a <svcThreadSetPriority+0x1e>
    5d68:	bd10      	pop	{r4, pc}
    5d6a:	3104      	adds	r1, #4
    5d6c:	78d8      	ldrb	r0, [r3, #3]
    5d6e:	b2c9      	uxtb	r1, r1
    5d70:	f002 fa94 	bl	829c <rt_tsk_prio>
    5d74:	0003      	movs	r3, r0
    5d76:	2081      	movs	r0, #129	; 0x81
    5d78:	2bff      	cmp	r3, #255	; 0xff
    5d7a:	d0f5      	beq.n	5d68 <svcThreadSetPriority+0x1c>
    5d7c:	2000      	movs	r0, #0
    5d7e:	e7f3      	b.n	5d68 <svcThreadSetPriority+0x1c>

00005d80 <svcThreadGetPriority>:
    5d80:	0003      	movs	r3, r0
    5d82:	2084      	movs	r0, #132	; 0x84
    5d84:	2b00      	cmp	r3, #0
    5d86:	d006      	beq.n	5d96 <svcThreadGetPriority+0x16>
    5d88:	079a      	lsls	r2, r3, #30
    5d8a:	d104      	bne.n	5d96 <svcThreadGetPriority+0x16>
    5d8c:	781a      	ldrb	r2, [r3, #0]
    5d8e:	2a00      	cmp	r2, #0
    5d90:	d101      	bne.n	5d96 <svcThreadGetPriority+0x16>
    5d92:	7898      	ldrb	r0, [r3, #2]
    5d94:	3804      	subs	r0, #4
    5d96:	4770      	bx	lr

00005d98 <osThreadCreate>:
    5d98:	b5f0      	push	{r4, r5, r6, r7, lr}
    5d9a:	4647      	mov	r7, r8
    5d9c:	0004      	movs	r4, r0
    5d9e:	b480      	push	{r7}
    5da0:	000d      	movs	r5, r1
    5da2:	f3ef 8105 	mrs	r1, IPSR
    5da6:	2900      	cmp	r1, #0
    5da8:	d132      	bne.n	5e10 <osThreadCreate+0x78>
    5daa:	f3ef 8114 	mrs	r1, CONTROL
    5dae:	07c9      	lsls	r1, r1, #31
    5db0:	d507      	bpl.n	5dc2 <osThreadCreate+0x2a>
    5db2:	0020      	movs	r0, r4
    5db4:	0029      	movs	r1, r5
    5db6:	4f23      	ldr	r7, [pc, #140]	; (5e44 <osThreadCreate+0xac>)
    5db8:	46bc      	mov	ip, r7
    5dba:	df00      	svc	0
    5dbc:	bc04      	pop	{r2}
    5dbe:	4690      	mov	r8, r2
    5dc0:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5dc2:	491c      	ldr	r1, [pc, #112]	; (5e34 <osThreadCreate+0x9c>)
    5dc4:	7809      	ldrb	r1, [r1, #0]
    5dc6:	2900      	cmp	r1, #0
    5dc8:	d1f3      	bne.n	5db2 <osThreadCreate+0x1a>
    5dca:	2800      	cmp	r0, #0
    5dcc:	d020      	beq.n	5e10 <osThreadCreate+0x78>
    5dce:	6800      	ldr	r0, [r0, #0]
    5dd0:	2800      	cmp	r0, #0
    5dd2:	d01d      	beq.n	5e10 <osThreadCreate+0x78>
    5dd4:	6863      	ldr	r3, [r4, #4]
    5dd6:	1cda      	adds	r2, r3, #3
    5dd8:	2a06      	cmp	r2, #6
    5dda:	d819      	bhi.n	5e10 <osThreadCreate+0x78>
    5ddc:	68e1      	ldr	r1, [r4, #12]
    5dde:	2900      	cmp	r1, #0
    5de0:	d018      	beq.n	5e14 <osThreadCreate+0x7c>
    5de2:	4e15      	ldr	r6, [pc, #84]	; (5e38 <osThreadCreate+0xa0>)
    5de4:	0030      	movs	r0, r6
    5de6:	f001 f9ed 	bl	71c4 <rt_alloc_mem>
    5dea:	4680      	mov	r8, r0
    5dec:	2800      	cmp	r0, #0
    5dee:	d00f      	beq.n	5e10 <osThreadCreate+0x78>
    5df0:	6863      	ldr	r3, [r4, #4]
    5df2:	6820      	ldr	r0, [r4, #0]
    5df4:	1d19      	adds	r1, r3, #4
    5df6:	68e3      	ldr	r3, [r4, #12]
    5df8:	4642      	mov	r2, r8
    5dfa:	021b      	lsls	r3, r3, #8
    5dfc:	4319      	orrs	r1, r3
    5dfe:	002b      	movs	r3, r5
    5e00:	f002 faa8 	bl	8354 <rt_tsk_create>
    5e04:	2800      	cmp	r0, #0
    5e06:	d10c      	bne.n	5e22 <osThreadCreate+0x8a>
    5e08:	4641      	mov	r1, r8
    5e0a:	0030      	movs	r0, r6
    5e0c:	f001 f9fc 	bl	7208 <rt_free_mem>
    5e10:	2000      	movs	r0, #0
    5e12:	e7d3      	b.n	5dbc <osThreadCreate+0x24>
    5e14:	1d19      	adds	r1, r3, #4
    5e16:	2200      	movs	r2, #0
    5e18:	002b      	movs	r3, r5
    5e1a:	f002 fa9b 	bl	8354 <rt_tsk_create>
    5e1e:	2800      	cmp	r0, #0
    5e20:	d0f6      	beq.n	5e10 <osThreadCreate+0x78>
    5e22:	4b06      	ldr	r3, [pc, #24]	; (5e3c <osThreadCreate+0xa4>)
    5e24:	3801      	subs	r0, #1
    5e26:	0080      	lsls	r0, r0, #2
    5e28:	58c0      	ldr	r0, [r0, r3]
    5e2a:	4a05      	ldr	r2, [pc, #20]	; (5e40 <osThreadCreate+0xa8>)
    5e2c:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5e2e:	635a      	str	r2, [r3, #52]	; 0x34
    5e30:	e7c4      	b.n	5dbc <osThreadCreate+0x24>
    5e32:	46c0      	nop			; (mov r8, r8)
    5e34:	20006075 	.word	0x20006075
    5e38:	200039f8 	.word	0x200039f8
    5e3c:	20004cdc 	.word	0x20004cdc
    5e40:	000058a1 	.word	0x000058a1
    5e44:	00005c69 	.word	0x00005c69

00005e48 <osThreadGetId>:
    5e48:	b590      	push	{r4, r7, lr}
    5e4a:	f3ef 8405 	mrs	r4, IPSR
    5e4e:	2c00      	cmp	r4, #0
    5e50:	d103      	bne.n	5e5a <osThreadGetId+0x12>
    5e52:	4f03      	ldr	r7, [pc, #12]	; (5e60 <osThreadGetId+0x18>)
    5e54:	46bc      	mov	ip, r7
    5e56:	df00      	svc	0
    5e58:	bd90      	pop	{r4, r7, pc}
    5e5a:	2000      	movs	r0, #0
    5e5c:	e7fc      	b.n	5e58 <osThreadGetId+0x10>
    5e5e:	0000      	.short	0x0000
    5e60:	00005ce1 	.word	0x00005ce1

00005e64 <osThreadTerminate>:
    5e64:	b5b0      	push	{r4, r5, r7, lr}
    5e66:	0005      	movs	r5, r0
    5e68:	f3ef 8405 	mrs	r4, IPSR
    5e6c:	2082      	movs	r0, #130	; 0x82
    5e6e:	2c00      	cmp	r4, #0
    5e70:	d000      	beq.n	5e74 <osThreadTerminate+0x10>
    5e72:	bdb0      	pop	{r4, r5, r7, pc}
    5e74:	0028      	movs	r0, r5
    5e76:	4f02      	ldr	r7, [pc, #8]	; (5e80 <osThreadTerminate+0x1c>)
    5e78:	46bc      	mov	ip, r7
    5e7a:	df00      	svc	0
    5e7c:	e7f9      	b.n	5e72 <osThreadTerminate+0xe>
    5e7e:	0000      	.short	0x0000
    5e80:	00005cfd 	.word	0x00005cfd

00005e84 <osThreadYield>:
    5e84:	b5b0      	push	{r4, r5, r7, lr}
    5e86:	f3ef 8405 	mrs	r4, IPSR
    5e8a:	2582      	movs	r5, #130	; 0x82
    5e8c:	2c00      	cmp	r4, #0
    5e8e:	d001      	beq.n	5e94 <osThreadYield+0x10>
    5e90:	0028      	movs	r0, r5
    5e92:	bdb0      	pop	{r4, r5, r7, pc}
    5e94:	4f02      	ldr	r7, [pc, #8]	; (5ea0 <osThreadYield+0x1c>)
    5e96:	46bc      	mov	ip, r7
    5e98:	df00      	svc	0
    5e9a:	0005      	movs	r5, r0
    5e9c:	e7f8      	b.n	5e90 <osThreadYield+0xc>
    5e9e:	0000      	.short	0x0000
    5ea0:	00005d41 	.word	0x00005d41

00005ea4 <osThreadSetPriority>:
    5ea4:	b5b0      	push	{r4, r5, r7, lr}
    5ea6:	0005      	movs	r5, r0
    5ea8:	f3ef 8405 	mrs	r4, IPSR
    5eac:	2082      	movs	r0, #130	; 0x82
    5eae:	2c00      	cmp	r4, #0
    5eb0:	d000      	beq.n	5eb4 <osThreadSetPriority+0x10>
    5eb2:	bdb0      	pop	{r4, r5, r7, pc}
    5eb4:	0028      	movs	r0, r5
    5eb6:	4f02      	ldr	r7, [pc, #8]	; (5ec0 <osThreadSetPriority+0x1c>)
    5eb8:	46bc      	mov	ip, r7
    5eba:	df00      	svc	0
    5ebc:	e7f9      	b.n	5eb2 <osThreadSetPriority+0xe>
    5ebe:	0000      	.short	0x0000
    5ec0:	00005d4d 	.word	0x00005d4d

00005ec4 <osThreadGetPriority>:
    5ec4:	b5b0      	push	{r4, r5, r7, lr}
    5ec6:	0005      	movs	r5, r0
    5ec8:	f3ef 8405 	mrs	r4, IPSR
    5ecc:	2084      	movs	r0, #132	; 0x84
    5ece:	2c00      	cmp	r4, #0
    5ed0:	d000      	beq.n	5ed4 <osThreadGetPriority+0x10>
    5ed2:	bdb0      	pop	{r4, r5, r7, pc}
    5ed4:	0028      	movs	r0, r5
    5ed6:	4f02      	ldr	r7, [pc, #8]	; (5ee0 <osThreadGetPriority+0x1c>)
    5ed8:	46bc      	mov	ip, r7
    5eda:	df00      	svc	0
    5edc:	e7f9      	b.n	5ed2 <osThreadGetPriority+0xe>
    5ede:	0000      	.short	0x0000
    5ee0:	00005d81 	.word	0x00005d81

00005ee4 <svcDelay>:
    5ee4:	b500      	push	{lr}
    5ee6:	b083      	sub	sp, #12
    5ee8:	2800      	cmp	r0, #0
    5eea:	d019      	beq.n	5f20 <svcDelay+0x3c>
    5eec:	1c43      	adds	r3, r0, #1
    5eee:	d01c      	beq.n	5f2a <svcDelay+0x46>
    5ef0:	4b10      	ldr	r3, [pc, #64]	; (5f34 <svcDelay+0x50>)
    5ef2:	4298      	cmp	r0, r3
    5ef4:	d817      	bhi.n	5f26 <svcDelay+0x42>
    5ef6:	4b10      	ldr	r3, [pc, #64]	; (5f38 <svcDelay+0x54>)
    5ef8:	681b      	ldr	r3, [r3, #0]
    5efa:	9301      	str	r3, [sp, #4]
    5efc:	23fa      	movs	r3, #250	; 0xfa
    5efe:	009b      	lsls	r3, r3, #2
    5f00:	4358      	muls	r0, r3
    5f02:	9b01      	ldr	r3, [sp, #4]
    5f04:	9901      	ldr	r1, [sp, #4]
    5f06:	3b01      	subs	r3, #1
    5f08:	18c0      	adds	r0, r0, r3
    5f0a:	f7fe fb99 	bl	4640 <__aeabi_uidiv>
    5f0e:	4b0b      	ldr	r3, [pc, #44]	; (5f3c <svcDelay+0x58>)
    5f10:	0002      	movs	r2, r0
    5f12:	0018      	movs	r0, r3
    5f14:	429a      	cmp	r2, r3
    5f16:	d90a      	bls.n	5f2e <svcDelay+0x4a>
    5f18:	f001 fb34 	bl	7584 <rt_dly_wait>
    5f1c:	2040      	movs	r0, #64	; 0x40
    5f1e:	e000      	b.n	5f22 <svcDelay+0x3e>
    5f20:	2000      	movs	r0, #0
    5f22:	b003      	add	sp, #12
    5f24:	bd00      	pop	{pc}
    5f26:	4805      	ldr	r0, [pc, #20]	; (5f3c <svcDelay+0x58>)
    5f28:	e7f6      	b.n	5f18 <svcDelay+0x34>
    5f2a:	4805      	ldr	r0, [pc, #20]	; (5f40 <svcDelay+0x5c>)
    5f2c:	e7f4      	b.n	5f18 <svcDelay+0x34>
    5f2e:	b290      	uxth	r0, r2
    5f30:	e7f2      	b.n	5f18 <svcDelay+0x34>
    5f32:	46c0      	nop			; (mov r8, r8)
    5f34:	003d0900 	.word	0x003d0900
    5f38:	000088c8 	.word	0x000088c8
    5f3c:	0000fffe 	.word	0x0000fffe
    5f40:	0000ffff 	.word	0x0000ffff

00005f44 <osDelay>:
    5f44:	b5b0      	push	{r4, r5, r7, lr}
    5f46:	0005      	movs	r5, r0
    5f48:	f3ef 8405 	mrs	r4, IPSR
    5f4c:	2082      	movs	r0, #130	; 0x82
    5f4e:	2c00      	cmp	r4, #0
    5f50:	d000      	beq.n	5f54 <osDelay+0x10>
    5f52:	bdb0      	pop	{r4, r5, r7, pc}
    5f54:	0028      	movs	r0, r5
    5f56:	4f02      	ldr	r7, [pc, #8]	; (5f60 <osDelay+0x1c>)
    5f58:	46bc      	mov	ip, r7
    5f5a:	df00      	svc	0
    5f5c:	e7f9      	b.n	5f52 <osDelay+0xe>
    5f5e:	0000      	.short	0x0000
    5f60:	00005ee5 	.word	0x00005ee5

00005f64 <osWait>:
    5f64:	23ff      	movs	r3, #255	; 0xff
    5f66:	6003      	str	r3, [r0, #0]
    5f68:	4770      	bx	lr
    5f6a:	46c0      	nop			; (mov r8, r8)

00005f6c <svcTimerCreate>:
    5f6c:	b510      	push	{r4, lr}
    5f6e:	2800      	cmp	r0, #0
    5f70:	d016      	beq.n	5fa0 <svcTimerCreate+0x34>
    5f72:	6803      	ldr	r3, [r0, #0]
    5f74:	2b00      	cmp	r3, #0
    5f76:	d013      	beq.n	5fa0 <svcTimerCreate+0x34>
    5f78:	6843      	ldr	r3, [r0, #4]
    5f7a:	2b00      	cmp	r3, #0
    5f7c:	d010      	beq.n	5fa0 <svcTimerCreate+0x34>
    5f7e:	2901      	cmp	r1, #1
    5f80:	d80e      	bhi.n	5fa0 <svcTimerCreate+0x34>
    5f82:	4c08      	ldr	r4, [pc, #32]	; (5fa4 <svcTimerCreate+0x38>)
    5f84:	6824      	ldr	r4, [r4, #0]
    5f86:	2c00      	cmp	r4, #0
    5f88:	d00a      	beq.n	5fa0 <svcTimerCreate+0x34>
    5f8a:	791c      	ldrb	r4, [r3, #4]
    5f8c:	2c00      	cmp	r4, #0
    5f8e:	d107      	bne.n	5fa0 <svcTimerCreate+0x34>
    5f90:	6158      	str	r0, [r3, #20]
    5f92:	0018      	movs	r0, r3
    5f94:	601c      	str	r4, [r3, #0]
    5f96:	3401      	adds	r4, #1
    5f98:	711c      	strb	r4, [r3, #4]
    5f9a:	7159      	strb	r1, [r3, #5]
    5f9c:	611a      	str	r2, [r3, #16]
    5f9e:	bd10      	pop	{r4, pc}
    5fa0:	2000      	movs	r0, #0
    5fa2:	e7fc      	b.n	5f9e <svcTimerCreate+0x32>
    5fa4:	20004cec 	.word	0x20004cec

00005fa8 <svcTimerStart>:
    5fa8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5faa:	0004      	movs	r4, r0
    5fac:	2080      	movs	r0, #128	; 0x80
    5fae:	07a3      	lsls	r3, r4, #30
    5fb0:	d104      	bne.n	5fbc <svcTimerStart+0x14>
    5fb2:	2c00      	cmp	r4, #0
    5fb4:	d002      	beq.n	5fbc <svcTimerStart+0x14>
    5fb6:	3006      	adds	r0, #6
    5fb8:	2900      	cmp	r1, #0
    5fba:	d100      	bne.n	5fbe <svcTimerStart+0x16>
    5fbc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5fbe:	22fa      	movs	r2, #250	; 0xfa
    5fc0:	4b2f      	ldr	r3, [pc, #188]	; (6080 <svcTimerStart+0xd8>)
    5fc2:	0092      	lsls	r2, r2, #2
    5fc4:	681e      	ldr	r6, [r3, #0]
    5fc6:	0008      	movs	r0, r1
    5fc8:	2300      	movs	r3, #0
    5fca:	2100      	movs	r1, #0
    5fcc:	f7fe fd78 	bl	4ac0 <__aeabi_lmul>
    5fd0:	2700      	movs	r7, #0
    5fd2:	0002      	movs	r2, r0
    5fd4:	000b      	movs	r3, r1
    5fd6:	2001      	movs	r0, #1
    5fd8:	4240      	negs	r0, r0
    5fda:	17c1      	asrs	r1, r0, #31
    5fdc:	1980      	adds	r0, r0, r6
    5fde:	4179      	adcs	r1, r7
    5fe0:	1880      	adds	r0, r0, r2
    5fe2:	4159      	adcs	r1, r3
    5fe4:	003b      	movs	r3, r7
    5fe6:	0032      	movs	r2, r6
    5fe8:	f7fe fd4a 	bl	4a80 <__aeabi_uldivmod>
    5fec:	7923      	ldrb	r3, [r4, #4]
    5fee:	2b01      	cmp	r3, #1
    5ff0:	d011      	beq.n	6016 <svcTimerStart+0x6e>
    5ff2:	2b02      	cmp	r3, #2
    5ff4:	d10d      	bne.n	6012 <svcTimerStart+0x6a>
    5ff6:	4d23      	ldr	r5, [pc, #140]	; (6084 <svcTimerStart+0xdc>)
    5ff8:	6829      	ldr	r1, [r5, #0]
    5ffa:	2900      	cmp	r1, #0
    5ffc:	d009      	beq.n	6012 <svcTimerStart+0x6a>
    5ffe:	428c      	cmp	r4, r1
    6000:	d03a      	beq.n	6078 <svcTimerStart+0xd0>
    6002:	000a      	movs	r2, r1
    6004:	e002      	b.n	600c <svcTimerStart+0x64>
    6006:	429c      	cmp	r4, r3
    6008:	d028      	beq.n	605c <svcTimerStart+0xb4>
    600a:	001a      	movs	r2, r3
    600c:	6813      	ldr	r3, [r2, #0]
    600e:	2b00      	cmp	r3, #0
    6010:	d1f9      	bne.n	6006 <svcTimerStart+0x5e>
    6012:	2081      	movs	r0, #129	; 0x81
    6014:	e7d2      	b.n	5fbc <svcTimerStart+0x14>
    6016:	2302      	movs	r3, #2
    6018:	4d1a      	ldr	r5, [pc, #104]	; (6084 <svcTimerStart+0xdc>)
    601a:	7123      	strb	r3, [r4, #4]
    601c:	6829      	ldr	r1, [r5, #0]
    601e:	60e0      	str	r0, [r4, #12]
    6020:	2900      	cmp	r1, #0
    6022:	d00b      	beq.n	603c <svcTimerStart+0x94>
    6024:	688a      	ldr	r2, [r1, #8]
    6026:	4290      	cmp	r0, r2
    6028:	d204      	bcs.n	6034 <svcTimerStart+0x8c>
    602a:	e00f      	b.n	604c <svcTimerStart+0xa4>
    602c:	689a      	ldr	r2, [r3, #8]
    602e:	4282      	cmp	r2, r0
    6030:	d80e      	bhi.n	6050 <svcTimerStart+0xa8>
    6032:	0019      	movs	r1, r3
    6034:	680b      	ldr	r3, [r1, #0]
    6036:	1a80      	subs	r0, r0, r2
    6038:	2b00      	cmp	r3, #0
    603a:	d1f7      	bne.n	602c <svcTimerStart+0x84>
    603c:	2300      	movs	r3, #0
    603e:	60a0      	str	r0, [r4, #8]
    6040:	6023      	str	r3, [r4, #0]
    6042:	2900      	cmp	r1, #0
    6044:	d015      	beq.n	6072 <svcTimerStart+0xca>
    6046:	600c      	str	r4, [r1, #0]
    6048:	2000      	movs	r0, #0
    604a:	e7b7      	b.n	5fbc <svcTimerStart+0x14>
    604c:	000b      	movs	r3, r1
    604e:	2100      	movs	r1, #0
    6050:	60a0      	str	r0, [r4, #8]
    6052:	689a      	ldr	r2, [r3, #8]
    6054:	6023      	str	r3, [r4, #0]
    6056:	1a10      	subs	r0, r2, r0
    6058:	6098      	str	r0, [r3, #8]
    605a:	e7f2      	b.n	6042 <svcTimerStart+0x9a>
    605c:	6823      	ldr	r3, [r4, #0]
    605e:	6013      	str	r3, [r2, #0]
    6060:	6823      	ldr	r3, [r4, #0]
    6062:	2b00      	cmp	r3, #0
    6064:	d0dc      	beq.n	6020 <svcTimerStart+0x78>
    6066:	68a6      	ldr	r6, [r4, #8]
    6068:	689a      	ldr	r2, [r3, #8]
    606a:	46b4      	mov	ip, r6
    606c:	4462      	add	r2, ip
    606e:	609a      	str	r2, [r3, #8]
    6070:	e7d6      	b.n	6020 <svcTimerStart+0x78>
    6072:	602c      	str	r4, [r5, #0]
    6074:	2000      	movs	r0, #0
    6076:	e7a1      	b.n	5fbc <svcTimerStart+0x14>
    6078:	6823      	ldr	r3, [r4, #0]
    607a:	602b      	str	r3, [r5, #0]
    607c:	0019      	movs	r1, r3
    607e:	e7f0      	b.n	6062 <svcTimerStart+0xba>
    6080:	000088c8 	.word	0x000088c8
    6084:	20006078 	.word	0x20006078

00006088 <svcTimerStop>:
    6088:	0003      	movs	r3, r0
    608a:	2080      	movs	r0, #128	; 0x80
    608c:	079a      	lsls	r2, r3, #30
    608e:	d105      	bne.n	609c <svcTimerStop+0x14>
    6090:	2b00      	cmp	r3, #0
    6092:	d003      	beq.n	609c <svcTimerStop+0x14>
    6094:	791a      	ldrb	r2, [r3, #4]
    6096:	2a02      	cmp	r2, #2
    6098:	d001      	beq.n	609e <svcTimerStop+0x16>
    609a:	2081      	movs	r0, #129	; 0x81
    609c:	4770      	bx	lr
    609e:	2201      	movs	r2, #1
    60a0:	480e      	ldr	r0, [pc, #56]	; (60dc <svcTimerStop+0x54>)
    60a2:	711a      	strb	r2, [r3, #4]
    60a4:	6801      	ldr	r1, [r0, #0]
    60a6:	2900      	cmp	r1, #0
    60a8:	d0f7      	beq.n	609a <svcTimerStop+0x12>
    60aa:	428b      	cmp	r3, r1
    60ac:	d105      	bne.n	60ba <svcTimerStop+0x32>
    60ae:	681a      	ldr	r2, [r3, #0]
    60b0:	6002      	str	r2, [r0, #0]
    60b2:	e009      	b.n	60c8 <svcTimerStop+0x40>
    60b4:	4293      	cmp	r3, r2
    60b6:	d004      	beq.n	60c2 <svcTimerStop+0x3a>
    60b8:	0011      	movs	r1, r2
    60ba:	680a      	ldr	r2, [r1, #0]
    60bc:	2a00      	cmp	r2, #0
    60be:	d1f9      	bne.n	60b4 <svcTimerStop+0x2c>
    60c0:	e7eb      	b.n	609a <svcTimerStop+0x12>
    60c2:	681a      	ldr	r2, [r3, #0]
    60c4:	600a      	str	r2, [r1, #0]
    60c6:	681a      	ldr	r2, [r3, #0]
    60c8:	2a00      	cmp	r2, #0
    60ca:	d004      	beq.n	60d6 <svcTimerStop+0x4e>
    60cc:	6891      	ldr	r1, [r2, #8]
    60ce:	689b      	ldr	r3, [r3, #8]
    60d0:	468c      	mov	ip, r1
    60d2:	4463      	add	r3, ip
    60d4:	6093      	str	r3, [r2, #8]
    60d6:	2000      	movs	r0, #0
    60d8:	e7e0      	b.n	609c <svcTimerStop+0x14>
    60da:	46c0      	nop			; (mov r8, r8)
    60dc:	20006078 	.word	0x20006078

000060e0 <svcTimerDelete>:
    60e0:	0002      	movs	r2, r0
    60e2:	2080      	movs	r0, #128	; 0x80
    60e4:	0793      	lsls	r3, r2, #30
    60e6:	d117      	bne.n	6118 <svcTimerDelete+0x38>
    60e8:	2a00      	cmp	r2, #0
    60ea:	d015      	beq.n	6118 <svcTimerDelete+0x38>
    60ec:	7913      	ldrb	r3, [r2, #4]
    60ee:	2b01      	cmp	r3, #1
    60f0:	d00f      	beq.n	6112 <svcTimerDelete+0x32>
    60f2:	2081      	movs	r0, #129	; 0x81
    60f4:	2b02      	cmp	r3, #2
    60f6:	d10f      	bne.n	6118 <svcTimerDelete+0x38>
    60f8:	4810      	ldr	r0, [pc, #64]	; (613c <svcTimerDelete+0x5c>)
    60fa:	6801      	ldr	r1, [r0, #0]
    60fc:	2900      	cmp	r1, #0
    60fe:	d008      	beq.n	6112 <svcTimerDelete+0x32>
    6100:	428a      	cmp	r2, r1
    6102:	d103      	bne.n	610c <svcTimerDelete+0x2c>
    6104:	e017      	b.n	6136 <svcTimerDelete+0x56>
    6106:	429a      	cmp	r2, r3
    6108:	d007      	beq.n	611a <svcTimerDelete+0x3a>
    610a:	0019      	movs	r1, r3
    610c:	680b      	ldr	r3, [r1, #0]
    610e:	2b00      	cmp	r3, #0
    6110:	d1f9      	bne.n	6106 <svcTimerDelete+0x26>
    6112:	2300      	movs	r3, #0
    6114:	2000      	movs	r0, #0
    6116:	7113      	strb	r3, [r2, #4]
    6118:	4770      	bx	lr
    611a:	6813      	ldr	r3, [r2, #0]
    611c:	600b      	str	r3, [r1, #0]
    611e:	6813      	ldr	r3, [r2, #0]
    6120:	2b00      	cmp	r3, #0
    6122:	d0f6      	beq.n	6112 <svcTimerDelete+0x32>
    6124:	6890      	ldr	r0, [r2, #8]
    6126:	6899      	ldr	r1, [r3, #8]
    6128:	4684      	mov	ip, r0
    612a:	4461      	add	r1, ip
    612c:	6099      	str	r1, [r3, #8]
    612e:	2300      	movs	r3, #0
    6130:	2000      	movs	r0, #0
    6132:	7113      	strb	r3, [r2, #4]
    6134:	e7f0      	b.n	6118 <svcTimerDelete+0x38>
    6136:	6813      	ldr	r3, [r2, #0]
    6138:	6003      	str	r3, [r0, #0]
    613a:	e7f1      	b.n	6120 <svcTimerDelete+0x40>
    613c:	20006078 	.word	0x20006078

00006140 <svcTimerCall>:
    6140:	0003      	movs	r3, r0
    6142:	0782      	lsls	r2, r0, #30
    6144:	d105      	bne.n	6152 <svcTimerCall+0x12>
    6146:	2800      	cmp	r0, #0
    6148:	d006      	beq.n	6158 <svcTimerCall+0x18>
    614a:	6942      	ldr	r2, [r0, #20]
    614c:	6919      	ldr	r1, [r3, #16]
    614e:	6810      	ldr	r0, [r2, #0]
    6150:	4770      	bx	lr
    6152:	2000      	movs	r0, #0
    6154:	2100      	movs	r1, #0
    6156:	e7fb      	b.n	6150 <svcTimerCall+0x10>
    6158:	2000      	movs	r0, #0
    615a:	0001      	movs	r1, r0
    615c:	e7f8      	b.n	6150 <svcTimerCall+0x10>
    615e:	46c0      	nop			; (mov r8, r8)

00006160 <sysTimerTick>:
    6160:	b5f0      	push	{r4, r5, r6, r7, lr}
    6162:	464e      	mov	r6, r9
    6164:	4657      	mov	r7, sl
    6166:	4645      	mov	r5, r8
    6168:	b4e0      	push	{r5, r6, r7}
    616a:	4e2a      	ldr	r6, [pc, #168]	; (6214 <sysTimerTick+0xb4>)
    616c:	6834      	ldr	r4, [r6, #0]
    616e:	2c00      	cmp	r4, #0
    6170:	d028      	beq.n	61c4 <sysTimerTick+0x64>
    6172:	2200      	movs	r2, #0
    6174:	68a3      	ldr	r3, [r4, #8]
    6176:	4f28      	ldr	r7, [pc, #160]	; (6218 <sysTimerTick+0xb8>)
    6178:	3b01      	subs	r3, #1
    617a:	60a3      	str	r3, [r4, #8]
    617c:	4690      	mov	r8, r2
    617e:	2b00      	cmp	r3, #0
    6180:	d120      	bne.n	61c4 <sysTimerTick+0x64>
    6182:	6825      	ldr	r5, [r4, #0]
    6184:	683b      	ldr	r3, [r7, #0]
    6186:	6035      	str	r5, [r6, #0]
    6188:	4699      	mov	r9, r3
    618a:	2b00      	cmp	r3, #0
    618c:	d003      	beq.n	6196 <sysTimerTick+0x36>
    618e:	781b      	ldrb	r3, [r3, #0]
    6190:	469a      	mov	sl, r3
    6192:	2b01      	cmp	r3, #1
    6194:	d002      	beq.n	619c <sysTimerTick+0x3c>
    6196:	2004      	movs	r0, #4
    6198:	f7fb fbd0 	bl	193c <os_error>
    619c:	4648      	mov	r0, r9
    619e:	f001 fb63 	bl	7868 <rt_mbx_check>
    61a2:	2800      	cmp	r0, #0
    61a4:	d0f7      	beq.n	6196 <sysTimerTick+0x36>
    61a6:	0021      	movs	r1, r4
    61a8:	4648      	mov	r0, r9
    61aa:	f001 fb61 	bl	7870 <isr_mbx_send>
    61ae:	7963      	ldrb	r3, [r4, #5]
    61b0:	2b01      	cmp	r3, #1
    61b2:	d00c      	beq.n	61ce <sysTimerTick+0x6e>
    61b4:	4653      	mov	r3, sl
    61b6:	7123      	strb	r3, [r4, #4]
    61b8:	2d00      	cmp	r5, #0
    61ba:	d003      	beq.n	61c4 <sysTimerTick+0x64>
    61bc:	68ab      	ldr	r3, [r5, #8]
    61be:	002c      	movs	r4, r5
    61c0:	2b00      	cmp	r3, #0
    61c2:	d0de      	beq.n	6182 <sysTimerTick+0x22>
    61c4:	bc1c      	pop	{r2, r3, r4}
    61c6:	4690      	mov	r8, r2
    61c8:	4699      	mov	r9, r3
    61ca:	46a2      	mov	sl, r4
    61cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
    61ce:	6830      	ldr	r0, [r6, #0]
    61d0:	68e2      	ldr	r2, [r4, #12]
    61d2:	2800      	cmp	r0, #0
    61d4:	d00b      	beq.n	61ee <sysTimerTick+0x8e>
    61d6:	6881      	ldr	r1, [r0, #8]
    61d8:	4291      	cmp	r1, r2
    61da:	d904      	bls.n	61e6 <sysTimerTick+0x86>
    61dc:	e00e      	b.n	61fc <sysTimerTick+0x9c>
    61de:	6899      	ldr	r1, [r3, #8]
    61e0:	4291      	cmp	r1, r2
    61e2:	d80d      	bhi.n	6200 <sysTimerTick+0xa0>
    61e4:	0018      	movs	r0, r3
    61e6:	6803      	ldr	r3, [r0, #0]
    61e8:	1a52      	subs	r2, r2, r1
    61ea:	2b00      	cmp	r3, #0
    61ec:	d1f7      	bne.n	61de <sysTimerTick+0x7e>
    61ee:	4643      	mov	r3, r8
    61f0:	60a2      	str	r2, [r4, #8]
    61f2:	6023      	str	r3, [r4, #0]
    61f4:	2800      	cmp	r0, #0
    61f6:	d00a      	beq.n	620e <sysTimerTick+0xae>
    61f8:	6004      	str	r4, [r0, #0]
    61fa:	e7dd      	b.n	61b8 <sysTimerTick+0x58>
    61fc:	0003      	movs	r3, r0
    61fe:	2000      	movs	r0, #0
    6200:	60a2      	str	r2, [r4, #8]
    6202:	6899      	ldr	r1, [r3, #8]
    6204:	6023      	str	r3, [r4, #0]
    6206:	1a8a      	subs	r2, r1, r2
    6208:	609a      	str	r2, [r3, #8]
    620a:	2800      	cmp	r0, #0
    620c:	d1f4      	bne.n	61f8 <sysTimerTick+0x98>
    620e:	6034      	str	r4, [r6, #0]
    6210:	e7d2      	b.n	61b8 <sysTimerTick+0x58>
    6212:	46c0      	nop			; (mov r8, r8)
    6214:	20006078 	.word	0x20006078
    6218:	20004d10 	.word	0x20004d10

0000621c <sysUserTimerWakeupTime>:
    621c:	4b04      	ldr	r3, [pc, #16]	; (6230 <sysUserTimerWakeupTime+0x14>)
    621e:	681b      	ldr	r3, [r3, #0]
    6220:	2b00      	cmp	r3, #0
    6222:	d001      	beq.n	6228 <sysUserTimerWakeupTime+0xc>
    6224:	6898      	ldr	r0, [r3, #8]
    6226:	4770      	bx	lr
    6228:	2001      	movs	r0, #1
    622a:	4240      	negs	r0, r0
    622c:	e7fb      	b.n	6226 <sysUserTimerWakeupTime+0xa>
    622e:	46c0      	nop			; (mov r8, r8)
    6230:	20006078 	.word	0x20006078

00006234 <sysUserTimerUpdate>:
    6234:	b570      	push	{r4, r5, r6, lr}
    6236:	4d0e      	ldr	r5, [pc, #56]	; (6270 <sysUserTimerUpdate+0x3c>)
    6238:	0004      	movs	r4, r0
    623a:	682b      	ldr	r3, [r5, #0]
    623c:	2b00      	cmp	r3, #0
    623e:	d012      	beq.n	6266 <sysUserTimerUpdate+0x32>
    6240:	2800      	cmp	r0, #0
    6242:	d010      	beq.n	6266 <sysUserTimerUpdate+0x32>
    6244:	689a      	ldr	r2, [r3, #8]
    6246:	2601      	movs	r6, #1
    6248:	4290      	cmp	r0, r2
    624a:	d205      	bcs.n	6258 <sysUserTimerUpdate+0x24>
    624c:	e00c      	b.n	6268 <sysUserTimerUpdate+0x34>
    624e:	2c00      	cmp	r4, #0
    6250:	d009      	beq.n	6266 <sysUserTimerUpdate+0x32>
    6252:	689a      	ldr	r2, [r3, #8]
    6254:	42a2      	cmp	r2, r4
    6256:	d807      	bhi.n	6268 <sysUserTimerUpdate+0x34>
    6258:	609e      	str	r6, [r3, #8]
    625a:	1aa4      	subs	r4, r4, r2
    625c:	f7ff ff80 	bl	6160 <sysTimerTick>
    6260:	682b      	ldr	r3, [r5, #0]
    6262:	2b00      	cmp	r3, #0
    6264:	d1f3      	bne.n	624e <sysUserTimerUpdate+0x1a>
    6266:	bd70      	pop	{r4, r5, r6, pc}
    6268:	1b14      	subs	r4, r2, r4
    626a:	609c      	str	r4, [r3, #8]
    626c:	e7fb      	b.n	6266 <sysUserTimerUpdate+0x32>
    626e:	46c0      	nop			; (mov r8, r8)
    6270:	20006078 	.word	0x20006078

00006274 <osTimerCreate>:
    6274:	b5b0      	push	{r4, r5, r7, lr}
    6276:	f3ef 8405 	mrs	r4, IPSR
    627a:	2c00      	cmp	r4, #0
    627c:	d124      	bne.n	62c8 <osTimerCreate+0x54>
    627e:	f3ef 8414 	mrs	r4, CONTROL
    6282:	2501      	movs	r5, #1
    6284:	4225      	tst	r5, r4
    6286:	d003      	beq.n	6290 <osTimerCreate+0x1c>
    6288:	4f12      	ldr	r7, [pc, #72]	; (62d4 <osTimerCreate+0x60>)
    628a:	46bc      	mov	ip, r7
    628c:	df00      	svc	0
    628e:	bdb0      	pop	{r4, r5, r7, pc}
    6290:	4c0e      	ldr	r4, [pc, #56]	; (62cc <osTimerCreate+0x58>)
    6292:	7824      	ldrb	r4, [r4, #0]
    6294:	2c00      	cmp	r4, #0
    6296:	d1f7      	bne.n	6288 <osTimerCreate+0x14>
    6298:	2800      	cmp	r0, #0
    629a:	d015      	beq.n	62c8 <osTimerCreate+0x54>
    629c:	6803      	ldr	r3, [r0, #0]
    629e:	2b00      	cmp	r3, #0
    62a0:	d012      	beq.n	62c8 <osTimerCreate+0x54>
    62a2:	6843      	ldr	r3, [r0, #4]
    62a4:	2b00      	cmp	r3, #0
    62a6:	d00f      	beq.n	62c8 <osTimerCreate+0x54>
    62a8:	2901      	cmp	r1, #1
    62aa:	d80d      	bhi.n	62c8 <osTimerCreate+0x54>
    62ac:	4c08      	ldr	r4, [pc, #32]	; (62d0 <osTimerCreate+0x5c>)
    62ae:	6824      	ldr	r4, [r4, #0]
    62b0:	2c00      	cmp	r4, #0
    62b2:	d009      	beq.n	62c8 <osTimerCreate+0x54>
    62b4:	791c      	ldrb	r4, [r3, #4]
    62b6:	2c00      	cmp	r4, #0
    62b8:	d106      	bne.n	62c8 <osTimerCreate+0x54>
    62ba:	6158      	str	r0, [r3, #20]
    62bc:	601c      	str	r4, [r3, #0]
    62be:	711d      	strb	r5, [r3, #4]
    62c0:	7159      	strb	r1, [r3, #5]
    62c2:	611a      	str	r2, [r3, #16]
    62c4:	0018      	movs	r0, r3
    62c6:	e7e2      	b.n	628e <osTimerCreate+0x1a>
    62c8:	2000      	movs	r0, #0
    62ca:	e7e0      	b.n	628e <osTimerCreate+0x1a>
    62cc:	20006075 	.word	0x20006075
    62d0:	20004cec 	.word	0x20004cec
    62d4:	00005f6d 	.word	0x00005f6d

000062d8 <osTimerStart>:
    62d8:	b5b0      	push	{r4, r5, r7, lr}
    62da:	0005      	movs	r5, r0
    62dc:	f3ef 8405 	mrs	r4, IPSR
    62e0:	2082      	movs	r0, #130	; 0x82
    62e2:	2c00      	cmp	r4, #0
    62e4:	d000      	beq.n	62e8 <osTimerStart+0x10>
    62e6:	bdb0      	pop	{r4, r5, r7, pc}
    62e8:	0028      	movs	r0, r5
    62ea:	4f02      	ldr	r7, [pc, #8]	; (62f4 <osTimerStart+0x1c>)
    62ec:	46bc      	mov	ip, r7
    62ee:	df00      	svc	0
    62f0:	e7f9      	b.n	62e6 <osTimerStart+0xe>
    62f2:	0000      	.short	0x0000
    62f4:	00005fa9 	.word	0x00005fa9

000062f8 <osTimerStop>:
    62f8:	b5b0      	push	{r4, r5, r7, lr}
    62fa:	0005      	movs	r5, r0
    62fc:	f3ef 8405 	mrs	r4, IPSR
    6300:	2082      	movs	r0, #130	; 0x82
    6302:	2c00      	cmp	r4, #0
    6304:	d000      	beq.n	6308 <osTimerStop+0x10>
    6306:	bdb0      	pop	{r4, r5, r7, pc}
    6308:	0028      	movs	r0, r5
    630a:	4f02      	ldr	r7, [pc, #8]	; (6314 <osTimerStop+0x1c>)
    630c:	46bc      	mov	ip, r7
    630e:	df00      	svc	0
    6310:	e7f9      	b.n	6306 <osTimerStop+0xe>
    6312:	0000      	.short	0x0000
    6314:	00006089 	.word	0x00006089

00006318 <osTimerDelete>:
    6318:	b5b0      	push	{r4, r5, r7, lr}
    631a:	0005      	movs	r5, r0
    631c:	f3ef 8405 	mrs	r4, IPSR
    6320:	2082      	movs	r0, #130	; 0x82
    6322:	2c00      	cmp	r4, #0
    6324:	d000      	beq.n	6328 <osTimerDelete+0x10>
    6326:	bdb0      	pop	{r4, r5, r7, pc}
    6328:	0028      	movs	r0, r5
    632a:	4f02      	ldr	r7, [pc, #8]	; (6334 <osTimerDelete+0x1c>)
    632c:	46bc      	mov	ip, r7
    632e:	df00      	svc	0
    6330:	e7f9      	b.n	6326 <osTimerDelete+0xe>
    6332:	0000      	.short	0x0000
    6334:	000060e1 	.word	0x000060e1

00006338 <osTimerCall>:
    6338:	b590      	push	{r4, r7, lr}
    633a:	0004      	movs	r4, r0
    633c:	0008      	movs	r0, r1
    633e:	4f03      	ldr	r7, [pc, #12]	; (634c <osTimerCall+0x14>)
    6340:	46bc      	mov	ip, r7
    6342:	df00      	svc	0
    6344:	6020      	str	r0, [r4, #0]
    6346:	6061      	str	r1, [r4, #4]
    6348:	0020      	movs	r0, r4
    634a:	bd90      	pop	{r4, r7, pc}
    634c:	00006141 	.word	0x00006141

00006350 <osTimerThread>:
    6350:	b5b0      	push	{r4, r5, r7, lr}
    6352:	4d0a      	ldr	r5, [pc, #40]	; (637c <osTimerThread+0x2c>)
    6354:	6828      	ldr	r0, [r5, #0]
    6356:	f3ef 8105 	mrs	r1, IPSR
    635a:	2900      	cmp	r1, #0
    635c:	d1fb      	bne.n	6356 <osTimerThread+0x6>
    635e:	3901      	subs	r1, #1
    6360:	4f07      	ldr	r7, [pc, #28]	; (6380 <osTimerThread+0x30>)
    6362:	46bc      	mov	ip, r7
    6364:	df00      	svc	0
    6366:	2810      	cmp	r0, #16
    6368:	d1f4      	bne.n	6354 <osTimerThread+0x4>
    636a:	0008      	movs	r0, r1
    636c:	4f05      	ldr	r7, [pc, #20]	; (6384 <osTimerThread+0x34>)
    636e:	46bc      	mov	ip, r7
    6370:	df00      	svc	0
    6372:	1e04      	subs	r4, r0, #0
    6374:	d0ee      	beq.n	6354 <osTimerThread+0x4>
    6376:	0008      	movs	r0, r1
    6378:	47a0      	blx	r4
    637a:	e7eb      	b.n	6354 <osTimerThread+0x4>
    637c:	20004d10 	.word	0x20004d10
    6380:	00006b31 	.word	0x00006b31
    6384:	00006141 	.word	0x00006141

00006388 <svcSignalSet>:
    6388:	b510      	push	{r4, lr}
    638a:	2800      	cmp	r0, #0
    638c:	d00e      	beq.n	63ac <svcSignalSet+0x24>
    638e:	0783      	lsls	r3, r0, #30
    6390:	d10c      	bne.n	63ac <svcSignalSet+0x24>
    6392:	7803      	ldrb	r3, [r0, #0]
    6394:	2b00      	cmp	r3, #0
    6396:	d109      	bne.n	63ac <svcSignalSet+0x24>
    6398:	0c0b      	lsrs	r3, r1, #16
    639a:	d107      	bne.n	63ac <svcSignalSet+0x24>
    639c:	78c3      	ldrb	r3, [r0, #3]
    639e:	8b04      	ldrh	r4, [r0, #24]
    63a0:	b288      	uxth	r0, r1
    63a2:	0019      	movs	r1, r3
    63a4:	f001 fcbe 	bl	7d24 <rt_evt_set>
    63a8:	0020      	movs	r0, r4
    63aa:	e001      	b.n	63b0 <svcSignalSet+0x28>
    63ac:	2080      	movs	r0, #128	; 0x80
    63ae:	0600      	lsls	r0, r0, #24
    63b0:	bd10      	pop	{r4, pc}
    63b2:	46c0      	nop			; (mov r8, r8)

000063b4 <svcSignalClear>:
    63b4:	b510      	push	{r4, lr}
    63b6:	2800      	cmp	r0, #0
    63b8:	d00e      	beq.n	63d8 <svcSignalClear+0x24>
    63ba:	0783      	lsls	r3, r0, #30
    63bc:	d10c      	bne.n	63d8 <svcSignalClear+0x24>
    63be:	7803      	ldrb	r3, [r0, #0]
    63c0:	2b00      	cmp	r3, #0
    63c2:	d109      	bne.n	63d8 <svcSignalClear+0x24>
    63c4:	0c0b      	lsrs	r3, r1, #16
    63c6:	d107      	bne.n	63d8 <svcSignalClear+0x24>
    63c8:	78c3      	ldrb	r3, [r0, #3]
    63ca:	8b04      	ldrh	r4, [r0, #24]
    63cc:	b288      	uxth	r0, r1
    63ce:	0019      	movs	r1, r3
    63d0:	f001 fcd4 	bl	7d7c <rt_evt_clr>
    63d4:	0020      	movs	r0, r4
    63d6:	e001      	b.n	63dc <svcSignalClear+0x28>
    63d8:	2080      	movs	r0, #128	; 0x80
    63da:	0600      	lsls	r0, r0, #24
    63dc:	bd10      	pop	{r4, pc}
    63de:	46c0      	nop			; (mov r8, r8)

000063e0 <svcSignalWait>:
    63e0:	b5f0      	push	{r4, r5, r6, r7, lr}
    63e2:	0c04      	lsrs	r4, r0, #16
    63e4:	b083      	sub	sp, #12
    63e6:	0006      	movs	r6, r0
    63e8:	000d      	movs	r5, r1
    63ea:	0424      	lsls	r4, r4, #16
    63ec:	d149      	bne.n	6482 <svcSignalWait+0xa2>
    63ee:	2800      	cmp	r0, #0
    63f0:	d026      	beq.n	6440 <svcSignalWait+0x60>
    63f2:	b287      	uxth	r7, r0
    63f4:	2100      	movs	r1, #0
    63f6:	2d00      	cmp	r5, #0
    63f8:	d013      	beq.n	6422 <svcSignalWait+0x42>
    63fa:	1c6b      	adds	r3, r5, #1
    63fc:	d05c      	beq.n	64b8 <svcSignalWait+0xd8>
    63fe:	4b2f      	ldr	r3, [pc, #188]	; (64bc <svcSignalWait+0xdc>)
    6400:	429d      	cmp	r5, r3
    6402:	d84f      	bhi.n	64a4 <svcSignalWait+0xc4>
    6404:	20fa      	movs	r0, #250	; 0xfa
    6406:	4b2e      	ldr	r3, [pc, #184]	; (64c0 <svcSignalWait+0xe0>)
    6408:	0080      	lsls	r0, r0, #2
    640a:	4368      	muls	r0, r5
    640c:	681b      	ldr	r3, [r3, #0]
    640e:	9301      	str	r3, [sp, #4]
    6410:	3b01      	subs	r3, #1
    6412:	18c0      	adds	r0, r0, r3
    6414:	9901      	ldr	r1, [sp, #4]
    6416:	f7fe f913 	bl	4640 <__aeabi_uidiv>
    641a:	4b2a      	ldr	r3, [pc, #168]	; (64c4 <svcSignalWait+0xe4>)
    641c:	0019      	movs	r1, r3
    641e:	4298      	cmp	r0, r3
    6420:	d946      	bls.n	64b0 <svcSignalWait+0xd0>
    6422:	2201      	movs	r2, #1
    6424:	0038      	movs	r0, r7
    6426:	f001 fc59 	bl	7cdc <rt_evt_wait>
    642a:	2802      	cmp	r0, #2
    642c:	d035      	beq.n	649a <svcSignalWait+0xba>
    642e:	0028      	movs	r0, r5
    6430:	1e45      	subs	r5, r0, #1
    6432:	41a8      	sbcs	r0, r5
    6434:	0180      	lsls	r0, r0, #6
    6436:	0021      	movs	r1, r4
    6438:	2200      	movs	r2, #0
    643a:	2300      	movs	r3, #0
    643c:	b003      	add	sp, #12
    643e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6440:	2900      	cmp	r1, #0
    6442:	d021      	beq.n	6488 <svcSignalWait+0xa8>
    6444:	1c4b      	adds	r3, r1, #1
    6446:	d035      	beq.n	64b4 <svcSignalWait+0xd4>
    6448:	4b1c      	ldr	r3, [pc, #112]	; (64bc <svcSignalWait+0xdc>)
    644a:	4299      	cmp	r1, r3
    644c:	d82c      	bhi.n	64a8 <svcSignalWait+0xc8>
    644e:	20fa      	movs	r0, #250	; 0xfa
    6450:	4b1b      	ldr	r3, [pc, #108]	; (64c0 <svcSignalWait+0xe0>)
    6452:	0080      	lsls	r0, r0, #2
    6454:	4348      	muls	r0, r1
    6456:	681b      	ldr	r3, [r3, #0]
    6458:	9301      	str	r3, [sp, #4]
    645a:	3b01      	subs	r3, #1
    645c:	18c0      	adds	r0, r0, r3
    645e:	9901      	ldr	r1, [sp, #4]
    6460:	f7fe f8ee 	bl	4640 <__aeabi_uidiv>
    6464:	4b17      	ldr	r3, [pc, #92]	; (64c4 <svcSignalWait+0xe4>)
    6466:	0019      	movs	r1, r3
    6468:	4298      	cmp	r0, r3
    646a:	d91f      	bls.n	64ac <svcSignalWait+0xcc>
    646c:	2200      	movs	r2, #0
    646e:	4816      	ldr	r0, [pc, #88]	; (64c8 <svcSignalWait+0xe8>)
    6470:	f001 fc34 	bl	7cdc <rt_evt_wait>
    6474:	2802      	cmp	r0, #2
    6476:	d113      	bne.n	64a0 <svcSignalWait+0xc0>
    6478:	4b14      	ldr	r3, [pc, #80]	; (64cc <svcSignalWait+0xec>)
    647a:	2008      	movs	r0, #8
    647c:	681b      	ldr	r3, [r3, #0]
    647e:	8b5c      	ldrh	r4, [r3, #26]
    6480:	e7d9      	b.n	6436 <svcSignalWait+0x56>
    6482:	2086      	movs	r0, #134	; 0x86
    6484:	2100      	movs	r1, #0
    6486:	e7d7      	b.n	6438 <svcSignalWait+0x58>
    6488:	2200      	movs	r2, #0
    648a:	2100      	movs	r1, #0
    648c:	480e      	ldr	r0, [pc, #56]	; (64c8 <svcSignalWait+0xe8>)
    648e:	f001 fc25 	bl	7cdc <rt_evt_wait>
    6492:	2802      	cmp	r0, #2
    6494:	d0f0      	beq.n	6478 <svcSignalWait+0x98>
    6496:	2000      	movs	r0, #0
    6498:	e7cd      	b.n	6436 <svcSignalWait+0x56>
    649a:	0034      	movs	r4, r6
    649c:	2008      	movs	r0, #8
    649e:	e7ca      	b.n	6436 <svcSignalWait+0x56>
    64a0:	2040      	movs	r0, #64	; 0x40
    64a2:	e7c8      	b.n	6436 <svcSignalWait+0x56>
    64a4:	4907      	ldr	r1, [pc, #28]	; (64c4 <svcSignalWait+0xe4>)
    64a6:	e7bc      	b.n	6422 <svcSignalWait+0x42>
    64a8:	4906      	ldr	r1, [pc, #24]	; (64c4 <svcSignalWait+0xe4>)
    64aa:	e7df      	b.n	646c <svcSignalWait+0x8c>
    64ac:	b281      	uxth	r1, r0
    64ae:	e7dd      	b.n	646c <svcSignalWait+0x8c>
    64b0:	b281      	uxth	r1, r0
    64b2:	e7b6      	b.n	6422 <svcSignalWait+0x42>
    64b4:	4904      	ldr	r1, [pc, #16]	; (64c8 <svcSignalWait+0xe8>)
    64b6:	e7d9      	b.n	646c <svcSignalWait+0x8c>
    64b8:	4903      	ldr	r1, [pc, #12]	; (64c8 <svcSignalWait+0xe8>)
    64ba:	e7b2      	b.n	6422 <svcSignalWait+0x42>
    64bc:	003d0900 	.word	0x003d0900
    64c0:	000088c8 	.word	0x000088c8
    64c4:	0000fffe 	.word	0x0000fffe
    64c8:	0000ffff 	.word	0x0000ffff
    64cc:	200060b4 	.word	0x200060b4

000064d0 <isrSignalSet>:
    64d0:	b510      	push	{r4, lr}
    64d2:	2800      	cmp	r0, #0
    64d4:	d00e      	beq.n	64f4 <isrSignalSet+0x24>
    64d6:	0783      	lsls	r3, r0, #30
    64d8:	d10c      	bne.n	64f4 <isrSignalSet+0x24>
    64da:	7803      	ldrb	r3, [r0, #0]
    64dc:	2b00      	cmp	r3, #0
    64de:	d109      	bne.n	64f4 <isrSignalSet+0x24>
    64e0:	0c0b      	lsrs	r3, r1, #16
    64e2:	d107      	bne.n	64f4 <isrSignalSet+0x24>
    64e4:	78c3      	ldrb	r3, [r0, #3]
    64e6:	8b04      	ldrh	r4, [r0, #24]
    64e8:	b288      	uxth	r0, r1
    64ea:	0019      	movs	r1, r3
    64ec:	f001 fc52 	bl	7d94 <isr_evt_set>
    64f0:	0020      	movs	r0, r4
    64f2:	e001      	b.n	64f8 <isrSignalSet+0x28>
    64f4:	2080      	movs	r0, #128	; 0x80
    64f6:	0600      	lsls	r0, r0, #24
    64f8:	bd10      	pop	{r4, pc}
    64fa:	46c0      	nop			; (mov r8, r8)

000064fc <osSignalSet>:
    64fc:	b5b0      	push	{r4, r5, r7, lr}
    64fe:	f3ef 8405 	mrs	r4, IPSR
    6502:	2c00      	cmp	r4, #0
    6504:	d103      	bne.n	650e <osSignalSet+0x12>
    6506:	4f0c      	ldr	r7, [pc, #48]	; (6538 <osSignalSet+0x3c>)
    6508:	46bc      	mov	ip, r7
    650a:	df00      	svc	0
    650c:	bdb0      	pop	{r4, r5, r7, pc}
    650e:	2800      	cmp	r0, #0
    6510:	d00e      	beq.n	6530 <osSignalSet+0x34>
    6512:	0783      	lsls	r3, r0, #30
    6514:	d10c      	bne.n	6530 <osSignalSet+0x34>
    6516:	7803      	ldrb	r3, [r0, #0]
    6518:	2b00      	cmp	r3, #0
    651a:	d109      	bne.n	6530 <osSignalSet+0x34>
    651c:	0c0b      	lsrs	r3, r1, #16
    651e:	d107      	bne.n	6530 <osSignalSet+0x34>
    6520:	78c3      	ldrb	r3, [r0, #3]
    6522:	8b04      	ldrh	r4, [r0, #24]
    6524:	b288      	uxth	r0, r1
    6526:	0019      	movs	r1, r3
    6528:	f001 fc34 	bl	7d94 <isr_evt_set>
    652c:	0020      	movs	r0, r4
    652e:	e7ed      	b.n	650c <osSignalSet+0x10>
    6530:	2080      	movs	r0, #128	; 0x80
    6532:	0600      	lsls	r0, r0, #24
    6534:	e7ea      	b.n	650c <osSignalSet+0x10>
    6536:	0000      	.short	0x0000
    6538:	00006389 	.word	0x00006389

0000653c <osSignalClear>:
    653c:	b590      	push	{r4, r7, lr}
    653e:	f3ef 8405 	mrs	r4, IPSR
    6542:	2c00      	cmp	r4, #0
    6544:	d103      	bne.n	654e <osSignalClear+0x12>
    6546:	4f03      	ldr	r7, [pc, #12]	; (6554 <osSignalClear+0x18>)
    6548:	46bc      	mov	ip, r7
    654a:	df00      	svc	0
    654c:	bd90      	pop	{r4, r7, pc}
    654e:	2080      	movs	r0, #128	; 0x80
    6550:	0600      	lsls	r0, r0, #24
    6552:	e7fb      	b.n	654c <osSignalClear+0x10>
    6554:	000063b5 	.word	0x000063b5

00006558 <osSignalWait>:
    6558:	b5f0      	push	{r4, r5, r6, r7, lr}
    655a:	0004      	movs	r4, r0
    655c:	f3ef 8505 	mrs	r5, IPSR
    6560:	2d00      	cmp	r5, #0
    6562:	d109      	bne.n	6578 <osSignalWait+0x20>
    6564:	0008      	movs	r0, r1
    6566:	0011      	movs	r1, r2
    6568:	4f05      	ldr	r7, [pc, #20]	; (6580 <osSignalWait+0x28>)
    656a:	46bc      	mov	ip, r7
    656c:	df00      	svc	0
    656e:	6020      	str	r0, [r4, #0]
    6570:	6061      	str	r1, [r4, #4]
    6572:	60a2      	str	r2, [r4, #8]
    6574:	0020      	movs	r0, r4
    6576:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6578:	2382      	movs	r3, #130	; 0x82
    657a:	6003      	str	r3, [r0, #0]
    657c:	e7fa      	b.n	6574 <osSignalWait+0x1c>
    657e:	0000      	.short	0x0000
    6580:	000063e1 	.word	0x000063e1

00006584 <svcMutexCreate>:
    6584:	b510      	push	{r4, lr}
    6586:	2800      	cmp	r0, #0
    6588:	d00a      	beq.n	65a0 <svcMutexCreate+0x1c>
    658a:	6804      	ldr	r4, [r0, #0]
    658c:	2c00      	cmp	r4, #0
    658e:	d007      	beq.n	65a0 <svcMutexCreate+0x1c>
    6590:	7823      	ldrb	r3, [r4, #0]
    6592:	2b00      	cmp	r3, #0
    6594:	d104      	bne.n	65a0 <svcMutexCreate+0x1c>
    6596:	0020      	movs	r0, r4
    6598:	f000 feb4 	bl	7304 <rt_mut_init>
    659c:	0020      	movs	r0, r4
    659e:	bd10      	pop	{r4, pc}
    65a0:	2000      	movs	r0, #0
    65a2:	e7fc      	b.n	659e <svcMutexCreate+0x1a>

000065a4 <svcMutexWait>:
    65a4:	b510      	push	{r4, lr}
    65a6:	0004      	movs	r4, r0
    65a8:	b082      	sub	sp, #8
    65aa:	2080      	movs	r0, #128	; 0x80
    65ac:	07a3      	lsls	r3, r4, #30
    65ae:	d104      	bne.n	65ba <svcMutexWait+0x16>
    65b0:	2c00      	cmp	r4, #0
    65b2:	d002      	beq.n	65ba <svcMutexWait+0x16>
    65b4:	7823      	ldrb	r3, [r4, #0]
    65b6:	2b03      	cmp	r3, #3
    65b8:	d001      	beq.n	65be <svcMutexWait+0x1a>
    65ba:	b002      	add	sp, #8
    65bc:	bd10      	pop	{r4, pc}
    65be:	2900      	cmp	r1, #0
    65c0:	d01b      	beq.n	65fa <svcMutexWait+0x56>
    65c2:	1c4b      	adds	r3, r1, #1
    65c4:	d025      	beq.n	6612 <svcMutexWait+0x6e>
    65c6:	4b16      	ldr	r3, [pc, #88]	; (6620 <svcMutexWait+0x7c>)
    65c8:	4299      	cmp	r1, r3
    65ca:	d824      	bhi.n	6616 <svcMutexWait+0x72>
    65cc:	20fa      	movs	r0, #250	; 0xfa
    65ce:	4b15      	ldr	r3, [pc, #84]	; (6624 <svcMutexWait+0x80>)
    65d0:	0080      	lsls	r0, r0, #2
    65d2:	4341      	muls	r1, r0
    65d4:	681b      	ldr	r3, [r3, #0]
    65d6:	9301      	str	r3, [sp, #4]
    65d8:	3b01      	subs	r3, #1
    65da:	1858      	adds	r0, r3, r1
    65dc:	9901      	ldr	r1, [sp, #4]
    65de:	f7fe f82f 	bl	4640 <__aeabi_uidiv>
    65e2:	4b11      	ldr	r3, [pc, #68]	; (6628 <svcMutexWait+0x84>)
    65e4:	0019      	movs	r1, r3
    65e6:	4298      	cmp	r0, r3
    65e8:	d917      	bls.n	661a <svcMutexWait+0x76>
    65ea:	0020      	movs	r0, r4
    65ec:	f000 ff86 	bl	74fc <rt_mut_wait>
    65f0:	0003      	movs	r3, r0
    65f2:	2801      	cmp	r0, #1
    65f4:	d108      	bne.n	6608 <svcMutexWait+0x64>
    65f6:	20c1      	movs	r0, #193	; 0xc1
    65f8:	e7df      	b.n	65ba <svcMutexWait+0x16>
    65fa:	2100      	movs	r1, #0
    65fc:	0020      	movs	r0, r4
    65fe:	f000 ff7d 	bl	74fc <rt_mut_wait>
    6602:	0003      	movs	r3, r0
    6604:	2801      	cmp	r0, #1
    6606:	d002      	beq.n	660e <svcMutexWait+0x6a>
    6608:	2000      	movs	r0, #0
    660a:	2bff      	cmp	r3, #255	; 0xff
    660c:	d1d5      	bne.n	65ba <svcMutexWait+0x16>
    660e:	2081      	movs	r0, #129	; 0x81
    6610:	e7d3      	b.n	65ba <svcMutexWait+0x16>
    6612:	4906      	ldr	r1, [pc, #24]	; (662c <svcMutexWait+0x88>)
    6614:	e7e9      	b.n	65ea <svcMutexWait+0x46>
    6616:	4904      	ldr	r1, [pc, #16]	; (6628 <svcMutexWait+0x84>)
    6618:	e7e7      	b.n	65ea <svcMutexWait+0x46>
    661a:	b281      	uxth	r1, r0
    661c:	e7e5      	b.n	65ea <svcMutexWait+0x46>
    661e:	46c0      	nop			; (mov r8, r8)
    6620:	003d0900 	.word	0x003d0900
    6624:	000088c8 	.word	0x000088c8
    6628:	0000fffe 	.word	0x0000fffe
    662c:	0000ffff 	.word	0x0000ffff

00006630 <svcMutexRelease>:
    6630:	b510      	push	{r4, lr}
    6632:	2380      	movs	r3, #128	; 0x80
    6634:	0782      	lsls	r2, r0, #30
    6636:	d104      	bne.n	6642 <svcMutexRelease+0x12>
    6638:	2800      	cmp	r0, #0
    663a:	d002      	beq.n	6642 <svcMutexRelease+0x12>
    663c:	7802      	ldrb	r2, [r0, #0]
    663e:	2a03      	cmp	r2, #3
    6640:	d001      	beq.n	6646 <svcMutexRelease+0x16>
    6642:	0018      	movs	r0, r3
    6644:	bd10      	pop	{r4, pc}
    6646:	f000 fed5 	bl	73f4 <rt_mut_release>
    664a:	2381      	movs	r3, #129	; 0x81
    664c:	28ff      	cmp	r0, #255	; 0xff
    664e:	d0f8      	beq.n	6642 <svcMutexRelease+0x12>
    6650:	2300      	movs	r3, #0
    6652:	e7f6      	b.n	6642 <svcMutexRelease+0x12>

00006654 <svcMutexDelete>:
    6654:	b510      	push	{r4, lr}
    6656:	2380      	movs	r3, #128	; 0x80
    6658:	0782      	lsls	r2, r0, #30
    665a:	d104      	bne.n	6666 <svcMutexDelete+0x12>
    665c:	2800      	cmp	r0, #0
    665e:	d002      	beq.n	6666 <svcMutexDelete+0x12>
    6660:	7802      	ldrb	r2, [r0, #0]
    6662:	2a03      	cmp	r2, #3
    6664:	d001      	beq.n	666a <svcMutexDelete+0x16>
    6666:	0018      	movs	r0, r3
    6668:	bd10      	pop	{r4, pc}
    666a:	f000 fe53 	bl	7314 <rt_mut_delete>
    666e:	2300      	movs	r3, #0
    6670:	e7f9      	b.n	6666 <svcMutexDelete+0x12>
    6672:	46c0      	nop			; (mov r8, r8)

00006674 <osMutexCreate>:
    6674:	b5b0      	push	{r4, r5, r7, lr}
    6676:	f3ef 8405 	mrs	r4, IPSR
    667a:	2c00      	cmp	r4, #0
    667c:	d119      	bne.n	66b2 <osMutexCreate+0x3e>
    667e:	f3ef 8414 	mrs	r4, CONTROL
    6682:	07e4      	lsls	r4, r4, #31
    6684:	d411      	bmi.n	66aa <osMutexCreate+0x36>
    6686:	4c0c      	ldr	r4, [pc, #48]	; (66b8 <osMutexCreate+0x44>)
    6688:	7824      	ldrb	r4, [r4, #0]
    668a:	2c00      	cmp	r4, #0
    668c:	d10d      	bne.n	66aa <osMutexCreate+0x36>
    668e:	2800      	cmp	r0, #0
    6690:	d00f      	beq.n	66b2 <osMutexCreate+0x3e>
    6692:	6804      	ldr	r4, [r0, #0]
    6694:	2c00      	cmp	r4, #0
    6696:	d00c      	beq.n	66b2 <osMutexCreate+0x3e>
    6698:	7823      	ldrb	r3, [r4, #0]
    669a:	2000      	movs	r0, #0
    669c:	2b00      	cmp	r3, #0
    669e:	d107      	bne.n	66b0 <osMutexCreate+0x3c>
    66a0:	0020      	movs	r0, r4
    66a2:	f000 fe2f 	bl	7304 <rt_mut_init>
    66a6:	0020      	movs	r0, r4
    66a8:	e002      	b.n	66b0 <osMutexCreate+0x3c>
    66aa:	4f04      	ldr	r7, [pc, #16]	; (66bc <osMutexCreate+0x48>)
    66ac:	46bc      	mov	ip, r7
    66ae:	df00      	svc	0
    66b0:	bdb0      	pop	{r4, r5, r7, pc}
    66b2:	2000      	movs	r0, #0
    66b4:	e7fc      	b.n	66b0 <osMutexCreate+0x3c>
    66b6:	46c0      	nop			; (mov r8, r8)
    66b8:	20006075 	.word	0x20006075
    66bc:	00006585 	.word	0x00006585

000066c0 <osMutexWait>:
    66c0:	b5b0      	push	{r4, r5, r7, lr}
    66c2:	0005      	movs	r5, r0
    66c4:	f3ef 8405 	mrs	r4, IPSR
    66c8:	2082      	movs	r0, #130	; 0x82
    66ca:	2c00      	cmp	r4, #0
    66cc:	d000      	beq.n	66d0 <osMutexWait+0x10>
    66ce:	bdb0      	pop	{r4, r5, r7, pc}
    66d0:	0028      	movs	r0, r5
    66d2:	4f02      	ldr	r7, [pc, #8]	; (66dc <osMutexWait+0x1c>)
    66d4:	46bc      	mov	ip, r7
    66d6:	df00      	svc	0
    66d8:	e7f9      	b.n	66ce <osMutexWait+0xe>
    66da:	0000      	.short	0x0000
    66dc:	000065a5 	.word	0x000065a5

000066e0 <osMutexRelease>:
    66e0:	b5b0      	push	{r4, r5, r7, lr}
    66e2:	0005      	movs	r5, r0
    66e4:	f3ef 8405 	mrs	r4, IPSR
    66e8:	2082      	movs	r0, #130	; 0x82
    66ea:	2c00      	cmp	r4, #0
    66ec:	d000      	beq.n	66f0 <osMutexRelease+0x10>
    66ee:	bdb0      	pop	{r4, r5, r7, pc}
    66f0:	0028      	movs	r0, r5
    66f2:	4f02      	ldr	r7, [pc, #8]	; (66fc <osMutexRelease+0x1c>)
    66f4:	46bc      	mov	ip, r7
    66f6:	df00      	svc	0
    66f8:	e7f9      	b.n	66ee <osMutexRelease+0xe>
    66fa:	0000      	.short	0x0000
    66fc:	00006631 	.word	0x00006631

00006700 <osMutexDelete>:
    6700:	b5b0      	push	{r4, r5, r7, lr}
    6702:	0005      	movs	r5, r0
    6704:	f3ef 8405 	mrs	r4, IPSR
    6708:	2082      	movs	r0, #130	; 0x82
    670a:	2c00      	cmp	r4, #0
    670c:	d000      	beq.n	6710 <osMutexDelete+0x10>
    670e:	bdb0      	pop	{r4, r5, r7, pc}
    6710:	0028      	movs	r0, r5
    6712:	4f02      	ldr	r7, [pc, #8]	; (671c <osMutexDelete+0x1c>)
    6714:	46bc      	mov	ip, r7
    6716:	df00      	svc	0
    6718:	e7f9      	b.n	670e <osMutexDelete+0xe>
    671a:	0000      	.short	0x0000
    671c:	00006655 	.word	0x00006655

00006720 <svcSemaphoreCreate>:
    6720:	b510      	push	{r4, lr}
    6722:	2800      	cmp	r0, #0
    6724:	d00e      	beq.n	6744 <svcSemaphoreCreate+0x24>
    6726:	6804      	ldr	r4, [r0, #0]
    6728:	2c00      	cmp	r4, #0
    672a:	d00b      	beq.n	6744 <svcSemaphoreCreate+0x24>
    672c:	7823      	ldrb	r3, [r4, #0]
    672e:	2b00      	cmp	r3, #0
    6730:	d108      	bne.n	6744 <svcSemaphoreCreate+0x24>
    6732:	4b05      	ldr	r3, [pc, #20]	; (6748 <svcSemaphoreCreate+0x28>)
    6734:	4299      	cmp	r1, r3
    6736:	dc05      	bgt.n	6744 <svcSemaphoreCreate+0x24>
    6738:	0020      	movs	r0, r4
    673a:	b289      	uxth	r1, r1
    673c:	f000 ff4a 	bl	75d4 <rt_sem_init>
    6740:	0020      	movs	r0, r4
    6742:	bd10      	pop	{r4, pc}
    6744:	2000      	movs	r0, #0
    6746:	e7fc      	b.n	6742 <svcSemaphoreCreate+0x22>
    6748:	0000ffff 	.word	0x0000ffff

0000674c <svcSemaphoreWait>:
    674c:	b510      	push	{r4, lr}
    674e:	0004      	movs	r4, r0
    6750:	b082      	sub	sp, #8
    6752:	0783      	lsls	r3, r0, #30
    6754:	d111      	bne.n	677a <svcSemaphoreWait+0x2e>
    6756:	2800      	cmp	r0, #0
    6758:	d00f      	beq.n	677a <svcSemaphoreWait+0x2e>
    675a:	7803      	ldrb	r3, [r0, #0]
    675c:	2b02      	cmp	r3, #2
    675e:	d10c      	bne.n	677a <svcSemaphoreWait+0x2e>
    6760:	2300      	movs	r3, #0
    6762:	2900      	cmp	r1, #0
    6764:	d10c      	bne.n	6780 <svcSemaphoreWait+0x34>
    6766:	0019      	movs	r1, r3
    6768:	0020      	movs	r0, r4
    676a:	f000 ff83 	bl	7674 <rt_sem_wait>
    676e:	2801      	cmp	r0, #1
    6770:	d023      	beq.n	67ba <svcSemaphoreWait+0x6e>
    6772:	8860      	ldrh	r0, [r4, #2]
    6774:	3001      	adds	r0, #1
    6776:	b002      	add	sp, #8
    6778:	bd10      	pop	{r4, pc}
    677a:	2001      	movs	r0, #1
    677c:	4240      	negs	r0, r0
    677e:	e7fa      	b.n	6776 <svcSemaphoreWait+0x2a>
    6780:	1c4b      	adds	r3, r1, #1
    6782:	d01c      	beq.n	67be <svcSemaphoreWait+0x72>
    6784:	4b0f      	ldr	r3, [pc, #60]	; (67c4 <svcSemaphoreWait+0x78>)
    6786:	4299      	cmp	r1, r3
    6788:	d810      	bhi.n	67ac <svcSemaphoreWait+0x60>
    678a:	20fa      	movs	r0, #250	; 0xfa
    678c:	4b0e      	ldr	r3, [pc, #56]	; (67c8 <svcSemaphoreWait+0x7c>)
    678e:	0080      	lsls	r0, r0, #2
    6790:	4341      	muls	r1, r0
    6792:	681b      	ldr	r3, [r3, #0]
    6794:	9301      	str	r3, [sp, #4]
    6796:	3b01      	subs	r3, #1
    6798:	1858      	adds	r0, r3, r1
    679a:	9901      	ldr	r1, [sp, #4]
    679c:	f7fd ff50 	bl	4640 <__aeabi_uidiv>
    67a0:	4a0a      	ldr	r2, [pc, #40]	; (67cc <svcSemaphoreWait+0x80>)
    67a2:	0013      	movs	r3, r2
    67a4:	4290      	cmp	r0, r2
    67a6:	d8de      	bhi.n	6766 <svcSemaphoreWait+0x1a>
    67a8:	b283      	uxth	r3, r0
    67aa:	e7dc      	b.n	6766 <svcSemaphoreWait+0x1a>
    67ac:	4b07      	ldr	r3, [pc, #28]	; (67cc <svcSemaphoreWait+0x80>)
    67ae:	0020      	movs	r0, r4
    67b0:	0019      	movs	r1, r3
    67b2:	f000 ff5f 	bl	7674 <rt_sem_wait>
    67b6:	2801      	cmp	r0, #1
    67b8:	d1db      	bne.n	6772 <svcSemaphoreWait+0x26>
    67ba:	2000      	movs	r0, #0
    67bc:	e7db      	b.n	6776 <svcSemaphoreWait+0x2a>
    67be:	4b04      	ldr	r3, [pc, #16]	; (67d0 <svcSemaphoreWait+0x84>)
    67c0:	e7d1      	b.n	6766 <svcSemaphoreWait+0x1a>
    67c2:	46c0      	nop			; (mov r8, r8)
    67c4:	003d0900 	.word	0x003d0900
    67c8:	000088c8 	.word	0x000088c8
    67cc:	0000fffe 	.word	0x0000fffe
    67d0:	0000ffff 	.word	0x0000ffff

000067d4 <svcSemaphoreRelease>:
    67d4:	b510      	push	{r4, lr}
    67d6:	2380      	movs	r3, #128	; 0x80
    67d8:	0782      	lsls	r2, r0, #30
    67da:	d104      	bne.n	67e6 <svcSemaphoreRelease+0x12>
    67dc:	2800      	cmp	r0, #0
    67de:	d002      	beq.n	67e6 <svcSemaphoreRelease+0x12>
    67e0:	7802      	ldrb	r2, [r0, #0]
    67e2:	2a02      	cmp	r2, #2
    67e4:	d001      	beq.n	67ea <svcSemaphoreRelease+0x16>
    67e6:	0018      	movs	r0, r3
    67e8:	bd10      	pop	{r4, pc}
    67ea:	8841      	ldrh	r1, [r0, #2]
    67ec:	4a03      	ldr	r2, [pc, #12]	; (67fc <svcSemaphoreRelease+0x28>)
    67ee:	3301      	adds	r3, #1
    67f0:	4291      	cmp	r1, r2
    67f2:	d0f8      	beq.n	67e6 <svcSemaphoreRelease+0x12>
    67f4:	f000 ff28 	bl	7648 <rt_sem_send>
    67f8:	2300      	movs	r3, #0
    67fa:	e7f4      	b.n	67e6 <svcSemaphoreRelease+0x12>
    67fc:	0000ffff 	.word	0x0000ffff

00006800 <svcSemaphoreDelete>:
    6800:	b510      	push	{r4, lr}
    6802:	2380      	movs	r3, #128	; 0x80
    6804:	0782      	lsls	r2, r0, #30
    6806:	d104      	bne.n	6812 <svcSemaphoreDelete+0x12>
    6808:	2800      	cmp	r0, #0
    680a:	d002      	beq.n	6812 <svcSemaphoreDelete+0x12>
    680c:	7802      	ldrb	r2, [r0, #0]
    680e:	2a02      	cmp	r2, #2
    6810:	d001      	beq.n	6816 <svcSemaphoreDelete+0x16>
    6812:	0018      	movs	r0, r3
    6814:	bd10      	pop	{r4, pc}
    6816:	f000 fee3 	bl	75e0 <rt_sem_delete>
    681a:	2300      	movs	r3, #0
    681c:	e7f9      	b.n	6812 <svcSemaphoreDelete+0x12>
    681e:	46c0      	nop			; (mov r8, r8)

00006820 <isrSemaphoreRelease>:
    6820:	b510      	push	{r4, lr}
    6822:	2380      	movs	r3, #128	; 0x80
    6824:	0782      	lsls	r2, r0, #30
    6826:	d104      	bne.n	6832 <isrSemaphoreRelease+0x12>
    6828:	2800      	cmp	r0, #0
    682a:	d002      	beq.n	6832 <isrSemaphoreRelease+0x12>
    682c:	7802      	ldrb	r2, [r0, #0]
    682e:	2a02      	cmp	r2, #2
    6830:	d001      	beq.n	6836 <isrSemaphoreRelease+0x16>
    6832:	0018      	movs	r0, r3
    6834:	bd10      	pop	{r4, pc}
    6836:	8841      	ldrh	r1, [r0, #2]
    6838:	4a03      	ldr	r2, [pc, #12]	; (6848 <isrSemaphoreRelease+0x28>)
    683a:	3301      	adds	r3, #1
    683c:	4291      	cmp	r1, r2
    683e:	d0f8      	beq.n	6832 <isrSemaphoreRelease+0x12>
    6840:	f000 ff3a 	bl	76b8 <isr_sem_send>
    6844:	2300      	movs	r3, #0
    6846:	e7f4      	b.n	6832 <isrSemaphoreRelease+0x12>
    6848:	0000ffff 	.word	0x0000ffff

0000684c <osSemaphoreCreate>:
    684c:	b5b0      	push	{r4, r5, r7, lr}
    684e:	f3ef 8405 	mrs	r4, IPSR
    6852:	2c00      	cmp	r4, #0
    6854:	d11c      	bne.n	6890 <osSemaphoreCreate+0x44>
    6856:	f3ef 8414 	mrs	r4, CONTROL
    685a:	07e4      	lsls	r4, r4, #31
    685c:	d503      	bpl.n	6866 <osSemaphoreCreate+0x1a>
    685e:	4f0f      	ldr	r7, [pc, #60]	; (689c <osSemaphoreCreate+0x50>)
    6860:	46bc      	mov	ip, r7
    6862:	df00      	svc	0
    6864:	bdb0      	pop	{r4, r5, r7, pc}
    6866:	4c0b      	ldr	r4, [pc, #44]	; (6894 <osSemaphoreCreate+0x48>)
    6868:	7824      	ldrb	r4, [r4, #0]
    686a:	2c00      	cmp	r4, #0
    686c:	d1f7      	bne.n	685e <osSemaphoreCreate+0x12>
    686e:	2800      	cmp	r0, #0
    6870:	d00e      	beq.n	6890 <osSemaphoreCreate+0x44>
    6872:	6804      	ldr	r4, [r0, #0]
    6874:	2c00      	cmp	r4, #0
    6876:	d00b      	beq.n	6890 <osSemaphoreCreate+0x44>
    6878:	7823      	ldrb	r3, [r4, #0]
    687a:	2b00      	cmp	r3, #0
    687c:	d108      	bne.n	6890 <osSemaphoreCreate+0x44>
    687e:	4b06      	ldr	r3, [pc, #24]	; (6898 <osSemaphoreCreate+0x4c>)
    6880:	4299      	cmp	r1, r3
    6882:	dc05      	bgt.n	6890 <osSemaphoreCreate+0x44>
    6884:	0020      	movs	r0, r4
    6886:	b289      	uxth	r1, r1
    6888:	f000 fea4 	bl	75d4 <rt_sem_init>
    688c:	0020      	movs	r0, r4
    688e:	e7e9      	b.n	6864 <osSemaphoreCreate+0x18>
    6890:	2000      	movs	r0, #0
    6892:	e7e7      	b.n	6864 <osSemaphoreCreate+0x18>
    6894:	20006075 	.word	0x20006075
    6898:	0000ffff 	.word	0x0000ffff
    689c:	00006721 	.word	0x00006721

000068a0 <osSemaphoreWait>:
    68a0:	b590      	push	{r4, r7, lr}
    68a2:	f3ef 8405 	mrs	r4, IPSR
    68a6:	2c00      	cmp	r4, #0
    68a8:	d103      	bne.n	68b2 <osSemaphoreWait+0x12>
    68aa:	4f03      	ldr	r7, [pc, #12]	; (68b8 <osSemaphoreWait+0x18>)
    68ac:	46bc      	mov	ip, r7
    68ae:	df00      	svc	0
    68b0:	bd90      	pop	{r4, r7, pc}
    68b2:	2001      	movs	r0, #1
    68b4:	4240      	negs	r0, r0
    68b6:	e7fb      	b.n	68b0 <osSemaphoreWait+0x10>
    68b8:	0000674d 	.word	0x0000674d

000068bc <osSemaphoreRelease>:
    68bc:	b5b0      	push	{r4, r5, r7, lr}
    68be:	f3ef 8405 	mrs	r4, IPSR
    68c2:	2c00      	cmp	r4, #0
    68c4:	d105      	bne.n	68d2 <osSemaphoreRelease+0x16>
    68c6:	4f0c      	ldr	r7, [pc, #48]	; (68f8 <osSemaphoreRelease+0x3c>)
    68c8:	46bc      	mov	ip, r7
    68ca:	df00      	svc	0
    68cc:	0003      	movs	r3, r0
    68ce:	0018      	movs	r0, r3
    68d0:	bdb0      	pop	{r4, r5, r7, pc}
    68d2:	2380      	movs	r3, #128	; 0x80
    68d4:	0782      	lsls	r2, r0, #30
    68d6:	d1fa      	bne.n	68ce <osSemaphoreRelease+0x12>
    68d8:	2800      	cmp	r0, #0
    68da:	d0f8      	beq.n	68ce <osSemaphoreRelease+0x12>
    68dc:	7802      	ldrb	r2, [r0, #0]
    68de:	2a02      	cmp	r2, #2
    68e0:	d1f5      	bne.n	68ce <osSemaphoreRelease+0x12>
    68e2:	8841      	ldrh	r1, [r0, #2]
    68e4:	4a03      	ldr	r2, [pc, #12]	; (68f4 <osSemaphoreRelease+0x38>)
    68e6:	3301      	adds	r3, #1
    68e8:	4291      	cmp	r1, r2
    68ea:	d0f0      	beq.n	68ce <osSemaphoreRelease+0x12>
    68ec:	f000 fee4 	bl	76b8 <isr_sem_send>
    68f0:	2300      	movs	r3, #0
    68f2:	e7ec      	b.n	68ce <osSemaphoreRelease+0x12>
    68f4:	0000ffff 	.word	0x0000ffff
    68f8:	000067d5 	.word	0x000067d5

000068fc <osSemaphoreDelete>:
    68fc:	b5b0      	push	{r4, r5, r7, lr}
    68fe:	0005      	movs	r5, r0
    6900:	f3ef 8405 	mrs	r4, IPSR
    6904:	2082      	movs	r0, #130	; 0x82
    6906:	2c00      	cmp	r4, #0
    6908:	d000      	beq.n	690c <osSemaphoreDelete+0x10>
    690a:	bdb0      	pop	{r4, r5, r7, pc}
    690c:	0028      	movs	r0, r5
    690e:	4f02      	ldr	r7, [pc, #8]	; (6918 <osSemaphoreDelete+0x1c>)
    6910:	46bc      	mov	ip, r7
    6912:	df00      	svc	0
    6914:	e7f9      	b.n	690a <osSemaphoreDelete+0xe>
    6916:	0000      	.short	0x0000
    6918:	00006801 	.word	0x00006801

0000691c <svcPoolCreate>:
    691c:	b510      	push	{r4, lr}
    691e:	1e04      	subs	r4, r0, #0
    6920:	d011      	beq.n	6946 <svcPoolCreate+0x2a>
    6922:	6801      	ldr	r1, [r0, #0]
    6924:	2900      	cmp	r1, #0
    6926:	d00e      	beq.n	6946 <svcPoolCreate+0x2a>
    6928:	6842      	ldr	r2, [r0, #4]
    692a:	2a00      	cmp	r2, #0
    692c:	d00b      	beq.n	6946 <svcPoolCreate+0x2a>
    692e:	6880      	ldr	r0, [r0, #8]
    6930:	2800      	cmp	r0, #0
    6932:	d008      	beq.n	6946 <svcPoolCreate+0x2a>
    6934:	2303      	movs	r3, #3
    6936:	3203      	adds	r2, #3
    6938:	439a      	bics	r2, r3
    693a:	4351      	muls	r1, r2
    693c:	310c      	adds	r1, #12
    693e:	f000 fc81 	bl	7244 <_init_box>
    6942:	68a0      	ldr	r0, [r4, #8]
    6944:	bd10      	pop	{r4, pc}
    6946:	2000      	movs	r0, #0
    6948:	e7fc      	b.n	6944 <svcPoolCreate+0x28>
    694a:	46c0      	nop			; (mov r8, r8)

0000694c <sysPoolAlloc>:
    694c:	b510      	push	{r4, lr}
    694e:	2800      	cmp	r0, #0
    6950:	d002      	beq.n	6958 <sysPoolAlloc+0xc>
    6952:	f000 fca3 	bl	729c <rt_alloc_box>
    6956:	bd10      	pop	{r4, pc}
    6958:	2000      	movs	r0, #0
    695a:	e7fc      	b.n	6956 <sysPoolAlloc+0xa>

0000695c <sysPoolFree>:
    695c:	b510      	push	{r4, lr}
    695e:	2380      	movs	r3, #128	; 0x80
    6960:	2800      	cmp	r0, #0
    6962:	d006      	beq.n	6972 <sysPoolFree+0x16>
    6964:	f000 fcba 	bl	72dc <rt_free_box>
    6968:	1e42      	subs	r2, r0, #1
    696a:	4190      	sbcs	r0, r2
    696c:	2386      	movs	r3, #134	; 0x86
    696e:	4240      	negs	r0, r0
    6970:	4003      	ands	r3, r0
    6972:	0018      	movs	r0, r3
    6974:	bd10      	pop	{r4, pc}
    6976:	46c0      	nop			; (mov r8, r8)

00006978 <osPoolCreate>:
    6978:	b5b0      	push	{r4, r5, r7, lr}
    697a:	0004      	movs	r4, r0
    697c:	f3ef 8005 	mrs	r0, IPSR
    6980:	2800      	cmp	r0, #0
    6982:	d120      	bne.n	69c6 <osPoolCreate+0x4e>
    6984:	f3ef 8014 	mrs	r0, CONTROL
    6988:	07c0      	lsls	r0, r0, #31
    698a:	d504      	bpl.n	6996 <osPoolCreate+0x1e>
    698c:	0020      	movs	r0, r4
    698e:	4f10      	ldr	r7, [pc, #64]	; (69d0 <osPoolCreate+0x58>)
    6990:	46bc      	mov	ip, r7
    6992:	df00      	svc	0
    6994:	bdb0      	pop	{r4, r5, r7, pc}
    6996:	480d      	ldr	r0, [pc, #52]	; (69cc <osPoolCreate+0x54>)
    6998:	7800      	ldrb	r0, [r0, #0]
    699a:	2800      	cmp	r0, #0
    699c:	d1f6      	bne.n	698c <osPoolCreate+0x14>
    699e:	2c00      	cmp	r4, #0
    69a0:	d011      	beq.n	69c6 <osPoolCreate+0x4e>
    69a2:	6821      	ldr	r1, [r4, #0]
    69a4:	2900      	cmp	r1, #0
    69a6:	d00e      	beq.n	69c6 <osPoolCreate+0x4e>
    69a8:	6862      	ldr	r2, [r4, #4]
    69aa:	2a00      	cmp	r2, #0
    69ac:	d00b      	beq.n	69c6 <osPoolCreate+0x4e>
    69ae:	68a0      	ldr	r0, [r4, #8]
    69b0:	2800      	cmp	r0, #0
    69b2:	d008      	beq.n	69c6 <osPoolCreate+0x4e>
    69b4:	2303      	movs	r3, #3
    69b6:	3203      	adds	r2, #3
    69b8:	439a      	bics	r2, r3
    69ba:	4351      	muls	r1, r2
    69bc:	310c      	adds	r1, #12
    69be:	f000 fc41 	bl	7244 <_init_box>
    69c2:	68a0      	ldr	r0, [r4, #8]
    69c4:	e7e6      	b.n	6994 <osPoolCreate+0x1c>
    69c6:	2000      	movs	r0, #0
    69c8:	e7e4      	b.n	6994 <osPoolCreate+0x1c>
    69ca:	46c0      	nop			; (mov r8, r8)
    69cc:	20006075 	.word	0x20006075
    69d0:	0000691d 	.word	0x0000691d

000069d4 <osPoolAlloc>:
    69d4:	b5b0      	push	{r4, r5, r7, lr}
    69d6:	f3ef 8405 	mrs	r4, IPSR
    69da:	2c00      	cmp	r4, #0
    69dc:	d103      	bne.n	69e6 <osPoolAlloc+0x12>
    69de:	f3ef 8414 	mrs	r4, CONTROL
    69e2:	07e4      	lsls	r4, r4, #31
    69e4:	d404      	bmi.n	69f0 <osPoolAlloc+0x1c>
    69e6:	2800      	cmp	r0, #0
    69e8:	d006      	beq.n	69f8 <osPoolAlloc+0x24>
    69ea:	f000 fc57 	bl	729c <rt_alloc_box>
    69ee:	bdb0      	pop	{r4, r5, r7, pc}
    69f0:	4f02      	ldr	r7, [pc, #8]	; (69fc <osPoolAlloc+0x28>)
    69f2:	46bc      	mov	ip, r7
    69f4:	df00      	svc	0
    69f6:	e7fa      	b.n	69ee <osPoolAlloc+0x1a>
    69f8:	2000      	movs	r0, #0
    69fa:	e7f8      	b.n	69ee <osPoolAlloc+0x1a>
    69fc:	0000694d 	.word	0x0000694d

00006a00 <osPoolCAlloc>:
    6a00:	b5b0      	push	{r4, r5, r7, lr}
    6a02:	0004      	movs	r4, r0
    6a04:	f3ef 8005 	mrs	r0, IPSR
    6a08:	2800      	cmp	r0, #0
    6a0a:	d103      	bne.n	6a14 <osPoolCAlloc+0x14>
    6a0c:	f3ef 8014 	mrs	r0, CONTROL
    6a10:	07c0      	lsls	r0, r0, #31
    6a12:	d410      	bmi.n	6a36 <osPoolCAlloc+0x36>
    6a14:	2c00      	cmp	r4, #0
    6a16:	d015      	beq.n	6a44 <osPoolCAlloc+0x44>
    6a18:	0020      	movs	r0, r4
    6a1a:	f000 fc3f 	bl	729c <rt_alloc_box>
    6a1e:	2800      	cmp	r0, #0
    6a20:	d010      	beq.n	6a44 <osPoolCAlloc+0x44>
    6a22:	68a3      	ldr	r3, [r4, #8]
    6a24:	2b00      	cmp	r3, #0
    6a26:	d005      	beq.n	6a34 <osPoolCAlloc+0x34>
    6a28:	0002      	movs	r2, r0
    6a2a:	2100      	movs	r1, #0
    6a2c:	3b04      	subs	r3, #4
    6a2e:	c202      	stmia	r2!, {r1}
    6a30:	2b00      	cmp	r3, #0
    6a32:	d1fb      	bne.n	6a2c <osPoolCAlloc+0x2c>
    6a34:	bdb0      	pop	{r4, r5, r7, pc}
    6a36:	0020      	movs	r0, r4
    6a38:	4f03      	ldr	r7, [pc, #12]	; (6a48 <osPoolCAlloc+0x48>)
    6a3a:	46bc      	mov	ip, r7
    6a3c:	df00      	svc	0
    6a3e:	2c00      	cmp	r4, #0
    6a40:	d1ed      	bne.n	6a1e <osPoolCAlloc+0x1e>
    6a42:	e7f7      	b.n	6a34 <osPoolCAlloc+0x34>
    6a44:	2000      	movs	r0, #0
    6a46:	e7f5      	b.n	6a34 <osPoolCAlloc+0x34>
    6a48:	0000694d 	.word	0x0000694d

00006a4c <osPoolFree>:
    6a4c:	b5b0      	push	{r4, r5, r7, lr}
    6a4e:	f3ef 8405 	mrs	r4, IPSR
    6a52:	2c00      	cmp	r4, #0
    6a54:	d103      	bne.n	6a5e <osPoolFree+0x12>
    6a56:	f3ef 8414 	mrs	r4, CONTROL
    6a5a:	07e4      	lsls	r4, r4, #31
    6a5c:	d40a      	bmi.n	6a74 <osPoolFree+0x28>
    6a5e:	2800      	cmp	r0, #0
    6a60:	d00c      	beq.n	6a7c <osPoolFree+0x30>
    6a62:	f000 fc3b 	bl	72dc <rt_free_box>
    6a66:	0003      	movs	r3, r0
    6a68:	1e5a      	subs	r2, r3, #1
    6a6a:	4193      	sbcs	r3, r2
    6a6c:	2086      	movs	r0, #134	; 0x86
    6a6e:	425b      	negs	r3, r3
    6a70:	4018      	ands	r0, r3
    6a72:	bdb0      	pop	{r4, r5, r7, pc}
    6a74:	4f02      	ldr	r7, [pc, #8]	; (6a80 <osPoolFree+0x34>)
    6a76:	46bc      	mov	ip, r7
    6a78:	df00      	svc	0
    6a7a:	e7fa      	b.n	6a72 <osPoolFree+0x26>
    6a7c:	2080      	movs	r0, #128	; 0x80
    6a7e:	e7f8      	b.n	6a72 <osPoolFree+0x26>
    6a80:	0000695d 	.word	0x0000695d

00006a84 <svcMessageCreate>:
    6a84:	b510      	push	{r4, lr}
    6a86:	1e04      	subs	r4, r0, #0
    6a88:	d00f      	beq.n	6aaa <svcMessageCreate+0x26>
    6a8a:	6801      	ldr	r1, [r0, #0]
    6a8c:	2900      	cmp	r1, #0
    6a8e:	d00c      	beq.n	6aaa <svcMessageCreate+0x26>
    6a90:	6840      	ldr	r0, [r0, #4]
    6a92:	2800      	cmp	r0, #0
    6a94:	d009      	beq.n	6aaa <svcMessageCreate+0x26>
    6a96:	7803      	ldrb	r3, [r0, #0]
    6a98:	2b00      	cmp	r3, #0
    6a9a:	d106      	bne.n	6aaa <svcMessageCreate+0x26>
    6a9c:	3104      	adds	r1, #4
    6a9e:	0089      	lsls	r1, r1, #2
    6aa0:	b289      	uxth	r1, r1
    6aa2:	f000 fe2b 	bl	76fc <rt_mbx_init>
    6aa6:	6860      	ldr	r0, [r4, #4]
    6aa8:	bd10      	pop	{r4, pc}
    6aaa:	2000      	movs	r0, #0
    6aac:	e7fc      	b.n	6aa8 <svcMessageCreate+0x24>
    6aae:	46c0      	nop			; (mov r8, r8)

00006ab0 <svcMessagePut>:
    6ab0:	b570      	push	{r4, r5, r6, lr}
    6ab2:	0004      	movs	r4, r0
    6ab4:	b082      	sub	sp, #8
    6ab6:	000e      	movs	r6, r1
    6ab8:	0015      	movs	r5, r2
    6aba:	2800      	cmp	r0, #0
    6abc:	d005      	beq.n	6aca <svcMessagePut+0x1a>
    6abe:	7803      	ldrb	r3, [r0, #0]
    6ac0:	2080      	movs	r0, #128	; 0x80
    6ac2:	2b01      	cmp	r3, #1
    6ac4:	d003      	beq.n	6ace <svcMessagePut+0x1e>
    6ac6:	b002      	add	sp, #8
    6ac8:	bd70      	pop	{r4, r5, r6, pc}
    6aca:	2080      	movs	r0, #128	; 0x80
    6acc:	e7fb      	b.n	6ac6 <svcMessagePut+0x16>
    6ace:	2200      	movs	r2, #0
    6ad0:	2d00      	cmp	r5, #0
    6ad2:	d014      	beq.n	6afe <svcMessagePut+0x4e>
    6ad4:	1c6b      	adds	r3, r5, #1
    6ad6:	d01f      	beq.n	6b18 <svcMessagePut+0x68>
    6ad8:	4b11      	ldr	r3, [pc, #68]	; (6b20 <svcMessagePut+0x70>)
    6ada:	429d      	cmp	r5, r3
    6adc:	d81e      	bhi.n	6b1c <svcMessagePut+0x6c>
    6ade:	20fa      	movs	r0, #250	; 0xfa
    6ae0:	4b10      	ldr	r3, [pc, #64]	; (6b24 <svcMessagePut+0x74>)
    6ae2:	0080      	lsls	r0, r0, #2
    6ae4:	4368      	muls	r0, r5
    6ae6:	681b      	ldr	r3, [r3, #0]
    6ae8:	9301      	str	r3, [sp, #4]
    6aea:	3b01      	subs	r3, #1
    6aec:	18c0      	adds	r0, r0, r3
    6aee:	9901      	ldr	r1, [sp, #4]
    6af0:	f7fd fda6 	bl	4640 <__aeabi_uidiv>
    6af4:	4b0c      	ldr	r3, [pc, #48]	; (6b28 <svcMessagePut+0x78>)
    6af6:	001a      	movs	r2, r3
    6af8:	4298      	cmp	r0, r3
    6afa:	d800      	bhi.n	6afe <svcMessagePut+0x4e>
    6afc:	b282      	uxth	r2, r0
    6afe:	0031      	movs	r1, r6
    6b00:	0020      	movs	r0, r4
    6b02:	f000 fe09 	bl	7718 <rt_mbx_send>
    6b06:	0003      	movs	r3, r0
    6b08:	2000      	movs	r0, #0
    6b0a:	2b01      	cmp	r3, #1
    6b0c:	d1db      	bne.n	6ac6 <svcMessagePut+0x16>
    6b0e:	30c1      	adds	r0, #193	; 0xc1
    6b10:	2d00      	cmp	r5, #0
    6b12:	d1d8      	bne.n	6ac6 <svcMessagePut+0x16>
    6b14:	3840      	subs	r0, #64	; 0x40
    6b16:	e7d6      	b.n	6ac6 <svcMessagePut+0x16>
    6b18:	4a04      	ldr	r2, [pc, #16]	; (6b2c <svcMessagePut+0x7c>)
    6b1a:	e7f0      	b.n	6afe <svcMessagePut+0x4e>
    6b1c:	4a02      	ldr	r2, [pc, #8]	; (6b28 <svcMessagePut+0x78>)
    6b1e:	e7ee      	b.n	6afe <svcMessagePut+0x4e>
    6b20:	003d0900 	.word	0x003d0900
    6b24:	000088c8 	.word	0x000088c8
    6b28:	0000fffe 	.word	0x0000fffe
    6b2c:	0000ffff 	.word	0x0000ffff

00006b30 <svcMessageGet>:
    6b30:	b510      	push	{r4, lr}
    6b32:	0004      	movs	r4, r0
    6b34:	b086      	sub	sp, #24
    6b36:	2800      	cmp	r0, #0
    6b38:	d002      	beq.n	6b40 <svcMessageGet+0x10>
    6b3a:	7803      	ldrb	r3, [r0, #0]
    6b3c:	2b01      	cmp	r3, #1
    6b3e:	d005      	beq.n	6b4c <svcMessageGet+0x1c>
    6b40:	2080      	movs	r0, #128	; 0x80
    6b42:	2100      	movs	r1, #0
    6b44:	2200      	movs	r2, #0
    6b46:	2300      	movs	r3, #0
    6b48:	b006      	add	sp, #24
    6b4a:	bd10      	pop	{r4, pc}
    6b4c:	2900      	cmp	r1, #0
    6b4e:	d01c      	beq.n	6b8a <svcMessageGet+0x5a>
    6b50:	1c4b      	adds	r3, r1, #1
    6b52:	d02a      	beq.n	6baa <svcMessageGet+0x7a>
    6b54:	4b16      	ldr	r3, [pc, #88]	; (6bb0 <svcMessageGet+0x80>)
    6b56:	4299      	cmp	r1, r3
    6b58:	d820      	bhi.n	6b9c <svcMessageGet+0x6c>
    6b5a:	20fa      	movs	r0, #250	; 0xfa
    6b5c:	4b15      	ldr	r3, [pc, #84]	; (6bb4 <svcMessageGet+0x84>)
    6b5e:	0080      	lsls	r0, r0, #2
    6b60:	4341      	muls	r1, r0
    6b62:	681b      	ldr	r3, [r3, #0]
    6b64:	9301      	str	r3, [sp, #4]
    6b66:	3b01      	subs	r3, #1
    6b68:	1858      	adds	r0, r3, r1
    6b6a:	9901      	ldr	r1, [sp, #4]
    6b6c:	f7fd fd68 	bl	4640 <__aeabi_uidiv>
    6b70:	4b11      	ldr	r3, [pc, #68]	; (6bb8 <svcMessageGet+0x88>)
    6b72:	001a      	movs	r2, r3
    6b74:	4298      	cmp	r0, r3
    6b76:	d916      	bls.n	6ba6 <svcMessageGet+0x76>
    6b78:	a904      	add	r1, sp, #16
    6b7a:	0020      	movs	r0, r4
    6b7c:	f000 fe18 	bl	77b0 <rt_mbx_wait>
    6b80:	2801      	cmp	r0, #1
    6b82:	d00d      	beq.n	6ba0 <svcMessageGet+0x70>
    6b84:	2010      	movs	r0, #16
    6b86:	9904      	ldr	r1, [sp, #16]
    6b88:	e7dc      	b.n	6b44 <svcMessageGet+0x14>
    6b8a:	2200      	movs	r2, #0
    6b8c:	a904      	add	r1, sp, #16
    6b8e:	f000 fe0f 	bl	77b0 <rt_mbx_wait>
    6b92:	2801      	cmp	r0, #1
    6b94:	d1f6      	bne.n	6b84 <svcMessageGet+0x54>
    6b96:	2000      	movs	r0, #0
    6b98:	9904      	ldr	r1, [sp, #16]
    6b9a:	e7d3      	b.n	6b44 <svcMessageGet+0x14>
    6b9c:	4a06      	ldr	r2, [pc, #24]	; (6bb8 <svcMessageGet+0x88>)
    6b9e:	e7eb      	b.n	6b78 <svcMessageGet+0x48>
    6ba0:	2040      	movs	r0, #64	; 0x40
    6ba2:	9904      	ldr	r1, [sp, #16]
    6ba4:	e7ce      	b.n	6b44 <svcMessageGet+0x14>
    6ba6:	b282      	uxth	r2, r0
    6ba8:	e7e6      	b.n	6b78 <svcMessageGet+0x48>
    6baa:	4a04      	ldr	r2, [pc, #16]	; (6bbc <svcMessageGet+0x8c>)
    6bac:	e7e4      	b.n	6b78 <svcMessageGet+0x48>
    6bae:	46c0      	nop			; (mov r8, r8)
    6bb0:	003d0900 	.word	0x003d0900
    6bb4:	000088c8 	.word	0x000088c8
    6bb8:	0000fffe 	.word	0x0000fffe
    6bbc:	0000ffff 	.word	0x0000ffff

00006bc0 <isrMessagePut>:
    6bc0:	b570      	push	{r4, r5, r6, lr}
    6bc2:	0004      	movs	r4, r0
    6bc4:	000d      	movs	r5, r1
    6bc6:	2080      	movs	r0, #128	; 0x80
    6bc8:	2c00      	cmp	r4, #0
    6bca:	d001      	beq.n	6bd0 <isrMessagePut+0x10>
    6bcc:	2a00      	cmp	r2, #0
    6bce:	d000      	beq.n	6bd2 <isrMessagePut+0x12>
    6bd0:	bd70      	pop	{r4, r5, r6, pc}
    6bd2:	7823      	ldrb	r3, [r4, #0]
    6bd4:	2b01      	cmp	r3, #1
    6bd6:	d1fb      	bne.n	6bd0 <isrMessagePut+0x10>
    6bd8:	0020      	movs	r0, r4
    6bda:	f000 fe45 	bl	7868 <rt_mbx_check>
    6bde:	0003      	movs	r3, r0
    6be0:	2081      	movs	r0, #129	; 0x81
    6be2:	2b00      	cmp	r3, #0
    6be4:	d0f4      	beq.n	6bd0 <isrMessagePut+0x10>
    6be6:	0020      	movs	r0, r4
    6be8:	0029      	movs	r1, r5
    6bea:	f000 fe41 	bl	7870 <isr_mbx_send>
    6bee:	2000      	movs	r0, #0
    6bf0:	e7ee      	b.n	6bd0 <isrMessagePut+0x10>
    6bf2:	46c0      	nop			; (mov r8, r8)

00006bf4 <isrMessageGet>:
    6bf4:	b570      	push	{r4, r5, r6, lr}
    6bf6:	0004      	movs	r4, r0
    6bf8:	b084      	sub	sp, #16
    6bfa:	0008      	movs	r0, r1
    6bfc:	0015      	movs	r5, r2
    6bfe:	2900      	cmp	r1, #0
    6c00:	d004      	beq.n	6c0c <isrMessageGet+0x18>
    6c02:	2a00      	cmp	r2, #0
    6c04:	d102      	bne.n	6c0c <isrMessageGet+0x18>
    6c06:	780b      	ldrb	r3, [r1, #0]
    6c08:	2b01      	cmp	r3, #1
    6c0a:	d004      	beq.n	6c16 <isrMessageGet+0x22>
    6c0c:	2380      	movs	r3, #128	; 0x80
    6c0e:	6023      	str	r3, [r4, #0]
    6c10:	0020      	movs	r0, r4
    6c12:	b004      	add	sp, #16
    6c14:	bd70      	pop	{r4, r5, r6, pc}
    6c16:	a902      	add	r1, sp, #8
    6c18:	ae01      	add	r6, sp, #4
    6c1a:	f000 fe2f 	bl	787c <isr_mbx_receive>
    6c1e:	2804      	cmp	r0, #4
    6c20:	d004      	beq.n	6c2c <isrMessageGet+0x38>
    6c22:	0023      	movs	r3, r4
    6c24:	9501      	str	r5, [sp, #4]
    6c26:	ce07      	ldmia	r6!, {r0, r1, r2}
    6c28:	c307      	stmia	r3!, {r0, r1, r2}
    6c2a:	e7f1      	b.n	6c10 <isrMessageGet+0x1c>
    6c2c:	2310      	movs	r3, #16
    6c2e:	9301      	str	r3, [sp, #4]
    6c30:	0023      	movs	r3, r4
    6c32:	ce07      	ldmia	r6!, {r0, r1, r2}
    6c34:	c307      	stmia	r3!, {r0, r1, r2}
    6c36:	e7eb      	b.n	6c10 <isrMessageGet+0x1c>

00006c38 <osMessageCreate>:
    6c38:	b5b0      	push	{r4, r5, r7, lr}
    6c3a:	0004      	movs	r4, r0
    6c3c:	f3ef 8005 	mrs	r0, IPSR
    6c40:	2800      	cmp	r0, #0
    6c42:	d11e      	bne.n	6c82 <osMessageCreate+0x4a>
    6c44:	f3ef 8014 	mrs	r0, CONTROL
    6c48:	07c0      	lsls	r0, r0, #31
    6c4a:	d504      	bpl.n	6c56 <osMessageCreate+0x1e>
    6c4c:	0020      	movs	r0, r4
    6c4e:	4f0f      	ldr	r7, [pc, #60]	; (6c8c <osMessageCreate+0x54>)
    6c50:	46bc      	mov	ip, r7
    6c52:	df00      	svc	0
    6c54:	bdb0      	pop	{r4, r5, r7, pc}
    6c56:	480c      	ldr	r0, [pc, #48]	; (6c88 <osMessageCreate+0x50>)
    6c58:	7800      	ldrb	r0, [r0, #0]
    6c5a:	2800      	cmp	r0, #0
    6c5c:	d1f6      	bne.n	6c4c <osMessageCreate+0x14>
    6c5e:	2c00      	cmp	r4, #0
    6c60:	d00f      	beq.n	6c82 <osMessageCreate+0x4a>
    6c62:	6823      	ldr	r3, [r4, #0]
    6c64:	2b00      	cmp	r3, #0
    6c66:	d00c      	beq.n	6c82 <osMessageCreate+0x4a>
    6c68:	6860      	ldr	r0, [r4, #4]
    6c6a:	2800      	cmp	r0, #0
    6c6c:	d009      	beq.n	6c82 <osMessageCreate+0x4a>
    6c6e:	7802      	ldrb	r2, [r0, #0]
    6c70:	2a00      	cmp	r2, #0
    6c72:	d106      	bne.n	6c82 <osMessageCreate+0x4a>
    6c74:	1d19      	adds	r1, r3, #4
    6c76:	008b      	lsls	r3, r1, #2
    6c78:	b299      	uxth	r1, r3
    6c7a:	f000 fd3f 	bl	76fc <rt_mbx_init>
    6c7e:	6860      	ldr	r0, [r4, #4]
    6c80:	e7e8      	b.n	6c54 <osMessageCreate+0x1c>
    6c82:	2000      	movs	r0, #0
    6c84:	e7e6      	b.n	6c54 <osMessageCreate+0x1c>
    6c86:	46c0      	nop			; (mov r8, r8)
    6c88:	20006075 	.word	0x20006075
    6c8c:	00006a85 	.word	0x00006a85

00006c90 <osMessagePut>:
    6c90:	b5b0      	push	{r4, r5, r7, lr}
    6c92:	0004      	movs	r4, r0
    6c94:	000d      	movs	r5, r1
    6c96:	f3ef 8105 	mrs	r1, IPSR
    6c9a:	2900      	cmp	r1, #0
    6c9c:	d008      	beq.n	6cb0 <osMessagePut+0x20>
    6c9e:	2080      	movs	r0, #128	; 0x80
    6ca0:	2c00      	cmp	r4, #0
    6ca2:	d004      	beq.n	6cae <osMessagePut+0x1e>
    6ca4:	2a00      	cmp	r2, #0
    6ca6:	d102      	bne.n	6cae <osMessagePut+0x1e>
    6ca8:	7823      	ldrb	r3, [r4, #0]
    6caa:	2b01      	cmp	r3, #1
    6cac:	d005      	beq.n	6cba <osMessagePut+0x2a>
    6cae:	bdb0      	pop	{r4, r5, r7, pc}
    6cb0:	0029      	movs	r1, r5
    6cb2:	4f08      	ldr	r7, [pc, #32]	; (6cd4 <osMessagePut+0x44>)
    6cb4:	46bc      	mov	ip, r7
    6cb6:	df00      	svc	0
    6cb8:	e7f9      	b.n	6cae <osMessagePut+0x1e>
    6cba:	0020      	movs	r0, r4
    6cbc:	f000 fdd4 	bl	7868 <rt_mbx_check>
    6cc0:	0003      	movs	r3, r0
    6cc2:	2081      	movs	r0, #129	; 0x81
    6cc4:	2b00      	cmp	r3, #0
    6cc6:	d0f2      	beq.n	6cae <osMessagePut+0x1e>
    6cc8:	0020      	movs	r0, r4
    6cca:	0029      	movs	r1, r5
    6ccc:	f000 fdd0 	bl	7870 <isr_mbx_send>
    6cd0:	2000      	movs	r0, #0
    6cd2:	e7ec      	b.n	6cae <osMessagePut+0x1e>
    6cd4:	00006ab1 	.word	0x00006ab1

00006cd8 <osMessageGet>:
    6cd8:	b5f0      	push	{r4, r5, r6, r7, lr}
    6cda:	0004      	movs	r4, r0
    6cdc:	b085      	sub	sp, #20
    6cde:	0008      	movs	r0, r1
    6ce0:	0015      	movs	r5, r2
    6ce2:	f3ef 8105 	mrs	r1, IPSR
    6ce6:	2900      	cmp	r1, #0
    6ce8:	d109      	bne.n	6cfe <osMessageGet+0x26>
    6cea:	0011      	movs	r1, r2
    6cec:	4f11      	ldr	r7, [pc, #68]	; (6d34 <osMessageGet+0x5c>)
    6cee:	46bc      	mov	ip, r7
    6cf0:	df00      	svc	0
    6cf2:	6020      	str	r0, [r4, #0]
    6cf4:	6061      	str	r1, [r4, #4]
    6cf6:	60a2      	str	r2, [r4, #8]
    6cf8:	0020      	movs	r0, r4
    6cfa:	b005      	add	sp, #20
    6cfc:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6cfe:	2800      	cmp	r0, #0
    6d00:	d004      	beq.n	6d0c <osMessageGet+0x34>
    6d02:	2a00      	cmp	r2, #0
    6d04:	d102      	bne.n	6d0c <osMessageGet+0x34>
    6d06:	7803      	ldrb	r3, [r0, #0]
    6d08:	2b01      	cmp	r3, #1
    6d0a:	d002      	beq.n	6d12 <osMessageGet+0x3a>
    6d0c:	2380      	movs	r3, #128	; 0x80
    6d0e:	6023      	str	r3, [r4, #0]
    6d10:	e7f2      	b.n	6cf8 <osMessageGet+0x20>
    6d12:	a902      	add	r1, sp, #8
    6d14:	ae01      	add	r6, sp, #4
    6d16:	f000 fdb1 	bl	787c <isr_mbx_receive>
    6d1a:	2804      	cmp	r0, #4
    6d1c:	d004      	beq.n	6d28 <osMessageGet+0x50>
    6d1e:	0023      	movs	r3, r4
    6d20:	9501      	str	r5, [sp, #4]
    6d22:	ce07      	ldmia	r6!, {r0, r1, r2}
    6d24:	c307      	stmia	r3!, {r0, r1, r2}
    6d26:	e7e7      	b.n	6cf8 <osMessageGet+0x20>
    6d28:	2310      	movs	r3, #16
    6d2a:	9301      	str	r3, [sp, #4]
    6d2c:	0023      	movs	r3, r4
    6d2e:	ce07      	ldmia	r6!, {r0, r1, r2}
    6d30:	c307      	stmia	r3!, {r0, r1, r2}
    6d32:	e7e1      	b.n	6cf8 <osMessageGet+0x20>
    6d34:	00006b31 	.word	0x00006b31

00006d38 <svcMailCreate>:
    6d38:	b570      	push	{r4, r5, r6, lr}
    6d3a:	1e04      	subs	r4, r0, #0
    6d3c:	d021      	beq.n	6d82 <svcMailCreate+0x4a>
    6d3e:	6801      	ldr	r1, [r0, #0]
    6d40:	2900      	cmp	r1, #0
    6d42:	d01e      	beq.n	6d82 <svcMailCreate+0x4a>
    6d44:	6842      	ldr	r2, [r0, #4]
    6d46:	2a00      	cmp	r2, #0
    6d48:	d01b      	beq.n	6d82 <svcMailCreate+0x4a>
    6d4a:	6883      	ldr	r3, [r0, #8]
    6d4c:	2b00      	cmp	r3, #0
    6d4e:	d018      	beq.n	6d82 <svcMailCreate+0x4a>
    6d50:	6858      	ldr	r0, [r3, #4]
    6d52:	681d      	ldr	r5, [r3, #0]
    6d54:	2800      	cmp	r0, #0
    6d56:	d014      	beq.n	6d82 <svcMailCreate+0x4a>
    6d58:	2d00      	cmp	r5, #0
    6d5a:	d012      	beq.n	6d82 <svcMailCreate+0x4a>
    6d5c:	782b      	ldrb	r3, [r5, #0]
    6d5e:	2b00      	cmp	r3, #0
    6d60:	d10f      	bne.n	6d82 <svcMailCreate+0x4a>
    6d62:	3303      	adds	r3, #3
    6d64:	3203      	adds	r2, #3
    6d66:	439a      	bics	r2, r3
    6d68:	4351      	muls	r1, r2
    6d6a:	310c      	adds	r1, #12
    6d6c:	f000 fa6a 	bl	7244 <_init_box>
    6d70:	6823      	ldr	r3, [r4, #0]
    6d72:	0028      	movs	r0, r5
    6d74:	1d19      	adds	r1, r3, #4
    6d76:	0089      	lsls	r1, r1, #2
    6d78:	b289      	uxth	r1, r1
    6d7a:	f000 fcbf 	bl	76fc <rt_mbx_init>
    6d7e:	68a0      	ldr	r0, [r4, #8]
    6d80:	bd70      	pop	{r4, r5, r6, pc}
    6d82:	2000      	movs	r0, #0
    6d84:	e7fc      	b.n	6d80 <svcMailCreate+0x48>
    6d86:	46c0      	nop			; (mov r8, r8)

00006d88 <sysMailAlloc>:
    6d88:	b530      	push	{r4, r5, lr}
    6d8a:	000d      	movs	r5, r1
    6d8c:	b083      	sub	sp, #12
    6d8e:	2800      	cmp	r0, #0
    6d90:	d035      	beq.n	6dfe <sysMailAlloc+0x76>
    6d92:	6804      	ldr	r4, [r0, #0]
    6d94:	6840      	ldr	r0, [r0, #4]
    6d96:	2800      	cmp	r0, #0
    6d98:	d031      	beq.n	6dfe <sysMailAlloc+0x76>
    6d9a:	2c00      	cmp	r4, #0
    6d9c:	d02f      	beq.n	6dfe <sysMailAlloc+0x76>
    6d9e:	2a00      	cmp	r2, #0
    6da0:	d007      	beq.n	6db2 <sysMailAlloc+0x2a>
    6da2:	2900      	cmp	r1, #0
    6da4:	d12b      	bne.n	6dfe <sysMailAlloc+0x76>
    6da6:	f000 fa79 	bl	729c <rt_alloc_box>
    6daa:	2800      	cmp	r0, #0
    6dac:	d027      	beq.n	6dfe <sysMailAlloc+0x76>
    6dae:	b003      	add	sp, #12
    6db0:	bd30      	pop	{r4, r5, pc}
    6db2:	f000 fa73 	bl	729c <rt_alloc_box>
    6db6:	2800      	cmp	r0, #0
    6db8:	d1f9      	bne.n	6dae <sysMailAlloc+0x26>
    6dba:	2d00      	cmp	r5, #0
    6dbc:	d01f      	beq.n	6dfe <sysMailAlloc+0x76>
    6dbe:	6863      	ldr	r3, [r4, #4]
    6dc0:	2b00      	cmp	r3, #0
    6dc2:	d020      	beq.n	6e06 <sysMailAlloc+0x7e>
    6dc4:	4b16      	ldr	r3, [pc, #88]	; (6e20 <sysMailAlloc+0x98>)
    6dc6:	0020      	movs	r0, r4
    6dc8:	6819      	ldr	r1, [r3, #0]
    6dca:	f000 fdf1 	bl	79b0 <rt_put_prio>
    6dce:	1c6b      	adds	r3, r5, #1
    6dd0:	d021      	beq.n	6e16 <sysMailAlloc+0x8e>
    6dd2:	4b14      	ldr	r3, [pc, #80]	; (6e24 <sysMailAlloc+0x9c>)
    6dd4:	429d      	cmp	r5, r3
    6dd6:	d814      	bhi.n	6e02 <sysMailAlloc+0x7a>
    6dd8:	20fa      	movs	r0, #250	; 0xfa
    6dda:	4b13      	ldr	r3, [pc, #76]	; (6e28 <sysMailAlloc+0xa0>)
    6ddc:	0080      	lsls	r0, r0, #2
    6dde:	4368      	muls	r0, r5
    6de0:	681b      	ldr	r3, [r3, #0]
    6de2:	9301      	str	r3, [sp, #4]
    6de4:	3b01      	subs	r3, #1
    6de6:	18c0      	adds	r0, r0, r3
    6de8:	9901      	ldr	r1, [sp, #4]
    6dea:	f7fd fc29 	bl	4640 <__aeabi_uidiv>
    6dee:	4b0f      	ldr	r3, [pc, #60]	; (6e2c <sysMailAlloc+0xa4>)
    6df0:	0002      	movs	r2, r0
    6df2:	0018      	movs	r0, r3
    6df4:	429a      	cmp	r2, r3
    6df6:	d910      	bls.n	6e1a <sysMailAlloc+0x92>
    6df8:	2108      	movs	r1, #8
    6dfa:	f001 fa13 	bl	8224 <rt_block>
    6dfe:	2000      	movs	r0, #0
    6e00:	e7d5      	b.n	6dae <sysMailAlloc+0x26>
    6e02:	480a      	ldr	r0, [pc, #40]	; (6e2c <sysMailAlloc+0xa4>)
    6e04:	e7f8      	b.n	6df8 <sysMailAlloc+0x70>
    6e06:	4a06      	ldr	r2, [pc, #24]	; (6e20 <sysMailAlloc+0x98>)
    6e08:	6812      	ldr	r2, [r2, #0]
    6e0a:	6062      	str	r2, [r4, #4]
    6e0c:	6053      	str	r3, [r2, #4]
    6e0e:	2303      	movs	r3, #3
    6e10:	6094      	str	r4, [r2, #8]
    6e12:	7063      	strb	r3, [r4, #1]
    6e14:	e7db      	b.n	6dce <sysMailAlloc+0x46>
    6e16:	4806      	ldr	r0, [pc, #24]	; (6e30 <sysMailAlloc+0xa8>)
    6e18:	e7ee      	b.n	6df8 <sysMailAlloc+0x70>
    6e1a:	b290      	uxth	r0, r2
    6e1c:	e7ec      	b.n	6df8 <sysMailAlloc+0x70>
    6e1e:	46c0      	nop			; (mov r8, r8)
    6e20:	200060b4 	.word	0x200060b4
    6e24:	003d0900 	.word	0x003d0900
    6e28:	000088c8 	.word	0x000088c8
    6e2c:	0000fffe 	.word	0x0000fffe
    6e30:	0000ffff 	.word	0x0000ffff

00006e34 <sysMailFree>:
    6e34:	b570      	push	{r4, r5, r6, lr}
    6e36:	0016      	movs	r6, r2
    6e38:	2800      	cmp	r0, #0
    6e3a:	d00e      	beq.n	6e5a <sysMailFree+0x26>
    6e3c:	6804      	ldr	r4, [r0, #0]
    6e3e:	2c00      	cmp	r4, #0
    6e40:	d00b      	beq.n	6e5a <sysMailFree+0x26>
    6e42:	6845      	ldr	r5, [r0, #4]
    6e44:	2080      	movs	r0, #128	; 0x80
    6e46:	2d00      	cmp	r5, #0
    6e48:	d006      	beq.n	6e58 <sysMailFree+0x24>
    6e4a:	0028      	movs	r0, r5
    6e4c:	f000 fa46 	bl	72dc <rt_free_box>
    6e50:	0003      	movs	r3, r0
    6e52:	2086      	movs	r0, #134	; 0x86
    6e54:	2b00      	cmp	r3, #0
    6e56:	d002      	beq.n	6e5e <sysMailFree+0x2a>
    6e58:	bd70      	pop	{r4, r5, r6, pc}
    6e5a:	2080      	movs	r0, #128	; 0x80
    6e5c:	e7fc      	b.n	6e58 <sysMailFree+0x24>
    6e5e:	6863      	ldr	r3, [r4, #4]
    6e60:	2b00      	cmp	r3, #0
    6e62:	d002      	beq.n	6e6a <sysMailFree+0x36>
    6e64:	7863      	ldrb	r3, [r4, #1]
    6e66:	2b03      	cmp	r3, #3
    6e68:	d001      	beq.n	6e6e <sysMailFree+0x3a>
    6e6a:	2000      	movs	r0, #0
    6e6c:	e7f4      	b.n	6e58 <sysMailFree+0x24>
    6e6e:	2e00      	cmp	r6, #0
    6e70:	d113      	bne.n	6e9a <sysMailFree+0x66>
    6e72:	0028      	movs	r0, r5
    6e74:	f000 fa12 	bl	729c <rt_alloc_box>
    6e78:	1e05      	subs	r5, r0, #0
    6e7a:	d0f6      	beq.n	6e6a <sysMailFree+0x36>
    6e7c:	0020      	movs	r0, r4
    6e7e:	f000 fdbd 	bl	79fc <rt_get_first>
    6e82:	0004      	movs	r4, r0
    6e84:	0029      	movs	r1, r5
    6e86:	f000 f987 	bl	7198 <rt_ret_val>
    6e8a:	0020      	movs	r0, r4
    6e8c:	f000 feee 	bl	7c6c <rt_rmv_dly>
    6e90:	0020      	movs	r0, r4
    6e92:	f001 f9a1 	bl	81d8 <rt_dispatch>
    6e96:	2000      	movs	r0, #0
    6e98:	e7de      	b.n	6e58 <sysMailFree+0x24>
    6e9a:	0020      	movs	r0, r4
    6e9c:	0029      	movs	r1, r5
    6e9e:	f000 fefb 	bl	7c98 <rt_psq_enq>
    6ea2:	f001 f8dd 	bl	8060 <rt_psh_req>
    6ea6:	2000      	movs	r0, #0
    6ea8:	e7d6      	b.n	6e58 <sysMailFree+0x24>
    6eaa:	46c0      	nop			; (mov r8, r8)

00006eac <osMailCreate>:
    6eac:	b5b0      	push	{r4, r5, r7, lr}
    6eae:	0004      	movs	r4, r0
    6eb0:	f3ef 8005 	mrs	r0, IPSR
    6eb4:	2800      	cmp	r0, #0
    6eb6:	d130      	bne.n	6f1a <osMailCreate+0x6e>
    6eb8:	f3ef 8014 	mrs	r0, CONTROL
    6ebc:	07c0      	lsls	r0, r0, #31
    6ebe:	d504      	bpl.n	6eca <osMailCreate+0x1e>
    6ec0:	0020      	movs	r0, r4
    6ec2:	4f18      	ldr	r7, [pc, #96]	; (6f24 <osMailCreate+0x78>)
    6ec4:	46bc      	mov	ip, r7
    6ec6:	df00      	svc	0
    6ec8:	bdb0      	pop	{r4, r5, r7, pc}
    6eca:	4815      	ldr	r0, [pc, #84]	; (6f20 <osMailCreate+0x74>)
    6ecc:	7800      	ldrb	r0, [r0, #0]
    6ece:	2800      	cmp	r0, #0
    6ed0:	d1f6      	bne.n	6ec0 <osMailCreate+0x14>
    6ed2:	2c00      	cmp	r4, #0
    6ed4:	d021      	beq.n	6f1a <osMailCreate+0x6e>
    6ed6:	6821      	ldr	r1, [r4, #0]
    6ed8:	2900      	cmp	r1, #0
    6eda:	d01e      	beq.n	6f1a <osMailCreate+0x6e>
    6edc:	6862      	ldr	r2, [r4, #4]
    6ede:	2a00      	cmp	r2, #0
    6ee0:	d01b      	beq.n	6f1a <osMailCreate+0x6e>
    6ee2:	68a3      	ldr	r3, [r4, #8]
    6ee4:	2b00      	cmp	r3, #0
    6ee6:	d018      	beq.n	6f1a <osMailCreate+0x6e>
    6ee8:	6858      	ldr	r0, [r3, #4]
    6eea:	681d      	ldr	r5, [r3, #0]
    6eec:	2800      	cmp	r0, #0
    6eee:	d014      	beq.n	6f1a <osMailCreate+0x6e>
    6ef0:	2d00      	cmp	r5, #0
    6ef2:	d012      	beq.n	6f1a <osMailCreate+0x6e>
    6ef4:	782b      	ldrb	r3, [r5, #0]
    6ef6:	2b00      	cmp	r3, #0
    6ef8:	d10f      	bne.n	6f1a <osMailCreate+0x6e>
    6efa:	3303      	adds	r3, #3
    6efc:	3203      	adds	r2, #3
    6efe:	439a      	bics	r2, r3
    6f00:	4351      	muls	r1, r2
    6f02:	310c      	adds	r1, #12
    6f04:	f000 f99e 	bl	7244 <_init_box>
    6f08:	6823      	ldr	r3, [r4, #0]
    6f0a:	0028      	movs	r0, r5
    6f0c:	1d19      	adds	r1, r3, #4
    6f0e:	0089      	lsls	r1, r1, #2
    6f10:	b289      	uxth	r1, r1
    6f12:	f000 fbf3 	bl	76fc <rt_mbx_init>
    6f16:	68a0      	ldr	r0, [r4, #8]
    6f18:	e7d6      	b.n	6ec8 <osMailCreate+0x1c>
    6f1a:	2000      	movs	r0, #0
    6f1c:	e7d4      	b.n	6ec8 <osMailCreate+0x1c>
    6f1e:	46c0      	nop			; (mov r8, r8)
    6f20:	20006075 	.word	0x20006075
    6f24:	00006d39 	.word	0x00006d39

00006f28 <osMailAlloc>:
    6f28:	b580      	push	{r7, lr}
    6f2a:	f3ef 8205 	mrs	r2, IPSR
    6f2e:	2a00      	cmp	r2, #0
    6f30:	d104      	bne.n	6f3c <osMailAlloc+0x14>
    6f32:	2200      	movs	r2, #0
    6f34:	4f09      	ldr	r7, [pc, #36]	; (6f5c <osMailAlloc+0x34>)
    6f36:	46bc      	mov	ip, r7
    6f38:	df00      	svc	0
    6f3a:	bd80      	pop	{r7, pc}
    6f3c:	2800      	cmp	r0, #0
    6f3e:	d00a      	beq.n	6f56 <osMailAlloc+0x2e>
    6f40:	6803      	ldr	r3, [r0, #0]
    6f42:	6840      	ldr	r0, [r0, #4]
    6f44:	2800      	cmp	r0, #0
    6f46:	d006      	beq.n	6f56 <osMailAlloc+0x2e>
    6f48:	2b00      	cmp	r3, #0
    6f4a:	d004      	beq.n	6f56 <osMailAlloc+0x2e>
    6f4c:	2900      	cmp	r1, #0
    6f4e:	d102      	bne.n	6f56 <osMailAlloc+0x2e>
    6f50:	f000 f9a4 	bl	729c <rt_alloc_box>
    6f54:	e7f1      	b.n	6f3a <osMailAlloc+0x12>
    6f56:	2000      	movs	r0, #0
    6f58:	e7ef      	b.n	6f3a <osMailAlloc+0x12>
    6f5a:	0000      	.short	0x0000
    6f5c:	00006d89 	.word	0x00006d89

00006f60 <osMailCAlloc>:
    6f60:	b5b0      	push	{r4, r5, r7, lr}
    6f62:	0004      	movs	r4, r0
    6f64:	f3ef 8205 	mrs	r2, IPSR
    6f68:	2a00      	cmp	r2, #0
    6f6a:	d112      	bne.n	6f92 <osMailCAlloc+0x32>
    6f6c:	2200      	movs	r2, #0
    6f6e:	4f13      	ldr	r7, [pc, #76]	; (6fbc <osMailCAlloc+0x5c>)
    6f70:	46bc      	mov	ip, r7
    6f72:	df00      	svc	0
    6f74:	6863      	ldr	r3, [r4, #4]
    6f76:	2b00      	cmp	r3, #0
    6f78:	d00a      	beq.n	6f90 <osMailCAlloc+0x30>
    6f7a:	2800      	cmp	r0, #0
    6f7c:	d01b      	beq.n	6fb6 <osMailCAlloc+0x56>
    6f7e:	689b      	ldr	r3, [r3, #8]
    6f80:	2b00      	cmp	r3, #0
    6f82:	d005      	beq.n	6f90 <osMailCAlloc+0x30>
    6f84:	0002      	movs	r2, r0
    6f86:	2100      	movs	r1, #0
    6f88:	3b04      	subs	r3, #4
    6f8a:	c202      	stmia	r2!, {r1}
    6f8c:	2b00      	cmp	r3, #0
    6f8e:	d1fb      	bne.n	6f88 <osMailCAlloc+0x28>
    6f90:	bdb0      	pop	{r4, r5, r7, pc}
    6f92:	2800      	cmp	r0, #0
    6f94:	d00f      	beq.n	6fb6 <osMailCAlloc+0x56>
    6f96:	6803      	ldr	r3, [r0, #0]
    6f98:	6840      	ldr	r0, [r0, #4]
    6f9a:	2800      	cmp	r0, #0
    6f9c:	d00b      	beq.n	6fb6 <osMailCAlloc+0x56>
    6f9e:	2b00      	cmp	r3, #0
    6fa0:	d009      	beq.n	6fb6 <osMailCAlloc+0x56>
    6fa2:	2900      	cmp	r1, #0
    6fa4:	d107      	bne.n	6fb6 <osMailCAlloc+0x56>
    6fa6:	f000 f979 	bl	729c <rt_alloc_box>
    6faa:	2800      	cmp	r0, #0
    6fac:	d003      	beq.n	6fb6 <osMailCAlloc+0x56>
    6fae:	6863      	ldr	r3, [r4, #4]
    6fb0:	2b00      	cmp	r3, #0
    6fb2:	d1e4      	bne.n	6f7e <osMailCAlloc+0x1e>
    6fb4:	e7ec      	b.n	6f90 <osMailCAlloc+0x30>
    6fb6:	2000      	movs	r0, #0
    6fb8:	e7ea      	b.n	6f90 <osMailCAlloc+0x30>
    6fba:	0000      	.short	0x0000
    6fbc:	00006d89 	.word	0x00006d89

00006fc0 <osMailFree>:
    6fc0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6fc2:	f3ef 8205 	mrs	r2, IPSR
    6fc6:	2a00      	cmp	r2, #0
    6fc8:	d106      	bne.n	6fd8 <osMailFree+0x18>
    6fca:	2200      	movs	r2, #0
    6fcc:	4f13      	ldr	r7, [pc, #76]	; (701c <osMailFree+0x5c>)
    6fce:	46bc      	mov	ip, r7
    6fd0:	df00      	svc	0
    6fd2:	0004      	movs	r4, r0
    6fd4:	0020      	movs	r0, r4
    6fd6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6fd8:	2800      	cmp	r0, #0
    6fda:	d01a      	beq.n	7012 <osMailFree+0x52>
    6fdc:	6805      	ldr	r5, [r0, #0]
    6fde:	2d00      	cmp	r5, #0
    6fe0:	d017      	beq.n	7012 <osMailFree+0x52>
    6fe2:	6846      	ldr	r6, [r0, #4]
    6fe4:	2480      	movs	r4, #128	; 0x80
    6fe6:	2e00      	cmp	r6, #0
    6fe8:	d0f4      	beq.n	6fd4 <osMailFree+0x14>
    6fea:	0030      	movs	r0, r6
    6fec:	f000 f976 	bl	72dc <rt_free_box>
    6ff0:	3406      	adds	r4, #6
    6ff2:	2800      	cmp	r0, #0
    6ff4:	d1ee      	bne.n	6fd4 <osMailFree+0x14>
    6ff6:	686b      	ldr	r3, [r5, #4]
    6ff8:	2b00      	cmp	r3, #0
    6ffa:	d00c      	beq.n	7016 <osMailFree+0x56>
    6ffc:	786b      	ldrb	r3, [r5, #1]
    6ffe:	2400      	movs	r4, #0
    7000:	2b03      	cmp	r3, #3
    7002:	d1e7      	bne.n	6fd4 <osMailFree+0x14>
    7004:	0031      	movs	r1, r6
    7006:	0028      	movs	r0, r5
    7008:	f000 fe46 	bl	7c98 <rt_psq_enq>
    700c:	f001 f828 	bl	8060 <rt_psh_req>
    7010:	e7e0      	b.n	6fd4 <osMailFree+0x14>
    7012:	2480      	movs	r4, #128	; 0x80
    7014:	e7de      	b.n	6fd4 <osMailFree+0x14>
    7016:	2400      	movs	r4, #0
    7018:	e7dc      	b.n	6fd4 <osMailFree+0x14>
    701a:	0000      	.short	0x0000
    701c:	00006e35 	.word	0x00006e35

00007020 <osMailPut>:
    7020:	b5b0      	push	{r4, r5, r7, lr}
    7022:	0002      	movs	r2, r0
    7024:	000c      	movs	r4, r1
    7026:	2800      	cmp	r0, #0
    7028:	d00e      	beq.n	7048 <osMailPut+0x28>
    702a:	2086      	movs	r0, #134	; 0x86
    702c:	2900      	cmp	r1, #0
    702e:	d00a      	beq.n	7046 <osMailPut+0x26>
    7030:	6815      	ldr	r5, [r2, #0]
    7032:	f3ef 8205 	mrs	r2, IPSR
    7036:	2a00      	cmp	r2, #0
    7038:	d008      	beq.n	704c <osMailPut+0x2c>
    703a:	2d00      	cmp	r5, #0
    703c:	d004      	beq.n	7048 <osMailPut+0x28>
    703e:	782b      	ldrb	r3, [r5, #0]
    7040:	3806      	subs	r0, #6
    7042:	2b01      	cmp	r3, #1
    7044:	d008      	beq.n	7058 <osMailPut+0x38>
    7046:	bdb0      	pop	{r4, r5, r7, pc}
    7048:	2080      	movs	r0, #128	; 0x80
    704a:	e7fc      	b.n	7046 <osMailPut+0x26>
    704c:	0028      	movs	r0, r5
    704e:	2200      	movs	r2, #0
    7050:	4f08      	ldr	r7, [pc, #32]	; (7074 <osMailPut+0x54>)
    7052:	46bc      	mov	ip, r7
    7054:	df00      	svc	0
    7056:	e7f6      	b.n	7046 <osMailPut+0x26>
    7058:	0028      	movs	r0, r5
    705a:	f000 fc05 	bl	7868 <rt_mbx_check>
    705e:	0003      	movs	r3, r0
    7060:	2081      	movs	r0, #129	; 0x81
    7062:	2b00      	cmp	r3, #0
    7064:	d0ef      	beq.n	7046 <osMailPut+0x26>
    7066:	0028      	movs	r0, r5
    7068:	0021      	movs	r1, r4
    706a:	f000 fc01 	bl	7870 <isr_mbx_send>
    706e:	2000      	movs	r0, #0
    7070:	e7e9      	b.n	7046 <osMailPut+0x26>
    7072:	0000      	.short	0x0000
    7074:	00006ab1 	.word	0x00006ab1

00007078 <osMailGet>:
    7078:	b5b0      	push	{r4, r5, r7, lr}
    707a:	0004      	movs	r4, r0
    707c:	b084      	sub	sp, #16
    707e:	2900      	cmp	r1, #0
    7080:	d012      	beq.n	70a8 <osMailGet+0x30>
    7082:	6808      	ldr	r0, [r1, #0]
    7084:	f3ef 8105 	mrs	r1, IPSR
    7088:	2900      	cmp	r1, #0
    708a:	d113      	bne.n	70b4 <osMailGet+0x3c>
    708c:	0011      	movs	r1, r2
    708e:	4f0d      	ldr	r7, [pc, #52]	; (70c4 <osMailGet+0x4c>)
    7090:	46bc      	mov	ip, r7
    7092:	df00      	svc	0
    7094:	2810      	cmp	r0, #16
    7096:	d005      	beq.n	70a4 <osMailGet+0x2c>
    7098:	6020      	str	r0, [r4, #0]
    709a:	6061      	str	r1, [r4, #4]
    709c:	60a2      	str	r2, [r4, #8]
    709e:	0020      	movs	r0, r4
    70a0:	b004      	add	sp, #16
    70a2:	bdb0      	pop	{r4, r5, r7, pc}
    70a4:	3010      	adds	r0, #16
    70a6:	e7f7      	b.n	7098 <osMailGet+0x20>
    70a8:	2380      	movs	r3, #128	; 0x80
    70aa:	6003      	str	r3, [r0, #0]
    70ac:	2300      	movs	r3, #0
    70ae:	6043      	str	r3, [r0, #4]
    70b0:	6083      	str	r3, [r0, #8]
    70b2:	e7f4      	b.n	709e <osMailGet+0x26>
    70b4:	0001      	movs	r1, r0
    70b6:	a801      	add	r0, sp, #4
    70b8:	f7ff fd9c 	bl	6bf4 <isrMessageGet>
    70bc:	9801      	ldr	r0, [sp, #4]
    70be:	9902      	ldr	r1, [sp, #8]
    70c0:	9a03      	ldr	r2, [sp, #12]
    70c2:	e7e7      	b.n	7094 <osMailGet+0x1c>
    70c4:	00006b31 	.word	0x00006b31

000070c8 <os_suspend>:
    70c8:	b580      	push	{r7, lr}
    70ca:	4f02      	ldr	r7, [pc, #8]	; (70d4 <os_suspend+0xc>)
    70cc:	46bc      	mov	ip, r7
    70ce:	df00      	svc	0
    70d0:	bd80      	pop	{r7, pc}
    70d2:	0000      	.short	0x0000
    70d4:	00007e11 	.word	0x00007e11

000070d8 <os_resume>:
    70d8:	b580      	push	{r7, lr}
    70da:	4f02      	ldr	r7, [pc, #8]	; (70e4 <os_resume+0xc>)
    70dc:	46bc      	mov	ip, r7
    70de:	df00      	svc	0
    70e0:	bd80      	pop	{r7, pc}
    70e2:	0000      	.short	0x0000
    70e4:	00007ea1 	.word	0x00007ea1

000070e8 <rt_init_stack>:
    70e8:	b5f0      	push	{r4, r5, r6, r7, lr}
    70ea:	464e      	mov	r6, r9
    70ec:	4645      	mov	r5, r8
    70ee:	4657      	mov	r7, sl
    70f0:	b4e0      	push	{r5, r6, r7}
    70f2:	4b26      	ldr	r3, [pc, #152]	; (718c <rt_init_stack+0xa4>)
    70f4:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    70f6:	b082      	sub	sp, #8
    70f8:	4680      	mov	r8, r0
    70fa:	4689      	mov	r9, r1
    70fc:	08a4      	lsrs	r4, r4, #2
    70fe:	681b      	ldr	r3, [r3, #0]
    7100:	d104      	bne.n	710c <rt_init_stack+0x24>
    7102:	9301      	str	r3, [sp, #4]
    7104:	466b      	mov	r3, sp
    7106:	889c      	ldrh	r4, [r3, #4]
    7108:	9b01      	ldr	r3, [sp, #4]
    710a:	08a4      	lsrs	r4, r4, #2
    710c:	469a      	mov	sl, r3
    710e:	4643      	mov	r3, r8
    7110:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    7112:	00a5      	lsls	r5, r4, #2
    7114:	197d      	adds	r5, r7, r5
    7116:	076b      	lsls	r3, r5, #29
    7118:	d500      	bpl.n	711c <rt_init_stack+0x34>
    711a:	3d04      	subs	r5, #4
    711c:	2280      	movs	r2, #128	; 0x80
    711e:	1f2b      	subs	r3, r5, #4
    7120:	002e      	movs	r6, r5
    7122:	0452      	lsls	r2, r2, #17
    7124:	601a      	str	r2, [r3, #0]
    7126:	464a      	mov	r2, r9
    7128:	3b04      	subs	r3, #4
    712a:	3e40      	subs	r6, #64	; 0x40
    712c:	601a      	str	r2, [r3, #0]
    712e:	2100      	movs	r1, #0
    7130:	2238      	movs	r2, #56	; 0x38
    7132:	0030      	movs	r0, r6
    7134:	f7fd fe30 	bl	4d98 <memset>
    7138:	4643      	mov	r3, r8
    713a:	69db      	ldr	r3, [r3, #28]
    713c:	3d20      	subs	r5, #32
    713e:	602b      	str	r3, [r5, #0]
    7140:	464a      	mov	r2, r9
    7142:	4643      	mov	r3, r8
    7144:	629e      	str	r6, [r3, #40]	; 0x28
    7146:	631a      	str	r2, [r3, #48]	; 0x30
    7148:	4653      	mov	r3, sl
    714a:	00db      	lsls	r3, r3, #3
    714c:	d516      	bpl.n	717c <rt_init_stack+0x94>
    714e:	2c11      	cmp	r4, #17
    7150:	d914      	bls.n	717c <rt_init_stack+0x94>
    7152:	3c10      	subs	r4, #16
    7154:	0864      	lsrs	r4, r4, #1
    7156:	1e62      	subs	r2, r4, #1
    7158:	2a00      	cmp	r2, #0
    715a:	d00a      	beq.n	7172 <rt_init_stack+0x8a>
    715c:	0033      	movs	r3, r6
    715e:	490c      	ldr	r1, [pc, #48]	; (7190 <rt_init_stack+0xa8>)
    7160:	3b08      	subs	r3, #8
    7162:	3a01      	subs	r2, #1
    7164:	6059      	str	r1, [r3, #4]
    7166:	6019      	str	r1, [r3, #0]
    7168:	2a00      	cmp	r2, #0
    716a:	d1f9      	bne.n	7160 <rt_init_stack+0x78>
    716c:	00e4      	lsls	r4, r4, #3
    716e:	1b36      	subs	r6, r6, r4
    7170:	3608      	adds	r6, #8
    7172:	3e04      	subs	r6, #4
    7174:	42b7      	cmp	r7, r6
    7176:	d201      	bcs.n	717c <rt_init_stack+0x94>
    7178:	4b05      	ldr	r3, [pc, #20]	; (7190 <rt_init_stack+0xa8>)
    717a:	6033      	str	r3, [r6, #0]
    717c:	4b05      	ldr	r3, [pc, #20]	; (7194 <rt_init_stack+0xac>)
    717e:	603b      	str	r3, [r7, #0]
    7180:	b002      	add	sp, #8
    7182:	bc1c      	pop	{r2, r3, r4}
    7184:	4690      	mov	r8, r2
    7186:	4699      	mov	r9, r3
    7188:	46a2      	mov	sl, r4
    718a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    718c:	000088a8 	.word	0x000088a8
    7190:	cccccccc 	.word	0xcccccccc
    7194:	e25a2ea5 	.word	0xe25a2ea5

00007198 <rt_ret_val>:
    7198:	6a83      	ldr	r3, [r0, #40]	; 0x28
    719a:	6219      	str	r1, [r3, #32]
    719c:	4770      	bx	lr
    719e:	46c0      	nop			; (mov r8, r8)

000071a0 <rt_ret_val2>:
    71a0:	6a83      	ldr	r3, [r0, #40]	; 0x28
    71a2:	6219      	str	r1, [r3, #32]
    71a4:	625a      	str	r2, [r3, #36]	; 0x24
    71a6:	4770      	bx	lr

000071a8 <rt_init_mem>:
    71a8:	0003      	movs	r3, r0
    71aa:	2001      	movs	r0, #1
    71ac:	2b00      	cmp	r3, #0
    71ae:	d008      	beq.n	71c2 <rt_init_mem+0x1a>
    71b0:	2907      	cmp	r1, #7
    71b2:	d906      	bls.n	71c2 <rt_init_mem+0x1a>
    71b4:	2200      	movs	r2, #0
    71b6:	2000      	movs	r0, #0
    71b8:	3904      	subs	r1, #4
    71ba:	1859      	adds	r1, r3, r1
    71bc:	6019      	str	r1, [r3, #0]
    71be:	600a      	str	r2, [r1, #0]
    71c0:	605a      	str	r2, [r3, #4]
    71c2:	4770      	bx	lr

000071c4 <rt_alloc_mem>:
    71c4:	b510      	push	{r4, lr}
    71c6:	2800      	cmp	r0, #0
    71c8:	d018      	beq.n	71fc <rt_alloc_mem+0x38>
    71ca:	2900      	cmp	r1, #0
    71cc:	d016      	beq.n	71fc <rt_alloc_mem+0x38>
    71ce:	2303      	movs	r3, #3
    71d0:	310b      	adds	r1, #11
    71d2:	4399      	bics	r1, r3
    71d4:	6802      	ldr	r2, [r0, #0]
    71d6:	e003      	b.n	71e0 <rt_alloc_mem+0x1c>
    71d8:	0010      	movs	r0, r2
    71da:	6812      	ldr	r2, [r2, #0]
    71dc:	2a00      	cmp	r2, #0
    71de:	d00d      	beq.n	71fc <rt_alloc_mem+0x38>
    71e0:	6844      	ldr	r4, [r0, #4]
    71e2:	1a13      	subs	r3, r2, r0
    71e4:	1b1b      	subs	r3, r3, r4
    71e6:	4299      	cmp	r1, r3
    71e8:	d8f6      	bhi.n	71d8 <rt_alloc_mem+0x14>
    71ea:	2c00      	cmp	r4, #0
    71ec:	d008      	beq.n	7200 <rt_alloc_mem+0x3c>
    71ee:	1904      	adds	r4, r0, r4
    71f0:	6022      	str	r2, [r4, #0]
    71f2:	6061      	str	r1, [r4, #4]
    71f4:	6004      	str	r4, [r0, #0]
    71f6:	0020      	movs	r0, r4
    71f8:	3008      	adds	r0, #8
    71fa:	e000      	b.n	71fe <rt_alloc_mem+0x3a>
    71fc:	2000      	movs	r0, #0
    71fe:	bd10      	pop	{r4, pc}
    7200:	6041      	str	r1, [r0, #4]
    7202:	3008      	adds	r0, #8
    7204:	e7fb      	b.n	71fe <rt_alloc_mem+0x3a>
    7206:	46c0      	nop			; (mov r8, r8)

00007208 <rt_free_mem>:
    7208:	2800      	cmp	r0, #0
    720a:	d015      	beq.n	7238 <rt_free_mem+0x30>
    720c:	2900      	cmp	r1, #0
    720e:	d013      	beq.n	7238 <rt_free_mem+0x30>
    7210:	3908      	subs	r1, #8
    7212:	4288      	cmp	r0, r1
    7214:	d012      	beq.n	723c <rt_free_mem+0x34>
    7216:	6803      	ldr	r3, [r0, #0]
    7218:	2b00      	cmp	r3, #0
    721a:	d105      	bne.n	7228 <rt_free_mem+0x20>
    721c:	e00c      	b.n	7238 <rt_free_mem+0x30>
    721e:	681a      	ldr	r2, [r3, #0]
    7220:	0018      	movs	r0, r3
    7222:	2a00      	cmp	r2, #0
    7224:	d008      	beq.n	7238 <rt_free_mem+0x30>
    7226:	0013      	movs	r3, r2
    7228:	4299      	cmp	r1, r3
    722a:	d1f8      	bne.n	721e <rt_free_mem+0x16>
    722c:	2800      	cmp	r0, #0
    722e:	d005      	beq.n	723c <rt_free_mem+0x34>
    7230:	680b      	ldr	r3, [r1, #0]
    7232:	6003      	str	r3, [r0, #0]
    7234:	2000      	movs	r0, #0
    7236:	e000      	b.n	723a <rt_free_mem+0x32>
    7238:	2001      	movs	r0, #1
    723a:	4770      	bx	lr
    723c:	2300      	movs	r3, #0
    723e:	2000      	movs	r0, #0
    7240:	604b      	str	r3, [r1, #4]
    7242:	e7fa      	b.n	723a <rt_free_mem+0x32>

00007244 <_init_box>:
    7244:	b530      	push	{r4, r5, lr}
    7246:	2a00      	cmp	r2, #0
    7248:	db1e      	blt.n	7288 <_init_box+0x44>
    724a:	2303      	movs	r3, #3
    724c:	3203      	adds	r2, #3
    724e:	439a      	bics	r2, r3
    7250:	3309      	adds	r3, #9
    7252:	2401      	movs	r4, #1
    7254:	2a00      	cmp	r2, #0
    7256:	d015      	beq.n	7284 <_init_box+0x40>
    7258:	18d5      	adds	r5, r2, r3
    725a:	428d      	cmp	r5, r1
    725c:	d812      	bhi.n	7284 <_init_box+0x40>
    725e:	1841      	adds	r1, r0, r1
    7260:	18c3      	adds	r3, r0, r3
    7262:	6041      	str	r1, [r0, #4]
    7264:	6003      	str	r3, [r0, #0]
    7266:	6082      	str	r2, [r0, #8]
    7268:	1898      	adds	r0, r3, r2
    726a:	1a89      	subs	r1, r1, r2
    726c:	4281      	cmp	r1, r0
    726e:	d201      	bcs.n	7274 <_init_box+0x30>
    7270:	e011      	b.n	7296 <_init_box+0x52>
    7272:	0020      	movs	r0, r4
    7274:	1884      	adds	r4, r0, r2
    7276:	6018      	str	r0, [r3, #0]
    7278:	189b      	adds	r3, r3, r2
    727a:	42a1      	cmp	r1, r4
    727c:	d2f9      	bcs.n	7272 <_init_box+0x2e>
    727e:	2300      	movs	r3, #0
    7280:	2400      	movs	r4, #0
    7282:	6003      	str	r3, [r0, #0]
    7284:	0020      	movs	r0, r4
    7286:	bd30      	pop	{r4, r5, pc}
    7288:	2307      	movs	r3, #7
    728a:	0052      	lsls	r2, r2, #1
    728c:	0852      	lsrs	r2, r2, #1
    728e:	3207      	adds	r2, #7
    7290:	439a      	bics	r2, r3
    7292:	3309      	adds	r3, #9
    7294:	e7dd      	b.n	7252 <_init_box+0xe>
    7296:	0018      	movs	r0, r3
    7298:	e7f1      	b.n	727e <_init_box+0x3a>
    729a:	46c0      	nop			; (mov r8, r8)

0000729c <rt_alloc_box>:
    729c:	f3ef 8310 	mrs	r3, PRIMASK
    72a0:	b672      	cpsid	i
    72a2:	2201      	movs	r2, #1
    72a4:	4013      	ands	r3, r2
    72a6:	6802      	ldr	r2, [r0, #0]
    72a8:	2a00      	cmp	r2, #0
    72aa:	d001      	beq.n	72b0 <rt_alloc_box+0x14>
    72ac:	6811      	ldr	r1, [r2, #0]
    72ae:	6001      	str	r1, [r0, #0]
    72b0:	2b00      	cmp	r3, #0
    72b2:	d100      	bne.n	72b6 <rt_alloc_box+0x1a>
    72b4:	b662      	cpsie	i
    72b6:	0010      	movs	r0, r2
    72b8:	4770      	bx	lr
    72ba:	46c0      	nop			; (mov r8, r8)

000072bc <_calloc_box>:
    72bc:	b510      	push	{r4, lr}
    72be:	0004      	movs	r4, r0
    72c0:	f7fd fb49 	bl	4956 <_alloc_box>
    72c4:	2800      	cmp	r0, #0
    72c6:	d008      	beq.n	72da <_calloc_box+0x1e>
    72c8:	68a3      	ldr	r3, [r4, #8]
    72ca:	2b00      	cmp	r3, #0
    72cc:	d005      	beq.n	72da <_calloc_box+0x1e>
    72ce:	0002      	movs	r2, r0
    72d0:	2100      	movs	r1, #0
    72d2:	3b04      	subs	r3, #4
    72d4:	c202      	stmia	r2!, {r1}
    72d6:	2b00      	cmp	r3, #0
    72d8:	d1fb      	bne.n	72d2 <_calloc_box+0x16>
    72da:	bd10      	pop	{r4, pc}

000072dc <rt_free_box>:
    72dc:	0003      	movs	r3, r0
    72de:	2001      	movs	r0, #1
    72e0:	4299      	cmp	r1, r3
    72e2:	d30b      	bcc.n	72fc <rt_free_box+0x20>
    72e4:	685a      	ldr	r2, [r3, #4]
    72e6:	4291      	cmp	r1, r2
    72e8:	d208      	bcs.n	72fc <rt_free_box+0x20>
    72ea:	f3ef 8210 	mrs	r2, PRIMASK
    72ee:	b672      	cpsid	i
    72f0:	4010      	ands	r0, r2
    72f2:	681a      	ldr	r2, [r3, #0]
    72f4:	600a      	str	r2, [r1, #0]
    72f6:	6019      	str	r1, [r3, #0]
    72f8:	d101      	bne.n	72fe <rt_free_box+0x22>
    72fa:	b662      	cpsie	i
    72fc:	4770      	bx	lr
    72fe:	2000      	movs	r0, #0
    7300:	e7fc      	b.n	72fc <rt_free_box+0x20>
    7302:	46c0      	nop			; (mov r8, r8)

00007304 <rt_mut_init>:
    7304:	2303      	movs	r3, #3
    7306:	7003      	strb	r3, [r0, #0]
    7308:	2300      	movs	r3, #0
    730a:	8043      	strh	r3, [r0, #2]
    730c:	6043      	str	r3, [r0, #4]
    730e:	6083      	str	r3, [r0, #8]
    7310:	60c3      	str	r3, [r0, #12]
    7312:	4770      	bx	lr

00007314 <rt_mut_delete>:
    7314:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7316:	8843      	ldrh	r3, [r0, #2]
    7318:	0005      	movs	r5, r0
    731a:	2b00      	cmp	r3, #0
    731c:	d02c      	beq.n	7378 <rt_mut_delete+0x64>
    731e:	6880      	ldr	r0, [r0, #8]
    7320:	6a04      	ldr	r4, [r0, #32]
    7322:	42a5      	cmp	r5, r4
    7324:	d05a      	beq.n	73dc <rt_mut_delete+0xc8>
    7326:	2c00      	cmp	r4, #0
    7328:	d01a      	beq.n	7360 <rt_mut_delete+0x4c>
    732a:	68e3      	ldr	r3, [r4, #12]
    732c:	429d      	cmp	r5, r3
    732e:	d050      	beq.n	73d2 <rt_mut_delete+0xbe>
    7330:	001a      	movs	r2, r3
    7332:	e003      	b.n	733c <rt_mut_delete+0x28>
    7334:	68d1      	ldr	r1, [r2, #12]
    7336:	428d      	cmp	r5, r1
    7338:	d04c      	beq.n	73d4 <rt_mut_delete+0xc0>
    733a:	000a      	movs	r2, r1
    733c:	2a00      	cmp	r2, #0
    733e:	d1f9      	bne.n	7334 <rt_mut_delete+0x20>
    7340:	2224      	movs	r2, #36	; 0x24
    7342:	5c81      	ldrb	r1, [r0, r2]
    7344:	6862      	ldr	r2, [r4, #4]
    7346:	2a00      	cmp	r2, #0
    7348:	d005      	beq.n	7356 <rt_mut_delete+0x42>
    734a:	7892      	ldrb	r2, [r2, #2]
    734c:	1c14      	adds	r4, r2, #0
    734e:	428a      	cmp	r2, r1
    7350:	d200      	bcs.n	7354 <rt_mut_delete+0x40>
    7352:	1c0c      	adds	r4, r1, #0
    7354:	b2e1      	uxtb	r1, r4
    7356:	2b00      	cmp	r3, #0
    7358:	d004      	beq.n	7364 <rt_mut_delete+0x50>
    735a:	001c      	movs	r4, r3
    735c:	68db      	ldr	r3, [r3, #12]
    735e:	e7f1      	b.n	7344 <rt_mut_delete+0x30>
    7360:	2324      	movs	r3, #36	; 0x24
    7362:	5cc1      	ldrb	r1, [r0, r3]
    7364:	7883      	ldrb	r3, [r0, #2]
    7366:	428b      	cmp	r3, r1
    7368:	d006      	beq.n	7378 <rt_mut_delete+0x64>
    736a:	4b20      	ldr	r3, [pc, #128]	; (73ec <rt_mut_delete+0xd8>)
    736c:	7081      	strb	r1, [r0, #2]
    736e:	681b      	ldr	r3, [r3, #0]
    7370:	4298      	cmp	r0, r3
    7372:	d001      	beq.n	7378 <rt_mut_delete+0x64>
    7374:	f000 fb72 	bl	7a5c <rt_resort_prio>
    7378:	686b      	ldr	r3, [r5, #4]
    737a:	4e1d      	ldr	r6, [pc, #116]	; (73f0 <rt_mut_delete+0xdc>)
    737c:	2b00      	cmp	r3, #0
    737e:	d012      	beq.n	73a6 <rt_mut_delete+0x92>
    7380:	2701      	movs	r7, #1
    7382:	0028      	movs	r0, r5
    7384:	f000 fb3a 	bl	79fc <rt_get_first>
    7388:	0004      	movs	r4, r0
    738a:	2100      	movs	r1, #0
    738c:	f7ff ff04 	bl	7198 <rt_ret_val>
    7390:	0020      	movs	r0, r4
    7392:	f000 fc6b 	bl	7c6c <rt_rmv_dly>
    7396:	7067      	strb	r7, [r4, #1]
    7398:	0021      	movs	r1, r4
    739a:	0030      	movs	r0, r6
    739c:	f000 fb08 	bl	79b0 <rt_put_prio>
    73a0:	686b      	ldr	r3, [r5, #4]
    73a2:	2b00      	cmp	r3, #0
    73a4:	d1ed      	bne.n	7382 <rt_mut_delete+0x6e>
    73a6:	6873      	ldr	r3, [r6, #4]
    73a8:	2b00      	cmp	r3, #0
    73aa:	d00e      	beq.n	73ca <rt_mut_delete+0xb6>
    73ac:	4c0f      	ldr	r4, [pc, #60]	; (73ec <rt_mut_delete+0xd8>)
    73ae:	789a      	ldrb	r2, [r3, #2]
    73b0:	6821      	ldr	r1, [r4, #0]
    73b2:	788b      	ldrb	r3, [r1, #2]
    73b4:	429a      	cmp	r2, r3
    73b6:	d908      	bls.n	73ca <rt_mut_delete+0xb6>
    73b8:	0030      	movs	r0, r6
    73ba:	f000 faf9 	bl	79b0 <rt_put_prio>
    73be:	2201      	movs	r2, #1
    73c0:	6823      	ldr	r3, [r4, #0]
    73c2:	2000      	movs	r0, #0
    73c4:	705a      	strb	r2, [r3, #1]
    73c6:	f000 ff07 	bl	81d8 <rt_dispatch>
    73ca:	2300      	movs	r3, #0
    73cc:	2000      	movs	r0, #0
    73ce:	702b      	strb	r3, [r5, #0]
    73d0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    73d2:	0022      	movs	r2, r4
    73d4:	68eb      	ldr	r3, [r5, #12]
    73d6:	60d3      	str	r3, [r2, #12]
    73d8:	68e3      	ldr	r3, [r4, #12]
    73da:	e7b1      	b.n	7340 <rt_mut_delete+0x2c>
    73dc:	2324      	movs	r3, #36	; 0x24
    73de:	68ec      	ldr	r4, [r5, #12]
    73e0:	6204      	str	r4, [r0, #32]
    73e2:	5cc1      	ldrb	r1, [r0, r3]
    73e4:	2c00      	cmp	r4, #0
    73e6:	d0bd      	beq.n	7364 <rt_mut_delete+0x50>
    73e8:	68e3      	ldr	r3, [r4, #12]
    73ea:	e7ab      	b.n	7344 <rt_mut_delete+0x30>
    73ec:	200060b4 	.word	0x200060b4
    73f0:	20006080 	.word	0x20006080

000073f4 <rt_mut_release>:
    73f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    73f6:	8843      	ldrh	r3, [r0, #2]
    73f8:	0004      	movs	r4, r0
    73fa:	20ff      	movs	r0, #255	; 0xff
    73fc:	2b00      	cmp	r3, #0
    73fe:	d100      	bne.n	7402 <rt_mut_release+0xe>
    7400:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7402:	4d3c      	ldr	r5, [pc, #240]	; (74f4 <rt_mut_release+0x100>)
    7404:	68a1      	ldr	r1, [r4, #8]
    7406:	682a      	ldr	r2, [r5, #0]
    7408:	4291      	cmp	r1, r2
    740a:	d1f9      	bne.n	7400 <rt_mut_release+0xc>
    740c:	3b01      	subs	r3, #1
    740e:	b29b      	uxth	r3, r3
    7410:	8063      	strh	r3, [r4, #2]
    7412:	2b00      	cmp	r3, #0
    7414:	d140      	bne.n	7498 <rt_mut_release+0xa4>
    7416:	6a0e      	ldr	r6, [r1, #32]
    7418:	42b4      	cmp	r4, r6
    741a:	d062      	beq.n	74e2 <rt_mut_release+0xee>
    741c:	2e00      	cmp	r6, #0
    741e:	d01a      	beq.n	7456 <rt_mut_release+0x62>
    7420:	68f3      	ldr	r3, [r6, #12]
    7422:	429c      	cmp	r4, r3
    7424:	d03a      	beq.n	749c <rt_mut_release+0xa8>
    7426:	001a      	movs	r2, r3
    7428:	e003      	b.n	7432 <rt_mut_release+0x3e>
    742a:	68d0      	ldr	r0, [r2, #12]
    742c:	4284      	cmp	r4, r0
    742e:	d036      	beq.n	749e <rt_mut_release+0xaa>
    7430:	0002      	movs	r2, r0
    7432:	2a00      	cmp	r2, #0
    7434:	d1f9      	bne.n	742a <rt_mut_release+0x36>
    7436:	2224      	movs	r2, #36	; 0x24
    7438:	5c8f      	ldrb	r7, [r1, r2]
    743a:	6872      	ldr	r2, [r6, #4]
    743c:	2a00      	cmp	r2, #0
    743e:	d005      	beq.n	744c <rt_mut_release+0x58>
    7440:	7892      	ldrb	r2, [r2, #2]
    7442:	1c10      	adds	r0, r2, #0
    7444:	42ba      	cmp	r2, r7
    7446:	d200      	bcs.n	744a <rt_mut_release+0x56>
    7448:	1c38      	adds	r0, r7, #0
    744a:	b2c7      	uxtb	r7, r0
    744c:	2b00      	cmp	r3, #0
    744e:	d004      	beq.n	745a <rt_mut_release+0x66>
    7450:	001e      	movs	r6, r3
    7452:	68db      	ldr	r3, [r3, #12]
    7454:	e7f1      	b.n	743a <rt_mut_release+0x46>
    7456:	2324      	movs	r3, #36	; 0x24
    7458:	5ccf      	ldrb	r7, [r1, r3]
    745a:	708f      	strb	r7, [r1, #2]
    745c:	6863      	ldr	r3, [r4, #4]
    745e:	2b00      	cmp	r3, #0
    7460:	d030      	beq.n	74c4 <rt_mut_release+0xd0>
    7462:	0020      	movs	r0, r4
    7464:	f000 faca 	bl	79fc <rt_get_first>
    7468:	0006      	movs	r6, r0
    746a:	2100      	movs	r1, #0
    746c:	f7ff fe94 	bl	7198 <rt_ret_val>
    7470:	0030      	movs	r0, r6
    7472:	f000 fbfb 	bl	7c6c <rt_rmv_dly>
    7476:	2301      	movs	r3, #1
    7478:	8063      	strh	r3, [r4, #2]
    747a:	6a33      	ldr	r3, [r6, #32]
    747c:	60a6      	str	r6, [r4, #8]
    747e:	60e3      	str	r3, [r4, #12]
    7480:	6234      	str	r4, [r6, #32]
    7482:	4c1d      	ldr	r4, [pc, #116]	; (74f8 <rt_mut_release+0x104>)
    7484:	6829      	ldr	r1, [r5, #0]
    7486:	6863      	ldr	r3, [r4, #4]
    7488:	788a      	ldrb	r2, [r1, #2]
    748a:	789b      	ldrb	r3, [r3, #2]
    748c:	2701      	movs	r7, #1
    748e:	429a      	cmp	r2, r3
    7490:	d309      	bcc.n	74a6 <rt_mut_release+0xb2>
    7492:	0030      	movs	r0, r6
    7494:	f000 fea0 	bl	81d8 <rt_dispatch>
    7498:	2000      	movs	r0, #0
    749a:	e7b1      	b.n	7400 <rt_mut_release+0xc>
    749c:	0032      	movs	r2, r6
    749e:	68e3      	ldr	r3, [r4, #12]
    74a0:	60d3      	str	r3, [r2, #12]
    74a2:	68f3      	ldr	r3, [r6, #12]
    74a4:	e7c7      	b.n	7436 <rt_mut_release+0x42>
    74a6:	0020      	movs	r0, r4
    74a8:	f000 fa82 	bl	79b0 <rt_put_prio>
    74ac:	0031      	movs	r1, r6
    74ae:	0020      	movs	r0, r4
    74b0:	f000 fa7e 	bl	79b0 <rt_put_prio>
    74b4:	682b      	ldr	r3, [r5, #0]
    74b6:	2000      	movs	r0, #0
    74b8:	705f      	strb	r7, [r3, #1]
    74ba:	7077      	strb	r7, [r6, #1]
    74bc:	f000 fe8c 	bl	81d8 <rt_dispatch>
    74c0:	2000      	movs	r0, #0
    74c2:	e79d      	b.n	7400 <rt_mut_release+0xc>
    74c4:	480c      	ldr	r0, [pc, #48]	; (74f8 <rt_mut_release+0x104>)
    74c6:	6843      	ldr	r3, [r0, #4]
    74c8:	789b      	ldrb	r3, [r3, #2]
    74ca:	42bb      	cmp	r3, r7
    74cc:	d9e4      	bls.n	7498 <rt_mut_release+0xa4>
    74ce:	f000 fa6f 	bl	79b0 <rt_put_prio>
    74d2:	2201      	movs	r2, #1
    74d4:	682b      	ldr	r3, [r5, #0]
    74d6:	2000      	movs	r0, #0
    74d8:	705a      	strb	r2, [r3, #1]
    74da:	f000 fe7d 	bl	81d8 <rt_dispatch>
    74de:	2000      	movs	r0, #0
    74e0:	e78e      	b.n	7400 <rt_mut_release+0xc>
    74e2:	2324      	movs	r3, #36	; 0x24
    74e4:	68e6      	ldr	r6, [r4, #12]
    74e6:	620e      	str	r6, [r1, #32]
    74e8:	5ccf      	ldrb	r7, [r1, r3]
    74ea:	2e00      	cmp	r6, #0
    74ec:	d0b5      	beq.n	745a <rt_mut_release+0x66>
    74ee:	68f3      	ldr	r3, [r6, #12]
    74f0:	e7a3      	b.n	743a <rt_mut_release+0x46>
    74f2:	46c0      	nop			; (mov r8, r8)
    74f4:	200060b4 	.word	0x200060b4
    74f8:	20006080 	.word	0x20006080

000074fc <rt_mut_wait>:
    74fc:	b570      	push	{r4, r5, r6, lr}
    74fe:	8843      	ldrh	r3, [r0, #2]
    7500:	0004      	movs	r4, r0
    7502:	000d      	movs	r5, r1
    7504:	2b00      	cmp	r3, #0
    7506:	d017      	beq.n	7538 <rt_mut_wait+0x3c>
    7508:	4e19      	ldr	r6, [pc, #100]	; (7570 <rt_mut_wait+0x74>)
    750a:	6882      	ldr	r2, [r0, #8]
    750c:	6831      	ldr	r1, [r6, #0]
    750e:	428a      	cmp	r2, r1
    7510:	d026      	beq.n	7560 <rt_mut_wait+0x64>
    7512:	2001      	movs	r0, #1
    7514:	2d00      	cmp	r5, #0
    7516:	d00e      	beq.n	7536 <rt_mut_wait+0x3a>
    7518:	788b      	ldrb	r3, [r1, #2]
    751a:	7890      	ldrb	r0, [r2, #2]
    751c:	4298      	cmp	r0, r3
    751e:	d319      	bcc.n	7554 <rt_mut_wait+0x58>
    7520:	6863      	ldr	r3, [r4, #4]
    7522:	2b00      	cmp	r3, #0
    7524:	d012      	beq.n	754c <rt_mut_wait+0x50>
    7526:	0020      	movs	r0, r4
    7528:	f000 fa42 	bl	79b0 <rt_put_prio>
    752c:	0028      	movs	r0, r5
    752e:	2109      	movs	r1, #9
    7530:	f000 fe78 	bl	8224 <rt_block>
    7534:	2001      	movs	r0, #1
    7536:	bd70      	pop	{r4, r5, r6, pc}
    7538:	4b0d      	ldr	r3, [pc, #52]	; (7570 <rt_mut_wait+0x74>)
    753a:	681b      	ldr	r3, [r3, #0]
    753c:	6a1a      	ldr	r2, [r3, #32]
    753e:	6083      	str	r3, [r0, #8]
    7540:	60c2      	str	r2, [r0, #12]
    7542:	6218      	str	r0, [r3, #32]
    7544:	2301      	movs	r3, #1
    7546:	8043      	strh	r3, [r0, #2]
    7548:	2000      	movs	r0, #0
    754a:	e7f4      	b.n	7536 <rt_mut_wait+0x3a>
    754c:	6061      	str	r1, [r4, #4]
    754e:	604b      	str	r3, [r1, #4]
    7550:	608c      	str	r4, [r1, #8]
    7552:	e7eb      	b.n	752c <rt_mut_wait+0x30>
    7554:	7093      	strb	r3, [r2, #2]
    7556:	68a0      	ldr	r0, [r4, #8]
    7558:	f000 fa80 	bl	7a5c <rt_resort_prio>
    755c:	6831      	ldr	r1, [r6, #0]
    755e:	e7df      	b.n	7520 <rt_mut_wait+0x24>
    7560:	4a04      	ldr	r2, [pc, #16]	; (7574 <rt_mut_wait+0x78>)
    7562:	20ff      	movs	r0, #255	; 0xff
    7564:	4293      	cmp	r3, r2
    7566:	d0e6      	beq.n	7536 <rt_mut_wait+0x3a>
    7568:	3301      	adds	r3, #1
    756a:	8063      	strh	r3, [r4, #2]
    756c:	2000      	movs	r0, #0
    756e:	e7e2      	b.n	7536 <rt_mut_wait+0x3a>
    7570:	200060b4 	.word	0x200060b4
    7574:	0000ffff 	.word	0x0000ffff

00007578 <rt_time_get>:
    7578:	4b01      	ldr	r3, [pc, #4]	; (7580 <rt_time_get+0x8>)
    757a:	6818      	ldr	r0, [r3, #0]
    757c:	4770      	bx	lr
    757e:	46c0      	nop			; (mov r8, r8)
    7580:	2000607c 	.word	0x2000607c

00007584 <rt_dly_wait>:
    7584:	b510      	push	{r4, lr}
    7586:	2103      	movs	r1, #3
    7588:	f000 fe4c 	bl	8224 <rt_block>
    758c:	bd10      	pop	{r4, pc}
    758e:	46c0      	nop			; (mov r8, r8)

00007590 <rt_itv_set>:
    7590:	4b03      	ldr	r3, [pc, #12]	; (75a0 <rt_itv_set+0x10>)
    7592:	681a      	ldr	r2, [r3, #0]
    7594:	4b03      	ldr	r3, [pc, #12]	; (75a4 <rt_itv_set+0x14>)
    7596:	82d0      	strh	r0, [r2, #22]
    7598:	681b      	ldr	r3, [r3, #0]
    759a:	18c0      	adds	r0, r0, r3
    759c:	8290      	strh	r0, [r2, #20]
    759e:	4770      	bx	lr
    75a0:	200060b4 	.word	0x200060b4
    75a4:	2000607c 	.word	0x2000607c

000075a8 <rt_itv_wait>:
    75a8:	b510      	push	{r4, lr}
    75aa:	4b08      	ldr	r3, [pc, #32]	; (75cc <rt_itv_wait+0x24>)
    75ac:	681a      	ldr	r2, [r3, #0]
    75ae:	4b08      	ldr	r3, [pc, #32]	; (75d0 <rt_itv_wait+0x28>)
    75b0:	8a90      	ldrh	r0, [r2, #20]
    75b2:	681b      	ldr	r3, [r3, #0]
    75b4:	8ad1      	ldrh	r1, [r2, #22]
    75b6:	1ac3      	subs	r3, r0, r3
    75b8:	1841      	adds	r1, r0, r1
    75ba:	8291      	strh	r1, [r2, #20]
    75bc:	b298      	uxth	r0, r3
    75be:	041b      	lsls	r3, r3, #16
    75c0:	d402      	bmi.n	75c8 <rt_itv_wait+0x20>
    75c2:	2104      	movs	r1, #4
    75c4:	f000 fe2e 	bl	8224 <rt_block>
    75c8:	bd10      	pop	{r4, pc}
    75ca:	46c0      	nop			; (mov r8, r8)
    75cc:	200060b4 	.word	0x200060b4
    75d0:	2000607c 	.word	0x2000607c

000075d4 <rt_sem_init>:
    75d4:	2302      	movs	r3, #2
    75d6:	7003      	strb	r3, [r0, #0]
    75d8:	2300      	movs	r3, #0
    75da:	8041      	strh	r1, [r0, #2]
    75dc:	6043      	str	r3, [r0, #4]
    75de:	4770      	bx	lr

000075e0 <rt_sem_delete>:
    75e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    75e2:	6843      	ldr	r3, [r0, #4]
    75e4:	0005      	movs	r5, r0
    75e6:	4e16      	ldr	r6, [pc, #88]	; (7640 <rt_sem_delete+0x60>)
    75e8:	2b00      	cmp	r3, #0
    75ea:	d012      	beq.n	7612 <rt_sem_delete+0x32>
    75ec:	2701      	movs	r7, #1
    75ee:	0028      	movs	r0, r5
    75f0:	f000 fa04 	bl	79fc <rt_get_first>
    75f4:	0004      	movs	r4, r0
    75f6:	2100      	movs	r1, #0
    75f8:	f7ff fdce 	bl	7198 <rt_ret_val>
    75fc:	0020      	movs	r0, r4
    75fe:	f000 fb35 	bl	7c6c <rt_rmv_dly>
    7602:	7067      	strb	r7, [r4, #1]
    7604:	0021      	movs	r1, r4
    7606:	0030      	movs	r0, r6
    7608:	f000 f9d2 	bl	79b0 <rt_put_prio>
    760c:	686b      	ldr	r3, [r5, #4]
    760e:	2b00      	cmp	r3, #0
    7610:	d1ed      	bne.n	75ee <rt_sem_delete+0xe>
    7612:	6873      	ldr	r3, [r6, #4]
    7614:	2b00      	cmp	r3, #0
    7616:	d00e      	beq.n	7636 <rt_sem_delete+0x56>
    7618:	4c0a      	ldr	r4, [pc, #40]	; (7644 <rt_sem_delete+0x64>)
    761a:	789a      	ldrb	r2, [r3, #2]
    761c:	6821      	ldr	r1, [r4, #0]
    761e:	788b      	ldrb	r3, [r1, #2]
    7620:	429a      	cmp	r2, r3
    7622:	d908      	bls.n	7636 <rt_sem_delete+0x56>
    7624:	0030      	movs	r0, r6
    7626:	f000 f9c3 	bl	79b0 <rt_put_prio>
    762a:	2201      	movs	r2, #1
    762c:	6823      	ldr	r3, [r4, #0]
    762e:	2000      	movs	r0, #0
    7630:	705a      	strb	r2, [r3, #1]
    7632:	f000 fdd1 	bl	81d8 <rt_dispatch>
    7636:	2300      	movs	r3, #0
    7638:	2000      	movs	r0, #0
    763a:	702b      	strb	r3, [r5, #0]
    763c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    763e:	46c0      	nop			; (mov r8, r8)
    7640:	20006080 	.word	0x20006080
    7644:	200060b4 	.word	0x200060b4

00007648 <rt_sem_send>:
    7648:	6843      	ldr	r3, [r0, #4]
    764a:	b510      	push	{r4, lr}
    764c:	2b00      	cmp	r3, #0
    764e:	d00d      	beq.n	766c <rt_sem_send+0x24>
    7650:	f000 f9d4 	bl	79fc <rt_get_first>
    7654:	0004      	movs	r4, r0
    7656:	2101      	movs	r1, #1
    7658:	f7ff fd9e 	bl	7198 <rt_ret_val>
    765c:	0020      	movs	r0, r4
    765e:	f000 fb05 	bl	7c6c <rt_rmv_dly>
    7662:	0020      	movs	r0, r4
    7664:	f000 fdb8 	bl	81d8 <rt_dispatch>
    7668:	2000      	movs	r0, #0
    766a:	bd10      	pop	{r4, pc}
    766c:	8843      	ldrh	r3, [r0, #2]
    766e:	3301      	adds	r3, #1
    7670:	8043      	strh	r3, [r0, #2]
    7672:	e7f9      	b.n	7668 <rt_sem_send+0x20>

00007674 <rt_sem_wait>:
    7674:	b510      	push	{r4, lr}
    7676:	8843      	ldrh	r3, [r0, #2]
    7678:	000c      	movs	r4, r1
    767a:	2b00      	cmp	r3, #0
    767c:	d110      	bne.n	76a0 <rt_sem_wait+0x2c>
    767e:	2301      	movs	r3, #1
    7680:	2900      	cmp	r1, #0
    7682:	d00b      	beq.n	769c <rt_sem_wait+0x28>
    7684:	6843      	ldr	r3, [r0, #4]
    7686:	2b00      	cmp	r3, #0
    7688:	d00e      	beq.n	76a8 <rt_sem_wait+0x34>
    768a:	4b0a      	ldr	r3, [pc, #40]	; (76b4 <rt_sem_wait+0x40>)
    768c:	6819      	ldr	r1, [r3, #0]
    768e:	f000 f98f 	bl	79b0 <rt_put_prio>
    7692:	2107      	movs	r1, #7
    7694:	0020      	movs	r0, r4
    7696:	f000 fdc5 	bl	8224 <rt_block>
    769a:	2301      	movs	r3, #1
    769c:	0018      	movs	r0, r3
    769e:	bd10      	pop	{r4, pc}
    76a0:	3b01      	subs	r3, #1
    76a2:	8043      	strh	r3, [r0, #2]
    76a4:	2300      	movs	r3, #0
    76a6:	e7f9      	b.n	769c <rt_sem_wait+0x28>
    76a8:	4a02      	ldr	r2, [pc, #8]	; (76b4 <rt_sem_wait+0x40>)
    76aa:	6812      	ldr	r2, [r2, #0]
    76ac:	6042      	str	r2, [r0, #4]
    76ae:	6053      	str	r3, [r2, #4]
    76b0:	6090      	str	r0, [r2, #8]
    76b2:	e7ee      	b.n	7692 <rt_sem_wait+0x1e>
    76b4:	200060b4 	.word	0x200060b4

000076b8 <isr_sem_send>:
    76b8:	b510      	push	{r4, lr}
    76ba:	2100      	movs	r1, #0
    76bc:	f000 faec 	bl	7c98 <rt_psq_enq>
    76c0:	f000 fcce 	bl	8060 <rt_psh_req>
    76c4:	bd10      	pop	{r4, pc}
    76c6:	46c0      	nop			; (mov r8, r8)

000076c8 <rt_sem_psh>:
    76c8:	6843      	ldr	r3, [r0, #4]
    76ca:	b510      	push	{r4, lr}
    76cc:	2b00      	cmp	r3, #0
    76ce:	d00f      	beq.n	76f0 <rt_sem_psh+0x28>
    76d0:	f000 f994 	bl	79fc <rt_get_first>
    76d4:	0004      	movs	r4, r0
    76d6:	f000 fac9 	bl	7c6c <rt_rmv_dly>
    76da:	2301      	movs	r3, #1
    76dc:	2101      	movs	r1, #1
    76de:	0020      	movs	r0, r4
    76e0:	7063      	strb	r3, [r4, #1]
    76e2:	f7ff fd59 	bl	7198 <rt_ret_val>
    76e6:	0021      	movs	r1, r4
    76e8:	4803      	ldr	r0, [pc, #12]	; (76f8 <rt_sem_psh+0x30>)
    76ea:	f000 f961 	bl	79b0 <rt_put_prio>
    76ee:	bd10      	pop	{r4, pc}
    76f0:	8843      	ldrh	r3, [r0, #2]
    76f2:	3301      	adds	r3, #1
    76f4:	8043      	strh	r3, [r0, #2]
    76f6:	e7fa      	b.n	76ee <rt_sem_psh+0x26>
    76f8:	20006080 	.word	0x20006080

000076fc <rt_mbx_init>:
    76fc:	2301      	movs	r3, #1
    76fe:	7003      	strb	r3, [r0, #0]
    7700:	2300      	movs	r3, #0
    7702:	3910      	subs	r1, #16
    7704:	0889      	lsrs	r1, r1, #2
    7706:	7043      	strb	r3, [r0, #1]
    7708:	7083      	strb	r3, [r0, #2]
    770a:	6043      	str	r3, [r0, #4]
    770c:	8103      	strh	r3, [r0, #8]
    770e:	8143      	strh	r3, [r0, #10]
    7710:	8183      	strh	r3, [r0, #12]
    7712:	81c1      	strh	r1, [r0, #14]
    7714:	4770      	bx	lr
    7716:	46c0      	nop			; (mov r8, r8)

00007718 <rt_mbx_send>:
    7718:	6843      	ldr	r3, [r0, #4]
    771a:	b570      	push	{r4, r5, r6, lr}
    771c:	000d      	movs	r5, r1
    771e:	0016      	movs	r6, r2
    7720:	2b00      	cmp	r3, #0
    7722:	d002      	beq.n	772a <rt_mbx_send+0x12>
    7724:	7842      	ldrb	r2, [r0, #1]
    7726:	2a01      	cmp	r2, #1
    7728:	d028      	beq.n	777c <rt_mbx_send+0x64>
    772a:	8982      	ldrh	r2, [r0, #12]
    772c:	89c4      	ldrh	r4, [r0, #14]
    772e:	42a2      	cmp	r2, r4
    7730:	d013      	beq.n	775a <rt_mbx_send+0x42>
    7732:	8903      	ldrh	r3, [r0, #8]
    7734:	1d19      	adds	r1, r3, #4
    7736:	0089      	lsls	r1, r1, #2
    7738:	500d      	str	r5, [r1, r0]
    773a:	f3ef 8110 	mrs	r1, PRIMASK
    773e:	b672      	cpsid	i
    7740:	3201      	adds	r2, #1
    7742:	8182      	strh	r2, [r0, #12]
    7744:	b662      	cpsie	i
    7746:	3301      	adds	r3, #1
    7748:	b29b      	uxth	r3, r3
    774a:	429c      	cmp	r4, r3
    774c:	d003      	beq.n	7756 <rt_mbx_send+0x3e>
    774e:	2200      	movs	r2, #0
    7750:	8103      	strh	r3, [r0, #8]
    7752:	0010      	movs	r0, r2
    7754:	bd70      	pop	{r4, r5, r6, pc}
    7756:	2300      	movs	r3, #0
    7758:	e7f9      	b.n	774e <rt_mbx_send+0x36>
    775a:	2201      	movs	r2, #1
    775c:	2e00      	cmp	r6, #0
    775e:	d0f8      	beq.n	7752 <rt_mbx_send+0x3a>
    7760:	2b00      	cmp	r3, #0
    7762:	d01a      	beq.n	779a <rt_mbx_send+0x82>
    7764:	4c11      	ldr	r4, [pc, #68]	; (77ac <rt_mbx_send+0x94>)
    7766:	6821      	ldr	r1, [r4, #0]
    7768:	f000 f922 	bl	79b0 <rt_put_prio>
    776c:	6822      	ldr	r2, [r4, #0]
    776e:	61d5      	str	r5, [r2, #28]
    7770:	2108      	movs	r1, #8
    7772:	0030      	movs	r0, r6
    7774:	f000 fd56 	bl	8224 <rt_block>
    7778:	2201      	movs	r2, #1
    777a:	e7ea      	b.n	7752 <rt_mbx_send+0x3a>
    777c:	f000 f93e 	bl	79fc <rt_get_first>
    7780:	0004      	movs	r4, r0
    7782:	002a      	movs	r2, r5
    7784:	2110      	movs	r1, #16
    7786:	f7ff fd0b 	bl	71a0 <rt_ret_val2>
    778a:	0020      	movs	r0, r4
    778c:	f000 fa6e 	bl	7c6c <rt_rmv_dly>
    7790:	0020      	movs	r0, r4
    7792:	f000 fd21 	bl	81d8 <rt_dispatch>
    7796:	2200      	movs	r2, #0
    7798:	e7db      	b.n	7752 <rt_mbx_send+0x3a>
    779a:	4a04      	ldr	r2, [pc, #16]	; (77ac <rt_mbx_send+0x94>)
    779c:	6812      	ldr	r2, [r2, #0]
    779e:	6042      	str	r2, [r0, #4]
    77a0:	6053      	str	r3, [r2, #4]
    77a2:	2302      	movs	r3, #2
    77a4:	6090      	str	r0, [r2, #8]
    77a6:	7043      	strb	r3, [r0, #1]
    77a8:	e7e1      	b.n	776e <rt_mbx_send+0x56>
    77aa:	46c0      	nop			; (mov r8, r8)
    77ac:	200060b4 	.word	0x200060b4

000077b0 <rt_mbx_wait>:
    77b0:	b570      	push	{r4, r5, r6, lr}
    77b2:	0015      	movs	r5, r2
    77b4:	8982      	ldrh	r2, [r0, #12]
    77b6:	0004      	movs	r4, r0
    77b8:	2a00      	cmp	r2, #0
    77ba:	d018      	beq.n	77ee <rt_mbx_wait+0x3e>
    77bc:	8943      	ldrh	r3, [r0, #10]
    77be:	1d18      	adds	r0, r3, #4
    77c0:	0080      	lsls	r0, r0, #2
    77c2:	5900      	ldr	r0, [r0, r4]
    77c4:	3301      	adds	r3, #1
    77c6:	6008      	str	r0, [r1, #0]
    77c8:	89e1      	ldrh	r1, [r4, #14]
    77ca:	b29b      	uxth	r3, r3
    77cc:	8163      	strh	r3, [r4, #10]
    77ce:	4299      	cmp	r1, r3
    77d0:	d01e      	beq.n	7810 <rt_mbx_wait+0x60>
    77d2:	6863      	ldr	r3, [r4, #4]
    77d4:	2b00      	cmp	r3, #0
    77d6:	d002      	beq.n	77de <rt_mbx_wait+0x2e>
    77d8:	7863      	ldrb	r3, [r4, #1]
    77da:	2b02      	cmp	r3, #2
    77dc:	d025      	beq.n	782a <rt_mbx_wait+0x7a>
    77de:	f3ef 8310 	mrs	r3, PRIMASK
    77e2:	b672      	cpsid	i
    77e4:	3a01      	subs	r2, #1
    77e6:	81a2      	strh	r2, [r4, #12]
    77e8:	b662      	cpsie	i
    77ea:	2000      	movs	r0, #0
    77ec:	bd70      	pop	{r4, r5, r6, pc}
    77ee:	2001      	movs	r0, #1
    77f0:	2d00      	cmp	r5, #0
    77f2:	d0fb      	beq.n	77ec <rt_mbx_wait+0x3c>
    77f4:	6863      	ldr	r3, [r4, #4]
    77f6:	2b00      	cmp	r3, #0
    77f8:	d010      	beq.n	781c <rt_mbx_wait+0x6c>
    77fa:	4b1a      	ldr	r3, [pc, #104]	; (7864 <rt_mbx_wait+0xb4>)
    77fc:	0020      	movs	r0, r4
    77fe:	6819      	ldr	r1, [r3, #0]
    7800:	f000 f8d6 	bl	79b0 <rt_put_prio>
    7804:	0028      	movs	r0, r5
    7806:	2108      	movs	r1, #8
    7808:	f000 fd0c 	bl	8224 <rt_block>
    780c:	2001      	movs	r0, #1
    780e:	e7ed      	b.n	77ec <rt_mbx_wait+0x3c>
    7810:	2300      	movs	r3, #0
    7812:	8163      	strh	r3, [r4, #10]
    7814:	6863      	ldr	r3, [r4, #4]
    7816:	2b00      	cmp	r3, #0
    7818:	d1de      	bne.n	77d8 <rt_mbx_wait+0x28>
    781a:	e7e0      	b.n	77de <rt_mbx_wait+0x2e>
    781c:	4a11      	ldr	r2, [pc, #68]	; (7864 <rt_mbx_wait+0xb4>)
    781e:	6812      	ldr	r2, [r2, #0]
    7820:	6062      	str	r2, [r4, #4]
    7822:	6053      	str	r3, [r2, #4]
    7824:	6094      	str	r4, [r2, #8]
    7826:	7060      	strb	r0, [r4, #1]
    7828:	e7ec      	b.n	7804 <rt_mbx_wait+0x54>
    782a:	0020      	movs	r0, r4
    782c:	f000 f8e6 	bl	79fc <rt_get_first>
    7830:	0005      	movs	r5, r0
    7832:	2100      	movs	r1, #0
    7834:	f7ff fcb0 	bl	7198 <rt_ret_val>
    7838:	8923      	ldrh	r3, [r4, #8]
    783a:	69e9      	ldr	r1, [r5, #28]
    783c:	1d1a      	adds	r2, r3, #4
    783e:	0092      	lsls	r2, r2, #2
    7840:	5111      	str	r1, [r2, r4]
    7842:	3301      	adds	r3, #1
    7844:	89e2      	ldrh	r2, [r4, #14]
    7846:	b29b      	uxth	r3, r3
    7848:	8123      	strh	r3, [r4, #8]
    784a:	429a      	cmp	r2, r3
    784c:	d101      	bne.n	7852 <rt_mbx_wait+0xa2>
    784e:	2300      	movs	r3, #0
    7850:	8123      	strh	r3, [r4, #8]
    7852:	0028      	movs	r0, r5
    7854:	f000 fa0a 	bl	7c6c <rt_rmv_dly>
    7858:	0028      	movs	r0, r5
    785a:	f000 fcbd 	bl	81d8 <rt_dispatch>
    785e:	2000      	movs	r0, #0
    7860:	e7c4      	b.n	77ec <rt_mbx_wait+0x3c>
    7862:	46c0      	nop			; (mov r8, r8)
    7864:	200060b4 	.word	0x200060b4

00007868 <rt_mbx_check>:
    7868:	89c3      	ldrh	r3, [r0, #14]
    786a:	8980      	ldrh	r0, [r0, #12]
    786c:	1a18      	subs	r0, r3, r0
    786e:	4770      	bx	lr

00007870 <isr_mbx_send>:
    7870:	b510      	push	{r4, lr}
    7872:	f000 fa11 	bl	7c98 <rt_psq_enq>
    7876:	f000 fbf3 	bl	8060 <rt_psh_req>
    787a:	bd10      	pop	{r4, pc}

0000787c <isr_mbx_receive>:
    787c:	b510      	push	{r4, lr}
    787e:	8982      	ldrh	r2, [r0, #12]
    7880:	0004      	movs	r4, r0
    7882:	2000      	movs	r0, #0
    7884:	2a00      	cmp	r2, #0
    7886:	d017      	beq.n	78b8 <isr_mbx_receive+0x3c>
    7888:	8963      	ldrh	r3, [r4, #10]
    788a:	1d18      	adds	r0, r3, #4
    788c:	0080      	lsls	r0, r0, #2
    788e:	5900      	ldr	r0, [r0, r4]
    7890:	6008      	str	r0, [r1, #0]
    7892:	6861      	ldr	r1, [r4, #4]
    7894:	2900      	cmp	r1, #0
    7896:	d002      	beq.n	789e <isr_mbx_receive+0x22>
    7898:	7861      	ldrb	r1, [r4, #1]
    789a:	2902      	cmp	r1, #2
    789c:	d010      	beq.n	78c0 <isr_mbx_receive+0x44>
    789e:	f3ef 8110 	mrs	r1, PRIMASK
    78a2:	b672      	cpsid	i
    78a4:	3a01      	subs	r2, #1
    78a6:	81a2      	strh	r2, [r4, #12]
    78a8:	b662      	cpsie	i
    78aa:	3301      	adds	r3, #1
    78ac:	89e2      	ldrh	r2, [r4, #14]
    78ae:	b29b      	uxth	r3, r3
    78b0:	8163      	strh	r3, [r4, #10]
    78b2:	2004      	movs	r0, #4
    78b4:	429a      	cmp	r2, r3
    78b6:	d000      	beq.n	78ba <isr_mbx_receive+0x3e>
    78b8:	bd10      	pop	{r4, pc}
    78ba:	2300      	movs	r3, #0
    78bc:	8163      	strh	r3, [r4, #10]
    78be:	e7fb      	b.n	78b8 <isr_mbx_receive+0x3c>
    78c0:	2100      	movs	r1, #0
    78c2:	0020      	movs	r0, r4
    78c4:	f000 f9e8 	bl	7c98 <rt_psq_enq>
    78c8:	f000 fbca 	bl	8060 <rt_psh_req>
    78cc:	89a2      	ldrh	r2, [r4, #12]
    78ce:	8963      	ldrh	r3, [r4, #10]
    78d0:	e7e5      	b.n	789e <isr_mbx_receive+0x22>
    78d2:	46c0      	nop			; (mov r8, r8)

000078d4 <rt_mbx_psh>:
    78d4:	6843      	ldr	r3, [r0, #4]
    78d6:	b570      	push	{r4, r5, r6, lr}
    78d8:	0004      	movs	r4, r0
    78da:	000e      	movs	r6, r1
    78dc:	2b00      	cmp	r3, #0
    78de:	d04b      	beq.n	7978 <rt_mbx_psh+0xa4>
    78e0:	7845      	ldrb	r5, [r0, #1]
    78e2:	2d02      	cmp	r5, #2
    78e4:	d023      	beq.n	792e <rt_mbx_psh+0x5a>
    78e6:	2d03      	cmp	r5, #3
    78e8:	d002      	beq.n	78f0 <rt_mbx_psh+0x1c>
    78ea:	2d01      	cmp	r5, #1
    78ec:	d00f      	beq.n	790e <rt_mbx_psh+0x3a>
    78ee:	bd70      	pop	{r4, r5, r6, pc}
    78f0:	0008      	movs	r0, r1
    78f2:	f7ff fcd3 	bl	729c <rt_alloc_box>
    78f6:	1e05      	subs	r5, r0, #0
    78f8:	d0f9      	beq.n	78ee <rt_mbx_psh+0x1a>
    78fa:	0020      	movs	r0, r4
    78fc:	f000 f87e 	bl	79fc <rt_get_first>
    7900:	0029      	movs	r1, r5
    7902:	0004      	movs	r4, r0
    7904:	f7ff fc48 	bl	7198 <rt_ret_val>
    7908:	2301      	movs	r3, #1
    790a:	7063      	strb	r3, [r4, #1]
    790c:	e007      	b.n	791e <rt_mbx_psh+0x4a>
    790e:	f000 f875 	bl	79fc <rt_get_first>
    7912:	0004      	movs	r4, r0
    7914:	0032      	movs	r2, r6
    7916:	2110      	movs	r1, #16
    7918:	f7ff fc42 	bl	71a0 <rt_ret_val2>
    791c:	7065      	strb	r5, [r4, #1]
    791e:	0020      	movs	r0, r4
    7920:	f000 f9a4 	bl	7c6c <rt_rmv_dly>
    7924:	0021      	movs	r1, r4
    7926:	4821      	ldr	r0, [pc, #132]	; (79ac <rt_mbx_psh+0xd8>)
    7928:	f000 f842 	bl	79b0 <rt_put_prio>
    792c:	e7df      	b.n	78ee <rt_mbx_psh+0x1a>
    792e:	f000 f865 	bl	79fc <rt_get_first>
    7932:	0005      	movs	r5, r0
    7934:	2100      	movs	r1, #0
    7936:	f7ff fc2f 	bl	7198 <rt_ret_val>
    793a:	8923      	ldrh	r3, [r4, #8]
    793c:	69e9      	ldr	r1, [r5, #28]
    793e:	1d1a      	adds	r2, r3, #4
    7940:	0092      	lsls	r2, r2, #2
    7942:	5111      	str	r1, [r2, r4]
    7944:	f3ef 8210 	mrs	r2, PRIMASK
    7948:	b672      	cpsid	i
    794a:	89a2      	ldrh	r2, [r4, #12]
    794c:	3201      	adds	r2, #1
    794e:	81a2      	strh	r2, [r4, #12]
    7950:	b662      	cpsie	i
    7952:	3301      	adds	r3, #1
    7954:	89e2      	ldrh	r2, [r4, #14]
    7956:	b29b      	uxth	r3, r3
    7958:	8123      	strh	r3, [r4, #8]
    795a:	429a      	cmp	r2, r3
    795c:	d009      	beq.n	7972 <rt_mbx_psh+0x9e>
    795e:	2301      	movs	r3, #1
    7960:	0028      	movs	r0, r5
    7962:	706b      	strb	r3, [r5, #1]
    7964:	f000 f982 	bl	7c6c <rt_rmv_dly>
    7968:	0029      	movs	r1, r5
    796a:	4810      	ldr	r0, [pc, #64]	; (79ac <rt_mbx_psh+0xd8>)
    796c:	f000 f820 	bl	79b0 <rt_put_prio>
    7970:	e7bd      	b.n	78ee <rt_mbx_psh+0x1a>
    7972:	2300      	movs	r3, #0
    7974:	8123      	strh	r3, [r4, #8]
    7976:	e7f2      	b.n	795e <rt_mbx_psh+0x8a>
    7978:	8981      	ldrh	r1, [r0, #12]
    797a:	89c5      	ldrh	r5, [r0, #14]
    797c:	42a9      	cmp	r1, r5
    797e:	d20f      	bcs.n	79a0 <rt_mbx_psh+0xcc>
    7980:	8902      	ldrh	r2, [r0, #8]
    7982:	1d10      	adds	r0, r2, #4
    7984:	0080      	lsls	r0, r0, #2
    7986:	5106      	str	r6, [r0, r4]
    7988:	f3ef 8010 	mrs	r0, PRIMASK
    798c:	b672      	cpsid	i
    798e:	3101      	adds	r1, #1
    7990:	81a1      	strh	r1, [r4, #12]
    7992:	b662      	cpsie	i
    7994:	3201      	adds	r2, #1
    7996:	b292      	uxth	r2, r2
    7998:	4295      	cmp	r5, r2
    799a:	d005      	beq.n	79a8 <rt_mbx_psh+0xd4>
    799c:	8122      	strh	r2, [r4, #8]
    799e:	e7a6      	b.n	78ee <rt_mbx_psh+0x1a>
    79a0:	2003      	movs	r0, #3
    79a2:	f7f9 ffcb 	bl	193c <os_error>
    79a6:	e7a2      	b.n	78ee <rt_mbx_psh+0x1a>
    79a8:	8123      	strh	r3, [r4, #8]
    79aa:	e7a0      	b.n	78ee <rt_mbx_psh+0x1a>
    79ac:	20006080 	.word	0x20006080

000079b0 <rt_put_prio>:
    79b0:	b530      	push	{r4, r5, lr}
    79b2:	7805      	ldrb	r5, [r0, #0]
    79b4:	6842      	ldr	r2, [r0, #4]
    79b6:	3d01      	subs	r5, #1
    79b8:	b2ed      	uxtb	r5, r5
    79ba:	788c      	ldrb	r4, [r1, #2]
    79bc:	2a00      	cmp	r2, #0
    79be:	d01a      	beq.n	79f6 <rt_put_prio+0x46>
    79c0:	7893      	ldrb	r3, [r2, #2]
    79c2:	42a3      	cmp	r3, r4
    79c4:	d204      	bcs.n	79d0 <rt_put_prio+0x20>
    79c6:	e00e      	b.n	79e6 <rt_put_prio+0x36>
    79c8:	7898      	ldrb	r0, [r3, #2]
    79ca:	4284      	cmp	r4, r0
    79cc:	d80d      	bhi.n	79ea <rt_put_prio+0x3a>
    79ce:	001a      	movs	r2, r3
    79d0:	6853      	ldr	r3, [r2, #4]
    79d2:	2b00      	cmp	r3, #0
    79d4:	d1f8      	bne.n	79c8 <rt_put_prio+0x18>
    79d6:	2300      	movs	r3, #0
    79d8:	604b      	str	r3, [r1, #4]
    79da:	6051      	str	r1, [r2, #4]
    79dc:	2d02      	cmp	r5, #2
    79de:	d900      	bls.n	79e2 <rt_put_prio+0x32>
    79e0:	2200      	movs	r2, #0
    79e2:	608a      	str	r2, [r1, #8]
    79e4:	bd30      	pop	{r4, r5, pc}
    79e6:	0013      	movs	r3, r2
    79e8:	0002      	movs	r2, r0
    79ea:	604b      	str	r3, [r1, #4]
    79ec:	6051      	str	r1, [r2, #4]
    79ee:	2d02      	cmp	r5, #2
    79f0:	d8f6      	bhi.n	79e0 <rt_put_prio+0x30>
    79f2:	6099      	str	r1, [r3, #8]
    79f4:	e7f5      	b.n	79e2 <rt_put_prio+0x32>
    79f6:	0002      	movs	r2, r0
    79f8:	e7ed      	b.n	79d6 <rt_put_prio+0x26>
    79fa:	46c0      	nop			; (mov r8, r8)

000079fc <rt_get_first>:
    79fc:	6843      	ldr	r3, [r0, #4]
    79fe:	7802      	ldrb	r2, [r0, #0]
    7a00:	6859      	ldr	r1, [r3, #4]
    7a02:	3a01      	subs	r2, #1
    7a04:	6041      	str	r1, [r0, #4]
    7a06:	2a02      	cmp	r2, #2
    7a08:	d808      	bhi.n	7a1c <rt_get_first+0x20>
    7a0a:	2900      	cmp	r1, #0
    7a0c:	d002      	beq.n	7a14 <rt_get_first+0x18>
    7a0e:	2200      	movs	r2, #0
    7a10:	6088      	str	r0, [r1, #8]
    7a12:	605a      	str	r2, [r3, #4]
    7a14:	2200      	movs	r2, #0
    7a16:	609a      	str	r2, [r3, #8]
    7a18:	0018      	movs	r0, r3
    7a1a:	4770      	bx	lr
    7a1c:	2200      	movs	r2, #0
    7a1e:	605a      	str	r2, [r3, #4]
    7a20:	e7fa      	b.n	7a18 <rt_get_first+0x1c>
    7a22:	46c0      	nop			; (mov r8, r8)

00007a24 <rt_put_rdy_first>:
    7a24:	4b03      	ldr	r3, [pc, #12]	; (7a34 <rt_put_rdy_first+0x10>)
    7a26:	685a      	ldr	r2, [r3, #4]
    7a28:	6042      	str	r2, [r0, #4]
    7a2a:	2200      	movs	r2, #0
    7a2c:	6058      	str	r0, [r3, #4]
    7a2e:	6082      	str	r2, [r0, #8]
    7a30:	4770      	bx	lr
    7a32:	46c0      	nop			; (mov r8, r8)
    7a34:	20006080 	.word	0x20006080

00007a38 <rt_get_same_rdy_prio>:
    7a38:	4b06      	ldr	r3, [pc, #24]	; (7a54 <rt_get_same_rdy_prio+0x1c>)
    7a3a:	4a07      	ldr	r2, [pc, #28]	; (7a58 <rt_get_same_rdy_prio+0x20>)
    7a3c:	6858      	ldr	r0, [r3, #4]
    7a3e:	6812      	ldr	r2, [r2, #0]
    7a40:	7881      	ldrb	r1, [r0, #2]
    7a42:	7892      	ldrb	r2, [r2, #2]
    7a44:	4291      	cmp	r1, r2
    7a46:	d102      	bne.n	7a4e <rt_get_same_rdy_prio+0x16>
    7a48:	6842      	ldr	r2, [r0, #4]
    7a4a:	605a      	str	r2, [r3, #4]
    7a4c:	4770      	bx	lr
    7a4e:	2000      	movs	r0, #0
    7a50:	e7fc      	b.n	7a4c <rt_get_same_rdy_prio+0x14>
    7a52:	46c0      	nop			; (mov r8, r8)
    7a54:	20006080 	.word	0x20006080
    7a58:	200060b4 	.word	0x200060b4

00007a5c <rt_resort_prio>:
    7a5c:	6881      	ldr	r1, [r0, #8]
    7a5e:	b530      	push	{r4, r5, lr}
    7a60:	2900      	cmp	r1, #0
    7a62:	d030      	beq.n	7ac6 <rt_resort_prio+0x6a>
    7a64:	780b      	ldrb	r3, [r1, #0]
    7a66:	000a      	movs	r2, r1
    7a68:	2b00      	cmp	r3, #0
    7a6a:	d103      	bne.n	7a74 <rt_resort_prio+0x18>
    7a6c:	6892      	ldr	r2, [r2, #8]
    7a6e:	7813      	ldrb	r3, [r2, #0]
    7a70:	2b00      	cmp	r3, #0
    7a72:	d0fb      	beq.n	7a6c <rt_resort_prio+0x10>
    7a74:	6843      	ldr	r3, [r0, #4]
    7a76:	604b      	str	r3, [r1, #4]
    7a78:	6843      	ldr	r3, [r0, #4]
    7a7a:	2b00      	cmp	r3, #0
    7a7c:	d000      	beq.n	7a80 <rt_resort_prio+0x24>
    7a7e:	6099      	str	r1, [r3, #8]
    7a80:	7815      	ldrb	r5, [r2, #0]
    7a82:	6851      	ldr	r1, [r2, #4]
    7a84:	3d01      	subs	r5, #1
    7a86:	b2ed      	uxtb	r5, r5
    7a88:	7884      	ldrb	r4, [r0, #2]
    7a8a:	2900      	cmp	r1, #0
    7a8c:	d029      	beq.n	7ae2 <rt_resort_prio+0x86>
    7a8e:	788b      	ldrb	r3, [r1, #2]
    7a90:	42a3      	cmp	r3, r4
    7a92:	d204      	bcs.n	7a9e <rt_resort_prio+0x42>
    7a94:	e00e      	b.n	7ab4 <rt_resort_prio+0x58>
    7a96:	789a      	ldrb	r2, [r3, #2]
    7a98:	4294      	cmp	r4, r2
    7a9a:	d80d      	bhi.n	7ab8 <rt_resort_prio+0x5c>
    7a9c:	0019      	movs	r1, r3
    7a9e:	684b      	ldr	r3, [r1, #4]
    7aa0:	2b00      	cmp	r3, #0
    7aa2:	d1f8      	bne.n	7a96 <rt_resort_prio+0x3a>
    7aa4:	2300      	movs	r3, #0
    7aa6:	6043      	str	r3, [r0, #4]
    7aa8:	6048      	str	r0, [r1, #4]
    7aaa:	2d02      	cmp	r5, #2
    7aac:	d909      	bls.n	7ac2 <rt_resort_prio+0x66>
    7aae:	2300      	movs	r3, #0
    7ab0:	6083      	str	r3, [r0, #8]
    7ab2:	bd30      	pop	{r4, r5, pc}
    7ab4:	000b      	movs	r3, r1
    7ab6:	0011      	movs	r1, r2
    7ab8:	6043      	str	r3, [r0, #4]
    7aba:	6048      	str	r0, [r1, #4]
    7abc:	2d02      	cmp	r5, #2
    7abe:	d8f6      	bhi.n	7aae <rt_resort_prio+0x52>
    7ac0:	6098      	str	r0, [r3, #8]
    7ac2:	6081      	str	r1, [r0, #8]
    7ac4:	e7f5      	b.n	7ab2 <rt_resort_prio+0x56>
    7ac6:	7843      	ldrb	r3, [r0, #1]
    7ac8:	2b01      	cmp	r3, #1
    7aca:	d1f2      	bne.n	7ab2 <rt_resort_prio+0x56>
    7acc:	4a06      	ldr	r2, [pc, #24]	; (7ae8 <rt_resort_prio+0x8c>)
    7ace:	0013      	movs	r3, r2
    7ad0:	e001      	b.n	7ad6 <rt_resort_prio+0x7a>
    7ad2:	1e0b      	subs	r3, r1, #0
    7ad4:	d0d4      	beq.n	7a80 <rt_resort_prio+0x24>
    7ad6:	6859      	ldr	r1, [r3, #4]
    7ad8:	4288      	cmp	r0, r1
    7ada:	d1fa      	bne.n	7ad2 <rt_resort_prio+0x76>
    7adc:	6841      	ldr	r1, [r0, #4]
    7ade:	6059      	str	r1, [r3, #4]
    7ae0:	e7ce      	b.n	7a80 <rt_resort_prio+0x24>
    7ae2:	0011      	movs	r1, r2
    7ae4:	e7de      	b.n	7aa4 <rt_resort_prio+0x48>
    7ae6:	46c0      	nop			; (mov r8, r8)
    7ae8:	20006080 	.word	0x20006080

00007aec <rt_put_dly>:
    7aec:	b530      	push	{r4, r5, lr}
    7aee:	4c17      	ldr	r4, [pc, #92]	; (7b4c <rt_put_dly+0x60>)
    7af0:	68e2      	ldr	r2, [r4, #12]
    7af2:	2a00      	cmp	r2, #0
    7af4:	d023      	beq.n	7b3e <rt_put_dly+0x52>
    7af6:	8aa3      	ldrh	r3, [r4, #20]
    7af8:	4299      	cmp	r1, r3
    7afa:	d804      	bhi.n	7b06 <rt_put_dly+0x1a>
    7afc:	e022      	b.n	7b44 <rt_put_dly+0x58>
    7afe:	68d4      	ldr	r4, [r2, #12]
    7b00:	2c00      	cmp	r4, #0
    7b02:	d013      	beq.n	7b2c <rt_put_dly+0x40>
    7b04:	0022      	movs	r2, r4
    7b06:	8a94      	ldrh	r4, [r2, #20]
    7b08:	191b      	adds	r3, r3, r4
    7b0a:	4299      	cmp	r1, r3
    7b0c:	d8f7      	bhi.n	7afe <rt_put_dly+0x12>
    7b0e:	68d5      	ldr	r5, [r2, #12]
    7b10:	60c5      	str	r5, [r0, #12]
    7b12:	60d0      	str	r0, [r2, #12]
    7b14:	68c4      	ldr	r4, [r0, #12]
    7b16:	6102      	str	r2, [r0, #16]
    7b18:	2c00      	cmp	r4, #0
    7b1a:	d000      	beq.n	7b1e <rt_put_dly+0x32>
    7b1c:	6120      	str	r0, [r4, #16]
    7b1e:	1a5b      	subs	r3, r3, r1
    7b20:	b29b      	uxth	r3, r3
    7b22:	8283      	strh	r3, [r0, #20]
    7b24:	8a91      	ldrh	r1, [r2, #20]
    7b26:	1acb      	subs	r3, r1, r3
    7b28:	8293      	strh	r3, [r2, #20]
    7b2a:	bd30      	pop	{r4, r5, pc}
    7b2c:	b29b      	uxth	r3, r3
    7b2e:	2400      	movs	r4, #0
    7b30:	1acb      	subs	r3, r1, r3
    7b32:	60c4      	str	r4, [r0, #12]
    7b34:	60d0      	str	r0, [r2, #12]
    7b36:	6102      	str	r2, [r0, #16]
    7b38:	8293      	strh	r3, [r2, #20]
    7b3a:	8284      	strh	r4, [r0, #20]
    7b3c:	e7f5      	b.n	7b2a <rt_put_dly+0x3e>
    7b3e:	2300      	movs	r3, #0
    7b40:	0022      	movs	r2, r4
    7b42:	e7f4      	b.n	7b2e <rt_put_dly+0x42>
    7b44:	0015      	movs	r5, r2
    7b46:	0022      	movs	r2, r4
    7b48:	e7e2      	b.n	7b10 <rt_put_dly+0x24>
    7b4a:	46c0      	nop			; (mov r8, r8)
    7b4c:	20006098 	.word	0x20006098

00007b50 <rt_dec_dly>:
    7b50:	b5f0      	push	{r4, r5, r6, r7, lr}
    7b52:	464e      	mov	r6, r9
    7b54:	4657      	mov	r7, sl
    7b56:	4645      	mov	r5, r8
    7b58:	b4e0      	push	{r5, r6, r7}
    7b5a:	4e36      	ldr	r6, [pc, #216]	; (7c34 <rt_dec_dly+0xe4>)
    7b5c:	68f0      	ldr	r0, [r6, #12]
    7b5e:	2800      	cmp	r0, #0
    7b60:	d059      	beq.n	7c16 <rt_dec_dly+0xc6>
    7b62:	8ab3      	ldrh	r3, [r6, #20]
    7b64:	3b01      	subs	r3, #1
    7b66:	b29b      	uxth	r3, r3
    7b68:	82b3      	strh	r3, [r6, #20]
    7b6a:	2b00      	cmp	r3, #0
    7b6c:	d153      	bne.n	7c16 <rt_dec_dly+0xc6>
    7b6e:	4b32      	ldr	r3, [pc, #200]	; (7c38 <rt_dec_dly+0xe8>)
    7b70:	2500      	movs	r5, #0
    7b72:	469c      	mov	ip, r3
    7b74:	781f      	ldrb	r7, [r3, #0]
    7b76:	4b31      	ldr	r3, [pc, #196]	; (7c3c <rt_dec_dly+0xec>)
    7b78:	46e2      	mov	sl, ip
    7b7a:	881b      	ldrh	r3, [r3, #0]
    7b7c:	3f01      	subs	r7, #1
    7b7e:	4699      	mov	r9, r3
    7b80:	2301      	movs	r3, #1
    7b82:	4698      	mov	r8, r3
    7b84:	b2ff      	uxtb	r7, r7
    7b86:	6883      	ldr	r3, [r0, #8]
    7b88:	2b00      	cmp	r3, #0
    7b8a:	d007      	beq.n	7b9c <rt_dec_dly+0x4c>
    7b8c:	6842      	ldr	r2, [r0, #4]
    7b8e:	605a      	str	r2, [r3, #4]
    7b90:	6842      	ldr	r2, [r0, #4]
    7b92:	2a00      	cmp	r2, #0
    7b94:	d001      	beq.n	7b9a <rt_dec_dly+0x4a>
    7b96:	6093      	str	r3, [r2, #8]
    7b98:	6045      	str	r5, [r0, #4]
    7b9a:	6085      	str	r5, [r0, #8]
    7b9c:	4663      	mov	r3, ip
    7b9e:	685a      	ldr	r2, [r3, #4]
    7ba0:	7884      	ldrb	r4, [r0, #2]
    7ba2:	2a00      	cmp	r2, #0
    7ba4:	d03c      	beq.n	7c20 <rt_dec_dly+0xd0>
    7ba6:	7893      	ldrb	r3, [r2, #2]
    7ba8:	42a3      	cmp	r3, r4
    7baa:	d204      	bcs.n	7bb6 <rt_dec_dly+0x66>
    7bac:	e01c      	b.n	7be8 <rt_dec_dly+0x98>
    7bae:	7899      	ldrb	r1, [r3, #2]
    7bb0:	428c      	cmp	r4, r1
    7bb2:	d81b      	bhi.n	7bec <rt_dec_dly+0x9c>
    7bb4:	001a      	movs	r2, r3
    7bb6:	6853      	ldr	r3, [r2, #4]
    7bb8:	2b00      	cmp	r3, #0
    7bba:	d1f8      	bne.n	7bae <rt_dec_dly+0x5e>
    7bbc:	6045      	str	r5, [r0, #4]
    7bbe:	6050      	str	r0, [r2, #4]
    7bc0:	2f02      	cmp	r7, #2
    7bc2:	d900      	bls.n	7bc6 <rt_dec_dly+0x76>
    7bc4:	2200      	movs	r2, #0
    7bc6:	7843      	ldrb	r3, [r0, #1]
    7bc8:	6082      	str	r2, [r0, #8]
    7bca:	8a82      	ldrh	r2, [r0, #20]
    7bcc:	2b04      	cmp	r3, #4
    7bce:	d017      	beq.n	7c00 <rt_dec_dly+0xb0>
    7bd0:	4643      	mov	r3, r8
    7bd2:	7043      	strb	r3, [r0, #1]
    7bd4:	68c3      	ldr	r3, [r0, #12]
    7bd6:	2b00      	cmp	r3, #0
    7bd8:	d01a      	beq.n	7c10 <rt_dec_dly+0xc0>
    7bda:	611e      	str	r6, [r3, #16]
    7bdc:	60c5      	str	r5, [r0, #12]
    7bde:	6105      	str	r5, [r0, #16]
    7be0:	2a00      	cmp	r2, #0
    7be2:	d123      	bne.n	7c2c <rt_dec_dly+0xdc>
    7be4:	0018      	movs	r0, r3
    7be6:	e7ce      	b.n	7b86 <rt_dec_dly+0x36>
    7be8:	0013      	movs	r3, r2
    7bea:	4652      	mov	r2, sl
    7bec:	6043      	str	r3, [r0, #4]
    7bee:	6050      	str	r0, [r2, #4]
    7bf0:	2f02      	cmp	r7, #2
    7bf2:	d8e7      	bhi.n	7bc4 <rt_dec_dly+0x74>
    7bf4:	6098      	str	r0, [r3, #8]
    7bf6:	7843      	ldrb	r3, [r0, #1]
    7bf8:	6082      	str	r2, [r0, #8]
    7bfa:	8a82      	ldrh	r2, [r0, #20]
    7bfc:	2b04      	cmp	r3, #4
    7bfe:	d1e7      	bne.n	7bd0 <rt_dec_dly+0x80>
    7c00:	8ac3      	ldrh	r3, [r0, #22]
    7c02:	444b      	add	r3, r9
    7c04:	8283      	strh	r3, [r0, #20]
    7c06:	4643      	mov	r3, r8
    7c08:	7043      	strb	r3, [r0, #1]
    7c0a:	68c3      	ldr	r3, [r0, #12]
    7c0c:	2b00      	cmp	r3, #0
    7c0e:	d1e4      	bne.n	7bda <rt_dec_dly+0x8a>
    7c10:	82b2      	strh	r2, [r6, #20]
    7c12:	60f3      	str	r3, [r6, #12]
    7c14:	6103      	str	r3, [r0, #16]
    7c16:	bc1c      	pop	{r2, r3, r4}
    7c18:	4690      	mov	r8, r2
    7c1a:	4699      	mov	r9, r3
    7c1c:	46a2      	mov	sl, r4
    7c1e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7c20:	4652      	mov	r2, sl
    7c22:	6045      	str	r5, [r0, #4]
    7c24:	6050      	str	r0, [r2, #4]
    7c26:	2f02      	cmp	r7, #2
    7c28:	d8cc      	bhi.n	7bc4 <rt_dec_dly+0x74>
    7c2a:	e7cc      	b.n	7bc6 <rt_dec_dly+0x76>
    7c2c:	82b2      	strh	r2, [r6, #20]
    7c2e:	60f3      	str	r3, [r6, #12]
    7c30:	e7f1      	b.n	7c16 <rt_dec_dly+0xc6>
    7c32:	46c0      	nop			; (mov r8, r8)
    7c34:	20006098 	.word	0x20006098
    7c38:	20006080 	.word	0x20006080
    7c3c:	2000607c 	.word	0x2000607c

00007c40 <rt_rmv_list>:
    7c40:	6883      	ldr	r3, [r0, #8]
    7c42:	2b00      	cmp	r3, #0
    7c44:	d006      	beq.n	7c54 <rt_rmv_list+0x14>
    7c46:	6842      	ldr	r2, [r0, #4]
    7c48:	605a      	str	r2, [r3, #4]
    7c4a:	6842      	ldr	r2, [r0, #4]
    7c4c:	2a00      	cmp	r2, #0
    7c4e:	d000      	beq.n	7c52 <rt_rmv_list+0x12>
    7c50:	6093      	str	r3, [r2, #8]
    7c52:	4770      	bx	lr
    7c54:	4b04      	ldr	r3, [pc, #16]	; (7c68 <rt_rmv_list+0x28>)
    7c56:	e001      	b.n	7c5c <rt_rmv_list+0x1c>
    7c58:	1e13      	subs	r3, r2, #0
    7c5a:	d0fa      	beq.n	7c52 <rt_rmv_list+0x12>
    7c5c:	685a      	ldr	r2, [r3, #4]
    7c5e:	4290      	cmp	r0, r2
    7c60:	d1fa      	bne.n	7c58 <rt_rmv_list+0x18>
    7c62:	6842      	ldr	r2, [r0, #4]
    7c64:	605a      	str	r2, [r3, #4]
    7c66:	e7f4      	b.n	7c52 <rt_rmv_list+0x12>
    7c68:	20006080 	.word	0x20006080

00007c6c <rt_rmv_dly>:
    7c6c:	6903      	ldr	r3, [r0, #16]
    7c6e:	b510      	push	{r4, lr}
    7c70:	2b00      	cmp	r3, #0
    7c72:	d00d      	beq.n	7c90 <rt_rmv_dly+0x24>
    7c74:	68c2      	ldr	r2, [r0, #12]
    7c76:	60da      	str	r2, [r3, #12]
    7c78:	68c1      	ldr	r1, [r0, #12]
    7c7a:	2900      	cmp	r1, #0
    7c7c:	d009      	beq.n	7c92 <rt_rmv_dly+0x26>
    7c7e:	8a9c      	ldrh	r4, [r3, #20]
    7c80:	8a82      	ldrh	r2, [r0, #20]
    7c82:	18a2      	adds	r2, r4, r2
    7c84:	829a      	strh	r2, [r3, #20]
    7c86:	610b      	str	r3, [r1, #16]
    7c88:	2300      	movs	r3, #0
    7c8a:	60c3      	str	r3, [r0, #12]
    7c8c:	2300      	movs	r3, #0
    7c8e:	6103      	str	r3, [r0, #16]
    7c90:	bd10      	pop	{r4, pc}
    7c92:	8299      	strh	r1, [r3, #20]
    7c94:	e7fa      	b.n	7c8c <rt_rmv_dly+0x20>
    7c96:	46c0      	nop			; (mov r8, r8)

00007c98 <rt_psq_enq>:
    7c98:	b570      	push	{r4, r5, r6, lr}
    7c9a:	4c0f      	ldr	r4, [pc, #60]	; (7cd8 <rt_psq_enq+0x40>)
    7c9c:	78e5      	ldrb	r5, [r4, #3]
    7c9e:	f3ef 8310 	mrs	r3, PRIMASK
    7ca2:	b672      	cpsid	i
    7ca4:	78a3      	ldrb	r3, [r4, #2]
    7ca6:	429d      	cmp	r5, r3
    7ca8:	d907      	bls.n	7cba <rt_psq_enq+0x22>
    7caa:	1c5a      	adds	r2, r3, #1
    7cac:	7823      	ldrb	r3, [r4, #0]
    7cae:	70a2      	strb	r2, [r4, #2]
    7cb0:	1c5a      	adds	r2, r3, #1
    7cb2:	4295      	cmp	r5, r2
    7cb4:	d00d      	beq.n	7cd2 <rt_psq_enq+0x3a>
    7cb6:	b2d2      	uxtb	r2, r2
    7cb8:	7022      	strb	r2, [r4, #0]
    7cba:	b662      	cpsie	i
    7cbc:	429d      	cmp	r5, r3
    7cbe:	d904      	bls.n	7cca <rt_psq_enq+0x32>
    7cc0:	00db      	lsls	r3, r3, #3
    7cc2:	18e3      	adds	r3, r4, r3
    7cc4:	6058      	str	r0, [r3, #4]
    7cc6:	6099      	str	r1, [r3, #8]
    7cc8:	bd70      	pop	{r4, r5, r6, pc}
    7cca:	2002      	movs	r0, #2
    7ccc:	f7f9 fe36 	bl	193c <os_error>
    7cd0:	e7fa      	b.n	7cc8 <rt_psq_enq+0x30>
    7cd2:	2200      	movs	r2, #0
    7cd4:	7022      	strb	r2, [r4, #0]
    7cd6:	e7f0      	b.n	7cba <rt_psq_enq+0x22>
    7cd8:	20004c58 	.word	0x20004c58

00007cdc <rt_evt_wait>:
    7cdc:	4b10      	ldr	r3, [pc, #64]	; (7d20 <rt_evt_wait+0x44>)
    7cde:	b570      	push	{r4, r5, r6, lr}
    7ce0:	681b      	ldr	r3, [r3, #0]
    7ce2:	000c      	movs	r4, r1
    7ce4:	2a00      	cmp	r2, #0
    7ce6:	d00b      	beq.n	7d00 <rt_evt_wait+0x24>
    7ce8:	0005      	movs	r5, r0
    7cea:	8b1a      	ldrh	r2, [r3, #24]
    7cec:	2106      	movs	r1, #6
    7cee:	4015      	ands	r5, r2
    7cf0:	42a8      	cmp	r0, r5
    7cf2:	d00a      	beq.n	7d0a <rt_evt_wait+0x2e>
    7cf4:	8358      	strh	r0, [r3, #26]
    7cf6:	0020      	movs	r0, r4
    7cf8:	f000 fa94 	bl	8224 <rt_block>
    7cfc:	2001      	movs	r0, #1
    7cfe:	e007      	b.n	7d10 <rt_evt_wait+0x34>
    7d00:	8b1a      	ldrh	r2, [r3, #24]
    7d02:	0011      	movs	r1, r2
    7d04:	4001      	ands	r1, r0
    7d06:	d004      	beq.n	7d12 <rt_evt_wait+0x36>
    7d08:	8359      	strh	r1, [r3, #26]
    7d0a:	4382      	bics	r2, r0
    7d0c:	2002      	movs	r0, #2
    7d0e:	831a      	strh	r2, [r3, #24]
    7d10:	bd70      	pop	{r4, r5, r6, pc}
    7d12:	8358      	strh	r0, [r3, #26]
    7d14:	2105      	movs	r1, #5
    7d16:	0020      	movs	r0, r4
    7d18:	f000 fa84 	bl	8224 <rt_block>
    7d1c:	2001      	movs	r0, #1
    7d1e:	e7f7      	b.n	7d10 <rt_evt_wait+0x34>
    7d20:	200060b4 	.word	0x200060b4

00007d24 <rt_evt_set>:
    7d24:	3901      	subs	r1, #1
    7d26:	4b14      	ldr	r3, [pc, #80]	; (7d78 <rt_evt_set+0x54>)
    7d28:	0089      	lsls	r1, r1, #2
    7d2a:	b510      	push	{r4, lr}
    7d2c:	58cc      	ldr	r4, [r1, r3]
    7d2e:	2c00      	cmp	r4, #0
    7d30:	d008      	beq.n	7d44 <rt_evt_set+0x20>
    7d32:	8b23      	ldrh	r3, [r4, #24]
    7d34:	8b62      	ldrh	r2, [r4, #26]
    7d36:	4318      	orrs	r0, r3
    7d38:	7863      	ldrb	r3, [r4, #1]
    7d3a:	8320      	strh	r0, [r4, #24]
    7d3c:	2b06      	cmp	r3, #6
    7d3e:	d016      	beq.n	7d6e <rt_evt_set+0x4a>
    7d40:	2b05      	cmp	r3, #5
    7d42:	d000      	beq.n	7d46 <rt_evt_set+0x22>
    7d44:	bd10      	pop	{r4, pc}
    7d46:	0013      	movs	r3, r2
    7d48:	4003      	ands	r3, r0
    7d4a:	d0fb      	beq.n	7d44 <rt_evt_set+0x20>
    7d4c:	8363      	strh	r3, [r4, #26]
    7d4e:	4390      	bics	r0, r2
    7d50:	8320      	strh	r0, [r4, #24]
    7d52:	0020      	movs	r0, r4
    7d54:	f7ff ff8a 	bl	7c6c <rt_rmv_dly>
    7d58:	2301      	movs	r3, #1
    7d5a:	0020      	movs	r0, r4
    7d5c:	7063      	strb	r3, [r4, #1]
    7d5e:	8b62      	ldrh	r2, [r4, #26]
    7d60:	2108      	movs	r1, #8
    7d62:	f7ff fa1d 	bl	71a0 <rt_ret_val2>
    7d66:	0020      	movs	r0, r4
    7d68:	f000 fa36 	bl	81d8 <rt_dispatch>
    7d6c:	e7ea      	b.n	7d44 <rt_evt_set+0x20>
    7d6e:	0013      	movs	r3, r2
    7d70:	4003      	ands	r3, r0
    7d72:	429a      	cmp	r2, r3
    7d74:	d1e6      	bne.n	7d44 <rt_evt_set+0x20>
    7d76:	e7ea      	b.n	7d4e <rt_evt_set+0x2a>
    7d78:	20004cdc 	.word	0x20004cdc

00007d7c <rt_evt_clr>:
    7d7c:	3901      	subs	r1, #1
    7d7e:	4b04      	ldr	r3, [pc, #16]	; (7d90 <rt_evt_clr+0x14>)
    7d80:	0089      	lsls	r1, r1, #2
    7d82:	58cb      	ldr	r3, [r1, r3]
    7d84:	2b00      	cmp	r3, #0
    7d86:	d002      	beq.n	7d8e <rt_evt_clr+0x12>
    7d88:	8b1a      	ldrh	r2, [r3, #24]
    7d8a:	4382      	bics	r2, r0
    7d8c:	831a      	strh	r2, [r3, #24]
    7d8e:	4770      	bx	lr
    7d90:	20004cdc 	.word	0x20004cdc

00007d94 <isr_evt_set>:
    7d94:	3901      	subs	r1, #1
    7d96:	4b06      	ldr	r3, [pc, #24]	; (7db0 <isr_evt_set+0x1c>)
    7d98:	0089      	lsls	r1, r1, #2
    7d9a:	58cb      	ldr	r3, [r1, r3]
    7d9c:	b510      	push	{r4, lr}
    7d9e:	2b00      	cmp	r3, #0
    7da0:	d005      	beq.n	7dae <isr_evt_set+0x1a>
    7da2:	0001      	movs	r1, r0
    7da4:	0018      	movs	r0, r3
    7da6:	f7ff ff77 	bl	7c98 <rt_psq_enq>
    7daa:	f000 f959 	bl	8060 <rt_psh_req>
    7dae:	bd10      	pop	{r4, pc}
    7db0:	20004cdc 	.word	0x20004cdc

00007db4 <rt_evt_get>:
    7db4:	4b01      	ldr	r3, [pc, #4]	; (7dbc <rt_evt_get+0x8>)
    7db6:	681b      	ldr	r3, [r3, #0]
    7db8:	8b58      	ldrh	r0, [r3, #26]
    7dba:	4770      	bx	lr
    7dbc:	200060b4 	.word	0x200060b4

00007dc0 <rt_evt_psh>:
    7dc0:	b510      	push	{r4, lr}
    7dc2:	8b03      	ldrh	r3, [r0, #24]
    7dc4:	0004      	movs	r4, r0
    7dc6:	4319      	orrs	r1, r3
    7dc8:	7843      	ldrb	r3, [r0, #1]
    7dca:	8301      	strh	r1, [r0, #24]
    7dcc:	8b42      	ldrh	r2, [r0, #26]
    7dce:	2b06      	cmp	r3, #6
    7dd0:	d017      	beq.n	7e02 <rt_evt_psh+0x42>
    7dd2:	2b05      	cmp	r3, #5
    7dd4:	d000      	beq.n	7dd8 <rt_evt_psh+0x18>
    7dd6:	bd10      	pop	{r4, pc}
    7dd8:	0013      	movs	r3, r2
    7dda:	400b      	ands	r3, r1
    7ddc:	d0fb      	beq.n	7dd6 <rt_evt_psh+0x16>
    7dde:	8343      	strh	r3, [r0, #26]
    7de0:	4391      	bics	r1, r2
    7de2:	8321      	strh	r1, [r4, #24]
    7de4:	0020      	movs	r0, r4
    7de6:	f7ff ff41 	bl	7c6c <rt_rmv_dly>
    7dea:	2301      	movs	r3, #1
    7dec:	0020      	movs	r0, r4
    7dee:	7063      	strb	r3, [r4, #1]
    7df0:	8b62      	ldrh	r2, [r4, #26]
    7df2:	2108      	movs	r1, #8
    7df4:	f7ff f9d4 	bl	71a0 <rt_ret_val2>
    7df8:	0021      	movs	r1, r4
    7dfa:	4804      	ldr	r0, [pc, #16]	; (7e0c <rt_evt_psh+0x4c>)
    7dfc:	f7ff fdd8 	bl	79b0 <rt_put_prio>
    7e00:	e7e9      	b.n	7dd6 <rt_evt_psh+0x16>
    7e02:	0013      	movs	r3, r2
    7e04:	400b      	ands	r3, r1
    7e06:	429a      	cmp	r2, r3
    7e08:	d1e5      	bne.n	7dd6 <rt_evt_psh+0x16>
    7e0a:	e7e9      	b.n	7de0 <rt_evt_psh+0x20>
    7e0c:	20006080 	.word	0x20006080

00007e10 <rt_suspend>:
    7e10:	4b1c      	ldr	r3, [pc, #112]	; (7e84 <rt_suspend+0x74>)
    7e12:	b510      	push	{r4, lr}
    7e14:	681b      	ldr	r3, [r3, #0]
    7e16:	2b00      	cmp	r3, #0
    7e18:	db20      	blt.n	7e5c <rt_suspend+0x4c>
    7e1a:	491b      	ldr	r1, [pc, #108]	; (7e88 <rt_suspend+0x78>)
    7e1c:	095a      	lsrs	r2, r3, #5
    7e1e:	468c      	mov	ip, r1
    7e20:	211f      	movs	r1, #31
    7e22:	400b      	ands	r3, r1
    7e24:	391e      	subs	r1, #30
    7e26:	0008      	movs	r0, r1
    7e28:	4098      	lsls	r0, r3
    7e2a:	0092      	lsls	r2, r2, #2
    7e2c:	4462      	add	r2, ip
    7e2e:	6010      	str	r0, [r2, #0]
    7e30:	4816      	ldr	r0, [pc, #88]	; (7e8c <rt_suspend+0x7c>)
    7e32:	4a17      	ldr	r2, [pc, #92]	; (7e90 <rt_suspend+0x80>)
    7e34:	7001      	strb	r1, [r0, #0]
    7e36:	6813      	ldr	r3, [r2, #0]
    7e38:	0f1b      	lsrs	r3, r3, #28
    7e3a:	400b      	ands	r3, r1
    7e3c:	7043      	strb	r3, [r0, #1]
    7e3e:	06db      	lsls	r3, r3, #27
    7e40:	6013      	str	r3, [r2, #0]
    7e42:	4b14      	ldr	r3, [pc, #80]	; (7e94 <rt_suspend+0x84>)
    7e44:	68da      	ldr	r2, [r3, #12]
    7e46:	2a00      	cmp	r2, #0
    7e48:	d019      	beq.n	7e7e <rt_suspend+0x6e>
    7e4a:	8a9c      	ldrh	r4, [r3, #20]
    7e4c:	f7fe f9e6 	bl	621c <sysUserTimerWakeupTime>
    7e50:	0003      	movs	r3, r0
    7e52:	0020      	movs	r0, r4
    7e54:	429c      	cmp	r4, r3
    7e56:	d900      	bls.n	7e5a <rt_suspend+0x4a>
    7e58:	0018      	movs	r0, r3
    7e5a:	bd10      	pop	{r4, pc}
    7e5c:	2005      	movs	r0, #5
    7e5e:	4b0e      	ldr	r3, [pc, #56]	; (7e98 <rt_suspend+0x88>)
    7e60:	490a      	ldr	r1, [pc, #40]	; (7e8c <rt_suspend+0x7c>)
    7e62:	6018      	str	r0, [r3, #0]
    7e64:	2301      	movs	r3, #1
    7e66:	4a0a      	ldr	r2, [pc, #40]	; (7e90 <rt_suspend+0x80>)
    7e68:	700b      	strb	r3, [r1, #0]
    7e6a:	6813      	ldr	r3, [r2, #0]
    7e6c:	0e9b      	lsrs	r3, r3, #26
    7e6e:	4003      	ands	r3, r0
    7e70:	704b      	strb	r3, [r1, #1]
    7e72:	065b      	lsls	r3, r3, #25
    7e74:	6013      	str	r3, [r2, #0]
    7e76:	4b07      	ldr	r3, [pc, #28]	; (7e94 <rt_suspend+0x84>)
    7e78:	68da      	ldr	r2, [r3, #12]
    7e7a:	2a00      	cmp	r2, #0
    7e7c:	d1e5      	bne.n	7e4a <rt_suspend+0x3a>
    7e7e:	4c07      	ldr	r4, [pc, #28]	; (7e9c <rt_suspend+0x8c>)
    7e80:	e7e4      	b.n	7e4c <rt_suspend+0x3c>
    7e82:	46c0      	nop			; (mov r8, r8)
    7e84:	200060b0 	.word	0x200060b0
    7e88:	e000e180 	.word	0xe000e180
    7e8c:	20006039 	.word	0x20006039
    7e90:	e000ed04 	.word	0xe000ed04
    7e94:	20006098 	.word	0x20006098
    7e98:	e000e010 	.word	0xe000e010
    7e9c:	0000ffff 	.word	0x0000ffff

00007ea0 <rt_resume>:
    7ea0:	b5f0      	push	{r4, r5, r6, r7, lr}
    7ea2:	4647      	mov	r7, r8
    7ea4:	4b32      	ldr	r3, [pc, #200]	; (7f70 <rt_resume+0xd0>)
    7ea6:	b480      	push	{r7}
    7ea8:	0007      	movs	r7, r0
    7eaa:	6818      	ldr	r0, [r3, #0]
    7eac:	2301      	movs	r3, #1
    7eae:	7043      	strb	r3, [r0, #1]
    7eb0:	4698      	mov	r8, r3
    7eb2:	f7ff fdb7 	bl	7a24 <rt_put_rdy_first>
    7eb6:	2200      	movs	r2, #0
    7eb8:	4b2e      	ldr	r3, [pc, #184]	; (7f74 <rt_resume+0xd4>)
    7eba:	4e2f      	ldr	r6, [pc, #188]	; (7f78 <rt_resume+0xd8>)
    7ebc:	601a      	str	r2, [r3, #0]
    7ebe:	68f3      	ldr	r3, [r6, #12]
    7ec0:	2b00      	cmp	r3, #0
    7ec2:	d04f      	beq.n	7f64 <rt_resume+0xc4>
    7ec4:	8ab3      	ldrh	r3, [r6, #20]
    7ec6:	429f      	cmp	r7, r3
    7ec8:	d336      	bcc.n	7f38 <rt_resume+0x98>
    7eca:	4d2c      	ldr	r5, [pc, #176]	; (7f7c <rt_resume+0xdc>)
    7ecc:	1afc      	subs	r4, r7, r3
    7ece:	682a      	ldr	r2, [r5, #0]
    7ed0:	4694      	mov	ip, r2
    7ed2:	4463      	add	r3, ip
    7ed4:	602b      	str	r3, [r5, #0]
    7ed6:	4643      	mov	r3, r8
    7ed8:	82b3      	strh	r3, [r6, #20]
    7eda:	e006      	b.n	7eea <rt_resume+0x4a>
    7edc:	682b      	ldr	r3, [r5, #0]
    7ede:	3c01      	subs	r4, #1
    7ee0:	3301      	adds	r3, #1
    7ee2:	602b      	str	r3, [r5, #0]
    7ee4:	68f3      	ldr	r3, [r6, #12]
    7ee6:	2b00      	cmp	r3, #0
    7ee8:	d003      	beq.n	7ef2 <rt_resume+0x52>
    7eea:	f7ff fe31 	bl	7b50 <rt_dec_dly>
    7eee:	2c00      	cmp	r4, #0
    7ef0:	d1f4      	bne.n	7edc <rt_resume+0x3c>
    7ef2:	0038      	movs	r0, r7
    7ef4:	f7fe f99e 	bl	6234 <sysUserTimerUpdate>
    7ef8:	4821      	ldr	r0, [pc, #132]	; (7f80 <rt_resume+0xe0>)
    7efa:	f7ff fd7f 	bl	79fc <rt_get_first>
    7efe:	f000 f963 	bl	81c8 <rt_switch_req>
    7f02:	4b20      	ldr	r3, [pc, #128]	; (7f84 <rt_resume+0xe4>)
    7f04:	681b      	ldr	r3, [r3, #0]
    7f06:	2b00      	cmp	r3, #0
    7f08:	db1d      	blt.n	7f46 <rt_resume+0xa6>
    7f0a:	491f      	ldr	r1, [pc, #124]	; (7f88 <rt_resume+0xe8>)
    7f0c:	095a      	lsrs	r2, r3, #5
    7f0e:	468c      	mov	ip, r1
    7f10:	211f      	movs	r1, #31
    7f12:	400b      	ands	r3, r1
    7f14:	391e      	subs	r1, #30
    7f16:	4099      	lsls	r1, r3
    7f18:	0092      	lsls	r2, r2, #2
    7f1a:	4462      	add	r2, ip
    7f1c:	6011      	str	r1, [r2, #0]
    7f1e:	2100      	movs	r1, #0
    7f20:	4a1a      	ldr	r2, [pc, #104]	; (7f8c <rt_resume+0xec>)
    7f22:	7011      	strb	r1, [r2, #0]
    7f24:	7890      	ldrb	r0, [r2, #2]
    7f26:	7853      	ldrb	r3, [r2, #1]
    7f28:	4303      	orrs	r3, r0
    7f2a:	4819      	ldr	r0, [pc, #100]	; (7f90 <rt_resume+0xf0>)
    7f2c:	071b      	lsls	r3, r3, #28
    7f2e:	6003      	str	r3, [r0, #0]
    7f30:	7091      	strb	r1, [r2, #2]
    7f32:	bc04      	pop	{r2}
    7f34:	4690      	mov	r8, r2
    7f36:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7f38:	4910      	ldr	r1, [pc, #64]	; (7f7c <rt_resume+0xdc>)
    7f3a:	1bdb      	subs	r3, r3, r7
    7f3c:	680a      	ldr	r2, [r1, #0]
    7f3e:	82b3      	strh	r3, [r6, #20]
    7f40:	19d2      	adds	r2, r2, r7
    7f42:	600a      	str	r2, [r1, #0]
    7f44:	e7d5      	b.n	7ef2 <rt_resume+0x52>
    7f46:	2207      	movs	r2, #7
    7f48:	2000      	movs	r0, #0
    7f4a:	4910      	ldr	r1, [pc, #64]	; (7f8c <rt_resume+0xec>)
    7f4c:	4b11      	ldr	r3, [pc, #68]	; (7f94 <rt_resume+0xf4>)
    7f4e:	601a      	str	r2, [r3, #0]
    7f50:	7008      	strb	r0, [r1, #0]
    7f52:	788b      	ldrb	r3, [r1, #2]
    7f54:	784a      	ldrb	r2, [r1, #1]
    7f56:	009b      	lsls	r3, r3, #2
    7f58:	4313      	orrs	r3, r2
    7f5a:	4a0d      	ldr	r2, [pc, #52]	; (7f90 <rt_resume+0xf0>)
    7f5c:	069b      	lsls	r3, r3, #26
    7f5e:	6013      	str	r3, [r2, #0]
    7f60:	7088      	strb	r0, [r1, #2]
    7f62:	e7e6      	b.n	7f32 <rt_resume+0x92>
    7f64:	4a05      	ldr	r2, [pc, #20]	; (7f7c <rt_resume+0xdc>)
    7f66:	6813      	ldr	r3, [r2, #0]
    7f68:	19db      	adds	r3, r3, r7
    7f6a:	6013      	str	r3, [r2, #0]
    7f6c:	e7c1      	b.n	7ef2 <rt_resume+0x52>
    7f6e:	46c0      	nop			; (mov r8, r8)
    7f70:	200060b4 	.word	0x200060b4
    7f74:	200060f0 	.word	0x200060f0
    7f78:	20006098 	.word	0x20006098
    7f7c:	2000607c 	.word	0x2000607c
    7f80:	20006080 	.word	0x20006080
    7f84:	200060b0 	.word	0x200060b0
    7f88:	e000e100 	.word	0xe000e100
    7f8c:	20006039 	.word	0x20006039
    7f90:	e000ed04 	.word	0xe000ed04
    7f94:	e000e010 	.word	0xe000e010

00007f98 <rt_tsk_lock>:
    7f98:	4b13      	ldr	r3, [pc, #76]	; (7fe8 <rt_tsk_lock+0x50>)
    7f9a:	681b      	ldr	r3, [r3, #0]
    7f9c:	2b00      	cmp	r3, #0
    7f9e:	db14      	blt.n	7fca <rt_tsk_lock+0x32>
    7fa0:	4912      	ldr	r1, [pc, #72]	; (7fec <rt_tsk_lock+0x54>)
    7fa2:	095a      	lsrs	r2, r3, #5
    7fa4:	468c      	mov	ip, r1
    7fa6:	211f      	movs	r1, #31
    7fa8:	400b      	ands	r3, r1
    7faa:	391e      	subs	r1, #30
    7fac:	0008      	movs	r0, r1
    7fae:	4098      	lsls	r0, r3
    7fb0:	0092      	lsls	r2, r2, #2
    7fb2:	4462      	add	r2, ip
    7fb4:	6010      	str	r0, [r2, #0]
    7fb6:	480e      	ldr	r0, [pc, #56]	; (7ff0 <rt_tsk_lock+0x58>)
    7fb8:	4a0e      	ldr	r2, [pc, #56]	; (7ff4 <rt_tsk_lock+0x5c>)
    7fba:	7001      	strb	r1, [r0, #0]
    7fbc:	6813      	ldr	r3, [r2, #0]
    7fbe:	0f1b      	lsrs	r3, r3, #28
    7fc0:	400b      	ands	r3, r1
    7fc2:	7043      	strb	r3, [r0, #1]
    7fc4:	06db      	lsls	r3, r3, #27
    7fc6:	6013      	str	r3, [r2, #0]
    7fc8:	4770      	bx	lr
    7fca:	2005      	movs	r0, #5
    7fcc:	4b0a      	ldr	r3, [pc, #40]	; (7ff8 <rt_tsk_lock+0x60>)
    7fce:	4908      	ldr	r1, [pc, #32]	; (7ff0 <rt_tsk_lock+0x58>)
    7fd0:	6018      	str	r0, [r3, #0]
    7fd2:	2301      	movs	r3, #1
    7fd4:	4a07      	ldr	r2, [pc, #28]	; (7ff4 <rt_tsk_lock+0x5c>)
    7fd6:	700b      	strb	r3, [r1, #0]
    7fd8:	6813      	ldr	r3, [r2, #0]
    7fda:	0e9b      	lsrs	r3, r3, #26
    7fdc:	4003      	ands	r3, r0
    7fde:	704b      	strb	r3, [r1, #1]
    7fe0:	065b      	lsls	r3, r3, #25
    7fe2:	6013      	str	r3, [r2, #0]
    7fe4:	e7f0      	b.n	7fc8 <rt_tsk_lock+0x30>
    7fe6:	46c0      	nop			; (mov r8, r8)
    7fe8:	200060b0 	.word	0x200060b0
    7fec:	e000e180 	.word	0xe000e180
    7ff0:	20006039 	.word	0x20006039
    7ff4:	e000ed04 	.word	0xe000ed04
    7ff8:	e000e010 	.word	0xe000e010

00007ffc <rt_tsk_unlock>:
    7ffc:	4b13      	ldr	r3, [pc, #76]	; (804c <rt_tsk_unlock+0x50>)
    7ffe:	681b      	ldr	r3, [r3, #0]
    8000:	2b00      	cmp	r3, #0
    8002:	db14      	blt.n	802e <rt_tsk_unlock+0x32>
    8004:	4912      	ldr	r1, [pc, #72]	; (8050 <rt_tsk_unlock+0x54>)
    8006:	095a      	lsrs	r2, r3, #5
    8008:	468c      	mov	ip, r1
    800a:	211f      	movs	r1, #31
    800c:	400b      	ands	r3, r1
    800e:	391e      	subs	r1, #30
    8010:	4099      	lsls	r1, r3
    8012:	0092      	lsls	r2, r2, #2
    8014:	4462      	add	r2, ip
    8016:	6011      	str	r1, [r2, #0]
    8018:	2100      	movs	r1, #0
    801a:	4a0e      	ldr	r2, [pc, #56]	; (8054 <rt_tsk_unlock+0x58>)
    801c:	7011      	strb	r1, [r2, #0]
    801e:	7890      	ldrb	r0, [r2, #2]
    8020:	7853      	ldrb	r3, [r2, #1]
    8022:	4303      	orrs	r3, r0
    8024:	480c      	ldr	r0, [pc, #48]	; (8058 <rt_tsk_unlock+0x5c>)
    8026:	071b      	lsls	r3, r3, #28
    8028:	6003      	str	r3, [r0, #0]
    802a:	7091      	strb	r1, [r2, #2]
    802c:	4770      	bx	lr
    802e:	2207      	movs	r2, #7
    8030:	2000      	movs	r0, #0
    8032:	4908      	ldr	r1, [pc, #32]	; (8054 <rt_tsk_unlock+0x58>)
    8034:	4b09      	ldr	r3, [pc, #36]	; (805c <rt_tsk_unlock+0x60>)
    8036:	601a      	str	r2, [r3, #0]
    8038:	7008      	strb	r0, [r1, #0]
    803a:	788b      	ldrb	r3, [r1, #2]
    803c:	784a      	ldrb	r2, [r1, #1]
    803e:	009b      	lsls	r3, r3, #2
    8040:	4313      	orrs	r3, r2
    8042:	4a05      	ldr	r2, [pc, #20]	; (8058 <rt_tsk_unlock+0x5c>)
    8044:	069b      	lsls	r3, r3, #26
    8046:	6013      	str	r3, [r2, #0]
    8048:	7088      	strb	r0, [r1, #2]
    804a:	e7ef      	b.n	802c <rt_tsk_unlock+0x30>
    804c:	200060b0 	.word	0x200060b0
    8050:	e000e100 	.word	0xe000e100
    8054:	20006039 	.word	0x20006039
    8058:	e000ed04 	.word	0xe000ed04
    805c:	e000e010 	.word	0xe000e010

00008060 <rt_psh_req>:
    8060:	4b05      	ldr	r3, [pc, #20]	; (8078 <rt_psh_req+0x18>)
    8062:	781a      	ldrb	r2, [r3, #0]
    8064:	2a00      	cmp	r2, #0
    8066:	d002      	beq.n	806e <rt_psh_req+0xe>
    8068:	2201      	movs	r2, #1
    806a:	709a      	strb	r2, [r3, #2]
    806c:	4770      	bx	lr
    806e:	2280      	movs	r2, #128	; 0x80
    8070:	4b02      	ldr	r3, [pc, #8]	; (807c <rt_psh_req+0x1c>)
    8072:	0552      	lsls	r2, r2, #21
    8074:	601a      	str	r2, [r3, #0]
    8076:	e7f9      	b.n	806c <rt_psh_req+0xc>
    8078:	20006039 	.word	0x20006039
    807c:	e000ed04 	.word	0xe000ed04

00008080 <rt_pop_req>:
    8080:	4b1c      	ldr	r3, [pc, #112]	; (80f4 <rt_pop_req+0x74>)
    8082:	b570      	push	{r4, r5, r6, lr}
    8084:	6818      	ldr	r0, [r3, #0]
    8086:	2301      	movs	r3, #1
    8088:	7043      	strb	r3, [r0, #1]
    808a:	f7ff fccb 	bl	7a24 <rt_put_rdy_first>
    808e:	4d1a      	ldr	r5, [pc, #104]	; (80f8 <rt_pop_req+0x78>)
    8090:	78ab      	ldrb	r3, [r5, #2]
    8092:	786c      	ldrb	r4, [r5, #1]
    8094:	2b00      	cmp	r3, #0
    8096:	d112      	bne.n	80be <rt_pop_req+0x3e>
    8098:	e024      	b.n	80e4 <rt_pop_req+0x64>
    809a:	2a01      	cmp	r2, #1
    809c:	d01e      	beq.n	80dc <rt_pop_req+0x5c>
    809e:	f7ff fb13 	bl	76c8 <rt_sem_psh>
    80a2:	78eb      	ldrb	r3, [r5, #3]
    80a4:	3401      	adds	r4, #1
    80a6:	429c      	cmp	r4, r3
    80a8:	d016      	beq.n	80d8 <rt_pop_req+0x58>
    80aa:	f3ef 8310 	mrs	r3, PRIMASK
    80ae:	b672      	cpsid	i
    80b0:	78ab      	ldrb	r3, [r5, #2]
    80b2:	3b01      	subs	r3, #1
    80b4:	b2db      	uxtb	r3, r3
    80b6:	70ab      	strb	r3, [r5, #2]
    80b8:	b662      	cpsie	i
    80ba:	2b00      	cmp	r3, #0
    80bc:	d012      	beq.n	80e4 <rt_pop_req+0x64>
    80be:	00e3      	lsls	r3, r4, #3
    80c0:	18eb      	adds	r3, r5, r3
    80c2:	6858      	ldr	r0, [r3, #4]
    80c4:	7802      	ldrb	r2, [r0, #0]
    80c6:	2a00      	cmp	r2, #0
    80c8:	d1e7      	bne.n	809a <rt_pop_req+0x1a>
    80ca:	8919      	ldrh	r1, [r3, #8]
    80cc:	f7ff fe78 	bl	7dc0 <rt_evt_psh>
    80d0:	78eb      	ldrb	r3, [r5, #3]
    80d2:	3401      	adds	r4, #1
    80d4:	429c      	cmp	r4, r3
    80d6:	d1e8      	bne.n	80aa <rt_pop_req+0x2a>
    80d8:	2400      	movs	r4, #0
    80da:	e7e6      	b.n	80aa <rt_pop_req+0x2a>
    80dc:	6899      	ldr	r1, [r3, #8]
    80de:	f7ff fbf9 	bl	78d4 <rt_mbx_psh>
    80e2:	e7de      	b.n	80a2 <rt_pop_req+0x22>
    80e4:	706c      	strb	r4, [r5, #1]
    80e6:	4805      	ldr	r0, [pc, #20]	; (80fc <rt_pop_req+0x7c>)
    80e8:	f7ff fc88 	bl	79fc <rt_get_first>
    80ec:	f000 f86c 	bl	81c8 <rt_switch_req>
    80f0:	bd70      	pop	{r4, r5, r6, pc}
    80f2:	46c0      	nop			; (mov r8, r8)
    80f4:	200060b4 	.word	0x200060b4
    80f8:	20004c58 	.word	0x20004c58
    80fc:	20006080 	.word	0x20006080

00008100 <os_tick_init>:
    8100:	4b09      	ldr	r3, [pc, #36]	; (8128 <os_tick_init+0x28>)
    8102:	21ff      	movs	r1, #255	; 0xff
    8104:	681a      	ldr	r2, [r3, #0]
    8106:	4b09      	ldr	r3, [pc, #36]	; (812c <os_tick_init+0x2c>)
    8108:	2001      	movs	r0, #1
    810a:	601a      	str	r2, [r3, #0]
    810c:	2200      	movs	r2, #0
    810e:	4b08      	ldr	r3, [pc, #32]	; (8130 <os_tick_init+0x30>)
    8110:	0609      	lsls	r1, r1, #24
    8112:	601a      	str	r2, [r3, #0]
    8114:	4b07      	ldr	r3, [pc, #28]	; (8134 <os_tick_init+0x34>)
    8116:	3207      	adds	r2, #7
    8118:	601a      	str	r2, [r3, #0]
    811a:	4a07      	ldr	r2, [pc, #28]	; (8138 <os_tick_init+0x38>)
    811c:	4240      	negs	r0, r0
    811e:	6813      	ldr	r3, [r2, #0]
    8120:	430b      	orrs	r3, r1
    8122:	6013      	str	r3, [r2, #0]
    8124:	4770      	bx	lr
    8126:	46c0      	nop			; (mov r8, r8)
    8128:	000088b8 	.word	0x000088b8
    812c:	e000e014 	.word	0xe000e014
    8130:	e000e018 	.word	0xe000e018
    8134:	e000e010 	.word	0xe000e010
    8138:	e000ed20 	.word	0xe000ed20

0000813c <os_tick_val>:
    813c:	4b02      	ldr	r3, [pc, #8]	; (8148 <os_tick_val+0xc>)
    813e:	6818      	ldr	r0, [r3, #0]
    8140:	4b02      	ldr	r3, [pc, #8]	; (814c <os_tick_val+0x10>)
    8142:	681b      	ldr	r3, [r3, #0]
    8144:	1a18      	subs	r0, r3, r0
    8146:	4770      	bx	lr
    8148:	e000e018 	.word	0xe000e018
    814c:	000088b8 	.word	0x000088b8

00008150 <os_tick_ovf>:
    8150:	4b02      	ldr	r3, [pc, #8]	; (815c <os_tick_ovf+0xc>)
    8152:	6818      	ldr	r0, [r3, #0]
    8154:	0140      	lsls	r0, r0, #5
    8156:	0fc0      	lsrs	r0, r0, #31
    8158:	4770      	bx	lr
    815a:	46c0      	nop			; (mov r8, r8)
    815c:	e000ed04 	.word	0xe000ed04

00008160 <os_tick_irqack>:
    8160:	4770      	bx	lr
    8162:	46c0      	nop			; (mov r8, r8)

00008164 <rt_systick>:
    8164:	4b0b      	ldr	r3, [pc, #44]	; (8194 <rt_systick+0x30>)
    8166:	b510      	push	{r4, lr}
    8168:	6818      	ldr	r0, [r3, #0]
    816a:	2301      	movs	r3, #1
    816c:	7043      	strb	r3, [r0, #1]
    816e:	f7ff fc59 	bl	7a24 <rt_put_rdy_first>
    8172:	f000 faeb 	bl	874c <rt_chk_robin>
    8176:	4a08      	ldr	r2, [pc, #32]	; (8198 <rt_systick+0x34>)
    8178:	6813      	ldr	r3, [r2, #0]
    817a:	3301      	adds	r3, #1
    817c:	6013      	str	r3, [r2, #0]
    817e:	f7ff fce7 	bl	7b50 <rt_dec_dly>
    8182:	f7fd ffed 	bl	6160 <sysTimerTick>
    8186:	4805      	ldr	r0, [pc, #20]	; (819c <rt_systick+0x38>)
    8188:	f7ff fc38 	bl	79fc <rt_get_first>
    818c:	f000 f81c 	bl	81c8 <rt_switch_req>
    8190:	bd10      	pop	{r4, pc}
    8192:	46c0      	nop			; (mov r8, r8)
    8194:	200060b4 	.word	0x200060b4
    8198:	2000607c 	.word	0x2000607c
    819c:	20006080 	.word	0x20006080

000081a0 <rt_stk_check>:
    81a0:	4b07      	ldr	r3, [pc, #28]	; (81c0 <rt_stk_check+0x20>)
    81a2:	b510      	push	{r4, lr}
    81a4:	681b      	ldr	r3, [r3, #0]
    81a6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    81a8:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    81aa:	429a      	cmp	r2, r3
    81ac:	d803      	bhi.n	81b6 <rt_stk_check+0x16>
    81ae:	4b05      	ldr	r3, [pc, #20]	; (81c4 <rt_stk_check+0x24>)
    81b0:	6812      	ldr	r2, [r2, #0]
    81b2:	429a      	cmp	r2, r3
    81b4:	d002      	beq.n	81bc <rt_stk_check+0x1c>
    81b6:	2001      	movs	r0, #1
    81b8:	f7f9 fbc0 	bl	193c <os_error>
    81bc:	bd10      	pop	{r4, pc}
    81be:	46c0      	nop			; (mov r8, r8)
    81c0:	200060b4 	.word	0x200060b4
    81c4:	e25a2ea5 	.word	0xe25a2ea5

000081c8 <rt_switch_req>:
    81c8:	4b02      	ldr	r3, [pc, #8]	; (81d4 <rt_switch_req+0xc>)
    81ca:	6058      	str	r0, [r3, #4]
    81cc:	2302      	movs	r3, #2
    81ce:	7043      	strb	r3, [r0, #1]
    81d0:	4770      	bx	lr
    81d2:	46c0      	nop			; (mov r8, r8)
    81d4:	200060b4 	.word	0x200060b4

000081d8 <rt_dispatch>:
    81d8:	b570      	push	{r4, r5, r6, lr}
    81da:	1e04      	subs	r4, r0, #0
    81dc:	d015      	beq.n	820a <rt_dispatch+0x32>
    81de:	4d0f      	ldr	r5, [pc, #60]	; (821c <rt_dispatch+0x44>)
    81e0:	78a2      	ldrb	r2, [r4, #2]
    81e2:	6828      	ldr	r0, [r5, #0]
    81e4:	7883      	ldrb	r3, [r0, #2]
    81e6:	429a      	cmp	r2, r3
    81e8:	d806      	bhi.n	81f8 <rt_dispatch+0x20>
    81ea:	2301      	movs	r3, #1
    81ec:	0021      	movs	r1, r4
    81ee:	7063      	strb	r3, [r4, #1]
    81f0:	480b      	ldr	r0, [pc, #44]	; (8220 <rt_dispatch+0x48>)
    81f2:	f7ff fbdd 	bl	79b0 <rt_put_prio>
    81f6:	bd70      	pop	{r4, r5, r6, pc}
    81f8:	f7ff fc14 	bl	7a24 <rt_put_rdy_first>
    81fc:	2301      	movs	r3, #1
    81fe:	682a      	ldr	r2, [r5, #0]
    8200:	7053      	strb	r3, [r2, #1]
    8202:	3301      	adds	r3, #1
    8204:	606c      	str	r4, [r5, #4]
    8206:	7063      	strb	r3, [r4, #1]
    8208:	e7f5      	b.n	81f6 <rt_dispatch+0x1e>
    820a:	4805      	ldr	r0, [pc, #20]	; (8220 <rt_dispatch+0x48>)
    820c:	f7ff fbf6 	bl	79fc <rt_get_first>
    8210:	4b02      	ldr	r3, [pc, #8]	; (821c <rt_dispatch+0x44>)
    8212:	6058      	str	r0, [r3, #4]
    8214:	2302      	movs	r3, #2
    8216:	7043      	strb	r3, [r0, #1]
    8218:	e7ed      	b.n	81f6 <rt_dispatch+0x1e>
    821a:	46c0      	nop			; (mov r8, r8)
    821c:	200060b4 	.word	0x200060b4
    8220:	20006080 	.word	0x20006080

00008224 <rt_block>:
    8224:	b570      	push	{r4, r5, r6, lr}
    8226:	000d      	movs	r5, r1
    8228:	2800      	cmp	r0, #0
    822a:	d00f      	beq.n	824c <rt_block+0x28>
    822c:	4b08      	ldr	r3, [pc, #32]	; (8250 <rt_block+0x2c>)
    822e:	4c09      	ldr	r4, [pc, #36]	; (8254 <rt_block+0x30>)
    8230:	4298      	cmp	r0, r3
    8232:	d003      	beq.n	823c <rt_block+0x18>
    8234:	0001      	movs	r1, r0
    8236:	6820      	ldr	r0, [r4, #0]
    8238:	f7ff fc58 	bl	7aec <rt_put_dly>
    823c:	6823      	ldr	r3, [r4, #0]
    823e:	4806      	ldr	r0, [pc, #24]	; (8258 <rt_block+0x34>)
    8240:	705d      	strb	r5, [r3, #1]
    8242:	f7ff fbdb 	bl	79fc <rt_get_first>
    8246:	2302      	movs	r3, #2
    8248:	6060      	str	r0, [r4, #4]
    824a:	7043      	strb	r3, [r0, #1]
    824c:	bd70      	pop	{r4, r5, r6, pc}
    824e:	46c0      	nop			; (mov r8, r8)
    8250:	0000ffff 	.word	0x0000ffff
    8254:	200060b4 	.word	0x200060b4
    8258:	20006080 	.word	0x20006080

0000825c <rt_tsk_pass>:
    825c:	b570      	push	{r4, r5, r6, lr}
    825e:	f7ff fbeb 	bl	7a38 <rt_get_same_rdy_prio>
    8262:	1e04      	subs	r4, r0, #0
    8264:	d00a      	beq.n	827c <rt_tsk_pass+0x20>
    8266:	4d06      	ldr	r5, [pc, #24]	; (8280 <rt_tsk_pass+0x24>)
    8268:	4806      	ldr	r0, [pc, #24]	; (8284 <rt_tsk_pass+0x28>)
    826a:	6829      	ldr	r1, [r5, #0]
    826c:	f7ff fba0 	bl	79b0 <rt_put_prio>
    8270:	2301      	movs	r3, #1
    8272:	682a      	ldr	r2, [r5, #0]
    8274:	7053      	strb	r3, [r2, #1]
    8276:	3301      	adds	r3, #1
    8278:	606c      	str	r4, [r5, #4]
    827a:	7063      	strb	r3, [r4, #1]
    827c:	bd70      	pop	{r4, r5, r6, pc}
    827e:	46c0      	nop			; (mov r8, r8)
    8280:	200060b4 	.word	0x200060b4
    8284:	20006080 	.word	0x20006080

00008288 <rt_tsk_self>:
    8288:	4b03      	ldr	r3, [pc, #12]	; (8298 <rt_tsk_self+0x10>)
    828a:	681b      	ldr	r3, [r3, #0]
    828c:	2b00      	cmp	r3, #0
    828e:	d001      	beq.n	8294 <rt_tsk_self+0xc>
    8290:	78d8      	ldrb	r0, [r3, #3]
    8292:	4770      	bx	lr
    8294:	2000      	movs	r0, #0
    8296:	e7fc      	b.n	8292 <rt_tsk_self+0xa>
    8298:	200060b4 	.word	0x200060b4

0000829c <rt_tsk_prio>:
    829c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    829e:	2800      	cmp	r0, #0
    82a0:	d10c      	bne.n	82bc <rt_tsk_prio+0x20>
    82a2:	2224      	movs	r2, #36	; 0x24
    82a4:	4c27      	ldr	r4, [pc, #156]	; (8344 <rt_tsk_prio+0xa8>)
    82a6:	6823      	ldr	r3, [r4, #0]
    82a8:	7099      	strb	r1, [r3, #2]
    82aa:	5499      	strb	r1, [r3, r2]
    82ac:	4d26      	ldr	r5, [pc, #152]	; (8348 <rt_tsk_prio+0xac>)
    82ae:	686a      	ldr	r2, [r5, #4]
    82b0:	7892      	ldrb	r2, [r2, #2]
    82b2:	428a      	cmp	r2, r1
    82b4:	d82c      	bhi.n	8310 <rt_tsk_prio+0x74>
    82b6:	2200      	movs	r2, #0
    82b8:	0010      	movs	r0, r2
    82ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    82bc:	4b23      	ldr	r3, [pc, #140]	; (834c <rt_tsk_prio+0xb0>)
    82be:	22ff      	movs	r2, #255	; 0xff
    82c0:	881b      	ldrh	r3, [r3, #0]
    82c2:	4298      	cmp	r0, r3
    82c4:	d8f8      	bhi.n	82b8 <rt_tsk_prio+0x1c>
    82c6:	1e43      	subs	r3, r0, #1
    82c8:	4821      	ldr	r0, [pc, #132]	; (8350 <rt_tsk_prio+0xb4>)
    82ca:	009b      	lsls	r3, r3, #2
    82cc:	581d      	ldr	r5, [r3, r0]
    82ce:	2d00      	cmp	r5, #0
    82d0:	d0f2      	beq.n	82b8 <rt_tsk_prio+0x1c>
    82d2:	2324      	movs	r3, #36	; 0x24
    82d4:	4c1b      	ldr	r4, [pc, #108]	; (8344 <rt_tsk_prio+0xa8>)
    82d6:	70a9      	strb	r1, [r5, #2]
    82d8:	54e9      	strb	r1, [r5, r3]
    82da:	6823      	ldr	r3, [r4, #0]
    82dc:	429d      	cmp	r5, r3
    82de:	d0e5      	beq.n	82ac <rt_tsk_prio+0x10>
    82e0:	0028      	movs	r0, r5
    82e2:	f7ff fbbb 	bl	7a5c <rt_resort_prio>
    82e6:	786d      	ldrb	r5, [r5, #1]
    82e8:	2d01      	cmp	r5, #1
    82ea:	d1e4      	bne.n	82b6 <rt_tsk_prio+0x1a>
    82ec:	4f16      	ldr	r7, [pc, #88]	; (8348 <rt_tsk_prio+0xac>)
    82ee:	0038      	movs	r0, r7
    82f0:	f7ff fb84 	bl	79fc <rt_get_first>
    82f4:	1e06      	subs	r6, r0, #0
    82f6:	d023      	beq.n	8340 <rt_tsk_prio+0xa4>
    82f8:	6820      	ldr	r0, [r4, #0]
    82fa:	78b2      	ldrb	r2, [r6, #2]
    82fc:	7883      	ldrb	r3, [r0, #2]
    82fe:	429a      	cmp	r2, r3
    8300:	d815      	bhi.n	832e <rt_tsk_prio+0x92>
    8302:	7075      	strb	r5, [r6, #1]
    8304:	0031      	movs	r1, r6
    8306:	0038      	movs	r0, r7
    8308:	f7ff fb52 	bl	79b0 <rt_put_prio>
    830c:	2200      	movs	r2, #0
    830e:	e7d3      	b.n	82b8 <rt_tsk_prio+0x1c>
    8310:	0019      	movs	r1, r3
    8312:	0028      	movs	r0, r5
    8314:	f7ff fb4c 	bl	79b0 <rt_put_prio>
    8318:	2301      	movs	r3, #1
    831a:	0028      	movs	r0, r5
    831c:	6822      	ldr	r2, [r4, #0]
    831e:	7053      	strb	r3, [r2, #1]
    8320:	f7ff fb6c 	bl	79fc <rt_get_first>
    8324:	2302      	movs	r3, #2
    8326:	6060      	str	r0, [r4, #4]
    8328:	2200      	movs	r2, #0
    832a:	7043      	strb	r3, [r0, #1]
    832c:	e7c4      	b.n	82b8 <rt_tsk_prio+0x1c>
    832e:	f7ff fb79 	bl	7a24 <rt_put_rdy_first>
    8332:	6823      	ldr	r3, [r4, #0]
    8334:	2200      	movs	r2, #0
    8336:	705d      	strb	r5, [r3, #1]
    8338:	2302      	movs	r3, #2
    833a:	6066      	str	r6, [r4, #4]
    833c:	7073      	strb	r3, [r6, #1]
    833e:	e7bb      	b.n	82b8 <rt_tsk_prio+0x1c>
    8340:	0038      	movs	r0, r7
    8342:	e7ed      	b.n	8320 <rt_tsk_prio+0x84>
    8344:	200060b4 	.word	0x200060b4
    8348:	20006080 	.word	0x20006080
    834c:	000088a4 	.word	0x000088a4
    8350:	20004cdc 	.word	0x20004cdc

00008354 <rt_tsk_create>:
    8354:	b5f0      	push	{r4, r5, r6, r7, lr}
    8356:	4647      	mov	r7, r8
    8358:	b480      	push	{r7}
    835a:	001f      	movs	r7, r3
    835c:	23ff      	movs	r3, #255	; 0xff
    835e:	400b      	ands	r3, r1
    8360:	4690      	mov	r8, r2
    8362:	001a      	movs	r2, r3
    8364:	4253      	negs	r3, r2
    8366:	4153      	adcs	r3, r2
    8368:	0006      	movs	r6, r0
    836a:	4831      	ldr	r0, [pc, #196]	; (8430 <rt_tsk_create+0xdc>)
    836c:	18cc      	adds	r4, r1, r3
    836e:	f7fe ff95 	bl	729c <rt_alloc_box>
    8372:	1e05      	subs	r5, r0, #0
    8374:	d032      	beq.n	83dc <rt_tsk_create+0x88>
    8376:	4643      	mov	r3, r8
    8378:	2101      	movs	r1, #1
    837a:	62c3      	str	r3, [r0, #44]	; 0x2c
    837c:	2300      	movs	r3, #0
    837e:	0a22      	lsrs	r2, r4, #8
    8380:	7041      	strb	r1, [r0, #1]
    8382:	b2e4      	uxtb	r4, r4
    8384:	3123      	adds	r1, #35	; 0x23
    8386:	b292      	uxth	r2, r2
    8388:	7003      	strb	r3, [r0, #0]
    838a:	84c2      	strh	r2, [r0, #38]	; 0x26
    838c:	61c7      	str	r7, [r0, #28]
    838e:	7084      	strb	r4, [r0, #2]
    8390:	5444      	strb	r4, [r0, r1]
    8392:	2100      	movs	r1, #0
    8394:	6043      	str	r3, [r0, #4]
    8396:	6083      	str	r3, [r0, #8]
    8398:	60c3      	str	r3, [r0, #12]
    839a:	6103      	str	r3, [r0, #16]
    839c:	6203      	str	r3, [r0, #32]
    839e:	8283      	strh	r3, [r0, #20]
    83a0:	82c3      	strh	r3, [r0, #22]
    83a2:	8303      	strh	r3, [r0, #24]
    83a4:	8343      	strh	r3, [r0, #26]
    83a6:	3325      	adds	r3, #37	; 0x25
    83a8:	54c1      	strb	r1, [r0, r3]
    83aa:	2a00      	cmp	r2, #0
    83ac:	d01a      	beq.n	83e4 <rt_tsk_create+0x90>
    83ae:	0031      	movs	r1, r6
    83b0:	0028      	movs	r0, r5
    83b2:	f7fe fe99 	bl	70e8 <rt_init_stack>
    83b6:	4b1f      	ldr	r3, [pc, #124]	; (8434 <rt_tsk_create+0xe0>)
    83b8:	8819      	ldrh	r1, [r3, #0]
    83ba:	2900      	cmp	r1, #0
    83bc:	d00e      	beq.n	83dc <rt_tsk_create+0x88>
    83be:	481e      	ldr	r0, [pc, #120]	; (8438 <rt_tsk_create+0xe4>)
    83c0:	6803      	ldr	r3, [r0, #0]
    83c2:	2b00      	cmp	r3, #0
    83c4:	d02f      	beq.n	8426 <rt_tsk_create+0xd2>
    83c6:	2201      	movs	r2, #1
    83c8:	e005      	b.n	83d6 <rt_tsk_create+0x82>
    83ca:	00a3      	lsls	r3, r4, #2
    83cc:	3b04      	subs	r3, #4
    83ce:	58c3      	ldr	r3, [r0, r3]
    83d0:	2b00      	cmp	r3, #0
    83d2:	d00c      	beq.n	83ee <rt_tsk_create+0x9a>
    83d4:	0022      	movs	r2, r4
    83d6:	1c54      	adds	r4, r2, #1
    83d8:	428c      	cmp	r4, r1
    83da:	d9f6      	bls.n	83ca <rt_tsk_create+0x76>
    83dc:	2000      	movs	r0, #0
    83de:	bc04      	pop	{r2}
    83e0:	4690      	mov	r8, r2
    83e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    83e4:	4815      	ldr	r0, [pc, #84]	; (843c <rt_tsk_create+0xe8>)
    83e6:	f7fe ff59 	bl	729c <rt_alloc_box>
    83ea:	62e8      	str	r0, [r5, #44]	; 0x2c
    83ec:	e7df      	b.n	83ae <rt_tsk_create+0x5a>
    83ee:	b2e3      	uxtb	r3, r4
    83f0:	0092      	lsls	r2, r2, #2
    83f2:	4e13      	ldr	r6, [pc, #76]	; (8440 <rt_tsk_create+0xec>)
    83f4:	5085      	str	r5, [r0, r2]
    83f6:	70eb      	strb	r3, [r5, #3]
    83f8:	6830      	ldr	r0, [r6, #0]
    83fa:	78aa      	ldrb	r2, [r5, #2]
    83fc:	7883      	ldrb	r3, [r0, #2]
    83fe:	429a      	cmp	r2, r3
    8400:	d807      	bhi.n	8412 <rt_tsk_create+0xbe>
    8402:	2301      	movs	r3, #1
    8404:	480f      	ldr	r0, [pc, #60]	; (8444 <rt_tsk_create+0xf0>)
    8406:	706b      	strb	r3, [r5, #1]
    8408:	0029      	movs	r1, r5
    840a:	f7ff fad1 	bl	79b0 <rt_put_prio>
    840e:	0020      	movs	r0, r4
    8410:	e7e5      	b.n	83de <rt_tsk_create+0x8a>
    8412:	f7ff fb07 	bl	7a24 <rt_put_rdy_first>
    8416:	2301      	movs	r3, #1
    8418:	6832      	ldr	r2, [r6, #0]
    841a:	0020      	movs	r0, r4
    841c:	7053      	strb	r3, [r2, #1]
    841e:	3301      	adds	r3, #1
    8420:	6075      	str	r5, [r6, #4]
    8422:	706b      	strb	r3, [r5, #1]
    8424:	e7db      	b.n	83de <rt_tsk_create+0x8a>
    8426:	2301      	movs	r3, #1
    8428:	2200      	movs	r2, #0
    842a:	2401      	movs	r4, #1
    842c:	e7e0      	b.n	83f0 <rt_tsk_create+0x9c>
    842e:	46c0      	nop			; (mov r8, r8)
    8430:	20000908 	.word	0x20000908
    8434:	000088a4 	.word	0x000088a4
    8438:	20004cdc 	.word	0x20004cdc
    843c:	200009e8 	.word	0x200009e8
    8440:	200060b4 	.word	0x200060b4
    8444:	20006080 	.word	0x20006080

00008448 <rt_tsk_delete>:
    8448:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    844a:	4644      	mov	r4, r8
    844c:	465f      	mov	r7, fp
    844e:	4656      	mov	r6, sl
    8450:	464d      	mov	r5, r9
    8452:	4b5a      	ldr	r3, [pc, #360]	; (85bc <rt_tsk_delete+0x174>)
    8454:	b4f0      	push	{r4, r5, r6, r7}
    8456:	4698      	mov	r8, r3
    8458:	681c      	ldr	r4, [r3, #0]
    845a:	2800      	cmp	r0, #0
    845c:	d00e      	beq.n	847c <rt_tsk_delete+0x34>
    845e:	78e3      	ldrb	r3, [r4, #3]
    8460:	4298      	cmp	r0, r3
    8462:	d00b      	beq.n	847c <rt_tsk_delete+0x34>
    8464:	4b56      	ldr	r3, [pc, #344]	; (85c0 <rt_tsk_delete+0x178>)
    8466:	881a      	ldrh	r2, [r3, #0]
    8468:	23ff      	movs	r3, #255	; 0xff
    846a:	4290      	cmp	r0, r2
    846c:	d952      	bls.n	8514 <rt_tsk_delete+0xcc>
    846e:	0018      	movs	r0, r3
    8470:	bc3c      	pop	{r2, r3, r4, r5}
    8472:	4690      	mov	r8, r2
    8474:	4699      	mov	r9, r3
    8476:	46a2      	mov	sl, r4
    8478:	46ab      	mov	fp, r5
    847a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    847c:	2300      	movs	r3, #0
    847e:	7063      	strb	r3, [r4, #1]
    8480:	f7fc fa57 	bl	4932 <rt_get_PSP>
    8484:	62a0      	str	r0, [r4, #40]	; 0x28
    8486:	f7ff fe8b 	bl	81a0 <rt_stk_check>
    848a:	4643      	mov	r3, r8
    848c:	681a      	ldr	r2, [r3, #0]
    848e:	4f4d      	ldr	r7, [pc, #308]	; (85c4 <rt_tsk_delete+0x17c>)
    8490:	6a14      	ldr	r4, [r2, #32]
    8492:	2c00      	cmp	r4, #0
    8494:	d023      	beq.n	84de <rt_tsk_delete+0x96>
    8496:	2601      	movs	r6, #1
    8498:	e016      	b.n	84c8 <rt_tsk_delete+0x80>
    849a:	0020      	movs	r0, r4
    849c:	f7ff faae 	bl	79fc <rt_get_first>
    84a0:	0005      	movs	r5, r0
    84a2:	2100      	movs	r1, #0
    84a4:	f7fe fe78 	bl	7198 <rt_ret_val>
    84a8:	0028      	movs	r0, r5
    84aa:	f7ff fbdf 	bl	7c6c <rt_rmv_dly>
    84ae:	706e      	strb	r6, [r5, #1]
    84b0:	0029      	movs	r1, r5
    84b2:	0038      	movs	r0, r7
    84b4:	f7ff fa7c 	bl	79b0 <rt_put_prio>
    84b8:	68e3      	ldr	r3, [r4, #12]
    84ba:	6a2a      	ldr	r2, [r5, #32]
    84bc:	8066      	strh	r6, [r4, #2]
    84be:	60a5      	str	r5, [r4, #8]
    84c0:	60e2      	str	r2, [r4, #12]
    84c2:	622c      	str	r4, [r5, #32]
    84c4:	1e1c      	subs	r4, r3, #0
    84c6:	d008      	beq.n	84da <rt_tsk_delete+0x92>
    84c8:	6863      	ldr	r3, [r4, #4]
    84ca:	2b00      	cmp	r3, #0
    84cc:	d1e5      	bne.n	849a <rt_tsk_delete+0x52>
    84ce:	68e2      	ldr	r2, [r4, #12]
    84d0:	8063      	strh	r3, [r4, #2]
    84d2:	60a3      	str	r3, [r4, #8]
    84d4:	60e3      	str	r3, [r4, #12]
    84d6:	1e14      	subs	r4, r2, #0
    84d8:	d1f6      	bne.n	84c8 <rt_tsk_delete+0x80>
    84da:	4643      	mov	r3, r8
    84dc:	681a      	ldr	r2, [r3, #0]
    84de:	2400      	movs	r4, #0
    84e0:	78d3      	ldrb	r3, [r2, #3]
    84e2:	4939      	ldr	r1, [pc, #228]	; (85c8 <rt_tsk_delete+0x180>)
    84e4:	3b01      	subs	r3, #1
    84e6:	009b      	lsls	r3, r3, #2
    84e8:	505c      	str	r4, [r3, r1]
    84ea:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    84ec:	4837      	ldr	r0, [pc, #220]	; (85cc <rt_tsk_delete+0x184>)
    84ee:	f7fe fef5 	bl	72dc <rt_free_box>
    84f2:	4643      	mov	r3, r8
    84f4:	6819      	ldr	r1, [r3, #0]
    84f6:	4836      	ldr	r0, [pc, #216]	; (85d0 <rt_tsk_delete+0x188>)
    84f8:	62cc      	str	r4, [r1, #44]	; 0x2c
    84fa:	f7fe feef 	bl	72dc <rt_free_box>
    84fe:	4643      	mov	r3, r8
    8500:	601c      	str	r4, [r3, #0]
    8502:	0038      	movs	r0, r7
    8504:	f7ff fa7a 	bl	79fc <rt_get_first>
    8508:	4643      	mov	r3, r8
    850a:	6058      	str	r0, [r3, #4]
    850c:	2302      	movs	r3, #2
    850e:	7043      	strb	r3, [r0, #1]
    8510:	2300      	movs	r3, #0
    8512:	e7ac      	b.n	846e <rt_tsk_delete+0x26>
    8514:	4a2c      	ldr	r2, [pc, #176]	; (85c8 <rt_tsk_delete+0x180>)
    8516:	1e46      	subs	r6, r0, #1
    8518:	4692      	mov	sl, r2
    851a:	00b2      	lsls	r2, r6, #2
    851c:	4693      	mov	fp, r2
    851e:	4652      	mov	r2, sl
    8520:	4659      	mov	r1, fp
    8522:	5856      	ldr	r6, [r2, r1]
    8524:	2e00      	cmp	r6, #0
    8526:	d0a2      	beq.n	846e <rt_tsk_delete+0x26>
    8528:	0030      	movs	r0, r6
    852a:	f7ff fb89 	bl	7c40 <rt_rmv_list>
    852e:	0030      	movs	r0, r6
    8530:	f7ff fb9c 	bl	7c6c <rt_rmv_dly>
    8534:	2301      	movs	r3, #1
    8536:	6a34      	ldr	r4, [r6, #32]
    8538:	4f22      	ldr	r7, [pc, #136]	; (85c4 <rt_tsk_delete+0x17c>)
    853a:	4699      	mov	r9, r3
    853c:	2c00      	cmp	r4, #0
    853e:	d11a      	bne.n	8576 <rt_tsk_delete+0x12e>
    8540:	e022      	b.n	8588 <rt_tsk_delete+0x140>
    8542:	0020      	movs	r0, r4
    8544:	f7ff fa5a 	bl	79fc <rt_get_first>
    8548:	0005      	movs	r5, r0
    854a:	2100      	movs	r1, #0
    854c:	f7fe fe24 	bl	7198 <rt_ret_val>
    8550:	0028      	movs	r0, r5
    8552:	f7ff fb8b 	bl	7c6c <rt_rmv_dly>
    8556:	464b      	mov	r3, r9
    8558:	0029      	movs	r1, r5
    855a:	706b      	strb	r3, [r5, #1]
    855c:	0038      	movs	r0, r7
    855e:	f7ff fa27 	bl	79b0 <rt_put_prio>
    8562:	464a      	mov	r2, r9
    8564:	68e3      	ldr	r3, [r4, #12]
    8566:	8062      	strh	r2, [r4, #2]
    8568:	6a2a      	ldr	r2, [r5, #32]
    856a:	60a5      	str	r5, [r4, #8]
    856c:	60e2      	str	r2, [r4, #12]
    856e:	622c      	str	r4, [r5, #32]
    8570:	001c      	movs	r4, r3
    8572:	2c00      	cmp	r4, #0
    8574:	d008      	beq.n	8588 <rt_tsk_delete+0x140>
    8576:	6863      	ldr	r3, [r4, #4]
    8578:	2b00      	cmp	r3, #0
    857a:	d1e2      	bne.n	8542 <rt_tsk_delete+0xfa>
    857c:	68e2      	ldr	r2, [r4, #12]
    857e:	8063      	strh	r3, [r4, #2]
    8580:	60a3      	str	r3, [r4, #8]
    8582:	60e3      	str	r3, [r4, #12]
    8584:	0014      	movs	r4, r2
    8586:	e7f4      	b.n	8572 <rt_tsk_delete+0x12a>
    8588:	4653      	mov	r3, sl
    858a:	465a      	mov	r2, fp
    858c:	2400      	movs	r4, #0
    858e:	509c      	str	r4, [r3, r2]
    8590:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    8592:	480e      	ldr	r0, [pc, #56]	; (85cc <rt_tsk_delete+0x184>)
    8594:	f7fe fea2 	bl	72dc <rt_free_box>
    8598:	0031      	movs	r1, r6
    859a:	62f4      	str	r4, [r6, #44]	; 0x2c
    859c:	480c      	ldr	r0, [pc, #48]	; (85d0 <rt_tsk_delete+0x188>)
    859e:	f7fe fe9d 	bl	72dc <rt_free_box>
    85a2:	4643      	mov	r3, r8
    85a4:	6819      	ldr	r1, [r3, #0]
    85a6:	687b      	ldr	r3, [r7, #4]
    85a8:	789a      	ldrb	r2, [r3, #2]
    85aa:	788b      	ldrb	r3, [r1, #2]
    85ac:	429a      	cmp	r2, r3
    85ae:	d9af      	bls.n	8510 <rt_tsk_delete+0xc8>
    85b0:	2301      	movs	r3, #1
    85b2:	0038      	movs	r0, r7
    85b4:	704b      	strb	r3, [r1, #1]
    85b6:	f7ff f9fb 	bl	79b0 <rt_put_prio>
    85ba:	e7a2      	b.n	8502 <rt_tsk_delete+0xba>
    85bc:	200060b4 	.word	0x200060b4
    85c0:	000088a4 	.word	0x000088a4
    85c4:	20006080 	.word	0x20006080
    85c8:	20004cdc 	.word	0x20004cdc
    85cc:	200009e8 	.word	0x200009e8
    85d0:	20000908 	.word	0x20000908

000085d4 <rt_sys_init>:
    85d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    85d6:	4b2b      	ldr	r3, [pc, #172]	; (8684 <rt_sys_init+0xb0>)
    85d8:	881a      	ldrh	r2, [r3, #0]
    85da:	2a00      	cmp	r2, #0
    85dc:	d004      	beq.n	85e8 <rt_sys_init+0x14>
    85de:	0092      	lsls	r2, r2, #2
    85e0:	2100      	movs	r1, #0
    85e2:	4829      	ldr	r0, [pc, #164]	; (8688 <rt_sys_init+0xb4>)
    85e4:	f7fc fbd8 	bl	4d98 <memset>
    85e8:	4b28      	ldr	r3, [pc, #160]	; (868c <rt_sys_init+0xb8>)
    85ea:	2234      	movs	r2, #52	; 0x34
    85ec:	8819      	ldrh	r1, [r3, #0]
    85ee:	4828      	ldr	r0, [pc, #160]	; (8690 <rt_sys_init+0xbc>)
    85f0:	f7fe fe28 	bl	7244 <_init_box>
    85f4:	2280      	movs	r2, #128	; 0x80
    85f6:	4b27      	ldr	r3, [pc, #156]	; (8694 <rt_sys_init+0xc0>)
    85f8:	0612      	lsls	r2, r2, #24
    85fa:	881b      	ldrh	r3, [r3, #0]
    85fc:	4f26      	ldr	r7, [pc, #152]	; (8698 <rt_sys_init+0xc4>)
    85fe:	431a      	orrs	r2, r3
    8600:	4b26      	ldr	r3, [pc, #152]	; (869c <rt_sys_init+0xc8>)
    8602:	0038      	movs	r0, r7
    8604:	6819      	ldr	r1, [r3, #0]
    8606:	f7fe fe1d 	bl	7244 <_init_box>
    860a:	4b25      	ldr	r3, [pc, #148]	; (86a0 <rt_sys_init+0xcc>)
    860c:	2208      	movs	r2, #8
    860e:	6818      	ldr	r0, [r3, #0]
    8610:	4b24      	ldr	r3, [pc, #144]	; (86a4 <rt_sys_init+0xd0>)
    8612:	2600      	movs	r6, #0
    8614:	8819      	ldrh	r1, [r3, #0]
    8616:	f7fe fe15 	bl	7244 <_init_box>
    861a:	23ff      	movs	r3, #255	; 0xff
    861c:	2500      	movs	r5, #0
    861e:	4c22      	ldr	r4, [pc, #136]	; (86a8 <rt_sys_init+0xd4>)
    8620:	0038      	movs	r0, r7
    8622:	70e3      	strb	r3, [r4, #3]
    8624:	3bfe      	subs	r3, #254	; 0xfe
    8626:	7063      	strb	r3, [r4, #1]
    8628:	3323      	adds	r3, #35	; 0x23
    862a:	54e6      	strb	r6, [r4, r3]
    862c:	3301      	adds	r3, #1
    862e:	54e6      	strb	r6, [r4, r3]
    8630:	84e5      	strh	r5, [r4, #38]	; 0x26
    8632:	7026      	strb	r6, [r4, #0]
    8634:	70a6      	strb	r6, [r4, #2]
    8636:	6065      	str	r5, [r4, #4]
    8638:	60a5      	str	r5, [r4, #8]
    863a:	60e5      	str	r5, [r4, #12]
    863c:	6125      	str	r5, [r4, #16]
    863e:	6225      	str	r5, [r4, #32]
    8640:	82a5      	strh	r5, [r4, #20]
    8642:	82e5      	strh	r5, [r4, #22]
    8644:	8325      	strh	r5, [r4, #24]
    8646:	8365      	strh	r5, [r4, #26]
    8648:	f7fe fe28 	bl	729c <rt_alloc_box>
    864c:	4917      	ldr	r1, [pc, #92]	; (86ac <rt_sys_init+0xd8>)
    864e:	62e0      	str	r0, [r4, #44]	; 0x2c
    8650:	0020      	movs	r0, r4
    8652:	f7fe fd49 	bl	70e8 <rt_init_stack>
    8656:	2204      	movs	r2, #4
    8658:	4b15      	ldr	r3, [pc, #84]	; (86b0 <rt_sys_init+0xdc>)
    865a:	701a      	strb	r2, [r3, #0]
    865c:	605d      	str	r5, [r3, #4]
    865e:	4b15      	ldr	r3, [pc, #84]	; (86b4 <rt_sys_init+0xe0>)
    8660:	701a      	strb	r2, [r3, #0]
    8662:	60dd      	str	r5, [r3, #12]
    8664:	611d      	str	r5, [r3, #16]
    8666:	829d      	strh	r5, [r3, #20]
    8668:	4b13      	ldr	r3, [pc, #76]	; (86b8 <rt_sys_init+0xe4>)
    866a:	4a14      	ldr	r2, [pc, #80]	; (86bc <rt_sys_init+0xe8>)
    866c:	601c      	str	r4, [r3, #0]
    866e:	2302      	movs	r3, #2
    8670:	7812      	ldrb	r2, [r2, #0]
    8672:	7063      	strb	r3, [r4, #1]
    8674:	4b12      	ldr	r3, [pc, #72]	; (86c0 <rt_sys_init+0xec>)
    8676:	701e      	strb	r6, [r3, #0]
    8678:	705e      	strb	r6, [r3, #1]
    867a:	70da      	strb	r2, [r3, #3]
    867c:	f000 f85a 	bl	8734 <rt_init_robin>
    8680:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8682:	46c0      	nop			; (mov r8, r8)
    8684:	000088a4 	.word	0x000088a4
    8688:	20004cdc 	.word	0x20004cdc
    868c:	000088d0 	.word	0x000088d0
    8690:	20000908 	.word	0x20000908
    8694:	000088a8 	.word	0x000088a8
    8698:	200009e8 	.word	0x200009e8
    869c:	000088d4 	.word	0x000088d4
    86a0:	20004d18 	.word	0x20004d18
    86a4:	000088f8 	.word	0x000088f8
    86a8:	200060bc 	.word	0x200060bc
    86ac:	00001935 	.word	0x00001935
    86b0:	20006080 	.word	0x20006080
    86b4:	20006098 	.word	0x20006098
    86b8:	200060b4 	.word	0x200060b4
    86bc:	000088dc 	.word	0x000088dc
    86c0:	20004c58 	.word	0x20004c58

000086c4 <rt_sys_start>:
    86c4:	21ff      	movs	r1, #255	; 0xff
    86c6:	4b16      	ldr	r3, [pc, #88]	; (8720 <rt_sys_start+0x5c>)
    86c8:	0409      	lsls	r1, r1, #16
    86ca:	681a      	ldr	r2, [r3, #0]
    86cc:	b510      	push	{r4, lr}
    86ce:	430a      	orrs	r2, r1
    86d0:	601a      	str	r2, [r3, #0]
    86d2:	681b      	ldr	r3, [r3, #0]
    86d4:	4913      	ldr	r1, [pc, #76]	; (8724 <rt_sys_start+0x60>)
    86d6:	025b      	lsls	r3, r3, #9
    86d8:	680a      	ldr	r2, [r1, #0]
    86da:	0e9b      	lsrs	r3, r3, #26
    86dc:	069b      	lsls	r3, r3, #26
    86de:	4313      	orrs	r3, r2
    86e0:	600b      	str	r3, [r1, #0]
    86e2:	f7ff fd0d 	bl	8100 <os_tick_init>
    86e6:	4c10      	ldr	r4, [pc, #64]	; (8728 <rt_sys_start+0x64>)
    86e8:	6020      	str	r0, [r4, #0]
    86ea:	2800      	cmp	r0, #0
    86ec:	db17      	blt.n	871e <rt_sys_start+0x5a>
    86ee:	4a0f      	ldr	r2, [pc, #60]	; (872c <rt_sys_start+0x68>)
    86f0:	0883      	lsrs	r3, r0, #2
    86f2:	4694      	mov	ip, r2
    86f4:	2218      	movs	r2, #24
    86f6:	00c0      	lsls	r0, r0, #3
    86f8:	4010      	ands	r0, r2
    86fa:	32e7      	adds	r2, #231	; 0xe7
    86fc:	4082      	lsls	r2, r0
    86fe:	009b      	lsls	r3, r3, #2
    8700:	4463      	add	r3, ip
    8702:	6819      	ldr	r1, [r3, #0]
    8704:	430a      	orrs	r2, r1
    8706:	490a      	ldr	r1, [pc, #40]	; (8730 <rt_sys_start+0x6c>)
    8708:	601a      	str	r2, [r3, #0]
    870a:	468c      	mov	ip, r1
    870c:	211f      	movs	r1, #31
    870e:	6822      	ldr	r2, [r4, #0]
    8710:	0953      	lsrs	r3, r2, #5
    8712:	400a      	ands	r2, r1
    8714:	391e      	subs	r1, #30
    8716:	4091      	lsls	r1, r2
    8718:	009b      	lsls	r3, r3, #2
    871a:	4463      	add	r3, ip
    871c:	6019      	str	r1, [r3, #0]
    871e:	bd10      	pop	{r4, pc}
    8720:	e000ed20 	.word	0xe000ed20
    8724:	e000ed1c 	.word	0xe000ed1c
    8728:	200060b0 	.word	0x200060b0
    872c:	e000e400 	.word	0xe000e400
    8730:	e000e100 	.word	0xe000e100

00008734 <rt_init_robin>:
    8734:	2200      	movs	r2, #0
    8736:	4b03      	ldr	r3, [pc, #12]	; (8744 <rt_init_robin+0x10>)
    8738:	601a      	str	r2, [r3, #0]
    873a:	4a03      	ldr	r2, [pc, #12]	; (8748 <rt_init_robin+0x14>)
    873c:	6812      	ldr	r2, [r2, #0]
    873e:	80da      	strh	r2, [r3, #6]
    8740:	4770      	bx	lr
    8742:	46c0      	nop			; (mov r8, r8)
    8744:	200060f0 	.word	0x200060f0
    8748:	000088ac 	.word	0x000088ac

0000874c <rt_chk_robin>:
    874c:	b510      	push	{r4, lr}
    874e:	4a0f      	ldr	r2, [pc, #60]	; (878c <rt_chk_robin+0x40>)
    8750:	4c0f      	ldr	r4, [pc, #60]	; (8790 <rt_chk_robin+0x44>)
    8752:	6811      	ldr	r1, [r2, #0]
    8754:	6863      	ldr	r3, [r4, #4]
    8756:	4299      	cmp	r1, r3
    8758:	d014      	beq.n	8784 <rt_chk_robin+0x38>
    875a:	6013      	str	r3, [r2, #0]
    875c:	4b0d      	ldr	r3, [pc, #52]	; (8794 <rt_chk_robin+0x48>)
    875e:	8819      	ldrh	r1, [r3, #0]
    8760:	88d3      	ldrh	r3, [r2, #6]
    8762:	3b01      	subs	r3, #1
    8764:	18cb      	adds	r3, r1, r3
    8766:	b29b      	uxth	r3, r3
    8768:	8093      	strh	r3, [r2, #4]
    876a:	4299      	cmp	r1, r3
    876c:	d000      	beq.n	8770 <rt_chk_robin+0x24>
    876e:	bd10      	pop	{r4, pc}
    8770:	2300      	movs	r3, #0
    8772:	0020      	movs	r0, r4
    8774:	6013      	str	r3, [r2, #0]
    8776:	f7ff f941 	bl	79fc <rt_get_first>
    877a:	0001      	movs	r1, r0
    877c:	0020      	movs	r0, r4
    877e:	f7ff f917 	bl	79b0 <rt_put_prio>
    8782:	e7f4      	b.n	876e <rt_chk_robin+0x22>
    8784:	4b03      	ldr	r3, [pc, #12]	; (8794 <rt_chk_robin+0x48>)
    8786:	8819      	ldrh	r1, [r3, #0]
    8788:	8893      	ldrh	r3, [r2, #4]
    878a:	e7ee      	b.n	876a <rt_chk_robin+0x1e>
    878c:	200060f0 	.word	0x200060f0
    8790:	20006080 	.word	0x20006080
    8794:	2000607c 	.word	0x2000607c

00008798 <__eeprom_erase_page_veneer>:
    8798:	b401      	push	{r0}
    879a:	4802      	ldr	r0, [pc, #8]	; (87a4 <__eeprom_erase_page_veneer+0xc>)
    879c:	4684      	mov	ip, r0
    879e:	bc01      	pop	{r0}
    87a0:	4760      	bx	ip
    87a2:	bf00      	nop
    87a4:	2010002d 	.word	0x2010002d

000087a8 <__eeprom_read_word_veneer>:
    87a8:	b401      	push	{r0}
    87aa:	4802      	ldr	r0, [pc, #8]	; (87b4 <__eeprom_read_word_veneer+0xc>)
    87ac:	4684      	mov	ip, r0
    87ae:	bc01      	pop	{r0}
    87b0:	4760      	bx	ip
    87b2:	bf00      	nop
    87b4:	20100229 	.word	0x20100229

000087b8 <__eeprom_program_word_veneer>:
    87b8:	b401      	push	{r0}
    87ba:	4802      	ldr	r0, [pc, #8]	; (87c4 <__eeprom_program_word_veneer+0xc>)
    87bc:	4684      	mov	ip, r0
    87be:	bc01      	pop	{r0}
    87c0:	4760      	bx	ip
    87c2:	bf00      	nop
    87c4:	20100151 	.word	0x20100151

000087c8 <threadPacketParserDef>:
    87c8:	00002f6d 00000001 00000001 00000400     m/..............

000087d8 <threadFSMProceedDef>:
    87d8:	00000415 00000000 00000001 00000400     ................

000087e8 <threadDUTProceedDef>:
    87e8:	000002dd 00000000 00000001 00000400     ................

000087f8 <message_def>:
    87f8:	00000004 20000868                       ....h.. 

00008800 <os_mutex_def_MutexMdbReg>:
    8800:	2000088c 74697865 00000000 70616548     ... exit....Heap
    8810:	646e6120 61747320 63206b63 696c6c6f      and stack colli
    8820:	6e6f6973 0000000a 00001356 00001344     sion....V...D...
    8830:	00001362 0000136e 0000136e 0000136e     b...n...n...n...
    8840:	0000136e 0000136e 0000136e 0000136e     n...n...n...n...
    8850:	0000136e 0000136e 0000136e 0000135c     n...n...n...\...
    8860:	0000136e 0000136e 0000136e 000012e8     n...n...n.......
    8870:	0000136e 00001362 0000136e 0000136e     n...b...n...n...
    8880:	00001368 6c383025 00002058 32302520     h...%08lX .. %02
    8890:	00000058 34302520 00000058 38302520     X... %04X... %08
    88a0:	0000584c                                LX..

000088a4 <os_maxtaskrun>:
    88a4:	00000004                                ....

000088a8 <os_stackinfo>:
    88a8:	01021000                                ....

000088ac <os_rrobin>:
    88ac:	00010005                                ....

000088b0 <os_tickfreq>:
    88b0:	04c4b400                                ....

000088b4 <os_tickus_i>:
    88b4:	00000050                                         P.

000088b6 <os_tickus_f>:
	...

000088b8 <os_trv>:
    88b8:	0001387f                                .8..

000088bc <os_flags>:
    88bc:	00000001                                ....

000088c0 <CMSIS_RTOS_API_Version>:
    88c0:	00010002                                ....

000088c4 <CMSIS_RTOS_RTX_Version>:
    88c4:	00040052                                R...

000088c8 <os_clockrate>:
    88c8:	000003e8                                ....

000088cc <os_timernum>:
    88cc:	00000000                                ....

000088d0 <mp_tcb_size>:
    88d0:	000000dc                                ....

000088d4 <mp_stk_size>:
    88d4:	00003010                                .0..

000088d8 <os_stack_sz>:
    88d8:	00001260                                `...

000088dc <os_fifo_size>:
    88dc:	00000010                                ....

000088e0 <os_thread_def_osTimerThread>:
    88e0:	00006351 00000002 00000001 00000200     Qc..............

000088f0 <os_messageQ_def_osTimerMessageQ>:
    88f0:	00000004 20004cf0                       .....L. 

000088f8 <mp_tmr_size>:
    88f8:	00000000                                ....

000088fc <os_thread_def_main>:
    88fc:	000001a5 00000000 00000001 00000040     ............@...

0000890c <os_mutex_def_readpackMutex>:
    890c:	2000531c                                .S. 

00008910 <os_mutex_def_sendpackMutex>:
    8910:	20005330                                0S. 

00008914 <crc_table>:
    8914:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    8924:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    8934:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    8944:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    8954:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    8964:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    8974:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    8984:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    8994:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    89a4:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    89b4:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    89c4:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    89d4:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    89e4:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    89f4:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    8a04:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    8a14:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    8a24:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    8a34:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    8a44:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    8a54:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    8a64:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    8a74:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    8a84:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    8a94:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    8aa4:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    8ab4:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    8ac4:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    8ad4:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    8ae4:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    8af4:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    8b04:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    8b14:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    8b24:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    8b34:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    8b44:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    8b54:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    8b64:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    8b74:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    8b84:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    8b94:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    8ba4:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    8bb4:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    8bc4:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    8bd4:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    8be4:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    8bf4:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    8c04:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    8c14:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    8c24:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    8c34:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    8c44:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    8c54:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    8c64:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    8c74:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    8c84:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    8c94:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    8ca4:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    8cb4:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    8cc4:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    8cd4:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    8ce4:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    8cf4:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    8d04:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

00008d14 <crc_table_low>:
    8d14:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8d24:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8d34:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8d44:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8d54:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8d64:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8d74:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8d84:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8d94:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8da4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8db4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8dc4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8dd4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8de4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8df4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8e04:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

00008e14 <crc_table_high>:
    8e14:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    8e24:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    8e34:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    8e44:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    8e54:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    8e64:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    8e74:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    8e84:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    8e94:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    8ea4:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    8eb4:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    8ec4:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    8ed4:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    8ee4:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    8ef4:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    8f04:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

00008f14 <defBsiParam>:
    8f14:	56789abc 00011234 00020a00 00000a00     ..xV4...........
    8f24:	00000000                                ....

00008f28 <device_additional_info>:
    8f28:	31554153 6e6f6320 6f727472 72656c6c     SAU1 conrtroller
    8f38:	00000000                                ....

00008f3c <proc_PDU_table>:
    8f3c:	00003f05 00003f05 00003f05 00003dc9     .?...?...?...=..
    8f4c:	00003875 00003f05 00003f05 00003f05     u8...?...?...?..
    8f5c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8f6c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8f7c:	000039c5 000037dd 00003f05 00003f05     .9...7...?...?..
    8f8c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8f9c:	00003bc9 00003f05 00003f05 00003f05     .;...?...?...?..
    8fac:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8fbc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8fcc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8fdc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8fec:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8ffc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    900c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    901c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    902c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    903c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    904c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    905c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    906c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    907c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    908c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    909c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90ac:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90bc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90cc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90dc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90ec:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90fc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    910c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    911c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    912c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    913c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    914c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    915c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    916c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    917c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    918c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    919c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91ac:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91bc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91cc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91dc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91ec:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91fc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    920c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    921c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    922c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    923c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    924c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    925c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    926c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    927c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    928c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    929c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92ac:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92bc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92cc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92dc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92ec:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92fc:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    930c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    931c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    932c:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..

0000933c <_global_impure_ptr>:
    933c:	20000018                                ... 

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
