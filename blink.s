
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 61 04 00 00 f1 04 00 00 f1 04 00 00     ... a...........
	...
      2c:	b7 44 00 00 00 00 00 00 00 00 00 00 3d 45 00 00     .D..........=E..
      3c:	85 45 00 00 f1 04 00 00 f1 04 00 00 f1 04 00 00     .E..............
      4c:	f1 04 00 00 f1 04 00 00 f1 04 00 00 8d 10 00 00     ................
      5c:	1d 0a 00 00 f1 04 00 00 f1 04 00 00 f1 04 00 00     ................
      6c:	f1 04 00 00 f1 04 00 00 f1 04 00 00 55 02 00 00     ............U...
      7c:	79 02 00 00 f1 04 00 00 f1 04 00 00 3d 25 00 00     y...........=%..
      8c:	f1 04 00 00 f1 04 00 00 f1 04 00 00 f1 04 00 00     ................
      9c:	f1 04 00 00 f1 04 00 00 00 00 00 00 00 00 00 00     ................
      ac:	f1 04 00 00 cd 02 00 00 f1 04 00 00 f1 04 00 00     ................
      bc:	f1 04 00 00                                         ....

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

00000138 <dut_start>:
     138:	b580      	push	{r7, lr}
     13a:	af00      	add	r7, sp, #0
     13c:	4b06      	ldr	r3, [pc, #24]	; (158 <dut_start+0x20>)
     13e:	4a06      	ldr	r2, [pc, #24]	; (158 <dut_start+0x20>)
     140:	68d2      	ldr	r2, [r2, #12]
     142:	2101      	movs	r1, #1
     144:	430a      	orrs	r2, r1
     146:	60da      	str	r2, [r3, #12]
     148:	4b04      	ldr	r3, [pc, #16]	; (15c <dut_start+0x24>)
     14a:	2280      	movs	r2, #128	; 0x80
     14c:	0112      	lsls	r2, r2, #4
     14e:	625a      	str	r2, [r3, #36]	; 0x24
     150:	46c0      	nop			; (mov r8, r8)
     152:	46bd      	mov	sp, r7
     154:	bd80      	pop	{r7, pc}
     156:	46c0      	nop			; (mov r8, r8)
     158:	40078000 	.word	0x40078000
     15c:	400b0000 	.word	0x400b0000

00000160 <dut_stop>:
     160:	b580      	push	{r7, lr}
     162:	af00      	add	r7, sp, #0
     164:	4b06      	ldr	r3, [pc, #24]	; (180 <dut_stop+0x20>)
     166:	4a06      	ldr	r2, [pc, #24]	; (180 <dut_stop+0x20>)
     168:	68d2      	ldr	r2, [r2, #12]
     16a:	2101      	movs	r1, #1
     16c:	438a      	bics	r2, r1
     16e:	60da      	str	r2, [r3, #12]
     170:	4b04      	ldr	r3, [pc, #16]	; (184 <dut_stop+0x24>)
     172:	2280      	movs	r2, #128	; 0x80
     174:	0112      	lsls	r2, r2, #4
     176:	621a      	str	r2, [r3, #32]
     178:	46c0      	nop			; (mov r8, r8)
     17a:	46bd      	mov	sp, r7
     17c:	bd80      	pop	{r7, pc}
     17e:	46c0      	nop			; (mov r8, r8)
     180:	40078000 	.word	0x40078000
     184:	400b0000 	.word	0x400b0000

00000188 <dut_set_speed>:
     188:	b580      	push	{r7, lr}
     18a:	b082      	sub	sp, #8
     18c:	af00      	add	r7, sp, #0
     18e:	6078      	str	r0, [r7, #4]
     190:	687b      	ldr	r3, [r7, #4]
     192:	121b      	asrs	r3, r3, #8
     194:	001a      	movs	r2, r3
     196:	4b03      	ldr	r3, [pc, #12]	; (1a4 <dut_set_speed+0x1c>)
     198:	601a      	str	r2, [r3, #0]
     19a:	46c0      	nop			; (mov r8, r8)
     19c:	46bd      	mov	sp, r7
     19e:	b002      	add	sp, #8
     1a0:	bd80      	pop	{r7, pc}
     1a2:	46c0      	nop			; (mov r8, r8)
     1a4:	2000089c 	.word	0x2000089c

000001a8 <dut_set_torque>:
     1a8:	b580      	push	{r7, lr}
     1aa:	b082      	sub	sp, #8
     1ac:	af00      	add	r7, sp, #0
     1ae:	6078      	str	r0, [r7, #4]
     1b0:	46c0      	nop			; (mov r8, r8)
     1b2:	46bd      	mov	sp, r7
     1b4:	b002      	add	sp, #8
     1b6:	bd80      	pop	{r7, pc}

000001b8 <main>:
     1b8:	b580      	push	{r7, lr}
     1ba:	af00      	add	r7, sp, #0
     1bc:	f001 fe1a 	bl	1df4 <SystemInit>
     1c0:	f000 f9d4 	bl	56c <mdb485_init>
     1c4:	f000 fdee 	bl	da4 <mdb232_init>
     1c8:	f001 fe48 	bl	1e5c <RemoteMacInit>
     1cc:	f001 fef6 	bl	1fbc <EthernetConfig>
     1d0:	f7ff ffc6 	bl	160 <dut_stop>
     1d4:	4b15      	ldr	r3, [pc, #84]	; (22c <__GCC_VERSION+0xf>)
     1d6:	0018      	movs	r0, r3
     1d8:	f005 ffe2 	bl	61a0 <osMutexCreate>
     1dc:	0002      	movs	r2, r0
     1de:	4b14      	ldr	r3, [pc, #80]	; (230 <__GCC_VERSION+0x13>)
     1e0:	601a      	str	r2, [r3, #0]
     1e2:	f005 f9dd 	bl	55a0 <osKernelInitialize>
     1e6:	4b13      	ldr	r3, [pc, #76]	; (234 <__GCC_VERSION+0x17>)
     1e8:	2100      	movs	r1, #0
     1ea:	0018      	movs	r0, r3
     1ec:	f006 faba 	bl	6764 <osMessageCreate>
     1f0:	0002      	movs	r2, r0
     1f2:	4b11      	ldr	r3, [pc, #68]	; (238 <__GCC_VERSION+0x1b>)
     1f4:	601a      	str	r2, [r3, #0]
     1f6:	4b11      	ldr	r3, [pc, #68]	; (23c <__GCC_VERSION+0x1f>)
     1f8:	2100      	movs	r1, #0
     1fa:	0018      	movs	r0, r3
     1fc:	f005 fb62 	bl	58c4 <osThreadCreate>
     200:	0002      	movs	r2, r0
     202:	4b0f      	ldr	r3, [pc, #60]	; (240 <__GCC_VERSION+0x23>)
     204:	601a      	str	r2, [r3, #0]
     206:	4b0f      	ldr	r3, [pc, #60]	; (244 <__GCC_VERSION+0x27>)
     208:	2100      	movs	r1, #0
     20a:	0018      	movs	r0, r3
     20c:	f005 fb5a 	bl	58c4 <osThreadCreate>
     210:	0002      	movs	r2, r0
     212:	4b0d      	ldr	r3, [pc, #52]	; (248 <__GCC_VERSION+0x2b>)
     214:	601a      	str	r2, [r3, #0]
     216:	4b0d      	ldr	r3, [pc, #52]	; (24c <__GCC_VERSION+0x2f>)
     218:	2100      	movs	r1, #0
     21a:	0018      	movs	r0, r3
     21c:	f005 fb52 	bl	58c4 <osThreadCreate>
     220:	0002      	movs	r2, r0
     222:	4b0b      	ldr	r3, [pc, #44]	; (250 <__GCC_VERSION+0x33>)
     224:	601a      	str	r2, [r3, #0]
     226:	f005 fa57 	bl	56d8 <osKernelStart>
     22a:	e7fe      	b.n	22a <__GCC_VERSION+0xd>
     22c:	00008330 	.word	0x00008330
     230:	20000888 	.word	0x20000888
     234:	00008328 	.word	0x00008328
     238:	20000864 	.word	0x20000864
     23c:	000082f8 	.word	0x000082f8
     240:	20000858 	.word	0x20000858
     244:	00008308 	.word	0x00008308
     248:	2000085c 	.word	0x2000085c
     24c:	00008318 	.word	0x00008318
     250:	20000860 	.word	0x20000860

00000254 <TIMER1_Handler>:
     254:	b580      	push	{r7, lr}
     256:	af00      	add	r7, sp, #0
     258:	4b05      	ldr	r3, [pc, #20]	; (270 <TIMER1_Handler+0x1c>)
     25a:	2200      	movs	r2, #0
     25c:	655a      	str	r2, [r3, #84]	; 0x54
     25e:	4b05      	ldr	r3, [pc, #20]	; (274 <TIMER1_Handler+0x20>)
     260:	681b      	ldr	r3, [r3, #0]
     262:	2101      	movs	r1, #1
     264:	0018      	movs	r0, r3
     266:	f005 fedf 	bl	6028 <osSignalSet>
     26a:	46c0      	nop			; (mov r8, r8)
     26c:	46bd      	mov	sp, r7
     26e:	bd80      	pop	{r7, pc}
     270:	40070000 	.word	0x40070000
     274:	20000860 	.word	0x20000860

00000278 <TIMER2_Handler>:
     278:	b580      	push	{r7, lr}
     27a:	af00      	add	r7, sp, #0
     27c:	4b0e      	ldr	r3, [pc, #56]	; (2b8 <TIMER2_Handler+0x40>)
     27e:	2200      	movs	r2, #0
     280:	655a      	str	r2, [r3, #84]	; 0x54
     282:	4b0e      	ldr	r3, [pc, #56]	; (2bc <TIMER2_Handler+0x44>)
     284:	681a      	ldr	r2, [r3, #0]
     286:	4b0e      	ldr	r3, [pc, #56]	; (2c0 <TIMER2_Handler+0x48>)
     288:	681b      	ldr	r3, [r3, #0]
     28a:	18d3      	adds	r3, r2, r3
     28c:	041b      	lsls	r3, r3, #16
     28e:	0c1a      	lsrs	r2, r3, #16
     290:	4b0a      	ldr	r3, [pc, #40]	; (2bc <TIMER2_Handler+0x44>)
     292:	601a      	str	r2, [r3, #0]
     294:	4b09      	ldr	r3, [pc, #36]	; (2bc <TIMER2_Handler+0x44>)
     296:	681b      	ldr	r3, [r3, #0]
     298:	4a0a      	ldr	r2, [pc, #40]	; (2c4 <TIMER2_Handler+0x4c>)
     29a:	4293      	cmp	r3, r2
     29c:	d904      	bls.n	2a8 <TIMER2_Handler+0x30>
     29e:	4b0a      	ldr	r3, [pc, #40]	; (2c8 <TIMER2_Handler+0x50>)
     2a0:	2280      	movs	r2, #128	; 0x80
     2a2:	0152      	lsls	r2, r2, #5
     2a4:	621a      	str	r2, [r3, #32]
     2a6:	e003      	b.n	2b0 <TIMER2_Handler+0x38>
     2a8:	4b07      	ldr	r3, [pc, #28]	; (2c8 <TIMER2_Handler+0x50>)
     2aa:	2280      	movs	r2, #128	; 0x80
     2ac:	0152      	lsls	r2, r2, #5
     2ae:	625a      	str	r2, [r3, #36]	; 0x24
     2b0:	46c0      	nop			; (mov r8, r8)
     2b2:	46bd      	mov	sp, r7
     2b4:	bd80      	pop	{r7, pc}
     2b6:	46c0      	nop			; (mov r8, r8)
     2b8:	40078000 	.word	0x40078000
     2bc:	200008a0 	.word	0x200008a0
     2c0:	2000089c 	.word	0x2000089c
     2c4:	00007530 	.word	0x00007530
     2c8:	400b0000 	.word	0x400b0000

000002cc <EXT_INT1_Handler>:
     2cc:	b580      	push	{r7, lr}
     2ce:	af00      	add	r7, sp, #0
     2d0:	201c      	movs	r0, #28
     2d2:	f7ff ff15 	bl	100 <__NVIC_ClearPendingIRQ>
     2d6:	201c      	movs	r0, #28
     2d8:	f7ff fef2 	bl	c0 <__NVIC_DisableIRQ>
     2dc:	4b03      	ldr	r3, [pc, #12]	; (2ec <EXT_INT1_Handler+0x20>)
     2de:	681b      	ldr	r3, [r3, #0]
     2e0:	1c5a      	adds	r2, r3, #1
     2e2:	4b02      	ldr	r3, [pc, #8]	; (2ec <EXT_INT1_Handler+0x20>)
     2e4:	601a      	str	r2, [r3, #0]
     2e6:	46c0      	nop			; (mov r8, r8)
     2e8:	46bd      	mov	sp, r7
     2ea:	bd80      	pop	{r7, pc}
     2ec:	200008a4 	.word	0x200008a4

000002f0 <threadDUTProceed>:
     2f0:	b580      	push	{r7, lr}
     2f2:	b092      	sub	sp, #72	; 0x48
     2f4:	af00      	add	r7, sp, #0
     2f6:	6078      	str	r0, [r7, #4]
     2f8:	2300      	movs	r3, #0
     2fa:	647b      	str	r3, [r7, #68]	; 0x44
     2fc:	2318      	movs	r3, #24
     2fe:	18fb      	adds	r3, r7, r3
     300:	2200      	movs	r2, #0
     302:	601a      	str	r2, [r3, #0]
     304:	2318      	movs	r3, #24
     306:	18fb      	adds	r3, r7, r3
     308:	2200      	movs	r2, #0
     30a:	605a      	str	r2, [r3, #4]
     30c:	2318      	movs	r3, #24
     30e:	18fb      	adds	r3, r7, r3
     310:	2200      	movs	r2, #0
     312:	609a      	str	r2, [r3, #8]
     314:	2318      	movs	r3, #24
     316:	18fb      	adds	r3, r7, r3
     318:	2200      	movs	r2, #0
     31a:	60da      	str	r2, [r3, #12]
     31c:	2318      	movs	r3, #24
     31e:	18fb      	adds	r3, r7, r3
     320:	2200      	movs	r2, #0
     322:	611a      	str	r2, [r3, #16]
     324:	2318      	movs	r3, #24
     326:	18fb      	adds	r3, r7, r3
     328:	2200      	movs	r2, #0
     32a:	615a      	str	r2, [r3, #20]
     32c:	2318      	movs	r3, #24
     32e:	18fb      	adds	r3, r7, r3
     330:	2200      	movs	r2, #0
     332:	619a      	str	r2, [r3, #24]
     334:	2318      	movs	r3, #24
     336:	18fb      	adds	r3, r7, r3
     338:	2200      	movs	r2, #0
     33a:	61da      	str	r2, [r3, #28]
     33c:	230c      	movs	r3, #12
     33e:	18f8      	adds	r0, r7, r3
     340:	2301      	movs	r3, #1
     342:	425b      	negs	r3, r3
     344:	001a      	movs	r2, r3
     346:	2100      	movs	r1, #0
     348:	f005 fe9c 	bl	6084 <osSignalWait>
     34c:	230c      	movs	r3, #12
     34e:	18fb      	adds	r3, r7, r3
     350:	681b      	ldr	r3, [r3, #0]
     352:	2b08      	cmp	r3, #8
     354:	d1f2      	bne.n	33c <threadDUTProceed+0x4c>
     356:	230c      	movs	r3, #12
     358:	18fb      	adds	r3, r7, r3
     35a:	685b      	ldr	r3, [r3, #4]
     35c:	2b02      	cmp	r3, #2
     35e:	d02a      	beq.n	3b6 <threadDUTProceed+0xc6>
     360:	2b08      	cmp	r3, #8
     362:	d034      	beq.n	3ce <threadDUTProceed+0xde>
     364:	2b01      	cmp	r3, #1
     366:	d156      	bne.n	416 <_stack_size+0x16>
     368:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     36a:	2b01      	cmp	r3, #1
     36c:	d916      	bls.n	39c <threadDUTProceed+0xac>
     36e:	4b2a      	ldr	r3, [pc, #168]	; (418 <_stack_size+0x18>)
     370:	681a      	ldr	r2, [r3, #0]
     372:	2318      	movs	r3, #24
     374:	18fb      	adds	r3, r7, r3
     376:	605a      	str	r2, [r3, #4]
     378:	f003 fe72 	bl	4060 <fsm_get_cyccnt>
     37c:	0002      	movs	r2, r0
     37e:	2318      	movs	r3, #24
     380:	18fb      	adds	r3, r7, r3
     382:	619a      	str	r2, [r3, #24]
     384:	2318      	movs	r3, #24
     386:	18fb      	adds	r3, r7, r3
     388:	2120      	movs	r1, #32
     38a:	0018      	movs	r0, r3
     38c:	f003 f8b6 	bl	34fc <mdb_fifo_write>
     390:	2318      	movs	r3, #24
     392:	18fb      	adds	r3, r7, r3
     394:	2200      	movs	r2, #0
     396:	61da      	str	r2, [r3, #28]
     398:	2300      	movs	r3, #0
     39a:	647b      	str	r3, [r7, #68]	; 0x44
     39c:	2301      	movs	r3, #1
     39e:	647b      	str	r3, [r7, #68]	; 0x44
     3a0:	2204      	movs	r2, #4
     3a2:	2100      	movs	r1, #0
     3a4:	2001      	movs	r0, #1
     3a6:	f000 fd57 	bl	e58 <mdb232_read_inputregs>
     3aa:	2202      	movs	r2, #2
     3ac:	2100      	movs	r1, #0
     3ae:	2010      	movs	r0, #16
     3b0:	f000 fa64 	bl	87c <mdb485_read_inputregs>
     3b4:	e02f      	b.n	416 <_stack_size+0x16>
     3b6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3b8:	2202      	movs	r2, #2
     3ba:	4313      	orrs	r3, r2
     3bc:	647b      	str	r3, [r7, #68]	; 0x44
     3be:	f000 fe0f 	bl	fe0 <mdb232_bikm_get_torque>
     3c2:	0003      	movs	r3, r0
     3c4:	001a      	movs	r2, r3
     3c6:	2318      	movs	r3, #24
     3c8:	18fb      	adds	r3, r7, r3
     3ca:	605a      	str	r2, [r3, #4]
     3cc:	e023      	b.n	416 <_stack_size+0x16>
     3ce:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3d0:	2204      	movs	r2, #4
     3d2:	4313      	orrs	r3, r2
     3d4:	647b      	str	r3, [r7, #68]	; 0x44
     3d6:	f000 fac7 	bl	968 <mdb485_get_crc>
     3da:	1e03      	subs	r3, r0, #0
     3dc:	d11a      	bne.n	414 <_stack_size+0x14>
     3de:	f000 faaf 	bl	940 <mdb485_get_func>
     3e2:	0003      	movs	r3, r0
     3e4:	643b      	str	r3, [r7, #64]	; 0x40
     3e6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     3e8:	2b04      	cmp	r3, #4
     3ea:	d113      	bne.n	414 <_stack_size+0x14>
     3ec:	f000 fada 	bl	9a4 <mdb485_si30_get_counter>
     3f0:	0003      	movs	r3, r0
     3f2:	63fb      	str	r3, [r7, #60]	; 0x3c
     3f4:	2318      	movs	r3, #24
     3f6:	18fb      	adds	r3, r7, r3
     3f8:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     3fa:	601a      	str	r2, [r3, #0]
     3fc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     3fe:	021b      	lsls	r3, r3, #8
     400:	2204      	movs	r2, #4
     402:	4313      	orrs	r3, r2
     404:	63bb      	str	r3, [r7, #56]	; 0x38
     406:	4b05      	ldr	r3, [pc, #20]	; (41c <_stack_size+0x1c>)
     408:	681b      	ldr	r3, [r3, #0]
     40a:	6bb9      	ldr	r1, [r7, #56]	; 0x38
     40c:	2200      	movs	r2, #0
     40e:	0018      	movs	r0, r3
     410:	f006 f9d4 	bl	67bc <osMessagePut>
     414:	46c0      	nop			; (mov r8, r8)
     416:	e791      	b.n	33c <threadDUTProceed+0x4c>
     418:	20005fe4 	.word	0x20005fe4
     41c:	20000864 	.word	0x20000864

00000420 <threadFSMProceed>:
     420:	b580      	push	{r7, lr}
     422:	b086      	sub	sp, #24
     424:	af00      	add	r7, sp, #0
     426:	6078      	str	r0, [r7, #4]
     428:	4b0b      	ldr	r3, [pc, #44]	; (458 <threadFSMProceed+0x38>)
     42a:	6819      	ldr	r1, [r3, #0]
     42c:	2308      	movs	r3, #8
     42e:	18f8      	adds	r0, r7, r3
     430:	2301      	movs	r3, #1
     432:	425b      	negs	r3, r3
     434:	001a      	movs	r2, r3
     436:	f006 f9e5 	bl	6804 <osMessageGet>
     43a:	2308      	movs	r3, #8
     43c:	18fb      	adds	r3, r7, r3
     43e:	681b      	ldr	r3, [r3, #0]
     440:	2b10      	cmp	r3, #16
     442:	d1f1      	bne.n	428 <threadFSMProceed+0x8>
     444:	2308      	movs	r3, #8
     446:	18fb      	adds	r3, r7, r3
     448:	685b      	ldr	r3, [r3, #4]
     44a:	617b      	str	r3, [r7, #20]
     44c:	4b03      	ldr	r3, [pc, #12]	; (45c <threadFSMProceed+0x3c>)
     44e:	681b      	ldr	r3, [r3, #0]
     450:	697a      	ldr	r2, [r7, #20]
     452:	0010      	movs	r0, r2
     454:	4798      	blx	r3
     456:	e7e7      	b.n	428 <threadFSMProceed+0x8>
     458:	20000864 	.word	0x20000864
     45c:	20000010 	.word	0x20000010

00000460 <handler_reset>:
     460:	b580      	push	{r7, lr}
     462:	b082      	sub	sp, #8
     464:	af00      	add	r7, sp, #0
     466:	4b1a      	ldr	r3, [pc, #104]	; (4d0 <handler_reset+0x70>)
     468:	607b      	str	r3, [r7, #4]
     46a:	4b1a      	ldr	r3, [pc, #104]	; (4d4 <handler_reset+0x74>)
     46c:	603b      	str	r3, [r7, #0]
     46e:	e007      	b.n	480 <handler_reset+0x20>
     470:	683b      	ldr	r3, [r7, #0]
     472:	1d1a      	adds	r2, r3, #4
     474:	603a      	str	r2, [r7, #0]
     476:	687a      	ldr	r2, [r7, #4]
     478:	1d11      	adds	r1, r2, #4
     47a:	6079      	str	r1, [r7, #4]
     47c:	6812      	ldr	r2, [r2, #0]
     47e:	601a      	str	r2, [r3, #0]
     480:	683a      	ldr	r2, [r7, #0]
     482:	4b15      	ldr	r3, [pc, #84]	; (4d8 <handler_reset+0x78>)
     484:	429a      	cmp	r2, r3
     486:	d3f3      	bcc.n	470 <handler_reset+0x10>
     488:	4b14      	ldr	r3, [pc, #80]	; (4dc <handler_reset+0x7c>)
     48a:	607b      	str	r3, [r7, #4]
     48c:	4b14      	ldr	r3, [pc, #80]	; (4e0 <handler_reset+0x80>)
     48e:	603b      	str	r3, [r7, #0]
     490:	e007      	b.n	4a2 <handler_reset+0x42>
     492:	683b      	ldr	r3, [r7, #0]
     494:	1d1a      	adds	r2, r3, #4
     496:	603a      	str	r2, [r7, #0]
     498:	687a      	ldr	r2, [r7, #4]
     49a:	1d11      	adds	r1, r2, #4
     49c:	6079      	str	r1, [r7, #4]
     49e:	6812      	ldr	r2, [r2, #0]
     4a0:	601a      	str	r2, [r3, #0]
     4a2:	683a      	ldr	r2, [r7, #0]
     4a4:	4b0f      	ldr	r3, [pc, #60]	; (4e4 <handler_reset+0x84>)
     4a6:	429a      	cmp	r2, r3
     4a8:	d3f3      	bcc.n	492 <handler_reset+0x32>
     4aa:	4b0f      	ldr	r3, [pc, #60]	; (4e8 <handler_reset+0x88>)
     4ac:	603b      	str	r3, [r7, #0]
     4ae:	e004      	b.n	4ba <handler_reset+0x5a>
     4b0:	683b      	ldr	r3, [r7, #0]
     4b2:	1d1a      	adds	r2, r3, #4
     4b4:	603a      	str	r2, [r7, #0]
     4b6:	2200      	movs	r2, #0
     4b8:	601a      	str	r2, [r3, #0]
     4ba:	683a      	ldr	r2, [r7, #0]
     4bc:	4b0b      	ldr	r3, [pc, #44]	; (4ec <handler_reset+0x8c>)
     4be:	429a      	cmp	r2, r3
     4c0:	d3f6      	bcc.n	4b0 <handler_reset+0x50>
     4c2:	f7ff fe79 	bl	1b8 <main>
     4c6:	46c0      	nop			; (mov r8, r8)
     4c8:	46bd      	mov	sp, r7
     4ca:	b002      	add	sp, #8
     4cc:	bd80      	pop	{r7, pc}
     4ce:	46c0      	nop			; (mov r8, r8)
     4d0:	00008e78 	.word	0x00008e78
     4d4:	20000000 	.word	0x20000000
     4d8:	20000858 	.word	0x20000858
     4dc:	000096d0 	.word	0x000096d0
     4e0:	20100000 	.word	0x20100000
     4e4:	201002a0 	.word	0x201002a0
     4e8:	20000858 	.word	0x20000858
     4ec:	200060a8 	.word	0x200060a8

000004f0 <default_handler>:
     4f0:	b580      	push	{r7, lr}
     4f2:	af00      	add	r7, sp, #0
     4f4:	e7fe      	b.n	4f4 <default_handler+0x4>
     4f6:	46c0      	nop			; (mov r8, r8)

000004f8 <__NVIC_EnableIRQ>:
     4f8:	b580      	push	{r7, lr}
     4fa:	b082      	sub	sp, #8
     4fc:	af00      	add	r7, sp, #0
     4fe:	0002      	movs	r2, r0
     500:	1dfb      	adds	r3, r7, #7
     502:	701a      	strb	r2, [r3, #0]
     504:	1dfb      	adds	r3, r7, #7
     506:	781b      	ldrb	r3, [r3, #0]
     508:	2b7f      	cmp	r3, #127	; 0x7f
     50a:	d809      	bhi.n	520 <__NVIC_EnableIRQ+0x28>
     50c:	4b06      	ldr	r3, [pc, #24]	; (528 <__NVIC_EnableIRQ+0x30>)
     50e:	1dfa      	adds	r2, r7, #7
     510:	7812      	ldrb	r2, [r2, #0]
     512:	0011      	movs	r1, r2
     514:	221f      	movs	r2, #31
     516:	400a      	ands	r2, r1
     518:	2101      	movs	r1, #1
     51a:	4091      	lsls	r1, r2
     51c:	000a      	movs	r2, r1
     51e:	601a      	str	r2, [r3, #0]
     520:	46c0      	nop			; (mov r8, r8)
     522:	46bd      	mov	sp, r7
     524:	b002      	add	sp, #8
     526:	bd80      	pop	{r7, pc}
     528:	e000e100 	.word	0xe000e100

0000052c <__NVIC_DisableIRQ>:
     52c:	b580      	push	{r7, lr}
     52e:	b082      	sub	sp, #8
     530:	af00      	add	r7, sp, #0
     532:	0002      	movs	r2, r0
     534:	1dfb      	adds	r3, r7, #7
     536:	701a      	strb	r2, [r3, #0]
     538:	1dfb      	adds	r3, r7, #7
     53a:	781b      	ldrb	r3, [r3, #0]
     53c:	2b7f      	cmp	r3, #127	; 0x7f
     53e:	d80e      	bhi.n	55e <__NVIC_DisableIRQ+0x32>
     540:	4909      	ldr	r1, [pc, #36]	; (568 <__NVIC_DisableIRQ+0x3c>)
     542:	1dfb      	adds	r3, r7, #7
     544:	781b      	ldrb	r3, [r3, #0]
     546:	001a      	movs	r2, r3
     548:	231f      	movs	r3, #31
     54a:	4013      	ands	r3, r2
     54c:	2201      	movs	r2, #1
     54e:	409a      	lsls	r2, r3
     550:	0013      	movs	r3, r2
     552:	2280      	movs	r2, #128	; 0x80
     554:	508b      	str	r3, [r1, r2]
     556:	f3bf 8f4f 	dsb	sy
     55a:	f3bf 8f6f 	isb	sy
     55e:	46c0      	nop			; (mov r8, r8)
     560:	46bd      	mov	sp, r7
     562:	b002      	add	sp, #8
     564:	bd80      	pop	{r7, pc}
     566:	46c0      	nop			; (mov r8, r8)
     568:	e000e100 	.word	0xe000e100

0000056c <mdb485_init>:
     56c:	b580      	push	{r7, lr}
     56e:	af00      	add	r7, sp, #0
     570:	4b14      	ldr	r3, [pc, #80]	; (5c4 <mdb485_init+0x58>)
     572:	2234      	movs	r2, #52	; 0x34
     574:	625a      	str	r2, [r3, #36]	; 0x24
     576:	4b13      	ldr	r3, [pc, #76]	; (5c4 <mdb485_init+0x58>)
     578:	2205      	movs	r2, #5
     57a:	629a      	str	r2, [r3, #40]	; 0x28
     57c:	4b11      	ldr	r3, [pc, #68]	; (5c4 <mdb485_init+0x58>)
     57e:	4a11      	ldr	r2, [pc, #68]	; (5c4 <mdb485_init+0x58>)
     580:	6b52      	ldr	r2, [r2, #52]	; 0x34
     582:	213f      	movs	r1, #63	; 0x3f
     584:	438a      	bics	r2, r1
     586:	635a      	str	r2, [r3, #52]	; 0x34
     588:	4b0e      	ldr	r3, [pc, #56]	; (5c4 <mdb485_init+0x58>)
     58a:	4a0e      	ldr	r2, [pc, #56]	; (5c4 <mdb485_init+0x58>)
     58c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     58e:	2110      	movs	r1, #16
     590:	430a      	orrs	r2, r1
     592:	62da      	str	r2, [r3, #44]	; 0x2c
     594:	4b0b      	ldr	r3, [pc, #44]	; (5c4 <mdb485_init+0x58>)
     596:	4a0b      	ldr	r2, [pc, #44]	; (5c4 <mdb485_init+0x58>)
     598:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     59a:	2160      	movs	r1, #96	; 0x60
     59c:	430a      	orrs	r2, r1
     59e:	62da      	str	r2, [r3, #44]	; 0x2c
     5a0:	4b08      	ldr	r3, [pc, #32]	; (5c4 <mdb485_init+0x58>)
     5a2:	4a08      	ldr	r2, [pc, #32]	; (5c4 <mdb485_init+0x58>)
     5a4:	6b12      	ldr	r2, [r2, #48]	; 0x30
     5a6:	4908      	ldr	r1, [pc, #32]	; (5c8 <mdb485_init+0x5c>)
     5a8:	430a      	orrs	r2, r1
     5aa:	631a      	str	r2, [r3, #48]	; 0x30
     5ac:	4b05      	ldr	r3, [pc, #20]	; (5c4 <mdb485_init+0x58>)
     5ae:	4a05      	ldr	r2, [pc, #20]	; (5c4 <mdb485_init+0x58>)
     5b0:	6b92      	ldr	r2, [r2, #56]	; 0x38
     5b2:	2140      	movs	r1, #64	; 0x40
     5b4:	430a      	orrs	r2, r1
     5b6:	639a      	str	r2, [r3, #56]	; 0x38
     5b8:	2007      	movs	r0, #7
     5ba:	f7ff ff9d 	bl	4f8 <__NVIC_EnableIRQ>
     5be:	46c0      	nop			; (mov r8, r8)
     5c0:	46bd      	mov	sp, r7
     5c2:	bd80      	pop	{r7, pc}
     5c4:	40038000 	.word	0x40038000
     5c8:	00000301 	.word	0x00000301

000005cc <mdb485_send>:
     5cc:	b580      	push	{r7, lr}
     5ce:	b084      	sub	sp, #16
     5d0:	af00      	add	r7, sp, #0
     5d2:	6078      	str	r0, [r7, #4]
     5d4:	6039      	str	r1, [r7, #0]
     5d6:	4b17      	ldr	r3, [pc, #92]	; (634 <mdb485_send+0x68>)
     5d8:	4a16      	ldr	r2, [pc, #88]	; (634 <mdb485_send+0x68>)
     5da:	6812      	ldr	r2, [r2, #0]
     5dc:	2180      	movs	r1, #128	; 0x80
     5de:	0209      	lsls	r1, r1, #8
     5e0:	430a      	orrs	r2, r1
     5e2:	601a      	str	r2, [r3, #0]
     5e4:	2300      	movs	r3, #0
     5e6:	60fb      	str	r3, [r7, #12]
     5e8:	e00e      	b.n	608 <mdb485_send+0x3c>
     5ea:	46c0      	nop			; (mov r8, r8)
     5ec:	4b12      	ldr	r3, [pc, #72]	; (638 <mdb485_send+0x6c>)
     5ee:	699b      	ldr	r3, [r3, #24]
     5f0:	2220      	movs	r2, #32
     5f2:	4013      	ands	r3, r2
     5f4:	d1fa      	bne.n	5ec <mdb485_send+0x20>
     5f6:	4a10      	ldr	r2, [pc, #64]	; (638 <mdb485_send+0x6c>)
     5f8:	687b      	ldr	r3, [r7, #4]
     5fa:	1c59      	adds	r1, r3, #1
     5fc:	6079      	str	r1, [r7, #4]
     5fe:	781b      	ldrb	r3, [r3, #0]
     600:	6013      	str	r3, [r2, #0]
     602:	68fb      	ldr	r3, [r7, #12]
     604:	3301      	adds	r3, #1
     606:	60fb      	str	r3, [r7, #12]
     608:	68fa      	ldr	r2, [r7, #12]
     60a:	683b      	ldr	r3, [r7, #0]
     60c:	429a      	cmp	r2, r3
     60e:	dbec      	blt.n	5ea <mdb485_send+0x1e>
     610:	46c0      	nop			; (mov r8, r8)
     612:	4b09      	ldr	r3, [pc, #36]	; (638 <mdb485_send+0x6c>)
     614:	699b      	ldr	r3, [r3, #24]
     616:	2208      	movs	r2, #8
     618:	4013      	ands	r3, r2
     61a:	d1fa      	bne.n	612 <mdb485_send+0x46>
     61c:	4b05      	ldr	r3, [pc, #20]	; (634 <mdb485_send+0x68>)
     61e:	4a05      	ldr	r2, [pc, #20]	; (634 <mdb485_send+0x68>)
     620:	6812      	ldr	r2, [r2, #0]
     622:	4906      	ldr	r1, [pc, #24]	; (63c <mdb485_send+0x70>)
     624:	400a      	ands	r2, r1
     626:	601a      	str	r2, [r3, #0]
     628:	683b      	ldr	r3, [r7, #0]
     62a:	0018      	movs	r0, r3
     62c:	46bd      	mov	sp, r7
     62e:	b004      	add	sp, #16
     630:	bd80      	pop	{r7, pc}
     632:	46c0      	nop			; (mov r8, r8)
     634:	400c0000 	.word	0x400c0000
     638:	40038000 	.word	0x40038000
     63c:	ffff7fff 	.word	0xffff7fff

00000640 <mdb485_putch>:
     640:	b580      	push	{r7, lr}
     642:	b082      	sub	sp, #8
     644:	af00      	add	r7, sp, #0
     646:	0002      	movs	r2, r0
     648:	1dfb      	adds	r3, r7, #7
     64a:	701a      	strb	r2, [r3, #0]
     64c:	46c0      	nop			; (mov r8, r8)
     64e:	4b06      	ldr	r3, [pc, #24]	; (668 <mdb485_putch+0x28>)
     650:	699b      	ldr	r3, [r3, #24]
     652:	2220      	movs	r2, #32
     654:	4013      	ands	r3, r2
     656:	d1fa      	bne.n	64e <mdb485_putch+0xe>
     658:	4b03      	ldr	r3, [pc, #12]	; (668 <mdb485_putch+0x28>)
     65a:	1dfa      	adds	r2, r7, #7
     65c:	7812      	ldrb	r2, [r2, #0]
     65e:	601a      	str	r2, [r3, #0]
     660:	46c0      	nop			; (mov r8, r8)
     662:	46bd      	mov	sp, r7
     664:	b002      	add	sp, #8
     666:	bd80      	pop	{r7, pc}
     668:	40038000 	.word	0x40038000

0000066c <mdb485_writeregs>:
     66c:	b590      	push	{r4, r7, lr}
     66e:	b089      	sub	sp, #36	; 0x24
     670:	af00      	add	r7, sp, #0
     672:	0004      	movs	r4, r0
     674:	0008      	movs	r0, r1
     676:	0011      	movs	r1, r2
     678:	607b      	str	r3, [r7, #4]
     67a:	230f      	movs	r3, #15
     67c:	18fb      	adds	r3, r7, r3
     67e:	1c22      	adds	r2, r4, #0
     680:	701a      	strb	r2, [r3, #0]
     682:	230c      	movs	r3, #12
     684:	18fb      	adds	r3, r7, r3
     686:	1c02      	adds	r2, r0, #0
     688:	801a      	strh	r2, [r3, #0]
     68a:	230a      	movs	r3, #10
     68c:	18fb      	adds	r3, r7, r3
     68e:	1c0a      	adds	r2, r1, #0
     690:	801a      	strh	r2, [r3, #0]
     692:	4b48      	ldr	r3, [pc, #288]	; (7b4 <mdb485_writeregs+0x148>)
     694:	61bb      	str	r3, [r7, #24]
     696:	230a      	movs	r3, #10
     698:	18fb      	adds	r3, r7, r3
     69a:	881b      	ldrh	r3, [r3, #0]
     69c:	005b      	lsls	r3, r3, #1
     69e:	617b      	str	r3, [r7, #20]
     6a0:	69bb      	ldr	r3, [r7, #24]
     6a2:	1c5a      	adds	r2, r3, #1
     6a4:	61ba      	str	r2, [r7, #24]
     6a6:	220f      	movs	r2, #15
     6a8:	18ba      	adds	r2, r7, r2
     6aa:	7812      	ldrb	r2, [r2, #0]
     6ac:	701a      	strb	r2, [r3, #0]
     6ae:	69bb      	ldr	r3, [r7, #24]
     6b0:	1c5a      	adds	r2, r3, #1
     6b2:	61ba      	str	r2, [r7, #24]
     6b4:	2210      	movs	r2, #16
     6b6:	701a      	strb	r2, [r3, #0]
     6b8:	69bb      	ldr	r3, [r7, #24]
     6ba:	1c5a      	adds	r2, r3, #1
     6bc:	61ba      	str	r2, [r7, #24]
     6be:	220c      	movs	r2, #12
     6c0:	18ba      	adds	r2, r7, r2
     6c2:	8812      	ldrh	r2, [r2, #0]
     6c4:	0a12      	lsrs	r2, r2, #8
     6c6:	b292      	uxth	r2, r2
     6c8:	b2d2      	uxtb	r2, r2
     6ca:	701a      	strb	r2, [r3, #0]
     6cc:	69bb      	ldr	r3, [r7, #24]
     6ce:	1c5a      	adds	r2, r3, #1
     6d0:	61ba      	str	r2, [r7, #24]
     6d2:	220c      	movs	r2, #12
     6d4:	18ba      	adds	r2, r7, r2
     6d6:	8812      	ldrh	r2, [r2, #0]
     6d8:	b2d2      	uxtb	r2, r2
     6da:	701a      	strb	r2, [r3, #0]
     6dc:	69bb      	ldr	r3, [r7, #24]
     6de:	1c5a      	adds	r2, r3, #1
     6e0:	61ba      	str	r2, [r7, #24]
     6e2:	220a      	movs	r2, #10
     6e4:	18ba      	adds	r2, r7, r2
     6e6:	8812      	ldrh	r2, [r2, #0]
     6e8:	0a12      	lsrs	r2, r2, #8
     6ea:	b292      	uxth	r2, r2
     6ec:	b2d2      	uxtb	r2, r2
     6ee:	701a      	strb	r2, [r3, #0]
     6f0:	69bb      	ldr	r3, [r7, #24]
     6f2:	1c5a      	adds	r2, r3, #1
     6f4:	61ba      	str	r2, [r7, #24]
     6f6:	220a      	movs	r2, #10
     6f8:	18ba      	adds	r2, r7, r2
     6fa:	8812      	ldrh	r2, [r2, #0]
     6fc:	b2d2      	uxtb	r2, r2
     6fe:	701a      	strb	r2, [r3, #0]
     700:	69bb      	ldr	r3, [r7, #24]
     702:	1c5a      	adds	r2, r3, #1
     704:	61ba      	str	r2, [r7, #24]
     706:	697a      	ldr	r2, [r7, #20]
     708:	b2d2      	uxtb	r2, r2
     70a:	701a      	strb	r2, [r3, #0]
     70c:	697b      	ldr	r3, [r7, #20]
     70e:	3307      	adds	r3, #7
     710:	2b10      	cmp	r3, #16
     712:	dc4a      	bgt.n	7aa <mdb485_writeregs+0x13e>
     714:	2300      	movs	r3, #0
     716:	61fb      	str	r3, [r7, #28]
     718:	e01b      	b.n	752 <mdb485_writeregs+0xe6>
     71a:	687b      	ldr	r3, [r7, #4]
     71c:	1c9a      	adds	r2, r3, #2
     71e:	607a      	str	r2, [r7, #4]
     720:	2212      	movs	r2, #18
     722:	18ba      	adds	r2, r7, r2
     724:	881b      	ldrh	r3, [r3, #0]
     726:	8013      	strh	r3, [r2, #0]
     728:	69bb      	ldr	r3, [r7, #24]
     72a:	1c5a      	adds	r2, r3, #1
     72c:	61ba      	str	r2, [r7, #24]
     72e:	2212      	movs	r2, #18
     730:	18ba      	adds	r2, r7, r2
     732:	8812      	ldrh	r2, [r2, #0]
     734:	0a12      	lsrs	r2, r2, #8
     736:	b292      	uxth	r2, r2
     738:	b2d2      	uxtb	r2, r2
     73a:	701a      	strb	r2, [r3, #0]
     73c:	69bb      	ldr	r3, [r7, #24]
     73e:	1c5a      	adds	r2, r3, #1
     740:	61ba      	str	r2, [r7, #24]
     742:	2212      	movs	r2, #18
     744:	18ba      	adds	r2, r7, r2
     746:	8812      	ldrh	r2, [r2, #0]
     748:	b2d2      	uxtb	r2, r2
     74a:	701a      	strb	r2, [r3, #0]
     74c:	69fb      	ldr	r3, [r7, #28]
     74e:	3301      	adds	r3, #1
     750:	61fb      	str	r3, [r7, #28]
     752:	230a      	movs	r3, #10
     754:	18fb      	adds	r3, r7, r3
     756:	881a      	ldrh	r2, [r3, #0]
     758:	69fb      	ldr	r3, [r7, #28]
     75a:	429a      	cmp	r2, r3
     75c:	dcdd      	bgt.n	71a <mdb485_writeregs+0xae>
     75e:	697b      	ldr	r3, [r7, #20]
     760:	1dda      	adds	r2, r3, #7
     762:	2310      	movs	r3, #16
     764:	18fc      	adds	r4, r7, r3
     766:	4b13      	ldr	r3, [pc, #76]	; (7b4 <mdb485_writeregs+0x148>)
     768:	0011      	movs	r1, r2
     76a:	0018      	movs	r0, r3
     76c:	f002 fca6 	bl	30bc <crc16>
     770:	0003      	movs	r3, r0
     772:	8023      	strh	r3, [r4, #0]
     774:	69bb      	ldr	r3, [r7, #24]
     776:	1c5a      	adds	r2, r3, #1
     778:	61ba      	str	r2, [r7, #24]
     77a:	2210      	movs	r2, #16
     77c:	18ba      	adds	r2, r7, r2
     77e:	8812      	ldrh	r2, [r2, #0]
     780:	b2d2      	uxtb	r2, r2
     782:	701a      	strb	r2, [r3, #0]
     784:	69bb      	ldr	r3, [r7, #24]
     786:	1c5a      	adds	r2, r3, #1
     788:	61ba      	str	r2, [r7, #24]
     78a:	2210      	movs	r2, #16
     78c:	18ba      	adds	r2, r7, r2
     78e:	8812      	ldrh	r2, [r2, #0]
     790:	0a12      	lsrs	r2, r2, #8
     792:	b292      	uxth	r2, r2
     794:	b2d2      	uxtb	r2, r2
     796:	701a      	strb	r2, [r3, #0]
     798:	697b      	ldr	r3, [r7, #20]
     79a:	3309      	adds	r3, #9
     79c:	001a      	movs	r2, r3
     79e:	4b05      	ldr	r3, [pc, #20]	; (7b4 <mdb485_writeregs+0x148>)
     7a0:	0011      	movs	r1, r2
     7a2:	0018      	movs	r0, r3
     7a4:	f7ff ff12 	bl	5cc <mdb485_send>
     7a8:	e000      	b.n	7ac <mdb485_writeregs+0x140>
     7aa:	46c0      	nop			; (mov r8, r8)
     7ac:	46bd      	mov	sp, r7
     7ae:	b009      	add	sp, #36	; 0x24
     7b0:	bd90      	pop	{r4, r7, pc}
     7b2:	46c0      	nop			; (mov r8, r8)
     7b4:	200008b8 	.word	0x200008b8

000007b8 <mdb485_readregs>:
     7b8:	b590      	push	{r4, r7, lr}
     7ba:	b085      	sub	sp, #20
     7bc:	af00      	add	r7, sp, #0
     7be:	0004      	movs	r4, r0
     7c0:	0008      	movs	r0, r1
     7c2:	0011      	movs	r1, r2
     7c4:	1dfb      	adds	r3, r7, #7
     7c6:	1c22      	adds	r2, r4, #0
     7c8:	701a      	strb	r2, [r3, #0]
     7ca:	1d3b      	adds	r3, r7, #4
     7cc:	1c02      	adds	r2, r0, #0
     7ce:	801a      	strh	r2, [r3, #0]
     7d0:	1cbb      	adds	r3, r7, #2
     7d2:	1c0a      	adds	r2, r1, #0
     7d4:	801a      	strh	r2, [r3, #0]
     7d6:	4b28      	ldr	r3, [pc, #160]	; (878 <mdb485_readregs+0xc0>)
     7d8:	60fb      	str	r3, [r7, #12]
     7da:	68fb      	ldr	r3, [r7, #12]
     7dc:	1c5a      	adds	r2, r3, #1
     7de:	60fa      	str	r2, [r7, #12]
     7e0:	1dfa      	adds	r2, r7, #7
     7e2:	7812      	ldrb	r2, [r2, #0]
     7e4:	701a      	strb	r2, [r3, #0]
     7e6:	68fb      	ldr	r3, [r7, #12]
     7e8:	1c5a      	adds	r2, r3, #1
     7ea:	60fa      	str	r2, [r7, #12]
     7ec:	2203      	movs	r2, #3
     7ee:	701a      	strb	r2, [r3, #0]
     7f0:	68fb      	ldr	r3, [r7, #12]
     7f2:	1c5a      	adds	r2, r3, #1
     7f4:	60fa      	str	r2, [r7, #12]
     7f6:	1d3a      	adds	r2, r7, #4
     7f8:	8812      	ldrh	r2, [r2, #0]
     7fa:	0a12      	lsrs	r2, r2, #8
     7fc:	b292      	uxth	r2, r2
     7fe:	b2d2      	uxtb	r2, r2
     800:	701a      	strb	r2, [r3, #0]
     802:	68fb      	ldr	r3, [r7, #12]
     804:	1c5a      	adds	r2, r3, #1
     806:	60fa      	str	r2, [r7, #12]
     808:	1d3a      	adds	r2, r7, #4
     80a:	8812      	ldrh	r2, [r2, #0]
     80c:	b2d2      	uxtb	r2, r2
     80e:	701a      	strb	r2, [r3, #0]
     810:	68fb      	ldr	r3, [r7, #12]
     812:	1c5a      	adds	r2, r3, #1
     814:	60fa      	str	r2, [r7, #12]
     816:	1cba      	adds	r2, r7, #2
     818:	8812      	ldrh	r2, [r2, #0]
     81a:	0a12      	lsrs	r2, r2, #8
     81c:	b292      	uxth	r2, r2
     81e:	b2d2      	uxtb	r2, r2
     820:	701a      	strb	r2, [r3, #0]
     822:	68fb      	ldr	r3, [r7, #12]
     824:	1c5a      	adds	r2, r3, #1
     826:	60fa      	str	r2, [r7, #12]
     828:	1cba      	adds	r2, r7, #2
     82a:	8812      	ldrh	r2, [r2, #0]
     82c:	b2d2      	uxtb	r2, r2
     82e:	701a      	strb	r2, [r3, #0]
     830:	230a      	movs	r3, #10
     832:	18fc      	adds	r4, r7, r3
     834:	4b10      	ldr	r3, [pc, #64]	; (878 <mdb485_readregs+0xc0>)
     836:	2106      	movs	r1, #6
     838:	0018      	movs	r0, r3
     83a:	f002 fc3f 	bl	30bc <crc16>
     83e:	0003      	movs	r3, r0
     840:	8023      	strh	r3, [r4, #0]
     842:	68fb      	ldr	r3, [r7, #12]
     844:	1c5a      	adds	r2, r3, #1
     846:	60fa      	str	r2, [r7, #12]
     848:	220a      	movs	r2, #10
     84a:	18ba      	adds	r2, r7, r2
     84c:	8812      	ldrh	r2, [r2, #0]
     84e:	b2d2      	uxtb	r2, r2
     850:	701a      	strb	r2, [r3, #0]
     852:	68fb      	ldr	r3, [r7, #12]
     854:	1c5a      	adds	r2, r3, #1
     856:	60fa      	str	r2, [r7, #12]
     858:	220a      	movs	r2, #10
     85a:	18ba      	adds	r2, r7, r2
     85c:	8812      	ldrh	r2, [r2, #0]
     85e:	0a12      	lsrs	r2, r2, #8
     860:	b292      	uxth	r2, r2
     862:	b2d2      	uxtb	r2, r2
     864:	701a      	strb	r2, [r3, #0]
     866:	4b04      	ldr	r3, [pc, #16]	; (878 <mdb485_readregs+0xc0>)
     868:	2108      	movs	r1, #8
     86a:	0018      	movs	r0, r3
     86c:	f7ff feae 	bl	5cc <mdb485_send>
     870:	46c0      	nop			; (mov r8, r8)
     872:	46bd      	mov	sp, r7
     874:	b005      	add	sp, #20
     876:	bd90      	pop	{r4, r7, pc}
     878:	200008b8 	.word	0x200008b8

0000087c <mdb485_read_inputregs>:
     87c:	b590      	push	{r4, r7, lr}
     87e:	b085      	sub	sp, #20
     880:	af00      	add	r7, sp, #0
     882:	0004      	movs	r4, r0
     884:	0008      	movs	r0, r1
     886:	0011      	movs	r1, r2
     888:	1dfb      	adds	r3, r7, #7
     88a:	1c22      	adds	r2, r4, #0
     88c:	701a      	strb	r2, [r3, #0]
     88e:	1d3b      	adds	r3, r7, #4
     890:	1c02      	adds	r2, r0, #0
     892:	801a      	strh	r2, [r3, #0]
     894:	1cbb      	adds	r3, r7, #2
     896:	1c0a      	adds	r2, r1, #0
     898:	801a      	strh	r2, [r3, #0]
     89a:	4b28      	ldr	r3, [pc, #160]	; (93c <mdb485_read_inputregs+0xc0>)
     89c:	60fb      	str	r3, [r7, #12]
     89e:	68fb      	ldr	r3, [r7, #12]
     8a0:	1c5a      	adds	r2, r3, #1
     8a2:	60fa      	str	r2, [r7, #12]
     8a4:	1dfa      	adds	r2, r7, #7
     8a6:	7812      	ldrb	r2, [r2, #0]
     8a8:	701a      	strb	r2, [r3, #0]
     8aa:	68fb      	ldr	r3, [r7, #12]
     8ac:	1c5a      	adds	r2, r3, #1
     8ae:	60fa      	str	r2, [r7, #12]
     8b0:	2204      	movs	r2, #4
     8b2:	701a      	strb	r2, [r3, #0]
     8b4:	68fb      	ldr	r3, [r7, #12]
     8b6:	1c5a      	adds	r2, r3, #1
     8b8:	60fa      	str	r2, [r7, #12]
     8ba:	1d3a      	adds	r2, r7, #4
     8bc:	8812      	ldrh	r2, [r2, #0]
     8be:	0a12      	lsrs	r2, r2, #8
     8c0:	b292      	uxth	r2, r2
     8c2:	b2d2      	uxtb	r2, r2
     8c4:	701a      	strb	r2, [r3, #0]
     8c6:	68fb      	ldr	r3, [r7, #12]
     8c8:	1c5a      	adds	r2, r3, #1
     8ca:	60fa      	str	r2, [r7, #12]
     8cc:	1d3a      	adds	r2, r7, #4
     8ce:	8812      	ldrh	r2, [r2, #0]
     8d0:	b2d2      	uxtb	r2, r2
     8d2:	701a      	strb	r2, [r3, #0]
     8d4:	68fb      	ldr	r3, [r7, #12]
     8d6:	1c5a      	adds	r2, r3, #1
     8d8:	60fa      	str	r2, [r7, #12]
     8da:	1cba      	adds	r2, r7, #2
     8dc:	8812      	ldrh	r2, [r2, #0]
     8de:	0a12      	lsrs	r2, r2, #8
     8e0:	b292      	uxth	r2, r2
     8e2:	b2d2      	uxtb	r2, r2
     8e4:	701a      	strb	r2, [r3, #0]
     8e6:	68fb      	ldr	r3, [r7, #12]
     8e8:	1c5a      	adds	r2, r3, #1
     8ea:	60fa      	str	r2, [r7, #12]
     8ec:	1cba      	adds	r2, r7, #2
     8ee:	8812      	ldrh	r2, [r2, #0]
     8f0:	b2d2      	uxtb	r2, r2
     8f2:	701a      	strb	r2, [r3, #0]
     8f4:	230a      	movs	r3, #10
     8f6:	18fc      	adds	r4, r7, r3
     8f8:	4b10      	ldr	r3, [pc, #64]	; (93c <mdb485_read_inputregs+0xc0>)
     8fa:	2106      	movs	r1, #6
     8fc:	0018      	movs	r0, r3
     8fe:	f002 fbdd 	bl	30bc <crc16>
     902:	0003      	movs	r3, r0
     904:	8023      	strh	r3, [r4, #0]
     906:	68fb      	ldr	r3, [r7, #12]
     908:	1c5a      	adds	r2, r3, #1
     90a:	60fa      	str	r2, [r7, #12]
     90c:	220a      	movs	r2, #10
     90e:	18ba      	adds	r2, r7, r2
     910:	8812      	ldrh	r2, [r2, #0]
     912:	b2d2      	uxtb	r2, r2
     914:	701a      	strb	r2, [r3, #0]
     916:	68fb      	ldr	r3, [r7, #12]
     918:	1c5a      	adds	r2, r3, #1
     91a:	60fa      	str	r2, [r7, #12]
     91c:	220a      	movs	r2, #10
     91e:	18ba      	adds	r2, r7, r2
     920:	8812      	ldrh	r2, [r2, #0]
     922:	0a12      	lsrs	r2, r2, #8
     924:	b292      	uxth	r2, r2
     926:	b2d2      	uxtb	r2, r2
     928:	701a      	strb	r2, [r3, #0]
     92a:	4b04      	ldr	r3, [pc, #16]	; (93c <mdb485_read_inputregs+0xc0>)
     92c:	2108      	movs	r1, #8
     92e:	0018      	movs	r0, r3
     930:	f7ff fe4c 	bl	5cc <mdb485_send>
     934:	46c0      	nop			; (mov r8, r8)
     936:	46bd      	mov	sp, r7
     938:	b005      	add	sp, #20
     93a:	bd90      	pop	{r4, r7, pc}
     93c:	200008b8 	.word	0x200008b8

00000940 <mdb485_get_func>:
     940:	b580      	push	{r7, lr}
     942:	b082      	sub	sp, #8
     944:	af00      	add	r7, sp, #0
     946:	2007      	movs	r0, #7
     948:	f7ff fdf0 	bl	52c <__NVIC_DisableIRQ>
     94c:	4b05      	ldr	r3, [pc, #20]	; (964 <mdb485_get_func+0x24>)
     94e:	785b      	ldrb	r3, [r3, #1]
     950:	607b      	str	r3, [r7, #4]
     952:	2007      	movs	r0, #7
     954:	f7ff fdd0 	bl	4f8 <__NVIC_EnableIRQ>
     958:	687b      	ldr	r3, [r7, #4]
     95a:	0018      	movs	r0, r3
     95c:	46bd      	mov	sp, r7
     95e:	b002      	add	sp, #8
     960:	bd80      	pop	{r7, pc}
     962:	46c0      	nop			; (mov r8, r8)
     964:	200008a8 	.word	0x200008a8

00000968 <mdb485_get_crc>:
     968:	b590      	push	{r4, r7, lr}
     96a:	b083      	sub	sp, #12
     96c:	af00      	add	r7, sp, #0
     96e:	2007      	movs	r0, #7
     970:	f7ff fddc 	bl	52c <__NVIC_DisableIRQ>
     974:	4b09      	ldr	r3, [pc, #36]	; (99c <mdb485_get_crc+0x34>)
     976:	681a      	ldr	r2, [r3, #0]
     978:	1dbc      	adds	r4, r7, #6
     97a:	4b09      	ldr	r3, [pc, #36]	; (9a0 <mdb485_get_crc+0x38>)
     97c:	0011      	movs	r1, r2
     97e:	0018      	movs	r0, r3
     980:	f002 fb9c 	bl	30bc <crc16>
     984:	0003      	movs	r3, r0
     986:	8023      	strh	r3, [r4, #0]
     988:	2007      	movs	r0, #7
     98a:	f7ff fdb5 	bl	4f8 <__NVIC_EnableIRQ>
     98e:	1dbb      	adds	r3, r7, #6
     990:	881b      	ldrh	r3, [r3, #0]
     992:	0018      	movs	r0, r3
     994:	46bd      	mov	sp, r7
     996:	b003      	add	sp, #12
     998:	bd90      	pop	{r4, r7, pc}
     99a:	46c0      	nop			; (mov r8, r8)
     99c:	200008c8 	.word	0x200008c8
     9a0:	200008a8 	.word	0x200008a8

000009a4 <mdb485_si30_get_counter>:
     9a4:	b580      	push	{r7, lr}
     9a6:	b082      	sub	sp, #8
     9a8:	af00      	add	r7, sp, #0
     9aa:	4b1a      	ldr	r3, [pc, #104]	; (a14 <mdb485_si30_get_counter+0x70>)
     9ac:	607b      	str	r3, [r7, #4]
     9ae:	2007      	movs	r0, #7
     9b0:	f7ff fdbc 	bl	52c <__NVIC_DisableIRQ>
     9b4:	4b18      	ldr	r3, [pc, #96]	; (a18 <mdb485_si30_get_counter+0x74>)
     9b6:	681b      	ldr	r3, [r3, #0]
     9b8:	2b00      	cmp	r3, #0
     9ba:	d022      	beq.n	a02 <mdb485_si30_get_counter+0x5e>
     9bc:	687b      	ldr	r3, [r7, #4]
     9be:	1c5a      	adds	r2, r3, #1
     9c0:	607a      	str	r2, [r7, #4]
     9c2:	781b      	ldrb	r3, [r3, #0]
     9c4:	061b      	lsls	r3, r3, #24
     9c6:	603b      	str	r3, [r7, #0]
     9c8:	687b      	ldr	r3, [r7, #4]
     9ca:	1c5a      	adds	r2, r3, #1
     9cc:	607a      	str	r2, [r7, #4]
     9ce:	781b      	ldrb	r3, [r3, #0]
     9d0:	041b      	lsls	r3, r3, #16
     9d2:	001a      	movs	r2, r3
     9d4:	683b      	ldr	r3, [r7, #0]
     9d6:	4313      	orrs	r3, r2
     9d8:	603b      	str	r3, [r7, #0]
     9da:	687b      	ldr	r3, [r7, #4]
     9dc:	1c5a      	adds	r2, r3, #1
     9de:	607a      	str	r2, [r7, #4]
     9e0:	781b      	ldrb	r3, [r3, #0]
     9e2:	021b      	lsls	r3, r3, #8
     9e4:	001a      	movs	r2, r3
     9e6:	683b      	ldr	r3, [r7, #0]
     9e8:	4313      	orrs	r3, r2
     9ea:	603b      	str	r3, [r7, #0]
     9ec:	687b      	ldr	r3, [r7, #4]
     9ee:	781b      	ldrb	r3, [r3, #0]
     9f0:	001a      	movs	r2, r3
     9f2:	683b      	ldr	r3, [r7, #0]
     9f4:	4313      	orrs	r3, r2
     9f6:	603b      	str	r3, [r7, #0]
     9f8:	2007      	movs	r0, #7
     9fa:	f7ff fd7d 	bl	4f8 <__NVIC_EnableIRQ>
     9fe:	683b      	ldr	r3, [r7, #0]
     a00:	e003      	b.n	a0a <mdb485_si30_get_counter+0x66>
     a02:	2007      	movs	r0, #7
     a04:	f7ff fd78 	bl	4f8 <__NVIC_EnableIRQ>
     a08:	2300      	movs	r3, #0
     a0a:	0018      	movs	r0, r3
     a0c:	46bd      	mov	sp, r7
     a0e:	b002      	add	sp, #8
     a10:	bd80      	pop	{r7, pc}
     a12:	46c0      	nop			; (mov r8, r8)
     a14:	200008ab 	.word	0x200008ab
     a18:	200008c8 	.word	0x200008c8

00000a1c <UART2_Handler>:
     a1c:	b580      	push	{r7, lr}
     a1e:	b082      	sub	sp, #8
     a20:	af00      	add	r7, sp, #0
     a22:	4b16      	ldr	r3, [pc, #88]	; (a7c <UART2_Handler+0x60>)
     a24:	2200      	movs	r2, #0
     a26:	601a      	str	r2, [r3, #0]
     a28:	4b15      	ldr	r3, [pc, #84]	; (a80 <UART2_Handler+0x64>)
     a2a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     a2c:	2240      	movs	r2, #64	; 0x40
     a2e:	4013      	ands	r3, r2
     a30:	d016      	beq.n	a60 <UART2_Handler+0x44>
     a32:	4b14      	ldr	r3, [pc, #80]	; (a84 <UART2_Handler+0x68>)
     a34:	603b      	str	r3, [r7, #0]
     a36:	2300      	movs	r3, #0
     a38:	607b      	str	r3, [r7, #4]
     a3a:	e009      	b.n	a50 <UART2_Handler+0x34>
     a3c:	683b      	ldr	r3, [r7, #0]
     a3e:	1c5a      	adds	r2, r3, #1
     a40:	603a      	str	r2, [r7, #0]
     a42:	4a0f      	ldr	r2, [pc, #60]	; (a80 <UART2_Handler+0x64>)
     a44:	6812      	ldr	r2, [r2, #0]
     a46:	b2d2      	uxtb	r2, r2
     a48:	701a      	strb	r2, [r3, #0]
     a4a:	687b      	ldr	r3, [r7, #4]
     a4c:	3301      	adds	r3, #1
     a4e:	607b      	str	r3, [r7, #4]
     a50:	687b      	ldr	r3, [r7, #4]
     a52:	2b0f      	cmp	r3, #15
     a54:	dc04      	bgt.n	a60 <UART2_Handler+0x44>
     a56:	4b0a      	ldr	r3, [pc, #40]	; (a80 <UART2_Handler+0x64>)
     a58:	699b      	ldr	r3, [r3, #24]
     a5a:	2210      	movs	r2, #16
     a5c:	4013      	ands	r3, r2
     a5e:	d0ed      	beq.n	a3c <UART2_Handler+0x20>
     a60:	4b06      	ldr	r3, [pc, #24]	; (a7c <UART2_Handler+0x60>)
     a62:	687a      	ldr	r2, [r7, #4]
     a64:	601a      	str	r2, [r3, #0]
     a66:	4b08      	ldr	r3, [pc, #32]	; (a88 <UART2_Handler+0x6c>)
     a68:	681b      	ldr	r3, [r3, #0]
     a6a:	2108      	movs	r1, #8
     a6c:	0018      	movs	r0, r3
     a6e:	f005 fadb 	bl	6028 <osSignalSet>
     a72:	46c0      	nop			; (mov r8, r8)
     a74:	46bd      	mov	sp, r7
     a76:	b002      	add	sp, #8
     a78:	bd80      	pop	{r7, pc}
     a7a:	46c0      	nop			; (mov r8, r8)
     a7c:	200008c8 	.word	0x200008c8
     a80:	40038000 	.word	0x40038000
     a84:	200008a8 	.word	0x200008a8
     a88:	20000860 	.word	0x20000860

00000a8c <_exit>:
     a8c:	b580      	push	{r7, lr}
     a8e:	b082      	sub	sp, #8
     a90:	af00      	add	r7, sp, #0
     a92:	6078      	str	r0, [r7, #4]
     a94:	4b03      	ldr	r3, [pc, #12]	; (aa4 <_exit+0x18>)
     a96:	2204      	movs	r2, #4
     a98:	0019      	movs	r1, r3
     a9a:	2001      	movs	r0, #1
     a9c:	f000 f90c 	bl	cb8 <_write>
     aa0:	e7fe      	b.n	aa0 <_exit+0x14>
     aa2:	46c0      	nop			; (mov r8, r8)
     aa4:	00008334 	.word	0x00008334

00000aa8 <_close>:
     aa8:	b580      	push	{r7, lr}
     aaa:	b082      	sub	sp, #8
     aac:	af00      	add	r7, sp, #0
     aae:	6078      	str	r0, [r7, #4]
     ab0:	2301      	movs	r3, #1
     ab2:	425b      	negs	r3, r3
     ab4:	0018      	movs	r0, r3
     ab6:	46bd      	mov	sp, r7
     ab8:	b002      	add	sp, #8
     aba:	bd80      	pop	{r7, pc}

00000abc <_execve>:
     abc:	b580      	push	{r7, lr}
     abe:	b084      	sub	sp, #16
     ac0:	af00      	add	r7, sp, #0
     ac2:	60f8      	str	r0, [r7, #12]
     ac4:	60b9      	str	r1, [r7, #8]
     ac6:	607a      	str	r2, [r7, #4]
     ac8:	4b04      	ldr	r3, [pc, #16]	; (adc <_execve+0x20>)
     aca:	220c      	movs	r2, #12
     acc:	601a      	str	r2, [r3, #0]
     ace:	2301      	movs	r3, #1
     ad0:	425b      	negs	r3, r3
     ad2:	0018      	movs	r0, r3
     ad4:	46bd      	mov	sp, r7
     ad6:	b004      	add	sp, #16
     ad8:	bd80      	pop	{r7, pc}
     ada:	46c0      	nop			; (mov r8, r8)
     adc:	20006020 	.word	0x20006020

00000ae0 <_fork>:
     ae0:	b580      	push	{r7, lr}
     ae2:	af00      	add	r7, sp, #0
     ae4:	4b03      	ldr	r3, [pc, #12]	; (af4 <_fork+0x14>)
     ae6:	220b      	movs	r2, #11
     ae8:	601a      	str	r2, [r3, #0]
     aea:	2301      	movs	r3, #1
     aec:	425b      	negs	r3, r3
     aee:	0018      	movs	r0, r3
     af0:	46bd      	mov	sp, r7
     af2:	bd80      	pop	{r7, pc}
     af4:	20006020 	.word	0x20006020

00000af8 <_fstat>:
     af8:	b580      	push	{r7, lr}
     afa:	b082      	sub	sp, #8
     afc:	af00      	add	r7, sp, #0
     afe:	6078      	str	r0, [r7, #4]
     b00:	6039      	str	r1, [r7, #0]
     b02:	683b      	ldr	r3, [r7, #0]
     b04:	2280      	movs	r2, #128	; 0x80
     b06:	0192      	lsls	r2, r2, #6
     b08:	605a      	str	r2, [r3, #4]
     b0a:	2300      	movs	r3, #0
     b0c:	0018      	movs	r0, r3
     b0e:	46bd      	mov	sp, r7
     b10:	b002      	add	sp, #8
     b12:	bd80      	pop	{r7, pc}

00000b14 <_getpid>:
     b14:	b580      	push	{r7, lr}
     b16:	af00      	add	r7, sp, #0
     b18:	2301      	movs	r3, #1
     b1a:	0018      	movs	r0, r3
     b1c:	46bd      	mov	sp, r7
     b1e:	bd80      	pop	{r7, pc}

00000b20 <_isatty>:
     b20:	b580      	push	{r7, lr}
     b22:	b082      	sub	sp, #8
     b24:	af00      	add	r7, sp, #0
     b26:	6078      	str	r0, [r7, #4]
     b28:	687b      	ldr	r3, [r7, #4]
     b2a:	3300      	adds	r3, #0
     b2c:	2b02      	cmp	r3, #2
     b2e:	d801      	bhi.n	b34 <_isatty+0x14>
     b30:	2301      	movs	r3, #1
     b32:	e003      	b.n	b3c <_isatty+0x1c>
     b34:	4b03      	ldr	r3, [pc, #12]	; (b44 <_isatty+0x24>)
     b36:	2209      	movs	r2, #9
     b38:	601a      	str	r2, [r3, #0]
     b3a:	2300      	movs	r3, #0
     b3c:	0018      	movs	r0, r3
     b3e:	46bd      	mov	sp, r7
     b40:	b002      	add	sp, #8
     b42:	bd80      	pop	{r7, pc}
     b44:	20006020 	.word	0x20006020

00000b48 <_kill>:
     b48:	b580      	push	{r7, lr}
     b4a:	b082      	sub	sp, #8
     b4c:	af00      	add	r7, sp, #0
     b4e:	6078      	str	r0, [r7, #4]
     b50:	6039      	str	r1, [r7, #0]
     b52:	4b04      	ldr	r3, [pc, #16]	; (b64 <_kill+0x1c>)
     b54:	2216      	movs	r2, #22
     b56:	601a      	str	r2, [r3, #0]
     b58:	2301      	movs	r3, #1
     b5a:	425b      	negs	r3, r3
     b5c:	0018      	movs	r0, r3
     b5e:	46bd      	mov	sp, r7
     b60:	b002      	add	sp, #8
     b62:	bd80      	pop	{r7, pc}
     b64:	20006020 	.word	0x20006020

00000b68 <_link>:
     b68:	b580      	push	{r7, lr}
     b6a:	b082      	sub	sp, #8
     b6c:	af00      	add	r7, sp, #0
     b6e:	6078      	str	r0, [r7, #4]
     b70:	6039      	str	r1, [r7, #0]
     b72:	4b04      	ldr	r3, [pc, #16]	; (b84 <_link+0x1c>)
     b74:	221f      	movs	r2, #31
     b76:	601a      	str	r2, [r3, #0]
     b78:	2301      	movs	r3, #1
     b7a:	425b      	negs	r3, r3
     b7c:	0018      	movs	r0, r3
     b7e:	46bd      	mov	sp, r7
     b80:	b002      	add	sp, #8
     b82:	bd80      	pop	{r7, pc}
     b84:	20006020 	.word	0x20006020

00000b88 <_lseek>:
     b88:	b580      	push	{r7, lr}
     b8a:	b084      	sub	sp, #16
     b8c:	af00      	add	r7, sp, #0
     b8e:	60f8      	str	r0, [r7, #12]
     b90:	60b9      	str	r1, [r7, #8]
     b92:	607a      	str	r2, [r7, #4]
     b94:	2300      	movs	r3, #0
     b96:	0018      	movs	r0, r3
     b98:	46bd      	mov	sp, r7
     b9a:	b004      	add	sp, #16
     b9c:	bd80      	pop	{r7, pc}
     b9e:	46c0      	nop			; (mov r8, r8)

00000ba0 <_sbrk>:
     ba0:	b580      	push	{r7, lr}
     ba2:	b086      	sub	sp, #24
     ba4:	af00      	add	r7, sp, #0
     ba6:	6078      	str	r0, [r7, #4]
     ba8:	4b16      	ldr	r3, [pc, #88]	; (c04 <_sbrk+0x64>)
     baa:	681b      	ldr	r3, [r3, #0]
     bac:	2b00      	cmp	r3, #0
     bae:	d102      	bne.n	bb6 <_sbrk+0x16>
     bb0:	4b14      	ldr	r3, [pc, #80]	; (c04 <_sbrk+0x64>)
     bb2:	4a15      	ldr	r2, [pc, #84]	; (c08 <_sbrk+0x68>)
     bb4:	601a      	str	r2, [r3, #0]
     bb6:	4b13      	ldr	r3, [pc, #76]	; (c04 <_sbrk+0x64>)
     bb8:	681b      	ldr	r3, [r3, #0]
     bba:	617b      	str	r3, [r7, #20]
     bbc:	f3ef 8308 	mrs	r3, MSP
     bc0:	60fb      	str	r3, [r7, #12]
     bc2:	68fb      	ldr	r3, [r7, #12]
     bc4:	613b      	str	r3, [r7, #16]
     bc6:	4b0f      	ldr	r3, [pc, #60]	; (c04 <_sbrk+0x64>)
     bc8:	681a      	ldr	r2, [r3, #0]
     bca:	687b      	ldr	r3, [r7, #4]
     bcc:	18d2      	adds	r2, r2, r3
     bce:	693b      	ldr	r3, [r7, #16]
     bd0:	429a      	cmp	r2, r3
     bd2:	d90b      	bls.n	bec <_sbrk+0x4c>
     bd4:	4b0d      	ldr	r3, [pc, #52]	; (c0c <_sbrk+0x6c>)
     bd6:	2219      	movs	r2, #25
     bd8:	0019      	movs	r1, r3
     bda:	2002      	movs	r0, #2
     bdc:	f000 f86c 	bl	cb8 <_write>
     be0:	4b0b      	ldr	r3, [pc, #44]	; (c10 <_sbrk+0x70>)
     be2:	220c      	movs	r2, #12
     be4:	601a      	str	r2, [r3, #0]
     be6:	2301      	movs	r3, #1
     be8:	425b      	negs	r3, r3
     bea:	e006      	b.n	bfa <_sbrk+0x5a>
     bec:	4b05      	ldr	r3, [pc, #20]	; (c04 <_sbrk+0x64>)
     bee:	681a      	ldr	r2, [r3, #0]
     bf0:	687b      	ldr	r3, [r7, #4]
     bf2:	18d2      	adds	r2, r2, r3
     bf4:	4b03      	ldr	r3, [pc, #12]	; (c04 <_sbrk+0x64>)
     bf6:	601a      	str	r2, [r3, #0]
     bf8:	697b      	ldr	r3, [r7, #20]
     bfa:	0018      	movs	r0, r3
     bfc:	46bd      	mov	sp, r7
     bfe:	b006      	add	sp, #24
     c00:	bd80      	pop	{r7, pc}
     c02:	46c0      	nop			; (mov r8, r8)
     c04:	200008d0 	.word	0x200008d0
     c08:	200060a8 	.word	0x200060a8
     c0c:	0000833c 	.word	0x0000833c
     c10:	20006020 	.word	0x20006020

00000c14 <_read>:
     c14:	b580      	push	{r7, lr}
     c16:	b086      	sub	sp, #24
     c18:	af00      	add	r7, sp, #0
     c1a:	60f8      	str	r0, [r7, #12]
     c1c:	60b9      	str	r1, [r7, #8]
     c1e:	607a      	str	r2, [r7, #4]
     c20:	2300      	movs	r3, #0
     c22:	617b      	str	r3, [r7, #20]
     c24:	68fb      	ldr	r3, [r7, #12]
     c26:	2b00      	cmp	r3, #0
     c28:	d005      	beq.n	c36 <_read+0x22>
     c2a:	4b06      	ldr	r3, [pc, #24]	; (c44 <_read+0x30>)
     c2c:	2209      	movs	r2, #9
     c2e:	601a      	str	r2, [r3, #0]
     c30:	2301      	movs	r3, #1
     c32:	425b      	negs	r3, r3
     c34:	e001      	b.n	c3a <_read+0x26>
     c36:	46c0      	nop			; (mov r8, r8)
     c38:	697b      	ldr	r3, [r7, #20]
     c3a:	0018      	movs	r0, r3
     c3c:	46bd      	mov	sp, r7
     c3e:	b006      	add	sp, #24
     c40:	bd80      	pop	{r7, pc}
     c42:	46c0      	nop			; (mov r8, r8)
     c44:	20006020 	.word	0x20006020

00000c48 <_stat>:
     c48:	b580      	push	{r7, lr}
     c4a:	b082      	sub	sp, #8
     c4c:	af00      	add	r7, sp, #0
     c4e:	6078      	str	r0, [r7, #4]
     c50:	6039      	str	r1, [r7, #0]
     c52:	683b      	ldr	r3, [r7, #0]
     c54:	2280      	movs	r2, #128	; 0x80
     c56:	0192      	lsls	r2, r2, #6
     c58:	605a      	str	r2, [r3, #4]
     c5a:	2300      	movs	r3, #0
     c5c:	0018      	movs	r0, r3
     c5e:	46bd      	mov	sp, r7
     c60:	b002      	add	sp, #8
     c62:	bd80      	pop	{r7, pc}

00000c64 <_times>:
     c64:	b580      	push	{r7, lr}
     c66:	b082      	sub	sp, #8
     c68:	af00      	add	r7, sp, #0
     c6a:	6078      	str	r0, [r7, #4]
     c6c:	2301      	movs	r3, #1
     c6e:	425b      	negs	r3, r3
     c70:	0018      	movs	r0, r3
     c72:	46bd      	mov	sp, r7
     c74:	b002      	add	sp, #8
     c76:	bd80      	pop	{r7, pc}

00000c78 <_unlink>:
     c78:	b580      	push	{r7, lr}
     c7a:	b082      	sub	sp, #8
     c7c:	af00      	add	r7, sp, #0
     c7e:	6078      	str	r0, [r7, #4]
     c80:	4b04      	ldr	r3, [pc, #16]	; (c94 <_unlink+0x1c>)
     c82:	2202      	movs	r2, #2
     c84:	601a      	str	r2, [r3, #0]
     c86:	2301      	movs	r3, #1
     c88:	425b      	negs	r3, r3
     c8a:	0018      	movs	r0, r3
     c8c:	46bd      	mov	sp, r7
     c8e:	b002      	add	sp, #8
     c90:	bd80      	pop	{r7, pc}
     c92:	46c0      	nop			; (mov r8, r8)
     c94:	20006020 	.word	0x20006020

00000c98 <_wait>:
     c98:	b580      	push	{r7, lr}
     c9a:	b082      	sub	sp, #8
     c9c:	af00      	add	r7, sp, #0
     c9e:	6078      	str	r0, [r7, #4]
     ca0:	4b04      	ldr	r3, [pc, #16]	; (cb4 <_wait+0x1c>)
     ca2:	220a      	movs	r2, #10
     ca4:	601a      	str	r2, [r3, #0]
     ca6:	2301      	movs	r3, #1
     ca8:	425b      	negs	r3, r3
     caa:	0018      	movs	r0, r3
     cac:	46bd      	mov	sp, r7
     cae:	b002      	add	sp, #8
     cb0:	bd80      	pop	{r7, pc}
     cb2:	46c0      	nop			; (mov r8, r8)
     cb4:	20006020 	.word	0x20006020

00000cb8 <_write>:
     cb8:	b580      	push	{r7, lr}
     cba:	b086      	sub	sp, #24
     cbc:	af00      	add	r7, sp, #0
     cbe:	60f8      	str	r0, [r7, #12]
     cc0:	60b9      	str	r1, [r7, #8]
     cc2:	607a      	str	r2, [r7, #4]
     cc4:	68fb      	ldr	r3, [r7, #12]
     cc6:	2b01      	cmp	r3, #1
     cc8:	d002      	beq.n	cd0 <_write+0x18>
     cca:	2b02      	cmp	r3, #2
     ccc:	d00b      	beq.n	ce6 <_write+0x2e>
     cce:	e015      	b.n	cfc <_write+0x44>
     cd0:	2300      	movs	r3, #0
     cd2:	617b      	str	r3, [r7, #20]
     cd4:	e002      	b.n	cdc <_write+0x24>
     cd6:	697b      	ldr	r3, [r7, #20]
     cd8:	3301      	adds	r3, #1
     cda:	617b      	str	r3, [r7, #20]
     cdc:	697a      	ldr	r2, [r7, #20]
     cde:	687b      	ldr	r3, [r7, #4]
     ce0:	429a      	cmp	r2, r3
     ce2:	dbf8      	blt.n	cd6 <_write+0x1e>
     ce4:	e010      	b.n	d08 <_write+0x50>
     ce6:	2300      	movs	r3, #0
     ce8:	617b      	str	r3, [r7, #20]
     cea:	e002      	b.n	cf2 <_write+0x3a>
     cec:	697b      	ldr	r3, [r7, #20]
     cee:	3301      	adds	r3, #1
     cf0:	617b      	str	r3, [r7, #20]
     cf2:	697a      	ldr	r2, [r7, #20]
     cf4:	687b      	ldr	r3, [r7, #4]
     cf6:	429a      	cmp	r2, r3
     cf8:	dbf8      	blt.n	cec <_write+0x34>
     cfa:	e005      	b.n	d08 <_write+0x50>
     cfc:	4b05      	ldr	r3, [pc, #20]	; (d14 <_write+0x5c>)
     cfe:	2209      	movs	r2, #9
     d00:	601a      	str	r2, [r3, #0]
     d02:	2301      	movs	r3, #1
     d04:	425b      	negs	r3, r3
     d06:	e000      	b.n	d0a <_write+0x52>
     d08:	687b      	ldr	r3, [r7, #4]
     d0a:	0018      	movs	r0, r3
     d0c:	46bd      	mov	sp, r7
     d0e:	b006      	add	sp, #24
     d10:	bd80      	pop	{r7, pc}
     d12:	46c0      	nop			; (mov r8, r8)
     d14:	20006020 	.word	0x20006020

00000d18 <_init>:
     d18:	b580      	push	{r7, lr}
     d1a:	af00      	add	r7, sp, #0
     d1c:	46c0      	nop			; (mov r8, r8)
     d1e:	46bd      	mov	sp, r7
     d20:	bd80      	pop	{r7, pc}
     d22:	46c0      	nop			; (mov r8, r8)

00000d24 <_fini>:
     d24:	b580      	push	{r7, lr}
     d26:	af00      	add	r7, sp, #0
     d28:	46c0      	nop			; (mov r8, r8)
     d2a:	46bd      	mov	sp, r7
     d2c:	bd80      	pop	{r7, pc}
     d2e:	46c0      	nop			; (mov r8, r8)

00000d30 <__NVIC_EnableIRQ>:
     d30:	b580      	push	{r7, lr}
     d32:	b082      	sub	sp, #8
     d34:	af00      	add	r7, sp, #0
     d36:	0002      	movs	r2, r0
     d38:	1dfb      	adds	r3, r7, #7
     d3a:	701a      	strb	r2, [r3, #0]
     d3c:	1dfb      	adds	r3, r7, #7
     d3e:	781b      	ldrb	r3, [r3, #0]
     d40:	2b7f      	cmp	r3, #127	; 0x7f
     d42:	d809      	bhi.n	d58 <__NVIC_EnableIRQ+0x28>
     d44:	4b06      	ldr	r3, [pc, #24]	; (d60 <__NVIC_EnableIRQ+0x30>)
     d46:	1dfa      	adds	r2, r7, #7
     d48:	7812      	ldrb	r2, [r2, #0]
     d4a:	0011      	movs	r1, r2
     d4c:	221f      	movs	r2, #31
     d4e:	400a      	ands	r2, r1
     d50:	2101      	movs	r1, #1
     d52:	4091      	lsls	r1, r2
     d54:	000a      	movs	r2, r1
     d56:	601a      	str	r2, [r3, #0]
     d58:	46c0      	nop			; (mov r8, r8)
     d5a:	46bd      	mov	sp, r7
     d5c:	b002      	add	sp, #8
     d5e:	bd80      	pop	{r7, pc}
     d60:	e000e100 	.word	0xe000e100

00000d64 <__NVIC_DisableIRQ>:
     d64:	b580      	push	{r7, lr}
     d66:	b082      	sub	sp, #8
     d68:	af00      	add	r7, sp, #0
     d6a:	0002      	movs	r2, r0
     d6c:	1dfb      	adds	r3, r7, #7
     d6e:	701a      	strb	r2, [r3, #0]
     d70:	1dfb      	adds	r3, r7, #7
     d72:	781b      	ldrb	r3, [r3, #0]
     d74:	2b7f      	cmp	r3, #127	; 0x7f
     d76:	d80e      	bhi.n	d96 <__NVIC_DisableIRQ+0x32>
     d78:	4909      	ldr	r1, [pc, #36]	; (da0 <__NVIC_DisableIRQ+0x3c>)
     d7a:	1dfb      	adds	r3, r7, #7
     d7c:	781b      	ldrb	r3, [r3, #0]
     d7e:	001a      	movs	r2, r3
     d80:	231f      	movs	r3, #31
     d82:	4013      	ands	r3, r2
     d84:	2201      	movs	r2, #1
     d86:	409a      	lsls	r2, r3
     d88:	0013      	movs	r3, r2
     d8a:	2280      	movs	r2, #128	; 0x80
     d8c:	508b      	str	r3, [r1, r2]
     d8e:	f3bf 8f4f 	dsb	sy
     d92:	f3bf 8f6f 	isb	sy
     d96:	46c0      	nop			; (mov r8, r8)
     d98:	46bd      	mov	sp, r7
     d9a:	b002      	add	sp, #8
     d9c:	bd80      	pop	{r7, pc}
     d9e:	46c0      	nop			; (mov r8, r8)
     da0:	e000e100 	.word	0xe000e100

00000da4 <mdb232_init>:
     da4:	b580      	push	{r7, lr}
     da6:	af00      	add	r7, sp, #0
     da8:	4b15      	ldr	r3, [pc, #84]	; (e00 <mdb232_init+0x5c>)
     daa:	229c      	movs	r2, #156	; 0x9c
     dac:	0052      	lsls	r2, r2, #1
     dae:	625a      	str	r2, [r3, #36]	; 0x24
     db0:	4b13      	ldr	r3, [pc, #76]	; (e00 <mdb232_init+0x5c>)
     db2:	2220      	movs	r2, #32
     db4:	629a      	str	r2, [r3, #40]	; 0x28
     db6:	4b12      	ldr	r3, [pc, #72]	; (e00 <mdb232_init+0x5c>)
     db8:	4a11      	ldr	r2, [pc, #68]	; (e00 <mdb232_init+0x5c>)
     dba:	6b52      	ldr	r2, [r2, #52]	; 0x34
     dbc:	213f      	movs	r1, #63	; 0x3f
     dbe:	438a      	bics	r2, r1
     dc0:	635a      	str	r2, [r3, #52]	; 0x34
     dc2:	4b0f      	ldr	r3, [pc, #60]	; (e00 <mdb232_init+0x5c>)
     dc4:	4a0e      	ldr	r2, [pc, #56]	; (e00 <mdb232_init+0x5c>)
     dc6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     dc8:	2110      	movs	r1, #16
     dca:	430a      	orrs	r2, r1
     dcc:	62da      	str	r2, [r3, #44]	; 0x2c
     dce:	4b0c      	ldr	r3, [pc, #48]	; (e00 <mdb232_init+0x5c>)
     dd0:	4a0b      	ldr	r2, [pc, #44]	; (e00 <mdb232_init+0x5c>)
     dd2:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     dd4:	2160      	movs	r1, #96	; 0x60
     dd6:	430a      	orrs	r2, r1
     dd8:	62da      	str	r2, [r3, #44]	; 0x2c
     dda:	4b09      	ldr	r3, [pc, #36]	; (e00 <mdb232_init+0x5c>)
     ddc:	4a08      	ldr	r2, [pc, #32]	; (e00 <mdb232_init+0x5c>)
     dde:	6b12      	ldr	r2, [r2, #48]	; 0x30
     de0:	4908      	ldr	r1, [pc, #32]	; (e04 <mdb232_init+0x60>)
     de2:	430a      	orrs	r2, r1
     de4:	631a      	str	r2, [r3, #48]	; 0x30
     de6:	4b06      	ldr	r3, [pc, #24]	; (e00 <mdb232_init+0x5c>)
     de8:	4a05      	ldr	r2, [pc, #20]	; (e00 <mdb232_init+0x5c>)
     dea:	6b92      	ldr	r2, [r2, #56]	; 0x38
     dec:	2140      	movs	r1, #64	; 0x40
     dee:	430a      	orrs	r2, r1
     df0:	639a      	str	r2, [r3, #56]	; 0x38
     df2:	2006      	movs	r0, #6
     df4:	f7ff ff9c 	bl	d30 <__NVIC_EnableIRQ>
     df8:	46c0      	nop			; (mov r8, r8)
     dfa:	46bd      	mov	sp, r7
     dfc:	bd80      	pop	{r7, pc}
     dfe:	46c0      	nop			; (mov r8, r8)
     e00:	40030000 	.word	0x40030000
     e04:	00000301 	.word	0x00000301

00000e08 <mdb232_send>:
     e08:	b580      	push	{r7, lr}
     e0a:	b084      	sub	sp, #16
     e0c:	af00      	add	r7, sp, #0
     e0e:	6078      	str	r0, [r7, #4]
     e10:	6039      	str	r1, [r7, #0]
     e12:	2300      	movs	r3, #0
     e14:	60fb      	str	r3, [r7, #12]
     e16:	e00e      	b.n	e36 <mdb232_send+0x2e>
     e18:	46c0      	nop			; (mov r8, r8)
     e1a:	4b0e      	ldr	r3, [pc, #56]	; (e54 <mdb232_send+0x4c>)
     e1c:	699b      	ldr	r3, [r3, #24]
     e1e:	2220      	movs	r2, #32
     e20:	4013      	ands	r3, r2
     e22:	d1fa      	bne.n	e1a <mdb232_send+0x12>
     e24:	4a0b      	ldr	r2, [pc, #44]	; (e54 <mdb232_send+0x4c>)
     e26:	687b      	ldr	r3, [r7, #4]
     e28:	1c59      	adds	r1, r3, #1
     e2a:	6079      	str	r1, [r7, #4]
     e2c:	781b      	ldrb	r3, [r3, #0]
     e2e:	6013      	str	r3, [r2, #0]
     e30:	68fb      	ldr	r3, [r7, #12]
     e32:	3301      	adds	r3, #1
     e34:	60fb      	str	r3, [r7, #12]
     e36:	68fa      	ldr	r2, [r7, #12]
     e38:	683b      	ldr	r3, [r7, #0]
     e3a:	429a      	cmp	r2, r3
     e3c:	dbec      	blt.n	e18 <mdb232_send+0x10>
     e3e:	46c0      	nop			; (mov r8, r8)
     e40:	4b04      	ldr	r3, [pc, #16]	; (e54 <mdb232_send+0x4c>)
     e42:	699b      	ldr	r3, [r3, #24]
     e44:	2208      	movs	r2, #8
     e46:	4013      	ands	r3, r2
     e48:	d1fa      	bne.n	e40 <mdb232_send+0x38>
     e4a:	683b      	ldr	r3, [r7, #0]
     e4c:	0018      	movs	r0, r3
     e4e:	46bd      	mov	sp, r7
     e50:	b004      	add	sp, #16
     e52:	bd80      	pop	{r7, pc}
     e54:	40030000 	.word	0x40030000

00000e58 <mdb232_read_inputregs>:
     e58:	b590      	push	{r4, r7, lr}
     e5a:	b085      	sub	sp, #20
     e5c:	af00      	add	r7, sp, #0
     e5e:	0004      	movs	r4, r0
     e60:	0008      	movs	r0, r1
     e62:	0011      	movs	r1, r2
     e64:	1dfb      	adds	r3, r7, #7
     e66:	1c22      	adds	r2, r4, #0
     e68:	701a      	strb	r2, [r3, #0]
     e6a:	1d3b      	adds	r3, r7, #4
     e6c:	1c02      	adds	r2, r0, #0
     e6e:	801a      	strh	r2, [r3, #0]
     e70:	1cbb      	adds	r3, r7, #2
     e72:	1c0a      	adds	r2, r1, #0
     e74:	801a      	strh	r2, [r3, #0]
     e76:	4b28      	ldr	r3, [pc, #160]	; (f18 <mdb232_read_inputregs+0xc0>)
     e78:	60fb      	str	r3, [r7, #12]
     e7a:	68fb      	ldr	r3, [r7, #12]
     e7c:	1c5a      	adds	r2, r3, #1
     e7e:	60fa      	str	r2, [r7, #12]
     e80:	1dfa      	adds	r2, r7, #7
     e82:	7812      	ldrb	r2, [r2, #0]
     e84:	701a      	strb	r2, [r3, #0]
     e86:	68fb      	ldr	r3, [r7, #12]
     e88:	1c5a      	adds	r2, r3, #1
     e8a:	60fa      	str	r2, [r7, #12]
     e8c:	2204      	movs	r2, #4
     e8e:	701a      	strb	r2, [r3, #0]
     e90:	68fb      	ldr	r3, [r7, #12]
     e92:	1c5a      	adds	r2, r3, #1
     e94:	60fa      	str	r2, [r7, #12]
     e96:	1d3a      	adds	r2, r7, #4
     e98:	8812      	ldrh	r2, [r2, #0]
     e9a:	0a12      	lsrs	r2, r2, #8
     e9c:	b292      	uxth	r2, r2
     e9e:	b2d2      	uxtb	r2, r2
     ea0:	701a      	strb	r2, [r3, #0]
     ea2:	68fb      	ldr	r3, [r7, #12]
     ea4:	1c5a      	adds	r2, r3, #1
     ea6:	60fa      	str	r2, [r7, #12]
     ea8:	1d3a      	adds	r2, r7, #4
     eaa:	8812      	ldrh	r2, [r2, #0]
     eac:	b2d2      	uxtb	r2, r2
     eae:	701a      	strb	r2, [r3, #0]
     eb0:	68fb      	ldr	r3, [r7, #12]
     eb2:	1c5a      	adds	r2, r3, #1
     eb4:	60fa      	str	r2, [r7, #12]
     eb6:	1cba      	adds	r2, r7, #2
     eb8:	8812      	ldrh	r2, [r2, #0]
     eba:	0a12      	lsrs	r2, r2, #8
     ebc:	b292      	uxth	r2, r2
     ebe:	b2d2      	uxtb	r2, r2
     ec0:	701a      	strb	r2, [r3, #0]
     ec2:	68fb      	ldr	r3, [r7, #12]
     ec4:	1c5a      	adds	r2, r3, #1
     ec6:	60fa      	str	r2, [r7, #12]
     ec8:	1cba      	adds	r2, r7, #2
     eca:	8812      	ldrh	r2, [r2, #0]
     ecc:	b2d2      	uxtb	r2, r2
     ece:	701a      	strb	r2, [r3, #0]
     ed0:	230a      	movs	r3, #10
     ed2:	18fc      	adds	r4, r7, r3
     ed4:	4b10      	ldr	r3, [pc, #64]	; (f18 <mdb232_read_inputregs+0xc0>)
     ed6:	2106      	movs	r1, #6
     ed8:	0018      	movs	r0, r3
     eda:	f002 f8ef 	bl	30bc <crc16>
     ede:	0003      	movs	r3, r0
     ee0:	8023      	strh	r3, [r4, #0]
     ee2:	68fb      	ldr	r3, [r7, #12]
     ee4:	1c5a      	adds	r2, r3, #1
     ee6:	60fa      	str	r2, [r7, #12]
     ee8:	220a      	movs	r2, #10
     eea:	18ba      	adds	r2, r7, r2
     eec:	8812      	ldrh	r2, [r2, #0]
     eee:	b2d2      	uxtb	r2, r2
     ef0:	701a      	strb	r2, [r3, #0]
     ef2:	68fb      	ldr	r3, [r7, #12]
     ef4:	1c5a      	adds	r2, r3, #1
     ef6:	60fa      	str	r2, [r7, #12]
     ef8:	220a      	movs	r2, #10
     efa:	18ba      	adds	r2, r7, r2
     efc:	8812      	ldrh	r2, [r2, #0]
     efe:	0a12      	lsrs	r2, r2, #8
     f00:	b292      	uxth	r2, r2
     f02:	b2d2      	uxtb	r2, r2
     f04:	701a      	strb	r2, [r3, #0]
     f06:	4b04      	ldr	r3, [pc, #16]	; (f18 <mdb232_read_inputregs+0xc0>)
     f08:	2108      	movs	r1, #8
     f0a:	0018      	movs	r0, r3
     f0c:	f7ff ff7c 	bl	e08 <mdb232_send>
     f10:	46c0      	nop			; (mov r8, r8)
     f12:	46bd      	mov	sp, r7
     f14:	b005      	add	sp, #20
     f16:	bd90      	pop	{r4, r7, pc}
     f18:	200008e4 	.word	0x200008e4

00000f1c <mdb232_readregs>:
     f1c:	b590      	push	{r4, r7, lr}
     f1e:	b085      	sub	sp, #20
     f20:	af00      	add	r7, sp, #0
     f22:	0004      	movs	r4, r0
     f24:	0008      	movs	r0, r1
     f26:	0011      	movs	r1, r2
     f28:	1dfb      	adds	r3, r7, #7
     f2a:	1c22      	adds	r2, r4, #0
     f2c:	701a      	strb	r2, [r3, #0]
     f2e:	1d3b      	adds	r3, r7, #4
     f30:	1c02      	adds	r2, r0, #0
     f32:	801a      	strh	r2, [r3, #0]
     f34:	1cbb      	adds	r3, r7, #2
     f36:	1c0a      	adds	r2, r1, #0
     f38:	801a      	strh	r2, [r3, #0]
     f3a:	4b28      	ldr	r3, [pc, #160]	; (fdc <mdb232_readregs+0xc0>)
     f3c:	60fb      	str	r3, [r7, #12]
     f3e:	68fb      	ldr	r3, [r7, #12]
     f40:	1c5a      	adds	r2, r3, #1
     f42:	60fa      	str	r2, [r7, #12]
     f44:	1dfa      	adds	r2, r7, #7
     f46:	7812      	ldrb	r2, [r2, #0]
     f48:	701a      	strb	r2, [r3, #0]
     f4a:	68fb      	ldr	r3, [r7, #12]
     f4c:	1c5a      	adds	r2, r3, #1
     f4e:	60fa      	str	r2, [r7, #12]
     f50:	2203      	movs	r2, #3
     f52:	701a      	strb	r2, [r3, #0]
     f54:	68fb      	ldr	r3, [r7, #12]
     f56:	1c5a      	adds	r2, r3, #1
     f58:	60fa      	str	r2, [r7, #12]
     f5a:	1d3a      	adds	r2, r7, #4
     f5c:	8812      	ldrh	r2, [r2, #0]
     f5e:	0a12      	lsrs	r2, r2, #8
     f60:	b292      	uxth	r2, r2
     f62:	b2d2      	uxtb	r2, r2
     f64:	701a      	strb	r2, [r3, #0]
     f66:	68fb      	ldr	r3, [r7, #12]
     f68:	1c5a      	adds	r2, r3, #1
     f6a:	60fa      	str	r2, [r7, #12]
     f6c:	1d3a      	adds	r2, r7, #4
     f6e:	8812      	ldrh	r2, [r2, #0]
     f70:	b2d2      	uxtb	r2, r2
     f72:	701a      	strb	r2, [r3, #0]
     f74:	68fb      	ldr	r3, [r7, #12]
     f76:	1c5a      	adds	r2, r3, #1
     f78:	60fa      	str	r2, [r7, #12]
     f7a:	1cba      	adds	r2, r7, #2
     f7c:	8812      	ldrh	r2, [r2, #0]
     f7e:	0a12      	lsrs	r2, r2, #8
     f80:	b292      	uxth	r2, r2
     f82:	b2d2      	uxtb	r2, r2
     f84:	701a      	strb	r2, [r3, #0]
     f86:	68fb      	ldr	r3, [r7, #12]
     f88:	1c5a      	adds	r2, r3, #1
     f8a:	60fa      	str	r2, [r7, #12]
     f8c:	1cba      	adds	r2, r7, #2
     f8e:	8812      	ldrh	r2, [r2, #0]
     f90:	b2d2      	uxtb	r2, r2
     f92:	701a      	strb	r2, [r3, #0]
     f94:	230a      	movs	r3, #10
     f96:	18fc      	adds	r4, r7, r3
     f98:	4b10      	ldr	r3, [pc, #64]	; (fdc <mdb232_readregs+0xc0>)
     f9a:	2106      	movs	r1, #6
     f9c:	0018      	movs	r0, r3
     f9e:	f002 f88d 	bl	30bc <crc16>
     fa2:	0003      	movs	r3, r0
     fa4:	8023      	strh	r3, [r4, #0]
     fa6:	68fb      	ldr	r3, [r7, #12]
     fa8:	1c5a      	adds	r2, r3, #1
     faa:	60fa      	str	r2, [r7, #12]
     fac:	220a      	movs	r2, #10
     fae:	18ba      	adds	r2, r7, r2
     fb0:	8812      	ldrh	r2, [r2, #0]
     fb2:	b2d2      	uxtb	r2, r2
     fb4:	701a      	strb	r2, [r3, #0]
     fb6:	68fb      	ldr	r3, [r7, #12]
     fb8:	1c5a      	adds	r2, r3, #1
     fba:	60fa      	str	r2, [r7, #12]
     fbc:	220a      	movs	r2, #10
     fbe:	18ba      	adds	r2, r7, r2
     fc0:	8812      	ldrh	r2, [r2, #0]
     fc2:	0a12      	lsrs	r2, r2, #8
     fc4:	b292      	uxth	r2, r2
     fc6:	b2d2      	uxtb	r2, r2
     fc8:	701a      	strb	r2, [r3, #0]
     fca:	4b04      	ldr	r3, [pc, #16]	; (fdc <mdb232_readregs+0xc0>)
     fcc:	2108      	movs	r1, #8
     fce:	0018      	movs	r0, r3
     fd0:	f7ff ff1a 	bl	e08 <mdb232_send>
     fd4:	46c0      	nop			; (mov r8, r8)
     fd6:	46bd      	mov	sp, r7
     fd8:	b005      	add	sp, #20
     fda:	bd90      	pop	{r4, r7, pc}
     fdc:	200008e4 	.word	0x200008e4

00000fe0 <mdb232_bikm_get_torque>:
     fe0:	b580      	push	{r7, lr}
     fe2:	b084      	sub	sp, #16
     fe4:	af00      	add	r7, sp, #0
     fe6:	4b27      	ldr	r3, [pc, #156]	; (1084 <mdb232_bikm_get_torque+0xa4>)
     fe8:	60fb      	str	r3, [r7, #12]
     fea:	2006      	movs	r0, #6
     fec:	f7ff feba 	bl	d64 <__NVIC_DisableIRQ>
     ff0:	4b25      	ldr	r3, [pc, #148]	; (1088 <mdb232_bikm_get_torque+0xa8>)
     ff2:	681b      	ldr	r3, [r3, #0]
     ff4:	2b00      	cmp	r3, #0
     ff6:	d03c      	beq.n	1072 <mdb232_bikm_get_torque+0x92>
     ff8:	68fb      	ldr	r3, [r7, #12]
     ffa:	1c5a      	adds	r2, r3, #1
     ffc:	60fa      	str	r2, [r7, #12]
     ffe:	781b      	ldrb	r3, [r3, #0]
    1000:	041b      	lsls	r3, r3, #16
    1002:	60bb      	str	r3, [r7, #8]
    1004:	68fb      	ldr	r3, [r7, #12]
    1006:	1c5a      	adds	r2, r3, #1
    1008:	60fa      	str	r2, [r7, #12]
    100a:	781b      	ldrb	r3, [r3, #0]
    100c:	061b      	lsls	r3, r3, #24
    100e:	001a      	movs	r2, r3
    1010:	68bb      	ldr	r3, [r7, #8]
    1012:	4313      	orrs	r3, r2
    1014:	60bb      	str	r3, [r7, #8]
    1016:	68fb      	ldr	r3, [r7, #12]
    1018:	1c5a      	adds	r2, r3, #1
    101a:	60fa      	str	r2, [r7, #12]
    101c:	781b      	ldrb	r3, [r3, #0]
    101e:	001a      	movs	r2, r3
    1020:	68bb      	ldr	r3, [r7, #8]
    1022:	4313      	orrs	r3, r2
    1024:	60bb      	str	r3, [r7, #8]
    1026:	68fb      	ldr	r3, [r7, #12]
    1028:	781b      	ldrb	r3, [r3, #0]
    102a:	021b      	lsls	r3, r3, #8
    102c:	001a      	movs	r2, r3
    102e:	68bb      	ldr	r3, [r7, #8]
    1030:	4313      	orrs	r3, r2
    1032:	60bb      	str	r3, [r7, #8]
    1034:	2006      	movs	r0, #6
    1036:	f7ff fe7b 	bl	d30 <__NVIC_EnableIRQ>
    103a:	68bb      	ldr	r3, [r7, #8]
    103c:	0ddb      	lsrs	r3, r3, #23
    103e:	22ff      	movs	r2, #255	; 0xff
    1040:	4013      	ands	r3, r2
    1042:	3b7f      	subs	r3, #127	; 0x7f
    1044:	607b      	str	r3, [r7, #4]
    1046:	68bb      	ldr	r3, [r7, #8]
    1048:	025b      	lsls	r3, r3, #9
    104a:	0a5b      	lsrs	r3, r3, #9
    104c:	2280      	movs	r2, #128	; 0x80
    104e:	0412      	lsls	r2, r2, #16
    1050:	4313      	orrs	r3, r2
    1052:	603b      	str	r3, [r7, #0]
    1054:	687b      	ldr	r3, [r7, #4]
    1056:	220e      	movs	r2, #14
    1058:	1ad3      	subs	r3, r2, r3
    105a:	2201      	movs	r2, #1
    105c:	409a      	lsls	r2, r3
    105e:	0013      	movs	r3, r2
    1060:	001a      	movs	r2, r3
    1062:	683b      	ldr	r3, [r7, #0]
    1064:	18d2      	adds	r2, r2, r3
    1066:	687b      	ldr	r3, [r7, #4]
    1068:	210f      	movs	r1, #15
    106a:	1acb      	subs	r3, r1, r3
    106c:	40da      	lsrs	r2, r3
    106e:	0013      	movs	r3, r2
    1070:	e003      	b.n	107a <mdb232_bikm_get_torque+0x9a>
    1072:	2006      	movs	r0, #6
    1074:	f7ff fe5c 	bl	d30 <__NVIC_EnableIRQ>
    1078:	2300      	movs	r3, #0
    107a:	0018      	movs	r0, r3
    107c:	46bd      	mov	sp, r7
    107e:	b004      	add	sp, #16
    1080:	bd80      	pop	{r7, pc}
    1082:	46c0      	nop			; (mov r8, r8)
    1084:	200008d7 	.word	0x200008d7
    1088:	200008f4 	.word	0x200008f4

0000108c <UART1_Handler>:
    108c:	b580      	push	{r7, lr}
    108e:	b082      	sub	sp, #8
    1090:	af00      	add	r7, sp, #0
    1092:	4b16      	ldr	r3, [pc, #88]	; (10ec <UART1_Handler+0x60>)
    1094:	2200      	movs	r2, #0
    1096:	601a      	str	r2, [r3, #0]
    1098:	4b15      	ldr	r3, [pc, #84]	; (10f0 <UART1_Handler+0x64>)
    109a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    109c:	2240      	movs	r2, #64	; 0x40
    109e:	4013      	ands	r3, r2
    10a0:	d016      	beq.n	10d0 <UART1_Handler+0x44>
    10a2:	4b14      	ldr	r3, [pc, #80]	; (10f4 <UART1_Handler+0x68>)
    10a4:	603b      	str	r3, [r7, #0]
    10a6:	2300      	movs	r3, #0
    10a8:	607b      	str	r3, [r7, #4]
    10aa:	e009      	b.n	10c0 <UART1_Handler+0x34>
    10ac:	683b      	ldr	r3, [r7, #0]
    10ae:	1c5a      	adds	r2, r3, #1
    10b0:	603a      	str	r2, [r7, #0]
    10b2:	4a0f      	ldr	r2, [pc, #60]	; (10f0 <UART1_Handler+0x64>)
    10b4:	6812      	ldr	r2, [r2, #0]
    10b6:	b2d2      	uxtb	r2, r2
    10b8:	701a      	strb	r2, [r3, #0]
    10ba:	687b      	ldr	r3, [r7, #4]
    10bc:	3301      	adds	r3, #1
    10be:	607b      	str	r3, [r7, #4]
    10c0:	687b      	ldr	r3, [r7, #4]
    10c2:	2b0f      	cmp	r3, #15
    10c4:	dc04      	bgt.n	10d0 <UART1_Handler+0x44>
    10c6:	4b0a      	ldr	r3, [pc, #40]	; (10f0 <UART1_Handler+0x64>)
    10c8:	699b      	ldr	r3, [r3, #24]
    10ca:	2210      	movs	r2, #16
    10cc:	4013      	ands	r3, r2
    10ce:	d0ed      	beq.n	10ac <UART1_Handler+0x20>
    10d0:	4b06      	ldr	r3, [pc, #24]	; (10ec <UART1_Handler+0x60>)
    10d2:	687a      	ldr	r2, [r7, #4]
    10d4:	601a      	str	r2, [r3, #0]
    10d6:	4b08      	ldr	r3, [pc, #32]	; (10f8 <UART1_Handler+0x6c>)
    10d8:	681b      	ldr	r3, [r3, #0]
    10da:	2102      	movs	r1, #2
    10dc:	0018      	movs	r0, r3
    10de:	f004 ffa3 	bl	6028 <osSignalSet>
    10e2:	46c0      	nop			; (mov r8, r8)
    10e4:	46bd      	mov	sp, r7
    10e6:	b002      	add	sp, #8
    10e8:	bd80      	pop	{r7, pc}
    10ea:	46c0      	nop			; (mov r8, r8)
    10ec:	200008f4 	.word	0x200008f4
    10f0:	40030000 	.word	0x40030000
    10f4:	200008d4 	.word	0x200008d4
    10f8:	20000860 	.word	0x20000860

000010fc <xputc>:
    10fc:	b580      	push	{r7, lr}
    10fe:	b082      	sub	sp, #8
    1100:	af00      	add	r7, sp, #0
    1102:	0002      	movs	r2, r0
    1104:	1dfb      	adds	r3, r7, #7
    1106:	701a      	strb	r2, [r3, #0]
    1108:	1dfb      	adds	r3, r7, #7
    110a:	781b      	ldrb	r3, [r3, #0]
    110c:	2b0a      	cmp	r3, #10
    110e:	d102      	bne.n	1116 <xputc+0x1a>
    1110:	200d      	movs	r0, #13
    1112:	f7ff fff3 	bl	10fc <xputc>
    1116:	4b0d      	ldr	r3, [pc, #52]	; (114c <xputc+0x50>)
    1118:	681b      	ldr	r3, [r3, #0]
    111a:	2b00      	cmp	r3, #0
    111c:	d008      	beq.n	1130 <xputc+0x34>
    111e:	4b0b      	ldr	r3, [pc, #44]	; (114c <xputc+0x50>)
    1120:	681b      	ldr	r3, [r3, #0]
    1122:	1c59      	adds	r1, r3, #1
    1124:	4a09      	ldr	r2, [pc, #36]	; (114c <xputc+0x50>)
    1126:	6011      	str	r1, [r2, #0]
    1128:	1dfa      	adds	r2, r7, #7
    112a:	7812      	ldrb	r2, [r2, #0]
    112c:	701a      	strb	r2, [r3, #0]
    112e:	e009      	b.n	1144 <xputc+0x48>
    1130:	4b07      	ldr	r3, [pc, #28]	; (1150 <xputc+0x54>)
    1132:	681b      	ldr	r3, [r3, #0]
    1134:	2b00      	cmp	r3, #0
    1136:	d005      	beq.n	1144 <xputc+0x48>
    1138:	4b05      	ldr	r3, [pc, #20]	; (1150 <xputc+0x54>)
    113a:	681b      	ldr	r3, [r3, #0]
    113c:	1dfa      	adds	r2, r7, #7
    113e:	7812      	ldrb	r2, [r2, #0]
    1140:	0010      	movs	r0, r2
    1142:	4798      	blx	r3
    1144:	46bd      	mov	sp, r7
    1146:	b002      	add	sp, #8
    1148:	bd80      	pop	{r7, pc}
    114a:	46c0      	nop			; (mov r8, r8)
    114c:	200008fc 	.word	0x200008fc
    1150:	200008f8 	.word	0x200008f8

00001154 <xputs>:
    1154:	b580      	push	{r7, lr}
    1156:	b082      	sub	sp, #8
    1158:	af00      	add	r7, sp, #0
    115a:	6078      	str	r0, [r7, #4]
    115c:	e006      	b.n	116c <xputs+0x18>
    115e:	687b      	ldr	r3, [r7, #4]
    1160:	1c5a      	adds	r2, r3, #1
    1162:	607a      	str	r2, [r7, #4]
    1164:	781b      	ldrb	r3, [r3, #0]
    1166:	0018      	movs	r0, r3
    1168:	f7ff ffc8 	bl	10fc <xputc>
    116c:	687b      	ldr	r3, [r7, #4]
    116e:	781b      	ldrb	r3, [r3, #0]
    1170:	2b00      	cmp	r3, #0
    1172:	d1f4      	bne.n	115e <xputs+0xa>
    1174:	46c0      	nop			; (mov r8, r8)
    1176:	46bd      	mov	sp, r7
    1178:	b002      	add	sp, #8
    117a:	bd80      	pop	{r7, pc}

0000117c <xfputs>:
    117c:	b580      	push	{r7, lr}
    117e:	b084      	sub	sp, #16
    1180:	af00      	add	r7, sp, #0
    1182:	6078      	str	r0, [r7, #4]
    1184:	6039      	str	r1, [r7, #0]
    1186:	4b0c      	ldr	r3, [pc, #48]	; (11b8 <xfputs+0x3c>)
    1188:	681b      	ldr	r3, [r3, #0]
    118a:	60fb      	str	r3, [r7, #12]
    118c:	4b0a      	ldr	r3, [pc, #40]	; (11b8 <xfputs+0x3c>)
    118e:	687a      	ldr	r2, [r7, #4]
    1190:	601a      	str	r2, [r3, #0]
    1192:	e006      	b.n	11a2 <xfputs+0x26>
    1194:	683b      	ldr	r3, [r7, #0]
    1196:	1c5a      	adds	r2, r3, #1
    1198:	603a      	str	r2, [r7, #0]
    119a:	781b      	ldrb	r3, [r3, #0]
    119c:	0018      	movs	r0, r3
    119e:	f7ff ffad 	bl	10fc <xputc>
    11a2:	683b      	ldr	r3, [r7, #0]
    11a4:	781b      	ldrb	r3, [r3, #0]
    11a6:	2b00      	cmp	r3, #0
    11a8:	d1f4      	bne.n	1194 <xfputs+0x18>
    11aa:	4b03      	ldr	r3, [pc, #12]	; (11b8 <xfputs+0x3c>)
    11ac:	68fa      	ldr	r2, [r7, #12]
    11ae:	601a      	str	r2, [r3, #0]
    11b0:	46c0      	nop			; (mov r8, r8)
    11b2:	46bd      	mov	sp, r7
    11b4:	b004      	add	sp, #16
    11b6:	bd80      	pop	{r7, pc}
    11b8:	200008f8 	.word	0x200008f8

000011bc <xvprintf>:
    11bc:	b580      	push	{r7, lr}
    11be:	b08e      	sub	sp, #56	; 0x38
    11c0:	af00      	add	r7, sp, #0
    11c2:	6078      	str	r0, [r7, #4]
    11c4:	6039      	str	r1, [r7, #0]
    11c6:	687b      	ldr	r3, [r7, #4]
    11c8:	1c5a      	adds	r2, r3, #1
    11ca:	607a      	str	r2, [r7, #4]
    11cc:	221f      	movs	r2, #31
    11ce:	18ba      	adds	r2, r7, r2
    11d0:	781b      	ldrb	r3, [r3, #0]
    11d2:	7013      	strb	r3, [r2, #0]
    11d4:	231f      	movs	r3, #31
    11d6:	18fb      	adds	r3, r7, r3
    11d8:	781b      	ldrb	r3, [r3, #0]
    11da:	2b00      	cmp	r3, #0
    11dc:	d100      	bne.n	11e0 <xvprintf+0x24>
    11de:	e172      	b.n	14c6 <xvprintf+0x30a>
    11e0:	231f      	movs	r3, #31
    11e2:	18fb      	adds	r3, r7, r3
    11e4:	781b      	ldrb	r3, [r3, #0]
    11e6:	2b25      	cmp	r3, #37	; 0x25
    11e8:	d006      	beq.n	11f8 <xvprintf+0x3c>
    11ea:	231f      	movs	r3, #31
    11ec:	18fb      	adds	r3, r7, r3
    11ee:	781b      	ldrb	r3, [r3, #0]
    11f0:	0018      	movs	r0, r3
    11f2:	f7ff ff83 	bl	10fc <xputc>
    11f6:	e165      	b.n	14c4 <xvprintf+0x308>
    11f8:	2300      	movs	r3, #0
    11fa:	627b      	str	r3, [r7, #36]	; 0x24
    11fc:	687b      	ldr	r3, [r7, #4]
    11fe:	1c5a      	adds	r2, r3, #1
    1200:	607a      	str	r2, [r7, #4]
    1202:	221f      	movs	r2, #31
    1204:	18ba      	adds	r2, r7, r2
    1206:	781b      	ldrb	r3, [r3, #0]
    1208:	7013      	strb	r3, [r2, #0]
    120a:	231f      	movs	r3, #31
    120c:	18fb      	adds	r3, r7, r3
    120e:	781b      	ldrb	r3, [r3, #0]
    1210:	2b30      	cmp	r3, #48	; 0x30
    1212:	d109      	bne.n	1228 <xvprintf+0x6c>
    1214:	2301      	movs	r3, #1
    1216:	627b      	str	r3, [r7, #36]	; 0x24
    1218:	687b      	ldr	r3, [r7, #4]
    121a:	1c5a      	adds	r2, r3, #1
    121c:	607a      	str	r2, [r7, #4]
    121e:	221f      	movs	r2, #31
    1220:	18ba      	adds	r2, r7, r2
    1222:	781b      	ldrb	r3, [r3, #0]
    1224:	7013      	strb	r3, [r2, #0]
    1226:	e00d      	b.n	1244 <xvprintf+0x88>
    1228:	231f      	movs	r3, #31
    122a:	18fb      	adds	r3, r7, r3
    122c:	781b      	ldrb	r3, [r3, #0]
    122e:	2b2d      	cmp	r3, #45	; 0x2d
    1230:	d108      	bne.n	1244 <xvprintf+0x88>
    1232:	2302      	movs	r3, #2
    1234:	627b      	str	r3, [r7, #36]	; 0x24
    1236:	687b      	ldr	r3, [r7, #4]
    1238:	1c5a      	adds	r2, r3, #1
    123a:	607a      	str	r2, [r7, #4]
    123c:	221f      	movs	r2, #31
    123e:	18ba      	adds	r2, r7, r2
    1240:	781b      	ldrb	r3, [r3, #0]
    1242:	7013      	strb	r3, [r2, #0]
    1244:	2300      	movs	r3, #0
    1246:	62bb      	str	r3, [r7, #40]	; 0x28
    1248:	e012      	b.n	1270 <xvprintf+0xb4>
    124a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    124c:	0013      	movs	r3, r2
    124e:	009b      	lsls	r3, r3, #2
    1250:	189b      	adds	r3, r3, r2
    1252:	005b      	lsls	r3, r3, #1
    1254:	001a      	movs	r2, r3
    1256:	231f      	movs	r3, #31
    1258:	18fb      	adds	r3, r7, r3
    125a:	781b      	ldrb	r3, [r3, #0]
    125c:	18d3      	adds	r3, r2, r3
    125e:	3b30      	subs	r3, #48	; 0x30
    1260:	62bb      	str	r3, [r7, #40]	; 0x28
    1262:	687b      	ldr	r3, [r7, #4]
    1264:	1c5a      	adds	r2, r3, #1
    1266:	607a      	str	r2, [r7, #4]
    1268:	221f      	movs	r2, #31
    126a:	18ba      	adds	r2, r7, r2
    126c:	781b      	ldrb	r3, [r3, #0]
    126e:	7013      	strb	r3, [r2, #0]
    1270:	231f      	movs	r3, #31
    1272:	18fb      	adds	r3, r7, r3
    1274:	781b      	ldrb	r3, [r3, #0]
    1276:	2b2f      	cmp	r3, #47	; 0x2f
    1278:	d904      	bls.n	1284 <xvprintf+0xc8>
    127a:	231f      	movs	r3, #31
    127c:	18fb      	adds	r3, r7, r3
    127e:	781b      	ldrb	r3, [r3, #0]
    1280:	2b39      	cmp	r3, #57	; 0x39
    1282:	d9e2      	bls.n	124a <xvprintf+0x8e>
    1284:	231f      	movs	r3, #31
    1286:	18fb      	adds	r3, r7, r3
    1288:	781b      	ldrb	r3, [r3, #0]
    128a:	2b6c      	cmp	r3, #108	; 0x6c
    128c:	d004      	beq.n	1298 <xvprintf+0xdc>
    128e:	231f      	movs	r3, #31
    1290:	18fb      	adds	r3, r7, r3
    1292:	781b      	ldrb	r3, [r3, #0]
    1294:	2b4c      	cmp	r3, #76	; 0x4c
    1296:	d10a      	bne.n	12ae <xvprintf+0xf2>
    1298:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    129a:	2204      	movs	r2, #4
    129c:	4313      	orrs	r3, r2
    129e:	627b      	str	r3, [r7, #36]	; 0x24
    12a0:	687b      	ldr	r3, [r7, #4]
    12a2:	1c5a      	adds	r2, r3, #1
    12a4:	607a      	str	r2, [r7, #4]
    12a6:	221f      	movs	r2, #31
    12a8:	18ba      	adds	r2, r7, r2
    12aa:	781b      	ldrb	r3, [r3, #0]
    12ac:	7013      	strb	r3, [r2, #0]
    12ae:	231f      	movs	r3, #31
    12b0:	18fb      	adds	r3, r7, r3
    12b2:	781b      	ldrb	r3, [r3, #0]
    12b4:	2b00      	cmp	r3, #0
    12b6:	d100      	bne.n	12ba <xvprintf+0xfe>
    12b8:	e107      	b.n	14ca <xvprintf+0x30e>
    12ba:	231e      	movs	r3, #30
    12bc:	18fb      	adds	r3, r7, r3
    12be:	221f      	movs	r2, #31
    12c0:	18ba      	adds	r2, r7, r2
    12c2:	7812      	ldrb	r2, [r2, #0]
    12c4:	701a      	strb	r2, [r3, #0]
    12c6:	231e      	movs	r3, #30
    12c8:	18fb      	adds	r3, r7, r3
    12ca:	781b      	ldrb	r3, [r3, #0]
    12cc:	2b60      	cmp	r3, #96	; 0x60
    12ce:	d906      	bls.n	12de <xvprintf+0x122>
    12d0:	231e      	movs	r3, #30
    12d2:	18fb      	adds	r3, r7, r3
    12d4:	221e      	movs	r2, #30
    12d6:	18ba      	adds	r2, r7, r2
    12d8:	7812      	ldrb	r2, [r2, #0]
    12da:	3a20      	subs	r2, #32
    12dc:	701a      	strb	r2, [r3, #0]
    12de:	231e      	movs	r3, #30
    12e0:	18fb      	adds	r3, r7, r3
    12e2:	781b      	ldrb	r3, [r3, #0]
    12e4:	3b42      	subs	r3, #66	; 0x42
    12e6:	2b16      	cmp	r3, #22
    12e8:	d847      	bhi.n	137a <xvprintf+0x1be>
    12ea:	009a      	lsls	r2, r3, #2
    12ec:	4b79      	ldr	r3, [pc, #484]	; (14d4 <xvprintf+0x318>)
    12ee:	18d3      	adds	r3, r2, r3
    12f0:	681b      	ldr	r3, [r3, #0]
    12f2:	469f      	mov	pc, r3
    12f4:	683b      	ldr	r3, [r7, #0]
    12f6:	1d1a      	adds	r2, r3, #4
    12f8:	603a      	str	r2, [r7, #0]
    12fa:	681b      	ldr	r3, [r3, #0]
    12fc:	61bb      	str	r3, [r7, #24]
    12fe:	2300      	movs	r3, #0
    1300:	62fb      	str	r3, [r7, #44]	; 0x2c
    1302:	e002      	b.n	130a <xvprintf+0x14e>
    1304:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1306:	3301      	adds	r3, #1
    1308:	62fb      	str	r3, [r7, #44]	; 0x2c
    130a:	69ba      	ldr	r2, [r7, #24]
    130c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    130e:	18d3      	adds	r3, r2, r3
    1310:	781b      	ldrb	r3, [r3, #0]
    1312:	2b00      	cmp	r3, #0
    1314:	d1f6      	bne.n	1304 <xvprintf+0x148>
    1316:	e002      	b.n	131e <xvprintf+0x162>
    1318:	2020      	movs	r0, #32
    131a:	f7ff feef 	bl	10fc <xputc>
    131e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1320:	2202      	movs	r2, #2
    1322:	4013      	ands	r3, r2
    1324:	d105      	bne.n	1332 <xvprintf+0x176>
    1326:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1328:	1c5a      	adds	r2, r3, #1
    132a:	62fa      	str	r2, [r7, #44]	; 0x2c
    132c:	6aba      	ldr	r2, [r7, #40]	; 0x28
    132e:	4293      	cmp	r3, r2
    1330:	d3f2      	bcc.n	1318 <xvprintf+0x15c>
    1332:	69bb      	ldr	r3, [r7, #24]
    1334:	0018      	movs	r0, r3
    1336:	f7ff ff0d 	bl	1154 <xputs>
    133a:	e002      	b.n	1342 <xvprintf+0x186>
    133c:	2020      	movs	r0, #32
    133e:	f7ff fedd 	bl	10fc <xputc>
    1342:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1344:	1c5a      	adds	r2, r3, #1
    1346:	62fa      	str	r2, [r7, #44]	; 0x2c
    1348:	6aba      	ldr	r2, [r7, #40]	; 0x28
    134a:	4293      	cmp	r3, r2
    134c:	d3f6      	bcc.n	133c <xvprintf+0x180>
    134e:	e0b9      	b.n	14c4 <xvprintf+0x308>
    1350:	683b      	ldr	r3, [r7, #0]
    1352:	1d1a      	adds	r2, r3, #4
    1354:	603a      	str	r2, [r7, #0]
    1356:	681b      	ldr	r3, [r3, #0]
    1358:	b2db      	uxtb	r3, r3
    135a:	0018      	movs	r0, r3
    135c:	f7ff fece 	bl	10fc <xputc>
    1360:	e0b0      	b.n	14c4 <xvprintf+0x308>
    1362:	2302      	movs	r3, #2
    1364:	637b      	str	r3, [r7, #52]	; 0x34
    1366:	e00f      	b.n	1388 <xvprintf+0x1cc>
    1368:	2308      	movs	r3, #8
    136a:	637b      	str	r3, [r7, #52]	; 0x34
    136c:	e00c      	b.n	1388 <xvprintf+0x1cc>
    136e:	230a      	movs	r3, #10
    1370:	637b      	str	r3, [r7, #52]	; 0x34
    1372:	e009      	b.n	1388 <xvprintf+0x1cc>
    1374:	2310      	movs	r3, #16
    1376:	637b      	str	r3, [r7, #52]	; 0x34
    1378:	e006      	b.n	1388 <xvprintf+0x1cc>
    137a:	231f      	movs	r3, #31
    137c:	18fb      	adds	r3, r7, r3
    137e:	781b      	ldrb	r3, [r3, #0]
    1380:	0018      	movs	r0, r3
    1382:	f7ff febb 	bl	10fc <xputc>
    1386:	e09d      	b.n	14c4 <xvprintf+0x308>
    1388:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    138a:	2204      	movs	r2, #4
    138c:	4013      	ands	r3, r2
    138e:	d004      	beq.n	139a <xvprintf+0x1de>
    1390:	683b      	ldr	r3, [r7, #0]
    1392:	1d1a      	adds	r2, r3, #4
    1394:	603a      	str	r2, [r7, #0]
    1396:	681b      	ldr	r3, [r3, #0]
    1398:	e00d      	b.n	13b6 <xvprintf+0x1fa>
    139a:	231e      	movs	r3, #30
    139c:	18fb      	adds	r3, r7, r3
    139e:	781b      	ldrb	r3, [r3, #0]
    13a0:	2b44      	cmp	r3, #68	; 0x44
    13a2:	d104      	bne.n	13ae <xvprintf+0x1f2>
    13a4:	683b      	ldr	r3, [r7, #0]
    13a6:	1d1a      	adds	r2, r3, #4
    13a8:	603a      	str	r2, [r7, #0]
    13aa:	681b      	ldr	r3, [r3, #0]
    13ac:	e003      	b.n	13b6 <xvprintf+0x1fa>
    13ae:	683b      	ldr	r3, [r7, #0]
    13b0:	1d1a      	adds	r2, r3, #4
    13b2:	603a      	str	r2, [r7, #0]
    13b4:	681b      	ldr	r3, [r3, #0]
    13b6:	623b      	str	r3, [r7, #32]
    13b8:	231e      	movs	r3, #30
    13ba:	18fb      	adds	r3, r7, r3
    13bc:	781b      	ldrb	r3, [r3, #0]
    13be:	2b44      	cmp	r3, #68	; 0x44
    13c0:	d109      	bne.n	13d6 <xvprintf+0x21a>
    13c2:	6a3b      	ldr	r3, [r7, #32]
    13c4:	2b00      	cmp	r3, #0
    13c6:	da06      	bge.n	13d6 <xvprintf+0x21a>
    13c8:	6a3b      	ldr	r3, [r7, #32]
    13ca:	425b      	negs	r3, r3
    13cc:	623b      	str	r3, [r7, #32]
    13ce:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13d0:	2208      	movs	r2, #8
    13d2:	4313      	orrs	r3, r2
    13d4:	627b      	str	r3, [r7, #36]	; 0x24
    13d6:	2300      	movs	r3, #0
    13d8:	633b      	str	r3, [r7, #48]	; 0x30
    13da:	6a3b      	ldr	r3, [r7, #32]
    13dc:	6b79      	ldr	r1, [r7, #52]	; 0x34
    13de:	0018      	movs	r0, r3
    13e0:	f003 f834 	bl	444c <__aeabi_uidivmod>
    13e4:	000b      	movs	r3, r1
    13e6:	001a      	movs	r2, r3
    13e8:	231e      	movs	r3, #30
    13ea:	18fb      	adds	r3, r7, r3
    13ec:	701a      	strb	r2, [r3, #0]
    13ee:	6b79      	ldr	r1, [r7, #52]	; 0x34
    13f0:	6a38      	ldr	r0, [r7, #32]
    13f2:	f002 ffa5 	bl	4340 <__aeabi_uidiv>
    13f6:	0003      	movs	r3, r0
    13f8:	623b      	str	r3, [r7, #32]
    13fa:	231e      	movs	r3, #30
    13fc:	18fb      	adds	r3, r7, r3
    13fe:	781b      	ldrb	r3, [r3, #0]
    1400:	2b09      	cmp	r3, #9
    1402:	d90e      	bls.n	1422 <xvprintf+0x266>
    1404:	231f      	movs	r3, #31
    1406:	18fb      	adds	r3, r7, r3
    1408:	781b      	ldrb	r3, [r3, #0]
    140a:	2b78      	cmp	r3, #120	; 0x78
    140c:	d101      	bne.n	1412 <xvprintf+0x256>
    140e:	2327      	movs	r3, #39	; 0x27
    1410:	e000      	b.n	1414 <xvprintf+0x258>
    1412:	2307      	movs	r3, #7
    1414:	221e      	movs	r2, #30
    1416:	18ba      	adds	r2, r7, r2
    1418:	211e      	movs	r1, #30
    141a:	1879      	adds	r1, r7, r1
    141c:	7809      	ldrb	r1, [r1, #0]
    141e:	185b      	adds	r3, r3, r1
    1420:	7013      	strb	r3, [r2, #0]
    1422:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1424:	1c5a      	adds	r2, r3, #1
    1426:	633a      	str	r2, [r7, #48]	; 0x30
    1428:	221e      	movs	r2, #30
    142a:	18ba      	adds	r2, r7, r2
    142c:	7812      	ldrb	r2, [r2, #0]
    142e:	3230      	adds	r2, #48	; 0x30
    1430:	b2d1      	uxtb	r1, r2
    1432:	2208      	movs	r2, #8
    1434:	18ba      	adds	r2, r7, r2
    1436:	54d1      	strb	r1, [r2, r3]
    1438:	6a3b      	ldr	r3, [r7, #32]
    143a:	2b00      	cmp	r3, #0
    143c:	d002      	beq.n	1444 <xvprintf+0x288>
    143e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1440:	2b0f      	cmp	r3, #15
    1442:	d9ca      	bls.n	13da <xvprintf+0x21e>
    1444:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1446:	2208      	movs	r2, #8
    1448:	4013      	ands	r3, r2
    144a:	d006      	beq.n	145a <xvprintf+0x29e>
    144c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    144e:	1c5a      	adds	r2, r3, #1
    1450:	633a      	str	r2, [r7, #48]	; 0x30
    1452:	2208      	movs	r2, #8
    1454:	18ba      	adds	r2, r7, r2
    1456:	212d      	movs	r1, #45	; 0x2d
    1458:	54d1      	strb	r1, [r2, r3]
    145a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    145c:	62fb      	str	r3, [r7, #44]	; 0x2c
    145e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1460:	2201      	movs	r2, #1
    1462:	4013      	ands	r3, r2
    1464:	d001      	beq.n	146a <xvprintf+0x2ae>
    1466:	2230      	movs	r2, #48	; 0x30
    1468:	e000      	b.n	146c <xvprintf+0x2b0>
    146a:	2220      	movs	r2, #32
    146c:	231e      	movs	r3, #30
    146e:	18fb      	adds	r3, r7, r3
    1470:	701a      	strb	r2, [r3, #0]
    1472:	e005      	b.n	1480 <xvprintf+0x2c4>
    1474:	231e      	movs	r3, #30
    1476:	18fb      	adds	r3, r7, r3
    1478:	781b      	ldrb	r3, [r3, #0]
    147a:	0018      	movs	r0, r3
    147c:	f7ff fe3e 	bl	10fc <xputc>
    1480:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1482:	2202      	movs	r2, #2
    1484:	4013      	ands	r3, r2
    1486:	d105      	bne.n	1494 <xvprintf+0x2d8>
    1488:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    148a:	1c5a      	adds	r2, r3, #1
    148c:	62fa      	str	r2, [r7, #44]	; 0x2c
    148e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1490:	4293      	cmp	r3, r2
    1492:	d3ef      	bcc.n	1474 <xvprintf+0x2b8>
    1494:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1496:	3b01      	subs	r3, #1
    1498:	633b      	str	r3, [r7, #48]	; 0x30
    149a:	2308      	movs	r3, #8
    149c:	18fa      	adds	r2, r7, r3
    149e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14a0:	18d3      	adds	r3, r2, r3
    14a2:	781b      	ldrb	r3, [r3, #0]
    14a4:	0018      	movs	r0, r3
    14a6:	f7ff fe29 	bl	10fc <xputc>
    14aa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14ac:	2b00      	cmp	r3, #0
    14ae:	d1f1      	bne.n	1494 <xvprintf+0x2d8>
    14b0:	e002      	b.n	14b8 <xvprintf+0x2fc>
    14b2:	2020      	movs	r0, #32
    14b4:	f7ff fe22 	bl	10fc <xputc>
    14b8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14ba:	1c5a      	adds	r2, r3, #1
    14bc:	62fa      	str	r2, [r7, #44]	; 0x2c
    14be:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14c0:	4293      	cmp	r3, r2
    14c2:	d3f6      	bcc.n	14b2 <xvprintf+0x2f6>
    14c4:	e67f      	b.n	11c6 <xvprintf+0xa>
    14c6:	46c0      	nop			; (mov r8, r8)
    14c8:	e000      	b.n	14cc <xvprintf+0x310>
    14ca:	46c0      	nop			; (mov r8, r8)
    14cc:	46c0      	nop			; (mov r8, r8)
    14ce:	46bd      	mov	sp, r7
    14d0:	b00e      	add	sp, #56	; 0x38
    14d2:	bd80      	pop	{r7, pc}
    14d4:	00008358 	.word	0x00008358

000014d8 <xprintf>:
    14d8:	b40f      	push	{r0, r1, r2, r3}
    14da:	b580      	push	{r7, lr}
    14dc:	b082      	sub	sp, #8
    14de:	af00      	add	r7, sp, #0
    14e0:	2314      	movs	r3, #20
    14e2:	18fb      	adds	r3, r7, r3
    14e4:	607b      	str	r3, [r7, #4]
    14e6:	687a      	ldr	r2, [r7, #4]
    14e8:	693b      	ldr	r3, [r7, #16]
    14ea:	0011      	movs	r1, r2
    14ec:	0018      	movs	r0, r3
    14ee:	f7ff fe65 	bl	11bc <xvprintf>
    14f2:	46c0      	nop			; (mov r8, r8)
    14f4:	46bd      	mov	sp, r7
    14f6:	b002      	add	sp, #8
    14f8:	bc80      	pop	{r7}
    14fa:	bc08      	pop	{r3}
    14fc:	b004      	add	sp, #16
    14fe:	4718      	bx	r3

00001500 <xsprintf>:
    1500:	b40e      	push	{r1, r2, r3}
    1502:	b580      	push	{r7, lr}
    1504:	b085      	sub	sp, #20
    1506:	af00      	add	r7, sp, #0
    1508:	6078      	str	r0, [r7, #4]
    150a:	4b0d      	ldr	r3, [pc, #52]	; (1540 <xsprintf+0x40>)
    150c:	687a      	ldr	r2, [r7, #4]
    150e:	601a      	str	r2, [r3, #0]
    1510:	2320      	movs	r3, #32
    1512:	18fb      	adds	r3, r7, r3
    1514:	60fb      	str	r3, [r7, #12]
    1516:	68fa      	ldr	r2, [r7, #12]
    1518:	69fb      	ldr	r3, [r7, #28]
    151a:	0011      	movs	r1, r2
    151c:	0018      	movs	r0, r3
    151e:	f7ff fe4d 	bl	11bc <xvprintf>
    1522:	4b07      	ldr	r3, [pc, #28]	; (1540 <xsprintf+0x40>)
    1524:	681b      	ldr	r3, [r3, #0]
    1526:	2200      	movs	r2, #0
    1528:	701a      	strb	r2, [r3, #0]
    152a:	4b05      	ldr	r3, [pc, #20]	; (1540 <xsprintf+0x40>)
    152c:	2200      	movs	r2, #0
    152e:	601a      	str	r2, [r3, #0]
    1530:	46c0      	nop			; (mov r8, r8)
    1532:	46bd      	mov	sp, r7
    1534:	b005      	add	sp, #20
    1536:	bc80      	pop	{r7}
    1538:	bc08      	pop	{r3}
    153a:	b003      	add	sp, #12
    153c:	4718      	bx	r3
    153e:	46c0      	nop			; (mov r8, r8)
    1540:	200008fc 	.word	0x200008fc

00001544 <xfprintf>:
    1544:	b40e      	push	{r1, r2, r3}
    1546:	b580      	push	{r7, lr}
    1548:	b085      	sub	sp, #20
    154a:	af00      	add	r7, sp, #0
    154c:	6078      	str	r0, [r7, #4]
    154e:	4b0c      	ldr	r3, [pc, #48]	; (1580 <xfprintf+0x3c>)
    1550:	681b      	ldr	r3, [r3, #0]
    1552:	60fb      	str	r3, [r7, #12]
    1554:	4b0a      	ldr	r3, [pc, #40]	; (1580 <xfprintf+0x3c>)
    1556:	687a      	ldr	r2, [r7, #4]
    1558:	601a      	str	r2, [r3, #0]
    155a:	2320      	movs	r3, #32
    155c:	18fb      	adds	r3, r7, r3
    155e:	60bb      	str	r3, [r7, #8]
    1560:	68ba      	ldr	r2, [r7, #8]
    1562:	69fb      	ldr	r3, [r7, #28]
    1564:	0011      	movs	r1, r2
    1566:	0018      	movs	r0, r3
    1568:	f7ff fe28 	bl	11bc <xvprintf>
    156c:	4b04      	ldr	r3, [pc, #16]	; (1580 <xfprintf+0x3c>)
    156e:	68fa      	ldr	r2, [r7, #12]
    1570:	601a      	str	r2, [r3, #0]
    1572:	46c0      	nop			; (mov r8, r8)
    1574:	46bd      	mov	sp, r7
    1576:	b005      	add	sp, #20
    1578:	bc80      	pop	{r7}
    157a:	bc08      	pop	{r3}
    157c:	b003      	add	sp, #12
    157e:	4718      	bx	r3
    1580:	200008f8 	.word	0x200008f8

00001584 <put_dump>:
    1584:	b580      	push	{r7, lr}
    1586:	b088      	sub	sp, #32
    1588:	af00      	add	r7, sp, #0
    158a:	60f8      	str	r0, [r7, #12]
    158c:	60b9      	str	r1, [r7, #8]
    158e:	607a      	str	r2, [r7, #4]
    1590:	603b      	str	r3, [r7, #0]
    1592:	68ba      	ldr	r2, [r7, #8]
    1594:	4b38      	ldr	r3, [pc, #224]	; (1678 <put_dump+0xf4>)
    1596:	0011      	movs	r1, r2
    1598:	0018      	movs	r0, r3
    159a:	f7ff ff9d 	bl	14d8 <xprintf>
    159e:	683b      	ldr	r3, [r7, #0]
    15a0:	2b02      	cmp	r3, #2
    15a2:	d03c      	beq.n	161e <put_dump+0x9a>
    15a4:	2b04      	cmp	r3, #4
    15a6:	d04d      	beq.n	1644 <put_dump+0xc0>
    15a8:	2b01      	cmp	r3, #1
    15aa:	d15d      	bne.n	1668 <put_dump+0xe4>
    15ac:	68fb      	ldr	r3, [r7, #12]
    15ae:	613b      	str	r3, [r7, #16]
    15b0:	2300      	movs	r3, #0
    15b2:	61fb      	str	r3, [r7, #28]
    15b4:	e00c      	b.n	15d0 <put_dump+0x4c>
    15b6:	69fb      	ldr	r3, [r7, #28]
    15b8:	693a      	ldr	r2, [r7, #16]
    15ba:	18d3      	adds	r3, r2, r3
    15bc:	781b      	ldrb	r3, [r3, #0]
    15be:	001a      	movs	r2, r3
    15c0:	4b2e      	ldr	r3, [pc, #184]	; (167c <put_dump+0xf8>)
    15c2:	0011      	movs	r1, r2
    15c4:	0018      	movs	r0, r3
    15c6:	f7ff ff87 	bl	14d8 <xprintf>
    15ca:	69fb      	ldr	r3, [r7, #28]
    15cc:	3301      	adds	r3, #1
    15ce:	61fb      	str	r3, [r7, #28]
    15d0:	69fa      	ldr	r2, [r7, #28]
    15d2:	687b      	ldr	r3, [r7, #4]
    15d4:	429a      	cmp	r2, r3
    15d6:	dbee      	blt.n	15b6 <put_dump+0x32>
    15d8:	2020      	movs	r0, #32
    15da:	f7ff fd8f 	bl	10fc <xputc>
    15de:	2300      	movs	r3, #0
    15e0:	61fb      	str	r3, [r7, #28]
    15e2:	e017      	b.n	1614 <put_dump+0x90>
    15e4:	69fb      	ldr	r3, [r7, #28]
    15e6:	693a      	ldr	r2, [r7, #16]
    15e8:	18d3      	adds	r3, r2, r3
    15ea:	781b      	ldrb	r3, [r3, #0]
    15ec:	2b1f      	cmp	r3, #31
    15ee:	d90a      	bls.n	1606 <put_dump+0x82>
    15f0:	69fb      	ldr	r3, [r7, #28]
    15f2:	693a      	ldr	r2, [r7, #16]
    15f4:	18d3      	adds	r3, r2, r3
    15f6:	781b      	ldrb	r3, [r3, #0]
    15f8:	2b7e      	cmp	r3, #126	; 0x7e
    15fa:	d804      	bhi.n	1606 <put_dump+0x82>
    15fc:	69fb      	ldr	r3, [r7, #28]
    15fe:	693a      	ldr	r2, [r7, #16]
    1600:	18d3      	adds	r3, r2, r3
    1602:	781b      	ldrb	r3, [r3, #0]
    1604:	e000      	b.n	1608 <put_dump+0x84>
    1606:	232e      	movs	r3, #46	; 0x2e
    1608:	0018      	movs	r0, r3
    160a:	f7ff fd77 	bl	10fc <xputc>
    160e:	69fb      	ldr	r3, [r7, #28]
    1610:	3301      	adds	r3, #1
    1612:	61fb      	str	r3, [r7, #28]
    1614:	69fa      	ldr	r2, [r7, #28]
    1616:	687b      	ldr	r3, [r7, #4]
    1618:	429a      	cmp	r2, r3
    161a:	dbe3      	blt.n	15e4 <put_dump+0x60>
    161c:	e024      	b.n	1668 <put_dump+0xe4>
    161e:	68fb      	ldr	r3, [r7, #12]
    1620:	61bb      	str	r3, [r7, #24]
    1622:	69bb      	ldr	r3, [r7, #24]
    1624:	1c9a      	adds	r2, r3, #2
    1626:	61ba      	str	r2, [r7, #24]
    1628:	881b      	ldrh	r3, [r3, #0]
    162a:	001a      	movs	r2, r3
    162c:	4b14      	ldr	r3, [pc, #80]	; (1680 <put_dump+0xfc>)
    162e:	0011      	movs	r1, r2
    1630:	0018      	movs	r0, r3
    1632:	f7ff ff51 	bl	14d8 <xprintf>
    1636:	687b      	ldr	r3, [r7, #4]
    1638:	3b01      	subs	r3, #1
    163a:	607b      	str	r3, [r7, #4]
    163c:	687b      	ldr	r3, [r7, #4]
    163e:	2b00      	cmp	r3, #0
    1640:	d1ef      	bne.n	1622 <put_dump+0x9e>
    1642:	e011      	b.n	1668 <put_dump+0xe4>
    1644:	68fb      	ldr	r3, [r7, #12]
    1646:	617b      	str	r3, [r7, #20]
    1648:	697b      	ldr	r3, [r7, #20]
    164a:	1d1a      	adds	r2, r3, #4
    164c:	617a      	str	r2, [r7, #20]
    164e:	681a      	ldr	r2, [r3, #0]
    1650:	4b0c      	ldr	r3, [pc, #48]	; (1684 <put_dump+0x100>)
    1652:	0011      	movs	r1, r2
    1654:	0018      	movs	r0, r3
    1656:	f7ff ff3f 	bl	14d8 <xprintf>
    165a:	687b      	ldr	r3, [r7, #4]
    165c:	3b01      	subs	r3, #1
    165e:	607b      	str	r3, [r7, #4]
    1660:	687b      	ldr	r3, [r7, #4]
    1662:	2b00      	cmp	r3, #0
    1664:	d1f0      	bne.n	1648 <put_dump+0xc4>
    1666:	46c0      	nop			; (mov r8, r8)
    1668:	200a      	movs	r0, #10
    166a:	f7ff fd47 	bl	10fc <xputc>
    166e:	46c0      	nop			; (mov r8, r8)
    1670:	46bd      	mov	sp, r7
    1672:	b008      	add	sp, #32
    1674:	bd80      	pop	{r7, pc}
    1676:	46c0      	nop			; (mov r8, r8)
    1678:	000083b4 	.word	0x000083b4
    167c:	000083bc 	.word	0x000083bc
    1680:	000083c4 	.word	0x000083c4
    1684:	000083cc 	.word	0x000083cc

00001688 <xgets>:
    1688:	b580      	push	{r7, lr}
    168a:	b084      	sub	sp, #16
    168c:	af00      	add	r7, sp, #0
    168e:	6078      	str	r0, [r7, #4]
    1690:	6039      	str	r1, [r7, #0]
    1692:	4b24      	ldr	r3, [pc, #144]	; (1724 <xgets+0x9c>)
    1694:	681b      	ldr	r3, [r3, #0]
    1696:	2b00      	cmp	r3, #0
    1698:	d101      	bne.n	169e <xgets+0x16>
    169a:	2300      	movs	r3, #0
    169c:	e03e      	b.n	171c <xgets+0x94>
    169e:	2300      	movs	r3, #0
    16a0:	60fb      	str	r3, [r7, #12]
    16a2:	4b20      	ldr	r3, [pc, #128]	; (1724 <xgets+0x9c>)
    16a4:	681b      	ldr	r3, [r3, #0]
    16a6:	4798      	blx	r3
    16a8:	0003      	movs	r3, r0
    16aa:	60bb      	str	r3, [r7, #8]
    16ac:	68bb      	ldr	r3, [r7, #8]
    16ae:	2b00      	cmp	r3, #0
    16b0:	d101      	bne.n	16b6 <xgets+0x2e>
    16b2:	2300      	movs	r3, #0
    16b4:	e032      	b.n	171c <xgets+0x94>
    16b6:	68bb      	ldr	r3, [r7, #8]
    16b8:	2b0d      	cmp	r3, #13
    16ba:	d025      	beq.n	1708 <xgets+0x80>
    16bc:	68bb      	ldr	r3, [r7, #8]
    16be:	2b08      	cmp	r3, #8
    16c0:	d10b      	bne.n	16da <xgets+0x52>
    16c2:	68fb      	ldr	r3, [r7, #12]
    16c4:	2b00      	cmp	r3, #0
    16c6:	d008      	beq.n	16da <xgets+0x52>
    16c8:	68fb      	ldr	r3, [r7, #12]
    16ca:	3b01      	subs	r3, #1
    16cc:	60fb      	str	r3, [r7, #12]
    16ce:	68bb      	ldr	r3, [r7, #8]
    16d0:	b2db      	uxtb	r3, r3
    16d2:	0018      	movs	r0, r3
    16d4:	f7ff fd12 	bl	10fc <xputc>
    16d8:	e015      	b.n	1706 <xgets+0x7e>
    16da:	68bb      	ldr	r3, [r7, #8]
    16dc:	2b1f      	cmp	r3, #31
    16de:	dde0      	ble.n	16a2 <xgets+0x1a>
    16e0:	683b      	ldr	r3, [r7, #0]
    16e2:	1e5a      	subs	r2, r3, #1
    16e4:	68fb      	ldr	r3, [r7, #12]
    16e6:	429a      	cmp	r2, r3
    16e8:	dddb      	ble.n	16a2 <xgets+0x1a>
    16ea:	68fb      	ldr	r3, [r7, #12]
    16ec:	1c5a      	adds	r2, r3, #1
    16ee:	60fa      	str	r2, [r7, #12]
    16f0:	001a      	movs	r2, r3
    16f2:	687b      	ldr	r3, [r7, #4]
    16f4:	189b      	adds	r3, r3, r2
    16f6:	68ba      	ldr	r2, [r7, #8]
    16f8:	b2d2      	uxtb	r2, r2
    16fa:	701a      	strb	r2, [r3, #0]
    16fc:	68bb      	ldr	r3, [r7, #8]
    16fe:	b2db      	uxtb	r3, r3
    1700:	0018      	movs	r0, r3
    1702:	f7ff fcfb 	bl	10fc <xputc>
    1706:	e7cc      	b.n	16a2 <xgets+0x1a>
    1708:	46c0      	nop			; (mov r8, r8)
    170a:	68fb      	ldr	r3, [r7, #12]
    170c:	687a      	ldr	r2, [r7, #4]
    170e:	18d3      	adds	r3, r2, r3
    1710:	2200      	movs	r2, #0
    1712:	701a      	strb	r2, [r3, #0]
    1714:	200a      	movs	r0, #10
    1716:	f7ff fcf1 	bl	10fc <xputc>
    171a:	2301      	movs	r3, #1
    171c:	0018      	movs	r0, r3
    171e:	46bd      	mov	sp, r7
    1720:	b004      	add	sp, #16
    1722:	bd80      	pop	{r7, pc}
    1724:	20000900 	.word	0x20000900

00001728 <xfgets>:
    1728:	b580      	push	{r7, lr}
    172a:	b086      	sub	sp, #24
    172c:	af00      	add	r7, sp, #0
    172e:	60f8      	str	r0, [r7, #12]
    1730:	60b9      	str	r1, [r7, #8]
    1732:	607a      	str	r2, [r7, #4]
    1734:	4b0a      	ldr	r3, [pc, #40]	; (1760 <xfgets+0x38>)
    1736:	681b      	ldr	r3, [r3, #0]
    1738:	617b      	str	r3, [r7, #20]
    173a:	4b09      	ldr	r3, [pc, #36]	; (1760 <xfgets+0x38>)
    173c:	68fa      	ldr	r2, [r7, #12]
    173e:	601a      	str	r2, [r3, #0]
    1740:	687a      	ldr	r2, [r7, #4]
    1742:	68bb      	ldr	r3, [r7, #8]
    1744:	0011      	movs	r1, r2
    1746:	0018      	movs	r0, r3
    1748:	f7ff ff9e 	bl	1688 <xgets>
    174c:	0003      	movs	r3, r0
    174e:	613b      	str	r3, [r7, #16]
    1750:	4b03      	ldr	r3, [pc, #12]	; (1760 <xfgets+0x38>)
    1752:	697a      	ldr	r2, [r7, #20]
    1754:	601a      	str	r2, [r3, #0]
    1756:	693b      	ldr	r3, [r7, #16]
    1758:	0018      	movs	r0, r3
    175a:	46bd      	mov	sp, r7
    175c:	b006      	add	sp, #24
    175e:	bd80      	pop	{r7, pc}
    1760:	20000900 	.word	0x20000900

00001764 <xatoi>:
    1764:	b580      	push	{r7, lr}
    1766:	b084      	sub	sp, #16
    1768:	af00      	add	r7, sp, #0
    176a:	6078      	str	r0, [r7, #4]
    176c:	6039      	str	r1, [r7, #0]
    176e:	2309      	movs	r3, #9
    1770:	18fb      	adds	r3, r7, r3
    1772:	2200      	movs	r2, #0
    1774:	701a      	strb	r2, [r3, #0]
    1776:	683b      	ldr	r3, [r7, #0]
    1778:	2200      	movs	r2, #0
    177a:	601a      	str	r2, [r3, #0]
    177c:	e004      	b.n	1788 <xatoi+0x24>
    177e:	687b      	ldr	r3, [r7, #4]
    1780:	681b      	ldr	r3, [r3, #0]
    1782:	1c5a      	adds	r2, r3, #1
    1784:	687b      	ldr	r3, [r7, #4]
    1786:	601a      	str	r2, [r3, #0]
    1788:	687b      	ldr	r3, [r7, #4]
    178a:	681a      	ldr	r2, [r3, #0]
    178c:	230b      	movs	r3, #11
    178e:	18fb      	adds	r3, r7, r3
    1790:	7812      	ldrb	r2, [r2, #0]
    1792:	701a      	strb	r2, [r3, #0]
    1794:	230b      	movs	r3, #11
    1796:	18fb      	adds	r3, r7, r3
    1798:	781b      	ldrb	r3, [r3, #0]
    179a:	2b20      	cmp	r3, #32
    179c:	d0ef      	beq.n	177e <xatoi+0x1a>
    179e:	230b      	movs	r3, #11
    17a0:	18fb      	adds	r3, r7, r3
    17a2:	781b      	ldrb	r3, [r3, #0]
    17a4:	2b2d      	cmp	r3, #45	; 0x2d
    17a6:	d10e      	bne.n	17c6 <xatoi+0x62>
    17a8:	2309      	movs	r3, #9
    17aa:	18fb      	adds	r3, r7, r3
    17ac:	2201      	movs	r2, #1
    17ae:	701a      	strb	r2, [r3, #0]
    17b0:	687b      	ldr	r3, [r7, #4]
    17b2:	681b      	ldr	r3, [r3, #0]
    17b4:	1c5a      	adds	r2, r3, #1
    17b6:	687b      	ldr	r3, [r7, #4]
    17b8:	601a      	str	r2, [r3, #0]
    17ba:	687b      	ldr	r3, [r7, #4]
    17bc:	681a      	ldr	r2, [r3, #0]
    17be:	230b      	movs	r3, #11
    17c0:	18fb      	adds	r3, r7, r3
    17c2:	7812      	ldrb	r2, [r2, #0]
    17c4:	701a      	strb	r2, [r3, #0]
    17c6:	230b      	movs	r3, #11
    17c8:	18fb      	adds	r3, r7, r3
    17ca:	781b      	ldrb	r3, [r3, #0]
    17cc:	2b30      	cmp	r3, #48	; 0x30
    17ce:	d149      	bne.n	1864 <xatoi+0x100>
    17d0:	687b      	ldr	r3, [r7, #4]
    17d2:	681b      	ldr	r3, [r3, #0]
    17d4:	1c5a      	adds	r2, r3, #1
    17d6:	687b      	ldr	r3, [r7, #4]
    17d8:	601a      	str	r2, [r3, #0]
    17da:	687b      	ldr	r3, [r7, #4]
    17dc:	681a      	ldr	r2, [r3, #0]
    17de:	230b      	movs	r3, #11
    17e0:	18fb      	adds	r3, r7, r3
    17e2:	7812      	ldrb	r2, [r2, #0]
    17e4:	701a      	strb	r2, [r3, #0]
    17e6:	230b      	movs	r3, #11
    17e8:	18fb      	adds	r3, r7, r3
    17ea:	781b      	ldrb	r3, [r3, #0]
    17ec:	2b62      	cmp	r3, #98	; 0x62
    17ee:	d011      	beq.n	1814 <xatoi+0xb0>
    17f0:	2b78      	cmp	r3, #120	; 0x78
    17f2:	d11f      	bne.n	1834 <xatoi+0xd0>
    17f4:	230a      	movs	r3, #10
    17f6:	18fb      	adds	r3, r7, r3
    17f8:	2210      	movs	r2, #16
    17fa:	701a      	strb	r2, [r3, #0]
    17fc:	687b      	ldr	r3, [r7, #4]
    17fe:	681b      	ldr	r3, [r3, #0]
    1800:	1c5a      	adds	r2, r3, #1
    1802:	687b      	ldr	r3, [r7, #4]
    1804:	601a      	str	r2, [r3, #0]
    1806:	687b      	ldr	r3, [r7, #4]
    1808:	681a      	ldr	r2, [r3, #0]
    180a:	230b      	movs	r3, #11
    180c:	18fb      	adds	r3, r7, r3
    180e:	7812      	ldrb	r2, [r2, #0]
    1810:	701a      	strb	r2, [r3, #0]
    1812:	e037      	b.n	1884 <xatoi+0x120>
    1814:	230a      	movs	r3, #10
    1816:	18fb      	adds	r3, r7, r3
    1818:	2202      	movs	r2, #2
    181a:	701a      	strb	r2, [r3, #0]
    181c:	687b      	ldr	r3, [r7, #4]
    181e:	681b      	ldr	r3, [r3, #0]
    1820:	1c5a      	adds	r2, r3, #1
    1822:	687b      	ldr	r3, [r7, #4]
    1824:	601a      	str	r2, [r3, #0]
    1826:	687b      	ldr	r3, [r7, #4]
    1828:	681a      	ldr	r2, [r3, #0]
    182a:	230b      	movs	r3, #11
    182c:	18fb      	adds	r3, r7, r3
    182e:	7812      	ldrb	r2, [r2, #0]
    1830:	701a      	strb	r2, [r3, #0]
    1832:	e027      	b.n	1884 <xatoi+0x120>
    1834:	230b      	movs	r3, #11
    1836:	18fb      	adds	r3, r7, r3
    1838:	781b      	ldrb	r3, [r3, #0]
    183a:	2b20      	cmp	r3, #32
    183c:	d801      	bhi.n	1842 <xatoi+0xde>
    183e:	2301      	movs	r3, #1
    1840:	e079      	b.n	1936 <xatoi+0x1d2>
    1842:	230b      	movs	r3, #11
    1844:	18fb      	adds	r3, r7, r3
    1846:	781b      	ldrb	r3, [r3, #0]
    1848:	2b2f      	cmp	r3, #47	; 0x2f
    184a:	d904      	bls.n	1856 <xatoi+0xf2>
    184c:	230b      	movs	r3, #11
    184e:	18fb      	adds	r3, r7, r3
    1850:	781b      	ldrb	r3, [r3, #0]
    1852:	2b39      	cmp	r3, #57	; 0x39
    1854:	d901      	bls.n	185a <xatoi+0xf6>
    1856:	2300      	movs	r3, #0
    1858:	e06d      	b.n	1936 <xatoi+0x1d2>
    185a:	230a      	movs	r3, #10
    185c:	18fb      	adds	r3, r7, r3
    185e:	2208      	movs	r2, #8
    1860:	701a      	strb	r2, [r3, #0]
    1862:	e00f      	b.n	1884 <xatoi+0x120>
    1864:	230b      	movs	r3, #11
    1866:	18fb      	adds	r3, r7, r3
    1868:	781b      	ldrb	r3, [r3, #0]
    186a:	2b2f      	cmp	r3, #47	; 0x2f
    186c:	d904      	bls.n	1878 <xatoi+0x114>
    186e:	230b      	movs	r3, #11
    1870:	18fb      	adds	r3, r7, r3
    1872:	781b      	ldrb	r3, [r3, #0]
    1874:	2b39      	cmp	r3, #57	; 0x39
    1876:	d901      	bls.n	187c <xatoi+0x118>
    1878:	2300      	movs	r3, #0
    187a:	e05c      	b.n	1936 <xatoi+0x1d2>
    187c:	230a      	movs	r3, #10
    187e:	18fb      	adds	r3, r7, r3
    1880:	220a      	movs	r2, #10
    1882:	701a      	strb	r2, [r3, #0]
    1884:	2300      	movs	r3, #0
    1886:	60fb      	str	r3, [r7, #12]
    1888:	e044      	b.n	1914 <xatoi+0x1b0>
    188a:	230b      	movs	r3, #11
    188c:	18fb      	adds	r3, r7, r3
    188e:	781b      	ldrb	r3, [r3, #0]
    1890:	2b60      	cmp	r3, #96	; 0x60
    1892:	d906      	bls.n	18a2 <xatoi+0x13e>
    1894:	230b      	movs	r3, #11
    1896:	18fb      	adds	r3, r7, r3
    1898:	220b      	movs	r2, #11
    189a:	18ba      	adds	r2, r7, r2
    189c:	7812      	ldrb	r2, [r2, #0]
    189e:	3a20      	subs	r2, #32
    18a0:	701a      	strb	r2, [r3, #0]
    18a2:	230b      	movs	r3, #11
    18a4:	18fb      	adds	r3, r7, r3
    18a6:	220b      	movs	r2, #11
    18a8:	18ba      	adds	r2, r7, r2
    18aa:	7812      	ldrb	r2, [r2, #0]
    18ac:	3a30      	subs	r2, #48	; 0x30
    18ae:	701a      	strb	r2, [r3, #0]
    18b0:	230b      	movs	r3, #11
    18b2:	18fb      	adds	r3, r7, r3
    18b4:	781b      	ldrb	r3, [r3, #0]
    18b6:	2b10      	cmp	r3, #16
    18b8:	d90d      	bls.n	18d6 <xatoi+0x172>
    18ba:	230b      	movs	r3, #11
    18bc:	18fb      	adds	r3, r7, r3
    18be:	220b      	movs	r2, #11
    18c0:	18ba      	adds	r2, r7, r2
    18c2:	7812      	ldrb	r2, [r2, #0]
    18c4:	3a07      	subs	r2, #7
    18c6:	701a      	strb	r2, [r3, #0]
    18c8:	230b      	movs	r3, #11
    18ca:	18fb      	adds	r3, r7, r3
    18cc:	781b      	ldrb	r3, [r3, #0]
    18ce:	2b09      	cmp	r3, #9
    18d0:	d801      	bhi.n	18d6 <xatoi+0x172>
    18d2:	2300      	movs	r3, #0
    18d4:	e02f      	b.n	1936 <xatoi+0x1d2>
    18d6:	230b      	movs	r3, #11
    18d8:	18fa      	adds	r2, r7, r3
    18da:	230a      	movs	r3, #10
    18dc:	18fb      	adds	r3, r7, r3
    18de:	7812      	ldrb	r2, [r2, #0]
    18e0:	781b      	ldrb	r3, [r3, #0]
    18e2:	429a      	cmp	r2, r3
    18e4:	d301      	bcc.n	18ea <xatoi+0x186>
    18e6:	2300      	movs	r3, #0
    18e8:	e025      	b.n	1936 <xatoi+0x1d2>
    18ea:	230a      	movs	r3, #10
    18ec:	18fb      	adds	r3, r7, r3
    18ee:	781b      	ldrb	r3, [r3, #0]
    18f0:	68fa      	ldr	r2, [r7, #12]
    18f2:	435a      	muls	r2, r3
    18f4:	230b      	movs	r3, #11
    18f6:	18fb      	adds	r3, r7, r3
    18f8:	781b      	ldrb	r3, [r3, #0]
    18fa:	18d3      	adds	r3, r2, r3
    18fc:	60fb      	str	r3, [r7, #12]
    18fe:	687b      	ldr	r3, [r7, #4]
    1900:	681b      	ldr	r3, [r3, #0]
    1902:	1c5a      	adds	r2, r3, #1
    1904:	687b      	ldr	r3, [r7, #4]
    1906:	601a      	str	r2, [r3, #0]
    1908:	687b      	ldr	r3, [r7, #4]
    190a:	681a      	ldr	r2, [r3, #0]
    190c:	230b      	movs	r3, #11
    190e:	18fb      	adds	r3, r7, r3
    1910:	7812      	ldrb	r2, [r2, #0]
    1912:	701a      	strb	r2, [r3, #0]
    1914:	230b      	movs	r3, #11
    1916:	18fb      	adds	r3, r7, r3
    1918:	781b      	ldrb	r3, [r3, #0]
    191a:	2b20      	cmp	r3, #32
    191c:	d8b5      	bhi.n	188a <xatoi+0x126>
    191e:	2309      	movs	r3, #9
    1920:	18fb      	adds	r3, r7, r3
    1922:	781b      	ldrb	r3, [r3, #0]
    1924:	2b00      	cmp	r3, #0
    1926:	d002      	beq.n	192e <xatoi+0x1ca>
    1928:	68fb      	ldr	r3, [r7, #12]
    192a:	425b      	negs	r3, r3
    192c:	60fb      	str	r3, [r7, #12]
    192e:	68fa      	ldr	r2, [r7, #12]
    1930:	683b      	ldr	r3, [r7, #0]
    1932:	601a      	str	r2, [r3, #0]
    1934:	2301      	movs	r3, #1
    1936:	0018      	movs	r0, r3
    1938:	46bd      	mov	sp, r7
    193a:	b004      	add	sp, #16
    193c:	bd80      	pop	{r7, pc}
    193e:	46c0      	nop			; (mov r8, r8)

00001940 <os_idle_demon>:
    1940:	b580      	push	{r7, lr}
    1942:	af00      	add	r7, sp, #0
    1944:	e7fe      	b.n	1944 <os_idle_demon+0x4>
    1946:	46c0      	nop			; (mov r8, r8)

00001948 <os_error>:
    1948:	b580      	push	{r7, lr}
    194a:	b082      	sub	sp, #8
    194c:	af00      	add	r7, sp, #0
    194e:	6078      	str	r0, [r7, #4]
    1950:	687b      	ldr	r3, [r7, #4]
    1952:	2b02      	cmp	r3, #2
    1954:	d009      	beq.n	196a <os_error+0x22>
    1956:	d802      	bhi.n	195e <os_error+0x16>
    1958:	2b01      	cmp	r3, #1
    195a:	d005      	beq.n	1968 <os_error+0x20>
    195c:	e008      	b.n	1970 <os_error+0x28>
    195e:	2b03      	cmp	r3, #3
    1960:	d004      	beq.n	196c <os_error+0x24>
    1962:	2b04      	cmp	r3, #4
    1964:	d003      	beq.n	196e <os_error+0x26>
    1966:	e003      	b.n	1970 <os_error+0x28>
    1968:	e002      	b.n	1970 <os_error+0x28>
    196a:	e001      	b.n	1970 <os_error+0x28>
    196c:	e000      	b.n	1970 <os_error+0x28>
    196e:	46c0      	nop			; (mov r8, r8)
    1970:	e7fe      	b.n	1970 <os_error+0x28>
    1972:	46c0      	nop			; (mov r8, r8)

00001974 <software_init_hook>:
    1974:	2000      	movs	r0, #0
    1976:	2100      	movs	r1, #0
    1978:	4604      	mov	r4, r0
    197a:	460d      	mov	r5, r1
    197c:	4808      	ldr	r0, [pc, #32]	; (19a0 <software_init_hook+0x2c>)
    197e:	f002 ff4b 	bl	4818 <atexit>
    1982:	f002 ff7b 	bl	487c <__libc_init_array>
    1986:	4620      	mov	r0, r4
    1988:	4629      	mov	r1, r5
    198a:	f003 fe09 	bl	55a0 <osKernelInitialize>
    198e:	4805      	ldr	r0, [pc, #20]	; (19a4 <software_init_hook+0x30>)
    1990:	2100      	movs	r1, #0
    1992:	f003 ff97 	bl	58c4 <osThreadCreate>
    1996:	f003 fe9f 	bl	56d8 <osKernelStart>
    199a:	f002 ff45 	bl	4828 <exit>
    199e:	0000      	.short	0x0000
    19a0:	00004849 	.word	0x00004849
    19a4:	0000842c 	.word	0x0000842c

000019a8 <__NVIC_EnableIRQ>:
    19a8:	b580      	push	{r7, lr}
    19aa:	b082      	sub	sp, #8
    19ac:	af00      	add	r7, sp, #0
    19ae:	0002      	movs	r2, r0
    19b0:	1dfb      	adds	r3, r7, #7
    19b2:	701a      	strb	r2, [r3, #0]
    19b4:	1dfb      	adds	r3, r7, #7
    19b6:	781b      	ldrb	r3, [r3, #0]
    19b8:	2b7f      	cmp	r3, #127	; 0x7f
    19ba:	d809      	bhi.n	19d0 <__NVIC_EnableIRQ+0x28>
    19bc:	4b06      	ldr	r3, [pc, #24]	; (19d8 <__NVIC_EnableIRQ+0x30>)
    19be:	1dfa      	adds	r2, r7, #7
    19c0:	7812      	ldrb	r2, [r2, #0]
    19c2:	0011      	movs	r1, r2
    19c4:	221f      	movs	r2, #31
    19c6:	400a      	ands	r2, r1
    19c8:	2101      	movs	r1, #1
    19ca:	4091      	lsls	r1, r2
    19cc:	000a      	movs	r2, r1
    19ce:	601a      	str	r2, [r3, #0]
    19d0:	46c0      	nop			; (mov r8, r8)
    19d2:	46bd      	mov	sp, r7
    19d4:	b002      	add	sp, #8
    19d6:	bd80      	pop	{r7, pc}
    19d8:	e000e100 	.word	0xe000e100

000019dc <__NVIC_ClearPendingIRQ>:
    19dc:	b580      	push	{r7, lr}
    19de:	b082      	sub	sp, #8
    19e0:	af00      	add	r7, sp, #0
    19e2:	0002      	movs	r2, r0
    19e4:	1dfb      	adds	r3, r7, #7
    19e6:	701a      	strb	r2, [r3, #0]
    19e8:	1dfb      	adds	r3, r7, #7
    19ea:	781b      	ldrb	r3, [r3, #0]
    19ec:	2b7f      	cmp	r3, #127	; 0x7f
    19ee:	d80a      	bhi.n	1a06 <__NVIC_ClearPendingIRQ+0x2a>
    19f0:	4907      	ldr	r1, [pc, #28]	; (1a10 <__NVIC_ClearPendingIRQ+0x34>)
    19f2:	1dfb      	adds	r3, r7, #7
    19f4:	781b      	ldrb	r3, [r3, #0]
    19f6:	001a      	movs	r2, r3
    19f8:	231f      	movs	r3, #31
    19fa:	4013      	ands	r3, r2
    19fc:	2201      	movs	r2, #1
    19fe:	409a      	lsls	r2, r3
    1a00:	23c0      	movs	r3, #192	; 0xc0
    1a02:	005b      	lsls	r3, r3, #1
    1a04:	50ca      	str	r2, [r1, r3]
    1a06:	46c0      	nop			; (mov r8, r8)
    1a08:	46bd      	mov	sp, r7
    1a0a:	b002      	add	sp, #8
    1a0c:	bd80      	pop	{r7, pc}
    1a0e:	46c0      	nop			; (mov r8, r8)
    1a10:	e000e100 	.word	0xe000e100

00001a14 <__NVIC_SetPriority>:
    1a14:	b5b0      	push	{r4, r5, r7, lr}
    1a16:	b082      	sub	sp, #8
    1a18:	af00      	add	r7, sp, #0
    1a1a:	0002      	movs	r2, r0
    1a1c:	6039      	str	r1, [r7, #0]
    1a1e:	1dfb      	adds	r3, r7, #7
    1a20:	701a      	strb	r2, [r3, #0]
    1a22:	1dfb      	adds	r3, r7, #7
    1a24:	781b      	ldrb	r3, [r3, #0]
    1a26:	2b7f      	cmp	r3, #127	; 0x7f
    1a28:	d828      	bhi.n	1a7c <__NVIC_SetPriority+0x68>
    1a2a:	4c2f      	ldr	r4, [pc, #188]	; (1ae8 <__NVIC_SetPriority+0xd4>)
    1a2c:	1dfb      	adds	r3, r7, #7
    1a2e:	781b      	ldrb	r3, [r3, #0]
    1a30:	b25b      	sxtb	r3, r3
    1a32:	089b      	lsrs	r3, r3, #2
    1a34:	492c      	ldr	r1, [pc, #176]	; (1ae8 <__NVIC_SetPriority+0xd4>)
    1a36:	1dfa      	adds	r2, r7, #7
    1a38:	7812      	ldrb	r2, [r2, #0]
    1a3a:	b252      	sxtb	r2, r2
    1a3c:	0892      	lsrs	r2, r2, #2
    1a3e:	32c0      	adds	r2, #192	; 0xc0
    1a40:	0092      	lsls	r2, r2, #2
    1a42:	5852      	ldr	r2, [r2, r1]
    1a44:	1df9      	adds	r1, r7, #7
    1a46:	7809      	ldrb	r1, [r1, #0]
    1a48:	0008      	movs	r0, r1
    1a4a:	2103      	movs	r1, #3
    1a4c:	4001      	ands	r1, r0
    1a4e:	00c9      	lsls	r1, r1, #3
    1a50:	20ff      	movs	r0, #255	; 0xff
    1a52:	4088      	lsls	r0, r1
    1a54:	0001      	movs	r1, r0
    1a56:	43c9      	mvns	r1, r1
    1a58:	4011      	ands	r1, r2
    1a5a:	683a      	ldr	r2, [r7, #0]
    1a5c:	0192      	lsls	r2, r2, #6
    1a5e:	20ff      	movs	r0, #255	; 0xff
    1a60:	4010      	ands	r0, r2
    1a62:	1dfa      	adds	r2, r7, #7
    1a64:	7812      	ldrb	r2, [r2, #0]
    1a66:	0015      	movs	r5, r2
    1a68:	2203      	movs	r2, #3
    1a6a:	402a      	ands	r2, r5
    1a6c:	00d2      	lsls	r2, r2, #3
    1a6e:	4090      	lsls	r0, r2
    1a70:	0002      	movs	r2, r0
    1a72:	430a      	orrs	r2, r1
    1a74:	33c0      	adds	r3, #192	; 0xc0
    1a76:	009b      	lsls	r3, r3, #2
    1a78:	511a      	str	r2, [r3, r4]
    1a7a:	e031      	b.n	1ae0 <__NVIC_SetPriority+0xcc>
    1a7c:	4c1b      	ldr	r4, [pc, #108]	; (1aec <__NVIC_SetPriority+0xd8>)
    1a7e:	1dfb      	adds	r3, r7, #7
    1a80:	781b      	ldrb	r3, [r3, #0]
    1a82:	001a      	movs	r2, r3
    1a84:	230f      	movs	r3, #15
    1a86:	4013      	ands	r3, r2
    1a88:	3b08      	subs	r3, #8
    1a8a:	0899      	lsrs	r1, r3, #2
    1a8c:	4a17      	ldr	r2, [pc, #92]	; (1aec <__NVIC_SetPriority+0xd8>)
    1a8e:	1dfb      	adds	r3, r7, #7
    1a90:	781b      	ldrb	r3, [r3, #0]
    1a92:	0018      	movs	r0, r3
    1a94:	230f      	movs	r3, #15
    1a96:	4003      	ands	r3, r0
    1a98:	3b08      	subs	r3, #8
    1a9a:	089b      	lsrs	r3, r3, #2
    1a9c:	3306      	adds	r3, #6
    1a9e:	009b      	lsls	r3, r3, #2
    1aa0:	18d3      	adds	r3, r2, r3
    1aa2:	3304      	adds	r3, #4
    1aa4:	681b      	ldr	r3, [r3, #0]
    1aa6:	1dfa      	adds	r2, r7, #7
    1aa8:	7812      	ldrb	r2, [r2, #0]
    1aaa:	0010      	movs	r0, r2
    1aac:	2203      	movs	r2, #3
    1aae:	4002      	ands	r2, r0
    1ab0:	00d2      	lsls	r2, r2, #3
    1ab2:	20ff      	movs	r0, #255	; 0xff
    1ab4:	4090      	lsls	r0, r2
    1ab6:	0002      	movs	r2, r0
    1ab8:	43d2      	mvns	r2, r2
    1aba:	401a      	ands	r2, r3
    1abc:	683b      	ldr	r3, [r7, #0]
    1abe:	019b      	lsls	r3, r3, #6
    1ac0:	20ff      	movs	r0, #255	; 0xff
    1ac2:	4018      	ands	r0, r3
    1ac4:	1dfb      	adds	r3, r7, #7
    1ac6:	781b      	ldrb	r3, [r3, #0]
    1ac8:	001d      	movs	r5, r3
    1aca:	2303      	movs	r3, #3
    1acc:	402b      	ands	r3, r5
    1ace:	00db      	lsls	r3, r3, #3
    1ad0:	4098      	lsls	r0, r3
    1ad2:	0003      	movs	r3, r0
    1ad4:	431a      	orrs	r2, r3
    1ad6:	1d8b      	adds	r3, r1, #6
    1ad8:	009b      	lsls	r3, r3, #2
    1ada:	18e3      	adds	r3, r4, r3
    1adc:	3304      	adds	r3, #4
    1ade:	601a      	str	r2, [r3, #0]
    1ae0:	46c0      	nop			; (mov r8, r8)
    1ae2:	46bd      	mov	sp, r7
    1ae4:	b002      	add	sp, #8
    1ae6:	bdb0      	pop	{r4, r5, r7, pc}
    1ae8:	e000e100 	.word	0xe000e100
    1aec:	e000ed00 	.word	0xe000ed00

00001af0 <PortConfig>:
    1af0:	b580      	push	{r7, lr}
    1af2:	af00      	add	r7, sp, #0
    1af4:	4b44      	ldr	r3, [pc, #272]	; (1c08 <PortConfig+0x118>)
    1af6:	4a44      	ldr	r2, [pc, #272]	; (1c08 <PortConfig+0x118>)
    1af8:	68d2      	ldr	r2, [r2, #12]
    1afa:	21de      	movs	r1, #222	; 0xde
    1afc:	0209      	lsls	r1, r1, #8
    1afe:	430a      	orrs	r2, r1
    1b00:	60da      	str	r2, [r3, #12]
    1b02:	4b41      	ldr	r3, [pc, #260]	; (1c08 <PortConfig+0x118>)
    1b04:	4a40      	ldr	r2, [pc, #256]	; (1c08 <PortConfig+0x118>)
    1b06:	6812      	ldr	r2, [r2, #0]
    1b08:	4940      	ldr	r1, [pc, #256]	; (1c0c <PortConfig+0x11c>)
    1b0a:	400a      	ands	r2, r1
    1b0c:	601a      	str	r2, [r3, #0]
    1b0e:	4b3e      	ldr	r3, [pc, #248]	; (1c08 <PortConfig+0x118>)
    1b10:	4a3d      	ldr	r2, [pc, #244]	; (1c08 <PortConfig+0x118>)
    1b12:	6852      	ldr	r2, [r2, #4]
    1b14:	21de      	movs	r1, #222	; 0xde
    1b16:	0209      	lsls	r1, r1, #8
    1b18:	430a      	orrs	r2, r1
    1b1a:	605a      	str	r2, [r3, #4]
    1b1c:	4b3a      	ldr	r3, [pc, #232]	; (1c08 <PortConfig+0x118>)
    1b1e:	4a3a      	ldr	r2, [pc, #232]	; (1c08 <PortConfig+0x118>)
    1b20:	6992      	ldr	r2, [r2, #24]
    1b22:	493b      	ldr	r1, [pc, #236]	; (1c10 <PortConfig+0x120>)
    1b24:	430a      	orrs	r2, r1
    1b26:	619a      	str	r2, [r3, #24]
    1b28:	4b37      	ldr	r3, [pc, #220]	; (1c08 <PortConfig+0x118>)
    1b2a:	4a37      	ldr	r2, [pc, #220]	; (1c08 <PortConfig+0x118>)
    1b2c:	68d2      	ldr	r2, [r2, #12]
    1b2e:	21ff      	movs	r1, #255	; 0xff
    1b30:	0049      	lsls	r1, r1, #1
    1b32:	430a      	orrs	r2, r1
    1b34:	60da      	str	r2, [r3, #12]
    1b36:	4b34      	ldr	r3, [pc, #208]	; (1c08 <PortConfig+0x118>)
    1b38:	4a33      	ldr	r2, [pc, #204]	; (1c08 <PortConfig+0x118>)
    1b3a:	6812      	ldr	r2, [r2, #0]
    1b3c:	4935      	ldr	r1, [pc, #212]	; (1c14 <PortConfig+0x124>)
    1b3e:	400a      	ands	r2, r1
    1b40:	601a      	str	r2, [r3, #0]
    1b42:	4b31      	ldr	r3, [pc, #196]	; (1c08 <PortConfig+0x118>)
    1b44:	4a30      	ldr	r2, [pc, #192]	; (1c08 <PortConfig+0x118>)
    1b46:	6852      	ldr	r2, [r2, #4]
    1b48:	21ff      	movs	r1, #255	; 0xff
    1b4a:	0049      	lsls	r1, r1, #1
    1b4c:	430a      	orrs	r2, r1
    1b4e:	605a      	str	r2, [r3, #4]
    1b50:	4b2d      	ldr	r3, [pc, #180]	; (1c08 <PortConfig+0x118>)
    1b52:	4a2d      	ldr	r2, [pc, #180]	; (1c08 <PortConfig+0x118>)
    1b54:	6992      	ldr	r2, [r2, #24]
    1b56:	4930      	ldr	r1, [pc, #192]	; (1c18 <PortConfig+0x128>)
    1b58:	430a      	orrs	r2, r1
    1b5a:	619a      	str	r2, [r3, #24]
    1b5c:	4b2f      	ldr	r3, [pc, #188]	; (1c1c <PortConfig+0x12c>)
    1b5e:	4a2f      	ldr	r2, [pc, #188]	; (1c1c <PortConfig+0x12c>)
    1b60:	6892      	ldr	r2, [r2, #8]
    1b62:	21a0      	movs	r1, #160	; 0xa0
    1b64:	0549      	lsls	r1, r1, #21
    1b66:	430a      	orrs	r2, r1
    1b68:	609a      	str	r2, [r3, #8]
    1b6a:	4b2c      	ldr	r3, [pc, #176]	; (1c1c <PortConfig+0x12c>)
    1b6c:	4a2b      	ldr	r2, [pc, #172]	; (1c1c <PortConfig+0x12c>)
    1b6e:	68d2      	ldr	r2, [r2, #12]
    1b70:	21e0      	movs	r1, #224	; 0xe0
    1b72:	0209      	lsls	r1, r1, #8
    1b74:	430a      	orrs	r2, r1
    1b76:	60da      	str	r2, [r3, #12]
    1b78:	4b28      	ldr	r3, [pc, #160]	; (1c1c <PortConfig+0x12c>)
    1b7a:	4a28      	ldr	r2, [pc, #160]	; (1c1c <PortConfig+0x12c>)
    1b7c:	6992      	ldr	r2, [r2, #24]
    1b7e:	21fc      	movs	r1, #252	; 0xfc
    1b80:	0609      	lsls	r1, r1, #24
    1b82:	430a      	orrs	r2, r1
    1b84:	619a      	str	r2, [r3, #24]
    1b86:	4b25      	ldr	r3, [pc, #148]	; (1c1c <PortConfig+0x12c>)
    1b88:	4a24      	ldr	r2, [pc, #144]	; (1c1c <PortConfig+0x12c>)
    1b8a:	6812      	ldr	r2, [r2, #0]
    1b8c:	4924      	ldr	r1, [pc, #144]	; (1c20 <PortConfig+0x130>)
    1b8e:	400a      	ands	r2, r1
    1b90:	601a      	str	r2, [r3, #0]
    1b92:	4b22      	ldr	r3, [pc, #136]	; (1c1c <PortConfig+0x12c>)
    1b94:	4a21      	ldr	r2, [pc, #132]	; (1c1c <PortConfig+0x12c>)
    1b96:	6852      	ldr	r2, [r2, #4]
    1b98:	2180      	movs	r1, #128	; 0x80
    1b9a:	0209      	lsls	r1, r1, #8
    1b9c:	430a      	orrs	r2, r1
    1b9e:	605a      	str	r2, [r3, #4]
    1ba0:	4b20      	ldr	r3, [pc, #128]	; (1c24 <PortConfig+0x134>)
    1ba2:	4a20      	ldr	r2, [pc, #128]	; (1c24 <PortConfig+0x134>)
    1ba4:	6892      	ldr	r2, [r2, #8]
    1ba6:	4920      	ldr	r1, [pc, #128]	; (1c28 <PortConfig+0x138>)
    1ba8:	400a      	ands	r2, r1
    1baa:	609a      	str	r2, [r3, #8]
    1bac:	4b1d      	ldr	r3, [pc, #116]	; (1c24 <PortConfig+0x134>)
    1bae:	4a1d      	ldr	r2, [pc, #116]	; (1c24 <PortConfig+0x134>)
    1bb0:	6892      	ldr	r2, [r2, #8]
    1bb2:	21a0      	movs	r1, #160	; 0xa0
    1bb4:	0049      	lsls	r1, r1, #1
    1bb6:	430a      	orrs	r2, r1
    1bb8:	609a      	str	r2, [r3, #8]
    1bba:	4b1a      	ldr	r3, [pc, #104]	; (1c24 <PortConfig+0x134>)
    1bbc:	4a19      	ldr	r2, [pc, #100]	; (1c24 <PortConfig+0x134>)
    1bbe:	68d2      	ldr	r2, [r2, #12]
    1bc0:	2118      	movs	r1, #24
    1bc2:	430a      	orrs	r2, r1
    1bc4:	60da      	str	r2, [r3, #12]
    1bc6:	4b17      	ldr	r3, [pc, #92]	; (1c24 <PortConfig+0x134>)
    1bc8:	4a16      	ldr	r2, [pc, #88]	; (1c24 <PortConfig+0x134>)
    1bca:	6992      	ldr	r2, [r2, #24]
    1bcc:	21f0      	movs	r1, #240	; 0xf0
    1bce:	0089      	lsls	r1, r1, #2
    1bd0:	430a      	orrs	r2, r1
    1bd2:	619a      	str	r2, [r3, #24]
    1bd4:	4b13      	ldr	r3, [pc, #76]	; (1c24 <PortConfig+0x134>)
    1bd6:	4a13      	ldr	r2, [pc, #76]	; (1c24 <PortConfig+0x134>)
    1bd8:	6812      	ldr	r2, [r2, #0]
    1bda:	2118      	movs	r1, #24
    1bdc:	438a      	bics	r2, r1
    1bde:	601a      	str	r2, [r3, #0]
    1be0:	4b10      	ldr	r3, [pc, #64]	; (1c24 <PortConfig+0x134>)
    1be2:	4a10      	ldr	r2, [pc, #64]	; (1c24 <PortConfig+0x134>)
    1be4:	68d2      	ldr	r2, [r2, #12]
    1be6:	2120      	movs	r1, #32
    1be8:	430a      	orrs	r2, r1
    1bea:	60da      	str	r2, [r3, #12]
    1bec:	4b0d      	ldr	r3, [pc, #52]	; (1c24 <PortConfig+0x134>)
    1bee:	4a0d      	ldr	r2, [pc, #52]	; (1c24 <PortConfig+0x134>)
    1bf0:	6892      	ldr	r2, [r2, #8]
    1bf2:	2180      	movs	r1, #128	; 0x80
    1bf4:	00c9      	lsls	r1, r1, #3
    1bf6:	430a      	orrs	r2, r1
    1bf8:	609a      	str	r2, [r3, #8]
    1bfa:	201c      	movs	r0, #28
    1bfc:	f7ff feee 	bl	19dc <__NVIC_ClearPendingIRQ>
    1c00:	46c0      	nop			; (mov r8, r8)
    1c02:	46bd      	mov	sp, r7
    1c04:	bd80      	pop	{r7, pc}
    1c06:	46c0      	nop			; (mov r8, r8)
    1c08:	400b0000 	.word	0x400b0000
    1c0c:	ffff21ff 	.word	0xffff21ff
    1c10:	f3fc0000 	.word	0xf3fc0000
    1c14:	fffffe01 	.word	0xfffffe01
    1c18:	0003fffc 	.word	0x0003fffc
    1c1c:	400c0000 	.word	0x400c0000
    1c20:	ffff1fff 	.word	0xffff1fff
    1c24:	400b8000 	.word	0x400b8000
    1c28:	fffffc3f 	.word	0xfffffc3f

00001c2c <ClkConfig>:
    1c2c:	b580      	push	{r7, lr}
    1c2e:	af00      	add	r7, sp, #0
    1c30:	4b4b      	ldr	r3, [pc, #300]	; (1d60 <ClkConfig+0x134>)
    1c32:	2280      	movs	r2, #128	; 0x80
    1c34:	0092      	lsls	r2, r2, #2
    1c36:	619a      	str	r2, [r3, #24]
    1c38:	4b4a      	ldr	r3, [pc, #296]	; (1d64 <ClkConfig+0x138>)
    1c3a:	4a4a      	ldr	r2, [pc, #296]	; (1d64 <ClkConfig+0x138>)
    1c3c:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1c3e:	2118      	movs	r1, #24
    1c40:	430a      	orrs	r2, r1
    1c42:	63da      	str	r2, [r3, #60]	; 0x3c
    1c44:	4b47      	ldr	r3, [pc, #284]	; (1d64 <ClkConfig+0x138>)
    1c46:	4a48      	ldr	r2, [pc, #288]	; (1d68 <ClkConfig+0x13c>)
    1c48:	649a      	str	r2, [r3, #72]	; 0x48
    1c4a:	4b46      	ldr	r3, [pc, #280]	; (1d64 <ClkConfig+0x138>)
    1c4c:	2201      	movs	r2, #1
    1c4e:	645a      	str	r2, [r3, #68]	; 0x44
    1c50:	4b43      	ldr	r3, [pc, #268]	; (1d60 <ClkConfig+0x134>)
    1c52:	4a43      	ldr	r2, [pc, #268]	; (1d60 <ClkConfig+0x134>)
    1c54:	6892      	ldr	r2, [r2, #8]
    1c56:	2105      	movs	r1, #5
    1c58:	430a      	orrs	r2, r1
    1c5a:	609a      	str	r2, [r3, #8]
    1c5c:	46c0      	nop			; (mov r8, r8)
    1c5e:	4b40      	ldr	r3, [pc, #256]	; (1d60 <ClkConfig+0x134>)
    1c60:	681b      	ldr	r3, [r3, #0]
    1c62:	220c      	movs	r2, #12
    1c64:	4013      	ands	r3, r2
    1c66:	2b0c      	cmp	r3, #12
    1c68:	d1f9      	bne.n	1c5e <ClkConfig+0x32>
    1c6a:	4b3d      	ldr	r3, [pc, #244]	; (1d60 <ClkConfig+0x134>)
    1c6c:	4a3c      	ldr	r2, [pc, #240]	; (1d60 <ClkConfig+0x134>)
    1c6e:	68d2      	ldr	r2, [r2, #12]
    1c70:	2102      	movs	r1, #2
    1c72:	430a      	orrs	r2, r1
    1c74:	60da      	str	r2, [r3, #12]
    1c76:	4b3a      	ldr	r3, [pc, #232]	; (1d60 <ClkConfig+0x134>)
    1c78:	4a3c      	ldr	r2, [pc, #240]	; (1d6c <ClkConfig+0x140>)
    1c7a:	605a      	str	r2, [r3, #4]
    1c7c:	46c0      	nop			; (mov r8, r8)
    1c7e:	4b38      	ldr	r3, [pc, #224]	; (1d60 <ClkConfig+0x134>)
    1c80:	681b      	ldr	r3, [r3, #0]
    1c82:	2202      	movs	r2, #2
    1c84:	4013      	ands	r3, r2
    1c86:	d0fa      	beq.n	1c7e <ClkConfig+0x52>
    1c88:	4b35      	ldr	r3, [pc, #212]	; (1d60 <ClkConfig+0x134>)
    1c8a:	4a35      	ldr	r2, [pc, #212]	; (1d60 <ClkConfig+0x134>)
    1c8c:	69d2      	ldr	r2, [r2, #28]
    1c8e:	2108      	movs	r1, #8
    1c90:	430a      	orrs	r2, r1
    1c92:	61da      	str	r2, [r3, #28]
    1c94:	4b36      	ldr	r3, [pc, #216]	; (1d70 <ClkConfig+0x144>)
    1c96:	4a36      	ldr	r2, [pc, #216]	; (1d70 <ClkConfig+0x144>)
    1c98:	6812      	ldr	r2, [r2, #0]
    1c9a:	2118      	movs	r1, #24
    1c9c:	430a      	orrs	r2, r1
    1c9e:	601a      	str	r2, [r3, #0]
    1ca0:	4b2f      	ldr	r3, [pc, #188]	; (1d60 <ClkConfig+0x134>)
    1ca2:	4a2f      	ldr	r2, [pc, #188]	; (1d60 <ClkConfig+0x134>)
    1ca4:	69d2      	ldr	r2, [r2, #28]
    1ca6:	2108      	movs	r1, #8
    1ca8:	438a      	bics	r2, r1
    1caa:	61da      	str	r2, [r3, #28]
    1cac:	4b2c      	ldr	r3, [pc, #176]	; (1d60 <ClkConfig+0x134>)
    1cae:	4a2c      	ldr	r2, [pc, #176]	; (1d60 <ClkConfig+0x134>)
    1cb0:	68d2      	ldr	r2, [r2, #12]
    1cb2:	2180      	movs	r1, #128	; 0x80
    1cb4:	0049      	lsls	r1, r1, #1
    1cb6:	430a      	orrs	r2, r1
    1cb8:	60da      	str	r2, [r3, #12]
    1cba:	4b29      	ldr	r3, [pc, #164]	; (1d60 <ClkConfig+0x134>)
    1cbc:	4a28      	ldr	r2, [pc, #160]	; (1d60 <ClkConfig+0x134>)
    1cbe:	68d2      	ldr	r2, [r2, #12]
    1cc0:	2104      	movs	r1, #4
    1cc2:	430a      	orrs	r2, r1
    1cc4:	60da      	str	r2, [r3, #12]
    1cc6:	4b26      	ldr	r3, [pc, #152]	; (1d60 <ClkConfig+0x134>)
    1cc8:	22e4      	movs	r2, #228	; 0xe4
    1cca:	0592      	lsls	r2, r2, #22
    1ccc:	635a      	str	r2, [r3, #52]	; 0x34
    1cce:	4b24      	ldr	r3, [pc, #144]	; (1d60 <ClkConfig+0x134>)
    1cd0:	4a23      	ldr	r2, [pc, #140]	; (1d60 <ClkConfig+0x134>)
    1cd2:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cd4:	2180      	movs	r1, #128	; 0x80
    1cd6:	0449      	lsls	r1, r1, #17
    1cd8:	430a      	orrs	r2, r1
    1cda:	625a      	str	r2, [r3, #36]	; 0x24
    1cdc:	4b20      	ldr	r3, [pc, #128]	; (1d60 <ClkConfig+0x134>)
    1cde:	4a20      	ldr	r2, [pc, #128]	; (1d60 <ClkConfig+0x134>)
    1ce0:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1ce2:	21ff      	movs	r1, #255	; 0xff
    1ce4:	438a      	bics	r2, r1
    1ce6:	625a      	str	r2, [r3, #36]	; 0x24
    1ce8:	4b1d      	ldr	r3, [pc, #116]	; (1d60 <ClkConfig+0x134>)
    1cea:	4a1d      	ldr	r2, [pc, #116]	; (1d60 <ClkConfig+0x134>)
    1cec:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cee:	2180      	movs	r1, #128	; 0x80
    1cf0:	0489      	lsls	r1, r1, #18
    1cf2:	430a      	orrs	r2, r1
    1cf4:	625a      	str	r2, [r3, #36]	; 0x24
    1cf6:	4b1a      	ldr	r3, [pc, #104]	; (1d60 <ClkConfig+0x134>)
    1cf8:	4a19      	ldr	r2, [pc, #100]	; (1d60 <ClkConfig+0x134>)
    1cfa:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cfc:	491d      	ldr	r1, [pc, #116]	; (1d74 <ClkConfig+0x148>)
    1cfe:	400a      	ands	r2, r1
    1d00:	625a      	str	r2, [r3, #36]	; 0x24
    1d02:	4b17      	ldr	r3, [pc, #92]	; (1d60 <ClkConfig+0x134>)
    1d04:	4a16      	ldr	r2, [pc, #88]	; (1d60 <ClkConfig+0x134>)
    1d06:	69d2      	ldr	r2, [r2, #28]
    1d08:	491b      	ldr	r1, [pc, #108]	; (1d78 <ClkConfig+0x14c>)
    1d0a:	430a      	orrs	r2, r1
    1d0c:	61da      	str	r2, [r3, #28]
    1d0e:	4b14      	ldr	r3, [pc, #80]	; (1d60 <ClkConfig+0x134>)
    1d10:	4a13      	ldr	r2, [pc, #76]	; (1d60 <ClkConfig+0x134>)
    1d12:	69d2      	ldr	r2, [r2, #28]
    1d14:	2180      	movs	r1, #128	; 0x80
    1d16:	430a      	orrs	r2, r1
    1d18:	61da      	str	r2, [r3, #28]
    1d1a:	4b11      	ldr	r3, [pc, #68]	; (1d60 <ClkConfig+0x134>)
    1d1c:	4a10      	ldr	r2, [pc, #64]	; (1d60 <ClkConfig+0x134>)
    1d1e:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d20:	2180      	movs	r1, #128	; 0x80
    1d22:	0489      	lsls	r1, r1, #18
    1d24:	430a      	orrs	r2, r1
    1d26:	629a      	str	r2, [r3, #40]	; 0x28
    1d28:	4b0d      	ldr	r3, [pc, #52]	; (1d60 <ClkConfig+0x134>)
    1d2a:	4a0d      	ldr	r2, [pc, #52]	; (1d60 <ClkConfig+0x134>)
    1d2c:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d2e:	4911      	ldr	r1, [pc, #68]	; (1d74 <ClkConfig+0x148>)
    1d30:	400a      	ands	r2, r1
    1d32:	629a      	str	r2, [r3, #40]	; 0x28
    1d34:	4b0a      	ldr	r3, [pc, #40]	; (1d60 <ClkConfig+0x134>)
    1d36:	4a0a      	ldr	r2, [pc, #40]	; (1d60 <ClkConfig+0x134>)
    1d38:	69d2      	ldr	r2, [r2, #28]
    1d3a:	2140      	movs	r1, #64	; 0x40
    1d3c:	430a      	orrs	r2, r1
    1d3e:	61da      	str	r2, [r3, #28]
    1d40:	4b07      	ldr	r3, [pc, #28]	; (1d60 <ClkConfig+0x134>)
    1d42:	4a07      	ldr	r2, [pc, #28]	; (1d60 <ClkConfig+0x134>)
    1d44:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d46:	2180      	movs	r1, #128	; 0x80
    1d48:	0449      	lsls	r1, r1, #17
    1d4a:	430a      	orrs	r2, r1
    1d4c:	629a      	str	r2, [r3, #40]	; 0x28
    1d4e:	4b04      	ldr	r3, [pc, #16]	; (1d60 <ClkConfig+0x134>)
    1d50:	4a03      	ldr	r2, [pc, #12]	; (1d60 <ClkConfig+0x134>)
    1d52:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d54:	21ff      	movs	r1, #255	; 0xff
    1d56:	438a      	bics	r2, r1
    1d58:	629a      	str	r2, [r3, #40]	; 0x28
    1d5a:	46c0      	nop			; (mov r8, r8)
    1d5c:	46bd      	mov	sp, r7
    1d5e:	bd80      	pop	{r7, pc}
    1d60:	40020000 	.word	0x40020000
    1d64:	400d8000 	.word	0x400d8000
    1d68:	000fffff 	.word	0x000fffff
    1d6c:	00000b04 	.word	0x00000b04
    1d70:	40018000 	.word	0x40018000
    1d74:	ffff00ff 	.word	0xffff00ff
    1d78:	03c0c000 	.word	0x03c0c000

00001d7c <TimerConfig>:
    1d7c:	b580      	push	{r7, lr}
    1d7e:	af00      	add	r7, sp, #0
    1d80:	4b19      	ldr	r3, [pc, #100]	; (1de8 <TimerConfig+0x6c>)
    1d82:	2200      	movs	r2, #0
    1d84:	601a      	str	r2, [r3, #0]
    1d86:	4b18      	ldr	r3, [pc, #96]	; (1de8 <TimerConfig+0x6c>)
    1d88:	225f      	movs	r2, #95	; 0x5f
    1d8a:	605a      	str	r2, [r3, #4]
    1d8c:	4b16      	ldr	r3, [pc, #88]	; (1de8 <TimerConfig+0x6c>)
    1d8e:	4a17      	ldr	r2, [pc, #92]	; (1dec <TimerConfig+0x70>)
    1d90:	609a      	str	r2, [r3, #8]
    1d92:	4b15      	ldr	r3, [pc, #84]	; (1de8 <TimerConfig+0x6c>)
    1d94:	4a14      	ldr	r2, [pc, #80]	; (1de8 <TimerConfig+0x6c>)
    1d96:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1d98:	2102      	movs	r1, #2
    1d9a:	430a      	orrs	r2, r1
    1d9c:	659a      	str	r2, [r3, #88]	; 0x58
    1d9e:	4b12      	ldr	r3, [pc, #72]	; (1de8 <TimerConfig+0x6c>)
    1da0:	4a11      	ldr	r2, [pc, #68]	; (1de8 <TimerConfig+0x6c>)
    1da2:	68d2      	ldr	r2, [r2, #12]
    1da4:	2101      	movs	r1, #1
    1da6:	430a      	orrs	r2, r1
    1da8:	60da      	str	r2, [r3, #12]
    1daa:	200e      	movs	r0, #14
    1dac:	f7ff fdfc 	bl	19a8 <__NVIC_EnableIRQ>
    1db0:	4b0f      	ldr	r3, [pc, #60]	; (1df0 <TimerConfig+0x74>)
    1db2:	2200      	movs	r2, #0
    1db4:	601a      	str	r2, [r3, #0]
    1db6:	4b0e      	ldr	r3, [pc, #56]	; (1df0 <TimerConfig+0x74>)
    1db8:	225f      	movs	r2, #95	; 0x5f
    1dba:	605a      	str	r2, [r3, #4]
    1dbc:	4b0c      	ldr	r3, [pc, #48]	; (1df0 <TimerConfig+0x74>)
    1dbe:	22ee      	movs	r2, #238	; 0xee
    1dc0:	0092      	lsls	r2, r2, #2
    1dc2:	609a      	str	r2, [r3, #8]
    1dc4:	4b0a      	ldr	r3, [pc, #40]	; (1df0 <TimerConfig+0x74>)
    1dc6:	4a0a      	ldr	r2, [pc, #40]	; (1df0 <TimerConfig+0x74>)
    1dc8:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1dca:	2102      	movs	r1, #2
    1dcc:	430a      	orrs	r2, r1
    1dce:	659a      	str	r2, [r3, #88]	; 0x58
    1dd0:	4b07      	ldr	r3, [pc, #28]	; (1df0 <TimerConfig+0x74>)
    1dd2:	4a07      	ldr	r2, [pc, #28]	; (1df0 <TimerConfig+0x74>)
    1dd4:	68d2      	ldr	r2, [r2, #12]
    1dd6:	2101      	movs	r1, #1
    1dd8:	430a      	orrs	r2, r1
    1dda:	60da      	str	r2, [r3, #12]
    1ddc:	200f      	movs	r0, #15
    1dde:	f7ff fde3 	bl	19a8 <__NVIC_EnableIRQ>
    1de2:	46c0      	nop			; (mov r8, r8)
    1de4:	46bd      	mov	sp, r7
    1de6:	bd80      	pop	{r7, pc}
    1de8:	40070000 	.word	0x40070000
    1dec:	0001869f 	.word	0x0001869f
    1df0:	40078000 	.word	0x40078000

00001df4 <SystemInit>:
    1df4:	b580      	push	{r7, lr}
    1df6:	af00      	add	r7, sp, #0
    1df8:	f7ff ff18 	bl	1c2c <ClkConfig>
    1dfc:	f7ff fe78 	bl	1af0 <PortConfig>
    1e00:	f7ff ffbc 	bl	1d7c <TimerConfig>
    1e04:	2100      	movs	r1, #0
    1e06:	2012      	movs	r0, #18
    1e08:	f7ff fe04 	bl	1a14 <__NVIC_SetPriority>
    1e0c:	2101      	movs	r1, #1
    1e0e:	200e      	movs	r0, #14
    1e10:	f7ff fe00 	bl	1a14 <__NVIC_SetPriority>
    1e14:	2301      	movs	r3, #1
    1e16:	425b      	negs	r3, r3
    1e18:	2103      	movs	r1, #3
    1e1a:	0018      	movs	r0, r3
    1e1c:	f7ff fdfa 	bl	1a14 <__NVIC_SetPriority>
    1e20:	46c0      	nop			; (mov r8, r8)
    1e22:	46bd      	mov	sp, r7
    1e24:	bd80      	pop	{r7, pc}
    1e26:	46c0      	nop			; (mov r8, r8)

00001e28 <__NVIC_EnableIRQ>:
    1e28:	b580      	push	{r7, lr}
    1e2a:	b082      	sub	sp, #8
    1e2c:	af00      	add	r7, sp, #0
    1e2e:	0002      	movs	r2, r0
    1e30:	1dfb      	adds	r3, r7, #7
    1e32:	701a      	strb	r2, [r3, #0]
    1e34:	1dfb      	adds	r3, r7, #7
    1e36:	781b      	ldrb	r3, [r3, #0]
    1e38:	2b7f      	cmp	r3, #127	; 0x7f
    1e3a:	d809      	bhi.n	1e50 <__NVIC_EnableIRQ+0x28>
    1e3c:	4b06      	ldr	r3, [pc, #24]	; (1e58 <__NVIC_EnableIRQ+0x30>)
    1e3e:	1dfa      	adds	r2, r7, #7
    1e40:	7812      	ldrb	r2, [r2, #0]
    1e42:	0011      	movs	r1, r2
    1e44:	221f      	movs	r2, #31
    1e46:	400a      	ands	r2, r1
    1e48:	2101      	movs	r1, #1
    1e4a:	4091      	lsls	r1, r2
    1e4c:	000a      	movs	r2, r1
    1e4e:	601a      	str	r2, [r3, #0]
    1e50:	46c0      	nop			; (mov r8, r8)
    1e52:	46bd      	mov	sp, r7
    1e54:	b002      	add	sp, #8
    1e56:	bd80      	pop	{r7, pc}
    1e58:	e000e100 	.word	0xe000e100

00001e5c <RemoteMacInit>:
    1e5c:	b580      	push	{r7, lr}
    1e5e:	af00      	add	r7, sp, #0
    1e60:	4b0a      	ldr	r3, [pc, #40]	; (1e8c <RemoteMacInit+0x30>)
    1e62:	2200      	movs	r2, #0
    1e64:	801a      	strh	r2, [r3, #0]
    1e66:	4b09      	ldr	r3, [pc, #36]	; (1e8c <RemoteMacInit+0x30>)
    1e68:	2200      	movs	r2, #0
    1e6a:	805a      	strh	r2, [r3, #2]
    1e6c:	4b07      	ldr	r3, [pc, #28]	; (1e8c <RemoteMacInit+0x30>)
    1e6e:	2200      	movs	r2, #0
    1e70:	809a      	strh	r2, [r3, #4]
    1e72:	4b06      	ldr	r3, [pc, #24]	; (1e8c <RemoteMacInit+0x30>)
    1e74:	2200      	movs	r2, #0
    1e76:	80da      	strh	r2, [r3, #6]
    1e78:	4b04      	ldr	r3, [pc, #16]	; (1e8c <RemoteMacInit+0x30>)
    1e7a:	2200      	movs	r2, #0
    1e7c:	811a      	strh	r2, [r3, #8]
    1e7e:	4b03      	ldr	r3, [pc, #12]	; (1e8c <RemoteMacInit+0x30>)
    1e80:	2200      	movs	r2, #0
    1e82:	815a      	strh	r2, [r3, #10]
    1e84:	46c0      	nop			; (mov r8, r8)
    1e86:	46bd      	mov	sp, r7
    1e88:	bd80      	pop	{r7, pc}
    1e8a:	46c0      	nop			; (mov r8, r8)
    1e8c:	20004d1c 	.word	0x20004d1c

00001e90 <PHYInit>:
    1e90:	b580      	push	{r7, lr}
    1e92:	b084      	sub	sp, #16
    1e94:	af00      	add	r7, sp, #0
    1e96:	0002      	movs	r2, r0
    1e98:	1dfb      	adds	r3, r7, #7
    1e9a:	701a      	strb	r2, [r3, #0]
    1e9c:	1dbb      	adds	r3, r7, #6
    1e9e:	1c0a      	adds	r2, r1, #0
    1ea0:	701a      	strb	r2, [r3, #0]
    1ea2:	23c0      	movs	r3, #192	; 0xc0
    1ea4:	059b      	lsls	r3, r3, #22
    1ea6:	8e9b      	ldrh	r3, [r3, #52]	; 0x34
    1ea8:	b29b      	uxth	r3, r3
    1eaa:	60fb      	str	r3, [r7, #12]
    1eac:	68fa      	ldr	r2, [r7, #12]
    1eae:	23ee      	movs	r3, #238	; 0xee
    1eb0:	00db      	lsls	r3, r3, #3
    1eb2:	4013      	ands	r3, r2
    1eb4:	60fb      	str	r3, [r7, #12]
    1eb6:	1dfb      	adds	r3, r7, #7
    1eb8:	781b      	ldrb	r3, [r3, #0]
    1eba:	02da      	lsls	r2, r3, #11
    1ebc:	1dbb      	adds	r3, r7, #6
    1ebe:	781b      	ldrb	r3, [r3, #0]
    1ec0:	005b      	lsls	r3, r3, #1
    1ec2:	4313      	orrs	r3, r2
    1ec4:	001a      	movs	r2, r3
    1ec6:	68fb      	ldr	r3, [r7, #12]
    1ec8:	4313      	orrs	r3, r2
    1eca:	2201      	movs	r2, #1
    1ecc:	4313      	orrs	r3, r2
    1ece:	60fb      	str	r3, [r7, #12]
    1ed0:	23c0      	movs	r3, #192	; 0xc0
    1ed2:	059b      	lsls	r3, r3, #22
    1ed4:	68fa      	ldr	r2, [r7, #12]
    1ed6:	b292      	uxth	r2, r2
    1ed8:	869a      	strh	r2, [r3, #52]	; 0x34
    1eda:	46c0      	nop			; (mov r8, r8)
    1edc:	23c0      	movs	r3, #192	; 0xc0
    1ede:	059b      	lsls	r3, r3, #22
    1ee0:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    1ee2:	b29b      	uxth	r3, r3
    1ee4:	001a      	movs	r2, r3
    1ee6:	2310      	movs	r3, #16
    1ee8:	4013      	ands	r3, r2
    1eea:	d0f7      	beq.n	1edc <PHYInit+0x4c>
    1eec:	46c0      	nop			; (mov r8, r8)
    1eee:	46bd      	mov	sp, r7
    1ef0:	b004      	add	sp, #16
    1ef2:	bd80      	pop	{r7, pc}

00001ef4 <SetPHYReg>:
    1ef4:	b590      	push	{r4, r7, lr}
    1ef6:	b085      	sub	sp, #20
    1ef8:	af00      	add	r7, sp, #0
    1efa:	0004      	movs	r4, r0
    1efc:	0008      	movs	r0, r1
    1efe:	0011      	movs	r1, r2
    1f00:	1dfb      	adds	r3, r7, #7
    1f02:	1c22      	adds	r2, r4, #0
    1f04:	701a      	strb	r2, [r3, #0]
    1f06:	1dbb      	adds	r3, r7, #6
    1f08:	1c02      	adds	r2, r0, #0
    1f0a:	701a      	strb	r2, [r3, #0]
    1f0c:	1d3b      	adds	r3, r7, #4
    1f0e:	1c0a      	adds	r2, r1, #0
    1f10:	801a      	strh	r2, [r3, #0]
    1f12:	23c0      	movs	r3, #192	; 0xc0
    1f14:	059b      	lsls	r3, r3, #22
    1f16:	1d3a      	adds	r2, r7, #4
    1f18:	8812      	ldrh	r2, [r2, #0]
    1f1a:	84da      	strh	r2, [r3, #38]	; 0x26
    1f1c:	1dfb      	adds	r3, r7, #7
    1f1e:	781b      	ldrb	r3, [r3, #0]
    1f20:	021a      	lsls	r2, r3, #8
    1f22:	23f8      	movs	r3, #248	; 0xf8
    1f24:	015b      	lsls	r3, r3, #5
    1f26:	4013      	ands	r3, r2
    1f28:	22c0      	movs	r2, #192	; 0xc0
    1f2a:	0212      	lsls	r2, r2, #8
    1f2c:	431a      	orrs	r2, r3
    1f2e:	1dbb      	adds	r3, r7, #6
    1f30:	781b      	ldrb	r3, [r3, #0]
    1f32:	211f      	movs	r1, #31
    1f34:	400b      	ands	r3, r1
    1f36:	4313      	orrs	r3, r2
    1f38:	2220      	movs	r2, #32
    1f3a:	4313      	orrs	r3, r2
    1f3c:	60fb      	str	r3, [r7, #12]
    1f3e:	23c0      	movs	r3, #192	; 0xc0
    1f40:	059b      	lsls	r3, r3, #22
    1f42:	68fa      	ldr	r2, [r7, #12]
    1f44:	b292      	uxth	r2, r2
    1f46:	849a      	strh	r2, [r3, #36]	; 0x24
    1f48:	46c0      	nop			; (mov r8, r8)
    1f4a:	23c0      	movs	r3, #192	; 0xc0
    1f4c:	059b      	lsls	r3, r3, #22
    1f4e:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1f50:	b29b      	uxth	r3, r3
    1f52:	b21b      	sxth	r3, r3
    1f54:	2b00      	cmp	r3, #0
    1f56:	daf8      	bge.n	1f4a <SetPHYReg+0x56>
    1f58:	46c0      	nop			; (mov r8, r8)
    1f5a:	46bd      	mov	sp, r7
    1f5c:	b005      	add	sp, #20
    1f5e:	bd90      	pop	{r4, r7, pc}

00001f60 <GetPHYReg>:
    1f60:	b580      	push	{r7, lr}
    1f62:	b084      	sub	sp, #16
    1f64:	af00      	add	r7, sp, #0
    1f66:	0002      	movs	r2, r0
    1f68:	1dfb      	adds	r3, r7, #7
    1f6a:	701a      	strb	r2, [r3, #0]
    1f6c:	1dbb      	adds	r3, r7, #6
    1f6e:	1c0a      	adds	r2, r1, #0
    1f70:	701a      	strb	r2, [r3, #0]
    1f72:	1dfb      	adds	r3, r7, #7
    1f74:	781b      	ldrb	r3, [r3, #0]
    1f76:	021a      	lsls	r2, r3, #8
    1f78:	23f8      	movs	r3, #248	; 0xf8
    1f7a:	015b      	lsls	r3, r3, #5
    1f7c:	4013      	ands	r3, r2
    1f7e:	4a0e      	ldr	r2, [pc, #56]	; (1fb8 <GetPHYReg+0x58>)
    1f80:	431a      	orrs	r2, r3
    1f82:	1dbb      	adds	r3, r7, #6
    1f84:	781b      	ldrb	r3, [r3, #0]
    1f86:	211f      	movs	r1, #31
    1f88:	400b      	ands	r3, r1
    1f8a:	4313      	orrs	r3, r2
    1f8c:	60fb      	str	r3, [r7, #12]
    1f8e:	23c0      	movs	r3, #192	; 0xc0
    1f90:	059b      	lsls	r3, r3, #22
    1f92:	68fa      	ldr	r2, [r7, #12]
    1f94:	b292      	uxth	r2, r2
    1f96:	849a      	strh	r2, [r3, #36]	; 0x24
    1f98:	46c0      	nop			; (mov r8, r8)
    1f9a:	23c0      	movs	r3, #192	; 0xc0
    1f9c:	059b      	lsls	r3, r3, #22
    1f9e:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1fa0:	b29b      	uxth	r3, r3
    1fa2:	b21b      	sxth	r3, r3
    1fa4:	2b00      	cmp	r3, #0
    1fa6:	daf8      	bge.n	1f9a <GetPHYReg+0x3a>
    1fa8:	23c0      	movs	r3, #192	; 0xc0
    1faa:	059b      	lsls	r3, r3, #22
    1fac:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    1fae:	b29b      	uxth	r3, r3
    1fb0:	0018      	movs	r0, r3
    1fb2:	46bd      	mov	sp, r7
    1fb4:	b004      	add	sp, #16
    1fb6:	bd80      	pop	{r7, pc}
    1fb8:	0000e020 	.word	0x0000e020

00001fbc <EthernetConfig>:
    1fbc:	b580      	push	{r7, lr}
    1fbe:	b082      	sub	sp, #8
    1fc0:	af00      	add	r7, sp, #0
    1fc2:	2103      	movs	r1, #3
    1fc4:	201c      	movs	r0, #28
    1fc6:	f7ff ff63 	bl	1e90 <PHYInit>
    1fca:	23c0      	movs	r3, #192	; 0xc0
    1fcc:	059b      	lsls	r3, r3, #22
    1fce:	4a12      	ldr	r2, [pc, #72]	; (2018 <EthernetConfig+0x5c>)
    1fd0:	8812      	ldrh	r2, [r2, #0]
    1fd2:	805a      	strh	r2, [r3, #2]
    1fd4:	23c0      	movs	r3, #192	; 0xc0
    1fd6:	059b      	lsls	r3, r3, #22
    1fd8:	4a0f      	ldr	r2, [pc, #60]	; (2018 <EthernetConfig+0x5c>)
    1fda:	8852      	ldrh	r2, [r2, #2]
    1fdc:	809a      	strh	r2, [r3, #4]
    1fde:	23c0      	movs	r3, #192	; 0xc0
    1fe0:	059b      	lsls	r3, r3, #22
    1fe2:	4a0d      	ldr	r2, [pc, #52]	; (2018 <EthernetConfig+0x5c>)
    1fe4:	8892      	ldrh	r2, [r2, #4]
    1fe6:	80da      	strh	r2, [r3, #6]
    1fe8:	f000 f81e 	bl	2028 <MACReset>
    1fec:	23c0      	movs	r3, #192	; 0xc0
    1fee:	059b      	lsls	r3, r3, #22
    1ff0:	2207      	movs	r2, #7
    1ff2:	841a      	strh	r2, [r3, #32]
    1ff4:	2012      	movs	r0, #18
    1ff6:	f7ff ff17 	bl	1e28 <__NVIC_EnableIRQ>
    1ffa:	4b08      	ldr	r3, [pc, #32]	; (201c <EthernetConfig+0x60>)
    1ffc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1ffe:	607b      	str	r3, [r7, #4]
    2000:	687b      	ldr	r3, [r7, #4]
    2002:	b29a      	uxth	r2, r3
    2004:	4b06      	ldr	r3, [pc, #24]	; (2020 <EthernetConfig+0x64>)
    2006:	801a      	strh	r2, [r3, #0]
    2008:	687b      	ldr	r3, [r7, #4]
    200a:	b29a      	uxth	r2, r3
    200c:	4b05      	ldr	r3, [pc, #20]	; (2024 <EthernetConfig+0x68>)
    200e:	801a      	strh	r2, [r3, #0]
    2010:	46c0      	nop			; (mov r8, r8)
    2012:	46bd      	mov	sp, r7
    2014:	b002      	add	sp, #8
    2016:	bd80      	pop	{r7, pc}
    2018:	20000004 	.word	0x20000004
    201c:	400d8000 	.word	0x400d8000
    2020:	20004d30 	.word	0x20004d30
    2024:	20004d32 	.word	0x20004d32

00002028 <MACReset>:
    2028:	b580      	push	{r7, lr}
    202a:	af00      	add	r7, sp, #0
    202c:	23c0      	movs	r3, #192	; 0xc0
    202e:	059b      	lsls	r3, r3, #22
    2030:	22c0      	movs	r2, #192	; 0xc0
    2032:	0592      	lsls	r2, r2, #22
    2034:	8bd2      	ldrh	r2, [r2, #30]
    2036:	b292      	uxth	r2, r2
    2038:	2103      	movs	r1, #3
    203a:	430a      	orrs	r2, r1
    203c:	b292      	uxth	r2, r2
    203e:	83da      	strh	r2, [r3, #30]
    2040:	f000 f86a 	bl	2118 <ClearMemory>
    2044:	23c0      	movs	r3, #192	; 0xc0
    2046:	059b      	lsls	r3, r3, #22
    2048:	2280      	movs	r2, #128	; 0x80
    204a:	0152      	lsls	r2, r2, #5
    204c:	801a      	strh	r2, [r3, #0]
    204e:	23c0      	movs	r3, #192	; 0xc0
    2050:	059b      	lsls	r3, r3, #22
    2052:	2200      	movs	r2, #0
    2054:	811a      	strh	r2, [r3, #8]
    2056:	23c0      	movs	r3, #192	; 0xc0
    2058:	059b      	lsls	r3, r3, #22
    205a:	2200      	movs	r2, #0
    205c:	815a      	strh	r2, [r3, #10]
    205e:	23c0      	movs	r3, #192	; 0xc0
    2060:	059b      	lsls	r3, r3, #22
    2062:	2200      	movs	r2, #0
    2064:	819a      	strh	r2, [r3, #12]
    2066:	23c0      	movs	r3, #192	; 0xc0
    2068:	059b      	lsls	r3, r3, #22
    206a:	4a26      	ldr	r2, [pc, #152]	; (2104 <MACReset+0xdc>)
    206c:	81da      	strh	r2, [r3, #14]
    206e:	23c0      	movs	r3, #192	; 0xc0
    2070:	059b      	lsls	r3, r3, #22
    2072:	2260      	movs	r2, #96	; 0x60
    2074:	821a      	strh	r2, [r3, #16]
    2076:	23c0      	movs	r3, #192	; 0xc0
    2078:	059b      	lsls	r3, r3, #22
    207a:	2250      	movs	r2, #80	; 0x50
    207c:	825a      	strh	r2, [r3, #18]
    207e:	23c0      	movs	r3, #192	; 0xc0
    2080:	059b      	lsls	r3, r3, #22
    2082:	2280      	movs	r2, #128	; 0x80
    2084:	0092      	lsls	r2, r2, #2
    2086:	829a      	strh	r2, [r3, #20]
    2088:	23c0      	movs	r3, #192	; 0xc0
    208a:	059b      	lsls	r3, r3, #22
    208c:	2205      	movs	r2, #5
    208e:	82da      	strh	r2, [r3, #22]
    2090:	23c0      	movs	r3, #192	; 0xc0
    2092:	059b      	lsls	r3, r3, #22
    2094:	4a1c      	ldr	r2, [pc, #112]	; (2108 <MACReset+0xe0>)
    2096:	831a      	strh	r2, [r3, #24]
    2098:	23c0      	movs	r3, #192	; 0xc0
    209a:	059b      	lsls	r3, r3, #22
    209c:	4a1b      	ldr	r2, [pc, #108]	; (210c <MACReset+0xe4>)
    209e:	835a      	strh	r2, [r3, #26]
    20a0:	23c0      	movs	r3, #192	; 0xc0
    20a2:	059b      	lsls	r3, r3, #22
    20a4:	2280      	movs	r2, #128	; 0x80
    20a6:	839a      	strh	r2, [r3, #28]
    20a8:	23c0      	movs	r3, #192	; 0xc0
    20aa:	059b      	lsls	r3, r3, #22
    20ac:	4a18      	ldr	r2, [pc, #96]	; (2110 <MACReset+0xe8>)
    20ae:	83da      	strh	r2, [r3, #30]
    20b0:	23c0      	movs	r3, #192	; 0xc0
    20b2:	059b      	lsls	r3, r3, #22
    20b4:	2200      	movs	r2, #0
    20b6:	841a      	strh	r2, [r3, #32]
    20b8:	23c0      	movs	r3, #192	; 0xc0
    20ba:	059b      	lsls	r3, r3, #22
    20bc:	2201      	movs	r2, #1
    20be:	4252      	negs	r2, r2
    20c0:	845a      	strh	r2, [r3, #34]	; 0x22
    20c2:	23c0      	movs	r3, #192	; 0xc0
    20c4:	059b      	lsls	r3, r3, #22
    20c6:	2200      	movs	r2, #0
    20c8:	851a      	strh	r2, [r3, #40]	; 0x28
    20ca:	23c0      	movs	r3, #192	; 0xc0
    20cc:	059b      	lsls	r3, r3, #22
    20ce:	2280      	movs	r2, #128	; 0x80
    20d0:	0152      	lsls	r2, r2, #5
    20d2:	855a      	strh	r2, [r3, #42]	; 0x2a
    20d4:	23c0      	movs	r3, #192	; 0xc0
    20d6:	059b      	lsls	r3, r3, #22
    20d8:	22c0      	movs	r2, #192	; 0xc0
    20da:	0592      	lsls	r2, r2, #22
    20dc:	8b92      	ldrh	r2, [r2, #28]
    20de:	b292      	uxth	r2, r2
    20e0:	490c      	ldr	r1, [pc, #48]	; (2114 <MACReset+0xec>)
    20e2:	400a      	ands	r2, r1
    20e4:	b292      	uxth	r2, r2
    20e6:	839a      	strh	r2, [r3, #28]
    20e8:	23c0      	movs	r3, #192	; 0xc0
    20ea:	059b      	lsls	r3, r3, #22
    20ec:	22c0      	movs	r2, #192	; 0xc0
    20ee:	0592      	lsls	r2, r2, #22
    20f0:	8bd2      	ldrh	r2, [r2, #30]
    20f2:	b292      	uxth	r2, r2
    20f4:	2103      	movs	r1, #3
    20f6:	438a      	bics	r2, r1
    20f8:	b292      	uxth	r2, r2
    20fa:	83da      	strh	r2, [r3, #30]
    20fc:	46c0      	nop			; (mov r8, r8)
    20fe:	46bd      	mov	sp, r7
    2100:	bd80      	pop	{r7, pc}
    2102:	46c0      	nop			; (mov r8, r8)
    2104:	ffff8000 	.word	0xffff8000
    2108:	ffff8606 	.word	0xffff8606
    210c:	ffff81fa 	.word	0xffff81fa
    2110:	00003003 	.word	0x00003003
    2114:	ffffbfff 	.word	0xffffbfff

00002118 <ClearMemory>:
    2118:	b580      	push	{r7, lr}
    211a:	b082      	sub	sp, #8
    211c:	af00      	add	r7, sp, #0
    211e:	23e0      	movs	r3, #224	; 0xe0
    2120:	059b      	lsls	r3, r3, #22
    2122:	603b      	str	r3, [r7, #0]
    2124:	2300      	movs	r3, #0
    2126:	607b      	str	r3, [r7, #4]
    2128:	e007      	b.n	213a <ClearMemory+0x22>
    212a:	683b      	ldr	r3, [r7, #0]
    212c:	1d1a      	adds	r2, r3, #4
    212e:	603a      	str	r2, [r7, #0]
    2130:	2200      	movs	r2, #0
    2132:	601a      	str	r2, [r3, #0]
    2134:	687b      	ldr	r3, [r7, #4]
    2136:	3301      	adds	r3, #1
    2138:	607b      	str	r3, [r7, #4]
    213a:	687b      	ldr	r3, [r7, #4]
    213c:	4a03      	ldr	r2, [pc, #12]	; (214c <ClearMemory+0x34>)
    213e:	4293      	cmp	r3, r2
    2140:	d9f3      	bls.n	212a <ClearMemory+0x12>
    2142:	46c0      	nop			; (mov r8, r8)
    2144:	46bd      	mov	sp, r7
    2146:	b002      	add	sp, #8
    2148:	bd80      	pop	{r7, pc}
    214a:	46c0      	nop			; (mov r8, r8)
    214c:	000007ff 	.word	0x000007ff

00002150 <ReadPacket>:
    2150:	b580      	push	{r7, lr}
    2152:	b08a      	sub	sp, #40	; 0x28
    2154:	af00      	add	r7, sp, #0
    2156:	6078      	str	r0, [r7, #4]
    2158:	2316      	movs	r3, #22
    215a:	18fb      	adds	r3, r7, r3
    215c:	2200      	movs	r2, #0
    215e:	801a      	strh	r2, [r3, #0]
    2160:	2326      	movs	r3, #38	; 0x26
    2162:	18fb      	adds	r3, r7, r3
    2164:	2200      	movs	r2, #0
    2166:	801a      	strh	r2, [r3, #0]
    2168:	4b71      	ldr	r3, [pc, #452]	; (2330 <ReadPacket+0x1e0>)
    216a:	681a      	ldr	r2, [r3, #0]
    216c:	2301      	movs	r3, #1
    216e:	425b      	negs	r3, r3
    2170:	0019      	movs	r1, r3
    2172:	0010      	movs	r0, r2
    2174:	f004 f83a 	bl	61ec <osMutexWait>
    2178:	23c0      	movs	r3, #192	; 0xc0
    217a:	059a      	lsls	r2, r3, #22
    217c:	2314      	movs	r3, #20
    217e:	18fb      	adds	r3, r7, r3
    2180:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    2182:	801a      	strh	r2, [r3, #0]
    2184:	23c0      	movs	r3, #192	; 0xc0
    2186:	059a      	lsls	r2, r3, #22
    2188:	2312      	movs	r3, #18
    218a:	18fb      	adds	r3, r7, r3
    218c:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    218e:	801a      	strh	r2, [r3, #0]
    2190:	2314      	movs	r3, #20
    2192:	18fa      	adds	r2, r7, r3
    2194:	2312      	movs	r3, #18
    2196:	18fb      	adds	r3, r7, r3
    2198:	8812      	ldrh	r2, [r2, #0]
    219a:	881b      	ldrh	r3, [r3, #0]
    219c:	429a      	cmp	r2, r3
    219e:	d90e      	bls.n	21be <ReadPacket+0x6e>
    21a0:	2326      	movs	r3, #38	; 0x26
    21a2:	18fb      	adds	r3, r7, r3
    21a4:	2214      	movs	r2, #20
    21a6:	18b9      	adds	r1, r7, r2
    21a8:	2212      	movs	r2, #18
    21aa:	18ba      	adds	r2, r7, r2
    21ac:	8809      	ldrh	r1, [r1, #0]
    21ae:	8812      	ldrh	r2, [r2, #0]
    21b0:	1a8a      	subs	r2, r1, r2
    21b2:	801a      	strh	r2, [r3, #0]
    21b4:	2316      	movs	r3, #22
    21b6:	18fb      	adds	r3, r7, r3
    21b8:	2200      	movs	r2, #0
    21ba:	801a      	strh	r2, [r3, #0]
    21bc:	e00e      	b.n	21dc <ReadPacket+0x8c>
    21be:	2326      	movs	r3, #38	; 0x26
    21c0:	18fb      	adds	r3, r7, r3
    21c2:	2212      	movs	r2, #18
    21c4:	18ba      	adds	r2, r7, r2
    21c6:	8812      	ldrh	r2, [r2, #0]
    21c8:	2180      	movs	r1, #128	; 0x80
    21ca:	0149      	lsls	r1, r1, #5
    21cc:	1a8a      	subs	r2, r1, r2
    21ce:	801a      	strh	r2, [r3, #0]
    21d0:	2316      	movs	r3, #22
    21d2:	18fb      	adds	r3, r7, r3
    21d4:	2214      	movs	r2, #20
    21d6:	18ba      	adds	r2, r7, r2
    21d8:	8812      	ldrh	r2, [r2, #0]
    21da:	801a      	strh	r2, [r3, #0]
    21dc:	2312      	movs	r3, #18
    21de:	18fb      	adds	r3, r7, r3
    21e0:	881b      	ldrh	r3, [r3, #0]
    21e2:	22e0      	movs	r2, #224	; 0xe0
    21e4:	0592      	lsls	r2, r2, #22
    21e6:	4694      	mov	ip, r2
    21e8:	4463      	add	r3, ip
    21ea:	623b      	str	r3, [r7, #32]
    21ec:	687b      	ldr	r3, [r7, #4]
    21ee:	61fb      	str	r3, [r7, #28]
    21f0:	2308      	movs	r3, #8
    21f2:	18fa      	adds	r2, r7, r3
    21f4:	6a3b      	ldr	r3, [r7, #32]
    21f6:	1d19      	adds	r1, r3, #4
    21f8:	6239      	str	r1, [r7, #32]
    21fa:	681b      	ldr	r3, [r3, #0]
    21fc:	6013      	str	r3, [r2, #0]
    21fe:	2308      	movs	r3, #8
    2200:	18fb      	adds	r3, r7, r3
    2202:	881b      	ldrh	r3, [r3, #0]
    2204:	3303      	adds	r3, #3
    2206:	2b00      	cmp	r3, #0
    2208:	da00      	bge.n	220c <ReadPacket+0xbc>
    220a:	3303      	adds	r3, #3
    220c:	109b      	asrs	r3, r3, #2
    220e:	60fb      	str	r3, [r7, #12]
    2210:	2326      	movs	r3, #38	; 0x26
    2212:	18fb      	adds	r3, r7, r3
    2214:	2226      	movs	r2, #38	; 0x26
    2216:	18ba      	adds	r2, r7, r2
    2218:	8812      	ldrh	r2, [r2, #0]
    221a:	3a04      	subs	r2, #4
    221c:	801a      	strh	r2, [r3, #0]
    221e:	6a3b      	ldr	r3, [r7, #32]
    2220:	b29b      	uxth	r3, r3
    2222:	4a44      	ldr	r2, [pc, #272]	; (2334 <ReadPacket+0x1e4>)
    2224:	4293      	cmp	r3, r2
    2226:	d902      	bls.n	222e <ReadPacket+0xde>
    2228:	23e0      	movs	r3, #224	; 0xe0
    222a:	059b      	lsls	r3, r3, #22
    222c:	623b      	str	r3, [r7, #32]
    222e:	2308      	movs	r3, #8
    2230:	18fb      	adds	r3, r7, r3
    2232:	881b      	ldrh	r3, [r3, #0]
    2234:	2226      	movs	r2, #38	; 0x26
    2236:	18ba      	adds	r2, r7, r2
    2238:	8812      	ldrh	r2, [r2, #0]
    223a:	429a      	cmp	r2, r3
    223c:	d312      	bcc.n	2264 <ReadPacket+0x114>
    223e:	2300      	movs	r3, #0
    2240:	61bb      	str	r3, [r7, #24]
    2242:	e00a      	b.n	225a <ReadPacket+0x10a>
    2244:	69fb      	ldr	r3, [r7, #28]
    2246:	1d1a      	adds	r2, r3, #4
    2248:	61fa      	str	r2, [r7, #28]
    224a:	6a3a      	ldr	r2, [r7, #32]
    224c:	1d11      	adds	r1, r2, #4
    224e:	6239      	str	r1, [r7, #32]
    2250:	6812      	ldr	r2, [r2, #0]
    2252:	601a      	str	r2, [r3, #0]
    2254:	69bb      	ldr	r3, [r7, #24]
    2256:	3301      	adds	r3, #1
    2258:	61bb      	str	r3, [r7, #24]
    225a:	69ba      	ldr	r2, [r7, #24]
    225c:	68fb      	ldr	r3, [r7, #12]
    225e:	429a      	cmp	r2, r3
    2260:	d3f0      	bcc.n	2244 <ReadPacket+0xf4>
    2262:	e034      	b.n	22ce <ReadPacket+0x17e>
    2264:	2326      	movs	r3, #38	; 0x26
    2266:	18fb      	adds	r3, r7, r3
    2268:	881b      	ldrh	r3, [r3, #0]
    226a:	089b      	lsrs	r3, r3, #2
    226c:	b29b      	uxth	r3, r3
    226e:	001a      	movs	r2, r3
    2270:	68fb      	ldr	r3, [r7, #12]
    2272:	1a9b      	subs	r3, r3, r2
    2274:	60fb      	str	r3, [r7, #12]
    2276:	2300      	movs	r3, #0
    2278:	61bb      	str	r3, [r7, #24]
    227a:	e00a      	b.n	2292 <ReadPacket+0x142>
    227c:	69fb      	ldr	r3, [r7, #28]
    227e:	1d1a      	adds	r2, r3, #4
    2280:	61fa      	str	r2, [r7, #28]
    2282:	6a3a      	ldr	r2, [r7, #32]
    2284:	1d11      	adds	r1, r2, #4
    2286:	6239      	str	r1, [r7, #32]
    2288:	6812      	ldr	r2, [r2, #0]
    228a:	601a      	str	r2, [r3, #0]
    228c:	69bb      	ldr	r3, [r7, #24]
    228e:	3301      	adds	r3, #1
    2290:	61bb      	str	r3, [r7, #24]
    2292:	2326      	movs	r3, #38	; 0x26
    2294:	18fb      	adds	r3, r7, r3
    2296:	881b      	ldrh	r3, [r3, #0]
    2298:	089b      	lsrs	r3, r3, #2
    229a:	b29b      	uxth	r3, r3
    229c:	001a      	movs	r2, r3
    229e:	69bb      	ldr	r3, [r7, #24]
    22a0:	429a      	cmp	r2, r3
    22a2:	d8eb      	bhi.n	227c <ReadPacket+0x12c>
    22a4:	23e0      	movs	r3, #224	; 0xe0
    22a6:	059b      	lsls	r3, r3, #22
    22a8:	623b      	str	r3, [r7, #32]
    22aa:	2300      	movs	r3, #0
    22ac:	61bb      	str	r3, [r7, #24]
    22ae:	e00a      	b.n	22c6 <ReadPacket+0x176>
    22b0:	69fb      	ldr	r3, [r7, #28]
    22b2:	1d1a      	adds	r2, r3, #4
    22b4:	61fa      	str	r2, [r7, #28]
    22b6:	6a3a      	ldr	r2, [r7, #32]
    22b8:	1d11      	adds	r1, r2, #4
    22ba:	6239      	str	r1, [r7, #32]
    22bc:	6812      	ldr	r2, [r2, #0]
    22be:	601a      	str	r2, [r3, #0]
    22c0:	69bb      	ldr	r3, [r7, #24]
    22c2:	3301      	adds	r3, #1
    22c4:	61bb      	str	r3, [r7, #24]
    22c6:	69ba      	ldr	r2, [r7, #24]
    22c8:	68fb      	ldr	r3, [r7, #12]
    22ca:	429a      	cmp	r2, r3
    22cc:	d3f0      	bcc.n	22b0 <ReadPacket+0x160>
    22ce:	6a3b      	ldr	r3, [r7, #32]
    22d0:	b29b      	uxth	r3, r3
    22d2:	4a18      	ldr	r2, [pc, #96]	; (2334 <ReadPacket+0x1e4>)
    22d4:	4293      	cmp	r3, r2
    22d6:	d902      	bls.n	22de <ReadPacket+0x18e>
    22d8:	23e0      	movs	r3, #224	; 0xe0
    22da:	059b      	lsls	r3, r3, #22
    22dc:	623b      	str	r3, [r7, #32]
    22de:	23c0      	movs	r3, #192	; 0xc0
    22e0:	059b      	lsls	r3, r3, #22
    22e2:	6a3a      	ldr	r2, [r7, #32]
    22e4:	b292      	uxth	r2, r2
    22e6:	851a      	strh	r2, [r3, #40]	; 0x28
    22e8:	23c0      	movs	r3, #192	; 0xc0
    22ea:	059b      	lsls	r3, r3, #22
    22ec:	22c0      	movs	r2, #192	; 0xc0
    22ee:	0592      	lsls	r2, r2, #22
    22f0:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    22f2:	b292      	uxth	r2, r2
    22f4:	3a20      	subs	r2, #32
    22f6:	b292      	uxth	r2, r2
    22f8:	861a      	strh	r2, [r3, #48]	; 0x30
    22fa:	687b      	ldr	r3, [r7, #4]
    22fc:	88da      	ldrh	r2, [r3, #6]
    22fe:	4b0e      	ldr	r3, [pc, #56]	; (2338 <ReadPacket+0x1e8>)
    2300:	801a      	strh	r2, [r3, #0]
    2302:	687b      	ldr	r3, [r7, #4]
    2304:	891a      	ldrh	r2, [r3, #8]
    2306:	4b0c      	ldr	r3, [pc, #48]	; (2338 <ReadPacket+0x1e8>)
    2308:	805a      	strh	r2, [r3, #2]
    230a:	687b      	ldr	r3, [r7, #4]
    230c:	895a      	ldrh	r2, [r3, #10]
    230e:	4b0a      	ldr	r3, [pc, #40]	; (2338 <ReadPacket+0x1e8>)
    2310:	809a      	strh	r2, [r3, #4]
    2312:	4b09      	ldr	r3, [pc, #36]	; (2338 <ReadPacket+0x1e8>)
    2314:	2201      	movs	r2, #1
    2316:	815a      	strh	r2, [r3, #10]
    2318:	4b05      	ldr	r3, [pc, #20]	; (2330 <ReadPacket+0x1e0>)
    231a:	681b      	ldr	r3, [r3, #0]
    231c:	0018      	movs	r0, r3
    231e:	f003 ff75 	bl	620c <osMutexRelease>
    2322:	2308      	movs	r3, #8
    2324:	18fb      	adds	r3, r7, r3
    2326:	881b      	ldrh	r3, [r3, #0]
    2328:	0018      	movs	r0, r3
    232a:	46bd      	mov	sp, r7
    232c:	b00a      	add	sp, #40	; 0x28
    232e:	bd80      	pop	{r7, pc}
    2330:	2000532c 	.word	0x2000532c
    2334:	00000fff 	.word	0x00000fff
    2338:	20004d1c 	.word	0x20004d1c

0000233c <SendPacket>:
    233c:	b580      	push	{r7, lr}
    233e:	b08a      	sub	sp, #40	; 0x28
    2340:	af00      	add	r7, sp, #0
    2342:	6078      	str	r0, [r7, #4]
    2344:	6039      	str	r1, [r7, #0]
    2346:	4b79      	ldr	r3, [pc, #484]	; (252c <SendPacket+0x1f0>)
    2348:	681a      	ldr	r2, [r3, #0]
    234a:	2301      	movs	r3, #1
    234c:	425b      	negs	r3, r3
    234e:	0019      	movs	r1, r3
    2350:	0010      	movs	r0, r2
    2352:	f003 ff4b 	bl	61ec <osMutexWait>
    2356:	23c0      	movs	r3, #192	; 0xc0
    2358:	059b      	lsls	r3, r3, #22
    235a:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    235c:	b29b      	uxth	r3, r3
    235e:	61bb      	str	r3, [r7, #24]
    2360:	23c0      	movs	r3, #192	; 0xc0
    2362:	059b      	lsls	r3, r3, #22
    2364:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    2366:	b29b      	uxth	r3, r3
    2368:	617b      	str	r3, [r7, #20]
    236a:	69ba      	ldr	r2, [r7, #24]
    236c:	697b      	ldr	r3, [r7, #20]
    236e:	429a      	cmp	r2, r3
    2370:	d90d      	bls.n	238e <SendPacket+0x52>
    2372:	69bb      	ldr	r3, [r7, #24]
    2374:	b29a      	uxth	r2, r3
    2376:	697b      	ldr	r3, [r7, #20]
    2378:	b29b      	uxth	r3, r3
    237a:	1ad3      	subs	r3, r2, r3
    237c:	b29a      	uxth	r2, r3
    237e:	230c      	movs	r3, #12
    2380:	18fb      	adds	r3, r7, r3
    2382:	801a      	strh	r2, [r3, #0]
    2384:	230c      	movs	r3, #12
    2386:	18fb      	adds	r3, r7, r3
    2388:	2200      	movs	r2, #0
    238a:	805a      	strh	r2, [r3, #2]
    238c:	e011      	b.n	23b2 <SendPacket+0x76>
    238e:	697b      	ldr	r3, [r7, #20]
    2390:	b29b      	uxth	r3, r3
    2392:	2280      	movs	r2, #128	; 0x80
    2394:	0192      	lsls	r2, r2, #6
    2396:	1ad3      	subs	r3, r2, r3
    2398:	b29a      	uxth	r2, r3
    239a:	230c      	movs	r3, #12
    239c:	18fb      	adds	r3, r7, r3
    239e:	801a      	strh	r2, [r3, #0]
    23a0:	69bb      	ldr	r3, [r7, #24]
    23a2:	b29b      	uxth	r3, r3
    23a4:	4a62      	ldr	r2, [pc, #392]	; (2530 <SendPacket+0x1f4>)
    23a6:	4694      	mov	ip, r2
    23a8:	4463      	add	r3, ip
    23aa:	b29a      	uxth	r2, r3
    23ac:	230c      	movs	r3, #12
    23ae:	18fb      	adds	r3, r7, r3
    23b0:	805a      	strh	r2, [r3, #2]
    23b2:	230c      	movs	r3, #12
    23b4:	18fb      	adds	r3, r7, r3
    23b6:	881b      	ldrh	r3, [r3, #0]
    23b8:	001a      	movs	r2, r3
    23ba:	230c      	movs	r3, #12
    23bc:	18fb      	adds	r3, r7, r3
    23be:	885b      	ldrh	r3, [r3, #2]
    23c0:	18d3      	adds	r3, r2, r3
    23c2:	3b08      	subs	r3, #8
    23c4:	001a      	movs	r2, r3
    23c6:	683b      	ldr	r3, [r7, #0]
    23c8:	429a      	cmp	r2, r3
    23ca:	da01      	bge.n	23d0 <SendPacket+0x94>
    23cc:	2300      	movs	r3, #0
    23ce:	e0a9      	b.n	2524 <SendPacket+0x1e8>
    23d0:	683b      	ldr	r3, [r7, #0]
    23d2:	613b      	str	r3, [r7, #16]
    23d4:	687b      	ldr	r3, [r7, #4]
    23d6:	623b      	str	r3, [r7, #32]
    23d8:	697b      	ldr	r3, [r7, #20]
    23da:	22e0      	movs	r2, #224	; 0xe0
    23dc:	0592      	lsls	r2, r2, #22
    23de:	4694      	mov	ip, r2
    23e0:	4463      	add	r3, ip
    23e2:	61fb      	str	r3, [r7, #28]
    23e4:	69fb      	ldr	r3, [r7, #28]
    23e6:	1d1a      	adds	r2, r3, #4
    23e8:	61fa      	str	r2, [r7, #28]
    23ea:	693a      	ldr	r2, [r7, #16]
    23ec:	601a      	str	r2, [r3, #0]
    23ee:	230c      	movs	r3, #12
    23f0:	18fb      	adds	r3, r7, r3
    23f2:	881b      	ldrh	r3, [r3, #0]
    23f4:	3b04      	subs	r3, #4
    23f6:	b29a      	uxth	r2, r3
    23f8:	230c      	movs	r3, #12
    23fa:	18fb      	adds	r3, r7, r3
    23fc:	801a      	strh	r2, [r3, #0]
    23fe:	69fb      	ldr	r3, [r7, #28]
    2400:	b29b      	uxth	r3, r3
    2402:	4a4c      	ldr	r2, [pc, #304]	; (2534 <SendPacket+0x1f8>)
    2404:	4293      	cmp	r3, r2
    2406:	d901      	bls.n	240c <SendPacket+0xd0>
    2408:	4b4b      	ldr	r3, [pc, #300]	; (2538 <SendPacket+0x1fc>)
    240a:	61fb      	str	r3, [r7, #28]
    240c:	683b      	ldr	r3, [r7, #0]
    240e:	3303      	adds	r3, #3
    2410:	2b00      	cmp	r3, #0
    2412:	da00      	bge.n	2416 <SendPacket+0xda>
    2414:	3303      	adds	r3, #3
    2416:	109b      	asrs	r3, r3, #2
    2418:	613b      	str	r3, [r7, #16]
    241a:	230c      	movs	r3, #12
    241c:	18fb      	adds	r3, r7, r3
    241e:	881b      	ldrh	r3, [r3, #0]
    2420:	001a      	movs	r2, r3
    2422:	683b      	ldr	r3, [r7, #0]
    2424:	429a      	cmp	r2, r3
    2426:	db1a      	blt.n	245e <SendPacket+0x122>
    2428:	2326      	movs	r3, #38	; 0x26
    242a:	18fb      	adds	r3, r7, r3
    242c:	2200      	movs	r2, #0
    242e:	801a      	strh	r2, [r3, #0]
    2430:	e00e      	b.n	2450 <SendPacket+0x114>
    2432:	69fb      	ldr	r3, [r7, #28]
    2434:	1d1a      	adds	r2, r3, #4
    2436:	61fa      	str	r2, [r7, #28]
    2438:	6a3a      	ldr	r2, [r7, #32]
    243a:	1d11      	adds	r1, r2, #4
    243c:	6239      	str	r1, [r7, #32]
    243e:	6812      	ldr	r2, [r2, #0]
    2440:	601a      	str	r2, [r3, #0]
    2442:	2326      	movs	r3, #38	; 0x26
    2444:	18fb      	adds	r3, r7, r3
    2446:	881a      	ldrh	r2, [r3, #0]
    2448:	2326      	movs	r3, #38	; 0x26
    244a:	18fb      	adds	r3, r7, r3
    244c:	3201      	adds	r2, #1
    244e:	801a      	strh	r2, [r3, #0]
    2450:	2326      	movs	r3, #38	; 0x26
    2452:	18fb      	adds	r3, r7, r3
    2454:	881a      	ldrh	r2, [r3, #0]
    2456:	693b      	ldr	r3, [r7, #16]
    2458:	429a      	cmp	r2, r3
    245a:	d3ea      	bcc.n	2432 <SendPacket+0xf6>
    245c:	e042      	b.n	24e4 <SendPacket+0x1a8>
    245e:	230c      	movs	r3, #12
    2460:	18fb      	adds	r3, r7, r3
    2462:	881b      	ldrh	r3, [r3, #0]
    2464:	089b      	lsrs	r3, r3, #2
    2466:	b29b      	uxth	r3, r3
    2468:	001a      	movs	r2, r3
    246a:	693b      	ldr	r3, [r7, #16]
    246c:	1a9b      	subs	r3, r3, r2
    246e:	613b      	str	r3, [r7, #16]
    2470:	2326      	movs	r3, #38	; 0x26
    2472:	18fb      	adds	r3, r7, r3
    2474:	2200      	movs	r2, #0
    2476:	801a      	strh	r2, [r3, #0]
    2478:	e00e      	b.n	2498 <SendPacket+0x15c>
    247a:	69fb      	ldr	r3, [r7, #28]
    247c:	1d1a      	adds	r2, r3, #4
    247e:	61fa      	str	r2, [r7, #28]
    2480:	6a3a      	ldr	r2, [r7, #32]
    2482:	1d11      	adds	r1, r2, #4
    2484:	6239      	str	r1, [r7, #32]
    2486:	6812      	ldr	r2, [r2, #0]
    2488:	601a      	str	r2, [r3, #0]
    248a:	2326      	movs	r3, #38	; 0x26
    248c:	18fb      	adds	r3, r7, r3
    248e:	881a      	ldrh	r2, [r3, #0]
    2490:	2326      	movs	r3, #38	; 0x26
    2492:	18fb      	adds	r3, r7, r3
    2494:	3201      	adds	r2, #1
    2496:	801a      	strh	r2, [r3, #0]
    2498:	230c      	movs	r3, #12
    249a:	18fb      	adds	r3, r7, r3
    249c:	881b      	ldrh	r3, [r3, #0]
    249e:	089b      	lsrs	r3, r3, #2
    24a0:	b29b      	uxth	r3, r3
    24a2:	2226      	movs	r2, #38	; 0x26
    24a4:	18ba      	adds	r2, r7, r2
    24a6:	8812      	ldrh	r2, [r2, #0]
    24a8:	429a      	cmp	r2, r3
    24aa:	d3e6      	bcc.n	247a <SendPacket+0x13e>
    24ac:	4b22      	ldr	r3, [pc, #136]	; (2538 <SendPacket+0x1fc>)
    24ae:	61fb      	str	r3, [r7, #28]
    24b0:	2326      	movs	r3, #38	; 0x26
    24b2:	18fb      	adds	r3, r7, r3
    24b4:	2200      	movs	r2, #0
    24b6:	801a      	strh	r2, [r3, #0]
    24b8:	e00e      	b.n	24d8 <SendPacket+0x19c>
    24ba:	69fb      	ldr	r3, [r7, #28]
    24bc:	1d1a      	adds	r2, r3, #4
    24be:	61fa      	str	r2, [r7, #28]
    24c0:	6a3a      	ldr	r2, [r7, #32]
    24c2:	1d11      	adds	r1, r2, #4
    24c4:	6239      	str	r1, [r7, #32]
    24c6:	6812      	ldr	r2, [r2, #0]
    24c8:	601a      	str	r2, [r3, #0]
    24ca:	2326      	movs	r3, #38	; 0x26
    24cc:	18fb      	adds	r3, r7, r3
    24ce:	881a      	ldrh	r2, [r3, #0]
    24d0:	2326      	movs	r3, #38	; 0x26
    24d2:	18fb      	adds	r3, r7, r3
    24d4:	3201      	adds	r2, #1
    24d6:	801a      	strh	r2, [r3, #0]
    24d8:	2326      	movs	r3, #38	; 0x26
    24da:	18fb      	adds	r3, r7, r3
    24dc:	881a      	ldrh	r2, [r3, #0]
    24de:	693b      	ldr	r3, [r7, #16]
    24e0:	429a      	cmp	r2, r3
    24e2:	d3ea      	bcc.n	24ba <SendPacket+0x17e>
    24e4:	69fb      	ldr	r3, [r7, #28]
    24e6:	b29b      	uxth	r3, r3
    24e8:	4a12      	ldr	r2, [pc, #72]	; (2534 <SendPacket+0x1f8>)
    24ea:	4293      	cmp	r3, r2
    24ec:	d901      	bls.n	24f2 <SendPacket+0x1b6>
    24ee:	4b12      	ldr	r3, [pc, #72]	; (2538 <SendPacket+0x1fc>)
    24f0:	61fb      	str	r3, [r7, #28]
    24f2:	2300      	movs	r3, #0
    24f4:	613b      	str	r3, [r7, #16]
    24f6:	69fb      	ldr	r3, [r7, #28]
    24f8:	1d1a      	adds	r2, r3, #4
    24fa:	61fa      	str	r2, [r7, #28]
    24fc:	693a      	ldr	r2, [r7, #16]
    24fe:	601a      	str	r2, [r3, #0]
    2500:	69fb      	ldr	r3, [r7, #28]
    2502:	b29b      	uxth	r3, r3
    2504:	4a0b      	ldr	r2, [pc, #44]	; (2534 <SendPacket+0x1f8>)
    2506:	4293      	cmp	r3, r2
    2508:	d901      	bls.n	250e <SendPacket+0x1d2>
    250a:	4b0b      	ldr	r3, [pc, #44]	; (2538 <SendPacket+0x1fc>)
    250c:	61fb      	str	r3, [r7, #28]
    250e:	23c0      	movs	r3, #192	; 0xc0
    2510:	059b      	lsls	r3, r3, #22
    2512:	69fa      	ldr	r2, [r7, #28]
    2514:	b292      	uxth	r2, r2
    2516:	855a      	strh	r2, [r3, #42]	; 0x2a
    2518:	4b04      	ldr	r3, [pc, #16]	; (252c <SendPacket+0x1f0>)
    251a:	681b      	ldr	r3, [r3, #0]
    251c:	0018      	movs	r0, r3
    251e:	f003 fe75 	bl	620c <osMutexRelease>
    2522:	683b      	ldr	r3, [r7, #0]
    2524:	0018      	movs	r0, r3
    2526:	46bd      	mov	sp, r7
    2528:	b00a      	add	sp, #40	; 0x28
    252a:	bd80      	pop	{r7, pc}
    252c:	20005340 	.word	0x20005340
    2530:	fffff000 	.word	0xfffff000
    2534:	00001ffc 	.word	0x00001ffc
    2538:	38001000 	.word	0x38001000

0000253c <ETHERNET_Handler>:
    253c:	b580      	push	{r7, lr}
    253e:	b082      	sub	sp, #8
    2540:	af00      	add	r7, sp, #0
    2542:	23c0      	movs	r3, #192	; 0xc0
    2544:	059a      	lsls	r2, r3, #22
    2546:	1dbb      	adds	r3, r7, #6
    2548:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    254a:	801a      	strh	r2, [r3, #0]
    254c:	23c0      	movs	r3, #192	; 0xc0
    254e:	059b      	lsls	r3, r3, #22
    2550:	1dba      	adds	r2, r7, #6
    2552:	8812      	ldrh	r2, [r2, #0]
    2554:	845a      	strh	r2, [r3, #34]	; 0x22
    2556:	1dbb      	adds	r3, r7, #6
    2558:	881b      	ldrh	r3, [r3, #0]
    255a:	2201      	movs	r2, #1
    255c:	4013      	ands	r3, r2
    255e:	d008      	beq.n	2572 <ETHERNET_Handler+0x36>
    2560:	4b0a      	ldr	r3, [pc, #40]	; (258c <ETHERNET_Handler+0x50>)
    2562:	2201      	movs	r2, #1
    2564:	601a      	str	r2, [r3, #0]
    2566:	4b0a      	ldr	r3, [pc, #40]	; (2590 <ETHERNET_Handler+0x54>)
    2568:	681b      	ldr	r3, [r3, #0]
    256a:	2101      	movs	r1, #1
    256c:	0018      	movs	r0, r3
    256e:	f003 fd5b 	bl	6028 <osSignalSet>
    2572:	1dbb      	adds	r3, r7, #6
    2574:	881b      	ldrh	r3, [r3, #0]
    2576:	2202      	movs	r2, #2
    2578:	4013      	ands	r3, r2
    257a:	d002      	beq.n	2582 <ETHERNET_Handler+0x46>
    257c:	4b05      	ldr	r3, [pc, #20]	; (2594 <ETHERNET_Handler+0x58>)
    257e:	2201      	movs	r2, #1
    2580:	601a      	str	r2, [r3, #0]
    2582:	46c0      	nop			; (mov r8, r8)
    2584:	46bd      	mov	sp, r7
    2586:	b002      	add	sp, #8
    2588:	bd80      	pop	{r7, pc}
    258a:	46c0      	nop			; (mov r8, r8)
    258c:	20004d28 	.word	0x20004d28
    2590:	20000858 	.word	0x20000858
    2594:	20004d2c 	.word	0x20004d2c

00002598 <network_config>:
    2598:	b580      	push	{r7, lr}
    259a:	af00      	add	r7, sp, #0
    259c:	46c0      	nop			; (mov r8, r8)
    259e:	46bd      	mov	sp, r7
    25a0:	bd80      	pop	{r7, pc}
    25a2:	46c0      	nop			; (mov r8, r8)

000025a4 <Answear_ARP>:
    25a4:	b580      	push	{r7, lr}
    25a6:	b08c      	sub	sp, #48	; 0x30
    25a8:	af00      	add	r7, sp, #0
    25aa:	4b36      	ldr	r3, [pc, #216]	; (2684 <Answear_ARP+0xe0>)
    25ac:	88da      	ldrh	r2, [r3, #6]
    25ae:	1d3b      	adds	r3, r7, #4
    25b0:	801a      	strh	r2, [r3, #0]
    25b2:	4b34      	ldr	r3, [pc, #208]	; (2684 <Answear_ARP+0xe0>)
    25b4:	891a      	ldrh	r2, [r3, #8]
    25b6:	1d3b      	adds	r3, r7, #4
    25b8:	805a      	strh	r2, [r3, #2]
    25ba:	4b32      	ldr	r3, [pc, #200]	; (2684 <Answear_ARP+0xe0>)
    25bc:	895a      	ldrh	r2, [r3, #10]
    25be:	1d3b      	adds	r3, r7, #4
    25c0:	809a      	strh	r2, [r3, #4]
    25c2:	23c0      	movs	r3, #192	; 0xc0
    25c4:	059b      	lsls	r3, r3, #22
    25c6:	885b      	ldrh	r3, [r3, #2]
    25c8:	b29a      	uxth	r2, r3
    25ca:	1d3b      	adds	r3, r7, #4
    25cc:	80da      	strh	r2, [r3, #6]
    25ce:	23c0      	movs	r3, #192	; 0xc0
    25d0:	059b      	lsls	r3, r3, #22
    25d2:	889b      	ldrh	r3, [r3, #4]
    25d4:	b29a      	uxth	r2, r3
    25d6:	1d3b      	adds	r3, r7, #4
    25d8:	811a      	strh	r2, [r3, #8]
    25da:	23c0      	movs	r3, #192	; 0xc0
    25dc:	059b      	lsls	r3, r3, #22
    25de:	88db      	ldrh	r3, [r3, #6]
    25e0:	b29a      	uxth	r2, r3
    25e2:	1d3b      	adds	r3, r7, #4
    25e4:	815a      	strh	r2, [r3, #10]
    25e6:	4b27      	ldr	r3, [pc, #156]	; (2684 <Answear_ARP+0xe0>)
    25e8:	899a      	ldrh	r2, [r3, #12]
    25ea:	1d3b      	adds	r3, r7, #4
    25ec:	819a      	strh	r2, [r3, #12]
    25ee:	4b25      	ldr	r3, [pc, #148]	; (2684 <Answear_ARP+0xe0>)
    25f0:	89da      	ldrh	r2, [r3, #14]
    25f2:	1d3b      	adds	r3, r7, #4
    25f4:	81da      	strh	r2, [r3, #14]
    25f6:	4b23      	ldr	r3, [pc, #140]	; (2684 <Answear_ARP+0xe0>)
    25f8:	8a1a      	ldrh	r2, [r3, #16]
    25fa:	1d3b      	adds	r3, r7, #4
    25fc:	821a      	strh	r2, [r3, #16]
    25fe:	4b21      	ldr	r3, [pc, #132]	; (2684 <Answear_ARP+0xe0>)
    2600:	8a5a      	ldrh	r2, [r3, #18]
    2602:	1d3b      	adds	r3, r7, #4
    2604:	825a      	strh	r2, [r3, #18]
    2606:	1d3b      	adds	r3, r7, #4
    2608:	2280      	movs	r2, #128	; 0x80
    260a:	0092      	lsls	r2, r2, #2
    260c:	829a      	strh	r2, [r3, #20]
    260e:	23c0      	movs	r3, #192	; 0xc0
    2610:	059b      	lsls	r3, r3, #22
    2612:	885b      	ldrh	r3, [r3, #2]
    2614:	b29a      	uxth	r2, r3
    2616:	1d3b      	adds	r3, r7, #4
    2618:	82da      	strh	r2, [r3, #22]
    261a:	23c0      	movs	r3, #192	; 0xc0
    261c:	059b      	lsls	r3, r3, #22
    261e:	889b      	ldrh	r3, [r3, #4]
    2620:	b29a      	uxth	r2, r3
    2622:	1d3b      	adds	r3, r7, #4
    2624:	831a      	strh	r2, [r3, #24]
    2626:	23c0      	movs	r3, #192	; 0xc0
    2628:	059b      	lsls	r3, r3, #22
    262a:	88db      	ldrh	r3, [r3, #6]
    262c:	b29a      	uxth	r2, r3
    262e:	1d3b      	adds	r3, r7, #4
    2630:	835a      	strh	r2, [r3, #26]
    2632:	4b15      	ldr	r3, [pc, #84]	; (2688 <Answear_ARP+0xe4>)
    2634:	881a      	ldrh	r2, [r3, #0]
    2636:	1d3b      	adds	r3, r7, #4
    2638:	839a      	strh	r2, [r3, #28]
    263a:	4b13      	ldr	r3, [pc, #76]	; (2688 <Answear_ARP+0xe4>)
    263c:	885a      	ldrh	r2, [r3, #2]
    263e:	1d3b      	adds	r3, r7, #4
    2640:	83da      	strh	r2, [r3, #30]
    2642:	4b10      	ldr	r3, [pc, #64]	; (2684 <Answear_ARP+0xe0>)
    2644:	88da      	ldrh	r2, [r3, #6]
    2646:	1d3b      	adds	r3, r7, #4
    2648:	841a      	strh	r2, [r3, #32]
    264a:	4b0e      	ldr	r3, [pc, #56]	; (2684 <Answear_ARP+0xe0>)
    264c:	891a      	ldrh	r2, [r3, #8]
    264e:	1d3b      	adds	r3, r7, #4
    2650:	845a      	strh	r2, [r3, #34]	; 0x22
    2652:	4b0c      	ldr	r3, [pc, #48]	; (2684 <Answear_ARP+0xe0>)
    2654:	895a      	ldrh	r2, [r3, #10]
    2656:	1d3b      	adds	r3, r7, #4
    2658:	849a      	strh	r2, [r3, #36]	; 0x24
    265a:	4b0a      	ldr	r3, [pc, #40]	; (2684 <Answear_ARP+0xe0>)
    265c:	8b9a      	ldrh	r2, [r3, #28]
    265e:	1d3b      	adds	r3, r7, #4
    2660:	84da      	strh	r2, [r3, #38]	; 0x26
    2662:	4b08      	ldr	r3, [pc, #32]	; (2684 <Answear_ARP+0xe0>)
    2664:	8bda      	ldrh	r2, [r3, #30]
    2666:	1d3b      	adds	r3, r7, #4
    2668:	851a      	strh	r2, [r3, #40]	; 0x28
    266a:	1d3b      	adds	r3, r7, #4
    266c:	2200      	movs	r2, #0
    266e:	855a      	strh	r2, [r3, #42]	; 0x2a
    2670:	1d3b      	adds	r3, r7, #4
    2672:	212a      	movs	r1, #42	; 0x2a
    2674:	0018      	movs	r0, r3
    2676:	f7ff fe61 	bl	233c <SendPacket>
    267a:	46c0      	nop			; (mov r8, r8)
    267c:	46bd      	mov	sp, r7
    267e:	b00c      	add	sp, #48	; 0x30
    2680:	bd80      	pop	{r7, pc}
    2682:	46c0      	nop			; (mov r8, r8)
    2684:	20004d38 	.word	0x20004d38
    2688:	2000000c 	.word	0x2000000c

0000268c <CheckSum_UDP>:
    268c:	b580      	push	{r7, lr}
    268e:	b086      	sub	sp, #24
    2690:	af00      	add	r7, sp, #0
    2692:	0002      	movs	r2, r0
    2694:	6039      	str	r1, [r7, #0]
    2696:	1dbb      	adds	r3, r7, #6
    2698:	801a      	strh	r2, [r3, #0]
    269a:	2300      	movs	r3, #0
    269c:	613b      	str	r3, [r7, #16]
    269e:	230d      	movs	r3, #13
    26a0:	617b      	str	r3, [r7, #20]
    26a2:	e019      	b.n	26d8 <CheckSum_UDP+0x4c>
    26a4:	697b      	ldr	r3, [r7, #20]
    26a6:	005b      	lsls	r3, r3, #1
    26a8:	683a      	ldr	r2, [r7, #0]
    26aa:	18d3      	adds	r3, r2, r3
    26ac:	881b      	ldrh	r3, [r3, #0]
    26ae:	021b      	lsls	r3, r3, #8
    26b0:	041b      	lsls	r3, r3, #16
    26b2:	0c1a      	lsrs	r2, r3, #16
    26b4:	697b      	ldr	r3, [r7, #20]
    26b6:	005b      	lsls	r3, r3, #1
    26b8:	6839      	ldr	r1, [r7, #0]
    26ba:	18cb      	adds	r3, r1, r3
    26bc:	881b      	ldrh	r3, [r3, #0]
    26be:	0a1b      	lsrs	r3, r3, #8
    26c0:	b29b      	uxth	r3, r3
    26c2:	0019      	movs	r1, r3
    26c4:	23ff      	movs	r3, #255	; 0xff
    26c6:	400b      	ands	r3, r1
    26c8:	18d3      	adds	r3, r2, r3
    26ca:	001a      	movs	r2, r3
    26cc:	693b      	ldr	r3, [r7, #16]
    26ce:	189b      	adds	r3, r3, r2
    26d0:	613b      	str	r3, [r7, #16]
    26d2:	697b      	ldr	r3, [r7, #20]
    26d4:	3301      	adds	r3, #1
    26d6:	617b      	str	r3, [r7, #20]
    26d8:	697b      	ldr	r3, [r7, #20]
    26da:	2b10      	cmp	r3, #16
    26dc:	d9e2      	bls.n	26a4 <CheckSum_UDP+0x18>
    26de:	683b      	ldr	r3, [r7, #0]
    26e0:	3316      	adds	r3, #22
    26e2:	881b      	ldrh	r3, [r3, #0]
    26e4:	0a1b      	lsrs	r3, r3, #8
    26e6:	b29b      	uxth	r3, r3
    26e8:	001a      	movs	r2, r3
    26ea:	23ff      	movs	r3, #255	; 0xff
    26ec:	4013      	ands	r3, r2
    26ee:	693a      	ldr	r2, [r7, #16]
    26f0:	18d3      	adds	r3, r2, r3
    26f2:	613b      	str	r3, [r7, #16]
    26f4:	1dbb      	adds	r3, r7, #6
    26f6:	881b      	ldrh	r3, [r3, #0]
    26f8:	693a      	ldr	r2, [r7, #16]
    26fa:	18d3      	adds	r3, r2, r3
    26fc:	613b      	str	r3, [r7, #16]
    26fe:	683b      	ldr	r3, [r7, #0]
    2700:	3322      	adds	r3, #34	; 0x22
    2702:	881b      	ldrh	r3, [r3, #0]
    2704:	021b      	lsls	r3, r3, #8
    2706:	041b      	lsls	r3, r3, #16
    2708:	0c1a      	lsrs	r2, r3, #16
    270a:	683b      	ldr	r3, [r7, #0]
    270c:	3322      	adds	r3, #34	; 0x22
    270e:	881b      	ldrh	r3, [r3, #0]
    2710:	0a1b      	lsrs	r3, r3, #8
    2712:	b29b      	uxth	r3, r3
    2714:	0019      	movs	r1, r3
    2716:	23ff      	movs	r3, #255	; 0xff
    2718:	400b      	ands	r3, r1
    271a:	18d3      	adds	r3, r2, r3
    271c:	001a      	movs	r2, r3
    271e:	693b      	ldr	r3, [r7, #16]
    2720:	189b      	adds	r3, r3, r2
    2722:	613b      	str	r3, [r7, #16]
    2724:	683b      	ldr	r3, [r7, #0]
    2726:	3324      	adds	r3, #36	; 0x24
    2728:	881b      	ldrh	r3, [r3, #0]
    272a:	021b      	lsls	r3, r3, #8
    272c:	041b      	lsls	r3, r3, #16
    272e:	0c1a      	lsrs	r2, r3, #16
    2730:	683b      	ldr	r3, [r7, #0]
    2732:	3324      	adds	r3, #36	; 0x24
    2734:	881b      	ldrh	r3, [r3, #0]
    2736:	0a1b      	lsrs	r3, r3, #8
    2738:	b29b      	uxth	r3, r3
    273a:	0019      	movs	r1, r3
    273c:	23ff      	movs	r3, #255	; 0xff
    273e:	400b      	ands	r3, r1
    2740:	18d3      	adds	r3, r2, r3
    2742:	001a      	movs	r2, r3
    2744:	693b      	ldr	r3, [r7, #16]
    2746:	189b      	adds	r3, r3, r2
    2748:	613b      	str	r3, [r7, #16]
    274a:	1dbb      	adds	r3, r7, #6
    274c:	881b      	ldrh	r3, [r3, #0]
    274e:	693a      	ldr	r2, [r7, #16]
    2750:	18d3      	adds	r3, r2, r3
    2752:	613b      	str	r3, [r7, #16]
    2754:	683b      	ldr	r3, [r7, #0]
    2756:	3328      	adds	r3, #40	; 0x28
    2758:	881b      	ldrh	r3, [r3, #0]
    275a:	021b      	lsls	r3, r3, #8
    275c:	041b      	lsls	r3, r3, #16
    275e:	0c1a      	lsrs	r2, r3, #16
    2760:	683b      	ldr	r3, [r7, #0]
    2762:	3328      	adds	r3, #40	; 0x28
    2764:	881b      	ldrh	r3, [r3, #0]
    2766:	0a1b      	lsrs	r3, r3, #8
    2768:	b29b      	uxth	r3, r3
    276a:	0019      	movs	r1, r3
    276c:	23ff      	movs	r3, #255	; 0xff
    276e:	400b      	ands	r3, r1
    2770:	18d3      	adds	r3, r2, r3
    2772:	001a      	movs	r2, r3
    2774:	693b      	ldr	r3, [r7, #16]
    2776:	189b      	adds	r3, r3, r2
    2778:	613b      	str	r3, [r7, #16]
    277a:	683b      	ldr	r3, [r7, #0]
    277c:	332a      	adds	r3, #42	; 0x2a
    277e:	60fb      	str	r3, [r7, #12]
    2780:	2300      	movs	r3, #0
    2782:	617b      	str	r3, [r7, #20]
    2784:	e017      	b.n	27b6 <CheckSum_UDP+0x12a>
    2786:	697b      	ldr	r3, [r7, #20]
    2788:	2201      	movs	r2, #1
    278a:	4013      	ands	r3, r2
    278c:	d008      	beq.n	27a0 <CheckSum_UDP+0x114>
    278e:	68fb      	ldr	r3, [r7, #12]
    2790:	1c5a      	adds	r2, r3, #1
    2792:	60fa      	str	r2, [r7, #12]
    2794:	781b      	ldrb	r3, [r3, #0]
    2796:	001a      	movs	r2, r3
    2798:	693b      	ldr	r3, [r7, #16]
    279a:	189b      	adds	r3, r3, r2
    279c:	613b      	str	r3, [r7, #16]
    279e:	e007      	b.n	27b0 <CheckSum_UDP+0x124>
    27a0:	68fb      	ldr	r3, [r7, #12]
    27a2:	1c5a      	adds	r2, r3, #1
    27a4:	60fa      	str	r2, [r7, #12]
    27a6:	781b      	ldrb	r3, [r3, #0]
    27a8:	021b      	lsls	r3, r3, #8
    27aa:	693a      	ldr	r2, [r7, #16]
    27ac:	18d3      	adds	r3, r2, r3
    27ae:	613b      	str	r3, [r7, #16]
    27b0:	697b      	ldr	r3, [r7, #20]
    27b2:	3301      	adds	r3, #1
    27b4:	617b      	str	r3, [r7, #20]
    27b6:	1dbb      	adds	r3, r7, #6
    27b8:	881b      	ldrh	r3, [r3, #0]
    27ba:	3b08      	subs	r3, #8
    27bc:	001a      	movs	r2, r3
    27be:	697b      	ldr	r3, [r7, #20]
    27c0:	429a      	cmp	r2, r3
    27c2:	d8e0      	bhi.n	2786 <CheckSum_UDP+0xfa>
    27c4:	e006      	b.n	27d4 <CheckSum_UDP+0x148>
    27c6:	693b      	ldr	r3, [r7, #16]
    27c8:	0c1a      	lsrs	r2, r3, #16
    27ca:	693b      	ldr	r3, [r7, #16]
    27cc:	041b      	lsls	r3, r3, #16
    27ce:	0c1b      	lsrs	r3, r3, #16
    27d0:	18d3      	adds	r3, r2, r3
    27d2:	613b      	str	r3, [r7, #16]
    27d4:	693b      	ldr	r3, [r7, #16]
    27d6:	0c1b      	lsrs	r3, r3, #16
    27d8:	d1f5      	bne.n	27c6 <CheckSum_UDP+0x13a>
    27da:	693b      	ldr	r3, [r7, #16]
    27dc:	b29b      	uxth	r3, r3
    27de:	43db      	mvns	r3, r3
    27e0:	b29b      	uxth	r3, r3
    27e2:	0018      	movs	r0, r3
    27e4:	46bd      	mov	sp, r7
    27e6:	b006      	add	sp, #24
    27e8:	bd80      	pop	{r7, pc}
    27ea:	46c0      	nop			; (mov r8, r8)

000027ec <CheckSum_IP>:
    27ec:	b580      	push	{r7, lr}
    27ee:	b084      	sub	sp, #16
    27f0:	af00      	add	r7, sp, #0
    27f2:	6078      	str	r0, [r7, #4]
    27f4:	2300      	movs	r3, #0
    27f6:	60bb      	str	r3, [r7, #8]
    27f8:	2300      	movs	r3, #0
    27fa:	60fb      	str	r3, [r7, #12]
    27fc:	e011      	b.n	2822 <CheckSum_IP+0x36>
    27fe:	68fb      	ldr	r3, [r7, #12]
    2800:	2b05      	cmp	r3, #5
    2802:	d00a      	beq.n	281a <CheckSum_IP+0x2e>
    2804:	68fb      	ldr	r3, [r7, #12]
    2806:	3307      	adds	r3, #7
    2808:	005b      	lsls	r3, r3, #1
    280a:	687a      	ldr	r2, [r7, #4]
    280c:	18d3      	adds	r3, r2, r3
    280e:	881b      	ldrh	r3, [r3, #0]
    2810:	001a      	movs	r2, r3
    2812:	68bb      	ldr	r3, [r7, #8]
    2814:	189b      	adds	r3, r3, r2
    2816:	60bb      	str	r3, [r7, #8]
    2818:	e000      	b.n	281c <CheckSum_IP+0x30>
    281a:	46c0      	nop			; (mov r8, r8)
    281c:	68fb      	ldr	r3, [r7, #12]
    281e:	3301      	adds	r3, #1
    2820:	60fb      	str	r3, [r7, #12]
    2822:	68fb      	ldr	r3, [r7, #12]
    2824:	2b09      	cmp	r3, #9
    2826:	d9ea      	bls.n	27fe <CheckSum_IP+0x12>
    2828:	68bb      	ldr	r3, [r7, #8]
    282a:	0c1a      	lsrs	r2, r3, #16
    282c:	68bb      	ldr	r3, [r7, #8]
    282e:	041b      	lsls	r3, r3, #16
    2830:	0c1b      	lsrs	r3, r3, #16
    2832:	18d3      	adds	r3, r2, r3
    2834:	60bb      	str	r3, [r7, #8]
    2836:	68bb      	ldr	r3, [r7, #8]
    2838:	b29b      	uxth	r3, r3
    283a:	43db      	mvns	r3, r3
    283c:	b29b      	uxth	r3, r3
    283e:	0018      	movs	r0, r3
    2840:	46bd      	mov	sp, r7
    2842:	b004      	add	sp, #16
    2844:	bd80      	pop	{r7, pc}
    2846:	46c0      	nop			; (mov r8, r8)

00002848 <CheckSum_ICMP>:
    2848:	b580      	push	{r7, lr}
    284a:	b084      	sub	sp, #16
    284c:	af00      	add	r7, sp, #0
    284e:	0002      	movs	r2, r0
    2850:	6039      	str	r1, [r7, #0]
    2852:	1dbb      	adds	r3, r7, #6
    2854:	801a      	strh	r2, [r3, #0]
    2856:	2300      	movs	r3, #0
    2858:	60bb      	str	r3, [r7, #8]
    285a:	2300      	movs	r3, #0
    285c:	60fb      	str	r3, [r7, #12]
    285e:	e011      	b.n	2884 <CheckSum_ICMP+0x3c>
    2860:	68fb      	ldr	r3, [r7, #12]
    2862:	2b01      	cmp	r3, #1
    2864:	d00a      	beq.n	287c <CheckSum_ICMP+0x34>
    2866:	68fb      	ldr	r3, [r7, #12]
    2868:	3311      	adds	r3, #17
    286a:	005b      	lsls	r3, r3, #1
    286c:	683a      	ldr	r2, [r7, #0]
    286e:	18d3      	adds	r3, r2, r3
    2870:	881b      	ldrh	r3, [r3, #0]
    2872:	001a      	movs	r2, r3
    2874:	68bb      	ldr	r3, [r7, #8]
    2876:	189b      	adds	r3, r3, r2
    2878:	60bb      	str	r3, [r7, #8]
    287a:	e000      	b.n	287e <CheckSum_ICMP+0x36>
    287c:	46c0      	nop			; (mov r8, r8)
    287e:	68fb      	ldr	r3, [r7, #12]
    2880:	3301      	adds	r3, #1
    2882:	60fb      	str	r3, [r7, #12]
    2884:	1dbb      	adds	r3, r7, #6
    2886:	881a      	ldrh	r2, [r3, #0]
    2888:	68fb      	ldr	r3, [r7, #12]
    288a:	429a      	cmp	r2, r3
    288c:	d8e8      	bhi.n	2860 <CheckSum_ICMP+0x18>
    288e:	68bb      	ldr	r3, [r7, #8]
    2890:	0c1a      	lsrs	r2, r3, #16
    2892:	68bb      	ldr	r3, [r7, #8]
    2894:	041b      	lsls	r3, r3, #16
    2896:	0c1b      	lsrs	r3, r3, #16
    2898:	18d3      	adds	r3, r2, r3
    289a:	60bb      	str	r3, [r7, #8]
    289c:	68bb      	ldr	r3, [r7, #8]
    289e:	b29b      	uxth	r3, r3
    28a0:	43db      	mvns	r3, r3
    28a2:	b29b      	uxth	r3, r3
    28a4:	0018      	movs	r0, r3
    28a6:	46bd      	mov	sp, r7
    28a8:	b004      	add	sp, #16
    28aa:	bd80      	pop	{r7, pc}

000028ac <Request_ICMP>:
    28ac:	b580      	push	{r7, lr}
    28ae:	b096      	sub	sp, #88	; 0x58
    28b0:	af00      	add	r7, sp, #0
    28b2:	4b73      	ldr	r3, [pc, #460]	; (2a80 <Request_ICMP+0x1d4>)
    28b4:	881a      	ldrh	r2, [r3, #0]
    28b6:	1d3b      	adds	r3, r7, #4
    28b8:	801a      	strh	r2, [r3, #0]
    28ba:	4b71      	ldr	r3, [pc, #452]	; (2a80 <Request_ICMP+0x1d4>)
    28bc:	885a      	ldrh	r2, [r3, #2]
    28be:	1d3b      	adds	r3, r7, #4
    28c0:	805a      	strh	r2, [r3, #2]
    28c2:	4b6f      	ldr	r3, [pc, #444]	; (2a80 <Request_ICMP+0x1d4>)
    28c4:	889a      	ldrh	r2, [r3, #4]
    28c6:	1d3b      	adds	r3, r7, #4
    28c8:	809a      	strh	r2, [r3, #4]
    28ca:	23c0      	movs	r3, #192	; 0xc0
    28cc:	059b      	lsls	r3, r3, #22
    28ce:	885b      	ldrh	r3, [r3, #2]
    28d0:	b29a      	uxth	r2, r3
    28d2:	1d3b      	adds	r3, r7, #4
    28d4:	80da      	strh	r2, [r3, #6]
    28d6:	23c0      	movs	r3, #192	; 0xc0
    28d8:	059b      	lsls	r3, r3, #22
    28da:	889b      	ldrh	r3, [r3, #4]
    28dc:	b29a      	uxth	r2, r3
    28de:	1d3b      	adds	r3, r7, #4
    28e0:	811a      	strh	r2, [r3, #8]
    28e2:	23c0      	movs	r3, #192	; 0xc0
    28e4:	059b      	lsls	r3, r3, #22
    28e6:	88db      	ldrh	r3, [r3, #6]
    28e8:	b29a      	uxth	r2, r3
    28ea:	1d3b      	adds	r3, r7, #4
    28ec:	815a      	strh	r2, [r3, #10]
    28ee:	1d3b      	adds	r3, r7, #4
    28f0:	2208      	movs	r2, #8
    28f2:	819a      	strh	r2, [r3, #12]
    28f4:	1d3b      	adds	r3, r7, #4
    28f6:	2245      	movs	r2, #69	; 0x45
    28f8:	81da      	strh	r2, [r3, #14]
    28fa:	1d3b      	adds	r3, r7, #4
    28fc:	22f0      	movs	r2, #240	; 0xf0
    28fe:	0192      	lsls	r2, r2, #6
    2900:	821a      	strh	r2, [r3, #16]
    2902:	4b60      	ldr	r3, [pc, #384]	; (2a84 <Request_ICMP+0x1d8>)
    2904:	881a      	ldrh	r2, [r3, #0]
    2906:	1d3b      	adds	r3, r7, #4
    2908:	825a      	strh	r2, [r3, #18]
    290a:	1d3b      	adds	r3, r7, #4
    290c:	2200      	movs	r2, #0
    290e:	829a      	strh	r2, [r3, #20]
    2910:	1d3b      	adds	r3, r7, #4
    2912:	22c0      	movs	r2, #192	; 0xc0
    2914:	0052      	lsls	r2, r2, #1
    2916:	82da      	strh	r2, [r3, #22]
    2918:	1d3b      	adds	r3, r7, #4
    291a:	2200      	movs	r2, #0
    291c:	831a      	strh	r2, [r3, #24]
    291e:	4b5a      	ldr	r3, [pc, #360]	; (2a88 <Request_ICMP+0x1dc>)
    2920:	881a      	ldrh	r2, [r3, #0]
    2922:	1d3b      	adds	r3, r7, #4
    2924:	835a      	strh	r2, [r3, #26]
    2926:	4b58      	ldr	r3, [pc, #352]	; (2a88 <Request_ICMP+0x1dc>)
    2928:	885a      	ldrh	r2, [r3, #2]
    292a:	1d3b      	adds	r3, r7, #4
    292c:	839a      	strh	r2, [r3, #28]
    292e:	4b54      	ldr	r3, [pc, #336]	; (2a80 <Request_ICMP+0x1d4>)
    2930:	88da      	ldrh	r2, [r3, #6]
    2932:	1d3b      	adds	r3, r7, #4
    2934:	83da      	strh	r2, [r3, #30]
    2936:	4b52      	ldr	r3, [pc, #328]	; (2a80 <Request_ICMP+0x1d4>)
    2938:	891a      	ldrh	r2, [r3, #8]
    293a:	1d3b      	adds	r3, r7, #4
    293c:	841a      	strh	r2, [r3, #32]
    293e:	1d3b      	adds	r3, r7, #4
    2940:	0018      	movs	r0, r3
    2942:	f7ff ff53 	bl	27ec <CheckSum_IP>
    2946:	0003      	movs	r3, r0
    2948:	001a      	movs	r2, r3
    294a:	1d3b      	adds	r3, r7, #4
    294c:	831a      	strh	r2, [r3, #24]
    294e:	1d3b      	adds	r3, r7, #4
    2950:	2208      	movs	r2, #8
    2952:	845a      	strh	r2, [r3, #34]	; 0x22
    2954:	1d3b      	adds	r3, r7, #4
    2956:	2200      	movs	r2, #0
    2958:	849a      	strh	r2, [r3, #36]	; 0x24
    295a:	1d3b      	adds	r3, r7, #4
    295c:	2202      	movs	r2, #2
    295e:	84da      	strh	r2, [r3, #38]	; 0x26
    2960:	4b4a      	ldr	r3, [pc, #296]	; (2a8c <Request_ICMP+0x1e0>)
    2962:	881a      	ldrh	r2, [r3, #0]
    2964:	1d3b      	adds	r3, r7, #4
    2966:	851a      	strh	r2, [r3, #40]	; 0x28
    2968:	2300      	movs	r3, #0
    296a:	657b      	str	r3, [r7, #84]	; 0x54
    296c:	2300      	movs	r3, #0
    296e:	653b      	str	r3, [r7, #80]	; 0x50
    2970:	e021      	b.n	29b6 <Request_ICMP+0x10a>
    2972:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2974:	b2db      	uxtb	r3, r3
    2976:	3361      	adds	r3, #97	; 0x61
    2978:	b2da      	uxtb	r2, r3
    297a:	003b      	movs	r3, r7
    297c:	701a      	strb	r2, [r3, #0]
    297e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2980:	b2db      	uxtb	r3, r3
    2982:	3362      	adds	r3, #98	; 0x62
    2984:	b2da      	uxtb	r2, r3
    2986:	003b      	movs	r3, r7
    2988:	705a      	strb	r2, [r3, #1]
    298a:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    298c:	3315      	adds	r3, #21
    298e:	001a      	movs	r2, r3
    2990:	003b      	movs	r3, r7
    2992:	785b      	ldrb	r3, [r3, #1]
    2994:	021b      	lsls	r3, r3, #8
    2996:	b219      	sxth	r1, r3
    2998:	003b      	movs	r3, r7
    299a:	781b      	ldrb	r3, [r3, #0]
    299c:	b21b      	sxth	r3, r3
    299e:	430b      	orrs	r3, r1
    29a0:	b21b      	sxth	r3, r3
    29a2:	b299      	uxth	r1, r3
    29a4:	1d3b      	adds	r3, r7, #4
    29a6:	0052      	lsls	r2, r2, #1
    29a8:	52d1      	strh	r1, [r2, r3]
    29aa:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29ac:	3302      	adds	r3, #2
    29ae:	657b      	str	r3, [r7, #84]	; 0x54
    29b0:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    29b2:	3301      	adds	r3, #1
    29b4:	653b      	str	r3, [r7, #80]	; 0x50
    29b6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29b8:	2b1f      	cmp	r3, #31
    29ba:	d9da      	bls.n	2972 <Request_ICMP+0xc6>
    29bc:	1d3b      	adds	r3, r7, #4
    29be:	0019      	movs	r1, r3
    29c0:	2014      	movs	r0, #20
    29c2:	f7ff ff41 	bl	2848 <CheckSum_ICMP>
    29c6:	0003      	movs	r3, r0
    29c8:	001a      	movs	r2, r3
    29ca:	1d3b      	adds	r3, r7, #4
    29cc:	849a      	strh	r2, [r3, #36]	; 0x24
    29ce:	1d3b      	adds	r3, r7, #4
    29d0:	214a      	movs	r1, #74	; 0x4a
    29d2:	0018      	movs	r0, r3
    29d4:	f7ff fcb2 	bl	233c <SendPacket>
    29d8:	4b2a      	ldr	r3, [pc, #168]	; (2a84 <Request_ICMP+0x1d8>)
    29da:	881b      	ldrh	r3, [r3, #0]
    29dc:	0a1b      	lsrs	r3, r3, #8
    29de:	b29b      	uxth	r3, r3
    29e0:	b2da      	uxtb	r2, r3
    29e2:	003b      	movs	r3, r7
    29e4:	701a      	strb	r2, [r3, #0]
    29e6:	4b27      	ldr	r3, [pc, #156]	; (2a84 <Request_ICMP+0x1d8>)
    29e8:	881b      	ldrh	r3, [r3, #0]
    29ea:	b2da      	uxtb	r2, r3
    29ec:	003b      	movs	r3, r7
    29ee:	705a      	strb	r2, [r3, #1]
    29f0:	003b      	movs	r3, r7
    29f2:	781b      	ldrb	r3, [r3, #0]
    29f4:	3301      	adds	r3, #1
    29f6:	b2da      	uxtb	r2, r3
    29f8:	003b      	movs	r3, r7
    29fa:	701a      	strb	r2, [r3, #0]
    29fc:	003b      	movs	r3, r7
    29fe:	781b      	ldrb	r3, [r3, #0]
    2a00:	2b00      	cmp	r3, #0
    2a02:	d105      	bne.n	2a10 <Request_ICMP+0x164>
    2a04:	003b      	movs	r3, r7
    2a06:	785b      	ldrb	r3, [r3, #1]
    2a08:	3301      	adds	r3, #1
    2a0a:	b2da      	uxtb	r2, r3
    2a0c:	003b      	movs	r3, r7
    2a0e:	705a      	strb	r2, [r3, #1]
    2a10:	003b      	movs	r3, r7
    2a12:	781b      	ldrb	r3, [r3, #0]
    2a14:	021b      	lsls	r3, r3, #8
    2a16:	b21a      	sxth	r2, r3
    2a18:	003b      	movs	r3, r7
    2a1a:	785b      	ldrb	r3, [r3, #1]
    2a1c:	b21b      	sxth	r3, r3
    2a1e:	4313      	orrs	r3, r2
    2a20:	b21b      	sxth	r3, r3
    2a22:	b29a      	uxth	r2, r3
    2a24:	4b17      	ldr	r3, [pc, #92]	; (2a84 <Request_ICMP+0x1d8>)
    2a26:	801a      	strh	r2, [r3, #0]
    2a28:	4b18      	ldr	r3, [pc, #96]	; (2a8c <Request_ICMP+0x1e0>)
    2a2a:	881b      	ldrh	r3, [r3, #0]
    2a2c:	0a1b      	lsrs	r3, r3, #8
    2a2e:	b29b      	uxth	r3, r3
    2a30:	b2da      	uxtb	r2, r3
    2a32:	003b      	movs	r3, r7
    2a34:	701a      	strb	r2, [r3, #0]
    2a36:	4b15      	ldr	r3, [pc, #84]	; (2a8c <Request_ICMP+0x1e0>)
    2a38:	881b      	ldrh	r3, [r3, #0]
    2a3a:	b2da      	uxtb	r2, r3
    2a3c:	003b      	movs	r3, r7
    2a3e:	705a      	strb	r2, [r3, #1]
    2a40:	003b      	movs	r3, r7
    2a42:	781b      	ldrb	r3, [r3, #0]
    2a44:	3301      	adds	r3, #1
    2a46:	b2da      	uxtb	r2, r3
    2a48:	003b      	movs	r3, r7
    2a4a:	701a      	strb	r2, [r3, #0]
    2a4c:	003b      	movs	r3, r7
    2a4e:	781b      	ldrb	r3, [r3, #0]
    2a50:	2b00      	cmp	r3, #0
    2a52:	d105      	bne.n	2a60 <Request_ICMP+0x1b4>
    2a54:	003b      	movs	r3, r7
    2a56:	785b      	ldrb	r3, [r3, #1]
    2a58:	3301      	adds	r3, #1
    2a5a:	b2da      	uxtb	r2, r3
    2a5c:	003b      	movs	r3, r7
    2a5e:	705a      	strb	r2, [r3, #1]
    2a60:	003b      	movs	r3, r7
    2a62:	781b      	ldrb	r3, [r3, #0]
    2a64:	021b      	lsls	r3, r3, #8
    2a66:	b21a      	sxth	r2, r3
    2a68:	003b      	movs	r3, r7
    2a6a:	785b      	ldrb	r3, [r3, #1]
    2a6c:	b21b      	sxth	r3, r3
    2a6e:	4313      	orrs	r3, r2
    2a70:	b21b      	sxth	r3, r3
    2a72:	b29a      	uxth	r2, r3
    2a74:	4b05      	ldr	r3, [pc, #20]	; (2a8c <Request_ICMP+0x1e0>)
    2a76:	801a      	strh	r2, [r3, #0]
    2a78:	46c0      	nop			; (mov r8, r8)
    2a7a:	46bd      	mov	sp, r7
    2a7c:	b016      	add	sp, #88	; 0x58
    2a7e:	bd80      	pop	{r7, pc}
    2a80:	20004d1c 	.word	0x20004d1c
    2a84:	20004d30 	.word	0x20004d30
    2a88:	2000000c 	.word	0x2000000c
    2a8c:	20004d32 	.word	0x20004d32

00002a90 <Answear_ICMP>:
    2a90:	b580      	push	{r7, lr}
    2a92:	b082      	sub	sp, #8
    2a94:	af00      	add	r7, sp, #0
    2a96:	4b53      	ldr	r3, [pc, #332]	; (2be4 <Answear_ICMP+0x154>)
    2a98:	4a53      	ldr	r2, [pc, #332]	; (2be8 <Answear_ICMP+0x158>)
    2a9a:	5a9a      	ldrh	r2, [r3, r2]
    2a9c:	1cbb      	adds	r3, r7, #2
    2a9e:	3a26      	subs	r2, #38	; 0x26
    2aa0:	801a      	strh	r2, [r3, #0]
    2aa2:	1cbb      	adds	r3, r7, #2
    2aa4:	881b      	ldrh	r3, [r3, #0]
    2aa6:	2201      	movs	r2, #1
    2aa8:	4013      	ands	r3, r2
    2aaa:	d017      	beq.n	2adc <Answear_ICMP+0x4c>
    2aac:	1cbb      	adds	r3, r7, #2
    2aae:	881b      	ldrh	r3, [r3, #0]
    2ab0:	3301      	adds	r3, #1
    2ab2:	105a      	asrs	r2, r3, #1
    2ab4:	1cbb      	adds	r3, r7, #2
    2ab6:	801a      	strh	r2, [r3, #0]
    2ab8:	1cbb      	adds	r3, r7, #2
    2aba:	881b      	ldrh	r3, [r3, #0]
    2abc:	3310      	adds	r3, #16
    2abe:	001a      	movs	r2, r3
    2ac0:	1cbb      	adds	r3, r7, #2
    2ac2:	881b      	ldrh	r3, [r3, #0]
    2ac4:	3310      	adds	r3, #16
    2ac6:	0019      	movs	r1, r3
    2ac8:	4b46      	ldr	r3, [pc, #280]	; (2be4 <Answear_ICMP+0x154>)
    2aca:	0049      	lsls	r1, r1, #1
    2acc:	5acb      	ldrh	r3, [r1, r3]
    2ace:	21ff      	movs	r1, #255	; 0xff
    2ad0:	400b      	ands	r3, r1
    2ad2:	b299      	uxth	r1, r3
    2ad4:	4b43      	ldr	r3, [pc, #268]	; (2be4 <Answear_ICMP+0x154>)
    2ad6:	0052      	lsls	r2, r2, #1
    2ad8:	52d1      	strh	r1, [r2, r3]
    2ada:	e004      	b.n	2ae6 <Answear_ICMP+0x56>
    2adc:	1cbb      	adds	r3, r7, #2
    2ade:	1cba      	adds	r2, r7, #2
    2ae0:	8812      	ldrh	r2, [r2, #0]
    2ae2:	0852      	lsrs	r2, r2, #1
    2ae4:	801a      	strh	r2, [r3, #0]
    2ae6:	4b3f      	ldr	r3, [pc, #252]	; (2be4 <Answear_ICMP+0x154>)
    2ae8:	88da      	ldrh	r2, [r3, #6]
    2aea:	4b40      	ldr	r3, [pc, #256]	; (2bec <Answear_ICMP+0x15c>)
    2aec:	801a      	strh	r2, [r3, #0]
    2aee:	4b3d      	ldr	r3, [pc, #244]	; (2be4 <Answear_ICMP+0x154>)
    2af0:	891a      	ldrh	r2, [r3, #8]
    2af2:	4b3e      	ldr	r3, [pc, #248]	; (2bec <Answear_ICMP+0x15c>)
    2af4:	805a      	strh	r2, [r3, #2]
    2af6:	4b3b      	ldr	r3, [pc, #236]	; (2be4 <Answear_ICMP+0x154>)
    2af8:	895a      	ldrh	r2, [r3, #10]
    2afa:	4b3c      	ldr	r3, [pc, #240]	; (2bec <Answear_ICMP+0x15c>)
    2afc:	809a      	strh	r2, [r3, #4]
    2afe:	23c0      	movs	r3, #192	; 0xc0
    2b00:	059b      	lsls	r3, r3, #22
    2b02:	885b      	ldrh	r3, [r3, #2]
    2b04:	b29a      	uxth	r2, r3
    2b06:	4b39      	ldr	r3, [pc, #228]	; (2bec <Answear_ICMP+0x15c>)
    2b08:	80da      	strh	r2, [r3, #6]
    2b0a:	23c0      	movs	r3, #192	; 0xc0
    2b0c:	059b      	lsls	r3, r3, #22
    2b0e:	889b      	ldrh	r3, [r3, #4]
    2b10:	b29a      	uxth	r2, r3
    2b12:	4b36      	ldr	r3, [pc, #216]	; (2bec <Answear_ICMP+0x15c>)
    2b14:	811a      	strh	r2, [r3, #8]
    2b16:	23c0      	movs	r3, #192	; 0xc0
    2b18:	059b      	lsls	r3, r3, #22
    2b1a:	88db      	ldrh	r3, [r3, #6]
    2b1c:	b29a      	uxth	r2, r3
    2b1e:	4b33      	ldr	r3, [pc, #204]	; (2bec <Answear_ICMP+0x15c>)
    2b20:	815a      	strh	r2, [r3, #10]
    2b22:	4b30      	ldr	r3, [pc, #192]	; (2be4 <Answear_ICMP+0x154>)
    2b24:	899a      	ldrh	r2, [r3, #12]
    2b26:	4b31      	ldr	r3, [pc, #196]	; (2bec <Answear_ICMP+0x15c>)
    2b28:	819a      	strh	r2, [r3, #12]
    2b2a:	2307      	movs	r3, #7
    2b2c:	607b      	str	r3, [r7, #4]
    2b2e:	e00a      	b.n	2b46 <Answear_ICMP+0xb6>
    2b30:	4b2c      	ldr	r3, [pc, #176]	; (2be4 <Answear_ICMP+0x154>)
    2b32:	687a      	ldr	r2, [r7, #4]
    2b34:	0052      	lsls	r2, r2, #1
    2b36:	5ad1      	ldrh	r1, [r2, r3]
    2b38:	4b2c      	ldr	r3, [pc, #176]	; (2bec <Answear_ICMP+0x15c>)
    2b3a:	687a      	ldr	r2, [r7, #4]
    2b3c:	0052      	lsls	r2, r2, #1
    2b3e:	52d1      	strh	r1, [r2, r3]
    2b40:	687b      	ldr	r3, [r7, #4]
    2b42:	3301      	adds	r3, #1
    2b44:	607b      	str	r3, [r7, #4]
    2b46:	687b      	ldr	r3, [r7, #4]
    2b48:	2b0b      	cmp	r3, #11
    2b4a:	d9f1      	bls.n	2b30 <Answear_ICMP+0xa0>
    2b4c:	4b25      	ldr	r3, [pc, #148]	; (2be4 <Answear_ICMP+0x154>)
    2b4e:	0018      	movs	r0, r3
    2b50:	f7ff fe4c 	bl	27ec <CheckSum_IP>
    2b54:	0003      	movs	r3, r0
    2b56:	001a      	movs	r2, r3
    2b58:	4b24      	ldr	r3, [pc, #144]	; (2bec <Answear_ICMP+0x15c>)
    2b5a:	831a      	strh	r2, [r3, #24]
    2b5c:	4b21      	ldr	r3, [pc, #132]	; (2be4 <Answear_ICMP+0x154>)
    2b5e:	8bda      	ldrh	r2, [r3, #30]
    2b60:	4b22      	ldr	r3, [pc, #136]	; (2bec <Answear_ICMP+0x15c>)
    2b62:	835a      	strh	r2, [r3, #26]
    2b64:	4b1f      	ldr	r3, [pc, #124]	; (2be4 <Answear_ICMP+0x154>)
    2b66:	8c1a      	ldrh	r2, [r3, #32]
    2b68:	4b20      	ldr	r3, [pc, #128]	; (2bec <Answear_ICMP+0x15c>)
    2b6a:	839a      	strh	r2, [r3, #28]
    2b6c:	4b1d      	ldr	r3, [pc, #116]	; (2be4 <Answear_ICMP+0x154>)
    2b6e:	8b5a      	ldrh	r2, [r3, #26]
    2b70:	4b1e      	ldr	r3, [pc, #120]	; (2bec <Answear_ICMP+0x15c>)
    2b72:	83da      	strh	r2, [r3, #30]
    2b74:	4b1b      	ldr	r3, [pc, #108]	; (2be4 <Answear_ICMP+0x154>)
    2b76:	8b9a      	ldrh	r2, [r3, #28]
    2b78:	4b1c      	ldr	r3, [pc, #112]	; (2bec <Answear_ICMP+0x15c>)
    2b7a:	841a      	strh	r2, [r3, #32]
    2b7c:	4b1b      	ldr	r3, [pc, #108]	; (2bec <Answear_ICMP+0x15c>)
    2b7e:	2200      	movs	r2, #0
    2b80:	845a      	strh	r2, [r3, #34]	; 0x22
    2b82:	4b18      	ldr	r3, [pc, #96]	; (2be4 <Answear_ICMP+0x154>)
    2b84:	2200      	movs	r2, #0
    2b86:	845a      	strh	r2, [r3, #34]	; 0x22
    2b88:	4a16      	ldr	r2, [pc, #88]	; (2be4 <Answear_ICMP+0x154>)
    2b8a:	1cbb      	adds	r3, r7, #2
    2b8c:	881b      	ldrh	r3, [r3, #0]
    2b8e:	0011      	movs	r1, r2
    2b90:	0018      	movs	r0, r3
    2b92:	f7ff fe59 	bl	2848 <CheckSum_ICMP>
    2b96:	0003      	movs	r3, r0
    2b98:	001a      	movs	r2, r3
    2b9a:	4b14      	ldr	r3, [pc, #80]	; (2bec <Answear_ICMP+0x15c>)
    2b9c:	849a      	strh	r2, [r3, #36]	; 0x24
    2b9e:	2313      	movs	r3, #19
    2ba0:	607b      	str	r3, [r7, #4]
    2ba2:	e00a      	b.n	2bba <Answear_ICMP+0x12a>
    2ba4:	4b0f      	ldr	r3, [pc, #60]	; (2be4 <Answear_ICMP+0x154>)
    2ba6:	687a      	ldr	r2, [r7, #4]
    2ba8:	0052      	lsls	r2, r2, #1
    2baa:	5ad1      	ldrh	r1, [r2, r3]
    2bac:	4b0f      	ldr	r3, [pc, #60]	; (2bec <Answear_ICMP+0x15c>)
    2bae:	687a      	ldr	r2, [r7, #4]
    2bb0:	0052      	lsls	r2, r2, #1
    2bb2:	52d1      	strh	r1, [r2, r3]
    2bb4:	687b      	ldr	r3, [r7, #4]
    2bb6:	3301      	adds	r3, #1
    2bb8:	607b      	str	r3, [r7, #4]
    2bba:	1cbb      	adds	r3, r7, #2
    2bbc:	881b      	ldrh	r3, [r3, #0]
    2bbe:	3311      	adds	r3, #17
    2bc0:	001a      	movs	r2, r3
    2bc2:	687b      	ldr	r3, [r7, #4]
    2bc4:	429a      	cmp	r2, r3
    2bc6:	d8ed      	bhi.n	2ba4 <Answear_ICMP+0x114>
    2bc8:	1cbb      	adds	r3, r7, #2
    2bca:	881b      	ldrh	r3, [r3, #0]
    2bcc:	3311      	adds	r3, #17
    2bce:	005a      	lsls	r2, r3, #1
    2bd0:	4b06      	ldr	r3, [pc, #24]	; (2bec <Answear_ICMP+0x15c>)
    2bd2:	0011      	movs	r1, r2
    2bd4:	0018      	movs	r0, r3
    2bd6:	f7ff fbb1 	bl	233c <SendPacket>
    2bda:	46c0      	nop			; (mov r8, r8)
    2bdc:	46bd      	mov	sp, r7
    2bde:	b002      	add	sp, #8
    2be0:	bd80      	pop	{r7, pc}
    2be2:	46c0      	nop			; (mov r8, r8)
    2be4:	20004d38 	.word	0x20004d38
    2be8:	000005dc 	.word	0x000005dc
    2bec:	20005344 	.word	0x20005344

00002bf0 <Send_UDP>:
    2bf0:	b590      	push	{r4, r7, lr}
    2bf2:	b089      	sub	sp, #36	; 0x24
    2bf4:	af00      	add	r7, sp, #0
    2bf6:	6078      	str	r0, [r7, #4]
    2bf8:	6039      	str	r1, [r7, #0]
    2bfa:	4b86      	ldr	r3, [pc, #536]	; (2e14 <Send_UDP+0x224>)
    2bfc:	881a      	ldrh	r2, [r3, #0]
    2bfe:	4b86      	ldr	r3, [pc, #536]	; (2e18 <Send_UDP+0x228>)
    2c00:	801a      	strh	r2, [r3, #0]
    2c02:	4b84      	ldr	r3, [pc, #528]	; (2e14 <Send_UDP+0x224>)
    2c04:	885a      	ldrh	r2, [r3, #2]
    2c06:	4b84      	ldr	r3, [pc, #528]	; (2e18 <Send_UDP+0x228>)
    2c08:	805a      	strh	r2, [r3, #2]
    2c0a:	4b82      	ldr	r3, [pc, #520]	; (2e14 <Send_UDP+0x224>)
    2c0c:	889a      	ldrh	r2, [r3, #4]
    2c0e:	4b82      	ldr	r3, [pc, #520]	; (2e18 <Send_UDP+0x228>)
    2c10:	809a      	strh	r2, [r3, #4]
    2c12:	23c0      	movs	r3, #192	; 0xc0
    2c14:	059b      	lsls	r3, r3, #22
    2c16:	885b      	ldrh	r3, [r3, #2]
    2c18:	b29a      	uxth	r2, r3
    2c1a:	4b7f      	ldr	r3, [pc, #508]	; (2e18 <Send_UDP+0x228>)
    2c1c:	80da      	strh	r2, [r3, #6]
    2c1e:	23c0      	movs	r3, #192	; 0xc0
    2c20:	059b      	lsls	r3, r3, #22
    2c22:	889b      	ldrh	r3, [r3, #4]
    2c24:	b29a      	uxth	r2, r3
    2c26:	4b7c      	ldr	r3, [pc, #496]	; (2e18 <Send_UDP+0x228>)
    2c28:	811a      	strh	r2, [r3, #8]
    2c2a:	23c0      	movs	r3, #192	; 0xc0
    2c2c:	059b      	lsls	r3, r3, #22
    2c2e:	88db      	ldrh	r3, [r3, #6]
    2c30:	b29a      	uxth	r2, r3
    2c32:	4b79      	ldr	r3, [pc, #484]	; (2e18 <Send_UDP+0x228>)
    2c34:	815a      	strh	r2, [r3, #10]
    2c36:	4b78      	ldr	r3, [pc, #480]	; (2e18 <Send_UDP+0x228>)
    2c38:	2208      	movs	r2, #8
    2c3a:	819a      	strh	r2, [r3, #12]
    2c3c:	4b76      	ldr	r3, [pc, #472]	; (2e18 <Send_UDP+0x228>)
    2c3e:	2245      	movs	r2, #69	; 0x45
    2c40:	81da      	strh	r2, [r3, #14]
    2c42:	4b75      	ldr	r3, [pc, #468]	; (2e18 <Send_UDP+0x228>)
    2c44:	22f0      	movs	r2, #240	; 0xf0
    2c46:	0192      	lsls	r2, r2, #6
    2c48:	821a      	strh	r2, [r3, #16]
    2c4a:	4b74      	ldr	r3, [pc, #464]	; (2e1c <Send_UDP+0x22c>)
    2c4c:	881a      	ldrh	r2, [r3, #0]
    2c4e:	4b72      	ldr	r3, [pc, #456]	; (2e18 <Send_UDP+0x228>)
    2c50:	825a      	strh	r2, [r3, #18]
    2c52:	4b71      	ldr	r3, [pc, #452]	; (2e18 <Send_UDP+0x228>)
    2c54:	2200      	movs	r2, #0
    2c56:	829a      	strh	r2, [r3, #20]
    2c58:	4b6f      	ldr	r3, [pc, #444]	; (2e18 <Send_UDP+0x228>)
    2c5a:	228c      	movs	r2, #140	; 0x8c
    2c5c:	0152      	lsls	r2, r2, #5
    2c5e:	82da      	strh	r2, [r3, #22]
    2c60:	4b6d      	ldr	r3, [pc, #436]	; (2e18 <Send_UDP+0x228>)
    2c62:	2200      	movs	r2, #0
    2c64:	831a      	strh	r2, [r3, #24]
    2c66:	4b6e      	ldr	r3, [pc, #440]	; (2e20 <Send_UDP+0x230>)
    2c68:	881a      	ldrh	r2, [r3, #0]
    2c6a:	4b6b      	ldr	r3, [pc, #428]	; (2e18 <Send_UDP+0x228>)
    2c6c:	835a      	strh	r2, [r3, #26]
    2c6e:	4b6c      	ldr	r3, [pc, #432]	; (2e20 <Send_UDP+0x230>)
    2c70:	885a      	ldrh	r2, [r3, #2]
    2c72:	4b69      	ldr	r3, [pc, #420]	; (2e18 <Send_UDP+0x228>)
    2c74:	839a      	strh	r2, [r3, #28]
    2c76:	4b67      	ldr	r3, [pc, #412]	; (2e14 <Send_UDP+0x224>)
    2c78:	88da      	ldrh	r2, [r3, #6]
    2c7a:	4b67      	ldr	r3, [pc, #412]	; (2e18 <Send_UDP+0x228>)
    2c7c:	83da      	strh	r2, [r3, #30]
    2c7e:	4b65      	ldr	r3, [pc, #404]	; (2e14 <Send_UDP+0x224>)
    2c80:	891a      	ldrh	r2, [r3, #8]
    2c82:	4b65      	ldr	r3, [pc, #404]	; (2e18 <Send_UDP+0x228>)
    2c84:	841a      	strh	r2, [r3, #32]
    2c86:	2316      	movs	r3, #22
    2c88:	18fb      	adds	r3, r7, r3
    2c8a:	4a66      	ldr	r2, [pc, #408]	; (2e24 <Send_UDP+0x234>)
    2c8c:	801a      	strh	r2, [r3, #0]
    2c8e:	2316      	movs	r3, #22
    2c90:	18fb      	adds	r3, r7, r3
    2c92:	2216      	movs	r2, #22
    2c94:	18ba      	adds	r2, r7, r2
    2c96:	8812      	ldrh	r2, [r2, #0]
    2c98:	ba52      	rev16	r2, r2
    2c9a:	801a      	strh	r2, [r3, #0]
    2c9c:	4b62      	ldr	r3, [pc, #392]	; (2e28 <Send_UDP+0x238>)
    2c9e:	881a      	ldrh	r2, [r3, #0]
    2ca0:	2314      	movs	r3, #20
    2ca2:	18fb      	adds	r3, r7, r3
    2ca4:	ba52      	rev16	r2, r2
    2ca6:	801a      	strh	r2, [r3, #0]
    2ca8:	4b5b      	ldr	r3, [pc, #364]	; (2e18 <Send_UDP+0x228>)
    2caa:	2216      	movs	r2, #22
    2cac:	18ba      	adds	r2, r7, r2
    2cae:	8812      	ldrh	r2, [r2, #0]
    2cb0:	845a      	strh	r2, [r3, #34]	; 0x22
    2cb2:	4b59      	ldr	r3, [pc, #356]	; (2e18 <Send_UDP+0x228>)
    2cb4:	2214      	movs	r2, #20
    2cb6:	18ba      	adds	r2, r7, r2
    2cb8:	8812      	ldrh	r2, [r2, #0]
    2cba:	849a      	strh	r2, [r3, #36]	; 0x24
    2cbc:	4b56      	ldr	r3, [pc, #344]	; (2e18 <Send_UDP+0x228>)
    2cbe:	22c0      	movs	r2, #192	; 0xc0
    2cc0:	0112      	lsls	r2, r2, #4
    2cc2:	84da      	strh	r2, [r3, #38]	; 0x26
    2cc4:	4b54      	ldr	r3, [pc, #336]	; (2e18 <Send_UDP+0x228>)
    2cc6:	2200      	movs	r2, #0
    2cc8:	851a      	strh	r2, [r3, #40]	; 0x28
    2cca:	4b58      	ldr	r3, [pc, #352]	; (2e2c <Send_UDP+0x23c>)
    2ccc:	61bb      	str	r3, [r7, #24]
    2cce:	683a      	ldr	r2, [r7, #0]
    2cd0:	23fe      	movs	r3, #254	; 0xfe
    2cd2:	005b      	lsls	r3, r3, #1
    2cd4:	429a      	cmp	r2, r3
    2cd6:	dd02      	ble.n	2cde <Send_UDP+0xee>
    2cd8:	23fe      	movs	r3, #254	; 0xfe
    2cda:	005b      	lsls	r3, r3, #1
    2cdc:	603b      	str	r3, [r7, #0]
    2cde:	2300      	movs	r3, #0
    2ce0:	61fb      	str	r3, [r7, #28]
    2ce2:	e00a      	b.n	2cfa <Send_UDP+0x10a>
    2ce4:	69bb      	ldr	r3, [r7, #24]
    2ce6:	1c5a      	adds	r2, r3, #1
    2ce8:	61ba      	str	r2, [r7, #24]
    2cea:	687a      	ldr	r2, [r7, #4]
    2cec:	1c51      	adds	r1, r2, #1
    2cee:	6079      	str	r1, [r7, #4]
    2cf0:	7812      	ldrb	r2, [r2, #0]
    2cf2:	701a      	strb	r2, [r3, #0]
    2cf4:	69fb      	ldr	r3, [r7, #28]
    2cf6:	3301      	adds	r3, #1
    2cf8:	61fb      	str	r3, [r7, #28]
    2cfa:	683b      	ldr	r3, [r7, #0]
    2cfc:	69fa      	ldr	r2, [r7, #28]
    2cfe:	429a      	cmp	r2, r3
    2d00:	d3f0      	bcc.n	2ce4 <Send_UDP+0xf4>
    2d02:	683b      	ldr	r3, [r7, #0]
    2d04:	b29a      	uxth	r2, r3
    2d06:	2312      	movs	r3, #18
    2d08:	18fb      	adds	r3, r7, r3
    2d0a:	321c      	adds	r2, #28
    2d0c:	801a      	strh	r2, [r3, #0]
    2d0e:	2312      	movs	r3, #18
    2d10:	18fb      	adds	r3, r7, r3
    2d12:	881b      	ldrh	r3, [r3, #0]
    2d14:	021b      	lsls	r3, r3, #8
    2d16:	b29a      	uxth	r2, r3
    2d18:	2312      	movs	r3, #18
    2d1a:	18fb      	adds	r3, r7, r3
    2d1c:	881b      	ldrh	r3, [r3, #0]
    2d1e:	0a1b      	lsrs	r3, r3, #8
    2d20:	b29b      	uxth	r3, r3
    2d22:	18d3      	adds	r3, r2, r3
    2d24:	b29a      	uxth	r2, r3
    2d26:	4b3c      	ldr	r3, [pc, #240]	; (2e18 <Send_UDP+0x228>)
    2d28:	821a      	strh	r2, [r3, #16]
    2d2a:	4b3b      	ldr	r3, [pc, #236]	; (2e18 <Send_UDP+0x228>)
    2d2c:	0018      	movs	r0, r3
    2d2e:	f7ff fd5d 	bl	27ec <CheckSum_IP>
    2d32:	0003      	movs	r3, r0
    2d34:	001a      	movs	r2, r3
    2d36:	4b38      	ldr	r3, [pc, #224]	; (2e18 <Send_UDP+0x228>)
    2d38:	831a      	strh	r2, [r3, #24]
    2d3a:	683b      	ldr	r3, [r7, #0]
    2d3c:	b29a      	uxth	r2, r3
    2d3e:	2310      	movs	r3, #16
    2d40:	18fb      	adds	r3, r7, r3
    2d42:	3208      	adds	r2, #8
    2d44:	801a      	strh	r2, [r3, #0]
    2d46:	2310      	movs	r3, #16
    2d48:	18fb      	adds	r3, r7, r3
    2d4a:	881b      	ldrh	r3, [r3, #0]
    2d4c:	021b      	lsls	r3, r3, #8
    2d4e:	b29a      	uxth	r2, r3
    2d50:	2310      	movs	r3, #16
    2d52:	18fb      	adds	r3, r7, r3
    2d54:	881b      	ldrh	r3, [r3, #0]
    2d56:	0a1b      	lsrs	r3, r3, #8
    2d58:	b29b      	uxth	r3, r3
    2d5a:	18d3      	adds	r3, r2, r3
    2d5c:	b29a      	uxth	r2, r3
    2d5e:	4b2e      	ldr	r3, [pc, #184]	; (2e18 <Send_UDP+0x228>)
    2d60:	84da      	strh	r2, [r3, #38]	; 0x26
    2d62:	683b      	ldr	r3, [r7, #0]
    2d64:	b29b      	uxth	r3, r3
    2d66:	3308      	adds	r3, #8
    2d68:	b29b      	uxth	r3, r3
    2d6a:	220e      	movs	r2, #14
    2d6c:	18bc      	adds	r4, r7, r2
    2d6e:	4a2a      	ldr	r2, [pc, #168]	; (2e18 <Send_UDP+0x228>)
    2d70:	0011      	movs	r1, r2
    2d72:	0018      	movs	r0, r3
    2d74:	f7ff fc8a 	bl	268c <CheckSum_UDP>
    2d78:	0003      	movs	r3, r0
    2d7a:	8023      	strh	r3, [r4, #0]
    2d7c:	230e      	movs	r3, #14
    2d7e:	18fb      	adds	r3, r7, r3
    2d80:	881b      	ldrh	r3, [r3, #0]
    2d82:	021b      	lsls	r3, r3, #8
    2d84:	b29a      	uxth	r2, r3
    2d86:	230e      	movs	r3, #14
    2d88:	18fb      	adds	r3, r7, r3
    2d8a:	881b      	ldrh	r3, [r3, #0]
    2d8c:	0a1b      	lsrs	r3, r3, #8
    2d8e:	b29b      	uxth	r3, r3
    2d90:	18d3      	adds	r3, r2, r3
    2d92:	b29a      	uxth	r2, r3
    2d94:	4b20      	ldr	r3, [pc, #128]	; (2e18 <Send_UDP+0x228>)
    2d96:	851a      	strh	r2, [r3, #40]	; 0x28
    2d98:	683b      	ldr	r3, [r7, #0]
    2d9a:	332a      	adds	r3, #42	; 0x2a
    2d9c:	001a      	movs	r2, r3
    2d9e:	4b1e      	ldr	r3, [pc, #120]	; (2e18 <Send_UDP+0x228>)
    2da0:	0011      	movs	r1, r2
    2da2:	0018      	movs	r0, r3
    2da4:	f7ff faca 	bl	233c <SendPacket>
    2da8:	4b1c      	ldr	r3, [pc, #112]	; (2e1c <Send_UDP+0x22c>)
    2daa:	881b      	ldrh	r3, [r3, #0]
    2dac:	0a1b      	lsrs	r3, r3, #8
    2dae:	b29b      	uxth	r3, r3
    2db0:	b2da      	uxtb	r2, r3
    2db2:	230c      	movs	r3, #12
    2db4:	18fb      	adds	r3, r7, r3
    2db6:	701a      	strb	r2, [r3, #0]
    2db8:	4b18      	ldr	r3, [pc, #96]	; (2e1c <Send_UDP+0x22c>)
    2dba:	881b      	ldrh	r3, [r3, #0]
    2dbc:	b2da      	uxtb	r2, r3
    2dbe:	230c      	movs	r3, #12
    2dc0:	18fb      	adds	r3, r7, r3
    2dc2:	705a      	strb	r2, [r3, #1]
    2dc4:	230c      	movs	r3, #12
    2dc6:	18fb      	adds	r3, r7, r3
    2dc8:	781b      	ldrb	r3, [r3, #0]
    2dca:	3301      	adds	r3, #1
    2dcc:	b2da      	uxtb	r2, r3
    2dce:	230c      	movs	r3, #12
    2dd0:	18fb      	adds	r3, r7, r3
    2dd2:	701a      	strb	r2, [r3, #0]
    2dd4:	230c      	movs	r3, #12
    2dd6:	18fb      	adds	r3, r7, r3
    2dd8:	781b      	ldrb	r3, [r3, #0]
    2dda:	2b00      	cmp	r3, #0
    2ddc:	d107      	bne.n	2dee <Send_UDP+0x1fe>
    2dde:	230c      	movs	r3, #12
    2de0:	18fb      	adds	r3, r7, r3
    2de2:	785b      	ldrb	r3, [r3, #1]
    2de4:	3301      	adds	r3, #1
    2de6:	b2da      	uxtb	r2, r3
    2de8:	230c      	movs	r3, #12
    2dea:	18fb      	adds	r3, r7, r3
    2dec:	705a      	strb	r2, [r3, #1]
    2dee:	230c      	movs	r3, #12
    2df0:	18fb      	adds	r3, r7, r3
    2df2:	781b      	ldrb	r3, [r3, #0]
    2df4:	021b      	lsls	r3, r3, #8
    2df6:	b21a      	sxth	r2, r3
    2df8:	230c      	movs	r3, #12
    2dfa:	18fb      	adds	r3, r7, r3
    2dfc:	785b      	ldrb	r3, [r3, #1]
    2dfe:	b21b      	sxth	r3, r3
    2e00:	4313      	orrs	r3, r2
    2e02:	b21b      	sxth	r3, r3
    2e04:	b29a      	uxth	r2, r3
    2e06:	4b05      	ldr	r3, [pc, #20]	; (2e1c <Send_UDP+0x22c>)
    2e08:	801a      	strh	r2, [r3, #0]
    2e0a:	46c0      	nop			; (mov r8, r8)
    2e0c:	46bd      	mov	sp, r7
    2e0e:	b009      	add	sp, #36	; 0x24
    2e10:	bd90      	pop	{r4, r7, pc}
    2e12:	46c0      	nop			; (mov r8, r8)
    2e14:	20004d1c 	.word	0x20004d1c
    2e18:	20005584 	.word	0x20005584
    2e1c:	20004d30 	.word	0x20004d30
    2e20:	2000000c 	.word	0x2000000c
    2e24:	00001234 	.word	0x00001234
    2e28:	20005318 	.word	0x20005318
    2e2c:	200055ae 	.word	0x200055ae

00002e30 <PacketParser>:
    2e30:	b580      	push	{r7, lr}
    2e32:	b082      	sub	sp, #8
    2e34:	af00      	add	r7, sp, #0
    2e36:	4b49      	ldr	r3, [pc, #292]	; (2f5c <PacketParser+0x12c>)
    2e38:	899b      	ldrh	r3, [r3, #12]
    2e3a:	2b08      	cmp	r3, #8
    2e3c:	d005      	beq.n	2e4a <PacketParser+0x1a>
    2e3e:	22c1      	movs	r2, #193	; 0xc1
    2e40:	00d2      	lsls	r2, r2, #3
    2e42:	4293      	cmp	r3, r2
    2e44:	d100      	bne.n	2e48 <PacketParser+0x18>
    2e46:	e06b      	b.n	2f20 <PacketParser+0xf0>
    2e48:	e084      	b.n	2f54 <PacketParser+0x124>
    2e4a:	4b44      	ldr	r3, [pc, #272]	; (2f5c <PacketParser+0x12c>)
    2e4c:	8b9a      	ldrh	r2, [r3, #28]
    2e4e:	4b44      	ldr	r3, [pc, #272]	; (2f60 <PacketParser+0x130>)
    2e50:	811a      	strh	r2, [r3, #8]
    2e52:	4b42      	ldr	r3, [pc, #264]	; (2f5c <PacketParser+0x12c>)
    2e54:	8bda      	ldrh	r2, [r3, #30]
    2e56:	4b42      	ldr	r3, [pc, #264]	; (2f60 <PacketParser+0x130>)
    2e58:	80da      	strh	r2, [r3, #6]
    2e5a:	4b41      	ldr	r3, [pc, #260]	; (2f60 <PacketParser+0x130>)
    2e5c:	895b      	ldrh	r3, [r3, #10]
    2e5e:	2b00      	cmp	r3, #0
    2e60:	d100      	bne.n	2e64 <PacketParser+0x34>
    2e62:	e072      	b.n	2f4a <PacketParser+0x11a>
    2e64:	4b3d      	ldr	r3, [pc, #244]	; (2f5c <PacketParser+0x12c>)
    2e66:	8bda      	ldrh	r2, [r3, #30]
    2e68:	4b3e      	ldr	r3, [pc, #248]	; (2f64 <PacketParser+0x134>)
    2e6a:	881b      	ldrh	r3, [r3, #0]
    2e6c:	429a      	cmp	r2, r3
    2e6e:	d000      	beq.n	2e72 <PacketParser+0x42>
    2e70:	e06d      	b.n	2f4e <PacketParser+0x11e>
    2e72:	4b3a      	ldr	r3, [pc, #232]	; (2f5c <PacketParser+0x12c>)
    2e74:	8c1a      	ldrh	r2, [r3, #32]
    2e76:	4b3b      	ldr	r3, [pc, #236]	; (2f64 <PacketParser+0x134>)
    2e78:	885b      	ldrh	r3, [r3, #2]
    2e7a:	429a      	cmp	r2, r3
    2e7c:	d000      	beq.n	2e80 <PacketParser+0x50>
    2e7e:	e066      	b.n	2f4e <PacketParser+0x11e>
    2e80:	4b36      	ldr	r3, [pc, #216]	; (2f5c <PacketParser+0x12c>)
    2e82:	0018      	movs	r0, r3
    2e84:	f7ff fcb2 	bl	27ec <CheckSum_IP>
    2e88:	0003      	movs	r3, r0
    2e8a:	001a      	movs	r2, r3
    2e8c:	4b33      	ldr	r3, [pc, #204]	; (2f5c <PacketParser+0x12c>)
    2e8e:	8b1b      	ldrh	r3, [r3, #24]
    2e90:	429a      	cmp	r2, r3
    2e92:	d15c      	bne.n	2f4e <PacketParser+0x11e>
    2e94:	4b31      	ldr	r3, [pc, #196]	; (2f5c <PacketParser+0x12c>)
    2e96:	8adb      	ldrh	r3, [r3, #22]
    2e98:	001a      	movs	r2, r3
    2e9a:	23ff      	movs	r3, #255	; 0xff
    2e9c:	021b      	lsls	r3, r3, #8
    2e9e:	401a      	ands	r2, r3
    2ea0:	2380      	movs	r3, #128	; 0x80
    2ea2:	005b      	lsls	r3, r3, #1
    2ea4:	429a      	cmp	r2, r3
    2ea6:	d110      	bne.n	2eca <PacketParser+0x9a>
    2ea8:	4b2c      	ldr	r3, [pc, #176]	; (2f5c <PacketParser+0x12c>)
    2eaa:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2eac:	2b00      	cmp	r3, #0
    2eae:	d105      	bne.n	2ebc <PacketParser+0x8c>
    2eb0:	4b2d      	ldr	r3, [pc, #180]	; (2f68 <PacketParser+0x138>)
    2eb2:	681b      	ldr	r3, [r3, #0]
    2eb4:	1c5a      	adds	r2, r3, #1
    2eb6:	4b2c      	ldr	r3, [pc, #176]	; (2f68 <PacketParser+0x138>)
    2eb8:	601a      	str	r2, [r3, #0]
    2eba:	e048      	b.n	2f4e <PacketParser+0x11e>
    2ebc:	4b27      	ldr	r3, [pc, #156]	; (2f5c <PacketParser+0x12c>)
    2ebe:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ec0:	2b08      	cmp	r3, #8
    2ec2:	d144      	bne.n	2f4e <PacketParser+0x11e>
    2ec4:	f7ff fde4 	bl	2a90 <Answear_ICMP>
    2ec8:	e041      	b.n	2f4e <PacketParser+0x11e>
    2eca:	4b24      	ldr	r3, [pc, #144]	; (2f5c <PacketParser+0x12c>)
    2ecc:	8adb      	ldrh	r3, [r3, #22]
    2ece:	001a      	movs	r2, r3
    2ed0:	23ff      	movs	r3, #255	; 0xff
    2ed2:	021b      	lsls	r3, r3, #8
    2ed4:	401a      	ands	r2, r3
    2ed6:	2388      	movs	r3, #136	; 0x88
    2ed8:	015b      	lsls	r3, r3, #5
    2eda:	429a      	cmp	r2, r3
    2edc:	d137      	bne.n	2f4e <PacketParser+0x11e>
    2ede:	4b1f      	ldr	r3, [pc, #124]	; (2f5c <PacketParser+0x12c>)
    2ee0:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ee2:	021b      	lsls	r3, r3, #8
    2ee4:	b29a      	uxth	r2, r3
    2ee6:	4b1d      	ldr	r3, [pc, #116]	; (2f5c <PacketParser+0x12c>)
    2ee8:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2eea:	0a1b      	lsrs	r3, r3, #8
    2eec:	b29b      	uxth	r3, r3
    2eee:	18d3      	adds	r3, r2, r3
    2ef0:	b29a      	uxth	r2, r3
    2ef2:	4b1e      	ldr	r3, [pc, #120]	; (2f6c <PacketParser+0x13c>)
    2ef4:	801a      	strh	r2, [r3, #0]
    2ef6:	4b19      	ldr	r3, [pc, #100]	; (2f5c <PacketParser+0x12c>)
    2ef8:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2efa:	021b      	lsls	r3, r3, #8
    2efc:	b299      	uxth	r1, r3
    2efe:	4b17      	ldr	r3, [pc, #92]	; (2f5c <PacketParser+0x12c>)
    2f00:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2f02:	0a1b      	lsrs	r3, r3, #8
    2f04:	b29a      	uxth	r2, r3
    2f06:	1dbb      	adds	r3, r7, #6
    2f08:	188a      	adds	r2, r1, r2
    2f0a:	801a      	strh	r2, [r3, #0]
    2f0c:	1dbb      	adds	r3, r7, #6
    2f0e:	881b      	ldrh	r3, [r3, #0]
    2f10:	4a17      	ldr	r2, [pc, #92]	; (2f70 <PacketParser+0x140>)
    2f12:	4293      	cmp	r3, r2
    2f14:	d11b      	bne.n	2f4e <PacketParser+0x11e>
    2f16:	4b17      	ldr	r3, [pc, #92]	; (2f74 <PacketParser+0x144>)
    2f18:	0018      	movs	r0, r3
    2f1a:	f001 f823 	bl	3f64 <mdb_proc_adu>
    2f1e:	e016      	b.n	2f4e <PacketParser+0x11e>
    2f20:	4b0e      	ldr	r3, [pc, #56]	; (2f5c <PacketParser+0x12c>)
    2f22:	8a9a      	ldrh	r2, [r3, #20]
    2f24:	2380      	movs	r3, #128	; 0x80
    2f26:	005b      	lsls	r3, r3, #1
    2f28:	429a      	cmp	r2, r3
    2f2a:	d112      	bne.n	2f52 <PacketParser+0x122>
    2f2c:	4b0b      	ldr	r3, [pc, #44]	; (2f5c <PacketParser+0x12c>)
    2f2e:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    2f30:	4b0c      	ldr	r3, [pc, #48]	; (2f64 <PacketParser+0x134>)
    2f32:	881b      	ldrh	r3, [r3, #0]
    2f34:	429a      	cmp	r2, r3
    2f36:	d10c      	bne.n	2f52 <PacketParser+0x122>
    2f38:	4b08      	ldr	r3, [pc, #32]	; (2f5c <PacketParser+0x12c>)
    2f3a:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    2f3c:	4b09      	ldr	r3, [pc, #36]	; (2f64 <PacketParser+0x134>)
    2f3e:	885b      	ldrh	r3, [r3, #2]
    2f40:	429a      	cmp	r2, r3
    2f42:	d106      	bne.n	2f52 <PacketParser+0x122>
    2f44:	f7ff fb2e 	bl	25a4 <Answear_ARP>
    2f48:	e003      	b.n	2f52 <PacketParser+0x122>
    2f4a:	46c0      	nop			; (mov r8, r8)
    2f4c:	e002      	b.n	2f54 <PacketParser+0x124>
    2f4e:	46c0      	nop			; (mov r8, r8)
    2f50:	e000      	b.n	2f54 <PacketParser+0x124>
    2f52:	46c0      	nop			; (mov r8, r8)
    2f54:	46c0      	nop			; (mov r8, r8)
    2f56:	46bd      	mov	sp, r7
    2f58:	b002      	add	sp, #8
    2f5a:	bd80      	pop	{r7, pc}
    2f5c:	20004d38 	.word	0x20004d38
    2f60:	20004d1c 	.word	0x20004d1c
    2f64:	2000000c 	.word	0x2000000c
    2f68:	20004d34 	.word	0x20004d34
    2f6c:	20005318 	.word	0x20005318
    2f70:	00001234 	.word	0x00001234
    2f74:	20004d62 	.word	0x20004d62

00002f78 <threadPacketParser>:
    2f78:	b580      	push	{r7, lr}
    2f7a:	b086      	sub	sp, #24
    2f7c:	af00      	add	r7, sp, #0
    2f7e:	6078      	str	r0, [r7, #4]
    2f80:	4b31      	ldr	r3, [pc, #196]	; (3048 <threadPacketParser+0xd0>)
    2f82:	0018      	movs	r0, r3
    2f84:	f003 f90c 	bl	61a0 <osMutexCreate>
    2f88:	0002      	movs	r2, r0
    2f8a:	4b30      	ldr	r3, [pc, #192]	; (304c <threadPacketParser+0xd4>)
    2f8c:	601a      	str	r2, [r3, #0]
    2f8e:	4b30      	ldr	r3, [pc, #192]	; (3050 <threadPacketParser+0xd8>)
    2f90:	0018      	movs	r0, r3
    2f92:	f003 f905 	bl	61a0 <osMutexCreate>
    2f96:	0002      	movs	r2, r0
    2f98:	4b2e      	ldr	r3, [pc, #184]	; (3054 <threadPacketParser+0xdc>)
    2f9a:	601a      	str	r2, [r3, #0]
    2f9c:	230c      	movs	r3, #12
    2f9e:	18f8      	adds	r0, r7, r3
    2fa0:	23fa      	movs	r3, #250	; 0xfa
    2fa2:	005b      	lsls	r3, r3, #1
    2fa4:	001a      	movs	r2, r3
    2fa6:	2100      	movs	r1, #0
    2fa8:	f003 f86c 	bl	6084 <osSignalWait>
    2fac:	230c      	movs	r3, #12
    2fae:	18fb      	adds	r3, r7, r3
    2fb0:	681b      	ldr	r3, [r3, #0]
    2fb2:	2b08      	cmp	r3, #8
    2fb4:	d120      	bne.n	2ff8 <threadPacketParser+0x80>
    2fb6:	230c      	movs	r3, #12
    2fb8:	18fb      	adds	r3, r7, r3
    2fba:	685b      	ldr	r3, [r3, #4]
    2fbc:	2b01      	cmp	r3, #1
    2fbe:	d142      	bne.n	3046 <threadPacketParser+0xce>
    2fc0:	4b25      	ldr	r3, [pc, #148]	; (3058 <threadPacketParser+0xe0>)
    2fc2:	4a25      	ldr	r2, [pc, #148]	; (3058 <threadPacketParser+0xe0>)
    2fc4:	6812      	ldr	r2, [r2, #0]
    2fc6:	2180      	movs	r1, #128	; 0x80
    2fc8:	404a      	eors	r2, r1
    2fca:	601a      	str	r2, [r3, #0]
    2fcc:	e00a      	b.n	2fe4 <threadPacketParser+0x6c>
    2fce:	4b23      	ldr	r3, [pc, #140]	; (305c <threadPacketParser+0xe4>)
    2fd0:	0018      	movs	r0, r3
    2fd2:	f7ff f8bd 	bl	2150 <ReadPacket>
    2fd6:	0003      	movs	r3, r0
    2fd8:	b299      	uxth	r1, r3
    2fda:	4b20      	ldr	r3, [pc, #128]	; (305c <threadPacketParser+0xe4>)
    2fdc:	4a20      	ldr	r2, [pc, #128]	; (3060 <threadPacketParser+0xe8>)
    2fde:	5299      	strh	r1, [r3, r2]
    2fe0:	f7ff ff26 	bl	2e30 <PacketParser>
    2fe4:	23c0      	movs	r3, #192	; 0xc0
    2fe6:	059b      	lsls	r3, r3, #22
    2fe8:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    2fea:	b29b      	uxth	r3, r3
    2fec:	001a      	movs	r2, r3
    2fee:	23e0      	movs	r3, #224	; 0xe0
    2ff0:	4013      	ands	r3, r2
    2ff2:	d1ec      	bne.n	2fce <threadPacketParser+0x56>
    2ff4:	46c0      	nop			; (mov r8, r8)
    2ff6:	e026      	b.n	3046 <threadPacketParser+0xce>
    2ff8:	230c      	movs	r3, #12
    2ffa:	18fb      	adds	r3, r7, r3
    2ffc:	681b      	ldr	r3, [r3, #0]
    2ffe:	2b40      	cmp	r3, #64	; 0x40
    3000:	d1cc      	bne.n	2f9c <threadPacketParser+0x24>
    3002:	23c0      	movs	r3, #192	; 0xc0
    3004:	059b      	lsls	r3, r3, #22
    3006:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3008:	b29b      	uxth	r3, r3
    300a:	001a      	movs	r2, r3
    300c:	2302      	movs	r3, #2
    300e:	4013      	ands	r3, r2
    3010:	d104      	bne.n	301c <threadPacketParser+0xa4>
    3012:	4b14      	ldr	r3, [pc, #80]	; (3064 <threadPacketParser+0xec>)
    3014:	2280      	movs	r2, #128	; 0x80
    3016:	0212      	lsls	r2, r2, #8
    3018:	621a      	str	r2, [r3, #32]
    301a:	e003      	b.n	3024 <threadPacketParser+0xac>
    301c:	4b11      	ldr	r3, [pc, #68]	; (3064 <threadPacketParser+0xec>)
    301e:	2280      	movs	r2, #128	; 0x80
    3020:	0212      	lsls	r2, r2, #8
    3022:	625a      	str	r2, [r3, #36]	; 0x24
    3024:	23c0      	movs	r3, #192	; 0xc0
    3026:	059b      	lsls	r3, r3, #22
    3028:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    302a:	b29b      	uxth	r3, r3
    302c:	001a      	movs	r2, r3
    302e:	2308      	movs	r3, #8
    3030:	4013      	ands	r3, r2
    3032:	d104      	bne.n	303e <threadPacketParser+0xc6>
    3034:	4b0b      	ldr	r3, [pc, #44]	; (3064 <threadPacketParser+0xec>)
    3036:	2280      	movs	r2, #128	; 0x80
    3038:	01d2      	lsls	r2, r2, #7
    303a:	621a      	str	r2, [r3, #32]
    303c:	e7ae      	b.n	2f9c <threadPacketParser+0x24>
    303e:	4b09      	ldr	r3, [pc, #36]	; (3064 <threadPacketParser+0xec>)
    3040:	2280      	movs	r2, #128	; 0x80
    3042:	01d2      	lsls	r2, r2, #7
    3044:	625a      	str	r2, [r3, #36]	; 0x24
    3046:	e7a9      	b.n	2f9c <threadPacketParser+0x24>
    3048:	0000843c 	.word	0x0000843c
    304c:	2000532c 	.word	0x2000532c
    3050:	00008440 	.word	0x00008440
    3054:	20005340 	.word	0x20005340
    3058:	400c0000 	.word	0x400c0000
    305c:	20004d38 	.word	0x20004d38
    3060:	000005dc 	.word	0x000005dc
    3064:	400b0000 	.word	0x400b0000

00003068 <crc32>:
    3068:	b580      	push	{r7, lr}
    306a:	b084      	sub	sp, #16
    306c:	af00      	add	r7, sp, #0
    306e:	6078      	str	r0, [r7, #4]
    3070:	6039      	str	r1, [r7, #0]
    3072:	2301      	movs	r3, #1
    3074:	425b      	negs	r3, r3
    3076:	60bb      	str	r3, [r7, #8]
    3078:	2300      	movs	r3, #0
    307a:	60fb      	str	r3, [r7, #12]
    307c:	e012      	b.n	30a4 <crc32+0x3c>
    307e:	68bb      	ldr	r3, [r7, #8]
    3080:	0a1a      	lsrs	r2, r3, #8
    3082:	68fb      	ldr	r3, [r7, #12]
    3084:	6879      	ldr	r1, [r7, #4]
    3086:	18cb      	adds	r3, r1, r3
    3088:	781b      	ldrb	r3, [r3, #0]
    308a:	0019      	movs	r1, r3
    308c:	68bb      	ldr	r3, [r7, #8]
    308e:	404b      	eors	r3, r1
    3090:	21ff      	movs	r1, #255	; 0xff
    3092:	4019      	ands	r1, r3
    3094:	4b08      	ldr	r3, [pc, #32]	; (30b8 <crc32+0x50>)
    3096:	0089      	lsls	r1, r1, #2
    3098:	58cb      	ldr	r3, [r1, r3]
    309a:	4053      	eors	r3, r2
    309c:	60bb      	str	r3, [r7, #8]
    309e:	68fb      	ldr	r3, [r7, #12]
    30a0:	3301      	adds	r3, #1
    30a2:	60fb      	str	r3, [r7, #12]
    30a4:	68fa      	ldr	r2, [r7, #12]
    30a6:	683b      	ldr	r3, [r7, #0]
    30a8:	429a      	cmp	r2, r3
    30aa:	d3e8      	bcc.n	307e <crc32+0x16>
    30ac:	68bb      	ldr	r3, [r7, #8]
    30ae:	0018      	movs	r0, r3
    30b0:	46bd      	mov	sp, r7
    30b2:	b004      	add	sp, #16
    30b4:	bd80      	pop	{r7, pc}
    30b6:	46c0      	nop			; (mov r8, r8)
    30b8:	00008444 	.word	0x00008444

000030bc <crc16>:
    30bc:	b580      	push	{r7, lr}
    30be:	b086      	sub	sp, #24
    30c0:	af00      	add	r7, sp, #0
    30c2:	6078      	str	r0, [r7, #4]
    30c4:	6039      	str	r1, [r7, #0]
    30c6:	2317      	movs	r3, #23
    30c8:	18fb      	adds	r3, r7, r3
    30ca:	22ff      	movs	r2, #255	; 0xff
    30cc:	701a      	strb	r2, [r3, #0]
    30ce:	2316      	movs	r3, #22
    30d0:	18fb      	adds	r3, r7, r3
    30d2:	22ff      	movs	r2, #255	; 0xff
    30d4:	701a      	strb	r2, [r3, #0]
    30d6:	2300      	movs	r3, #0
    30d8:	613b      	str	r3, [r7, #16]
    30da:	e01e      	b.n	311a <crc16+0x5e>
    30dc:	693b      	ldr	r3, [r7, #16]
    30de:	687a      	ldr	r2, [r7, #4]
    30e0:	18d3      	adds	r3, r2, r3
    30e2:	781a      	ldrb	r2, [r3, #0]
    30e4:	2317      	movs	r3, #23
    30e6:	18fb      	adds	r3, r7, r3
    30e8:	781b      	ldrb	r3, [r3, #0]
    30ea:	4053      	eors	r3, r2
    30ec:	b2db      	uxtb	r3, r3
    30ee:	60fb      	str	r3, [r7, #12]
    30f0:	4a14      	ldr	r2, [pc, #80]	; (3144 <crc16+0x88>)
    30f2:	68fb      	ldr	r3, [r7, #12]
    30f4:	18d3      	adds	r3, r2, r3
    30f6:	7819      	ldrb	r1, [r3, #0]
    30f8:	2317      	movs	r3, #23
    30fa:	18fb      	adds	r3, r7, r3
    30fc:	2216      	movs	r2, #22
    30fe:	18ba      	adds	r2, r7, r2
    3100:	7812      	ldrb	r2, [r2, #0]
    3102:	404a      	eors	r2, r1
    3104:	701a      	strb	r2, [r3, #0]
    3106:	2316      	movs	r3, #22
    3108:	18fb      	adds	r3, r7, r3
    310a:	490f      	ldr	r1, [pc, #60]	; (3148 <crc16+0x8c>)
    310c:	68fa      	ldr	r2, [r7, #12]
    310e:	188a      	adds	r2, r1, r2
    3110:	7812      	ldrb	r2, [r2, #0]
    3112:	701a      	strb	r2, [r3, #0]
    3114:	693b      	ldr	r3, [r7, #16]
    3116:	3301      	adds	r3, #1
    3118:	613b      	str	r3, [r7, #16]
    311a:	693a      	ldr	r2, [r7, #16]
    311c:	683b      	ldr	r3, [r7, #0]
    311e:	429a      	cmp	r2, r3
    3120:	dbdc      	blt.n	30dc <crc16+0x20>
    3122:	2316      	movs	r3, #22
    3124:	18fb      	adds	r3, r7, r3
    3126:	781b      	ldrb	r3, [r3, #0]
    3128:	021b      	lsls	r3, r3, #8
    312a:	b21a      	sxth	r2, r3
    312c:	2317      	movs	r3, #23
    312e:	18fb      	adds	r3, r7, r3
    3130:	781b      	ldrb	r3, [r3, #0]
    3132:	b21b      	sxth	r3, r3
    3134:	4313      	orrs	r3, r2
    3136:	b21b      	sxth	r3, r3
    3138:	b29b      	uxth	r3, r3
    313a:	0018      	movs	r0, r3
    313c:	46bd      	mov	sp, r7
    313e:	b006      	add	sp, #24
    3140:	bd80      	pop	{r7, pc}
    3142:	46c0      	nop			; (mov r8, r8)
    3144:	00008844 	.word	0x00008844
    3148:	00008944 	.word	0x00008944

0000314c <eeprom_on>:
    314c:	b580      	push	{r7, lr}
    314e:	af00      	add	r7, sp, #0
    3150:	b672      	cpsid	i
    3152:	4b04      	ldr	r3, [pc, #16]	; (3164 <eeprom_on+0x18>)
    3154:	4a03      	ldr	r2, [pc, #12]	; (3164 <eeprom_on+0x18>)
    3156:	69d2      	ldr	r2, [r2, #28]
    3158:	2108      	movs	r1, #8
    315a:	430a      	orrs	r2, r1
    315c:	61da      	str	r2, [r3, #28]
    315e:	46c0      	nop			; (mov r8, r8)
    3160:	46bd      	mov	sp, r7
    3162:	bd80      	pop	{r7, pc}
    3164:	40020000 	.word	0x40020000

00003168 <eeprom_off>:
    3168:	b580      	push	{r7, lr}
    316a:	af00      	add	r7, sp, #0
    316c:	b662      	cpsie	i
    316e:	4b04      	ldr	r3, [pc, #16]	; (3180 <eeprom_off+0x18>)
    3170:	4a03      	ldr	r2, [pc, #12]	; (3180 <eeprom_off+0x18>)
    3172:	69d2      	ldr	r2, [r2, #28]
    3174:	2108      	movs	r1, #8
    3176:	438a      	bics	r2, r1
    3178:	61da      	str	r2, [r3, #28]
    317a:	46c0      	nop			; (mov r8, r8)
    317c:	46bd      	mov	sp, r7
    317e:	bd80      	pop	{r7, pc}
    3180:	40020000 	.word	0x40020000

00003184 <par_default>:
    3184:	b580      	push	{r7, lr}
    3186:	af00      	add	r7, sp, #0
    3188:	4b13      	ldr	r3, [pc, #76]	; (31d8 <par_default+0x54>)
    318a:	0018      	movs	r0, r3
    318c:	2314      	movs	r3, #20
    318e:	001a      	movs	r2, r3
    3190:	2100      	movs	r1, #0
    3192:	f001 fb97 	bl	48c4 <memset>
    3196:	4b10      	ldr	r3, [pc, #64]	; (31d8 <par_default+0x54>)
    3198:	22bc      	movs	r2, #188	; 0xbc
    319a:	701a      	strb	r2, [r3, #0]
    319c:	4b0e      	ldr	r3, [pc, #56]	; (31d8 <par_default+0x54>)
    319e:	229a      	movs	r2, #154	; 0x9a
    31a0:	705a      	strb	r2, [r3, #1]
    31a2:	4b0d      	ldr	r3, [pc, #52]	; (31d8 <par_default+0x54>)
    31a4:	2278      	movs	r2, #120	; 0x78
    31a6:	709a      	strb	r2, [r3, #2]
    31a8:	4b0b      	ldr	r3, [pc, #44]	; (31d8 <par_default+0x54>)
    31aa:	2256      	movs	r2, #86	; 0x56
    31ac:	70da      	strb	r2, [r3, #3]
    31ae:	4b0a      	ldr	r3, [pc, #40]	; (31d8 <par_default+0x54>)
    31b0:	2234      	movs	r2, #52	; 0x34
    31b2:	711a      	strb	r2, [r3, #4]
    31b4:	4b08      	ldr	r3, [pc, #32]	; (31d8 <par_default+0x54>)
    31b6:	2212      	movs	r2, #18
    31b8:	715a      	strb	r2, [r3, #5]
    31ba:	4b07      	ldr	r3, [pc, #28]	; (31d8 <par_default+0x54>)
    31bc:	2201      	movs	r2, #1
    31be:	719a      	strb	r2, [r3, #6]
    31c0:	4b05      	ldr	r3, [pc, #20]	; (31d8 <par_default+0x54>)
    31c2:	220a      	movs	r2, #10
    31c4:	725a      	strb	r2, [r3, #9]
    31c6:	4b04      	ldr	r3, [pc, #16]	; (31d8 <par_default+0x54>)
    31c8:	2202      	movs	r2, #2
    31ca:	729a      	strb	r2, [r3, #10]
    31cc:	4b02      	ldr	r3, [pc, #8]	; (31d8 <par_default+0x54>)
    31ce:	220a      	movs	r2, #10
    31d0:	735a      	strb	r2, [r3, #13]
    31d2:	46c0      	nop			; (mov r8, r8)
    31d4:	46bd      	mov	sp, r7
    31d6:	bd80      	pop	{r7, pc}
    31d8:	20005b60 	.word	0x20005b60

000031dc <par_save>:
    31dc:	b580      	push	{r7, lr}
    31de:	b084      	sub	sp, #16
    31e0:	af00      	add	r7, sp, #0
    31e2:	f7ff ffb3 	bl	314c <eeprom_on>
    31e6:	f005 f877 	bl	82d8 <__eeprom_erase_page_veneer>
    31ea:	1e03      	subs	r3, r0, #0
    31ec:	d01b      	beq.n	3226 <par_save+0x4a>
    31ee:	4b11      	ldr	r3, [pc, #68]	; (3234 <par_save+0x58>)
    31f0:	60bb      	str	r3, [r7, #8]
    31f2:	2305      	movs	r3, #5
    31f4:	603b      	str	r3, [r7, #0]
    31f6:	2300      	movs	r3, #0
    31f8:	607b      	str	r3, [r7, #4]
    31fa:	2300      	movs	r3, #0
    31fc:	60fb      	str	r3, [r7, #12]
    31fe:	e00e      	b.n	321e <par_save+0x42>
    3200:	68bb      	ldr	r3, [r7, #8]
    3202:	1d1a      	adds	r2, r3, #4
    3204:	60ba      	str	r2, [r7, #8]
    3206:	681a      	ldr	r2, [r3, #0]
    3208:	687b      	ldr	r3, [r7, #4]
    320a:	0011      	movs	r1, r2
    320c:	0018      	movs	r0, r3
    320e:	f005 f85b 	bl	82c8 <__eeprom_program_word_veneer>
    3212:	687b      	ldr	r3, [r7, #4]
    3214:	3304      	adds	r3, #4
    3216:	607b      	str	r3, [r7, #4]
    3218:	68fb      	ldr	r3, [r7, #12]
    321a:	3301      	adds	r3, #1
    321c:	60fb      	str	r3, [r7, #12]
    321e:	68fa      	ldr	r2, [r7, #12]
    3220:	683b      	ldr	r3, [r7, #0]
    3222:	429a      	cmp	r2, r3
    3224:	dbec      	blt.n	3200 <par_save+0x24>
    3226:	f7ff ff9f 	bl	3168 <eeprom_off>
    322a:	46c0      	nop			; (mov r8, r8)
    322c:	46bd      	mov	sp, r7
    322e:	b004      	add	sp, #16
    3230:	bd80      	pop	{r7, pc}
    3232:	46c0      	nop			; (mov r8, r8)
    3234:	20005b60 	.word	0x20005b60

00003238 <par_verify>:
    3238:	b590      	push	{r4, r7, lr}
    323a:	b087      	sub	sp, #28
    323c:	af00      	add	r7, sp, #0
    323e:	2301      	movs	r3, #1
    3240:	617b      	str	r3, [r7, #20]
    3242:	f7ff ff83 	bl	314c <eeprom_on>
    3246:	4b13      	ldr	r3, [pc, #76]	; (3294 <par_verify+0x5c>)
    3248:	60fb      	str	r3, [r7, #12]
    324a:	2305      	movs	r3, #5
    324c:	607b      	str	r3, [r7, #4]
    324e:	2300      	movs	r3, #0
    3250:	60bb      	str	r3, [r7, #8]
    3252:	2300      	movs	r3, #0
    3254:	613b      	str	r3, [r7, #16]
    3256:	e012      	b.n	327e <par_verify+0x46>
    3258:	68fb      	ldr	r3, [r7, #12]
    325a:	1d1a      	adds	r2, r3, #4
    325c:	60fa      	str	r2, [r7, #12]
    325e:	681c      	ldr	r4, [r3, #0]
    3260:	68bb      	ldr	r3, [r7, #8]
    3262:	0018      	movs	r0, r3
    3264:	f005 f840 	bl	82e8 <__eeprom_read_word_veneer>
    3268:	0003      	movs	r3, r0
    326a:	429c      	cmp	r4, r3
    326c:	d001      	beq.n	3272 <par_verify+0x3a>
    326e:	2300      	movs	r3, #0
    3270:	617b      	str	r3, [r7, #20]
    3272:	68bb      	ldr	r3, [r7, #8]
    3274:	3304      	adds	r3, #4
    3276:	60bb      	str	r3, [r7, #8]
    3278:	693b      	ldr	r3, [r7, #16]
    327a:	3301      	adds	r3, #1
    327c:	613b      	str	r3, [r7, #16]
    327e:	693a      	ldr	r2, [r7, #16]
    3280:	687b      	ldr	r3, [r7, #4]
    3282:	429a      	cmp	r2, r3
    3284:	dbe8      	blt.n	3258 <par_verify+0x20>
    3286:	f7ff ff6f 	bl	3168 <eeprom_off>
    328a:	697b      	ldr	r3, [r7, #20]
    328c:	0018      	movs	r0, r3
    328e:	46bd      	mov	sp, r7
    3290:	b007      	add	sp, #28
    3292:	bd90      	pop	{r4, r7, pc}
    3294:	20005b60 	.word	0x20005b60

00003298 <par_read>:
    3298:	b590      	push	{r4, r7, lr}
    329a:	b085      	sub	sp, #20
    329c:	af00      	add	r7, sp, #0
    329e:	f7ff ff55 	bl	314c <eeprom_on>
    32a2:	4b16      	ldr	r3, [pc, #88]	; (32fc <par_read+0x64>)
    32a4:	60bb      	str	r3, [r7, #8]
    32a6:	2305      	movs	r3, #5
    32a8:	603b      	str	r3, [r7, #0]
    32aa:	2300      	movs	r3, #0
    32ac:	607b      	str	r3, [r7, #4]
    32ae:	2300      	movs	r3, #0
    32b0:	60fb      	str	r3, [r7, #12]
    32b2:	e00e      	b.n	32d2 <par_read+0x3a>
    32b4:	68bc      	ldr	r4, [r7, #8]
    32b6:	1d23      	adds	r3, r4, #4
    32b8:	60bb      	str	r3, [r7, #8]
    32ba:	687b      	ldr	r3, [r7, #4]
    32bc:	0018      	movs	r0, r3
    32be:	f005 f813 	bl	82e8 <__eeprom_read_word_veneer>
    32c2:	0003      	movs	r3, r0
    32c4:	6023      	str	r3, [r4, #0]
    32c6:	687b      	ldr	r3, [r7, #4]
    32c8:	3304      	adds	r3, #4
    32ca:	607b      	str	r3, [r7, #4]
    32cc:	68fb      	ldr	r3, [r7, #12]
    32ce:	3301      	adds	r3, #1
    32d0:	60fb      	str	r3, [r7, #12]
    32d2:	68fa      	ldr	r2, [r7, #12]
    32d4:	683b      	ldr	r3, [r7, #0]
    32d6:	429a      	cmp	r2, r3
    32d8:	dbec      	blt.n	32b4 <par_read+0x1c>
    32da:	f7ff ff45 	bl	3168 <eeprom_off>
    32de:	4b07      	ldr	r3, [pc, #28]	; (32fc <par_read+0x64>)
    32e0:	2114      	movs	r1, #20
    32e2:	0018      	movs	r0, r3
    32e4:	f7ff fec0 	bl	3068 <crc32>
    32e8:	1e03      	subs	r3, r0, #0
    32ea:	d001      	beq.n	32f0 <par_read+0x58>
    32ec:	2300      	movs	r3, #0
    32ee:	e000      	b.n	32f2 <par_read+0x5a>
    32f0:	2301      	movs	r3, #1
    32f2:	0018      	movs	r0, r3
    32f4:	46bd      	mov	sp, r7
    32f6:	b005      	add	sp, #20
    32f8:	bd90      	pop	{r4, r7, pc}
    32fa:	46c0      	nop			; (mov r8, r8)
    32fc:	20005b60 	.word	0x20005b60

00003300 <par_update>:
    3300:	b580      	push	{r7, lr}
    3302:	b088      	sub	sp, #32
    3304:	af00      	add	r7, sp, #0
    3306:	6078      	str	r0, [r7, #4]
    3308:	687b      	ldr	r3, [r7, #4]
    330a:	1c5a      	adds	r2, r3, #1
    330c:	607a      	str	r2, [r7, #4]
    330e:	781b      	ldrb	r3, [r3, #0]
    3310:	617b      	str	r3, [r7, #20]
    3312:	687b      	ldr	r3, [r7, #4]
    3314:	1c5a      	adds	r2, r3, #1
    3316:	607a      	str	r2, [r7, #4]
    3318:	781b      	ldrb	r3, [r3, #0]
    331a:	613b      	str	r3, [r7, #16]
    331c:	687b      	ldr	r3, [r7, #4]
    331e:	1c5a      	adds	r2, r3, #1
    3320:	607a      	str	r2, [r7, #4]
    3322:	781b      	ldrb	r3, [r3, #0]
    3324:	60fb      	str	r3, [r7, #12]
    3326:	687b      	ldr	r3, [r7, #4]
    3328:	1c5a      	adds	r2, r3, #1
    332a:	607a      	str	r2, [r7, #4]
    332c:	781b      	ldrb	r3, [r3, #0]
    332e:	021b      	lsls	r3, r3, #8
    3330:	001a      	movs	r2, r3
    3332:	68fb      	ldr	r3, [r7, #12]
    3334:	189b      	adds	r3, r3, r2
    3336:	60fb      	str	r3, [r7, #12]
    3338:	68fb      	ldr	r3, [r7, #12]
    333a:	2201      	movs	r2, #1
    333c:	4013      	ands	r3, r2
    333e:	60bb      	str	r3, [r7, #8]
    3340:	697a      	ldr	r2, [r7, #20]
    3342:	693b      	ldr	r3, [r7, #16]
    3344:	18d3      	adds	r3, r2, r3
    3346:	2b14      	cmp	r3, #20
    3348:	d82c      	bhi.n	33a4 <par_update+0xa4>
    334a:	68bb      	ldr	r3, [r7, #8]
    334c:	2b00      	cmp	r3, #0
    334e:	d126      	bne.n	339e <par_update+0x9e>
    3350:	697a      	ldr	r2, [r7, #20]
    3352:	4b16      	ldr	r3, [pc, #88]	; (33ac <par_update+0xac>)
    3354:	18d3      	adds	r3, r2, r3
    3356:	61bb      	str	r3, [r7, #24]
    3358:	2300      	movs	r3, #0
    335a:	61fb      	str	r3, [r7, #28]
    335c:	e00a      	b.n	3374 <par_update+0x74>
    335e:	69bb      	ldr	r3, [r7, #24]
    3360:	1c5a      	adds	r2, r3, #1
    3362:	61ba      	str	r2, [r7, #24]
    3364:	687a      	ldr	r2, [r7, #4]
    3366:	1c51      	adds	r1, r2, #1
    3368:	6079      	str	r1, [r7, #4]
    336a:	7812      	ldrb	r2, [r2, #0]
    336c:	701a      	strb	r2, [r3, #0]
    336e:	69fb      	ldr	r3, [r7, #28]
    3370:	3301      	adds	r3, #1
    3372:	61fb      	str	r3, [r7, #28]
    3374:	69fa      	ldr	r2, [r7, #28]
    3376:	693b      	ldr	r3, [r7, #16]
    3378:	429a      	cmp	r2, r3
    337a:	d3f0      	bcc.n	335e <par_update+0x5e>
    337c:	4b0b      	ldr	r3, [pc, #44]	; (33ac <par_update+0xac>)
    337e:	2110      	movs	r1, #16
    3380:	0018      	movs	r0, r3
    3382:	f7ff fe71 	bl	3068 <crc32>
    3386:	0002      	movs	r2, r0
    3388:	4b08      	ldr	r3, [pc, #32]	; (33ac <par_update+0xac>)
    338a:	611a      	str	r2, [r3, #16]
    338c:	f7ff ff26 	bl	31dc <par_save>
    3390:	f7ff ff52 	bl	3238 <par_verify>
    3394:	1e03      	subs	r3, r0, #0
    3396:	d106      	bne.n	33a6 <par_update+0xa6>
    3398:	f7ff fef4 	bl	3184 <par_default>
    339c:	e003      	b.n	33a6 <par_update+0xa6>
    339e:	f7ff ff7b 	bl	3298 <par_read>
    33a2:	e000      	b.n	33a6 <par_update+0xa6>
    33a4:	46c0      	nop			; (mov r8, r8)
    33a6:	46bd      	mov	sp, r7
    33a8:	b008      	add	sp, #32
    33aa:	bd80      	pop	{r7, pc}
    33ac:	20005b60 	.word	0x20005b60

000033b0 <par_mac>:
    33b0:	b580      	push	{r7, lr}
    33b2:	b084      	sub	sp, #16
    33b4:	af00      	add	r7, sp, #0
    33b6:	6078      	str	r0, [r7, #4]
    33b8:	4b0b      	ldr	r3, [pc, #44]	; (33e8 <par_mac+0x38>)
    33ba:	60fb      	str	r3, [r7, #12]
    33bc:	2300      	movs	r3, #0
    33be:	60bb      	str	r3, [r7, #8]
    33c0:	e00a      	b.n	33d8 <par_mac+0x28>
    33c2:	687b      	ldr	r3, [r7, #4]
    33c4:	1c5a      	adds	r2, r3, #1
    33c6:	607a      	str	r2, [r7, #4]
    33c8:	68fa      	ldr	r2, [r7, #12]
    33ca:	1e51      	subs	r1, r2, #1
    33cc:	60f9      	str	r1, [r7, #12]
    33ce:	7812      	ldrb	r2, [r2, #0]
    33d0:	701a      	strb	r2, [r3, #0]
    33d2:	68bb      	ldr	r3, [r7, #8]
    33d4:	3301      	adds	r3, #1
    33d6:	60bb      	str	r3, [r7, #8]
    33d8:	68bb      	ldr	r3, [r7, #8]
    33da:	2b05      	cmp	r3, #5
    33dc:	ddf1      	ble.n	33c2 <par_mac+0x12>
    33de:	46c0      	nop			; (mov r8, r8)
    33e0:	46bd      	mov	sp, r7
    33e2:	b004      	add	sp, #16
    33e4:	bd80      	pop	{r7, pc}
    33e6:	46c0      	nop			; (mov r8, r8)
    33e8:	20005b65 	.word	0x20005b65

000033ec <par_iploc>:
    33ec:	b580      	push	{r7, lr}
    33ee:	b084      	sub	sp, #16
    33f0:	af00      	add	r7, sp, #0
    33f2:	6078      	str	r0, [r7, #4]
    33f4:	4b0b      	ldr	r3, [pc, #44]	; (3424 <par_iploc+0x38>)
    33f6:	60fb      	str	r3, [r7, #12]
    33f8:	2300      	movs	r3, #0
    33fa:	60bb      	str	r3, [r7, #8]
    33fc:	e00a      	b.n	3414 <par_iploc+0x28>
    33fe:	687b      	ldr	r3, [r7, #4]
    3400:	1c5a      	adds	r2, r3, #1
    3402:	607a      	str	r2, [r7, #4]
    3404:	68fa      	ldr	r2, [r7, #12]
    3406:	1e51      	subs	r1, r2, #1
    3408:	60f9      	str	r1, [r7, #12]
    340a:	7812      	ldrb	r2, [r2, #0]
    340c:	701a      	strb	r2, [r3, #0]
    340e:	68bb      	ldr	r3, [r7, #8]
    3410:	3301      	adds	r3, #1
    3412:	60bb      	str	r3, [r7, #8]
    3414:	68bb      	ldr	r3, [r7, #8]
    3416:	2b03      	cmp	r3, #3
    3418:	ddf1      	ble.n	33fe <par_iploc+0x12>
    341a:	46c0      	nop			; (mov r8, r8)
    341c:	46bd      	mov	sp, r7
    341e:	b004      	add	sp, #16
    3420:	bd80      	pop	{r7, pc}
    3422:	46c0      	nop			; (mov r8, r8)
    3424:	20005b69 	.word	0x20005b69

00003428 <par_iprem>:
    3428:	b580      	push	{r7, lr}
    342a:	b084      	sub	sp, #16
    342c:	af00      	add	r7, sp, #0
    342e:	6078      	str	r0, [r7, #4]
    3430:	4b0b      	ldr	r3, [pc, #44]	; (3460 <par_iprem+0x38>)
    3432:	60fb      	str	r3, [r7, #12]
    3434:	2300      	movs	r3, #0
    3436:	60bb      	str	r3, [r7, #8]
    3438:	e00a      	b.n	3450 <par_iprem+0x28>
    343a:	687b      	ldr	r3, [r7, #4]
    343c:	1c5a      	adds	r2, r3, #1
    343e:	607a      	str	r2, [r7, #4]
    3440:	68fa      	ldr	r2, [r7, #12]
    3442:	1e51      	subs	r1, r2, #1
    3444:	60f9      	str	r1, [r7, #12]
    3446:	7812      	ldrb	r2, [r2, #0]
    3448:	701a      	strb	r2, [r3, #0]
    344a:	68bb      	ldr	r3, [r7, #8]
    344c:	3301      	adds	r3, #1
    344e:	60bb      	str	r3, [r7, #8]
    3450:	68bb      	ldr	r3, [r7, #8]
    3452:	2b03      	cmp	r3, #3
    3454:	ddf1      	ble.n	343a <par_iprem+0x12>
    3456:	46c0      	nop			; (mov r8, r8)
    3458:	46bd      	mov	sp, r7
    345a:	b004      	add	sp, #16
    345c:	bd80      	pop	{r7, pc}
    345e:	46c0      	nop			; (mov r8, r8)
    3460:	20005b6d 	.word	0x20005b6d

00003464 <mdb_fifo_read>:
    3464:	b580      	push	{r7, lr}
    3466:	b086      	sub	sp, #24
    3468:	af00      	add	r7, sp, #0
    346a:	6078      	str	r0, [r7, #4]
    346c:	6039      	str	r1, [r7, #0]
    346e:	4b1f      	ldr	r3, [pc, #124]	; (34ec <mdb_fifo_read+0x88>)
    3470:	681a      	ldr	r2, [r3, #0]
    3472:	2301      	movs	r3, #1
    3474:	425b      	negs	r3, r3
    3476:	0019      	movs	r1, r3
    3478:	0010      	movs	r0, r2
    347a:	f002 feb7 	bl	61ec <osMutexWait>
    347e:	4b1c      	ldr	r3, [pc, #112]	; (34f0 <mdb_fifo_read+0x8c>)
    3480:	681a      	ldr	r2, [r3, #0]
    3482:	4b1c      	ldr	r3, [pc, #112]	; (34f4 <mdb_fifo_read+0x90>)
    3484:	681b      	ldr	r3, [r3, #0]
    3486:	1ad3      	subs	r3, r2, r3
    3488:	05db      	lsls	r3, r3, #23
    348a:	0ddb      	lsrs	r3, r3, #23
    348c:	613b      	str	r3, [r7, #16]
    348e:	693b      	ldr	r3, [r7, #16]
    3490:	2280      	movs	r2, #128	; 0x80
    3492:	0092      	lsls	r2, r2, #2
    3494:	1ad3      	subs	r3, r2, r3
    3496:	60fb      	str	r3, [r7, #12]
    3498:	683a      	ldr	r2, [r7, #0]
    349a:	693b      	ldr	r3, [r7, #16]
    349c:	429a      	cmp	r2, r3
    349e:	d819      	bhi.n	34d4 <mdb_fifo_read+0x70>
    34a0:	2300      	movs	r3, #0
    34a2:	617b      	str	r3, [r7, #20]
    34a4:	e011      	b.n	34ca <mdb_fifo_read+0x66>
    34a6:	687b      	ldr	r3, [r7, #4]
    34a8:	1c5a      	adds	r2, r3, #1
    34aa:	607a      	str	r2, [r7, #4]
    34ac:	4a11      	ldr	r2, [pc, #68]	; (34f4 <mdb_fifo_read+0x90>)
    34ae:	6812      	ldr	r2, [r2, #0]
    34b0:	4911      	ldr	r1, [pc, #68]	; (34f8 <mdb_fifo_read+0x94>)
    34b2:	5c8a      	ldrb	r2, [r1, r2]
    34b4:	701a      	strb	r2, [r3, #0]
    34b6:	4b0f      	ldr	r3, [pc, #60]	; (34f4 <mdb_fifo_read+0x90>)
    34b8:	681b      	ldr	r3, [r3, #0]
    34ba:	3301      	adds	r3, #1
    34bc:	05db      	lsls	r3, r3, #23
    34be:	0dda      	lsrs	r2, r3, #23
    34c0:	4b0c      	ldr	r3, [pc, #48]	; (34f4 <mdb_fifo_read+0x90>)
    34c2:	601a      	str	r2, [r3, #0]
    34c4:	697b      	ldr	r3, [r7, #20]
    34c6:	3301      	adds	r3, #1
    34c8:	617b      	str	r3, [r7, #20]
    34ca:	697a      	ldr	r2, [r7, #20]
    34cc:	683b      	ldr	r3, [r7, #0]
    34ce:	429a      	cmp	r2, r3
    34d0:	dbe9      	blt.n	34a6 <mdb_fifo_read+0x42>
    34d2:	e001      	b.n	34d8 <mdb_fifo_read+0x74>
    34d4:	2300      	movs	r3, #0
    34d6:	603b      	str	r3, [r7, #0]
    34d8:	4b04      	ldr	r3, [pc, #16]	; (34ec <mdb_fifo_read+0x88>)
    34da:	681b      	ldr	r3, [r3, #0]
    34dc:	0018      	movs	r0, r3
    34de:	f002 fe95 	bl	620c <osMutexRelease>
    34e2:	683b      	ldr	r3, [r7, #0]
    34e4:	0018      	movs	r0, r3
    34e6:	46bd      	mov	sp, r7
    34e8:	b006      	add	sp, #24
    34ea:	bd80      	pop	{r7, pc}
    34ec:	20000888 	.word	0x20000888
    34f0:	20005d74 	.word	0x20005d74
    34f4:	20005d78 	.word	0x20005d78
    34f8:	20005b74 	.word	0x20005b74

000034fc <mdb_fifo_write>:
    34fc:	b580      	push	{r7, lr}
    34fe:	b086      	sub	sp, #24
    3500:	af00      	add	r7, sp, #0
    3502:	6078      	str	r0, [r7, #4]
    3504:	6039      	str	r1, [r7, #0]
    3506:	4b1c      	ldr	r3, [pc, #112]	; (3578 <mdb_fifo_write+0x7c>)
    3508:	681a      	ldr	r2, [r3, #0]
    350a:	2301      	movs	r3, #1
    350c:	425b      	negs	r3, r3
    350e:	0019      	movs	r1, r3
    3510:	0010      	movs	r0, r2
    3512:	f002 fe6b 	bl	61ec <osMutexWait>
    3516:	4b19      	ldr	r3, [pc, #100]	; (357c <mdb_fifo_write+0x80>)
    3518:	681a      	ldr	r2, [r3, #0]
    351a:	4b19      	ldr	r3, [pc, #100]	; (3580 <mdb_fifo_write+0x84>)
    351c:	681b      	ldr	r3, [r3, #0]
    351e:	1ad3      	subs	r3, r2, r3
    3520:	05db      	lsls	r3, r3, #23
    3522:	0ddb      	lsrs	r3, r3, #23
    3524:	613b      	str	r3, [r7, #16]
    3526:	693b      	ldr	r3, [r7, #16]
    3528:	2280      	movs	r2, #128	; 0x80
    352a:	0092      	lsls	r2, r2, #2
    352c:	1ad3      	subs	r3, r2, r3
    352e:	60fb      	str	r3, [r7, #12]
    3530:	2300      	movs	r3, #0
    3532:	617b      	str	r3, [r7, #20]
    3534:	e011      	b.n	355a <mdb_fifo_write+0x5e>
    3536:	4b11      	ldr	r3, [pc, #68]	; (357c <mdb_fifo_write+0x80>)
    3538:	681a      	ldr	r2, [r3, #0]
    353a:	687b      	ldr	r3, [r7, #4]
    353c:	1c59      	adds	r1, r3, #1
    353e:	6079      	str	r1, [r7, #4]
    3540:	7819      	ldrb	r1, [r3, #0]
    3542:	4b10      	ldr	r3, [pc, #64]	; (3584 <mdb_fifo_write+0x88>)
    3544:	5499      	strb	r1, [r3, r2]
    3546:	4b0d      	ldr	r3, [pc, #52]	; (357c <mdb_fifo_write+0x80>)
    3548:	681b      	ldr	r3, [r3, #0]
    354a:	3301      	adds	r3, #1
    354c:	05db      	lsls	r3, r3, #23
    354e:	0dda      	lsrs	r2, r3, #23
    3550:	4b0a      	ldr	r3, [pc, #40]	; (357c <mdb_fifo_write+0x80>)
    3552:	601a      	str	r2, [r3, #0]
    3554:	697b      	ldr	r3, [r7, #20]
    3556:	3301      	adds	r3, #1
    3558:	617b      	str	r3, [r7, #20]
    355a:	697a      	ldr	r2, [r7, #20]
    355c:	683b      	ldr	r3, [r7, #0]
    355e:	429a      	cmp	r2, r3
    3560:	dbe9      	blt.n	3536 <mdb_fifo_write+0x3a>
    3562:	4b05      	ldr	r3, [pc, #20]	; (3578 <mdb_fifo_write+0x7c>)
    3564:	681b      	ldr	r3, [r3, #0]
    3566:	0018      	movs	r0, r3
    3568:	f002 fe50 	bl	620c <osMutexRelease>
    356c:	683b      	ldr	r3, [r7, #0]
    356e:	0018      	movs	r0, r3
    3570:	46bd      	mov	sp, r7
    3572:	b006      	add	sp, #24
    3574:	bd80      	pop	{r7, pc}
    3576:	46c0      	nop			; (mov r8, r8)
    3578:	20000888 	.word	0x20000888
    357c:	20005d74 	.word	0x20005d74
    3580:	20005d78 	.word	0x20005d78
    3584:	20005b74 	.word	0x20005b74

00003588 <mdb_get_testparam>:
    3588:	b5b0      	push	{r4, r5, r7, lr}
    358a:	b086      	sub	sp, #24
    358c:	af00      	add	r7, sp, #0
    358e:	6078      	str	r0, [r7, #4]
    3590:	4b84      	ldr	r3, [pc, #528]	; (37a4 <mdb_get_testparam+0x21c>)
    3592:	885b      	ldrh	r3, [r3, #2]
    3594:	041b      	lsls	r3, r3, #16
    3596:	4a83      	ldr	r2, [pc, #524]	; (37a4 <mdb_get_testparam+0x21c>)
    3598:	8892      	ldrh	r2, [r2, #4]
    359a:	4313      	orrs	r3, r2
    359c:	001a      	movs	r2, r3
    359e:	687b      	ldr	r3, [r7, #4]
    35a0:	21ff      	movs	r1, #255	; 0xff
    35a2:	4011      	ands	r1, r2
    35a4:	000c      	movs	r4, r1
    35a6:	7819      	ldrb	r1, [r3, #0]
    35a8:	2000      	movs	r0, #0
    35aa:	4001      	ands	r1, r0
    35ac:	1c08      	adds	r0, r1, #0
    35ae:	1c21      	adds	r1, r4, #0
    35b0:	4301      	orrs	r1, r0
    35b2:	7019      	strb	r1, [r3, #0]
    35b4:	0a11      	lsrs	r1, r2, #8
    35b6:	20ff      	movs	r0, #255	; 0xff
    35b8:	4001      	ands	r1, r0
    35ba:	000c      	movs	r4, r1
    35bc:	7859      	ldrb	r1, [r3, #1]
    35be:	2000      	movs	r0, #0
    35c0:	4001      	ands	r1, r0
    35c2:	1c08      	adds	r0, r1, #0
    35c4:	1c21      	adds	r1, r4, #0
    35c6:	4301      	orrs	r1, r0
    35c8:	7059      	strb	r1, [r3, #1]
    35ca:	0c11      	lsrs	r1, r2, #16
    35cc:	20ff      	movs	r0, #255	; 0xff
    35ce:	4001      	ands	r1, r0
    35d0:	000c      	movs	r4, r1
    35d2:	7899      	ldrb	r1, [r3, #2]
    35d4:	2000      	movs	r0, #0
    35d6:	4001      	ands	r1, r0
    35d8:	1c08      	adds	r0, r1, #0
    35da:	1c21      	adds	r1, r4, #0
    35dc:	4301      	orrs	r1, r0
    35de:	7099      	strb	r1, [r3, #2]
    35e0:	0e10      	lsrs	r0, r2, #24
    35e2:	78da      	ldrb	r2, [r3, #3]
    35e4:	2100      	movs	r1, #0
    35e6:	400a      	ands	r2, r1
    35e8:	1c11      	adds	r1, r2, #0
    35ea:	1c02      	adds	r2, r0, #0
    35ec:	430a      	orrs	r2, r1
    35ee:	70da      	strb	r2, [r3, #3]
    35f0:	4b6c      	ldr	r3, [pc, #432]	; (37a4 <mdb_get_testparam+0x21c>)
    35f2:	88db      	ldrh	r3, [r3, #6]
    35f4:	041b      	lsls	r3, r3, #16
    35f6:	4a6b      	ldr	r2, [pc, #428]	; (37a4 <mdb_get_testparam+0x21c>)
    35f8:	8912      	ldrh	r2, [r2, #8]
    35fa:	4313      	orrs	r3, r2
    35fc:	001a      	movs	r2, r3
    35fe:	687b      	ldr	r3, [r7, #4]
    3600:	21ff      	movs	r1, #255	; 0xff
    3602:	4011      	ands	r1, r2
    3604:	000c      	movs	r4, r1
    3606:	7919      	ldrb	r1, [r3, #4]
    3608:	2000      	movs	r0, #0
    360a:	4001      	ands	r1, r0
    360c:	1c08      	adds	r0, r1, #0
    360e:	1c21      	adds	r1, r4, #0
    3610:	4301      	orrs	r1, r0
    3612:	7119      	strb	r1, [r3, #4]
    3614:	0a11      	lsrs	r1, r2, #8
    3616:	20ff      	movs	r0, #255	; 0xff
    3618:	4001      	ands	r1, r0
    361a:	000c      	movs	r4, r1
    361c:	7959      	ldrb	r1, [r3, #5]
    361e:	2000      	movs	r0, #0
    3620:	4001      	ands	r1, r0
    3622:	1c08      	adds	r0, r1, #0
    3624:	1c21      	adds	r1, r4, #0
    3626:	4301      	orrs	r1, r0
    3628:	7159      	strb	r1, [r3, #5]
    362a:	0c11      	lsrs	r1, r2, #16
    362c:	20ff      	movs	r0, #255	; 0xff
    362e:	4001      	ands	r1, r0
    3630:	000c      	movs	r4, r1
    3632:	7999      	ldrb	r1, [r3, #6]
    3634:	2000      	movs	r0, #0
    3636:	4001      	ands	r1, r0
    3638:	1c08      	adds	r0, r1, #0
    363a:	1c21      	adds	r1, r4, #0
    363c:	4301      	orrs	r1, r0
    363e:	7199      	strb	r1, [r3, #6]
    3640:	0e10      	lsrs	r0, r2, #24
    3642:	79da      	ldrb	r2, [r3, #7]
    3644:	2100      	movs	r1, #0
    3646:	400a      	ands	r2, r1
    3648:	1c11      	adds	r1, r2, #0
    364a:	1c02      	adds	r2, r0, #0
    364c:	430a      	orrs	r2, r1
    364e:	71da      	strb	r2, [r3, #7]
    3650:	4b54      	ldr	r3, [pc, #336]	; (37a4 <mdb_get_testparam+0x21c>)
    3652:	895b      	ldrh	r3, [r3, #10]
    3654:	041b      	lsls	r3, r3, #16
    3656:	4a53      	ldr	r2, [pc, #332]	; (37a4 <mdb_get_testparam+0x21c>)
    3658:	8992      	ldrh	r2, [r2, #12]
    365a:	4313      	orrs	r3, r2
    365c:	001a      	movs	r2, r3
    365e:	687b      	ldr	r3, [r7, #4]
    3660:	21ff      	movs	r1, #255	; 0xff
    3662:	4011      	ands	r1, r2
    3664:	000c      	movs	r4, r1
    3666:	7a19      	ldrb	r1, [r3, #8]
    3668:	2000      	movs	r0, #0
    366a:	4001      	ands	r1, r0
    366c:	1c08      	adds	r0, r1, #0
    366e:	1c21      	adds	r1, r4, #0
    3670:	4301      	orrs	r1, r0
    3672:	7219      	strb	r1, [r3, #8]
    3674:	0a11      	lsrs	r1, r2, #8
    3676:	20ff      	movs	r0, #255	; 0xff
    3678:	4001      	ands	r1, r0
    367a:	000c      	movs	r4, r1
    367c:	7a59      	ldrb	r1, [r3, #9]
    367e:	2000      	movs	r0, #0
    3680:	4001      	ands	r1, r0
    3682:	1c08      	adds	r0, r1, #0
    3684:	1c21      	adds	r1, r4, #0
    3686:	4301      	orrs	r1, r0
    3688:	7259      	strb	r1, [r3, #9]
    368a:	0c11      	lsrs	r1, r2, #16
    368c:	20ff      	movs	r0, #255	; 0xff
    368e:	4001      	ands	r1, r0
    3690:	000c      	movs	r4, r1
    3692:	7a99      	ldrb	r1, [r3, #10]
    3694:	2000      	movs	r0, #0
    3696:	4001      	ands	r1, r0
    3698:	1c08      	adds	r0, r1, #0
    369a:	1c21      	adds	r1, r4, #0
    369c:	4301      	orrs	r1, r0
    369e:	7299      	strb	r1, [r3, #10]
    36a0:	0e10      	lsrs	r0, r2, #24
    36a2:	7ada      	ldrb	r2, [r3, #11]
    36a4:	2100      	movs	r1, #0
    36a6:	400a      	ands	r2, r1
    36a8:	1c11      	adds	r1, r2, #0
    36aa:	1c02      	adds	r2, r0, #0
    36ac:	430a      	orrs	r2, r1
    36ae:	72da      	strb	r2, [r3, #11]
    36b0:	4b3c      	ldr	r3, [pc, #240]	; (37a4 <mdb_get_testparam+0x21c>)
    36b2:	89db      	ldrh	r3, [r3, #14]
    36b4:	041b      	lsls	r3, r3, #16
    36b6:	4a3b      	ldr	r2, [pc, #236]	; (37a4 <mdb_get_testparam+0x21c>)
    36b8:	8a12      	ldrh	r2, [r2, #16]
    36ba:	4313      	orrs	r3, r2
    36bc:	001a      	movs	r2, r3
    36be:	687b      	ldr	r3, [r7, #4]
    36c0:	21ff      	movs	r1, #255	; 0xff
    36c2:	4011      	ands	r1, r2
    36c4:	000c      	movs	r4, r1
    36c6:	7b19      	ldrb	r1, [r3, #12]
    36c8:	2000      	movs	r0, #0
    36ca:	4001      	ands	r1, r0
    36cc:	1c08      	adds	r0, r1, #0
    36ce:	1c21      	adds	r1, r4, #0
    36d0:	4301      	orrs	r1, r0
    36d2:	7319      	strb	r1, [r3, #12]
    36d4:	0a11      	lsrs	r1, r2, #8
    36d6:	20ff      	movs	r0, #255	; 0xff
    36d8:	4001      	ands	r1, r0
    36da:	000c      	movs	r4, r1
    36dc:	7b59      	ldrb	r1, [r3, #13]
    36de:	2000      	movs	r0, #0
    36e0:	4001      	ands	r1, r0
    36e2:	1c08      	adds	r0, r1, #0
    36e4:	1c21      	adds	r1, r4, #0
    36e6:	4301      	orrs	r1, r0
    36e8:	7359      	strb	r1, [r3, #13]
    36ea:	0c11      	lsrs	r1, r2, #16
    36ec:	20ff      	movs	r0, #255	; 0xff
    36ee:	4001      	ands	r1, r0
    36f0:	000c      	movs	r4, r1
    36f2:	7b99      	ldrb	r1, [r3, #14]
    36f4:	2000      	movs	r0, #0
    36f6:	4001      	ands	r1, r0
    36f8:	1c08      	adds	r0, r1, #0
    36fa:	1c21      	adds	r1, r4, #0
    36fc:	4301      	orrs	r1, r0
    36fe:	7399      	strb	r1, [r3, #14]
    3700:	0e10      	lsrs	r0, r2, #24
    3702:	7bda      	ldrb	r2, [r3, #15]
    3704:	2100      	movs	r1, #0
    3706:	400a      	ands	r2, r1
    3708:	1c11      	adds	r1, r2, #0
    370a:	1c02      	adds	r2, r0, #0
    370c:	430a      	orrs	r2, r1
    370e:	73da      	strb	r2, [r3, #15]
    3710:	4b25      	ldr	r3, [pc, #148]	; (37a8 <mdb_get_testparam+0x220>)
    3712:	613b      	str	r3, [r7, #16]
    3714:	4b25      	ldr	r3, [pc, #148]	; (37ac <mdb_get_testparam+0x224>)
    3716:	60fb      	str	r3, [r7, #12]
    3718:	2300      	movs	r3, #0
    371a:	617b      	str	r3, [r7, #20]
    371c:	e03a      	b.n	3794 <mdb_get_testparam+0x20c>
    371e:	693b      	ldr	r3, [r7, #16]
    3720:	1c9a      	adds	r2, r3, #2
    3722:	613a      	str	r2, [r7, #16]
    3724:	8819      	ldrh	r1, [r3, #0]
    3726:	687a      	ldr	r2, [r7, #4]
    3728:	697b      	ldr	r3, [r7, #20]
    372a:	3308      	adds	r3, #8
    372c:	005b      	lsls	r3, r3, #1
    372e:	20ff      	movs	r0, #255	; 0xff
    3730:	4008      	ands	r0, r1
    3732:	0005      	movs	r5, r0
    3734:	5c98      	ldrb	r0, [r3, r2]
    3736:	2400      	movs	r4, #0
    3738:	4020      	ands	r0, r4
    373a:	1c04      	adds	r4, r0, #0
    373c:	1c28      	adds	r0, r5, #0
    373e:	4320      	orrs	r0, r4
    3740:	5498      	strb	r0, [r3, r2]
    3742:	0a09      	lsrs	r1, r1, #8
    3744:	b288      	uxth	r0, r1
    3746:	18d3      	adds	r3, r2, r3
    3748:	785a      	ldrb	r2, [r3, #1]
    374a:	2100      	movs	r1, #0
    374c:	400a      	ands	r2, r1
    374e:	1c11      	adds	r1, r2, #0
    3750:	1c02      	adds	r2, r0, #0
    3752:	430a      	orrs	r2, r1
    3754:	705a      	strb	r2, [r3, #1]
    3756:	68fb      	ldr	r3, [r7, #12]
    3758:	1c9a      	adds	r2, r3, #2
    375a:	60fa      	str	r2, [r7, #12]
    375c:	881a      	ldrh	r2, [r3, #0]
    375e:	6879      	ldr	r1, [r7, #4]
    3760:	697b      	ldr	r3, [r7, #20]
    3762:	330c      	adds	r3, #12
    3764:	005b      	lsls	r3, r3, #1
    3766:	18cb      	adds	r3, r1, r3
    3768:	21ff      	movs	r1, #255	; 0xff
    376a:	4011      	ands	r1, r2
    376c:	000c      	movs	r4, r1
    376e:	7899      	ldrb	r1, [r3, #2]
    3770:	2000      	movs	r0, #0
    3772:	4001      	ands	r1, r0
    3774:	1c08      	adds	r0, r1, #0
    3776:	1c21      	adds	r1, r4, #0
    3778:	4301      	orrs	r1, r0
    377a:	7099      	strb	r1, [r3, #2]
    377c:	0a12      	lsrs	r2, r2, #8
    377e:	b290      	uxth	r0, r2
    3780:	78da      	ldrb	r2, [r3, #3]
    3782:	2100      	movs	r1, #0
    3784:	400a      	ands	r2, r1
    3786:	1c11      	adds	r1, r2, #0
    3788:	1c02      	adds	r2, r0, #0
    378a:	430a      	orrs	r2, r1
    378c:	70da      	strb	r2, [r3, #3]
    378e:	697b      	ldr	r3, [r7, #20]
    3790:	3301      	adds	r3, #1
    3792:	617b      	str	r3, [r7, #20]
    3794:	697b      	ldr	r3, [r7, #20]
    3796:	2b04      	cmp	r3, #4
    3798:	ddc1      	ble.n	371e <mdb_get_testparam+0x196>
    379a:	46c0      	nop			; (mov r8, r8)
    379c:	46bd      	mov	sp, r7
    379e:	b006      	add	sp, #24
    37a0:	bdb0      	pop	{r4, r5, r7, pc}
    37a2:	46c0      	nop			; (mov r8, r8)
    37a4:	20005d7c 	.word	0x20005d7c
    37a8:	20005d8e 	.word	0x20005d8e
    37ac:	20005d98 	.word	0x20005d98

000037b0 <mdb_get_holding_register>:
    37b0:	b580      	push	{r7, lr}
    37b2:	b084      	sub	sp, #16
    37b4:	af00      	add	r7, sp, #0
    37b6:	6078      	str	r0, [r7, #4]
    37b8:	687b      	ldr	r3, [r7, #4]
    37ba:	2b00      	cmp	r3, #0
    37bc:	db02      	blt.n	37c4 <mdb_get_holding_register+0x14>
    37be:	687b      	ldr	r3, [r7, #4]
    37c0:	2b17      	cmp	r3, #23
    37c2:	dd01      	ble.n	37c8 <mdb_get_holding_register+0x18>
    37c4:	2300      	movs	r3, #0
    37c6:	e009      	b.n	37dc <mdb_get_holding_register+0x2c>
    37c8:	230e      	movs	r3, #14
    37ca:	18fb      	adds	r3, r7, r3
    37cc:	4a05      	ldr	r2, [pc, #20]	; (37e4 <mdb_get_holding_register+0x34>)
    37ce:	6879      	ldr	r1, [r7, #4]
    37d0:	0049      	lsls	r1, r1, #1
    37d2:	5a8a      	ldrh	r2, [r1, r2]
    37d4:	801a      	strh	r2, [r3, #0]
    37d6:	230e      	movs	r3, #14
    37d8:	18fb      	adds	r3, r7, r3
    37da:	881b      	ldrh	r3, [r3, #0]
    37dc:	0018      	movs	r0, r3
    37de:	46bd      	mov	sp, r7
    37e0:	b004      	add	sp, #16
    37e2:	bd80      	pop	{r7, pc}
    37e4:	20005d7c 	.word	0x20005d7c

000037e8 <pdu_report_server_id>:
    37e8:	b580      	push	{r7, lr}
    37ea:	b086      	sub	sp, #24
    37ec:	af00      	add	r7, sp, #0
    37ee:	6078      	str	r0, [r7, #4]
    37f0:	2311      	movs	r3, #17
    37f2:	60fb      	str	r3, [r7, #12]
    37f4:	4b1f      	ldr	r3, [pc, #124]	; (3874 <pdu_report_server_id+0x8c>)
    37f6:	681a      	ldr	r2, [r3, #0]
    37f8:	687b      	ldr	r3, [r7, #4]
    37fa:	18d2      	adds	r2, r2, r3
    37fc:	230b      	movs	r3, #11
    37fe:	18fb      	adds	r3, r7, r3
    3800:	7812      	ldrb	r2, [r2, #0]
    3802:	701a      	strb	r2, [r3, #0]
    3804:	687b      	ldr	r3, [r7, #4]
    3806:	617b      	str	r3, [r7, #20]
    3808:	697b      	ldr	r3, [r7, #20]
    380a:	1c5a      	adds	r2, r3, #1
    380c:	617a      	str	r2, [r7, #20]
    380e:	4a1a      	ldr	r2, [pc, #104]	; (3878 <pdu_report_server_id+0x90>)
    3810:	210b      	movs	r1, #11
    3812:	1879      	adds	r1, r7, r1
    3814:	7809      	ldrb	r1, [r1, #0]
    3816:	54d1      	strb	r1, [r2, r3]
    3818:	697b      	ldr	r3, [r7, #20]
    381a:	1c5a      	adds	r2, r3, #1
    381c:	617a      	str	r2, [r7, #20]
    381e:	68fa      	ldr	r2, [r7, #12]
    3820:	b2d2      	uxtb	r2, r2
    3822:	3202      	adds	r2, #2
    3824:	b2d1      	uxtb	r1, r2
    3826:	4a14      	ldr	r2, [pc, #80]	; (3878 <pdu_report_server_id+0x90>)
    3828:	54d1      	strb	r1, [r2, r3]
    382a:	697b      	ldr	r3, [r7, #20]
    382c:	1c5a      	adds	r2, r3, #1
    382e:	617a      	str	r2, [r7, #20]
    3830:	4a11      	ldr	r2, [pc, #68]	; (3878 <pdu_report_server_id+0x90>)
    3832:	2111      	movs	r1, #17
    3834:	54d1      	strb	r1, [r2, r3]
    3836:	697b      	ldr	r3, [r7, #20]
    3838:	1c5a      	adds	r2, r3, #1
    383a:	617a      	str	r2, [r7, #20]
    383c:	4a0e      	ldr	r2, [pc, #56]	; (3878 <pdu_report_server_id+0x90>)
    383e:	21ff      	movs	r1, #255	; 0xff
    3840:	54d1      	strb	r1, [r2, r3]
    3842:	2300      	movs	r3, #0
    3844:	613b      	str	r3, [r7, #16]
    3846:	e00b      	b.n	3860 <pdu_report_server_id+0x78>
    3848:	697b      	ldr	r3, [r7, #20]
    384a:	1c5a      	adds	r2, r3, #1
    384c:	617a      	str	r2, [r7, #20]
    384e:	490b      	ldr	r1, [pc, #44]	; (387c <pdu_report_server_id+0x94>)
    3850:	693a      	ldr	r2, [r7, #16]
    3852:	188a      	adds	r2, r1, r2
    3854:	7811      	ldrb	r1, [r2, #0]
    3856:	4a08      	ldr	r2, [pc, #32]	; (3878 <pdu_report_server_id+0x90>)
    3858:	54d1      	strb	r1, [r2, r3]
    385a:	693b      	ldr	r3, [r7, #16]
    385c:	3301      	adds	r3, #1
    385e:	613b      	str	r3, [r7, #16]
    3860:	693a      	ldr	r2, [r7, #16]
    3862:	68fb      	ldr	r3, [r7, #12]
    3864:	429a      	cmp	r2, r3
    3866:	dbef      	blt.n	3848 <pdu_report_server_id+0x60>
    3868:	697b      	ldr	r3, [r7, #20]
    386a:	0018      	movs	r0, r3
    386c:	46bd      	mov	sp, r7
    386e:	b006      	add	sp, #24
    3870:	bd80      	pop	{r7, pc}
    3872:	46c0      	nop			; (mov r8, r8)
    3874:	20005db8 	.word	0x20005db8
    3878:	20005dbc 	.word	0x20005dbc
    387c:	00008a58 	.word	0x00008a58

00003880 <pdu_read_input_registers>:
    3880:	b580      	push	{r7, lr}
    3882:	b086      	sub	sp, #24
    3884:	af00      	add	r7, sp, #0
    3886:	6078      	str	r0, [r7, #4]
    3888:	4b4e      	ldr	r3, [pc, #312]	; (39c4 <pdu_read_input_registers+0x144>)
    388a:	681a      	ldr	r2, [r3, #0]
    388c:	687b      	ldr	r3, [r7, #4]
    388e:	18d2      	adds	r2, r2, r3
    3890:	230f      	movs	r3, #15
    3892:	18fb      	adds	r3, r7, r3
    3894:	7812      	ldrb	r2, [r2, #0]
    3896:	701a      	strb	r2, [r3, #0]
    3898:	4b4a      	ldr	r3, [pc, #296]	; (39c4 <pdu_read_input_registers+0x144>)
    389a:	681a      	ldr	r2, [r3, #0]
    389c:	687b      	ldr	r3, [r7, #4]
    389e:	3301      	adds	r3, #1
    38a0:	18d3      	adds	r3, r2, r3
    38a2:	781b      	ldrb	r3, [r3, #0]
    38a4:	021b      	lsls	r3, r3, #8
    38a6:	b21a      	sxth	r2, r3
    38a8:	4b46      	ldr	r3, [pc, #280]	; (39c4 <pdu_read_input_registers+0x144>)
    38aa:	6819      	ldr	r1, [r3, #0]
    38ac:	687b      	ldr	r3, [r7, #4]
    38ae:	3302      	adds	r3, #2
    38b0:	18cb      	adds	r3, r1, r3
    38b2:	781b      	ldrb	r3, [r3, #0]
    38b4:	b21b      	sxth	r3, r3
    38b6:	4313      	orrs	r3, r2
    38b8:	b21a      	sxth	r2, r3
    38ba:	230c      	movs	r3, #12
    38bc:	18fb      	adds	r3, r7, r3
    38be:	801a      	strh	r2, [r3, #0]
    38c0:	4b40      	ldr	r3, [pc, #256]	; (39c4 <pdu_read_input_registers+0x144>)
    38c2:	681a      	ldr	r2, [r3, #0]
    38c4:	687b      	ldr	r3, [r7, #4]
    38c6:	3303      	adds	r3, #3
    38c8:	18d3      	adds	r3, r2, r3
    38ca:	781b      	ldrb	r3, [r3, #0]
    38cc:	021b      	lsls	r3, r3, #8
    38ce:	b21a      	sxth	r2, r3
    38d0:	4b3c      	ldr	r3, [pc, #240]	; (39c4 <pdu_read_input_registers+0x144>)
    38d2:	6819      	ldr	r1, [r3, #0]
    38d4:	687b      	ldr	r3, [r7, #4]
    38d6:	3304      	adds	r3, #4
    38d8:	18cb      	adds	r3, r1, r3
    38da:	781b      	ldrb	r3, [r3, #0]
    38dc:	b21b      	sxth	r3, r3
    38de:	4313      	orrs	r3, r2
    38e0:	b21a      	sxth	r2, r3
    38e2:	230a      	movs	r3, #10
    38e4:	18fb      	adds	r3, r7, r3
    38e6:	801a      	strh	r2, [r3, #0]
    38e8:	230c      	movs	r3, #12
    38ea:	18fb      	adds	r3, r7, r3
    38ec:	881b      	ldrh	r3, [r3, #0]
    38ee:	2bff      	cmp	r3, #255	; 0xff
    38f0:	d90a      	bls.n	3908 <pdu_read_input_registers+0x88>
    38f2:	230c      	movs	r3, #12
    38f4:	18fb      	adds	r3, r7, r3
    38f6:	881a      	ldrh	r2, [r3, #0]
    38f8:	230a      	movs	r3, #10
    38fa:	18fb      	adds	r3, r7, r3
    38fc:	881b      	ldrh	r3, [r3, #0]
    38fe:	18d2      	adds	r2, r2, r3
    3900:	2304      	movs	r3, #4
    3902:	33ff      	adds	r3, #255	; 0xff
    3904:	429a      	cmp	r2, r3
    3906:	dd15      	ble.n	3934 <pdu_read_input_registers+0xb4>
    3908:	687b      	ldr	r3, [r7, #4]
    390a:	613b      	str	r3, [r7, #16]
    390c:	693b      	ldr	r3, [r7, #16]
    390e:	1c5a      	adds	r2, r3, #1
    3910:	613a      	str	r2, [r7, #16]
    3912:	220f      	movs	r2, #15
    3914:	18ba      	adds	r2, r7, r2
    3916:	7812      	ldrb	r2, [r2, #0]
    3918:	2180      	movs	r1, #128	; 0x80
    391a:	4249      	negs	r1, r1
    391c:	430a      	orrs	r2, r1
    391e:	b2d1      	uxtb	r1, r2
    3920:	4a29      	ldr	r2, [pc, #164]	; (39c8 <pdu_read_input_registers+0x148>)
    3922:	54d1      	strb	r1, [r2, r3]
    3924:	693b      	ldr	r3, [r7, #16]
    3926:	1c5a      	adds	r2, r3, #1
    3928:	613a      	str	r2, [r7, #16]
    392a:	4a27      	ldr	r2, [pc, #156]	; (39c8 <pdu_read_input_registers+0x148>)
    392c:	2102      	movs	r1, #2
    392e:	54d1      	strb	r1, [r2, r3]
    3930:	693b      	ldr	r3, [r7, #16]
    3932:	e042      	b.n	39ba <pdu_read_input_registers+0x13a>
    3934:	687b      	ldr	r3, [r7, #4]
    3936:	613b      	str	r3, [r7, #16]
    3938:	693b      	ldr	r3, [r7, #16]
    393a:	1c5a      	adds	r2, r3, #1
    393c:	613a      	str	r2, [r7, #16]
    393e:	4a22      	ldr	r2, [pc, #136]	; (39c8 <pdu_read_input_registers+0x148>)
    3940:	210f      	movs	r1, #15
    3942:	1879      	adds	r1, r7, r1
    3944:	7809      	ldrb	r1, [r1, #0]
    3946:	54d1      	strb	r1, [r2, r3]
    3948:	693b      	ldr	r3, [r7, #16]
    394a:	1c5a      	adds	r2, r3, #1
    394c:	613a      	str	r2, [r7, #16]
    394e:	220a      	movs	r2, #10
    3950:	18ba      	adds	r2, r7, r2
    3952:	8812      	ldrh	r2, [r2, #0]
    3954:	b2d2      	uxtb	r2, r2
    3956:	1892      	adds	r2, r2, r2
    3958:	b2d1      	uxtb	r1, r2
    395a:	4a1b      	ldr	r2, [pc, #108]	; (39c8 <pdu_read_input_registers+0x148>)
    395c:	54d1      	strb	r1, [r2, r3]
    395e:	2300      	movs	r3, #0
    3960:	617b      	str	r3, [r7, #20]
    3962:	e023      	b.n	39ac <pdu_read_input_registers+0x12c>
    3964:	230c      	movs	r3, #12
    3966:	18fb      	adds	r3, r7, r3
    3968:	881b      	ldrh	r3, [r3, #0]
    396a:	1e5a      	subs	r2, r3, #1
    396c:	3aff      	subs	r2, #255	; 0xff
    396e:	697b      	ldr	r3, [r7, #20]
    3970:	18d1      	adds	r1, r2, r3
    3972:	2308      	movs	r3, #8
    3974:	18fb      	adds	r3, r7, r3
    3976:	4a15      	ldr	r2, [pc, #84]	; (39cc <pdu_read_input_registers+0x14c>)
    3978:	0049      	lsls	r1, r1, #1
    397a:	5a8a      	ldrh	r2, [r1, r2]
    397c:	801a      	strh	r2, [r3, #0]
    397e:	693b      	ldr	r3, [r7, #16]
    3980:	1c5a      	adds	r2, r3, #1
    3982:	613a      	str	r2, [r7, #16]
    3984:	2208      	movs	r2, #8
    3986:	18ba      	adds	r2, r7, r2
    3988:	8812      	ldrh	r2, [r2, #0]
    398a:	0a12      	lsrs	r2, r2, #8
    398c:	b292      	uxth	r2, r2
    398e:	b2d1      	uxtb	r1, r2
    3990:	4a0d      	ldr	r2, [pc, #52]	; (39c8 <pdu_read_input_registers+0x148>)
    3992:	54d1      	strb	r1, [r2, r3]
    3994:	693b      	ldr	r3, [r7, #16]
    3996:	1c5a      	adds	r2, r3, #1
    3998:	613a      	str	r2, [r7, #16]
    399a:	2208      	movs	r2, #8
    399c:	18ba      	adds	r2, r7, r2
    399e:	8812      	ldrh	r2, [r2, #0]
    39a0:	b2d1      	uxtb	r1, r2
    39a2:	4a09      	ldr	r2, [pc, #36]	; (39c8 <pdu_read_input_registers+0x148>)
    39a4:	54d1      	strb	r1, [r2, r3]
    39a6:	697b      	ldr	r3, [r7, #20]
    39a8:	3301      	adds	r3, #1
    39aa:	617b      	str	r3, [r7, #20]
    39ac:	230a      	movs	r3, #10
    39ae:	18fb      	adds	r3, r7, r3
    39b0:	881a      	ldrh	r2, [r3, #0]
    39b2:	697b      	ldr	r3, [r7, #20]
    39b4:	429a      	cmp	r2, r3
    39b6:	dcd5      	bgt.n	3964 <pdu_read_input_registers+0xe4>
    39b8:	693b      	ldr	r3, [r7, #16]
    39ba:	0018      	movs	r0, r3
    39bc:	46bd      	mov	sp, r7
    39be:	b006      	add	sp, #24
    39c0:	bd80      	pop	{r7, pc}
    39c2:	46c0      	nop			; (mov r8, r8)
    39c4:	20005db8 	.word	0x20005db8
    39c8:	20005dbc 	.word	0x20005dbc
    39cc:	20005dac 	.word	0x20005dac

000039d0 <pdu_write_multiply_registers>:
    39d0:	b580      	push	{r7, lr}
    39d2:	b088      	sub	sp, #32
    39d4:	af00      	add	r7, sp, #0
    39d6:	6078      	str	r0, [r7, #4]
    39d8:	4b5a      	ldr	r3, [pc, #360]	; (3b44 <pdu_write_multiply_registers+0x174>)
    39da:	681a      	ldr	r2, [r3, #0]
    39dc:	687b      	ldr	r3, [r7, #4]
    39de:	18d2      	adds	r2, r2, r3
    39e0:	2317      	movs	r3, #23
    39e2:	18fb      	adds	r3, r7, r3
    39e4:	7812      	ldrb	r2, [r2, #0]
    39e6:	701a      	strb	r2, [r3, #0]
    39e8:	4b56      	ldr	r3, [pc, #344]	; (3b44 <pdu_write_multiply_registers+0x174>)
    39ea:	681a      	ldr	r2, [r3, #0]
    39ec:	687b      	ldr	r3, [r7, #4]
    39ee:	3301      	adds	r3, #1
    39f0:	18d3      	adds	r3, r2, r3
    39f2:	781b      	ldrb	r3, [r3, #0]
    39f4:	021b      	lsls	r3, r3, #8
    39f6:	b21a      	sxth	r2, r3
    39f8:	4b52      	ldr	r3, [pc, #328]	; (3b44 <pdu_write_multiply_registers+0x174>)
    39fa:	6819      	ldr	r1, [r3, #0]
    39fc:	687b      	ldr	r3, [r7, #4]
    39fe:	3302      	adds	r3, #2
    3a00:	18cb      	adds	r3, r1, r3
    3a02:	781b      	ldrb	r3, [r3, #0]
    3a04:	b21b      	sxth	r3, r3
    3a06:	4313      	orrs	r3, r2
    3a08:	b21a      	sxth	r2, r3
    3a0a:	2314      	movs	r3, #20
    3a0c:	18fb      	adds	r3, r7, r3
    3a0e:	801a      	strh	r2, [r3, #0]
    3a10:	4b4c      	ldr	r3, [pc, #304]	; (3b44 <pdu_write_multiply_registers+0x174>)
    3a12:	681a      	ldr	r2, [r3, #0]
    3a14:	687b      	ldr	r3, [r7, #4]
    3a16:	3303      	adds	r3, #3
    3a18:	18d3      	adds	r3, r2, r3
    3a1a:	781b      	ldrb	r3, [r3, #0]
    3a1c:	021b      	lsls	r3, r3, #8
    3a1e:	b21a      	sxth	r2, r3
    3a20:	4b48      	ldr	r3, [pc, #288]	; (3b44 <pdu_write_multiply_registers+0x174>)
    3a22:	6819      	ldr	r1, [r3, #0]
    3a24:	687b      	ldr	r3, [r7, #4]
    3a26:	3304      	adds	r3, #4
    3a28:	18cb      	adds	r3, r1, r3
    3a2a:	781b      	ldrb	r3, [r3, #0]
    3a2c:	b21b      	sxth	r3, r3
    3a2e:	4313      	orrs	r3, r2
    3a30:	b21a      	sxth	r2, r3
    3a32:	2312      	movs	r3, #18
    3a34:	18fb      	adds	r3, r7, r3
    3a36:	801a      	strh	r2, [r3, #0]
    3a38:	4b42      	ldr	r3, [pc, #264]	; (3b44 <pdu_write_multiply_registers+0x174>)
    3a3a:	681a      	ldr	r2, [r3, #0]
    3a3c:	687b      	ldr	r3, [r7, #4]
    3a3e:	3305      	adds	r3, #5
    3a40:	18d2      	adds	r2, r2, r3
    3a42:	2311      	movs	r3, #17
    3a44:	18fb      	adds	r3, r7, r3
    3a46:	7812      	ldrb	r2, [r2, #0]
    3a48:	701a      	strb	r2, [r3, #0]
    3a4a:	2314      	movs	r3, #20
    3a4c:	18fb      	adds	r3, r7, r3
    3a4e:	881a      	ldrh	r2, [r3, #0]
    3a50:	2312      	movs	r3, #18
    3a52:	18fb      	adds	r3, r7, r3
    3a54:	881b      	ldrh	r3, [r3, #0]
    3a56:	18d3      	adds	r3, r2, r3
    3a58:	2b18      	cmp	r3, #24
    3a5a:	dd14      	ble.n	3a86 <pdu_write_multiply_registers+0xb6>
    3a5c:	687b      	ldr	r3, [r7, #4]
    3a5e:	61bb      	str	r3, [r7, #24]
    3a60:	69bb      	ldr	r3, [r7, #24]
    3a62:	1c5a      	adds	r2, r3, #1
    3a64:	61ba      	str	r2, [r7, #24]
    3a66:	2217      	movs	r2, #23
    3a68:	18ba      	adds	r2, r7, r2
    3a6a:	7812      	ldrb	r2, [r2, #0]
    3a6c:	2180      	movs	r1, #128	; 0x80
    3a6e:	4249      	negs	r1, r1
    3a70:	430a      	orrs	r2, r1
    3a72:	b2d1      	uxtb	r1, r2
    3a74:	4a34      	ldr	r2, [pc, #208]	; (3b48 <pdu_write_multiply_registers+0x178>)
    3a76:	54d1      	strb	r1, [r2, r3]
    3a78:	69bb      	ldr	r3, [r7, #24]
    3a7a:	1c5a      	adds	r2, r3, #1
    3a7c:	61ba      	str	r2, [r7, #24]
    3a7e:	4a32      	ldr	r2, [pc, #200]	; (3b48 <pdu_write_multiply_registers+0x178>)
    3a80:	2102      	movs	r1, #2
    3a82:	54d1      	strb	r1, [r2, r3]
    3a84:	e04b      	b.n	3b1e <pdu_write_multiply_registers+0x14e>
    3a86:	687b      	ldr	r3, [r7, #4]
    3a88:	3306      	adds	r3, #6
    3a8a:	61bb      	str	r3, [r7, #24]
    3a8c:	2300      	movs	r3, #0
    3a8e:	61fb      	str	r3, [r7, #28]
    3a90:	e028      	b.n	3ae4 <pdu_write_multiply_registers+0x114>
    3a92:	4b2c      	ldr	r3, [pc, #176]	; (3b44 <pdu_write_multiply_registers+0x174>)
    3a94:	681a      	ldr	r2, [r3, #0]
    3a96:	69bb      	ldr	r3, [r7, #24]
    3a98:	1c59      	adds	r1, r3, #1
    3a9a:	61b9      	str	r1, [r7, #24]
    3a9c:	18d3      	adds	r3, r2, r3
    3a9e:	781b      	ldrb	r3, [r3, #0]
    3aa0:	b29a      	uxth	r2, r3
    3aa2:	230e      	movs	r3, #14
    3aa4:	18fb      	adds	r3, r7, r3
    3aa6:	0212      	lsls	r2, r2, #8
    3aa8:	801a      	strh	r2, [r3, #0]
    3aaa:	4b26      	ldr	r3, [pc, #152]	; (3b44 <pdu_write_multiply_registers+0x174>)
    3aac:	681a      	ldr	r2, [r3, #0]
    3aae:	69bb      	ldr	r3, [r7, #24]
    3ab0:	1c59      	adds	r1, r3, #1
    3ab2:	61b9      	str	r1, [r7, #24]
    3ab4:	18d3      	adds	r3, r2, r3
    3ab6:	781b      	ldrb	r3, [r3, #0]
    3ab8:	b299      	uxth	r1, r3
    3aba:	230e      	movs	r3, #14
    3abc:	18fb      	adds	r3, r7, r3
    3abe:	220e      	movs	r2, #14
    3ac0:	18ba      	adds	r2, r7, r2
    3ac2:	8812      	ldrh	r2, [r2, #0]
    3ac4:	430a      	orrs	r2, r1
    3ac6:	801a      	strh	r2, [r3, #0]
    3ac8:	2314      	movs	r3, #20
    3aca:	18fb      	adds	r3, r7, r3
    3acc:	881a      	ldrh	r2, [r3, #0]
    3ace:	69fb      	ldr	r3, [r7, #28]
    3ad0:	18d2      	adds	r2, r2, r3
    3ad2:	4b1e      	ldr	r3, [pc, #120]	; (3b4c <pdu_write_multiply_registers+0x17c>)
    3ad4:	0052      	lsls	r2, r2, #1
    3ad6:	210e      	movs	r1, #14
    3ad8:	1879      	adds	r1, r7, r1
    3ada:	8809      	ldrh	r1, [r1, #0]
    3adc:	52d1      	strh	r1, [r2, r3]
    3ade:	69fb      	ldr	r3, [r7, #28]
    3ae0:	3301      	adds	r3, #1
    3ae2:	61fb      	str	r3, [r7, #28]
    3ae4:	2312      	movs	r3, #18
    3ae6:	18fb      	adds	r3, r7, r3
    3ae8:	881a      	ldrh	r2, [r3, #0]
    3aea:	69fb      	ldr	r3, [r7, #28]
    3aec:	429a      	cmp	r2, r3
    3aee:	dcd0      	bgt.n	3a92 <pdu_write_multiply_registers+0xc2>
    3af0:	687b      	ldr	r3, [r7, #4]
    3af2:	61bb      	str	r3, [r7, #24]
    3af4:	687b      	ldr	r3, [r7, #4]
    3af6:	61fb      	str	r3, [r7, #28]
    3af8:	e00c      	b.n	3b14 <pdu_write_multiply_registers+0x144>
    3afa:	69bb      	ldr	r3, [r7, #24]
    3afc:	1c5a      	adds	r2, r3, #1
    3afe:	61ba      	str	r2, [r7, #24]
    3b00:	4a10      	ldr	r2, [pc, #64]	; (3b44 <pdu_write_multiply_registers+0x174>)
    3b02:	6811      	ldr	r1, [r2, #0]
    3b04:	69fa      	ldr	r2, [r7, #28]
    3b06:	188a      	adds	r2, r1, r2
    3b08:	7811      	ldrb	r1, [r2, #0]
    3b0a:	4a0f      	ldr	r2, [pc, #60]	; (3b48 <pdu_write_multiply_registers+0x178>)
    3b0c:	54d1      	strb	r1, [r2, r3]
    3b0e:	69fb      	ldr	r3, [r7, #28]
    3b10:	3301      	adds	r3, #1
    3b12:	61fb      	str	r3, [r7, #28]
    3b14:	687b      	ldr	r3, [r7, #4]
    3b16:	1d5a      	adds	r2, r3, #5
    3b18:	69fb      	ldr	r3, [r7, #28]
    3b1a:	429a      	cmp	r2, r3
    3b1c:	dced      	bgt.n	3afa <pdu_write_multiply_registers+0x12a>
    3b1e:	2314      	movs	r3, #20
    3b20:	18fb      	adds	r3, r7, r3
    3b22:	881b      	ldrh	r3, [r3, #0]
    3b24:	2b00      	cmp	r3, #0
    3b26:	d107      	bne.n	3b38 <pdu_write_multiply_registers+0x168>
    3b28:	4b09      	ldr	r3, [pc, #36]	; (3b50 <pdu_write_multiply_registers+0x180>)
    3b2a:	6818      	ldr	r0, [r3, #0]
    3b2c:	4b07      	ldr	r3, [pc, #28]	; (3b4c <pdu_write_multiply_registers+0x17c>)
    3b2e:	881b      	ldrh	r3, [r3, #0]
    3b30:	2200      	movs	r2, #0
    3b32:	0019      	movs	r1, r3
    3b34:	f002 fe42 	bl	67bc <osMessagePut>
    3b38:	69bb      	ldr	r3, [r7, #24]
    3b3a:	0018      	movs	r0, r3
    3b3c:	46bd      	mov	sp, r7
    3b3e:	b008      	add	sp, #32
    3b40:	bd80      	pop	{r7, pc}
    3b42:	46c0      	nop			; (mov r8, r8)
    3b44:	20005db8 	.word	0x20005db8
    3b48:	20005dbc 	.word	0x20005dbc
    3b4c:	20005d7c 	.word	0x20005d7c
    3b50:	20000864 	.word	0x20000864

00003b54 <u16tobe>:
    3b54:	b580      	push	{r7, lr}
    3b56:	b082      	sub	sp, #8
    3b58:	af00      	add	r7, sp, #0
    3b5a:	0002      	movs	r2, r0
    3b5c:	6039      	str	r1, [r7, #0]
    3b5e:	1dbb      	adds	r3, r7, #6
    3b60:	801a      	strh	r2, [r3, #0]
    3b62:	683b      	ldr	r3, [r7, #0]
    3b64:	1c5a      	adds	r2, r3, #1
    3b66:	603a      	str	r2, [r7, #0]
    3b68:	1dba      	adds	r2, r7, #6
    3b6a:	8812      	ldrh	r2, [r2, #0]
    3b6c:	0a12      	lsrs	r2, r2, #8
    3b6e:	b292      	uxth	r2, r2
    3b70:	b2d2      	uxtb	r2, r2
    3b72:	701a      	strb	r2, [r3, #0]
    3b74:	683b      	ldr	r3, [r7, #0]
    3b76:	1c5a      	adds	r2, r3, #1
    3b78:	603a      	str	r2, [r7, #0]
    3b7a:	1dba      	adds	r2, r7, #6
    3b7c:	8812      	ldrh	r2, [r2, #0]
    3b7e:	b2d2      	uxtb	r2, r2
    3b80:	701a      	strb	r2, [r3, #0]
    3b82:	46c0      	nop			; (mov r8, r8)
    3b84:	46bd      	mov	sp, r7
    3b86:	b002      	add	sp, #8
    3b88:	bd80      	pop	{r7, pc}
    3b8a:	46c0      	nop			; (mov r8, r8)

00003b8c <u32tobe>:
    3b8c:	b580      	push	{r7, lr}
    3b8e:	b082      	sub	sp, #8
    3b90:	af00      	add	r7, sp, #0
    3b92:	6078      	str	r0, [r7, #4]
    3b94:	6039      	str	r1, [r7, #0]
    3b96:	683b      	ldr	r3, [r7, #0]
    3b98:	1c5a      	adds	r2, r3, #1
    3b9a:	603a      	str	r2, [r7, #0]
    3b9c:	687a      	ldr	r2, [r7, #4]
    3b9e:	0e12      	lsrs	r2, r2, #24
    3ba0:	b2d2      	uxtb	r2, r2
    3ba2:	701a      	strb	r2, [r3, #0]
    3ba4:	683b      	ldr	r3, [r7, #0]
    3ba6:	1c5a      	adds	r2, r3, #1
    3ba8:	603a      	str	r2, [r7, #0]
    3baa:	687a      	ldr	r2, [r7, #4]
    3bac:	0c12      	lsrs	r2, r2, #16
    3bae:	b2d2      	uxtb	r2, r2
    3bb0:	701a      	strb	r2, [r3, #0]
    3bb2:	683b      	ldr	r3, [r7, #0]
    3bb4:	1c5a      	adds	r2, r3, #1
    3bb6:	603a      	str	r2, [r7, #0]
    3bb8:	687a      	ldr	r2, [r7, #4]
    3bba:	0a12      	lsrs	r2, r2, #8
    3bbc:	b2d2      	uxtb	r2, r2
    3bbe:	701a      	strb	r2, [r3, #0]
    3bc0:	683b      	ldr	r3, [r7, #0]
    3bc2:	1c5a      	adds	r2, r3, #1
    3bc4:	603a      	str	r2, [r7, #0]
    3bc6:	687a      	ldr	r2, [r7, #4]
    3bc8:	b2d2      	uxtb	r2, r2
    3bca:	701a      	strb	r2, [r3, #0]
    3bcc:	46c0      	nop			; (mov r8, r8)
    3bce:	46bd      	mov	sp, r7
    3bd0:	b002      	add	sp, #8
    3bd2:	bd80      	pop	{r7, pc}

00003bd4 <pdu_read_fifo_queue>:
    3bd4:	b580      	push	{r7, lr}
    3bd6:	b090      	sub	sp, #64	; 0x40
    3bd8:	af00      	add	r7, sp, #0
    3bda:	6078      	str	r0, [r7, #4]
    3bdc:	2336      	movs	r3, #54	; 0x36
    3bde:	18fb      	adds	r3, r7, r3
    3be0:	2203      	movs	r2, #3
    3be2:	801a      	strh	r2, [r3, #0]
    3be4:	4b79      	ldr	r3, [pc, #484]	; (3dcc <pdu_read_fifo_queue+0x1f8>)
    3be6:	681a      	ldr	r2, [r3, #0]
    3be8:	687b      	ldr	r3, [r7, #4]
    3bea:	18d2      	adds	r2, r2, r3
    3bec:	2335      	movs	r3, #53	; 0x35
    3bee:	18fb      	adds	r3, r7, r3
    3bf0:	7812      	ldrb	r2, [r2, #0]
    3bf2:	701a      	strb	r2, [r3, #0]
    3bf4:	4b75      	ldr	r3, [pc, #468]	; (3dcc <pdu_read_fifo_queue+0x1f8>)
    3bf6:	681a      	ldr	r2, [r3, #0]
    3bf8:	687b      	ldr	r3, [r7, #4]
    3bfa:	3301      	adds	r3, #1
    3bfc:	18d3      	adds	r3, r2, r3
    3bfe:	781b      	ldrb	r3, [r3, #0]
    3c00:	021b      	lsls	r3, r3, #8
    3c02:	b21a      	sxth	r2, r3
    3c04:	4b71      	ldr	r3, [pc, #452]	; (3dcc <pdu_read_fifo_queue+0x1f8>)
    3c06:	6819      	ldr	r1, [r3, #0]
    3c08:	687b      	ldr	r3, [r7, #4]
    3c0a:	3302      	adds	r3, #2
    3c0c:	18cb      	adds	r3, r1, r3
    3c0e:	781b      	ldrb	r3, [r3, #0]
    3c10:	b21b      	sxth	r3, r3
    3c12:	4313      	orrs	r3, r2
    3c14:	b21a      	sxth	r2, r3
    3c16:	2332      	movs	r3, #50	; 0x32
    3c18:	18fb      	adds	r3, r7, r3
    3c1a:	801a      	strh	r2, [r3, #0]
    3c1c:	2332      	movs	r3, #50	; 0x32
    3c1e:	18fb      	adds	r3, r7, r3
    3c20:	881a      	ldrh	r2, [r3, #0]
    3c22:	2380      	movs	r3, #128	; 0x80
    3c24:	009b      	lsls	r3, r3, #2
    3c26:	429a      	cmp	r2, r3
    3c28:	d014      	beq.n	3c54 <pdu_read_fifo_queue+0x80>
    3c2a:	687b      	ldr	r3, [r7, #4]
    3c2c:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c2e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c30:	1c5a      	adds	r2, r3, #1
    3c32:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c34:	2235      	movs	r2, #53	; 0x35
    3c36:	18ba      	adds	r2, r7, r2
    3c38:	7812      	ldrb	r2, [r2, #0]
    3c3a:	2180      	movs	r1, #128	; 0x80
    3c3c:	4249      	negs	r1, r1
    3c3e:	430a      	orrs	r2, r1
    3c40:	b2d1      	uxtb	r1, r2
    3c42:	4a63      	ldr	r2, [pc, #396]	; (3dd0 <pdu_read_fifo_queue+0x1fc>)
    3c44:	54d1      	strb	r1, [r2, r3]
    3c46:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c48:	1c5a      	adds	r2, r3, #1
    3c4a:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c4c:	4a60      	ldr	r2, [pc, #384]	; (3dd0 <pdu_read_fifo_queue+0x1fc>)
    3c4e:	2102      	movs	r1, #2
    3c50:	54d1      	strb	r1, [r2, r3]
    3c52:	e0b5      	b.n	3dc0 <pdu_read_fifo_queue+0x1ec>
    3c54:	687b      	ldr	r3, [r7, #4]
    3c56:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c58:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c5a:	1c5a      	adds	r2, r3, #1
    3c5c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c5e:	4a5c      	ldr	r2, [pc, #368]	; (3dd0 <pdu_read_fifo_queue+0x1fc>)
    3c60:	2135      	movs	r1, #53	; 0x35
    3c62:	1879      	adds	r1, r7, r1
    3c64:	7809      	ldrb	r1, [r1, #0]
    3c66:	54d1      	strb	r1, [r2, r3]
    3c68:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c6a:	1c5a      	adds	r2, r3, #1
    3c6c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c6e:	4a58      	ldr	r2, [pc, #352]	; (3dd0 <pdu_read_fifo_queue+0x1fc>)
    3c70:	2100      	movs	r1, #0
    3c72:	54d1      	strb	r1, [r2, r3]
    3c74:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c76:	1c5a      	adds	r2, r3, #1
    3c78:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c7a:	4a55      	ldr	r2, [pc, #340]	; (3dd0 <pdu_read_fifo_queue+0x1fc>)
    3c7c:	2100      	movs	r1, #0
    3c7e:	54d1      	strb	r1, [r2, r3]
    3c80:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c82:	1c5a      	adds	r2, r3, #1
    3c84:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c86:	4a52      	ldr	r2, [pc, #328]	; (3dd0 <pdu_read_fifo_queue+0x1fc>)
    3c88:	2100      	movs	r1, #0
    3c8a:	54d1      	strb	r1, [r2, r3]
    3c8c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c8e:	1c5a      	adds	r2, r3, #1
    3c90:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c92:	4a4f      	ldr	r2, [pc, #316]	; (3dd0 <pdu_read_fifo_queue+0x1fc>)
    3c94:	2100      	movs	r1, #0
    3c96:	54d1      	strb	r1, [r2, r3]
    3c98:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c9a:	62fb      	str	r3, [r7, #44]	; 0x2c
    3c9c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3c9e:	4b4c      	ldr	r3, [pc, #304]	; (3dd0 <pdu_read_fifo_queue+0x1fc>)
    3ca0:	18d3      	adds	r3, r2, r3
    3ca2:	63bb      	str	r3, [r7, #56]	; 0x38
    3ca4:	e068      	b.n	3d78 <pdu_read_fifo_queue+0x1a4>
    3ca6:	2300      	movs	r3, #0
    3ca8:	62bb      	str	r3, [r7, #40]	; 0x28
    3caa:	2308      	movs	r3, #8
    3cac:	18fb      	adds	r3, r7, r3
    3cae:	2120      	movs	r1, #32
    3cb0:	0018      	movs	r0, r3
    3cb2:	f7ff fbd7 	bl	3464 <mdb_fifo_read>
    3cb6:	0003      	movs	r3, r0
    3cb8:	62bb      	str	r3, [r7, #40]	; 0x28
    3cba:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3cbc:	2b00      	cmp	r3, #0
    3cbe:	d063      	beq.n	3d88 <pdu_read_fifo_queue+0x1b4>
    3cc0:	2308      	movs	r3, #8
    3cc2:	18fb      	adds	r3, r7, r3
    3cc4:	681b      	ldr	r3, [r3, #0]
    3cc6:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cc8:	0011      	movs	r1, r2
    3cca:	0018      	movs	r0, r3
    3ccc:	f7ff ff5e 	bl	3b8c <u32tobe>
    3cd0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cd2:	3304      	adds	r3, #4
    3cd4:	63bb      	str	r3, [r7, #56]	; 0x38
    3cd6:	2308      	movs	r3, #8
    3cd8:	18fb      	adds	r3, r7, r3
    3cda:	685b      	ldr	r3, [r3, #4]
    3cdc:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cde:	0011      	movs	r1, r2
    3ce0:	0018      	movs	r0, r3
    3ce2:	f7ff ff53 	bl	3b8c <u32tobe>
    3ce6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3ce8:	3304      	adds	r3, #4
    3cea:	63bb      	str	r3, [r7, #56]	; 0x38
    3cec:	2308      	movs	r3, #8
    3cee:	18fb      	adds	r3, r7, r3
    3cf0:	689b      	ldr	r3, [r3, #8]
    3cf2:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cf4:	0011      	movs	r1, r2
    3cf6:	0018      	movs	r0, r3
    3cf8:	f7ff ff48 	bl	3b8c <u32tobe>
    3cfc:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cfe:	3304      	adds	r3, #4
    3d00:	63bb      	str	r3, [r7, #56]	; 0x38
    3d02:	2308      	movs	r3, #8
    3d04:	18fb      	adds	r3, r7, r3
    3d06:	68db      	ldr	r3, [r3, #12]
    3d08:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d0a:	0011      	movs	r1, r2
    3d0c:	0018      	movs	r0, r3
    3d0e:	f7ff ff3d 	bl	3b8c <u32tobe>
    3d12:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d14:	3304      	adds	r3, #4
    3d16:	63bb      	str	r3, [r7, #56]	; 0x38
    3d18:	2308      	movs	r3, #8
    3d1a:	18fb      	adds	r3, r7, r3
    3d1c:	691b      	ldr	r3, [r3, #16]
    3d1e:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d20:	0011      	movs	r1, r2
    3d22:	0018      	movs	r0, r3
    3d24:	f7ff ff32 	bl	3b8c <u32tobe>
    3d28:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d2a:	3304      	adds	r3, #4
    3d2c:	63bb      	str	r3, [r7, #56]	; 0x38
    3d2e:	2308      	movs	r3, #8
    3d30:	18fb      	adds	r3, r7, r3
    3d32:	695b      	ldr	r3, [r3, #20]
    3d34:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d36:	0011      	movs	r1, r2
    3d38:	0018      	movs	r0, r3
    3d3a:	f7ff ff27 	bl	3b8c <u32tobe>
    3d3e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d40:	3304      	adds	r3, #4
    3d42:	63bb      	str	r3, [r7, #56]	; 0x38
    3d44:	2308      	movs	r3, #8
    3d46:	18fb      	adds	r3, r7, r3
    3d48:	699b      	ldr	r3, [r3, #24]
    3d4a:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d4c:	0011      	movs	r1, r2
    3d4e:	0018      	movs	r0, r3
    3d50:	f7ff ff1c 	bl	3b8c <u32tobe>
    3d54:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d56:	3304      	adds	r3, #4
    3d58:	63bb      	str	r3, [r7, #56]	; 0x38
    3d5a:	2308      	movs	r3, #8
    3d5c:	18fb      	adds	r3, r7, r3
    3d5e:	69db      	ldr	r3, [r3, #28]
    3d60:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d62:	0011      	movs	r1, r2
    3d64:	0018      	movs	r0, r3
    3d66:	f7ff ff11 	bl	3b8c <u32tobe>
    3d6a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d6c:	3304      	adds	r3, #4
    3d6e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d70:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3d72:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3d74:	18d3      	adds	r3, r2, r3
    3d76:	63fb      	str	r3, [r7, #60]	; 0x3c
    3d78:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3d7a:	3320      	adds	r3, #32
    3d7c:	001a      	movs	r2, r3
    3d7e:	23fc      	movs	r3, #252	; 0xfc
    3d80:	33ff      	adds	r3, #255	; 0xff
    3d82:	429a      	cmp	r2, r3
    3d84:	d98f      	bls.n	3ca6 <pdu_read_fifo_queue+0xd2>
    3d86:	e000      	b.n	3d8a <pdu_read_fifo_queue+0x1b6>
    3d88:	46c0      	nop			; (mov r8, r8)
    3d8a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3d8c:	b29a      	uxth	r2, r3
    3d8e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3d90:	b29b      	uxth	r3, r3
    3d92:	1ad3      	subs	r3, r2, r3
    3d94:	b29b      	uxth	r3, r3
    3d96:	3302      	adds	r3, #2
    3d98:	b298      	uxth	r0, r3
    3d9a:	687b      	ldr	r3, [r7, #4]
    3d9c:	1c5a      	adds	r2, r3, #1
    3d9e:	4b0c      	ldr	r3, [pc, #48]	; (3dd0 <pdu_read_fifo_queue+0x1fc>)
    3da0:	18d3      	adds	r3, r2, r3
    3da2:	0019      	movs	r1, r3
    3da4:	f7ff fed6 	bl	3b54 <u16tobe>
    3da8:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3daa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3dac:	1ad3      	subs	r3, r2, r3
    3dae:	105b      	asrs	r3, r3, #1
    3db0:	b298      	uxth	r0, r3
    3db2:	687b      	ldr	r3, [r7, #4]
    3db4:	1cda      	adds	r2, r3, #3
    3db6:	4b06      	ldr	r3, [pc, #24]	; (3dd0 <pdu_read_fifo_queue+0x1fc>)
    3db8:	18d3      	adds	r3, r2, r3
    3dba:	0019      	movs	r1, r3
    3dbc:	f7ff feca 	bl	3b54 <u16tobe>
    3dc0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dc2:	0018      	movs	r0, r3
    3dc4:	46bd      	mov	sp, r7
    3dc6:	b010      	add	sp, #64	; 0x40
    3dc8:	bd80      	pop	{r7, pc}
    3dca:	46c0      	nop			; (mov r8, r8)
    3dcc:	20005db8 	.word	0x20005db8
    3dd0:	20005dbc 	.word	0x20005dbc

00003dd4 <pdu_read_holding_registers>:
    3dd4:	b580      	push	{r7, lr}
    3dd6:	b086      	sub	sp, #24
    3dd8:	af00      	add	r7, sp, #0
    3dda:	6078      	str	r0, [r7, #4]
    3ddc:	4b49      	ldr	r3, [pc, #292]	; (3f04 <pdu_read_holding_registers+0x130>)
    3dde:	681a      	ldr	r2, [r3, #0]
    3de0:	687b      	ldr	r3, [r7, #4]
    3de2:	18d2      	adds	r2, r2, r3
    3de4:	230f      	movs	r3, #15
    3de6:	18fb      	adds	r3, r7, r3
    3de8:	7812      	ldrb	r2, [r2, #0]
    3dea:	701a      	strb	r2, [r3, #0]
    3dec:	4b45      	ldr	r3, [pc, #276]	; (3f04 <pdu_read_holding_registers+0x130>)
    3dee:	681a      	ldr	r2, [r3, #0]
    3df0:	687b      	ldr	r3, [r7, #4]
    3df2:	3301      	adds	r3, #1
    3df4:	18d3      	adds	r3, r2, r3
    3df6:	781b      	ldrb	r3, [r3, #0]
    3df8:	021b      	lsls	r3, r3, #8
    3dfa:	b21a      	sxth	r2, r3
    3dfc:	4b41      	ldr	r3, [pc, #260]	; (3f04 <pdu_read_holding_registers+0x130>)
    3dfe:	6819      	ldr	r1, [r3, #0]
    3e00:	687b      	ldr	r3, [r7, #4]
    3e02:	3302      	adds	r3, #2
    3e04:	18cb      	adds	r3, r1, r3
    3e06:	781b      	ldrb	r3, [r3, #0]
    3e08:	b21b      	sxth	r3, r3
    3e0a:	4313      	orrs	r3, r2
    3e0c:	b21a      	sxth	r2, r3
    3e0e:	230c      	movs	r3, #12
    3e10:	18fb      	adds	r3, r7, r3
    3e12:	801a      	strh	r2, [r3, #0]
    3e14:	4b3b      	ldr	r3, [pc, #236]	; (3f04 <pdu_read_holding_registers+0x130>)
    3e16:	681a      	ldr	r2, [r3, #0]
    3e18:	687b      	ldr	r3, [r7, #4]
    3e1a:	3303      	adds	r3, #3
    3e1c:	18d3      	adds	r3, r2, r3
    3e1e:	781b      	ldrb	r3, [r3, #0]
    3e20:	021b      	lsls	r3, r3, #8
    3e22:	b21a      	sxth	r2, r3
    3e24:	4b37      	ldr	r3, [pc, #220]	; (3f04 <pdu_read_holding_registers+0x130>)
    3e26:	6819      	ldr	r1, [r3, #0]
    3e28:	687b      	ldr	r3, [r7, #4]
    3e2a:	3304      	adds	r3, #4
    3e2c:	18cb      	adds	r3, r1, r3
    3e2e:	781b      	ldrb	r3, [r3, #0]
    3e30:	b21b      	sxth	r3, r3
    3e32:	4313      	orrs	r3, r2
    3e34:	b21a      	sxth	r2, r3
    3e36:	230a      	movs	r3, #10
    3e38:	18fb      	adds	r3, r7, r3
    3e3a:	801a      	strh	r2, [r3, #0]
    3e3c:	230c      	movs	r3, #12
    3e3e:	18fb      	adds	r3, r7, r3
    3e40:	881a      	ldrh	r2, [r3, #0]
    3e42:	230a      	movs	r3, #10
    3e44:	18fb      	adds	r3, r7, r3
    3e46:	881b      	ldrh	r3, [r3, #0]
    3e48:	18d3      	adds	r3, r2, r3
    3e4a:	2b18      	cmp	r3, #24
    3e4c:	dd14      	ble.n	3e78 <pdu_read_holding_registers+0xa4>
    3e4e:	687b      	ldr	r3, [r7, #4]
    3e50:	613b      	str	r3, [r7, #16]
    3e52:	693b      	ldr	r3, [r7, #16]
    3e54:	1c5a      	adds	r2, r3, #1
    3e56:	613a      	str	r2, [r7, #16]
    3e58:	220f      	movs	r2, #15
    3e5a:	18ba      	adds	r2, r7, r2
    3e5c:	7812      	ldrb	r2, [r2, #0]
    3e5e:	2180      	movs	r1, #128	; 0x80
    3e60:	4249      	negs	r1, r1
    3e62:	430a      	orrs	r2, r1
    3e64:	b2d1      	uxtb	r1, r2
    3e66:	4a28      	ldr	r2, [pc, #160]	; (3f08 <pdu_read_holding_registers+0x134>)
    3e68:	54d1      	strb	r1, [r2, r3]
    3e6a:	693b      	ldr	r3, [r7, #16]
    3e6c:	1c5a      	adds	r2, r3, #1
    3e6e:	613a      	str	r2, [r7, #16]
    3e70:	4a25      	ldr	r2, [pc, #148]	; (3f08 <pdu_read_holding_registers+0x134>)
    3e72:	2102      	movs	r1, #2
    3e74:	54d1      	strb	r1, [r2, r3]
    3e76:	e03f      	b.n	3ef8 <pdu_read_holding_registers+0x124>
    3e78:	687b      	ldr	r3, [r7, #4]
    3e7a:	613b      	str	r3, [r7, #16]
    3e7c:	693b      	ldr	r3, [r7, #16]
    3e7e:	1c5a      	adds	r2, r3, #1
    3e80:	613a      	str	r2, [r7, #16]
    3e82:	4a21      	ldr	r2, [pc, #132]	; (3f08 <pdu_read_holding_registers+0x134>)
    3e84:	210f      	movs	r1, #15
    3e86:	1879      	adds	r1, r7, r1
    3e88:	7809      	ldrb	r1, [r1, #0]
    3e8a:	54d1      	strb	r1, [r2, r3]
    3e8c:	693b      	ldr	r3, [r7, #16]
    3e8e:	1c5a      	adds	r2, r3, #1
    3e90:	613a      	str	r2, [r7, #16]
    3e92:	220a      	movs	r2, #10
    3e94:	18ba      	adds	r2, r7, r2
    3e96:	8812      	ldrh	r2, [r2, #0]
    3e98:	b2d2      	uxtb	r2, r2
    3e9a:	1892      	adds	r2, r2, r2
    3e9c:	b2d1      	uxtb	r1, r2
    3e9e:	4a1a      	ldr	r2, [pc, #104]	; (3f08 <pdu_read_holding_registers+0x134>)
    3ea0:	54d1      	strb	r1, [r2, r3]
    3ea2:	2300      	movs	r3, #0
    3ea4:	617b      	str	r3, [r7, #20]
    3ea6:	e021      	b.n	3eec <pdu_read_holding_registers+0x118>
    3ea8:	230c      	movs	r3, #12
    3eaa:	18fb      	adds	r3, r7, r3
    3eac:	881a      	ldrh	r2, [r3, #0]
    3eae:	697b      	ldr	r3, [r7, #20]
    3eb0:	18d1      	adds	r1, r2, r3
    3eb2:	2308      	movs	r3, #8
    3eb4:	18fb      	adds	r3, r7, r3
    3eb6:	4a15      	ldr	r2, [pc, #84]	; (3f0c <pdu_read_holding_registers+0x138>)
    3eb8:	0049      	lsls	r1, r1, #1
    3eba:	5a8a      	ldrh	r2, [r1, r2]
    3ebc:	801a      	strh	r2, [r3, #0]
    3ebe:	693b      	ldr	r3, [r7, #16]
    3ec0:	1c5a      	adds	r2, r3, #1
    3ec2:	613a      	str	r2, [r7, #16]
    3ec4:	2208      	movs	r2, #8
    3ec6:	18ba      	adds	r2, r7, r2
    3ec8:	8812      	ldrh	r2, [r2, #0]
    3eca:	0a12      	lsrs	r2, r2, #8
    3ecc:	b292      	uxth	r2, r2
    3ece:	b2d1      	uxtb	r1, r2
    3ed0:	4a0d      	ldr	r2, [pc, #52]	; (3f08 <pdu_read_holding_registers+0x134>)
    3ed2:	54d1      	strb	r1, [r2, r3]
    3ed4:	693b      	ldr	r3, [r7, #16]
    3ed6:	1c5a      	adds	r2, r3, #1
    3ed8:	613a      	str	r2, [r7, #16]
    3eda:	2208      	movs	r2, #8
    3edc:	18ba      	adds	r2, r7, r2
    3ede:	8812      	ldrh	r2, [r2, #0]
    3ee0:	b2d1      	uxtb	r1, r2
    3ee2:	4a09      	ldr	r2, [pc, #36]	; (3f08 <pdu_read_holding_registers+0x134>)
    3ee4:	54d1      	strb	r1, [r2, r3]
    3ee6:	697b      	ldr	r3, [r7, #20]
    3ee8:	3301      	adds	r3, #1
    3eea:	617b      	str	r3, [r7, #20]
    3eec:	230a      	movs	r3, #10
    3eee:	18fb      	adds	r3, r7, r3
    3ef0:	881a      	ldrh	r2, [r3, #0]
    3ef2:	697b      	ldr	r3, [r7, #20]
    3ef4:	429a      	cmp	r2, r3
    3ef6:	dcd7      	bgt.n	3ea8 <pdu_read_holding_registers+0xd4>
    3ef8:	693b      	ldr	r3, [r7, #16]
    3efa:	0018      	movs	r0, r3
    3efc:	46bd      	mov	sp, r7
    3efe:	b006      	add	sp, #24
    3f00:	bd80      	pop	{r7, pc}
    3f02:	46c0      	nop			; (mov r8, r8)
    3f04:	20005db8 	.word	0x20005db8
    3f08:	20005dbc 	.word	0x20005dbc
    3f0c:	20005d7c 	.word	0x20005d7c

00003f10 <pdu_illegal_function_error>:
    3f10:	b580      	push	{r7, lr}
    3f12:	b084      	sub	sp, #16
    3f14:	af00      	add	r7, sp, #0
    3f16:	6078      	str	r0, [r7, #4]
    3f18:	4b10      	ldr	r3, [pc, #64]	; (3f5c <pdu_illegal_function_error+0x4c>)
    3f1a:	681a      	ldr	r2, [r3, #0]
    3f1c:	687b      	ldr	r3, [r7, #4]
    3f1e:	18d2      	adds	r2, r2, r3
    3f20:	230f      	movs	r3, #15
    3f22:	18fb      	adds	r3, r7, r3
    3f24:	7812      	ldrb	r2, [r2, #0]
    3f26:	701a      	strb	r2, [r3, #0]
    3f28:	687b      	ldr	r3, [r7, #4]
    3f2a:	60bb      	str	r3, [r7, #8]
    3f2c:	68bb      	ldr	r3, [r7, #8]
    3f2e:	1c5a      	adds	r2, r3, #1
    3f30:	60ba      	str	r2, [r7, #8]
    3f32:	220f      	movs	r2, #15
    3f34:	18ba      	adds	r2, r7, r2
    3f36:	7812      	ldrb	r2, [r2, #0]
    3f38:	2180      	movs	r1, #128	; 0x80
    3f3a:	4249      	negs	r1, r1
    3f3c:	430a      	orrs	r2, r1
    3f3e:	b2d1      	uxtb	r1, r2
    3f40:	4a07      	ldr	r2, [pc, #28]	; (3f60 <pdu_illegal_function_error+0x50>)
    3f42:	54d1      	strb	r1, [r2, r3]
    3f44:	68bb      	ldr	r3, [r7, #8]
    3f46:	1c5a      	adds	r2, r3, #1
    3f48:	60ba      	str	r2, [r7, #8]
    3f4a:	4a05      	ldr	r2, [pc, #20]	; (3f60 <pdu_illegal_function_error+0x50>)
    3f4c:	2101      	movs	r1, #1
    3f4e:	54d1      	strb	r1, [r2, r3]
    3f50:	68bb      	ldr	r3, [r7, #8]
    3f52:	0018      	movs	r0, r3
    3f54:	46bd      	mov	sp, r7
    3f56:	b004      	add	sp, #16
    3f58:	bd80      	pop	{r7, pc}
    3f5a:	46c0      	nop			; (mov r8, r8)
    3f5c:	20005db8 	.word	0x20005db8
    3f60:	20005dbc 	.word	0x20005dbc

00003f64 <mdb_proc_adu>:
    3f64:	b580      	push	{r7, lr}
    3f66:	b086      	sub	sp, #24
    3f68:	af00      	add	r7, sp, #0
    3f6a:	6078      	str	r0, [r7, #4]
    3f6c:	4b39      	ldr	r3, [pc, #228]	; (4054 <mdb_proc_adu+0xf0>)
    3f6e:	687a      	ldr	r2, [r7, #4]
    3f70:	601a      	str	r2, [r3, #0]
    3f72:	4b38      	ldr	r3, [pc, #224]	; (4054 <mdb_proc_adu+0xf0>)
    3f74:	681b      	ldr	r3, [r3, #0]
    3f76:	781b      	ldrb	r3, [r3, #0]
    3f78:	021b      	lsls	r3, r3, #8
    3f7a:	b21a      	sxth	r2, r3
    3f7c:	4b35      	ldr	r3, [pc, #212]	; (4054 <mdb_proc_adu+0xf0>)
    3f7e:	681b      	ldr	r3, [r3, #0]
    3f80:	3301      	adds	r3, #1
    3f82:	781b      	ldrb	r3, [r3, #0]
    3f84:	b21b      	sxth	r3, r3
    3f86:	4313      	orrs	r3, r2
    3f88:	b21a      	sxth	r2, r3
    3f8a:	2312      	movs	r3, #18
    3f8c:	18fb      	adds	r3, r7, r3
    3f8e:	801a      	strh	r2, [r3, #0]
    3f90:	4b30      	ldr	r3, [pc, #192]	; (4054 <mdb_proc_adu+0xf0>)
    3f92:	681b      	ldr	r3, [r3, #0]
    3f94:	3302      	adds	r3, #2
    3f96:	781b      	ldrb	r3, [r3, #0]
    3f98:	021b      	lsls	r3, r3, #8
    3f9a:	b21a      	sxth	r2, r3
    3f9c:	4b2d      	ldr	r3, [pc, #180]	; (4054 <mdb_proc_adu+0xf0>)
    3f9e:	681b      	ldr	r3, [r3, #0]
    3fa0:	3303      	adds	r3, #3
    3fa2:	781b      	ldrb	r3, [r3, #0]
    3fa4:	b21b      	sxth	r3, r3
    3fa6:	4313      	orrs	r3, r2
    3fa8:	b21a      	sxth	r2, r3
    3faa:	2310      	movs	r3, #16
    3fac:	18fb      	adds	r3, r7, r3
    3fae:	801a      	strh	r2, [r3, #0]
    3fb0:	4b28      	ldr	r3, [pc, #160]	; (4054 <mdb_proc_adu+0xf0>)
    3fb2:	681b      	ldr	r3, [r3, #0]
    3fb4:	3304      	adds	r3, #4
    3fb6:	781b      	ldrb	r3, [r3, #0]
    3fb8:	021b      	lsls	r3, r3, #8
    3fba:	b21a      	sxth	r2, r3
    3fbc:	4b25      	ldr	r3, [pc, #148]	; (4054 <mdb_proc_adu+0xf0>)
    3fbe:	681b      	ldr	r3, [r3, #0]
    3fc0:	3305      	adds	r3, #5
    3fc2:	781b      	ldrb	r3, [r3, #0]
    3fc4:	b21b      	sxth	r3, r3
    3fc6:	4313      	orrs	r3, r2
    3fc8:	b21a      	sxth	r2, r3
    3fca:	230e      	movs	r3, #14
    3fcc:	18fb      	adds	r3, r7, r3
    3fce:	801a      	strh	r2, [r3, #0]
    3fd0:	4b20      	ldr	r3, [pc, #128]	; (4054 <mdb_proc_adu+0xf0>)
    3fd2:	681a      	ldr	r2, [r3, #0]
    3fd4:	230d      	movs	r3, #13
    3fd6:	18fb      	adds	r3, r7, r3
    3fd8:	7992      	ldrb	r2, [r2, #6]
    3fda:	701a      	strb	r2, [r3, #0]
    3fdc:	4b1d      	ldr	r3, [pc, #116]	; (4054 <mdb_proc_adu+0xf0>)
    3fde:	681a      	ldr	r2, [r3, #0]
    3fe0:	230c      	movs	r3, #12
    3fe2:	18fb      	adds	r3, r7, r3
    3fe4:	79d2      	ldrb	r2, [r2, #7]
    3fe6:	701a      	strb	r2, [r3, #0]
    3fe8:	230d      	movs	r3, #13
    3fea:	18fb      	adds	r3, r7, r3
    3fec:	781b      	ldrb	r3, [r3, #0]
    3fee:	2b11      	cmp	r3, #17
    3ff0:	d12b      	bne.n	404a <mdb_proc_adu+0xe6>
    3ff2:	230c      	movs	r3, #12
    3ff4:	18fb      	adds	r3, r7, r3
    3ff6:	781a      	ldrb	r2, [r3, #0]
    3ff8:	4b17      	ldr	r3, [pc, #92]	; (4058 <mdb_proc_adu+0xf4>)
    3ffa:	0092      	lsls	r2, r2, #2
    3ffc:	58d3      	ldr	r3, [r2, r3]
    3ffe:	2007      	movs	r0, #7
    4000:	4798      	blx	r3
    4002:	0003      	movs	r3, r0
    4004:	60bb      	str	r3, [r7, #8]
    4006:	2300      	movs	r3, #0
    4008:	617b      	str	r3, [r7, #20]
    400a:	e00c      	b.n	4026 <mdb_proc_adu+0xc2>
    400c:	4b11      	ldr	r3, [pc, #68]	; (4054 <mdb_proc_adu+0xf0>)
    400e:	681a      	ldr	r2, [r3, #0]
    4010:	697b      	ldr	r3, [r7, #20]
    4012:	18d3      	adds	r3, r2, r3
    4014:	7819      	ldrb	r1, [r3, #0]
    4016:	4a11      	ldr	r2, [pc, #68]	; (405c <mdb_proc_adu+0xf8>)
    4018:	697b      	ldr	r3, [r7, #20]
    401a:	18d3      	adds	r3, r2, r3
    401c:	1c0a      	adds	r2, r1, #0
    401e:	701a      	strb	r2, [r3, #0]
    4020:	697b      	ldr	r3, [r7, #20]
    4022:	3301      	adds	r3, #1
    4024:	617b      	str	r3, [r7, #20]
    4026:	697b      	ldr	r3, [r7, #20]
    4028:	2b06      	cmp	r3, #6
    402a:	ddef      	ble.n	400c <mdb_proc_adu+0xa8>
    402c:	4b0b      	ldr	r3, [pc, #44]	; (405c <mdb_proc_adu+0xf8>)
    402e:	2200      	movs	r2, #0
    4030:	711a      	strb	r2, [r3, #4]
    4032:	68bb      	ldr	r3, [r7, #8]
    4034:	b2db      	uxtb	r3, r3
    4036:	3b06      	subs	r3, #6
    4038:	b2da      	uxtb	r2, r3
    403a:	4b08      	ldr	r3, [pc, #32]	; (405c <mdb_proc_adu+0xf8>)
    403c:	715a      	strb	r2, [r3, #5]
    403e:	68ba      	ldr	r2, [r7, #8]
    4040:	4b06      	ldr	r3, [pc, #24]	; (405c <mdb_proc_adu+0xf8>)
    4042:	0011      	movs	r1, r2
    4044:	0018      	movs	r0, r3
    4046:	f7fe fdd3 	bl	2bf0 <Send_UDP>
    404a:	46c0      	nop			; (mov r8, r8)
    404c:	46bd      	mov	sp, r7
    404e:	b006      	add	sp, #24
    4050:	bd80      	pop	{r7, pc}
    4052:	46c0      	nop			; (mov r8, r8)
    4054:	20005db8 	.word	0x20005db8
    4058:	00008a6c 	.word	0x00008a6c
    405c:	20005dbc 	.word	0x20005dbc

00004060 <fsm_get_cyccnt>:
    4060:	b580      	push	{r7, lr}
    4062:	af00      	add	r7, sp, #0
    4064:	4b02      	ldr	r3, [pc, #8]	; (4070 <fsm_get_cyccnt+0x10>)
    4066:	681b      	ldr	r3, [r3, #0]
    4068:	0018      	movs	r0, r3
    406a:	46bd      	mov	sp, r7
    406c:	bd80      	pop	{r7, pc}
    406e:	46c0      	nop			; (mov r8, r8)
    4070:	20005fb8 	.word	0x20005fb8

00004074 <fsm_idle>:
    4074:	b580      	push	{r7, lr}
    4076:	b084      	sub	sp, #16
    4078:	af00      	add	r7, sp, #0
    407a:	6078      	str	r0, [r7, #4]
    407c:	230f      	movs	r3, #15
    407e:	18fb      	adds	r3, r7, r3
    4080:	687a      	ldr	r2, [r7, #4]
    4082:	701a      	strb	r2, [r3, #0]
    4084:	230f      	movs	r3, #15
    4086:	18fb      	adds	r3, r7, r3
    4088:	781b      	ldrb	r3, [r3, #0]
    408a:	2b01      	cmp	r3, #1
    408c:	d12e      	bne.n	40ec <fsm_idle+0x78>
    408e:	4b19      	ldr	r3, [pc, #100]	; (40f4 <fsm_idle+0x80>)
    4090:	0018      	movs	r0, r3
    4092:	f7ff fa79 	bl	3588 <mdb_get_testparam>
    4096:	4b17      	ldr	r3, [pc, #92]	; (40f4 <fsm_idle+0x80>)
    4098:	681a      	ldr	r2, [r3, #0]
    409a:	4b17      	ldr	r3, [pc, #92]	; (40f8 <fsm_idle+0x84>)
    409c:	601a      	str	r2, [r3, #0]
    409e:	4b16      	ldr	r3, [pc, #88]	; (40f8 <fsm_idle+0x84>)
    40a0:	681b      	ldr	r3, [r3, #0]
    40a2:	2b00      	cmp	r3, #0
    40a4:	d022      	beq.n	40ec <fsm_idle+0x78>
    40a6:	4b15      	ldr	r3, [pc, #84]	; (40fc <fsm_idle+0x88>)
    40a8:	4a15      	ldr	r2, [pc, #84]	; (4100 <fsm_idle+0x8c>)
    40aa:	601a      	str	r2, [r3, #0]
    40ac:	4b15      	ldr	r3, [pc, #84]	; (4104 <fsm_idle+0x90>)
    40ae:	2200      	movs	r2, #0
    40b0:	601a      	str	r2, [r3, #0]
    40b2:	f7fc f841 	bl	138 <dut_start>
    40b6:	4b0f      	ldr	r3, [pc, #60]	; (40f4 <fsm_idle+0x80>)
    40b8:	685b      	ldr	r3, [r3, #4]
    40ba:	0018      	movs	r0, r3
    40bc:	f7fc f864 	bl	188 <dut_set_speed>
    40c0:	4b0c      	ldr	r3, [pc, #48]	; (40f4 <fsm_idle+0x80>)
    40c2:	68db      	ldr	r3, [r3, #12]
    40c4:	4a0b      	ldr	r2, [pc, #44]	; (40f4 <fsm_idle+0x80>)
    40c6:	8b52      	ldrh	r2, [r2, #26]
    40c8:	435a      	muls	r2, r3
    40ca:	0013      	movs	r3, r2
    40cc:	009b      	lsls	r3, r3, #2
    40ce:	189b      	adds	r3, r3, r2
    40d0:	009b      	lsls	r3, r3, #2
    40d2:	2280      	movs	r2, #128	; 0x80
    40d4:	00d2      	lsls	r2, r2, #3
    40d6:	4694      	mov	ip, r2
    40d8:	4463      	add	r3, ip
    40da:	0adb      	lsrs	r3, r3, #11
    40dc:	60bb      	str	r3, [r7, #8]
    40de:	68bb      	ldr	r3, [r7, #8]
    40e0:	0018      	movs	r0, r3
    40e2:	f7fc f861 	bl	1a8 <dut_set_torque>
    40e6:	4b08      	ldr	r3, [pc, #32]	; (4108 <fsm_idle+0x94>)
    40e8:	68ba      	ldr	r2, [r7, #8]
    40ea:	601a      	str	r2, [r3, #0]
    40ec:	46c0      	nop			; (mov r8, r8)
    40ee:	46bd      	mov	sp, r7
    40f0:	b004      	add	sp, #16
    40f2:	bd80      	pop	{r7, pc}
    40f4:	20005fc0 	.word	0x20005fc0
    40f8:	20005fb8 	.word	0x20005fb8
    40fc:	20000010 	.word	0x20000010
    4100:	000041ed 	.word	0x000041ed
    4104:	20005fbc 	.word	0x20005fbc
    4108:	20005fe4 	.word	0x20005fe4

0000410c <fsm_wait>:
    410c:	b580      	push	{r7, lr}
    410e:	b086      	sub	sp, #24
    4110:	af00      	add	r7, sp, #0
    4112:	6078      	str	r0, [r7, #4]
    4114:	2313      	movs	r3, #19
    4116:	18fb      	adds	r3, r7, r3
    4118:	687a      	ldr	r2, [r7, #4]
    411a:	701a      	strb	r2, [r3, #0]
    411c:	687b      	ldr	r3, [r7, #4]
    411e:	0a1b      	lsrs	r3, r3, #8
    4120:	60fb      	str	r3, [r7, #12]
    4122:	2313      	movs	r3, #19
    4124:	18fb      	adds	r3, r7, r3
    4126:	781b      	ldrb	r3, [r3, #0]
    4128:	2b04      	cmp	r3, #4
    412a:	d13b      	bne.n	41a4 <fsm_wait+0x98>
    412c:	68fb      	ldr	r3, [r7, #12]
    412e:	60bb      	str	r3, [r7, #8]
    4130:	2300      	movs	r3, #0
    4132:	617b      	str	r3, [r7, #20]
    4134:	4b28      	ldr	r3, [pc, #160]	; (41d8 <fsm_wait+0xcc>)
    4136:	681b      	ldr	r3, [r3, #0]
    4138:	2b04      	cmp	r3, #4
    413a:	d903      	bls.n	4144 <fsm_wait+0x38>
    413c:	4b27      	ldr	r3, [pc, #156]	; (41dc <fsm_wait+0xd0>)
    413e:	689b      	ldr	r3, [r3, #8]
    4140:	617b      	str	r3, [r7, #20]
    4142:	e012      	b.n	416a <fsm_wait+0x5e>
    4144:	4b25      	ldr	r3, [pc, #148]	; (41dc <fsm_wait+0xd0>)
    4146:	689a      	ldr	r2, [r3, #8]
    4148:	4b23      	ldr	r3, [pc, #140]	; (41d8 <fsm_wait+0xcc>)
    414a:	6819      	ldr	r1, [r3, #0]
    414c:	4b23      	ldr	r3, [pc, #140]	; (41dc <fsm_wait+0xd0>)
    414e:	3108      	adds	r1, #8
    4150:	0049      	lsls	r1, r1, #1
    4152:	5acb      	ldrh	r3, [r1, r3]
    4154:	435a      	muls	r2, r3
    4156:	0013      	movs	r3, r2
    4158:	009b      	lsls	r3, r3, #2
    415a:	189b      	adds	r3, r3, r2
    415c:	009b      	lsls	r3, r3, #2
    415e:	2280      	movs	r2, #128	; 0x80
    4160:	00d2      	lsls	r2, r2, #3
    4162:	4694      	mov	ip, r2
    4164:	4463      	add	r3, ip
    4166:	0adb      	lsrs	r3, r3, #11
    4168:	617b      	str	r3, [r7, #20]
    416a:	68ba      	ldr	r2, [r7, #8]
    416c:	697b      	ldr	r3, [r7, #20]
    416e:	429a      	cmp	r2, r3
    4170:	d318      	bcc.n	41a4 <fsm_wait+0x98>
    4172:	4b19      	ldr	r3, [pc, #100]	; (41d8 <fsm_wait+0xcc>)
    4174:	681b      	ldr	r3, [r3, #0]
    4176:	1c59      	adds	r1, r3, #1
    4178:	4a17      	ldr	r2, [pc, #92]	; (41d8 <fsm_wait+0xcc>)
    417a:	6011      	str	r1, [r2, #0]
    417c:	2b05      	cmp	r3, #5
    417e:	d111      	bne.n	41a4 <fsm_wait+0x98>
    4180:	4b17      	ldr	r3, [pc, #92]	; (41e0 <fsm_wait+0xd4>)
    4182:	2200      	movs	r2, #0
    4184:	601a      	str	r2, [r3, #0]
    4186:	4b14      	ldr	r3, [pc, #80]	; (41d8 <fsm_wait+0xcc>)
    4188:	2200      	movs	r2, #0
    418a:	601a      	str	r2, [r3, #0]
    418c:	2000      	movs	r0, #0
    418e:	f7fb fffb 	bl	188 <dut_set_speed>
    4192:	2000      	movs	r0, #0
    4194:	f7fc f808 	bl	1a8 <dut_set_torque>
    4198:	f7fb ffe2 	bl	160 <dut_stop>
    419c:	4b11      	ldr	r3, [pc, #68]	; (41e4 <fsm_wait+0xd8>)
    419e:	4a12      	ldr	r2, [pc, #72]	; (41e8 <fsm_wait+0xdc>)
    41a0:	601a      	str	r2, [r3, #0]
    41a2:	e016      	b.n	41d2 <fsm_wait+0xc6>
    41a4:	2313      	movs	r3, #19
    41a6:	18fb      	adds	r3, r7, r3
    41a8:	781b      	ldrb	r3, [r3, #0]
    41aa:	2b03      	cmp	r3, #3
    41ac:	d111      	bne.n	41d2 <fsm_wait+0xc6>
    41ae:	4b0c      	ldr	r3, [pc, #48]	; (41e0 <fsm_wait+0xd4>)
    41b0:	2200      	movs	r2, #0
    41b2:	601a      	str	r2, [r3, #0]
    41b4:	4b08      	ldr	r3, [pc, #32]	; (41d8 <fsm_wait+0xcc>)
    41b6:	2200      	movs	r2, #0
    41b8:	601a      	str	r2, [r3, #0]
    41ba:	2000      	movs	r0, #0
    41bc:	f7fb ffe4 	bl	188 <dut_set_speed>
    41c0:	2000      	movs	r0, #0
    41c2:	f7fb fff1 	bl	1a8 <dut_set_torque>
    41c6:	f7fb ffcb 	bl	160 <dut_stop>
    41ca:	4b06      	ldr	r3, [pc, #24]	; (41e4 <fsm_wait+0xd8>)
    41cc:	4a06      	ldr	r2, [pc, #24]	; (41e8 <fsm_wait+0xdc>)
    41ce:	601a      	str	r2, [r3, #0]
    41d0:	46c0      	nop			; (mov r8, r8)
    41d2:	46bd      	mov	sp, r7
    41d4:	b006      	add	sp, #24
    41d6:	bd80      	pop	{r7, pc}
    41d8:	20005fbc 	.word	0x20005fbc
    41dc:	20005fc0 	.word	0x20005fc0
    41e0:	20005fb8 	.word	0x20005fb8
    41e4:	20000010 	.word	0x20000010
    41e8:	00004075 	.word	0x00004075

000041ec <fsm_work>:
    41ec:	b580      	push	{r7, lr}
    41ee:	b088      	sub	sp, #32
    41f0:	af00      	add	r7, sp, #0
    41f2:	6078      	str	r0, [r7, #4]
    41f4:	231b      	movs	r3, #27
    41f6:	18fb      	adds	r3, r7, r3
    41f8:	687a      	ldr	r2, [r7, #4]
    41fa:	701a      	strb	r2, [r3, #0]
    41fc:	687b      	ldr	r3, [r7, #4]
    41fe:	0a1b      	lsrs	r3, r3, #8
    4200:	617b      	str	r3, [r7, #20]
    4202:	231b      	movs	r3, #27
    4204:	18fb      	adds	r3, r7, r3
    4206:	781b      	ldrb	r3, [r3, #0]
    4208:	2b04      	cmp	r3, #4
    420a:	d169      	bne.n	42e0 <fsm_work+0xf4>
    420c:	697b      	ldr	r3, [r7, #20]
    420e:	613b      	str	r3, [r7, #16]
    4210:	2300      	movs	r3, #0
    4212:	61fb      	str	r3, [r7, #28]
    4214:	4b43      	ldr	r3, [pc, #268]	; (4324 <fsm_work+0x138>)
    4216:	681b      	ldr	r3, [r3, #0]
    4218:	2b04      	cmp	r3, #4
    421a:	d903      	bls.n	4224 <fsm_work+0x38>
    421c:	4b42      	ldr	r3, [pc, #264]	; (4328 <fsm_work+0x13c>)
    421e:	689b      	ldr	r3, [r3, #8]
    4220:	61fb      	str	r3, [r7, #28]
    4222:	e012      	b.n	424a <fsm_work+0x5e>
    4224:	4b40      	ldr	r3, [pc, #256]	; (4328 <fsm_work+0x13c>)
    4226:	689a      	ldr	r2, [r3, #8]
    4228:	4b3e      	ldr	r3, [pc, #248]	; (4324 <fsm_work+0x138>)
    422a:	6819      	ldr	r1, [r3, #0]
    422c:	4b3e      	ldr	r3, [pc, #248]	; (4328 <fsm_work+0x13c>)
    422e:	3108      	adds	r1, #8
    4230:	0049      	lsls	r1, r1, #1
    4232:	5acb      	ldrh	r3, [r1, r3]
    4234:	435a      	muls	r2, r3
    4236:	0013      	movs	r3, r2
    4238:	009b      	lsls	r3, r3, #2
    423a:	189b      	adds	r3, r3, r2
    423c:	009b      	lsls	r3, r3, #2
    423e:	2280      	movs	r2, #128	; 0x80
    4240:	00d2      	lsls	r2, r2, #3
    4242:	4694      	mov	ip, r2
    4244:	4463      	add	r3, ip
    4246:	0adb      	lsrs	r3, r3, #11
    4248:	61fb      	str	r3, [r7, #28]
    424a:	693b      	ldr	r3, [r7, #16]
    424c:	2b00      	cmp	r3, #0
    424e:	d101      	bne.n	4254 <fsm_work+0x68>
    4250:	f7fb ff72 	bl	138 <dut_start>
    4254:	693a      	ldr	r2, [r7, #16]
    4256:	69fb      	ldr	r3, [r7, #28]
    4258:	429a      	cmp	r2, r3
    425a:	d331      	bcc.n	42c0 <fsm_work+0xd4>
    425c:	4b31      	ldr	r3, [pc, #196]	; (4324 <fsm_work+0x138>)
    425e:	681b      	ldr	r3, [r3, #0]
    4260:	1c59      	adds	r1, r3, #1
    4262:	4a30      	ldr	r2, [pc, #192]	; (4324 <fsm_work+0x138>)
    4264:	6011      	str	r1, [r2, #0]
    4266:	2b05      	cmp	r3, #5
    4268:	d10a      	bne.n	4280 <fsm_work+0x94>
    426a:	4b2e      	ldr	r3, [pc, #184]	; (4324 <fsm_work+0x138>)
    426c:	2200      	movs	r2, #0
    426e:	601a      	str	r2, [r3, #0]
    4270:	4b2e      	ldr	r3, [pc, #184]	; (432c <fsm_work+0x140>)
    4272:	681b      	ldr	r3, [r3, #0]
    4274:	1e5a      	subs	r2, r3, #1
    4276:	4b2d      	ldr	r3, [pc, #180]	; (432c <fsm_work+0x140>)
    4278:	601a      	str	r2, [r3, #0]
    427a:	f7fb ff71 	bl	160 <dut_stop>
    427e:	e01f      	b.n	42c0 <fsm_work+0xd4>
    4280:	4b28      	ldr	r3, [pc, #160]	; (4324 <fsm_work+0x138>)
    4282:	681b      	ldr	r3, [r3, #0]
    4284:	2b04      	cmp	r3, #4
    4286:	d81b      	bhi.n	42c0 <fsm_work+0xd4>
    4288:	4b27      	ldr	r3, [pc, #156]	; (4328 <fsm_work+0x13c>)
    428a:	68da      	ldr	r2, [r3, #12]
    428c:	4b25      	ldr	r3, [pc, #148]	; (4324 <fsm_work+0x138>)
    428e:	681b      	ldr	r3, [r3, #0]
    4290:	4925      	ldr	r1, [pc, #148]	; (4328 <fsm_work+0x13c>)
    4292:	330c      	adds	r3, #12
    4294:	005b      	lsls	r3, r3, #1
    4296:	18cb      	adds	r3, r1, r3
    4298:	3302      	adds	r3, #2
    429a:	881b      	ldrh	r3, [r3, #0]
    429c:	435a      	muls	r2, r3
    429e:	0013      	movs	r3, r2
    42a0:	009b      	lsls	r3, r3, #2
    42a2:	189b      	adds	r3, r3, r2
    42a4:	009b      	lsls	r3, r3, #2
    42a6:	2280      	movs	r2, #128	; 0x80
    42a8:	00d2      	lsls	r2, r2, #3
    42aa:	4694      	mov	ip, r2
    42ac:	4463      	add	r3, ip
    42ae:	0adb      	lsrs	r3, r3, #11
    42b0:	60fb      	str	r3, [r7, #12]
    42b2:	68fb      	ldr	r3, [r7, #12]
    42b4:	0018      	movs	r0, r3
    42b6:	f7fb ff77 	bl	1a8 <dut_set_torque>
    42ba:	4b1d      	ldr	r3, [pc, #116]	; (4330 <fsm_work+0x144>)
    42bc:	68fa      	ldr	r2, [r7, #12]
    42be:	601a      	str	r2, [r3, #0]
    42c0:	4b1a      	ldr	r3, [pc, #104]	; (432c <fsm_work+0x140>)
    42c2:	681b      	ldr	r3, [r3, #0]
    42c4:	2b00      	cmp	r3, #0
    42c6:	d10b      	bne.n	42e0 <fsm_work+0xf4>
    42c8:	4b1a      	ldr	r3, [pc, #104]	; (4334 <fsm_work+0x148>)
    42ca:	4a1b      	ldr	r2, [pc, #108]	; (4338 <fsm_work+0x14c>)
    42cc:	601a      	str	r2, [r3, #0]
    42ce:	2000      	movs	r0, #0
    42d0:	f7fb ff5a 	bl	188 <dut_set_speed>
    42d4:	2000      	movs	r0, #0
    42d6:	f7fb ff67 	bl	1a8 <dut_set_torque>
    42da:	f7fb ff41 	bl	160 <dut_stop>
    42de:	e01e      	b.n	431e <fsm_work+0x132>
    42e0:	231b      	movs	r3, #27
    42e2:	18fb      	adds	r3, r7, r3
    42e4:	781b      	ldrb	r3, [r3, #0]
    42e6:	2b03      	cmp	r3, #3
    42e8:	d111      	bne.n	430e <fsm_work+0x122>
    42ea:	4b12      	ldr	r3, [pc, #72]	; (4334 <fsm_work+0x148>)
    42ec:	4a12      	ldr	r2, [pc, #72]	; (4338 <fsm_work+0x14c>)
    42ee:	601a      	str	r2, [r3, #0]
    42f0:	2000      	movs	r0, #0
    42f2:	f7fb ff49 	bl	188 <dut_set_speed>
    42f6:	2000      	movs	r0, #0
    42f8:	f7fb ff56 	bl	1a8 <dut_set_torque>
    42fc:	f7fb ff30 	bl	160 <dut_stop>
    4300:	4b0a      	ldr	r3, [pc, #40]	; (432c <fsm_work+0x140>)
    4302:	2200      	movs	r2, #0
    4304:	601a      	str	r2, [r3, #0]
    4306:	4b07      	ldr	r3, [pc, #28]	; (4324 <fsm_work+0x138>)
    4308:	2200      	movs	r2, #0
    430a:	601a      	str	r2, [r3, #0]
    430c:	e007      	b.n	431e <fsm_work+0x132>
    430e:	231b      	movs	r3, #27
    4310:	18fb      	adds	r3, r7, r3
    4312:	781b      	ldrb	r3, [r3, #0]
    4314:	2b02      	cmp	r3, #2
    4316:	d102      	bne.n	431e <fsm_work+0x132>
    4318:	4b06      	ldr	r3, [pc, #24]	; (4334 <fsm_work+0x148>)
    431a:	4a08      	ldr	r2, [pc, #32]	; (433c <fsm_work+0x150>)
    431c:	601a      	str	r2, [r3, #0]
    431e:	46bd      	mov	sp, r7
    4320:	b008      	add	sp, #32
    4322:	bd80      	pop	{r7, pc}
    4324:	20005fbc 	.word	0x20005fbc
    4328:	20005fc0 	.word	0x20005fc0
    432c:	20005fb8 	.word	0x20005fb8
    4330:	20005fe4 	.word	0x20005fe4
    4334:	20000010 	.word	0x20000010
    4338:	00004075 	.word	0x00004075
    433c:	0000410d 	.word	0x0000410d

00004340 <__aeabi_uidiv>:
    4340:	2200      	movs	r2, #0
    4342:	0843      	lsrs	r3, r0, #1
    4344:	428b      	cmp	r3, r1
    4346:	d374      	bcc.n	4432 <__aeabi_uidiv+0xf2>
    4348:	0903      	lsrs	r3, r0, #4
    434a:	428b      	cmp	r3, r1
    434c:	d35f      	bcc.n	440e <__aeabi_uidiv+0xce>
    434e:	0a03      	lsrs	r3, r0, #8
    4350:	428b      	cmp	r3, r1
    4352:	d344      	bcc.n	43de <__aeabi_uidiv+0x9e>
    4354:	0b03      	lsrs	r3, r0, #12
    4356:	428b      	cmp	r3, r1
    4358:	d328      	bcc.n	43ac <__aeabi_uidiv+0x6c>
    435a:	0c03      	lsrs	r3, r0, #16
    435c:	428b      	cmp	r3, r1
    435e:	d30d      	bcc.n	437c <__aeabi_uidiv+0x3c>
    4360:	22ff      	movs	r2, #255	; 0xff
    4362:	0209      	lsls	r1, r1, #8
    4364:	ba12      	rev	r2, r2
    4366:	0c03      	lsrs	r3, r0, #16
    4368:	428b      	cmp	r3, r1
    436a:	d302      	bcc.n	4372 <__aeabi_uidiv+0x32>
    436c:	1212      	asrs	r2, r2, #8
    436e:	0209      	lsls	r1, r1, #8
    4370:	d065      	beq.n	443e <__aeabi_uidiv+0xfe>
    4372:	0b03      	lsrs	r3, r0, #12
    4374:	428b      	cmp	r3, r1
    4376:	d319      	bcc.n	43ac <__aeabi_uidiv+0x6c>
    4378:	e000      	b.n	437c <__aeabi_uidiv+0x3c>
    437a:	0a09      	lsrs	r1, r1, #8
    437c:	0bc3      	lsrs	r3, r0, #15
    437e:	428b      	cmp	r3, r1
    4380:	d301      	bcc.n	4386 <__aeabi_uidiv+0x46>
    4382:	03cb      	lsls	r3, r1, #15
    4384:	1ac0      	subs	r0, r0, r3
    4386:	4152      	adcs	r2, r2
    4388:	0b83      	lsrs	r3, r0, #14
    438a:	428b      	cmp	r3, r1
    438c:	d301      	bcc.n	4392 <__aeabi_uidiv+0x52>
    438e:	038b      	lsls	r3, r1, #14
    4390:	1ac0      	subs	r0, r0, r3
    4392:	4152      	adcs	r2, r2
    4394:	0b43      	lsrs	r3, r0, #13
    4396:	428b      	cmp	r3, r1
    4398:	d301      	bcc.n	439e <__aeabi_uidiv+0x5e>
    439a:	034b      	lsls	r3, r1, #13
    439c:	1ac0      	subs	r0, r0, r3
    439e:	4152      	adcs	r2, r2
    43a0:	0b03      	lsrs	r3, r0, #12
    43a2:	428b      	cmp	r3, r1
    43a4:	d301      	bcc.n	43aa <__aeabi_uidiv+0x6a>
    43a6:	030b      	lsls	r3, r1, #12
    43a8:	1ac0      	subs	r0, r0, r3
    43aa:	4152      	adcs	r2, r2
    43ac:	0ac3      	lsrs	r3, r0, #11
    43ae:	428b      	cmp	r3, r1
    43b0:	d301      	bcc.n	43b6 <__aeabi_uidiv+0x76>
    43b2:	02cb      	lsls	r3, r1, #11
    43b4:	1ac0      	subs	r0, r0, r3
    43b6:	4152      	adcs	r2, r2
    43b8:	0a83      	lsrs	r3, r0, #10
    43ba:	428b      	cmp	r3, r1
    43bc:	d301      	bcc.n	43c2 <__aeabi_uidiv+0x82>
    43be:	028b      	lsls	r3, r1, #10
    43c0:	1ac0      	subs	r0, r0, r3
    43c2:	4152      	adcs	r2, r2
    43c4:	0a43      	lsrs	r3, r0, #9
    43c6:	428b      	cmp	r3, r1
    43c8:	d301      	bcc.n	43ce <__aeabi_uidiv+0x8e>
    43ca:	024b      	lsls	r3, r1, #9
    43cc:	1ac0      	subs	r0, r0, r3
    43ce:	4152      	adcs	r2, r2
    43d0:	0a03      	lsrs	r3, r0, #8
    43d2:	428b      	cmp	r3, r1
    43d4:	d301      	bcc.n	43da <__aeabi_uidiv+0x9a>
    43d6:	020b      	lsls	r3, r1, #8
    43d8:	1ac0      	subs	r0, r0, r3
    43da:	4152      	adcs	r2, r2
    43dc:	d2cd      	bcs.n	437a <__aeabi_uidiv+0x3a>
    43de:	09c3      	lsrs	r3, r0, #7
    43e0:	428b      	cmp	r3, r1
    43e2:	d301      	bcc.n	43e8 <__aeabi_uidiv+0xa8>
    43e4:	01cb      	lsls	r3, r1, #7
    43e6:	1ac0      	subs	r0, r0, r3
    43e8:	4152      	adcs	r2, r2
    43ea:	0983      	lsrs	r3, r0, #6
    43ec:	428b      	cmp	r3, r1
    43ee:	d301      	bcc.n	43f4 <__aeabi_uidiv+0xb4>
    43f0:	018b      	lsls	r3, r1, #6
    43f2:	1ac0      	subs	r0, r0, r3
    43f4:	4152      	adcs	r2, r2
    43f6:	0943      	lsrs	r3, r0, #5
    43f8:	428b      	cmp	r3, r1
    43fa:	d301      	bcc.n	4400 <__aeabi_uidiv+0xc0>
    43fc:	014b      	lsls	r3, r1, #5
    43fe:	1ac0      	subs	r0, r0, r3
    4400:	4152      	adcs	r2, r2
    4402:	0903      	lsrs	r3, r0, #4
    4404:	428b      	cmp	r3, r1
    4406:	d301      	bcc.n	440c <__aeabi_uidiv+0xcc>
    4408:	010b      	lsls	r3, r1, #4
    440a:	1ac0      	subs	r0, r0, r3
    440c:	4152      	adcs	r2, r2
    440e:	08c3      	lsrs	r3, r0, #3
    4410:	428b      	cmp	r3, r1
    4412:	d301      	bcc.n	4418 <__aeabi_uidiv+0xd8>
    4414:	00cb      	lsls	r3, r1, #3
    4416:	1ac0      	subs	r0, r0, r3
    4418:	4152      	adcs	r2, r2
    441a:	0883      	lsrs	r3, r0, #2
    441c:	428b      	cmp	r3, r1
    441e:	d301      	bcc.n	4424 <__aeabi_uidiv+0xe4>
    4420:	008b      	lsls	r3, r1, #2
    4422:	1ac0      	subs	r0, r0, r3
    4424:	4152      	adcs	r2, r2
    4426:	0843      	lsrs	r3, r0, #1
    4428:	428b      	cmp	r3, r1
    442a:	d301      	bcc.n	4430 <__aeabi_uidiv+0xf0>
    442c:	004b      	lsls	r3, r1, #1
    442e:	1ac0      	subs	r0, r0, r3
    4430:	4152      	adcs	r2, r2
    4432:	1a41      	subs	r1, r0, r1
    4434:	d200      	bcs.n	4438 <__aeabi_uidiv+0xf8>
    4436:	4601      	mov	r1, r0
    4438:	4152      	adcs	r2, r2
    443a:	4610      	mov	r0, r2
    443c:	4770      	bx	lr
    443e:	e7ff      	b.n	4440 <__aeabi_uidiv+0x100>
    4440:	b501      	push	{r0, lr}
    4442:	2000      	movs	r0, #0
    4444:	f000 f806 	bl	4454 <__aeabi_idiv0>
    4448:	bd02      	pop	{r1, pc}
    444a:	46c0      	nop			; (mov r8, r8)

0000444c <__aeabi_uidivmod>:
    444c:	2900      	cmp	r1, #0
    444e:	d0f7      	beq.n	4440 <__aeabi_uidiv+0x100>
    4450:	e776      	b.n	4340 <__aeabi_uidiv>
    4452:	4770      	bx	lr

00004454 <__aeabi_idiv0>:
    4454:	4770      	bx	lr
    4456:	46c0      	nop			; (mov r8, r8)

00004458 <rt_set_PSP>:
    4458:	f380 8809 	msr	PSP, r0
    445c:	4770      	bx	lr

0000445e <rt_get_PSP>:
    445e:	f3ef 8009 	mrs	r0, PSP
    4462:	4770      	bx	lr

00004464 <os_set_env>:
    4464:	4668      	mov	r0, sp
    4466:	f380 8809 	msr	PSP, r0
    446a:	484a      	ldr	r0, [pc, #296]	; (4594 <OS_Tick_Handler+0xa>)
    446c:	7800      	ldrb	r0, [r0, #0]
    446e:	07c0      	lsls	r0, r0, #31
    4470:	d103      	bne.n	447a <PrivilegedE>
    4472:	2003      	movs	r0, #3
    4474:	f380 8814 	msr	CONTROL, r0
    4478:	4770      	bx	lr

0000447a <PrivilegedE>:
    447a:	2002      	movs	r0, #2
    447c:	f380 8814 	msr	CONTROL, r0
    4480:	4770      	bx	lr

00004482 <_alloc_box>:
    4482:	4b45      	ldr	r3, [pc, #276]	; (4598 <OS_Tick_Handler+0xe>)
    4484:	469c      	mov	ip, r3
    4486:	f3ef 8305 	mrs	r3, IPSR
    448a:	061b      	lsls	r3, r3, #24
    448c:	d105      	bne.n	449a <PrivilegedA>
    448e:	f3ef 8314 	mrs	r3, CONTROL
    4492:	07db      	lsls	r3, r3, #31
    4494:	d001      	beq.n	449a <PrivilegedA>
    4496:	df00      	svc	0
    4498:	4770      	bx	lr

0000449a <PrivilegedA>:
    449a:	4760      	bx	ip

0000449c <_free_box>:
    449c:	4b3f      	ldr	r3, [pc, #252]	; (459c <OS_Tick_Handler+0x12>)
    449e:	469c      	mov	ip, r3
    44a0:	f3ef 8305 	mrs	r3, IPSR
    44a4:	061b      	lsls	r3, r3, #24
    44a6:	d105      	bne.n	44b4 <PrivilegedF>
    44a8:	f3ef 8314 	mrs	r3, CONTROL
    44ac:	07db      	lsls	r3, r3, #31
    44ae:	d001      	beq.n	44b4 <PrivilegedF>
    44b0:	df00      	svc	0
    44b2:	4770      	bx	lr

000044b4 <PrivilegedF>:
    44b4:	4760      	bx	ip

000044b6 <SVC_Handler>:
    44b6:	f3ef 8009 	mrs	r0, PSP
    44ba:	6981      	ldr	r1, [r0, #24]
    44bc:	3902      	subs	r1, #2
    44be:	7809      	ldrb	r1, [r1, #0]
    44c0:	2900      	cmp	r1, #0
    44c2:	d12b      	bne.n	451c <SVC_User>
    44c4:	46a6      	mov	lr, r4
    44c6:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    44c8:	46a4      	mov	ip, r4
    44ca:	4674      	mov	r4, lr
    44cc:	47e0      	blx	ip
    44ce:	f3ef 8309 	mrs	r3, PSP
    44d2:	c307      	stmia	r3!, {r0, r1, r2}
    44d4:	4b32      	ldr	r3, [pc, #200]	; (45a0 <OS_Tick_Handler+0x16>)
    44d6:	cb06      	ldmia	r3!, {r1, r2}
    44d8:	4291      	cmp	r1, r2
    44da:	d01c      	beq.n	4516 <SVC_Exit>
    44dc:	3b08      	subs	r3, #8
    44de:	2900      	cmp	r1, #0
    44e0:	d00d      	beq.n	44fe <SVC_Next>
    44e2:	f3ef 8009 	mrs	r0, PSP
    44e6:	3820      	subs	r0, #32
    44e8:	6288      	str	r0, [r1, #40]	; 0x28
    44ea:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    44ec:	4644      	mov	r4, r8
    44ee:	464d      	mov	r5, r9
    44f0:	4656      	mov	r6, sl
    44f2:	465f      	mov	r7, fp
    44f4:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    44f6:	b40c      	push	{r2, r3}
    44f8:	f003 fbe8 	bl	7ccc <rt_stk_check>
    44fc:	bc0c      	pop	{r2, r3}

000044fe <SVC_Next>:
    44fe:	601a      	str	r2, [r3, #0]
    4500:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4502:	3010      	adds	r0, #16
    4504:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4506:	46a0      	mov	r8, r4
    4508:	46a9      	mov	r9, r5
    450a:	46b2      	mov	sl, r6
    450c:	46bb      	mov	fp, r7
    450e:	f380 8809 	msr	PSP, r0
    4512:	3820      	subs	r0, #32
    4514:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004516 <SVC_Exit>:
    4516:	2002      	movs	r0, #2
    4518:	43c0      	mvns	r0, r0
    451a:	4700      	bx	r0

0000451c <SVC_User>:
    451c:	b510      	push	{r4, lr}
    451e:	4a21      	ldr	r2, [pc, #132]	; (45a4 <OS_Tick_Handler+0x1a>)
    4520:	6812      	ldr	r2, [r2, #0]
    4522:	4291      	cmp	r1, r2
    4524:	d809      	bhi.n	453a <SVC_Done>
    4526:	4c20      	ldr	r4, [pc, #128]	; (45a8 <OS_Tick_Handler+0x1e>)
    4528:	0089      	lsls	r1, r1, #2
    452a:	5864      	ldr	r4, [r4, r1]
    452c:	46a6      	mov	lr, r4
    452e:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4530:	46a4      	mov	ip, r4
    4532:	47f0      	blx	lr
    4534:	f3ef 8409 	mrs	r4, PSP
    4538:	c40f      	stmia	r4!, {r0, r1, r2, r3}

0000453a <SVC_Done>:
    453a:	bd10      	pop	{r4, pc}

0000453c <PendSV_Handler>:
    453c:	f003 fb36 	bl	7bac <rt_pop_req>

00004540 <Sys_Switch>:
    4540:	4b17      	ldr	r3, [pc, #92]	; (45a0 <OS_Tick_Handler+0x16>)
    4542:	cb06      	ldmia	r3!, {r1, r2}
    4544:	4291      	cmp	r1, r2
    4546:	d01a      	beq.n	457e <Sys_Exit>
    4548:	3b08      	subs	r3, #8
    454a:	f3ef 8009 	mrs	r0, PSP
    454e:	3820      	subs	r0, #32
    4550:	6288      	str	r0, [r1, #40]	; 0x28
    4552:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4554:	4644      	mov	r4, r8
    4556:	464d      	mov	r5, r9
    4558:	4656      	mov	r6, sl
    455a:	465f      	mov	r7, fp
    455c:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    455e:	b40c      	push	{r2, r3}
    4560:	f003 fbb4 	bl	7ccc <rt_stk_check>
    4564:	bc0c      	pop	{r2, r3}
    4566:	601a      	str	r2, [r3, #0]
    4568:	6a90      	ldr	r0, [r2, #40]	; 0x28
    456a:	3010      	adds	r0, #16
    456c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    456e:	46a0      	mov	r8, r4
    4570:	46a9      	mov	r9, r5
    4572:	46b2      	mov	sl, r6
    4574:	46bb      	mov	fp, r7
    4576:	f380 8809 	msr	PSP, r0
    457a:	3820      	subs	r0, #32
    457c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

0000457e <Sys_Exit>:
    457e:	2002      	movs	r0, #2
    4580:	43c0      	mvns	r0, r0
    4582:	4700      	bx	r0

00004584 <SysTick_Handler>:
    4584:	f003 fb84 	bl	7c90 <rt_systick>
    4588:	e7da      	b.n	4540 <Sys_Switch>

0000458a <OS_Tick_Handler>:
    458a:	f003 fb7f 	bl	7c8c <os_tick_irqack>
    458e:	f003 fb7f 	bl	7c90 <rt_systick>
    4592:	e7d5      	b.n	4540 <Sys_Switch>
    4594:	000083ec 	.word	0x000083ec
    4598:	00006dc9 	.word	0x00006dc9
    459c:	00006e09 	.word	0x00006e09
    45a0:	20006064 	.word	0x20006064
    45a4:	00000000 	.word	0x00000000
    45a8:	fffffffc 	.word	0xfffffffc

000045ac <__aeabi_uldivmod>:
    45ac:	2b00      	cmp	r3, #0
    45ae:	d111      	bne.n	45d4 <__aeabi_uldivmod+0x28>
    45b0:	2a00      	cmp	r2, #0
    45b2:	d10f      	bne.n	45d4 <__aeabi_uldivmod+0x28>
    45b4:	2900      	cmp	r1, #0
    45b6:	d100      	bne.n	45ba <__aeabi_uldivmod+0xe>
    45b8:	2800      	cmp	r0, #0
    45ba:	d002      	beq.n	45c2 <__aeabi_uldivmod+0x16>
    45bc:	2100      	movs	r1, #0
    45be:	43c9      	mvns	r1, r1
    45c0:	1c08      	adds	r0, r1, #0
    45c2:	b407      	push	{r0, r1, r2}
    45c4:	4802      	ldr	r0, [pc, #8]	; (45d0 <__aeabi_uldivmod+0x24>)
    45c6:	a102      	add	r1, pc, #8	; (adr r1, 45d0 <__aeabi_uldivmod+0x24>)
    45c8:	1840      	adds	r0, r0, r1
    45ca:	9002      	str	r0, [sp, #8]
    45cc:	bd03      	pop	{r0, r1, pc}
    45ce:	46c0      	nop			; (mov r8, r8)
    45d0:	fffffe85 	.word	0xfffffe85
    45d4:	b403      	push	{r0, r1}
    45d6:	4668      	mov	r0, sp
    45d8:	b501      	push	{r0, lr}
    45da:	9802      	ldr	r0, [sp, #8]
    45dc:	f000 f832 	bl	4644 <__udivmoddi4>
    45e0:	9b01      	ldr	r3, [sp, #4]
    45e2:	469e      	mov	lr, r3
    45e4:	b002      	add	sp, #8
    45e6:	bc0c      	pop	{r2, r3}
    45e8:	4770      	bx	lr
    45ea:	46c0      	nop			; (mov r8, r8)

000045ec <__aeabi_lmul>:
    45ec:	b5f0      	push	{r4, r5, r6, r7, lr}
    45ee:	464f      	mov	r7, r9
    45f0:	4646      	mov	r6, r8
    45f2:	b4c0      	push	{r6, r7}
    45f4:	0416      	lsls	r6, r2, #16
    45f6:	0c36      	lsrs	r6, r6, #16
    45f8:	4699      	mov	r9, r3
    45fa:	0033      	movs	r3, r6
    45fc:	0405      	lsls	r5, r0, #16
    45fe:	0c2c      	lsrs	r4, r5, #16
    4600:	0c07      	lsrs	r7, r0, #16
    4602:	0c15      	lsrs	r5, r2, #16
    4604:	4363      	muls	r3, r4
    4606:	437e      	muls	r6, r7
    4608:	436f      	muls	r7, r5
    460a:	4365      	muls	r5, r4
    460c:	0c1c      	lsrs	r4, r3, #16
    460e:	19ad      	adds	r5, r5, r6
    4610:	1964      	adds	r4, r4, r5
    4612:	469c      	mov	ip, r3
    4614:	42a6      	cmp	r6, r4
    4616:	d903      	bls.n	4620 <__aeabi_lmul+0x34>
    4618:	2380      	movs	r3, #128	; 0x80
    461a:	025b      	lsls	r3, r3, #9
    461c:	4698      	mov	r8, r3
    461e:	4447      	add	r7, r8
    4620:	4663      	mov	r3, ip
    4622:	0c25      	lsrs	r5, r4, #16
    4624:	19ef      	adds	r7, r5, r7
    4626:	041d      	lsls	r5, r3, #16
    4628:	464b      	mov	r3, r9
    462a:	434a      	muls	r2, r1
    462c:	4343      	muls	r3, r0
    462e:	0c2d      	lsrs	r5, r5, #16
    4630:	0424      	lsls	r4, r4, #16
    4632:	1964      	adds	r4, r4, r5
    4634:	1899      	adds	r1, r3, r2
    4636:	19c9      	adds	r1, r1, r7
    4638:	0020      	movs	r0, r4
    463a:	bc0c      	pop	{r2, r3}
    463c:	4690      	mov	r8, r2
    463e:	4699      	mov	r9, r3
    4640:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4642:	46c0      	nop			; (mov r8, r8)

00004644 <__udivmoddi4>:
    4644:	b5f0      	push	{r4, r5, r6, r7, lr}
    4646:	464d      	mov	r5, r9
    4648:	4656      	mov	r6, sl
    464a:	4644      	mov	r4, r8
    464c:	465f      	mov	r7, fp
    464e:	b4f0      	push	{r4, r5, r6, r7}
    4650:	4692      	mov	sl, r2
    4652:	b083      	sub	sp, #12
    4654:	0004      	movs	r4, r0
    4656:	000d      	movs	r5, r1
    4658:	4699      	mov	r9, r3
    465a:	428b      	cmp	r3, r1
    465c:	d82f      	bhi.n	46be <__udivmoddi4+0x7a>
    465e:	d02c      	beq.n	46ba <__udivmoddi4+0x76>
    4660:	4649      	mov	r1, r9
    4662:	4650      	mov	r0, sl
    4664:	f000 f8ae 	bl	47c4 <__clzdi2>
    4668:	0029      	movs	r1, r5
    466a:	0006      	movs	r6, r0
    466c:	0020      	movs	r0, r4
    466e:	f000 f8a9 	bl	47c4 <__clzdi2>
    4672:	1a33      	subs	r3, r6, r0
    4674:	4698      	mov	r8, r3
    4676:	3b20      	subs	r3, #32
    4678:	469b      	mov	fp, r3
    467a:	d500      	bpl.n	467e <__udivmoddi4+0x3a>
    467c:	e074      	b.n	4768 <__udivmoddi4+0x124>
    467e:	4653      	mov	r3, sl
    4680:	465a      	mov	r2, fp
    4682:	4093      	lsls	r3, r2
    4684:	001f      	movs	r7, r3
    4686:	4653      	mov	r3, sl
    4688:	4642      	mov	r2, r8
    468a:	4093      	lsls	r3, r2
    468c:	001e      	movs	r6, r3
    468e:	42af      	cmp	r7, r5
    4690:	d829      	bhi.n	46e6 <__udivmoddi4+0xa2>
    4692:	d026      	beq.n	46e2 <__udivmoddi4+0x9e>
    4694:	465b      	mov	r3, fp
    4696:	1ba4      	subs	r4, r4, r6
    4698:	41bd      	sbcs	r5, r7
    469a:	2b00      	cmp	r3, #0
    469c:	da00      	bge.n	46a0 <__udivmoddi4+0x5c>
    469e:	e079      	b.n	4794 <__udivmoddi4+0x150>
    46a0:	2200      	movs	r2, #0
    46a2:	2300      	movs	r3, #0
    46a4:	9200      	str	r2, [sp, #0]
    46a6:	9301      	str	r3, [sp, #4]
    46a8:	2301      	movs	r3, #1
    46aa:	465a      	mov	r2, fp
    46ac:	4093      	lsls	r3, r2
    46ae:	9301      	str	r3, [sp, #4]
    46b0:	2301      	movs	r3, #1
    46b2:	4642      	mov	r2, r8
    46b4:	4093      	lsls	r3, r2
    46b6:	9300      	str	r3, [sp, #0]
    46b8:	e019      	b.n	46ee <__udivmoddi4+0xaa>
    46ba:	4282      	cmp	r2, r0
    46bc:	d9d0      	bls.n	4660 <__udivmoddi4+0x1c>
    46be:	2200      	movs	r2, #0
    46c0:	2300      	movs	r3, #0
    46c2:	9200      	str	r2, [sp, #0]
    46c4:	9301      	str	r3, [sp, #4]
    46c6:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    46c8:	2b00      	cmp	r3, #0
    46ca:	d001      	beq.n	46d0 <__udivmoddi4+0x8c>
    46cc:	601c      	str	r4, [r3, #0]
    46ce:	605d      	str	r5, [r3, #4]
    46d0:	9800      	ldr	r0, [sp, #0]
    46d2:	9901      	ldr	r1, [sp, #4]
    46d4:	b003      	add	sp, #12
    46d6:	bc3c      	pop	{r2, r3, r4, r5}
    46d8:	4690      	mov	r8, r2
    46da:	4699      	mov	r9, r3
    46dc:	46a2      	mov	sl, r4
    46de:	46ab      	mov	fp, r5
    46e0:	bdf0      	pop	{r4, r5, r6, r7, pc}
    46e2:	42a3      	cmp	r3, r4
    46e4:	d9d6      	bls.n	4694 <__udivmoddi4+0x50>
    46e6:	2200      	movs	r2, #0
    46e8:	2300      	movs	r3, #0
    46ea:	9200      	str	r2, [sp, #0]
    46ec:	9301      	str	r3, [sp, #4]
    46ee:	4643      	mov	r3, r8
    46f0:	2b00      	cmp	r3, #0
    46f2:	d0e8      	beq.n	46c6 <__udivmoddi4+0x82>
    46f4:	07fb      	lsls	r3, r7, #31
    46f6:	0872      	lsrs	r2, r6, #1
    46f8:	431a      	orrs	r2, r3
    46fa:	4646      	mov	r6, r8
    46fc:	087b      	lsrs	r3, r7, #1
    46fe:	e00e      	b.n	471e <__udivmoddi4+0xda>
    4700:	42ab      	cmp	r3, r5
    4702:	d101      	bne.n	4708 <__udivmoddi4+0xc4>
    4704:	42a2      	cmp	r2, r4
    4706:	d80c      	bhi.n	4722 <__udivmoddi4+0xde>
    4708:	1aa4      	subs	r4, r4, r2
    470a:	419d      	sbcs	r5, r3
    470c:	2001      	movs	r0, #1
    470e:	1924      	adds	r4, r4, r4
    4710:	416d      	adcs	r5, r5
    4712:	2100      	movs	r1, #0
    4714:	3e01      	subs	r6, #1
    4716:	1824      	adds	r4, r4, r0
    4718:	414d      	adcs	r5, r1
    471a:	2e00      	cmp	r6, #0
    471c:	d006      	beq.n	472c <__udivmoddi4+0xe8>
    471e:	42ab      	cmp	r3, r5
    4720:	d9ee      	bls.n	4700 <__udivmoddi4+0xbc>
    4722:	3e01      	subs	r6, #1
    4724:	1924      	adds	r4, r4, r4
    4726:	416d      	adcs	r5, r5
    4728:	2e00      	cmp	r6, #0
    472a:	d1f8      	bne.n	471e <__udivmoddi4+0xda>
    472c:	465b      	mov	r3, fp
    472e:	9800      	ldr	r0, [sp, #0]
    4730:	9901      	ldr	r1, [sp, #4]
    4732:	1900      	adds	r0, r0, r4
    4734:	4169      	adcs	r1, r5
    4736:	2b00      	cmp	r3, #0
    4738:	db22      	blt.n	4780 <__udivmoddi4+0x13c>
    473a:	002b      	movs	r3, r5
    473c:	465a      	mov	r2, fp
    473e:	40d3      	lsrs	r3, r2
    4740:	002a      	movs	r2, r5
    4742:	4644      	mov	r4, r8
    4744:	40e2      	lsrs	r2, r4
    4746:	001c      	movs	r4, r3
    4748:	465b      	mov	r3, fp
    474a:	0015      	movs	r5, r2
    474c:	2b00      	cmp	r3, #0
    474e:	db2c      	blt.n	47aa <__udivmoddi4+0x166>
    4750:	0026      	movs	r6, r4
    4752:	409e      	lsls	r6, r3
    4754:	0033      	movs	r3, r6
    4756:	0026      	movs	r6, r4
    4758:	4647      	mov	r7, r8
    475a:	40be      	lsls	r6, r7
    475c:	0032      	movs	r2, r6
    475e:	1a80      	subs	r0, r0, r2
    4760:	4199      	sbcs	r1, r3
    4762:	9000      	str	r0, [sp, #0]
    4764:	9101      	str	r1, [sp, #4]
    4766:	e7ae      	b.n	46c6 <__udivmoddi4+0x82>
    4768:	4642      	mov	r2, r8
    476a:	2320      	movs	r3, #32
    476c:	1a9b      	subs	r3, r3, r2
    476e:	4652      	mov	r2, sl
    4770:	40da      	lsrs	r2, r3
    4772:	4641      	mov	r1, r8
    4774:	0013      	movs	r3, r2
    4776:	464a      	mov	r2, r9
    4778:	408a      	lsls	r2, r1
    477a:	0017      	movs	r7, r2
    477c:	431f      	orrs	r7, r3
    477e:	e782      	b.n	4686 <__udivmoddi4+0x42>
    4780:	4642      	mov	r2, r8
    4782:	2320      	movs	r3, #32
    4784:	1a9b      	subs	r3, r3, r2
    4786:	002a      	movs	r2, r5
    4788:	4646      	mov	r6, r8
    478a:	409a      	lsls	r2, r3
    478c:	0023      	movs	r3, r4
    478e:	40f3      	lsrs	r3, r6
    4790:	4313      	orrs	r3, r2
    4792:	e7d5      	b.n	4740 <__udivmoddi4+0xfc>
    4794:	4642      	mov	r2, r8
    4796:	2320      	movs	r3, #32
    4798:	2100      	movs	r1, #0
    479a:	1a9b      	subs	r3, r3, r2
    479c:	2200      	movs	r2, #0
    479e:	9100      	str	r1, [sp, #0]
    47a0:	9201      	str	r2, [sp, #4]
    47a2:	2201      	movs	r2, #1
    47a4:	40da      	lsrs	r2, r3
    47a6:	9201      	str	r2, [sp, #4]
    47a8:	e782      	b.n	46b0 <__udivmoddi4+0x6c>
    47aa:	4642      	mov	r2, r8
    47ac:	2320      	movs	r3, #32
    47ae:	0026      	movs	r6, r4
    47b0:	1a9b      	subs	r3, r3, r2
    47b2:	40de      	lsrs	r6, r3
    47b4:	002f      	movs	r7, r5
    47b6:	46b4      	mov	ip, r6
    47b8:	4097      	lsls	r7, r2
    47ba:	4666      	mov	r6, ip
    47bc:	003b      	movs	r3, r7
    47be:	4333      	orrs	r3, r6
    47c0:	e7c9      	b.n	4756 <__udivmoddi4+0x112>
    47c2:	46c0      	nop			; (mov r8, r8)

000047c4 <__clzdi2>:
    47c4:	b510      	push	{r4, lr}
    47c6:	2900      	cmp	r1, #0
    47c8:	d103      	bne.n	47d2 <__clzdi2+0xe>
    47ca:	f000 f807 	bl	47dc <__clzsi2>
    47ce:	3020      	adds	r0, #32
    47d0:	e002      	b.n	47d8 <__clzdi2+0x14>
    47d2:	1c08      	adds	r0, r1, #0
    47d4:	f000 f802 	bl	47dc <__clzsi2>
    47d8:	bd10      	pop	{r4, pc}
    47da:	46c0      	nop			; (mov r8, r8)

000047dc <__clzsi2>:
    47dc:	211c      	movs	r1, #28
    47de:	2301      	movs	r3, #1
    47e0:	041b      	lsls	r3, r3, #16
    47e2:	4298      	cmp	r0, r3
    47e4:	d301      	bcc.n	47ea <__clzsi2+0xe>
    47e6:	0c00      	lsrs	r0, r0, #16
    47e8:	3910      	subs	r1, #16
    47ea:	0a1b      	lsrs	r3, r3, #8
    47ec:	4298      	cmp	r0, r3
    47ee:	d301      	bcc.n	47f4 <__clzsi2+0x18>
    47f0:	0a00      	lsrs	r0, r0, #8
    47f2:	3908      	subs	r1, #8
    47f4:	091b      	lsrs	r3, r3, #4
    47f6:	4298      	cmp	r0, r3
    47f8:	d301      	bcc.n	47fe <__clzsi2+0x22>
    47fa:	0900      	lsrs	r0, r0, #4
    47fc:	3904      	subs	r1, #4
    47fe:	a202      	add	r2, pc, #8	; (adr r2, 4808 <__clzsi2+0x2c>)
    4800:	5c10      	ldrb	r0, [r2, r0]
    4802:	1840      	adds	r0, r0, r1
    4804:	4770      	bx	lr
    4806:	46c0      	nop			; (mov r8, r8)
    4808:	02020304 	.word	0x02020304
    480c:	01010101 	.word	0x01010101
	...

00004818 <atexit>:
    4818:	b510      	push	{r4, lr}
    481a:	0001      	movs	r1, r0
    481c:	2300      	movs	r3, #0
    481e:	2200      	movs	r2, #0
    4820:	2000      	movs	r0, #0
    4822:	f000 f8ed 	bl	4a00 <__register_exitproc>
    4826:	bd10      	pop	{r4, pc}

00004828 <exit>:
    4828:	b510      	push	{r4, lr}
    482a:	2100      	movs	r1, #0
    482c:	0004      	movs	r4, r0
    482e:	f000 f95d 	bl	4aec <__call_exitprocs>
    4832:	4b04      	ldr	r3, [pc, #16]	; (4844 <exit+0x1c>)
    4834:	6818      	ldr	r0, [r3, #0]
    4836:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    4838:	2b00      	cmp	r3, #0
    483a:	d000      	beq.n	483e <exit+0x16>
    483c:	4798      	blx	r3
    483e:	0020      	movs	r0, r4
    4840:	f7fc f924 	bl	a8c <_exit>
    4844:	00008e6c 	.word	0x00008e6c

00004848 <__libc_fini_array>:
    4848:	b570      	push	{r4, r5, r6, lr}
    484a:	4b09      	ldr	r3, [pc, #36]	; (4870 <__libc_fini_array+0x28>)
    484c:	4c09      	ldr	r4, [pc, #36]	; (4874 <__libc_fini_array+0x2c>)
    484e:	1ae4      	subs	r4, r4, r3
    4850:	10a4      	asrs	r4, r4, #2
    4852:	d009      	beq.n	4868 <__libc_fini_array+0x20>
    4854:	4a08      	ldr	r2, [pc, #32]	; (4878 <__libc_fini_array+0x30>)
    4856:	18a5      	adds	r5, r4, r2
    4858:	00ad      	lsls	r5, r5, #2
    485a:	18ed      	adds	r5, r5, r3
    485c:	682b      	ldr	r3, [r5, #0]
    485e:	3c01      	subs	r4, #1
    4860:	4798      	blx	r3
    4862:	3d04      	subs	r5, #4
    4864:	2c00      	cmp	r4, #0
    4866:	d1f9      	bne.n	485c <__libc_fini_array+0x14>
    4868:	f7fc fa5c 	bl	d24 <_fini>
    486c:	bd70      	pop	{r4, r5, r6, pc}
    486e:	46c0      	nop			; (mov r8, r8)
	...
    4878:	3fffffff 	.word	0x3fffffff

0000487c <__libc_init_array>:
    487c:	b570      	push	{r4, r5, r6, lr}
    487e:	4e0d      	ldr	r6, [pc, #52]	; (48b4 <__libc_init_array+0x38>)
    4880:	4d0d      	ldr	r5, [pc, #52]	; (48b8 <__libc_init_array+0x3c>)
    4882:	2400      	movs	r4, #0
    4884:	1bad      	subs	r5, r5, r6
    4886:	10ad      	asrs	r5, r5, #2
    4888:	d005      	beq.n	4896 <__libc_init_array+0x1a>
    488a:	00a3      	lsls	r3, r4, #2
    488c:	58f3      	ldr	r3, [r6, r3]
    488e:	3401      	adds	r4, #1
    4890:	4798      	blx	r3
    4892:	42a5      	cmp	r5, r4
    4894:	d1f9      	bne.n	488a <__libc_init_array+0xe>
    4896:	f7fc fa3f 	bl	d18 <_init>
    489a:	4e08      	ldr	r6, [pc, #32]	; (48bc <__libc_init_array+0x40>)
    489c:	4d08      	ldr	r5, [pc, #32]	; (48c0 <__libc_init_array+0x44>)
    489e:	2400      	movs	r4, #0
    48a0:	1bad      	subs	r5, r5, r6
    48a2:	10ad      	asrs	r5, r5, #2
    48a4:	d005      	beq.n	48b2 <__libc_init_array+0x36>
    48a6:	00a3      	lsls	r3, r4, #2
    48a8:	58f3      	ldr	r3, [r6, r3]
    48aa:	3401      	adds	r4, #1
    48ac:	4798      	blx	r3
    48ae:	42a5      	cmp	r5, r4
    48b0:	d1f9      	bne.n	48a6 <__libc_init_array+0x2a>
    48b2:	bd70      	pop	{r4, r5, r6, pc}
	...

000048c4 <memset>:
    48c4:	b570      	push	{r4, r5, r6, lr}
    48c6:	0783      	lsls	r3, r0, #30
    48c8:	d03f      	beq.n	494a <memset+0x86>
    48ca:	1e54      	subs	r4, r2, #1
    48cc:	2a00      	cmp	r2, #0
    48ce:	d03b      	beq.n	4948 <memset+0x84>
    48d0:	b2ce      	uxtb	r6, r1
    48d2:	0003      	movs	r3, r0
    48d4:	2503      	movs	r5, #3
    48d6:	e003      	b.n	48e0 <memset+0x1c>
    48d8:	1e62      	subs	r2, r4, #1
    48da:	2c00      	cmp	r4, #0
    48dc:	d034      	beq.n	4948 <memset+0x84>
    48de:	0014      	movs	r4, r2
    48e0:	3301      	adds	r3, #1
    48e2:	1e5a      	subs	r2, r3, #1
    48e4:	7016      	strb	r6, [r2, #0]
    48e6:	422b      	tst	r3, r5
    48e8:	d1f6      	bne.n	48d8 <memset+0x14>
    48ea:	2c03      	cmp	r4, #3
    48ec:	d924      	bls.n	4938 <memset+0x74>
    48ee:	25ff      	movs	r5, #255	; 0xff
    48f0:	400d      	ands	r5, r1
    48f2:	022a      	lsls	r2, r5, #8
    48f4:	4315      	orrs	r5, r2
    48f6:	042a      	lsls	r2, r5, #16
    48f8:	4315      	orrs	r5, r2
    48fa:	2c0f      	cmp	r4, #15
    48fc:	d911      	bls.n	4922 <memset+0x5e>
    48fe:	0026      	movs	r6, r4
    4900:	3e10      	subs	r6, #16
    4902:	0936      	lsrs	r6, r6, #4
    4904:	3601      	adds	r6, #1
    4906:	0136      	lsls	r6, r6, #4
    4908:	001a      	movs	r2, r3
    490a:	199b      	adds	r3, r3, r6
    490c:	6015      	str	r5, [r2, #0]
    490e:	6055      	str	r5, [r2, #4]
    4910:	6095      	str	r5, [r2, #8]
    4912:	60d5      	str	r5, [r2, #12]
    4914:	3210      	adds	r2, #16
    4916:	4293      	cmp	r3, r2
    4918:	d1f8      	bne.n	490c <memset+0x48>
    491a:	220f      	movs	r2, #15
    491c:	4014      	ands	r4, r2
    491e:	2c03      	cmp	r4, #3
    4920:	d90a      	bls.n	4938 <memset+0x74>
    4922:	1f26      	subs	r6, r4, #4
    4924:	08b6      	lsrs	r6, r6, #2
    4926:	3601      	adds	r6, #1
    4928:	00b6      	lsls	r6, r6, #2
    492a:	001a      	movs	r2, r3
    492c:	199b      	adds	r3, r3, r6
    492e:	c220      	stmia	r2!, {r5}
    4930:	4293      	cmp	r3, r2
    4932:	d1fc      	bne.n	492e <memset+0x6a>
    4934:	2203      	movs	r2, #3
    4936:	4014      	ands	r4, r2
    4938:	2c00      	cmp	r4, #0
    493a:	d005      	beq.n	4948 <memset+0x84>
    493c:	b2c9      	uxtb	r1, r1
    493e:	191c      	adds	r4, r3, r4
    4940:	7019      	strb	r1, [r3, #0]
    4942:	3301      	adds	r3, #1
    4944:	429c      	cmp	r4, r3
    4946:	d1fb      	bne.n	4940 <memset+0x7c>
    4948:	bd70      	pop	{r4, r5, r6, pc}
    494a:	0014      	movs	r4, r2
    494c:	0003      	movs	r3, r0
    494e:	e7cc      	b.n	48ea <memset+0x26>

00004950 <cleanup_glue>:
    4950:	b570      	push	{r4, r5, r6, lr}
    4952:	000c      	movs	r4, r1
    4954:	6809      	ldr	r1, [r1, #0]
    4956:	0005      	movs	r5, r0
    4958:	2900      	cmp	r1, #0
    495a:	d001      	beq.n	4960 <cleanup_glue+0x10>
    495c:	f7ff fff8 	bl	4950 <cleanup_glue>
    4960:	0028      	movs	r0, r5
    4962:	0021      	movs	r1, r4
    4964:	f000 f990 	bl	4c88 <_free_r>
    4968:	bd70      	pop	{r4, r5, r6, pc}
    496a:	46c0      	nop			; (mov r8, r8)

0000496c <_reclaim_reent>:
    496c:	4b23      	ldr	r3, [pc, #140]	; (49fc <_reclaim_reent+0x90>)
    496e:	b570      	push	{r4, r5, r6, lr}
    4970:	681b      	ldr	r3, [r3, #0]
    4972:	0005      	movs	r5, r0
    4974:	4283      	cmp	r3, r0
    4976:	d034      	beq.n	49e2 <_reclaim_reent+0x76>
    4978:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    497a:	2b00      	cmp	r3, #0
    497c:	d011      	beq.n	49a2 <_reclaim_reent+0x36>
    497e:	2600      	movs	r6, #0
    4980:	5999      	ldr	r1, [r3, r6]
    4982:	2900      	cmp	r1, #0
    4984:	d006      	beq.n	4994 <_reclaim_reent+0x28>
    4986:	680c      	ldr	r4, [r1, #0]
    4988:	0028      	movs	r0, r5
    498a:	f000 f97d 	bl	4c88 <_free_r>
    498e:	1e21      	subs	r1, r4, #0
    4990:	d1f9      	bne.n	4986 <_reclaim_reent+0x1a>
    4992:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    4994:	3604      	adds	r6, #4
    4996:	2e80      	cmp	r6, #128	; 0x80
    4998:	d1f2      	bne.n	4980 <_reclaim_reent+0x14>
    499a:	0019      	movs	r1, r3
    499c:	0028      	movs	r0, r5
    499e:	f000 f973 	bl	4c88 <_free_r>
    49a2:	6c29      	ldr	r1, [r5, #64]	; 0x40
    49a4:	2900      	cmp	r1, #0
    49a6:	d002      	beq.n	49ae <_reclaim_reent+0x42>
    49a8:	0028      	movs	r0, r5
    49aa:	f000 f96d 	bl	4c88 <_free_r>
    49ae:	23a4      	movs	r3, #164	; 0xa4
    49b0:	005b      	lsls	r3, r3, #1
    49b2:	58e9      	ldr	r1, [r5, r3]
    49b4:	2900      	cmp	r1, #0
    49b6:	d00b      	beq.n	49d0 <_reclaim_reent+0x64>
    49b8:	002e      	movs	r6, r5
    49ba:	364d      	adds	r6, #77	; 0x4d
    49bc:	36ff      	adds	r6, #255	; 0xff
    49be:	42b1      	cmp	r1, r6
    49c0:	d006      	beq.n	49d0 <_reclaim_reent+0x64>
    49c2:	680c      	ldr	r4, [r1, #0]
    49c4:	0028      	movs	r0, r5
    49c6:	f000 f95f 	bl	4c88 <_free_r>
    49ca:	0021      	movs	r1, r4
    49cc:	42a6      	cmp	r6, r4
    49ce:	d1f8      	bne.n	49c2 <_reclaim_reent+0x56>
    49d0:	6d69      	ldr	r1, [r5, #84]	; 0x54
    49d2:	2900      	cmp	r1, #0
    49d4:	d002      	beq.n	49dc <_reclaim_reent+0x70>
    49d6:	0028      	movs	r0, r5
    49d8:	f000 f956 	bl	4c88 <_free_r>
    49dc:	6bab      	ldr	r3, [r5, #56]	; 0x38
    49de:	2b00      	cmp	r3, #0
    49e0:	d100      	bne.n	49e4 <_reclaim_reent+0x78>
    49e2:	bd70      	pop	{r4, r5, r6, pc}
    49e4:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    49e6:	0028      	movs	r0, r5
    49e8:	4798      	blx	r3
    49ea:	23b8      	movs	r3, #184	; 0xb8
    49ec:	009b      	lsls	r3, r3, #2
    49ee:	58e9      	ldr	r1, [r5, r3]
    49f0:	2900      	cmp	r1, #0
    49f2:	d0f6      	beq.n	49e2 <_reclaim_reent+0x76>
    49f4:	0028      	movs	r0, r5
    49f6:	f7ff ffab 	bl	4950 <cleanup_glue>
    49fa:	e7f2      	b.n	49e2 <_reclaim_reent+0x76>
    49fc:	20000440 	.word	0x20000440

00004a00 <__register_exitproc>:
    4a00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    4a02:	4644      	mov	r4, r8
    4a04:	465f      	mov	r7, fp
    4a06:	4656      	mov	r6, sl
    4a08:	464d      	mov	r5, r9
    4a0a:	469b      	mov	fp, r3
    4a0c:	4b2f      	ldr	r3, [pc, #188]	; (4acc <__register_exitproc+0xcc>)
    4a0e:	b4f0      	push	{r4, r5, r6, r7}
    4a10:	681c      	ldr	r4, [r3, #0]
    4a12:	23a4      	movs	r3, #164	; 0xa4
    4a14:	005b      	lsls	r3, r3, #1
    4a16:	0005      	movs	r5, r0
    4a18:	58e0      	ldr	r0, [r4, r3]
    4a1a:	000e      	movs	r6, r1
    4a1c:	4690      	mov	r8, r2
    4a1e:	2800      	cmp	r0, #0
    4a20:	d04b      	beq.n	4aba <__register_exitproc+0xba>
    4a22:	6843      	ldr	r3, [r0, #4]
    4a24:	2b1f      	cmp	r3, #31
    4a26:	dc0d      	bgt.n	4a44 <__register_exitproc+0x44>
    4a28:	1c5c      	adds	r4, r3, #1
    4a2a:	2d00      	cmp	r5, #0
    4a2c:	d121      	bne.n	4a72 <__register_exitproc+0x72>
    4a2e:	3302      	adds	r3, #2
    4a30:	009b      	lsls	r3, r3, #2
    4a32:	6044      	str	r4, [r0, #4]
    4a34:	501e      	str	r6, [r3, r0]
    4a36:	2000      	movs	r0, #0
    4a38:	bc3c      	pop	{r2, r3, r4, r5}
    4a3a:	4690      	mov	r8, r2
    4a3c:	4699      	mov	r9, r3
    4a3e:	46a2      	mov	sl, r4
    4a40:	46ab      	mov	fp, r5
    4a42:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    4a44:	4b22      	ldr	r3, [pc, #136]	; (4ad0 <__register_exitproc+0xd0>)
    4a46:	2b00      	cmp	r3, #0
    4a48:	d03c      	beq.n	4ac4 <__register_exitproc+0xc4>
    4a4a:	20c8      	movs	r0, #200	; 0xc8
    4a4c:	0040      	lsls	r0, r0, #1
    4a4e:	e000      	b.n	4a52 <__register_exitproc+0x52>
    4a50:	bf00      	nop
    4a52:	2800      	cmp	r0, #0
    4a54:	d036      	beq.n	4ac4 <__register_exitproc+0xc4>
    4a56:	22a4      	movs	r2, #164	; 0xa4
    4a58:	2300      	movs	r3, #0
    4a5a:	0052      	lsls	r2, r2, #1
    4a5c:	58a1      	ldr	r1, [r4, r2]
    4a5e:	6043      	str	r3, [r0, #4]
    4a60:	6001      	str	r1, [r0, #0]
    4a62:	50a0      	str	r0, [r4, r2]
    4a64:	3240      	adds	r2, #64	; 0x40
    4a66:	5083      	str	r3, [r0, r2]
    4a68:	3204      	adds	r2, #4
    4a6a:	5083      	str	r3, [r0, r2]
    4a6c:	2401      	movs	r4, #1
    4a6e:	2d00      	cmp	r5, #0
    4a70:	d0dd      	beq.n	4a2e <__register_exitproc+0x2e>
    4a72:	009a      	lsls	r2, r3, #2
    4a74:	4691      	mov	r9, r2
    4a76:	4481      	add	r9, r0
    4a78:	4642      	mov	r2, r8
    4a7a:	2188      	movs	r1, #136	; 0x88
    4a7c:	464f      	mov	r7, r9
    4a7e:	507a      	str	r2, [r7, r1]
    4a80:	22c4      	movs	r2, #196	; 0xc4
    4a82:	0052      	lsls	r2, r2, #1
    4a84:	4690      	mov	r8, r2
    4a86:	4480      	add	r8, r0
    4a88:	4642      	mov	r2, r8
    4a8a:	3987      	subs	r1, #135	; 0x87
    4a8c:	4099      	lsls	r1, r3
    4a8e:	6812      	ldr	r2, [r2, #0]
    4a90:	468a      	mov	sl, r1
    4a92:	430a      	orrs	r2, r1
    4a94:	4694      	mov	ip, r2
    4a96:	4642      	mov	r2, r8
    4a98:	4661      	mov	r1, ip
    4a9a:	6011      	str	r1, [r2, #0]
    4a9c:	2284      	movs	r2, #132	; 0x84
    4a9e:	4649      	mov	r1, r9
    4aa0:	465f      	mov	r7, fp
    4aa2:	0052      	lsls	r2, r2, #1
    4aa4:	508f      	str	r7, [r1, r2]
    4aa6:	2d02      	cmp	r5, #2
    4aa8:	d1c1      	bne.n	4a2e <__register_exitproc+0x2e>
    4aaa:	0002      	movs	r2, r0
    4aac:	4655      	mov	r5, sl
    4aae:	328d      	adds	r2, #141	; 0x8d
    4ab0:	32ff      	adds	r2, #255	; 0xff
    4ab2:	6811      	ldr	r1, [r2, #0]
    4ab4:	430d      	orrs	r5, r1
    4ab6:	6015      	str	r5, [r2, #0]
    4ab8:	e7b9      	b.n	4a2e <__register_exitproc+0x2e>
    4aba:	0020      	movs	r0, r4
    4abc:	304d      	adds	r0, #77	; 0x4d
    4abe:	30ff      	adds	r0, #255	; 0xff
    4ac0:	50e0      	str	r0, [r4, r3]
    4ac2:	e7ae      	b.n	4a22 <__register_exitproc+0x22>
    4ac4:	2001      	movs	r0, #1
    4ac6:	4240      	negs	r0, r0
    4ac8:	e7b6      	b.n	4a38 <__register_exitproc+0x38>
    4aca:	46c0      	nop			; (mov r8, r8)
    4acc:	00008e6c 	.word	0x00008e6c
    4ad0:	00000000 	.word	0x00000000

00004ad4 <register_fini>:
    4ad4:	4b03      	ldr	r3, [pc, #12]	; (4ae4 <register_fini+0x10>)
    4ad6:	b510      	push	{r4, lr}
    4ad8:	2b00      	cmp	r3, #0
    4ada:	d002      	beq.n	4ae2 <register_fini+0xe>
    4adc:	4802      	ldr	r0, [pc, #8]	; (4ae8 <register_fini+0x14>)
    4ade:	f7ff fe9b 	bl	4818 <atexit>
    4ae2:	bd10      	pop	{r4, pc}
    4ae4:	00000000 	.word	0x00000000
    4ae8:	00004849 	.word	0x00004849

00004aec <__call_exitprocs>:
    4aec:	b5f0      	push	{r4, r5, r6, r7, lr}
    4aee:	465f      	mov	r7, fp
    4af0:	4656      	mov	r6, sl
    4af2:	464d      	mov	r5, r9
    4af4:	4644      	mov	r4, r8
    4af6:	b4f0      	push	{r4, r5, r6, r7}
    4af8:	000f      	movs	r7, r1
    4afa:	4b39      	ldr	r3, [pc, #228]	; (4be0 <__call_exitprocs+0xf4>)
    4afc:	b085      	sub	sp, #20
    4afe:	681b      	ldr	r3, [r3, #0]
    4b00:	9001      	str	r0, [sp, #4]
    4b02:	9302      	str	r3, [sp, #8]
    4b04:	3349      	adds	r3, #73	; 0x49
    4b06:	33ff      	adds	r3, #255	; 0xff
    4b08:	9303      	str	r3, [sp, #12]
    4b0a:	22a4      	movs	r2, #164	; 0xa4
    4b0c:	9b02      	ldr	r3, [sp, #8]
    4b0e:	0052      	lsls	r2, r2, #1
    4b10:	589e      	ldr	r6, [r3, r2]
    4b12:	2e00      	cmp	r6, #0
    4b14:	d04e      	beq.n	4bb4 <__call_exitprocs+0xc8>
    4b16:	9b03      	ldr	r3, [sp, #12]
    4b18:	4699      	mov	r9, r3
    4b1a:	23c4      	movs	r3, #196	; 0xc4
    4b1c:	005b      	lsls	r3, r3, #1
    4b1e:	4698      	mov	r8, r3
    4b20:	3304      	adds	r3, #4
    4b22:	469a      	mov	sl, r3
    4b24:	6874      	ldr	r4, [r6, #4]
    4b26:	44b0      	add	r8, r6
    4b28:	00a5      	lsls	r5, r4, #2
    4b2a:	1975      	adds	r5, r6, r5
    4b2c:	44b2      	add	sl, r6
    4b2e:	3c01      	subs	r4, #1
    4b30:	d508      	bpl.n	4b44 <__call_exitprocs+0x58>
    4b32:	e02d      	b.n	4b90 <__call_exitprocs+0xa4>
    4b34:	1d6b      	adds	r3, r5, #5
    4b36:	33ff      	adds	r3, #255	; 0xff
    4b38:	681b      	ldr	r3, [r3, #0]
    4b3a:	429f      	cmp	r7, r3
    4b3c:	d004      	beq.n	4b48 <__call_exitprocs+0x5c>
    4b3e:	3d04      	subs	r5, #4
    4b40:	3c01      	subs	r4, #1
    4b42:	d325      	bcc.n	4b90 <__call_exitprocs+0xa4>
    4b44:	2f00      	cmp	r7, #0
    4b46:	d1f5      	bne.n	4b34 <__call_exitprocs+0x48>
    4b48:	6873      	ldr	r3, [r6, #4]
    4b4a:	686a      	ldr	r2, [r5, #4]
    4b4c:	3b01      	subs	r3, #1
    4b4e:	42a3      	cmp	r3, r4
    4b50:	d039      	beq.n	4bc6 <__call_exitprocs+0xda>
    4b52:	2300      	movs	r3, #0
    4b54:	606b      	str	r3, [r5, #4]
    4b56:	2a00      	cmp	r2, #0
    4b58:	d0f1      	beq.n	4b3e <__call_exitprocs+0x52>
    4b5a:	6873      	ldr	r3, [r6, #4]
    4b5c:	4641      	mov	r1, r8
    4b5e:	469b      	mov	fp, r3
    4b60:	2301      	movs	r3, #1
    4b62:	40a3      	lsls	r3, r4
    4b64:	6809      	ldr	r1, [r1, #0]
    4b66:	4219      	tst	r1, r3
    4b68:	d02b      	beq.n	4bc2 <__call_exitprocs+0xd6>
    4b6a:	4651      	mov	r1, sl
    4b6c:	6809      	ldr	r1, [r1, #0]
    4b6e:	4219      	tst	r1, r3
    4b70:	d12b      	bne.n	4bca <__call_exitprocs+0xde>
    4b72:	002b      	movs	r3, r5
    4b74:	3384      	adds	r3, #132	; 0x84
    4b76:	6819      	ldr	r1, [r3, #0]
    4b78:	9801      	ldr	r0, [sp, #4]
    4b7a:	4790      	blx	r2
    4b7c:	6873      	ldr	r3, [r6, #4]
    4b7e:	455b      	cmp	r3, fp
    4b80:	d1c3      	bne.n	4b0a <__call_exitprocs+0x1e>
    4b82:	464b      	mov	r3, r9
    4b84:	681b      	ldr	r3, [r3, #0]
    4b86:	42b3      	cmp	r3, r6
    4b88:	d1bf      	bne.n	4b0a <__call_exitprocs+0x1e>
    4b8a:	3d04      	subs	r5, #4
    4b8c:	3c01      	subs	r4, #1
    4b8e:	d2d9      	bcs.n	4b44 <__call_exitprocs+0x58>
    4b90:	4b14      	ldr	r3, [pc, #80]	; (4be4 <__call_exitprocs+0xf8>)
    4b92:	2b00      	cmp	r3, #0
    4b94:	d00e      	beq.n	4bb4 <__call_exitprocs+0xc8>
    4b96:	6873      	ldr	r3, [r6, #4]
    4b98:	2b00      	cmp	r3, #0
    4b9a:	d11b      	bne.n	4bd4 <__call_exitprocs+0xe8>
    4b9c:	6833      	ldr	r3, [r6, #0]
    4b9e:	2b00      	cmp	r3, #0
    4ba0:	d01c      	beq.n	4bdc <__call_exitprocs+0xf0>
    4ba2:	464a      	mov	r2, r9
    4ba4:	0030      	movs	r0, r6
    4ba6:	6013      	str	r3, [r2, #0]
    4ba8:	e000      	b.n	4bac <__call_exitprocs+0xc0>
    4baa:	bf00      	nop
    4bac:	464b      	mov	r3, r9
    4bae:	681e      	ldr	r6, [r3, #0]
    4bb0:	2e00      	cmp	r6, #0
    4bb2:	d1b2      	bne.n	4b1a <__call_exitprocs+0x2e>
    4bb4:	b005      	add	sp, #20
    4bb6:	bc3c      	pop	{r2, r3, r4, r5}
    4bb8:	4690      	mov	r8, r2
    4bba:	4699      	mov	r9, r3
    4bbc:	46a2      	mov	sl, r4
    4bbe:	46ab      	mov	fp, r5
    4bc0:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4bc2:	4790      	blx	r2
    4bc4:	e7da      	b.n	4b7c <__call_exitprocs+0x90>
    4bc6:	6074      	str	r4, [r6, #4]
    4bc8:	e7c5      	b.n	4b56 <__call_exitprocs+0x6a>
    4bca:	002b      	movs	r3, r5
    4bcc:	3384      	adds	r3, #132	; 0x84
    4bce:	6818      	ldr	r0, [r3, #0]
    4bd0:	4790      	blx	r2
    4bd2:	e7d3      	b.n	4b7c <__call_exitprocs+0x90>
    4bd4:	6833      	ldr	r3, [r6, #0]
    4bd6:	46b1      	mov	r9, r6
    4bd8:	001e      	movs	r6, r3
    4bda:	e7e9      	b.n	4bb0 <__call_exitprocs+0xc4>
    4bdc:	2300      	movs	r3, #0
    4bde:	e7fa      	b.n	4bd6 <__call_exitprocs+0xea>
    4be0:	00008e6c 	.word	0x00008e6c
    4be4:	00000000 	.word	0x00000000

00004be8 <_malloc_trim_r>:
    4be8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    4bea:	000c      	movs	r4, r1
    4bec:	0006      	movs	r6, r0
    4bee:	f000 fbd7 	bl	53a0 <__malloc_lock>
    4bf2:	4f20      	ldr	r7, [pc, #128]	; (4c74 <_malloc_trim_r+0x8c>)
    4bf4:	68bb      	ldr	r3, [r7, #8]
    4bf6:	685d      	ldr	r5, [r3, #4]
    4bf8:	2303      	movs	r3, #3
    4bfa:	439d      	bics	r5, r3
    4bfc:	4b1e      	ldr	r3, [pc, #120]	; (4c78 <_malloc_trim_r+0x90>)
    4bfe:	1b2c      	subs	r4, r5, r4
    4c00:	469c      	mov	ip, r3
    4c02:	4464      	add	r4, ip
    4c04:	0b24      	lsrs	r4, r4, #12
    4c06:	4b1d      	ldr	r3, [pc, #116]	; (4c7c <_malloc_trim_r+0x94>)
    4c08:	3c01      	subs	r4, #1
    4c0a:	0324      	lsls	r4, r4, #12
    4c0c:	429c      	cmp	r4, r3
    4c0e:	dd07      	ble.n	4c20 <_malloc_trim_r+0x38>
    4c10:	2100      	movs	r1, #0
    4c12:	0030      	movs	r0, r6
    4c14:	f000 fbc8 	bl	53a8 <_sbrk_r>
    4c18:	68bb      	ldr	r3, [r7, #8]
    4c1a:	195b      	adds	r3, r3, r5
    4c1c:	4298      	cmp	r0, r3
    4c1e:	d004      	beq.n	4c2a <_malloc_trim_r+0x42>
    4c20:	0030      	movs	r0, r6
    4c22:	f000 fbbf 	bl	53a4 <__malloc_unlock>
    4c26:	2000      	movs	r0, #0
    4c28:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    4c2a:	4261      	negs	r1, r4
    4c2c:	0030      	movs	r0, r6
    4c2e:	f000 fbbb 	bl	53a8 <_sbrk_r>
    4c32:	1c43      	adds	r3, r0, #1
    4c34:	d00d      	beq.n	4c52 <_malloc_trim_r+0x6a>
    4c36:	2301      	movs	r3, #1
    4c38:	1b2d      	subs	r5, r5, r4
    4c3a:	68ba      	ldr	r2, [r7, #8]
    4c3c:	431d      	orrs	r5, r3
    4c3e:	4b10      	ldr	r3, [pc, #64]	; (4c80 <_malloc_trim_r+0x98>)
    4c40:	6055      	str	r5, [r2, #4]
    4c42:	681a      	ldr	r2, [r3, #0]
    4c44:	0030      	movs	r0, r6
    4c46:	1b14      	subs	r4, r2, r4
    4c48:	601c      	str	r4, [r3, #0]
    4c4a:	f000 fbab 	bl	53a4 <__malloc_unlock>
    4c4e:	2001      	movs	r0, #1
    4c50:	e7ea      	b.n	4c28 <_malloc_trim_r+0x40>
    4c52:	2100      	movs	r1, #0
    4c54:	0030      	movs	r0, r6
    4c56:	f000 fba7 	bl	53a8 <_sbrk_r>
    4c5a:	68bb      	ldr	r3, [r7, #8]
    4c5c:	1ac2      	subs	r2, r0, r3
    4c5e:	2a0f      	cmp	r2, #15
    4c60:	ddde      	ble.n	4c20 <_malloc_trim_r+0x38>
    4c62:	4908      	ldr	r1, [pc, #32]	; (4c84 <_malloc_trim_r+0x9c>)
    4c64:	6809      	ldr	r1, [r1, #0]
    4c66:	1a40      	subs	r0, r0, r1
    4c68:	4905      	ldr	r1, [pc, #20]	; (4c80 <_malloc_trim_r+0x98>)
    4c6a:	6008      	str	r0, [r1, #0]
    4c6c:	2101      	movs	r1, #1
    4c6e:	430a      	orrs	r2, r1
    4c70:	605a      	str	r2, [r3, #4]
    4c72:	e7d5      	b.n	4c20 <_malloc_trim_r+0x38>
    4c74:	20000444 	.word	0x20000444
    4c78:	00000fef 	.word	0x00000fef
    4c7c:	00000fff 	.word	0x00000fff
    4c80:	20005ff8 	.word	0x20005ff8
    4c84:	20000850 	.word	0x20000850

00004c88 <_free_r>:
    4c88:	b5f0      	push	{r4, r5, r6, r7, lr}
    4c8a:	4647      	mov	r7, r8
    4c8c:	0005      	movs	r5, r0
    4c8e:	b480      	push	{r7}
    4c90:	1e0c      	subs	r4, r1, #0
    4c92:	d03e      	beq.n	4d12 <_free_r+0x8a>
    4c94:	f000 fb84 	bl	53a0 <__malloc_lock>
    4c98:	2301      	movs	r3, #1
    4c9a:	0021      	movs	r1, r4
    4c9c:	4698      	mov	r8, r3
    4c9e:	3908      	subs	r1, #8
    4ca0:	684e      	ldr	r6, [r1, #4]
    4ca2:	4642      	mov	r2, r8
    4ca4:	0033      	movs	r3, r6
    4ca6:	2003      	movs	r0, #3
    4ca8:	4393      	bics	r3, r2
    4caa:	18cc      	adds	r4, r1, r3
    4cac:	6862      	ldr	r2, [r4, #4]
    4cae:	4382      	bics	r2, r0
    4cb0:	4860      	ldr	r0, [pc, #384]	; (4e34 <_free_r+0x1ac>)
    4cb2:	6887      	ldr	r7, [r0, #8]
    4cb4:	42bc      	cmp	r4, r7
    4cb6:	d05a      	beq.n	4d6e <_free_r+0xe6>
    4cb8:	4647      	mov	r7, r8
    4cba:	6062      	str	r2, [r4, #4]
    4cbc:	4237      	tst	r7, r6
    4cbe:	d10b      	bne.n	4cd8 <_free_r+0x50>
    4cc0:	2708      	movs	r7, #8
    4cc2:	46bc      	mov	ip, r7
    4cc4:	680e      	ldr	r6, [r1, #0]
    4cc6:	4484      	add	ip, r0
    4cc8:	1b89      	subs	r1, r1, r6
    4cca:	199b      	adds	r3, r3, r6
    4ccc:	688e      	ldr	r6, [r1, #8]
    4cce:	4566      	cmp	r6, ip
    4cd0:	d066      	beq.n	4da0 <_free_r+0x118>
    4cd2:	68cf      	ldr	r7, [r1, #12]
    4cd4:	60f7      	str	r7, [r6, #12]
    4cd6:	60be      	str	r6, [r7, #8]
    4cd8:	2601      	movs	r6, #1
    4cda:	18a7      	adds	r7, r4, r2
    4cdc:	687f      	ldr	r7, [r7, #4]
    4cde:	4237      	tst	r7, r6
    4ce0:	d036      	beq.n	4d50 <_free_r+0xc8>
    4ce2:	4a55      	ldr	r2, [pc, #340]	; (4e38 <_free_r+0x1b0>)
    4ce4:	431e      	orrs	r6, r3
    4ce6:	604e      	str	r6, [r1, #4]
    4ce8:	50cb      	str	r3, [r1, r3]
    4cea:	4293      	cmp	r3, r2
    4cec:	d814      	bhi.n	4d18 <_free_r+0x90>
    4cee:	08db      	lsrs	r3, r3, #3
    4cf0:	3aff      	subs	r2, #255	; 0xff
    4cf2:	109c      	asrs	r4, r3, #2
    4cf4:	3aff      	subs	r2, #255	; 0xff
    4cf6:	40a2      	lsls	r2, r4
    4cf8:	6844      	ldr	r4, [r0, #4]
    4cfa:	00db      	lsls	r3, r3, #3
    4cfc:	4322      	orrs	r2, r4
    4cfe:	6042      	str	r2, [r0, #4]
    4d00:	1818      	adds	r0, r3, r0
    4d02:	6883      	ldr	r3, [r0, #8]
    4d04:	60c8      	str	r0, [r1, #12]
    4d06:	608b      	str	r3, [r1, #8]
    4d08:	6081      	str	r1, [r0, #8]
    4d0a:	60d9      	str	r1, [r3, #12]
    4d0c:	0028      	movs	r0, r5
    4d0e:	f000 fb49 	bl	53a4 <__malloc_unlock>
    4d12:	bc04      	pop	{r2}
    4d14:	4690      	mov	r8, r2
    4d16:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4d18:	0a5a      	lsrs	r2, r3, #9
    4d1a:	2a04      	cmp	r2, #4
    4d1c:	d84f      	bhi.n	4dbe <_free_r+0x136>
    4d1e:	099c      	lsrs	r4, r3, #6
    4d20:	0026      	movs	r6, r4
    4d22:	3439      	adds	r4, #57	; 0x39
    4d24:	3638      	adds	r6, #56	; 0x38
    4d26:	0064      	lsls	r4, r4, #1
    4d28:	00a4      	lsls	r4, r4, #2
    4d2a:	1904      	adds	r4, r0, r4
    4d2c:	3c08      	subs	r4, #8
    4d2e:	68a2      	ldr	r2, [r4, #8]
    4d30:	2703      	movs	r7, #3
    4d32:	4294      	cmp	r4, r2
    4d34:	d04a      	beq.n	4dcc <_free_r+0x144>
    4d36:	6850      	ldr	r0, [r2, #4]
    4d38:	43b8      	bics	r0, r7
    4d3a:	4283      	cmp	r3, r0
    4d3c:	d202      	bcs.n	4d44 <_free_r+0xbc>
    4d3e:	6892      	ldr	r2, [r2, #8]
    4d40:	4294      	cmp	r4, r2
    4d42:	d1f8      	bne.n	4d36 <_free_r+0xae>
    4d44:	68d4      	ldr	r4, [r2, #12]
    4d46:	60cc      	str	r4, [r1, #12]
    4d48:	608a      	str	r2, [r1, #8]
    4d4a:	60a1      	str	r1, [r4, #8]
    4d4c:	60d1      	str	r1, [r2, #12]
    4d4e:	e7dd      	b.n	4d0c <_free_r+0x84>
    4d50:	189b      	adds	r3, r3, r2
    4d52:	4f3a      	ldr	r7, [pc, #232]	; (4e3c <_free_r+0x1b4>)
    4d54:	68a2      	ldr	r2, [r4, #8]
    4d56:	42ba      	cmp	r2, r7
    4d58:	d040      	beq.n	4ddc <_free_r+0x154>
    4d5a:	68e4      	ldr	r4, [r4, #12]
    4d5c:	431e      	orrs	r6, r3
    4d5e:	60d4      	str	r4, [r2, #12]
    4d60:	60a2      	str	r2, [r4, #8]
    4d62:	4a35      	ldr	r2, [pc, #212]	; (4e38 <_free_r+0x1b0>)
    4d64:	604e      	str	r6, [r1, #4]
    4d66:	50cb      	str	r3, [r1, r3]
    4d68:	4293      	cmp	r3, r2
    4d6a:	d8d5      	bhi.n	4d18 <_free_r+0x90>
    4d6c:	e7bf      	b.n	4cee <_free_r+0x66>
    4d6e:	189b      	adds	r3, r3, r2
    4d70:	4642      	mov	r2, r8
    4d72:	4232      	tst	r2, r6
    4d74:	d106      	bne.n	4d84 <_free_r+0xfc>
    4d76:	680a      	ldr	r2, [r1, #0]
    4d78:	1a89      	subs	r1, r1, r2
    4d7a:	688c      	ldr	r4, [r1, #8]
    4d7c:	189b      	adds	r3, r3, r2
    4d7e:	68ca      	ldr	r2, [r1, #12]
    4d80:	60e2      	str	r2, [r4, #12]
    4d82:	6094      	str	r4, [r2, #8]
    4d84:	2401      	movs	r4, #1
    4d86:	4a2e      	ldr	r2, [pc, #184]	; (4e40 <_free_r+0x1b8>)
    4d88:	431c      	orrs	r4, r3
    4d8a:	6812      	ldr	r2, [r2, #0]
    4d8c:	604c      	str	r4, [r1, #4]
    4d8e:	6081      	str	r1, [r0, #8]
    4d90:	4293      	cmp	r3, r2
    4d92:	d3bb      	bcc.n	4d0c <_free_r+0x84>
    4d94:	4b2b      	ldr	r3, [pc, #172]	; (4e44 <_free_r+0x1bc>)
    4d96:	0028      	movs	r0, r5
    4d98:	6819      	ldr	r1, [r3, #0]
    4d9a:	f7ff ff25 	bl	4be8 <_malloc_trim_r>
    4d9e:	e7b5      	b.n	4d0c <_free_r+0x84>
    4da0:	4646      	mov	r6, r8
    4da2:	18a0      	adds	r0, r4, r2
    4da4:	6840      	ldr	r0, [r0, #4]
    4da6:	4230      	tst	r0, r6
    4da8:	d13e      	bne.n	4e28 <_free_r+0x1a0>
    4daa:	68a0      	ldr	r0, [r4, #8]
    4dac:	18d3      	adds	r3, r2, r3
    4dae:	68e2      	ldr	r2, [r4, #12]
    4db0:	60c2      	str	r2, [r0, #12]
    4db2:	6090      	str	r0, [r2, #8]
    4db4:	4642      	mov	r2, r8
    4db6:	431a      	orrs	r2, r3
    4db8:	604a      	str	r2, [r1, #4]
    4dba:	50cb      	str	r3, [r1, r3]
    4dbc:	e7a6      	b.n	4d0c <_free_r+0x84>
    4dbe:	2a14      	cmp	r2, #20
    4dc0:	d814      	bhi.n	4dec <_free_r+0x164>
    4dc2:	0016      	movs	r6, r2
    4dc4:	325c      	adds	r2, #92	; 0x5c
    4dc6:	365b      	adds	r6, #91	; 0x5b
    4dc8:	0054      	lsls	r4, r2, #1
    4dca:	e7ad      	b.n	4d28 <_free_r+0xa0>
    4dcc:	2301      	movs	r3, #1
    4dce:	10b6      	asrs	r6, r6, #2
    4dd0:	40b3      	lsls	r3, r6
    4dd2:	6842      	ldr	r2, [r0, #4]
    4dd4:	4313      	orrs	r3, r2
    4dd6:	6043      	str	r3, [r0, #4]
    4dd8:	0022      	movs	r2, r4
    4dda:	e7b4      	b.n	4d46 <_free_r+0xbe>
    4ddc:	431e      	orrs	r6, r3
    4dde:	60d1      	str	r1, [r2, #12]
    4de0:	6091      	str	r1, [r2, #8]
    4de2:	60ca      	str	r2, [r1, #12]
    4de4:	608a      	str	r2, [r1, #8]
    4de6:	604e      	str	r6, [r1, #4]
    4de8:	50cb      	str	r3, [r1, r3]
    4dea:	e78f      	b.n	4d0c <_free_r+0x84>
    4dec:	2a54      	cmp	r2, #84	; 0x54
    4dee:	d805      	bhi.n	4dfc <_free_r+0x174>
    4df0:	0b1c      	lsrs	r4, r3, #12
    4df2:	0026      	movs	r6, r4
    4df4:	346f      	adds	r4, #111	; 0x6f
    4df6:	366e      	adds	r6, #110	; 0x6e
    4df8:	0064      	lsls	r4, r4, #1
    4dfa:	e795      	b.n	4d28 <_free_r+0xa0>
    4dfc:	24aa      	movs	r4, #170	; 0xaa
    4dfe:	0064      	lsls	r4, r4, #1
    4e00:	42a2      	cmp	r2, r4
    4e02:	d805      	bhi.n	4e10 <_free_r+0x188>
    4e04:	0bdc      	lsrs	r4, r3, #15
    4e06:	0026      	movs	r6, r4
    4e08:	3478      	adds	r4, #120	; 0x78
    4e0a:	3677      	adds	r6, #119	; 0x77
    4e0c:	0064      	lsls	r4, r4, #1
    4e0e:	e78b      	b.n	4d28 <_free_r+0xa0>
    4e10:	4c0d      	ldr	r4, [pc, #52]	; (4e48 <_free_r+0x1c0>)
    4e12:	42a2      	cmp	r2, r4
    4e14:	d805      	bhi.n	4e22 <_free_r+0x19a>
    4e16:	0c9c      	lsrs	r4, r3, #18
    4e18:	0026      	movs	r6, r4
    4e1a:	347d      	adds	r4, #125	; 0x7d
    4e1c:	367c      	adds	r6, #124	; 0x7c
    4e1e:	0064      	lsls	r4, r4, #1
    4e20:	e782      	b.n	4d28 <_free_r+0xa0>
    4e22:	24fe      	movs	r4, #254	; 0xfe
    4e24:	267e      	movs	r6, #126	; 0x7e
    4e26:	e77f      	b.n	4d28 <_free_r+0xa0>
    4e28:	4642      	mov	r2, r8
    4e2a:	431a      	orrs	r2, r3
    4e2c:	604a      	str	r2, [r1, #4]
    4e2e:	50cb      	str	r3, [r1, r3]
    4e30:	e76c      	b.n	4d0c <_free_r+0x84>
    4e32:	46c0      	nop			; (mov r8, r8)
    4e34:	20000444 	.word	0x20000444
    4e38:	000001ff 	.word	0x000001ff
    4e3c:	2000044c 	.word	0x2000044c
    4e40:	2000084c 	.word	0x2000084c
    4e44:	20005ff4 	.word	0x20005ff4
    4e48:	00000554 	.word	0x00000554

00004e4c <_malloc_r>:
    4e4c:	b5f0      	push	{r4, r5, r6, r7, lr}
    4e4e:	465f      	mov	r7, fp
    4e50:	464d      	mov	r5, r9
    4e52:	4656      	mov	r6, sl
    4e54:	4644      	mov	r4, r8
    4e56:	b4f0      	push	{r4, r5, r6, r7}
    4e58:	000d      	movs	r5, r1
    4e5a:	350b      	adds	r5, #11
    4e5c:	b083      	sub	sp, #12
    4e5e:	0007      	movs	r7, r0
    4e60:	2d16      	cmp	r5, #22
    4e62:	d800      	bhi.n	4e66 <_malloc_r+0x1a>
    4e64:	e0a8      	b.n	4fb8 <_malloc_r+0x16c>
    4e66:	2307      	movs	r3, #7
    4e68:	439d      	bics	r5, r3
    4e6a:	d500      	bpl.n	4e6e <_malloc_r+0x22>
    4e6c:	e0ce      	b.n	500c <_malloc_r+0x1c0>
    4e6e:	42a9      	cmp	r1, r5
    4e70:	d900      	bls.n	4e74 <_malloc_r+0x28>
    4e72:	e0cb      	b.n	500c <_malloc_r+0x1c0>
    4e74:	f000 fa94 	bl	53a0 <__malloc_lock>
    4e78:	23f8      	movs	r3, #248	; 0xf8
    4e7a:	33ff      	adds	r3, #255	; 0xff
    4e7c:	429d      	cmp	r5, r3
    4e7e:	d800      	bhi.n	4e82 <_malloc_r+0x36>
    4e80:	e284      	b.n	538c <_malloc_r+0x540>
    4e82:	0a6b      	lsrs	r3, r5, #9
    4e84:	d100      	bne.n	4e88 <_malloc_r+0x3c>
    4e86:	e0c5      	b.n	5014 <_malloc_r+0x1c8>
    4e88:	2b04      	cmp	r3, #4
    4e8a:	d900      	bls.n	4e8e <_malloc_r+0x42>
    4e8c:	e16c      	b.n	5168 <_malloc_r+0x31c>
    4e8e:	2338      	movs	r3, #56	; 0x38
    4e90:	09a9      	lsrs	r1, r5, #6
    4e92:	469c      	mov	ip, r3
    4e94:	3301      	adds	r3, #1
    4e96:	4698      	mov	r8, r3
    4e98:	4488      	add	r8, r1
    4e9a:	4643      	mov	r3, r8
    4e9c:	448c      	add	ip, r1
    4e9e:	0059      	lsls	r1, r3, #1
    4ea0:	4ec9      	ldr	r6, [pc, #804]	; (51c8 <_malloc_r+0x37c>)
    4ea2:	0089      	lsls	r1, r1, #2
    4ea4:	1871      	adds	r1, r6, r1
    4ea6:	3908      	subs	r1, #8
    4ea8:	68cc      	ldr	r4, [r1, #12]
    4eaa:	42a1      	cmp	r1, r4
    4eac:	d017      	beq.n	4ede <_malloc_r+0x92>
    4eae:	2303      	movs	r3, #3
    4eb0:	6862      	ldr	r2, [r4, #4]
    4eb2:	439a      	bics	r2, r3
    4eb4:	0013      	movs	r3, r2
    4eb6:	1b52      	subs	r2, r2, r5
    4eb8:	2a0f      	cmp	r2, #15
    4eba:	dd00      	ble.n	4ebe <_malloc_r+0x72>
    4ebc:	e0b0      	b.n	5020 <_malloc_r+0x1d4>
    4ebe:	2003      	movs	r0, #3
    4ec0:	2a00      	cmp	r2, #0
    4ec2:	db09      	blt.n	4ed8 <_malloc_r+0x8c>
    4ec4:	e08d      	b.n	4fe2 <_malloc_r+0x196>
    4ec6:	6863      	ldr	r3, [r4, #4]
    4ec8:	4383      	bics	r3, r0
    4eca:	1b5a      	subs	r2, r3, r5
    4ecc:	2a0f      	cmp	r2, #15
    4ece:	dd00      	ble.n	4ed2 <_malloc_r+0x86>
    4ed0:	e0a6      	b.n	5020 <_malloc_r+0x1d4>
    4ed2:	2a00      	cmp	r2, #0
    4ed4:	db00      	blt.n	4ed8 <_malloc_r+0x8c>
    4ed6:	e084      	b.n	4fe2 <_malloc_r+0x196>
    4ed8:	68e4      	ldr	r4, [r4, #12]
    4eda:	42a1      	cmp	r1, r4
    4edc:	d1f3      	bne.n	4ec6 <_malloc_r+0x7a>
    4ede:	4643      	mov	r3, r8
    4ee0:	9300      	str	r3, [sp, #0]
    4ee2:	0032      	movs	r2, r6
    4ee4:	6934      	ldr	r4, [r6, #16]
    4ee6:	3208      	adds	r2, #8
    4ee8:	4294      	cmp	r4, r2
    4eea:	d100      	bne.n	4eee <_malloc_r+0xa2>
    4eec:	e18f      	b.n	520e <_malloc_r+0x3c2>
    4eee:	2303      	movs	r3, #3
    4ef0:	6861      	ldr	r1, [r4, #4]
    4ef2:	4399      	bics	r1, r3
    4ef4:	000b      	movs	r3, r1
    4ef6:	1b48      	subs	r0, r1, r5
    4ef8:	280f      	cmp	r0, #15
    4efa:	dd00      	ble.n	4efe <_malloc_r+0xb2>
    4efc:	e176      	b.n	51ec <_malloc_r+0x3a0>
    4efe:	6172      	str	r2, [r6, #20]
    4f00:	6132      	str	r2, [r6, #16]
    4f02:	2800      	cmp	r0, #0
    4f04:	da71      	bge.n	4fea <_malloc_r+0x19e>
    4f06:	4ab1      	ldr	r2, [pc, #708]	; (51cc <_malloc_r+0x380>)
    4f08:	4291      	cmp	r1, r2
    4f0a:	d900      	bls.n	4f0e <_malloc_r+0xc2>
    4f0c:	e134      	b.n	5178 <_malloc_r+0x32c>
    4f0e:	2301      	movs	r3, #1
    4f10:	08c8      	lsrs	r0, r1, #3
    4f12:	1082      	asrs	r2, r0, #2
    4f14:	4093      	lsls	r3, r2
    4f16:	6872      	ldr	r2, [r6, #4]
    4f18:	431a      	orrs	r2, r3
    4f1a:	00c3      	lsls	r3, r0, #3
    4f1c:	199b      	adds	r3, r3, r6
    4f1e:	6898      	ldr	r0, [r3, #8]
    4f20:	6072      	str	r2, [r6, #4]
    4f22:	60e3      	str	r3, [r4, #12]
    4f24:	60a0      	str	r0, [r4, #8]
    4f26:	609c      	str	r4, [r3, #8]
    4f28:	0013      	movs	r3, r2
    4f2a:	60c4      	str	r4, [r0, #12]
    4f2c:	2001      	movs	r0, #1
    4f2e:	9900      	ldr	r1, [sp, #0]
    4f30:	108a      	asrs	r2, r1, #2
    4f32:	4090      	lsls	r0, r2
    4f34:	4298      	cmp	r0, r3
    4f36:	d900      	bls.n	4f3a <_malloc_r+0xee>
    4f38:	e075      	b.n	5026 <_malloc_r+0x1da>
    4f3a:	4203      	tst	r3, r0
    4f3c:	d10c      	bne.n	4f58 <_malloc_r+0x10c>
    4f3e:	2203      	movs	r2, #3
    4f40:	4391      	bics	r1, r2
    4f42:	1d0a      	adds	r2, r1, #4
    4f44:	0040      	lsls	r0, r0, #1
    4f46:	9200      	str	r2, [sp, #0]
    4f48:	4203      	tst	r3, r0
    4f4a:	d105      	bne.n	4f58 <_malloc_r+0x10c>
    4f4c:	9a00      	ldr	r2, [sp, #0]
    4f4e:	0040      	lsls	r0, r0, #1
    4f50:	3204      	adds	r2, #4
    4f52:	9200      	str	r2, [sp, #0]
    4f54:	4203      	tst	r3, r0
    4f56:	d0f9      	beq.n	4f4c <_malloc_r+0x100>
    4f58:	2303      	movs	r3, #3
    4f5a:	4698      	mov	r8, r3
    4f5c:	9a00      	ldr	r2, [sp, #0]
    4f5e:	00d3      	lsls	r3, r2, #3
    4f60:	4699      	mov	r9, r3
    4f62:	44b1      	add	r9, r6
    4f64:	46cc      	mov	ip, r9
    4f66:	4692      	mov	sl, r2
    4f68:	4663      	mov	r3, ip
    4f6a:	68dc      	ldr	r4, [r3, #12]
    4f6c:	45a4      	cmp	ip, r4
    4f6e:	d107      	bne.n	4f80 <_malloc_r+0x134>
    4f70:	e14f      	b.n	5212 <_malloc_r+0x3c6>
    4f72:	2a00      	cmp	r2, #0
    4f74:	db00      	blt.n	4f78 <_malloc_r+0x12c>
    4f76:	e15f      	b.n	5238 <_malloc_r+0x3ec>
    4f78:	68e4      	ldr	r4, [r4, #12]
    4f7a:	45a4      	cmp	ip, r4
    4f7c:	d100      	bne.n	4f80 <_malloc_r+0x134>
    4f7e:	e148      	b.n	5212 <_malloc_r+0x3c6>
    4f80:	4642      	mov	r2, r8
    4f82:	6863      	ldr	r3, [r4, #4]
    4f84:	4393      	bics	r3, r2
    4f86:	1b5a      	subs	r2, r3, r5
    4f88:	2a0f      	cmp	r2, #15
    4f8a:	ddf2      	ble.n	4f72 <_malloc_r+0x126>
    4f8c:	2101      	movs	r1, #1
    4f8e:	1963      	adds	r3, r4, r5
    4f90:	430d      	orrs	r5, r1
    4f92:	6065      	str	r5, [r4, #4]
    4f94:	68e0      	ldr	r0, [r4, #12]
    4f96:	68a5      	ldr	r5, [r4, #8]
    4f98:	3608      	adds	r6, #8
    4f9a:	60e8      	str	r0, [r5, #12]
    4f9c:	4311      	orrs	r1, r2
    4f9e:	6085      	str	r5, [r0, #8]
    4fa0:	60f3      	str	r3, [r6, #12]
    4fa2:	60b3      	str	r3, [r6, #8]
    4fa4:	0038      	movs	r0, r7
    4fa6:	60de      	str	r6, [r3, #12]
    4fa8:	609e      	str	r6, [r3, #8]
    4faa:	6059      	str	r1, [r3, #4]
    4fac:	509a      	str	r2, [r3, r2]
    4fae:	f000 f9f9 	bl	53a4 <__malloc_unlock>
    4fb2:	0020      	movs	r0, r4
    4fb4:	3008      	adds	r0, #8
    4fb6:	e022      	b.n	4ffe <_malloc_r+0x1b2>
    4fb8:	2910      	cmp	r1, #16
    4fba:	d827      	bhi.n	500c <_malloc_r+0x1c0>
    4fbc:	0038      	movs	r0, r7
    4fbe:	f000 f9ef 	bl	53a0 <__malloc_lock>
    4fc2:	2510      	movs	r5, #16
    4fc4:	2306      	movs	r3, #6
    4fc6:	2102      	movs	r1, #2
    4fc8:	4e7f      	ldr	r6, [pc, #508]	; (51c8 <_malloc_r+0x37c>)
    4fca:	009b      	lsls	r3, r3, #2
    4fcc:	18f3      	adds	r3, r6, r3
    4fce:	001a      	movs	r2, r3
    4fd0:	685c      	ldr	r4, [r3, #4]
    4fd2:	3a08      	subs	r2, #8
    4fd4:	4294      	cmp	r4, r2
    4fd6:	d100      	bne.n	4fda <_malloc_r+0x18e>
    4fd8:	e127      	b.n	522a <_malloc_r+0x3de>
    4fda:	2303      	movs	r3, #3
    4fdc:	6862      	ldr	r2, [r4, #4]
    4fde:	439a      	bics	r2, r3
    4fe0:	0013      	movs	r3, r2
    4fe2:	68e2      	ldr	r2, [r4, #12]
    4fe4:	68a1      	ldr	r1, [r4, #8]
    4fe6:	60ca      	str	r2, [r1, #12]
    4fe8:	6091      	str	r1, [r2, #8]
    4fea:	2201      	movs	r2, #1
    4fec:	18e3      	adds	r3, r4, r3
    4fee:	6859      	ldr	r1, [r3, #4]
    4ff0:	0038      	movs	r0, r7
    4ff2:	430a      	orrs	r2, r1
    4ff4:	605a      	str	r2, [r3, #4]
    4ff6:	f000 f9d5 	bl	53a4 <__malloc_unlock>
    4ffa:	0020      	movs	r0, r4
    4ffc:	3008      	adds	r0, #8
    4ffe:	b003      	add	sp, #12
    5000:	bc3c      	pop	{r2, r3, r4, r5}
    5002:	4690      	mov	r8, r2
    5004:	4699      	mov	r9, r3
    5006:	46a2      	mov	sl, r4
    5008:	46ab      	mov	fp, r5
    500a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    500c:	230c      	movs	r3, #12
    500e:	2000      	movs	r0, #0
    5010:	603b      	str	r3, [r7, #0]
    5012:	e7f4      	b.n	4ffe <_malloc_r+0x1b2>
    5014:	2340      	movs	r3, #64	; 0x40
    5016:	4698      	mov	r8, r3
    5018:	3b01      	subs	r3, #1
    501a:	2180      	movs	r1, #128	; 0x80
    501c:	469c      	mov	ip, r3
    501e:	e73f      	b.n	4ea0 <_malloc_r+0x54>
    5020:	4663      	mov	r3, ip
    5022:	9300      	str	r3, [sp, #0]
    5024:	e75d      	b.n	4ee2 <_malloc_r+0x96>
    5026:	2303      	movs	r3, #3
    5028:	68b4      	ldr	r4, [r6, #8]
    502a:	6862      	ldr	r2, [r4, #4]
    502c:	439a      	bics	r2, r3
    502e:	4690      	mov	r8, r2
    5030:	42aa      	cmp	r2, r5
    5032:	d303      	bcc.n	503c <_malloc_r+0x1f0>
    5034:	1b52      	subs	r2, r2, r5
    5036:	2a0f      	cmp	r2, #15
    5038:	dd00      	ble.n	503c <_malloc_r+0x1f0>
    503a:	e087      	b.n	514c <_malloc_r+0x300>
    503c:	0023      	movs	r3, r4
    503e:	4443      	add	r3, r8
    5040:	4a63      	ldr	r2, [pc, #396]	; (51d0 <_malloc_r+0x384>)
    5042:	9301      	str	r3, [sp, #4]
    5044:	4b63      	ldr	r3, [pc, #396]	; (51d4 <_malloc_r+0x388>)
    5046:	4693      	mov	fp, r2
    5048:	681b      	ldr	r3, [r3, #0]
    504a:	6812      	ldr	r2, [r2, #0]
    504c:	18eb      	adds	r3, r5, r3
    504e:	3201      	adds	r2, #1
    5050:	d100      	bne.n	5054 <_malloc_r+0x208>
    5052:	e157      	b.n	5304 <_malloc_r+0x4b8>
    5054:	4a60      	ldr	r2, [pc, #384]	; (51d8 <_malloc_r+0x38c>)
    5056:	4694      	mov	ip, r2
    5058:	4463      	add	r3, ip
    505a:	0b1b      	lsrs	r3, r3, #12
    505c:	031b      	lsls	r3, r3, #12
    505e:	9300      	str	r3, [sp, #0]
    5060:	9900      	ldr	r1, [sp, #0]
    5062:	0038      	movs	r0, r7
    5064:	f000 f9a0 	bl	53a8 <_sbrk_r>
    5068:	0003      	movs	r3, r0
    506a:	4681      	mov	r9, r0
    506c:	3301      	adds	r3, #1
    506e:	d061      	beq.n	5134 <_malloc_r+0x2e8>
    5070:	9b01      	ldr	r3, [sp, #4]
    5072:	4283      	cmp	r3, r0
    5074:	d900      	bls.n	5078 <_malloc_r+0x22c>
    5076:	e0fd      	b.n	5274 <_malloc_r+0x428>
    5078:	4b58      	ldr	r3, [pc, #352]	; (51dc <_malloc_r+0x390>)
    507a:	9a00      	ldr	r2, [sp, #0]
    507c:	469a      	mov	sl, r3
    507e:	681b      	ldr	r3, [r3, #0]
    5080:	469c      	mov	ip, r3
    5082:	4653      	mov	r3, sl
    5084:	4462      	add	r2, ip
    5086:	601a      	str	r2, [r3, #0]
    5088:	9b01      	ldr	r3, [sp, #4]
    508a:	0011      	movs	r1, r2
    508c:	454b      	cmp	r3, r9
    508e:	d100      	bne.n	5092 <_malloc_r+0x246>
    5090:	e143      	b.n	531a <_malloc_r+0x4ce>
    5092:	465b      	mov	r3, fp
    5094:	681b      	ldr	r3, [r3, #0]
    5096:	3301      	adds	r3, #1
    5098:	d100      	bne.n	509c <_malloc_r+0x250>
    509a:	e14f      	b.n	533c <_malloc_r+0x4f0>
    509c:	464b      	mov	r3, r9
    509e:	9a01      	ldr	r2, [sp, #4]
    50a0:	1a9b      	subs	r3, r3, r2
    50a2:	1859      	adds	r1, r3, r1
    50a4:	4653      	mov	r3, sl
    50a6:	6019      	str	r1, [r3, #0]
    50a8:	2307      	movs	r3, #7
    50aa:	464a      	mov	r2, r9
    50ac:	4013      	ands	r3, r2
    50ae:	d100      	bne.n	50b2 <_malloc_r+0x266>
    50b0:	e117      	b.n	52e2 <_malloc_r+0x496>
    50b2:	2108      	movs	r1, #8
    50b4:	4689      	mov	r9, r1
    50b6:	494a      	ldr	r1, [pc, #296]	; (51e0 <_malloc_r+0x394>)
    50b8:	1ad2      	subs	r2, r2, r3
    50ba:	4491      	add	r9, r2
    50bc:	1ac9      	subs	r1, r1, r3
    50be:	9b00      	ldr	r3, [sp, #0]
    50c0:	0038      	movs	r0, r7
    50c2:	444b      	add	r3, r9
    50c4:	051b      	lsls	r3, r3, #20
    50c6:	0d1b      	lsrs	r3, r3, #20
    50c8:	1acb      	subs	r3, r1, r3
    50ca:	0019      	movs	r1, r3
    50cc:	469b      	mov	fp, r3
    50ce:	f000 f96b 	bl	53a8 <_sbrk_r>
    50d2:	1c43      	adds	r3, r0, #1
    50d4:	d100      	bne.n	50d8 <_malloc_r+0x28c>
    50d6:	e135      	b.n	5344 <_malloc_r+0x4f8>
    50d8:	464b      	mov	r3, r9
    50da:	1ac0      	subs	r0, r0, r3
    50dc:	2301      	movs	r3, #1
    50de:	4458      	add	r0, fp
    50e0:	4318      	orrs	r0, r3
    50e2:	4653      	mov	r3, sl
    50e4:	681b      	ldr	r3, [r3, #0]
    50e6:	445b      	add	r3, fp
    50e8:	0019      	movs	r1, r3
    50ea:	4653      	mov	r3, sl
    50ec:	6019      	str	r1, [r3, #0]
    50ee:	464b      	mov	r3, r9
    50f0:	60b3      	str	r3, [r6, #8]
    50f2:	6058      	str	r0, [r3, #4]
    50f4:	42b4      	cmp	r4, r6
    50f6:	d013      	beq.n	5120 <_malloc_r+0x2d4>
    50f8:	4643      	mov	r3, r8
    50fa:	2b0f      	cmp	r3, #15
    50fc:	d800      	bhi.n	5100 <_malloc_r+0x2b4>
    50fe:	e0e1      	b.n	52c4 <_malloc_r+0x478>
    5100:	4643      	mov	r3, r8
    5102:	2207      	movs	r2, #7
    5104:	6860      	ldr	r0, [r4, #4]
    5106:	3b0c      	subs	r3, #12
    5108:	4393      	bics	r3, r2
    510a:	3a06      	subs	r2, #6
    510c:	4002      	ands	r2, r0
    510e:	2005      	movs	r0, #5
    5110:	431a      	orrs	r2, r3
    5112:	6062      	str	r2, [r4, #4]
    5114:	18e2      	adds	r2, r4, r3
    5116:	6050      	str	r0, [r2, #4]
    5118:	6090      	str	r0, [r2, #8]
    511a:	2b0f      	cmp	r3, #15
    511c:	d900      	bls.n	5120 <_malloc_r+0x2d4>
    511e:	e115      	b.n	534c <_malloc_r+0x500>
    5120:	4b30      	ldr	r3, [pc, #192]	; (51e4 <_malloc_r+0x398>)
    5122:	681a      	ldr	r2, [r3, #0]
    5124:	4291      	cmp	r1, r2
    5126:	d900      	bls.n	512a <_malloc_r+0x2de>
    5128:	6019      	str	r1, [r3, #0]
    512a:	4b2f      	ldr	r3, [pc, #188]	; (51e8 <_malloc_r+0x39c>)
    512c:	681a      	ldr	r2, [r3, #0]
    512e:	4291      	cmp	r1, r2
    5130:	d900      	bls.n	5134 <_malloc_r+0x2e8>
    5132:	6019      	str	r1, [r3, #0]
    5134:	2303      	movs	r3, #3
    5136:	68b4      	ldr	r4, [r6, #8]
    5138:	6862      	ldr	r2, [r4, #4]
    513a:	439a      	bics	r2, r3
    513c:	0013      	movs	r3, r2
    513e:	1b52      	subs	r2, r2, r5
    5140:	429d      	cmp	r5, r3
    5142:	d900      	bls.n	5146 <_malloc_r+0x2fa>
    5144:	e0c1      	b.n	52ca <_malloc_r+0x47e>
    5146:	2a0f      	cmp	r2, #15
    5148:	dc00      	bgt.n	514c <_malloc_r+0x300>
    514a:	e0be      	b.n	52ca <_malloc_r+0x47e>
    514c:	2301      	movs	r3, #1
    514e:	0029      	movs	r1, r5
    5150:	1965      	adds	r5, r4, r5
    5152:	4319      	orrs	r1, r3
    5154:	4313      	orrs	r3, r2
    5156:	6061      	str	r1, [r4, #4]
    5158:	0038      	movs	r0, r7
    515a:	60b5      	str	r5, [r6, #8]
    515c:	606b      	str	r3, [r5, #4]
    515e:	f000 f921 	bl	53a4 <__malloc_unlock>
    5162:	0020      	movs	r0, r4
    5164:	3008      	adds	r0, #8
    5166:	e74a      	b.n	4ffe <_malloc_r+0x1b2>
    5168:	2b14      	cmp	r3, #20
    516a:	d974      	bls.n	5256 <_malloc_r+0x40a>
    516c:	2b54      	cmp	r3, #84	; 0x54
    516e:	d900      	bls.n	5172 <_malloc_r+0x326>
    5170:	e0b0      	b.n	52d4 <_malloc_r+0x488>
    5172:	0b29      	lsrs	r1, r5, #12
    5174:	236e      	movs	r3, #110	; 0x6e
    5176:	e68c      	b.n	4e92 <_malloc_r+0x46>
    5178:	0a4a      	lsrs	r2, r1, #9
    517a:	2a04      	cmp	r2, #4
    517c:	d974      	bls.n	5268 <_malloc_r+0x41c>
    517e:	2a14      	cmp	r2, #20
    5180:	d900      	bls.n	5184 <_malloc_r+0x338>
    5182:	e0c2      	b.n	530a <_malloc_r+0x4be>
    5184:	0010      	movs	r0, r2
    5186:	325c      	adds	r2, #92	; 0x5c
    5188:	305b      	adds	r0, #91	; 0x5b
    518a:	0052      	lsls	r2, r2, #1
    518c:	2108      	movs	r1, #8
    518e:	4249      	negs	r1, r1
    5190:	468c      	mov	ip, r1
    5192:	0092      	lsls	r2, r2, #2
    5194:	18b2      	adds	r2, r6, r2
    5196:	4494      	add	ip, r2
    5198:	4662      	mov	r2, ip
    519a:	6892      	ldr	r2, [r2, #8]
    519c:	310b      	adds	r1, #11
    519e:	4688      	mov	r8, r1
    51a0:	4594      	cmp	ip, r2
    51a2:	d100      	bne.n	51a6 <_malloc_r+0x35a>
    51a4:	e0a0      	b.n	52e8 <_malloc_r+0x49c>
    51a6:	4641      	mov	r1, r8
    51a8:	6850      	ldr	r0, [r2, #4]
    51aa:	4388      	bics	r0, r1
    51ac:	4283      	cmp	r3, r0
    51ae:	d202      	bcs.n	51b6 <_malloc_r+0x36a>
    51b0:	6892      	ldr	r2, [r2, #8]
    51b2:	4594      	cmp	ip, r2
    51b4:	d1f7      	bne.n	51a6 <_malloc_r+0x35a>
    51b6:	68d3      	ldr	r3, [r2, #12]
    51b8:	469c      	mov	ip, r3
    51ba:	6873      	ldr	r3, [r6, #4]
    51bc:	4661      	mov	r1, ip
    51be:	60a2      	str	r2, [r4, #8]
    51c0:	60e1      	str	r1, [r4, #12]
    51c2:	608c      	str	r4, [r1, #8]
    51c4:	60d4      	str	r4, [r2, #12]
    51c6:	e6b1      	b.n	4f2c <_malloc_r+0xe0>
    51c8:	20000444 	.word	0x20000444
    51cc:	000001ff 	.word	0x000001ff
    51d0:	20000850 	.word	0x20000850
    51d4:	20005ff4 	.word	0x20005ff4
    51d8:	0000100f 	.word	0x0000100f
    51dc:	20005ff8 	.word	0x20005ff8
    51e0:	00001008 	.word	0x00001008
    51e4:	20005ff0 	.word	0x20005ff0
    51e8:	20005fec 	.word	0x20005fec
    51ec:	2101      	movs	r1, #1
    51ee:	1963      	adds	r3, r4, r5
    51f0:	430d      	orrs	r5, r1
    51f2:	4301      	orrs	r1, r0
    51f4:	6065      	str	r5, [r4, #4]
    51f6:	6173      	str	r3, [r6, #20]
    51f8:	6133      	str	r3, [r6, #16]
    51fa:	60da      	str	r2, [r3, #12]
    51fc:	609a      	str	r2, [r3, #8]
    51fe:	6059      	str	r1, [r3, #4]
    5200:	5018      	str	r0, [r3, r0]
    5202:	0038      	movs	r0, r7
    5204:	f000 f8ce 	bl	53a4 <__malloc_unlock>
    5208:	0020      	movs	r0, r4
    520a:	3008      	adds	r0, #8
    520c:	e6f7      	b.n	4ffe <_malloc_r+0x1b2>
    520e:	6873      	ldr	r3, [r6, #4]
    5210:	e68c      	b.n	4f2c <_malloc_r+0xe0>
    5212:	2308      	movs	r3, #8
    5214:	469b      	mov	fp, r3
    5216:	3b07      	subs	r3, #7
    5218:	44dc      	add	ip, fp
    521a:	469b      	mov	fp, r3
    521c:	44da      	add	sl, fp
    521e:	4643      	mov	r3, r8
    5220:	4652      	mov	r2, sl
    5222:	4213      	tst	r3, r2
    5224:	d000      	beq.n	5228 <_malloc_r+0x3dc>
    5226:	e69f      	b.n	4f68 <_malloc_r+0x11c>
    5228:	e033      	b.n	5292 <_malloc_r+0x446>
    522a:	68dc      	ldr	r4, [r3, #12]
    522c:	1c8a      	adds	r2, r1, #2
    522e:	9200      	str	r2, [sp, #0]
    5230:	42a3      	cmp	r3, r4
    5232:	d100      	bne.n	5236 <_malloc_r+0x3ea>
    5234:	e655      	b.n	4ee2 <_malloc_r+0x96>
    5236:	e6d0      	b.n	4fda <_malloc_r+0x18e>
    5238:	2201      	movs	r2, #1
    523a:	18e3      	adds	r3, r4, r3
    523c:	6859      	ldr	r1, [r3, #4]
    523e:	0038      	movs	r0, r7
    5240:	430a      	orrs	r2, r1
    5242:	605a      	str	r2, [r3, #4]
    5244:	68e3      	ldr	r3, [r4, #12]
    5246:	68a2      	ldr	r2, [r4, #8]
    5248:	60d3      	str	r3, [r2, #12]
    524a:	609a      	str	r2, [r3, #8]
    524c:	f000 f8aa 	bl	53a4 <__malloc_unlock>
    5250:	0020      	movs	r0, r4
    5252:	3008      	adds	r0, #8
    5254:	e6d3      	b.n	4ffe <_malloc_r+0x1b2>
    5256:	225b      	movs	r2, #91	; 0x5b
    5258:	4694      	mov	ip, r2
    525a:	3201      	adds	r2, #1
    525c:	4690      	mov	r8, r2
    525e:	4498      	add	r8, r3
    5260:	449c      	add	ip, r3
    5262:	4643      	mov	r3, r8
    5264:	0059      	lsls	r1, r3, #1
    5266:	e61b      	b.n	4ea0 <_malloc_r+0x54>
    5268:	098a      	lsrs	r2, r1, #6
    526a:	0010      	movs	r0, r2
    526c:	3239      	adds	r2, #57	; 0x39
    526e:	3038      	adds	r0, #56	; 0x38
    5270:	0052      	lsls	r2, r2, #1
    5272:	e78b      	b.n	518c <_malloc_r+0x340>
    5274:	42b4      	cmp	r4, r6
    5276:	d000      	beq.n	527a <_malloc_r+0x42e>
    5278:	e75c      	b.n	5134 <_malloc_r+0x2e8>
    527a:	e6fd      	b.n	5078 <_malloc_r+0x22c>
    527c:	9b00      	ldr	r3, [sp, #0]
    527e:	3b01      	subs	r3, #1
    5280:	9300      	str	r3, [sp, #0]
    5282:	2308      	movs	r3, #8
    5284:	425b      	negs	r3, r3
    5286:	469c      	mov	ip, r3
    5288:	44e1      	add	r9, ip
    528a:	464b      	mov	r3, r9
    528c:	689b      	ldr	r3, [r3, #8]
    528e:	4599      	cmp	r9, r3
    5290:	d17a      	bne.n	5388 <_malloc_r+0x53c>
    5292:	4643      	mov	r3, r8
    5294:	9a00      	ldr	r2, [sp, #0]
    5296:	4213      	tst	r3, r2
    5298:	d1f0      	bne.n	527c <_malloc_r+0x430>
    529a:	6873      	ldr	r3, [r6, #4]
    529c:	4383      	bics	r3, r0
    529e:	6073      	str	r3, [r6, #4]
    52a0:	0040      	lsls	r0, r0, #1
    52a2:	4298      	cmp	r0, r3
    52a4:	d900      	bls.n	52a8 <_malloc_r+0x45c>
    52a6:	e6be      	b.n	5026 <_malloc_r+0x1da>
    52a8:	2800      	cmp	r0, #0
    52aa:	d100      	bne.n	52ae <_malloc_r+0x462>
    52ac:	e6bb      	b.n	5026 <_malloc_r+0x1da>
    52ae:	4203      	tst	r3, r0
    52b0:	d170      	bne.n	5394 <_malloc_r+0x548>
    52b2:	4652      	mov	r2, sl
    52b4:	9200      	str	r2, [sp, #0]
    52b6:	9a00      	ldr	r2, [sp, #0]
    52b8:	0040      	lsls	r0, r0, #1
    52ba:	3204      	adds	r2, #4
    52bc:	9200      	str	r2, [sp, #0]
    52be:	4203      	tst	r3, r0
    52c0:	d0f9      	beq.n	52b6 <_malloc_r+0x46a>
    52c2:	e64b      	b.n	4f5c <_malloc_r+0x110>
    52c4:	2301      	movs	r3, #1
    52c6:	464a      	mov	r2, r9
    52c8:	6053      	str	r3, [r2, #4]
    52ca:	0038      	movs	r0, r7
    52cc:	f000 f86a 	bl	53a4 <__malloc_unlock>
    52d0:	2000      	movs	r0, #0
    52d2:	e694      	b.n	4ffe <_malloc_r+0x1b2>
    52d4:	22aa      	movs	r2, #170	; 0xaa
    52d6:	0052      	lsls	r2, r2, #1
    52d8:	4293      	cmp	r3, r2
    52da:	d80d      	bhi.n	52f8 <_malloc_r+0x4ac>
    52dc:	0be9      	lsrs	r1, r5, #15
    52de:	2377      	movs	r3, #119	; 0x77
    52e0:	e5d7      	b.n	4e92 <_malloc_r+0x46>
    52e2:	2180      	movs	r1, #128	; 0x80
    52e4:	0149      	lsls	r1, r1, #5
    52e6:	e6ea      	b.n	50be <_malloc_r+0x272>
    52e8:	2301      	movs	r3, #1
    52ea:	1080      	asrs	r0, r0, #2
    52ec:	4083      	lsls	r3, r0
    52ee:	6872      	ldr	r2, [r6, #4]
    52f0:	4313      	orrs	r3, r2
    52f2:	6073      	str	r3, [r6, #4]
    52f4:	4662      	mov	r2, ip
    52f6:	e761      	b.n	51bc <_malloc_r+0x370>
    52f8:	4a28      	ldr	r2, [pc, #160]	; (539c <_malloc_r+0x550>)
    52fa:	4293      	cmp	r3, r2
    52fc:	d818      	bhi.n	5330 <_malloc_r+0x4e4>
    52fe:	0ca9      	lsrs	r1, r5, #18
    5300:	237c      	movs	r3, #124	; 0x7c
    5302:	e5c6      	b.n	4e92 <_malloc_r+0x46>
    5304:	3310      	adds	r3, #16
    5306:	9300      	str	r3, [sp, #0]
    5308:	e6aa      	b.n	5060 <_malloc_r+0x214>
    530a:	2a54      	cmp	r2, #84	; 0x54
    530c:	d826      	bhi.n	535c <_malloc_r+0x510>
    530e:	0b0a      	lsrs	r2, r1, #12
    5310:	0010      	movs	r0, r2
    5312:	326f      	adds	r2, #111	; 0x6f
    5314:	306e      	adds	r0, #110	; 0x6e
    5316:	0052      	lsls	r2, r2, #1
    5318:	e738      	b.n	518c <_malloc_r+0x340>
    531a:	051b      	lsls	r3, r3, #20
    531c:	d000      	beq.n	5320 <_malloc_r+0x4d4>
    531e:	e6b8      	b.n	5092 <_malloc_r+0x246>
    5320:	9b00      	ldr	r3, [sp, #0]
    5322:	68b2      	ldr	r2, [r6, #8]
    5324:	4443      	add	r3, r8
    5326:	0018      	movs	r0, r3
    5328:	2301      	movs	r3, #1
    532a:	4303      	orrs	r3, r0
    532c:	6053      	str	r3, [r2, #4]
    532e:	e6f7      	b.n	5120 <_malloc_r+0x2d4>
    5330:	237f      	movs	r3, #127	; 0x7f
    5332:	4698      	mov	r8, r3
    5334:	3b01      	subs	r3, #1
    5336:	21fe      	movs	r1, #254	; 0xfe
    5338:	469c      	mov	ip, r3
    533a:	e5b1      	b.n	4ea0 <_malloc_r+0x54>
    533c:	465b      	mov	r3, fp
    533e:	464a      	mov	r2, r9
    5340:	601a      	str	r2, [r3, #0]
    5342:	e6b1      	b.n	50a8 <_malloc_r+0x25c>
    5344:	2300      	movs	r3, #0
    5346:	2001      	movs	r0, #1
    5348:	469b      	mov	fp, r3
    534a:	e6ca      	b.n	50e2 <_malloc_r+0x296>
    534c:	0021      	movs	r1, r4
    534e:	0038      	movs	r0, r7
    5350:	3108      	adds	r1, #8
    5352:	f7ff fc99 	bl	4c88 <_free_r>
    5356:	4653      	mov	r3, sl
    5358:	6819      	ldr	r1, [r3, #0]
    535a:	e6e1      	b.n	5120 <_malloc_r+0x2d4>
    535c:	20aa      	movs	r0, #170	; 0xaa
    535e:	0040      	lsls	r0, r0, #1
    5360:	4282      	cmp	r2, r0
    5362:	d805      	bhi.n	5370 <_malloc_r+0x524>
    5364:	0bca      	lsrs	r2, r1, #15
    5366:	0010      	movs	r0, r2
    5368:	3278      	adds	r2, #120	; 0x78
    536a:	3077      	adds	r0, #119	; 0x77
    536c:	0052      	lsls	r2, r2, #1
    536e:	e70d      	b.n	518c <_malloc_r+0x340>
    5370:	480a      	ldr	r0, [pc, #40]	; (539c <_malloc_r+0x550>)
    5372:	4282      	cmp	r2, r0
    5374:	d805      	bhi.n	5382 <_malloc_r+0x536>
    5376:	0c8a      	lsrs	r2, r1, #18
    5378:	0010      	movs	r0, r2
    537a:	327d      	adds	r2, #125	; 0x7d
    537c:	307c      	adds	r0, #124	; 0x7c
    537e:	0052      	lsls	r2, r2, #1
    5380:	e704      	b.n	518c <_malloc_r+0x340>
    5382:	22fe      	movs	r2, #254	; 0xfe
    5384:	207e      	movs	r0, #126	; 0x7e
    5386:	e701      	b.n	518c <_malloc_r+0x340>
    5388:	6873      	ldr	r3, [r6, #4]
    538a:	e789      	b.n	52a0 <_malloc_r+0x454>
    538c:	08e9      	lsrs	r1, r5, #3
    538e:	1c4b      	adds	r3, r1, #1
    5390:	005b      	lsls	r3, r3, #1
    5392:	e619      	b.n	4fc8 <_malloc_r+0x17c>
    5394:	4653      	mov	r3, sl
    5396:	9300      	str	r3, [sp, #0]
    5398:	e5e0      	b.n	4f5c <_malloc_r+0x110>
    539a:	46c0      	nop			; (mov r8, r8)
    539c:	00000554 	.word	0x00000554

000053a0 <__malloc_lock>:
    53a0:	4770      	bx	lr
    53a2:	46c0      	nop			; (mov r8, r8)

000053a4 <__malloc_unlock>:
    53a4:	4770      	bx	lr
    53a6:	46c0      	nop			; (mov r8, r8)

000053a8 <_sbrk_r>:
    53a8:	2300      	movs	r3, #0
    53aa:	b570      	push	{r4, r5, r6, lr}
    53ac:	4c06      	ldr	r4, [pc, #24]	; (53c8 <_sbrk_r+0x20>)
    53ae:	0005      	movs	r5, r0
    53b0:	0008      	movs	r0, r1
    53b2:	6023      	str	r3, [r4, #0]
    53b4:	f7fb fbf4 	bl	ba0 <_sbrk>
    53b8:	1c43      	adds	r3, r0, #1
    53ba:	d000      	beq.n	53be <_sbrk_r+0x16>
    53bc:	bd70      	pop	{r4, r5, r6, pc}
    53be:	6823      	ldr	r3, [r4, #0]
    53c0:	2b00      	cmp	r3, #0
    53c2:	d0fb      	beq.n	53bc <_sbrk_r+0x14>
    53c4:	602b      	str	r3, [r5, #0]
    53c6:	e7f9      	b.n	53bc <_sbrk_r+0x14>
    53c8:	20006020 	.word	0x20006020

000053cc <osThreadExit>:
    53cc:	b580      	push	{r7, lr}
    53ce:	4f03      	ldr	r7, [pc, #12]	; (53dc <osThreadExit+0x10>)
    53d0:	46bc      	mov	ip, r7
    53d2:	df00      	svc	0
    53d4:	4f02      	ldr	r7, [pc, #8]	; (53e0 <osThreadExit+0x14>)
    53d6:	46bc      	mov	ip, r7
    53d8:	df00      	svc	0
    53da:	e7fe      	b.n	53da <osThreadExit+0xe>
    53dc:	0000580d 	.word	0x0000580d
    53e0:	00005829 	.word	0x00005829

000053e4 <svcKernelInitialize>:
    53e4:	b570      	push	{r4, r5, r6, lr}
    53e6:	4c39      	ldr	r4, [pc, #228]	; (54cc <svcKernelInitialize+0xe8>)
    53e8:	b084      	sub	sp, #16
    53ea:	7823      	ldrb	r3, [r4, #0]
    53ec:	2b00      	cmp	r3, #0
    53ee:	d00b      	beq.n	5408 <svcKernelInitialize+0x24>
    53f0:	22ff      	movs	r2, #255	; 0xff
    53f2:	4b37      	ldr	r3, [pc, #220]	; (54d0 <svcKernelInitialize+0xec>)
    53f4:	681b      	ldr	r3, [r3, #0]
    53f6:	709a      	strb	r2, [r3, #2]
    53f8:	2301      	movs	r3, #1
    53fa:	2200      	movs	r2, #0
    53fc:	2000      	movs	r0, #0
    53fe:	7023      	strb	r3, [r4, #0]
    5400:	4b34      	ldr	r3, [pc, #208]	; (54d4 <svcKernelInitialize+0xf0>)
    5402:	701a      	strb	r2, [r3, #0]
    5404:	b004      	add	sp, #16
    5406:	bd70      	pop	{r4, r5, r6, pc}
    5408:	4b33      	ldr	r3, [pc, #204]	; (54d8 <svcKernelInitialize+0xf4>)
    540a:	4e34      	ldr	r6, [pc, #208]	; (54dc <svcKernelInitialize+0xf8>)
    540c:	6819      	ldr	r1, [r3, #0]
    540e:	0030      	movs	r0, r6
    5410:	f001 fc60 	bl	6cd4 <rt_init_mem>
    5414:	0003      	movs	r3, r0
    5416:	2085      	movs	r0, #133	; 0x85
    5418:	2b00      	cmp	r3, #0
    541a:	d1f3      	bne.n	5404 <svcKernelInitialize+0x20>
    541c:	f002 fe70 	bl	8100 <rt_sys_init>
    5420:	21ff      	movs	r1, #255	; 0xff
    5422:	4a2b      	ldr	r2, [pc, #172]	; (54d0 <svcKernelInitialize+0xec>)
    5424:	7823      	ldrb	r3, [r4, #0]
    5426:	6812      	ldr	r2, [r2, #0]
    5428:	7091      	strb	r1, [r2, #2]
    542a:	2b00      	cmp	r3, #0
    542c:	d1e4      	bne.n	53f8 <svcKernelInitialize+0x14>
    542e:	4b2c      	ldr	r3, [pc, #176]	; (54e0 <svcKernelInitialize+0xfc>)
    5430:	681a      	ldr	r2, [r3, #0]
    5432:	9201      	str	r2, [sp, #4]
    5434:	2a00      	cmp	r2, #0
    5436:	d047      	beq.n	54c8 <svcKernelInitialize+0xe4>
    5438:	685d      	ldr	r5, [r3, #4]
    543a:	2d00      	cmp	r5, #0
    543c:	d044      	beq.n	54c8 <svcKernelInitialize+0xe4>
    543e:	782b      	ldrb	r3, [r5, #0]
    5440:	2b00      	cmp	r3, #0
    5442:	d141      	bne.n	54c8 <svcKernelInitialize+0xe4>
    5444:	0011      	movs	r1, r2
    5446:	3104      	adds	r1, #4
    5448:	0089      	lsls	r1, r1, #2
    544a:	b289      	uxth	r1, r1
    544c:	0028      	movs	r0, r5
    544e:	f001 feeb 	bl	7228 <rt_mbx_init>
    5452:	4b24      	ldr	r3, [pc, #144]	; (54e4 <svcKernelInitialize+0x100>)
    5454:	601d      	str	r5, [r3, #0]
    5456:	4b24      	ldr	r3, [pc, #144]	; (54e8 <svcKernelInitialize+0x104>)
    5458:	681a      	ldr	r2, [r3, #0]
    545a:	9201      	str	r2, [sp, #4]
    545c:	2a00      	cmp	r2, #0
    545e:	d01e      	beq.n	549e <svcKernelInitialize+0xba>
    5460:	685a      	ldr	r2, [r3, #4]
    5462:	9202      	str	r2, [sp, #8]
    5464:	3203      	adds	r2, #3
    5466:	2a06      	cmp	r2, #6
    5468:	d819      	bhi.n	549e <svcKernelInitialize+0xba>
    546a:	68db      	ldr	r3, [r3, #12]
    546c:	9303      	str	r3, [sp, #12]
    546e:	2b00      	cmp	r3, #0
    5470:	d019      	beq.n	54a6 <svcKernelInitialize+0xc2>
    5472:	0019      	movs	r1, r3
    5474:	0030      	movs	r0, r6
    5476:	f001 fc3b 	bl	6cf0 <rt_alloc_mem>
    547a:	1e05      	subs	r5, r0, #0
    547c:	d00f      	beq.n	549e <svcKernelInitialize+0xba>
    547e:	9b03      	ldr	r3, [sp, #12]
    5480:	9902      	ldr	r1, [sp, #8]
    5482:	021b      	lsls	r3, r3, #8
    5484:	3104      	adds	r1, #4
    5486:	4319      	orrs	r1, r3
    5488:	0002      	movs	r2, r0
    548a:	2300      	movs	r3, #0
    548c:	9801      	ldr	r0, [sp, #4]
    548e:	f002 fcf7 	bl	7e80 <rt_tsk_create>
    5492:	2800      	cmp	r0, #0
    5494:	d110      	bne.n	54b8 <svcKernelInitialize+0xd4>
    5496:	0029      	movs	r1, r5
    5498:	0030      	movs	r0, r6
    549a:	f001 fc4b 	bl	6d34 <rt_free_mem>
    549e:	2300      	movs	r3, #0
    54a0:	4a12      	ldr	r2, [pc, #72]	; (54ec <svcKernelInitialize+0x108>)
    54a2:	6013      	str	r3, [r2, #0]
    54a4:	e7a8      	b.n	53f8 <svcKernelInitialize+0x14>
    54a6:	9902      	ldr	r1, [sp, #8]
    54a8:	2300      	movs	r3, #0
    54aa:	3104      	adds	r1, #4
    54ac:	2200      	movs	r2, #0
    54ae:	9801      	ldr	r0, [sp, #4]
    54b0:	f002 fce6 	bl	7e80 <rt_tsk_create>
    54b4:	2800      	cmp	r0, #0
    54b6:	d0f2      	beq.n	549e <svcKernelInitialize+0xba>
    54b8:	3801      	subs	r0, #1
    54ba:	4b0d      	ldr	r3, [pc, #52]	; (54f0 <svcKernelInitialize+0x10c>)
    54bc:	0080      	lsls	r0, r0, #2
    54be:	58c3      	ldr	r3, [r0, r3]
    54c0:	490c      	ldr	r1, [pc, #48]	; (54f4 <svcKernelInitialize+0x110>)
    54c2:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    54c4:	6351      	str	r1, [r2, #52]	; 0x34
    54c6:	e7eb      	b.n	54a0 <svcKernelInitialize+0xbc>
    54c8:	2500      	movs	r5, #0
    54ca:	e7c2      	b.n	5452 <svcKernelInitialize+0x6e>
    54cc:	20006024 	.word	0x20006024
    54d0:	20006064 	.word	0x20006064
    54d4:	20006025 	.word	0x20006025
    54d8:	00008408 	.word	0x00008408
    54dc:	200039f8 	.word	0x200039f8
    54e0:	00008420 	.word	0x00008420
    54e4:	20004d10 	.word	0x20004d10
    54e8:	00008410 	.word	0x00008410
    54ec:	20004cec 	.word	0x20004cec
    54f0:	20004cdc 	.word	0x20004cdc
    54f4:	000053cd 	.word	0x000053cd

000054f8 <svcKernelStart>:
    54f8:	b570      	push	{r4, r5, r6, lr}
    54fa:	4c10      	ldr	r4, [pc, #64]	; (553c <svcKernelStart+0x44>)
    54fc:	7823      	ldrb	r3, [r4, #0]
    54fe:	2b00      	cmp	r3, #0
    5500:	d001      	beq.n	5506 <svcKernelStart+0xe>
    5502:	2000      	movs	r0, #0
    5504:	bd70      	pop	{r4, r5, r6, pc}
    5506:	4d0e      	ldr	r5, [pc, #56]	; (5540 <svcKernelStart+0x48>)
    5508:	3324      	adds	r3, #36	; 0x24
    550a:	682a      	ldr	r2, [r5, #0]
    550c:	2000      	movs	r0, #0
    550e:	5cd1      	ldrb	r1, [r2, r3]
    5510:	f002 fc5a 	bl	7dc8 <rt_tsk_prio>
    5514:	682b      	ldr	r3, [r5, #0]
    5516:	78da      	ldrb	r2, [r3, #3]
    5518:	2aff      	cmp	r2, #255	; 0xff
    551a:	d007      	beq.n	552c <svcKernelStart+0x34>
    551c:	686a      	ldr	r2, [r5, #4]
    551e:	2a00      	cmp	r2, #0
    5520:	d009      	beq.n	5536 <svcKernelStart+0x3e>
    5522:	f002 fe65 	bl	81f0 <rt_sys_start>
    5526:	2301      	movs	r3, #1
    5528:	7023      	strb	r3, [r4, #0]
    552a:	e7ea      	b.n	5502 <svcKernelStart+0xa>
    552c:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    552e:	3220      	adds	r2, #32
    5530:	f382 8809 	msr	PSP, r2
    5534:	e7f2      	b.n	551c <svcKernelStart+0x24>
    5536:	c50c      	stmia	r5!, {r2, r3}
    5538:	e7f3      	b.n	5522 <svcKernelStart+0x2a>
    553a:	46c0      	nop			; (mov r8, r8)
    553c:	20006025 	.word	0x20006025
    5540:	20006064 	.word	0x20006064

00005544 <svcKernelRunning>:
    5544:	4b01      	ldr	r3, [pc, #4]	; (554c <svcKernelRunning+0x8>)
    5546:	7818      	ldrb	r0, [r3, #0]
    5548:	4770      	bx	lr
    554a:	46c0      	nop			; (mov r8, r8)
    554c:	20006025 	.word	0x20006025

00005550 <svcKernelSysTick>:
    5550:	b510      	push	{r4, lr}
    5552:	b082      	sub	sp, #8
    5554:	f002 fb88 	bl	7c68 <os_tick_val>
    5558:	0004      	movs	r4, r0
    555a:	f002 fb8f 	bl	7c7c <os_tick_ovf>
    555e:	2800      	cmp	r0, #0
    5560:	d109      	bne.n	5576 <svcKernelSysTick+0x26>
    5562:	4b0d      	ldr	r3, [pc, #52]	; (5598 <svcKernelSysTick+0x48>)
    5564:	681b      	ldr	r3, [r3, #0]
    5566:	1c58      	adds	r0, r3, #1
    5568:	9301      	str	r3, [sp, #4]
    556a:	4b0c      	ldr	r3, [pc, #48]	; (559c <svcKernelSysTick+0x4c>)
    556c:	681b      	ldr	r3, [r3, #0]
    556e:	4358      	muls	r0, r3
    5570:	1900      	adds	r0, r0, r4
    5572:	b002      	add	sp, #8
    5574:	bd10      	pop	{r4, pc}
    5576:	f002 fb77 	bl	7c68 <os_tick_val>
    557a:	4284      	cmp	r4, r0
    557c:	d809      	bhi.n	5592 <svcKernelSysTick+0x42>
    557e:	4b06      	ldr	r3, [pc, #24]	; (5598 <svcKernelSysTick+0x48>)
    5580:	4a06      	ldr	r2, [pc, #24]	; (559c <svcKernelSysTick+0x4c>)
    5582:	681b      	ldr	r3, [r3, #0]
    5584:	6810      	ldr	r0, [r2, #0]
    5586:	9301      	str	r3, [sp, #4]
    5588:	3001      	adds	r0, #1
    558a:	3301      	adds	r3, #1
    558c:	4358      	muls	r0, r3
    558e:	1900      	adds	r0, r0, r4
    5590:	e7ef      	b.n	5572 <svcKernelSysTick+0x22>
    5592:	0004      	movs	r4, r0
    5594:	e7f3      	b.n	557e <svcKernelSysTick+0x2e>
    5596:	46c0      	nop			; (mov r8, r8)
    5598:	000083e8 	.word	0x000083e8
    559c:	2000602c 	.word	0x2000602c

000055a0 <osKernelInitialize>:
    55a0:	b5f0      	push	{r4, r5, r6, r7, lr}
    55a2:	b085      	sub	sp, #20
    55a4:	f3ef 8405 	mrs	r4, IPSR
    55a8:	2582      	movs	r5, #130	; 0x82
    55aa:	2c00      	cmp	r4, #0
    55ac:	d002      	beq.n	55b4 <osKernelInitialize+0x14>
    55ae:	0028      	movs	r0, r5
    55b0:	b005      	add	sp, #20
    55b2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    55b4:	f3ef 8414 	mrs	r4, CONTROL
    55b8:	07e4      	lsls	r4, r4, #31
    55ba:	d504      	bpl.n	55c6 <osKernelInitialize+0x26>
    55bc:	4f45      	ldr	r7, [pc, #276]	; (56d4 <osKernelInitialize+0x134>)
    55be:	46bc      	mov	ip, r7
    55c0:	df00      	svc	0
    55c2:	0005      	movs	r5, r0
    55c4:	e7f3      	b.n	55ae <osKernelInitialize+0xe>
    55c6:	4c38      	ldr	r4, [pc, #224]	; (56a8 <osKernelInitialize+0x108>)
    55c8:	7823      	ldrb	r3, [r4, #0]
    55ca:	2b00      	cmp	r3, #0
    55cc:	d00a      	beq.n	55e4 <osKernelInitialize+0x44>
    55ce:	22ff      	movs	r2, #255	; 0xff
    55d0:	4b36      	ldr	r3, [pc, #216]	; (56ac <osKernelInitialize+0x10c>)
    55d2:	681b      	ldr	r3, [r3, #0]
    55d4:	709a      	strb	r2, [r3, #2]
    55d6:	2301      	movs	r3, #1
    55d8:	2200      	movs	r2, #0
    55da:	7023      	strb	r3, [r4, #0]
    55dc:	4b34      	ldr	r3, [pc, #208]	; (56b0 <osKernelInitialize+0x110>)
    55de:	2500      	movs	r5, #0
    55e0:	701a      	strb	r2, [r3, #0]
    55e2:	e7e4      	b.n	55ae <osKernelInitialize+0xe>
    55e4:	4e33      	ldr	r6, [pc, #204]	; (56b4 <osKernelInitialize+0x114>)
    55e6:	4b34      	ldr	r3, [pc, #208]	; (56b8 <osKernelInitialize+0x118>)
    55e8:	0030      	movs	r0, r6
    55ea:	6819      	ldr	r1, [r3, #0]
    55ec:	f001 fb72 	bl	6cd4 <rt_init_mem>
    55f0:	3503      	adds	r5, #3
    55f2:	2800      	cmp	r0, #0
    55f4:	d1db      	bne.n	55ae <osKernelInitialize+0xe>
    55f6:	f002 fd83 	bl	8100 <rt_sys_init>
    55fa:	21ff      	movs	r1, #255	; 0xff
    55fc:	4a2b      	ldr	r2, [pc, #172]	; (56ac <osKernelInitialize+0x10c>)
    55fe:	7823      	ldrb	r3, [r4, #0]
    5600:	6812      	ldr	r2, [r2, #0]
    5602:	7091      	strb	r1, [r2, #2]
    5604:	2b00      	cmp	r3, #0
    5606:	d1e6      	bne.n	55d6 <osKernelInitialize+0x36>
    5608:	4b2c      	ldr	r3, [pc, #176]	; (56bc <osKernelInitialize+0x11c>)
    560a:	681a      	ldr	r2, [r3, #0]
    560c:	9201      	str	r2, [sp, #4]
    560e:	2a00      	cmp	r2, #0
    5610:	d047      	beq.n	56a2 <osKernelInitialize+0x102>
    5612:	685d      	ldr	r5, [r3, #4]
    5614:	2d00      	cmp	r5, #0
    5616:	d044      	beq.n	56a2 <osKernelInitialize+0x102>
    5618:	782b      	ldrb	r3, [r5, #0]
    561a:	2b00      	cmp	r3, #0
    561c:	d141      	bne.n	56a2 <osKernelInitialize+0x102>
    561e:	0011      	movs	r1, r2
    5620:	3104      	adds	r1, #4
    5622:	0089      	lsls	r1, r1, #2
    5624:	b289      	uxth	r1, r1
    5626:	0028      	movs	r0, r5
    5628:	f001 fdfe 	bl	7228 <rt_mbx_init>
    562c:	4b24      	ldr	r3, [pc, #144]	; (56c0 <osKernelInitialize+0x120>)
    562e:	601d      	str	r5, [r3, #0]
    5630:	4b24      	ldr	r3, [pc, #144]	; (56c4 <osKernelInitialize+0x124>)
    5632:	681a      	ldr	r2, [r3, #0]
    5634:	9201      	str	r2, [sp, #4]
    5636:	2a00      	cmp	r2, #0
    5638:	d01e      	beq.n	5678 <osKernelInitialize+0xd8>
    563a:	685a      	ldr	r2, [r3, #4]
    563c:	9202      	str	r2, [sp, #8]
    563e:	3203      	adds	r2, #3
    5640:	2a06      	cmp	r2, #6
    5642:	d819      	bhi.n	5678 <osKernelInitialize+0xd8>
    5644:	68db      	ldr	r3, [r3, #12]
    5646:	9303      	str	r3, [sp, #12]
    5648:	2b00      	cmp	r3, #0
    564a:	d019      	beq.n	5680 <osKernelInitialize+0xe0>
    564c:	0019      	movs	r1, r3
    564e:	0030      	movs	r0, r6
    5650:	f001 fb4e 	bl	6cf0 <rt_alloc_mem>
    5654:	1e05      	subs	r5, r0, #0
    5656:	d00f      	beq.n	5678 <osKernelInitialize+0xd8>
    5658:	9902      	ldr	r1, [sp, #8]
    565a:	9b03      	ldr	r3, [sp, #12]
    565c:	3104      	adds	r1, #4
    565e:	021b      	lsls	r3, r3, #8
    5660:	4319      	orrs	r1, r3
    5662:	0002      	movs	r2, r0
    5664:	2300      	movs	r3, #0
    5666:	9801      	ldr	r0, [sp, #4]
    5668:	f002 fc0a 	bl	7e80 <rt_tsk_create>
    566c:	2800      	cmp	r0, #0
    566e:	d110      	bne.n	5692 <osKernelInitialize+0xf2>
    5670:	0029      	movs	r1, r5
    5672:	0030      	movs	r0, r6
    5674:	f001 fb5e 	bl	6d34 <rt_free_mem>
    5678:	2300      	movs	r3, #0
    567a:	4a13      	ldr	r2, [pc, #76]	; (56c8 <osKernelInitialize+0x128>)
    567c:	6013      	str	r3, [r2, #0]
    567e:	e7aa      	b.n	55d6 <osKernelInitialize+0x36>
    5680:	9902      	ldr	r1, [sp, #8]
    5682:	2300      	movs	r3, #0
    5684:	3104      	adds	r1, #4
    5686:	2200      	movs	r2, #0
    5688:	9801      	ldr	r0, [sp, #4]
    568a:	f002 fbf9 	bl	7e80 <rt_tsk_create>
    568e:	2800      	cmp	r0, #0
    5690:	d0f2      	beq.n	5678 <osKernelInitialize+0xd8>
    5692:	3801      	subs	r0, #1
    5694:	4b0d      	ldr	r3, [pc, #52]	; (56cc <osKernelInitialize+0x12c>)
    5696:	0080      	lsls	r0, r0, #2
    5698:	58c3      	ldr	r3, [r0, r3]
    569a:	490d      	ldr	r1, [pc, #52]	; (56d0 <osKernelInitialize+0x130>)
    569c:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    569e:	6351      	str	r1, [r2, #52]	; 0x34
    56a0:	e7eb      	b.n	567a <osKernelInitialize+0xda>
    56a2:	2500      	movs	r5, #0
    56a4:	e7c2      	b.n	562c <osKernelInitialize+0x8c>
    56a6:	46c0      	nop			; (mov r8, r8)
    56a8:	20006024 	.word	0x20006024
    56ac:	20006064 	.word	0x20006064
    56b0:	20006025 	.word	0x20006025
    56b4:	200039f8 	.word	0x200039f8
    56b8:	00008408 	.word	0x00008408
    56bc:	00008420 	.word	0x00008420
    56c0:	20004d10 	.word	0x20004d10
    56c4:	00008410 	.word	0x00008410
    56c8:	20004cec 	.word	0x20004cec
    56cc:	20004cdc 	.word	0x20004cdc
    56d0:	000053cd 	.word	0x000053cd
    56d4:	000053e5 	.word	0x000053e5

000056d8 <osKernelStart>:
    56d8:	b5b0      	push	{r4, r5, r7, lr}
    56da:	b088      	sub	sp, #32
    56dc:	f3ef 8405 	mrs	r4, IPSR
    56e0:	2582      	movs	r5, #130	; 0x82
    56e2:	2c00      	cmp	r4, #0
    56e4:	d002      	beq.n	56ec <osKernelStart+0x14>
    56e6:	0028      	movs	r0, r5
    56e8:	b008      	add	sp, #32
    56ea:	bdb0      	pop	{r4, r5, r7, pc}
    56ec:	f3ef 8414 	mrs	r4, CONTROL
    56f0:	3d7f      	subs	r5, #127	; 0x7f
    56f2:	402c      	ands	r4, r5
    56f4:	2c02      	cmp	r4, #2
    56f6:	d01c      	beq.n	5732 <osKernelStart+0x5a>
    56f8:	2c03      	cmp	r4, #3
    56fa:	d014      	beq.n	5726 <osKernelStart+0x4e>
    56fc:	2c01      	cmp	r4, #1
    56fe:	d020      	beq.n	5742 <osKernelStart+0x6a>
    5700:	ac08      	add	r4, sp, #32
    5702:	f384 8809 	msr	PSP, r4
    5706:	4c10      	ldr	r4, [pc, #64]	; (5748 <osKernelStart+0x70>)
    5708:	7824      	ldrb	r4, [r4, #0]
    570a:	07e4      	lsls	r4, r4, #31
    570c:	d515      	bpl.n	573a <osKernelStart+0x62>
    570e:	2402      	movs	r4, #2
    5710:	f384 8814 	msr	CONTROL, r4
    5714:	f3bf 8f4f 	dsb	sy
    5718:	f3bf 8f6f 	isb	sy
    571c:	4f0b      	ldr	r7, [pc, #44]	; (574c <osKernelStart+0x74>)
    571e:	46bc      	mov	ip, r7
    5720:	df00      	svc	0
    5722:	0005      	movs	r5, r0
    5724:	e7df      	b.n	56e6 <osKernelStart+0xe>
    5726:	4c08      	ldr	r4, [pc, #32]	; (5748 <osKernelStart+0x70>)
    5728:	25ff      	movs	r5, #255	; 0xff
    572a:	7824      	ldrb	r4, [r4, #0]
    572c:	07e4      	lsls	r4, r4, #31
    572e:	d4da      	bmi.n	56e6 <osKernelStart+0xe>
    5730:	e7f4      	b.n	571c <osKernelStart+0x44>
    5732:	4c05      	ldr	r4, [pc, #20]	; (5748 <osKernelStart+0x70>)
    5734:	7824      	ldrb	r4, [r4, #0]
    5736:	07e4      	lsls	r4, r4, #31
    5738:	d4f0      	bmi.n	571c <osKernelStart+0x44>
    573a:	2403      	movs	r4, #3
    573c:	f384 8814 	msr	CONTROL, r4
    5740:	e7e8      	b.n	5714 <osKernelStart+0x3c>
    5742:	25ff      	movs	r5, #255	; 0xff
    5744:	e7cf      	b.n	56e6 <osKernelStart+0xe>
    5746:	46c0      	nop			; (mov r8, r8)
    5748:	000083ec 	.word	0x000083ec
    574c:	000054f9 	.word	0x000054f9

00005750 <osKernelRunning>:
    5750:	b590      	push	{r4, r7, lr}
    5752:	f3ef 8405 	mrs	r4, IPSR
    5756:	2c00      	cmp	r4, #0
    5758:	d107      	bne.n	576a <osKernelRunning+0x1a>
    575a:	f3ef 8414 	mrs	r4, CONTROL
    575e:	07e4      	lsls	r4, r4, #31
    5760:	d503      	bpl.n	576a <osKernelRunning+0x1a>
    5762:	4f04      	ldr	r7, [pc, #16]	; (5774 <osKernelRunning+0x24>)
    5764:	46bc      	mov	ip, r7
    5766:	df00      	svc	0
    5768:	e001      	b.n	576e <osKernelRunning+0x1e>
    576a:	4b01      	ldr	r3, [pc, #4]	; (5770 <osKernelRunning+0x20>)
    576c:	7818      	ldrb	r0, [r3, #0]
    576e:	bd90      	pop	{r4, r7, pc}
    5770:	20006025 	.word	0x20006025
    5774:	00005545 	.word	0x00005545

00005778 <osKernelSysTick>:
    5778:	b5b0      	push	{r4, r5, r7, lr}
    577a:	f3ef 8405 	mrs	r4, IPSR
    577e:	2500      	movs	r5, #0
    5780:	2c00      	cmp	r4, #0
    5782:	d103      	bne.n	578c <osKernelSysTick+0x14>
    5784:	4f02      	ldr	r7, [pc, #8]	; (5790 <osKernelSysTick+0x18>)
    5786:	46bc      	mov	ip, r7
    5788:	df00      	svc	0
    578a:	0005      	movs	r5, r0
    578c:	0028      	movs	r0, r5
    578e:	bdb0      	pop	{r4, r5, r7, pc}
    5790:	00005551 	.word	0x00005551

00005794 <svcThreadCreate>:
    5794:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5796:	0004      	movs	r4, r0
    5798:	000d      	movs	r5, r1
    579a:	2800      	cmp	r0, #0
    579c:	d01f      	beq.n	57de <svcThreadCreate+0x4a>
    579e:	6800      	ldr	r0, [r0, #0]
    57a0:	2800      	cmp	r0, #0
    57a2:	d01c      	beq.n	57de <svcThreadCreate+0x4a>
    57a4:	6863      	ldr	r3, [r4, #4]
    57a6:	1cda      	adds	r2, r3, #3
    57a8:	2a06      	cmp	r2, #6
    57aa:	d818      	bhi.n	57de <svcThreadCreate+0x4a>
    57ac:	68e1      	ldr	r1, [r4, #12]
    57ae:	2900      	cmp	r1, #0
    57b0:	d017      	beq.n	57e2 <svcThreadCreate+0x4e>
    57b2:	4e13      	ldr	r6, [pc, #76]	; (5800 <svcThreadCreate+0x6c>)
    57b4:	0030      	movs	r0, r6
    57b6:	f001 fa9b 	bl	6cf0 <rt_alloc_mem>
    57ba:	1e07      	subs	r7, r0, #0
    57bc:	d00f      	beq.n	57de <svcThreadCreate+0x4a>
    57be:	6863      	ldr	r3, [r4, #4]
    57c0:	6820      	ldr	r0, [r4, #0]
    57c2:	1d19      	adds	r1, r3, #4
    57c4:	68e3      	ldr	r3, [r4, #12]
    57c6:	003a      	movs	r2, r7
    57c8:	021b      	lsls	r3, r3, #8
    57ca:	4319      	orrs	r1, r3
    57cc:	002b      	movs	r3, r5
    57ce:	f002 fb57 	bl	7e80 <rt_tsk_create>
    57d2:	2800      	cmp	r0, #0
    57d4:	d10c      	bne.n	57f0 <svcThreadCreate+0x5c>
    57d6:	0039      	movs	r1, r7
    57d8:	0030      	movs	r0, r6
    57da:	f001 faab 	bl	6d34 <rt_free_mem>
    57de:	2000      	movs	r0, #0
    57e0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    57e2:	1d19      	adds	r1, r3, #4
    57e4:	2200      	movs	r2, #0
    57e6:	002b      	movs	r3, r5
    57e8:	f002 fb4a 	bl	7e80 <rt_tsk_create>
    57ec:	2800      	cmp	r0, #0
    57ee:	d0f6      	beq.n	57de <svcThreadCreate+0x4a>
    57f0:	4b04      	ldr	r3, [pc, #16]	; (5804 <svcThreadCreate+0x70>)
    57f2:	3801      	subs	r0, #1
    57f4:	0080      	lsls	r0, r0, #2
    57f6:	58c0      	ldr	r0, [r0, r3]
    57f8:	4a03      	ldr	r2, [pc, #12]	; (5808 <svcThreadCreate+0x74>)
    57fa:	6a83      	ldr	r3, [r0, #40]	; 0x28
    57fc:	635a      	str	r2, [r3, #52]	; 0x34
    57fe:	e7ef      	b.n	57e0 <svcThreadCreate+0x4c>
    5800:	200039f8 	.word	0x200039f8
    5804:	20004cdc 	.word	0x20004cdc
    5808:	000053cd 	.word	0x000053cd

0000580c <svcThreadGetId>:
    580c:	b510      	push	{r4, lr}
    580e:	f002 fad1 	bl	7db4 <rt_tsk_self>
    5812:	2800      	cmp	r0, #0
    5814:	d004      	beq.n	5820 <svcThreadGetId+0x14>
    5816:	3801      	subs	r0, #1
    5818:	4b02      	ldr	r3, [pc, #8]	; (5824 <svcThreadGetId+0x18>)
    581a:	0080      	lsls	r0, r0, #2
    581c:	58c0      	ldr	r0, [r0, r3]
    581e:	bd10      	pop	{r4, pc}
    5820:	2000      	movs	r0, #0
    5822:	e7fc      	b.n	581e <svcThreadGetId+0x12>
    5824:	20004cdc 	.word	0x20004cdc

00005828 <svcThreadTerminate>:
    5828:	0003      	movs	r3, r0
    582a:	b510      	push	{r4, lr}
    582c:	2080      	movs	r0, #128	; 0x80
    582e:	2b00      	cmp	r3, #0
    5830:	d017      	beq.n	5862 <svcThreadTerminate+0x3a>
    5832:	079a      	lsls	r2, r3, #30
    5834:	d115      	bne.n	5862 <svcThreadTerminate+0x3a>
    5836:	781a      	ldrb	r2, [r3, #0]
    5838:	2a00      	cmp	r2, #0
    583a:	d112      	bne.n	5862 <svcThreadTerminate+0x3a>
    583c:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    583e:	2400      	movs	r4, #0
    5840:	2a00      	cmp	r2, #0
    5842:	d000      	beq.n	5846 <svcThreadTerminate+0x1e>
    5844:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    5846:	78d8      	ldrb	r0, [r3, #3]
    5848:	f002 fb94 	bl	7f74 <rt_tsk_delete>
    584c:	0003      	movs	r3, r0
    584e:	2081      	movs	r0, #129	; 0x81
    5850:	2bff      	cmp	r3, #255	; 0xff
    5852:	d006      	beq.n	5862 <svcThreadTerminate+0x3a>
    5854:	2c00      	cmp	r4, #0
    5856:	d005      	beq.n	5864 <svcThreadTerminate+0x3c>
    5858:	0021      	movs	r1, r4
    585a:	4803      	ldr	r0, [pc, #12]	; (5868 <svcThreadTerminate+0x40>)
    585c:	f001 fa6a 	bl	6d34 <rt_free_mem>
    5860:	2000      	movs	r0, #0
    5862:	bd10      	pop	{r4, pc}
    5864:	2000      	movs	r0, #0
    5866:	e7fc      	b.n	5862 <svcThreadTerminate+0x3a>
    5868:	200039f8 	.word	0x200039f8

0000586c <svcThreadYield>:
    586c:	b510      	push	{r4, lr}
    586e:	f002 fa8b 	bl	7d88 <rt_tsk_pass>
    5872:	2000      	movs	r0, #0
    5874:	bd10      	pop	{r4, pc}
    5876:	46c0      	nop			; (mov r8, r8)

00005878 <svcThreadSetPriority>:
    5878:	0003      	movs	r3, r0
    587a:	b510      	push	{r4, lr}
    587c:	2080      	movs	r0, #128	; 0x80
    587e:	2b00      	cmp	r3, #0
    5880:	d008      	beq.n	5894 <svcThreadSetPriority+0x1c>
    5882:	079a      	lsls	r2, r3, #30
    5884:	d106      	bne.n	5894 <svcThreadSetPriority+0x1c>
    5886:	781a      	ldrb	r2, [r3, #0]
    5888:	2a00      	cmp	r2, #0
    588a:	d103      	bne.n	5894 <svcThreadSetPriority+0x1c>
    588c:	1cca      	adds	r2, r1, #3
    588e:	2086      	movs	r0, #134	; 0x86
    5890:	2a06      	cmp	r2, #6
    5892:	d900      	bls.n	5896 <svcThreadSetPriority+0x1e>
    5894:	bd10      	pop	{r4, pc}
    5896:	3104      	adds	r1, #4
    5898:	78d8      	ldrb	r0, [r3, #3]
    589a:	b2c9      	uxtb	r1, r1
    589c:	f002 fa94 	bl	7dc8 <rt_tsk_prio>
    58a0:	0003      	movs	r3, r0
    58a2:	2081      	movs	r0, #129	; 0x81
    58a4:	2bff      	cmp	r3, #255	; 0xff
    58a6:	d0f5      	beq.n	5894 <svcThreadSetPriority+0x1c>
    58a8:	2000      	movs	r0, #0
    58aa:	e7f3      	b.n	5894 <svcThreadSetPriority+0x1c>

000058ac <svcThreadGetPriority>:
    58ac:	0003      	movs	r3, r0
    58ae:	2084      	movs	r0, #132	; 0x84
    58b0:	2b00      	cmp	r3, #0
    58b2:	d006      	beq.n	58c2 <svcThreadGetPriority+0x16>
    58b4:	079a      	lsls	r2, r3, #30
    58b6:	d104      	bne.n	58c2 <svcThreadGetPriority+0x16>
    58b8:	781a      	ldrb	r2, [r3, #0]
    58ba:	2a00      	cmp	r2, #0
    58bc:	d101      	bne.n	58c2 <svcThreadGetPriority+0x16>
    58be:	7898      	ldrb	r0, [r3, #2]
    58c0:	3804      	subs	r0, #4
    58c2:	4770      	bx	lr

000058c4 <osThreadCreate>:
    58c4:	b5f0      	push	{r4, r5, r6, r7, lr}
    58c6:	4647      	mov	r7, r8
    58c8:	0004      	movs	r4, r0
    58ca:	b480      	push	{r7}
    58cc:	000d      	movs	r5, r1
    58ce:	f3ef 8105 	mrs	r1, IPSR
    58d2:	2900      	cmp	r1, #0
    58d4:	d132      	bne.n	593c <osThreadCreate+0x78>
    58d6:	f3ef 8114 	mrs	r1, CONTROL
    58da:	07c9      	lsls	r1, r1, #31
    58dc:	d507      	bpl.n	58ee <osThreadCreate+0x2a>
    58de:	0020      	movs	r0, r4
    58e0:	0029      	movs	r1, r5
    58e2:	4f23      	ldr	r7, [pc, #140]	; (5970 <osThreadCreate+0xac>)
    58e4:	46bc      	mov	ip, r7
    58e6:	df00      	svc	0
    58e8:	bc04      	pop	{r2}
    58ea:	4690      	mov	r8, r2
    58ec:	bdf0      	pop	{r4, r5, r6, r7, pc}
    58ee:	491c      	ldr	r1, [pc, #112]	; (5960 <osThreadCreate+0x9c>)
    58f0:	7809      	ldrb	r1, [r1, #0]
    58f2:	2900      	cmp	r1, #0
    58f4:	d1f3      	bne.n	58de <osThreadCreate+0x1a>
    58f6:	2800      	cmp	r0, #0
    58f8:	d020      	beq.n	593c <osThreadCreate+0x78>
    58fa:	6800      	ldr	r0, [r0, #0]
    58fc:	2800      	cmp	r0, #0
    58fe:	d01d      	beq.n	593c <osThreadCreate+0x78>
    5900:	6863      	ldr	r3, [r4, #4]
    5902:	1cda      	adds	r2, r3, #3
    5904:	2a06      	cmp	r2, #6
    5906:	d819      	bhi.n	593c <osThreadCreate+0x78>
    5908:	68e1      	ldr	r1, [r4, #12]
    590a:	2900      	cmp	r1, #0
    590c:	d018      	beq.n	5940 <osThreadCreate+0x7c>
    590e:	4e15      	ldr	r6, [pc, #84]	; (5964 <osThreadCreate+0xa0>)
    5910:	0030      	movs	r0, r6
    5912:	f001 f9ed 	bl	6cf0 <rt_alloc_mem>
    5916:	4680      	mov	r8, r0
    5918:	2800      	cmp	r0, #0
    591a:	d00f      	beq.n	593c <osThreadCreate+0x78>
    591c:	6863      	ldr	r3, [r4, #4]
    591e:	6820      	ldr	r0, [r4, #0]
    5920:	1d19      	adds	r1, r3, #4
    5922:	68e3      	ldr	r3, [r4, #12]
    5924:	4642      	mov	r2, r8
    5926:	021b      	lsls	r3, r3, #8
    5928:	4319      	orrs	r1, r3
    592a:	002b      	movs	r3, r5
    592c:	f002 faa8 	bl	7e80 <rt_tsk_create>
    5930:	2800      	cmp	r0, #0
    5932:	d10c      	bne.n	594e <osThreadCreate+0x8a>
    5934:	4641      	mov	r1, r8
    5936:	0030      	movs	r0, r6
    5938:	f001 f9fc 	bl	6d34 <rt_free_mem>
    593c:	2000      	movs	r0, #0
    593e:	e7d3      	b.n	58e8 <osThreadCreate+0x24>
    5940:	1d19      	adds	r1, r3, #4
    5942:	2200      	movs	r2, #0
    5944:	002b      	movs	r3, r5
    5946:	f002 fa9b 	bl	7e80 <rt_tsk_create>
    594a:	2800      	cmp	r0, #0
    594c:	d0f6      	beq.n	593c <osThreadCreate+0x78>
    594e:	4b06      	ldr	r3, [pc, #24]	; (5968 <osThreadCreate+0xa4>)
    5950:	3801      	subs	r0, #1
    5952:	0080      	lsls	r0, r0, #2
    5954:	58c0      	ldr	r0, [r0, r3]
    5956:	4a05      	ldr	r2, [pc, #20]	; (596c <osThreadCreate+0xa8>)
    5958:	6a83      	ldr	r3, [r0, #40]	; 0x28
    595a:	635a      	str	r2, [r3, #52]	; 0x34
    595c:	e7c4      	b.n	58e8 <osThreadCreate+0x24>
    595e:	46c0      	nop			; (mov r8, r8)
    5960:	20006025 	.word	0x20006025
    5964:	200039f8 	.word	0x200039f8
    5968:	20004cdc 	.word	0x20004cdc
    596c:	000053cd 	.word	0x000053cd
    5970:	00005795 	.word	0x00005795

00005974 <osThreadGetId>:
    5974:	b590      	push	{r4, r7, lr}
    5976:	f3ef 8405 	mrs	r4, IPSR
    597a:	2c00      	cmp	r4, #0
    597c:	d103      	bne.n	5986 <osThreadGetId+0x12>
    597e:	4f03      	ldr	r7, [pc, #12]	; (598c <osThreadGetId+0x18>)
    5980:	46bc      	mov	ip, r7
    5982:	df00      	svc	0
    5984:	bd90      	pop	{r4, r7, pc}
    5986:	2000      	movs	r0, #0
    5988:	e7fc      	b.n	5984 <osThreadGetId+0x10>
    598a:	0000      	.short	0x0000
    598c:	0000580d 	.word	0x0000580d

00005990 <osThreadTerminate>:
    5990:	b5b0      	push	{r4, r5, r7, lr}
    5992:	0005      	movs	r5, r0
    5994:	f3ef 8405 	mrs	r4, IPSR
    5998:	2082      	movs	r0, #130	; 0x82
    599a:	2c00      	cmp	r4, #0
    599c:	d000      	beq.n	59a0 <osThreadTerminate+0x10>
    599e:	bdb0      	pop	{r4, r5, r7, pc}
    59a0:	0028      	movs	r0, r5
    59a2:	4f02      	ldr	r7, [pc, #8]	; (59ac <osThreadTerminate+0x1c>)
    59a4:	46bc      	mov	ip, r7
    59a6:	df00      	svc	0
    59a8:	e7f9      	b.n	599e <osThreadTerminate+0xe>
    59aa:	0000      	.short	0x0000
    59ac:	00005829 	.word	0x00005829

000059b0 <osThreadYield>:
    59b0:	b5b0      	push	{r4, r5, r7, lr}
    59b2:	f3ef 8405 	mrs	r4, IPSR
    59b6:	2582      	movs	r5, #130	; 0x82
    59b8:	2c00      	cmp	r4, #0
    59ba:	d001      	beq.n	59c0 <osThreadYield+0x10>
    59bc:	0028      	movs	r0, r5
    59be:	bdb0      	pop	{r4, r5, r7, pc}
    59c0:	4f02      	ldr	r7, [pc, #8]	; (59cc <osThreadYield+0x1c>)
    59c2:	46bc      	mov	ip, r7
    59c4:	df00      	svc	0
    59c6:	0005      	movs	r5, r0
    59c8:	e7f8      	b.n	59bc <osThreadYield+0xc>
    59ca:	0000      	.short	0x0000
    59cc:	0000586d 	.word	0x0000586d

000059d0 <osThreadSetPriority>:
    59d0:	b5b0      	push	{r4, r5, r7, lr}
    59d2:	0005      	movs	r5, r0
    59d4:	f3ef 8405 	mrs	r4, IPSR
    59d8:	2082      	movs	r0, #130	; 0x82
    59da:	2c00      	cmp	r4, #0
    59dc:	d000      	beq.n	59e0 <osThreadSetPriority+0x10>
    59de:	bdb0      	pop	{r4, r5, r7, pc}
    59e0:	0028      	movs	r0, r5
    59e2:	4f02      	ldr	r7, [pc, #8]	; (59ec <osThreadSetPriority+0x1c>)
    59e4:	46bc      	mov	ip, r7
    59e6:	df00      	svc	0
    59e8:	e7f9      	b.n	59de <osThreadSetPriority+0xe>
    59ea:	0000      	.short	0x0000
    59ec:	00005879 	.word	0x00005879

000059f0 <osThreadGetPriority>:
    59f0:	b5b0      	push	{r4, r5, r7, lr}
    59f2:	0005      	movs	r5, r0
    59f4:	f3ef 8405 	mrs	r4, IPSR
    59f8:	2084      	movs	r0, #132	; 0x84
    59fa:	2c00      	cmp	r4, #0
    59fc:	d000      	beq.n	5a00 <osThreadGetPriority+0x10>
    59fe:	bdb0      	pop	{r4, r5, r7, pc}
    5a00:	0028      	movs	r0, r5
    5a02:	4f02      	ldr	r7, [pc, #8]	; (5a0c <osThreadGetPriority+0x1c>)
    5a04:	46bc      	mov	ip, r7
    5a06:	df00      	svc	0
    5a08:	e7f9      	b.n	59fe <osThreadGetPriority+0xe>
    5a0a:	0000      	.short	0x0000
    5a0c:	000058ad 	.word	0x000058ad

00005a10 <svcDelay>:
    5a10:	b500      	push	{lr}
    5a12:	b083      	sub	sp, #12
    5a14:	2800      	cmp	r0, #0
    5a16:	d019      	beq.n	5a4c <svcDelay+0x3c>
    5a18:	1c43      	adds	r3, r0, #1
    5a1a:	d01c      	beq.n	5a56 <svcDelay+0x46>
    5a1c:	4b10      	ldr	r3, [pc, #64]	; (5a60 <svcDelay+0x50>)
    5a1e:	4298      	cmp	r0, r3
    5a20:	d817      	bhi.n	5a52 <svcDelay+0x42>
    5a22:	4b10      	ldr	r3, [pc, #64]	; (5a64 <svcDelay+0x54>)
    5a24:	681b      	ldr	r3, [r3, #0]
    5a26:	9301      	str	r3, [sp, #4]
    5a28:	23fa      	movs	r3, #250	; 0xfa
    5a2a:	009b      	lsls	r3, r3, #2
    5a2c:	4358      	muls	r0, r3
    5a2e:	9b01      	ldr	r3, [sp, #4]
    5a30:	9901      	ldr	r1, [sp, #4]
    5a32:	3b01      	subs	r3, #1
    5a34:	18c0      	adds	r0, r0, r3
    5a36:	f7fe fc83 	bl	4340 <__aeabi_uidiv>
    5a3a:	4b0b      	ldr	r3, [pc, #44]	; (5a68 <svcDelay+0x58>)
    5a3c:	0002      	movs	r2, r0
    5a3e:	0018      	movs	r0, r3
    5a40:	429a      	cmp	r2, r3
    5a42:	d90a      	bls.n	5a5a <svcDelay+0x4a>
    5a44:	f001 fb34 	bl	70b0 <rt_dly_wait>
    5a48:	2040      	movs	r0, #64	; 0x40
    5a4a:	e000      	b.n	5a4e <svcDelay+0x3e>
    5a4c:	2000      	movs	r0, #0
    5a4e:	b003      	add	sp, #12
    5a50:	bd00      	pop	{pc}
    5a52:	4805      	ldr	r0, [pc, #20]	; (5a68 <svcDelay+0x58>)
    5a54:	e7f6      	b.n	5a44 <svcDelay+0x34>
    5a56:	4805      	ldr	r0, [pc, #20]	; (5a6c <svcDelay+0x5c>)
    5a58:	e7f4      	b.n	5a44 <svcDelay+0x34>
    5a5a:	b290      	uxth	r0, r2
    5a5c:	e7f2      	b.n	5a44 <svcDelay+0x34>
    5a5e:	46c0      	nop			; (mov r8, r8)
    5a60:	003d0900 	.word	0x003d0900
    5a64:	000083f8 	.word	0x000083f8
    5a68:	0000fffe 	.word	0x0000fffe
    5a6c:	0000ffff 	.word	0x0000ffff

00005a70 <osDelay>:
    5a70:	b5b0      	push	{r4, r5, r7, lr}
    5a72:	0005      	movs	r5, r0
    5a74:	f3ef 8405 	mrs	r4, IPSR
    5a78:	2082      	movs	r0, #130	; 0x82
    5a7a:	2c00      	cmp	r4, #0
    5a7c:	d000      	beq.n	5a80 <osDelay+0x10>
    5a7e:	bdb0      	pop	{r4, r5, r7, pc}
    5a80:	0028      	movs	r0, r5
    5a82:	4f02      	ldr	r7, [pc, #8]	; (5a8c <osDelay+0x1c>)
    5a84:	46bc      	mov	ip, r7
    5a86:	df00      	svc	0
    5a88:	e7f9      	b.n	5a7e <osDelay+0xe>
    5a8a:	0000      	.short	0x0000
    5a8c:	00005a11 	.word	0x00005a11

00005a90 <osWait>:
    5a90:	23ff      	movs	r3, #255	; 0xff
    5a92:	6003      	str	r3, [r0, #0]
    5a94:	4770      	bx	lr
    5a96:	46c0      	nop			; (mov r8, r8)

00005a98 <svcTimerCreate>:
    5a98:	b510      	push	{r4, lr}
    5a9a:	2800      	cmp	r0, #0
    5a9c:	d016      	beq.n	5acc <svcTimerCreate+0x34>
    5a9e:	6803      	ldr	r3, [r0, #0]
    5aa0:	2b00      	cmp	r3, #0
    5aa2:	d013      	beq.n	5acc <svcTimerCreate+0x34>
    5aa4:	6843      	ldr	r3, [r0, #4]
    5aa6:	2b00      	cmp	r3, #0
    5aa8:	d010      	beq.n	5acc <svcTimerCreate+0x34>
    5aaa:	2901      	cmp	r1, #1
    5aac:	d80e      	bhi.n	5acc <svcTimerCreate+0x34>
    5aae:	4c08      	ldr	r4, [pc, #32]	; (5ad0 <svcTimerCreate+0x38>)
    5ab0:	6824      	ldr	r4, [r4, #0]
    5ab2:	2c00      	cmp	r4, #0
    5ab4:	d00a      	beq.n	5acc <svcTimerCreate+0x34>
    5ab6:	791c      	ldrb	r4, [r3, #4]
    5ab8:	2c00      	cmp	r4, #0
    5aba:	d107      	bne.n	5acc <svcTimerCreate+0x34>
    5abc:	6158      	str	r0, [r3, #20]
    5abe:	0018      	movs	r0, r3
    5ac0:	601c      	str	r4, [r3, #0]
    5ac2:	3401      	adds	r4, #1
    5ac4:	711c      	strb	r4, [r3, #4]
    5ac6:	7159      	strb	r1, [r3, #5]
    5ac8:	611a      	str	r2, [r3, #16]
    5aca:	bd10      	pop	{r4, pc}
    5acc:	2000      	movs	r0, #0
    5ace:	e7fc      	b.n	5aca <svcTimerCreate+0x32>
    5ad0:	20004cec 	.word	0x20004cec

00005ad4 <svcTimerStart>:
    5ad4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5ad6:	0004      	movs	r4, r0
    5ad8:	2080      	movs	r0, #128	; 0x80
    5ada:	07a3      	lsls	r3, r4, #30
    5adc:	d104      	bne.n	5ae8 <svcTimerStart+0x14>
    5ade:	2c00      	cmp	r4, #0
    5ae0:	d002      	beq.n	5ae8 <svcTimerStart+0x14>
    5ae2:	3006      	adds	r0, #6
    5ae4:	2900      	cmp	r1, #0
    5ae6:	d100      	bne.n	5aea <svcTimerStart+0x16>
    5ae8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5aea:	22fa      	movs	r2, #250	; 0xfa
    5aec:	4b2f      	ldr	r3, [pc, #188]	; (5bac <svcTimerStart+0xd8>)
    5aee:	0092      	lsls	r2, r2, #2
    5af0:	681e      	ldr	r6, [r3, #0]
    5af2:	0008      	movs	r0, r1
    5af4:	2300      	movs	r3, #0
    5af6:	2100      	movs	r1, #0
    5af8:	f7fe fd78 	bl	45ec <__aeabi_lmul>
    5afc:	2700      	movs	r7, #0
    5afe:	0002      	movs	r2, r0
    5b00:	000b      	movs	r3, r1
    5b02:	2001      	movs	r0, #1
    5b04:	4240      	negs	r0, r0
    5b06:	17c1      	asrs	r1, r0, #31
    5b08:	1980      	adds	r0, r0, r6
    5b0a:	4179      	adcs	r1, r7
    5b0c:	1880      	adds	r0, r0, r2
    5b0e:	4159      	adcs	r1, r3
    5b10:	003b      	movs	r3, r7
    5b12:	0032      	movs	r2, r6
    5b14:	f7fe fd4a 	bl	45ac <__aeabi_uldivmod>
    5b18:	7923      	ldrb	r3, [r4, #4]
    5b1a:	2b01      	cmp	r3, #1
    5b1c:	d011      	beq.n	5b42 <svcTimerStart+0x6e>
    5b1e:	2b02      	cmp	r3, #2
    5b20:	d10d      	bne.n	5b3e <svcTimerStart+0x6a>
    5b22:	4d23      	ldr	r5, [pc, #140]	; (5bb0 <svcTimerStart+0xdc>)
    5b24:	6829      	ldr	r1, [r5, #0]
    5b26:	2900      	cmp	r1, #0
    5b28:	d009      	beq.n	5b3e <svcTimerStart+0x6a>
    5b2a:	428c      	cmp	r4, r1
    5b2c:	d03a      	beq.n	5ba4 <svcTimerStart+0xd0>
    5b2e:	000a      	movs	r2, r1
    5b30:	e002      	b.n	5b38 <svcTimerStart+0x64>
    5b32:	429c      	cmp	r4, r3
    5b34:	d028      	beq.n	5b88 <svcTimerStart+0xb4>
    5b36:	001a      	movs	r2, r3
    5b38:	6813      	ldr	r3, [r2, #0]
    5b3a:	2b00      	cmp	r3, #0
    5b3c:	d1f9      	bne.n	5b32 <svcTimerStart+0x5e>
    5b3e:	2081      	movs	r0, #129	; 0x81
    5b40:	e7d2      	b.n	5ae8 <svcTimerStart+0x14>
    5b42:	2302      	movs	r3, #2
    5b44:	4d1a      	ldr	r5, [pc, #104]	; (5bb0 <svcTimerStart+0xdc>)
    5b46:	7123      	strb	r3, [r4, #4]
    5b48:	6829      	ldr	r1, [r5, #0]
    5b4a:	60e0      	str	r0, [r4, #12]
    5b4c:	2900      	cmp	r1, #0
    5b4e:	d00b      	beq.n	5b68 <svcTimerStart+0x94>
    5b50:	688a      	ldr	r2, [r1, #8]
    5b52:	4290      	cmp	r0, r2
    5b54:	d204      	bcs.n	5b60 <svcTimerStart+0x8c>
    5b56:	e00f      	b.n	5b78 <svcTimerStart+0xa4>
    5b58:	689a      	ldr	r2, [r3, #8]
    5b5a:	4282      	cmp	r2, r0
    5b5c:	d80e      	bhi.n	5b7c <svcTimerStart+0xa8>
    5b5e:	0019      	movs	r1, r3
    5b60:	680b      	ldr	r3, [r1, #0]
    5b62:	1a80      	subs	r0, r0, r2
    5b64:	2b00      	cmp	r3, #0
    5b66:	d1f7      	bne.n	5b58 <svcTimerStart+0x84>
    5b68:	2300      	movs	r3, #0
    5b6a:	60a0      	str	r0, [r4, #8]
    5b6c:	6023      	str	r3, [r4, #0]
    5b6e:	2900      	cmp	r1, #0
    5b70:	d015      	beq.n	5b9e <svcTimerStart+0xca>
    5b72:	600c      	str	r4, [r1, #0]
    5b74:	2000      	movs	r0, #0
    5b76:	e7b7      	b.n	5ae8 <svcTimerStart+0x14>
    5b78:	000b      	movs	r3, r1
    5b7a:	2100      	movs	r1, #0
    5b7c:	60a0      	str	r0, [r4, #8]
    5b7e:	689a      	ldr	r2, [r3, #8]
    5b80:	6023      	str	r3, [r4, #0]
    5b82:	1a10      	subs	r0, r2, r0
    5b84:	6098      	str	r0, [r3, #8]
    5b86:	e7f2      	b.n	5b6e <svcTimerStart+0x9a>
    5b88:	6823      	ldr	r3, [r4, #0]
    5b8a:	6013      	str	r3, [r2, #0]
    5b8c:	6823      	ldr	r3, [r4, #0]
    5b8e:	2b00      	cmp	r3, #0
    5b90:	d0dc      	beq.n	5b4c <svcTimerStart+0x78>
    5b92:	68a6      	ldr	r6, [r4, #8]
    5b94:	689a      	ldr	r2, [r3, #8]
    5b96:	46b4      	mov	ip, r6
    5b98:	4462      	add	r2, ip
    5b9a:	609a      	str	r2, [r3, #8]
    5b9c:	e7d6      	b.n	5b4c <svcTimerStart+0x78>
    5b9e:	602c      	str	r4, [r5, #0]
    5ba0:	2000      	movs	r0, #0
    5ba2:	e7a1      	b.n	5ae8 <svcTimerStart+0x14>
    5ba4:	6823      	ldr	r3, [r4, #0]
    5ba6:	602b      	str	r3, [r5, #0]
    5ba8:	0019      	movs	r1, r3
    5baa:	e7f0      	b.n	5b8e <svcTimerStart+0xba>
    5bac:	000083f8 	.word	0x000083f8
    5bb0:	20006028 	.word	0x20006028

00005bb4 <svcTimerStop>:
    5bb4:	0003      	movs	r3, r0
    5bb6:	2080      	movs	r0, #128	; 0x80
    5bb8:	079a      	lsls	r2, r3, #30
    5bba:	d105      	bne.n	5bc8 <svcTimerStop+0x14>
    5bbc:	2b00      	cmp	r3, #0
    5bbe:	d003      	beq.n	5bc8 <svcTimerStop+0x14>
    5bc0:	791a      	ldrb	r2, [r3, #4]
    5bc2:	2a02      	cmp	r2, #2
    5bc4:	d001      	beq.n	5bca <svcTimerStop+0x16>
    5bc6:	2081      	movs	r0, #129	; 0x81
    5bc8:	4770      	bx	lr
    5bca:	2201      	movs	r2, #1
    5bcc:	480e      	ldr	r0, [pc, #56]	; (5c08 <svcTimerStop+0x54>)
    5bce:	711a      	strb	r2, [r3, #4]
    5bd0:	6801      	ldr	r1, [r0, #0]
    5bd2:	2900      	cmp	r1, #0
    5bd4:	d0f7      	beq.n	5bc6 <svcTimerStop+0x12>
    5bd6:	428b      	cmp	r3, r1
    5bd8:	d105      	bne.n	5be6 <svcTimerStop+0x32>
    5bda:	681a      	ldr	r2, [r3, #0]
    5bdc:	6002      	str	r2, [r0, #0]
    5bde:	e009      	b.n	5bf4 <svcTimerStop+0x40>
    5be0:	4293      	cmp	r3, r2
    5be2:	d004      	beq.n	5bee <svcTimerStop+0x3a>
    5be4:	0011      	movs	r1, r2
    5be6:	680a      	ldr	r2, [r1, #0]
    5be8:	2a00      	cmp	r2, #0
    5bea:	d1f9      	bne.n	5be0 <svcTimerStop+0x2c>
    5bec:	e7eb      	b.n	5bc6 <svcTimerStop+0x12>
    5bee:	681a      	ldr	r2, [r3, #0]
    5bf0:	600a      	str	r2, [r1, #0]
    5bf2:	681a      	ldr	r2, [r3, #0]
    5bf4:	2a00      	cmp	r2, #0
    5bf6:	d004      	beq.n	5c02 <svcTimerStop+0x4e>
    5bf8:	6891      	ldr	r1, [r2, #8]
    5bfa:	689b      	ldr	r3, [r3, #8]
    5bfc:	468c      	mov	ip, r1
    5bfe:	4463      	add	r3, ip
    5c00:	6093      	str	r3, [r2, #8]
    5c02:	2000      	movs	r0, #0
    5c04:	e7e0      	b.n	5bc8 <svcTimerStop+0x14>
    5c06:	46c0      	nop			; (mov r8, r8)
    5c08:	20006028 	.word	0x20006028

00005c0c <svcTimerDelete>:
    5c0c:	0002      	movs	r2, r0
    5c0e:	2080      	movs	r0, #128	; 0x80
    5c10:	0793      	lsls	r3, r2, #30
    5c12:	d117      	bne.n	5c44 <svcTimerDelete+0x38>
    5c14:	2a00      	cmp	r2, #0
    5c16:	d015      	beq.n	5c44 <svcTimerDelete+0x38>
    5c18:	7913      	ldrb	r3, [r2, #4]
    5c1a:	2b01      	cmp	r3, #1
    5c1c:	d00f      	beq.n	5c3e <svcTimerDelete+0x32>
    5c1e:	2081      	movs	r0, #129	; 0x81
    5c20:	2b02      	cmp	r3, #2
    5c22:	d10f      	bne.n	5c44 <svcTimerDelete+0x38>
    5c24:	4810      	ldr	r0, [pc, #64]	; (5c68 <svcTimerDelete+0x5c>)
    5c26:	6801      	ldr	r1, [r0, #0]
    5c28:	2900      	cmp	r1, #0
    5c2a:	d008      	beq.n	5c3e <svcTimerDelete+0x32>
    5c2c:	428a      	cmp	r2, r1
    5c2e:	d103      	bne.n	5c38 <svcTimerDelete+0x2c>
    5c30:	e017      	b.n	5c62 <svcTimerDelete+0x56>
    5c32:	429a      	cmp	r2, r3
    5c34:	d007      	beq.n	5c46 <svcTimerDelete+0x3a>
    5c36:	0019      	movs	r1, r3
    5c38:	680b      	ldr	r3, [r1, #0]
    5c3a:	2b00      	cmp	r3, #0
    5c3c:	d1f9      	bne.n	5c32 <svcTimerDelete+0x26>
    5c3e:	2300      	movs	r3, #0
    5c40:	2000      	movs	r0, #0
    5c42:	7113      	strb	r3, [r2, #4]
    5c44:	4770      	bx	lr
    5c46:	6813      	ldr	r3, [r2, #0]
    5c48:	600b      	str	r3, [r1, #0]
    5c4a:	6813      	ldr	r3, [r2, #0]
    5c4c:	2b00      	cmp	r3, #0
    5c4e:	d0f6      	beq.n	5c3e <svcTimerDelete+0x32>
    5c50:	6890      	ldr	r0, [r2, #8]
    5c52:	6899      	ldr	r1, [r3, #8]
    5c54:	4684      	mov	ip, r0
    5c56:	4461      	add	r1, ip
    5c58:	6099      	str	r1, [r3, #8]
    5c5a:	2300      	movs	r3, #0
    5c5c:	2000      	movs	r0, #0
    5c5e:	7113      	strb	r3, [r2, #4]
    5c60:	e7f0      	b.n	5c44 <svcTimerDelete+0x38>
    5c62:	6813      	ldr	r3, [r2, #0]
    5c64:	6003      	str	r3, [r0, #0]
    5c66:	e7f1      	b.n	5c4c <svcTimerDelete+0x40>
    5c68:	20006028 	.word	0x20006028

00005c6c <svcTimerCall>:
    5c6c:	0003      	movs	r3, r0
    5c6e:	0782      	lsls	r2, r0, #30
    5c70:	d105      	bne.n	5c7e <svcTimerCall+0x12>
    5c72:	2800      	cmp	r0, #0
    5c74:	d006      	beq.n	5c84 <svcTimerCall+0x18>
    5c76:	6942      	ldr	r2, [r0, #20]
    5c78:	6919      	ldr	r1, [r3, #16]
    5c7a:	6810      	ldr	r0, [r2, #0]
    5c7c:	4770      	bx	lr
    5c7e:	2000      	movs	r0, #0
    5c80:	2100      	movs	r1, #0
    5c82:	e7fb      	b.n	5c7c <svcTimerCall+0x10>
    5c84:	2000      	movs	r0, #0
    5c86:	0001      	movs	r1, r0
    5c88:	e7f8      	b.n	5c7c <svcTimerCall+0x10>
    5c8a:	46c0      	nop			; (mov r8, r8)

00005c8c <sysTimerTick>:
    5c8c:	b5f0      	push	{r4, r5, r6, r7, lr}
    5c8e:	464e      	mov	r6, r9
    5c90:	4657      	mov	r7, sl
    5c92:	4645      	mov	r5, r8
    5c94:	b4e0      	push	{r5, r6, r7}
    5c96:	4e2a      	ldr	r6, [pc, #168]	; (5d40 <sysTimerTick+0xb4>)
    5c98:	6834      	ldr	r4, [r6, #0]
    5c9a:	2c00      	cmp	r4, #0
    5c9c:	d028      	beq.n	5cf0 <sysTimerTick+0x64>
    5c9e:	2200      	movs	r2, #0
    5ca0:	68a3      	ldr	r3, [r4, #8]
    5ca2:	4f28      	ldr	r7, [pc, #160]	; (5d44 <sysTimerTick+0xb8>)
    5ca4:	3b01      	subs	r3, #1
    5ca6:	60a3      	str	r3, [r4, #8]
    5ca8:	4690      	mov	r8, r2
    5caa:	2b00      	cmp	r3, #0
    5cac:	d120      	bne.n	5cf0 <sysTimerTick+0x64>
    5cae:	6825      	ldr	r5, [r4, #0]
    5cb0:	683b      	ldr	r3, [r7, #0]
    5cb2:	6035      	str	r5, [r6, #0]
    5cb4:	4699      	mov	r9, r3
    5cb6:	2b00      	cmp	r3, #0
    5cb8:	d003      	beq.n	5cc2 <sysTimerTick+0x36>
    5cba:	781b      	ldrb	r3, [r3, #0]
    5cbc:	469a      	mov	sl, r3
    5cbe:	2b01      	cmp	r3, #1
    5cc0:	d002      	beq.n	5cc8 <sysTimerTick+0x3c>
    5cc2:	2004      	movs	r0, #4
    5cc4:	f7fb fe40 	bl	1948 <os_error>
    5cc8:	4648      	mov	r0, r9
    5cca:	f001 fb63 	bl	7394 <rt_mbx_check>
    5cce:	2800      	cmp	r0, #0
    5cd0:	d0f7      	beq.n	5cc2 <sysTimerTick+0x36>
    5cd2:	0021      	movs	r1, r4
    5cd4:	4648      	mov	r0, r9
    5cd6:	f001 fb61 	bl	739c <isr_mbx_send>
    5cda:	7963      	ldrb	r3, [r4, #5]
    5cdc:	2b01      	cmp	r3, #1
    5cde:	d00c      	beq.n	5cfa <sysTimerTick+0x6e>
    5ce0:	4653      	mov	r3, sl
    5ce2:	7123      	strb	r3, [r4, #4]
    5ce4:	2d00      	cmp	r5, #0
    5ce6:	d003      	beq.n	5cf0 <sysTimerTick+0x64>
    5ce8:	68ab      	ldr	r3, [r5, #8]
    5cea:	002c      	movs	r4, r5
    5cec:	2b00      	cmp	r3, #0
    5cee:	d0de      	beq.n	5cae <sysTimerTick+0x22>
    5cf0:	bc1c      	pop	{r2, r3, r4}
    5cf2:	4690      	mov	r8, r2
    5cf4:	4699      	mov	r9, r3
    5cf6:	46a2      	mov	sl, r4
    5cf8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5cfa:	6830      	ldr	r0, [r6, #0]
    5cfc:	68e2      	ldr	r2, [r4, #12]
    5cfe:	2800      	cmp	r0, #0
    5d00:	d00b      	beq.n	5d1a <sysTimerTick+0x8e>
    5d02:	6881      	ldr	r1, [r0, #8]
    5d04:	4291      	cmp	r1, r2
    5d06:	d904      	bls.n	5d12 <sysTimerTick+0x86>
    5d08:	e00e      	b.n	5d28 <sysTimerTick+0x9c>
    5d0a:	6899      	ldr	r1, [r3, #8]
    5d0c:	4291      	cmp	r1, r2
    5d0e:	d80d      	bhi.n	5d2c <sysTimerTick+0xa0>
    5d10:	0018      	movs	r0, r3
    5d12:	6803      	ldr	r3, [r0, #0]
    5d14:	1a52      	subs	r2, r2, r1
    5d16:	2b00      	cmp	r3, #0
    5d18:	d1f7      	bne.n	5d0a <sysTimerTick+0x7e>
    5d1a:	4643      	mov	r3, r8
    5d1c:	60a2      	str	r2, [r4, #8]
    5d1e:	6023      	str	r3, [r4, #0]
    5d20:	2800      	cmp	r0, #0
    5d22:	d00a      	beq.n	5d3a <sysTimerTick+0xae>
    5d24:	6004      	str	r4, [r0, #0]
    5d26:	e7dd      	b.n	5ce4 <sysTimerTick+0x58>
    5d28:	0003      	movs	r3, r0
    5d2a:	2000      	movs	r0, #0
    5d2c:	60a2      	str	r2, [r4, #8]
    5d2e:	6899      	ldr	r1, [r3, #8]
    5d30:	6023      	str	r3, [r4, #0]
    5d32:	1a8a      	subs	r2, r1, r2
    5d34:	609a      	str	r2, [r3, #8]
    5d36:	2800      	cmp	r0, #0
    5d38:	d1f4      	bne.n	5d24 <sysTimerTick+0x98>
    5d3a:	6034      	str	r4, [r6, #0]
    5d3c:	e7d2      	b.n	5ce4 <sysTimerTick+0x58>
    5d3e:	46c0      	nop			; (mov r8, r8)
    5d40:	20006028 	.word	0x20006028
    5d44:	20004d10 	.word	0x20004d10

00005d48 <sysUserTimerWakeupTime>:
    5d48:	4b04      	ldr	r3, [pc, #16]	; (5d5c <sysUserTimerWakeupTime+0x14>)
    5d4a:	681b      	ldr	r3, [r3, #0]
    5d4c:	2b00      	cmp	r3, #0
    5d4e:	d001      	beq.n	5d54 <sysUserTimerWakeupTime+0xc>
    5d50:	6898      	ldr	r0, [r3, #8]
    5d52:	4770      	bx	lr
    5d54:	2001      	movs	r0, #1
    5d56:	4240      	negs	r0, r0
    5d58:	e7fb      	b.n	5d52 <sysUserTimerWakeupTime+0xa>
    5d5a:	46c0      	nop			; (mov r8, r8)
    5d5c:	20006028 	.word	0x20006028

00005d60 <sysUserTimerUpdate>:
    5d60:	b570      	push	{r4, r5, r6, lr}
    5d62:	4d0e      	ldr	r5, [pc, #56]	; (5d9c <sysUserTimerUpdate+0x3c>)
    5d64:	0004      	movs	r4, r0
    5d66:	682b      	ldr	r3, [r5, #0]
    5d68:	2b00      	cmp	r3, #0
    5d6a:	d012      	beq.n	5d92 <sysUserTimerUpdate+0x32>
    5d6c:	2800      	cmp	r0, #0
    5d6e:	d010      	beq.n	5d92 <sysUserTimerUpdate+0x32>
    5d70:	689a      	ldr	r2, [r3, #8]
    5d72:	2601      	movs	r6, #1
    5d74:	4290      	cmp	r0, r2
    5d76:	d205      	bcs.n	5d84 <sysUserTimerUpdate+0x24>
    5d78:	e00c      	b.n	5d94 <sysUserTimerUpdate+0x34>
    5d7a:	2c00      	cmp	r4, #0
    5d7c:	d009      	beq.n	5d92 <sysUserTimerUpdate+0x32>
    5d7e:	689a      	ldr	r2, [r3, #8]
    5d80:	42a2      	cmp	r2, r4
    5d82:	d807      	bhi.n	5d94 <sysUserTimerUpdate+0x34>
    5d84:	609e      	str	r6, [r3, #8]
    5d86:	1aa4      	subs	r4, r4, r2
    5d88:	f7ff ff80 	bl	5c8c <sysTimerTick>
    5d8c:	682b      	ldr	r3, [r5, #0]
    5d8e:	2b00      	cmp	r3, #0
    5d90:	d1f3      	bne.n	5d7a <sysUserTimerUpdate+0x1a>
    5d92:	bd70      	pop	{r4, r5, r6, pc}
    5d94:	1b14      	subs	r4, r2, r4
    5d96:	609c      	str	r4, [r3, #8]
    5d98:	e7fb      	b.n	5d92 <sysUserTimerUpdate+0x32>
    5d9a:	46c0      	nop			; (mov r8, r8)
    5d9c:	20006028 	.word	0x20006028

00005da0 <osTimerCreate>:
    5da0:	b5b0      	push	{r4, r5, r7, lr}
    5da2:	f3ef 8405 	mrs	r4, IPSR
    5da6:	2c00      	cmp	r4, #0
    5da8:	d124      	bne.n	5df4 <osTimerCreate+0x54>
    5daa:	f3ef 8414 	mrs	r4, CONTROL
    5dae:	2501      	movs	r5, #1
    5db0:	4225      	tst	r5, r4
    5db2:	d003      	beq.n	5dbc <osTimerCreate+0x1c>
    5db4:	4f12      	ldr	r7, [pc, #72]	; (5e00 <osTimerCreate+0x60>)
    5db6:	46bc      	mov	ip, r7
    5db8:	df00      	svc	0
    5dba:	bdb0      	pop	{r4, r5, r7, pc}
    5dbc:	4c0e      	ldr	r4, [pc, #56]	; (5df8 <osTimerCreate+0x58>)
    5dbe:	7824      	ldrb	r4, [r4, #0]
    5dc0:	2c00      	cmp	r4, #0
    5dc2:	d1f7      	bne.n	5db4 <osTimerCreate+0x14>
    5dc4:	2800      	cmp	r0, #0
    5dc6:	d015      	beq.n	5df4 <osTimerCreate+0x54>
    5dc8:	6803      	ldr	r3, [r0, #0]
    5dca:	2b00      	cmp	r3, #0
    5dcc:	d012      	beq.n	5df4 <osTimerCreate+0x54>
    5dce:	6843      	ldr	r3, [r0, #4]
    5dd0:	2b00      	cmp	r3, #0
    5dd2:	d00f      	beq.n	5df4 <osTimerCreate+0x54>
    5dd4:	2901      	cmp	r1, #1
    5dd6:	d80d      	bhi.n	5df4 <osTimerCreate+0x54>
    5dd8:	4c08      	ldr	r4, [pc, #32]	; (5dfc <osTimerCreate+0x5c>)
    5dda:	6824      	ldr	r4, [r4, #0]
    5ddc:	2c00      	cmp	r4, #0
    5dde:	d009      	beq.n	5df4 <osTimerCreate+0x54>
    5de0:	791c      	ldrb	r4, [r3, #4]
    5de2:	2c00      	cmp	r4, #0
    5de4:	d106      	bne.n	5df4 <osTimerCreate+0x54>
    5de6:	6158      	str	r0, [r3, #20]
    5de8:	601c      	str	r4, [r3, #0]
    5dea:	711d      	strb	r5, [r3, #4]
    5dec:	7159      	strb	r1, [r3, #5]
    5dee:	611a      	str	r2, [r3, #16]
    5df0:	0018      	movs	r0, r3
    5df2:	e7e2      	b.n	5dba <osTimerCreate+0x1a>
    5df4:	2000      	movs	r0, #0
    5df6:	e7e0      	b.n	5dba <osTimerCreate+0x1a>
    5df8:	20006025 	.word	0x20006025
    5dfc:	20004cec 	.word	0x20004cec
    5e00:	00005a99 	.word	0x00005a99

00005e04 <osTimerStart>:
    5e04:	b5b0      	push	{r4, r5, r7, lr}
    5e06:	0005      	movs	r5, r0
    5e08:	f3ef 8405 	mrs	r4, IPSR
    5e0c:	2082      	movs	r0, #130	; 0x82
    5e0e:	2c00      	cmp	r4, #0
    5e10:	d000      	beq.n	5e14 <osTimerStart+0x10>
    5e12:	bdb0      	pop	{r4, r5, r7, pc}
    5e14:	0028      	movs	r0, r5
    5e16:	4f02      	ldr	r7, [pc, #8]	; (5e20 <osTimerStart+0x1c>)
    5e18:	46bc      	mov	ip, r7
    5e1a:	df00      	svc	0
    5e1c:	e7f9      	b.n	5e12 <osTimerStart+0xe>
    5e1e:	0000      	.short	0x0000
    5e20:	00005ad5 	.word	0x00005ad5

00005e24 <osTimerStop>:
    5e24:	b5b0      	push	{r4, r5, r7, lr}
    5e26:	0005      	movs	r5, r0
    5e28:	f3ef 8405 	mrs	r4, IPSR
    5e2c:	2082      	movs	r0, #130	; 0x82
    5e2e:	2c00      	cmp	r4, #0
    5e30:	d000      	beq.n	5e34 <osTimerStop+0x10>
    5e32:	bdb0      	pop	{r4, r5, r7, pc}
    5e34:	0028      	movs	r0, r5
    5e36:	4f02      	ldr	r7, [pc, #8]	; (5e40 <osTimerStop+0x1c>)
    5e38:	46bc      	mov	ip, r7
    5e3a:	df00      	svc	0
    5e3c:	e7f9      	b.n	5e32 <osTimerStop+0xe>
    5e3e:	0000      	.short	0x0000
    5e40:	00005bb5 	.word	0x00005bb5

00005e44 <osTimerDelete>:
    5e44:	b5b0      	push	{r4, r5, r7, lr}
    5e46:	0005      	movs	r5, r0
    5e48:	f3ef 8405 	mrs	r4, IPSR
    5e4c:	2082      	movs	r0, #130	; 0x82
    5e4e:	2c00      	cmp	r4, #0
    5e50:	d000      	beq.n	5e54 <osTimerDelete+0x10>
    5e52:	bdb0      	pop	{r4, r5, r7, pc}
    5e54:	0028      	movs	r0, r5
    5e56:	4f02      	ldr	r7, [pc, #8]	; (5e60 <osTimerDelete+0x1c>)
    5e58:	46bc      	mov	ip, r7
    5e5a:	df00      	svc	0
    5e5c:	e7f9      	b.n	5e52 <osTimerDelete+0xe>
    5e5e:	0000      	.short	0x0000
    5e60:	00005c0d 	.word	0x00005c0d

00005e64 <osTimerCall>:
    5e64:	b590      	push	{r4, r7, lr}
    5e66:	0004      	movs	r4, r0
    5e68:	0008      	movs	r0, r1
    5e6a:	4f03      	ldr	r7, [pc, #12]	; (5e78 <osTimerCall+0x14>)
    5e6c:	46bc      	mov	ip, r7
    5e6e:	df00      	svc	0
    5e70:	6020      	str	r0, [r4, #0]
    5e72:	6061      	str	r1, [r4, #4]
    5e74:	0020      	movs	r0, r4
    5e76:	bd90      	pop	{r4, r7, pc}
    5e78:	00005c6d 	.word	0x00005c6d

00005e7c <osTimerThread>:
    5e7c:	b5b0      	push	{r4, r5, r7, lr}
    5e7e:	4d0a      	ldr	r5, [pc, #40]	; (5ea8 <osTimerThread+0x2c>)
    5e80:	6828      	ldr	r0, [r5, #0]
    5e82:	f3ef 8105 	mrs	r1, IPSR
    5e86:	2900      	cmp	r1, #0
    5e88:	d1fb      	bne.n	5e82 <osTimerThread+0x6>
    5e8a:	3901      	subs	r1, #1
    5e8c:	4f07      	ldr	r7, [pc, #28]	; (5eac <osTimerThread+0x30>)
    5e8e:	46bc      	mov	ip, r7
    5e90:	df00      	svc	0
    5e92:	2810      	cmp	r0, #16
    5e94:	d1f4      	bne.n	5e80 <osTimerThread+0x4>
    5e96:	0008      	movs	r0, r1
    5e98:	4f05      	ldr	r7, [pc, #20]	; (5eb0 <osTimerThread+0x34>)
    5e9a:	46bc      	mov	ip, r7
    5e9c:	df00      	svc	0
    5e9e:	1e04      	subs	r4, r0, #0
    5ea0:	d0ee      	beq.n	5e80 <osTimerThread+0x4>
    5ea2:	0008      	movs	r0, r1
    5ea4:	47a0      	blx	r4
    5ea6:	e7eb      	b.n	5e80 <osTimerThread+0x4>
    5ea8:	20004d10 	.word	0x20004d10
    5eac:	0000665d 	.word	0x0000665d
    5eb0:	00005c6d 	.word	0x00005c6d

00005eb4 <svcSignalSet>:
    5eb4:	b510      	push	{r4, lr}
    5eb6:	2800      	cmp	r0, #0
    5eb8:	d00e      	beq.n	5ed8 <svcSignalSet+0x24>
    5eba:	0783      	lsls	r3, r0, #30
    5ebc:	d10c      	bne.n	5ed8 <svcSignalSet+0x24>
    5ebe:	7803      	ldrb	r3, [r0, #0]
    5ec0:	2b00      	cmp	r3, #0
    5ec2:	d109      	bne.n	5ed8 <svcSignalSet+0x24>
    5ec4:	0c0b      	lsrs	r3, r1, #16
    5ec6:	d107      	bne.n	5ed8 <svcSignalSet+0x24>
    5ec8:	78c3      	ldrb	r3, [r0, #3]
    5eca:	8b04      	ldrh	r4, [r0, #24]
    5ecc:	b288      	uxth	r0, r1
    5ece:	0019      	movs	r1, r3
    5ed0:	f001 fcbe 	bl	7850 <rt_evt_set>
    5ed4:	0020      	movs	r0, r4
    5ed6:	e001      	b.n	5edc <svcSignalSet+0x28>
    5ed8:	2080      	movs	r0, #128	; 0x80
    5eda:	0600      	lsls	r0, r0, #24
    5edc:	bd10      	pop	{r4, pc}
    5ede:	46c0      	nop			; (mov r8, r8)

00005ee0 <svcSignalClear>:
    5ee0:	b510      	push	{r4, lr}
    5ee2:	2800      	cmp	r0, #0
    5ee4:	d00e      	beq.n	5f04 <svcSignalClear+0x24>
    5ee6:	0783      	lsls	r3, r0, #30
    5ee8:	d10c      	bne.n	5f04 <svcSignalClear+0x24>
    5eea:	7803      	ldrb	r3, [r0, #0]
    5eec:	2b00      	cmp	r3, #0
    5eee:	d109      	bne.n	5f04 <svcSignalClear+0x24>
    5ef0:	0c0b      	lsrs	r3, r1, #16
    5ef2:	d107      	bne.n	5f04 <svcSignalClear+0x24>
    5ef4:	78c3      	ldrb	r3, [r0, #3]
    5ef6:	8b04      	ldrh	r4, [r0, #24]
    5ef8:	b288      	uxth	r0, r1
    5efa:	0019      	movs	r1, r3
    5efc:	f001 fcd4 	bl	78a8 <rt_evt_clr>
    5f00:	0020      	movs	r0, r4
    5f02:	e001      	b.n	5f08 <svcSignalClear+0x28>
    5f04:	2080      	movs	r0, #128	; 0x80
    5f06:	0600      	lsls	r0, r0, #24
    5f08:	bd10      	pop	{r4, pc}
    5f0a:	46c0      	nop			; (mov r8, r8)

00005f0c <svcSignalWait>:
    5f0c:	b5f0      	push	{r4, r5, r6, r7, lr}
    5f0e:	0c04      	lsrs	r4, r0, #16
    5f10:	b083      	sub	sp, #12
    5f12:	0006      	movs	r6, r0
    5f14:	000d      	movs	r5, r1
    5f16:	0424      	lsls	r4, r4, #16
    5f18:	d149      	bne.n	5fae <svcSignalWait+0xa2>
    5f1a:	2800      	cmp	r0, #0
    5f1c:	d026      	beq.n	5f6c <svcSignalWait+0x60>
    5f1e:	b287      	uxth	r7, r0
    5f20:	2100      	movs	r1, #0
    5f22:	2d00      	cmp	r5, #0
    5f24:	d013      	beq.n	5f4e <svcSignalWait+0x42>
    5f26:	1c6b      	adds	r3, r5, #1
    5f28:	d05c      	beq.n	5fe4 <svcSignalWait+0xd8>
    5f2a:	4b2f      	ldr	r3, [pc, #188]	; (5fe8 <svcSignalWait+0xdc>)
    5f2c:	429d      	cmp	r5, r3
    5f2e:	d84f      	bhi.n	5fd0 <svcSignalWait+0xc4>
    5f30:	20fa      	movs	r0, #250	; 0xfa
    5f32:	4b2e      	ldr	r3, [pc, #184]	; (5fec <svcSignalWait+0xe0>)
    5f34:	0080      	lsls	r0, r0, #2
    5f36:	4368      	muls	r0, r5
    5f38:	681b      	ldr	r3, [r3, #0]
    5f3a:	9301      	str	r3, [sp, #4]
    5f3c:	3b01      	subs	r3, #1
    5f3e:	18c0      	adds	r0, r0, r3
    5f40:	9901      	ldr	r1, [sp, #4]
    5f42:	f7fe f9fd 	bl	4340 <__aeabi_uidiv>
    5f46:	4b2a      	ldr	r3, [pc, #168]	; (5ff0 <svcSignalWait+0xe4>)
    5f48:	0019      	movs	r1, r3
    5f4a:	4298      	cmp	r0, r3
    5f4c:	d946      	bls.n	5fdc <svcSignalWait+0xd0>
    5f4e:	2201      	movs	r2, #1
    5f50:	0038      	movs	r0, r7
    5f52:	f001 fc59 	bl	7808 <rt_evt_wait>
    5f56:	2802      	cmp	r0, #2
    5f58:	d035      	beq.n	5fc6 <svcSignalWait+0xba>
    5f5a:	0028      	movs	r0, r5
    5f5c:	1e45      	subs	r5, r0, #1
    5f5e:	41a8      	sbcs	r0, r5
    5f60:	0180      	lsls	r0, r0, #6
    5f62:	0021      	movs	r1, r4
    5f64:	2200      	movs	r2, #0
    5f66:	2300      	movs	r3, #0
    5f68:	b003      	add	sp, #12
    5f6a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5f6c:	2900      	cmp	r1, #0
    5f6e:	d021      	beq.n	5fb4 <svcSignalWait+0xa8>
    5f70:	1c4b      	adds	r3, r1, #1
    5f72:	d035      	beq.n	5fe0 <svcSignalWait+0xd4>
    5f74:	4b1c      	ldr	r3, [pc, #112]	; (5fe8 <svcSignalWait+0xdc>)
    5f76:	4299      	cmp	r1, r3
    5f78:	d82c      	bhi.n	5fd4 <svcSignalWait+0xc8>
    5f7a:	20fa      	movs	r0, #250	; 0xfa
    5f7c:	4b1b      	ldr	r3, [pc, #108]	; (5fec <svcSignalWait+0xe0>)
    5f7e:	0080      	lsls	r0, r0, #2
    5f80:	4348      	muls	r0, r1
    5f82:	681b      	ldr	r3, [r3, #0]
    5f84:	9301      	str	r3, [sp, #4]
    5f86:	3b01      	subs	r3, #1
    5f88:	18c0      	adds	r0, r0, r3
    5f8a:	9901      	ldr	r1, [sp, #4]
    5f8c:	f7fe f9d8 	bl	4340 <__aeabi_uidiv>
    5f90:	4b17      	ldr	r3, [pc, #92]	; (5ff0 <svcSignalWait+0xe4>)
    5f92:	0019      	movs	r1, r3
    5f94:	4298      	cmp	r0, r3
    5f96:	d91f      	bls.n	5fd8 <svcSignalWait+0xcc>
    5f98:	2200      	movs	r2, #0
    5f9a:	4816      	ldr	r0, [pc, #88]	; (5ff4 <svcSignalWait+0xe8>)
    5f9c:	f001 fc34 	bl	7808 <rt_evt_wait>
    5fa0:	2802      	cmp	r0, #2
    5fa2:	d113      	bne.n	5fcc <svcSignalWait+0xc0>
    5fa4:	4b14      	ldr	r3, [pc, #80]	; (5ff8 <svcSignalWait+0xec>)
    5fa6:	2008      	movs	r0, #8
    5fa8:	681b      	ldr	r3, [r3, #0]
    5faa:	8b5c      	ldrh	r4, [r3, #26]
    5fac:	e7d9      	b.n	5f62 <svcSignalWait+0x56>
    5fae:	2086      	movs	r0, #134	; 0x86
    5fb0:	2100      	movs	r1, #0
    5fb2:	e7d7      	b.n	5f64 <svcSignalWait+0x58>
    5fb4:	2200      	movs	r2, #0
    5fb6:	2100      	movs	r1, #0
    5fb8:	480e      	ldr	r0, [pc, #56]	; (5ff4 <svcSignalWait+0xe8>)
    5fba:	f001 fc25 	bl	7808 <rt_evt_wait>
    5fbe:	2802      	cmp	r0, #2
    5fc0:	d0f0      	beq.n	5fa4 <svcSignalWait+0x98>
    5fc2:	2000      	movs	r0, #0
    5fc4:	e7cd      	b.n	5f62 <svcSignalWait+0x56>
    5fc6:	0034      	movs	r4, r6
    5fc8:	2008      	movs	r0, #8
    5fca:	e7ca      	b.n	5f62 <svcSignalWait+0x56>
    5fcc:	2040      	movs	r0, #64	; 0x40
    5fce:	e7c8      	b.n	5f62 <svcSignalWait+0x56>
    5fd0:	4907      	ldr	r1, [pc, #28]	; (5ff0 <svcSignalWait+0xe4>)
    5fd2:	e7bc      	b.n	5f4e <svcSignalWait+0x42>
    5fd4:	4906      	ldr	r1, [pc, #24]	; (5ff0 <svcSignalWait+0xe4>)
    5fd6:	e7df      	b.n	5f98 <svcSignalWait+0x8c>
    5fd8:	b281      	uxth	r1, r0
    5fda:	e7dd      	b.n	5f98 <svcSignalWait+0x8c>
    5fdc:	b281      	uxth	r1, r0
    5fde:	e7b6      	b.n	5f4e <svcSignalWait+0x42>
    5fe0:	4904      	ldr	r1, [pc, #16]	; (5ff4 <svcSignalWait+0xe8>)
    5fe2:	e7d9      	b.n	5f98 <svcSignalWait+0x8c>
    5fe4:	4903      	ldr	r1, [pc, #12]	; (5ff4 <svcSignalWait+0xe8>)
    5fe6:	e7b2      	b.n	5f4e <svcSignalWait+0x42>
    5fe8:	003d0900 	.word	0x003d0900
    5fec:	000083f8 	.word	0x000083f8
    5ff0:	0000fffe 	.word	0x0000fffe
    5ff4:	0000ffff 	.word	0x0000ffff
    5ff8:	20006064 	.word	0x20006064

00005ffc <isrSignalSet>:
    5ffc:	b510      	push	{r4, lr}
    5ffe:	2800      	cmp	r0, #0
    6000:	d00e      	beq.n	6020 <isrSignalSet+0x24>
    6002:	0783      	lsls	r3, r0, #30
    6004:	d10c      	bne.n	6020 <isrSignalSet+0x24>
    6006:	7803      	ldrb	r3, [r0, #0]
    6008:	2b00      	cmp	r3, #0
    600a:	d109      	bne.n	6020 <isrSignalSet+0x24>
    600c:	0c0b      	lsrs	r3, r1, #16
    600e:	d107      	bne.n	6020 <isrSignalSet+0x24>
    6010:	78c3      	ldrb	r3, [r0, #3]
    6012:	8b04      	ldrh	r4, [r0, #24]
    6014:	b288      	uxth	r0, r1
    6016:	0019      	movs	r1, r3
    6018:	f001 fc52 	bl	78c0 <isr_evt_set>
    601c:	0020      	movs	r0, r4
    601e:	e001      	b.n	6024 <isrSignalSet+0x28>
    6020:	2080      	movs	r0, #128	; 0x80
    6022:	0600      	lsls	r0, r0, #24
    6024:	bd10      	pop	{r4, pc}
    6026:	46c0      	nop			; (mov r8, r8)

00006028 <osSignalSet>:
    6028:	b5b0      	push	{r4, r5, r7, lr}
    602a:	f3ef 8405 	mrs	r4, IPSR
    602e:	2c00      	cmp	r4, #0
    6030:	d103      	bne.n	603a <osSignalSet+0x12>
    6032:	4f0c      	ldr	r7, [pc, #48]	; (6064 <osSignalSet+0x3c>)
    6034:	46bc      	mov	ip, r7
    6036:	df00      	svc	0
    6038:	bdb0      	pop	{r4, r5, r7, pc}
    603a:	2800      	cmp	r0, #0
    603c:	d00e      	beq.n	605c <osSignalSet+0x34>
    603e:	0783      	lsls	r3, r0, #30
    6040:	d10c      	bne.n	605c <osSignalSet+0x34>
    6042:	7803      	ldrb	r3, [r0, #0]
    6044:	2b00      	cmp	r3, #0
    6046:	d109      	bne.n	605c <osSignalSet+0x34>
    6048:	0c0b      	lsrs	r3, r1, #16
    604a:	d107      	bne.n	605c <osSignalSet+0x34>
    604c:	78c3      	ldrb	r3, [r0, #3]
    604e:	8b04      	ldrh	r4, [r0, #24]
    6050:	b288      	uxth	r0, r1
    6052:	0019      	movs	r1, r3
    6054:	f001 fc34 	bl	78c0 <isr_evt_set>
    6058:	0020      	movs	r0, r4
    605a:	e7ed      	b.n	6038 <osSignalSet+0x10>
    605c:	2080      	movs	r0, #128	; 0x80
    605e:	0600      	lsls	r0, r0, #24
    6060:	e7ea      	b.n	6038 <osSignalSet+0x10>
    6062:	0000      	.short	0x0000
    6064:	00005eb5 	.word	0x00005eb5

00006068 <osSignalClear>:
    6068:	b590      	push	{r4, r7, lr}
    606a:	f3ef 8405 	mrs	r4, IPSR
    606e:	2c00      	cmp	r4, #0
    6070:	d103      	bne.n	607a <osSignalClear+0x12>
    6072:	4f03      	ldr	r7, [pc, #12]	; (6080 <osSignalClear+0x18>)
    6074:	46bc      	mov	ip, r7
    6076:	df00      	svc	0
    6078:	bd90      	pop	{r4, r7, pc}
    607a:	2080      	movs	r0, #128	; 0x80
    607c:	0600      	lsls	r0, r0, #24
    607e:	e7fb      	b.n	6078 <osSignalClear+0x10>
    6080:	00005ee1 	.word	0x00005ee1

00006084 <osSignalWait>:
    6084:	b5f0      	push	{r4, r5, r6, r7, lr}
    6086:	0004      	movs	r4, r0
    6088:	f3ef 8505 	mrs	r5, IPSR
    608c:	2d00      	cmp	r5, #0
    608e:	d109      	bne.n	60a4 <osSignalWait+0x20>
    6090:	0008      	movs	r0, r1
    6092:	0011      	movs	r1, r2
    6094:	4f05      	ldr	r7, [pc, #20]	; (60ac <osSignalWait+0x28>)
    6096:	46bc      	mov	ip, r7
    6098:	df00      	svc	0
    609a:	6020      	str	r0, [r4, #0]
    609c:	6061      	str	r1, [r4, #4]
    609e:	60a2      	str	r2, [r4, #8]
    60a0:	0020      	movs	r0, r4
    60a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    60a4:	2382      	movs	r3, #130	; 0x82
    60a6:	6003      	str	r3, [r0, #0]
    60a8:	e7fa      	b.n	60a0 <osSignalWait+0x1c>
    60aa:	0000      	.short	0x0000
    60ac:	00005f0d 	.word	0x00005f0d

000060b0 <svcMutexCreate>:
    60b0:	b510      	push	{r4, lr}
    60b2:	2800      	cmp	r0, #0
    60b4:	d00a      	beq.n	60cc <svcMutexCreate+0x1c>
    60b6:	6804      	ldr	r4, [r0, #0]
    60b8:	2c00      	cmp	r4, #0
    60ba:	d007      	beq.n	60cc <svcMutexCreate+0x1c>
    60bc:	7823      	ldrb	r3, [r4, #0]
    60be:	2b00      	cmp	r3, #0
    60c0:	d104      	bne.n	60cc <svcMutexCreate+0x1c>
    60c2:	0020      	movs	r0, r4
    60c4:	f000 feb4 	bl	6e30 <rt_mut_init>
    60c8:	0020      	movs	r0, r4
    60ca:	bd10      	pop	{r4, pc}
    60cc:	2000      	movs	r0, #0
    60ce:	e7fc      	b.n	60ca <svcMutexCreate+0x1a>

000060d0 <svcMutexWait>:
    60d0:	b510      	push	{r4, lr}
    60d2:	0004      	movs	r4, r0
    60d4:	b082      	sub	sp, #8
    60d6:	2080      	movs	r0, #128	; 0x80
    60d8:	07a3      	lsls	r3, r4, #30
    60da:	d104      	bne.n	60e6 <svcMutexWait+0x16>
    60dc:	2c00      	cmp	r4, #0
    60de:	d002      	beq.n	60e6 <svcMutexWait+0x16>
    60e0:	7823      	ldrb	r3, [r4, #0]
    60e2:	2b03      	cmp	r3, #3
    60e4:	d001      	beq.n	60ea <svcMutexWait+0x1a>
    60e6:	b002      	add	sp, #8
    60e8:	bd10      	pop	{r4, pc}
    60ea:	2900      	cmp	r1, #0
    60ec:	d01b      	beq.n	6126 <svcMutexWait+0x56>
    60ee:	1c4b      	adds	r3, r1, #1
    60f0:	d025      	beq.n	613e <svcMutexWait+0x6e>
    60f2:	4b16      	ldr	r3, [pc, #88]	; (614c <svcMutexWait+0x7c>)
    60f4:	4299      	cmp	r1, r3
    60f6:	d824      	bhi.n	6142 <svcMutexWait+0x72>
    60f8:	20fa      	movs	r0, #250	; 0xfa
    60fa:	4b15      	ldr	r3, [pc, #84]	; (6150 <svcMutexWait+0x80>)
    60fc:	0080      	lsls	r0, r0, #2
    60fe:	4341      	muls	r1, r0
    6100:	681b      	ldr	r3, [r3, #0]
    6102:	9301      	str	r3, [sp, #4]
    6104:	3b01      	subs	r3, #1
    6106:	1858      	adds	r0, r3, r1
    6108:	9901      	ldr	r1, [sp, #4]
    610a:	f7fe f919 	bl	4340 <__aeabi_uidiv>
    610e:	4b11      	ldr	r3, [pc, #68]	; (6154 <svcMutexWait+0x84>)
    6110:	0019      	movs	r1, r3
    6112:	4298      	cmp	r0, r3
    6114:	d917      	bls.n	6146 <svcMutexWait+0x76>
    6116:	0020      	movs	r0, r4
    6118:	f000 ff86 	bl	7028 <rt_mut_wait>
    611c:	0003      	movs	r3, r0
    611e:	2801      	cmp	r0, #1
    6120:	d108      	bne.n	6134 <svcMutexWait+0x64>
    6122:	20c1      	movs	r0, #193	; 0xc1
    6124:	e7df      	b.n	60e6 <svcMutexWait+0x16>
    6126:	2100      	movs	r1, #0
    6128:	0020      	movs	r0, r4
    612a:	f000 ff7d 	bl	7028 <rt_mut_wait>
    612e:	0003      	movs	r3, r0
    6130:	2801      	cmp	r0, #1
    6132:	d002      	beq.n	613a <svcMutexWait+0x6a>
    6134:	2000      	movs	r0, #0
    6136:	2bff      	cmp	r3, #255	; 0xff
    6138:	d1d5      	bne.n	60e6 <svcMutexWait+0x16>
    613a:	2081      	movs	r0, #129	; 0x81
    613c:	e7d3      	b.n	60e6 <svcMutexWait+0x16>
    613e:	4906      	ldr	r1, [pc, #24]	; (6158 <svcMutexWait+0x88>)
    6140:	e7e9      	b.n	6116 <svcMutexWait+0x46>
    6142:	4904      	ldr	r1, [pc, #16]	; (6154 <svcMutexWait+0x84>)
    6144:	e7e7      	b.n	6116 <svcMutexWait+0x46>
    6146:	b281      	uxth	r1, r0
    6148:	e7e5      	b.n	6116 <svcMutexWait+0x46>
    614a:	46c0      	nop			; (mov r8, r8)
    614c:	003d0900 	.word	0x003d0900
    6150:	000083f8 	.word	0x000083f8
    6154:	0000fffe 	.word	0x0000fffe
    6158:	0000ffff 	.word	0x0000ffff

0000615c <svcMutexRelease>:
    615c:	b510      	push	{r4, lr}
    615e:	2380      	movs	r3, #128	; 0x80
    6160:	0782      	lsls	r2, r0, #30
    6162:	d104      	bne.n	616e <svcMutexRelease+0x12>
    6164:	2800      	cmp	r0, #0
    6166:	d002      	beq.n	616e <svcMutexRelease+0x12>
    6168:	7802      	ldrb	r2, [r0, #0]
    616a:	2a03      	cmp	r2, #3
    616c:	d001      	beq.n	6172 <svcMutexRelease+0x16>
    616e:	0018      	movs	r0, r3
    6170:	bd10      	pop	{r4, pc}
    6172:	f000 fed5 	bl	6f20 <rt_mut_release>
    6176:	2381      	movs	r3, #129	; 0x81
    6178:	28ff      	cmp	r0, #255	; 0xff
    617a:	d0f8      	beq.n	616e <svcMutexRelease+0x12>
    617c:	2300      	movs	r3, #0
    617e:	e7f6      	b.n	616e <svcMutexRelease+0x12>

00006180 <svcMutexDelete>:
    6180:	b510      	push	{r4, lr}
    6182:	2380      	movs	r3, #128	; 0x80
    6184:	0782      	lsls	r2, r0, #30
    6186:	d104      	bne.n	6192 <svcMutexDelete+0x12>
    6188:	2800      	cmp	r0, #0
    618a:	d002      	beq.n	6192 <svcMutexDelete+0x12>
    618c:	7802      	ldrb	r2, [r0, #0]
    618e:	2a03      	cmp	r2, #3
    6190:	d001      	beq.n	6196 <svcMutexDelete+0x16>
    6192:	0018      	movs	r0, r3
    6194:	bd10      	pop	{r4, pc}
    6196:	f000 fe53 	bl	6e40 <rt_mut_delete>
    619a:	2300      	movs	r3, #0
    619c:	e7f9      	b.n	6192 <svcMutexDelete+0x12>
    619e:	46c0      	nop			; (mov r8, r8)

000061a0 <osMutexCreate>:
    61a0:	b5b0      	push	{r4, r5, r7, lr}
    61a2:	f3ef 8405 	mrs	r4, IPSR
    61a6:	2c00      	cmp	r4, #0
    61a8:	d119      	bne.n	61de <osMutexCreate+0x3e>
    61aa:	f3ef 8414 	mrs	r4, CONTROL
    61ae:	07e4      	lsls	r4, r4, #31
    61b0:	d411      	bmi.n	61d6 <osMutexCreate+0x36>
    61b2:	4c0c      	ldr	r4, [pc, #48]	; (61e4 <osMutexCreate+0x44>)
    61b4:	7824      	ldrb	r4, [r4, #0]
    61b6:	2c00      	cmp	r4, #0
    61b8:	d10d      	bne.n	61d6 <osMutexCreate+0x36>
    61ba:	2800      	cmp	r0, #0
    61bc:	d00f      	beq.n	61de <osMutexCreate+0x3e>
    61be:	6804      	ldr	r4, [r0, #0]
    61c0:	2c00      	cmp	r4, #0
    61c2:	d00c      	beq.n	61de <osMutexCreate+0x3e>
    61c4:	7823      	ldrb	r3, [r4, #0]
    61c6:	2000      	movs	r0, #0
    61c8:	2b00      	cmp	r3, #0
    61ca:	d107      	bne.n	61dc <osMutexCreate+0x3c>
    61cc:	0020      	movs	r0, r4
    61ce:	f000 fe2f 	bl	6e30 <rt_mut_init>
    61d2:	0020      	movs	r0, r4
    61d4:	e002      	b.n	61dc <osMutexCreate+0x3c>
    61d6:	4f04      	ldr	r7, [pc, #16]	; (61e8 <osMutexCreate+0x48>)
    61d8:	46bc      	mov	ip, r7
    61da:	df00      	svc	0
    61dc:	bdb0      	pop	{r4, r5, r7, pc}
    61de:	2000      	movs	r0, #0
    61e0:	e7fc      	b.n	61dc <osMutexCreate+0x3c>
    61e2:	46c0      	nop			; (mov r8, r8)
    61e4:	20006025 	.word	0x20006025
    61e8:	000060b1 	.word	0x000060b1

000061ec <osMutexWait>:
    61ec:	b5b0      	push	{r4, r5, r7, lr}
    61ee:	0005      	movs	r5, r0
    61f0:	f3ef 8405 	mrs	r4, IPSR
    61f4:	2082      	movs	r0, #130	; 0x82
    61f6:	2c00      	cmp	r4, #0
    61f8:	d000      	beq.n	61fc <osMutexWait+0x10>
    61fa:	bdb0      	pop	{r4, r5, r7, pc}
    61fc:	0028      	movs	r0, r5
    61fe:	4f02      	ldr	r7, [pc, #8]	; (6208 <osMutexWait+0x1c>)
    6200:	46bc      	mov	ip, r7
    6202:	df00      	svc	0
    6204:	e7f9      	b.n	61fa <osMutexWait+0xe>
    6206:	0000      	.short	0x0000
    6208:	000060d1 	.word	0x000060d1

0000620c <osMutexRelease>:
    620c:	b5b0      	push	{r4, r5, r7, lr}
    620e:	0005      	movs	r5, r0
    6210:	f3ef 8405 	mrs	r4, IPSR
    6214:	2082      	movs	r0, #130	; 0x82
    6216:	2c00      	cmp	r4, #0
    6218:	d000      	beq.n	621c <osMutexRelease+0x10>
    621a:	bdb0      	pop	{r4, r5, r7, pc}
    621c:	0028      	movs	r0, r5
    621e:	4f02      	ldr	r7, [pc, #8]	; (6228 <osMutexRelease+0x1c>)
    6220:	46bc      	mov	ip, r7
    6222:	df00      	svc	0
    6224:	e7f9      	b.n	621a <osMutexRelease+0xe>
    6226:	0000      	.short	0x0000
    6228:	0000615d 	.word	0x0000615d

0000622c <osMutexDelete>:
    622c:	b5b0      	push	{r4, r5, r7, lr}
    622e:	0005      	movs	r5, r0
    6230:	f3ef 8405 	mrs	r4, IPSR
    6234:	2082      	movs	r0, #130	; 0x82
    6236:	2c00      	cmp	r4, #0
    6238:	d000      	beq.n	623c <osMutexDelete+0x10>
    623a:	bdb0      	pop	{r4, r5, r7, pc}
    623c:	0028      	movs	r0, r5
    623e:	4f02      	ldr	r7, [pc, #8]	; (6248 <osMutexDelete+0x1c>)
    6240:	46bc      	mov	ip, r7
    6242:	df00      	svc	0
    6244:	e7f9      	b.n	623a <osMutexDelete+0xe>
    6246:	0000      	.short	0x0000
    6248:	00006181 	.word	0x00006181

0000624c <svcSemaphoreCreate>:
    624c:	b510      	push	{r4, lr}
    624e:	2800      	cmp	r0, #0
    6250:	d00e      	beq.n	6270 <svcSemaphoreCreate+0x24>
    6252:	6804      	ldr	r4, [r0, #0]
    6254:	2c00      	cmp	r4, #0
    6256:	d00b      	beq.n	6270 <svcSemaphoreCreate+0x24>
    6258:	7823      	ldrb	r3, [r4, #0]
    625a:	2b00      	cmp	r3, #0
    625c:	d108      	bne.n	6270 <svcSemaphoreCreate+0x24>
    625e:	4b05      	ldr	r3, [pc, #20]	; (6274 <svcSemaphoreCreate+0x28>)
    6260:	4299      	cmp	r1, r3
    6262:	dc05      	bgt.n	6270 <svcSemaphoreCreate+0x24>
    6264:	0020      	movs	r0, r4
    6266:	b289      	uxth	r1, r1
    6268:	f000 ff4a 	bl	7100 <rt_sem_init>
    626c:	0020      	movs	r0, r4
    626e:	bd10      	pop	{r4, pc}
    6270:	2000      	movs	r0, #0
    6272:	e7fc      	b.n	626e <svcSemaphoreCreate+0x22>
    6274:	0000ffff 	.word	0x0000ffff

00006278 <svcSemaphoreWait>:
    6278:	b510      	push	{r4, lr}
    627a:	0004      	movs	r4, r0
    627c:	b082      	sub	sp, #8
    627e:	0783      	lsls	r3, r0, #30
    6280:	d111      	bne.n	62a6 <svcSemaphoreWait+0x2e>
    6282:	2800      	cmp	r0, #0
    6284:	d00f      	beq.n	62a6 <svcSemaphoreWait+0x2e>
    6286:	7803      	ldrb	r3, [r0, #0]
    6288:	2b02      	cmp	r3, #2
    628a:	d10c      	bne.n	62a6 <svcSemaphoreWait+0x2e>
    628c:	2300      	movs	r3, #0
    628e:	2900      	cmp	r1, #0
    6290:	d10c      	bne.n	62ac <svcSemaphoreWait+0x34>
    6292:	0019      	movs	r1, r3
    6294:	0020      	movs	r0, r4
    6296:	f000 ff83 	bl	71a0 <rt_sem_wait>
    629a:	2801      	cmp	r0, #1
    629c:	d023      	beq.n	62e6 <svcSemaphoreWait+0x6e>
    629e:	8860      	ldrh	r0, [r4, #2]
    62a0:	3001      	adds	r0, #1
    62a2:	b002      	add	sp, #8
    62a4:	bd10      	pop	{r4, pc}
    62a6:	2001      	movs	r0, #1
    62a8:	4240      	negs	r0, r0
    62aa:	e7fa      	b.n	62a2 <svcSemaphoreWait+0x2a>
    62ac:	1c4b      	adds	r3, r1, #1
    62ae:	d01c      	beq.n	62ea <svcSemaphoreWait+0x72>
    62b0:	4b0f      	ldr	r3, [pc, #60]	; (62f0 <svcSemaphoreWait+0x78>)
    62b2:	4299      	cmp	r1, r3
    62b4:	d810      	bhi.n	62d8 <svcSemaphoreWait+0x60>
    62b6:	20fa      	movs	r0, #250	; 0xfa
    62b8:	4b0e      	ldr	r3, [pc, #56]	; (62f4 <svcSemaphoreWait+0x7c>)
    62ba:	0080      	lsls	r0, r0, #2
    62bc:	4341      	muls	r1, r0
    62be:	681b      	ldr	r3, [r3, #0]
    62c0:	9301      	str	r3, [sp, #4]
    62c2:	3b01      	subs	r3, #1
    62c4:	1858      	adds	r0, r3, r1
    62c6:	9901      	ldr	r1, [sp, #4]
    62c8:	f7fe f83a 	bl	4340 <__aeabi_uidiv>
    62cc:	4a0a      	ldr	r2, [pc, #40]	; (62f8 <svcSemaphoreWait+0x80>)
    62ce:	0013      	movs	r3, r2
    62d0:	4290      	cmp	r0, r2
    62d2:	d8de      	bhi.n	6292 <svcSemaphoreWait+0x1a>
    62d4:	b283      	uxth	r3, r0
    62d6:	e7dc      	b.n	6292 <svcSemaphoreWait+0x1a>
    62d8:	4b07      	ldr	r3, [pc, #28]	; (62f8 <svcSemaphoreWait+0x80>)
    62da:	0020      	movs	r0, r4
    62dc:	0019      	movs	r1, r3
    62de:	f000 ff5f 	bl	71a0 <rt_sem_wait>
    62e2:	2801      	cmp	r0, #1
    62e4:	d1db      	bne.n	629e <svcSemaphoreWait+0x26>
    62e6:	2000      	movs	r0, #0
    62e8:	e7db      	b.n	62a2 <svcSemaphoreWait+0x2a>
    62ea:	4b04      	ldr	r3, [pc, #16]	; (62fc <svcSemaphoreWait+0x84>)
    62ec:	e7d1      	b.n	6292 <svcSemaphoreWait+0x1a>
    62ee:	46c0      	nop			; (mov r8, r8)
    62f0:	003d0900 	.word	0x003d0900
    62f4:	000083f8 	.word	0x000083f8
    62f8:	0000fffe 	.word	0x0000fffe
    62fc:	0000ffff 	.word	0x0000ffff

00006300 <svcSemaphoreRelease>:
    6300:	b510      	push	{r4, lr}
    6302:	2380      	movs	r3, #128	; 0x80
    6304:	0782      	lsls	r2, r0, #30
    6306:	d104      	bne.n	6312 <svcSemaphoreRelease+0x12>
    6308:	2800      	cmp	r0, #0
    630a:	d002      	beq.n	6312 <svcSemaphoreRelease+0x12>
    630c:	7802      	ldrb	r2, [r0, #0]
    630e:	2a02      	cmp	r2, #2
    6310:	d001      	beq.n	6316 <svcSemaphoreRelease+0x16>
    6312:	0018      	movs	r0, r3
    6314:	bd10      	pop	{r4, pc}
    6316:	8841      	ldrh	r1, [r0, #2]
    6318:	4a03      	ldr	r2, [pc, #12]	; (6328 <svcSemaphoreRelease+0x28>)
    631a:	3301      	adds	r3, #1
    631c:	4291      	cmp	r1, r2
    631e:	d0f8      	beq.n	6312 <svcSemaphoreRelease+0x12>
    6320:	f000 ff28 	bl	7174 <rt_sem_send>
    6324:	2300      	movs	r3, #0
    6326:	e7f4      	b.n	6312 <svcSemaphoreRelease+0x12>
    6328:	0000ffff 	.word	0x0000ffff

0000632c <svcSemaphoreDelete>:
    632c:	b510      	push	{r4, lr}
    632e:	2380      	movs	r3, #128	; 0x80
    6330:	0782      	lsls	r2, r0, #30
    6332:	d104      	bne.n	633e <svcSemaphoreDelete+0x12>
    6334:	2800      	cmp	r0, #0
    6336:	d002      	beq.n	633e <svcSemaphoreDelete+0x12>
    6338:	7802      	ldrb	r2, [r0, #0]
    633a:	2a02      	cmp	r2, #2
    633c:	d001      	beq.n	6342 <svcSemaphoreDelete+0x16>
    633e:	0018      	movs	r0, r3
    6340:	bd10      	pop	{r4, pc}
    6342:	f000 fee3 	bl	710c <rt_sem_delete>
    6346:	2300      	movs	r3, #0
    6348:	e7f9      	b.n	633e <svcSemaphoreDelete+0x12>
    634a:	46c0      	nop			; (mov r8, r8)

0000634c <isrSemaphoreRelease>:
    634c:	b510      	push	{r4, lr}
    634e:	2380      	movs	r3, #128	; 0x80
    6350:	0782      	lsls	r2, r0, #30
    6352:	d104      	bne.n	635e <isrSemaphoreRelease+0x12>
    6354:	2800      	cmp	r0, #0
    6356:	d002      	beq.n	635e <isrSemaphoreRelease+0x12>
    6358:	7802      	ldrb	r2, [r0, #0]
    635a:	2a02      	cmp	r2, #2
    635c:	d001      	beq.n	6362 <isrSemaphoreRelease+0x16>
    635e:	0018      	movs	r0, r3
    6360:	bd10      	pop	{r4, pc}
    6362:	8841      	ldrh	r1, [r0, #2]
    6364:	4a03      	ldr	r2, [pc, #12]	; (6374 <isrSemaphoreRelease+0x28>)
    6366:	3301      	adds	r3, #1
    6368:	4291      	cmp	r1, r2
    636a:	d0f8      	beq.n	635e <isrSemaphoreRelease+0x12>
    636c:	f000 ff3a 	bl	71e4 <isr_sem_send>
    6370:	2300      	movs	r3, #0
    6372:	e7f4      	b.n	635e <isrSemaphoreRelease+0x12>
    6374:	0000ffff 	.word	0x0000ffff

00006378 <osSemaphoreCreate>:
    6378:	b5b0      	push	{r4, r5, r7, lr}
    637a:	f3ef 8405 	mrs	r4, IPSR
    637e:	2c00      	cmp	r4, #0
    6380:	d11c      	bne.n	63bc <osSemaphoreCreate+0x44>
    6382:	f3ef 8414 	mrs	r4, CONTROL
    6386:	07e4      	lsls	r4, r4, #31
    6388:	d503      	bpl.n	6392 <osSemaphoreCreate+0x1a>
    638a:	4f0f      	ldr	r7, [pc, #60]	; (63c8 <osSemaphoreCreate+0x50>)
    638c:	46bc      	mov	ip, r7
    638e:	df00      	svc	0
    6390:	bdb0      	pop	{r4, r5, r7, pc}
    6392:	4c0b      	ldr	r4, [pc, #44]	; (63c0 <osSemaphoreCreate+0x48>)
    6394:	7824      	ldrb	r4, [r4, #0]
    6396:	2c00      	cmp	r4, #0
    6398:	d1f7      	bne.n	638a <osSemaphoreCreate+0x12>
    639a:	2800      	cmp	r0, #0
    639c:	d00e      	beq.n	63bc <osSemaphoreCreate+0x44>
    639e:	6804      	ldr	r4, [r0, #0]
    63a0:	2c00      	cmp	r4, #0
    63a2:	d00b      	beq.n	63bc <osSemaphoreCreate+0x44>
    63a4:	7823      	ldrb	r3, [r4, #0]
    63a6:	2b00      	cmp	r3, #0
    63a8:	d108      	bne.n	63bc <osSemaphoreCreate+0x44>
    63aa:	4b06      	ldr	r3, [pc, #24]	; (63c4 <osSemaphoreCreate+0x4c>)
    63ac:	4299      	cmp	r1, r3
    63ae:	dc05      	bgt.n	63bc <osSemaphoreCreate+0x44>
    63b0:	0020      	movs	r0, r4
    63b2:	b289      	uxth	r1, r1
    63b4:	f000 fea4 	bl	7100 <rt_sem_init>
    63b8:	0020      	movs	r0, r4
    63ba:	e7e9      	b.n	6390 <osSemaphoreCreate+0x18>
    63bc:	2000      	movs	r0, #0
    63be:	e7e7      	b.n	6390 <osSemaphoreCreate+0x18>
    63c0:	20006025 	.word	0x20006025
    63c4:	0000ffff 	.word	0x0000ffff
    63c8:	0000624d 	.word	0x0000624d

000063cc <osSemaphoreWait>:
    63cc:	b590      	push	{r4, r7, lr}
    63ce:	f3ef 8405 	mrs	r4, IPSR
    63d2:	2c00      	cmp	r4, #0
    63d4:	d103      	bne.n	63de <osSemaphoreWait+0x12>
    63d6:	4f03      	ldr	r7, [pc, #12]	; (63e4 <osSemaphoreWait+0x18>)
    63d8:	46bc      	mov	ip, r7
    63da:	df00      	svc	0
    63dc:	bd90      	pop	{r4, r7, pc}
    63de:	2001      	movs	r0, #1
    63e0:	4240      	negs	r0, r0
    63e2:	e7fb      	b.n	63dc <osSemaphoreWait+0x10>
    63e4:	00006279 	.word	0x00006279

000063e8 <osSemaphoreRelease>:
    63e8:	b5b0      	push	{r4, r5, r7, lr}
    63ea:	f3ef 8405 	mrs	r4, IPSR
    63ee:	2c00      	cmp	r4, #0
    63f0:	d105      	bne.n	63fe <osSemaphoreRelease+0x16>
    63f2:	4f0c      	ldr	r7, [pc, #48]	; (6424 <osSemaphoreRelease+0x3c>)
    63f4:	46bc      	mov	ip, r7
    63f6:	df00      	svc	0
    63f8:	0003      	movs	r3, r0
    63fa:	0018      	movs	r0, r3
    63fc:	bdb0      	pop	{r4, r5, r7, pc}
    63fe:	2380      	movs	r3, #128	; 0x80
    6400:	0782      	lsls	r2, r0, #30
    6402:	d1fa      	bne.n	63fa <osSemaphoreRelease+0x12>
    6404:	2800      	cmp	r0, #0
    6406:	d0f8      	beq.n	63fa <osSemaphoreRelease+0x12>
    6408:	7802      	ldrb	r2, [r0, #0]
    640a:	2a02      	cmp	r2, #2
    640c:	d1f5      	bne.n	63fa <osSemaphoreRelease+0x12>
    640e:	8841      	ldrh	r1, [r0, #2]
    6410:	4a03      	ldr	r2, [pc, #12]	; (6420 <osSemaphoreRelease+0x38>)
    6412:	3301      	adds	r3, #1
    6414:	4291      	cmp	r1, r2
    6416:	d0f0      	beq.n	63fa <osSemaphoreRelease+0x12>
    6418:	f000 fee4 	bl	71e4 <isr_sem_send>
    641c:	2300      	movs	r3, #0
    641e:	e7ec      	b.n	63fa <osSemaphoreRelease+0x12>
    6420:	0000ffff 	.word	0x0000ffff
    6424:	00006301 	.word	0x00006301

00006428 <osSemaphoreDelete>:
    6428:	b5b0      	push	{r4, r5, r7, lr}
    642a:	0005      	movs	r5, r0
    642c:	f3ef 8405 	mrs	r4, IPSR
    6430:	2082      	movs	r0, #130	; 0x82
    6432:	2c00      	cmp	r4, #0
    6434:	d000      	beq.n	6438 <osSemaphoreDelete+0x10>
    6436:	bdb0      	pop	{r4, r5, r7, pc}
    6438:	0028      	movs	r0, r5
    643a:	4f02      	ldr	r7, [pc, #8]	; (6444 <osSemaphoreDelete+0x1c>)
    643c:	46bc      	mov	ip, r7
    643e:	df00      	svc	0
    6440:	e7f9      	b.n	6436 <osSemaphoreDelete+0xe>
    6442:	0000      	.short	0x0000
    6444:	0000632d 	.word	0x0000632d

00006448 <svcPoolCreate>:
    6448:	b510      	push	{r4, lr}
    644a:	1e04      	subs	r4, r0, #0
    644c:	d011      	beq.n	6472 <svcPoolCreate+0x2a>
    644e:	6801      	ldr	r1, [r0, #0]
    6450:	2900      	cmp	r1, #0
    6452:	d00e      	beq.n	6472 <svcPoolCreate+0x2a>
    6454:	6842      	ldr	r2, [r0, #4]
    6456:	2a00      	cmp	r2, #0
    6458:	d00b      	beq.n	6472 <svcPoolCreate+0x2a>
    645a:	6880      	ldr	r0, [r0, #8]
    645c:	2800      	cmp	r0, #0
    645e:	d008      	beq.n	6472 <svcPoolCreate+0x2a>
    6460:	2303      	movs	r3, #3
    6462:	3203      	adds	r2, #3
    6464:	439a      	bics	r2, r3
    6466:	4351      	muls	r1, r2
    6468:	310c      	adds	r1, #12
    646a:	f000 fc81 	bl	6d70 <_init_box>
    646e:	68a0      	ldr	r0, [r4, #8]
    6470:	bd10      	pop	{r4, pc}
    6472:	2000      	movs	r0, #0
    6474:	e7fc      	b.n	6470 <svcPoolCreate+0x28>
    6476:	46c0      	nop			; (mov r8, r8)

00006478 <sysPoolAlloc>:
    6478:	b510      	push	{r4, lr}
    647a:	2800      	cmp	r0, #0
    647c:	d002      	beq.n	6484 <sysPoolAlloc+0xc>
    647e:	f000 fca3 	bl	6dc8 <rt_alloc_box>
    6482:	bd10      	pop	{r4, pc}
    6484:	2000      	movs	r0, #0
    6486:	e7fc      	b.n	6482 <sysPoolAlloc+0xa>

00006488 <sysPoolFree>:
    6488:	b510      	push	{r4, lr}
    648a:	2380      	movs	r3, #128	; 0x80
    648c:	2800      	cmp	r0, #0
    648e:	d006      	beq.n	649e <sysPoolFree+0x16>
    6490:	f000 fcba 	bl	6e08 <rt_free_box>
    6494:	1e42      	subs	r2, r0, #1
    6496:	4190      	sbcs	r0, r2
    6498:	2386      	movs	r3, #134	; 0x86
    649a:	4240      	negs	r0, r0
    649c:	4003      	ands	r3, r0
    649e:	0018      	movs	r0, r3
    64a0:	bd10      	pop	{r4, pc}
    64a2:	46c0      	nop			; (mov r8, r8)

000064a4 <osPoolCreate>:
    64a4:	b5b0      	push	{r4, r5, r7, lr}
    64a6:	0004      	movs	r4, r0
    64a8:	f3ef 8005 	mrs	r0, IPSR
    64ac:	2800      	cmp	r0, #0
    64ae:	d120      	bne.n	64f2 <osPoolCreate+0x4e>
    64b0:	f3ef 8014 	mrs	r0, CONTROL
    64b4:	07c0      	lsls	r0, r0, #31
    64b6:	d504      	bpl.n	64c2 <osPoolCreate+0x1e>
    64b8:	0020      	movs	r0, r4
    64ba:	4f10      	ldr	r7, [pc, #64]	; (64fc <osPoolCreate+0x58>)
    64bc:	46bc      	mov	ip, r7
    64be:	df00      	svc	0
    64c0:	bdb0      	pop	{r4, r5, r7, pc}
    64c2:	480d      	ldr	r0, [pc, #52]	; (64f8 <osPoolCreate+0x54>)
    64c4:	7800      	ldrb	r0, [r0, #0]
    64c6:	2800      	cmp	r0, #0
    64c8:	d1f6      	bne.n	64b8 <osPoolCreate+0x14>
    64ca:	2c00      	cmp	r4, #0
    64cc:	d011      	beq.n	64f2 <osPoolCreate+0x4e>
    64ce:	6821      	ldr	r1, [r4, #0]
    64d0:	2900      	cmp	r1, #0
    64d2:	d00e      	beq.n	64f2 <osPoolCreate+0x4e>
    64d4:	6862      	ldr	r2, [r4, #4]
    64d6:	2a00      	cmp	r2, #0
    64d8:	d00b      	beq.n	64f2 <osPoolCreate+0x4e>
    64da:	68a0      	ldr	r0, [r4, #8]
    64dc:	2800      	cmp	r0, #0
    64de:	d008      	beq.n	64f2 <osPoolCreate+0x4e>
    64e0:	2303      	movs	r3, #3
    64e2:	3203      	adds	r2, #3
    64e4:	439a      	bics	r2, r3
    64e6:	4351      	muls	r1, r2
    64e8:	310c      	adds	r1, #12
    64ea:	f000 fc41 	bl	6d70 <_init_box>
    64ee:	68a0      	ldr	r0, [r4, #8]
    64f0:	e7e6      	b.n	64c0 <osPoolCreate+0x1c>
    64f2:	2000      	movs	r0, #0
    64f4:	e7e4      	b.n	64c0 <osPoolCreate+0x1c>
    64f6:	46c0      	nop			; (mov r8, r8)
    64f8:	20006025 	.word	0x20006025
    64fc:	00006449 	.word	0x00006449

00006500 <osPoolAlloc>:
    6500:	b5b0      	push	{r4, r5, r7, lr}
    6502:	f3ef 8405 	mrs	r4, IPSR
    6506:	2c00      	cmp	r4, #0
    6508:	d103      	bne.n	6512 <osPoolAlloc+0x12>
    650a:	f3ef 8414 	mrs	r4, CONTROL
    650e:	07e4      	lsls	r4, r4, #31
    6510:	d404      	bmi.n	651c <osPoolAlloc+0x1c>
    6512:	2800      	cmp	r0, #0
    6514:	d006      	beq.n	6524 <osPoolAlloc+0x24>
    6516:	f000 fc57 	bl	6dc8 <rt_alloc_box>
    651a:	bdb0      	pop	{r4, r5, r7, pc}
    651c:	4f02      	ldr	r7, [pc, #8]	; (6528 <osPoolAlloc+0x28>)
    651e:	46bc      	mov	ip, r7
    6520:	df00      	svc	0
    6522:	e7fa      	b.n	651a <osPoolAlloc+0x1a>
    6524:	2000      	movs	r0, #0
    6526:	e7f8      	b.n	651a <osPoolAlloc+0x1a>
    6528:	00006479 	.word	0x00006479

0000652c <osPoolCAlloc>:
    652c:	b5b0      	push	{r4, r5, r7, lr}
    652e:	0004      	movs	r4, r0
    6530:	f3ef 8005 	mrs	r0, IPSR
    6534:	2800      	cmp	r0, #0
    6536:	d103      	bne.n	6540 <osPoolCAlloc+0x14>
    6538:	f3ef 8014 	mrs	r0, CONTROL
    653c:	07c0      	lsls	r0, r0, #31
    653e:	d410      	bmi.n	6562 <osPoolCAlloc+0x36>
    6540:	2c00      	cmp	r4, #0
    6542:	d015      	beq.n	6570 <osPoolCAlloc+0x44>
    6544:	0020      	movs	r0, r4
    6546:	f000 fc3f 	bl	6dc8 <rt_alloc_box>
    654a:	2800      	cmp	r0, #0
    654c:	d010      	beq.n	6570 <osPoolCAlloc+0x44>
    654e:	68a3      	ldr	r3, [r4, #8]
    6550:	2b00      	cmp	r3, #0
    6552:	d005      	beq.n	6560 <osPoolCAlloc+0x34>
    6554:	0002      	movs	r2, r0
    6556:	2100      	movs	r1, #0
    6558:	3b04      	subs	r3, #4
    655a:	c202      	stmia	r2!, {r1}
    655c:	2b00      	cmp	r3, #0
    655e:	d1fb      	bne.n	6558 <osPoolCAlloc+0x2c>
    6560:	bdb0      	pop	{r4, r5, r7, pc}
    6562:	0020      	movs	r0, r4
    6564:	4f03      	ldr	r7, [pc, #12]	; (6574 <osPoolCAlloc+0x48>)
    6566:	46bc      	mov	ip, r7
    6568:	df00      	svc	0
    656a:	2c00      	cmp	r4, #0
    656c:	d1ed      	bne.n	654a <osPoolCAlloc+0x1e>
    656e:	e7f7      	b.n	6560 <osPoolCAlloc+0x34>
    6570:	2000      	movs	r0, #0
    6572:	e7f5      	b.n	6560 <osPoolCAlloc+0x34>
    6574:	00006479 	.word	0x00006479

00006578 <osPoolFree>:
    6578:	b5b0      	push	{r4, r5, r7, lr}
    657a:	f3ef 8405 	mrs	r4, IPSR
    657e:	2c00      	cmp	r4, #0
    6580:	d103      	bne.n	658a <osPoolFree+0x12>
    6582:	f3ef 8414 	mrs	r4, CONTROL
    6586:	07e4      	lsls	r4, r4, #31
    6588:	d40a      	bmi.n	65a0 <osPoolFree+0x28>
    658a:	2800      	cmp	r0, #0
    658c:	d00c      	beq.n	65a8 <osPoolFree+0x30>
    658e:	f000 fc3b 	bl	6e08 <rt_free_box>
    6592:	0003      	movs	r3, r0
    6594:	1e5a      	subs	r2, r3, #1
    6596:	4193      	sbcs	r3, r2
    6598:	2086      	movs	r0, #134	; 0x86
    659a:	425b      	negs	r3, r3
    659c:	4018      	ands	r0, r3
    659e:	bdb0      	pop	{r4, r5, r7, pc}
    65a0:	4f02      	ldr	r7, [pc, #8]	; (65ac <osPoolFree+0x34>)
    65a2:	46bc      	mov	ip, r7
    65a4:	df00      	svc	0
    65a6:	e7fa      	b.n	659e <osPoolFree+0x26>
    65a8:	2080      	movs	r0, #128	; 0x80
    65aa:	e7f8      	b.n	659e <osPoolFree+0x26>
    65ac:	00006489 	.word	0x00006489

000065b0 <svcMessageCreate>:
    65b0:	b510      	push	{r4, lr}
    65b2:	1e04      	subs	r4, r0, #0
    65b4:	d00f      	beq.n	65d6 <svcMessageCreate+0x26>
    65b6:	6801      	ldr	r1, [r0, #0]
    65b8:	2900      	cmp	r1, #0
    65ba:	d00c      	beq.n	65d6 <svcMessageCreate+0x26>
    65bc:	6840      	ldr	r0, [r0, #4]
    65be:	2800      	cmp	r0, #0
    65c0:	d009      	beq.n	65d6 <svcMessageCreate+0x26>
    65c2:	7803      	ldrb	r3, [r0, #0]
    65c4:	2b00      	cmp	r3, #0
    65c6:	d106      	bne.n	65d6 <svcMessageCreate+0x26>
    65c8:	3104      	adds	r1, #4
    65ca:	0089      	lsls	r1, r1, #2
    65cc:	b289      	uxth	r1, r1
    65ce:	f000 fe2b 	bl	7228 <rt_mbx_init>
    65d2:	6860      	ldr	r0, [r4, #4]
    65d4:	bd10      	pop	{r4, pc}
    65d6:	2000      	movs	r0, #0
    65d8:	e7fc      	b.n	65d4 <svcMessageCreate+0x24>
    65da:	46c0      	nop			; (mov r8, r8)

000065dc <svcMessagePut>:
    65dc:	b570      	push	{r4, r5, r6, lr}
    65de:	0004      	movs	r4, r0
    65e0:	b082      	sub	sp, #8
    65e2:	000e      	movs	r6, r1
    65e4:	0015      	movs	r5, r2
    65e6:	2800      	cmp	r0, #0
    65e8:	d005      	beq.n	65f6 <svcMessagePut+0x1a>
    65ea:	7803      	ldrb	r3, [r0, #0]
    65ec:	2080      	movs	r0, #128	; 0x80
    65ee:	2b01      	cmp	r3, #1
    65f0:	d003      	beq.n	65fa <svcMessagePut+0x1e>
    65f2:	b002      	add	sp, #8
    65f4:	bd70      	pop	{r4, r5, r6, pc}
    65f6:	2080      	movs	r0, #128	; 0x80
    65f8:	e7fb      	b.n	65f2 <svcMessagePut+0x16>
    65fa:	2200      	movs	r2, #0
    65fc:	2d00      	cmp	r5, #0
    65fe:	d014      	beq.n	662a <svcMessagePut+0x4e>
    6600:	1c6b      	adds	r3, r5, #1
    6602:	d01f      	beq.n	6644 <svcMessagePut+0x68>
    6604:	4b11      	ldr	r3, [pc, #68]	; (664c <svcMessagePut+0x70>)
    6606:	429d      	cmp	r5, r3
    6608:	d81e      	bhi.n	6648 <svcMessagePut+0x6c>
    660a:	20fa      	movs	r0, #250	; 0xfa
    660c:	4b10      	ldr	r3, [pc, #64]	; (6650 <svcMessagePut+0x74>)
    660e:	0080      	lsls	r0, r0, #2
    6610:	4368      	muls	r0, r5
    6612:	681b      	ldr	r3, [r3, #0]
    6614:	9301      	str	r3, [sp, #4]
    6616:	3b01      	subs	r3, #1
    6618:	18c0      	adds	r0, r0, r3
    661a:	9901      	ldr	r1, [sp, #4]
    661c:	f7fd fe90 	bl	4340 <__aeabi_uidiv>
    6620:	4b0c      	ldr	r3, [pc, #48]	; (6654 <svcMessagePut+0x78>)
    6622:	001a      	movs	r2, r3
    6624:	4298      	cmp	r0, r3
    6626:	d800      	bhi.n	662a <svcMessagePut+0x4e>
    6628:	b282      	uxth	r2, r0
    662a:	0031      	movs	r1, r6
    662c:	0020      	movs	r0, r4
    662e:	f000 fe09 	bl	7244 <rt_mbx_send>
    6632:	0003      	movs	r3, r0
    6634:	2000      	movs	r0, #0
    6636:	2b01      	cmp	r3, #1
    6638:	d1db      	bne.n	65f2 <svcMessagePut+0x16>
    663a:	30c1      	adds	r0, #193	; 0xc1
    663c:	2d00      	cmp	r5, #0
    663e:	d1d8      	bne.n	65f2 <svcMessagePut+0x16>
    6640:	3840      	subs	r0, #64	; 0x40
    6642:	e7d6      	b.n	65f2 <svcMessagePut+0x16>
    6644:	4a04      	ldr	r2, [pc, #16]	; (6658 <svcMessagePut+0x7c>)
    6646:	e7f0      	b.n	662a <svcMessagePut+0x4e>
    6648:	4a02      	ldr	r2, [pc, #8]	; (6654 <svcMessagePut+0x78>)
    664a:	e7ee      	b.n	662a <svcMessagePut+0x4e>
    664c:	003d0900 	.word	0x003d0900
    6650:	000083f8 	.word	0x000083f8
    6654:	0000fffe 	.word	0x0000fffe
    6658:	0000ffff 	.word	0x0000ffff

0000665c <svcMessageGet>:
    665c:	b510      	push	{r4, lr}
    665e:	0004      	movs	r4, r0
    6660:	b086      	sub	sp, #24
    6662:	2800      	cmp	r0, #0
    6664:	d002      	beq.n	666c <svcMessageGet+0x10>
    6666:	7803      	ldrb	r3, [r0, #0]
    6668:	2b01      	cmp	r3, #1
    666a:	d005      	beq.n	6678 <svcMessageGet+0x1c>
    666c:	2080      	movs	r0, #128	; 0x80
    666e:	2100      	movs	r1, #0
    6670:	2200      	movs	r2, #0
    6672:	2300      	movs	r3, #0
    6674:	b006      	add	sp, #24
    6676:	bd10      	pop	{r4, pc}
    6678:	2900      	cmp	r1, #0
    667a:	d01c      	beq.n	66b6 <svcMessageGet+0x5a>
    667c:	1c4b      	adds	r3, r1, #1
    667e:	d02a      	beq.n	66d6 <svcMessageGet+0x7a>
    6680:	4b16      	ldr	r3, [pc, #88]	; (66dc <svcMessageGet+0x80>)
    6682:	4299      	cmp	r1, r3
    6684:	d820      	bhi.n	66c8 <svcMessageGet+0x6c>
    6686:	20fa      	movs	r0, #250	; 0xfa
    6688:	4b15      	ldr	r3, [pc, #84]	; (66e0 <svcMessageGet+0x84>)
    668a:	0080      	lsls	r0, r0, #2
    668c:	4341      	muls	r1, r0
    668e:	681b      	ldr	r3, [r3, #0]
    6690:	9301      	str	r3, [sp, #4]
    6692:	3b01      	subs	r3, #1
    6694:	1858      	adds	r0, r3, r1
    6696:	9901      	ldr	r1, [sp, #4]
    6698:	f7fd fe52 	bl	4340 <__aeabi_uidiv>
    669c:	4b11      	ldr	r3, [pc, #68]	; (66e4 <svcMessageGet+0x88>)
    669e:	001a      	movs	r2, r3
    66a0:	4298      	cmp	r0, r3
    66a2:	d916      	bls.n	66d2 <svcMessageGet+0x76>
    66a4:	a904      	add	r1, sp, #16
    66a6:	0020      	movs	r0, r4
    66a8:	f000 fe18 	bl	72dc <rt_mbx_wait>
    66ac:	2801      	cmp	r0, #1
    66ae:	d00d      	beq.n	66cc <svcMessageGet+0x70>
    66b0:	2010      	movs	r0, #16
    66b2:	9904      	ldr	r1, [sp, #16]
    66b4:	e7dc      	b.n	6670 <svcMessageGet+0x14>
    66b6:	2200      	movs	r2, #0
    66b8:	a904      	add	r1, sp, #16
    66ba:	f000 fe0f 	bl	72dc <rt_mbx_wait>
    66be:	2801      	cmp	r0, #1
    66c0:	d1f6      	bne.n	66b0 <svcMessageGet+0x54>
    66c2:	2000      	movs	r0, #0
    66c4:	9904      	ldr	r1, [sp, #16]
    66c6:	e7d3      	b.n	6670 <svcMessageGet+0x14>
    66c8:	4a06      	ldr	r2, [pc, #24]	; (66e4 <svcMessageGet+0x88>)
    66ca:	e7eb      	b.n	66a4 <svcMessageGet+0x48>
    66cc:	2040      	movs	r0, #64	; 0x40
    66ce:	9904      	ldr	r1, [sp, #16]
    66d0:	e7ce      	b.n	6670 <svcMessageGet+0x14>
    66d2:	b282      	uxth	r2, r0
    66d4:	e7e6      	b.n	66a4 <svcMessageGet+0x48>
    66d6:	4a04      	ldr	r2, [pc, #16]	; (66e8 <svcMessageGet+0x8c>)
    66d8:	e7e4      	b.n	66a4 <svcMessageGet+0x48>
    66da:	46c0      	nop			; (mov r8, r8)
    66dc:	003d0900 	.word	0x003d0900
    66e0:	000083f8 	.word	0x000083f8
    66e4:	0000fffe 	.word	0x0000fffe
    66e8:	0000ffff 	.word	0x0000ffff

000066ec <isrMessagePut>:
    66ec:	b570      	push	{r4, r5, r6, lr}
    66ee:	0004      	movs	r4, r0
    66f0:	000d      	movs	r5, r1
    66f2:	2080      	movs	r0, #128	; 0x80
    66f4:	2c00      	cmp	r4, #0
    66f6:	d001      	beq.n	66fc <isrMessagePut+0x10>
    66f8:	2a00      	cmp	r2, #0
    66fa:	d000      	beq.n	66fe <isrMessagePut+0x12>
    66fc:	bd70      	pop	{r4, r5, r6, pc}
    66fe:	7823      	ldrb	r3, [r4, #0]
    6700:	2b01      	cmp	r3, #1
    6702:	d1fb      	bne.n	66fc <isrMessagePut+0x10>
    6704:	0020      	movs	r0, r4
    6706:	f000 fe45 	bl	7394 <rt_mbx_check>
    670a:	0003      	movs	r3, r0
    670c:	2081      	movs	r0, #129	; 0x81
    670e:	2b00      	cmp	r3, #0
    6710:	d0f4      	beq.n	66fc <isrMessagePut+0x10>
    6712:	0020      	movs	r0, r4
    6714:	0029      	movs	r1, r5
    6716:	f000 fe41 	bl	739c <isr_mbx_send>
    671a:	2000      	movs	r0, #0
    671c:	e7ee      	b.n	66fc <isrMessagePut+0x10>
    671e:	46c0      	nop			; (mov r8, r8)

00006720 <isrMessageGet>:
    6720:	b570      	push	{r4, r5, r6, lr}
    6722:	0004      	movs	r4, r0
    6724:	b084      	sub	sp, #16
    6726:	0008      	movs	r0, r1
    6728:	0015      	movs	r5, r2
    672a:	2900      	cmp	r1, #0
    672c:	d004      	beq.n	6738 <isrMessageGet+0x18>
    672e:	2a00      	cmp	r2, #0
    6730:	d102      	bne.n	6738 <isrMessageGet+0x18>
    6732:	780b      	ldrb	r3, [r1, #0]
    6734:	2b01      	cmp	r3, #1
    6736:	d004      	beq.n	6742 <isrMessageGet+0x22>
    6738:	2380      	movs	r3, #128	; 0x80
    673a:	6023      	str	r3, [r4, #0]
    673c:	0020      	movs	r0, r4
    673e:	b004      	add	sp, #16
    6740:	bd70      	pop	{r4, r5, r6, pc}
    6742:	a902      	add	r1, sp, #8
    6744:	ae01      	add	r6, sp, #4
    6746:	f000 fe2f 	bl	73a8 <isr_mbx_receive>
    674a:	2804      	cmp	r0, #4
    674c:	d004      	beq.n	6758 <isrMessageGet+0x38>
    674e:	0023      	movs	r3, r4
    6750:	9501      	str	r5, [sp, #4]
    6752:	ce07      	ldmia	r6!, {r0, r1, r2}
    6754:	c307      	stmia	r3!, {r0, r1, r2}
    6756:	e7f1      	b.n	673c <isrMessageGet+0x1c>
    6758:	2310      	movs	r3, #16
    675a:	9301      	str	r3, [sp, #4]
    675c:	0023      	movs	r3, r4
    675e:	ce07      	ldmia	r6!, {r0, r1, r2}
    6760:	c307      	stmia	r3!, {r0, r1, r2}
    6762:	e7eb      	b.n	673c <isrMessageGet+0x1c>

00006764 <osMessageCreate>:
    6764:	b5b0      	push	{r4, r5, r7, lr}
    6766:	0004      	movs	r4, r0
    6768:	f3ef 8005 	mrs	r0, IPSR
    676c:	2800      	cmp	r0, #0
    676e:	d11e      	bne.n	67ae <osMessageCreate+0x4a>
    6770:	f3ef 8014 	mrs	r0, CONTROL
    6774:	07c0      	lsls	r0, r0, #31
    6776:	d504      	bpl.n	6782 <osMessageCreate+0x1e>
    6778:	0020      	movs	r0, r4
    677a:	4f0f      	ldr	r7, [pc, #60]	; (67b8 <osMessageCreate+0x54>)
    677c:	46bc      	mov	ip, r7
    677e:	df00      	svc	0
    6780:	bdb0      	pop	{r4, r5, r7, pc}
    6782:	480c      	ldr	r0, [pc, #48]	; (67b4 <osMessageCreate+0x50>)
    6784:	7800      	ldrb	r0, [r0, #0]
    6786:	2800      	cmp	r0, #0
    6788:	d1f6      	bne.n	6778 <osMessageCreate+0x14>
    678a:	2c00      	cmp	r4, #0
    678c:	d00f      	beq.n	67ae <osMessageCreate+0x4a>
    678e:	6823      	ldr	r3, [r4, #0]
    6790:	2b00      	cmp	r3, #0
    6792:	d00c      	beq.n	67ae <osMessageCreate+0x4a>
    6794:	6860      	ldr	r0, [r4, #4]
    6796:	2800      	cmp	r0, #0
    6798:	d009      	beq.n	67ae <osMessageCreate+0x4a>
    679a:	7802      	ldrb	r2, [r0, #0]
    679c:	2a00      	cmp	r2, #0
    679e:	d106      	bne.n	67ae <osMessageCreate+0x4a>
    67a0:	1d19      	adds	r1, r3, #4
    67a2:	008b      	lsls	r3, r1, #2
    67a4:	b299      	uxth	r1, r3
    67a6:	f000 fd3f 	bl	7228 <rt_mbx_init>
    67aa:	6860      	ldr	r0, [r4, #4]
    67ac:	e7e8      	b.n	6780 <osMessageCreate+0x1c>
    67ae:	2000      	movs	r0, #0
    67b0:	e7e6      	b.n	6780 <osMessageCreate+0x1c>
    67b2:	46c0      	nop			; (mov r8, r8)
    67b4:	20006025 	.word	0x20006025
    67b8:	000065b1 	.word	0x000065b1

000067bc <osMessagePut>:
    67bc:	b5b0      	push	{r4, r5, r7, lr}
    67be:	0004      	movs	r4, r0
    67c0:	000d      	movs	r5, r1
    67c2:	f3ef 8105 	mrs	r1, IPSR
    67c6:	2900      	cmp	r1, #0
    67c8:	d008      	beq.n	67dc <osMessagePut+0x20>
    67ca:	2080      	movs	r0, #128	; 0x80
    67cc:	2c00      	cmp	r4, #0
    67ce:	d004      	beq.n	67da <osMessagePut+0x1e>
    67d0:	2a00      	cmp	r2, #0
    67d2:	d102      	bne.n	67da <osMessagePut+0x1e>
    67d4:	7823      	ldrb	r3, [r4, #0]
    67d6:	2b01      	cmp	r3, #1
    67d8:	d005      	beq.n	67e6 <osMessagePut+0x2a>
    67da:	bdb0      	pop	{r4, r5, r7, pc}
    67dc:	0029      	movs	r1, r5
    67de:	4f08      	ldr	r7, [pc, #32]	; (6800 <osMessagePut+0x44>)
    67e0:	46bc      	mov	ip, r7
    67e2:	df00      	svc	0
    67e4:	e7f9      	b.n	67da <osMessagePut+0x1e>
    67e6:	0020      	movs	r0, r4
    67e8:	f000 fdd4 	bl	7394 <rt_mbx_check>
    67ec:	0003      	movs	r3, r0
    67ee:	2081      	movs	r0, #129	; 0x81
    67f0:	2b00      	cmp	r3, #0
    67f2:	d0f2      	beq.n	67da <osMessagePut+0x1e>
    67f4:	0020      	movs	r0, r4
    67f6:	0029      	movs	r1, r5
    67f8:	f000 fdd0 	bl	739c <isr_mbx_send>
    67fc:	2000      	movs	r0, #0
    67fe:	e7ec      	b.n	67da <osMessagePut+0x1e>
    6800:	000065dd 	.word	0x000065dd

00006804 <osMessageGet>:
    6804:	b5f0      	push	{r4, r5, r6, r7, lr}
    6806:	0004      	movs	r4, r0
    6808:	b085      	sub	sp, #20
    680a:	0008      	movs	r0, r1
    680c:	0015      	movs	r5, r2
    680e:	f3ef 8105 	mrs	r1, IPSR
    6812:	2900      	cmp	r1, #0
    6814:	d109      	bne.n	682a <osMessageGet+0x26>
    6816:	0011      	movs	r1, r2
    6818:	4f11      	ldr	r7, [pc, #68]	; (6860 <osMessageGet+0x5c>)
    681a:	46bc      	mov	ip, r7
    681c:	df00      	svc	0
    681e:	6020      	str	r0, [r4, #0]
    6820:	6061      	str	r1, [r4, #4]
    6822:	60a2      	str	r2, [r4, #8]
    6824:	0020      	movs	r0, r4
    6826:	b005      	add	sp, #20
    6828:	bdf0      	pop	{r4, r5, r6, r7, pc}
    682a:	2800      	cmp	r0, #0
    682c:	d004      	beq.n	6838 <osMessageGet+0x34>
    682e:	2a00      	cmp	r2, #0
    6830:	d102      	bne.n	6838 <osMessageGet+0x34>
    6832:	7803      	ldrb	r3, [r0, #0]
    6834:	2b01      	cmp	r3, #1
    6836:	d002      	beq.n	683e <osMessageGet+0x3a>
    6838:	2380      	movs	r3, #128	; 0x80
    683a:	6023      	str	r3, [r4, #0]
    683c:	e7f2      	b.n	6824 <osMessageGet+0x20>
    683e:	a902      	add	r1, sp, #8
    6840:	ae01      	add	r6, sp, #4
    6842:	f000 fdb1 	bl	73a8 <isr_mbx_receive>
    6846:	2804      	cmp	r0, #4
    6848:	d004      	beq.n	6854 <osMessageGet+0x50>
    684a:	0023      	movs	r3, r4
    684c:	9501      	str	r5, [sp, #4]
    684e:	ce07      	ldmia	r6!, {r0, r1, r2}
    6850:	c307      	stmia	r3!, {r0, r1, r2}
    6852:	e7e7      	b.n	6824 <osMessageGet+0x20>
    6854:	2310      	movs	r3, #16
    6856:	9301      	str	r3, [sp, #4]
    6858:	0023      	movs	r3, r4
    685a:	ce07      	ldmia	r6!, {r0, r1, r2}
    685c:	c307      	stmia	r3!, {r0, r1, r2}
    685e:	e7e1      	b.n	6824 <osMessageGet+0x20>
    6860:	0000665d 	.word	0x0000665d

00006864 <svcMailCreate>:
    6864:	b570      	push	{r4, r5, r6, lr}
    6866:	1e04      	subs	r4, r0, #0
    6868:	d021      	beq.n	68ae <svcMailCreate+0x4a>
    686a:	6801      	ldr	r1, [r0, #0]
    686c:	2900      	cmp	r1, #0
    686e:	d01e      	beq.n	68ae <svcMailCreate+0x4a>
    6870:	6842      	ldr	r2, [r0, #4]
    6872:	2a00      	cmp	r2, #0
    6874:	d01b      	beq.n	68ae <svcMailCreate+0x4a>
    6876:	6883      	ldr	r3, [r0, #8]
    6878:	2b00      	cmp	r3, #0
    687a:	d018      	beq.n	68ae <svcMailCreate+0x4a>
    687c:	6858      	ldr	r0, [r3, #4]
    687e:	681d      	ldr	r5, [r3, #0]
    6880:	2800      	cmp	r0, #0
    6882:	d014      	beq.n	68ae <svcMailCreate+0x4a>
    6884:	2d00      	cmp	r5, #0
    6886:	d012      	beq.n	68ae <svcMailCreate+0x4a>
    6888:	782b      	ldrb	r3, [r5, #0]
    688a:	2b00      	cmp	r3, #0
    688c:	d10f      	bne.n	68ae <svcMailCreate+0x4a>
    688e:	3303      	adds	r3, #3
    6890:	3203      	adds	r2, #3
    6892:	439a      	bics	r2, r3
    6894:	4351      	muls	r1, r2
    6896:	310c      	adds	r1, #12
    6898:	f000 fa6a 	bl	6d70 <_init_box>
    689c:	6823      	ldr	r3, [r4, #0]
    689e:	0028      	movs	r0, r5
    68a0:	1d19      	adds	r1, r3, #4
    68a2:	0089      	lsls	r1, r1, #2
    68a4:	b289      	uxth	r1, r1
    68a6:	f000 fcbf 	bl	7228 <rt_mbx_init>
    68aa:	68a0      	ldr	r0, [r4, #8]
    68ac:	bd70      	pop	{r4, r5, r6, pc}
    68ae:	2000      	movs	r0, #0
    68b0:	e7fc      	b.n	68ac <svcMailCreate+0x48>
    68b2:	46c0      	nop			; (mov r8, r8)

000068b4 <sysMailAlloc>:
    68b4:	b530      	push	{r4, r5, lr}
    68b6:	000d      	movs	r5, r1
    68b8:	b083      	sub	sp, #12
    68ba:	2800      	cmp	r0, #0
    68bc:	d035      	beq.n	692a <sysMailAlloc+0x76>
    68be:	6804      	ldr	r4, [r0, #0]
    68c0:	6840      	ldr	r0, [r0, #4]
    68c2:	2800      	cmp	r0, #0
    68c4:	d031      	beq.n	692a <sysMailAlloc+0x76>
    68c6:	2c00      	cmp	r4, #0
    68c8:	d02f      	beq.n	692a <sysMailAlloc+0x76>
    68ca:	2a00      	cmp	r2, #0
    68cc:	d007      	beq.n	68de <sysMailAlloc+0x2a>
    68ce:	2900      	cmp	r1, #0
    68d0:	d12b      	bne.n	692a <sysMailAlloc+0x76>
    68d2:	f000 fa79 	bl	6dc8 <rt_alloc_box>
    68d6:	2800      	cmp	r0, #0
    68d8:	d027      	beq.n	692a <sysMailAlloc+0x76>
    68da:	b003      	add	sp, #12
    68dc:	bd30      	pop	{r4, r5, pc}
    68de:	f000 fa73 	bl	6dc8 <rt_alloc_box>
    68e2:	2800      	cmp	r0, #0
    68e4:	d1f9      	bne.n	68da <sysMailAlloc+0x26>
    68e6:	2d00      	cmp	r5, #0
    68e8:	d01f      	beq.n	692a <sysMailAlloc+0x76>
    68ea:	6863      	ldr	r3, [r4, #4]
    68ec:	2b00      	cmp	r3, #0
    68ee:	d020      	beq.n	6932 <sysMailAlloc+0x7e>
    68f0:	4b16      	ldr	r3, [pc, #88]	; (694c <sysMailAlloc+0x98>)
    68f2:	0020      	movs	r0, r4
    68f4:	6819      	ldr	r1, [r3, #0]
    68f6:	f000 fdf1 	bl	74dc <rt_put_prio>
    68fa:	1c6b      	adds	r3, r5, #1
    68fc:	d021      	beq.n	6942 <sysMailAlloc+0x8e>
    68fe:	4b14      	ldr	r3, [pc, #80]	; (6950 <sysMailAlloc+0x9c>)
    6900:	429d      	cmp	r5, r3
    6902:	d814      	bhi.n	692e <sysMailAlloc+0x7a>
    6904:	20fa      	movs	r0, #250	; 0xfa
    6906:	4b13      	ldr	r3, [pc, #76]	; (6954 <sysMailAlloc+0xa0>)
    6908:	0080      	lsls	r0, r0, #2
    690a:	4368      	muls	r0, r5
    690c:	681b      	ldr	r3, [r3, #0]
    690e:	9301      	str	r3, [sp, #4]
    6910:	3b01      	subs	r3, #1
    6912:	18c0      	adds	r0, r0, r3
    6914:	9901      	ldr	r1, [sp, #4]
    6916:	f7fd fd13 	bl	4340 <__aeabi_uidiv>
    691a:	4b0f      	ldr	r3, [pc, #60]	; (6958 <sysMailAlloc+0xa4>)
    691c:	0002      	movs	r2, r0
    691e:	0018      	movs	r0, r3
    6920:	429a      	cmp	r2, r3
    6922:	d910      	bls.n	6946 <sysMailAlloc+0x92>
    6924:	2108      	movs	r1, #8
    6926:	f001 fa13 	bl	7d50 <rt_block>
    692a:	2000      	movs	r0, #0
    692c:	e7d5      	b.n	68da <sysMailAlloc+0x26>
    692e:	480a      	ldr	r0, [pc, #40]	; (6958 <sysMailAlloc+0xa4>)
    6930:	e7f8      	b.n	6924 <sysMailAlloc+0x70>
    6932:	4a06      	ldr	r2, [pc, #24]	; (694c <sysMailAlloc+0x98>)
    6934:	6812      	ldr	r2, [r2, #0]
    6936:	6062      	str	r2, [r4, #4]
    6938:	6053      	str	r3, [r2, #4]
    693a:	2303      	movs	r3, #3
    693c:	6094      	str	r4, [r2, #8]
    693e:	7063      	strb	r3, [r4, #1]
    6940:	e7db      	b.n	68fa <sysMailAlloc+0x46>
    6942:	4806      	ldr	r0, [pc, #24]	; (695c <sysMailAlloc+0xa8>)
    6944:	e7ee      	b.n	6924 <sysMailAlloc+0x70>
    6946:	b290      	uxth	r0, r2
    6948:	e7ec      	b.n	6924 <sysMailAlloc+0x70>
    694a:	46c0      	nop			; (mov r8, r8)
    694c:	20006064 	.word	0x20006064
    6950:	003d0900 	.word	0x003d0900
    6954:	000083f8 	.word	0x000083f8
    6958:	0000fffe 	.word	0x0000fffe
    695c:	0000ffff 	.word	0x0000ffff

00006960 <sysMailFree>:
    6960:	b570      	push	{r4, r5, r6, lr}
    6962:	0016      	movs	r6, r2
    6964:	2800      	cmp	r0, #0
    6966:	d00e      	beq.n	6986 <sysMailFree+0x26>
    6968:	6804      	ldr	r4, [r0, #0]
    696a:	2c00      	cmp	r4, #0
    696c:	d00b      	beq.n	6986 <sysMailFree+0x26>
    696e:	6845      	ldr	r5, [r0, #4]
    6970:	2080      	movs	r0, #128	; 0x80
    6972:	2d00      	cmp	r5, #0
    6974:	d006      	beq.n	6984 <sysMailFree+0x24>
    6976:	0028      	movs	r0, r5
    6978:	f000 fa46 	bl	6e08 <rt_free_box>
    697c:	0003      	movs	r3, r0
    697e:	2086      	movs	r0, #134	; 0x86
    6980:	2b00      	cmp	r3, #0
    6982:	d002      	beq.n	698a <sysMailFree+0x2a>
    6984:	bd70      	pop	{r4, r5, r6, pc}
    6986:	2080      	movs	r0, #128	; 0x80
    6988:	e7fc      	b.n	6984 <sysMailFree+0x24>
    698a:	6863      	ldr	r3, [r4, #4]
    698c:	2b00      	cmp	r3, #0
    698e:	d002      	beq.n	6996 <sysMailFree+0x36>
    6990:	7863      	ldrb	r3, [r4, #1]
    6992:	2b03      	cmp	r3, #3
    6994:	d001      	beq.n	699a <sysMailFree+0x3a>
    6996:	2000      	movs	r0, #0
    6998:	e7f4      	b.n	6984 <sysMailFree+0x24>
    699a:	2e00      	cmp	r6, #0
    699c:	d113      	bne.n	69c6 <sysMailFree+0x66>
    699e:	0028      	movs	r0, r5
    69a0:	f000 fa12 	bl	6dc8 <rt_alloc_box>
    69a4:	1e05      	subs	r5, r0, #0
    69a6:	d0f6      	beq.n	6996 <sysMailFree+0x36>
    69a8:	0020      	movs	r0, r4
    69aa:	f000 fdbd 	bl	7528 <rt_get_first>
    69ae:	0004      	movs	r4, r0
    69b0:	0029      	movs	r1, r5
    69b2:	f000 f987 	bl	6cc4 <rt_ret_val>
    69b6:	0020      	movs	r0, r4
    69b8:	f000 feee 	bl	7798 <rt_rmv_dly>
    69bc:	0020      	movs	r0, r4
    69be:	f001 f9a1 	bl	7d04 <rt_dispatch>
    69c2:	2000      	movs	r0, #0
    69c4:	e7de      	b.n	6984 <sysMailFree+0x24>
    69c6:	0020      	movs	r0, r4
    69c8:	0029      	movs	r1, r5
    69ca:	f000 fefb 	bl	77c4 <rt_psq_enq>
    69ce:	f001 f8dd 	bl	7b8c <rt_psh_req>
    69d2:	2000      	movs	r0, #0
    69d4:	e7d6      	b.n	6984 <sysMailFree+0x24>
    69d6:	46c0      	nop			; (mov r8, r8)

000069d8 <osMailCreate>:
    69d8:	b5b0      	push	{r4, r5, r7, lr}
    69da:	0004      	movs	r4, r0
    69dc:	f3ef 8005 	mrs	r0, IPSR
    69e0:	2800      	cmp	r0, #0
    69e2:	d130      	bne.n	6a46 <osMailCreate+0x6e>
    69e4:	f3ef 8014 	mrs	r0, CONTROL
    69e8:	07c0      	lsls	r0, r0, #31
    69ea:	d504      	bpl.n	69f6 <osMailCreate+0x1e>
    69ec:	0020      	movs	r0, r4
    69ee:	4f18      	ldr	r7, [pc, #96]	; (6a50 <osMailCreate+0x78>)
    69f0:	46bc      	mov	ip, r7
    69f2:	df00      	svc	0
    69f4:	bdb0      	pop	{r4, r5, r7, pc}
    69f6:	4815      	ldr	r0, [pc, #84]	; (6a4c <osMailCreate+0x74>)
    69f8:	7800      	ldrb	r0, [r0, #0]
    69fa:	2800      	cmp	r0, #0
    69fc:	d1f6      	bne.n	69ec <osMailCreate+0x14>
    69fe:	2c00      	cmp	r4, #0
    6a00:	d021      	beq.n	6a46 <osMailCreate+0x6e>
    6a02:	6821      	ldr	r1, [r4, #0]
    6a04:	2900      	cmp	r1, #0
    6a06:	d01e      	beq.n	6a46 <osMailCreate+0x6e>
    6a08:	6862      	ldr	r2, [r4, #4]
    6a0a:	2a00      	cmp	r2, #0
    6a0c:	d01b      	beq.n	6a46 <osMailCreate+0x6e>
    6a0e:	68a3      	ldr	r3, [r4, #8]
    6a10:	2b00      	cmp	r3, #0
    6a12:	d018      	beq.n	6a46 <osMailCreate+0x6e>
    6a14:	6858      	ldr	r0, [r3, #4]
    6a16:	681d      	ldr	r5, [r3, #0]
    6a18:	2800      	cmp	r0, #0
    6a1a:	d014      	beq.n	6a46 <osMailCreate+0x6e>
    6a1c:	2d00      	cmp	r5, #0
    6a1e:	d012      	beq.n	6a46 <osMailCreate+0x6e>
    6a20:	782b      	ldrb	r3, [r5, #0]
    6a22:	2b00      	cmp	r3, #0
    6a24:	d10f      	bne.n	6a46 <osMailCreate+0x6e>
    6a26:	3303      	adds	r3, #3
    6a28:	3203      	adds	r2, #3
    6a2a:	439a      	bics	r2, r3
    6a2c:	4351      	muls	r1, r2
    6a2e:	310c      	adds	r1, #12
    6a30:	f000 f99e 	bl	6d70 <_init_box>
    6a34:	6823      	ldr	r3, [r4, #0]
    6a36:	0028      	movs	r0, r5
    6a38:	1d19      	adds	r1, r3, #4
    6a3a:	0089      	lsls	r1, r1, #2
    6a3c:	b289      	uxth	r1, r1
    6a3e:	f000 fbf3 	bl	7228 <rt_mbx_init>
    6a42:	68a0      	ldr	r0, [r4, #8]
    6a44:	e7d6      	b.n	69f4 <osMailCreate+0x1c>
    6a46:	2000      	movs	r0, #0
    6a48:	e7d4      	b.n	69f4 <osMailCreate+0x1c>
    6a4a:	46c0      	nop			; (mov r8, r8)
    6a4c:	20006025 	.word	0x20006025
    6a50:	00006865 	.word	0x00006865

00006a54 <osMailAlloc>:
    6a54:	b580      	push	{r7, lr}
    6a56:	f3ef 8205 	mrs	r2, IPSR
    6a5a:	2a00      	cmp	r2, #0
    6a5c:	d104      	bne.n	6a68 <osMailAlloc+0x14>
    6a5e:	2200      	movs	r2, #0
    6a60:	4f09      	ldr	r7, [pc, #36]	; (6a88 <osMailAlloc+0x34>)
    6a62:	46bc      	mov	ip, r7
    6a64:	df00      	svc	0
    6a66:	bd80      	pop	{r7, pc}
    6a68:	2800      	cmp	r0, #0
    6a6a:	d00a      	beq.n	6a82 <osMailAlloc+0x2e>
    6a6c:	6803      	ldr	r3, [r0, #0]
    6a6e:	6840      	ldr	r0, [r0, #4]
    6a70:	2800      	cmp	r0, #0
    6a72:	d006      	beq.n	6a82 <osMailAlloc+0x2e>
    6a74:	2b00      	cmp	r3, #0
    6a76:	d004      	beq.n	6a82 <osMailAlloc+0x2e>
    6a78:	2900      	cmp	r1, #0
    6a7a:	d102      	bne.n	6a82 <osMailAlloc+0x2e>
    6a7c:	f000 f9a4 	bl	6dc8 <rt_alloc_box>
    6a80:	e7f1      	b.n	6a66 <osMailAlloc+0x12>
    6a82:	2000      	movs	r0, #0
    6a84:	e7ef      	b.n	6a66 <osMailAlloc+0x12>
    6a86:	0000      	.short	0x0000
    6a88:	000068b5 	.word	0x000068b5

00006a8c <osMailCAlloc>:
    6a8c:	b5b0      	push	{r4, r5, r7, lr}
    6a8e:	0004      	movs	r4, r0
    6a90:	f3ef 8205 	mrs	r2, IPSR
    6a94:	2a00      	cmp	r2, #0
    6a96:	d112      	bne.n	6abe <osMailCAlloc+0x32>
    6a98:	2200      	movs	r2, #0
    6a9a:	4f13      	ldr	r7, [pc, #76]	; (6ae8 <osMailCAlloc+0x5c>)
    6a9c:	46bc      	mov	ip, r7
    6a9e:	df00      	svc	0
    6aa0:	6863      	ldr	r3, [r4, #4]
    6aa2:	2b00      	cmp	r3, #0
    6aa4:	d00a      	beq.n	6abc <osMailCAlloc+0x30>
    6aa6:	2800      	cmp	r0, #0
    6aa8:	d01b      	beq.n	6ae2 <osMailCAlloc+0x56>
    6aaa:	689b      	ldr	r3, [r3, #8]
    6aac:	2b00      	cmp	r3, #0
    6aae:	d005      	beq.n	6abc <osMailCAlloc+0x30>
    6ab0:	0002      	movs	r2, r0
    6ab2:	2100      	movs	r1, #0
    6ab4:	3b04      	subs	r3, #4
    6ab6:	c202      	stmia	r2!, {r1}
    6ab8:	2b00      	cmp	r3, #0
    6aba:	d1fb      	bne.n	6ab4 <osMailCAlloc+0x28>
    6abc:	bdb0      	pop	{r4, r5, r7, pc}
    6abe:	2800      	cmp	r0, #0
    6ac0:	d00f      	beq.n	6ae2 <osMailCAlloc+0x56>
    6ac2:	6803      	ldr	r3, [r0, #0]
    6ac4:	6840      	ldr	r0, [r0, #4]
    6ac6:	2800      	cmp	r0, #0
    6ac8:	d00b      	beq.n	6ae2 <osMailCAlloc+0x56>
    6aca:	2b00      	cmp	r3, #0
    6acc:	d009      	beq.n	6ae2 <osMailCAlloc+0x56>
    6ace:	2900      	cmp	r1, #0
    6ad0:	d107      	bne.n	6ae2 <osMailCAlloc+0x56>
    6ad2:	f000 f979 	bl	6dc8 <rt_alloc_box>
    6ad6:	2800      	cmp	r0, #0
    6ad8:	d003      	beq.n	6ae2 <osMailCAlloc+0x56>
    6ada:	6863      	ldr	r3, [r4, #4]
    6adc:	2b00      	cmp	r3, #0
    6ade:	d1e4      	bne.n	6aaa <osMailCAlloc+0x1e>
    6ae0:	e7ec      	b.n	6abc <osMailCAlloc+0x30>
    6ae2:	2000      	movs	r0, #0
    6ae4:	e7ea      	b.n	6abc <osMailCAlloc+0x30>
    6ae6:	0000      	.short	0x0000
    6ae8:	000068b5 	.word	0x000068b5

00006aec <osMailFree>:
    6aec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6aee:	f3ef 8205 	mrs	r2, IPSR
    6af2:	2a00      	cmp	r2, #0
    6af4:	d106      	bne.n	6b04 <osMailFree+0x18>
    6af6:	2200      	movs	r2, #0
    6af8:	4f13      	ldr	r7, [pc, #76]	; (6b48 <osMailFree+0x5c>)
    6afa:	46bc      	mov	ip, r7
    6afc:	df00      	svc	0
    6afe:	0004      	movs	r4, r0
    6b00:	0020      	movs	r0, r4
    6b02:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6b04:	2800      	cmp	r0, #0
    6b06:	d01a      	beq.n	6b3e <osMailFree+0x52>
    6b08:	6805      	ldr	r5, [r0, #0]
    6b0a:	2d00      	cmp	r5, #0
    6b0c:	d017      	beq.n	6b3e <osMailFree+0x52>
    6b0e:	6846      	ldr	r6, [r0, #4]
    6b10:	2480      	movs	r4, #128	; 0x80
    6b12:	2e00      	cmp	r6, #0
    6b14:	d0f4      	beq.n	6b00 <osMailFree+0x14>
    6b16:	0030      	movs	r0, r6
    6b18:	f000 f976 	bl	6e08 <rt_free_box>
    6b1c:	3406      	adds	r4, #6
    6b1e:	2800      	cmp	r0, #0
    6b20:	d1ee      	bne.n	6b00 <osMailFree+0x14>
    6b22:	686b      	ldr	r3, [r5, #4]
    6b24:	2b00      	cmp	r3, #0
    6b26:	d00c      	beq.n	6b42 <osMailFree+0x56>
    6b28:	786b      	ldrb	r3, [r5, #1]
    6b2a:	2400      	movs	r4, #0
    6b2c:	2b03      	cmp	r3, #3
    6b2e:	d1e7      	bne.n	6b00 <osMailFree+0x14>
    6b30:	0031      	movs	r1, r6
    6b32:	0028      	movs	r0, r5
    6b34:	f000 fe46 	bl	77c4 <rt_psq_enq>
    6b38:	f001 f828 	bl	7b8c <rt_psh_req>
    6b3c:	e7e0      	b.n	6b00 <osMailFree+0x14>
    6b3e:	2480      	movs	r4, #128	; 0x80
    6b40:	e7de      	b.n	6b00 <osMailFree+0x14>
    6b42:	2400      	movs	r4, #0
    6b44:	e7dc      	b.n	6b00 <osMailFree+0x14>
    6b46:	0000      	.short	0x0000
    6b48:	00006961 	.word	0x00006961

00006b4c <osMailPut>:
    6b4c:	b5b0      	push	{r4, r5, r7, lr}
    6b4e:	0002      	movs	r2, r0
    6b50:	000c      	movs	r4, r1
    6b52:	2800      	cmp	r0, #0
    6b54:	d00e      	beq.n	6b74 <osMailPut+0x28>
    6b56:	2086      	movs	r0, #134	; 0x86
    6b58:	2900      	cmp	r1, #0
    6b5a:	d00a      	beq.n	6b72 <osMailPut+0x26>
    6b5c:	6815      	ldr	r5, [r2, #0]
    6b5e:	f3ef 8205 	mrs	r2, IPSR
    6b62:	2a00      	cmp	r2, #0
    6b64:	d008      	beq.n	6b78 <osMailPut+0x2c>
    6b66:	2d00      	cmp	r5, #0
    6b68:	d004      	beq.n	6b74 <osMailPut+0x28>
    6b6a:	782b      	ldrb	r3, [r5, #0]
    6b6c:	3806      	subs	r0, #6
    6b6e:	2b01      	cmp	r3, #1
    6b70:	d008      	beq.n	6b84 <osMailPut+0x38>
    6b72:	bdb0      	pop	{r4, r5, r7, pc}
    6b74:	2080      	movs	r0, #128	; 0x80
    6b76:	e7fc      	b.n	6b72 <osMailPut+0x26>
    6b78:	0028      	movs	r0, r5
    6b7a:	2200      	movs	r2, #0
    6b7c:	4f08      	ldr	r7, [pc, #32]	; (6ba0 <osMailPut+0x54>)
    6b7e:	46bc      	mov	ip, r7
    6b80:	df00      	svc	0
    6b82:	e7f6      	b.n	6b72 <osMailPut+0x26>
    6b84:	0028      	movs	r0, r5
    6b86:	f000 fc05 	bl	7394 <rt_mbx_check>
    6b8a:	0003      	movs	r3, r0
    6b8c:	2081      	movs	r0, #129	; 0x81
    6b8e:	2b00      	cmp	r3, #0
    6b90:	d0ef      	beq.n	6b72 <osMailPut+0x26>
    6b92:	0028      	movs	r0, r5
    6b94:	0021      	movs	r1, r4
    6b96:	f000 fc01 	bl	739c <isr_mbx_send>
    6b9a:	2000      	movs	r0, #0
    6b9c:	e7e9      	b.n	6b72 <osMailPut+0x26>
    6b9e:	0000      	.short	0x0000
    6ba0:	000065dd 	.word	0x000065dd

00006ba4 <osMailGet>:
    6ba4:	b5b0      	push	{r4, r5, r7, lr}
    6ba6:	0004      	movs	r4, r0
    6ba8:	b084      	sub	sp, #16
    6baa:	2900      	cmp	r1, #0
    6bac:	d012      	beq.n	6bd4 <osMailGet+0x30>
    6bae:	6808      	ldr	r0, [r1, #0]
    6bb0:	f3ef 8105 	mrs	r1, IPSR
    6bb4:	2900      	cmp	r1, #0
    6bb6:	d113      	bne.n	6be0 <osMailGet+0x3c>
    6bb8:	0011      	movs	r1, r2
    6bba:	4f0d      	ldr	r7, [pc, #52]	; (6bf0 <osMailGet+0x4c>)
    6bbc:	46bc      	mov	ip, r7
    6bbe:	df00      	svc	0
    6bc0:	2810      	cmp	r0, #16
    6bc2:	d005      	beq.n	6bd0 <osMailGet+0x2c>
    6bc4:	6020      	str	r0, [r4, #0]
    6bc6:	6061      	str	r1, [r4, #4]
    6bc8:	60a2      	str	r2, [r4, #8]
    6bca:	0020      	movs	r0, r4
    6bcc:	b004      	add	sp, #16
    6bce:	bdb0      	pop	{r4, r5, r7, pc}
    6bd0:	3010      	adds	r0, #16
    6bd2:	e7f7      	b.n	6bc4 <osMailGet+0x20>
    6bd4:	2380      	movs	r3, #128	; 0x80
    6bd6:	6003      	str	r3, [r0, #0]
    6bd8:	2300      	movs	r3, #0
    6bda:	6043      	str	r3, [r0, #4]
    6bdc:	6083      	str	r3, [r0, #8]
    6bde:	e7f4      	b.n	6bca <osMailGet+0x26>
    6be0:	0001      	movs	r1, r0
    6be2:	a801      	add	r0, sp, #4
    6be4:	f7ff fd9c 	bl	6720 <isrMessageGet>
    6be8:	9801      	ldr	r0, [sp, #4]
    6bea:	9902      	ldr	r1, [sp, #8]
    6bec:	9a03      	ldr	r2, [sp, #12]
    6bee:	e7e7      	b.n	6bc0 <osMailGet+0x1c>
    6bf0:	0000665d 	.word	0x0000665d

00006bf4 <os_suspend>:
    6bf4:	b580      	push	{r7, lr}
    6bf6:	4f02      	ldr	r7, [pc, #8]	; (6c00 <os_suspend+0xc>)
    6bf8:	46bc      	mov	ip, r7
    6bfa:	df00      	svc	0
    6bfc:	bd80      	pop	{r7, pc}
    6bfe:	0000      	.short	0x0000
    6c00:	0000793d 	.word	0x0000793d

00006c04 <os_resume>:
    6c04:	b580      	push	{r7, lr}
    6c06:	4f02      	ldr	r7, [pc, #8]	; (6c10 <os_resume+0xc>)
    6c08:	46bc      	mov	ip, r7
    6c0a:	df00      	svc	0
    6c0c:	bd80      	pop	{r7, pc}
    6c0e:	0000      	.short	0x0000
    6c10:	000079cd 	.word	0x000079cd

00006c14 <rt_init_stack>:
    6c14:	b5f0      	push	{r4, r5, r6, r7, lr}
    6c16:	464e      	mov	r6, r9
    6c18:	4645      	mov	r5, r8
    6c1a:	4657      	mov	r7, sl
    6c1c:	b4e0      	push	{r5, r6, r7}
    6c1e:	4b26      	ldr	r3, [pc, #152]	; (6cb8 <rt_init_stack+0xa4>)
    6c20:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    6c22:	b082      	sub	sp, #8
    6c24:	4680      	mov	r8, r0
    6c26:	4689      	mov	r9, r1
    6c28:	08a4      	lsrs	r4, r4, #2
    6c2a:	681b      	ldr	r3, [r3, #0]
    6c2c:	d104      	bne.n	6c38 <rt_init_stack+0x24>
    6c2e:	9301      	str	r3, [sp, #4]
    6c30:	466b      	mov	r3, sp
    6c32:	889c      	ldrh	r4, [r3, #4]
    6c34:	9b01      	ldr	r3, [sp, #4]
    6c36:	08a4      	lsrs	r4, r4, #2
    6c38:	469a      	mov	sl, r3
    6c3a:	4643      	mov	r3, r8
    6c3c:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    6c3e:	00a5      	lsls	r5, r4, #2
    6c40:	197d      	adds	r5, r7, r5
    6c42:	076b      	lsls	r3, r5, #29
    6c44:	d500      	bpl.n	6c48 <rt_init_stack+0x34>
    6c46:	3d04      	subs	r5, #4
    6c48:	2280      	movs	r2, #128	; 0x80
    6c4a:	1f2b      	subs	r3, r5, #4
    6c4c:	002e      	movs	r6, r5
    6c4e:	0452      	lsls	r2, r2, #17
    6c50:	601a      	str	r2, [r3, #0]
    6c52:	464a      	mov	r2, r9
    6c54:	3b04      	subs	r3, #4
    6c56:	3e40      	subs	r6, #64	; 0x40
    6c58:	601a      	str	r2, [r3, #0]
    6c5a:	2100      	movs	r1, #0
    6c5c:	2238      	movs	r2, #56	; 0x38
    6c5e:	0030      	movs	r0, r6
    6c60:	f7fd fe30 	bl	48c4 <memset>
    6c64:	4643      	mov	r3, r8
    6c66:	69db      	ldr	r3, [r3, #28]
    6c68:	3d20      	subs	r5, #32
    6c6a:	602b      	str	r3, [r5, #0]
    6c6c:	464a      	mov	r2, r9
    6c6e:	4643      	mov	r3, r8
    6c70:	629e      	str	r6, [r3, #40]	; 0x28
    6c72:	631a      	str	r2, [r3, #48]	; 0x30
    6c74:	4653      	mov	r3, sl
    6c76:	00db      	lsls	r3, r3, #3
    6c78:	d516      	bpl.n	6ca8 <rt_init_stack+0x94>
    6c7a:	2c11      	cmp	r4, #17
    6c7c:	d914      	bls.n	6ca8 <rt_init_stack+0x94>
    6c7e:	3c10      	subs	r4, #16
    6c80:	0864      	lsrs	r4, r4, #1
    6c82:	1e62      	subs	r2, r4, #1
    6c84:	2a00      	cmp	r2, #0
    6c86:	d00a      	beq.n	6c9e <rt_init_stack+0x8a>
    6c88:	0033      	movs	r3, r6
    6c8a:	490c      	ldr	r1, [pc, #48]	; (6cbc <rt_init_stack+0xa8>)
    6c8c:	3b08      	subs	r3, #8
    6c8e:	3a01      	subs	r2, #1
    6c90:	6059      	str	r1, [r3, #4]
    6c92:	6019      	str	r1, [r3, #0]
    6c94:	2a00      	cmp	r2, #0
    6c96:	d1f9      	bne.n	6c8c <rt_init_stack+0x78>
    6c98:	00e4      	lsls	r4, r4, #3
    6c9a:	1b36      	subs	r6, r6, r4
    6c9c:	3608      	adds	r6, #8
    6c9e:	3e04      	subs	r6, #4
    6ca0:	42b7      	cmp	r7, r6
    6ca2:	d201      	bcs.n	6ca8 <rt_init_stack+0x94>
    6ca4:	4b05      	ldr	r3, [pc, #20]	; (6cbc <rt_init_stack+0xa8>)
    6ca6:	6033      	str	r3, [r6, #0]
    6ca8:	4b05      	ldr	r3, [pc, #20]	; (6cc0 <rt_init_stack+0xac>)
    6caa:	603b      	str	r3, [r7, #0]
    6cac:	b002      	add	sp, #8
    6cae:	bc1c      	pop	{r2, r3, r4}
    6cb0:	4690      	mov	r8, r2
    6cb2:	4699      	mov	r9, r3
    6cb4:	46a2      	mov	sl, r4
    6cb6:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6cb8:	000083d8 	.word	0x000083d8
    6cbc:	cccccccc 	.word	0xcccccccc
    6cc0:	e25a2ea5 	.word	0xe25a2ea5

00006cc4 <rt_ret_val>:
    6cc4:	6a83      	ldr	r3, [r0, #40]	; 0x28
    6cc6:	6219      	str	r1, [r3, #32]
    6cc8:	4770      	bx	lr
    6cca:	46c0      	nop			; (mov r8, r8)

00006ccc <rt_ret_val2>:
    6ccc:	6a83      	ldr	r3, [r0, #40]	; 0x28
    6cce:	6219      	str	r1, [r3, #32]
    6cd0:	625a      	str	r2, [r3, #36]	; 0x24
    6cd2:	4770      	bx	lr

00006cd4 <rt_init_mem>:
    6cd4:	0003      	movs	r3, r0
    6cd6:	2001      	movs	r0, #1
    6cd8:	2b00      	cmp	r3, #0
    6cda:	d008      	beq.n	6cee <rt_init_mem+0x1a>
    6cdc:	2907      	cmp	r1, #7
    6cde:	d906      	bls.n	6cee <rt_init_mem+0x1a>
    6ce0:	2200      	movs	r2, #0
    6ce2:	2000      	movs	r0, #0
    6ce4:	3904      	subs	r1, #4
    6ce6:	1859      	adds	r1, r3, r1
    6ce8:	6019      	str	r1, [r3, #0]
    6cea:	600a      	str	r2, [r1, #0]
    6cec:	605a      	str	r2, [r3, #4]
    6cee:	4770      	bx	lr

00006cf0 <rt_alloc_mem>:
    6cf0:	b510      	push	{r4, lr}
    6cf2:	2800      	cmp	r0, #0
    6cf4:	d018      	beq.n	6d28 <rt_alloc_mem+0x38>
    6cf6:	2900      	cmp	r1, #0
    6cf8:	d016      	beq.n	6d28 <rt_alloc_mem+0x38>
    6cfa:	2303      	movs	r3, #3
    6cfc:	310b      	adds	r1, #11
    6cfe:	4399      	bics	r1, r3
    6d00:	6802      	ldr	r2, [r0, #0]
    6d02:	e003      	b.n	6d0c <rt_alloc_mem+0x1c>
    6d04:	0010      	movs	r0, r2
    6d06:	6812      	ldr	r2, [r2, #0]
    6d08:	2a00      	cmp	r2, #0
    6d0a:	d00d      	beq.n	6d28 <rt_alloc_mem+0x38>
    6d0c:	6844      	ldr	r4, [r0, #4]
    6d0e:	1a13      	subs	r3, r2, r0
    6d10:	1b1b      	subs	r3, r3, r4
    6d12:	4299      	cmp	r1, r3
    6d14:	d8f6      	bhi.n	6d04 <rt_alloc_mem+0x14>
    6d16:	2c00      	cmp	r4, #0
    6d18:	d008      	beq.n	6d2c <rt_alloc_mem+0x3c>
    6d1a:	1904      	adds	r4, r0, r4
    6d1c:	6022      	str	r2, [r4, #0]
    6d1e:	6061      	str	r1, [r4, #4]
    6d20:	6004      	str	r4, [r0, #0]
    6d22:	0020      	movs	r0, r4
    6d24:	3008      	adds	r0, #8
    6d26:	e000      	b.n	6d2a <rt_alloc_mem+0x3a>
    6d28:	2000      	movs	r0, #0
    6d2a:	bd10      	pop	{r4, pc}
    6d2c:	6041      	str	r1, [r0, #4]
    6d2e:	3008      	adds	r0, #8
    6d30:	e7fb      	b.n	6d2a <rt_alloc_mem+0x3a>
    6d32:	46c0      	nop			; (mov r8, r8)

00006d34 <rt_free_mem>:
    6d34:	2800      	cmp	r0, #0
    6d36:	d015      	beq.n	6d64 <rt_free_mem+0x30>
    6d38:	2900      	cmp	r1, #0
    6d3a:	d013      	beq.n	6d64 <rt_free_mem+0x30>
    6d3c:	3908      	subs	r1, #8
    6d3e:	4288      	cmp	r0, r1
    6d40:	d012      	beq.n	6d68 <rt_free_mem+0x34>
    6d42:	6803      	ldr	r3, [r0, #0]
    6d44:	2b00      	cmp	r3, #0
    6d46:	d105      	bne.n	6d54 <rt_free_mem+0x20>
    6d48:	e00c      	b.n	6d64 <rt_free_mem+0x30>
    6d4a:	681a      	ldr	r2, [r3, #0]
    6d4c:	0018      	movs	r0, r3
    6d4e:	2a00      	cmp	r2, #0
    6d50:	d008      	beq.n	6d64 <rt_free_mem+0x30>
    6d52:	0013      	movs	r3, r2
    6d54:	4299      	cmp	r1, r3
    6d56:	d1f8      	bne.n	6d4a <rt_free_mem+0x16>
    6d58:	2800      	cmp	r0, #0
    6d5a:	d005      	beq.n	6d68 <rt_free_mem+0x34>
    6d5c:	680b      	ldr	r3, [r1, #0]
    6d5e:	6003      	str	r3, [r0, #0]
    6d60:	2000      	movs	r0, #0
    6d62:	e000      	b.n	6d66 <rt_free_mem+0x32>
    6d64:	2001      	movs	r0, #1
    6d66:	4770      	bx	lr
    6d68:	2300      	movs	r3, #0
    6d6a:	2000      	movs	r0, #0
    6d6c:	604b      	str	r3, [r1, #4]
    6d6e:	e7fa      	b.n	6d66 <rt_free_mem+0x32>

00006d70 <_init_box>:
    6d70:	b530      	push	{r4, r5, lr}
    6d72:	2a00      	cmp	r2, #0
    6d74:	db1e      	blt.n	6db4 <_init_box+0x44>
    6d76:	2303      	movs	r3, #3
    6d78:	3203      	adds	r2, #3
    6d7a:	439a      	bics	r2, r3
    6d7c:	3309      	adds	r3, #9
    6d7e:	2401      	movs	r4, #1
    6d80:	2a00      	cmp	r2, #0
    6d82:	d015      	beq.n	6db0 <_init_box+0x40>
    6d84:	18d5      	adds	r5, r2, r3
    6d86:	428d      	cmp	r5, r1
    6d88:	d812      	bhi.n	6db0 <_init_box+0x40>
    6d8a:	1841      	adds	r1, r0, r1
    6d8c:	18c3      	adds	r3, r0, r3
    6d8e:	6041      	str	r1, [r0, #4]
    6d90:	6003      	str	r3, [r0, #0]
    6d92:	6082      	str	r2, [r0, #8]
    6d94:	1898      	adds	r0, r3, r2
    6d96:	1a89      	subs	r1, r1, r2
    6d98:	4281      	cmp	r1, r0
    6d9a:	d201      	bcs.n	6da0 <_init_box+0x30>
    6d9c:	e011      	b.n	6dc2 <_init_box+0x52>
    6d9e:	0020      	movs	r0, r4
    6da0:	1884      	adds	r4, r0, r2
    6da2:	6018      	str	r0, [r3, #0]
    6da4:	189b      	adds	r3, r3, r2
    6da6:	42a1      	cmp	r1, r4
    6da8:	d2f9      	bcs.n	6d9e <_init_box+0x2e>
    6daa:	2300      	movs	r3, #0
    6dac:	2400      	movs	r4, #0
    6dae:	6003      	str	r3, [r0, #0]
    6db0:	0020      	movs	r0, r4
    6db2:	bd30      	pop	{r4, r5, pc}
    6db4:	2307      	movs	r3, #7
    6db6:	0052      	lsls	r2, r2, #1
    6db8:	0852      	lsrs	r2, r2, #1
    6dba:	3207      	adds	r2, #7
    6dbc:	439a      	bics	r2, r3
    6dbe:	3309      	adds	r3, #9
    6dc0:	e7dd      	b.n	6d7e <_init_box+0xe>
    6dc2:	0018      	movs	r0, r3
    6dc4:	e7f1      	b.n	6daa <_init_box+0x3a>
    6dc6:	46c0      	nop			; (mov r8, r8)

00006dc8 <rt_alloc_box>:
    6dc8:	f3ef 8310 	mrs	r3, PRIMASK
    6dcc:	b672      	cpsid	i
    6dce:	2201      	movs	r2, #1
    6dd0:	4013      	ands	r3, r2
    6dd2:	6802      	ldr	r2, [r0, #0]
    6dd4:	2a00      	cmp	r2, #0
    6dd6:	d001      	beq.n	6ddc <rt_alloc_box+0x14>
    6dd8:	6811      	ldr	r1, [r2, #0]
    6dda:	6001      	str	r1, [r0, #0]
    6ddc:	2b00      	cmp	r3, #0
    6dde:	d100      	bne.n	6de2 <rt_alloc_box+0x1a>
    6de0:	b662      	cpsie	i
    6de2:	0010      	movs	r0, r2
    6de4:	4770      	bx	lr
    6de6:	46c0      	nop			; (mov r8, r8)

00006de8 <_calloc_box>:
    6de8:	b510      	push	{r4, lr}
    6dea:	0004      	movs	r4, r0
    6dec:	f7fd fb49 	bl	4482 <_alloc_box>
    6df0:	2800      	cmp	r0, #0
    6df2:	d008      	beq.n	6e06 <_calloc_box+0x1e>
    6df4:	68a3      	ldr	r3, [r4, #8]
    6df6:	2b00      	cmp	r3, #0
    6df8:	d005      	beq.n	6e06 <_calloc_box+0x1e>
    6dfa:	0002      	movs	r2, r0
    6dfc:	2100      	movs	r1, #0
    6dfe:	3b04      	subs	r3, #4
    6e00:	c202      	stmia	r2!, {r1}
    6e02:	2b00      	cmp	r3, #0
    6e04:	d1fb      	bne.n	6dfe <_calloc_box+0x16>
    6e06:	bd10      	pop	{r4, pc}

00006e08 <rt_free_box>:
    6e08:	0003      	movs	r3, r0
    6e0a:	2001      	movs	r0, #1
    6e0c:	4299      	cmp	r1, r3
    6e0e:	d30b      	bcc.n	6e28 <rt_free_box+0x20>
    6e10:	685a      	ldr	r2, [r3, #4]
    6e12:	4291      	cmp	r1, r2
    6e14:	d208      	bcs.n	6e28 <rt_free_box+0x20>
    6e16:	f3ef 8210 	mrs	r2, PRIMASK
    6e1a:	b672      	cpsid	i
    6e1c:	4010      	ands	r0, r2
    6e1e:	681a      	ldr	r2, [r3, #0]
    6e20:	600a      	str	r2, [r1, #0]
    6e22:	6019      	str	r1, [r3, #0]
    6e24:	d101      	bne.n	6e2a <rt_free_box+0x22>
    6e26:	b662      	cpsie	i
    6e28:	4770      	bx	lr
    6e2a:	2000      	movs	r0, #0
    6e2c:	e7fc      	b.n	6e28 <rt_free_box+0x20>
    6e2e:	46c0      	nop			; (mov r8, r8)

00006e30 <rt_mut_init>:
    6e30:	2303      	movs	r3, #3
    6e32:	7003      	strb	r3, [r0, #0]
    6e34:	2300      	movs	r3, #0
    6e36:	8043      	strh	r3, [r0, #2]
    6e38:	6043      	str	r3, [r0, #4]
    6e3a:	6083      	str	r3, [r0, #8]
    6e3c:	60c3      	str	r3, [r0, #12]
    6e3e:	4770      	bx	lr

00006e40 <rt_mut_delete>:
    6e40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6e42:	8843      	ldrh	r3, [r0, #2]
    6e44:	0005      	movs	r5, r0
    6e46:	2b00      	cmp	r3, #0
    6e48:	d02c      	beq.n	6ea4 <rt_mut_delete+0x64>
    6e4a:	6880      	ldr	r0, [r0, #8]
    6e4c:	6a04      	ldr	r4, [r0, #32]
    6e4e:	42a5      	cmp	r5, r4
    6e50:	d05a      	beq.n	6f08 <rt_mut_delete+0xc8>
    6e52:	2c00      	cmp	r4, #0
    6e54:	d01a      	beq.n	6e8c <rt_mut_delete+0x4c>
    6e56:	68e3      	ldr	r3, [r4, #12]
    6e58:	429d      	cmp	r5, r3
    6e5a:	d050      	beq.n	6efe <rt_mut_delete+0xbe>
    6e5c:	001a      	movs	r2, r3
    6e5e:	e003      	b.n	6e68 <rt_mut_delete+0x28>
    6e60:	68d1      	ldr	r1, [r2, #12]
    6e62:	428d      	cmp	r5, r1
    6e64:	d04c      	beq.n	6f00 <rt_mut_delete+0xc0>
    6e66:	000a      	movs	r2, r1
    6e68:	2a00      	cmp	r2, #0
    6e6a:	d1f9      	bne.n	6e60 <rt_mut_delete+0x20>
    6e6c:	2224      	movs	r2, #36	; 0x24
    6e6e:	5c81      	ldrb	r1, [r0, r2]
    6e70:	6862      	ldr	r2, [r4, #4]
    6e72:	2a00      	cmp	r2, #0
    6e74:	d005      	beq.n	6e82 <rt_mut_delete+0x42>
    6e76:	7892      	ldrb	r2, [r2, #2]
    6e78:	1c14      	adds	r4, r2, #0
    6e7a:	428a      	cmp	r2, r1
    6e7c:	d200      	bcs.n	6e80 <rt_mut_delete+0x40>
    6e7e:	1c0c      	adds	r4, r1, #0
    6e80:	b2e1      	uxtb	r1, r4
    6e82:	2b00      	cmp	r3, #0
    6e84:	d004      	beq.n	6e90 <rt_mut_delete+0x50>
    6e86:	001c      	movs	r4, r3
    6e88:	68db      	ldr	r3, [r3, #12]
    6e8a:	e7f1      	b.n	6e70 <rt_mut_delete+0x30>
    6e8c:	2324      	movs	r3, #36	; 0x24
    6e8e:	5cc1      	ldrb	r1, [r0, r3]
    6e90:	7883      	ldrb	r3, [r0, #2]
    6e92:	428b      	cmp	r3, r1
    6e94:	d006      	beq.n	6ea4 <rt_mut_delete+0x64>
    6e96:	4b20      	ldr	r3, [pc, #128]	; (6f18 <rt_mut_delete+0xd8>)
    6e98:	7081      	strb	r1, [r0, #2]
    6e9a:	681b      	ldr	r3, [r3, #0]
    6e9c:	4298      	cmp	r0, r3
    6e9e:	d001      	beq.n	6ea4 <rt_mut_delete+0x64>
    6ea0:	f000 fb72 	bl	7588 <rt_resort_prio>
    6ea4:	686b      	ldr	r3, [r5, #4]
    6ea6:	4e1d      	ldr	r6, [pc, #116]	; (6f1c <rt_mut_delete+0xdc>)
    6ea8:	2b00      	cmp	r3, #0
    6eaa:	d012      	beq.n	6ed2 <rt_mut_delete+0x92>
    6eac:	2701      	movs	r7, #1
    6eae:	0028      	movs	r0, r5
    6eb0:	f000 fb3a 	bl	7528 <rt_get_first>
    6eb4:	0004      	movs	r4, r0
    6eb6:	2100      	movs	r1, #0
    6eb8:	f7ff ff04 	bl	6cc4 <rt_ret_val>
    6ebc:	0020      	movs	r0, r4
    6ebe:	f000 fc6b 	bl	7798 <rt_rmv_dly>
    6ec2:	7067      	strb	r7, [r4, #1]
    6ec4:	0021      	movs	r1, r4
    6ec6:	0030      	movs	r0, r6
    6ec8:	f000 fb08 	bl	74dc <rt_put_prio>
    6ecc:	686b      	ldr	r3, [r5, #4]
    6ece:	2b00      	cmp	r3, #0
    6ed0:	d1ed      	bne.n	6eae <rt_mut_delete+0x6e>
    6ed2:	6873      	ldr	r3, [r6, #4]
    6ed4:	2b00      	cmp	r3, #0
    6ed6:	d00e      	beq.n	6ef6 <rt_mut_delete+0xb6>
    6ed8:	4c0f      	ldr	r4, [pc, #60]	; (6f18 <rt_mut_delete+0xd8>)
    6eda:	789a      	ldrb	r2, [r3, #2]
    6edc:	6821      	ldr	r1, [r4, #0]
    6ede:	788b      	ldrb	r3, [r1, #2]
    6ee0:	429a      	cmp	r2, r3
    6ee2:	d908      	bls.n	6ef6 <rt_mut_delete+0xb6>
    6ee4:	0030      	movs	r0, r6
    6ee6:	f000 faf9 	bl	74dc <rt_put_prio>
    6eea:	2201      	movs	r2, #1
    6eec:	6823      	ldr	r3, [r4, #0]
    6eee:	2000      	movs	r0, #0
    6ef0:	705a      	strb	r2, [r3, #1]
    6ef2:	f000 ff07 	bl	7d04 <rt_dispatch>
    6ef6:	2300      	movs	r3, #0
    6ef8:	2000      	movs	r0, #0
    6efa:	702b      	strb	r3, [r5, #0]
    6efc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6efe:	0022      	movs	r2, r4
    6f00:	68eb      	ldr	r3, [r5, #12]
    6f02:	60d3      	str	r3, [r2, #12]
    6f04:	68e3      	ldr	r3, [r4, #12]
    6f06:	e7b1      	b.n	6e6c <rt_mut_delete+0x2c>
    6f08:	2324      	movs	r3, #36	; 0x24
    6f0a:	68ec      	ldr	r4, [r5, #12]
    6f0c:	6204      	str	r4, [r0, #32]
    6f0e:	5cc1      	ldrb	r1, [r0, r3]
    6f10:	2c00      	cmp	r4, #0
    6f12:	d0bd      	beq.n	6e90 <rt_mut_delete+0x50>
    6f14:	68e3      	ldr	r3, [r4, #12]
    6f16:	e7ab      	b.n	6e70 <rt_mut_delete+0x30>
    6f18:	20006064 	.word	0x20006064
    6f1c:	20006030 	.word	0x20006030

00006f20 <rt_mut_release>:
    6f20:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6f22:	8843      	ldrh	r3, [r0, #2]
    6f24:	0004      	movs	r4, r0
    6f26:	20ff      	movs	r0, #255	; 0xff
    6f28:	2b00      	cmp	r3, #0
    6f2a:	d100      	bne.n	6f2e <rt_mut_release+0xe>
    6f2c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6f2e:	4d3c      	ldr	r5, [pc, #240]	; (7020 <rt_mut_release+0x100>)
    6f30:	68a1      	ldr	r1, [r4, #8]
    6f32:	682a      	ldr	r2, [r5, #0]
    6f34:	4291      	cmp	r1, r2
    6f36:	d1f9      	bne.n	6f2c <rt_mut_release+0xc>
    6f38:	3b01      	subs	r3, #1
    6f3a:	b29b      	uxth	r3, r3
    6f3c:	8063      	strh	r3, [r4, #2]
    6f3e:	2b00      	cmp	r3, #0
    6f40:	d140      	bne.n	6fc4 <rt_mut_release+0xa4>
    6f42:	6a0e      	ldr	r6, [r1, #32]
    6f44:	42b4      	cmp	r4, r6
    6f46:	d062      	beq.n	700e <rt_mut_release+0xee>
    6f48:	2e00      	cmp	r6, #0
    6f4a:	d01a      	beq.n	6f82 <rt_mut_release+0x62>
    6f4c:	68f3      	ldr	r3, [r6, #12]
    6f4e:	429c      	cmp	r4, r3
    6f50:	d03a      	beq.n	6fc8 <rt_mut_release+0xa8>
    6f52:	001a      	movs	r2, r3
    6f54:	e003      	b.n	6f5e <rt_mut_release+0x3e>
    6f56:	68d0      	ldr	r0, [r2, #12]
    6f58:	4284      	cmp	r4, r0
    6f5a:	d036      	beq.n	6fca <rt_mut_release+0xaa>
    6f5c:	0002      	movs	r2, r0
    6f5e:	2a00      	cmp	r2, #0
    6f60:	d1f9      	bne.n	6f56 <rt_mut_release+0x36>
    6f62:	2224      	movs	r2, #36	; 0x24
    6f64:	5c8f      	ldrb	r7, [r1, r2]
    6f66:	6872      	ldr	r2, [r6, #4]
    6f68:	2a00      	cmp	r2, #0
    6f6a:	d005      	beq.n	6f78 <rt_mut_release+0x58>
    6f6c:	7892      	ldrb	r2, [r2, #2]
    6f6e:	1c10      	adds	r0, r2, #0
    6f70:	42ba      	cmp	r2, r7
    6f72:	d200      	bcs.n	6f76 <rt_mut_release+0x56>
    6f74:	1c38      	adds	r0, r7, #0
    6f76:	b2c7      	uxtb	r7, r0
    6f78:	2b00      	cmp	r3, #0
    6f7a:	d004      	beq.n	6f86 <rt_mut_release+0x66>
    6f7c:	001e      	movs	r6, r3
    6f7e:	68db      	ldr	r3, [r3, #12]
    6f80:	e7f1      	b.n	6f66 <rt_mut_release+0x46>
    6f82:	2324      	movs	r3, #36	; 0x24
    6f84:	5ccf      	ldrb	r7, [r1, r3]
    6f86:	708f      	strb	r7, [r1, #2]
    6f88:	6863      	ldr	r3, [r4, #4]
    6f8a:	2b00      	cmp	r3, #0
    6f8c:	d030      	beq.n	6ff0 <rt_mut_release+0xd0>
    6f8e:	0020      	movs	r0, r4
    6f90:	f000 faca 	bl	7528 <rt_get_first>
    6f94:	0006      	movs	r6, r0
    6f96:	2100      	movs	r1, #0
    6f98:	f7ff fe94 	bl	6cc4 <rt_ret_val>
    6f9c:	0030      	movs	r0, r6
    6f9e:	f000 fbfb 	bl	7798 <rt_rmv_dly>
    6fa2:	2301      	movs	r3, #1
    6fa4:	8063      	strh	r3, [r4, #2]
    6fa6:	6a33      	ldr	r3, [r6, #32]
    6fa8:	60a6      	str	r6, [r4, #8]
    6faa:	60e3      	str	r3, [r4, #12]
    6fac:	6234      	str	r4, [r6, #32]
    6fae:	4c1d      	ldr	r4, [pc, #116]	; (7024 <rt_mut_release+0x104>)
    6fb0:	6829      	ldr	r1, [r5, #0]
    6fb2:	6863      	ldr	r3, [r4, #4]
    6fb4:	788a      	ldrb	r2, [r1, #2]
    6fb6:	789b      	ldrb	r3, [r3, #2]
    6fb8:	2701      	movs	r7, #1
    6fba:	429a      	cmp	r2, r3
    6fbc:	d309      	bcc.n	6fd2 <rt_mut_release+0xb2>
    6fbe:	0030      	movs	r0, r6
    6fc0:	f000 fea0 	bl	7d04 <rt_dispatch>
    6fc4:	2000      	movs	r0, #0
    6fc6:	e7b1      	b.n	6f2c <rt_mut_release+0xc>
    6fc8:	0032      	movs	r2, r6
    6fca:	68e3      	ldr	r3, [r4, #12]
    6fcc:	60d3      	str	r3, [r2, #12]
    6fce:	68f3      	ldr	r3, [r6, #12]
    6fd0:	e7c7      	b.n	6f62 <rt_mut_release+0x42>
    6fd2:	0020      	movs	r0, r4
    6fd4:	f000 fa82 	bl	74dc <rt_put_prio>
    6fd8:	0031      	movs	r1, r6
    6fda:	0020      	movs	r0, r4
    6fdc:	f000 fa7e 	bl	74dc <rt_put_prio>
    6fe0:	682b      	ldr	r3, [r5, #0]
    6fe2:	2000      	movs	r0, #0
    6fe4:	705f      	strb	r7, [r3, #1]
    6fe6:	7077      	strb	r7, [r6, #1]
    6fe8:	f000 fe8c 	bl	7d04 <rt_dispatch>
    6fec:	2000      	movs	r0, #0
    6fee:	e79d      	b.n	6f2c <rt_mut_release+0xc>
    6ff0:	480c      	ldr	r0, [pc, #48]	; (7024 <rt_mut_release+0x104>)
    6ff2:	6843      	ldr	r3, [r0, #4]
    6ff4:	789b      	ldrb	r3, [r3, #2]
    6ff6:	42bb      	cmp	r3, r7
    6ff8:	d9e4      	bls.n	6fc4 <rt_mut_release+0xa4>
    6ffa:	f000 fa6f 	bl	74dc <rt_put_prio>
    6ffe:	2201      	movs	r2, #1
    7000:	682b      	ldr	r3, [r5, #0]
    7002:	2000      	movs	r0, #0
    7004:	705a      	strb	r2, [r3, #1]
    7006:	f000 fe7d 	bl	7d04 <rt_dispatch>
    700a:	2000      	movs	r0, #0
    700c:	e78e      	b.n	6f2c <rt_mut_release+0xc>
    700e:	2324      	movs	r3, #36	; 0x24
    7010:	68e6      	ldr	r6, [r4, #12]
    7012:	620e      	str	r6, [r1, #32]
    7014:	5ccf      	ldrb	r7, [r1, r3]
    7016:	2e00      	cmp	r6, #0
    7018:	d0b5      	beq.n	6f86 <rt_mut_release+0x66>
    701a:	68f3      	ldr	r3, [r6, #12]
    701c:	e7a3      	b.n	6f66 <rt_mut_release+0x46>
    701e:	46c0      	nop			; (mov r8, r8)
    7020:	20006064 	.word	0x20006064
    7024:	20006030 	.word	0x20006030

00007028 <rt_mut_wait>:
    7028:	b570      	push	{r4, r5, r6, lr}
    702a:	8843      	ldrh	r3, [r0, #2]
    702c:	0004      	movs	r4, r0
    702e:	000d      	movs	r5, r1
    7030:	2b00      	cmp	r3, #0
    7032:	d017      	beq.n	7064 <rt_mut_wait+0x3c>
    7034:	4e19      	ldr	r6, [pc, #100]	; (709c <rt_mut_wait+0x74>)
    7036:	6882      	ldr	r2, [r0, #8]
    7038:	6831      	ldr	r1, [r6, #0]
    703a:	428a      	cmp	r2, r1
    703c:	d026      	beq.n	708c <rt_mut_wait+0x64>
    703e:	2001      	movs	r0, #1
    7040:	2d00      	cmp	r5, #0
    7042:	d00e      	beq.n	7062 <rt_mut_wait+0x3a>
    7044:	788b      	ldrb	r3, [r1, #2]
    7046:	7890      	ldrb	r0, [r2, #2]
    7048:	4298      	cmp	r0, r3
    704a:	d319      	bcc.n	7080 <rt_mut_wait+0x58>
    704c:	6863      	ldr	r3, [r4, #4]
    704e:	2b00      	cmp	r3, #0
    7050:	d012      	beq.n	7078 <rt_mut_wait+0x50>
    7052:	0020      	movs	r0, r4
    7054:	f000 fa42 	bl	74dc <rt_put_prio>
    7058:	0028      	movs	r0, r5
    705a:	2109      	movs	r1, #9
    705c:	f000 fe78 	bl	7d50 <rt_block>
    7060:	2001      	movs	r0, #1
    7062:	bd70      	pop	{r4, r5, r6, pc}
    7064:	4b0d      	ldr	r3, [pc, #52]	; (709c <rt_mut_wait+0x74>)
    7066:	681b      	ldr	r3, [r3, #0]
    7068:	6a1a      	ldr	r2, [r3, #32]
    706a:	6083      	str	r3, [r0, #8]
    706c:	60c2      	str	r2, [r0, #12]
    706e:	6218      	str	r0, [r3, #32]
    7070:	2301      	movs	r3, #1
    7072:	8043      	strh	r3, [r0, #2]
    7074:	2000      	movs	r0, #0
    7076:	e7f4      	b.n	7062 <rt_mut_wait+0x3a>
    7078:	6061      	str	r1, [r4, #4]
    707a:	604b      	str	r3, [r1, #4]
    707c:	608c      	str	r4, [r1, #8]
    707e:	e7eb      	b.n	7058 <rt_mut_wait+0x30>
    7080:	7093      	strb	r3, [r2, #2]
    7082:	68a0      	ldr	r0, [r4, #8]
    7084:	f000 fa80 	bl	7588 <rt_resort_prio>
    7088:	6831      	ldr	r1, [r6, #0]
    708a:	e7df      	b.n	704c <rt_mut_wait+0x24>
    708c:	4a04      	ldr	r2, [pc, #16]	; (70a0 <rt_mut_wait+0x78>)
    708e:	20ff      	movs	r0, #255	; 0xff
    7090:	4293      	cmp	r3, r2
    7092:	d0e6      	beq.n	7062 <rt_mut_wait+0x3a>
    7094:	3301      	adds	r3, #1
    7096:	8063      	strh	r3, [r4, #2]
    7098:	2000      	movs	r0, #0
    709a:	e7e2      	b.n	7062 <rt_mut_wait+0x3a>
    709c:	20006064 	.word	0x20006064
    70a0:	0000ffff 	.word	0x0000ffff

000070a4 <rt_time_get>:
    70a4:	4b01      	ldr	r3, [pc, #4]	; (70ac <rt_time_get+0x8>)
    70a6:	6818      	ldr	r0, [r3, #0]
    70a8:	4770      	bx	lr
    70aa:	46c0      	nop			; (mov r8, r8)
    70ac:	2000602c 	.word	0x2000602c

000070b0 <rt_dly_wait>:
    70b0:	b510      	push	{r4, lr}
    70b2:	2103      	movs	r1, #3
    70b4:	f000 fe4c 	bl	7d50 <rt_block>
    70b8:	bd10      	pop	{r4, pc}
    70ba:	46c0      	nop			; (mov r8, r8)

000070bc <rt_itv_set>:
    70bc:	4b03      	ldr	r3, [pc, #12]	; (70cc <rt_itv_set+0x10>)
    70be:	681a      	ldr	r2, [r3, #0]
    70c0:	4b03      	ldr	r3, [pc, #12]	; (70d0 <rt_itv_set+0x14>)
    70c2:	82d0      	strh	r0, [r2, #22]
    70c4:	681b      	ldr	r3, [r3, #0]
    70c6:	18c0      	adds	r0, r0, r3
    70c8:	8290      	strh	r0, [r2, #20]
    70ca:	4770      	bx	lr
    70cc:	20006064 	.word	0x20006064
    70d0:	2000602c 	.word	0x2000602c

000070d4 <rt_itv_wait>:
    70d4:	b510      	push	{r4, lr}
    70d6:	4b08      	ldr	r3, [pc, #32]	; (70f8 <rt_itv_wait+0x24>)
    70d8:	681a      	ldr	r2, [r3, #0]
    70da:	4b08      	ldr	r3, [pc, #32]	; (70fc <rt_itv_wait+0x28>)
    70dc:	8a90      	ldrh	r0, [r2, #20]
    70de:	681b      	ldr	r3, [r3, #0]
    70e0:	8ad1      	ldrh	r1, [r2, #22]
    70e2:	1ac3      	subs	r3, r0, r3
    70e4:	1841      	adds	r1, r0, r1
    70e6:	8291      	strh	r1, [r2, #20]
    70e8:	b298      	uxth	r0, r3
    70ea:	041b      	lsls	r3, r3, #16
    70ec:	d402      	bmi.n	70f4 <rt_itv_wait+0x20>
    70ee:	2104      	movs	r1, #4
    70f0:	f000 fe2e 	bl	7d50 <rt_block>
    70f4:	bd10      	pop	{r4, pc}
    70f6:	46c0      	nop			; (mov r8, r8)
    70f8:	20006064 	.word	0x20006064
    70fc:	2000602c 	.word	0x2000602c

00007100 <rt_sem_init>:
    7100:	2302      	movs	r3, #2
    7102:	7003      	strb	r3, [r0, #0]
    7104:	2300      	movs	r3, #0
    7106:	8041      	strh	r1, [r0, #2]
    7108:	6043      	str	r3, [r0, #4]
    710a:	4770      	bx	lr

0000710c <rt_sem_delete>:
    710c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    710e:	6843      	ldr	r3, [r0, #4]
    7110:	0005      	movs	r5, r0
    7112:	4e16      	ldr	r6, [pc, #88]	; (716c <rt_sem_delete+0x60>)
    7114:	2b00      	cmp	r3, #0
    7116:	d012      	beq.n	713e <rt_sem_delete+0x32>
    7118:	2701      	movs	r7, #1
    711a:	0028      	movs	r0, r5
    711c:	f000 fa04 	bl	7528 <rt_get_first>
    7120:	0004      	movs	r4, r0
    7122:	2100      	movs	r1, #0
    7124:	f7ff fdce 	bl	6cc4 <rt_ret_val>
    7128:	0020      	movs	r0, r4
    712a:	f000 fb35 	bl	7798 <rt_rmv_dly>
    712e:	7067      	strb	r7, [r4, #1]
    7130:	0021      	movs	r1, r4
    7132:	0030      	movs	r0, r6
    7134:	f000 f9d2 	bl	74dc <rt_put_prio>
    7138:	686b      	ldr	r3, [r5, #4]
    713a:	2b00      	cmp	r3, #0
    713c:	d1ed      	bne.n	711a <rt_sem_delete+0xe>
    713e:	6873      	ldr	r3, [r6, #4]
    7140:	2b00      	cmp	r3, #0
    7142:	d00e      	beq.n	7162 <rt_sem_delete+0x56>
    7144:	4c0a      	ldr	r4, [pc, #40]	; (7170 <rt_sem_delete+0x64>)
    7146:	789a      	ldrb	r2, [r3, #2]
    7148:	6821      	ldr	r1, [r4, #0]
    714a:	788b      	ldrb	r3, [r1, #2]
    714c:	429a      	cmp	r2, r3
    714e:	d908      	bls.n	7162 <rt_sem_delete+0x56>
    7150:	0030      	movs	r0, r6
    7152:	f000 f9c3 	bl	74dc <rt_put_prio>
    7156:	2201      	movs	r2, #1
    7158:	6823      	ldr	r3, [r4, #0]
    715a:	2000      	movs	r0, #0
    715c:	705a      	strb	r2, [r3, #1]
    715e:	f000 fdd1 	bl	7d04 <rt_dispatch>
    7162:	2300      	movs	r3, #0
    7164:	2000      	movs	r0, #0
    7166:	702b      	strb	r3, [r5, #0]
    7168:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    716a:	46c0      	nop			; (mov r8, r8)
    716c:	20006030 	.word	0x20006030
    7170:	20006064 	.word	0x20006064

00007174 <rt_sem_send>:
    7174:	6843      	ldr	r3, [r0, #4]
    7176:	b510      	push	{r4, lr}
    7178:	2b00      	cmp	r3, #0
    717a:	d00d      	beq.n	7198 <rt_sem_send+0x24>
    717c:	f000 f9d4 	bl	7528 <rt_get_first>
    7180:	0004      	movs	r4, r0
    7182:	2101      	movs	r1, #1
    7184:	f7ff fd9e 	bl	6cc4 <rt_ret_val>
    7188:	0020      	movs	r0, r4
    718a:	f000 fb05 	bl	7798 <rt_rmv_dly>
    718e:	0020      	movs	r0, r4
    7190:	f000 fdb8 	bl	7d04 <rt_dispatch>
    7194:	2000      	movs	r0, #0
    7196:	bd10      	pop	{r4, pc}
    7198:	8843      	ldrh	r3, [r0, #2]
    719a:	3301      	adds	r3, #1
    719c:	8043      	strh	r3, [r0, #2]
    719e:	e7f9      	b.n	7194 <rt_sem_send+0x20>

000071a0 <rt_sem_wait>:
    71a0:	b510      	push	{r4, lr}
    71a2:	8843      	ldrh	r3, [r0, #2]
    71a4:	000c      	movs	r4, r1
    71a6:	2b00      	cmp	r3, #0
    71a8:	d110      	bne.n	71cc <rt_sem_wait+0x2c>
    71aa:	2301      	movs	r3, #1
    71ac:	2900      	cmp	r1, #0
    71ae:	d00b      	beq.n	71c8 <rt_sem_wait+0x28>
    71b0:	6843      	ldr	r3, [r0, #4]
    71b2:	2b00      	cmp	r3, #0
    71b4:	d00e      	beq.n	71d4 <rt_sem_wait+0x34>
    71b6:	4b0a      	ldr	r3, [pc, #40]	; (71e0 <rt_sem_wait+0x40>)
    71b8:	6819      	ldr	r1, [r3, #0]
    71ba:	f000 f98f 	bl	74dc <rt_put_prio>
    71be:	2107      	movs	r1, #7
    71c0:	0020      	movs	r0, r4
    71c2:	f000 fdc5 	bl	7d50 <rt_block>
    71c6:	2301      	movs	r3, #1
    71c8:	0018      	movs	r0, r3
    71ca:	bd10      	pop	{r4, pc}
    71cc:	3b01      	subs	r3, #1
    71ce:	8043      	strh	r3, [r0, #2]
    71d0:	2300      	movs	r3, #0
    71d2:	e7f9      	b.n	71c8 <rt_sem_wait+0x28>
    71d4:	4a02      	ldr	r2, [pc, #8]	; (71e0 <rt_sem_wait+0x40>)
    71d6:	6812      	ldr	r2, [r2, #0]
    71d8:	6042      	str	r2, [r0, #4]
    71da:	6053      	str	r3, [r2, #4]
    71dc:	6090      	str	r0, [r2, #8]
    71de:	e7ee      	b.n	71be <rt_sem_wait+0x1e>
    71e0:	20006064 	.word	0x20006064

000071e4 <isr_sem_send>:
    71e4:	b510      	push	{r4, lr}
    71e6:	2100      	movs	r1, #0
    71e8:	f000 faec 	bl	77c4 <rt_psq_enq>
    71ec:	f000 fcce 	bl	7b8c <rt_psh_req>
    71f0:	bd10      	pop	{r4, pc}
    71f2:	46c0      	nop			; (mov r8, r8)

000071f4 <rt_sem_psh>:
    71f4:	6843      	ldr	r3, [r0, #4]
    71f6:	b510      	push	{r4, lr}
    71f8:	2b00      	cmp	r3, #0
    71fa:	d00f      	beq.n	721c <rt_sem_psh+0x28>
    71fc:	f000 f994 	bl	7528 <rt_get_first>
    7200:	0004      	movs	r4, r0
    7202:	f000 fac9 	bl	7798 <rt_rmv_dly>
    7206:	2301      	movs	r3, #1
    7208:	2101      	movs	r1, #1
    720a:	0020      	movs	r0, r4
    720c:	7063      	strb	r3, [r4, #1]
    720e:	f7ff fd59 	bl	6cc4 <rt_ret_val>
    7212:	0021      	movs	r1, r4
    7214:	4803      	ldr	r0, [pc, #12]	; (7224 <rt_sem_psh+0x30>)
    7216:	f000 f961 	bl	74dc <rt_put_prio>
    721a:	bd10      	pop	{r4, pc}
    721c:	8843      	ldrh	r3, [r0, #2]
    721e:	3301      	adds	r3, #1
    7220:	8043      	strh	r3, [r0, #2]
    7222:	e7fa      	b.n	721a <rt_sem_psh+0x26>
    7224:	20006030 	.word	0x20006030

00007228 <rt_mbx_init>:
    7228:	2301      	movs	r3, #1
    722a:	7003      	strb	r3, [r0, #0]
    722c:	2300      	movs	r3, #0
    722e:	3910      	subs	r1, #16
    7230:	0889      	lsrs	r1, r1, #2
    7232:	7043      	strb	r3, [r0, #1]
    7234:	7083      	strb	r3, [r0, #2]
    7236:	6043      	str	r3, [r0, #4]
    7238:	8103      	strh	r3, [r0, #8]
    723a:	8143      	strh	r3, [r0, #10]
    723c:	8183      	strh	r3, [r0, #12]
    723e:	81c1      	strh	r1, [r0, #14]
    7240:	4770      	bx	lr
    7242:	46c0      	nop			; (mov r8, r8)

00007244 <rt_mbx_send>:
    7244:	6843      	ldr	r3, [r0, #4]
    7246:	b570      	push	{r4, r5, r6, lr}
    7248:	000d      	movs	r5, r1
    724a:	0016      	movs	r6, r2
    724c:	2b00      	cmp	r3, #0
    724e:	d002      	beq.n	7256 <rt_mbx_send+0x12>
    7250:	7842      	ldrb	r2, [r0, #1]
    7252:	2a01      	cmp	r2, #1
    7254:	d028      	beq.n	72a8 <rt_mbx_send+0x64>
    7256:	8982      	ldrh	r2, [r0, #12]
    7258:	89c4      	ldrh	r4, [r0, #14]
    725a:	42a2      	cmp	r2, r4
    725c:	d013      	beq.n	7286 <rt_mbx_send+0x42>
    725e:	8903      	ldrh	r3, [r0, #8]
    7260:	1d19      	adds	r1, r3, #4
    7262:	0089      	lsls	r1, r1, #2
    7264:	500d      	str	r5, [r1, r0]
    7266:	f3ef 8110 	mrs	r1, PRIMASK
    726a:	b672      	cpsid	i
    726c:	3201      	adds	r2, #1
    726e:	8182      	strh	r2, [r0, #12]
    7270:	b662      	cpsie	i
    7272:	3301      	adds	r3, #1
    7274:	b29b      	uxth	r3, r3
    7276:	429c      	cmp	r4, r3
    7278:	d003      	beq.n	7282 <rt_mbx_send+0x3e>
    727a:	2200      	movs	r2, #0
    727c:	8103      	strh	r3, [r0, #8]
    727e:	0010      	movs	r0, r2
    7280:	bd70      	pop	{r4, r5, r6, pc}
    7282:	2300      	movs	r3, #0
    7284:	e7f9      	b.n	727a <rt_mbx_send+0x36>
    7286:	2201      	movs	r2, #1
    7288:	2e00      	cmp	r6, #0
    728a:	d0f8      	beq.n	727e <rt_mbx_send+0x3a>
    728c:	2b00      	cmp	r3, #0
    728e:	d01a      	beq.n	72c6 <rt_mbx_send+0x82>
    7290:	4c11      	ldr	r4, [pc, #68]	; (72d8 <rt_mbx_send+0x94>)
    7292:	6821      	ldr	r1, [r4, #0]
    7294:	f000 f922 	bl	74dc <rt_put_prio>
    7298:	6822      	ldr	r2, [r4, #0]
    729a:	61d5      	str	r5, [r2, #28]
    729c:	2108      	movs	r1, #8
    729e:	0030      	movs	r0, r6
    72a0:	f000 fd56 	bl	7d50 <rt_block>
    72a4:	2201      	movs	r2, #1
    72a6:	e7ea      	b.n	727e <rt_mbx_send+0x3a>
    72a8:	f000 f93e 	bl	7528 <rt_get_first>
    72ac:	0004      	movs	r4, r0
    72ae:	002a      	movs	r2, r5
    72b0:	2110      	movs	r1, #16
    72b2:	f7ff fd0b 	bl	6ccc <rt_ret_val2>
    72b6:	0020      	movs	r0, r4
    72b8:	f000 fa6e 	bl	7798 <rt_rmv_dly>
    72bc:	0020      	movs	r0, r4
    72be:	f000 fd21 	bl	7d04 <rt_dispatch>
    72c2:	2200      	movs	r2, #0
    72c4:	e7db      	b.n	727e <rt_mbx_send+0x3a>
    72c6:	4a04      	ldr	r2, [pc, #16]	; (72d8 <rt_mbx_send+0x94>)
    72c8:	6812      	ldr	r2, [r2, #0]
    72ca:	6042      	str	r2, [r0, #4]
    72cc:	6053      	str	r3, [r2, #4]
    72ce:	2302      	movs	r3, #2
    72d0:	6090      	str	r0, [r2, #8]
    72d2:	7043      	strb	r3, [r0, #1]
    72d4:	e7e1      	b.n	729a <rt_mbx_send+0x56>
    72d6:	46c0      	nop			; (mov r8, r8)
    72d8:	20006064 	.word	0x20006064

000072dc <rt_mbx_wait>:
    72dc:	b570      	push	{r4, r5, r6, lr}
    72de:	0015      	movs	r5, r2
    72e0:	8982      	ldrh	r2, [r0, #12]
    72e2:	0004      	movs	r4, r0
    72e4:	2a00      	cmp	r2, #0
    72e6:	d018      	beq.n	731a <rt_mbx_wait+0x3e>
    72e8:	8943      	ldrh	r3, [r0, #10]
    72ea:	1d18      	adds	r0, r3, #4
    72ec:	0080      	lsls	r0, r0, #2
    72ee:	5900      	ldr	r0, [r0, r4]
    72f0:	3301      	adds	r3, #1
    72f2:	6008      	str	r0, [r1, #0]
    72f4:	89e1      	ldrh	r1, [r4, #14]
    72f6:	b29b      	uxth	r3, r3
    72f8:	8163      	strh	r3, [r4, #10]
    72fa:	4299      	cmp	r1, r3
    72fc:	d01e      	beq.n	733c <rt_mbx_wait+0x60>
    72fe:	6863      	ldr	r3, [r4, #4]
    7300:	2b00      	cmp	r3, #0
    7302:	d002      	beq.n	730a <rt_mbx_wait+0x2e>
    7304:	7863      	ldrb	r3, [r4, #1]
    7306:	2b02      	cmp	r3, #2
    7308:	d025      	beq.n	7356 <rt_mbx_wait+0x7a>
    730a:	f3ef 8310 	mrs	r3, PRIMASK
    730e:	b672      	cpsid	i
    7310:	3a01      	subs	r2, #1
    7312:	81a2      	strh	r2, [r4, #12]
    7314:	b662      	cpsie	i
    7316:	2000      	movs	r0, #0
    7318:	bd70      	pop	{r4, r5, r6, pc}
    731a:	2001      	movs	r0, #1
    731c:	2d00      	cmp	r5, #0
    731e:	d0fb      	beq.n	7318 <rt_mbx_wait+0x3c>
    7320:	6863      	ldr	r3, [r4, #4]
    7322:	2b00      	cmp	r3, #0
    7324:	d010      	beq.n	7348 <rt_mbx_wait+0x6c>
    7326:	4b1a      	ldr	r3, [pc, #104]	; (7390 <rt_mbx_wait+0xb4>)
    7328:	0020      	movs	r0, r4
    732a:	6819      	ldr	r1, [r3, #0]
    732c:	f000 f8d6 	bl	74dc <rt_put_prio>
    7330:	0028      	movs	r0, r5
    7332:	2108      	movs	r1, #8
    7334:	f000 fd0c 	bl	7d50 <rt_block>
    7338:	2001      	movs	r0, #1
    733a:	e7ed      	b.n	7318 <rt_mbx_wait+0x3c>
    733c:	2300      	movs	r3, #0
    733e:	8163      	strh	r3, [r4, #10]
    7340:	6863      	ldr	r3, [r4, #4]
    7342:	2b00      	cmp	r3, #0
    7344:	d1de      	bne.n	7304 <rt_mbx_wait+0x28>
    7346:	e7e0      	b.n	730a <rt_mbx_wait+0x2e>
    7348:	4a11      	ldr	r2, [pc, #68]	; (7390 <rt_mbx_wait+0xb4>)
    734a:	6812      	ldr	r2, [r2, #0]
    734c:	6062      	str	r2, [r4, #4]
    734e:	6053      	str	r3, [r2, #4]
    7350:	6094      	str	r4, [r2, #8]
    7352:	7060      	strb	r0, [r4, #1]
    7354:	e7ec      	b.n	7330 <rt_mbx_wait+0x54>
    7356:	0020      	movs	r0, r4
    7358:	f000 f8e6 	bl	7528 <rt_get_first>
    735c:	0005      	movs	r5, r0
    735e:	2100      	movs	r1, #0
    7360:	f7ff fcb0 	bl	6cc4 <rt_ret_val>
    7364:	8923      	ldrh	r3, [r4, #8]
    7366:	69e9      	ldr	r1, [r5, #28]
    7368:	1d1a      	adds	r2, r3, #4
    736a:	0092      	lsls	r2, r2, #2
    736c:	5111      	str	r1, [r2, r4]
    736e:	3301      	adds	r3, #1
    7370:	89e2      	ldrh	r2, [r4, #14]
    7372:	b29b      	uxth	r3, r3
    7374:	8123      	strh	r3, [r4, #8]
    7376:	429a      	cmp	r2, r3
    7378:	d101      	bne.n	737e <rt_mbx_wait+0xa2>
    737a:	2300      	movs	r3, #0
    737c:	8123      	strh	r3, [r4, #8]
    737e:	0028      	movs	r0, r5
    7380:	f000 fa0a 	bl	7798 <rt_rmv_dly>
    7384:	0028      	movs	r0, r5
    7386:	f000 fcbd 	bl	7d04 <rt_dispatch>
    738a:	2000      	movs	r0, #0
    738c:	e7c4      	b.n	7318 <rt_mbx_wait+0x3c>
    738e:	46c0      	nop			; (mov r8, r8)
    7390:	20006064 	.word	0x20006064

00007394 <rt_mbx_check>:
    7394:	89c3      	ldrh	r3, [r0, #14]
    7396:	8980      	ldrh	r0, [r0, #12]
    7398:	1a18      	subs	r0, r3, r0
    739a:	4770      	bx	lr

0000739c <isr_mbx_send>:
    739c:	b510      	push	{r4, lr}
    739e:	f000 fa11 	bl	77c4 <rt_psq_enq>
    73a2:	f000 fbf3 	bl	7b8c <rt_psh_req>
    73a6:	bd10      	pop	{r4, pc}

000073a8 <isr_mbx_receive>:
    73a8:	b510      	push	{r4, lr}
    73aa:	8982      	ldrh	r2, [r0, #12]
    73ac:	0004      	movs	r4, r0
    73ae:	2000      	movs	r0, #0
    73b0:	2a00      	cmp	r2, #0
    73b2:	d017      	beq.n	73e4 <isr_mbx_receive+0x3c>
    73b4:	8963      	ldrh	r3, [r4, #10]
    73b6:	1d18      	adds	r0, r3, #4
    73b8:	0080      	lsls	r0, r0, #2
    73ba:	5900      	ldr	r0, [r0, r4]
    73bc:	6008      	str	r0, [r1, #0]
    73be:	6861      	ldr	r1, [r4, #4]
    73c0:	2900      	cmp	r1, #0
    73c2:	d002      	beq.n	73ca <isr_mbx_receive+0x22>
    73c4:	7861      	ldrb	r1, [r4, #1]
    73c6:	2902      	cmp	r1, #2
    73c8:	d010      	beq.n	73ec <isr_mbx_receive+0x44>
    73ca:	f3ef 8110 	mrs	r1, PRIMASK
    73ce:	b672      	cpsid	i
    73d0:	3a01      	subs	r2, #1
    73d2:	81a2      	strh	r2, [r4, #12]
    73d4:	b662      	cpsie	i
    73d6:	3301      	adds	r3, #1
    73d8:	89e2      	ldrh	r2, [r4, #14]
    73da:	b29b      	uxth	r3, r3
    73dc:	8163      	strh	r3, [r4, #10]
    73de:	2004      	movs	r0, #4
    73e0:	429a      	cmp	r2, r3
    73e2:	d000      	beq.n	73e6 <isr_mbx_receive+0x3e>
    73e4:	bd10      	pop	{r4, pc}
    73e6:	2300      	movs	r3, #0
    73e8:	8163      	strh	r3, [r4, #10]
    73ea:	e7fb      	b.n	73e4 <isr_mbx_receive+0x3c>
    73ec:	2100      	movs	r1, #0
    73ee:	0020      	movs	r0, r4
    73f0:	f000 f9e8 	bl	77c4 <rt_psq_enq>
    73f4:	f000 fbca 	bl	7b8c <rt_psh_req>
    73f8:	89a2      	ldrh	r2, [r4, #12]
    73fa:	8963      	ldrh	r3, [r4, #10]
    73fc:	e7e5      	b.n	73ca <isr_mbx_receive+0x22>
    73fe:	46c0      	nop			; (mov r8, r8)

00007400 <rt_mbx_psh>:
    7400:	6843      	ldr	r3, [r0, #4]
    7402:	b570      	push	{r4, r5, r6, lr}
    7404:	0004      	movs	r4, r0
    7406:	000e      	movs	r6, r1
    7408:	2b00      	cmp	r3, #0
    740a:	d04b      	beq.n	74a4 <rt_mbx_psh+0xa4>
    740c:	7845      	ldrb	r5, [r0, #1]
    740e:	2d02      	cmp	r5, #2
    7410:	d023      	beq.n	745a <rt_mbx_psh+0x5a>
    7412:	2d03      	cmp	r5, #3
    7414:	d002      	beq.n	741c <rt_mbx_psh+0x1c>
    7416:	2d01      	cmp	r5, #1
    7418:	d00f      	beq.n	743a <rt_mbx_psh+0x3a>
    741a:	bd70      	pop	{r4, r5, r6, pc}
    741c:	0008      	movs	r0, r1
    741e:	f7ff fcd3 	bl	6dc8 <rt_alloc_box>
    7422:	1e05      	subs	r5, r0, #0
    7424:	d0f9      	beq.n	741a <rt_mbx_psh+0x1a>
    7426:	0020      	movs	r0, r4
    7428:	f000 f87e 	bl	7528 <rt_get_first>
    742c:	0029      	movs	r1, r5
    742e:	0004      	movs	r4, r0
    7430:	f7ff fc48 	bl	6cc4 <rt_ret_val>
    7434:	2301      	movs	r3, #1
    7436:	7063      	strb	r3, [r4, #1]
    7438:	e007      	b.n	744a <rt_mbx_psh+0x4a>
    743a:	f000 f875 	bl	7528 <rt_get_first>
    743e:	0004      	movs	r4, r0
    7440:	0032      	movs	r2, r6
    7442:	2110      	movs	r1, #16
    7444:	f7ff fc42 	bl	6ccc <rt_ret_val2>
    7448:	7065      	strb	r5, [r4, #1]
    744a:	0020      	movs	r0, r4
    744c:	f000 f9a4 	bl	7798 <rt_rmv_dly>
    7450:	0021      	movs	r1, r4
    7452:	4821      	ldr	r0, [pc, #132]	; (74d8 <rt_mbx_psh+0xd8>)
    7454:	f000 f842 	bl	74dc <rt_put_prio>
    7458:	e7df      	b.n	741a <rt_mbx_psh+0x1a>
    745a:	f000 f865 	bl	7528 <rt_get_first>
    745e:	0005      	movs	r5, r0
    7460:	2100      	movs	r1, #0
    7462:	f7ff fc2f 	bl	6cc4 <rt_ret_val>
    7466:	8923      	ldrh	r3, [r4, #8]
    7468:	69e9      	ldr	r1, [r5, #28]
    746a:	1d1a      	adds	r2, r3, #4
    746c:	0092      	lsls	r2, r2, #2
    746e:	5111      	str	r1, [r2, r4]
    7470:	f3ef 8210 	mrs	r2, PRIMASK
    7474:	b672      	cpsid	i
    7476:	89a2      	ldrh	r2, [r4, #12]
    7478:	3201      	adds	r2, #1
    747a:	81a2      	strh	r2, [r4, #12]
    747c:	b662      	cpsie	i
    747e:	3301      	adds	r3, #1
    7480:	89e2      	ldrh	r2, [r4, #14]
    7482:	b29b      	uxth	r3, r3
    7484:	8123      	strh	r3, [r4, #8]
    7486:	429a      	cmp	r2, r3
    7488:	d009      	beq.n	749e <rt_mbx_psh+0x9e>
    748a:	2301      	movs	r3, #1
    748c:	0028      	movs	r0, r5
    748e:	706b      	strb	r3, [r5, #1]
    7490:	f000 f982 	bl	7798 <rt_rmv_dly>
    7494:	0029      	movs	r1, r5
    7496:	4810      	ldr	r0, [pc, #64]	; (74d8 <rt_mbx_psh+0xd8>)
    7498:	f000 f820 	bl	74dc <rt_put_prio>
    749c:	e7bd      	b.n	741a <rt_mbx_psh+0x1a>
    749e:	2300      	movs	r3, #0
    74a0:	8123      	strh	r3, [r4, #8]
    74a2:	e7f2      	b.n	748a <rt_mbx_psh+0x8a>
    74a4:	8981      	ldrh	r1, [r0, #12]
    74a6:	89c5      	ldrh	r5, [r0, #14]
    74a8:	42a9      	cmp	r1, r5
    74aa:	d20f      	bcs.n	74cc <rt_mbx_psh+0xcc>
    74ac:	8902      	ldrh	r2, [r0, #8]
    74ae:	1d10      	adds	r0, r2, #4
    74b0:	0080      	lsls	r0, r0, #2
    74b2:	5106      	str	r6, [r0, r4]
    74b4:	f3ef 8010 	mrs	r0, PRIMASK
    74b8:	b672      	cpsid	i
    74ba:	3101      	adds	r1, #1
    74bc:	81a1      	strh	r1, [r4, #12]
    74be:	b662      	cpsie	i
    74c0:	3201      	adds	r2, #1
    74c2:	b292      	uxth	r2, r2
    74c4:	4295      	cmp	r5, r2
    74c6:	d005      	beq.n	74d4 <rt_mbx_psh+0xd4>
    74c8:	8122      	strh	r2, [r4, #8]
    74ca:	e7a6      	b.n	741a <rt_mbx_psh+0x1a>
    74cc:	2003      	movs	r0, #3
    74ce:	f7fa fa3b 	bl	1948 <os_error>
    74d2:	e7a2      	b.n	741a <rt_mbx_psh+0x1a>
    74d4:	8123      	strh	r3, [r4, #8]
    74d6:	e7a0      	b.n	741a <rt_mbx_psh+0x1a>
    74d8:	20006030 	.word	0x20006030

000074dc <rt_put_prio>:
    74dc:	b530      	push	{r4, r5, lr}
    74de:	7805      	ldrb	r5, [r0, #0]
    74e0:	6842      	ldr	r2, [r0, #4]
    74e2:	3d01      	subs	r5, #1
    74e4:	b2ed      	uxtb	r5, r5
    74e6:	788c      	ldrb	r4, [r1, #2]
    74e8:	2a00      	cmp	r2, #0
    74ea:	d01a      	beq.n	7522 <rt_put_prio+0x46>
    74ec:	7893      	ldrb	r3, [r2, #2]
    74ee:	42a3      	cmp	r3, r4
    74f0:	d204      	bcs.n	74fc <rt_put_prio+0x20>
    74f2:	e00e      	b.n	7512 <rt_put_prio+0x36>
    74f4:	7898      	ldrb	r0, [r3, #2]
    74f6:	4284      	cmp	r4, r0
    74f8:	d80d      	bhi.n	7516 <rt_put_prio+0x3a>
    74fa:	001a      	movs	r2, r3
    74fc:	6853      	ldr	r3, [r2, #4]
    74fe:	2b00      	cmp	r3, #0
    7500:	d1f8      	bne.n	74f4 <rt_put_prio+0x18>
    7502:	2300      	movs	r3, #0
    7504:	604b      	str	r3, [r1, #4]
    7506:	6051      	str	r1, [r2, #4]
    7508:	2d02      	cmp	r5, #2
    750a:	d900      	bls.n	750e <rt_put_prio+0x32>
    750c:	2200      	movs	r2, #0
    750e:	608a      	str	r2, [r1, #8]
    7510:	bd30      	pop	{r4, r5, pc}
    7512:	0013      	movs	r3, r2
    7514:	0002      	movs	r2, r0
    7516:	604b      	str	r3, [r1, #4]
    7518:	6051      	str	r1, [r2, #4]
    751a:	2d02      	cmp	r5, #2
    751c:	d8f6      	bhi.n	750c <rt_put_prio+0x30>
    751e:	6099      	str	r1, [r3, #8]
    7520:	e7f5      	b.n	750e <rt_put_prio+0x32>
    7522:	0002      	movs	r2, r0
    7524:	e7ed      	b.n	7502 <rt_put_prio+0x26>
    7526:	46c0      	nop			; (mov r8, r8)

00007528 <rt_get_first>:
    7528:	6843      	ldr	r3, [r0, #4]
    752a:	7802      	ldrb	r2, [r0, #0]
    752c:	6859      	ldr	r1, [r3, #4]
    752e:	3a01      	subs	r2, #1
    7530:	6041      	str	r1, [r0, #4]
    7532:	2a02      	cmp	r2, #2
    7534:	d808      	bhi.n	7548 <rt_get_first+0x20>
    7536:	2900      	cmp	r1, #0
    7538:	d002      	beq.n	7540 <rt_get_first+0x18>
    753a:	2200      	movs	r2, #0
    753c:	6088      	str	r0, [r1, #8]
    753e:	605a      	str	r2, [r3, #4]
    7540:	2200      	movs	r2, #0
    7542:	609a      	str	r2, [r3, #8]
    7544:	0018      	movs	r0, r3
    7546:	4770      	bx	lr
    7548:	2200      	movs	r2, #0
    754a:	605a      	str	r2, [r3, #4]
    754c:	e7fa      	b.n	7544 <rt_get_first+0x1c>
    754e:	46c0      	nop			; (mov r8, r8)

00007550 <rt_put_rdy_first>:
    7550:	4b03      	ldr	r3, [pc, #12]	; (7560 <rt_put_rdy_first+0x10>)
    7552:	685a      	ldr	r2, [r3, #4]
    7554:	6042      	str	r2, [r0, #4]
    7556:	2200      	movs	r2, #0
    7558:	6058      	str	r0, [r3, #4]
    755a:	6082      	str	r2, [r0, #8]
    755c:	4770      	bx	lr
    755e:	46c0      	nop			; (mov r8, r8)
    7560:	20006030 	.word	0x20006030

00007564 <rt_get_same_rdy_prio>:
    7564:	4b06      	ldr	r3, [pc, #24]	; (7580 <rt_get_same_rdy_prio+0x1c>)
    7566:	4a07      	ldr	r2, [pc, #28]	; (7584 <rt_get_same_rdy_prio+0x20>)
    7568:	6858      	ldr	r0, [r3, #4]
    756a:	6812      	ldr	r2, [r2, #0]
    756c:	7881      	ldrb	r1, [r0, #2]
    756e:	7892      	ldrb	r2, [r2, #2]
    7570:	4291      	cmp	r1, r2
    7572:	d102      	bne.n	757a <rt_get_same_rdy_prio+0x16>
    7574:	6842      	ldr	r2, [r0, #4]
    7576:	605a      	str	r2, [r3, #4]
    7578:	4770      	bx	lr
    757a:	2000      	movs	r0, #0
    757c:	e7fc      	b.n	7578 <rt_get_same_rdy_prio+0x14>
    757e:	46c0      	nop			; (mov r8, r8)
    7580:	20006030 	.word	0x20006030
    7584:	20006064 	.word	0x20006064

00007588 <rt_resort_prio>:
    7588:	6881      	ldr	r1, [r0, #8]
    758a:	b530      	push	{r4, r5, lr}
    758c:	2900      	cmp	r1, #0
    758e:	d030      	beq.n	75f2 <rt_resort_prio+0x6a>
    7590:	780b      	ldrb	r3, [r1, #0]
    7592:	000a      	movs	r2, r1
    7594:	2b00      	cmp	r3, #0
    7596:	d103      	bne.n	75a0 <rt_resort_prio+0x18>
    7598:	6892      	ldr	r2, [r2, #8]
    759a:	7813      	ldrb	r3, [r2, #0]
    759c:	2b00      	cmp	r3, #0
    759e:	d0fb      	beq.n	7598 <rt_resort_prio+0x10>
    75a0:	6843      	ldr	r3, [r0, #4]
    75a2:	604b      	str	r3, [r1, #4]
    75a4:	6843      	ldr	r3, [r0, #4]
    75a6:	2b00      	cmp	r3, #0
    75a8:	d000      	beq.n	75ac <rt_resort_prio+0x24>
    75aa:	6099      	str	r1, [r3, #8]
    75ac:	7815      	ldrb	r5, [r2, #0]
    75ae:	6851      	ldr	r1, [r2, #4]
    75b0:	3d01      	subs	r5, #1
    75b2:	b2ed      	uxtb	r5, r5
    75b4:	7884      	ldrb	r4, [r0, #2]
    75b6:	2900      	cmp	r1, #0
    75b8:	d029      	beq.n	760e <rt_resort_prio+0x86>
    75ba:	788b      	ldrb	r3, [r1, #2]
    75bc:	42a3      	cmp	r3, r4
    75be:	d204      	bcs.n	75ca <rt_resort_prio+0x42>
    75c0:	e00e      	b.n	75e0 <rt_resort_prio+0x58>
    75c2:	789a      	ldrb	r2, [r3, #2]
    75c4:	4294      	cmp	r4, r2
    75c6:	d80d      	bhi.n	75e4 <rt_resort_prio+0x5c>
    75c8:	0019      	movs	r1, r3
    75ca:	684b      	ldr	r3, [r1, #4]
    75cc:	2b00      	cmp	r3, #0
    75ce:	d1f8      	bne.n	75c2 <rt_resort_prio+0x3a>
    75d0:	2300      	movs	r3, #0
    75d2:	6043      	str	r3, [r0, #4]
    75d4:	6048      	str	r0, [r1, #4]
    75d6:	2d02      	cmp	r5, #2
    75d8:	d909      	bls.n	75ee <rt_resort_prio+0x66>
    75da:	2300      	movs	r3, #0
    75dc:	6083      	str	r3, [r0, #8]
    75de:	bd30      	pop	{r4, r5, pc}
    75e0:	000b      	movs	r3, r1
    75e2:	0011      	movs	r1, r2
    75e4:	6043      	str	r3, [r0, #4]
    75e6:	6048      	str	r0, [r1, #4]
    75e8:	2d02      	cmp	r5, #2
    75ea:	d8f6      	bhi.n	75da <rt_resort_prio+0x52>
    75ec:	6098      	str	r0, [r3, #8]
    75ee:	6081      	str	r1, [r0, #8]
    75f0:	e7f5      	b.n	75de <rt_resort_prio+0x56>
    75f2:	7843      	ldrb	r3, [r0, #1]
    75f4:	2b01      	cmp	r3, #1
    75f6:	d1f2      	bne.n	75de <rt_resort_prio+0x56>
    75f8:	4a06      	ldr	r2, [pc, #24]	; (7614 <rt_resort_prio+0x8c>)
    75fa:	0013      	movs	r3, r2
    75fc:	e001      	b.n	7602 <rt_resort_prio+0x7a>
    75fe:	1e0b      	subs	r3, r1, #0
    7600:	d0d4      	beq.n	75ac <rt_resort_prio+0x24>
    7602:	6859      	ldr	r1, [r3, #4]
    7604:	4288      	cmp	r0, r1
    7606:	d1fa      	bne.n	75fe <rt_resort_prio+0x76>
    7608:	6841      	ldr	r1, [r0, #4]
    760a:	6059      	str	r1, [r3, #4]
    760c:	e7ce      	b.n	75ac <rt_resort_prio+0x24>
    760e:	0011      	movs	r1, r2
    7610:	e7de      	b.n	75d0 <rt_resort_prio+0x48>
    7612:	46c0      	nop			; (mov r8, r8)
    7614:	20006030 	.word	0x20006030

00007618 <rt_put_dly>:
    7618:	b530      	push	{r4, r5, lr}
    761a:	4c17      	ldr	r4, [pc, #92]	; (7678 <rt_put_dly+0x60>)
    761c:	68e2      	ldr	r2, [r4, #12]
    761e:	2a00      	cmp	r2, #0
    7620:	d023      	beq.n	766a <rt_put_dly+0x52>
    7622:	8aa3      	ldrh	r3, [r4, #20]
    7624:	4299      	cmp	r1, r3
    7626:	d804      	bhi.n	7632 <rt_put_dly+0x1a>
    7628:	e022      	b.n	7670 <rt_put_dly+0x58>
    762a:	68d4      	ldr	r4, [r2, #12]
    762c:	2c00      	cmp	r4, #0
    762e:	d013      	beq.n	7658 <rt_put_dly+0x40>
    7630:	0022      	movs	r2, r4
    7632:	8a94      	ldrh	r4, [r2, #20]
    7634:	191b      	adds	r3, r3, r4
    7636:	4299      	cmp	r1, r3
    7638:	d8f7      	bhi.n	762a <rt_put_dly+0x12>
    763a:	68d5      	ldr	r5, [r2, #12]
    763c:	60c5      	str	r5, [r0, #12]
    763e:	60d0      	str	r0, [r2, #12]
    7640:	68c4      	ldr	r4, [r0, #12]
    7642:	6102      	str	r2, [r0, #16]
    7644:	2c00      	cmp	r4, #0
    7646:	d000      	beq.n	764a <rt_put_dly+0x32>
    7648:	6120      	str	r0, [r4, #16]
    764a:	1a5b      	subs	r3, r3, r1
    764c:	b29b      	uxth	r3, r3
    764e:	8283      	strh	r3, [r0, #20]
    7650:	8a91      	ldrh	r1, [r2, #20]
    7652:	1acb      	subs	r3, r1, r3
    7654:	8293      	strh	r3, [r2, #20]
    7656:	bd30      	pop	{r4, r5, pc}
    7658:	b29b      	uxth	r3, r3
    765a:	2400      	movs	r4, #0
    765c:	1acb      	subs	r3, r1, r3
    765e:	60c4      	str	r4, [r0, #12]
    7660:	60d0      	str	r0, [r2, #12]
    7662:	6102      	str	r2, [r0, #16]
    7664:	8293      	strh	r3, [r2, #20]
    7666:	8284      	strh	r4, [r0, #20]
    7668:	e7f5      	b.n	7656 <rt_put_dly+0x3e>
    766a:	2300      	movs	r3, #0
    766c:	0022      	movs	r2, r4
    766e:	e7f4      	b.n	765a <rt_put_dly+0x42>
    7670:	0015      	movs	r5, r2
    7672:	0022      	movs	r2, r4
    7674:	e7e2      	b.n	763c <rt_put_dly+0x24>
    7676:	46c0      	nop			; (mov r8, r8)
    7678:	20006048 	.word	0x20006048

0000767c <rt_dec_dly>:
    767c:	b5f0      	push	{r4, r5, r6, r7, lr}
    767e:	464e      	mov	r6, r9
    7680:	4657      	mov	r7, sl
    7682:	4645      	mov	r5, r8
    7684:	b4e0      	push	{r5, r6, r7}
    7686:	4e36      	ldr	r6, [pc, #216]	; (7760 <rt_dec_dly+0xe4>)
    7688:	68f0      	ldr	r0, [r6, #12]
    768a:	2800      	cmp	r0, #0
    768c:	d059      	beq.n	7742 <rt_dec_dly+0xc6>
    768e:	8ab3      	ldrh	r3, [r6, #20]
    7690:	3b01      	subs	r3, #1
    7692:	b29b      	uxth	r3, r3
    7694:	82b3      	strh	r3, [r6, #20]
    7696:	2b00      	cmp	r3, #0
    7698:	d153      	bne.n	7742 <rt_dec_dly+0xc6>
    769a:	4b32      	ldr	r3, [pc, #200]	; (7764 <rt_dec_dly+0xe8>)
    769c:	2500      	movs	r5, #0
    769e:	469c      	mov	ip, r3
    76a0:	781f      	ldrb	r7, [r3, #0]
    76a2:	4b31      	ldr	r3, [pc, #196]	; (7768 <rt_dec_dly+0xec>)
    76a4:	46e2      	mov	sl, ip
    76a6:	881b      	ldrh	r3, [r3, #0]
    76a8:	3f01      	subs	r7, #1
    76aa:	4699      	mov	r9, r3
    76ac:	2301      	movs	r3, #1
    76ae:	4698      	mov	r8, r3
    76b0:	b2ff      	uxtb	r7, r7
    76b2:	6883      	ldr	r3, [r0, #8]
    76b4:	2b00      	cmp	r3, #0
    76b6:	d007      	beq.n	76c8 <rt_dec_dly+0x4c>
    76b8:	6842      	ldr	r2, [r0, #4]
    76ba:	605a      	str	r2, [r3, #4]
    76bc:	6842      	ldr	r2, [r0, #4]
    76be:	2a00      	cmp	r2, #0
    76c0:	d001      	beq.n	76c6 <rt_dec_dly+0x4a>
    76c2:	6093      	str	r3, [r2, #8]
    76c4:	6045      	str	r5, [r0, #4]
    76c6:	6085      	str	r5, [r0, #8]
    76c8:	4663      	mov	r3, ip
    76ca:	685a      	ldr	r2, [r3, #4]
    76cc:	7884      	ldrb	r4, [r0, #2]
    76ce:	2a00      	cmp	r2, #0
    76d0:	d03c      	beq.n	774c <rt_dec_dly+0xd0>
    76d2:	7893      	ldrb	r3, [r2, #2]
    76d4:	42a3      	cmp	r3, r4
    76d6:	d204      	bcs.n	76e2 <rt_dec_dly+0x66>
    76d8:	e01c      	b.n	7714 <rt_dec_dly+0x98>
    76da:	7899      	ldrb	r1, [r3, #2]
    76dc:	428c      	cmp	r4, r1
    76de:	d81b      	bhi.n	7718 <rt_dec_dly+0x9c>
    76e0:	001a      	movs	r2, r3
    76e2:	6853      	ldr	r3, [r2, #4]
    76e4:	2b00      	cmp	r3, #0
    76e6:	d1f8      	bne.n	76da <rt_dec_dly+0x5e>
    76e8:	6045      	str	r5, [r0, #4]
    76ea:	6050      	str	r0, [r2, #4]
    76ec:	2f02      	cmp	r7, #2
    76ee:	d900      	bls.n	76f2 <rt_dec_dly+0x76>
    76f0:	2200      	movs	r2, #0
    76f2:	7843      	ldrb	r3, [r0, #1]
    76f4:	6082      	str	r2, [r0, #8]
    76f6:	8a82      	ldrh	r2, [r0, #20]
    76f8:	2b04      	cmp	r3, #4
    76fa:	d017      	beq.n	772c <rt_dec_dly+0xb0>
    76fc:	4643      	mov	r3, r8
    76fe:	7043      	strb	r3, [r0, #1]
    7700:	68c3      	ldr	r3, [r0, #12]
    7702:	2b00      	cmp	r3, #0
    7704:	d01a      	beq.n	773c <rt_dec_dly+0xc0>
    7706:	611e      	str	r6, [r3, #16]
    7708:	60c5      	str	r5, [r0, #12]
    770a:	6105      	str	r5, [r0, #16]
    770c:	2a00      	cmp	r2, #0
    770e:	d123      	bne.n	7758 <rt_dec_dly+0xdc>
    7710:	0018      	movs	r0, r3
    7712:	e7ce      	b.n	76b2 <rt_dec_dly+0x36>
    7714:	0013      	movs	r3, r2
    7716:	4652      	mov	r2, sl
    7718:	6043      	str	r3, [r0, #4]
    771a:	6050      	str	r0, [r2, #4]
    771c:	2f02      	cmp	r7, #2
    771e:	d8e7      	bhi.n	76f0 <rt_dec_dly+0x74>
    7720:	6098      	str	r0, [r3, #8]
    7722:	7843      	ldrb	r3, [r0, #1]
    7724:	6082      	str	r2, [r0, #8]
    7726:	8a82      	ldrh	r2, [r0, #20]
    7728:	2b04      	cmp	r3, #4
    772a:	d1e7      	bne.n	76fc <rt_dec_dly+0x80>
    772c:	8ac3      	ldrh	r3, [r0, #22]
    772e:	444b      	add	r3, r9
    7730:	8283      	strh	r3, [r0, #20]
    7732:	4643      	mov	r3, r8
    7734:	7043      	strb	r3, [r0, #1]
    7736:	68c3      	ldr	r3, [r0, #12]
    7738:	2b00      	cmp	r3, #0
    773a:	d1e4      	bne.n	7706 <rt_dec_dly+0x8a>
    773c:	82b2      	strh	r2, [r6, #20]
    773e:	60f3      	str	r3, [r6, #12]
    7740:	6103      	str	r3, [r0, #16]
    7742:	bc1c      	pop	{r2, r3, r4}
    7744:	4690      	mov	r8, r2
    7746:	4699      	mov	r9, r3
    7748:	46a2      	mov	sl, r4
    774a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    774c:	4652      	mov	r2, sl
    774e:	6045      	str	r5, [r0, #4]
    7750:	6050      	str	r0, [r2, #4]
    7752:	2f02      	cmp	r7, #2
    7754:	d8cc      	bhi.n	76f0 <rt_dec_dly+0x74>
    7756:	e7cc      	b.n	76f2 <rt_dec_dly+0x76>
    7758:	82b2      	strh	r2, [r6, #20]
    775a:	60f3      	str	r3, [r6, #12]
    775c:	e7f1      	b.n	7742 <rt_dec_dly+0xc6>
    775e:	46c0      	nop			; (mov r8, r8)
    7760:	20006048 	.word	0x20006048
    7764:	20006030 	.word	0x20006030
    7768:	2000602c 	.word	0x2000602c

0000776c <rt_rmv_list>:
    776c:	6883      	ldr	r3, [r0, #8]
    776e:	2b00      	cmp	r3, #0
    7770:	d006      	beq.n	7780 <rt_rmv_list+0x14>
    7772:	6842      	ldr	r2, [r0, #4]
    7774:	605a      	str	r2, [r3, #4]
    7776:	6842      	ldr	r2, [r0, #4]
    7778:	2a00      	cmp	r2, #0
    777a:	d000      	beq.n	777e <rt_rmv_list+0x12>
    777c:	6093      	str	r3, [r2, #8]
    777e:	4770      	bx	lr
    7780:	4b04      	ldr	r3, [pc, #16]	; (7794 <rt_rmv_list+0x28>)
    7782:	e001      	b.n	7788 <rt_rmv_list+0x1c>
    7784:	1e13      	subs	r3, r2, #0
    7786:	d0fa      	beq.n	777e <rt_rmv_list+0x12>
    7788:	685a      	ldr	r2, [r3, #4]
    778a:	4290      	cmp	r0, r2
    778c:	d1fa      	bne.n	7784 <rt_rmv_list+0x18>
    778e:	6842      	ldr	r2, [r0, #4]
    7790:	605a      	str	r2, [r3, #4]
    7792:	e7f4      	b.n	777e <rt_rmv_list+0x12>
    7794:	20006030 	.word	0x20006030

00007798 <rt_rmv_dly>:
    7798:	6903      	ldr	r3, [r0, #16]
    779a:	b510      	push	{r4, lr}
    779c:	2b00      	cmp	r3, #0
    779e:	d00d      	beq.n	77bc <rt_rmv_dly+0x24>
    77a0:	68c2      	ldr	r2, [r0, #12]
    77a2:	60da      	str	r2, [r3, #12]
    77a4:	68c1      	ldr	r1, [r0, #12]
    77a6:	2900      	cmp	r1, #0
    77a8:	d009      	beq.n	77be <rt_rmv_dly+0x26>
    77aa:	8a9c      	ldrh	r4, [r3, #20]
    77ac:	8a82      	ldrh	r2, [r0, #20]
    77ae:	18a2      	adds	r2, r4, r2
    77b0:	829a      	strh	r2, [r3, #20]
    77b2:	610b      	str	r3, [r1, #16]
    77b4:	2300      	movs	r3, #0
    77b6:	60c3      	str	r3, [r0, #12]
    77b8:	2300      	movs	r3, #0
    77ba:	6103      	str	r3, [r0, #16]
    77bc:	bd10      	pop	{r4, pc}
    77be:	8299      	strh	r1, [r3, #20]
    77c0:	e7fa      	b.n	77b8 <rt_rmv_dly+0x20>
    77c2:	46c0      	nop			; (mov r8, r8)

000077c4 <rt_psq_enq>:
    77c4:	b570      	push	{r4, r5, r6, lr}
    77c6:	4c0f      	ldr	r4, [pc, #60]	; (7804 <rt_psq_enq+0x40>)
    77c8:	78e5      	ldrb	r5, [r4, #3]
    77ca:	f3ef 8310 	mrs	r3, PRIMASK
    77ce:	b672      	cpsid	i
    77d0:	78a3      	ldrb	r3, [r4, #2]
    77d2:	429d      	cmp	r5, r3
    77d4:	d907      	bls.n	77e6 <rt_psq_enq+0x22>
    77d6:	1c5a      	adds	r2, r3, #1
    77d8:	7823      	ldrb	r3, [r4, #0]
    77da:	70a2      	strb	r2, [r4, #2]
    77dc:	1c5a      	adds	r2, r3, #1
    77de:	4295      	cmp	r5, r2
    77e0:	d00d      	beq.n	77fe <rt_psq_enq+0x3a>
    77e2:	b2d2      	uxtb	r2, r2
    77e4:	7022      	strb	r2, [r4, #0]
    77e6:	b662      	cpsie	i
    77e8:	429d      	cmp	r5, r3
    77ea:	d904      	bls.n	77f6 <rt_psq_enq+0x32>
    77ec:	00db      	lsls	r3, r3, #3
    77ee:	18e3      	adds	r3, r4, r3
    77f0:	6058      	str	r0, [r3, #4]
    77f2:	6099      	str	r1, [r3, #8]
    77f4:	bd70      	pop	{r4, r5, r6, pc}
    77f6:	2002      	movs	r0, #2
    77f8:	f7fa f8a6 	bl	1948 <os_error>
    77fc:	e7fa      	b.n	77f4 <rt_psq_enq+0x30>
    77fe:	2200      	movs	r2, #0
    7800:	7022      	strb	r2, [r4, #0]
    7802:	e7f0      	b.n	77e6 <rt_psq_enq+0x22>
    7804:	20004c58 	.word	0x20004c58

00007808 <rt_evt_wait>:
    7808:	4b10      	ldr	r3, [pc, #64]	; (784c <rt_evt_wait+0x44>)
    780a:	b570      	push	{r4, r5, r6, lr}
    780c:	681b      	ldr	r3, [r3, #0]
    780e:	000c      	movs	r4, r1
    7810:	2a00      	cmp	r2, #0
    7812:	d00b      	beq.n	782c <rt_evt_wait+0x24>
    7814:	0005      	movs	r5, r0
    7816:	8b1a      	ldrh	r2, [r3, #24]
    7818:	2106      	movs	r1, #6
    781a:	4015      	ands	r5, r2
    781c:	42a8      	cmp	r0, r5
    781e:	d00a      	beq.n	7836 <rt_evt_wait+0x2e>
    7820:	8358      	strh	r0, [r3, #26]
    7822:	0020      	movs	r0, r4
    7824:	f000 fa94 	bl	7d50 <rt_block>
    7828:	2001      	movs	r0, #1
    782a:	e007      	b.n	783c <rt_evt_wait+0x34>
    782c:	8b1a      	ldrh	r2, [r3, #24]
    782e:	0011      	movs	r1, r2
    7830:	4001      	ands	r1, r0
    7832:	d004      	beq.n	783e <rt_evt_wait+0x36>
    7834:	8359      	strh	r1, [r3, #26]
    7836:	4382      	bics	r2, r0
    7838:	2002      	movs	r0, #2
    783a:	831a      	strh	r2, [r3, #24]
    783c:	bd70      	pop	{r4, r5, r6, pc}
    783e:	8358      	strh	r0, [r3, #26]
    7840:	2105      	movs	r1, #5
    7842:	0020      	movs	r0, r4
    7844:	f000 fa84 	bl	7d50 <rt_block>
    7848:	2001      	movs	r0, #1
    784a:	e7f7      	b.n	783c <rt_evt_wait+0x34>
    784c:	20006064 	.word	0x20006064

00007850 <rt_evt_set>:
    7850:	3901      	subs	r1, #1
    7852:	4b14      	ldr	r3, [pc, #80]	; (78a4 <rt_evt_set+0x54>)
    7854:	0089      	lsls	r1, r1, #2
    7856:	b510      	push	{r4, lr}
    7858:	58cc      	ldr	r4, [r1, r3]
    785a:	2c00      	cmp	r4, #0
    785c:	d008      	beq.n	7870 <rt_evt_set+0x20>
    785e:	8b23      	ldrh	r3, [r4, #24]
    7860:	8b62      	ldrh	r2, [r4, #26]
    7862:	4318      	orrs	r0, r3
    7864:	7863      	ldrb	r3, [r4, #1]
    7866:	8320      	strh	r0, [r4, #24]
    7868:	2b06      	cmp	r3, #6
    786a:	d016      	beq.n	789a <rt_evt_set+0x4a>
    786c:	2b05      	cmp	r3, #5
    786e:	d000      	beq.n	7872 <rt_evt_set+0x22>
    7870:	bd10      	pop	{r4, pc}
    7872:	0013      	movs	r3, r2
    7874:	4003      	ands	r3, r0
    7876:	d0fb      	beq.n	7870 <rt_evt_set+0x20>
    7878:	8363      	strh	r3, [r4, #26]
    787a:	4390      	bics	r0, r2
    787c:	8320      	strh	r0, [r4, #24]
    787e:	0020      	movs	r0, r4
    7880:	f7ff ff8a 	bl	7798 <rt_rmv_dly>
    7884:	2301      	movs	r3, #1
    7886:	0020      	movs	r0, r4
    7888:	7063      	strb	r3, [r4, #1]
    788a:	8b62      	ldrh	r2, [r4, #26]
    788c:	2108      	movs	r1, #8
    788e:	f7ff fa1d 	bl	6ccc <rt_ret_val2>
    7892:	0020      	movs	r0, r4
    7894:	f000 fa36 	bl	7d04 <rt_dispatch>
    7898:	e7ea      	b.n	7870 <rt_evt_set+0x20>
    789a:	0013      	movs	r3, r2
    789c:	4003      	ands	r3, r0
    789e:	429a      	cmp	r2, r3
    78a0:	d1e6      	bne.n	7870 <rt_evt_set+0x20>
    78a2:	e7ea      	b.n	787a <rt_evt_set+0x2a>
    78a4:	20004cdc 	.word	0x20004cdc

000078a8 <rt_evt_clr>:
    78a8:	3901      	subs	r1, #1
    78aa:	4b04      	ldr	r3, [pc, #16]	; (78bc <rt_evt_clr+0x14>)
    78ac:	0089      	lsls	r1, r1, #2
    78ae:	58cb      	ldr	r3, [r1, r3]
    78b0:	2b00      	cmp	r3, #0
    78b2:	d002      	beq.n	78ba <rt_evt_clr+0x12>
    78b4:	8b1a      	ldrh	r2, [r3, #24]
    78b6:	4382      	bics	r2, r0
    78b8:	831a      	strh	r2, [r3, #24]
    78ba:	4770      	bx	lr
    78bc:	20004cdc 	.word	0x20004cdc

000078c0 <isr_evt_set>:
    78c0:	3901      	subs	r1, #1
    78c2:	4b06      	ldr	r3, [pc, #24]	; (78dc <isr_evt_set+0x1c>)
    78c4:	0089      	lsls	r1, r1, #2
    78c6:	58cb      	ldr	r3, [r1, r3]
    78c8:	b510      	push	{r4, lr}
    78ca:	2b00      	cmp	r3, #0
    78cc:	d005      	beq.n	78da <isr_evt_set+0x1a>
    78ce:	0001      	movs	r1, r0
    78d0:	0018      	movs	r0, r3
    78d2:	f7ff ff77 	bl	77c4 <rt_psq_enq>
    78d6:	f000 f959 	bl	7b8c <rt_psh_req>
    78da:	bd10      	pop	{r4, pc}
    78dc:	20004cdc 	.word	0x20004cdc

000078e0 <rt_evt_get>:
    78e0:	4b01      	ldr	r3, [pc, #4]	; (78e8 <rt_evt_get+0x8>)
    78e2:	681b      	ldr	r3, [r3, #0]
    78e4:	8b58      	ldrh	r0, [r3, #26]
    78e6:	4770      	bx	lr
    78e8:	20006064 	.word	0x20006064

000078ec <rt_evt_psh>:
    78ec:	b510      	push	{r4, lr}
    78ee:	8b03      	ldrh	r3, [r0, #24]
    78f0:	0004      	movs	r4, r0
    78f2:	4319      	orrs	r1, r3
    78f4:	7843      	ldrb	r3, [r0, #1]
    78f6:	8301      	strh	r1, [r0, #24]
    78f8:	8b42      	ldrh	r2, [r0, #26]
    78fa:	2b06      	cmp	r3, #6
    78fc:	d017      	beq.n	792e <rt_evt_psh+0x42>
    78fe:	2b05      	cmp	r3, #5
    7900:	d000      	beq.n	7904 <rt_evt_psh+0x18>
    7902:	bd10      	pop	{r4, pc}
    7904:	0013      	movs	r3, r2
    7906:	400b      	ands	r3, r1
    7908:	d0fb      	beq.n	7902 <rt_evt_psh+0x16>
    790a:	8343      	strh	r3, [r0, #26]
    790c:	4391      	bics	r1, r2
    790e:	8321      	strh	r1, [r4, #24]
    7910:	0020      	movs	r0, r4
    7912:	f7ff ff41 	bl	7798 <rt_rmv_dly>
    7916:	2301      	movs	r3, #1
    7918:	0020      	movs	r0, r4
    791a:	7063      	strb	r3, [r4, #1]
    791c:	8b62      	ldrh	r2, [r4, #26]
    791e:	2108      	movs	r1, #8
    7920:	f7ff f9d4 	bl	6ccc <rt_ret_val2>
    7924:	0021      	movs	r1, r4
    7926:	4804      	ldr	r0, [pc, #16]	; (7938 <rt_evt_psh+0x4c>)
    7928:	f7ff fdd8 	bl	74dc <rt_put_prio>
    792c:	e7e9      	b.n	7902 <rt_evt_psh+0x16>
    792e:	0013      	movs	r3, r2
    7930:	400b      	ands	r3, r1
    7932:	429a      	cmp	r2, r3
    7934:	d1e5      	bne.n	7902 <rt_evt_psh+0x16>
    7936:	e7e9      	b.n	790c <rt_evt_psh+0x20>
    7938:	20006030 	.word	0x20006030

0000793c <rt_suspend>:
    793c:	4b1c      	ldr	r3, [pc, #112]	; (79b0 <rt_suspend+0x74>)
    793e:	b510      	push	{r4, lr}
    7940:	681b      	ldr	r3, [r3, #0]
    7942:	2b00      	cmp	r3, #0
    7944:	db20      	blt.n	7988 <rt_suspend+0x4c>
    7946:	491b      	ldr	r1, [pc, #108]	; (79b4 <rt_suspend+0x78>)
    7948:	095a      	lsrs	r2, r3, #5
    794a:	468c      	mov	ip, r1
    794c:	211f      	movs	r1, #31
    794e:	400b      	ands	r3, r1
    7950:	391e      	subs	r1, #30
    7952:	0008      	movs	r0, r1
    7954:	4098      	lsls	r0, r3
    7956:	0092      	lsls	r2, r2, #2
    7958:	4462      	add	r2, ip
    795a:	6010      	str	r0, [r2, #0]
    795c:	4816      	ldr	r0, [pc, #88]	; (79b8 <rt_suspend+0x7c>)
    795e:	4a17      	ldr	r2, [pc, #92]	; (79bc <rt_suspend+0x80>)
    7960:	7001      	strb	r1, [r0, #0]
    7962:	6813      	ldr	r3, [r2, #0]
    7964:	0f1b      	lsrs	r3, r3, #28
    7966:	400b      	ands	r3, r1
    7968:	7043      	strb	r3, [r0, #1]
    796a:	06db      	lsls	r3, r3, #27
    796c:	6013      	str	r3, [r2, #0]
    796e:	4b14      	ldr	r3, [pc, #80]	; (79c0 <rt_suspend+0x84>)
    7970:	68da      	ldr	r2, [r3, #12]
    7972:	2a00      	cmp	r2, #0
    7974:	d019      	beq.n	79aa <rt_suspend+0x6e>
    7976:	8a9c      	ldrh	r4, [r3, #20]
    7978:	f7fe f9e6 	bl	5d48 <sysUserTimerWakeupTime>
    797c:	0003      	movs	r3, r0
    797e:	0020      	movs	r0, r4
    7980:	429c      	cmp	r4, r3
    7982:	d900      	bls.n	7986 <rt_suspend+0x4a>
    7984:	0018      	movs	r0, r3
    7986:	bd10      	pop	{r4, pc}
    7988:	2005      	movs	r0, #5
    798a:	4b0e      	ldr	r3, [pc, #56]	; (79c4 <rt_suspend+0x88>)
    798c:	490a      	ldr	r1, [pc, #40]	; (79b8 <rt_suspend+0x7c>)
    798e:	6018      	str	r0, [r3, #0]
    7990:	2301      	movs	r3, #1
    7992:	4a0a      	ldr	r2, [pc, #40]	; (79bc <rt_suspend+0x80>)
    7994:	700b      	strb	r3, [r1, #0]
    7996:	6813      	ldr	r3, [r2, #0]
    7998:	0e9b      	lsrs	r3, r3, #26
    799a:	4003      	ands	r3, r0
    799c:	704b      	strb	r3, [r1, #1]
    799e:	065b      	lsls	r3, r3, #25
    79a0:	6013      	str	r3, [r2, #0]
    79a2:	4b07      	ldr	r3, [pc, #28]	; (79c0 <rt_suspend+0x84>)
    79a4:	68da      	ldr	r2, [r3, #12]
    79a6:	2a00      	cmp	r2, #0
    79a8:	d1e5      	bne.n	7976 <rt_suspend+0x3a>
    79aa:	4c07      	ldr	r4, [pc, #28]	; (79c8 <rt_suspend+0x8c>)
    79ac:	e7e4      	b.n	7978 <rt_suspend+0x3c>
    79ae:	46c0      	nop			; (mov r8, r8)
    79b0:	20006060 	.word	0x20006060
    79b4:	e000e180 	.word	0xe000e180
    79b8:	20005fe8 	.word	0x20005fe8
    79bc:	e000ed04 	.word	0xe000ed04
    79c0:	20006048 	.word	0x20006048
    79c4:	e000e010 	.word	0xe000e010
    79c8:	0000ffff 	.word	0x0000ffff

000079cc <rt_resume>:
    79cc:	b5f0      	push	{r4, r5, r6, r7, lr}
    79ce:	4647      	mov	r7, r8
    79d0:	4b32      	ldr	r3, [pc, #200]	; (7a9c <rt_resume+0xd0>)
    79d2:	b480      	push	{r7}
    79d4:	0007      	movs	r7, r0
    79d6:	6818      	ldr	r0, [r3, #0]
    79d8:	2301      	movs	r3, #1
    79da:	7043      	strb	r3, [r0, #1]
    79dc:	4698      	mov	r8, r3
    79de:	f7ff fdb7 	bl	7550 <rt_put_rdy_first>
    79e2:	2200      	movs	r2, #0
    79e4:	4b2e      	ldr	r3, [pc, #184]	; (7aa0 <rt_resume+0xd4>)
    79e6:	4e2f      	ldr	r6, [pc, #188]	; (7aa4 <rt_resume+0xd8>)
    79e8:	601a      	str	r2, [r3, #0]
    79ea:	68f3      	ldr	r3, [r6, #12]
    79ec:	2b00      	cmp	r3, #0
    79ee:	d04f      	beq.n	7a90 <rt_resume+0xc4>
    79f0:	8ab3      	ldrh	r3, [r6, #20]
    79f2:	429f      	cmp	r7, r3
    79f4:	d336      	bcc.n	7a64 <rt_resume+0x98>
    79f6:	4d2c      	ldr	r5, [pc, #176]	; (7aa8 <rt_resume+0xdc>)
    79f8:	1afc      	subs	r4, r7, r3
    79fa:	682a      	ldr	r2, [r5, #0]
    79fc:	4694      	mov	ip, r2
    79fe:	4463      	add	r3, ip
    7a00:	602b      	str	r3, [r5, #0]
    7a02:	4643      	mov	r3, r8
    7a04:	82b3      	strh	r3, [r6, #20]
    7a06:	e006      	b.n	7a16 <rt_resume+0x4a>
    7a08:	682b      	ldr	r3, [r5, #0]
    7a0a:	3c01      	subs	r4, #1
    7a0c:	3301      	adds	r3, #1
    7a0e:	602b      	str	r3, [r5, #0]
    7a10:	68f3      	ldr	r3, [r6, #12]
    7a12:	2b00      	cmp	r3, #0
    7a14:	d003      	beq.n	7a1e <rt_resume+0x52>
    7a16:	f7ff fe31 	bl	767c <rt_dec_dly>
    7a1a:	2c00      	cmp	r4, #0
    7a1c:	d1f4      	bne.n	7a08 <rt_resume+0x3c>
    7a1e:	0038      	movs	r0, r7
    7a20:	f7fe f99e 	bl	5d60 <sysUserTimerUpdate>
    7a24:	4821      	ldr	r0, [pc, #132]	; (7aac <rt_resume+0xe0>)
    7a26:	f7ff fd7f 	bl	7528 <rt_get_first>
    7a2a:	f000 f963 	bl	7cf4 <rt_switch_req>
    7a2e:	4b20      	ldr	r3, [pc, #128]	; (7ab0 <rt_resume+0xe4>)
    7a30:	681b      	ldr	r3, [r3, #0]
    7a32:	2b00      	cmp	r3, #0
    7a34:	db1d      	blt.n	7a72 <rt_resume+0xa6>
    7a36:	491f      	ldr	r1, [pc, #124]	; (7ab4 <rt_resume+0xe8>)
    7a38:	095a      	lsrs	r2, r3, #5
    7a3a:	468c      	mov	ip, r1
    7a3c:	211f      	movs	r1, #31
    7a3e:	400b      	ands	r3, r1
    7a40:	391e      	subs	r1, #30
    7a42:	4099      	lsls	r1, r3
    7a44:	0092      	lsls	r2, r2, #2
    7a46:	4462      	add	r2, ip
    7a48:	6011      	str	r1, [r2, #0]
    7a4a:	2100      	movs	r1, #0
    7a4c:	4a1a      	ldr	r2, [pc, #104]	; (7ab8 <rt_resume+0xec>)
    7a4e:	7011      	strb	r1, [r2, #0]
    7a50:	7890      	ldrb	r0, [r2, #2]
    7a52:	7853      	ldrb	r3, [r2, #1]
    7a54:	4303      	orrs	r3, r0
    7a56:	4819      	ldr	r0, [pc, #100]	; (7abc <rt_resume+0xf0>)
    7a58:	071b      	lsls	r3, r3, #28
    7a5a:	6003      	str	r3, [r0, #0]
    7a5c:	7091      	strb	r1, [r2, #2]
    7a5e:	bc04      	pop	{r2}
    7a60:	4690      	mov	r8, r2
    7a62:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7a64:	4910      	ldr	r1, [pc, #64]	; (7aa8 <rt_resume+0xdc>)
    7a66:	1bdb      	subs	r3, r3, r7
    7a68:	680a      	ldr	r2, [r1, #0]
    7a6a:	82b3      	strh	r3, [r6, #20]
    7a6c:	19d2      	adds	r2, r2, r7
    7a6e:	600a      	str	r2, [r1, #0]
    7a70:	e7d5      	b.n	7a1e <rt_resume+0x52>
    7a72:	2207      	movs	r2, #7
    7a74:	2000      	movs	r0, #0
    7a76:	4910      	ldr	r1, [pc, #64]	; (7ab8 <rt_resume+0xec>)
    7a78:	4b11      	ldr	r3, [pc, #68]	; (7ac0 <rt_resume+0xf4>)
    7a7a:	601a      	str	r2, [r3, #0]
    7a7c:	7008      	strb	r0, [r1, #0]
    7a7e:	788b      	ldrb	r3, [r1, #2]
    7a80:	784a      	ldrb	r2, [r1, #1]
    7a82:	009b      	lsls	r3, r3, #2
    7a84:	4313      	orrs	r3, r2
    7a86:	4a0d      	ldr	r2, [pc, #52]	; (7abc <rt_resume+0xf0>)
    7a88:	069b      	lsls	r3, r3, #26
    7a8a:	6013      	str	r3, [r2, #0]
    7a8c:	7088      	strb	r0, [r1, #2]
    7a8e:	e7e6      	b.n	7a5e <rt_resume+0x92>
    7a90:	4a05      	ldr	r2, [pc, #20]	; (7aa8 <rt_resume+0xdc>)
    7a92:	6813      	ldr	r3, [r2, #0]
    7a94:	19db      	adds	r3, r3, r7
    7a96:	6013      	str	r3, [r2, #0]
    7a98:	e7c1      	b.n	7a1e <rt_resume+0x52>
    7a9a:	46c0      	nop			; (mov r8, r8)
    7a9c:	20006064 	.word	0x20006064
    7aa0:	200060a0 	.word	0x200060a0
    7aa4:	20006048 	.word	0x20006048
    7aa8:	2000602c 	.word	0x2000602c
    7aac:	20006030 	.word	0x20006030
    7ab0:	20006060 	.word	0x20006060
    7ab4:	e000e100 	.word	0xe000e100
    7ab8:	20005fe8 	.word	0x20005fe8
    7abc:	e000ed04 	.word	0xe000ed04
    7ac0:	e000e010 	.word	0xe000e010

00007ac4 <rt_tsk_lock>:
    7ac4:	4b13      	ldr	r3, [pc, #76]	; (7b14 <rt_tsk_lock+0x50>)
    7ac6:	681b      	ldr	r3, [r3, #0]
    7ac8:	2b00      	cmp	r3, #0
    7aca:	db14      	blt.n	7af6 <rt_tsk_lock+0x32>
    7acc:	4912      	ldr	r1, [pc, #72]	; (7b18 <rt_tsk_lock+0x54>)
    7ace:	095a      	lsrs	r2, r3, #5
    7ad0:	468c      	mov	ip, r1
    7ad2:	211f      	movs	r1, #31
    7ad4:	400b      	ands	r3, r1
    7ad6:	391e      	subs	r1, #30
    7ad8:	0008      	movs	r0, r1
    7ada:	4098      	lsls	r0, r3
    7adc:	0092      	lsls	r2, r2, #2
    7ade:	4462      	add	r2, ip
    7ae0:	6010      	str	r0, [r2, #0]
    7ae2:	480e      	ldr	r0, [pc, #56]	; (7b1c <rt_tsk_lock+0x58>)
    7ae4:	4a0e      	ldr	r2, [pc, #56]	; (7b20 <rt_tsk_lock+0x5c>)
    7ae6:	7001      	strb	r1, [r0, #0]
    7ae8:	6813      	ldr	r3, [r2, #0]
    7aea:	0f1b      	lsrs	r3, r3, #28
    7aec:	400b      	ands	r3, r1
    7aee:	7043      	strb	r3, [r0, #1]
    7af0:	06db      	lsls	r3, r3, #27
    7af2:	6013      	str	r3, [r2, #0]
    7af4:	4770      	bx	lr
    7af6:	2005      	movs	r0, #5
    7af8:	4b0a      	ldr	r3, [pc, #40]	; (7b24 <rt_tsk_lock+0x60>)
    7afa:	4908      	ldr	r1, [pc, #32]	; (7b1c <rt_tsk_lock+0x58>)
    7afc:	6018      	str	r0, [r3, #0]
    7afe:	2301      	movs	r3, #1
    7b00:	4a07      	ldr	r2, [pc, #28]	; (7b20 <rt_tsk_lock+0x5c>)
    7b02:	700b      	strb	r3, [r1, #0]
    7b04:	6813      	ldr	r3, [r2, #0]
    7b06:	0e9b      	lsrs	r3, r3, #26
    7b08:	4003      	ands	r3, r0
    7b0a:	704b      	strb	r3, [r1, #1]
    7b0c:	065b      	lsls	r3, r3, #25
    7b0e:	6013      	str	r3, [r2, #0]
    7b10:	e7f0      	b.n	7af4 <rt_tsk_lock+0x30>
    7b12:	46c0      	nop			; (mov r8, r8)
    7b14:	20006060 	.word	0x20006060
    7b18:	e000e180 	.word	0xe000e180
    7b1c:	20005fe8 	.word	0x20005fe8
    7b20:	e000ed04 	.word	0xe000ed04
    7b24:	e000e010 	.word	0xe000e010

00007b28 <rt_tsk_unlock>:
    7b28:	4b13      	ldr	r3, [pc, #76]	; (7b78 <rt_tsk_unlock+0x50>)
    7b2a:	681b      	ldr	r3, [r3, #0]
    7b2c:	2b00      	cmp	r3, #0
    7b2e:	db14      	blt.n	7b5a <rt_tsk_unlock+0x32>
    7b30:	4912      	ldr	r1, [pc, #72]	; (7b7c <rt_tsk_unlock+0x54>)
    7b32:	095a      	lsrs	r2, r3, #5
    7b34:	468c      	mov	ip, r1
    7b36:	211f      	movs	r1, #31
    7b38:	400b      	ands	r3, r1
    7b3a:	391e      	subs	r1, #30
    7b3c:	4099      	lsls	r1, r3
    7b3e:	0092      	lsls	r2, r2, #2
    7b40:	4462      	add	r2, ip
    7b42:	6011      	str	r1, [r2, #0]
    7b44:	2100      	movs	r1, #0
    7b46:	4a0e      	ldr	r2, [pc, #56]	; (7b80 <rt_tsk_unlock+0x58>)
    7b48:	7011      	strb	r1, [r2, #0]
    7b4a:	7890      	ldrb	r0, [r2, #2]
    7b4c:	7853      	ldrb	r3, [r2, #1]
    7b4e:	4303      	orrs	r3, r0
    7b50:	480c      	ldr	r0, [pc, #48]	; (7b84 <rt_tsk_unlock+0x5c>)
    7b52:	071b      	lsls	r3, r3, #28
    7b54:	6003      	str	r3, [r0, #0]
    7b56:	7091      	strb	r1, [r2, #2]
    7b58:	4770      	bx	lr
    7b5a:	2207      	movs	r2, #7
    7b5c:	2000      	movs	r0, #0
    7b5e:	4908      	ldr	r1, [pc, #32]	; (7b80 <rt_tsk_unlock+0x58>)
    7b60:	4b09      	ldr	r3, [pc, #36]	; (7b88 <rt_tsk_unlock+0x60>)
    7b62:	601a      	str	r2, [r3, #0]
    7b64:	7008      	strb	r0, [r1, #0]
    7b66:	788b      	ldrb	r3, [r1, #2]
    7b68:	784a      	ldrb	r2, [r1, #1]
    7b6a:	009b      	lsls	r3, r3, #2
    7b6c:	4313      	orrs	r3, r2
    7b6e:	4a05      	ldr	r2, [pc, #20]	; (7b84 <rt_tsk_unlock+0x5c>)
    7b70:	069b      	lsls	r3, r3, #26
    7b72:	6013      	str	r3, [r2, #0]
    7b74:	7088      	strb	r0, [r1, #2]
    7b76:	e7ef      	b.n	7b58 <rt_tsk_unlock+0x30>
    7b78:	20006060 	.word	0x20006060
    7b7c:	e000e100 	.word	0xe000e100
    7b80:	20005fe8 	.word	0x20005fe8
    7b84:	e000ed04 	.word	0xe000ed04
    7b88:	e000e010 	.word	0xe000e010

00007b8c <rt_psh_req>:
    7b8c:	4b05      	ldr	r3, [pc, #20]	; (7ba4 <rt_psh_req+0x18>)
    7b8e:	781a      	ldrb	r2, [r3, #0]
    7b90:	2a00      	cmp	r2, #0
    7b92:	d002      	beq.n	7b9a <rt_psh_req+0xe>
    7b94:	2201      	movs	r2, #1
    7b96:	709a      	strb	r2, [r3, #2]
    7b98:	4770      	bx	lr
    7b9a:	2280      	movs	r2, #128	; 0x80
    7b9c:	4b02      	ldr	r3, [pc, #8]	; (7ba8 <rt_psh_req+0x1c>)
    7b9e:	0552      	lsls	r2, r2, #21
    7ba0:	601a      	str	r2, [r3, #0]
    7ba2:	e7f9      	b.n	7b98 <rt_psh_req+0xc>
    7ba4:	20005fe8 	.word	0x20005fe8
    7ba8:	e000ed04 	.word	0xe000ed04

00007bac <rt_pop_req>:
    7bac:	4b1c      	ldr	r3, [pc, #112]	; (7c20 <rt_pop_req+0x74>)
    7bae:	b570      	push	{r4, r5, r6, lr}
    7bb0:	6818      	ldr	r0, [r3, #0]
    7bb2:	2301      	movs	r3, #1
    7bb4:	7043      	strb	r3, [r0, #1]
    7bb6:	f7ff fccb 	bl	7550 <rt_put_rdy_first>
    7bba:	4d1a      	ldr	r5, [pc, #104]	; (7c24 <rt_pop_req+0x78>)
    7bbc:	78ab      	ldrb	r3, [r5, #2]
    7bbe:	786c      	ldrb	r4, [r5, #1]
    7bc0:	2b00      	cmp	r3, #0
    7bc2:	d112      	bne.n	7bea <rt_pop_req+0x3e>
    7bc4:	e024      	b.n	7c10 <rt_pop_req+0x64>
    7bc6:	2a01      	cmp	r2, #1
    7bc8:	d01e      	beq.n	7c08 <rt_pop_req+0x5c>
    7bca:	f7ff fb13 	bl	71f4 <rt_sem_psh>
    7bce:	78eb      	ldrb	r3, [r5, #3]
    7bd0:	3401      	adds	r4, #1
    7bd2:	429c      	cmp	r4, r3
    7bd4:	d016      	beq.n	7c04 <rt_pop_req+0x58>
    7bd6:	f3ef 8310 	mrs	r3, PRIMASK
    7bda:	b672      	cpsid	i
    7bdc:	78ab      	ldrb	r3, [r5, #2]
    7bde:	3b01      	subs	r3, #1
    7be0:	b2db      	uxtb	r3, r3
    7be2:	70ab      	strb	r3, [r5, #2]
    7be4:	b662      	cpsie	i
    7be6:	2b00      	cmp	r3, #0
    7be8:	d012      	beq.n	7c10 <rt_pop_req+0x64>
    7bea:	00e3      	lsls	r3, r4, #3
    7bec:	18eb      	adds	r3, r5, r3
    7bee:	6858      	ldr	r0, [r3, #4]
    7bf0:	7802      	ldrb	r2, [r0, #0]
    7bf2:	2a00      	cmp	r2, #0
    7bf4:	d1e7      	bne.n	7bc6 <rt_pop_req+0x1a>
    7bf6:	8919      	ldrh	r1, [r3, #8]
    7bf8:	f7ff fe78 	bl	78ec <rt_evt_psh>
    7bfc:	78eb      	ldrb	r3, [r5, #3]
    7bfe:	3401      	adds	r4, #1
    7c00:	429c      	cmp	r4, r3
    7c02:	d1e8      	bne.n	7bd6 <rt_pop_req+0x2a>
    7c04:	2400      	movs	r4, #0
    7c06:	e7e6      	b.n	7bd6 <rt_pop_req+0x2a>
    7c08:	6899      	ldr	r1, [r3, #8]
    7c0a:	f7ff fbf9 	bl	7400 <rt_mbx_psh>
    7c0e:	e7de      	b.n	7bce <rt_pop_req+0x22>
    7c10:	706c      	strb	r4, [r5, #1]
    7c12:	4805      	ldr	r0, [pc, #20]	; (7c28 <rt_pop_req+0x7c>)
    7c14:	f7ff fc88 	bl	7528 <rt_get_first>
    7c18:	f000 f86c 	bl	7cf4 <rt_switch_req>
    7c1c:	bd70      	pop	{r4, r5, r6, pc}
    7c1e:	46c0      	nop			; (mov r8, r8)
    7c20:	20006064 	.word	0x20006064
    7c24:	20004c58 	.word	0x20004c58
    7c28:	20006030 	.word	0x20006030

00007c2c <os_tick_init>:
    7c2c:	4b09      	ldr	r3, [pc, #36]	; (7c54 <os_tick_init+0x28>)
    7c2e:	21ff      	movs	r1, #255	; 0xff
    7c30:	681a      	ldr	r2, [r3, #0]
    7c32:	4b09      	ldr	r3, [pc, #36]	; (7c58 <os_tick_init+0x2c>)
    7c34:	2001      	movs	r0, #1
    7c36:	601a      	str	r2, [r3, #0]
    7c38:	2200      	movs	r2, #0
    7c3a:	4b08      	ldr	r3, [pc, #32]	; (7c5c <os_tick_init+0x30>)
    7c3c:	0609      	lsls	r1, r1, #24
    7c3e:	601a      	str	r2, [r3, #0]
    7c40:	4b07      	ldr	r3, [pc, #28]	; (7c60 <os_tick_init+0x34>)
    7c42:	3207      	adds	r2, #7
    7c44:	601a      	str	r2, [r3, #0]
    7c46:	4a07      	ldr	r2, [pc, #28]	; (7c64 <os_tick_init+0x38>)
    7c48:	4240      	negs	r0, r0
    7c4a:	6813      	ldr	r3, [r2, #0]
    7c4c:	430b      	orrs	r3, r1
    7c4e:	6013      	str	r3, [r2, #0]
    7c50:	4770      	bx	lr
    7c52:	46c0      	nop			; (mov r8, r8)
    7c54:	000083e8 	.word	0x000083e8
    7c58:	e000e014 	.word	0xe000e014
    7c5c:	e000e018 	.word	0xe000e018
    7c60:	e000e010 	.word	0xe000e010
    7c64:	e000ed20 	.word	0xe000ed20

00007c68 <os_tick_val>:
    7c68:	4b02      	ldr	r3, [pc, #8]	; (7c74 <os_tick_val+0xc>)
    7c6a:	6818      	ldr	r0, [r3, #0]
    7c6c:	4b02      	ldr	r3, [pc, #8]	; (7c78 <os_tick_val+0x10>)
    7c6e:	681b      	ldr	r3, [r3, #0]
    7c70:	1a18      	subs	r0, r3, r0
    7c72:	4770      	bx	lr
    7c74:	e000e018 	.word	0xe000e018
    7c78:	000083e8 	.word	0x000083e8

00007c7c <os_tick_ovf>:
    7c7c:	4b02      	ldr	r3, [pc, #8]	; (7c88 <os_tick_ovf+0xc>)
    7c7e:	6818      	ldr	r0, [r3, #0]
    7c80:	0140      	lsls	r0, r0, #5
    7c82:	0fc0      	lsrs	r0, r0, #31
    7c84:	4770      	bx	lr
    7c86:	46c0      	nop			; (mov r8, r8)
    7c88:	e000ed04 	.word	0xe000ed04

00007c8c <os_tick_irqack>:
    7c8c:	4770      	bx	lr
    7c8e:	46c0      	nop			; (mov r8, r8)

00007c90 <rt_systick>:
    7c90:	4b0b      	ldr	r3, [pc, #44]	; (7cc0 <rt_systick+0x30>)
    7c92:	b510      	push	{r4, lr}
    7c94:	6818      	ldr	r0, [r3, #0]
    7c96:	2301      	movs	r3, #1
    7c98:	7043      	strb	r3, [r0, #1]
    7c9a:	f7ff fc59 	bl	7550 <rt_put_rdy_first>
    7c9e:	f000 faeb 	bl	8278 <rt_chk_robin>
    7ca2:	4a08      	ldr	r2, [pc, #32]	; (7cc4 <rt_systick+0x34>)
    7ca4:	6813      	ldr	r3, [r2, #0]
    7ca6:	3301      	adds	r3, #1
    7ca8:	6013      	str	r3, [r2, #0]
    7caa:	f7ff fce7 	bl	767c <rt_dec_dly>
    7cae:	f7fd ffed 	bl	5c8c <sysTimerTick>
    7cb2:	4805      	ldr	r0, [pc, #20]	; (7cc8 <rt_systick+0x38>)
    7cb4:	f7ff fc38 	bl	7528 <rt_get_first>
    7cb8:	f000 f81c 	bl	7cf4 <rt_switch_req>
    7cbc:	bd10      	pop	{r4, pc}
    7cbe:	46c0      	nop			; (mov r8, r8)
    7cc0:	20006064 	.word	0x20006064
    7cc4:	2000602c 	.word	0x2000602c
    7cc8:	20006030 	.word	0x20006030

00007ccc <rt_stk_check>:
    7ccc:	4b07      	ldr	r3, [pc, #28]	; (7cec <rt_stk_check+0x20>)
    7cce:	b510      	push	{r4, lr}
    7cd0:	681b      	ldr	r3, [r3, #0]
    7cd2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    7cd4:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    7cd6:	429a      	cmp	r2, r3
    7cd8:	d803      	bhi.n	7ce2 <rt_stk_check+0x16>
    7cda:	4b05      	ldr	r3, [pc, #20]	; (7cf0 <rt_stk_check+0x24>)
    7cdc:	6812      	ldr	r2, [r2, #0]
    7cde:	429a      	cmp	r2, r3
    7ce0:	d002      	beq.n	7ce8 <rt_stk_check+0x1c>
    7ce2:	2001      	movs	r0, #1
    7ce4:	f7f9 fe30 	bl	1948 <os_error>
    7ce8:	bd10      	pop	{r4, pc}
    7cea:	46c0      	nop			; (mov r8, r8)
    7cec:	20006064 	.word	0x20006064
    7cf0:	e25a2ea5 	.word	0xe25a2ea5

00007cf4 <rt_switch_req>:
    7cf4:	4b02      	ldr	r3, [pc, #8]	; (7d00 <rt_switch_req+0xc>)
    7cf6:	6058      	str	r0, [r3, #4]
    7cf8:	2302      	movs	r3, #2
    7cfa:	7043      	strb	r3, [r0, #1]
    7cfc:	4770      	bx	lr
    7cfe:	46c0      	nop			; (mov r8, r8)
    7d00:	20006064 	.word	0x20006064

00007d04 <rt_dispatch>:
    7d04:	b570      	push	{r4, r5, r6, lr}
    7d06:	1e04      	subs	r4, r0, #0
    7d08:	d015      	beq.n	7d36 <rt_dispatch+0x32>
    7d0a:	4d0f      	ldr	r5, [pc, #60]	; (7d48 <rt_dispatch+0x44>)
    7d0c:	78a2      	ldrb	r2, [r4, #2]
    7d0e:	6828      	ldr	r0, [r5, #0]
    7d10:	7883      	ldrb	r3, [r0, #2]
    7d12:	429a      	cmp	r2, r3
    7d14:	d806      	bhi.n	7d24 <rt_dispatch+0x20>
    7d16:	2301      	movs	r3, #1
    7d18:	0021      	movs	r1, r4
    7d1a:	7063      	strb	r3, [r4, #1]
    7d1c:	480b      	ldr	r0, [pc, #44]	; (7d4c <rt_dispatch+0x48>)
    7d1e:	f7ff fbdd 	bl	74dc <rt_put_prio>
    7d22:	bd70      	pop	{r4, r5, r6, pc}
    7d24:	f7ff fc14 	bl	7550 <rt_put_rdy_first>
    7d28:	2301      	movs	r3, #1
    7d2a:	682a      	ldr	r2, [r5, #0]
    7d2c:	7053      	strb	r3, [r2, #1]
    7d2e:	3301      	adds	r3, #1
    7d30:	606c      	str	r4, [r5, #4]
    7d32:	7063      	strb	r3, [r4, #1]
    7d34:	e7f5      	b.n	7d22 <rt_dispatch+0x1e>
    7d36:	4805      	ldr	r0, [pc, #20]	; (7d4c <rt_dispatch+0x48>)
    7d38:	f7ff fbf6 	bl	7528 <rt_get_first>
    7d3c:	4b02      	ldr	r3, [pc, #8]	; (7d48 <rt_dispatch+0x44>)
    7d3e:	6058      	str	r0, [r3, #4]
    7d40:	2302      	movs	r3, #2
    7d42:	7043      	strb	r3, [r0, #1]
    7d44:	e7ed      	b.n	7d22 <rt_dispatch+0x1e>
    7d46:	46c0      	nop			; (mov r8, r8)
    7d48:	20006064 	.word	0x20006064
    7d4c:	20006030 	.word	0x20006030

00007d50 <rt_block>:
    7d50:	b570      	push	{r4, r5, r6, lr}
    7d52:	000d      	movs	r5, r1
    7d54:	2800      	cmp	r0, #0
    7d56:	d00f      	beq.n	7d78 <rt_block+0x28>
    7d58:	4b08      	ldr	r3, [pc, #32]	; (7d7c <rt_block+0x2c>)
    7d5a:	4c09      	ldr	r4, [pc, #36]	; (7d80 <rt_block+0x30>)
    7d5c:	4298      	cmp	r0, r3
    7d5e:	d003      	beq.n	7d68 <rt_block+0x18>
    7d60:	0001      	movs	r1, r0
    7d62:	6820      	ldr	r0, [r4, #0]
    7d64:	f7ff fc58 	bl	7618 <rt_put_dly>
    7d68:	6823      	ldr	r3, [r4, #0]
    7d6a:	4806      	ldr	r0, [pc, #24]	; (7d84 <rt_block+0x34>)
    7d6c:	705d      	strb	r5, [r3, #1]
    7d6e:	f7ff fbdb 	bl	7528 <rt_get_first>
    7d72:	2302      	movs	r3, #2
    7d74:	6060      	str	r0, [r4, #4]
    7d76:	7043      	strb	r3, [r0, #1]
    7d78:	bd70      	pop	{r4, r5, r6, pc}
    7d7a:	46c0      	nop			; (mov r8, r8)
    7d7c:	0000ffff 	.word	0x0000ffff
    7d80:	20006064 	.word	0x20006064
    7d84:	20006030 	.word	0x20006030

00007d88 <rt_tsk_pass>:
    7d88:	b570      	push	{r4, r5, r6, lr}
    7d8a:	f7ff fbeb 	bl	7564 <rt_get_same_rdy_prio>
    7d8e:	1e04      	subs	r4, r0, #0
    7d90:	d00a      	beq.n	7da8 <rt_tsk_pass+0x20>
    7d92:	4d06      	ldr	r5, [pc, #24]	; (7dac <rt_tsk_pass+0x24>)
    7d94:	4806      	ldr	r0, [pc, #24]	; (7db0 <rt_tsk_pass+0x28>)
    7d96:	6829      	ldr	r1, [r5, #0]
    7d98:	f7ff fba0 	bl	74dc <rt_put_prio>
    7d9c:	2301      	movs	r3, #1
    7d9e:	682a      	ldr	r2, [r5, #0]
    7da0:	7053      	strb	r3, [r2, #1]
    7da2:	3301      	adds	r3, #1
    7da4:	606c      	str	r4, [r5, #4]
    7da6:	7063      	strb	r3, [r4, #1]
    7da8:	bd70      	pop	{r4, r5, r6, pc}
    7daa:	46c0      	nop			; (mov r8, r8)
    7dac:	20006064 	.word	0x20006064
    7db0:	20006030 	.word	0x20006030

00007db4 <rt_tsk_self>:
    7db4:	4b03      	ldr	r3, [pc, #12]	; (7dc4 <rt_tsk_self+0x10>)
    7db6:	681b      	ldr	r3, [r3, #0]
    7db8:	2b00      	cmp	r3, #0
    7dba:	d001      	beq.n	7dc0 <rt_tsk_self+0xc>
    7dbc:	78d8      	ldrb	r0, [r3, #3]
    7dbe:	4770      	bx	lr
    7dc0:	2000      	movs	r0, #0
    7dc2:	e7fc      	b.n	7dbe <rt_tsk_self+0xa>
    7dc4:	20006064 	.word	0x20006064

00007dc8 <rt_tsk_prio>:
    7dc8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7dca:	2800      	cmp	r0, #0
    7dcc:	d10c      	bne.n	7de8 <rt_tsk_prio+0x20>
    7dce:	2224      	movs	r2, #36	; 0x24
    7dd0:	4c27      	ldr	r4, [pc, #156]	; (7e70 <rt_tsk_prio+0xa8>)
    7dd2:	6823      	ldr	r3, [r4, #0]
    7dd4:	7099      	strb	r1, [r3, #2]
    7dd6:	5499      	strb	r1, [r3, r2]
    7dd8:	4d26      	ldr	r5, [pc, #152]	; (7e74 <rt_tsk_prio+0xac>)
    7dda:	686a      	ldr	r2, [r5, #4]
    7ddc:	7892      	ldrb	r2, [r2, #2]
    7dde:	428a      	cmp	r2, r1
    7de0:	d82c      	bhi.n	7e3c <rt_tsk_prio+0x74>
    7de2:	2200      	movs	r2, #0
    7de4:	0010      	movs	r0, r2
    7de6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7de8:	4b23      	ldr	r3, [pc, #140]	; (7e78 <rt_tsk_prio+0xb0>)
    7dea:	22ff      	movs	r2, #255	; 0xff
    7dec:	881b      	ldrh	r3, [r3, #0]
    7dee:	4298      	cmp	r0, r3
    7df0:	d8f8      	bhi.n	7de4 <rt_tsk_prio+0x1c>
    7df2:	1e43      	subs	r3, r0, #1
    7df4:	4821      	ldr	r0, [pc, #132]	; (7e7c <rt_tsk_prio+0xb4>)
    7df6:	009b      	lsls	r3, r3, #2
    7df8:	581d      	ldr	r5, [r3, r0]
    7dfa:	2d00      	cmp	r5, #0
    7dfc:	d0f2      	beq.n	7de4 <rt_tsk_prio+0x1c>
    7dfe:	2324      	movs	r3, #36	; 0x24
    7e00:	4c1b      	ldr	r4, [pc, #108]	; (7e70 <rt_tsk_prio+0xa8>)
    7e02:	70a9      	strb	r1, [r5, #2]
    7e04:	54e9      	strb	r1, [r5, r3]
    7e06:	6823      	ldr	r3, [r4, #0]
    7e08:	429d      	cmp	r5, r3
    7e0a:	d0e5      	beq.n	7dd8 <rt_tsk_prio+0x10>
    7e0c:	0028      	movs	r0, r5
    7e0e:	f7ff fbbb 	bl	7588 <rt_resort_prio>
    7e12:	786d      	ldrb	r5, [r5, #1]
    7e14:	2d01      	cmp	r5, #1
    7e16:	d1e4      	bne.n	7de2 <rt_tsk_prio+0x1a>
    7e18:	4f16      	ldr	r7, [pc, #88]	; (7e74 <rt_tsk_prio+0xac>)
    7e1a:	0038      	movs	r0, r7
    7e1c:	f7ff fb84 	bl	7528 <rt_get_first>
    7e20:	1e06      	subs	r6, r0, #0
    7e22:	d023      	beq.n	7e6c <rt_tsk_prio+0xa4>
    7e24:	6820      	ldr	r0, [r4, #0]
    7e26:	78b2      	ldrb	r2, [r6, #2]
    7e28:	7883      	ldrb	r3, [r0, #2]
    7e2a:	429a      	cmp	r2, r3
    7e2c:	d815      	bhi.n	7e5a <rt_tsk_prio+0x92>
    7e2e:	7075      	strb	r5, [r6, #1]
    7e30:	0031      	movs	r1, r6
    7e32:	0038      	movs	r0, r7
    7e34:	f7ff fb52 	bl	74dc <rt_put_prio>
    7e38:	2200      	movs	r2, #0
    7e3a:	e7d3      	b.n	7de4 <rt_tsk_prio+0x1c>
    7e3c:	0019      	movs	r1, r3
    7e3e:	0028      	movs	r0, r5
    7e40:	f7ff fb4c 	bl	74dc <rt_put_prio>
    7e44:	2301      	movs	r3, #1
    7e46:	0028      	movs	r0, r5
    7e48:	6822      	ldr	r2, [r4, #0]
    7e4a:	7053      	strb	r3, [r2, #1]
    7e4c:	f7ff fb6c 	bl	7528 <rt_get_first>
    7e50:	2302      	movs	r3, #2
    7e52:	6060      	str	r0, [r4, #4]
    7e54:	2200      	movs	r2, #0
    7e56:	7043      	strb	r3, [r0, #1]
    7e58:	e7c4      	b.n	7de4 <rt_tsk_prio+0x1c>
    7e5a:	f7ff fb79 	bl	7550 <rt_put_rdy_first>
    7e5e:	6823      	ldr	r3, [r4, #0]
    7e60:	2200      	movs	r2, #0
    7e62:	705d      	strb	r5, [r3, #1]
    7e64:	2302      	movs	r3, #2
    7e66:	6066      	str	r6, [r4, #4]
    7e68:	7073      	strb	r3, [r6, #1]
    7e6a:	e7bb      	b.n	7de4 <rt_tsk_prio+0x1c>
    7e6c:	0038      	movs	r0, r7
    7e6e:	e7ed      	b.n	7e4c <rt_tsk_prio+0x84>
    7e70:	20006064 	.word	0x20006064
    7e74:	20006030 	.word	0x20006030
    7e78:	000083d4 	.word	0x000083d4
    7e7c:	20004cdc 	.word	0x20004cdc

00007e80 <rt_tsk_create>:
    7e80:	b5f0      	push	{r4, r5, r6, r7, lr}
    7e82:	4647      	mov	r7, r8
    7e84:	b480      	push	{r7}
    7e86:	001f      	movs	r7, r3
    7e88:	23ff      	movs	r3, #255	; 0xff
    7e8a:	400b      	ands	r3, r1
    7e8c:	4690      	mov	r8, r2
    7e8e:	001a      	movs	r2, r3
    7e90:	4253      	negs	r3, r2
    7e92:	4153      	adcs	r3, r2
    7e94:	0006      	movs	r6, r0
    7e96:	4831      	ldr	r0, [pc, #196]	; (7f5c <rt_tsk_create+0xdc>)
    7e98:	18cc      	adds	r4, r1, r3
    7e9a:	f7fe ff95 	bl	6dc8 <rt_alloc_box>
    7e9e:	1e05      	subs	r5, r0, #0
    7ea0:	d032      	beq.n	7f08 <rt_tsk_create+0x88>
    7ea2:	4643      	mov	r3, r8
    7ea4:	2101      	movs	r1, #1
    7ea6:	62c3      	str	r3, [r0, #44]	; 0x2c
    7ea8:	2300      	movs	r3, #0
    7eaa:	0a22      	lsrs	r2, r4, #8
    7eac:	7041      	strb	r1, [r0, #1]
    7eae:	b2e4      	uxtb	r4, r4
    7eb0:	3123      	adds	r1, #35	; 0x23
    7eb2:	b292      	uxth	r2, r2
    7eb4:	7003      	strb	r3, [r0, #0]
    7eb6:	84c2      	strh	r2, [r0, #38]	; 0x26
    7eb8:	61c7      	str	r7, [r0, #28]
    7eba:	7084      	strb	r4, [r0, #2]
    7ebc:	5444      	strb	r4, [r0, r1]
    7ebe:	2100      	movs	r1, #0
    7ec0:	6043      	str	r3, [r0, #4]
    7ec2:	6083      	str	r3, [r0, #8]
    7ec4:	60c3      	str	r3, [r0, #12]
    7ec6:	6103      	str	r3, [r0, #16]
    7ec8:	6203      	str	r3, [r0, #32]
    7eca:	8283      	strh	r3, [r0, #20]
    7ecc:	82c3      	strh	r3, [r0, #22]
    7ece:	8303      	strh	r3, [r0, #24]
    7ed0:	8343      	strh	r3, [r0, #26]
    7ed2:	3325      	adds	r3, #37	; 0x25
    7ed4:	54c1      	strb	r1, [r0, r3]
    7ed6:	2a00      	cmp	r2, #0
    7ed8:	d01a      	beq.n	7f10 <rt_tsk_create+0x90>
    7eda:	0031      	movs	r1, r6
    7edc:	0028      	movs	r0, r5
    7ede:	f7fe fe99 	bl	6c14 <rt_init_stack>
    7ee2:	4b1f      	ldr	r3, [pc, #124]	; (7f60 <rt_tsk_create+0xe0>)
    7ee4:	8819      	ldrh	r1, [r3, #0]
    7ee6:	2900      	cmp	r1, #0
    7ee8:	d00e      	beq.n	7f08 <rt_tsk_create+0x88>
    7eea:	481e      	ldr	r0, [pc, #120]	; (7f64 <rt_tsk_create+0xe4>)
    7eec:	6803      	ldr	r3, [r0, #0]
    7eee:	2b00      	cmp	r3, #0
    7ef0:	d02f      	beq.n	7f52 <rt_tsk_create+0xd2>
    7ef2:	2201      	movs	r2, #1
    7ef4:	e005      	b.n	7f02 <rt_tsk_create+0x82>
    7ef6:	00a3      	lsls	r3, r4, #2
    7ef8:	3b04      	subs	r3, #4
    7efa:	58c3      	ldr	r3, [r0, r3]
    7efc:	2b00      	cmp	r3, #0
    7efe:	d00c      	beq.n	7f1a <rt_tsk_create+0x9a>
    7f00:	0022      	movs	r2, r4
    7f02:	1c54      	adds	r4, r2, #1
    7f04:	428c      	cmp	r4, r1
    7f06:	d9f6      	bls.n	7ef6 <rt_tsk_create+0x76>
    7f08:	2000      	movs	r0, #0
    7f0a:	bc04      	pop	{r2}
    7f0c:	4690      	mov	r8, r2
    7f0e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7f10:	4815      	ldr	r0, [pc, #84]	; (7f68 <rt_tsk_create+0xe8>)
    7f12:	f7fe ff59 	bl	6dc8 <rt_alloc_box>
    7f16:	62e8      	str	r0, [r5, #44]	; 0x2c
    7f18:	e7df      	b.n	7eda <rt_tsk_create+0x5a>
    7f1a:	b2e3      	uxtb	r3, r4
    7f1c:	0092      	lsls	r2, r2, #2
    7f1e:	4e13      	ldr	r6, [pc, #76]	; (7f6c <rt_tsk_create+0xec>)
    7f20:	5085      	str	r5, [r0, r2]
    7f22:	70eb      	strb	r3, [r5, #3]
    7f24:	6830      	ldr	r0, [r6, #0]
    7f26:	78aa      	ldrb	r2, [r5, #2]
    7f28:	7883      	ldrb	r3, [r0, #2]
    7f2a:	429a      	cmp	r2, r3
    7f2c:	d807      	bhi.n	7f3e <rt_tsk_create+0xbe>
    7f2e:	2301      	movs	r3, #1
    7f30:	480f      	ldr	r0, [pc, #60]	; (7f70 <rt_tsk_create+0xf0>)
    7f32:	706b      	strb	r3, [r5, #1]
    7f34:	0029      	movs	r1, r5
    7f36:	f7ff fad1 	bl	74dc <rt_put_prio>
    7f3a:	0020      	movs	r0, r4
    7f3c:	e7e5      	b.n	7f0a <rt_tsk_create+0x8a>
    7f3e:	f7ff fb07 	bl	7550 <rt_put_rdy_first>
    7f42:	2301      	movs	r3, #1
    7f44:	6832      	ldr	r2, [r6, #0]
    7f46:	0020      	movs	r0, r4
    7f48:	7053      	strb	r3, [r2, #1]
    7f4a:	3301      	adds	r3, #1
    7f4c:	6075      	str	r5, [r6, #4]
    7f4e:	706b      	strb	r3, [r5, #1]
    7f50:	e7db      	b.n	7f0a <rt_tsk_create+0x8a>
    7f52:	2301      	movs	r3, #1
    7f54:	2200      	movs	r2, #0
    7f56:	2401      	movs	r4, #1
    7f58:	e7e0      	b.n	7f1c <rt_tsk_create+0x9c>
    7f5a:	46c0      	nop			; (mov r8, r8)
    7f5c:	20000908 	.word	0x20000908
    7f60:	000083d4 	.word	0x000083d4
    7f64:	20004cdc 	.word	0x20004cdc
    7f68:	200009e8 	.word	0x200009e8
    7f6c:	20006064 	.word	0x20006064
    7f70:	20006030 	.word	0x20006030

00007f74 <rt_tsk_delete>:
    7f74:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7f76:	4644      	mov	r4, r8
    7f78:	465f      	mov	r7, fp
    7f7a:	4656      	mov	r6, sl
    7f7c:	464d      	mov	r5, r9
    7f7e:	4b5a      	ldr	r3, [pc, #360]	; (80e8 <rt_tsk_delete+0x174>)
    7f80:	b4f0      	push	{r4, r5, r6, r7}
    7f82:	4698      	mov	r8, r3
    7f84:	681c      	ldr	r4, [r3, #0]
    7f86:	2800      	cmp	r0, #0
    7f88:	d00e      	beq.n	7fa8 <rt_tsk_delete+0x34>
    7f8a:	78e3      	ldrb	r3, [r4, #3]
    7f8c:	4298      	cmp	r0, r3
    7f8e:	d00b      	beq.n	7fa8 <rt_tsk_delete+0x34>
    7f90:	4b56      	ldr	r3, [pc, #344]	; (80ec <rt_tsk_delete+0x178>)
    7f92:	881a      	ldrh	r2, [r3, #0]
    7f94:	23ff      	movs	r3, #255	; 0xff
    7f96:	4290      	cmp	r0, r2
    7f98:	d952      	bls.n	8040 <rt_tsk_delete+0xcc>
    7f9a:	0018      	movs	r0, r3
    7f9c:	bc3c      	pop	{r2, r3, r4, r5}
    7f9e:	4690      	mov	r8, r2
    7fa0:	4699      	mov	r9, r3
    7fa2:	46a2      	mov	sl, r4
    7fa4:	46ab      	mov	fp, r5
    7fa6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7fa8:	2300      	movs	r3, #0
    7faa:	7063      	strb	r3, [r4, #1]
    7fac:	f7fc fa57 	bl	445e <rt_get_PSP>
    7fb0:	62a0      	str	r0, [r4, #40]	; 0x28
    7fb2:	f7ff fe8b 	bl	7ccc <rt_stk_check>
    7fb6:	4643      	mov	r3, r8
    7fb8:	681a      	ldr	r2, [r3, #0]
    7fba:	4f4d      	ldr	r7, [pc, #308]	; (80f0 <rt_tsk_delete+0x17c>)
    7fbc:	6a14      	ldr	r4, [r2, #32]
    7fbe:	2c00      	cmp	r4, #0
    7fc0:	d023      	beq.n	800a <rt_tsk_delete+0x96>
    7fc2:	2601      	movs	r6, #1
    7fc4:	e016      	b.n	7ff4 <rt_tsk_delete+0x80>
    7fc6:	0020      	movs	r0, r4
    7fc8:	f7ff faae 	bl	7528 <rt_get_first>
    7fcc:	0005      	movs	r5, r0
    7fce:	2100      	movs	r1, #0
    7fd0:	f7fe fe78 	bl	6cc4 <rt_ret_val>
    7fd4:	0028      	movs	r0, r5
    7fd6:	f7ff fbdf 	bl	7798 <rt_rmv_dly>
    7fda:	706e      	strb	r6, [r5, #1]
    7fdc:	0029      	movs	r1, r5
    7fde:	0038      	movs	r0, r7
    7fe0:	f7ff fa7c 	bl	74dc <rt_put_prio>
    7fe4:	68e3      	ldr	r3, [r4, #12]
    7fe6:	6a2a      	ldr	r2, [r5, #32]
    7fe8:	8066      	strh	r6, [r4, #2]
    7fea:	60a5      	str	r5, [r4, #8]
    7fec:	60e2      	str	r2, [r4, #12]
    7fee:	622c      	str	r4, [r5, #32]
    7ff0:	1e1c      	subs	r4, r3, #0
    7ff2:	d008      	beq.n	8006 <rt_tsk_delete+0x92>
    7ff4:	6863      	ldr	r3, [r4, #4]
    7ff6:	2b00      	cmp	r3, #0
    7ff8:	d1e5      	bne.n	7fc6 <rt_tsk_delete+0x52>
    7ffa:	68e2      	ldr	r2, [r4, #12]
    7ffc:	8063      	strh	r3, [r4, #2]
    7ffe:	60a3      	str	r3, [r4, #8]
    8000:	60e3      	str	r3, [r4, #12]
    8002:	1e14      	subs	r4, r2, #0
    8004:	d1f6      	bne.n	7ff4 <rt_tsk_delete+0x80>
    8006:	4643      	mov	r3, r8
    8008:	681a      	ldr	r2, [r3, #0]
    800a:	2400      	movs	r4, #0
    800c:	78d3      	ldrb	r3, [r2, #3]
    800e:	4939      	ldr	r1, [pc, #228]	; (80f4 <rt_tsk_delete+0x180>)
    8010:	3b01      	subs	r3, #1
    8012:	009b      	lsls	r3, r3, #2
    8014:	505c      	str	r4, [r3, r1]
    8016:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    8018:	4837      	ldr	r0, [pc, #220]	; (80f8 <rt_tsk_delete+0x184>)
    801a:	f7fe fef5 	bl	6e08 <rt_free_box>
    801e:	4643      	mov	r3, r8
    8020:	6819      	ldr	r1, [r3, #0]
    8022:	4836      	ldr	r0, [pc, #216]	; (80fc <rt_tsk_delete+0x188>)
    8024:	62cc      	str	r4, [r1, #44]	; 0x2c
    8026:	f7fe feef 	bl	6e08 <rt_free_box>
    802a:	4643      	mov	r3, r8
    802c:	601c      	str	r4, [r3, #0]
    802e:	0038      	movs	r0, r7
    8030:	f7ff fa7a 	bl	7528 <rt_get_first>
    8034:	4643      	mov	r3, r8
    8036:	6058      	str	r0, [r3, #4]
    8038:	2302      	movs	r3, #2
    803a:	7043      	strb	r3, [r0, #1]
    803c:	2300      	movs	r3, #0
    803e:	e7ac      	b.n	7f9a <rt_tsk_delete+0x26>
    8040:	4a2c      	ldr	r2, [pc, #176]	; (80f4 <rt_tsk_delete+0x180>)
    8042:	1e46      	subs	r6, r0, #1
    8044:	4692      	mov	sl, r2
    8046:	00b2      	lsls	r2, r6, #2
    8048:	4693      	mov	fp, r2
    804a:	4652      	mov	r2, sl
    804c:	4659      	mov	r1, fp
    804e:	5856      	ldr	r6, [r2, r1]
    8050:	2e00      	cmp	r6, #0
    8052:	d0a2      	beq.n	7f9a <rt_tsk_delete+0x26>
    8054:	0030      	movs	r0, r6
    8056:	f7ff fb89 	bl	776c <rt_rmv_list>
    805a:	0030      	movs	r0, r6
    805c:	f7ff fb9c 	bl	7798 <rt_rmv_dly>
    8060:	2301      	movs	r3, #1
    8062:	6a34      	ldr	r4, [r6, #32]
    8064:	4f22      	ldr	r7, [pc, #136]	; (80f0 <rt_tsk_delete+0x17c>)
    8066:	4699      	mov	r9, r3
    8068:	2c00      	cmp	r4, #0
    806a:	d11a      	bne.n	80a2 <rt_tsk_delete+0x12e>
    806c:	e022      	b.n	80b4 <rt_tsk_delete+0x140>
    806e:	0020      	movs	r0, r4
    8070:	f7ff fa5a 	bl	7528 <rt_get_first>
    8074:	0005      	movs	r5, r0
    8076:	2100      	movs	r1, #0
    8078:	f7fe fe24 	bl	6cc4 <rt_ret_val>
    807c:	0028      	movs	r0, r5
    807e:	f7ff fb8b 	bl	7798 <rt_rmv_dly>
    8082:	464b      	mov	r3, r9
    8084:	0029      	movs	r1, r5
    8086:	706b      	strb	r3, [r5, #1]
    8088:	0038      	movs	r0, r7
    808a:	f7ff fa27 	bl	74dc <rt_put_prio>
    808e:	464a      	mov	r2, r9
    8090:	68e3      	ldr	r3, [r4, #12]
    8092:	8062      	strh	r2, [r4, #2]
    8094:	6a2a      	ldr	r2, [r5, #32]
    8096:	60a5      	str	r5, [r4, #8]
    8098:	60e2      	str	r2, [r4, #12]
    809a:	622c      	str	r4, [r5, #32]
    809c:	001c      	movs	r4, r3
    809e:	2c00      	cmp	r4, #0
    80a0:	d008      	beq.n	80b4 <rt_tsk_delete+0x140>
    80a2:	6863      	ldr	r3, [r4, #4]
    80a4:	2b00      	cmp	r3, #0
    80a6:	d1e2      	bne.n	806e <rt_tsk_delete+0xfa>
    80a8:	68e2      	ldr	r2, [r4, #12]
    80aa:	8063      	strh	r3, [r4, #2]
    80ac:	60a3      	str	r3, [r4, #8]
    80ae:	60e3      	str	r3, [r4, #12]
    80b0:	0014      	movs	r4, r2
    80b2:	e7f4      	b.n	809e <rt_tsk_delete+0x12a>
    80b4:	4653      	mov	r3, sl
    80b6:	465a      	mov	r2, fp
    80b8:	2400      	movs	r4, #0
    80ba:	509c      	str	r4, [r3, r2]
    80bc:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    80be:	480e      	ldr	r0, [pc, #56]	; (80f8 <rt_tsk_delete+0x184>)
    80c0:	f7fe fea2 	bl	6e08 <rt_free_box>
    80c4:	0031      	movs	r1, r6
    80c6:	62f4      	str	r4, [r6, #44]	; 0x2c
    80c8:	480c      	ldr	r0, [pc, #48]	; (80fc <rt_tsk_delete+0x188>)
    80ca:	f7fe fe9d 	bl	6e08 <rt_free_box>
    80ce:	4643      	mov	r3, r8
    80d0:	6819      	ldr	r1, [r3, #0]
    80d2:	687b      	ldr	r3, [r7, #4]
    80d4:	789a      	ldrb	r2, [r3, #2]
    80d6:	788b      	ldrb	r3, [r1, #2]
    80d8:	429a      	cmp	r2, r3
    80da:	d9af      	bls.n	803c <rt_tsk_delete+0xc8>
    80dc:	2301      	movs	r3, #1
    80de:	0038      	movs	r0, r7
    80e0:	704b      	strb	r3, [r1, #1]
    80e2:	f7ff f9fb 	bl	74dc <rt_put_prio>
    80e6:	e7a2      	b.n	802e <rt_tsk_delete+0xba>
    80e8:	20006064 	.word	0x20006064
    80ec:	000083d4 	.word	0x000083d4
    80f0:	20006030 	.word	0x20006030
    80f4:	20004cdc 	.word	0x20004cdc
    80f8:	200009e8 	.word	0x200009e8
    80fc:	20000908 	.word	0x20000908

00008100 <rt_sys_init>:
    8100:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8102:	4b2b      	ldr	r3, [pc, #172]	; (81b0 <rt_sys_init+0xb0>)
    8104:	881a      	ldrh	r2, [r3, #0]
    8106:	2a00      	cmp	r2, #0
    8108:	d004      	beq.n	8114 <rt_sys_init+0x14>
    810a:	0092      	lsls	r2, r2, #2
    810c:	2100      	movs	r1, #0
    810e:	4829      	ldr	r0, [pc, #164]	; (81b4 <rt_sys_init+0xb4>)
    8110:	f7fc fbd8 	bl	48c4 <memset>
    8114:	4b28      	ldr	r3, [pc, #160]	; (81b8 <rt_sys_init+0xb8>)
    8116:	2234      	movs	r2, #52	; 0x34
    8118:	8819      	ldrh	r1, [r3, #0]
    811a:	4828      	ldr	r0, [pc, #160]	; (81bc <rt_sys_init+0xbc>)
    811c:	f7fe fe28 	bl	6d70 <_init_box>
    8120:	2280      	movs	r2, #128	; 0x80
    8122:	4b27      	ldr	r3, [pc, #156]	; (81c0 <rt_sys_init+0xc0>)
    8124:	0612      	lsls	r2, r2, #24
    8126:	881b      	ldrh	r3, [r3, #0]
    8128:	4f26      	ldr	r7, [pc, #152]	; (81c4 <rt_sys_init+0xc4>)
    812a:	431a      	orrs	r2, r3
    812c:	4b26      	ldr	r3, [pc, #152]	; (81c8 <rt_sys_init+0xc8>)
    812e:	0038      	movs	r0, r7
    8130:	6819      	ldr	r1, [r3, #0]
    8132:	f7fe fe1d 	bl	6d70 <_init_box>
    8136:	4b25      	ldr	r3, [pc, #148]	; (81cc <rt_sys_init+0xcc>)
    8138:	2208      	movs	r2, #8
    813a:	6818      	ldr	r0, [r3, #0]
    813c:	4b24      	ldr	r3, [pc, #144]	; (81d0 <rt_sys_init+0xd0>)
    813e:	2600      	movs	r6, #0
    8140:	8819      	ldrh	r1, [r3, #0]
    8142:	f7fe fe15 	bl	6d70 <_init_box>
    8146:	23ff      	movs	r3, #255	; 0xff
    8148:	2500      	movs	r5, #0
    814a:	4c22      	ldr	r4, [pc, #136]	; (81d4 <rt_sys_init+0xd4>)
    814c:	0038      	movs	r0, r7
    814e:	70e3      	strb	r3, [r4, #3]
    8150:	3bfe      	subs	r3, #254	; 0xfe
    8152:	7063      	strb	r3, [r4, #1]
    8154:	3323      	adds	r3, #35	; 0x23
    8156:	54e6      	strb	r6, [r4, r3]
    8158:	3301      	adds	r3, #1
    815a:	54e6      	strb	r6, [r4, r3]
    815c:	84e5      	strh	r5, [r4, #38]	; 0x26
    815e:	7026      	strb	r6, [r4, #0]
    8160:	70a6      	strb	r6, [r4, #2]
    8162:	6065      	str	r5, [r4, #4]
    8164:	60a5      	str	r5, [r4, #8]
    8166:	60e5      	str	r5, [r4, #12]
    8168:	6125      	str	r5, [r4, #16]
    816a:	6225      	str	r5, [r4, #32]
    816c:	82a5      	strh	r5, [r4, #20]
    816e:	82e5      	strh	r5, [r4, #22]
    8170:	8325      	strh	r5, [r4, #24]
    8172:	8365      	strh	r5, [r4, #26]
    8174:	f7fe fe28 	bl	6dc8 <rt_alloc_box>
    8178:	4917      	ldr	r1, [pc, #92]	; (81d8 <rt_sys_init+0xd8>)
    817a:	62e0      	str	r0, [r4, #44]	; 0x2c
    817c:	0020      	movs	r0, r4
    817e:	f7fe fd49 	bl	6c14 <rt_init_stack>
    8182:	2204      	movs	r2, #4
    8184:	4b15      	ldr	r3, [pc, #84]	; (81dc <rt_sys_init+0xdc>)
    8186:	701a      	strb	r2, [r3, #0]
    8188:	605d      	str	r5, [r3, #4]
    818a:	4b15      	ldr	r3, [pc, #84]	; (81e0 <rt_sys_init+0xe0>)
    818c:	701a      	strb	r2, [r3, #0]
    818e:	60dd      	str	r5, [r3, #12]
    8190:	611d      	str	r5, [r3, #16]
    8192:	829d      	strh	r5, [r3, #20]
    8194:	4b13      	ldr	r3, [pc, #76]	; (81e4 <rt_sys_init+0xe4>)
    8196:	4a14      	ldr	r2, [pc, #80]	; (81e8 <rt_sys_init+0xe8>)
    8198:	601c      	str	r4, [r3, #0]
    819a:	2302      	movs	r3, #2
    819c:	7812      	ldrb	r2, [r2, #0]
    819e:	7063      	strb	r3, [r4, #1]
    81a0:	4b12      	ldr	r3, [pc, #72]	; (81ec <rt_sys_init+0xec>)
    81a2:	701e      	strb	r6, [r3, #0]
    81a4:	705e      	strb	r6, [r3, #1]
    81a6:	70da      	strb	r2, [r3, #3]
    81a8:	f000 f85a 	bl	8260 <rt_init_robin>
    81ac:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    81ae:	46c0      	nop			; (mov r8, r8)
    81b0:	000083d4 	.word	0x000083d4
    81b4:	20004cdc 	.word	0x20004cdc
    81b8:	00008400 	.word	0x00008400
    81bc:	20000908 	.word	0x20000908
    81c0:	000083d8 	.word	0x000083d8
    81c4:	200009e8 	.word	0x200009e8
    81c8:	00008404 	.word	0x00008404
    81cc:	20004d18 	.word	0x20004d18
    81d0:	00008428 	.word	0x00008428
    81d4:	2000606c 	.word	0x2000606c
    81d8:	00001941 	.word	0x00001941
    81dc:	20006030 	.word	0x20006030
    81e0:	20006048 	.word	0x20006048
    81e4:	20006064 	.word	0x20006064
    81e8:	0000840c 	.word	0x0000840c
    81ec:	20004c58 	.word	0x20004c58

000081f0 <rt_sys_start>:
    81f0:	21ff      	movs	r1, #255	; 0xff
    81f2:	4b16      	ldr	r3, [pc, #88]	; (824c <rt_sys_start+0x5c>)
    81f4:	0409      	lsls	r1, r1, #16
    81f6:	681a      	ldr	r2, [r3, #0]
    81f8:	b510      	push	{r4, lr}
    81fa:	430a      	orrs	r2, r1
    81fc:	601a      	str	r2, [r3, #0]
    81fe:	681b      	ldr	r3, [r3, #0]
    8200:	4913      	ldr	r1, [pc, #76]	; (8250 <rt_sys_start+0x60>)
    8202:	025b      	lsls	r3, r3, #9
    8204:	680a      	ldr	r2, [r1, #0]
    8206:	0e9b      	lsrs	r3, r3, #26
    8208:	069b      	lsls	r3, r3, #26
    820a:	4313      	orrs	r3, r2
    820c:	600b      	str	r3, [r1, #0]
    820e:	f7ff fd0d 	bl	7c2c <os_tick_init>
    8212:	4c10      	ldr	r4, [pc, #64]	; (8254 <rt_sys_start+0x64>)
    8214:	6020      	str	r0, [r4, #0]
    8216:	2800      	cmp	r0, #0
    8218:	db17      	blt.n	824a <rt_sys_start+0x5a>
    821a:	4a0f      	ldr	r2, [pc, #60]	; (8258 <rt_sys_start+0x68>)
    821c:	0883      	lsrs	r3, r0, #2
    821e:	4694      	mov	ip, r2
    8220:	2218      	movs	r2, #24
    8222:	00c0      	lsls	r0, r0, #3
    8224:	4010      	ands	r0, r2
    8226:	32e7      	adds	r2, #231	; 0xe7
    8228:	4082      	lsls	r2, r0
    822a:	009b      	lsls	r3, r3, #2
    822c:	4463      	add	r3, ip
    822e:	6819      	ldr	r1, [r3, #0]
    8230:	430a      	orrs	r2, r1
    8232:	490a      	ldr	r1, [pc, #40]	; (825c <rt_sys_start+0x6c>)
    8234:	601a      	str	r2, [r3, #0]
    8236:	468c      	mov	ip, r1
    8238:	211f      	movs	r1, #31
    823a:	6822      	ldr	r2, [r4, #0]
    823c:	0953      	lsrs	r3, r2, #5
    823e:	400a      	ands	r2, r1
    8240:	391e      	subs	r1, #30
    8242:	4091      	lsls	r1, r2
    8244:	009b      	lsls	r3, r3, #2
    8246:	4463      	add	r3, ip
    8248:	6019      	str	r1, [r3, #0]
    824a:	bd10      	pop	{r4, pc}
    824c:	e000ed20 	.word	0xe000ed20
    8250:	e000ed1c 	.word	0xe000ed1c
    8254:	20006060 	.word	0x20006060
    8258:	e000e400 	.word	0xe000e400
    825c:	e000e100 	.word	0xe000e100

00008260 <rt_init_robin>:
    8260:	2200      	movs	r2, #0
    8262:	4b03      	ldr	r3, [pc, #12]	; (8270 <rt_init_robin+0x10>)
    8264:	601a      	str	r2, [r3, #0]
    8266:	4a03      	ldr	r2, [pc, #12]	; (8274 <rt_init_robin+0x14>)
    8268:	6812      	ldr	r2, [r2, #0]
    826a:	80da      	strh	r2, [r3, #6]
    826c:	4770      	bx	lr
    826e:	46c0      	nop			; (mov r8, r8)
    8270:	200060a0 	.word	0x200060a0
    8274:	000083dc 	.word	0x000083dc

00008278 <rt_chk_robin>:
    8278:	b510      	push	{r4, lr}
    827a:	4a0f      	ldr	r2, [pc, #60]	; (82b8 <rt_chk_robin+0x40>)
    827c:	4c0f      	ldr	r4, [pc, #60]	; (82bc <rt_chk_robin+0x44>)
    827e:	6811      	ldr	r1, [r2, #0]
    8280:	6863      	ldr	r3, [r4, #4]
    8282:	4299      	cmp	r1, r3
    8284:	d014      	beq.n	82b0 <rt_chk_robin+0x38>
    8286:	6013      	str	r3, [r2, #0]
    8288:	4b0d      	ldr	r3, [pc, #52]	; (82c0 <rt_chk_robin+0x48>)
    828a:	8819      	ldrh	r1, [r3, #0]
    828c:	88d3      	ldrh	r3, [r2, #6]
    828e:	3b01      	subs	r3, #1
    8290:	18cb      	adds	r3, r1, r3
    8292:	b29b      	uxth	r3, r3
    8294:	8093      	strh	r3, [r2, #4]
    8296:	4299      	cmp	r1, r3
    8298:	d000      	beq.n	829c <rt_chk_robin+0x24>
    829a:	bd10      	pop	{r4, pc}
    829c:	2300      	movs	r3, #0
    829e:	0020      	movs	r0, r4
    82a0:	6013      	str	r3, [r2, #0]
    82a2:	f7ff f941 	bl	7528 <rt_get_first>
    82a6:	0001      	movs	r1, r0
    82a8:	0020      	movs	r0, r4
    82aa:	f7ff f917 	bl	74dc <rt_put_prio>
    82ae:	e7f4      	b.n	829a <rt_chk_robin+0x22>
    82b0:	4b03      	ldr	r3, [pc, #12]	; (82c0 <rt_chk_robin+0x48>)
    82b2:	8819      	ldrh	r1, [r3, #0]
    82b4:	8893      	ldrh	r3, [r2, #4]
    82b6:	e7ee      	b.n	8296 <rt_chk_robin+0x1e>
    82b8:	200060a0 	.word	0x200060a0
    82bc:	20006030 	.word	0x20006030
    82c0:	2000602c 	.word	0x2000602c
    82c4:	00000000 	.word	0x00000000

000082c8 <__eeprom_program_word_veneer>:
    82c8:	b401      	push	{r0}
    82ca:	4802      	ldr	r0, [pc, #8]	; (82d4 <__eeprom_program_word_veneer+0xc>)
    82cc:	4684      	mov	ip, r0
    82ce:	bc01      	pop	{r0}
    82d0:	4760      	bx	ip
    82d2:	bf00      	nop
    82d4:	20100151 	.word	0x20100151

000082d8 <__eeprom_erase_page_veneer>:
    82d8:	b401      	push	{r0}
    82da:	4802      	ldr	r0, [pc, #8]	; (82e4 <__eeprom_erase_page_veneer+0xc>)
    82dc:	4684      	mov	ip, r0
    82de:	bc01      	pop	{r0}
    82e0:	4760      	bx	ip
    82e2:	bf00      	nop
    82e4:	2010002d 	.word	0x2010002d

000082e8 <__eeprom_read_word_veneer>:
    82e8:	b401      	push	{r0}
    82ea:	4802      	ldr	r0, [pc, #8]	; (82f4 <__eeprom_read_word_veneer+0xc>)
    82ec:	4684      	mov	ip, r0
    82ee:	bc01      	pop	{r0}
    82f0:	4760      	bx	ip
    82f2:	bf00      	nop
    82f4:	20100229 	.word	0x20100229

000082f8 <threadPacketParserDef>:
    82f8:	00002f79 00000001 00000001 00000400     y/..............

00008308 <threadFSMProceedDef>:
    8308:	00000421 00000000 00000001 00000400     !...............

00008318 <threadDUTProceedDef>:
    8318:	000002f1 00000000 00000001 00000400     ................

00008328 <message_def>:
    8328:	00000004 20000868                       ....h.. 

00008330 <os_mutex_def_MutexMdbReg>:
    8330:	2000088c 74697865 00000000 70616548     ... exit....Heap
    8340:	646e6120 61747320 63206b63 696c6c6f      and stack colli
    8350:	6e6f6973 0000000a 00001362 00001350     sion....b...P...
    8360:	0000136e 0000137a 0000137a 0000137a     n...z...z...z...
    8370:	0000137a 0000137a 0000137a 0000137a     z...z...z...z...
    8380:	0000137a 0000137a 0000137a 00001368     z...z...z...h...
    8390:	0000137a 0000137a 0000137a 000012f4     z...z...z.......
    83a0:	0000137a 0000136e 0000137a 0000137a     z...n...z...z...
    83b0:	00001374 6c383025 00002058 32302520     t...%08lX .. %02
    83c0:	00000058 34302520 00000058 38302520     X... %04X... %08
    83d0:	0000584c                                LX..

000083d4 <os_maxtaskrun>:
    83d4:	00000004                                ....

000083d8 <os_stackinfo>:
    83d8:	01021000                                ....

000083dc <os_rrobin>:
    83dc:	00010005                                ....

000083e0 <os_tickfreq>:
    83e0:	04c4b400                                ....

000083e4 <os_tickus_i>:
    83e4:	00000050                                         P.

000083e6 <os_tickus_f>:
	...

000083e8 <os_trv>:
    83e8:	0001387f                                .8..

000083ec <os_flags>:
    83ec:	00000001                                ....

000083f0 <CMSIS_RTOS_API_Version>:
    83f0:	00010002                                ....

000083f4 <CMSIS_RTOS_RTX_Version>:
    83f4:	00040052                                R...

000083f8 <os_clockrate>:
    83f8:	000003e8                                ....

000083fc <os_timernum>:
    83fc:	00000000                                ....

00008400 <mp_tcb_size>:
    8400:	000000dc                                ....

00008404 <mp_stk_size>:
    8404:	00003010                                .0..

00008408 <os_stack_sz>:
    8408:	00001260                                `...

0000840c <os_fifo_size>:
    840c:	00000010                                ....

00008410 <os_thread_def_osTimerThread>:
    8410:	00005e7d 00000002 00000001 00000200     }^..............

00008420 <os_messageQ_def_osTimerMessageQ>:
    8420:	00000004 20004cf0                       .....L. 

00008428 <mp_tmr_size>:
    8428:	00000000                                ....

0000842c <os_thread_def_main>:
    842c:	000001b9 00000000 00000001 00000040     ............@...

0000843c <os_mutex_def_readpackMutex>:
    843c:	2000531c                                .S. 

00008440 <os_mutex_def_sendpackMutex>:
    8440:	20005330                                0S. 

00008444 <crc_table>:
    8444:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    8454:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    8464:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    8474:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    8484:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    8494:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    84a4:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    84b4:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    84c4:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    84d4:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    84e4:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    84f4:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    8504:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    8514:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    8524:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    8534:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    8544:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    8554:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    8564:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    8574:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    8584:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    8594:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    85a4:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    85b4:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    85c4:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    85d4:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    85e4:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    85f4:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    8604:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    8614:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    8624:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    8634:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    8644:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    8654:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    8664:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    8674:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    8684:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    8694:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    86a4:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    86b4:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    86c4:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    86d4:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    86e4:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    86f4:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    8704:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    8714:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    8724:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    8734:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    8744:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    8754:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    8764:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    8774:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    8784:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    8794:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    87a4:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    87b4:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    87c4:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    87d4:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    87e4:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    87f4:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    8804:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    8814:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    8824:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    8834:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

00008844 <crc_table_low>:
    8844:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8854:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8864:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8874:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8884:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8894:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    88a4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    88b4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    88c4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    88d4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    88e4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    88f4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8904:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8914:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8924:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8934:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

00008944 <crc_table_high>:
    8944:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    8954:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    8964:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    8974:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    8984:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    8994:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    89a4:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    89b4:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    89c4:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    89d4:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    89e4:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    89f4:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    8a04:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    8a14:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    8a24:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    8a34:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

00008a44 <defBsiParam>:
    8a44:	56789abc 00011234 00020a00 00000a00     ..xV4...........
    8a54:	00000000                                ....

00008a58 <device_additional_info>:
    8a58:	31554153 6e6f6320 6f727472 72656c6c     SAU1 conrtroller
    8a68:	00000000                                ....

00008a6c <proc_PDU_table>:
    8a6c:	00003f11 00003f11 00003f11 00003dd5     .?...?...?...=..
    8a7c:	00003881 00003f11 00003f11 00003f11     .8...?...?...?..
    8a8c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8a9c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8aac:	000039d1 000037e9 00003f11 00003f11     .9...7...?...?..
    8abc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8acc:	00003bd5 00003f11 00003f11 00003f11     .;...?...?...?..
    8adc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8aec:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8afc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8b0c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8b1c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8b2c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8b3c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8b4c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8b5c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8b6c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8b7c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8b8c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8b9c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8bac:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8bbc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8bcc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8bdc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8bec:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8bfc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8c0c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8c1c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8c2c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8c3c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8c4c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8c5c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8c6c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8c7c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8c8c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8c9c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8cac:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8cbc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8ccc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8cdc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8cec:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8cfc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8d0c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8d1c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8d2c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8d3c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8d4c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8d5c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8d6c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8d7c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8d8c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8d9c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8dac:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8dbc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8dcc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8ddc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8dec:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8dfc:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8e0c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8e1c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8e2c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8e3c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8e4c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..
    8e5c:	00003f11 00003f11 00003f11 00003f11     .?...?...?...?..

00008e6c <_global_impure_ptr>:
    8e6c:	20000018                                ... 

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
