
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 4d 04 00 00 dd 04 00 00 dd 04 00 00     ... M...........
	...
      2c:	f7 46 00 00 00 00 00 00 00 00 00 00 7d 47 00 00     .F..........}G..
      3c:	c5 47 00 00 dd 04 00 00 dd 04 00 00 dd 04 00 00     .G..............
      4c:	dd 04 00 00 dd 04 00 00 dd 04 00 00 79 10 00 00     ............y...
      5c:	09 0a 00 00 dd 04 00 00 dd 04 00 00 dd 04 00 00     ................
      6c:	dd 04 00 00 dd 04 00 00 dd 04 00 00 41 02 00 00     ............A...
      7c:	65 02 00 00 dd 04 00 00 dd 04 00 00 29 25 00 00     e...........)%..
      8c:	dd 04 00 00 dd 04 00 00 dd 04 00 00 dd 04 00 00     ................
      9c:	dd 04 00 00 dd 04 00 00 00 00 00 00 00 00 00 00     ................
      ac:	dd 04 00 00 b9 02 00 00 dd 04 00 00 dd 04 00 00     ................
      bc:	dd 04 00 00                                         ....

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
     1a8:	f001 fe1a 	bl	1de0 <SystemInit>
     1ac:	f000 f9d4 	bl	558 <mdb485_init>
     1b0:	f000 fdee 	bl	d90 <mdb232_init>
     1b4:	f001 fe48 	bl	1e48 <RemoteMacInit>
     1b8:	f001 fef6 	bl	1fa8 <EthernetConfig>
     1bc:	f7ff ffbc 	bl	138 <dut_reset_off>
     1c0:	4b15      	ldr	r3, [pc, #84]	; (218 <__UVISION_VERSION+0xf>)
     1c2:	0018      	movs	r0, r3
     1c4:	f006 f90c 	bl	63e0 <osMutexCreate>
     1c8:	0002      	movs	r2, r0
     1ca:	4b14      	ldr	r3, [pc, #80]	; (21c <__UVISION_VERSION+0x13>)
     1cc:	601a      	str	r2, [r3, #0]
     1ce:	f005 fb07 	bl	57e0 <osKernelInitialize>
     1d2:	4b13      	ldr	r3, [pc, #76]	; (220 <__GCC_VERSION+0x3>)
     1d4:	2100      	movs	r1, #0
     1d6:	0018      	movs	r0, r3
     1d8:	f006 fbe4 	bl	69a4 <osMessageCreate>
     1dc:	0002      	movs	r2, r0
     1de:	4b11      	ldr	r3, [pc, #68]	; (224 <__GCC_VERSION+0x7>)
     1e0:	601a      	str	r2, [r3, #0]
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <__GCC_VERSION+0xb>)
     1e4:	2100      	movs	r1, #0
     1e6:	0018      	movs	r0, r3
     1e8:	f005 fc8c 	bl	5b04 <osThreadCreate>
     1ec:	0002      	movs	r2, r0
     1ee:	4b0f      	ldr	r3, [pc, #60]	; (22c <__GCC_VERSION+0xf>)
     1f0:	601a      	str	r2, [r3, #0]
     1f2:	4b0f      	ldr	r3, [pc, #60]	; (230 <__GCC_VERSION+0x13>)
     1f4:	2100      	movs	r1, #0
     1f6:	0018      	movs	r0, r3
     1f8:	f005 fc84 	bl	5b04 <osThreadCreate>
     1fc:	0002      	movs	r2, r0
     1fe:	4b0d      	ldr	r3, [pc, #52]	; (234 <__GCC_VERSION+0x17>)
     200:	601a      	str	r2, [r3, #0]
     202:	4b0d      	ldr	r3, [pc, #52]	; (238 <__GCC_VERSION+0x1b>)
     204:	2100      	movs	r1, #0
     206:	0018      	movs	r0, r3
     208:	f005 fc7c 	bl	5b04 <osThreadCreate>
     20c:	0002      	movs	r2, r0
     20e:	4b0b      	ldr	r3, [pc, #44]	; (23c <__GCC_VERSION+0x1f>)
     210:	601a      	str	r2, [r3, #0]
     212:	f005 fb81 	bl	5918 <osKernelStart>
     216:	e7fe      	b.n	216 <__UVISION_VERSION+0xd>
     218:	00008570 	.word	0x00008570
     21c:	20000888 	.word	0x20000888
     220:	00008568 	.word	0x00008568
     224:	20000864 	.word	0x20000864
     228:	00008538 	.word	0x00008538
     22c:	20000858 	.word	0x20000858
     230:	00008548 	.word	0x00008548
     234:	2000085c 	.word	0x2000085c
     238:	00008558 	.word	0x00008558
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
     252:	f006 f809 	bl	6268 <osSignalSet>
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
     334:	f005 ffc6 	bl	62c4 <osSignalWait>
     338:	230c      	movs	r3, #12
     33a:	18fb      	adds	r3, r7, r3
     33c:	681b      	ldr	r3, [r3, #0]
     33e:	2b08      	cmp	r3, #8
     340:	d1f2      	bne.n	328 <threadDUTProceed+0x4c>
     342:	230c      	movs	r3, #12
     344:	18fb      	adds	r3, r7, r3
     346:	685b      	ldr	r3, [r3, #4]
     348:	2b02      	cmp	r3, #2
     34a:	d02a      	beq.n	3a2 <threadDUTProceed+0xc6>
     34c:	2b08      	cmp	r3, #8
     34e:	d034      	beq.n	3ba <threadDUTProceed+0xde>
     350:	2b01      	cmp	r3, #1
     352:	d156      	bne.n	402 <_stack_size+0x2>
     354:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     356:	2b01      	cmp	r3, #1
     358:	d916      	bls.n	388 <threadDUTProceed+0xac>
     35a:	4b2a      	ldr	r3, [pc, #168]	; (404 <_stack_size+0x4>)
     35c:	681a      	ldr	r2, [r3, #0]
     35e:	2318      	movs	r3, #24
     360:	18fb      	adds	r3, r7, r3
     362:	605a      	str	r2, [r3, #4]
     364:	f003 fe72 	bl	404c <fsm_get_cyccnt>
     368:	0002      	movs	r2, r0
     36a:	2318      	movs	r3, #24
     36c:	18fb      	adds	r3, r7, r3
     36e:	619a      	str	r2, [r3, #24]
     370:	2318      	movs	r3, #24
     372:	18fb      	adds	r3, r7, r3
     374:	2120      	movs	r1, #32
     376:	0018      	movs	r0, r3
     378:	f003 f8b6 	bl	34e8 <mdb_fifo_write>
     37c:	2318      	movs	r3, #24
     37e:	18fb      	adds	r3, r7, r3
     380:	2200      	movs	r2, #0
     382:	61da      	str	r2, [r3, #28]
     384:	2300      	movs	r3, #0
     386:	647b      	str	r3, [r7, #68]	; 0x44
     388:	2301      	movs	r3, #1
     38a:	647b      	str	r3, [r7, #68]	; 0x44
     38c:	2204      	movs	r2, #4
     38e:	2100      	movs	r1, #0
     390:	2001      	movs	r0, #1
     392:	f000 fd57 	bl	e44 <mdb232_read_inputregs>
     396:	2202      	movs	r2, #2
     398:	2100      	movs	r1, #0
     39a:	2010      	movs	r0, #16
     39c:	f000 fa64 	bl	868 <mdb485_read_inputregs>
     3a0:	e02f      	b.n	402 <_stack_size+0x2>
     3a2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3a4:	2202      	movs	r2, #2
     3a6:	4313      	orrs	r3, r2
     3a8:	647b      	str	r3, [r7, #68]	; 0x44
     3aa:	f000 fe0f 	bl	fcc <mdb232_bikm_get_torque>
     3ae:	0003      	movs	r3, r0
     3b0:	001a      	movs	r2, r3
     3b2:	2318      	movs	r3, #24
     3b4:	18fb      	adds	r3, r7, r3
     3b6:	605a      	str	r2, [r3, #4]
     3b8:	e023      	b.n	402 <_stack_size+0x2>
     3ba:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3bc:	2204      	movs	r2, #4
     3be:	4313      	orrs	r3, r2
     3c0:	647b      	str	r3, [r7, #68]	; 0x44
     3c2:	f000 fac7 	bl	954 <mdb485_get_crc>
     3c6:	1e03      	subs	r3, r0, #0
     3c8:	d11a      	bne.n	400 <_stack_size>
     3ca:	f000 faaf 	bl	92c <mdb485_get_func>
     3ce:	0003      	movs	r3, r0
     3d0:	643b      	str	r3, [r7, #64]	; 0x40
     3d2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     3d4:	2b04      	cmp	r3, #4
     3d6:	d113      	bne.n	400 <_stack_size>
     3d8:	f000 fada 	bl	990 <mdb485_si30_get_counter>
     3dc:	0003      	movs	r3, r0
     3de:	63fb      	str	r3, [r7, #60]	; 0x3c
     3e0:	2318      	movs	r3, #24
     3e2:	18fb      	adds	r3, r7, r3
     3e4:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     3e6:	601a      	str	r2, [r3, #0]
     3e8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     3ea:	021b      	lsls	r3, r3, #8
     3ec:	2204      	movs	r2, #4
     3ee:	4313      	orrs	r3, r2
     3f0:	63bb      	str	r3, [r7, #56]	; 0x38
     3f2:	4b05      	ldr	r3, [pc, #20]	; (408 <_stack_size+0x8>)
     3f4:	681b      	ldr	r3, [r3, #0]
     3f6:	6bb9      	ldr	r1, [r7, #56]	; 0x38
     3f8:	2200      	movs	r2, #0
     3fa:	0018      	movs	r0, r3
     3fc:	f006 fafe 	bl	69fc <osMessagePut>
     400:	46c0      	nop			; (mov r8, r8)
     402:	e791      	b.n	328 <threadDUTProceed+0x4c>
     404:	200008a0 	.word	0x200008a0
     408:	20000864 	.word	0x20000864

0000040c <threadFSMProceed>:
     40c:	b580      	push	{r7, lr}
     40e:	b086      	sub	sp, #24
     410:	af00      	add	r7, sp, #0
     412:	6078      	str	r0, [r7, #4]
     414:	4b0b      	ldr	r3, [pc, #44]	; (444 <threadFSMProceed+0x38>)
     416:	6819      	ldr	r1, [r3, #0]
     418:	2308      	movs	r3, #8
     41a:	18f8      	adds	r0, r7, r3
     41c:	2301      	movs	r3, #1
     41e:	425b      	negs	r3, r3
     420:	001a      	movs	r2, r3
     422:	f006 fb0f 	bl	6a44 <osMessageGet>
     426:	2308      	movs	r3, #8
     428:	18fb      	adds	r3, r7, r3
     42a:	681b      	ldr	r3, [r3, #0]
     42c:	2b10      	cmp	r3, #16
     42e:	d1f1      	bne.n	414 <threadFSMProceed+0x8>
     430:	2308      	movs	r3, #8
     432:	18fb      	adds	r3, r7, r3
     434:	685b      	ldr	r3, [r3, #4]
     436:	617b      	str	r3, [r7, #20]
     438:	4b03      	ldr	r3, [pc, #12]	; (448 <threadFSMProceed+0x3c>)
     43a:	681b      	ldr	r3, [r3, #0]
     43c:	697a      	ldr	r2, [r7, #20]
     43e:	0010      	movs	r0, r2
     440:	4798      	blx	r3
     442:	e7e7      	b.n	414 <threadFSMProceed+0x8>
     444:	20000864 	.word	0x20000864
     448:	20000010 	.word	0x20000010

0000044c <handler_reset>:
     44c:	b580      	push	{r7, lr}
     44e:	b082      	sub	sp, #8
     450:	af00      	add	r7, sp, #0
     452:	4b1a      	ldr	r3, [pc, #104]	; (4bc <handler_reset+0x70>)
     454:	607b      	str	r3, [r7, #4]
     456:	4b1a      	ldr	r3, [pc, #104]	; (4c0 <handler_reset+0x74>)
     458:	603b      	str	r3, [r7, #0]
     45a:	e007      	b.n	46c <handler_reset+0x20>
     45c:	683b      	ldr	r3, [r7, #0]
     45e:	1d1a      	adds	r2, r3, #4
     460:	603a      	str	r2, [r7, #0]
     462:	687a      	ldr	r2, [r7, #4]
     464:	1d11      	adds	r1, r2, #4
     466:	6079      	str	r1, [r7, #4]
     468:	6812      	ldr	r2, [r2, #0]
     46a:	601a      	str	r2, [r3, #0]
     46c:	683a      	ldr	r2, [r7, #0]
     46e:	4b15      	ldr	r3, [pc, #84]	; (4c4 <handler_reset+0x78>)
     470:	429a      	cmp	r2, r3
     472:	d3f3      	bcc.n	45c <handler_reset+0x10>
     474:	4b14      	ldr	r3, [pc, #80]	; (4c8 <handler_reset+0x7c>)
     476:	607b      	str	r3, [r7, #4]
     478:	4b14      	ldr	r3, [pc, #80]	; (4cc <handler_reset+0x80>)
     47a:	603b      	str	r3, [r7, #0]
     47c:	e007      	b.n	48e <handler_reset+0x42>
     47e:	683b      	ldr	r3, [r7, #0]
     480:	1d1a      	adds	r2, r3, #4
     482:	603a      	str	r2, [r7, #0]
     484:	687a      	ldr	r2, [r7, #4]
     486:	1d11      	adds	r1, r2, #4
     488:	6079      	str	r1, [r7, #4]
     48a:	6812      	ldr	r2, [r2, #0]
     48c:	601a      	str	r2, [r3, #0]
     48e:	683a      	ldr	r2, [r7, #0]
     490:	4b0f      	ldr	r3, [pc, #60]	; (4d0 <handler_reset+0x84>)
     492:	429a      	cmp	r2, r3
     494:	d3f3      	bcc.n	47e <handler_reset+0x32>
     496:	4b0f      	ldr	r3, [pc, #60]	; (4d4 <handler_reset+0x88>)
     498:	603b      	str	r3, [r7, #0]
     49a:	e004      	b.n	4a6 <handler_reset+0x5a>
     49c:	683b      	ldr	r3, [r7, #0]
     49e:	1d1a      	adds	r2, r3, #4
     4a0:	603a      	str	r2, [r7, #0]
     4a2:	2200      	movs	r2, #0
     4a4:	601a      	str	r2, [r3, #0]
     4a6:	683a      	ldr	r2, [r7, #0]
     4a8:	4b0b      	ldr	r3, [pc, #44]	; (4d8 <handler_reset+0x8c>)
     4aa:	429a      	cmp	r2, r3
     4ac:	d3f6      	bcc.n	49c <handler_reset+0x50>
     4ae:	f7ff fe79 	bl	1a4 <main>
     4b2:	46c0      	nop			; (mov r8, r8)
     4b4:	46bd      	mov	sp, r7
     4b6:	b002      	add	sp, #8
     4b8:	bd80      	pop	{r7, pc}
     4ba:	46c0      	nop			; (mov r8, r8)
     4bc:	000090b8 	.word	0x000090b8
     4c0:	20000000 	.word	0x20000000
     4c4:	20000858 	.word	0x20000858
     4c8:	00009910 	.word	0x00009910
     4cc:	20100000 	.word	0x20100000
     4d0:	201002a0 	.word	0x201002a0
     4d4:	20000858 	.word	0x20000858
     4d8:	200060f8 	.word	0x200060f8

000004dc <default_handler>:
     4dc:	b580      	push	{r7, lr}
     4de:	af00      	add	r7, sp, #0
     4e0:	e7fe      	b.n	4e0 <default_handler+0x4>
     4e2:	46c0      	nop			; (mov r8, r8)

000004e4 <__NVIC_EnableIRQ>:
     4e4:	b580      	push	{r7, lr}
     4e6:	b082      	sub	sp, #8
     4e8:	af00      	add	r7, sp, #0
     4ea:	0002      	movs	r2, r0
     4ec:	1dfb      	adds	r3, r7, #7
     4ee:	701a      	strb	r2, [r3, #0]
     4f0:	1dfb      	adds	r3, r7, #7
     4f2:	781b      	ldrb	r3, [r3, #0]
     4f4:	2b7f      	cmp	r3, #127	; 0x7f
     4f6:	d809      	bhi.n	50c <__NVIC_EnableIRQ+0x28>
     4f8:	4b06      	ldr	r3, [pc, #24]	; (514 <__NVIC_EnableIRQ+0x30>)
     4fa:	1dfa      	adds	r2, r7, #7
     4fc:	7812      	ldrb	r2, [r2, #0]
     4fe:	0011      	movs	r1, r2
     500:	221f      	movs	r2, #31
     502:	400a      	ands	r2, r1
     504:	2101      	movs	r1, #1
     506:	4091      	lsls	r1, r2
     508:	000a      	movs	r2, r1
     50a:	601a      	str	r2, [r3, #0]
     50c:	46c0      	nop			; (mov r8, r8)
     50e:	46bd      	mov	sp, r7
     510:	b002      	add	sp, #8
     512:	bd80      	pop	{r7, pc}
     514:	e000e100 	.word	0xe000e100

00000518 <__NVIC_DisableIRQ>:
     518:	b580      	push	{r7, lr}
     51a:	b082      	sub	sp, #8
     51c:	af00      	add	r7, sp, #0
     51e:	0002      	movs	r2, r0
     520:	1dfb      	adds	r3, r7, #7
     522:	701a      	strb	r2, [r3, #0]
     524:	1dfb      	adds	r3, r7, #7
     526:	781b      	ldrb	r3, [r3, #0]
     528:	2b7f      	cmp	r3, #127	; 0x7f
     52a:	d80e      	bhi.n	54a <__NVIC_DisableIRQ+0x32>
     52c:	4909      	ldr	r1, [pc, #36]	; (554 <__NVIC_DisableIRQ+0x3c>)
     52e:	1dfb      	adds	r3, r7, #7
     530:	781b      	ldrb	r3, [r3, #0]
     532:	001a      	movs	r2, r3
     534:	231f      	movs	r3, #31
     536:	4013      	ands	r3, r2
     538:	2201      	movs	r2, #1
     53a:	409a      	lsls	r2, r3
     53c:	0013      	movs	r3, r2
     53e:	2280      	movs	r2, #128	; 0x80
     540:	508b      	str	r3, [r1, r2]
     542:	f3bf 8f4f 	dsb	sy
     546:	f3bf 8f6f 	isb	sy
     54a:	46c0      	nop			; (mov r8, r8)
     54c:	46bd      	mov	sp, r7
     54e:	b002      	add	sp, #8
     550:	bd80      	pop	{r7, pc}
     552:	46c0      	nop			; (mov r8, r8)
     554:	e000e100 	.word	0xe000e100

00000558 <mdb485_init>:
     558:	b580      	push	{r7, lr}
     55a:	af00      	add	r7, sp, #0
     55c:	4b14      	ldr	r3, [pc, #80]	; (5b0 <mdb485_init+0x58>)
     55e:	2234      	movs	r2, #52	; 0x34
     560:	625a      	str	r2, [r3, #36]	; 0x24
     562:	4b13      	ldr	r3, [pc, #76]	; (5b0 <mdb485_init+0x58>)
     564:	2205      	movs	r2, #5
     566:	629a      	str	r2, [r3, #40]	; 0x28
     568:	4b11      	ldr	r3, [pc, #68]	; (5b0 <mdb485_init+0x58>)
     56a:	4a11      	ldr	r2, [pc, #68]	; (5b0 <mdb485_init+0x58>)
     56c:	6b52      	ldr	r2, [r2, #52]	; 0x34
     56e:	213f      	movs	r1, #63	; 0x3f
     570:	438a      	bics	r2, r1
     572:	635a      	str	r2, [r3, #52]	; 0x34
     574:	4b0e      	ldr	r3, [pc, #56]	; (5b0 <mdb485_init+0x58>)
     576:	4a0e      	ldr	r2, [pc, #56]	; (5b0 <mdb485_init+0x58>)
     578:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     57a:	2110      	movs	r1, #16
     57c:	430a      	orrs	r2, r1
     57e:	62da      	str	r2, [r3, #44]	; 0x2c
     580:	4b0b      	ldr	r3, [pc, #44]	; (5b0 <mdb485_init+0x58>)
     582:	4a0b      	ldr	r2, [pc, #44]	; (5b0 <mdb485_init+0x58>)
     584:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     586:	2160      	movs	r1, #96	; 0x60
     588:	430a      	orrs	r2, r1
     58a:	62da      	str	r2, [r3, #44]	; 0x2c
     58c:	4b08      	ldr	r3, [pc, #32]	; (5b0 <mdb485_init+0x58>)
     58e:	4a08      	ldr	r2, [pc, #32]	; (5b0 <mdb485_init+0x58>)
     590:	6b12      	ldr	r2, [r2, #48]	; 0x30
     592:	4908      	ldr	r1, [pc, #32]	; (5b4 <mdb485_init+0x5c>)
     594:	430a      	orrs	r2, r1
     596:	631a      	str	r2, [r3, #48]	; 0x30
     598:	4b05      	ldr	r3, [pc, #20]	; (5b0 <mdb485_init+0x58>)
     59a:	4a05      	ldr	r2, [pc, #20]	; (5b0 <mdb485_init+0x58>)
     59c:	6b92      	ldr	r2, [r2, #56]	; 0x38
     59e:	2140      	movs	r1, #64	; 0x40
     5a0:	430a      	orrs	r2, r1
     5a2:	639a      	str	r2, [r3, #56]	; 0x38
     5a4:	2007      	movs	r0, #7
     5a6:	f7ff ff9d 	bl	4e4 <__NVIC_EnableIRQ>
     5aa:	46c0      	nop			; (mov r8, r8)
     5ac:	46bd      	mov	sp, r7
     5ae:	bd80      	pop	{r7, pc}
     5b0:	40038000 	.word	0x40038000
     5b4:	00000301 	.word	0x00000301

000005b8 <mdb485_send>:
     5b8:	b580      	push	{r7, lr}
     5ba:	b084      	sub	sp, #16
     5bc:	af00      	add	r7, sp, #0
     5be:	6078      	str	r0, [r7, #4]
     5c0:	6039      	str	r1, [r7, #0]
     5c2:	4b17      	ldr	r3, [pc, #92]	; (620 <mdb485_send+0x68>)
     5c4:	4a16      	ldr	r2, [pc, #88]	; (620 <mdb485_send+0x68>)
     5c6:	6812      	ldr	r2, [r2, #0]
     5c8:	2180      	movs	r1, #128	; 0x80
     5ca:	0209      	lsls	r1, r1, #8
     5cc:	430a      	orrs	r2, r1
     5ce:	601a      	str	r2, [r3, #0]
     5d0:	2300      	movs	r3, #0
     5d2:	60fb      	str	r3, [r7, #12]
     5d4:	e00e      	b.n	5f4 <mdb485_send+0x3c>
     5d6:	46c0      	nop			; (mov r8, r8)
     5d8:	4b12      	ldr	r3, [pc, #72]	; (624 <mdb485_send+0x6c>)
     5da:	699b      	ldr	r3, [r3, #24]
     5dc:	2220      	movs	r2, #32
     5de:	4013      	ands	r3, r2
     5e0:	d1fa      	bne.n	5d8 <mdb485_send+0x20>
     5e2:	4a10      	ldr	r2, [pc, #64]	; (624 <mdb485_send+0x6c>)
     5e4:	687b      	ldr	r3, [r7, #4]
     5e6:	1c59      	adds	r1, r3, #1
     5e8:	6079      	str	r1, [r7, #4]
     5ea:	781b      	ldrb	r3, [r3, #0]
     5ec:	6013      	str	r3, [r2, #0]
     5ee:	68fb      	ldr	r3, [r7, #12]
     5f0:	3301      	adds	r3, #1
     5f2:	60fb      	str	r3, [r7, #12]
     5f4:	68fa      	ldr	r2, [r7, #12]
     5f6:	683b      	ldr	r3, [r7, #0]
     5f8:	429a      	cmp	r2, r3
     5fa:	dbec      	blt.n	5d6 <mdb485_send+0x1e>
     5fc:	46c0      	nop			; (mov r8, r8)
     5fe:	4b09      	ldr	r3, [pc, #36]	; (624 <mdb485_send+0x6c>)
     600:	699b      	ldr	r3, [r3, #24]
     602:	2208      	movs	r2, #8
     604:	4013      	ands	r3, r2
     606:	d1fa      	bne.n	5fe <mdb485_send+0x46>
     608:	4b05      	ldr	r3, [pc, #20]	; (620 <mdb485_send+0x68>)
     60a:	4a05      	ldr	r2, [pc, #20]	; (620 <mdb485_send+0x68>)
     60c:	6812      	ldr	r2, [r2, #0]
     60e:	4906      	ldr	r1, [pc, #24]	; (628 <mdb485_send+0x70>)
     610:	400a      	ands	r2, r1
     612:	601a      	str	r2, [r3, #0]
     614:	683b      	ldr	r3, [r7, #0]
     616:	0018      	movs	r0, r3
     618:	46bd      	mov	sp, r7
     61a:	b004      	add	sp, #16
     61c:	bd80      	pop	{r7, pc}
     61e:	46c0      	nop			; (mov r8, r8)
     620:	400c0000 	.word	0x400c0000
     624:	40038000 	.word	0x40038000
     628:	ffff7fff 	.word	0xffff7fff

0000062c <mdb485_putch>:
     62c:	b580      	push	{r7, lr}
     62e:	b082      	sub	sp, #8
     630:	af00      	add	r7, sp, #0
     632:	0002      	movs	r2, r0
     634:	1dfb      	adds	r3, r7, #7
     636:	701a      	strb	r2, [r3, #0]
     638:	46c0      	nop			; (mov r8, r8)
     63a:	4b06      	ldr	r3, [pc, #24]	; (654 <mdb485_putch+0x28>)
     63c:	699b      	ldr	r3, [r3, #24]
     63e:	2220      	movs	r2, #32
     640:	4013      	ands	r3, r2
     642:	d1fa      	bne.n	63a <mdb485_putch+0xe>
     644:	4b03      	ldr	r3, [pc, #12]	; (654 <mdb485_putch+0x28>)
     646:	1dfa      	adds	r2, r7, #7
     648:	7812      	ldrb	r2, [r2, #0]
     64a:	601a      	str	r2, [r3, #0]
     64c:	46c0      	nop			; (mov r8, r8)
     64e:	46bd      	mov	sp, r7
     650:	b002      	add	sp, #8
     652:	bd80      	pop	{r7, pc}
     654:	40038000 	.word	0x40038000

00000658 <mdb485_writeregs>:
     658:	b590      	push	{r4, r7, lr}
     65a:	b089      	sub	sp, #36	; 0x24
     65c:	af00      	add	r7, sp, #0
     65e:	0004      	movs	r4, r0
     660:	0008      	movs	r0, r1
     662:	0011      	movs	r1, r2
     664:	607b      	str	r3, [r7, #4]
     666:	230f      	movs	r3, #15
     668:	18fb      	adds	r3, r7, r3
     66a:	1c22      	adds	r2, r4, #0
     66c:	701a      	strb	r2, [r3, #0]
     66e:	230c      	movs	r3, #12
     670:	18fb      	adds	r3, r7, r3
     672:	1c02      	adds	r2, r0, #0
     674:	801a      	strh	r2, [r3, #0]
     676:	230a      	movs	r3, #10
     678:	18fb      	adds	r3, r7, r3
     67a:	1c0a      	adds	r2, r1, #0
     67c:	801a      	strh	r2, [r3, #0]
     67e:	4b48      	ldr	r3, [pc, #288]	; (7a0 <mdb485_writeregs+0x148>)
     680:	61bb      	str	r3, [r7, #24]
     682:	230a      	movs	r3, #10
     684:	18fb      	adds	r3, r7, r3
     686:	881b      	ldrh	r3, [r3, #0]
     688:	005b      	lsls	r3, r3, #1
     68a:	617b      	str	r3, [r7, #20]
     68c:	69bb      	ldr	r3, [r7, #24]
     68e:	1c5a      	adds	r2, r3, #1
     690:	61ba      	str	r2, [r7, #24]
     692:	220f      	movs	r2, #15
     694:	18ba      	adds	r2, r7, r2
     696:	7812      	ldrb	r2, [r2, #0]
     698:	701a      	strb	r2, [r3, #0]
     69a:	69bb      	ldr	r3, [r7, #24]
     69c:	1c5a      	adds	r2, r3, #1
     69e:	61ba      	str	r2, [r7, #24]
     6a0:	2210      	movs	r2, #16
     6a2:	701a      	strb	r2, [r3, #0]
     6a4:	69bb      	ldr	r3, [r7, #24]
     6a6:	1c5a      	adds	r2, r3, #1
     6a8:	61ba      	str	r2, [r7, #24]
     6aa:	220c      	movs	r2, #12
     6ac:	18ba      	adds	r2, r7, r2
     6ae:	8812      	ldrh	r2, [r2, #0]
     6b0:	0a12      	lsrs	r2, r2, #8
     6b2:	b292      	uxth	r2, r2
     6b4:	b2d2      	uxtb	r2, r2
     6b6:	701a      	strb	r2, [r3, #0]
     6b8:	69bb      	ldr	r3, [r7, #24]
     6ba:	1c5a      	adds	r2, r3, #1
     6bc:	61ba      	str	r2, [r7, #24]
     6be:	220c      	movs	r2, #12
     6c0:	18ba      	adds	r2, r7, r2
     6c2:	8812      	ldrh	r2, [r2, #0]
     6c4:	b2d2      	uxtb	r2, r2
     6c6:	701a      	strb	r2, [r3, #0]
     6c8:	69bb      	ldr	r3, [r7, #24]
     6ca:	1c5a      	adds	r2, r3, #1
     6cc:	61ba      	str	r2, [r7, #24]
     6ce:	220a      	movs	r2, #10
     6d0:	18ba      	adds	r2, r7, r2
     6d2:	8812      	ldrh	r2, [r2, #0]
     6d4:	0a12      	lsrs	r2, r2, #8
     6d6:	b292      	uxth	r2, r2
     6d8:	b2d2      	uxtb	r2, r2
     6da:	701a      	strb	r2, [r3, #0]
     6dc:	69bb      	ldr	r3, [r7, #24]
     6de:	1c5a      	adds	r2, r3, #1
     6e0:	61ba      	str	r2, [r7, #24]
     6e2:	220a      	movs	r2, #10
     6e4:	18ba      	adds	r2, r7, r2
     6e6:	8812      	ldrh	r2, [r2, #0]
     6e8:	b2d2      	uxtb	r2, r2
     6ea:	701a      	strb	r2, [r3, #0]
     6ec:	69bb      	ldr	r3, [r7, #24]
     6ee:	1c5a      	adds	r2, r3, #1
     6f0:	61ba      	str	r2, [r7, #24]
     6f2:	697a      	ldr	r2, [r7, #20]
     6f4:	b2d2      	uxtb	r2, r2
     6f6:	701a      	strb	r2, [r3, #0]
     6f8:	697b      	ldr	r3, [r7, #20]
     6fa:	3307      	adds	r3, #7
     6fc:	2b10      	cmp	r3, #16
     6fe:	dc4a      	bgt.n	796 <mdb485_writeregs+0x13e>
     700:	2300      	movs	r3, #0
     702:	61fb      	str	r3, [r7, #28]
     704:	e01b      	b.n	73e <mdb485_writeregs+0xe6>
     706:	687b      	ldr	r3, [r7, #4]
     708:	1c9a      	adds	r2, r3, #2
     70a:	607a      	str	r2, [r7, #4]
     70c:	2212      	movs	r2, #18
     70e:	18ba      	adds	r2, r7, r2
     710:	881b      	ldrh	r3, [r3, #0]
     712:	8013      	strh	r3, [r2, #0]
     714:	69bb      	ldr	r3, [r7, #24]
     716:	1c5a      	adds	r2, r3, #1
     718:	61ba      	str	r2, [r7, #24]
     71a:	2212      	movs	r2, #18
     71c:	18ba      	adds	r2, r7, r2
     71e:	8812      	ldrh	r2, [r2, #0]
     720:	0a12      	lsrs	r2, r2, #8
     722:	b292      	uxth	r2, r2
     724:	b2d2      	uxtb	r2, r2
     726:	701a      	strb	r2, [r3, #0]
     728:	69bb      	ldr	r3, [r7, #24]
     72a:	1c5a      	adds	r2, r3, #1
     72c:	61ba      	str	r2, [r7, #24]
     72e:	2212      	movs	r2, #18
     730:	18ba      	adds	r2, r7, r2
     732:	8812      	ldrh	r2, [r2, #0]
     734:	b2d2      	uxtb	r2, r2
     736:	701a      	strb	r2, [r3, #0]
     738:	69fb      	ldr	r3, [r7, #28]
     73a:	3301      	adds	r3, #1
     73c:	61fb      	str	r3, [r7, #28]
     73e:	230a      	movs	r3, #10
     740:	18fb      	adds	r3, r7, r3
     742:	881a      	ldrh	r2, [r3, #0]
     744:	69fb      	ldr	r3, [r7, #28]
     746:	429a      	cmp	r2, r3
     748:	dcdd      	bgt.n	706 <mdb485_writeregs+0xae>
     74a:	697b      	ldr	r3, [r7, #20]
     74c:	1dda      	adds	r2, r3, #7
     74e:	2310      	movs	r3, #16
     750:	18fc      	adds	r4, r7, r3
     752:	4b13      	ldr	r3, [pc, #76]	; (7a0 <mdb485_writeregs+0x148>)
     754:	0011      	movs	r1, r2
     756:	0018      	movs	r0, r3
     758:	f002 fca6 	bl	30a8 <crc16>
     75c:	0003      	movs	r3, r0
     75e:	8023      	strh	r3, [r4, #0]
     760:	69bb      	ldr	r3, [r7, #24]
     762:	1c5a      	adds	r2, r3, #1
     764:	61ba      	str	r2, [r7, #24]
     766:	2210      	movs	r2, #16
     768:	18ba      	adds	r2, r7, r2
     76a:	8812      	ldrh	r2, [r2, #0]
     76c:	b2d2      	uxtb	r2, r2
     76e:	701a      	strb	r2, [r3, #0]
     770:	69bb      	ldr	r3, [r7, #24]
     772:	1c5a      	adds	r2, r3, #1
     774:	61ba      	str	r2, [r7, #24]
     776:	2210      	movs	r2, #16
     778:	18ba      	adds	r2, r7, r2
     77a:	8812      	ldrh	r2, [r2, #0]
     77c:	0a12      	lsrs	r2, r2, #8
     77e:	b292      	uxth	r2, r2
     780:	b2d2      	uxtb	r2, r2
     782:	701a      	strb	r2, [r3, #0]
     784:	697b      	ldr	r3, [r7, #20]
     786:	3309      	adds	r3, #9
     788:	001a      	movs	r2, r3
     78a:	4b05      	ldr	r3, [pc, #20]	; (7a0 <mdb485_writeregs+0x148>)
     78c:	0011      	movs	r1, r2
     78e:	0018      	movs	r0, r3
     790:	f7ff ff12 	bl	5b8 <mdb485_send>
     794:	e000      	b.n	798 <mdb485_writeregs+0x140>
     796:	46c0      	nop			; (mov r8, r8)
     798:	46bd      	mov	sp, r7
     79a:	b009      	add	sp, #36	; 0x24
     79c:	bd90      	pop	{r4, r7, pc}
     79e:	46c0      	nop			; (mov r8, r8)
     7a0:	200008bc 	.word	0x200008bc

000007a4 <mdb485_readregs>:
     7a4:	b590      	push	{r4, r7, lr}
     7a6:	b085      	sub	sp, #20
     7a8:	af00      	add	r7, sp, #0
     7aa:	0004      	movs	r4, r0
     7ac:	0008      	movs	r0, r1
     7ae:	0011      	movs	r1, r2
     7b0:	1dfb      	adds	r3, r7, #7
     7b2:	1c22      	adds	r2, r4, #0
     7b4:	701a      	strb	r2, [r3, #0]
     7b6:	1d3b      	adds	r3, r7, #4
     7b8:	1c02      	adds	r2, r0, #0
     7ba:	801a      	strh	r2, [r3, #0]
     7bc:	1cbb      	adds	r3, r7, #2
     7be:	1c0a      	adds	r2, r1, #0
     7c0:	801a      	strh	r2, [r3, #0]
     7c2:	4b28      	ldr	r3, [pc, #160]	; (864 <mdb485_readregs+0xc0>)
     7c4:	60fb      	str	r3, [r7, #12]
     7c6:	68fb      	ldr	r3, [r7, #12]
     7c8:	1c5a      	adds	r2, r3, #1
     7ca:	60fa      	str	r2, [r7, #12]
     7cc:	1dfa      	adds	r2, r7, #7
     7ce:	7812      	ldrb	r2, [r2, #0]
     7d0:	701a      	strb	r2, [r3, #0]
     7d2:	68fb      	ldr	r3, [r7, #12]
     7d4:	1c5a      	adds	r2, r3, #1
     7d6:	60fa      	str	r2, [r7, #12]
     7d8:	2203      	movs	r2, #3
     7da:	701a      	strb	r2, [r3, #0]
     7dc:	68fb      	ldr	r3, [r7, #12]
     7de:	1c5a      	adds	r2, r3, #1
     7e0:	60fa      	str	r2, [r7, #12]
     7e2:	1d3a      	adds	r2, r7, #4
     7e4:	8812      	ldrh	r2, [r2, #0]
     7e6:	0a12      	lsrs	r2, r2, #8
     7e8:	b292      	uxth	r2, r2
     7ea:	b2d2      	uxtb	r2, r2
     7ec:	701a      	strb	r2, [r3, #0]
     7ee:	68fb      	ldr	r3, [r7, #12]
     7f0:	1c5a      	adds	r2, r3, #1
     7f2:	60fa      	str	r2, [r7, #12]
     7f4:	1d3a      	adds	r2, r7, #4
     7f6:	8812      	ldrh	r2, [r2, #0]
     7f8:	b2d2      	uxtb	r2, r2
     7fa:	701a      	strb	r2, [r3, #0]
     7fc:	68fb      	ldr	r3, [r7, #12]
     7fe:	1c5a      	adds	r2, r3, #1
     800:	60fa      	str	r2, [r7, #12]
     802:	1cba      	adds	r2, r7, #2
     804:	8812      	ldrh	r2, [r2, #0]
     806:	0a12      	lsrs	r2, r2, #8
     808:	b292      	uxth	r2, r2
     80a:	b2d2      	uxtb	r2, r2
     80c:	701a      	strb	r2, [r3, #0]
     80e:	68fb      	ldr	r3, [r7, #12]
     810:	1c5a      	adds	r2, r3, #1
     812:	60fa      	str	r2, [r7, #12]
     814:	1cba      	adds	r2, r7, #2
     816:	8812      	ldrh	r2, [r2, #0]
     818:	b2d2      	uxtb	r2, r2
     81a:	701a      	strb	r2, [r3, #0]
     81c:	230a      	movs	r3, #10
     81e:	18fc      	adds	r4, r7, r3
     820:	4b10      	ldr	r3, [pc, #64]	; (864 <mdb485_readregs+0xc0>)
     822:	2106      	movs	r1, #6
     824:	0018      	movs	r0, r3
     826:	f002 fc3f 	bl	30a8 <crc16>
     82a:	0003      	movs	r3, r0
     82c:	8023      	strh	r3, [r4, #0]
     82e:	68fb      	ldr	r3, [r7, #12]
     830:	1c5a      	adds	r2, r3, #1
     832:	60fa      	str	r2, [r7, #12]
     834:	220a      	movs	r2, #10
     836:	18ba      	adds	r2, r7, r2
     838:	8812      	ldrh	r2, [r2, #0]
     83a:	b2d2      	uxtb	r2, r2
     83c:	701a      	strb	r2, [r3, #0]
     83e:	68fb      	ldr	r3, [r7, #12]
     840:	1c5a      	adds	r2, r3, #1
     842:	60fa      	str	r2, [r7, #12]
     844:	220a      	movs	r2, #10
     846:	18ba      	adds	r2, r7, r2
     848:	8812      	ldrh	r2, [r2, #0]
     84a:	0a12      	lsrs	r2, r2, #8
     84c:	b292      	uxth	r2, r2
     84e:	b2d2      	uxtb	r2, r2
     850:	701a      	strb	r2, [r3, #0]
     852:	4b04      	ldr	r3, [pc, #16]	; (864 <mdb485_readregs+0xc0>)
     854:	2108      	movs	r1, #8
     856:	0018      	movs	r0, r3
     858:	f7ff feae 	bl	5b8 <mdb485_send>
     85c:	46c0      	nop			; (mov r8, r8)
     85e:	46bd      	mov	sp, r7
     860:	b005      	add	sp, #20
     862:	bd90      	pop	{r4, r7, pc}
     864:	200008bc 	.word	0x200008bc

00000868 <mdb485_read_inputregs>:
     868:	b590      	push	{r4, r7, lr}
     86a:	b085      	sub	sp, #20
     86c:	af00      	add	r7, sp, #0
     86e:	0004      	movs	r4, r0
     870:	0008      	movs	r0, r1
     872:	0011      	movs	r1, r2
     874:	1dfb      	adds	r3, r7, #7
     876:	1c22      	adds	r2, r4, #0
     878:	701a      	strb	r2, [r3, #0]
     87a:	1d3b      	adds	r3, r7, #4
     87c:	1c02      	adds	r2, r0, #0
     87e:	801a      	strh	r2, [r3, #0]
     880:	1cbb      	adds	r3, r7, #2
     882:	1c0a      	adds	r2, r1, #0
     884:	801a      	strh	r2, [r3, #0]
     886:	4b28      	ldr	r3, [pc, #160]	; (928 <mdb485_read_inputregs+0xc0>)
     888:	60fb      	str	r3, [r7, #12]
     88a:	68fb      	ldr	r3, [r7, #12]
     88c:	1c5a      	adds	r2, r3, #1
     88e:	60fa      	str	r2, [r7, #12]
     890:	1dfa      	adds	r2, r7, #7
     892:	7812      	ldrb	r2, [r2, #0]
     894:	701a      	strb	r2, [r3, #0]
     896:	68fb      	ldr	r3, [r7, #12]
     898:	1c5a      	adds	r2, r3, #1
     89a:	60fa      	str	r2, [r7, #12]
     89c:	2204      	movs	r2, #4
     89e:	701a      	strb	r2, [r3, #0]
     8a0:	68fb      	ldr	r3, [r7, #12]
     8a2:	1c5a      	adds	r2, r3, #1
     8a4:	60fa      	str	r2, [r7, #12]
     8a6:	1d3a      	adds	r2, r7, #4
     8a8:	8812      	ldrh	r2, [r2, #0]
     8aa:	0a12      	lsrs	r2, r2, #8
     8ac:	b292      	uxth	r2, r2
     8ae:	b2d2      	uxtb	r2, r2
     8b0:	701a      	strb	r2, [r3, #0]
     8b2:	68fb      	ldr	r3, [r7, #12]
     8b4:	1c5a      	adds	r2, r3, #1
     8b6:	60fa      	str	r2, [r7, #12]
     8b8:	1d3a      	adds	r2, r7, #4
     8ba:	8812      	ldrh	r2, [r2, #0]
     8bc:	b2d2      	uxtb	r2, r2
     8be:	701a      	strb	r2, [r3, #0]
     8c0:	68fb      	ldr	r3, [r7, #12]
     8c2:	1c5a      	adds	r2, r3, #1
     8c4:	60fa      	str	r2, [r7, #12]
     8c6:	1cba      	adds	r2, r7, #2
     8c8:	8812      	ldrh	r2, [r2, #0]
     8ca:	0a12      	lsrs	r2, r2, #8
     8cc:	b292      	uxth	r2, r2
     8ce:	b2d2      	uxtb	r2, r2
     8d0:	701a      	strb	r2, [r3, #0]
     8d2:	68fb      	ldr	r3, [r7, #12]
     8d4:	1c5a      	adds	r2, r3, #1
     8d6:	60fa      	str	r2, [r7, #12]
     8d8:	1cba      	adds	r2, r7, #2
     8da:	8812      	ldrh	r2, [r2, #0]
     8dc:	b2d2      	uxtb	r2, r2
     8de:	701a      	strb	r2, [r3, #0]
     8e0:	230a      	movs	r3, #10
     8e2:	18fc      	adds	r4, r7, r3
     8e4:	4b10      	ldr	r3, [pc, #64]	; (928 <mdb485_read_inputregs+0xc0>)
     8e6:	2106      	movs	r1, #6
     8e8:	0018      	movs	r0, r3
     8ea:	f002 fbdd 	bl	30a8 <crc16>
     8ee:	0003      	movs	r3, r0
     8f0:	8023      	strh	r3, [r4, #0]
     8f2:	68fb      	ldr	r3, [r7, #12]
     8f4:	1c5a      	adds	r2, r3, #1
     8f6:	60fa      	str	r2, [r7, #12]
     8f8:	220a      	movs	r2, #10
     8fa:	18ba      	adds	r2, r7, r2
     8fc:	8812      	ldrh	r2, [r2, #0]
     8fe:	b2d2      	uxtb	r2, r2
     900:	701a      	strb	r2, [r3, #0]
     902:	68fb      	ldr	r3, [r7, #12]
     904:	1c5a      	adds	r2, r3, #1
     906:	60fa      	str	r2, [r7, #12]
     908:	220a      	movs	r2, #10
     90a:	18ba      	adds	r2, r7, r2
     90c:	8812      	ldrh	r2, [r2, #0]
     90e:	0a12      	lsrs	r2, r2, #8
     910:	b292      	uxth	r2, r2
     912:	b2d2      	uxtb	r2, r2
     914:	701a      	strb	r2, [r3, #0]
     916:	4b04      	ldr	r3, [pc, #16]	; (928 <mdb485_read_inputregs+0xc0>)
     918:	2108      	movs	r1, #8
     91a:	0018      	movs	r0, r3
     91c:	f7ff fe4c 	bl	5b8 <mdb485_send>
     920:	46c0      	nop			; (mov r8, r8)
     922:	46bd      	mov	sp, r7
     924:	b005      	add	sp, #20
     926:	bd90      	pop	{r4, r7, pc}
     928:	200008bc 	.word	0x200008bc

0000092c <mdb485_get_func>:
     92c:	b580      	push	{r7, lr}
     92e:	b082      	sub	sp, #8
     930:	af00      	add	r7, sp, #0
     932:	2007      	movs	r0, #7
     934:	f7ff fdf0 	bl	518 <__NVIC_DisableIRQ>
     938:	4b05      	ldr	r3, [pc, #20]	; (950 <mdb485_get_func+0x24>)
     93a:	785b      	ldrb	r3, [r3, #1]
     93c:	607b      	str	r3, [r7, #4]
     93e:	2007      	movs	r0, #7
     940:	f7ff fdd0 	bl	4e4 <__NVIC_EnableIRQ>
     944:	687b      	ldr	r3, [r7, #4]
     946:	0018      	movs	r0, r3
     948:	46bd      	mov	sp, r7
     94a:	b002      	add	sp, #8
     94c:	bd80      	pop	{r7, pc}
     94e:	46c0      	nop			; (mov r8, r8)
     950:	200008ac 	.word	0x200008ac

00000954 <mdb485_get_crc>:
     954:	b590      	push	{r4, r7, lr}
     956:	b083      	sub	sp, #12
     958:	af00      	add	r7, sp, #0
     95a:	2007      	movs	r0, #7
     95c:	f7ff fddc 	bl	518 <__NVIC_DisableIRQ>
     960:	4b09      	ldr	r3, [pc, #36]	; (988 <mdb485_get_crc+0x34>)
     962:	681a      	ldr	r2, [r3, #0]
     964:	1dbc      	adds	r4, r7, #6
     966:	4b09      	ldr	r3, [pc, #36]	; (98c <mdb485_get_crc+0x38>)
     968:	0011      	movs	r1, r2
     96a:	0018      	movs	r0, r3
     96c:	f002 fb9c 	bl	30a8 <crc16>
     970:	0003      	movs	r3, r0
     972:	8023      	strh	r3, [r4, #0]
     974:	2007      	movs	r0, #7
     976:	f7ff fdb5 	bl	4e4 <__NVIC_EnableIRQ>
     97a:	1dbb      	adds	r3, r7, #6
     97c:	881b      	ldrh	r3, [r3, #0]
     97e:	0018      	movs	r0, r3
     980:	46bd      	mov	sp, r7
     982:	b003      	add	sp, #12
     984:	bd90      	pop	{r4, r7, pc}
     986:	46c0      	nop			; (mov r8, r8)
     988:	200008cc 	.word	0x200008cc
     98c:	200008ac 	.word	0x200008ac

00000990 <mdb485_si30_get_counter>:
     990:	b580      	push	{r7, lr}
     992:	b082      	sub	sp, #8
     994:	af00      	add	r7, sp, #0
     996:	4b1a      	ldr	r3, [pc, #104]	; (a00 <mdb485_si30_get_counter+0x70>)
     998:	607b      	str	r3, [r7, #4]
     99a:	2007      	movs	r0, #7
     99c:	f7ff fdbc 	bl	518 <__NVIC_DisableIRQ>
     9a0:	4b18      	ldr	r3, [pc, #96]	; (a04 <mdb485_si30_get_counter+0x74>)
     9a2:	681b      	ldr	r3, [r3, #0]
     9a4:	2b00      	cmp	r3, #0
     9a6:	d022      	beq.n	9ee <mdb485_si30_get_counter+0x5e>
     9a8:	687b      	ldr	r3, [r7, #4]
     9aa:	1c5a      	adds	r2, r3, #1
     9ac:	607a      	str	r2, [r7, #4]
     9ae:	781b      	ldrb	r3, [r3, #0]
     9b0:	061b      	lsls	r3, r3, #24
     9b2:	603b      	str	r3, [r7, #0]
     9b4:	687b      	ldr	r3, [r7, #4]
     9b6:	1c5a      	adds	r2, r3, #1
     9b8:	607a      	str	r2, [r7, #4]
     9ba:	781b      	ldrb	r3, [r3, #0]
     9bc:	041b      	lsls	r3, r3, #16
     9be:	001a      	movs	r2, r3
     9c0:	683b      	ldr	r3, [r7, #0]
     9c2:	4313      	orrs	r3, r2
     9c4:	603b      	str	r3, [r7, #0]
     9c6:	687b      	ldr	r3, [r7, #4]
     9c8:	1c5a      	adds	r2, r3, #1
     9ca:	607a      	str	r2, [r7, #4]
     9cc:	781b      	ldrb	r3, [r3, #0]
     9ce:	021b      	lsls	r3, r3, #8
     9d0:	001a      	movs	r2, r3
     9d2:	683b      	ldr	r3, [r7, #0]
     9d4:	4313      	orrs	r3, r2
     9d6:	603b      	str	r3, [r7, #0]
     9d8:	687b      	ldr	r3, [r7, #4]
     9da:	781b      	ldrb	r3, [r3, #0]
     9dc:	001a      	movs	r2, r3
     9de:	683b      	ldr	r3, [r7, #0]
     9e0:	4313      	orrs	r3, r2
     9e2:	603b      	str	r3, [r7, #0]
     9e4:	2007      	movs	r0, #7
     9e6:	f7ff fd7d 	bl	4e4 <__NVIC_EnableIRQ>
     9ea:	683b      	ldr	r3, [r7, #0]
     9ec:	e003      	b.n	9f6 <mdb485_si30_get_counter+0x66>
     9ee:	2007      	movs	r0, #7
     9f0:	f7ff fd78 	bl	4e4 <__NVIC_EnableIRQ>
     9f4:	2300      	movs	r3, #0
     9f6:	0018      	movs	r0, r3
     9f8:	46bd      	mov	sp, r7
     9fa:	b002      	add	sp, #8
     9fc:	bd80      	pop	{r7, pc}
     9fe:	46c0      	nop			; (mov r8, r8)
     a00:	200008af 	.word	0x200008af
     a04:	200008cc 	.word	0x200008cc

00000a08 <UART2_Handler>:
     a08:	b580      	push	{r7, lr}
     a0a:	b082      	sub	sp, #8
     a0c:	af00      	add	r7, sp, #0
     a0e:	4b16      	ldr	r3, [pc, #88]	; (a68 <UART2_Handler+0x60>)
     a10:	2200      	movs	r2, #0
     a12:	601a      	str	r2, [r3, #0]
     a14:	4b15      	ldr	r3, [pc, #84]	; (a6c <UART2_Handler+0x64>)
     a16:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     a18:	2240      	movs	r2, #64	; 0x40
     a1a:	4013      	ands	r3, r2
     a1c:	d016      	beq.n	a4c <UART2_Handler+0x44>
     a1e:	4b14      	ldr	r3, [pc, #80]	; (a70 <UART2_Handler+0x68>)
     a20:	603b      	str	r3, [r7, #0]
     a22:	2300      	movs	r3, #0
     a24:	607b      	str	r3, [r7, #4]
     a26:	e009      	b.n	a3c <UART2_Handler+0x34>
     a28:	683b      	ldr	r3, [r7, #0]
     a2a:	1c5a      	adds	r2, r3, #1
     a2c:	603a      	str	r2, [r7, #0]
     a2e:	4a0f      	ldr	r2, [pc, #60]	; (a6c <UART2_Handler+0x64>)
     a30:	6812      	ldr	r2, [r2, #0]
     a32:	b2d2      	uxtb	r2, r2
     a34:	701a      	strb	r2, [r3, #0]
     a36:	687b      	ldr	r3, [r7, #4]
     a38:	3301      	adds	r3, #1
     a3a:	607b      	str	r3, [r7, #4]
     a3c:	687b      	ldr	r3, [r7, #4]
     a3e:	2b0f      	cmp	r3, #15
     a40:	dc04      	bgt.n	a4c <UART2_Handler+0x44>
     a42:	4b0a      	ldr	r3, [pc, #40]	; (a6c <UART2_Handler+0x64>)
     a44:	699b      	ldr	r3, [r3, #24]
     a46:	2210      	movs	r2, #16
     a48:	4013      	ands	r3, r2
     a4a:	d0ed      	beq.n	a28 <UART2_Handler+0x20>
     a4c:	4b06      	ldr	r3, [pc, #24]	; (a68 <UART2_Handler+0x60>)
     a4e:	687a      	ldr	r2, [r7, #4]
     a50:	601a      	str	r2, [r3, #0]
     a52:	4b08      	ldr	r3, [pc, #32]	; (a74 <UART2_Handler+0x6c>)
     a54:	681b      	ldr	r3, [r3, #0]
     a56:	2108      	movs	r1, #8
     a58:	0018      	movs	r0, r3
     a5a:	f005 fc05 	bl	6268 <osSignalSet>
     a5e:	46c0      	nop			; (mov r8, r8)
     a60:	46bd      	mov	sp, r7
     a62:	b002      	add	sp, #8
     a64:	bd80      	pop	{r7, pc}
     a66:	46c0      	nop			; (mov r8, r8)
     a68:	200008cc 	.word	0x200008cc
     a6c:	40038000 	.word	0x40038000
     a70:	200008ac 	.word	0x200008ac
     a74:	20000860 	.word	0x20000860

00000a78 <_exit>:
     a78:	b580      	push	{r7, lr}
     a7a:	b082      	sub	sp, #8
     a7c:	af00      	add	r7, sp, #0
     a7e:	6078      	str	r0, [r7, #4]
     a80:	4b03      	ldr	r3, [pc, #12]	; (a90 <_exit+0x18>)
     a82:	2204      	movs	r2, #4
     a84:	0019      	movs	r1, r3
     a86:	2001      	movs	r0, #1
     a88:	f000 f90c 	bl	ca4 <_write>
     a8c:	e7fe      	b.n	a8c <_exit+0x14>
     a8e:	46c0      	nop			; (mov r8, r8)
     a90:	00008574 	.word	0x00008574

00000a94 <_close>:
     a94:	b580      	push	{r7, lr}
     a96:	b082      	sub	sp, #8
     a98:	af00      	add	r7, sp, #0
     a9a:	6078      	str	r0, [r7, #4]
     a9c:	2301      	movs	r3, #1
     a9e:	425b      	negs	r3, r3
     aa0:	0018      	movs	r0, r3
     aa2:	46bd      	mov	sp, r7
     aa4:	b002      	add	sp, #8
     aa6:	bd80      	pop	{r7, pc}

00000aa8 <_execve>:
     aa8:	b580      	push	{r7, lr}
     aaa:	b084      	sub	sp, #16
     aac:	af00      	add	r7, sp, #0
     aae:	60f8      	str	r0, [r7, #12]
     ab0:	60b9      	str	r1, [r7, #8]
     ab2:	607a      	str	r2, [r7, #4]
     ab4:	4b04      	ldr	r3, [pc, #16]	; (ac8 <_execve+0x20>)
     ab6:	220c      	movs	r2, #12
     ab8:	601a      	str	r2, [r3, #0]
     aba:	2301      	movs	r3, #1
     abc:	425b      	negs	r3, r3
     abe:	0018      	movs	r0, r3
     ac0:	46bd      	mov	sp, r7
     ac2:	b004      	add	sp, #16
     ac4:	bd80      	pop	{r7, pc}
     ac6:	46c0      	nop			; (mov r8, r8)
     ac8:	20006070 	.word	0x20006070

00000acc <_fork>:
     acc:	b580      	push	{r7, lr}
     ace:	af00      	add	r7, sp, #0
     ad0:	4b03      	ldr	r3, [pc, #12]	; (ae0 <_fork+0x14>)
     ad2:	220b      	movs	r2, #11
     ad4:	601a      	str	r2, [r3, #0]
     ad6:	2301      	movs	r3, #1
     ad8:	425b      	negs	r3, r3
     ada:	0018      	movs	r0, r3
     adc:	46bd      	mov	sp, r7
     ade:	bd80      	pop	{r7, pc}
     ae0:	20006070 	.word	0x20006070

00000ae4 <_fstat>:
     ae4:	b580      	push	{r7, lr}
     ae6:	b082      	sub	sp, #8
     ae8:	af00      	add	r7, sp, #0
     aea:	6078      	str	r0, [r7, #4]
     aec:	6039      	str	r1, [r7, #0]
     aee:	683b      	ldr	r3, [r7, #0]
     af0:	2280      	movs	r2, #128	; 0x80
     af2:	0192      	lsls	r2, r2, #6
     af4:	605a      	str	r2, [r3, #4]
     af6:	2300      	movs	r3, #0
     af8:	0018      	movs	r0, r3
     afa:	46bd      	mov	sp, r7
     afc:	b002      	add	sp, #8
     afe:	bd80      	pop	{r7, pc}

00000b00 <_getpid>:
     b00:	b580      	push	{r7, lr}
     b02:	af00      	add	r7, sp, #0
     b04:	2301      	movs	r3, #1
     b06:	0018      	movs	r0, r3
     b08:	46bd      	mov	sp, r7
     b0a:	bd80      	pop	{r7, pc}

00000b0c <_isatty>:
     b0c:	b580      	push	{r7, lr}
     b0e:	b082      	sub	sp, #8
     b10:	af00      	add	r7, sp, #0
     b12:	6078      	str	r0, [r7, #4]
     b14:	687b      	ldr	r3, [r7, #4]
     b16:	3300      	adds	r3, #0
     b18:	2b02      	cmp	r3, #2
     b1a:	d801      	bhi.n	b20 <_isatty+0x14>
     b1c:	2301      	movs	r3, #1
     b1e:	e003      	b.n	b28 <_isatty+0x1c>
     b20:	4b03      	ldr	r3, [pc, #12]	; (b30 <_isatty+0x24>)
     b22:	2209      	movs	r2, #9
     b24:	601a      	str	r2, [r3, #0]
     b26:	2300      	movs	r3, #0
     b28:	0018      	movs	r0, r3
     b2a:	46bd      	mov	sp, r7
     b2c:	b002      	add	sp, #8
     b2e:	bd80      	pop	{r7, pc}
     b30:	20006070 	.word	0x20006070

00000b34 <_kill>:
     b34:	b580      	push	{r7, lr}
     b36:	b082      	sub	sp, #8
     b38:	af00      	add	r7, sp, #0
     b3a:	6078      	str	r0, [r7, #4]
     b3c:	6039      	str	r1, [r7, #0]
     b3e:	4b04      	ldr	r3, [pc, #16]	; (b50 <_kill+0x1c>)
     b40:	2216      	movs	r2, #22
     b42:	601a      	str	r2, [r3, #0]
     b44:	2301      	movs	r3, #1
     b46:	425b      	negs	r3, r3
     b48:	0018      	movs	r0, r3
     b4a:	46bd      	mov	sp, r7
     b4c:	b002      	add	sp, #8
     b4e:	bd80      	pop	{r7, pc}
     b50:	20006070 	.word	0x20006070

00000b54 <_link>:
     b54:	b580      	push	{r7, lr}
     b56:	b082      	sub	sp, #8
     b58:	af00      	add	r7, sp, #0
     b5a:	6078      	str	r0, [r7, #4]
     b5c:	6039      	str	r1, [r7, #0]
     b5e:	4b04      	ldr	r3, [pc, #16]	; (b70 <_link+0x1c>)
     b60:	221f      	movs	r2, #31
     b62:	601a      	str	r2, [r3, #0]
     b64:	2301      	movs	r3, #1
     b66:	425b      	negs	r3, r3
     b68:	0018      	movs	r0, r3
     b6a:	46bd      	mov	sp, r7
     b6c:	b002      	add	sp, #8
     b6e:	bd80      	pop	{r7, pc}
     b70:	20006070 	.word	0x20006070

00000b74 <_lseek>:
     b74:	b580      	push	{r7, lr}
     b76:	b084      	sub	sp, #16
     b78:	af00      	add	r7, sp, #0
     b7a:	60f8      	str	r0, [r7, #12]
     b7c:	60b9      	str	r1, [r7, #8]
     b7e:	607a      	str	r2, [r7, #4]
     b80:	2300      	movs	r3, #0
     b82:	0018      	movs	r0, r3
     b84:	46bd      	mov	sp, r7
     b86:	b004      	add	sp, #16
     b88:	bd80      	pop	{r7, pc}
     b8a:	46c0      	nop			; (mov r8, r8)

00000b8c <_sbrk>:
     b8c:	b580      	push	{r7, lr}
     b8e:	b086      	sub	sp, #24
     b90:	af00      	add	r7, sp, #0
     b92:	6078      	str	r0, [r7, #4]
     b94:	4b16      	ldr	r3, [pc, #88]	; (bf0 <_sbrk+0x64>)
     b96:	681b      	ldr	r3, [r3, #0]
     b98:	2b00      	cmp	r3, #0
     b9a:	d102      	bne.n	ba2 <_sbrk+0x16>
     b9c:	4b14      	ldr	r3, [pc, #80]	; (bf0 <_sbrk+0x64>)
     b9e:	4a15      	ldr	r2, [pc, #84]	; (bf4 <_sbrk+0x68>)
     ba0:	601a      	str	r2, [r3, #0]
     ba2:	4b13      	ldr	r3, [pc, #76]	; (bf0 <_sbrk+0x64>)
     ba4:	681b      	ldr	r3, [r3, #0]
     ba6:	617b      	str	r3, [r7, #20]
     ba8:	f3ef 8308 	mrs	r3, MSP
     bac:	60fb      	str	r3, [r7, #12]
     bae:	68fb      	ldr	r3, [r7, #12]
     bb0:	613b      	str	r3, [r7, #16]
     bb2:	4b0f      	ldr	r3, [pc, #60]	; (bf0 <_sbrk+0x64>)
     bb4:	681a      	ldr	r2, [r3, #0]
     bb6:	687b      	ldr	r3, [r7, #4]
     bb8:	18d2      	adds	r2, r2, r3
     bba:	693b      	ldr	r3, [r7, #16]
     bbc:	429a      	cmp	r2, r3
     bbe:	d90b      	bls.n	bd8 <_sbrk+0x4c>
     bc0:	4b0d      	ldr	r3, [pc, #52]	; (bf8 <_sbrk+0x6c>)
     bc2:	2219      	movs	r2, #25
     bc4:	0019      	movs	r1, r3
     bc6:	2002      	movs	r0, #2
     bc8:	f000 f86c 	bl	ca4 <_write>
     bcc:	4b0b      	ldr	r3, [pc, #44]	; (bfc <_sbrk+0x70>)
     bce:	220c      	movs	r2, #12
     bd0:	601a      	str	r2, [r3, #0]
     bd2:	2301      	movs	r3, #1
     bd4:	425b      	negs	r3, r3
     bd6:	e006      	b.n	be6 <_sbrk+0x5a>
     bd8:	4b05      	ldr	r3, [pc, #20]	; (bf0 <_sbrk+0x64>)
     bda:	681a      	ldr	r2, [r3, #0]
     bdc:	687b      	ldr	r3, [r7, #4]
     bde:	18d2      	adds	r2, r2, r3
     be0:	4b03      	ldr	r3, [pc, #12]	; (bf0 <_sbrk+0x64>)
     be2:	601a      	str	r2, [r3, #0]
     be4:	697b      	ldr	r3, [r7, #20]
     be6:	0018      	movs	r0, r3
     be8:	46bd      	mov	sp, r7
     bea:	b006      	add	sp, #24
     bec:	bd80      	pop	{r7, pc}
     bee:	46c0      	nop			; (mov r8, r8)
     bf0:	200008d4 	.word	0x200008d4
     bf4:	200060f8 	.word	0x200060f8
     bf8:	0000857c 	.word	0x0000857c
     bfc:	20006070 	.word	0x20006070

00000c00 <_read>:
     c00:	b580      	push	{r7, lr}
     c02:	b086      	sub	sp, #24
     c04:	af00      	add	r7, sp, #0
     c06:	60f8      	str	r0, [r7, #12]
     c08:	60b9      	str	r1, [r7, #8]
     c0a:	607a      	str	r2, [r7, #4]
     c0c:	2300      	movs	r3, #0
     c0e:	617b      	str	r3, [r7, #20]
     c10:	68fb      	ldr	r3, [r7, #12]
     c12:	2b00      	cmp	r3, #0
     c14:	d005      	beq.n	c22 <_read+0x22>
     c16:	4b06      	ldr	r3, [pc, #24]	; (c30 <_read+0x30>)
     c18:	2209      	movs	r2, #9
     c1a:	601a      	str	r2, [r3, #0]
     c1c:	2301      	movs	r3, #1
     c1e:	425b      	negs	r3, r3
     c20:	e001      	b.n	c26 <_read+0x26>
     c22:	46c0      	nop			; (mov r8, r8)
     c24:	697b      	ldr	r3, [r7, #20]
     c26:	0018      	movs	r0, r3
     c28:	46bd      	mov	sp, r7
     c2a:	b006      	add	sp, #24
     c2c:	bd80      	pop	{r7, pc}
     c2e:	46c0      	nop			; (mov r8, r8)
     c30:	20006070 	.word	0x20006070

00000c34 <_stat>:
     c34:	b580      	push	{r7, lr}
     c36:	b082      	sub	sp, #8
     c38:	af00      	add	r7, sp, #0
     c3a:	6078      	str	r0, [r7, #4]
     c3c:	6039      	str	r1, [r7, #0]
     c3e:	683b      	ldr	r3, [r7, #0]
     c40:	2280      	movs	r2, #128	; 0x80
     c42:	0192      	lsls	r2, r2, #6
     c44:	605a      	str	r2, [r3, #4]
     c46:	2300      	movs	r3, #0
     c48:	0018      	movs	r0, r3
     c4a:	46bd      	mov	sp, r7
     c4c:	b002      	add	sp, #8
     c4e:	bd80      	pop	{r7, pc}

00000c50 <_times>:
     c50:	b580      	push	{r7, lr}
     c52:	b082      	sub	sp, #8
     c54:	af00      	add	r7, sp, #0
     c56:	6078      	str	r0, [r7, #4]
     c58:	2301      	movs	r3, #1
     c5a:	425b      	negs	r3, r3
     c5c:	0018      	movs	r0, r3
     c5e:	46bd      	mov	sp, r7
     c60:	b002      	add	sp, #8
     c62:	bd80      	pop	{r7, pc}

00000c64 <_unlink>:
     c64:	b580      	push	{r7, lr}
     c66:	b082      	sub	sp, #8
     c68:	af00      	add	r7, sp, #0
     c6a:	6078      	str	r0, [r7, #4]
     c6c:	4b04      	ldr	r3, [pc, #16]	; (c80 <_unlink+0x1c>)
     c6e:	2202      	movs	r2, #2
     c70:	601a      	str	r2, [r3, #0]
     c72:	2301      	movs	r3, #1
     c74:	425b      	negs	r3, r3
     c76:	0018      	movs	r0, r3
     c78:	46bd      	mov	sp, r7
     c7a:	b002      	add	sp, #8
     c7c:	bd80      	pop	{r7, pc}
     c7e:	46c0      	nop			; (mov r8, r8)
     c80:	20006070 	.word	0x20006070

00000c84 <_wait>:
     c84:	b580      	push	{r7, lr}
     c86:	b082      	sub	sp, #8
     c88:	af00      	add	r7, sp, #0
     c8a:	6078      	str	r0, [r7, #4]
     c8c:	4b04      	ldr	r3, [pc, #16]	; (ca0 <_wait+0x1c>)
     c8e:	220a      	movs	r2, #10
     c90:	601a      	str	r2, [r3, #0]
     c92:	2301      	movs	r3, #1
     c94:	425b      	negs	r3, r3
     c96:	0018      	movs	r0, r3
     c98:	46bd      	mov	sp, r7
     c9a:	b002      	add	sp, #8
     c9c:	bd80      	pop	{r7, pc}
     c9e:	46c0      	nop			; (mov r8, r8)
     ca0:	20006070 	.word	0x20006070

00000ca4 <_write>:
     ca4:	b580      	push	{r7, lr}
     ca6:	b086      	sub	sp, #24
     ca8:	af00      	add	r7, sp, #0
     caa:	60f8      	str	r0, [r7, #12]
     cac:	60b9      	str	r1, [r7, #8]
     cae:	607a      	str	r2, [r7, #4]
     cb0:	68fb      	ldr	r3, [r7, #12]
     cb2:	2b01      	cmp	r3, #1
     cb4:	d002      	beq.n	cbc <_write+0x18>
     cb6:	2b02      	cmp	r3, #2
     cb8:	d00b      	beq.n	cd2 <_write+0x2e>
     cba:	e015      	b.n	ce8 <_write+0x44>
     cbc:	2300      	movs	r3, #0
     cbe:	617b      	str	r3, [r7, #20]
     cc0:	e002      	b.n	cc8 <_write+0x24>
     cc2:	697b      	ldr	r3, [r7, #20]
     cc4:	3301      	adds	r3, #1
     cc6:	617b      	str	r3, [r7, #20]
     cc8:	697a      	ldr	r2, [r7, #20]
     cca:	687b      	ldr	r3, [r7, #4]
     ccc:	429a      	cmp	r2, r3
     cce:	dbf8      	blt.n	cc2 <_write+0x1e>
     cd0:	e010      	b.n	cf4 <_write+0x50>
     cd2:	2300      	movs	r3, #0
     cd4:	617b      	str	r3, [r7, #20]
     cd6:	e002      	b.n	cde <_write+0x3a>
     cd8:	697b      	ldr	r3, [r7, #20]
     cda:	3301      	adds	r3, #1
     cdc:	617b      	str	r3, [r7, #20]
     cde:	697a      	ldr	r2, [r7, #20]
     ce0:	687b      	ldr	r3, [r7, #4]
     ce2:	429a      	cmp	r2, r3
     ce4:	dbf8      	blt.n	cd8 <_write+0x34>
     ce6:	e005      	b.n	cf4 <_write+0x50>
     ce8:	4b05      	ldr	r3, [pc, #20]	; (d00 <_write+0x5c>)
     cea:	2209      	movs	r2, #9
     cec:	601a      	str	r2, [r3, #0]
     cee:	2301      	movs	r3, #1
     cf0:	425b      	negs	r3, r3
     cf2:	e000      	b.n	cf6 <_write+0x52>
     cf4:	687b      	ldr	r3, [r7, #4]
     cf6:	0018      	movs	r0, r3
     cf8:	46bd      	mov	sp, r7
     cfa:	b006      	add	sp, #24
     cfc:	bd80      	pop	{r7, pc}
     cfe:	46c0      	nop			; (mov r8, r8)
     d00:	20006070 	.word	0x20006070

00000d04 <_init>:
     d04:	b580      	push	{r7, lr}
     d06:	af00      	add	r7, sp, #0
     d08:	46c0      	nop			; (mov r8, r8)
     d0a:	46bd      	mov	sp, r7
     d0c:	bd80      	pop	{r7, pc}
     d0e:	46c0      	nop			; (mov r8, r8)

00000d10 <_fini>:
     d10:	b580      	push	{r7, lr}
     d12:	af00      	add	r7, sp, #0
     d14:	46c0      	nop			; (mov r8, r8)
     d16:	46bd      	mov	sp, r7
     d18:	bd80      	pop	{r7, pc}
     d1a:	46c0      	nop			; (mov r8, r8)

00000d1c <__NVIC_EnableIRQ>:
     d1c:	b580      	push	{r7, lr}
     d1e:	b082      	sub	sp, #8
     d20:	af00      	add	r7, sp, #0
     d22:	0002      	movs	r2, r0
     d24:	1dfb      	adds	r3, r7, #7
     d26:	701a      	strb	r2, [r3, #0]
     d28:	1dfb      	adds	r3, r7, #7
     d2a:	781b      	ldrb	r3, [r3, #0]
     d2c:	2b7f      	cmp	r3, #127	; 0x7f
     d2e:	d809      	bhi.n	d44 <__NVIC_EnableIRQ+0x28>
     d30:	4b06      	ldr	r3, [pc, #24]	; (d4c <__NVIC_EnableIRQ+0x30>)
     d32:	1dfa      	adds	r2, r7, #7
     d34:	7812      	ldrb	r2, [r2, #0]
     d36:	0011      	movs	r1, r2
     d38:	221f      	movs	r2, #31
     d3a:	400a      	ands	r2, r1
     d3c:	2101      	movs	r1, #1
     d3e:	4091      	lsls	r1, r2
     d40:	000a      	movs	r2, r1
     d42:	601a      	str	r2, [r3, #0]
     d44:	46c0      	nop			; (mov r8, r8)
     d46:	46bd      	mov	sp, r7
     d48:	b002      	add	sp, #8
     d4a:	bd80      	pop	{r7, pc}
     d4c:	e000e100 	.word	0xe000e100

00000d50 <__NVIC_DisableIRQ>:
     d50:	b580      	push	{r7, lr}
     d52:	b082      	sub	sp, #8
     d54:	af00      	add	r7, sp, #0
     d56:	0002      	movs	r2, r0
     d58:	1dfb      	adds	r3, r7, #7
     d5a:	701a      	strb	r2, [r3, #0]
     d5c:	1dfb      	adds	r3, r7, #7
     d5e:	781b      	ldrb	r3, [r3, #0]
     d60:	2b7f      	cmp	r3, #127	; 0x7f
     d62:	d80e      	bhi.n	d82 <__NVIC_DisableIRQ+0x32>
     d64:	4909      	ldr	r1, [pc, #36]	; (d8c <__NVIC_DisableIRQ+0x3c>)
     d66:	1dfb      	adds	r3, r7, #7
     d68:	781b      	ldrb	r3, [r3, #0]
     d6a:	001a      	movs	r2, r3
     d6c:	231f      	movs	r3, #31
     d6e:	4013      	ands	r3, r2
     d70:	2201      	movs	r2, #1
     d72:	409a      	lsls	r2, r3
     d74:	0013      	movs	r3, r2
     d76:	2280      	movs	r2, #128	; 0x80
     d78:	508b      	str	r3, [r1, r2]
     d7a:	f3bf 8f4f 	dsb	sy
     d7e:	f3bf 8f6f 	isb	sy
     d82:	46c0      	nop			; (mov r8, r8)
     d84:	46bd      	mov	sp, r7
     d86:	b002      	add	sp, #8
     d88:	bd80      	pop	{r7, pc}
     d8a:	46c0      	nop			; (mov r8, r8)
     d8c:	e000e100 	.word	0xe000e100

00000d90 <mdb232_init>:
     d90:	b580      	push	{r7, lr}
     d92:	af00      	add	r7, sp, #0
     d94:	4b15      	ldr	r3, [pc, #84]	; (dec <mdb232_init+0x5c>)
     d96:	229c      	movs	r2, #156	; 0x9c
     d98:	0052      	lsls	r2, r2, #1
     d9a:	625a      	str	r2, [r3, #36]	; 0x24
     d9c:	4b13      	ldr	r3, [pc, #76]	; (dec <mdb232_init+0x5c>)
     d9e:	2220      	movs	r2, #32
     da0:	629a      	str	r2, [r3, #40]	; 0x28
     da2:	4b12      	ldr	r3, [pc, #72]	; (dec <mdb232_init+0x5c>)
     da4:	4a11      	ldr	r2, [pc, #68]	; (dec <mdb232_init+0x5c>)
     da6:	6b52      	ldr	r2, [r2, #52]	; 0x34
     da8:	213f      	movs	r1, #63	; 0x3f
     daa:	438a      	bics	r2, r1
     dac:	635a      	str	r2, [r3, #52]	; 0x34
     dae:	4b0f      	ldr	r3, [pc, #60]	; (dec <mdb232_init+0x5c>)
     db0:	4a0e      	ldr	r2, [pc, #56]	; (dec <mdb232_init+0x5c>)
     db2:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     db4:	2110      	movs	r1, #16
     db6:	430a      	orrs	r2, r1
     db8:	62da      	str	r2, [r3, #44]	; 0x2c
     dba:	4b0c      	ldr	r3, [pc, #48]	; (dec <mdb232_init+0x5c>)
     dbc:	4a0b      	ldr	r2, [pc, #44]	; (dec <mdb232_init+0x5c>)
     dbe:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     dc0:	2160      	movs	r1, #96	; 0x60
     dc2:	430a      	orrs	r2, r1
     dc4:	62da      	str	r2, [r3, #44]	; 0x2c
     dc6:	4b09      	ldr	r3, [pc, #36]	; (dec <mdb232_init+0x5c>)
     dc8:	4a08      	ldr	r2, [pc, #32]	; (dec <mdb232_init+0x5c>)
     dca:	6b12      	ldr	r2, [r2, #48]	; 0x30
     dcc:	4908      	ldr	r1, [pc, #32]	; (df0 <mdb232_init+0x60>)
     dce:	430a      	orrs	r2, r1
     dd0:	631a      	str	r2, [r3, #48]	; 0x30
     dd2:	4b06      	ldr	r3, [pc, #24]	; (dec <mdb232_init+0x5c>)
     dd4:	4a05      	ldr	r2, [pc, #20]	; (dec <mdb232_init+0x5c>)
     dd6:	6b92      	ldr	r2, [r2, #56]	; 0x38
     dd8:	2140      	movs	r1, #64	; 0x40
     dda:	430a      	orrs	r2, r1
     ddc:	639a      	str	r2, [r3, #56]	; 0x38
     dde:	2006      	movs	r0, #6
     de0:	f7ff ff9c 	bl	d1c <__NVIC_EnableIRQ>
     de4:	46c0      	nop			; (mov r8, r8)
     de6:	46bd      	mov	sp, r7
     de8:	bd80      	pop	{r7, pc}
     dea:	46c0      	nop			; (mov r8, r8)
     dec:	40030000 	.word	0x40030000
     df0:	00000301 	.word	0x00000301

00000df4 <mdb232_send>:
     df4:	b580      	push	{r7, lr}
     df6:	b084      	sub	sp, #16
     df8:	af00      	add	r7, sp, #0
     dfa:	6078      	str	r0, [r7, #4]
     dfc:	6039      	str	r1, [r7, #0]
     dfe:	2300      	movs	r3, #0
     e00:	60fb      	str	r3, [r7, #12]
     e02:	e00e      	b.n	e22 <mdb232_send+0x2e>
     e04:	46c0      	nop			; (mov r8, r8)
     e06:	4b0e      	ldr	r3, [pc, #56]	; (e40 <mdb232_send+0x4c>)
     e08:	699b      	ldr	r3, [r3, #24]
     e0a:	2220      	movs	r2, #32
     e0c:	4013      	ands	r3, r2
     e0e:	d1fa      	bne.n	e06 <mdb232_send+0x12>
     e10:	4a0b      	ldr	r2, [pc, #44]	; (e40 <mdb232_send+0x4c>)
     e12:	687b      	ldr	r3, [r7, #4]
     e14:	1c59      	adds	r1, r3, #1
     e16:	6079      	str	r1, [r7, #4]
     e18:	781b      	ldrb	r3, [r3, #0]
     e1a:	6013      	str	r3, [r2, #0]
     e1c:	68fb      	ldr	r3, [r7, #12]
     e1e:	3301      	adds	r3, #1
     e20:	60fb      	str	r3, [r7, #12]
     e22:	68fa      	ldr	r2, [r7, #12]
     e24:	683b      	ldr	r3, [r7, #0]
     e26:	429a      	cmp	r2, r3
     e28:	dbec      	blt.n	e04 <mdb232_send+0x10>
     e2a:	46c0      	nop			; (mov r8, r8)
     e2c:	4b04      	ldr	r3, [pc, #16]	; (e40 <mdb232_send+0x4c>)
     e2e:	699b      	ldr	r3, [r3, #24]
     e30:	2208      	movs	r2, #8
     e32:	4013      	ands	r3, r2
     e34:	d1fa      	bne.n	e2c <mdb232_send+0x38>
     e36:	683b      	ldr	r3, [r7, #0]
     e38:	0018      	movs	r0, r3
     e3a:	46bd      	mov	sp, r7
     e3c:	b004      	add	sp, #16
     e3e:	bd80      	pop	{r7, pc}
     e40:	40030000 	.word	0x40030000

00000e44 <mdb232_read_inputregs>:
     e44:	b590      	push	{r4, r7, lr}
     e46:	b085      	sub	sp, #20
     e48:	af00      	add	r7, sp, #0
     e4a:	0004      	movs	r4, r0
     e4c:	0008      	movs	r0, r1
     e4e:	0011      	movs	r1, r2
     e50:	1dfb      	adds	r3, r7, #7
     e52:	1c22      	adds	r2, r4, #0
     e54:	701a      	strb	r2, [r3, #0]
     e56:	1d3b      	adds	r3, r7, #4
     e58:	1c02      	adds	r2, r0, #0
     e5a:	801a      	strh	r2, [r3, #0]
     e5c:	1cbb      	adds	r3, r7, #2
     e5e:	1c0a      	adds	r2, r1, #0
     e60:	801a      	strh	r2, [r3, #0]
     e62:	4b28      	ldr	r3, [pc, #160]	; (f04 <mdb232_read_inputregs+0xc0>)
     e64:	60fb      	str	r3, [r7, #12]
     e66:	68fb      	ldr	r3, [r7, #12]
     e68:	1c5a      	adds	r2, r3, #1
     e6a:	60fa      	str	r2, [r7, #12]
     e6c:	1dfa      	adds	r2, r7, #7
     e6e:	7812      	ldrb	r2, [r2, #0]
     e70:	701a      	strb	r2, [r3, #0]
     e72:	68fb      	ldr	r3, [r7, #12]
     e74:	1c5a      	adds	r2, r3, #1
     e76:	60fa      	str	r2, [r7, #12]
     e78:	2204      	movs	r2, #4
     e7a:	701a      	strb	r2, [r3, #0]
     e7c:	68fb      	ldr	r3, [r7, #12]
     e7e:	1c5a      	adds	r2, r3, #1
     e80:	60fa      	str	r2, [r7, #12]
     e82:	1d3a      	adds	r2, r7, #4
     e84:	8812      	ldrh	r2, [r2, #0]
     e86:	0a12      	lsrs	r2, r2, #8
     e88:	b292      	uxth	r2, r2
     e8a:	b2d2      	uxtb	r2, r2
     e8c:	701a      	strb	r2, [r3, #0]
     e8e:	68fb      	ldr	r3, [r7, #12]
     e90:	1c5a      	adds	r2, r3, #1
     e92:	60fa      	str	r2, [r7, #12]
     e94:	1d3a      	adds	r2, r7, #4
     e96:	8812      	ldrh	r2, [r2, #0]
     e98:	b2d2      	uxtb	r2, r2
     e9a:	701a      	strb	r2, [r3, #0]
     e9c:	68fb      	ldr	r3, [r7, #12]
     e9e:	1c5a      	adds	r2, r3, #1
     ea0:	60fa      	str	r2, [r7, #12]
     ea2:	1cba      	adds	r2, r7, #2
     ea4:	8812      	ldrh	r2, [r2, #0]
     ea6:	0a12      	lsrs	r2, r2, #8
     ea8:	b292      	uxth	r2, r2
     eaa:	b2d2      	uxtb	r2, r2
     eac:	701a      	strb	r2, [r3, #0]
     eae:	68fb      	ldr	r3, [r7, #12]
     eb0:	1c5a      	adds	r2, r3, #1
     eb2:	60fa      	str	r2, [r7, #12]
     eb4:	1cba      	adds	r2, r7, #2
     eb6:	8812      	ldrh	r2, [r2, #0]
     eb8:	b2d2      	uxtb	r2, r2
     eba:	701a      	strb	r2, [r3, #0]
     ebc:	230a      	movs	r3, #10
     ebe:	18fc      	adds	r4, r7, r3
     ec0:	4b10      	ldr	r3, [pc, #64]	; (f04 <mdb232_read_inputregs+0xc0>)
     ec2:	2106      	movs	r1, #6
     ec4:	0018      	movs	r0, r3
     ec6:	f002 f8ef 	bl	30a8 <crc16>
     eca:	0003      	movs	r3, r0
     ecc:	8023      	strh	r3, [r4, #0]
     ece:	68fb      	ldr	r3, [r7, #12]
     ed0:	1c5a      	adds	r2, r3, #1
     ed2:	60fa      	str	r2, [r7, #12]
     ed4:	220a      	movs	r2, #10
     ed6:	18ba      	adds	r2, r7, r2
     ed8:	8812      	ldrh	r2, [r2, #0]
     eda:	b2d2      	uxtb	r2, r2
     edc:	701a      	strb	r2, [r3, #0]
     ede:	68fb      	ldr	r3, [r7, #12]
     ee0:	1c5a      	adds	r2, r3, #1
     ee2:	60fa      	str	r2, [r7, #12]
     ee4:	220a      	movs	r2, #10
     ee6:	18ba      	adds	r2, r7, r2
     ee8:	8812      	ldrh	r2, [r2, #0]
     eea:	0a12      	lsrs	r2, r2, #8
     eec:	b292      	uxth	r2, r2
     eee:	b2d2      	uxtb	r2, r2
     ef0:	701a      	strb	r2, [r3, #0]
     ef2:	4b04      	ldr	r3, [pc, #16]	; (f04 <mdb232_read_inputregs+0xc0>)
     ef4:	2108      	movs	r1, #8
     ef6:	0018      	movs	r0, r3
     ef8:	f7ff ff7c 	bl	df4 <mdb232_send>
     efc:	46c0      	nop			; (mov r8, r8)
     efe:	46bd      	mov	sp, r7
     f00:	b005      	add	sp, #20
     f02:	bd90      	pop	{r4, r7, pc}
     f04:	200008e8 	.word	0x200008e8

00000f08 <mdb232_readregs>:
     f08:	b590      	push	{r4, r7, lr}
     f0a:	b085      	sub	sp, #20
     f0c:	af00      	add	r7, sp, #0
     f0e:	0004      	movs	r4, r0
     f10:	0008      	movs	r0, r1
     f12:	0011      	movs	r1, r2
     f14:	1dfb      	adds	r3, r7, #7
     f16:	1c22      	adds	r2, r4, #0
     f18:	701a      	strb	r2, [r3, #0]
     f1a:	1d3b      	adds	r3, r7, #4
     f1c:	1c02      	adds	r2, r0, #0
     f1e:	801a      	strh	r2, [r3, #0]
     f20:	1cbb      	adds	r3, r7, #2
     f22:	1c0a      	adds	r2, r1, #0
     f24:	801a      	strh	r2, [r3, #0]
     f26:	4b28      	ldr	r3, [pc, #160]	; (fc8 <mdb232_readregs+0xc0>)
     f28:	60fb      	str	r3, [r7, #12]
     f2a:	68fb      	ldr	r3, [r7, #12]
     f2c:	1c5a      	adds	r2, r3, #1
     f2e:	60fa      	str	r2, [r7, #12]
     f30:	1dfa      	adds	r2, r7, #7
     f32:	7812      	ldrb	r2, [r2, #0]
     f34:	701a      	strb	r2, [r3, #0]
     f36:	68fb      	ldr	r3, [r7, #12]
     f38:	1c5a      	adds	r2, r3, #1
     f3a:	60fa      	str	r2, [r7, #12]
     f3c:	2203      	movs	r2, #3
     f3e:	701a      	strb	r2, [r3, #0]
     f40:	68fb      	ldr	r3, [r7, #12]
     f42:	1c5a      	adds	r2, r3, #1
     f44:	60fa      	str	r2, [r7, #12]
     f46:	1d3a      	adds	r2, r7, #4
     f48:	8812      	ldrh	r2, [r2, #0]
     f4a:	0a12      	lsrs	r2, r2, #8
     f4c:	b292      	uxth	r2, r2
     f4e:	b2d2      	uxtb	r2, r2
     f50:	701a      	strb	r2, [r3, #0]
     f52:	68fb      	ldr	r3, [r7, #12]
     f54:	1c5a      	adds	r2, r3, #1
     f56:	60fa      	str	r2, [r7, #12]
     f58:	1d3a      	adds	r2, r7, #4
     f5a:	8812      	ldrh	r2, [r2, #0]
     f5c:	b2d2      	uxtb	r2, r2
     f5e:	701a      	strb	r2, [r3, #0]
     f60:	68fb      	ldr	r3, [r7, #12]
     f62:	1c5a      	adds	r2, r3, #1
     f64:	60fa      	str	r2, [r7, #12]
     f66:	1cba      	adds	r2, r7, #2
     f68:	8812      	ldrh	r2, [r2, #0]
     f6a:	0a12      	lsrs	r2, r2, #8
     f6c:	b292      	uxth	r2, r2
     f6e:	b2d2      	uxtb	r2, r2
     f70:	701a      	strb	r2, [r3, #0]
     f72:	68fb      	ldr	r3, [r7, #12]
     f74:	1c5a      	adds	r2, r3, #1
     f76:	60fa      	str	r2, [r7, #12]
     f78:	1cba      	adds	r2, r7, #2
     f7a:	8812      	ldrh	r2, [r2, #0]
     f7c:	b2d2      	uxtb	r2, r2
     f7e:	701a      	strb	r2, [r3, #0]
     f80:	230a      	movs	r3, #10
     f82:	18fc      	adds	r4, r7, r3
     f84:	4b10      	ldr	r3, [pc, #64]	; (fc8 <mdb232_readregs+0xc0>)
     f86:	2106      	movs	r1, #6
     f88:	0018      	movs	r0, r3
     f8a:	f002 f88d 	bl	30a8 <crc16>
     f8e:	0003      	movs	r3, r0
     f90:	8023      	strh	r3, [r4, #0]
     f92:	68fb      	ldr	r3, [r7, #12]
     f94:	1c5a      	adds	r2, r3, #1
     f96:	60fa      	str	r2, [r7, #12]
     f98:	220a      	movs	r2, #10
     f9a:	18ba      	adds	r2, r7, r2
     f9c:	8812      	ldrh	r2, [r2, #0]
     f9e:	b2d2      	uxtb	r2, r2
     fa0:	701a      	strb	r2, [r3, #0]
     fa2:	68fb      	ldr	r3, [r7, #12]
     fa4:	1c5a      	adds	r2, r3, #1
     fa6:	60fa      	str	r2, [r7, #12]
     fa8:	220a      	movs	r2, #10
     faa:	18ba      	adds	r2, r7, r2
     fac:	8812      	ldrh	r2, [r2, #0]
     fae:	0a12      	lsrs	r2, r2, #8
     fb0:	b292      	uxth	r2, r2
     fb2:	b2d2      	uxtb	r2, r2
     fb4:	701a      	strb	r2, [r3, #0]
     fb6:	4b04      	ldr	r3, [pc, #16]	; (fc8 <mdb232_readregs+0xc0>)
     fb8:	2108      	movs	r1, #8
     fba:	0018      	movs	r0, r3
     fbc:	f7ff ff1a 	bl	df4 <mdb232_send>
     fc0:	46c0      	nop			; (mov r8, r8)
     fc2:	46bd      	mov	sp, r7
     fc4:	b005      	add	sp, #20
     fc6:	bd90      	pop	{r4, r7, pc}
     fc8:	200008e8 	.word	0x200008e8

00000fcc <mdb232_bikm_get_torque>:
     fcc:	b580      	push	{r7, lr}
     fce:	b084      	sub	sp, #16
     fd0:	af00      	add	r7, sp, #0
     fd2:	4b27      	ldr	r3, [pc, #156]	; (1070 <mdb232_bikm_get_torque+0xa4>)
     fd4:	60fb      	str	r3, [r7, #12]
     fd6:	2006      	movs	r0, #6
     fd8:	f7ff feba 	bl	d50 <__NVIC_DisableIRQ>
     fdc:	4b25      	ldr	r3, [pc, #148]	; (1074 <mdb232_bikm_get_torque+0xa8>)
     fde:	681b      	ldr	r3, [r3, #0]
     fe0:	2b00      	cmp	r3, #0
     fe2:	d03c      	beq.n	105e <mdb232_bikm_get_torque+0x92>
     fe4:	68fb      	ldr	r3, [r7, #12]
     fe6:	1c5a      	adds	r2, r3, #1
     fe8:	60fa      	str	r2, [r7, #12]
     fea:	781b      	ldrb	r3, [r3, #0]
     fec:	041b      	lsls	r3, r3, #16
     fee:	60bb      	str	r3, [r7, #8]
     ff0:	68fb      	ldr	r3, [r7, #12]
     ff2:	1c5a      	adds	r2, r3, #1
     ff4:	60fa      	str	r2, [r7, #12]
     ff6:	781b      	ldrb	r3, [r3, #0]
     ff8:	061b      	lsls	r3, r3, #24
     ffa:	001a      	movs	r2, r3
     ffc:	68bb      	ldr	r3, [r7, #8]
     ffe:	4313      	orrs	r3, r2
    1000:	60bb      	str	r3, [r7, #8]
    1002:	68fb      	ldr	r3, [r7, #12]
    1004:	1c5a      	adds	r2, r3, #1
    1006:	60fa      	str	r2, [r7, #12]
    1008:	781b      	ldrb	r3, [r3, #0]
    100a:	001a      	movs	r2, r3
    100c:	68bb      	ldr	r3, [r7, #8]
    100e:	4313      	orrs	r3, r2
    1010:	60bb      	str	r3, [r7, #8]
    1012:	68fb      	ldr	r3, [r7, #12]
    1014:	781b      	ldrb	r3, [r3, #0]
    1016:	021b      	lsls	r3, r3, #8
    1018:	001a      	movs	r2, r3
    101a:	68bb      	ldr	r3, [r7, #8]
    101c:	4313      	orrs	r3, r2
    101e:	60bb      	str	r3, [r7, #8]
    1020:	2006      	movs	r0, #6
    1022:	f7ff fe7b 	bl	d1c <__NVIC_EnableIRQ>
    1026:	68bb      	ldr	r3, [r7, #8]
    1028:	0ddb      	lsrs	r3, r3, #23
    102a:	22ff      	movs	r2, #255	; 0xff
    102c:	4013      	ands	r3, r2
    102e:	3b7f      	subs	r3, #127	; 0x7f
    1030:	607b      	str	r3, [r7, #4]
    1032:	68bb      	ldr	r3, [r7, #8]
    1034:	025b      	lsls	r3, r3, #9
    1036:	0a5b      	lsrs	r3, r3, #9
    1038:	2280      	movs	r2, #128	; 0x80
    103a:	0412      	lsls	r2, r2, #16
    103c:	4313      	orrs	r3, r2
    103e:	603b      	str	r3, [r7, #0]
    1040:	687b      	ldr	r3, [r7, #4]
    1042:	220e      	movs	r2, #14
    1044:	1ad3      	subs	r3, r2, r3
    1046:	2201      	movs	r2, #1
    1048:	409a      	lsls	r2, r3
    104a:	0013      	movs	r3, r2
    104c:	001a      	movs	r2, r3
    104e:	683b      	ldr	r3, [r7, #0]
    1050:	18d2      	adds	r2, r2, r3
    1052:	687b      	ldr	r3, [r7, #4]
    1054:	210f      	movs	r1, #15
    1056:	1acb      	subs	r3, r1, r3
    1058:	40da      	lsrs	r2, r3
    105a:	0013      	movs	r3, r2
    105c:	e003      	b.n	1066 <mdb232_bikm_get_torque+0x9a>
    105e:	2006      	movs	r0, #6
    1060:	f7ff fe5c 	bl	d1c <__NVIC_EnableIRQ>
    1064:	2300      	movs	r3, #0
    1066:	0018      	movs	r0, r3
    1068:	46bd      	mov	sp, r7
    106a:	b004      	add	sp, #16
    106c:	bd80      	pop	{r7, pc}
    106e:	46c0      	nop			; (mov r8, r8)
    1070:	200008db 	.word	0x200008db
    1074:	200008f8 	.word	0x200008f8

00001078 <UART1_Handler>:
    1078:	b580      	push	{r7, lr}
    107a:	b082      	sub	sp, #8
    107c:	af00      	add	r7, sp, #0
    107e:	4b16      	ldr	r3, [pc, #88]	; (10d8 <UART1_Handler+0x60>)
    1080:	2200      	movs	r2, #0
    1082:	601a      	str	r2, [r3, #0]
    1084:	4b15      	ldr	r3, [pc, #84]	; (10dc <UART1_Handler+0x64>)
    1086:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1088:	2240      	movs	r2, #64	; 0x40
    108a:	4013      	ands	r3, r2
    108c:	d016      	beq.n	10bc <UART1_Handler+0x44>
    108e:	4b14      	ldr	r3, [pc, #80]	; (10e0 <UART1_Handler+0x68>)
    1090:	603b      	str	r3, [r7, #0]
    1092:	2300      	movs	r3, #0
    1094:	607b      	str	r3, [r7, #4]
    1096:	e009      	b.n	10ac <UART1_Handler+0x34>
    1098:	683b      	ldr	r3, [r7, #0]
    109a:	1c5a      	adds	r2, r3, #1
    109c:	603a      	str	r2, [r7, #0]
    109e:	4a0f      	ldr	r2, [pc, #60]	; (10dc <UART1_Handler+0x64>)
    10a0:	6812      	ldr	r2, [r2, #0]
    10a2:	b2d2      	uxtb	r2, r2
    10a4:	701a      	strb	r2, [r3, #0]
    10a6:	687b      	ldr	r3, [r7, #4]
    10a8:	3301      	adds	r3, #1
    10aa:	607b      	str	r3, [r7, #4]
    10ac:	687b      	ldr	r3, [r7, #4]
    10ae:	2b0f      	cmp	r3, #15
    10b0:	dc04      	bgt.n	10bc <UART1_Handler+0x44>
    10b2:	4b0a      	ldr	r3, [pc, #40]	; (10dc <UART1_Handler+0x64>)
    10b4:	699b      	ldr	r3, [r3, #24]
    10b6:	2210      	movs	r2, #16
    10b8:	4013      	ands	r3, r2
    10ba:	d0ed      	beq.n	1098 <UART1_Handler+0x20>
    10bc:	4b06      	ldr	r3, [pc, #24]	; (10d8 <UART1_Handler+0x60>)
    10be:	687a      	ldr	r2, [r7, #4]
    10c0:	601a      	str	r2, [r3, #0]
    10c2:	4b08      	ldr	r3, [pc, #32]	; (10e4 <UART1_Handler+0x6c>)
    10c4:	681b      	ldr	r3, [r3, #0]
    10c6:	2102      	movs	r1, #2
    10c8:	0018      	movs	r0, r3
    10ca:	f005 f8cd 	bl	6268 <osSignalSet>
    10ce:	46c0      	nop			; (mov r8, r8)
    10d0:	46bd      	mov	sp, r7
    10d2:	b002      	add	sp, #8
    10d4:	bd80      	pop	{r7, pc}
    10d6:	46c0      	nop			; (mov r8, r8)
    10d8:	200008f8 	.word	0x200008f8
    10dc:	40030000 	.word	0x40030000
    10e0:	200008d8 	.word	0x200008d8
    10e4:	20000860 	.word	0x20000860

000010e8 <xputc>:
    10e8:	b580      	push	{r7, lr}
    10ea:	b082      	sub	sp, #8
    10ec:	af00      	add	r7, sp, #0
    10ee:	0002      	movs	r2, r0
    10f0:	1dfb      	adds	r3, r7, #7
    10f2:	701a      	strb	r2, [r3, #0]
    10f4:	1dfb      	adds	r3, r7, #7
    10f6:	781b      	ldrb	r3, [r3, #0]
    10f8:	2b0a      	cmp	r3, #10
    10fa:	d102      	bne.n	1102 <xputc+0x1a>
    10fc:	200d      	movs	r0, #13
    10fe:	f7ff fff3 	bl	10e8 <xputc>
    1102:	4b0d      	ldr	r3, [pc, #52]	; (1138 <xputc+0x50>)
    1104:	681b      	ldr	r3, [r3, #0]
    1106:	2b00      	cmp	r3, #0
    1108:	d008      	beq.n	111c <xputc+0x34>
    110a:	4b0b      	ldr	r3, [pc, #44]	; (1138 <xputc+0x50>)
    110c:	681b      	ldr	r3, [r3, #0]
    110e:	1c59      	adds	r1, r3, #1
    1110:	4a09      	ldr	r2, [pc, #36]	; (1138 <xputc+0x50>)
    1112:	6011      	str	r1, [r2, #0]
    1114:	1dfa      	adds	r2, r7, #7
    1116:	7812      	ldrb	r2, [r2, #0]
    1118:	701a      	strb	r2, [r3, #0]
    111a:	e009      	b.n	1130 <xputc+0x48>
    111c:	4b07      	ldr	r3, [pc, #28]	; (113c <xputc+0x54>)
    111e:	681b      	ldr	r3, [r3, #0]
    1120:	2b00      	cmp	r3, #0
    1122:	d005      	beq.n	1130 <xputc+0x48>
    1124:	4b05      	ldr	r3, [pc, #20]	; (113c <xputc+0x54>)
    1126:	681b      	ldr	r3, [r3, #0]
    1128:	1dfa      	adds	r2, r7, #7
    112a:	7812      	ldrb	r2, [r2, #0]
    112c:	0010      	movs	r0, r2
    112e:	4798      	blx	r3
    1130:	46bd      	mov	sp, r7
    1132:	b002      	add	sp, #8
    1134:	bd80      	pop	{r7, pc}
    1136:	46c0      	nop			; (mov r8, r8)
    1138:	20000900 	.word	0x20000900
    113c:	200008fc 	.word	0x200008fc

00001140 <xputs>:
    1140:	b580      	push	{r7, lr}
    1142:	b082      	sub	sp, #8
    1144:	af00      	add	r7, sp, #0
    1146:	6078      	str	r0, [r7, #4]
    1148:	e006      	b.n	1158 <xputs+0x18>
    114a:	687b      	ldr	r3, [r7, #4]
    114c:	1c5a      	adds	r2, r3, #1
    114e:	607a      	str	r2, [r7, #4]
    1150:	781b      	ldrb	r3, [r3, #0]
    1152:	0018      	movs	r0, r3
    1154:	f7ff ffc8 	bl	10e8 <xputc>
    1158:	687b      	ldr	r3, [r7, #4]
    115a:	781b      	ldrb	r3, [r3, #0]
    115c:	2b00      	cmp	r3, #0
    115e:	d1f4      	bne.n	114a <xputs+0xa>
    1160:	46c0      	nop			; (mov r8, r8)
    1162:	46bd      	mov	sp, r7
    1164:	b002      	add	sp, #8
    1166:	bd80      	pop	{r7, pc}

00001168 <xfputs>:
    1168:	b580      	push	{r7, lr}
    116a:	b084      	sub	sp, #16
    116c:	af00      	add	r7, sp, #0
    116e:	6078      	str	r0, [r7, #4]
    1170:	6039      	str	r1, [r7, #0]
    1172:	4b0c      	ldr	r3, [pc, #48]	; (11a4 <xfputs+0x3c>)
    1174:	681b      	ldr	r3, [r3, #0]
    1176:	60fb      	str	r3, [r7, #12]
    1178:	4b0a      	ldr	r3, [pc, #40]	; (11a4 <xfputs+0x3c>)
    117a:	687a      	ldr	r2, [r7, #4]
    117c:	601a      	str	r2, [r3, #0]
    117e:	e006      	b.n	118e <xfputs+0x26>
    1180:	683b      	ldr	r3, [r7, #0]
    1182:	1c5a      	adds	r2, r3, #1
    1184:	603a      	str	r2, [r7, #0]
    1186:	781b      	ldrb	r3, [r3, #0]
    1188:	0018      	movs	r0, r3
    118a:	f7ff ffad 	bl	10e8 <xputc>
    118e:	683b      	ldr	r3, [r7, #0]
    1190:	781b      	ldrb	r3, [r3, #0]
    1192:	2b00      	cmp	r3, #0
    1194:	d1f4      	bne.n	1180 <xfputs+0x18>
    1196:	4b03      	ldr	r3, [pc, #12]	; (11a4 <xfputs+0x3c>)
    1198:	68fa      	ldr	r2, [r7, #12]
    119a:	601a      	str	r2, [r3, #0]
    119c:	46c0      	nop			; (mov r8, r8)
    119e:	46bd      	mov	sp, r7
    11a0:	b004      	add	sp, #16
    11a2:	bd80      	pop	{r7, pc}
    11a4:	200008fc 	.word	0x200008fc

000011a8 <xvprintf>:
    11a8:	b580      	push	{r7, lr}
    11aa:	b08e      	sub	sp, #56	; 0x38
    11ac:	af00      	add	r7, sp, #0
    11ae:	6078      	str	r0, [r7, #4]
    11b0:	6039      	str	r1, [r7, #0]
    11b2:	687b      	ldr	r3, [r7, #4]
    11b4:	1c5a      	adds	r2, r3, #1
    11b6:	607a      	str	r2, [r7, #4]
    11b8:	221f      	movs	r2, #31
    11ba:	18ba      	adds	r2, r7, r2
    11bc:	781b      	ldrb	r3, [r3, #0]
    11be:	7013      	strb	r3, [r2, #0]
    11c0:	231f      	movs	r3, #31
    11c2:	18fb      	adds	r3, r7, r3
    11c4:	781b      	ldrb	r3, [r3, #0]
    11c6:	2b00      	cmp	r3, #0
    11c8:	d100      	bne.n	11cc <xvprintf+0x24>
    11ca:	e172      	b.n	14b2 <xvprintf+0x30a>
    11cc:	231f      	movs	r3, #31
    11ce:	18fb      	adds	r3, r7, r3
    11d0:	781b      	ldrb	r3, [r3, #0]
    11d2:	2b25      	cmp	r3, #37	; 0x25
    11d4:	d006      	beq.n	11e4 <xvprintf+0x3c>
    11d6:	231f      	movs	r3, #31
    11d8:	18fb      	adds	r3, r7, r3
    11da:	781b      	ldrb	r3, [r3, #0]
    11dc:	0018      	movs	r0, r3
    11de:	f7ff ff83 	bl	10e8 <xputc>
    11e2:	e165      	b.n	14b0 <xvprintf+0x308>
    11e4:	2300      	movs	r3, #0
    11e6:	627b      	str	r3, [r7, #36]	; 0x24
    11e8:	687b      	ldr	r3, [r7, #4]
    11ea:	1c5a      	adds	r2, r3, #1
    11ec:	607a      	str	r2, [r7, #4]
    11ee:	221f      	movs	r2, #31
    11f0:	18ba      	adds	r2, r7, r2
    11f2:	781b      	ldrb	r3, [r3, #0]
    11f4:	7013      	strb	r3, [r2, #0]
    11f6:	231f      	movs	r3, #31
    11f8:	18fb      	adds	r3, r7, r3
    11fa:	781b      	ldrb	r3, [r3, #0]
    11fc:	2b30      	cmp	r3, #48	; 0x30
    11fe:	d109      	bne.n	1214 <xvprintf+0x6c>
    1200:	2301      	movs	r3, #1
    1202:	627b      	str	r3, [r7, #36]	; 0x24
    1204:	687b      	ldr	r3, [r7, #4]
    1206:	1c5a      	adds	r2, r3, #1
    1208:	607a      	str	r2, [r7, #4]
    120a:	221f      	movs	r2, #31
    120c:	18ba      	adds	r2, r7, r2
    120e:	781b      	ldrb	r3, [r3, #0]
    1210:	7013      	strb	r3, [r2, #0]
    1212:	e00d      	b.n	1230 <xvprintf+0x88>
    1214:	231f      	movs	r3, #31
    1216:	18fb      	adds	r3, r7, r3
    1218:	781b      	ldrb	r3, [r3, #0]
    121a:	2b2d      	cmp	r3, #45	; 0x2d
    121c:	d108      	bne.n	1230 <xvprintf+0x88>
    121e:	2302      	movs	r3, #2
    1220:	627b      	str	r3, [r7, #36]	; 0x24
    1222:	687b      	ldr	r3, [r7, #4]
    1224:	1c5a      	adds	r2, r3, #1
    1226:	607a      	str	r2, [r7, #4]
    1228:	221f      	movs	r2, #31
    122a:	18ba      	adds	r2, r7, r2
    122c:	781b      	ldrb	r3, [r3, #0]
    122e:	7013      	strb	r3, [r2, #0]
    1230:	2300      	movs	r3, #0
    1232:	62bb      	str	r3, [r7, #40]	; 0x28
    1234:	e012      	b.n	125c <xvprintf+0xb4>
    1236:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1238:	0013      	movs	r3, r2
    123a:	009b      	lsls	r3, r3, #2
    123c:	189b      	adds	r3, r3, r2
    123e:	005b      	lsls	r3, r3, #1
    1240:	001a      	movs	r2, r3
    1242:	231f      	movs	r3, #31
    1244:	18fb      	adds	r3, r7, r3
    1246:	781b      	ldrb	r3, [r3, #0]
    1248:	18d3      	adds	r3, r2, r3
    124a:	3b30      	subs	r3, #48	; 0x30
    124c:	62bb      	str	r3, [r7, #40]	; 0x28
    124e:	687b      	ldr	r3, [r7, #4]
    1250:	1c5a      	adds	r2, r3, #1
    1252:	607a      	str	r2, [r7, #4]
    1254:	221f      	movs	r2, #31
    1256:	18ba      	adds	r2, r7, r2
    1258:	781b      	ldrb	r3, [r3, #0]
    125a:	7013      	strb	r3, [r2, #0]
    125c:	231f      	movs	r3, #31
    125e:	18fb      	adds	r3, r7, r3
    1260:	781b      	ldrb	r3, [r3, #0]
    1262:	2b2f      	cmp	r3, #47	; 0x2f
    1264:	d904      	bls.n	1270 <xvprintf+0xc8>
    1266:	231f      	movs	r3, #31
    1268:	18fb      	adds	r3, r7, r3
    126a:	781b      	ldrb	r3, [r3, #0]
    126c:	2b39      	cmp	r3, #57	; 0x39
    126e:	d9e2      	bls.n	1236 <xvprintf+0x8e>
    1270:	231f      	movs	r3, #31
    1272:	18fb      	adds	r3, r7, r3
    1274:	781b      	ldrb	r3, [r3, #0]
    1276:	2b6c      	cmp	r3, #108	; 0x6c
    1278:	d004      	beq.n	1284 <xvprintf+0xdc>
    127a:	231f      	movs	r3, #31
    127c:	18fb      	adds	r3, r7, r3
    127e:	781b      	ldrb	r3, [r3, #0]
    1280:	2b4c      	cmp	r3, #76	; 0x4c
    1282:	d10a      	bne.n	129a <xvprintf+0xf2>
    1284:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1286:	2204      	movs	r2, #4
    1288:	4313      	orrs	r3, r2
    128a:	627b      	str	r3, [r7, #36]	; 0x24
    128c:	687b      	ldr	r3, [r7, #4]
    128e:	1c5a      	adds	r2, r3, #1
    1290:	607a      	str	r2, [r7, #4]
    1292:	221f      	movs	r2, #31
    1294:	18ba      	adds	r2, r7, r2
    1296:	781b      	ldrb	r3, [r3, #0]
    1298:	7013      	strb	r3, [r2, #0]
    129a:	231f      	movs	r3, #31
    129c:	18fb      	adds	r3, r7, r3
    129e:	781b      	ldrb	r3, [r3, #0]
    12a0:	2b00      	cmp	r3, #0
    12a2:	d100      	bne.n	12a6 <xvprintf+0xfe>
    12a4:	e107      	b.n	14b6 <xvprintf+0x30e>
    12a6:	231e      	movs	r3, #30
    12a8:	18fb      	adds	r3, r7, r3
    12aa:	221f      	movs	r2, #31
    12ac:	18ba      	adds	r2, r7, r2
    12ae:	7812      	ldrb	r2, [r2, #0]
    12b0:	701a      	strb	r2, [r3, #0]
    12b2:	231e      	movs	r3, #30
    12b4:	18fb      	adds	r3, r7, r3
    12b6:	781b      	ldrb	r3, [r3, #0]
    12b8:	2b60      	cmp	r3, #96	; 0x60
    12ba:	d906      	bls.n	12ca <xvprintf+0x122>
    12bc:	231e      	movs	r3, #30
    12be:	18fb      	adds	r3, r7, r3
    12c0:	221e      	movs	r2, #30
    12c2:	18ba      	adds	r2, r7, r2
    12c4:	7812      	ldrb	r2, [r2, #0]
    12c6:	3a20      	subs	r2, #32
    12c8:	701a      	strb	r2, [r3, #0]
    12ca:	231e      	movs	r3, #30
    12cc:	18fb      	adds	r3, r7, r3
    12ce:	781b      	ldrb	r3, [r3, #0]
    12d0:	3b42      	subs	r3, #66	; 0x42
    12d2:	2b16      	cmp	r3, #22
    12d4:	d847      	bhi.n	1366 <xvprintf+0x1be>
    12d6:	009a      	lsls	r2, r3, #2
    12d8:	4b79      	ldr	r3, [pc, #484]	; (14c0 <xvprintf+0x318>)
    12da:	18d3      	adds	r3, r2, r3
    12dc:	681b      	ldr	r3, [r3, #0]
    12de:	469f      	mov	pc, r3
    12e0:	683b      	ldr	r3, [r7, #0]
    12e2:	1d1a      	adds	r2, r3, #4
    12e4:	603a      	str	r2, [r7, #0]
    12e6:	681b      	ldr	r3, [r3, #0]
    12e8:	61bb      	str	r3, [r7, #24]
    12ea:	2300      	movs	r3, #0
    12ec:	62fb      	str	r3, [r7, #44]	; 0x2c
    12ee:	e002      	b.n	12f6 <xvprintf+0x14e>
    12f0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12f2:	3301      	adds	r3, #1
    12f4:	62fb      	str	r3, [r7, #44]	; 0x2c
    12f6:	69ba      	ldr	r2, [r7, #24]
    12f8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12fa:	18d3      	adds	r3, r2, r3
    12fc:	781b      	ldrb	r3, [r3, #0]
    12fe:	2b00      	cmp	r3, #0
    1300:	d1f6      	bne.n	12f0 <xvprintf+0x148>
    1302:	e002      	b.n	130a <xvprintf+0x162>
    1304:	2020      	movs	r0, #32
    1306:	f7ff feef 	bl	10e8 <xputc>
    130a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    130c:	2202      	movs	r2, #2
    130e:	4013      	ands	r3, r2
    1310:	d105      	bne.n	131e <xvprintf+0x176>
    1312:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1314:	1c5a      	adds	r2, r3, #1
    1316:	62fa      	str	r2, [r7, #44]	; 0x2c
    1318:	6aba      	ldr	r2, [r7, #40]	; 0x28
    131a:	4293      	cmp	r3, r2
    131c:	d3f2      	bcc.n	1304 <xvprintf+0x15c>
    131e:	69bb      	ldr	r3, [r7, #24]
    1320:	0018      	movs	r0, r3
    1322:	f7ff ff0d 	bl	1140 <xputs>
    1326:	e002      	b.n	132e <xvprintf+0x186>
    1328:	2020      	movs	r0, #32
    132a:	f7ff fedd 	bl	10e8 <xputc>
    132e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1330:	1c5a      	adds	r2, r3, #1
    1332:	62fa      	str	r2, [r7, #44]	; 0x2c
    1334:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1336:	4293      	cmp	r3, r2
    1338:	d3f6      	bcc.n	1328 <xvprintf+0x180>
    133a:	e0b9      	b.n	14b0 <xvprintf+0x308>
    133c:	683b      	ldr	r3, [r7, #0]
    133e:	1d1a      	adds	r2, r3, #4
    1340:	603a      	str	r2, [r7, #0]
    1342:	681b      	ldr	r3, [r3, #0]
    1344:	b2db      	uxtb	r3, r3
    1346:	0018      	movs	r0, r3
    1348:	f7ff fece 	bl	10e8 <xputc>
    134c:	e0b0      	b.n	14b0 <xvprintf+0x308>
    134e:	2302      	movs	r3, #2
    1350:	637b      	str	r3, [r7, #52]	; 0x34
    1352:	e00f      	b.n	1374 <xvprintf+0x1cc>
    1354:	2308      	movs	r3, #8
    1356:	637b      	str	r3, [r7, #52]	; 0x34
    1358:	e00c      	b.n	1374 <xvprintf+0x1cc>
    135a:	230a      	movs	r3, #10
    135c:	637b      	str	r3, [r7, #52]	; 0x34
    135e:	e009      	b.n	1374 <xvprintf+0x1cc>
    1360:	2310      	movs	r3, #16
    1362:	637b      	str	r3, [r7, #52]	; 0x34
    1364:	e006      	b.n	1374 <xvprintf+0x1cc>
    1366:	231f      	movs	r3, #31
    1368:	18fb      	adds	r3, r7, r3
    136a:	781b      	ldrb	r3, [r3, #0]
    136c:	0018      	movs	r0, r3
    136e:	f7ff febb 	bl	10e8 <xputc>
    1372:	e09d      	b.n	14b0 <xvprintf+0x308>
    1374:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1376:	2204      	movs	r2, #4
    1378:	4013      	ands	r3, r2
    137a:	d004      	beq.n	1386 <xvprintf+0x1de>
    137c:	683b      	ldr	r3, [r7, #0]
    137e:	1d1a      	adds	r2, r3, #4
    1380:	603a      	str	r2, [r7, #0]
    1382:	681b      	ldr	r3, [r3, #0]
    1384:	e00d      	b.n	13a2 <xvprintf+0x1fa>
    1386:	231e      	movs	r3, #30
    1388:	18fb      	adds	r3, r7, r3
    138a:	781b      	ldrb	r3, [r3, #0]
    138c:	2b44      	cmp	r3, #68	; 0x44
    138e:	d104      	bne.n	139a <xvprintf+0x1f2>
    1390:	683b      	ldr	r3, [r7, #0]
    1392:	1d1a      	adds	r2, r3, #4
    1394:	603a      	str	r2, [r7, #0]
    1396:	681b      	ldr	r3, [r3, #0]
    1398:	e003      	b.n	13a2 <xvprintf+0x1fa>
    139a:	683b      	ldr	r3, [r7, #0]
    139c:	1d1a      	adds	r2, r3, #4
    139e:	603a      	str	r2, [r7, #0]
    13a0:	681b      	ldr	r3, [r3, #0]
    13a2:	623b      	str	r3, [r7, #32]
    13a4:	231e      	movs	r3, #30
    13a6:	18fb      	adds	r3, r7, r3
    13a8:	781b      	ldrb	r3, [r3, #0]
    13aa:	2b44      	cmp	r3, #68	; 0x44
    13ac:	d109      	bne.n	13c2 <xvprintf+0x21a>
    13ae:	6a3b      	ldr	r3, [r7, #32]
    13b0:	2b00      	cmp	r3, #0
    13b2:	da06      	bge.n	13c2 <xvprintf+0x21a>
    13b4:	6a3b      	ldr	r3, [r7, #32]
    13b6:	425b      	negs	r3, r3
    13b8:	623b      	str	r3, [r7, #32]
    13ba:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13bc:	2208      	movs	r2, #8
    13be:	4313      	orrs	r3, r2
    13c0:	627b      	str	r3, [r7, #36]	; 0x24
    13c2:	2300      	movs	r3, #0
    13c4:	633b      	str	r3, [r7, #48]	; 0x30
    13c6:	6a3b      	ldr	r3, [r7, #32]
    13c8:	6b79      	ldr	r1, [r7, #52]	; 0x34
    13ca:	0018      	movs	r0, r3
    13cc:	f003 f874 	bl	44b8 <__aeabi_uidivmod>
    13d0:	000b      	movs	r3, r1
    13d2:	001a      	movs	r2, r3
    13d4:	231e      	movs	r3, #30
    13d6:	18fb      	adds	r3, r7, r3
    13d8:	701a      	strb	r2, [r3, #0]
    13da:	6b79      	ldr	r1, [r7, #52]	; 0x34
    13dc:	6a38      	ldr	r0, [r7, #32]
    13de:	f002 ffe5 	bl	43ac <__aeabi_uidiv>
    13e2:	0003      	movs	r3, r0
    13e4:	623b      	str	r3, [r7, #32]
    13e6:	231e      	movs	r3, #30
    13e8:	18fb      	adds	r3, r7, r3
    13ea:	781b      	ldrb	r3, [r3, #0]
    13ec:	2b09      	cmp	r3, #9
    13ee:	d90e      	bls.n	140e <xvprintf+0x266>
    13f0:	231f      	movs	r3, #31
    13f2:	18fb      	adds	r3, r7, r3
    13f4:	781b      	ldrb	r3, [r3, #0]
    13f6:	2b78      	cmp	r3, #120	; 0x78
    13f8:	d101      	bne.n	13fe <xvprintf+0x256>
    13fa:	2327      	movs	r3, #39	; 0x27
    13fc:	e000      	b.n	1400 <xvprintf+0x258>
    13fe:	2307      	movs	r3, #7
    1400:	221e      	movs	r2, #30
    1402:	18ba      	adds	r2, r7, r2
    1404:	211e      	movs	r1, #30
    1406:	1879      	adds	r1, r7, r1
    1408:	7809      	ldrb	r1, [r1, #0]
    140a:	185b      	adds	r3, r3, r1
    140c:	7013      	strb	r3, [r2, #0]
    140e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1410:	1c5a      	adds	r2, r3, #1
    1412:	633a      	str	r2, [r7, #48]	; 0x30
    1414:	221e      	movs	r2, #30
    1416:	18ba      	adds	r2, r7, r2
    1418:	7812      	ldrb	r2, [r2, #0]
    141a:	3230      	adds	r2, #48	; 0x30
    141c:	b2d1      	uxtb	r1, r2
    141e:	2208      	movs	r2, #8
    1420:	18ba      	adds	r2, r7, r2
    1422:	54d1      	strb	r1, [r2, r3]
    1424:	6a3b      	ldr	r3, [r7, #32]
    1426:	2b00      	cmp	r3, #0
    1428:	d002      	beq.n	1430 <xvprintf+0x288>
    142a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    142c:	2b0f      	cmp	r3, #15
    142e:	d9ca      	bls.n	13c6 <xvprintf+0x21e>
    1430:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1432:	2208      	movs	r2, #8
    1434:	4013      	ands	r3, r2
    1436:	d006      	beq.n	1446 <xvprintf+0x29e>
    1438:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    143a:	1c5a      	adds	r2, r3, #1
    143c:	633a      	str	r2, [r7, #48]	; 0x30
    143e:	2208      	movs	r2, #8
    1440:	18ba      	adds	r2, r7, r2
    1442:	212d      	movs	r1, #45	; 0x2d
    1444:	54d1      	strb	r1, [r2, r3]
    1446:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1448:	62fb      	str	r3, [r7, #44]	; 0x2c
    144a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    144c:	2201      	movs	r2, #1
    144e:	4013      	ands	r3, r2
    1450:	d001      	beq.n	1456 <xvprintf+0x2ae>
    1452:	2230      	movs	r2, #48	; 0x30
    1454:	e000      	b.n	1458 <xvprintf+0x2b0>
    1456:	2220      	movs	r2, #32
    1458:	231e      	movs	r3, #30
    145a:	18fb      	adds	r3, r7, r3
    145c:	701a      	strb	r2, [r3, #0]
    145e:	e005      	b.n	146c <xvprintf+0x2c4>
    1460:	231e      	movs	r3, #30
    1462:	18fb      	adds	r3, r7, r3
    1464:	781b      	ldrb	r3, [r3, #0]
    1466:	0018      	movs	r0, r3
    1468:	f7ff fe3e 	bl	10e8 <xputc>
    146c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    146e:	2202      	movs	r2, #2
    1470:	4013      	ands	r3, r2
    1472:	d105      	bne.n	1480 <xvprintf+0x2d8>
    1474:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1476:	1c5a      	adds	r2, r3, #1
    1478:	62fa      	str	r2, [r7, #44]	; 0x2c
    147a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    147c:	4293      	cmp	r3, r2
    147e:	d3ef      	bcc.n	1460 <xvprintf+0x2b8>
    1480:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1482:	3b01      	subs	r3, #1
    1484:	633b      	str	r3, [r7, #48]	; 0x30
    1486:	2308      	movs	r3, #8
    1488:	18fa      	adds	r2, r7, r3
    148a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    148c:	18d3      	adds	r3, r2, r3
    148e:	781b      	ldrb	r3, [r3, #0]
    1490:	0018      	movs	r0, r3
    1492:	f7ff fe29 	bl	10e8 <xputc>
    1496:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1498:	2b00      	cmp	r3, #0
    149a:	d1f1      	bne.n	1480 <xvprintf+0x2d8>
    149c:	e002      	b.n	14a4 <xvprintf+0x2fc>
    149e:	2020      	movs	r0, #32
    14a0:	f7ff fe22 	bl	10e8 <xputc>
    14a4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14a6:	1c5a      	adds	r2, r3, #1
    14a8:	62fa      	str	r2, [r7, #44]	; 0x2c
    14aa:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14ac:	4293      	cmp	r3, r2
    14ae:	d3f6      	bcc.n	149e <xvprintf+0x2f6>
    14b0:	e67f      	b.n	11b2 <xvprintf+0xa>
    14b2:	46c0      	nop			; (mov r8, r8)
    14b4:	e000      	b.n	14b8 <xvprintf+0x310>
    14b6:	46c0      	nop			; (mov r8, r8)
    14b8:	46c0      	nop			; (mov r8, r8)
    14ba:	46bd      	mov	sp, r7
    14bc:	b00e      	add	sp, #56	; 0x38
    14be:	bd80      	pop	{r7, pc}
    14c0:	00008598 	.word	0x00008598

000014c4 <xprintf>:
    14c4:	b40f      	push	{r0, r1, r2, r3}
    14c6:	b580      	push	{r7, lr}
    14c8:	b082      	sub	sp, #8
    14ca:	af00      	add	r7, sp, #0
    14cc:	2314      	movs	r3, #20
    14ce:	18fb      	adds	r3, r7, r3
    14d0:	607b      	str	r3, [r7, #4]
    14d2:	687a      	ldr	r2, [r7, #4]
    14d4:	693b      	ldr	r3, [r7, #16]
    14d6:	0011      	movs	r1, r2
    14d8:	0018      	movs	r0, r3
    14da:	f7ff fe65 	bl	11a8 <xvprintf>
    14de:	46c0      	nop			; (mov r8, r8)
    14e0:	46bd      	mov	sp, r7
    14e2:	b002      	add	sp, #8
    14e4:	bc80      	pop	{r7}
    14e6:	bc08      	pop	{r3}
    14e8:	b004      	add	sp, #16
    14ea:	4718      	bx	r3

000014ec <xsprintf>:
    14ec:	b40e      	push	{r1, r2, r3}
    14ee:	b580      	push	{r7, lr}
    14f0:	b085      	sub	sp, #20
    14f2:	af00      	add	r7, sp, #0
    14f4:	6078      	str	r0, [r7, #4]
    14f6:	4b0d      	ldr	r3, [pc, #52]	; (152c <xsprintf+0x40>)
    14f8:	687a      	ldr	r2, [r7, #4]
    14fa:	601a      	str	r2, [r3, #0]
    14fc:	2320      	movs	r3, #32
    14fe:	18fb      	adds	r3, r7, r3
    1500:	60fb      	str	r3, [r7, #12]
    1502:	68fa      	ldr	r2, [r7, #12]
    1504:	69fb      	ldr	r3, [r7, #28]
    1506:	0011      	movs	r1, r2
    1508:	0018      	movs	r0, r3
    150a:	f7ff fe4d 	bl	11a8 <xvprintf>
    150e:	4b07      	ldr	r3, [pc, #28]	; (152c <xsprintf+0x40>)
    1510:	681b      	ldr	r3, [r3, #0]
    1512:	2200      	movs	r2, #0
    1514:	701a      	strb	r2, [r3, #0]
    1516:	4b05      	ldr	r3, [pc, #20]	; (152c <xsprintf+0x40>)
    1518:	2200      	movs	r2, #0
    151a:	601a      	str	r2, [r3, #0]
    151c:	46c0      	nop			; (mov r8, r8)
    151e:	46bd      	mov	sp, r7
    1520:	b005      	add	sp, #20
    1522:	bc80      	pop	{r7}
    1524:	bc08      	pop	{r3}
    1526:	b003      	add	sp, #12
    1528:	4718      	bx	r3
    152a:	46c0      	nop			; (mov r8, r8)
    152c:	20000900 	.word	0x20000900

00001530 <xfprintf>:
    1530:	b40e      	push	{r1, r2, r3}
    1532:	b580      	push	{r7, lr}
    1534:	b085      	sub	sp, #20
    1536:	af00      	add	r7, sp, #0
    1538:	6078      	str	r0, [r7, #4]
    153a:	4b0c      	ldr	r3, [pc, #48]	; (156c <xfprintf+0x3c>)
    153c:	681b      	ldr	r3, [r3, #0]
    153e:	60fb      	str	r3, [r7, #12]
    1540:	4b0a      	ldr	r3, [pc, #40]	; (156c <xfprintf+0x3c>)
    1542:	687a      	ldr	r2, [r7, #4]
    1544:	601a      	str	r2, [r3, #0]
    1546:	2320      	movs	r3, #32
    1548:	18fb      	adds	r3, r7, r3
    154a:	60bb      	str	r3, [r7, #8]
    154c:	68ba      	ldr	r2, [r7, #8]
    154e:	69fb      	ldr	r3, [r7, #28]
    1550:	0011      	movs	r1, r2
    1552:	0018      	movs	r0, r3
    1554:	f7ff fe28 	bl	11a8 <xvprintf>
    1558:	4b04      	ldr	r3, [pc, #16]	; (156c <xfprintf+0x3c>)
    155a:	68fa      	ldr	r2, [r7, #12]
    155c:	601a      	str	r2, [r3, #0]
    155e:	46c0      	nop			; (mov r8, r8)
    1560:	46bd      	mov	sp, r7
    1562:	b005      	add	sp, #20
    1564:	bc80      	pop	{r7}
    1566:	bc08      	pop	{r3}
    1568:	b003      	add	sp, #12
    156a:	4718      	bx	r3
    156c:	200008fc 	.word	0x200008fc

00001570 <put_dump>:
    1570:	b580      	push	{r7, lr}
    1572:	b088      	sub	sp, #32
    1574:	af00      	add	r7, sp, #0
    1576:	60f8      	str	r0, [r7, #12]
    1578:	60b9      	str	r1, [r7, #8]
    157a:	607a      	str	r2, [r7, #4]
    157c:	603b      	str	r3, [r7, #0]
    157e:	68ba      	ldr	r2, [r7, #8]
    1580:	4b38      	ldr	r3, [pc, #224]	; (1664 <put_dump+0xf4>)
    1582:	0011      	movs	r1, r2
    1584:	0018      	movs	r0, r3
    1586:	f7ff ff9d 	bl	14c4 <xprintf>
    158a:	683b      	ldr	r3, [r7, #0]
    158c:	2b02      	cmp	r3, #2
    158e:	d03c      	beq.n	160a <put_dump+0x9a>
    1590:	2b04      	cmp	r3, #4
    1592:	d04d      	beq.n	1630 <put_dump+0xc0>
    1594:	2b01      	cmp	r3, #1
    1596:	d15d      	bne.n	1654 <put_dump+0xe4>
    1598:	68fb      	ldr	r3, [r7, #12]
    159a:	613b      	str	r3, [r7, #16]
    159c:	2300      	movs	r3, #0
    159e:	61fb      	str	r3, [r7, #28]
    15a0:	e00c      	b.n	15bc <put_dump+0x4c>
    15a2:	69fb      	ldr	r3, [r7, #28]
    15a4:	693a      	ldr	r2, [r7, #16]
    15a6:	18d3      	adds	r3, r2, r3
    15a8:	781b      	ldrb	r3, [r3, #0]
    15aa:	001a      	movs	r2, r3
    15ac:	4b2e      	ldr	r3, [pc, #184]	; (1668 <put_dump+0xf8>)
    15ae:	0011      	movs	r1, r2
    15b0:	0018      	movs	r0, r3
    15b2:	f7ff ff87 	bl	14c4 <xprintf>
    15b6:	69fb      	ldr	r3, [r7, #28]
    15b8:	3301      	adds	r3, #1
    15ba:	61fb      	str	r3, [r7, #28]
    15bc:	69fa      	ldr	r2, [r7, #28]
    15be:	687b      	ldr	r3, [r7, #4]
    15c0:	429a      	cmp	r2, r3
    15c2:	dbee      	blt.n	15a2 <put_dump+0x32>
    15c4:	2020      	movs	r0, #32
    15c6:	f7ff fd8f 	bl	10e8 <xputc>
    15ca:	2300      	movs	r3, #0
    15cc:	61fb      	str	r3, [r7, #28]
    15ce:	e017      	b.n	1600 <put_dump+0x90>
    15d0:	69fb      	ldr	r3, [r7, #28]
    15d2:	693a      	ldr	r2, [r7, #16]
    15d4:	18d3      	adds	r3, r2, r3
    15d6:	781b      	ldrb	r3, [r3, #0]
    15d8:	2b1f      	cmp	r3, #31
    15da:	d90a      	bls.n	15f2 <put_dump+0x82>
    15dc:	69fb      	ldr	r3, [r7, #28]
    15de:	693a      	ldr	r2, [r7, #16]
    15e0:	18d3      	adds	r3, r2, r3
    15e2:	781b      	ldrb	r3, [r3, #0]
    15e4:	2b7e      	cmp	r3, #126	; 0x7e
    15e6:	d804      	bhi.n	15f2 <put_dump+0x82>
    15e8:	69fb      	ldr	r3, [r7, #28]
    15ea:	693a      	ldr	r2, [r7, #16]
    15ec:	18d3      	adds	r3, r2, r3
    15ee:	781b      	ldrb	r3, [r3, #0]
    15f0:	e000      	b.n	15f4 <put_dump+0x84>
    15f2:	232e      	movs	r3, #46	; 0x2e
    15f4:	0018      	movs	r0, r3
    15f6:	f7ff fd77 	bl	10e8 <xputc>
    15fa:	69fb      	ldr	r3, [r7, #28]
    15fc:	3301      	adds	r3, #1
    15fe:	61fb      	str	r3, [r7, #28]
    1600:	69fa      	ldr	r2, [r7, #28]
    1602:	687b      	ldr	r3, [r7, #4]
    1604:	429a      	cmp	r2, r3
    1606:	dbe3      	blt.n	15d0 <put_dump+0x60>
    1608:	e024      	b.n	1654 <put_dump+0xe4>
    160a:	68fb      	ldr	r3, [r7, #12]
    160c:	61bb      	str	r3, [r7, #24]
    160e:	69bb      	ldr	r3, [r7, #24]
    1610:	1c9a      	adds	r2, r3, #2
    1612:	61ba      	str	r2, [r7, #24]
    1614:	881b      	ldrh	r3, [r3, #0]
    1616:	001a      	movs	r2, r3
    1618:	4b14      	ldr	r3, [pc, #80]	; (166c <put_dump+0xfc>)
    161a:	0011      	movs	r1, r2
    161c:	0018      	movs	r0, r3
    161e:	f7ff ff51 	bl	14c4 <xprintf>
    1622:	687b      	ldr	r3, [r7, #4]
    1624:	3b01      	subs	r3, #1
    1626:	607b      	str	r3, [r7, #4]
    1628:	687b      	ldr	r3, [r7, #4]
    162a:	2b00      	cmp	r3, #0
    162c:	d1ef      	bne.n	160e <put_dump+0x9e>
    162e:	e011      	b.n	1654 <put_dump+0xe4>
    1630:	68fb      	ldr	r3, [r7, #12]
    1632:	617b      	str	r3, [r7, #20]
    1634:	697b      	ldr	r3, [r7, #20]
    1636:	1d1a      	adds	r2, r3, #4
    1638:	617a      	str	r2, [r7, #20]
    163a:	681a      	ldr	r2, [r3, #0]
    163c:	4b0c      	ldr	r3, [pc, #48]	; (1670 <put_dump+0x100>)
    163e:	0011      	movs	r1, r2
    1640:	0018      	movs	r0, r3
    1642:	f7ff ff3f 	bl	14c4 <xprintf>
    1646:	687b      	ldr	r3, [r7, #4]
    1648:	3b01      	subs	r3, #1
    164a:	607b      	str	r3, [r7, #4]
    164c:	687b      	ldr	r3, [r7, #4]
    164e:	2b00      	cmp	r3, #0
    1650:	d1f0      	bne.n	1634 <put_dump+0xc4>
    1652:	46c0      	nop			; (mov r8, r8)
    1654:	200a      	movs	r0, #10
    1656:	f7ff fd47 	bl	10e8 <xputc>
    165a:	46c0      	nop			; (mov r8, r8)
    165c:	46bd      	mov	sp, r7
    165e:	b008      	add	sp, #32
    1660:	bd80      	pop	{r7, pc}
    1662:	46c0      	nop			; (mov r8, r8)
    1664:	000085f4 	.word	0x000085f4
    1668:	000085fc 	.word	0x000085fc
    166c:	00008604 	.word	0x00008604
    1670:	0000860c 	.word	0x0000860c

00001674 <xgets>:
    1674:	b580      	push	{r7, lr}
    1676:	b084      	sub	sp, #16
    1678:	af00      	add	r7, sp, #0
    167a:	6078      	str	r0, [r7, #4]
    167c:	6039      	str	r1, [r7, #0]
    167e:	4b24      	ldr	r3, [pc, #144]	; (1710 <xgets+0x9c>)
    1680:	681b      	ldr	r3, [r3, #0]
    1682:	2b00      	cmp	r3, #0
    1684:	d101      	bne.n	168a <xgets+0x16>
    1686:	2300      	movs	r3, #0
    1688:	e03e      	b.n	1708 <xgets+0x94>
    168a:	2300      	movs	r3, #0
    168c:	60fb      	str	r3, [r7, #12]
    168e:	4b20      	ldr	r3, [pc, #128]	; (1710 <xgets+0x9c>)
    1690:	681b      	ldr	r3, [r3, #0]
    1692:	4798      	blx	r3
    1694:	0003      	movs	r3, r0
    1696:	60bb      	str	r3, [r7, #8]
    1698:	68bb      	ldr	r3, [r7, #8]
    169a:	2b00      	cmp	r3, #0
    169c:	d101      	bne.n	16a2 <xgets+0x2e>
    169e:	2300      	movs	r3, #0
    16a0:	e032      	b.n	1708 <xgets+0x94>
    16a2:	68bb      	ldr	r3, [r7, #8]
    16a4:	2b0d      	cmp	r3, #13
    16a6:	d025      	beq.n	16f4 <xgets+0x80>
    16a8:	68bb      	ldr	r3, [r7, #8]
    16aa:	2b08      	cmp	r3, #8
    16ac:	d10b      	bne.n	16c6 <xgets+0x52>
    16ae:	68fb      	ldr	r3, [r7, #12]
    16b0:	2b00      	cmp	r3, #0
    16b2:	d008      	beq.n	16c6 <xgets+0x52>
    16b4:	68fb      	ldr	r3, [r7, #12]
    16b6:	3b01      	subs	r3, #1
    16b8:	60fb      	str	r3, [r7, #12]
    16ba:	68bb      	ldr	r3, [r7, #8]
    16bc:	b2db      	uxtb	r3, r3
    16be:	0018      	movs	r0, r3
    16c0:	f7ff fd12 	bl	10e8 <xputc>
    16c4:	e015      	b.n	16f2 <xgets+0x7e>
    16c6:	68bb      	ldr	r3, [r7, #8]
    16c8:	2b1f      	cmp	r3, #31
    16ca:	dde0      	ble.n	168e <xgets+0x1a>
    16cc:	683b      	ldr	r3, [r7, #0]
    16ce:	1e5a      	subs	r2, r3, #1
    16d0:	68fb      	ldr	r3, [r7, #12]
    16d2:	429a      	cmp	r2, r3
    16d4:	dddb      	ble.n	168e <xgets+0x1a>
    16d6:	68fb      	ldr	r3, [r7, #12]
    16d8:	1c5a      	adds	r2, r3, #1
    16da:	60fa      	str	r2, [r7, #12]
    16dc:	001a      	movs	r2, r3
    16de:	687b      	ldr	r3, [r7, #4]
    16e0:	189b      	adds	r3, r3, r2
    16e2:	68ba      	ldr	r2, [r7, #8]
    16e4:	b2d2      	uxtb	r2, r2
    16e6:	701a      	strb	r2, [r3, #0]
    16e8:	68bb      	ldr	r3, [r7, #8]
    16ea:	b2db      	uxtb	r3, r3
    16ec:	0018      	movs	r0, r3
    16ee:	f7ff fcfb 	bl	10e8 <xputc>
    16f2:	e7cc      	b.n	168e <xgets+0x1a>
    16f4:	46c0      	nop			; (mov r8, r8)
    16f6:	68fb      	ldr	r3, [r7, #12]
    16f8:	687a      	ldr	r2, [r7, #4]
    16fa:	18d3      	adds	r3, r2, r3
    16fc:	2200      	movs	r2, #0
    16fe:	701a      	strb	r2, [r3, #0]
    1700:	200a      	movs	r0, #10
    1702:	f7ff fcf1 	bl	10e8 <xputc>
    1706:	2301      	movs	r3, #1
    1708:	0018      	movs	r0, r3
    170a:	46bd      	mov	sp, r7
    170c:	b004      	add	sp, #16
    170e:	bd80      	pop	{r7, pc}
    1710:	20000904 	.word	0x20000904

00001714 <xfgets>:
    1714:	b580      	push	{r7, lr}
    1716:	b086      	sub	sp, #24
    1718:	af00      	add	r7, sp, #0
    171a:	60f8      	str	r0, [r7, #12]
    171c:	60b9      	str	r1, [r7, #8]
    171e:	607a      	str	r2, [r7, #4]
    1720:	4b0a      	ldr	r3, [pc, #40]	; (174c <xfgets+0x38>)
    1722:	681b      	ldr	r3, [r3, #0]
    1724:	617b      	str	r3, [r7, #20]
    1726:	4b09      	ldr	r3, [pc, #36]	; (174c <xfgets+0x38>)
    1728:	68fa      	ldr	r2, [r7, #12]
    172a:	601a      	str	r2, [r3, #0]
    172c:	687a      	ldr	r2, [r7, #4]
    172e:	68bb      	ldr	r3, [r7, #8]
    1730:	0011      	movs	r1, r2
    1732:	0018      	movs	r0, r3
    1734:	f7ff ff9e 	bl	1674 <xgets>
    1738:	0003      	movs	r3, r0
    173a:	613b      	str	r3, [r7, #16]
    173c:	4b03      	ldr	r3, [pc, #12]	; (174c <xfgets+0x38>)
    173e:	697a      	ldr	r2, [r7, #20]
    1740:	601a      	str	r2, [r3, #0]
    1742:	693b      	ldr	r3, [r7, #16]
    1744:	0018      	movs	r0, r3
    1746:	46bd      	mov	sp, r7
    1748:	b006      	add	sp, #24
    174a:	bd80      	pop	{r7, pc}
    174c:	20000904 	.word	0x20000904

00001750 <xatoi>:
    1750:	b580      	push	{r7, lr}
    1752:	b084      	sub	sp, #16
    1754:	af00      	add	r7, sp, #0
    1756:	6078      	str	r0, [r7, #4]
    1758:	6039      	str	r1, [r7, #0]
    175a:	2309      	movs	r3, #9
    175c:	18fb      	adds	r3, r7, r3
    175e:	2200      	movs	r2, #0
    1760:	701a      	strb	r2, [r3, #0]
    1762:	683b      	ldr	r3, [r7, #0]
    1764:	2200      	movs	r2, #0
    1766:	601a      	str	r2, [r3, #0]
    1768:	e004      	b.n	1774 <xatoi+0x24>
    176a:	687b      	ldr	r3, [r7, #4]
    176c:	681b      	ldr	r3, [r3, #0]
    176e:	1c5a      	adds	r2, r3, #1
    1770:	687b      	ldr	r3, [r7, #4]
    1772:	601a      	str	r2, [r3, #0]
    1774:	687b      	ldr	r3, [r7, #4]
    1776:	681a      	ldr	r2, [r3, #0]
    1778:	230b      	movs	r3, #11
    177a:	18fb      	adds	r3, r7, r3
    177c:	7812      	ldrb	r2, [r2, #0]
    177e:	701a      	strb	r2, [r3, #0]
    1780:	230b      	movs	r3, #11
    1782:	18fb      	adds	r3, r7, r3
    1784:	781b      	ldrb	r3, [r3, #0]
    1786:	2b20      	cmp	r3, #32
    1788:	d0ef      	beq.n	176a <xatoi+0x1a>
    178a:	230b      	movs	r3, #11
    178c:	18fb      	adds	r3, r7, r3
    178e:	781b      	ldrb	r3, [r3, #0]
    1790:	2b2d      	cmp	r3, #45	; 0x2d
    1792:	d10e      	bne.n	17b2 <xatoi+0x62>
    1794:	2309      	movs	r3, #9
    1796:	18fb      	adds	r3, r7, r3
    1798:	2201      	movs	r2, #1
    179a:	701a      	strb	r2, [r3, #0]
    179c:	687b      	ldr	r3, [r7, #4]
    179e:	681b      	ldr	r3, [r3, #0]
    17a0:	1c5a      	adds	r2, r3, #1
    17a2:	687b      	ldr	r3, [r7, #4]
    17a4:	601a      	str	r2, [r3, #0]
    17a6:	687b      	ldr	r3, [r7, #4]
    17a8:	681a      	ldr	r2, [r3, #0]
    17aa:	230b      	movs	r3, #11
    17ac:	18fb      	adds	r3, r7, r3
    17ae:	7812      	ldrb	r2, [r2, #0]
    17b0:	701a      	strb	r2, [r3, #0]
    17b2:	230b      	movs	r3, #11
    17b4:	18fb      	adds	r3, r7, r3
    17b6:	781b      	ldrb	r3, [r3, #0]
    17b8:	2b30      	cmp	r3, #48	; 0x30
    17ba:	d149      	bne.n	1850 <xatoi+0x100>
    17bc:	687b      	ldr	r3, [r7, #4]
    17be:	681b      	ldr	r3, [r3, #0]
    17c0:	1c5a      	adds	r2, r3, #1
    17c2:	687b      	ldr	r3, [r7, #4]
    17c4:	601a      	str	r2, [r3, #0]
    17c6:	687b      	ldr	r3, [r7, #4]
    17c8:	681a      	ldr	r2, [r3, #0]
    17ca:	230b      	movs	r3, #11
    17cc:	18fb      	adds	r3, r7, r3
    17ce:	7812      	ldrb	r2, [r2, #0]
    17d0:	701a      	strb	r2, [r3, #0]
    17d2:	230b      	movs	r3, #11
    17d4:	18fb      	adds	r3, r7, r3
    17d6:	781b      	ldrb	r3, [r3, #0]
    17d8:	2b62      	cmp	r3, #98	; 0x62
    17da:	d011      	beq.n	1800 <xatoi+0xb0>
    17dc:	2b78      	cmp	r3, #120	; 0x78
    17de:	d11f      	bne.n	1820 <xatoi+0xd0>
    17e0:	230a      	movs	r3, #10
    17e2:	18fb      	adds	r3, r7, r3
    17e4:	2210      	movs	r2, #16
    17e6:	701a      	strb	r2, [r3, #0]
    17e8:	687b      	ldr	r3, [r7, #4]
    17ea:	681b      	ldr	r3, [r3, #0]
    17ec:	1c5a      	adds	r2, r3, #1
    17ee:	687b      	ldr	r3, [r7, #4]
    17f0:	601a      	str	r2, [r3, #0]
    17f2:	687b      	ldr	r3, [r7, #4]
    17f4:	681a      	ldr	r2, [r3, #0]
    17f6:	230b      	movs	r3, #11
    17f8:	18fb      	adds	r3, r7, r3
    17fa:	7812      	ldrb	r2, [r2, #0]
    17fc:	701a      	strb	r2, [r3, #0]
    17fe:	e037      	b.n	1870 <xatoi+0x120>
    1800:	230a      	movs	r3, #10
    1802:	18fb      	adds	r3, r7, r3
    1804:	2202      	movs	r2, #2
    1806:	701a      	strb	r2, [r3, #0]
    1808:	687b      	ldr	r3, [r7, #4]
    180a:	681b      	ldr	r3, [r3, #0]
    180c:	1c5a      	adds	r2, r3, #1
    180e:	687b      	ldr	r3, [r7, #4]
    1810:	601a      	str	r2, [r3, #0]
    1812:	687b      	ldr	r3, [r7, #4]
    1814:	681a      	ldr	r2, [r3, #0]
    1816:	230b      	movs	r3, #11
    1818:	18fb      	adds	r3, r7, r3
    181a:	7812      	ldrb	r2, [r2, #0]
    181c:	701a      	strb	r2, [r3, #0]
    181e:	e027      	b.n	1870 <xatoi+0x120>
    1820:	230b      	movs	r3, #11
    1822:	18fb      	adds	r3, r7, r3
    1824:	781b      	ldrb	r3, [r3, #0]
    1826:	2b20      	cmp	r3, #32
    1828:	d801      	bhi.n	182e <xatoi+0xde>
    182a:	2301      	movs	r3, #1
    182c:	e079      	b.n	1922 <xatoi+0x1d2>
    182e:	230b      	movs	r3, #11
    1830:	18fb      	adds	r3, r7, r3
    1832:	781b      	ldrb	r3, [r3, #0]
    1834:	2b2f      	cmp	r3, #47	; 0x2f
    1836:	d904      	bls.n	1842 <xatoi+0xf2>
    1838:	230b      	movs	r3, #11
    183a:	18fb      	adds	r3, r7, r3
    183c:	781b      	ldrb	r3, [r3, #0]
    183e:	2b39      	cmp	r3, #57	; 0x39
    1840:	d901      	bls.n	1846 <xatoi+0xf6>
    1842:	2300      	movs	r3, #0
    1844:	e06d      	b.n	1922 <xatoi+0x1d2>
    1846:	230a      	movs	r3, #10
    1848:	18fb      	adds	r3, r7, r3
    184a:	2208      	movs	r2, #8
    184c:	701a      	strb	r2, [r3, #0]
    184e:	e00f      	b.n	1870 <xatoi+0x120>
    1850:	230b      	movs	r3, #11
    1852:	18fb      	adds	r3, r7, r3
    1854:	781b      	ldrb	r3, [r3, #0]
    1856:	2b2f      	cmp	r3, #47	; 0x2f
    1858:	d904      	bls.n	1864 <xatoi+0x114>
    185a:	230b      	movs	r3, #11
    185c:	18fb      	adds	r3, r7, r3
    185e:	781b      	ldrb	r3, [r3, #0]
    1860:	2b39      	cmp	r3, #57	; 0x39
    1862:	d901      	bls.n	1868 <xatoi+0x118>
    1864:	2300      	movs	r3, #0
    1866:	e05c      	b.n	1922 <xatoi+0x1d2>
    1868:	230a      	movs	r3, #10
    186a:	18fb      	adds	r3, r7, r3
    186c:	220a      	movs	r2, #10
    186e:	701a      	strb	r2, [r3, #0]
    1870:	2300      	movs	r3, #0
    1872:	60fb      	str	r3, [r7, #12]
    1874:	e044      	b.n	1900 <xatoi+0x1b0>
    1876:	230b      	movs	r3, #11
    1878:	18fb      	adds	r3, r7, r3
    187a:	781b      	ldrb	r3, [r3, #0]
    187c:	2b60      	cmp	r3, #96	; 0x60
    187e:	d906      	bls.n	188e <xatoi+0x13e>
    1880:	230b      	movs	r3, #11
    1882:	18fb      	adds	r3, r7, r3
    1884:	220b      	movs	r2, #11
    1886:	18ba      	adds	r2, r7, r2
    1888:	7812      	ldrb	r2, [r2, #0]
    188a:	3a20      	subs	r2, #32
    188c:	701a      	strb	r2, [r3, #0]
    188e:	230b      	movs	r3, #11
    1890:	18fb      	adds	r3, r7, r3
    1892:	220b      	movs	r2, #11
    1894:	18ba      	adds	r2, r7, r2
    1896:	7812      	ldrb	r2, [r2, #0]
    1898:	3a30      	subs	r2, #48	; 0x30
    189a:	701a      	strb	r2, [r3, #0]
    189c:	230b      	movs	r3, #11
    189e:	18fb      	adds	r3, r7, r3
    18a0:	781b      	ldrb	r3, [r3, #0]
    18a2:	2b10      	cmp	r3, #16
    18a4:	d90d      	bls.n	18c2 <xatoi+0x172>
    18a6:	230b      	movs	r3, #11
    18a8:	18fb      	adds	r3, r7, r3
    18aa:	220b      	movs	r2, #11
    18ac:	18ba      	adds	r2, r7, r2
    18ae:	7812      	ldrb	r2, [r2, #0]
    18b0:	3a07      	subs	r2, #7
    18b2:	701a      	strb	r2, [r3, #0]
    18b4:	230b      	movs	r3, #11
    18b6:	18fb      	adds	r3, r7, r3
    18b8:	781b      	ldrb	r3, [r3, #0]
    18ba:	2b09      	cmp	r3, #9
    18bc:	d801      	bhi.n	18c2 <xatoi+0x172>
    18be:	2300      	movs	r3, #0
    18c0:	e02f      	b.n	1922 <xatoi+0x1d2>
    18c2:	230b      	movs	r3, #11
    18c4:	18fa      	adds	r2, r7, r3
    18c6:	230a      	movs	r3, #10
    18c8:	18fb      	adds	r3, r7, r3
    18ca:	7812      	ldrb	r2, [r2, #0]
    18cc:	781b      	ldrb	r3, [r3, #0]
    18ce:	429a      	cmp	r2, r3
    18d0:	d301      	bcc.n	18d6 <xatoi+0x186>
    18d2:	2300      	movs	r3, #0
    18d4:	e025      	b.n	1922 <xatoi+0x1d2>
    18d6:	230a      	movs	r3, #10
    18d8:	18fb      	adds	r3, r7, r3
    18da:	781b      	ldrb	r3, [r3, #0]
    18dc:	68fa      	ldr	r2, [r7, #12]
    18de:	435a      	muls	r2, r3
    18e0:	230b      	movs	r3, #11
    18e2:	18fb      	adds	r3, r7, r3
    18e4:	781b      	ldrb	r3, [r3, #0]
    18e6:	18d3      	adds	r3, r2, r3
    18e8:	60fb      	str	r3, [r7, #12]
    18ea:	687b      	ldr	r3, [r7, #4]
    18ec:	681b      	ldr	r3, [r3, #0]
    18ee:	1c5a      	adds	r2, r3, #1
    18f0:	687b      	ldr	r3, [r7, #4]
    18f2:	601a      	str	r2, [r3, #0]
    18f4:	687b      	ldr	r3, [r7, #4]
    18f6:	681a      	ldr	r2, [r3, #0]
    18f8:	230b      	movs	r3, #11
    18fa:	18fb      	adds	r3, r7, r3
    18fc:	7812      	ldrb	r2, [r2, #0]
    18fe:	701a      	strb	r2, [r3, #0]
    1900:	230b      	movs	r3, #11
    1902:	18fb      	adds	r3, r7, r3
    1904:	781b      	ldrb	r3, [r3, #0]
    1906:	2b20      	cmp	r3, #32
    1908:	d8b5      	bhi.n	1876 <xatoi+0x126>
    190a:	2309      	movs	r3, #9
    190c:	18fb      	adds	r3, r7, r3
    190e:	781b      	ldrb	r3, [r3, #0]
    1910:	2b00      	cmp	r3, #0
    1912:	d002      	beq.n	191a <xatoi+0x1ca>
    1914:	68fb      	ldr	r3, [r7, #12]
    1916:	425b      	negs	r3, r3
    1918:	60fb      	str	r3, [r7, #12]
    191a:	68fa      	ldr	r2, [r7, #12]
    191c:	683b      	ldr	r3, [r7, #0]
    191e:	601a      	str	r2, [r3, #0]
    1920:	2301      	movs	r3, #1
    1922:	0018      	movs	r0, r3
    1924:	46bd      	mov	sp, r7
    1926:	b004      	add	sp, #16
    1928:	bd80      	pop	{r7, pc}
    192a:	46c0      	nop			; (mov r8, r8)

0000192c <os_idle_demon>:
    192c:	b580      	push	{r7, lr}
    192e:	af00      	add	r7, sp, #0
    1930:	e7fe      	b.n	1930 <os_idle_demon+0x4>
    1932:	46c0      	nop			; (mov r8, r8)

00001934 <os_error>:
    1934:	b580      	push	{r7, lr}
    1936:	b082      	sub	sp, #8
    1938:	af00      	add	r7, sp, #0
    193a:	6078      	str	r0, [r7, #4]
    193c:	687b      	ldr	r3, [r7, #4]
    193e:	2b02      	cmp	r3, #2
    1940:	d009      	beq.n	1956 <os_error+0x22>
    1942:	d802      	bhi.n	194a <os_error+0x16>
    1944:	2b01      	cmp	r3, #1
    1946:	d005      	beq.n	1954 <os_error+0x20>
    1948:	e008      	b.n	195c <os_error+0x28>
    194a:	2b03      	cmp	r3, #3
    194c:	d004      	beq.n	1958 <os_error+0x24>
    194e:	2b04      	cmp	r3, #4
    1950:	d003      	beq.n	195a <os_error+0x26>
    1952:	e003      	b.n	195c <os_error+0x28>
    1954:	e002      	b.n	195c <os_error+0x28>
    1956:	e001      	b.n	195c <os_error+0x28>
    1958:	e000      	b.n	195c <os_error+0x28>
    195a:	46c0      	nop			; (mov r8, r8)
    195c:	e7fe      	b.n	195c <os_error+0x28>
    195e:	46c0      	nop			; (mov r8, r8)

00001960 <software_init_hook>:
    1960:	2000      	movs	r0, #0
    1962:	2100      	movs	r1, #0
    1964:	4604      	mov	r4, r0
    1966:	460d      	mov	r5, r1
    1968:	4808      	ldr	r0, [pc, #32]	; (198c <software_init_hook+0x2c>)
    196a:	f003 f875 	bl	4a58 <atexit>
    196e:	f003 f8a5 	bl	4abc <__libc_init_array>
    1972:	4620      	mov	r0, r4
    1974:	4629      	mov	r1, r5
    1976:	f003 ff33 	bl	57e0 <osKernelInitialize>
    197a:	4805      	ldr	r0, [pc, #20]	; (1990 <software_init_hook+0x30>)
    197c:	2100      	movs	r1, #0
    197e:	f004 f8c1 	bl	5b04 <osThreadCreate>
    1982:	f003 ffc9 	bl	5918 <osKernelStart>
    1986:	f003 f86f 	bl	4a68 <exit>
    198a:	0000      	.short	0x0000
    198c:	00004a89 	.word	0x00004a89
    1990:	0000866c 	.word	0x0000866c

00001994 <__NVIC_EnableIRQ>:
    1994:	b580      	push	{r7, lr}
    1996:	b082      	sub	sp, #8
    1998:	af00      	add	r7, sp, #0
    199a:	0002      	movs	r2, r0
    199c:	1dfb      	adds	r3, r7, #7
    199e:	701a      	strb	r2, [r3, #0]
    19a0:	1dfb      	adds	r3, r7, #7
    19a2:	781b      	ldrb	r3, [r3, #0]
    19a4:	2b7f      	cmp	r3, #127	; 0x7f
    19a6:	d809      	bhi.n	19bc <__NVIC_EnableIRQ+0x28>
    19a8:	4b06      	ldr	r3, [pc, #24]	; (19c4 <__NVIC_EnableIRQ+0x30>)
    19aa:	1dfa      	adds	r2, r7, #7
    19ac:	7812      	ldrb	r2, [r2, #0]
    19ae:	0011      	movs	r1, r2
    19b0:	221f      	movs	r2, #31
    19b2:	400a      	ands	r2, r1
    19b4:	2101      	movs	r1, #1
    19b6:	4091      	lsls	r1, r2
    19b8:	000a      	movs	r2, r1
    19ba:	601a      	str	r2, [r3, #0]
    19bc:	46c0      	nop			; (mov r8, r8)
    19be:	46bd      	mov	sp, r7
    19c0:	b002      	add	sp, #8
    19c2:	bd80      	pop	{r7, pc}
    19c4:	e000e100 	.word	0xe000e100

000019c8 <__NVIC_ClearPendingIRQ>:
    19c8:	b580      	push	{r7, lr}
    19ca:	b082      	sub	sp, #8
    19cc:	af00      	add	r7, sp, #0
    19ce:	0002      	movs	r2, r0
    19d0:	1dfb      	adds	r3, r7, #7
    19d2:	701a      	strb	r2, [r3, #0]
    19d4:	1dfb      	adds	r3, r7, #7
    19d6:	781b      	ldrb	r3, [r3, #0]
    19d8:	2b7f      	cmp	r3, #127	; 0x7f
    19da:	d80a      	bhi.n	19f2 <__NVIC_ClearPendingIRQ+0x2a>
    19dc:	4907      	ldr	r1, [pc, #28]	; (19fc <__NVIC_ClearPendingIRQ+0x34>)
    19de:	1dfb      	adds	r3, r7, #7
    19e0:	781b      	ldrb	r3, [r3, #0]
    19e2:	001a      	movs	r2, r3
    19e4:	231f      	movs	r3, #31
    19e6:	4013      	ands	r3, r2
    19e8:	2201      	movs	r2, #1
    19ea:	409a      	lsls	r2, r3
    19ec:	23c0      	movs	r3, #192	; 0xc0
    19ee:	005b      	lsls	r3, r3, #1
    19f0:	50ca      	str	r2, [r1, r3]
    19f2:	46c0      	nop			; (mov r8, r8)
    19f4:	46bd      	mov	sp, r7
    19f6:	b002      	add	sp, #8
    19f8:	bd80      	pop	{r7, pc}
    19fa:	46c0      	nop			; (mov r8, r8)
    19fc:	e000e100 	.word	0xe000e100

00001a00 <__NVIC_SetPriority>:
    1a00:	b5b0      	push	{r4, r5, r7, lr}
    1a02:	b082      	sub	sp, #8
    1a04:	af00      	add	r7, sp, #0
    1a06:	0002      	movs	r2, r0
    1a08:	6039      	str	r1, [r7, #0]
    1a0a:	1dfb      	adds	r3, r7, #7
    1a0c:	701a      	strb	r2, [r3, #0]
    1a0e:	1dfb      	adds	r3, r7, #7
    1a10:	781b      	ldrb	r3, [r3, #0]
    1a12:	2b7f      	cmp	r3, #127	; 0x7f
    1a14:	d828      	bhi.n	1a68 <__NVIC_SetPriority+0x68>
    1a16:	4c2f      	ldr	r4, [pc, #188]	; (1ad4 <__NVIC_SetPriority+0xd4>)
    1a18:	1dfb      	adds	r3, r7, #7
    1a1a:	781b      	ldrb	r3, [r3, #0]
    1a1c:	b25b      	sxtb	r3, r3
    1a1e:	089b      	lsrs	r3, r3, #2
    1a20:	492c      	ldr	r1, [pc, #176]	; (1ad4 <__NVIC_SetPriority+0xd4>)
    1a22:	1dfa      	adds	r2, r7, #7
    1a24:	7812      	ldrb	r2, [r2, #0]
    1a26:	b252      	sxtb	r2, r2
    1a28:	0892      	lsrs	r2, r2, #2
    1a2a:	32c0      	adds	r2, #192	; 0xc0
    1a2c:	0092      	lsls	r2, r2, #2
    1a2e:	5852      	ldr	r2, [r2, r1]
    1a30:	1df9      	adds	r1, r7, #7
    1a32:	7809      	ldrb	r1, [r1, #0]
    1a34:	0008      	movs	r0, r1
    1a36:	2103      	movs	r1, #3
    1a38:	4001      	ands	r1, r0
    1a3a:	00c9      	lsls	r1, r1, #3
    1a3c:	20ff      	movs	r0, #255	; 0xff
    1a3e:	4088      	lsls	r0, r1
    1a40:	0001      	movs	r1, r0
    1a42:	43c9      	mvns	r1, r1
    1a44:	4011      	ands	r1, r2
    1a46:	683a      	ldr	r2, [r7, #0]
    1a48:	0192      	lsls	r2, r2, #6
    1a4a:	20ff      	movs	r0, #255	; 0xff
    1a4c:	4010      	ands	r0, r2
    1a4e:	1dfa      	adds	r2, r7, #7
    1a50:	7812      	ldrb	r2, [r2, #0]
    1a52:	0015      	movs	r5, r2
    1a54:	2203      	movs	r2, #3
    1a56:	402a      	ands	r2, r5
    1a58:	00d2      	lsls	r2, r2, #3
    1a5a:	4090      	lsls	r0, r2
    1a5c:	0002      	movs	r2, r0
    1a5e:	430a      	orrs	r2, r1
    1a60:	33c0      	adds	r3, #192	; 0xc0
    1a62:	009b      	lsls	r3, r3, #2
    1a64:	511a      	str	r2, [r3, r4]
    1a66:	e031      	b.n	1acc <__NVIC_SetPriority+0xcc>
    1a68:	4c1b      	ldr	r4, [pc, #108]	; (1ad8 <__NVIC_SetPriority+0xd8>)
    1a6a:	1dfb      	adds	r3, r7, #7
    1a6c:	781b      	ldrb	r3, [r3, #0]
    1a6e:	001a      	movs	r2, r3
    1a70:	230f      	movs	r3, #15
    1a72:	4013      	ands	r3, r2
    1a74:	3b08      	subs	r3, #8
    1a76:	0899      	lsrs	r1, r3, #2
    1a78:	4a17      	ldr	r2, [pc, #92]	; (1ad8 <__NVIC_SetPriority+0xd8>)
    1a7a:	1dfb      	adds	r3, r7, #7
    1a7c:	781b      	ldrb	r3, [r3, #0]
    1a7e:	0018      	movs	r0, r3
    1a80:	230f      	movs	r3, #15
    1a82:	4003      	ands	r3, r0
    1a84:	3b08      	subs	r3, #8
    1a86:	089b      	lsrs	r3, r3, #2
    1a88:	3306      	adds	r3, #6
    1a8a:	009b      	lsls	r3, r3, #2
    1a8c:	18d3      	adds	r3, r2, r3
    1a8e:	3304      	adds	r3, #4
    1a90:	681b      	ldr	r3, [r3, #0]
    1a92:	1dfa      	adds	r2, r7, #7
    1a94:	7812      	ldrb	r2, [r2, #0]
    1a96:	0010      	movs	r0, r2
    1a98:	2203      	movs	r2, #3
    1a9a:	4002      	ands	r2, r0
    1a9c:	00d2      	lsls	r2, r2, #3
    1a9e:	20ff      	movs	r0, #255	; 0xff
    1aa0:	4090      	lsls	r0, r2
    1aa2:	0002      	movs	r2, r0
    1aa4:	43d2      	mvns	r2, r2
    1aa6:	401a      	ands	r2, r3
    1aa8:	683b      	ldr	r3, [r7, #0]
    1aaa:	019b      	lsls	r3, r3, #6
    1aac:	20ff      	movs	r0, #255	; 0xff
    1aae:	4018      	ands	r0, r3
    1ab0:	1dfb      	adds	r3, r7, #7
    1ab2:	781b      	ldrb	r3, [r3, #0]
    1ab4:	001d      	movs	r5, r3
    1ab6:	2303      	movs	r3, #3
    1ab8:	402b      	ands	r3, r5
    1aba:	00db      	lsls	r3, r3, #3
    1abc:	4098      	lsls	r0, r3
    1abe:	0003      	movs	r3, r0
    1ac0:	431a      	orrs	r2, r3
    1ac2:	1d8b      	adds	r3, r1, #6
    1ac4:	009b      	lsls	r3, r3, #2
    1ac6:	18e3      	adds	r3, r4, r3
    1ac8:	3304      	adds	r3, #4
    1aca:	601a      	str	r2, [r3, #0]
    1acc:	46c0      	nop			; (mov r8, r8)
    1ace:	46bd      	mov	sp, r7
    1ad0:	b002      	add	sp, #8
    1ad2:	bdb0      	pop	{r4, r5, r7, pc}
    1ad4:	e000e100 	.word	0xe000e100
    1ad8:	e000ed00 	.word	0xe000ed00

00001adc <PortConfig>:
    1adc:	b580      	push	{r7, lr}
    1ade:	af00      	add	r7, sp, #0
    1ae0:	4b44      	ldr	r3, [pc, #272]	; (1bf4 <PortConfig+0x118>)
    1ae2:	4a44      	ldr	r2, [pc, #272]	; (1bf4 <PortConfig+0x118>)
    1ae4:	68d2      	ldr	r2, [r2, #12]
    1ae6:	21de      	movs	r1, #222	; 0xde
    1ae8:	0209      	lsls	r1, r1, #8
    1aea:	430a      	orrs	r2, r1
    1aec:	60da      	str	r2, [r3, #12]
    1aee:	4b41      	ldr	r3, [pc, #260]	; (1bf4 <PortConfig+0x118>)
    1af0:	4a40      	ldr	r2, [pc, #256]	; (1bf4 <PortConfig+0x118>)
    1af2:	6812      	ldr	r2, [r2, #0]
    1af4:	4940      	ldr	r1, [pc, #256]	; (1bf8 <PortConfig+0x11c>)
    1af6:	400a      	ands	r2, r1
    1af8:	601a      	str	r2, [r3, #0]
    1afa:	4b3e      	ldr	r3, [pc, #248]	; (1bf4 <PortConfig+0x118>)
    1afc:	4a3d      	ldr	r2, [pc, #244]	; (1bf4 <PortConfig+0x118>)
    1afe:	6852      	ldr	r2, [r2, #4]
    1b00:	21de      	movs	r1, #222	; 0xde
    1b02:	0209      	lsls	r1, r1, #8
    1b04:	430a      	orrs	r2, r1
    1b06:	605a      	str	r2, [r3, #4]
    1b08:	4b3a      	ldr	r3, [pc, #232]	; (1bf4 <PortConfig+0x118>)
    1b0a:	4a3a      	ldr	r2, [pc, #232]	; (1bf4 <PortConfig+0x118>)
    1b0c:	6992      	ldr	r2, [r2, #24]
    1b0e:	493b      	ldr	r1, [pc, #236]	; (1bfc <PortConfig+0x120>)
    1b10:	430a      	orrs	r2, r1
    1b12:	619a      	str	r2, [r3, #24]
    1b14:	4b37      	ldr	r3, [pc, #220]	; (1bf4 <PortConfig+0x118>)
    1b16:	4a37      	ldr	r2, [pc, #220]	; (1bf4 <PortConfig+0x118>)
    1b18:	68d2      	ldr	r2, [r2, #12]
    1b1a:	21ff      	movs	r1, #255	; 0xff
    1b1c:	0049      	lsls	r1, r1, #1
    1b1e:	430a      	orrs	r2, r1
    1b20:	60da      	str	r2, [r3, #12]
    1b22:	4b34      	ldr	r3, [pc, #208]	; (1bf4 <PortConfig+0x118>)
    1b24:	4a33      	ldr	r2, [pc, #204]	; (1bf4 <PortConfig+0x118>)
    1b26:	6812      	ldr	r2, [r2, #0]
    1b28:	4935      	ldr	r1, [pc, #212]	; (1c00 <PortConfig+0x124>)
    1b2a:	400a      	ands	r2, r1
    1b2c:	601a      	str	r2, [r3, #0]
    1b2e:	4b31      	ldr	r3, [pc, #196]	; (1bf4 <PortConfig+0x118>)
    1b30:	4a30      	ldr	r2, [pc, #192]	; (1bf4 <PortConfig+0x118>)
    1b32:	6852      	ldr	r2, [r2, #4]
    1b34:	21ff      	movs	r1, #255	; 0xff
    1b36:	0049      	lsls	r1, r1, #1
    1b38:	430a      	orrs	r2, r1
    1b3a:	605a      	str	r2, [r3, #4]
    1b3c:	4b2d      	ldr	r3, [pc, #180]	; (1bf4 <PortConfig+0x118>)
    1b3e:	4a2d      	ldr	r2, [pc, #180]	; (1bf4 <PortConfig+0x118>)
    1b40:	6992      	ldr	r2, [r2, #24]
    1b42:	4930      	ldr	r1, [pc, #192]	; (1c04 <PortConfig+0x128>)
    1b44:	430a      	orrs	r2, r1
    1b46:	619a      	str	r2, [r3, #24]
    1b48:	4b2f      	ldr	r3, [pc, #188]	; (1c08 <PortConfig+0x12c>)
    1b4a:	4a2f      	ldr	r2, [pc, #188]	; (1c08 <PortConfig+0x12c>)
    1b4c:	6892      	ldr	r2, [r2, #8]
    1b4e:	21a0      	movs	r1, #160	; 0xa0
    1b50:	0549      	lsls	r1, r1, #21
    1b52:	430a      	orrs	r2, r1
    1b54:	609a      	str	r2, [r3, #8]
    1b56:	4b2c      	ldr	r3, [pc, #176]	; (1c08 <PortConfig+0x12c>)
    1b58:	4a2b      	ldr	r2, [pc, #172]	; (1c08 <PortConfig+0x12c>)
    1b5a:	68d2      	ldr	r2, [r2, #12]
    1b5c:	21e0      	movs	r1, #224	; 0xe0
    1b5e:	0209      	lsls	r1, r1, #8
    1b60:	430a      	orrs	r2, r1
    1b62:	60da      	str	r2, [r3, #12]
    1b64:	4b28      	ldr	r3, [pc, #160]	; (1c08 <PortConfig+0x12c>)
    1b66:	4a28      	ldr	r2, [pc, #160]	; (1c08 <PortConfig+0x12c>)
    1b68:	6992      	ldr	r2, [r2, #24]
    1b6a:	21fc      	movs	r1, #252	; 0xfc
    1b6c:	0609      	lsls	r1, r1, #24
    1b6e:	430a      	orrs	r2, r1
    1b70:	619a      	str	r2, [r3, #24]
    1b72:	4b25      	ldr	r3, [pc, #148]	; (1c08 <PortConfig+0x12c>)
    1b74:	4a24      	ldr	r2, [pc, #144]	; (1c08 <PortConfig+0x12c>)
    1b76:	6812      	ldr	r2, [r2, #0]
    1b78:	4924      	ldr	r1, [pc, #144]	; (1c0c <PortConfig+0x130>)
    1b7a:	400a      	ands	r2, r1
    1b7c:	601a      	str	r2, [r3, #0]
    1b7e:	4b22      	ldr	r3, [pc, #136]	; (1c08 <PortConfig+0x12c>)
    1b80:	4a21      	ldr	r2, [pc, #132]	; (1c08 <PortConfig+0x12c>)
    1b82:	6852      	ldr	r2, [r2, #4]
    1b84:	2180      	movs	r1, #128	; 0x80
    1b86:	0209      	lsls	r1, r1, #8
    1b88:	430a      	orrs	r2, r1
    1b8a:	605a      	str	r2, [r3, #4]
    1b8c:	4b20      	ldr	r3, [pc, #128]	; (1c10 <PortConfig+0x134>)
    1b8e:	4a20      	ldr	r2, [pc, #128]	; (1c10 <PortConfig+0x134>)
    1b90:	6892      	ldr	r2, [r2, #8]
    1b92:	4920      	ldr	r1, [pc, #128]	; (1c14 <PortConfig+0x138>)
    1b94:	400a      	ands	r2, r1
    1b96:	609a      	str	r2, [r3, #8]
    1b98:	4b1d      	ldr	r3, [pc, #116]	; (1c10 <PortConfig+0x134>)
    1b9a:	4a1d      	ldr	r2, [pc, #116]	; (1c10 <PortConfig+0x134>)
    1b9c:	6892      	ldr	r2, [r2, #8]
    1b9e:	21a0      	movs	r1, #160	; 0xa0
    1ba0:	0049      	lsls	r1, r1, #1
    1ba2:	430a      	orrs	r2, r1
    1ba4:	609a      	str	r2, [r3, #8]
    1ba6:	4b1a      	ldr	r3, [pc, #104]	; (1c10 <PortConfig+0x134>)
    1ba8:	4a19      	ldr	r2, [pc, #100]	; (1c10 <PortConfig+0x134>)
    1baa:	68d2      	ldr	r2, [r2, #12]
    1bac:	2118      	movs	r1, #24
    1bae:	430a      	orrs	r2, r1
    1bb0:	60da      	str	r2, [r3, #12]
    1bb2:	4b17      	ldr	r3, [pc, #92]	; (1c10 <PortConfig+0x134>)
    1bb4:	4a16      	ldr	r2, [pc, #88]	; (1c10 <PortConfig+0x134>)
    1bb6:	6992      	ldr	r2, [r2, #24]
    1bb8:	21f0      	movs	r1, #240	; 0xf0
    1bba:	0089      	lsls	r1, r1, #2
    1bbc:	430a      	orrs	r2, r1
    1bbe:	619a      	str	r2, [r3, #24]
    1bc0:	4b13      	ldr	r3, [pc, #76]	; (1c10 <PortConfig+0x134>)
    1bc2:	4a13      	ldr	r2, [pc, #76]	; (1c10 <PortConfig+0x134>)
    1bc4:	6812      	ldr	r2, [r2, #0]
    1bc6:	2118      	movs	r1, #24
    1bc8:	438a      	bics	r2, r1
    1bca:	601a      	str	r2, [r3, #0]
    1bcc:	4b10      	ldr	r3, [pc, #64]	; (1c10 <PortConfig+0x134>)
    1bce:	4a10      	ldr	r2, [pc, #64]	; (1c10 <PortConfig+0x134>)
    1bd0:	68d2      	ldr	r2, [r2, #12]
    1bd2:	2120      	movs	r1, #32
    1bd4:	430a      	orrs	r2, r1
    1bd6:	60da      	str	r2, [r3, #12]
    1bd8:	4b0d      	ldr	r3, [pc, #52]	; (1c10 <PortConfig+0x134>)
    1bda:	4a0d      	ldr	r2, [pc, #52]	; (1c10 <PortConfig+0x134>)
    1bdc:	6892      	ldr	r2, [r2, #8]
    1bde:	2180      	movs	r1, #128	; 0x80
    1be0:	00c9      	lsls	r1, r1, #3
    1be2:	430a      	orrs	r2, r1
    1be4:	609a      	str	r2, [r3, #8]
    1be6:	201c      	movs	r0, #28
    1be8:	f7ff feee 	bl	19c8 <__NVIC_ClearPendingIRQ>
    1bec:	46c0      	nop			; (mov r8, r8)
    1bee:	46bd      	mov	sp, r7
    1bf0:	bd80      	pop	{r7, pc}
    1bf2:	46c0      	nop			; (mov r8, r8)
    1bf4:	400b0000 	.word	0x400b0000
    1bf8:	ffff21ff 	.word	0xffff21ff
    1bfc:	f3fc0000 	.word	0xf3fc0000
    1c00:	fffffe01 	.word	0xfffffe01
    1c04:	0003fffc 	.word	0x0003fffc
    1c08:	400c0000 	.word	0x400c0000
    1c0c:	ffff1fff 	.word	0xffff1fff
    1c10:	400b8000 	.word	0x400b8000
    1c14:	fffffc3f 	.word	0xfffffc3f

00001c18 <ClkConfig>:
    1c18:	b580      	push	{r7, lr}
    1c1a:	af00      	add	r7, sp, #0
    1c1c:	4b4b      	ldr	r3, [pc, #300]	; (1d4c <ClkConfig+0x134>)
    1c1e:	2280      	movs	r2, #128	; 0x80
    1c20:	0092      	lsls	r2, r2, #2
    1c22:	619a      	str	r2, [r3, #24]
    1c24:	4b4a      	ldr	r3, [pc, #296]	; (1d50 <ClkConfig+0x138>)
    1c26:	4a4a      	ldr	r2, [pc, #296]	; (1d50 <ClkConfig+0x138>)
    1c28:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1c2a:	2118      	movs	r1, #24
    1c2c:	430a      	orrs	r2, r1
    1c2e:	63da      	str	r2, [r3, #60]	; 0x3c
    1c30:	4b47      	ldr	r3, [pc, #284]	; (1d50 <ClkConfig+0x138>)
    1c32:	4a48      	ldr	r2, [pc, #288]	; (1d54 <ClkConfig+0x13c>)
    1c34:	649a      	str	r2, [r3, #72]	; 0x48
    1c36:	4b46      	ldr	r3, [pc, #280]	; (1d50 <ClkConfig+0x138>)
    1c38:	2201      	movs	r2, #1
    1c3a:	645a      	str	r2, [r3, #68]	; 0x44
    1c3c:	4b43      	ldr	r3, [pc, #268]	; (1d4c <ClkConfig+0x134>)
    1c3e:	4a43      	ldr	r2, [pc, #268]	; (1d4c <ClkConfig+0x134>)
    1c40:	6892      	ldr	r2, [r2, #8]
    1c42:	2105      	movs	r1, #5
    1c44:	430a      	orrs	r2, r1
    1c46:	609a      	str	r2, [r3, #8]
    1c48:	46c0      	nop			; (mov r8, r8)
    1c4a:	4b40      	ldr	r3, [pc, #256]	; (1d4c <ClkConfig+0x134>)
    1c4c:	681b      	ldr	r3, [r3, #0]
    1c4e:	220c      	movs	r2, #12
    1c50:	4013      	ands	r3, r2
    1c52:	2b0c      	cmp	r3, #12
    1c54:	d1f9      	bne.n	1c4a <ClkConfig+0x32>
    1c56:	4b3d      	ldr	r3, [pc, #244]	; (1d4c <ClkConfig+0x134>)
    1c58:	4a3c      	ldr	r2, [pc, #240]	; (1d4c <ClkConfig+0x134>)
    1c5a:	68d2      	ldr	r2, [r2, #12]
    1c5c:	2102      	movs	r1, #2
    1c5e:	430a      	orrs	r2, r1
    1c60:	60da      	str	r2, [r3, #12]
    1c62:	4b3a      	ldr	r3, [pc, #232]	; (1d4c <ClkConfig+0x134>)
    1c64:	4a3c      	ldr	r2, [pc, #240]	; (1d58 <ClkConfig+0x140>)
    1c66:	605a      	str	r2, [r3, #4]
    1c68:	46c0      	nop			; (mov r8, r8)
    1c6a:	4b38      	ldr	r3, [pc, #224]	; (1d4c <ClkConfig+0x134>)
    1c6c:	681b      	ldr	r3, [r3, #0]
    1c6e:	2202      	movs	r2, #2
    1c70:	4013      	ands	r3, r2
    1c72:	d0fa      	beq.n	1c6a <ClkConfig+0x52>
    1c74:	4b35      	ldr	r3, [pc, #212]	; (1d4c <ClkConfig+0x134>)
    1c76:	4a35      	ldr	r2, [pc, #212]	; (1d4c <ClkConfig+0x134>)
    1c78:	69d2      	ldr	r2, [r2, #28]
    1c7a:	2108      	movs	r1, #8
    1c7c:	430a      	orrs	r2, r1
    1c7e:	61da      	str	r2, [r3, #28]
    1c80:	4b36      	ldr	r3, [pc, #216]	; (1d5c <ClkConfig+0x144>)
    1c82:	4a36      	ldr	r2, [pc, #216]	; (1d5c <ClkConfig+0x144>)
    1c84:	6812      	ldr	r2, [r2, #0]
    1c86:	2118      	movs	r1, #24
    1c88:	430a      	orrs	r2, r1
    1c8a:	601a      	str	r2, [r3, #0]
    1c8c:	4b2f      	ldr	r3, [pc, #188]	; (1d4c <ClkConfig+0x134>)
    1c8e:	4a2f      	ldr	r2, [pc, #188]	; (1d4c <ClkConfig+0x134>)
    1c90:	69d2      	ldr	r2, [r2, #28]
    1c92:	2108      	movs	r1, #8
    1c94:	438a      	bics	r2, r1
    1c96:	61da      	str	r2, [r3, #28]
    1c98:	4b2c      	ldr	r3, [pc, #176]	; (1d4c <ClkConfig+0x134>)
    1c9a:	4a2c      	ldr	r2, [pc, #176]	; (1d4c <ClkConfig+0x134>)
    1c9c:	68d2      	ldr	r2, [r2, #12]
    1c9e:	2180      	movs	r1, #128	; 0x80
    1ca0:	0049      	lsls	r1, r1, #1
    1ca2:	430a      	orrs	r2, r1
    1ca4:	60da      	str	r2, [r3, #12]
    1ca6:	4b29      	ldr	r3, [pc, #164]	; (1d4c <ClkConfig+0x134>)
    1ca8:	4a28      	ldr	r2, [pc, #160]	; (1d4c <ClkConfig+0x134>)
    1caa:	68d2      	ldr	r2, [r2, #12]
    1cac:	2104      	movs	r1, #4
    1cae:	430a      	orrs	r2, r1
    1cb0:	60da      	str	r2, [r3, #12]
    1cb2:	4b26      	ldr	r3, [pc, #152]	; (1d4c <ClkConfig+0x134>)
    1cb4:	22e4      	movs	r2, #228	; 0xe4
    1cb6:	0592      	lsls	r2, r2, #22
    1cb8:	635a      	str	r2, [r3, #52]	; 0x34
    1cba:	4b24      	ldr	r3, [pc, #144]	; (1d4c <ClkConfig+0x134>)
    1cbc:	4a23      	ldr	r2, [pc, #140]	; (1d4c <ClkConfig+0x134>)
    1cbe:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cc0:	2180      	movs	r1, #128	; 0x80
    1cc2:	0449      	lsls	r1, r1, #17
    1cc4:	430a      	orrs	r2, r1
    1cc6:	625a      	str	r2, [r3, #36]	; 0x24
    1cc8:	4b20      	ldr	r3, [pc, #128]	; (1d4c <ClkConfig+0x134>)
    1cca:	4a20      	ldr	r2, [pc, #128]	; (1d4c <ClkConfig+0x134>)
    1ccc:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cce:	21ff      	movs	r1, #255	; 0xff
    1cd0:	438a      	bics	r2, r1
    1cd2:	625a      	str	r2, [r3, #36]	; 0x24
    1cd4:	4b1d      	ldr	r3, [pc, #116]	; (1d4c <ClkConfig+0x134>)
    1cd6:	4a1d      	ldr	r2, [pc, #116]	; (1d4c <ClkConfig+0x134>)
    1cd8:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cda:	2180      	movs	r1, #128	; 0x80
    1cdc:	0489      	lsls	r1, r1, #18
    1cde:	430a      	orrs	r2, r1
    1ce0:	625a      	str	r2, [r3, #36]	; 0x24
    1ce2:	4b1a      	ldr	r3, [pc, #104]	; (1d4c <ClkConfig+0x134>)
    1ce4:	4a19      	ldr	r2, [pc, #100]	; (1d4c <ClkConfig+0x134>)
    1ce6:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1ce8:	491d      	ldr	r1, [pc, #116]	; (1d60 <ClkConfig+0x148>)
    1cea:	400a      	ands	r2, r1
    1cec:	625a      	str	r2, [r3, #36]	; 0x24
    1cee:	4b17      	ldr	r3, [pc, #92]	; (1d4c <ClkConfig+0x134>)
    1cf0:	4a16      	ldr	r2, [pc, #88]	; (1d4c <ClkConfig+0x134>)
    1cf2:	69d2      	ldr	r2, [r2, #28]
    1cf4:	491b      	ldr	r1, [pc, #108]	; (1d64 <ClkConfig+0x14c>)
    1cf6:	430a      	orrs	r2, r1
    1cf8:	61da      	str	r2, [r3, #28]
    1cfa:	4b14      	ldr	r3, [pc, #80]	; (1d4c <ClkConfig+0x134>)
    1cfc:	4a13      	ldr	r2, [pc, #76]	; (1d4c <ClkConfig+0x134>)
    1cfe:	69d2      	ldr	r2, [r2, #28]
    1d00:	2180      	movs	r1, #128	; 0x80
    1d02:	430a      	orrs	r2, r1
    1d04:	61da      	str	r2, [r3, #28]
    1d06:	4b11      	ldr	r3, [pc, #68]	; (1d4c <ClkConfig+0x134>)
    1d08:	4a10      	ldr	r2, [pc, #64]	; (1d4c <ClkConfig+0x134>)
    1d0a:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d0c:	2180      	movs	r1, #128	; 0x80
    1d0e:	0489      	lsls	r1, r1, #18
    1d10:	430a      	orrs	r2, r1
    1d12:	629a      	str	r2, [r3, #40]	; 0x28
    1d14:	4b0d      	ldr	r3, [pc, #52]	; (1d4c <ClkConfig+0x134>)
    1d16:	4a0d      	ldr	r2, [pc, #52]	; (1d4c <ClkConfig+0x134>)
    1d18:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d1a:	4911      	ldr	r1, [pc, #68]	; (1d60 <ClkConfig+0x148>)
    1d1c:	400a      	ands	r2, r1
    1d1e:	629a      	str	r2, [r3, #40]	; 0x28
    1d20:	4b0a      	ldr	r3, [pc, #40]	; (1d4c <ClkConfig+0x134>)
    1d22:	4a0a      	ldr	r2, [pc, #40]	; (1d4c <ClkConfig+0x134>)
    1d24:	69d2      	ldr	r2, [r2, #28]
    1d26:	2140      	movs	r1, #64	; 0x40
    1d28:	430a      	orrs	r2, r1
    1d2a:	61da      	str	r2, [r3, #28]
    1d2c:	4b07      	ldr	r3, [pc, #28]	; (1d4c <ClkConfig+0x134>)
    1d2e:	4a07      	ldr	r2, [pc, #28]	; (1d4c <ClkConfig+0x134>)
    1d30:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d32:	2180      	movs	r1, #128	; 0x80
    1d34:	0449      	lsls	r1, r1, #17
    1d36:	430a      	orrs	r2, r1
    1d38:	629a      	str	r2, [r3, #40]	; 0x28
    1d3a:	4b04      	ldr	r3, [pc, #16]	; (1d4c <ClkConfig+0x134>)
    1d3c:	4a03      	ldr	r2, [pc, #12]	; (1d4c <ClkConfig+0x134>)
    1d3e:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d40:	21ff      	movs	r1, #255	; 0xff
    1d42:	438a      	bics	r2, r1
    1d44:	629a      	str	r2, [r3, #40]	; 0x28
    1d46:	46c0      	nop			; (mov r8, r8)
    1d48:	46bd      	mov	sp, r7
    1d4a:	bd80      	pop	{r7, pc}
    1d4c:	40020000 	.word	0x40020000
    1d50:	400d8000 	.word	0x400d8000
    1d54:	000fffff 	.word	0x000fffff
    1d58:	00000b04 	.word	0x00000b04
    1d5c:	40018000 	.word	0x40018000
    1d60:	ffff00ff 	.word	0xffff00ff
    1d64:	03c0c000 	.word	0x03c0c000

00001d68 <TimerConfig>:
    1d68:	b580      	push	{r7, lr}
    1d6a:	af00      	add	r7, sp, #0
    1d6c:	4b19      	ldr	r3, [pc, #100]	; (1dd4 <TimerConfig+0x6c>)
    1d6e:	2200      	movs	r2, #0
    1d70:	601a      	str	r2, [r3, #0]
    1d72:	4b18      	ldr	r3, [pc, #96]	; (1dd4 <TimerConfig+0x6c>)
    1d74:	225f      	movs	r2, #95	; 0x5f
    1d76:	605a      	str	r2, [r3, #4]
    1d78:	4b16      	ldr	r3, [pc, #88]	; (1dd4 <TimerConfig+0x6c>)
    1d7a:	4a17      	ldr	r2, [pc, #92]	; (1dd8 <TimerConfig+0x70>)
    1d7c:	609a      	str	r2, [r3, #8]
    1d7e:	4b15      	ldr	r3, [pc, #84]	; (1dd4 <TimerConfig+0x6c>)
    1d80:	4a14      	ldr	r2, [pc, #80]	; (1dd4 <TimerConfig+0x6c>)
    1d82:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1d84:	2102      	movs	r1, #2
    1d86:	430a      	orrs	r2, r1
    1d88:	659a      	str	r2, [r3, #88]	; 0x58
    1d8a:	4b12      	ldr	r3, [pc, #72]	; (1dd4 <TimerConfig+0x6c>)
    1d8c:	4a11      	ldr	r2, [pc, #68]	; (1dd4 <TimerConfig+0x6c>)
    1d8e:	68d2      	ldr	r2, [r2, #12]
    1d90:	2101      	movs	r1, #1
    1d92:	430a      	orrs	r2, r1
    1d94:	60da      	str	r2, [r3, #12]
    1d96:	200e      	movs	r0, #14
    1d98:	f7ff fdfc 	bl	1994 <__NVIC_EnableIRQ>
    1d9c:	4b0f      	ldr	r3, [pc, #60]	; (1ddc <TimerConfig+0x74>)
    1d9e:	2200      	movs	r2, #0
    1da0:	601a      	str	r2, [r3, #0]
    1da2:	4b0e      	ldr	r3, [pc, #56]	; (1ddc <TimerConfig+0x74>)
    1da4:	225f      	movs	r2, #95	; 0x5f
    1da6:	605a      	str	r2, [r3, #4]
    1da8:	4b0c      	ldr	r3, [pc, #48]	; (1ddc <TimerConfig+0x74>)
    1daa:	22ee      	movs	r2, #238	; 0xee
    1dac:	0092      	lsls	r2, r2, #2
    1dae:	609a      	str	r2, [r3, #8]
    1db0:	4b0a      	ldr	r3, [pc, #40]	; (1ddc <TimerConfig+0x74>)
    1db2:	4a0a      	ldr	r2, [pc, #40]	; (1ddc <TimerConfig+0x74>)
    1db4:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1db6:	2102      	movs	r1, #2
    1db8:	430a      	orrs	r2, r1
    1dba:	659a      	str	r2, [r3, #88]	; 0x58
    1dbc:	4b07      	ldr	r3, [pc, #28]	; (1ddc <TimerConfig+0x74>)
    1dbe:	4a07      	ldr	r2, [pc, #28]	; (1ddc <TimerConfig+0x74>)
    1dc0:	68d2      	ldr	r2, [r2, #12]
    1dc2:	2101      	movs	r1, #1
    1dc4:	430a      	orrs	r2, r1
    1dc6:	60da      	str	r2, [r3, #12]
    1dc8:	200f      	movs	r0, #15
    1dca:	f7ff fde3 	bl	1994 <__NVIC_EnableIRQ>
    1dce:	46c0      	nop			; (mov r8, r8)
    1dd0:	46bd      	mov	sp, r7
    1dd2:	bd80      	pop	{r7, pc}
    1dd4:	40070000 	.word	0x40070000
    1dd8:	0001869f 	.word	0x0001869f
    1ddc:	40078000 	.word	0x40078000

00001de0 <SystemInit>:
    1de0:	b580      	push	{r7, lr}
    1de2:	af00      	add	r7, sp, #0
    1de4:	f7ff ff18 	bl	1c18 <ClkConfig>
    1de8:	f7ff fe78 	bl	1adc <PortConfig>
    1dec:	f7ff ffbc 	bl	1d68 <TimerConfig>
    1df0:	2100      	movs	r1, #0
    1df2:	2012      	movs	r0, #18
    1df4:	f7ff fe04 	bl	1a00 <__NVIC_SetPriority>
    1df8:	2101      	movs	r1, #1
    1dfa:	200e      	movs	r0, #14
    1dfc:	f7ff fe00 	bl	1a00 <__NVIC_SetPriority>
    1e00:	2301      	movs	r3, #1
    1e02:	425b      	negs	r3, r3
    1e04:	2103      	movs	r1, #3
    1e06:	0018      	movs	r0, r3
    1e08:	f7ff fdfa 	bl	1a00 <__NVIC_SetPriority>
    1e0c:	46c0      	nop			; (mov r8, r8)
    1e0e:	46bd      	mov	sp, r7
    1e10:	bd80      	pop	{r7, pc}
    1e12:	46c0      	nop			; (mov r8, r8)

00001e14 <__NVIC_EnableIRQ>:
    1e14:	b580      	push	{r7, lr}
    1e16:	b082      	sub	sp, #8
    1e18:	af00      	add	r7, sp, #0
    1e1a:	0002      	movs	r2, r0
    1e1c:	1dfb      	adds	r3, r7, #7
    1e1e:	701a      	strb	r2, [r3, #0]
    1e20:	1dfb      	adds	r3, r7, #7
    1e22:	781b      	ldrb	r3, [r3, #0]
    1e24:	2b7f      	cmp	r3, #127	; 0x7f
    1e26:	d809      	bhi.n	1e3c <__NVIC_EnableIRQ+0x28>
    1e28:	4b06      	ldr	r3, [pc, #24]	; (1e44 <__NVIC_EnableIRQ+0x30>)
    1e2a:	1dfa      	adds	r2, r7, #7
    1e2c:	7812      	ldrb	r2, [r2, #0]
    1e2e:	0011      	movs	r1, r2
    1e30:	221f      	movs	r2, #31
    1e32:	400a      	ands	r2, r1
    1e34:	2101      	movs	r1, #1
    1e36:	4091      	lsls	r1, r2
    1e38:	000a      	movs	r2, r1
    1e3a:	601a      	str	r2, [r3, #0]
    1e3c:	46c0      	nop			; (mov r8, r8)
    1e3e:	46bd      	mov	sp, r7
    1e40:	b002      	add	sp, #8
    1e42:	bd80      	pop	{r7, pc}
    1e44:	e000e100 	.word	0xe000e100

00001e48 <RemoteMacInit>:
    1e48:	b580      	push	{r7, lr}
    1e4a:	af00      	add	r7, sp, #0
    1e4c:	4b0a      	ldr	r3, [pc, #40]	; (1e78 <RemoteMacInit+0x30>)
    1e4e:	2200      	movs	r2, #0
    1e50:	801a      	strh	r2, [r3, #0]
    1e52:	4b09      	ldr	r3, [pc, #36]	; (1e78 <RemoteMacInit+0x30>)
    1e54:	2200      	movs	r2, #0
    1e56:	805a      	strh	r2, [r3, #2]
    1e58:	4b07      	ldr	r3, [pc, #28]	; (1e78 <RemoteMacInit+0x30>)
    1e5a:	2200      	movs	r2, #0
    1e5c:	809a      	strh	r2, [r3, #4]
    1e5e:	4b06      	ldr	r3, [pc, #24]	; (1e78 <RemoteMacInit+0x30>)
    1e60:	2200      	movs	r2, #0
    1e62:	80da      	strh	r2, [r3, #6]
    1e64:	4b04      	ldr	r3, [pc, #16]	; (1e78 <RemoteMacInit+0x30>)
    1e66:	2200      	movs	r2, #0
    1e68:	811a      	strh	r2, [r3, #8]
    1e6a:	4b03      	ldr	r3, [pc, #12]	; (1e78 <RemoteMacInit+0x30>)
    1e6c:	2200      	movs	r2, #0
    1e6e:	815a      	strh	r2, [r3, #10]
    1e70:	46c0      	nop			; (mov r8, r8)
    1e72:	46bd      	mov	sp, r7
    1e74:	bd80      	pop	{r7, pc}
    1e76:	46c0      	nop			; (mov r8, r8)
    1e78:	20004d1c 	.word	0x20004d1c

00001e7c <PHYInit>:
    1e7c:	b580      	push	{r7, lr}
    1e7e:	b084      	sub	sp, #16
    1e80:	af00      	add	r7, sp, #0
    1e82:	0002      	movs	r2, r0
    1e84:	1dfb      	adds	r3, r7, #7
    1e86:	701a      	strb	r2, [r3, #0]
    1e88:	1dbb      	adds	r3, r7, #6
    1e8a:	1c0a      	adds	r2, r1, #0
    1e8c:	701a      	strb	r2, [r3, #0]
    1e8e:	23c0      	movs	r3, #192	; 0xc0
    1e90:	059b      	lsls	r3, r3, #22
    1e92:	8e9b      	ldrh	r3, [r3, #52]	; 0x34
    1e94:	b29b      	uxth	r3, r3
    1e96:	60fb      	str	r3, [r7, #12]
    1e98:	68fa      	ldr	r2, [r7, #12]
    1e9a:	23ee      	movs	r3, #238	; 0xee
    1e9c:	00db      	lsls	r3, r3, #3
    1e9e:	4013      	ands	r3, r2
    1ea0:	60fb      	str	r3, [r7, #12]
    1ea2:	1dfb      	adds	r3, r7, #7
    1ea4:	781b      	ldrb	r3, [r3, #0]
    1ea6:	02da      	lsls	r2, r3, #11
    1ea8:	1dbb      	adds	r3, r7, #6
    1eaa:	781b      	ldrb	r3, [r3, #0]
    1eac:	005b      	lsls	r3, r3, #1
    1eae:	4313      	orrs	r3, r2
    1eb0:	001a      	movs	r2, r3
    1eb2:	68fb      	ldr	r3, [r7, #12]
    1eb4:	4313      	orrs	r3, r2
    1eb6:	2201      	movs	r2, #1
    1eb8:	4313      	orrs	r3, r2
    1eba:	60fb      	str	r3, [r7, #12]
    1ebc:	23c0      	movs	r3, #192	; 0xc0
    1ebe:	059b      	lsls	r3, r3, #22
    1ec0:	68fa      	ldr	r2, [r7, #12]
    1ec2:	b292      	uxth	r2, r2
    1ec4:	869a      	strh	r2, [r3, #52]	; 0x34
    1ec6:	46c0      	nop			; (mov r8, r8)
    1ec8:	23c0      	movs	r3, #192	; 0xc0
    1eca:	059b      	lsls	r3, r3, #22
    1ecc:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    1ece:	b29b      	uxth	r3, r3
    1ed0:	001a      	movs	r2, r3
    1ed2:	2310      	movs	r3, #16
    1ed4:	4013      	ands	r3, r2
    1ed6:	d0f7      	beq.n	1ec8 <PHYInit+0x4c>
    1ed8:	46c0      	nop			; (mov r8, r8)
    1eda:	46bd      	mov	sp, r7
    1edc:	b004      	add	sp, #16
    1ede:	bd80      	pop	{r7, pc}

00001ee0 <SetPHYReg>:
    1ee0:	b590      	push	{r4, r7, lr}
    1ee2:	b085      	sub	sp, #20
    1ee4:	af00      	add	r7, sp, #0
    1ee6:	0004      	movs	r4, r0
    1ee8:	0008      	movs	r0, r1
    1eea:	0011      	movs	r1, r2
    1eec:	1dfb      	adds	r3, r7, #7
    1eee:	1c22      	adds	r2, r4, #0
    1ef0:	701a      	strb	r2, [r3, #0]
    1ef2:	1dbb      	adds	r3, r7, #6
    1ef4:	1c02      	adds	r2, r0, #0
    1ef6:	701a      	strb	r2, [r3, #0]
    1ef8:	1d3b      	adds	r3, r7, #4
    1efa:	1c0a      	adds	r2, r1, #0
    1efc:	801a      	strh	r2, [r3, #0]
    1efe:	23c0      	movs	r3, #192	; 0xc0
    1f00:	059b      	lsls	r3, r3, #22
    1f02:	1d3a      	adds	r2, r7, #4
    1f04:	8812      	ldrh	r2, [r2, #0]
    1f06:	84da      	strh	r2, [r3, #38]	; 0x26
    1f08:	1dfb      	adds	r3, r7, #7
    1f0a:	781b      	ldrb	r3, [r3, #0]
    1f0c:	021a      	lsls	r2, r3, #8
    1f0e:	23f8      	movs	r3, #248	; 0xf8
    1f10:	015b      	lsls	r3, r3, #5
    1f12:	4013      	ands	r3, r2
    1f14:	22c0      	movs	r2, #192	; 0xc0
    1f16:	0212      	lsls	r2, r2, #8
    1f18:	431a      	orrs	r2, r3
    1f1a:	1dbb      	adds	r3, r7, #6
    1f1c:	781b      	ldrb	r3, [r3, #0]
    1f1e:	211f      	movs	r1, #31
    1f20:	400b      	ands	r3, r1
    1f22:	4313      	orrs	r3, r2
    1f24:	2220      	movs	r2, #32
    1f26:	4313      	orrs	r3, r2
    1f28:	60fb      	str	r3, [r7, #12]
    1f2a:	23c0      	movs	r3, #192	; 0xc0
    1f2c:	059b      	lsls	r3, r3, #22
    1f2e:	68fa      	ldr	r2, [r7, #12]
    1f30:	b292      	uxth	r2, r2
    1f32:	849a      	strh	r2, [r3, #36]	; 0x24
    1f34:	46c0      	nop			; (mov r8, r8)
    1f36:	23c0      	movs	r3, #192	; 0xc0
    1f38:	059b      	lsls	r3, r3, #22
    1f3a:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1f3c:	b29b      	uxth	r3, r3
    1f3e:	b21b      	sxth	r3, r3
    1f40:	2b00      	cmp	r3, #0
    1f42:	daf8      	bge.n	1f36 <SetPHYReg+0x56>
    1f44:	46c0      	nop			; (mov r8, r8)
    1f46:	46bd      	mov	sp, r7
    1f48:	b005      	add	sp, #20
    1f4a:	bd90      	pop	{r4, r7, pc}

00001f4c <GetPHYReg>:
    1f4c:	b580      	push	{r7, lr}
    1f4e:	b084      	sub	sp, #16
    1f50:	af00      	add	r7, sp, #0
    1f52:	0002      	movs	r2, r0
    1f54:	1dfb      	adds	r3, r7, #7
    1f56:	701a      	strb	r2, [r3, #0]
    1f58:	1dbb      	adds	r3, r7, #6
    1f5a:	1c0a      	adds	r2, r1, #0
    1f5c:	701a      	strb	r2, [r3, #0]
    1f5e:	1dfb      	adds	r3, r7, #7
    1f60:	781b      	ldrb	r3, [r3, #0]
    1f62:	021a      	lsls	r2, r3, #8
    1f64:	23f8      	movs	r3, #248	; 0xf8
    1f66:	015b      	lsls	r3, r3, #5
    1f68:	4013      	ands	r3, r2
    1f6a:	4a0e      	ldr	r2, [pc, #56]	; (1fa4 <GetPHYReg+0x58>)
    1f6c:	431a      	orrs	r2, r3
    1f6e:	1dbb      	adds	r3, r7, #6
    1f70:	781b      	ldrb	r3, [r3, #0]
    1f72:	211f      	movs	r1, #31
    1f74:	400b      	ands	r3, r1
    1f76:	4313      	orrs	r3, r2
    1f78:	60fb      	str	r3, [r7, #12]
    1f7a:	23c0      	movs	r3, #192	; 0xc0
    1f7c:	059b      	lsls	r3, r3, #22
    1f7e:	68fa      	ldr	r2, [r7, #12]
    1f80:	b292      	uxth	r2, r2
    1f82:	849a      	strh	r2, [r3, #36]	; 0x24
    1f84:	46c0      	nop			; (mov r8, r8)
    1f86:	23c0      	movs	r3, #192	; 0xc0
    1f88:	059b      	lsls	r3, r3, #22
    1f8a:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1f8c:	b29b      	uxth	r3, r3
    1f8e:	b21b      	sxth	r3, r3
    1f90:	2b00      	cmp	r3, #0
    1f92:	daf8      	bge.n	1f86 <GetPHYReg+0x3a>
    1f94:	23c0      	movs	r3, #192	; 0xc0
    1f96:	059b      	lsls	r3, r3, #22
    1f98:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    1f9a:	b29b      	uxth	r3, r3
    1f9c:	0018      	movs	r0, r3
    1f9e:	46bd      	mov	sp, r7
    1fa0:	b004      	add	sp, #16
    1fa2:	bd80      	pop	{r7, pc}
    1fa4:	0000e020 	.word	0x0000e020

00001fa8 <EthernetConfig>:
    1fa8:	b580      	push	{r7, lr}
    1faa:	b082      	sub	sp, #8
    1fac:	af00      	add	r7, sp, #0
    1fae:	2103      	movs	r1, #3
    1fb0:	201c      	movs	r0, #28
    1fb2:	f7ff ff63 	bl	1e7c <PHYInit>
    1fb6:	23c0      	movs	r3, #192	; 0xc0
    1fb8:	059b      	lsls	r3, r3, #22
    1fba:	4a12      	ldr	r2, [pc, #72]	; (2004 <EthernetConfig+0x5c>)
    1fbc:	8812      	ldrh	r2, [r2, #0]
    1fbe:	805a      	strh	r2, [r3, #2]
    1fc0:	23c0      	movs	r3, #192	; 0xc0
    1fc2:	059b      	lsls	r3, r3, #22
    1fc4:	4a0f      	ldr	r2, [pc, #60]	; (2004 <EthernetConfig+0x5c>)
    1fc6:	8852      	ldrh	r2, [r2, #2]
    1fc8:	809a      	strh	r2, [r3, #4]
    1fca:	23c0      	movs	r3, #192	; 0xc0
    1fcc:	059b      	lsls	r3, r3, #22
    1fce:	4a0d      	ldr	r2, [pc, #52]	; (2004 <EthernetConfig+0x5c>)
    1fd0:	8892      	ldrh	r2, [r2, #4]
    1fd2:	80da      	strh	r2, [r3, #6]
    1fd4:	f000 f81e 	bl	2014 <MACReset>
    1fd8:	23c0      	movs	r3, #192	; 0xc0
    1fda:	059b      	lsls	r3, r3, #22
    1fdc:	2207      	movs	r2, #7
    1fde:	841a      	strh	r2, [r3, #32]
    1fe0:	2012      	movs	r0, #18
    1fe2:	f7ff ff17 	bl	1e14 <__NVIC_EnableIRQ>
    1fe6:	4b08      	ldr	r3, [pc, #32]	; (2008 <EthernetConfig+0x60>)
    1fe8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1fea:	607b      	str	r3, [r7, #4]
    1fec:	687b      	ldr	r3, [r7, #4]
    1fee:	b29a      	uxth	r2, r3
    1ff0:	4b06      	ldr	r3, [pc, #24]	; (200c <EthernetConfig+0x64>)
    1ff2:	801a      	strh	r2, [r3, #0]
    1ff4:	687b      	ldr	r3, [r7, #4]
    1ff6:	b29a      	uxth	r2, r3
    1ff8:	4b05      	ldr	r3, [pc, #20]	; (2010 <EthernetConfig+0x68>)
    1ffa:	801a      	strh	r2, [r3, #0]
    1ffc:	46c0      	nop			; (mov r8, r8)
    1ffe:	46bd      	mov	sp, r7
    2000:	b002      	add	sp, #8
    2002:	bd80      	pop	{r7, pc}
    2004:	20000004 	.word	0x20000004
    2008:	400d8000 	.word	0x400d8000
    200c:	20004d30 	.word	0x20004d30
    2010:	20004d32 	.word	0x20004d32

00002014 <MACReset>:
    2014:	b580      	push	{r7, lr}
    2016:	af00      	add	r7, sp, #0
    2018:	23c0      	movs	r3, #192	; 0xc0
    201a:	059b      	lsls	r3, r3, #22
    201c:	22c0      	movs	r2, #192	; 0xc0
    201e:	0592      	lsls	r2, r2, #22
    2020:	8bd2      	ldrh	r2, [r2, #30]
    2022:	b292      	uxth	r2, r2
    2024:	2103      	movs	r1, #3
    2026:	430a      	orrs	r2, r1
    2028:	b292      	uxth	r2, r2
    202a:	83da      	strh	r2, [r3, #30]
    202c:	f000 f86a 	bl	2104 <ClearMemory>
    2030:	23c0      	movs	r3, #192	; 0xc0
    2032:	059b      	lsls	r3, r3, #22
    2034:	2280      	movs	r2, #128	; 0x80
    2036:	0152      	lsls	r2, r2, #5
    2038:	801a      	strh	r2, [r3, #0]
    203a:	23c0      	movs	r3, #192	; 0xc0
    203c:	059b      	lsls	r3, r3, #22
    203e:	2200      	movs	r2, #0
    2040:	811a      	strh	r2, [r3, #8]
    2042:	23c0      	movs	r3, #192	; 0xc0
    2044:	059b      	lsls	r3, r3, #22
    2046:	2200      	movs	r2, #0
    2048:	815a      	strh	r2, [r3, #10]
    204a:	23c0      	movs	r3, #192	; 0xc0
    204c:	059b      	lsls	r3, r3, #22
    204e:	2200      	movs	r2, #0
    2050:	819a      	strh	r2, [r3, #12]
    2052:	23c0      	movs	r3, #192	; 0xc0
    2054:	059b      	lsls	r3, r3, #22
    2056:	4a26      	ldr	r2, [pc, #152]	; (20f0 <MACReset+0xdc>)
    2058:	81da      	strh	r2, [r3, #14]
    205a:	23c0      	movs	r3, #192	; 0xc0
    205c:	059b      	lsls	r3, r3, #22
    205e:	2260      	movs	r2, #96	; 0x60
    2060:	821a      	strh	r2, [r3, #16]
    2062:	23c0      	movs	r3, #192	; 0xc0
    2064:	059b      	lsls	r3, r3, #22
    2066:	2250      	movs	r2, #80	; 0x50
    2068:	825a      	strh	r2, [r3, #18]
    206a:	23c0      	movs	r3, #192	; 0xc0
    206c:	059b      	lsls	r3, r3, #22
    206e:	2280      	movs	r2, #128	; 0x80
    2070:	0092      	lsls	r2, r2, #2
    2072:	829a      	strh	r2, [r3, #20]
    2074:	23c0      	movs	r3, #192	; 0xc0
    2076:	059b      	lsls	r3, r3, #22
    2078:	2205      	movs	r2, #5
    207a:	82da      	strh	r2, [r3, #22]
    207c:	23c0      	movs	r3, #192	; 0xc0
    207e:	059b      	lsls	r3, r3, #22
    2080:	4a1c      	ldr	r2, [pc, #112]	; (20f4 <MACReset+0xe0>)
    2082:	831a      	strh	r2, [r3, #24]
    2084:	23c0      	movs	r3, #192	; 0xc0
    2086:	059b      	lsls	r3, r3, #22
    2088:	4a1b      	ldr	r2, [pc, #108]	; (20f8 <MACReset+0xe4>)
    208a:	835a      	strh	r2, [r3, #26]
    208c:	23c0      	movs	r3, #192	; 0xc0
    208e:	059b      	lsls	r3, r3, #22
    2090:	2280      	movs	r2, #128	; 0x80
    2092:	839a      	strh	r2, [r3, #28]
    2094:	23c0      	movs	r3, #192	; 0xc0
    2096:	059b      	lsls	r3, r3, #22
    2098:	4a18      	ldr	r2, [pc, #96]	; (20fc <MACReset+0xe8>)
    209a:	83da      	strh	r2, [r3, #30]
    209c:	23c0      	movs	r3, #192	; 0xc0
    209e:	059b      	lsls	r3, r3, #22
    20a0:	2200      	movs	r2, #0
    20a2:	841a      	strh	r2, [r3, #32]
    20a4:	23c0      	movs	r3, #192	; 0xc0
    20a6:	059b      	lsls	r3, r3, #22
    20a8:	2201      	movs	r2, #1
    20aa:	4252      	negs	r2, r2
    20ac:	845a      	strh	r2, [r3, #34]	; 0x22
    20ae:	23c0      	movs	r3, #192	; 0xc0
    20b0:	059b      	lsls	r3, r3, #22
    20b2:	2200      	movs	r2, #0
    20b4:	851a      	strh	r2, [r3, #40]	; 0x28
    20b6:	23c0      	movs	r3, #192	; 0xc0
    20b8:	059b      	lsls	r3, r3, #22
    20ba:	2280      	movs	r2, #128	; 0x80
    20bc:	0152      	lsls	r2, r2, #5
    20be:	855a      	strh	r2, [r3, #42]	; 0x2a
    20c0:	23c0      	movs	r3, #192	; 0xc0
    20c2:	059b      	lsls	r3, r3, #22
    20c4:	22c0      	movs	r2, #192	; 0xc0
    20c6:	0592      	lsls	r2, r2, #22
    20c8:	8b92      	ldrh	r2, [r2, #28]
    20ca:	b292      	uxth	r2, r2
    20cc:	490c      	ldr	r1, [pc, #48]	; (2100 <MACReset+0xec>)
    20ce:	400a      	ands	r2, r1
    20d0:	b292      	uxth	r2, r2
    20d2:	839a      	strh	r2, [r3, #28]
    20d4:	23c0      	movs	r3, #192	; 0xc0
    20d6:	059b      	lsls	r3, r3, #22
    20d8:	22c0      	movs	r2, #192	; 0xc0
    20da:	0592      	lsls	r2, r2, #22
    20dc:	8bd2      	ldrh	r2, [r2, #30]
    20de:	b292      	uxth	r2, r2
    20e0:	2103      	movs	r1, #3
    20e2:	438a      	bics	r2, r1
    20e4:	b292      	uxth	r2, r2
    20e6:	83da      	strh	r2, [r3, #30]
    20e8:	46c0      	nop			; (mov r8, r8)
    20ea:	46bd      	mov	sp, r7
    20ec:	bd80      	pop	{r7, pc}
    20ee:	46c0      	nop			; (mov r8, r8)
    20f0:	ffff8000 	.word	0xffff8000
    20f4:	ffff8606 	.word	0xffff8606
    20f8:	ffff81fa 	.word	0xffff81fa
    20fc:	00003003 	.word	0x00003003
    2100:	ffffbfff 	.word	0xffffbfff

00002104 <ClearMemory>:
    2104:	b580      	push	{r7, lr}
    2106:	b082      	sub	sp, #8
    2108:	af00      	add	r7, sp, #0
    210a:	23e0      	movs	r3, #224	; 0xe0
    210c:	059b      	lsls	r3, r3, #22
    210e:	603b      	str	r3, [r7, #0]
    2110:	2300      	movs	r3, #0
    2112:	607b      	str	r3, [r7, #4]
    2114:	e007      	b.n	2126 <ClearMemory+0x22>
    2116:	683b      	ldr	r3, [r7, #0]
    2118:	1d1a      	adds	r2, r3, #4
    211a:	603a      	str	r2, [r7, #0]
    211c:	2200      	movs	r2, #0
    211e:	601a      	str	r2, [r3, #0]
    2120:	687b      	ldr	r3, [r7, #4]
    2122:	3301      	adds	r3, #1
    2124:	607b      	str	r3, [r7, #4]
    2126:	687b      	ldr	r3, [r7, #4]
    2128:	4a03      	ldr	r2, [pc, #12]	; (2138 <ClearMemory+0x34>)
    212a:	4293      	cmp	r3, r2
    212c:	d9f3      	bls.n	2116 <ClearMemory+0x12>
    212e:	46c0      	nop			; (mov r8, r8)
    2130:	46bd      	mov	sp, r7
    2132:	b002      	add	sp, #8
    2134:	bd80      	pop	{r7, pc}
    2136:	46c0      	nop			; (mov r8, r8)
    2138:	000007ff 	.word	0x000007ff

0000213c <ReadPacket>:
    213c:	b580      	push	{r7, lr}
    213e:	b08a      	sub	sp, #40	; 0x28
    2140:	af00      	add	r7, sp, #0
    2142:	6078      	str	r0, [r7, #4]
    2144:	2316      	movs	r3, #22
    2146:	18fb      	adds	r3, r7, r3
    2148:	2200      	movs	r2, #0
    214a:	801a      	strh	r2, [r3, #0]
    214c:	2326      	movs	r3, #38	; 0x26
    214e:	18fb      	adds	r3, r7, r3
    2150:	2200      	movs	r2, #0
    2152:	801a      	strh	r2, [r3, #0]
    2154:	4b71      	ldr	r3, [pc, #452]	; (231c <ReadPacket+0x1e0>)
    2156:	681a      	ldr	r2, [r3, #0]
    2158:	2301      	movs	r3, #1
    215a:	425b      	negs	r3, r3
    215c:	0019      	movs	r1, r3
    215e:	0010      	movs	r0, r2
    2160:	f004 f964 	bl	642c <osMutexWait>
    2164:	23c0      	movs	r3, #192	; 0xc0
    2166:	059a      	lsls	r2, r3, #22
    2168:	2314      	movs	r3, #20
    216a:	18fb      	adds	r3, r7, r3
    216c:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    216e:	801a      	strh	r2, [r3, #0]
    2170:	23c0      	movs	r3, #192	; 0xc0
    2172:	059a      	lsls	r2, r3, #22
    2174:	2312      	movs	r3, #18
    2176:	18fb      	adds	r3, r7, r3
    2178:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    217a:	801a      	strh	r2, [r3, #0]
    217c:	2314      	movs	r3, #20
    217e:	18fa      	adds	r2, r7, r3
    2180:	2312      	movs	r3, #18
    2182:	18fb      	adds	r3, r7, r3
    2184:	8812      	ldrh	r2, [r2, #0]
    2186:	881b      	ldrh	r3, [r3, #0]
    2188:	429a      	cmp	r2, r3
    218a:	d90e      	bls.n	21aa <ReadPacket+0x6e>
    218c:	2326      	movs	r3, #38	; 0x26
    218e:	18fb      	adds	r3, r7, r3
    2190:	2214      	movs	r2, #20
    2192:	18b9      	adds	r1, r7, r2
    2194:	2212      	movs	r2, #18
    2196:	18ba      	adds	r2, r7, r2
    2198:	8809      	ldrh	r1, [r1, #0]
    219a:	8812      	ldrh	r2, [r2, #0]
    219c:	1a8a      	subs	r2, r1, r2
    219e:	801a      	strh	r2, [r3, #0]
    21a0:	2316      	movs	r3, #22
    21a2:	18fb      	adds	r3, r7, r3
    21a4:	2200      	movs	r2, #0
    21a6:	801a      	strh	r2, [r3, #0]
    21a8:	e00e      	b.n	21c8 <ReadPacket+0x8c>
    21aa:	2326      	movs	r3, #38	; 0x26
    21ac:	18fb      	adds	r3, r7, r3
    21ae:	2212      	movs	r2, #18
    21b0:	18ba      	adds	r2, r7, r2
    21b2:	8812      	ldrh	r2, [r2, #0]
    21b4:	2180      	movs	r1, #128	; 0x80
    21b6:	0149      	lsls	r1, r1, #5
    21b8:	1a8a      	subs	r2, r1, r2
    21ba:	801a      	strh	r2, [r3, #0]
    21bc:	2316      	movs	r3, #22
    21be:	18fb      	adds	r3, r7, r3
    21c0:	2214      	movs	r2, #20
    21c2:	18ba      	adds	r2, r7, r2
    21c4:	8812      	ldrh	r2, [r2, #0]
    21c6:	801a      	strh	r2, [r3, #0]
    21c8:	2312      	movs	r3, #18
    21ca:	18fb      	adds	r3, r7, r3
    21cc:	881b      	ldrh	r3, [r3, #0]
    21ce:	22e0      	movs	r2, #224	; 0xe0
    21d0:	0592      	lsls	r2, r2, #22
    21d2:	4694      	mov	ip, r2
    21d4:	4463      	add	r3, ip
    21d6:	623b      	str	r3, [r7, #32]
    21d8:	687b      	ldr	r3, [r7, #4]
    21da:	61fb      	str	r3, [r7, #28]
    21dc:	2308      	movs	r3, #8
    21de:	18fa      	adds	r2, r7, r3
    21e0:	6a3b      	ldr	r3, [r7, #32]
    21e2:	1d19      	adds	r1, r3, #4
    21e4:	6239      	str	r1, [r7, #32]
    21e6:	681b      	ldr	r3, [r3, #0]
    21e8:	6013      	str	r3, [r2, #0]
    21ea:	2308      	movs	r3, #8
    21ec:	18fb      	adds	r3, r7, r3
    21ee:	881b      	ldrh	r3, [r3, #0]
    21f0:	3303      	adds	r3, #3
    21f2:	2b00      	cmp	r3, #0
    21f4:	da00      	bge.n	21f8 <ReadPacket+0xbc>
    21f6:	3303      	adds	r3, #3
    21f8:	109b      	asrs	r3, r3, #2
    21fa:	60fb      	str	r3, [r7, #12]
    21fc:	2326      	movs	r3, #38	; 0x26
    21fe:	18fb      	adds	r3, r7, r3
    2200:	2226      	movs	r2, #38	; 0x26
    2202:	18ba      	adds	r2, r7, r2
    2204:	8812      	ldrh	r2, [r2, #0]
    2206:	3a04      	subs	r2, #4
    2208:	801a      	strh	r2, [r3, #0]
    220a:	6a3b      	ldr	r3, [r7, #32]
    220c:	b29b      	uxth	r3, r3
    220e:	4a44      	ldr	r2, [pc, #272]	; (2320 <ReadPacket+0x1e4>)
    2210:	4293      	cmp	r3, r2
    2212:	d902      	bls.n	221a <ReadPacket+0xde>
    2214:	23e0      	movs	r3, #224	; 0xe0
    2216:	059b      	lsls	r3, r3, #22
    2218:	623b      	str	r3, [r7, #32]
    221a:	2308      	movs	r3, #8
    221c:	18fb      	adds	r3, r7, r3
    221e:	881b      	ldrh	r3, [r3, #0]
    2220:	2226      	movs	r2, #38	; 0x26
    2222:	18ba      	adds	r2, r7, r2
    2224:	8812      	ldrh	r2, [r2, #0]
    2226:	429a      	cmp	r2, r3
    2228:	d312      	bcc.n	2250 <ReadPacket+0x114>
    222a:	2300      	movs	r3, #0
    222c:	61bb      	str	r3, [r7, #24]
    222e:	e00a      	b.n	2246 <ReadPacket+0x10a>
    2230:	69fb      	ldr	r3, [r7, #28]
    2232:	1d1a      	adds	r2, r3, #4
    2234:	61fa      	str	r2, [r7, #28]
    2236:	6a3a      	ldr	r2, [r7, #32]
    2238:	1d11      	adds	r1, r2, #4
    223a:	6239      	str	r1, [r7, #32]
    223c:	6812      	ldr	r2, [r2, #0]
    223e:	601a      	str	r2, [r3, #0]
    2240:	69bb      	ldr	r3, [r7, #24]
    2242:	3301      	adds	r3, #1
    2244:	61bb      	str	r3, [r7, #24]
    2246:	69ba      	ldr	r2, [r7, #24]
    2248:	68fb      	ldr	r3, [r7, #12]
    224a:	429a      	cmp	r2, r3
    224c:	d3f0      	bcc.n	2230 <ReadPacket+0xf4>
    224e:	e034      	b.n	22ba <ReadPacket+0x17e>
    2250:	2326      	movs	r3, #38	; 0x26
    2252:	18fb      	adds	r3, r7, r3
    2254:	881b      	ldrh	r3, [r3, #0]
    2256:	089b      	lsrs	r3, r3, #2
    2258:	b29b      	uxth	r3, r3
    225a:	001a      	movs	r2, r3
    225c:	68fb      	ldr	r3, [r7, #12]
    225e:	1a9b      	subs	r3, r3, r2
    2260:	60fb      	str	r3, [r7, #12]
    2262:	2300      	movs	r3, #0
    2264:	61bb      	str	r3, [r7, #24]
    2266:	e00a      	b.n	227e <ReadPacket+0x142>
    2268:	69fb      	ldr	r3, [r7, #28]
    226a:	1d1a      	adds	r2, r3, #4
    226c:	61fa      	str	r2, [r7, #28]
    226e:	6a3a      	ldr	r2, [r7, #32]
    2270:	1d11      	adds	r1, r2, #4
    2272:	6239      	str	r1, [r7, #32]
    2274:	6812      	ldr	r2, [r2, #0]
    2276:	601a      	str	r2, [r3, #0]
    2278:	69bb      	ldr	r3, [r7, #24]
    227a:	3301      	adds	r3, #1
    227c:	61bb      	str	r3, [r7, #24]
    227e:	2326      	movs	r3, #38	; 0x26
    2280:	18fb      	adds	r3, r7, r3
    2282:	881b      	ldrh	r3, [r3, #0]
    2284:	089b      	lsrs	r3, r3, #2
    2286:	b29b      	uxth	r3, r3
    2288:	001a      	movs	r2, r3
    228a:	69bb      	ldr	r3, [r7, #24]
    228c:	429a      	cmp	r2, r3
    228e:	d8eb      	bhi.n	2268 <ReadPacket+0x12c>
    2290:	23e0      	movs	r3, #224	; 0xe0
    2292:	059b      	lsls	r3, r3, #22
    2294:	623b      	str	r3, [r7, #32]
    2296:	2300      	movs	r3, #0
    2298:	61bb      	str	r3, [r7, #24]
    229a:	e00a      	b.n	22b2 <ReadPacket+0x176>
    229c:	69fb      	ldr	r3, [r7, #28]
    229e:	1d1a      	adds	r2, r3, #4
    22a0:	61fa      	str	r2, [r7, #28]
    22a2:	6a3a      	ldr	r2, [r7, #32]
    22a4:	1d11      	adds	r1, r2, #4
    22a6:	6239      	str	r1, [r7, #32]
    22a8:	6812      	ldr	r2, [r2, #0]
    22aa:	601a      	str	r2, [r3, #0]
    22ac:	69bb      	ldr	r3, [r7, #24]
    22ae:	3301      	adds	r3, #1
    22b0:	61bb      	str	r3, [r7, #24]
    22b2:	69ba      	ldr	r2, [r7, #24]
    22b4:	68fb      	ldr	r3, [r7, #12]
    22b6:	429a      	cmp	r2, r3
    22b8:	d3f0      	bcc.n	229c <ReadPacket+0x160>
    22ba:	6a3b      	ldr	r3, [r7, #32]
    22bc:	b29b      	uxth	r3, r3
    22be:	4a18      	ldr	r2, [pc, #96]	; (2320 <ReadPacket+0x1e4>)
    22c0:	4293      	cmp	r3, r2
    22c2:	d902      	bls.n	22ca <ReadPacket+0x18e>
    22c4:	23e0      	movs	r3, #224	; 0xe0
    22c6:	059b      	lsls	r3, r3, #22
    22c8:	623b      	str	r3, [r7, #32]
    22ca:	23c0      	movs	r3, #192	; 0xc0
    22cc:	059b      	lsls	r3, r3, #22
    22ce:	6a3a      	ldr	r2, [r7, #32]
    22d0:	b292      	uxth	r2, r2
    22d2:	851a      	strh	r2, [r3, #40]	; 0x28
    22d4:	23c0      	movs	r3, #192	; 0xc0
    22d6:	059b      	lsls	r3, r3, #22
    22d8:	22c0      	movs	r2, #192	; 0xc0
    22da:	0592      	lsls	r2, r2, #22
    22dc:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    22de:	b292      	uxth	r2, r2
    22e0:	3a20      	subs	r2, #32
    22e2:	b292      	uxth	r2, r2
    22e4:	861a      	strh	r2, [r3, #48]	; 0x30
    22e6:	687b      	ldr	r3, [r7, #4]
    22e8:	88da      	ldrh	r2, [r3, #6]
    22ea:	4b0e      	ldr	r3, [pc, #56]	; (2324 <ReadPacket+0x1e8>)
    22ec:	801a      	strh	r2, [r3, #0]
    22ee:	687b      	ldr	r3, [r7, #4]
    22f0:	891a      	ldrh	r2, [r3, #8]
    22f2:	4b0c      	ldr	r3, [pc, #48]	; (2324 <ReadPacket+0x1e8>)
    22f4:	805a      	strh	r2, [r3, #2]
    22f6:	687b      	ldr	r3, [r7, #4]
    22f8:	895a      	ldrh	r2, [r3, #10]
    22fa:	4b0a      	ldr	r3, [pc, #40]	; (2324 <ReadPacket+0x1e8>)
    22fc:	809a      	strh	r2, [r3, #4]
    22fe:	4b09      	ldr	r3, [pc, #36]	; (2324 <ReadPacket+0x1e8>)
    2300:	2201      	movs	r2, #1
    2302:	815a      	strh	r2, [r3, #10]
    2304:	4b05      	ldr	r3, [pc, #20]	; (231c <ReadPacket+0x1e0>)
    2306:	681b      	ldr	r3, [r3, #0]
    2308:	0018      	movs	r0, r3
    230a:	f004 f89f 	bl	644c <osMutexRelease>
    230e:	2308      	movs	r3, #8
    2310:	18fb      	adds	r3, r7, r3
    2312:	881b      	ldrh	r3, [r3, #0]
    2314:	0018      	movs	r0, r3
    2316:	46bd      	mov	sp, r7
    2318:	b00a      	add	sp, #40	; 0x28
    231a:	bd80      	pop	{r7, pc}
    231c:	2000532c 	.word	0x2000532c
    2320:	00000fff 	.word	0x00000fff
    2324:	20004d1c 	.word	0x20004d1c

00002328 <SendPacket>:
    2328:	b580      	push	{r7, lr}
    232a:	b08a      	sub	sp, #40	; 0x28
    232c:	af00      	add	r7, sp, #0
    232e:	6078      	str	r0, [r7, #4]
    2330:	6039      	str	r1, [r7, #0]
    2332:	4b79      	ldr	r3, [pc, #484]	; (2518 <SendPacket+0x1f0>)
    2334:	681a      	ldr	r2, [r3, #0]
    2336:	2301      	movs	r3, #1
    2338:	425b      	negs	r3, r3
    233a:	0019      	movs	r1, r3
    233c:	0010      	movs	r0, r2
    233e:	f004 f875 	bl	642c <osMutexWait>
    2342:	23c0      	movs	r3, #192	; 0xc0
    2344:	059b      	lsls	r3, r3, #22
    2346:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    2348:	b29b      	uxth	r3, r3
    234a:	61bb      	str	r3, [r7, #24]
    234c:	23c0      	movs	r3, #192	; 0xc0
    234e:	059b      	lsls	r3, r3, #22
    2350:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    2352:	b29b      	uxth	r3, r3
    2354:	617b      	str	r3, [r7, #20]
    2356:	69ba      	ldr	r2, [r7, #24]
    2358:	697b      	ldr	r3, [r7, #20]
    235a:	429a      	cmp	r2, r3
    235c:	d90d      	bls.n	237a <SendPacket+0x52>
    235e:	69bb      	ldr	r3, [r7, #24]
    2360:	b29a      	uxth	r2, r3
    2362:	697b      	ldr	r3, [r7, #20]
    2364:	b29b      	uxth	r3, r3
    2366:	1ad3      	subs	r3, r2, r3
    2368:	b29a      	uxth	r2, r3
    236a:	230c      	movs	r3, #12
    236c:	18fb      	adds	r3, r7, r3
    236e:	801a      	strh	r2, [r3, #0]
    2370:	230c      	movs	r3, #12
    2372:	18fb      	adds	r3, r7, r3
    2374:	2200      	movs	r2, #0
    2376:	805a      	strh	r2, [r3, #2]
    2378:	e011      	b.n	239e <SendPacket+0x76>
    237a:	697b      	ldr	r3, [r7, #20]
    237c:	b29b      	uxth	r3, r3
    237e:	2280      	movs	r2, #128	; 0x80
    2380:	0192      	lsls	r2, r2, #6
    2382:	1ad3      	subs	r3, r2, r3
    2384:	b29a      	uxth	r2, r3
    2386:	230c      	movs	r3, #12
    2388:	18fb      	adds	r3, r7, r3
    238a:	801a      	strh	r2, [r3, #0]
    238c:	69bb      	ldr	r3, [r7, #24]
    238e:	b29b      	uxth	r3, r3
    2390:	4a62      	ldr	r2, [pc, #392]	; (251c <SendPacket+0x1f4>)
    2392:	4694      	mov	ip, r2
    2394:	4463      	add	r3, ip
    2396:	b29a      	uxth	r2, r3
    2398:	230c      	movs	r3, #12
    239a:	18fb      	adds	r3, r7, r3
    239c:	805a      	strh	r2, [r3, #2]
    239e:	230c      	movs	r3, #12
    23a0:	18fb      	adds	r3, r7, r3
    23a2:	881b      	ldrh	r3, [r3, #0]
    23a4:	001a      	movs	r2, r3
    23a6:	230c      	movs	r3, #12
    23a8:	18fb      	adds	r3, r7, r3
    23aa:	885b      	ldrh	r3, [r3, #2]
    23ac:	18d3      	adds	r3, r2, r3
    23ae:	3b08      	subs	r3, #8
    23b0:	001a      	movs	r2, r3
    23b2:	683b      	ldr	r3, [r7, #0]
    23b4:	429a      	cmp	r2, r3
    23b6:	da01      	bge.n	23bc <SendPacket+0x94>
    23b8:	2300      	movs	r3, #0
    23ba:	e0a9      	b.n	2510 <SendPacket+0x1e8>
    23bc:	683b      	ldr	r3, [r7, #0]
    23be:	613b      	str	r3, [r7, #16]
    23c0:	687b      	ldr	r3, [r7, #4]
    23c2:	623b      	str	r3, [r7, #32]
    23c4:	697b      	ldr	r3, [r7, #20]
    23c6:	22e0      	movs	r2, #224	; 0xe0
    23c8:	0592      	lsls	r2, r2, #22
    23ca:	4694      	mov	ip, r2
    23cc:	4463      	add	r3, ip
    23ce:	61fb      	str	r3, [r7, #28]
    23d0:	69fb      	ldr	r3, [r7, #28]
    23d2:	1d1a      	adds	r2, r3, #4
    23d4:	61fa      	str	r2, [r7, #28]
    23d6:	693a      	ldr	r2, [r7, #16]
    23d8:	601a      	str	r2, [r3, #0]
    23da:	230c      	movs	r3, #12
    23dc:	18fb      	adds	r3, r7, r3
    23de:	881b      	ldrh	r3, [r3, #0]
    23e0:	3b04      	subs	r3, #4
    23e2:	b29a      	uxth	r2, r3
    23e4:	230c      	movs	r3, #12
    23e6:	18fb      	adds	r3, r7, r3
    23e8:	801a      	strh	r2, [r3, #0]
    23ea:	69fb      	ldr	r3, [r7, #28]
    23ec:	b29b      	uxth	r3, r3
    23ee:	4a4c      	ldr	r2, [pc, #304]	; (2520 <SendPacket+0x1f8>)
    23f0:	4293      	cmp	r3, r2
    23f2:	d901      	bls.n	23f8 <SendPacket+0xd0>
    23f4:	4b4b      	ldr	r3, [pc, #300]	; (2524 <SendPacket+0x1fc>)
    23f6:	61fb      	str	r3, [r7, #28]
    23f8:	683b      	ldr	r3, [r7, #0]
    23fa:	3303      	adds	r3, #3
    23fc:	2b00      	cmp	r3, #0
    23fe:	da00      	bge.n	2402 <SendPacket+0xda>
    2400:	3303      	adds	r3, #3
    2402:	109b      	asrs	r3, r3, #2
    2404:	613b      	str	r3, [r7, #16]
    2406:	230c      	movs	r3, #12
    2408:	18fb      	adds	r3, r7, r3
    240a:	881b      	ldrh	r3, [r3, #0]
    240c:	001a      	movs	r2, r3
    240e:	683b      	ldr	r3, [r7, #0]
    2410:	429a      	cmp	r2, r3
    2412:	db1a      	blt.n	244a <SendPacket+0x122>
    2414:	2326      	movs	r3, #38	; 0x26
    2416:	18fb      	adds	r3, r7, r3
    2418:	2200      	movs	r2, #0
    241a:	801a      	strh	r2, [r3, #0]
    241c:	e00e      	b.n	243c <SendPacket+0x114>
    241e:	69fb      	ldr	r3, [r7, #28]
    2420:	1d1a      	adds	r2, r3, #4
    2422:	61fa      	str	r2, [r7, #28]
    2424:	6a3a      	ldr	r2, [r7, #32]
    2426:	1d11      	adds	r1, r2, #4
    2428:	6239      	str	r1, [r7, #32]
    242a:	6812      	ldr	r2, [r2, #0]
    242c:	601a      	str	r2, [r3, #0]
    242e:	2326      	movs	r3, #38	; 0x26
    2430:	18fb      	adds	r3, r7, r3
    2432:	881a      	ldrh	r2, [r3, #0]
    2434:	2326      	movs	r3, #38	; 0x26
    2436:	18fb      	adds	r3, r7, r3
    2438:	3201      	adds	r2, #1
    243a:	801a      	strh	r2, [r3, #0]
    243c:	2326      	movs	r3, #38	; 0x26
    243e:	18fb      	adds	r3, r7, r3
    2440:	881a      	ldrh	r2, [r3, #0]
    2442:	693b      	ldr	r3, [r7, #16]
    2444:	429a      	cmp	r2, r3
    2446:	d3ea      	bcc.n	241e <SendPacket+0xf6>
    2448:	e042      	b.n	24d0 <SendPacket+0x1a8>
    244a:	230c      	movs	r3, #12
    244c:	18fb      	adds	r3, r7, r3
    244e:	881b      	ldrh	r3, [r3, #0]
    2450:	089b      	lsrs	r3, r3, #2
    2452:	b29b      	uxth	r3, r3
    2454:	001a      	movs	r2, r3
    2456:	693b      	ldr	r3, [r7, #16]
    2458:	1a9b      	subs	r3, r3, r2
    245a:	613b      	str	r3, [r7, #16]
    245c:	2326      	movs	r3, #38	; 0x26
    245e:	18fb      	adds	r3, r7, r3
    2460:	2200      	movs	r2, #0
    2462:	801a      	strh	r2, [r3, #0]
    2464:	e00e      	b.n	2484 <SendPacket+0x15c>
    2466:	69fb      	ldr	r3, [r7, #28]
    2468:	1d1a      	adds	r2, r3, #4
    246a:	61fa      	str	r2, [r7, #28]
    246c:	6a3a      	ldr	r2, [r7, #32]
    246e:	1d11      	adds	r1, r2, #4
    2470:	6239      	str	r1, [r7, #32]
    2472:	6812      	ldr	r2, [r2, #0]
    2474:	601a      	str	r2, [r3, #0]
    2476:	2326      	movs	r3, #38	; 0x26
    2478:	18fb      	adds	r3, r7, r3
    247a:	881a      	ldrh	r2, [r3, #0]
    247c:	2326      	movs	r3, #38	; 0x26
    247e:	18fb      	adds	r3, r7, r3
    2480:	3201      	adds	r2, #1
    2482:	801a      	strh	r2, [r3, #0]
    2484:	230c      	movs	r3, #12
    2486:	18fb      	adds	r3, r7, r3
    2488:	881b      	ldrh	r3, [r3, #0]
    248a:	089b      	lsrs	r3, r3, #2
    248c:	b29b      	uxth	r3, r3
    248e:	2226      	movs	r2, #38	; 0x26
    2490:	18ba      	adds	r2, r7, r2
    2492:	8812      	ldrh	r2, [r2, #0]
    2494:	429a      	cmp	r2, r3
    2496:	d3e6      	bcc.n	2466 <SendPacket+0x13e>
    2498:	4b22      	ldr	r3, [pc, #136]	; (2524 <SendPacket+0x1fc>)
    249a:	61fb      	str	r3, [r7, #28]
    249c:	2326      	movs	r3, #38	; 0x26
    249e:	18fb      	adds	r3, r7, r3
    24a0:	2200      	movs	r2, #0
    24a2:	801a      	strh	r2, [r3, #0]
    24a4:	e00e      	b.n	24c4 <SendPacket+0x19c>
    24a6:	69fb      	ldr	r3, [r7, #28]
    24a8:	1d1a      	adds	r2, r3, #4
    24aa:	61fa      	str	r2, [r7, #28]
    24ac:	6a3a      	ldr	r2, [r7, #32]
    24ae:	1d11      	adds	r1, r2, #4
    24b0:	6239      	str	r1, [r7, #32]
    24b2:	6812      	ldr	r2, [r2, #0]
    24b4:	601a      	str	r2, [r3, #0]
    24b6:	2326      	movs	r3, #38	; 0x26
    24b8:	18fb      	adds	r3, r7, r3
    24ba:	881a      	ldrh	r2, [r3, #0]
    24bc:	2326      	movs	r3, #38	; 0x26
    24be:	18fb      	adds	r3, r7, r3
    24c0:	3201      	adds	r2, #1
    24c2:	801a      	strh	r2, [r3, #0]
    24c4:	2326      	movs	r3, #38	; 0x26
    24c6:	18fb      	adds	r3, r7, r3
    24c8:	881a      	ldrh	r2, [r3, #0]
    24ca:	693b      	ldr	r3, [r7, #16]
    24cc:	429a      	cmp	r2, r3
    24ce:	d3ea      	bcc.n	24a6 <SendPacket+0x17e>
    24d0:	69fb      	ldr	r3, [r7, #28]
    24d2:	b29b      	uxth	r3, r3
    24d4:	4a12      	ldr	r2, [pc, #72]	; (2520 <SendPacket+0x1f8>)
    24d6:	4293      	cmp	r3, r2
    24d8:	d901      	bls.n	24de <SendPacket+0x1b6>
    24da:	4b12      	ldr	r3, [pc, #72]	; (2524 <SendPacket+0x1fc>)
    24dc:	61fb      	str	r3, [r7, #28]
    24de:	2300      	movs	r3, #0
    24e0:	613b      	str	r3, [r7, #16]
    24e2:	69fb      	ldr	r3, [r7, #28]
    24e4:	1d1a      	adds	r2, r3, #4
    24e6:	61fa      	str	r2, [r7, #28]
    24e8:	693a      	ldr	r2, [r7, #16]
    24ea:	601a      	str	r2, [r3, #0]
    24ec:	69fb      	ldr	r3, [r7, #28]
    24ee:	b29b      	uxth	r3, r3
    24f0:	4a0b      	ldr	r2, [pc, #44]	; (2520 <SendPacket+0x1f8>)
    24f2:	4293      	cmp	r3, r2
    24f4:	d901      	bls.n	24fa <SendPacket+0x1d2>
    24f6:	4b0b      	ldr	r3, [pc, #44]	; (2524 <SendPacket+0x1fc>)
    24f8:	61fb      	str	r3, [r7, #28]
    24fa:	23c0      	movs	r3, #192	; 0xc0
    24fc:	059b      	lsls	r3, r3, #22
    24fe:	69fa      	ldr	r2, [r7, #28]
    2500:	b292      	uxth	r2, r2
    2502:	855a      	strh	r2, [r3, #42]	; 0x2a
    2504:	4b04      	ldr	r3, [pc, #16]	; (2518 <SendPacket+0x1f0>)
    2506:	681b      	ldr	r3, [r3, #0]
    2508:	0018      	movs	r0, r3
    250a:	f003 ff9f 	bl	644c <osMutexRelease>
    250e:	683b      	ldr	r3, [r7, #0]
    2510:	0018      	movs	r0, r3
    2512:	46bd      	mov	sp, r7
    2514:	b00a      	add	sp, #40	; 0x28
    2516:	bd80      	pop	{r7, pc}
    2518:	20005340 	.word	0x20005340
    251c:	fffff000 	.word	0xfffff000
    2520:	00001ffc 	.word	0x00001ffc
    2524:	38001000 	.word	0x38001000

00002528 <ETHERNET_Handler>:
    2528:	b580      	push	{r7, lr}
    252a:	b082      	sub	sp, #8
    252c:	af00      	add	r7, sp, #0
    252e:	23c0      	movs	r3, #192	; 0xc0
    2530:	059a      	lsls	r2, r3, #22
    2532:	1dbb      	adds	r3, r7, #6
    2534:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    2536:	801a      	strh	r2, [r3, #0]
    2538:	23c0      	movs	r3, #192	; 0xc0
    253a:	059b      	lsls	r3, r3, #22
    253c:	1dba      	adds	r2, r7, #6
    253e:	8812      	ldrh	r2, [r2, #0]
    2540:	845a      	strh	r2, [r3, #34]	; 0x22
    2542:	1dbb      	adds	r3, r7, #6
    2544:	881b      	ldrh	r3, [r3, #0]
    2546:	2201      	movs	r2, #1
    2548:	4013      	ands	r3, r2
    254a:	d008      	beq.n	255e <ETHERNET_Handler+0x36>
    254c:	4b0a      	ldr	r3, [pc, #40]	; (2578 <ETHERNET_Handler+0x50>)
    254e:	2201      	movs	r2, #1
    2550:	601a      	str	r2, [r3, #0]
    2552:	4b0a      	ldr	r3, [pc, #40]	; (257c <ETHERNET_Handler+0x54>)
    2554:	681b      	ldr	r3, [r3, #0]
    2556:	2101      	movs	r1, #1
    2558:	0018      	movs	r0, r3
    255a:	f003 fe85 	bl	6268 <osSignalSet>
    255e:	1dbb      	adds	r3, r7, #6
    2560:	881b      	ldrh	r3, [r3, #0]
    2562:	2202      	movs	r2, #2
    2564:	4013      	ands	r3, r2
    2566:	d002      	beq.n	256e <ETHERNET_Handler+0x46>
    2568:	4b05      	ldr	r3, [pc, #20]	; (2580 <ETHERNET_Handler+0x58>)
    256a:	2201      	movs	r2, #1
    256c:	601a      	str	r2, [r3, #0]
    256e:	46c0      	nop			; (mov r8, r8)
    2570:	46bd      	mov	sp, r7
    2572:	b002      	add	sp, #8
    2574:	bd80      	pop	{r7, pc}
    2576:	46c0      	nop			; (mov r8, r8)
    2578:	20004d28 	.word	0x20004d28
    257c:	20000858 	.word	0x20000858
    2580:	20004d2c 	.word	0x20004d2c

00002584 <network_config>:
    2584:	b580      	push	{r7, lr}
    2586:	af00      	add	r7, sp, #0
    2588:	46c0      	nop			; (mov r8, r8)
    258a:	46bd      	mov	sp, r7
    258c:	bd80      	pop	{r7, pc}
    258e:	46c0      	nop			; (mov r8, r8)

00002590 <Answear_ARP>:
    2590:	b580      	push	{r7, lr}
    2592:	b08c      	sub	sp, #48	; 0x30
    2594:	af00      	add	r7, sp, #0
    2596:	4b36      	ldr	r3, [pc, #216]	; (2670 <Answear_ARP+0xe0>)
    2598:	88da      	ldrh	r2, [r3, #6]
    259a:	1d3b      	adds	r3, r7, #4
    259c:	801a      	strh	r2, [r3, #0]
    259e:	4b34      	ldr	r3, [pc, #208]	; (2670 <Answear_ARP+0xe0>)
    25a0:	891a      	ldrh	r2, [r3, #8]
    25a2:	1d3b      	adds	r3, r7, #4
    25a4:	805a      	strh	r2, [r3, #2]
    25a6:	4b32      	ldr	r3, [pc, #200]	; (2670 <Answear_ARP+0xe0>)
    25a8:	895a      	ldrh	r2, [r3, #10]
    25aa:	1d3b      	adds	r3, r7, #4
    25ac:	809a      	strh	r2, [r3, #4]
    25ae:	23c0      	movs	r3, #192	; 0xc0
    25b0:	059b      	lsls	r3, r3, #22
    25b2:	885b      	ldrh	r3, [r3, #2]
    25b4:	b29a      	uxth	r2, r3
    25b6:	1d3b      	adds	r3, r7, #4
    25b8:	80da      	strh	r2, [r3, #6]
    25ba:	23c0      	movs	r3, #192	; 0xc0
    25bc:	059b      	lsls	r3, r3, #22
    25be:	889b      	ldrh	r3, [r3, #4]
    25c0:	b29a      	uxth	r2, r3
    25c2:	1d3b      	adds	r3, r7, #4
    25c4:	811a      	strh	r2, [r3, #8]
    25c6:	23c0      	movs	r3, #192	; 0xc0
    25c8:	059b      	lsls	r3, r3, #22
    25ca:	88db      	ldrh	r3, [r3, #6]
    25cc:	b29a      	uxth	r2, r3
    25ce:	1d3b      	adds	r3, r7, #4
    25d0:	815a      	strh	r2, [r3, #10]
    25d2:	4b27      	ldr	r3, [pc, #156]	; (2670 <Answear_ARP+0xe0>)
    25d4:	899a      	ldrh	r2, [r3, #12]
    25d6:	1d3b      	adds	r3, r7, #4
    25d8:	819a      	strh	r2, [r3, #12]
    25da:	4b25      	ldr	r3, [pc, #148]	; (2670 <Answear_ARP+0xe0>)
    25dc:	89da      	ldrh	r2, [r3, #14]
    25de:	1d3b      	adds	r3, r7, #4
    25e0:	81da      	strh	r2, [r3, #14]
    25e2:	4b23      	ldr	r3, [pc, #140]	; (2670 <Answear_ARP+0xe0>)
    25e4:	8a1a      	ldrh	r2, [r3, #16]
    25e6:	1d3b      	adds	r3, r7, #4
    25e8:	821a      	strh	r2, [r3, #16]
    25ea:	4b21      	ldr	r3, [pc, #132]	; (2670 <Answear_ARP+0xe0>)
    25ec:	8a5a      	ldrh	r2, [r3, #18]
    25ee:	1d3b      	adds	r3, r7, #4
    25f0:	825a      	strh	r2, [r3, #18]
    25f2:	1d3b      	adds	r3, r7, #4
    25f4:	2280      	movs	r2, #128	; 0x80
    25f6:	0092      	lsls	r2, r2, #2
    25f8:	829a      	strh	r2, [r3, #20]
    25fa:	23c0      	movs	r3, #192	; 0xc0
    25fc:	059b      	lsls	r3, r3, #22
    25fe:	885b      	ldrh	r3, [r3, #2]
    2600:	b29a      	uxth	r2, r3
    2602:	1d3b      	adds	r3, r7, #4
    2604:	82da      	strh	r2, [r3, #22]
    2606:	23c0      	movs	r3, #192	; 0xc0
    2608:	059b      	lsls	r3, r3, #22
    260a:	889b      	ldrh	r3, [r3, #4]
    260c:	b29a      	uxth	r2, r3
    260e:	1d3b      	adds	r3, r7, #4
    2610:	831a      	strh	r2, [r3, #24]
    2612:	23c0      	movs	r3, #192	; 0xc0
    2614:	059b      	lsls	r3, r3, #22
    2616:	88db      	ldrh	r3, [r3, #6]
    2618:	b29a      	uxth	r2, r3
    261a:	1d3b      	adds	r3, r7, #4
    261c:	835a      	strh	r2, [r3, #26]
    261e:	4b15      	ldr	r3, [pc, #84]	; (2674 <Answear_ARP+0xe4>)
    2620:	881a      	ldrh	r2, [r3, #0]
    2622:	1d3b      	adds	r3, r7, #4
    2624:	839a      	strh	r2, [r3, #28]
    2626:	4b13      	ldr	r3, [pc, #76]	; (2674 <Answear_ARP+0xe4>)
    2628:	885a      	ldrh	r2, [r3, #2]
    262a:	1d3b      	adds	r3, r7, #4
    262c:	83da      	strh	r2, [r3, #30]
    262e:	4b10      	ldr	r3, [pc, #64]	; (2670 <Answear_ARP+0xe0>)
    2630:	88da      	ldrh	r2, [r3, #6]
    2632:	1d3b      	adds	r3, r7, #4
    2634:	841a      	strh	r2, [r3, #32]
    2636:	4b0e      	ldr	r3, [pc, #56]	; (2670 <Answear_ARP+0xe0>)
    2638:	891a      	ldrh	r2, [r3, #8]
    263a:	1d3b      	adds	r3, r7, #4
    263c:	845a      	strh	r2, [r3, #34]	; 0x22
    263e:	4b0c      	ldr	r3, [pc, #48]	; (2670 <Answear_ARP+0xe0>)
    2640:	895a      	ldrh	r2, [r3, #10]
    2642:	1d3b      	adds	r3, r7, #4
    2644:	849a      	strh	r2, [r3, #36]	; 0x24
    2646:	4b0a      	ldr	r3, [pc, #40]	; (2670 <Answear_ARP+0xe0>)
    2648:	8b9a      	ldrh	r2, [r3, #28]
    264a:	1d3b      	adds	r3, r7, #4
    264c:	84da      	strh	r2, [r3, #38]	; 0x26
    264e:	4b08      	ldr	r3, [pc, #32]	; (2670 <Answear_ARP+0xe0>)
    2650:	8bda      	ldrh	r2, [r3, #30]
    2652:	1d3b      	adds	r3, r7, #4
    2654:	851a      	strh	r2, [r3, #40]	; 0x28
    2656:	1d3b      	adds	r3, r7, #4
    2658:	2200      	movs	r2, #0
    265a:	855a      	strh	r2, [r3, #42]	; 0x2a
    265c:	1d3b      	adds	r3, r7, #4
    265e:	212a      	movs	r1, #42	; 0x2a
    2660:	0018      	movs	r0, r3
    2662:	f7ff fe61 	bl	2328 <SendPacket>
    2666:	46c0      	nop			; (mov r8, r8)
    2668:	46bd      	mov	sp, r7
    266a:	b00c      	add	sp, #48	; 0x30
    266c:	bd80      	pop	{r7, pc}
    266e:	46c0      	nop			; (mov r8, r8)
    2670:	20004d38 	.word	0x20004d38
    2674:	2000000c 	.word	0x2000000c

00002678 <CheckSum_UDP>:
    2678:	b580      	push	{r7, lr}
    267a:	b086      	sub	sp, #24
    267c:	af00      	add	r7, sp, #0
    267e:	0002      	movs	r2, r0
    2680:	6039      	str	r1, [r7, #0]
    2682:	1dbb      	adds	r3, r7, #6
    2684:	801a      	strh	r2, [r3, #0]
    2686:	2300      	movs	r3, #0
    2688:	613b      	str	r3, [r7, #16]
    268a:	230d      	movs	r3, #13
    268c:	617b      	str	r3, [r7, #20]
    268e:	e019      	b.n	26c4 <CheckSum_UDP+0x4c>
    2690:	697b      	ldr	r3, [r7, #20]
    2692:	005b      	lsls	r3, r3, #1
    2694:	683a      	ldr	r2, [r7, #0]
    2696:	18d3      	adds	r3, r2, r3
    2698:	881b      	ldrh	r3, [r3, #0]
    269a:	021b      	lsls	r3, r3, #8
    269c:	041b      	lsls	r3, r3, #16
    269e:	0c1a      	lsrs	r2, r3, #16
    26a0:	697b      	ldr	r3, [r7, #20]
    26a2:	005b      	lsls	r3, r3, #1
    26a4:	6839      	ldr	r1, [r7, #0]
    26a6:	18cb      	adds	r3, r1, r3
    26a8:	881b      	ldrh	r3, [r3, #0]
    26aa:	0a1b      	lsrs	r3, r3, #8
    26ac:	b29b      	uxth	r3, r3
    26ae:	0019      	movs	r1, r3
    26b0:	23ff      	movs	r3, #255	; 0xff
    26b2:	400b      	ands	r3, r1
    26b4:	18d3      	adds	r3, r2, r3
    26b6:	001a      	movs	r2, r3
    26b8:	693b      	ldr	r3, [r7, #16]
    26ba:	189b      	adds	r3, r3, r2
    26bc:	613b      	str	r3, [r7, #16]
    26be:	697b      	ldr	r3, [r7, #20]
    26c0:	3301      	adds	r3, #1
    26c2:	617b      	str	r3, [r7, #20]
    26c4:	697b      	ldr	r3, [r7, #20]
    26c6:	2b10      	cmp	r3, #16
    26c8:	d9e2      	bls.n	2690 <CheckSum_UDP+0x18>
    26ca:	683b      	ldr	r3, [r7, #0]
    26cc:	3316      	adds	r3, #22
    26ce:	881b      	ldrh	r3, [r3, #0]
    26d0:	0a1b      	lsrs	r3, r3, #8
    26d2:	b29b      	uxth	r3, r3
    26d4:	001a      	movs	r2, r3
    26d6:	23ff      	movs	r3, #255	; 0xff
    26d8:	4013      	ands	r3, r2
    26da:	693a      	ldr	r2, [r7, #16]
    26dc:	18d3      	adds	r3, r2, r3
    26de:	613b      	str	r3, [r7, #16]
    26e0:	1dbb      	adds	r3, r7, #6
    26e2:	881b      	ldrh	r3, [r3, #0]
    26e4:	693a      	ldr	r2, [r7, #16]
    26e6:	18d3      	adds	r3, r2, r3
    26e8:	613b      	str	r3, [r7, #16]
    26ea:	683b      	ldr	r3, [r7, #0]
    26ec:	3322      	adds	r3, #34	; 0x22
    26ee:	881b      	ldrh	r3, [r3, #0]
    26f0:	021b      	lsls	r3, r3, #8
    26f2:	041b      	lsls	r3, r3, #16
    26f4:	0c1a      	lsrs	r2, r3, #16
    26f6:	683b      	ldr	r3, [r7, #0]
    26f8:	3322      	adds	r3, #34	; 0x22
    26fa:	881b      	ldrh	r3, [r3, #0]
    26fc:	0a1b      	lsrs	r3, r3, #8
    26fe:	b29b      	uxth	r3, r3
    2700:	0019      	movs	r1, r3
    2702:	23ff      	movs	r3, #255	; 0xff
    2704:	400b      	ands	r3, r1
    2706:	18d3      	adds	r3, r2, r3
    2708:	001a      	movs	r2, r3
    270a:	693b      	ldr	r3, [r7, #16]
    270c:	189b      	adds	r3, r3, r2
    270e:	613b      	str	r3, [r7, #16]
    2710:	683b      	ldr	r3, [r7, #0]
    2712:	3324      	adds	r3, #36	; 0x24
    2714:	881b      	ldrh	r3, [r3, #0]
    2716:	021b      	lsls	r3, r3, #8
    2718:	041b      	lsls	r3, r3, #16
    271a:	0c1a      	lsrs	r2, r3, #16
    271c:	683b      	ldr	r3, [r7, #0]
    271e:	3324      	adds	r3, #36	; 0x24
    2720:	881b      	ldrh	r3, [r3, #0]
    2722:	0a1b      	lsrs	r3, r3, #8
    2724:	b29b      	uxth	r3, r3
    2726:	0019      	movs	r1, r3
    2728:	23ff      	movs	r3, #255	; 0xff
    272a:	400b      	ands	r3, r1
    272c:	18d3      	adds	r3, r2, r3
    272e:	001a      	movs	r2, r3
    2730:	693b      	ldr	r3, [r7, #16]
    2732:	189b      	adds	r3, r3, r2
    2734:	613b      	str	r3, [r7, #16]
    2736:	1dbb      	adds	r3, r7, #6
    2738:	881b      	ldrh	r3, [r3, #0]
    273a:	693a      	ldr	r2, [r7, #16]
    273c:	18d3      	adds	r3, r2, r3
    273e:	613b      	str	r3, [r7, #16]
    2740:	683b      	ldr	r3, [r7, #0]
    2742:	3328      	adds	r3, #40	; 0x28
    2744:	881b      	ldrh	r3, [r3, #0]
    2746:	021b      	lsls	r3, r3, #8
    2748:	041b      	lsls	r3, r3, #16
    274a:	0c1a      	lsrs	r2, r3, #16
    274c:	683b      	ldr	r3, [r7, #0]
    274e:	3328      	adds	r3, #40	; 0x28
    2750:	881b      	ldrh	r3, [r3, #0]
    2752:	0a1b      	lsrs	r3, r3, #8
    2754:	b29b      	uxth	r3, r3
    2756:	0019      	movs	r1, r3
    2758:	23ff      	movs	r3, #255	; 0xff
    275a:	400b      	ands	r3, r1
    275c:	18d3      	adds	r3, r2, r3
    275e:	001a      	movs	r2, r3
    2760:	693b      	ldr	r3, [r7, #16]
    2762:	189b      	adds	r3, r3, r2
    2764:	613b      	str	r3, [r7, #16]
    2766:	683b      	ldr	r3, [r7, #0]
    2768:	332a      	adds	r3, #42	; 0x2a
    276a:	60fb      	str	r3, [r7, #12]
    276c:	2300      	movs	r3, #0
    276e:	617b      	str	r3, [r7, #20]
    2770:	e017      	b.n	27a2 <CheckSum_UDP+0x12a>
    2772:	697b      	ldr	r3, [r7, #20]
    2774:	2201      	movs	r2, #1
    2776:	4013      	ands	r3, r2
    2778:	d008      	beq.n	278c <CheckSum_UDP+0x114>
    277a:	68fb      	ldr	r3, [r7, #12]
    277c:	1c5a      	adds	r2, r3, #1
    277e:	60fa      	str	r2, [r7, #12]
    2780:	781b      	ldrb	r3, [r3, #0]
    2782:	001a      	movs	r2, r3
    2784:	693b      	ldr	r3, [r7, #16]
    2786:	189b      	adds	r3, r3, r2
    2788:	613b      	str	r3, [r7, #16]
    278a:	e007      	b.n	279c <CheckSum_UDP+0x124>
    278c:	68fb      	ldr	r3, [r7, #12]
    278e:	1c5a      	adds	r2, r3, #1
    2790:	60fa      	str	r2, [r7, #12]
    2792:	781b      	ldrb	r3, [r3, #0]
    2794:	021b      	lsls	r3, r3, #8
    2796:	693a      	ldr	r2, [r7, #16]
    2798:	18d3      	adds	r3, r2, r3
    279a:	613b      	str	r3, [r7, #16]
    279c:	697b      	ldr	r3, [r7, #20]
    279e:	3301      	adds	r3, #1
    27a0:	617b      	str	r3, [r7, #20]
    27a2:	1dbb      	adds	r3, r7, #6
    27a4:	881b      	ldrh	r3, [r3, #0]
    27a6:	3b08      	subs	r3, #8
    27a8:	001a      	movs	r2, r3
    27aa:	697b      	ldr	r3, [r7, #20]
    27ac:	429a      	cmp	r2, r3
    27ae:	d8e0      	bhi.n	2772 <CheckSum_UDP+0xfa>
    27b0:	e006      	b.n	27c0 <CheckSum_UDP+0x148>
    27b2:	693b      	ldr	r3, [r7, #16]
    27b4:	0c1a      	lsrs	r2, r3, #16
    27b6:	693b      	ldr	r3, [r7, #16]
    27b8:	041b      	lsls	r3, r3, #16
    27ba:	0c1b      	lsrs	r3, r3, #16
    27bc:	18d3      	adds	r3, r2, r3
    27be:	613b      	str	r3, [r7, #16]
    27c0:	693b      	ldr	r3, [r7, #16]
    27c2:	0c1b      	lsrs	r3, r3, #16
    27c4:	d1f5      	bne.n	27b2 <CheckSum_UDP+0x13a>
    27c6:	693b      	ldr	r3, [r7, #16]
    27c8:	b29b      	uxth	r3, r3
    27ca:	43db      	mvns	r3, r3
    27cc:	b29b      	uxth	r3, r3
    27ce:	0018      	movs	r0, r3
    27d0:	46bd      	mov	sp, r7
    27d2:	b006      	add	sp, #24
    27d4:	bd80      	pop	{r7, pc}
    27d6:	46c0      	nop			; (mov r8, r8)

000027d8 <CheckSum_IP>:
    27d8:	b580      	push	{r7, lr}
    27da:	b084      	sub	sp, #16
    27dc:	af00      	add	r7, sp, #0
    27de:	6078      	str	r0, [r7, #4]
    27e0:	2300      	movs	r3, #0
    27e2:	60bb      	str	r3, [r7, #8]
    27e4:	2300      	movs	r3, #0
    27e6:	60fb      	str	r3, [r7, #12]
    27e8:	e011      	b.n	280e <CheckSum_IP+0x36>
    27ea:	68fb      	ldr	r3, [r7, #12]
    27ec:	2b05      	cmp	r3, #5
    27ee:	d00a      	beq.n	2806 <CheckSum_IP+0x2e>
    27f0:	68fb      	ldr	r3, [r7, #12]
    27f2:	3307      	adds	r3, #7
    27f4:	005b      	lsls	r3, r3, #1
    27f6:	687a      	ldr	r2, [r7, #4]
    27f8:	18d3      	adds	r3, r2, r3
    27fa:	881b      	ldrh	r3, [r3, #0]
    27fc:	001a      	movs	r2, r3
    27fe:	68bb      	ldr	r3, [r7, #8]
    2800:	189b      	adds	r3, r3, r2
    2802:	60bb      	str	r3, [r7, #8]
    2804:	e000      	b.n	2808 <CheckSum_IP+0x30>
    2806:	46c0      	nop			; (mov r8, r8)
    2808:	68fb      	ldr	r3, [r7, #12]
    280a:	3301      	adds	r3, #1
    280c:	60fb      	str	r3, [r7, #12]
    280e:	68fb      	ldr	r3, [r7, #12]
    2810:	2b09      	cmp	r3, #9
    2812:	d9ea      	bls.n	27ea <CheckSum_IP+0x12>
    2814:	68bb      	ldr	r3, [r7, #8]
    2816:	0c1a      	lsrs	r2, r3, #16
    2818:	68bb      	ldr	r3, [r7, #8]
    281a:	041b      	lsls	r3, r3, #16
    281c:	0c1b      	lsrs	r3, r3, #16
    281e:	18d3      	adds	r3, r2, r3
    2820:	60bb      	str	r3, [r7, #8]
    2822:	68bb      	ldr	r3, [r7, #8]
    2824:	b29b      	uxth	r3, r3
    2826:	43db      	mvns	r3, r3
    2828:	b29b      	uxth	r3, r3
    282a:	0018      	movs	r0, r3
    282c:	46bd      	mov	sp, r7
    282e:	b004      	add	sp, #16
    2830:	bd80      	pop	{r7, pc}
    2832:	46c0      	nop			; (mov r8, r8)

00002834 <CheckSum_ICMP>:
    2834:	b580      	push	{r7, lr}
    2836:	b084      	sub	sp, #16
    2838:	af00      	add	r7, sp, #0
    283a:	0002      	movs	r2, r0
    283c:	6039      	str	r1, [r7, #0]
    283e:	1dbb      	adds	r3, r7, #6
    2840:	801a      	strh	r2, [r3, #0]
    2842:	2300      	movs	r3, #0
    2844:	60bb      	str	r3, [r7, #8]
    2846:	2300      	movs	r3, #0
    2848:	60fb      	str	r3, [r7, #12]
    284a:	e011      	b.n	2870 <CheckSum_ICMP+0x3c>
    284c:	68fb      	ldr	r3, [r7, #12]
    284e:	2b01      	cmp	r3, #1
    2850:	d00a      	beq.n	2868 <CheckSum_ICMP+0x34>
    2852:	68fb      	ldr	r3, [r7, #12]
    2854:	3311      	adds	r3, #17
    2856:	005b      	lsls	r3, r3, #1
    2858:	683a      	ldr	r2, [r7, #0]
    285a:	18d3      	adds	r3, r2, r3
    285c:	881b      	ldrh	r3, [r3, #0]
    285e:	001a      	movs	r2, r3
    2860:	68bb      	ldr	r3, [r7, #8]
    2862:	189b      	adds	r3, r3, r2
    2864:	60bb      	str	r3, [r7, #8]
    2866:	e000      	b.n	286a <CheckSum_ICMP+0x36>
    2868:	46c0      	nop			; (mov r8, r8)
    286a:	68fb      	ldr	r3, [r7, #12]
    286c:	3301      	adds	r3, #1
    286e:	60fb      	str	r3, [r7, #12]
    2870:	1dbb      	adds	r3, r7, #6
    2872:	881a      	ldrh	r2, [r3, #0]
    2874:	68fb      	ldr	r3, [r7, #12]
    2876:	429a      	cmp	r2, r3
    2878:	d8e8      	bhi.n	284c <CheckSum_ICMP+0x18>
    287a:	68bb      	ldr	r3, [r7, #8]
    287c:	0c1a      	lsrs	r2, r3, #16
    287e:	68bb      	ldr	r3, [r7, #8]
    2880:	041b      	lsls	r3, r3, #16
    2882:	0c1b      	lsrs	r3, r3, #16
    2884:	18d3      	adds	r3, r2, r3
    2886:	60bb      	str	r3, [r7, #8]
    2888:	68bb      	ldr	r3, [r7, #8]
    288a:	b29b      	uxth	r3, r3
    288c:	43db      	mvns	r3, r3
    288e:	b29b      	uxth	r3, r3
    2890:	0018      	movs	r0, r3
    2892:	46bd      	mov	sp, r7
    2894:	b004      	add	sp, #16
    2896:	bd80      	pop	{r7, pc}

00002898 <Request_ICMP>:
    2898:	b580      	push	{r7, lr}
    289a:	b096      	sub	sp, #88	; 0x58
    289c:	af00      	add	r7, sp, #0
    289e:	4b73      	ldr	r3, [pc, #460]	; (2a6c <Request_ICMP+0x1d4>)
    28a0:	881a      	ldrh	r2, [r3, #0]
    28a2:	1d3b      	adds	r3, r7, #4
    28a4:	801a      	strh	r2, [r3, #0]
    28a6:	4b71      	ldr	r3, [pc, #452]	; (2a6c <Request_ICMP+0x1d4>)
    28a8:	885a      	ldrh	r2, [r3, #2]
    28aa:	1d3b      	adds	r3, r7, #4
    28ac:	805a      	strh	r2, [r3, #2]
    28ae:	4b6f      	ldr	r3, [pc, #444]	; (2a6c <Request_ICMP+0x1d4>)
    28b0:	889a      	ldrh	r2, [r3, #4]
    28b2:	1d3b      	adds	r3, r7, #4
    28b4:	809a      	strh	r2, [r3, #4]
    28b6:	23c0      	movs	r3, #192	; 0xc0
    28b8:	059b      	lsls	r3, r3, #22
    28ba:	885b      	ldrh	r3, [r3, #2]
    28bc:	b29a      	uxth	r2, r3
    28be:	1d3b      	adds	r3, r7, #4
    28c0:	80da      	strh	r2, [r3, #6]
    28c2:	23c0      	movs	r3, #192	; 0xc0
    28c4:	059b      	lsls	r3, r3, #22
    28c6:	889b      	ldrh	r3, [r3, #4]
    28c8:	b29a      	uxth	r2, r3
    28ca:	1d3b      	adds	r3, r7, #4
    28cc:	811a      	strh	r2, [r3, #8]
    28ce:	23c0      	movs	r3, #192	; 0xc0
    28d0:	059b      	lsls	r3, r3, #22
    28d2:	88db      	ldrh	r3, [r3, #6]
    28d4:	b29a      	uxth	r2, r3
    28d6:	1d3b      	adds	r3, r7, #4
    28d8:	815a      	strh	r2, [r3, #10]
    28da:	1d3b      	adds	r3, r7, #4
    28dc:	2208      	movs	r2, #8
    28de:	819a      	strh	r2, [r3, #12]
    28e0:	1d3b      	adds	r3, r7, #4
    28e2:	2245      	movs	r2, #69	; 0x45
    28e4:	81da      	strh	r2, [r3, #14]
    28e6:	1d3b      	adds	r3, r7, #4
    28e8:	22f0      	movs	r2, #240	; 0xf0
    28ea:	0192      	lsls	r2, r2, #6
    28ec:	821a      	strh	r2, [r3, #16]
    28ee:	4b60      	ldr	r3, [pc, #384]	; (2a70 <Request_ICMP+0x1d8>)
    28f0:	881a      	ldrh	r2, [r3, #0]
    28f2:	1d3b      	adds	r3, r7, #4
    28f4:	825a      	strh	r2, [r3, #18]
    28f6:	1d3b      	adds	r3, r7, #4
    28f8:	2200      	movs	r2, #0
    28fa:	829a      	strh	r2, [r3, #20]
    28fc:	1d3b      	adds	r3, r7, #4
    28fe:	22c0      	movs	r2, #192	; 0xc0
    2900:	0052      	lsls	r2, r2, #1
    2902:	82da      	strh	r2, [r3, #22]
    2904:	1d3b      	adds	r3, r7, #4
    2906:	2200      	movs	r2, #0
    2908:	831a      	strh	r2, [r3, #24]
    290a:	4b5a      	ldr	r3, [pc, #360]	; (2a74 <Request_ICMP+0x1dc>)
    290c:	881a      	ldrh	r2, [r3, #0]
    290e:	1d3b      	adds	r3, r7, #4
    2910:	835a      	strh	r2, [r3, #26]
    2912:	4b58      	ldr	r3, [pc, #352]	; (2a74 <Request_ICMP+0x1dc>)
    2914:	885a      	ldrh	r2, [r3, #2]
    2916:	1d3b      	adds	r3, r7, #4
    2918:	839a      	strh	r2, [r3, #28]
    291a:	4b54      	ldr	r3, [pc, #336]	; (2a6c <Request_ICMP+0x1d4>)
    291c:	88da      	ldrh	r2, [r3, #6]
    291e:	1d3b      	adds	r3, r7, #4
    2920:	83da      	strh	r2, [r3, #30]
    2922:	4b52      	ldr	r3, [pc, #328]	; (2a6c <Request_ICMP+0x1d4>)
    2924:	891a      	ldrh	r2, [r3, #8]
    2926:	1d3b      	adds	r3, r7, #4
    2928:	841a      	strh	r2, [r3, #32]
    292a:	1d3b      	adds	r3, r7, #4
    292c:	0018      	movs	r0, r3
    292e:	f7ff ff53 	bl	27d8 <CheckSum_IP>
    2932:	0003      	movs	r3, r0
    2934:	001a      	movs	r2, r3
    2936:	1d3b      	adds	r3, r7, #4
    2938:	831a      	strh	r2, [r3, #24]
    293a:	1d3b      	adds	r3, r7, #4
    293c:	2208      	movs	r2, #8
    293e:	845a      	strh	r2, [r3, #34]	; 0x22
    2940:	1d3b      	adds	r3, r7, #4
    2942:	2200      	movs	r2, #0
    2944:	849a      	strh	r2, [r3, #36]	; 0x24
    2946:	1d3b      	adds	r3, r7, #4
    2948:	2202      	movs	r2, #2
    294a:	84da      	strh	r2, [r3, #38]	; 0x26
    294c:	4b4a      	ldr	r3, [pc, #296]	; (2a78 <Request_ICMP+0x1e0>)
    294e:	881a      	ldrh	r2, [r3, #0]
    2950:	1d3b      	adds	r3, r7, #4
    2952:	851a      	strh	r2, [r3, #40]	; 0x28
    2954:	2300      	movs	r3, #0
    2956:	657b      	str	r3, [r7, #84]	; 0x54
    2958:	2300      	movs	r3, #0
    295a:	653b      	str	r3, [r7, #80]	; 0x50
    295c:	e021      	b.n	29a2 <Request_ICMP+0x10a>
    295e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2960:	b2db      	uxtb	r3, r3
    2962:	3361      	adds	r3, #97	; 0x61
    2964:	b2da      	uxtb	r2, r3
    2966:	003b      	movs	r3, r7
    2968:	701a      	strb	r2, [r3, #0]
    296a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    296c:	b2db      	uxtb	r3, r3
    296e:	3362      	adds	r3, #98	; 0x62
    2970:	b2da      	uxtb	r2, r3
    2972:	003b      	movs	r3, r7
    2974:	705a      	strb	r2, [r3, #1]
    2976:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    2978:	3315      	adds	r3, #21
    297a:	001a      	movs	r2, r3
    297c:	003b      	movs	r3, r7
    297e:	785b      	ldrb	r3, [r3, #1]
    2980:	021b      	lsls	r3, r3, #8
    2982:	b219      	sxth	r1, r3
    2984:	003b      	movs	r3, r7
    2986:	781b      	ldrb	r3, [r3, #0]
    2988:	b21b      	sxth	r3, r3
    298a:	430b      	orrs	r3, r1
    298c:	b21b      	sxth	r3, r3
    298e:	b299      	uxth	r1, r3
    2990:	1d3b      	adds	r3, r7, #4
    2992:	0052      	lsls	r2, r2, #1
    2994:	52d1      	strh	r1, [r2, r3]
    2996:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2998:	3302      	adds	r3, #2
    299a:	657b      	str	r3, [r7, #84]	; 0x54
    299c:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    299e:	3301      	adds	r3, #1
    29a0:	653b      	str	r3, [r7, #80]	; 0x50
    29a2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29a4:	2b1f      	cmp	r3, #31
    29a6:	d9da      	bls.n	295e <Request_ICMP+0xc6>
    29a8:	1d3b      	adds	r3, r7, #4
    29aa:	0019      	movs	r1, r3
    29ac:	2014      	movs	r0, #20
    29ae:	f7ff ff41 	bl	2834 <CheckSum_ICMP>
    29b2:	0003      	movs	r3, r0
    29b4:	001a      	movs	r2, r3
    29b6:	1d3b      	adds	r3, r7, #4
    29b8:	849a      	strh	r2, [r3, #36]	; 0x24
    29ba:	1d3b      	adds	r3, r7, #4
    29bc:	214a      	movs	r1, #74	; 0x4a
    29be:	0018      	movs	r0, r3
    29c0:	f7ff fcb2 	bl	2328 <SendPacket>
    29c4:	4b2a      	ldr	r3, [pc, #168]	; (2a70 <Request_ICMP+0x1d8>)
    29c6:	881b      	ldrh	r3, [r3, #0]
    29c8:	0a1b      	lsrs	r3, r3, #8
    29ca:	b29b      	uxth	r3, r3
    29cc:	b2da      	uxtb	r2, r3
    29ce:	003b      	movs	r3, r7
    29d0:	701a      	strb	r2, [r3, #0]
    29d2:	4b27      	ldr	r3, [pc, #156]	; (2a70 <Request_ICMP+0x1d8>)
    29d4:	881b      	ldrh	r3, [r3, #0]
    29d6:	b2da      	uxtb	r2, r3
    29d8:	003b      	movs	r3, r7
    29da:	705a      	strb	r2, [r3, #1]
    29dc:	003b      	movs	r3, r7
    29de:	781b      	ldrb	r3, [r3, #0]
    29e0:	3301      	adds	r3, #1
    29e2:	b2da      	uxtb	r2, r3
    29e4:	003b      	movs	r3, r7
    29e6:	701a      	strb	r2, [r3, #0]
    29e8:	003b      	movs	r3, r7
    29ea:	781b      	ldrb	r3, [r3, #0]
    29ec:	2b00      	cmp	r3, #0
    29ee:	d105      	bne.n	29fc <Request_ICMP+0x164>
    29f0:	003b      	movs	r3, r7
    29f2:	785b      	ldrb	r3, [r3, #1]
    29f4:	3301      	adds	r3, #1
    29f6:	b2da      	uxtb	r2, r3
    29f8:	003b      	movs	r3, r7
    29fa:	705a      	strb	r2, [r3, #1]
    29fc:	003b      	movs	r3, r7
    29fe:	781b      	ldrb	r3, [r3, #0]
    2a00:	021b      	lsls	r3, r3, #8
    2a02:	b21a      	sxth	r2, r3
    2a04:	003b      	movs	r3, r7
    2a06:	785b      	ldrb	r3, [r3, #1]
    2a08:	b21b      	sxth	r3, r3
    2a0a:	4313      	orrs	r3, r2
    2a0c:	b21b      	sxth	r3, r3
    2a0e:	b29a      	uxth	r2, r3
    2a10:	4b17      	ldr	r3, [pc, #92]	; (2a70 <Request_ICMP+0x1d8>)
    2a12:	801a      	strh	r2, [r3, #0]
    2a14:	4b18      	ldr	r3, [pc, #96]	; (2a78 <Request_ICMP+0x1e0>)
    2a16:	881b      	ldrh	r3, [r3, #0]
    2a18:	0a1b      	lsrs	r3, r3, #8
    2a1a:	b29b      	uxth	r3, r3
    2a1c:	b2da      	uxtb	r2, r3
    2a1e:	003b      	movs	r3, r7
    2a20:	701a      	strb	r2, [r3, #0]
    2a22:	4b15      	ldr	r3, [pc, #84]	; (2a78 <Request_ICMP+0x1e0>)
    2a24:	881b      	ldrh	r3, [r3, #0]
    2a26:	b2da      	uxtb	r2, r3
    2a28:	003b      	movs	r3, r7
    2a2a:	705a      	strb	r2, [r3, #1]
    2a2c:	003b      	movs	r3, r7
    2a2e:	781b      	ldrb	r3, [r3, #0]
    2a30:	3301      	adds	r3, #1
    2a32:	b2da      	uxtb	r2, r3
    2a34:	003b      	movs	r3, r7
    2a36:	701a      	strb	r2, [r3, #0]
    2a38:	003b      	movs	r3, r7
    2a3a:	781b      	ldrb	r3, [r3, #0]
    2a3c:	2b00      	cmp	r3, #0
    2a3e:	d105      	bne.n	2a4c <Request_ICMP+0x1b4>
    2a40:	003b      	movs	r3, r7
    2a42:	785b      	ldrb	r3, [r3, #1]
    2a44:	3301      	adds	r3, #1
    2a46:	b2da      	uxtb	r2, r3
    2a48:	003b      	movs	r3, r7
    2a4a:	705a      	strb	r2, [r3, #1]
    2a4c:	003b      	movs	r3, r7
    2a4e:	781b      	ldrb	r3, [r3, #0]
    2a50:	021b      	lsls	r3, r3, #8
    2a52:	b21a      	sxth	r2, r3
    2a54:	003b      	movs	r3, r7
    2a56:	785b      	ldrb	r3, [r3, #1]
    2a58:	b21b      	sxth	r3, r3
    2a5a:	4313      	orrs	r3, r2
    2a5c:	b21b      	sxth	r3, r3
    2a5e:	b29a      	uxth	r2, r3
    2a60:	4b05      	ldr	r3, [pc, #20]	; (2a78 <Request_ICMP+0x1e0>)
    2a62:	801a      	strh	r2, [r3, #0]
    2a64:	46c0      	nop			; (mov r8, r8)
    2a66:	46bd      	mov	sp, r7
    2a68:	b016      	add	sp, #88	; 0x58
    2a6a:	bd80      	pop	{r7, pc}
    2a6c:	20004d1c 	.word	0x20004d1c
    2a70:	20004d30 	.word	0x20004d30
    2a74:	2000000c 	.word	0x2000000c
    2a78:	20004d32 	.word	0x20004d32

00002a7c <Answear_ICMP>:
    2a7c:	b580      	push	{r7, lr}
    2a7e:	b082      	sub	sp, #8
    2a80:	af00      	add	r7, sp, #0
    2a82:	4b53      	ldr	r3, [pc, #332]	; (2bd0 <Answear_ICMP+0x154>)
    2a84:	4a53      	ldr	r2, [pc, #332]	; (2bd4 <Answear_ICMP+0x158>)
    2a86:	5a9a      	ldrh	r2, [r3, r2]
    2a88:	1cbb      	adds	r3, r7, #2
    2a8a:	3a26      	subs	r2, #38	; 0x26
    2a8c:	801a      	strh	r2, [r3, #0]
    2a8e:	1cbb      	adds	r3, r7, #2
    2a90:	881b      	ldrh	r3, [r3, #0]
    2a92:	2201      	movs	r2, #1
    2a94:	4013      	ands	r3, r2
    2a96:	d017      	beq.n	2ac8 <Answear_ICMP+0x4c>
    2a98:	1cbb      	adds	r3, r7, #2
    2a9a:	881b      	ldrh	r3, [r3, #0]
    2a9c:	3301      	adds	r3, #1
    2a9e:	105a      	asrs	r2, r3, #1
    2aa0:	1cbb      	adds	r3, r7, #2
    2aa2:	801a      	strh	r2, [r3, #0]
    2aa4:	1cbb      	adds	r3, r7, #2
    2aa6:	881b      	ldrh	r3, [r3, #0]
    2aa8:	3310      	adds	r3, #16
    2aaa:	001a      	movs	r2, r3
    2aac:	1cbb      	adds	r3, r7, #2
    2aae:	881b      	ldrh	r3, [r3, #0]
    2ab0:	3310      	adds	r3, #16
    2ab2:	0019      	movs	r1, r3
    2ab4:	4b46      	ldr	r3, [pc, #280]	; (2bd0 <Answear_ICMP+0x154>)
    2ab6:	0049      	lsls	r1, r1, #1
    2ab8:	5acb      	ldrh	r3, [r1, r3]
    2aba:	21ff      	movs	r1, #255	; 0xff
    2abc:	400b      	ands	r3, r1
    2abe:	b299      	uxth	r1, r3
    2ac0:	4b43      	ldr	r3, [pc, #268]	; (2bd0 <Answear_ICMP+0x154>)
    2ac2:	0052      	lsls	r2, r2, #1
    2ac4:	52d1      	strh	r1, [r2, r3]
    2ac6:	e004      	b.n	2ad2 <Answear_ICMP+0x56>
    2ac8:	1cbb      	adds	r3, r7, #2
    2aca:	1cba      	adds	r2, r7, #2
    2acc:	8812      	ldrh	r2, [r2, #0]
    2ace:	0852      	lsrs	r2, r2, #1
    2ad0:	801a      	strh	r2, [r3, #0]
    2ad2:	4b3f      	ldr	r3, [pc, #252]	; (2bd0 <Answear_ICMP+0x154>)
    2ad4:	88da      	ldrh	r2, [r3, #6]
    2ad6:	4b40      	ldr	r3, [pc, #256]	; (2bd8 <Answear_ICMP+0x15c>)
    2ad8:	801a      	strh	r2, [r3, #0]
    2ada:	4b3d      	ldr	r3, [pc, #244]	; (2bd0 <Answear_ICMP+0x154>)
    2adc:	891a      	ldrh	r2, [r3, #8]
    2ade:	4b3e      	ldr	r3, [pc, #248]	; (2bd8 <Answear_ICMP+0x15c>)
    2ae0:	805a      	strh	r2, [r3, #2]
    2ae2:	4b3b      	ldr	r3, [pc, #236]	; (2bd0 <Answear_ICMP+0x154>)
    2ae4:	895a      	ldrh	r2, [r3, #10]
    2ae6:	4b3c      	ldr	r3, [pc, #240]	; (2bd8 <Answear_ICMP+0x15c>)
    2ae8:	809a      	strh	r2, [r3, #4]
    2aea:	23c0      	movs	r3, #192	; 0xc0
    2aec:	059b      	lsls	r3, r3, #22
    2aee:	885b      	ldrh	r3, [r3, #2]
    2af0:	b29a      	uxth	r2, r3
    2af2:	4b39      	ldr	r3, [pc, #228]	; (2bd8 <Answear_ICMP+0x15c>)
    2af4:	80da      	strh	r2, [r3, #6]
    2af6:	23c0      	movs	r3, #192	; 0xc0
    2af8:	059b      	lsls	r3, r3, #22
    2afa:	889b      	ldrh	r3, [r3, #4]
    2afc:	b29a      	uxth	r2, r3
    2afe:	4b36      	ldr	r3, [pc, #216]	; (2bd8 <Answear_ICMP+0x15c>)
    2b00:	811a      	strh	r2, [r3, #8]
    2b02:	23c0      	movs	r3, #192	; 0xc0
    2b04:	059b      	lsls	r3, r3, #22
    2b06:	88db      	ldrh	r3, [r3, #6]
    2b08:	b29a      	uxth	r2, r3
    2b0a:	4b33      	ldr	r3, [pc, #204]	; (2bd8 <Answear_ICMP+0x15c>)
    2b0c:	815a      	strh	r2, [r3, #10]
    2b0e:	4b30      	ldr	r3, [pc, #192]	; (2bd0 <Answear_ICMP+0x154>)
    2b10:	899a      	ldrh	r2, [r3, #12]
    2b12:	4b31      	ldr	r3, [pc, #196]	; (2bd8 <Answear_ICMP+0x15c>)
    2b14:	819a      	strh	r2, [r3, #12]
    2b16:	2307      	movs	r3, #7
    2b18:	607b      	str	r3, [r7, #4]
    2b1a:	e00a      	b.n	2b32 <Answear_ICMP+0xb6>
    2b1c:	4b2c      	ldr	r3, [pc, #176]	; (2bd0 <Answear_ICMP+0x154>)
    2b1e:	687a      	ldr	r2, [r7, #4]
    2b20:	0052      	lsls	r2, r2, #1
    2b22:	5ad1      	ldrh	r1, [r2, r3]
    2b24:	4b2c      	ldr	r3, [pc, #176]	; (2bd8 <Answear_ICMP+0x15c>)
    2b26:	687a      	ldr	r2, [r7, #4]
    2b28:	0052      	lsls	r2, r2, #1
    2b2a:	52d1      	strh	r1, [r2, r3]
    2b2c:	687b      	ldr	r3, [r7, #4]
    2b2e:	3301      	adds	r3, #1
    2b30:	607b      	str	r3, [r7, #4]
    2b32:	687b      	ldr	r3, [r7, #4]
    2b34:	2b0b      	cmp	r3, #11
    2b36:	d9f1      	bls.n	2b1c <Answear_ICMP+0xa0>
    2b38:	4b25      	ldr	r3, [pc, #148]	; (2bd0 <Answear_ICMP+0x154>)
    2b3a:	0018      	movs	r0, r3
    2b3c:	f7ff fe4c 	bl	27d8 <CheckSum_IP>
    2b40:	0003      	movs	r3, r0
    2b42:	001a      	movs	r2, r3
    2b44:	4b24      	ldr	r3, [pc, #144]	; (2bd8 <Answear_ICMP+0x15c>)
    2b46:	831a      	strh	r2, [r3, #24]
    2b48:	4b21      	ldr	r3, [pc, #132]	; (2bd0 <Answear_ICMP+0x154>)
    2b4a:	8bda      	ldrh	r2, [r3, #30]
    2b4c:	4b22      	ldr	r3, [pc, #136]	; (2bd8 <Answear_ICMP+0x15c>)
    2b4e:	835a      	strh	r2, [r3, #26]
    2b50:	4b1f      	ldr	r3, [pc, #124]	; (2bd0 <Answear_ICMP+0x154>)
    2b52:	8c1a      	ldrh	r2, [r3, #32]
    2b54:	4b20      	ldr	r3, [pc, #128]	; (2bd8 <Answear_ICMP+0x15c>)
    2b56:	839a      	strh	r2, [r3, #28]
    2b58:	4b1d      	ldr	r3, [pc, #116]	; (2bd0 <Answear_ICMP+0x154>)
    2b5a:	8b5a      	ldrh	r2, [r3, #26]
    2b5c:	4b1e      	ldr	r3, [pc, #120]	; (2bd8 <Answear_ICMP+0x15c>)
    2b5e:	83da      	strh	r2, [r3, #30]
    2b60:	4b1b      	ldr	r3, [pc, #108]	; (2bd0 <Answear_ICMP+0x154>)
    2b62:	8b9a      	ldrh	r2, [r3, #28]
    2b64:	4b1c      	ldr	r3, [pc, #112]	; (2bd8 <Answear_ICMP+0x15c>)
    2b66:	841a      	strh	r2, [r3, #32]
    2b68:	4b1b      	ldr	r3, [pc, #108]	; (2bd8 <Answear_ICMP+0x15c>)
    2b6a:	2200      	movs	r2, #0
    2b6c:	845a      	strh	r2, [r3, #34]	; 0x22
    2b6e:	4b18      	ldr	r3, [pc, #96]	; (2bd0 <Answear_ICMP+0x154>)
    2b70:	2200      	movs	r2, #0
    2b72:	845a      	strh	r2, [r3, #34]	; 0x22
    2b74:	4a16      	ldr	r2, [pc, #88]	; (2bd0 <Answear_ICMP+0x154>)
    2b76:	1cbb      	adds	r3, r7, #2
    2b78:	881b      	ldrh	r3, [r3, #0]
    2b7a:	0011      	movs	r1, r2
    2b7c:	0018      	movs	r0, r3
    2b7e:	f7ff fe59 	bl	2834 <CheckSum_ICMP>
    2b82:	0003      	movs	r3, r0
    2b84:	001a      	movs	r2, r3
    2b86:	4b14      	ldr	r3, [pc, #80]	; (2bd8 <Answear_ICMP+0x15c>)
    2b88:	849a      	strh	r2, [r3, #36]	; 0x24
    2b8a:	2313      	movs	r3, #19
    2b8c:	607b      	str	r3, [r7, #4]
    2b8e:	e00a      	b.n	2ba6 <Answear_ICMP+0x12a>
    2b90:	4b0f      	ldr	r3, [pc, #60]	; (2bd0 <Answear_ICMP+0x154>)
    2b92:	687a      	ldr	r2, [r7, #4]
    2b94:	0052      	lsls	r2, r2, #1
    2b96:	5ad1      	ldrh	r1, [r2, r3]
    2b98:	4b0f      	ldr	r3, [pc, #60]	; (2bd8 <Answear_ICMP+0x15c>)
    2b9a:	687a      	ldr	r2, [r7, #4]
    2b9c:	0052      	lsls	r2, r2, #1
    2b9e:	52d1      	strh	r1, [r2, r3]
    2ba0:	687b      	ldr	r3, [r7, #4]
    2ba2:	3301      	adds	r3, #1
    2ba4:	607b      	str	r3, [r7, #4]
    2ba6:	1cbb      	adds	r3, r7, #2
    2ba8:	881b      	ldrh	r3, [r3, #0]
    2baa:	3311      	adds	r3, #17
    2bac:	001a      	movs	r2, r3
    2bae:	687b      	ldr	r3, [r7, #4]
    2bb0:	429a      	cmp	r2, r3
    2bb2:	d8ed      	bhi.n	2b90 <Answear_ICMP+0x114>
    2bb4:	1cbb      	adds	r3, r7, #2
    2bb6:	881b      	ldrh	r3, [r3, #0]
    2bb8:	3311      	adds	r3, #17
    2bba:	005a      	lsls	r2, r3, #1
    2bbc:	4b06      	ldr	r3, [pc, #24]	; (2bd8 <Answear_ICMP+0x15c>)
    2bbe:	0011      	movs	r1, r2
    2bc0:	0018      	movs	r0, r3
    2bc2:	f7ff fbb1 	bl	2328 <SendPacket>
    2bc6:	46c0      	nop			; (mov r8, r8)
    2bc8:	46bd      	mov	sp, r7
    2bca:	b002      	add	sp, #8
    2bcc:	bd80      	pop	{r7, pc}
    2bce:	46c0      	nop			; (mov r8, r8)
    2bd0:	20004d38 	.word	0x20004d38
    2bd4:	000005dc 	.word	0x000005dc
    2bd8:	20005344 	.word	0x20005344

00002bdc <Send_UDP>:
    2bdc:	b590      	push	{r4, r7, lr}
    2bde:	b089      	sub	sp, #36	; 0x24
    2be0:	af00      	add	r7, sp, #0
    2be2:	6078      	str	r0, [r7, #4]
    2be4:	6039      	str	r1, [r7, #0]
    2be6:	4b86      	ldr	r3, [pc, #536]	; (2e00 <Send_UDP+0x224>)
    2be8:	881a      	ldrh	r2, [r3, #0]
    2bea:	4b86      	ldr	r3, [pc, #536]	; (2e04 <Send_UDP+0x228>)
    2bec:	801a      	strh	r2, [r3, #0]
    2bee:	4b84      	ldr	r3, [pc, #528]	; (2e00 <Send_UDP+0x224>)
    2bf0:	885a      	ldrh	r2, [r3, #2]
    2bf2:	4b84      	ldr	r3, [pc, #528]	; (2e04 <Send_UDP+0x228>)
    2bf4:	805a      	strh	r2, [r3, #2]
    2bf6:	4b82      	ldr	r3, [pc, #520]	; (2e00 <Send_UDP+0x224>)
    2bf8:	889a      	ldrh	r2, [r3, #4]
    2bfa:	4b82      	ldr	r3, [pc, #520]	; (2e04 <Send_UDP+0x228>)
    2bfc:	809a      	strh	r2, [r3, #4]
    2bfe:	23c0      	movs	r3, #192	; 0xc0
    2c00:	059b      	lsls	r3, r3, #22
    2c02:	885b      	ldrh	r3, [r3, #2]
    2c04:	b29a      	uxth	r2, r3
    2c06:	4b7f      	ldr	r3, [pc, #508]	; (2e04 <Send_UDP+0x228>)
    2c08:	80da      	strh	r2, [r3, #6]
    2c0a:	23c0      	movs	r3, #192	; 0xc0
    2c0c:	059b      	lsls	r3, r3, #22
    2c0e:	889b      	ldrh	r3, [r3, #4]
    2c10:	b29a      	uxth	r2, r3
    2c12:	4b7c      	ldr	r3, [pc, #496]	; (2e04 <Send_UDP+0x228>)
    2c14:	811a      	strh	r2, [r3, #8]
    2c16:	23c0      	movs	r3, #192	; 0xc0
    2c18:	059b      	lsls	r3, r3, #22
    2c1a:	88db      	ldrh	r3, [r3, #6]
    2c1c:	b29a      	uxth	r2, r3
    2c1e:	4b79      	ldr	r3, [pc, #484]	; (2e04 <Send_UDP+0x228>)
    2c20:	815a      	strh	r2, [r3, #10]
    2c22:	4b78      	ldr	r3, [pc, #480]	; (2e04 <Send_UDP+0x228>)
    2c24:	2208      	movs	r2, #8
    2c26:	819a      	strh	r2, [r3, #12]
    2c28:	4b76      	ldr	r3, [pc, #472]	; (2e04 <Send_UDP+0x228>)
    2c2a:	2245      	movs	r2, #69	; 0x45
    2c2c:	81da      	strh	r2, [r3, #14]
    2c2e:	4b75      	ldr	r3, [pc, #468]	; (2e04 <Send_UDP+0x228>)
    2c30:	22f0      	movs	r2, #240	; 0xf0
    2c32:	0192      	lsls	r2, r2, #6
    2c34:	821a      	strh	r2, [r3, #16]
    2c36:	4b74      	ldr	r3, [pc, #464]	; (2e08 <Send_UDP+0x22c>)
    2c38:	881a      	ldrh	r2, [r3, #0]
    2c3a:	4b72      	ldr	r3, [pc, #456]	; (2e04 <Send_UDP+0x228>)
    2c3c:	825a      	strh	r2, [r3, #18]
    2c3e:	4b71      	ldr	r3, [pc, #452]	; (2e04 <Send_UDP+0x228>)
    2c40:	2200      	movs	r2, #0
    2c42:	829a      	strh	r2, [r3, #20]
    2c44:	4b6f      	ldr	r3, [pc, #444]	; (2e04 <Send_UDP+0x228>)
    2c46:	228c      	movs	r2, #140	; 0x8c
    2c48:	0152      	lsls	r2, r2, #5
    2c4a:	82da      	strh	r2, [r3, #22]
    2c4c:	4b6d      	ldr	r3, [pc, #436]	; (2e04 <Send_UDP+0x228>)
    2c4e:	2200      	movs	r2, #0
    2c50:	831a      	strh	r2, [r3, #24]
    2c52:	4b6e      	ldr	r3, [pc, #440]	; (2e0c <Send_UDP+0x230>)
    2c54:	881a      	ldrh	r2, [r3, #0]
    2c56:	4b6b      	ldr	r3, [pc, #428]	; (2e04 <Send_UDP+0x228>)
    2c58:	835a      	strh	r2, [r3, #26]
    2c5a:	4b6c      	ldr	r3, [pc, #432]	; (2e0c <Send_UDP+0x230>)
    2c5c:	885a      	ldrh	r2, [r3, #2]
    2c5e:	4b69      	ldr	r3, [pc, #420]	; (2e04 <Send_UDP+0x228>)
    2c60:	839a      	strh	r2, [r3, #28]
    2c62:	4b67      	ldr	r3, [pc, #412]	; (2e00 <Send_UDP+0x224>)
    2c64:	88da      	ldrh	r2, [r3, #6]
    2c66:	4b67      	ldr	r3, [pc, #412]	; (2e04 <Send_UDP+0x228>)
    2c68:	83da      	strh	r2, [r3, #30]
    2c6a:	4b65      	ldr	r3, [pc, #404]	; (2e00 <Send_UDP+0x224>)
    2c6c:	891a      	ldrh	r2, [r3, #8]
    2c6e:	4b65      	ldr	r3, [pc, #404]	; (2e04 <Send_UDP+0x228>)
    2c70:	841a      	strh	r2, [r3, #32]
    2c72:	2316      	movs	r3, #22
    2c74:	18fb      	adds	r3, r7, r3
    2c76:	4a66      	ldr	r2, [pc, #408]	; (2e10 <Send_UDP+0x234>)
    2c78:	801a      	strh	r2, [r3, #0]
    2c7a:	2316      	movs	r3, #22
    2c7c:	18fb      	adds	r3, r7, r3
    2c7e:	2216      	movs	r2, #22
    2c80:	18ba      	adds	r2, r7, r2
    2c82:	8812      	ldrh	r2, [r2, #0]
    2c84:	ba52      	rev16	r2, r2
    2c86:	801a      	strh	r2, [r3, #0]
    2c88:	4b62      	ldr	r3, [pc, #392]	; (2e14 <Send_UDP+0x238>)
    2c8a:	881a      	ldrh	r2, [r3, #0]
    2c8c:	2314      	movs	r3, #20
    2c8e:	18fb      	adds	r3, r7, r3
    2c90:	ba52      	rev16	r2, r2
    2c92:	801a      	strh	r2, [r3, #0]
    2c94:	4b5b      	ldr	r3, [pc, #364]	; (2e04 <Send_UDP+0x228>)
    2c96:	2216      	movs	r2, #22
    2c98:	18ba      	adds	r2, r7, r2
    2c9a:	8812      	ldrh	r2, [r2, #0]
    2c9c:	845a      	strh	r2, [r3, #34]	; 0x22
    2c9e:	4b59      	ldr	r3, [pc, #356]	; (2e04 <Send_UDP+0x228>)
    2ca0:	2214      	movs	r2, #20
    2ca2:	18ba      	adds	r2, r7, r2
    2ca4:	8812      	ldrh	r2, [r2, #0]
    2ca6:	849a      	strh	r2, [r3, #36]	; 0x24
    2ca8:	4b56      	ldr	r3, [pc, #344]	; (2e04 <Send_UDP+0x228>)
    2caa:	22c0      	movs	r2, #192	; 0xc0
    2cac:	0112      	lsls	r2, r2, #4
    2cae:	84da      	strh	r2, [r3, #38]	; 0x26
    2cb0:	4b54      	ldr	r3, [pc, #336]	; (2e04 <Send_UDP+0x228>)
    2cb2:	2200      	movs	r2, #0
    2cb4:	851a      	strh	r2, [r3, #40]	; 0x28
    2cb6:	4b58      	ldr	r3, [pc, #352]	; (2e18 <Send_UDP+0x23c>)
    2cb8:	61bb      	str	r3, [r7, #24]
    2cba:	683a      	ldr	r2, [r7, #0]
    2cbc:	23fe      	movs	r3, #254	; 0xfe
    2cbe:	005b      	lsls	r3, r3, #1
    2cc0:	429a      	cmp	r2, r3
    2cc2:	dd02      	ble.n	2cca <Send_UDP+0xee>
    2cc4:	23fe      	movs	r3, #254	; 0xfe
    2cc6:	005b      	lsls	r3, r3, #1
    2cc8:	603b      	str	r3, [r7, #0]
    2cca:	2300      	movs	r3, #0
    2ccc:	61fb      	str	r3, [r7, #28]
    2cce:	e00a      	b.n	2ce6 <Send_UDP+0x10a>
    2cd0:	69bb      	ldr	r3, [r7, #24]
    2cd2:	1c5a      	adds	r2, r3, #1
    2cd4:	61ba      	str	r2, [r7, #24]
    2cd6:	687a      	ldr	r2, [r7, #4]
    2cd8:	1c51      	adds	r1, r2, #1
    2cda:	6079      	str	r1, [r7, #4]
    2cdc:	7812      	ldrb	r2, [r2, #0]
    2cde:	701a      	strb	r2, [r3, #0]
    2ce0:	69fb      	ldr	r3, [r7, #28]
    2ce2:	3301      	adds	r3, #1
    2ce4:	61fb      	str	r3, [r7, #28]
    2ce6:	683b      	ldr	r3, [r7, #0]
    2ce8:	69fa      	ldr	r2, [r7, #28]
    2cea:	429a      	cmp	r2, r3
    2cec:	d3f0      	bcc.n	2cd0 <Send_UDP+0xf4>
    2cee:	683b      	ldr	r3, [r7, #0]
    2cf0:	b29a      	uxth	r2, r3
    2cf2:	2312      	movs	r3, #18
    2cf4:	18fb      	adds	r3, r7, r3
    2cf6:	321c      	adds	r2, #28
    2cf8:	801a      	strh	r2, [r3, #0]
    2cfa:	2312      	movs	r3, #18
    2cfc:	18fb      	adds	r3, r7, r3
    2cfe:	881b      	ldrh	r3, [r3, #0]
    2d00:	021b      	lsls	r3, r3, #8
    2d02:	b29a      	uxth	r2, r3
    2d04:	2312      	movs	r3, #18
    2d06:	18fb      	adds	r3, r7, r3
    2d08:	881b      	ldrh	r3, [r3, #0]
    2d0a:	0a1b      	lsrs	r3, r3, #8
    2d0c:	b29b      	uxth	r3, r3
    2d0e:	18d3      	adds	r3, r2, r3
    2d10:	b29a      	uxth	r2, r3
    2d12:	4b3c      	ldr	r3, [pc, #240]	; (2e04 <Send_UDP+0x228>)
    2d14:	821a      	strh	r2, [r3, #16]
    2d16:	4b3b      	ldr	r3, [pc, #236]	; (2e04 <Send_UDP+0x228>)
    2d18:	0018      	movs	r0, r3
    2d1a:	f7ff fd5d 	bl	27d8 <CheckSum_IP>
    2d1e:	0003      	movs	r3, r0
    2d20:	001a      	movs	r2, r3
    2d22:	4b38      	ldr	r3, [pc, #224]	; (2e04 <Send_UDP+0x228>)
    2d24:	831a      	strh	r2, [r3, #24]
    2d26:	683b      	ldr	r3, [r7, #0]
    2d28:	b29a      	uxth	r2, r3
    2d2a:	2310      	movs	r3, #16
    2d2c:	18fb      	adds	r3, r7, r3
    2d2e:	3208      	adds	r2, #8
    2d30:	801a      	strh	r2, [r3, #0]
    2d32:	2310      	movs	r3, #16
    2d34:	18fb      	adds	r3, r7, r3
    2d36:	881b      	ldrh	r3, [r3, #0]
    2d38:	021b      	lsls	r3, r3, #8
    2d3a:	b29a      	uxth	r2, r3
    2d3c:	2310      	movs	r3, #16
    2d3e:	18fb      	adds	r3, r7, r3
    2d40:	881b      	ldrh	r3, [r3, #0]
    2d42:	0a1b      	lsrs	r3, r3, #8
    2d44:	b29b      	uxth	r3, r3
    2d46:	18d3      	adds	r3, r2, r3
    2d48:	b29a      	uxth	r2, r3
    2d4a:	4b2e      	ldr	r3, [pc, #184]	; (2e04 <Send_UDP+0x228>)
    2d4c:	84da      	strh	r2, [r3, #38]	; 0x26
    2d4e:	683b      	ldr	r3, [r7, #0]
    2d50:	b29b      	uxth	r3, r3
    2d52:	3308      	adds	r3, #8
    2d54:	b29b      	uxth	r3, r3
    2d56:	220e      	movs	r2, #14
    2d58:	18bc      	adds	r4, r7, r2
    2d5a:	4a2a      	ldr	r2, [pc, #168]	; (2e04 <Send_UDP+0x228>)
    2d5c:	0011      	movs	r1, r2
    2d5e:	0018      	movs	r0, r3
    2d60:	f7ff fc8a 	bl	2678 <CheckSum_UDP>
    2d64:	0003      	movs	r3, r0
    2d66:	8023      	strh	r3, [r4, #0]
    2d68:	230e      	movs	r3, #14
    2d6a:	18fb      	adds	r3, r7, r3
    2d6c:	881b      	ldrh	r3, [r3, #0]
    2d6e:	021b      	lsls	r3, r3, #8
    2d70:	b29a      	uxth	r2, r3
    2d72:	230e      	movs	r3, #14
    2d74:	18fb      	adds	r3, r7, r3
    2d76:	881b      	ldrh	r3, [r3, #0]
    2d78:	0a1b      	lsrs	r3, r3, #8
    2d7a:	b29b      	uxth	r3, r3
    2d7c:	18d3      	adds	r3, r2, r3
    2d7e:	b29a      	uxth	r2, r3
    2d80:	4b20      	ldr	r3, [pc, #128]	; (2e04 <Send_UDP+0x228>)
    2d82:	851a      	strh	r2, [r3, #40]	; 0x28
    2d84:	683b      	ldr	r3, [r7, #0]
    2d86:	332a      	adds	r3, #42	; 0x2a
    2d88:	001a      	movs	r2, r3
    2d8a:	4b1e      	ldr	r3, [pc, #120]	; (2e04 <Send_UDP+0x228>)
    2d8c:	0011      	movs	r1, r2
    2d8e:	0018      	movs	r0, r3
    2d90:	f7ff faca 	bl	2328 <SendPacket>
    2d94:	4b1c      	ldr	r3, [pc, #112]	; (2e08 <Send_UDP+0x22c>)
    2d96:	881b      	ldrh	r3, [r3, #0]
    2d98:	0a1b      	lsrs	r3, r3, #8
    2d9a:	b29b      	uxth	r3, r3
    2d9c:	b2da      	uxtb	r2, r3
    2d9e:	230c      	movs	r3, #12
    2da0:	18fb      	adds	r3, r7, r3
    2da2:	701a      	strb	r2, [r3, #0]
    2da4:	4b18      	ldr	r3, [pc, #96]	; (2e08 <Send_UDP+0x22c>)
    2da6:	881b      	ldrh	r3, [r3, #0]
    2da8:	b2da      	uxtb	r2, r3
    2daa:	230c      	movs	r3, #12
    2dac:	18fb      	adds	r3, r7, r3
    2dae:	705a      	strb	r2, [r3, #1]
    2db0:	230c      	movs	r3, #12
    2db2:	18fb      	adds	r3, r7, r3
    2db4:	781b      	ldrb	r3, [r3, #0]
    2db6:	3301      	adds	r3, #1
    2db8:	b2da      	uxtb	r2, r3
    2dba:	230c      	movs	r3, #12
    2dbc:	18fb      	adds	r3, r7, r3
    2dbe:	701a      	strb	r2, [r3, #0]
    2dc0:	230c      	movs	r3, #12
    2dc2:	18fb      	adds	r3, r7, r3
    2dc4:	781b      	ldrb	r3, [r3, #0]
    2dc6:	2b00      	cmp	r3, #0
    2dc8:	d107      	bne.n	2dda <Send_UDP+0x1fe>
    2dca:	230c      	movs	r3, #12
    2dcc:	18fb      	adds	r3, r7, r3
    2dce:	785b      	ldrb	r3, [r3, #1]
    2dd0:	3301      	adds	r3, #1
    2dd2:	b2da      	uxtb	r2, r3
    2dd4:	230c      	movs	r3, #12
    2dd6:	18fb      	adds	r3, r7, r3
    2dd8:	705a      	strb	r2, [r3, #1]
    2dda:	230c      	movs	r3, #12
    2ddc:	18fb      	adds	r3, r7, r3
    2dde:	781b      	ldrb	r3, [r3, #0]
    2de0:	021b      	lsls	r3, r3, #8
    2de2:	b21a      	sxth	r2, r3
    2de4:	230c      	movs	r3, #12
    2de6:	18fb      	adds	r3, r7, r3
    2de8:	785b      	ldrb	r3, [r3, #1]
    2dea:	b21b      	sxth	r3, r3
    2dec:	4313      	orrs	r3, r2
    2dee:	b21b      	sxth	r3, r3
    2df0:	b29a      	uxth	r2, r3
    2df2:	4b05      	ldr	r3, [pc, #20]	; (2e08 <Send_UDP+0x22c>)
    2df4:	801a      	strh	r2, [r3, #0]
    2df6:	46c0      	nop			; (mov r8, r8)
    2df8:	46bd      	mov	sp, r7
    2dfa:	b009      	add	sp, #36	; 0x24
    2dfc:	bd90      	pop	{r4, r7, pc}
    2dfe:	46c0      	nop			; (mov r8, r8)
    2e00:	20004d1c 	.word	0x20004d1c
    2e04:	20005584 	.word	0x20005584
    2e08:	20004d30 	.word	0x20004d30
    2e0c:	2000000c 	.word	0x2000000c
    2e10:	00001234 	.word	0x00001234
    2e14:	20005318 	.word	0x20005318
    2e18:	200055ae 	.word	0x200055ae

00002e1c <PacketParser>:
    2e1c:	b580      	push	{r7, lr}
    2e1e:	b082      	sub	sp, #8
    2e20:	af00      	add	r7, sp, #0
    2e22:	4b49      	ldr	r3, [pc, #292]	; (2f48 <PacketParser+0x12c>)
    2e24:	899b      	ldrh	r3, [r3, #12]
    2e26:	2b08      	cmp	r3, #8
    2e28:	d005      	beq.n	2e36 <PacketParser+0x1a>
    2e2a:	22c1      	movs	r2, #193	; 0xc1
    2e2c:	00d2      	lsls	r2, r2, #3
    2e2e:	4293      	cmp	r3, r2
    2e30:	d100      	bne.n	2e34 <PacketParser+0x18>
    2e32:	e06b      	b.n	2f0c <PacketParser+0xf0>
    2e34:	e084      	b.n	2f40 <PacketParser+0x124>
    2e36:	4b44      	ldr	r3, [pc, #272]	; (2f48 <PacketParser+0x12c>)
    2e38:	8b9a      	ldrh	r2, [r3, #28]
    2e3a:	4b44      	ldr	r3, [pc, #272]	; (2f4c <PacketParser+0x130>)
    2e3c:	811a      	strh	r2, [r3, #8]
    2e3e:	4b42      	ldr	r3, [pc, #264]	; (2f48 <PacketParser+0x12c>)
    2e40:	8bda      	ldrh	r2, [r3, #30]
    2e42:	4b42      	ldr	r3, [pc, #264]	; (2f4c <PacketParser+0x130>)
    2e44:	80da      	strh	r2, [r3, #6]
    2e46:	4b41      	ldr	r3, [pc, #260]	; (2f4c <PacketParser+0x130>)
    2e48:	895b      	ldrh	r3, [r3, #10]
    2e4a:	2b00      	cmp	r3, #0
    2e4c:	d100      	bne.n	2e50 <PacketParser+0x34>
    2e4e:	e072      	b.n	2f36 <PacketParser+0x11a>
    2e50:	4b3d      	ldr	r3, [pc, #244]	; (2f48 <PacketParser+0x12c>)
    2e52:	8bda      	ldrh	r2, [r3, #30]
    2e54:	4b3e      	ldr	r3, [pc, #248]	; (2f50 <PacketParser+0x134>)
    2e56:	881b      	ldrh	r3, [r3, #0]
    2e58:	429a      	cmp	r2, r3
    2e5a:	d000      	beq.n	2e5e <PacketParser+0x42>
    2e5c:	e06d      	b.n	2f3a <PacketParser+0x11e>
    2e5e:	4b3a      	ldr	r3, [pc, #232]	; (2f48 <PacketParser+0x12c>)
    2e60:	8c1a      	ldrh	r2, [r3, #32]
    2e62:	4b3b      	ldr	r3, [pc, #236]	; (2f50 <PacketParser+0x134>)
    2e64:	885b      	ldrh	r3, [r3, #2]
    2e66:	429a      	cmp	r2, r3
    2e68:	d000      	beq.n	2e6c <PacketParser+0x50>
    2e6a:	e066      	b.n	2f3a <PacketParser+0x11e>
    2e6c:	4b36      	ldr	r3, [pc, #216]	; (2f48 <PacketParser+0x12c>)
    2e6e:	0018      	movs	r0, r3
    2e70:	f7ff fcb2 	bl	27d8 <CheckSum_IP>
    2e74:	0003      	movs	r3, r0
    2e76:	001a      	movs	r2, r3
    2e78:	4b33      	ldr	r3, [pc, #204]	; (2f48 <PacketParser+0x12c>)
    2e7a:	8b1b      	ldrh	r3, [r3, #24]
    2e7c:	429a      	cmp	r2, r3
    2e7e:	d15c      	bne.n	2f3a <PacketParser+0x11e>
    2e80:	4b31      	ldr	r3, [pc, #196]	; (2f48 <PacketParser+0x12c>)
    2e82:	8adb      	ldrh	r3, [r3, #22]
    2e84:	001a      	movs	r2, r3
    2e86:	23ff      	movs	r3, #255	; 0xff
    2e88:	021b      	lsls	r3, r3, #8
    2e8a:	401a      	ands	r2, r3
    2e8c:	2380      	movs	r3, #128	; 0x80
    2e8e:	005b      	lsls	r3, r3, #1
    2e90:	429a      	cmp	r2, r3
    2e92:	d110      	bne.n	2eb6 <PacketParser+0x9a>
    2e94:	4b2c      	ldr	r3, [pc, #176]	; (2f48 <PacketParser+0x12c>)
    2e96:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2e98:	2b00      	cmp	r3, #0
    2e9a:	d105      	bne.n	2ea8 <PacketParser+0x8c>
    2e9c:	4b2d      	ldr	r3, [pc, #180]	; (2f54 <PacketParser+0x138>)
    2e9e:	681b      	ldr	r3, [r3, #0]
    2ea0:	1c5a      	adds	r2, r3, #1
    2ea2:	4b2c      	ldr	r3, [pc, #176]	; (2f54 <PacketParser+0x138>)
    2ea4:	601a      	str	r2, [r3, #0]
    2ea6:	e048      	b.n	2f3a <PacketParser+0x11e>
    2ea8:	4b27      	ldr	r3, [pc, #156]	; (2f48 <PacketParser+0x12c>)
    2eaa:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2eac:	2b08      	cmp	r3, #8
    2eae:	d144      	bne.n	2f3a <PacketParser+0x11e>
    2eb0:	f7ff fde4 	bl	2a7c <Answear_ICMP>
    2eb4:	e041      	b.n	2f3a <PacketParser+0x11e>
    2eb6:	4b24      	ldr	r3, [pc, #144]	; (2f48 <PacketParser+0x12c>)
    2eb8:	8adb      	ldrh	r3, [r3, #22]
    2eba:	001a      	movs	r2, r3
    2ebc:	23ff      	movs	r3, #255	; 0xff
    2ebe:	021b      	lsls	r3, r3, #8
    2ec0:	401a      	ands	r2, r3
    2ec2:	2388      	movs	r3, #136	; 0x88
    2ec4:	015b      	lsls	r3, r3, #5
    2ec6:	429a      	cmp	r2, r3
    2ec8:	d137      	bne.n	2f3a <PacketParser+0x11e>
    2eca:	4b1f      	ldr	r3, [pc, #124]	; (2f48 <PacketParser+0x12c>)
    2ecc:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ece:	021b      	lsls	r3, r3, #8
    2ed0:	b29a      	uxth	r2, r3
    2ed2:	4b1d      	ldr	r3, [pc, #116]	; (2f48 <PacketParser+0x12c>)
    2ed4:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ed6:	0a1b      	lsrs	r3, r3, #8
    2ed8:	b29b      	uxth	r3, r3
    2eda:	18d3      	adds	r3, r2, r3
    2edc:	b29a      	uxth	r2, r3
    2ede:	4b1e      	ldr	r3, [pc, #120]	; (2f58 <PacketParser+0x13c>)
    2ee0:	801a      	strh	r2, [r3, #0]
    2ee2:	4b19      	ldr	r3, [pc, #100]	; (2f48 <PacketParser+0x12c>)
    2ee4:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2ee6:	021b      	lsls	r3, r3, #8
    2ee8:	b299      	uxth	r1, r3
    2eea:	4b17      	ldr	r3, [pc, #92]	; (2f48 <PacketParser+0x12c>)
    2eec:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2eee:	0a1b      	lsrs	r3, r3, #8
    2ef0:	b29a      	uxth	r2, r3
    2ef2:	1dbb      	adds	r3, r7, #6
    2ef4:	188a      	adds	r2, r1, r2
    2ef6:	801a      	strh	r2, [r3, #0]
    2ef8:	1dbb      	adds	r3, r7, #6
    2efa:	881b      	ldrh	r3, [r3, #0]
    2efc:	4a17      	ldr	r2, [pc, #92]	; (2f5c <PacketParser+0x140>)
    2efe:	4293      	cmp	r3, r2
    2f00:	d11b      	bne.n	2f3a <PacketParser+0x11e>
    2f02:	4b17      	ldr	r3, [pc, #92]	; (2f60 <PacketParser+0x144>)
    2f04:	0018      	movs	r0, r3
    2f06:	f001 f823 	bl	3f50 <mdb_proc_adu>
    2f0a:	e016      	b.n	2f3a <PacketParser+0x11e>
    2f0c:	4b0e      	ldr	r3, [pc, #56]	; (2f48 <PacketParser+0x12c>)
    2f0e:	8a9a      	ldrh	r2, [r3, #20]
    2f10:	2380      	movs	r3, #128	; 0x80
    2f12:	005b      	lsls	r3, r3, #1
    2f14:	429a      	cmp	r2, r3
    2f16:	d112      	bne.n	2f3e <PacketParser+0x122>
    2f18:	4b0b      	ldr	r3, [pc, #44]	; (2f48 <PacketParser+0x12c>)
    2f1a:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    2f1c:	4b0c      	ldr	r3, [pc, #48]	; (2f50 <PacketParser+0x134>)
    2f1e:	881b      	ldrh	r3, [r3, #0]
    2f20:	429a      	cmp	r2, r3
    2f22:	d10c      	bne.n	2f3e <PacketParser+0x122>
    2f24:	4b08      	ldr	r3, [pc, #32]	; (2f48 <PacketParser+0x12c>)
    2f26:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    2f28:	4b09      	ldr	r3, [pc, #36]	; (2f50 <PacketParser+0x134>)
    2f2a:	885b      	ldrh	r3, [r3, #2]
    2f2c:	429a      	cmp	r2, r3
    2f2e:	d106      	bne.n	2f3e <PacketParser+0x122>
    2f30:	f7ff fb2e 	bl	2590 <Answear_ARP>
    2f34:	e003      	b.n	2f3e <PacketParser+0x122>
    2f36:	46c0      	nop			; (mov r8, r8)
    2f38:	e002      	b.n	2f40 <PacketParser+0x124>
    2f3a:	46c0      	nop			; (mov r8, r8)
    2f3c:	e000      	b.n	2f40 <PacketParser+0x124>
    2f3e:	46c0      	nop			; (mov r8, r8)
    2f40:	46c0      	nop			; (mov r8, r8)
    2f42:	46bd      	mov	sp, r7
    2f44:	b002      	add	sp, #8
    2f46:	bd80      	pop	{r7, pc}
    2f48:	20004d38 	.word	0x20004d38
    2f4c:	20004d1c 	.word	0x20004d1c
    2f50:	2000000c 	.word	0x2000000c
    2f54:	20004d34 	.word	0x20004d34
    2f58:	20005318 	.word	0x20005318
    2f5c:	00001234 	.word	0x00001234
    2f60:	20004d62 	.word	0x20004d62

00002f64 <threadPacketParser>:
    2f64:	b580      	push	{r7, lr}
    2f66:	b086      	sub	sp, #24
    2f68:	af00      	add	r7, sp, #0
    2f6a:	6078      	str	r0, [r7, #4]
    2f6c:	4b31      	ldr	r3, [pc, #196]	; (3034 <threadPacketParser+0xd0>)
    2f6e:	0018      	movs	r0, r3
    2f70:	f003 fa36 	bl	63e0 <osMutexCreate>
    2f74:	0002      	movs	r2, r0
    2f76:	4b30      	ldr	r3, [pc, #192]	; (3038 <threadPacketParser+0xd4>)
    2f78:	601a      	str	r2, [r3, #0]
    2f7a:	4b30      	ldr	r3, [pc, #192]	; (303c <threadPacketParser+0xd8>)
    2f7c:	0018      	movs	r0, r3
    2f7e:	f003 fa2f 	bl	63e0 <osMutexCreate>
    2f82:	0002      	movs	r2, r0
    2f84:	4b2e      	ldr	r3, [pc, #184]	; (3040 <threadPacketParser+0xdc>)
    2f86:	601a      	str	r2, [r3, #0]
    2f88:	230c      	movs	r3, #12
    2f8a:	18f8      	adds	r0, r7, r3
    2f8c:	23fa      	movs	r3, #250	; 0xfa
    2f8e:	005b      	lsls	r3, r3, #1
    2f90:	001a      	movs	r2, r3
    2f92:	2100      	movs	r1, #0
    2f94:	f003 f996 	bl	62c4 <osSignalWait>
    2f98:	230c      	movs	r3, #12
    2f9a:	18fb      	adds	r3, r7, r3
    2f9c:	681b      	ldr	r3, [r3, #0]
    2f9e:	2b08      	cmp	r3, #8
    2fa0:	d120      	bne.n	2fe4 <threadPacketParser+0x80>
    2fa2:	230c      	movs	r3, #12
    2fa4:	18fb      	adds	r3, r7, r3
    2fa6:	685b      	ldr	r3, [r3, #4]
    2fa8:	2b01      	cmp	r3, #1
    2faa:	d142      	bne.n	3032 <threadPacketParser+0xce>
    2fac:	4b25      	ldr	r3, [pc, #148]	; (3044 <threadPacketParser+0xe0>)
    2fae:	4a25      	ldr	r2, [pc, #148]	; (3044 <threadPacketParser+0xe0>)
    2fb0:	6812      	ldr	r2, [r2, #0]
    2fb2:	2180      	movs	r1, #128	; 0x80
    2fb4:	404a      	eors	r2, r1
    2fb6:	601a      	str	r2, [r3, #0]
    2fb8:	e00a      	b.n	2fd0 <threadPacketParser+0x6c>
    2fba:	4b23      	ldr	r3, [pc, #140]	; (3048 <threadPacketParser+0xe4>)
    2fbc:	0018      	movs	r0, r3
    2fbe:	f7ff f8bd 	bl	213c <ReadPacket>
    2fc2:	0003      	movs	r3, r0
    2fc4:	b299      	uxth	r1, r3
    2fc6:	4b20      	ldr	r3, [pc, #128]	; (3048 <threadPacketParser+0xe4>)
    2fc8:	4a20      	ldr	r2, [pc, #128]	; (304c <threadPacketParser+0xe8>)
    2fca:	5299      	strh	r1, [r3, r2]
    2fcc:	f7ff ff26 	bl	2e1c <PacketParser>
    2fd0:	23c0      	movs	r3, #192	; 0xc0
    2fd2:	059b      	lsls	r3, r3, #22
    2fd4:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    2fd6:	b29b      	uxth	r3, r3
    2fd8:	001a      	movs	r2, r3
    2fda:	23e0      	movs	r3, #224	; 0xe0
    2fdc:	4013      	ands	r3, r2
    2fde:	d1ec      	bne.n	2fba <threadPacketParser+0x56>
    2fe0:	46c0      	nop			; (mov r8, r8)
    2fe2:	e026      	b.n	3032 <threadPacketParser+0xce>
    2fe4:	230c      	movs	r3, #12
    2fe6:	18fb      	adds	r3, r7, r3
    2fe8:	681b      	ldr	r3, [r3, #0]
    2fea:	2b40      	cmp	r3, #64	; 0x40
    2fec:	d1cc      	bne.n	2f88 <threadPacketParser+0x24>
    2fee:	23c0      	movs	r3, #192	; 0xc0
    2ff0:	059b      	lsls	r3, r3, #22
    2ff2:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    2ff4:	b29b      	uxth	r3, r3
    2ff6:	001a      	movs	r2, r3
    2ff8:	2302      	movs	r3, #2
    2ffa:	4013      	ands	r3, r2
    2ffc:	d104      	bne.n	3008 <threadPacketParser+0xa4>
    2ffe:	4b14      	ldr	r3, [pc, #80]	; (3050 <threadPacketParser+0xec>)
    3000:	2280      	movs	r2, #128	; 0x80
    3002:	0212      	lsls	r2, r2, #8
    3004:	621a      	str	r2, [r3, #32]
    3006:	e003      	b.n	3010 <threadPacketParser+0xac>
    3008:	4b11      	ldr	r3, [pc, #68]	; (3050 <threadPacketParser+0xec>)
    300a:	2280      	movs	r2, #128	; 0x80
    300c:	0212      	lsls	r2, r2, #8
    300e:	625a      	str	r2, [r3, #36]	; 0x24
    3010:	23c0      	movs	r3, #192	; 0xc0
    3012:	059b      	lsls	r3, r3, #22
    3014:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3016:	b29b      	uxth	r3, r3
    3018:	001a      	movs	r2, r3
    301a:	2308      	movs	r3, #8
    301c:	4013      	ands	r3, r2
    301e:	d104      	bne.n	302a <threadPacketParser+0xc6>
    3020:	4b0b      	ldr	r3, [pc, #44]	; (3050 <threadPacketParser+0xec>)
    3022:	2280      	movs	r2, #128	; 0x80
    3024:	01d2      	lsls	r2, r2, #7
    3026:	621a      	str	r2, [r3, #32]
    3028:	e7ae      	b.n	2f88 <threadPacketParser+0x24>
    302a:	4b09      	ldr	r3, [pc, #36]	; (3050 <threadPacketParser+0xec>)
    302c:	2280      	movs	r2, #128	; 0x80
    302e:	01d2      	lsls	r2, r2, #7
    3030:	625a      	str	r2, [r3, #36]	; 0x24
    3032:	e7a9      	b.n	2f88 <threadPacketParser+0x24>
    3034:	0000867c 	.word	0x0000867c
    3038:	2000532c 	.word	0x2000532c
    303c:	00008680 	.word	0x00008680
    3040:	20005340 	.word	0x20005340
    3044:	400c0000 	.word	0x400c0000
    3048:	20004d38 	.word	0x20004d38
    304c:	000005dc 	.word	0x000005dc
    3050:	400b0000 	.word	0x400b0000

00003054 <crc32>:
    3054:	b580      	push	{r7, lr}
    3056:	b084      	sub	sp, #16
    3058:	af00      	add	r7, sp, #0
    305a:	6078      	str	r0, [r7, #4]
    305c:	6039      	str	r1, [r7, #0]
    305e:	2301      	movs	r3, #1
    3060:	425b      	negs	r3, r3
    3062:	60bb      	str	r3, [r7, #8]
    3064:	2300      	movs	r3, #0
    3066:	60fb      	str	r3, [r7, #12]
    3068:	e012      	b.n	3090 <crc32+0x3c>
    306a:	68bb      	ldr	r3, [r7, #8]
    306c:	0a1a      	lsrs	r2, r3, #8
    306e:	68fb      	ldr	r3, [r7, #12]
    3070:	6879      	ldr	r1, [r7, #4]
    3072:	18cb      	adds	r3, r1, r3
    3074:	781b      	ldrb	r3, [r3, #0]
    3076:	0019      	movs	r1, r3
    3078:	68bb      	ldr	r3, [r7, #8]
    307a:	404b      	eors	r3, r1
    307c:	21ff      	movs	r1, #255	; 0xff
    307e:	4019      	ands	r1, r3
    3080:	4b08      	ldr	r3, [pc, #32]	; (30a4 <crc32+0x50>)
    3082:	0089      	lsls	r1, r1, #2
    3084:	58cb      	ldr	r3, [r1, r3]
    3086:	4053      	eors	r3, r2
    3088:	60bb      	str	r3, [r7, #8]
    308a:	68fb      	ldr	r3, [r7, #12]
    308c:	3301      	adds	r3, #1
    308e:	60fb      	str	r3, [r7, #12]
    3090:	68fa      	ldr	r2, [r7, #12]
    3092:	683b      	ldr	r3, [r7, #0]
    3094:	429a      	cmp	r2, r3
    3096:	d3e8      	bcc.n	306a <crc32+0x16>
    3098:	68bb      	ldr	r3, [r7, #8]
    309a:	0018      	movs	r0, r3
    309c:	46bd      	mov	sp, r7
    309e:	b004      	add	sp, #16
    30a0:	bd80      	pop	{r7, pc}
    30a2:	46c0      	nop			; (mov r8, r8)
    30a4:	00008684 	.word	0x00008684

000030a8 <crc16>:
    30a8:	b580      	push	{r7, lr}
    30aa:	b086      	sub	sp, #24
    30ac:	af00      	add	r7, sp, #0
    30ae:	6078      	str	r0, [r7, #4]
    30b0:	6039      	str	r1, [r7, #0]
    30b2:	2317      	movs	r3, #23
    30b4:	18fb      	adds	r3, r7, r3
    30b6:	22ff      	movs	r2, #255	; 0xff
    30b8:	701a      	strb	r2, [r3, #0]
    30ba:	2316      	movs	r3, #22
    30bc:	18fb      	adds	r3, r7, r3
    30be:	22ff      	movs	r2, #255	; 0xff
    30c0:	701a      	strb	r2, [r3, #0]
    30c2:	2300      	movs	r3, #0
    30c4:	613b      	str	r3, [r7, #16]
    30c6:	e01e      	b.n	3106 <crc16+0x5e>
    30c8:	693b      	ldr	r3, [r7, #16]
    30ca:	687a      	ldr	r2, [r7, #4]
    30cc:	18d3      	adds	r3, r2, r3
    30ce:	781a      	ldrb	r2, [r3, #0]
    30d0:	2317      	movs	r3, #23
    30d2:	18fb      	adds	r3, r7, r3
    30d4:	781b      	ldrb	r3, [r3, #0]
    30d6:	4053      	eors	r3, r2
    30d8:	b2db      	uxtb	r3, r3
    30da:	60fb      	str	r3, [r7, #12]
    30dc:	4a14      	ldr	r2, [pc, #80]	; (3130 <crc16+0x88>)
    30de:	68fb      	ldr	r3, [r7, #12]
    30e0:	18d3      	adds	r3, r2, r3
    30e2:	7819      	ldrb	r1, [r3, #0]
    30e4:	2317      	movs	r3, #23
    30e6:	18fb      	adds	r3, r7, r3
    30e8:	2216      	movs	r2, #22
    30ea:	18ba      	adds	r2, r7, r2
    30ec:	7812      	ldrb	r2, [r2, #0]
    30ee:	404a      	eors	r2, r1
    30f0:	701a      	strb	r2, [r3, #0]
    30f2:	2316      	movs	r3, #22
    30f4:	18fb      	adds	r3, r7, r3
    30f6:	490f      	ldr	r1, [pc, #60]	; (3134 <crc16+0x8c>)
    30f8:	68fa      	ldr	r2, [r7, #12]
    30fa:	188a      	adds	r2, r1, r2
    30fc:	7812      	ldrb	r2, [r2, #0]
    30fe:	701a      	strb	r2, [r3, #0]
    3100:	693b      	ldr	r3, [r7, #16]
    3102:	3301      	adds	r3, #1
    3104:	613b      	str	r3, [r7, #16]
    3106:	693a      	ldr	r2, [r7, #16]
    3108:	683b      	ldr	r3, [r7, #0]
    310a:	429a      	cmp	r2, r3
    310c:	dbdc      	blt.n	30c8 <crc16+0x20>
    310e:	2316      	movs	r3, #22
    3110:	18fb      	adds	r3, r7, r3
    3112:	781b      	ldrb	r3, [r3, #0]
    3114:	021b      	lsls	r3, r3, #8
    3116:	b21a      	sxth	r2, r3
    3118:	2317      	movs	r3, #23
    311a:	18fb      	adds	r3, r7, r3
    311c:	781b      	ldrb	r3, [r3, #0]
    311e:	b21b      	sxth	r3, r3
    3120:	4313      	orrs	r3, r2
    3122:	b21b      	sxth	r3, r3
    3124:	b29b      	uxth	r3, r3
    3126:	0018      	movs	r0, r3
    3128:	46bd      	mov	sp, r7
    312a:	b006      	add	sp, #24
    312c:	bd80      	pop	{r7, pc}
    312e:	46c0      	nop			; (mov r8, r8)
    3130:	00008a84 	.word	0x00008a84
    3134:	00008b84 	.word	0x00008b84

00003138 <eeprom_on>:
    3138:	b580      	push	{r7, lr}
    313a:	af00      	add	r7, sp, #0
    313c:	b672      	cpsid	i
    313e:	4b04      	ldr	r3, [pc, #16]	; (3150 <eeprom_on+0x18>)
    3140:	4a03      	ldr	r2, [pc, #12]	; (3150 <eeprom_on+0x18>)
    3142:	69d2      	ldr	r2, [r2, #28]
    3144:	2108      	movs	r1, #8
    3146:	430a      	orrs	r2, r1
    3148:	61da      	str	r2, [r3, #28]
    314a:	46c0      	nop			; (mov r8, r8)
    314c:	46bd      	mov	sp, r7
    314e:	bd80      	pop	{r7, pc}
    3150:	40020000 	.word	0x40020000

00003154 <eeprom_off>:
    3154:	b580      	push	{r7, lr}
    3156:	af00      	add	r7, sp, #0
    3158:	b662      	cpsie	i
    315a:	4b04      	ldr	r3, [pc, #16]	; (316c <eeprom_off+0x18>)
    315c:	4a03      	ldr	r2, [pc, #12]	; (316c <eeprom_off+0x18>)
    315e:	69d2      	ldr	r2, [r2, #28]
    3160:	2108      	movs	r1, #8
    3162:	438a      	bics	r2, r1
    3164:	61da      	str	r2, [r3, #28]
    3166:	46c0      	nop			; (mov r8, r8)
    3168:	46bd      	mov	sp, r7
    316a:	bd80      	pop	{r7, pc}
    316c:	40020000 	.word	0x40020000

00003170 <par_default>:
    3170:	b580      	push	{r7, lr}
    3172:	af00      	add	r7, sp, #0
    3174:	4b13      	ldr	r3, [pc, #76]	; (31c4 <par_default+0x54>)
    3176:	0018      	movs	r0, r3
    3178:	2314      	movs	r3, #20
    317a:	001a      	movs	r2, r3
    317c:	2100      	movs	r1, #0
    317e:	f001 fcc1 	bl	4b04 <memset>
    3182:	4b10      	ldr	r3, [pc, #64]	; (31c4 <par_default+0x54>)
    3184:	22bc      	movs	r2, #188	; 0xbc
    3186:	701a      	strb	r2, [r3, #0]
    3188:	4b0e      	ldr	r3, [pc, #56]	; (31c4 <par_default+0x54>)
    318a:	229a      	movs	r2, #154	; 0x9a
    318c:	705a      	strb	r2, [r3, #1]
    318e:	4b0d      	ldr	r3, [pc, #52]	; (31c4 <par_default+0x54>)
    3190:	2278      	movs	r2, #120	; 0x78
    3192:	709a      	strb	r2, [r3, #2]
    3194:	4b0b      	ldr	r3, [pc, #44]	; (31c4 <par_default+0x54>)
    3196:	2256      	movs	r2, #86	; 0x56
    3198:	70da      	strb	r2, [r3, #3]
    319a:	4b0a      	ldr	r3, [pc, #40]	; (31c4 <par_default+0x54>)
    319c:	2234      	movs	r2, #52	; 0x34
    319e:	711a      	strb	r2, [r3, #4]
    31a0:	4b08      	ldr	r3, [pc, #32]	; (31c4 <par_default+0x54>)
    31a2:	2212      	movs	r2, #18
    31a4:	715a      	strb	r2, [r3, #5]
    31a6:	4b07      	ldr	r3, [pc, #28]	; (31c4 <par_default+0x54>)
    31a8:	2201      	movs	r2, #1
    31aa:	719a      	strb	r2, [r3, #6]
    31ac:	4b05      	ldr	r3, [pc, #20]	; (31c4 <par_default+0x54>)
    31ae:	220a      	movs	r2, #10
    31b0:	725a      	strb	r2, [r3, #9]
    31b2:	4b04      	ldr	r3, [pc, #16]	; (31c4 <par_default+0x54>)
    31b4:	2202      	movs	r2, #2
    31b6:	729a      	strb	r2, [r3, #10]
    31b8:	4b02      	ldr	r3, [pc, #8]	; (31c4 <par_default+0x54>)
    31ba:	220a      	movs	r2, #10
    31bc:	735a      	strb	r2, [r3, #13]
    31be:	46c0      	nop			; (mov r8, r8)
    31c0:	46bd      	mov	sp, r7
    31c2:	bd80      	pop	{r7, pc}
    31c4:	20005b60 	.word	0x20005b60

000031c8 <par_save>:
    31c8:	b580      	push	{r7, lr}
    31ca:	b084      	sub	sp, #16
    31cc:	af00      	add	r7, sp, #0
    31ce:	f7ff ffb3 	bl	3138 <eeprom_on>
    31d2:	f005 f999 	bl	8508 <__eeprom_erase_page_veneer>
    31d6:	1e03      	subs	r3, r0, #0
    31d8:	d01b      	beq.n	3212 <par_save+0x4a>
    31da:	4b11      	ldr	r3, [pc, #68]	; (3220 <par_save+0x58>)
    31dc:	60bb      	str	r3, [r7, #8]
    31de:	2305      	movs	r3, #5
    31e0:	603b      	str	r3, [r7, #0]
    31e2:	2300      	movs	r3, #0
    31e4:	607b      	str	r3, [r7, #4]
    31e6:	2300      	movs	r3, #0
    31e8:	60fb      	str	r3, [r7, #12]
    31ea:	e00e      	b.n	320a <par_save+0x42>
    31ec:	68bb      	ldr	r3, [r7, #8]
    31ee:	1d1a      	adds	r2, r3, #4
    31f0:	60ba      	str	r2, [r7, #8]
    31f2:	681a      	ldr	r2, [r3, #0]
    31f4:	687b      	ldr	r3, [r7, #4]
    31f6:	0011      	movs	r1, r2
    31f8:	0018      	movs	r0, r3
    31fa:	f005 f995 	bl	8528 <__eeprom_program_word_veneer>
    31fe:	687b      	ldr	r3, [r7, #4]
    3200:	3304      	adds	r3, #4
    3202:	607b      	str	r3, [r7, #4]
    3204:	68fb      	ldr	r3, [r7, #12]
    3206:	3301      	adds	r3, #1
    3208:	60fb      	str	r3, [r7, #12]
    320a:	68fa      	ldr	r2, [r7, #12]
    320c:	683b      	ldr	r3, [r7, #0]
    320e:	429a      	cmp	r2, r3
    3210:	dbec      	blt.n	31ec <par_save+0x24>
    3212:	f7ff ff9f 	bl	3154 <eeprom_off>
    3216:	46c0      	nop			; (mov r8, r8)
    3218:	46bd      	mov	sp, r7
    321a:	b004      	add	sp, #16
    321c:	bd80      	pop	{r7, pc}
    321e:	46c0      	nop			; (mov r8, r8)
    3220:	20005b60 	.word	0x20005b60

00003224 <par_verify>:
    3224:	b590      	push	{r4, r7, lr}
    3226:	b087      	sub	sp, #28
    3228:	af00      	add	r7, sp, #0
    322a:	2301      	movs	r3, #1
    322c:	617b      	str	r3, [r7, #20]
    322e:	f7ff ff83 	bl	3138 <eeprom_on>
    3232:	4b13      	ldr	r3, [pc, #76]	; (3280 <par_verify+0x5c>)
    3234:	60fb      	str	r3, [r7, #12]
    3236:	2305      	movs	r3, #5
    3238:	607b      	str	r3, [r7, #4]
    323a:	2300      	movs	r3, #0
    323c:	60bb      	str	r3, [r7, #8]
    323e:	2300      	movs	r3, #0
    3240:	613b      	str	r3, [r7, #16]
    3242:	e012      	b.n	326a <par_verify+0x46>
    3244:	68fb      	ldr	r3, [r7, #12]
    3246:	1d1a      	adds	r2, r3, #4
    3248:	60fa      	str	r2, [r7, #12]
    324a:	681c      	ldr	r4, [r3, #0]
    324c:	68bb      	ldr	r3, [r7, #8]
    324e:	0018      	movs	r0, r3
    3250:	f005 f962 	bl	8518 <__eeprom_read_word_veneer>
    3254:	0003      	movs	r3, r0
    3256:	429c      	cmp	r4, r3
    3258:	d001      	beq.n	325e <par_verify+0x3a>
    325a:	2300      	movs	r3, #0
    325c:	617b      	str	r3, [r7, #20]
    325e:	68bb      	ldr	r3, [r7, #8]
    3260:	3304      	adds	r3, #4
    3262:	60bb      	str	r3, [r7, #8]
    3264:	693b      	ldr	r3, [r7, #16]
    3266:	3301      	adds	r3, #1
    3268:	613b      	str	r3, [r7, #16]
    326a:	693a      	ldr	r2, [r7, #16]
    326c:	687b      	ldr	r3, [r7, #4]
    326e:	429a      	cmp	r2, r3
    3270:	dbe8      	blt.n	3244 <par_verify+0x20>
    3272:	f7ff ff6f 	bl	3154 <eeprom_off>
    3276:	697b      	ldr	r3, [r7, #20]
    3278:	0018      	movs	r0, r3
    327a:	46bd      	mov	sp, r7
    327c:	b007      	add	sp, #28
    327e:	bd90      	pop	{r4, r7, pc}
    3280:	20005b60 	.word	0x20005b60

00003284 <par_read>:
    3284:	b590      	push	{r4, r7, lr}
    3286:	b085      	sub	sp, #20
    3288:	af00      	add	r7, sp, #0
    328a:	f7ff ff55 	bl	3138 <eeprom_on>
    328e:	4b16      	ldr	r3, [pc, #88]	; (32e8 <par_read+0x64>)
    3290:	60bb      	str	r3, [r7, #8]
    3292:	2305      	movs	r3, #5
    3294:	603b      	str	r3, [r7, #0]
    3296:	2300      	movs	r3, #0
    3298:	607b      	str	r3, [r7, #4]
    329a:	2300      	movs	r3, #0
    329c:	60fb      	str	r3, [r7, #12]
    329e:	e00e      	b.n	32be <par_read+0x3a>
    32a0:	68bc      	ldr	r4, [r7, #8]
    32a2:	1d23      	adds	r3, r4, #4
    32a4:	60bb      	str	r3, [r7, #8]
    32a6:	687b      	ldr	r3, [r7, #4]
    32a8:	0018      	movs	r0, r3
    32aa:	f005 f935 	bl	8518 <__eeprom_read_word_veneer>
    32ae:	0003      	movs	r3, r0
    32b0:	6023      	str	r3, [r4, #0]
    32b2:	687b      	ldr	r3, [r7, #4]
    32b4:	3304      	adds	r3, #4
    32b6:	607b      	str	r3, [r7, #4]
    32b8:	68fb      	ldr	r3, [r7, #12]
    32ba:	3301      	adds	r3, #1
    32bc:	60fb      	str	r3, [r7, #12]
    32be:	68fa      	ldr	r2, [r7, #12]
    32c0:	683b      	ldr	r3, [r7, #0]
    32c2:	429a      	cmp	r2, r3
    32c4:	dbec      	blt.n	32a0 <par_read+0x1c>
    32c6:	f7ff ff45 	bl	3154 <eeprom_off>
    32ca:	4b07      	ldr	r3, [pc, #28]	; (32e8 <par_read+0x64>)
    32cc:	2114      	movs	r1, #20
    32ce:	0018      	movs	r0, r3
    32d0:	f7ff fec0 	bl	3054 <crc32>
    32d4:	1e03      	subs	r3, r0, #0
    32d6:	d001      	beq.n	32dc <par_read+0x58>
    32d8:	2300      	movs	r3, #0
    32da:	e000      	b.n	32de <par_read+0x5a>
    32dc:	2301      	movs	r3, #1
    32de:	0018      	movs	r0, r3
    32e0:	46bd      	mov	sp, r7
    32e2:	b005      	add	sp, #20
    32e4:	bd90      	pop	{r4, r7, pc}
    32e6:	46c0      	nop			; (mov r8, r8)
    32e8:	20005b60 	.word	0x20005b60

000032ec <par_update>:
    32ec:	b580      	push	{r7, lr}
    32ee:	b088      	sub	sp, #32
    32f0:	af00      	add	r7, sp, #0
    32f2:	6078      	str	r0, [r7, #4]
    32f4:	687b      	ldr	r3, [r7, #4]
    32f6:	1c5a      	adds	r2, r3, #1
    32f8:	607a      	str	r2, [r7, #4]
    32fa:	781b      	ldrb	r3, [r3, #0]
    32fc:	617b      	str	r3, [r7, #20]
    32fe:	687b      	ldr	r3, [r7, #4]
    3300:	1c5a      	adds	r2, r3, #1
    3302:	607a      	str	r2, [r7, #4]
    3304:	781b      	ldrb	r3, [r3, #0]
    3306:	613b      	str	r3, [r7, #16]
    3308:	687b      	ldr	r3, [r7, #4]
    330a:	1c5a      	adds	r2, r3, #1
    330c:	607a      	str	r2, [r7, #4]
    330e:	781b      	ldrb	r3, [r3, #0]
    3310:	60fb      	str	r3, [r7, #12]
    3312:	687b      	ldr	r3, [r7, #4]
    3314:	1c5a      	adds	r2, r3, #1
    3316:	607a      	str	r2, [r7, #4]
    3318:	781b      	ldrb	r3, [r3, #0]
    331a:	021b      	lsls	r3, r3, #8
    331c:	001a      	movs	r2, r3
    331e:	68fb      	ldr	r3, [r7, #12]
    3320:	189b      	adds	r3, r3, r2
    3322:	60fb      	str	r3, [r7, #12]
    3324:	68fb      	ldr	r3, [r7, #12]
    3326:	2201      	movs	r2, #1
    3328:	4013      	ands	r3, r2
    332a:	60bb      	str	r3, [r7, #8]
    332c:	697a      	ldr	r2, [r7, #20]
    332e:	693b      	ldr	r3, [r7, #16]
    3330:	18d3      	adds	r3, r2, r3
    3332:	2b14      	cmp	r3, #20
    3334:	d82c      	bhi.n	3390 <par_update+0xa4>
    3336:	68bb      	ldr	r3, [r7, #8]
    3338:	2b00      	cmp	r3, #0
    333a:	d126      	bne.n	338a <par_update+0x9e>
    333c:	697a      	ldr	r2, [r7, #20]
    333e:	4b16      	ldr	r3, [pc, #88]	; (3398 <par_update+0xac>)
    3340:	18d3      	adds	r3, r2, r3
    3342:	61bb      	str	r3, [r7, #24]
    3344:	2300      	movs	r3, #0
    3346:	61fb      	str	r3, [r7, #28]
    3348:	e00a      	b.n	3360 <par_update+0x74>
    334a:	69bb      	ldr	r3, [r7, #24]
    334c:	1c5a      	adds	r2, r3, #1
    334e:	61ba      	str	r2, [r7, #24]
    3350:	687a      	ldr	r2, [r7, #4]
    3352:	1c51      	adds	r1, r2, #1
    3354:	6079      	str	r1, [r7, #4]
    3356:	7812      	ldrb	r2, [r2, #0]
    3358:	701a      	strb	r2, [r3, #0]
    335a:	69fb      	ldr	r3, [r7, #28]
    335c:	3301      	adds	r3, #1
    335e:	61fb      	str	r3, [r7, #28]
    3360:	69fa      	ldr	r2, [r7, #28]
    3362:	693b      	ldr	r3, [r7, #16]
    3364:	429a      	cmp	r2, r3
    3366:	d3f0      	bcc.n	334a <par_update+0x5e>
    3368:	4b0b      	ldr	r3, [pc, #44]	; (3398 <par_update+0xac>)
    336a:	2110      	movs	r1, #16
    336c:	0018      	movs	r0, r3
    336e:	f7ff fe71 	bl	3054 <crc32>
    3372:	0002      	movs	r2, r0
    3374:	4b08      	ldr	r3, [pc, #32]	; (3398 <par_update+0xac>)
    3376:	611a      	str	r2, [r3, #16]
    3378:	f7ff ff26 	bl	31c8 <par_save>
    337c:	f7ff ff52 	bl	3224 <par_verify>
    3380:	1e03      	subs	r3, r0, #0
    3382:	d106      	bne.n	3392 <par_update+0xa6>
    3384:	f7ff fef4 	bl	3170 <par_default>
    3388:	e003      	b.n	3392 <par_update+0xa6>
    338a:	f7ff ff7b 	bl	3284 <par_read>
    338e:	e000      	b.n	3392 <par_update+0xa6>
    3390:	46c0      	nop			; (mov r8, r8)
    3392:	46bd      	mov	sp, r7
    3394:	b008      	add	sp, #32
    3396:	bd80      	pop	{r7, pc}
    3398:	20005b60 	.word	0x20005b60

0000339c <par_mac>:
    339c:	b580      	push	{r7, lr}
    339e:	b084      	sub	sp, #16
    33a0:	af00      	add	r7, sp, #0
    33a2:	6078      	str	r0, [r7, #4]
    33a4:	4b0b      	ldr	r3, [pc, #44]	; (33d4 <par_mac+0x38>)
    33a6:	60fb      	str	r3, [r7, #12]
    33a8:	2300      	movs	r3, #0
    33aa:	60bb      	str	r3, [r7, #8]
    33ac:	e00a      	b.n	33c4 <par_mac+0x28>
    33ae:	687b      	ldr	r3, [r7, #4]
    33b0:	1c5a      	adds	r2, r3, #1
    33b2:	607a      	str	r2, [r7, #4]
    33b4:	68fa      	ldr	r2, [r7, #12]
    33b6:	1e51      	subs	r1, r2, #1
    33b8:	60f9      	str	r1, [r7, #12]
    33ba:	7812      	ldrb	r2, [r2, #0]
    33bc:	701a      	strb	r2, [r3, #0]
    33be:	68bb      	ldr	r3, [r7, #8]
    33c0:	3301      	adds	r3, #1
    33c2:	60bb      	str	r3, [r7, #8]
    33c4:	68bb      	ldr	r3, [r7, #8]
    33c6:	2b05      	cmp	r3, #5
    33c8:	ddf1      	ble.n	33ae <par_mac+0x12>
    33ca:	46c0      	nop			; (mov r8, r8)
    33cc:	46bd      	mov	sp, r7
    33ce:	b004      	add	sp, #16
    33d0:	bd80      	pop	{r7, pc}
    33d2:	46c0      	nop			; (mov r8, r8)
    33d4:	20005b65 	.word	0x20005b65

000033d8 <par_iploc>:
    33d8:	b580      	push	{r7, lr}
    33da:	b084      	sub	sp, #16
    33dc:	af00      	add	r7, sp, #0
    33de:	6078      	str	r0, [r7, #4]
    33e0:	4b0b      	ldr	r3, [pc, #44]	; (3410 <par_iploc+0x38>)
    33e2:	60fb      	str	r3, [r7, #12]
    33e4:	2300      	movs	r3, #0
    33e6:	60bb      	str	r3, [r7, #8]
    33e8:	e00a      	b.n	3400 <par_iploc+0x28>
    33ea:	687b      	ldr	r3, [r7, #4]
    33ec:	1c5a      	adds	r2, r3, #1
    33ee:	607a      	str	r2, [r7, #4]
    33f0:	68fa      	ldr	r2, [r7, #12]
    33f2:	1e51      	subs	r1, r2, #1
    33f4:	60f9      	str	r1, [r7, #12]
    33f6:	7812      	ldrb	r2, [r2, #0]
    33f8:	701a      	strb	r2, [r3, #0]
    33fa:	68bb      	ldr	r3, [r7, #8]
    33fc:	3301      	adds	r3, #1
    33fe:	60bb      	str	r3, [r7, #8]
    3400:	68bb      	ldr	r3, [r7, #8]
    3402:	2b03      	cmp	r3, #3
    3404:	ddf1      	ble.n	33ea <par_iploc+0x12>
    3406:	46c0      	nop			; (mov r8, r8)
    3408:	46bd      	mov	sp, r7
    340a:	b004      	add	sp, #16
    340c:	bd80      	pop	{r7, pc}
    340e:	46c0      	nop			; (mov r8, r8)
    3410:	20005b69 	.word	0x20005b69

00003414 <par_iprem>:
    3414:	b580      	push	{r7, lr}
    3416:	b084      	sub	sp, #16
    3418:	af00      	add	r7, sp, #0
    341a:	6078      	str	r0, [r7, #4]
    341c:	4b0b      	ldr	r3, [pc, #44]	; (344c <par_iprem+0x38>)
    341e:	60fb      	str	r3, [r7, #12]
    3420:	2300      	movs	r3, #0
    3422:	60bb      	str	r3, [r7, #8]
    3424:	e00a      	b.n	343c <par_iprem+0x28>
    3426:	687b      	ldr	r3, [r7, #4]
    3428:	1c5a      	adds	r2, r3, #1
    342a:	607a      	str	r2, [r7, #4]
    342c:	68fa      	ldr	r2, [r7, #12]
    342e:	1e51      	subs	r1, r2, #1
    3430:	60f9      	str	r1, [r7, #12]
    3432:	7812      	ldrb	r2, [r2, #0]
    3434:	701a      	strb	r2, [r3, #0]
    3436:	68bb      	ldr	r3, [r7, #8]
    3438:	3301      	adds	r3, #1
    343a:	60bb      	str	r3, [r7, #8]
    343c:	68bb      	ldr	r3, [r7, #8]
    343e:	2b03      	cmp	r3, #3
    3440:	ddf1      	ble.n	3426 <par_iprem+0x12>
    3442:	46c0      	nop			; (mov r8, r8)
    3444:	46bd      	mov	sp, r7
    3446:	b004      	add	sp, #16
    3448:	bd80      	pop	{r7, pc}
    344a:	46c0      	nop			; (mov r8, r8)
    344c:	20005b6d 	.word	0x20005b6d

00003450 <mdb_fifo_read>:
    3450:	b580      	push	{r7, lr}
    3452:	b086      	sub	sp, #24
    3454:	af00      	add	r7, sp, #0
    3456:	6078      	str	r0, [r7, #4]
    3458:	6039      	str	r1, [r7, #0]
    345a:	4b1f      	ldr	r3, [pc, #124]	; (34d8 <mdb_fifo_read+0x88>)
    345c:	681a      	ldr	r2, [r3, #0]
    345e:	2301      	movs	r3, #1
    3460:	425b      	negs	r3, r3
    3462:	0019      	movs	r1, r3
    3464:	0010      	movs	r0, r2
    3466:	f002 ffe1 	bl	642c <osMutexWait>
    346a:	4b1c      	ldr	r3, [pc, #112]	; (34dc <mdb_fifo_read+0x8c>)
    346c:	681a      	ldr	r2, [r3, #0]
    346e:	4b1c      	ldr	r3, [pc, #112]	; (34e0 <mdb_fifo_read+0x90>)
    3470:	681b      	ldr	r3, [r3, #0]
    3472:	1ad3      	subs	r3, r2, r3
    3474:	05db      	lsls	r3, r3, #23
    3476:	0ddb      	lsrs	r3, r3, #23
    3478:	613b      	str	r3, [r7, #16]
    347a:	693b      	ldr	r3, [r7, #16]
    347c:	2280      	movs	r2, #128	; 0x80
    347e:	0092      	lsls	r2, r2, #2
    3480:	1ad3      	subs	r3, r2, r3
    3482:	60fb      	str	r3, [r7, #12]
    3484:	683a      	ldr	r2, [r7, #0]
    3486:	693b      	ldr	r3, [r7, #16]
    3488:	429a      	cmp	r2, r3
    348a:	d819      	bhi.n	34c0 <mdb_fifo_read+0x70>
    348c:	2300      	movs	r3, #0
    348e:	617b      	str	r3, [r7, #20]
    3490:	e011      	b.n	34b6 <mdb_fifo_read+0x66>
    3492:	687b      	ldr	r3, [r7, #4]
    3494:	1c5a      	adds	r2, r3, #1
    3496:	607a      	str	r2, [r7, #4]
    3498:	4a11      	ldr	r2, [pc, #68]	; (34e0 <mdb_fifo_read+0x90>)
    349a:	6812      	ldr	r2, [r2, #0]
    349c:	4911      	ldr	r1, [pc, #68]	; (34e4 <mdb_fifo_read+0x94>)
    349e:	5c8a      	ldrb	r2, [r1, r2]
    34a0:	701a      	strb	r2, [r3, #0]
    34a2:	4b0f      	ldr	r3, [pc, #60]	; (34e0 <mdb_fifo_read+0x90>)
    34a4:	681b      	ldr	r3, [r3, #0]
    34a6:	3301      	adds	r3, #1
    34a8:	05db      	lsls	r3, r3, #23
    34aa:	0dda      	lsrs	r2, r3, #23
    34ac:	4b0c      	ldr	r3, [pc, #48]	; (34e0 <mdb_fifo_read+0x90>)
    34ae:	601a      	str	r2, [r3, #0]
    34b0:	697b      	ldr	r3, [r7, #20]
    34b2:	3301      	adds	r3, #1
    34b4:	617b      	str	r3, [r7, #20]
    34b6:	697a      	ldr	r2, [r7, #20]
    34b8:	683b      	ldr	r3, [r7, #0]
    34ba:	429a      	cmp	r2, r3
    34bc:	dbe9      	blt.n	3492 <mdb_fifo_read+0x42>
    34be:	e001      	b.n	34c4 <mdb_fifo_read+0x74>
    34c0:	2300      	movs	r3, #0
    34c2:	603b      	str	r3, [r7, #0]
    34c4:	4b04      	ldr	r3, [pc, #16]	; (34d8 <mdb_fifo_read+0x88>)
    34c6:	681b      	ldr	r3, [r3, #0]
    34c8:	0018      	movs	r0, r3
    34ca:	f002 ffbf 	bl	644c <osMutexRelease>
    34ce:	683b      	ldr	r3, [r7, #0]
    34d0:	0018      	movs	r0, r3
    34d2:	46bd      	mov	sp, r7
    34d4:	b006      	add	sp, #24
    34d6:	bd80      	pop	{r7, pc}
    34d8:	20000888 	.word	0x20000888
    34dc:	20005d74 	.word	0x20005d74
    34e0:	20005d78 	.word	0x20005d78
    34e4:	20005b74 	.word	0x20005b74

000034e8 <mdb_fifo_write>:
    34e8:	b580      	push	{r7, lr}
    34ea:	b086      	sub	sp, #24
    34ec:	af00      	add	r7, sp, #0
    34ee:	6078      	str	r0, [r7, #4]
    34f0:	6039      	str	r1, [r7, #0]
    34f2:	4b1c      	ldr	r3, [pc, #112]	; (3564 <mdb_fifo_write+0x7c>)
    34f4:	681a      	ldr	r2, [r3, #0]
    34f6:	2301      	movs	r3, #1
    34f8:	425b      	negs	r3, r3
    34fa:	0019      	movs	r1, r3
    34fc:	0010      	movs	r0, r2
    34fe:	f002 ff95 	bl	642c <osMutexWait>
    3502:	4b19      	ldr	r3, [pc, #100]	; (3568 <mdb_fifo_write+0x80>)
    3504:	681a      	ldr	r2, [r3, #0]
    3506:	4b19      	ldr	r3, [pc, #100]	; (356c <mdb_fifo_write+0x84>)
    3508:	681b      	ldr	r3, [r3, #0]
    350a:	1ad3      	subs	r3, r2, r3
    350c:	05db      	lsls	r3, r3, #23
    350e:	0ddb      	lsrs	r3, r3, #23
    3510:	613b      	str	r3, [r7, #16]
    3512:	693b      	ldr	r3, [r7, #16]
    3514:	2280      	movs	r2, #128	; 0x80
    3516:	0092      	lsls	r2, r2, #2
    3518:	1ad3      	subs	r3, r2, r3
    351a:	60fb      	str	r3, [r7, #12]
    351c:	2300      	movs	r3, #0
    351e:	617b      	str	r3, [r7, #20]
    3520:	e011      	b.n	3546 <mdb_fifo_write+0x5e>
    3522:	4b11      	ldr	r3, [pc, #68]	; (3568 <mdb_fifo_write+0x80>)
    3524:	681a      	ldr	r2, [r3, #0]
    3526:	687b      	ldr	r3, [r7, #4]
    3528:	1c59      	adds	r1, r3, #1
    352a:	6079      	str	r1, [r7, #4]
    352c:	7819      	ldrb	r1, [r3, #0]
    352e:	4b10      	ldr	r3, [pc, #64]	; (3570 <mdb_fifo_write+0x88>)
    3530:	5499      	strb	r1, [r3, r2]
    3532:	4b0d      	ldr	r3, [pc, #52]	; (3568 <mdb_fifo_write+0x80>)
    3534:	681b      	ldr	r3, [r3, #0]
    3536:	3301      	adds	r3, #1
    3538:	05db      	lsls	r3, r3, #23
    353a:	0dda      	lsrs	r2, r3, #23
    353c:	4b0a      	ldr	r3, [pc, #40]	; (3568 <mdb_fifo_write+0x80>)
    353e:	601a      	str	r2, [r3, #0]
    3540:	697b      	ldr	r3, [r7, #20]
    3542:	3301      	adds	r3, #1
    3544:	617b      	str	r3, [r7, #20]
    3546:	697a      	ldr	r2, [r7, #20]
    3548:	683b      	ldr	r3, [r7, #0]
    354a:	429a      	cmp	r2, r3
    354c:	dbe9      	blt.n	3522 <mdb_fifo_write+0x3a>
    354e:	4b05      	ldr	r3, [pc, #20]	; (3564 <mdb_fifo_write+0x7c>)
    3550:	681b      	ldr	r3, [r3, #0]
    3552:	0018      	movs	r0, r3
    3554:	f002 ff7a 	bl	644c <osMutexRelease>
    3558:	683b      	ldr	r3, [r7, #0]
    355a:	0018      	movs	r0, r3
    355c:	46bd      	mov	sp, r7
    355e:	b006      	add	sp, #24
    3560:	bd80      	pop	{r7, pc}
    3562:	46c0      	nop			; (mov r8, r8)
    3564:	20000888 	.word	0x20000888
    3568:	20005d74 	.word	0x20005d74
    356c:	20005d78 	.word	0x20005d78
    3570:	20005b74 	.word	0x20005b74

00003574 <mdb_get_testparam>:
    3574:	b5b0      	push	{r4, r5, r7, lr}
    3576:	b086      	sub	sp, #24
    3578:	af00      	add	r7, sp, #0
    357a:	6078      	str	r0, [r7, #4]
    357c:	4b84      	ldr	r3, [pc, #528]	; (3790 <mdb_get_testparam+0x21c>)
    357e:	885b      	ldrh	r3, [r3, #2]
    3580:	041b      	lsls	r3, r3, #16
    3582:	4a83      	ldr	r2, [pc, #524]	; (3790 <mdb_get_testparam+0x21c>)
    3584:	8892      	ldrh	r2, [r2, #4]
    3586:	4313      	orrs	r3, r2
    3588:	001a      	movs	r2, r3
    358a:	687b      	ldr	r3, [r7, #4]
    358c:	21ff      	movs	r1, #255	; 0xff
    358e:	4011      	ands	r1, r2
    3590:	000c      	movs	r4, r1
    3592:	7819      	ldrb	r1, [r3, #0]
    3594:	2000      	movs	r0, #0
    3596:	4001      	ands	r1, r0
    3598:	1c08      	adds	r0, r1, #0
    359a:	1c21      	adds	r1, r4, #0
    359c:	4301      	orrs	r1, r0
    359e:	7019      	strb	r1, [r3, #0]
    35a0:	0a11      	lsrs	r1, r2, #8
    35a2:	20ff      	movs	r0, #255	; 0xff
    35a4:	4001      	ands	r1, r0
    35a6:	000c      	movs	r4, r1
    35a8:	7859      	ldrb	r1, [r3, #1]
    35aa:	2000      	movs	r0, #0
    35ac:	4001      	ands	r1, r0
    35ae:	1c08      	adds	r0, r1, #0
    35b0:	1c21      	adds	r1, r4, #0
    35b2:	4301      	orrs	r1, r0
    35b4:	7059      	strb	r1, [r3, #1]
    35b6:	0c11      	lsrs	r1, r2, #16
    35b8:	20ff      	movs	r0, #255	; 0xff
    35ba:	4001      	ands	r1, r0
    35bc:	000c      	movs	r4, r1
    35be:	7899      	ldrb	r1, [r3, #2]
    35c0:	2000      	movs	r0, #0
    35c2:	4001      	ands	r1, r0
    35c4:	1c08      	adds	r0, r1, #0
    35c6:	1c21      	adds	r1, r4, #0
    35c8:	4301      	orrs	r1, r0
    35ca:	7099      	strb	r1, [r3, #2]
    35cc:	0e10      	lsrs	r0, r2, #24
    35ce:	78da      	ldrb	r2, [r3, #3]
    35d0:	2100      	movs	r1, #0
    35d2:	400a      	ands	r2, r1
    35d4:	1c11      	adds	r1, r2, #0
    35d6:	1c02      	adds	r2, r0, #0
    35d8:	430a      	orrs	r2, r1
    35da:	70da      	strb	r2, [r3, #3]
    35dc:	4b6c      	ldr	r3, [pc, #432]	; (3790 <mdb_get_testparam+0x21c>)
    35de:	88db      	ldrh	r3, [r3, #6]
    35e0:	041b      	lsls	r3, r3, #16
    35e2:	4a6b      	ldr	r2, [pc, #428]	; (3790 <mdb_get_testparam+0x21c>)
    35e4:	8912      	ldrh	r2, [r2, #8]
    35e6:	4313      	orrs	r3, r2
    35e8:	001a      	movs	r2, r3
    35ea:	687b      	ldr	r3, [r7, #4]
    35ec:	21ff      	movs	r1, #255	; 0xff
    35ee:	4011      	ands	r1, r2
    35f0:	000c      	movs	r4, r1
    35f2:	7919      	ldrb	r1, [r3, #4]
    35f4:	2000      	movs	r0, #0
    35f6:	4001      	ands	r1, r0
    35f8:	1c08      	adds	r0, r1, #0
    35fa:	1c21      	adds	r1, r4, #0
    35fc:	4301      	orrs	r1, r0
    35fe:	7119      	strb	r1, [r3, #4]
    3600:	0a11      	lsrs	r1, r2, #8
    3602:	20ff      	movs	r0, #255	; 0xff
    3604:	4001      	ands	r1, r0
    3606:	000c      	movs	r4, r1
    3608:	7959      	ldrb	r1, [r3, #5]
    360a:	2000      	movs	r0, #0
    360c:	4001      	ands	r1, r0
    360e:	1c08      	adds	r0, r1, #0
    3610:	1c21      	adds	r1, r4, #0
    3612:	4301      	orrs	r1, r0
    3614:	7159      	strb	r1, [r3, #5]
    3616:	0c11      	lsrs	r1, r2, #16
    3618:	20ff      	movs	r0, #255	; 0xff
    361a:	4001      	ands	r1, r0
    361c:	000c      	movs	r4, r1
    361e:	7999      	ldrb	r1, [r3, #6]
    3620:	2000      	movs	r0, #0
    3622:	4001      	ands	r1, r0
    3624:	1c08      	adds	r0, r1, #0
    3626:	1c21      	adds	r1, r4, #0
    3628:	4301      	orrs	r1, r0
    362a:	7199      	strb	r1, [r3, #6]
    362c:	0e10      	lsrs	r0, r2, #24
    362e:	79da      	ldrb	r2, [r3, #7]
    3630:	2100      	movs	r1, #0
    3632:	400a      	ands	r2, r1
    3634:	1c11      	adds	r1, r2, #0
    3636:	1c02      	adds	r2, r0, #0
    3638:	430a      	orrs	r2, r1
    363a:	71da      	strb	r2, [r3, #7]
    363c:	4b54      	ldr	r3, [pc, #336]	; (3790 <mdb_get_testparam+0x21c>)
    363e:	895b      	ldrh	r3, [r3, #10]
    3640:	041b      	lsls	r3, r3, #16
    3642:	4a53      	ldr	r2, [pc, #332]	; (3790 <mdb_get_testparam+0x21c>)
    3644:	8992      	ldrh	r2, [r2, #12]
    3646:	4313      	orrs	r3, r2
    3648:	001a      	movs	r2, r3
    364a:	687b      	ldr	r3, [r7, #4]
    364c:	21ff      	movs	r1, #255	; 0xff
    364e:	4011      	ands	r1, r2
    3650:	000c      	movs	r4, r1
    3652:	7a19      	ldrb	r1, [r3, #8]
    3654:	2000      	movs	r0, #0
    3656:	4001      	ands	r1, r0
    3658:	1c08      	adds	r0, r1, #0
    365a:	1c21      	adds	r1, r4, #0
    365c:	4301      	orrs	r1, r0
    365e:	7219      	strb	r1, [r3, #8]
    3660:	0a11      	lsrs	r1, r2, #8
    3662:	20ff      	movs	r0, #255	; 0xff
    3664:	4001      	ands	r1, r0
    3666:	000c      	movs	r4, r1
    3668:	7a59      	ldrb	r1, [r3, #9]
    366a:	2000      	movs	r0, #0
    366c:	4001      	ands	r1, r0
    366e:	1c08      	adds	r0, r1, #0
    3670:	1c21      	adds	r1, r4, #0
    3672:	4301      	orrs	r1, r0
    3674:	7259      	strb	r1, [r3, #9]
    3676:	0c11      	lsrs	r1, r2, #16
    3678:	20ff      	movs	r0, #255	; 0xff
    367a:	4001      	ands	r1, r0
    367c:	000c      	movs	r4, r1
    367e:	7a99      	ldrb	r1, [r3, #10]
    3680:	2000      	movs	r0, #0
    3682:	4001      	ands	r1, r0
    3684:	1c08      	adds	r0, r1, #0
    3686:	1c21      	adds	r1, r4, #0
    3688:	4301      	orrs	r1, r0
    368a:	7299      	strb	r1, [r3, #10]
    368c:	0e10      	lsrs	r0, r2, #24
    368e:	7ada      	ldrb	r2, [r3, #11]
    3690:	2100      	movs	r1, #0
    3692:	400a      	ands	r2, r1
    3694:	1c11      	adds	r1, r2, #0
    3696:	1c02      	adds	r2, r0, #0
    3698:	430a      	orrs	r2, r1
    369a:	72da      	strb	r2, [r3, #11]
    369c:	4b3c      	ldr	r3, [pc, #240]	; (3790 <mdb_get_testparam+0x21c>)
    369e:	89db      	ldrh	r3, [r3, #14]
    36a0:	041b      	lsls	r3, r3, #16
    36a2:	4a3b      	ldr	r2, [pc, #236]	; (3790 <mdb_get_testparam+0x21c>)
    36a4:	8a12      	ldrh	r2, [r2, #16]
    36a6:	4313      	orrs	r3, r2
    36a8:	001a      	movs	r2, r3
    36aa:	687b      	ldr	r3, [r7, #4]
    36ac:	21ff      	movs	r1, #255	; 0xff
    36ae:	4011      	ands	r1, r2
    36b0:	000c      	movs	r4, r1
    36b2:	7b19      	ldrb	r1, [r3, #12]
    36b4:	2000      	movs	r0, #0
    36b6:	4001      	ands	r1, r0
    36b8:	1c08      	adds	r0, r1, #0
    36ba:	1c21      	adds	r1, r4, #0
    36bc:	4301      	orrs	r1, r0
    36be:	7319      	strb	r1, [r3, #12]
    36c0:	0a11      	lsrs	r1, r2, #8
    36c2:	20ff      	movs	r0, #255	; 0xff
    36c4:	4001      	ands	r1, r0
    36c6:	000c      	movs	r4, r1
    36c8:	7b59      	ldrb	r1, [r3, #13]
    36ca:	2000      	movs	r0, #0
    36cc:	4001      	ands	r1, r0
    36ce:	1c08      	adds	r0, r1, #0
    36d0:	1c21      	adds	r1, r4, #0
    36d2:	4301      	orrs	r1, r0
    36d4:	7359      	strb	r1, [r3, #13]
    36d6:	0c11      	lsrs	r1, r2, #16
    36d8:	20ff      	movs	r0, #255	; 0xff
    36da:	4001      	ands	r1, r0
    36dc:	000c      	movs	r4, r1
    36de:	7b99      	ldrb	r1, [r3, #14]
    36e0:	2000      	movs	r0, #0
    36e2:	4001      	ands	r1, r0
    36e4:	1c08      	adds	r0, r1, #0
    36e6:	1c21      	adds	r1, r4, #0
    36e8:	4301      	orrs	r1, r0
    36ea:	7399      	strb	r1, [r3, #14]
    36ec:	0e10      	lsrs	r0, r2, #24
    36ee:	7bda      	ldrb	r2, [r3, #15]
    36f0:	2100      	movs	r1, #0
    36f2:	400a      	ands	r2, r1
    36f4:	1c11      	adds	r1, r2, #0
    36f6:	1c02      	adds	r2, r0, #0
    36f8:	430a      	orrs	r2, r1
    36fa:	73da      	strb	r2, [r3, #15]
    36fc:	4b25      	ldr	r3, [pc, #148]	; (3794 <mdb_get_testparam+0x220>)
    36fe:	613b      	str	r3, [r7, #16]
    3700:	4b25      	ldr	r3, [pc, #148]	; (3798 <mdb_get_testparam+0x224>)
    3702:	60fb      	str	r3, [r7, #12]
    3704:	2300      	movs	r3, #0
    3706:	617b      	str	r3, [r7, #20]
    3708:	e03a      	b.n	3780 <mdb_get_testparam+0x20c>
    370a:	693b      	ldr	r3, [r7, #16]
    370c:	1c9a      	adds	r2, r3, #2
    370e:	613a      	str	r2, [r7, #16]
    3710:	8819      	ldrh	r1, [r3, #0]
    3712:	687a      	ldr	r2, [r7, #4]
    3714:	697b      	ldr	r3, [r7, #20]
    3716:	3308      	adds	r3, #8
    3718:	005b      	lsls	r3, r3, #1
    371a:	20ff      	movs	r0, #255	; 0xff
    371c:	4008      	ands	r0, r1
    371e:	0005      	movs	r5, r0
    3720:	5c98      	ldrb	r0, [r3, r2]
    3722:	2400      	movs	r4, #0
    3724:	4020      	ands	r0, r4
    3726:	1c04      	adds	r4, r0, #0
    3728:	1c28      	adds	r0, r5, #0
    372a:	4320      	orrs	r0, r4
    372c:	5498      	strb	r0, [r3, r2]
    372e:	0a09      	lsrs	r1, r1, #8
    3730:	b288      	uxth	r0, r1
    3732:	18d3      	adds	r3, r2, r3
    3734:	785a      	ldrb	r2, [r3, #1]
    3736:	2100      	movs	r1, #0
    3738:	400a      	ands	r2, r1
    373a:	1c11      	adds	r1, r2, #0
    373c:	1c02      	adds	r2, r0, #0
    373e:	430a      	orrs	r2, r1
    3740:	705a      	strb	r2, [r3, #1]
    3742:	68fb      	ldr	r3, [r7, #12]
    3744:	1c9a      	adds	r2, r3, #2
    3746:	60fa      	str	r2, [r7, #12]
    3748:	881a      	ldrh	r2, [r3, #0]
    374a:	6879      	ldr	r1, [r7, #4]
    374c:	697b      	ldr	r3, [r7, #20]
    374e:	330c      	adds	r3, #12
    3750:	005b      	lsls	r3, r3, #1
    3752:	18cb      	adds	r3, r1, r3
    3754:	21ff      	movs	r1, #255	; 0xff
    3756:	4011      	ands	r1, r2
    3758:	000c      	movs	r4, r1
    375a:	7899      	ldrb	r1, [r3, #2]
    375c:	2000      	movs	r0, #0
    375e:	4001      	ands	r1, r0
    3760:	1c08      	adds	r0, r1, #0
    3762:	1c21      	adds	r1, r4, #0
    3764:	4301      	orrs	r1, r0
    3766:	7099      	strb	r1, [r3, #2]
    3768:	0a12      	lsrs	r2, r2, #8
    376a:	b290      	uxth	r0, r2
    376c:	78da      	ldrb	r2, [r3, #3]
    376e:	2100      	movs	r1, #0
    3770:	400a      	ands	r2, r1
    3772:	1c11      	adds	r1, r2, #0
    3774:	1c02      	adds	r2, r0, #0
    3776:	430a      	orrs	r2, r1
    3778:	70da      	strb	r2, [r3, #3]
    377a:	697b      	ldr	r3, [r7, #20]
    377c:	3301      	adds	r3, #1
    377e:	617b      	str	r3, [r7, #20]
    3780:	697b      	ldr	r3, [r7, #20]
    3782:	2b04      	cmp	r3, #4
    3784:	ddc1      	ble.n	370a <mdb_get_testparam+0x196>
    3786:	46c0      	nop			; (mov r8, r8)
    3788:	46bd      	mov	sp, r7
    378a:	b006      	add	sp, #24
    378c:	bdb0      	pop	{r4, r5, r7, pc}
    378e:	46c0      	nop			; (mov r8, r8)
    3790:	20005d7c 	.word	0x20005d7c
    3794:	20005d8e 	.word	0x20005d8e
    3798:	20005d98 	.word	0x20005d98

0000379c <mdb_get_holding_register>:
    379c:	b580      	push	{r7, lr}
    379e:	b084      	sub	sp, #16
    37a0:	af00      	add	r7, sp, #0
    37a2:	6078      	str	r0, [r7, #4]
    37a4:	687b      	ldr	r3, [r7, #4]
    37a6:	2b00      	cmp	r3, #0
    37a8:	db02      	blt.n	37b0 <mdb_get_holding_register+0x14>
    37aa:	687b      	ldr	r3, [r7, #4]
    37ac:	2b17      	cmp	r3, #23
    37ae:	dd01      	ble.n	37b4 <mdb_get_holding_register+0x18>
    37b0:	2300      	movs	r3, #0
    37b2:	e009      	b.n	37c8 <mdb_get_holding_register+0x2c>
    37b4:	230e      	movs	r3, #14
    37b6:	18fb      	adds	r3, r7, r3
    37b8:	4a05      	ldr	r2, [pc, #20]	; (37d0 <mdb_get_holding_register+0x34>)
    37ba:	6879      	ldr	r1, [r7, #4]
    37bc:	0049      	lsls	r1, r1, #1
    37be:	5a8a      	ldrh	r2, [r1, r2]
    37c0:	801a      	strh	r2, [r3, #0]
    37c2:	230e      	movs	r3, #14
    37c4:	18fb      	adds	r3, r7, r3
    37c6:	881b      	ldrh	r3, [r3, #0]
    37c8:	0018      	movs	r0, r3
    37ca:	46bd      	mov	sp, r7
    37cc:	b004      	add	sp, #16
    37ce:	bd80      	pop	{r7, pc}
    37d0:	20005d7c 	.word	0x20005d7c

000037d4 <pdu_report_server_id>:
    37d4:	b580      	push	{r7, lr}
    37d6:	b086      	sub	sp, #24
    37d8:	af00      	add	r7, sp, #0
    37da:	6078      	str	r0, [r7, #4]
    37dc:	2311      	movs	r3, #17
    37de:	60fb      	str	r3, [r7, #12]
    37e0:	4b1f      	ldr	r3, [pc, #124]	; (3860 <pdu_report_server_id+0x8c>)
    37e2:	681a      	ldr	r2, [r3, #0]
    37e4:	687b      	ldr	r3, [r7, #4]
    37e6:	18d2      	adds	r2, r2, r3
    37e8:	230b      	movs	r3, #11
    37ea:	18fb      	adds	r3, r7, r3
    37ec:	7812      	ldrb	r2, [r2, #0]
    37ee:	701a      	strb	r2, [r3, #0]
    37f0:	687b      	ldr	r3, [r7, #4]
    37f2:	617b      	str	r3, [r7, #20]
    37f4:	697b      	ldr	r3, [r7, #20]
    37f6:	1c5a      	adds	r2, r3, #1
    37f8:	617a      	str	r2, [r7, #20]
    37fa:	4a1a      	ldr	r2, [pc, #104]	; (3864 <pdu_report_server_id+0x90>)
    37fc:	210b      	movs	r1, #11
    37fe:	1879      	adds	r1, r7, r1
    3800:	7809      	ldrb	r1, [r1, #0]
    3802:	54d1      	strb	r1, [r2, r3]
    3804:	697b      	ldr	r3, [r7, #20]
    3806:	1c5a      	adds	r2, r3, #1
    3808:	617a      	str	r2, [r7, #20]
    380a:	68fa      	ldr	r2, [r7, #12]
    380c:	b2d2      	uxtb	r2, r2
    380e:	3202      	adds	r2, #2
    3810:	b2d1      	uxtb	r1, r2
    3812:	4a14      	ldr	r2, [pc, #80]	; (3864 <pdu_report_server_id+0x90>)
    3814:	54d1      	strb	r1, [r2, r3]
    3816:	697b      	ldr	r3, [r7, #20]
    3818:	1c5a      	adds	r2, r3, #1
    381a:	617a      	str	r2, [r7, #20]
    381c:	4a11      	ldr	r2, [pc, #68]	; (3864 <pdu_report_server_id+0x90>)
    381e:	2111      	movs	r1, #17
    3820:	54d1      	strb	r1, [r2, r3]
    3822:	697b      	ldr	r3, [r7, #20]
    3824:	1c5a      	adds	r2, r3, #1
    3826:	617a      	str	r2, [r7, #20]
    3828:	4a0e      	ldr	r2, [pc, #56]	; (3864 <pdu_report_server_id+0x90>)
    382a:	21ff      	movs	r1, #255	; 0xff
    382c:	54d1      	strb	r1, [r2, r3]
    382e:	2300      	movs	r3, #0
    3830:	613b      	str	r3, [r7, #16]
    3832:	e00b      	b.n	384c <pdu_report_server_id+0x78>
    3834:	697b      	ldr	r3, [r7, #20]
    3836:	1c5a      	adds	r2, r3, #1
    3838:	617a      	str	r2, [r7, #20]
    383a:	490b      	ldr	r1, [pc, #44]	; (3868 <pdu_report_server_id+0x94>)
    383c:	693a      	ldr	r2, [r7, #16]
    383e:	188a      	adds	r2, r1, r2
    3840:	7811      	ldrb	r1, [r2, #0]
    3842:	4a08      	ldr	r2, [pc, #32]	; (3864 <pdu_report_server_id+0x90>)
    3844:	54d1      	strb	r1, [r2, r3]
    3846:	693b      	ldr	r3, [r7, #16]
    3848:	3301      	adds	r3, #1
    384a:	613b      	str	r3, [r7, #16]
    384c:	693a      	ldr	r2, [r7, #16]
    384e:	68fb      	ldr	r3, [r7, #12]
    3850:	429a      	cmp	r2, r3
    3852:	dbef      	blt.n	3834 <pdu_report_server_id+0x60>
    3854:	697b      	ldr	r3, [r7, #20]
    3856:	0018      	movs	r0, r3
    3858:	46bd      	mov	sp, r7
    385a:	b006      	add	sp, #24
    385c:	bd80      	pop	{r7, pc}
    385e:	46c0      	nop			; (mov r8, r8)
    3860:	20005db8 	.word	0x20005db8
    3864:	20005dbc 	.word	0x20005dbc
    3868:	00008c98 	.word	0x00008c98

0000386c <pdu_read_input_registers>:
    386c:	b580      	push	{r7, lr}
    386e:	b086      	sub	sp, #24
    3870:	af00      	add	r7, sp, #0
    3872:	6078      	str	r0, [r7, #4]
    3874:	4b4e      	ldr	r3, [pc, #312]	; (39b0 <pdu_read_input_registers+0x144>)
    3876:	681a      	ldr	r2, [r3, #0]
    3878:	687b      	ldr	r3, [r7, #4]
    387a:	18d2      	adds	r2, r2, r3
    387c:	230f      	movs	r3, #15
    387e:	18fb      	adds	r3, r7, r3
    3880:	7812      	ldrb	r2, [r2, #0]
    3882:	701a      	strb	r2, [r3, #0]
    3884:	4b4a      	ldr	r3, [pc, #296]	; (39b0 <pdu_read_input_registers+0x144>)
    3886:	681a      	ldr	r2, [r3, #0]
    3888:	687b      	ldr	r3, [r7, #4]
    388a:	3301      	adds	r3, #1
    388c:	18d3      	adds	r3, r2, r3
    388e:	781b      	ldrb	r3, [r3, #0]
    3890:	021b      	lsls	r3, r3, #8
    3892:	b21a      	sxth	r2, r3
    3894:	4b46      	ldr	r3, [pc, #280]	; (39b0 <pdu_read_input_registers+0x144>)
    3896:	6819      	ldr	r1, [r3, #0]
    3898:	687b      	ldr	r3, [r7, #4]
    389a:	3302      	adds	r3, #2
    389c:	18cb      	adds	r3, r1, r3
    389e:	781b      	ldrb	r3, [r3, #0]
    38a0:	b21b      	sxth	r3, r3
    38a2:	4313      	orrs	r3, r2
    38a4:	b21a      	sxth	r2, r3
    38a6:	230c      	movs	r3, #12
    38a8:	18fb      	adds	r3, r7, r3
    38aa:	801a      	strh	r2, [r3, #0]
    38ac:	4b40      	ldr	r3, [pc, #256]	; (39b0 <pdu_read_input_registers+0x144>)
    38ae:	681a      	ldr	r2, [r3, #0]
    38b0:	687b      	ldr	r3, [r7, #4]
    38b2:	3303      	adds	r3, #3
    38b4:	18d3      	adds	r3, r2, r3
    38b6:	781b      	ldrb	r3, [r3, #0]
    38b8:	021b      	lsls	r3, r3, #8
    38ba:	b21a      	sxth	r2, r3
    38bc:	4b3c      	ldr	r3, [pc, #240]	; (39b0 <pdu_read_input_registers+0x144>)
    38be:	6819      	ldr	r1, [r3, #0]
    38c0:	687b      	ldr	r3, [r7, #4]
    38c2:	3304      	adds	r3, #4
    38c4:	18cb      	adds	r3, r1, r3
    38c6:	781b      	ldrb	r3, [r3, #0]
    38c8:	b21b      	sxth	r3, r3
    38ca:	4313      	orrs	r3, r2
    38cc:	b21a      	sxth	r2, r3
    38ce:	230a      	movs	r3, #10
    38d0:	18fb      	adds	r3, r7, r3
    38d2:	801a      	strh	r2, [r3, #0]
    38d4:	230c      	movs	r3, #12
    38d6:	18fb      	adds	r3, r7, r3
    38d8:	881b      	ldrh	r3, [r3, #0]
    38da:	2bff      	cmp	r3, #255	; 0xff
    38dc:	d90a      	bls.n	38f4 <pdu_read_input_registers+0x88>
    38de:	230c      	movs	r3, #12
    38e0:	18fb      	adds	r3, r7, r3
    38e2:	881a      	ldrh	r2, [r3, #0]
    38e4:	230a      	movs	r3, #10
    38e6:	18fb      	adds	r3, r7, r3
    38e8:	881b      	ldrh	r3, [r3, #0]
    38ea:	18d2      	adds	r2, r2, r3
    38ec:	2304      	movs	r3, #4
    38ee:	33ff      	adds	r3, #255	; 0xff
    38f0:	429a      	cmp	r2, r3
    38f2:	dd15      	ble.n	3920 <pdu_read_input_registers+0xb4>
    38f4:	687b      	ldr	r3, [r7, #4]
    38f6:	613b      	str	r3, [r7, #16]
    38f8:	693b      	ldr	r3, [r7, #16]
    38fa:	1c5a      	adds	r2, r3, #1
    38fc:	613a      	str	r2, [r7, #16]
    38fe:	220f      	movs	r2, #15
    3900:	18ba      	adds	r2, r7, r2
    3902:	7812      	ldrb	r2, [r2, #0]
    3904:	2180      	movs	r1, #128	; 0x80
    3906:	4249      	negs	r1, r1
    3908:	430a      	orrs	r2, r1
    390a:	b2d1      	uxtb	r1, r2
    390c:	4a29      	ldr	r2, [pc, #164]	; (39b4 <pdu_read_input_registers+0x148>)
    390e:	54d1      	strb	r1, [r2, r3]
    3910:	693b      	ldr	r3, [r7, #16]
    3912:	1c5a      	adds	r2, r3, #1
    3914:	613a      	str	r2, [r7, #16]
    3916:	4a27      	ldr	r2, [pc, #156]	; (39b4 <pdu_read_input_registers+0x148>)
    3918:	2102      	movs	r1, #2
    391a:	54d1      	strb	r1, [r2, r3]
    391c:	693b      	ldr	r3, [r7, #16]
    391e:	e042      	b.n	39a6 <pdu_read_input_registers+0x13a>
    3920:	687b      	ldr	r3, [r7, #4]
    3922:	613b      	str	r3, [r7, #16]
    3924:	693b      	ldr	r3, [r7, #16]
    3926:	1c5a      	adds	r2, r3, #1
    3928:	613a      	str	r2, [r7, #16]
    392a:	4a22      	ldr	r2, [pc, #136]	; (39b4 <pdu_read_input_registers+0x148>)
    392c:	210f      	movs	r1, #15
    392e:	1879      	adds	r1, r7, r1
    3930:	7809      	ldrb	r1, [r1, #0]
    3932:	54d1      	strb	r1, [r2, r3]
    3934:	693b      	ldr	r3, [r7, #16]
    3936:	1c5a      	adds	r2, r3, #1
    3938:	613a      	str	r2, [r7, #16]
    393a:	220a      	movs	r2, #10
    393c:	18ba      	adds	r2, r7, r2
    393e:	8812      	ldrh	r2, [r2, #0]
    3940:	b2d2      	uxtb	r2, r2
    3942:	1892      	adds	r2, r2, r2
    3944:	b2d1      	uxtb	r1, r2
    3946:	4a1b      	ldr	r2, [pc, #108]	; (39b4 <pdu_read_input_registers+0x148>)
    3948:	54d1      	strb	r1, [r2, r3]
    394a:	2300      	movs	r3, #0
    394c:	617b      	str	r3, [r7, #20]
    394e:	e023      	b.n	3998 <pdu_read_input_registers+0x12c>
    3950:	230c      	movs	r3, #12
    3952:	18fb      	adds	r3, r7, r3
    3954:	881b      	ldrh	r3, [r3, #0]
    3956:	1e5a      	subs	r2, r3, #1
    3958:	3aff      	subs	r2, #255	; 0xff
    395a:	697b      	ldr	r3, [r7, #20]
    395c:	18d1      	adds	r1, r2, r3
    395e:	2308      	movs	r3, #8
    3960:	18fb      	adds	r3, r7, r3
    3962:	4a15      	ldr	r2, [pc, #84]	; (39b8 <pdu_read_input_registers+0x14c>)
    3964:	0049      	lsls	r1, r1, #1
    3966:	5a8a      	ldrh	r2, [r1, r2]
    3968:	801a      	strh	r2, [r3, #0]
    396a:	693b      	ldr	r3, [r7, #16]
    396c:	1c5a      	adds	r2, r3, #1
    396e:	613a      	str	r2, [r7, #16]
    3970:	2208      	movs	r2, #8
    3972:	18ba      	adds	r2, r7, r2
    3974:	8812      	ldrh	r2, [r2, #0]
    3976:	0a12      	lsrs	r2, r2, #8
    3978:	b292      	uxth	r2, r2
    397a:	b2d1      	uxtb	r1, r2
    397c:	4a0d      	ldr	r2, [pc, #52]	; (39b4 <pdu_read_input_registers+0x148>)
    397e:	54d1      	strb	r1, [r2, r3]
    3980:	693b      	ldr	r3, [r7, #16]
    3982:	1c5a      	adds	r2, r3, #1
    3984:	613a      	str	r2, [r7, #16]
    3986:	2208      	movs	r2, #8
    3988:	18ba      	adds	r2, r7, r2
    398a:	8812      	ldrh	r2, [r2, #0]
    398c:	b2d1      	uxtb	r1, r2
    398e:	4a09      	ldr	r2, [pc, #36]	; (39b4 <pdu_read_input_registers+0x148>)
    3990:	54d1      	strb	r1, [r2, r3]
    3992:	697b      	ldr	r3, [r7, #20]
    3994:	3301      	adds	r3, #1
    3996:	617b      	str	r3, [r7, #20]
    3998:	230a      	movs	r3, #10
    399a:	18fb      	adds	r3, r7, r3
    399c:	881a      	ldrh	r2, [r3, #0]
    399e:	697b      	ldr	r3, [r7, #20]
    39a0:	429a      	cmp	r2, r3
    39a2:	dcd5      	bgt.n	3950 <pdu_read_input_registers+0xe4>
    39a4:	693b      	ldr	r3, [r7, #16]
    39a6:	0018      	movs	r0, r3
    39a8:	46bd      	mov	sp, r7
    39aa:	b006      	add	sp, #24
    39ac:	bd80      	pop	{r7, pc}
    39ae:	46c0      	nop			; (mov r8, r8)
    39b0:	20005db8 	.word	0x20005db8
    39b4:	20005dbc 	.word	0x20005dbc
    39b8:	20005dac 	.word	0x20005dac

000039bc <pdu_write_multiply_registers>:
    39bc:	b580      	push	{r7, lr}
    39be:	b088      	sub	sp, #32
    39c0:	af00      	add	r7, sp, #0
    39c2:	6078      	str	r0, [r7, #4]
    39c4:	4b5a      	ldr	r3, [pc, #360]	; (3b30 <pdu_write_multiply_registers+0x174>)
    39c6:	681a      	ldr	r2, [r3, #0]
    39c8:	687b      	ldr	r3, [r7, #4]
    39ca:	18d2      	adds	r2, r2, r3
    39cc:	2317      	movs	r3, #23
    39ce:	18fb      	adds	r3, r7, r3
    39d0:	7812      	ldrb	r2, [r2, #0]
    39d2:	701a      	strb	r2, [r3, #0]
    39d4:	4b56      	ldr	r3, [pc, #344]	; (3b30 <pdu_write_multiply_registers+0x174>)
    39d6:	681a      	ldr	r2, [r3, #0]
    39d8:	687b      	ldr	r3, [r7, #4]
    39da:	3301      	adds	r3, #1
    39dc:	18d3      	adds	r3, r2, r3
    39de:	781b      	ldrb	r3, [r3, #0]
    39e0:	021b      	lsls	r3, r3, #8
    39e2:	b21a      	sxth	r2, r3
    39e4:	4b52      	ldr	r3, [pc, #328]	; (3b30 <pdu_write_multiply_registers+0x174>)
    39e6:	6819      	ldr	r1, [r3, #0]
    39e8:	687b      	ldr	r3, [r7, #4]
    39ea:	3302      	adds	r3, #2
    39ec:	18cb      	adds	r3, r1, r3
    39ee:	781b      	ldrb	r3, [r3, #0]
    39f0:	b21b      	sxth	r3, r3
    39f2:	4313      	orrs	r3, r2
    39f4:	b21a      	sxth	r2, r3
    39f6:	2314      	movs	r3, #20
    39f8:	18fb      	adds	r3, r7, r3
    39fa:	801a      	strh	r2, [r3, #0]
    39fc:	4b4c      	ldr	r3, [pc, #304]	; (3b30 <pdu_write_multiply_registers+0x174>)
    39fe:	681a      	ldr	r2, [r3, #0]
    3a00:	687b      	ldr	r3, [r7, #4]
    3a02:	3303      	adds	r3, #3
    3a04:	18d3      	adds	r3, r2, r3
    3a06:	781b      	ldrb	r3, [r3, #0]
    3a08:	021b      	lsls	r3, r3, #8
    3a0a:	b21a      	sxth	r2, r3
    3a0c:	4b48      	ldr	r3, [pc, #288]	; (3b30 <pdu_write_multiply_registers+0x174>)
    3a0e:	6819      	ldr	r1, [r3, #0]
    3a10:	687b      	ldr	r3, [r7, #4]
    3a12:	3304      	adds	r3, #4
    3a14:	18cb      	adds	r3, r1, r3
    3a16:	781b      	ldrb	r3, [r3, #0]
    3a18:	b21b      	sxth	r3, r3
    3a1a:	4313      	orrs	r3, r2
    3a1c:	b21a      	sxth	r2, r3
    3a1e:	2312      	movs	r3, #18
    3a20:	18fb      	adds	r3, r7, r3
    3a22:	801a      	strh	r2, [r3, #0]
    3a24:	4b42      	ldr	r3, [pc, #264]	; (3b30 <pdu_write_multiply_registers+0x174>)
    3a26:	681a      	ldr	r2, [r3, #0]
    3a28:	687b      	ldr	r3, [r7, #4]
    3a2a:	3305      	adds	r3, #5
    3a2c:	18d2      	adds	r2, r2, r3
    3a2e:	2311      	movs	r3, #17
    3a30:	18fb      	adds	r3, r7, r3
    3a32:	7812      	ldrb	r2, [r2, #0]
    3a34:	701a      	strb	r2, [r3, #0]
    3a36:	2314      	movs	r3, #20
    3a38:	18fb      	adds	r3, r7, r3
    3a3a:	881a      	ldrh	r2, [r3, #0]
    3a3c:	2312      	movs	r3, #18
    3a3e:	18fb      	adds	r3, r7, r3
    3a40:	881b      	ldrh	r3, [r3, #0]
    3a42:	18d3      	adds	r3, r2, r3
    3a44:	2b18      	cmp	r3, #24
    3a46:	dd14      	ble.n	3a72 <pdu_write_multiply_registers+0xb6>
    3a48:	687b      	ldr	r3, [r7, #4]
    3a4a:	61bb      	str	r3, [r7, #24]
    3a4c:	69bb      	ldr	r3, [r7, #24]
    3a4e:	1c5a      	adds	r2, r3, #1
    3a50:	61ba      	str	r2, [r7, #24]
    3a52:	2217      	movs	r2, #23
    3a54:	18ba      	adds	r2, r7, r2
    3a56:	7812      	ldrb	r2, [r2, #0]
    3a58:	2180      	movs	r1, #128	; 0x80
    3a5a:	4249      	negs	r1, r1
    3a5c:	430a      	orrs	r2, r1
    3a5e:	b2d1      	uxtb	r1, r2
    3a60:	4a34      	ldr	r2, [pc, #208]	; (3b34 <pdu_write_multiply_registers+0x178>)
    3a62:	54d1      	strb	r1, [r2, r3]
    3a64:	69bb      	ldr	r3, [r7, #24]
    3a66:	1c5a      	adds	r2, r3, #1
    3a68:	61ba      	str	r2, [r7, #24]
    3a6a:	4a32      	ldr	r2, [pc, #200]	; (3b34 <pdu_write_multiply_registers+0x178>)
    3a6c:	2102      	movs	r1, #2
    3a6e:	54d1      	strb	r1, [r2, r3]
    3a70:	e04b      	b.n	3b0a <pdu_write_multiply_registers+0x14e>
    3a72:	687b      	ldr	r3, [r7, #4]
    3a74:	3306      	adds	r3, #6
    3a76:	61bb      	str	r3, [r7, #24]
    3a78:	2300      	movs	r3, #0
    3a7a:	61fb      	str	r3, [r7, #28]
    3a7c:	e028      	b.n	3ad0 <pdu_write_multiply_registers+0x114>
    3a7e:	4b2c      	ldr	r3, [pc, #176]	; (3b30 <pdu_write_multiply_registers+0x174>)
    3a80:	681a      	ldr	r2, [r3, #0]
    3a82:	69bb      	ldr	r3, [r7, #24]
    3a84:	1c59      	adds	r1, r3, #1
    3a86:	61b9      	str	r1, [r7, #24]
    3a88:	18d3      	adds	r3, r2, r3
    3a8a:	781b      	ldrb	r3, [r3, #0]
    3a8c:	b29a      	uxth	r2, r3
    3a8e:	230e      	movs	r3, #14
    3a90:	18fb      	adds	r3, r7, r3
    3a92:	0212      	lsls	r2, r2, #8
    3a94:	801a      	strh	r2, [r3, #0]
    3a96:	4b26      	ldr	r3, [pc, #152]	; (3b30 <pdu_write_multiply_registers+0x174>)
    3a98:	681a      	ldr	r2, [r3, #0]
    3a9a:	69bb      	ldr	r3, [r7, #24]
    3a9c:	1c59      	adds	r1, r3, #1
    3a9e:	61b9      	str	r1, [r7, #24]
    3aa0:	18d3      	adds	r3, r2, r3
    3aa2:	781b      	ldrb	r3, [r3, #0]
    3aa4:	b299      	uxth	r1, r3
    3aa6:	230e      	movs	r3, #14
    3aa8:	18fb      	adds	r3, r7, r3
    3aaa:	220e      	movs	r2, #14
    3aac:	18ba      	adds	r2, r7, r2
    3aae:	8812      	ldrh	r2, [r2, #0]
    3ab0:	430a      	orrs	r2, r1
    3ab2:	801a      	strh	r2, [r3, #0]
    3ab4:	2314      	movs	r3, #20
    3ab6:	18fb      	adds	r3, r7, r3
    3ab8:	881a      	ldrh	r2, [r3, #0]
    3aba:	69fb      	ldr	r3, [r7, #28]
    3abc:	18d2      	adds	r2, r2, r3
    3abe:	4b1e      	ldr	r3, [pc, #120]	; (3b38 <pdu_write_multiply_registers+0x17c>)
    3ac0:	0052      	lsls	r2, r2, #1
    3ac2:	210e      	movs	r1, #14
    3ac4:	1879      	adds	r1, r7, r1
    3ac6:	8809      	ldrh	r1, [r1, #0]
    3ac8:	52d1      	strh	r1, [r2, r3]
    3aca:	69fb      	ldr	r3, [r7, #28]
    3acc:	3301      	adds	r3, #1
    3ace:	61fb      	str	r3, [r7, #28]
    3ad0:	2312      	movs	r3, #18
    3ad2:	18fb      	adds	r3, r7, r3
    3ad4:	881a      	ldrh	r2, [r3, #0]
    3ad6:	69fb      	ldr	r3, [r7, #28]
    3ad8:	429a      	cmp	r2, r3
    3ada:	dcd0      	bgt.n	3a7e <pdu_write_multiply_registers+0xc2>
    3adc:	687b      	ldr	r3, [r7, #4]
    3ade:	61bb      	str	r3, [r7, #24]
    3ae0:	687b      	ldr	r3, [r7, #4]
    3ae2:	61fb      	str	r3, [r7, #28]
    3ae4:	e00c      	b.n	3b00 <pdu_write_multiply_registers+0x144>
    3ae6:	69bb      	ldr	r3, [r7, #24]
    3ae8:	1c5a      	adds	r2, r3, #1
    3aea:	61ba      	str	r2, [r7, #24]
    3aec:	4a10      	ldr	r2, [pc, #64]	; (3b30 <pdu_write_multiply_registers+0x174>)
    3aee:	6811      	ldr	r1, [r2, #0]
    3af0:	69fa      	ldr	r2, [r7, #28]
    3af2:	188a      	adds	r2, r1, r2
    3af4:	7811      	ldrb	r1, [r2, #0]
    3af6:	4a0f      	ldr	r2, [pc, #60]	; (3b34 <pdu_write_multiply_registers+0x178>)
    3af8:	54d1      	strb	r1, [r2, r3]
    3afa:	69fb      	ldr	r3, [r7, #28]
    3afc:	3301      	adds	r3, #1
    3afe:	61fb      	str	r3, [r7, #28]
    3b00:	687b      	ldr	r3, [r7, #4]
    3b02:	1d5a      	adds	r2, r3, #5
    3b04:	69fb      	ldr	r3, [r7, #28]
    3b06:	429a      	cmp	r2, r3
    3b08:	dced      	bgt.n	3ae6 <pdu_write_multiply_registers+0x12a>
    3b0a:	2314      	movs	r3, #20
    3b0c:	18fb      	adds	r3, r7, r3
    3b0e:	881b      	ldrh	r3, [r3, #0]
    3b10:	2b00      	cmp	r3, #0
    3b12:	d107      	bne.n	3b24 <pdu_write_multiply_registers+0x168>
    3b14:	4b09      	ldr	r3, [pc, #36]	; (3b3c <pdu_write_multiply_registers+0x180>)
    3b16:	6818      	ldr	r0, [r3, #0]
    3b18:	4b07      	ldr	r3, [pc, #28]	; (3b38 <pdu_write_multiply_registers+0x17c>)
    3b1a:	881b      	ldrh	r3, [r3, #0]
    3b1c:	2200      	movs	r2, #0
    3b1e:	0019      	movs	r1, r3
    3b20:	f002 ff6c 	bl	69fc <osMessagePut>
    3b24:	69bb      	ldr	r3, [r7, #24]
    3b26:	0018      	movs	r0, r3
    3b28:	46bd      	mov	sp, r7
    3b2a:	b008      	add	sp, #32
    3b2c:	bd80      	pop	{r7, pc}
    3b2e:	46c0      	nop			; (mov r8, r8)
    3b30:	20005db8 	.word	0x20005db8
    3b34:	20005dbc 	.word	0x20005dbc
    3b38:	20005d7c 	.word	0x20005d7c
    3b3c:	20000864 	.word	0x20000864

00003b40 <u16tobe>:
    3b40:	b580      	push	{r7, lr}
    3b42:	b082      	sub	sp, #8
    3b44:	af00      	add	r7, sp, #0
    3b46:	0002      	movs	r2, r0
    3b48:	6039      	str	r1, [r7, #0]
    3b4a:	1dbb      	adds	r3, r7, #6
    3b4c:	801a      	strh	r2, [r3, #0]
    3b4e:	683b      	ldr	r3, [r7, #0]
    3b50:	1c5a      	adds	r2, r3, #1
    3b52:	603a      	str	r2, [r7, #0]
    3b54:	1dba      	adds	r2, r7, #6
    3b56:	8812      	ldrh	r2, [r2, #0]
    3b58:	0a12      	lsrs	r2, r2, #8
    3b5a:	b292      	uxth	r2, r2
    3b5c:	b2d2      	uxtb	r2, r2
    3b5e:	701a      	strb	r2, [r3, #0]
    3b60:	683b      	ldr	r3, [r7, #0]
    3b62:	1c5a      	adds	r2, r3, #1
    3b64:	603a      	str	r2, [r7, #0]
    3b66:	1dba      	adds	r2, r7, #6
    3b68:	8812      	ldrh	r2, [r2, #0]
    3b6a:	b2d2      	uxtb	r2, r2
    3b6c:	701a      	strb	r2, [r3, #0]
    3b6e:	46c0      	nop			; (mov r8, r8)
    3b70:	46bd      	mov	sp, r7
    3b72:	b002      	add	sp, #8
    3b74:	bd80      	pop	{r7, pc}
    3b76:	46c0      	nop			; (mov r8, r8)

00003b78 <u32tobe>:
    3b78:	b580      	push	{r7, lr}
    3b7a:	b082      	sub	sp, #8
    3b7c:	af00      	add	r7, sp, #0
    3b7e:	6078      	str	r0, [r7, #4]
    3b80:	6039      	str	r1, [r7, #0]
    3b82:	683b      	ldr	r3, [r7, #0]
    3b84:	1c5a      	adds	r2, r3, #1
    3b86:	603a      	str	r2, [r7, #0]
    3b88:	687a      	ldr	r2, [r7, #4]
    3b8a:	0e12      	lsrs	r2, r2, #24
    3b8c:	b2d2      	uxtb	r2, r2
    3b8e:	701a      	strb	r2, [r3, #0]
    3b90:	683b      	ldr	r3, [r7, #0]
    3b92:	1c5a      	adds	r2, r3, #1
    3b94:	603a      	str	r2, [r7, #0]
    3b96:	687a      	ldr	r2, [r7, #4]
    3b98:	0c12      	lsrs	r2, r2, #16
    3b9a:	b2d2      	uxtb	r2, r2
    3b9c:	701a      	strb	r2, [r3, #0]
    3b9e:	683b      	ldr	r3, [r7, #0]
    3ba0:	1c5a      	adds	r2, r3, #1
    3ba2:	603a      	str	r2, [r7, #0]
    3ba4:	687a      	ldr	r2, [r7, #4]
    3ba6:	0a12      	lsrs	r2, r2, #8
    3ba8:	b2d2      	uxtb	r2, r2
    3baa:	701a      	strb	r2, [r3, #0]
    3bac:	683b      	ldr	r3, [r7, #0]
    3bae:	1c5a      	adds	r2, r3, #1
    3bb0:	603a      	str	r2, [r7, #0]
    3bb2:	687a      	ldr	r2, [r7, #4]
    3bb4:	b2d2      	uxtb	r2, r2
    3bb6:	701a      	strb	r2, [r3, #0]
    3bb8:	46c0      	nop			; (mov r8, r8)
    3bba:	46bd      	mov	sp, r7
    3bbc:	b002      	add	sp, #8
    3bbe:	bd80      	pop	{r7, pc}

00003bc0 <pdu_read_fifo_queue>:
    3bc0:	b580      	push	{r7, lr}
    3bc2:	b090      	sub	sp, #64	; 0x40
    3bc4:	af00      	add	r7, sp, #0
    3bc6:	6078      	str	r0, [r7, #4]
    3bc8:	2336      	movs	r3, #54	; 0x36
    3bca:	18fb      	adds	r3, r7, r3
    3bcc:	2203      	movs	r2, #3
    3bce:	801a      	strh	r2, [r3, #0]
    3bd0:	4b79      	ldr	r3, [pc, #484]	; (3db8 <pdu_read_fifo_queue+0x1f8>)
    3bd2:	681a      	ldr	r2, [r3, #0]
    3bd4:	687b      	ldr	r3, [r7, #4]
    3bd6:	18d2      	adds	r2, r2, r3
    3bd8:	2335      	movs	r3, #53	; 0x35
    3bda:	18fb      	adds	r3, r7, r3
    3bdc:	7812      	ldrb	r2, [r2, #0]
    3bde:	701a      	strb	r2, [r3, #0]
    3be0:	4b75      	ldr	r3, [pc, #468]	; (3db8 <pdu_read_fifo_queue+0x1f8>)
    3be2:	681a      	ldr	r2, [r3, #0]
    3be4:	687b      	ldr	r3, [r7, #4]
    3be6:	3301      	adds	r3, #1
    3be8:	18d3      	adds	r3, r2, r3
    3bea:	781b      	ldrb	r3, [r3, #0]
    3bec:	021b      	lsls	r3, r3, #8
    3bee:	b21a      	sxth	r2, r3
    3bf0:	4b71      	ldr	r3, [pc, #452]	; (3db8 <pdu_read_fifo_queue+0x1f8>)
    3bf2:	6819      	ldr	r1, [r3, #0]
    3bf4:	687b      	ldr	r3, [r7, #4]
    3bf6:	3302      	adds	r3, #2
    3bf8:	18cb      	adds	r3, r1, r3
    3bfa:	781b      	ldrb	r3, [r3, #0]
    3bfc:	b21b      	sxth	r3, r3
    3bfe:	4313      	orrs	r3, r2
    3c00:	b21a      	sxth	r2, r3
    3c02:	2332      	movs	r3, #50	; 0x32
    3c04:	18fb      	adds	r3, r7, r3
    3c06:	801a      	strh	r2, [r3, #0]
    3c08:	2332      	movs	r3, #50	; 0x32
    3c0a:	18fb      	adds	r3, r7, r3
    3c0c:	881a      	ldrh	r2, [r3, #0]
    3c0e:	2380      	movs	r3, #128	; 0x80
    3c10:	009b      	lsls	r3, r3, #2
    3c12:	429a      	cmp	r2, r3
    3c14:	d014      	beq.n	3c40 <pdu_read_fifo_queue+0x80>
    3c16:	687b      	ldr	r3, [r7, #4]
    3c18:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c1a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c1c:	1c5a      	adds	r2, r3, #1
    3c1e:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c20:	2235      	movs	r2, #53	; 0x35
    3c22:	18ba      	adds	r2, r7, r2
    3c24:	7812      	ldrb	r2, [r2, #0]
    3c26:	2180      	movs	r1, #128	; 0x80
    3c28:	4249      	negs	r1, r1
    3c2a:	430a      	orrs	r2, r1
    3c2c:	b2d1      	uxtb	r1, r2
    3c2e:	4a63      	ldr	r2, [pc, #396]	; (3dbc <pdu_read_fifo_queue+0x1fc>)
    3c30:	54d1      	strb	r1, [r2, r3]
    3c32:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c34:	1c5a      	adds	r2, r3, #1
    3c36:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c38:	4a60      	ldr	r2, [pc, #384]	; (3dbc <pdu_read_fifo_queue+0x1fc>)
    3c3a:	2102      	movs	r1, #2
    3c3c:	54d1      	strb	r1, [r2, r3]
    3c3e:	e0b5      	b.n	3dac <pdu_read_fifo_queue+0x1ec>
    3c40:	687b      	ldr	r3, [r7, #4]
    3c42:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c44:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c46:	1c5a      	adds	r2, r3, #1
    3c48:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c4a:	4a5c      	ldr	r2, [pc, #368]	; (3dbc <pdu_read_fifo_queue+0x1fc>)
    3c4c:	2135      	movs	r1, #53	; 0x35
    3c4e:	1879      	adds	r1, r7, r1
    3c50:	7809      	ldrb	r1, [r1, #0]
    3c52:	54d1      	strb	r1, [r2, r3]
    3c54:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c56:	1c5a      	adds	r2, r3, #1
    3c58:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c5a:	4a58      	ldr	r2, [pc, #352]	; (3dbc <pdu_read_fifo_queue+0x1fc>)
    3c5c:	2100      	movs	r1, #0
    3c5e:	54d1      	strb	r1, [r2, r3]
    3c60:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c62:	1c5a      	adds	r2, r3, #1
    3c64:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c66:	4a55      	ldr	r2, [pc, #340]	; (3dbc <pdu_read_fifo_queue+0x1fc>)
    3c68:	2100      	movs	r1, #0
    3c6a:	54d1      	strb	r1, [r2, r3]
    3c6c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c6e:	1c5a      	adds	r2, r3, #1
    3c70:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c72:	4a52      	ldr	r2, [pc, #328]	; (3dbc <pdu_read_fifo_queue+0x1fc>)
    3c74:	2100      	movs	r1, #0
    3c76:	54d1      	strb	r1, [r2, r3]
    3c78:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c7a:	1c5a      	adds	r2, r3, #1
    3c7c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c7e:	4a4f      	ldr	r2, [pc, #316]	; (3dbc <pdu_read_fifo_queue+0x1fc>)
    3c80:	2100      	movs	r1, #0
    3c82:	54d1      	strb	r1, [r2, r3]
    3c84:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c86:	62fb      	str	r3, [r7, #44]	; 0x2c
    3c88:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3c8a:	4b4c      	ldr	r3, [pc, #304]	; (3dbc <pdu_read_fifo_queue+0x1fc>)
    3c8c:	18d3      	adds	r3, r2, r3
    3c8e:	63bb      	str	r3, [r7, #56]	; 0x38
    3c90:	e068      	b.n	3d64 <pdu_read_fifo_queue+0x1a4>
    3c92:	2300      	movs	r3, #0
    3c94:	62bb      	str	r3, [r7, #40]	; 0x28
    3c96:	2308      	movs	r3, #8
    3c98:	18fb      	adds	r3, r7, r3
    3c9a:	2120      	movs	r1, #32
    3c9c:	0018      	movs	r0, r3
    3c9e:	f7ff fbd7 	bl	3450 <mdb_fifo_read>
    3ca2:	0003      	movs	r3, r0
    3ca4:	62bb      	str	r3, [r7, #40]	; 0x28
    3ca6:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3ca8:	2b00      	cmp	r3, #0
    3caa:	d063      	beq.n	3d74 <pdu_read_fifo_queue+0x1b4>
    3cac:	2308      	movs	r3, #8
    3cae:	18fb      	adds	r3, r7, r3
    3cb0:	681b      	ldr	r3, [r3, #0]
    3cb2:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cb4:	0011      	movs	r1, r2
    3cb6:	0018      	movs	r0, r3
    3cb8:	f7ff ff5e 	bl	3b78 <u32tobe>
    3cbc:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cbe:	3304      	adds	r3, #4
    3cc0:	63bb      	str	r3, [r7, #56]	; 0x38
    3cc2:	2308      	movs	r3, #8
    3cc4:	18fb      	adds	r3, r7, r3
    3cc6:	685b      	ldr	r3, [r3, #4]
    3cc8:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cca:	0011      	movs	r1, r2
    3ccc:	0018      	movs	r0, r3
    3cce:	f7ff ff53 	bl	3b78 <u32tobe>
    3cd2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cd4:	3304      	adds	r3, #4
    3cd6:	63bb      	str	r3, [r7, #56]	; 0x38
    3cd8:	2308      	movs	r3, #8
    3cda:	18fb      	adds	r3, r7, r3
    3cdc:	689b      	ldr	r3, [r3, #8]
    3cde:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3ce0:	0011      	movs	r1, r2
    3ce2:	0018      	movs	r0, r3
    3ce4:	f7ff ff48 	bl	3b78 <u32tobe>
    3ce8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cea:	3304      	adds	r3, #4
    3cec:	63bb      	str	r3, [r7, #56]	; 0x38
    3cee:	2308      	movs	r3, #8
    3cf0:	18fb      	adds	r3, r7, r3
    3cf2:	68db      	ldr	r3, [r3, #12]
    3cf4:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cf6:	0011      	movs	r1, r2
    3cf8:	0018      	movs	r0, r3
    3cfa:	f7ff ff3d 	bl	3b78 <u32tobe>
    3cfe:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d00:	3304      	adds	r3, #4
    3d02:	63bb      	str	r3, [r7, #56]	; 0x38
    3d04:	2308      	movs	r3, #8
    3d06:	18fb      	adds	r3, r7, r3
    3d08:	691b      	ldr	r3, [r3, #16]
    3d0a:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d0c:	0011      	movs	r1, r2
    3d0e:	0018      	movs	r0, r3
    3d10:	f7ff ff32 	bl	3b78 <u32tobe>
    3d14:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d16:	3304      	adds	r3, #4
    3d18:	63bb      	str	r3, [r7, #56]	; 0x38
    3d1a:	2308      	movs	r3, #8
    3d1c:	18fb      	adds	r3, r7, r3
    3d1e:	695b      	ldr	r3, [r3, #20]
    3d20:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d22:	0011      	movs	r1, r2
    3d24:	0018      	movs	r0, r3
    3d26:	f7ff ff27 	bl	3b78 <u32tobe>
    3d2a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d2c:	3304      	adds	r3, #4
    3d2e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d30:	2308      	movs	r3, #8
    3d32:	18fb      	adds	r3, r7, r3
    3d34:	699b      	ldr	r3, [r3, #24]
    3d36:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d38:	0011      	movs	r1, r2
    3d3a:	0018      	movs	r0, r3
    3d3c:	f7ff ff1c 	bl	3b78 <u32tobe>
    3d40:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d42:	3304      	adds	r3, #4
    3d44:	63bb      	str	r3, [r7, #56]	; 0x38
    3d46:	2308      	movs	r3, #8
    3d48:	18fb      	adds	r3, r7, r3
    3d4a:	69db      	ldr	r3, [r3, #28]
    3d4c:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d4e:	0011      	movs	r1, r2
    3d50:	0018      	movs	r0, r3
    3d52:	f7ff ff11 	bl	3b78 <u32tobe>
    3d56:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d58:	3304      	adds	r3, #4
    3d5a:	63bb      	str	r3, [r7, #56]	; 0x38
    3d5c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3d5e:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3d60:	18d3      	adds	r3, r2, r3
    3d62:	63fb      	str	r3, [r7, #60]	; 0x3c
    3d64:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3d66:	3320      	adds	r3, #32
    3d68:	001a      	movs	r2, r3
    3d6a:	23fc      	movs	r3, #252	; 0xfc
    3d6c:	33ff      	adds	r3, #255	; 0xff
    3d6e:	429a      	cmp	r2, r3
    3d70:	d98f      	bls.n	3c92 <pdu_read_fifo_queue+0xd2>
    3d72:	e000      	b.n	3d76 <pdu_read_fifo_queue+0x1b6>
    3d74:	46c0      	nop			; (mov r8, r8)
    3d76:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3d78:	b29a      	uxth	r2, r3
    3d7a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3d7c:	b29b      	uxth	r3, r3
    3d7e:	1ad3      	subs	r3, r2, r3
    3d80:	b29b      	uxth	r3, r3
    3d82:	3302      	adds	r3, #2
    3d84:	b298      	uxth	r0, r3
    3d86:	687b      	ldr	r3, [r7, #4]
    3d88:	1c5a      	adds	r2, r3, #1
    3d8a:	4b0c      	ldr	r3, [pc, #48]	; (3dbc <pdu_read_fifo_queue+0x1fc>)
    3d8c:	18d3      	adds	r3, r2, r3
    3d8e:	0019      	movs	r1, r3
    3d90:	f7ff fed6 	bl	3b40 <u16tobe>
    3d94:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3d96:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3d98:	1ad3      	subs	r3, r2, r3
    3d9a:	105b      	asrs	r3, r3, #1
    3d9c:	b298      	uxth	r0, r3
    3d9e:	687b      	ldr	r3, [r7, #4]
    3da0:	1cda      	adds	r2, r3, #3
    3da2:	4b06      	ldr	r3, [pc, #24]	; (3dbc <pdu_read_fifo_queue+0x1fc>)
    3da4:	18d3      	adds	r3, r2, r3
    3da6:	0019      	movs	r1, r3
    3da8:	f7ff feca 	bl	3b40 <u16tobe>
    3dac:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dae:	0018      	movs	r0, r3
    3db0:	46bd      	mov	sp, r7
    3db2:	b010      	add	sp, #64	; 0x40
    3db4:	bd80      	pop	{r7, pc}
    3db6:	46c0      	nop			; (mov r8, r8)
    3db8:	20005db8 	.word	0x20005db8
    3dbc:	20005dbc 	.word	0x20005dbc

00003dc0 <pdu_read_holding_registers>:
    3dc0:	b580      	push	{r7, lr}
    3dc2:	b086      	sub	sp, #24
    3dc4:	af00      	add	r7, sp, #0
    3dc6:	6078      	str	r0, [r7, #4]
    3dc8:	4b49      	ldr	r3, [pc, #292]	; (3ef0 <pdu_read_holding_registers+0x130>)
    3dca:	681a      	ldr	r2, [r3, #0]
    3dcc:	687b      	ldr	r3, [r7, #4]
    3dce:	18d2      	adds	r2, r2, r3
    3dd0:	230f      	movs	r3, #15
    3dd2:	18fb      	adds	r3, r7, r3
    3dd4:	7812      	ldrb	r2, [r2, #0]
    3dd6:	701a      	strb	r2, [r3, #0]
    3dd8:	4b45      	ldr	r3, [pc, #276]	; (3ef0 <pdu_read_holding_registers+0x130>)
    3dda:	681a      	ldr	r2, [r3, #0]
    3ddc:	687b      	ldr	r3, [r7, #4]
    3dde:	3301      	adds	r3, #1
    3de0:	18d3      	adds	r3, r2, r3
    3de2:	781b      	ldrb	r3, [r3, #0]
    3de4:	021b      	lsls	r3, r3, #8
    3de6:	b21a      	sxth	r2, r3
    3de8:	4b41      	ldr	r3, [pc, #260]	; (3ef0 <pdu_read_holding_registers+0x130>)
    3dea:	6819      	ldr	r1, [r3, #0]
    3dec:	687b      	ldr	r3, [r7, #4]
    3dee:	3302      	adds	r3, #2
    3df0:	18cb      	adds	r3, r1, r3
    3df2:	781b      	ldrb	r3, [r3, #0]
    3df4:	b21b      	sxth	r3, r3
    3df6:	4313      	orrs	r3, r2
    3df8:	b21a      	sxth	r2, r3
    3dfa:	230c      	movs	r3, #12
    3dfc:	18fb      	adds	r3, r7, r3
    3dfe:	801a      	strh	r2, [r3, #0]
    3e00:	4b3b      	ldr	r3, [pc, #236]	; (3ef0 <pdu_read_holding_registers+0x130>)
    3e02:	681a      	ldr	r2, [r3, #0]
    3e04:	687b      	ldr	r3, [r7, #4]
    3e06:	3303      	adds	r3, #3
    3e08:	18d3      	adds	r3, r2, r3
    3e0a:	781b      	ldrb	r3, [r3, #0]
    3e0c:	021b      	lsls	r3, r3, #8
    3e0e:	b21a      	sxth	r2, r3
    3e10:	4b37      	ldr	r3, [pc, #220]	; (3ef0 <pdu_read_holding_registers+0x130>)
    3e12:	6819      	ldr	r1, [r3, #0]
    3e14:	687b      	ldr	r3, [r7, #4]
    3e16:	3304      	adds	r3, #4
    3e18:	18cb      	adds	r3, r1, r3
    3e1a:	781b      	ldrb	r3, [r3, #0]
    3e1c:	b21b      	sxth	r3, r3
    3e1e:	4313      	orrs	r3, r2
    3e20:	b21a      	sxth	r2, r3
    3e22:	230a      	movs	r3, #10
    3e24:	18fb      	adds	r3, r7, r3
    3e26:	801a      	strh	r2, [r3, #0]
    3e28:	230c      	movs	r3, #12
    3e2a:	18fb      	adds	r3, r7, r3
    3e2c:	881a      	ldrh	r2, [r3, #0]
    3e2e:	230a      	movs	r3, #10
    3e30:	18fb      	adds	r3, r7, r3
    3e32:	881b      	ldrh	r3, [r3, #0]
    3e34:	18d3      	adds	r3, r2, r3
    3e36:	2b18      	cmp	r3, #24
    3e38:	dd14      	ble.n	3e64 <pdu_read_holding_registers+0xa4>
    3e3a:	687b      	ldr	r3, [r7, #4]
    3e3c:	613b      	str	r3, [r7, #16]
    3e3e:	693b      	ldr	r3, [r7, #16]
    3e40:	1c5a      	adds	r2, r3, #1
    3e42:	613a      	str	r2, [r7, #16]
    3e44:	220f      	movs	r2, #15
    3e46:	18ba      	adds	r2, r7, r2
    3e48:	7812      	ldrb	r2, [r2, #0]
    3e4a:	2180      	movs	r1, #128	; 0x80
    3e4c:	4249      	negs	r1, r1
    3e4e:	430a      	orrs	r2, r1
    3e50:	b2d1      	uxtb	r1, r2
    3e52:	4a28      	ldr	r2, [pc, #160]	; (3ef4 <pdu_read_holding_registers+0x134>)
    3e54:	54d1      	strb	r1, [r2, r3]
    3e56:	693b      	ldr	r3, [r7, #16]
    3e58:	1c5a      	adds	r2, r3, #1
    3e5a:	613a      	str	r2, [r7, #16]
    3e5c:	4a25      	ldr	r2, [pc, #148]	; (3ef4 <pdu_read_holding_registers+0x134>)
    3e5e:	2102      	movs	r1, #2
    3e60:	54d1      	strb	r1, [r2, r3]
    3e62:	e03f      	b.n	3ee4 <pdu_read_holding_registers+0x124>
    3e64:	687b      	ldr	r3, [r7, #4]
    3e66:	613b      	str	r3, [r7, #16]
    3e68:	693b      	ldr	r3, [r7, #16]
    3e6a:	1c5a      	adds	r2, r3, #1
    3e6c:	613a      	str	r2, [r7, #16]
    3e6e:	4a21      	ldr	r2, [pc, #132]	; (3ef4 <pdu_read_holding_registers+0x134>)
    3e70:	210f      	movs	r1, #15
    3e72:	1879      	adds	r1, r7, r1
    3e74:	7809      	ldrb	r1, [r1, #0]
    3e76:	54d1      	strb	r1, [r2, r3]
    3e78:	693b      	ldr	r3, [r7, #16]
    3e7a:	1c5a      	adds	r2, r3, #1
    3e7c:	613a      	str	r2, [r7, #16]
    3e7e:	220a      	movs	r2, #10
    3e80:	18ba      	adds	r2, r7, r2
    3e82:	8812      	ldrh	r2, [r2, #0]
    3e84:	b2d2      	uxtb	r2, r2
    3e86:	1892      	adds	r2, r2, r2
    3e88:	b2d1      	uxtb	r1, r2
    3e8a:	4a1a      	ldr	r2, [pc, #104]	; (3ef4 <pdu_read_holding_registers+0x134>)
    3e8c:	54d1      	strb	r1, [r2, r3]
    3e8e:	2300      	movs	r3, #0
    3e90:	617b      	str	r3, [r7, #20]
    3e92:	e021      	b.n	3ed8 <pdu_read_holding_registers+0x118>
    3e94:	230c      	movs	r3, #12
    3e96:	18fb      	adds	r3, r7, r3
    3e98:	881a      	ldrh	r2, [r3, #0]
    3e9a:	697b      	ldr	r3, [r7, #20]
    3e9c:	18d1      	adds	r1, r2, r3
    3e9e:	2308      	movs	r3, #8
    3ea0:	18fb      	adds	r3, r7, r3
    3ea2:	4a15      	ldr	r2, [pc, #84]	; (3ef8 <pdu_read_holding_registers+0x138>)
    3ea4:	0049      	lsls	r1, r1, #1
    3ea6:	5a8a      	ldrh	r2, [r1, r2]
    3ea8:	801a      	strh	r2, [r3, #0]
    3eaa:	693b      	ldr	r3, [r7, #16]
    3eac:	1c5a      	adds	r2, r3, #1
    3eae:	613a      	str	r2, [r7, #16]
    3eb0:	2208      	movs	r2, #8
    3eb2:	18ba      	adds	r2, r7, r2
    3eb4:	8812      	ldrh	r2, [r2, #0]
    3eb6:	0a12      	lsrs	r2, r2, #8
    3eb8:	b292      	uxth	r2, r2
    3eba:	b2d1      	uxtb	r1, r2
    3ebc:	4a0d      	ldr	r2, [pc, #52]	; (3ef4 <pdu_read_holding_registers+0x134>)
    3ebe:	54d1      	strb	r1, [r2, r3]
    3ec0:	693b      	ldr	r3, [r7, #16]
    3ec2:	1c5a      	adds	r2, r3, #1
    3ec4:	613a      	str	r2, [r7, #16]
    3ec6:	2208      	movs	r2, #8
    3ec8:	18ba      	adds	r2, r7, r2
    3eca:	8812      	ldrh	r2, [r2, #0]
    3ecc:	b2d1      	uxtb	r1, r2
    3ece:	4a09      	ldr	r2, [pc, #36]	; (3ef4 <pdu_read_holding_registers+0x134>)
    3ed0:	54d1      	strb	r1, [r2, r3]
    3ed2:	697b      	ldr	r3, [r7, #20]
    3ed4:	3301      	adds	r3, #1
    3ed6:	617b      	str	r3, [r7, #20]
    3ed8:	230a      	movs	r3, #10
    3eda:	18fb      	adds	r3, r7, r3
    3edc:	881a      	ldrh	r2, [r3, #0]
    3ede:	697b      	ldr	r3, [r7, #20]
    3ee0:	429a      	cmp	r2, r3
    3ee2:	dcd7      	bgt.n	3e94 <pdu_read_holding_registers+0xd4>
    3ee4:	693b      	ldr	r3, [r7, #16]
    3ee6:	0018      	movs	r0, r3
    3ee8:	46bd      	mov	sp, r7
    3eea:	b006      	add	sp, #24
    3eec:	bd80      	pop	{r7, pc}
    3eee:	46c0      	nop			; (mov r8, r8)
    3ef0:	20005db8 	.word	0x20005db8
    3ef4:	20005dbc 	.word	0x20005dbc
    3ef8:	20005d7c 	.word	0x20005d7c

00003efc <pdu_illegal_function_error>:
    3efc:	b580      	push	{r7, lr}
    3efe:	b084      	sub	sp, #16
    3f00:	af00      	add	r7, sp, #0
    3f02:	6078      	str	r0, [r7, #4]
    3f04:	4b10      	ldr	r3, [pc, #64]	; (3f48 <pdu_illegal_function_error+0x4c>)
    3f06:	681a      	ldr	r2, [r3, #0]
    3f08:	687b      	ldr	r3, [r7, #4]
    3f0a:	18d2      	adds	r2, r2, r3
    3f0c:	230f      	movs	r3, #15
    3f0e:	18fb      	adds	r3, r7, r3
    3f10:	7812      	ldrb	r2, [r2, #0]
    3f12:	701a      	strb	r2, [r3, #0]
    3f14:	687b      	ldr	r3, [r7, #4]
    3f16:	60bb      	str	r3, [r7, #8]
    3f18:	68bb      	ldr	r3, [r7, #8]
    3f1a:	1c5a      	adds	r2, r3, #1
    3f1c:	60ba      	str	r2, [r7, #8]
    3f1e:	220f      	movs	r2, #15
    3f20:	18ba      	adds	r2, r7, r2
    3f22:	7812      	ldrb	r2, [r2, #0]
    3f24:	2180      	movs	r1, #128	; 0x80
    3f26:	4249      	negs	r1, r1
    3f28:	430a      	orrs	r2, r1
    3f2a:	b2d1      	uxtb	r1, r2
    3f2c:	4a07      	ldr	r2, [pc, #28]	; (3f4c <pdu_illegal_function_error+0x50>)
    3f2e:	54d1      	strb	r1, [r2, r3]
    3f30:	68bb      	ldr	r3, [r7, #8]
    3f32:	1c5a      	adds	r2, r3, #1
    3f34:	60ba      	str	r2, [r7, #8]
    3f36:	4a05      	ldr	r2, [pc, #20]	; (3f4c <pdu_illegal_function_error+0x50>)
    3f38:	2101      	movs	r1, #1
    3f3a:	54d1      	strb	r1, [r2, r3]
    3f3c:	68bb      	ldr	r3, [r7, #8]
    3f3e:	0018      	movs	r0, r3
    3f40:	46bd      	mov	sp, r7
    3f42:	b004      	add	sp, #16
    3f44:	bd80      	pop	{r7, pc}
    3f46:	46c0      	nop			; (mov r8, r8)
    3f48:	20005db8 	.word	0x20005db8
    3f4c:	20005dbc 	.word	0x20005dbc

00003f50 <mdb_proc_adu>:
    3f50:	b580      	push	{r7, lr}
    3f52:	b086      	sub	sp, #24
    3f54:	af00      	add	r7, sp, #0
    3f56:	6078      	str	r0, [r7, #4]
    3f58:	4b39      	ldr	r3, [pc, #228]	; (4040 <mdb_proc_adu+0xf0>)
    3f5a:	687a      	ldr	r2, [r7, #4]
    3f5c:	601a      	str	r2, [r3, #0]
    3f5e:	4b38      	ldr	r3, [pc, #224]	; (4040 <mdb_proc_adu+0xf0>)
    3f60:	681b      	ldr	r3, [r3, #0]
    3f62:	781b      	ldrb	r3, [r3, #0]
    3f64:	021b      	lsls	r3, r3, #8
    3f66:	b21a      	sxth	r2, r3
    3f68:	4b35      	ldr	r3, [pc, #212]	; (4040 <mdb_proc_adu+0xf0>)
    3f6a:	681b      	ldr	r3, [r3, #0]
    3f6c:	3301      	adds	r3, #1
    3f6e:	781b      	ldrb	r3, [r3, #0]
    3f70:	b21b      	sxth	r3, r3
    3f72:	4313      	orrs	r3, r2
    3f74:	b21a      	sxth	r2, r3
    3f76:	2312      	movs	r3, #18
    3f78:	18fb      	adds	r3, r7, r3
    3f7a:	801a      	strh	r2, [r3, #0]
    3f7c:	4b30      	ldr	r3, [pc, #192]	; (4040 <mdb_proc_adu+0xf0>)
    3f7e:	681b      	ldr	r3, [r3, #0]
    3f80:	3302      	adds	r3, #2
    3f82:	781b      	ldrb	r3, [r3, #0]
    3f84:	021b      	lsls	r3, r3, #8
    3f86:	b21a      	sxth	r2, r3
    3f88:	4b2d      	ldr	r3, [pc, #180]	; (4040 <mdb_proc_adu+0xf0>)
    3f8a:	681b      	ldr	r3, [r3, #0]
    3f8c:	3303      	adds	r3, #3
    3f8e:	781b      	ldrb	r3, [r3, #0]
    3f90:	b21b      	sxth	r3, r3
    3f92:	4313      	orrs	r3, r2
    3f94:	b21a      	sxth	r2, r3
    3f96:	2310      	movs	r3, #16
    3f98:	18fb      	adds	r3, r7, r3
    3f9a:	801a      	strh	r2, [r3, #0]
    3f9c:	4b28      	ldr	r3, [pc, #160]	; (4040 <mdb_proc_adu+0xf0>)
    3f9e:	681b      	ldr	r3, [r3, #0]
    3fa0:	3304      	adds	r3, #4
    3fa2:	781b      	ldrb	r3, [r3, #0]
    3fa4:	021b      	lsls	r3, r3, #8
    3fa6:	b21a      	sxth	r2, r3
    3fa8:	4b25      	ldr	r3, [pc, #148]	; (4040 <mdb_proc_adu+0xf0>)
    3faa:	681b      	ldr	r3, [r3, #0]
    3fac:	3305      	adds	r3, #5
    3fae:	781b      	ldrb	r3, [r3, #0]
    3fb0:	b21b      	sxth	r3, r3
    3fb2:	4313      	orrs	r3, r2
    3fb4:	b21a      	sxth	r2, r3
    3fb6:	230e      	movs	r3, #14
    3fb8:	18fb      	adds	r3, r7, r3
    3fba:	801a      	strh	r2, [r3, #0]
    3fbc:	4b20      	ldr	r3, [pc, #128]	; (4040 <mdb_proc_adu+0xf0>)
    3fbe:	681a      	ldr	r2, [r3, #0]
    3fc0:	230d      	movs	r3, #13
    3fc2:	18fb      	adds	r3, r7, r3
    3fc4:	7992      	ldrb	r2, [r2, #6]
    3fc6:	701a      	strb	r2, [r3, #0]
    3fc8:	4b1d      	ldr	r3, [pc, #116]	; (4040 <mdb_proc_adu+0xf0>)
    3fca:	681a      	ldr	r2, [r3, #0]
    3fcc:	230c      	movs	r3, #12
    3fce:	18fb      	adds	r3, r7, r3
    3fd0:	79d2      	ldrb	r2, [r2, #7]
    3fd2:	701a      	strb	r2, [r3, #0]
    3fd4:	230d      	movs	r3, #13
    3fd6:	18fb      	adds	r3, r7, r3
    3fd8:	781b      	ldrb	r3, [r3, #0]
    3fda:	2b11      	cmp	r3, #17
    3fdc:	d12b      	bne.n	4036 <mdb_proc_adu+0xe6>
    3fde:	230c      	movs	r3, #12
    3fe0:	18fb      	adds	r3, r7, r3
    3fe2:	781a      	ldrb	r2, [r3, #0]
    3fe4:	4b17      	ldr	r3, [pc, #92]	; (4044 <mdb_proc_adu+0xf4>)
    3fe6:	0092      	lsls	r2, r2, #2
    3fe8:	58d3      	ldr	r3, [r2, r3]
    3fea:	2007      	movs	r0, #7
    3fec:	4798      	blx	r3
    3fee:	0003      	movs	r3, r0
    3ff0:	60bb      	str	r3, [r7, #8]
    3ff2:	2300      	movs	r3, #0
    3ff4:	617b      	str	r3, [r7, #20]
    3ff6:	e00c      	b.n	4012 <mdb_proc_adu+0xc2>
    3ff8:	4b11      	ldr	r3, [pc, #68]	; (4040 <mdb_proc_adu+0xf0>)
    3ffa:	681a      	ldr	r2, [r3, #0]
    3ffc:	697b      	ldr	r3, [r7, #20]
    3ffe:	18d3      	adds	r3, r2, r3
    4000:	7819      	ldrb	r1, [r3, #0]
    4002:	4a11      	ldr	r2, [pc, #68]	; (4048 <mdb_proc_adu+0xf8>)
    4004:	697b      	ldr	r3, [r7, #20]
    4006:	18d3      	adds	r3, r2, r3
    4008:	1c0a      	adds	r2, r1, #0
    400a:	701a      	strb	r2, [r3, #0]
    400c:	697b      	ldr	r3, [r7, #20]
    400e:	3301      	adds	r3, #1
    4010:	617b      	str	r3, [r7, #20]
    4012:	697b      	ldr	r3, [r7, #20]
    4014:	2b06      	cmp	r3, #6
    4016:	ddef      	ble.n	3ff8 <mdb_proc_adu+0xa8>
    4018:	4b0b      	ldr	r3, [pc, #44]	; (4048 <mdb_proc_adu+0xf8>)
    401a:	2200      	movs	r2, #0
    401c:	711a      	strb	r2, [r3, #4]
    401e:	68bb      	ldr	r3, [r7, #8]
    4020:	b2db      	uxtb	r3, r3
    4022:	3b06      	subs	r3, #6
    4024:	b2da      	uxtb	r2, r3
    4026:	4b08      	ldr	r3, [pc, #32]	; (4048 <mdb_proc_adu+0xf8>)
    4028:	715a      	strb	r2, [r3, #5]
    402a:	68ba      	ldr	r2, [r7, #8]
    402c:	4b06      	ldr	r3, [pc, #24]	; (4048 <mdb_proc_adu+0xf8>)
    402e:	0011      	movs	r1, r2
    4030:	0018      	movs	r0, r3
    4032:	f7fe fdd3 	bl	2bdc <Send_UDP>
    4036:	46c0      	nop			; (mov r8, r8)
    4038:	46bd      	mov	sp, r7
    403a:	b006      	add	sp, #24
    403c:	bd80      	pop	{r7, pc}
    403e:	46c0      	nop			; (mov r8, r8)
    4040:	20005db8 	.word	0x20005db8
    4044:	00008cac 	.word	0x00008cac
    4048:	20005dbc 	.word	0x20005dbc

0000404c <fsm_get_cyccnt>:
    404c:	b580      	push	{r7, lr}
    404e:	af00      	add	r7, sp, #0
    4050:	4b02      	ldr	r3, [pc, #8]	; (405c <fsm_get_cyccnt+0x10>)
    4052:	681b      	ldr	r3, [r3, #0]
    4054:	0018      	movs	r0, r3
    4056:	46bd      	mov	sp, r7
    4058:	bd80      	pop	{r7, pc}
    405a:	46c0      	nop			; (mov r8, r8)
    405c:	20006008 	.word	0x20006008

00004060 <fsm_idle>:
    4060:	b580      	push	{r7, lr}
    4062:	b086      	sub	sp, #24
    4064:	af00      	add	r7, sp, #0
    4066:	6078      	str	r0, [r7, #4]
    4068:	2313      	movs	r3, #19
    406a:	18fb      	adds	r3, r7, r3
    406c:	687a      	ldr	r2, [r7, #4]
    406e:	701a      	strb	r2, [r3, #0]
    4070:	2313      	movs	r3, #19
    4072:	18fb      	adds	r3, r7, r3
    4074:	781b      	ldrb	r3, [r3, #0]
    4076:	2b01      	cmp	r3, #1
    4078:	d000      	beq.n	407c <fsm_idle+0x1c>
    407a:	e0a1      	b.n	41c0 <fsm_idle+0x160>
    407c:	4b52      	ldr	r3, [pc, #328]	; (41c8 <fsm_idle+0x168>)
    407e:	0018      	movs	r0, r3
    4080:	f7ff fa78 	bl	3574 <mdb_get_testparam>
    4084:	4b50      	ldr	r3, [pc, #320]	; (41c8 <fsm_idle+0x168>)
    4086:	681a      	ldr	r2, [r3, #0]
    4088:	4b50      	ldr	r3, [pc, #320]	; (41cc <fsm_idle+0x16c>)
    408a:	601a      	str	r2, [r3, #0]
    408c:	4b4f      	ldr	r3, [pc, #316]	; (41cc <fsm_idle+0x16c>)
    408e:	681b      	ldr	r3, [r3, #0]
    4090:	2b00      	cmp	r3, #0
    4092:	d100      	bne.n	4096 <fsm_idle+0x36>
    4094:	e094      	b.n	41c0 <fsm_idle+0x160>
    4096:	4b4e      	ldr	r3, [pc, #312]	; (41d0 <fsm_idle+0x170>)
    4098:	4a4e      	ldr	r2, [pc, #312]	; (41d4 <fsm_idle+0x174>)
    409a:	601a      	str	r2, [r3, #0]
    409c:	4b4e      	ldr	r3, [pc, #312]	; (41d8 <fsm_idle+0x178>)
    409e:	2200      	movs	r2, #0
    40a0:	601a      	str	r2, [r3, #0]
    40a2:	4b49      	ldr	r3, [pc, #292]	; (41c8 <fsm_idle+0x168>)
    40a4:	68db      	ldr	r3, [r3, #12]
    40a6:	4a48      	ldr	r2, [pc, #288]	; (41c8 <fsm_idle+0x168>)
    40a8:	8b52      	ldrh	r2, [r2, #26]
    40aa:	435a      	muls	r2, r3
    40ac:	0013      	movs	r3, r2
    40ae:	009b      	lsls	r3, r3, #2
    40b0:	189b      	adds	r3, r3, r2
    40b2:	00db      	lsls	r3, r3, #3
    40b4:	189b      	adds	r3, r3, r2
    40b6:	2280      	movs	r2, #128	; 0x80
    40b8:	0112      	lsls	r2, r2, #4
    40ba:	4694      	mov	ip, r2
    40bc:	4463      	add	r3, ip
    40be:	0b1b      	lsrs	r3, r3, #12
    40c0:	60fb      	str	r3, [r7, #12]
    40c2:	68fb      	ldr	r3, [r7, #12]
    40c4:	0018      	movs	r0, r3
    40c6:	f7fc f85f 	bl	188 <dut_set_torque>
    40ca:	2300      	movs	r3, #0
    40cc:	617b      	str	r3, [r7, #20]
    40ce:	e032      	b.n	4136 <fsm_idle+0xd6>
    40d0:	4b3d      	ldr	r3, [pc, #244]	; (41c8 <fsm_idle+0x168>)
    40d2:	689b      	ldr	r3, [r3, #8]
    40d4:	4a3c      	ldr	r2, [pc, #240]	; (41c8 <fsm_idle+0x168>)
    40d6:	6979      	ldr	r1, [r7, #20]
    40d8:	3108      	adds	r1, #8
    40da:	0049      	lsls	r1, r1, #1
    40dc:	5a8a      	ldrh	r2, [r1, r2]
    40de:	435a      	muls	r2, r3
    40e0:	0013      	movs	r3, r2
    40e2:	009b      	lsls	r3, r3, #2
    40e4:	189b      	adds	r3, r3, r2
    40e6:	00db      	lsls	r3, r3, #3
    40e8:	189b      	adds	r3, r3, r2
    40ea:	2280      	movs	r2, #128	; 0x80
    40ec:	0112      	lsls	r2, r2, #4
    40ee:	4694      	mov	ip, r2
    40f0:	4463      	add	r3, ip
    40f2:	0b1b      	lsrs	r3, r3, #12
    40f4:	0019      	movs	r1, r3
    40f6:	4b39      	ldr	r3, [pc, #228]	; (41dc <fsm_idle+0x17c>)
    40f8:	697a      	ldr	r2, [r7, #20]
    40fa:	0092      	lsls	r2, r2, #2
    40fc:	50d1      	str	r1, [r2, r3]
    40fe:	4b32      	ldr	r3, [pc, #200]	; (41c8 <fsm_idle+0x168>)
    4100:	68db      	ldr	r3, [r3, #12]
    4102:	4931      	ldr	r1, [pc, #196]	; (41c8 <fsm_idle+0x168>)
    4104:	697a      	ldr	r2, [r7, #20]
    4106:	320c      	adds	r2, #12
    4108:	0052      	lsls	r2, r2, #1
    410a:	188a      	adds	r2, r1, r2
    410c:	3202      	adds	r2, #2
    410e:	8812      	ldrh	r2, [r2, #0]
    4110:	435a      	muls	r2, r3
    4112:	0013      	movs	r3, r2
    4114:	009b      	lsls	r3, r3, #2
    4116:	189b      	adds	r3, r3, r2
    4118:	00db      	lsls	r3, r3, #3
    411a:	189b      	adds	r3, r3, r2
    411c:	2280      	movs	r2, #128	; 0x80
    411e:	0112      	lsls	r2, r2, #4
    4120:	4694      	mov	ip, r2
    4122:	4463      	add	r3, ip
    4124:	0b1b      	lsrs	r3, r3, #12
    4126:	0019      	movs	r1, r3
    4128:	4b2d      	ldr	r3, [pc, #180]	; (41e0 <fsm_idle+0x180>)
    412a:	697a      	ldr	r2, [r7, #20]
    412c:	0092      	lsls	r2, r2, #2
    412e:	50d1      	str	r1, [r2, r3]
    4130:	697b      	ldr	r3, [r7, #20]
    4132:	3301      	adds	r3, #1
    4134:	617b      	str	r3, [r7, #20]
    4136:	697b      	ldr	r3, [r7, #20]
    4138:	2b04      	cmp	r3, #4
    413a:	ddc9      	ble.n	40d0 <fsm_idle+0x70>
    413c:	2300      	movs	r3, #0
    413e:	617b      	str	r3, [r7, #20]
    4140:	e020      	b.n	4184 <fsm_idle+0x124>
    4142:	697b      	ldr	r3, [r7, #20]
    4144:	1c5a      	adds	r2, r3, #1
    4146:	4b26      	ldr	r3, [pc, #152]	; (41e0 <fsm_idle+0x180>)
    4148:	0092      	lsls	r2, r2, #2
    414a:	58d2      	ldr	r2, [r2, r3]
    414c:	4b24      	ldr	r3, [pc, #144]	; (41e0 <fsm_idle+0x180>)
    414e:	6979      	ldr	r1, [r7, #20]
    4150:	0089      	lsls	r1, r1, #2
    4152:	58cb      	ldr	r3, [r1, r3]
    4154:	1ad3      	subs	r3, r2, r3
    4156:	0098      	lsls	r0, r3, #2
    4158:	697b      	ldr	r3, [r7, #20]
    415a:	1c5a      	adds	r2, r3, #1
    415c:	4b1f      	ldr	r3, [pc, #124]	; (41dc <fsm_idle+0x17c>)
    415e:	0092      	lsls	r2, r2, #2
    4160:	58d2      	ldr	r2, [r2, r3]
    4162:	4b1e      	ldr	r3, [pc, #120]	; (41dc <fsm_idle+0x17c>)
    4164:	6979      	ldr	r1, [r7, #20]
    4166:	0089      	lsls	r1, r1, #2
    4168:	58cb      	ldr	r3, [r1, r3]
    416a:	1ad3      	subs	r3, r2, r3
    416c:	0019      	movs	r1, r3
    416e:	f000 f9a7 	bl	44c0 <__aeabi_idiv>
    4172:	0003      	movs	r3, r0
    4174:	0019      	movs	r1, r3
    4176:	4b1b      	ldr	r3, [pc, #108]	; (41e4 <fsm_idle+0x184>)
    4178:	697a      	ldr	r2, [r7, #20]
    417a:	0092      	lsls	r2, r2, #2
    417c:	50d1      	str	r1, [r2, r3]
    417e:	697b      	ldr	r3, [r7, #20]
    4180:	3301      	adds	r3, #1
    4182:	617b      	str	r3, [r7, #20]
    4184:	697b      	ldr	r3, [r7, #20]
    4186:	2b03      	cmp	r3, #3
    4188:	dddb      	ble.n	4142 <fsm_idle+0xe2>
    418a:	4b14      	ldr	r3, [pc, #80]	; (41dc <fsm_idle+0x17c>)
    418c:	681a      	ldr	r2, [r3, #0]
    418e:	4b16      	ldr	r3, [pc, #88]	; (41e8 <fsm_idle+0x188>)
    4190:	601a      	str	r2, [r3, #0]
    4192:	4b12      	ldr	r3, [pc, #72]	; (41dc <fsm_idle+0x17c>)
    4194:	685a      	ldr	r2, [r3, #4]
    4196:	4b15      	ldr	r3, [pc, #84]	; (41ec <fsm_idle+0x18c>)
    4198:	601a      	str	r2, [r3, #0]
    419a:	4b11      	ldr	r3, [pc, #68]	; (41e0 <fsm_idle+0x180>)
    419c:	681a      	ldr	r2, [r3, #0]
    419e:	4b14      	ldr	r3, [pc, #80]	; (41f0 <fsm_idle+0x190>)
    41a0:	601a      	str	r2, [r3, #0]
    41a2:	4b0f      	ldr	r3, [pc, #60]	; (41e0 <fsm_idle+0x180>)
    41a4:	685a      	ldr	r2, [r3, #4]
    41a6:	4b13      	ldr	r3, [pc, #76]	; (41f4 <fsm_idle+0x194>)
    41a8:	601a      	str	r2, [r3, #0]
    41aa:	4b0e      	ldr	r3, [pc, #56]	; (41e4 <fsm_idle+0x184>)
    41ac:	681a      	ldr	r2, [r3, #0]
    41ae:	4b12      	ldr	r3, [pc, #72]	; (41f8 <fsm_idle+0x198>)
    41b0:	601a      	str	r2, [r3, #0]
    41b2:	f7fb ffcd 	bl	150 <dut_reset_on>
    41b6:	4b04      	ldr	r3, [pc, #16]	; (41c8 <fsm_idle+0x168>)
    41b8:	685b      	ldr	r3, [r3, #4]
    41ba:	0018      	movs	r0, r3
    41bc:	f7fb ffd4 	bl	168 <dut_set_speed>
    41c0:	46c0      	nop			; (mov r8, r8)
    41c2:	46bd      	mov	sp, r7
    41c4:	b006      	add	sp, #24
    41c6:	bd80      	pop	{r7, pc}
    41c8:	20006010 	.word	0x20006010
    41cc:	20006008 	.word	0x20006008
    41d0:	20000010 	.word	0x20000010
    41d4:	000041fd 	.word	0x000041fd
    41d8:	2000600c 	.word	0x2000600c
    41dc:	20005fcc 	.word	0x20005fcc
    41e0:	20005fe0 	.word	0x20005fe0
    41e4:	20005ff4 	.word	0x20005ff4
    41e8:	20005fbc 	.word	0x20005fbc
    41ec:	20005fc0 	.word	0x20005fc0
    41f0:	20005fc4 	.word	0x20005fc4
    41f4:	20005fc8 	.word	0x20005fc8
    41f8:	20005fb8 	.word	0x20005fb8

000041fc <fsm_work>:
    41fc:	b580      	push	{r7, lr}
    41fe:	b088      	sub	sp, #32
    4200:	af00      	add	r7, sp, #0
    4202:	6078      	str	r0, [r7, #4]
    4204:	231f      	movs	r3, #31
    4206:	18fb      	adds	r3, r7, r3
    4208:	687a      	ldr	r2, [r7, #4]
    420a:	701a      	strb	r2, [r3, #0]
    420c:	687b      	ldr	r3, [r7, #4]
    420e:	0a1b      	lsrs	r3, r3, #8
    4210:	61bb      	str	r3, [r7, #24]
    4212:	231f      	movs	r3, #31
    4214:	18fb      	adds	r3, r7, r3
    4216:	781b      	ldrb	r3, [r3, #0]
    4218:	2b04      	cmp	r3, #4
    421a:	d000      	beq.n	421e <fsm_work+0x22>
    421c:	e07c      	b.n	4318 <fsm_work+0x11c>
    421e:	69bb      	ldr	r3, [r7, #24]
    4220:	617b      	str	r3, [r7, #20]
    4222:	2300      	movs	r3, #0
    4224:	613b      	str	r3, [r7, #16]
    4226:	f7fb ff87 	bl	138 <dut_reset_off>
    422a:	4b48      	ldr	r3, [pc, #288]	; (434c <fsm_work+0x150>)
    422c:	681b      	ldr	r3, [r3, #0]
    422e:	001a      	movs	r2, r3
    4230:	697b      	ldr	r3, [r7, #20]
    4232:	4293      	cmp	r3, r2
    4234:	d34d      	bcc.n	42d2 <fsm_work+0xd6>
    4236:	4b46      	ldr	r3, [pc, #280]	; (4350 <fsm_work+0x154>)
    4238:	681b      	ldr	r3, [r3, #0]
    423a:	1c5a      	adds	r2, r3, #1
    423c:	4b44      	ldr	r3, [pc, #272]	; (4350 <fsm_work+0x154>)
    423e:	601a      	str	r2, [r3, #0]
    4240:	4b43      	ldr	r3, [pc, #268]	; (4350 <fsm_work+0x154>)
    4242:	681b      	ldr	r3, [r3, #0]
    4244:	2b03      	cmp	r3, #3
    4246:	d825      	bhi.n	4294 <fsm_work+0x98>
    4248:	4b41      	ldr	r3, [pc, #260]	; (4350 <fsm_work+0x154>)
    424a:	681a      	ldr	r2, [r3, #0]
    424c:	4b41      	ldr	r3, [pc, #260]	; (4354 <fsm_work+0x158>)
    424e:	0092      	lsls	r2, r2, #2
    4250:	58d2      	ldr	r2, [r2, r3]
    4252:	4b41      	ldr	r3, [pc, #260]	; (4358 <fsm_work+0x15c>)
    4254:	601a      	str	r2, [r3, #0]
    4256:	4b3e      	ldr	r3, [pc, #248]	; (4350 <fsm_work+0x154>)
    4258:	681b      	ldr	r3, [r3, #0]
    425a:	1c5a      	adds	r2, r3, #1
    425c:	4b3d      	ldr	r3, [pc, #244]	; (4354 <fsm_work+0x158>)
    425e:	0092      	lsls	r2, r2, #2
    4260:	58d2      	ldr	r2, [r2, r3]
    4262:	4b3a      	ldr	r3, [pc, #232]	; (434c <fsm_work+0x150>)
    4264:	601a      	str	r2, [r3, #0]
    4266:	4b3a      	ldr	r3, [pc, #232]	; (4350 <fsm_work+0x154>)
    4268:	681a      	ldr	r2, [r3, #0]
    426a:	4b3c      	ldr	r3, [pc, #240]	; (435c <fsm_work+0x160>)
    426c:	0092      	lsls	r2, r2, #2
    426e:	58d2      	ldr	r2, [r2, r3]
    4270:	4b3b      	ldr	r3, [pc, #236]	; (4360 <fsm_work+0x164>)
    4272:	601a      	str	r2, [r3, #0]
    4274:	4b36      	ldr	r3, [pc, #216]	; (4350 <fsm_work+0x154>)
    4276:	681b      	ldr	r3, [r3, #0]
    4278:	1c5a      	adds	r2, r3, #1
    427a:	4b38      	ldr	r3, [pc, #224]	; (435c <fsm_work+0x160>)
    427c:	0092      	lsls	r2, r2, #2
    427e:	58d2      	ldr	r2, [r2, r3]
    4280:	4b38      	ldr	r3, [pc, #224]	; (4364 <fsm_work+0x168>)
    4282:	601a      	str	r2, [r3, #0]
    4284:	4b32      	ldr	r3, [pc, #200]	; (4350 <fsm_work+0x154>)
    4286:	681a      	ldr	r2, [r3, #0]
    4288:	4b37      	ldr	r3, [pc, #220]	; (4368 <fsm_work+0x16c>)
    428a:	0092      	lsls	r2, r2, #2
    428c:	58d2      	ldr	r2, [r2, r3]
    428e:	4b37      	ldr	r3, [pc, #220]	; (436c <fsm_work+0x170>)
    4290:	601a      	str	r2, [r3, #0]
    4292:	e01e      	b.n	42d2 <fsm_work+0xd6>
    4294:	4b2e      	ldr	r3, [pc, #184]	; (4350 <fsm_work+0x154>)
    4296:	2200      	movs	r2, #0
    4298:	601a      	str	r2, [r3, #0]
    429a:	4b35      	ldr	r3, [pc, #212]	; (4370 <fsm_work+0x174>)
    429c:	681b      	ldr	r3, [r3, #0]
    429e:	1e5a      	subs	r2, r3, #1
    42a0:	4b33      	ldr	r3, [pc, #204]	; (4370 <fsm_work+0x174>)
    42a2:	601a      	str	r2, [r3, #0]
    42a4:	f7fb ff54 	bl	150 <dut_reset_on>
    42a8:	4b2a      	ldr	r3, [pc, #168]	; (4354 <fsm_work+0x158>)
    42aa:	681a      	ldr	r2, [r3, #0]
    42ac:	4b2a      	ldr	r3, [pc, #168]	; (4358 <fsm_work+0x15c>)
    42ae:	601a      	str	r2, [r3, #0]
    42b0:	4b28      	ldr	r3, [pc, #160]	; (4354 <fsm_work+0x158>)
    42b2:	685a      	ldr	r2, [r3, #4]
    42b4:	4b25      	ldr	r3, [pc, #148]	; (434c <fsm_work+0x150>)
    42b6:	601a      	str	r2, [r3, #0]
    42b8:	4b28      	ldr	r3, [pc, #160]	; (435c <fsm_work+0x160>)
    42ba:	681a      	ldr	r2, [r3, #0]
    42bc:	4b28      	ldr	r3, [pc, #160]	; (4360 <fsm_work+0x164>)
    42be:	601a      	str	r2, [r3, #0]
    42c0:	4b26      	ldr	r3, [pc, #152]	; (435c <fsm_work+0x160>)
    42c2:	685a      	ldr	r2, [r3, #4]
    42c4:	4b27      	ldr	r3, [pc, #156]	; (4364 <fsm_work+0x168>)
    42c6:	601a      	str	r2, [r3, #0]
    42c8:	4b27      	ldr	r3, [pc, #156]	; (4368 <fsm_work+0x16c>)
    42ca:	681a      	ldr	r2, [r3, #0]
    42cc:	4b27      	ldr	r3, [pc, #156]	; (436c <fsm_work+0x170>)
    42ce:	601a      	str	r2, [r3, #0]
    42d0:	e038      	b.n	4344 <fsm_work+0x148>
    42d2:	4b27      	ldr	r3, [pc, #156]	; (4370 <fsm_work+0x174>)
    42d4:	681b      	ldr	r3, [r3, #0]
    42d6:	2b00      	cmp	r3, #0
    42d8:	d10b      	bne.n	42f2 <fsm_work+0xf6>
    42da:	4b26      	ldr	r3, [pc, #152]	; (4374 <fsm_work+0x178>)
    42dc:	4a26      	ldr	r2, [pc, #152]	; (4378 <fsm_work+0x17c>)
    42de:	601a      	str	r2, [r3, #0]
    42e0:	2000      	movs	r0, #0
    42e2:	f7fb ff41 	bl	168 <dut_set_speed>
    42e6:	2000      	movs	r0, #0
    42e8:	f7fb ff4e 	bl	188 <dut_set_torque>
    42ec:	f7fb ff24 	bl	138 <dut_reset_off>
    42f0:	e028      	b.n	4344 <fsm_work+0x148>
    42f2:	4b1b      	ldr	r3, [pc, #108]	; (4360 <fsm_work+0x164>)
    42f4:	681b      	ldr	r3, [r3, #0]
    42f6:	009b      	lsls	r3, r3, #2
    42f8:	0019      	movs	r1, r3
    42fa:	4b17      	ldr	r3, [pc, #92]	; (4358 <fsm_work+0x15c>)
    42fc:	681b      	ldr	r3, [r3, #0]
    42fe:	001a      	movs	r2, r3
    4300:	697b      	ldr	r3, [r7, #20]
    4302:	1a9a      	subs	r2, r3, r2
    4304:	4b19      	ldr	r3, [pc, #100]	; (436c <fsm_work+0x170>)
    4306:	681b      	ldr	r3, [r3, #0]
    4308:	4353      	muls	r3, r2
    430a:	18cb      	adds	r3, r1, r3
    430c:	60fb      	str	r3, [r7, #12]
    430e:	68fb      	ldr	r3, [r7, #12]
    4310:	109b      	asrs	r3, r3, #2
    4312:	0018      	movs	r0, r3
    4314:	f7fb ff38 	bl	188 <dut_set_torque>
    4318:	231f      	movs	r3, #31
    431a:	18fb      	adds	r3, r7, r3
    431c:	781b      	ldrb	r3, [r3, #0]
    431e:	2b03      	cmp	r3, #3
    4320:	d110      	bne.n	4344 <fsm_work+0x148>
    4322:	4b14      	ldr	r3, [pc, #80]	; (4374 <fsm_work+0x178>)
    4324:	4a14      	ldr	r2, [pc, #80]	; (4378 <fsm_work+0x17c>)
    4326:	601a      	str	r2, [r3, #0]
    4328:	2000      	movs	r0, #0
    432a:	f7fb ff1d 	bl	168 <dut_set_speed>
    432e:	2000      	movs	r0, #0
    4330:	f7fb ff2a 	bl	188 <dut_set_torque>
    4334:	f7fb ff00 	bl	138 <dut_reset_off>
    4338:	4b0d      	ldr	r3, [pc, #52]	; (4370 <fsm_work+0x174>)
    433a:	2200      	movs	r2, #0
    433c:	601a      	str	r2, [r3, #0]
    433e:	4b04      	ldr	r3, [pc, #16]	; (4350 <fsm_work+0x154>)
    4340:	2200      	movs	r2, #0
    4342:	601a      	str	r2, [r3, #0]
    4344:	46bd      	mov	sp, r7
    4346:	b008      	add	sp, #32
    4348:	bd80      	pop	{r7, pc}
    434a:	46c0      	nop			; (mov r8, r8)
    434c:	20005fc0 	.word	0x20005fc0
    4350:	2000600c 	.word	0x2000600c
    4354:	20005fcc 	.word	0x20005fcc
    4358:	20005fbc 	.word	0x20005fbc
    435c:	20005fe0 	.word	0x20005fe0
    4360:	20005fc4 	.word	0x20005fc4
    4364:	20005fc8 	.word	0x20005fc8
    4368:	20005ff4 	.word	0x20005ff4
    436c:	20005fb8 	.word	0x20005fb8
    4370:	20006008 	.word	0x20006008
    4374:	20000010 	.word	0x20000010
    4378:	00004061 	.word	0x00004061

0000437c <fsm_wait>:
    437c:	b580      	push	{r7, lr}
    437e:	b086      	sub	sp, #24
    4380:	af00      	add	r7, sp, #0
    4382:	6078      	str	r0, [r7, #4]
    4384:	2317      	movs	r3, #23
    4386:	18fb      	adds	r3, r7, r3
    4388:	687a      	ldr	r2, [r7, #4]
    438a:	701a      	strb	r2, [r3, #0]
    438c:	687b      	ldr	r3, [r7, #4]
    438e:	0a1b      	lsrs	r3, r3, #8
    4390:	613b      	str	r3, [r7, #16]
    4392:	2317      	movs	r3, #23
    4394:	18fb      	adds	r3, r7, r3
    4396:	781b      	ldrb	r3, [r3, #0]
    4398:	2b04      	cmp	r3, #4
    439a:	d103      	bne.n	43a4 <fsm_wait+0x28>
    439c:	693b      	ldr	r3, [r7, #16]
    439e:	60fb      	str	r3, [r7, #12]
    43a0:	2300      	movs	r3, #0
    43a2:	60bb      	str	r3, [r7, #8]
    43a4:	46c0      	nop			; (mov r8, r8)
    43a6:	46bd      	mov	sp, r7
    43a8:	b006      	add	sp, #24
    43aa:	bd80      	pop	{r7, pc}

000043ac <__aeabi_uidiv>:
    43ac:	2200      	movs	r2, #0
    43ae:	0843      	lsrs	r3, r0, #1
    43b0:	428b      	cmp	r3, r1
    43b2:	d374      	bcc.n	449e <__aeabi_uidiv+0xf2>
    43b4:	0903      	lsrs	r3, r0, #4
    43b6:	428b      	cmp	r3, r1
    43b8:	d35f      	bcc.n	447a <__aeabi_uidiv+0xce>
    43ba:	0a03      	lsrs	r3, r0, #8
    43bc:	428b      	cmp	r3, r1
    43be:	d344      	bcc.n	444a <__aeabi_uidiv+0x9e>
    43c0:	0b03      	lsrs	r3, r0, #12
    43c2:	428b      	cmp	r3, r1
    43c4:	d328      	bcc.n	4418 <__aeabi_uidiv+0x6c>
    43c6:	0c03      	lsrs	r3, r0, #16
    43c8:	428b      	cmp	r3, r1
    43ca:	d30d      	bcc.n	43e8 <__aeabi_uidiv+0x3c>
    43cc:	22ff      	movs	r2, #255	; 0xff
    43ce:	0209      	lsls	r1, r1, #8
    43d0:	ba12      	rev	r2, r2
    43d2:	0c03      	lsrs	r3, r0, #16
    43d4:	428b      	cmp	r3, r1
    43d6:	d302      	bcc.n	43de <__aeabi_uidiv+0x32>
    43d8:	1212      	asrs	r2, r2, #8
    43da:	0209      	lsls	r1, r1, #8
    43dc:	d065      	beq.n	44aa <__aeabi_uidiv+0xfe>
    43de:	0b03      	lsrs	r3, r0, #12
    43e0:	428b      	cmp	r3, r1
    43e2:	d319      	bcc.n	4418 <__aeabi_uidiv+0x6c>
    43e4:	e000      	b.n	43e8 <__aeabi_uidiv+0x3c>
    43e6:	0a09      	lsrs	r1, r1, #8
    43e8:	0bc3      	lsrs	r3, r0, #15
    43ea:	428b      	cmp	r3, r1
    43ec:	d301      	bcc.n	43f2 <__aeabi_uidiv+0x46>
    43ee:	03cb      	lsls	r3, r1, #15
    43f0:	1ac0      	subs	r0, r0, r3
    43f2:	4152      	adcs	r2, r2
    43f4:	0b83      	lsrs	r3, r0, #14
    43f6:	428b      	cmp	r3, r1
    43f8:	d301      	bcc.n	43fe <__aeabi_uidiv+0x52>
    43fa:	038b      	lsls	r3, r1, #14
    43fc:	1ac0      	subs	r0, r0, r3
    43fe:	4152      	adcs	r2, r2
    4400:	0b43      	lsrs	r3, r0, #13
    4402:	428b      	cmp	r3, r1
    4404:	d301      	bcc.n	440a <__aeabi_uidiv+0x5e>
    4406:	034b      	lsls	r3, r1, #13
    4408:	1ac0      	subs	r0, r0, r3
    440a:	4152      	adcs	r2, r2
    440c:	0b03      	lsrs	r3, r0, #12
    440e:	428b      	cmp	r3, r1
    4410:	d301      	bcc.n	4416 <__aeabi_uidiv+0x6a>
    4412:	030b      	lsls	r3, r1, #12
    4414:	1ac0      	subs	r0, r0, r3
    4416:	4152      	adcs	r2, r2
    4418:	0ac3      	lsrs	r3, r0, #11
    441a:	428b      	cmp	r3, r1
    441c:	d301      	bcc.n	4422 <__aeabi_uidiv+0x76>
    441e:	02cb      	lsls	r3, r1, #11
    4420:	1ac0      	subs	r0, r0, r3
    4422:	4152      	adcs	r2, r2
    4424:	0a83      	lsrs	r3, r0, #10
    4426:	428b      	cmp	r3, r1
    4428:	d301      	bcc.n	442e <__aeabi_uidiv+0x82>
    442a:	028b      	lsls	r3, r1, #10
    442c:	1ac0      	subs	r0, r0, r3
    442e:	4152      	adcs	r2, r2
    4430:	0a43      	lsrs	r3, r0, #9
    4432:	428b      	cmp	r3, r1
    4434:	d301      	bcc.n	443a <__aeabi_uidiv+0x8e>
    4436:	024b      	lsls	r3, r1, #9
    4438:	1ac0      	subs	r0, r0, r3
    443a:	4152      	adcs	r2, r2
    443c:	0a03      	lsrs	r3, r0, #8
    443e:	428b      	cmp	r3, r1
    4440:	d301      	bcc.n	4446 <__aeabi_uidiv+0x9a>
    4442:	020b      	lsls	r3, r1, #8
    4444:	1ac0      	subs	r0, r0, r3
    4446:	4152      	adcs	r2, r2
    4448:	d2cd      	bcs.n	43e6 <__aeabi_uidiv+0x3a>
    444a:	09c3      	lsrs	r3, r0, #7
    444c:	428b      	cmp	r3, r1
    444e:	d301      	bcc.n	4454 <__aeabi_uidiv+0xa8>
    4450:	01cb      	lsls	r3, r1, #7
    4452:	1ac0      	subs	r0, r0, r3
    4454:	4152      	adcs	r2, r2
    4456:	0983      	lsrs	r3, r0, #6
    4458:	428b      	cmp	r3, r1
    445a:	d301      	bcc.n	4460 <__aeabi_uidiv+0xb4>
    445c:	018b      	lsls	r3, r1, #6
    445e:	1ac0      	subs	r0, r0, r3
    4460:	4152      	adcs	r2, r2
    4462:	0943      	lsrs	r3, r0, #5
    4464:	428b      	cmp	r3, r1
    4466:	d301      	bcc.n	446c <__aeabi_uidiv+0xc0>
    4468:	014b      	lsls	r3, r1, #5
    446a:	1ac0      	subs	r0, r0, r3
    446c:	4152      	adcs	r2, r2
    446e:	0903      	lsrs	r3, r0, #4
    4470:	428b      	cmp	r3, r1
    4472:	d301      	bcc.n	4478 <__aeabi_uidiv+0xcc>
    4474:	010b      	lsls	r3, r1, #4
    4476:	1ac0      	subs	r0, r0, r3
    4478:	4152      	adcs	r2, r2
    447a:	08c3      	lsrs	r3, r0, #3
    447c:	428b      	cmp	r3, r1
    447e:	d301      	bcc.n	4484 <__aeabi_uidiv+0xd8>
    4480:	00cb      	lsls	r3, r1, #3
    4482:	1ac0      	subs	r0, r0, r3
    4484:	4152      	adcs	r2, r2
    4486:	0883      	lsrs	r3, r0, #2
    4488:	428b      	cmp	r3, r1
    448a:	d301      	bcc.n	4490 <__aeabi_uidiv+0xe4>
    448c:	008b      	lsls	r3, r1, #2
    448e:	1ac0      	subs	r0, r0, r3
    4490:	4152      	adcs	r2, r2
    4492:	0843      	lsrs	r3, r0, #1
    4494:	428b      	cmp	r3, r1
    4496:	d301      	bcc.n	449c <__aeabi_uidiv+0xf0>
    4498:	004b      	lsls	r3, r1, #1
    449a:	1ac0      	subs	r0, r0, r3
    449c:	4152      	adcs	r2, r2
    449e:	1a41      	subs	r1, r0, r1
    44a0:	d200      	bcs.n	44a4 <__aeabi_uidiv+0xf8>
    44a2:	4601      	mov	r1, r0
    44a4:	4152      	adcs	r2, r2
    44a6:	4610      	mov	r0, r2
    44a8:	4770      	bx	lr
    44aa:	e7ff      	b.n	44ac <__aeabi_uidiv+0x100>
    44ac:	b501      	push	{r0, lr}
    44ae:	2000      	movs	r0, #0
    44b0:	f000 f8f0 	bl	4694 <__aeabi_idiv0>
    44b4:	bd02      	pop	{r1, pc}
    44b6:	46c0      	nop			; (mov r8, r8)

000044b8 <__aeabi_uidivmod>:
    44b8:	2900      	cmp	r1, #0
    44ba:	d0f7      	beq.n	44ac <__aeabi_uidiv+0x100>
    44bc:	e776      	b.n	43ac <__aeabi_uidiv>
    44be:	4770      	bx	lr

000044c0 <__aeabi_idiv>:
    44c0:	4603      	mov	r3, r0
    44c2:	430b      	orrs	r3, r1
    44c4:	d47f      	bmi.n	45c6 <__aeabi_idiv+0x106>
    44c6:	2200      	movs	r2, #0
    44c8:	0843      	lsrs	r3, r0, #1
    44ca:	428b      	cmp	r3, r1
    44cc:	d374      	bcc.n	45b8 <__aeabi_idiv+0xf8>
    44ce:	0903      	lsrs	r3, r0, #4
    44d0:	428b      	cmp	r3, r1
    44d2:	d35f      	bcc.n	4594 <__aeabi_idiv+0xd4>
    44d4:	0a03      	lsrs	r3, r0, #8
    44d6:	428b      	cmp	r3, r1
    44d8:	d344      	bcc.n	4564 <__aeabi_idiv+0xa4>
    44da:	0b03      	lsrs	r3, r0, #12
    44dc:	428b      	cmp	r3, r1
    44de:	d328      	bcc.n	4532 <__aeabi_idiv+0x72>
    44e0:	0c03      	lsrs	r3, r0, #16
    44e2:	428b      	cmp	r3, r1
    44e4:	d30d      	bcc.n	4502 <__aeabi_idiv+0x42>
    44e6:	22ff      	movs	r2, #255	; 0xff
    44e8:	0209      	lsls	r1, r1, #8
    44ea:	ba12      	rev	r2, r2
    44ec:	0c03      	lsrs	r3, r0, #16
    44ee:	428b      	cmp	r3, r1
    44f0:	d302      	bcc.n	44f8 <__aeabi_idiv+0x38>
    44f2:	1212      	asrs	r2, r2, #8
    44f4:	0209      	lsls	r1, r1, #8
    44f6:	d065      	beq.n	45c4 <__aeabi_idiv+0x104>
    44f8:	0b03      	lsrs	r3, r0, #12
    44fa:	428b      	cmp	r3, r1
    44fc:	d319      	bcc.n	4532 <__aeabi_idiv+0x72>
    44fe:	e000      	b.n	4502 <__aeabi_idiv+0x42>
    4500:	0a09      	lsrs	r1, r1, #8
    4502:	0bc3      	lsrs	r3, r0, #15
    4504:	428b      	cmp	r3, r1
    4506:	d301      	bcc.n	450c <__aeabi_idiv+0x4c>
    4508:	03cb      	lsls	r3, r1, #15
    450a:	1ac0      	subs	r0, r0, r3
    450c:	4152      	adcs	r2, r2
    450e:	0b83      	lsrs	r3, r0, #14
    4510:	428b      	cmp	r3, r1
    4512:	d301      	bcc.n	4518 <__aeabi_idiv+0x58>
    4514:	038b      	lsls	r3, r1, #14
    4516:	1ac0      	subs	r0, r0, r3
    4518:	4152      	adcs	r2, r2
    451a:	0b43      	lsrs	r3, r0, #13
    451c:	428b      	cmp	r3, r1
    451e:	d301      	bcc.n	4524 <__aeabi_idiv+0x64>
    4520:	034b      	lsls	r3, r1, #13
    4522:	1ac0      	subs	r0, r0, r3
    4524:	4152      	adcs	r2, r2
    4526:	0b03      	lsrs	r3, r0, #12
    4528:	428b      	cmp	r3, r1
    452a:	d301      	bcc.n	4530 <__aeabi_idiv+0x70>
    452c:	030b      	lsls	r3, r1, #12
    452e:	1ac0      	subs	r0, r0, r3
    4530:	4152      	adcs	r2, r2
    4532:	0ac3      	lsrs	r3, r0, #11
    4534:	428b      	cmp	r3, r1
    4536:	d301      	bcc.n	453c <__aeabi_idiv+0x7c>
    4538:	02cb      	lsls	r3, r1, #11
    453a:	1ac0      	subs	r0, r0, r3
    453c:	4152      	adcs	r2, r2
    453e:	0a83      	lsrs	r3, r0, #10
    4540:	428b      	cmp	r3, r1
    4542:	d301      	bcc.n	4548 <__aeabi_idiv+0x88>
    4544:	028b      	lsls	r3, r1, #10
    4546:	1ac0      	subs	r0, r0, r3
    4548:	4152      	adcs	r2, r2
    454a:	0a43      	lsrs	r3, r0, #9
    454c:	428b      	cmp	r3, r1
    454e:	d301      	bcc.n	4554 <__aeabi_idiv+0x94>
    4550:	024b      	lsls	r3, r1, #9
    4552:	1ac0      	subs	r0, r0, r3
    4554:	4152      	adcs	r2, r2
    4556:	0a03      	lsrs	r3, r0, #8
    4558:	428b      	cmp	r3, r1
    455a:	d301      	bcc.n	4560 <__aeabi_idiv+0xa0>
    455c:	020b      	lsls	r3, r1, #8
    455e:	1ac0      	subs	r0, r0, r3
    4560:	4152      	adcs	r2, r2
    4562:	d2cd      	bcs.n	4500 <__aeabi_idiv+0x40>
    4564:	09c3      	lsrs	r3, r0, #7
    4566:	428b      	cmp	r3, r1
    4568:	d301      	bcc.n	456e <__aeabi_idiv+0xae>
    456a:	01cb      	lsls	r3, r1, #7
    456c:	1ac0      	subs	r0, r0, r3
    456e:	4152      	adcs	r2, r2
    4570:	0983      	lsrs	r3, r0, #6
    4572:	428b      	cmp	r3, r1
    4574:	d301      	bcc.n	457a <__aeabi_idiv+0xba>
    4576:	018b      	lsls	r3, r1, #6
    4578:	1ac0      	subs	r0, r0, r3
    457a:	4152      	adcs	r2, r2
    457c:	0943      	lsrs	r3, r0, #5
    457e:	428b      	cmp	r3, r1
    4580:	d301      	bcc.n	4586 <__aeabi_idiv+0xc6>
    4582:	014b      	lsls	r3, r1, #5
    4584:	1ac0      	subs	r0, r0, r3
    4586:	4152      	adcs	r2, r2
    4588:	0903      	lsrs	r3, r0, #4
    458a:	428b      	cmp	r3, r1
    458c:	d301      	bcc.n	4592 <__aeabi_idiv+0xd2>
    458e:	010b      	lsls	r3, r1, #4
    4590:	1ac0      	subs	r0, r0, r3
    4592:	4152      	adcs	r2, r2
    4594:	08c3      	lsrs	r3, r0, #3
    4596:	428b      	cmp	r3, r1
    4598:	d301      	bcc.n	459e <__aeabi_idiv+0xde>
    459a:	00cb      	lsls	r3, r1, #3
    459c:	1ac0      	subs	r0, r0, r3
    459e:	4152      	adcs	r2, r2
    45a0:	0883      	lsrs	r3, r0, #2
    45a2:	428b      	cmp	r3, r1
    45a4:	d301      	bcc.n	45aa <__aeabi_idiv+0xea>
    45a6:	008b      	lsls	r3, r1, #2
    45a8:	1ac0      	subs	r0, r0, r3
    45aa:	4152      	adcs	r2, r2
    45ac:	0843      	lsrs	r3, r0, #1
    45ae:	428b      	cmp	r3, r1
    45b0:	d301      	bcc.n	45b6 <__aeabi_idiv+0xf6>
    45b2:	004b      	lsls	r3, r1, #1
    45b4:	1ac0      	subs	r0, r0, r3
    45b6:	4152      	adcs	r2, r2
    45b8:	1a41      	subs	r1, r0, r1
    45ba:	d200      	bcs.n	45be <__aeabi_idiv+0xfe>
    45bc:	4601      	mov	r1, r0
    45be:	4152      	adcs	r2, r2
    45c0:	4610      	mov	r0, r2
    45c2:	4770      	bx	lr
    45c4:	e05d      	b.n	4682 <__aeabi_idiv+0x1c2>
    45c6:	0fca      	lsrs	r2, r1, #31
    45c8:	d000      	beq.n	45cc <__aeabi_idiv+0x10c>
    45ca:	4249      	negs	r1, r1
    45cc:	1003      	asrs	r3, r0, #32
    45ce:	d300      	bcc.n	45d2 <__aeabi_idiv+0x112>
    45d0:	4240      	negs	r0, r0
    45d2:	4053      	eors	r3, r2
    45d4:	2200      	movs	r2, #0
    45d6:	469c      	mov	ip, r3
    45d8:	0903      	lsrs	r3, r0, #4
    45da:	428b      	cmp	r3, r1
    45dc:	d32d      	bcc.n	463a <__aeabi_idiv+0x17a>
    45de:	0a03      	lsrs	r3, r0, #8
    45e0:	428b      	cmp	r3, r1
    45e2:	d312      	bcc.n	460a <__aeabi_idiv+0x14a>
    45e4:	22fc      	movs	r2, #252	; 0xfc
    45e6:	0189      	lsls	r1, r1, #6
    45e8:	ba12      	rev	r2, r2
    45ea:	0a03      	lsrs	r3, r0, #8
    45ec:	428b      	cmp	r3, r1
    45ee:	d30c      	bcc.n	460a <__aeabi_idiv+0x14a>
    45f0:	0189      	lsls	r1, r1, #6
    45f2:	1192      	asrs	r2, r2, #6
    45f4:	428b      	cmp	r3, r1
    45f6:	d308      	bcc.n	460a <__aeabi_idiv+0x14a>
    45f8:	0189      	lsls	r1, r1, #6
    45fa:	1192      	asrs	r2, r2, #6
    45fc:	428b      	cmp	r3, r1
    45fe:	d304      	bcc.n	460a <__aeabi_idiv+0x14a>
    4600:	0189      	lsls	r1, r1, #6
    4602:	d03a      	beq.n	467a <__aeabi_idiv+0x1ba>
    4604:	1192      	asrs	r2, r2, #6
    4606:	e000      	b.n	460a <__aeabi_idiv+0x14a>
    4608:	0989      	lsrs	r1, r1, #6
    460a:	09c3      	lsrs	r3, r0, #7
    460c:	428b      	cmp	r3, r1
    460e:	d301      	bcc.n	4614 <__aeabi_idiv+0x154>
    4610:	01cb      	lsls	r3, r1, #7
    4612:	1ac0      	subs	r0, r0, r3
    4614:	4152      	adcs	r2, r2
    4616:	0983      	lsrs	r3, r0, #6
    4618:	428b      	cmp	r3, r1
    461a:	d301      	bcc.n	4620 <__aeabi_idiv+0x160>
    461c:	018b      	lsls	r3, r1, #6
    461e:	1ac0      	subs	r0, r0, r3
    4620:	4152      	adcs	r2, r2
    4622:	0943      	lsrs	r3, r0, #5
    4624:	428b      	cmp	r3, r1
    4626:	d301      	bcc.n	462c <__aeabi_idiv+0x16c>
    4628:	014b      	lsls	r3, r1, #5
    462a:	1ac0      	subs	r0, r0, r3
    462c:	4152      	adcs	r2, r2
    462e:	0903      	lsrs	r3, r0, #4
    4630:	428b      	cmp	r3, r1
    4632:	d301      	bcc.n	4638 <__aeabi_idiv+0x178>
    4634:	010b      	lsls	r3, r1, #4
    4636:	1ac0      	subs	r0, r0, r3
    4638:	4152      	adcs	r2, r2
    463a:	08c3      	lsrs	r3, r0, #3
    463c:	428b      	cmp	r3, r1
    463e:	d301      	bcc.n	4644 <__aeabi_idiv+0x184>
    4640:	00cb      	lsls	r3, r1, #3
    4642:	1ac0      	subs	r0, r0, r3
    4644:	4152      	adcs	r2, r2
    4646:	0883      	lsrs	r3, r0, #2
    4648:	428b      	cmp	r3, r1
    464a:	d301      	bcc.n	4650 <__aeabi_idiv+0x190>
    464c:	008b      	lsls	r3, r1, #2
    464e:	1ac0      	subs	r0, r0, r3
    4650:	4152      	adcs	r2, r2
    4652:	d2d9      	bcs.n	4608 <__aeabi_idiv+0x148>
    4654:	0843      	lsrs	r3, r0, #1
    4656:	428b      	cmp	r3, r1
    4658:	d301      	bcc.n	465e <__aeabi_idiv+0x19e>
    465a:	004b      	lsls	r3, r1, #1
    465c:	1ac0      	subs	r0, r0, r3
    465e:	4152      	adcs	r2, r2
    4660:	1a41      	subs	r1, r0, r1
    4662:	d200      	bcs.n	4666 <__aeabi_idiv+0x1a6>
    4664:	4601      	mov	r1, r0
    4666:	4663      	mov	r3, ip
    4668:	4152      	adcs	r2, r2
    466a:	105b      	asrs	r3, r3, #1
    466c:	4610      	mov	r0, r2
    466e:	d301      	bcc.n	4674 <__aeabi_idiv+0x1b4>
    4670:	4240      	negs	r0, r0
    4672:	2b00      	cmp	r3, #0
    4674:	d500      	bpl.n	4678 <__aeabi_idiv+0x1b8>
    4676:	4249      	negs	r1, r1
    4678:	4770      	bx	lr
    467a:	4663      	mov	r3, ip
    467c:	105b      	asrs	r3, r3, #1
    467e:	d300      	bcc.n	4682 <__aeabi_idiv+0x1c2>
    4680:	4240      	negs	r0, r0
    4682:	b501      	push	{r0, lr}
    4684:	2000      	movs	r0, #0
    4686:	f000 f805 	bl	4694 <__aeabi_idiv0>
    468a:	bd02      	pop	{r1, pc}

0000468c <__aeabi_idivmod>:
    468c:	2900      	cmp	r1, #0
    468e:	d0f8      	beq.n	4682 <__aeabi_idiv+0x1c2>
    4690:	e716      	b.n	44c0 <__aeabi_idiv>
    4692:	4770      	bx	lr

00004694 <__aeabi_idiv0>:
    4694:	4770      	bx	lr
    4696:	46c0      	nop			; (mov r8, r8)

00004698 <rt_set_PSP>:
    4698:	f380 8809 	msr	PSP, r0
    469c:	4770      	bx	lr

0000469e <rt_get_PSP>:
    469e:	f3ef 8009 	mrs	r0, PSP
    46a2:	4770      	bx	lr

000046a4 <os_set_env>:
    46a4:	4668      	mov	r0, sp
    46a6:	f380 8809 	msr	PSP, r0
    46aa:	484a      	ldr	r0, [pc, #296]	; (47d4 <OS_Tick_Handler+0xa>)
    46ac:	7800      	ldrb	r0, [r0, #0]
    46ae:	07c0      	lsls	r0, r0, #31
    46b0:	d103      	bne.n	46ba <PrivilegedE>
    46b2:	2003      	movs	r0, #3
    46b4:	f380 8814 	msr	CONTROL, r0
    46b8:	4770      	bx	lr

000046ba <PrivilegedE>:
    46ba:	2002      	movs	r0, #2
    46bc:	f380 8814 	msr	CONTROL, r0
    46c0:	4770      	bx	lr

000046c2 <_alloc_box>:
    46c2:	4b45      	ldr	r3, [pc, #276]	; (47d8 <OS_Tick_Handler+0xe>)
    46c4:	469c      	mov	ip, r3
    46c6:	f3ef 8305 	mrs	r3, IPSR
    46ca:	061b      	lsls	r3, r3, #24
    46cc:	d105      	bne.n	46da <PrivilegedA>
    46ce:	f3ef 8314 	mrs	r3, CONTROL
    46d2:	07db      	lsls	r3, r3, #31
    46d4:	d001      	beq.n	46da <PrivilegedA>
    46d6:	df00      	svc	0
    46d8:	4770      	bx	lr

000046da <PrivilegedA>:
    46da:	4760      	bx	ip

000046dc <_free_box>:
    46dc:	4b3f      	ldr	r3, [pc, #252]	; (47dc <OS_Tick_Handler+0x12>)
    46de:	469c      	mov	ip, r3
    46e0:	f3ef 8305 	mrs	r3, IPSR
    46e4:	061b      	lsls	r3, r3, #24
    46e6:	d105      	bne.n	46f4 <PrivilegedF>
    46e8:	f3ef 8314 	mrs	r3, CONTROL
    46ec:	07db      	lsls	r3, r3, #31
    46ee:	d001      	beq.n	46f4 <PrivilegedF>
    46f0:	df00      	svc	0
    46f2:	4770      	bx	lr

000046f4 <PrivilegedF>:
    46f4:	4760      	bx	ip

000046f6 <SVC_Handler>:
    46f6:	f3ef 8009 	mrs	r0, PSP
    46fa:	6981      	ldr	r1, [r0, #24]
    46fc:	3902      	subs	r1, #2
    46fe:	7809      	ldrb	r1, [r1, #0]
    4700:	2900      	cmp	r1, #0
    4702:	d12b      	bne.n	475c <SVC_User>
    4704:	46a6      	mov	lr, r4
    4706:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4708:	46a4      	mov	ip, r4
    470a:	4674      	mov	r4, lr
    470c:	47e0      	blx	ip
    470e:	f3ef 8309 	mrs	r3, PSP
    4712:	c307      	stmia	r3!, {r0, r1, r2}
    4714:	4b32      	ldr	r3, [pc, #200]	; (47e0 <OS_Tick_Handler+0x16>)
    4716:	cb06      	ldmia	r3!, {r1, r2}
    4718:	4291      	cmp	r1, r2
    471a:	d01c      	beq.n	4756 <SVC_Exit>
    471c:	3b08      	subs	r3, #8
    471e:	2900      	cmp	r1, #0
    4720:	d00d      	beq.n	473e <SVC_Next>
    4722:	f3ef 8009 	mrs	r0, PSP
    4726:	3820      	subs	r0, #32
    4728:	6288      	str	r0, [r1, #40]	; 0x28
    472a:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    472c:	4644      	mov	r4, r8
    472e:	464d      	mov	r5, r9
    4730:	4656      	mov	r6, sl
    4732:	465f      	mov	r7, fp
    4734:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4736:	b40c      	push	{r2, r3}
    4738:	f003 fbe8 	bl	7f0c <rt_stk_check>
    473c:	bc0c      	pop	{r2, r3}

0000473e <SVC_Next>:
    473e:	601a      	str	r2, [r3, #0]
    4740:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4742:	3010      	adds	r0, #16
    4744:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4746:	46a0      	mov	r8, r4
    4748:	46a9      	mov	r9, r5
    474a:	46b2      	mov	sl, r6
    474c:	46bb      	mov	fp, r7
    474e:	f380 8809 	msr	PSP, r0
    4752:	3820      	subs	r0, #32
    4754:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004756 <SVC_Exit>:
    4756:	2002      	movs	r0, #2
    4758:	43c0      	mvns	r0, r0
    475a:	4700      	bx	r0

0000475c <SVC_User>:
    475c:	b510      	push	{r4, lr}
    475e:	4a21      	ldr	r2, [pc, #132]	; (47e4 <OS_Tick_Handler+0x1a>)
    4760:	6812      	ldr	r2, [r2, #0]
    4762:	4291      	cmp	r1, r2
    4764:	d809      	bhi.n	477a <SVC_Done>
    4766:	4c20      	ldr	r4, [pc, #128]	; (47e8 <OS_Tick_Handler+0x1e>)
    4768:	0089      	lsls	r1, r1, #2
    476a:	5864      	ldr	r4, [r4, r1]
    476c:	46a6      	mov	lr, r4
    476e:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4770:	46a4      	mov	ip, r4
    4772:	47f0      	blx	lr
    4774:	f3ef 8409 	mrs	r4, PSP
    4778:	c40f      	stmia	r4!, {r0, r1, r2, r3}

0000477a <SVC_Done>:
    477a:	bd10      	pop	{r4, pc}

0000477c <PendSV_Handler>:
    477c:	f003 fb36 	bl	7dec <rt_pop_req>

00004780 <Sys_Switch>:
    4780:	4b17      	ldr	r3, [pc, #92]	; (47e0 <OS_Tick_Handler+0x16>)
    4782:	cb06      	ldmia	r3!, {r1, r2}
    4784:	4291      	cmp	r1, r2
    4786:	d01a      	beq.n	47be <Sys_Exit>
    4788:	3b08      	subs	r3, #8
    478a:	f3ef 8009 	mrs	r0, PSP
    478e:	3820      	subs	r0, #32
    4790:	6288      	str	r0, [r1, #40]	; 0x28
    4792:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4794:	4644      	mov	r4, r8
    4796:	464d      	mov	r5, r9
    4798:	4656      	mov	r6, sl
    479a:	465f      	mov	r7, fp
    479c:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    479e:	b40c      	push	{r2, r3}
    47a0:	f003 fbb4 	bl	7f0c <rt_stk_check>
    47a4:	bc0c      	pop	{r2, r3}
    47a6:	601a      	str	r2, [r3, #0]
    47a8:	6a90      	ldr	r0, [r2, #40]	; 0x28
    47aa:	3010      	adds	r0, #16
    47ac:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    47ae:	46a0      	mov	r8, r4
    47b0:	46a9      	mov	r9, r5
    47b2:	46b2      	mov	sl, r6
    47b4:	46bb      	mov	fp, r7
    47b6:	f380 8809 	msr	PSP, r0
    47ba:	3820      	subs	r0, #32
    47bc:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

000047be <Sys_Exit>:
    47be:	2002      	movs	r0, #2
    47c0:	43c0      	mvns	r0, r0
    47c2:	4700      	bx	r0

000047c4 <SysTick_Handler>:
    47c4:	f003 fb84 	bl	7ed0 <rt_systick>
    47c8:	e7da      	b.n	4780 <Sys_Switch>

000047ca <OS_Tick_Handler>:
    47ca:	f003 fb7f 	bl	7ecc <os_tick_irqack>
    47ce:	f003 fb7f 	bl	7ed0 <rt_systick>
    47d2:	e7d5      	b.n	4780 <Sys_Switch>
    47d4:	0000862c 	.word	0x0000862c
    47d8:	00007009 	.word	0x00007009
    47dc:	00007049 	.word	0x00007049
    47e0:	200060b4 	.word	0x200060b4
    47e4:	00000000 	.word	0x00000000
    47e8:	fffffffc 	.word	0xfffffffc

000047ec <__aeabi_uldivmod>:
    47ec:	2b00      	cmp	r3, #0
    47ee:	d111      	bne.n	4814 <__aeabi_uldivmod+0x28>
    47f0:	2a00      	cmp	r2, #0
    47f2:	d10f      	bne.n	4814 <__aeabi_uldivmod+0x28>
    47f4:	2900      	cmp	r1, #0
    47f6:	d100      	bne.n	47fa <__aeabi_uldivmod+0xe>
    47f8:	2800      	cmp	r0, #0
    47fa:	d002      	beq.n	4802 <__aeabi_uldivmod+0x16>
    47fc:	2100      	movs	r1, #0
    47fe:	43c9      	mvns	r1, r1
    4800:	1c08      	adds	r0, r1, #0
    4802:	b407      	push	{r0, r1, r2}
    4804:	4802      	ldr	r0, [pc, #8]	; (4810 <__aeabi_uldivmod+0x24>)
    4806:	a102      	add	r1, pc, #8	; (adr r1, 4810 <__aeabi_uldivmod+0x24>)
    4808:	1840      	adds	r0, r0, r1
    480a:	9002      	str	r0, [sp, #8]
    480c:	bd03      	pop	{r0, r1, pc}
    480e:	46c0      	nop			; (mov r8, r8)
    4810:	fffffe85 	.word	0xfffffe85
    4814:	b403      	push	{r0, r1}
    4816:	4668      	mov	r0, sp
    4818:	b501      	push	{r0, lr}
    481a:	9802      	ldr	r0, [sp, #8]
    481c:	f000 f832 	bl	4884 <__udivmoddi4>
    4820:	9b01      	ldr	r3, [sp, #4]
    4822:	469e      	mov	lr, r3
    4824:	b002      	add	sp, #8
    4826:	bc0c      	pop	{r2, r3}
    4828:	4770      	bx	lr
    482a:	46c0      	nop			; (mov r8, r8)

0000482c <__aeabi_lmul>:
    482c:	b5f0      	push	{r4, r5, r6, r7, lr}
    482e:	464f      	mov	r7, r9
    4830:	4646      	mov	r6, r8
    4832:	b4c0      	push	{r6, r7}
    4834:	0416      	lsls	r6, r2, #16
    4836:	0c36      	lsrs	r6, r6, #16
    4838:	4699      	mov	r9, r3
    483a:	0033      	movs	r3, r6
    483c:	0405      	lsls	r5, r0, #16
    483e:	0c2c      	lsrs	r4, r5, #16
    4840:	0c07      	lsrs	r7, r0, #16
    4842:	0c15      	lsrs	r5, r2, #16
    4844:	4363      	muls	r3, r4
    4846:	437e      	muls	r6, r7
    4848:	436f      	muls	r7, r5
    484a:	4365      	muls	r5, r4
    484c:	0c1c      	lsrs	r4, r3, #16
    484e:	19ad      	adds	r5, r5, r6
    4850:	1964      	adds	r4, r4, r5
    4852:	469c      	mov	ip, r3
    4854:	42a6      	cmp	r6, r4
    4856:	d903      	bls.n	4860 <__aeabi_lmul+0x34>
    4858:	2380      	movs	r3, #128	; 0x80
    485a:	025b      	lsls	r3, r3, #9
    485c:	4698      	mov	r8, r3
    485e:	4447      	add	r7, r8
    4860:	4663      	mov	r3, ip
    4862:	0c25      	lsrs	r5, r4, #16
    4864:	19ef      	adds	r7, r5, r7
    4866:	041d      	lsls	r5, r3, #16
    4868:	464b      	mov	r3, r9
    486a:	434a      	muls	r2, r1
    486c:	4343      	muls	r3, r0
    486e:	0c2d      	lsrs	r5, r5, #16
    4870:	0424      	lsls	r4, r4, #16
    4872:	1964      	adds	r4, r4, r5
    4874:	1899      	adds	r1, r3, r2
    4876:	19c9      	adds	r1, r1, r7
    4878:	0020      	movs	r0, r4
    487a:	bc0c      	pop	{r2, r3}
    487c:	4690      	mov	r8, r2
    487e:	4699      	mov	r9, r3
    4880:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4882:	46c0      	nop			; (mov r8, r8)

00004884 <__udivmoddi4>:
    4884:	b5f0      	push	{r4, r5, r6, r7, lr}
    4886:	464d      	mov	r5, r9
    4888:	4656      	mov	r6, sl
    488a:	4644      	mov	r4, r8
    488c:	465f      	mov	r7, fp
    488e:	b4f0      	push	{r4, r5, r6, r7}
    4890:	4692      	mov	sl, r2
    4892:	b083      	sub	sp, #12
    4894:	0004      	movs	r4, r0
    4896:	000d      	movs	r5, r1
    4898:	4699      	mov	r9, r3
    489a:	428b      	cmp	r3, r1
    489c:	d82f      	bhi.n	48fe <__udivmoddi4+0x7a>
    489e:	d02c      	beq.n	48fa <__udivmoddi4+0x76>
    48a0:	4649      	mov	r1, r9
    48a2:	4650      	mov	r0, sl
    48a4:	f000 f8ae 	bl	4a04 <__clzdi2>
    48a8:	0029      	movs	r1, r5
    48aa:	0006      	movs	r6, r0
    48ac:	0020      	movs	r0, r4
    48ae:	f000 f8a9 	bl	4a04 <__clzdi2>
    48b2:	1a33      	subs	r3, r6, r0
    48b4:	4698      	mov	r8, r3
    48b6:	3b20      	subs	r3, #32
    48b8:	469b      	mov	fp, r3
    48ba:	d500      	bpl.n	48be <__udivmoddi4+0x3a>
    48bc:	e074      	b.n	49a8 <__udivmoddi4+0x124>
    48be:	4653      	mov	r3, sl
    48c0:	465a      	mov	r2, fp
    48c2:	4093      	lsls	r3, r2
    48c4:	001f      	movs	r7, r3
    48c6:	4653      	mov	r3, sl
    48c8:	4642      	mov	r2, r8
    48ca:	4093      	lsls	r3, r2
    48cc:	001e      	movs	r6, r3
    48ce:	42af      	cmp	r7, r5
    48d0:	d829      	bhi.n	4926 <__udivmoddi4+0xa2>
    48d2:	d026      	beq.n	4922 <__udivmoddi4+0x9e>
    48d4:	465b      	mov	r3, fp
    48d6:	1ba4      	subs	r4, r4, r6
    48d8:	41bd      	sbcs	r5, r7
    48da:	2b00      	cmp	r3, #0
    48dc:	da00      	bge.n	48e0 <__udivmoddi4+0x5c>
    48de:	e079      	b.n	49d4 <__udivmoddi4+0x150>
    48e0:	2200      	movs	r2, #0
    48e2:	2300      	movs	r3, #0
    48e4:	9200      	str	r2, [sp, #0]
    48e6:	9301      	str	r3, [sp, #4]
    48e8:	2301      	movs	r3, #1
    48ea:	465a      	mov	r2, fp
    48ec:	4093      	lsls	r3, r2
    48ee:	9301      	str	r3, [sp, #4]
    48f0:	2301      	movs	r3, #1
    48f2:	4642      	mov	r2, r8
    48f4:	4093      	lsls	r3, r2
    48f6:	9300      	str	r3, [sp, #0]
    48f8:	e019      	b.n	492e <__udivmoddi4+0xaa>
    48fa:	4282      	cmp	r2, r0
    48fc:	d9d0      	bls.n	48a0 <__udivmoddi4+0x1c>
    48fe:	2200      	movs	r2, #0
    4900:	2300      	movs	r3, #0
    4902:	9200      	str	r2, [sp, #0]
    4904:	9301      	str	r3, [sp, #4]
    4906:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4908:	2b00      	cmp	r3, #0
    490a:	d001      	beq.n	4910 <__udivmoddi4+0x8c>
    490c:	601c      	str	r4, [r3, #0]
    490e:	605d      	str	r5, [r3, #4]
    4910:	9800      	ldr	r0, [sp, #0]
    4912:	9901      	ldr	r1, [sp, #4]
    4914:	b003      	add	sp, #12
    4916:	bc3c      	pop	{r2, r3, r4, r5}
    4918:	4690      	mov	r8, r2
    491a:	4699      	mov	r9, r3
    491c:	46a2      	mov	sl, r4
    491e:	46ab      	mov	fp, r5
    4920:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4922:	42a3      	cmp	r3, r4
    4924:	d9d6      	bls.n	48d4 <__udivmoddi4+0x50>
    4926:	2200      	movs	r2, #0
    4928:	2300      	movs	r3, #0
    492a:	9200      	str	r2, [sp, #0]
    492c:	9301      	str	r3, [sp, #4]
    492e:	4643      	mov	r3, r8
    4930:	2b00      	cmp	r3, #0
    4932:	d0e8      	beq.n	4906 <__udivmoddi4+0x82>
    4934:	07fb      	lsls	r3, r7, #31
    4936:	0872      	lsrs	r2, r6, #1
    4938:	431a      	orrs	r2, r3
    493a:	4646      	mov	r6, r8
    493c:	087b      	lsrs	r3, r7, #1
    493e:	e00e      	b.n	495e <__udivmoddi4+0xda>
    4940:	42ab      	cmp	r3, r5
    4942:	d101      	bne.n	4948 <__udivmoddi4+0xc4>
    4944:	42a2      	cmp	r2, r4
    4946:	d80c      	bhi.n	4962 <__udivmoddi4+0xde>
    4948:	1aa4      	subs	r4, r4, r2
    494a:	419d      	sbcs	r5, r3
    494c:	2001      	movs	r0, #1
    494e:	1924      	adds	r4, r4, r4
    4950:	416d      	adcs	r5, r5
    4952:	2100      	movs	r1, #0
    4954:	3e01      	subs	r6, #1
    4956:	1824      	adds	r4, r4, r0
    4958:	414d      	adcs	r5, r1
    495a:	2e00      	cmp	r6, #0
    495c:	d006      	beq.n	496c <__udivmoddi4+0xe8>
    495e:	42ab      	cmp	r3, r5
    4960:	d9ee      	bls.n	4940 <__udivmoddi4+0xbc>
    4962:	3e01      	subs	r6, #1
    4964:	1924      	adds	r4, r4, r4
    4966:	416d      	adcs	r5, r5
    4968:	2e00      	cmp	r6, #0
    496a:	d1f8      	bne.n	495e <__udivmoddi4+0xda>
    496c:	465b      	mov	r3, fp
    496e:	9800      	ldr	r0, [sp, #0]
    4970:	9901      	ldr	r1, [sp, #4]
    4972:	1900      	adds	r0, r0, r4
    4974:	4169      	adcs	r1, r5
    4976:	2b00      	cmp	r3, #0
    4978:	db22      	blt.n	49c0 <__udivmoddi4+0x13c>
    497a:	002b      	movs	r3, r5
    497c:	465a      	mov	r2, fp
    497e:	40d3      	lsrs	r3, r2
    4980:	002a      	movs	r2, r5
    4982:	4644      	mov	r4, r8
    4984:	40e2      	lsrs	r2, r4
    4986:	001c      	movs	r4, r3
    4988:	465b      	mov	r3, fp
    498a:	0015      	movs	r5, r2
    498c:	2b00      	cmp	r3, #0
    498e:	db2c      	blt.n	49ea <__udivmoddi4+0x166>
    4990:	0026      	movs	r6, r4
    4992:	409e      	lsls	r6, r3
    4994:	0033      	movs	r3, r6
    4996:	0026      	movs	r6, r4
    4998:	4647      	mov	r7, r8
    499a:	40be      	lsls	r6, r7
    499c:	0032      	movs	r2, r6
    499e:	1a80      	subs	r0, r0, r2
    49a0:	4199      	sbcs	r1, r3
    49a2:	9000      	str	r0, [sp, #0]
    49a4:	9101      	str	r1, [sp, #4]
    49a6:	e7ae      	b.n	4906 <__udivmoddi4+0x82>
    49a8:	4642      	mov	r2, r8
    49aa:	2320      	movs	r3, #32
    49ac:	1a9b      	subs	r3, r3, r2
    49ae:	4652      	mov	r2, sl
    49b0:	40da      	lsrs	r2, r3
    49b2:	4641      	mov	r1, r8
    49b4:	0013      	movs	r3, r2
    49b6:	464a      	mov	r2, r9
    49b8:	408a      	lsls	r2, r1
    49ba:	0017      	movs	r7, r2
    49bc:	431f      	orrs	r7, r3
    49be:	e782      	b.n	48c6 <__udivmoddi4+0x42>
    49c0:	4642      	mov	r2, r8
    49c2:	2320      	movs	r3, #32
    49c4:	1a9b      	subs	r3, r3, r2
    49c6:	002a      	movs	r2, r5
    49c8:	4646      	mov	r6, r8
    49ca:	409a      	lsls	r2, r3
    49cc:	0023      	movs	r3, r4
    49ce:	40f3      	lsrs	r3, r6
    49d0:	4313      	orrs	r3, r2
    49d2:	e7d5      	b.n	4980 <__udivmoddi4+0xfc>
    49d4:	4642      	mov	r2, r8
    49d6:	2320      	movs	r3, #32
    49d8:	2100      	movs	r1, #0
    49da:	1a9b      	subs	r3, r3, r2
    49dc:	2200      	movs	r2, #0
    49de:	9100      	str	r1, [sp, #0]
    49e0:	9201      	str	r2, [sp, #4]
    49e2:	2201      	movs	r2, #1
    49e4:	40da      	lsrs	r2, r3
    49e6:	9201      	str	r2, [sp, #4]
    49e8:	e782      	b.n	48f0 <__udivmoddi4+0x6c>
    49ea:	4642      	mov	r2, r8
    49ec:	2320      	movs	r3, #32
    49ee:	0026      	movs	r6, r4
    49f0:	1a9b      	subs	r3, r3, r2
    49f2:	40de      	lsrs	r6, r3
    49f4:	002f      	movs	r7, r5
    49f6:	46b4      	mov	ip, r6
    49f8:	4097      	lsls	r7, r2
    49fa:	4666      	mov	r6, ip
    49fc:	003b      	movs	r3, r7
    49fe:	4333      	orrs	r3, r6
    4a00:	e7c9      	b.n	4996 <__udivmoddi4+0x112>
    4a02:	46c0      	nop			; (mov r8, r8)

00004a04 <__clzdi2>:
    4a04:	b510      	push	{r4, lr}
    4a06:	2900      	cmp	r1, #0
    4a08:	d103      	bne.n	4a12 <__clzdi2+0xe>
    4a0a:	f000 f807 	bl	4a1c <__clzsi2>
    4a0e:	3020      	adds	r0, #32
    4a10:	e002      	b.n	4a18 <__clzdi2+0x14>
    4a12:	1c08      	adds	r0, r1, #0
    4a14:	f000 f802 	bl	4a1c <__clzsi2>
    4a18:	bd10      	pop	{r4, pc}
    4a1a:	46c0      	nop			; (mov r8, r8)

00004a1c <__clzsi2>:
    4a1c:	211c      	movs	r1, #28
    4a1e:	2301      	movs	r3, #1
    4a20:	041b      	lsls	r3, r3, #16
    4a22:	4298      	cmp	r0, r3
    4a24:	d301      	bcc.n	4a2a <__clzsi2+0xe>
    4a26:	0c00      	lsrs	r0, r0, #16
    4a28:	3910      	subs	r1, #16
    4a2a:	0a1b      	lsrs	r3, r3, #8
    4a2c:	4298      	cmp	r0, r3
    4a2e:	d301      	bcc.n	4a34 <__clzsi2+0x18>
    4a30:	0a00      	lsrs	r0, r0, #8
    4a32:	3908      	subs	r1, #8
    4a34:	091b      	lsrs	r3, r3, #4
    4a36:	4298      	cmp	r0, r3
    4a38:	d301      	bcc.n	4a3e <__clzsi2+0x22>
    4a3a:	0900      	lsrs	r0, r0, #4
    4a3c:	3904      	subs	r1, #4
    4a3e:	a202      	add	r2, pc, #8	; (adr r2, 4a48 <__clzsi2+0x2c>)
    4a40:	5c10      	ldrb	r0, [r2, r0]
    4a42:	1840      	adds	r0, r0, r1
    4a44:	4770      	bx	lr
    4a46:	46c0      	nop			; (mov r8, r8)
    4a48:	02020304 	.word	0x02020304
    4a4c:	01010101 	.word	0x01010101
	...

00004a58 <atexit>:
    4a58:	b510      	push	{r4, lr}
    4a5a:	0001      	movs	r1, r0
    4a5c:	2300      	movs	r3, #0
    4a5e:	2200      	movs	r2, #0
    4a60:	2000      	movs	r0, #0
    4a62:	f000 f8ed 	bl	4c40 <__register_exitproc>
    4a66:	bd10      	pop	{r4, pc}

00004a68 <exit>:
    4a68:	b510      	push	{r4, lr}
    4a6a:	2100      	movs	r1, #0
    4a6c:	0004      	movs	r4, r0
    4a6e:	f000 f95d 	bl	4d2c <__call_exitprocs>
    4a72:	4b04      	ldr	r3, [pc, #16]	; (4a84 <exit+0x1c>)
    4a74:	6818      	ldr	r0, [r3, #0]
    4a76:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    4a78:	2b00      	cmp	r3, #0
    4a7a:	d000      	beq.n	4a7e <exit+0x16>
    4a7c:	4798      	blx	r3
    4a7e:	0020      	movs	r0, r4
    4a80:	f7fb fffa 	bl	a78 <_exit>
    4a84:	000090ac 	.word	0x000090ac

00004a88 <__libc_fini_array>:
    4a88:	b570      	push	{r4, r5, r6, lr}
    4a8a:	4b09      	ldr	r3, [pc, #36]	; (4ab0 <__libc_fini_array+0x28>)
    4a8c:	4c09      	ldr	r4, [pc, #36]	; (4ab4 <__libc_fini_array+0x2c>)
    4a8e:	1ae4      	subs	r4, r4, r3
    4a90:	10a4      	asrs	r4, r4, #2
    4a92:	d009      	beq.n	4aa8 <__libc_fini_array+0x20>
    4a94:	4a08      	ldr	r2, [pc, #32]	; (4ab8 <__libc_fini_array+0x30>)
    4a96:	18a5      	adds	r5, r4, r2
    4a98:	00ad      	lsls	r5, r5, #2
    4a9a:	18ed      	adds	r5, r5, r3
    4a9c:	682b      	ldr	r3, [r5, #0]
    4a9e:	3c01      	subs	r4, #1
    4aa0:	4798      	blx	r3
    4aa2:	3d04      	subs	r5, #4
    4aa4:	2c00      	cmp	r4, #0
    4aa6:	d1f9      	bne.n	4a9c <__libc_fini_array+0x14>
    4aa8:	f7fc f932 	bl	d10 <_fini>
    4aac:	bd70      	pop	{r4, r5, r6, pc}
    4aae:	46c0      	nop			; (mov r8, r8)
	...
    4ab8:	3fffffff 	.word	0x3fffffff

00004abc <__libc_init_array>:
    4abc:	b570      	push	{r4, r5, r6, lr}
    4abe:	4e0d      	ldr	r6, [pc, #52]	; (4af4 <__libc_init_array+0x38>)
    4ac0:	4d0d      	ldr	r5, [pc, #52]	; (4af8 <__libc_init_array+0x3c>)
    4ac2:	2400      	movs	r4, #0
    4ac4:	1bad      	subs	r5, r5, r6
    4ac6:	10ad      	asrs	r5, r5, #2
    4ac8:	d005      	beq.n	4ad6 <__libc_init_array+0x1a>
    4aca:	00a3      	lsls	r3, r4, #2
    4acc:	58f3      	ldr	r3, [r6, r3]
    4ace:	3401      	adds	r4, #1
    4ad0:	4798      	blx	r3
    4ad2:	42a5      	cmp	r5, r4
    4ad4:	d1f9      	bne.n	4aca <__libc_init_array+0xe>
    4ad6:	f7fc f915 	bl	d04 <_init>
    4ada:	4e08      	ldr	r6, [pc, #32]	; (4afc <__libc_init_array+0x40>)
    4adc:	4d08      	ldr	r5, [pc, #32]	; (4b00 <__libc_init_array+0x44>)
    4ade:	2400      	movs	r4, #0
    4ae0:	1bad      	subs	r5, r5, r6
    4ae2:	10ad      	asrs	r5, r5, #2
    4ae4:	d005      	beq.n	4af2 <__libc_init_array+0x36>
    4ae6:	00a3      	lsls	r3, r4, #2
    4ae8:	58f3      	ldr	r3, [r6, r3]
    4aea:	3401      	adds	r4, #1
    4aec:	4798      	blx	r3
    4aee:	42a5      	cmp	r5, r4
    4af0:	d1f9      	bne.n	4ae6 <__libc_init_array+0x2a>
    4af2:	bd70      	pop	{r4, r5, r6, pc}
	...

00004b04 <memset>:
    4b04:	b570      	push	{r4, r5, r6, lr}
    4b06:	0783      	lsls	r3, r0, #30
    4b08:	d03f      	beq.n	4b8a <memset+0x86>
    4b0a:	1e54      	subs	r4, r2, #1
    4b0c:	2a00      	cmp	r2, #0
    4b0e:	d03b      	beq.n	4b88 <memset+0x84>
    4b10:	b2ce      	uxtb	r6, r1
    4b12:	0003      	movs	r3, r0
    4b14:	2503      	movs	r5, #3
    4b16:	e003      	b.n	4b20 <memset+0x1c>
    4b18:	1e62      	subs	r2, r4, #1
    4b1a:	2c00      	cmp	r4, #0
    4b1c:	d034      	beq.n	4b88 <memset+0x84>
    4b1e:	0014      	movs	r4, r2
    4b20:	3301      	adds	r3, #1
    4b22:	1e5a      	subs	r2, r3, #1
    4b24:	7016      	strb	r6, [r2, #0]
    4b26:	422b      	tst	r3, r5
    4b28:	d1f6      	bne.n	4b18 <memset+0x14>
    4b2a:	2c03      	cmp	r4, #3
    4b2c:	d924      	bls.n	4b78 <memset+0x74>
    4b2e:	25ff      	movs	r5, #255	; 0xff
    4b30:	400d      	ands	r5, r1
    4b32:	022a      	lsls	r2, r5, #8
    4b34:	4315      	orrs	r5, r2
    4b36:	042a      	lsls	r2, r5, #16
    4b38:	4315      	orrs	r5, r2
    4b3a:	2c0f      	cmp	r4, #15
    4b3c:	d911      	bls.n	4b62 <memset+0x5e>
    4b3e:	0026      	movs	r6, r4
    4b40:	3e10      	subs	r6, #16
    4b42:	0936      	lsrs	r6, r6, #4
    4b44:	3601      	adds	r6, #1
    4b46:	0136      	lsls	r6, r6, #4
    4b48:	001a      	movs	r2, r3
    4b4a:	199b      	adds	r3, r3, r6
    4b4c:	6015      	str	r5, [r2, #0]
    4b4e:	6055      	str	r5, [r2, #4]
    4b50:	6095      	str	r5, [r2, #8]
    4b52:	60d5      	str	r5, [r2, #12]
    4b54:	3210      	adds	r2, #16
    4b56:	4293      	cmp	r3, r2
    4b58:	d1f8      	bne.n	4b4c <memset+0x48>
    4b5a:	220f      	movs	r2, #15
    4b5c:	4014      	ands	r4, r2
    4b5e:	2c03      	cmp	r4, #3
    4b60:	d90a      	bls.n	4b78 <memset+0x74>
    4b62:	1f26      	subs	r6, r4, #4
    4b64:	08b6      	lsrs	r6, r6, #2
    4b66:	3601      	adds	r6, #1
    4b68:	00b6      	lsls	r6, r6, #2
    4b6a:	001a      	movs	r2, r3
    4b6c:	199b      	adds	r3, r3, r6
    4b6e:	c220      	stmia	r2!, {r5}
    4b70:	4293      	cmp	r3, r2
    4b72:	d1fc      	bne.n	4b6e <memset+0x6a>
    4b74:	2203      	movs	r2, #3
    4b76:	4014      	ands	r4, r2
    4b78:	2c00      	cmp	r4, #0
    4b7a:	d005      	beq.n	4b88 <memset+0x84>
    4b7c:	b2c9      	uxtb	r1, r1
    4b7e:	191c      	adds	r4, r3, r4
    4b80:	7019      	strb	r1, [r3, #0]
    4b82:	3301      	adds	r3, #1
    4b84:	429c      	cmp	r4, r3
    4b86:	d1fb      	bne.n	4b80 <memset+0x7c>
    4b88:	bd70      	pop	{r4, r5, r6, pc}
    4b8a:	0014      	movs	r4, r2
    4b8c:	0003      	movs	r3, r0
    4b8e:	e7cc      	b.n	4b2a <memset+0x26>

00004b90 <cleanup_glue>:
    4b90:	b570      	push	{r4, r5, r6, lr}
    4b92:	000c      	movs	r4, r1
    4b94:	6809      	ldr	r1, [r1, #0]
    4b96:	0005      	movs	r5, r0
    4b98:	2900      	cmp	r1, #0
    4b9a:	d001      	beq.n	4ba0 <cleanup_glue+0x10>
    4b9c:	f7ff fff8 	bl	4b90 <cleanup_glue>
    4ba0:	0028      	movs	r0, r5
    4ba2:	0021      	movs	r1, r4
    4ba4:	f000 f990 	bl	4ec8 <_free_r>
    4ba8:	bd70      	pop	{r4, r5, r6, pc}
    4baa:	46c0      	nop			; (mov r8, r8)

00004bac <_reclaim_reent>:
    4bac:	4b23      	ldr	r3, [pc, #140]	; (4c3c <_reclaim_reent+0x90>)
    4bae:	b570      	push	{r4, r5, r6, lr}
    4bb0:	681b      	ldr	r3, [r3, #0]
    4bb2:	0005      	movs	r5, r0
    4bb4:	4283      	cmp	r3, r0
    4bb6:	d034      	beq.n	4c22 <_reclaim_reent+0x76>
    4bb8:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    4bba:	2b00      	cmp	r3, #0
    4bbc:	d011      	beq.n	4be2 <_reclaim_reent+0x36>
    4bbe:	2600      	movs	r6, #0
    4bc0:	5999      	ldr	r1, [r3, r6]
    4bc2:	2900      	cmp	r1, #0
    4bc4:	d006      	beq.n	4bd4 <_reclaim_reent+0x28>
    4bc6:	680c      	ldr	r4, [r1, #0]
    4bc8:	0028      	movs	r0, r5
    4bca:	f000 f97d 	bl	4ec8 <_free_r>
    4bce:	1e21      	subs	r1, r4, #0
    4bd0:	d1f9      	bne.n	4bc6 <_reclaim_reent+0x1a>
    4bd2:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    4bd4:	3604      	adds	r6, #4
    4bd6:	2e80      	cmp	r6, #128	; 0x80
    4bd8:	d1f2      	bne.n	4bc0 <_reclaim_reent+0x14>
    4bda:	0019      	movs	r1, r3
    4bdc:	0028      	movs	r0, r5
    4bde:	f000 f973 	bl	4ec8 <_free_r>
    4be2:	6c29      	ldr	r1, [r5, #64]	; 0x40
    4be4:	2900      	cmp	r1, #0
    4be6:	d002      	beq.n	4bee <_reclaim_reent+0x42>
    4be8:	0028      	movs	r0, r5
    4bea:	f000 f96d 	bl	4ec8 <_free_r>
    4bee:	23a4      	movs	r3, #164	; 0xa4
    4bf0:	005b      	lsls	r3, r3, #1
    4bf2:	58e9      	ldr	r1, [r5, r3]
    4bf4:	2900      	cmp	r1, #0
    4bf6:	d00b      	beq.n	4c10 <_reclaim_reent+0x64>
    4bf8:	002e      	movs	r6, r5
    4bfa:	364d      	adds	r6, #77	; 0x4d
    4bfc:	36ff      	adds	r6, #255	; 0xff
    4bfe:	42b1      	cmp	r1, r6
    4c00:	d006      	beq.n	4c10 <_reclaim_reent+0x64>
    4c02:	680c      	ldr	r4, [r1, #0]
    4c04:	0028      	movs	r0, r5
    4c06:	f000 f95f 	bl	4ec8 <_free_r>
    4c0a:	0021      	movs	r1, r4
    4c0c:	42a6      	cmp	r6, r4
    4c0e:	d1f8      	bne.n	4c02 <_reclaim_reent+0x56>
    4c10:	6d69      	ldr	r1, [r5, #84]	; 0x54
    4c12:	2900      	cmp	r1, #0
    4c14:	d002      	beq.n	4c1c <_reclaim_reent+0x70>
    4c16:	0028      	movs	r0, r5
    4c18:	f000 f956 	bl	4ec8 <_free_r>
    4c1c:	6bab      	ldr	r3, [r5, #56]	; 0x38
    4c1e:	2b00      	cmp	r3, #0
    4c20:	d100      	bne.n	4c24 <_reclaim_reent+0x78>
    4c22:	bd70      	pop	{r4, r5, r6, pc}
    4c24:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    4c26:	0028      	movs	r0, r5
    4c28:	4798      	blx	r3
    4c2a:	23b8      	movs	r3, #184	; 0xb8
    4c2c:	009b      	lsls	r3, r3, #2
    4c2e:	58e9      	ldr	r1, [r5, r3]
    4c30:	2900      	cmp	r1, #0
    4c32:	d0f6      	beq.n	4c22 <_reclaim_reent+0x76>
    4c34:	0028      	movs	r0, r5
    4c36:	f7ff ffab 	bl	4b90 <cleanup_glue>
    4c3a:	e7f2      	b.n	4c22 <_reclaim_reent+0x76>
    4c3c:	20000440 	.word	0x20000440

00004c40 <__register_exitproc>:
    4c40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    4c42:	4644      	mov	r4, r8
    4c44:	465f      	mov	r7, fp
    4c46:	4656      	mov	r6, sl
    4c48:	464d      	mov	r5, r9
    4c4a:	469b      	mov	fp, r3
    4c4c:	4b2f      	ldr	r3, [pc, #188]	; (4d0c <__register_exitproc+0xcc>)
    4c4e:	b4f0      	push	{r4, r5, r6, r7}
    4c50:	681c      	ldr	r4, [r3, #0]
    4c52:	23a4      	movs	r3, #164	; 0xa4
    4c54:	005b      	lsls	r3, r3, #1
    4c56:	0005      	movs	r5, r0
    4c58:	58e0      	ldr	r0, [r4, r3]
    4c5a:	000e      	movs	r6, r1
    4c5c:	4690      	mov	r8, r2
    4c5e:	2800      	cmp	r0, #0
    4c60:	d04b      	beq.n	4cfa <__register_exitproc+0xba>
    4c62:	6843      	ldr	r3, [r0, #4]
    4c64:	2b1f      	cmp	r3, #31
    4c66:	dc0d      	bgt.n	4c84 <__register_exitproc+0x44>
    4c68:	1c5c      	adds	r4, r3, #1
    4c6a:	2d00      	cmp	r5, #0
    4c6c:	d121      	bne.n	4cb2 <__register_exitproc+0x72>
    4c6e:	3302      	adds	r3, #2
    4c70:	009b      	lsls	r3, r3, #2
    4c72:	6044      	str	r4, [r0, #4]
    4c74:	501e      	str	r6, [r3, r0]
    4c76:	2000      	movs	r0, #0
    4c78:	bc3c      	pop	{r2, r3, r4, r5}
    4c7a:	4690      	mov	r8, r2
    4c7c:	4699      	mov	r9, r3
    4c7e:	46a2      	mov	sl, r4
    4c80:	46ab      	mov	fp, r5
    4c82:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    4c84:	4b22      	ldr	r3, [pc, #136]	; (4d10 <__register_exitproc+0xd0>)
    4c86:	2b00      	cmp	r3, #0
    4c88:	d03c      	beq.n	4d04 <__register_exitproc+0xc4>
    4c8a:	20c8      	movs	r0, #200	; 0xc8
    4c8c:	0040      	lsls	r0, r0, #1
    4c8e:	e000      	b.n	4c92 <__register_exitproc+0x52>
    4c90:	bf00      	nop
    4c92:	2800      	cmp	r0, #0
    4c94:	d036      	beq.n	4d04 <__register_exitproc+0xc4>
    4c96:	22a4      	movs	r2, #164	; 0xa4
    4c98:	2300      	movs	r3, #0
    4c9a:	0052      	lsls	r2, r2, #1
    4c9c:	58a1      	ldr	r1, [r4, r2]
    4c9e:	6043      	str	r3, [r0, #4]
    4ca0:	6001      	str	r1, [r0, #0]
    4ca2:	50a0      	str	r0, [r4, r2]
    4ca4:	3240      	adds	r2, #64	; 0x40
    4ca6:	5083      	str	r3, [r0, r2]
    4ca8:	3204      	adds	r2, #4
    4caa:	5083      	str	r3, [r0, r2]
    4cac:	2401      	movs	r4, #1
    4cae:	2d00      	cmp	r5, #0
    4cb0:	d0dd      	beq.n	4c6e <__register_exitproc+0x2e>
    4cb2:	009a      	lsls	r2, r3, #2
    4cb4:	4691      	mov	r9, r2
    4cb6:	4481      	add	r9, r0
    4cb8:	4642      	mov	r2, r8
    4cba:	2188      	movs	r1, #136	; 0x88
    4cbc:	464f      	mov	r7, r9
    4cbe:	507a      	str	r2, [r7, r1]
    4cc0:	22c4      	movs	r2, #196	; 0xc4
    4cc2:	0052      	lsls	r2, r2, #1
    4cc4:	4690      	mov	r8, r2
    4cc6:	4480      	add	r8, r0
    4cc8:	4642      	mov	r2, r8
    4cca:	3987      	subs	r1, #135	; 0x87
    4ccc:	4099      	lsls	r1, r3
    4cce:	6812      	ldr	r2, [r2, #0]
    4cd0:	468a      	mov	sl, r1
    4cd2:	430a      	orrs	r2, r1
    4cd4:	4694      	mov	ip, r2
    4cd6:	4642      	mov	r2, r8
    4cd8:	4661      	mov	r1, ip
    4cda:	6011      	str	r1, [r2, #0]
    4cdc:	2284      	movs	r2, #132	; 0x84
    4cde:	4649      	mov	r1, r9
    4ce0:	465f      	mov	r7, fp
    4ce2:	0052      	lsls	r2, r2, #1
    4ce4:	508f      	str	r7, [r1, r2]
    4ce6:	2d02      	cmp	r5, #2
    4ce8:	d1c1      	bne.n	4c6e <__register_exitproc+0x2e>
    4cea:	0002      	movs	r2, r0
    4cec:	4655      	mov	r5, sl
    4cee:	328d      	adds	r2, #141	; 0x8d
    4cf0:	32ff      	adds	r2, #255	; 0xff
    4cf2:	6811      	ldr	r1, [r2, #0]
    4cf4:	430d      	orrs	r5, r1
    4cf6:	6015      	str	r5, [r2, #0]
    4cf8:	e7b9      	b.n	4c6e <__register_exitproc+0x2e>
    4cfa:	0020      	movs	r0, r4
    4cfc:	304d      	adds	r0, #77	; 0x4d
    4cfe:	30ff      	adds	r0, #255	; 0xff
    4d00:	50e0      	str	r0, [r4, r3]
    4d02:	e7ae      	b.n	4c62 <__register_exitproc+0x22>
    4d04:	2001      	movs	r0, #1
    4d06:	4240      	negs	r0, r0
    4d08:	e7b6      	b.n	4c78 <__register_exitproc+0x38>
    4d0a:	46c0      	nop			; (mov r8, r8)
    4d0c:	000090ac 	.word	0x000090ac
    4d10:	00000000 	.word	0x00000000

00004d14 <register_fini>:
    4d14:	4b03      	ldr	r3, [pc, #12]	; (4d24 <register_fini+0x10>)
    4d16:	b510      	push	{r4, lr}
    4d18:	2b00      	cmp	r3, #0
    4d1a:	d002      	beq.n	4d22 <register_fini+0xe>
    4d1c:	4802      	ldr	r0, [pc, #8]	; (4d28 <register_fini+0x14>)
    4d1e:	f7ff fe9b 	bl	4a58 <atexit>
    4d22:	bd10      	pop	{r4, pc}
    4d24:	00000000 	.word	0x00000000
    4d28:	00004a89 	.word	0x00004a89

00004d2c <__call_exitprocs>:
    4d2c:	b5f0      	push	{r4, r5, r6, r7, lr}
    4d2e:	465f      	mov	r7, fp
    4d30:	4656      	mov	r6, sl
    4d32:	464d      	mov	r5, r9
    4d34:	4644      	mov	r4, r8
    4d36:	b4f0      	push	{r4, r5, r6, r7}
    4d38:	000f      	movs	r7, r1
    4d3a:	4b39      	ldr	r3, [pc, #228]	; (4e20 <__call_exitprocs+0xf4>)
    4d3c:	b085      	sub	sp, #20
    4d3e:	681b      	ldr	r3, [r3, #0]
    4d40:	9001      	str	r0, [sp, #4]
    4d42:	9302      	str	r3, [sp, #8]
    4d44:	3349      	adds	r3, #73	; 0x49
    4d46:	33ff      	adds	r3, #255	; 0xff
    4d48:	9303      	str	r3, [sp, #12]
    4d4a:	22a4      	movs	r2, #164	; 0xa4
    4d4c:	9b02      	ldr	r3, [sp, #8]
    4d4e:	0052      	lsls	r2, r2, #1
    4d50:	589e      	ldr	r6, [r3, r2]
    4d52:	2e00      	cmp	r6, #0
    4d54:	d04e      	beq.n	4df4 <__call_exitprocs+0xc8>
    4d56:	9b03      	ldr	r3, [sp, #12]
    4d58:	4699      	mov	r9, r3
    4d5a:	23c4      	movs	r3, #196	; 0xc4
    4d5c:	005b      	lsls	r3, r3, #1
    4d5e:	4698      	mov	r8, r3
    4d60:	3304      	adds	r3, #4
    4d62:	469a      	mov	sl, r3
    4d64:	6874      	ldr	r4, [r6, #4]
    4d66:	44b0      	add	r8, r6
    4d68:	00a5      	lsls	r5, r4, #2
    4d6a:	1975      	adds	r5, r6, r5
    4d6c:	44b2      	add	sl, r6
    4d6e:	3c01      	subs	r4, #1
    4d70:	d508      	bpl.n	4d84 <__call_exitprocs+0x58>
    4d72:	e02d      	b.n	4dd0 <__call_exitprocs+0xa4>
    4d74:	1d6b      	adds	r3, r5, #5
    4d76:	33ff      	adds	r3, #255	; 0xff
    4d78:	681b      	ldr	r3, [r3, #0]
    4d7a:	429f      	cmp	r7, r3
    4d7c:	d004      	beq.n	4d88 <__call_exitprocs+0x5c>
    4d7e:	3d04      	subs	r5, #4
    4d80:	3c01      	subs	r4, #1
    4d82:	d325      	bcc.n	4dd0 <__call_exitprocs+0xa4>
    4d84:	2f00      	cmp	r7, #0
    4d86:	d1f5      	bne.n	4d74 <__call_exitprocs+0x48>
    4d88:	6873      	ldr	r3, [r6, #4]
    4d8a:	686a      	ldr	r2, [r5, #4]
    4d8c:	3b01      	subs	r3, #1
    4d8e:	42a3      	cmp	r3, r4
    4d90:	d039      	beq.n	4e06 <__call_exitprocs+0xda>
    4d92:	2300      	movs	r3, #0
    4d94:	606b      	str	r3, [r5, #4]
    4d96:	2a00      	cmp	r2, #0
    4d98:	d0f1      	beq.n	4d7e <__call_exitprocs+0x52>
    4d9a:	6873      	ldr	r3, [r6, #4]
    4d9c:	4641      	mov	r1, r8
    4d9e:	469b      	mov	fp, r3
    4da0:	2301      	movs	r3, #1
    4da2:	40a3      	lsls	r3, r4
    4da4:	6809      	ldr	r1, [r1, #0]
    4da6:	4219      	tst	r1, r3
    4da8:	d02b      	beq.n	4e02 <__call_exitprocs+0xd6>
    4daa:	4651      	mov	r1, sl
    4dac:	6809      	ldr	r1, [r1, #0]
    4dae:	4219      	tst	r1, r3
    4db0:	d12b      	bne.n	4e0a <__call_exitprocs+0xde>
    4db2:	002b      	movs	r3, r5
    4db4:	3384      	adds	r3, #132	; 0x84
    4db6:	6819      	ldr	r1, [r3, #0]
    4db8:	9801      	ldr	r0, [sp, #4]
    4dba:	4790      	blx	r2
    4dbc:	6873      	ldr	r3, [r6, #4]
    4dbe:	455b      	cmp	r3, fp
    4dc0:	d1c3      	bne.n	4d4a <__call_exitprocs+0x1e>
    4dc2:	464b      	mov	r3, r9
    4dc4:	681b      	ldr	r3, [r3, #0]
    4dc6:	42b3      	cmp	r3, r6
    4dc8:	d1bf      	bne.n	4d4a <__call_exitprocs+0x1e>
    4dca:	3d04      	subs	r5, #4
    4dcc:	3c01      	subs	r4, #1
    4dce:	d2d9      	bcs.n	4d84 <__call_exitprocs+0x58>
    4dd0:	4b14      	ldr	r3, [pc, #80]	; (4e24 <__call_exitprocs+0xf8>)
    4dd2:	2b00      	cmp	r3, #0
    4dd4:	d00e      	beq.n	4df4 <__call_exitprocs+0xc8>
    4dd6:	6873      	ldr	r3, [r6, #4]
    4dd8:	2b00      	cmp	r3, #0
    4dda:	d11b      	bne.n	4e14 <__call_exitprocs+0xe8>
    4ddc:	6833      	ldr	r3, [r6, #0]
    4dde:	2b00      	cmp	r3, #0
    4de0:	d01c      	beq.n	4e1c <__call_exitprocs+0xf0>
    4de2:	464a      	mov	r2, r9
    4de4:	0030      	movs	r0, r6
    4de6:	6013      	str	r3, [r2, #0]
    4de8:	e000      	b.n	4dec <__call_exitprocs+0xc0>
    4dea:	bf00      	nop
    4dec:	464b      	mov	r3, r9
    4dee:	681e      	ldr	r6, [r3, #0]
    4df0:	2e00      	cmp	r6, #0
    4df2:	d1b2      	bne.n	4d5a <__call_exitprocs+0x2e>
    4df4:	b005      	add	sp, #20
    4df6:	bc3c      	pop	{r2, r3, r4, r5}
    4df8:	4690      	mov	r8, r2
    4dfa:	4699      	mov	r9, r3
    4dfc:	46a2      	mov	sl, r4
    4dfe:	46ab      	mov	fp, r5
    4e00:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4e02:	4790      	blx	r2
    4e04:	e7da      	b.n	4dbc <__call_exitprocs+0x90>
    4e06:	6074      	str	r4, [r6, #4]
    4e08:	e7c5      	b.n	4d96 <__call_exitprocs+0x6a>
    4e0a:	002b      	movs	r3, r5
    4e0c:	3384      	adds	r3, #132	; 0x84
    4e0e:	6818      	ldr	r0, [r3, #0]
    4e10:	4790      	blx	r2
    4e12:	e7d3      	b.n	4dbc <__call_exitprocs+0x90>
    4e14:	6833      	ldr	r3, [r6, #0]
    4e16:	46b1      	mov	r9, r6
    4e18:	001e      	movs	r6, r3
    4e1a:	e7e9      	b.n	4df0 <__call_exitprocs+0xc4>
    4e1c:	2300      	movs	r3, #0
    4e1e:	e7fa      	b.n	4e16 <__call_exitprocs+0xea>
    4e20:	000090ac 	.word	0x000090ac
    4e24:	00000000 	.word	0x00000000

00004e28 <_malloc_trim_r>:
    4e28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    4e2a:	000c      	movs	r4, r1
    4e2c:	0006      	movs	r6, r0
    4e2e:	f000 fbd7 	bl	55e0 <__malloc_lock>
    4e32:	4f20      	ldr	r7, [pc, #128]	; (4eb4 <_malloc_trim_r+0x8c>)
    4e34:	68bb      	ldr	r3, [r7, #8]
    4e36:	685d      	ldr	r5, [r3, #4]
    4e38:	2303      	movs	r3, #3
    4e3a:	439d      	bics	r5, r3
    4e3c:	4b1e      	ldr	r3, [pc, #120]	; (4eb8 <_malloc_trim_r+0x90>)
    4e3e:	1b2c      	subs	r4, r5, r4
    4e40:	469c      	mov	ip, r3
    4e42:	4464      	add	r4, ip
    4e44:	0b24      	lsrs	r4, r4, #12
    4e46:	4b1d      	ldr	r3, [pc, #116]	; (4ebc <_malloc_trim_r+0x94>)
    4e48:	3c01      	subs	r4, #1
    4e4a:	0324      	lsls	r4, r4, #12
    4e4c:	429c      	cmp	r4, r3
    4e4e:	dd07      	ble.n	4e60 <_malloc_trim_r+0x38>
    4e50:	2100      	movs	r1, #0
    4e52:	0030      	movs	r0, r6
    4e54:	f000 fbc8 	bl	55e8 <_sbrk_r>
    4e58:	68bb      	ldr	r3, [r7, #8]
    4e5a:	195b      	adds	r3, r3, r5
    4e5c:	4298      	cmp	r0, r3
    4e5e:	d004      	beq.n	4e6a <_malloc_trim_r+0x42>
    4e60:	0030      	movs	r0, r6
    4e62:	f000 fbbf 	bl	55e4 <__malloc_unlock>
    4e66:	2000      	movs	r0, #0
    4e68:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    4e6a:	4261      	negs	r1, r4
    4e6c:	0030      	movs	r0, r6
    4e6e:	f000 fbbb 	bl	55e8 <_sbrk_r>
    4e72:	1c43      	adds	r3, r0, #1
    4e74:	d00d      	beq.n	4e92 <_malloc_trim_r+0x6a>
    4e76:	2301      	movs	r3, #1
    4e78:	1b2d      	subs	r5, r5, r4
    4e7a:	68ba      	ldr	r2, [r7, #8]
    4e7c:	431d      	orrs	r5, r3
    4e7e:	4b10      	ldr	r3, [pc, #64]	; (4ec0 <_malloc_trim_r+0x98>)
    4e80:	6055      	str	r5, [r2, #4]
    4e82:	681a      	ldr	r2, [r3, #0]
    4e84:	0030      	movs	r0, r6
    4e86:	1b14      	subs	r4, r2, r4
    4e88:	601c      	str	r4, [r3, #0]
    4e8a:	f000 fbab 	bl	55e4 <__malloc_unlock>
    4e8e:	2001      	movs	r0, #1
    4e90:	e7ea      	b.n	4e68 <_malloc_trim_r+0x40>
    4e92:	2100      	movs	r1, #0
    4e94:	0030      	movs	r0, r6
    4e96:	f000 fba7 	bl	55e8 <_sbrk_r>
    4e9a:	68bb      	ldr	r3, [r7, #8]
    4e9c:	1ac2      	subs	r2, r0, r3
    4e9e:	2a0f      	cmp	r2, #15
    4ea0:	ddde      	ble.n	4e60 <_malloc_trim_r+0x38>
    4ea2:	4908      	ldr	r1, [pc, #32]	; (4ec4 <_malloc_trim_r+0x9c>)
    4ea4:	6809      	ldr	r1, [r1, #0]
    4ea6:	1a40      	subs	r0, r0, r1
    4ea8:	4905      	ldr	r1, [pc, #20]	; (4ec0 <_malloc_trim_r+0x98>)
    4eaa:	6008      	str	r0, [r1, #0]
    4eac:	2101      	movs	r1, #1
    4eae:	430a      	orrs	r2, r1
    4eb0:	605a      	str	r2, [r3, #4]
    4eb2:	e7d5      	b.n	4e60 <_malloc_trim_r+0x38>
    4eb4:	20000444 	.word	0x20000444
    4eb8:	00000fef 	.word	0x00000fef
    4ebc:	00000fff 	.word	0x00000fff
    4ec0:	20006048 	.word	0x20006048
    4ec4:	20000850 	.word	0x20000850

00004ec8 <_free_r>:
    4ec8:	b5f0      	push	{r4, r5, r6, r7, lr}
    4eca:	4647      	mov	r7, r8
    4ecc:	0005      	movs	r5, r0
    4ece:	b480      	push	{r7}
    4ed0:	1e0c      	subs	r4, r1, #0
    4ed2:	d03e      	beq.n	4f52 <_free_r+0x8a>
    4ed4:	f000 fb84 	bl	55e0 <__malloc_lock>
    4ed8:	2301      	movs	r3, #1
    4eda:	0021      	movs	r1, r4
    4edc:	4698      	mov	r8, r3
    4ede:	3908      	subs	r1, #8
    4ee0:	684e      	ldr	r6, [r1, #4]
    4ee2:	4642      	mov	r2, r8
    4ee4:	0033      	movs	r3, r6
    4ee6:	2003      	movs	r0, #3
    4ee8:	4393      	bics	r3, r2
    4eea:	18cc      	adds	r4, r1, r3
    4eec:	6862      	ldr	r2, [r4, #4]
    4eee:	4382      	bics	r2, r0
    4ef0:	4860      	ldr	r0, [pc, #384]	; (5074 <_free_r+0x1ac>)
    4ef2:	6887      	ldr	r7, [r0, #8]
    4ef4:	42bc      	cmp	r4, r7
    4ef6:	d05a      	beq.n	4fae <_free_r+0xe6>
    4ef8:	4647      	mov	r7, r8
    4efa:	6062      	str	r2, [r4, #4]
    4efc:	4237      	tst	r7, r6
    4efe:	d10b      	bne.n	4f18 <_free_r+0x50>
    4f00:	2708      	movs	r7, #8
    4f02:	46bc      	mov	ip, r7
    4f04:	680e      	ldr	r6, [r1, #0]
    4f06:	4484      	add	ip, r0
    4f08:	1b89      	subs	r1, r1, r6
    4f0a:	199b      	adds	r3, r3, r6
    4f0c:	688e      	ldr	r6, [r1, #8]
    4f0e:	4566      	cmp	r6, ip
    4f10:	d066      	beq.n	4fe0 <_free_r+0x118>
    4f12:	68cf      	ldr	r7, [r1, #12]
    4f14:	60f7      	str	r7, [r6, #12]
    4f16:	60be      	str	r6, [r7, #8]
    4f18:	2601      	movs	r6, #1
    4f1a:	18a7      	adds	r7, r4, r2
    4f1c:	687f      	ldr	r7, [r7, #4]
    4f1e:	4237      	tst	r7, r6
    4f20:	d036      	beq.n	4f90 <_free_r+0xc8>
    4f22:	4a55      	ldr	r2, [pc, #340]	; (5078 <_free_r+0x1b0>)
    4f24:	431e      	orrs	r6, r3
    4f26:	604e      	str	r6, [r1, #4]
    4f28:	50cb      	str	r3, [r1, r3]
    4f2a:	4293      	cmp	r3, r2
    4f2c:	d814      	bhi.n	4f58 <_free_r+0x90>
    4f2e:	08db      	lsrs	r3, r3, #3
    4f30:	3aff      	subs	r2, #255	; 0xff
    4f32:	109c      	asrs	r4, r3, #2
    4f34:	3aff      	subs	r2, #255	; 0xff
    4f36:	40a2      	lsls	r2, r4
    4f38:	6844      	ldr	r4, [r0, #4]
    4f3a:	00db      	lsls	r3, r3, #3
    4f3c:	4322      	orrs	r2, r4
    4f3e:	6042      	str	r2, [r0, #4]
    4f40:	1818      	adds	r0, r3, r0
    4f42:	6883      	ldr	r3, [r0, #8]
    4f44:	60c8      	str	r0, [r1, #12]
    4f46:	608b      	str	r3, [r1, #8]
    4f48:	6081      	str	r1, [r0, #8]
    4f4a:	60d9      	str	r1, [r3, #12]
    4f4c:	0028      	movs	r0, r5
    4f4e:	f000 fb49 	bl	55e4 <__malloc_unlock>
    4f52:	bc04      	pop	{r2}
    4f54:	4690      	mov	r8, r2
    4f56:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4f58:	0a5a      	lsrs	r2, r3, #9
    4f5a:	2a04      	cmp	r2, #4
    4f5c:	d84f      	bhi.n	4ffe <_free_r+0x136>
    4f5e:	099c      	lsrs	r4, r3, #6
    4f60:	0026      	movs	r6, r4
    4f62:	3439      	adds	r4, #57	; 0x39
    4f64:	3638      	adds	r6, #56	; 0x38
    4f66:	0064      	lsls	r4, r4, #1
    4f68:	00a4      	lsls	r4, r4, #2
    4f6a:	1904      	adds	r4, r0, r4
    4f6c:	3c08      	subs	r4, #8
    4f6e:	68a2      	ldr	r2, [r4, #8]
    4f70:	2703      	movs	r7, #3
    4f72:	4294      	cmp	r4, r2
    4f74:	d04a      	beq.n	500c <_free_r+0x144>
    4f76:	6850      	ldr	r0, [r2, #4]
    4f78:	43b8      	bics	r0, r7
    4f7a:	4283      	cmp	r3, r0
    4f7c:	d202      	bcs.n	4f84 <_free_r+0xbc>
    4f7e:	6892      	ldr	r2, [r2, #8]
    4f80:	4294      	cmp	r4, r2
    4f82:	d1f8      	bne.n	4f76 <_free_r+0xae>
    4f84:	68d4      	ldr	r4, [r2, #12]
    4f86:	60cc      	str	r4, [r1, #12]
    4f88:	608a      	str	r2, [r1, #8]
    4f8a:	60a1      	str	r1, [r4, #8]
    4f8c:	60d1      	str	r1, [r2, #12]
    4f8e:	e7dd      	b.n	4f4c <_free_r+0x84>
    4f90:	189b      	adds	r3, r3, r2
    4f92:	4f3a      	ldr	r7, [pc, #232]	; (507c <_free_r+0x1b4>)
    4f94:	68a2      	ldr	r2, [r4, #8]
    4f96:	42ba      	cmp	r2, r7
    4f98:	d040      	beq.n	501c <_free_r+0x154>
    4f9a:	68e4      	ldr	r4, [r4, #12]
    4f9c:	431e      	orrs	r6, r3
    4f9e:	60d4      	str	r4, [r2, #12]
    4fa0:	60a2      	str	r2, [r4, #8]
    4fa2:	4a35      	ldr	r2, [pc, #212]	; (5078 <_free_r+0x1b0>)
    4fa4:	604e      	str	r6, [r1, #4]
    4fa6:	50cb      	str	r3, [r1, r3]
    4fa8:	4293      	cmp	r3, r2
    4faa:	d8d5      	bhi.n	4f58 <_free_r+0x90>
    4fac:	e7bf      	b.n	4f2e <_free_r+0x66>
    4fae:	189b      	adds	r3, r3, r2
    4fb0:	4642      	mov	r2, r8
    4fb2:	4232      	tst	r2, r6
    4fb4:	d106      	bne.n	4fc4 <_free_r+0xfc>
    4fb6:	680a      	ldr	r2, [r1, #0]
    4fb8:	1a89      	subs	r1, r1, r2
    4fba:	688c      	ldr	r4, [r1, #8]
    4fbc:	189b      	adds	r3, r3, r2
    4fbe:	68ca      	ldr	r2, [r1, #12]
    4fc0:	60e2      	str	r2, [r4, #12]
    4fc2:	6094      	str	r4, [r2, #8]
    4fc4:	2401      	movs	r4, #1
    4fc6:	4a2e      	ldr	r2, [pc, #184]	; (5080 <_free_r+0x1b8>)
    4fc8:	431c      	orrs	r4, r3
    4fca:	6812      	ldr	r2, [r2, #0]
    4fcc:	604c      	str	r4, [r1, #4]
    4fce:	6081      	str	r1, [r0, #8]
    4fd0:	4293      	cmp	r3, r2
    4fd2:	d3bb      	bcc.n	4f4c <_free_r+0x84>
    4fd4:	4b2b      	ldr	r3, [pc, #172]	; (5084 <_free_r+0x1bc>)
    4fd6:	0028      	movs	r0, r5
    4fd8:	6819      	ldr	r1, [r3, #0]
    4fda:	f7ff ff25 	bl	4e28 <_malloc_trim_r>
    4fde:	e7b5      	b.n	4f4c <_free_r+0x84>
    4fe0:	4646      	mov	r6, r8
    4fe2:	18a0      	adds	r0, r4, r2
    4fe4:	6840      	ldr	r0, [r0, #4]
    4fe6:	4230      	tst	r0, r6
    4fe8:	d13e      	bne.n	5068 <_free_r+0x1a0>
    4fea:	68a0      	ldr	r0, [r4, #8]
    4fec:	18d3      	adds	r3, r2, r3
    4fee:	68e2      	ldr	r2, [r4, #12]
    4ff0:	60c2      	str	r2, [r0, #12]
    4ff2:	6090      	str	r0, [r2, #8]
    4ff4:	4642      	mov	r2, r8
    4ff6:	431a      	orrs	r2, r3
    4ff8:	604a      	str	r2, [r1, #4]
    4ffa:	50cb      	str	r3, [r1, r3]
    4ffc:	e7a6      	b.n	4f4c <_free_r+0x84>
    4ffe:	2a14      	cmp	r2, #20
    5000:	d814      	bhi.n	502c <_free_r+0x164>
    5002:	0016      	movs	r6, r2
    5004:	325c      	adds	r2, #92	; 0x5c
    5006:	365b      	adds	r6, #91	; 0x5b
    5008:	0054      	lsls	r4, r2, #1
    500a:	e7ad      	b.n	4f68 <_free_r+0xa0>
    500c:	2301      	movs	r3, #1
    500e:	10b6      	asrs	r6, r6, #2
    5010:	40b3      	lsls	r3, r6
    5012:	6842      	ldr	r2, [r0, #4]
    5014:	4313      	orrs	r3, r2
    5016:	6043      	str	r3, [r0, #4]
    5018:	0022      	movs	r2, r4
    501a:	e7b4      	b.n	4f86 <_free_r+0xbe>
    501c:	431e      	orrs	r6, r3
    501e:	60d1      	str	r1, [r2, #12]
    5020:	6091      	str	r1, [r2, #8]
    5022:	60ca      	str	r2, [r1, #12]
    5024:	608a      	str	r2, [r1, #8]
    5026:	604e      	str	r6, [r1, #4]
    5028:	50cb      	str	r3, [r1, r3]
    502a:	e78f      	b.n	4f4c <_free_r+0x84>
    502c:	2a54      	cmp	r2, #84	; 0x54
    502e:	d805      	bhi.n	503c <_free_r+0x174>
    5030:	0b1c      	lsrs	r4, r3, #12
    5032:	0026      	movs	r6, r4
    5034:	346f      	adds	r4, #111	; 0x6f
    5036:	366e      	adds	r6, #110	; 0x6e
    5038:	0064      	lsls	r4, r4, #1
    503a:	e795      	b.n	4f68 <_free_r+0xa0>
    503c:	24aa      	movs	r4, #170	; 0xaa
    503e:	0064      	lsls	r4, r4, #1
    5040:	42a2      	cmp	r2, r4
    5042:	d805      	bhi.n	5050 <_free_r+0x188>
    5044:	0bdc      	lsrs	r4, r3, #15
    5046:	0026      	movs	r6, r4
    5048:	3478      	adds	r4, #120	; 0x78
    504a:	3677      	adds	r6, #119	; 0x77
    504c:	0064      	lsls	r4, r4, #1
    504e:	e78b      	b.n	4f68 <_free_r+0xa0>
    5050:	4c0d      	ldr	r4, [pc, #52]	; (5088 <_free_r+0x1c0>)
    5052:	42a2      	cmp	r2, r4
    5054:	d805      	bhi.n	5062 <_free_r+0x19a>
    5056:	0c9c      	lsrs	r4, r3, #18
    5058:	0026      	movs	r6, r4
    505a:	347d      	adds	r4, #125	; 0x7d
    505c:	367c      	adds	r6, #124	; 0x7c
    505e:	0064      	lsls	r4, r4, #1
    5060:	e782      	b.n	4f68 <_free_r+0xa0>
    5062:	24fe      	movs	r4, #254	; 0xfe
    5064:	267e      	movs	r6, #126	; 0x7e
    5066:	e77f      	b.n	4f68 <_free_r+0xa0>
    5068:	4642      	mov	r2, r8
    506a:	431a      	orrs	r2, r3
    506c:	604a      	str	r2, [r1, #4]
    506e:	50cb      	str	r3, [r1, r3]
    5070:	e76c      	b.n	4f4c <_free_r+0x84>
    5072:	46c0      	nop			; (mov r8, r8)
    5074:	20000444 	.word	0x20000444
    5078:	000001ff 	.word	0x000001ff
    507c:	2000044c 	.word	0x2000044c
    5080:	2000084c 	.word	0x2000084c
    5084:	20006044 	.word	0x20006044
    5088:	00000554 	.word	0x00000554

0000508c <_malloc_r>:
    508c:	b5f0      	push	{r4, r5, r6, r7, lr}
    508e:	465f      	mov	r7, fp
    5090:	464d      	mov	r5, r9
    5092:	4656      	mov	r6, sl
    5094:	4644      	mov	r4, r8
    5096:	b4f0      	push	{r4, r5, r6, r7}
    5098:	000d      	movs	r5, r1
    509a:	350b      	adds	r5, #11
    509c:	b083      	sub	sp, #12
    509e:	0007      	movs	r7, r0
    50a0:	2d16      	cmp	r5, #22
    50a2:	d800      	bhi.n	50a6 <_malloc_r+0x1a>
    50a4:	e0a8      	b.n	51f8 <_malloc_r+0x16c>
    50a6:	2307      	movs	r3, #7
    50a8:	439d      	bics	r5, r3
    50aa:	d500      	bpl.n	50ae <_malloc_r+0x22>
    50ac:	e0ce      	b.n	524c <_malloc_r+0x1c0>
    50ae:	42a9      	cmp	r1, r5
    50b0:	d900      	bls.n	50b4 <_malloc_r+0x28>
    50b2:	e0cb      	b.n	524c <_malloc_r+0x1c0>
    50b4:	f000 fa94 	bl	55e0 <__malloc_lock>
    50b8:	23f8      	movs	r3, #248	; 0xf8
    50ba:	33ff      	adds	r3, #255	; 0xff
    50bc:	429d      	cmp	r5, r3
    50be:	d800      	bhi.n	50c2 <_malloc_r+0x36>
    50c0:	e284      	b.n	55cc <_malloc_r+0x540>
    50c2:	0a6b      	lsrs	r3, r5, #9
    50c4:	d100      	bne.n	50c8 <_malloc_r+0x3c>
    50c6:	e0c5      	b.n	5254 <_malloc_r+0x1c8>
    50c8:	2b04      	cmp	r3, #4
    50ca:	d900      	bls.n	50ce <_malloc_r+0x42>
    50cc:	e16c      	b.n	53a8 <_malloc_r+0x31c>
    50ce:	2338      	movs	r3, #56	; 0x38
    50d0:	09a9      	lsrs	r1, r5, #6
    50d2:	469c      	mov	ip, r3
    50d4:	3301      	adds	r3, #1
    50d6:	4698      	mov	r8, r3
    50d8:	4488      	add	r8, r1
    50da:	4643      	mov	r3, r8
    50dc:	448c      	add	ip, r1
    50de:	0059      	lsls	r1, r3, #1
    50e0:	4ec9      	ldr	r6, [pc, #804]	; (5408 <_malloc_r+0x37c>)
    50e2:	0089      	lsls	r1, r1, #2
    50e4:	1871      	adds	r1, r6, r1
    50e6:	3908      	subs	r1, #8
    50e8:	68cc      	ldr	r4, [r1, #12]
    50ea:	42a1      	cmp	r1, r4
    50ec:	d017      	beq.n	511e <_malloc_r+0x92>
    50ee:	2303      	movs	r3, #3
    50f0:	6862      	ldr	r2, [r4, #4]
    50f2:	439a      	bics	r2, r3
    50f4:	0013      	movs	r3, r2
    50f6:	1b52      	subs	r2, r2, r5
    50f8:	2a0f      	cmp	r2, #15
    50fa:	dd00      	ble.n	50fe <_malloc_r+0x72>
    50fc:	e0b0      	b.n	5260 <_malloc_r+0x1d4>
    50fe:	2003      	movs	r0, #3
    5100:	2a00      	cmp	r2, #0
    5102:	db09      	blt.n	5118 <_malloc_r+0x8c>
    5104:	e08d      	b.n	5222 <_malloc_r+0x196>
    5106:	6863      	ldr	r3, [r4, #4]
    5108:	4383      	bics	r3, r0
    510a:	1b5a      	subs	r2, r3, r5
    510c:	2a0f      	cmp	r2, #15
    510e:	dd00      	ble.n	5112 <_malloc_r+0x86>
    5110:	e0a6      	b.n	5260 <_malloc_r+0x1d4>
    5112:	2a00      	cmp	r2, #0
    5114:	db00      	blt.n	5118 <_malloc_r+0x8c>
    5116:	e084      	b.n	5222 <_malloc_r+0x196>
    5118:	68e4      	ldr	r4, [r4, #12]
    511a:	42a1      	cmp	r1, r4
    511c:	d1f3      	bne.n	5106 <_malloc_r+0x7a>
    511e:	4643      	mov	r3, r8
    5120:	9300      	str	r3, [sp, #0]
    5122:	0032      	movs	r2, r6
    5124:	6934      	ldr	r4, [r6, #16]
    5126:	3208      	adds	r2, #8
    5128:	4294      	cmp	r4, r2
    512a:	d100      	bne.n	512e <_malloc_r+0xa2>
    512c:	e18f      	b.n	544e <_malloc_r+0x3c2>
    512e:	2303      	movs	r3, #3
    5130:	6861      	ldr	r1, [r4, #4]
    5132:	4399      	bics	r1, r3
    5134:	000b      	movs	r3, r1
    5136:	1b48      	subs	r0, r1, r5
    5138:	280f      	cmp	r0, #15
    513a:	dd00      	ble.n	513e <_malloc_r+0xb2>
    513c:	e176      	b.n	542c <_malloc_r+0x3a0>
    513e:	6172      	str	r2, [r6, #20]
    5140:	6132      	str	r2, [r6, #16]
    5142:	2800      	cmp	r0, #0
    5144:	da71      	bge.n	522a <_malloc_r+0x19e>
    5146:	4ab1      	ldr	r2, [pc, #708]	; (540c <_malloc_r+0x380>)
    5148:	4291      	cmp	r1, r2
    514a:	d900      	bls.n	514e <_malloc_r+0xc2>
    514c:	e134      	b.n	53b8 <_malloc_r+0x32c>
    514e:	2301      	movs	r3, #1
    5150:	08c8      	lsrs	r0, r1, #3
    5152:	1082      	asrs	r2, r0, #2
    5154:	4093      	lsls	r3, r2
    5156:	6872      	ldr	r2, [r6, #4]
    5158:	431a      	orrs	r2, r3
    515a:	00c3      	lsls	r3, r0, #3
    515c:	199b      	adds	r3, r3, r6
    515e:	6898      	ldr	r0, [r3, #8]
    5160:	6072      	str	r2, [r6, #4]
    5162:	60e3      	str	r3, [r4, #12]
    5164:	60a0      	str	r0, [r4, #8]
    5166:	609c      	str	r4, [r3, #8]
    5168:	0013      	movs	r3, r2
    516a:	60c4      	str	r4, [r0, #12]
    516c:	2001      	movs	r0, #1
    516e:	9900      	ldr	r1, [sp, #0]
    5170:	108a      	asrs	r2, r1, #2
    5172:	4090      	lsls	r0, r2
    5174:	4298      	cmp	r0, r3
    5176:	d900      	bls.n	517a <_malloc_r+0xee>
    5178:	e075      	b.n	5266 <_malloc_r+0x1da>
    517a:	4203      	tst	r3, r0
    517c:	d10c      	bne.n	5198 <_malloc_r+0x10c>
    517e:	2203      	movs	r2, #3
    5180:	4391      	bics	r1, r2
    5182:	1d0a      	adds	r2, r1, #4
    5184:	0040      	lsls	r0, r0, #1
    5186:	9200      	str	r2, [sp, #0]
    5188:	4203      	tst	r3, r0
    518a:	d105      	bne.n	5198 <_malloc_r+0x10c>
    518c:	9a00      	ldr	r2, [sp, #0]
    518e:	0040      	lsls	r0, r0, #1
    5190:	3204      	adds	r2, #4
    5192:	9200      	str	r2, [sp, #0]
    5194:	4203      	tst	r3, r0
    5196:	d0f9      	beq.n	518c <_malloc_r+0x100>
    5198:	2303      	movs	r3, #3
    519a:	4698      	mov	r8, r3
    519c:	9a00      	ldr	r2, [sp, #0]
    519e:	00d3      	lsls	r3, r2, #3
    51a0:	4699      	mov	r9, r3
    51a2:	44b1      	add	r9, r6
    51a4:	46cc      	mov	ip, r9
    51a6:	4692      	mov	sl, r2
    51a8:	4663      	mov	r3, ip
    51aa:	68dc      	ldr	r4, [r3, #12]
    51ac:	45a4      	cmp	ip, r4
    51ae:	d107      	bne.n	51c0 <_malloc_r+0x134>
    51b0:	e14f      	b.n	5452 <_malloc_r+0x3c6>
    51b2:	2a00      	cmp	r2, #0
    51b4:	db00      	blt.n	51b8 <_malloc_r+0x12c>
    51b6:	e15f      	b.n	5478 <_malloc_r+0x3ec>
    51b8:	68e4      	ldr	r4, [r4, #12]
    51ba:	45a4      	cmp	ip, r4
    51bc:	d100      	bne.n	51c0 <_malloc_r+0x134>
    51be:	e148      	b.n	5452 <_malloc_r+0x3c6>
    51c0:	4642      	mov	r2, r8
    51c2:	6863      	ldr	r3, [r4, #4]
    51c4:	4393      	bics	r3, r2
    51c6:	1b5a      	subs	r2, r3, r5
    51c8:	2a0f      	cmp	r2, #15
    51ca:	ddf2      	ble.n	51b2 <_malloc_r+0x126>
    51cc:	2101      	movs	r1, #1
    51ce:	1963      	adds	r3, r4, r5
    51d0:	430d      	orrs	r5, r1
    51d2:	6065      	str	r5, [r4, #4]
    51d4:	68e0      	ldr	r0, [r4, #12]
    51d6:	68a5      	ldr	r5, [r4, #8]
    51d8:	3608      	adds	r6, #8
    51da:	60e8      	str	r0, [r5, #12]
    51dc:	4311      	orrs	r1, r2
    51de:	6085      	str	r5, [r0, #8]
    51e0:	60f3      	str	r3, [r6, #12]
    51e2:	60b3      	str	r3, [r6, #8]
    51e4:	0038      	movs	r0, r7
    51e6:	60de      	str	r6, [r3, #12]
    51e8:	609e      	str	r6, [r3, #8]
    51ea:	6059      	str	r1, [r3, #4]
    51ec:	509a      	str	r2, [r3, r2]
    51ee:	f000 f9f9 	bl	55e4 <__malloc_unlock>
    51f2:	0020      	movs	r0, r4
    51f4:	3008      	adds	r0, #8
    51f6:	e022      	b.n	523e <_malloc_r+0x1b2>
    51f8:	2910      	cmp	r1, #16
    51fa:	d827      	bhi.n	524c <_malloc_r+0x1c0>
    51fc:	0038      	movs	r0, r7
    51fe:	f000 f9ef 	bl	55e0 <__malloc_lock>
    5202:	2510      	movs	r5, #16
    5204:	2306      	movs	r3, #6
    5206:	2102      	movs	r1, #2
    5208:	4e7f      	ldr	r6, [pc, #508]	; (5408 <_malloc_r+0x37c>)
    520a:	009b      	lsls	r3, r3, #2
    520c:	18f3      	adds	r3, r6, r3
    520e:	001a      	movs	r2, r3
    5210:	685c      	ldr	r4, [r3, #4]
    5212:	3a08      	subs	r2, #8
    5214:	4294      	cmp	r4, r2
    5216:	d100      	bne.n	521a <_malloc_r+0x18e>
    5218:	e127      	b.n	546a <_malloc_r+0x3de>
    521a:	2303      	movs	r3, #3
    521c:	6862      	ldr	r2, [r4, #4]
    521e:	439a      	bics	r2, r3
    5220:	0013      	movs	r3, r2
    5222:	68e2      	ldr	r2, [r4, #12]
    5224:	68a1      	ldr	r1, [r4, #8]
    5226:	60ca      	str	r2, [r1, #12]
    5228:	6091      	str	r1, [r2, #8]
    522a:	2201      	movs	r2, #1
    522c:	18e3      	adds	r3, r4, r3
    522e:	6859      	ldr	r1, [r3, #4]
    5230:	0038      	movs	r0, r7
    5232:	430a      	orrs	r2, r1
    5234:	605a      	str	r2, [r3, #4]
    5236:	f000 f9d5 	bl	55e4 <__malloc_unlock>
    523a:	0020      	movs	r0, r4
    523c:	3008      	adds	r0, #8
    523e:	b003      	add	sp, #12
    5240:	bc3c      	pop	{r2, r3, r4, r5}
    5242:	4690      	mov	r8, r2
    5244:	4699      	mov	r9, r3
    5246:	46a2      	mov	sl, r4
    5248:	46ab      	mov	fp, r5
    524a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    524c:	230c      	movs	r3, #12
    524e:	2000      	movs	r0, #0
    5250:	603b      	str	r3, [r7, #0]
    5252:	e7f4      	b.n	523e <_malloc_r+0x1b2>
    5254:	2340      	movs	r3, #64	; 0x40
    5256:	4698      	mov	r8, r3
    5258:	3b01      	subs	r3, #1
    525a:	2180      	movs	r1, #128	; 0x80
    525c:	469c      	mov	ip, r3
    525e:	e73f      	b.n	50e0 <_malloc_r+0x54>
    5260:	4663      	mov	r3, ip
    5262:	9300      	str	r3, [sp, #0]
    5264:	e75d      	b.n	5122 <_malloc_r+0x96>
    5266:	2303      	movs	r3, #3
    5268:	68b4      	ldr	r4, [r6, #8]
    526a:	6862      	ldr	r2, [r4, #4]
    526c:	439a      	bics	r2, r3
    526e:	4690      	mov	r8, r2
    5270:	42aa      	cmp	r2, r5
    5272:	d303      	bcc.n	527c <_malloc_r+0x1f0>
    5274:	1b52      	subs	r2, r2, r5
    5276:	2a0f      	cmp	r2, #15
    5278:	dd00      	ble.n	527c <_malloc_r+0x1f0>
    527a:	e087      	b.n	538c <_malloc_r+0x300>
    527c:	0023      	movs	r3, r4
    527e:	4443      	add	r3, r8
    5280:	4a63      	ldr	r2, [pc, #396]	; (5410 <_malloc_r+0x384>)
    5282:	9301      	str	r3, [sp, #4]
    5284:	4b63      	ldr	r3, [pc, #396]	; (5414 <_malloc_r+0x388>)
    5286:	4693      	mov	fp, r2
    5288:	681b      	ldr	r3, [r3, #0]
    528a:	6812      	ldr	r2, [r2, #0]
    528c:	18eb      	adds	r3, r5, r3
    528e:	3201      	adds	r2, #1
    5290:	d100      	bne.n	5294 <_malloc_r+0x208>
    5292:	e157      	b.n	5544 <_malloc_r+0x4b8>
    5294:	4a60      	ldr	r2, [pc, #384]	; (5418 <_malloc_r+0x38c>)
    5296:	4694      	mov	ip, r2
    5298:	4463      	add	r3, ip
    529a:	0b1b      	lsrs	r3, r3, #12
    529c:	031b      	lsls	r3, r3, #12
    529e:	9300      	str	r3, [sp, #0]
    52a0:	9900      	ldr	r1, [sp, #0]
    52a2:	0038      	movs	r0, r7
    52a4:	f000 f9a0 	bl	55e8 <_sbrk_r>
    52a8:	0003      	movs	r3, r0
    52aa:	4681      	mov	r9, r0
    52ac:	3301      	adds	r3, #1
    52ae:	d061      	beq.n	5374 <_malloc_r+0x2e8>
    52b0:	9b01      	ldr	r3, [sp, #4]
    52b2:	4283      	cmp	r3, r0
    52b4:	d900      	bls.n	52b8 <_malloc_r+0x22c>
    52b6:	e0fd      	b.n	54b4 <_malloc_r+0x428>
    52b8:	4b58      	ldr	r3, [pc, #352]	; (541c <_malloc_r+0x390>)
    52ba:	9a00      	ldr	r2, [sp, #0]
    52bc:	469a      	mov	sl, r3
    52be:	681b      	ldr	r3, [r3, #0]
    52c0:	469c      	mov	ip, r3
    52c2:	4653      	mov	r3, sl
    52c4:	4462      	add	r2, ip
    52c6:	601a      	str	r2, [r3, #0]
    52c8:	9b01      	ldr	r3, [sp, #4]
    52ca:	0011      	movs	r1, r2
    52cc:	454b      	cmp	r3, r9
    52ce:	d100      	bne.n	52d2 <_malloc_r+0x246>
    52d0:	e143      	b.n	555a <_malloc_r+0x4ce>
    52d2:	465b      	mov	r3, fp
    52d4:	681b      	ldr	r3, [r3, #0]
    52d6:	3301      	adds	r3, #1
    52d8:	d100      	bne.n	52dc <_malloc_r+0x250>
    52da:	e14f      	b.n	557c <_malloc_r+0x4f0>
    52dc:	464b      	mov	r3, r9
    52de:	9a01      	ldr	r2, [sp, #4]
    52e0:	1a9b      	subs	r3, r3, r2
    52e2:	1859      	adds	r1, r3, r1
    52e4:	4653      	mov	r3, sl
    52e6:	6019      	str	r1, [r3, #0]
    52e8:	2307      	movs	r3, #7
    52ea:	464a      	mov	r2, r9
    52ec:	4013      	ands	r3, r2
    52ee:	d100      	bne.n	52f2 <_malloc_r+0x266>
    52f0:	e117      	b.n	5522 <_malloc_r+0x496>
    52f2:	2108      	movs	r1, #8
    52f4:	4689      	mov	r9, r1
    52f6:	494a      	ldr	r1, [pc, #296]	; (5420 <_malloc_r+0x394>)
    52f8:	1ad2      	subs	r2, r2, r3
    52fa:	4491      	add	r9, r2
    52fc:	1ac9      	subs	r1, r1, r3
    52fe:	9b00      	ldr	r3, [sp, #0]
    5300:	0038      	movs	r0, r7
    5302:	444b      	add	r3, r9
    5304:	051b      	lsls	r3, r3, #20
    5306:	0d1b      	lsrs	r3, r3, #20
    5308:	1acb      	subs	r3, r1, r3
    530a:	0019      	movs	r1, r3
    530c:	469b      	mov	fp, r3
    530e:	f000 f96b 	bl	55e8 <_sbrk_r>
    5312:	1c43      	adds	r3, r0, #1
    5314:	d100      	bne.n	5318 <_malloc_r+0x28c>
    5316:	e135      	b.n	5584 <_malloc_r+0x4f8>
    5318:	464b      	mov	r3, r9
    531a:	1ac0      	subs	r0, r0, r3
    531c:	2301      	movs	r3, #1
    531e:	4458      	add	r0, fp
    5320:	4318      	orrs	r0, r3
    5322:	4653      	mov	r3, sl
    5324:	681b      	ldr	r3, [r3, #0]
    5326:	445b      	add	r3, fp
    5328:	0019      	movs	r1, r3
    532a:	4653      	mov	r3, sl
    532c:	6019      	str	r1, [r3, #0]
    532e:	464b      	mov	r3, r9
    5330:	60b3      	str	r3, [r6, #8]
    5332:	6058      	str	r0, [r3, #4]
    5334:	42b4      	cmp	r4, r6
    5336:	d013      	beq.n	5360 <_malloc_r+0x2d4>
    5338:	4643      	mov	r3, r8
    533a:	2b0f      	cmp	r3, #15
    533c:	d800      	bhi.n	5340 <_malloc_r+0x2b4>
    533e:	e0e1      	b.n	5504 <_malloc_r+0x478>
    5340:	4643      	mov	r3, r8
    5342:	2207      	movs	r2, #7
    5344:	6860      	ldr	r0, [r4, #4]
    5346:	3b0c      	subs	r3, #12
    5348:	4393      	bics	r3, r2
    534a:	3a06      	subs	r2, #6
    534c:	4002      	ands	r2, r0
    534e:	2005      	movs	r0, #5
    5350:	431a      	orrs	r2, r3
    5352:	6062      	str	r2, [r4, #4]
    5354:	18e2      	adds	r2, r4, r3
    5356:	6050      	str	r0, [r2, #4]
    5358:	6090      	str	r0, [r2, #8]
    535a:	2b0f      	cmp	r3, #15
    535c:	d900      	bls.n	5360 <_malloc_r+0x2d4>
    535e:	e115      	b.n	558c <_malloc_r+0x500>
    5360:	4b30      	ldr	r3, [pc, #192]	; (5424 <_malloc_r+0x398>)
    5362:	681a      	ldr	r2, [r3, #0]
    5364:	4291      	cmp	r1, r2
    5366:	d900      	bls.n	536a <_malloc_r+0x2de>
    5368:	6019      	str	r1, [r3, #0]
    536a:	4b2f      	ldr	r3, [pc, #188]	; (5428 <_malloc_r+0x39c>)
    536c:	681a      	ldr	r2, [r3, #0]
    536e:	4291      	cmp	r1, r2
    5370:	d900      	bls.n	5374 <_malloc_r+0x2e8>
    5372:	6019      	str	r1, [r3, #0]
    5374:	2303      	movs	r3, #3
    5376:	68b4      	ldr	r4, [r6, #8]
    5378:	6862      	ldr	r2, [r4, #4]
    537a:	439a      	bics	r2, r3
    537c:	0013      	movs	r3, r2
    537e:	1b52      	subs	r2, r2, r5
    5380:	429d      	cmp	r5, r3
    5382:	d900      	bls.n	5386 <_malloc_r+0x2fa>
    5384:	e0c1      	b.n	550a <_malloc_r+0x47e>
    5386:	2a0f      	cmp	r2, #15
    5388:	dc00      	bgt.n	538c <_malloc_r+0x300>
    538a:	e0be      	b.n	550a <_malloc_r+0x47e>
    538c:	2301      	movs	r3, #1
    538e:	0029      	movs	r1, r5
    5390:	1965      	adds	r5, r4, r5
    5392:	4319      	orrs	r1, r3
    5394:	4313      	orrs	r3, r2
    5396:	6061      	str	r1, [r4, #4]
    5398:	0038      	movs	r0, r7
    539a:	60b5      	str	r5, [r6, #8]
    539c:	606b      	str	r3, [r5, #4]
    539e:	f000 f921 	bl	55e4 <__malloc_unlock>
    53a2:	0020      	movs	r0, r4
    53a4:	3008      	adds	r0, #8
    53a6:	e74a      	b.n	523e <_malloc_r+0x1b2>
    53a8:	2b14      	cmp	r3, #20
    53aa:	d974      	bls.n	5496 <_malloc_r+0x40a>
    53ac:	2b54      	cmp	r3, #84	; 0x54
    53ae:	d900      	bls.n	53b2 <_malloc_r+0x326>
    53b0:	e0b0      	b.n	5514 <_malloc_r+0x488>
    53b2:	0b29      	lsrs	r1, r5, #12
    53b4:	236e      	movs	r3, #110	; 0x6e
    53b6:	e68c      	b.n	50d2 <_malloc_r+0x46>
    53b8:	0a4a      	lsrs	r2, r1, #9
    53ba:	2a04      	cmp	r2, #4
    53bc:	d974      	bls.n	54a8 <_malloc_r+0x41c>
    53be:	2a14      	cmp	r2, #20
    53c0:	d900      	bls.n	53c4 <_malloc_r+0x338>
    53c2:	e0c2      	b.n	554a <_malloc_r+0x4be>
    53c4:	0010      	movs	r0, r2
    53c6:	325c      	adds	r2, #92	; 0x5c
    53c8:	305b      	adds	r0, #91	; 0x5b
    53ca:	0052      	lsls	r2, r2, #1
    53cc:	2108      	movs	r1, #8
    53ce:	4249      	negs	r1, r1
    53d0:	468c      	mov	ip, r1
    53d2:	0092      	lsls	r2, r2, #2
    53d4:	18b2      	adds	r2, r6, r2
    53d6:	4494      	add	ip, r2
    53d8:	4662      	mov	r2, ip
    53da:	6892      	ldr	r2, [r2, #8]
    53dc:	310b      	adds	r1, #11
    53de:	4688      	mov	r8, r1
    53e0:	4594      	cmp	ip, r2
    53e2:	d100      	bne.n	53e6 <_malloc_r+0x35a>
    53e4:	e0a0      	b.n	5528 <_malloc_r+0x49c>
    53e6:	4641      	mov	r1, r8
    53e8:	6850      	ldr	r0, [r2, #4]
    53ea:	4388      	bics	r0, r1
    53ec:	4283      	cmp	r3, r0
    53ee:	d202      	bcs.n	53f6 <_malloc_r+0x36a>
    53f0:	6892      	ldr	r2, [r2, #8]
    53f2:	4594      	cmp	ip, r2
    53f4:	d1f7      	bne.n	53e6 <_malloc_r+0x35a>
    53f6:	68d3      	ldr	r3, [r2, #12]
    53f8:	469c      	mov	ip, r3
    53fa:	6873      	ldr	r3, [r6, #4]
    53fc:	4661      	mov	r1, ip
    53fe:	60a2      	str	r2, [r4, #8]
    5400:	60e1      	str	r1, [r4, #12]
    5402:	608c      	str	r4, [r1, #8]
    5404:	60d4      	str	r4, [r2, #12]
    5406:	e6b1      	b.n	516c <_malloc_r+0xe0>
    5408:	20000444 	.word	0x20000444
    540c:	000001ff 	.word	0x000001ff
    5410:	20000850 	.word	0x20000850
    5414:	20006044 	.word	0x20006044
    5418:	0000100f 	.word	0x0000100f
    541c:	20006048 	.word	0x20006048
    5420:	00001008 	.word	0x00001008
    5424:	20006040 	.word	0x20006040
    5428:	2000603c 	.word	0x2000603c
    542c:	2101      	movs	r1, #1
    542e:	1963      	adds	r3, r4, r5
    5430:	430d      	orrs	r5, r1
    5432:	4301      	orrs	r1, r0
    5434:	6065      	str	r5, [r4, #4]
    5436:	6173      	str	r3, [r6, #20]
    5438:	6133      	str	r3, [r6, #16]
    543a:	60da      	str	r2, [r3, #12]
    543c:	609a      	str	r2, [r3, #8]
    543e:	6059      	str	r1, [r3, #4]
    5440:	5018      	str	r0, [r3, r0]
    5442:	0038      	movs	r0, r7
    5444:	f000 f8ce 	bl	55e4 <__malloc_unlock>
    5448:	0020      	movs	r0, r4
    544a:	3008      	adds	r0, #8
    544c:	e6f7      	b.n	523e <_malloc_r+0x1b2>
    544e:	6873      	ldr	r3, [r6, #4]
    5450:	e68c      	b.n	516c <_malloc_r+0xe0>
    5452:	2308      	movs	r3, #8
    5454:	469b      	mov	fp, r3
    5456:	3b07      	subs	r3, #7
    5458:	44dc      	add	ip, fp
    545a:	469b      	mov	fp, r3
    545c:	44da      	add	sl, fp
    545e:	4643      	mov	r3, r8
    5460:	4652      	mov	r2, sl
    5462:	4213      	tst	r3, r2
    5464:	d000      	beq.n	5468 <_malloc_r+0x3dc>
    5466:	e69f      	b.n	51a8 <_malloc_r+0x11c>
    5468:	e033      	b.n	54d2 <_malloc_r+0x446>
    546a:	68dc      	ldr	r4, [r3, #12]
    546c:	1c8a      	adds	r2, r1, #2
    546e:	9200      	str	r2, [sp, #0]
    5470:	42a3      	cmp	r3, r4
    5472:	d100      	bne.n	5476 <_malloc_r+0x3ea>
    5474:	e655      	b.n	5122 <_malloc_r+0x96>
    5476:	e6d0      	b.n	521a <_malloc_r+0x18e>
    5478:	2201      	movs	r2, #1
    547a:	18e3      	adds	r3, r4, r3
    547c:	6859      	ldr	r1, [r3, #4]
    547e:	0038      	movs	r0, r7
    5480:	430a      	orrs	r2, r1
    5482:	605a      	str	r2, [r3, #4]
    5484:	68e3      	ldr	r3, [r4, #12]
    5486:	68a2      	ldr	r2, [r4, #8]
    5488:	60d3      	str	r3, [r2, #12]
    548a:	609a      	str	r2, [r3, #8]
    548c:	f000 f8aa 	bl	55e4 <__malloc_unlock>
    5490:	0020      	movs	r0, r4
    5492:	3008      	adds	r0, #8
    5494:	e6d3      	b.n	523e <_malloc_r+0x1b2>
    5496:	225b      	movs	r2, #91	; 0x5b
    5498:	4694      	mov	ip, r2
    549a:	3201      	adds	r2, #1
    549c:	4690      	mov	r8, r2
    549e:	4498      	add	r8, r3
    54a0:	449c      	add	ip, r3
    54a2:	4643      	mov	r3, r8
    54a4:	0059      	lsls	r1, r3, #1
    54a6:	e61b      	b.n	50e0 <_malloc_r+0x54>
    54a8:	098a      	lsrs	r2, r1, #6
    54aa:	0010      	movs	r0, r2
    54ac:	3239      	adds	r2, #57	; 0x39
    54ae:	3038      	adds	r0, #56	; 0x38
    54b0:	0052      	lsls	r2, r2, #1
    54b2:	e78b      	b.n	53cc <_malloc_r+0x340>
    54b4:	42b4      	cmp	r4, r6
    54b6:	d000      	beq.n	54ba <_malloc_r+0x42e>
    54b8:	e75c      	b.n	5374 <_malloc_r+0x2e8>
    54ba:	e6fd      	b.n	52b8 <_malloc_r+0x22c>
    54bc:	9b00      	ldr	r3, [sp, #0]
    54be:	3b01      	subs	r3, #1
    54c0:	9300      	str	r3, [sp, #0]
    54c2:	2308      	movs	r3, #8
    54c4:	425b      	negs	r3, r3
    54c6:	469c      	mov	ip, r3
    54c8:	44e1      	add	r9, ip
    54ca:	464b      	mov	r3, r9
    54cc:	689b      	ldr	r3, [r3, #8]
    54ce:	4599      	cmp	r9, r3
    54d0:	d17a      	bne.n	55c8 <_malloc_r+0x53c>
    54d2:	4643      	mov	r3, r8
    54d4:	9a00      	ldr	r2, [sp, #0]
    54d6:	4213      	tst	r3, r2
    54d8:	d1f0      	bne.n	54bc <_malloc_r+0x430>
    54da:	6873      	ldr	r3, [r6, #4]
    54dc:	4383      	bics	r3, r0
    54de:	6073      	str	r3, [r6, #4]
    54e0:	0040      	lsls	r0, r0, #1
    54e2:	4298      	cmp	r0, r3
    54e4:	d900      	bls.n	54e8 <_malloc_r+0x45c>
    54e6:	e6be      	b.n	5266 <_malloc_r+0x1da>
    54e8:	2800      	cmp	r0, #0
    54ea:	d100      	bne.n	54ee <_malloc_r+0x462>
    54ec:	e6bb      	b.n	5266 <_malloc_r+0x1da>
    54ee:	4203      	tst	r3, r0
    54f0:	d170      	bne.n	55d4 <_malloc_r+0x548>
    54f2:	4652      	mov	r2, sl
    54f4:	9200      	str	r2, [sp, #0]
    54f6:	9a00      	ldr	r2, [sp, #0]
    54f8:	0040      	lsls	r0, r0, #1
    54fa:	3204      	adds	r2, #4
    54fc:	9200      	str	r2, [sp, #0]
    54fe:	4203      	tst	r3, r0
    5500:	d0f9      	beq.n	54f6 <_malloc_r+0x46a>
    5502:	e64b      	b.n	519c <_malloc_r+0x110>
    5504:	2301      	movs	r3, #1
    5506:	464a      	mov	r2, r9
    5508:	6053      	str	r3, [r2, #4]
    550a:	0038      	movs	r0, r7
    550c:	f000 f86a 	bl	55e4 <__malloc_unlock>
    5510:	2000      	movs	r0, #0
    5512:	e694      	b.n	523e <_malloc_r+0x1b2>
    5514:	22aa      	movs	r2, #170	; 0xaa
    5516:	0052      	lsls	r2, r2, #1
    5518:	4293      	cmp	r3, r2
    551a:	d80d      	bhi.n	5538 <_malloc_r+0x4ac>
    551c:	0be9      	lsrs	r1, r5, #15
    551e:	2377      	movs	r3, #119	; 0x77
    5520:	e5d7      	b.n	50d2 <_malloc_r+0x46>
    5522:	2180      	movs	r1, #128	; 0x80
    5524:	0149      	lsls	r1, r1, #5
    5526:	e6ea      	b.n	52fe <_malloc_r+0x272>
    5528:	2301      	movs	r3, #1
    552a:	1080      	asrs	r0, r0, #2
    552c:	4083      	lsls	r3, r0
    552e:	6872      	ldr	r2, [r6, #4]
    5530:	4313      	orrs	r3, r2
    5532:	6073      	str	r3, [r6, #4]
    5534:	4662      	mov	r2, ip
    5536:	e761      	b.n	53fc <_malloc_r+0x370>
    5538:	4a28      	ldr	r2, [pc, #160]	; (55dc <_malloc_r+0x550>)
    553a:	4293      	cmp	r3, r2
    553c:	d818      	bhi.n	5570 <_malloc_r+0x4e4>
    553e:	0ca9      	lsrs	r1, r5, #18
    5540:	237c      	movs	r3, #124	; 0x7c
    5542:	e5c6      	b.n	50d2 <_malloc_r+0x46>
    5544:	3310      	adds	r3, #16
    5546:	9300      	str	r3, [sp, #0]
    5548:	e6aa      	b.n	52a0 <_malloc_r+0x214>
    554a:	2a54      	cmp	r2, #84	; 0x54
    554c:	d826      	bhi.n	559c <_malloc_r+0x510>
    554e:	0b0a      	lsrs	r2, r1, #12
    5550:	0010      	movs	r0, r2
    5552:	326f      	adds	r2, #111	; 0x6f
    5554:	306e      	adds	r0, #110	; 0x6e
    5556:	0052      	lsls	r2, r2, #1
    5558:	e738      	b.n	53cc <_malloc_r+0x340>
    555a:	051b      	lsls	r3, r3, #20
    555c:	d000      	beq.n	5560 <_malloc_r+0x4d4>
    555e:	e6b8      	b.n	52d2 <_malloc_r+0x246>
    5560:	9b00      	ldr	r3, [sp, #0]
    5562:	68b2      	ldr	r2, [r6, #8]
    5564:	4443      	add	r3, r8
    5566:	0018      	movs	r0, r3
    5568:	2301      	movs	r3, #1
    556a:	4303      	orrs	r3, r0
    556c:	6053      	str	r3, [r2, #4]
    556e:	e6f7      	b.n	5360 <_malloc_r+0x2d4>
    5570:	237f      	movs	r3, #127	; 0x7f
    5572:	4698      	mov	r8, r3
    5574:	3b01      	subs	r3, #1
    5576:	21fe      	movs	r1, #254	; 0xfe
    5578:	469c      	mov	ip, r3
    557a:	e5b1      	b.n	50e0 <_malloc_r+0x54>
    557c:	465b      	mov	r3, fp
    557e:	464a      	mov	r2, r9
    5580:	601a      	str	r2, [r3, #0]
    5582:	e6b1      	b.n	52e8 <_malloc_r+0x25c>
    5584:	2300      	movs	r3, #0
    5586:	2001      	movs	r0, #1
    5588:	469b      	mov	fp, r3
    558a:	e6ca      	b.n	5322 <_malloc_r+0x296>
    558c:	0021      	movs	r1, r4
    558e:	0038      	movs	r0, r7
    5590:	3108      	adds	r1, #8
    5592:	f7ff fc99 	bl	4ec8 <_free_r>
    5596:	4653      	mov	r3, sl
    5598:	6819      	ldr	r1, [r3, #0]
    559a:	e6e1      	b.n	5360 <_malloc_r+0x2d4>
    559c:	20aa      	movs	r0, #170	; 0xaa
    559e:	0040      	lsls	r0, r0, #1
    55a0:	4282      	cmp	r2, r0
    55a2:	d805      	bhi.n	55b0 <_malloc_r+0x524>
    55a4:	0bca      	lsrs	r2, r1, #15
    55a6:	0010      	movs	r0, r2
    55a8:	3278      	adds	r2, #120	; 0x78
    55aa:	3077      	adds	r0, #119	; 0x77
    55ac:	0052      	lsls	r2, r2, #1
    55ae:	e70d      	b.n	53cc <_malloc_r+0x340>
    55b0:	480a      	ldr	r0, [pc, #40]	; (55dc <_malloc_r+0x550>)
    55b2:	4282      	cmp	r2, r0
    55b4:	d805      	bhi.n	55c2 <_malloc_r+0x536>
    55b6:	0c8a      	lsrs	r2, r1, #18
    55b8:	0010      	movs	r0, r2
    55ba:	327d      	adds	r2, #125	; 0x7d
    55bc:	307c      	adds	r0, #124	; 0x7c
    55be:	0052      	lsls	r2, r2, #1
    55c0:	e704      	b.n	53cc <_malloc_r+0x340>
    55c2:	22fe      	movs	r2, #254	; 0xfe
    55c4:	207e      	movs	r0, #126	; 0x7e
    55c6:	e701      	b.n	53cc <_malloc_r+0x340>
    55c8:	6873      	ldr	r3, [r6, #4]
    55ca:	e789      	b.n	54e0 <_malloc_r+0x454>
    55cc:	08e9      	lsrs	r1, r5, #3
    55ce:	1c4b      	adds	r3, r1, #1
    55d0:	005b      	lsls	r3, r3, #1
    55d2:	e619      	b.n	5208 <_malloc_r+0x17c>
    55d4:	4653      	mov	r3, sl
    55d6:	9300      	str	r3, [sp, #0]
    55d8:	e5e0      	b.n	519c <_malloc_r+0x110>
    55da:	46c0      	nop			; (mov r8, r8)
    55dc:	00000554 	.word	0x00000554

000055e0 <__malloc_lock>:
    55e0:	4770      	bx	lr
    55e2:	46c0      	nop			; (mov r8, r8)

000055e4 <__malloc_unlock>:
    55e4:	4770      	bx	lr
    55e6:	46c0      	nop			; (mov r8, r8)

000055e8 <_sbrk_r>:
    55e8:	2300      	movs	r3, #0
    55ea:	b570      	push	{r4, r5, r6, lr}
    55ec:	4c06      	ldr	r4, [pc, #24]	; (5608 <_sbrk_r+0x20>)
    55ee:	0005      	movs	r5, r0
    55f0:	0008      	movs	r0, r1
    55f2:	6023      	str	r3, [r4, #0]
    55f4:	f7fb faca 	bl	b8c <_sbrk>
    55f8:	1c43      	adds	r3, r0, #1
    55fa:	d000      	beq.n	55fe <_sbrk_r+0x16>
    55fc:	bd70      	pop	{r4, r5, r6, pc}
    55fe:	6823      	ldr	r3, [r4, #0]
    5600:	2b00      	cmp	r3, #0
    5602:	d0fb      	beq.n	55fc <_sbrk_r+0x14>
    5604:	602b      	str	r3, [r5, #0]
    5606:	e7f9      	b.n	55fc <_sbrk_r+0x14>
    5608:	20006070 	.word	0x20006070

0000560c <osThreadExit>:
    560c:	b580      	push	{r7, lr}
    560e:	4f03      	ldr	r7, [pc, #12]	; (561c <osThreadExit+0x10>)
    5610:	46bc      	mov	ip, r7
    5612:	df00      	svc	0
    5614:	4f02      	ldr	r7, [pc, #8]	; (5620 <osThreadExit+0x14>)
    5616:	46bc      	mov	ip, r7
    5618:	df00      	svc	0
    561a:	e7fe      	b.n	561a <osThreadExit+0xe>
    561c:	00005a4d 	.word	0x00005a4d
    5620:	00005a69 	.word	0x00005a69

00005624 <svcKernelInitialize>:
    5624:	b570      	push	{r4, r5, r6, lr}
    5626:	4c39      	ldr	r4, [pc, #228]	; (570c <svcKernelInitialize+0xe8>)
    5628:	b084      	sub	sp, #16
    562a:	7823      	ldrb	r3, [r4, #0]
    562c:	2b00      	cmp	r3, #0
    562e:	d00b      	beq.n	5648 <svcKernelInitialize+0x24>
    5630:	22ff      	movs	r2, #255	; 0xff
    5632:	4b37      	ldr	r3, [pc, #220]	; (5710 <svcKernelInitialize+0xec>)
    5634:	681b      	ldr	r3, [r3, #0]
    5636:	709a      	strb	r2, [r3, #2]
    5638:	2301      	movs	r3, #1
    563a:	2200      	movs	r2, #0
    563c:	2000      	movs	r0, #0
    563e:	7023      	strb	r3, [r4, #0]
    5640:	4b34      	ldr	r3, [pc, #208]	; (5714 <svcKernelInitialize+0xf0>)
    5642:	701a      	strb	r2, [r3, #0]
    5644:	b004      	add	sp, #16
    5646:	bd70      	pop	{r4, r5, r6, pc}
    5648:	4b33      	ldr	r3, [pc, #204]	; (5718 <svcKernelInitialize+0xf4>)
    564a:	4e34      	ldr	r6, [pc, #208]	; (571c <svcKernelInitialize+0xf8>)
    564c:	6819      	ldr	r1, [r3, #0]
    564e:	0030      	movs	r0, r6
    5650:	f001 fc60 	bl	6f14 <rt_init_mem>
    5654:	0003      	movs	r3, r0
    5656:	2085      	movs	r0, #133	; 0x85
    5658:	2b00      	cmp	r3, #0
    565a:	d1f3      	bne.n	5644 <svcKernelInitialize+0x20>
    565c:	f002 fe70 	bl	8340 <rt_sys_init>
    5660:	21ff      	movs	r1, #255	; 0xff
    5662:	4a2b      	ldr	r2, [pc, #172]	; (5710 <svcKernelInitialize+0xec>)
    5664:	7823      	ldrb	r3, [r4, #0]
    5666:	6812      	ldr	r2, [r2, #0]
    5668:	7091      	strb	r1, [r2, #2]
    566a:	2b00      	cmp	r3, #0
    566c:	d1e4      	bne.n	5638 <svcKernelInitialize+0x14>
    566e:	4b2c      	ldr	r3, [pc, #176]	; (5720 <svcKernelInitialize+0xfc>)
    5670:	681a      	ldr	r2, [r3, #0]
    5672:	9201      	str	r2, [sp, #4]
    5674:	2a00      	cmp	r2, #0
    5676:	d047      	beq.n	5708 <svcKernelInitialize+0xe4>
    5678:	685d      	ldr	r5, [r3, #4]
    567a:	2d00      	cmp	r5, #0
    567c:	d044      	beq.n	5708 <svcKernelInitialize+0xe4>
    567e:	782b      	ldrb	r3, [r5, #0]
    5680:	2b00      	cmp	r3, #0
    5682:	d141      	bne.n	5708 <svcKernelInitialize+0xe4>
    5684:	0011      	movs	r1, r2
    5686:	3104      	adds	r1, #4
    5688:	0089      	lsls	r1, r1, #2
    568a:	b289      	uxth	r1, r1
    568c:	0028      	movs	r0, r5
    568e:	f001 feeb 	bl	7468 <rt_mbx_init>
    5692:	4b24      	ldr	r3, [pc, #144]	; (5724 <svcKernelInitialize+0x100>)
    5694:	601d      	str	r5, [r3, #0]
    5696:	4b24      	ldr	r3, [pc, #144]	; (5728 <svcKernelInitialize+0x104>)
    5698:	681a      	ldr	r2, [r3, #0]
    569a:	9201      	str	r2, [sp, #4]
    569c:	2a00      	cmp	r2, #0
    569e:	d01e      	beq.n	56de <svcKernelInitialize+0xba>
    56a0:	685a      	ldr	r2, [r3, #4]
    56a2:	9202      	str	r2, [sp, #8]
    56a4:	3203      	adds	r2, #3
    56a6:	2a06      	cmp	r2, #6
    56a8:	d819      	bhi.n	56de <svcKernelInitialize+0xba>
    56aa:	68db      	ldr	r3, [r3, #12]
    56ac:	9303      	str	r3, [sp, #12]
    56ae:	2b00      	cmp	r3, #0
    56b0:	d019      	beq.n	56e6 <svcKernelInitialize+0xc2>
    56b2:	0019      	movs	r1, r3
    56b4:	0030      	movs	r0, r6
    56b6:	f001 fc3b 	bl	6f30 <rt_alloc_mem>
    56ba:	1e05      	subs	r5, r0, #0
    56bc:	d00f      	beq.n	56de <svcKernelInitialize+0xba>
    56be:	9b03      	ldr	r3, [sp, #12]
    56c0:	9902      	ldr	r1, [sp, #8]
    56c2:	021b      	lsls	r3, r3, #8
    56c4:	3104      	adds	r1, #4
    56c6:	4319      	orrs	r1, r3
    56c8:	0002      	movs	r2, r0
    56ca:	2300      	movs	r3, #0
    56cc:	9801      	ldr	r0, [sp, #4]
    56ce:	f002 fcf7 	bl	80c0 <rt_tsk_create>
    56d2:	2800      	cmp	r0, #0
    56d4:	d110      	bne.n	56f8 <svcKernelInitialize+0xd4>
    56d6:	0029      	movs	r1, r5
    56d8:	0030      	movs	r0, r6
    56da:	f001 fc4b 	bl	6f74 <rt_free_mem>
    56de:	2300      	movs	r3, #0
    56e0:	4a12      	ldr	r2, [pc, #72]	; (572c <svcKernelInitialize+0x108>)
    56e2:	6013      	str	r3, [r2, #0]
    56e4:	e7a8      	b.n	5638 <svcKernelInitialize+0x14>
    56e6:	9902      	ldr	r1, [sp, #8]
    56e8:	2300      	movs	r3, #0
    56ea:	3104      	adds	r1, #4
    56ec:	2200      	movs	r2, #0
    56ee:	9801      	ldr	r0, [sp, #4]
    56f0:	f002 fce6 	bl	80c0 <rt_tsk_create>
    56f4:	2800      	cmp	r0, #0
    56f6:	d0f2      	beq.n	56de <svcKernelInitialize+0xba>
    56f8:	3801      	subs	r0, #1
    56fa:	4b0d      	ldr	r3, [pc, #52]	; (5730 <svcKernelInitialize+0x10c>)
    56fc:	0080      	lsls	r0, r0, #2
    56fe:	58c3      	ldr	r3, [r0, r3]
    5700:	490c      	ldr	r1, [pc, #48]	; (5734 <svcKernelInitialize+0x110>)
    5702:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5704:	6351      	str	r1, [r2, #52]	; 0x34
    5706:	e7eb      	b.n	56e0 <svcKernelInitialize+0xbc>
    5708:	2500      	movs	r5, #0
    570a:	e7c2      	b.n	5692 <svcKernelInitialize+0x6e>
    570c:	20006074 	.word	0x20006074
    5710:	200060b4 	.word	0x200060b4
    5714:	20006075 	.word	0x20006075
    5718:	00008648 	.word	0x00008648
    571c:	200039f8 	.word	0x200039f8
    5720:	00008660 	.word	0x00008660
    5724:	20004d10 	.word	0x20004d10
    5728:	00008650 	.word	0x00008650
    572c:	20004cec 	.word	0x20004cec
    5730:	20004cdc 	.word	0x20004cdc
    5734:	0000560d 	.word	0x0000560d

00005738 <svcKernelStart>:
    5738:	b570      	push	{r4, r5, r6, lr}
    573a:	4c10      	ldr	r4, [pc, #64]	; (577c <svcKernelStart+0x44>)
    573c:	7823      	ldrb	r3, [r4, #0]
    573e:	2b00      	cmp	r3, #0
    5740:	d001      	beq.n	5746 <svcKernelStart+0xe>
    5742:	2000      	movs	r0, #0
    5744:	bd70      	pop	{r4, r5, r6, pc}
    5746:	4d0e      	ldr	r5, [pc, #56]	; (5780 <svcKernelStart+0x48>)
    5748:	3324      	adds	r3, #36	; 0x24
    574a:	682a      	ldr	r2, [r5, #0]
    574c:	2000      	movs	r0, #0
    574e:	5cd1      	ldrb	r1, [r2, r3]
    5750:	f002 fc5a 	bl	8008 <rt_tsk_prio>
    5754:	682b      	ldr	r3, [r5, #0]
    5756:	78da      	ldrb	r2, [r3, #3]
    5758:	2aff      	cmp	r2, #255	; 0xff
    575a:	d007      	beq.n	576c <svcKernelStart+0x34>
    575c:	686a      	ldr	r2, [r5, #4]
    575e:	2a00      	cmp	r2, #0
    5760:	d009      	beq.n	5776 <svcKernelStart+0x3e>
    5762:	f002 fe65 	bl	8430 <rt_sys_start>
    5766:	2301      	movs	r3, #1
    5768:	7023      	strb	r3, [r4, #0]
    576a:	e7ea      	b.n	5742 <svcKernelStart+0xa>
    576c:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    576e:	3220      	adds	r2, #32
    5770:	f382 8809 	msr	PSP, r2
    5774:	e7f2      	b.n	575c <svcKernelStart+0x24>
    5776:	c50c      	stmia	r5!, {r2, r3}
    5778:	e7f3      	b.n	5762 <svcKernelStart+0x2a>
    577a:	46c0      	nop			; (mov r8, r8)
    577c:	20006075 	.word	0x20006075
    5780:	200060b4 	.word	0x200060b4

00005784 <svcKernelRunning>:
    5784:	4b01      	ldr	r3, [pc, #4]	; (578c <svcKernelRunning+0x8>)
    5786:	7818      	ldrb	r0, [r3, #0]
    5788:	4770      	bx	lr
    578a:	46c0      	nop			; (mov r8, r8)
    578c:	20006075 	.word	0x20006075

00005790 <svcKernelSysTick>:
    5790:	b510      	push	{r4, lr}
    5792:	b082      	sub	sp, #8
    5794:	f002 fb88 	bl	7ea8 <os_tick_val>
    5798:	0004      	movs	r4, r0
    579a:	f002 fb8f 	bl	7ebc <os_tick_ovf>
    579e:	2800      	cmp	r0, #0
    57a0:	d109      	bne.n	57b6 <svcKernelSysTick+0x26>
    57a2:	4b0d      	ldr	r3, [pc, #52]	; (57d8 <svcKernelSysTick+0x48>)
    57a4:	681b      	ldr	r3, [r3, #0]
    57a6:	1c58      	adds	r0, r3, #1
    57a8:	9301      	str	r3, [sp, #4]
    57aa:	4b0c      	ldr	r3, [pc, #48]	; (57dc <svcKernelSysTick+0x4c>)
    57ac:	681b      	ldr	r3, [r3, #0]
    57ae:	4358      	muls	r0, r3
    57b0:	1900      	adds	r0, r0, r4
    57b2:	b002      	add	sp, #8
    57b4:	bd10      	pop	{r4, pc}
    57b6:	f002 fb77 	bl	7ea8 <os_tick_val>
    57ba:	4284      	cmp	r4, r0
    57bc:	d809      	bhi.n	57d2 <svcKernelSysTick+0x42>
    57be:	4b06      	ldr	r3, [pc, #24]	; (57d8 <svcKernelSysTick+0x48>)
    57c0:	4a06      	ldr	r2, [pc, #24]	; (57dc <svcKernelSysTick+0x4c>)
    57c2:	681b      	ldr	r3, [r3, #0]
    57c4:	6810      	ldr	r0, [r2, #0]
    57c6:	9301      	str	r3, [sp, #4]
    57c8:	3001      	adds	r0, #1
    57ca:	3301      	adds	r3, #1
    57cc:	4358      	muls	r0, r3
    57ce:	1900      	adds	r0, r0, r4
    57d0:	e7ef      	b.n	57b2 <svcKernelSysTick+0x22>
    57d2:	0004      	movs	r4, r0
    57d4:	e7f3      	b.n	57be <svcKernelSysTick+0x2e>
    57d6:	46c0      	nop			; (mov r8, r8)
    57d8:	00008628 	.word	0x00008628
    57dc:	2000607c 	.word	0x2000607c

000057e0 <osKernelInitialize>:
    57e0:	b5f0      	push	{r4, r5, r6, r7, lr}
    57e2:	b085      	sub	sp, #20
    57e4:	f3ef 8405 	mrs	r4, IPSR
    57e8:	2582      	movs	r5, #130	; 0x82
    57ea:	2c00      	cmp	r4, #0
    57ec:	d002      	beq.n	57f4 <osKernelInitialize+0x14>
    57ee:	0028      	movs	r0, r5
    57f0:	b005      	add	sp, #20
    57f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    57f4:	f3ef 8414 	mrs	r4, CONTROL
    57f8:	07e4      	lsls	r4, r4, #31
    57fa:	d504      	bpl.n	5806 <osKernelInitialize+0x26>
    57fc:	4f45      	ldr	r7, [pc, #276]	; (5914 <osKernelInitialize+0x134>)
    57fe:	46bc      	mov	ip, r7
    5800:	df00      	svc	0
    5802:	0005      	movs	r5, r0
    5804:	e7f3      	b.n	57ee <osKernelInitialize+0xe>
    5806:	4c38      	ldr	r4, [pc, #224]	; (58e8 <osKernelInitialize+0x108>)
    5808:	7823      	ldrb	r3, [r4, #0]
    580a:	2b00      	cmp	r3, #0
    580c:	d00a      	beq.n	5824 <osKernelInitialize+0x44>
    580e:	22ff      	movs	r2, #255	; 0xff
    5810:	4b36      	ldr	r3, [pc, #216]	; (58ec <osKernelInitialize+0x10c>)
    5812:	681b      	ldr	r3, [r3, #0]
    5814:	709a      	strb	r2, [r3, #2]
    5816:	2301      	movs	r3, #1
    5818:	2200      	movs	r2, #0
    581a:	7023      	strb	r3, [r4, #0]
    581c:	4b34      	ldr	r3, [pc, #208]	; (58f0 <osKernelInitialize+0x110>)
    581e:	2500      	movs	r5, #0
    5820:	701a      	strb	r2, [r3, #0]
    5822:	e7e4      	b.n	57ee <osKernelInitialize+0xe>
    5824:	4e33      	ldr	r6, [pc, #204]	; (58f4 <osKernelInitialize+0x114>)
    5826:	4b34      	ldr	r3, [pc, #208]	; (58f8 <osKernelInitialize+0x118>)
    5828:	0030      	movs	r0, r6
    582a:	6819      	ldr	r1, [r3, #0]
    582c:	f001 fb72 	bl	6f14 <rt_init_mem>
    5830:	3503      	adds	r5, #3
    5832:	2800      	cmp	r0, #0
    5834:	d1db      	bne.n	57ee <osKernelInitialize+0xe>
    5836:	f002 fd83 	bl	8340 <rt_sys_init>
    583a:	21ff      	movs	r1, #255	; 0xff
    583c:	4a2b      	ldr	r2, [pc, #172]	; (58ec <osKernelInitialize+0x10c>)
    583e:	7823      	ldrb	r3, [r4, #0]
    5840:	6812      	ldr	r2, [r2, #0]
    5842:	7091      	strb	r1, [r2, #2]
    5844:	2b00      	cmp	r3, #0
    5846:	d1e6      	bne.n	5816 <osKernelInitialize+0x36>
    5848:	4b2c      	ldr	r3, [pc, #176]	; (58fc <osKernelInitialize+0x11c>)
    584a:	681a      	ldr	r2, [r3, #0]
    584c:	9201      	str	r2, [sp, #4]
    584e:	2a00      	cmp	r2, #0
    5850:	d047      	beq.n	58e2 <osKernelInitialize+0x102>
    5852:	685d      	ldr	r5, [r3, #4]
    5854:	2d00      	cmp	r5, #0
    5856:	d044      	beq.n	58e2 <osKernelInitialize+0x102>
    5858:	782b      	ldrb	r3, [r5, #0]
    585a:	2b00      	cmp	r3, #0
    585c:	d141      	bne.n	58e2 <osKernelInitialize+0x102>
    585e:	0011      	movs	r1, r2
    5860:	3104      	adds	r1, #4
    5862:	0089      	lsls	r1, r1, #2
    5864:	b289      	uxth	r1, r1
    5866:	0028      	movs	r0, r5
    5868:	f001 fdfe 	bl	7468 <rt_mbx_init>
    586c:	4b24      	ldr	r3, [pc, #144]	; (5900 <osKernelInitialize+0x120>)
    586e:	601d      	str	r5, [r3, #0]
    5870:	4b24      	ldr	r3, [pc, #144]	; (5904 <osKernelInitialize+0x124>)
    5872:	681a      	ldr	r2, [r3, #0]
    5874:	9201      	str	r2, [sp, #4]
    5876:	2a00      	cmp	r2, #0
    5878:	d01e      	beq.n	58b8 <osKernelInitialize+0xd8>
    587a:	685a      	ldr	r2, [r3, #4]
    587c:	9202      	str	r2, [sp, #8]
    587e:	3203      	adds	r2, #3
    5880:	2a06      	cmp	r2, #6
    5882:	d819      	bhi.n	58b8 <osKernelInitialize+0xd8>
    5884:	68db      	ldr	r3, [r3, #12]
    5886:	9303      	str	r3, [sp, #12]
    5888:	2b00      	cmp	r3, #0
    588a:	d019      	beq.n	58c0 <osKernelInitialize+0xe0>
    588c:	0019      	movs	r1, r3
    588e:	0030      	movs	r0, r6
    5890:	f001 fb4e 	bl	6f30 <rt_alloc_mem>
    5894:	1e05      	subs	r5, r0, #0
    5896:	d00f      	beq.n	58b8 <osKernelInitialize+0xd8>
    5898:	9902      	ldr	r1, [sp, #8]
    589a:	9b03      	ldr	r3, [sp, #12]
    589c:	3104      	adds	r1, #4
    589e:	021b      	lsls	r3, r3, #8
    58a0:	4319      	orrs	r1, r3
    58a2:	0002      	movs	r2, r0
    58a4:	2300      	movs	r3, #0
    58a6:	9801      	ldr	r0, [sp, #4]
    58a8:	f002 fc0a 	bl	80c0 <rt_tsk_create>
    58ac:	2800      	cmp	r0, #0
    58ae:	d110      	bne.n	58d2 <osKernelInitialize+0xf2>
    58b0:	0029      	movs	r1, r5
    58b2:	0030      	movs	r0, r6
    58b4:	f001 fb5e 	bl	6f74 <rt_free_mem>
    58b8:	2300      	movs	r3, #0
    58ba:	4a13      	ldr	r2, [pc, #76]	; (5908 <osKernelInitialize+0x128>)
    58bc:	6013      	str	r3, [r2, #0]
    58be:	e7aa      	b.n	5816 <osKernelInitialize+0x36>
    58c0:	9902      	ldr	r1, [sp, #8]
    58c2:	2300      	movs	r3, #0
    58c4:	3104      	adds	r1, #4
    58c6:	2200      	movs	r2, #0
    58c8:	9801      	ldr	r0, [sp, #4]
    58ca:	f002 fbf9 	bl	80c0 <rt_tsk_create>
    58ce:	2800      	cmp	r0, #0
    58d0:	d0f2      	beq.n	58b8 <osKernelInitialize+0xd8>
    58d2:	3801      	subs	r0, #1
    58d4:	4b0d      	ldr	r3, [pc, #52]	; (590c <osKernelInitialize+0x12c>)
    58d6:	0080      	lsls	r0, r0, #2
    58d8:	58c3      	ldr	r3, [r0, r3]
    58da:	490d      	ldr	r1, [pc, #52]	; (5910 <osKernelInitialize+0x130>)
    58dc:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    58de:	6351      	str	r1, [r2, #52]	; 0x34
    58e0:	e7eb      	b.n	58ba <osKernelInitialize+0xda>
    58e2:	2500      	movs	r5, #0
    58e4:	e7c2      	b.n	586c <osKernelInitialize+0x8c>
    58e6:	46c0      	nop			; (mov r8, r8)
    58e8:	20006074 	.word	0x20006074
    58ec:	200060b4 	.word	0x200060b4
    58f0:	20006075 	.word	0x20006075
    58f4:	200039f8 	.word	0x200039f8
    58f8:	00008648 	.word	0x00008648
    58fc:	00008660 	.word	0x00008660
    5900:	20004d10 	.word	0x20004d10
    5904:	00008650 	.word	0x00008650
    5908:	20004cec 	.word	0x20004cec
    590c:	20004cdc 	.word	0x20004cdc
    5910:	0000560d 	.word	0x0000560d
    5914:	00005625 	.word	0x00005625

00005918 <osKernelStart>:
    5918:	b5b0      	push	{r4, r5, r7, lr}
    591a:	b088      	sub	sp, #32
    591c:	f3ef 8405 	mrs	r4, IPSR
    5920:	2582      	movs	r5, #130	; 0x82
    5922:	2c00      	cmp	r4, #0
    5924:	d002      	beq.n	592c <osKernelStart+0x14>
    5926:	0028      	movs	r0, r5
    5928:	b008      	add	sp, #32
    592a:	bdb0      	pop	{r4, r5, r7, pc}
    592c:	f3ef 8414 	mrs	r4, CONTROL
    5930:	3d7f      	subs	r5, #127	; 0x7f
    5932:	402c      	ands	r4, r5
    5934:	2c02      	cmp	r4, #2
    5936:	d01c      	beq.n	5972 <osKernelStart+0x5a>
    5938:	2c03      	cmp	r4, #3
    593a:	d014      	beq.n	5966 <osKernelStart+0x4e>
    593c:	2c01      	cmp	r4, #1
    593e:	d020      	beq.n	5982 <osKernelStart+0x6a>
    5940:	ac08      	add	r4, sp, #32
    5942:	f384 8809 	msr	PSP, r4
    5946:	4c10      	ldr	r4, [pc, #64]	; (5988 <osKernelStart+0x70>)
    5948:	7824      	ldrb	r4, [r4, #0]
    594a:	07e4      	lsls	r4, r4, #31
    594c:	d515      	bpl.n	597a <osKernelStart+0x62>
    594e:	2402      	movs	r4, #2
    5950:	f384 8814 	msr	CONTROL, r4
    5954:	f3bf 8f4f 	dsb	sy
    5958:	f3bf 8f6f 	isb	sy
    595c:	4f0b      	ldr	r7, [pc, #44]	; (598c <osKernelStart+0x74>)
    595e:	46bc      	mov	ip, r7
    5960:	df00      	svc	0
    5962:	0005      	movs	r5, r0
    5964:	e7df      	b.n	5926 <osKernelStart+0xe>
    5966:	4c08      	ldr	r4, [pc, #32]	; (5988 <osKernelStart+0x70>)
    5968:	25ff      	movs	r5, #255	; 0xff
    596a:	7824      	ldrb	r4, [r4, #0]
    596c:	07e4      	lsls	r4, r4, #31
    596e:	d4da      	bmi.n	5926 <osKernelStart+0xe>
    5970:	e7f4      	b.n	595c <osKernelStart+0x44>
    5972:	4c05      	ldr	r4, [pc, #20]	; (5988 <osKernelStart+0x70>)
    5974:	7824      	ldrb	r4, [r4, #0]
    5976:	07e4      	lsls	r4, r4, #31
    5978:	d4f0      	bmi.n	595c <osKernelStart+0x44>
    597a:	2403      	movs	r4, #3
    597c:	f384 8814 	msr	CONTROL, r4
    5980:	e7e8      	b.n	5954 <osKernelStart+0x3c>
    5982:	25ff      	movs	r5, #255	; 0xff
    5984:	e7cf      	b.n	5926 <osKernelStart+0xe>
    5986:	46c0      	nop			; (mov r8, r8)
    5988:	0000862c 	.word	0x0000862c
    598c:	00005739 	.word	0x00005739

00005990 <osKernelRunning>:
    5990:	b590      	push	{r4, r7, lr}
    5992:	f3ef 8405 	mrs	r4, IPSR
    5996:	2c00      	cmp	r4, #0
    5998:	d107      	bne.n	59aa <osKernelRunning+0x1a>
    599a:	f3ef 8414 	mrs	r4, CONTROL
    599e:	07e4      	lsls	r4, r4, #31
    59a0:	d503      	bpl.n	59aa <osKernelRunning+0x1a>
    59a2:	4f04      	ldr	r7, [pc, #16]	; (59b4 <osKernelRunning+0x24>)
    59a4:	46bc      	mov	ip, r7
    59a6:	df00      	svc	0
    59a8:	e001      	b.n	59ae <osKernelRunning+0x1e>
    59aa:	4b01      	ldr	r3, [pc, #4]	; (59b0 <osKernelRunning+0x20>)
    59ac:	7818      	ldrb	r0, [r3, #0]
    59ae:	bd90      	pop	{r4, r7, pc}
    59b0:	20006075 	.word	0x20006075
    59b4:	00005785 	.word	0x00005785

000059b8 <osKernelSysTick>:
    59b8:	b5b0      	push	{r4, r5, r7, lr}
    59ba:	f3ef 8405 	mrs	r4, IPSR
    59be:	2500      	movs	r5, #0
    59c0:	2c00      	cmp	r4, #0
    59c2:	d103      	bne.n	59cc <osKernelSysTick+0x14>
    59c4:	4f02      	ldr	r7, [pc, #8]	; (59d0 <osKernelSysTick+0x18>)
    59c6:	46bc      	mov	ip, r7
    59c8:	df00      	svc	0
    59ca:	0005      	movs	r5, r0
    59cc:	0028      	movs	r0, r5
    59ce:	bdb0      	pop	{r4, r5, r7, pc}
    59d0:	00005791 	.word	0x00005791

000059d4 <svcThreadCreate>:
    59d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    59d6:	0004      	movs	r4, r0
    59d8:	000d      	movs	r5, r1
    59da:	2800      	cmp	r0, #0
    59dc:	d01f      	beq.n	5a1e <svcThreadCreate+0x4a>
    59de:	6800      	ldr	r0, [r0, #0]
    59e0:	2800      	cmp	r0, #0
    59e2:	d01c      	beq.n	5a1e <svcThreadCreate+0x4a>
    59e4:	6863      	ldr	r3, [r4, #4]
    59e6:	1cda      	adds	r2, r3, #3
    59e8:	2a06      	cmp	r2, #6
    59ea:	d818      	bhi.n	5a1e <svcThreadCreate+0x4a>
    59ec:	68e1      	ldr	r1, [r4, #12]
    59ee:	2900      	cmp	r1, #0
    59f0:	d017      	beq.n	5a22 <svcThreadCreate+0x4e>
    59f2:	4e13      	ldr	r6, [pc, #76]	; (5a40 <svcThreadCreate+0x6c>)
    59f4:	0030      	movs	r0, r6
    59f6:	f001 fa9b 	bl	6f30 <rt_alloc_mem>
    59fa:	1e07      	subs	r7, r0, #0
    59fc:	d00f      	beq.n	5a1e <svcThreadCreate+0x4a>
    59fe:	6863      	ldr	r3, [r4, #4]
    5a00:	6820      	ldr	r0, [r4, #0]
    5a02:	1d19      	adds	r1, r3, #4
    5a04:	68e3      	ldr	r3, [r4, #12]
    5a06:	003a      	movs	r2, r7
    5a08:	021b      	lsls	r3, r3, #8
    5a0a:	4319      	orrs	r1, r3
    5a0c:	002b      	movs	r3, r5
    5a0e:	f002 fb57 	bl	80c0 <rt_tsk_create>
    5a12:	2800      	cmp	r0, #0
    5a14:	d10c      	bne.n	5a30 <svcThreadCreate+0x5c>
    5a16:	0039      	movs	r1, r7
    5a18:	0030      	movs	r0, r6
    5a1a:	f001 faab 	bl	6f74 <rt_free_mem>
    5a1e:	2000      	movs	r0, #0
    5a20:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5a22:	1d19      	adds	r1, r3, #4
    5a24:	2200      	movs	r2, #0
    5a26:	002b      	movs	r3, r5
    5a28:	f002 fb4a 	bl	80c0 <rt_tsk_create>
    5a2c:	2800      	cmp	r0, #0
    5a2e:	d0f6      	beq.n	5a1e <svcThreadCreate+0x4a>
    5a30:	4b04      	ldr	r3, [pc, #16]	; (5a44 <svcThreadCreate+0x70>)
    5a32:	3801      	subs	r0, #1
    5a34:	0080      	lsls	r0, r0, #2
    5a36:	58c0      	ldr	r0, [r0, r3]
    5a38:	4a03      	ldr	r2, [pc, #12]	; (5a48 <svcThreadCreate+0x74>)
    5a3a:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5a3c:	635a      	str	r2, [r3, #52]	; 0x34
    5a3e:	e7ef      	b.n	5a20 <svcThreadCreate+0x4c>
    5a40:	200039f8 	.word	0x200039f8
    5a44:	20004cdc 	.word	0x20004cdc
    5a48:	0000560d 	.word	0x0000560d

00005a4c <svcThreadGetId>:
    5a4c:	b510      	push	{r4, lr}
    5a4e:	f002 fad1 	bl	7ff4 <rt_tsk_self>
    5a52:	2800      	cmp	r0, #0
    5a54:	d004      	beq.n	5a60 <svcThreadGetId+0x14>
    5a56:	3801      	subs	r0, #1
    5a58:	4b02      	ldr	r3, [pc, #8]	; (5a64 <svcThreadGetId+0x18>)
    5a5a:	0080      	lsls	r0, r0, #2
    5a5c:	58c0      	ldr	r0, [r0, r3]
    5a5e:	bd10      	pop	{r4, pc}
    5a60:	2000      	movs	r0, #0
    5a62:	e7fc      	b.n	5a5e <svcThreadGetId+0x12>
    5a64:	20004cdc 	.word	0x20004cdc

00005a68 <svcThreadTerminate>:
    5a68:	0003      	movs	r3, r0
    5a6a:	b510      	push	{r4, lr}
    5a6c:	2080      	movs	r0, #128	; 0x80
    5a6e:	2b00      	cmp	r3, #0
    5a70:	d017      	beq.n	5aa2 <svcThreadTerminate+0x3a>
    5a72:	079a      	lsls	r2, r3, #30
    5a74:	d115      	bne.n	5aa2 <svcThreadTerminate+0x3a>
    5a76:	781a      	ldrb	r2, [r3, #0]
    5a78:	2a00      	cmp	r2, #0
    5a7a:	d112      	bne.n	5aa2 <svcThreadTerminate+0x3a>
    5a7c:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    5a7e:	2400      	movs	r4, #0
    5a80:	2a00      	cmp	r2, #0
    5a82:	d000      	beq.n	5a86 <svcThreadTerminate+0x1e>
    5a84:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    5a86:	78d8      	ldrb	r0, [r3, #3]
    5a88:	f002 fb94 	bl	81b4 <rt_tsk_delete>
    5a8c:	0003      	movs	r3, r0
    5a8e:	2081      	movs	r0, #129	; 0x81
    5a90:	2bff      	cmp	r3, #255	; 0xff
    5a92:	d006      	beq.n	5aa2 <svcThreadTerminate+0x3a>
    5a94:	2c00      	cmp	r4, #0
    5a96:	d005      	beq.n	5aa4 <svcThreadTerminate+0x3c>
    5a98:	0021      	movs	r1, r4
    5a9a:	4803      	ldr	r0, [pc, #12]	; (5aa8 <svcThreadTerminate+0x40>)
    5a9c:	f001 fa6a 	bl	6f74 <rt_free_mem>
    5aa0:	2000      	movs	r0, #0
    5aa2:	bd10      	pop	{r4, pc}
    5aa4:	2000      	movs	r0, #0
    5aa6:	e7fc      	b.n	5aa2 <svcThreadTerminate+0x3a>
    5aa8:	200039f8 	.word	0x200039f8

00005aac <svcThreadYield>:
    5aac:	b510      	push	{r4, lr}
    5aae:	f002 fa8b 	bl	7fc8 <rt_tsk_pass>
    5ab2:	2000      	movs	r0, #0
    5ab4:	bd10      	pop	{r4, pc}
    5ab6:	46c0      	nop			; (mov r8, r8)

00005ab8 <svcThreadSetPriority>:
    5ab8:	0003      	movs	r3, r0
    5aba:	b510      	push	{r4, lr}
    5abc:	2080      	movs	r0, #128	; 0x80
    5abe:	2b00      	cmp	r3, #0
    5ac0:	d008      	beq.n	5ad4 <svcThreadSetPriority+0x1c>
    5ac2:	079a      	lsls	r2, r3, #30
    5ac4:	d106      	bne.n	5ad4 <svcThreadSetPriority+0x1c>
    5ac6:	781a      	ldrb	r2, [r3, #0]
    5ac8:	2a00      	cmp	r2, #0
    5aca:	d103      	bne.n	5ad4 <svcThreadSetPriority+0x1c>
    5acc:	1cca      	adds	r2, r1, #3
    5ace:	2086      	movs	r0, #134	; 0x86
    5ad0:	2a06      	cmp	r2, #6
    5ad2:	d900      	bls.n	5ad6 <svcThreadSetPriority+0x1e>
    5ad4:	bd10      	pop	{r4, pc}
    5ad6:	3104      	adds	r1, #4
    5ad8:	78d8      	ldrb	r0, [r3, #3]
    5ada:	b2c9      	uxtb	r1, r1
    5adc:	f002 fa94 	bl	8008 <rt_tsk_prio>
    5ae0:	0003      	movs	r3, r0
    5ae2:	2081      	movs	r0, #129	; 0x81
    5ae4:	2bff      	cmp	r3, #255	; 0xff
    5ae6:	d0f5      	beq.n	5ad4 <svcThreadSetPriority+0x1c>
    5ae8:	2000      	movs	r0, #0
    5aea:	e7f3      	b.n	5ad4 <svcThreadSetPriority+0x1c>

00005aec <svcThreadGetPriority>:
    5aec:	0003      	movs	r3, r0
    5aee:	2084      	movs	r0, #132	; 0x84
    5af0:	2b00      	cmp	r3, #0
    5af2:	d006      	beq.n	5b02 <svcThreadGetPriority+0x16>
    5af4:	079a      	lsls	r2, r3, #30
    5af6:	d104      	bne.n	5b02 <svcThreadGetPriority+0x16>
    5af8:	781a      	ldrb	r2, [r3, #0]
    5afa:	2a00      	cmp	r2, #0
    5afc:	d101      	bne.n	5b02 <svcThreadGetPriority+0x16>
    5afe:	7898      	ldrb	r0, [r3, #2]
    5b00:	3804      	subs	r0, #4
    5b02:	4770      	bx	lr

00005b04 <osThreadCreate>:
    5b04:	b5f0      	push	{r4, r5, r6, r7, lr}
    5b06:	4647      	mov	r7, r8
    5b08:	0004      	movs	r4, r0
    5b0a:	b480      	push	{r7}
    5b0c:	000d      	movs	r5, r1
    5b0e:	f3ef 8105 	mrs	r1, IPSR
    5b12:	2900      	cmp	r1, #0
    5b14:	d132      	bne.n	5b7c <osThreadCreate+0x78>
    5b16:	f3ef 8114 	mrs	r1, CONTROL
    5b1a:	07c9      	lsls	r1, r1, #31
    5b1c:	d507      	bpl.n	5b2e <osThreadCreate+0x2a>
    5b1e:	0020      	movs	r0, r4
    5b20:	0029      	movs	r1, r5
    5b22:	4f23      	ldr	r7, [pc, #140]	; (5bb0 <osThreadCreate+0xac>)
    5b24:	46bc      	mov	ip, r7
    5b26:	df00      	svc	0
    5b28:	bc04      	pop	{r2}
    5b2a:	4690      	mov	r8, r2
    5b2c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5b2e:	491c      	ldr	r1, [pc, #112]	; (5ba0 <osThreadCreate+0x9c>)
    5b30:	7809      	ldrb	r1, [r1, #0]
    5b32:	2900      	cmp	r1, #0
    5b34:	d1f3      	bne.n	5b1e <osThreadCreate+0x1a>
    5b36:	2800      	cmp	r0, #0
    5b38:	d020      	beq.n	5b7c <osThreadCreate+0x78>
    5b3a:	6800      	ldr	r0, [r0, #0]
    5b3c:	2800      	cmp	r0, #0
    5b3e:	d01d      	beq.n	5b7c <osThreadCreate+0x78>
    5b40:	6863      	ldr	r3, [r4, #4]
    5b42:	1cda      	adds	r2, r3, #3
    5b44:	2a06      	cmp	r2, #6
    5b46:	d819      	bhi.n	5b7c <osThreadCreate+0x78>
    5b48:	68e1      	ldr	r1, [r4, #12]
    5b4a:	2900      	cmp	r1, #0
    5b4c:	d018      	beq.n	5b80 <osThreadCreate+0x7c>
    5b4e:	4e15      	ldr	r6, [pc, #84]	; (5ba4 <osThreadCreate+0xa0>)
    5b50:	0030      	movs	r0, r6
    5b52:	f001 f9ed 	bl	6f30 <rt_alloc_mem>
    5b56:	4680      	mov	r8, r0
    5b58:	2800      	cmp	r0, #0
    5b5a:	d00f      	beq.n	5b7c <osThreadCreate+0x78>
    5b5c:	6863      	ldr	r3, [r4, #4]
    5b5e:	6820      	ldr	r0, [r4, #0]
    5b60:	1d19      	adds	r1, r3, #4
    5b62:	68e3      	ldr	r3, [r4, #12]
    5b64:	4642      	mov	r2, r8
    5b66:	021b      	lsls	r3, r3, #8
    5b68:	4319      	orrs	r1, r3
    5b6a:	002b      	movs	r3, r5
    5b6c:	f002 faa8 	bl	80c0 <rt_tsk_create>
    5b70:	2800      	cmp	r0, #0
    5b72:	d10c      	bne.n	5b8e <osThreadCreate+0x8a>
    5b74:	4641      	mov	r1, r8
    5b76:	0030      	movs	r0, r6
    5b78:	f001 f9fc 	bl	6f74 <rt_free_mem>
    5b7c:	2000      	movs	r0, #0
    5b7e:	e7d3      	b.n	5b28 <osThreadCreate+0x24>
    5b80:	1d19      	adds	r1, r3, #4
    5b82:	2200      	movs	r2, #0
    5b84:	002b      	movs	r3, r5
    5b86:	f002 fa9b 	bl	80c0 <rt_tsk_create>
    5b8a:	2800      	cmp	r0, #0
    5b8c:	d0f6      	beq.n	5b7c <osThreadCreate+0x78>
    5b8e:	4b06      	ldr	r3, [pc, #24]	; (5ba8 <osThreadCreate+0xa4>)
    5b90:	3801      	subs	r0, #1
    5b92:	0080      	lsls	r0, r0, #2
    5b94:	58c0      	ldr	r0, [r0, r3]
    5b96:	4a05      	ldr	r2, [pc, #20]	; (5bac <osThreadCreate+0xa8>)
    5b98:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5b9a:	635a      	str	r2, [r3, #52]	; 0x34
    5b9c:	e7c4      	b.n	5b28 <osThreadCreate+0x24>
    5b9e:	46c0      	nop			; (mov r8, r8)
    5ba0:	20006075 	.word	0x20006075
    5ba4:	200039f8 	.word	0x200039f8
    5ba8:	20004cdc 	.word	0x20004cdc
    5bac:	0000560d 	.word	0x0000560d
    5bb0:	000059d5 	.word	0x000059d5

00005bb4 <osThreadGetId>:
    5bb4:	b590      	push	{r4, r7, lr}
    5bb6:	f3ef 8405 	mrs	r4, IPSR
    5bba:	2c00      	cmp	r4, #0
    5bbc:	d103      	bne.n	5bc6 <osThreadGetId+0x12>
    5bbe:	4f03      	ldr	r7, [pc, #12]	; (5bcc <osThreadGetId+0x18>)
    5bc0:	46bc      	mov	ip, r7
    5bc2:	df00      	svc	0
    5bc4:	bd90      	pop	{r4, r7, pc}
    5bc6:	2000      	movs	r0, #0
    5bc8:	e7fc      	b.n	5bc4 <osThreadGetId+0x10>
    5bca:	0000      	.short	0x0000
    5bcc:	00005a4d 	.word	0x00005a4d

00005bd0 <osThreadTerminate>:
    5bd0:	b5b0      	push	{r4, r5, r7, lr}
    5bd2:	0005      	movs	r5, r0
    5bd4:	f3ef 8405 	mrs	r4, IPSR
    5bd8:	2082      	movs	r0, #130	; 0x82
    5bda:	2c00      	cmp	r4, #0
    5bdc:	d000      	beq.n	5be0 <osThreadTerminate+0x10>
    5bde:	bdb0      	pop	{r4, r5, r7, pc}
    5be0:	0028      	movs	r0, r5
    5be2:	4f02      	ldr	r7, [pc, #8]	; (5bec <osThreadTerminate+0x1c>)
    5be4:	46bc      	mov	ip, r7
    5be6:	df00      	svc	0
    5be8:	e7f9      	b.n	5bde <osThreadTerminate+0xe>
    5bea:	0000      	.short	0x0000
    5bec:	00005a69 	.word	0x00005a69

00005bf0 <osThreadYield>:
    5bf0:	b5b0      	push	{r4, r5, r7, lr}
    5bf2:	f3ef 8405 	mrs	r4, IPSR
    5bf6:	2582      	movs	r5, #130	; 0x82
    5bf8:	2c00      	cmp	r4, #0
    5bfa:	d001      	beq.n	5c00 <osThreadYield+0x10>
    5bfc:	0028      	movs	r0, r5
    5bfe:	bdb0      	pop	{r4, r5, r7, pc}
    5c00:	4f02      	ldr	r7, [pc, #8]	; (5c0c <osThreadYield+0x1c>)
    5c02:	46bc      	mov	ip, r7
    5c04:	df00      	svc	0
    5c06:	0005      	movs	r5, r0
    5c08:	e7f8      	b.n	5bfc <osThreadYield+0xc>
    5c0a:	0000      	.short	0x0000
    5c0c:	00005aad 	.word	0x00005aad

00005c10 <osThreadSetPriority>:
    5c10:	b5b0      	push	{r4, r5, r7, lr}
    5c12:	0005      	movs	r5, r0
    5c14:	f3ef 8405 	mrs	r4, IPSR
    5c18:	2082      	movs	r0, #130	; 0x82
    5c1a:	2c00      	cmp	r4, #0
    5c1c:	d000      	beq.n	5c20 <osThreadSetPriority+0x10>
    5c1e:	bdb0      	pop	{r4, r5, r7, pc}
    5c20:	0028      	movs	r0, r5
    5c22:	4f02      	ldr	r7, [pc, #8]	; (5c2c <osThreadSetPriority+0x1c>)
    5c24:	46bc      	mov	ip, r7
    5c26:	df00      	svc	0
    5c28:	e7f9      	b.n	5c1e <osThreadSetPriority+0xe>
    5c2a:	0000      	.short	0x0000
    5c2c:	00005ab9 	.word	0x00005ab9

00005c30 <osThreadGetPriority>:
    5c30:	b5b0      	push	{r4, r5, r7, lr}
    5c32:	0005      	movs	r5, r0
    5c34:	f3ef 8405 	mrs	r4, IPSR
    5c38:	2084      	movs	r0, #132	; 0x84
    5c3a:	2c00      	cmp	r4, #0
    5c3c:	d000      	beq.n	5c40 <osThreadGetPriority+0x10>
    5c3e:	bdb0      	pop	{r4, r5, r7, pc}
    5c40:	0028      	movs	r0, r5
    5c42:	4f02      	ldr	r7, [pc, #8]	; (5c4c <osThreadGetPriority+0x1c>)
    5c44:	46bc      	mov	ip, r7
    5c46:	df00      	svc	0
    5c48:	e7f9      	b.n	5c3e <osThreadGetPriority+0xe>
    5c4a:	0000      	.short	0x0000
    5c4c:	00005aed 	.word	0x00005aed

00005c50 <svcDelay>:
    5c50:	b500      	push	{lr}
    5c52:	b083      	sub	sp, #12
    5c54:	2800      	cmp	r0, #0
    5c56:	d019      	beq.n	5c8c <svcDelay+0x3c>
    5c58:	1c43      	adds	r3, r0, #1
    5c5a:	d01c      	beq.n	5c96 <svcDelay+0x46>
    5c5c:	4b10      	ldr	r3, [pc, #64]	; (5ca0 <svcDelay+0x50>)
    5c5e:	4298      	cmp	r0, r3
    5c60:	d817      	bhi.n	5c92 <svcDelay+0x42>
    5c62:	4b10      	ldr	r3, [pc, #64]	; (5ca4 <svcDelay+0x54>)
    5c64:	681b      	ldr	r3, [r3, #0]
    5c66:	9301      	str	r3, [sp, #4]
    5c68:	23fa      	movs	r3, #250	; 0xfa
    5c6a:	009b      	lsls	r3, r3, #2
    5c6c:	4358      	muls	r0, r3
    5c6e:	9b01      	ldr	r3, [sp, #4]
    5c70:	9901      	ldr	r1, [sp, #4]
    5c72:	3b01      	subs	r3, #1
    5c74:	18c0      	adds	r0, r0, r3
    5c76:	f7fe fb99 	bl	43ac <__aeabi_uidiv>
    5c7a:	4b0b      	ldr	r3, [pc, #44]	; (5ca8 <svcDelay+0x58>)
    5c7c:	0002      	movs	r2, r0
    5c7e:	0018      	movs	r0, r3
    5c80:	429a      	cmp	r2, r3
    5c82:	d90a      	bls.n	5c9a <svcDelay+0x4a>
    5c84:	f001 fb34 	bl	72f0 <rt_dly_wait>
    5c88:	2040      	movs	r0, #64	; 0x40
    5c8a:	e000      	b.n	5c8e <svcDelay+0x3e>
    5c8c:	2000      	movs	r0, #0
    5c8e:	b003      	add	sp, #12
    5c90:	bd00      	pop	{pc}
    5c92:	4805      	ldr	r0, [pc, #20]	; (5ca8 <svcDelay+0x58>)
    5c94:	e7f6      	b.n	5c84 <svcDelay+0x34>
    5c96:	4805      	ldr	r0, [pc, #20]	; (5cac <svcDelay+0x5c>)
    5c98:	e7f4      	b.n	5c84 <svcDelay+0x34>
    5c9a:	b290      	uxth	r0, r2
    5c9c:	e7f2      	b.n	5c84 <svcDelay+0x34>
    5c9e:	46c0      	nop			; (mov r8, r8)
    5ca0:	003d0900 	.word	0x003d0900
    5ca4:	00008638 	.word	0x00008638
    5ca8:	0000fffe 	.word	0x0000fffe
    5cac:	0000ffff 	.word	0x0000ffff

00005cb0 <osDelay>:
    5cb0:	b5b0      	push	{r4, r5, r7, lr}
    5cb2:	0005      	movs	r5, r0
    5cb4:	f3ef 8405 	mrs	r4, IPSR
    5cb8:	2082      	movs	r0, #130	; 0x82
    5cba:	2c00      	cmp	r4, #0
    5cbc:	d000      	beq.n	5cc0 <osDelay+0x10>
    5cbe:	bdb0      	pop	{r4, r5, r7, pc}
    5cc0:	0028      	movs	r0, r5
    5cc2:	4f02      	ldr	r7, [pc, #8]	; (5ccc <osDelay+0x1c>)
    5cc4:	46bc      	mov	ip, r7
    5cc6:	df00      	svc	0
    5cc8:	e7f9      	b.n	5cbe <osDelay+0xe>
    5cca:	0000      	.short	0x0000
    5ccc:	00005c51 	.word	0x00005c51

00005cd0 <osWait>:
    5cd0:	23ff      	movs	r3, #255	; 0xff
    5cd2:	6003      	str	r3, [r0, #0]
    5cd4:	4770      	bx	lr
    5cd6:	46c0      	nop			; (mov r8, r8)

00005cd8 <svcTimerCreate>:
    5cd8:	b510      	push	{r4, lr}
    5cda:	2800      	cmp	r0, #0
    5cdc:	d016      	beq.n	5d0c <svcTimerCreate+0x34>
    5cde:	6803      	ldr	r3, [r0, #0]
    5ce0:	2b00      	cmp	r3, #0
    5ce2:	d013      	beq.n	5d0c <svcTimerCreate+0x34>
    5ce4:	6843      	ldr	r3, [r0, #4]
    5ce6:	2b00      	cmp	r3, #0
    5ce8:	d010      	beq.n	5d0c <svcTimerCreate+0x34>
    5cea:	2901      	cmp	r1, #1
    5cec:	d80e      	bhi.n	5d0c <svcTimerCreate+0x34>
    5cee:	4c08      	ldr	r4, [pc, #32]	; (5d10 <svcTimerCreate+0x38>)
    5cf0:	6824      	ldr	r4, [r4, #0]
    5cf2:	2c00      	cmp	r4, #0
    5cf4:	d00a      	beq.n	5d0c <svcTimerCreate+0x34>
    5cf6:	791c      	ldrb	r4, [r3, #4]
    5cf8:	2c00      	cmp	r4, #0
    5cfa:	d107      	bne.n	5d0c <svcTimerCreate+0x34>
    5cfc:	6158      	str	r0, [r3, #20]
    5cfe:	0018      	movs	r0, r3
    5d00:	601c      	str	r4, [r3, #0]
    5d02:	3401      	adds	r4, #1
    5d04:	711c      	strb	r4, [r3, #4]
    5d06:	7159      	strb	r1, [r3, #5]
    5d08:	611a      	str	r2, [r3, #16]
    5d0a:	bd10      	pop	{r4, pc}
    5d0c:	2000      	movs	r0, #0
    5d0e:	e7fc      	b.n	5d0a <svcTimerCreate+0x32>
    5d10:	20004cec 	.word	0x20004cec

00005d14 <svcTimerStart>:
    5d14:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5d16:	0004      	movs	r4, r0
    5d18:	2080      	movs	r0, #128	; 0x80
    5d1a:	07a3      	lsls	r3, r4, #30
    5d1c:	d104      	bne.n	5d28 <svcTimerStart+0x14>
    5d1e:	2c00      	cmp	r4, #0
    5d20:	d002      	beq.n	5d28 <svcTimerStart+0x14>
    5d22:	3006      	adds	r0, #6
    5d24:	2900      	cmp	r1, #0
    5d26:	d100      	bne.n	5d2a <svcTimerStart+0x16>
    5d28:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5d2a:	22fa      	movs	r2, #250	; 0xfa
    5d2c:	4b2f      	ldr	r3, [pc, #188]	; (5dec <svcTimerStart+0xd8>)
    5d2e:	0092      	lsls	r2, r2, #2
    5d30:	681e      	ldr	r6, [r3, #0]
    5d32:	0008      	movs	r0, r1
    5d34:	2300      	movs	r3, #0
    5d36:	2100      	movs	r1, #0
    5d38:	f7fe fd78 	bl	482c <__aeabi_lmul>
    5d3c:	2700      	movs	r7, #0
    5d3e:	0002      	movs	r2, r0
    5d40:	000b      	movs	r3, r1
    5d42:	2001      	movs	r0, #1
    5d44:	4240      	negs	r0, r0
    5d46:	17c1      	asrs	r1, r0, #31
    5d48:	1980      	adds	r0, r0, r6
    5d4a:	4179      	adcs	r1, r7
    5d4c:	1880      	adds	r0, r0, r2
    5d4e:	4159      	adcs	r1, r3
    5d50:	003b      	movs	r3, r7
    5d52:	0032      	movs	r2, r6
    5d54:	f7fe fd4a 	bl	47ec <__aeabi_uldivmod>
    5d58:	7923      	ldrb	r3, [r4, #4]
    5d5a:	2b01      	cmp	r3, #1
    5d5c:	d011      	beq.n	5d82 <svcTimerStart+0x6e>
    5d5e:	2b02      	cmp	r3, #2
    5d60:	d10d      	bne.n	5d7e <svcTimerStart+0x6a>
    5d62:	4d23      	ldr	r5, [pc, #140]	; (5df0 <svcTimerStart+0xdc>)
    5d64:	6829      	ldr	r1, [r5, #0]
    5d66:	2900      	cmp	r1, #0
    5d68:	d009      	beq.n	5d7e <svcTimerStart+0x6a>
    5d6a:	428c      	cmp	r4, r1
    5d6c:	d03a      	beq.n	5de4 <svcTimerStart+0xd0>
    5d6e:	000a      	movs	r2, r1
    5d70:	e002      	b.n	5d78 <svcTimerStart+0x64>
    5d72:	429c      	cmp	r4, r3
    5d74:	d028      	beq.n	5dc8 <svcTimerStart+0xb4>
    5d76:	001a      	movs	r2, r3
    5d78:	6813      	ldr	r3, [r2, #0]
    5d7a:	2b00      	cmp	r3, #0
    5d7c:	d1f9      	bne.n	5d72 <svcTimerStart+0x5e>
    5d7e:	2081      	movs	r0, #129	; 0x81
    5d80:	e7d2      	b.n	5d28 <svcTimerStart+0x14>
    5d82:	2302      	movs	r3, #2
    5d84:	4d1a      	ldr	r5, [pc, #104]	; (5df0 <svcTimerStart+0xdc>)
    5d86:	7123      	strb	r3, [r4, #4]
    5d88:	6829      	ldr	r1, [r5, #0]
    5d8a:	60e0      	str	r0, [r4, #12]
    5d8c:	2900      	cmp	r1, #0
    5d8e:	d00b      	beq.n	5da8 <svcTimerStart+0x94>
    5d90:	688a      	ldr	r2, [r1, #8]
    5d92:	4290      	cmp	r0, r2
    5d94:	d204      	bcs.n	5da0 <svcTimerStart+0x8c>
    5d96:	e00f      	b.n	5db8 <svcTimerStart+0xa4>
    5d98:	689a      	ldr	r2, [r3, #8]
    5d9a:	4282      	cmp	r2, r0
    5d9c:	d80e      	bhi.n	5dbc <svcTimerStart+0xa8>
    5d9e:	0019      	movs	r1, r3
    5da0:	680b      	ldr	r3, [r1, #0]
    5da2:	1a80      	subs	r0, r0, r2
    5da4:	2b00      	cmp	r3, #0
    5da6:	d1f7      	bne.n	5d98 <svcTimerStart+0x84>
    5da8:	2300      	movs	r3, #0
    5daa:	60a0      	str	r0, [r4, #8]
    5dac:	6023      	str	r3, [r4, #0]
    5dae:	2900      	cmp	r1, #0
    5db0:	d015      	beq.n	5dde <svcTimerStart+0xca>
    5db2:	600c      	str	r4, [r1, #0]
    5db4:	2000      	movs	r0, #0
    5db6:	e7b7      	b.n	5d28 <svcTimerStart+0x14>
    5db8:	000b      	movs	r3, r1
    5dba:	2100      	movs	r1, #0
    5dbc:	60a0      	str	r0, [r4, #8]
    5dbe:	689a      	ldr	r2, [r3, #8]
    5dc0:	6023      	str	r3, [r4, #0]
    5dc2:	1a10      	subs	r0, r2, r0
    5dc4:	6098      	str	r0, [r3, #8]
    5dc6:	e7f2      	b.n	5dae <svcTimerStart+0x9a>
    5dc8:	6823      	ldr	r3, [r4, #0]
    5dca:	6013      	str	r3, [r2, #0]
    5dcc:	6823      	ldr	r3, [r4, #0]
    5dce:	2b00      	cmp	r3, #0
    5dd0:	d0dc      	beq.n	5d8c <svcTimerStart+0x78>
    5dd2:	68a6      	ldr	r6, [r4, #8]
    5dd4:	689a      	ldr	r2, [r3, #8]
    5dd6:	46b4      	mov	ip, r6
    5dd8:	4462      	add	r2, ip
    5dda:	609a      	str	r2, [r3, #8]
    5ddc:	e7d6      	b.n	5d8c <svcTimerStart+0x78>
    5dde:	602c      	str	r4, [r5, #0]
    5de0:	2000      	movs	r0, #0
    5de2:	e7a1      	b.n	5d28 <svcTimerStart+0x14>
    5de4:	6823      	ldr	r3, [r4, #0]
    5de6:	602b      	str	r3, [r5, #0]
    5de8:	0019      	movs	r1, r3
    5dea:	e7f0      	b.n	5dce <svcTimerStart+0xba>
    5dec:	00008638 	.word	0x00008638
    5df0:	20006078 	.word	0x20006078

00005df4 <svcTimerStop>:
    5df4:	0003      	movs	r3, r0
    5df6:	2080      	movs	r0, #128	; 0x80
    5df8:	079a      	lsls	r2, r3, #30
    5dfa:	d105      	bne.n	5e08 <svcTimerStop+0x14>
    5dfc:	2b00      	cmp	r3, #0
    5dfe:	d003      	beq.n	5e08 <svcTimerStop+0x14>
    5e00:	791a      	ldrb	r2, [r3, #4]
    5e02:	2a02      	cmp	r2, #2
    5e04:	d001      	beq.n	5e0a <svcTimerStop+0x16>
    5e06:	2081      	movs	r0, #129	; 0x81
    5e08:	4770      	bx	lr
    5e0a:	2201      	movs	r2, #1
    5e0c:	480e      	ldr	r0, [pc, #56]	; (5e48 <svcTimerStop+0x54>)
    5e0e:	711a      	strb	r2, [r3, #4]
    5e10:	6801      	ldr	r1, [r0, #0]
    5e12:	2900      	cmp	r1, #0
    5e14:	d0f7      	beq.n	5e06 <svcTimerStop+0x12>
    5e16:	428b      	cmp	r3, r1
    5e18:	d105      	bne.n	5e26 <svcTimerStop+0x32>
    5e1a:	681a      	ldr	r2, [r3, #0]
    5e1c:	6002      	str	r2, [r0, #0]
    5e1e:	e009      	b.n	5e34 <svcTimerStop+0x40>
    5e20:	4293      	cmp	r3, r2
    5e22:	d004      	beq.n	5e2e <svcTimerStop+0x3a>
    5e24:	0011      	movs	r1, r2
    5e26:	680a      	ldr	r2, [r1, #0]
    5e28:	2a00      	cmp	r2, #0
    5e2a:	d1f9      	bne.n	5e20 <svcTimerStop+0x2c>
    5e2c:	e7eb      	b.n	5e06 <svcTimerStop+0x12>
    5e2e:	681a      	ldr	r2, [r3, #0]
    5e30:	600a      	str	r2, [r1, #0]
    5e32:	681a      	ldr	r2, [r3, #0]
    5e34:	2a00      	cmp	r2, #0
    5e36:	d004      	beq.n	5e42 <svcTimerStop+0x4e>
    5e38:	6891      	ldr	r1, [r2, #8]
    5e3a:	689b      	ldr	r3, [r3, #8]
    5e3c:	468c      	mov	ip, r1
    5e3e:	4463      	add	r3, ip
    5e40:	6093      	str	r3, [r2, #8]
    5e42:	2000      	movs	r0, #0
    5e44:	e7e0      	b.n	5e08 <svcTimerStop+0x14>
    5e46:	46c0      	nop			; (mov r8, r8)
    5e48:	20006078 	.word	0x20006078

00005e4c <svcTimerDelete>:
    5e4c:	0002      	movs	r2, r0
    5e4e:	2080      	movs	r0, #128	; 0x80
    5e50:	0793      	lsls	r3, r2, #30
    5e52:	d117      	bne.n	5e84 <svcTimerDelete+0x38>
    5e54:	2a00      	cmp	r2, #0
    5e56:	d015      	beq.n	5e84 <svcTimerDelete+0x38>
    5e58:	7913      	ldrb	r3, [r2, #4]
    5e5a:	2b01      	cmp	r3, #1
    5e5c:	d00f      	beq.n	5e7e <svcTimerDelete+0x32>
    5e5e:	2081      	movs	r0, #129	; 0x81
    5e60:	2b02      	cmp	r3, #2
    5e62:	d10f      	bne.n	5e84 <svcTimerDelete+0x38>
    5e64:	4810      	ldr	r0, [pc, #64]	; (5ea8 <svcTimerDelete+0x5c>)
    5e66:	6801      	ldr	r1, [r0, #0]
    5e68:	2900      	cmp	r1, #0
    5e6a:	d008      	beq.n	5e7e <svcTimerDelete+0x32>
    5e6c:	428a      	cmp	r2, r1
    5e6e:	d103      	bne.n	5e78 <svcTimerDelete+0x2c>
    5e70:	e017      	b.n	5ea2 <svcTimerDelete+0x56>
    5e72:	429a      	cmp	r2, r3
    5e74:	d007      	beq.n	5e86 <svcTimerDelete+0x3a>
    5e76:	0019      	movs	r1, r3
    5e78:	680b      	ldr	r3, [r1, #0]
    5e7a:	2b00      	cmp	r3, #0
    5e7c:	d1f9      	bne.n	5e72 <svcTimerDelete+0x26>
    5e7e:	2300      	movs	r3, #0
    5e80:	2000      	movs	r0, #0
    5e82:	7113      	strb	r3, [r2, #4]
    5e84:	4770      	bx	lr
    5e86:	6813      	ldr	r3, [r2, #0]
    5e88:	600b      	str	r3, [r1, #0]
    5e8a:	6813      	ldr	r3, [r2, #0]
    5e8c:	2b00      	cmp	r3, #0
    5e8e:	d0f6      	beq.n	5e7e <svcTimerDelete+0x32>
    5e90:	6890      	ldr	r0, [r2, #8]
    5e92:	6899      	ldr	r1, [r3, #8]
    5e94:	4684      	mov	ip, r0
    5e96:	4461      	add	r1, ip
    5e98:	6099      	str	r1, [r3, #8]
    5e9a:	2300      	movs	r3, #0
    5e9c:	2000      	movs	r0, #0
    5e9e:	7113      	strb	r3, [r2, #4]
    5ea0:	e7f0      	b.n	5e84 <svcTimerDelete+0x38>
    5ea2:	6813      	ldr	r3, [r2, #0]
    5ea4:	6003      	str	r3, [r0, #0]
    5ea6:	e7f1      	b.n	5e8c <svcTimerDelete+0x40>
    5ea8:	20006078 	.word	0x20006078

00005eac <svcTimerCall>:
    5eac:	0003      	movs	r3, r0
    5eae:	0782      	lsls	r2, r0, #30
    5eb0:	d105      	bne.n	5ebe <svcTimerCall+0x12>
    5eb2:	2800      	cmp	r0, #0
    5eb4:	d006      	beq.n	5ec4 <svcTimerCall+0x18>
    5eb6:	6942      	ldr	r2, [r0, #20]
    5eb8:	6919      	ldr	r1, [r3, #16]
    5eba:	6810      	ldr	r0, [r2, #0]
    5ebc:	4770      	bx	lr
    5ebe:	2000      	movs	r0, #0
    5ec0:	2100      	movs	r1, #0
    5ec2:	e7fb      	b.n	5ebc <svcTimerCall+0x10>
    5ec4:	2000      	movs	r0, #0
    5ec6:	0001      	movs	r1, r0
    5ec8:	e7f8      	b.n	5ebc <svcTimerCall+0x10>
    5eca:	46c0      	nop			; (mov r8, r8)

00005ecc <sysTimerTick>:
    5ecc:	b5f0      	push	{r4, r5, r6, r7, lr}
    5ece:	464e      	mov	r6, r9
    5ed0:	4657      	mov	r7, sl
    5ed2:	4645      	mov	r5, r8
    5ed4:	b4e0      	push	{r5, r6, r7}
    5ed6:	4e2a      	ldr	r6, [pc, #168]	; (5f80 <sysTimerTick+0xb4>)
    5ed8:	6834      	ldr	r4, [r6, #0]
    5eda:	2c00      	cmp	r4, #0
    5edc:	d028      	beq.n	5f30 <sysTimerTick+0x64>
    5ede:	2200      	movs	r2, #0
    5ee0:	68a3      	ldr	r3, [r4, #8]
    5ee2:	4f28      	ldr	r7, [pc, #160]	; (5f84 <sysTimerTick+0xb8>)
    5ee4:	3b01      	subs	r3, #1
    5ee6:	60a3      	str	r3, [r4, #8]
    5ee8:	4690      	mov	r8, r2
    5eea:	2b00      	cmp	r3, #0
    5eec:	d120      	bne.n	5f30 <sysTimerTick+0x64>
    5eee:	6825      	ldr	r5, [r4, #0]
    5ef0:	683b      	ldr	r3, [r7, #0]
    5ef2:	6035      	str	r5, [r6, #0]
    5ef4:	4699      	mov	r9, r3
    5ef6:	2b00      	cmp	r3, #0
    5ef8:	d003      	beq.n	5f02 <sysTimerTick+0x36>
    5efa:	781b      	ldrb	r3, [r3, #0]
    5efc:	469a      	mov	sl, r3
    5efe:	2b01      	cmp	r3, #1
    5f00:	d002      	beq.n	5f08 <sysTimerTick+0x3c>
    5f02:	2004      	movs	r0, #4
    5f04:	f7fb fd16 	bl	1934 <os_error>
    5f08:	4648      	mov	r0, r9
    5f0a:	f001 fb63 	bl	75d4 <rt_mbx_check>
    5f0e:	2800      	cmp	r0, #0
    5f10:	d0f7      	beq.n	5f02 <sysTimerTick+0x36>
    5f12:	0021      	movs	r1, r4
    5f14:	4648      	mov	r0, r9
    5f16:	f001 fb61 	bl	75dc <isr_mbx_send>
    5f1a:	7963      	ldrb	r3, [r4, #5]
    5f1c:	2b01      	cmp	r3, #1
    5f1e:	d00c      	beq.n	5f3a <sysTimerTick+0x6e>
    5f20:	4653      	mov	r3, sl
    5f22:	7123      	strb	r3, [r4, #4]
    5f24:	2d00      	cmp	r5, #0
    5f26:	d003      	beq.n	5f30 <sysTimerTick+0x64>
    5f28:	68ab      	ldr	r3, [r5, #8]
    5f2a:	002c      	movs	r4, r5
    5f2c:	2b00      	cmp	r3, #0
    5f2e:	d0de      	beq.n	5eee <sysTimerTick+0x22>
    5f30:	bc1c      	pop	{r2, r3, r4}
    5f32:	4690      	mov	r8, r2
    5f34:	4699      	mov	r9, r3
    5f36:	46a2      	mov	sl, r4
    5f38:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5f3a:	6830      	ldr	r0, [r6, #0]
    5f3c:	68e2      	ldr	r2, [r4, #12]
    5f3e:	2800      	cmp	r0, #0
    5f40:	d00b      	beq.n	5f5a <sysTimerTick+0x8e>
    5f42:	6881      	ldr	r1, [r0, #8]
    5f44:	4291      	cmp	r1, r2
    5f46:	d904      	bls.n	5f52 <sysTimerTick+0x86>
    5f48:	e00e      	b.n	5f68 <sysTimerTick+0x9c>
    5f4a:	6899      	ldr	r1, [r3, #8]
    5f4c:	4291      	cmp	r1, r2
    5f4e:	d80d      	bhi.n	5f6c <sysTimerTick+0xa0>
    5f50:	0018      	movs	r0, r3
    5f52:	6803      	ldr	r3, [r0, #0]
    5f54:	1a52      	subs	r2, r2, r1
    5f56:	2b00      	cmp	r3, #0
    5f58:	d1f7      	bne.n	5f4a <sysTimerTick+0x7e>
    5f5a:	4643      	mov	r3, r8
    5f5c:	60a2      	str	r2, [r4, #8]
    5f5e:	6023      	str	r3, [r4, #0]
    5f60:	2800      	cmp	r0, #0
    5f62:	d00a      	beq.n	5f7a <sysTimerTick+0xae>
    5f64:	6004      	str	r4, [r0, #0]
    5f66:	e7dd      	b.n	5f24 <sysTimerTick+0x58>
    5f68:	0003      	movs	r3, r0
    5f6a:	2000      	movs	r0, #0
    5f6c:	60a2      	str	r2, [r4, #8]
    5f6e:	6899      	ldr	r1, [r3, #8]
    5f70:	6023      	str	r3, [r4, #0]
    5f72:	1a8a      	subs	r2, r1, r2
    5f74:	609a      	str	r2, [r3, #8]
    5f76:	2800      	cmp	r0, #0
    5f78:	d1f4      	bne.n	5f64 <sysTimerTick+0x98>
    5f7a:	6034      	str	r4, [r6, #0]
    5f7c:	e7d2      	b.n	5f24 <sysTimerTick+0x58>
    5f7e:	46c0      	nop			; (mov r8, r8)
    5f80:	20006078 	.word	0x20006078
    5f84:	20004d10 	.word	0x20004d10

00005f88 <sysUserTimerWakeupTime>:
    5f88:	4b04      	ldr	r3, [pc, #16]	; (5f9c <sysUserTimerWakeupTime+0x14>)
    5f8a:	681b      	ldr	r3, [r3, #0]
    5f8c:	2b00      	cmp	r3, #0
    5f8e:	d001      	beq.n	5f94 <sysUserTimerWakeupTime+0xc>
    5f90:	6898      	ldr	r0, [r3, #8]
    5f92:	4770      	bx	lr
    5f94:	2001      	movs	r0, #1
    5f96:	4240      	negs	r0, r0
    5f98:	e7fb      	b.n	5f92 <sysUserTimerWakeupTime+0xa>
    5f9a:	46c0      	nop			; (mov r8, r8)
    5f9c:	20006078 	.word	0x20006078

00005fa0 <sysUserTimerUpdate>:
    5fa0:	b570      	push	{r4, r5, r6, lr}
    5fa2:	4d0e      	ldr	r5, [pc, #56]	; (5fdc <sysUserTimerUpdate+0x3c>)
    5fa4:	0004      	movs	r4, r0
    5fa6:	682b      	ldr	r3, [r5, #0]
    5fa8:	2b00      	cmp	r3, #0
    5faa:	d012      	beq.n	5fd2 <sysUserTimerUpdate+0x32>
    5fac:	2800      	cmp	r0, #0
    5fae:	d010      	beq.n	5fd2 <sysUserTimerUpdate+0x32>
    5fb0:	689a      	ldr	r2, [r3, #8]
    5fb2:	2601      	movs	r6, #1
    5fb4:	4290      	cmp	r0, r2
    5fb6:	d205      	bcs.n	5fc4 <sysUserTimerUpdate+0x24>
    5fb8:	e00c      	b.n	5fd4 <sysUserTimerUpdate+0x34>
    5fba:	2c00      	cmp	r4, #0
    5fbc:	d009      	beq.n	5fd2 <sysUserTimerUpdate+0x32>
    5fbe:	689a      	ldr	r2, [r3, #8]
    5fc0:	42a2      	cmp	r2, r4
    5fc2:	d807      	bhi.n	5fd4 <sysUserTimerUpdate+0x34>
    5fc4:	609e      	str	r6, [r3, #8]
    5fc6:	1aa4      	subs	r4, r4, r2
    5fc8:	f7ff ff80 	bl	5ecc <sysTimerTick>
    5fcc:	682b      	ldr	r3, [r5, #0]
    5fce:	2b00      	cmp	r3, #0
    5fd0:	d1f3      	bne.n	5fba <sysUserTimerUpdate+0x1a>
    5fd2:	bd70      	pop	{r4, r5, r6, pc}
    5fd4:	1b14      	subs	r4, r2, r4
    5fd6:	609c      	str	r4, [r3, #8]
    5fd8:	e7fb      	b.n	5fd2 <sysUserTimerUpdate+0x32>
    5fda:	46c0      	nop			; (mov r8, r8)
    5fdc:	20006078 	.word	0x20006078

00005fe0 <osTimerCreate>:
    5fe0:	b5b0      	push	{r4, r5, r7, lr}
    5fe2:	f3ef 8405 	mrs	r4, IPSR
    5fe6:	2c00      	cmp	r4, #0
    5fe8:	d124      	bne.n	6034 <osTimerCreate+0x54>
    5fea:	f3ef 8414 	mrs	r4, CONTROL
    5fee:	2501      	movs	r5, #1
    5ff0:	4225      	tst	r5, r4
    5ff2:	d003      	beq.n	5ffc <osTimerCreate+0x1c>
    5ff4:	4f12      	ldr	r7, [pc, #72]	; (6040 <osTimerCreate+0x60>)
    5ff6:	46bc      	mov	ip, r7
    5ff8:	df00      	svc	0
    5ffa:	bdb0      	pop	{r4, r5, r7, pc}
    5ffc:	4c0e      	ldr	r4, [pc, #56]	; (6038 <osTimerCreate+0x58>)
    5ffe:	7824      	ldrb	r4, [r4, #0]
    6000:	2c00      	cmp	r4, #0
    6002:	d1f7      	bne.n	5ff4 <osTimerCreate+0x14>
    6004:	2800      	cmp	r0, #0
    6006:	d015      	beq.n	6034 <osTimerCreate+0x54>
    6008:	6803      	ldr	r3, [r0, #0]
    600a:	2b00      	cmp	r3, #0
    600c:	d012      	beq.n	6034 <osTimerCreate+0x54>
    600e:	6843      	ldr	r3, [r0, #4]
    6010:	2b00      	cmp	r3, #0
    6012:	d00f      	beq.n	6034 <osTimerCreate+0x54>
    6014:	2901      	cmp	r1, #1
    6016:	d80d      	bhi.n	6034 <osTimerCreate+0x54>
    6018:	4c08      	ldr	r4, [pc, #32]	; (603c <osTimerCreate+0x5c>)
    601a:	6824      	ldr	r4, [r4, #0]
    601c:	2c00      	cmp	r4, #0
    601e:	d009      	beq.n	6034 <osTimerCreate+0x54>
    6020:	791c      	ldrb	r4, [r3, #4]
    6022:	2c00      	cmp	r4, #0
    6024:	d106      	bne.n	6034 <osTimerCreate+0x54>
    6026:	6158      	str	r0, [r3, #20]
    6028:	601c      	str	r4, [r3, #0]
    602a:	711d      	strb	r5, [r3, #4]
    602c:	7159      	strb	r1, [r3, #5]
    602e:	611a      	str	r2, [r3, #16]
    6030:	0018      	movs	r0, r3
    6032:	e7e2      	b.n	5ffa <osTimerCreate+0x1a>
    6034:	2000      	movs	r0, #0
    6036:	e7e0      	b.n	5ffa <osTimerCreate+0x1a>
    6038:	20006075 	.word	0x20006075
    603c:	20004cec 	.word	0x20004cec
    6040:	00005cd9 	.word	0x00005cd9

00006044 <osTimerStart>:
    6044:	b5b0      	push	{r4, r5, r7, lr}
    6046:	0005      	movs	r5, r0
    6048:	f3ef 8405 	mrs	r4, IPSR
    604c:	2082      	movs	r0, #130	; 0x82
    604e:	2c00      	cmp	r4, #0
    6050:	d000      	beq.n	6054 <osTimerStart+0x10>
    6052:	bdb0      	pop	{r4, r5, r7, pc}
    6054:	0028      	movs	r0, r5
    6056:	4f02      	ldr	r7, [pc, #8]	; (6060 <osTimerStart+0x1c>)
    6058:	46bc      	mov	ip, r7
    605a:	df00      	svc	0
    605c:	e7f9      	b.n	6052 <osTimerStart+0xe>
    605e:	0000      	.short	0x0000
    6060:	00005d15 	.word	0x00005d15

00006064 <osTimerStop>:
    6064:	b5b0      	push	{r4, r5, r7, lr}
    6066:	0005      	movs	r5, r0
    6068:	f3ef 8405 	mrs	r4, IPSR
    606c:	2082      	movs	r0, #130	; 0x82
    606e:	2c00      	cmp	r4, #0
    6070:	d000      	beq.n	6074 <osTimerStop+0x10>
    6072:	bdb0      	pop	{r4, r5, r7, pc}
    6074:	0028      	movs	r0, r5
    6076:	4f02      	ldr	r7, [pc, #8]	; (6080 <osTimerStop+0x1c>)
    6078:	46bc      	mov	ip, r7
    607a:	df00      	svc	0
    607c:	e7f9      	b.n	6072 <osTimerStop+0xe>
    607e:	0000      	.short	0x0000
    6080:	00005df5 	.word	0x00005df5

00006084 <osTimerDelete>:
    6084:	b5b0      	push	{r4, r5, r7, lr}
    6086:	0005      	movs	r5, r0
    6088:	f3ef 8405 	mrs	r4, IPSR
    608c:	2082      	movs	r0, #130	; 0x82
    608e:	2c00      	cmp	r4, #0
    6090:	d000      	beq.n	6094 <osTimerDelete+0x10>
    6092:	bdb0      	pop	{r4, r5, r7, pc}
    6094:	0028      	movs	r0, r5
    6096:	4f02      	ldr	r7, [pc, #8]	; (60a0 <osTimerDelete+0x1c>)
    6098:	46bc      	mov	ip, r7
    609a:	df00      	svc	0
    609c:	e7f9      	b.n	6092 <osTimerDelete+0xe>
    609e:	0000      	.short	0x0000
    60a0:	00005e4d 	.word	0x00005e4d

000060a4 <osTimerCall>:
    60a4:	b590      	push	{r4, r7, lr}
    60a6:	0004      	movs	r4, r0
    60a8:	0008      	movs	r0, r1
    60aa:	4f03      	ldr	r7, [pc, #12]	; (60b8 <osTimerCall+0x14>)
    60ac:	46bc      	mov	ip, r7
    60ae:	df00      	svc	0
    60b0:	6020      	str	r0, [r4, #0]
    60b2:	6061      	str	r1, [r4, #4]
    60b4:	0020      	movs	r0, r4
    60b6:	bd90      	pop	{r4, r7, pc}
    60b8:	00005ead 	.word	0x00005ead

000060bc <osTimerThread>:
    60bc:	b5b0      	push	{r4, r5, r7, lr}
    60be:	4d0a      	ldr	r5, [pc, #40]	; (60e8 <osTimerThread+0x2c>)
    60c0:	6828      	ldr	r0, [r5, #0]
    60c2:	f3ef 8105 	mrs	r1, IPSR
    60c6:	2900      	cmp	r1, #0
    60c8:	d1fb      	bne.n	60c2 <osTimerThread+0x6>
    60ca:	3901      	subs	r1, #1
    60cc:	4f07      	ldr	r7, [pc, #28]	; (60ec <osTimerThread+0x30>)
    60ce:	46bc      	mov	ip, r7
    60d0:	df00      	svc	0
    60d2:	2810      	cmp	r0, #16
    60d4:	d1f4      	bne.n	60c0 <osTimerThread+0x4>
    60d6:	0008      	movs	r0, r1
    60d8:	4f05      	ldr	r7, [pc, #20]	; (60f0 <osTimerThread+0x34>)
    60da:	46bc      	mov	ip, r7
    60dc:	df00      	svc	0
    60de:	1e04      	subs	r4, r0, #0
    60e0:	d0ee      	beq.n	60c0 <osTimerThread+0x4>
    60e2:	0008      	movs	r0, r1
    60e4:	47a0      	blx	r4
    60e6:	e7eb      	b.n	60c0 <osTimerThread+0x4>
    60e8:	20004d10 	.word	0x20004d10
    60ec:	0000689d 	.word	0x0000689d
    60f0:	00005ead 	.word	0x00005ead

000060f4 <svcSignalSet>:
    60f4:	b510      	push	{r4, lr}
    60f6:	2800      	cmp	r0, #0
    60f8:	d00e      	beq.n	6118 <svcSignalSet+0x24>
    60fa:	0783      	lsls	r3, r0, #30
    60fc:	d10c      	bne.n	6118 <svcSignalSet+0x24>
    60fe:	7803      	ldrb	r3, [r0, #0]
    6100:	2b00      	cmp	r3, #0
    6102:	d109      	bne.n	6118 <svcSignalSet+0x24>
    6104:	0c0b      	lsrs	r3, r1, #16
    6106:	d107      	bne.n	6118 <svcSignalSet+0x24>
    6108:	78c3      	ldrb	r3, [r0, #3]
    610a:	8b04      	ldrh	r4, [r0, #24]
    610c:	b288      	uxth	r0, r1
    610e:	0019      	movs	r1, r3
    6110:	f001 fcbe 	bl	7a90 <rt_evt_set>
    6114:	0020      	movs	r0, r4
    6116:	e001      	b.n	611c <svcSignalSet+0x28>
    6118:	2080      	movs	r0, #128	; 0x80
    611a:	0600      	lsls	r0, r0, #24
    611c:	bd10      	pop	{r4, pc}
    611e:	46c0      	nop			; (mov r8, r8)

00006120 <svcSignalClear>:
    6120:	b510      	push	{r4, lr}
    6122:	2800      	cmp	r0, #0
    6124:	d00e      	beq.n	6144 <svcSignalClear+0x24>
    6126:	0783      	lsls	r3, r0, #30
    6128:	d10c      	bne.n	6144 <svcSignalClear+0x24>
    612a:	7803      	ldrb	r3, [r0, #0]
    612c:	2b00      	cmp	r3, #0
    612e:	d109      	bne.n	6144 <svcSignalClear+0x24>
    6130:	0c0b      	lsrs	r3, r1, #16
    6132:	d107      	bne.n	6144 <svcSignalClear+0x24>
    6134:	78c3      	ldrb	r3, [r0, #3]
    6136:	8b04      	ldrh	r4, [r0, #24]
    6138:	b288      	uxth	r0, r1
    613a:	0019      	movs	r1, r3
    613c:	f001 fcd4 	bl	7ae8 <rt_evt_clr>
    6140:	0020      	movs	r0, r4
    6142:	e001      	b.n	6148 <svcSignalClear+0x28>
    6144:	2080      	movs	r0, #128	; 0x80
    6146:	0600      	lsls	r0, r0, #24
    6148:	bd10      	pop	{r4, pc}
    614a:	46c0      	nop			; (mov r8, r8)

0000614c <svcSignalWait>:
    614c:	b5f0      	push	{r4, r5, r6, r7, lr}
    614e:	0c04      	lsrs	r4, r0, #16
    6150:	b083      	sub	sp, #12
    6152:	0006      	movs	r6, r0
    6154:	000d      	movs	r5, r1
    6156:	0424      	lsls	r4, r4, #16
    6158:	d149      	bne.n	61ee <svcSignalWait+0xa2>
    615a:	2800      	cmp	r0, #0
    615c:	d026      	beq.n	61ac <svcSignalWait+0x60>
    615e:	b287      	uxth	r7, r0
    6160:	2100      	movs	r1, #0
    6162:	2d00      	cmp	r5, #0
    6164:	d013      	beq.n	618e <svcSignalWait+0x42>
    6166:	1c6b      	adds	r3, r5, #1
    6168:	d05c      	beq.n	6224 <svcSignalWait+0xd8>
    616a:	4b2f      	ldr	r3, [pc, #188]	; (6228 <svcSignalWait+0xdc>)
    616c:	429d      	cmp	r5, r3
    616e:	d84f      	bhi.n	6210 <svcSignalWait+0xc4>
    6170:	20fa      	movs	r0, #250	; 0xfa
    6172:	4b2e      	ldr	r3, [pc, #184]	; (622c <svcSignalWait+0xe0>)
    6174:	0080      	lsls	r0, r0, #2
    6176:	4368      	muls	r0, r5
    6178:	681b      	ldr	r3, [r3, #0]
    617a:	9301      	str	r3, [sp, #4]
    617c:	3b01      	subs	r3, #1
    617e:	18c0      	adds	r0, r0, r3
    6180:	9901      	ldr	r1, [sp, #4]
    6182:	f7fe f913 	bl	43ac <__aeabi_uidiv>
    6186:	4b2a      	ldr	r3, [pc, #168]	; (6230 <svcSignalWait+0xe4>)
    6188:	0019      	movs	r1, r3
    618a:	4298      	cmp	r0, r3
    618c:	d946      	bls.n	621c <svcSignalWait+0xd0>
    618e:	2201      	movs	r2, #1
    6190:	0038      	movs	r0, r7
    6192:	f001 fc59 	bl	7a48 <rt_evt_wait>
    6196:	2802      	cmp	r0, #2
    6198:	d035      	beq.n	6206 <svcSignalWait+0xba>
    619a:	0028      	movs	r0, r5
    619c:	1e45      	subs	r5, r0, #1
    619e:	41a8      	sbcs	r0, r5
    61a0:	0180      	lsls	r0, r0, #6
    61a2:	0021      	movs	r1, r4
    61a4:	2200      	movs	r2, #0
    61a6:	2300      	movs	r3, #0
    61a8:	b003      	add	sp, #12
    61aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
    61ac:	2900      	cmp	r1, #0
    61ae:	d021      	beq.n	61f4 <svcSignalWait+0xa8>
    61b0:	1c4b      	adds	r3, r1, #1
    61b2:	d035      	beq.n	6220 <svcSignalWait+0xd4>
    61b4:	4b1c      	ldr	r3, [pc, #112]	; (6228 <svcSignalWait+0xdc>)
    61b6:	4299      	cmp	r1, r3
    61b8:	d82c      	bhi.n	6214 <svcSignalWait+0xc8>
    61ba:	20fa      	movs	r0, #250	; 0xfa
    61bc:	4b1b      	ldr	r3, [pc, #108]	; (622c <svcSignalWait+0xe0>)
    61be:	0080      	lsls	r0, r0, #2
    61c0:	4348      	muls	r0, r1
    61c2:	681b      	ldr	r3, [r3, #0]
    61c4:	9301      	str	r3, [sp, #4]
    61c6:	3b01      	subs	r3, #1
    61c8:	18c0      	adds	r0, r0, r3
    61ca:	9901      	ldr	r1, [sp, #4]
    61cc:	f7fe f8ee 	bl	43ac <__aeabi_uidiv>
    61d0:	4b17      	ldr	r3, [pc, #92]	; (6230 <svcSignalWait+0xe4>)
    61d2:	0019      	movs	r1, r3
    61d4:	4298      	cmp	r0, r3
    61d6:	d91f      	bls.n	6218 <svcSignalWait+0xcc>
    61d8:	2200      	movs	r2, #0
    61da:	4816      	ldr	r0, [pc, #88]	; (6234 <svcSignalWait+0xe8>)
    61dc:	f001 fc34 	bl	7a48 <rt_evt_wait>
    61e0:	2802      	cmp	r0, #2
    61e2:	d113      	bne.n	620c <svcSignalWait+0xc0>
    61e4:	4b14      	ldr	r3, [pc, #80]	; (6238 <svcSignalWait+0xec>)
    61e6:	2008      	movs	r0, #8
    61e8:	681b      	ldr	r3, [r3, #0]
    61ea:	8b5c      	ldrh	r4, [r3, #26]
    61ec:	e7d9      	b.n	61a2 <svcSignalWait+0x56>
    61ee:	2086      	movs	r0, #134	; 0x86
    61f0:	2100      	movs	r1, #0
    61f2:	e7d7      	b.n	61a4 <svcSignalWait+0x58>
    61f4:	2200      	movs	r2, #0
    61f6:	2100      	movs	r1, #0
    61f8:	480e      	ldr	r0, [pc, #56]	; (6234 <svcSignalWait+0xe8>)
    61fa:	f001 fc25 	bl	7a48 <rt_evt_wait>
    61fe:	2802      	cmp	r0, #2
    6200:	d0f0      	beq.n	61e4 <svcSignalWait+0x98>
    6202:	2000      	movs	r0, #0
    6204:	e7cd      	b.n	61a2 <svcSignalWait+0x56>
    6206:	0034      	movs	r4, r6
    6208:	2008      	movs	r0, #8
    620a:	e7ca      	b.n	61a2 <svcSignalWait+0x56>
    620c:	2040      	movs	r0, #64	; 0x40
    620e:	e7c8      	b.n	61a2 <svcSignalWait+0x56>
    6210:	4907      	ldr	r1, [pc, #28]	; (6230 <svcSignalWait+0xe4>)
    6212:	e7bc      	b.n	618e <svcSignalWait+0x42>
    6214:	4906      	ldr	r1, [pc, #24]	; (6230 <svcSignalWait+0xe4>)
    6216:	e7df      	b.n	61d8 <svcSignalWait+0x8c>
    6218:	b281      	uxth	r1, r0
    621a:	e7dd      	b.n	61d8 <svcSignalWait+0x8c>
    621c:	b281      	uxth	r1, r0
    621e:	e7b6      	b.n	618e <svcSignalWait+0x42>
    6220:	4904      	ldr	r1, [pc, #16]	; (6234 <svcSignalWait+0xe8>)
    6222:	e7d9      	b.n	61d8 <svcSignalWait+0x8c>
    6224:	4903      	ldr	r1, [pc, #12]	; (6234 <svcSignalWait+0xe8>)
    6226:	e7b2      	b.n	618e <svcSignalWait+0x42>
    6228:	003d0900 	.word	0x003d0900
    622c:	00008638 	.word	0x00008638
    6230:	0000fffe 	.word	0x0000fffe
    6234:	0000ffff 	.word	0x0000ffff
    6238:	200060b4 	.word	0x200060b4

0000623c <isrSignalSet>:
    623c:	b510      	push	{r4, lr}
    623e:	2800      	cmp	r0, #0
    6240:	d00e      	beq.n	6260 <isrSignalSet+0x24>
    6242:	0783      	lsls	r3, r0, #30
    6244:	d10c      	bne.n	6260 <isrSignalSet+0x24>
    6246:	7803      	ldrb	r3, [r0, #0]
    6248:	2b00      	cmp	r3, #0
    624a:	d109      	bne.n	6260 <isrSignalSet+0x24>
    624c:	0c0b      	lsrs	r3, r1, #16
    624e:	d107      	bne.n	6260 <isrSignalSet+0x24>
    6250:	78c3      	ldrb	r3, [r0, #3]
    6252:	8b04      	ldrh	r4, [r0, #24]
    6254:	b288      	uxth	r0, r1
    6256:	0019      	movs	r1, r3
    6258:	f001 fc52 	bl	7b00 <isr_evt_set>
    625c:	0020      	movs	r0, r4
    625e:	e001      	b.n	6264 <isrSignalSet+0x28>
    6260:	2080      	movs	r0, #128	; 0x80
    6262:	0600      	lsls	r0, r0, #24
    6264:	bd10      	pop	{r4, pc}
    6266:	46c0      	nop			; (mov r8, r8)

00006268 <osSignalSet>:
    6268:	b5b0      	push	{r4, r5, r7, lr}
    626a:	f3ef 8405 	mrs	r4, IPSR
    626e:	2c00      	cmp	r4, #0
    6270:	d103      	bne.n	627a <osSignalSet+0x12>
    6272:	4f0c      	ldr	r7, [pc, #48]	; (62a4 <osSignalSet+0x3c>)
    6274:	46bc      	mov	ip, r7
    6276:	df00      	svc	0
    6278:	bdb0      	pop	{r4, r5, r7, pc}
    627a:	2800      	cmp	r0, #0
    627c:	d00e      	beq.n	629c <osSignalSet+0x34>
    627e:	0783      	lsls	r3, r0, #30
    6280:	d10c      	bne.n	629c <osSignalSet+0x34>
    6282:	7803      	ldrb	r3, [r0, #0]
    6284:	2b00      	cmp	r3, #0
    6286:	d109      	bne.n	629c <osSignalSet+0x34>
    6288:	0c0b      	lsrs	r3, r1, #16
    628a:	d107      	bne.n	629c <osSignalSet+0x34>
    628c:	78c3      	ldrb	r3, [r0, #3]
    628e:	8b04      	ldrh	r4, [r0, #24]
    6290:	b288      	uxth	r0, r1
    6292:	0019      	movs	r1, r3
    6294:	f001 fc34 	bl	7b00 <isr_evt_set>
    6298:	0020      	movs	r0, r4
    629a:	e7ed      	b.n	6278 <osSignalSet+0x10>
    629c:	2080      	movs	r0, #128	; 0x80
    629e:	0600      	lsls	r0, r0, #24
    62a0:	e7ea      	b.n	6278 <osSignalSet+0x10>
    62a2:	0000      	.short	0x0000
    62a4:	000060f5 	.word	0x000060f5

000062a8 <osSignalClear>:
    62a8:	b590      	push	{r4, r7, lr}
    62aa:	f3ef 8405 	mrs	r4, IPSR
    62ae:	2c00      	cmp	r4, #0
    62b0:	d103      	bne.n	62ba <osSignalClear+0x12>
    62b2:	4f03      	ldr	r7, [pc, #12]	; (62c0 <osSignalClear+0x18>)
    62b4:	46bc      	mov	ip, r7
    62b6:	df00      	svc	0
    62b8:	bd90      	pop	{r4, r7, pc}
    62ba:	2080      	movs	r0, #128	; 0x80
    62bc:	0600      	lsls	r0, r0, #24
    62be:	e7fb      	b.n	62b8 <osSignalClear+0x10>
    62c0:	00006121 	.word	0x00006121

000062c4 <osSignalWait>:
    62c4:	b5f0      	push	{r4, r5, r6, r7, lr}
    62c6:	0004      	movs	r4, r0
    62c8:	f3ef 8505 	mrs	r5, IPSR
    62cc:	2d00      	cmp	r5, #0
    62ce:	d109      	bne.n	62e4 <osSignalWait+0x20>
    62d0:	0008      	movs	r0, r1
    62d2:	0011      	movs	r1, r2
    62d4:	4f05      	ldr	r7, [pc, #20]	; (62ec <osSignalWait+0x28>)
    62d6:	46bc      	mov	ip, r7
    62d8:	df00      	svc	0
    62da:	6020      	str	r0, [r4, #0]
    62dc:	6061      	str	r1, [r4, #4]
    62de:	60a2      	str	r2, [r4, #8]
    62e0:	0020      	movs	r0, r4
    62e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    62e4:	2382      	movs	r3, #130	; 0x82
    62e6:	6003      	str	r3, [r0, #0]
    62e8:	e7fa      	b.n	62e0 <osSignalWait+0x1c>
    62ea:	0000      	.short	0x0000
    62ec:	0000614d 	.word	0x0000614d

000062f0 <svcMutexCreate>:
    62f0:	b510      	push	{r4, lr}
    62f2:	2800      	cmp	r0, #0
    62f4:	d00a      	beq.n	630c <svcMutexCreate+0x1c>
    62f6:	6804      	ldr	r4, [r0, #0]
    62f8:	2c00      	cmp	r4, #0
    62fa:	d007      	beq.n	630c <svcMutexCreate+0x1c>
    62fc:	7823      	ldrb	r3, [r4, #0]
    62fe:	2b00      	cmp	r3, #0
    6300:	d104      	bne.n	630c <svcMutexCreate+0x1c>
    6302:	0020      	movs	r0, r4
    6304:	f000 feb4 	bl	7070 <rt_mut_init>
    6308:	0020      	movs	r0, r4
    630a:	bd10      	pop	{r4, pc}
    630c:	2000      	movs	r0, #0
    630e:	e7fc      	b.n	630a <svcMutexCreate+0x1a>

00006310 <svcMutexWait>:
    6310:	b510      	push	{r4, lr}
    6312:	0004      	movs	r4, r0
    6314:	b082      	sub	sp, #8
    6316:	2080      	movs	r0, #128	; 0x80
    6318:	07a3      	lsls	r3, r4, #30
    631a:	d104      	bne.n	6326 <svcMutexWait+0x16>
    631c:	2c00      	cmp	r4, #0
    631e:	d002      	beq.n	6326 <svcMutexWait+0x16>
    6320:	7823      	ldrb	r3, [r4, #0]
    6322:	2b03      	cmp	r3, #3
    6324:	d001      	beq.n	632a <svcMutexWait+0x1a>
    6326:	b002      	add	sp, #8
    6328:	bd10      	pop	{r4, pc}
    632a:	2900      	cmp	r1, #0
    632c:	d01b      	beq.n	6366 <svcMutexWait+0x56>
    632e:	1c4b      	adds	r3, r1, #1
    6330:	d025      	beq.n	637e <svcMutexWait+0x6e>
    6332:	4b16      	ldr	r3, [pc, #88]	; (638c <svcMutexWait+0x7c>)
    6334:	4299      	cmp	r1, r3
    6336:	d824      	bhi.n	6382 <svcMutexWait+0x72>
    6338:	20fa      	movs	r0, #250	; 0xfa
    633a:	4b15      	ldr	r3, [pc, #84]	; (6390 <svcMutexWait+0x80>)
    633c:	0080      	lsls	r0, r0, #2
    633e:	4341      	muls	r1, r0
    6340:	681b      	ldr	r3, [r3, #0]
    6342:	9301      	str	r3, [sp, #4]
    6344:	3b01      	subs	r3, #1
    6346:	1858      	adds	r0, r3, r1
    6348:	9901      	ldr	r1, [sp, #4]
    634a:	f7fe f82f 	bl	43ac <__aeabi_uidiv>
    634e:	4b11      	ldr	r3, [pc, #68]	; (6394 <svcMutexWait+0x84>)
    6350:	0019      	movs	r1, r3
    6352:	4298      	cmp	r0, r3
    6354:	d917      	bls.n	6386 <svcMutexWait+0x76>
    6356:	0020      	movs	r0, r4
    6358:	f000 ff86 	bl	7268 <rt_mut_wait>
    635c:	0003      	movs	r3, r0
    635e:	2801      	cmp	r0, #1
    6360:	d108      	bne.n	6374 <svcMutexWait+0x64>
    6362:	20c1      	movs	r0, #193	; 0xc1
    6364:	e7df      	b.n	6326 <svcMutexWait+0x16>
    6366:	2100      	movs	r1, #0
    6368:	0020      	movs	r0, r4
    636a:	f000 ff7d 	bl	7268 <rt_mut_wait>
    636e:	0003      	movs	r3, r0
    6370:	2801      	cmp	r0, #1
    6372:	d002      	beq.n	637a <svcMutexWait+0x6a>
    6374:	2000      	movs	r0, #0
    6376:	2bff      	cmp	r3, #255	; 0xff
    6378:	d1d5      	bne.n	6326 <svcMutexWait+0x16>
    637a:	2081      	movs	r0, #129	; 0x81
    637c:	e7d3      	b.n	6326 <svcMutexWait+0x16>
    637e:	4906      	ldr	r1, [pc, #24]	; (6398 <svcMutexWait+0x88>)
    6380:	e7e9      	b.n	6356 <svcMutexWait+0x46>
    6382:	4904      	ldr	r1, [pc, #16]	; (6394 <svcMutexWait+0x84>)
    6384:	e7e7      	b.n	6356 <svcMutexWait+0x46>
    6386:	b281      	uxth	r1, r0
    6388:	e7e5      	b.n	6356 <svcMutexWait+0x46>
    638a:	46c0      	nop			; (mov r8, r8)
    638c:	003d0900 	.word	0x003d0900
    6390:	00008638 	.word	0x00008638
    6394:	0000fffe 	.word	0x0000fffe
    6398:	0000ffff 	.word	0x0000ffff

0000639c <svcMutexRelease>:
    639c:	b510      	push	{r4, lr}
    639e:	2380      	movs	r3, #128	; 0x80
    63a0:	0782      	lsls	r2, r0, #30
    63a2:	d104      	bne.n	63ae <svcMutexRelease+0x12>
    63a4:	2800      	cmp	r0, #0
    63a6:	d002      	beq.n	63ae <svcMutexRelease+0x12>
    63a8:	7802      	ldrb	r2, [r0, #0]
    63aa:	2a03      	cmp	r2, #3
    63ac:	d001      	beq.n	63b2 <svcMutexRelease+0x16>
    63ae:	0018      	movs	r0, r3
    63b0:	bd10      	pop	{r4, pc}
    63b2:	f000 fed5 	bl	7160 <rt_mut_release>
    63b6:	2381      	movs	r3, #129	; 0x81
    63b8:	28ff      	cmp	r0, #255	; 0xff
    63ba:	d0f8      	beq.n	63ae <svcMutexRelease+0x12>
    63bc:	2300      	movs	r3, #0
    63be:	e7f6      	b.n	63ae <svcMutexRelease+0x12>

000063c0 <svcMutexDelete>:
    63c0:	b510      	push	{r4, lr}
    63c2:	2380      	movs	r3, #128	; 0x80
    63c4:	0782      	lsls	r2, r0, #30
    63c6:	d104      	bne.n	63d2 <svcMutexDelete+0x12>
    63c8:	2800      	cmp	r0, #0
    63ca:	d002      	beq.n	63d2 <svcMutexDelete+0x12>
    63cc:	7802      	ldrb	r2, [r0, #0]
    63ce:	2a03      	cmp	r2, #3
    63d0:	d001      	beq.n	63d6 <svcMutexDelete+0x16>
    63d2:	0018      	movs	r0, r3
    63d4:	bd10      	pop	{r4, pc}
    63d6:	f000 fe53 	bl	7080 <rt_mut_delete>
    63da:	2300      	movs	r3, #0
    63dc:	e7f9      	b.n	63d2 <svcMutexDelete+0x12>
    63de:	46c0      	nop			; (mov r8, r8)

000063e0 <osMutexCreate>:
    63e0:	b5b0      	push	{r4, r5, r7, lr}
    63e2:	f3ef 8405 	mrs	r4, IPSR
    63e6:	2c00      	cmp	r4, #0
    63e8:	d119      	bne.n	641e <osMutexCreate+0x3e>
    63ea:	f3ef 8414 	mrs	r4, CONTROL
    63ee:	07e4      	lsls	r4, r4, #31
    63f0:	d411      	bmi.n	6416 <osMutexCreate+0x36>
    63f2:	4c0c      	ldr	r4, [pc, #48]	; (6424 <osMutexCreate+0x44>)
    63f4:	7824      	ldrb	r4, [r4, #0]
    63f6:	2c00      	cmp	r4, #0
    63f8:	d10d      	bne.n	6416 <osMutexCreate+0x36>
    63fa:	2800      	cmp	r0, #0
    63fc:	d00f      	beq.n	641e <osMutexCreate+0x3e>
    63fe:	6804      	ldr	r4, [r0, #0]
    6400:	2c00      	cmp	r4, #0
    6402:	d00c      	beq.n	641e <osMutexCreate+0x3e>
    6404:	7823      	ldrb	r3, [r4, #0]
    6406:	2000      	movs	r0, #0
    6408:	2b00      	cmp	r3, #0
    640a:	d107      	bne.n	641c <osMutexCreate+0x3c>
    640c:	0020      	movs	r0, r4
    640e:	f000 fe2f 	bl	7070 <rt_mut_init>
    6412:	0020      	movs	r0, r4
    6414:	e002      	b.n	641c <osMutexCreate+0x3c>
    6416:	4f04      	ldr	r7, [pc, #16]	; (6428 <osMutexCreate+0x48>)
    6418:	46bc      	mov	ip, r7
    641a:	df00      	svc	0
    641c:	bdb0      	pop	{r4, r5, r7, pc}
    641e:	2000      	movs	r0, #0
    6420:	e7fc      	b.n	641c <osMutexCreate+0x3c>
    6422:	46c0      	nop			; (mov r8, r8)
    6424:	20006075 	.word	0x20006075
    6428:	000062f1 	.word	0x000062f1

0000642c <osMutexWait>:
    642c:	b5b0      	push	{r4, r5, r7, lr}
    642e:	0005      	movs	r5, r0
    6430:	f3ef 8405 	mrs	r4, IPSR
    6434:	2082      	movs	r0, #130	; 0x82
    6436:	2c00      	cmp	r4, #0
    6438:	d000      	beq.n	643c <osMutexWait+0x10>
    643a:	bdb0      	pop	{r4, r5, r7, pc}
    643c:	0028      	movs	r0, r5
    643e:	4f02      	ldr	r7, [pc, #8]	; (6448 <osMutexWait+0x1c>)
    6440:	46bc      	mov	ip, r7
    6442:	df00      	svc	0
    6444:	e7f9      	b.n	643a <osMutexWait+0xe>
    6446:	0000      	.short	0x0000
    6448:	00006311 	.word	0x00006311

0000644c <osMutexRelease>:
    644c:	b5b0      	push	{r4, r5, r7, lr}
    644e:	0005      	movs	r5, r0
    6450:	f3ef 8405 	mrs	r4, IPSR
    6454:	2082      	movs	r0, #130	; 0x82
    6456:	2c00      	cmp	r4, #0
    6458:	d000      	beq.n	645c <osMutexRelease+0x10>
    645a:	bdb0      	pop	{r4, r5, r7, pc}
    645c:	0028      	movs	r0, r5
    645e:	4f02      	ldr	r7, [pc, #8]	; (6468 <osMutexRelease+0x1c>)
    6460:	46bc      	mov	ip, r7
    6462:	df00      	svc	0
    6464:	e7f9      	b.n	645a <osMutexRelease+0xe>
    6466:	0000      	.short	0x0000
    6468:	0000639d 	.word	0x0000639d

0000646c <osMutexDelete>:
    646c:	b5b0      	push	{r4, r5, r7, lr}
    646e:	0005      	movs	r5, r0
    6470:	f3ef 8405 	mrs	r4, IPSR
    6474:	2082      	movs	r0, #130	; 0x82
    6476:	2c00      	cmp	r4, #0
    6478:	d000      	beq.n	647c <osMutexDelete+0x10>
    647a:	bdb0      	pop	{r4, r5, r7, pc}
    647c:	0028      	movs	r0, r5
    647e:	4f02      	ldr	r7, [pc, #8]	; (6488 <osMutexDelete+0x1c>)
    6480:	46bc      	mov	ip, r7
    6482:	df00      	svc	0
    6484:	e7f9      	b.n	647a <osMutexDelete+0xe>
    6486:	0000      	.short	0x0000
    6488:	000063c1 	.word	0x000063c1

0000648c <svcSemaphoreCreate>:
    648c:	b510      	push	{r4, lr}
    648e:	2800      	cmp	r0, #0
    6490:	d00e      	beq.n	64b0 <svcSemaphoreCreate+0x24>
    6492:	6804      	ldr	r4, [r0, #0]
    6494:	2c00      	cmp	r4, #0
    6496:	d00b      	beq.n	64b0 <svcSemaphoreCreate+0x24>
    6498:	7823      	ldrb	r3, [r4, #0]
    649a:	2b00      	cmp	r3, #0
    649c:	d108      	bne.n	64b0 <svcSemaphoreCreate+0x24>
    649e:	4b05      	ldr	r3, [pc, #20]	; (64b4 <svcSemaphoreCreate+0x28>)
    64a0:	4299      	cmp	r1, r3
    64a2:	dc05      	bgt.n	64b0 <svcSemaphoreCreate+0x24>
    64a4:	0020      	movs	r0, r4
    64a6:	b289      	uxth	r1, r1
    64a8:	f000 ff4a 	bl	7340 <rt_sem_init>
    64ac:	0020      	movs	r0, r4
    64ae:	bd10      	pop	{r4, pc}
    64b0:	2000      	movs	r0, #0
    64b2:	e7fc      	b.n	64ae <svcSemaphoreCreate+0x22>
    64b4:	0000ffff 	.word	0x0000ffff

000064b8 <svcSemaphoreWait>:
    64b8:	b510      	push	{r4, lr}
    64ba:	0004      	movs	r4, r0
    64bc:	b082      	sub	sp, #8
    64be:	0783      	lsls	r3, r0, #30
    64c0:	d111      	bne.n	64e6 <svcSemaphoreWait+0x2e>
    64c2:	2800      	cmp	r0, #0
    64c4:	d00f      	beq.n	64e6 <svcSemaphoreWait+0x2e>
    64c6:	7803      	ldrb	r3, [r0, #0]
    64c8:	2b02      	cmp	r3, #2
    64ca:	d10c      	bne.n	64e6 <svcSemaphoreWait+0x2e>
    64cc:	2300      	movs	r3, #0
    64ce:	2900      	cmp	r1, #0
    64d0:	d10c      	bne.n	64ec <svcSemaphoreWait+0x34>
    64d2:	0019      	movs	r1, r3
    64d4:	0020      	movs	r0, r4
    64d6:	f000 ff83 	bl	73e0 <rt_sem_wait>
    64da:	2801      	cmp	r0, #1
    64dc:	d023      	beq.n	6526 <svcSemaphoreWait+0x6e>
    64de:	8860      	ldrh	r0, [r4, #2]
    64e0:	3001      	adds	r0, #1
    64e2:	b002      	add	sp, #8
    64e4:	bd10      	pop	{r4, pc}
    64e6:	2001      	movs	r0, #1
    64e8:	4240      	negs	r0, r0
    64ea:	e7fa      	b.n	64e2 <svcSemaphoreWait+0x2a>
    64ec:	1c4b      	adds	r3, r1, #1
    64ee:	d01c      	beq.n	652a <svcSemaphoreWait+0x72>
    64f0:	4b0f      	ldr	r3, [pc, #60]	; (6530 <svcSemaphoreWait+0x78>)
    64f2:	4299      	cmp	r1, r3
    64f4:	d810      	bhi.n	6518 <svcSemaphoreWait+0x60>
    64f6:	20fa      	movs	r0, #250	; 0xfa
    64f8:	4b0e      	ldr	r3, [pc, #56]	; (6534 <svcSemaphoreWait+0x7c>)
    64fa:	0080      	lsls	r0, r0, #2
    64fc:	4341      	muls	r1, r0
    64fe:	681b      	ldr	r3, [r3, #0]
    6500:	9301      	str	r3, [sp, #4]
    6502:	3b01      	subs	r3, #1
    6504:	1858      	adds	r0, r3, r1
    6506:	9901      	ldr	r1, [sp, #4]
    6508:	f7fd ff50 	bl	43ac <__aeabi_uidiv>
    650c:	4a0a      	ldr	r2, [pc, #40]	; (6538 <svcSemaphoreWait+0x80>)
    650e:	0013      	movs	r3, r2
    6510:	4290      	cmp	r0, r2
    6512:	d8de      	bhi.n	64d2 <svcSemaphoreWait+0x1a>
    6514:	b283      	uxth	r3, r0
    6516:	e7dc      	b.n	64d2 <svcSemaphoreWait+0x1a>
    6518:	4b07      	ldr	r3, [pc, #28]	; (6538 <svcSemaphoreWait+0x80>)
    651a:	0020      	movs	r0, r4
    651c:	0019      	movs	r1, r3
    651e:	f000 ff5f 	bl	73e0 <rt_sem_wait>
    6522:	2801      	cmp	r0, #1
    6524:	d1db      	bne.n	64de <svcSemaphoreWait+0x26>
    6526:	2000      	movs	r0, #0
    6528:	e7db      	b.n	64e2 <svcSemaphoreWait+0x2a>
    652a:	4b04      	ldr	r3, [pc, #16]	; (653c <svcSemaphoreWait+0x84>)
    652c:	e7d1      	b.n	64d2 <svcSemaphoreWait+0x1a>
    652e:	46c0      	nop			; (mov r8, r8)
    6530:	003d0900 	.word	0x003d0900
    6534:	00008638 	.word	0x00008638
    6538:	0000fffe 	.word	0x0000fffe
    653c:	0000ffff 	.word	0x0000ffff

00006540 <svcSemaphoreRelease>:
    6540:	b510      	push	{r4, lr}
    6542:	2380      	movs	r3, #128	; 0x80
    6544:	0782      	lsls	r2, r0, #30
    6546:	d104      	bne.n	6552 <svcSemaphoreRelease+0x12>
    6548:	2800      	cmp	r0, #0
    654a:	d002      	beq.n	6552 <svcSemaphoreRelease+0x12>
    654c:	7802      	ldrb	r2, [r0, #0]
    654e:	2a02      	cmp	r2, #2
    6550:	d001      	beq.n	6556 <svcSemaphoreRelease+0x16>
    6552:	0018      	movs	r0, r3
    6554:	bd10      	pop	{r4, pc}
    6556:	8841      	ldrh	r1, [r0, #2]
    6558:	4a03      	ldr	r2, [pc, #12]	; (6568 <svcSemaphoreRelease+0x28>)
    655a:	3301      	adds	r3, #1
    655c:	4291      	cmp	r1, r2
    655e:	d0f8      	beq.n	6552 <svcSemaphoreRelease+0x12>
    6560:	f000 ff28 	bl	73b4 <rt_sem_send>
    6564:	2300      	movs	r3, #0
    6566:	e7f4      	b.n	6552 <svcSemaphoreRelease+0x12>
    6568:	0000ffff 	.word	0x0000ffff

0000656c <svcSemaphoreDelete>:
    656c:	b510      	push	{r4, lr}
    656e:	2380      	movs	r3, #128	; 0x80
    6570:	0782      	lsls	r2, r0, #30
    6572:	d104      	bne.n	657e <svcSemaphoreDelete+0x12>
    6574:	2800      	cmp	r0, #0
    6576:	d002      	beq.n	657e <svcSemaphoreDelete+0x12>
    6578:	7802      	ldrb	r2, [r0, #0]
    657a:	2a02      	cmp	r2, #2
    657c:	d001      	beq.n	6582 <svcSemaphoreDelete+0x16>
    657e:	0018      	movs	r0, r3
    6580:	bd10      	pop	{r4, pc}
    6582:	f000 fee3 	bl	734c <rt_sem_delete>
    6586:	2300      	movs	r3, #0
    6588:	e7f9      	b.n	657e <svcSemaphoreDelete+0x12>
    658a:	46c0      	nop			; (mov r8, r8)

0000658c <isrSemaphoreRelease>:
    658c:	b510      	push	{r4, lr}
    658e:	2380      	movs	r3, #128	; 0x80
    6590:	0782      	lsls	r2, r0, #30
    6592:	d104      	bne.n	659e <isrSemaphoreRelease+0x12>
    6594:	2800      	cmp	r0, #0
    6596:	d002      	beq.n	659e <isrSemaphoreRelease+0x12>
    6598:	7802      	ldrb	r2, [r0, #0]
    659a:	2a02      	cmp	r2, #2
    659c:	d001      	beq.n	65a2 <isrSemaphoreRelease+0x16>
    659e:	0018      	movs	r0, r3
    65a0:	bd10      	pop	{r4, pc}
    65a2:	8841      	ldrh	r1, [r0, #2]
    65a4:	4a03      	ldr	r2, [pc, #12]	; (65b4 <isrSemaphoreRelease+0x28>)
    65a6:	3301      	adds	r3, #1
    65a8:	4291      	cmp	r1, r2
    65aa:	d0f8      	beq.n	659e <isrSemaphoreRelease+0x12>
    65ac:	f000 ff3a 	bl	7424 <isr_sem_send>
    65b0:	2300      	movs	r3, #0
    65b2:	e7f4      	b.n	659e <isrSemaphoreRelease+0x12>
    65b4:	0000ffff 	.word	0x0000ffff

000065b8 <osSemaphoreCreate>:
    65b8:	b5b0      	push	{r4, r5, r7, lr}
    65ba:	f3ef 8405 	mrs	r4, IPSR
    65be:	2c00      	cmp	r4, #0
    65c0:	d11c      	bne.n	65fc <osSemaphoreCreate+0x44>
    65c2:	f3ef 8414 	mrs	r4, CONTROL
    65c6:	07e4      	lsls	r4, r4, #31
    65c8:	d503      	bpl.n	65d2 <osSemaphoreCreate+0x1a>
    65ca:	4f0f      	ldr	r7, [pc, #60]	; (6608 <osSemaphoreCreate+0x50>)
    65cc:	46bc      	mov	ip, r7
    65ce:	df00      	svc	0
    65d0:	bdb0      	pop	{r4, r5, r7, pc}
    65d2:	4c0b      	ldr	r4, [pc, #44]	; (6600 <osSemaphoreCreate+0x48>)
    65d4:	7824      	ldrb	r4, [r4, #0]
    65d6:	2c00      	cmp	r4, #0
    65d8:	d1f7      	bne.n	65ca <osSemaphoreCreate+0x12>
    65da:	2800      	cmp	r0, #0
    65dc:	d00e      	beq.n	65fc <osSemaphoreCreate+0x44>
    65de:	6804      	ldr	r4, [r0, #0]
    65e0:	2c00      	cmp	r4, #0
    65e2:	d00b      	beq.n	65fc <osSemaphoreCreate+0x44>
    65e4:	7823      	ldrb	r3, [r4, #0]
    65e6:	2b00      	cmp	r3, #0
    65e8:	d108      	bne.n	65fc <osSemaphoreCreate+0x44>
    65ea:	4b06      	ldr	r3, [pc, #24]	; (6604 <osSemaphoreCreate+0x4c>)
    65ec:	4299      	cmp	r1, r3
    65ee:	dc05      	bgt.n	65fc <osSemaphoreCreate+0x44>
    65f0:	0020      	movs	r0, r4
    65f2:	b289      	uxth	r1, r1
    65f4:	f000 fea4 	bl	7340 <rt_sem_init>
    65f8:	0020      	movs	r0, r4
    65fa:	e7e9      	b.n	65d0 <osSemaphoreCreate+0x18>
    65fc:	2000      	movs	r0, #0
    65fe:	e7e7      	b.n	65d0 <osSemaphoreCreate+0x18>
    6600:	20006075 	.word	0x20006075
    6604:	0000ffff 	.word	0x0000ffff
    6608:	0000648d 	.word	0x0000648d

0000660c <osSemaphoreWait>:
    660c:	b590      	push	{r4, r7, lr}
    660e:	f3ef 8405 	mrs	r4, IPSR
    6612:	2c00      	cmp	r4, #0
    6614:	d103      	bne.n	661e <osSemaphoreWait+0x12>
    6616:	4f03      	ldr	r7, [pc, #12]	; (6624 <osSemaphoreWait+0x18>)
    6618:	46bc      	mov	ip, r7
    661a:	df00      	svc	0
    661c:	bd90      	pop	{r4, r7, pc}
    661e:	2001      	movs	r0, #1
    6620:	4240      	negs	r0, r0
    6622:	e7fb      	b.n	661c <osSemaphoreWait+0x10>
    6624:	000064b9 	.word	0x000064b9

00006628 <osSemaphoreRelease>:
    6628:	b5b0      	push	{r4, r5, r7, lr}
    662a:	f3ef 8405 	mrs	r4, IPSR
    662e:	2c00      	cmp	r4, #0
    6630:	d105      	bne.n	663e <osSemaphoreRelease+0x16>
    6632:	4f0c      	ldr	r7, [pc, #48]	; (6664 <osSemaphoreRelease+0x3c>)
    6634:	46bc      	mov	ip, r7
    6636:	df00      	svc	0
    6638:	0003      	movs	r3, r0
    663a:	0018      	movs	r0, r3
    663c:	bdb0      	pop	{r4, r5, r7, pc}
    663e:	2380      	movs	r3, #128	; 0x80
    6640:	0782      	lsls	r2, r0, #30
    6642:	d1fa      	bne.n	663a <osSemaphoreRelease+0x12>
    6644:	2800      	cmp	r0, #0
    6646:	d0f8      	beq.n	663a <osSemaphoreRelease+0x12>
    6648:	7802      	ldrb	r2, [r0, #0]
    664a:	2a02      	cmp	r2, #2
    664c:	d1f5      	bne.n	663a <osSemaphoreRelease+0x12>
    664e:	8841      	ldrh	r1, [r0, #2]
    6650:	4a03      	ldr	r2, [pc, #12]	; (6660 <osSemaphoreRelease+0x38>)
    6652:	3301      	adds	r3, #1
    6654:	4291      	cmp	r1, r2
    6656:	d0f0      	beq.n	663a <osSemaphoreRelease+0x12>
    6658:	f000 fee4 	bl	7424 <isr_sem_send>
    665c:	2300      	movs	r3, #0
    665e:	e7ec      	b.n	663a <osSemaphoreRelease+0x12>
    6660:	0000ffff 	.word	0x0000ffff
    6664:	00006541 	.word	0x00006541

00006668 <osSemaphoreDelete>:
    6668:	b5b0      	push	{r4, r5, r7, lr}
    666a:	0005      	movs	r5, r0
    666c:	f3ef 8405 	mrs	r4, IPSR
    6670:	2082      	movs	r0, #130	; 0x82
    6672:	2c00      	cmp	r4, #0
    6674:	d000      	beq.n	6678 <osSemaphoreDelete+0x10>
    6676:	bdb0      	pop	{r4, r5, r7, pc}
    6678:	0028      	movs	r0, r5
    667a:	4f02      	ldr	r7, [pc, #8]	; (6684 <osSemaphoreDelete+0x1c>)
    667c:	46bc      	mov	ip, r7
    667e:	df00      	svc	0
    6680:	e7f9      	b.n	6676 <osSemaphoreDelete+0xe>
    6682:	0000      	.short	0x0000
    6684:	0000656d 	.word	0x0000656d

00006688 <svcPoolCreate>:
    6688:	b510      	push	{r4, lr}
    668a:	1e04      	subs	r4, r0, #0
    668c:	d011      	beq.n	66b2 <svcPoolCreate+0x2a>
    668e:	6801      	ldr	r1, [r0, #0]
    6690:	2900      	cmp	r1, #0
    6692:	d00e      	beq.n	66b2 <svcPoolCreate+0x2a>
    6694:	6842      	ldr	r2, [r0, #4]
    6696:	2a00      	cmp	r2, #0
    6698:	d00b      	beq.n	66b2 <svcPoolCreate+0x2a>
    669a:	6880      	ldr	r0, [r0, #8]
    669c:	2800      	cmp	r0, #0
    669e:	d008      	beq.n	66b2 <svcPoolCreate+0x2a>
    66a0:	2303      	movs	r3, #3
    66a2:	3203      	adds	r2, #3
    66a4:	439a      	bics	r2, r3
    66a6:	4351      	muls	r1, r2
    66a8:	310c      	adds	r1, #12
    66aa:	f000 fc81 	bl	6fb0 <_init_box>
    66ae:	68a0      	ldr	r0, [r4, #8]
    66b0:	bd10      	pop	{r4, pc}
    66b2:	2000      	movs	r0, #0
    66b4:	e7fc      	b.n	66b0 <svcPoolCreate+0x28>
    66b6:	46c0      	nop			; (mov r8, r8)

000066b8 <sysPoolAlloc>:
    66b8:	b510      	push	{r4, lr}
    66ba:	2800      	cmp	r0, #0
    66bc:	d002      	beq.n	66c4 <sysPoolAlloc+0xc>
    66be:	f000 fca3 	bl	7008 <rt_alloc_box>
    66c2:	bd10      	pop	{r4, pc}
    66c4:	2000      	movs	r0, #0
    66c6:	e7fc      	b.n	66c2 <sysPoolAlloc+0xa>

000066c8 <sysPoolFree>:
    66c8:	b510      	push	{r4, lr}
    66ca:	2380      	movs	r3, #128	; 0x80
    66cc:	2800      	cmp	r0, #0
    66ce:	d006      	beq.n	66de <sysPoolFree+0x16>
    66d0:	f000 fcba 	bl	7048 <rt_free_box>
    66d4:	1e42      	subs	r2, r0, #1
    66d6:	4190      	sbcs	r0, r2
    66d8:	2386      	movs	r3, #134	; 0x86
    66da:	4240      	negs	r0, r0
    66dc:	4003      	ands	r3, r0
    66de:	0018      	movs	r0, r3
    66e0:	bd10      	pop	{r4, pc}
    66e2:	46c0      	nop			; (mov r8, r8)

000066e4 <osPoolCreate>:
    66e4:	b5b0      	push	{r4, r5, r7, lr}
    66e6:	0004      	movs	r4, r0
    66e8:	f3ef 8005 	mrs	r0, IPSR
    66ec:	2800      	cmp	r0, #0
    66ee:	d120      	bne.n	6732 <osPoolCreate+0x4e>
    66f0:	f3ef 8014 	mrs	r0, CONTROL
    66f4:	07c0      	lsls	r0, r0, #31
    66f6:	d504      	bpl.n	6702 <osPoolCreate+0x1e>
    66f8:	0020      	movs	r0, r4
    66fa:	4f10      	ldr	r7, [pc, #64]	; (673c <osPoolCreate+0x58>)
    66fc:	46bc      	mov	ip, r7
    66fe:	df00      	svc	0
    6700:	bdb0      	pop	{r4, r5, r7, pc}
    6702:	480d      	ldr	r0, [pc, #52]	; (6738 <osPoolCreate+0x54>)
    6704:	7800      	ldrb	r0, [r0, #0]
    6706:	2800      	cmp	r0, #0
    6708:	d1f6      	bne.n	66f8 <osPoolCreate+0x14>
    670a:	2c00      	cmp	r4, #0
    670c:	d011      	beq.n	6732 <osPoolCreate+0x4e>
    670e:	6821      	ldr	r1, [r4, #0]
    6710:	2900      	cmp	r1, #0
    6712:	d00e      	beq.n	6732 <osPoolCreate+0x4e>
    6714:	6862      	ldr	r2, [r4, #4]
    6716:	2a00      	cmp	r2, #0
    6718:	d00b      	beq.n	6732 <osPoolCreate+0x4e>
    671a:	68a0      	ldr	r0, [r4, #8]
    671c:	2800      	cmp	r0, #0
    671e:	d008      	beq.n	6732 <osPoolCreate+0x4e>
    6720:	2303      	movs	r3, #3
    6722:	3203      	adds	r2, #3
    6724:	439a      	bics	r2, r3
    6726:	4351      	muls	r1, r2
    6728:	310c      	adds	r1, #12
    672a:	f000 fc41 	bl	6fb0 <_init_box>
    672e:	68a0      	ldr	r0, [r4, #8]
    6730:	e7e6      	b.n	6700 <osPoolCreate+0x1c>
    6732:	2000      	movs	r0, #0
    6734:	e7e4      	b.n	6700 <osPoolCreate+0x1c>
    6736:	46c0      	nop			; (mov r8, r8)
    6738:	20006075 	.word	0x20006075
    673c:	00006689 	.word	0x00006689

00006740 <osPoolAlloc>:
    6740:	b5b0      	push	{r4, r5, r7, lr}
    6742:	f3ef 8405 	mrs	r4, IPSR
    6746:	2c00      	cmp	r4, #0
    6748:	d103      	bne.n	6752 <osPoolAlloc+0x12>
    674a:	f3ef 8414 	mrs	r4, CONTROL
    674e:	07e4      	lsls	r4, r4, #31
    6750:	d404      	bmi.n	675c <osPoolAlloc+0x1c>
    6752:	2800      	cmp	r0, #0
    6754:	d006      	beq.n	6764 <osPoolAlloc+0x24>
    6756:	f000 fc57 	bl	7008 <rt_alloc_box>
    675a:	bdb0      	pop	{r4, r5, r7, pc}
    675c:	4f02      	ldr	r7, [pc, #8]	; (6768 <osPoolAlloc+0x28>)
    675e:	46bc      	mov	ip, r7
    6760:	df00      	svc	0
    6762:	e7fa      	b.n	675a <osPoolAlloc+0x1a>
    6764:	2000      	movs	r0, #0
    6766:	e7f8      	b.n	675a <osPoolAlloc+0x1a>
    6768:	000066b9 	.word	0x000066b9

0000676c <osPoolCAlloc>:
    676c:	b5b0      	push	{r4, r5, r7, lr}
    676e:	0004      	movs	r4, r0
    6770:	f3ef 8005 	mrs	r0, IPSR
    6774:	2800      	cmp	r0, #0
    6776:	d103      	bne.n	6780 <osPoolCAlloc+0x14>
    6778:	f3ef 8014 	mrs	r0, CONTROL
    677c:	07c0      	lsls	r0, r0, #31
    677e:	d410      	bmi.n	67a2 <osPoolCAlloc+0x36>
    6780:	2c00      	cmp	r4, #0
    6782:	d015      	beq.n	67b0 <osPoolCAlloc+0x44>
    6784:	0020      	movs	r0, r4
    6786:	f000 fc3f 	bl	7008 <rt_alloc_box>
    678a:	2800      	cmp	r0, #0
    678c:	d010      	beq.n	67b0 <osPoolCAlloc+0x44>
    678e:	68a3      	ldr	r3, [r4, #8]
    6790:	2b00      	cmp	r3, #0
    6792:	d005      	beq.n	67a0 <osPoolCAlloc+0x34>
    6794:	0002      	movs	r2, r0
    6796:	2100      	movs	r1, #0
    6798:	3b04      	subs	r3, #4
    679a:	c202      	stmia	r2!, {r1}
    679c:	2b00      	cmp	r3, #0
    679e:	d1fb      	bne.n	6798 <osPoolCAlloc+0x2c>
    67a0:	bdb0      	pop	{r4, r5, r7, pc}
    67a2:	0020      	movs	r0, r4
    67a4:	4f03      	ldr	r7, [pc, #12]	; (67b4 <osPoolCAlloc+0x48>)
    67a6:	46bc      	mov	ip, r7
    67a8:	df00      	svc	0
    67aa:	2c00      	cmp	r4, #0
    67ac:	d1ed      	bne.n	678a <osPoolCAlloc+0x1e>
    67ae:	e7f7      	b.n	67a0 <osPoolCAlloc+0x34>
    67b0:	2000      	movs	r0, #0
    67b2:	e7f5      	b.n	67a0 <osPoolCAlloc+0x34>
    67b4:	000066b9 	.word	0x000066b9

000067b8 <osPoolFree>:
    67b8:	b5b0      	push	{r4, r5, r7, lr}
    67ba:	f3ef 8405 	mrs	r4, IPSR
    67be:	2c00      	cmp	r4, #0
    67c0:	d103      	bne.n	67ca <osPoolFree+0x12>
    67c2:	f3ef 8414 	mrs	r4, CONTROL
    67c6:	07e4      	lsls	r4, r4, #31
    67c8:	d40a      	bmi.n	67e0 <osPoolFree+0x28>
    67ca:	2800      	cmp	r0, #0
    67cc:	d00c      	beq.n	67e8 <osPoolFree+0x30>
    67ce:	f000 fc3b 	bl	7048 <rt_free_box>
    67d2:	0003      	movs	r3, r0
    67d4:	1e5a      	subs	r2, r3, #1
    67d6:	4193      	sbcs	r3, r2
    67d8:	2086      	movs	r0, #134	; 0x86
    67da:	425b      	negs	r3, r3
    67dc:	4018      	ands	r0, r3
    67de:	bdb0      	pop	{r4, r5, r7, pc}
    67e0:	4f02      	ldr	r7, [pc, #8]	; (67ec <osPoolFree+0x34>)
    67e2:	46bc      	mov	ip, r7
    67e4:	df00      	svc	0
    67e6:	e7fa      	b.n	67de <osPoolFree+0x26>
    67e8:	2080      	movs	r0, #128	; 0x80
    67ea:	e7f8      	b.n	67de <osPoolFree+0x26>
    67ec:	000066c9 	.word	0x000066c9

000067f0 <svcMessageCreate>:
    67f0:	b510      	push	{r4, lr}
    67f2:	1e04      	subs	r4, r0, #0
    67f4:	d00f      	beq.n	6816 <svcMessageCreate+0x26>
    67f6:	6801      	ldr	r1, [r0, #0]
    67f8:	2900      	cmp	r1, #0
    67fa:	d00c      	beq.n	6816 <svcMessageCreate+0x26>
    67fc:	6840      	ldr	r0, [r0, #4]
    67fe:	2800      	cmp	r0, #0
    6800:	d009      	beq.n	6816 <svcMessageCreate+0x26>
    6802:	7803      	ldrb	r3, [r0, #0]
    6804:	2b00      	cmp	r3, #0
    6806:	d106      	bne.n	6816 <svcMessageCreate+0x26>
    6808:	3104      	adds	r1, #4
    680a:	0089      	lsls	r1, r1, #2
    680c:	b289      	uxth	r1, r1
    680e:	f000 fe2b 	bl	7468 <rt_mbx_init>
    6812:	6860      	ldr	r0, [r4, #4]
    6814:	bd10      	pop	{r4, pc}
    6816:	2000      	movs	r0, #0
    6818:	e7fc      	b.n	6814 <svcMessageCreate+0x24>
    681a:	46c0      	nop			; (mov r8, r8)

0000681c <svcMessagePut>:
    681c:	b570      	push	{r4, r5, r6, lr}
    681e:	0004      	movs	r4, r0
    6820:	b082      	sub	sp, #8
    6822:	000e      	movs	r6, r1
    6824:	0015      	movs	r5, r2
    6826:	2800      	cmp	r0, #0
    6828:	d005      	beq.n	6836 <svcMessagePut+0x1a>
    682a:	7803      	ldrb	r3, [r0, #0]
    682c:	2080      	movs	r0, #128	; 0x80
    682e:	2b01      	cmp	r3, #1
    6830:	d003      	beq.n	683a <svcMessagePut+0x1e>
    6832:	b002      	add	sp, #8
    6834:	bd70      	pop	{r4, r5, r6, pc}
    6836:	2080      	movs	r0, #128	; 0x80
    6838:	e7fb      	b.n	6832 <svcMessagePut+0x16>
    683a:	2200      	movs	r2, #0
    683c:	2d00      	cmp	r5, #0
    683e:	d014      	beq.n	686a <svcMessagePut+0x4e>
    6840:	1c6b      	adds	r3, r5, #1
    6842:	d01f      	beq.n	6884 <svcMessagePut+0x68>
    6844:	4b11      	ldr	r3, [pc, #68]	; (688c <svcMessagePut+0x70>)
    6846:	429d      	cmp	r5, r3
    6848:	d81e      	bhi.n	6888 <svcMessagePut+0x6c>
    684a:	20fa      	movs	r0, #250	; 0xfa
    684c:	4b10      	ldr	r3, [pc, #64]	; (6890 <svcMessagePut+0x74>)
    684e:	0080      	lsls	r0, r0, #2
    6850:	4368      	muls	r0, r5
    6852:	681b      	ldr	r3, [r3, #0]
    6854:	9301      	str	r3, [sp, #4]
    6856:	3b01      	subs	r3, #1
    6858:	18c0      	adds	r0, r0, r3
    685a:	9901      	ldr	r1, [sp, #4]
    685c:	f7fd fda6 	bl	43ac <__aeabi_uidiv>
    6860:	4b0c      	ldr	r3, [pc, #48]	; (6894 <svcMessagePut+0x78>)
    6862:	001a      	movs	r2, r3
    6864:	4298      	cmp	r0, r3
    6866:	d800      	bhi.n	686a <svcMessagePut+0x4e>
    6868:	b282      	uxth	r2, r0
    686a:	0031      	movs	r1, r6
    686c:	0020      	movs	r0, r4
    686e:	f000 fe09 	bl	7484 <rt_mbx_send>
    6872:	0003      	movs	r3, r0
    6874:	2000      	movs	r0, #0
    6876:	2b01      	cmp	r3, #1
    6878:	d1db      	bne.n	6832 <svcMessagePut+0x16>
    687a:	30c1      	adds	r0, #193	; 0xc1
    687c:	2d00      	cmp	r5, #0
    687e:	d1d8      	bne.n	6832 <svcMessagePut+0x16>
    6880:	3840      	subs	r0, #64	; 0x40
    6882:	e7d6      	b.n	6832 <svcMessagePut+0x16>
    6884:	4a04      	ldr	r2, [pc, #16]	; (6898 <svcMessagePut+0x7c>)
    6886:	e7f0      	b.n	686a <svcMessagePut+0x4e>
    6888:	4a02      	ldr	r2, [pc, #8]	; (6894 <svcMessagePut+0x78>)
    688a:	e7ee      	b.n	686a <svcMessagePut+0x4e>
    688c:	003d0900 	.word	0x003d0900
    6890:	00008638 	.word	0x00008638
    6894:	0000fffe 	.word	0x0000fffe
    6898:	0000ffff 	.word	0x0000ffff

0000689c <svcMessageGet>:
    689c:	b510      	push	{r4, lr}
    689e:	0004      	movs	r4, r0
    68a0:	b086      	sub	sp, #24
    68a2:	2800      	cmp	r0, #0
    68a4:	d002      	beq.n	68ac <svcMessageGet+0x10>
    68a6:	7803      	ldrb	r3, [r0, #0]
    68a8:	2b01      	cmp	r3, #1
    68aa:	d005      	beq.n	68b8 <svcMessageGet+0x1c>
    68ac:	2080      	movs	r0, #128	; 0x80
    68ae:	2100      	movs	r1, #0
    68b0:	2200      	movs	r2, #0
    68b2:	2300      	movs	r3, #0
    68b4:	b006      	add	sp, #24
    68b6:	bd10      	pop	{r4, pc}
    68b8:	2900      	cmp	r1, #0
    68ba:	d01c      	beq.n	68f6 <svcMessageGet+0x5a>
    68bc:	1c4b      	adds	r3, r1, #1
    68be:	d02a      	beq.n	6916 <svcMessageGet+0x7a>
    68c0:	4b16      	ldr	r3, [pc, #88]	; (691c <svcMessageGet+0x80>)
    68c2:	4299      	cmp	r1, r3
    68c4:	d820      	bhi.n	6908 <svcMessageGet+0x6c>
    68c6:	20fa      	movs	r0, #250	; 0xfa
    68c8:	4b15      	ldr	r3, [pc, #84]	; (6920 <svcMessageGet+0x84>)
    68ca:	0080      	lsls	r0, r0, #2
    68cc:	4341      	muls	r1, r0
    68ce:	681b      	ldr	r3, [r3, #0]
    68d0:	9301      	str	r3, [sp, #4]
    68d2:	3b01      	subs	r3, #1
    68d4:	1858      	adds	r0, r3, r1
    68d6:	9901      	ldr	r1, [sp, #4]
    68d8:	f7fd fd68 	bl	43ac <__aeabi_uidiv>
    68dc:	4b11      	ldr	r3, [pc, #68]	; (6924 <svcMessageGet+0x88>)
    68de:	001a      	movs	r2, r3
    68e0:	4298      	cmp	r0, r3
    68e2:	d916      	bls.n	6912 <svcMessageGet+0x76>
    68e4:	a904      	add	r1, sp, #16
    68e6:	0020      	movs	r0, r4
    68e8:	f000 fe18 	bl	751c <rt_mbx_wait>
    68ec:	2801      	cmp	r0, #1
    68ee:	d00d      	beq.n	690c <svcMessageGet+0x70>
    68f0:	2010      	movs	r0, #16
    68f2:	9904      	ldr	r1, [sp, #16]
    68f4:	e7dc      	b.n	68b0 <svcMessageGet+0x14>
    68f6:	2200      	movs	r2, #0
    68f8:	a904      	add	r1, sp, #16
    68fa:	f000 fe0f 	bl	751c <rt_mbx_wait>
    68fe:	2801      	cmp	r0, #1
    6900:	d1f6      	bne.n	68f0 <svcMessageGet+0x54>
    6902:	2000      	movs	r0, #0
    6904:	9904      	ldr	r1, [sp, #16]
    6906:	e7d3      	b.n	68b0 <svcMessageGet+0x14>
    6908:	4a06      	ldr	r2, [pc, #24]	; (6924 <svcMessageGet+0x88>)
    690a:	e7eb      	b.n	68e4 <svcMessageGet+0x48>
    690c:	2040      	movs	r0, #64	; 0x40
    690e:	9904      	ldr	r1, [sp, #16]
    6910:	e7ce      	b.n	68b0 <svcMessageGet+0x14>
    6912:	b282      	uxth	r2, r0
    6914:	e7e6      	b.n	68e4 <svcMessageGet+0x48>
    6916:	4a04      	ldr	r2, [pc, #16]	; (6928 <svcMessageGet+0x8c>)
    6918:	e7e4      	b.n	68e4 <svcMessageGet+0x48>
    691a:	46c0      	nop			; (mov r8, r8)
    691c:	003d0900 	.word	0x003d0900
    6920:	00008638 	.word	0x00008638
    6924:	0000fffe 	.word	0x0000fffe
    6928:	0000ffff 	.word	0x0000ffff

0000692c <isrMessagePut>:
    692c:	b570      	push	{r4, r5, r6, lr}
    692e:	0004      	movs	r4, r0
    6930:	000d      	movs	r5, r1
    6932:	2080      	movs	r0, #128	; 0x80
    6934:	2c00      	cmp	r4, #0
    6936:	d001      	beq.n	693c <isrMessagePut+0x10>
    6938:	2a00      	cmp	r2, #0
    693a:	d000      	beq.n	693e <isrMessagePut+0x12>
    693c:	bd70      	pop	{r4, r5, r6, pc}
    693e:	7823      	ldrb	r3, [r4, #0]
    6940:	2b01      	cmp	r3, #1
    6942:	d1fb      	bne.n	693c <isrMessagePut+0x10>
    6944:	0020      	movs	r0, r4
    6946:	f000 fe45 	bl	75d4 <rt_mbx_check>
    694a:	0003      	movs	r3, r0
    694c:	2081      	movs	r0, #129	; 0x81
    694e:	2b00      	cmp	r3, #0
    6950:	d0f4      	beq.n	693c <isrMessagePut+0x10>
    6952:	0020      	movs	r0, r4
    6954:	0029      	movs	r1, r5
    6956:	f000 fe41 	bl	75dc <isr_mbx_send>
    695a:	2000      	movs	r0, #0
    695c:	e7ee      	b.n	693c <isrMessagePut+0x10>
    695e:	46c0      	nop			; (mov r8, r8)

00006960 <isrMessageGet>:
    6960:	b570      	push	{r4, r5, r6, lr}
    6962:	0004      	movs	r4, r0
    6964:	b084      	sub	sp, #16
    6966:	0008      	movs	r0, r1
    6968:	0015      	movs	r5, r2
    696a:	2900      	cmp	r1, #0
    696c:	d004      	beq.n	6978 <isrMessageGet+0x18>
    696e:	2a00      	cmp	r2, #0
    6970:	d102      	bne.n	6978 <isrMessageGet+0x18>
    6972:	780b      	ldrb	r3, [r1, #0]
    6974:	2b01      	cmp	r3, #1
    6976:	d004      	beq.n	6982 <isrMessageGet+0x22>
    6978:	2380      	movs	r3, #128	; 0x80
    697a:	6023      	str	r3, [r4, #0]
    697c:	0020      	movs	r0, r4
    697e:	b004      	add	sp, #16
    6980:	bd70      	pop	{r4, r5, r6, pc}
    6982:	a902      	add	r1, sp, #8
    6984:	ae01      	add	r6, sp, #4
    6986:	f000 fe2f 	bl	75e8 <isr_mbx_receive>
    698a:	2804      	cmp	r0, #4
    698c:	d004      	beq.n	6998 <isrMessageGet+0x38>
    698e:	0023      	movs	r3, r4
    6990:	9501      	str	r5, [sp, #4]
    6992:	ce07      	ldmia	r6!, {r0, r1, r2}
    6994:	c307      	stmia	r3!, {r0, r1, r2}
    6996:	e7f1      	b.n	697c <isrMessageGet+0x1c>
    6998:	2310      	movs	r3, #16
    699a:	9301      	str	r3, [sp, #4]
    699c:	0023      	movs	r3, r4
    699e:	ce07      	ldmia	r6!, {r0, r1, r2}
    69a0:	c307      	stmia	r3!, {r0, r1, r2}
    69a2:	e7eb      	b.n	697c <isrMessageGet+0x1c>

000069a4 <osMessageCreate>:
    69a4:	b5b0      	push	{r4, r5, r7, lr}
    69a6:	0004      	movs	r4, r0
    69a8:	f3ef 8005 	mrs	r0, IPSR
    69ac:	2800      	cmp	r0, #0
    69ae:	d11e      	bne.n	69ee <osMessageCreate+0x4a>
    69b0:	f3ef 8014 	mrs	r0, CONTROL
    69b4:	07c0      	lsls	r0, r0, #31
    69b6:	d504      	bpl.n	69c2 <osMessageCreate+0x1e>
    69b8:	0020      	movs	r0, r4
    69ba:	4f0f      	ldr	r7, [pc, #60]	; (69f8 <osMessageCreate+0x54>)
    69bc:	46bc      	mov	ip, r7
    69be:	df00      	svc	0
    69c0:	bdb0      	pop	{r4, r5, r7, pc}
    69c2:	480c      	ldr	r0, [pc, #48]	; (69f4 <osMessageCreate+0x50>)
    69c4:	7800      	ldrb	r0, [r0, #0]
    69c6:	2800      	cmp	r0, #0
    69c8:	d1f6      	bne.n	69b8 <osMessageCreate+0x14>
    69ca:	2c00      	cmp	r4, #0
    69cc:	d00f      	beq.n	69ee <osMessageCreate+0x4a>
    69ce:	6823      	ldr	r3, [r4, #0]
    69d0:	2b00      	cmp	r3, #0
    69d2:	d00c      	beq.n	69ee <osMessageCreate+0x4a>
    69d4:	6860      	ldr	r0, [r4, #4]
    69d6:	2800      	cmp	r0, #0
    69d8:	d009      	beq.n	69ee <osMessageCreate+0x4a>
    69da:	7802      	ldrb	r2, [r0, #0]
    69dc:	2a00      	cmp	r2, #0
    69de:	d106      	bne.n	69ee <osMessageCreate+0x4a>
    69e0:	1d19      	adds	r1, r3, #4
    69e2:	008b      	lsls	r3, r1, #2
    69e4:	b299      	uxth	r1, r3
    69e6:	f000 fd3f 	bl	7468 <rt_mbx_init>
    69ea:	6860      	ldr	r0, [r4, #4]
    69ec:	e7e8      	b.n	69c0 <osMessageCreate+0x1c>
    69ee:	2000      	movs	r0, #0
    69f0:	e7e6      	b.n	69c0 <osMessageCreate+0x1c>
    69f2:	46c0      	nop			; (mov r8, r8)
    69f4:	20006075 	.word	0x20006075
    69f8:	000067f1 	.word	0x000067f1

000069fc <osMessagePut>:
    69fc:	b5b0      	push	{r4, r5, r7, lr}
    69fe:	0004      	movs	r4, r0
    6a00:	000d      	movs	r5, r1
    6a02:	f3ef 8105 	mrs	r1, IPSR
    6a06:	2900      	cmp	r1, #0
    6a08:	d008      	beq.n	6a1c <osMessagePut+0x20>
    6a0a:	2080      	movs	r0, #128	; 0x80
    6a0c:	2c00      	cmp	r4, #0
    6a0e:	d004      	beq.n	6a1a <osMessagePut+0x1e>
    6a10:	2a00      	cmp	r2, #0
    6a12:	d102      	bne.n	6a1a <osMessagePut+0x1e>
    6a14:	7823      	ldrb	r3, [r4, #0]
    6a16:	2b01      	cmp	r3, #1
    6a18:	d005      	beq.n	6a26 <osMessagePut+0x2a>
    6a1a:	bdb0      	pop	{r4, r5, r7, pc}
    6a1c:	0029      	movs	r1, r5
    6a1e:	4f08      	ldr	r7, [pc, #32]	; (6a40 <osMessagePut+0x44>)
    6a20:	46bc      	mov	ip, r7
    6a22:	df00      	svc	0
    6a24:	e7f9      	b.n	6a1a <osMessagePut+0x1e>
    6a26:	0020      	movs	r0, r4
    6a28:	f000 fdd4 	bl	75d4 <rt_mbx_check>
    6a2c:	0003      	movs	r3, r0
    6a2e:	2081      	movs	r0, #129	; 0x81
    6a30:	2b00      	cmp	r3, #0
    6a32:	d0f2      	beq.n	6a1a <osMessagePut+0x1e>
    6a34:	0020      	movs	r0, r4
    6a36:	0029      	movs	r1, r5
    6a38:	f000 fdd0 	bl	75dc <isr_mbx_send>
    6a3c:	2000      	movs	r0, #0
    6a3e:	e7ec      	b.n	6a1a <osMessagePut+0x1e>
    6a40:	0000681d 	.word	0x0000681d

00006a44 <osMessageGet>:
    6a44:	b5f0      	push	{r4, r5, r6, r7, lr}
    6a46:	0004      	movs	r4, r0
    6a48:	b085      	sub	sp, #20
    6a4a:	0008      	movs	r0, r1
    6a4c:	0015      	movs	r5, r2
    6a4e:	f3ef 8105 	mrs	r1, IPSR
    6a52:	2900      	cmp	r1, #0
    6a54:	d109      	bne.n	6a6a <osMessageGet+0x26>
    6a56:	0011      	movs	r1, r2
    6a58:	4f11      	ldr	r7, [pc, #68]	; (6aa0 <osMessageGet+0x5c>)
    6a5a:	46bc      	mov	ip, r7
    6a5c:	df00      	svc	0
    6a5e:	6020      	str	r0, [r4, #0]
    6a60:	6061      	str	r1, [r4, #4]
    6a62:	60a2      	str	r2, [r4, #8]
    6a64:	0020      	movs	r0, r4
    6a66:	b005      	add	sp, #20
    6a68:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6a6a:	2800      	cmp	r0, #0
    6a6c:	d004      	beq.n	6a78 <osMessageGet+0x34>
    6a6e:	2a00      	cmp	r2, #0
    6a70:	d102      	bne.n	6a78 <osMessageGet+0x34>
    6a72:	7803      	ldrb	r3, [r0, #0]
    6a74:	2b01      	cmp	r3, #1
    6a76:	d002      	beq.n	6a7e <osMessageGet+0x3a>
    6a78:	2380      	movs	r3, #128	; 0x80
    6a7a:	6023      	str	r3, [r4, #0]
    6a7c:	e7f2      	b.n	6a64 <osMessageGet+0x20>
    6a7e:	a902      	add	r1, sp, #8
    6a80:	ae01      	add	r6, sp, #4
    6a82:	f000 fdb1 	bl	75e8 <isr_mbx_receive>
    6a86:	2804      	cmp	r0, #4
    6a88:	d004      	beq.n	6a94 <osMessageGet+0x50>
    6a8a:	0023      	movs	r3, r4
    6a8c:	9501      	str	r5, [sp, #4]
    6a8e:	ce07      	ldmia	r6!, {r0, r1, r2}
    6a90:	c307      	stmia	r3!, {r0, r1, r2}
    6a92:	e7e7      	b.n	6a64 <osMessageGet+0x20>
    6a94:	2310      	movs	r3, #16
    6a96:	9301      	str	r3, [sp, #4]
    6a98:	0023      	movs	r3, r4
    6a9a:	ce07      	ldmia	r6!, {r0, r1, r2}
    6a9c:	c307      	stmia	r3!, {r0, r1, r2}
    6a9e:	e7e1      	b.n	6a64 <osMessageGet+0x20>
    6aa0:	0000689d 	.word	0x0000689d

00006aa4 <svcMailCreate>:
    6aa4:	b570      	push	{r4, r5, r6, lr}
    6aa6:	1e04      	subs	r4, r0, #0
    6aa8:	d021      	beq.n	6aee <svcMailCreate+0x4a>
    6aaa:	6801      	ldr	r1, [r0, #0]
    6aac:	2900      	cmp	r1, #0
    6aae:	d01e      	beq.n	6aee <svcMailCreate+0x4a>
    6ab0:	6842      	ldr	r2, [r0, #4]
    6ab2:	2a00      	cmp	r2, #0
    6ab4:	d01b      	beq.n	6aee <svcMailCreate+0x4a>
    6ab6:	6883      	ldr	r3, [r0, #8]
    6ab8:	2b00      	cmp	r3, #0
    6aba:	d018      	beq.n	6aee <svcMailCreate+0x4a>
    6abc:	6858      	ldr	r0, [r3, #4]
    6abe:	681d      	ldr	r5, [r3, #0]
    6ac0:	2800      	cmp	r0, #0
    6ac2:	d014      	beq.n	6aee <svcMailCreate+0x4a>
    6ac4:	2d00      	cmp	r5, #0
    6ac6:	d012      	beq.n	6aee <svcMailCreate+0x4a>
    6ac8:	782b      	ldrb	r3, [r5, #0]
    6aca:	2b00      	cmp	r3, #0
    6acc:	d10f      	bne.n	6aee <svcMailCreate+0x4a>
    6ace:	3303      	adds	r3, #3
    6ad0:	3203      	adds	r2, #3
    6ad2:	439a      	bics	r2, r3
    6ad4:	4351      	muls	r1, r2
    6ad6:	310c      	adds	r1, #12
    6ad8:	f000 fa6a 	bl	6fb0 <_init_box>
    6adc:	6823      	ldr	r3, [r4, #0]
    6ade:	0028      	movs	r0, r5
    6ae0:	1d19      	adds	r1, r3, #4
    6ae2:	0089      	lsls	r1, r1, #2
    6ae4:	b289      	uxth	r1, r1
    6ae6:	f000 fcbf 	bl	7468 <rt_mbx_init>
    6aea:	68a0      	ldr	r0, [r4, #8]
    6aec:	bd70      	pop	{r4, r5, r6, pc}
    6aee:	2000      	movs	r0, #0
    6af0:	e7fc      	b.n	6aec <svcMailCreate+0x48>
    6af2:	46c0      	nop			; (mov r8, r8)

00006af4 <sysMailAlloc>:
    6af4:	b530      	push	{r4, r5, lr}
    6af6:	000d      	movs	r5, r1
    6af8:	b083      	sub	sp, #12
    6afa:	2800      	cmp	r0, #0
    6afc:	d035      	beq.n	6b6a <sysMailAlloc+0x76>
    6afe:	6804      	ldr	r4, [r0, #0]
    6b00:	6840      	ldr	r0, [r0, #4]
    6b02:	2800      	cmp	r0, #0
    6b04:	d031      	beq.n	6b6a <sysMailAlloc+0x76>
    6b06:	2c00      	cmp	r4, #0
    6b08:	d02f      	beq.n	6b6a <sysMailAlloc+0x76>
    6b0a:	2a00      	cmp	r2, #0
    6b0c:	d007      	beq.n	6b1e <sysMailAlloc+0x2a>
    6b0e:	2900      	cmp	r1, #0
    6b10:	d12b      	bne.n	6b6a <sysMailAlloc+0x76>
    6b12:	f000 fa79 	bl	7008 <rt_alloc_box>
    6b16:	2800      	cmp	r0, #0
    6b18:	d027      	beq.n	6b6a <sysMailAlloc+0x76>
    6b1a:	b003      	add	sp, #12
    6b1c:	bd30      	pop	{r4, r5, pc}
    6b1e:	f000 fa73 	bl	7008 <rt_alloc_box>
    6b22:	2800      	cmp	r0, #0
    6b24:	d1f9      	bne.n	6b1a <sysMailAlloc+0x26>
    6b26:	2d00      	cmp	r5, #0
    6b28:	d01f      	beq.n	6b6a <sysMailAlloc+0x76>
    6b2a:	6863      	ldr	r3, [r4, #4]
    6b2c:	2b00      	cmp	r3, #0
    6b2e:	d020      	beq.n	6b72 <sysMailAlloc+0x7e>
    6b30:	4b16      	ldr	r3, [pc, #88]	; (6b8c <sysMailAlloc+0x98>)
    6b32:	0020      	movs	r0, r4
    6b34:	6819      	ldr	r1, [r3, #0]
    6b36:	f000 fdf1 	bl	771c <rt_put_prio>
    6b3a:	1c6b      	adds	r3, r5, #1
    6b3c:	d021      	beq.n	6b82 <sysMailAlloc+0x8e>
    6b3e:	4b14      	ldr	r3, [pc, #80]	; (6b90 <sysMailAlloc+0x9c>)
    6b40:	429d      	cmp	r5, r3
    6b42:	d814      	bhi.n	6b6e <sysMailAlloc+0x7a>
    6b44:	20fa      	movs	r0, #250	; 0xfa
    6b46:	4b13      	ldr	r3, [pc, #76]	; (6b94 <sysMailAlloc+0xa0>)
    6b48:	0080      	lsls	r0, r0, #2
    6b4a:	4368      	muls	r0, r5
    6b4c:	681b      	ldr	r3, [r3, #0]
    6b4e:	9301      	str	r3, [sp, #4]
    6b50:	3b01      	subs	r3, #1
    6b52:	18c0      	adds	r0, r0, r3
    6b54:	9901      	ldr	r1, [sp, #4]
    6b56:	f7fd fc29 	bl	43ac <__aeabi_uidiv>
    6b5a:	4b0f      	ldr	r3, [pc, #60]	; (6b98 <sysMailAlloc+0xa4>)
    6b5c:	0002      	movs	r2, r0
    6b5e:	0018      	movs	r0, r3
    6b60:	429a      	cmp	r2, r3
    6b62:	d910      	bls.n	6b86 <sysMailAlloc+0x92>
    6b64:	2108      	movs	r1, #8
    6b66:	f001 fa13 	bl	7f90 <rt_block>
    6b6a:	2000      	movs	r0, #0
    6b6c:	e7d5      	b.n	6b1a <sysMailAlloc+0x26>
    6b6e:	480a      	ldr	r0, [pc, #40]	; (6b98 <sysMailAlloc+0xa4>)
    6b70:	e7f8      	b.n	6b64 <sysMailAlloc+0x70>
    6b72:	4a06      	ldr	r2, [pc, #24]	; (6b8c <sysMailAlloc+0x98>)
    6b74:	6812      	ldr	r2, [r2, #0]
    6b76:	6062      	str	r2, [r4, #4]
    6b78:	6053      	str	r3, [r2, #4]
    6b7a:	2303      	movs	r3, #3
    6b7c:	6094      	str	r4, [r2, #8]
    6b7e:	7063      	strb	r3, [r4, #1]
    6b80:	e7db      	b.n	6b3a <sysMailAlloc+0x46>
    6b82:	4806      	ldr	r0, [pc, #24]	; (6b9c <sysMailAlloc+0xa8>)
    6b84:	e7ee      	b.n	6b64 <sysMailAlloc+0x70>
    6b86:	b290      	uxth	r0, r2
    6b88:	e7ec      	b.n	6b64 <sysMailAlloc+0x70>
    6b8a:	46c0      	nop			; (mov r8, r8)
    6b8c:	200060b4 	.word	0x200060b4
    6b90:	003d0900 	.word	0x003d0900
    6b94:	00008638 	.word	0x00008638
    6b98:	0000fffe 	.word	0x0000fffe
    6b9c:	0000ffff 	.word	0x0000ffff

00006ba0 <sysMailFree>:
    6ba0:	b570      	push	{r4, r5, r6, lr}
    6ba2:	0016      	movs	r6, r2
    6ba4:	2800      	cmp	r0, #0
    6ba6:	d00e      	beq.n	6bc6 <sysMailFree+0x26>
    6ba8:	6804      	ldr	r4, [r0, #0]
    6baa:	2c00      	cmp	r4, #0
    6bac:	d00b      	beq.n	6bc6 <sysMailFree+0x26>
    6bae:	6845      	ldr	r5, [r0, #4]
    6bb0:	2080      	movs	r0, #128	; 0x80
    6bb2:	2d00      	cmp	r5, #0
    6bb4:	d006      	beq.n	6bc4 <sysMailFree+0x24>
    6bb6:	0028      	movs	r0, r5
    6bb8:	f000 fa46 	bl	7048 <rt_free_box>
    6bbc:	0003      	movs	r3, r0
    6bbe:	2086      	movs	r0, #134	; 0x86
    6bc0:	2b00      	cmp	r3, #0
    6bc2:	d002      	beq.n	6bca <sysMailFree+0x2a>
    6bc4:	bd70      	pop	{r4, r5, r6, pc}
    6bc6:	2080      	movs	r0, #128	; 0x80
    6bc8:	e7fc      	b.n	6bc4 <sysMailFree+0x24>
    6bca:	6863      	ldr	r3, [r4, #4]
    6bcc:	2b00      	cmp	r3, #0
    6bce:	d002      	beq.n	6bd6 <sysMailFree+0x36>
    6bd0:	7863      	ldrb	r3, [r4, #1]
    6bd2:	2b03      	cmp	r3, #3
    6bd4:	d001      	beq.n	6bda <sysMailFree+0x3a>
    6bd6:	2000      	movs	r0, #0
    6bd8:	e7f4      	b.n	6bc4 <sysMailFree+0x24>
    6bda:	2e00      	cmp	r6, #0
    6bdc:	d113      	bne.n	6c06 <sysMailFree+0x66>
    6bde:	0028      	movs	r0, r5
    6be0:	f000 fa12 	bl	7008 <rt_alloc_box>
    6be4:	1e05      	subs	r5, r0, #0
    6be6:	d0f6      	beq.n	6bd6 <sysMailFree+0x36>
    6be8:	0020      	movs	r0, r4
    6bea:	f000 fdbd 	bl	7768 <rt_get_first>
    6bee:	0004      	movs	r4, r0
    6bf0:	0029      	movs	r1, r5
    6bf2:	f000 f987 	bl	6f04 <rt_ret_val>
    6bf6:	0020      	movs	r0, r4
    6bf8:	f000 feee 	bl	79d8 <rt_rmv_dly>
    6bfc:	0020      	movs	r0, r4
    6bfe:	f001 f9a1 	bl	7f44 <rt_dispatch>
    6c02:	2000      	movs	r0, #0
    6c04:	e7de      	b.n	6bc4 <sysMailFree+0x24>
    6c06:	0020      	movs	r0, r4
    6c08:	0029      	movs	r1, r5
    6c0a:	f000 fefb 	bl	7a04 <rt_psq_enq>
    6c0e:	f001 f8dd 	bl	7dcc <rt_psh_req>
    6c12:	2000      	movs	r0, #0
    6c14:	e7d6      	b.n	6bc4 <sysMailFree+0x24>
    6c16:	46c0      	nop			; (mov r8, r8)

00006c18 <osMailCreate>:
    6c18:	b5b0      	push	{r4, r5, r7, lr}
    6c1a:	0004      	movs	r4, r0
    6c1c:	f3ef 8005 	mrs	r0, IPSR
    6c20:	2800      	cmp	r0, #0
    6c22:	d130      	bne.n	6c86 <osMailCreate+0x6e>
    6c24:	f3ef 8014 	mrs	r0, CONTROL
    6c28:	07c0      	lsls	r0, r0, #31
    6c2a:	d504      	bpl.n	6c36 <osMailCreate+0x1e>
    6c2c:	0020      	movs	r0, r4
    6c2e:	4f18      	ldr	r7, [pc, #96]	; (6c90 <osMailCreate+0x78>)
    6c30:	46bc      	mov	ip, r7
    6c32:	df00      	svc	0
    6c34:	bdb0      	pop	{r4, r5, r7, pc}
    6c36:	4815      	ldr	r0, [pc, #84]	; (6c8c <osMailCreate+0x74>)
    6c38:	7800      	ldrb	r0, [r0, #0]
    6c3a:	2800      	cmp	r0, #0
    6c3c:	d1f6      	bne.n	6c2c <osMailCreate+0x14>
    6c3e:	2c00      	cmp	r4, #0
    6c40:	d021      	beq.n	6c86 <osMailCreate+0x6e>
    6c42:	6821      	ldr	r1, [r4, #0]
    6c44:	2900      	cmp	r1, #0
    6c46:	d01e      	beq.n	6c86 <osMailCreate+0x6e>
    6c48:	6862      	ldr	r2, [r4, #4]
    6c4a:	2a00      	cmp	r2, #0
    6c4c:	d01b      	beq.n	6c86 <osMailCreate+0x6e>
    6c4e:	68a3      	ldr	r3, [r4, #8]
    6c50:	2b00      	cmp	r3, #0
    6c52:	d018      	beq.n	6c86 <osMailCreate+0x6e>
    6c54:	6858      	ldr	r0, [r3, #4]
    6c56:	681d      	ldr	r5, [r3, #0]
    6c58:	2800      	cmp	r0, #0
    6c5a:	d014      	beq.n	6c86 <osMailCreate+0x6e>
    6c5c:	2d00      	cmp	r5, #0
    6c5e:	d012      	beq.n	6c86 <osMailCreate+0x6e>
    6c60:	782b      	ldrb	r3, [r5, #0]
    6c62:	2b00      	cmp	r3, #0
    6c64:	d10f      	bne.n	6c86 <osMailCreate+0x6e>
    6c66:	3303      	adds	r3, #3
    6c68:	3203      	adds	r2, #3
    6c6a:	439a      	bics	r2, r3
    6c6c:	4351      	muls	r1, r2
    6c6e:	310c      	adds	r1, #12
    6c70:	f000 f99e 	bl	6fb0 <_init_box>
    6c74:	6823      	ldr	r3, [r4, #0]
    6c76:	0028      	movs	r0, r5
    6c78:	1d19      	adds	r1, r3, #4
    6c7a:	0089      	lsls	r1, r1, #2
    6c7c:	b289      	uxth	r1, r1
    6c7e:	f000 fbf3 	bl	7468 <rt_mbx_init>
    6c82:	68a0      	ldr	r0, [r4, #8]
    6c84:	e7d6      	b.n	6c34 <osMailCreate+0x1c>
    6c86:	2000      	movs	r0, #0
    6c88:	e7d4      	b.n	6c34 <osMailCreate+0x1c>
    6c8a:	46c0      	nop			; (mov r8, r8)
    6c8c:	20006075 	.word	0x20006075
    6c90:	00006aa5 	.word	0x00006aa5

00006c94 <osMailAlloc>:
    6c94:	b580      	push	{r7, lr}
    6c96:	f3ef 8205 	mrs	r2, IPSR
    6c9a:	2a00      	cmp	r2, #0
    6c9c:	d104      	bne.n	6ca8 <osMailAlloc+0x14>
    6c9e:	2200      	movs	r2, #0
    6ca0:	4f09      	ldr	r7, [pc, #36]	; (6cc8 <osMailAlloc+0x34>)
    6ca2:	46bc      	mov	ip, r7
    6ca4:	df00      	svc	0
    6ca6:	bd80      	pop	{r7, pc}
    6ca8:	2800      	cmp	r0, #0
    6caa:	d00a      	beq.n	6cc2 <osMailAlloc+0x2e>
    6cac:	6803      	ldr	r3, [r0, #0]
    6cae:	6840      	ldr	r0, [r0, #4]
    6cb0:	2800      	cmp	r0, #0
    6cb2:	d006      	beq.n	6cc2 <osMailAlloc+0x2e>
    6cb4:	2b00      	cmp	r3, #0
    6cb6:	d004      	beq.n	6cc2 <osMailAlloc+0x2e>
    6cb8:	2900      	cmp	r1, #0
    6cba:	d102      	bne.n	6cc2 <osMailAlloc+0x2e>
    6cbc:	f000 f9a4 	bl	7008 <rt_alloc_box>
    6cc0:	e7f1      	b.n	6ca6 <osMailAlloc+0x12>
    6cc2:	2000      	movs	r0, #0
    6cc4:	e7ef      	b.n	6ca6 <osMailAlloc+0x12>
    6cc6:	0000      	.short	0x0000
    6cc8:	00006af5 	.word	0x00006af5

00006ccc <osMailCAlloc>:
    6ccc:	b5b0      	push	{r4, r5, r7, lr}
    6cce:	0004      	movs	r4, r0
    6cd0:	f3ef 8205 	mrs	r2, IPSR
    6cd4:	2a00      	cmp	r2, #0
    6cd6:	d112      	bne.n	6cfe <osMailCAlloc+0x32>
    6cd8:	2200      	movs	r2, #0
    6cda:	4f13      	ldr	r7, [pc, #76]	; (6d28 <osMailCAlloc+0x5c>)
    6cdc:	46bc      	mov	ip, r7
    6cde:	df00      	svc	0
    6ce0:	6863      	ldr	r3, [r4, #4]
    6ce2:	2b00      	cmp	r3, #0
    6ce4:	d00a      	beq.n	6cfc <osMailCAlloc+0x30>
    6ce6:	2800      	cmp	r0, #0
    6ce8:	d01b      	beq.n	6d22 <osMailCAlloc+0x56>
    6cea:	689b      	ldr	r3, [r3, #8]
    6cec:	2b00      	cmp	r3, #0
    6cee:	d005      	beq.n	6cfc <osMailCAlloc+0x30>
    6cf0:	0002      	movs	r2, r0
    6cf2:	2100      	movs	r1, #0
    6cf4:	3b04      	subs	r3, #4
    6cf6:	c202      	stmia	r2!, {r1}
    6cf8:	2b00      	cmp	r3, #0
    6cfa:	d1fb      	bne.n	6cf4 <osMailCAlloc+0x28>
    6cfc:	bdb0      	pop	{r4, r5, r7, pc}
    6cfe:	2800      	cmp	r0, #0
    6d00:	d00f      	beq.n	6d22 <osMailCAlloc+0x56>
    6d02:	6803      	ldr	r3, [r0, #0]
    6d04:	6840      	ldr	r0, [r0, #4]
    6d06:	2800      	cmp	r0, #0
    6d08:	d00b      	beq.n	6d22 <osMailCAlloc+0x56>
    6d0a:	2b00      	cmp	r3, #0
    6d0c:	d009      	beq.n	6d22 <osMailCAlloc+0x56>
    6d0e:	2900      	cmp	r1, #0
    6d10:	d107      	bne.n	6d22 <osMailCAlloc+0x56>
    6d12:	f000 f979 	bl	7008 <rt_alloc_box>
    6d16:	2800      	cmp	r0, #0
    6d18:	d003      	beq.n	6d22 <osMailCAlloc+0x56>
    6d1a:	6863      	ldr	r3, [r4, #4]
    6d1c:	2b00      	cmp	r3, #0
    6d1e:	d1e4      	bne.n	6cea <osMailCAlloc+0x1e>
    6d20:	e7ec      	b.n	6cfc <osMailCAlloc+0x30>
    6d22:	2000      	movs	r0, #0
    6d24:	e7ea      	b.n	6cfc <osMailCAlloc+0x30>
    6d26:	0000      	.short	0x0000
    6d28:	00006af5 	.word	0x00006af5

00006d2c <osMailFree>:
    6d2c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6d2e:	f3ef 8205 	mrs	r2, IPSR
    6d32:	2a00      	cmp	r2, #0
    6d34:	d106      	bne.n	6d44 <osMailFree+0x18>
    6d36:	2200      	movs	r2, #0
    6d38:	4f13      	ldr	r7, [pc, #76]	; (6d88 <osMailFree+0x5c>)
    6d3a:	46bc      	mov	ip, r7
    6d3c:	df00      	svc	0
    6d3e:	0004      	movs	r4, r0
    6d40:	0020      	movs	r0, r4
    6d42:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    6d44:	2800      	cmp	r0, #0
    6d46:	d01a      	beq.n	6d7e <osMailFree+0x52>
    6d48:	6805      	ldr	r5, [r0, #0]
    6d4a:	2d00      	cmp	r5, #0
    6d4c:	d017      	beq.n	6d7e <osMailFree+0x52>
    6d4e:	6846      	ldr	r6, [r0, #4]
    6d50:	2480      	movs	r4, #128	; 0x80
    6d52:	2e00      	cmp	r6, #0
    6d54:	d0f4      	beq.n	6d40 <osMailFree+0x14>
    6d56:	0030      	movs	r0, r6
    6d58:	f000 f976 	bl	7048 <rt_free_box>
    6d5c:	3406      	adds	r4, #6
    6d5e:	2800      	cmp	r0, #0
    6d60:	d1ee      	bne.n	6d40 <osMailFree+0x14>
    6d62:	686b      	ldr	r3, [r5, #4]
    6d64:	2b00      	cmp	r3, #0
    6d66:	d00c      	beq.n	6d82 <osMailFree+0x56>
    6d68:	786b      	ldrb	r3, [r5, #1]
    6d6a:	2400      	movs	r4, #0
    6d6c:	2b03      	cmp	r3, #3
    6d6e:	d1e7      	bne.n	6d40 <osMailFree+0x14>
    6d70:	0031      	movs	r1, r6
    6d72:	0028      	movs	r0, r5
    6d74:	f000 fe46 	bl	7a04 <rt_psq_enq>
    6d78:	f001 f828 	bl	7dcc <rt_psh_req>
    6d7c:	e7e0      	b.n	6d40 <osMailFree+0x14>
    6d7e:	2480      	movs	r4, #128	; 0x80
    6d80:	e7de      	b.n	6d40 <osMailFree+0x14>
    6d82:	2400      	movs	r4, #0
    6d84:	e7dc      	b.n	6d40 <osMailFree+0x14>
    6d86:	0000      	.short	0x0000
    6d88:	00006ba1 	.word	0x00006ba1

00006d8c <osMailPut>:
    6d8c:	b5b0      	push	{r4, r5, r7, lr}
    6d8e:	0002      	movs	r2, r0
    6d90:	000c      	movs	r4, r1
    6d92:	2800      	cmp	r0, #0
    6d94:	d00e      	beq.n	6db4 <osMailPut+0x28>
    6d96:	2086      	movs	r0, #134	; 0x86
    6d98:	2900      	cmp	r1, #0
    6d9a:	d00a      	beq.n	6db2 <osMailPut+0x26>
    6d9c:	6815      	ldr	r5, [r2, #0]
    6d9e:	f3ef 8205 	mrs	r2, IPSR
    6da2:	2a00      	cmp	r2, #0
    6da4:	d008      	beq.n	6db8 <osMailPut+0x2c>
    6da6:	2d00      	cmp	r5, #0
    6da8:	d004      	beq.n	6db4 <osMailPut+0x28>
    6daa:	782b      	ldrb	r3, [r5, #0]
    6dac:	3806      	subs	r0, #6
    6dae:	2b01      	cmp	r3, #1
    6db0:	d008      	beq.n	6dc4 <osMailPut+0x38>
    6db2:	bdb0      	pop	{r4, r5, r7, pc}
    6db4:	2080      	movs	r0, #128	; 0x80
    6db6:	e7fc      	b.n	6db2 <osMailPut+0x26>
    6db8:	0028      	movs	r0, r5
    6dba:	2200      	movs	r2, #0
    6dbc:	4f08      	ldr	r7, [pc, #32]	; (6de0 <osMailPut+0x54>)
    6dbe:	46bc      	mov	ip, r7
    6dc0:	df00      	svc	0
    6dc2:	e7f6      	b.n	6db2 <osMailPut+0x26>
    6dc4:	0028      	movs	r0, r5
    6dc6:	f000 fc05 	bl	75d4 <rt_mbx_check>
    6dca:	0003      	movs	r3, r0
    6dcc:	2081      	movs	r0, #129	; 0x81
    6dce:	2b00      	cmp	r3, #0
    6dd0:	d0ef      	beq.n	6db2 <osMailPut+0x26>
    6dd2:	0028      	movs	r0, r5
    6dd4:	0021      	movs	r1, r4
    6dd6:	f000 fc01 	bl	75dc <isr_mbx_send>
    6dda:	2000      	movs	r0, #0
    6ddc:	e7e9      	b.n	6db2 <osMailPut+0x26>
    6dde:	0000      	.short	0x0000
    6de0:	0000681d 	.word	0x0000681d

00006de4 <osMailGet>:
    6de4:	b5b0      	push	{r4, r5, r7, lr}
    6de6:	0004      	movs	r4, r0
    6de8:	b084      	sub	sp, #16
    6dea:	2900      	cmp	r1, #0
    6dec:	d012      	beq.n	6e14 <osMailGet+0x30>
    6dee:	6808      	ldr	r0, [r1, #0]
    6df0:	f3ef 8105 	mrs	r1, IPSR
    6df4:	2900      	cmp	r1, #0
    6df6:	d113      	bne.n	6e20 <osMailGet+0x3c>
    6df8:	0011      	movs	r1, r2
    6dfa:	4f0d      	ldr	r7, [pc, #52]	; (6e30 <osMailGet+0x4c>)
    6dfc:	46bc      	mov	ip, r7
    6dfe:	df00      	svc	0
    6e00:	2810      	cmp	r0, #16
    6e02:	d005      	beq.n	6e10 <osMailGet+0x2c>
    6e04:	6020      	str	r0, [r4, #0]
    6e06:	6061      	str	r1, [r4, #4]
    6e08:	60a2      	str	r2, [r4, #8]
    6e0a:	0020      	movs	r0, r4
    6e0c:	b004      	add	sp, #16
    6e0e:	bdb0      	pop	{r4, r5, r7, pc}
    6e10:	3010      	adds	r0, #16
    6e12:	e7f7      	b.n	6e04 <osMailGet+0x20>
    6e14:	2380      	movs	r3, #128	; 0x80
    6e16:	6003      	str	r3, [r0, #0]
    6e18:	2300      	movs	r3, #0
    6e1a:	6043      	str	r3, [r0, #4]
    6e1c:	6083      	str	r3, [r0, #8]
    6e1e:	e7f4      	b.n	6e0a <osMailGet+0x26>
    6e20:	0001      	movs	r1, r0
    6e22:	a801      	add	r0, sp, #4
    6e24:	f7ff fd9c 	bl	6960 <isrMessageGet>
    6e28:	9801      	ldr	r0, [sp, #4]
    6e2a:	9902      	ldr	r1, [sp, #8]
    6e2c:	9a03      	ldr	r2, [sp, #12]
    6e2e:	e7e7      	b.n	6e00 <osMailGet+0x1c>
    6e30:	0000689d 	.word	0x0000689d

00006e34 <os_suspend>:
    6e34:	b580      	push	{r7, lr}
    6e36:	4f02      	ldr	r7, [pc, #8]	; (6e40 <os_suspend+0xc>)
    6e38:	46bc      	mov	ip, r7
    6e3a:	df00      	svc	0
    6e3c:	bd80      	pop	{r7, pc}
    6e3e:	0000      	.short	0x0000
    6e40:	00007b7d 	.word	0x00007b7d

00006e44 <os_resume>:
    6e44:	b580      	push	{r7, lr}
    6e46:	4f02      	ldr	r7, [pc, #8]	; (6e50 <os_resume+0xc>)
    6e48:	46bc      	mov	ip, r7
    6e4a:	df00      	svc	0
    6e4c:	bd80      	pop	{r7, pc}
    6e4e:	0000      	.short	0x0000
    6e50:	00007c0d 	.word	0x00007c0d

00006e54 <rt_init_stack>:
    6e54:	b5f0      	push	{r4, r5, r6, r7, lr}
    6e56:	464e      	mov	r6, r9
    6e58:	4645      	mov	r5, r8
    6e5a:	4657      	mov	r7, sl
    6e5c:	b4e0      	push	{r5, r6, r7}
    6e5e:	4b26      	ldr	r3, [pc, #152]	; (6ef8 <rt_init_stack+0xa4>)
    6e60:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    6e62:	b082      	sub	sp, #8
    6e64:	4680      	mov	r8, r0
    6e66:	4689      	mov	r9, r1
    6e68:	08a4      	lsrs	r4, r4, #2
    6e6a:	681b      	ldr	r3, [r3, #0]
    6e6c:	d104      	bne.n	6e78 <rt_init_stack+0x24>
    6e6e:	9301      	str	r3, [sp, #4]
    6e70:	466b      	mov	r3, sp
    6e72:	889c      	ldrh	r4, [r3, #4]
    6e74:	9b01      	ldr	r3, [sp, #4]
    6e76:	08a4      	lsrs	r4, r4, #2
    6e78:	469a      	mov	sl, r3
    6e7a:	4643      	mov	r3, r8
    6e7c:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    6e7e:	00a5      	lsls	r5, r4, #2
    6e80:	197d      	adds	r5, r7, r5
    6e82:	076b      	lsls	r3, r5, #29
    6e84:	d500      	bpl.n	6e88 <rt_init_stack+0x34>
    6e86:	3d04      	subs	r5, #4
    6e88:	2280      	movs	r2, #128	; 0x80
    6e8a:	1f2b      	subs	r3, r5, #4
    6e8c:	002e      	movs	r6, r5
    6e8e:	0452      	lsls	r2, r2, #17
    6e90:	601a      	str	r2, [r3, #0]
    6e92:	464a      	mov	r2, r9
    6e94:	3b04      	subs	r3, #4
    6e96:	3e40      	subs	r6, #64	; 0x40
    6e98:	601a      	str	r2, [r3, #0]
    6e9a:	2100      	movs	r1, #0
    6e9c:	2238      	movs	r2, #56	; 0x38
    6e9e:	0030      	movs	r0, r6
    6ea0:	f7fd fe30 	bl	4b04 <memset>
    6ea4:	4643      	mov	r3, r8
    6ea6:	69db      	ldr	r3, [r3, #28]
    6ea8:	3d20      	subs	r5, #32
    6eaa:	602b      	str	r3, [r5, #0]
    6eac:	464a      	mov	r2, r9
    6eae:	4643      	mov	r3, r8
    6eb0:	629e      	str	r6, [r3, #40]	; 0x28
    6eb2:	631a      	str	r2, [r3, #48]	; 0x30
    6eb4:	4653      	mov	r3, sl
    6eb6:	00db      	lsls	r3, r3, #3
    6eb8:	d516      	bpl.n	6ee8 <rt_init_stack+0x94>
    6eba:	2c11      	cmp	r4, #17
    6ebc:	d914      	bls.n	6ee8 <rt_init_stack+0x94>
    6ebe:	3c10      	subs	r4, #16
    6ec0:	0864      	lsrs	r4, r4, #1
    6ec2:	1e62      	subs	r2, r4, #1
    6ec4:	2a00      	cmp	r2, #0
    6ec6:	d00a      	beq.n	6ede <rt_init_stack+0x8a>
    6ec8:	0033      	movs	r3, r6
    6eca:	490c      	ldr	r1, [pc, #48]	; (6efc <rt_init_stack+0xa8>)
    6ecc:	3b08      	subs	r3, #8
    6ece:	3a01      	subs	r2, #1
    6ed0:	6059      	str	r1, [r3, #4]
    6ed2:	6019      	str	r1, [r3, #0]
    6ed4:	2a00      	cmp	r2, #0
    6ed6:	d1f9      	bne.n	6ecc <rt_init_stack+0x78>
    6ed8:	00e4      	lsls	r4, r4, #3
    6eda:	1b36      	subs	r6, r6, r4
    6edc:	3608      	adds	r6, #8
    6ede:	3e04      	subs	r6, #4
    6ee0:	42b7      	cmp	r7, r6
    6ee2:	d201      	bcs.n	6ee8 <rt_init_stack+0x94>
    6ee4:	4b05      	ldr	r3, [pc, #20]	; (6efc <rt_init_stack+0xa8>)
    6ee6:	6033      	str	r3, [r6, #0]
    6ee8:	4b05      	ldr	r3, [pc, #20]	; (6f00 <rt_init_stack+0xac>)
    6eea:	603b      	str	r3, [r7, #0]
    6eec:	b002      	add	sp, #8
    6eee:	bc1c      	pop	{r2, r3, r4}
    6ef0:	4690      	mov	r8, r2
    6ef2:	4699      	mov	r9, r3
    6ef4:	46a2      	mov	sl, r4
    6ef6:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6ef8:	00008618 	.word	0x00008618
    6efc:	cccccccc 	.word	0xcccccccc
    6f00:	e25a2ea5 	.word	0xe25a2ea5

00006f04 <rt_ret_val>:
    6f04:	6a83      	ldr	r3, [r0, #40]	; 0x28
    6f06:	6219      	str	r1, [r3, #32]
    6f08:	4770      	bx	lr
    6f0a:	46c0      	nop			; (mov r8, r8)

00006f0c <rt_ret_val2>:
    6f0c:	6a83      	ldr	r3, [r0, #40]	; 0x28
    6f0e:	6219      	str	r1, [r3, #32]
    6f10:	625a      	str	r2, [r3, #36]	; 0x24
    6f12:	4770      	bx	lr

00006f14 <rt_init_mem>:
    6f14:	0003      	movs	r3, r0
    6f16:	2001      	movs	r0, #1
    6f18:	2b00      	cmp	r3, #0
    6f1a:	d008      	beq.n	6f2e <rt_init_mem+0x1a>
    6f1c:	2907      	cmp	r1, #7
    6f1e:	d906      	bls.n	6f2e <rt_init_mem+0x1a>
    6f20:	2200      	movs	r2, #0
    6f22:	2000      	movs	r0, #0
    6f24:	3904      	subs	r1, #4
    6f26:	1859      	adds	r1, r3, r1
    6f28:	6019      	str	r1, [r3, #0]
    6f2a:	600a      	str	r2, [r1, #0]
    6f2c:	605a      	str	r2, [r3, #4]
    6f2e:	4770      	bx	lr

00006f30 <rt_alloc_mem>:
    6f30:	b510      	push	{r4, lr}
    6f32:	2800      	cmp	r0, #0
    6f34:	d018      	beq.n	6f68 <rt_alloc_mem+0x38>
    6f36:	2900      	cmp	r1, #0
    6f38:	d016      	beq.n	6f68 <rt_alloc_mem+0x38>
    6f3a:	2303      	movs	r3, #3
    6f3c:	310b      	adds	r1, #11
    6f3e:	4399      	bics	r1, r3
    6f40:	6802      	ldr	r2, [r0, #0]
    6f42:	e003      	b.n	6f4c <rt_alloc_mem+0x1c>
    6f44:	0010      	movs	r0, r2
    6f46:	6812      	ldr	r2, [r2, #0]
    6f48:	2a00      	cmp	r2, #0
    6f4a:	d00d      	beq.n	6f68 <rt_alloc_mem+0x38>
    6f4c:	6844      	ldr	r4, [r0, #4]
    6f4e:	1a13      	subs	r3, r2, r0
    6f50:	1b1b      	subs	r3, r3, r4
    6f52:	4299      	cmp	r1, r3
    6f54:	d8f6      	bhi.n	6f44 <rt_alloc_mem+0x14>
    6f56:	2c00      	cmp	r4, #0
    6f58:	d008      	beq.n	6f6c <rt_alloc_mem+0x3c>
    6f5a:	1904      	adds	r4, r0, r4
    6f5c:	6022      	str	r2, [r4, #0]
    6f5e:	6061      	str	r1, [r4, #4]
    6f60:	6004      	str	r4, [r0, #0]
    6f62:	0020      	movs	r0, r4
    6f64:	3008      	adds	r0, #8
    6f66:	e000      	b.n	6f6a <rt_alloc_mem+0x3a>
    6f68:	2000      	movs	r0, #0
    6f6a:	bd10      	pop	{r4, pc}
    6f6c:	6041      	str	r1, [r0, #4]
    6f6e:	3008      	adds	r0, #8
    6f70:	e7fb      	b.n	6f6a <rt_alloc_mem+0x3a>
    6f72:	46c0      	nop			; (mov r8, r8)

00006f74 <rt_free_mem>:
    6f74:	2800      	cmp	r0, #0
    6f76:	d015      	beq.n	6fa4 <rt_free_mem+0x30>
    6f78:	2900      	cmp	r1, #0
    6f7a:	d013      	beq.n	6fa4 <rt_free_mem+0x30>
    6f7c:	3908      	subs	r1, #8
    6f7e:	4288      	cmp	r0, r1
    6f80:	d012      	beq.n	6fa8 <rt_free_mem+0x34>
    6f82:	6803      	ldr	r3, [r0, #0]
    6f84:	2b00      	cmp	r3, #0
    6f86:	d105      	bne.n	6f94 <rt_free_mem+0x20>
    6f88:	e00c      	b.n	6fa4 <rt_free_mem+0x30>
    6f8a:	681a      	ldr	r2, [r3, #0]
    6f8c:	0018      	movs	r0, r3
    6f8e:	2a00      	cmp	r2, #0
    6f90:	d008      	beq.n	6fa4 <rt_free_mem+0x30>
    6f92:	0013      	movs	r3, r2
    6f94:	4299      	cmp	r1, r3
    6f96:	d1f8      	bne.n	6f8a <rt_free_mem+0x16>
    6f98:	2800      	cmp	r0, #0
    6f9a:	d005      	beq.n	6fa8 <rt_free_mem+0x34>
    6f9c:	680b      	ldr	r3, [r1, #0]
    6f9e:	6003      	str	r3, [r0, #0]
    6fa0:	2000      	movs	r0, #0
    6fa2:	e000      	b.n	6fa6 <rt_free_mem+0x32>
    6fa4:	2001      	movs	r0, #1
    6fa6:	4770      	bx	lr
    6fa8:	2300      	movs	r3, #0
    6faa:	2000      	movs	r0, #0
    6fac:	604b      	str	r3, [r1, #4]
    6fae:	e7fa      	b.n	6fa6 <rt_free_mem+0x32>

00006fb0 <_init_box>:
    6fb0:	b530      	push	{r4, r5, lr}
    6fb2:	2a00      	cmp	r2, #0
    6fb4:	db1e      	blt.n	6ff4 <_init_box+0x44>
    6fb6:	2303      	movs	r3, #3
    6fb8:	3203      	adds	r2, #3
    6fba:	439a      	bics	r2, r3
    6fbc:	3309      	adds	r3, #9
    6fbe:	2401      	movs	r4, #1
    6fc0:	2a00      	cmp	r2, #0
    6fc2:	d015      	beq.n	6ff0 <_init_box+0x40>
    6fc4:	18d5      	adds	r5, r2, r3
    6fc6:	428d      	cmp	r5, r1
    6fc8:	d812      	bhi.n	6ff0 <_init_box+0x40>
    6fca:	1841      	adds	r1, r0, r1
    6fcc:	18c3      	adds	r3, r0, r3
    6fce:	6041      	str	r1, [r0, #4]
    6fd0:	6003      	str	r3, [r0, #0]
    6fd2:	6082      	str	r2, [r0, #8]
    6fd4:	1898      	adds	r0, r3, r2
    6fd6:	1a89      	subs	r1, r1, r2
    6fd8:	4281      	cmp	r1, r0
    6fda:	d201      	bcs.n	6fe0 <_init_box+0x30>
    6fdc:	e011      	b.n	7002 <_init_box+0x52>
    6fde:	0020      	movs	r0, r4
    6fe0:	1884      	adds	r4, r0, r2
    6fe2:	6018      	str	r0, [r3, #0]
    6fe4:	189b      	adds	r3, r3, r2
    6fe6:	42a1      	cmp	r1, r4
    6fe8:	d2f9      	bcs.n	6fde <_init_box+0x2e>
    6fea:	2300      	movs	r3, #0
    6fec:	2400      	movs	r4, #0
    6fee:	6003      	str	r3, [r0, #0]
    6ff0:	0020      	movs	r0, r4
    6ff2:	bd30      	pop	{r4, r5, pc}
    6ff4:	2307      	movs	r3, #7
    6ff6:	0052      	lsls	r2, r2, #1
    6ff8:	0852      	lsrs	r2, r2, #1
    6ffa:	3207      	adds	r2, #7
    6ffc:	439a      	bics	r2, r3
    6ffe:	3309      	adds	r3, #9
    7000:	e7dd      	b.n	6fbe <_init_box+0xe>
    7002:	0018      	movs	r0, r3
    7004:	e7f1      	b.n	6fea <_init_box+0x3a>
    7006:	46c0      	nop			; (mov r8, r8)

00007008 <rt_alloc_box>:
    7008:	f3ef 8310 	mrs	r3, PRIMASK
    700c:	b672      	cpsid	i
    700e:	2201      	movs	r2, #1
    7010:	4013      	ands	r3, r2
    7012:	6802      	ldr	r2, [r0, #0]
    7014:	2a00      	cmp	r2, #0
    7016:	d001      	beq.n	701c <rt_alloc_box+0x14>
    7018:	6811      	ldr	r1, [r2, #0]
    701a:	6001      	str	r1, [r0, #0]
    701c:	2b00      	cmp	r3, #0
    701e:	d100      	bne.n	7022 <rt_alloc_box+0x1a>
    7020:	b662      	cpsie	i
    7022:	0010      	movs	r0, r2
    7024:	4770      	bx	lr
    7026:	46c0      	nop			; (mov r8, r8)

00007028 <_calloc_box>:
    7028:	b510      	push	{r4, lr}
    702a:	0004      	movs	r4, r0
    702c:	f7fd fb49 	bl	46c2 <_alloc_box>
    7030:	2800      	cmp	r0, #0
    7032:	d008      	beq.n	7046 <_calloc_box+0x1e>
    7034:	68a3      	ldr	r3, [r4, #8]
    7036:	2b00      	cmp	r3, #0
    7038:	d005      	beq.n	7046 <_calloc_box+0x1e>
    703a:	0002      	movs	r2, r0
    703c:	2100      	movs	r1, #0
    703e:	3b04      	subs	r3, #4
    7040:	c202      	stmia	r2!, {r1}
    7042:	2b00      	cmp	r3, #0
    7044:	d1fb      	bne.n	703e <_calloc_box+0x16>
    7046:	bd10      	pop	{r4, pc}

00007048 <rt_free_box>:
    7048:	0003      	movs	r3, r0
    704a:	2001      	movs	r0, #1
    704c:	4299      	cmp	r1, r3
    704e:	d30b      	bcc.n	7068 <rt_free_box+0x20>
    7050:	685a      	ldr	r2, [r3, #4]
    7052:	4291      	cmp	r1, r2
    7054:	d208      	bcs.n	7068 <rt_free_box+0x20>
    7056:	f3ef 8210 	mrs	r2, PRIMASK
    705a:	b672      	cpsid	i
    705c:	4010      	ands	r0, r2
    705e:	681a      	ldr	r2, [r3, #0]
    7060:	600a      	str	r2, [r1, #0]
    7062:	6019      	str	r1, [r3, #0]
    7064:	d101      	bne.n	706a <rt_free_box+0x22>
    7066:	b662      	cpsie	i
    7068:	4770      	bx	lr
    706a:	2000      	movs	r0, #0
    706c:	e7fc      	b.n	7068 <rt_free_box+0x20>
    706e:	46c0      	nop			; (mov r8, r8)

00007070 <rt_mut_init>:
    7070:	2303      	movs	r3, #3
    7072:	7003      	strb	r3, [r0, #0]
    7074:	2300      	movs	r3, #0
    7076:	8043      	strh	r3, [r0, #2]
    7078:	6043      	str	r3, [r0, #4]
    707a:	6083      	str	r3, [r0, #8]
    707c:	60c3      	str	r3, [r0, #12]
    707e:	4770      	bx	lr

00007080 <rt_mut_delete>:
    7080:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7082:	8843      	ldrh	r3, [r0, #2]
    7084:	0005      	movs	r5, r0
    7086:	2b00      	cmp	r3, #0
    7088:	d02c      	beq.n	70e4 <rt_mut_delete+0x64>
    708a:	6880      	ldr	r0, [r0, #8]
    708c:	6a04      	ldr	r4, [r0, #32]
    708e:	42a5      	cmp	r5, r4
    7090:	d05a      	beq.n	7148 <rt_mut_delete+0xc8>
    7092:	2c00      	cmp	r4, #0
    7094:	d01a      	beq.n	70cc <rt_mut_delete+0x4c>
    7096:	68e3      	ldr	r3, [r4, #12]
    7098:	429d      	cmp	r5, r3
    709a:	d050      	beq.n	713e <rt_mut_delete+0xbe>
    709c:	001a      	movs	r2, r3
    709e:	e003      	b.n	70a8 <rt_mut_delete+0x28>
    70a0:	68d1      	ldr	r1, [r2, #12]
    70a2:	428d      	cmp	r5, r1
    70a4:	d04c      	beq.n	7140 <rt_mut_delete+0xc0>
    70a6:	000a      	movs	r2, r1
    70a8:	2a00      	cmp	r2, #0
    70aa:	d1f9      	bne.n	70a0 <rt_mut_delete+0x20>
    70ac:	2224      	movs	r2, #36	; 0x24
    70ae:	5c81      	ldrb	r1, [r0, r2]
    70b0:	6862      	ldr	r2, [r4, #4]
    70b2:	2a00      	cmp	r2, #0
    70b4:	d005      	beq.n	70c2 <rt_mut_delete+0x42>
    70b6:	7892      	ldrb	r2, [r2, #2]
    70b8:	1c14      	adds	r4, r2, #0
    70ba:	428a      	cmp	r2, r1
    70bc:	d200      	bcs.n	70c0 <rt_mut_delete+0x40>
    70be:	1c0c      	adds	r4, r1, #0
    70c0:	b2e1      	uxtb	r1, r4
    70c2:	2b00      	cmp	r3, #0
    70c4:	d004      	beq.n	70d0 <rt_mut_delete+0x50>
    70c6:	001c      	movs	r4, r3
    70c8:	68db      	ldr	r3, [r3, #12]
    70ca:	e7f1      	b.n	70b0 <rt_mut_delete+0x30>
    70cc:	2324      	movs	r3, #36	; 0x24
    70ce:	5cc1      	ldrb	r1, [r0, r3]
    70d0:	7883      	ldrb	r3, [r0, #2]
    70d2:	428b      	cmp	r3, r1
    70d4:	d006      	beq.n	70e4 <rt_mut_delete+0x64>
    70d6:	4b20      	ldr	r3, [pc, #128]	; (7158 <rt_mut_delete+0xd8>)
    70d8:	7081      	strb	r1, [r0, #2]
    70da:	681b      	ldr	r3, [r3, #0]
    70dc:	4298      	cmp	r0, r3
    70de:	d001      	beq.n	70e4 <rt_mut_delete+0x64>
    70e0:	f000 fb72 	bl	77c8 <rt_resort_prio>
    70e4:	686b      	ldr	r3, [r5, #4]
    70e6:	4e1d      	ldr	r6, [pc, #116]	; (715c <rt_mut_delete+0xdc>)
    70e8:	2b00      	cmp	r3, #0
    70ea:	d012      	beq.n	7112 <rt_mut_delete+0x92>
    70ec:	2701      	movs	r7, #1
    70ee:	0028      	movs	r0, r5
    70f0:	f000 fb3a 	bl	7768 <rt_get_first>
    70f4:	0004      	movs	r4, r0
    70f6:	2100      	movs	r1, #0
    70f8:	f7ff ff04 	bl	6f04 <rt_ret_val>
    70fc:	0020      	movs	r0, r4
    70fe:	f000 fc6b 	bl	79d8 <rt_rmv_dly>
    7102:	7067      	strb	r7, [r4, #1]
    7104:	0021      	movs	r1, r4
    7106:	0030      	movs	r0, r6
    7108:	f000 fb08 	bl	771c <rt_put_prio>
    710c:	686b      	ldr	r3, [r5, #4]
    710e:	2b00      	cmp	r3, #0
    7110:	d1ed      	bne.n	70ee <rt_mut_delete+0x6e>
    7112:	6873      	ldr	r3, [r6, #4]
    7114:	2b00      	cmp	r3, #0
    7116:	d00e      	beq.n	7136 <rt_mut_delete+0xb6>
    7118:	4c0f      	ldr	r4, [pc, #60]	; (7158 <rt_mut_delete+0xd8>)
    711a:	789a      	ldrb	r2, [r3, #2]
    711c:	6821      	ldr	r1, [r4, #0]
    711e:	788b      	ldrb	r3, [r1, #2]
    7120:	429a      	cmp	r2, r3
    7122:	d908      	bls.n	7136 <rt_mut_delete+0xb6>
    7124:	0030      	movs	r0, r6
    7126:	f000 faf9 	bl	771c <rt_put_prio>
    712a:	2201      	movs	r2, #1
    712c:	6823      	ldr	r3, [r4, #0]
    712e:	2000      	movs	r0, #0
    7130:	705a      	strb	r2, [r3, #1]
    7132:	f000 ff07 	bl	7f44 <rt_dispatch>
    7136:	2300      	movs	r3, #0
    7138:	2000      	movs	r0, #0
    713a:	702b      	strb	r3, [r5, #0]
    713c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    713e:	0022      	movs	r2, r4
    7140:	68eb      	ldr	r3, [r5, #12]
    7142:	60d3      	str	r3, [r2, #12]
    7144:	68e3      	ldr	r3, [r4, #12]
    7146:	e7b1      	b.n	70ac <rt_mut_delete+0x2c>
    7148:	2324      	movs	r3, #36	; 0x24
    714a:	68ec      	ldr	r4, [r5, #12]
    714c:	6204      	str	r4, [r0, #32]
    714e:	5cc1      	ldrb	r1, [r0, r3]
    7150:	2c00      	cmp	r4, #0
    7152:	d0bd      	beq.n	70d0 <rt_mut_delete+0x50>
    7154:	68e3      	ldr	r3, [r4, #12]
    7156:	e7ab      	b.n	70b0 <rt_mut_delete+0x30>
    7158:	200060b4 	.word	0x200060b4
    715c:	20006080 	.word	0x20006080

00007160 <rt_mut_release>:
    7160:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7162:	8843      	ldrh	r3, [r0, #2]
    7164:	0004      	movs	r4, r0
    7166:	20ff      	movs	r0, #255	; 0xff
    7168:	2b00      	cmp	r3, #0
    716a:	d100      	bne.n	716e <rt_mut_release+0xe>
    716c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    716e:	4d3c      	ldr	r5, [pc, #240]	; (7260 <rt_mut_release+0x100>)
    7170:	68a1      	ldr	r1, [r4, #8]
    7172:	682a      	ldr	r2, [r5, #0]
    7174:	4291      	cmp	r1, r2
    7176:	d1f9      	bne.n	716c <rt_mut_release+0xc>
    7178:	3b01      	subs	r3, #1
    717a:	b29b      	uxth	r3, r3
    717c:	8063      	strh	r3, [r4, #2]
    717e:	2b00      	cmp	r3, #0
    7180:	d140      	bne.n	7204 <rt_mut_release+0xa4>
    7182:	6a0e      	ldr	r6, [r1, #32]
    7184:	42b4      	cmp	r4, r6
    7186:	d062      	beq.n	724e <rt_mut_release+0xee>
    7188:	2e00      	cmp	r6, #0
    718a:	d01a      	beq.n	71c2 <rt_mut_release+0x62>
    718c:	68f3      	ldr	r3, [r6, #12]
    718e:	429c      	cmp	r4, r3
    7190:	d03a      	beq.n	7208 <rt_mut_release+0xa8>
    7192:	001a      	movs	r2, r3
    7194:	e003      	b.n	719e <rt_mut_release+0x3e>
    7196:	68d0      	ldr	r0, [r2, #12]
    7198:	4284      	cmp	r4, r0
    719a:	d036      	beq.n	720a <rt_mut_release+0xaa>
    719c:	0002      	movs	r2, r0
    719e:	2a00      	cmp	r2, #0
    71a0:	d1f9      	bne.n	7196 <rt_mut_release+0x36>
    71a2:	2224      	movs	r2, #36	; 0x24
    71a4:	5c8f      	ldrb	r7, [r1, r2]
    71a6:	6872      	ldr	r2, [r6, #4]
    71a8:	2a00      	cmp	r2, #0
    71aa:	d005      	beq.n	71b8 <rt_mut_release+0x58>
    71ac:	7892      	ldrb	r2, [r2, #2]
    71ae:	1c10      	adds	r0, r2, #0
    71b0:	42ba      	cmp	r2, r7
    71b2:	d200      	bcs.n	71b6 <rt_mut_release+0x56>
    71b4:	1c38      	adds	r0, r7, #0
    71b6:	b2c7      	uxtb	r7, r0
    71b8:	2b00      	cmp	r3, #0
    71ba:	d004      	beq.n	71c6 <rt_mut_release+0x66>
    71bc:	001e      	movs	r6, r3
    71be:	68db      	ldr	r3, [r3, #12]
    71c0:	e7f1      	b.n	71a6 <rt_mut_release+0x46>
    71c2:	2324      	movs	r3, #36	; 0x24
    71c4:	5ccf      	ldrb	r7, [r1, r3]
    71c6:	708f      	strb	r7, [r1, #2]
    71c8:	6863      	ldr	r3, [r4, #4]
    71ca:	2b00      	cmp	r3, #0
    71cc:	d030      	beq.n	7230 <rt_mut_release+0xd0>
    71ce:	0020      	movs	r0, r4
    71d0:	f000 faca 	bl	7768 <rt_get_first>
    71d4:	0006      	movs	r6, r0
    71d6:	2100      	movs	r1, #0
    71d8:	f7ff fe94 	bl	6f04 <rt_ret_val>
    71dc:	0030      	movs	r0, r6
    71de:	f000 fbfb 	bl	79d8 <rt_rmv_dly>
    71e2:	2301      	movs	r3, #1
    71e4:	8063      	strh	r3, [r4, #2]
    71e6:	6a33      	ldr	r3, [r6, #32]
    71e8:	60a6      	str	r6, [r4, #8]
    71ea:	60e3      	str	r3, [r4, #12]
    71ec:	6234      	str	r4, [r6, #32]
    71ee:	4c1d      	ldr	r4, [pc, #116]	; (7264 <rt_mut_release+0x104>)
    71f0:	6829      	ldr	r1, [r5, #0]
    71f2:	6863      	ldr	r3, [r4, #4]
    71f4:	788a      	ldrb	r2, [r1, #2]
    71f6:	789b      	ldrb	r3, [r3, #2]
    71f8:	2701      	movs	r7, #1
    71fa:	429a      	cmp	r2, r3
    71fc:	d309      	bcc.n	7212 <rt_mut_release+0xb2>
    71fe:	0030      	movs	r0, r6
    7200:	f000 fea0 	bl	7f44 <rt_dispatch>
    7204:	2000      	movs	r0, #0
    7206:	e7b1      	b.n	716c <rt_mut_release+0xc>
    7208:	0032      	movs	r2, r6
    720a:	68e3      	ldr	r3, [r4, #12]
    720c:	60d3      	str	r3, [r2, #12]
    720e:	68f3      	ldr	r3, [r6, #12]
    7210:	e7c7      	b.n	71a2 <rt_mut_release+0x42>
    7212:	0020      	movs	r0, r4
    7214:	f000 fa82 	bl	771c <rt_put_prio>
    7218:	0031      	movs	r1, r6
    721a:	0020      	movs	r0, r4
    721c:	f000 fa7e 	bl	771c <rt_put_prio>
    7220:	682b      	ldr	r3, [r5, #0]
    7222:	2000      	movs	r0, #0
    7224:	705f      	strb	r7, [r3, #1]
    7226:	7077      	strb	r7, [r6, #1]
    7228:	f000 fe8c 	bl	7f44 <rt_dispatch>
    722c:	2000      	movs	r0, #0
    722e:	e79d      	b.n	716c <rt_mut_release+0xc>
    7230:	480c      	ldr	r0, [pc, #48]	; (7264 <rt_mut_release+0x104>)
    7232:	6843      	ldr	r3, [r0, #4]
    7234:	789b      	ldrb	r3, [r3, #2]
    7236:	42bb      	cmp	r3, r7
    7238:	d9e4      	bls.n	7204 <rt_mut_release+0xa4>
    723a:	f000 fa6f 	bl	771c <rt_put_prio>
    723e:	2201      	movs	r2, #1
    7240:	682b      	ldr	r3, [r5, #0]
    7242:	2000      	movs	r0, #0
    7244:	705a      	strb	r2, [r3, #1]
    7246:	f000 fe7d 	bl	7f44 <rt_dispatch>
    724a:	2000      	movs	r0, #0
    724c:	e78e      	b.n	716c <rt_mut_release+0xc>
    724e:	2324      	movs	r3, #36	; 0x24
    7250:	68e6      	ldr	r6, [r4, #12]
    7252:	620e      	str	r6, [r1, #32]
    7254:	5ccf      	ldrb	r7, [r1, r3]
    7256:	2e00      	cmp	r6, #0
    7258:	d0b5      	beq.n	71c6 <rt_mut_release+0x66>
    725a:	68f3      	ldr	r3, [r6, #12]
    725c:	e7a3      	b.n	71a6 <rt_mut_release+0x46>
    725e:	46c0      	nop			; (mov r8, r8)
    7260:	200060b4 	.word	0x200060b4
    7264:	20006080 	.word	0x20006080

00007268 <rt_mut_wait>:
    7268:	b570      	push	{r4, r5, r6, lr}
    726a:	8843      	ldrh	r3, [r0, #2]
    726c:	0004      	movs	r4, r0
    726e:	000d      	movs	r5, r1
    7270:	2b00      	cmp	r3, #0
    7272:	d017      	beq.n	72a4 <rt_mut_wait+0x3c>
    7274:	4e19      	ldr	r6, [pc, #100]	; (72dc <rt_mut_wait+0x74>)
    7276:	6882      	ldr	r2, [r0, #8]
    7278:	6831      	ldr	r1, [r6, #0]
    727a:	428a      	cmp	r2, r1
    727c:	d026      	beq.n	72cc <rt_mut_wait+0x64>
    727e:	2001      	movs	r0, #1
    7280:	2d00      	cmp	r5, #0
    7282:	d00e      	beq.n	72a2 <rt_mut_wait+0x3a>
    7284:	788b      	ldrb	r3, [r1, #2]
    7286:	7890      	ldrb	r0, [r2, #2]
    7288:	4298      	cmp	r0, r3
    728a:	d319      	bcc.n	72c0 <rt_mut_wait+0x58>
    728c:	6863      	ldr	r3, [r4, #4]
    728e:	2b00      	cmp	r3, #0
    7290:	d012      	beq.n	72b8 <rt_mut_wait+0x50>
    7292:	0020      	movs	r0, r4
    7294:	f000 fa42 	bl	771c <rt_put_prio>
    7298:	0028      	movs	r0, r5
    729a:	2109      	movs	r1, #9
    729c:	f000 fe78 	bl	7f90 <rt_block>
    72a0:	2001      	movs	r0, #1
    72a2:	bd70      	pop	{r4, r5, r6, pc}
    72a4:	4b0d      	ldr	r3, [pc, #52]	; (72dc <rt_mut_wait+0x74>)
    72a6:	681b      	ldr	r3, [r3, #0]
    72a8:	6a1a      	ldr	r2, [r3, #32]
    72aa:	6083      	str	r3, [r0, #8]
    72ac:	60c2      	str	r2, [r0, #12]
    72ae:	6218      	str	r0, [r3, #32]
    72b0:	2301      	movs	r3, #1
    72b2:	8043      	strh	r3, [r0, #2]
    72b4:	2000      	movs	r0, #0
    72b6:	e7f4      	b.n	72a2 <rt_mut_wait+0x3a>
    72b8:	6061      	str	r1, [r4, #4]
    72ba:	604b      	str	r3, [r1, #4]
    72bc:	608c      	str	r4, [r1, #8]
    72be:	e7eb      	b.n	7298 <rt_mut_wait+0x30>
    72c0:	7093      	strb	r3, [r2, #2]
    72c2:	68a0      	ldr	r0, [r4, #8]
    72c4:	f000 fa80 	bl	77c8 <rt_resort_prio>
    72c8:	6831      	ldr	r1, [r6, #0]
    72ca:	e7df      	b.n	728c <rt_mut_wait+0x24>
    72cc:	4a04      	ldr	r2, [pc, #16]	; (72e0 <rt_mut_wait+0x78>)
    72ce:	20ff      	movs	r0, #255	; 0xff
    72d0:	4293      	cmp	r3, r2
    72d2:	d0e6      	beq.n	72a2 <rt_mut_wait+0x3a>
    72d4:	3301      	adds	r3, #1
    72d6:	8063      	strh	r3, [r4, #2]
    72d8:	2000      	movs	r0, #0
    72da:	e7e2      	b.n	72a2 <rt_mut_wait+0x3a>
    72dc:	200060b4 	.word	0x200060b4
    72e0:	0000ffff 	.word	0x0000ffff

000072e4 <rt_time_get>:
    72e4:	4b01      	ldr	r3, [pc, #4]	; (72ec <rt_time_get+0x8>)
    72e6:	6818      	ldr	r0, [r3, #0]
    72e8:	4770      	bx	lr
    72ea:	46c0      	nop			; (mov r8, r8)
    72ec:	2000607c 	.word	0x2000607c

000072f0 <rt_dly_wait>:
    72f0:	b510      	push	{r4, lr}
    72f2:	2103      	movs	r1, #3
    72f4:	f000 fe4c 	bl	7f90 <rt_block>
    72f8:	bd10      	pop	{r4, pc}
    72fa:	46c0      	nop			; (mov r8, r8)

000072fc <rt_itv_set>:
    72fc:	4b03      	ldr	r3, [pc, #12]	; (730c <rt_itv_set+0x10>)
    72fe:	681a      	ldr	r2, [r3, #0]
    7300:	4b03      	ldr	r3, [pc, #12]	; (7310 <rt_itv_set+0x14>)
    7302:	82d0      	strh	r0, [r2, #22]
    7304:	681b      	ldr	r3, [r3, #0]
    7306:	18c0      	adds	r0, r0, r3
    7308:	8290      	strh	r0, [r2, #20]
    730a:	4770      	bx	lr
    730c:	200060b4 	.word	0x200060b4
    7310:	2000607c 	.word	0x2000607c

00007314 <rt_itv_wait>:
    7314:	b510      	push	{r4, lr}
    7316:	4b08      	ldr	r3, [pc, #32]	; (7338 <rt_itv_wait+0x24>)
    7318:	681a      	ldr	r2, [r3, #0]
    731a:	4b08      	ldr	r3, [pc, #32]	; (733c <rt_itv_wait+0x28>)
    731c:	8a90      	ldrh	r0, [r2, #20]
    731e:	681b      	ldr	r3, [r3, #0]
    7320:	8ad1      	ldrh	r1, [r2, #22]
    7322:	1ac3      	subs	r3, r0, r3
    7324:	1841      	adds	r1, r0, r1
    7326:	8291      	strh	r1, [r2, #20]
    7328:	b298      	uxth	r0, r3
    732a:	041b      	lsls	r3, r3, #16
    732c:	d402      	bmi.n	7334 <rt_itv_wait+0x20>
    732e:	2104      	movs	r1, #4
    7330:	f000 fe2e 	bl	7f90 <rt_block>
    7334:	bd10      	pop	{r4, pc}
    7336:	46c0      	nop			; (mov r8, r8)
    7338:	200060b4 	.word	0x200060b4
    733c:	2000607c 	.word	0x2000607c

00007340 <rt_sem_init>:
    7340:	2302      	movs	r3, #2
    7342:	7003      	strb	r3, [r0, #0]
    7344:	2300      	movs	r3, #0
    7346:	8041      	strh	r1, [r0, #2]
    7348:	6043      	str	r3, [r0, #4]
    734a:	4770      	bx	lr

0000734c <rt_sem_delete>:
    734c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    734e:	6843      	ldr	r3, [r0, #4]
    7350:	0005      	movs	r5, r0
    7352:	4e16      	ldr	r6, [pc, #88]	; (73ac <rt_sem_delete+0x60>)
    7354:	2b00      	cmp	r3, #0
    7356:	d012      	beq.n	737e <rt_sem_delete+0x32>
    7358:	2701      	movs	r7, #1
    735a:	0028      	movs	r0, r5
    735c:	f000 fa04 	bl	7768 <rt_get_first>
    7360:	0004      	movs	r4, r0
    7362:	2100      	movs	r1, #0
    7364:	f7ff fdce 	bl	6f04 <rt_ret_val>
    7368:	0020      	movs	r0, r4
    736a:	f000 fb35 	bl	79d8 <rt_rmv_dly>
    736e:	7067      	strb	r7, [r4, #1]
    7370:	0021      	movs	r1, r4
    7372:	0030      	movs	r0, r6
    7374:	f000 f9d2 	bl	771c <rt_put_prio>
    7378:	686b      	ldr	r3, [r5, #4]
    737a:	2b00      	cmp	r3, #0
    737c:	d1ed      	bne.n	735a <rt_sem_delete+0xe>
    737e:	6873      	ldr	r3, [r6, #4]
    7380:	2b00      	cmp	r3, #0
    7382:	d00e      	beq.n	73a2 <rt_sem_delete+0x56>
    7384:	4c0a      	ldr	r4, [pc, #40]	; (73b0 <rt_sem_delete+0x64>)
    7386:	789a      	ldrb	r2, [r3, #2]
    7388:	6821      	ldr	r1, [r4, #0]
    738a:	788b      	ldrb	r3, [r1, #2]
    738c:	429a      	cmp	r2, r3
    738e:	d908      	bls.n	73a2 <rt_sem_delete+0x56>
    7390:	0030      	movs	r0, r6
    7392:	f000 f9c3 	bl	771c <rt_put_prio>
    7396:	2201      	movs	r2, #1
    7398:	6823      	ldr	r3, [r4, #0]
    739a:	2000      	movs	r0, #0
    739c:	705a      	strb	r2, [r3, #1]
    739e:	f000 fdd1 	bl	7f44 <rt_dispatch>
    73a2:	2300      	movs	r3, #0
    73a4:	2000      	movs	r0, #0
    73a6:	702b      	strb	r3, [r5, #0]
    73a8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    73aa:	46c0      	nop			; (mov r8, r8)
    73ac:	20006080 	.word	0x20006080
    73b0:	200060b4 	.word	0x200060b4

000073b4 <rt_sem_send>:
    73b4:	6843      	ldr	r3, [r0, #4]
    73b6:	b510      	push	{r4, lr}
    73b8:	2b00      	cmp	r3, #0
    73ba:	d00d      	beq.n	73d8 <rt_sem_send+0x24>
    73bc:	f000 f9d4 	bl	7768 <rt_get_first>
    73c0:	0004      	movs	r4, r0
    73c2:	2101      	movs	r1, #1
    73c4:	f7ff fd9e 	bl	6f04 <rt_ret_val>
    73c8:	0020      	movs	r0, r4
    73ca:	f000 fb05 	bl	79d8 <rt_rmv_dly>
    73ce:	0020      	movs	r0, r4
    73d0:	f000 fdb8 	bl	7f44 <rt_dispatch>
    73d4:	2000      	movs	r0, #0
    73d6:	bd10      	pop	{r4, pc}
    73d8:	8843      	ldrh	r3, [r0, #2]
    73da:	3301      	adds	r3, #1
    73dc:	8043      	strh	r3, [r0, #2]
    73de:	e7f9      	b.n	73d4 <rt_sem_send+0x20>

000073e0 <rt_sem_wait>:
    73e0:	b510      	push	{r4, lr}
    73e2:	8843      	ldrh	r3, [r0, #2]
    73e4:	000c      	movs	r4, r1
    73e6:	2b00      	cmp	r3, #0
    73e8:	d110      	bne.n	740c <rt_sem_wait+0x2c>
    73ea:	2301      	movs	r3, #1
    73ec:	2900      	cmp	r1, #0
    73ee:	d00b      	beq.n	7408 <rt_sem_wait+0x28>
    73f0:	6843      	ldr	r3, [r0, #4]
    73f2:	2b00      	cmp	r3, #0
    73f4:	d00e      	beq.n	7414 <rt_sem_wait+0x34>
    73f6:	4b0a      	ldr	r3, [pc, #40]	; (7420 <rt_sem_wait+0x40>)
    73f8:	6819      	ldr	r1, [r3, #0]
    73fa:	f000 f98f 	bl	771c <rt_put_prio>
    73fe:	2107      	movs	r1, #7
    7400:	0020      	movs	r0, r4
    7402:	f000 fdc5 	bl	7f90 <rt_block>
    7406:	2301      	movs	r3, #1
    7408:	0018      	movs	r0, r3
    740a:	bd10      	pop	{r4, pc}
    740c:	3b01      	subs	r3, #1
    740e:	8043      	strh	r3, [r0, #2]
    7410:	2300      	movs	r3, #0
    7412:	e7f9      	b.n	7408 <rt_sem_wait+0x28>
    7414:	4a02      	ldr	r2, [pc, #8]	; (7420 <rt_sem_wait+0x40>)
    7416:	6812      	ldr	r2, [r2, #0]
    7418:	6042      	str	r2, [r0, #4]
    741a:	6053      	str	r3, [r2, #4]
    741c:	6090      	str	r0, [r2, #8]
    741e:	e7ee      	b.n	73fe <rt_sem_wait+0x1e>
    7420:	200060b4 	.word	0x200060b4

00007424 <isr_sem_send>:
    7424:	b510      	push	{r4, lr}
    7426:	2100      	movs	r1, #0
    7428:	f000 faec 	bl	7a04 <rt_psq_enq>
    742c:	f000 fcce 	bl	7dcc <rt_psh_req>
    7430:	bd10      	pop	{r4, pc}
    7432:	46c0      	nop			; (mov r8, r8)

00007434 <rt_sem_psh>:
    7434:	6843      	ldr	r3, [r0, #4]
    7436:	b510      	push	{r4, lr}
    7438:	2b00      	cmp	r3, #0
    743a:	d00f      	beq.n	745c <rt_sem_psh+0x28>
    743c:	f000 f994 	bl	7768 <rt_get_first>
    7440:	0004      	movs	r4, r0
    7442:	f000 fac9 	bl	79d8 <rt_rmv_dly>
    7446:	2301      	movs	r3, #1
    7448:	2101      	movs	r1, #1
    744a:	0020      	movs	r0, r4
    744c:	7063      	strb	r3, [r4, #1]
    744e:	f7ff fd59 	bl	6f04 <rt_ret_val>
    7452:	0021      	movs	r1, r4
    7454:	4803      	ldr	r0, [pc, #12]	; (7464 <rt_sem_psh+0x30>)
    7456:	f000 f961 	bl	771c <rt_put_prio>
    745a:	bd10      	pop	{r4, pc}
    745c:	8843      	ldrh	r3, [r0, #2]
    745e:	3301      	adds	r3, #1
    7460:	8043      	strh	r3, [r0, #2]
    7462:	e7fa      	b.n	745a <rt_sem_psh+0x26>
    7464:	20006080 	.word	0x20006080

00007468 <rt_mbx_init>:
    7468:	2301      	movs	r3, #1
    746a:	7003      	strb	r3, [r0, #0]
    746c:	2300      	movs	r3, #0
    746e:	3910      	subs	r1, #16
    7470:	0889      	lsrs	r1, r1, #2
    7472:	7043      	strb	r3, [r0, #1]
    7474:	7083      	strb	r3, [r0, #2]
    7476:	6043      	str	r3, [r0, #4]
    7478:	8103      	strh	r3, [r0, #8]
    747a:	8143      	strh	r3, [r0, #10]
    747c:	8183      	strh	r3, [r0, #12]
    747e:	81c1      	strh	r1, [r0, #14]
    7480:	4770      	bx	lr
    7482:	46c0      	nop			; (mov r8, r8)

00007484 <rt_mbx_send>:
    7484:	6843      	ldr	r3, [r0, #4]
    7486:	b570      	push	{r4, r5, r6, lr}
    7488:	000d      	movs	r5, r1
    748a:	0016      	movs	r6, r2
    748c:	2b00      	cmp	r3, #0
    748e:	d002      	beq.n	7496 <rt_mbx_send+0x12>
    7490:	7842      	ldrb	r2, [r0, #1]
    7492:	2a01      	cmp	r2, #1
    7494:	d028      	beq.n	74e8 <rt_mbx_send+0x64>
    7496:	8982      	ldrh	r2, [r0, #12]
    7498:	89c4      	ldrh	r4, [r0, #14]
    749a:	42a2      	cmp	r2, r4
    749c:	d013      	beq.n	74c6 <rt_mbx_send+0x42>
    749e:	8903      	ldrh	r3, [r0, #8]
    74a0:	1d19      	adds	r1, r3, #4
    74a2:	0089      	lsls	r1, r1, #2
    74a4:	500d      	str	r5, [r1, r0]
    74a6:	f3ef 8110 	mrs	r1, PRIMASK
    74aa:	b672      	cpsid	i
    74ac:	3201      	adds	r2, #1
    74ae:	8182      	strh	r2, [r0, #12]
    74b0:	b662      	cpsie	i
    74b2:	3301      	adds	r3, #1
    74b4:	b29b      	uxth	r3, r3
    74b6:	429c      	cmp	r4, r3
    74b8:	d003      	beq.n	74c2 <rt_mbx_send+0x3e>
    74ba:	2200      	movs	r2, #0
    74bc:	8103      	strh	r3, [r0, #8]
    74be:	0010      	movs	r0, r2
    74c0:	bd70      	pop	{r4, r5, r6, pc}
    74c2:	2300      	movs	r3, #0
    74c4:	e7f9      	b.n	74ba <rt_mbx_send+0x36>
    74c6:	2201      	movs	r2, #1
    74c8:	2e00      	cmp	r6, #0
    74ca:	d0f8      	beq.n	74be <rt_mbx_send+0x3a>
    74cc:	2b00      	cmp	r3, #0
    74ce:	d01a      	beq.n	7506 <rt_mbx_send+0x82>
    74d0:	4c11      	ldr	r4, [pc, #68]	; (7518 <rt_mbx_send+0x94>)
    74d2:	6821      	ldr	r1, [r4, #0]
    74d4:	f000 f922 	bl	771c <rt_put_prio>
    74d8:	6822      	ldr	r2, [r4, #0]
    74da:	61d5      	str	r5, [r2, #28]
    74dc:	2108      	movs	r1, #8
    74de:	0030      	movs	r0, r6
    74e0:	f000 fd56 	bl	7f90 <rt_block>
    74e4:	2201      	movs	r2, #1
    74e6:	e7ea      	b.n	74be <rt_mbx_send+0x3a>
    74e8:	f000 f93e 	bl	7768 <rt_get_first>
    74ec:	0004      	movs	r4, r0
    74ee:	002a      	movs	r2, r5
    74f0:	2110      	movs	r1, #16
    74f2:	f7ff fd0b 	bl	6f0c <rt_ret_val2>
    74f6:	0020      	movs	r0, r4
    74f8:	f000 fa6e 	bl	79d8 <rt_rmv_dly>
    74fc:	0020      	movs	r0, r4
    74fe:	f000 fd21 	bl	7f44 <rt_dispatch>
    7502:	2200      	movs	r2, #0
    7504:	e7db      	b.n	74be <rt_mbx_send+0x3a>
    7506:	4a04      	ldr	r2, [pc, #16]	; (7518 <rt_mbx_send+0x94>)
    7508:	6812      	ldr	r2, [r2, #0]
    750a:	6042      	str	r2, [r0, #4]
    750c:	6053      	str	r3, [r2, #4]
    750e:	2302      	movs	r3, #2
    7510:	6090      	str	r0, [r2, #8]
    7512:	7043      	strb	r3, [r0, #1]
    7514:	e7e1      	b.n	74da <rt_mbx_send+0x56>
    7516:	46c0      	nop			; (mov r8, r8)
    7518:	200060b4 	.word	0x200060b4

0000751c <rt_mbx_wait>:
    751c:	b570      	push	{r4, r5, r6, lr}
    751e:	0015      	movs	r5, r2
    7520:	8982      	ldrh	r2, [r0, #12]
    7522:	0004      	movs	r4, r0
    7524:	2a00      	cmp	r2, #0
    7526:	d018      	beq.n	755a <rt_mbx_wait+0x3e>
    7528:	8943      	ldrh	r3, [r0, #10]
    752a:	1d18      	adds	r0, r3, #4
    752c:	0080      	lsls	r0, r0, #2
    752e:	5900      	ldr	r0, [r0, r4]
    7530:	3301      	adds	r3, #1
    7532:	6008      	str	r0, [r1, #0]
    7534:	89e1      	ldrh	r1, [r4, #14]
    7536:	b29b      	uxth	r3, r3
    7538:	8163      	strh	r3, [r4, #10]
    753a:	4299      	cmp	r1, r3
    753c:	d01e      	beq.n	757c <rt_mbx_wait+0x60>
    753e:	6863      	ldr	r3, [r4, #4]
    7540:	2b00      	cmp	r3, #0
    7542:	d002      	beq.n	754a <rt_mbx_wait+0x2e>
    7544:	7863      	ldrb	r3, [r4, #1]
    7546:	2b02      	cmp	r3, #2
    7548:	d025      	beq.n	7596 <rt_mbx_wait+0x7a>
    754a:	f3ef 8310 	mrs	r3, PRIMASK
    754e:	b672      	cpsid	i
    7550:	3a01      	subs	r2, #1
    7552:	81a2      	strh	r2, [r4, #12]
    7554:	b662      	cpsie	i
    7556:	2000      	movs	r0, #0
    7558:	bd70      	pop	{r4, r5, r6, pc}
    755a:	2001      	movs	r0, #1
    755c:	2d00      	cmp	r5, #0
    755e:	d0fb      	beq.n	7558 <rt_mbx_wait+0x3c>
    7560:	6863      	ldr	r3, [r4, #4]
    7562:	2b00      	cmp	r3, #0
    7564:	d010      	beq.n	7588 <rt_mbx_wait+0x6c>
    7566:	4b1a      	ldr	r3, [pc, #104]	; (75d0 <rt_mbx_wait+0xb4>)
    7568:	0020      	movs	r0, r4
    756a:	6819      	ldr	r1, [r3, #0]
    756c:	f000 f8d6 	bl	771c <rt_put_prio>
    7570:	0028      	movs	r0, r5
    7572:	2108      	movs	r1, #8
    7574:	f000 fd0c 	bl	7f90 <rt_block>
    7578:	2001      	movs	r0, #1
    757a:	e7ed      	b.n	7558 <rt_mbx_wait+0x3c>
    757c:	2300      	movs	r3, #0
    757e:	8163      	strh	r3, [r4, #10]
    7580:	6863      	ldr	r3, [r4, #4]
    7582:	2b00      	cmp	r3, #0
    7584:	d1de      	bne.n	7544 <rt_mbx_wait+0x28>
    7586:	e7e0      	b.n	754a <rt_mbx_wait+0x2e>
    7588:	4a11      	ldr	r2, [pc, #68]	; (75d0 <rt_mbx_wait+0xb4>)
    758a:	6812      	ldr	r2, [r2, #0]
    758c:	6062      	str	r2, [r4, #4]
    758e:	6053      	str	r3, [r2, #4]
    7590:	6094      	str	r4, [r2, #8]
    7592:	7060      	strb	r0, [r4, #1]
    7594:	e7ec      	b.n	7570 <rt_mbx_wait+0x54>
    7596:	0020      	movs	r0, r4
    7598:	f000 f8e6 	bl	7768 <rt_get_first>
    759c:	0005      	movs	r5, r0
    759e:	2100      	movs	r1, #0
    75a0:	f7ff fcb0 	bl	6f04 <rt_ret_val>
    75a4:	8923      	ldrh	r3, [r4, #8]
    75a6:	69e9      	ldr	r1, [r5, #28]
    75a8:	1d1a      	adds	r2, r3, #4
    75aa:	0092      	lsls	r2, r2, #2
    75ac:	5111      	str	r1, [r2, r4]
    75ae:	3301      	adds	r3, #1
    75b0:	89e2      	ldrh	r2, [r4, #14]
    75b2:	b29b      	uxth	r3, r3
    75b4:	8123      	strh	r3, [r4, #8]
    75b6:	429a      	cmp	r2, r3
    75b8:	d101      	bne.n	75be <rt_mbx_wait+0xa2>
    75ba:	2300      	movs	r3, #0
    75bc:	8123      	strh	r3, [r4, #8]
    75be:	0028      	movs	r0, r5
    75c0:	f000 fa0a 	bl	79d8 <rt_rmv_dly>
    75c4:	0028      	movs	r0, r5
    75c6:	f000 fcbd 	bl	7f44 <rt_dispatch>
    75ca:	2000      	movs	r0, #0
    75cc:	e7c4      	b.n	7558 <rt_mbx_wait+0x3c>
    75ce:	46c0      	nop			; (mov r8, r8)
    75d0:	200060b4 	.word	0x200060b4

000075d4 <rt_mbx_check>:
    75d4:	89c3      	ldrh	r3, [r0, #14]
    75d6:	8980      	ldrh	r0, [r0, #12]
    75d8:	1a18      	subs	r0, r3, r0
    75da:	4770      	bx	lr

000075dc <isr_mbx_send>:
    75dc:	b510      	push	{r4, lr}
    75de:	f000 fa11 	bl	7a04 <rt_psq_enq>
    75e2:	f000 fbf3 	bl	7dcc <rt_psh_req>
    75e6:	bd10      	pop	{r4, pc}

000075e8 <isr_mbx_receive>:
    75e8:	b510      	push	{r4, lr}
    75ea:	8982      	ldrh	r2, [r0, #12]
    75ec:	0004      	movs	r4, r0
    75ee:	2000      	movs	r0, #0
    75f0:	2a00      	cmp	r2, #0
    75f2:	d017      	beq.n	7624 <isr_mbx_receive+0x3c>
    75f4:	8963      	ldrh	r3, [r4, #10]
    75f6:	1d18      	adds	r0, r3, #4
    75f8:	0080      	lsls	r0, r0, #2
    75fa:	5900      	ldr	r0, [r0, r4]
    75fc:	6008      	str	r0, [r1, #0]
    75fe:	6861      	ldr	r1, [r4, #4]
    7600:	2900      	cmp	r1, #0
    7602:	d002      	beq.n	760a <isr_mbx_receive+0x22>
    7604:	7861      	ldrb	r1, [r4, #1]
    7606:	2902      	cmp	r1, #2
    7608:	d010      	beq.n	762c <isr_mbx_receive+0x44>
    760a:	f3ef 8110 	mrs	r1, PRIMASK
    760e:	b672      	cpsid	i
    7610:	3a01      	subs	r2, #1
    7612:	81a2      	strh	r2, [r4, #12]
    7614:	b662      	cpsie	i
    7616:	3301      	adds	r3, #1
    7618:	89e2      	ldrh	r2, [r4, #14]
    761a:	b29b      	uxth	r3, r3
    761c:	8163      	strh	r3, [r4, #10]
    761e:	2004      	movs	r0, #4
    7620:	429a      	cmp	r2, r3
    7622:	d000      	beq.n	7626 <isr_mbx_receive+0x3e>
    7624:	bd10      	pop	{r4, pc}
    7626:	2300      	movs	r3, #0
    7628:	8163      	strh	r3, [r4, #10]
    762a:	e7fb      	b.n	7624 <isr_mbx_receive+0x3c>
    762c:	2100      	movs	r1, #0
    762e:	0020      	movs	r0, r4
    7630:	f000 f9e8 	bl	7a04 <rt_psq_enq>
    7634:	f000 fbca 	bl	7dcc <rt_psh_req>
    7638:	89a2      	ldrh	r2, [r4, #12]
    763a:	8963      	ldrh	r3, [r4, #10]
    763c:	e7e5      	b.n	760a <isr_mbx_receive+0x22>
    763e:	46c0      	nop			; (mov r8, r8)

00007640 <rt_mbx_psh>:
    7640:	6843      	ldr	r3, [r0, #4]
    7642:	b570      	push	{r4, r5, r6, lr}
    7644:	0004      	movs	r4, r0
    7646:	000e      	movs	r6, r1
    7648:	2b00      	cmp	r3, #0
    764a:	d04b      	beq.n	76e4 <rt_mbx_psh+0xa4>
    764c:	7845      	ldrb	r5, [r0, #1]
    764e:	2d02      	cmp	r5, #2
    7650:	d023      	beq.n	769a <rt_mbx_psh+0x5a>
    7652:	2d03      	cmp	r5, #3
    7654:	d002      	beq.n	765c <rt_mbx_psh+0x1c>
    7656:	2d01      	cmp	r5, #1
    7658:	d00f      	beq.n	767a <rt_mbx_psh+0x3a>
    765a:	bd70      	pop	{r4, r5, r6, pc}
    765c:	0008      	movs	r0, r1
    765e:	f7ff fcd3 	bl	7008 <rt_alloc_box>
    7662:	1e05      	subs	r5, r0, #0
    7664:	d0f9      	beq.n	765a <rt_mbx_psh+0x1a>
    7666:	0020      	movs	r0, r4
    7668:	f000 f87e 	bl	7768 <rt_get_first>
    766c:	0029      	movs	r1, r5
    766e:	0004      	movs	r4, r0
    7670:	f7ff fc48 	bl	6f04 <rt_ret_val>
    7674:	2301      	movs	r3, #1
    7676:	7063      	strb	r3, [r4, #1]
    7678:	e007      	b.n	768a <rt_mbx_psh+0x4a>
    767a:	f000 f875 	bl	7768 <rt_get_first>
    767e:	0004      	movs	r4, r0
    7680:	0032      	movs	r2, r6
    7682:	2110      	movs	r1, #16
    7684:	f7ff fc42 	bl	6f0c <rt_ret_val2>
    7688:	7065      	strb	r5, [r4, #1]
    768a:	0020      	movs	r0, r4
    768c:	f000 f9a4 	bl	79d8 <rt_rmv_dly>
    7690:	0021      	movs	r1, r4
    7692:	4821      	ldr	r0, [pc, #132]	; (7718 <rt_mbx_psh+0xd8>)
    7694:	f000 f842 	bl	771c <rt_put_prio>
    7698:	e7df      	b.n	765a <rt_mbx_psh+0x1a>
    769a:	f000 f865 	bl	7768 <rt_get_first>
    769e:	0005      	movs	r5, r0
    76a0:	2100      	movs	r1, #0
    76a2:	f7ff fc2f 	bl	6f04 <rt_ret_val>
    76a6:	8923      	ldrh	r3, [r4, #8]
    76a8:	69e9      	ldr	r1, [r5, #28]
    76aa:	1d1a      	adds	r2, r3, #4
    76ac:	0092      	lsls	r2, r2, #2
    76ae:	5111      	str	r1, [r2, r4]
    76b0:	f3ef 8210 	mrs	r2, PRIMASK
    76b4:	b672      	cpsid	i
    76b6:	89a2      	ldrh	r2, [r4, #12]
    76b8:	3201      	adds	r2, #1
    76ba:	81a2      	strh	r2, [r4, #12]
    76bc:	b662      	cpsie	i
    76be:	3301      	adds	r3, #1
    76c0:	89e2      	ldrh	r2, [r4, #14]
    76c2:	b29b      	uxth	r3, r3
    76c4:	8123      	strh	r3, [r4, #8]
    76c6:	429a      	cmp	r2, r3
    76c8:	d009      	beq.n	76de <rt_mbx_psh+0x9e>
    76ca:	2301      	movs	r3, #1
    76cc:	0028      	movs	r0, r5
    76ce:	706b      	strb	r3, [r5, #1]
    76d0:	f000 f982 	bl	79d8 <rt_rmv_dly>
    76d4:	0029      	movs	r1, r5
    76d6:	4810      	ldr	r0, [pc, #64]	; (7718 <rt_mbx_psh+0xd8>)
    76d8:	f000 f820 	bl	771c <rt_put_prio>
    76dc:	e7bd      	b.n	765a <rt_mbx_psh+0x1a>
    76de:	2300      	movs	r3, #0
    76e0:	8123      	strh	r3, [r4, #8]
    76e2:	e7f2      	b.n	76ca <rt_mbx_psh+0x8a>
    76e4:	8981      	ldrh	r1, [r0, #12]
    76e6:	89c5      	ldrh	r5, [r0, #14]
    76e8:	42a9      	cmp	r1, r5
    76ea:	d20f      	bcs.n	770c <rt_mbx_psh+0xcc>
    76ec:	8902      	ldrh	r2, [r0, #8]
    76ee:	1d10      	adds	r0, r2, #4
    76f0:	0080      	lsls	r0, r0, #2
    76f2:	5106      	str	r6, [r0, r4]
    76f4:	f3ef 8010 	mrs	r0, PRIMASK
    76f8:	b672      	cpsid	i
    76fa:	3101      	adds	r1, #1
    76fc:	81a1      	strh	r1, [r4, #12]
    76fe:	b662      	cpsie	i
    7700:	3201      	adds	r2, #1
    7702:	b292      	uxth	r2, r2
    7704:	4295      	cmp	r5, r2
    7706:	d005      	beq.n	7714 <rt_mbx_psh+0xd4>
    7708:	8122      	strh	r2, [r4, #8]
    770a:	e7a6      	b.n	765a <rt_mbx_psh+0x1a>
    770c:	2003      	movs	r0, #3
    770e:	f7fa f911 	bl	1934 <os_error>
    7712:	e7a2      	b.n	765a <rt_mbx_psh+0x1a>
    7714:	8123      	strh	r3, [r4, #8]
    7716:	e7a0      	b.n	765a <rt_mbx_psh+0x1a>
    7718:	20006080 	.word	0x20006080

0000771c <rt_put_prio>:
    771c:	b530      	push	{r4, r5, lr}
    771e:	7805      	ldrb	r5, [r0, #0]
    7720:	6842      	ldr	r2, [r0, #4]
    7722:	3d01      	subs	r5, #1
    7724:	b2ed      	uxtb	r5, r5
    7726:	788c      	ldrb	r4, [r1, #2]
    7728:	2a00      	cmp	r2, #0
    772a:	d01a      	beq.n	7762 <rt_put_prio+0x46>
    772c:	7893      	ldrb	r3, [r2, #2]
    772e:	42a3      	cmp	r3, r4
    7730:	d204      	bcs.n	773c <rt_put_prio+0x20>
    7732:	e00e      	b.n	7752 <rt_put_prio+0x36>
    7734:	7898      	ldrb	r0, [r3, #2]
    7736:	4284      	cmp	r4, r0
    7738:	d80d      	bhi.n	7756 <rt_put_prio+0x3a>
    773a:	001a      	movs	r2, r3
    773c:	6853      	ldr	r3, [r2, #4]
    773e:	2b00      	cmp	r3, #0
    7740:	d1f8      	bne.n	7734 <rt_put_prio+0x18>
    7742:	2300      	movs	r3, #0
    7744:	604b      	str	r3, [r1, #4]
    7746:	6051      	str	r1, [r2, #4]
    7748:	2d02      	cmp	r5, #2
    774a:	d900      	bls.n	774e <rt_put_prio+0x32>
    774c:	2200      	movs	r2, #0
    774e:	608a      	str	r2, [r1, #8]
    7750:	bd30      	pop	{r4, r5, pc}
    7752:	0013      	movs	r3, r2
    7754:	0002      	movs	r2, r0
    7756:	604b      	str	r3, [r1, #4]
    7758:	6051      	str	r1, [r2, #4]
    775a:	2d02      	cmp	r5, #2
    775c:	d8f6      	bhi.n	774c <rt_put_prio+0x30>
    775e:	6099      	str	r1, [r3, #8]
    7760:	e7f5      	b.n	774e <rt_put_prio+0x32>
    7762:	0002      	movs	r2, r0
    7764:	e7ed      	b.n	7742 <rt_put_prio+0x26>
    7766:	46c0      	nop			; (mov r8, r8)

00007768 <rt_get_first>:
    7768:	6843      	ldr	r3, [r0, #4]
    776a:	7802      	ldrb	r2, [r0, #0]
    776c:	6859      	ldr	r1, [r3, #4]
    776e:	3a01      	subs	r2, #1
    7770:	6041      	str	r1, [r0, #4]
    7772:	2a02      	cmp	r2, #2
    7774:	d808      	bhi.n	7788 <rt_get_first+0x20>
    7776:	2900      	cmp	r1, #0
    7778:	d002      	beq.n	7780 <rt_get_first+0x18>
    777a:	2200      	movs	r2, #0
    777c:	6088      	str	r0, [r1, #8]
    777e:	605a      	str	r2, [r3, #4]
    7780:	2200      	movs	r2, #0
    7782:	609a      	str	r2, [r3, #8]
    7784:	0018      	movs	r0, r3
    7786:	4770      	bx	lr
    7788:	2200      	movs	r2, #0
    778a:	605a      	str	r2, [r3, #4]
    778c:	e7fa      	b.n	7784 <rt_get_first+0x1c>
    778e:	46c0      	nop			; (mov r8, r8)

00007790 <rt_put_rdy_first>:
    7790:	4b03      	ldr	r3, [pc, #12]	; (77a0 <rt_put_rdy_first+0x10>)
    7792:	685a      	ldr	r2, [r3, #4]
    7794:	6042      	str	r2, [r0, #4]
    7796:	2200      	movs	r2, #0
    7798:	6058      	str	r0, [r3, #4]
    779a:	6082      	str	r2, [r0, #8]
    779c:	4770      	bx	lr
    779e:	46c0      	nop			; (mov r8, r8)
    77a0:	20006080 	.word	0x20006080

000077a4 <rt_get_same_rdy_prio>:
    77a4:	4b06      	ldr	r3, [pc, #24]	; (77c0 <rt_get_same_rdy_prio+0x1c>)
    77a6:	4a07      	ldr	r2, [pc, #28]	; (77c4 <rt_get_same_rdy_prio+0x20>)
    77a8:	6858      	ldr	r0, [r3, #4]
    77aa:	6812      	ldr	r2, [r2, #0]
    77ac:	7881      	ldrb	r1, [r0, #2]
    77ae:	7892      	ldrb	r2, [r2, #2]
    77b0:	4291      	cmp	r1, r2
    77b2:	d102      	bne.n	77ba <rt_get_same_rdy_prio+0x16>
    77b4:	6842      	ldr	r2, [r0, #4]
    77b6:	605a      	str	r2, [r3, #4]
    77b8:	4770      	bx	lr
    77ba:	2000      	movs	r0, #0
    77bc:	e7fc      	b.n	77b8 <rt_get_same_rdy_prio+0x14>
    77be:	46c0      	nop			; (mov r8, r8)
    77c0:	20006080 	.word	0x20006080
    77c4:	200060b4 	.word	0x200060b4

000077c8 <rt_resort_prio>:
    77c8:	6881      	ldr	r1, [r0, #8]
    77ca:	b530      	push	{r4, r5, lr}
    77cc:	2900      	cmp	r1, #0
    77ce:	d030      	beq.n	7832 <rt_resort_prio+0x6a>
    77d0:	780b      	ldrb	r3, [r1, #0]
    77d2:	000a      	movs	r2, r1
    77d4:	2b00      	cmp	r3, #0
    77d6:	d103      	bne.n	77e0 <rt_resort_prio+0x18>
    77d8:	6892      	ldr	r2, [r2, #8]
    77da:	7813      	ldrb	r3, [r2, #0]
    77dc:	2b00      	cmp	r3, #0
    77de:	d0fb      	beq.n	77d8 <rt_resort_prio+0x10>
    77e0:	6843      	ldr	r3, [r0, #4]
    77e2:	604b      	str	r3, [r1, #4]
    77e4:	6843      	ldr	r3, [r0, #4]
    77e6:	2b00      	cmp	r3, #0
    77e8:	d000      	beq.n	77ec <rt_resort_prio+0x24>
    77ea:	6099      	str	r1, [r3, #8]
    77ec:	7815      	ldrb	r5, [r2, #0]
    77ee:	6851      	ldr	r1, [r2, #4]
    77f0:	3d01      	subs	r5, #1
    77f2:	b2ed      	uxtb	r5, r5
    77f4:	7884      	ldrb	r4, [r0, #2]
    77f6:	2900      	cmp	r1, #0
    77f8:	d029      	beq.n	784e <rt_resort_prio+0x86>
    77fa:	788b      	ldrb	r3, [r1, #2]
    77fc:	42a3      	cmp	r3, r4
    77fe:	d204      	bcs.n	780a <rt_resort_prio+0x42>
    7800:	e00e      	b.n	7820 <rt_resort_prio+0x58>
    7802:	789a      	ldrb	r2, [r3, #2]
    7804:	4294      	cmp	r4, r2
    7806:	d80d      	bhi.n	7824 <rt_resort_prio+0x5c>
    7808:	0019      	movs	r1, r3
    780a:	684b      	ldr	r3, [r1, #4]
    780c:	2b00      	cmp	r3, #0
    780e:	d1f8      	bne.n	7802 <rt_resort_prio+0x3a>
    7810:	2300      	movs	r3, #0
    7812:	6043      	str	r3, [r0, #4]
    7814:	6048      	str	r0, [r1, #4]
    7816:	2d02      	cmp	r5, #2
    7818:	d909      	bls.n	782e <rt_resort_prio+0x66>
    781a:	2300      	movs	r3, #0
    781c:	6083      	str	r3, [r0, #8]
    781e:	bd30      	pop	{r4, r5, pc}
    7820:	000b      	movs	r3, r1
    7822:	0011      	movs	r1, r2
    7824:	6043      	str	r3, [r0, #4]
    7826:	6048      	str	r0, [r1, #4]
    7828:	2d02      	cmp	r5, #2
    782a:	d8f6      	bhi.n	781a <rt_resort_prio+0x52>
    782c:	6098      	str	r0, [r3, #8]
    782e:	6081      	str	r1, [r0, #8]
    7830:	e7f5      	b.n	781e <rt_resort_prio+0x56>
    7832:	7843      	ldrb	r3, [r0, #1]
    7834:	2b01      	cmp	r3, #1
    7836:	d1f2      	bne.n	781e <rt_resort_prio+0x56>
    7838:	4a06      	ldr	r2, [pc, #24]	; (7854 <rt_resort_prio+0x8c>)
    783a:	0013      	movs	r3, r2
    783c:	e001      	b.n	7842 <rt_resort_prio+0x7a>
    783e:	1e0b      	subs	r3, r1, #0
    7840:	d0d4      	beq.n	77ec <rt_resort_prio+0x24>
    7842:	6859      	ldr	r1, [r3, #4]
    7844:	4288      	cmp	r0, r1
    7846:	d1fa      	bne.n	783e <rt_resort_prio+0x76>
    7848:	6841      	ldr	r1, [r0, #4]
    784a:	6059      	str	r1, [r3, #4]
    784c:	e7ce      	b.n	77ec <rt_resort_prio+0x24>
    784e:	0011      	movs	r1, r2
    7850:	e7de      	b.n	7810 <rt_resort_prio+0x48>
    7852:	46c0      	nop			; (mov r8, r8)
    7854:	20006080 	.word	0x20006080

00007858 <rt_put_dly>:
    7858:	b530      	push	{r4, r5, lr}
    785a:	4c17      	ldr	r4, [pc, #92]	; (78b8 <rt_put_dly+0x60>)
    785c:	68e2      	ldr	r2, [r4, #12]
    785e:	2a00      	cmp	r2, #0
    7860:	d023      	beq.n	78aa <rt_put_dly+0x52>
    7862:	8aa3      	ldrh	r3, [r4, #20]
    7864:	4299      	cmp	r1, r3
    7866:	d804      	bhi.n	7872 <rt_put_dly+0x1a>
    7868:	e022      	b.n	78b0 <rt_put_dly+0x58>
    786a:	68d4      	ldr	r4, [r2, #12]
    786c:	2c00      	cmp	r4, #0
    786e:	d013      	beq.n	7898 <rt_put_dly+0x40>
    7870:	0022      	movs	r2, r4
    7872:	8a94      	ldrh	r4, [r2, #20]
    7874:	191b      	adds	r3, r3, r4
    7876:	4299      	cmp	r1, r3
    7878:	d8f7      	bhi.n	786a <rt_put_dly+0x12>
    787a:	68d5      	ldr	r5, [r2, #12]
    787c:	60c5      	str	r5, [r0, #12]
    787e:	60d0      	str	r0, [r2, #12]
    7880:	68c4      	ldr	r4, [r0, #12]
    7882:	6102      	str	r2, [r0, #16]
    7884:	2c00      	cmp	r4, #0
    7886:	d000      	beq.n	788a <rt_put_dly+0x32>
    7888:	6120      	str	r0, [r4, #16]
    788a:	1a5b      	subs	r3, r3, r1
    788c:	b29b      	uxth	r3, r3
    788e:	8283      	strh	r3, [r0, #20]
    7890:	8a91      	ldrh	r1, [r2, #20]
    7892:	1acb      	subs	r3, r1, r3
    7894:	8293      	strh	r3, [r2, #20]
    7896:	bd30      	pop	{r4, r5, pc}
    7898:	b29b      	uxth	r3, r3
    789a:	2400      	movs	r4, #0
    789c:	1acb      	subs	r3, r1, r3
    789e:	60c4      	str	r4, [r0, #12]
    78a0:	60d0      	str	r0, [r2, #12]
    78a2:	6102      	str	r2, [r0, #16]
    78a4:	8293      	strh	r3, [r2, #20]
    78a6:	8284      	strh	r4, [r0, #20]
    78a8:	e7f5      	b.n	7896 <rt_put_dly+0x3e>
    78aa:	2300      	movs	r3, #0
    78ac:	0022      	movs	r2, r4
    78ae:	e7f4      	b.n	789a <rt_put_dly+0x42>
    78b0:	0015      	movs	r5, r2
    78b2:	0022      	movs	r2, r4
    78b4:	e7e2      	b.n	787c <rt_put_dly+0x24>
    78b6:	46c0      	nop			; (mov r8, r8)
    78b8:	20006098 	.word	0x20006098

000078bc <rt_dec_dly>:
    78bc:	b5f0      	push	{r4, r5, r6, r7, lr}
    78be:	464e      	mov	r6, r9
    78c0:	4657      	mov	r7, sl
    78c2:	4645      	mov	r5, r8
    78c4:	b4e0      	push	{r5, r6, r7}
    78c6:	4e36      	ldr	r6, [pc, #216]	; (79a0 <rt_dec_dly+0xe4>)
    78c8:	68f0      	ldr	r0, [r6, #12]
    78ca:	2800      	cmp	r0, #0
    78cc:	d059      	beq.n	7982 <rt_dec_dly+0xc6>
    78ce:	8ab3      	ldrh	r3, [r6, #20]
    78d0:	3b01      	subs	r3, #1
    78d2:	b29b      	uxth	r3, r3
    78d4:	82b3      	strh	r3, [r6, #20]
    78d6:	2b00      	cmp	r3, #0
    78d8:	d153      	bne.n	7982 <rt_dec_dly+0xc6>
    78da:	4b32      	ldr	r3, [pc, #200]	; (79a4 <rt_dec_dly+0xe8>)
    78dc:	2500      	movs	r5, #0
    78de:	469c      	mov	ip, r3
    78e0:	781f      	ldrb	r7, [r3, #0]
    78e2:	4b31      	ldr	r3, [pc, #196]	; (79a8 <rt_dec_dly+0xec>)
    78e4:	46e2      	mov	sl, ip
    78e6:	881b      	ldrh	r3, [r3, #0]
    78e8:	3f01      	subs	r7, #1
    78ea:	4699      	mov	r9, r3
    78ec:	2301      	movs	r3, #1
    78ee:	4698      	mov	r8, r3
    78f0:	b2ff      	uxtb	r7, r7
    78f2:	6883      	ldr	r3, [r0, #8]
    78f4:	2b00      	cmp	r3, #0
    78f6:	d007      	beq.n	7908 <rt_dec_dly+0x4c>
    78f8:	6842      	ldr	r2, [r0, #4]
    78fa:	605a      	str	r2, [r3, #4]
    78fc:	6842      	ldr	r2, [r0, #4]
    78fe:	2a00      	cmp	r2, #0
    7900:	d001      	beq.n	7906 <rt_dec_dly+0x4a>
    7902:	6093      	str	r3, [r2, #8]
    7904:	6045      	str	r5, [r0, #4]
    7906:	6085      	str	r5, [r0, #8]
    7908:	4663      	mov	r3, ip
    790a:	685a      	ldr	r2, [r3, #4]
    790c:	7884      	ldrb	r4, [r0, #2]
    790e:	2a00      	cmp	r2, #0
    7910:	d03c      	beq.n	798c <rt_dec_dly+0xd0>
    7912:	7893      	ldrb	r3, [r2, #2]
    7914:	42a3      	cmp	r3, r4
    7916:	d204      	bcs.n	7922 <rt_dec_dly+0x66>
    7918:	e01c      	b.n	7954 <rt_dec_dly+0x98>
    791a:	7899      	ldrb	r1, [r3, #2]
    791c:	428c      	cmp	r4, r1
    791e:	d81b      	bhi.n	7958 <rt_dec_dly+0x9c>
    7920:	001a      	movs	r2, r3
    7922:	6853      	ldr	r3, [r2, #4]
    7924:	2b00      	cmp	r3, #0
    7926:	d1f8      	bne.n	791a <rt_dec_dly+0x5e>
    7928:	6045      	str	r5, [r0, #4]
    792a:	6050      	str	r0, [r2, #4]
    792c:	2f02      	cmp	r7, #2
    792e:	d900      	bls.n	7932 <rt_dec_dly+0x76>
    7930:	2200      	movs	r2, #0
    7932:	7843      	ldrb	r3, [r0, #1]
    7934:	6082      	str	r2, [r0, #8]
    7936:	8a82      	ldrh	r2, [r0, #20]
    7938:	2b04      	cmp	r3, #4
    793a:	d017      	beq.n	796c <rt_dec_dly+0xb0>
    793c:	4643      	mov	r3, r8
    793e:	7043      	strb	r3, [r0, #1]
    7940:	68c3      	ldr	r3, [r0, #12]
    7942:	2b00      	cmp	r3, #0
    7944:	d01a      	beq.n	797c <rt_dec_dly+0xc0>
    7946:	611e      	str	r6, [r3, #16]
    7948:	60c5      	str	r5, [r0, #12]
    794a:	6105      	str	r5, [r0, #16]
    794c:	2a00      	cmp	r2, #0
    794e:	d123      	bne.n	7998 <rt_dec_dly+0xdc>
    7950:	0018      	movs	r0, r3
    7952:	e7ce      	b.n	78f2 <rt_dec_dly+0x36>
    7954:	0013      	movs	r3, r2
    7956:	4652      	mov	r2, sl
    7958:	6043      	str	r3, [r0, #4]
    795a:	6050      	str	r0, [r2, #4]
    795c:	2f02      	cmp	r7, #2
    795e:	d8e7      	bhi.n	7930 <rt_dec_dly+0x74>
    7960:	6098      	str	r0, [r3, #8]
    7962:	7843      	ldrb	r3, [r0, #1]
    7964:	6082      	str	r2, [r0, #8]
    7966:	8a82      	ldrh	r2, [r0, #20]
    7968:	2b04      	cmp	r3, #4
    796a:	d1e7      	bne.n	793c <rt_dec_dly+0x80>
    796c:	8ac3      	ldrh	r3, [r0, #22]
    796e:	444b      	add	r3, r9
    7970:	8283      	strh	r3, [r0, #20]
    7972:	4643      	mov	r3, r8
    7974:	7043      	strb	r3, [r0, #1]
    7976:	68c3      	ldr	r3, [r0, #12]
    7978:	2b00      	cmp	r3, #0
    797a:	d1e4      	bne.n	7946 <rt_dec_dly+0x8a>
    797c:	82b2      	strh	r2, [r6, #20]
    797e:	60f3      	str	r3, [r6, #12]
    7980:	6103      	str	r3, [r0, #16]
    7982:	bc1c      	pop	{r2, r3, r4}
    7984:	4690      	mov	r8, r2
    7986:	4699      	mov	r9, r3
    7988:	46a2      	mov	sl, r4
    798a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    798c:	4652      	mov	r2, sl
    798e:	6045      	str	r5, [r0, #4]
    7990:	6050      	str	r0, [r2, #4]
    7992:	2f02      	cmp	r7, #2
    7994:	d8cc      	bhi.n	7930 <rt_dec_dly+0x74>
    7996:	e7cc      	b.n	7932 <rt_dec_dly+0x76>
    7998:	82b2      	strh	r2, [r6, #20]
    799a:	60f3      	str	r3, [r6, #12]
    799c:	e7f1      	b.n	7982 <rt_dec_dly+0xc6>
    799e:	46c0      	nop			; (mov r8, r8)
    79a0:	20006098 	.word	0x20006098
    79a4:	20006080 	.word	0x20006080
    79a8:	2000607c 	.word	0x2000607c

000079ac <rt_rmv_list>:
    79ac:	6883      	ldr	r3, [r0, #8]
    79ae:	2b00      	cmp	r3, #0
    79b0:	d006      	beq.n	79c0 <rt_rmv_list+0x14>
    79b2:	6842      	ldr	r2, [r0, #4]
    79b4:	605a      	str	r2, [r3, #4]
    79b6:	6842      	ldr	r2, [r0, #4]
    79b8:	2a00      	cmp	r2, #0
    79ba:	d000      	beq.n	79be <rt_rmv_list+0x12>
    79bc:	6093      	str	r3, [r2, #8]
    79be:	4770      	bx	lr
    79c0:	4b04      	ldr	r3, [pc, #16]	; (79d4 <rt_rmv_list+0x28>)
    79c2:	e001      	b.n	79c8 <rt_rmv_list+0x1c>
    79c4:	1e13      	subs	r3, r2, #0
    79c6:	d0fa      	beq.n	79be <rt_rmv_list+0x12>
    79c8:	685a      	ldr	r2, [r3, #4]
    79ca:	4290      	cmp	r0, r2
    79cc:	d1fa      	bne.n	79c4 <rt_rmv_list+0x18>
    79ce:	6842      	ldr	r2, [r0, #4]
    79d0:	605a      	str	r2, [r3, #4]
    79d2:	e7f4      	b.n	79be <rt_rmv_list+0x12>
    79d4:	20006080 	.word	0x20006080

000079d8 <rt_rmv_dly>:
    79d8:	6903      	ldr	r3, [r0, #16]
    79da:	b510      	push	{r4, lr}
    79dc:	2b00      	cmp	r3, #0
    79de:	d00d      	beq.n	79fc <rt_rmv_dly+0x24>
    79e0:	68c2      	ldr	r2, [r0, #12]
    79e2:	60da      	str	r2, [r3, #12]
    79e4:	68c1      	ldr	r1, [r0, #12]
    79e6:	2900      	cmp	r1, #0
    79e8:	d009      	beq.n	79fe <rt_rmv_dly+0x26>
    79ea:	8a9c      	ldrh	r4, [r3, #20]
    79ec:	8a82      	ldrh	r2, [r0, #20]
    79ee:	18a2      	adds	r2, r4, r2
    79f0:	829a      	strh	r2, [r3, #20]
    79f2:	610b      	str	r3, [r1, #16]
    79f4:	2300      	movs	r3, #0
    79f6:	60c3      	str	r3, [r0, #12]
    79f8:	2300      	movs	r3, #0
    79fa:	6103      	str	r3, [r0, #16]
    79fc:	bd10      	pop	{r4, pc}
    79fe:	8299      	strh	r1, [r3, #20]
    7a00:	e7fa      	b.n	79f8 <rt_rmv_dly+0x20>
    7a02:	46c0      	nop			; (mov r8, r8)

00007a04 <rt_psq_enq>:
    7a04:	b570      	push	{r4, r5, r6, lr}
    7a06:	4c0f      	ldr	r4, [pc, #60]	; (7a44 <rt_psq_enq+0x40>)
    7a08:	78e5      	ldrb	r5, [r4, #3]
    7a0a:	f3ef 8310 	mrs	r3, PRIMASK
    7a0e:	b672      	cpsid	i
    7a10:	78a3      	ldrb	r3, [r4, #2]
    7a12:	429d      	cmp	r5, r3
    7a14:	d907      	bls.n	7a26 <rt_psq_enq+0x22>
    7a16:	1c5a      	adds	r2, r3, #1
    7a18:	7823      	ldrb	r3, [r4, #0]
    7a1a:	70a2      	strb	r2, [r4, #2]
    7a1c:	1c5a      	adds	r2, r3, #1
    7a1e:	4295      	cmp	r5, r2
    7a20:	d00d      	beq.n	7a3e <rt_psq_enq+0x3a>
    7a22:	b2d2      	uxtb	r2, r2
    7a24:	7022      	strb	r2, [r4, #0]
    7a26:	b662      	cpsie	i
    7a28:	429d      	cmp	r5, r3
    7a2a:	d904      	bls.n	7a36 <rt_psq_enq+0x32>
    7a2c:	00db      	lsls	r3, r3, #3
    7a2e:	18e3      	adds	r3, r4, r3
    7a30:	6058      	str	r0, [r3, #4]
    7a32:	6099      	str	r1, [r3, #8]
    7a34:	bd70      	pop	{r4, r5, r6, pc}
    7a36:	2002      	movs	r0, #2
    7a38:	f7f9 ff7c 	bl	1934 <os_error>
    7a3c:	e7fa      	b.n	7a34 <rt_psq_enq+0x30>
    7a3e:	2200      	movs	r2, #0
    7a40:	7022      	strb	r2, [r4, #0]
    7a42:	e7f0      	b.n	7a26 <rt_psq_enq+0x22>
    7a44:	20004c58 	.word	0x20004c58

00007a48 <rt_evt_wait>:
    7a48:	4b10      	ldr	r3, [pc, #64]	; (7a8c <rt_evt_wait+0x44>)
    7a4a:	b570      	push	{r4, r5, r6, lr}
    7a4c:	681b      	ldr	r3, [r3, #0]
    7a4e:	000c      	movs	r4, r1
    7a50:	2a00      	cmp	r2, #0
    7a52:	d00b      	beq.n	7a6c <rt_evt_wait+0x24>
    7a54:	0005      	movs	r5, r0
    7a56:	8b1a      	ldrh	r2, [r3, #24]
    7a58:	2106      	movs	r1, #6
    7a5a:	4015      	ands	r5, r2
    7a5c:	42a8      	cmp	r0, r5
    7a5e:	d00a      	beq.n	7a76 <rt_evt_wait+0x2e>
    7a60:	8358      	strh	r0, [r3, #26]
    7a62:	0020      	movs	r0, r4
    7a64:	f000 fa94 	bl	7f90 <rt_block>
    7a68:	2001      	movs	r0, #1
    7a6a:	e007      	b.n	7a7c <rt_evt_wait+0x34>
    7a6c:	8b1a      	ldrh	r2, [r3, #24]
    7a6e:	0011      	movs	r1, r2
    7a70:	4001      	ands	r1, r0
    7a72:	d004      	beq.n	7a7e <rt_evt_wait+0x36>
    7a74:	8359      	strh	r1, [r3, #26]
    7a76:	4382      	bics	r2, r0
    7a78:	2002      	movs	r0, #2
    7a7a:	831a      	strh	r2, [r3, #24]
    7a7c:	bd70      	pop	{r4, r5, r6, pc}
    7a7e:	8358      	strh	r0, [r3, #26]
    7a80:	2105      	movs	r1, #5
    7a82:	0020      	movs	r0, r4
    7a84:	f000 fa84 	bl	7f90 <rt_block>
    7a88:	2001      	movs	r0, #1
    7a8a:	e7f7      	b.n	7a7c <rt_evt_wait+0x34>
    7a8c:	200060b4 	.word	0x200060b4

00007a90 <rt_evt_set>:
    7a90:	3901      	subs	r1, #1
    7a92:	4b14      	ldr	r3, [pc, #80]	; (7ae4 <rt_evt_set+0x54>)
    7a94:	0089      	lsls	r1, r1, #2
    7a96:	b510      	push	{r4, lr}
    7a98:	58cc      	ldr	r4, [r1, r3]
    7a9a:	2c00      	cmp	r4, #0
    7a9c:	d008      	beq.n	7ab0 <rt_evt_set+0x20>
    7a9e:	8b23      	ldrh	r3, [r4, #24]
    7aa0:	8b62      	ldrh	r2, [r4, #26]
    7aa2:	4318      	orrs	r0, r3
    7aa4:	7863      	ldrb	r3, [r4, #1]
    7aa6:	8320      	strh	r0, [r4, #24]
    7aa8:	2b06      	cmp	r3, #6
    7aaa:	d016      	beq.n	7ada <rt_evt_set+0x4a>
    7aac:	2b05      	cmp	r3, #5
    7aae:	d000      	beq.n	7ab2 <rt_evt_set+0x22>
    7ab0:	bd10      	pop	{r4, pc}
    7ab2:	0013      	movs	r3, r2
    7ab4:	4003      	ands	r3, r0
    7ab6:	d0fb      	beq.n	7ab0 <rt_evt_set+0x20>
    7ab8:	8363      	strh	r3, [r4, #26]
    7aba:	4390      	bics	r0, r2
    7abc:	8320      	strh	r0, [r4, #24]
    7abe:	0020      	movs	r0, r4
    7ac0:	f7ff ff8a 	bl	79d8 <rt_rmv_dly>
    7ac4:	2301      	movs	r3, #1
    7ac6:	0020      	movs	r0, r4
    7ac8:	7063      	strb	r3, [r4, #1]
    7aca:	8b62      	ldrh	r2, [r4, #26]
    7acc:	2108      	movs	r1, #8
    7ace:	f7ff fa1d 	bl	6f0c <rt_ret_val2>
    7ad2:	0020      	movs	r0, r4
    7ad4:	f000 fa36 	bl	7f44 <rt_dispatch>
    7ad8:	e7ea      	b.n	7ab0 <rt_evt_set+0x20>
    7ada:	0013      	movs	r3, r2
    7adc:	4003      	ands	r3, r0
    7ade:	429a      	cmp	r2, r3
    7ae0:	d1e6      	bne.n	7ab0 <rt_evt_set+0x20>
    7ae2:	e7ea      	b.n	7aba <rt_evt_set+0x2a>
    7ae4:	20004cdc 	.word	0x20004cdc

00007ae8 <rt_evt_clr>:
    7ae8:	3901      	subs	r1, #1
    7aea:	4b04      	ldr	r3, [pc, #16]	; (7afc <rt_evt_clr+0x14>)
    7aec:	0089      	lsls	r1, r1, #2
    7aee:	58cb      	ldr	r3, [r1, r3]
    7af0:	2b00      	cmp	r3, #0
    7af2:	d002      	beq.n	7afa <rt_evt_clr+0x12>
    7af4:	8b1a      	ldrh	r2, [r3, #24]
    7af6:	4382      	bics	r2, r0
    7af8:	831a      	strh	r2, [r3, #24]
    7afa:	4770      	bx	lr
    7afc:	20004cdc 	.word	0x20004cdc

00007b00 <isr_evt_set>:
    7b00:	3901      	subs	r1, #1
    7b02:	4b06      	ldr	r3, [pc, #24]	; (7b1c <isr_evt_set+0x1c>)
    7b04:	0089      	lsls	r1, r1, #2
    7b06:	58cb      	ldr	r3, [r1, r3]
    7b08:	b510      	push	{r4, lr}
    7b0a:	2b00      	cmp	r3, #0
    7b0c:	d005      	beq.n	7b1a <isr_evt_set+0x1a>
    7b0e:	0001      	movs	r1, r0
    7b10:	0018      	movs	r0, r3
    7b12:	f7ff ff77 	bl	7a04 <rt_psq_enq>
    7b16:	f000 f959 	bl	7dcc <rt_psh_req>
    7b1a:	bd10      	pop	{r4, pc}
    7b1c:	20004cdc 	.word	0x20004cdc

00007b20 <rt_evt_get>:
    7b20:	4b01      	ldr	r3, [pc, #4]	; (7b28 <rt_evt_get+0x8>)
    7b22:	681b      	ldr	r3, [r3, #0]
    7b24:	8b58      	ldrh	r0, [r3, #26]
    7b26:	4770      	bx	lr
    7b28:	200060b4 	.word	0x200060b4

00007b2c <rt_evt_psh>:
    7b2c:	b510      	push	{r4, lr}
    7b2e:	8b03      	ldrh	r3, [r0, #24]
    7b30:	0004      	movs	r4, r0
    7b32:	4319      	orrs	r1, r3
    7b34:	7843      	ldrb	r3, [r0, #1]
    7b36:	8301      	strh	r1, [r0, #24]
    7b38:	8b42      	ldrh	r2, [r0, #26]
    7b3a:	2b06      	cmp	r3, #6
    7b3c:	d017      	beq.n	7b6e <rt_evt_psh+0x42>
    7b3e:	2b05      	cmp	r3, #5
    7b40:	d000      	beq.n	7b44 <rt_evt_psh+0x18>
    7b42:	bd10      	pop	{r4, pc}
    7b44:	0013      	movs	r3, r2
    7b46:	400b      	ands	r3, r1
    7b48:	d0fb      	beq.n	7b42 <rt_evt_psh+0x16>
    7b4a:	8343      	strh	r3, [r0, #26]
    7b4c:	4391      	bics	r1, r2
    7b4e:	8321      	strh	r1, [r4, #24]
    7b50:	0020      	movs	r0, r4
    7b52:	f7ff ff41 	bl	79d8 <rt_rmv_dly>
    7b56:	2301      	movs	r3, #1
    7b58:	0020      	movs	r0, r4
    7b5a:	7063      	strb	r3, [r4, #1]
    7b5c:	8b62      	ldrh	r2, [r4, #26]
    7b5e:	2108      	movs	r1, #8
    7b60:	f7ff f9d4 	bl	6f0c <rt_ret_val2>
    7b64:	0021      	movs	r1, r4
    7b66:	4804      	ldr	r0, [pc, #16]	; (7b78 <rt_evt_psh+0x4c>)
    7b68:	f7ff fdd8 	bl	771c <rt_put_prio>
    7b6c:	e7e9      	b.n	7b42 <rt_evt_psh+0x16>
    7b6e:	0013      	movs	r3, r2
    7b70:	400b      	ands	r3, r1
    7b72:	429a      	cmp	r2, r3
    7b74:	d1e5      	bne.n	7b42 <rt_evt_psh+0x16>
    7b76:	e7e9      	b.n	7b4c <rt_evt_psh+0x20>
    7b78:	20006080 	.word	0x20006080

00007b7c <rt_suspend>:
    7b7c:	4b1c      	ldr	r3, [pc, #112]	; (7bf0 <rt_suspend+0x74>)
    7b7e:	b510      	push	{r4, lr}
    7b80:	681b      	ldr	r3, [r3, #0]
    7b82:	2b00      	cmp	r3, #0
    7b84:	db20      	blt.n	7bc8 <rt_suspend+0x4c>
    7b86:	491b      	ldr	r1, [pc, #108]	; (7bf4 <rt_suspend+0x78>)
    7b88:	095a      	lsrs	r2, r3, #5
    7b8a:	468c      	mov	ip, r1
    7b8c:	211f      	movs	r1, #31
    7b8e:	400b      	ands	r3, r1
    7b90:	391e      	subs	r1, #30
    7b92:	0008      	movs	r0, r1
    7b94:	4098      	lsls	r0, r3
    7b96:	0092      	lsls	r2, r2, #2
    7b98:	4462      	add	r2, ip
    7b9a:	6010      	str	r0, [r2, #0]
    7b9c:	4816      	ldr	r0, [pc, #88]	; (7bf8 <rt_suspend+0x7c>)
    7b9e:	4a17      	ldr	r2, [pc, #92]	; (7bfc <rt_suspend+0x80>)
    7ba0:	7001      	strb	r1, [r0, #0]
    7ba2:	6813      	ldr	r3, [r2, #0]
    7ba4:	0f1b      	lsrs	r3, r3, #28
    7ba6:	400b      	ands	r3, r1
    7ba8:	7043      	strb	r3, [r0, #1]
    7baa:	06db      	lsls	r3, r3, #27
    7bac:	6013      	str	r3, [r2, #0]
    7bae:	4b14      	ldr	r3, [pc, #80]	; (7c00 <rt_suspend+0x84>)
    7bb0:	68da      	ldr	r2, [r3, #12]
    7bb2:	2a00      	cmp	r2, #0
    7bb4:	d019      	beq.n	7bea <rt_suspend+0x6e>
    7bb6:	8a9c      	ldrh	r4, [r3, #20]
    7bb8:	f7fe f9e6 	bl	5f88 <sysUserTimerWakeupTime>
    7bbc:	0003      	movs	r3, r0
    7bbe:	0020      	movs	r0, r4
    7bc0:	429c      	cmp	r4, r3
    7bc2:	d900      	bls.n	7bc6 <rt_suspend+0x4a>
    7bc4:	0018      	movs	r0, r3
    7bc6:	bd10      	pop	{r4, pc}
    7bc8:	2005      	movs	r0, #5
    7bca:	4b0e      	ldr	r3, [pc, #56]	; (7c04 <rt_suspend+0x88>)
    7bcc:	490a      	ldr	r1, [pc, #40]	; (7bf8 <rt_suspend+0x7c>)
    7bce:	6018      	str	r0, [r3, #0]
    7bd0:	2301      	movs	r3, #1
    7bd2:	4a0a      	ldr	r2, [pc, #40]	; (7bfc <rt_suspend+0x80>)
    7bd4:	700b      	strb	r3, [r1, #0]
    7bd6:	6813      	ldr	r3, [r2, #0]
    7bd8:	0e9b      	lsrs	r3, r3, #26
    7bda:	4003      	ands	r3, r0
    7bdc:	704b      	strb	r3, [r1, #1]
    7bde:	065b      	lsls	r3, r3, #25
    7be0:	6013      	str	r3, [r2, #0]
    7be2:	4b07      	ldr	r3, [pc, #28]	; (7c00 <rt_suspend+0x84>)
    7be4:	68da      	ldr	r2, [r3, #12]
    7be6:	2a00      	cmp	r2, #0
    7be8:	d1e5      	bne.n	7bb6 <rt_suspend+0x3a>
    7bea:	4c07      	ldr	r4, [pc, #28]	; (7c08 <rt_suspend+0x8c>)
    7bec:	e7e4      	b.n	7bb8 <rt_suspend+0x3c>
    7bee:	46c0      	nop			; (mov r8, r8)
    7bf0:	200060b0 	.word	0x200060b0
    7bf4:	e000e180 	.word	0xe000e180
    7bf8:	20006038 	.word	0x20006038
    7bfc:	e000ed04 	.word	0xe000ed04
    7c00:	20006098 	.word	0x20006098
    7c04:	e000e010 	.word	0xe000e010
    7c08:	0000ffff 	.word	0x0000ffff

00007c0c <rt_resume>:
    7c0c:	b5f0      	push	{r4, r5, r6, r7, lr}
    7c0e:	4647      	mov	r7, r8
    7c10:	4b32      	ldr	r3, [pc, #200]	; (7cdc <rt_resume+0xd0>)
    7c12:	b480      	push	{r7}
    7c14:	0007      	movs	r7, r0
    7c16:	6818      	ldr	r0, [r3, #0]
    7c18:	2301      	movs	r3, #1
    7c1a:	7043      	strb	r3, [r0, #1]
    7c1c:	4698      	mov	r8, r3
    7c1e:	f7ff fdb7 	bl	7790 <rt_put_rdy_first>
    7c22:	2200      	movs	r2, #0
    7c24:	4b2e      	ldr	r3, [pc, #184]	; (7ce0 <rt_resume+0xd4>)
    7c26:	4e2f      	ldr	r6, [pc, #188]	; (7ce4 <rt_resume+0xd8>)
    7c28:	601a      	str	r2, [r3, #0]
    7c2a:	68f3      	ldr	r3, [r6, #12]
    7c2c:	2b00      	cmp	r3, #0
    7c2e:	d04f      	beq.n	7cd0 <rt_resume+0xc4>
    7c30:	8ab3      	ldrh	r3, [r6, #20]
    7c32:	429f      	cmp	r7, r3
    7c34:	d336      	bcc.n	7ca4 <rt_resume+0x98>
    7c36:	4d2c      	ldr	r5, [pc, #176]	; (7ce8 <rt_resume+0xdc>)
    7c38:	1afc      	subs	r4, r7, r3
    7c3a:	682a      	ldr	r2, [r5, #0]
    7c3c:	4694      	mov	ip, r2
    7c3e:	4463      	add	r3, ip
    7c40:	602b      	str	r3, [r5, #0]
    7c42:	4643      	mov	r3, r8
    7c44:	82b3      	strh	r3, [r6, #20]
    7c46:	e006      	b.n	7c56 <rt_resume+0x4a>
    7c48:	682b      	ldr	r3, [r5, #0]
    7c4a:	3c01      	subs	r4, #1
    7c4c:	3301      	adds	r3, #1
    7c4e:	602b      	str	r3, [r5, #0]
    7c50:	68f3      	ldr	r3, [r6, #12]
    7c52:	2b00      	cmp	r3, #0
    7c54:	d003      	beq.n	7c5e <rt_resume+0x52>
    7c56:	f7ff fe31 	bl	78bc <rt_dec_dly>
    7c5a:	2c00      	cmp	r4, #0
    7c5c:	d1f4      	bne.n	7c48 <rt_resume+0x3c>
    7c5e:	0038      	movs	r0, r7
    7c60:	f7fe f99e 	bl	5fa0 <sysUserTimerUpdate>
    7c64:	4821      	ldr	r0, [pc, #132]	; (7cec <rt_resume+0xe0>)
    7c66:	f7ff fd7f 	bl	7768 <rt_get_first>
    7c6a:	f000 f963 	bl	7f34 <rt_switch_req>
    7c6e:	4b20      	ldr	r3, [pc, #128]	; (7cf0 <rt_resume+0xe4>)
    7c70:	681b      	ldr	r3, [r3, #0]
    7c72:	2b00      	cmp	r3, #0
    7c74:	db1d      	blt.n	7cb2 <rt_resume+0xa6>
    7c76:	491f      	ldr	r1, [pc, #124]	; (7cf4 <rt_resume+0xe8>)
    7c78:	095a      	lsrs	r2, r3, #5
    7c7a:	468c      	mov	ip, r1
    7c7c:	211f      	movs	r1, #31
    7c7e:	400b      	ands	r3, r1
    7c80:	391e      	subs	r1, #30
    7c82:	4099      	lsls	r1, r3
    7c84:	0092      	lsls	r2, r2, #2
    7c86:	4462      	add	r2, ip
    7c88:	6011      	str	r1, [r2, #0]
    7c8a:	2100      	movs	r1, #0
    7c8c:	4a1a      	ldr	r2, [pc, #104]	; (7cf8 <rt_resume+0xec>)
    7c8e:	7011      	strb	r1, [r2, #0]
    7c90:	7890      	ldrb	r0, [r2, #2]
    7c92:	7853      	ldrb	r3, [r2, #1]
    7c94:	4303      	orrs	r3, r0
    7c96:	4819      	ldr	r0, [pc, #100]	; (7cfc <rt_resume+0xf0>)
    7c98:	071b      	lsls	r3, r3, #28
    7c9a:	6003      	str	r3, [r0, #0]
    7c9c:	7091      	strb	r1, [r2, #2]
    7c9e:	bc04      	pop	{r2}
    7ca0:	4690      	mov	r8, r2
    7ca2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7ca4:	4910      	ldr	r1, [pc, #64]	; (7ce8 <rt_resume+0xdc>)
    7ca6:	1bdb      	subs	r3, r3, r7
    7ca8:	680a      	ldr	r2, [r1, #0]
    7caa:	82b3      	strh	r3, [r6, #20]
    7cac:	19d2      	adds	r2, r2, r7
    7cae:	600a      	str	r2, [r1, #0]
    7cb0:	e7d5      	b.n	7c5e <rt_resume+0x52>
    7cb2:	2207      	movs	r2, #7
    7cb4:	2000      	movs	r0, #0
    7cb6:	4910      	ldr	r1, [pc, #64]	; (7cf8 <rt_resume+0xec>)
    7cb8:	4b11      	ldr	r3, [pc, #68]	; (7d00 <rt_resume+0xf4>)
    7cba:	601a      	str	r2, [r3, #0]
    7cbc:	7008      	strb	r0, [r1, #0]
    7cbe:	788b      	ldrb	r3, [r1, #2]
    7cc0:	784a      	ldrb	r2, [r1, #1]
    7cc2:	009b      	lsls	r3, r3, #2
    7cc4:	4313      	orrs	r3, r2
    7cc6:	4a0d      	ldr	r2, [pc, #52]	; (7cfc <rt_resume+0xf0>)
    7cc8:	069b      	lsls	r3, r3, #26
    7cca:	6013      	str	r3, [r2, #0]
    7ccc:	7088      	strb	r0, [r1, #2]
    7cce:	e7e6      	b.n	7c9e <rt_resume+0x92>
    7cd0:	4a05      	ldr	r2, [pc, #20]	; (7ce8 <rt_resume+0xdc>)
    7cd2:	6813      	ldr	r3, [r2, #0]
    7cd4:	19db      	adds	r3, r3, r7
    7cd6:	6013      	str	r3, [r2, #0]
    7cd8:	e7c1      	b.n	7c5e <rt_resume+0x52>
    7cda:	46c0      	nop			; (mov r8, r8)
    7cdc:	200060b4 	.word	0x200060b4
    7ce0:	200060f0 	.word	0x200060f0
    7ce4:	20006098 	.word	0x20006098
    7ce8:	2000607c 	.word	0x2000607c
    7cec:	20006080 	.word	0x20006080
    7cf0:	200060b0 	.word	0x200060b0
    7cf4:	e000e100 	.word	0xe000e100
    7cf8:	20006038 	.word	0x20006038
    7cfc:	e000ed04 	.word	0xe000ed04
    7d00:	e000e010 	.word	0xe000e010

00007d04 <rt_tsk_lock>:
    7d04:	4b13      	ldr	r3, [pc, #76]	; (7d54 <rt_tsk_lock+0x50>)
    7d06:	681b      	ldr	r3, [r3, #0]
    7d08:	2b00      	cmp	r3, #0
    7d0a:	db14      	blt.n	7d36 <rt_tsk_lock+0x32>
    7d0c:	4912      	ldr	r1, [pc, #72]	; (7d58 <rt_tsk_lock+0x54>)
    7d0e:	095a      	lsrs	r2, r3, #5
    7d10:	468c      	mov	ip, r1
    7d12:	211f      	movs	r1, #31
    7d14:	400b      	ands	r3, r1
    7d16:	391e      	subs	r1, #30
    7d18:	0008      	movs	r0, r1
    7d1a:	4098      	lsls	r0, r3
    7d1c:	0092      	lsls	r2, r2, #2
    7d1e:	4462      	add	r2, ip
    7d20:	6010      	str	r0, [r2, #0]
    7d22:	480e      	ldr	r0, [pc, #56]	; (7d5c <rt_tsk_lock+0x58>)
    7d24:	4a0e      	ldr	r2, [pc, #56]	; (7d60 <rt_tsk_lock+0x5c>)
    7d26:	7001      	strb	r1, [r0, #0]
    7d28:	6813      	ldr	r3, [r2, #0]
    7d2a:	0f1b      	lsrs	r3, r3, #28
    7d2c:	400b      	ands	r3, r1
    7d2e:	7043      	strb	r3, [r0, #1]
    7d30:	06db      	lsls	r3, r3, #27
    7d32:	6013      	str	r3, [r2, #0]
    7d34:	4770      	bx	lr
    7d36:	2005      	movs	r0, #5
    7d38:	4b0a      	ldr	r3, [pc, #40]	; (7d64 <rt_tsk_lock+0x60>)
    7d3a:	4908      	ldr	r1, [pc, #32]	; (7d5c <rt_tsk_lock+0x58>)
    7d3c:	6018      	str	r0, [r3, #0]
    7d3e:	2301      	movs	r3, #1
    7d40:	4a07      	ldr	r2, [pc, #28]	; (7d60 <rt_tsk_lock+0x5c>)
    7d42:	700b      	strb	r3, [r1, #0]
    7d44:	6813      	ldr	r3, [r2, #0]
    7d46:	0e9b      	lsrs	r3, r3, #26
    7d48:	4003      	ands	r3, r0
    7d4a:	704b      	strb	r3, [r1, #1]
    7d4c:	065b      	lsls	r3, r3, #25
    7d4e:	6013      	str	r3, [r2, #0]
    7d50:	e7f0      	b.n	7d34 <rt_tsk_lock+0x30>
    7d52:	46c0      	nop			; (mov r8, r8)
    7d54:	200060b0 	.word	0x200060b0
    7d58:	e000e180 	.word	0xe000e180
    7d5c:	20006038 	.word	0x20006038
    7d60:	e000ed04 	.word	0xe000ed04
    7d64:	e000e010 	.word	0xe000e010

00007d68 <rt_tsk_unlock>:
    7d68:	4b13      	ldr	r3, [pc, #76]	; (7db8 <rt_tsk_unlock+0x50>)
    7d6a:	681b      	ldr	r3, [r3, #0]
    7d6c:	2b00      	cmp	r3, #0
    7d6e:	db14      	blt.n	7d9a <rt_tsk_unlock+0x32>
    7d70:	4912      	ldr	r1, [pc, #72]	; (7dbc <rt_tsk_unlock+0x54>)
    7d72:	095a      	lsrs	r2, r3, #5
    7d74:	468c      	mov	ip, r1
    7d76:	211f      	movs	r1, #31
    7d78:	400b      	ands	r3, r1
    7d7a:	391e      	subs	r1, #30
    7d7c:	4099      	lsls	r1, r3
    7d7e:	0092      	lsls	r2, r2, #2
    7d80:	4462      	add	r2, ip
    7d82:	6011      	str	r1, [r2, #0]
    7d84:	2100      	movs	r1, #0
    7d86:	4a0e      	ldr	r2, [pc, #56]	; (7dc0 <rt_tsk_unlock+0x58>)
    7d88:	7011      	strb	r1, [r2, #0]
    7d8a:	7890      	ldrb	r0, [r2, #2]
    7d8c:	7853      	ldrb	r3, [r2, #1]
    7d8e:	4303      	orrs	r3, r0
    7d90:	480c      	ldr	r0, [pc, #48]	; (7dc4 <rt_tsk_unlock+0x5c>)
    7d92:	071b      	lsls	r3, r3, #28
    7d94:	6003      	str	r3, [r0, #0]
    7d96:	7091      	strb	r1, [r2, #2]
    7d98:	4770      	bx	lr
    7d9a:	2207      	movs	r2, #7
    7d9c:	2000      	movs	r0, #0
    7d9e:	4908      	ldr	r1, [pc, #32]	; (7dc0 <rt_tsk_unlock+0x58>)
    7da0:	4b09      	ldr	r3, [pc, #36]	; (7dc8 <rt_tsk_unlock+0x60>)
    7da2:	601a      	str	r2, [r3, #0]
    7da4:	7008      	strb	r0, [r1, #0]
    7da6:	788b      	ldrb	r3, [r1, #2]
    7da8:	784a      	ldrb	r2, [r1, #1]
    7daa:	009b      	lsls	r3, r3, #2
    7dac:	4313      	orrs	r3, r2
    7dae:	4a05      	ldr	r2, [pc, #20]	; (7dc4 <rt_tsk_unlock+0x5c>)
    7db0:	069b      	lsls	r3, r3, #26
    7db2:	6013      	str	r3, [r2, #0]
    7db4:	7088      	strb	r0, [r1, #2]
    7db6:	e7ef      	b.n	7d98 <rt_tsk_unlock+0x30>
    7db8:	200060b0 	.word	0x200060b0
    7dbc:	e000e100 	.word	0xe000e100
    7dc0:	20006038 	.word	0x20006038
    7dc4:	e000ed04 	.word	0xe000ed04
    7dc8:	e000e010 	.word	0xe000e010

00007dcc <rt_psh_req>:
    7dcc:	4b05      	ldr	r3, [pc, #20]	; (7de4 <rt_psh_req+0x18>)
    7dce:	781a      	ldrb	r2, [r3, #0]
    7dd0:	2a00      	cmp	r2, #0
    7dd2:	d002      	beq.n	7dda <rt_psh_req+0xe>
    7dd4:	2201      	movs	r2, #1
    7dd6:	709a      	strb	r2, [r3, #2]
    7dd8:	4770      	bx	lr
    7dda:	2280      	movs	r2, #128	; 0x80
    7ddc:	4b02      	ldr	r3, [pc, #8]	; (7de8 <rt_psh_req+0x1c>)
    7dde:	0552      	lsls	r2, r2, #21
    7de0:	601a      	str	r2, [r3, #0]
    7de2:	e7f9      	b.n	7dd8 <rt_psh_req+0xc>
    7de4:	20006038 	.word	0x20006038
    7de8:	e000ed04 	.word	0xe000ed04

00007dec <rt_pop_req>:
    7dec:	4b1c      	ldr	r3, [pc, #112]	; (7e60 <rt_pop_req+0x74>)
    7dee:	b570      	push	{r4, r5, r6, lr}
    7df0:	6818      	ldr	r0, [r3, #0]
    7df2:	2301      	movs	r3, #1
    7df4:	7043      	strb	r3, [r0, #1]
    7df6:	f7ff fccb 	bl	7790 <rt_put_rdy_first>
    7dfa:	4d1a      	ldr	r5, [pc, #104]	; (7e64 <rt_pop_req+0x78>)
    7dfc:	78ab      	ldrb	r3, [r5, #2]
    7dfe:	786c      	ldrb	r4, [r5, #1]
    7e00:	2b00      	cmp	r3, #0
    7e02:	d112      	bne.n	7e2a <rt_pop_req+0x3e>
    7e04:	e024      	b.n	7e50 <rt_pop_req+0x64>
    7e06:	2a01      	cmp	r2, #1
    7e08:	d01e      	beq.n	7e48 <rt_pop_req+0x5c>
    7e0a:	f7ff fb13 	bl	7434 <rt_sem_psh>
    7e0e:	78eb      	ldrb	r3, [r5, #3]
    7e10:	3401      	adds	r4, #1
    7e12:	429c      	cmp	r4, r3
    7e14:	d016      	beq.n	7e44 <rt_pop_req+0x58>
    7e16:	f3ef 8310 	mrs	r3, PRIMASK
    7e1a:	b672      	cpsid	i
    7e1c:	78ab      	ldrb	r3, [r5, #2]
    7e1e:	3b01      	subs	r3, #1
    7e20:	b2db      	uxtb	r3, r3
    7e22:	70ab      	strb	r3, [r5, #2]
    7e24:	b662      	cpsie	i
    7e26:	2b00      	cmp	r3, #0
    7e28:	d012      	beq.n	7e50 <rt_pop_req+0x64>
    7e2a:	00e3      	lsls	r3, r4, #3
    7e2c:	18eb      	adds	r3, r5, r3
    7e2e:	6858      	ldr	r0, [r3, #4]
    7e30:	7802      	ldrb	r2, [r0, #0]
    7e32:	2a00      	cmp	r2, #0
    7e34:	d1e7      	bne.n	7e06 <rt_pop_req+0x1a>
    7e36:	8919      	ldrh	r1, [r3, #8]
    7e38:	f7ff fe78 	bl	7b2c <rt_evt_psh>
    7e3c:	78eb      	ldrb	r3, [r5, #3]
    7e3e:	3401      	adds	r4, #1
    7e40:	429c      	cmp	r4, r3
    7e42:	d1e8      	bne.n	7e16 <rt_pop_req+0x2a>
    7e44:	2400      	movs	r4, #0
    7e46:	e7e6      	b.n	7e16 <rt_pop_req+0x2a>
    7e48:	6899      	ldr	r1, [r3, #8]
    7e4a:	f7ff fbf9 	bl	7640 <rt_mbx_psh>
    7e4e:	e7de      	b.n	7e0e <rt_pop_req+0x22>
    7e50:	706c      	strb	r4, [r5, #1]
    7e52:	4805      	ldr	r0, [pc, #20]	; (7e68 <rt_pop_req+0x7c>)
    7e54:	f7ff fc88 	bl	7768 <rt_get_first>
    7e58:	f000 f86c 	bl	7f34 <rt_switch_req>
    7e5c:	bd70      	pop	{r4, r5, r6, pc}
    7e5e:	46c0      	nop			; (mov r8, r8)
    7e60:	200060b4 	.word	0x200060b4
    7e64:	20004c58 	.word	0x20004c58
    7e68:	20006080 	.word	0x20006080

00007e6c <os_tick_init>:
    7e6c:	4b09      	ldr	r3, [pc, #36]	; (7e94 <os_tick_init+0x28>)
    7e6e:	21ff      	movs	r1, #255	; 0xff
    7e70:	681a      	ldr	r2, [r3, #0]
    7e72:	4b09      	ldr	r3, [pc, #36]	; (7e98 <os_tick_init+0x2c>)
    7e74:	2001      	movs	r0, #1
    7e76:	601a      	str	r2, [r3, #0]
    7e78:	2200      	movs	r2, #0
    7e7a:	4b08      	ldr	r3, [pc, #32]	; (7e9c <os_tick_init+0x30>)
    7e7c:	0609      	lsls	r1, r1, #24
    7e7e:	601a      	str	r2, [r3, #0]
    7e80:	4b07      	ldr	r3, [pc, #28]	; (7ea0 <os_tick_init+0x34>)
    7e82:	3207      	adds	r2, #7
    7e84:	601a      	str	r2, [r3, #0]
    7e86:	4a07      	ldr	r2, [pc, #28]	; (7ea4 <os_tick_init+0x38>)
    7e88:	4240      	negs	r0, r0
    7e8a:	6813      	ldr	r3, [r2, #0]
    7e8c:	430b      	orrs	r3, r1
    7e8e:	6013      	str	r3, [r2, #0]
    7e90:	4770      	bx	lr
    7e92:	46c0      	nop			; (mov r8, r8)
    7e94:	00008628 	.word	0x00008628
    7e98:	e000e014 	.word	0xe000e014
    7e9c:	e000e018 	.word	0xe000e018
    7ea0:	e000e010 	.word	0xe000e010
    7ea4:	e000ed20 	.word	0xe000ed20

00007ea8 <os_tick_val>:
    7ea8:	4b02      	ldr	r3, [pc, #8]	; (7eb4 <os_tick_val+0xc>)
    7eaa:	6818      	ldr	r0, [r3, #0]
    7eac:	4b02      	ldr	r3, [pc, #8]	; (7eb8 <os_tick_val+0x10>)
    7eae:	681b      	ldr	r3, [r3, #0]
    7eb0:	1a18      	subs	r0, r3, r0
    7eb2:	4770      	bx	lr
    7eb4:	e000e018 	.word	0xe000e018
    7eb8:	00008628 	.word	0x00008628

00007ebc <os_tick_ovf>:
    7ebc:	4b02      	ldr	r3, [pc, #8]	; (7ec8 <os_tick_ovf+0xc>)
    7ebe:	6818      	ldr	r0, [r3, #0]
    7ec0:	0140      	lsls	r0, r0, #5
    7ec2:	0fc0      	lsrs	r0, r0, #31
    7ec4:	4770      	bx	lr
    7ec6:	46c0      	nop			; (mov r8, r8)
    7ec8:	e000ed04 	.word	0xe000ed04

00007ecc <os_tick_irqack>:
    7ecc:	4770      	bx	lr
    7ece:	46c0      	nop			; (mov r8, r8)

00007ed0 <rt_systick>:
    7ed0:	4b0b      	ldr	r3, [pc, #44]	; (7f00 <rt_systick+0x30>)
    7ed2:	b510      	push	{r4, lr}
    7ed4:	6818      	ldr	r0, [r3, #0]
    7ed6:	2301      	movs	r3, #1
    7ed8:	7043      	strb	r3, [r0, #1]
    7eda:	f7ff fc59 	bl	7790 <rt_put_rdy_first>
    7ede:	f000 faeb 	bl	84b8 <rt_chk_robin>
    7ee2:	4a08      	ldr	r2, [pc, #32]	; (7f04 <rt_systick+0x34>)
    7ee4:	6813      	ldr	r3, [r2, #0]
    7ee6:	3301      	adds	r3, #1
    7ee8:	6013      	str	r3, [r2, #0]
    7eea:	f7ff fce7 	bl	78bc <rt_dec_dly>
    7eee:	f7fd ffed 	bl	5ecc <sysTimerTick>
    7ef2:	4805      	ldr	r0, [pc, #20]	; (7f08 <rt_systick+0x38>)
    7ef4:	f7ff fc38 	bl	7768 <rt_get_first>
    7ef8:	f000 f81c 	bl	7f34 <rt_switch_req>
    7efc:	bd10      	pop	{r4, pc}
    7efe:	46c0      	nop			; (mov r8, r8)
    7f00:	200060b4 	.word	0x200060b4
    7f04:	2000607c 	.word	0x2000607c
    7f08:	20006080 	.word	0x20006080

00007f0c <rt_stk_check>:
    7f0c:	4b07      	ldr	r3, [pc, #28]	; (7f2c <rt_stk_check+0x20>)
    7f0e:	b510      	push	{r4, lr}
    7f10:	681b      	ldr	r3, [r3, #0]
    7f12:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    7f14:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    7f16:	429a      	cmp	r2, r3
    7f18:	d803      	bhi.n	7f22 <rt_stk_check+0x16>
    7f1a:	4b05      	ldr	r3, [pc, #20]	; (7f30 <rt_stk_check+0x24>)
    7f1c:	6812      	ldr	r2, [r2, #0]
    7f1e:	429a      	cmp	r2, r3
    7f20:	d002      	beq.n	7f28 <rt_stk_check+0x1c>
    7f22:	2001      	movs	r0, #1
    7f24:	f7f9 fd06 	bl	1934 <os_error>
    7f28:	bd10      	pop	{r4, pc}
    7f2a:	46c0      	nop			; (mov r8, r8)
    7f2c:	200060b4 	.word	0x200060b4
    7f30:	e25a2ea5 	.word	0xe25a2ea5

00007f34 <rt_switch_req>:
    7f34:	4b02      	ldr	r3, [pc, #8]	; (7f40 <rt_switch_req+0xc>)
    7f36:	6058      	str	r0, [r3, #4]
    7f38:	2302      	movs	r3, #2
    7f3a:	7043      	strb	r3, [r0, #1]
    7f3c:	4770      	bx	lr
    7f3e:	46c0      	nop			; (mov r8, r8)
    7f40:	200060b4 	.word	0x200060b4

00007f44 <rt_dispatch>:
    7f44:	b570      	push	{r4, r5, r6, lr}
    7f46:	1e04      	subs	r4, r0, #0
    7f48:	d015      	beq.n	7f76 <rt_dispatch+0x32>
    7f4a:	4d0f      	ldr	r5, [pc, #60]	; (7f88 <rt_dispatch+0x44>)
    7f4c:	78a2      	ldrb	r2, [r4, #2]
    7f4e:	6828      	ldr	r0, [r5, #0]
    7f50:	7883      	ldrb	r3, [r0, #2]
    7f52:	429a      	cmp	r2, r3
    7f54:	d806      	bhi.n	7f64 <rt_dispatch+0x20>
    7f56:	2301      	movs	r3, #1
    7f58:	0021      	movs	r1, r4
    7f5a:	7063      	strb	r3, [r4, #1]
    7f5c:	480b      	ldr	r0, [pc, #44]	; (7f8c <rt_dispatch+0x48>)
    7f5e:	f7ff fbdd 	bl	771c <rt_put_prio>
    7f62:	bd70      	pop	{r4, r5, r6, pc}
    7f64:	f7ff fc14 	bl	7790 <rt_put_rdy_first>
    7f68:	2301      	movs	r3, #1
    7f6a:	682a      	ldr	r2, [r5, #0]
    7f6c:	7053      	strb	r3, [r2, #1]
    7f6e:	3301      	adds	r3, #1
    7f70:	606c      	str	r4, [r5, #4]
    7f72:	7063      	strb	r3, [r4, #1]
    7f74:	e7f5      	b.n	7f62 <rt_dispatch+0x1e>
    7f76:	4805      	ldr	r0, [pc, #20]	; (7f8c <rt_dispatch+0x48>)
    7f78:	f7ff fbf6 	bl	7768 <rt_get_first>
    7f7c:	4b02      	ldr	r3, [pc, #8]	; (7f88 <rt_dispatch+0x44>)
    7f7e:	6058      	str	r0, [r3, #4]
    7f80:	2302      	movs	r3, #2
    7f82:	7043      	strb	r3, [r0, #1]
    7f84:	e7ed      	b.n	7f62 <rt_dispatch+0x1e>
    7f86:	46c0      	nop			; (mov r8, r8)
    7f88:	200060b4 	.word	0x200060b4
    7f8c:	20006080 	.word	0x20006080

00007f90 <rt_block>:
    7f90:	b570      	push	{r4, r5, r6, lr}
    7f92:	000d      	movs	r5, r1
    7f94:	2800      	cmp	r0, #0
    7f96:	d00f      	beq.n	7fb8 <rt_block+0x28>
    7f98:	4b08      	ldr	r3, [pc, #32]	; (7fbc <rt_block+0x2c>)
    7f9a:	4c09      	ldr	r4, [pc, #36]	; (7fc0 <rt_block+0x30>)
    7f9c:	4298      	cmp	r0, r3
    7f9e:	d003      	beq.n	7fa8 <rt_block+0x18>
    7fa0:	0001      	movs	r1, r0
    7fa2:	6820      	ldr	r0, [r4, #0]
    7fa4:	f7ff fc58 	bl	7858 <rt_put_dly>
    7fa8:	6823      	ldr	r3, [r4, #0]
    7faa:	4806      	ldr	r0, [pc, #24]	; (7fc4 <rt_block+0x34>)
    7fac:	705d      	strb	r5, [r3, #1]
    7fae:	f7ff fbdb 	bl	7768 <rt_get_first>
    7fb2:	2302      	movs	r3, #2
    7fb4:	6060      	str	r0, [r4, #4]
    7fb6:	7043      	strb	r3, [r0, #1]
    7fb8:	bd70      	pop	{r4, r5, r6, pc}
    7fba:	46c0      	nop			; (mov r8, r8)
    7fbc:	0000ffff 	.word	0x0000ffff
    7fc0:	200060b4 	.word	0x200060b4
    7fc4:	20006080 	.word	0x20006080

00007fc8 <rt_tsk_pass>:
    7fc8:	b570      	push	{r4, r5, r6, lr}
    7fca:	f7ff fbeb 	bl	77a4 <rt_get_same_rdy_prio>
    7fce:	1e04      	subs	r4, r0, #0
    7fd0:	d00a      	beq.n	7fe8 <rt_tsk_pass+0x20>
    7fd2:	4d06      	ldr	r5, [pc, #24]	; (7fec <rt_tsk_pass+0x24>)
    7fd4:	4806      	ldr	r0, [pc, #24]	; (7ff0 <rt_tsk_pass+0x28>)
    7fd6:	6829      	ldr	r1, [r5, #0]
    7fd8:	f7ff fba0 	bl	771c <rt_put_prio>
    7fdc:	2301      	movs	r3, #1
    7fde:	682a      	ldr	r2, [r5, #0]
    7fe0:	7053      	strb	r3, [r2, #1]
    7fe2:	3301      	adds	r3, #1
    7fe4:	606c      	str	r4, [r5, #4]
    7fe6:	7063      	strb	r3, [r4, #1]
    7fe8:	bd70      	pop	{r4, r5, r6, pc}
    7fea:	46c0      	nop			; (mov r8, r8)
    7fec:	200060b4 	.word	0x200060b4
    7ff0:	20006080 	.word	0x20006080

00007ff4 <rt_tsk_self>:
    7ff4:	4b03      	ldr	r3, [pc, #12]	; (8004 <rt_tsk_self+0x10>)
    7ff6:	681b      	ldr	r3, [r3, #0]
    7ff8:	2b00      	cmp	r3, #0
    7ffa:	d001      	beq.n	8000 <rt_tsk_self+0xc>
    7ffc:	78d8      	ldrb	r0, [r3, #3]
    7ffe:	4770      	bx	lr
    8000:	2000      	movs	r0, #0
    8002:	e7fc      	b.n	7ffe <rt_tsk_self+0xa>
    8004:	200060b4 	.word	0x200060b4

00008008 <rt_tsk_prio>:
    8008:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    800a:	2800      	cmp	r0, #0
    800c:	d10c      	bne.n	8028 <rt_tsk_prio+0x20>
    800e:	2224      	movs	r2, #36	; 0x24
    8010:	4c27      	ldr	r4, [pc, #156]	; (80b0 <rt_tsk_prio+0xa8>)
    8012:	6823      	ldr	r3, [r4, #0]
    8014:	7099      	strb	r1, [r3, #2]
    8016:	5499      	strb	r1, [r3, r2]
    8018:	4d26      	ldr	r5, [pc, #152]	; (80b4 <rt_tsk_prio+0xac>)
    801a:	686a      	ldr	r2, [r5, #4]
    801c:	7892      	ldrb	r2, [r2, #2]
    801e:	428a      	cmp	r2, r1
    8020:	d82c      	bhi.n	807c <rt_tsk_prio+0x74>
    8022:	2200      	movs	r2, #0
    8024:	0010      	movs	r0, r2
    8026:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8028:	4b23      	ldr	r3, [pc, #140]	; (80b8 <rt_tsk_prio+0xb0>)
    802a:	22ff      	movs	r2, #255	; 0xff
    802c:	881b      	ldrh	r3, [r3, #0]
    802e:	4298      	cmp	r0, r3
    8030:	d8f8      	bhi.n	8024 <rt_tsk_prio+0x1c>
    8032:	1e43      	subs	r3, r0, #1
    8034:	4821      	ldr	r0, [pc, #132]	; (80bc <rt_tsk_prio+0xb4>)
    8036:	009b      	lsls	r3, r3, #2
    8038:	581d      	ldr	r5, [r3, r0]
    803a:	2d00      	cmp	r5, #0
    803c:	d0f2      	beq.n	8024 <rt_tsk_prio+0x1c>
    803e:	2324      	movs	r3, #36	; 0x24
    8040:	4c1b      	ldr	r4, [pc, #108]	; (80b0 <rt_tsk_prio+0xa8>)
    8042:	70a9      	strb	r1, [r5, #2]
    8044:	54e9      	strb	r1, [r5, r3]
    8046:	6823      	ldr	r3, [r4, #0]
    8048:	429d      	cmp	r5, r3
    804a:	d0e5      	beq.n	8018 <rt_tsk_prio+0x10>
    804c:	0028      	movs	r0, r5
    804e:	f7ff fbbb 	bl	77c8 <rt_resort_prio>
    8052:	786d      	ldrb	r5, [r5, #1]
    8054:	2d01      	cmp	r5, #1
    8056:	d1e4      	bne.n	8022 <rt_tsk_prio+0x1a>
    8058:	4f16      	ldr	r7, [pc, #88]	; (80b4 <rt_tsk_prio+0xac>)
    805a:	0038      	movs	r0, r7
    805c:	f7ff fb84 	bl	7768 <rt_get_first>
    8060:	1e06      	subs	r6, r0, #0
    8062:	d023      	beq.n	80ac <rt_tsk_prio+0xa4>
    8064:	6820      	ldr	r0, [r4, #0]
    8066:	78b2      	ldrb	r2, [r6, #2]
    8068:	7883      	ldrb	r3, [r0, #2]
    806a:	429a      	cmp	r2, r3
    806c:	d815      	bhi.n	809a <rt_tsk_prio+0x92>
    806e:	7075      	strb	r5, [r6, #1]
    8070:	0031      	movs	r1, r6
    8072:	0038      	movs	r0, r7
    8074:	f7ff fb52 	bl	771c <rt_put_prio>
    8078:	2200      	movs	r2, #0
    807a:	e7d3      	b.n	8024 <rt_tsk_prio+0x1c>
    807c:	0019      	movs	r1, r3
    807e:	0028      	movs	r0, r5
    8080:	f7ff fb4c 	bl	771c <rt_put_prio>
    8084:	2301      	movs	r3, #1
    8086:	0028      	movs	r0, r5
    8088:	6822      	ldr	r2, [r4, #0]
    808a:	7053      	strb	r3, [r2, #1]
    808c:	f7ff fb6c 	bl	7768 <rt_get_first>
    8090:	2302      	movs	r3, #2
    8092:	6060      	str	r0, [r4, #4]
    8094:	2200      	movs	r2, #0
    8096:	7043      	strb	r3, [r0, #1]
    8098:	e7c4      	b.n	8024 <rt_tsk_prio+0x1c>
    809a:	f7ff fb79 	bl	7790 <rt_put_rdy_first>
    809e:	6823      	ldr	r3, [r4, #0]
    80a0:	2200      	movs	r2, #0
    80a2:	705d      	strb	r5, [r3, #1]
    80a4:	2302      	movs	r3, #2
    80a6:	6066      	str	r6, [r4, #4]
    80a8:	7073      	strb	r3, [r6, #1]
    80aa:	e7bb      	b.n	8024 <rt_tsk_prio+0x1c>
    80ac:	0038      	movs	r0, r7
    80ae:	e7ed      	b.n	808c <rt_tsk_prio+0x84>
    80b0:	200060b4 	.word	0x200060b4
    80b4:	20006080 	.word	0x20006080
    80b8:	00008614 	.word	0x00008614
    80bc:	20004cdc 	.word	0x20004cdc

000080c0 <rt_tsk_create>:
    80c0:	b5f0      	push	{r4, r5, r6, r7, lr}
    80c2:	4647      	mov	r7, r8
    80c4:	b480      	push	{r7}
    80c6:	001f      	movs	r7, r3
    80c8:	23ff      	movs	r3, #255	; 0xff
    80ca:	400b      	ands	r3, r1
    80cc:	4690      	mov	r8, r2
    80ce:	001a      	movs	r2, r3
    80d0:	4253      	negs	r3, r2
    80d2:	4153      	adcs	r3, r2
    80d4:	0006      	movs	r6, r0
    80d6:	4831      	ldr	r0, [pc, #196]	; (819c <rt_tsk_create+0xdc>)
    80d8:	18cc      	adds	r4, r1, r3
    80da:	f7fe ff95 	bl	7008 <rt_alloc_box>
    80de:	1e05      	subs	r5, r0, #0
    80e0:	d032      	beq.n	8148 <rt_tsk_create+0x88>
    80e2:	4643      	mov	r3, r8
    80e4:	2101      	movs	r1, #1
    80e6:	62c3      	str	r3, [r0, #44]	; 0x2c
    80e8:	2300      	movs	r3, #0
    80ea:	0a22      	lsrs	r2, r4, #8
    80ec:	7041      	strb	r1, [r0, #1]
    80ee:	b2e4      	uxtb	r4, r4
    80f0:	3123      	adds	r1, #35	; 0x23
    80f2:	b292      	uxth	r2, r2
    80f4:	7003      	strb	r3, [r0, #0]
    80f6:	84c2      	strh	r2, [r0, #38]	; 0x26
    80f8:	61c7      	str	r7, [r0, #28]
    80fa:	7084      	strb	r4, [r0, #2]
    80fc:	5444      	strb	r4, [r0, r1]
    80fe:	2100      	movs	r1, #0
    8100:	6043      	str	r3, [r0, #4]
    8102:	6083      	str	r3, [r0, #8]
    8104:	60c3      	str	r3, [r0, #12]
    8106:	6103      	str	r3, [r0, #16]
    8108:	6203      	str	r3, [r0, #32]
    810a:	8283      	strh	r3, [r0, #20]
    810c:	82c3      	strh	r3, [r0, #22]
    810e:	8303      	strh	r3, [r0, #24]
    8110:	8343      	strh	r3, [r0, #26]
    8112:	3325      	adds	r3, #37	; 0x25
    8114:	54c1      	strb	r1, [r0, r3]
    8116:	2a00      	cmp	r2, #0
    8118:	d01a      	beq.n	8150 <rt_tsk_create+0x90>
    811a:	0031      	movs	r1, r6
    811c:	0028      	movs	r0, r5
    811e:	f7fe fe99 	bl	6e54 <rt_init_stack>
    8122:	4b1f      	ldr	r3, [pc, #124]	; (81a0 <rt_tsk_create+0xe0>)
    8124:	8819      	ldrh	r1, [r3, #0]
    8126:	2900      	cmp	r1, #0
    8128:	d00e      	beq.n	8148 <rt_tsk_create+0x88>
    812a:	481e      	ldr	r0, [pc, #120]	; (81a4 <rt_tsk_create+0xe4>)
    812c:	6803      	ldr	r3, [r0, #0]
    812e:	2b00      	cmp	r3, #0
    8130:	d02f      	beq.n	8192 <rt_tsk_create+0xd2>
    8132:	2201      	movs	r2, #1
    8134:	e005      	b.n	8142 <rt_tsk_create+0x82>
    8136:	00a3      	lsls	r3, r4, #2
    8138:	3b04      	subs	r3, #4
    813a:	58c3      	ldr	r3, [r0, r3]
    813c:	2b00      	cmp	r3, #0
    813e:	d00c      	beq.n	815a <rt_tsk_create+0x9a>
    8140:	0022      	movs	r2, r4
    8142:	1c54      	adds	r4, r2, #1
    8144:	428c      	cmp	r4, r1
    8146:	d9f6      	bls.n	8136 <rt_tsk_create+0x76>
    8148:	2000      	movs	r0, #0
    814a:	bc04      	pop	{r2}
    814c:	4690      	mov	r8, r2
    814e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8150:	4815      	ldr	r0, [pc, #84]	; (81a8 <rt_tsk_create+0xe8>)
    8152:	f7fe ff59 	bl	7008 <rt_alloc_box>
    8156:	62e8      	str	r0, [r5, #44]	; 0x2c
    8158:	e7df      	b.n	811a <rt_tsk_create+0x5a>
    815a:	b2e3      	uxtb	r3, r4
    815c:	0092      	lsls	r2, r2, #2
    815e:	4e13      	ldr	r6, [pc, #76]	; (81ac <rt_tsk_create+0xec>)
    8160:	5085      	str	r5, [r0, r2]
    8162:	70eb      	strb	r3, [r5, #3]
    8164:	6830      	ldr	r0, [r6, #0]
    8166:	78aa      	ldrb	r2, [r5, #2]
    8168:	7883      	ldrb	r3, [r0, #2]
    816a:	429a      	cmp	r2, r3
    816c:	d807      	bhi.n	817e <rt_tsk_create+0xbe>
    816e:	2301      	movs	r3, #1
    8170:	480f      	ldr	r0, [pc, #60]	; (81b0 <rt_tsk_create+0xf0>)
    8172:	706b      	strb	r3, [r5, #1]
    8174:	0029      	movs	r1, r5
    8176:	f7ff fad1 	bl	771c <rt_put_prio>
    817a:	0020      	movs	r0, r4
    817c:	e7e5      	b.n	814a <rt_tsk_create+0x8a>
    817e:	f7ff fb07 	bl	7790 <rt_put_rdy_first>
    8182:	2301      	movs	r3, #1
    8184:	6832      	ldr	r2, [r6, #0]
    8186:	0020      	movs	r0, r4
    8188:	7053      	strb	r3, [r2, #1]
    818a:	3301      	adds	r3, #1
    818c:	6075      	str	r5, [r6, #4]
    818e:	706b      	strb	r3, [r5, #1]
    8190:	e7db      	b.n	814a <rt_tsk_create+0x8a>
    8192:	2301      	movs	r3, #1
    8194:	2200      	movs	r2, #0
    8196:	2401      	movs	r4, #1
    8198:	e7e0      	b.n	815c <rt_tsk_create+0x9c>
    819a:	46c0      	nop			; (mov r8, r8)
    819c:	20000908 	.word	0x20000908
    81a0:	00008614 	.word	0x00008614
    81a4:	20004cdc 	.word	0x20004cdc
    81a8:	200009e8 	.word	0x200009e8
    81ac:	200060b4 	.word	0x200060b4
    81b0:	20006080 	.word	0x20006080

000081b4 <rt_tsk_delete>:
    81b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    81b6:	4644      	mov	r4, r8
    81b8:	465f      	mov	r7, fp
    81ba:	4656      	mov	r6, sl
    81bc:	464d      	mov	r5, r9
    81be:	4b5a      	ldr	r3, [pc, #360]	; (8328 <rt_tsk_delete+0x174>)
    81c0:	b4f0      	push	{r4, r5, r6, r7}
    81c2:	4698      	mov	r8, r3
    81c4:	681c      	ldr	r4, [r3, #0]
    81c6:	2800      	cmp	r0, #0
    81c8:	d00e      	beq.n	81e8 <rt_tsk_delete+0x34>
    81ca:	78e3      	ldrb	r3, [r4, #3]
    81cc:	4298      	cmp	r0, r3
    81ce:	d00b      	beq.n	81e8 <rt_tsk_delete+0x34>
    81d0:	4b56      	ldr	r3, [pc, #344]	; (832c <rt_tsk_delete+0x178>)
    81d2:	881a      	ldrh	r2, [r3, #0]
    81d4:	23ff      	movs	r3, #255	; 0xff
    81d6:	4290      	cmp	r0, r2
    81d8:	d952      	bls.n	8280 <rt_tsk_delete+0xcc>
    81da:	0018      	movs	r0, r3
    81dc:	bc3c      	pop	{r2, r3, r4, r5}
    81de:	4690      	mov	r8, r2
    81e0:	4699      	mov	r9, r3
    81e2:	46a2      	mov	sl, r4
    81e4:	46ab      	mov	fp, r5
    81e6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    81e8:	2300      	movs	r3, #0
    81ea:	7063      	strb	r3, [r4, #1]
    81ec:	f7fc fa57 	bl	469e <rt_get_PSP>
    81f0:	62a0      	str	r0, [r4, #40]	; 0x28
    81f2:	f7ff fe8b 	bl	7f0c <rt_stk_check>
    81f6:	4643      	mov	r3, r8
    81f8:	681a      	ldr	r2, [r3, #0]
    81fa:	4f4d      	ldr	r7, [pc, #308]	; (8330 <rt_tsk_delete+0x17c>)
    81fc:	6a14      	ldr	r4, [r2, #32]
    81fe:	2c00      	cmp	r4, #0
    8200:	d023      	beq.n	824a <rt_tsk_delete+0x96>
    8202:	2601      	movs	r6, #1
    8204:	e016      	b.n	8234 <rt_tsk_delete+0x80>
    8206:	0020      	movs	r0, r4
    8208:	f7ff faae 	bl	7768 <rt_get_first>
    820c:	0005      	movs	r5, r0
    820e:	2100      	movs	r1, #0
    8210:	f7fe fe78 	bl	6f04 <rt_ret_val>
    8214:	0028      	movs	r0, r5
    8216:	f7ff fbdf 	bl	79d8 <rt_rmv_dly>
    821a:	706e      	strb	r6, [r5, #1]
    821c:	0029      	movs	r1, r5
    821e:	0038      	movs	r0, r7
    8220:	f7ff fa7c 	bl	771c <rt_put_prio>
    8224:	68e3      	ldr	r3, [r4, #12]
    8226:	6a2a      	ldr	r2, [r5, #32]
    8228:	8066      	strh	r6, [r4, #2]
    822a:	60a5      	str	r5, [r4, #8]
    822c:	60e2      	str	r2, [r4, #12]
    822e:	622c      	str	r4, [r5, #32]
    8230:	1e1c      	subs	r4, r3, #0
    8232:	d008      	beq.n	8246 <rt_tsk_delete+0x92>
    8234:	6863      	ldr	r3, [r4, #4]
    8236:	2b00      	cmp	r3, #0
    8238:	d1e5      	bne.n	8206 <rt_tsk_delete+0x52>
    823a:	68e2      	ldr	r2, [r4, #12]
    823c:	8063      	strh	r3, [r4, #2]
    823e:	60a3      	str	r3, [r4, #8]
    8240:	60e3      	str	r3, [r4, #12]
    8242:	1e14      	subs	r4, r2, #0
    8244:	d1f6      	bne.n	8234 <rt_tsk_delete+0x80>
    8246:	4643      	mov	r3, r8
    8248:	681a      	ldr	r2, [r3, #0]
    824a:	2400      	movs	r4, #0
    824c:	78d3      	ldrb	r3, [r2, #3]
    824e:	4939      	ldr	r1, [pc, #228]	; (8334 <rt_tsk_delete+0x180>)
    8250:	3b01      	subs	r3, #1
    8252:	009b      	lsls	r3, r3, #2
    8254:	505c      	str	r4, [r3, r1]
    8256:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    8258:	4837      	ldr	r0, [pc, #220]	; (8338 <rt_tsk_delete+0x184>)
    825a:	f7fe fef5 	bl	7048 <rt_free_box>
    825e:	4643      	mov	r3, r8
    8260:	6819      	ldr	r1, [r3, #0]
    8262:	4836      	ldr	r0, [pc, #216]	; (833c <rt_tsk_delete+0x188>)
    8264:	62cc      	str	r4, [r1, #44]	; 0x2c
    8266:	f7fe feef 	bl	7048 <rt_free_box>
    826a:	4643      	mov	r3, r8
    826c:	601c      	str	r4, [r3, #0]
    826e:	0038      	movs	r0, r7
    8270:	f7ff fa7a 	bl	7768 <rt_get_first>
    8274:	4643      	mov	r3, r8
    8276:	6058      	str	r0, [r3, #4]
    8278:	2302      	movs	r3, #2
    827a:	7043      	strb	r3, [r0, #1]
    827c:	2300      	movs	r3, #0
    827e:	e7ac      	b.n	81da <rt_tsk_delete+0x26>
    8280:	4a2c      	ldr	r2, [pc, #176]	; (8334 <rt_tsk_delete+0x180>)
    8282:	1e46      	subs	r6, r0, #1
    8284:	4692      	mov	sl, r2
    8286:	00b2      	lsls	r2, r6, #2
    8288:	4693      	mov	fp, r2
    828a:	4652      	mov	r2, sl
    828c:	4659      	mov	r1, fp
    828e:	5856      	ldr	r6, [r2, r1]
    8290:	2e00      	cmp	r6, #0
    8292:	d0a2      	beq.n	81da <rt_tsk_delete+0x26>
    8294:	0030      	movs	r0, r6
    8296:	f7ff fb89 	bl	79ac <rt_rmv_list>
    829a:	0030      	movs	r0, r6
    829c:	f7ff fb9c 	bl	79d8 <rt_rmv_dly>
    82a0:	2301      	movs	r3, #1
    82a2:	6a34      	ldr	r4, [r6, #32]
    82a4:	4f22      	ldr	r7, [pc, #136]	; (8330 <rt_tsk_delete+0x17c>)
    82a6:	4699      	mov	r9, r3
    82a8:	2c00      	cmp	r4, #0
    82aa:	d11a      	bne.n	82e2 <rt_tsk_delete+0x12e>
    82ac:	e022      	b.n	82f4 <rt_tsk_delete+0x140>
    82ae:	0020      	movs	r0, r4
    82b0:	f7ff fa5a 	bl	7768 <rt_get_first>
    82b4:	0005      	movs	r5, r0
    82b6:	2100      	movs	r1, #0
    82b8:	f7fe fe24 	bl	6f04 <rt_ret_val>
    82bc:	0028      	movs	r0, r5
    82be:	f7ff fb8b 	bl	79d8 <rt_rmv_dly>
    82c2:	464b      	mov	r3, r9
    82c4:	0029      	movs	r1, r5
    82c6:	706b      	strb	r3, [r5, #1]
    82c8:	0038      	movs	r0, r7
    82ca:	f7ff fa27 	bl	771c <rt_put_prio>
    82ce:	464a      	mov	r2, r9
    82d0:	68e3      	ldr	r3, [r4, #12]
    82d2:	8062      	strh	r2, [r4, #2]
    82d4:	6a2a      	ldr	r2, [r5, #32]
    82d6:	60a5      	str	r5, [r4, #8]
    82d8:	60e2      	str	r2, [r4, #12]
    82da:	622c      	str	r4, [r5, #32]
    82dc:	001c      	movs	r4, r3
    82de:	2c00      	cmp	r4, #0
    82e0:	d008      	beq.n	82f4 <rt_tsk_delete+0x140>
    82e2:	6863      	ldr	r3, [r4, #4]
    82e4:	2b00      	cmp	r3, #0
    82e6:	d1e2      	bne.n	82ae <rt_tsk_delete+0xfa>
    82e8:	68e2      	ldr	r2, [r4, #12]
    82ea:	8063      	strh	r3, [r4, #2]
    82ec:	60a3      	str	r3, [r4, #8]
    82ee:	60e3      	str	r3, [r4, #12]
    82f0:	0014      	movs	r4, r2
    82f2:	e7f4      	b.n	82de <rt_tsk_delete+0x12a>
    82f4:	4653      	mov	r3, sl
    82f6:	465a      	mov	r2, fp
    82f8:	2400      	movs	r4, #0
    82fa:	509c      	str	r4, [r3, r2]
    82fc:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    82fe:	480e      	ldr	r0, [pc, #56]	; (8338 <rt_tsk_delete+0x184>)
    8300:	f7fe fea2 	bl	7048 <rt_free_box>
    8304:	0031      	movs	r1, r6
    8306:	62f4      	str	r4, [r6, #44]	; 0x2c
    8308:	480c      	ldr	r0, [pc, #48]	; (833c <rt_tsk_delete+0x188>)
    830a:	f7fe fe9d 	bl	7048 <rt_free_box>
    830e:	4643      	mov	r3, r8
    8310:	6819      	ldr	r1, [r3, #0]
    8312:	687b      	ldr	r3, [r7, #4]
    8314:	789a      	ldrb	r2, [r3, #2]
    8316:	788b      	ldrb	r3, [r1, #2]
    8318:	429a      	cmp	r2, r3
    831a:	d9af      	bls.n	827c <rt_tsk_delete+0xc8>
    831c:	2301      	movs	r3, #1
    831e:	0038      	movs	r0, r7
    8320:	704b      	strb	r3, [r1, #1]
    8322:	f7ff f9fb 	bl	771c <rt_put_prio>
    8326:	e7a2      	b.n	826e <rt_tsk_delete+0xba>
    8328:	200060b4 	.word	0x200060b4
    832c:	00008614 	.word	0x00008614
    8330:	20006080 	.word	0x20006080
    8334:	20004cdc 	.word	0x20004cdc
    8338:	200009e8 	.word	0x200009e8
    833c:	20000908 	.word	0x20000908

00008340 <rt_sys_init>:
    8340:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8342:	4b2b      	ldr	r3, [pc, #172]	; (83f0 <rt_sys_init+0xb0>)
    8344:	881a      	ldrh	r2, [r3, #0]
    8346:	2a00      	cmp	r2, #0
    8348:	d004      	beq.n	8354 <rt_sys_init+0x14>
    834a:	0092      	lsls	r2, r2, #2
    834c:	2100      	movs	r1, #0
    834e:	4829      	ldr	r0, [pc, #164]	; (83f4 <rt_sys_init+0xb4>)
    8350:	f7fc fbd8 	bl	4b04 <memset>
    8354:	4b28      	ldr	r3, [pc, #160]	; (83f8 <rt_sys_init+0xb8>)
    8356:	2234      	movs	r2, #52	; 0x34
    8358:	8819      	ldrh	r1, [r3, #0]
    835a:	4828      	ldr	r0, [pc, #160]	; (83fc <rt_sys_init+0xbc>)
    835c:	f7fe fe28 	bl	6fb0 <_init_box>
    8360:	2280      	movs	r2, #128	; 0x80
    8362:	4b27      	ldr	r3, [pc, #156]	; (8400 <rt_sys_init+0xc0>)
    8364:	0612      	lsls	r2, r2, #24
    8366:	881b      	ldrh	r3, [r3, #0]
    8368:	4f26      	ldr	r7, [pc, #152]	; (8404 <rt_sys_init+0xc4>)
    836a:	431a      	orrs	r2, r3
    836c:	4b26      	ldr	r3, [pc, #152]	; (8408 <rt_sys_init+0xc8>)
    836e:	0038      	movs	r0, r7
    8370:	6819      	ldr	r1, [r3, #0]
    8372:	f7fe fe1d 	bl	6fb0 <_init_box>
    8376:	4b25      	ldr	r3, [pc, #148]	; (840c <rt_sys_init+0xcc>)
    8378:	2208      	movs	r2, #8
    837a:	6818      	ldr	r0, [r3, #0]
    837c:	4b24      	ldr	r3, [pc, #144]	; (8410 <rt_sys_init+0xd0>)
    837e:	2600      	movs	r6, #0
    8380:	8819      	ldrh	r1, [r3, #0]
    8382:	f7fe fe15 	bl	6fb0 <_init_box>
    8386:	23ff      	movs	r3, #255	; 0xff
    8388:	2500      	movs	r5, #0
    838a:	4c22      	ldr	r4, [pc, #136]	; (8414 <rt_sys_init+0xd4>)
    838c:	0038      	movs	r0, r7
    838e:	70e3      	strb	r3, [r4, #3]
    8390:	3bfe      	subs	r3, #254	; 0xfe
    8392:	7063      	strb	r3, [r4, #1]
    8394:	3323      	adds	r3, #35	; 0x23
    8396:	54e6      	strb	r6, [r4, r3]
    8398:	3301      	adds	r3, #1
    839a:	54e6      	strb	r6, [r4, r3]
    839c:	84e5      	strh	r5, [r4, #38]	; 0x26
    839e:	7026      	strb	r6, [r4, #0]
    83a0:	70a6      	strb	r6, [r4, #2]
    83a2:	6065      	str	r5, [r4, #4]
    83a4:	60a5      	str	r5, [r4, #8]
    83a6:	60e5      	str	r5, [r4, #12]
    83a8:	6125      	str	r5, [r4, #16]
    83aa:	6225      	str	r5, [r4, #32]
    83ac:	82a5      	strh	r5, [r4, #20]
    83ae:	82e5      	strh	r5, [r4, #22]
    83b0:	8325      	strh	r5, [r4, #24]
    83b2:	8365      	strh	r5, [r4, #26]
    83b4:	f7fe fe28 	bl	7008 <rt_alloc_box>
    83b8:	4917      	ldr	r1, [pc, #92]	; (8418 <rt_sys_init+0xd8>)
    83ba:	62e0      	str	r0, [r4, #44]	; 0x2c
    83bc:	0020      	movs	r0, r4
    83be:	f7fe fd49 	bl	6e54 <rt_init_stack>
    83c2:	2204      	movs	r2, #4
    83c4:	4b15      	ldr	r3, [pc, #84]	; (841c <rt_sys_init+0xdc>)
    83c6:	701a      	strb	r2, [r3, #0]
    83c8:	605d      	str	r5, [r3, #4]
    83ca:	4b15      	ldr	r3, [pc, #84]	; (8420 <rt_sys_init+0xe0>)
    83cc:	701a      	strb	r2, [r3, #0]
    83ce:	60dd      	str	r5, [r3, #12]
    83d0:	611d      	str	r5, [r3, #16]
    83d2:	829d      	strh	r5, [r3, #20]
    83d4:	4b13      	ldr	r3, [pc, #76]	; (8424 <rt_sys_init+0xe4>)
    83d6:	4a14      	ldr	r2, [pc, #80]	; (8428 <rt_sys_init+0xe8>)
    83d8:	601c      	str	r4, [r3, #0]
    83da:	2302      	movs	r3, #2
    83dc:	7812      	ldrb	r2, [r2, #0]
    83de:	7063      	strb	r3, [r4, #1]
    83e0:	4b12      	ldr	r3, [pc, #72]	; (842c <rt_sys_init+0xec>)
    83e2:	701e      	strb	r6, [r3, #0]
    83e4:	705e      	strb	r6, [r3, #1]
    83e6:	70da      	strb	r2, [r3, #3]
    83e8:	f000 f85a 	bl	84a0 <rt_init_robin>
    83ec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    83ee:	46c0      	nop			; (mov r8, r8)
    83f0:	00008614 	.word	0x00008614
    83f4:	20004cdc 	.word	0x20004cdc
    83f8:	00008640 	.word	0x00008640
    83fc:	20000908 	.word	0x20000908
    8400:	00008618 	.word	0x00008618
    8404:	200009e8 	.word	0x200009e8
    8408:	00008644 	.word	0x00008644
    840c:	20004d18 	.word	0x20004d18
    8410:	00008668 	.word	0x00008668
    8414:	200060bc 	.word	0x200060bc
    8418:	0000192d 	.word	0x0000192d
    841c:	20006080 	.word	0x20006080
    8420:	20006098 	.word	0x20006098
    8424:	200060b4 	.word	0x200060b4
    8428:	0000864c 	.word	0x0000864c
    842c:	20004c58 	.word	0x20004c58

00008430 <rt_sys_start>:
    8430:	21ff      	movs	r1, #255	; 0xff
    8432:	4b16      	ldr	r3, [pc, #88]	; (848c <rt_sys_start+0x5c>)
    8434:	0409      	lsls	r1, r1, #16
    8436:	681a      	ldr	r2, [r3, #0]
    8438:	b510      	push	{r4, lr}
    843a:	430a      	orrs	r2, r1
    843c:	601a      	str	r2, [r3, #0]
    843e:	681b      	ldr	r3, [r3, #0]
    8440:	4913      	ldr	r1, [pc, #76]	; (8490 <rt_sys_start+0x60>)
    8442:	025b      	lsls	r3, r3, #9
    8444:	680a      	ldr	r2, [r1, #0]
    8446:	0e9b      	lsrs	r3, r3, #26
    8448:	069b      	lsls	r3, r3, #26
    844a:	4313      	orrs	r3, r2
    844c:	600b      	str	r3, [r1, #0]
    844e:	f7ff fd0d 	bl	7e6c <os_tick_init>
    8452:	4c10      	ldr	r4, [pc, #64]	; (8494 <rt_sys_start+0x64>)
    8454:	6020      	str	r0, [r4, #0]
    8456:	2800      	cmp	r0, #0
    8458:	db17      	blt.n	848a <rt_sys_start+0x5a>
    845a:	4a0f      	ldr	r2, [pc, #60]	; (8498 <rt_sys_start+0x68>)
    845c:	0883      	lsrs	r3, r0, #2
    845e:	4694      	mov	ip, r2
    8460:	2218      	movs	r2, #24
    8462:	00c0      	lsls	r0, r0, #3
    8464:	4010      	ands	r0, r2
    8466:	32e7      	adds	r2, #231	; 0xe7
    8468:	4082      	lsls	r2, r0
    846a:	009b      	lsls	r3, r3, #2
    846c:	4463      	add	r3, ip
    846e:	6819      	ldr	r1, [r3, #0]
    8470:	430a      	orrs	r2, r1
    8472:	490a      	ldr	r1, [pc, #40]	; (849c <rt_sys_start+0x6c>)
    8474:	601a      	str	r2, [r3, #0]
    8476:	468c      	mov	ip, r1
    8478:	211f      	movs	r1, #31
    847a:	6822      	ldr	r2, [r4, #0]
    847c:	0953      	lsrs	r3, r2, #5
    847e:	400a      	ands	r2, r1
    8480:	391e      	subs	r1, #30
    8482:	4091      	lsls	r1, r2
    8484:	009b      	lsls	r3, r3, #2
    8486:	4463      	add	r3, ip
    8488:	6019      	str	r1, [r3, #0]
    848a:	bd10      	pop	{r4, pc}
    848c:	e000ed20 	.word	0xe000ed20
    8490:	e000ed1c 	.word	0xe000ed1c
    8494:	200060b0 	.word	0x200060b0
    8498:	e000e400 	.word	0xe000e400
    849c:	e000e100 	.word	0xe000e100

000084a0 <rt_init_robin>:
    84a0:	2200      	movs	r2, #0
    84a2:	4b03      	ldr	r3, [pc, #12]	; (84b0 <rt_init_robin+0x10>)
    84a4:	601a      	str	r2, [r3, #0]
    84a6:	4a03      	ldr	r2, [pc, #12]	; (84b4 <rt_init_robin+0x14>)
    84a8:	6812      	ldr	r2, [r2, #0]
    84aa:	80da      	strh	r2, [r3, #6]
    84ac:	4770      	bx	lr
    84ae:	46c0      	nop			; (mov r8, r8)
    84b0:	200060f0 	.word	0x200060f0
    84b4:	0000861c 	.word	0x0000861c

000084b8 <rt_chk_robin>:
    84b8:	b510      	push	{r4, lr}
    84ba:	4a0f      	ldr	r2, [pc, #60]	; (84f8 <rt_chk_robin+0x40>)
    84bc:	4c0f      	ldr	r4, [pc, #60]	; (84fc <rt_chk_robin+0x44>)
    84be:	6811      	ldr	r1, [r2, #0]
    84c0:	6863      	ldr	r3, [r4, #4]
    84c2:	4299      	cmp	r1, r3
    84c4:	d014      	beq.n	84f0 <rt_chk_robin+0x38>
    84c6:	6013      	str	r3, [r2, #0]
    84c8:	4b0d      	ldr	r3, [pc, #52]	; (8500 <rt_chk_robin+0x48>)
    84ca:	8819      	ldrh	r1, [r3, #0]
    84cc:	88d3      	ldrh	r3, [r2, #6]
    84ce:	3b01      	subs	r3, #1
    84d0:	18cb      	adds	r3, r1, r3
    84d2:	b29b      	uxth	r3, r3
    84d4:	8093      	strh	r3, [r2, #4]
    84d6:	4299      	cmp	r1, r3
    84d8:	d000      	beq.n	84dc <rt_chk_robin+0x24>
    84da:	bd10      	pop	{r4, pc}
    84dc:	2300      	movs	r3, #0
    84de:	0020      	movs	r0, r4
    84e0:	6013      	str	r3, [r2, #0]
    84e2:	f7ff f941 	bl	7768 <rt_get_first>
    84e6:	0001      	movs	r1, r0
    84e8:	0020      	movs	r0, r4
    84ea:	f7ff f917 	bl	771c <rt_put_prio>
    84ee:	e7f4      	b.n	84da <rt_chk_robin+0x22>
    84f0:	4b03      	ldr	r3, [pc, #12]	; (8500 <rt_chk_robin+0x48>)
    84f2:	8819      	ldrh	r1, [r3, #0]
    84f4:	8893      	ldrh	r3, [r2, #4]
    84f6:	e7ee      	b.n	84d6 <rt_chk_robin+0x1e>
    84f8:	200060f0 	.word	0x200060f0
    84fc:	20006080 	.word	0x20006080
    8500:	2000607c 	.word	0x2000607c
    8504:	00000000 	.word	0x00000000

00008508 <__eeprom_erase_page_veneer>:
    8508:	b401      	push	{r0}
    850a:	4802      	ldr	r0, [pc, #8]	; (8514 <__eeprom_erase_page_veneer+0xc>)
    850c:	4684      	mov	ip, r0
    850e:	bc01      	pop	{r0}
    8510:	4760      	bx	ip
    8512:	bf00      	nop
    8514:	2010002d 	.word	0x2010002d

00008518 <__eeprom_read_word_veneer>:
    8518:	b401      	push	{r0}
    851a:	4802      	ldr	r0, [pc, #8]	; (8524 <__eeprom_read_word_veneer+0xc>)
    851c:	4684      	mov	ip, r0
    851e:	bc01      	pop	{r0}
    8520:	4760      	bx	ip
    8522:	bf00      	nop
    8524:	20100229 	.word	0x20100229

00008528 <__eeprom_program_word_veneer>:
    8528:	b401      	push	{r0}
    852a:	4802      	ldr	r0, [pc, #8]	; (8534 <__eeprom_program_word_veneer+0xc>)
    852c:	4684      	mov	ip, r0
    852e:	bc01      	pop	{r0}
    8530:	4760      	bx	ip
    8532:	bf00      	nop
    8534:	20100151 	.word	0x20100151

00008538 <threadPacketParserDef>:
    8538:	00002f65 00000001 00000001 00000400     e/..............

00008548 <threadFSMProceedDef>:
    8548:	0000040d 00000000 00000001 00000400     ................

00008558 <threadDUTProceedDef>:
    8558:	000002dd 00000000 00000001 00000400     ................

00008568 <message_def>:
    8568:	00000004 20000868                       ....h.. 

00008570 <os_mutex_def_MutexMdbReg>:
    8570:	2000088c 74697865 00000000 70616548     ... exit....Heap
    8580:	646e6120 61747320 63206b63 696c6c6f      and stack colli
    8590:	6e6f6973 0000000a 0000134e 0000133c     sion....N...<...
    85a0:	0000135a 00001366 00001366 00001366     Z...f...f...f...
    85b0:	00001366 00001366 00001366 00001366     f...f...f...f...
    85c0:	00001366 00001366 00001366 00001354     f...f...f...T...
    85d0:	00001366 00001366 00001366 000012e0     f...f...f.......
    85e0:	00001366 0000135a 00001366 00001366     f...Z...f...f...
    85f0:	00001360 6c383025 00002058 32302520     `...%08lX .. %02
    8600:	00000058 34302520 00000058 38302520     X... %04X... %08
    8610:	0000584c                                LX..

00008614 <os_maxtaskrun>:
    8614:	00000004                                ....

00008618 <os_stackinfo>:
    8618:	01021000                                ....

0000861c <os_rrobin>:
    861c:	00010005                                ....

00008620 <os_tickfreq>:
    8620:	04c4b400                                ....

00008624 <os_tickus_i>:
    8624:	00000050                                         P.

00008626 <os_tickus_f>:
	...

00008628 <os_trv>:
    8628:	0001387f                                .8..

0000862c <os_flags>:
    862c:	00000001                                ....

00008630 <CMSIS_RTOS_API_Version>:
    8630:	00010002                                ....

00008634 <CMSIS_RTOS_RTX_Version>:
    8634:	00040052                                R...

00008638 <os_clockrate>:
    8638:	000003e8                                ....

0000863c <os_timernum>:
    863c:	00000000                                ....

00008640 <mp_tcb_size>:
    8640:	000000dc                                ....

00008644 <mp_stk_size>:
    8644:	00003010                                .0..

00008648 <os_stack_sz>:
    8648:	00001260                                `...

0000864c <os_fifo_size>:
    864c:	00000010                                ....

00008650 <os_thread_def_osTimerThread>:
    8650:	000060bd 00000002 00000001 00000200     .`..............

00008660 <os_messageQ_def_osTimerMessageQ>:
    8660:	00000004 20004cf0                       .....L. 

00008668 <mp_tmr_size>:
    8668:	00000000                                ....

0000866c <os_thread_def_main>:
    866c:	000001a5 00000000 00000001 00000040     ............@...

0000867c <os_mutex_def_readpackMutex>:
    867c:	2000531c                                .S. 

00008680 <os_mutex_def_sendpackMutex>:
    8680:	20005330                                0S. 

00008684 <crc_table>:
    8684:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    8694:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    86a4:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    86b4:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    86c4:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    86d4:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    86e4:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    86f4:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    8704:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    8714:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    8724:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    8734:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    8744:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    8754:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    8764:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    8774:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    8784:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    8794:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    87a4:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    87b4:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    87c4:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    87d4:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    87e4:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    87f4:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    8804:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    8814:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    8824:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    8834:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    8844:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    8854:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    8864:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    8874:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    8884:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    8894:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    88a4:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    88b4:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    88c4:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    88d4:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    88e4:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    88f4:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    8904:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    8914:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    8924:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    8934:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    8944:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    8954:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    8964:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    8974:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    8984:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    8994:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    89a4:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    89b4:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    89c4:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    89d4:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    89e4:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    89f4:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    8a04:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    8a14:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    8a24:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    8a34:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    8a44:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    8a54:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    8a64:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    8a74:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

00008a84 <crc_table_low>:
    8a84:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8a94:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8aa4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8ab4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8ac4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8ad4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8ae4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8af4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8b04:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8b14:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8b24:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8b34:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8b44:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8b54:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8b64:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8b74:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

00008b84 <crc_table_high>:
    8b84:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    8b94:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    8ba4:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    8bb4:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    8bc4:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    8bd4:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    8be4:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    8bf4:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    8c04:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    8c14:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    8c24:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    8c34:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    8c44:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    8c54:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    8c64:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    8c74:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

00008c84 <defBsiParam>:
    8c84:	56789abc 00011234 00020a00 00000a00     ..xV4...........
    8c94:	00000000                                ....

00008c98 <device_additional_info>:
    8c98:	31554153 6e6f6320 6f727472 72656c6c     SAU1 conrtroller
    8ca8:	00000000                                ....

00008cac <proc_PDU_table>:
    8cac:	00003efd 00003efd 00003efd 00003dc1     .>...>...>...=..
    8cbc:	0000386d 00003efd 00003efd 00003efd     m8...>...>...>..
    8ccc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8cdc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8cec:	000039bd 000037d5 00003efd 00003efd     .9...7...>...>..
    8cfc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8d0c:	00003bc1 00003efd 00003efd 00003efd     .;...>...>...>..
    8d1c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8d2c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8d3c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8d4c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8d5c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8d6c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8d7c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8d8c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8d9c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8dac:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8dbc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8dcc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8ddc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8dec:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8dfc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8e0c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8e1c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8e2c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8e3c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8e4c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8e5c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8e6c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8e7c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8e8c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8e9c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8eac:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8ebc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8ecc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8edc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8eec:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8efc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8f0c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8f1c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8f2c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8f3c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8f4c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8f5c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8f6c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8f7c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8f8c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8f9c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8fac:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8fbc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8fcc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8fdc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8fec:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    8ffc:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    900c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    901c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    902c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    903c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    904c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    905c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    906c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    907c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    908c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..
    909c:	00003efd 00003efd 00003efd 00003efd     .>...>...>...>..

000090ac <_global_impure_ptr>:
    90ac:	20000018                                ... 

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
