
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 51 04 00 00 e1 04 00 00 e1 04 00 00     ... Q...........
	...
      2c:	c3 49 00 00 00 00 00 00 00 00 00 00 49 4a 00 00     .I..........IJ..
      3c:	91 4a 00 00 e1 04 00 00 e1 04 00 00 e1 04 00 00     .J..............
      4c:	e1 04 00 00 e1 04 00 00 e1 04 00 00 7d 10 00 00     ............}...
      5c:	0d 0a 00 00 e1 04 00 00 e1 04 00 00 e1 04 00 00     ................
      6c:	e1 04 00 00 e1 04 00 00 e1 04 00 00 41 02 00 00     ............A...
      7c:	65 02 00 00 e1 04 00 00 e1 04 00 00 2d 25 00 00     e...........-%..
      8c:	e1 04 00 00 e1 04 00 00 e1 04 00 00 e1 04 00 00     ................
      9c:	e1 04 00 00 e1 04 00 00 00 00 00 00 00 00 00 00     ................
      ac:	e1 04 00 00 b9 02 00 00 e1 04 00 00 e1 04 00 00     ................
      bc:	e1 04 00 00                                         ....

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
     1a8:	f001 fe1c 	bl	1de4 <SystemInit>
     1ac:	f000 f9d6 	bl	55c <mdb485_init>
     1b0:	f000 fdf0 	bl	d94 <mdb232_init>
     1b4:	f001 fe4a 	bl	1e4c <RemoteMacInit>
     1b8:	f001 fef8 	bl	1fac <EthernetConfig>
     1bc:	f7ff ffbc 	bl	138 <dut_reset_off>
     1c0:	4b15      	ldr	r3, [pc, #84]	; (218 <__UVISION_VERSION+0xf>)
     1c2:	0018      	movs	r0, r3
     1c4:	f006 fa72 	bl	66ac <osMutexCreate>
     1c8:	0002      	movs	r2, r0
     1ca:	4b14      	ldr	r3, [pc, #80]	; (21c <__UVISION_VERSION+0x13>)
     1cc:	601a      	str	r2, [r3, #0]
     1ce:	f005 fc6d 	bl	5aac <osKernelInitialize>
     1d2:	4b13      	ldr	r3, [pc, #76]	; (220 <__GCC_VERSION+0x3>)
     1d4:	2100      	movs	r1, #0
     1d6:	0018      	movs	r0, r3
     1d8:	f006 fd4a 	bl	6c70 <osMessageCreate>
     1dc:	0002      	movs	r2, r0
     1de:	4b11      	ldr	r3, [pc, #68]	; (224 <__GCC_VERSION+0x7>)
     1e0:	601a      	str	r2, [r3, #0]
     1e2:	4b11      	ldr	r3, [pc, #68]	; (228 <__GCC_VERSION+0xb>)
     1e4:	2100      	movs	r1, #0
     1e6:	0018      	movs	r0, r3
     1e8:	f005 fdf2 	bl	5dd0 <osThreadCreate>
     1ec:	0002      	movs	r2, r0
     1ee:	4b0f      	ldr	r3, [pc, #60]	; (22c <__GCC_VERSION+0xf>)
     1f0:	601a      	str	r2, [r3, #0]
     1f2:	4b0f      	ldr	r3, [pc, #60]	; (230 <__GCC_VERSION+0x13>)
     1f4:	2100      	movs	r1, #0
     1f6:	0018      	movs	r0, r3
     1f8:	f005 fdea 	bl	5dd0 <osThreadCreate>
     1fc:	0002      	movs	r2, r0
     1fe:	4b0d      	ldr	r3, [pc, #52]	; (234 <__GCC_VERSION+0x17>)
     200:	601a      	str	r2, [r3, #0]
     202:	4b0d      	ldr	r3, [pc, #52]	; (238 <__GCC_VERSION+0x1b>)
     204:	2100      	movs	r1, #0
     206:	0018      	movs	r0, r3
     208:	f005 fde2 	bl	5dd0 <osThreadCreate>
     20c:	0002      	movs	r2, r0
     20e:	4b0b      	ldr	r3, [pc, #44]	; (23c <__GCC_VERSION+0x1f>)
     210:	601a      	str	r2, [r3, #0]
     212:	f005 fce7 	bl	5be4 <osKernelStart>
     216:	e7fe      	b.n	216 <__UVISION_VERSION+0xd>
     218:	00008838 	.word	0x00008838
     21c:	20000888 	.word	0x20000888
     220:	00008830 	.word	0x00008830
     224:	20000864 	.word	0x20000864
     228:	00008800 	.word	0x00008800
     22c:	20000858 	.word	0x20000858
     230:	00008810 	.word	0x00008810
     234:	2000085c 	.word	0x2000085c
     238:	00008820 	.word	0x00008820
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
     252:	f006 f96f 	bl	6534 <osSignalSet>
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
     334:	f006 f92c 	bl	6590 <osSignalWait>
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
     34e:	d036      	beq.n	3be <threadDUTProceed+0xe2>
     350:	2b01      	cmp	r3, #1
     352:	d158      	bne.n	406 <_stack_size+0x6>
     354:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     356:	2b01      	cmp	r3, #1
     358:	d919      	bls.n	38e <threadDUTProceed+0xb2>
     35a:	4b2b      	ldr	r3, [pc, #172]	; (408 <_stack_size+0x8>)
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
     386:	f003 f8b1 	bl	34ec <mdb_fifo_write>
     38a:	2300      	movs	r3, #0
     38c:	647b      	str	r3, [r7, #68]	; 0x44
     38e:	2301      	movs	r3, #1
     390:	647b      	str	r3, [r7, #68]	; 0x44
     392:	2204      	movs	r2, #4
     394:	2100      	movs	r1, #0
     396:	2001      	movs	r0, #1
     398:	f000 fd56 	bl	e48 <mdb232_read_inputregs>
     39c:	2202      	movs	r2, #2
     39e:	2100      	movs	r1, #0
     3a0:	2010      	movs	r0, #16
     3a2:	f000 fa63 	bl	86c <mdb485_read_inputregs>
     3a6:	e02e      	b.n	406 <_stack_size+0x6>
     3a8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3aa:	2202      	movs	r2, #2
     3ac:	4313      	orrs	r3, r2
     3ae:	647b      	str	r3, [r7, #68]	; 0x44
     3b0:	f000 fe0e 	bl	fd0 <mdb232_bikm_get_torque>
     3b4:	0002      	movs	r2, r0
     3b6:	2318      	movs	r3, #24
     3b8:	18fb      	adds	r3, r7, r3
     3ba:	605a      	str	r2, [r3, #4]
     3bc:	e023      	b.n	406 <_stack_size+0x6>
     3be:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3c0:	2204      	movs	r2, #4
     3c2:	4313      	orrs	r3, r2
     3c4:	647b      	str	r3, [r7, #68]	; 0x44
     3c6:	f000 fac7 	bl	958 <mdb485_get_crc>
     3ca:	1e03      	subs	r3, r0, #0
     3cc:	d11a      	bne.n	404 <_stack_size+0x4>
     3ce:	f000 faaf 	bl	930 <mdb485_get_func>
     3d2:	0003      	movs	r3, r0
     3d4:	643b      	str	r3, [r7, #64]	; 0x40
     3d6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     3d8:	2b04      	cmp	r3, #4
     3da:	d113      	bne.n	404 <_stack_size+0x4>
     3dc:	f000 fada 	bl	994 <mdb485_si30_get_counter>
     3e0:	0003      	movs	r3, r0
     3e2:	63fb      	str	r3, [r7, #60]	; 0x3c
     3e4:	2318      	movs	r3, #24
     3e6:	18fb      	adds	r3, r7, r3
     3e8:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     3ea:	601a      	str	r2, [r3, #0]
     3ec:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     3ee:	021b      	lsls	r3, r3, #8
     3f0:	2204      	movs	r2, #4
     3f2:	4313      	orrs	r3, r2
     3f4:	63bb      	str	r3, [r7, #56]	; 0x38
     3f6:	4b05      	ldr	r3, [pc, #20]	; (40c <_stack_size+0xc>)
     3f8:	681b      	ldr	r3, [r3, #0]
     3fa:	6bb9      	ldr	r1, [r7, #56]	; 0x38
     3fc:	2200      	movs	r2, #0
     3fe:	0018      	movs	r0, r3
     400:	f006 fc62 	bl	6cc8 <osMessagePut>
     404:	46c0      	nop			; (mov r8, r8)
     406:	e78f      	b.n	328 <threadDUTProceed+0x4c>
     408:	200008a0 	.word	0x200008a0
     40c:	20000864 	.word	0x20000864

00000410 <threadFSMProceed>:
     410:	b580      	push	{r7, lr}
     412:	b086      	sub	sp, #24
     414:	af00      	add	r7, sp, #0
     416:	6078      	str	r0, [r7, #4]
     418:	4b0b      	ldr	r3, [pc, #44]	; (448 <threadFSMProceed+0x38>)
     41a:	6819      	ldr	r1, [r3, #0]
     41c:	2308      	movs	r3, #8
     41e:	18f8      	adds	r0, r7, r3
     420:	2301      	movs	r3, #1
     422:	425b      	negs	r3, r3
     424:	001a      	movs	r2, r3
     426:	f006 fc73 	bl	6d10 <osMessageGet>
     42a:	2308      	movs	r3, #8
     42c:	18fb      	adds	r3, r7, r3
     42e:	681b      	ldr	r3, [r3, #0]
     430:	2b10      	cmp	r3, #16
     432:	d1f1      	bne.n	418 <threadFSMProceed+0x8>
     434:	2308      	movs	r3, #8
     436:	18fb      	adds	r3, r7, r3
     438:	685b      	ldr	r3, [r3, #4]
     43a:	617b      	str	r3, [r7, #20]
     43c:	4b03      	ldr	r3, [pc, #12]	; (44c <threadFSMProceed+0x3c>)
     43e:	681b      	ldr	r3, [r3, #0]
     440:	697a      	ldr	r2, [r7, #20]
     442:	0010      	movs	r0, r2
     444:	4798      	blx	r3
     446:	e7e7      	b.n	418 <threadFSMProceed+0x8>
     448:	20000864 	.word	0x20000864
     44c:	20000010 	.word	0x20000010

00000450 <handler_reset>:
     450:	b580      	push	{r7, lr}
     452:	b082      	sub	sp, #8
     454:	af00      	add	r7, sp, #0
     456:	4b1a      	ldr	r3, [pc, #104]	; (4c0 <handler_reset+0x70>)
     458:	607b      	str	r3, [r7, #4]
     45a:	4b1a      	ldr	r3, [pc, #104]	; (4c4 <handler_reset+0x74>)
     45c:	603b      	str	r3, [r7, #0]
     45e:	e007      	b.n	470 <handler_reset+0x20>
     460:	683b      	ldr	r3, [r7, #0]
     462:	1d1a      	adds	r2, r3, #4
     464:	603a      	str	r2, [r7, #0]
     466:	687a      	ldr	r2, [r7, #4]
     468:	1d11      	adds	r1, r2, #4
     46a:	6079      	str	r1, [r7, #4]
     46c:	6812      	ldr	r2, [r2, #0]
     46e:	601a      	str	r2, [r3, #0]
     470:	683a      	ldr	r2, [r7, #0]
     472:	4b15      	ldr	r3, [pc, #84]	; (4c8 <handler_reset+0x78>)
     474:	429a      	cmp	r2, r3
     476:	d3f3      	bcc.n	460 <handler_reset+0x10>
     478:	4b14      	ldr	r3, [pc, #80]	; (4cc <handler_reset+0x7c>)
     47a:	607b      	str	r3, [r7, #4]
     47c:	4b14      	ldr	r3, [pc, #80]	; (4d0 <handler_reset+0x80>)
     47e:	603b      	str	r3, [r7, #0]
     480:	e007      	b.n	492 <handler_reset+0x42>
     482:	683b      	ldr	r3, [r7, #0]
     484:	1d1a      	adds	r2, r3, #4
     486:	603a      	str	r2, [r7, #0]
     488:	687a      	ldr	r2, [r7, #4]
     48a:	1d11      	adds	r1, r2, #4
     48c:	6079      	str	r1, [r7, #4]
     48e:	6812      	ldr	r2, [r2, #0]
     490:	601a      	str	r2, [r3, #0]
     492:	683a      	ldr	r2, [r7, #0]
     494:	4b0f      	ldr	r3, [pc, #60]	; (4d4 <handler_reset+0x84>)
     496:	429a      	cmp	r2, r3
     498:	d3f3      	bcc.n	482 <handler_reset+0x32>
     49a:	4b0f      	ldr	r3, [pc, #60]	; (4d8 <handler_reset+0x88>)
     49c:	603b      	str	r3, [r7, #0]
     49e:	e004      	b.n	4aa <handler_reset+0x5a>
     4a0:	683b      	ldr	r3, [r7, #0]
     4a2:	1d1a      	adds	r2, r3, #4
     4a4:	603a      	str	r2, [r7, #0]
     4a6:	2200      	movs	r2, #0
     4a8:	601a      	str	r2, [r3, #0]
     4aa:	683a      	ldr	r2, [r7, #0]
     4ac:	4b0b      	ldr	r3, [pc, #44]	; (4dc <handler_reset+0x8c>)
     4ae:	429a      	cmp	r2, r3
     4b0:	d3f6      	bcc.n	4a0 <handler_reset+0x50>
     4b2:	f7ff fe77 	bl	1a4 <main>
     4b6:	46c0      	nop			; (mov r8, r8)
     4b8:	46bd      	mov	sp, r7
     4ba:	b002      	add	sp, #8
     4bc:	bd80      	pop	{r7, pc}
     4be:	46c0      	nop			; (mov r8, r8)
     4c0:	00009380 	.word	0x00009380
     4c4:	20000000 	.word	0x20000000
     4c8:	20000858 	.word	0x20000858
     4cc:	00009bd8 	.word	0x00009bd8
     4d0:	20100000 	.word	0x20100000
     4d4:	201002a0 	.word	0x201002a0
     4d8:	20000858 	.word	0x20000858
     4dc:	200060fc 	.word	0x200060fc

000004e0 <default_handler>:
     4e0:	b580      	push	{r7, lr}
     4e2:	af00      	add	r7, sp, #0
     4e4:	e7fe      	b.n	4e4 <default_handler+0x4>
     4e6:	46c0      	nop			; (mov r8, r8)

000004e8 <__NVIC_EnableIRQ>:
     4e8:	b580      	push	{r7, lr}
     4ea:	b082      	sub	sp, #8
     4ec:	af00      	add	r7, sp, #0
     4ee:	0002      	movs	r2, r0
     4f0:	1dfb      	adds	r3, r7, #7
     4f2:	701a      	strb	r2, [r3, #0]
     4f4:	1dfb      	adds	r3, r7, #7
     4f6:	781b      	ldrb	r3, [r3, #0]
     4f8:	2b7f      	cmp	r3, #127	; 0x7f
     4fa:	d809      	bhi.n	510 <__NVIC_EnableIRQ+0x28>
     4fc:	4b06      	ldr	r3, [pc, #24]	; (518 <__NVIC_EnableIRQ+0x30>)
     4fe:	1dfa      	adds	r2, r7, #7
     500:	7812      	ldrb	r2, [r2, #0]
     502:	0011      	movs	r1, r2
     504:	221f      	movs	r2, #31
     506:	400a      	ands	r2, r1
     508:	2101      	movs	r1, #1
     50a:	4091      	lsls	r1, r2
     50c:	000a      	movs	r2, r1
     50e:	601a      	str	r2, [r3, #0]
     510:	46c0      	nop			; (mov r8, r8)
     512:	46bd      	mov	sp, r7
     514:	b002      	add	sp, #8
     516:	bd80      	pop	{r7, pc}
     518:	e000e100 	.word	0xe000e100

0000051c <__NVIC_DisableIRQ>:
     51c:	b580      	push	{r7, lr}
     51e:	b082      	sub	sp, #8
     520:	af00      	add	r7, sp, #0
     522:	0002      	movs	r2, r0
     524:	1dfb      	adds	r3, r7, #7
     526:	701a      	strb	r2, [r3, #0]
     528:	1dfb      	adds	r3, r7, #7
     52a:	781b      	ldrb	r3, [r3, #0]
     52c:	2b7f      	cmp	r3, #127	; 0x7f
     52e:	d80e      	bhi.n	54e <__NVIC_DisableIRQ+0x32>
     530:	4909      	ldr	r1, [pc, #36]	; (558 <__NVIC_DisableIRQ+0x3c>)
     532:	1dfb      	adds	r3, r7, #7
     534:	781b      	ldrb	r3, [r3, #0]
     536:	001a      	movs	r2, r3
     538:	231f      	movs	r3, #31
     53a:	4013      	ands	r3, r2
     53c:	2201      	movs	r2, #1
     53e:	409a      	lsls	r2, r3
     540:	0013      	movs	r3, r2
     542:	2280      	movs	r2, #128	; 0x80
     544:	508b      	str	r3, [r1, r2]
     546:	f3bf 8f4f 	dsb	sy
     54a:	f3bf 8f6f 	isb	sy
     54e:	46c0      	nop			; (mov r8, r8)
     550:	46bd      	mov	sp, r7
     552:	b002      	add	sp, #8
     554:	bd80      	pop	{r7, pc}
     556:	46c0      	nop			; (mov r8, r8)
     558:	e000e100 	.word	0xe000e100

0000055c <mdb485_init>:
     55c:	b580      	push	{r7, lr}
     55e:	af00      	add	r7, sp, #0
     560:	4b14      	ldr	r3, [pc, #80]	; (5b4 <mdb485_init+0x58>)
     562:	2234      	movs	r2, #52	; 0x34
     564:	625a      	str	r2, [r3, #36]	; 0x24
     566:	4b13      	ldr	r3, [pc, #76]	; (5b4 <mdb485_init+0x58>)
     568:	2205      	movs	r2, #5
     56a:	629a      	str	r2, [r3, #40]	; 0x28
     56c:	4b11      	ldr	r3, [pc, #68]	; (5b4 <mdb485_init+0x58>)
     56e:	4a11      	ldr	r2, [pc, #68]	; (5b4 <mdb485_init+0x58>)
     570:	6b52      	ldr	r2, [r2, #52]	; 0x34
     572:	213f      	movs	r1, #63	; 0x3f
     574:	438a      	bics	r2, r1
     576:	635a      	str	r2, [r3, #52]	; 0x34
     578:	4b0e      	ldr	r3, [pc, #56]	; (5b4 <mdb485_init+0x58>)
     57a:	4a0e      	ldr	r2, [pc, #56]	; (5b4 <mdb485_init+0x58>)
     57c:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     57e:	2110      	movs	r1, #16
     580:	430a      	orrs	r2, r1
     582:	62da      	str	r2, [r3, #44]	; 0x2c
     584:	4b0b      	ldr	r3, [pc, #44]	; (5b4 <mdb485_init+0x58>)
     586:	4a0b      	ldr	r2, [pc, #44]	; (5b4 <mdb485_init+0x58>)
     588:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     58a:	2160      	movs	r1, #96	; 0x60
     58c:	430a      	orrs	r2, r1
     58e:	62da      	str	r2, [r3, #44]	; 0x2c
     590:	4b08      	ldr	r3, [pc, #32]	; (5b4 <mdb485_init+0x58>)
     592:	4a08      	ldr	r2, [pc, #32]	; (5b4 <mdb485_init+0x58>)
     594:	6b12      	ldr	r2, [r2, #48]	; 0x30
     596:	4908      	ldr	r1, [pc, #32]	; (5b8 <mdb485_init+0x5c>)
     598:	430a      	orrs	r2, r1
     59a:	631a      	str	r2, [r3, #48]	; 0x30
     59c:	4b05      	ldr	r3, [pc, #20]	; (5b4 <mdb485_init+0x58>)
     59e:	4a05      	ldr	r2, [pc, #20]	; (5b4 <mdb485_init+0x58>)
     5a0:	6b92      	ldr	r2, [r2, #56]	; 0x38
     5a2:	2140      	movs	r1, #64	; 0x40
     5a4:	430a      	orrs	r2, r1
     5a6:	639a      	str	r2, [r3, #56]	; 0x38
     5a8:	2007      	movs	r0, #7
     5aa:	f7ff ff9d 	bl	4e8 <__NVIC_EnableIRQ>
     5ae:	46c0      	nop			; (mov r8, r8)
     5b0:	46bd      	mov	sp, r7
     5b2:	bd80      	pop	{r7, pc}
     5b4:	40038000 	.word	0x40038000
     5b8:	00000301 	.word	0x00000301

000005bc <mdb485_send>:
     5bc:	b580      	push	{r7, lr}
     5be:	b084      	sub	sp, #16
     5c0:	af00      	add	r7, sp, #0
     5c2:	6078      	str	r0, [r7, #4]
     5c4:	6039      	str	r1, [r7, #0]
     5c6:	4b17      	ldr	r3, [pc, #92]	; (624 <mdb485_send+0x68>)
     5c8:	4a16      	ldr	r2, [pc, #88]	; (624 <mdb485_send+0x68>)
     5ca:	6812      	ldr	r2, [r2, #0]
     5cc:	2180      	movs	r1, #128	; 0x80
     5ce:	0209      	lsls	r1, r1, #8
     5d0:	430a      	orrs	r2, r1
     5d2:	601a      	str	r2, [r3, #0]
     5d4:	2300      	movs	r3, #0
     5d6:	60fb      	str	r3, [r7, #12]
     5d8:	e00e      	b.n	5f8 <mdb485_send+0x3c>
     5da:	46c0      	nop			; (mov r8, r8)
     5dc:	4b12      	ldr	r3, [pc, #72]	; (628 <mdb485_send+0x6c>)
     5de:	699b      	ldr	r3, [r3, #24]
     5e0:	2220      	movs	r2, #32
     5e2:	4013      	ands	r3, r2
     5e4:	d1fa      	bne.n	5dc <mdb485_send+0x20>
     5e6:	4a10      	ldr	r2, [pc, #64]	; (628 <mdb485_send+0x6c>)
     5e8:	687b      	ldr	r3, [r7, #4]
     5ea:	1c59      	adds	r1, r3, #1
     5ec:	6079      	str	r1, [r7, #4]
     5ee:	781b      	ldrb	r3, [r3, #0]
     5f0:	6013      	str	r3, [r2, #0]
     5f2:	68fb      	ldr	r3, [r7, #12]
     5f4:	3301      	adds	r3, #1
     5f6:	60fb      	str	r3, [r7, #12]
     5f8:	68fa      	ldr	r2, [r7, #12]
     5fa:	683b      	ldr	r3, [r7, #0]
     5fc:	429a      	cmp	r2, r3
     5fe:	dbec      	blt.n	5da <mdb485_send+0x1e>
     600:	46c0      	nop			; (mov r8, r8)
     602:	4b09      	ldr	r3, [pc, #36]	; (628 <mdb485_send+0x6c>)
     604:	699b      	ldr	r3, [r3, #24]
     606:	2208      	movs	r2, #8
     608:	4013      	ands	r3, r2
     60a:	d1fa      	bne.n	602 <mdb485_send+0x46>
     60c:	4b05      	ldr	r3, [pc, #20]	; (624 <mdb485_send+0x68>)
     60e:	4a05      	ldr	r2, [pc, #20]	; (624 <mdb485_send+0x68>)
     610:	6812      	ldr	r2, [r2, #0]
     612:	4906      	ldr	r1, [pc, #24]	; (62c <mdb485_send+0x70>)
     614:	400a      	ands	r2, r1
     616:	601a      	str	r2, [r3, #0]
     618:	683b      	ldr	r3, [r7, #0]
     61a:	0018      	movs	r0, r3
     61c:	46bd      	mov	sp, r7
     61e:	b004      	add	sp, #16
     620:	bd80      	pop	{r7, pc}
     622:	46c0      	nop			; (mov r8, r8)
     624:	400c0000 	.word	0x400c0000
     628:	40038000 	.word	0x40038000
     62c:	ffff7fff 	.word	0xffff7fff

00000630 <mdb485_putch>:
     630:	b580      	push	{r7, lr}
     632:	b082      	sub	sp, #8
     634:	af00      	add	r7, sp, #0
     636:	0002      	movs	r2, r0
     638:	1dfb      	adds	r3, r7, #7
     63a:	701a      	strb	r2, [r3, #0]
     63c:	46c0      	nop			; (mov r8, r8)
     63e:	4b06      	ldr	r3, [pc, #24]	; (658 <mdb485_putch+0x28>)
     640:	699b      	ldr	r3, [r3, #24]
     642:	2220      	movs	r2, #32
     644:	4013      	ands	r3, r2
     646:	d1fa      	bne.n	63e <mdb485_putch+0xe>
     648:	4b03      	ldr	r3, [pc, #12]	; (658 <mdb485_putch+0x28>)
     64a:	1dfa      	adds	r2, r7, #7
     64c:	7812      	ldrb	r2, [r2, #0]
     64e:	601a      	str	r2, [r3, #0]
     650:	46c0      	nop			; (mov r8, r8)
     652:	46bd      	mov	sp, r7
     654:	b002      	add	sp, #8
     656:	bd80      	pop	{r7, pc}
     658:	40038000 	.word	0x40038000

0000065c <mdb485_writeregs>:
     65c:	b590      	push	{r4, r7, lr}
     65e:	b089      	sub	sp, #36	; 0x24
     660:	af00      	add	r7, sp, #0
     662:	0004      	movs	r4, r0
     664:	0008      	movs	r0, r1
     666:	0011      	movs	r1, r2
     668:	607b      	str	r3, [r7, #4]
     66a:	230f      	movs	r3, #15
     66c:	18fb      	adds	r3, r7, r3
     66e:	1c22      	adds	r2, r4, #0
     670:	701a      	strb	r2, [r3, #0]
     672:	230c      	movs	r3, #12
     674:	18fb      	adds	r3, r7, r3
     676:	1c02      	adds	r2, r0, #0
     678:	801a      	strh	r2, [r3, #0]
     67a:	230a      	movs	r3, #10
     67c:	18fb      	adds	r3, r7, r3
     67e:	1c0a      	adds	r2, r1, #0
     680:	801a      	strh	r2, [r3, #0]
     682:	4b48      	ldr	r3, [pc, #288]	; (7a4 <mdb485_writeregs+0x148>)
     684:	61bb      	str	r3, [r7, #24]
     686:	230a      	movs	r3, #10
     688:	18fb      	adds	r3, r7, r3
     68a:	881b      	ldrh	r3, [r3, #0]
     68c:	005b      	lsls	r3, r3, #1
     68e:	617b      	str	r3, [r7, #20]
     690:	69bb      	ldr	r3, [r7, #24]
     692:	1c5a      	adds	r2, r3, #1
     694:	61ba      	str	r2, [r7, #24]
     696:	220f      	movs	r2, #15
     698:	18ba      	adds	r2, r7, r2
     69a:	7812      	ldrb	r2, [r2, #0]
     69c:	701a      	strb	r2, [r3, #0]
     69e:	69bb      	ldr	r3, [r7, #24]
     6a0:	1c5a      	adds	r2, r3, #1
     6a2:	61ba      	str	r2, [r7, #24]
     6a4:	2210      	movs	r2, #16
     6a6:	701a      	strb	r2, [r3, #0]
     6a8:	69bb      	ldr	r3, [r7, #24]
     6aa:	1c5a      	adds	r2, r3, #1
     6ac:	61ba      	str	r2, [r7, #24]
     6ae:	220c      	movs	r2, #12
     6b0:	18ba      	adds	r2, r7, r2
     6b2:	8812      	ldrh	r2, [r2, #0]
     6b4:	0a12      	lsrs	r2, r2, #8
     6b6:	b292      	uxth	r2, r2
     6b8:	b2d2      	uxtb	r2, r2
     6ba:	701a      	strb	r2, [r3, #0]
     6bc:	69bb      	ldr	r3, [r7, #24]
     6be:	1c5a      	adds	r2, r3, #1
     6c0:	61ba      	str	r2, [r7, #24]
     6c2:	220c      	movs	r2, #12
     6c4:	18ba      	adds	r2, r7, r2
     6c6:	8812      	ldrh	r2, [r2, #0]
     6c8:	b2d2      	uxtb	r2, r2
     6ca:	701a      	strb	r2, [r3, #0]
     6cc:	69bb      	ldr	r3, [r7, #24]
     6ce:	1c5a      	adds	r2, r3, #1
     6d0:	61ba      	str	r2, [r7, #24]
     6d2:	220a      	movs	r2, #10
     6d4:	18ba      	adds	r2, r7, r2
     6d6:	8812      	ldrh	r2, [r2, #0]
     6d8:	0a12      	lsrs	r2, r2, #8
     6da:	b292      	uxth	r2, r2
     6dc:	b2d2      	uxtb	r2, r2
     6de:	701a      	strb	r2, [r3, #0]
     6e0:	69bb      	ldr	r3, [r7, #24]
     6e2:	1c5a      	adds	r2, r3, #1
     6e4:	61ba      	str	r2, [r7, #24]
     6e6:	220a      	movs	r2, #10
     6e8:	18ba      	adds	r2, r7, r2
     6ea:	8812      	ldrh	r2, [r2, #0]
     6ec:	b2d2      	uxtb	r2, r2
     6ee:	701a      	strb	r2, [r3, #0]
     6f0:	69bb      	ldr	r3, [r7, #24]
     6f2:	1c5a      	adds	r2, r3, #1
     6f4:	61ba      	str	r2, [r7, #24]
     6f6:	697a      	ldr	r2, [r7, #20]
     6f8:	b2d2      	uxtb	r2, r2
     6fa:	701a      	strb	r2, [r3, #0]
     6fc:	697b      	ldr	r3, [r7, #20]
     6fe:	3307      	adds	r3, #7
     700:	2b10      	cmp	r3, #16
     702:	dc4a      	bgt.n	79a <mdb485_writeregs+0x13e>
     704:	2300      	movs	r3, #0
     706:	61fb      	str	r3, [r7, #28]
     708:	e01b      	b.n	742 <mdb485_writeregs+0xe6>
     70a:	687b      	ldr	r3, [r7, #4]
     70c:	1c9a      	adds	r2, r3, #2
     70e:	607a      	str	r2, [r7, #4]
     710:	2212      	movs	r2, #18
     712:	18ba      	adds	r2, r7, r2
     714:	881b      	ldrh	r3, [r3, #0]
     716:	8013      	strh	r3, [r2, #0]
     718:	69bb      	ldr	r3, [r7, #24]
     71a:	1c5a      	adds	r2, r3, #1
     71c:	61ba      	str	r2, [r7, #24]
     71e:	2212      	movs	r2, #18
     720:	18ba      	adds	r2, r7, r2
     722:	8812      	ldrh	r2, [r2, #0]
     724:	0a12      	lsrs	r2, r2, #8
     726:	b292      	uxth	r2, r2
     728:	b2d2      	uxtb	r2, r2
     72a:	701a      	strb	r2, [r3, #0]
     72c:	69bb      	ldr	r3, [r7, #24]
     72e:	1c5a      	adds	r2, r3, #1
     730:	61ba      	str	r2, [r7, #24]
     732:	2212      	movs	r2, #18
     734:	18ba      	adds	r2, r7, r2
     736:	8812      	ldrh	r2, [r2, #0]
     738:	b2d2      	uxtb	r2, r2
     73a:	701a      	strb	r2, [r3, #0]
     73c:	69fb      	ldr	r3, [r7, #28]
     73e:	3301      	adds	r3, #1
     740:	61fb      	str	r3, [r7, #28]
     742:	230a      	movs	r3, #10
     744:	18fb      	adds	r3, r7, r3
     746:	881a      	ldrh	r2, [r3, #0]
     748:	69fb      	ldr	r3, [r7, #28]
     74a:	429a      	cmp	r2, r3
     74c:	dcdd      	bgt.n	70a <mdb485_writeregs+0xae>
     74e:	697b      	ldr	r3, [r7, #20]
     750:	1dda      	adds	r2, r3, #7
     752:	2310      	movs	r3, #16
     754:	18fc      	adds	r4, r7, r3
     756:	4b13      	ldr	r3, [pc, #76]	; (7a4 <mdb485_writeregs+0x148>)
     758:	0011      	movs	r1, r2
     75a:	0018      	movs	r0, r3
     75c:	f002 fca6 	bl	30ac <crc16>
     760:	0003      	movs	r3, r0
     762:	8023      	strh	r3, [r4, #0]
     764:	69bb      	ldr	r3, [r7, #24]
     766:	1c5a      	adds	r2, r3, #1
     768:	61ba      	str	r2, [r7, #24]
     76a:	2210      	movs	r2, #16
     76c:	18ba      	adds	r2, r7, r2
     76e:	8812      	ldrh	r2, [r2, #0]
     770:	b2d2      	uxtb	r2, r2
     772:	701a      	strb	r2, [r3, #0]
     774:	69bb      	ldr	r3, [r7, #24]
     776:	1c5a      	adds	r2, r3, #1
     778:	61ba      	str	r2, [r7, #24]
     77a:	2210      	movs	r2, #16
     77c:	18ba      	adds	r2, r7, r2
     77e:	8812      	ldrh	r2, [r2, #0]
     780:	0a12      	lsrs	r2, r2, #8
     782:	b292      	uxth	r2, r2
     784:	b2d2      	uxtb	r2, r2
     786:	701a      	strb	r2, [r3, #0]
     788:	697b      	ldr	r3, [r7, #20]
     78a:	3309      	adds	r3, #9
     78c:	001a      	movs	r2, r3
     78e:	4b05      	ldr	r3, [pc, #20]	; (7a4 <mdb485_writeregs+0x148>)
     790:	0011      	movs	r1, r2
     792:	0018      	movs	r0, r3
     794:	f7ff ff12 	bl	5bc <mdb485_send>
     798:	e000      	b.n	79c <mdb485_writeregs+0x140>
     79a:	46c0      	nop			; (mov r8, r8)
     79c:	46bd      	mov	sp, r7
     79e:	b009      	add	sp, #36	; 0x24
     7a0:	bd90      	pop	{r4, r7, pc}
     7a2:	46c0      	nop			; (mov r8, r8)
     7a4:	200008bc 	.word	0x200008bc

000007a8 <mdb485_readregs>:
     7a8:	b590      	push	{r4, r7, lr}
     7aa:	b085      	sub	sp, #20
     7ac:	af00      	add	r7, sp, #0
     7ae:	0004      	movs	r4, r0
     7b0:	0008      	movs	r0, r1
     7b2:	0011      	movs	r1, r2
     7b4:	1dfb      	adds	r3, r7, #7
     7b6:	1c22      	adds	r2, r4, #0
     7b8:	701a      	strb	r2, [r3, #0]
     7ba:	1d3b      	adds	r3, r7, #4
     7bc:	1c02      	adds	r2, r0, #0
     7be:	801a      	strh	r2, [r3, #0]
     7c0:	1cbb      	adds	r3, r7, #2
     7c2:	1c0a      	adds	r2, r1, #0
     7c4:	801a      	strh	r2, [r3, #0]
     7c6:	4b28      	ldr	r3, [pc, #160]	; (868 <mdb485_readregs+0xc0>)
     7c8:	60fb      	str	r3, [r7, #12]
     7ca:	68fb      	ldr	r3, [r7, #12]
     7cc:	1c5a      	adds	r2, r3, #1
     7ce:	60fa      	str	r2, [r7, #12]
     7d0:	1dfa      	adds	r2, r7, #7
     7d2:	7812      	ldrb	r2, [r2, #0]
     7d4:	701a      	strb	r2, [r3, #0]
     7d6:	68fb      	ldr	r3, [r7, #12]
     7d8:	1c5a      	adds	r2, r3, #1
     7da:	60fa      	str	r2, [r7, #12]
     7dc:	2203      	movs	r2, #3
     7de:	701a      	strb	r2, [r3, #0]
     7e0:	68fb      	ldr	r3, [r7, #12]
     7e2:	1c5a      	adds	r2, r3, #1
     7e4:	60fa      	str	r2, [r7, #12]
     7e6:	1d3a      	adds	r2, r7, #4
     7e8:	8812      	ldrh	r2, [r2, #0]
     7ea:	0a12      	lsrs	r2, r2, #8
     7ec:	b292      	uxth	r2, r2
     7ee:	b2d2      	uxtb	r2, r2
     7f0:	701a      	strb	r2, [r3, #0]
     7f2:	68fb      	ldr	r3, [r7, #12]
     7f4:	1c5a      	adds	r2, r3, #1
     7f6:	60fa      	str	r2, [r7, #12]
     7f8:	1d3a      	adds	r2, r7, #4
     7fa:	8812      	ldrh	r2, [r2, #0]
     7fc:	b2d2      	uxtb	r2, r2
     7fe:	701a      	strb	r2, [r3, #0]
     800:	68fb      	ldr	r3, [r7, #12]
     802:	1c5a      	adds	r2, r3, #1
     804:	60fa      	str	r2, [r7, #12]
     806:	1cba      	adds	r2, r7, #2
     808:	8812      	ldrh	r2, [r2, #0]
     80a:	0a12      	lsrs	r2, r2, #8
     80c:	b292      	uxth	r2, r2
     80e:	b2d2      	uxtb	r2, r2
     810:	701a      	strb	r2, [r3, #0]
     812:	68fb      	ldr	r3, [r7, #12]
     814:	1c5a      	adds	r2, r3, #1
     816:	60fa      	str	r2, [r7, #12]
     818:	1cba      	adds	r2, r7, #2
     81a:	8812      	ldrh	r2, [r2, #0]
     81c:	b2d2      	uxtb	r2, r2
     81e:	701a      	strb	r2, [r3, #0]
     820:	230a      	movs	r3, #10
     822:	18fc      	adds	r4, r7, r3
     824:	4b10      	ldr	r3, [pc, #64]	; (868 <mdb485_readregs+0xc0>)
     826:	2106      	movs	r1, #6
     828:	0018      	movs	r0, r3
     82a:	f002 fc3f 	bl	30ac <crc16>
     82e:	0003      	movs	r3, r0
     830:	8023      	strh	r3, [r4, #0]
     832:	68fb      	ldr	r3, [r7, #12]
     834:	1c5a      	adds	r2, r3, #1
     836:	60fa      	str	r2, [r7, #12]
     838:	220a      	movs	r2, #10
     83a:	18ba      	adds	r2, r7, r2
     83c:	8812      	ldrh	r2, [r2, #0]
     83e:	b2d2      	uxtb	r2, r2
     840:	701a      	strb	r2, [r3, #0]
     842:	68fb      	ldr	r3, [r7, #12]
     844:	1c5a      	adds	r2, r3, #1
     846:	60fa      	str	r2, [r7, #12]
     848:	220a      	movs	r2, #10
     84a:	18ba      	adds	r2, r7, r2
     84c:	8812      	ldrh	r2, [r2, #0]
     84e:	0a12      	lsrs	r2, r2, #8
     850:	b292      	uxth	r2, r2
     852:	b2d2      	uxtb	r2, r2
     854:	701a      	strb	r2, [r3, #0]
     856:	4b04      	ldr	r3, [pc, #16]	; (868 <mdb485_readregs+0xc0>)
     858:	2108      	movs	r1, #8
     85a:	0018      	movs	r0, r3
     85c:	f7ff feae 	bl	5bc <mdb485_send>
     860:	46c0      	nop			; (mov r8, r8)
     862:	46bd      	mov	sp, r7
     864:	b005      	add	sp, #20
     866:	bd90      	pop	{r4, r7, pc}
     868:	200008bc 	.word	0x200008bc

0000086c <mdb485_read_inputregs>:
     86c:	b590      	push	{r4, r7, lr}
     86e:	b085      	sub	sp, #20
     870:	af00      	add	r7, sp, #0
     872:	0004      	movs	r4, r0
     874:	0008      	movs	r0, r1
     876:	0011      	movs	r1, r2
     878:	1dfb      	adds	r3, r7, #7
     87a:	1c22      	adds	r2, r4, #0
     87c:	701a      	strb	r2, [r3, #0]
     87e:	1d3b      	adds	r3, r7, #4
     880:	1c02      	adds	r2, r0, #0
     882:	801a      	strh	r2, [r3, #0]
     884:	1cbb      	adds	r3, r7, #2
     886:	1c0a      	adds	r2, r1, #0
     888:	801a      	strh	r2, [r3, #0]
     88a:	4b28      	ldr	r3, [pc, #160]	; (92c <mdb485_read_inputregs+0xc0>)
     88c:	60fb      	str	r3, [r7, #12]
     88e:	68fb      	ldr	r3, [r7, #12]
     890:	1c5a      	adds	r2, r3, #1
     892:	60fa      	str	r2, [r7, #12]
     894:	1dfa      	adds	r2, r7, #7
     896:	7812      	ldrb	r2, [r2, #0]
     898:	701a      	strb	r2, [r3, #0]
     89a:	68fb      	ldr	r3, [r7, #12]
     89c:	1c5a      	adds	r2, r3, #1
     89e:	60fa      	str	r2, [r7, #12]
     8a0:	2204      	movs	r2, #4
     8a2:	701a      	strb	r2, [r3, #0]
     8a4:	68fb      	ldr	r3, [r7, #12]
     8a6:	1c5a      	adds	r2, r3, #1
     8a8:	60fa      	str	r2, [r7, #12]
     8aa:	1d3a      	adds	r2, r7, #4
     8ac:	8812      	ldrh	r2, [r2, #0]
     8ae:	0a12      	lsrs	r2, r2, #8
     8b0:	b292      	uxth	r2, r2
     8b2:	b2d2      	uxtb	r2, r2
     8b4:	701a      	strb	r2, [r3, #0]
     8b6:	68fb      	ldr	r3, [r7, #12]
     8b8:	1c5a      	adds	r2, r3, #1
     8ba:	60fa      	str	r2, [r7, #12]
     8bc:	1d3a      	adds	r2, r7, #4
     8be:	8812      	ldrh	r2, [r2, #0]
     8c0:	b2d2      	uxtb	r2, r2
     8c2:	701a      	strb	r2, [r3, #0]
     8c4:	68fb      	ldr	r3, [r7, #12]
     8c6:	1c5a      	adds	r2, r3, #1
     8c8:	60fa      	str	r2, [r7, #12]
     8ca:	1cba      	adds	r2, r7, #2
     8cc:	8812      	ldrh	r2, [r2, #0]
     8ce:	0a12      	lsrs	r2, r2, #8
     8d0:	b292      	uxth	r2, r2
     8d2:	b2d2      	uxtb	r2, r2
     8d4:	701a      	strb	r2, [r3, #0]
     8d6:	68fb      	ldr	r3, [r7, #12]
     8d8:	1c5a      	adds	r2, r3, #1
     8da:	60fa      	str	r2, [r7, #12]
     8dc:	1cba      	adds	r2, r7, #2
     8de:	8812      	ldrh	r2, [r2, #0]
     8e0:	b2d2      	uxtb	r2, r2
     8e2:	701a      	strb	r2, [r3, #0]
     8e4:	230a      	movs	r3, #10
     8e6:	18fc      	adds	r4, r7, r3
     8e8:	4b10      	ldr	r3, [pc, #64]	; (92c <mdb485_read_inputregs+0xc0>)
     8ea:	2106      	movs	r1, #6
     8ec:	0018      	movs	r0, r3
     8ee:	f002 fbdd 	bl	30ac <crc16>
     8f2:	0003      	movs	r3, r0
     8f4:	8023      	strh	r3, [r4, #0]
     8f6:	68fb      	ldr	r3, [r7, #12]
     8f8:	1c5a      	adds	r2, r3, #1
     8fa:	60fa      	str	r2, [r7, #12]
     8fc:	220a      	movs	r2, #10
     8fe:	18ba      	adds	r2, r7, r2
     900:	8812      	ldrh	r2, [r2, #0]
     902:	b2d2      	uxtb	r2, r2
     904:	701a      	strb	r2, [r3, #0]
     906:	68fb      	ldr	r3, [r7, #12]
     908:	1c5a      	adds	r2, r3, #1
     90a:	60fa      	str	r2, [r7, #12]
     90c:	220a      	movs	r2, #10
     90e:	18ba      	adds	r2, r7, r2
     910:	8812      	ldrh	r2, [r2, #0]
     912:	0a12      	lsrs	r2, r2, #8
     914:	b292      	uxth	r2, r2
     916:	b2d2      	uxtb	r2, r2
     918:	701a      	strb	r2, [r3, #0]
     91a:	4b04      	ldr	r3, [pc, #16]	; (92c <mdb485_read_inputregs+0xc0>)
     91c:	2108      	movs	r1, #8
     91e:	0018      	movs	r0, r3
     920:	f7ff fe4c 	bl	5bc <mdb485_send>
     924:	46c0      	nop			; (mov r8, r8)
     926:	46bd      	mov	sp, r7
     928:	b005      	add	sp, #20
     92a:	bd90      	pop	{r4, r7, pc}
     92c:	200008bc 	.word	0x200008bc

00000930 <mdb485_get_func>:
     930:	b580      	push	{r7, lr}
     932:	b082      	sub	sp, #8
     934:	af00      	add	r7, sp, #0
     936:	2007      	movs	r0, #7
     938:	f7ff fdf0 	bl	51c <__NVIC_DisableIRQ>
     93c:	4b05      	ldr	r3, [pc, #20]	; (954 <mdb485_get_func+0x24>)
     93e:	785b      	ldrb	r3, [r3, #1]
     940:	607b      	str	r3, [r7, #4]
     942:	2007      	movs	r0, #7
     944:	f7ff fdd0 	bl	4e8 <__NVIC_EnableIRQ>
     948:	687b      	ldr	r3, [r7, #4]
     94a:	0018      	movs	r0, r3
     94c:	46bd      	mov	sp, r7
     94e:	b002      	add	sp, #8
     950:	bd80      	pop	{r7, pc}
     952:	46c0      	nop			; (mov r8, r8)
     954:	200008ac 	.word	0x200008ac

00000958 <mdb485_get_crc>:
     958:	b590      	push	{r4, r7, lr}
     95a:	b083      	sub	sp, #12
     95c:	af00      	add	r7, sp, #0
     95e:	2007      	movs	r0, #7
     960:	f7ff fddc 	bl	51c <__NVIC_DisableIRQ>
     964:	4b09      	ldr	r3, [pc, #36]	; (98c <mdb485_get_crc+0x34>)
     966:	681a      	ldr	r2, [r3, #0]
     968:	1dbc      	adds	r4, r7, #6
     96a:	4b09      	ldr	r3, [pc, #36]	; (990 <mdb485_get_crc+0x38>)
     96c:	0011      	movs	r1, r2
     96e:	0018      	movs	r0, r3
     970:	f002 fb9c 	bl	30ac <crc16>
     974:	0003      	movs	r3, r0
     976:	8023      	strh	r3, [r4, #0]
     978:	2007      	movs	r0, #7
     97a:	f7ff fdb5 	bl	4e8 <__NVIC_EnableIRQ>
     97e:	1dbb      	adds	r3, r7, #6
     980:	881b      	ldrh	r3, [r3, #0]
     982:	0018      	movs	r0, r3
     984:	46bd      	mov	sp, r7
     986:	b003      	add	sp, #12
     988:	bd90      	pop	{r4, r7, pc}
     98a:	46c0      	nop			; (mov r8, r8)
     98c:	200008cc 	.word	0x200008cc
     990:	200008ac 	.word	0x200008ac

00000994 <mdb485_si30_get_counter>:
     994:	b580      	push	{r7, lr}
     996:	b082      	sub	sp, #8
     998:	af00      	add	r7, sp, #0
     99a:	4b1a      	ldr	r3, [pc, #104]	; (a04 <mdb485_si30_get_counter+0x70>)
     99c:	607b      	str	r3, [r7, #4]
     99e:	2007      	movs	r0, #7
     9a0:	f7ff fdbc 	bl	51c <__NVIC_DisableIRQ>
     9a4:	4b18      	ldr	r3, [pc, #96]	; (a08 <mdb485_si30_get_counter+0x74>)
     9a6:	681b      	ldr	r3, [r3, #0]
     9a8:	2b00      	cmp	r3, #0
     9aa:	d022      	beq.n	9f2 <mdb485_si30_get_counter+0x5e>
     9ac:	687b      	ldr	r3, [r7, #4]
     9ae:	1c5a      	adds	r2, r3, #1
     9b0:	607a      	str	r2, [r7, #4]
     9b2:	781b      	ldrb	r3, [r3, #0]
     9b4:	061b      	lsls	r3, r3, #24
     9b6:	603b      	str	r3, [r7, #0]
     9b8:	687b      	ldr	r3, [r7, #4]
     9ba:	1c5a      	adds	r2, r3, #1
     9bc:	607a      	str	r2, [r7, #4]
     9be:	781b      	ldrb	r3, [r3, #0]
     9c0:	041b      	lsls	r3, r3, #16
     9c2:	001a      	movs	r2, r3
     9c4:	683b      	ldr	r3, [r7, #0]
     9c6:	4313      	orrs	r3, r2
     9c8:	603b      	str	r3, [r7, #0]
     9ca:	687b      	ldr	r3, [r7, #4]
     9cc:	1c5a      	adds	r2, r3, #1
     9ce:	607a      	str	r2, [r7, #4]
     9d0:	781b      	ldrb	r3, [r3, #0]
     9d2:	021b      	lsls	r3, r3, #8
     9d4:	001a      	movs	r2, r3
     9d6:	683b      	ldr	r3, [r7, #0]
     9d8:	4313      	orrs	r3, r2
     9da:	603b      	str	r3, [r7, #0]
     9dc:	687b      	ldr	r3, [r7, #4]
     9de:	781b      	ldrb	r3, [r3, #0]
     9e0:	001a      	movs	r2, r3
     9e2:	683b      	ldr	r3, [r7, #0]
     9e4:	4313      	orrs	r3, r2
     9e6:	603b      	str	r3, [r7, #0]
     9e8:	2007      	movs	r0, #7
     9ea:	f7ff fd7d 	bl	4e8 <__NVIC_EnableIRQ>
     9ee:	683b      	ldr	r3, [r7, #0]
     9f0:	e003      	b.n	9fa <mdb485_si30_get_counter+0x66>
     9f2:	2007      	movs	r0, #7
     9f4:	f7ff fd78 	bl	4e8 <__NVIC_EnableIRQ>
     9f8:	2300      	movs	r3, #0
     9fa:	0018      	movs	r0, r3
     9fc:	46bd      	mov	sp, r7
     9fe:	b002      	add	sp, #8
     a00:	bd80      	pop	{r7, pc}
     a02:	46c0      	nop			; (mov r8, r8)
     a04:	200008af 	.word	0x200008af
     a08:	200008cc 	.word	0x200008cc

00000a0c <UART2_Handler>:
     a0c:	b580      	push	{r7, lr}
     a0e:	b082      	sub	sp, #8
     a10:	af00      	add	r7, sp, #0
     a12:	4b16      	ldr	r3, [pc, #88]	; (a6c <UART2_Handler+0x60>)
     a14:	2200      	movs	r2, #0
     a16:	601a      	str	r2, [r3, #0]
     a18:	4b15      	ldr	r3, [pc, #84]	; (a70 <UART2_Handler+0x64>)
     a1a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     a1c:	2240      	movs	r2, #64	; 0x40
     a1e:	4013      	ands	r3, r2
     a20:	d016      	beq.n	a50 <UART2_Handler+0x44>
     a22:	4b14      	ldr	r3, [pc, #80]	; (a74 <UART2_Handler+0x68>)
     a24:	603b      	str	r3, [r7, #0]
     a26:	2300      	movs	r3, #0
     a28:	607b      	str	r3, [r7, #4]
     a2a:	e009      	b.n	a40 <UART2_Handler+0x34>
     a2c:	683b      	ldr	r3, [r7, #0]
     a2e:	1c5a      	adds	r2, r3, #1
     a30:	603a      	str	r2, [r7, #0]
     a32:	4a0f      	ldr	r2, [pc, #60]	; (a70 <UART2_Handler+0x64>)
     a34:	6812      	ldr	r2, [r2, #0]
     a36:	b2d2      	uxtb	r2, r2
     a38:	701a      	strb	r2, [r3, #0]
     a3a:	687b      	ldr	r3, [r7, #4]
     a3c:	3301      	adds	r3, #1
     a3e:	607b      	str	r3, [r7, #4]
     a40:	687b      	ldr	r3, [r7, #4]
     a42:	2b0f      	cmp	r3, #15
     a44:	dc04      	bgt.n	a50 <UART2_Handler+0x44>
     a46:	4b0a      	ldr	r3, [pc, #40]	; (a70 <UART2_Handler+0x64>)
     a48:	699b      	ldr	r3, [r3, #24]
     a4a:	2210      	movs	r2, #16
     a4c:	4013      	ands	r3, r2
     a4e:	d0ed      	beq.n	a2c <UART2_Handler+0x20>
     a50:	4b06      	ldr	r3, [pc, #24]	; (a6c <UART2_Handler+0x60>)
     a52:	687a      	ldr	r2, [r7, #4]
     a54:	601a      	str	r2, [r3, #0]
     a56:	4b08      	ldr	r3, [pc, #32]	; (a78 <UART2_Handler+0x6c>)
     a58:	681b      	ldr	r3, [r3, #0]
     a5a:	2108      	movs	r1, #8
     a5c:	0018      	movs	r0, r3
     a5e:	f005 fd69 	bl	6534 <osSignalSet>
     a62:	46c0      	nop			; (mov r8, r8)
     a64:	46bd      	mov	sp, r7
     a66:	b002      	add	sp, #8
     a68:	bd80      	pop	{r7, pc}
     a6a:	46c0      	nop			; (mov r8, r8)
     a6c:	200008cc 	.word	0x200008cc
     a70:	40038000 	.word	0x40038000
     a74:	200008ac 	.word	0x200008ac
     a78:	20000860 	.word	0x20000860

00000a7c <_exit>:
     a7c:	b580      	push	{r7, lr}
     a7e:	b082      	sub	sp, #8
     a80:	af00      	add	r7, sp, #0
     a82:	6078      	str	r0, [r7, #4]
     a84:	4b03      	ldr	r3, [pc, #12]	; (a94 <_exit+0x18>)
     a86:	2204      	movs	r2, #4
     a88:	0019      	movs	r1, r3
     a8a:	2001      	movs	r0, #1
     a8c:	f000 f90c 	bl	ca8 <_write>
     a90:	e7fe      	b.n	a90 <_exit+0x14>
     a92:	46c0      	nop			; (mov r8, r8)
     a94:	0000883c 	.word	0x0000883c

00000a98 <_close>:
     a98:	b580      	push	{r7, lr}
     a9a:	b082      	sub	sp, #8
     a9c:	af00      	add	r7, sp, #0
     a9e:	6078      	str	r0, [r7, #4]
     aa0:	2301      	movs	r3, #1
     aa2:	425b      	negs	r3, r3
     aa4:	0018      	movs	r0, r3
     aa6:	46bd      	mov	sp, r7
     aa8:	b002      	add	sp, #8
     aaa:	bd80      	pop	{r7, pc}

00000aac <_execve>:
     aac:	b580      	push	{r7, lr}
     aae:	b084      	sub	sp, #16
     ab0:	af00      	add	r7, sp, #0
     ab2:	60f8      	str	r0, [r7, #12]
     ab4:	60b9      	str	r1, [r7, #8]
     ab6:	607a      	str	r2, [r7, #4]
     ab8:	4b04      	ldr	r3, [pc, #16]	; (acc <_execve+0x20>)
     aba:	220c      	movs	r2, #12
     abc:	601a      	str	r2, [r3, #0]
     abe:	2301      	movs	r3, #1
     ac0:	425b      	negs	r3, r3
     ac2:	0018      	movs	r0, r3
     ac4:	46bd      	mov	sp, r7
     ac6:	b004      	add	sp, #16
     ac8:	bd80      	pop	{r7, pc}
     aca:	46c0      	nop			; (mov r8, r8)
     acc:	20006074 	.word	0x20006074

00000ad0 <_fork>:
     ad0:	b580      	push	{r7, lr}
     ad2:	af00      	add	r7, sp, #0
     ad4:	4b03      	ldr	r3, [pc, #12]	; (ae4 <_fork+0x14>)
     ad6:	220b      	movs	r2, #11
     ad8:	601a      	str	r2, [r3, #0]
     ada:	2301      	movs	r3, #1
     adc:	425b      	negs	r3, r3
     ade:	0018      	movs	r0, r3
     ae0:	46bd      	mov	sp, r7
     ae2:	bd80      	pop	{r7, pc}
     ae4:	20006074 	.word	0x20006074

00000ae8 <_fstat>:
     ae8:	b580      	push	{r7, lr}
     aea:	b082      	sub	sp, #8
     aec:	af00      	add	r7, sp, #0
     aee:	6078      	str	r0, [r7, #4]
     af0:	6039      	str	r1, [r7, #0]
     af2:	683b      	ldr	r3, [r7, #0]
     af4:	2280      	movs	r2, #128	; 0x80
     af6:	0192      	lsls	r2, r2, #6
     af8:	605a      	str	r2, [r3, #4]
     afa:	2300      	movs	r3, #0
     afc:	0018      	movs	r0, r3
     afe:	46bd      	mov	sp, r7
     b00:	b002      	add	sp, #8
     b02:	bd80      	pop	{r7, pc}

00000b04 <_getpid>:
     b04:	b580      	push	{r7, lr}
     b06:	af00      	add	r7, sp, #0
     b08:	2301      	movs	r3, #1
     b0a:	0018      	movs	r0, r3
     b0c:	46bd      	mov	sp, r7
     b0e:	bd80      	pop	{r7, pc}

00000b10 <_isatty>:
     b10:	b580      	push	{r7, lr}
     b12:	b082      	sub	sp, #8
     b14:	af00      	add	r7, sp, #0
     b16:	6078      	str	r0, [r7, #4]
     b18:	687b      	ldr	r3, [r7, #4]
     b1a:	3300      	adds	r3, #0
     b1c:	2b02      	cmp	r3, #2
     b1e:	d801      	bhi.n	b24 <_isatty+0x14>
     b20:	2301      	movs	r3, #1
     b22:	e003      	b.n	b2c <_isatty+0x1c>
     b24:	4b03      	ldr	r3, [pc, #12]	; (b34 <_isatty+0x24>)
     b26:	2209      	movs	r2, #9
     b28:	601a      	str	r2, [r3, #0]
     b2a:	2300      	movs	r3, #0
     b2c:	0018      	movs	r0, r3
     b2e:	46bd      	mov	sp, r7
     b30:	b002      	add	sp, #8
     b32:	bd80      	pop	{r7, pc}
     b34:	20006074 	.word	0x20006074

00000b38 <_kill>:
     b38:	b580      	push	{r7, lr}
     b3a:	b082      	sub	sp, #8
     b3c:	af00      	add	r7, sp, #0
     b3e:	6078      	str	r0, [r7, #4]
     b40:	6039      	str	r1, [r7, #0]
     b42:	4b04      	ldr	r3, [pc, #16]	; (b54 <_kill+0x1c>)
     b44:	2216      	movs	r2, #22
     b46:	601a      	str	r2, [r3, #0]
     b48:	2301      	movs	r3, #1
     b4a:	425b      	negs	r3, r3
     b4c:	0018      	movs	r0, r3
     b4e:	46bd      	mov	sp, r7
     b50:	b002      	add	sp, #8
     b52:	bd80      	pop	{r7, pc}
     b54:	20006074 	.word	0x20006074

00000b58 <_link>:
     b58:	b580      	push	{r7, lr}
     b5a:	b082      	sub	sp, #8
     b5c:	af00      	add	r7, sp, #0
     b5e:	6078      	str	r0, [r7, #4]
     b60:	6039      	str	r1, [r7, #0]
     b62:	4b04      	ldr	r3, [pc, #16]	; (b74 <_link+0x1c>)
     b64:	221f      	movs	r2, #31
     b66:	601a      	str	r2, [r3, #0]
     b68:	2301      	movs	r3, #1
     b6a:	425b      	negs	r3, r3
     b6c:	0018      	movs	r0, r3
     b6e:	46bd      	mov	sp, r7
     b70:	b002      	add	sp, #8
     b72:	bd80      	pop	{r7, pc}
     b74:	20006074 	.word	0x20006074

00000b78 <_lseek>:
     b78:	b580      	push	{r7, lr}
     b7a:	b084      	sub	sp, #16
     b7c:	af00      	add	r7, sp, #0
     b7e:	60f8      	str	r0, [r7, #12]
     b80:	60b9      	str	r1, [r7, #8]
     b82:	607a      	str	r2, [r7, #4]
     b84:	2300      	movs	r3, #0
     b86:	0018      	movs	r0, r3
     b88:	46bd      	mov	sp, r7
     b8a:	b004      	add	sp, #16
     b8c:	bd80      	pop	{r7, pc}
     b8e:	46c0      	nop			; (mov r8, r8)

00000b90 <_sbrk>:
     b90:	b580      	push	{r7, lr}
     b92:	b086      	sub	sp, #24
     b94:	af00      	add	r7, sp, #0
     b96:	6078      	str	r0, [r7, #4]
     b98:	4b16      	ldr	r3, [pc, #88]	; (bf4 <_sbrk+0x64>)
     b9a:	681b      	ldr	r3, [r3, #0]
     b9c:	2b00      	cmp	r3, #0
     b9e:	d102      	bne.n	ba6 <_sbrk+0x16>
     ba0:	4b14      	ldr	r3, [pc, #80]	; (bf4 <_sbrk+0x64>)
     ba2:	4a15      	ldr	r2, [pc, #84]	; (bf8 <_sbrk+0x68>)
     ba4:	601a      	str	r2, [r3, #0]
     ba6:	4b13      	ldr	r3, [pc, #76]	; (bf4 <_sbrk+0x64>)
     ba8:	681b      	ldr	r3, [r3, #0]
     baa:	617b      	str	r3, [r7, #20]
     bac:	f3ef 8308 	mrs	r3, MSP
     bb0:	60fb      	str	r3, [r7, #12]
     bb2:	68fb      	ldr	r3, [r7, #12]
     bb4:	613b      	str	r3, [r7, #16]
     bb6:	4b0f      	ldr	r3, [pc, #60]	; (bf4 <_sbrk+0x64>)
     bb8:	681a      	ldr	r2, [r3, #0]
     bba:	687b      	ldr	r3, [r7, #4]
     bbc:	18d2      	adds	r2, r2, r3
     bbe:	693b      	ldr	r3, [r7, #16]
     bc0:	429a      	cmp	r2, r3
     bc2:	d90b      	bls.n	bdc <_sbrk+0x4c>
     bc4:	4b0d      	ldr	r3, [pc, #52]	; (bfc <_sbrk+0x6c>)
     bc6:	2219      	movs	r2, #25
     bc8:	0019      	movs	r1, r3
     bca:	2002      	movs	r0, #2
     bcc:	f000 f86c 	bl	ca8 <_write>
     bd0:	4b0b      	ldr	r3, [pc, #44]	; (c00 <_sbrk+0x70>)
     bd2:	220c      	movs	r2, #12
     bd4:	601a      	str	r2, [r3, #0]
     bd6:	2301      	movs	r3, #1
     bd8:	425b      	negs	r3, r3
     bda:	e006      	b.n	bea <_sbrk+0x5a>
     bdc:	4b05      	ldr	r3, [pc, #20]	; (bf4 <_sbrk+0x64>)
     bde:	681a      	ldr	r2, [r3, #0]
     be0:	687b      	ldr	r3, [r7, #4]
     be2:	18d2      	adds	r2, r2, r3
     be4:	4b03      	ldr	r3, [pc, #12]	; (bf4 <_sbrk+0x64>)
     be6:	601a      	str	r2, [r3, #0]
     be8:	697b      	ldr	r3, [r7, #20]
     bea:	0018      	movs	r0, r3
     bec:	46bd      	mov	sp, r7
     bee:	b006      	add	sp, #24
     bf0:	bd80      	pop	{r7, pc}
     bf2:	46c0      	nop			; (mov r8, r8)
     bf4:	200008d4 	.word	0x200008d4
     bf8:	200060fc 	.word	0x200060fc
     bfc:	00008844 	.word	0x00008844
     c00:	20006074 	.word	0x20006074

00000c04 <_read>:
     c04:	b580      	push	{r7, lr}
     c06:	b086      	sub	sp, #24
     c08:	af00      	add	r7, sp, #0
     c0a:	60f8      	str	r0, [r7, #12]
     c0c:	60b9      	str	r1, [r7, #8]
     c0e:	607a      	str	r2, [r7, #4]
     c10:	2300      	movs	r3, #0
     c12:	617b      	str	r3, [r7, #20]
     c14:	68fb      	ldr	r3, [r7, #12]
     c16:	2b00      	cmp	r3, #0
     c18:	d005      	beq.n	c26 <_read+0x22>
     c1a:	4b06      	ldr	r3, [pc, #24]	; (c34 <_read+0x30>)
     c1c:	2209      	movs	r2, #9
     c1e:	601a      	str	r2, [r3, #0]
     c20:	2301      	movs	r3, #1
     c22:	425b      	negs	r3, r3
     c24:	e001      	b.n	c2a <_read+0x26>
     c26:	46c0      	nop			; (mov r8, r8)
     c28:	697b      	ldr	r3, [r7, #20]
     c2a:	0018      	movs	r0, r3
     c2c:	46bd      	mov	sp, r7
     c2e:	b006      	add	sp, #24
     c30:	bd80      	pop	{r7, pc}
     c32:	46c0      	nop			; (mov r8, r8)
     c34:	20006074 	.word	0x20006074

00000c38 <_stat>:
     c38:	b580      	push	{r7, lr}
     c3a:	b082      	sub	sp, #8
     c3c:	af00      	add	r7, sp, #0
     c3e:	6078      	str	r0, [r7, #4]
     c40:	6039      	str	r1, [r7, #0]
     c42:	683b      	ldr	r3, [r7, #0]
     c44:	2280      	movs	r2, #128	; 0x80
     c46:	0192      	lsls	r2, r2, #6
     c48:	605a      	str	r2, [r3, #4]
     c4a:	2300      	movs	r3, #0
     c4c:	0018      	movs	r0, r3
     c4e:	46bd      	mov	sp, r7
     c50:	b002      	add	sp, #8
     c52:	bd80      	pop	{r7, pc}

00000c54 <_times>:
     c54:	b580      	push	{r7, lr}
     c56:	b082      	sub	sp, #8
     c58:	af00      	add	r7, sp, #0
     c5a:	6078      	str	r0, [r7, #4]
     c5c:	2301      	movs	r3, #1
     c5e:	425b      	negs	r3, r3
     c60:	0018      	movs	r0, r3
     c62:	46bd      	mov	sp, r7
     c64:	b002      	add	sp, #8
     c66:	bd80      	pop	{r7, pc}

00000c68 <_unlink>:
     c68:	b580      	push	{r7, lr}
     c6a:	b082      	sub	sp, #8
     c6c:	af00      	add	r7, sp, #0
     c6e:	6078      	str	r0, [r7, #4]
     c70:	4b04      	ldr	r3, [pc, #16]	; (c84 <_unlink+0x1c>)
     c72:	2202      	movs	r2, #2
     c74:	601a      	str	r2, [r3, #0]
     c76:	2301      	movs	r3, #1
     c78:	425b      	negs	r3, r3
     c7a:	0018      	movs	r0, r3
     c7c:	46bd      	mov	sp, r7
     c7e:	b002      	add	sp, #8
     c80:	bd80      	pop	{r7, pc}
     c82:	46c0      	nop			; (mov r8, r8)
     c84:	20006074 	.word	0x20006074

00000c88 <_wait>:
     c88:	b580      	push	{r7, lr}
     c8a:	b082      	sub	sp, #8
     c8c:	af00      	add	r7, sp, #0
     c8e:	6078      	str	r0, [r7, #4]
     c90:	4b04      	ldr	r3, [pc, #16]	; (ca4 <_wait+0x1c>)
     c92:	220a      	movs	r2, #10
     c94:	601a      	str	r2, [r3, #0]
     c96:	2301      	movs	r3, #1
     c98:	425b      	negs	r3, r3
     c9a:	0018      	movs	r0, r3
     c9c:	46bd      	mov	sp, r7
     c9e:	b002      	add	sp, #8
     ca0:	bd80      	pop	{r7, pc}
     ca2:	46c0      	nop			; (mov r8, r8)
     ca4:	20006074 	.word	0x20006074

00000ca8 <_write>:
     ca8:	b580      	push	{r7, lr}
     caa:	b086      	sub	sp, #24
     cac:	af00      	add	r7, sp, #0
     cae:	60f8      	str	r0, [r7, #12]
     cb0:	60b9      	str	r1, [r7, #8]
     cb2:	607a      	str	r2, [r7, #4]
     cb4:	68fb      	ldr	r3, [r7, #12]
     cb6:	2b01      	cmp	r3, #1
     cb8:	d002      	beq.n	cc0 <_write+0x18>
     cba:	2b02      	cmp	r3, #2
     cbc:	d00b      	beq.n	cd6 <_write+0x2e>
     cbe:	e015      	b.n	cec <_write+0x44>
     cc0:	2300      	movs	r3, #0
     cc2:	617b      	str	r3, [r7, #20]
     cc4:	e002      	b.n	ccc <_write+0x24>
     cc6:	697b      	ldr	r3, [r7, #20]
     cc8:	3301      	adds	r3, #1
     cca:	617b      	str	r3, [r7, #20]
     ccc:	697a      	ldr	r2, [r7, #20]
     cce:	687b      	ldr	r3, [r7, #4]
     cd0:	429a      	cmp	r2, r3
     cd2:	dbf8      	blt.n	cc6 <_write+0x1e>
     cd4:	e010      	b.n	cf8 <_write+0x50>
     cd6:	2300      	movs	r3, #0
     cd8:	617b      	str	r3, [r7, #20]
     cda:	e002      	b.n	ce2 <_write+0x3a>
     cdc:	697b      	ldr	r3, [r7, #20]
     cde:	3301      	adds	r3, #1
     ce0:	617b      	str	r3, [r7, #20]
     ce2:	697a      	ldr	r2, [r7, #20]
     ce4:	687b      	ldr	r3, [r7, #4]
     ce6:	429a      	cmp	r2, r3
     ce8:	dbf8      	blt.n	cdc <_write+0x34>
     cea:	e005      	b.n	cf8 <_write+0x50>
     cec:	4b05      	ldr	r3, [pc, #20]	; (d04 <_write+0x5c>)
     cee:	2209      	movs	r2, #9
     cf0:	601a      	str	r2, [r3, #0]
     cf2:	2301      	movs	r3, #1
     cf4:	425b      	negs	r3, r3
     cf6:	e000      	b.n	cfa <_write+0x52>
     cf8:	687b      	ldr	r3, [r7, #4]
     cfa:	0018      	movs	r0, r3
     cfc:	46bd      	mov	sp, r7
     cfe:	b006      	add	sp, #24
     d00:	bd80      	pop	{r7, pc}
     d02:	46c0      	nop			; (mov r8, r8)
     d04:	20006074 	.word	0x20006074

00000d08 <_init>:
     d08:	b580      	push	{r7, lr}
     d0a:	af00      	add	r7, sp, #0
     d0c:	46c0      	nop			; (mov r8, r8)
     d0e:	46bd      	mov	sp, r7
     d10:	bd80      	pop	{r7, pc}
     d12:	46c0      	nop			; (mov r8, r8)

00000d14 <_fini>:
     d14:	b580      	push	{r7, lr}
     d16:	af00      	add	r7, sp, #0
     d18:	46c0      	nop			; (mov r8, r8)
     d1a:	46bd      	mov	sp, r7
     d1c:	bd80      	pop	{r7, pc}
     d1e:	46c0      	nop			; (mov r8, r8)

00000d20 <__NVIC_EnableIRQ>:
     d20:	b580      	push	{r7, lr}
     d22:	b082      	sub	sp, #8
     d24:	af00      	add	r7, sp, #0
     d26:	0002      	movs	r2, r0
     d28:	1dfb      	adds	r3, r7, #7
     d2a:	701a      	strb	r2, [r3, #0]
     d2c:	1dfb      	adds	r3, r7, #7
     d2e:	781b      	ldrb	r3, [r3, #0]
     d30:	2b7f      	cmp	r3, #127	; 0x7f
     d32:	d809      	bhi.n	d48 <__NVIC_EnableIRQ+0x28>
     d34:	4b06      	ldr	r3, [pc, #24]	; (d50 <__NVIC_EnableIRQ+0x30>)
     d36:	1dfa      	adds	r2, r7, #7
     d38:	7812      	ldrb	r2, [r2, #0]
     d3a:	0011      	movs	r1, r2
     d3c:	221f      	movs	r2, #31
     d3e:	400a      	ands	r2, r1
     d40:	2101      	movs	r1, #1
     d42:	4091      	lsls	r1, r2
     d44:	000a      	movs	r2, r1
     d46:	601a      	str	r2, [r3, #0]
     d48:	46c0      	nop			; (mov r8, r8)
     d4a:	46bd      	mov	sp, r7
     d4c:	b002      	add	sp, #8
     d4e:	bd80      	pop	{r7, pc}
     d50:	e000e100 	.word	0xe000e100

00000d54 <__NVIC_DisableIRQ>:
     d54:	b580      	push	{r7, lr}
     d56:	b082      	sub	sp, #8
     d58:	af00      	add	r7, sp, #0
     d5a:	0002      	movs	r2, r0
     d5c:	1dfb      	adds	r3, r7, #7
     d5e:	701a      	strb	r2, [r3, #0]
     d60:	1dfb      	adds	r3, r7, #7
     d62:	781b      	ldrb	r3, [r3, #0]
     d64:	2b7f      	cmp	r3, #127	; 0x7f
     d66:	d80e      	bhi.n	d86 <__NVIC_DisableIRQ+0x32>
     d68:	4909      	ldr	r1, [pc, #36]	; (d90 <__NVIC_DisableIRQ+0x3c>)
     d6a:	1dfb      	adds	r3, r7, #7
     d6c:	781b      	ldrb	r3, [r3, #0]
     d6e:	001a      	movs	r2, r3
     d70:	231f      	movs	r3, #31
     d72:	4013      	ands	r3, r2
     d74:	2201      	movs	r2, #1
     d76:	409a      	lsls	r2, r3
     d78:	0013      	movs	r3, r2
     d7a:	2280      	movs	r2, #128	; 0x80
     d7c:	508b      	str	r3, [r1, r2]
     d7e:	f3bf 8f4f 	dsb	sy
     d82:	f3bf 8f6f 	isb	sy
     d86:	46c0      	nop			; (mov r8, r8)
     d88:	46bd      	mov	sp, r7
     d8a:	b002      	add	sp, #8
     d8c:	bd80      	pop	{r7, pc}
     d8e:	46c0      	nop			; (mov r8, r8)
     d90:	e000e100 	.word	0xe000e100

00000d94 <mdb232_init>:
     d94:	b580      	push	{r7, lr}
     d96:	af00      	add	r7, sp, #0
     d98:	4b15      	ldr	r3, [pc, #84]	; (df0 <mdb232_init+0x5c>)
     d9a:	229c      	movs	r2, #156	; 0x9c
     d9c:	0052      	lsls	r2, r2, #1
     d9e:	625a      	str	r2, [r3, #36]	; 0x24
     da0:	4b13      	ldr	r3, [pc, #76]	; (df0 <mdb232_init+0x5c>)
     da2:	2220      	movs	r2, #32
     da4:	629a      	str	r2, [r3, #40]	; 0x28
     da6:	4b12      	ldr	r3, [pc, #72]	; (df0 <mdb232_init+0x5c>)
     da8:	4a11      	ldr	r2, [pc, #68]	; (df0 <mdb232_init+0x5c>)
     daa:	6b52      	ldr	r2, [r2, #52]	; 0x34
     dac:	213f      	movs	r1, #63	; 0x3f
     dae:	438a      	bics	r2, r1
     db0:	635a      	str	r2, [r3, #52]	; 0x34
     db2:	4b0f      	ldr	r3, [pc, #60]	; (df0 <mdb232_init+0x5c>)
     db4:	4a0e      	ldr	r2, [pc, #56]	; (df0 <mdb232_init+0x5c>)
     db6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     db8:	2110      	movs	r1, #16
     dba:	430a      	orrs	r2, r1
     dbc:	62da      	str	r2, [r3, #44]	; 0x2c
     dbe:	4b0c      	ldr	r3, [pc, #48]	; (df0 <mdb232_init+0x5c>)
     dc0:	4a0b      	ldr	r2, [pc, #44]	; (df0 <mdb232_init+0x5c>)
     dc2:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     dc4:	2160      	movs	r1, #96	; 0x60
     dc6:	430a      	orrs	r2, r1
     dc8:	62da      	str	r2, [r3, #44]	; 0x2c
     dca:	4b09      	ldr	r3, [pc, #36]	; (df0 <mdb232_init+0x5c>)
     dcc:	4a08      	ldr	r2, [pc, #32]	; (df0 <mdb232_init+0x5c>)
     dce:	6b12      	ldr	r2, [r2, #48]	; 0x30
     dd0:	4908      	ldr	r1, [pc, #32]	; (df4 <mdb232_init+0x60>)
     dd2:	430a      	orrs	r2, r1
     dd4:	631a      	str	r2, [r3, #48]	; 0x30
     dd6:	4b06      	ldr	r3, [pc, #24]	; (df0 <mdb232_init+0x5c>)
     dd8:	4a05      	ldr	r2, [pc, #20]	; (df0 <mdb232_init+0x5c>)
     dda:	6b92      	ldr	r2, [r2, #56]	; 0x38
     ddc:	2140      	movs	r1, #64	; 0x40
     dde:	430a      	orrs	r2, r1
     de0:	639a      	str	r2, [r3, #56]	; 0x38
     de2:	2006      	movs	r0, #6
     de4:	f7ff ff9c 	bl	d20 <__NVIC_EnableIRQ>
     de8:	46c0      	nop			; (mov r8, r8)
     dea:	46bd      	mov	sp, r7
     dec:	bd80      	pop	{r7, pc}
     dee:	46c0      	nop			; (mov r8, r8)
     df0:	40030000 	.word	0x40030000
     df4:	00000301 	.word	0x00000301

00000df8 <mdb232_send>:
     df8:	b580      	push	{r7, lr}
     dfa:	b084      	sub	sp, #16
     dfc:	af00      	add	r7, sp, #0
     dfe:	6078      	str	r0, [r7, #4]
     e00:	6039      	str	r1, [r7, #0]
     e02:	2300      	movs	r3, #0
     e04:	60fb      	str	r3, [r7, #12]
     e06:	e00e      	b.n	e26 <mdb232_send+0x2e>
     e08:	46c0      	nop			; (mov r8, r8)
     e0a:	4b0e      	ldr	r3, [pc, #56]	; (e44 <mdb232_send+0x4c>)
     e0c:	699b      	ldr	r3, [r3, #24]
     e0e:	2220      	movs	r2, #32
     e10:	4013      	ands	r3, r2
     e12:	d1fa      	bne.n	e0a <mdb232_send+0x12>
     e14:	4a0b      	ldr	r2, [pc, #44]	; (e44 <mdb232_send+0x4c>)
     e16:	687b      	ldr	r3, [r7, #4]
     e18:	1c59      	adds	r1, r3, #1
     e1a:	6079      	str	r1, [r7, #4]
     e1c:	781b      	ldrb	r3, [r3, #0]
     e1e:	6013      	str	r3, [r2, #0]
     e20:	68fb      	ldr	r3, [r7, #12]
     e22:	3301      	adds	r3, #1
     e24:	60fb      	str	r3, [r7, #12]
     e26:	68fa      	ldr	r2, [r7, #12]
     e28:	683b      	ldr	r3, [r7, #0]
     e2a:	429a      	cmp	r2, r3
     e2c:	dbec      	blt.n	e08 <mdb232_send+0x10>
     e2e:	46c0      	nop			; (mov r8, r8)
     e30:	4b04      	ldr	r3, [pc, #16]	; (e44 <mdb232_send+0x4c>)
     e32:	699b      	ldr	r3, [r3, #24]
     e34:	2208      	movs	r2, #8
     e36:	4013      	ands	r3, r2
     e38:	d1fa      	bne.n	e30 <mdb232_send+0x38>
     e3a:	683b      	ldr	r3, [r7, #0]
     e3c:	0018      	movs	r0, r3
     e3e:	46bd      	mov	sp, r7
     e40:	b004      	add	sp, #16
     e42:	bd80      	pop	{r7, pc}
     e44:	40030000 	.word	0x40030000

00000e48 <mdb232_read_inputregs>:
     e48:	b590      	push	{r4, r7, lr}
     e4a:	b085      	sub	sp, #20
     e4c:	af00      	add	r7, sp, #0
     e4e:	0004      	movs	r4, r0
     e50:	0008      	movs	r0, r1
     e52:	0011      	movs	r1, r2
     e54:	1dfb      	adds	r3, r7, #7
     e56:	1c22      	adds	r2, r4, #0
     e58:	701a      	strb	r2, [r3, #0]
     e5a:	1d3b      	adds	r3, r7, #4
     e5c:	1c02      	adds	r2, r0, #0
     e5e:	801a      	strh	r2, [r3, #0]
     e60:	1cbb      	adds	r3, r7, #2
     e62:	1c0a      	adds	r2, r1, #0
     e64:	801a      	strh	r2, [r3, #0]
     e66:	4b28      	ldr	r3, [pc, #160]	; (f08 <mdb232_read_inputregs+0xc0>)
     e68:	60fb      	str	r3, [r7, #12]
     e6a:	68fb      	ldr	r3, [r7, #12]
     e6c:	1c5a      	adds	r2, r3, #1
     e6e:	60fa      	str	r2, [r7, #12]
     e70:	1dfa      	adds	r2, r7, #7
     e72:	7812      	ldrb	r2, [r2, #0]
     e74:	701a      	strb	r2, [r3, #0]
     e76:	68fb      	ldr	r3, [r7, #12]
     e78:	1c5a      	adds	r2, r3, #1
     e7a:	60fa      	str	r2, [r7, #12]
     e7c:	2204      	movs	r2, #4
     e7e:	701a      	strb	r2, [r3, #0]
     e80:	68fb      	ldr	r3, [r7, #12]
     e82:	1c5a      	adds	r2, r3, #1
     e84:	60fa      	str	r2, [r7, #12]
     e86:	1d3a      	adds	r2, r7, #4
     e88:	8812      	ldrh	r2, [r2, #0]
     e8a:	0a12      	lsrs	r2, r2, #8
     e8c:	b292      	uxth	r2, r2
     e8e:	b2d2      	uxtb	r2, r2
     e90:	701a      	strb	r2, [r3, #0]
     e92:	68fb      	ldr	r3, [r7, #12]
     e94:	1c5a      	adds	r2, r3, #1
     e96:	60fa      	str	r2, [r7, #12]
     e98:	1d3a      	adds	r2, r7, #4
     e9a:	8812      	ldrh	r2, [r2, #0]
     e9c:	b2d2      	uxtb	r2, r2
     e9e:	701a      	strb	r2, [r3, #0]
     ea0:	68fb      	ldr	r3, [r7, #12]
     ea2:	1c5a      	adds	r2, r3, #1
     ea4:	60fa      	str	r2, [r7, #12]
     ea6:	1cba      	adds	r2, r7, #2
     ea8:	8812      	ldrh	r2, [r2, #0]
     eaa:	0a12      	lsrs	r2, r2, #8
     eac:	b292      	uxth	r2, r2
     eae:	b2d2      	uxtb	r2, r2
     eb0:	701a      	strb	r2, [r3, #0]
     eb2:	68fb      	ldr	r3, [r7, #12]
     eb4:	1c5a      	adds	r2, r3, #1
     eb6:	60fa      	str	r2, [r7, #12]
     eb8:	1cba      	adds	r2, r7, #2
     eba:	8812      	ldrh	r2, [r2, #0]
     ebc:	b2d2      	uxtb	r2, r2
     ebe:	701a      	strb	r2, [r3, #0]
     ec0:	230a      	movs	r3, #10
     ec2:	18fc      	adds	r4, r7, r3
     ec4:	4b10      	ldr	r3, [pc, #64]	; (f08 <mdb232_read_inputregs+0xc0>)
     ec6:	2106      	movs	r1, #6
     ec8:	0018      	movs	r0, r3
     eca:	f002 f8ef 	bl	30ac <crc16>
     ece:	0003      	movs	r3, r0
     ed0:	8023      	strh	r3, [r4, #0]
     ed2:	68fb      	ldr	r3, [r7, #12]
     ed4:	1c5a      	adds	r2, r3, #1
     ed6:	60fa      	str	r2, [r7, #12]
     ed8:	220a      	movs	r2, #10
     eda:	18ba      	adds	r2, r7, r2
     edc:	8812      	ldrh	r2, [r2, #0]
     ede:	b2d2      	uxtb	r2, r2
     ee0:	701a      	strb	r2, [r3, #0]
     ee2:	68fb      	ldr	r3, [r7, #12]
     ee4:	1c5a      	adds	r2, r3, #1
     ee6:	60fa      	str	r2, [r7, #12]
     ee8:	220a      	movs	r2, #10
     eea:	18ba      	adds	r2, r7, r2
     eec:	8812      	ldrh	r2, [r2, #0]
     eee:	0a12      	lsrs	r2, r2, #8
     ef0:	b292      	uxth	r2, r2
     ef2:	b2d2      	uxtb	r2, r2
     ef4:	701a      	strb	r2, [r3, #0]
     ef6:	4b04      	ldr	r3, [pc, #16]	; (f08 <mdb232_read_inputregs+0xc0>)
     ef8:	2108      	movs	r1, #8
     efa:	0018      	movs	r0, r3
     efc:	f7ff ff7c 	bl	df8 <mdb232_send>
     f00:	46c0      	nop			; (mov r8, r8)
     f02:	46bd      	mov	sp, r7
     f04:	b005      	add	sp, #20
     f06:	bd90      	pop	{r4, r7, pc}
     f08:	200008e8 	.word	0x200008e8

00000f0c <mdb232_readregs>:
     f0c:	b590      	push	{r4, r7, lr}
     f0e:	b085      	sub	sp, #20
     f10:	af00      	add	r7, sp, #0
     f12:	0004      	movs	r4, r0
     f14:	0008      	movs	r0, r1
     f16:	0011      	movs	r1, r2
     f18:	1dfb      	adds	r3, r7, #7
     f1a:	1c22      	adds	r2, r4, #0
     f1c:	701a      	strb	r2, [r3, #0]
     f1e:	1d3b      	adds	r3, r7, #4
     f20:	1c02      	adds	r2, r0, #0
     f22:	801a      	strh	r2, [r3, #0]
     f24:	1cbb      	adds	r3, r7, #2
     f26:	1c0a      	adds	r2, r1, #0
     f28:	801a      	strh	r2, [r3, #0]
     f2a:	4b28      	ldr	r3, [pc, #160]	; (fcc <mdb232_readregs+0xc0>)
     f2c:	60fb      	str	r3, [r7, #12]
     f2e:	68fb      	ldr	r3, [r7, #12]
     f30:	1c5a      	adds	r2, r3, #1
     f32:	60fa      	str	r2, [r7, #12]
     f34:	1dfa      	adds	r2, r7, #7
     f36:	7812      	ldrb	r2, [r2, #0]
     f38:	701a      	strb	r2, [r3, #0]
     f3a:	68fb      	ldr	r3, [r7, #12]
     f3c:	1c5a      	adds	r2, r3, #1
     f3e:	60fa      	str	r2, [r7, #12]
     f40:	2203      	movs	r2, #3
     f42:	701a      	strb	r2, [r3, #0]
     f44:	68fb      	ldr	r3, [r7, #12]
     f46:	1c5a      	adds	r2, r3, #1
     f48:	60fa      	str	r2, [r7, #12]
     f4a:	1d3a      	adds	r2, r7, #4
     f4c:	8812      	ldrh	r2, [r2, #0]
     f4e:	0a12      	lsrs	r2, r2, #8
     f50:	b292      	uxth	r2, r2
     f52:	b2d2      	uxtb	r2, r2
     f54:	701a      	strb	r2, [r3, #0]
     f56:	68fb      	ldr	r3, [r7, #12]
     f58:	1c5a      	adds	r2, r3, #1
     f5a:	60fa      	str	r2, [r7, #12]
     f5c:	1d3a      	adds	r2, r7, #4
     f5e:	8812      	ldrh	r2, [r2, #0]
     f60:	b2d2      	uxtb	r2, r2
     f62:	701a      	strb	r2, [r3, #0]
     f64:	68fb      	ldr	r3, [r7, #12]
     f66:	1c5a      	adds	r2, r3, #1
     f68:	60fa      	str	r2, [r7, #12]
     f6a:	1cba      	adds	r2, r7, #2
     f6c:	8812      	ldrh	r2, [r2, #0]
     f6e:	0a12      	lsrs	r2, r2, #8
     f70:	b292      	uxth	r2, r2
     f72:	b2d2      	uxtb	r2, r2
     f74:	701a      	strb	r2, [r3, #0]
     f76:	68fb      	ldr	r3, [r7, #12]
     f78:	1c5a      	adds	r2, r3, #1
     f7a:	60fa      	str	r2, [r7, #12]
     f7c:	1cba      	adds	r2, r7, #2
     f7e:	8812      	ldrh	r2, [r2, #0]
     f80:	b2d2      	uxtb	r2, r2
     f82:	701a      	strb	r2, [r3, #0]
     f84:	230a      	movs	r3, #10
     f86:	18fc      	adds	r4, r7, r3
     f88:	4b10      	ldr	r3, [pc, #64]	; (fcc <mdb232_readregs+0xc0>)
     f8a:	2106      	movs	r1, #6
     f8c:	0018      	movs	r0, r3
     f8e:	f002 f88d 	bl	30ac <crc16>
     f92:	0003      	movs	r3, r0
     f94:	8023      	strh	r3, [r4, #0]
     f96:	68fb      	ldr	r3, [r7, #12]
     f98:	1c5a      	adds	r2, r3, #1
     f9a:	60fa      	str	r2, [r7, #12]
     f9c:	220a      	movs	r2, #10
     f9e:	18ba      	adds	r2, r7, r2
     fa0:	8812      	ldrh	r2, [r2, #0]
     fa2:	b2d2      	uxtb	r2, r2
     fa4:	701a      	strb	r2, [r3, #0]
     fa6:	68fb      	ldr	r3, [r7, #12]
     fa8:	1c5a      	adds	r2, r3, #1
     faa:	60fa      	str	r2, [r7, #12]
     fac:	220a      	movs	r2, #10
     fae:	18ba      	adds	r2, r7, r2
     fb0:	8812      	ldrh	r2, [r2, #0]
     fb2:	0a12      	lsrs	r2, r2, #8
     fb4:	b292      	uxth	r2, r2
     fb6:	b2d2      	uxtb	r2, r2
     fb8:	701a      	strb	r2, [r3, #0]
     fba:	4b04      	ldr	r3, [pc, #16]	; (fcc <mdb232_readregs+0xc0>)
     fbc:	2108      	movs	r1, #8
     fbe:	0018      	movs	r0, r3
     fc0:	f7ff ff1a 	bl	df8 <mdb232_send>
     fc4:	46c0      	nop			; (mov r8, r8)
     fc6:	46bd      	mov	sp, r7
     fc8:	b005      	add	sp, #20
     fca:	bd90      	pop	{r4, r7, pc}
     fcc:	200008e8 	.word	0x200008e8

00000fd0 <mdb232_bikm_get_torque>:
     fd0:	b580      	push	{r7, lr}
     fd2:	b084      	sub	sp, #16
     fd4:	af00      	add	r7, sp, #0
     fd6:	4b27      	ldr	r3, [pc, #156]	; (1074 <mdb232_bikm_get_torque+0xa4>)
     fd8:	60fb      	str	r3, [r7, #12]
     fda:	2006      	movs	r0, #6
     fdc:	f7ff feba 	bl	d54 <__NVIC_DisableIRQ>
     fe0:	4b25      	ldr	r3, [pc, #148]	; (1078 <mdb232_bikm_get_torque+0xa8>)
     fe2:	681b      	ldr	r3, [r3, #0]
     fe4:	2b00      	cmp	r3, #0
     fe6:	d03c      	beq.n	1062 <mdb232_bikm_get_torque+0x92>
     fe8:	68fb      	ldr	r3, [r7, #12]
     fea:	1c5a      	adds	r2, r3, #1
     fec:	60fa      	str	r2, [r7, #12]
     fee:	781b      	ldrb	r3, [r3, #0]
     ff0:	041b      	lsls	r3, r3, #16
     ff2:	60bb      	str	r3, [r7, #8]
     ff4:	68fb      	ldr	r3, [r7, #12]
     ff6:	1c5a      	adds	r2, r3, #1
     ff8:	60fa      	str	r2, [r7, #12]
     ffa:	781b      	ldrb	r3, [r3, #0]
     ffc:	061b      	lsls	r3, r3, #24
     ffe:	001a      	movs	r2, r3
    1000:	68bb      	ldr	r3, [r7, #8]
    1002:	4313      	orrs	r3, r2
    1004:	60bb      	str	r3, [r7, #8]
    1006:	68fb      	ldr	r3, [r7, #12]
    1008:	1c5a      	adds	r2, r3, #1
    100a:	60fa      	str	r2, [r7, #12]
    100c:	781b      	ldrb	r3, [r3, #0]
    100e:	001a      	movs	r2, r3
    1010:	68bb      	ldr	r3, [r7, #8]
    1012:	4313      	orrs	r3, r2
    1014:	60bb      	str	r3, [r7, #8]
    1016:	68fb      	ldr	r3, [r7, #12]
    1018:	781b      	ldrb	r3, [r3, #0]
    101a:	021b      	lsls	r3, r3, #8
    101c:	001a      	movs	r2, r3
    101e:	68bb      	ldr	r3, [r7, #8]
    1020:	4313      	orrs	r3, r2
    1022:	60bb      	str	r3, [r7, #8]
    1024:	2006      	movs	r0, #6
    1026:	f7ff fe7b 	bl	d20 <__NVIC_EnableIRQ>
    102a:	68bb      	ldr	r3, [r7, #8]
    102c:	0ddb      	lsrs	r3, r3, #23
    102e:	22ff      	movs	r2, #255	; 0xff
    1030:	4013      	ands	r3, r2
    1032:	3b7f      	subs	r3, #127	; 0x7f
    1034:	607b      	str	r3, [r7, #4]
    1036:	68bb      	ldr	r3, [r7, #8]
    1038:	025b      	lsls	r3, r3, #9
    103a:	0a5b      	lsrs	r3, r3, #9
    103c:	2280      	movs	r2, #128	; 0x80
    103e:	0412      	lsls	r2, r2, #16
    1040:	4313      	orrs	r3, r2
    1042:	603b      	str	r3, [r7, #0]
    1044:	687b      	ldr	r3, [r7, #4]
    1046:	220e      	movs	r2, #14
    1048:	1ad3      	subs	r3, r2, r3
    104a:	2201      	movs	r2, #1
    104c:	409a      	lsls	r2, r3
    104e:	0013      	movs	r3, r2
    1050:	001a      	movs	r2, r3
    1052:	683b      	ldr	r3, [r7, #0]
    1054:	18d2      	adds	r2, r2, r3
    1056:	687b      	ldr	r3, [r7, #4]
    1058:	210f      	movs	r1, #15
    105a:	1acb      	subs	r3, r1, r3
    105c:	40da      	lsrs	r2, r3
    105e:	0013      	movs	r3, r2
    1060:	e003      	b.n	106a <mdb232_bikm_get_torque+0x9a>
    1062:	2006      	movs	r0, #6
    1064:	f7ff fe5c 	bl	d20 <__NVIC_EnableIRQ>
    1068:	2300      	movs	r3, #0
    106a:	0018      	movs	r0, r3
    106c:	46bd      	mov	sp, r7
    106e:	b004      	add	sp, #16
    1070:	bd80      	pop	{r7, pc}
    1072:	46c0      	nop			; (mov r8, r8)
    1074:	200008db 	.word	0x200008db
    1078:	200008f8 	.word	0x200008f8

0000107c <UART1_Handler>:
    107c:	b580      	push	{r7, lr}
    107e:	b082      	sub	sp, #8
    1080:	af00      	add	r7, sp, #0
    1082:	4b16      	ldr	r3, [pc, #88]	; (10dc <UART1_Handler+0x60>)
    1084:	2200      	movs	r2, #0
    1086:	601a      	str	r2, [r3, #0]
    1088:	4b15      	ldr	r3, [pc, #84]	; (10e0 <UART1_Handler+0x64>)
    108a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    108c:	2240      	movs	r2, #64	; 0x40
    108e:	4013      	ands	r3, r2
    1090:	d016      	beq.n	10c0 <UART1_Handler+0x44>
    1092:	4b14      	ldr	r3, [pc, #80]	; (10e4 <UART1_Handler+0x68>)
    1094:	603b      	str	r3, [r7, #0]
    1096:	2300      	movs	r3, #0
    1098:	607b      	str	r3, [r7, #4]
    109a:	e009      	b.n	10b0 <UART1_Handler+0x34>
    109c:	683b      	ldr	r3, [r7, #0]
    109e:	1c5a      	adds	r2, r3, #1
    10a0:	603a      	str	r2, [r7, #0]
    10a2:	4a0f      	ldr	r2, [pc, #60]	; (10e0 <UART1_Handler+0x64>)
    10a4:	6812      	ldr	r2, [r2, #0]
    10a6:	b2d2      	uxtb	r2, r2
    10a8:	701a      	strb	r2, [r3, #0]
    10aa:	687b      	ldr	r3, [r7, #4]
    10ac:	3301      	adds	r3, #1
    10ae:	607b      	str	r3, [r7, #4]
    10b0:	687b      	ldr	r3, [r7, #4]
    10b2:	2b0f      	cmp	r3, #15
    10b4:	dc04      	bgt.n	10c0 <UART1_Handler+0x44>
    10b6:	4b0a      	ldr	r3, [pc, #40]	; (10e0 <UART1_Handler+0x64>)
    10b8:	699b      	ldr	r3, [r3, #24]
    10ba:	2210      	movs	r2, #16
    10bc:	4013      	ands	r3, r2
    10be:	d0ed      	beq.n	109c <UART1_Handler+0x20>
    10c0:	4b06      	ldr	r3, [pc, #24]	; (10dc <UART1_Handler+0x60>)
    10c2:	687a      	ldr	r2, [r7, #4]
    10c4:	601a      	str	r2, [r3, #0]
    10c6:	4b08      	ldr	r3, [pc, #32]	; (10e8 <UART1_Handler+0x6c>)
    10c8:	681b      	ldr	r3, [r3, #0]
    10ca:	2102      	movs	r1, #2
    10cc:	0018      	movs	r0, r3
    10ce:	f005 fa31 	bl	6534 <osSignalSet>
    10d2:	46c0      	nop			; (mov r8, r8)
    10d4:	46bd      	mov	sp, r7
    10d6:	b002      	add	sp, #8
    10d8:	bd80      	pop	{r7, pc}
    10da:	46c0      	nop			; (mov r8, r8)
    10dc:	200008f8 	.word	0x200008f8
    10e0:	40030000 	.word	0x40030000
    10e4:	200008d8 	.word	0x200008d8
    10e8:	20000860 	.word	0x20000860

000010ec <xputc>:
    10ec:	b580      	push	{r7, lr}
    10ee:	b082      	sub	sp, #8
    10f0:	af00      	add	r7, sp, #0
    10f2:	0002      	movs	r2, r0
    10f4:	1dfb      	adds	r3, r7, #7
    10f6:	701a      	strb	r2, [r3, #0]
    10f8:	1dfb      	adds	r3, r7, #7
    10fa:	781b      	ldrb	r3, [r3, #0]
    10fc:	2b0a      	cmp	r3, #10
    10fe:	d102      	bne.n	1106 <xputc+0x1a>
    1100:	200d      	movs	r0, #13
    1102:	f7ff fff3 	bl	10ec <xputc>
    1106:	4b0d      	ldr	r3, [pc, #52]	; (113c <xputc+0x50>)
    1108:	681b      	ldr	r3, [r3, #0]
    110a:	2b00      	cmp	r3, #0
    110c:	d008      	beq.n	1120 <xputc+0x34>
    110e:	4b0b      	ldr	r3, [pc, #44]	; (113c <xputc+0x50>)
    1110:	681b      	ldr	r3, [r3, #0]
    1112:	1c59      	adds	r1, r3, #1
    1114:	4a09      	ldr	r2, [pc, #36]	; (113c <xputc+0x50>)
    1116:	6011      	str	r1, [r2, #0]
    1118:	1dfa      	adds	r2, r7, #7
    111a:	7812      	ldrb	r2, [r2, #0]
    111c:	701a      	strb	r2, [r3, #0]
    111e:	e009      	b.n	1134 <xputc+0x48>
    1120:	4b07      	ldr	r3, [pc, #28]	; (1140 <xputc+0x54>)
    1122:	681b      	ldr	r3, [r3, #0]
    1124:	2b00      	cmp	r3, #0
    1126:	d005      	beq.n	1134 <xputc+0x48>
    1128:	4b05      	ldr	r3, [pc, #20]	; (1140 <xputc+0x54>)
    112a:	681b      	ldr	r3, [r3, #0]
    112c:	1dfa      	adds	r2, r7, #7
    112e:	7812      	ldrb	r2, [r2, #0]
    1130:	0010      	movs	r0, r2
    1132:	4798      	blx	r3
    1134:	46bd      	mov	sp, r7
    1136:	b002      	add	sp, #8
    1138:	bd80      	pop	{r7, pc}
    113a:	46c0      	nop			; (mov r8, r8)
    113c:	20000900 	.word	0x20000900
    1140:	200008fc 	.word	0x200008fc

00001144 <xputs>:
    1144:	b580      	push	{r7, lr}
    1146:	b082      	sub	sp, #8
    1148:	af00      	add	r7, sp, #0
    114a:	6078      	str	r0, [r7, #4]
    114c:	e006      	b.n	115c <xputs+0x18>
    114e:	687b      	ldr	r3, [r7, #4]
    1150:	1c5a      	adds	r2, r3, #1
    1152:	607a      	str	r2, [r7, #4]
    1154:	781b      	ldrb	r3, [r3, #0]
    1156:	0018      	movs	r0, r3
    1158:	f7ff ffc8 	bl	10ec <xputc>
    115c:	687b      	ldr	r3, [r7, #4]
    115e:	781b      	ldrb	r3, [r3, #0]
    1160:	2b00      	cmp	r3, #0
    1162:	d1f4      	bne.n	114e <xputs+0xa>
    1164:	46c0      	nop			; (mov r8, r8)
    1166:	46bd      	mov	sp, r7
    1168:	b002      	add	sp, #8
    116a:	bd80      	pop	{r7, pc}

0000116c <xfputs>:
    116c:	b580      	push	{r7, lr}
    116e:	b084      	sub	sp, #16
    1170:	af00      	add	r7, sp, #0
    1172:	6078      	str	r0, [r7, #4]
    1174:	6039      	str	r1, [r7, #0]
    1176:	4b0c      	ldr	r3, [pc, #48]	; (11a8 <xfputs+0x3c>)
    1178:	681b      	ldr	r3, [r3, #0]
    117a:	60fb      	str	r3, [r7, #12]
    117c:	4b0a      	ldr	r3, [pc, #40]	; (11a8 <xfputs+0x3c>)
    117e:	687a      	ldr	r2, [r7, #4]
    1180:	601a      	str	r2, [r3, #0]
    1182:	e006      	b.n	1192 <xfputs+0x26>
    1184:	683b      	ldr	r3, [r7, #0]
    1186:	1c5a      	adds	r2, r3, #1
    1188:	603a      	str	r2, [r7, #0]
    118a:	781b      	ldrb	r3, [r3, #0]
    118c:	0018      	movs	r0, r3
    118e:	f7ff ffad 	bl	10ec <xputc>
    1192:	683b      	ldr	r3, [r7, #0]
    1194:	781b      	ldrb	r3, [r3, #0]
    1196:	2b00      	cmp	r3, #0
    1198:	d1f4      	bne.n	1184 <xfputs+0x18>
    119a:	4b03      	ldr	r3, [pc, #12]	; (11a8 <xfputs+0x3c>)
    119c:	68fa      	ldr	r2, [r7, #12]
    119e:	601a      	str	r2, [r3, #0]
    11a0:	46c0      	nop			; (mov r8, r8)
    11a2:	46bd      	mov	sp, r7
    11a4:	b004      	add	sp, #16
    11a6:	bd80      	pop	{r7, pc}
    11a8:	200008fc 	.word	0x200008fc

000011ac <xvprintf>:
    11ac:	b580      	push	{r7, lr}
    11ae:	b08e      	sub	sp, #56	; 0x38
    11b0:	af00      	add	r7, sp, #0
    11b2:	6078      	str	r0, [r7, #4]
    11b4:	6039      	str	r1, [r7, #0]
    11b6:	687b      	ldr	r3, [r7, #4]
    11b8:	1c5a      	adds	r2, r3, #1
    11ba:	607a      	str	r2, [r7, #4]
    11bc:	221f      	movs	r2, #31
    11be:	18ba      	adds	r2, r7, r2
    11c0:	781b      	ldrb	r3, [r3, #0]
    11c2:	7013      	strb	r3, [r2, #0]
    11c4:	231f      	movs	r3, #31
    11c6:	18fb      	adds	r3, r7, r3
    11c8:	781b      	ldrb	r3, [r3, #0]
    11ca:	2b00      	cmp	r3, #0
    11cc:	d100      	bne.n	11d0 <xvprintf+0x24>
    11ce:	e172      	b.n	14b6 <xvprintf+0x30a>
    11d0:	231f      	movs	r3, #31
    11d2:	18fb      	adds	r3, r7, r3
    11d4:	781b      	ldrb	r3, [r3, #0]
    11d6:	2b25      	cmp	r3, #37	; 0x25
    11d8:	d006      	beq.n	11e8 <xvprintf+0x3c>
    11da:	231f      	movs	r3, #31
    11dc:	18fb      	adds	r3, r7, r3
    11de:	781b      	ldrb	r3, [r3, #0]
    11e0:	0018      	movs	r0, r3
    11e2:	f7ff ff83 	bl	10ec <xputc>
    11e6:	e165      	b.n	14b4 <xvprintf+0x308>
    11e8:	2300      	movs	r3, #0
    11ea:	627b      	str	r3, [r7, #36]	; 0x24
    11ec:	687b      	ldr	r3, [r7, #4]
    11ee:	1c5a      	adds	r2, r3, #1
    11f0:	607a      	str	r2, [r7, #4]
    11f2:	221f      	movs	r2, #31
    11f4:	18ba      	adds	r2, r7, r2
    11f6:	781b      	ldrb	r3, [r3, #0]
    11f8:	7013      	strb	r3, [r2, #0]
    11fa:	231f      	movs	r3, #31
    11fc:	18fb      	adds	r3, r7, r3
    11fe:	781b      	ldrb	r3, [r3, #0]
    1200:	2b30      	cmp	r3, #48	; 0x30
    1202:	d109      	bne.n	1218 <xvprintf+0x6c>
    1204:	2301      	movs	r3, #1
    1206:	627b      	str	r3, [r7, #36]	; 0x24
    1208:	687b      	ldr	r3, [r7, #4]
    120a:	1c5a      	adds	r2, r3, #1
    120c:	607a      	str	r2, [r7, #4]
    120e:	221f      	movs	r2, #31
    1210:	18ba      	adds	r2, r7, r2
    1212:	781b      	ldrb	r3, [r3, #0]
    1214:	7013      	strb	r3, [r2, #0]
    1216:	e00d      	b.n	1234 <xvprintf+0x88>
    1218:	231f      	movs	r3, #31
    121a:	18fb      	adds	r3, r7, r3
    121c:	781b      	ldrb	r3, [r3, #0]
    121e:	2b2d      	cmp	r3, #45	; 0x2d
    1220:	d108      	bne.n	1234 <xvprintf+0x88>
    1222:	2302      	movs	r3, #2
    1224:	627b      	str	r3, [r7, #36]	; 0x24
    1226:	687b      	ldr	r3, [r7, #4]
    1228:	1c5a      	adds	r2, r3, #1
    122a:	607a      	str	r2, [r7, #4]
    122c:	221f      	movs	r2, #31
    122e:	18ba      	adds	r2, r7, r2
    1230:	781b      	ldrb	r3, [r3, #0]
    1232:	7013      	strb	r3, [r2, #0]
    1234:	2300      	movs	r3, #0
    1236:	62bb      	str	r3, [r7, #40]	; 0x28
    1238:	e012      	b.n	1260 <xvprintf+0xb4>
    123a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    123c:	0013      	movs	r3, r2
    123e:	009b      	lsls	r3, r3, #2
    1240:	189b      	adds	r3, r3, r2
    1242:	005b      	lsls	r3, r3, #1
    1244:	001a      	movs	r2, r3
    1246:	231f      	movs	r3, #31
    1248:	18fb      	adds	r3, r7, r3
    124a:	781b      	ldrb	r3, [r3, #0]
    124c:	18d3      	adds	r3, r2, r3
    124e:	3b30      	subs	r3, #48	; 0x30
    1250:	62bb      	str	r3, [r7, #40]	; 0x28
    1252:	687b      	ldr	r3, [r7, #4]
    1254:	1c5a      	adds	r2, r3, #1
    1256:	607a      	str	r2, [r7, #4]
    1258:	221f      	movs	r2, #31
    125a:	18ba      	adds	r2, r7, r2
    125c:	781b      	ldrb	r3, [r3, #0]
    125e:	7013      	strb	r3, [r2, #0]
    1260:	231f      	movs	r3, #31
    1262:	18fb      	adds	r3, r7, r3
    1264:	781b      	ldrb	r3, [r3, #0]
    1266:	2b2f      	cmp	r3, #47	; 0x2f
    1268:	d904      	bls.n	1274 <xvprintf+0xc8>
    126a:	231f      	movs	r3, #31
    126c:	18fb      	adds	r3, r7, r3
    126e:	781b      	ldrb	r3, [r3, #0]
    1270:	2b39      	cmp	r3, #57	; 0x39
    1272:	d9e2      	bls.n	123a <xvprintf+0x8e>
    1274:	231f      	movs	r3, #31
    1276:	18fb      	adds	r3, r7, r3
    1278:	781b      	ldrb	r3, [r3, #0]
    127a:	2b6c      	cmp	r3, #108	; 0x6c
    127c:	d004      	beq.n	1288 <xvprintf+0xdc>
    127e:	231f      	movs	r3, #31
    1280:	18fb      	adds	r3, r7, r3
    1282:	781b      	ldrb	r3, [r3, #0]
    1284:	2b4c      	cmp	r3, #76	; 0x4c
    1286:	d10a      	bne.n	129e <xvprintf+0xf2>
    1288:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    128a:	2204      	movs	r2, #4
    128c:	4313      	orrs	r3, r2
    128e:	627b      	str	r3, [r7, #36]	; 0x24
    1290:	687b      	ldr	r3, [r7, #4]
    1292:	1c5a      	adds	r2, r3, #1
    1294:	607a      	str	r2, [r7, #4]
    1296:	221f      	movs	r2, #31
    1298:	18ba      	adds	r2, r7, r2
    129a:	781b      	ldrb	r3, [r3, #0]
    129c:	7013      	strb	r3, [r2, #0]
    129e:	231f      	movs	r3, #31
    12a0:	18fb      	adds	r3, r7, r3
    12a2:	781b      	ldrb	r3, [r3, #0]
    12a4:	2b00      	cmp	r3, #0
    12a6:	d100      	bne.n	12aa <xvprintf+0xfe>
    12a8:	e107      	b.n	14ba <xvprintf+0x30e>
    12aa:	231e      	movs	r3, #30
    12ac:	18fb      	adds	r3, r7, r3
    12ae:	221f      	movs	r2, #31
    12b0:	18ba      	adds	r2, r7, r2
    12b2:	7812      	ldrb	r2, [r2, #0]
    12b4:	701a      	strb	r2, [r3, #0]
    12b6:	231e      	movs	r3, #30
    12b8:	18fb      	adds	r3, r7, r3
    12ba:	781b      	ldrb	r3, [r3, #0]
    12bc:	2b60      	cmp	r3, #96	; 0x60
    12be:	d906      	bls.n	12ce <xvprintf+0x122>
    12c0:	231e      	movs	r3, #30
    12c2:	18fb      	adds	r3, r7, r3
    12c4:	221e      	movs	r2, #30
    12c6:	18ba      	adds	r2, r7, r2
    12c8:	7812      	ldrb	r2, [r2, #0]
    12ca:	3a20      	subs	r2, #32
    12cc:	701a      	strb	r2, [r3, #0]
    12ce:	231e      	movs	r3, #30
    12d0:	18fb      	adds	r3, r7, r3
    12d2:	781b      	ldrb	r3, [r3, #0]
    12d4:	3b42      	subs	r3, #66	; 0x42
    12d6:	2b16      	cmp	r3, #22
    12d8:	d847      	bhi.n	136a <xvprintf+0x1be>
    12da:	009a      	lsls	r2, r3, #2
    12dc:	4b79      	ldr	r3, [pc, #484]	; (14c4 <xvprintf+0x318>)
    12de:	18d3      	adds	r3, r2, r3
    12e0:	681b      	ldr	r3, [r3, #0]
    12e2:	469f      	mov	pc, r3
    12e4:	683b      	ldr	r3, [r7, #0]
    12e6:	1d1a      	adds	r2, r3, #4
    12e8:	603a      	str	r2, [r7, #0]
    12ea:	681b      	ldr	r3, [r3, #0]
    12ec:	61bb      	str	r3, [r7, #24]
    12ee:	2300      	movs	r3, #0
    12f0:	62fb      	str	r3, [r7, #44]	; 0x2c
    12f2:	e002      	b.n	12fa <xvprintf+0x14e>
    12f4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12f6:	3301      	adds	r3, #1
    12f8:	62fb      	str	r3, [r7, #44]	; 0x2c
    12fa:	69ba      	ldr	r2, [r7, #24]
    12fc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12fe:	18d3      	adds	r3, r2, r3
    1300:	781b      	ldrb	r3, [r3, #0]
    1302:	2b00      	cmp	r3, #0
    1304:	d1f6      	bne.n	12f4 <xvprintf+0x148>
    1306:	e002      	b.n	130e <xvprintf+0x162>
    1308:	2020      	movs	r0, #32
    130a:	f7ff feef 	bl	10ec <xputc>
    130e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1310:	2202      	movs	r2, #2
    1312:	4013      	ands	r3, r2
    1314:	d105      	bne.n	1322 <xvprintf+0x176>
    1316:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1318:	1c5a      	adds	r2, r3, #1
    131a:	62fa      	str	r2, [r7, #44]	; 0x2c
    131c:	6aba      	ldr	r2, [r7, #40]	; 0x28
    131e:	4293      	cmp	r3, r2
    1320:	d3f2      	bcc.n	1308 <xvprintf+0x15c>
    1322:	69bb      	ldr	r3, [r7, #24]
    1324:	0018      	movs	r0, r3
    1326:	f7ff ff0d 	bl	1144 <xputs>
    132a:	e002      	b.n	1332 <xvprintf+0x186>
    132c:	2020      	movs	r0, #32
    132e:	f7ff fedd 	bl	10ec <xputc>
    1332:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1334:	1c5a      	adds	r2, r3, #1
    1336:	62fa      	str	r2, [r7, #44]	; 0x2c
    1338:	6aba      	ldr	r2, [r7, #40]	; 0x28
    133a:	4293      	cmp	r3, r2
    133c:	d3f6      	bcc.n	132c <xvprintf+0x180>
    133e:	e0b9      	b.n	14b4 <xvprintf+0x308>
    1340:	683b      	ldr	r3, [r7, #0]
    1342:	1d1a      	adds	r2, r3, #4
    1344:	603a      	str	r2, [r7, #0]
    1346:	681b      	ldr	r3, [r3, #0]
    1348:	b2db      	uxtb	r3, r3
    134a:	0018      	movs	r0, r3
    134c:	f7ff fece 	bl	10ec <xputc>
    1350:	e0b0      	b.n	14b4 <xvprintf+0x308>
    1352:	2302      	movs	r3, #2
    1354:	637b      	str	r3, [r7, #52]	; 0x34
    1356:	e00f      	b.n	1378 <xvprintf+0x1cc>
    1358:	2308      	movs	r3, #8
    135a:	637b      	str	r3, [r7, #52]	; 0x34
    135c:	e00c      	b.n	1378 <xvprintf+0x1cc>
    135e:	230a      	movs	r3, #10
    1360:	637b      	str	r3, [r7, #52]	; 0x34
    1362:	e009      	b.n	1378 <xvprintf+0x1cc>
    1364:	2310      	movs	r3, #16
    1366:	637b      	str	r3, [r7, #52]	; 0x34
    1368:	e006      	b.n	1378 <xvprintf+0x1cc>
    136a:	231f      	movs	r3, #31
    136c:	18fb      	adds	r3, r7, r3
    136e:	781b      	ldrb	r3, [r3, #0]
    1370:	0018      	movs	r0, r3
    1372:	f7ff febb 	bl	10ec <xputc>
    1376:	e09d      	b.n	14b4 <xvprintf+0x308>
    1378:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    137a:	2204      	movs	r2, #4
    137c:	4013      	ands	r3, r2
    137e:	d004      	beq.n	138a <xvprintf+0x1de>
    1380:	683b      	ldr	r3, [r7, #0]
    1382:	1d1a      	adds	r2, r3, #4
    1384:	603a      	str	r2, [r7, #0]
    1386:	681b      	ldr	r3, [r3, #0]
    1388:	e00d      	b.n	13a6 <xvprintf+0x1fa>
    138a:	231e      	movs	r3, #30
    138c:	18fb      	adds	r3, r7, r3
    138e:	781b      	ldrb	r3, [r3, #0]
    1390:	2b44      	cmp	r3, #68	; 0x44
    1392:	d104      	bne.n	139e <xvprintf+0x1f2>
    1394:	683b      	ldr	r3, [r7, #0]
    1396:	1d1a      	adds	r2, r3, #4
    1398:	603a      	str	r2, [r7, #0]
    139a:	681b      	ldr	r3, [r3, #0]
    139c:	e003      	b.n	13a6 <xvprintf+0x1fa>
    139e:	683b      	ldr	r3, [r7, #0]
    13a0:	1d1a      	adds	r2, r3, #4
    13a2:	603a      	str	r2, [r7, #0]
    13a4:	681b      	ldr	r3, [r3, #0]
    13a6:	623b      	str	r3, [r7, #32]
    13a8:	231e      	movs	r3, #30
    13aa:	18fb      	adds	r3, r7, r3
    13ac:	781b      	ldrb	r3, [r3, #0]
    13ae:	2b44      	cmp	r3, #68	; 0x44
    13b0:	d109      	bne.n	13c6 <xvprintf+0x21a>
    13b2:	6a3b      	ldr	r3, [r7, #32]
    13b4:	2b00      	cmp	r3, #0
    13b6:	da06      	bge.n	13c6 <xvprintf+0x21a>
    13b8:	6a3b      	ldr	r3, [r7, #32]
    13ba:	425b      	negs	r3, r3
    13bc:	623b      	str	r3, [r7, #32]
    13be:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13c0:	2208      	movs	r2, #8
    13c2:	4313      	orrs	r3, r2
    13c4:	627b      	str	r3, [r7, #36]	; 0x24
    13c6:	2300      	movs	r3, #0
    13c8:	633b      	str	r3, [r7, #48]	; 0x30
    13ca:	6a3b      	ldr	r3, [r7, #32]
    13cc:	6b79      	ldr	r1, [r7, #52]	; 0x34
    13ce:	0018      	movs	r0, r3
    13d0:	f003 f9d8 	bl	4784 <__aeabi_uidivmod>
    13d4:	000b      	movs	r3, r1
    13d6:	001a      	movs	r2, r3
    13d8:	231e      	movs	r3, #30
    13da:	18fb      	adds	r3, r7, r3
    13dc:	701a      	strb	r2, [r3, #0]
    13de:	6b79      	ldr	r1, [r7, #52]	; 0x34
    13e0:	6a38      	ldr	r0, [r7, #32]
    13e2:	f003 f949 	bl	4678 <__aeabi_uidiv>
    13e6:	0003      	movs	r3, r0
    13e8:	623b      	str	r3, [r7, #32]
    13ea:	231e      	movs	r3, #30
    13ec:	18fb      	adds	r3, r7, r3
    13ee:	781b      	ldrb	r3, [r3, #0]
    13f0:	2b09      	cmp	r3, #9
    13f2:	d90e      	bls.n	1412 <xvprintf+0x266>
    13f4:	231f      	movs	r3, #31
    13f6:	18fb      	adds	r3, r7, r3
    13f8:	781b      	ldrb	r3, [r3, #0]
    13fa:	2b78      	cmp	r3, #120	; 0x78
    13fc:	d101      	bne.n	1402 <xvprintf+0x256>
    13fe:	2327      	movs	r3, #39	; 0x27
    1400:	e000      	b.n	1404 <xvprintf+0x258>
    1402:	2307      	movs	r3, #7
    1404:	221e      	movs	r2, #30
    1406:	18ba      	adds	r2, r7, r2
    1408:	211e      	movs	r1, #30
    140a:	1879      	adds	r1, r7, r1
    140c:	7809      	ldrb	r1, [r1, #0]
    140e:	185b      	adds	r3, r3, r1
    1410:	7013      	strb	r3, [r2, #0]
    1412:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1414:	1c5a      	adds	r2, r3, #1
    1416:	633a      	str	r2, [r7, #48]	; 0x30
    1418:	221e      	movs	r2, #30
    141a:	18ba      	adds	r2, r7, r2
    141c:	7812      	ldrb	r2, [r2, #0]
    141e:	3230      	adds	r2, #48	; 0x30
    1420:	b2d1      	uxtb	r1, r2
    1422:	2208      	movs	r2, #8
    1424:	18ba      	adds	r2, r7, r2
    1426:	54d1      	strb	r1, [r2, r3]
    1428:	6a3b      	ldr	r3, [r7, #32]
    142a:	2b00      	cmp	r3, #0
    142c:	d002      	beq.n	1434 <xvprintf+0x288>
    142e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1430:	2b0f      	cmp	r3, #15
    1432:	d9ca      	bls.n	13ca <xvprintf+0x21e>
    1434:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1436:	2208      	movs	r2, #8
    1438:	4013      	ands	r3, r2
    143a:	d006      	beq.n	144a <xvprintf+0x29e>
    143c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    143e:	1c5a      	adds	r2, r3, #1
    1440:	633a      	str	r2, [r7, #48]	; 0x30
    1442:	2208      	movs	r2, #8
    1444:	18ba      	adds	r2, r7, r2
    1446:	212d      	movs	r1, #45	; 0x2d
    1448:	54d1      	strb	r1, [r2, r3]
    144a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    144c:	62fb      	str	r3, [r7, #44]	; 0x2c
    144e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1450:	2201      	movs	r2, #1
    1452:	4013      	ands	r3, r2
    1454:	d001      	beq.n	145a <xvprintf+0x2ae>
    1456:	2230      	movs	r2, #48	; 0x30
    1458:	e000      	b.n	145c <xvprintf+0x2b0>
    145a:	2220      	movs	r2, #32
    145c:	231e      	movs	r3, #30
    145e:	18fb      	adds	r3, r7, r3
    1460:	701a      	strb	r2, [r3, #0]
    1462:	e005      	b.n	1470 <xvprintf+0x2c4>
    1464:	231e      	movs	r3, #30
    1466:	18fb      	adds	r3, r7, r3
    1468:	781b      	ldrb	r3, [r3, #0]
    146a:	0018      	movs	r0, r3
    146c:	f7ff fe3e 	bl	10ec <xputc>
    1470:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1472:	2202      	movs	r2, #2
    1474:	4013      	ands	r3, r2
    1476:	d105      	bne.n	1484 <xvprintf+0x2d8>
    1478:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    147a:	1c5a      	adds	r2, r3, #1
    147c:	62fa      	str	r2, [r7, #44]	; 0x2c
    147e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1480:	4293      	cmp	r3, r2
    1482:	d3ef      	bcc.n	1464 <xvprintf+0x2b8>
    1484:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1486:	3b01      	subs	r3, #1
    1488:	633b      	str	r3, [r7, #48]	; 0x30
    148a:	2308      	movs	r3, #8
    148c:	18fa      	adds	r2, r7, r3
    148e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1490:	18d3      	adds	r3, r2, r3
    1492:	781b      	ldrb	r3, [r3, #0]
    1494:	0018      	movs	r0, r3
    1496:	f7ff fe29 	bl	10ec <xputc>
    149a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    149c:	2b00      	cmp	r3, #0
    149e:	d1f1      	bne.n	1484 <xvprintf+0x2d8>
    14a0:	e002      	b.n	14a8 <xvprintf+0x2fc>
    14a2:	2020      	movs	r0, #32
    14a4:	f7ff fe22 	bl	10ec <xputc>
    14a8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14aa:	1c5a      	adds	r2, r3, #1
    14ac:	62fa      	str	r2, [r7, #44]	; 0x2c
    14ae:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14b0:	4293      	cmp	r3, r2
    14b2:	d3f6      	bcc.n	14a2 <xvprintf+0x2f6>
    14b4:	e67f      	b.n	11b6 <xvprintf+0xa>
    14b6:	46c0      	nop			; (mov r8, r8)
    14b8:	e000      	b.n	14bc <xvprintf+0x310>
    14ba:	46c0      	nop			; (mov r8, r8)
    14bc:	46c0      	nop			; (mov r8, r8)
    14be:	46bd      	mov	sp, r7
    14c0:	b00e      	add	sp, #56	; 0x38
    14c2:	bd80      	pop	{r7, pc}
    14c4:	00008860 	.word	0x00008860

000014c8 <xprintf>:
    14c8:	b40f      	push	{r0, r1, r2, r3}
    14ca:	b580      	push	{r7, lr}
    14cc:	b082      	sub	sp, #8
    14ce:	af00      	add	r7, sp, #0
    14d0:	2314      	movs	r3, #20
    14d2:	18fb      	adds	r3, r7, r3
    14d4:	607b      	str	r3, [r7, #4]
    14d6:	687a      	ldr	r2, [r7, #4]
    14d8:	693b      	ldr	r3, [r7, #16]
    14da:	0011      	movs	r1, r2
    14dc:	0018      	movs	r0, r3
    14de:	f7ff fe65 	bl	11ac <xvprintf>
    14e2:	46c0      	nop			; (mov r8, r8)
    14e4:	46bd      	mov	sp, r7
    14e6:	b002      	add	sp, #8
    14e8:	bc80      	pop	{r7}
    14ea:	bc08      	pop	{r3}
    14ec:	b004      	add	sp, #16
    14ee:	4718      	bx	r3

000014f0 <xsprintf>:
    14f0:	b40e      	push	{r1, r2, r3}
    14f2:	b580      	push	{r7, lr}
    14f4:	b085      	sub	sp, #20
    14f6:	af00      	add	r7, sp, #0
    14f8:	6078      	str	r0, [r7, #4]
    14fa:	4b0d      	ldr	r3, [pc, #52]	; (1530 <xsprintf+0x40>)
    14fc:	687a      	ldr	r2, [r7, #4]
    14fe:	601a      	str	r2, [r3, #0]
    1500:	2320      	movs	r3, #32
    1502:	18fb      	adds	r3, r7, r3
    1504:	60fb      	str	r3, [r7, #12]
    1506:	68fa      	ldr	r2, [r7, #12]
    1508:	69fb      	ldr	r3, [r7, #28]
    150a:	0011      	movs	r1, r2
    150c:	0018      	movs	r0, r3
    150e:	f7ff fe4d 	bl	11ac <xvprintf>
    1512:	4b07      	ldr	r3, [pc, #28]	; (1530 <xsprintf+0x40>)
    1514:	681b      	ldr	r3, [r3, #0]
    1516:	2200      	movs	r2, #0
    1518:	701a      	strb	r2, [r3, #0]
    151a:	4b05      	ldr	r3, [pc, #20]	; (1530 <xsprintf+0x40>)
    151c:	2200      	movs	r2, #0
    151e:	601a      	str	r2, [r3, #0]
    1520:	46c0      	nop			; (mov r8, r8)
    1522:	46bd      	mov	sp, r7
    1524:	b005      	add	sp, #20
    1526:	bc80      	pop	{r7}
    1528:	bc08      	pop	{r3}
    152a:	b003      	add	sp, #12
    152c:	4718      	bx	r3
    152e:	46c0      	nop			; (mov r8, r8)
    1530:	20000900 	.word	0x20000900

00001534 <xfprintf>:
    1534:	b40e      	push	{r1, r2, r3}
    1536:	b580      	push	{r7, lr}
    1538:	b085      	sub	sp, #20
    153a:	af00      	add	r7, sp, #0
    153c:	6078      	str	r0, [r7, #4]
    153e:	4b0c      	ldr	r3, [pc, #48]	; (1570 <xfprintf+0x3c>)
    1540:	681b      	ldr	r3, [r3, #0]
    1542:	60fb      	str	r3, [r7, #12]
    1544:	4b0a      	ldr	r3, [pc, #40]	; (1570 <xfprintf+0x3c>)
    1546:	687a      	ldr	r2, [r7, #4]
    1548:	601a      	str	r2, [r3, #0]
    154a:	2320      	movs	r3, #32
    154c:	18fb      	adds	r3, r7, r3
    154e:	60bb      	str	r3, [r7, #8]
    1550:	68ba      	ldr	r2, [r7, #8]
    1552:	69fb      	ldr	r3, [r7, #28]
    1554:	0011      	movs	r1, r2
    1556:	0018      	movs	r0, r3
    1558:	f7ff fe28 	bl	11ac <xvprintf>
    155c:	4b04      	ldr	r3, [pc, #16]	; (1570 <xfprintf+0x3c>)
    155e:	68fa      	ldr	r2, [r7, #12]
    1560:	601a      	str	r2, [r3, #0]
    1562:	46c0      	nop			; (mov r8, r8)
    1564:	46bd      	mov	sp, r7
    1566:	b005      	add	sp, #20
    1568:	bc80      	pop	{r7}
    156a:	bc08      	pop	{r3}
    156c:	b003      	add	sp, #12
    156e:	4718      	bx	r3
    1570:	200008fc 	.word	0x200008fc

00001574 <put_dump>:
    1574:	b580      	push	{r7, lr}
    1576:	b088      	sub	sp, #32
    1578:	af00      	add	r7, sp, #0
    157a:	60f8      	str	r0, [r7, #12]
    157c:	60b9      	str	r1, [r7, #8]
    157e:	607a      	str	r2, [r7, #4]
    1580:	603b      	str	r3, [r7, #0]
    1582:	68ba      	ldr	r2, [r7, #8]
    1584:	4b38      	ldr	r3, [pc, #224]	; (1668 <put_dump+0xf4>)
    1586:	0011      	movs	r1, r2
    1588:	0018      	movs	r0, r3
    158a:	f7ff ff9d 	bl	14c8 <xprintf>
    158e:	683b      	ldr	r3, [r7, #0]
    1590:	2b02      	cmp	r3, #2
    1592:	d03c      	beq.n	160e <put_dump+0x9a>
    1594:	2b04      	cmp	r3, #4
    1596:	d04d      	beq.n	1634 <put_dump+0xc0>
    1598:	2b01      	cmp	r3, #1
    159a:	d15d      	bne.n	1658 <put_dump+0xe4>
    159c:	68fb      	ldr	r3, [r7, #12]
    159e:	613b      	str	r3, [r7, #16]
    15a0:	2300      	movs	r3, #0
    15a2:	61fb      	str	r3, [r7, #28]
    15a4:	e00c      	b.n	15c0 <put_dump+0x4c>
    15a6:	69fb      	ldr	r3, [r7, #28]
    15a8:	693a      	ldr	r2, [r7, #16]
    15aa:	18d3      	adds	r3, r2, r3
    15ac:	781b      	ldrb	r3, [r3, #0]
    15ae:	001a      	movs	r2, r3
    15b0:	4b2e      	ldr	r3, [pc, #184]	; (166c <put_dump+0xf8>)
    15b2:	0011      	movs	r1, r2
    15b4:	0018      	movs	r0, r3
    15b6:	f7ff ff87 	bl	14c8 <xprintf>
    15ba:	69fb      	ldr	r3, [r7, #28]
    15bc:	3301      	adds	r3, #1
    15be:	61fb      	str	r3, [r7, #28]
    15c0:	69fa      	ldr	r2, [r7, #28]
    15c2:	687b      	ldr	r3, [r7, #4]
    15c4:	429a      	cmp	r2, r3
    15c6:	dbee      	blt.n	15a6 <put_dump+0x32>
    15c8:	2020      	movs	r0, #32
    15ca:	f7ff fd8f 	bl	10ec <xputc>
    15ce:	2300      	movs	r3, #0
    15d0:	61fb      	str	r3, [r7, #28]
    15d2:	e017      	b.n	1604 <put_dump+0x90>
    15d4:	69fb      	ldr	r3, [r7, #28]
    15d6:	693a      	ldr	r2, [r7, #16]
    15d8:	18d3      	adds	r3, r2, r3
    15da:	781b      	ldrb	r3, [r3, #0]
    15dc:	2b1f      	cmp	r3, #31
    15de:	d90a      	bls.n	15f6 <put_dump+0x82>
    15e0:	69fb      	ldr	r3, [r7, #28]
    15e2:	693a      	ldr	r2, [r7, #16]
    15e4:	18d3      	adds	r3, r2, r3
    15e6:	781b      	ldrb	r3, [r3, #0]
    15e8:	2b7e      	cmp	r3, #126	; 0x7e
    15ea:	d804      	bhi.n	15f6 <put_dump+0x82>
    15ec:	69fb      	ldr	r3, [r7, #28]
    15ee:	693a      	ldr	r2, [r7, #16]
    15f0:	18d3      	adds	r3, r2, r3
    15f2:	781b      	ldrb	r3, [r3, #0]
    15f4:	e000      	b.n	15f8 <put_dump+0x84>
    15f6:	232e      	movs	r3, #46	; 0x2e
    15f8:	0018      	movs	r0, r3
    15fa:	f7ff fd77 	bl	10ec <xputc>
    15fe:	69fb      	ldr	r3, [r7, #28]
    1600:	3301      	adds	r3, #1
    1602:	61fb      	str	r3, [r7, #28]
    1604:	69fa      	ldr	r2, [r7, #28]
    1606:	687b      	ldr	r3, [r7, #4]
    1608:	429a      	cmp	r2, r3
    160a:	dbe3      	blt.n	15d4 <put_dump+0x60>
    160c:	e024      	b.n	1658 <put_dump+0xe4>
    160e:	68fb      	ldr	r3, [r7, #12]
    1610:	61bb      	str	r3, [r7, #24]
    1612:	69bb      	ldr	r3, [r7, #24]
    1614:	1c9a      	adds	r2, r3, #2
    1616:	61ba      	str	r2, [r7, #24]
    1618:	881b      	ldrh	r3, [r3, #0]
    161a:	001a      	movs	r2, r3
    161c:	4b14      	ldr	r3, [pc, #80]	; (1670 <put_dump+0xfc>)
    161e:	0011      	movs	r1, r2
    1620:	0018      	movs	r0, r3
    1622:	f7ff ff51 	bl	14c8 <xprintf>
    1626:	687b      	ldr	r3, [r7, #4]
    1628:	3b01      	subs	r3, #1
    162a:	607b      	str	r3, [r7, #4]
    162c:	687b      	ldr	r3, [r7, #4]
    162e:	2b00      	cmp	r3, #0
    1630:	d1ef      	bne.n	1612 <put_dump+0x9e>
    1632:	e011      	b.n	1658 <put_dump+0xe4>
    1634:	68fb      	ldr	r3, [r7, #12]
    1636:	617b      	str	r3, [r7, #20]
    1638:	697b      	ldr	r3, [r7, #20]
    163a:	1d1a      	adds	r2, r3, #4
    163c:	617a      	str	r2, [r7, #20]
    163e:	681a      	ldr	r2, [r3, #0]
    1640:	4b0c      	ldr	r3, [pc, #48]	; (1674 <put_dump+0x100>)
    1642:	0011      	movs	r1, r2
    1644:	0018      	movs	r0, r3
    1646:	f7ff ff3f 	bl	14c8 <xprintf>
    164a:	687b      	ldr	r3, [r7, #4]
    164c:	3b01      	subs	r3, #1
    164e:	607b      	str	r3, [r7, #4]
    1650:	687b      	ldr	r3, [r7, #4]
    1652:	2b00      	cmp	r3, #0
    1654:	d1f0      	bne.n	1638 <put_dump+0xc4>
    1656:	46c0      	nop			; (mov r8, r8)
    1658:	200a      	movs	r0, #10
    165a:	f7ff fd47 	bl	10ec <xputc>
    165e:	46c0      	nop			; (mov r8, r8)
    1660:	46bd      	mov	sp, r7
    1662:	b008      	add	sp, #32
    1664:	bd80      	pop	{r7, pc}
    1666:	46c0      	nop			; (mov r8, r8)
    1668:	000088bc 	.word	0x000088bc
    166c:	000088c4 	.word	0x000088c4
    1670:	000088cc 	.word	0x000088cc
    1674:	000088d4 	.word	0x000088d4

00001678 <xgets>:
    1678:	b580      	push	{r7, lr}
    167a:	b084      	sub	sp, #16
    167c:	af00      	add	r7, sp, #0
    167e:	6078      	str	r0, [r7, #4]
    1680:	6039      	str	r1, [r7, #0]
    1682:	4b24      	ldr	r3, [pc, #144]	; (1714 <xgets+0x9c>)
    1684:	681b      	ldr	r3, [r3, #0]
    1686:	2b00      	cmp	r3, #0
    1688:	d101      	bne.n	168e <xgets+0x16>
    168a:	2300      	movs	r3, #0
    168c:	e03e      	b.n	170c <xgets+0x94>
    168e:	2300      	movs	r3, #0
    1690:	60fb      	str	r3, [r7, #12]
    1692:	4b20      	ldr	r3, [pc, #128]	; (1714 <xgets+0x9c>)
    1694:	681b      	ldr	r3, [r3, #0]
    1696:	4798      	blx	r3
    1698:	0003      	movs	r3, r0
    169a:	60bb      	str	r3, [r7, #8]
    169c:	68bb      	ldr	r3, [r7, #8]
    169e:	2b00      	cmp	r3, #0
    16a0:	d101      	bne.n	16a6 <xgets+0x2e>
    16a2:	2300      	movs	r3, #0
    16a4:	e032      	b.n	170c <xgets+0x94>
    16a6:	68bb      	ldr	r3, [r7, #8]
    16a8:	2b0d      	cmp	r3, #13
    16aa:	d025      	beq.n	16f8 <xgets+0x80>
    16ac:	68bb      	ldr	r3, [r7, #8]
    16ae:	2b08      	cmp	r3, #8
    16b0:	d10b      	bne.n	16ca <xgets+0x52>
    16b2:	68fb      	ldr	r3, [r7, #12]
    16b4:	2b00      	cmp	r3, #0
    16b6:	d008      	beq.n	16ca <xgets+0x52>
    16b8:	68fb      	ldr	r3, [r7, #12]
    16ba:	3b01      	subs	r3, #1
    16bc:	60fb      	str	r3, [r7, #12]
    16be:	68bb      	ldr	r3, [r7, #8]
    16c0:	b2db      	uxtb	r3, r3
    16c2:	0018      	movs	r0, r3
    16c4:	f7ff fd12 	bl	10ec <xputc>
    16c8:	e015      	b.n	16f6 <xgets+0x7e>
    16ca:	68bb      	ldr	r3, [r7, #8]
    16cc:	2b1f      	cmp	r3, #31
    16ce:	dde0      	ble.n	1692 <xgets+0x1a>
    16d0:	683b      	ldr	r3, [r7, #0]
    16d2:	1e5a      	subs	r2, r3, #1
    16d4:	68fb      	ldr	r3, [r7, #12]
    16d6:	429a      	cmp	r2, r3
    16d8:	dddb      	ble.n	1692 <xgets+0x1a>
    16da:	68fb      	ldr	r3, [r7, #12]
    16dc:	1c5a      	adds	r2, r3, #1
    16de:	60fa      	str	r2, [r7, #12]
    16e0:	001a      	movs	r2, r3
    16e2:	687b      	ldr	r3, [r7, #4]
    16e4:	189b      	adds	r3, r3, r2
    16e6:	68ba      	ldr	r2, [r7, #8]
    16e8:	b2d2      	uxtb	r2, r2
    16ea:	701a      	strb	r2, [r3, #0]
    16ec:	68bb      	ldr	r3, [r7, #8]
    16ee:	b2db      	uxtb	r3, r3
    16f0:	0018      	movs	r0, r3
    16f2:	f7ff fcfb 	bl	10ec <xputc>
    16f6:	e7cc      	b.n	1692 <xgets+0x1a>
    16f8:	46c0      	nop			; (mov r8, r8)
    16fa:	68fb      	ldr	r3, [r7, #12]
    16fc:	687a      	ldr	r2, [r7, #4]
    16fe:	18d3      	adds	r3, r2, r3
    1700:	2200      	movs	r2, #0
    1702:	701a      	strb	r2, [r3, #0]
    1704:	200a      	movs	r0, #10
    1706:	f7ff fcf1 	bl	10ec <xputc>
    170a:	2301      	movs	r3, #1
    170c:	0018      	movs	r0, r3
    170e:	46bd      	mov	sp, r7
    1710:	b004      	add	sp, #16
    1712:	bd80      	pop	{r7, pc}
    1714:	20000904 	.word	0x20000904

00001718 <xfgets>:
    1718:	b580      	push	{r7, lr}
    171a:	b086      	sub	sp, #24
    171c:	af00      	add	r7, sp, #0
    171e:	60f8      	str	r0, [r7, #12]
    1720:	60b9      	str	r1, [r7, #8]
    1722:	607a      	str	r2, [r7, #4]
    1724:	4b0a      	ldr	r3, [pc, #40]	; (1750 <xfgets+0x38>)
    1726:	681b      	ldr	r3, [r3, #0]
    1728:	617b      	str	r3, [r7, #20]
    172a:	4b09      	ldr	r3, [pc, #36]	; (1750 <xfgets+0x38>)
    172c:	68fa      	ldr	r2, [r7, #12]
    172e:	601a      	str	r2, [r3, #0]
    1730:	687a      	ldr	r2, [r7, #4]
    1732:	68bb      	ldr	r3, [r7, #8]
    1734:	0011      	movs	r1, r2
    1736:	0018      	movs	r0, r3
    1738:	f7ff ff9e 	bl	1678 <xgets>
    173c:	0003      	movs	r3, r0
    173e:	613b      	str	r3, [r7, #16]
    1740:	4b03      	ldr	r3, [pc, #12]	; (1750 <xfgets+0x38>)
    1742:	697a      	ldr	r2, [r7, #20]
    1744:	601a      	str	r2, [r3, #0]
    1746:	693b      	ldr	r3, [r7, #16]
    1748:	0018      	movs	r0, r3
    174a:	46bd      	mov	sp, r7
    174c:	b006      	add	sp, #24
    174e:	bd80      	pop	{r7, pc}
    1750:	20000904 	.word	0x20000904

00001754 <xatoi>:
    1754:	b580      	push	{r7, lr}
    1756:	b084      	sub	sp, #16
    1758:	af00      	add	r7, sp, #0
    175a:	6078      	str	r0, [r7, #4]
    175c:	6039      	str	r1, [r7, #0]
    175e:	2309      	movs	r3, #9
    1760:	18fb      	adds	r3, r7, r3
    1762:	2200      	movs	r2, #0
    1764:	701a      	strb	r2, [r3, #0]
    1766:	683b      	ldr	r3, [r7, #0]
    1768:	2200      	movs	r2, #0
    176a:	601a      	str	r2, [r3, #0]
    176c:	e004      	b.n	1778 <xatoi+0x24>
    176e:	687b      	ldr	r3, [r7, #4]
    1770:	681b      	ldr	r3, [r3, #0]
    1772:	1c5a      	adds	r2, r3, #1
    1774:	687b      	ldr	r3, [r7, #4]
    1776:	601a      	str	r2, [r3, #0]
    1778:	687b      	ldr	r3, [r7, #4]
    177a:	681a      	ldr	r2, [r3, #0]
    177c:	230b      	movs	r3, #11
    177e:	18fb      	adds	r3, r7, r3
    1780:	7812      	ldrb	r2, [r2, #0]
    1782:	701a      	strb	r2, [r3, #0]
    1784:	230b      	movs	r3, #11
    1786:	18fb      	adds	r3, r7, r3
    1788:	781b      	ldrb	r3, [r3, #0]
    178a:	2b20      	cmp	r3, #32
    178c:	d0ef      	beq.n	176e <xatoi+0x1a>
    178e:	230b      	movs	r3, #11
    1790:	18fb      	adds	r3, r7, r3
    1792:	781b      	ldrb	r3, [r3, #0]
    1794:	2b2d      	cmp	r3, #45	; 0x2d
    1796:	d10e      	bne.n	17b6 <xatoi+0x62>
    1798:	2309      	movs	r3, #9
    179a:	18fb      	adds	r3, r7, r3
    179c:	2201      	movs	r2, #1
    179e:	701a      	strb	r2, [r3, #0]
    17a0:	687b      	ldr	r3, [r7, #4]
    17a2:	681b      	ldr	r3, [r3, #0]
    17a4:	1c5a      	adds	r2, r3, #1
    17a6:	687b      	ldr	r3, [r7, #4]
    17a8:	601a      	str	r2, [r3, #0]
    17aa:	687b      	ldr	r3, [r7, #4]
    17ac:	681a      	ldr	r2, [r3, #0]
    17ae:	230b      	movs	r3, #11
    17b0:	18fb      	adds	r3, r7, r3
    17b2:	7812      	ldrb	r2, [r2, #0]
    17b4:	701a      	strb	r2, [r3, #0]
    17b6:	230b      	movs	r3, #11
    17b8:	18fb      	adds	r3, r7, r3
    17ba:	781b      	ldrb	r3, [r3, #0]
    17bc:	2b30      	cmp	r3, #48	; 0x30
    17be:	d149      	bne.n	1854 <xatoi+0x100>
    17c0:	687b      	ldr	r3, [r7, #4]
    17c2:	681b      	ldr	r3, [r3, #0]
    17c4:	1c5a      	adds	r2, r3, #1
    17c6:	687b      	ldr	r3, [r7, #4]
    17c8:	601a      	str	r2, [r3, #0]
    17ca:	687b      	ldr	r3, [r7, #4]
    17cc:	681a      	ldr	r2, [r3, #0]
    17ce:	230b      	movs	r3, #11
    17d0:	18fb      	adds	r3, r7, r3
    17d2:	7812      	ldrb	r2, [r2, #0]
    17d4:	701a      	strb	r2, [r3, #0]
    17d6:	230b      	movs	r3, #11
    17d8:	18fb      	adds	r3, r7, r3
    17da:	781b      	ldrb	r3, [r3, #0]
    17dc:	2b62      	cmp	r3, #98	; 0x62
    17de:	d011      	beq.n	1804 <xatoi+0xb0>
    17e0:	2b78      	cmp	r3, #120	; 0x78
    17e2:	d11f      	bne.n	1824 <xatoi+0xd0>
    17e4:	230a      	movs	r3, #10
    17e6:	18fb      	adds	r3, r7, r3
    17e8:	2210      	movs	r2, #16
    17ea:	701a      	strb	r2, [r3, #0]
    17ec:	687b      	ldr	r3, [r7, #4]
    17ee:	681b      	ldr	r3, [r3, #0]
    17f0:	1c5a      	adds	r2, r3, #1
    17f2:	687b      	ldr	r3, [r7, #4]
    17f4:	601a      	str	r2, [r3, #0]
    17f6:	687b      	ldr	r3, [r7, #4]
    17f8:	681a      	ldr	r2, [r3, #0]
    17fa:	230b      	movs	r3, #11
    17fc:	18fb      	adds	r3, r7, r3
    17fe:	7812      	ldrb	r2, [r2, #0]
    1800:	701a      	strb	r2, [r3, #0]
    1802:	e037      	b.n	1874 <xatoi+0x120>
    1804:	230a      	movs	r3, #10
    1806:	18fb      	adds	r3, r7, r3
    1808:	2202      	movs	r2, #2
    180a:	701a      	strb	r2, [r3, #0]
    180c:	687b      	ldr	r3, [r7, #4]
    180e:	681b      	ldr	r3, [r3, #0]
    1810:	1c5a      	adds	r2, r3, #1
    1812:	687b      	ldr	r3, [r7, #4]
    1814:	601a      	str	r2, [r3, #0]
    1816:	687b      	ldr	r3, [r7, #4]
    1818:	681a      	ldr	r2, [r3, #0]
    181a:	230b      	movs	r3, #11
    181c:	18fb      	adds	r3, r7, r3
    181e:	7812      	ldrb	r2, [r2, #0]
    1820:	701a      	strb	r2, [r3, #0]
    1822:	e027      	b.n	1874 <xatoi+0x120>
    1824:	230b      	movs	r3, #11
    1826:	18fb      	adds	r3, r7, r3
    1828:	781b      	ldrb	r3, [r3, #0]
    182a:	2b20      	cmp	r3, #32
    182c:	d801      	bhi.n	1832 <xatoi+0xde>
    182e:	2301      	movs	r3, #1
    1830:	e079      	b.n	1926 <xatoi+0x1d2>
    1832:	230b      	movs	r3, #11
    1834:	18fb      	adds	r3, r7, r3
    1836:	781b      	ldrb	r3, [r3, #0]
    1838:	2b2f      	cmp	r3, #47	; 0x2f
    183a:	d904      	bls.n	1846 <xatoi+0xf2>
    183c:	230b      	movs	r3, #11
    183e:	18fb      	adds	r3, r7, r3
    1840:	781b      	ldrb	r3, [r3, #0]
    1842:	2b39      	cmp	r3, #57	; 0x39
    1844:	d901      	bls.n	184a <xatoi+0xf6>
    1846:	2300      	movs	r3, #0
    1848:	e06d      	b.n	1926 <xatoi+0x1d2>
    184a:	230a      	movs	r3, #10
    184c:	18fb      	adds	r3, r7, r3
    184e:	2208      	movs	r2, #8
    1850:	701a      	strb	r2, [r3, #0]
    1852:	e00f      	b.n	1874 <xatoi+0x120>
    1854:	230b      	movs	r3, #11
    1856:	18fb      	adds	r3, r7, r3
    1858:	781b      	ldrb	r3, [r3, #0]
    185a:	2b2f      	cmp	r3, #47	; 0x2f
    185c:	d904      	bls.n	1868 <xatoi+0x114>
    185e:	230b      	movs	r3, #11
    1860:	18fb      	adds	r3, r7, r3
    1862:	781b      	ldrb	r3, [r3, #0]
    1864:	2b39      	cmp	r3, #57	; 0x39
    1866:	d901      	bls.n	186c <xatoi+0x118>
    1868:	2300      	movs	r3, #0
    186a:	e05c      	b.n	1926 <xatoi+0x1d2>
    186c:	230a      	movs	r3, #10
    186e:	18fb      	adds	r3, r7, r3
    1870:	220a      	movs	r2, #10
    1872:	701a      	strb	r2, [r3, #0]
    1874:	2300      	movs	r3, #0
    1876:	60fb      	str	r3, [r7, #12]
    1878:	e044      	b.n	1904 <xatoi+0x1b0>
    187a:	230b      	movs	r3, #11
    187c:	18fb      	adds	r3, r7, r3
    187e:	781b      	ldrb	r3, [r3, #0]
    1880:	2b60      	cmp	r3, #96	; 0x60
    1882:	d906      	bls.n	1892 <xatoi+0x13e>
    1884:	230b      	movs	r3, #11
    1886:	18fb      	adds	r3, r7, r3
    1888:	220b      	movs	r2, #11
    188a:	18ba      	adds	r2, r7, r2
    188c:	7812      	ldrb	r2, [r2, #0]
    188e:	3a20      	subs	r2, #32
    1890:	701a      	strb	r2, [r3, #0]
    1892:	230b      	movs	r3, #11
    1894:	18fb      	adds	r3, r7, r3
    1896:	220b      	movs	r2, #11
    1898:	18ba      	adds	r2, r7, r2
    189a:	7812      	ldrb	r2, [r2, #0]
    189c:	3a30      	subs	r2, #48	; 0x30
    189e:	701a      	strb	r2, [r3, #0]
    18a0:	230b      	movs	r3, #11
    18a2:	18fb      	adds	r3, r7, r3
    18a4:	781b      	ldrb	r3, [r3, #0]
    18a6:	2b10      	cmp	r3, #16
    18a8:	d90d      	bls.n	18c6 <xatoi+0x172>
    18aa:	230b      	movs	r3, #11
    18ac:	18fb      	adds	r3, r7, r3
    18ae:	220b      	movs	r2, #11
    18b0:	18ba      	adds	r2, r7, r2
    18b2:	7812      	ldrb	r2, [r2, #0]
    18b4:	3a07      	subs	r2, #7
    18b6:	701a      	strb	r2, [r3, #0]
    18b8:	230b      	movs	r3, #11
    18ba:	18fb      	adds	r3, r7, r3
    18bc:	781b      	ldrb	r3, [r3, #0]
    18be:	2b09      	cmp	r3, #9
    18c0:	d801      	bhi.n	18c6 <xatoi+0x172>
    18c2:	2300      	movs	r3, #0
    18c4:	e02f      	b.n	1926 <xatoi+0x1d2>
    18c6:	230b      	movs	r3, #11
    18c8:	18fa      	adds	r2, r7, r3
    18ca:	230a      	movs	r3, #10
    18cc:	18fb      	adds	r3, r7, r3
    18ce:	7812      	ldrb	r2, [r2, #0]
    18d0:	781b      	ldrb	r3, [r3, #0]
    18d2:	429a      	cmp	r2, r3
    18d4:	d301      	bcc.n	18da <xatoi+0x186>
    18d6:	2300      	movs	r3, #0
    18d8:	e025      	b.n	1926 <xatoi+0x1d2>
    18da:	230a      	movs	r3, #10
    18dc:	18fb      	adds	r3, r7, r3
    18de:	781b      	ldrb	r3, [r3, #0]
    18e0:	68fa      	ldr	r2, [r7, #12]
    18e2:	435a      	muls	r2, r3
    18e4:	230b      	movs	r3, #11
    18e6:	18fb      	adds	r3, r7, r3
    18e8:	781b      	ldrb	r3, [r3, #0]
    18ea:	18d3      	adds	r3, r2, r3
    18ec:	60fb      	str	r3, [r7, #12]
    18ee:	687b      	ldr	r3, [r7, #4]
    18f0:	681b      	ldr	r3, [r3, #0]
    18f2:	1c5a      	adds	r2, r3, #1
    18f4:	687b      	ldr	r3, [r7, #4]
    18f6:	601a      	str	r2, [r3, #0]
    18f8:	687b      	ldr	r3, [r7, #4]
    18fa:	681a      	ldr	r2, [r3, #0]
    18fc:	230b      	movs	r3, #11
    18fe:	18fb      	adds	r3, r7, r3
    1900:	7812      	ldrb	r2, [r2, #0]
    1902:	701a      	strb	r2, [r3, #0]
    1904:	230b      	movs	r3, #11
    1906:	18fb      	adds	r3, r7, r3
    1908:	781b      	ldrb	r3, [r3, #0]
    190a:	2b20      	cmp	r3, #32
    190c:	d8b5      	bhi.n	187a <xatoi+0x126>
    190e:	2309      	movs	r3, #9
    1910:	18fb      	adds	r3, r7, r3
    1912:	781b      	ldrb	r3, [r3, #0]
    1914:	2b00      	cmp	r3, #0
    1916:	d002      	beq.n	191e <xatoi+0x1ca>
    1918:	68fb      	ldr	r3, [r7, #12]
    191a:	425b      	negs	r3, r3
    191c:	60fb      	str	r3, [r7, #12]
    191e:	68fa      	ldr	r2, [r7, #12]
    1920:	683b      	ldr	r3, [r7, #0]
    1922:	601a      	str	r2, [r3, #0]
    1924:	2301      	movs	r3, #1
    1926:	0018      	movs	r0, r3
    1928:	46bd      	mov	sp, r7
    192a:	b004      	add	sp, #16
    192c:	bd80      	pop	{r7, pc}
    192e:	46c0      	nop			; (mov r8, r8)

00001930 <os_idle_demon>:
    1930:	b580      	push	{r7, lr}
    1932:	af00      	add	r7, sp, #0
    1934:	e7fe      	b.n	1934 <os_idle_demon+0x4>
    1936:	46c0      	nop			; (mov r8, r8)

00001938 <os_error>:
    1938:	b580      	push	{r7, lr}
    193a:	b082      	sub	sp, #8
    193c:	af00      	add	r7, sp, #0
    193e:	6078      	str	r0, [r7, #4]
    1940:	687b      	ldr	r3, [r7, #4]
    1942:	2b02      	cmp	r3, #2
    1944:	d009      	beq.n	195a <os_error+0x22>
    1946:	d802      	bhi.n	194e <os_error+0x16>
    1948:	2b01      	cmp	r3, #1
    194a:	d005      	beq.n	1958 <os_error+0x20>
    194c:	e008      	b.n	1960 <os_error+0x28>
    194e:	2b03      	cmp	r3, #3
    1950:	d004      	beq.n	195c <os_error+0x24>
    1952:	2b04      	cmp	r3, #4
    1954:	d003      	beq.n	195e <os_error+0x26>
    1956:	e003      	b.n	1960 <os_error+0x28>
    1958:	e002      	b.n	1960 <os_error+0x28>
    195a:	e001      	b.n	1960 <os_error+0x28>
    195c:	e000      	b.n	1960 <os_error+0x28>
    195e:	46c0      	nop			; (mov r8, r8)
    1960:	e7fe      	b.n	1960 <os_error+0x28>
    1962:	46c0      	nop			; (mov r8, r8)

00001964 <software_init_hook>:
    1964:	2000      	movs	r0, #0
    1966:	2100      	movs	r1, #0
    1968:	4604      	mov	r4, r0
    196a:	460d      	mov	r5, r1
    196c:	4808      	ldr	r0, [pc, #32]	; (1990 <software_init_hook+0x2c>)
    196e:	f003 f9d9 	bl	4d24 <atexit>
    1972:	f003 fa09 	bl	4d88 <__libc_init_array>
    1976:	4620      	mov	r0, r4
    1978:	4629      	mov	r1, r5
    197a:	f004 f897 	bl	5aac <osKernelInitialize>
    197e:	4805      	ldr	r0, [pc, #20]	; (1994 <software_init_hook+0x30>)
    1980:	2100      	movs	r1, #0
    1982:	f004 fa25 	bl	5dd0 <osThreadCreate>
    1986:	f004 f92d 	bl	5be4 <osKernelStart>
    198a:	f003 f9d3 	bl	4d34 <exit>
    198e:	0000      	.short	0x0000
    1990:	00004d55 	.word	0x00004d55
    1994:	00008934 	.word	0x00008934

00001998 <__NVIC_EnableIRQ>:
    1998:	b580      	push	{r7, lr}
    199a:	b082      	sub	sp, #8
    199c:	af00      	add	r7, sp, #0
    199e:	0002      	movs	r2, r0
    19a0:	1dfb      	adds	r3, r7, #7
    19a2:	701a      	strb	r2, [r3, #0]
    19a4:	1dfb      	adds	r3, r7, #7
    19a6:	781b      	ldrb	r3, [r3, #0]
    19a8:	2b7f      	cmp	r3, #127	; 0x7f
    19aa:	d809      	bhi.n	19c0 <__NVIC_EnableIRQ+0x28>
    19ac:	4b06      	ldr	r3, [pc, #24]	; (19c8 <__NVIC_EnableIRQ+0x30>)
    19ae:	1dfa      	adds	r2, r7, #7
    19b0:	7812      	ldrb	r2, [r2, #0]
    19b2:	0011      	movs	r1, r2
    19b4:	221f      	movs	r2, #31
    19b6:	400a      	ands	r2, r1
    19b8:	2101      	movs	r1, #1
    19ba:	4091      	lsls	r1, r2
    19bc:	000a      	movs	r2, r1
    19be:	601a      	str	r2, [r3, #0]
    19c0:	46c0      	nop			; (mov r8, r8)
    19c2:	46bd      	mov	sp, r7
    19c4:	b002      	add	sp, #8
    19c6:	bd80      	pop	{r7, pc}
    19c8:	e000e100 	.word	0xe000e100

000019cc <__NVIC_ClearPendingIRQ>:
    19cc:	b580      	push	{r7, lr}
    19ce:	b082      	sub	sp, #8
    19d0:	af00      	add	r7, sp, #0
    19d2:	0002      	movs	r2, r0
    19d4:	1dfb      	adds	r3, r7, #7
    19d6:	701a      	strb	r2, [r3, #0]
    19d8:	1dfb      	adds	r3, r7, #7
    19da:	781b      	ldrb	r3, [r3, #0]
    19dc:	2b7f      	cmp	r3, #127	; 0x7f
    19de:	d80a      	bhi.n	19f6 <__NVIC_ClearPendingIRQ+0x2a>
    19e0:	4907      	ldr	r1, [pc, #28]	; (1a00 <__NVIC_ClearPendingIRQ+0x34>)
    19e2:	1dfb      	adds	r3, r7, #7
    19e4:	781b      	ldrb	r3, [r3, #0]
    19e6:	001a      	movs	r2, r3
    19e8:	231f      	movs	r3, #31
    19ea:	4013      	ands	r3, r2
    19ec:	2201      	movs	r2, #1
    19ee:	409a      	lsls	r2, r3
    19f0:	23c0      	movs	r3, #192	; 0xc0
    19f2:	005b      	lsls	r3, r3, #1
    19f4:	50ca      	str	r2, [r1, r3]
    19f6:	46c0      	nop			; (mov r8, r8)
    19f8:	46bd      	mov	sp, r7
    19fa:	b002      	add	sp, #8
    19fc:	bd80      	pop	{r7, pc}
    19fe:	46c0      	nop			; (mov r8, r8)
    1a00:	e000e100 	.word	0xe000e100

00001a04 <__NVIC_SetPriority>:
    1a04:	b5b0      	push	{r4, r5, r7, lr}
    1a06:	b082      	sub	sp, #8
    1a08:	af00      	add	r7, sp, #0
    1a0a:	0002      	movs	r2, r0
    1a0c:	6039      	str	r1, [r7, #0]
    1a0e:	1dfb      	adds	r3, r7, #7
    1a10:	701a      	strb	r2, [r3, #0]
    1a12:	1dfb      	adds	r3, r7, #7
    1a14:	781b      	ldrb	r3, [r3, #0]
    1a16:	2b7f      	cmp	r3, #127	; 0x7f
    1a18:	d828      	bhi.n	1a6c <__NVIC_SetPriority+0x68>
    1a1a:	4c2f      	ldr	r4, [pc, #188]	; (1ad8 <__NVIC_SetPriority+0xd4>)
    1a1c:	1dfb      	adds	r3, r7, #7
    1a1e:	781b      	ldrb	r3, [r3, #0]
    1a20:	b25b      	sxtb	r3, r3
    1a22:	089b      	lsrs	r3, r3, #2
    1a24:	492c      	ldr	r1, [pc, #176]	; (1ad8 <__NVIC_SetPriority+0xd4>)
    1a26:	1dfa      	adds	r2, r7, #7
    1a28:	7812      	ldrb	r2, [r2, #0]
    1a2a:	b252      	sxtb	r2, r2
    1a2c:	0892      	lsrs	r2, r2, #2
    1a2e:	32c0      	adds	r2, #192	; 0xc0
    1a30:	0092      	lsls	r2, r2, #2
    1a32:	5852      	ldr	r2, [r2, r1]
    1a34:	1df9      	adds	r1, r7, #7
    1a36:	7809      	ldrb	r1, [r1, #0]
    1a38:	0008      	movs	r0, r1
    1a3a:	2103      	movs	r1, #3
    1a3c:	4001      	ands	r1, r0
    1a3e:	00c9      	lsls	r1, r1, #3
    1a40:	20ff      	movs	r0, #255	; 0xff
    1a42:	4088      	lsls	r0, r1
    1a44:	0001      	movs	r1, r0
    1a46:	43c9      	mvns	r1, r1
    1a48:	4011      	ands	r1, r2
    1a4a:	683a      	ldr	r2, [r7, #0]
    1a4c:	0192      	lsls	r2, r2, #6
    1a4e:	20ff      	movs	r0, #255	; 0xff
    1a50:	4010      	ands	r0, r2
    1a52:	1dfa      	adds	r2, r7, #7
    1a54:	7812      	ldrb	r2, [r2, #0]
    1a56:	0015      	movs	r5, r2
    1a58:	2203      	movs	r2, #3
    1a5a:	402a      	ands	r2, r5
    1a5c:	00d2      	lsls	r2, r2, #3
    1a5e:	4090      	lsls	r0, r2
    1a60:	0002      	movs	r2, r0
    1a62:	430a      	orrs	r2, r1
    1a64:	33c0      	adds	r3, #192	; 0xc0
    1a66:	009b      	lsls	r3, r3, #2
    1a68:	511a      	str	r2, [r3, r4]
    1a6a:	e031      	b.n	1ad0 <__NVIC_SetPriority+0xcc>
    1a6c:	4c1b      	ldr	r4, [pc, #108]	; (1adc <__NVIC_SetPriority+0xd8>)
    1a6e:	1dfb      	adds	r3, r7, #7
    1a70:	781b      	ldrb	r3, [r3, #0]
    1a72:	001a      	movs	r2, r3
    1a74:	230f      	movs	r3, #15
    1a76:	4013      	ands	r3, r2
    1a78:	3b08      	subs	r3, #8
    1a7a:	0899      	lsrs	r1, r3, #2
    1a7c:	4a17      	ldr	r2, [pc, #92]	; (1adc <__NVIC_SetPriority+0xd8>)
    1a7e:	1dfb      	adds	r3, r7, #7
    1a80:	781b      	ldrb	r3, [r3, #0]
    1a82:	0018      	movs	r0, r3
    1a84:	230f      	movs	r3, #15
    1a86:	4003      	ands	r3, r0
    1a88:	3b08      	subs	r3, #8
    1a8a:	089b      	lsrs	r3, r3, #2
    1a8c:	3306      	adds	r3, #6
    1a8e:	009b      	lsls	r3, r3, #2
    1a90:	18d3      	adds	r3, r2, r3
    1a92:	3304      	adds	r3, #4
    1a94:	681b      	ldr	r3, [r3, #0]
    1a96:	1dfa      	adds	r2, r7, #7
    1a98:	7812      	ldrb	r2, [r2, #0]
    1a9a:	0010      	movs	r0, r2
    1a9c:	2203      	movs	r2, #3
    1a9e:	4002      	ands	r2, r0
    1aa0:	00d2      	lsls	r2, r2, #3
    1aa2:	20ff      	movs	r0, #255	; 0xff
    1aa4:	4090      	lsls	r0, r2
    1aa6:	0002      	movs	r2, r0
    1aa8:	43d2      	mvns	r2, r2
    1aaa:	401a      	ands	r2, r3
    1aac:	683b      	ldr	r3, [r7, #0]
    1aae:	019b      	lsls	r3, r3, #6
    1ab0:	20ff      	movs	r0, #255	; 0xff
    1ab2:	4018      	ands	r0, r3
    1ab4:	1dfb      	adds	r3, r7, #7
    1ab6:	781b      	ldrb	r3, [r3, #0]
    1ab8:	001d      	movs	r5, r3
    1aba:	2303      	movs	r3, #3
    1abc:	402b      	ands	r3, r5
    1abe:	00db      	lsls	r3, r3, #3
    1ac0:	4098      	lsls	r0, r3
    1ac2:	0003      	movs	r3, r0
    1ac4:	431a      	orrs	r2, r3
    1ac6:	1d8b      	adds	r3, r1, #6
    1ac8:	009b      	lsls	r3, r3, #2
    1aca:	18e3      	adds	r3, r4, r3
    1acc:	3304      	adds	r3, #4
    1ace:	601a      	str	r2, [r3, #0]
    1ad0:	46c0      	nop			; (mov r8, r8)
    1ad2:	46bd      	mov	sp, r7
    1ad4:	b002      	add	sp, #8
    1ad6:	bdb0      	pop	{r4, r5, r7, pc}
    1ad8:	e000e100 	.word	0xe000e100
    1adc:	e000ed00 	.word	0xe000ed00

00001ae0 <PortConfig>:
    1ae0:	b580      	push	{r7, lr}
    1ae2:	af00      	add	r7, sp, #0
    1ae4:	4b44      	ldr	r3, [pc, #272]	; (1bf8 <PortConfig+0x118>)
    1ae6:	4a44      	ldr	r2, [pc, #272]	; (1bf8 <PortConfig+0x118>)
    1ae8:	68d2      	ldr	r2, [r2, #12]
    1aea:	21de      	movs	r1, #222	; 0xde
    1aec:	0209      	lsls	r1, r1, #8
    1aee:	430a      	orrs	r2, r1
    1af0:	60da      	str	r2, [r3, #12]
    1af2:	4b41      	ldr	r3, [pc, #260]	; (1bf8 <PortConfig+0x118>)
    1af4:	4a40      	ldr	r2, [pc, #256]	; (1bf8 <PortConfig+0x118>)
    1af6:	6812      	ldr	r2, [r2, #0]
    1af8:	4940      	ldr	r1, [pc, #256]	; (1bfc <PortConfig+0x11c>)
    1afa:	400a      	ands	r2, r1
    1afc:	601a      	str	r2, [r3, #0]
    1afe:	4b3e      	ldr	r3, [pc, #248]	; (1bf8 <PortConfig+0x118>)
    1b00:	4a3d      	ldr	r2, [pc, #244]	; (1bf8 <PortConfig+0x118>)
    1b02:	6852      	ldr	r2, [r2, #4]
    1b04:	21de      	movs	r1, #222	; 0xde
    1b06:	0209      	lsls	r1, r1, #8
    1b08:	430a      	orrs	r2, r1
    1b0a:	605a      	str	r2, [r3, #4]
    1b0c:	4b3a      	ldr	r3, [pc, #232]	; (1bf8 <PortConfig+0x118>)
    1b0e:	4a3a      	ldr	r2, [pc, #232]	; (1bf8 <PortConfig+0x118>)
    1b10:	6992      	ldr	r2, [r2, #24]
    1b12:	493b      	ldr	r1, [pc, #236]	; (1c00 <PortConfig+0x120>)
    1b14:	430a      	orrs	r2, r1
    1b16:	619a      	str	r2, [r3, #24]
    1b18:	4b37      	ldr	r3, [pc, #220]	; (1bf8 <PortConfig+0x118>)
    1b1a:	4a37      	ldr	r2, [pc, #220]	; (1bf8 <PortConfig+0x118>)
    1b1c:	68d2      	ldr	r2, [r2, #12]
    1b1e:	21ff      	movs	r1, #255	; 0xff
    1b20:	0049      	lsls	r1, r1, #1
    1b22:	430a      	orrs	r2, r1
    1b24:	60da      	str	r2, [r3, #12]
    1b26:	4b34      	ldr	r3, [pc, #208]	; (1bf8 <PortConfig+0x118>)
    1b28:	4a33      	ldr	r2, [pc, #204]	; (1bf8 <PortConfig+0x118>)
    1b2a:	6812      	ldr	r2, [r2, #0]
    1b2c:	4935      	ldr	r1, [pc, #212]	; (1c04 <PortConfig+0x124>)
    1b2e:	400a      	ands	r2, r1
    1b30:	601a      	str	r2, [r3, #0]
    1b32:	4b31      	ldr	r3, [pc, #196]	; (1bf8 <PortConfig+0x118>)
    1b34:	4a30      	ldr	r2, [pc, #192]	; (1bf8 <PortConfig+0x118>)
    1b36:	6852      	ldr	r2, [r2, #4]
    1b38:	21ff      	movs	r1, #255	; 0xff
    1b3a:	0049      	lsls	r1, r1, #1
    1b3c:	430a      	orrs	r2, r1
    1b3e:	605a      	str	r2, [r3, #4]
    1b40:	4b2d      	ldr	r3, [pc, #180]	; (1bf8 <PortConfig+0x118>)
    1b42:	4a2d      	ldr	r2, [pc, #180]	; (1bf8 <PortConfig+0x118>)
    1b44:	6992      	ldr	r2, [r2, #24]
    1b46:	4930      	ldr	r1, [pc, #192]	; (1c08 <PortConfig+0x128>)
    1b48:	430a      	orrs	r2, r1
    1b4a:	619a      	str	r2, [r3, #24]
    1b4c:	4b2f      	ldr	r3, [pc, #188]	; (1c0c <PortConfig+0x12c>)
    1b4e:	4a2f      	ldr	r2, [pc, #188]	; (1c0c <PortConfig+0x12c>)
    1b50:	6892      	ldr	r2, [r2, #8]
    1b52:	21a0      	movs	r1, #160	; 0xa0
    1b54:	0549      	lsls	r1, r1, #21
    1b56:	430a      	orrs	r2, r1
    1b58:	609a      	str	r2, [r3, #8]
    1b5a:	4b2c      	ldr	r3, [pc, #176]	; (1c0c <PortConfig+0x12c>)
    1b5c:	4a2b      	ldr	r2, [pc, #172]	; (1c0c <PortConfig+0x12c>)
    1b5e:	68d2      	ldr	r2, [r2, #12]
    1b60:	21e0      	movs	r1, #224	; 0xe0
    1b62:	0209      	lsls	r1, r1, #8
    1b64:	430a      	orrs	r2, r1
    1b66:	60da      	str	r2, [r3, #12]
    1b68:	4b28      	ldr	r3, [pc, #160]	; (1c0c <PortConfig+0x12c>)
    1b6a:	4a28      	ldr	r2, [pc, #160]	; (1c0c <PortConfig+0x12c>)
    1b6c:	6992      	ldr	r2, [r2, #24]
    1b6e:	21fc      	movs	r1, #252	; 0xfc
    1b70:	0609      	lsls	r1, r1, #24
    1b72:	430a      	orrs	r2, r1
    1b74:	619a      	str	r2, [r3, #24]
    1b76:	4b25      	ldr	r3, [pc, #148]	; (1c0c <PortConfig+0x12c>)
    1b78:	4a24      	ldr	r2, [pc, #144]	; (1c0c <PortConfig+0x12c>)
    1b7a:	6812      	ldr	r2, [r2, #0]
    1b7c:	4924      	ldr	r1, [pc, #144]	; (1c10 <PortConfig+0x130>)
    1b7e:	400a      	ands	r2, r1
    1b80:	601a      	str	r2, [r3, #0]
    1b82:	4b22      	ldr	r3, [pc, #136]	; (1c0c <PortConfig+0x12c>)
    1b84:	4a21      	ldr	r2, [pc, #132]	; (1c0c <PortConfig+0x12c>)
    1b86:	6852      	ldr	r2, [r2, #4]
    1b88:	2180      	movs	r1, #128	; 0x80
    1b8a:	0209      	lsls	r1, r1, #8
    1b8c:	430a      	orrs	r2, r1
    1b8e:	605a      	str	r2, [r3, #4]
    1b90:	4b20      	ldr	r3, [pc, #128]	; (1c14 <PortConfig+0x134>)
    1b92:	4a20      	ldr	r2, [pc, #128]	; (1c14 <PortConfig+0x134>)
    1b94:	6892      	ldr	r2, [r2, #8]
    1b96:	4920      	ldr	r1, [pc, #128]	; (1c18 <PortConfig+0x138>)
    1b98:	400a      	ands	r2, r1
    1b9a:	609a      	str	r2, [r3, #8]
    1b9c:	4b1d      	ldr	r3, [pc, #116]	; (1c14 <PortConfig+0x134>)
    1b9e:	4a1d      	ldr	r2, [pc, #116]	; (1c14 <PortConfig+0x134>)
    1ba0:	6892      	ldr	r2, [r2, #8]
    1ba2:	21a0      	movs	r1, #160	; 0xa0
    1ba4:	0049      	lsls	r1, r1, #1
    1ba6:	430a      	orrs	r2, r1
    1ba8:	609a      	str	r2, [r3, #8]
    1baa:	4b1a      	ldr	r3, [pc, #104]	; (1c14 <PortConfig+0x134>)
    1bac:	4a19      	ldr	r2, [pc, #100]	; (1c14 <PortConfig+0x134>)
    1bae:	68d2      	ldr	r2, [r2, #12]
    1bb0:	2118      	movs	r1, #24
    1bb2:	430a      	orrs	r2, r1
    1bb4:	60da      	str	r2, [r3, #12]
    1bb6:	4b17      	ldr	r3, [pc, #92]	; (1c14 <PortConfig+0x134>)
    1bb8:	4a16      	ldr	r2, [pc, #88]	; (1c14 <PortConfig+0x134>)
    1bba:	6992      	ldr	r2, [r2, #24]
    1bbc:	21f0      	movs	r1, #240	; 0xf0
    1bbe:	0089      	lsls	r1, r1, #2
    1bc0:	430a      	orrs	r2, r1
    1bc2:	619a      	str	r2, [r3, #24]
    1bc4:	4b13      	ldr	r3, [pc, #76]	; (1c14 <PortConfig+0x134>)
    1bc6:	4a13      	ldr	r2, [pc, #76]	; (1c14 <PortConfig+0x134>)
    1bc8:	6812      	ldr	r2, [r2, #0]
    1bca:	2118      	movs	r1, #24
    1bcc:	438a      	bics	r2, r1
    1bce:	601a      	str	r2, [r3, #0]
    1bd0:	4b10      	ldr	r3, [pc, #64]	; (1c14 <PortConfig+0x134>)
    1bd2:	4a10      	ldr	r2, [pc, #64]	; (1c14 <PortConfig+0x134>)
    1bd4:	68d2      	ldr	r2, [r2, #12]
    1bd6:	2120      	movs	r1, #32
    1bd8:	430a      	orrs	r2, r1
    1bda:	60da      	str	r2, [r3, #12]
    1bdc:	4b0d      	ldr	r3, [pc, #52]	; (1c14 <PortConfig+0x134>)
    1bde:	4a0d      	ldr	r2, [pc, #52]	; (1c14 <PortConfig+0x134>)
    1be0:	6892      	ldr	r2, [r2, #8]
    1be2:	2180      	movs	r1, #128	; 0x80
    1be4:	00c9      	lsls	r1, r1, #3
    1be6:	430a      	orrs	r2, r1
    1be8:	609a      	str	r2, [r3, #8]
    1bea:	201c      	movs	r0, #28
    1bec:	f7ff feee 	bl	19cc <__NVIC_ClearPendingIRQ>
    1bf0:	46c0      	nop			; (mov r8, r8)
    1bf2:	46bd      	mov	sp, r7
    1bf4:	bd80      	pop	{r7, pc}
    1bf6:	46c0      	nop			; (mov r8, r8)
    1bf8:	400b0000 	.word	0x400b0000
    1bfc:	ffff21ff 	.word	0xffff21ff
    1c00:	f3fc0000 	.word	0xf3fc0000
    1c04:	fffffe01 	.word	0xfffffe01
    1c08:	0003fffc 	.word	0x0003fffc
    1c0c:	400c0000 	.word	0x400c0000
    1c10:	ffff1fff 	.word	0xffff1fff
    1c14:	400b8000 	.word	0x400b8000
    1c18:	fffffc3f 	.word	0xfffffc3f

00001c1c <ClkConfig>:
    1c1c:	b580      	push	{r7, lr}
    1c1e:	af00      	add	r7, sp, #0
    1c20:	4b4b      	ldr	r3, [pc, #300]	; (1d50 <ClkConfig+0x134>)
    1c22:	2280      	movs	r2, #128	; 0x80
    1c24:	0092      	lsls	r2, r2, #2
    1c26:	619a      	str	r2, [r3, #24]
    1c28:	4b4a      	ldr	r3, [pc, #296]	; (1d54 <ClkConfig+0x138>)
    1c2a:	4a4a      	ldr	r2, [pc, #296]	; (1d54 <ClkConfig+0x138>)
    1c2c:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1c2e:	2118      	movs	r1, #24
    1c30:	430a      	orrs	r2, r1
    1c32:	63da      	str	r2, [r3, #60]	; 0x3c
    1c34:	4b47      	ldr	r3, [pc, #284]	; (1d54 <ClkConfig+0x138>)
    1c36:	4a48      	ldr	r2, [pc, #288]	; (1d58 <ClkConfig+0x13c>)
    1c38:	649a      	str	r2, [r3, #72]	; 0x48
    1c3a:	4b46      	ldr	r3, [pc, #280]	; (1d54 <ClkConfig+0x138>)
    1c3c:	2201      	movs	r2, #1
    1c3e:	645a      	str	r2, [r3, #68]	; 0x44
    1c40:	4b43      	ldr	r3, [pc, #268]	; (1d50 <ClkConfig+0x134>)
    1c42:	4a43      	ldr	r2, [pc, #268]	; (1d50 <ClkConfig+0x134>)
    1c44:	6892      	ldr	r2, [r2, #8]
    1c46:	2105      	movs	r1, #5
    1c48:	430a      	orrs	r2, r1
    1c4a:	609a      	str	r2, [r3, #8]
    1c4c:	46c0      	nop			; (mov r8, r8)
    1c4e:	4b40      	ldr	r3, [pc, #256]	; (1d50 <ClkConfig+0x134>)
    1c50:	681b      	ldr	r3, [r3, #0]
    1c52:	220c      	movs	r2, #12
    1c54:	4013      	ands	r3, r2
    1c56:	2b0c      	cmp	r3, #12
    1c58:	d1f9      	bne.n	1c4e <ClkConfig+0x32>
    1c5a:	4b3d      	ldr	r3, [pc, #244]	; (1d50 <ClkConfig+0x134>)
    1c5c:	4a3c      	ldr	r2, [pc, #240]	; (1d50 <ClkConfig+0x134>)
    1c5e:	68d2      	ldr	r2, [r2, #12]
    1c60:	2102      	movs	r1, #2
    1c62:	430a      	orrs	r2, r1
    1c64:	60da      	str	r2, [r3, #12]
    1c66:	4b3a      	ldr	r3, [pc, #232]	; (1d50 <ClkConfig+0x134>)
    1c68:	4a3c      	ldr	r2, [pc, #240]	; (1d5c <ClkConfig+0x140>)
    1c6a:	605a      	str	r2, [r3, #4]
    1c6c:	46c0      	nop			; (mov r8, r8)
    1c6e:	4b38      	ldr	r3, [pc, #224]	; (1d50 <ClkConfig+0x134>)
    1c70:	681b      	ldr	r3, [r3, #0]
    1c72:	2202      	movs	r2, #2
    1c74:	4013      	ands	r3, r2
    1c76:	d0fa      	beq.n	1c6e <ClkConfig+0x52>
    1c78:	4b35      	ldr	r3, [pc, #212]	; (1d50 <ClkConfig+0x134>)
    1c7a:	4a35      	ldr	r2, [pc, #212]	; (1d50 <ClkConfig+0x134>)
    1c7c:	69d2      	ldr	r2, [r2, #28]
    1c7e:	2108      	movs	r1, #8
    1c80:	430a      	orrs	r2, r1
    1c82:	61da      	str	r2, [r3, #28]
    1c84:	4b36      	ldr	r3, [pc, #216]	; (1d60 <ClkConfig+0x144>)
    1c86:	4a36      	ldr	r2, [pc, #216]	; (1d60 <ClkConfig+0x144>)
    1c88:	6812      	ldr	r2, [r2, #0]
    1c8a:	2118      	movs	r1, #24
    1c8c:	430a      	orrs	r2, r1
    1c8e:	601a      	str	r2, [r3, #0]
    1c90:	4b2f      	ldr	r3, [pc, #188]	; (1d50 <ClkConfig+0x134>)
    1c92:	4a2f      	ldr	r2, [pc, #188]	; (1d50 <ClkConfig+0x134>)
    1c94:	69d2      	ldr	r2, [r2, #28]
    1c96:	2108      	movs	r1, #8
    1c98:	438a      	bics	r2, r1
    1c9a:	61da      	str	r2, [r3, #28]
    1c9c:	4b2c      	ldr	r3, [pc, #176]	; (1d50 <ClkConfig+0x134>)
    1c9e:	4a2c      	ldr	r2, [pc, #176]	; (1d50 <ClkConfig+0x134>)
    1ca0:	68d2      	ldr	r2, [r2, #12]
    1ca2:	2180      	movs	r1, #128	; 0x80
    1ca4:	0049      	lsls	r1, r1, #1
    1ca6:	430a      	orrs	r2, r1
    1ca8:	60da      	str	r2, [r3, #12]
    1caa:	4b29      	ldr	r3, [pc, #164]	; (1d50 <ClkConfig+0x134>)
    1cac:	4a28      	ldr	r2, [pc, #160]	; (1d50 <ClkConfig+0x134>)
    1cae:	68d2      	ldr	r2, [r2, #12]
    1cb0:	2104      	movs	r1, #4
    1cb2:	430a      	orrs	r2, r1
    1cb4:	60da      	str	r2, [r3, #12]
    1cb6:	4b26      	ldr	r3, [pc, #152]	; (1d50 <ClkConfig+0x134>)
    1cb8:	22e4      	movs	r2, #228	; 0xe4
    1cba:	0592      	lsls	r2, r2, #22
    1cbc:	635a      	str	r2, [r3, #52]	; 0x34
    1cbe:	4b24      	ldr	r3, [pc, #144]	; (1d50 <ClkConfig+0x134>)
    1cc0:	4a23      	ldr	r2, [pc, #140]	; (1d50 <ClkConfig+0x134>)
    1cc2:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cc4:	2180      	movs	r1, #128	; 0x80
    1cc6:	0449      	lsls	r1, r1, #17
    1cc8:	430a      	orrs	r2, r1
    1cca:	625a      	str	r2, [r3, #36]	; 0x24
    1ccc:	4b20      	ldr	r3, [pc, #128]	; (1d50 <ClkConfig+0x134>)
    1cce:	4a20      	ldr	r2, [pc, #128]	; (1d50 <ClkConfig+0x134>)
    1cd0:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cd2:	21ff      	movs	r1, #255	; 0xff
    1cd4:	438a      	bics	r2, r1
    1cd6:	625a      	str	r2, [r3, #36]	; 0x24
    1cd8:	4b1d      	ldr	r3, [pc, #116]	; (1d50 <ClkConfig+0x134>)
    1cda:	4a1d      	ldr	r2, [pc, #116]	; (1d50 <ClkConfig+0x134>)
    1cdc:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cde:	2180      	movs	r1, #128	; 0x80
    1ce0:	0489      	lsls	r1, r1, #18
    1ce2:	430a      	orrs	r2, r1
    1ce4:	625a      	str	r2, [r3, #36]	; 0x24
    1ce6:	4b1a      	ldr	r3, [pc, #104]	; (1d50 <ClkConfig+0x134>)
    1ce8:	4a19      	ldr	r2, [pc, #100]	; (1d50 <ClkConfig+0x134>)
    1cea:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cec:	491d      	ldr	r1, [pc, #116]	; (1d64 <ClkConfig+0x148>)
    1cee:	400a      	ands	r2, r1
    1cf0:	625a      	str	r2, [r3, #36]	; 0x24
    1cf2:	4b17      	ldr	r3, [pc, #92]	; (1d50 <ClkConfig+0x134>)
    1cf4:	4a16      	ldr	r2, [pc, #88]	; (1d50 <ClkConfig+0x134>)
    1cf6:	69d2      	ldr	r2, [r2, #28]
    1cf8:	491b      	ldr	r1, [pc, #108]	; (1d68 <ClkConfig+0x14c>)
    1cfa:	430a      	orrs	r2, r1
    1cfc:	61da      	str	r2, [r3, #28]
    1cfe:	4b14      	ldr	r3, [pc, #80]	; (1d50 <ClkConfig+0x134>)
    1d00:	4a13      	ldr	r2, [pc, #76]	; (1d50 <ClkConfig+0x134>)
    1d02:	69d2      	ldr	r2, [r2, #28]
    1d04:	2180      	movs	r1, #128	; 0x80
    1d06:	430a      	orrs	r2, r1
    1d08:	61da      	str	r2, [r3, #28]
    1d0a:	4b11      	ldr	r3, [pc, #68]	; (1d50 <ClkConfig+0x134>)
    1d0c:	4a10      	ldr	r2, [pc, #64]	; (1d50 <ClkConfig+0x134>)
    1d0e:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d10:	2180      	movs	r1, #128	; 0x80
    1d12:	0489      	lsls	r1, r1, #18
    1d14:	430a      	orrs	r2, r1
    1d16:	629a      	str	r2, [r3, #40]	; 0x28
    1d18:	4b0d      	ldr	r3, [pc, #52]	; (1d50 <ClkConfig+0x134>)
    1d1a:	4a0d      	ldr	r2, [pc, #52]	; (1d50 <ClkConfig+0x134>)
    1d1c:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d1e:	4911      	ldr	r1, [pc, #68]	; (1d64 <ClkConfig+0x148>)
    1d20:	400a      	ands	r2, r1
    1d22:	629a      	str	r2, [r3, #40]	; 0x28
    1d24:	4b0a      	ldr	r3, [pc, #40]	; (1d50 <ClkConfig+0x134>)
    1d26:	4a0a      	ldr	r2, [pc, #40]	; (1d50 <ClkConfig+0x134>)
    1d28:	69d2      	ldr	r2, [r2, #28]
    1d2a:	2140      	movs	r1, #64	; 0x40
    1d2c:	430a      	orrs	r2, r1
    1d2e:	61da      	str	r2, [r3, #28]
    1d30:	4b07      	ldr	r3, [pc, #28]	; (1d50 <ClkConfig+0x134>)
    1d32:	4a07      	ldr	r2, [pc, #28]	; (1d50 <ClkConfig+0x134>)
    1d34:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d36:	2180      	movs	r1, #128	; 0x80
    1d38:	0449      	lsls	r1, r1, #17
    1d3a:	430a      	orrs	r2, r1
    1d3c:	629a      	str	r2, [r3, #40]	; 0x28
    1d3e:	4b04      	ldr	r3, [pc, #16]	; (1d50 <ClkConfig+0x134>)
    1d40:	4a03      	ldr	r2, [pc, #12]	; (1d50 <ClkConfig+0x134>)
    1d42:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d44:	21ff      	movs	r1, #255	; 0xff
    1d46:	438a      	bics	r2, r1
    1d48:	629a      	str	r2, [r3, #40]	; 0x28
    1d4a:	46c0      	nop			; (mov r8, r8)
    1d4c:	46bd      	mov	sp, r7
    1d4e:	bd80      	pop	{r7, pc}
    1d50:	40020000 	.word	0x40020000
    1d54:	400d8000 	.word	0x400d8000
    1d58:	000fffff 	.word	0x000fffff
    1d5c:	00000b04 	.word	0x00000b04
    1d60:	40018000 	.word	0x40018000
    1d64:	ffff00ff 	.word	0xffff00ff
    1d68:	03c0c000 	.word	0x03c0c000

00001d6c <TimerConfig>:
    1d6c:	b580      	push	{r7, lr}
    1d6e:	af00      	add	r7, sp, #0
    1d70:	4b19      	ldr	r3, [pc, #100]	; (1dd8 <TimerConfig+0x6c>)
    1d72:	2200      	movs	r2, #0
    1d74:	601a      	str	r2, [r3, #0]
    1d76:	4b18      	ldr	r3, [pc, #96]	; (1dd8 <TimerConfig+0x6c>)
    1d78:	225f      	movs	r2, #95	; 0x5f
    1d7a:	605a      	str	r2, [r3, #4]
    1d7c:	4b16      	ldr	r3, [pc, #88]	; (1dd8 <TimerConfig+0x6c>)
    1d7e:	4a17      	ldr	r2, [pc, #92]	; (1ddc <TimerConfig+0x70>)
    1d80:	609a      	str	r2, [r3, #8]
    1d82:	4b15      	ldr	r3, [pc, #84]	; (1dd8 <TimerConfig+0x6c>)
    1d84:	4a14      	ldr	r2, [pc, #80]	; (1dd8 <TimerConfig+0x6c>)
    1d86:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1d88:	2102      	movs	r1, #2
    1d8a:	430a      	orrs	r2, r1
    1d8c:	659a      	str	r2, [r3, #88]	; 0x58
    1d8e:	4b12      	ldr	r3, [pc, #72]	; (1dd8 <TimerConfig+0x6c>)
    1d90:	4a11      	ldr	r2, [pc, #68]	; (1dd8 <TimerConfig+0x6c>)
    1d92:	68d2      	ldr	r2, [r2, #12]
    1d94:	2101      	movs	r1, #1
    1d96:	430a      	orrs	r2, r1
    1d98:	60da      	str	r2, [r3, #12]
    1d9a:	200e      	movs	r0, #14
    1d9c:	f7ff fdfc 	bl	1998 <__NVIC_EnableIRQ>
    1da0:	4b0f      	ldr	r3, [pc, #60]	; (1de0 <TimerConfig+0x74>)
    1da2:	2200      	movs	r2, #0
    1da4:	601a      	str	r2, [r3, #0]
    1da6:	4b0e      	ldr	r3, [pc, #56]	; (1de0 <TimerConfig+0x74>)
    1da8:	225f      	movs	r2, #95	; 0x5f
    1daa:	605a      	str	r2, [r3, #4]
    1dac:	4b0c      	ldr	r3, [pc, #48]	; (1de0 <TimerConfig+0x74>)
    1dae:	22ee      	movs	r2, #238	; 0xee
    1db0:	0092      	lsls	r2, r2, #2
    1db2:	609a      	str	r2, [r3, #8]
    1db4:	4b0a      	ldr	r3, [pc, #40]	; (1de0 <TimerConfig+0x74>)
    1db6:	4a0a      	ldr	r2, [pc, #40]	; (1de0 <TimerConfig+0x74>)
    1db8:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1dba:	2102      	movs	r1, #2
    1dbc:	430a      	orrs	r2, r1
    1dbe:	659a      	str	r2, [r3, #88]	; 0x58
    1dc0:	4b07      	ldr	r3, [pc, #28]	; (1de0 <TimerConfig+0x74>)
    1dc2:	4a07      	ldr	r2, [pc, #28]	; (1de0 <TimerConfig+0x74>)
    1dc4:	68d2      	ldr	r2, [r2, #12]
    1dc6:	2101      	movs	r1, #1
    1dc8:	430a      	orrs	r2, r1
    1dca:	60da      	str	r2, [r3, #12]
    1dcc:	200f      	movs	r0, #15
    1dce:	f7ff fde3 	bl	1998 <__NVIC_EnableIRQ>
    1dd2:	46c0      	nop			; (mov r8, r8)
    1dd4:	46bd      	mov	sp, r7
    1dd6:	bd80      	pop	{r7, pc}
    1dd8:	40070000 	.word	0x40070000
    1ddc:	0001869f 	.word	0x0001869f
    1de0:	40078000 	.word	0x40078000

00001de4 <SystemInit>:
    1de4:	b580      	push	{r7, lr}
    1de6:	af00      	add	r7, sp, #0
    1de8:	f7ff ff18 	bl	1c1c <ClkConfig>
    1dec:	f7ff fe78 	bl	1ae0 <PortConfig>
    1df0:	f7ff ffbc 	bl	1d6c <TimerConfig>
    1df4:	2100      	movs	r1, #0
    1df6:	2012      	movs	r0, #18
    1df8:	f7ff fe04 	bl	1a04 <__NVIC_SetPriority>
    1dfc:	2101      	movs	r1, #1
    1dfe:	200e      	movs	r0, #14
    1e00:	f7ff fe00 	bl	1a04 <__NVIC_SetPriority>
    1e04:	2301      	movs	r3, #1
    1e06:	425b      	negs	r3, r3
    1e08:	2103      	movs	r1, #3
    1e0a:	0018      	movs	r0, r3
    1e0c:	f7ff fdfa 	bl	1a04 <__NVIC_SetPriority>
    1e10:	46c0      	nop			; (mov r8, r8)
    1e12:	46bd      	mov	sp, r7
    1e14:	bd80      	pop	{r7, pc}
    1e16:	46c0      	nop			; (mov r8, r8)

00001e18 <__NVIC_EnableIRQ>:
    1e18:	b580      	push	{r7, lr}
    1e1a:	b082      	sub	sp, #8
    1e1c:	af00      	add	r7, sp, #0
    1e1e:	0002      	movs	r2, r0
    1e20:	1dfb      	adds	r3, r7, #7
    1e22:	701a      	strb	r2, [r3, #0]
    1e24:	1dfb      	adds	r3, r7, #7
    1e26:	781b      	ldrb	r3, [r3, #0]
    1e28:	2b7f      	cmp	r3, #127	; 0x7f
    1e2a:	d809      	bhi.n	1e40 <__NVIC_EnableIRQ+0x28>
    1e2c:	4b06      	ldr	r3, [pc, #24]	; (1e48 <__NVIC_EnableIRQ+0x30>)
    1e2e:	1dfa      	adds	r2, r7, #7
    1e30:	7812      	ldrb	r2, [r2, #0]
    1e32:	0011      	movs	r1, r2
    1e34:	221f      	movs	r2, #31
    1e36:	400a      	ands	r2, r1
    1e38:	2101      	movs	r1, #1
    1e3a:	4091      	lsls	r1, r2
    1e3c:	000a      	movs	r2, r1
    1e3e:	601a      	str	r2, [r3, #0]
    1e40:	46c0      	nop			; (mov r8, r8)
    1e42:	46bd      	mov	sp, r7
    1e44:	b002      	add	sp, #8
    1e46:	bd80      	pop	{r7, pc}
    1e48:	e000e100 	.word	0xe000e100

00001e4c <RemoteMacInit>:
    1e4c:	b580      	push	{r7, lr}
    1e4e:	af00      	add	r7, sp, #0
    1e50:	4b0a      	ldr	r3, [pc, #40]	; (1e7c <RemoteMacInit+0x30>)
    1e52:	2200      	movs	r2, #0
    1e54:	801a      	strh	r2, [r3, #0]
    1e56:	4b09      	ldr	r3, [pc, #36]	; (1e7c <RemoteMacInit+0x30>)
    1e58:	2200      	movs	r2, #0
    1e5a:	805a      	strh	r2, [r3, #2]
    1e5c:	4b07      	ldr	r3, [pc, #28]	; (1e7c <RemoteMacInit+0x30>)
    1e5e:	2200      	movs	r2, #0
    1e60:	809a      	strh	r2, [r3, #4]
    1e62:	4b06      	ldr	r3, [pc, #24]	; (1e7c <RemoteMacInit+0x30>)
    1e64:	2200      	movs	r2, #0
    1e66:	80da      	strh	r2, [r3, #6]
    1e68:	4b04      	ldr	r3, [pc, #16]	; (1e7c <RemoteMacInit+0x30>)
    1e6a:	2200      	movs	r2, #0
    1e6c:	811a      	strh	r2, [r3, #8]
    1e6e:	4b03      	ldr	r3, [pc, #12]	; (1e7c <RemoteMacInit+0x30>)
    1e70:	2200      	movs	r2, #0
    1e72:	815a      	strh	r2, [r3, #10]
    1e74:	46c0      	nop			; (mov r8, r8)
    1e76:	46bd      	mov	sp, r7
    1e78:	bd80      	pop	{r7, pc}
    1e7a:	46c0      	nop			; (mov r8, r8)
    1e7c:	20004d1c 	.word	0x20004d1c

00001e80 <PHYInit>:
    1e80:	b580      	push	{r7, lr}
    1e82:	b084      	sub	sp, #16
    1e84:	af00      	add	r7, sp, #0
    1e86:	0002      	movs	r2, r0
    1e88:	1dfb      	adds	r3, r7, #7
    1e8a:	701a      	strb	r2, [r3, #0]
    1e8c:	1dbb      	adds	r3, r7, #6
    1e8e:	1c0a      	adds	r2, r1, #0
    1e90:	701a      	strb	r2, [r3, #0]
    1e92:	23c0      	movs	r3, #192	; 0xc0
    1e94:	059b      	lsls	r3, r3, #22
    1e96:	8e9b      	ldrh	r3, [r3, #52]	; 0x34
    1e98:	b29b      	uxth	r3, r3
    1e9a:	60fb      	str	r3, [r7, #12]
    1e9c:	68fa      	ldr	r2, [r7, #12]
    1e9e:	23ee      	movs	r3, #238	; 0xee
    1ea0:	00db      	lsls	r3, r3, #3
    1ea2:	4013      	ands	r3, r2
    1ea4:	60fb      	str	r3, [r7, #12]
    1ea6:	1dfb      	adds	r3, r7, #7
    1ea8:	781b      	ldrb	r3, [r3, #0]
    1eaa:	02da      	lsls	r2, r3, #11
    1eac:	1dbb      	adds	r3, r7, #6
    1eae:	781b      	ldrb	r3, [r3, #0]
    1eb0:	005b      	lsls	r3, r3, #1
    1eb2:	4313      	orrs	r3, r2
    1eb4:	001a      	movs	r2, r3
    1eb6:	68fb      	ldr	r3, [r7, #12]
    1eb8:	4313      	orrs	r3, r2
    1eba:	2201      	movs	r2, #1
    1ebc:	4313      	orrs	r3, r2
    1ebe:	60fb      	str	r3, [r7, #12]
    1ec0:	23c0      	movs	r3, #192	; 0xc0
    1ec2:	059b      	lsls	r3, r3, #22
    1ec4:	68fa      	ldr	r2, [r7, #12]
    1ec6:	b292      	uxth	r2, r2
    1ec8:	869a      	strh	r2, [r3, #52]	; 0x34
    1eca:	46c0      	nop			; (mov r8, r8)
    1ecc:	23c0      	movs	r3, #192	; 0xc0
    1ece:	059b      	lsls	r3, r3, #22
    1ed0:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    1ed2:	b29b      	uxth	r3, r3
    1ed4:	001a      	movs	r2, r3
    1ed6:	2310      	movs	r3, #16
    1ed8:	4013      	ands	r3, r2
    1eda:	d0f7      	beq.n	1ecc <PHYInit+0x4c>
    1edc:	46c0      	nop			; (mov r8, r8)
    1ede:	46bd      	mov	sp, r7
    1ee0:	b004      	add	sp, #16
    1ee2:	bd80      	pop	{r7, pc}

00001ee4 <SetPHYReg>:
    1ee4:	b590      	push	{r4, r7, lr}
    1ee6:	b085      	sub	sp, #20
    1ee8:	af00      	add	r7, sp, #0
    1eea:	0004      	movs	r4, r0
    1eec:	0008      	movs	r0, r1
    1eee:	0011      	movs	r1, r2
    1ef0:	1dfb      	adds	r3, r7, #7
    1ef2:	1c22      	adds	r2, r4, #0
    1ef4:	701a      	strb	r2, [r3, #0]
    1ef6:	1dbb      	adds	r3, r7, #6
    1ef8:	1c02      	adds	r2, r0, #0
    1efa:	701a      	strb	r2, [r3, #0]
    1efc:	1d3b      	adds	r3, r7, #4
    1efe:	1c0a      	adds	r2, r1, #0
    1f00:	801a      	strh	r2, [r3, #0]
    1f02:	23c0      	movs	r3, #192	; 0xc0
    1f04:	059b      	lsls	r3, r3, #22
    1f06:	1d3a      	adds	r2, r7, #4
    1f08:	8812      	ldrh	r2, [r2, #0]
    1f0a:	84da      	strh	r2, [r3, #38]	; 0x26
    1f0c:	1dfb      	adds	r3, r7, #7
    1f0e:	781b      	ldrb	r3, [r3, #0]
    1f10:	021a      	lsls	r2, r3, #8
    1f12:	23f8      	movs	r3, #248	; 0xf8
    1f14:	015b      	lsls	r3, r3, #5
    1f16:	4013      	ands	r3, r2
    1f18:	22c0      	movs	r2, #192	; 0xc0
    1f1a:	0212      	lsls	r2, r2, #8
    1f1c:	431a      	orrs	r2, r3
    1f1e:	1dbb      	adds	r3, r7, #6
    1f20:	781b      	ldrb	r3, [r3, #0]
    1f22:	211f      	movs	r1, #31
    1f24:	400b      	ands	r3, r1
    1f26:	4313      	orrs	r3, r2
    1f28:	2220      	movs	r2, #32
    1f2a:	4313      	orrs	r3, r2
    1f2c:	60fb      	str	r3, [r7, #12]
    1f2e:	23c0      	movs	r3, #192	; 0xc0
    1f30:	059b      	lsls	r3, r3, #22
    1f32:	68fa      	ldr	r2, [r7, #12]
    1f34:	b292      	uxth	r2, r2
    1f36:	849a      	strh	r2, [r3, #36]	; 0x24
    1f38:	46c0      	nop			; (mov r8, r8)
    1f3a:	23c0      	movs	r3, #192	; 0xc0
    1f3c:	059b      	lsls	r3, r3, #22
    1f3e:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1f40:	b29b      	uxth	r3, r3
    1f42:	b21b      	sxth	r3, r3
    1f44:	2b00      	cmp	r3, #0
    1f46:	daf8      	bge.n	1f3a <SetPHYReg+0x56>
    1f48:	46c0      	nop			; (mov r8, r8)
    1f4a:	46bd      	mov	sp, r7
    1f4c:	b005      	add	sp, #20
    1f4e:	bd90      	pop	{r4, r7, pc}

00001f50 <GetPHYReg>:
    1f50:	b580      	push	{r7, lr}
    1f52:	b084      	sub	sp, #16
    1f54:	af00      	add	r7, sp, #0
    1f56:	0002      	movs	r2, r0
    1f58:	1dfb      	adds	r3, r7, #7
    1f5a:	701a      	strb	r2, [r3, #0]
    1f5c:	1dbb      	adds	r3, r7, #6
    1f5e:	1c0a      	adds	r2, r1, #0
    1f60:	701a      	strb	r2, [r3, #0]
    1f62:	1dfb      	adds	r3, r7, #7
    1f64:	781b      	ldrb	r3, [r3, #0]
    1f66:	021a      	lsls	r2, r3, #8
    1f68:	23f8      	movs	r3, #248	; 0xf8
    1f6a:	015b      	lsls	r3, r3, #5
    1f6c:	4013      	ands	r3, r2
    1f6e:	4a0e      	ldr	r2, [pc, #56]	; (1fa8 <GetPHYReg+0x58>)
    1f70:	431a      	orrs	r2, r3
    1f72:	1dbb      	adds	r3, r7, #6
    1f74:	781b      	ldrb	r3, [r3, #0]
    1f76:	211f      	movs	r1, #31
    1f78:	400b      	ands	r3, r1
    1f7a:	4313      	orrs	r3, r2
    1f7c:	60fb      	str	r3, [r7, #12]
    1f7e:	23c0      	movs	r3, #192	; 0xc0
    1f80:	059b      	lsls	r3, r3, #22
    1f82:	68fa      	ldr	r2, [r7, #12]
    1f84:	b292      	uxth	r2, r2
    1f86:	849a      	strh	r2, [r3, #36]	; 0x24
    1f88:	46c0      	nop			; (mov r8, r8)
    1f8a:	23c0      	movs	r3, #192	; 0xc0
    1f8c:	059b      	lsls	r3, r3, #22
    1f8e:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1f90:	b29b      	uxth	r3, r3
    1f92:	b21b      	sxth	r3, r3
    1f94:	2b00      	cmp	r3, #0
    1f96:	daf8      	bge.n	1f8a <GetPHYReg+0x3a>
    1f98:	23c0      	movs	r3, #192	; 0xc0
    1f9a:	059b      	lsls	r3, r3, #22
    1f9c:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    1f9e:	b29b      	uxth	r3, r3
    1fa0:	0018      	movs	r0, r3
    1fa2:	46bd      	mov	sp, r7
    1fa4:	b004      	add	sp, #16
    1fa6:	bd80      	pop	{r7, pc}
    1fa8:	0000e020 	.word	0x0000e020

00001fac <EthernetConfig>:
    1fac:	b580      	push	{r7, lr}
    1fae:	b082      	sub	sp, #8
    1fb0:	af00      	add	r7, sp, #0
    1fb2:	2103      	movs	r1, #3
    1fb4:	201c      	movs	r0, #28
    1fb6:	f7ff ff63 	bl	1e80 <PHYInit>
    1fba:	23c0      	movs	r3, #192	; 0xc0
    1fbc:	059b      	lsls	r3, r3, #22
    1fbe:	4a12      	ldr	r2, [pc, #72]	; (2008 <EthernetConfig+0x5c>)
    1fc0:	8812      	ldrh	r2, [r2, #0]
    1fc2:	805a      	strh	r2, [r3, #2]
    1fc4:	23c0      	movs	r3, #192	; 0xc0
    1fc6:	059b      	lsls	r3, r3, #22
    1fc8:	4a0f      	ldr	r2, [pc, #60]	; (2008 <EthernetConfig+0x5c>)
    1fca:	8852      	ldrh	r2, [r2, #2]
    1fcc:	809a      	strh	r2, [r3, #4]
    1fce:	23c0      	movs	r3, #192	; 0xc0
    1fd0:	059b      	lsls	r3, r3, #22
    1fd2:	4a0d      	ldr	r2, [pc, #52]	; (2008 <EthernetConfig+0x5c>)
    1fd4:	8892      	ldrh	r2, [r2, #4]
    1fd6:	80da      	strh	r2, [r3, #6]
    1fd8:	f000 f81e 	bl	2018 <MACReset>
    1fdc:	23c0      	movs	r3, #192	; 0xc0
    1fde:	059b      	lsls	r3, r3, #22
    1fe0:	2207      	movs	r2, #7
    1fe2:	841a      	strh	r2, [r3, #32]
    1fe4:	2012      	movs	r0, #18
    1fe6:	f7ff ff17 	bl	1e18 <__NVIC_EnableIRQ>
    1fea:	4b08      	ldr	r3, [pc, #32]	; (200c <EthernetConfig+0x60>)
    1fec:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1fee:	607b      	str	r3, [r7, #4]
    1ff0:	687b      	ldr	r3, [r7, #4]
    1ff2:	b29a      	uxth	r2, r3
    1ff4:	4b06      	ldr	r3, [pc, #24]	; (2010 <EthernetConfig+0x64>)
    1ff6:	801a      	strh	r2, [r3, #0]
    1ff8:	687b      	ldr	r3, [r7, #4]
    1ffa:	b29a      	uxth	r2, r3
    1ffc:	4b05      	ldr	r3, [pc, #20]	; (2014 <EthernetConfig+0x68>)
    1ffe:	801a      	strh	r2, [r3, #0]
    2000:	46c0      	nop			; (mov r8, r8)
    2002:	46bd      	mov	sp, r7
    2004:	b002      	add	sp, #8
    2006:	bd80      	pop	{r7, pc}
    2008:	20000004 	.word	0x20000004
    200c:	400d8000 	.word	0x400d8000
    2010:	20004d30 	.word	0x20004d30
    2014:	20004d32 	.word	0x20004d32

00002018 <MACReset>:
    2018:	b580      	push	{r7, lr}
    201a:	af00      	add	r7, sp, #0
    201c:	23c0      	movs	r3, #192	; 0xc0
    201e:	059b      	lsls	r3, r3, #22
    2020:	22c0      	movs	r2, #192	; 0xc0
    2022:	0592      	lsls	r2, r2, #22
    2024:	8bd2      	ldrh	r2, [r2, #30]
    2026:	b292      	uxth	r2, r2
    2028:	2103      	movs	r1, #3
    202a:	430a      	orrs	r2, r1
    202c:	b292      	uxth	r2, r2
    202e:	83da      	strh	r2, [r3, #30]
    2030:	f000 f86a 	bl	2108 <ClearMemory>
    2034:	23c0      	movs	r3, #192	; 0xc0
    2036:	059b      	lsls	r3, r3, #22
    2038:	2280      	movs	r2, #128	; 0x80
    203a:	0152      	lsls	r2, r2, #5
    203c:	801a      	strh	r2, [r3, #0]
    203e:	23c0      	movs	r3, #192	; 0xc0
    2040:	059b      	lsls	r3, r3, #22
    2042:	2200      	movs	r2, #0
    2044:	811a      	strh	r2, [r3, #8]
    2046:	23c0      	movs	r3, #192	; 0xc0
    2048:	059b      	lsls	r3, r3, #22
    204a:	2200      	movs	r2, #0
    204c:	815a      	strh	r2, [r3, #10]
    204e:	23c0      	movs	r3, #192	; 0xc0
    2050:	059b      	lsls	r3, r3, #22
    2052:	2200      	movs	r2, #0
    2054:	819a      	strh	r2, [r3, #12]
    2056:	23c0      	movs	r3, #192	; 0xc0
    2058:	059b      	lsls	r3, r3, #22
    205a:	4a26      	ldr	r2, [pc, #152]	; (20f4 <MACReset+0xdc>)
    205c:	81da      	strh	r2, [r3, #14]
    205e:	23c0      	movs	r3, #192	; 0xc0
    2060:	059b      	lsls	r3, r3, #22
    2062:	2260      	movs	r2, #96	; 0x60
    2064:	821a      	strh	r2, [r3, #16]
    2066:	23c0      	movs	r3, #192	; 0xc0
    2068:	059b      	lsls	r3, r3, #22
    206a:	2250      	movs	r2, #80	; 0x50
    206c:	825a      	strh	r2, [r3, #18]
    206e:	23c0      	movs	r3, #192	; 0xc0
    2070:	059b      	lsls	r3, r3, #22
    2072:	2280      	movs	r2, #128	; 0x80
    2074:	0092      	lsls	r2, r2, #2
    2076:	829a      	strh	r2, [r3, #20]
    2078:	23c0      	movs	r3, #192	; 0xc0
    207a:	059b      	lsls	r3, r3, #22
    207c:	2205      	movs	r2, #5
    207e:	82da      	strh	r2, [r3, #22]
    2080:	23c0      	movs	r3, #192	; 0xc0
    2082:	059b      	lsls	r3, r3, #22
    2084:	4a1c      	ldr	r2, [pc, #112]	; (20f8 <MACReset+0xe0>)
    2086:	831a      	strh	r2, [r3, #24]
    2088:	23c0      	movs	r3, #192	; 0xc0
    208a:	059b      	lsls	r3, r3, #22
    208c:	4a1b      	ldr	r2, [pc, #108]	; (20fc <MACReset+0xe4>)
    208e:	835a      	strh	r2, [r3, #26]
    2090:	23c0      	movs	r3, #192	; 0xc0
    2092:	059b      	lsls	r3, r3, #22
    2094:	2280      	movs	r2, #128	; 0x80
    2096:	839a      	strh	r2, [r3, #28]
    2098:	23c0      	movs	r3, #192	; 0xc0
    209a:	059b      	lsls	r3, r3, #22
    209c:	4a18      	ldr	r2, [pc, #96]	; (2100 <MACReset+0xe8>)
    209e:	83da      	strh	r2, [r3, #30]
    20a0:	23c0      	movs	r3, #192	; 0xc0
    20a2:	059b      	lsls	r3, r3, #22
    20a4:	2200      	movs	r2, #0
    20a6:	841a      	strh	r2, [r3, #32]
    20a8:	23c0      	movs	r3, #192	; 0xc0
    20aa:	059b      	lsls	r3, r3, #22
    20ac:	2201      	movs	r2, #1
    20ae:	4252      	negs	r2, r2
    20b0:	845a      	strh	r2, [r3, #34]	; 0x22
    20b2:	23c0      	movs	r3, #192	; 0xc0
    20b4:	059b      	lsls	r3, r3, #22
    20b6:	2200      	movs	r2, #0
    20b8:	851a      	strh	r2, [r3, #40]	; 0x28
    20ba:	23c0      	movs	r3, #192	; 0xc0
    20bc:	059b      	lsls	r3, r3, #22
    20be:	2280      	movs	r2, #128	; 0x80
    20c0:	0152      	lsls	r2, r2, #5
    20c2:	855a      	strh	r2, [r3, #42]	; 0x2a
    20c4:	23c0      	movs	r3, #192	; 0xc0
    20c6:	059b      	lsls	r3, r3, #22
    20c8:	22c0      	movs	r2, #192	; 0xc0
    20ca:	0592      	lsls	r2, r2, #22
    20cc:	8b92      	ldrh	r2, [r2, #28]
    20ce:	b292      	uxth	r2, r2
    20d0:	490c      	ldr	r1, [pc, #48]	; (2104 <MACReset+0xec>)
    20d2:	400a      	ands	r2, r1
    20d4:	b292      	uxth	r2, r2
    20d6:	839a      	strh	r2, [r3, #28]
    20d8:	23c0      	movs	r3, #192	; 0xc0
    20da:	059b      	lsls	r3, r3, #22
    20dc:	22c0      	movs	r2, #192	; 0xc0
    20de:	0592      	lsls	r2, r2, #22
    20e0:	8bd2      	ldrh	r2, [r2, #30]
    20e2:	b292      	uxth	r2, r2
    20e4:	2103      	movs	r1, #3
    20e6:	438a      	bics	r2, r1
    20e8:	b292      	uxth	r2, r2
    20ea:	83da      	strh	r2, [r3, #30]
    20ec:	46c0      	nop			; (mov r8, r8)
    20ee:	46bd      	mov	sp, r7
    20f0:	bd80      	pop	{r7, pc}
    20f2:	46c0      	nop			; (mov r8, r8)
    20f4:	ffff8000 	.word	0xffff8000
    20f8:	ffff8606 	.word	0xffff8606
    20fc:	ffff81fa 	.word	0xffff81fa
    2100:	00003003 	.word	0x00003003
    2104:	ffffbfff 	.word	0xffffbfff

00002108 <ClearMemory>:
    2108:	b580      	push	{r7, lr}
    210a:	b082      	sub	sp, #8
    210c:	af00      	add	r7, sp, #0
    210e:	23e0      	movs	r3, #224	; 0xe0
    2110:	059b      	lsls	r3, r3, #22
    2112:	603b      	str	r3, [r7, #0]
    2114:	2300      	movs	r3, #0
    2116:	607b      	str	r3, [r7, #4]
    2118:	e007      	b.n	212a <ClearMemory+0x22>
    211a:	683b      	ldr	r3, [r7, #0]
    211c:	1d1a      	adds	r2, r3, #4
    211e:	603a      	str	r2, [r7, #0]
    2120:	2200      	movs	r2, #0
    2122:	601a      	str	r2, [r3, #0]
    2124:	687b      	ldr	r3, [r7, #4]
    2126:	3301      	adds	r3, #1
    2128:	607b      	str	r3, [r7, #4]
    212a:	687b      	ldr	r3, [r7, #4]
    212c:	4a03      	ldr	r2, [pc, #12]	; (213c <ClearMemory+0x34>)
    212e:	4293      	cmp	r3, r2
    2130:	d9f3      	bls.n	211a <ClearMemory+0x12>
    2132:	46c0      	nop			; (mov r8, r8)
    2134:	46bd      	mov	sp, r7
    2136:	b002      	add	sp, #8
    2138:	bd80      	pop	{r7, pc}
    213a:	46c0      	nop			; (mov r8, r8)
    213c:	000007ff 	.word	0x000007ff

00002140 <ReadPacket>:
    2140:	b580      	push	{r7, lr}
    2142:	b08a      	sub	sp, #40	; 0x28
    2144:	af00      	add	r7, sp, #0
    2146:	6078      	str	r0, [r7, #4]
    2148:	2316      	movs	r3, #22
    214a:	18fb      	adds	r3, r7, r3
    214c:	2200      	movs	r2, #0
    214e:	801a      	strh	r2, [r3, #0]
    2150:	2326      	movs	r3, #38	; 0x26
    2152:	18fb      	adds	r3, r7, r3
    2154:	2200      	movs	r2, #0
    2156:	801a      	strh	r2, [r3, #0]
    2158:	4b71      	ldr	r3, [pc, #452]	; (2320 <ReadPacket+0x1e0>)
    215a:	681a      	ldr	r2, [r3, #0]
    215c:	2301      	movs	r3, #1
    215e:	425b      	negs	r3, r3
    2160:	0019      	movs	r1, r3
    2162:	0010      	movs	r0, r2
    2164:	f004 fac8 	bl	66f8 <osMutexWait>
    2168:	23c0      	movs	r3, #192	; 0xc0
    216a:	059a      	lsls	r2, r3, #22
    216c:	2314      	movs	r3, #20
    216e:	18fb      	adds	r3, r7, r3
    2170:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    2172:	801a      	strh	r2, [r3, #0]
    2174:	23c0      	movs	r3, #192	; 0xc0
    2176:	059a      	lsls	r2, r3, #22
    2178:	2312      	movs	r3, #18
    217a:	18fb      	adds	r3, r7, r3
    217c:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    217e:	801a      	strh	r2, [r3, #0]
    2180:	2314      	movs	r3, #20
    2182:	18fa      	adds	r2, r7, r3
    2184:	2312      	movs	r3, #18
    2186:	18fb      	adds	r3, r7, r3
    2188:	8812      	ldrh	r2, [r2, #0]
    218a:	881b      	ldrh	r3, [r3, #0]
    218c:	429a      	cmp	r2, r3
    218e:	d90e      	bls.n	21ae <ReadPacket+0x6e>
    2190:	2326      	movs	r3, #38	; 0x26
    2192:	18fb      	adds	r3, r7, r3
    2194:	2214      	movs	r2, #20
    2196:	18b9      	adds	r1, r7, r2
    2198:	2212      	movs	r2, #18
    219a:	18ba      	adds	r2, r7, r2
    219c:	8809      	ldrh	r1, [r1, #0]
    219e:	8812      	ldrh	r2, [r2, #0]
    21a0:	1a8a      	subs	r2, r1, r2
    21a2:	801a      	strh	r2, [r3, #0]
    21a4:	2316      	movs	r3, #22
    21a6:	18fb      	adds	r3, r7, r3
    21a8:	2200      	movs	r2, #0
    21aa:	801a      	strh	r2, [r3, #0]
    21ac:	e00e      	b.n	21cc <ReadPacket+0x8c>
    21ae:	2326      	movs	r3, #38	; 0x26
    21b0:	18fb      	adds	r3, r7, r3
    21b2:	2212      	movs	r2, #18
    21b4:	18ba      	adds	r2, r7, r2
    21b6:	8812      	ldrh	r2, [r2, #0]
    21b8:	2180      	movs	r1, #128	; 0x80
    21ba:	0149      	lsls	r1, r1, #5
    21bc:	1a8a      	subs	r2, r1, r2
    21be:	801a      	strh	r2, [r3, #0]
    21c0:	2316      	movs	r3, #22
    21c2:	18fb      	adds	r3, r7, r3
    21c4:	2214      	movs	r2, #20
    21c6:	18ba      	adds	r2, r7, r2
    21c8:	8812      	ldrh	r2, [r2, #0]
    21ca:	801a      	strh	r2, [r3, #0]
    21cc:	2312      	movs	r3, #18
    21ce:	18fb      	adds	r3, r7, r3
    21d0:	881b      	ldrh	r3, [r3, #0]
    21d2:	22e0      	movs	r2, #224	; 0xe0
    21d4:	0592      	lsls	r2, r2, #22
    21d6:	4694      	mov	ip, r2
    21d8:	4463      	add	r3, ip
    21da:	623b      	str	r3, [r7, #32]
    21dc:	687b      	ldr	r3, [r7, #4]
    21de:	61fb      	str	r3, [r7, #28]
    21e0:	2308      	movs	r3, #8
    21e2:	18fa      	adds	r2, r7, r3
    21e4:	6a3b      	ldr	r3, [r7, #32]
    21e6:	1d19      	adds	r1, r3, #4
    21e8:	6239      	str	r1, [r7, #32]
    21ea:	681b      	ldr	r3, [r3, #0]
    21ec:	6013      	str	r3, [r2, #0]
    21ee:	2308      	movs	r3, #8
    21f0:	18fb      	adds	r3, r7, r3
    21f2:	881b      	ldrh	r3, [r3, #0]
    21f4:	3303      	adds	r3, #3
    21f6:	2b00      	cmp	r3, #0
    21f8:	da00      	bge.n	21fc <ReadPacket+0xbc>
    21fa:	3303      	adds	r3, #3
    21fc:	109b      	asrs	r3, r3, #2
    21fe:	60fb      	str	r3, [r7, #12]
    2200:	2326      	movs	r3, #38	; 0x26
    2202:	18fb      	adds	r3, r7, r3
    2204:	2226      	movs	r2, #38	; 0x26
    2206:	18ba      	adds	r2, r7, r2
    2208:	8812      	ldrh	r2, [r2, #0]
    220a:	3a04      	subs	r2, #4
    220c:	801a      	strh	r2, [r3, #0]
    220e:	6a3b      	ldr	r3, [r7, #32]
    2210:	b29b      	uxth	r3, r3
    2212:	4a44      	ldr	r2, [pc, #272]	; (2324 <ReadPacket+0x1e4>)
    2214:	4293      	cmp	r3, r2
    2216:	d902      	bls.n	221e <ReadPacket+0xde>
    2218:	23e0      	movs	r3, #224	; 0xe0
    221a:	059b      	lsls	r3, r3, #22
    221c:	623b      	str	r3, [r7, #32]
    221e:	2308      	movs	r3, #8
    2220:	18fb      	adds	r3, r7, r3
    2222:	881b      	ldrh	r3, [r3, #0]
    2224:	2226      	movs	r2, #38	; 0x26
    2226:	18ba      	adds	r2, r7, r2
    2228:	8812      	ldrh	r2, [r2, #0]
    222a:	429a      	cmp	r2, r3
    222c:	d312      	bcc.n	2254 <ReadPacket+0x114>
    222e:	2300      	movs	r3, #0
    2230:	61bb      	str	r3, [r7, #24]
    2232:	e00a      	b.n	224a <ReadPacket+0x10a>
    2234:	69fb      	ldr	r3, [r7, #28]
    2236:	1d1a      	adds	r2, r3, #4
    2238:	61fa      	str	r2, [r7, #28]
    223a:	6a3a      	ldr	r2, [r7, #32]
    223c:	1d11      	adds	r1, r2, #4
    223e:	6239      	str	r1, [r7, #32]
    2240:	6812      	ldr	r2, [r2, #0]
    2242:	601a      	str	r2, [r3, #0]
    2244:	69bb      	ldr	r3, [r7, #24]
    2246:	3301      	adds	r3, #1
    2248:	61bb      	str	r3, [r7, #24]
    224a:	69ba      	ldr	r2, [r7, #24]
    224c:	68fb      	ldr	r3, [r7, #12]
    224e:	429a      	cmp	r2, r3
    2250:	d3f0      	bcc.n	2234 <ReadPacket+0xf4>
    2252:	e034      	b.n	22be <ReadPacket+0x17e>
    2254:	2326      	movs	r3, #38	; 0x26
    2256:	18fb      	adds	r3, r7, r3
    2258:	881b      	ldrh	r3, [r3, #0]
    225a:	089b      	lsrs	r3, r3, #2
    225c:	b29b      	uxth	r3, r3
    225e:	001a      	movs	r2, r3
    2260:	68fb      	ldr	r3, [r7, #12]
    2262:	1a9b      	subs	r3, r3, r2
    2264:	60fb      	str	r3, [r7, #12]
    2266:	2300      	movs	r3, #0
    2268:	61bb      	str	r3, [r7, #24]
    226a:	e00a      	b.n	2282 <ReadPacket+0x142>
    226c:	69fb      	ldr	r3, [r7, #28]
    226e:	1d1a      	adds	r2, r3, #4
    2270:	61fa      	str	r2, [r7, #28]
    2272:	6a3a      	ldr	r2, [r7, #32]
    2274:	1d11      	adds	r1, r2, #4
    2276:	6239      	str	r1, [r7, #32]
    2278:	6812      	ldr	r2, [r2, #0]
    227a:	601a      	str	r2, [r3, #0]
    227c:	69bb      	ldr	r3, [r7, #24]
    227e:	3301      	adds	r3, #1
    2280:	61bb      	str	r3, [r7, #24]
    2282:	2326      	movs	r3, #38	; 0x26
    2284:	18fb      	adds	r3, r7, r3
    2286:	881b      	ldrh	r3, [r3, #0]
    2288:	089b      	lsrs	r3, r3, #2
    228a:	b29b      	uxth	r3, r3
    228c:	001a      	movs	r2, r3
    228e:	69bb      	ldr	r3, [r7, #24]
    2290:	429a      	cmp	r2, r3
    2292:	d8eb      	bhi.n	226c <ReadPacket+0x12c>
    2294:	23e0      	movs	r3, #224	; 0xe0
    2296:	059b      	lsls	r3, r3, #22
    2298:	623b      	str	r3, [r7, #32]
    229a:	2300      	movs	r3, #0
    229c:	61bb      	str	r3, [r7, #24]
    229e:	e00a      	b.n	22b6 <ReadPacket+0x176>
    22a0:	69fb      	ldr	r3, [r7, #28]
    22a2:	1d1a      	adds	r2, r3, #4
    22a4:	61fa      	str	r2, [r7, #28]
    22a6:	6a3a      	ldr	r2, [r7, #32]
    22a8:	1d11      	adds	r1, r2, #4
    22aa:	6239      	str	r1, [r7, #32]
    22ac:	6812      	ldr	r2, [r2, #0]
    22ae:	601a      	str	r2, [r3, #0]
    22b0:	69bb      	ldr	r3, [r7, #24]
    22b2:	3301      	adds	r3, #1
    22b4:	61bb      	str	r3, [r7, #24]
    22b6:	69ba      	ldr	r2, [r7, #24]
    22b8:	68fb      	ldr	r3, [r7, #12]
    22ba:	429a      	cmp	r2, r3
    22bc:	d3f0      	bcc.n	22a0 <ReadPacket+0x160>
    22be:	6a3b      	ldr	r3, [r7, #32]
    22c0:	b29b      	uxth	r3, r3
    22c2:	4a18      	ldr	r2, [pc, #96]	; (2324 <ReadPacket+0x1e4>)
    22c4:	4293      	cmp	r3, r2
    22c6:	d902      	bls.n	22ce <ReadPacket+0x18e>
    22c8:	23e0      	movs	r3, #224	; 0xe0
    22ca:	059b      	lsls	r3, r3, #22
    22cc:	623b      	str	r3, [r7, #32]
    22ce:	23c0      	movs	r3, #192	; 0xc0
    22d0:	059b      	lsls	r3, r3, #22
    22d2:	6a3a      	ldr	r2, [r7, #32]
    22d4:	b292      	uxth	r2, r2
    22d6:	851a      	strh	r2, [r3, #40]	; 0x28
    22d8:	23c0      	movs	r3, #192	; 0xc0
    22da:	059b      	lsls	r3, r3, #22
    22dc:	22c0      	movs	r2, #192	; 0xc0
    22de:	0592      	lsls	r2, r2, #22
    22e0:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    22e2:	b292      	uxth	r2, r2
    22e4:	3a20      	subs	r2, #32
    22e6:	b292      	uxth	r2, r2
    22e8:	861a      	strh	r2, [r3, #48]	; 0x30
    22ea:	687b      	ldr	r3, [r7, #4]
    22ec:	88da      	ldrh	r2, [r3, #6]
    22ee:	4b0e      	ldr	r3, [pc, #56]	; (2328 <ReadPacket+0x1e8>)
    22f0:	801a      	strh	r2, [r3, #0]
    22f2:	687b      	ldr	r3, [r7, #4]
    22f4:	891a      	ldrh	r2, [r3, #8]
    22f6:	4b0c      	ldr	r3, [pc, #48]	; (2328 <ReadPacket+0x1e8>)
    22f8:	805a      	strh	r2, [r3, #2]
    22fa:	687b      	ldr	r3, [r7, #4]
    22fc:	895a      	ldrh	r2, [r3, #10]
    22fe:	4b0a      	ldr	r3, [pc, #40]	; (2328 <ReadPacket+0x1e8>)
    2300:	809a      	strh	r2, [r3, #4]
    2302:	4b09      	ldr	r3, [pc, #36]	; (2328 <ReadPacket+0x1e8>)
    2304:	2201      	movs	r2, #1
    2306:	815a      	strh	r2, [r3, #10]
    2308:	4b05      	ldr	r3, [pc, #20]	; (2320 <ReadPacket+0x1e0>)
    230a:	681b      	ldr	r3, [r3, #0]
    230c:	0018      	movs	r0, r3
    230e:	f004 fa03 	bl	6718 <osMutexRelease>
    2312:	2308      	movs	r3, #8
    2314:	18fb      	adds	r3, r7, r3
    2316:	881b      	ldrh	r3, [r3, #0]
    2318:	0018      	movs	r0, r3
    231a:	46bd      	mov	sp, r7
    231c:	b00a      	add	sp, #40	; 0x28
    231e:	bd80      	pop	{r7, pc}
    2320:	2000532c 	.word	0x2000532c
    2324:	00000fff 	.word	0x00000fff
    2328:	20004d1c 	.word	0x20004d1c

0000232c <SendPacket>:
    232c:	b580      	push	{r7, lr}
    232e:	b08a      	sub	sp, #40	; 0x28
    2330:	af00      	add	r7, sp, #0
    2332:	6078      	str	r0, [r7, #4]
    2334:	6039      	str	r1, [r7, #0]
    2336:	4b79      	ldr	r3, [pc, #484]	; (251c <SendPacket+0x1f0>)
    2338:	681a      	ldr	r2, [r3, #0]
    233a:	2301      	movs	r3, #1
    233c:	425b      	negs	r3, r3
    233e:	0019      	movs	r1, r3
    2340:	0010      	movs	r0, r2
    2342:	f004 f9d9 	bl	66f8 <osMutexWait>
    2346:	23c0      	movs	r3, #192	; 0xc0
    2348:	059b      	lsls	r3, r3, #22
    234a:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    234c:	b29b      	uxth	r3, r3
    234e:	61bb      	str	r3, [r7, #24]
    2350:	23c0      	movs	r3, #192	; 0xc0
    2352:	059b      	lsls	r3, r3, #22
    2354:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    2356:	b29b      	uxth	r3, r3
    2358:	617b      	str	r3, [r7, #20]
    235a:	69ba      	ldr	r2, [r7, #24]
    235c:	697b      	ldr	r3, [r7, #20]
    235e:	429a      	cmp	r2, r3
    2360:	d90d      	bls.n	237e <SendPacket+0x52>
    2362:	69bb      	ldr	r3, [r7, #24]
    2364:	b29a      	uxth	r2, r3
    2366:	697b      	ldr	r3, [r7, #20]
    2368:	b29b      	uxth	r3, r3
    236a:	1ad3      	subs	r3, r2, r3
    236c:	b29a      	uxth	r2, r3
    236e:	230c      	movs	r3, #12
    2370:	18fb      	adds	r3, r7, r3
    2372:	801a      	strh	r2, [r3, #0]
    2374:	230c      	movs	r3, #12
    2376:	18fb      	adds	r3, r7, r3
    2378:	2200      	movs	r2, #0
    237a:	805a      	strh	r2, [r3, #2]
    237c:	e011      	b.n	23a2 <SendPacket+0x76>
    237e:	697b      	ldr	r3, [r7, #20]
    2380:	b29b      	uxth	r3, r3
    2382:	2280      	movs	r2, #128	; 0x80
    2384:	0192      	lsls	r2, r2, #6
    2386:	1ad3      	subs	r3, r2, r3
    2388:	b29a      	uxth	r2, r3
    238a:	230c      	movs	r3, #12
    238c:	18fb      	adds	r3, r7, r3
    238e:	801a      	strh	r2, [r3, #0]
    2390:	69bb      	ldr	r3, [r7, #24]
    2392:	b29b      	uxth	r3, r3
    2394:	4a62      	ldr	r2, [pc, #392]	; (2520 <SendPacket+0x1f4>)
    2396:	4694      	mov	ip, r2
    2398:	4463      	add	r3, ip
    239a:	b29a      	uxth	r2, r3
    239c:	230c      	movs	r3, #12
    239e:	18fb      	adds	r3, r7, r3
    23a0:	805a      	strh	r2, [r3, #2]
    23a2:	230c      	movs	r3, #12
    23a4:	18fb      	adds	r3, r7, r3
    23a6:	881b      	ldrh	r3, [r3, #0]
    23a8:	001a      	movs	r2, r3
    23aa:	230c      	movs	r3, #12
    23ac:	18fb      	adds	r3, r7, r3
    23ae:	885b      	ldrh	r3, [r3, #2]
    23b0:	18d3      	adds	r3, r2, r3
    23b2:	3b08      	subs	r3, #8
    23b4:	001a      	movs	r2, r3
    23b6:	683b      	ldr	r3, [r7, #0]
    23b8:	429a      	cmp	r2, r3
    23ba:	da01      	bge.n	23c0 <SendPacket+0x94>
    23bc:	2300      	movs	r3, #0
    23be:	e0a9      	b.n	2514 <SendPacket+0x1e8>
    23c0:	683b      	ldr	r3, [r7, #0]
    23c2:	613b      	str	r3, [r7, #16]
    23c4:	687b      	ldr	r3, [r7, #4]
    23c6:	623b      	str	r3, [r7, #32]
    23c8:	697b      	ldr	r3, [r7, #20]
    23ca:	22e0      	movs	r2, #224	; 0xe0
    23cc:	0592      	lsls	r2, r2, #22
    23ce:	4694      	mov	ip, r2
    23d0:	4463      	add	r3, ip
    23d2:	61fb      	str	r3, [r7, #28]
    23d4:	69fb      	ldr	r3, [r7, #28]
    23d6:	1d1a      	adds	r2, r3, #4
    23d8:	61fa      	str	r2, [r7, #28]
    23da:	693a      	ldr	r2, [r7, #16]
    23dc:	601a      	str	r2, [r3, #0]
    23de:	230c      	movs	r3, #12
    23e0:	18fb      	adds	r3, r7, r3
    23e2:	881b      	ldrh	r3, [r3, #0]
    23e4:	3b04      	subs	r3, #4
    23e6:	b29a      	uxth	r2, r3
    23e8:	230c      	movs	r3, #12
    23ea:	18fb      	adds	r3, r7, r3
    23ec:	801a      	strh	r2, [r3, #0]
    23ee:	69fb      	ldr	r3, [r7, #28]
    23f0:	b29b      	uxth	r3, r3
    23f2:	4a4c      	ldr	r2, [pc, #304]	; (2524 <SendPacket+0x1f8>)
    23f4:	4293      	cmp	r3, r2
    23f6:	d901      	bls.n	23fc <SendPacket+0xd0>
    23f8:	4b4b      	ldr	r3, [pc, #300]	; (2528 <SendPacket+0x1fc>)
    23fa:	61fb      	str	r3, [r7, #28]
    23fc:	683b      	ldr	r3, [r7, #0]
    23fe:	3303      	adds	r3, #3
    2400:	2b00      	cmp	r3, #0
    2402:	da00      	bge.n	2406 <SendPacket+0xda>
    2404:	3303      	adds	r3, #3
    2406:	109b      	asrs	r3, r3, #2
    2408:	613b      	str	r3, [r7, #16]
    240a:	230c      	movs	r3, #12
    240c:	18fb      	adds	r3, r7, r3
    240e:	881b      	ldrh	r3, [r3, #0]
    2410:	001a      	movs	r2, r3
    2412:	683b      	ldr	r3, [r7, #0]
    2414:	429a      	cmp	r2, r3
    2416:	db1a      	blt.n	244e <SendPacket+0x122>
    2418:	2326      	movs	r3, #38	; 0x26
    241a:	18fb      	adds	r3, r7, r3
    241c:	2200      	movs	r2, #0
    241e:	801a      	strh	r2, [r3, #0]
    2420:	e00e      	b.n	2440 <SendPacket+0x114>
    2422:	69fb      	ldr	r3, [r7, #28]
    2424:	1d1a      	adds	r2, r3, #4
    2426:	61fa      	str	r2, [r7, #28]
    2428:	6a3a      	ldr	r2, [r7, #32]
    242a:	1d11      	adds	r1, r2, #4
    242c:	6239      	str	r1, [r7, #32]
    242e:	6812      	ldr	r2, [r2, #0]
    2430:	601a      	str	r2, [r3, #0]
    2432:	2326      	movs	r3, #38	; 0x26
    2434:	18fb      	adds	r3, r7, r3
    2436:	881a      	ldrh	r2, [r3, #0]
    2438:	2326      	movs	r3, #38	; 0x26
    243a:	18fb      	adds	r3, r7, r3
    243c:	3201      	adds	r2, #1
    243e:	801a      	strh	r2, [r3, #0]
    2440:	2326      	movs	r3, #38	; 0x26
    2442:	18fb      	adds	r3, r7, r3
    2444:	881a      	ldrh	r2, [r3, #0]
    2446:	693b      	ldr	r3, [r7, #16]
    2448:	429a      	cmp	r2, r3
    244a:	d3ea      	bcc.n	2422 <SendPacket+0xf6>
    244c:	e042      	b.n	24d4 <SendPacket+0x1a8>
    244e:	230c      	movs	r3, #12
    2450:	18fb      	adds	r3, r7, r3
    2452:	881b      	ldrh	r3, [r3, #0]
    2454:	089b      	lsrs	r3, r3, #2
    2456:	b29b      	uxth	r3, r3
    2458:	001a      	movs	r2, r3
    245a:	693b      	ldr	r3, [r7, #16]
    245c:	1a9b      	subs	r3, r3, r2
    245e:	613b      	str	r3, [r7, #16]
    2460:	2326      	movs	r3, #38	; 0x26
    2462:	18fb      	adds	r3, r7, r3
    2464:	2200      	movs	r2, #0
    2466:	801a      	strh	r2, [r3, #0]
    2468:	e00e      	b.n	2488 <SendPacket+0x15c>
    246a:	69fb      	ldr	r3, [r7, #28]
    246c:	1d1a      	adds	r2, r3, #4
    246e:	61fa      	str	r2, [r7, #28]
    2470:	6a3a      	ldr	r2, [r7, #32]
    2472:	1d11      	adds	r1, r2, #4
    2474:	6239      	str	r1, [r7, #32]
    2476:	6812      	ldr	r2, [r2, #0]
    2478:	601a      	str	r2, [r3, #0]
    247a:	2326      	movs	r3, #38	; 0x26
    247c:	18fb      	adds	r3, r7, r3
    247e:	881a      	ldrh	r2, [r3, #0]
    2480:	2326      	movs	r3, #38	; 0x26
    2482:	18fb      	adds	r3, r7, r3
    2484:	3201      	adds	r2, #1
    2486:	801a      	strh	r2, [r3, #0]
    2488:	230c      	movs	r3, #12
    248a:	18fb      	adds	r3, r7, r3
    248c:	881b      	ldrh	r3, [r3, #0]
    248e:	089b      	lsrs	r3, r3, #2
    2490:	b29b      	uxth	r3, r3
    2492:	2226      	movs	r2, #38	; 0x26
    2494:	18ba      	adds	r2, r7, r2
    2496:	8812      	ldrh	r2, [r2, #0]
    2498:	429a      	cmp	r2, r3
    249a:	d3e6      	bcc.n	246a <SendPacket+0x13e>
    249c:	4b22      	ldr	r3, [pc, #136]	; (2528 <SendPacket+0x1fc>)
    249e:	61fb      	str	r3, [r7, #28]
    24a0:	2326      	movs	r3, #38	; 0x26
    24a2:	18fb      	adds	r3, r7, r3
    24a4:	2200      	movs	r2, #0
    24a6:	801a      	strh	r2, [r3, #0]
    24a8:	e00e      	b.n	24c8 <SendPacket+0x19c>
    24aa:	69fb      	ldr	r3, [r7, #28]
    24ac:	1d1a      	adds	r2, r3, #4
    24ae:	61fa      	str	r2, [r7, #28]
    24b0:	6a3a      	ldr	r2, [r7, #32]
    24b2:	1d11      	adds	r1, r2, #4
    24b4:	6239      	str	r1, [r7, #32]
    24b6:	6812      	ldr	r2, [r2, #0]
    24b8:	601a      	str	r2, [r3, #0]
    24ba:	2326      	movs	r3, #38	; 0x26
    24bc:	18fb      	adds	r3, r7, r3
    24be:	881a      	ldrh	r2, [r3, #0]
    24c0:	2326      	movs	r3, #38	; 0x26
    24c2:	18fb      	adds	r3, r7, r3
    24c4:	3201      	adds	r2, #1
    24c6:	801a      	strh	r2, [r3, #0]
    24c8:	2326      	movs	r3, #38	; 0x26
    24ca:	18fb      	adds	r3, r7, r3
    24cc:	881a      	ldrh	r2, [r3, #0]
    24ce:	693b      	ldr	r3, [r7, #16]
    24d0:	429a      	cmp	r2, r3
    24d2:	d3ea      	bcc.n	24aa <SendPacket+0x17e>
    24d4:	69fb      	ldr	r3, [r7, #28]
    24d6:	b29b      	uxth	r3, r3
    24d8:	4a12      	ldr	r2, [pc, #72]	; (2524 <SendPacket+0x1f8>)
    24da:	4293      	cmp	r3, r2
    24dc:	d901      	bls.n	24e2 <SendPacket+0x1b6>
    24de:	4b12      	ldr	r3, [pc, #72]	; (2528 <SendPacket+0x1fc>)
    24e0:	61fb      	str	r3, [r7, #28]
    24e2:	2300      	movs	r3, #0
    24e4:	613b      	str	r3, [r7, #16]
    24e6:	69fb      	ldr	r3, [r7, #28]
    24e8:	1d1a      	adds	r2, r3, #4
    24ea:	61fa      	str	r2, [r7, #28]
    24ec:	693a      	ldr	r2, [r7, #16]
    24ee:	601a      	str	r2, [r3, #0]
    24f0:	69fb      	ldr	r3, [r7, #28]
    24f2:	b29b      	uxth	r3, r3
    24f4:	4a0b      	ldr	r2, [pc, #44]	; (2524 <SendPacket+0x1f8>)
    24f6:	4293      	cmp	r3, r2
    24f8:	d901      	bls.n	24fe <SendPacket+0x1d2>
    24fa:	4b0b      	ldr	r3, [pc, #44]	; (2528 <SendPacket+0x1fc>)
    24fc:	61fb      	str	r3, [r7, #28]
    24fe:	23c0      	movs	r3, #192	; 0xc0
    2500:	059b      	lsls	r3, r3, #22
    2502:	69fa      	ldr	r2, [r7, #28]
    2504:	b292      	uxth	r2, r2
    2506:	855a      	strh	r2, [r3, #42]	; 0x2a
    2508:	4b04      	ldr	r3, [pc, #16]	; (251c <SendPacket+0x1f0>)
    250a:	681b      	ldr	r3, [r3, #0]
    250c:	0018      	movs	r0, r3
    250e:	f004 f903 	bl	6718 <osMutexRelease>
    2512:	683b      	ldr	r3, [r7, #0]
    2514:	0018      	movs	r0, r3
    2516:	46bd      	mov	sp, r7
    2518:	b00a      	add	sp, #40	; 0x28
    251a:	bd80      	pop	{r7, pc}
    251c:	20005340 	.word	0x20005340
    2520:	fffff000 	.word	0xfffff000
    2524:	00001ffc 	.word	0x00001ffc
    2528:	38001000 	.word	0x38001000

0000252c <ETHERNET_Handler>:
    252c:	b580      	push	{r7, lr}
    252e:	b082      	sub	sp, #8
    2530:	af00      	add	r7, sp, #0
    2532:	23c0      	movs	r3, #192	; 0xc0
    2534:	059a      	lsls	r2, r3, #22
    2536:	1dbb      	adds	r3, r7, #6
    2538:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    253a:	801a      	strh	r2, [r3, #0]
    253c:	23c0      	movs	r3, #192	; 0xc0
    253e:	059b      	lsls	r3, r3, #22
    2540:	1dba      	adds	r2, r7, #6
    2542:	8812      	ldrh	r2, [r2, #0]
    2544:	845a      	strh	r2, [r3, #34]	; 0x22
    2546:	1dbb      	adds	r3, r7, #6
    2548:	881b      	ldrh	r3, [r3, #0]
    254a:	2201      	movs	r2, #1
    254c:	4013      	ands	r3, r2
    254e:	d008      	beq.n	2562 <ETHERNET_Handler+0x36>
    2550:	4b0a      	ldr	r3, [pc, #40]	; (257c <ETHERNET_Handler+0x50>)
    2552:	2201      	movs	r2, #1
    2554:	601a      	str	r2, [r3, #0]
    2556:	4b0a      	ldr	r3, [pc, #40]	; (2580 <ETHERNET_Handler+0x54>)
    2558:	681b      	ldr	r3, [r3, #0]
    255a:	2101      	movs	r1, #1
    255c:	0018      	movs	r0, r3
    255e:	f003 ffe9 	bl	6534 <osSignalSet>
    2562:	1dbb      	adds	r3, r7, #6
    2564:	881b      	ldrh	r3, [r3, #0]
    2566:	2202      	movs	r2, #2
    2568:	4013      	ands	r3, r2
    256a:	d002      	beq.n	2572 <ETHERNET_Handler+0x46>
    256c:	4b05      	ldr	r3, [pc, #20]	; (2584 <ETHERNET_Handler+0x58>)
    256e:	2201      	movs	r2, #1
    2570:	601a      	str	r2, [r3, #0]
    2572:	46c0      	nop			; (mov r8, r8)
    2574:	46bd      	mov	sp, r7
    2576:	b002      	add	sp, #8
    2578:	bd80      	pop	{r7, pc}
    257a:	46c0      	nop			; (mov r8, r8)
    257c:	20004d28 	.word	0x20004d28
    2580:	20000858 	.word	0x20000858
    2584:	20004d2c 	.word	0x20004d2c

00002588 <network_config>:
    2588:	b580      	push	{r7, lr}
    258a:	af00      	add	r7, sp, #0
    258c:	46c0      	nop			; (mov r8, r8)
    258e:	46bd      	mov	sp, r7
    2590:	bd80      	pop	{r7, pc}
    2592:	46c0      	nop			; (mov r8, r8)

00002594 <Answear_ARP>:
    2594:	b580      	push	{r7, lr}
    2596:	b08c      	sub	sp, #48	; 0x30
    2598:	af00      	add	r7, sp, #0
    259a:	4b36      	ldr	r3, [pc, #216]	; (2674 <Answear_ARP+0xe0>)
    259c:	88da      	ldrh	r2, [r3, #6]
    259e:	1d3b      	adds	r3, r7, #4
    25a0:	801a      	strh	r2, [r3, #0]
    25a2:	4b34      	ldr	r3, [pc, #208]	; (2674 <Answear_ARP+0xe0>)
    25a4:	891a      	ldrh	r2, [r3, #8]
    25a6:	1d3b      	adds	r3, r7, #4
    25a8:	805a      	strh	r2, [r3, #2]
    25aa:	4b32      	ldr	r3, [pc, #200]	; (2674 <Answear_ARP+0xe0>)
    25ac:	895a      	ldrh	r2, [r3, #10]
    25ae:	1d3b      	adds	r3, r7, #4
    25b0:	809a      	strh	r2, [r3, #4]
    25b2:	23c0      	movs	r3, #192	; 0xc0
    25b4:	059b      	lsls	r3, r3, #22
    25b6:	885b      	ldrh	r3, [r3, #2]
    25b8:	b29a      	uxth	r2, r3
    25ba:	1d3b      	adds	r3, r7, #4
    25bc:	80da      	strh	r2, [r3, #6]
    25be:	23c0      	movs	r3, #192	; 0xc0
    25c0:	059b      	lsls	r3, r3, #22
    25c2:	889b      	ldrh	r3, [r3, #4]
    25c4:	b29a      	uxth	r2, r3
    25c6:	1d3b      	adds	r3, r7, #4
    25c8:	811a      	strh	r2, [r3, #8]
    25ca:	23c0      	movs	r3, #192	; 0xc0
    25cc:	059b      	lsls	r3, r3, #22
    25ce:	88db      	ldrh	r3, [r3, #6]
    25d0:	b29a      	uxth	r2, r3
    25d2:	1d3b      	adds	r3, r7, #4
    25d4:	815a      	strh	r2, [r3, #10]
    25d6:	4b27      	ldr	r3, [pc, #156]	; (2674 <Answear_ARP+0xe0>)
    25d8:	899a      	ldrh	r2, [r3, #12]
    25da:	1d3b      	adds	r3, r7, #4
    25dc:	819a      	strh	r2, [r3, #12]
    25de:	4b25      	ldr	r3, [pc, #148]	; (2674 <Answear_ARP+0xe0>)
    25e0:	89da      	ldrh	r2, [r3, #14]
    25e2:	1d3b      	adds	r3, r7, #4
    25e4:	81da      	strh	r2, [r3, #14]
    25e6:	4b23      	ldr	r3, [pc, #140]	; (2674 <Answear_ARP+0xe0>)
    25e8:	8a1a      	ldrh	r2, [r3, #16]
    25ea:	1d3b      	adds	r3, r7, #4
    25ec:	821a      	strh	r2, [r3, #16]
    25ee:	4b21      	ldr	r3, [pc, #132]	; (2674 <Answear_ARP+0xe0>)
    25f0:	8a5a      	ldrh	r2, [r3, #18]
    25f2:	1d3b      	adds	r3, r7, #4
    25f4:	825a      	strh	r2, [r3, #18]
    25f6:	1d3b      	adds	r3, r7, #4
    25f8:	2280      	movs	r2, #128	; 0x80
    25fa:	0092      	lsls	r2, r2, #2
    25fc:	829a      	strh	r2, [r3, #20]
    25fe:	23c0      	movs	r3, #192	; 0xc0
    2600:	059b      	lsls	r3, r3, #22
    2602:	885b      	ldrh	r3, [r3, #2]
    2604:	b29a      	uxth	r2, r3
    2606:	1d3b      	adds	r3, r7, #4
    2608:	82da      	strh	r2, [r3, #22]
    260a:	23c0      	movs	r3, #192	; 0xc0
    260c:	059b      	lsls	r3, r3, #22
    260e:	889b      	ldrh	r3, [r3, #4]
    2610:	b29a      	uxth	r2, r3
    2612:	1d3b      	adds	r3, r7, #4
    2614:	831a      	strh	r2, [r3, #24]
    2616:	23c0      	movs	r3, #192	; 0xc0
    2618:	059b      	lsls	r3, r3, #22
    261a:	88db      	ldrh	r3, [r3, #6]
    261c:	b29a      	uxth	r2, r3
    261e:	1d3b      	adds	r3, r7, #4
    2620:	835a      	strh	r2, [r3, #26]
    2622:	4b15      	ldr	r3, [pc, #84]	; (2678 <Answear_ARP+0xe4>)
    2624:	881a      	ldrh	r2, [r3, #0]
    2626:	1d3b      	adds	r3, r7, #4
    2628:	839a      	strh	r2, [r3, #28]
    262a:	4b13      	ldr	r3, [pc, #76]	; (2678 <Answear_ARP+0xe4>)
    262c:	885a      	ldrh	r2, [r3, #2]
    262e:	1d3b      	adds	r3, r7, #4
    2630:	83da      	strh	r2, [r3, #30]
    2632:	4b10      	ldr	r3, [pc, #64]	; (2674 <Answear_ARP+0xe0>)
    2634:	88da      	ldrh	r2, [r3, #6]
    2636:	1d3b      	adds	r3, r7, #4
    2638:	841a      	strh	r2, [r3, #32]
    263a:	4b0e      	ldr	r3, [pc, #56]	; (2674 <Answear_ARP+0xe0>)
    263c:	891a      	ldrh	r2, [r3, #8]
    263e:	1d3b      	adds	r3, r7, #4
    2640:	845a      	strh	r2, [r3, #34]	; 0x22
    2642:	4b0c      	ldr	r3, [pc, #48]	; (2674 <Answear_ARP+0xe0>)
    2644:	895a      	ldrh	r2, [r3, #10]
    2646:	1d3b      	adds	r3, r7, #4
    2648:	849a      	strh	r2, [r3, #36]	; 0x24
    264a:	4b0a      	ldr	r3, [pc, #40]	; (2674 <Answear_ARP+0xe0>)
    264c:	8b9a      	ldrh	r2, [r3, #28]
    264e:	1d3b      	adds	r3, r7, #4
    2650:	84da      	strh	r2, [r3, #38]	; 0x26
    2652:	4b08      	ldr	r3, [pc, #32]	; (2674 <Answear_ARP+0xe0>)
    2654:	8bda      	ldrh	r2, [r3, #30]
    2656:	1d3b      	adds	r3, r7, #4
    2658:	851a      	strh	r2, [r3, #40]	; 0x28
    265a:	1d3b      	adds	r3, r7, #4
    265c:	2200      	movs	r2, #0
    265e:	855a      	strh	r2, [r3, #42]	; 0x2a
    2660:	1d3b      	adds	r3, r7, #4
    2662:	212a      	movs	r1, #42	; 0x2a
    2664:	0018      	movs	r0, r3
    2666:	f7ff fe61 	bl	232c <SendPacket>
    266a:	46c0      	nop			; (mov r8, r8)
    266c:	46bd      	mov	sp, r7
    266e:	b00c      	add	sp, #48	; 0x30
    2670:	bd80      	pop	{r7, pc}
    2672:	46c0      	nop			; (mov r8, r8)
    2674:	20004d38 	.word	0x20004d38
    2678:	2000000c 	.word	0x2000000c

0000267c <CheckSum_UDP>:
    267c:	b580      	push	{r7, lr}
    267e:	b086      	sub	sp, #24
    2680:	af00      	add	r7, sp, #0
    2682:	0002      	movs	r2, r0
    2684:	6039      	str	r1, [r7, #0]
    2686:	1dbb      	adds	r3, r7, #6
    2688:	801a      	strh	r2, [r3, #0]
    268a:	2300      	movs	r3, #0
    268c:	613b      	str	r3, [r7, #16]
    268e:	230d      	movs	r3, #13
    2690:	617b      	str	r3, [r7, #20]
    2692:	e019      	b.n	26c8 <CheckSum_UDP+0x4c>
    2694:	697b      	ldr	r3, [r7, #20]
    2696:	005b      	lsls	r3, r3, #1
    2698:	683a      	ldr	r2, [r7, #0]
    269a:	18d3      	adds	r3, r2, r3
    269c:	881b      	ldrh	r3, [r3, #0]
    269e:	021b      	lsls	r3, r3, #8
    26a0:	041b      	lsls	r3, r3, #16
    26a2:	0c1a      	lsrs	r2, r3, #16
    26a4:	697b      	ldr	r3, [r7, #20]
    26a6:	005b      	lsls	r3, r3, #1
    26a8:	6839      	ldr	r1, [r7, #0]
    26aa:	18cb      	adds	r3, r1, r3
    26ac:	881b      	ldrh	r3, [r3, #0]
    26ae:	0a1b      	lsrs	r3, r3, #8
    26b0:	b29b      	uxth	r3, r3
    26b2:	0019      	movs	r1, r3
    26b4:	23ff      	movs	r3, #255	; 0xff
    26b6:	400b      	ands	r3, r1
    26b8:	18d3      	adds	r3, r2, r3
    26ba:	001a      	movs	r2, r3
    26bc:	693b      	ldr	r3, [r7, #16]
    26be:	189b      	adds	r3, r3, r2
    26c0:	613b      	str	r3, [r7, #16]
    26c2:	697b      	ldr	r3, [r7, #20]
    26c4:	3301      	adds	r3, #1
    26c6:	617b      	str	r3, [r7, #20]
    26c8:	697b      	ldr	r3, [r7, #20]
    26ca:	2b10      	cmp	r3, #16
    26cc:	d9e2      	bls.n	2694 <CheckSum_UDP+0x18>
    26ce:	683b      	ldr	r3, [r7, #0]
    26d0:	3316      	adds	r3, #22
    26d2:	881b      	ldrh	r3, [r3, #0]
    26d4:	0a1b      	lsrs	r3, r3, #8
    26d6:	b29b      	uxth	r3, r3
    26d8:	001a      	movs	r2, r3
    26da:	23ff      	movs	r3, #255	; 0xff
    26dc:	4013      	ands	r3, r2
    26de:	693a      	ldr	r2, [r7, #16]
    26e0:	18d3      	adds	r3, r2, r3
    26e2:	613b      	str	r3, [r7, #16]
    26e4:	1dbb      	adds	r3, r7, #6
    26e6:	881b      	ldrh	r3, [r3, #0]
    26e8:	693a      	ldr	r2, [r7, #16]
    26ea:	18d3      	adds	r3, r2, r3
    26ec:	613b      	str	r3, [r7, #16]
    26ee:	683b      	ldr	r3, [r7, #0]
    26f0:	3322      	adds	r3, #34	; 0x22
    26f2:	881b      	ldrh	r3, [r3, #0]
    26f4:	021b      	lsls	r3, r3, #8
    26f6:	041b      	lsls	r3, r3, #16
    26f8:	0c1a      	lsrs	r2, r3, #16
    26fa:	683b      	ldr	r3, [r7, #0]
    26fc:	3322      	adds	r3, #34	; 0x22
    26fe:	881b      	ldrh	r3, [r3, #0]
    2700:	0a1b      	lsrs	r3, r3, #8
    2702:	b29b      	uxth	r3, r3
    2704:	0019      	movs	r1, r3
    2706:	23ff      	movs	r3, #255	; 0xff
    2708:	400b      	ands	r3, r1
    270a:	18d3      	adds	r3, r2, r3
    270c:	001a      	movs	r2, r3
    270e:	693b      	ldr	r3, [r7, #16]
    2710:	189b      	adds	r3, r3, r2
    2712:	613b      	str	r3, [r7, #16]
    2714:	683b      	ldr	r3, [r7, #0]
    2716:	3324      	adds	r3, #36	; 0x24
    2718:	881b      	ldrh	r3, [r3, #0]
    271a:	021b      	lsls	r3, r3, #8
    271c:	041b      	lsls	r3, r3, #16
    271e:	0c1a      	lsrs	r2, r3, #16
    2720:	683b      	ldr	r3, [r7, #0]
    2722:	3324      	adds	r3, #36	; 0x24
    2724:	881b      	ldrh	r3, [r3, #0]
    2726:	0a1b      	lsrs	r3, r3, #8
    2728:	b29b      	uxth	r3, r3
    272a:	0019      	movs	r1, r3
    272c:	23ff      	movs	r3, #255	; 0xff
    272e:	400b      	ands	r3, r1
    2730:	18d3      	adds	r3, r2, r3
    2732:	001a      	movs	r2, r3
    2734:	693b      	ldr	r3, [r7, #16]
    2736:	189b      	adds	r3, r3, r2
    2738:	613b      	str	r3, [r7, #16]
    273a:	1dbb      	adds	r3, r7, #6
    273c:	881b      	ldrh	r3, [r3, #0]
    273e:	693a      	ldr	r2, [r7, #16]
    2740:	18d3      	adds	r3, r2, r3
    2742:	613b      	str	r3, [r7, #16]
    2744:	683b      	ldr	r3, [r7, #0]
    2746:	3328      	adds	r3, #40	; 0x28
    2748:	881b      	ldrh	r3, [r3, #0]
    274a:	021b      	lsls	r3, r3, #8
    274c:	041b      	lsls	r3, r3, #16
    274e:	0c1a      	lsrs	r2, r3, #16
    2750:	683b      	ldr	r3, [r7, #0]
    2752:	3328      	adds	r3, #40	; 0x28
    2754:	881b      	ldrh	r3, [r3, #0]
    2756:	0a1b      	lsrs	r3, r3, #8
    2758:	b29b      	uxth	r3, r3
    275a:	0019      	movs	r1, r3
    275c:	23ff      	movs	r3, #255	; 0xff
    275e:	400b      	ands	r3, r1
    2760:	18d3      	adds	r3, r2, r3
    2762:	001a      	movs	r2, r3
    2764:	693b      	ldr	r3, [r7, #16]
    2766:	189b      	adds	r3, r3, r2
    2768:	613b      	str	r3, [r7, #16]
    276a:	683b      	ldr	r3, [r7, #0]
    276c:	332a      	adds	r3, #42	; 0x2a
    276e:	60fb      	str	r3, [r7, #12]
    2770:	2300      	movs	r3, #0
    2772:	617b      	str	r3, [r7, #20]
    2774:	e017      	b.n	27a6 <CheckSum_UDP+0x12a>
    2776:	697b      	ldr	r3, [r7, #20]
    2778:	2201      	movs	r2, #1
    277a:	4013      	ands	r3, r2
    277c:	d008      	beq.n	2790 <CheckSum_UDP+0x114>
    277e:	68fb      	ldr	r3, [r7, #12]
    2780:	1c5a      	adds	r2, r3, #1
    2782:	60fa      	str	r2, [r7, #12]
    2784:	781b      	ldrb	r3, [r3, #0]
    2786:	001a      	movs	r2, r3
    2788:	693b      	ldr	r3, [r7, #16]
    278a:	189b      	adds	r3, r3, r2
    278c:	613b      	str	r3, [r7, #16]
    278e:	e007      	b.n	27a0 <CheckSum_UDP+0x124>
    2790:	68fb      	ldr	r3, [r7, #12]
    2792:	1c5a      	adds	r2, r3, #1
    2794:	60fa      	str	r2, [r7, #12]
    2796:	781b      	ldrb	r3, [r3, #0]
    2798:	021b      	lsls	r3, r3, #8
    279a:	693a      	ldr	r2, [r7, #16]
    279c:	18d3      	adds	r3, r2, r3
    279e:	613b      	str	r3, [r7, #16]
    27a0:	697b      	ldr	r3, [r7, #20]
    27a2:	3301      	adds	r3, #1
    27a4:	617b      	str	r3, [r7, #20]
    27a6:	1dbb      	adds	r3, r7, #6
    27a8:	881b      	ldrh	r3, [r3, #0]
    27aa:	3b08      	subs	r3, #8
    27ac:	001a      	movs	r2, r3
    27ae:	697b      	ldr	r3, [r7, #20]
    27b0:	429a      	cmp	r2, r3
    27b2:	d8e0      	bhi.n	2776 <CheckSum_UDP+0xfa>
    27b4:	e006      	b.n	27c4 <CheckSum_UDP+0x148>
    27b6:	693b      	ldr	r3, [r7, #16]
    27b8:	0c1a      	lsrs	r2, r3, #16
    27ba:	693b      	ldr	r3, [r7, #16]
    27bc:	041b      	lsls	r3, r3, #16
    27be:	0c1b      	lsrs	r3, r3, #16
    27c0:	18d3      	adds	r3, r2, r3
    27c2:	613b      	str	r3, [r7, #16]
    27c4:	693b      	ldr	r3, [r7, #16]
    27c6:	0c1b      	lsrs	r3, r3, #16
    27c8:	d1f5      	bne.n	27b6 <CheckSum_UDP+0x13a>
    27ca:	693b      	ldr	r3, [r7, #16]
    27cc:	b29b      	uxth	r3, r3
    27ce:	43db      	mvns	r3, r3
    27d0:	b29b      	uxth	r3, r3
    27d2:	0018      	movs	r0, r3
    27d4:	46bd      	mov	sp, r7
    27d6:	b006      	add	sp, #24
    27d8:	bd80      	pop	{r7, pc}
    27da:	46c0      	nop			; (mov r8, r8)

000027dc <CheckSum_IP>:
    27dc:	b580      	push	{r7, lr}
    27de:	b084      	sub	sp, #16
    27e0:	af00      	add	r7, sp, #0
    27e2:	6078      	str	r0, [r7, #4]
    27e4:	2300      	movs	r3, #0
    27e6:	60bb      	str	r3, [r7, #8]
    27e8:	2300      	movs	r3, #0
    27ea:	60fb      	str	r3, [r7, #12]
    27ec:	e011      	b.n	2812 <CheckSum_IP+0x36>
    27ee:	68fb      	ldr	r3, [r7, #12]
    27f0:	2b05      	cmp	r3, #5
    27f2:	d00a      	beq.n	280a <CheckSum_IP+0x2e>
    27f4:	68fb      	ldr	r3, [r7, #12]
    27f6:	3307      	adds	r3, #7
    27f8:	005b      	lsls	r3, r3, #1
    27fa:	687a      	ldr	r2, [r7, #4]
    27fc:	18d3      	adds	r3, r2, r3
    27fe:	881b      	ldrh	r3, [r3, #0]
    2800:	001a      	movs	r2, r3
    2802:	68bb      	ldr	r3, [r7, #8]
    2804:	189b      	adds	r3, r3, r2
    2806:	60bb      	str	r3, [r7, #8]
    2808:	e000      	b.n	280c <CheckSum_IP+0x30>
    280a:	46c0      	nop			; (mov r8, r8)
    280c:	68fb      	ldr	r3, [r7, #12]
    280e:	3301      	adds	r3, #1
    2810:	60fb      	str	r3, [r7, #12]
    2812:	68fb      	ldr	r3, [r7, #12]
    2814:	2b09      	cmp	r3, #9
    2816:	d9ea      	bls.n	27ee <CheckSum_IP+0x12>
    2818:	68bb      	ldr	r3, [r7, #8]
    281a:	0c1a      	lsrs	r2, r3, #16
    281c:	68bb      	ldr	r3, [r7, #8]
    281e:	041b      	lsls	r3, r3, #16
    2820:	0c1b      	lsrs	r3, r3, #16
    2822:	18d3      	adds	r3, r2, r3
    2824:	60bb      	str	r3, [r7, #8]
    2826:	68bb      	ldr	r3, [r7, #8]
    2828:	b29b      	uxth	r3, r3
    282a:	43db      	mvns	r3, r3
    282c:	b29b      	uxth	r3, r3
    282e:	0018      	movs	r0, r3
    2830:	46bd      	mov	sp, r7
    2832:	b004      	add	sp, #16
    2834:	bd80      	pop	{r7, pc}
    2836:	46c0      	nop			; (mov r8, r8)

00002838 <CheckSum_ICMP>:
    2838:	b580      	push	{r7, lr}
    283a:	b084      	sub	sp, #16
    283c:	af00      	add	r7, sp, #0
    283e:	0002      	movs	r2, r0
    2840:	6039      	str	r1, [r7, #0]
    2842:	1dbb      	adds	r3, r7, #6
    2844:	801a      	strh	r2, [r3, #0]
    2846:	2300      	movs	r3, #0
    2848:	60bb      	str	r3, [r7, #8]
    284a:	2300      	movs	r3, #0
    284c:	60fb      	str	r3, [r7, #12]
    284e:	e011      	b.n	2874 <CheckSum_ICMP+0x3c>
    2850:	68fb      	ldr	r3, [r7, #12]
    2852:	2b01      	cmp	r3, #1
    2854:	d00a      	beq.n	286c <CheckSum_ICMP+0x34>
    2856:	68fb      	ldr	r3, [r7, #12]
    2858:	3311      	adds	r3, #17
    285a:	005b      	lsls	r3, r3, #1
    285c:	683a      	ldr	r2, [r7, #0]
    285e:	18d3      	adds	r3, r2, r3
    2860:	881b      	ldrh	r3, [r3, #0]
    2862:	001a      	movs	r2, r3
    2864:	68bb      	ldr	r3, [r7, #8]
    2866:	189b      	adds	r3, r3, r2
    2868:	60bb      	str	r3, [r7, #8]
    286a:	e000      	b.n	286e <CheckSum_ICMP+0x36>
    286c:	46c0      	nop			; (mov r8, r8)
    286e:	68fb      	ldr	r3, [r7, #12]
    2870:	3301      	adds	r3, #1
    2872:	60fb      	str	r3, [r7, #12]
    2874:	1dbb      	adds	r3, r7, #6
    2876:	881a      	ldrh	r2, [r3, #0]
    2878:	68fb      	ldr	r3, [r7, #12]
    287a:	429a      	cmp	r2, r3
    287c:	d8e8      	bhi.n	2850 <CheckSum_ICMP+0x18>
    287e:	68bb      	ldr	r3, [r7, #8]
    2880:	0c1a      	lsrs	r2, r3, #16
    2882:	68bb      	ldr	r3, [r7, #8]
    2884:	041b      	lsls	r3, r3, #16
    2886:	0c1b      	lsrs	r3, r3, #16
    2888:	18d3      	adds	r3, r2, r3
    288a:	60bb      	str	r3, [r7, #8]
    288c:	68bb      	ldr	r3, [r7, #8]
    288e:	b29b      	uxth	r3, r3
    2890:	43db      	mvns	r3, r3
    2892:	b29b      	uxth	r3, r3
    2894:	0018      	movs	r0, r3
    2896:	46bd      	mov	sp, r7
    2898:	b004      	add	sp, #16
    289a:	bd80      	pop	{r7, pc}

0000289c <Request_ICMP>:
    289c:	b580      	push	{r7, lr}
    289e:	b096      	sub	sp, #88	; 0x58
    28a0:	af00      	add	r7, sp, #0
    28a2:	4b73      	ldr	r3, [pc, #460]	; (2a70 <Request_ICMP+0x1d4>)
    28a4:	881a      	ldrh	r2, [r3, #0]
    28a6:	1d3b      	adds	r3, r7, #4
    28a8:	801a      	strh	r2, [r3, #0]
    28aa:	4b71      	ldr	r3, [pc, #452]	; (2a70 <Request_ICMP+0x1d4>)
    28ac:	885a      	ldrh	r2, [r3, #2]
    28ae:	1d3b      	adds	r3, r7, #4
    28b0:	805a      	strh	r2, [r3, #2]
    28b2:	4b6f      	ldr	r3, [pc, #444]	; (2a70 <Request_ICMP+0x1d4>)
    28b4:	889a      	ldrh	r2, [r3, #4]
    28b6:	1d3b      	adds	r3, r7, #4
    28b8:	809a      	strh	r2, [r3, #4]
    28ba:	23c0      	movs	r3, #192	; 0xc0
    28bc:	059b      	lsls	r3, r3, #22
    28be:	885b      	ldrh	r3, [r3, #2]
    28c0:	b29a      	uxth	r2, r3
    28c2:	1d3b      	adds	r3, r7, #4
    28c4:	80da      	strh	r2, [r3, #6]
    28c6:	23c0      	movs	r3, #192	; 0xc0
    28c8:	059b      	lsls	r3, r3, #22
    28ca:	889b      	ldrh	r3, [r3, #4]
    28cc:	b29a      	uxth	r2, r3
    28ce:	1d3b      	adds	r3, r7, #4
    28d0:	811a      	strh	r2, [r3, #8]
    28d2:	23c0      	movs	r3, #192	; 0xc0
    28d4:	059b      	lsls	r3, r3, #22
    28d6:	88db      	ldrh	r3, [r3, #6]
    28d8:	b29a      	uxth	r2, r3
    28da:	1d3b      	adds	r3, r7, #4
    28dc:	815a      	strh	r2, [r3, #10]
    28de:	1d3b      	adds	r3, r7, #4
    28e0:	2208      	movs	r2, #8
    28e2:	819a      	strh	r2, [r3, #12]
    28e4:	1d3b      	adds	r3, r7, #4
    28e6:	2245      	movs	r2, #69	; 0x45
    28e8:	81da      	strh	r2, [r3, #14]
    28ea:	1d3b      	adds	r3, r7, #4
    28ec:	22f0      	movs	r2, #240	; 0xf0
    28ee:	0192      	lsls	r2, r2, #6
    28f0:	821a      	strh	r2, [r3, #16]
    28f2:	4b60      	ldr	r3, [pc, #384]	; (2a74 <Request_ICMP+0x1d8>)
    28f4:	881a      	ldrh	r2, [r3, #0]
    28f6:	1d3b      	adds	r3, r7, #4
    28f8:	825a      	strh	r2, [r3, #18]
    28fa:	1d3b      	adds	r3, r7, #4
    28fc:	2200      	movs	r2, #0
    28fe:	829a      	strh	r2, [r3, #20]
    2900:	1d3b      	adds	r3, r7, #4
    2902:	22c0      	movs	r2, #192	; 0xc0
    2904:	0052      	lsls	r2, r2, #1
    2906:	82da      	strh	r2, [r3, #22]
    2908:	1d3b      	adds	r3, r7, #4
    290a:	2200      	movs	r2, #0
    290c:	831a      	strh	r2, [r3, #24]
    290e:	4b5a      	ldr	r3, [pc, #360]	; (2a78 <Request_ICMP+0x1dc>)
    2910:	881a      	ldrh	r2, [r3, #0]
    2912:	1d3b      	adds	r3, r7, #4
    2914:	835a      	strh	r2, [r3, #26]
    2916:	4b58      	ldr	r3, [pc, #352]	; (2a78 <Request_ICMP+0x1dc>)
    2918:	885a      	ldrh	r2, [r3, #2]
    291a:	1d3b      	adds	r3, r7, #4
    291c:	839a      	strh	r2, [r3, #28]
    291e:	4b54      	ldr	r3, [pc, #336]	; (2a70 <Request_ICMP+0x1d4>)
    2920:	88da      	ldrh	r2, [r3, #6]
    2922:	1d3b      	adds	r3, r7, #4
    2924:	83da      	strh	r2, [r3, #30]
    2926:	4b52      	ldr	r3, [pc, #328]	; (2a70 <Request_ICMP+0x1d4>)
    2928:	891a      	ldrh	r2, [r3, #8]
    292a:	1d3b      	adds	r3, r7, #4
    292c:	841a      	strh	r2, [r3, #32]
    292e:	1d3b      	adds	r3, r7, #4
    2930:	0018      	movs	r0, r3
    2932:	f7ff ff53 	bl	27dc <CheckSum_IP>
    2936:	0003      	movs	r3, r0
    2938:	001a      	movs	r2, r3
    293a:	1d3b      	adds	r3, r7, #4
    293c:	831a      	strh	r2, [r3, #24]
    293e:	1d3b      	adds	r3, r7, #4
    2940:	2208      	movs	r2, #8
    2942:	845a      	strh	r2, [r3, #34]	; 0x22
    2944:	1d3b      	adds	r3, r7, #4
    2946:	2200      	movs	r2, #0
    2948:	849a      	strh	r2, [r3, #36]	; 0x24
    294a:	1d3b      	adds	r3, r7, #4
    294c:	2202      	movs	r2, #2
    294e:	84da      	strh	r2, [r3, #38]	; 0x26
    2950:	4b4a      	ldr	r3, [pc, #296]	; (2a7c <Request_ICMP+0x1e0>)
    2952:	881a      	ldrh	r2, [r3, #0]
    2954:	1d3b      	adds	r3, r7, #4
    2956:	851a      	strh	r2, [r3, #40]	; 0x28
    2958:	2300      	movs	r3, #0
    295a:	657b      	str	r3, [r7, #84]	; 0x54
    295c:	2300      	movs	r3, #0
    295e:	653b      	str	r3, [r7, #80]	; 0x50
    2960:	e021      	b.n	29a6 <Request_ICMP+0x10a>
    2962:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2964:	b2db      	uxtb	r3, r3
    2966:	3361      	adds	r3, #97	; 0x61
    2968:	b2da      	uxtb	r2, r3
    296a:	003b      	movs	r3, r7
    296c:	701a      	strb	r2, [r3, #0]
    296e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    2970:	b2db      	uxtb	r3, r3
    2972:	3362      	adds	r3, #98	; 0x62
    2974:	b2da      	uxtb	r2, r3
    2976:	003b      	movs	r3, r7
    2978:	705a      	strb	r2, [r3, #1]
    297a:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    297c:	3315      	adds	r3, #21
    297e:	001a      	movs	r2, r3
    2980:	003b      	movs	r3, r7
    2982:	785b      	ldrb	r3, [r3, #1]
    2984:	021b      	lsls	r3, r3, #8
    2986:	b219      	sxth	r1, r3
    2988:	003b      	movs	r3, r7
    298a:	781b      	ldrb	r3, [r3, #0]
    298c:	b21b      	sxth	r3, r3
    298e:	430b      	orrs	r3, r1
    2990:	b21b      	sxth	r3, r3
    2992:	b299      	uxth	r1, r3
    2994:	1d3b      	adds	r3, r7, #4
    2996:	0052      	lsls	r2, r2, #1
    2998:	52d1      	strh	r1, [r2, r3]
    299a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    299c:	3302      	adds	r3, #2
    299e:	657b      	str	r3, [r7, #84]	; 0x54
    29a0:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    29a2:	3301      	adds	r3, #1
    29a4:	653b      	str	r3, [r7, #80]	; 0x50
    29a6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29a8:	2b1f      	cmp	r3, #31
    29aa:	d9da      	bls.n	2962 <Request_ICMP+0xc6>
    29ac:	1d3b      	adds	r3, r7, #4
    29ae:	0019      	movs	r1, r3
    29b0:	2014      	movs	r0, #20
    29b2:	f7ff ff41 	bl	2838 <CheckSum_ICMP>
    29b6:	0003      	movs	r3, r0
    29b8:	001a      	movs	r2, r3
    29ba:	1d3b      	adds	r3, r7, #4
    29bc:	849a      	strh	r2, [r3, #36]	; 0x24
    29be:	1d3b      	adds	r3, r7, #4
    29c0:	214a      	movs	r1, #74	; 0x4a
    29c2:	0018      	movs	r0, r3
    29c4:	f7ff fcb2 	bl	232c <SendPacket>
    29c8:	4b2a      	ldr	r3, [pc, #168]	; (2a74 <Request_ICMP+0x1d8>)
    29ca:	881b      	ldrh	r3, [r3, #0]
    29cc:	0a1b      	lsrs	r3, r3, #8
    29ce:	b29b      	uxth	r3, r3
    29d0:	b2da      	uxtb	r2, r3
    29d2:	003b      	movs	r3, r7
    29d4:	701a      	strb	r2, [r3, #0]
    29d6:	4b27      	ldr	r3, [pc, #156]	; (2a74 <Request_ICMP+0x1d8>)
    29d8:	881b      	ldrh	r3, [r3, #0]
    29da:	b2da      	uxtb	r2, r3
    29dc:	003b      	movs	r3, r7
    29de:	705a      	strb	r2, [r3, #1]
    29e0:	003b      	movs	r3, r7
    29e2:	781b      	ldrb	r3, [r3, #0]
    29e4:	3301      	adds	r3, #1
    29e6:	b2da      	uxtb	r2, r3
    29e8:	003b      	movs	r3, r7
    29ea:	701a      	strb	r2, [r3, #0]
    29ec:	003b      	movs	r3, r7
    29ee:	781b      	ldrb	r3, [r3, #0]
    29f0:	2b00      	cmp	r3, #0
    29f2:	d105      	bne.n	2a00 <Request_ICMP+0x164>
    29f4:	003b      	movs	r3, r7
    29f6:	785b      	ldrb	r3, [r3, #1]
    29f8:	3301      	adds	r3, #1
    29fa:	b2da      	uxtb	r2, r3
    29fc:	003b      	movs	r3, r7
    29fe:	705a      	strb	r2, [r3, #1]
    2a00:	003b      	movs	r3, r7
    2a02:	781b      	ldrb	r3, [r3, #0]
    2a04:	021b      	lsls	r3, r3, #8
    2a06:	b21a      	sxth	r2, r3
    2a08:	003b      	movs	r3, r7
    2a0a:	785b      	ldrb	r3, [r3, #1]
    2a0c:	b21b      	sxth	r3, r3
    2a0e:	4313      	orrs	r3, r2
    2a10:	b21b      	sxth	r3, r3
    2a12:	b29a      	uxth	r2, r3
    2a14:	4b17      	ldr	r3, [pc, #92]	; (2a74 <Request_ICMP+0x1d8>)
    2a16:	801a      	strh	r2, [r3, #0]
    2a18:	4b18      	ldr	r3, [pc, #96]	; (2a7c <Request_ICMP+0x1e0>)
    2a1a:	881b      	ldrh	r3, [r3, #0]
    2a1c:	0a1b      	lsrs	r3, r3, #8
    2a1e:	b29b      	uxth	r3, r3
    2a20:	b2da      	uxtb	r2, r3
    2a22:	003b      	movs	r3, r7
    2a24:	701a      	strb	r2, [r3, #0]
    2a26:	4b15      	ldr	r3, [pc, #84]	; (2a7c <Request_ICMP+0x1e0>)
    2a28:	881b      	ldrh	r3, [r3, #0]
    2a2a:	b2da      	uxtb	r2, r3
    2a2c:	003b      	movs	r3, r7
    2a2e:	705a      	strb	r2, [r3, #1]
    2a30:	003b      	movs	r3, r7
    2a32:	781b      	ldrb	r3, [r3, #0]
    2a34:	3301      	adds	r3, #1
    2a36:	b2da      	uxtb	r2, r3
    2a38:	003b      	movs	r3, r7
    2a3a:	701a      	strb	r2, [r3, #0]
    2a3c:	003b      	movs	r3, r7
    2a3e:	781b      	ldrb	r3, [r3, #0]
    2a40:	2b00      	cmp	r3, #0
    2a42:	d105      	bne.n	2a50 <Request_ICMP+0x1b4>
    2a44:	003b      	movs	r3, r7
    2a46:	785b      	ldrb	r3, [r3, #1]
    2a48:	3301      	adds	r3, #1
    2a4a:	b2da      	uxtb	r2, r3
    2a4c:	003b      	movs	r3, r7
    2a4e:	705a      	strb	r2, [r3, #1]
    2a50:	003b      	movs	r3, r7
    2a52:	781b      	ldrb	r3, [r3, #0]
    2a54:	021b      	lsls	r3, r3, #8
    2a56:	b21a      	sxth	r2, r3
    2a58:	003b      	movs	r3, r7
    2a5a:	785b      	ldrb	r3, [r3, #1]
    2a5c:	b21b      	sxth	r3, r3
    2a5e:	4313      	orrs	r3, r2
    2a60:	b21b      	sxth	r3, r3
    2a62:	b29a      	uxth	r2, r3
    2a64:	4b05      	ldr	r3, [pc, #20]	; (2a7c <Request_ICMP+0x1e0>)
    2a66:	801a      	strh	r2, [r3, #0]
    2a68:	46c0      	nop			; (mov r8, r8)
    2a6a:	46bd      	mov	sp, r7
    2a6c:	b016      	add	sp, #88	; 0x58
    2a6e:	bd80      	pop	{r7, pc}
    2a70:	20004d1c 	.word	0x20004d1c
    2a74:	20004d30 	.word	0x20004d30
    2a78:	2000000c 	.word	0x2000000c
    2a7c:	20004d32 	.word	0x20004d32

00002a80 <Answear_ICMP>:
    2a80:	b580      	push	{r7, lr}
    2a82:	b082      	sub	sp, #8
    2a84:	af00      	add	r7, sp, #0
    2a86:	4b53      	ldr	r3, [pc, #332]	; (2bd4 <Answear_ICMP+0x154>)
    2a88:	4a53      	ldr	r2, [pc, #332]	; (2bd8 <Answear_ICMP+0x158>)
    2a8a:	5a9a      	ldrh	r2, [r3, r2]
    2a8c:	1cbb      	adds	r3, r7, #2
    2a8e:	3a26      	subs	r2, #38	; 0x26
    2a90:	801a      	strh	r2, [r3, #0]
    2a92:	1cbb      	adds	r3, r7, #2
    2a94:	881b      	ldrh	r3, [r3, #0]
    2a96:	2201      	movs	r2, #1
    2a98:	4013      	ands	r3, r2
    2a9a:	d017      	beq.n	2acc <Answear_ICMP+0x4c>
    2a9c:	1cbb      	adds	r3, r7, #2
    2a9e:	881b      	ldrh	r3, [r3, #0]
    2aa0:	3301      	adds	r3, #1
    2aa2:	105a      	asrs	r2, r3, #1
    2aa4:	1cbb      	adds	r3, r7, #2
    2aa6:	801a      	strh	r2, [r3, #0]
    2aa8:	1cbb      	adds	r3, r7, #2
    2aaa:	881b      	ldrh	r3, [r3, #0]
    2aac:	3310      	adds	r3, #16
    2aae:	001a      	movs	r2, r3
    2ab0:	1cbb      	adds	r3, r7, #2
    2ab2:	881b      	ldrh	r3, [r3, #0]
    2ab4:	3310      	adds	r3, #16
    2ab6:	0019      	movs	r1, r3
    2ab8:	4b46      	ldr	r3, [pc, #280]	; (2bd4 <Answear_ICMP+0x154>)
    2aba:	0049      	lsls	r1, r1, #1
    2abc:	5acb      	ldrh	r3, [r1, r3]
    2abe:	21ff      	movs	r1, #255	; 0xff
    2ac0:	400b      	ands	r3, r1
    2ac2:	b299      	uxth	r1, r3
    2ac4:	4b43      	ldr	r3, [pc, #268]	; (2bd4 <Answear_ICMP+0x154>)
    2ac6:	0052      	lsls	r2, r2, #1
    2ac8:	52d1      	strh	r1, [r2, r3]
    2aca:	e004      	b.n	2ad6 <Answear_ICMP+0x56>
    2acc:	1cbb      	adds	r3, r7, #2
    2ace:	1cba      	adds	r2, r7, #2
    2ad0:	8812      	ldrh	r2, [r2, #0]
    2ad2:	0852      	lsrs	r2, r2, #1
    2ad4:	801a      	strh	r2, [r3, #0]
    2ad6:	4b3f      	ldr	r3, [pc, #252]	; (2bd4 <Answear_ICMP+0x154>)
    2ad8:	88da      	ldrh	r2, [r3, #6]
    2ada:	4b40      	ldr	r3, [pc, #256]	; (2bdc <Answear_ICMP+0x15c>)
    2adc:	801a      	strh	r2, [r3, #0]
    2ade:	4b3d      	ldr	r3, [pc, #244]	; (2bd4 <Answear_ICMP+0x154>)
    2ae0:	891a      	ldrh	r2, [r3, #8]
    2ae2:	4b3e      	ldr	r3, [pc, #248]	; (2bdc <Answear_ICMP+0x15c>)
    2ae4:	805a      	strh	r2, [r3, #2]
    2ae6:	4b3b      	ldr	r3, [pc, #236]	; (2bd4 <Answear_ICMP+0x154>)
    2ae8:	895a      	ldrh	r2, [r3, #10]
    2aea:	4b3c      	ldr	r3, [pc, #240]	; (2bdc <Answear_ICMP+0x15c>)
    2aec:	809a      	strh	r2, [r3, #4]
    2aee:	23c0      	movs	r3, #192	; 0xc0
    2af0:	059b      	lsls	r3, r3, #22
    2af2:	885b      	ldrh	r3, [r3, #2]
    2af4:	b29a      	uxth	r2, r3
    2af6:	4b39      	ldr	r3, [pc, #228]	; (2bdc <Answear_ICMP+0x15c>)
    2af8:	80da      	strh	r2, [r3, #6]
    2afa:	23c0      	movs	r3, #192	; 0xc0
    2afc:	059b      	lsls	r3, r3, #22
    2afe:	889b      	ldrh	r3, [r3, #4]
    2b00:	b29a      	uxth	r2, r3
    2b02:	4b36      	ldr	r3, [pc, #216]	; (2bdc <Answear_ICMP+0x15c>)
    2b04:	811a      	strh	r2, [r3, #8]
    2b06:	23c0      	movs	r3, #192	; 0xc0
    2b08:	059b      	lsls	r3, r3, #22
    2b0a:	88db      	ldrh	r3, [r3, #6]
    2b0c:	b29a      	uxth	r2, r3
    2b0e:	4b33      	ldr	r3, [pc, #204]	; (2bdc <Answear_ICMP+0x15c>)
    2b10:	815a      	strh	r2, [r3, #10]
    2b12:	4b30      	ldr	r3, [pc, #192]	; (2bd4 <Answear_ICMP+0x154>)
    2b14:	899a      	ldrh	r2, [r3, #12]
    2b16:	4b31      	ldr	r3, [pc, #196]	; (2bdc <Answear_ICMP+0x15c>)
    2b18:	819a      	strh	r2, [r3, #12]
    2b1a:	2307      	movs	r3, #7
    2b1c:	607b      	str	r3, [r7, #4]
    2b1e:	e00a      	b.n	2b36 <Answear_ICMP+0xb6>
    2b20:	4b2c      	ldr	r3, [pc, #176]	; (2bd4 <Answear_ICMP+0x154>)
    2b22:	687a      	ldr	r2, [r7, #4]
    2b24:	0052      	lsls	r2, r2, #1
    2b26:	5ad1      	ldrh	r1, [r2, r3]
    2b28:	4b2c      	ldr	r3, [pc, #176]	; (2bdc <Answear_ICMP+0x15c>)
    2b2a:	687a      	ldr	r2, [r7, #4]
    2b2c:	0052      	lsls	r2, r2, #1
    2b2e:	52d1      	strh	r1, [r2, r3]
    2b30:	687b      	ldr	r3, [r7, #4]
    2b32:	3301      	adds	r3, #1
    2b34:	607b      	str	r3, [r7, #4]
    2b36:	687b      	ldr	r3, [r7, #4]
    2b38:	2b0b      	cmp	r3, #11
    2b3a:	d9f1      	bls.n	2b20 <Answear_ICMP+0xa0>
    2b3c:	4b25      	ldr	r3, [pc, #148]	; (2bd4 <Answear_ICMP+0x154>)
    2b3e:	0018      	movs	r0, r3
    2b40:	f7ff fe4c 	bl	27dc <CheckSum_IP>
    2b44:	0003      	movs	r3, r0
    2b46:	001a      	movs	r2, r3
    2b48:	4b24      	ldr	r3, [pc, #144]	; (2bdc <Answear_ICMP+0x15c>)
    2b4a:	831a      	strh	r2, [r3, #24]
    2b4c:	4b21      	ldr	r3, [pc, #132]	; (2bd4 <Answear_ICMP+0x154>)
    2b4e:	8bda      	ldrh	r2, [r3, #30]
    2b50:	4b22      	ldr	r3, [pc, #136]	; (2bdc <Answear_ICMP+0x15c>)
    2b52:	835a      	strh	r2, [r3, #26]
    2b54:	4b1f      	ldr	r3, [pc, #124]	; (2bd4 <Answear_ICMP+0x154>)
    2b56:	8c1a      	ldrh	r2, [r3, #32]
    2b58:	4b20      	ldr	r3, [pc, #128]	; (2bdc <Answear_ICMP+0x15c>)
    2b5a:	839a      	strh	r2, [r3, #28]
    2b5c:	4b1d      	ldr	r3, [pc, #116]	; (2bd4 <Answear_ICMP+0x154>)
    2b5e:	8b5a      	ldrh	r2, [r3, #26]
    2b60:	4b1e      	ldr	r3, [pc, #120]	; (2bdc <Answear_ICMP+0x15c>)
    2b62:	83da      	strh	r2, [r3, #30]
    2b64:	4b1b      	ldr	r3, [pc, #108]	; (2bd4 <Answear_ICMP+0x154>)
    2b66:	8b9a      	ldrh	r2, [r3, #28]
    2b68:	4b1c      	ldr	r3, [pc, #112]	; (2bdc <Answear_ICMP+0x15c>)
    2b6a:	841a      	strh	r2, [r3, #32]
    2b6c:	4b1b      	ldr	r3, [pc, #108]	; (2bdc <Answear_ICMP+0x15c>)
    2b6e:	2200      	movs	r2, #0
    2b70:	845a      	strh	r2, [r3, #34]	; 0x22
    2b72:	4b18      	ldr	r3, [pc, #96]	; (2bd4 <Answear_ICMP+0x154>)
    2b74:	2200      	movs	r2, #0
    2b76:	845a      	strh	r2, [r3, #34]	; 0x22
    2b78:	4a16      	ldr	r2, [pc, #88]	; (2bd4 <Answear_ICMP+0x154>)
    2b7a:	1cbb      	adds	r3, r7, #2
    2b7c:	881b      	ldrh	r3, [r3, #0]
    2b7e:	0011      	movs	r1, r2
    2b80:	0018      	movs	r0, r3
    2b82:	f7ff fe59 	bl	2838 <CheckSum_ICMP>
    2b86:	0003      	movs	r3, r0
    2b88:	001a      	movs	r2, r3
    2b8a:	4b14      	ldr	r3, [pc, #80]	; (2bdc <Answear_ICMP+0x15c>)
    2b8c:	849a      	strh	r2, [r3, #36]	; 0x24
    2b8e:	2313      	movs	r3, #19
    2b90:	607b      	str	r3, [r7, #4]
    2b92:	e00a      	b.n	2baa <Answear_ICMP+0x12a>
    2b94:	4b0f      	ldr	r3, [pc, #60]	; (2bd4 <Answear_ICMP+0x154>)
    2b96:	687a      	ldr	r2, [r7, #4]
    2b98:	0052      	lsls	r2, r2, #1
    2b9a:	5ad1      	ldrh	r1, [r2, r3]
    2b9c:	4b0f      	ldr	r3, [pc, #60]	; (2bdc <Answear_ICMP+0x15c>)
    2b9e:	687a      	ldr	r2, [r7, #4]
    2ba0:	0052      	lsls	r2, r2, #1
    2ba2:	52d1      	strh	r1, [r2, r3]
    2ba4:	687b      	ldr	r3, [r7, #4]
    2ba6:	3301      	adds	r3, #1
    2ba8:	607b      	str	r3, [r7, #4]
    2baa:	1cbb      	adds	r3, r7, #2
    2bac:	881b      	ldrh	r3, [r3, #0]
    2bae:	3311      	adds	r3, #17
    2bb0:	001a      	movs	r2, r3
    2bb2:	687b      	ldr	r3, [r7, #4]
    2bb4:	429a      	cmp	r2, r3
    2bb6:	d8ed      	bhi.n	2b94 <Answear_ICMP+0x114>
    2bb8:	1cbb      	adds	r3, r7, #2
    2bba:	881b      	ldrh	r3, [r3, #0]
    2bbc:	3311      	adds	r3, #17
    2bbe:	005a      	lsls	r2, r3, #1
    2bc0:	4b06      	ldr	r3, [pc, #24]	; (2bdc <Answear_ICMP+0x15c>)
    2bc2:	0011      	movs	r1, r2
    2bc4:	0018      	movs	r0, r3
    2bc6:	f7ff fbb1 	bl	232c <SendPacket>
    2bca:	46c0      	nop			; (mov r8, r8)
    2bcc:	46bd      	mov	sp, r7
    2bce:	b002      	add	sp, #8
    2bd0:	bd80      	pop	{r7, pc}
    2bd2:	46c0      	nop			; (mov r8, r8)
    2bd4:	20004d38 	.word	0x20004d38
    2bd8:	000005dc 	.word	0x000005dc
    2bdc:	20005344 	.word	0x20005344

00002be0 <Send_UDP>:
    2be0:	b590      	push	{r4, r7, lr}
    2be2:	b089      	sub	sp, #36	; 0x24
    2be4:	af00      	add	r7, sp, #0
    2be6:	6078      	str	r0, [r7, #4]
    2be8:	6039      	str	r1, [r7, #0]
    2bea:	4b86      	ldr	r3, [pc, #536]	; (2e04 <Send_UDP+0x224>)
    2bec:	881a      	ldrh	r2, [r3, #0]
    2bee:	4b86      	ldr	r3, [pc, #536]	; (2e08 <Send_UDP+0x228>)
    2bf0:	801a      	strh	r2, [r3, #0]
    2bf2:	4b84      	ldr	r3, [pc, #528]	; (2e04 <Send_UDP+0x224>)
    2bf4:	885a      	ldrh	r2, [r3, #2]
    2bf6:	4b84      	ldr	r3, [pc, #528]	; (2e08 <Send_UDP+0x228>)
    2bf8:	805a      	strh	r2, [r3, #2]
    2bfa:	4b82      	ldr	r3, [pc, #520]	; (2e04 <Send_UDP+0x224>)
    2bfc:	889a      	ldrh	r2, [r3, #4]
    2bfe:	4b82      	ldr	r3, [pc, #520]	; (2e08 <Send_UDP+0x228>)
    2c00:	809a      	strh	r2, [r3, #4]
    2c02:	23c0      	movs	r3, #192	; 0xc0
    2c04:	059b      	lsls	r3, r3, #22
    2c06:	885b      	ldrh	r3, [r3, #2]
    2c08:	b29a      	uxth	r2, r3
    2c0a:	4b7f      	ldr	r3, [pc, #508]	; (2e08 <Send_UDP+0x228>)
    2c0c:	80da      	strh	r2, [r3, #6]
    2c0e:	23c0      	movs	r3, #192	; 0xc0
    2c10:	059b      	lsls	r3, r3, #22
    2c12:	889b      	ldrh	r3, [r3, #4]
    2c14:	b29a      	uxth	r2, r3
    2c16:	4b7c      	ldr	r3, [pc, #496]	; (2e08 <Send_UDP+0x228>)
    2c18:	811a      	strh	r2, [r3, #8]
    2c1a:	23c0      	movs	r3, #192	; 0xc0
    2c1c:	059b      	lsls	r3, r3, #22
    2c1e:	88db      	ldrh	r3, [r3, #6]
    2c20:	b29a      	uxth	r2, r3
    2c22:	4b79      	ldr	r3, [pc, #484]	; (2e08 <Send_UDP+0x228>)
    2c24:	815a      	strh	r2, [r3, #10]
    2c26:	4b78      	ldr	r3, [pc, #480]	; (2e08 <Send_UDP+0x228>)
    2c28:	2208      	movs	r2, #8
    2c2a:	819a      	strh	r2, [r3, #12]
    2c2c:	4b76      	ldr	r3, [pc, #472]	; (2e08 <Send_UDP+0x228>)
    2c2e:	2245      	movs	r2, #69	; 0x45
    2c30:	81da      	strh	r2, [r3, #14]
    2c32:	4b75      	ldr	r3, [pc, #468]	; (2e08 <Send_UDP+0x228>)
    2c34:	22f0      	movs	r2, #240	; 0xf0
    2c36:	0192      	lsls	r2, r2, #6
    2c38:	821a      	strh	r2, [r3, #16]
    2c3a:	4b74      	ldr	r3, [pc, #464]	; (2e0c <Send_UDP+0x22c>)
    2c3c:	881a      	ldrh	r2, [r3, #0]
    2c3e:	4b72      	ldr	r3, [pc, #456]	; (2e08 <Send_UDP+0x228>)
    2c40:	825a      	strh	r2, [r3, #18]
    2c42:	4b71      	ldr	r3, [pc, #452]	; (2e08 <Send_UDP+0x228>)
    2c44:	2200      	movs	r2, #0
    2c46:	829a      	strh	r2, [r3, #20]
    2c48:	4b6f      	ldr	r3, [pc, #444]	; (2e08 <Send_UDP+0x228>)
    2c4a:	228c      	movs	r2, #140	; 0x8c
    2c4c:	0152      	lsls	r2, r2, #5
    2c4e:	82da      	strh	r2, [r3, #22]
    2c50:	4b6d      	ldr	r3, [pc, #436]	; (2e08 <Send_UDP+0x228>)
    2c52:	2200      	movs	r2, #0
    2c54:	831a      	strh	r2, [r3, #24]
    2c56:	4b6e      	ldr	r3, [pc, #440]	; (2e10 <Send_UDP+0x230>)
    2c58:	881a      	ldrh	r2, [r3, #0]
    2c5a:	4b6b      	ldr	r3, [pc, #428]	; (2e08 <Send_UDP+0x228>)
    2c5c:	835a      	strh	r2, [r3, #26]
    2c5e:	4b6c      	ldr	r3, [pc, #432]	; (2e10 <Send_UDP+0x230>)
    2c60:	885a      	ldrh	r2, [r3, #2]
    2c62:	4b69      	ldr	r3, [pc, #420]	; (2e08 <Send_UDP+0x228>)
    2c64:	839a      	strh	r2, [r3, #28]
    2c66:	4b67      	ldr	r3, [pc, #412]	; (2e04 <Send_UDP+0x224>)
    2c68:	88da      	ldrh	r2, [r3, #6]
    2c6a:	4b67      	ldr	r3, [pc, #412]	; (2e08 <Send_UDP+0x228>)
    2c6c:	83da      	strh	r2, [r3, #30]
    2c6e:	4b65      	ldr	r3, [pc, #404]	; (2e04 <Send_UDP+0x224>)
    2c70:	891a      	ldrh	r2, [r3, #8]
    2c72:	4b65      	ldr	r3, [pc, #404]	; (2e08 <Send_UDP+0x228>)
    2c74:	841a      	strh	r2, [r3, #32]
    2c76:	2316      	movs	r3, #22
    2c78:	18fb      	adds	r3, r7, r3
    2c7a:	4a66      	ldr	r2, [pc, #408]	; (2e14 <Send_UDP+0x234>)
    2c7c:	801a      	strh	r2, [r3, #0]
    2c7e:	2316      	movs	r3, #22
    2c80:	18fb      	adds	r3, r7, r3
    2c82:	2216      	movs	r2, #22
    2c84:	18ba      	adds	r2, r7, r2
    2c86:	8812      	ldrh	r2, [r2, #0]
    2c88:	ba52      	rev16	r2, r2
    2c8a:	801a      	strh	r2, [r3, #0]
    2c8c:	4b62      	ldr	r3, [pc, #392]	; (2e18 <Send_UDP+0x238>)
    2c8e:	881a      	ldrh	r2, [r3, #0]
    2c90:	2314      	movs	r3, #20
    2c92:	18fb      	adds	r3, r7, r3
    2c94:	ba52      	rev16	r2, r2
    2c96:	801a      	strh	r2, [r3, #0]
    2c98:	4b5b      	ldr	r3, [pc, #364]	; (2e08 <Send_UDP+0x228>)
    2c9a:	2216      	movs	r2, #22
    2c9c:	18ba      	adds	r2, r7, r2
    2c9e:	8812      	ldrh	r2, [r2, #0]
    2ca0:	845a      	strh	r2, [r3, #34]	; 0x22
    2ca2:	4b59      	ldr	r3, [pc, #356]	; (2e08 <Send_UDP+0x228>)
    2ca4:	2214      	movs	r2, #20
    2ca6:	18ba      	adds	r2, r7, r2
    2ca8:	8812      	ldrh	r2, [r2, #0]
    2caa:	849a      	strh	r2, [r3, #36]	; 0x24
    2cac:	4b56      	ldr	r3, [pc, #344]	; (2e08 <Send_UDP+0x228>)
    2cae:	22c0      	movs	r2, #192	; 0xc0
    2cb0:	0112      	lsls	r2, r2, #4
    2cb2:	84da      	strh	r2, [r3, #38]	; 0x26
    2cb4:	4b54      	ldr	r3, [pc, #336]	; (2e08 <Send_UDP+0x228>)
    2cb6:	2200      	movs	r2, #0
    2cb8:	851a      	strh	r2, [r3, #40]	; 0x28
    2cba:	4b58      	ldr	r3, [pc, #352]	; (2e1c <Send_UDP+0x23c>)
    2cbc:	61bb      	str	r3, [r7, #24]
    2cbe:	683a      	ldr	r2, [r7, #0]
    2cc0:	23fe      	movs	r3, #254	; 0xfe
    2cc2:	005b      	lsls	r3, r3, #1
    2cc4:	429a      	cmp	r2, r3
    2cc6:	dd02      	ble.n	2cce <Send_UDP+0xee>
    2cc8:	23fe      	movs	r3, #254	; 0xfe
    2cca:	005b      	lsls	r3, r3, #1
    2ccc:	603b      	str	r3, [r7, #0]
    2cce:	2300      	movs	r3, #0
    2cd0:	61fb      	str	r3, [r7, #28]
    2cd2:	e00a      	b.n	2cea <Send_UDP+0x10a>
    2cd4:	69bb      	ldr	r3, [r7, #24]
    2cd6:	1c5a      	adds	r2, r3, #1
    2cd8:	61ba      	str	r2, [r7, #24]
    2cda:	687a      	ldr	r2, [r7, #4]
    2cdc:	1c51      	adds	r1, r2, #1
    2cde:	6079      	str	r1, [r7, #4]
    2ce0:	7812      	ldrb	r2, [r2, #0]
    2ce2:	701a      	strb	r2, [r3, #0]
    2ce4:	69fb      	ldr	r3, [r7, #28]
    2ce6:	3301      	adds	r3, #1
    2ce8:	61fb      	str	r3, [r7, #28]
    2cea:	683b      	ldr	r3, [r7, #0]
    2cec:	69fa      	ldr	r2, [r7, #28]
    2cee:	429a      	cmp	r2, r3
    2cf0:	d3f0      	bcc.n	2cd4 <Send_UDP+0xf4>
    2cf2:	683b      	ldr	r3, [r7, #0]
    2cf4:	b29a      	uxth	r2, r3
    2cf6:	2312      	movs	r3, #18
    2cf8:	18fb      	adds	r3, r7, r3
    2cfa:	321c      	adds	r2, #28
    2cfc:	801a      	strh	r2, [r3, #0]
    2cfe:	2312      	movs	r3, #18
    2d00:	18fb      	adds	r3, r7, r3
    2d02:	881b      	ldrh	r3, [r3, #0]
    2d04:	021b      	lsls	r3, r3, #8
    2d06:	b29a      	uxth	r2, r3
    2d08:	2312      	movs	r3, #18
    2d0a:	18fb      	adds	r3, r7, r3
    2d0c:	881b      	ldrh	r3, [r3, #0]
    2d0e:	0a1b      	lsrs	r3, r3, #8
    2d10:	b29b      	uxth	r3, r3
    2d12:	18d3      	adds	r3, r2, r3
    2d14:	b29a      	uxth	r2, r3
    2d16:	4b3c      	ldr	r3, [pc, #240]	; (2e08 <Send_UDP+0x228>)
    2d18:	821a      	strh	r2, [r3, #16]
    2d1a:	4b3b      	ldr	r3, [pc, #236]	; (2e08 <Send_UDP+0x228>)
    2d1c:	0018      	movs	r0, r3
    2d1e:	f7ff fd5d 	bl	27dc <CheckSum_IP>
    2d22:	0003      	movs	r3, r0
    2d24:	001a      	movs	r2, r3
    2d26:	4b38      	ldr	r3, [pc, #224]	; (2e08 <Send_UDP+0x228>)
    2d28:	831a      	strh	r2, [r3, #24]
    2d2a:	683b      	ldr	r3, [r7, #0]
    2d2c:	b29a      	uxth	r2, r3
    2d2e:	2310      	movs	r3, #16
    2d30:	18fb      	adds	r3, r7, r3
    2d32:	3208      	adds	r2, #8
    2d34:	801a      	strh	r2, [r3, #0]
    2d36:	2310      	movs	r3, #16
    2d38:	18fb      	adds	r3, r7, r3
    2d3a:	881b      	ldrh	r3, [r3, #0]
    2d3c:	021b      	lsls	r3, r3, #8
    2d3e:	b29a      	uxth	r2, r3
    2d40:	2310      	movs	r3, #16
    2d42:	18fb      	adds	r3, r7, r3
    2d44:	881b      	ldrh	r3, [r3, #0]
    2d46:	0a1b      	lsrs	r3, r3, #8
    2d48:	b29b      	uxth	r3, r3
    2d4a:	18d3      	adds	r3, r2, r3
    2d4c:	b29a      	uxth	r2, r3
    2d4e:	4b2e      	ldr	r3, [pc, #184]	; (2e08 <Send_UDP+0x228>)
    2d50:	84da      	strh	r2, [r3, #38]	; 0x26
    2d52:	683b      	ldr	r3, [r7, #0]
    2d54:	b29b      	uxth	r3, r3
    2d56:	3308      	adds	r3, #8
    2d58:	b29b      	uxth	r3, r3
    2d5a:	220e      	movs	r2, #14
    2d5c:	18bc      	adds	r4, r7, r2
    2d5e:	4a2a      	ldr	r2, [pc, #168]	; (2e08 <Send_UDP+0x228>)
    2d60:	0011      	movs	r1, r2
    2d62:	0018      	movs	r0, r3
    2d64:	f7ff fc8a 	bl	267c <CheckSum_UDP>
    2d68:	0003      	movs	r3, r0
    2d6a:	8023      	strh	r3, [r4, #0]
    2d6c:	230e      	movs	r3, #14
    2d6e:	18fb      	adds	r3, r7, r3
    2d70:	881b      	ldrh	r3, [r3, #0]
    2d72:	021b      	lsls	r3, r3, #8
    2d74:	b29a      	uxth	r2, r3
    2d76:	230e      	movs	r3, #14
    2d78:	18fb      	adds	r3, r7, r3
    2d7a:	881b      	ldrh	r3, [r3, #0]
    2d7c:	0a1b      	lsrs	r3, r3, #8
    2d7e:	b29b      	uxth	r3, r3
    2d80:	18d3      	adds	r3, r2, r3
    2d82:	b29a      	uxth	r2, r3
    2d84:	4b20      	ldr	r3, [pc, #128]	; (2e08 <Send_UDP+0x228>)
    2d86:	851a      	strh	r2, [r3, #40]	; 0x28
    2d88:	683b      	ldr	r3, [r7, #0]
    2d8a:	332a      	adds	r3, #42	; 0x2a
    2d8c:	001a      	movs	r2, r3
    2d8e:	4b1e      	ldr	r3, [pc, #120]	; (2e08 <Send_UDP+0x228>)
    2d90:	0011      	movs	r1, r2
    2d92:	0018      	movs	r0, r3
    2d94:	f7ff faca 	bl	232c <SendPacket>
    2d98:	4b1c      	ldr	r3, [pc, #112]	; (2e0c <Send_UDP+0x22c>)
    2d9a:	881b      	ldrh	r3, [r3, #0]
    2d9c:	0a1b      	lsrs	r3, r3, #8
    2d9e:	b29b      	uxth	r3, r3
    2da0:	b2da      	uxtb	r2, r3
    2da2:	230c      	movs	r3, #12
    2da4:	18fb      	adds	r3, r7, r3
    2da6:	701a      	strb	r2, [r3, #0]
    2da8:	4b18      	ldr	r3, [pc, #96]	; (2e0c <Send_UDP+0x22c>)
    2daa:	881b      	ldrh	r3, [r3, #0]
    2dac:	b2da      	uxtb	r2, r3
    2dae:	230c      	movs	r3, #12
    2db0:	18fb      	adds	r3, r7, r3
    2db2:	705a      	strb	r2, [r3, #1]
    2db4:	230c      	movs	r3, #12
    2db6:	18fb      	adds	r3, r7, r3
    2db8:	781b      	ldrb	r3, [r3, #0]
    2dba:	3301      	adds	r3, #1
    2dbc:	b2da      	uxtb	r2, r3
    2dbe:	230c      	movs	r3, #12
    2dc0:	18fb      	adds	r3, r7, r3
    2dc2:	701a      	strb	r2, [r3, #0]
    2dc4:	230c      	movs	r3, #12
    2dc6:	18fb      	adds	r3, r7, r3
    2dc8:	781b      	ldrb	r3, [r3, #0]
    2dca:	2b00      	cmp	r3, #0
    2dcc:	d107      	bne.n	2dde <Send_UDP+0x1fe>
    2dce:	230c      	movs	r3, #12
    2dd0:	18fb      	adds	r3, r7, r3
    2dd2:	785b      	ldrb	r3, [r3, #1]
    2dd4:	3301      	adds	r3, #1
    2dd6:	b2da      	uxtb	r2, r3
    2dd8:	230c      	movs	r3, #12
    2dda:	18fb      	adds	r3, r7, r3
    2ddc:	705a      	strb	r2, [r3, #1]
    2dde:	230c      	movs	r3, #12
    2de0:	18fb      	adds	r3, r7, r3
    2de2:	781b      	ldrb	r3, [r3, #0]
    2de4:	021b      	lsls	r3, r3, #8
    2de6:	b21a      	sxth	r2, r3
    2de8:	230c      	movs	r3, #12
    2dea:	18fb      	adds	r3, r7, r3
    2dec:	785b      	ldrb	r3, [r3, #1]
    2dee:	b21b      	sxth	r3, r3
    2df0:	4313      	orrs	r3, r2
    2df2:	b21b      	sxth	r3, r3
    2df4:	b29a      	uxth	r2, r3
    2df6:	4b05      	ldr	r3, [pc, #20]	; (2e0c <Send_UDP+0x22c>)
    2df8:	801a      	strh	r2, [r3, #0]
    2dfa:	46c0      	nop			; (mov r8, r8)
    2dfc:	46bd      	mov	sp, r7
    2dfe:	b009      	add	sp, #36	; 0x24
    2e00:	bd90      	pop	{r4, r7, pc}
    2e02:	46c0      	nop			; (mov r8, r8)
    2e04:	20004d1c 	.word	0x20004d1c
    2e08:	20005584 	.word	0x20005584
    2e0c:	20004d30 	.word	0x20004d30
    2e10:	2000000c 	.word	0x2000000c
    2e14:	00001234 	.word	0x00001234
    2e18:	20005318 	.word	0x20005318
    2e1c:	200055ae 	.word	0x200055ae

00002e20 <PacketParser>:
    2e20:	b580      	push	{r7, lr}
    2e22:	b082      	sub	sp, #8
    2e24:	af00      	add	r7, sp, #0
    2e26:	4b49      	ldr	r3, [pc, #292]	; (2f4c <PacketParser+0x12c>)
    2e28:	899b      	ldrh	r3, [r3, #12]
    2e2a:	2b08      	cmp	r3, #8
    2e2c:	d005      	beq.n	2e3a <PacketParser+0x1a>
    2e2e:	22c1      	movs	r2, #193	; 0xc1
    2e30:	00d2      	lsls	r2, r2, #3
    2e32:	4293      	cmp	r3, r2
    2e34:	d100      	bne.n	2e38 <PacketParser+0x18>
    2e36:	e06b      	b.n	2f10 <PacketParser+0xf0>
    2e38:	e084      	b.n	2f44 <PacketParser+0x124>
    2e3a:	4b44      	ldr	r3, [pc, #272]	; (2f4c <PacketParser+0x12c>)
    2e3c:	8b9a      	ldrh	r2, [r3, #28]
    2e3e:	4b44      	ldr	r3, [pc, #272]	; (2f50 <PacketParser+0x130>)
    2e40:	811a      	strh	r2, [r3, #8]
    2e42:	4b42      	ldr	r3, [pc, #264]	; (2f4c <PacketParser+0x12c>)
    2e44:	8bda      	ldrh	r2, [r3, #30]
    2e46:	4b42      	ldr	r3, [pc, #264]	; (2f50 <PacketParser+0x130>)
    2e48:	80da      	strh	r2, [r3, #6]
    2e4a:	4b41      	ldr	r3, [pc, #260]	; (2f50 <PacketParser+0x130>)
    2e4c:	895b      	ldrh	r3, [r3, #10]
    2e4e:	2b00      	cmp	r3, #0
    2e50:	d100      	bne.n	2e54 <PacketParser+0x34>
    2e52:	e072      	b.n	2f3a <PacketParser+0x11a>
    2e54:	4b3d      	ldr	r3, [pc, #244]	; (2f4c <PacketParser+0x12c>)
    2e56:	8bda      	ldrh	r2, [r3, #30]
    2e58:	4b3e      	ldr	r3, [pc, #248]	; (2f54 <PacketParser+0x134>)
    2e5a:	881b      	ldrh	r3, [r3, #0]
    2e5c:	429a      	cmp	r2, r3
    2e5e:	d000      	beq.n	2e62 <PacketParser+0x42>
    2e60:	e06d      	b.n	2f3e <PacketParser+0x11e>
    2e62:	4b3a      	ldr	r3, [pc, #232]	; (2f4c <PacketParser+0x12c>)
    2e64:	8c1a      	ldrh	r2, [r3, #32]
    2e66:	4b3b      	ldr	r3, [pc, #236]	; (2f54 <PacketParser+0x134>)
    2e68:	885b      	ldrh	r3, [r3, #2]
    2e6a:	429a      	cmp	r2, r3
    2e6c:	d000      	beq.n	2e70 <PacketParser+0x50>
    2e6e:	e066      	b.n	2f3e <PacketParser+0x11e>
    2e70:	4b36      	ldr	r3, [pc, #216]	; (2f4c <PacketParser+0x12c>)
    2e72:	0018      	movs	r0, r3
    2e74:	f7ff fcb2 	bl	27dc <CheckSum_IP>
    2e78:	0003      	movs	r3, r0
    2e7a:	001a      	movs	r2, r3
    2e7c:	4b33      	ldr	r3, [pc, #204]	; (2f4c <PacketParser+0x12c>)
    2e7e:	8b1b      	ldrh	r3, [r3, #24]
    2e80:	429a      	cmp	r2, r3
    2e82:	d15c      	bne.n	2f3e <PacketParser+0x11e>
    2e84:	4b31      	ldr	r3, [pc, #196]	; (2f4c <PacketParser+0x12c>)
    2e86:	8adb      	ldrh	r3, [r3, #22]
    2e88:	001a      	movs	r2, r3
    2e8a:	23ff      	movs	r3, #255	; 0xff
    2e8c:	021b      	lsls	r3, r3, #8
    2e8e:	401a      	ands	r2, r3
    2e90:	2380      	movs	r3, #128	; 0x80
    2e92:	005b      	lsls	r3, r3, #1
    2e94:	429a      	cmp	r2, r3
    2e96:	d110      	bne.n	2eba <PacketParser+0x9a>
    2e98:	4b2c      	ldr	r3, [pc, #176]	; (2f4c <PacketParser+0x12c>)
    2e9a:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2e9c:	2b00      	cmp	r3, #0
    2e9e:	d105      	bne.n	2eac <PacketParser+0x8c>
    2ea0:	4b2d      	ldr	r3, [pc, #180]	; (2f58 <PacketParser+0x138>)
    2ea2:	681b      	ldr	r3, [r3, #0]
    2ea4:	1c5a      	adds	r2, r3, #1
    2ea6:	4b2c      	ldr	r3, [pc, #176]	; (2f58 <PacketParser+0x138>)
    2ea8:	601a      	str	r2, [r3, #0]
    2eaa:	e048      	b.n	2f3e <PacketParser+0x11e>
    2eac:	4b27      	ldr	r3, [pc, #156]	; (2f4c <PacketParser+0x12c>)
    2eae:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2eb0:	2b08      	cmp	r3, #8
    2eb2:	d144      	bne.n	2f3e <PacketParser+0x11e>
    2eb4:	f7ff fde4 	bl	2a80 <Answear_ICMP>
    2eb8:	e041      	b.n	2f3e <PacketParser+0x11e>
    2eba:	4b24      	ldr	r3, [pc, #144]	; (2f4c <PacketParser+0x12c>)
    2ebc:	8adb      	ldrh	r3, [r3, #22]
    2ebe:	001a      	movs	r2, r3
    2ec0:	23ff      	movs	r3, #255	; 0xff
    2ec2:	021b      	lsls	r3, r3, #8
    2ec4:	401a      	ands	r2, r3
    2ec6:	2388      	movs	r3, #136	; 0x88
    2ec8:	015b      	lsls	r3, r3, #5
    2eca:	429a      	cmp	r2, r3
    2ecc:	d137      	bne.n	2f3e <PacketParser+0x11e>
    2ece:	4b1f      	ldr	r3, [pc, #124]	; (2f4c <PacketParser+0x12c>)
    2ed0:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ed2:	021b      	lsls	r3, r3, #8
    2ed4:	b29a      	uxth	r2, r3
    2ed6:	4b1d      	ldr	r3, [pc, #116]	; (2f4c <PacketParser+0x12c>)
    2ed8:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2eda:	0a1b      	lsrs	r3, r3, #8
    2edc:	b29b      	uxth	r3, r3
    2ede:	18d3      	adds	r3, r2, r3
    2ee0:	b29a      	uxth	r2, r3
    2ee2:	4b1e      	ldr	r3, [pc, #120]	; (2f5c <PacketParser+0x13c>)
    2ee4:	801a      	strh	r2, [r3, #0]
    2ee6:	4b19      	ldr	r3, [pc, #100]	; (2f4c <PacketParser+0x12c>)
    2ee8:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2eea:	021b      	lsls	r3, r3, #8
    2eec:	b299      	uxth	r1, r3
    2eee:	4b17      	ldr	r3, [pc, #92]	; (2f4c <PacketParser+0x12c>)
    2ef0:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2ef2:	0a1b      	lsrs	r3, r3, #8
    2ef4:	b29a      	uxth	r2, r3
    2ef6:	1dbb      	adds	r3, r7, #6
    2ef8:	188a      	adds	r2, r1, r2
    2efa:	801a      	strh	r2, [r3, #0]
    2efc:	1dbb      	adds	r3, r7, #6
    2efe:	881b      	ldrh	r3, [r3, #0]
    2f00:	4a17      	ldr	r2, [pc, #92]	; (2f60 <PacketParser+0x140>)
    2f02:	4293      	cmp	r3, r2
    2f04:	d11b      	bne.n	2f3e <PacketParser+0x11e>
    2f06:	4b17      	ldr	r3, [pc, #92]	; (2f64 <PacketParser+0x144>)
    2f08:	0018      	movs	r0, r3
    2f0a:	f001 f825 	bl	3f58 <mdb_proc_adu>
    2f0e:	e016      	b.n	2f3e <PacketParser+0x11e>
    2f10:	4b0e      	ldr	r3, [pc, #56]	; (2f4c <PacketParser+0x12c>)
    2f12:	8a9a      	ldrh	r2, [r3, #20]
    2f14:	2380      	movs	r3, #128	; 0x80
    2f16:	005b      	lsls	r3, r3, #1
    2f18:	429a      	cmp	r2, r3
    2f1a:	d112      	bne.n	2f42 <PacketParser+0x122>
    2f1c:	4b0b      	ldr	r3, [pc, #44]	; (2f4c <PacketParser+0x12c>)
    2f1e:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    2f20:	4b0c      	ldr	r3, [pc, #48]	; (2f54 <PacketParser+0x134>)
    2f22:	881b      	ldrh	r3, [r3, #0]
    2f24:	429a      	cmp	r2, r3
    2f26:	d10c      	bne.n	2f42 <PacketParser+0x122>
    2f28:	4b08      	ldr	r3, [pc, #32]	; (2f4c <PacketParser+0x12c>)
    2f2a:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    2f2c:	4b09      	ldr	r3, [pc, #36]	; (2f54 <PacketParser+0x134>)
    2f2e:	885b      	ldrh	r3, [r3, #2]
    2f30:	429a      	cmp	r2, r3
    2f32:	d106      	bne.n	2f42 <PacketParser+0x122>
    2f34:	f7ff fb2e 	bl	2594 <Answear_ARP>
    2f38:	e003      	b.n	2f42 <PacketParser+0x122>
    2f3a:	46c0      	nop			; (mov r8, r8)
    2f3c:	e002      	b.n	2f44 <PacketParser+0x124>
    2f3e:	46c0      	nop			; (mov r8, r8)
    2f40:	e000      	b.n	2f44 <PacketParser+0x124>
    2f42:	46c0      	nop			; (mov r8, r8)
    2f44:	46c0      	nop			; (mov r8, r8)
    2f46:	46bd      	mov	sp, r7
    2f48:	b002      	add	sp, #8
    2f4a:	bd80      	pop	{r7, pc}
    2f4c:	20004d38 	.word	0x20004d38
    2f50:	20004d1c 	.word	0x20004d1c
    2f54:	2000000c 	.word	0x2000000c
    2f58:	20004d34 	.word	0x20004d34
    2f5c:	20005318 	.word	0x20005318
    2f60:	00001234 	.word	0x00001234
    2f64:	20004d62 	.word	0x20004d62

00002f68 <threadPacketParser>:
    2f68:	b580      	push	{r7, lr}
    2f6a:	b086      	sub	sp, #24
    2f6c:	af00      	add	r7, sp, #0
    2f6e:	6078      	str	r0, [r7, #4]
    2f70:	4b31      	ldr	r3, [pc, #196]	; (3038 <threadPacketParser+0xd0>)
    2f72:	0018      	movs	r0, r3
    2f74:	f003 fb9a 	bl	66ac <osMutexCreate>
    2f78:	0002      	movs	r2, r0
    2f7a:	4b30      	ldr	r3, [pc, #192]	; (303c <threadPacketParser+0xd4>)
    2f7c:	601a      	str	r2, [r3, #0]
    2f7e:	4b30      	ldr	r3, [pc, #192]	; (3040 <threadPacketParser+0xd8>)
    2f80:	0018      	movs	r0, r3
    2f82:	f003 fb93 	bl	66ac <osMutexCreate>
    2f86:	0002      	movs	r2, r0
    2f88:	4b2e      	ldr	r3, [pc, #184]	; (3044 <threadPacketParser+0xdc>)
    2f8a:	601a      	str	r2, [r3, #0]
    2f8c:	230c      	movs	r3, #12
    2f8e:	18f8      	adds	r0, r7, r3
    2f90:	23fa      	movs	r3, #250	; 0xfa
    2f92:	005b      	lsls	r3, r3, #1
    2f94:	001a      	movs	r2, r3
    2f96:	2100      	movs	r1, #0
    2f98:	f003 fafa 	bl	6590 <osSignalWait>
    2f9c:	230c      	movs	r3, #12
    2f9e:	18fb      	adds	r3, r7, r3
    2fa0:	681b      	ldr	r3, [r3, #0]
    2fa2:	2b08      	cmp	r3, #8
    2fa4:	d120      	bne.n	2fe8 <threadPacketParser+0x80>
    2fa6:	230c      	movs	r3, #12
    2fa8:	18fb      	adds	r3, r7, r3
    2faa:	685b      	ldr	r3, [r3, #4]
    2fac:	2b01      	cmp	r3, #1
    2fae:	d142      	bne.n	3036 <threadPacketParser+0xce>
    2fb0:	4b25      	ldr	r3, [pc, #148]	; (3048 <threadPacketParser+0xe0>)
    2fb2:	4a25      	ldr	r2, [pc, #148]	; (3048 <threadPacketParser+0xe0>)
    2fb4:	6812      	ldr	r2, [r2, #0]
    2fb6:	2180      	movs	r1, #128	; 0x80
    2fb8:	404a      	eors	r2, r1
    2fba:	601a      	str	r2, [r3, #0]
    2fbc:	e00a      	b.n	2fd4 <threadPacketParser+0x6c>
    2fbe:	4b23      	ldr	r3, [pc, #140]	; (304c <threadPacketParser+0xe4>)
    2fc0:	0018      	movs	r0, r3
    2fc2:	f7ff f8bd 	bl	2140 <ReadPacket>
    2fc6:	0003      	movs	r3, r0
    2fc8:	b299      	uxth	r1, r3
    2fca:	4b20      	ldr	r3, [pc, #128]	; (304c <threadPacketParser+0xe4>)
    2fcc:	4a20      	ldr	r2, [pc, #128]	; (3050 <threadPacketParser+0xe8>)
    2fce:	5299      	strh	r1, [r3, r2]
    2fd0:	f7ff ff26 	bl	2e20 <PacketParser>
    2fd4:	23c0      	movs	r3, #192	; 0xc0
    2fd6:	059b      	lsls	r3, r3, #22
    2fd8:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    2fda:	b29b      	uxth	r3, r3
    2fdc:	001a      	movs	r2, r3
    2fde:	23e0      	movs	r3, #224	; 0xe0
    2fe0:	4013      	ands	r3, r2
    2fe2:	d1ec      	bne.n	2fbe <threadPacketParser+0x56>
    2fe4:	46c0      	nop			; (mov r8, r8)
    2fe6:	e026      	b.n	3036 <threadPacketParser+0xce>
    2fe8:	230c      	movs	r3, #12
    2fea:	18fb      	adds	r3, r7, r3
    2fec:	681b      	ldr	r3, [r3, #0]
    2fee:	2b40      	cmp	r3, #64	; 0x40
    2ff0:	d1cc      	bne.n	2f8c <threadPacketParser+0x24>
    2ff2:	23c0      	movs	r3, #192	; 0xc0
    2ff4:	059b      	lsls	r3, r3, #22
    2ff6:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    2ff8:	b29b      	uxth	r3, r3
    2ffa:	001a      	movs	r2, r3
    2ffc:	2302      	movs	r3, #2
    2ffe:	4013      	ands	r3, r2
    3000:	d104      	bne.n	300c <threadPacketParser+0xa4>
    3002:	4b14      	ldr	r3, [pc, #80]	; (3054 <threadPacketParser+0xec>)
    3004:	2280      	movs	r2, #128	; 0x80
    3006:	0212      	lsls	r2, r2, #8
    3008:	621a      	str	r2, [r3, #32]
    300a:	e003      	b.n	3014 <threadPacketParser+0xac>
    300c:	4b11      	ldr	r3, [pc, #68]	; (3054 <threadPacketParser+0xec>)
    300e:	2280      	movs	r2, #128	; 0x80
    3010:	0212      	lsls	r2, r2, #8
    3012:	625a      	str	r2, [r3, #36]	; 0x24
    3014:	23c0      	movs	r3, #192	; 0xc0
    3016:	059b      	lsls	r3, r3, #22
    3018:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    301a:	b29b      	uxth	r3, r3
    301c:	001a      	movs	r2, r3
    301e:	2308      	movs	r3, #8
    3020:	4013      	ands	r3, r2
    3022:	d104      	bne.n	302e <threadPacketParser+0xc6>
    3024:	4b0b      	ldr	r3, [pc, #44]	; (3054 <threadPacketParser+0xec>)
    3026:	2280      	movs	r2, #128	; 0x80
    3028:	01d2      	lsls	r2, r2, #7
    302a:	621a      	str	r2, [r3, #32]
    302c:	e7ae      	b.n	2f8c <threadPacketParser+0x24>
    302e:	4b09      	ldr	r3, [pc, #36]	; (3054 <threadPacketParser+0xec>)
    3030:	2280      	movs	r2, #128	; 0x80
    3032:	01d2      	lsls	r2, r2, #7
    3034:	625a      	str	r2, [r3, #36]	; 0x24
    3036:	e7a9      	b.n	2f8c <threadPacketParser+0x24>
    3038:	00008944 	.word	0x00008944
    303c:	2000532c 	.word	0x2000532c
    3040:	00008948 	.word	0x00008948
    3044:	20005340 	.word	0x20005340
    3048:	400c0000 	.word	0x400c0000
    304c:	20004d38 	.word	0x20004d38
    3050:	000005dc 	.word	0x000005dc
    3054:	400b0000 	.word	0x400b0000

00003058 <crc32>:
    3058:	b580      	push	{r7, lr}
    305a:	b084      	sub	sp, #16
    305c:	af00      	add	r7, sp, #0
    305e:	6078      	str	r0, [r7, #4]
    3060:	6039      	str	r1, [r7, #0]
    3062:	2301      	movs	r3, #1
    3064:	425b      	negs	r3, r3
    3066:	60bb      	str	r3, [r7, #8]
    3068:	2300      	movs	r3, #0
    306a:	60fb      	str	r3, [r7, #12]
    306c:	e012      	b.n	3094 <crc32+0x3c>
    306e:	68bb      	ldr	r3, [r7, #8]
    3070:	0a1a      	lsrs	r2, r3, #8
    3072:	68fb      	ldr	r3, [r7, #12]
    3074:	6879      	ldr	r1, [r7, #4]
    3076:	18cb      	adds	r3, r1, r3
    3078:	781b      	ldrb	r3, [r3, #0]
    307a:	0019      	movs	r1, r3
    307c:	68bb      	ldr	r3, [r7, #8]
    307e:	404b      	eors	r3, r1
    3080:	21ff      	movs	r1, #255	; 0xff
    3082:	4019      	ands	r1, r3
    3084:	4b08      	ldr	r3, [pc, #32]	; (30a8 <crc32+0x50>)
    3086:	0089      	lsls	r1, r1, #2
    3088:	58cb      	ldr	r3, [r1, r3]
    308a:	4053      	eors	r3, r2
    308c:	60bb      	str	r3, [r7, #8]
    308e:	68fb      	ldr	r3, [r7, #12]
    3090:	3301      	adds	r3, #1
    3092:	60fb      	str	r3, [r7, #12]
    3094:	68fa      	ldr	r2, [r7, #12]
    3096:	683b      	ldr	r3, [r7, #0]
    3098:	429a      	cmp	r2, r3
    309a:	d3e8      	bcc.n	306e <crc32+0x16>
    309c:	68bb      	ldr	r3, [r7, #8]
    309e:	0018      	movs	r0, r3
    30a0:	46bd      	mov	sp, r7
    30a2:	b004      	add	sp, #16
    30a4:	bd80      	pop	{r7, pc}
    30a6:	46c0      	nop			; (mov r8, r8)
    30a8:	0000894c 	.word	0x0000894c

000030ac <crc16>:
    30ac:	b580      	push	{r7, lr}
    30ae:	b086      	sub	sp, #24
    30b0:	af00      	add	r7, sp, #0
    30b2:	6078      	str	r0, [r7, #4]
    30b4:	6039      	str	r1, [r7, #0]
    30b6:	2317      	movs	r3, #23
    30b8:	18fb      	adds	r3, r7, r3
    30ba:	22ff      	movs	r2, #255	; 0xff
    30bc:	701a      	strb	r2, [r3, #0]
    30be:	2316      	movs	r3, #22
    30c0:	18fb      	adds	r3, r7, r3
    30c2:	22ff      	movs	r2, #255	; 0xff
    30c4:	701a      	strb	r2, [r3, #0]
    30c6:	2300      	movs	r3, #0
    30c8:	613b      	str	r3, [r7, #16]
    30ca:	e01e      	b.n	310a <crc16+0x5e>
    30cc:	693b      	ldr	r3, [r7, #16]
    30ce:	687a      	ldr	r2, [r7, #4]
    30d0:	18d3      	adds	r3, r2, r3
    30d2:	781a      	ldrb	r2, [r3, #0]
    30d4:	2317      	movs	r3, #23
    30d6:	18fb      	adds	r3, r7, r3
    30d8:	781b      	ldrb	r3, [r3, #0]
    30da:	4053      	eors	r3, r2
    30dc:	b2db      	uxtb	r3, r3
    30de:	60fb      	str	r3, [r7, #12]
    30e0:	4a14      	ldr	r2, [pc, #80]	; (3134 <crc16+0x88>)
    30e2:	68fb      	ldr	r3, [r7, #12]
    30e4:	18d3      	adds	r3, r2, r3
    30e6:	7819      	ldrb	r1, [r3, #0]
    30e8:	2317      	movs	r3, #23
    30ea:	18fb      	adds	r3, r7, r3
    30ec:	2216      	movs	r2, #22
    30ee:	18ba      	adds	r2, r7, r2
    30f0:	7812      	ldrb	r2, [r2, #0]
    30f2:	404a      	eors	r2, r1
    30f4:	701a      	strb	r2, [r3, #0]
    30f6:	2316      	movs	r3, #22
    30f8:	18fb      	adds	r3, r7, r3
    30fa:	490f      	ldr	r1, [pc, #60]	; (3138 <crc16+0x8c>)
    30fc:	68fa      	ldr	r2, [r7, #12]
    30fe:	188a      	adds	r2, r1, r2
    3100:	7812      	ldrb	r2, [r2, #0]
    3102:	701a      	strb	r2, [r3, #0]
    3104:	693b      	ldr	r3, [r7, #16]
    3106:	3301      	adds	r3, #1
    3108:	613b      	str	r3, [r7, #16]
    310a:	693a      	ldr	r2, [r7, #16]
    310c:	683b      	ldr	r3, [r7, #0]
    310e:	429a      	cmp	r2, r3
    3110:	dbdc      	blt.n	30cc <crc16+0x20>
    3112:	2316      	movs	r3, #22
    3114:	18fb      	adds	r3, r7, r3
    3116:	781b      	ldrb	r3, [r3, #0]
    3118:	021b      	lsls	r3, r3, #8
    311a:	b21a      	sxth	r2, r3
    311c:	2317      	movs	r3, #23
    311e:	18fb      	adds	r3, r7, r3
    3120:	781b      	ldrb	r3, [r3, #0]
    3122:	b21b      	sxth	r3, r3
    3124:	4313      	orrs	r3, r2
    3126:	b21b      	sxth	r3, r3
    3128:	b29b      	uxth	r3, r3
    312a:	0018      	movs	r0, r3
    312c:	46bd      	mov	sp, r7
    312e:	b006      	add	sp, #24
    3130:	bd80      	pop	{r7, pc}
    3132:	46c0      	nop			; (mov r8, r8)
    3134:	00008d4c 	.word	0x00008d4c
    3138:	00008e4c 	.word	0x00008e4c

0000313c <eeprom_on>:
    313c:	b580      	push	{r7, lr}
    313e:	af00      	add	r7, sp, #0
    3140:	b672      	cpsid	i
    3142:	4b04      	ldr	r3, [pc, #16]	; (3154 <eeprom_on+0x18>)
    3144:	4a03      	ldr	r2, [pc, #12]	; (3154 <eeprom_on+0x18>)
    3146:	69d2      	ldr	r2, [r2, #28]
    3148:	2108      	movs	r1, #8
    314a:	430a      	orrs	r2, r1
    314c:	61da      	str	r2, [r3, #28]
    314e:	46c0      	nop			; (mov r8, r8)
    3150:	46bd      	mov	sp, r7
    3152:	bd80      	pop	{r7, pc}
    3154:	40020000 	.word	0x40020000

00003158 <eeprom_off>:
    3158:	b580      	push	{r7, lr}
    315a:	af00      	add	r7, sp, #0
    315c:	b662      	cpsie	i
    315e:	4b04      	ldr	r3, [pc, #16]	; (3170 <eeprom_off+0x18>)
    3160:	4a03      	ldr	r2, [pc, #12]	; (3170 <eeprom_off+0x18>)
    3162:	69d2      	ldr	r2, [r2, #28]
    3164:	2108      	movs	r1, #8
    3166:	438a      	bics	r2, r1
    3168:	61da      	str	r2, [r3, #28]
    316a:	46c0      	nop			; (mov r8, r8)
    316c:	46bd      	mov	sp, r7
    316e:	bd80      	pop	{r7, pc}
    3170:	40020000 	.word	0x40020000

00003174 <par_default>:
    3174:	b580      	push	{r7, lr}
    3176:	af00      	add	r7, sp, #0
    3178:	4b13      	ldr	r3, [pc, #76]	; (31c8 <par_default+0x54>)
    317a:	0018      	movs	r0, r3
    317c:	2314      	movs	r3, #20
    317e:	001a      	movs	r2, r3
    3180:	2100      	movs	r1, #0
    3182:	f001 fe25 	bl	4dd0 <memset>
    3186:	4b10      	ldr	r3, [pc, #64]	; (31c8 <par_default+0x54>)
    3188:	22bc      	movs	r2, #188	; 0xbc
    318a:	701a      	strb	r2, [r3, #0]
    318c:	4b0e      	ldr	r3, [pc, #56]	; (31c8 <par_default+0x54>)
    318e:	229a      	movs	r2, #154	; 0x9a
    3190:	705a      	strb	r2, [r3, #1]
    3192:	4b0d      	ldr	r3, [pc, #52]	; (31c8 <par_default+0x54>)
    3194:	2278      	movs	r2, #120	; 0x78
    3196:	709a      	strb	r2, [r3, #2]
    3198:	4b0b      	ldr	r3, [pc, #44]	; (31c8 <par_default+0x54>)
    319a:	2256      	movs	r2, #86	; 0x56
    319c:	70da      	strb	r2, [r3, #3]
    319e:	4b0a      	ldr	r3, [pc, #40]	; (31c8 <par_default+0x54>)
    31a0:	2234      	movs	r2, #52	; 0x34
    31a2:	711a      	strb	r2, [r3, #4]
    31a4:	4b08      	ldr	r3, [pc, #32]	; (31c8 <par_default+0x54>)
    31a6:	2212      	movs	r2, #18
    31a8:	715a      	strb	r2, [r3, #5]
    31aa:	4b07      	ldr	r3, [pc, #28]	; (31c8 <par_default+0x54>)
    31ac:	2201      	movs	r2, #1
    31ae:	719a      	strb	r2, [r3, #6]
    31b0:	4b05      	ldr	r3, [pc, #20]	; (31c8 <par_default+0x54>)
    31b2:	220a      	movs	r2, #10
    31b4:	725a      	strb	r2, [r3, #9]
    31b6:	4b04      	ldr	r3, [pc, #16]	; (31c8 <par_default+0x54>)
    31b8:	2202      	movs	r2, #2
    31ba:	729a      	strb	r2, [r3, #10]
    31bc:	4b02      	ldr	r3, [pc, #8]	; (31c8 <par_default+0x54>)
    31be:	220a      	movs	r2, #10
    31c0:	735a      	strb	r2, [r3, #13]
    31c2:	46c0      	nop			; (mov r8, r8)
    31c4:	46bd      	mov	sp, r7
    31c6:	bd80      	pop	{r7, pc}
    31c8:	20005b60 	.word	0x20005b60

000031cc <par_save>:
    31cc:	b580      	push	{r7, lr}
    31ce:	b084      	sub	sp, #16
    31d0:	af00      	add	r7, sp, #0
    31d2:	f7ff ffb3 	bl	313c <eeprom_on>
    31d6:	f005 fafb 	bl	87d0 <__eeprom_erase_page_veneer>
    31da:	1e03      	subs	r3, r0, #0
    31dc:	d01b      	beq.n	3216 <par_save+0x4a>
    31de:	4b11      	ldr	r3, [pc, #68]	; (3224 <par_save+0x58>)
    31e0:	60bb      	str	r3, [r7, #8]
    31e2:	2305      	movs	r3, #5
    31e4:	603b      	str	r3, [r7, #0]
    31e6:	2300      	movs	r3, #0
    31e8:	607b      	str	r3, [r7, #4]
    31ea:	2300      	movs	r3, #0
    31ec:	60fb      	str	r3, [r7, #12]
    31ee:	e00e      	b.n	320e <par_save+0x42>
    31f0:	68bb      	ldr	r3, [r7, #8]
    31f2:	1d1a      	adds	r2, r3, #4
    31f4:	60ba      	str	r2, [r7, #8]
    31f6:	681a      	ldr	r2, [r3, #0]
    31f8:	687b      	ldr	r3, [r7, #4]
    31fa:	0011      	movs	r1, r2
    31fc:	0018      	movs	r0, r3
    31fe:	f005 faf7 	bl	87f0 <__eeprom_program_word_veneer>
    3202:	687b      	ldr	r3, [r7, #4]
    3204:	3304      	adds	r3, #4
    3206:	607b      	str	r3, [r7, #4]
    3208:	68fb      	ldr	r3, [r7, #12]
    320a:	3301      	adds	r3, #1
    320c:	60fb      	str	r3, [r7, #12]
    320e:	68fa      	ldr	r2, [r7, #12]
    3210:	683b      	ldr	r3, [r7, #0]
    3212:	429a      	cmp	r2, r3
    3214:	dbec      	blt.n	31f0 <par_save+0x24>
    3216:	f7ff ff9f 	bl	3158 <eeprom_off>
    321a:	46c0      	nop			; (mov r8, r8)
    321c:	46bd      	mov	sp, r7
    321e:	b004      	add	sp, #16
    3220:	bd80      	pop	{r7, pc}
    3222:	46c0      	nop			; (mov r8, r8)
    3224:	20005b60 	.word	0x20005b60

00003228 <par_verify>:
    3228:	b590      	push	{r4, r7, lr}
    322a:	b087      	sub	sp, #28
    322c:	af00      	add	r7, sp, #0
    322e:	2301      	movs	r3, #1
    3230:	617b      	str	r3, [r7, #20]
    3232:	f7ff ff83 	bl	313c <eeprom_on>
    3236:	4b13      	ldr	r3, [pc, #76]	; (3284 <par_verify+0x5c>)
    3238:	60fb      	str	r3, [r7, #12]
    323a:	2305      	movs	r3, #5
    323c:	607b      	str	r3, [r7, #4]
    323e:	2300      	movs	r3, #0
    3240:	60bb      	str	r3, [r7, #8]
    3242:	2300      	movs	r3, #0
    3244:	613b      	str	r3, [r7, #16]
    3246:	e012      	b.n	326e <par_verify+0x46>
    3248:	68fb      	ldr	r3, [r7, #12]
    324a:	1d1a      	adds	r2, r3, #4
    324c:	60fa      	str	r2, [r7, #12]
    324e:	681c      	ldr	r4, [r3, #0]
    3250:	68bb      	ldr	r3, [r7, #8]
    3252:	0018      	movs	r0, r3
    3254:	f005 fac4 	bl	87e0 <__eeprom_read_word_veneer>
    3258:	0003      	movs	r3, r0
    325a:	429c      	cmp	r4, r3
    325c:	d001      	beq.n	3262 <par_verify+0x3a>
    325e:	2300      	movs	r3, #0
    3260:	617b      	str	r3, [r7, #20]
    3262:	68bb      	ldr	r3, [r7, #8]
    3264:	3304      	adds	r3, #4
    3266:	60bb      	str	r3, [r7, #8]
    3268:	693b      	ldr	r3, [r7, #16]
    326a:	3301      	adds	r3, #1
    326c:	613b      	str	r3, [r7, #16]
    326e:	693a      	ldr	r2, [r7, #16]
    3270:	687b      	ldr	r3, [r7, #4]
    3272:	429a      	cmp	r2, r3
    3274:	dbe8      	blt.n	3248 <par_verify+0x20>
    3276:	f7ff ff6f 	bl	3158 <eeprom_off>
    327a:	697b      	ldr	r3, [r7, #20]
    327c:	0018      	movs	r0, r3
    327e:	46bd      	mov	sp, r7
    3280:	b007      	add	sp, #28
    3282:	bd90      	pop	{r4, r7, pc}
    3284:	20005b60 	.word	0x20005b60

00003288 <par_read>:
    3288:	b590      	push	{r4, r7, lr}
    328a:	b085      	sub	sp, #20
    328c:	af00      	add	r7, sp, #0
    328e:	f7ff ff55 	bl	313c <eeprom_on>
    3292:	4b16      	ldr	r3, [pc, #88]	; (32ec <par_read+0x64>)
    3294:	60bb      	str	r3, [r7, #8]
    3296:	2305      	movs	r3, #5
    3298:	603b      	str	r3, [r7, #0]
    329a:	2300      	movs	r3, #0
    329c:	607b      	str	r3, [r7, #4]
    329e:	2300      	movs	r3, #0
    32a0:	60fb      	str	r3, [r7, #12]
    32a2:	e00e      	b.n	32c2 <par_read+0x3a>
    32a4:	68bc      	ldr	r4, [r7, #8]
    32a6:	1d23      	adds	r3, r4, #4
    32a8:	60bb      	str	r3, [r7, #8]
    32aa:	687b      	ldr	r3, [r7, #4]
    32ac:	0018      	movs	r0, r3
    32ae:	f005 fa97 	bl	87e0 <__eeprom_read_word_veneer>
    32b2:	0003      	movs	r3, r0
    32b4:	6023      	str	r3, [r4, #0]
    32b6:	687b      	ldr	r3, [r7, #4]
    32b8:	3304      	adds	r3, #4
    32ba:	607b      	str	r3, [r7, #4]
    32bc:	68fb      	ldr	r3, [r7, #12]
    32be:	3301      	adds	r3, #1
    32c0:	60fb      	str	r3, [r7, #12]
    32c2:	68fa      	ldr	r2, [r7, #12]
    32c4:	683b      	ldr	r3, [r7, #0]
    32c6:	429a      	cmp	r2, r3
    32c8:	dbec      	blt.n	32a4 <par_read+0x1c>
    32ca:	f7ff ff45 	bl	3158 <eeprom_off>
    32ce:	4b07      	ldr	r3, [pc, #28]	; (32ec <par_read+0x64>)
    32d0:	2114      	movs	r1, #20
    32d2:	0018      	movs	r0, r3
    32d4:	f7ff fec0 	bl	3058 <crc32>
    32d8:	1e03      	subs	r3, r0, #0
    32da:	d001      	beq.n	32e0 <par_read+0x58>
    32dc:	2300      	movs	r3, #0
    32de:	e000      	b.n	32e2 <par_read+0x5a>
    32e0:	2301      	movs	r3, #1
    32e2:	0018      	movs	r0, r3
    32e4:	46bd      	mov	sp, r7
    32e6:	b005      	add	sp, #20
    32e8:	bd90      	pop	{r4, r7, pc}
    32ea:	46c0      	nop			; (mov r8, r8)
    32ec:	20005b60 	.word	0x20005b60

000032f0 <par_update>:
    32f0:	b580      	push	{r7, lr}
    32f2:	b088      	sub	sp, #32
    32f4:	af00      	add	r7, sp, #0
    32f6:	6078      	str	r0, [r7, #4]
    32f8:	687b      	ldr	r3, [r7, #4]
    32fa:	1c5a      	adds	r2, r3, #1
    32fc:	607a      	str	r2, [r7, #4]
    32fe:	781b      	ldrb	r3, [r3, #0]
    3300:	617b      	str	r3, [r7, #20]
    3302:	687b      	ldr	r3, [r7, #4]
    3304:	1c5a      	adds	r2, r3, #1
    3306:	607a      	str	r2, [r7, #4]
    3308:	781b      	ldrb	r3, [r3, #0]
    330a:	613b      	str	r3, [r7, #16]
    330c:	687b      	ldr	r3, [r7, #4]
    330e:	1c5a      	adds	r2, r3, #1
    3310:	607a      	str	r2, [r7, #4]
    3312:	781b      	ldrb	r3, [r3, #0]
    3314:	60fb      	str	r3, [r7, #12]
    3316:	687b      	ldr	r3, [r7, #4]
    3318:	1c5a      	adds	r2, r3, #1
    331a:	607a      	str	r2, [r7, #4]
    331c:	781b      	ldrb	r3, [r3, #0]
    331e:	021b      	lsls	r3, r3, #8
    3320:	001a      	movs	r2, r3
    3322:	68fb      	ldr	r3, [r7, #12]
    3324:	189b      	adds	r3, r3, r2
    3326:	60fb      	str	r3, [r7, #12]
    3328:	68fb      	ldr	r3, [r7, #12]
    332a:	2201      	movs	r2, #1
    332c:	4013      	ands	r3, r2
    332e:	60bb      	str	r3, [r7, #8]
    3330:	697a      	ldr	r2, [r7, #20]
    3332:	693b      	ldr	r3, [r7, #16]
    3334:	18d3      	adds	r3, r2, r3
    3336:	2b14      	cmp	r3, #20
    3338:	d82c      	bhi.n	3394 <par_update+0xa4>
    333a:	68bb      	ldr	r3, [r7, #8]
    333c:	2b00      	cmp	r3, #0
    333e:	d126      	bne.n	338e <par_update+0x9e>
    3340:	697a      	ldr	r2, [r7, #20]
    3342:	4b16      	ldr	r3, [pc, #88]	; (339c <par_update+0xac>)
    3344:	18d3      	adds	r3, r2, r3
    3346:	61bb      	str	r3, [r7, #24]
    3348:	2300      	movs	r3, #0
    334a:	61fb      	str	r3, [r7, #28]
    334c:	e00a      	b.n	3364 <par_update+0x74>
    334e:	69bb      	ldr	r3, [r7, #24]
    3350:	1c5a      	adds	r2, r3, #1
    3352:	61ba      	str	r2, [r7, #24]
    3354:	687a      	ldr	r2, [r7, #4]
    3356:	1c51      	adds	r1, r2, #1
    3358:	6079      	str	r1, [r7, #4]
    335a:	7812      	ldrb	r2, [r2, #0]
    335c:	701a      	strb	r2, [r3, #0]
    335e:	69fb      	ldr	r3, [r7, #28]
    3360:	3301      	adds	r3, #1
    3362:	61fb      	str	r3, [r7, #28]
    3364:	69fa      	ldr	r2, [r7, #28]
    3366:	693b      	ldr	r3, [r7, #16]
    3368:	429a      	cmp	r2, r3
    336a:	d3f0      	bcc.n	334e <par_update+0x5e>
    336c:	4b0b      	ldr	r3, [pc, #44]	; (339c <par_update+0xac>)
    336e:	2110      	movs	r1, #16
    3370:	0018      	movs	r0, r3
    3372:	f7ff fe71 	bl	3058 <crc32>
    3376:	0002      	movs	r2, r0
    3378:	4b08      	ldr	r3, [pc, #32]	; (339c <par_update+0xac>)
    337a:	611a      	str	r2, [r3, #16]
    337c:	f7ff ff26 	bl	31cc <par_save>
    3380:	f7ff ff52 	bl	3228 <par_verify>
    3384:	1e03      	subs	r3, r0, #0
    3386:	d106      	bne.n	3396 <par_update+0xa6>
    3388:	f7ff fef4 	bl	3174 <par_default>
    338c:	e003      	b.n	3396 <par_update+0xa6>
    338e:	f7ff ff7b 	bl	3288 <par_read>
    3392:	e000      	b.n	3396 <par_update+0xa6>
    3394:	46c0      	nop			; (mov r8, r8)
    3396:	46bd      	mov	sp, r7
    3398:	b008      	add	sp, #32
    339a:	bd80      	pop	{r7, pc}
    339c:	20005b60 	.word	0x20005b60

000033a0 <par_mac>:
    33a0:	b580      	push	{r7, lr}
    33a2:	b084      	sub	sp, #16
    33a4:	af00      	add	r7, sp, #0
    33a6:	6078      	str	r0, [r7, #4]
    33a8:	4b0b      	ldr	r3, [pc, #44]	; (33d8 <par_mac+0x38>)
    33aa:	60fb      	str	r3, [r7, #12]
    33ac:	2300      	movs	r3, #0
    33ae:	60bb      	str	r3, [r7, #8]
    33b0:	e00a      	b.n	33c8 <par_mac+0x28>
    33b2:	687b      	ldr	r3, [r7, #4]
    33b4:	1c5a      	adds	r2, r3, #1
    33b6:	607a      	str	r2, [r7, #4]
    33b8:	68fa      	ldr	r2, [r7, #12]
    33ba:	1e51      	subs	r1, r2, #1
    33bc:	60f9      	str	r1, [r7, #12]
    33be:	7812      	ldrb	r2, [r2, #0]
    33c0:	701a      	strb	r2, [r3, #0]
    33c2:	68bb      	ldr	r3, [r7, #8]
    33c4:	3301      	adds	r3, #1
    33c6:	60bb      	str	r3, [r7, #8]
    33c8:	68bb      	ldr	r3, [r7, #8]
    33ca:	2b05      	cmp	r3, #5
    33cc:	ddf1      	ble.n	33b2 <par_mac+0x12>
    33ce:	46c0      	nop			; (mov r8, r8)
    33d0:	46bd      	mov	sp, r7
    33d2:	b004      	add	sp, #16
    33d4:	bd80      	pop	{r7, pc}
    33d6:	46c0      	nop			; (mov r8, r8)
    33d8:	20005b65 	.word	0x20005b65

000033dc <par_iploc>:
    33dc:	b580      	push	{r7, lr}
    33de:	b084      	sub	sp, #16
    33e0:	af00      	add	r7, sp, #0
    33e2:	6078      	str	r0, [r7, #4]
    33e4:	4b0b      	ldr	r3, [pc, #44]	; (3414 <par_iploc+0x38>)
    33e6:	60fb      	str	r3, [r7, #12]
    33e8:	2300      	movs	r3, #0
    33ea:	60bb      	str	r3, [r7, #8]
    33ec:	e00a      	b.n	3404 <par_iploc+0x28>
    33ee:	687b      	ldr	r3, [r7, #4]
    33f0:	1c5a      	adds	r2, r3, #1
    33f2:	607a      	str	r2, [r7, #4]
    33f4:	68fa      	ldr	r2, [r7, #12]
    33f6:	1e51      	subs	r1, r2, #1
    33f8:	60f9      	str	r1, [r7, #12]
    33fa:	7812      	ldrb	r2, [r2, #0]
    33fc:	701a      	strb	r2, [r3, #0]
    33fe:	68bb      	ldr	r3, [r7, #8]
    3400:	3301      	adds	r3, #1
    3402:	60bb      	str	r3, [r7, #8]
    3404:	68bb      	ldr	r3, [r7, #8]
    3406:	2b03      	cmp	r3, #3
    3408:	ddf1      	ble.n	33ee <par_iploc+0x12>
    340a:	46c0      	nop			; (mov r8, r8)
    340c:	46bd      	mov	sp, r7
    340e:	b004      	add	sp, #16
    3410:	bd80      	pop	{r7, pc}
    3412:	46c0      	nop			; (mov r8, r8)
    3414:	20005b69 	.word	0x20005b69

00003418 <par_iprem>:
    3418:	b580      	push	{r7, lr}
    341a:	b084      	sub	sp, #16
    341c:	af00      	add	r7, sp, #0
    341e:	6078      	str	r0, [r7, #4]
    3420:	4b0b      	ldr	r3, [pc, #44]	; (3450 <par_iprem+0x38>)
    3422:	60fb      	str	r3, [r7, #12]
    3424:	2300      	movs	r3, #0
    3426:	60bb      	str	r3, [r7, #8]
    3428:	e00a      	b.n	3440 <par_iprem+0x28>
    342a:	687b      	ldr	r3, [r7, #4]
    342c:	1c5a      	adds	r2, r3, #1
    342e:	607a      	str	r2, [r7, #4]
    3430:	68fa      	ldr	r2, [r7, #12]
    3432:	1e51      	subs	r1, r2, #1
    3434:	60f9      	str	r1, [r7, #12]
    3436:	7812      	ldrb	r2, [r2, #0]
    3438:	701a      	strb	r2, [r3, #0]
    343a:	68bb      	ldr	r3, [r7, #8]
    343c:	3301      	adds	r3, #1
    343e:	60bb      	str	r3, [r7, #8]
    3440:	68bb      	ldr	r3, [r7, #8]
    3442:	2b03      	cmp	r3, #3
    3444:	ddf1      	ble.n	342a <par_iprem+0x12>
    3446:	46c0      	nop			; (mov r8, r8)
    3448:	46bd      	mov	sp, r7
    344a:	b004      	add	sp, #16
    344c:	bd80      	pop	{r7, pc}
    344e:	46c0      	nop			; (mov r8, r8)
    3450:	20005b6d 	.word	0x20005b6d

00003454 <mdb_fifo_read>:
    3454:	b580      	push	{r7, lr}
    3456:	b086      	sub	sp, #24
    3458:	af00      	add	r7, sp, #0
    345a:	6078      	str	r0, [r7, #4]
    345c:	6039      	str	r1, [r7, #0]
    345e:	4b1f      	ldr	r3, [pc, #124]	; (34dc <mdb_fifo_read+0x88>)
    3460:	681a      	ldr	r2, [r3, #0]
    3462:	2301      	movs	r3, #1
    3464:	425b      	negs	r3, r3
    3466:	0019      	movs	r1, r3
    3468:	0010      	movs	r0, r2
    346a:	f003 f945 	bl	66f8 <osMutexWait>
    346e:	4b1c      	ldr	r3, [pc, #112]	; (34e0 <mdb_fifo_read+0x8c>)
    3470:	681a      	ldr	r2, [r3, #0]
    3472:	4b1c      	ldr	r3, [pc, #112]	; (34e4 <mdb_fifo_read+0x90>)
    3474:	681b      	ldr	r3, [r3, #0]
    3476:	1ad3      	subs	r3, r2, r3
    3478:	05db      	lsls	r3, r3, #23
    347a:	0ddb      	lsrs	r3, r3, #23
    347c:	613b      	str	r3, [r7, #16]
    347e:	693b      	ldr	r3, [r7, #16]
    3480:	2280      	movs	r2, #128	; 0x80
    3482:	0092      	lsls	r2, r2, #2
    3484:	1ad3      	subs	r3, r2, r3
    3486:	60fb      	str	r3, [r7, #12]
    3488:	683a      	ldr	r2, [r7, #0]
    348a:	693b      	ldr	r3, [r7, #16]
    348c:	429a      	cmp	r2, r3
    348e:	d819      	bhi.n	34c4 <mdb_fifo_read+0x70>
    3490:	2300      	movs	r3, #0
    3492:	617b      	str	r3, [r7, #20]
    3494:	e011      	b.n	34ba <mdb_fifo_read+0x66>
    3496:	687b      	ldr	r3, [r7, #4]
    3498:	1c5a      	adds	r2, r3, #1
    349a:	607a      	str	r2, [r7, #4]
    349c:	4a11      	ldr	r2, [pc, #68]	; (34e4 <mdb_fifo_read+0x90>)
    349e:	6812      	ldr	r2, [r2, #0]
    34a0:	4911      	ldr	r1, [pc, #68]	; (34e8 <mdb_fifo_read+0x94>)
    34a2:	5c8a      	ldrb	r2, [r1, r2]
    34a4:	701a      	strb	r2, [r3, #0]
    34a6:	4b0f      	ldr	r3, [pc, #60]	; (34e4 <mdb_fifo_read+0x90>)
    34a8:	681b      	ldr	r3, [r3, #0]
    34aa:	3301      	adds	r3, #1
    34ac:	05db      	lsls	r3, r3, #23
    34ae:	0dda      	lsrs	r2, r3, #23
    34b0:	4b0c      	ldr	r3, [pc, #48]	; (34e4 <mdb_fifo_read+0x90>)
    34b2:	601a      	str	r2, [r3, #0]
    34b4:	697b      	ldr	r3, [r7, #20]
    34b6:	3301      	adds	r3, #1
    34b8:	617b      	str	r3, [r7, #20]
    34ba:	697a      	ldr	r2, [r7, #20]
    34bc:	683b      	ldr	r3, [r7, #0]
    34be:	429a      	cmp	r2, r3
    34c0:	dbe9      	blt.n	3496 <mdb_fifo_read+0x42>
    34c2:	e001      	b.n	34c8 <mdb_fifo_read+0x74>
    34c4:	2300      	movs	r3, #0
    34c6:	603b      	str	r3, [r7, #0]
    34c8:	4b04      	ldr	r3, [pc, #16]	; (34dc <mdb_fifo_read+0x88>)
    34ca:	681b      	ldr	r3, [r3, #0]
    34cc:	0018      	movs	r0, r3
    34ce:	f003 f923 	bl	6718 <osMutexRelease>
    34d2:	683b      	ldr	r3, [r7, #0]
    34d4:	0018      	movs	r0, r3
    34d6:	46bd      	mov	sp, r7
    34d8:	b006      	add	sp, #24
    34da:	bd80      	pop	{r7, pc}
    34dc:	20000888 	.word	0x20000888
    34e0:	20005d74 	.word	0x20005d74
    34e4:	20005d78 	.word	0x20005d78
    34e8:	20005b74 	.word	0x20005b74

000034ec <mdb_fifo_write>:
    34ec:	b580      	push	{r7, lr}
    34ee:	b086      	sub	sp, #24
    34f0:	af00      	add	r7, sp, #0
    34f2:	6078      	str	r0, [r7, #4]
    34f4:	6039      	str	r1, [r7, #0]
    34f6:	4b1c      	ldr	r3, [pc, #112]	; (3568 <mdb_fifo_write+0x7c>)
    34f8:	681a      	ldr	r2, [r3, #0]
    34fa:	2301      	movs	r3, #1
    34fc:	425b      	negs	r3, r3
    34fe:	0019      	movs	r1, r3
    3500:	0010      	movs	r0, r2
    3502:	f003 f8f9 	bl	66f8 <osMutexWait>
    3506:	4b19      	ldr	r3, [pc, #100]	; (356c <mdb_fifo_write+0x80>)
    3508:	681a      	ldr	r2, [r3, #0]
    350a:	4b19      	ldr	r3, [pc, #100]	; (3570 <mdb_fifo_write+0x84>)
    350c:	681b      	ldr	r3, [r3, #0]
    350e:	1ad3      	subs	r3, r2, r3
    3510:	05db      	lsls	r3, r3, #23
    3512:	0ddb      	lsrs	r3, r3, #23
    3514:	613b      	str	r3, [r7, #16]
    3516:	693b      	ldr	r3, [r7, #16]
    3518:	2280      	movs	r2, #128	; 0x80
    351a:	0092      	lsls	r2, r2, #2
    351c:	1ad3      	subs	r3, r2, r3
    351e:	60fb      	str	r3, [r7, #12]
    3520:	2300      	movs	r3, #0
    3522:	617b      	str	r3, [r7, #20]
    3524:	e011      	b.n	354a <mdb_fifo_write+0x5e>
    3526:	4b11      	ldr	r3, [pc, #68]	; (356c <mdb_fifo_write+0x80>)
    3528:	681a      	ldr	r2, [r3, #0]
    352a:	687b      	ldr	r3, [r7, #4]
    352c:	1c59      	adds	r1, r3, #1
    352e:	6079      	str	r1, [r7, #4]
    3530:	7819      	ldrb	r1, [r3, #0]
    3532:	4b10      	ldr	r3, [pc, #64]	; (3574 <mdb_fifo_write+0x88>)
    3534:	5499      	strb	r1, [r3, r2]
    3536:	4b0d      	ldr	r3, [pc, #52]	; (356c <mdb_fifo_write+0x80>)
    3538:	681b      	ldr	r3, [r3, #0]
    353a:	3301      	adds	r3, #1
    353c:	05db      	lsls	r3, r3, #23
    353e:	0dda      	lsrs	r2, r3, #23
    3540:	4b0a      	ldr	r3, [pc, #40]	; (356c <mdb_fifo_write+0x80>)
    3542:	601a      	str	r2, [r3, #0]
    3544:	697b      	ldr	r3, [r7, #20]
    3546:	3301      	adds	r3, #1
    3548:	617b      	str	r3, [r7, #20]
    354a:	697a      	ldr	r2, [r7, #20]
    354c:	683b      	ldr	r3, [r7, #0]
    354e:	429a      	cmp	r2, r3
    3550:	dbe9      	blt.n	3526 <mdb_fifo_write+0x3a>
    3552:	4b05      	ldr	r3, [pc, #20]	; (3568 <mdb_fifo_write+0x7c>)
    3554:	681b      	ldr	r3, [r3, #0]
    3556:	0018      	movs	r0, r3
    3558:	f003 f8de 	bl	6718 <osMutexRelease>
    355c:	683b      	ldr	r3, [r7, #0]
    355e:	0018      	movs	r0, r3
    3560:	46bd      	mov	sp, r7
    3562:	b006      	add	sp, #24
    3564:	bd80      	pop	{r7, pc}
    3566:	46c0      	nop			; (mov r8, r8)
    3568:	20000888 	.word	0x20000888
    356c:	20005d74 	.word	0x20005d74
    3570:	20005d78 	.word	0x20005d78
    3574:	20005b74 	.word	0x20005b74

00003578 <mdb_get_testparam>:
    3578:	b5b0      	push	{r4, r5, r7, lr}
    357a:	b086      	sub	sp, #24
    357c:	af00      	add	r7, sp, #0
    357e:	6078      	str	r0, [r7, #4]
    3580:	4b84      	ldr	r3, [pc, #528]	; (3794 <mdb_get_testparam+0x21c>)
    3582:	885b      	ldrh	r3, [r3, #2]
    3584:	041b      	lsls	r3, r3, #16
    3586:	4a83      	ldr	r2, [pc, #524]	; (3794 <mdb_get_testparam+0x21c>)
    3588:	8892      	ldrh	r2, [r2, #4]
    358a:	4313      	orrs	r3, r2
    358c:	001a      	movs	r2, r3
    358e:	687b      	ldr	r3, [r7, #4]
    3590:	21ff      	movs	r1, #255	; 0xff
    3592:	4011      	ands	r1, r2
    3594:	000c      	movs	r4, r1
    3596:	7819      	ldrb	r1, [r3, #0]
    3598:	2000      	movs	r0, #0
    359a:	4001      	ands	r1, r0
    359c:	1c08      	adds	r0, r1, #0
    359e:	1c21      	adds	r1, r4, #0
    35a0:	4301      	orrs	r1, r0
    35a2:	7019      	strb	r1, [r3, #0]
    35a4:	0a11      	lsrs	r1, r2, #8
    35a6:	20ff      	movs	r0, #255	; 0xff
    35a8:	4001      	ands	r1, r0
    35aa:	000c      	movs	r4, r1
    35ac:	7859      	ldrb	r1, [r3, #1]
    35ae:	2000      	movs	r0, #0
    35b0:	4001      	ands	r1, r0
    35b2:	1c08      	adds	r0, r1, #0
    35b4:	1c21      	adds	r1, r4, #0
    35b6:	4301      	orrs	r1, r0
    35b8:	7059      	strb	r1, [r3, #1]
    35ba:	0c11      	lsrs	r1, r2, #16
    35bc:	20ff      	movs	r0, #255	; 0xff
    35be:	4001      	ands	r1, r0
    35c0:	000c      	movs	r4, r1
    35c2:	7899      	ldrb	r1, [r3, #2]
    35c4:	2000      	movs	r0, #0
    35c6:	4001      	ands	r1, r0
    35c8:	1c08      	adds	r0, r1, #0
    35ca:	1c21      	adds	r1, r4, #0
    35cc:	4301      	orrs	r1, r0
    35ce:	7099      	strb	r1, [r3, #2]
    35d0:	0e10      	lsrs	r0, r2, #24
    35d2:	78da      	ldrb	r2, [r3, #3]
    35d4:	2100      	movs	r1, #0
    35d6:	400a      	ands	r2, r1
    35d8:	1c11      	adds	r1, r2, #0
    35da:	1c02      	adds	r2, r0, #0
    35dc:	430a      	orrs	r2, r1
    35de:	70da      	strb	r2, [r3, #3]
    35e0:	4b6c      	ldr	r3, [pc, #432]	; (3794 <mdb_get_testparam+0x21c>)
    35e2:	88db      	ldrh	r3, [r3, #6]
    35e4:	041b      	lsls	r3, r3, #16
    35e6:	4a6b      	ldr	r2, [pc, #428]	; (3794 <mdb_get_testparam+0x21c>)
    35e8:	8912      	ldrh	r2, [r2, #8]
    35ea:	4313      	orrs	r3, r2
    35ec:	001a      	movs	r2, r3
    35ee:	687b      	ldr	r3, [r7, #4]
    35f0:	21ff      	movs	r1, #255	; 0xff
    35f2:	4011      	ands	r1, r2
    35f4:	000c      	movs	r4, r1
    35f6:	7919      	ldrb	r1, [r3, #4]
    35f8:	2000      	movs	r0, #0
    35fa:	4001      	ands	r1, r0
    35fc:	1c08      	adds	r0, r1, #0
    35fe:	1c21      	adds	r1, r4, #0
    3600:	4301      	orrs	r1, r0
    3602:	7119      	strb	r1, [r3, #4]
    3604:	0a11      	lsrs	r1, r2, #8
    3606:	20ff      	movs	r0, #255	; 0xff
    3608:	4001      	ands	r1, r0
    360a:	000c      	movs	r4, r1
    360c:	7959      	ldrb	r1, [r3, #5]
    360e:	2000      	movs	r0, #0
    3610:	4001      	ands	r1, r0
    3612:	1c08      	adds	r0, r1, #0
    3614:	1c21      	adds	r1, r4, #0
    3616:	4301      	orrs	r1, r0
    3618:	7159      	strb	r1, [r3, #5]
    361a:	0c11      	lsrs	r1, r2, #16
    361c:	20ff      	movs	r0, #255	; 0xff
    361e:	4001      	ands	r1, r0
    3620:	000c      	movs	r4, r1
    3622:	7999      	ldrb	r1, [r3, #6]
    3624:	2000      	movs	r0, #0
    3626:	4001      	ands	r1, r0
    3628:	1c08      	adds	r0, r1, #0
    362a:	1c21      	adds	r1, r4, #0
    362c:	4301      	orrs	r1, r0
    362e:	7199      	strb	r1, [r3, #6]
    3630:	0e10      	lsrs	r0, r2, #24
    3632:	79da      	ldrb	r2, [r3, #7]
    3634:	2100      	movs	r1, #0
    3636:	400a      	ands	r2, r1
    3638:	1c11      	adds	r1, r2, #0
    363a:	1c02      	adds	r2, r0, #0
    363c:	430a      	orrs	r2, r1
    363e:	71da      	strb	r2, [r3, #7]
    3640:	4b54      	ldr	r3, [pc, #336]	; (3794 <mdb_get_testparam+0x21c>)
    3642:	895b      	ldrh	r3, [r3, #10]
    3644:	041b      	lsls	r3, r3, #16
    3646:	4a53      	ldr	r2, [pc, #332]	; (3794 <mdb_get_testparam+0x21c>)
    3648:	8992      	ldrh	r2, [r2, #12]
    364a:	4313      	orrs	r3, r2
    364c:	001a      	movs	r2, r3
    364e:	687b      	ldr	r3, [r7, #4]
    3650:	21ff      	movs	r1, #255	; 0xff
    3652:	4011      	ands	r1, r2
    3654:	000c      	movs	r4, r1
    3656:	7a19      	ldrb	r1, [r3, #8]
    3658:	2000      	movs	r0, #0
    365a:	4001      	ands	r1, r0
    365c:	1c08      	adds	r0, r1, #0
    365e:	1c21      	adds	r1, r4, #0
    3660:	4301      	orrs	r1, r0
    3662:	7219      	strb	r1, [r3, #8]
    3664:	0a11      	lsrs	r1, r2, #8
    3666:	20ff      	movs	r0, #255	; 0xff
    3668:	4001      	ands	r1, r0
    366a:	000c      	movs	r4, r1
    366c:	7a59      	ldrb	r1, [r3, #9]
    366e:	2000      	movs	r0, #0
    3670:	4001      	ands	r1, r0
    3672:	1c08      	adds	r0, r1, #0
    3674:	1c21      	adds	r1, r4, #0
    3676:	4301      	orrs	r1, r0
    3678:	7259      	strb	r1, [r3, #9]
    367a:	0c11      	lsrs	r1, r2, #16
    367c:	20ff      	movs	r0, #255	; 0xff
    367e:	4001      	ands	r1, r0
    3680:	000c      	movs	r4, r1
    3682:	7a99      	ldrb	r1, [r3, #10]
    3684:	2000      	movs	r0, #0
    3686:	4001      	ands	r1, r0
    3688:	1c08      	adds	r0, r1, #0
    368a:	1c21      	adds	r1, r4, #0
    368c:	4301      	orrs	r1, r0
    368e:	7299      	strb	r1, [r3, #10]
    3690:	0e10      	lsrs	r0, r2, #24
    3692:	7ada      	ldrb	r2, [r3, #11]
    3694:	2100      	movs	r1, #0
    3696:	400a      	ands	r2, r1
    3698:	1c11      	adds	r1, r2, #0
    369a:	1c02      	adds	r2, r0, #0
    369c:	430a      	orrs	r2, r1
    369e:	72da      	strb	r2, [r3, #11]
    36a0:	4b3c      	ldr	r3, [pc, #240]	; (3794 <mdb_get_testparam+0x21c>)
    36a2:	89db      	ldrh	r3, [r3, #14]
    36a4:	041b      	lsls	r3, r3, #16
    36a6:	4a3b      	ldr	r2, [pc, #236]	; (3794 <mdb_get_testparam+0x21c>)
    36a8:	8a12      	ldrh	r2, [r2, #16]
    36aa:	4313      	orrs	r3, r2
    36ac:	001a      	movs	r2, r3
    36ae:	687b      	ldr	r3, [r7, #4]
    36b0:	21ff      	movs	r1, #255	; 0xff
    36b2:	4011      	ands	r1, r2
    36b4:	000c      	movs	r4, r1
    36b6:	7b19      	ldrb	r1, [r3, #12]
    36b8:	2000      	movs	r0, #0
    36ba:	4001      	ands	r1, r0
    36bc:	1c08      	adds	r0, r1, #0
    36be:	1c21      	adds	r1, r4, #0
    36c0:	4301      	orrs	r1, r0
    36c2:	7319      	strb	r1, [r3, #12]
    36c4:	0a11      	lsrs	r1, r2, #8
    36c6:	20ff      	movs	r0, #255	; 0xff
    36c8:	4001      	ands	r1, r0
    36ca:	000c      	movs	r4, r1
    36cc:	7b59      	ldrb	r1, [r3, #13]
    36ce:	2000      	movs	r0, #0
    36d0:	4001      	ands	r1, r0
    36d2:	1c08      	adds	r0, r1, #0
    36d4:	1c21      	adds	r1, r4, #0
    36d6:	4301      	orrs	r1, r0
    36d8:	7359      	strb	r1, [r3, #13]
    36da:	0c11      	lsrs	r1, r2, #16
    36dc:	20ff      	movs	r0, #255	; 0xff
    36de:	4001      	ands	r1, r0
    36e0:	000c      	movs	r4, r1
    36e2:	7b99      	ldrb	r1, [r3, #14]
    36e4:	2000      	movs	r0, #0
    36e6:	4001      	ands	r1, r0
    36e8:	1c08      	adds	r0, r1, #0
    36ea:	1c21      	adds	r1, r4, #0
    36ec:	4301      	orrs	r1, r0
    36ee:	7399      	strb	r1, [r3, #14]
    36f0:	0e10      	lsrs	r0, r2, #24
    36f2:	7bda      	ldrb	r2, [r3, #15]
    36f4:	2100      	movs	r1, #0
    36f6:	400a      	ands	r2, r1
    36f8:	1c11      	adds	r1, r2, #0
    36fa:	1c02      	adds	r2, r0, #0
    36fc:	430a      	orrs	r2, r1
    36fe:	73da      	strb	r2, [r3, #15]
    3700:	4b25      	ldr	r3, [pc, #148]	; (3798 <mdb_get_testparam+0x220>)
    3702:	613b      	str	r3, [r7, #16]
    3704:	4b25      	ldr	r3, [pc, #148]	; (379c <mdb_get_testparam+0x224>)
    3706:	60fb      	str	r3, [r7, #12]
    3708:	2300      	movs	r3, #0
    370a:	617b      	str	r3, [r7, #20]
    370c:	e03a      	b.n	3784 <mdb_get_testparam+0x20c>
    370e:	693b      	ldr	r3, [r7, #16]
    3710:	1c9a      	adds	r2, r3, #2
    3712:	613a      	str	r2, [r7, #16]
    3714:	8819      	ldrh	r1, [r3, #0]
    3716:	687a      	ldr	r2, [r7, #4]
    3718:	697b      	ldr	r3, [r7, #20]
    371a:	3308      	adds	r3, #8
    371c:	005b      	lsls	r3, r3, #1
    371e:	20ff      	movs	r0, #255	; 0xff
    3720:	4008      	ands	r0, r1
    3722:	0005      	movs	r5, r0
    3724:	5c98      	ldrb	r0, [r3, r2]
    3726:	2400      	movs	r4, #0
    3728:	4020      	ands	r0, r4
    372a:	1c04      	adds	r4, r0, #0
    372c:	1c28      	adds	r0, r5, #0
    372e:	4320      	orrs	r0, r4
    3730:	5498      	strb	r0, [r3, r2]
    3732:	0a09      	lsrs	r1, r1, #8
    3734:	b288      	uxth	r0, r1
    3736:	18d3      	adds	r3, r2, r3
    3738:	785a      	ldrb	r2, [r3, #1]
    373a:	2100      	movs	r1, #0
    373c:	400a      	ands	r2, r1
    373e:	1c11      	adds	r1, r2, #0
    3740:	1c02      	adds	r2, r0, #0
    3742:	430a      	orrs	r2, r1
    3744:	705a      	strb	r2, [r3, #1]
    3746:	68fb      	ldr	r3, [r7, #12]
    3748:	1c9a      	adds	r2, r3, #2
    374a:	60fa      	str	r2, [r7, #12]
    374c:	881a      	ldrh	r2, [r3, #0]
    374e:	6879      	ldr	r1, [r7, #4]
    3750:	697b      	ldr	r3, [r7, #20]
    3752:	330c      	adds	r3, #12
    3754:	005b      	lsls	r3, r3, #1
    3756:	18cb      	adds	r3, r1, r3
    3758:	21ff      	movs	r1, #255	; 0xff
    375a:	4011      	ands	r1, r2
    375c:	000c      	movs	r4, r1
    375e:	7899      	ldrb	r1, [r3, #2]
    3760:	2000      	movs	r0, #0
    3762:	4001      	ands	r1, r0
    3764:	1c08      	adds	r0, r1, #0
    3766:	1c21      	adds	r1, r4, #0
    3768:	4301      	orrs	r1, r0
    376a:	7099      	strb	r1, [r3, #2]
    376c:	0a12      	lsrs	r2, r2, #8
    376e:	b290      	uxth	r0, r2
    3770:	78da      	ldrb	r2, [r3, #3]
    3772:	2100      	movs	r1, #0
    3774:	400a      	ands	r2, r1
    3776:	1c11      	adds	r1, r2, #0
    3778:	1c02      	adds	r2, r0, #0
    377a:	430a      	orrs	r2, r1
    377c:	70da      	strb	r2, [r3, #3]
    377e:	697b      	ldr	r3, [r7, #20]
    3780:	3301      	adds	r3, #1
    3782:	617b      	str	r3, [r7, #20]
    3784:	697b      	ldr	r3, [r7, #20]
    3786:	2b04      	cmp	r3, #4
    3788:	ddc1      	ble.n	370e <mdb_get_testparam+0x196>
    378a:	46c0      	nop			; (mov r8, r8)
    378c:	46bd      	mov	sp, r7
    378e:	b006      	add	sp, #24
    3790:	bdb0      	pop	{r4, r5, r7, pc}
    3792:	46c0      	nop			; (mov r8, r8)
    3794:	20005d7c 	.word	0x20005d7c
    3798:	20005d8e 	.word	0x20005d8e
    379c:	20005d98 	.word	0x20005d98

000037a0 <mdb_get_holding_register>:
    37a0:	b580      	push	{r7, lr}
    37a2:	b084      	sub	sp, #16
    37a4:	af00      	add	r7, sp, #0
    37a6:	6078      	str	r0, [r7, #4]
    37a8:	687b      	ldr	r3, [r7, #4]
    37aa:	2b00      	cmp	r3, #0
    37ac:	db02      	blt.n	37b4 <mdb_get_holding_register+0x14>
    37ae:	687b      	ldr	r3, [r7, #4]
    37b0:	2b17      	cmp	r3, #23
    37b2:	dd01      	ble.n	37b8 <mdb_get_holding_register+0x18>
    37b4:	2300      	movs	r3, #0
    37b6:	e009      	b.n	37cc <mdb_get_holding_register+0x2c>
    37b8:	230e      	movs	r3, #14
    37ba:	18fb      	adds	r3, r7, r3
    37bc:	4a05      	ldr	r2, [pc, #20]	; (37d4 <mdb_get_holding_register+0x34>)
    37be:	6879      	ldr	r1, [r7, #4]
    37c0:	0049      	lsls	r1, r1, #1
    37c2:	5a8a      	ldrh	r2, [r1, r2]
    37c4:	801a      	strh	r2, [r3, #0]
    37c6:	230e      	movs	r3, #14
    37c8:	18fb      	adds	r3, r7, r3
    37ca:	881b      	ldrh	r3, [r3, #0]
    37cc:	0018      	movs	r0, r3
    37ce:	46bd      	mov	sp, r7
    37d0:	b004      	add	sp, #16
    37d2:	bd80      	pop	{r7, pc}
    37d4:	20005d7c 	.word	0x20005d7c

000037d8 <pdu_report_server_id>:
    37d8:	b580      	push	{r7, lr}
    37da:	b086      	sub	sp, #24
    37dc:	af00      	add	r7, sp, #0
    37de:	6078      	str	r0, [r7, #4]
    37e0:	2311      	movs	r3, #17
    37e2:	60fb      	str	r3, [r7, #12]
    37e4:	4b1f      	ldr	r3, [pc, #124]	; (3864 <pdu_report_server_id+0x8c>)
    37e6:	681a      	ldr	r2, [r3, #0]
    37e8:	687b      	ldr	r3, [r7, #4]
    37ea:	18d2      	adds	r2, r2, r3
    37ec:	230b      	movs	r3, #11
    37ee:	18fb      	adds	r3, r7, r3
    37f0:	7812      	ldrb	r2, [r2, #0]
    37f2:	701a      	strb	r2, [r3, #0]
    37f4:	687b      	ldr	r3, [r7, #4]
    37f6:	617b      	str	r3, [r7, #20]
    37f8:	697b      	ldr	r3, [r7, #20]
    37fa:	1c5a      	adds	r2, r3, #1
    37fc:	617a      	str	r2, [r7, #20]
    37fe:	4a1a      	ldr	r2, [pc, #104]	; (3868 <pdu_report_server_id+0x90>)
    3800:	210b      	movs	r1, #11
    3802:	1879      	adds	r1, r7, r1
    3804:	7809      	ldrb	r1, [r1, #0]
    3806:	54d1      	strb	r1, [r2, r3]
    3808:	697b      	ldr	r3, [r7, #20]
    380a:	1c5a      	adds	r2, r3, #1
    380c:	617a      	str	r2, [r7, #20]
    380e:	68fa      	ldr	r2, [r7, #12]
    3810:	b2d2      	uxtb	r2, r2
    3812:	3202      	adds	r2, #2
    3814:	b2d1      	uxtb	r1, r2
    3816:	4a14      	ldr	r2, [pc, #80]	; (3868 <pdu_report_server_id+0x90>)
    3818:	54d1      	strb	r1, [r2, r3]
    381a:	697b      	ldr	r3, [r7, #20]
    381c:	1c5a      	adds	r2, r3, #1
    381e:	617a      	str	r2, [r7, #20]
    3820:	4a11      	ldr	r2, [pc, #68]	; (3868 <pdu_report_server_id+0x90>)
    3822:	2111      	movs	r1, #17
    3824:	54d1      	strb	r1, [r2, r3]
    3826:	697b      	ldr	r3, [r7, #20]
    3828:	1c5a      	adds	r2, r3, #1
    382a:	617a      	str	r2, [r7, #20]
    382c:	4a0e      	ldr	r2, [pc, #56]	; (3868 <pdu_report_server_id+0x90>)
    382e:	21ff      	movs	r1, #255	; 0xff
    3830:	54d1      	strb	r1, [r2, r3]
    3832:	2300      	movs	r3, #0
    3834:	613b      	str	r3, [r7, #16]
    3836:	e00b      	b.n	3850 <pdu_report_server_id+0x78>
    3838:	697b      	ldr	r3, [r7, #20]
    383a:	1c5a      	adds	r2, r3, #1
    383c:	617a      	str	r2, [r7, #20]
    383e:	490b      	ldr	r1, [pc, #44]	; (386c <pdu_report_server_id+0x94>)
    3840:	693a      	ldr	r2, [r7, #16]
    3842:	188a      	adds	r2, r1, r2
    3844:	7811      	ldrb	r1, [r2, #0]
    3846:	4a08      	ldr	r2, [pc, #32]	; (3868 <pdu_report_server_id+0x90>)
    3848:	54d1      	strb	r1, [r2, r3]
    384a:	693b      	ldr	r3, [r7, #16]
    384c:	3301      	adds	r3, #1
    384e:	613b      	str	r3, [r7, #16]
    3850:	693a      	ldr	r2, [r7, #16]
    3852:	68fb      	ldr	r3, [r7, #12]
    3854:	429a      	cmp	r2, r3
    3856:	dbef      	blt.n	3838 <pdu_report_server_id+0x60>
    3858:	697b      	ldr	r3, [r7, #20]
    385a:	0018      	movs	r0, r3
    385c:	46bd      	mov	sp, r7
    385e:	b006      	add	sp, #24
    3860:	bd80      	pop	{r7, pc}
    3862:	46c0      	nop			; (mov r8, r8)
    3864:	20005db8 	.word	0x20005db8
    3868:	20005dbc 	.word	0x20005dbc
    386c:	00008f60 	.word	0x00008f60

00003870 <pdu_read_input_registers>:
    3870:	b580      	push	{r7, lr}
    3872:	b086      	sub	sp, #24
    3874:	af00      	add	r7, sp, #0
    3876:	6078      	str	r0, [r7, #4]
    3878:	4b4e      	ldr	r3, [pc, #312]	; (39b4 <pdu_read_input_registers+0x144>)
    387a:	681a      	ldr	r2, [r3, #0]
    387c:	687b      	ldr	r3, [r7, #4]
    387e:	18d2      	adds	r2, r2, r3
    3880:	230f      	movs	r3, #15
    3882:	18fb      	adds	r3, r7, r3
    3884:	7812      	ldrb	r2, [r2, #0]
    3886:	701a      	strb	r2, [r3, #0]
    3888:	4b4a      	ldr	r3, [pc, #296]	; (39b4 <pdu_read_input_registers+0x144>)
    388a:	681a      	ldr	r2, [r3, #0]
    388c:	687b      	ldr	r3, [r7, #4]
    388e:	3301      	adds	r3, #1
    3890:	18d3      	adds	r3, r2, r3
    3892:	781b      	ldrb	r3, [r3, #0]
    3894:	021b      	lsls	r3, r3, #8
    3896:	b21a      	sxth	r2, r3
    3898:	4b46      	ldr	r3, [pc, #280]	; (39b4 <pdu_read_input_registers+0x144>)
    389a:	6819      	ldr	r1, [r3, #0]
    389c:	687b      	ldr	r3, [r7, #4]
    389e:	3302      	adds	r3, #2
    38a0:	18cb      	adds	r3, r1, r3
    38a2:	781b      	ldrb	r3, [r3, #0]
    38a4:	b21b      	sxth	r3, r3
    38a6:	4313      	orrs	r3, r2
    38a8:	b21a      	sxth	r2, r3
    38aa:	230c      	movs	r3, #12
    38ac:	18fb      	adds	r3, r7, r3
    38ae:	801a      	strh	r2, [r3, #0]
    38b0:	4b40      	ldr	r3, [pc, #256]	; (39b4 <pdu_read_input_registers+0x144>)
    38b2:	681a      	ldr	r2, [r3, #0]
    38b4:	687b      	ldr	r3, [r7, #4]
    38b6:	3303      	adds	r3, #3
    38b8:	18d3      	adds	r3, r2, r3
    38ba:	781b      	ldrb	r3, [r3, #0]
    38bc:	021b      	lsls	r3, r3, #8
    38be:	b21a      	sxth	r2, r3
    38c0:	4b3c      	ldr	r3, [pc, #240]	; (39b4 <pdu_read_input_registers+0x144>)
    38c2:	6819      	ldr	r1, [r3, #0]
    38c4:	687b      	ldr	r3, [r7, #4]
    38c6:	3304      	adds	r3, #4
    38c8:	18cb      	adds	r3, r1, r3
    38ca:	781b      	ldrb	r3, [r3, #0]
    38cc:	b21b      	sxth	r3, r3
    38ce:	4313      	orrs	r3, r2
    38d0:	b21a      	sxth	r2, r3
    38d2:	230a      	movs	r3, #10
    38d4:	18fb      	adds	r3, r7, r3
    38d6:	801a      	strh	r2, [r3, #0]
    38d8:	230c      	movs	r3, #12
    38da:	18fb      	adds	r3, r7, r3
    38dc:	881b      	ldrh	r3, [r3, #0]
    38de:	2bff      	cmp	r3, #255	; 0xff
    38e0:	d90a      	bls.n	38f8 <pdu_read_input_registers+0x88>
    38e2:	230c      	movs	r3, #12
    38e4:	18fb      	adds	r3, r7, r3
    38e6:	881a      	ldrh	r2, [r3, #0]
    38e8:	230a      	movs	r3, #10
    38ea:	18fb      	adds	r3, r7, r3
    38ec:	881b      	ldrh	r3, [r3, #0]
    38ee:	18d2      	adds	r2, r2, r3
    38f0:	2304      	movs	r3, #4
    38f2:	33ff      	adds	r3, #255	; 0xff
    38f4:	429a      	cmp	r2, r3
    38f6:	dd15      	ble.n	3924 <pdu_read_input_registers+0xb4>
    38f8:	687b      	ldr	r3, [r7, #4]
    38fa:	613b      	str	r3, [r7, #16]
    38fc:	693b      	ldr	r3, [r7, #16]
    38fe:	1c5a      	adds	r2, r3, #1
    3900:	613a      	str	r2, [r7, #16]
    3902:	220f      	movs	r2, #15
    3904:	18ba      	adds	r2, r7, r2
    3906:	7812      	ldrb	r2, [r2, #0]
    3908:	2180      	movs	r1, #128	; 0x80
    390a:	4249      	negs	r1, r1
    390c:	430a      	orrs	r2, r1
    390e:	b2d1      	uxtb	r1, r2
    3910:	4a29      	ldr	r2, [pc, #164]	; (39b8 <pdu_read_input_registers+0x148>)
    3912:	54d1      	strb	r1, [r2, r3]
    3914:	693b      	ldr	r3, [r7, #16]
    3916:	1c5a      	adds	r2, r3, #1
    3918:	613a      	str	r2, [r7, #16]
    391a:	4a27      	ldr	r2, [pc, #156]	; (39b8 <pdu_read_input_registers+0x148>)
    391c:	2102      	movs	r1, #2
    391e:	54d1      	strb	r1, [r2, r3]
    3920:	693b      	ldr	r3, [r7, #16]
    3922:	e042      	b.n	39aa <pdu_read_input_registers+0x13a>
    3924:	687b      	ldr	r3, [r7, #4]
    3926:	613b      	str	r3, [r7, #16]
    3928:	693b      	ldr	r3, [r7, #16]
    392a:	1c5a      	adds	r2, r3, #1
    392c:	613a      	str	r2, [r7, #16]
    392e:	4a22      	ldr	r2, [pc, #136]	; (39b8 <pdu_read_input_registers+0x148>)
    3930:	210f      	movs	r1, #15
    3932:	1879      	adds	r1, r7, r1
    3934:	7809      	ldrb	r1, [r1, #0]
    3936:	54d1      	strb	r1, [r2, r3]
    3938:	693b      	ldr	r3, [r7, #16]
    393a:	1c5a      	adds	r2, r3, #1
    393c:	613a      	str	r2, [r7, #16]
    393e:	220a      	movs	r2, #10
    3940:	18ba      	adds	r2, r7, r2
    3942:	8812      	ldrh	r2, [r2, #0]
    3944:	b2d2      	uxtb	r2, r2
    3946:	1892      	adds	r2, r2, r2
    3948:	b2d1      	uxtb	r1, r2
    394a:	4a1b      	ldr	r2, [pc, #108]	; (39b8 <pdu_read_input_registers+0x148>)
    394c:	54d1      	strb	r1, [r2, r3]
    394e:	2300      	movs	r3, #0
    3950:	617b      	str	r3, [r7, #20]
    3952:	e023      	b.n	399c <pdu_read_input_registers+0x12c>
    3954:	230c      	movs	r3, #12
    3956:	18fb      	adds	r3, r7, r3
    3958:	881b      	ldrh	r3, [r3, #0]
    395a:	1e5a      	subs	r2, r3, #1
    395c:	3aff      	subs	r2, #255	; 0xff
    395e:	697b      	ldr	r3, [r7, #20]
    3960:	18d1      	adds	r1, r2, r3
    3962:	2308      	movs	r3, #8
    3964:	18fb      	adds	r3, r7, r3
    3966:	4a15      	ldr	r2, [pc, #84]	; (39bc <pdu_read_input_registers+0x14c>)
    3968:	0049      	lsls	r1, r1, #1
    396a:	5a8a      	ldrh	r2, [r1, r2]
    396c:	801a      	strh	r2, [r3, #0]
    396e:	693b      	ldr	r3, [r7, #16]
    3970:	1c5a      	adds	r2, r3, #1
    3972:	613a      	str	r2, [r7, #16]
    3974:	2208      	movs	r2, #8
    3976:	18ba      	adds	r2, r7, r2
    3978:	8812      	ldrh	r2, [r2, #0]
    397a:	0a12      	lsrs	r2, r2, #8
    397c:	b292      	uxth	r2, r2
    397e:	b2d1      	uxtb	r1, r2
    3980:	4a0d      	ldr	r2, [pc, #52]	; (39b8 <pdu_read_input_registers+0x148>)
    3982:	54d1      	strb	r1, [r2, r3]
    3984:	693b      	ldr	r3, [r7, #16]
    3986:	1c5a      	adds	r2, r3, #1
    3988:	613a      	str	r2, [r7, #16]
    398a:	2208      	movs	r2, #8
    398c:	18ba      	adds	r2, r7, r2
    398e:	8812      	ldrh	r2, [r2, #0]
    3990:	b2d1      	uxtb	r1, r2
    3992:	4a09      	ldr	r2, [pc, #36]	; (39b8 <pdu_read_input_registers+0x148>)
    3994:	54d1      	strb	r1, [r2, r3]
    3996:	697b      	ldr	r3, [r7, #20]
    3998:	3301      	adds	r3, #1
    399a:	617b      	str	r3, [r7, #20]
    399c:	230a      	movs	r3, #10
    399e:	18fb      	adds	r3, r7, r3
    39a0:	881a      	ldrh	r2, [r3, #0]
    39a2:	697b      	ldr	r3, [r7, #20]
    39a4:	429a      	cmp	r2, r3
    39a6:	dcd5      	bgt.n	3954 <pdu_read_input_registers+0xe4>
    39a8:	693b      	ldr	r3, [r7, #16]
    39aa:	0018      	movs	r0, r3
    39ac:	46bd      	mov	sp, r7
    39ae:	b006      	add	sp, #24
    39b0:	bd80      	pop	{r7, pc}
    39b2:	46c0      	nop			; (mov r8, r8)
    39b4:	20005db8 	.word	0x20005db8
    39b8:	20005dbc 	.word	0x20005dbc
    39bc:	20005dac 	.word	0x20005dac

000039c0 <pdu_write_multiply_registers>:
    39c0:	b580      	push	{r7, lr}
    39c2:	b088      	sub	sp, #32
    39c4:	af00      	add	r7, sp, #0
    39c6:	6078      	str	r0, [r7, #4]
    39c8:	4b5a      	ldr	r3, [pc, #360]	; (3b34 <pdu_write_multiply_registers+0x174>)
    39ca:	681a      	ldr	r2, [r3, #0]
    39cc:	687b      	ldr	r3, [r7, #4]
    39ce:	18d2      	adds	r2, r2, r3
    39d0:	2317      	movs	r3, #23
    39d2:	18fb      	adds	r3, r7, r3
    39d4:	7812      	ldrb	r2, [r2, #0]
    39d6:	701a      	strb	r2, [r3, #0]
    39d8:	4b56      	ldr	r3, [pc, #344]	; (3b34 <pdu_write_multiply_registers+0x174>)
    39da:	681a      	ldr	r2, [r3, #0]
    39dc:	687b      	ldr	r3, [r7, #4]
    39de:	3301      	adds	r3, #1
    39e0:	18d3      	adds	r3, r2, r3
    39e2:	781b      	ldrb	r3, [r3, #0]
    39e4:	021b      	lsls	r3, r3, #8
    39e6:	b21a      	sxth	r2, r3
    39e8:	4b52      	ldr	r3, [pc, #328]	; (3b34 <pdu_write_multiply_registers+0x174>)
    39ea:	6819      	ldr	r1, [r3, #0]
    39ec:	687b      	ldr	r3, [r7, #4]
    39ee:	3302      	adds	r3, #2
    39f0:	18cb      	adds	r3, r1, r3
    39f2:	781b      	ldrb	r3, [r3, #0]
    39f4:	b21b      	sxth	r3, r3
    39f6:	4313      	orrs	r3, r2
    39f8:	b21a      	sxth	r2, r3
    39fa:	2314      	movs	r3, #20
    39fc:	18fb      	adds	r3, r7, r3
    39fe:	801a      	strh	r2, [r3, #0]
    3a00:	4b4c      	ldr	r3, [pc, #304]	; (3b34 <pdu_write_multiply_registers+0x174>)
    3a02:	681a      	ldr	r2, [r3, #0]
    3a04:	687b      	ldr	r3, [r7, #4]
    3a06:	3303      	adds	r3, #3
    3a08:	18d3      	adds	r3, r2, r3
    3a0a:	781b      	ldrb	r3, [r3, #0]
    3a0c:	021b      	lsls	r3, r3, #8
    3a0e:	b21a      	sxth	r2, r3
    3a10:	4b48      	ldr	r3, [pc, #288]	; (3b34 <pdu_write_multiply_registers+0x174>)
    3a12:	6819      	ldr	r1, [r3, #0]
    3a14:	687b      	ldr	r3, [r7, #4]
    3a16:	3304      	adds	r3, #4
    3a18:	18cb      	adds	r3, r1, r3
    3a1a:	781b      	ldrb	r3, [r3, #0]
    3a1c:	b21b      	sxth	r3, r3
    3a1e:	4313      	orrs	r3, r2
    3a20:	b21a      	sxth	r2, r3
    3a22:	2312      	movs	r3, #18
    3a24:	18fb      	adds	r3, r7, r3
    3a26:	801a      	strh	r2, [r3, #0]
    3a28:	4b42      	ldr	r3, [pc, #264]	; (3b34 <pdu_write_multiply_registers+0x174>)
    3a2a:	681a      	ldr	r2, [r3, #0]
    3a2c:	687b      	ldr	r3, [r7, #4]
    3a2e:	3305      	adds	r3, #5
    3a30:	18d2      	adds	r2, r2, r3
    3a32:	2311      	movs	r3, #17
    3a34:	18fb      	adds	r3, r7, r3
    3a36:	7812      	ldrb	r2, [r2, #0]
    3a38:	701a      	strb	r2, [r3, #0]
    3a3a:	2314      	movs	r3, #20
    3a3c:	18fb      	adds	r3, r7, r3
    3a3e:	881a      	ldrh	r2, [r3, #0]
    3a40:	2312      	movs	r3, #18
    3a42:	18fb      	adds	r3, r7, r3
    3a44:	881b      	ldrh	r3, [r3, #0]
    3a46:	18d3      	adds	r3, r2, r3
    3a48:	2b18      	cmp	r3, #24
    3a4a:	dd14      	ble.n	3a76 <pdu_write_multiply_registers+0xb6>
    3a4c:	687b      	ldr	r3, [r7, #4]
    3a4e:	61bb      	str	r3, [r7, #24]
    3a50:	69bb      	ldr	r3, [r7, #24]
    3a52:	1c5a      	adds	r2, r3, #1
    3a54:	61ba      	str	r2, [r7, #24]
    3a56:	2217      	movs	r2, #23
    3a58:	18ba      	adds	r2, r7, r2
    3a5a:	7812      	ldrb	r2, [r2, #0]
    3a5c:	2180      	movs	r1, #128	; 0x80
    3a5e:	4249      	negs	r1, r1
    3a60:	430a      	orrs	r2, r1
    3a62:	b2d1      	uxtb	r1, r2
    3a64:	4a34      	ldr	r2, [pc, #208]	; (3b38 <pdu_write_multiply_registers+0x178>)
    3a66:	54d1      	strb	r1, [r2, r3]
    3a68:	69bb      	ldr	r3, [r7, #24]
    3a6a:	1c5a      	adds	r2, r3, #1
    3a6c:	61ba      	str	r2, [r7, #24]
    3a6e:	4a32      	ldr	r2, [pc, #200]	; (3b38 <pdu_write_multiply_registers+0x178>)
    3a70:	2102      	movs	r1, #2
    3a72:	54d1      	strb	r1, [r2, r3]
    3a74:	e04b      	b.n	3b0e <pdu_write_multiply_registers+0x14e>
    3a76:	687b      	ldr	r3, [r7, #4]
    3a78:	3306      	adds	r3, #6
    3a7a:	61bb      	str	r3, [r7, #24]
    3a7c:	2300      	movs	r3, #0
    3a7e:	61fb      	str	r3, [r7, #28]
    3a80:	e028      	b.n	3ad4 <pdu_write_multiply_registers+0x114>
    3a82:	4b2c      	ldr	r3, [pc, #176]	; (3b34 <pdu_write_multiply_registers+0x174>)
    3a84:	681a      	ldr	r2, [r3, #0]
    3a86:	69bb      	ldr	r3, [r7, #24]
    3a88:	1c59      	adds	r1, r3, #1
    3a8a:	61b9      	str	r1, [r7, #24]
    3a8c:	18d3      	adds	r3, r2, r3
    3a8e:	781b      	ldrb	r3, [r3, #0]
    3a90:	b29a      	uxth	r2, r3
    3a92:	230e      	movs	r3, #14
    3a94:	18fb      	adds	r3, r7, r3
    3a96:	0212      	lsls	r2, r2, #8
    3a98:	801a      	strh	r2, [r3, #0]
    3a9a:	4b26      	ldr	r3, [pc, #152]	; (3b34 <pdu_write_multiply_registers+0x174>)
    3a9c:	681a      	ldr	r2, [r3, #0]
    3a9e:	69bb      	ldr	r3, [r7, #24]
    3aa0:	1c59      	adds	r1, r3, #1
    3aa2:	61b9      	str	r1, [r7, #24]
    3aa4:	18d3      	adds	r3, r2, r3
    3aa6:	781b      	ldrb	r3, [r3, #0]
    3aa8:	b299      	uxth	r1, r3
    3aaa:	230e      	movs	r3, #14
    3aac:	18fb      	adds	r3, r7, r3
    3aae:	220e      	movs	r2, #14
    3ab0:	18ba      	adds	r2, r7, r2
    3ab2:	8812      	ldrh	r2, [r2, #0]
    3ab4:	430a      	orrs	r2, r1
    3ab6:	801a      	strh	r2, [r3, #0]
    3ab8:	2314      	movs	r3, #20
    3aba:	18fb      	adds	r3, r7, r3
    3abc:	881a      	ldrh	r2, [r3, #0]
    3abe:	69fb      	ldr	r3, [r7, #28]
    3ac0:	18d2      	adds	r2, r2, r3
    3ac2:	4b1e      	ldr	r3, [pc, #120]	; (3b3c <pdu_write_multiply_registers+0x17c>)
    3ac4:	0052      	lsls	r2, r2, #1
    3ac6:	210e      	movs	r1, #14
    3ac8:	1879      	adds	r1, r7, r1
    3aca:	8809      	ldrh	r1, [r1, #0]
    3acc:	52d1      	strh	r1, [r2, r3]
    3ace:	69fb      	ldr	r3, [r7, #28]
    3ad0:	3301      	adds	r3, #1
    3ad2:	61fb      	str	r3, [r7, #28]
    3ad4:	2312      	movs	r3, #18
    3ad6:	18fb      	adds	r3, r7, r3
    3ad8:	881a      	ldrh	r2, [r3, #0]
    3ada:	69fb      	ldr	r3, [r7, #28]
    3adc:	429a      	cmp	r2, r3
    3ade:	dcd0      	bgt.n	3a82 <pdu_write_multiply_registers+0xc2>
    3ae0:	687b      	ldr	r3, [r7, #4]
    3ae2:	61bb      	str	r3, [r7, #24]
    3ae4:	687b      	ldr	r3, [r7, #4]
    3ae6:	61fb      	str	r3, [r7, #28]
    3ae8:	e00c      	b.n	3b04 <pdu_write_multiply_registers+0x144>
    3aea:	69bb      	ldr	r3, [r7, #24]
    3aec:	1c5a      	adds	r2, r3, #1
    3aee:	61ba      	str	r2, [r7, #24]
    3af0:	4a10      	ldr	r2, [pc, #64]	; (3b34 <pdu_write_multiply_registers+0x174>)
    3af2:	6811      	ldr	r1, [r2, #0]
    3af4:	69fa      	ldr	r2, [r7, #28]
    3af6:	188a      	adds	r2, r1, r2
    3af8:	7811      	ldrb	r1, [r2, #0]
    3afa:	4a0f      	ldr	r2, [pc, #60]	; (3b38 <pdu_write_multiply_registers+0x178>)
    3afc:	54d1      	strb	r1, [r2, r3]
    3afe:	69fb      	ldr	r3, [r7, #28]
    3b00:	3301      	adds	r3, #1
    3b02:	61fb      	str	r3, [r7, #28]
    3b04:	687b      	ldr	r3, [r7, #4]
    3b06:	1d5a      	adds	r2, r3, #5
    3b08:	69fb      	ldr	r3, [r7, #28]
    3b0a:	429a      	cmp	r2, r3
    3b0c:	dced      	bgt.n	3aea <pdu_write_multiply_registers+0x12a>
    3b0e:	2314      	movs	r3, #20
    3b10:	18fb      	adds	r3, r7, r3
    3b12:	881b      	ldrh	r3, [r3, #0]
    3b14:	2b00      	cmp	r3, #0
    3b16:	d107      	bne.n	3b28 <pdu_write_multiply_registers+0x168>
    3b18:	4b09      	ldr	r3, [pc, #36]	; (3b40 <pdu_write_multiply_registers+0x180>)
    3b1a:	6818      	ldr	r0, [r3, #0]
    3b1c:	4b07      	ldr	r3, [pc, #28]	; (3b3c <pdu_write_multiply_registers+0x17c>)
    3b1e:	881b      	ldrh	r3, [r3, #0]
    3b20:	2200      	movs	r2, #0
    3b22:	0019      	movs	r1, r3
    3b24:	f003 f8d0 	bl	6cc8 <osMessagePut>
    3b28:	69bb      	ldr	r3, [r7, #24]
    3b2a:	0018      	movs	r0, r3
    3b2c:	46bd      	mov	sp, r7
    3b2e:	b008      	add	sp, #32
    3b30:	bd80      	pop	{r7, pc}
    3b32:	46c0      	nop			; (mov r8, r8)
    3b34:	20005db8 	.word	0x20005db8
    3b38:	20005dbc 	.word	0x20005dbc
    3b3c:	20005d7c 	.word	0x20005d7c
    3b40:	20000864 	.word	0x20000864

00003b44 <u16tobe>:
    3b44:	b580      	push	{r7, lr}
    3b46:	b082      	sub	sp, #8
    3b48:	af00      	add	r7, sp, #0
    3b4a:	0002      	movs	r2, r0
    3b4c:	6039      	str	r1, [r7, #0]
    3b4e:	1dbb      	adds	r3, r7, #6
    3b50:	801a      	strh	r2, [r3, #0]
    3b52:	683b      	ldr	r3, [r7, #0]
    3b54:	1c5a      	adds	r2, r3, #1
    3b56:	603a      	str	r2, [r7, #0]
    3b58:	1dba      	adds	r2, r7, #6
    3b5a:	8812      	ldrh	r2, [r2, #0]
    3b5c:	0a12      	lsrs	r2, r2, #8
    3b5e:	b292      	uxth	r2, r2
    3b60:	b2d2      	uxtb	r2, r2
    3b62:	701a      	strb	r2, [r3, #0]
    3b64:	683b      	ldr	r3, [r7, #0]
    3b66:	1c5a      	adds	r2, r3, #1
    3b68:	603a      	str	r2, [r7, #0]
    3b6a:	1dba      	adds	r2, r7, #6
    3b6c:	8812      	ldrh	r2, [r2, #0]
    3b6e:	b2d2      	uxtb	r2, r2
    3b70:	701a      	strb	r2, [r3, #0]
    3b72:	46c0      	nop			; (mov r8, r8)
    3b74:	46bd      	mov	sp, r7
    3b76:	b002      	add	sp, #8
    3b78:	bd80      	pop	{r7, pc}
    3b7a:	46c0      	nop			; (mov r8, r8)

00003b7c <u32tobe>:
    3b7c:	b580      	push	{r7, lr}
    3b7e:	b082      	sub	sp, #8
    3b80:	af00      	add	r7, sp, #0
    3b82:	6078      	str	r0, [r7, #4]
    3b84:	6039      	str	r1, [r7, #0]
    3b86:	683b      	ldr	r3, [r7, #0]
    3b88:	1c5a      	adds	r2, r3, #1
    3b8a:	603a      	str	r2, [r7, #0]
    3b8c:	687a      	ldr	r2, [r7, #4]
    3b8e:	0e12      	lsrs	r2, r2, #24
    3b90:	b2d2      	uxtb	r2, r2
    3b92:	701a      	strb	r2, [r3, #0]
    3b94:	683b      	ldr	r3, [r7, #0]
    3b96:	1c5a      	adds	r2, r3, #1
    3b98:	603a      	str	r2, [r7, #0]
    3b9a:	687a      	ldr	r2, [r7, #4]
    3b9c:	0c12      	lsrs	r2, r2, #16
    3b9e:	b2d2      	uxtb	r2, r2
    3ba0:	701a      	strb	r2, [r3, #0]
    3ba2:	683b      	ldr	r3, [r7, #0]
    3ba4:	1c5a      	adds	r2, r3, #1
    3ba6:	603a      	str	r2, [r7, #0]
    3ba8:	687a      	ldr	r2, [r7, #4]
    3baa:	0a12      	lsrs	r2, r2, #8
    3bac:	b2d2      	uxtb	r2, r2
    3bae:	701a      	strb	r2, [r3, #0]
    3bb0:	683b      	ldr	r3, [r7, #0]
    3bb2:	1c5a      	adds	r2, r3, #1
    3bb4:	603a      	str	r2, [r7, #0]
    3bb6:	687a      	ldr	r2, [r7, #4]
    3bb8:	b2d2      	uxtb	r2, r2
    3bba:	701a      	strb	r2, [r3, #0]
    3bbc:	46c0      	nop			; (mov r8, r8)
    3bbe:	46bd      	mov	sp, r7
    3bc0:	b002      	add	sp, #8
    3bc2:	bd80      	pop	{r7, pc}

00003bc4 <pdu_read_fifo_queue>:
    3bc4:	b580      	push	{r7, lr}
    3bc6:	b090      	sub	sp, #64	; 0x40
    3bc8:	af00      	add	r7, sp, #0
    3bca:	6078      	str	r0, [r7, #4]
    3bcc:	2336      	movs	r3, #54	; 0x36
    3bce:	18fb      	adds	r3, r7, r3
    3bd0:	2203      	movs	r2, #3
    3bd2:	801a      	strh	r2, [r3, #0]
    3bd4:	4b7a      	ldr	r3, [pc, #488]	; (3dc0 <pdu_read_fifo_queue+0x1fc>)
    3bd6:	681a      	ldr	r2, [r3, #0]
    3bd8:	687b      	ldr	r3, [r7, #4]
    3bda:	18d2      	adds	r2, r2, r3
    3bdc:	2335      	movs	r3, #53	; 0x35
    3bde:	18fb      	adds	r3, r7, r3
    3be0:	7812      	ldrb	r2, [r2, #0]
    3be2:	701a      	strb	r2, [r3, #0]
    3be4:	4b76      	ldr	r3, [pc, #472]	; (3dc0 <pdu_read_fifo_queue+0x1fc>)
    3be6:	681a      	ldr	r2, [r3, #0]
    3be8:	687b      	ldr	r3, [r7, #4]
    3bea:	3301      	adds	r3, #1
    3bec:	18d3      	adds	r3, r2, r3
    3bee:	781b      	ldrb	r3, [r3, #0]
    3bf0:	021b      	lsls	r3, r3, #8
    3bf2:	b21a      	sxth	r2, r3
    3bf4:	4b72      	ldr	r3, [pc, #456]	; (3dc0 <pdu_read_fifo_queue+0x1fc>)
    3bf6:	6819      	ldr	r1, [r3, #0]
    3bf8:	687b      	ldr	r3, [r7, #4]
    3bfa:	3302      	adds	r3, #2
    3bfc:	18cb      	adds	r3, r1, r3
    3bfe:	781b      	ldrb	r3, [r3, #0]
    3c00:	b21b      	sxth	r3, r3
    3c02:	4313      	orrs	r3, r2
    3c04:	b21a      	sxth	r2, r3
    3c06:	2332      	movs	r3, #50	; 0x32
    3c08:	18fb      	adds	r3, r7, r3
    3c0a:	801a      	strh	r2, [r3, #0]
    3c0c:	2332      	movs	r3, #50	; 0x32
    3c0e:	18fb      	adds	r3, r7, r3
    3c10:	881a      	ldrh	r2, [r3, #0]
    3c12:	2380      	movs	r3, #128	; 0x80
    3c14:	009b      	lsls	r3, r3, #2
    3c16:	429a      	cmp	r2, r3
    3c18:	d014      	beq.n	3c44 <pdu_read_fifo_queue+0x80>
    3c1a:	687b      	ldr	r3, [r7, #4]
    3c1c:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c1e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c20:	1c5a      	adds	r2, r3, #1
    3c22:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c24:	2235      	movs	r2, #53	; 0x35
    3c26:	18ba      	adds	r2, r7, r2
    3c28:	7812      	ldrb	r2, [r2, #0]
    3c2a:	2180      	movs	r1, #128	; 0x80
    3c2c:	4249      	negs	r1, r1
    3c2e:	430a      	orrs	r2, r1
    3c30:	b2d1      	uxtb	r1, r2
    3c32:	4a64      	ldr	r2, [pc, #400]	; (3dc4 <pdu_read_fifo_queue+0x200>)
    3c34:	54d1      	strb	r1, [r2, r3]
    3c36:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c38:	1c5a      	adds	r2, r3, #1
    3c3a:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c3c:	4a61      	ldr	r2, [pc, #388]	; (3dc4 <pdu_read_fifo_queue+0x200>)
    3c3e:	2102      	movs	r1, #2
    3c40:	54d1      	strb	r1, [r2, r3]
    3c42:	e0b7      	b.n	3db4 <pdu_read_fifo_queue+0x1f0>
    3c44:	687b      	ldr	r3, [r7, #4]
    3c46:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c48:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c4a:	1c5a      	adds	r2, r3, #1
    3c4c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c4e:	4a5d      	ldr	r2, [pc, #372]	; (3dc4 <pdu_read_fifo_queue+0x200>)
    3c50:	2135      	movs	r1, #53	; 0x35
    3c52:	1879      	adds	r1, r7, r1
    3c54:	7809      	ldrb	r1, [r1, #0]
    3c56:	54d1      	strb	r1, [r2, r3]
    3c58:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c5a:	1c5a      	adds	r2, r3, #1
    3c5c:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c5e:	4a59      	ldr	r2, [pc, #356]	; (3dc4 <pdu_read_fifo_queue+0x200>)
    3c60:	2100      	movs	r1, #0
    3c62:	54d1      	strb	r1, [r2, r3]
    3c64:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c66:	1c5a      	adds	r2, r3, #1
    3c68:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c6a:	4a56      	ldr	r2, [pc, #344]	; (3dc4 <pdu_read_fifo_queue+0x200>)
    3c6c:	2100      	movs	r1, #0
    3c6e:	54d1      	strb	r1, [r2, r3]
    3c70:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c72:	1c5a      	adds	r2, r3, #1
    3c74:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c76:	4a53      	ldr	r2, [pc, #332]	; (3dc4 <pdu_read_fifo_queue+0x200>)
    3c78:	2100      	movs	r1, #0
    3c7a:	54d1      	strb	r1, [r2, r3]
    3c7c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c7e:	1c5a      	adds	r2, r3, #1
    3c80:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c82:	4a50      	ldr	r2, [pc, #320]	; (3dc4 <pdu_read_fifo_queue+0x200>)
    3c84:	2100      	movs	r1, #0
    3c86:	54d1      	strb	r1, [r2, r3]
    3c88:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c8a:	62fb      	str	r3, [r7, #44]	; 0x2c
    3c8c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3c8e:	4b4d      	ldr	r3, [pc, #308]	; (3dc4 <pdu_read_fifo_queue+0x200>)
    3c90:	18d3      	adds	r3, r2, r3
    3c92:	63bb      	str	r3, [r7, #56]	; 0x38
    3c94:	e06a      	b.n	3d6c <pdu_read_fifo_queue+0x1a8>
    3c96:	2300      	movs	r3, #0
    3c98:	62bb      	str	r3, [r7, #40]	; 0x28
    3c9a:	2308      	movs	r3, #8
    3c9c:	18fb      	adds	r3, r7, r3
    3c9e:	2120      	movs	r1, #32
    3ca0:	0018      	movs	r0, r3
    3ca2:	f7ff fbd7 	bl	3454 <mdb_fifo_read>
    3ca6:	0003      	movs	r3, r0
    3ca8:	62bb      	str	r3, [r7, #40]	; 0x28
    3caa:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3cac:	2b00      	cmp	r3, #0
    3cae:	d065      	beq.n	3d7c <pdu_read_fifo_queue+0x1b8>
    3cb0:	2308      	movs	r3, #8
    3cb2:	18fb      	adds	r3, r7, r3
    3cb4:	681b      	ldr	r3, [r3, #0]
    3cb6:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cb8:	0011      	movs	r1, r2
    3cba:	0018      	movs	r0, r3
    3cbc:	f7ff ff5e 	bl	3b7c <u32tobe>
    3cc0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cc2:	3304      	adds	r3, #4
    3cc4:	63bb      	str	r3, [r7, #56]	; 0x38
    3cc6:	2308      	movs	r3, #8
    3cc8:	18fb      	adds	r3, r7, r3
    3cca:	685b      	ldr	r3, [r3, #4]
    3ccc:	001a      	movs	r2, r3
    3cce:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cd0:	0019      	movs	r1, r3
    3cd2:	0010      	movs	r0, r2
    3cd4:	f7ff ff52 	bl	3b7c <u32tobe>
    3cd8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cda:	3304      	adds	r3, #4
    3cdc:	63bb      	str	r3, [r7, #56]	; 0x38
    3cde:	2308      	movs	r3, #8
    3ce0:	18fb      	adds	r3, r7, r3
    3ce2:	689b      	ldr	r3, [r3, #8]
    3ce4:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3ce6:	0011      	movs	r1, r2
    3ce8:	0018      	movs	r0, r3
    3cea:	f7ff ff47 	bl	3b7c <u32tobe>
    3cee:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cf0:	3304      	adds	r3, #4
    3cf2:	63bb      	str	r3, [r7, #56]	; 0x38
    3cf4:	2308      	movs	r3, #8
    3cf6:	18fb      	adds	r3, r7, r3
    3cf8:	68db      	ldr	r3, [r3, #12]
    3cfa:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3cfc:	0011      	movs	r1, r2
    3cfe:	0018      	movs	r0, r3
    3d00:	f7ff ff3c 	bl	3b7c <u32tobe>
    3d04:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d06:	3304      	adds	r3, #4
    3d08:	63bb      	str	r3, [r7, #56]	; 0x38
    3d0a:	2308      	movs	r3, #8
    3d0c:	18fb      	adds	r3, r7, r3
    3d0e:	691b      	ldr	r3, [r3, #16]
    3d10:	001a      	movs	r2, r3
    3d12:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d14:	0019      	movs	r1, r3
    3d16:	0010      	movs	r0, r2
    3d18:	f7ff ff30 	bl	3b7c <u32tobe>
    3d1c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d1e:	3304      	adds	r3, #4
    3d20:	63bb      	str	r3, [r7, #56]	; 0x38
    3d22:	2308      	movs	r3, #8
    3d24:	18fb      	adds	r3, r7, r3
    3d26:	695b      	ldr	r3, [r3, #20]
    3d28:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d2a:	0011      	movs	r1, r2
    3d2c:	0018      	movs	r0, r3
    3d2e:	f7ff ff25 	bl	3b7c <u32tobe>
    3d32:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d34:	3304      	adds	r3, #4
    3d36:	63bb      	str	r3, [r7, #56]	; 0x38
    3d38:	2308      	movs	r3, #8
    3d3a:	18fb      	adds	r3, r7, r3
    3d3c:	699b      	ldr	r3, [r3, #24]
    3d3e:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d40:	0011      	movs	r1, r2
    3d42:	0018      	movs	r0, r3
    3d44:	f7ff ff1a 	bl	3b7c <u32tobe>
    3d48:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d4a:	3304      	adds	r3, #4
    3d4c:	63bb      	str	r3, [r7, #56]	; 0x38
    3d4e:	2308      	movs	r3, #8
    3d50:	18fb      	adds	r3, r7, r3
    3d52:	69db      	ldr	r3, [r3, #28]
    3d54:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d56:	0011      	movs	r1, r2
    3d58:	0018      	movs	r0, r3
    3d5a:	f7ff ff0f 	bl	3b7c <u32tobe>
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
    3d78:	d98d      	bls.n	3c96 <pdu_read_fifo_queue+0xd2>
    3d7a:	e000      	b.n	3d7e <pdu_read_fifo_queue+0x1ba>
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
    3d92:	4b0c      	ldr	r3, [pc, #48]	; (3dc4 <pdu_read_fifo_queue+0x200>)
    3d94:	18d3      	adds	r3, r2, r3
    3d96:	0019      	movs	r1, r3
    3d98:	f7ff fed4 	bl	3b44 <u16tobe>
    3d9c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3d9e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3da0:	1ad3      	subs	r3, r2, r3
    3da2:	105b      	asrs	r3, r3, #1
    3da4:	b298      	uxth	r0, r3
    3da6:	687b      	ldr	r3, [r7, #4]
    3da8:	1cda      	adds	r2, r3, #3
    3daa:	4b06      	ldr	r3, [pc, #24]	; (3dc4 <pdu_read_fifo_queue+0x200>)
    3dac:	18d3      	adds	r3, r2, r3
    3dae:	0019      	movs	r1, r3
    3db0:	f7ff fec8 	bl	3b44 <u16tobe>
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
    403a:	f7fe fdd1 	bl	2be0 <Send_UDP>
    403e:	46c0      	nop			; (mov r8, r8)
    4040:	46bd      	mov	sp, r7
    4042:	b006      	add	sp, #24
    4044:	bd80      	pop	{r7, pc}
    4046:	46c0      	nop			; (mov r8, r8)
    4048:	20005db8 	.word	0x20005db8
    404c:	00008f74 	.word	0x00008f74
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
    4064:	2000603c 	.word	0x2000603c

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
    4096:	e098      	b.n	41ca <fsm_idle+0x14e>
    4098:	4b4e      	ldr	r3, [pc, #312]	; (41d4 <fsm_idle+0x158>)
    409a:	0018      	movs	r0, r3
    409c:	f7ff fa6c 	bl	3578 <mdb_get_testparam>
    40a0:	4b4c      	ldr	r3, [pc, #304]	; (41d4 <fsm_idle+0x158>)
    40a2:	681a      	ldr	r2, [r3, #0]
    40a4:	4b4c      	ldr	r3, [pc, #304]	; (41d8 <fsm_idle+0x15c>)
    40a6:	601a      	str	r2, [r3, #0]
    40a8:	4b4b      	ldr	r3, [pc, #300]	; (41d8 <fsm_idle+0x15c>)
    40aa:	681b      	ldr	r3, [r3, #0]
    40ac:	2b00      	cmp	r3, #0
    40ae:	d100      	bne.n	40b2 <fsm_idle+0x36>
    40b0:	e08b      	b.n	41ca <fsm_idle+0x14e>
    40b2:	4b4a      	ldr	r3, [pc, #296]	; (41dc <fsm_idle+0x160>)
    40b4:	4a4a      	ldr	r2, [pc, #296]	; (41e0 <fsm_idle+0x164>)
    40b6:	601a      	str	r2, [r3, #0]
    40b8:	4b4a      	ldr	r3, [pc, #296]	; (41e4 <fsm_idle+0x168>)
    40ba:	2201      	movs	r2, #1
    40bc:	701a      	strb	r2, [r3, #0]
    40be:	4b4a      	ldr	r3, [pc, #296]	; (41e8 <fsm_idle+0x16c>)
    40c0:	2200      	movs	r2, #0
    40c2:	601a      	str	r2, [r3, #0]
    40c4:	4b49      	ldr	r3, [pc, #292]	; (41ec <fsm_idle+0x170>)
    40c6:	2200      	movs	r2, #0
    40c8:	601a      	str	r2, [r3, #0]
    40ca:	2300      	movs	r3, #0
    40cc:	60fb      	str	r3, [r7, #12]
    40ce:	e032      	b.n	4136 <fsm_idle+0xba>
    40d0:	4b40      	ldr	r3, [pc, #256]	; (41d4 <fsm_idle+0x158>)
    40d2:	689b      	ldr	r3, [r3, #8]
    40d4:	4a3f      	ldr	r2, [pc, #252]	; (41d4 <fsm_idle+0x158>)
    40d6:	68f9      	ldr	r1, [r7, #12]
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
    40f6:	4b3e      	ldr	r3, [pc, #248]	; (41f0 <fsm_idle+0x174>)
    40f8:	68fa      	ldr	r2, [r7, #12]
    40fa:	0092      	lsls	r2, r2, #2
    40fc:	50d1      	str	r1, [r2, r3]
    40fe:	4b35      	ldr	r3, [pc, #212]	; (41d4 <fsm_idle+0x158>)
    4100:	68db      	ldr	r3, [r3, #12]
    4102:	4934      	ldr	r1, [pc, #208]	; (41d4 <fsm_idle+0x158>)
    4104:	68fa      	ldr	r2, [r7, #12]
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
    4128:	4b32      	ldr	r3, [pc, #200]	; (41f4 <fsm_idle+0x178>)
    412a:	68fa      	ldr	r2, [r7, #12]
    412c:	0092      	lsls	r2, r2, #2
    412e:	50d1      	str	r1, [r2, r3]
    4130:	68fb      	ldr	r3, [r7, #12]
    4132:	3301      	adds	r3, #1
    4134:	60fb      	str	r3, [r7, #12]
    4136:	68fb      	ldr	r3, [r7, #12]
    4138:	2b04      	cmp	r3, #4
    413a:	ddc9      	ble.n	40d0 <fsm_idle+0x54>
    413c:	2300      	movs	r3, #0
    413e:	60fb      	str	r3, [r7, #12]
    4140:	e020      	b.n	4184 <fsm_idle+0x108>
    4142:	68fb      	ldr	r3, [r7, #12]
    4144:	1c5a      	adds	r2, r3, #1
    4146:	4b2b      	ldr	r3, [pc, #172]	; (41f4 <fsm_idle+0x178>)
    4148:	0092      	lsls	r2, r2, #2
    414a:	58d2      	ldr	r2, [r2, r3]
    414c:	4b29      	ldr	r3, [pc, #164]	; (41f4 <fsm_idle+0x178>)
    414e:	68f9      	ldr	r1, [r7, #12]
    4150:	0089      	lsls	r1, r1, #2
    4152:	58cb      	ldr	r3, [r1, r3]
    4154:	1ad3      	subs	r3, r2, r3
    4156:	0098      	lsls	r0, r3, #2
    4158:	68fb      	ldr	r3, [r7, #12]
    415a:	1c5a      	adds	r2, r3, #1
    415c:	4b24      	ldr	r3, [pc, #144]	; (41f0 <fsm_idle+0x174>)
    415e:	0092      	lsls	r2, r2, #2
    4160:	58d2      	ldr	r2, [r2, r3]
    4162:	4b23      	ldr	r3, [pc, #140]	; (41f0 <fsm_idle+0x174>)
    4164:	68f9      	ldr	r1, [r7, #12]
    4166:	0089      	lsls	r1, r1, #2
    4168:	58cb      	ldr	r3, [r1, r3]
    416a:	1ad3      	subs	r3, r2, r3
    416c:	0019      	movs	r1, r3
    416e:	f000 fb0d 	bl	478c <__aeabi_idiv>
    4172:	0003      	movs	r3, r0
    4174:	0019      	movs	r1, r3
    4176:	4b20      	ldr	r3, [pc, #128]	; (41f8 <fsm_idle+0x17c>)
    4178:	68fa      	ldr	r2, [r7, #12]
    417a:	0092      	lsls	r2, r2, #2
    417c:	50d1      	str	r1, [r2, r3]
    417e:	68fb      	ldr	r3, [r7, #12]
    4180:	3301      	adds	r3, #1
    4182:	60fb      	str	r3, [r7, #12]
    4184:	68fb      	ldr	r3, [r7, #12]
    4186:	2b03      	cmp	r3, #3
    4188:	dddb      	ble.n	4142 <fsm_idle+0xc6>
    418a:	4b19      	ldr	r3, [pc, #100]	; (41f0 <fsm_idle+0x174>)
    418c:	681a      	ldr	r2, [r3, #0]
    418e:	4b1b      	ldr	r3, [pc, #108]	; (41fc <fsm_idle+0x180>)
    4190:	601a      	str	r2, [r3, #0]
    4192:	4b17      	ldr	r3, [pc, #92]	; (41f0 <fsm_idle+0x174>)
    4194:	685a      	ldr	r2, [r3, #4]
    4196:	4b1a      	ldr	r3, [pc, #104]	; (4200 <fsm_idle+0x184>)
    4198:	601a      	str	r2, [r3, #0]
    419a:	4b16      	ldr	r3, [pc, #88]	; (41f4 <fsm_idle+0x178>)
    419c:	681a      	ldr	r2, [r3, #0]
    419e:	4b19      	ldr	r3, [pc, #100]	; (4204 <fsm_idle+0x188>)
    41a0:	601a      	str	r2, [r3, #0]
    41a2:	4b14      	ldr	r3, [pc, #80]	; (41f4 <fsm_idle+0x178>)
    41a4:	685a      	ldr	r2, [r3, #4]
    41a6:	4b18      	ldr	r3, [pc, #96]	; (4208 <fsm_idle+0x18c>)
    41a8:	601a      	str	r2, [r3, #0]
    41aa:	4b13      	ldr	r3, [pc, #76]	; (41f8 <fsm_idle+0x17c>)
    41ac:	681a      	ldr	r2, [r3, #0]
    41ae:	4b17      	ldr	r3, [pc, #92]	; (420c <fsm_idle+0x190>)
    41b0:	601a      	str	r2, [r3, #0]
    41b2:	f7fb ffcd 	bl	150 <dut_reset_on>
    41b6:	4b07      	ldr	r3, [pc, #28]	; (41d4 <fsm_idle+0x158>)
    41b8:	685b      	ldr	r3, [r3, #4]
    41ba:	0018      	movs	r0, r3
    41bc:	f7fb ffd4 	bl	168 <dut_set_speed>
    41c0:	4b10      	ldr	r3, [pc, #64]	; (4204 <fsm_idle+0x188>)
    41c2:	681b      	ldr	r3, [r3, #0]
    41c4:	0018      	movs	r0, r3
    41c6:	f7fb ffdf 	bl	188 <dut_set_torque>
    41ca:	46c0      	nop			; (mov r8, r8)
    41cc:	46bd      	mov	sp, r7
    41ce:	b004      	add	sp, #16
    41d0:	bd80      	pop	{r7, pc}
    41d2:	46c0      	nop			; (mov r8, r8)
    41d4:	20006014 	.word	0x20006014
    41d8:	20006008 	.word	0x20006008
    41dc:	20000010 	.word	0x20000010
    41e0:	00004211 	.word	0x00004211
    41e4:	2000603c 	.word	0x2000603c
    41e8:	2000600c 	.word	0x2000600c
    41ec:	20006010 	.word	0x20006010
    41f0:	20005fcc 	.word	0x20005fcc
    41f4:	20005fe0 	.word	0x20005fe0
    41f8:	20005ff4 	.word	0x20005ff4
    41fc:	20005fbc 	.word	0x20005fbc
    4200:	20005fc0 	.word	0x20005fc0
    4204:	20005fc4 	.word	0x20005fc4
    4208:	20005fc8 	.word	0x20005fc8
    420c:	20005fb8 	.word	0x20005fb8

00004210 <fsm_work>:
    4210:	b580      	push	{r7, lr}
    4212:	b088      	sub	sp, #32
    4214:	af00      	add	r7, sp, #0
    4216:	6078      	str	r0, [r7, #4]
    4218:	231f      	movs	r3, #31
    421a:	18fb      	adds	r3, r7, r3
    421c:	687a      	ldr	r2, [r7, #4]
    421e:	701a      	strb	r2, [r3, #0]
    4220:	687b      	ldr	r3, [r7, #4]
    4222:	0a1b      	lsrs	r3, r3, #8
    4224:	61bb      	str	r3, [r7, #24]
    4226:	231f      	movs	r3, #31
    4228:	18fb      	adds	r3, r7, r3
    422a:	781b      	ldrb	r3, [r3, #0]
    422c:	2b04      	cmp	r3, #4
    422e:	d000      	beq.n	4232 <fsm_work+0x22>
    4230:	e092      	b.n	4358 <fsm_work+0x148>
    4232:	69bb      	ldr	r3, [r7, #24]
    4234:	617b      	str	r3, [r7, #20]
    4236:	2300      	movs	r3, #0
    4238:	613b      	str	r3, [r7, #16]
    423a:	f7fb ff7d 	bl	138 <dut_reset_off>
    423e:	4b5a      	ldr	r3, [pc, #360]	; (43a8 <fsm_work+0x198>)
    4240:	681b      	ldr	r3, [r3, #0]
    4242:	001a      	movs	r2, r3
    4244:	697b      	ldr	r3, [r7, #20]
    4246:	4293      	cmp	r3, r2
    4248:	d368      	bcc.n	431c <fsm_work+0x10c>
    424a:	4b58      	ldr	r3, [pc, #352]	; (43ac <fsm_work+0x19c>)
    424c:	681b      	ldr	r3, [r3, #0]
    424e:	1c5a      	adds	r2, r3, #1
    4250:	4b56      	ldr	r3, [pc, #344]	; (43ac <fsm_work+0x19c>)
    4252:	601a      	str	r2, [r3, #0]
    4254:	4b55      	ldr	r3, [pc, #340]	; (43ac <fsm_work+0x19c>)
    4256:	681b      	ldr	r3, [r3, #0]
    4258:	2b03      	cmp	r3, #3
    425a:	d825      	bhi.n	42a8 <fsm_work+0x98>
    425c:	4b53      	ldr	r3, [pc, #332]	; (43ac <fsm_work+0x19c>)
    425e:	681a      	ldr	r2, [r3, #0]
    4260:	4b53      	ldr	r3, [pc, #332]	; (43b0 <fsm_work+0x1a0>)
    4262:	0092      	lsls	r2, r2, #2
    4264:	58d2      	ldr	r2, [r2, r3]
    4266:	4b53      	ldr	r3, [pc, #332]	; (43b4 <fsm_work+0x1a4>)
    4268:	601a      	str	r2, [r3, #0]
    426a:	4b50      	ldr	r3, [pc, #320]	; (43ac <fsm_work+0x19c>)
    426c:	681b      	ldr	r3, [r3, #0]
    426e:	1c5a      	adds	r2, r3, #1
    4270:	4b4f      	ldr	r3, [pc, #316]	; (43b0 <fsm_work+0x1a0>)
    4272:	0092      	lsls	r2, r2, #2
    4274:	58d2      	ldr	r2, [r2, r3]
    4276:	4b4c      	ldr	r3, [pc, #304]	; (43a8 <fsm_work+0x198>)
    4278:	601a      	str	r2, [r3, #0]
    427a:	4b4c      	ldr	r3, [pc, #304]	; (43ac <fsm_work+0x19c>)
    427c:	681a      	ldr	r2, [r3, #0]
    427e:	4b4e      	ldr	r3, [pc, #312]	; (43b8 <fsm_work+0x1a8>)
    4280:	0092      	lsls	r2, r2, #2
    4282:	58d2      	ldr	r2, [r2, r3]
    4284:	4b4d      	ldr	r3, [pc, #308]	; (43bc <fsm_work+0x1ac>)
    4286:	601a      	str	r2, [r3, #0]
    4288:	4b48      	ldr	r3, [pc, #288]	; (43ac <fsm_work+0x19c>)
    428a:	681b      	ldr	r3, [r3, #0]
    428c:	1c5a      	adds	r2, r3, #1
    428e:	4b4a      	ldr	r3, [pc, #296]	; (43b8 <fsm_work+0x1a8>)
    4290:	0092      	lsls	r2, r2, #2
    4292:	58d2      	ldr	r2, [r2, r3]
    4294:	4b4a      	ldr	r3, [pc, #296]	; (43c0 <fsm_work+0x1b0>)
    4296:	601a      	str	r2, [r3, #0]
    4298:	4b44      	ldr	r3, [pc, #272]	; (43ac <fsm_work+0x19c>)
    429a:	681a      	ldr	r2, [r3, #0]
    429c:	4b49      	ldr	r3, [pc, #292]	; (43c4 <fsm_work+0x1b4>)
    429e:	0092      	lsls	r2, r2, #2
    42a0:	58d2      	ldr	r2, [r2, r3]
    42a2:	4b49      	ldr	r3, [pc, #292]	; (43c8 <fsm_work+0x1b8>)
    42a4:	601a      	str	r2, [r3, #0]
    42a6:	e039      	b.n	431c <fsm_work+0x10c>
    42a8:	4b40      	ldr	r3, [pc, #256]	; (43ac <fsm_work+0x19c>)
    42aa:	2200      	movs	r2, #0
    42ac:	601a      	str	r2, [r3, #0]
    42ae:	f7fb ff4f 	bl	150 <dut_reset_on>
    42b2:	4b46      	ldr	r3, [pc, #280]	; (43cc <fsm_work+0x1bc>)
    42b4:	681b      	ldr	r3, [r3, #0]
    42b6:	1c59      	adds	r1, r3, #1
    42b8:	4a44      	ldr	r2, [pc, #272]	; (43cc <fsm_work+0x1bc>)
    42ba:	6011      	str	r1, [r2, #0]
    42bc:	2b00      	cmp	r3, #0
    42be:	d018      	beq.n	42f2 <fsm_work+0xe2>
    42c0:	4b42      	ldr	r3, [pc, #264]	; (43cc <fsm_work+0x1bc>)
    42c2:	2200      	movs	r2, #0
    42c4:	601a      	str	r2, [r3, #0]
    42c6:	4b42      	ldr	r3, [pc, #264]	; (43d0 <fsm_work+0x1c0>)
    42c8:	681b      	ldr	r3, [r3, #0]
    42ca:	1e5a      	subs	r2, r3, #1
    42cc:	4b40      	ldr	r3, [pc, #256]	; (43d0 <fsm_work+0x1c0>)
    42ce:	601a      	str	r2, [r3, #0]
    42d0:	4b3f      	ldr	r3, [pc, #252]	; (43d0 <fsm_work+0x1c0>)
    42d2:	681b      	ldr	r3, [r3, #0]
    42d4:	2b00      	cmp	r3, #0
    42d6:	d10c      	bne.n	42f2 <fsm_work+0xe2>
    42d8:	4b3e      	ldr	r3, [pc, #248]	; (43d4 <fsm_work+0x1c4>)
    42da:	4a3f      	ldr	r2, [pc, #252]	; (43d8 <fsm_work+0x1c8>)
    42dc:	601a      	str	r2, [r3, #0]
    42de:	4b3f      	ldr	r3, [pc, #252]	; (43dc <fsm_work+0x1cc>)
    42e0:	2204      	movs	r2, #4
    42e2:	701a      	strb	r2, [r3, #0]
    42e4:	2000      	movs	r0, #0
    42e6:	f7fb ff3f 	bl	168 <dut_set_speed>
    42ea:	2000      	movs	r0, #0
    42ec:	f7fb ff4c 	bl	188 <dut_set_torque>
    42f0:	e057      	b.n	43a2 <fsm_work+0x192>
    42f2:	4b2f      	ldr	r3, [pc, #188]	; (43b0 <fsm_work+0x1a0>)
    42f4:	681a      	ldr	r2, [r3, #0]
    42f6:	4b2f      	ldr	r3, [pc, #188]	; (43b4 <fsm_work+0x1a4>)
    42f8:	601a      	str	r2, [r3, #0]
    42fa:	4b2d      	ldr	r3, [pc, #180]	; (43b0 <fsm_work+0x1a0>)
    42fc:	685a      	ldr	r2, [r3, #4]
    42fe:	4b2a      	ldr	r3, [pc, #168]	; (43a8 <fsm_work+0x198>)
    4300:	601a      	str	r2, [r3, #0]
    4302:	4b2d      	ldr	r3, [pc, #180]	; (43b8 <fsm_work+0x1a8>)
    4304:	681a      	ldr	r2, [r3, #0]
    4306:	4b2d      	ldr	r3, [pc, #180]	; (43bc <fsm_work+0x1ac>)
    4308:	601a      	str	r2, [r3, #0]
    430a:	4b2b      	ldr	r3, [pc, #172]	; (43b8 <fsm_work+0x1a8>)
    430c:	685a      	ldr	r2, [r3, #4]
    430e:	4b2c      	ldr	r3, [pc, #176]	; (43c0 <fsm_work+0x1b0>)
    4310:	601a      	str	r2, [r3, #0]
    4312:	4b2c      	ldr	r3, [pc, #176]	; (43c4 <fsm_work+0x1b4>)
    4314:	681a      	ldr	r2, [r3, #0]
    4316:	4b2c      	ldr	r3, [pc, #176]	; (43c8 <fsm_work+0x1b8>)
    4318:	601a      	str	r2, [r3, #0]
    431a:	e042      	b.n	43a2 <fsm_work+0x192>
    431c:	4b27      	ldr	r3, [pc, #156]	; (43bc <fsm_work+0x1ac>)
    431e:	681b      	ldr	r3, [r3, #0]
    4320:	009b      	lsls	r3, r3, #2
    4322:	0019      	movs	r1, r3
    4324:	4b23      	ldr	r3, [pc, #140]	; (43b4 <fsm_work+0x1a4>)
    4326:	681b      	ldr	r3, [r3, #0]
    4328:	001a      	movs	r2, r3
    432a:	697b      	ldr	r3, [r7, #20]
    432c:	1a9a      	subs	r2, r3, r2
    432e:	4b26      	ldr	r3, [pc, #152]	; (43c8 <fsm_work+0x1b8>)
    4330:	681b      	ldr	r3, [r3, #0]
    4332:	4353      	muls	r3, r2
    4334:	18cb      	adds	r3, r1, r3
    4336:	60fb      	str	r3, [r7, #12]
    4338:	4b24      	ldr	r3, [pc, #144]	; (43cc <fsm_work+0x1bc>)
    433a:	681b      	ldr	r3, [r3, #0]
    433c:	2b00      	cmp	r3, #0
    433e:	d006      	beq.n	434e <fsm_work+0x13e>
    4340:	68fb      	ldr	r3, [r7, #12]
    4342:	109b      	asrs	r3, r3, #2
    4344:	425b      	negs	r3, r3
    4346:	0018      	movs	r0, r3
    4348:	f7fb ff1e 	bl	188 <dut_set_torque>
    434c:	e004      	b.n	4358 <fsm_work+0x148>
    434e:	68fb      	ldr	r3, [r7, #12]
    4350:	109b      	asrs	r3, r3, #2
    4352:	0018      	movs	r0, r3
    4354:	f7fb ff18 	bl	188 <dut_set_torque>
    4358:	231f      	movs	r3, #31
    435a:	18fb      	adds	r3, r7, r3
    435c:	781b      	ldrb	r3, [r3, #0]
    435e:	2b03      	cmp	r3, #3
    4360:	d114      	bne.n	438c <fsm_work+0x17c>
    4362:	4b1c      	ldr	r3, [pc, #112]	; (43d4 <fsm_work+0x1c4>)
    4364:	4a1c      	ldr	r2, [pc, #112]	; (43d8 <fsm_work+0x1c8>)
    4366:	601a      	str	r2, [r3, #0]
    4368:	4b1c      	ldr	r3, [pc, #112]	; (43dc <fsm_work+0x1cc>)
    436a:	2204      	movs	r2, #4
    436c:	701a      	strb	r2, [r3, #0]
    436e:	2000      	movs	r0, #0
    4370:	f7fb fefa 	bl	168 <dut_set_speed>
    4374:	2000      	movs	r0, #0
    4376:	f7fb ff07 	bl	188 <dut_set_torque>
    437a:	f7fb fee9 	bl	150 <dut_reset_on>
    437e:	4b14      	ldr	r3, [pc, #80]	; (43d0 <fsm_work+0x1c0>)
    4380:	2200      	movs	r2, #0
    4382:	601a      	str	r2, [r3, #0]
    4384:	4b09      	ldr	r3, [pc, #36]	; (43ac <fsm_work+0x19c>)
    4386:	2200      	movs	r2, #0
    4388:	601a      	str	r2, [r3, #0]
    438a:	e00a      	b.n	43a2 <fsm_work+0x192>
    438c:	231f      	movs	r3, #31
    438e:	18fb      	adds	r3, r7, r3
    4390:	781b      	ldrb	r3, [r3, #0]
    4392:	2b02      	cmp	r3, #2
    4394:	d105      	bne.n	43a2 <fsm_work+0x192>
    4396:	4b0f      	ldr	r3, [pc, #60]	; (43d4 <fsm_work+0x1c4>)
    4398:	4a11      	ldr	r2, [pc, #68]	; (43e0 <fsm_work+0x1d0>)
    439a:	601a      	str	r2, [r3, #0]
    439c:	4b0f      	ldr	r3, [pc, #60]	; (43dc <fsm_work+0x1cc>)
    439e:	2202      	movs	r2, #2
    43a0:	701a      	strb	r2, [r3, #0]
    43a2:	46bd      	mov	sp, r7
    43a4:	b008      	add	sp, #32
    43a6:	bd80      	pop	{r7, pc}
    43a8:	20005fc0 	.word	0x20005fc0
    43ac:	2000600c 	.word	0x2000600c
    43b0:	20005fcc 	.word	0x20005fcc
    43b4:	20005fbc 	.word	0x20005fbc
    43b8:	20005fe0 	.word	0x20005fe0
    43bc:	20005fc4 	.word	0x20005fc4
    43c0:	20005fc8 	.word	0x20005fc8
    43c4:	20005ff4 	.word	0x20005ff4
    43c8:	20005fb8 	.word	0x20005fb8
    43cc:	20006010 	.word	0x20006010
    43d0:	20006008 	.word	0x20006008
    43d4:	20000010 	.word	0x20000010
    43d8:	000043e5 	.word	0x000043e5
    43dc:	2000603c 	.word	0x2000603c
    43e0:	00004425 	.word	0x00004425

000043e4 <fsm_clean>:
    43e4:	b580      	push	{r7, lr}
    43e6:	b084      	sub	sp, #16
    43e8:	af00      	add	r7, sp, #0
    43ea:	6078      	str	r0, [r7, #4]
    43ec:	230f      	movs	r3, #15
    43ee:	18fb      	adds	r3, r7, r3
    43f0:	687a      	ldr	r2, [r7, #4]
    43f2:	701a      	strb	r2, [r3, #0]
    43f4:	230f      	movs	r3, #15
    43f6:	18fb      	adds	r3, r7, r3
    43f8:	781b      	ldrb	r3, [r3, #0]
    43fa:	2b04      	cmp	r3, #4
    43fc:	d107      	bne.n	440e <fsm_clean+0x2a>
    43fe:	4b06      	ldr	r3, [pc, #24]	; (4418 <fsm_clean+0x34>)
    4400:	4a06      	ldr	r2, [pc, #24]	; (441c <fsm_clean+0x38>)
    4402:	601a      	str	r2, [r3, #0]
    4404:	4b06      	ldr	r3, [pc, #24]	; (4420 <fsm_clean+0x3c>)
    4406:	2200      	movs	r2, #0
    4408:	701a      	strb	r2, [r3, #0]
    440a:	f7fb fe95 	bl	138 <dut_reset_off>
    440e:	46c0      	nop			; (mov r8, r8)
    4410:	46bd      	mov	sp, r7
    4412:	b004      	add	sp, #16
    4414:	bd80      	pop	{r7, pc}
    4416:	46c0      	nop			; (mov r8, r8)
    4418:	20000010 	.word	0x20000010
    441c:	0000407d 	.word	0x0000407d
    4420:	2000603c 	.word	0x2000603c

00004424 <fsm_complete>:
    4424:	b580      	push	{r7, lr}
    4426:	b088      	sub	sp, #32
    4428:	af00      	add	r7, sp, #0
    442a:	6078      	str	r0, [r7, #4]
    442c:	231f      	movs	r3, #31
    442e:	18fb      	adds	r3, r7, r3
    4430:	687a      	ldr	r2, [r7, #4]
    4432:	701a      	strb	r2, [r3, #0]
    4434:	687b      	ldr	r3, [r7, #4]
    4436:	0a1b      	lsrs	r3, r3, #8
    4438:	61bb      	str	r3, [r7, #24]
    443a:	231f      	movs	r3, #31
    443c:	18fb      	adds	r3, r7, r3
    443e:	781b      	ldrb	r3, [r3, #0]
    4440:	2b04      	cmp	r3, #4
    4442:	d175      	bne.n	4530 <fsm_complete+0x10c>
    4444:	69bb      	ldr	r3, [r7, #24]
    4446:	617b      	str	r3, [r7, #20]
    4448:	2300      	movs	r3, #0
    444a:	613b      	str	r3, [r7, #16]
    444c:	f7fb fe74 	bl	138 <dut_reset_off>
    4450:	4b45      	ldr	r3, [pc, #276]	; (4568 <fsm_complete+0x144>)
    4452:	681b      	ldr	r3, [r3, #0]
    4454:	001a      	movs	r2, r3
    4456:	697b      	ldr	r3, [r7, #20]
    4458:	4293      	cmp	r3, r2
    445a:	d356      	bcc.n	450a <fsm_complete+0xe6>
    445c:	4b43      	ldr	r3, [pc, #268]	; (456c <fsm_complete+0x148>)
    445e:	681b      	ldr	r3, [r3, #0]
    4460:	1c5a      	adds	r2, r3, #1
    4462:	4b42      	ldr	r3, [pc, #264]	; (456c <fsm_complete+0x148>)
    4464:	601a      	str	r2, [r3, #0]
    4466:	4b41      	ldr	r3, [pc, #260]	; (456c <fsm_complete+0x148>)
    4468:	681b      	ldr	r3, [r3, #0]
    446a:	2b03      	cmp	r3, #3
    446c:	d825      	bhi.n	44ba <fsm_complete+0x96>
    446e:	4b3f      	ldr	r3, [pc, #252]	; (456c <fsm_complete+0x148>)
    4470:	681a      	ldr	r2, [r3, #0]
    4472:	4b3f      	ldr	r3, [pc, #252]	; (4570 <fsm_complete+0x14c>)
    4474:	0092      	lsls	r2, r2, #2
    4476:	58d2      	ldr	r2, [r2, r3]
    4478:	4b3e      	ldr	r3, [pc, #248]	; (4574 <fsm_complete+0x150>)
    447a:	601a      	str	r2, [r3, #0]
    447c:	4b3b      	ldr	r3, [pc, #236]	; (456c <fsm_complete+0x148>)
    447e:	681b      	ldr	r3, [r3, #0]
    4480:	1c5a      	adds	r2, r3, #1
    4482:	4b3b      	ldr	r3, [pc, #236]	; (4570 <fsm_complete+0x14c>)
    4484:	0092      	lsls	r2, r2, #2
    4486:	58d2      	ldr	r2, [r2, r3]
    4488:	4b37      	ldr	r3, [pc, #220]	; (4568 <fsm_complete+0x144>)
    448a:	601a      	str	r2, [r3, #0]
    448c:	4b37      	ldr	r3, [pc, #220]	; (456c <fsm_complete+0x148>)
    448e:	681a      	ldr	r2, [r3, #0]
    4490:	4b39      	ldr	r3, [pc, #228]	; (4578 <fsm_complete+0x154>)
    4492:	0092      	lsls	r2, r2, #2
    4494:	58d2      	ldr	r2, [r2, r3]
    4496:	4b39      	ldr	r3, [pc, #228]	; (457c <fsm_complete+0x158>)
    4498:	601a      	str	r2, [r3, #0]
    449a:	4b34      	ldr	r3, [pc, #208]	; (456c <fsm_complete+0x148>)
    449c:	681b      	ldr	r3, [r3, #0]
    449e:	1c5a      	adds	r2, r3, #1
    44a0:	4b35      	ldr	r3, [pc, #212]	; (4578 <fsm_complete+0x154>)
    44a2:	0092      	lsls	r2, r2, #2
    44a4:	58d2      	ldr	r2, [r2, r3]
    44a6:	4b36      	ldr	r3, [pc, #216]	; (4580 <fsm_complete+0x15c>)
    44a8:	601a      	str	r2, [r3, #0]
    44aa:	4b30      	ldr	r3, [pc, #192]	; (456c <fsm_complete+0x148>)
    44ac:	681a      	ldr	r2, [r3, #0]
    44ae:	4b35      	ldr	r3, [pc, #212]	; (4584 <fsm_complete+0x160>)
    44b0:	0092      	lsls	r2, r2, #2
    44b2:	58d2      	ldr	r2, [r2, r3]
    44b4:	4b34      	ldr	r3, [pc, #208]	; (4588 <fsm_complete+0x164>)
    44b6:	601a      	str	r2, [r3, #0]
    44b8:	e027      	b.n	450a <fsm_complete+0xe6>
    44ba:	4b2c      	ldr	r3, [pc, #176]	; (456c <fsm_complete+0x148>)
    44bc:	2200      	movs	r2, #0
    44be:	601a      	str	r2, [r3, #0]
    44c0:	4b32      	ldr	r3, [pc, #200]	; (458c <fsm_complete+0x168>)
    44c2:	681b      	ldr	r3, [r3, #0]
    44c4:	1e5a      	subs	r2, r3, #1
    44c6:	4b31      	ldr	r3, [pc, #196]	; (458c <fsm_complete+0x168>)
    44c8:	601a      	str	r2, [r3, #0]
    44ca:	4b30      	ldr	r3, [pc, #192]	; (458c <fsm_complete+0x168>)
    44cc:	681b      	ldr	r3, [r3, #0]
    44ce:	2b00      	cmp	r3, #0
    44d0:	d10e      	bne.n	44f0 <fsm_complete+0xcc>
    44d2:	4b2f      	ldr	r3, [pc, #188]	; (4590 <fsm_complete+0x16c>)
    44d4:	4a2f      	ldr	r2, [pc, #188]	; (4594 <fsm_complete+0x170>)
    44d6:	601a      	str	r2, [r3, #0]
    44d8:	4b2f      	ldr	r3, [pc, #188]	; (4598 <fsm_complete+0x174>)
    44da:	2204      	movs	r2, #4
    44dc:	701a      	strb	r2, [r3, #0]
    44de:	2000      	movs	r0, #0
    44e0:	f7fb fe42 	bl	168 <dut_set_speed>
    44e4:	2000      	movs	r0, #0
    44e6:	f7fb fe4f 	bl	188 <dut_set_torque>
    44ea:	f7fb fe31 	bl	150 <dut_reset_on>
    44ee:	e038      	b.n	4562 <fsm_complete+0x13e>
    44f0:	2000      	movs	r0, #0
    44f2:	f7fb fe39 	bl	168 <dut_set_speed>
    44f6:	2000      	movs	r0, #0
    44f8:	f7fb fe46 	bl	188 <dut_set_torque>
    44fc:	4b24      	ldr	r3, [pc, #144]	; (4590 <fsm_complete+0x16c>)
    44fe:	4a27      	ldr	r2, [pc, #156]	; (459c <fsm_complete+0x178>)
    4500:	601a      	str	r2, [r3, #0]
    4502:	4b25      	ldr	r3, [pc, #148]	; (4598 <fsm_complete+0x174>)
    4504:	2203      	movs	r2, #3
    4506:	701a      	strb	r2, [r3, #0]
    4508:	e02b      	b.n	4562 <fsm_complete+0x13e>
    450a:	4b1c      	ldr	r3, [pc, #112]	; (457c <fsm_complete+0x158>)
    450c:	681b      	ldr	r3, [r3, #0]
    450e:	009b      	lsls	r3, r3, #2
    4510:	0019      	movs	r1, r3
    4512:	4b18      	ldr	r3, [pc, #96]	; (4574 <fsm_complete+0x150>)
    4514:	681b      	ldr	r3, [r3, #0]
    4516:	001a      	movs	r2, r3
    4518:	697b      	ldr	r3, [r7, #20]
    451a:	1a9a      	subs	r2, r3, r2
    451c:	4b1a      	ldr	r3, [pc, #104]	; (4588 <fsm_complete+0x164>)
    451e:	681b      	ldr	r3, [r3, #0]
    4520:	4353      	muls	r3, r2
    4522:	18cb      	adds	r3, r1, r3
    4524:	60fb      	str	r3, [r7, #12]
    4526:	68fb      	ldr	r3, [r7, #12]
    4528:	109b      	asrs	r3, r3, #2
    452a:	0018      	movs	r0, r3
    452c:	f7fb fe2c 	bl	188 <dut_set_torque>
    4530:	231f      	movs	r3, #31
    4532:	18fb      	adds	r3, r7, r3
    4534:	781b      	ldrb	r3, [r3, #0]
    4536:	2b03      	cmp	r3, #3
    4538:	d113      	bne.n	4562 <fsm_complete+0x13e>
    453a:	4b15      	ldr	r3, [pc, #84]	; (4590 <fsm_complete+0x16c>)
    453c:	4a15      	ldr	r2, [pc, #84]	; (4594 <fsm_complete+0x170>)
    453e:	601a      	str	r2, [r3, #0]
    4540:	4b15      	ldr	r3, [pc, #84]	; (4598 <fsm_complete+0x174>)
    4542:	2204      	movs	r2, #4
    4544:	701a      	strb	r2, [r3, #0]
    4546:	2000      	movs	r0, #0
    4548:	f7fb fe0e 	bl	168 <dut_set_speed>
    454c:	2000      	movs	r0, #0
    454e:	f7fb fe1b 	bl	188 <dut_set_torque>
    4552:	f7fb fdfd 	bl	150 <dut_reset_on>
    4556:	4b0d      	ldr	r3, [pc, #52]	; (458c <fsm_complete+0x168>)
    4558:	2200      	movs	r2, #0
    455a:	601a      	str	r2, [r3, #0]
    455c:	4b03      	ldr	r3, [pc, #12]	; (456c <fsm_complete+0x148>)
    455e:	2200      	movs	r2, #0
    4560:	601a      	str	r2, [r3, #0]
    4562:	46bd      	mov	sp, r7
    4564:	b008      	add	sp, #32
    4566:	bd80      	pop	{r7, pc}
    4568:	20005fc0 	.word	0x20005fc0
    456c:	2000600c 	.word	0x2000600c
    4570:	20005fcc 	.word	0x20005fcc
    4574:	20005fbc 	.word	0x20005fbc
    4578:	20005fe0 	.word	0x20005fe0
    457c:	20005fc4 	.word	0x20005fc4
    4580:	20005fc8 	.word	0x20005fc8
    4584:	20005ff4 	.word	0x20005ff4
    4588:	20005fb8 	.word	0x20005fb8
    458c:	20006008 	.word	0x20006008
    4590:	20000010 	.word	0x20000010
    4594:	000043e5 	.word	0x000043e5
    4598:	2000603c 	.word	0x2000603c
    459c:	000045a1 	.word	0x000045a1

000045a0 <fsm_wait>:
    45a0:	b580      	push	{r7, lr}
    45a2:	b084      	sub	sp, #16
    45a4:	af00      	add	r7, sp, #0
    45a6:	6078      	str	r0, [r7, #4]
    45a8:	230f      	movs	r3, #15
    45aa:	18fb      	adds	r3, r7, r3
    45ac:	687a      	ldr	r2, [r7, #4]
    45ae:	701a      	strb	r2, [r3, #0]
    45b0:	230f      	movs	r3, #15
    45b2:	18fb      	adds	r3, r7, r3
    45b4:	781b      	ldrb	r3, [r3, #0]
    45b6:	2b01      	cmp	r3, #1
    45b8:	d128      	bne.n	460c <fsm_wait+0x6c>
    45ba:	4b20      	ldr	r3, [pc, #128]	; (463c <fsm_wait+0x9c>)
    45bc:	4a20      	ldr	r2, [pc, #128]	; (4640 <fsm_wait+0xa0>)
    45be:	601a      	str	r2, [r3, #0]
    45c0:	4b20      	ldr	r3, [pc, #128]	; (4644 <fsm_wait+0xa4>)
    45c2:	2201      	movs	r2, #1
    45c4:	701a      	strb	r2, [r3, #0]
    45c6:	4b20      	ldr	r3, [pc, #128]	; (4648 <fsm_wait+0xa8>)
    45c8:	2200      	movs	r2, #0
    45ca:	601a      	str	r2, [r3, #0]
    45cc:	4b1f      	ldr	r3, [pc, #124]	; (464c <fsm_wait+0xac>)
    45ce:	681a      	ldr	r2, [r3, #0]
    45d0:	4b1f      	ldr	r3, [pc, #124]	; (4650 <fsm_wait+0xb0>)
    45d2:	601a      	str	r2, [r3, #0]
    45d4:	4b1d      	ldr	r3, [pc, #116]	; (464c <fsm_wait+0xac>)
    45d6:	685a      	ldr	r2, [r3, #4]
    45d8:	4b1e      	ldr	r3, [pc, #120]	; (4654 <fsm_wait+0xb4>)
    45da:	601a      	str	r2, [r3, #0]
    45dc:	4b1e      	ldr	r3, [pc, #120]	; (4658 <fsm_wait+0xb8>)
    45de:	681a      	ldr	r2, [r3, #0]
    45e0:	4b1e      	ldr	r3, [pc, #120]	; (465c <fsm_wait+0xbc>)
    45e2:	601a      	str	r2, [r3, #0]
    45e4:	4b1c      	ldr	r3, [pc, #112]	; (4658 <fsm_wait+0xb8>)
    45e6:	685a      	ldr	r2, [r3, #4]
    45e8:	4b1d      	ldr	r3, [pc, #116]	; (4660 <fsm_wait+0xc0>)
    45ea:	601a      	str	r2, [r3, #0]
    45ec:	4b1d      	ldr	r3, [pc, #116]	; (4664 <fsm_wait+0xc4>)
    45ee:	681a      	ldr	r2, [r3, #0]
    45f0:	4b1d      	ldr	r3, [pc, #116]	; (4668 <fsm_wait+0xc8>)
    45f2:	601a      	str	r2, [r3, #0]
    45f4:	4b1d      	ldr	r3, [pc, #116]	; (466c <fsm_wait+0xcc>)
    45f6:	685b      	ldr	r3, [r3, #4]
    45f8:	0018      	movs	r0, r3
    45fa:	f7fb fdb5 	bl	168 <dut_set_speed>
    45fe:	4b17      	ldr	r3, [pc, #92]	; (465c <fsm_wait+0xbc>)
    4600:	681b      	ldr	r3, [r3, #0]
    4602:	0018      	movs	r0, r3
    4604:	f7fb fdc0 	bl	188 <dut_set_torque>
    4608:	f7fb fda2 	bl	150 <dut_reset_on>
    460c:	230f      	movs	r3, #15
    460e:	18fb      	adds	r3, r7, r3
    4610:	781b      	ldrb	r3, [r3, #0]
    4612:	2b03      	cmp	r3, #3
    4614:	d10d      	bne.n	4632 <fsm_wait+0x92>
    4616:	4b09      	ldr	r3, [pc, #36]	; (463c <fsm_wait+0x9c>)
    4618:	4a15      	ldr	r2, [pc, #84]	; (4670 <fsm_wait+0xd0>)
    461a:	601a      	str	r2, [r3, #0]
    461c:	4b09      	ldr	r3, [pc, #36]	; (4644 <fsm_wait+0xa4>)
    461e:	2204      	movs	r2, #4
    4620:	701a      	strb	r2, [r3, #0]
    4622:	f7fb fd95 	bl	150 <dut_reset_on>
    4626:	4b13      	ldr	r3, [pc, #76]	; (4674 <fsm_wait+0xd4>)
    4628:	2200      	movs	r2, #0
    462a:	601a      	str	r2, [r3, #0]
    462c:	4b06      	ldr	r3, [pc, #24]	; (4648 <fsm_wait+0xa8>)
    462e:	2200      	movs	r2, #0
    4630:	601a      	str	r2, [r3, #0]
    4632:	46c0      	nop			; (mov r8, r8)
    4634:	46bd      	mov	sp, r7
    4636:	b004      	add	sp, #16
    4638:	bd80      	pop	{r7, pc}
    463a:	46c0      	nop			; (mov r8, r8)
    463c:	20000010 	.word	0x20000010
    4640:	00004211 	.word	0x00004211
    4644:	2000603c 	.word	0x2000603c
    4648:	2000600c 	.word	0x2000600c
    464c:	20005fcc 	.word	0x20005fcc
    4650:	20005fbc 	.word	0x20005fbc
    4654:	20005fc0 	.word	0x20005fc0
    4658:	20005fe0 	.word	0x20005fe0
    465c:	20005fc4 	.word	0x20005fc4
    4660:	20005fc8 	.word	0x20005fc8
    4664:	20005ff4 	.word	0x20005ff4
    4668:	20005fb8 	.word	0x20005fb8
    466c:	20006014 	.word	0x20006014
    4670:	000043e5 	.word	0x000043e5
    4674:	20006008 	.word	0x20006008

00004678 <__aeabi_uidiv>:
    4678:	2200      	movs	r2, #0
    467a:	0843      	lsrs	r3, r0, #1
    467c:	428b      	cmp	r3, r1
    467e:	d374      	bcc.n	476a <__aeabi_uidiv+0xf2>
    4680:	0903      	lsrs	r3, r0, #4
    4682:	428b      	cmp	r3, r1
    4684:	d35f      	bcc.n	4746 <__aeabi_uidiv+0xce>
    4686:	0a03      	lsrs	r3, r0, #8
    4688:	428b      	cmp	r3, r1
    468a:	d344      	bcc.n	4716 <__aeabi_uidiv+0x9e>
    468c:	0b03      	lsrs	r3, r0, #12
    468e:	428b      	cmp	r3, r1
    4690:	d328      	bcc.n	46e4 <__aeabi_uidiv+0x6c>
    4692:	0c03      	lsrs	r3, r0, #16
    4694:	428b      	cmp	r3, r1
    4696:	d30d      	bcc.n	46b4 <__aeabi_uidiv+0x3c>
    4698:	22ff      	movs	r2, #255	; 0xff
    469a:	0209      	lsls	r1, r1, #8
    469c:	ba12      	rev	r2, r2
    469e:	0c03      	lsrs	r3, r0, #16
    46a0:	428b      	cmp	r3, r1
    46a2:	d302      	bcc.n	46aa <__aeabi_uidiv+0x32>
    46a4:	1212      	asrs	r2, r2, #8
    46a6:	0209      	lsls	r1, r1, #8
    46a8:	d065      	beq.n	4776 <__aeabi_uidiv+0xfe>
    46aa:	0b03      	lsrs	r3, r0, #12
    46ac:	428b      	cmp	r3, r1
    46ae:	d319      	bcc.n	46e4 <__aeabi_uidiv+0x6c>
    46b0:	e000      	b.n	46b4 <__aeabi_uidiv+0x3c>
    46b2:	0a09      	lsrs	r1, r1, #8
    46b4:	0bc3      	lsrs	r3, r0, #15
    46b6:	428b      	cmp	r3, r1
    46b8:	d301      	bcc.n	46be <__aeabi_uidiv+0x46>
    46ba:	03cb      	lsls	r3, r1, #15
    46bc:	1ac0      	subs	r0, r0, r3
    46be:	4152      	adcs	r2, r2
    46c0:	0b83      	lsrs	r3, r0, #14
    46c2:	428b      	cmp	r3, r1
    46c4:	d301      	bcc.n	46ca <__aeabi_uidiv+0x52>
    46c6:	038b      	lsls	r3, r1, #14
    46c8:	1ac0      	subs	r0, r0, r3
    46ca:	4152      	adcs	r2, r2
    46cc:	0b43      	lsrs	r3, r0, #13
    46ce:	428b      	cmp	r3, r1
    46d0:	d301      	bcc.n	46d6 <__aeabi_uidiv+0x5e>
    46d2:	034b      	lsls	r3, r1, #13
    46d4:	1ac0      	subs	r0, r0, r3
    46d6:	4152      	adcs	r2, r2
    46d8:	0b03      	lsrs	r3, r0, #12
    46da:	428b      	cmp	r3, r1
    46dc:	d301      	bcc.n	46e2 <__aeabi_uidiv+0x6a>
    46de:	030b      	lsls	r3, r1, #12
    46e0:	1ac0      	subs	r0, r0, r3
    46e2:	4152      	adcs	r2, r2
    46e4:	0ac3      	lsrs	r3, r0, #11
    46e6:	428b      	cmp	r3, r1
    46e8:	d301      	bcc.n	46ee <__aeabi_uidiv+0x76>
    46ea:	02cb      	lsls	r3, r1, #11
    46ec:	1ac0      	subs	r0, r0, r3
    46ee:	4152      	adcs	r2, r2
    46f0:	0a83      	lsrs	r3, r0, #10
    46f2:	428b      	cmp	r3, r1
    46f4:	d301      	bcc.n	46fa <__aeabi_uidiv+0x82>
    46f6:	028b      	lsls	r3, r1, #10
    46f8:	1ac0      	subs	r0, r0, r3
    46fa:	4152      	adcs	r2, r2
    46fc:	0a43      	lsrs	r3, r0, #9
    46fe:	428b      	cmp	r3, r1
    4700:	d301      	bcc.n	4706 <__aeabi_uidiv+0x8e>
    4702:	024b      	lsls	r3, r1, #9
    4704:	1ac0      	subs	r0, r0, r3
    4706:	4152      	adcs	r2, r2
    4708:	0a03      	lsrs	r3, r0, #8
    470a:	428b      	cmp	r3, r1
    470c:	d301      	bcc.n	4712 <__aeabi_uidiv+0x9a>
    470e:	020b      	lsls	r3, r1, #8
    4710:	1ac0      	subs	r0, r0, r3
    4712:	4152      	adcs	r2, r2
    4714:	d2cd      	bcs.n	46b2 <__aeabi_uidiv+0x3a>
    4716:	09c3      	lsrs	r3, r0, #7
    4718:	428b      	cmp	r3, r1
    471a:	d301      	bcc.n	4720 <__aeabi_uidiv+0xa8>
    471c:	01cb      	lsls	r3, r1, #7
    471e:	1ac0      	subs	r0, r0, r3
    4720:	4152      	adcs	r2, r2
    4722:	0983      	lsrs	r3, r0, #6
    4724:	428b      	cmp	r3, r1
    4726:	d301      	bcc.n	472c <__aeabi_uidiv+0xb4>
    4728:	018b      	lsls	r3, r1, #6
    472a:	1ac0      	subs	r0, r0, r3
    472c:	4152      	adcs	r2, r2
    472e:	0943      	lsrs	r3, r0, #5
    4730:	428b      	cmp	r3, r1
    4732:	d301      	bcc.n	4738 <__aeabi_uidiv+0xc0>
    4734:	014b      	lsls	r3, r1, #5
    4736:	1ac0      	subs	r0, r0, r3
    4738:	4152      	adcs	r2, r2
    473a:	0903      	lsrs	r3, r0, #4
    473c:	428b      	cmp	r3, r1
    473e:	d301      	bcc.n	4744 <__aeabi_uidiv+0xcc>
    4740:	010b      	lsls	r3, r1, #4
    4742:	1ac0      	subs	r0, r0, r3
    4744:	4152      	adcs	r2, r2
    4746:	08c3      	lsrs	r3, r0, #3
    4748:	428b      	cmp	r3, r1
    474a:	d301      	bcc.n	4750 <__aeabi_uidiv+0xd8>
    474c:	00cb      	lsls	r3, r1, #3
    474e:	1ac0      	subs	r0, r0, r3
    4750:	4152      	adcs	r2, r2
    4752:	0883      	lsrs	r3, r0, #2
    4754:	428b      	cmp	r3, r1
    4756:	d301      	bcc.n	475c <__aeabi_uidiv+0xe4>
    4758:	008b      	lsls	r3, r1, #2
    475a:	1ac0      	subs	r0, r0, r3
    475c:	4152      	adcs	r2, r2
    475e:	0843      	lsrs	r3, r0, #1
    4760:	428b      	cmp	r3, r1
    4762:	d301      	bcc.n	4768 <__aeabi_uidiv+0xf0>
    4764:	004b      	lsls	r3, r1, #1
    4766:	1ac0      	subs	r0, r0, r3
    4768:	4152      	adcs	r2, r2
    476a:	1a41      	subs	r1, r0, r1
    476c:	d200      	bcs.n	4770 <__aeabi_uidiv+0xf8>
    476e:	4601      	mov	r1, r0
    4770:	4152      	adcs	r2, r2
    4772:	4610      	mov	r0, r2
    4774:	4770      	bx	lr
    4776:	e7ff      	b.n	4778 <__aeabi_uidiv+0x100>
    4778:	b501      	push	{r0, lr}
    477a:	2000      	movs	r0, #0
    477c:	f000 f8f0 	bl	4960 <__aeabi_idiv0>
    4780:	bd02      	pop	{r1, pc}
    4782:	46c0      	nop			; (mov r8, r8)

00004784 <__aeabi_uidivmod>:
    4784:	2900      	cmp	r1, #0
    4786:	d0f7      	beq.n	4778 <__aeabi_uidiv+0x100>
    4788:	e776      	b.n	4678 <__aeabi_uidiv>
    478a:	4770      	bx	lr

0000478c <__aeabi_idiv>:
    478c:	4603      	mov	r3, r0
    478e:	430b      	orrs	r3, r1
    4790:	d47f      	bmi.n	4892 <__aeabi_idiv+0x106>
    4792:	2200      	movs	r2, #0
    4794:	0843      	lsrs	r3, r0, #1
    4796:	428b      	cmp	r3, r1
    4798:	d374      	bcc.n	4884 <__aeabi_idiv+0xf8>
    479a:	0903      	lsrs	r3, r0, #4
    479c:	428b      	cmp	r3, r1
    479e:	d35f      	bcc.n	4860 <__aeabi_idiv+0xd4>
    47a0:	0a03      	lsrs	r3, r0, #8
    47a2:	428b      	cmp	r3, r1
    47a4:	d344      	bcc.n	4830 <__aeabi_idiv+0xa4>
    47a6:	0b03      	lsrs	r3, r0, #12
    47a8:	428b      	cmp	r3, r1
    47aa:	d328      	bcc.n	47fe <__aeabi_idiv+0x72>
    47ac:	0c03      	lsrs	r3, r0, #16
    47ae:	428b      	cmp	r3, r1
    47b0:	d30d      	bcc.n	47ce <__aeabi_idiv+0x42>
    47b2:	22ff      	movs	r2, #255	; 0xff
    47b4:	0209      	lsls	r1, r1, #8
    47b6:	ba12      	rev	r2, r2
    47b8:	0c03      	lsrs	r3, r0, #16
    47ba:	428b      	cmp	r3, r1
    47bc:	d302      	bcc.n	47c4 <__aeabi_idiv+0x38>
    47be:	1212      	asrs	r2, r2, #8
    47c0:	0209      	lsls	r1, r1, #8
    47c2:	d065      	beq.n	4890 <__aeabi_idiv+0x104>
    47c4:	0b03      	lsrs	r3, r0, #12
    47c6:	428b      	cmp	r3, r1
    47c8:	d319      	bcc.n	47fe <__aeabi_idiv+0x72>
    47ca:	e000      	b.n	47ce <__aeabi_idiv+0x42>
    47cc:	0a09      	lsrs	r1, r1, #8
    47ce:	0bc3      	lsrs	r3, r0, #15
    47d0:	428b      	cmp	r3, r1
    47d2:	d301      	bcc.n	47d8 <__aeabi_idiv+0x4c>
    47d4:	03cb      	lsls	r3, r1, #15
    47d6:	1ac0      	subs	r0, r0, r3
    47d8:	4152      	adcs	r2, r2
    47da:	0b83      	lsrs	r3, r0, #14
    47dc:	428b      	cmp	r3, r1
    47de:	d301      	bcc.n	47e4 <__aeabi_idiv+0x58>
    47e0:	038b      	lsls	r3, r1, #14
    47e2:	1ac0      	subs	r0, r0, r3
    47e4:	4152      	adcs	r2, r2
    47e6:	0b43      	lsrs	r3, r0, #13
    47e8:	428b      	cmp	r3, r1
    47ea:	d301      	bcc.n	47f0 <__aeabi_idiv+0x64>
    47ec:	034b      	lsls	r3, r1, #13
    47ee:	1ac0      	subs	r0, r0, r3
    47f0:	4152      	adcs	r2, r2
    47f2:	0b03      	lsrs	r3, r0, #12
    47f4:	428b      	cmp	r3, r1
    47f6:	d301      	bcc.n	47fc <__aeabi_idiv+0x70>
    47f8:	030b      	lsls	r3, r1, #12
    47fa:	1ac0      	subs	r0, r0, r3
    47fc:	4152      	adcs	r2, r2
    47fe:	0ac3      	lsrs	r3, r0, #11
    4800:	428b      	cmp	r3, r1
    4802:	d301      	bcc.n	4808 <__aeabi_idiv+0x7c>
    4804:	02cb      	lsls	r3, r1, #11
    4806:	1ac0      	subs	r0, r0, r3
    4808:	4152      	adcs	r2, r2
    480a:	0a83      	lsrs	r3, r0, #10
    480c:	428b      	cmp	r3, r1
    480e:	d301      	bcc.n	4814 <__aeabi_idiv+0x88>
    4810:	028b      	lsls	r3, r1, #10
    4812:	1ac0      	subs	r0, r0, r3
    4814:	4152      	adcs	r2, r2
    4816:	0a43      	lsrs	r3, r0, #9
    4818:	428b      	cmp	r3, r1
    481a:	d301      	bcc.n	4820 <__aeabi_idiv+0x94>
    481c:	024b      	lsls	r3, r1, #9
    481e:	1ac0      	subs	r0, r0, r3
    4820:	4152      	adcs	r2, r2
    4822:	0a03      	lsrs	r3, r0, #8
    4824:	428b      	cmp	r3, r1
    4826:	d301      	bcc.n	482c <__aeabi_idiv+0xa0>
    4828:	020b      	lsls	r3, r1, #8
    482a:	1ac0      	subs	r0, r0, r3
    482c:	4152      	adcs	r2, r2
    482e:	d2cd      	bcs.n	47cc <__aeabi_idiv+0x40>
    4830:	09c3      	lsrs	r3, r0, #7
    4832:	428b      	cmp	r3, r1
    4834:	d301      	bcc.n	483a <__aeabi_idiv+0xae>
    4836:	01cb      	lsls	r3, r1, #7
    4838:	1ac0      	subs	r0, r0, r3
    483a:	4152      	adcs	r2, r2
    483c:	0983      	lsrs	r3, r0, #6
    483e:	428b      	cmp	r3, r1
    4840:	d301      	bcc.n	4846 <__aeabi_idiv+0xba>
    4842:	018b      	lsls	r3, r1, #6
    4844:	1ac0      	subs	r0, r0, r3
    4846:	4152      	adcs	r2, r2
    4848:	0943      	lsrs	r3, r0, #5
    484a:	428b      	cmp	r3, r1
    484c:	d301      	bcc.n	4852 <__aeabi_idiv+0xc6>
    484e:	014b      	lsls	r3, r1, #5
    4850:	1ac0      	subs	r0, r0, r3
    4852:	4152      	adcs	r2, r2
    4854:	0903      	lsrs	r3, r0, #4
    4856:	428b      	cmp	r3, r1
    4858:	d301      	bcc.n	485e <__aeabi_idiv+0xd2>
    485a:	010b      	lsls	r3, r1, #4
    485c:	1ac0      	subs	r0, r0, r3
    485e:	4152      	adcs	r2, r2
    4860:	08c3      	lsrs	r3, r0, #3
    4862:	428b      	cmp	r3, r1
    4864:	d301      	bcc.n	486a <__aeabi_idiv+0xde>
    4866:	00cb      	lsls	r3, r1, #3
    4868:	1ac0      	subs	r0, r0, r3
    486a:	4152      	adcs	r2, r2
    486c:	0883      	lsrs	r3, r0, #2
    486e:	428b      	cmp	r3, r1
    4870:	d301      	bcc.n	4876 <__aeabi_idiv+0xea>
    4872:	008b      	lsls	r3, r1, #2
    4874:	1ac0      	subs	r0, r0, r3
    4876:	4152      	adcs	r2, r2
    4878:	0843      	lsrs	r3, r0, #1
    487a:	428b      	cmp	r3, r1
    487c:	d301      	bcc.n	4882 <__aeabi_idiv+0xf6>
    487e:	004b      	lsls	r3, r1, #1
    4880:	1ac0      	subs	r0, r0, r3
    4882:	4152      	adcs	r2, r2
    4884:	1a41      	subs	r1, r0, r1
    4886:	d200      	bcs.n	488a <__aeabi_idiv+0xfe>
    4888:	4601      	mov	r1, r0
    488a:	4152      	adcs	r2, r2
    488c:	4610      	mov	r0, r2
    488e:	4770      	bx	lr
    4890:	e05d      	b.n	494e <__aeabi_idiv+0x1c2>
    4892:	0fca      	lsrs	r2, r1, #31
    4894:	d000      	beq.n	4898 <__aeabi_idiv+0x10c>
    4896:	4249      	negs	r1, r1
    4898:	1003      	asrs	r3, r0, #32
    489a:	d300      	bcc.n	489e <__aeabi_idiv+0x112>
    489c:	4240      	negs	r0, r0
    489e:	4053      	eors	r3, r2
    48a0:	2200      	movs	r2, #0
    48a2:	469c      	mov	ip, r3
    48a4:	0903      	lsrs	r3, r0, #4
    48a6:	428b      	cmp	r3, r1
    48a8:	d32d      	bcc.n	4906 <__aeabi_idiv+0x17a>
    48aa:	0a03      	lsrs	r3, r0, #8
    48ac:	428b      	cmp	r3, r1
    48ae:	d312      	bcc.n	48d6 <__aeabi_idiv+0x14a>
    48b0:	22fc      	movs	r2, #252	; 0xfc
    48b2:	0189      	lsls	r1, r1, #6
    48b4:	ba12      	rev	r2, r2
    48b6:	0a03      	lsrs	r3, r0, #8
    48b8:	428b      	cmp	r3, r1
    48ba:	d30c      	bcc.n	48d6 <__aeabi_idiv+0x14a>
    48bc:	0189      	lsls	r1, r1, #6
    48be:	1192      	asrs	r2, r2, #6
    48c0:	428b      	cmp	r3, r1
    48c2:	d308      	bcc.n	48d6 <__aeabi_idiv+0x14a>
    48c4:	0189      	lsls	r1, r1, #6
    48c6:	1192      	asrs	r2, r2, #6
    48c8:	428b      	cmp	r3, r1
    48ca:	d304      	bcc.n	48d6 <__aeabi_idiv+0x14a>
    48cc:	0189      	lsls	r1, r1, #6
    48ce:	d03a      	beq.n	4946 <__aeabi_idiv+0x1ba>
    48d0:	1192      	asrs	r2, r2, #6
    48d2:	e000      	b.n	48d6 <__aeabi_idiv+0x14a>
    48d4:	0989      	lsrs	r1, r1, #6
    48d6:	09c3      	lsrs	r3, r0, #7
    48d8:	428b      	cmp	r3, r1
    48da:	d301      	bcc.n	48e0 <__aeabi_idiv+0x154>
    48dc:	01cb      	lsls	r3, r1, #7
    48de:	1ac0      	subs	r0, r0, r3
    48e0:	4152      	adcs	r2, r2
    48e2:	0983      	lsrs	r3, r0, #6
    48e4:	428b      	cmp	r3, r1
    48e6:	d301      	bcc.n	48ec <__aeabi_idiv+0x160>
    48e8:	018b      	lsls	r3, r1, #6
    48ea:	1ac0      	subs	r0, r0, r3
    48ec:	4152      	adcs	r2, r2
    48ee:	0943      	lsrs	r3, r0, #5
    48f0:	428b      	cmp	r3, r1
    48f2:	d301      	bcc.n	48f8 <__aeabi_idiv+0x16c>
    48f4:	014b      	lsls	r3, r1, #5
    48f6:	1ac0      	subs	r0, r0, r3
    48f8:	4152      	adcs	r2, r2
    48fa:	0903      	lsrs	r3, r0, #4
    48fc:	428b      	cmp	r3, r1
    48fe:	d301      	bcc.n	4904 <__aeabi_idiv+0x178>
    4900:	010b      	lsls	r3, r1, #4
    4902:	1ac0      	subs	r0, r0, r3
    4904:	4152      	adcs	r2, r2
    4906:	08c3      	lsrs	r3, r0, #3
    4908:	428b      	cmp	r3, r1
    490a:	d301      	bcc.n	4910 <__aeabi_idiv+0x184>
    490c:	00cb      	lsls	r3, r1, #3
    490e:	1ac0      	subs	r0, r0, r3
    4910:	4152      	adcs	r2, r2
    4912:	0883      	lsrs	r3, r0, #2
    4914:	428b      	cmp	r3, r1
    4916:	d301      	bcc.n	491c <__aeabi_idiv+0x190>
    4918:	008b      	lsls	r3, r1, #2
    491a:	1ac0      	subs	r0, r0, r3
    491c:	4152      	adcs	r2, r2
    491e:	d2d9      	bcs.n	48d4 <__aeabi_idiv+0x148>
    4920:	0843      	lsrs	r3, r0, #1
    4922:	428b      	cmp	r3, r1
    4924:	d301      	bcc.n	492a <__aeabi_idiv+0x19e>
    4926:	004b      	lsls	r3, r1, #1
    4928:	1ac0      	subs	r0, r0, r3
    492a:	4152      	adcs	r2, r2
    492c:	1a41      	subs	r1, r0, r1
    492e:	d200      	bcs.n	4932 <__aeabi_idiv+0x1a6>
    4930:	4601      	mov	r1, r0
    4932:	4663      	mov	r3, ip
    4934:	4152      	adcs	r2, r2
    4936:	105b      	asrs	r3, r3, #1
    4938:	4610      	mov	r0, r2
    493a:	d301      	bcc.n	4940 <__aeabi_idiv+0x1b4>
    493c:	4240      	negs	r0, r0
    493e:	2b00      	cmp	r3, #0
    4940:	d500      	bpl.n	4944 <__aeabi_idiv+0x1b8>
    4942:	4249      	negs	r1, r1
    4944:	4770      	bx	lr
    4946:	4663      	mov	r3, ip
    4948:	105b      	asrs	r3, r3, #1
    494a:	d300      	bcc.n	494e <__aeabi_idiv+0x1c2>
    494c:	4240      	negs	r0, r0
    494e:	b501      	push	{r0, lr}
    4950:	2000      	movs	r0, #0
    4952:	f000 f805 	bl	4960 <__aeabi_idiv0>
    4956:	bd02      	pop	{r1, pc}

00004958 <__aeabi_idivmod>:
    4958:	2900      	cmp	r1, #0
    495a:	d0f8      	beq.n	494e <__aeabi_idiv+0x1c2>
    495c:	e716      	b.n	478c <__aeabi_idiv>
    495e:	4770      	bx	lr

00004960 <__aeabi_idiv0>:
    4960:	4770      	bx	lr
    4962:	46c0      	nop			; (mov r8, r8)

00004964 <rt_set_PSP>:
    4964:	f380 8809 	msr	PSP, r0
    4968:	4770      	bx	lr

0000496a <rt_get_PSP>:
    496a:	f3ef 8009 	mrs	r0, PSP
    496e:	4770      	bx	lr

00004970 <os_set_env>:
    4970:	4668      	mov	r0, sp
    4972:	f380 8809 	msr	PSP, r0
    4976:	484a      	ldr	r0, [pc, #296]	; (4aa0 <OS_Tick_Handler+0xa>)
    4978:	7800      	ldrb	r0, [r0, #0]
    497a:	07c0      	lsls	r0, r0, #31
    497c:	d103      	bne.n	4986 <PrivilegedE>
    497e:	2003      	movs	r0, #3
    4980:	f380 8814 	msr	CONTROL, r0
    4984:	4770      	bx	lr

00004986 <PrivilegedE>:
    4986:	2002      	movs	r0, #2
    4988:	f380 8814 	msr	CONTROL, r0
    498c:	4770      	bx	lr

0000498e <_alloc_box>:
    498e:	4b45      	ldr	r3, [pc, #276]	; (4aa4 <OS_Tick_Handler+0xe>)
    4990:	469c      	mov	ip, r3
    4992:	f3ef 8305 	mrs	r3, IPSR
    4996:	061b      	lsls	r3, r3, #24
    4998:	d105      	bne.n	49a6 <PrivilegedA>
    499a:	f3ef 8314 	mrs	r3, CONTROL
    499e:	07db      	lsls	r3, r3, #31
    49a0:	d001      	beq.n	49a6 <PrivilegedA>
    49a2:	df00      	svc	0
    49a4:	4770      	bx	lr

000049a6 <PrivilegedA>:
    49a6:	4760      	bx	ip

000049a8 <_free_box>:
    49a8:	4b3f      	ldr	r3, [pc, #252]	; (4aa8 <OS_Tick_Handler+0x12>)
    49aa:	469c      	mov	ip, r3
    49ac:	f3ef 8305 	mrs	r3, IPSR
    49b0:	061b      	lsls	r3, r3, #24
    49b2:	d105      	bne.n	49c0 <PrivilegedF>
    49b4:	f3ef 8314 	mrs	r3, CONTROL
    49b8:	07db      	lsls	r3, r3, #31
    49ba:	d001      	beq.n	49c0 <PrivilegedF>
    49bc:	df00      	svc	0
    49be:	4770      	bx	lr

000049c0 <PrivilegedF>:
    49c0:	4760      	bx	ip

000049c2 <SVC_Handler>:
    49c2:	f3ef 8009 	mrs	r0, PSP
    49c6:	6981      	ldr	r1, [r0, #24]
    49c8:	3902      	subs	r1, #2
    49ca:	7809      	ldrb	r1, [r1, #0]
    49cc:	2900      	cmp	r1, #0
    49ce:	d12b      	bne.n	4a28 <SVC_User>
    49d0:	46a6      	mov	lr, r4
    49d2:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    49d4:	46a4      	mov	ip, r4
    49d6:	4674      	mov	r4, lr
    49d8:	47e0      	blx	ip
    49da:	f3ef 8309 	mrs	r3, PSP
    49de:	c307      	stmia	r3!, {r0, r1, r2}
    49e0:	4b32      	ldr	r3, [pc, #200]	; (4aac <OS_Tick_Handler+0x16>)
    49e2:	cb06      	ldmia	r3!, {r1, r2}
    49e4:	4291      	cmp	r1, r2
    49e6:	d01c      	beq.n	4a22 <SVC_Exit>
    49e8:	3b08      	subs	r3, #8
    49ea:	2900      	cmp	r1, #0
    49ec:	d00d      	beq.n	4a0a <SVC_Next>
    49ee:	f3ef 8009 	mrs	r0, PSP
    49f2:	3820      	subs	r0, #32
    49f4:	6288      	str	r0, [r1, #40]	; 0x28
    49f6:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    49f8:	4644      	mov	r4, r8
    49fa:	464d      	mov	r5, r9
    49fc:	4656      	mov	r6, sl
    49fe:	465f      	mov	r7, fp
    4a00:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4a02:	b40c      	push	{r2, r3}
    4a04:	f003 fbe8 	bl	81d8 <rt_stk_check>
    4a08:	bc0c      	pop	{r2, r3}

00004a0a <SVC_Next>:
    4a0a:	601a      	str	r2, [r3, #0]
    4a0c:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4a0e:	3010      	adds	r0, #16
    4a10:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4a12:	46a0      	mov	r8, r4
    4a14:	46a9      	mov	r9, r5
    4a16:	46b2      	mov	sl, r6
    4a18:	46bb      	mov	fp, r7
    4a1a:	f380 8809 	msr	PSP, r0
    4a1e:	3820      	subs	r0, #32
    4a20:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004a22 <SVC_Exit>:
    4a22:	2002      	movs	r0, #2
    4a24:	43c0      	mvns	r0, r0
    4a26:	4700      	bx	r0

00004a28 <SVC_User>:
    4a28:	b510      	push	{r4, lr}
    4a2a:	4a21      	ldr	r2, [pc, #132]	; (4ab0 <OS_Tick_Handler+0x1a>)
    4a2c:	6812      	ldr	r2, [r2, #0]
    4a2e:	4291      	cmp	r1, r2
    4a30:	d809      	bhi.n	4a46 <SVC_Done>
    4a32:	4c20      	ldr	r4, [pc, #128]	; (4ab4 <OS_Tick_Handler+0x1e>)
    4a34:	0089      	lsls	r1, r1, #2
    4a36:	5864      	ldr	r4, [r4, r1]
    4a38:	46a6      	mov	lr, r4
    4a3a:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4a3c:	46a4      	mov	ip, r4
    4a3e:	47f0      	blx	lr
    4a40:	f3ef 8409 	mrs	r4, PSP
    4a44:	c40f      	stmia	r4!, {r0, r1, r2, r3}

00004a46 <SVC_Done>:
    4a46:	bd10      	pop	{r4, pc}

00004a48 <PendSV_Handler>:
    4a48:	f003 fb36 	bl	80b8 <rt_pop_req>

00004a4c <Sys_Switch>:
    4a4c:	4b17      	ldr	r3, [pc, #92]	; (4aac <OS_Tick_Handler+0x16>)
    4a4e:	cb06      	ldmia	r3!, {r1, r2}
    4a50:	4291      	cmp	r1, r2
    4a52:	d01a      	beq.n	4a8a <Sys_Exit>
    4a54:	3b08      	subs	r3, #8
    4a56:	f3ef 8009 	mrs	r0, PSP
    4a5a:	3820      	subs	r0, #32
    4a5c:	6288      	str	r0, [r1, #40]	; 0x28
    4a5e:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4a60:	4644      	mov	r4, r8
    4a62:	464d      	mov	r5, r9
    4a64:	4656      	mov	r6, sl
    4a66:	465f      	mov	r7, fp
    4a68:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4a6a:	b40c      	push	{r2, r3}
    4a6c:	f003 fbb4 	bl	81d8 <rt_stk_check>
    4a70:	bc0c      	pop	{r2, r3}
    4a72:	601a      	str	r2, [r3, #0]
    4a74:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4a76:	3010      	adds	r0, #16
    4a78:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4a7a:	46a0      	mov	r8, r4
    4a7c:	46a9      	mov	r9, r5
    4a7e:	46b2      	mov	sl, r6
    4a80:	46bb      	mov	fp, r7
    4a82:	f380 8809 	msr	PSP, r0
    4a86:	3820      	subs	r0, #32
    4a88:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004a8a <Sys_Exit>:
    4a8a:	2002      	movs	r0, #2
    4a8c:	43c0      	mvns	r0, r0
    4a8e:	4700      	bx	r0

00004a90 <SysTick_Handler>:
    4a90:	f003 fb84 	bl	819c <rt_systick>
    4a94:	e7da      	b.n	4a4c <Sys_Switch>

00004a96 <OS_Tick_Handler>:
    4a96:	f003 fb7f 	bl	8198 <os_tick_irqack>
    4a9a:	f003 fb7f 	bl	819c <rt_systick>
    4a9e:	e7d5      	b.n	4a4c <Sys_Switch>
    4aa0:	000088f4 	.word	0x000088f4
    4aa4:	000072d5 	.word	0x000072d5
    4aa8:	00007315 	.word	0x00007315
    4aac:	200060b8 	.word	0x200060b8
    4ab0:	00000000 	.word	0x00000000
    4ab4:	fffffffc 	.word	0xfffffffc

00004ab8 <__aeabi_uldivmod>:
    4ab8:	2b00      	cmp	r3, #0
    4aba:	d111      	bne.n	4ae0 <__aeabi_uldivmod+0x28>
    4abc:	2a00      	cmp	r2, #0
    4abe:	d10f      	bne.n	4ae0 <__aeabi_uldivmod+0x28>
    4ac0:	2900      	cmp	r1, #0
    4ac2:	d100      	bne.n	4ac6 <__aeabi_uldivmod+0xe>
    4ac4:	2800      	cmp	r0, #0
    4ac6:	d002      	beq.n	4ace <__aeabi_uldivmod+0x16>
    4ac8:	2100      	movs	r1, #0
    4aca:	43c9      	mvns	r1, r1
    4acc:	1c08      	adds	r0, r1, #0
    4ace:	b407      	push	{r0, r1, r2}
    4ad0:	4802      	ldr	r0, [pc, #8]	; (4adc <__aeabi_uldivmod+0x24>)
    4ad2:	a102      	add	r1, pc, #8	; (adr r1, 4adc <__aeabi_uldivmod+0x24>)
    4ad4:	1840      	adds	r0, r0, r1
    4ad6:	9002      	str	r0, [sp, #8]
    4ad8:	bd03      	pop	{r0, r1, pc}
    4ada:	46c0      	nop			; (mov r8, r8)
    4adc:	fffffe85 	.word	0xfffffe85
    4ae0:	b403      	push	{r0, r1}
    4ae2:	4668      	mov	r0, sp
    4ae4:	b501      	push	{r0, lr}
    4ae6:	9802      	ldr	r0, [sp, #8]
    4ae8:	f000 f832 	bl	4b50 <__udivmoddi4>
    4aec:	9b01      	ldr	r3, [sp, #4]
    4aee:	469e      	mov	lr, r3
    4af0:	b002      	add	sp, #8
    4af2:	bc0c      	pop	{r2, r3}
    4af4:	4770      	bx	lr
    4af6:	46c0      	nop			; (mov r8, r8)

00004af8 <__aeabi_lmul>:
    4af8:	b5f0      	push	{r4, r5, r6, r7, lr}
    4afa:	464f      	mov	r7, r9
    4afc:	4646      	mov	r6, r8
    4afe:	b4c0      	push	{r6, r7}
    4b00:	0416      	lsls	r6, r2, #16
    4b02:	0c36      	lsrs	r6, r6, #16
    4b04:	4699      	mov	r9, r3
    4b06:	0033      	movs	r3, r6
    4b08:	0405      	lsls	r5, r0, #16
    4b0a:	0c2c      	lsrs	r4, r5, #16
    4b0c:	0c07      	lsrs	r7, r0, #16
    4b0e:	0c15      	lsrs	r5, r2, #16
    4b10:	4363      	muls	r3, r4
    4b12:	437e      	muls	r6, r7
    4b14:	436f      	muls	r7, r5
    4b16:	4365      	muls	r5, r4
    4b18:	0c1c      	lsrs	r4, r3, #16
    4b1a:	19ad      	adds	r5, r5, r6
    4b1c:	1964      	adds	r4, r4, r5
    4b1e:	469c      	mov	ip, r3
    4b20:	42a6      	cmp	r6, r4
    4b22:	d903      	bls.n	4b2c <__aeabi_lmul+0x34>
    4b24:	2380      	movs	r3, #128	; 0x80
    4b26:	025b      	lsls	r3, r3, #9
    4b28:	4698      	mov	r8, r3
    4b2a:	4447      	add	r7, r8
    4b2c:	4663      	mov	r3, ip
    4b2e:	0c25      	lsrs	r5, r4, #16
    4b30:	19ef      	adds	r7, r5, r7
    4b32:	041d      	lsls	r5, r3, #16
    4b34:	464b      	mov	r3, r9
    4b36:	434a      	muls	r2, r1
    4b38:	4343      	muls	r3, r0
    4b3a:	0c2d      	lsrs	r5, r5, #16
    4b3c:	0424      	lsls	r4, r4, #16
    4b3e:	1964      	adds	r4, r4, r5
    4b40:	1899      	adds	r1, r3, r2
    4b42:	19c9      	adds	r1, r1, r7
    4b44:	0020      	movs	r0, r4
    4b46:	bc0c      	pop	{r2, r3}
    4b48:	4690      	mov	r8, r2
    4b4a:	4699      	mov	r9, r3
    4b4c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4b4e:	46c0      	nop			; (mov r8, r8)

00004b50 <__udivmoddi4>:
    4b50:	b5f0      	push	{r4, r5, r6, r7, lr}
    4b52:	464d      	mov	r5, r9
    4b54:	4656      	mov	r6, sl
    4b56:	4644      	mov	r4, r8
    4b58:	465f      	mov	r7, fp
    4b5a:	b4f0      	push	{r4, r5, r6, r7}
    4b5c:	4692      	mov	sl, r2
    4b5e:	b083      	sub	sp, #12
    4b60:	0004      	movs	r4, r0
    4b62:	000d      	movs	r5, r1
    4b64:	4699      	mov	r9, r3
    4b66:	428b      	cmp	r3, r1
    4b68:	d82f      	bhi.n	4bca <__udivmoddi4+0x7a>
    4b6a:	d02c      	beq.n	4bc6 <__udivmoddi4+0x76>
    4b6c:	4649      	mov	r1, r9
    4b6e:	4650      	mov	r0, sl
    4b70:	f000 f8ae 	bl	4cd0 <__clzdi2>
    4b74:	0029      	movs	r1, r5
    4b76:	0006      	movs	r6, r0
    4b78:	0020      	movs	r0, r4
    4b7a:	f000 f8a9 	bl	4cd0 <__clzdi2>
    4b7e:	1a33      	subs	r3, r6, r0
    4b80:	4698      	mov	r8, r3
    4b82:	3b20      	subs	r3, #32
    4b84:	469b      	mov	fp, r3
    4b86:	d500      	bpl.n	4b8a <__udivmoddi4+0x3a>
    4b88:	e074      	b.n	4c74 <__udivmoddi4+0x124>
    4b8a:	4653      	mov	r3, sl
    4b8c:	465a      	mov	r2, fp
    4b8e:	4093      	lsls	r3, r2
    4b90:	001f      	movs	r7, r3
    4b92:	4653      	mov	r3, sl
    4b94:	4642      	mov	r2, r8
    4b96:	4093      	lsls	r3, r2
    4b98:	001e      	movs	r6, r3
    4b9a:	42af      	cmp	r7, r5
    4b9c:	d829      	bhi.n	4bf2 <__udivmoddi4+0xa2>
    4b9e:	d026      	beq.n	4bee <__udivmoddi4+0x9e>
    4ba0:	465b      	mov	r3, fp
    4ba2:	1ba4      	subs	r4, r4, r6
    4ba4:	41bd      	sbcs	r5, r7
    4ba6:	2b00      	cmp	r3, #0
    4ba8:	da00      	bge.n	4bac <__udivmoddi4+0x5c>
    4baa:	e079      	b.n	4ca0 <__udivmoddi4+0x150>
    4bac:	2200      	movs	r2, #0
    4bae:	2300      	movs	r3, #0
    4bb0:	9200      	str	r2, [sp, #0]
    4bb2:	9301      	str	r3, [sp, #4]
    4bb4:	2301      	movs	r3, #1
    4bb6:	465a      	mov	r2, fp
    4bb8:	4093      	lsls	r3, r2
    4bba:	9301      	str	r3, [sp, #4]
    4bbc:	2301      	movs	r3, #1
    4bbe:	4642      	mov	r2, r8
    4bc0:	4093      	lsls	r3, r2
    4bc2:	9300      	str	r3, [sp, #0]
    4bc4:	e019      	b.n	4bfa <__udivmoddi4+0xaa>
    4bc6:	4282      	cmp	r2, r0
    4bc8:	d9d0      	bls.n	4b6c <__udivmoddi4+0x1c>
    4bca:	2200      	movs	r2, #0
    4bcc:	2300      	movs	r3, #0
    4bce:	9200      	str	r2, [sp, #0]
    4bd0:	9301      	str	r3, [sp, #4]
    4bd2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4bd4:	2b00      	cmp	r3, #0
    4bd6:	d001      	beq.n	4bdc <__udivmoddi4+0x8c>
    4bd8:	601c      	str	r4, [r3, #0]
    4bda:	605d      	str	r5, [r3, #4]
    4bdc:	9800      	ldr	r0, [sp, #0]
    4bde:	9901      	ldr	r1, [sp, #4]
    4be0:	b003      	add	sp, #12
    4be2:	bc3c      	pop	{r2, r3, r4, r5}
    4be4:	4690      	mov	r8, r2
    4be6:	4699      	mov	r9, r3
    4be8:	46a2      	mov	sl, r4
    4bea:	46ab      	mov	fp, r5
    4bec:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4bee:	42a3      	cmp	r3, r4
    4bf0:	d9d6      	bls.n	4ba0 <__udivmoddi4+0x50>
    4bf2:	2200      	movs	r2, #0
    4bf4:	2300      	movs	r3, #0
    4bf6:	9200      	str	r2, [sp, #0]
    4bf8:	9301      	str	r3, [sp, #4]
    4bfa:	4643      	mov	r3, r8
    4bfc:	2b00      	cmp	r3, #0
    4bfe:	d0e8      	beq.n	4bd2 <__udivmoddi4+0x82>
    4c00:	07fb      	lsls	r3, r7, #31
    4c02:	0872      	lsrs	r2, r6, #1
    4c04:	431a      	orrs	r2, r3
    4c06:	4646      	mov	r6, r8
    4c08:	087b      	lsrs	r3, r7, #1
    4c0a:	e00e      	b.n	4c2a <__udivmoddi4+0xda>
    4c0c:	42ab      	cmp	r3, r5
    4c0e:	d101      	bne.n	4c14 <__udivmoddi4+0xc4>
    4c10:	42a2      	cmp	r2, r4
    4c12:	d80c      	bhi.n	4c2e <__udivmoddi4+0xde>
    4c14:	1aa4      	subs	r4, r4, r2
    4c16:	419d      	sbcs	r5, r3
    4c18:	2001      	movs	r0, #1
    4c1a:	1924      	adds	r4, r4, r4
    4c1c:	416d      	adcs	r5, r5
    4c1e:	2100      	movs	r1, #0
    4c20:	3e01      	subs	r6, #1
    4c22:	1824      	adds	r4, r4, r0
    4c24:	414d      	adcs	r5, r1
    4c26:	2e00      	cmp	r6, #0
    4c28:	d006      	beq.n	4c38 <__udivmoddi4+0xe8>
    4c2a:	42ab      	cmp	r3, r5
    4c2c:	d9ee      	bls.n	4c0c <__udivmoddi4+0xbc>
    4c2e:	3e01      	subs	r6, #1
    4c30:	1924      	adds	r4, r4, r4
    4c32:	416d      	adcs	r5, r5
    4c34:	2e00      	cmp	r6, #0
    4c36:	d1f8      	bne.n	4c2a <__udivmoddi4+0xda>
    4c38:	465b      	mov	r3, fp
    4c3a:	9800      	ldr	r0, [sp, #0]
    4c3c:	9901      	ldr	r1, [sp, #4]
    4c3e:	1900      	adds	r0, r0, r4
    4c40:	4169      	adcs	r1, r5
    4c42:	2b00      	cmp	r3, #0
    4c44:	db22      	blt.n	4c8c <__udivmoddi4+0x13c>
    4c46:	002b      	movs	r3, r5
    4c48:	465a      	mov	r2, fp
    4c4a:	40d3      	lsrs	r3, r2
    4c4c:	002a      	movs	r2, r5
    4c4e:	4644      	mov	r4, r8
    4c50:	40e2      	lsrs	r2, r4
    4c52:	001c      	movs	r4, r3
    4c54:	465b      	mov	r3, fp
    4c56:	0015      	movs	r5, r2
    4c58:	2b00      	cmp	r3, #0
    4c5a:	db2c      	blt.n	4cb6 <__udivmoddi4+0x166>
    4c5c:	0026      	movs	r6, r4
    4c5e:	409e      	lsls	r6, r3
    4c60:	0033      	movs	r3, r6
    4c62:	0026      	movs	r6, r4
    4c64:	4647      	mov	r7, r8
    4c66:	40be      	lsls	r6, r7
    4c68:	0032      	movs	r2, r6
    4c6a:	1a80      	subs	r0, r0, r2
    4c6c:	4199      	sbcs	r1, r3
    4c6e:	9000      	str	r0, [sp, #0]
    4c70:	9101      	str	r1, [sp, #4]
    4c72:	e7ae      	b.n	4bd2 <__udivmoddi4+0x82>
    4c74:	4642      	mov	r2, r8
    4c76:	2320      	movs	r3, #32
    4c78:	1a9b      	subs	r3, r3, r2
    4c7a:	4652      	mov	r2, sl
    4c7c:	40da      	lsrs	r2, r3
    4c7e:	4641      	mov	r1, r8
    4c80:	0013      	movs	r3, r2
    4c82:	464a      	mov	r2, r9
    4c84:	408a      	lsls	r2, r1
    4c86:	0017      	movs	r7, r2
    4c88:	431f      	orrs	r7, r3
    4c8a:	e782      	b.n	4b92 <__udivmoddi4+0x42>
    4c8c:	4642      	mov	r2, r8
    4c8e:	2320      	movs	r3, #32
    4c90:	1a9b      	subs	r3, r3, r2
    4c92:	002a      	movs	r2, r5
    4c94:	4646      	mov	r6, r8
    4c96:	409a      	lsls	r2, r3
    4c98:	0023      	movs	r3, r4
    4c9a:	40f3      	lsrs	r3, r6
    4c9c:	4313      	orrs	r3, r2
    4c9e:	e7d5      	b.n	4c4c <__udivmoddi4+0xfc>
    4ca0:	4642      	mov	r2, r8
    4ca2:	2320      	movs	r3, #32
    4ca4:	2100      	movs	r1, #0
    4ca6:	1a9b      	subs	r3, r3, r2
    4ca8:	2200      	movs	r2, #0
    4caa:	9100      	str	r1, [sp, #0]
    4cac:	9201      	str	r2, [sp, #4]
    4cae:	2201      	movs	r2, #1
    4cb0:	40da      	lsrs	r2, r3
    4cb2:	9201      	str	r2, [sp, #4]
    4cb4:	e782      	b.n	4bbc <__udivmoddi4+0x6c>
    4cb6:	4642      	mov	r2, r8
    4cb8:	2320      	movs	r3, #32
    4cba:	0026      	movs	r6, r4
    4cbc:	1a9b      	subs	r3, r3, r2
    4cbe:	40de      	lsrs	r6, r3
    4cc0:	002f      	movs	r7, r5
    4cc2:	46b4      	mov	ip, r6
    4cc4:	4097      	lsls	r7, r2
    4cc6:	4666      	mov	r6, ip
    4cc8:	003b      	movs	r3, r7
    4cca:	4333      	orrs	r3, r6
    4ccc:	e7c9      	b.n	4c62 <__udivmoddi4+0x112>
    4cce:	46c0      	nop			; (mov r8, r8)

00004cd0 <__clzdi2>:
    4cd0:	b510      	push	{r4, lr}
    4cd2:	2900      	cmp	r1, #0
    4cd4:	d103      	bne.n	4cde <__clzdi2+0xe>
    4cd6:	f000 f807 	bl	4ce8 <__clzsi2>
    4cda:	3020      	adds	r0, #32
    4cdc:	e002      	b.n	4ce4 <__clzdi2+0x14>
    4cde:	1c08      	adds	r0, r1, #0
    4ce0:	f000 f802 	bl	4ce8 <__clzsi2>
    4ce4:	bd10      	pop	{r4, pc}
    4ce6:	46c0      	nop			; (mov r8, r8)

00004ce8 <__clzsi2>:
    4ce8:	211c      	movs	r1, #28
    4cea:	2301      	movs	r3, #1
    4cec:	041b      	lsls	r3, r3, #16
    4cee:	4298      	cmp	r0, r3
    4cf0:	d301      	bcc.n	4cf6 <__clzsi2+0xe>
    4cf2:	0c00      	lsrs	r0, r0, #16
    4cf4:	3910      	subs	r1, #16
    4cf6:	0a1b      	lsrs	r3, r3, #8
    4cf8:	4298      	cmp	r0, r3
    4cfa:	d301      	bcc.n	4d00 <__clzsi2+0x18>
    4cfc:	0a00      	lsrs	r0, r0, #8
    4cfe:	3908      	subs	r1, #8
    4d00:	091b      	lsrs	r3, r3, #4
    4d02:	4298      	cmp	r0, r3
    4d04:	d301      	bcc.n	4d0a <__clzsi2+0x22>
    4d06:	0900      	lsrs	r0, r0, #4
    4d08:	3904      	subs	r1, #4
    4d0a:	a202      	add	r2, pc, #8	; (adr r2, 4d14 <__clzsi2+0x2c>)
    4d0c:	5c10      	ldrb	r0, [r2, r0]
    4d0e:	1840      	adds	r0, r0, r1
    4d10:	4770      	bx	lr
    4d12:	46c0      	nop			; (mov r8, r8)
    4d14:	02020304 	.word	0x02020304
    4d18:	01010101 	.word	0x01010101
	...

00004d24 <atexit>:
    4d24:	b510      	push	{r4, lr}
    4d26:	0001      	movs	r1, r0
    4d28:	2300      	movs	r3, #0
    4d2a:	2200      	movs	r2, #0
    4d2c:	2000      	movs	r0, #0
    4d2e:	f000 f8ed 	bl	4f0c <__register_exitproc>
    4d32:	bd10      	pop	{r4, pc}

00004d34 <exit>:
    4d34:	b510      	push	{r4, lr}
    4d36:	2100      	movs	r1, #0
    4d38:	0004      	movs	r4, r0
    4d3a:	f000 f95d 	bl	4ff8 <__call_exitprocs>
    4d3e:	4b04      	ldr	r3, [pc, #16]	; (4d50 <exit+0x1c>)
    4d40:	6818      	ldr	r0, [r3, #0]
    4d42:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    4d44:	2b00      	cmp	r3, #0
    4d46:	d000      	beq.n	4d4a <exit+0x16>
    4d48:	4798      	blx	r3
    4d4a:	0020      	movs	r0, r4
    4d4c:	f7fb fe96 	bl	a7c <_exit>
    4d50:	00009374 	.word	0x00009374

00004d54 <__libc_fini_array>:
    4d54:	b570      	push	{r4, r5, r6, lr}
    4d56:	4b09      	ldr	r3, [pc, #36]	; (4d7c <__libc_fini_array+0x28>)
    4d58:	4c09      	ldr	r4, [pc, #36]	; (4d80 <__libc_fini_array+0x2c>)
    4d5a:	1ae4      	subs	r4, r4, r3
    4d5c:	10a4      	asrs	r4, r4, #2
    4d5e:	d009      	beq.n	4d74 <__libc_fini_array+0x20>
    4d60:	4a08      	ldr	r2, [pc, #32]	; (4d84 <__libc_fini_array+0x30>)
    4d62:	18a5      	adds	r5, r4, r2
    4d64:	00ad      	lsls	r5, r5, #2
    4d66:	18ed      	adds	r5, r5, r3
    4d68:	682b      	ldr	r3, [r5, #0]
    4d6a:	3c01      	subs	r4, #1
    4d6c:	4798      	blx	r3
    4d6e:	3d04      	subs	r5, #4
    4d70:	2c00      	cmp	r4, #0
    4d72:	d1f9      	bne.n	4d68 <__libc_fini_array+0x14>
    4d74:	f7fb ffce 	bl	d14 <_fini>
    4d78:	bd70      	pop	{r4, r5, r6, pc}
    4d7a:	46c0      	nop			; (mov r8, r8)
	...
    4d84:	3fffffff 	.word	0x3fffffff

00004d88 <__libc_init_array>:
    4d88:	b570      	push	{r4, r5, r6, lr}
    4d8a:	4e0d      	ldr	r6, [pc, #52]	; (4dc0 <__libc_init_array+0x38>)
    4d8c:	4d0d      	ldr	r5, [pc, #52]	; (4dc4 <__libc_init_array+0x3c>)
    4d8e:	2400      	movs	r4, #0
    4d90:	1bad      	subs	r5, r5, r6
    4d92:	10ad      	asrs	r5, r5, #2
    4d94:	d005      	beq.n	4da2 <__libc_init_array+0x1a>
    4d96:	00a3      	lsls	r3, r4, #2
    4d98:	58f3      	ldr	r3, [r6, r3]
    4d9a:	3401      	adds	r4, #1
    4d9c:	4798      	blx	r3
    4d9e:	42a5      	cmp	r5, r4
    4da0:	d1f9      	bne.n	4d96 <__libc_init_array+0xe>
    4da2:	f7fb ffb1 	bl	d08 <_init>
    4da6:	4e08      	ldr	r6, [pc, #32]	; (4dc8 <__libc_init_array+0x40>)
    4da8:	4d08      	ldr	r5, [pc, #32]	; (4dcc <__libc_init_array+0x44>)
    4daa:	2400      	movs	r4, #0
    4dac:	1bad      	subs	r5, r5, r6
    4dae:	10ad      	asrs	r5, r5, #2
    4db0:	d005      	beq.n	4dbe <__libc_init_array+0x36>
    4db2:	00a3      	lsls	r3, r4, #2
    4db4:	58f3      	ldr	r3, [r6, r3]
    4db6:	3401      	adds	r4, #1
    4db8:	4798      	blx	r3
    4dba:	42a5      	cmp	r5, r4
    4dbc:	d1f9      	bne.n	4db2 <__libc_init_array+0x2a>
    4dbe:	bd70      	pop	{r4, r5, r6, pc}
	...

00004dd0 <memset>:
    4dd0:	b570      	push	{r4, r5, r6, lr}
    4dd2:	0783      	lsls	r3, r0, #30
    4dd4:	d03f      	beq.n	4e56 <memset+0x86>
    4dd6:	1e54      	subs	r4, r2, #1
    4dd8:	2a00      	cmp	r2, #0
    4dda:	d03b      	beq.n	4e54 <memset+0x84>
    4ddc:	b2ce      	uxtb	r6, r1
    4dde:	0003      	movs	r3, r0
    4de0:	2503      	movs	r5, #3
    4de2:	e003      	b.n	4dec <memset+0x1c>
    4de4:	1e62      	subs	r2, r4, #1
    4de6:	2c00      	cmp	r4, #0
    4de8:	d034      	beq.n	4e54 <memset+0x84>
    4dea:	0014      	movs	r4, r2
    4dec:	3301      	adds	r3, #1
    4dee:	1e5a      	subs	r2, r3, #1
    4df0:	7016      	strb	r6, [r2, #0]
    4df2:	422b      	tst	r3, r5
    4df4:	d1f6      	bne.n	4de4 <memset+0x14>
    4df6:	2c03      	cmp	r4, #3
    4df8:	d924      	bls.n	4e44 <memset+0x74>
    4dfa:	25ff      	movs	r5, #255	; 0xff
    4dfc:	400d      	ands	r5, r1
    4dfe:	022a      	lsls	r2, r5, #8
    4e00:	4315      	orrs	r5, r2
    4e02:	042a      	lsls	r2, r5, #16
    4e04:	4315      	orrs	r5, r2
    4e06:	2c0f      	cmp	r4, #15
    4e08:	d911      	bls.n	4e2e <memset+0x5e>
    4e0a:	0026      	movs	r6, r4
    4e0c:	3e10      	subs	r6, #16
    4e0e:	0936      	lsrs	r6, r6, #4
    4e10:	3601      	adds	r6, #1
    4e12:	0136      	lsls	r6, r6, #4
    4e14:	001a      	movs	r2, r3
    4e16:	199b      	adds	r3, r3, r6
    4e18:	6015      	str	r5, [r2, #0]
    4e1a:	6055      	str	r5, [r2, #4]
    4e1c:	6095      	str	r5, [r2, #8]
    4e1e:	60d5      	str	r5, [r2, #12]
    4e20:	3210      	adds	r2, #16
    4e22:	4293      	cmp	r3, r2
    4e24:	d1f8      	bne.n	4e18 <memset+0x48>
    4e26:	220f      	movs	r2, #15
    4e28:	4014      	ands	r4, r2
    4e2a:	2c03      	cmp	r4, #3
    4e2c:	d90a      	bls.n	4e44 <memset+0x74>
    4e2e:	1f26      	subs	r6, r4, #4
    4e30:	08b6      	lsrs	r6, r6, #2
    4e32:	3601      	adds	r6, #1
    4e34:	00b6      	lsls	r6, r6, #2
    4e36:	001a      	movs	r2, r3
    4e38:	199b      	adds	r3, r3, r6
    4e3a:	c220      	stmia	r2!, {r5}
    4e3c:	4293      	cmp	r3, r2
    4e3e:	d1fc      	bne.n	4e3a <memset+0x6a>
    4e40:	2203      	movs	r2, #3
    4e42:	4014      	ands	r4, r2
    4e44:	2c00      	cmp	r4, #0
    4e46:	d005      	beq.n	4e54 <memset+0x84>
    4e48:	b2c9      	uxtb	r1, r1
    4e4a:	191c      	adds	r4, r3, r4
    4e4c:	7019      	strb	r1, [r3, #0]
    4e4e:	3301      	adds	r3, #1
    4e50:	429c      	cmp	r4, r3
    4e52:	d1fb      	bne.n	4e4c <memset+0x7c>
    4e54:	bd70      	pop	{r4, r5, r6, pc}
    4e56:	0014      	movs	r4, r2
    4e58:	0003      	movs	r3, r0
    4e5a:	e7cc      	b.n	4df6 <memset+0x26>

00004e5c <cleanup_glue>:
    4e5c:	b570      	push	{r4, r5, r6, lr}
    4e5e:	000c      	movs	r4, r1
    4e60:	6809      	ldr	r1, [r1, #0]
    4e62:	0005      	movs	r5, r0
    4e64:	2900      	cmp	r1, #0
    4e66:	d001      	beq.n	4e6c <cleanup_glue+0x10>
    4e68:	f7ff fff8 	bl	4e5c <cleanup_glue>
    4e6c:	0028      	movs	r0, r5
    4e6e:	0021      	movs	r1, r4
    4e70:	f000 f990 	bl	5194 <_free_r>
    4e74:	bd70      	pop	{r4, r5, r6, pc}
    4e76:	46c0      	nop			; (mov r8, r8)

00004e78 <_reclaim_reent>:
    4e78:	4b23      	ldr	r3, [pc, #140]	; (4f08 <_reclaim_reent+0x90>)
    4e7a:	b570      	push	{r4, r5, r6, lr}
    4e7c:	681b      	ldr	r3, [r3, #0]
    4e7e:	0005      	movs	r5, r0
    4e80:	4283      	cmp	r3, r0
    4e82:	d034      	beq.n	4eee <_reclaim_reent+0x76>
    4e84:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    4e86:	2b00      	cmp	r3, #0
    4e88:	d011      	beq.n	4eae <_reclaim_reent+0x36>
    4e8a:	2600      	movs	r6, #0
    4e8c:	5999      	ldr	r1, [r3, r6]
    4e8e:	2900      	cmp	r1, #0
    4e90:	d006      	beq.n	4ea0 <_reclaim_reent+0x28>
    4e92:	680c      	ldr	r4, [r1, #0]
    4e94:	0028      	movs	r0, r5
    4e96:	f000 f97d 	bl	5194 <_free_r>
    4e9a:	1e21      	subs	r1, r4, #0
    4e9c:	d1f9      	bne.n	4e92 <_reclaim_reent+0x1a>
    4e9e:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    4ea0:	3604      	adds	r6, #4
    4ea2:	2e80      	cmp	r6, #128	; 0x80
    4ea4:	d1f2      	bne.n	4e8c <_reclaim_reent+0x14>
    4ea6:	0019      	movs	r1, r3
    4ea8:	0028      	movs	r0, r5
    4eaa:	f000 f973 	bl	5194 <_free_r>
    4eae:	6c29      	ldr	r1, [r5, #64]	; 0x40
    4eb0:	2900      	cmp	r1, #0
    4eb2:	d002      	beq.n	4eba <_reclaim_reent+0x42>
    4eb4:	0028      	movs	r0, r5
    4eb6:	f000 f96d 	bl	5194 <_free_r>
    4eba:	23a4      	movs	r3, #164	; 0xa4
    4ebc:	005b      	lsls	r3, r3, #1
    4ebe:	58e9      	ldr	r1, [r5, r3]
    4ec0:	2900      	cmp	r1, #0
    4ec2:	d00b      	beq.n	4edc <_reclaim_reent+0x64>
    4ec4:	002e      	movs	r6, r5
    4ec6:	364d      	adds	r6, #77	; 0x4d
    4ec8:	36ff      	adds	r6, #255	; 0xff
    4eca:	42b1      	cmp	r1, r6
    4ecc:	d006      	beq.n	4edc <_reclaim_reent+0x64>
    4ece:	680c      	ldr	r4, [r1, #0]
    4ed0:	0028      	movs	r0, r5
    4ed2:	f000 f95f 	bl	5194 <_free_r>
    4ed6:	0021      	movs	r1, r4
    4ed8:	42a6      	cmp	r6, r4
    4eda:	d1f8      	bne.n	4ece <_reclaim_reent+0x56>
    4edc:	6d69      	ldr	r1, [r5, #84]	; 0x54
    4ede:	2900      	cmp	r1, #0
    4ee0:	d002      	beq.n	4ee8 <_reclaim_reent+0x70>
    4ee2:	0028      	movs	r0, r5
    4ee4:	f000 f956 	bl	5194 <_free_r>
    4ee8:	6bab      	ldr	r3, [r5, #56]	; 0x38
    4eea:	2b00      	cmp	r3, #0
    4eec:	d100      	bne.n	4ef0 <_reclaim_reent+0x78>
    4eee:	bd70      	pop	{r4, r5, r6, pc}
    4ef0:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    4ef2:	0028      	movs	r0, r5
    4ef4:	4798      	blx	r3
    4ef6:	23b8      	movs	r3, #184	; 0xb8
    4ef8:	009b      	lsls	r3, r3, #2
    4efa:	58e9      	ldr	r1, [r5, r3]
    4efc:	2900      	cmp	r1, #0
    4efe:	d0f6      	beq.n	4eee <_reclaim_reent+0x76>
    4f00:	0028      	movs	r0, r5
    4f02:	f7ff ffab 	bl	4e5c <cleanup_glue>
    4f06:	e7f2      	b.n	4eee <_reclaim_reent+0x76>
    4f08:	20000440 	.word	0x20000440

00004f0c <__register_exitproc>:
    4f0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    4f0e:	4644      	mov	r4, r8
    4f10:	465f      	mov	r7, fp
    4f12:	4656      	mov	r6, sl
    4f14:	464d      	mov	r5, r9
    4f16:	469b      	mov	fp, r3
    4f18:	4b2f      	ldr	r3, [pc, #188]	; (4fd8 <__register_exitproc+0xcc>)
    4f1a:	b4f0      	push	{r4, r5, r6, r7}
    4f1c:	681c      	ldr	r4, [r3, #0]
    4f1e:	23a4      	movs	r3, #164	; 0xa4
    4f20:	005b      	lsls	r3, r3, #1
    4f22:	0005      	movs	r5, r0
    4f24:	58e0      	ldr	r0, [r4, r3]
    4f26:	000e      	movs	r6, r1
    4f28:	4690      	mov	r8, r2
    4f2a:	2800      	cmp	r0, #0
    4f2c:	d04b      	beq.n	4fc6 <__register_exitproc+0xba>
    4f2e:	6843      	ldr	r3, [r0, #4]
    4f30:	2b1f      	cmp	r3, #31
    4f32:	dc0d      	bgt.n	4f50 <__register_exitproc+0x44>
    4f34:	1c5c      	adds	r4, r3, #1
    4f36:	2d00      	cmp	r5, #0
    4f38:	d121      	bne.n	4f7e <__register_exitproc+0x72>
    4f3a:	3302      	adds	r3, #2
    4f3c:	009b      	lsls	r3, r3, #2
    4f3e:	6044      	str	r4, [r0, #4]
    4f40:	501e      	str	r6, [r3, r0]
    4f42:	2000      	movs	r0, #0
    4f44:	bc3c      	pop	{r2, r3, r4, r5}
    4f46:	4690      	mov	r8, r2
    4f48:	4699      	mov	r9, r3
    4f4a:	46a2      	mov	sl, r4
    4f4c:	46ab      	mov	fp, r5
    4f4e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    4f50:	4b22      	ldr	r3, [pc, #136]	; (4fdc <__register_exitproc+0xd0>)
    4f52:	2b00      	cmp	r3, #0
    4f54:	d03c      	beq.n	4fd0 <__register_exitproc+0xc4>
    4f56:	20c8      	movs	r0, #200	; 0xc8
    4f58:	0040      	lsls	r0, r0, #1
    4f5a:	e000      	b.n	4f5e <__register_exitproc+0x52>
    4f5c:	bf00      	nop
    4f5e:	2800      	cmp	r0, #0
    4f60:	d036      	beq.n	4fd0 <__register_exitproc+0xc4>
    4f62:	22a4      	movs	r2, #164	; 0xa4
    4f64:	2300      	movs	r3, #0
    4f66:	0052      	lsls	r2, r2, #1
    4f68:	58a1      	ldr	r1, [r4, r2]
    4f6a:	6043      	str	r3, [r0, #4]
    4f6c:	6001      	str	r1, [r0, #0]
    4f6e:	50a0      	str	r0, [r4, r2]
    4f70:	3240      	adds	r2, #64	; 0x40
    4f72:	5083      	str	r3, [r0, r2]
    4f74:	3204      	adds	r2, #4
    4f76:	5083      	str	r3, [r0, r2]
    4f78:	2401      	movs	r4, #1
    4f7a:	2d00      	cmp	r5, #0
    4f7c:	d0dd      	beq.n	4f3a <__register_exitproc+0x2e>
    4f7e:	009a      	lsls	r2, r3, #2
    4f80:	4691      	mov	r9, r2
    4f82:	4481      	add	r9, r0
    4f84:	4642      	mov	r2, r8
    4f86:	2188      	movs	r1, #136	; 0x88
    4f88:	464f      	mov	r7, r9
    4f8a:	507a      	str	r2, [r7, r1]
    4f8c:	22c4      	movs	r2, #196	; 0xc4
    4f8e:	0052      	lsls	r2, r2, #1
    4f90:	4690      	mov	r8, r2
    4f92:	4480      	add	r8, r0
    4f94:	4642      	mov	r2, r8
    4f96:	3987      	subs	r1, #135	; 0x87
    4f98:	4099      	lsls	r1, r3
    4f9a:	6812      	ldr	r2, [r2, #0]
    4f9c:	468a      	mov	sl, r1
    4f9e:	430a      	orrs	r2, r1
    4fa0:	4694      	mov	ip, r2
    4fa2:	4642      	mov	r2, r8
    4fa4:	4661      	mov	r1, ip
    4fa6:	6011      	str	r1, [r2, #0]
    4fa8:	2284      	movs	r2, #132	; 0x84
    4faa:	4649      	mov	r1, r9
    4fac:	465f      	mov	r7, fp
    4fae:	0052      	lsls	r2, r2, #1
    4fb0:	508f      	str	r7, [r1, r2]
    4fb2:	2d02      	cmp	r5, #2
    4fb4:	d1c1      	bne.n	4f3a <__register_exitproc+0x2e>
    4fb6:	0002      	movs	r2, r0
    4fb8:	4655      	mov	r5, sl
    4fba:	328d      	adds	r2, #141	; 0x8d
    4fbc:	32ff      	adds	r2, #255	; 0xff
    4fbe:	6811      	ldr	r1, [r2, #0]
    4fc0:	430d      	orrs	r5, r1
    4fc2:	6015      	str	r5, [r2, #0]
    4fc4:	e7b9      	b.n	4f3a <__register_exitproc+0x2e>
    4fc6:	0020      	movs	r0, r4
    4fc8:	304d      	adds	r0, #77	; 0x4d
    4fca:	30ff      	adds	r0, #255	; 0xff
    4fcc:	50e0      	str	r0, [r4, r3]
    4fce:	e7ae      	b.n	4f2e <__register_exitproc+0x22>
    4fd0:	2001      	movs	r0, #1
    4fd2:	4240      	negs	r0, r0
    4fd4:	e7b6      	b.n	4f44 <__register_exitproc+0x38>
    4fd6:	46c0      	nop			; (mov r8, r8)
    4fd8:	00009374 	.word	0x00009374
    4fdc:	00000000 	.word	0x00000000

00004fe0 <register_fini>:
    4fe0:	4b03      	ldr	r3, [pc, #12]	; (4ff0 <register_fini+0x10>)
    4fe2:	b510      	push	{r4, lr}
    4fe4:	2b00      	cmp	r3, #0
    4fe6:	d002      	beq.n	4fee <register_fini+0xe>
    4fe8:	4802      	ldr	r0, [pc, #8]	; (4ff4 <register_fini+0x14>)
    4fea:	f7ff fe9b 	bl	4d24 <atexit>
    4fee:	bd10      	pop	{r4, pc}
    4ff0:	00000000 	.word	0x00000000
    4ff4:	00004d55 	.word	0x00004d55

00004ff8 <__call_exitprocs>:
    4ff8:	b5f0      	push	{r4, r5, r6, r7, lr}
    4ffa:	465f      	mov	r7, fp
    4ffc:	4656      	mov	r6, sl
    4ffe:	464d      	mov	r5, r9
    5000:	4644      	mov	r4, r8
    5002:	b4f0      	push	{r4, r5, r6, r7}
    5004:	000f      	movs	r7, r1
    5006:	4b39      	ldr	r3, [pc, #228]	; (50ec <__call_exitprocs+0xf4>)
    5008:	b085      	sub	sp, #20
    500a:	681b      	ldr	r3, [r3, #0]
    500c:	9001      	str	r0, [sp, #4]
    500e:	9302      	str	r3, [sp, #8]
    5010:	3349      	adds	r3, #73	; 0x49
    5012:	33ff      	adds	r3, #255	; 0xff
    5014:	9303      	str	r3, [sp, #12]
    5016:	22a4      	movs	r2, #164	; 0xa4
    5018:	9b02      	ldr	r3, [sp, #8]
    501a:	0052      	lsls	r2, r2, #1
    501c:	589e      	ldr	r6, [r3, r2]
    501e:	2e00      	cmp	r6, #0
    5020:	d04e      	beq.n	50c0 <__call_exitprocs+0xc8>
    5022:	9b03      	ldr	r3, [sp, #12]
    5024:	4699      	mov	r9, r3
    5026:	23c4      	movs	r3, #196	; 0xc4
    5028:	005b      	lsls	r3, r3, #1
    502a:	4698      	mov	r8, r3
    502c:	3304      	adds	r3, #4
    502e:	469a      	mov	sl, r3
    5030:	6874      	ldr	r4, [r6, #4]
    5032:	44b0      	add	r8, r6
    5034:	00a5      	lsls	r5, r4, #2
    5036:	1975      	adds	r5, r6, r5
    5038:	44b2      	add	sl, r6
    503a:	3c01      	subs	r4, #1
    503c:	d508      	bpl.n	5050 <__call_exitprocs+0x58>
    503e:	e02d      	b.n	509c <__call_exitprocs+0xa4>
    5040:	1d6b      	adds	r3, r5, #5
    5042:	33ff      	adds	r3, #255	; 0xff
    5044:	681b      	ldr	r3, [r3, #0]
    5046:	429f      	cmp	r7, r3
    5048:	d004      	beq.n	5054 <__call_exitprocs+0x5c>
    504a:	3d04      	subs	r5, #4
    504c:	3c01      	subs	r4, #1
    504e:	d325      	bcc.n	509c <__call_exitprocs+0xa4>
    5050:	2f00      	cmp	r7, #0
    5052:	d1f5      	bne.n	5040 <__call_exitprocs+0x48>
    5054:	6873      	ldr	r3, [r6, #4]
    5056:	686a      	ldr	r2, [r5, #4]
    5058:	3b01      	subs	r3, #1
    505a:	42a3      	cmp	r3, r4
    505c:	d039      	beq.n	50d2 <__call_exitprocs+0xda>
    505e:	2300      	movs	r3, #0
    5060:	606b      	str	r3, [r5, #4]
    5062:	2a00      	cmp	r2, #0
    5064:	d0f1      	beq.n	504a <__call_exitprocs+0x52>
    5066:	6873      	ldr	r3, [r6, #4]
    5068:	4641      	mov	r1, r8
    506a:	469b      	mov	fp, r3
    506c:	2301      	movs	r3, #1
    506e:	40a3      	lsls	r3, r4
    5070:	6809      	ldr	r1, [r1, #0]
    5072:	4219      	tst	r1, r3
    5074:	d02b      	beq.n	50ce <__call_exitprocs+0xd6>
    5076:	4651      	mov	r1, sl
    5078:	6809      	ldr	r1, [r1, #0]
    507a:	4219      	tst	r1, r3
    507c:	d12b      	bne.n	50d6 <__call_exitprocs+0xde>
    507e:	002b      	movs	r3, r5
    5080:	3384      	adds	r3, #132	; 0x84
    5082:	6819      	ldr	r1, [r3, #0]
    5084:	9801      	ldr	r0, [sp, #4]
    5086:	4790      	blx	r2
    5088:	6873      	ldr	r3, [r6, #4]
    508a:	455b      	cmp	r3, fp
    508c:	d1c3      	bne.n	5016 <__call_exitprocs+0x1e>
    508e:	464b      	mov	r3, r9
    5090:	681b      	ldr	r3, [r3, #0]
    5092:	42b3      	cmp	r3, r6
    5094:	d1bf      	bne.n	5016 <__call_exitprocs+0x1e>
    5096:	3d04      	subs	r5, #4
    5098:	3c01      	subs	r4, #1
    509a:	d2d9      	bcs.n	5050 <__call_exitprocs+0x58>
    509c:	4b14      	ldr	r3, [pc, #80]	; (50f0 <__call_exitprocs+0xf8>)
    509e:	2b00      	cmp	r3, #0
    50a0:	d00e      	beq.n	50c0 <__call_exitprocs+0xc8>
    50a2:	6873      	ldr	r3, [r6, #4]
    50a4:	2b00      	cmp	r3, #0
    50a6:	d11b      	bne.n	50e0 <__call_exitprocs+0xe8>
    50a8:	6833      	ldr	r3, [r6, #0]
    50aa:	2b00      	cmp	r3, #0
    50ac:	d01c      	beq.n	50e8 <__call_exitprocs+0xf0>
    50ae:	464a      	mov	r2, r9
    50b0:	0030      	movs	r0, r6
    50b2:	6013      	str	r3, [r2, #0]
    50b4:	e000      	b.n	50b8 <__call_exitprocs+0xc0>
    50b6:	bf00      	nop
    50b8:	464b      	mov	r3, r9
    50ba:	681e      	ldr	r6, [r3, #0]
    50bc:	2e00      	cmp	r6, #0
    50be:	d1b2      	bne.n	5026 <__call_exitprocs+0x2e>
    50c0:	b005      	add	sp, #20
    50c2:	bc3c      	pop	{r2, r3, r4, r5}
    50c4:	4690      	mov	r8, r2
    50c6:	4699      	mov	r9, r3
    50c8:	46a2      	mov	sl, r4
    50ca:	46ab      	mov	fp, r5
    50cc:	bdf0      	pop	{r4, r5, r6, r7, pc}
    50ce:	4790      	blx	r2
    50d0:	e7da      	b.n	5088 <__call_exitprocs+0x90>
    50d2:	6074      	str	r4, [r6, #4]
    50d4:	e7c5      	b.n	5062 <__call_exitprocs+0x6a>
    50d6:	002b      	movs	r3, r5
    50d8:	3384      	adds	r3, #132	; 0x84
    50da:	6818      	ldr	r0, [r3, #0]
    50dc:	4790      	blx	r2
    50de:	e7d3      	b.n	5088 <__call_exitprocs+0x90>
    50e0:	6833      	ldr	r3, [r6, #0]
    50e2:	46b1      	mov	r9, r6
    50e4:	001e      	movs	r6, r3
    50e6:	e7e9      	b.n	50bc <__call_exitprocs+0xc4>
    50e8:	2300      	movs	r3, #0
    50ea:	e7fa      	b.n	50e2 <__call_exitprocs+0xea>
    50ec:	00009374 	.word	0x00009374
    50f0:	00000000 	.word	0x00000000

000050f4 <_malloc_trim_r>:
    50f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    50f6:	000c      	movs	r4, r1
    50f8:	0006      	movs	r6, r0
    50fa:	f000 fbd7 	bl	58ac <__malloc_lock>
    50fe:	4f20      	ldr	r7, [pc, #128]	; (5180 <_malloc_trim_r+0x8c>)
    5100:	68bb      	ldr	r3, [r7, #8]
    5102:	685d      	ldr	r5, [r3, #4]
    5104:	2303      	movs	r3, #3
    5106:	439d      	bics	r5, r3
    5108:	4b1e      	ldr	r3, [pc, #120]	; (5184 <_malloc_trim_r+0x90>)
    510a:	1b2c      	subs	r4, r5, r4
    510c:	469c      	mov	ip, r3
    510e:	4464      	add	r4, ip
    5110:	0b24      	lsrs	r4, r4, #12
    5112:	4b1d      	ldr	r3, [pc, #116]	; (5188 <_malloc_trim_r+0x94>)
    5114:	3c01      	subs	r4, #1
    5116:	0324      	lsls	r4, r4, #12
    5118:	429c      	cmp	r4, r3
    511a:	dd07      	ble.n	512c <_malloc_trim_r+0x38>
    511c:	2100      	movs	r1, #0
    511e:	0030      	movs	r0, r6
    5120:	f000 fbc8 	bl	58b4 <_sbrk_r>
    5124:	68bb      	ldr	r3, [r7, #8]
    5126:	195b      	adds	r3, r3, r5
    5128:	4298      	cmp	r0, r3
    512a:	d004      	beq.n	5136 <_malloc_trim_r+0x42>
    512c:	0030      	movs	r0, r6
    512e:	f000 fbbf 	bl	58b0 <__malloc_unlock>
    5132:	2000      	movs	r0, #0
    5134:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5136:	4261      	negs	r1, r4
    5138:	0030      	movs	r0, r6
    513a:	f000 fbbb 	bl	58b4 <_sbrk_r>
    513e:	1c43      	adds	r3, r0, #1
    5140:	d00d      	beq.n	515e <_malloc_trim_r+0x6a>
    5142:	2301      	movs	r3, #1
    5144:	1b2d      	subs	r5, r5, r4
    5146:	68ba      	ldr	r2, [r7, #8]
    5148:	431d      	orrs	r5, r3
    514a:	4b10      	ldr	r3, [pc, #64]	; (518c <_malloc_trim_r+0x98>)
    514c:	6055      	str	r5, [r2, #4]
    514e:	681a      	ldr	r2, [r3, #0]
    5150:	0030      	movs	r0, r6
    5152:	1b14      	subs	r4, r2, r4
    5154:	601c      	str	r4, [r3, #0]
    5156:	f000 fbab 	bl	58b0 <__malloc_unlock>
    515a:	2001      	movs	r0, #1
    515c:	e7ea      	b.n	5134 <_malloc_trim_r+0x40>
    515e:	2100      	movs	r1, #0
    5160:	0030      	movs	r0, r6
    5162:	f000 fba7 	bl	58b4 <_sbrk_r>
    5166:	68bb      	ldr	r3, [r7, #8]
    5168:	1ac2      	subs	r2, r0, r3
    516a:	2a0f      	cmp	r2, #15
    516c:	ddde      	ble.n	512c <_malloc_trim_r+0x38>
    516e:	4908      	ldr	r1, [pc, #32]	; (5190 <_malloc_trim_r+0x9c>)
    5170:	6809      	ldr	r1, [r1, #0]
    5172:	1a40      	subs	r0, r0, r1
    5174:	4905      	ldr	r1, [pc, #20]	; (518c <_malloc_trim_r+0x98>)
    5176:	6008      	str	r0, [r1, #0]
    5178:	2101      	movs	r1, #1
    517a:	430a      	orrs	r2, r1
    517c:	605a      	str	r2, [r3, #4]
    517e:	e7d5      	b.n	512c <_malloc_trim_r+0x38>
    5180:	20000444 	.word	0x20000444
    5184:	00000fef 	.word	0x00000fef
    5188:	00000fff 	.word	0x00000fff
    518c:	2000604c 	.word	0x2000604c
    5190:	20000850 	.word	0x20000850

00005194 <_free_r>:
    5194:	b5f0      	push	{r4, r5, r6, r7, lr}
    5196:	4647      	mov	r7, r8
    5198:	0005      	movs	r5, r0
    519a:	b480      	push	{r7}
    519c:	1e0c      	subs	r4, r1, #0
    519e:	d03e      	beq.n	521e <_free_r+0x8a>
    51a0:	f000 fb84 	bl	58ac <__malloc_lock>
    51a4:	2301      	movs	r3, #1
    51a6:	0021      	movs	r1, r4
    51a8:	4698      	mov	r8, r3
    51aa:	3908      	subs	r1, #8
    51ac:	684e      	ldr	r6, [r1, #4]
    51ae:	4642      	mov	r2, r8
    51b0:	0033      	movs	r3, r6
    51b2:	2003      	movs	r0, #3
    51b4:	4393      	bics	r3, r2
    51b6:	18cc      	adds	r4, r1, r3
    51b8:	6862      	ldr	r2, [r4, #4]
    51ba:	4382      	bics	r2, r0
    51bc:	4860      	ldr	r0, [pc, #384]	; (5340 <_free_r+0x1ac>)
    51be:	6887      	ldr	r7, [r0, #8]
    51c0:	42bc      	cmp	r4, r7
    51c2:	d05a      	beq.n	527a <_free_r+0xe6>
    51c4:	4647      	mov	r7, r8
    51c6:	6062      	str	r2, [r4, #4]
    51c8:	4237      	tst	r7, r6
    51ca:	d10b      	bne.n	51e4 <_free_r+0x50>
    51cc:	2708      	movs	r7, #8
    51ce:	46bc      	mov	ip, r7
    51d0:	680e      	ldr	r6, [r1, #0]
    51d2:	4484      	add	ip, r0
    51d4:	1b89      	subs	r1, r1, r6
    51d6:	199b      	adds	r3, r3, r6
    51d8:	688e      	ldr	r6, [r1, #8]
    51da:	4566      	cmp	r6, ip
    51dc:	d066      	beq.n	52ac <_free_r+0x118>
    51de:	68cf      	ldr	r7, [r1, #12]
    51e0:	60f7      	str	r7, [r6, #12]
    51e2:	60be      	str	r6, [r7, #8]
    51e4:	2601      	movs	r6, #1
    51e6:	18a7      	adds	r7, r4, r2
    51e8:	687f      	ldr	r7, [r7, #4]
    51ea:	4237      	tst	r7, r6
    51ec:	d036      	beq.n	525c <_free_r+0xc8>
    51ee:	4a55      	ldr	r2, [pc, #340]	; (5344 <_free_r+0x1b0>)
    51f0:	431e      	orrs	r6, r3
    51f2:	604e      	str	r6, [r1, #4]
    51f4:	50cb      	str	r3, [r1, r3]
    51f6:	4293      	cmp	r3, r2
    51f8:	d814      	bhi.n	5224 <_free_r+0x90>
    51fa:	08db      	lsrs	r3, r3, #3
    51fc:	3aff      	subs	r2, #255	; 0xff
    51fe:	109c      	asrs	r4, r3, #2
    5200:	3aff      	subs	r2, #255	; 0xff
    5202:	40a2      	lsls	r2, r4
    5204:	6844      	ldr	r4, [r0, #4]
    5206:	00db      	lsls	r3, r3, #3
    5208:	4322      	orrs	r2, r4
    520a:	6042      	str	r2, [r0, #4]
    520c:	1818      	adds	r0, r3, r0
    520e:	6883      	ldr	r3, [r0, #8]
    5210:	60c8      	str	r0, [r1, #12]
    5212:	608b      	str	r3, [r1, #8]
    5214:	6081      	str	r1, [r0, #8]
    5216:	60d9      	str	r1, [r3, #12]
    5218:	0028      	movs	r0, r5
    521a:	f000 fb49 	bl	58b0 <__malloc_unlock>
    521e:	bc04      	pop	{r2}
    5220:	4690      	mov	r8, r2
    5222:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5224:	0a5a      	lsrs	r2, r3, #9
    5226:	2a04      	cmp	r2, #4
    5228:	d84f      	bhi.n	52ca <_free_r+0x136>
    522a:	099c      	lsrs	r4, r3, #6
    522c:	0026      	movs	r6, r4
    522e:	3439      	adds	r4, #57	; 0x39
    5230:	3638      	adds	r6, #56	; 0x38
    5232:	0064      	lsls	r4, r4, #1
    5234:	00a4      	lsls	r4, r4, #2
    5236:	1904      	adds	r4, r0, r4
    5238:	3c08      	subs	r4, #8
    523a:	68a2      	ldr	r2, [r4, #8]
    523c:	2703      	movs	r7, #3
    523e:	4294      	cmp	r4, r2
    5240:	d04a      	beq.n	52d8 <_free_r+0x144>
    5242:	6850      	ldr	r0, [r2, #4]
    5244:	43b8      	bics	r0, r7
    5246:	4283      	cmp	r3, r0
    5248:	d202      	bcs.n	5250 <_free_r+0xbc>
    524a:	6892      	ldr	r2, [r2, #8]
    524c:	4294      	cmp	r4, r2
    524e:	d1f8      	bne.n	5242 <_free_r+0xae>
    5250:	68d4      	ldr	r4, [r2, #12]
    5252:	60cc      	str	r4, [r1, #12]
    5254:	608a      	str	r2, [r1, #8]
    5256:	60a1      	str	r1, [r4, #8]
    5258:	60d1      	str	r1, [r2, #12]
    525a:	e7dd      	b.n	5218 <_free_r+0x84>
    525c:	189b      	adds	r3, r3, r2
    525e:	4f3a      	ldr	r7, [pc, #232]	; (5348 <_free_r+0x1b4>)
    5260:	68a2      	ldr	r2, [r4, #8]
    5262:	42ba      	cmp	r2, r7
    5264:	d040      	beq.n	52e8 <_free_r+0x154>
    5266:	68e4      	ldr	r4, [r4, #12]
    5268:	431e      	orrs	r6, r3
    526a:	60d4      	str	r4, [r2, #12]
    526c:	60a2      	str	r2, [r4, #8]
    526e:	4a35      	ldr	r2, [pc, #212]	; (5344 <_free_r+0x1b0>)
    5270:	604e      	str	r6, [r1, #4]
    5272:	50cb      	str	r3, [r1, r3]
    5274:	4293      	cmp	r3, r2
    5276:	d8d5      	bhi.n	5224 <_free_r+0x90>
    5278:	e7bf      	b.n	51fa <_free_r+0x66>
    527a:	189b      	adds	r3, r3, r2
    527c:	4642      	mov	r2, r8
    527e:	4232      	tst	r2, r6
    5280:	d106      	bne.n	5290 <_free_r+0xfc>
    5282:	680a      	ldr	r2, [r1, #0]
    5284:	1a89      	subs	r1, r1, r2
    5286:	688c      	ldr	r4, [r1, #8]
    5288:	189b      	adds	r3, r3, r2
    528a:	68ca      	ldr	r2, [r1, #12]
    528c:	60e2      	str	r2, [r4, #12]
    528e:	6094      	str	r4, [r2, #8]
    5290:	2401      	movs	r4, #1
    5292:	4a2e      	ldr	r2, [pc, #184]	; (534c <_free_r+0x1b8>)
    5294:	431c      	orrs	r4, r3
    5296:	6812      	ldr	r2, [r2, #0]
    5298:	604c      	str	r4, [r1, #4]
    529a:	6081      	str	r1, [r0, #8]
    529c:	4293      	cmp	r3, r2
    529e:	d3bb      	bcc.n	5218 <_free_r+0x84>
    52a0:	4b2b      	ldr	r3, [pc, #172]	; (5350 <_free_r+0x1bc>)
    52a2:	0028      	movs	r0, r5
    52a4:	6819      	ldr	r1, [r3, #0]
    52a6:	f7ff ff25 	bl	50f4 <_malloc_trim_r>
    52aa:	e7b5      	b.n	5218 <_free_r+0x84>
    52ac:	4646      	mov	r6, r8
    52ae:	18a0      	adds	r0, r4, r2
    52b0:	6840      	ldr	r0, [r0, #4]
    52b2:	4230      	tst	r0, r6
    52b4:	d13e      	bne.n	5334 <_free_r+0x1a0>
    52b6:	68a0      	ldr	r0, [r4, #8]
    52b8:	18d3      	adds	r3, r2, r3
    52ba:	68e2      	ldr	r2, [r4, #12]
    52bc:	60c2      	str	r2, [r0, #12]
    52be:	6090      	str	r0, [r2, #8]
    52c0:	4642      	mov	r2, r8
    52c2:	431a      	orrs	r2, r3
    52c4:	604a      	str	r2, [r1, #4]
    52c6:	50cb      	str	r3, [r1, r3]
    52c8:	e7a6      	b.n	5218 <_free_r+0x84>
    52ca:	2a14      	cmp	r2, #20
    52cc:	d814      	bhi.n	52f8 <_free_r+0x164>
    52ce:	0016      	movs	r6, r2
    52d0:	325c      	adds	r2, #92	; 0x5c
    52d2:	365b      	adds	r6, #91	; 0x5b
    52d4:	0054      	lsls	r4, r2, #1
    52d6:	e7ad      	b.n	5234 <_free_r+0xa0>
    52d8:	2301      	movs	r3, #1
    52da:	10b6      	asrs	r6, r6, #2
    52dc:	40b3      	lsls	r3, r6
    52de:	6842      	ldr	r2, [r0, #4]
    52e0:	4313      	orrs	r3, r2
    52e2:	6043      	str	r3, [r0, #4]
    52e4:	0022      	movs	r2, r4
    52e6:	e7b4      	b.n	5252 <_free_r+0xbe>
    52e8:	431e      	orrs	r6, r3
    52ea:	60d1      	str	r1, [r2, #12]
    52ec:	6091      	str	r1, [r2, #8]
    52ee:	60ca      	str	r2, [r1, #12]
    52f0:	608a      	str	r2, [r1, #8]
    52f2:	604e      	str	r6, [r1, #4]
    52f4:	50cb      	str	r3, [r1, r3]
    52f6:	e78f      	b.n	5218 <_free_r+0x84>
    52f8:	2a54      	cmp	r2, #84	; 0x54
    52fa:	d805      	bhi.n	5308 <_free_r+0x174>
    52fc:	0b1c      	lsrs	r4, r3, #12
    52fe:	0026      	movs	r6, r4
    5300:	346f      	adds	r4, #111	; 0x6f
    5302:	366e      	adds	r6, #110	; 0x6e
    5304:	0064      	lsls	r4, r4, #1
    5306:	e795      	b.n	5234 <_free_r+0xa0>
    5308:	24aa      	movs	r4, #170	; 0xaa
    530a:	0064      	lsls	r4, r4, #1
    530c:	42a2      	cmp	r2, r4
    530e:	d805      	bhi.n	531c <_free_r+0x188>
    5310:	0bdc      	lsrs	r4, r3, #15
    5312:	0026      	movs	r6, r4
    5314:	3478      	adds	r4, #120	; 0x78
    5316:	3677      	adds	r6, #119	; 0x77
    5318:	0064      	lsls	r4, r4, #1
    531a:	e78b      	b.n	5234 <_free_r+0xa0>
    531c:	4c0d      	ldr	r4, [pc, #52]	; (5354 <_free_r+0x1c0>)
    531e:	42a2      	cmp	r2, r4
    5320:	d805      	bhi.n	532e <_free_r+0x19a>
    5322:	0c9c      	lsrs	r4, r3, #18
    5324:	0026      	movs	r6, r4
    5326:	347d      	adds	r4, #125	; 0x7d
    5328:	367c      	adds	r6, #124	; 0x7c
    532a:	0064      	lsls	r4, r4, #1
    532c:	e782      	b.n	5234 <_free_r+0xa0>
    532e:	24fe      	movs	r4, #254	; 0xfe
    5330:	267e      	movs	r6, #126	; 0x7e
    5332:	e77f      	b.n	5234 <_free_r+0xa0>
    5334:	4642      	mov	r2, r8
    5336:	431a      	orrs	r2, r3
    5338:	604a      	str	r2, [r1, #4]
    533a:	50cb      	str	r3, [r1, r3]
    533c:	e76c      	b.n	5218 <_free_r+0x84>
    533e:	46c0      	nop			; (mov r8, r8)
    5340:	20000444 	.word	0x20000444
    5344:	000001ff 	.word	0x000001ff
    5348:	2000044c 	.word	0x2000044c
    534c:	2000084c 	.word	0x2000084c
    5350:	20006048 	.word	0x20006048
    5354:	00000554 	.word	0x00000554

00005358 <_malloc_r>:
    5358:	b5f0      	push	{r4, r5, r6, r7, lr}
    535a:	465f      	mov	r7, fp
    535c:	464d      	mov	r5, r9
    535e:	4656      	mov	r6, sl
    5360:	4644      	mov	r4, r8
    5362:	b4f0      	push	{r4, r5, r6, r7}
    5364:	000d      	movs	r5, r1
    5366:	350b      	adds	r5, #11
    5368:	b083      	sub	sp, #12
    536a:	0007      	movs	r7, r0
    536c:	2d16      	cmp	r5, #22
    536e:	d800      	bhi.n	5372 <_malloc_r+0x1a>
    5370:	e0a8      	b.n	54c4 <_malloc_r+0x16c>
    5372:	2307      	movs	r3, #7
    5374:	439d      	bics	r5, r3
    5376:	d500      	bpl.n	537a <_malloc_r+0x22>
    5378:	e0ce      	b.n	5518 <_malloc_r+0x1c0>
    537a:	42a9      	cmp	r1, r5
    537c:	d900      	bls.n	5380 <_malloc_r+0x28>
    537e:	e0cb      	b.n	5518 <_malloc_r+0x1c0>
    5380:	f000 fa94 	bl	58ac <__malloc_lock>
    5384:	23f8      	movs	r3, #248	; 0xf8
    5386:	33ff      	adds	r3, #255	; 0xff
    5388:	429d      	cmp	r5, r3
    538a:	d800      	bhi.n	538e <_malloc_r+0x36>
    538c:	e284      	b.n	5898 <_malloc_r+0x540>
    538e:	0a6b      	lsrs	r3, r5, #9
    5390:	d100      	bne.n	5394 <_malloc_r+0x3c>
    5392:	e0c5      	b.n	5520 <_malloc_r+0x1c8>
    5394:	2b04      	cmp	r3, #4
    5396:	d900      	bls.n	539a <_malloc_r+0x42>
    5398:	e16c      	b.n	5674 <_malloc_r+0x31c>
    539a:	2338      	movs	r3, #56	; 0x38
    539c:	09a9      	lsrs	r1, r5, #6
    539e:	469c      	mov	ip, r3
    53a0:	3301      	adds	r3, #1
    53a2:	4698      	mov	r8, r3
    53a4:	4488      	add	r8, r1
    53a6:	4643      	mov	r3, r8
    53a8:	448c      	add	ip, r1
    53aa:	0059      	lsls	r1, r3, #1
    53ac:	4ec9      	ldr	r6, [pc, #804]	; (56d4 <_malloc_r+0x37c>)
    53ae:	0089      	lsls	r1, r1, #2
    53b0:	1871      	adds	r1, r6, r1
    53b2:	3908      	subs	r1, #8
    53b4:	68cc      	ldr	r4, [r1, #12]
    53b6:	42a1      	cmp	r1, r4
    53b8:	d017      	beq.n	53ea <_malloc_r+0x92>
    53ba:	2303      	movs	r3, #3
    53bc:	6862      	ldr	r2, [r4, #4]
    53be:	439a      	bics	r2, r3
    53c0:	0013      	movs	r3, r2
    53c2:	1b52      	subs	r2, r2, r5
    53c4:	2a0f      	cmp	r2, #15
    53c6:	dd00      	ble.n	53ca <_malloc_r+0x72>
    53c8:	e0b0      	b.n	552c <_malloc_r+0x1d4>
    53ca:	2003      	movs	r0, #3
    53cc:	2a00      	cmp	r2, #0
    53ce:	db09      	blt.n	53e4 <_malloc_r+0x8c>
    53d0:	e08d      	b.n	54ee <_malloc_r+0x196>
    53d2:	6863      	ldr	r3, [r4, #4]
    53d4:	4383      	bics	r3, r0
    53d6:	1b5a      	subs	r2, r3, r5
    53d8:	2a0f      	cmp	r2, #15
    53da:	dd00      	ble.n	53de <_malloc_r+0x86>
    53dc:	e0a6      	b.n	552c <_malloc_r+0x1d4>
    53de:	2a00      	cmp	r2, #0
    53e0:	db00      	blt.n	53e4 <_malloc_r+0x8c>
    53e2:	e084      	b.n	54ee <_malloc_r+0x196>
    53e4:	68e4      	ldr	r4, [r4, #12]
    53e6:	42a1      	cmp	r1, r4
    53e8:	d1f3      	bne.n	53d2 <_malloc_r+0x7a>
    53ea:	4643      	mov	r3, r8
    53ec:	9300      	str	r3, [sp, #0]
    53ee:	0032      	movs	r2, r6
    53f0:	6934      	ldr	r4, [r6, #16]
    53f2:	3208      	adds	r2, #8
    53f4:	4294      	cmp	r4, r2
    53f6:	d100      	bne.n	53fa <_malloc_r+0xa2>
    53f8:	e18f      	b.n	571a <_malloc_r+0x3c2>
    53fa:	2303      	movs	r3, #3
    53fc:	6861      	ldr	r1, [r4, #4]
    53fe:	4399      	bics	r1, r3
    5400:	000b      	movs	r3, r1
    5402:	1b48      	subs	r0, r1, r5
    5404:	280f      	cmp	r0, #15
    5406:	dd00      	ble.n	540a <_malloc_r+0xb2>
    5408:	e176      	b.n	56f8 <_malloc_r+0x3a0>
    540a:	6172      	str	r2, [r6, #20]
    540c:	6132      	str	r2, [r6, #16]
    540e:	2800      	cmp	r0, #0
    5410:	da71      	bge.n	54f6 <_malloc_r+0x19e>
    5412:	4ab1      	ldr	r2, [pc, #708]	; (56d8 <_malloc_r+0x380>)
    5414:	4291      	cmp	r1, r2
    5416:	d900      	bls.n	541a <_malloc_r+0xc2>
    5418:	e134      	b.n	5684 <_malloc_r+0x32c>
    541a:	2301      	movs	r3, #1
    541c:	08c8      	lsrs	r0, r1, #3
    541e:	1082      	asrs	r2, r0, #2
    5420:	4093      	lsls	r3, r2
    5422:	6872      	ldr	r2, [r6, #4]
    5424:	431a      	orrs	r2, r3
    5426:	00c3      	lsls	r3, r0, #3
    5428:	199b      	adds	r3, r3, r6
    542a:	6898      	ldr	r0, [r3, #8]
    542c:	6072      	str	r2, [r6, #4]
    542e:	60e3      	str	r3, [r4, #12]
    5430:	60a0      	str	r0, [r4, #8]
    5432:	609c      	str	r4, [r3, #8]
    5434:	0013      	movs	r3, r2
    5436:	60c4      	str	r4, [r0, #12]
    5438:	2001      	movs	r0, #1
    543a:	9900      	ldr	r1, [sp, #0]
    543c:	108a      	asrs	r2, r1, #2
    543e:	4090      	lsls	r0, r2
    5440:	4298      	cmp	r0, r3
    5442:	d900      	bls.n	5446 <_malloc_r+0xee>
    5444:	e075      	b.n	5532 <_malloc_r+0x1da>
    5446:	4203      	tst	r3, r0
    5448:	d10c      	bne.n	5464 <_malloc_r+0x10c>
    544a:	2203      	movs	r2, #3
    544c:	4391      	bics	r1, r2
    544e:	1d0a      	adds	r2, r1, #4
    5450:	0040      	lsls	r0, r0, #1
    5452:	9200      	str	r2, [sp, #0]
    5454:	4203      	tst	r3, r0
    5456:	d105      	bne.n	5464 <_malloc_r+0x10c>
    5458:	9a00      	ldr	r2, [sp, #0]
    545a:	0040      	lsls	r0, r0, #1
    545c:	3204      	adds	r2, #4
    545e:	9200      	str	r2, [sp, #0]
    5460:	4203      	tst	r3, r0
    5462:	d0f9      	beq.n	5458 <_malloc_r+0x100>
    5464:	2303      	movs	r3, #3
    5466:	4698      	mov	r8, r3
    5468:	9a00      	ldr	r2, [sp, #0]
    546a:	00d3      	lsls	r3, r2, #3
    546c:	4699      	mov	r9, r3
    546e:	44b1      	add	r9, r6
    5470:	46cc      	mov	ip, r9
    5472:	4692      	mov	sl, r2
    5474:	4663      	mov	r3, ip
    5476:	68dc      	ldr	r4, [r3, #12]
    5478:	45a4      	cmp	ip, r4
    547a:	d107      	bne.n	548c <_malloc_r+0x134>
    547c:	e14f      	b.n	571e <_malloc_r+0x3c6>
    547e:	2a00      	cmp	r2, #0
    5480:	db00      	blt.n	5484 <_malloc_r+0x12c>
    5482:	e15f      	b.n	5744 <_malloc_r+0x3ec>
    5484:	68e4      	ldr	r4, [r4, #12]
    5486:	45a4      	cmp	ip, r4
    5488:	d100      	bne.n	548c <_malloc_r+0x134>
    548a:	e148      	b.n	571e <_malloc_r+0x3c6>
    548c:	4642      	mov	r2, r8
    548e:	6863      	ldr	r3, [r4, #4]
    5490:	4393      	bics	r3, r2
    5492:	1b5a      	subs	r2, r3, r5
    5494:	2a0f      	cmp	r2, #15
    5496:	ddf2      	ble.n	547e <_malloc_r+0x126>
    5498:	2101      	movs	r1, #1
    549a:	1963      	adds	r3, r4, r5
    549c:	430d      	orrs	r5, r1
    549e:	6065      	str	r5, [r4, #4]
    54a0:	68e0      	ldr	r0, [r4, #12]
    54a2:	68a5      	ldr	r5, [r4, #8]
    54a4:	3608      	adds	r6, #8
    54a6:	60e8      	str	r0, [r5, #12]
    54a8:	4311      	orrs	r1, r2
    54aa:	6085      	str	r5, [r0, #8]
    54ac:	60f3      	str	r3, [r6, #12]
    54ae:	60b3      	str	r3, [r6, #8]
    54b0:	0038      	movs	r0, r7
    54b2:	60de      	str	r6, [r3, #12]
    54b4:	609e      	str	r6, [r3, #8]
    54b6:	6059      	str	r1, [r3, #4]
    54b8:	509a      	str	r2, [r3, r2]
    54ba:	f000 f9f9 	bl	58b0 <__malloc_unlock>
    54be:	0020      	movs	r0, r4
    54c0:	3008      	adds	r0, #8
    54c2:	e022      	b.n	550a <_malloc_r+0x1b2>
    54c4:	2910      	cmp	r1, #16
    54c6:	d827      	bhi.n	5518 <_malloc_r+0x1c0>
    54c8:	0038      	movs	r0, r7
    54ca:	f000 f9ef 	bl	58ac <__malloc_lock>
    54ce:	2510      	movs	r5, #16
    54d0:	2306      	movs	r3, #6
    54d2:	2102      	movs	r1, #2
    54d4:	4e7f      	ldr	r6, [pc, #508]	; (56d4 <_malloc_r+0x37c>)
    54d6:	009b      	lsls	r3, r3, #2
    54d8:	18f3      	adds	r3, r6, r3
    54da:	001a      	movs	r2, r3
    54dc:	685c      	ldr	r4, [r3, #4]
    54de:	3a08      	subs	r2, #8
    54e0:	4294      	cmp	r4, r2
    54e2:	d100      	bne.n	54e6 <_malloc_r+0x18e>
    54e4:	e127      	b.n	5736 <_malloc_r+0x3de>
    54e6:	2303      	movs	r3, #3
    54e8:	6862      	ldr	r2, [r4, #4]
    54ea:	439a      	bics	r2, r3
    54ec:	0013      	movs	r3, r2
    54ee:	68e2      	ldr	r2, [r4, #12]
    54f0:	68a1      	ldr	r1, [r4, #8]
    54f2:	60ca      	str	r2, [r1, #12]
    54f4:	6091      	str	r1, [r2, #8]
    54f6:	2201      	movs	r2, #1
    54f8:	18e3      	adds	r3, r4, r3
    54fa:	6859      	ldr	r1, [r3, #4]
    54fc:	0038      	movs	r0, r7
    54fe:	430a      	orrs	r2, r1
    5500:	605a      	str	r2, [r3, #4]
    5502:	f000 f9d5 	bl	58b0 <__malloc_unlock>
    5506:	0020      	movs	r0, r4
    5508:	3008      	adds	r0, #8
    550a:	b003      	add	sp, #12
    550c:	bc3c      	pop	{r2, r3, r4, r5}
    550e:	4690      	mov	r8, r2
    5510:	4699      	mov	r9, r3
    5512:	46a2      	mov	sl, r4
    5514:	46ab      	mov	fp, r5
    5516:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5518:	230c      	movs	r3, #12
    551a:	2000      	movs	r0, #0
    551c:	603b      	str	r3, [r7, #0]
    551e:	e7f4      	b.n	550a <_malloc_r+0x1b2>
    5520:	2340      	movs	r3, #64	; 0x40
    5522:	4698      	mov	r8, r3
    5524:	3b01      	subs	r3, #1
    5526:	2180      	movs	r1, #128	; 0x80
    5528:	469c      	mov	ip, r3
    552a:	e73f      	b.n	53ac <_malloc_r+0x54>
    552c:	4663      	mov	r3, ip
    552e:	9300      	str	r3, [sp, #0]
    5530:	e75d      	b.n	53ee <_malloc_r+0x96>
    5532:	2303      	movs	r3, #3
    5534:	68b4      	ldr	r4, [r6, #8]
    5536:	6862      	ldr	r2, [r4, #4]
    5538:	439a      	bics	r2, r3
    553a:	4690      	mov	r8, r2
    553c:	42aa      	cmp	r2, r5
    553e:	d303      	bcc.n	5548 <_malloc_r+0x1f0>
    5540:	1b52      	subs	r2, r2, r5
    5542:	2a0f      	cmp	r2, #15
    5544:	dd00      	ble.n	5548 <_malloc_r+0x1f0>
    5546:	e087      	b.n	5658 <_malloc_r+0x300>
    5548:	0023      	movs	r3, r4
    554a:	4443      	add	r3, r8
    554c:	4a63      	ldr	r2, [pc, #396]	; (56dc <_malloc_r+0x384>)
    554e:	9301      	str	r3, [sp, #4]
    5550:	4b63      	ldr	r3, [pc, #396]	; (56e0 <_malloc_r+0x388>)
    5552:	4693      	mov	fp, r2
    5554:	681b      	ldr	r3, [r3, #0]
    5556:	6812      	ldr	r2, [r2, #0]
    5558:	18eb      	adds	r3, r5, r3
    555a:	3201      	adds	r2, #1
    555c:	d100      	bne.n	5560 <_malloc_r+0x208>
    555e:	e157      	b.n	5810 <_malloc_r+0x4b8>
    5560:	4a60      	ldr	r2, [pc, #384]	; (56e4 <_malloc_r+0x38c>)
    5562:	4694      	mov	ip, r2
    5564:	4463      	add	r3, ip
    5566:	0b1b      	lsrs	r3, r3, #12
    5568:	031b      	lsls	r3, r3, #12
    556a:	9300      	str	r3, [sp, #0]
    556c:	9900      	ldr	r1, [sp, #0]
    556e:	0038      	movs	r0, r7
    5570:	f000 f9a0 	bl	58b4 <_sbrk_r>
    5574:	0003      	movs	r3, r0
    5576:	4681      	mov	r9, r0
    5578:	3301      	adds	r3, #1
    557a:	d061      	beq.n	5640 <_malloc_r+0x2e8>
    557c:	9b01      	ldr	r3, [sp, #4]
    557e:	4283      	cmp	r3, r0
    5580:	d900      	bls.n	5584 <_malloc_r+0x22c>
    5582:	e0fd      	b.n	5780 <_malloc_r+0x428>
    5584:	4b58      	ldr	r3, [pc, #352]	; (56e8 <_malloc_r+0x390>)
    5586:	9a00      	ldr	r2, [sp, #0]
    5588:	469a      	mov	sl, r3
    558a:	681b      	ldr	r3, [r3, #0]
    558c:	469c      	mov	ip, r3
    558e:	4653      	mov	r3, sl
    5590:	4462      	add	r2, ip
    5592:	601a      	str	r2, [r3, #0]
    5594:	9b01      	ldr	r3, [sp, #4]
    5596:	0011      	movs	r1, r2
    5598:	454b      	cmp	r3, r9
    559a:	d100      	bne.n	559e <_malloc_r+0x246>
    559c:	e143      	b.n	5826 <_malloc_r+0x4ce>
    559e:	465b      	mov	r3, fp
    55a0:	681b      	ldr	r3, [r3, #0]
    55a2:	3301      	adds	r3, #1
    55a4:	d100      	bne.n	55a8 <_malloc_r+0x250>
    55a6:	e14f      	b.n	5848 <_malloc_r+0x4f0>
    55a8:	464b      	mov	r3, r9
    55aa:	9a01      	ldr	r2, [sp, #4]
    55ac:	1a9b      	subs	r3, r3, r2
    55ae:	1859      	adds	r1, r3, r1
    55b0:	4653      	mov	r3, sl
    55b2:	6019      	str	r1, [r3, #0]
    55b4:	2307      	movs	r3, #7
    55b6:	464a      	mov	r2, r9
    55b8:	4013      	ands	r3, r2
    55ba:	d100      	bne.n	55be <_malloc_r+0x266>
    55bc:	e117      	b.n	57ee <_malloc_r+0x496>
    55be:	2108      	movs	r1, #8
    55c0:	4689      	mov	r9, r1
    55c2:	494a      	ldr	r1, [pc, #296]	; (56ec <_malloc_r+0x394>)
    55c4:	1ad2      	subs	r2, r2, r3
    55c6:	4491      	add	r9, r2
    55c8:	1ac9      	subs	r1, r1, r3
    55ca:	9b00      	ldr	r3, [sp, #0]
    55cc:	0038      	movs	r0, r7
    55ce:	444b      	add	r3, r9
    55d0:	051b      	lsls	r3, r3, #20
    55d2:	0d1b      	lsrs	r3, r3, #20
    55d4:	1acb      	subs	r3, r1, r3
    55d6:	0019      	movs	r1, r3
    55d8:	469b      	mov	fp, r3
    55da:	f000 f96b 	bl	58b4 <_sbrk_r>
    55de:	1c43      	adds	r3, r0, #1
    55e0:	d100      	bne.n	55e4 <_malloc_r+0x28c>
    55e2:	e135      	b.n	5850 <_malloc_r+0x4f8>
    55e4:	464b      	mov	r3, r9
    55e6:	1ac0      	subs	r0, r0, r3
    55e8:	2301      	movs	r3, #1
    55ea:	4458      	add	r0, fp
    55ec:	4318      	orrs	r0, r3
    55ee:	4653      	mov	r3, sl
    55f0:	681b      	ldr	r3, [r3, #0]
    55f2:	445b      	add	r3, fp
    55f4:	0019      	movs	r1, r3
    55f6:	4653      	mov	r3, sl
    55f8:	6019      	str	r1, [r3, #0]
    55fa:	464b      	mov	r3, r9
    55fc:	60b3      	str	r3, [r6, #8]
    55fe:	6058      	str	r0, [r3, #4]
    5600:	42b4      	cmp	r4, r6
    5602:	d013      	beq.n	562c <_malloc_r+0x2d4>
    5604:	4643      	mov	r3, r8
    5606:	2b0f      	cmp	r3, #15
    5608:	d800      	bhi.n	560c <_malloc_r+0x2b4>
    560a:	e0e1      	b.n	57d0 <_malloc_r+0x478>
    560c:	4643      	mov	r3, r8
    560e:	2207      	movs	r2, #7
    5610:	6860      	ldr	r0, [r4, #4]
    5612:	3b0c      	subs	r3, #12
    5614:	4393      	bics	r3, r2
    5616:	3a06      	subs	r2, #6
    5618:	4002      	ands	r2, r0
    561a:	2005      	movs	r0, #5
    561c:	431a      	orrs	r2, r3
    561e:	6062      	str	r2, [r4, #4]
    5620:	18e2      	adds	r2, r4, r3
    5622:	6050      	str	r0, [r2, #4]
    5624:	6090      	str	r0, [r2, #8]
    5626:	2b0f      	cmp	r3, #15
    5628:	d900      	bls.n	562c <_malloc_r+0x2d4>
    562a:	e115      	b.n	5858 <_malloc_r+0x500>
    562c:	4b30      	ldr	r3, [pc, #192]	; (56f0 <_malloc_r+0x398>)
    562e:	681a      	ldr	r2, [r3, #0]
    5630:	4291      	cmp	r1, r2
    5632:	d900      	bls.n	5636 <_malloc_r+0x2de>
    5634:	6019      	str	r1, [r3, #0]
    5636:	4b2f      	ldr	r3, [pc, #188]	; (56f4 <_malloc_r+0x39c>)
    5638:	681a      	ldr	r2, [r3, #0]
    563a:	4291      	cmp	r1, r2
    563c:	d900      	bls.n	5640 <_malloc_r+0x2e8>
    563e:	6019      	str	r1, [r3, #0]
    5640:	2303      	movs	r3, #3
    5642:	68b4      	ldr	r4, [r6, #8]
    5644:	6862      	ldr	r2, [r4, #4]
    5646:	439a      	bics	r2, r3
    5648:	0013      	movs	r3, r2
    564a:	1b52      	subs	r2, r2, r5
    564c:	429d      	cmp	r5, r3
    564e:	d900      	bls.n	5652 <_malloc_r+0x2fa>
    5650:	e0c1      	b.n	57d6 <_malloc_r+0x47e>
    5652:	2a0f      	cmp	r2, #15
    5654:	dc00      	bgt.n	5658 <_malloc_r+0x300>
    5656:	e0be      	b.n	57d6 <_malloc_r+0x47e>
    5658:	2301      	movs	r3, #1
    565a:	0029      	movs	r1, r5
    565c:	1965      	adds	r5, r4, r5
    565e:	4319      	orrs	r1, r3
    5660:	4313      	orrs	r3, r2
    5662:	6061      	str	r1, [r4, #4]
    5664:	0038      	movs	r0, r7
    5666:	60b5      	str	r5, [r6, #8]
    5668:	606b      	str	r3, [r5, #4]
    566a:	f000 f921 	bl	58b0 <__malloc_unlock>
    566e:	0020      	movs	r0, r4
    5670:	3008      	adds	r0, #8
    5672:	e74a      	b.n	550a <_malloc_r+0x1b2>
    5674:	2b14      	cmp	r3, #20
    5676:	d974      	bls.n	5762 <_malloc_r+0x40a>
    5678:	2b54      	cmp	r3, #84	; 0x54
    567a:	d900      	bls.n	567e <_malloc_r+0x326>
    567c:	e0b0      	b.n	57e0 <_malloc_r+0x488>
    567e:	0b29      	lsrs	r1, r5, #12
    5680:	236e      	movs	r3, #110	; 0x6e
    5682:	e68c      	b.n	539e <_malloc_r+0x46>
    5684:	0a4a      	lsrs	r2, r1, #9
    5686:	2a04      	cmp	r2, #4
    5688:	d974      	bls.n	5774 <_malloc_r+0x41c>
    568a:	2a14      	cmp	r2, #20
    568c:	d900      	bls.n	5690 <_malloc_r+0x338>
    568e:	e0c2      	b.n	5816 <_malloc_r+0x4be>
    5690:	0010      	movs	r0, r2
    5692:	325c      	adds	r2, #92	; 0x5c
    5694:	305b      	adds	r0, #91	; 0x5b
    5696:	0052      	lsls	r2, r2, #1
    5698:	2108      	movs	r1, #8
    569a:	4249      	negs	r1, r1
    569c:	468c      	mov	ip, r1
    569e:	0092      	lsls	r2, r2, #2
    56a0:	18b2      	adds	r2, r6, r2
    56a2:	4494      	add	ip, r2
    56a4:	4662      	mov	r2, ip
    56a6:	6892      	ldr	r2, [r2, #8]
    56a8:	310b      	adds	r1, #11
    56aa:	4688      	mov	r8, r1
    56ac:	4594      	cmp	ip, r2
    56ae:	d100      	bne.n	56b2 <_malloc_r+0x35a>
    56b0:	e0a0      	b.n	57f4 <_malloc_r+0x49c>
    56b2:	4641      	mov	r1, r8
    56b4:	6850      	ldr	r0, [r2, #4]
    56b6:	4388      	bics	r0, r1
    56b8:	4283      	cmp	r3, r0
    56ba:	d202      	bcs.n	56c2 <_malloc_r+0x36a>
    56bc:	6892      	ldr	r2, [r2, #8]
    56be:	4594      	cmp	ip, r2
    56c0:	d1f7      	bne.n	56b2 <_malloc_r+0x35a>
    56c2:	68d3      	ldr	r3, [r2, #12]
    56c4:	469c      	mov	ip, r3
    56c6:	6873      	ldr	r3, [r6, #4]
    56c8:	4661      	mov	r1, ip
    56ca:	60a2      	str	r2, [r4, #8]
    56cc:	60e1      	str	r1, [r4, #12]
    56ce:	608c      	str	r4, [r1, #8]
    56d0:	60d4      	str	r4, [r2, #12]
    56d2:	e6b1      	b.n	5438 <_malloc_r+0xe0>
    56d4:	20000444 	.word	0x20000444
    56d8:	000001ff 	.word	0x000001ff
    56dc:	20000850 	.word	0x20000850
    56e0:	20006048 	.word	0x20006048
    56e4:	0000100f 	.word	0x0000100f
    56e8:	2000604c 	.word	0x2000604c
    56ec:	00001008 	.word	0x00001008
    56f0:	20006044 	.word	0x20006044
    56f4:	20006040 	.word	0x20006040
    56f8:	2101      	movs	r1, #1
    56fa:	1963      	adds	r3, r4, r5
    56fc:	430d      	orrs	r5, r1
    56fe:	4301      	orrs	r1, r0
    5700:	6065      	str	r5, [r4, #4]
    5702:	6173      	str	r3, [r6, #20]
    5704:	6133      	str	r3, [r6, #16]
    5706:	60da      	str	r2, [r3, #12]
    5708:	609a      	str	r2, [r3, #8]
    570a:	6059      	str	r1, [r3, #4]
    570c:	5018      	str	r0, [r3, r0]
    570e:	0038      	movs	r0, r7
    5710:	f000 f8ce 	bl	58b0 <__malloc_unlock>
    5714:	0020      	movs	r0, r4
    5716:	3008      	adds	r0, #8
    5718:	e6f7      	b.n	550a <_malloc_r+0x1b2>
    571a:	6873      	ldr	r3, [r6, #4]
    571c:	e68c      	b.n	5438 <_malloc_r+0xe0>
    571e:	2308      	movs	r3, #8
    5720:	469b      	mov	fp, r3
    5722:	3b07      	subs	r3, #7
    5724:	44dc      	add	ip, fp
    5726:	469b      	mov	fp, r3
    5728:	44da      	add	sl, fp
    572a:	4643      	mov	r3, r8
    572c:	4652      	mov	r2, sl
    572e:	4213      	tst	r3, r2
    5730:	d000      	beq.n	5734 <_malloc_r+0x3dc>
    5732:	e69f      	b.n	5474 <_malloc_r+0x11c>
    5734:	e033      	b.n	579e <_malloc_r+0x446>
    5736:	68dc      	ldr	r4, [r3, #12]
    5738:	1c8a      	adds	r2, r1, #2
    573a:	9200      	str	r2, [sp, #0]
    573c:	42a3      	cmp	r3, r4
    573e:	d100      	bne.n	5742 <_malloc_r+0x3ea>
    5740:	e655      	b.n	53ee <_malloc_r+0x96>
    5742:	e6d0      	b.n	54e6 <_malloc_r+0x18e>
    5744:	2201      	movs	r2, #1
    5746:	18e3      	adds	r3, r4, r3
    5748:	6859      	ldr	r1, [r3, #4]
    574a:	0038      	movs	r0, r7
    574c:	430a      	orrs	r2, r1
    574e:	605a      	str	r2, [r3, #4]
    5750:	68e3      	ldr	r3, [r4, #12]
    5752:	68a2      	ldr	r2, [r4, #8]
    5754:	60d3      	str	r3, [r2, #12]
    5756:	609a      	str	r2, [r3, #8]
    5758:	f000 f8aa 	bl	58b0 <__malloc_unlock>
    575c:	0020      	movs	r0, r4
    575e:	3008      	adds	r0, #8
    5760:	e6d3      	b.n	550a <_malloc_r+0x1b2>
    5762:	225b      	movs	r2, #91	; 0x5b
    5764:	4694      	mov	ip, r2
    5766:	3201      	adds	r2, #1
    5768:	4690      	mov	r8, r2
    576a:	4498      	add	r8, r3
    576c:	449c      	add	ip, r3
    576e:	4643      	mov	r3, r8
    5770:	0059      	lsls	r1, r3, #1
    5772:	e61b      	b.n	53ac <_malloc_r+0x54>
    5774:	098a      	lsrs	r2, r1, #6
    5776:	0010      	movs	r0, r2
    5778:	3239      	adds	r2, #57	; 0x39
    577a:	3038      	adds	r0, #56	; 0x38
    577c:	0052      	lsls	r2, r2, #1
    577e:	e78b      	b.n	5698 <_malloc_r+0x340>
    5780:	42b4      	cmp	r4, r6
    5782:	d000      	beq.n	5786 <_malloc_r+0x42e>
    5784:	e75c      	b.n	5640 <_malloc_r+0x2e8>
    5786:	e6fd      	b.n	5584 <_malloc_r+0x22c>
    5788:	9b00      	ldr	r3, [sp, #0]
    578a:	3b01      	subs	r3, #1
    578c:	9300      	str	r3, [sp, #0]
    578e:	2308      	movs	r3, #8
    5790:	425b      	negs	r3, r3
    5792:	469c      	mov	ip, r3
    5794:	44e1      	add	r9, ip
    5796:	464b      	mov	r3, r9
    5798:	689b      	ldr	r3, [r3, #8]
    579a:	4599      	cmp	r9, r3
    579c:	d17a      	bne.n	5894 <_malloc_r+0x53c>
    579e:	4643      	mov	r3, r8
    57a0:	9a00      	ldr	r2, [sp, #0]
    57a2:	4213      	tst	r3, r2
    57a4:	d1f0      	bne.n	5788 <_malloc_r+0x430>
    57a6:	6873      	ldr	r3, [r6, #4]
    57a8:	4383      	bics	r3, r0
    57aa:	6073      	str	r3, [r6, #4]
    57ac:	0040      	lsls	r0, r0, #1
    57ae:	4298      	cmp	r0, r3
    57b0:	d900      	bls.n	57b4 <_malloc_r+0x45c>
    57b2:	e6be      	b.n	5532 <_malloc_r+0x1da>
    57b4:	2800      	cmp	r0, #0
    57b6:	d100      	bne.n	57ba <_malloc_r+0x462>
    57b8:	e6bb      	b.n	5532 <_malloc_r+0x1da>
    57ba:	4203      	tst	r3, r0
    57bc:	d170      	bne.n	58a0 <_malloc_r+0x548>
    57be:	4652      	mov	r2, sl
    57c0:	9200      	str	r2, [sp, #0]
    57c2:	9a00      	ldr	r2, [sp, #0]
    57c4:	0040      	lsls	r0, r0, #1
    57c6:	3204      	adds	r2, #4
    57c8:	9200      	str	r2, [sp, #0]
    57ca:	4203      	tst	r3, r0
    57cc:	d0f9      	beq.n	57c2 <_malloc_r+0x46a>
    57ce:	e64b      	b.n	5468 <_malloc_r+0x110>
    57d0:	2301      	movs	r3, #1
    57d2:	464a      	mov	r2, r9
    57d4:	6053      	str	r3, [r2, #4]
    57d6:	0038      	movs	r0, r7
    57d8:	f000 f86a 	bl	58b0 <__malloc_unlock>
    57dc:	2000      	movs	r0, #0
    57de:	e694      	b.n	550a <_malloc_r+0x1b2>
    57e0:	22aa      	movs	r2, #170	; 0xaa
    57e2:	0052      	lsls	r2, r2, #1
    57e4:	4293      	cmp	r3, r2
    57e6:	d80d      	bhi.n	5804 <_malloc_r+0x4ac>
    57e8:	0be9      	lsrs	r1, r5, #15
    57ea:	2377      	movs	r3, #119	; 0x77
    57ec:	e5d7      	b.n	539e <_malloc_r+0x46>
    57ee:	2180      	movs	r1, #128	; 0x80
    57f0:	0149      	lsls	r1, r1, #5
    57f2:	e6ea      	b.n	55ca <_malloc_r+0x272>
    57f4:	2301      	movs	r3, #1
    57f6:	1080      	asrs	r0, r0, #2
    57f8:	4083      	lsls	r3, r0
    57fa:	6872      	ldr	r2, [r6, #4]
    57fc:	4313      	orrs	r3, r2
    57fe:	6073      	str	r3, [r6, #4]
    5800:	4662      	mov	r2, ip
    5802:	e761      	b.n	56c8 <_malloc_r+0x370>
    5804:	4a28      	ldr	r2, [pc, #160]	; (58a8 <_malloc_r+0x550>)
    5806:	4293      	cmp	r3, r2
    5808:	d818      	bhi.n	583c <_malloc_r+0x4e4>
    580a:	0ca9      	lsrs	r1, r5, #18
    580c:	237c      	movs	r3, #124	; 0x7c
    580e:	e5c6      	b.n	539e <_malloc_r+0x46>
    5810:	3310      	adds	r3, #16
    5812:	9300      	str	r3, [sp, #0]
    5814:	e6aa      	b.n	556c <_malloc_r+0x214>
    5816:	2a54      	cmp	r2, #84	; 0x54
    5818:	d826      	bhi.n	5868 <_malloc_r+0x510>
    581a:	0b0a      	lsrs	r2, r1, #12
    581c:	0010      	movs	r0, r2
    581e:	326f      	adds	r2, #111	; 0x6f
    5820:	306e      	adds	r0, #110	; 0x6e
    5822:	0052      	lsls	r2, r2, #1
    5824:	e738      	b.n	5698 <_malloc_r+0x340>
    5826:	051b      	lsls	r3, r3, #20
    5828:	d000      	beq.n	582c <_malloc_r+0x4d4>
    582a:	e6b8      	b.n	559e <_malloc_r+0x246>
    582c:	9b00      	ldr	r3, [sp, #0]
    582e:	68b2      	ldr	r2, [r6, #8]
    5830:	4443      	add	r3, r8
    5832:	0018      	movs	r0, r3
    5834:	2301      	movs	r3, #1
    5836:	4303      	orrs	r3, r0
    5838:	6053      	str	r3, [r2, #4]
    583a:	e6f7      	b.n	562c <_malloc_r+0x2d4>
    583c:	237f      	movs	r3, #127	; 0x7f
    583e:	4698      	mov	r8, r3
    5840:	3b01      	subs	r3, #1
    5842:	21fe      	movs	r1, #254	; 0xfe
    5844:	469c      	mov	ip, r3
    5846:	e5b1      	b.n	53ac <_malloc_r+0x54>
    5848:	465b      	mov	r3, fp
    584a:	464a      	mov	r2, r9
    584c:	601a      	str	r2, [r3, #0]
    584e:	e6b1      	b.n	55b4 <_malloc_r+0x25c>
    5850:	2300      	movs	r3, #0
    5852:	2001      	movs	r0, #1
    5854:	469b      	mov	fp, r3
    5856:	e6ca      	b.n	55ee <_malloc_r+0x296>
    5858:	0021      	movs	r1, r4
    585a:	0038      	movs	r0, r7
    585c:	3108      	adds	r1, #8
    585e:	f7ff fc99 	bl	5194 <_free_r>
    5862:	4653      	mov	r3, sl
    5864:	6819      	ldr	r1, [r3, #0]
    5866:	e6e1      	b.n	562c <_malloc_r+0x2d4>
    5868:	20aa      	movs	r0, #170	; 0xaa
    586a:	0040      	lsls	r0, r0, #1
    586c:	4282      	cmp	r2, r0
    586e:	d805      	bhi.n	587c <_malloc_r+0x524>
    5870:	0bca      	lsrs	r2, r1, #15
    5872:	0010      	movs	r0, r2
    5874:	3278      	adds	r2, #120	; 0x78
    5876:	3077      	adds	r0, #119	; 0x77
    5878:	0052      	lsls	r2, r2, #1
    587a:	e70d      	b.n	5698 <_malloc_r+0x340>
    587c:	480a      	ldr	r0, [pc, #40]	; (58a8 <_malloc_r+0x550>)
    587e:	4282      	cmp	r2, r0
    5880:	d805      	bhi.n	588e <_malloc_r+0x536>
    5882:	0c8a      	lsrs	r2, r1, #18
    5884:	0010      	movs	r0, r2
    5886:	327d      	adds	r2, #125	; 0x7d
    5888:	307c      	adds	r0, #124	; 0x7c
    588a:	0052      	lsls	r2, r2, #1
    588c:	e704      	b.n	5698 <_malloc_r+0x340>
    588e:	22fe      	movs	r2, #254	; 0xfe
    5890:	207e      	movs	r0, #126	; 0x7e
    5892:	e701      	b.n	5698 <_malloc_r+0x340>
    5894:	6873      	ldr	r3, [r6, #4]
    5896:	e789      	b.n	57ac <_malloc_r+0x454>
    5898:	08e9      	lsrs	r1, r5, #3
    589a:	1c4b      	adds	r3, r1, #1
    589c:	005b      	lsls	r3, r3, #1
    589e:	e619      	b.n	54d4 <_malloc_r+0x17c>
    58a0:	4653      	mov	r3, sl
    58a2:	9300      	str	r3, [sp, #0]
    58a4:	e5e0      	b.n	5468 <_malloc_r+0x110>
    58a6:	46c0      	nop			; (mov r8, r8)
    58a8:	00000554 	.word	0x00000554

000058ac <__malloc_lock>:
    58ac:	4770      	bx	lr
    58ae:	46c0      	nop			; (mov r8, r8)

000058b0 <__malloc_unlock>:
    58b0:	4770      	bx	lr
    58b2:	46c0      	nop			; (mov r8, r8)

000058b4 <_sbrk_r>:
    58b4:	2300      	movs	r3, #0
    58b6:	b570      	push	{r4, r5, r6, lr}
    58b8:	4c06      	ldr	r4, [pc, #24]	; (58d4 <_sbrk_r+0x20>)
    58ba:	0005      	movs	r5, r0
    58bc:	0008      	movs	r0, r1
    58be:	6023      	str	r3, [r4, #0]
    58c0:	f7fb f966 	bl	b90 <_sbrk>
    58c4:	1c43      	adds	r3, r0, #1
    58c6:	d000      	beq.n	58ca <_sbrk_r+0x16>
    58c8:	bd70      	pop	{r4, r5, r6, pc}
    58ca:	6823      	ldr	r3, [r4, #0]
    58cc:	2b00      	cmp	r3, #0
    58ce:	d0fb      	beq.n	58c8 <_sbrk_r+0x14>
    58d0:	602b      	str	r3, [r5, #0]
    58d2:	e7f9      	b.n	58c8 <_sbrk_r+0x14>
    58d4:	20006074 	.word	0x20006074

000058d8 <osThreadExit>:
    58d8:	b580      	push	{r7, lr}
    58da:	4f03      	ldr	r7, [pc, #12]	; (58e8 <osThreadExit+0x10>)
    58dc:	46bc      	mov	ip, r7
    58de:	df00      	svc	0
    58e0:	4f02      	ldr	r7, [pc, #8]	; (58ec <osThreadExit+0x14>)
    58e2:	46bc      	mov	ip, r7
    58e4:	df00      	svc	0
    58e6:	e7fe      	b.n	58e6 <osThreadExit+0xe>
    58e8:	00005d19 	.word	0x00005d19
    58ec:	00005d35 	.word	0x00005d35

000058f0 <svcKernelInitialize>:
    58f0:	b570      	push	{r4, r5, r6, lr}
    58f2:	4c39      	ldr	r4, [pc, #228]	; (59d8 <svcKernelInitialize+0xe8>)
    58f4:	b084      	sub	sp, #16
    58f6:	7823      	ldrb	r3, [r4, #0]
    58f8:	2b00      	cmp	r3, #0
    58fa:	d00b      	beq.n	5914 <svcKernelInitialize+0x24>
    58fc:	22ff      	movs	r2, #255	; 0xff
    58fe:	4b37      	ldr	r3, [pc, #220]	; (59dc <svcKernelInitialize+0xec>)
    5900:	681b      	ldr	r3, [r3, #0]
    5902:	709a      	strb	r2, [r3, #2]
    5904:	2301      	movs	r3, #1
    5906:	2200      	movs	r2, #0
    5908:	2000      	movs	r0, #0
    590a:	7023      	strb	r3, [r4, #0]
    590c:	4b34      	ldr	r3, [pc, #208]	; (59e0 <svcKernelInitialize+0xf0>)
    590e:	701a      	strb	r2, [r3, #0]
    5910:	b004      	add	sp, #16
    5912:	bd70      	pop	{r4, r5, r6, pc}
    5914:	4b33      	ldr	r3, [pc, #204]	; (59e4 <svcKernelInitialize+0xf4>)
    5916:	4e34      	ldr	r6, [pc, #208]	; (59e8 <svcKernelInitialize+0xf8>)
    5918:	6819      	ldr	r1, [r3, #0]
    591a:	0030      	movs	r0, r6
    591c:	f001 fc60 	bl	71e0 <rt_init_mem>
    5920:	0003      	movs	r3, r0
    5922:	2085      	movs	r0, #133	; 0x85
    5924:	2b00      	cmp	r3, #0
    5926:	d1f3      	bne.n	5910 <svcKernelInitialize+0x20>
    5928:	f002 fe70 	bl	860c <rt_sys_init>
    592c:	21ff      	movs	r1, #255	; 0xff
    592e:	4a2b      	ldr	r2, [pc, #172]	; (59dc <svcKernelInitialize+0xec>)
    5930:	7823      	ldrb	r3, [r4, #0]
    5932:	6812      	ldr	r2, [r2, #0]
    5934:	7091      	strb	r1, [r2, #2]
    5936:	2b00      	cmp	r3, #0
    5938:	d1e4      	bne.n	5904 <svcKernelInitialize+0x14>
    593a:	4b2c      	ldr	r3, [pc, #176]	; (59ec <svcKernelInitialize+0xfc>)
    593c:	681a      	ldr	r2, [r3, #0]
    593e:	9201      	str	r2, [sp, #4]
    5940:	2a00      	cmp	r2, #0
    5942:	d047      	beq.n	59d4 <svcKernelInitialize+0xe4>
    5944:	685d      	ldr	r5, [r3, #4]
    5946:	2d00      	cmp	r5, #0
    5948:	d044      	beq.n	59d4 <svcKernelInitialize+0xe4>
    594a:	782b      	ldrb	r3, [r5, #0]
    594c:	2b00      	cmp	r3, #0
    594e:	d141      	bne.n	59d4 <svcKernelInitialize+0xe4>
    5950:	0011      	movs	r1, r2
    5952:	3104      	adds	r1, #4
    5954:	0089      	lsls	r1, r1, #2
    5956:	b289      	uxth	r1, r1
    5958:	0028      	movs	r0, r5
    595a:	f001 feeb 	bl	7734 <rt_mbx_init>
    595e:	4b24      	ldr	r3, [pc, #144]	; (59f0 <svcKernelInitialize+0x100>)
    5960:	601d      	str	r5, [r3, #0]
    5962:	4b24      	ldr	r3, [pc, #144]	; (59f4 <svcKernelInitialize+0x104>)
    5964:	681a      	ldr	r2, [r3, #0]
    5966:	9201      	str	r2, [sp, #4]
    5968:	2a00      	cmp	r2, #0
    596a:	d01e      	beq.n	59aa <svcKernelInitialize+0xba>
    596c:	685a      	ldr	r2, [r3, #4]
    596e:	9202      	str	r2, [sp, #8]
    5970:	3203      	adds	r2, #3
    5972:	2a06      	cmp	r2, #6
    5974:	d819      	bhi.n	59aa <svcKernelInitialize+0xba>
    5976:	68db      	ldr	r3, [r3, #12]
    5978:	9303      	str	r3, [sp, #12]
    597a:	2b00      	cmp	r3, #0
    597c:	d019      	beq.n	59b2 <svcKernelInitialize+0xc2>
    597e:	0019      	movs	r1, r3
    5980:	0030      	movs	r0, r6
    5982:	f001 fc3b 	bl	71fc <rt_alloc_mem>
    5986:	1e05      	subs	r5, r0, #0
    5988:	d00f      	beq.n	59aa <svcKernelInitialize+0xba>
    598a:	9b03      	ldr	r3, [sp, #12]
    598c:	9902      	ldr	r1, [sp, #8]
    598e:	021b      	lsls	r3, r3, #8
    5990:	3104      	adds	r1, #4
    5992:	4319      	orrs	r1, r3
    5994:	0002      	movs	r2, r0
    5996:	2300      	movs	r3, #0
    5998:	9801      	ldr	r0, [sp, #4]
    599a:	f002 fcf7 	bl	838c <rt_tsk_create>
    599e:	2800      	cmp	r0, #0
    59a0:	d110      	bne.n	59c4 <svcKernelInitialize+0xd4>
    59a2:	0029      	movs	r1, r5
    59a4:	0030      	movs	r0, r6
    59a6:	f001 fc4b 	bl	7240 <rt_free_mem>
    59aa:	2300      	movs	r3, #0
    59ac:	4a12      	ldr	r2, [pc, #72]	; (59f8 <svcKernelInitialize+0x108>)
    59ae:	6013      	str	r3, [r2, #0]
    59b0:	e7a8      	b.n	5904 <svcKernelInitialize+0x14>
    59b2:	9902      	ldr	r1, [sp, #8]
    59b4:	2300      	movs	r3, #0
    59b6:	3104      	adds	r1, #4
    59b8:	2200      	movs	r2, #0
    59ba:	9801      	ldr	r0, [sp, #4]
    59bc:	f002 fce6 	bl	838c <rt_tsk_create>
    59c0:	2800      	cmp	r0, #0
    59c2:	d0f2      	beq.n	59aa <svcKernelInitialize+0xba>
    59c4:	3801      	subs	r0, #1
    59c6:	4b0d      	ldr	r3, [pc, #52]	; (59fc <svcKernelInitialize+0x10c>)
    59c8:	0080      	lsls	r0, r0, #2
    59ca:	58c3      	ldr	r3, [r0, r3]
    59cc:	490c      	ldr	r1, [pc, #48]	; (5a00 <svcKernelInitialize+0x110>)
    59ce:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    59d0:	6351      	str	r1, [r2, #52]	; 0x34
    59d2:	e7eb      	b.n	59ac <svcKernelInitialize+0xbc>
    59d4:	2500      	movs	r5, #0
    59d6:	e7c2      	b.n	595e <svcKernelInitialize+0x6e>
    59d8:	20006078 	.word	0x20006078
    59dc:	200060b8 	.word	0x200060b8
    59e0:	20006079 	.word	0x20006079
    59e4:	00008910 	.word	0x00008910
    59e8:	200039f8 	.word	0x200039f8
    59ec:	00008928 	.word	0x00008928
    59f0:	20004d10 	.word	0x20004d10
    59f4:	00008918 	.word	0x00008918
    59f8:	20004cec 	.word	0x20004cec
    59fc:	20004cdc 	.word	0x20004cdc
    5a00:	000058d9 	.word	0x000058d9

00005a04 <svcKernelStart>:
    5a04:	b570      	push	{r4, r5, r6, lr}
    5a06:	4c10      	ldr	r4, [pc, #64]	; (5a48 <svcKernelStart+0x44>)
    5a08:	7823      	ldrb	r3, [r4, #0]
    5a0a:	2b00      	cmp	r3, #0
    5a0c:	d001      	beq.n	5a12 <svcKernelStart+0xe>
    5a0e:	2000      	movs	r0, #0
    5a10:	bd70      	pop	{r4, r5, r6, pc}
    5a12:	4d0e      	ldr	r5, [pc, #56]	; (5a4c <svcKernelStart+0x48>)
    5a14:	3324      	adds	r3, #36	; 0x24
    5a16:	682a      	ldr	r2, [r5, #0]
    5a18:	2000      	movs	r0, #0
    5a1a:	5cd1      	ldrb	r1, [r2, r3]
    5a1c:	f002 fc5a 	bl	82d4 <rt_tsk_prio>
    5a20:	682b      	ldr	r3, [r5, #0]
    5a22:	78da      	ldrb	r2, [r3, #3]
    5a24:	2aff      	cmp	r2, #255	; 0xff
    5a26:	d007      	beq.n	5a38 <svcKernelStart+0x34>
    5a28:	686a      	ldr	r2, [r5, #4]
    5a2a:	2a00      	cmp	r2, #0
    5a2c:	d009      	beq.n	5a42 <svcKernelStart+0x3e>
    5a2e:	f002 fe65 	bl	86fc <rt_sys_start>
    5a32:	2301      	movs	r3, #1
    5a34:	7023      	strb	r3, [r4, #0]
    5a36:	e7ea      	b.n	5a0e <svcKernelStart+0xa>
    5a38:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5a3a:	3220      	adds	r2, #32
    5a3c:	f382 8809 	msr	PSP, r2
    5a40:	e7f2      	b.n	5a28 <svcKernelStart+0x24>
    5a42:	c50c      	stmia	r5!, {r2, r3}
    5a44:	e7f3      	b.n	5a2e <svcKernelStart+0x2a>
    5a46:	46c0      	nop			; (mov r8, r8)
    5a48:	20006079 	.word	0x20006079
    5a4c:	200060b8 	.word	0x200060b8

00005a50 <svcKernelRunning>:
    5a50:	4b01      	ldr	r3, [pc, #4]	; (5a58 <svcKernelRunning+0x8>)
    5a52:	7818      	ldrb	r0, [r3, #0]
    5a54:	4770      	bx	lr
    5a56:	46c0      	nop			; (mov r8, r8)
    5a58:	20006079 	.word	0x20006079

00005a5c <svcKernelSysTick>:
    5a5c:	b510      	push	{r4, lr}
    5a5e:	b082      	sub	sp, #8
    5a60:	f002 fb88 	bl	8174 <os_tick_val>
    5a64:	0004      	movs	r4, r0
    5a66:	f002 fb8f 	bl	8188 <os_tick_ovf>
    5a6a:	2800      	cmp	r0, #0
    5a6c:	d109      	bne.n	5a82 <svcKernelSysTick+0x26>
    5a6e:	4b0d      	ldr	r3, [pc, #52]	; (5aa4 <svcKernelSysTick+0x48>)
    5a70:	681b      	ldr	r3, [r3, #0]
    5a72:	1c58      	adds	r0, r3, #1
    5a74:	9301      	str	r3, [sp, #4]
    5a76:	4b0c      	ldr	r3, [pc, #48]	; (5aa8 <svcKernelSysTick+0x4c>)
    5a78:	681b      	ldr	r3, [r3, #0]
    5a7a:	4358      	muls	r0, r3
    5a7c:	1900      	adds	r0, r0, r4
    5a7e:	b002      	add	sp, #8
    5a80:	bd10      	pop	{r4, pc}
    5a82:	f002 fb77 	bl	8174 <os_tick_val>
    5a86:	4284      	cmp	r4, r0
    5a88:	d809      	bhi.n	5a9e <svcKernelSysTick+0x42>
    5a8a:	4b06      	ldr	r3, [pc, #24]	; (5aa4 <svcKernelSysTick+0x48>)
    5a8c:	4a06      	ldr	r2, [pc, #24]	; (5aa8 <svcKernelSysTick+0x4c>)
    5a8e:	681b      	ldr	r3, [r3, #0]
    5a90:	6810      	ldr	r0, [r2, #0]
    5a92:	9301      	str	r3, [sp, #4]
    5a94:	3001      	adds	r0, #1
    5a96:	3301      	adds	r3, #1
    5a98:	4358      	muls	r0, r3
    5a9a:	1900      	adds	r0, r0, r4
    5a9c:	e7ef      	b.n	5a7e <svcKernelSysTick+0x22>
    5a9e:	0004      	movs	r4, r0
    5aa0:	e7f3      	b.n	5a8a <svcKernelSysTick+0x2e>
    5aa2:	46c0      	nop			; (mov r8, r8)
    5aa4:	000088f0 	.word	0x000088f0
    5aa8:	20006080 	.word	0x20006080

00005aac <osKernelInitialize>:
    5aac:	b5f0      	push	{r4, r5, r6, r7, lr}
    5aae:	b085      	sub	sp, #20
    5ab0:	f3ef 8405 	mrs	r4, IPSR
    5ab4:	2582      	movs	r5, #130	; 0x82
    5ab6:	2c00      	cmp	r4, #0
    5ab8:	d002      	beq.n	5ac0 <osKernelInitialize+0x14>
    5aba:	0028      	movs	r0, r5
    5abc:	b005      	add	sp, #20
    5abe:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5ac0:	f3ef 8414 	mrs	r4, CONTROL
    5ac4:	07e4      	lsls	r4, r4, #31
    5ac6:	d504      	bpl.n	5ad2 <osKernelInitialize+0x26>
    5ac8:	4f45      	ldr	r7, [pc, #276]	; (5be0 <osKernelInitialize+0x134>)
    5aca:	46bc      	mov	ip, r7
    5acc:	df00      	svc	0
    5ace:	0005      	movs	r5, r0
    5ad0:	e7f3      	b.n	5aba <osKernelInitialize+0xe>
    5ad2:	4c38      	ldr	r4, [pc, #224]	; (5bb4 <osKernelInitialize+0x108>)
    5ad4:	7823      	ldrb	r3, [r4, #0]
    5ad6:	2b00      	cmp	r3, #0
    5ad8:	d00a      	beq.n	5af0 <osKernelInitialize+0x44>
    5ada:	22ff      	movs	r2, #255	; 0xff
    5adc:	4b36      	ldr	r3, [pc, #216]	; (5bb8 <osKernelInitialize+0x10c>)
    5ade:	681b      	ldr	r3, [r3, #0]
    5ae0:	709a      	strb	r2, [r3, #2]
    5ae2:	2301      	movs	r3, #1
    5ae4:	2200      	movs	r2, #0
    5ae6:	7023      	strb	r3, [r4, #0]
    5ae8:	4b34      	ldr	r3, [pc, #208]	; (5bbc <osKernelInitialize+0x110>)
    5aea:	2500      	movs	r5, #0
    5aec:	701a      	strb	r2, [r3, #0]
    5aee:	e7e4      	b.n	5aba <osKernelInitialize+0xe>
    5af0:	4e33      	ldr	r6, [pc, #204]	; (5bc0 <osKernelInitialize+0x114>)
    5af2:	4b34      	ldr	r3, [pc, #208]	; (5bc4 <osKernelInitialize+0x118>)
    5af4:	0030      	movs	r0, r6
    5af6:	6819      	ldr	r1, [r3, #0]
    5af8:	f001 fb72 	bl	71e0 <rt_init_mem>
    5afc:	3503      	adds	r5, #3
    5afe:	2800      	cmp	r0, #0
    5b00:	d1db      	bne.n	5aba <osKernelInitialize+0xe>
    5b02:	f002 fd83 	bl	860c <rt_sys_init>
    5b06:	21ff      	movs	r1, #255	; 0xff
    5b08:	4a2b      	ldr	r2, [pc, #172]	; (5bb8 <osKernelInitialize+0x10c>)
    5b0a:	7823      	ldrb	r3, [r4, #0]
    5b0c:	6812      	ldr	r2, [r2, #0]
    5b0e:	7091      	strb	r1, [r2, #2]
    5b10:	2b00      	cmp	r3, #0
    5b12:	d1e6      	bne.n	5ae2 <osKernelInitialize+0x36>
    5b14:	4b2c      	ldr	r3, [pc, #176]	; (5bc8 <osKernelInitialize+0x11c>)
    5b16:	681a      	ldr	r2, [r3, #0]
    5b18:	9201      	str	r2, [sp, #4]
    5b1a:	2a00      	cmp	r2, #0
    5b1c:	d047      	beq.n	5bae <osKernelInitialize+0x102>
    5b1e:	685d      	ldr	r5, [r3, #4]
    5b20:	2d00      	cmp	r5, #0
    5b22:	d044      	beq.n	5bae <osKernelInitialize+0x102>
    5b24:	782b      	ldrb	r3, [r5, #0]
    5b26:	2b00      	cmp	r3, #0
    5b28:	d141      	bne.n	5bae <osKernelInitialize+0x102>
    5b2a:	0011      	movs	r1, r2
    5b2c:	3104      	adds	r1, #4
    5b2e:	0089      	lsls	r1, r1, #2
    5b30:	b289      	uxth	r1, r1
    5b32:	0028      	movs	r0, r5
    5b34:	f001 fdfe 	bl	7734 <rt_mbx_init>
    5b38:	4b24      	ldr	r3, [pc, #144]	; (5bcc <osKernelInitialize+0x120>)
    5b3a:	601d      	str	r5, [r3, #0]
    5b3c:	4b24      	ldr	r3, [pc, #144]	; (5bd0 <osKernelInitialize+0x124>)
    5b3e:	681a      	ldr	r2, [r3, #0]
    5b40:	9201      	str	r2, [sp, #4]
    5b42:	2a00      	cmp	r2, #0
    5b44:	d01e      	beq.n	5b84 <osKernelInitialize+0xd8>
    5b46:	685a      	ldr	r2, [r3, #4]
    5b48:	9202      	str	r2, [sp, #8]
    5b4a:	3203      	adds	r2, #3
    5b4c:	2a06      	cmp	r2, #6
    5b4e:	d819      	bhi.n	5b84 <osKernelInitialize+0xd8>
    5b50:	68db      	ldr	r3, [r3, #12]
    5b52:	9303      	str	r3, [sp, #12]
    5b54:	2b00      	cmp	r3, #0
    5b56:	d019      	beq.n	5b8c <osKernelInitialize+0xe0>
    5b58:	0019      	movs	r1, r3
    5b5a:	0030      	movs	r0, r6
    5b5c:	f001 fb4e 	bl	71fc <rt_alloc_mem>
    5b60:	1e05      	subs	r5, r0, #0
    5b62:	d00f      	beq.n	5b84 <osKernelInitialize+0xd8>
    5b64:	9902      	ldr	r1, [sp, #8]
    5b66:	9b03      	ldr	r3, [sp, #12]
    5b68:	3104      	adds	r1, #4
    5b6a:	021b      	lsls	r3, r3, #8
    5b6c:	4319      	orrs	r1, r3
    5b6e:	0002      	movs	r2, r0
    5b70:	2300      	movs	r3, #0
    5b72:	9801      	ldr	r0, [sp, #4]
    5b74:	f002 fc0a 	bl	838c <rt_tsk_create>
    5b78:	2800      	cmp	r0, #0
    5b7a:	d110      	bne.n	5b9e <osKernelInitialize+0xf2>
    5b7c:	0029      	movs	r1, r5
    5b7e:	0030      	movs	r0, r6
    5b80:	f001 fb5e 	bl	7240 <rt_free_mem>
    5b84:	2300      	movs	r3, #0
    5b86:	4a13      	ldr	r2, [pc, #76]	; (5bd4 <osKernelInitialize+0x128>)
    5b88:	6013      	str	r3, [r2, #0]
    5b8a:	e7aa      	b.n	5ae2 <osKernelInitialize+0x36>
    5b8c:	9902      	ldr	r1, [sp, #8]
    5b8e:	2300      	movs	r3, #0
    5b90:	3104      	adds	r1, #4
    5b92:	2200      	movs	r2, #0
    5b94:	9801      	ldr	r0, [sp, #4]
    5b96:	f002 fbf9 	bl	838c <rt_tsk_create>
    5b9a:	2800      	cmp	r0, #0
    5b9c:	d0f2      	beq.n	5b84 <osKernelInitialize+0xd8>
    5b9e:	3801      	subs	r0, #1
    5ba0:	4b0d      	ldr	r3, [pc, #52]	; (5bd8 <osKernelInitialize+0x12c>)
    5ba2:	0080      	lsls	r0, r0, #2
    5ba4:	58c3      	ldr	r3, [r0, r3]
    5ba6:	490d      	ldr	r1, [pc, #52]	; (5bdc <osKernelInitialize+0x130>)
    5ba8:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5baa:	6351      	str	r1, [r2, #52]	; 0x34
    5bac:	e7eb      	b.n	5b86 <osKernelInitialize+0xda>
    5bae:	2500      	movs	r5, #0
    5bb0:	e7c2      	b.n	5b38 <osKernelInitialize+0x8c>
    5bb2:	46c0      	nop			; (mov r8, r8)
    5bb4:	20006078 	.word	0x20006078
    5bb8:	200060b8 	.word	0x200060b8
    5bbc:	20006079 	.word	0x20006079
    5bc0:	200039f8 	.word	0x200039f8
    5bc4:	00008910 	.word	0x00008910
    5bc8:	00008928 	.word	0x00008928
    5bcc:	20004d10 	.word	0x20004d10
    5bd0:	00008918 	.word	0x00008918
    5bd4:	20004cec 	.word	0x20004cec
    5bd8:	20004cdc 	.word	0x20004cdc
    5bdc:	000058d9 	.word	0x000058d9
    5be0:	000058f1 	.word	0x000058f1

00005be4 <osKernelStart>:
    5be4:	b5b0      	push	{r4, r5, r7, lr}
    5be6:	b088      	sub	sp, #32
    5be8:	f3ef 8405 	mrs	r4, IPSR
    5bec:	2582      	movs	r5, #130	; 0x82
    5bee:	2c00      	cmp	r4, #0
    5bf0:	d002      	beq.n	5bf8 <osKernelStart+0x14>
    5bf2:	0028      	movs	r0, r5
    5bf4:	b008      	add	sp, #32
    5bf6:	bdb0      	pop	{r4, r5, r7, pc}
    5bf8:	f3ef 8414 	mrs	r4, CONTROL
    5bfc:	3d7f      	subs	r5, #127	; 0x7f
    5bfe:	402c      	ands	r4, r5
    5c00:	2c02      	cmp	r4, #2
    5c02:	d01c      	beq.n	5c3e <osKernelStart+0x5a>
    5c04:	2c03      	cmp	r4, #3
    5c06:	d014      	beq.n	5c32 <osKernelStart+0x4e>
    5c08:	2c01      	cmp	r4, #1
    5c0a:	d020      	beq.n	5c4e <osKernelStart+0x6a>
    5c0c:	ac08      	add	r4, sp, #32
    5c0e:	f384 8809 	msr	PSP, r4
    5c12:	4c10      	ldr	r4, [pc, #64]	; (5c54 <osKernelStart+0x70>)
    5c14:	7824      	ldrb	r4, [r4, #0]
    5c16:	07e4      	lsls	r4, r4, #31
    5c18:	d515      	bpl.n	5c46 <osKernelStart+0x62>
    5c1a:	2402      	movs	r4, #2
    5c1c:	f384 8814 	msr	CONTROL, r4
    5c20:	f3bf 8f4f 	dsb	sy
    5c24:	f3bf 8f6f 	isb	sy
    5c28:	4f0b      	ldr	r7, [pc, #44]	; (5c58 <osKernelStart+0x74>)
    5c2a:	46bc      	mov	ip, r7
    5c2c:	df00      	svc	0
    5c2e:	0005      	movs	r5, r0
    5c30:	e7df      	b.n	5bf2 <osKernelStart+0xe>
    5c32:	4c08      	ldr	r4, [pc, #32]	; (5c54 <osKernelStart+0x70>)
    5c34:	25ff      	movs	r5, #255	; 0xff
    5c36:	7824      	ldrb	r4, [r4, #0]
    5c38:	07e4      	lsls	r4, r4, #31
    5c3a:	d4da      	bmi.n	5bf2 <osKernelStart+0xe>
    5c3c:	e7f4      	b.n	5c28 <osKernelStart+0x44>
    5c3e:	4c05      	ldr	r4, [pc, #20]	; (5c54 <osKernelStart+0x70>)
    5c40:	7824      	ldrb	r4, [r4, #0]
    5c42:	07e4      	lsls	r4, r4, #31
    5c44:	d4f0      	bmi.n	5c28 <osKernelStart+0x44>
    5c46:	2403      	movs	r4, #3
    5c48:	f384 8814 	msr	CONTROL, r4
    5c4c:	e7e8      	b.n	5c20 <osKernelStart+0x3c>
    5c4e:	25ff      	movs	r5, #255	; 0xff
    5c50:	e7cf      	b.n	5bf2 <osKernelStart+0xe>
    5c52:	46c0      	nop			; (mov r8, r8)
    5c54:	000088f4 	.word	0x000088f4
    5c58:	00005a05 	.word	0x00005a05

00005c5c <osKernelRunning>:
    5c5c:	b590      	push	{r4, r7, lr}
    5c5e:	f3ef 8405 	mrs	r4, IPSR
    5c62:	2c00      	cmp	r4, #0
    5c64:	d107      	bne.n	5c76 <osKernelRunning+0x1a>
    5c66:	f3ef 8414 	mrs	r4, CONTROL
    5c6a:	07e4      	lsls	r4, r4, #31
    5c6c:	d503      	bpl.n	5c76 <osKernelRunning+0x1a>
    5c6e:	4f04      	ldr	r7, [pc, #16]	; (5c80 <osKernelRunning+0x24>)
    5c70:	46bc      	mov	ip, r7
    5c72:	df00      	svc	0
    5c74:	e001      	b.n	5c7a <osKernelRunning+0x1e>
    5c76:	4b01      	ldr	r3, [pc, #4]	; (5c7c <osKernelRunning+0x20>)
    5c78:	7818      	ldrb	r0, [r3, #0]
    5c7a:	bd90      	pop	{r4, r7, pc}
    5c7c:	20006079 	.word	0x20006079
    5c80:	00005a51 	.word	0x00005a51

00005c84 <osKernelSysTick>:
    5c84:	b5b0      	push	{r4, r5, r7, lr}
    5c86:	f3ef 8405 	mrs	r4, IPSR
    5c8a:	2500      	movs	r5, #0
    5c8c:	2c00      	cmp	r4, #0
    5c8e:	d103      	bne.n	5c98 <osKernelSysTick+0x14>
    5c90:	4f02      	ldr	r7, [pc, #8]	; (5c9c <osKernelSysTick+0x18>)
    5c92:	46bc      	mov	ip, r7
    5c94:	df00      	svc	0
    5c96:	0005      	movs	r5, r0
    5c98:	0028      	movs	r0, r5
    5c9a:	bdb0      	pop	{r4, r5, r7, pc}
    5c9c:	00005a5d 	.word	0x00005a5d

00005ca0 <svcThreadCreate>:
    5ca0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5ca2:	0004      	movs	r4, r0
    5ca4:	000d      	movs	r5, r1
    5ca6:	2800      	cmp	r0, #0
    5ca8:	d01f      	beq.n	5cea <svcThreadCreate+0x4a>
    5caa:	6800      	ldr	r0, [r0, #0]
    5cac:	2800      	cmp	r0, #0
    5cae:	d01c      	beq.n	5cea <svcThreadCreate+0x4a>
    5cb0:	6863      	ldr	r3, [r4, #4]
    5cb2:	1cda      	adds	r2, r3, #3
    5cb4:	2a06      	cmp	r2, #6
    5cb6:	d818      	bhi.n	5cea <svcThreadCreate+0x4a>
    5cb8:	68e1      	ldr	r1, [r4, #12]
    5cba:	2900      	cmp	r1, #0
    5cbc:	d017      	beq.n	5cee <svcThreadCreate+0x4e>
    5cbe:	4e13      	ldr	r6, [pc, #76]	; (5d0c <svcThreadCreate+0x6c>)
    5cc0:	0030      	movs	r0, r6
    5cc2:	f001 fa9b 	bl	71fc <rt_alloc_mem>
    5cc6:	1e07      	subs	r7, r0, #0
    5cc8:	d00f      	beq.n	5cea <svcThreadCreate+0x4a>
    5cca:	6863      	ldr	r3, [r4, #4]
    5ccc:	6820      	ldr	r0, [r4, #0]
    5cce:	1d19      	adds	r1, r3, #4
    5cd0:	68e3      	ldr	r3, [r4, #12]
    5cd2:	003a      	movs	r2, r7
    5cd4:	021b      	lsls	r3, r3, #8
    5cd6:	4319      	orrs	r1, r3
    5cd8:	002b      	movs	r3, r5
    5cda:	f002 fb57 	bl	838c <rt_tsk_create>
    5cde:	2800      	cmp	r0, #0
    5ce0:	d10c      	bne.n	5cfc <svcThreadCreate+0x5c>
    5ce2:	0039      	movs	r1, r7
    5ce4:	0030      	movs	r0, r6
    5ce6:	f001 faab 	bl	7240 <rt_free_mem>
    5cea:	2000      	movs	r0, #0
    5cec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5cee:	1d19      	adds	r1, r3, #4
    5cf0:	2200      	movs	r2, #0
    5cf2:	002b      	movs	r3, r5
    5cf4:	f002 fb4a 	bl	838c <rt_tsk_create>
    5cf8:	2800      	cmp	r0, #0
    5cfa:	d0f6      	beq.n	5cea <svcThreadCreate+0x4a>
    5cfc:	4b04      	ldr	r3, [pc, #16]	; (5d10 <svcThreadCreate+0x70>)
    5cfe:	3801      	subs	r0, #1
    5d00:	0080      	lsls	r0, r0, #2
    5d02:	58c0      	ldr	r0, [r0, r3]
    5d04:	4a03      	ldr	r2, [pc, #12]	; (5d14 <svcThreadCreate+0x74>)
    5d06:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5d08:	635a      	str	r2, [r3, #52]	; 0x34
    5d0a:	e7ef      	b.n	5cec <svcThreadCreate+0x4c>
    5d0c:	200039f8 	.word	0x200039f8
    5d10:	20004cdc 	.word	0x20004cdc
    5d14:	000058d9 	.word	0x000058d9

00005d18 <svcThreadGetId>:
    5d18:	b510      	push	{r4, lr}
    5d1a:	f002 fad1 	bl	82c0 <rt_tsk_self>
    5d1e:	2800      	cmp	r0, #0
    5d20:	d004      	beq.n	5d2c <svcThreadGetId+0x14>
    5d22:	3801      	subs	r0, #1
    5d24:	4b02      	ldr	r3, [pc, #8]	; (5d30 <svcThreadGetId+0x18>)
    5d26:	0080      	lsls	r0, r0, #2
    5d28:	58c0      	ldr	r0, [r0, r3]
    5d2a:	bd10      	pop	{r4, pc}
    5d2c:	2000      	movs	r0, #0
    5d2e:	e7fc      	b.n	5d2a <svcThreadGetId+0x12>
    5d30:	20004cdc 	.word	0x20004cdc

00005d34 <svcThreadTerminate>:
    5d34:	0003      	movs	r3, r0
    5d36:	b510      	push	{r4, lr}
    5d38:	2080      	movs	r0, #128	; 0x80
    5d3a:	2b00      	cmp	r3, #0
    5d3c:	d017      	beq.n	5d6e <svcThreadTerminate+0x3a>
    5d3e:	079a      	lsls	r2, r3, #30
    5d40:	d115      	bne.n	5d6e <svcThreadTerminate+0x3a>
    5d42:	781a      	ldrb	r2, [r3, #0]
    5d44:	2a00      	cmp	r2, #0
    5d46:	d112      	bne.n	5d6e <svcThreadTerminate+0x3a>
    5d48:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    5d4a:	2400      	movs	r4, #0
    5d4c:	2a00      	cmp	r2, #0
    5d4e:	d000      	beq.n	5d52 <svcThreadTerminate+0x1e>
    5d50:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    5d52:	78d8      	ldrb	r0, [r3, #3]
    5d54:	f002 fb94 	bl	8480 <rt_tsk_delete>
    5d58:	0003      	movs	r3, r0
    5d5a:	2081      	movs	r0, #129	; 0x81
    5d5c:	2bff      	cmp	r3, #255	; 0xff
    5d5e:	d006      	beq.n	5d6e <svcThreadTerminate+0x3a>
    5d60:	2c00      	cmp	r4, #0
    5d62:	d005      	beq.n	5d70 <svcThreadTerminate+0x3c>
    5d64:	0021      	movs	r1, r4
    5d66:	4803      	ldr	r0, [pc, #12]	; (5d74 <svcThreadTerminate+0x40>)
    5d68:	f001 fa6a 	bl	7240 <rt_free_mem>
    5d6c:	2000      	movs	r0, #0
    5d6e:	bd10      	pop	{r4, pc}
    5d70:	2000      	movs	r0, #0
    5d72:	e7fc      	b.n	5d6e <svcThreadTerminate+0x3a>
    5d74:	200039f8 	.word	0x200039f8

00005d78 <svcThreadYield>:
    5d78:	b510      	push	{r4, lr}
    5d7a:	f002 fa8b 	bl	8294 <rt_tsk_pass>
    5d7e:	2000      	movs	r0, #0
    5d80:	bd10      	pop	{r4, pc}
    5d82:	46c0      	nop			; (mov r8, r8)

00005d84 <svcThreadSetPriority>:
    5d84:	0003      	movs	r3, r0
    5d86:	b510      	push	{r4, lr}
    5d88:	2080      	movs	r0, #128	; 0x80
    5d8a:	2b00      	cmp	r3, #0
    5d8c:	d008      	beq.n	5da0 <svcThreadSetPriority+0x1c>
    5d8e:	079a      	lsls	r2, r3, #30
    5d90:	d106      	bne.n	5da0 <svcThreadSetPriority+0x1c>
    5d92:	781a      	ldrb	r2, [r3, #0]
    5d94:	2a00      	cmp	r2, #0
    5d96:	d103      	bne.n	5da0 <svcThreadSetPriority+0x1c>
    5d98:	1cca      	adds	r2, r1, #3
    5d9a:	2086      	movs	r0, #134	; 0x86
    5d9c:	2a06      	cmp	r2, #6
    5d9e:	d900      	bls.n	5da2 <svcThreadSetPriority+0x1e>
    5da0:	bd10      	pop	{r4, pc}
    5da2:	3104      	adds	r1, #4
    5da4:	78d8      	ldrb	r0, [r3, #3]
    5da6:	b2c9      	uxtb	r1, r1
    5da8:	f002 fa94 	bl	82d4 <rt_tsk_prio>
    5dac:	0003      	movs	r3, r0
    5dae:	2081      	movs	r0, #129	; 0x81
    5db0:	2bff      	cmp	r3, #255	; 0xff
    5db2:	d0f5      	beq.n	5da0 <svcThreadSetPriority+0x1c>
    5db4:	2000      	movs	r0, #0
    5db6:	e7f3      	b.n	5da0 <svcThreadSetPriority+0x1c>

00005db8 <svcThreadGetPriority>:
    5db8:	0003      	movs	r3, r0
    5dba:	2084      	movs	r0, #132	; 0x84
    5dbc:	2b00      	cmp	r3, #0
    5dbe:	d006      	beq.n	5dce <svcThreadGetPriority+0x16>
    5dc0:	079a      	lsls	r2, r3, #30
    5dc2:	d104      	bne.n	5dce <svcThreadGetPriority+0x16>
    5dc4:	781a      	ldrb	r2, [r3, #0]
    5dc6:	2a00      	cmp	r2, #0
    5dc8:	d101      	bne.n	5dce <svcThreadGetPriority+0x16>
    5dca:	7898      	ldrb	r0, [r3, #2]
    5dcc:	3804      	subs	r0, #4
    5dce:	4770      	bx	lr

00005dd0 <osThreadCreate>:
    5dd0:	b5f0      	push	{r4, r5, r6, r7, lr}
    5dd2:	4647      	mov	r7, r8
    5dd4:	0004      	movs	r4, r0
    5dd6:	b480      	push	{r7}
    5dd8:	000d      	movs	r5, r1
    5dda:	f3ef 8105 	mrs	r1, IPSR
    5dde:	2900      	cmp	r1, #0
    5de0:	d132      	bne.n	5e48 <osThreadCreate+0x78>
    5de2:	f3ef 8114 	mrs	r1, CONTROL
    5de6:	07c9      	lsls	r1, r1, #31
    5de8:	d507      	bpl.n	5dfa <osThreadCreate+0x2a>
    5dea:	0020      	movs	r0, r4
    5dec:	0029      	movs	r1, r5
    5dee:	4f23      	ldr	r7, [pc, #140]	; (5e7c <osThreadCreate+0xac>)
    5df0:	46bc      	mov	ip, r7
    5df2:	df00      	svc	0
    5df4:	bc04      	pop	{r2}
    5df6:	4690      	mov	r8, r2
    5df8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5dfa:	491c      	ldr	r1, [pc, #112]	; (5e6c <osThreadCreate+0x9c>)
    5dfc:	7809      	ldrb	r1, [r1, #0]
    5dfe:	2900      	cmp	r1, #0
    5e00:	d1f3      	bne.n	5dea <osThreadCreate+0x1a>
    5e02:	2800      	cmp	r0, #0
    5e04:	d020      	beq.n	5e48 <osThreadCreate+0x78>
    5e06:	6800      	ldr	r0, [r0, #0]
    5e08:	2800      	cmp	r0, #0
    5e0a:	d01d      	beq.n	5e48 <osThreadCreate+0x78>
    5e0c:	6863      	ldr	r3, [r4, #4]
    5e0e:	1cda      	adds	r2, r3, #3
    5e10:	2a06      	cmp	r2, #6
    5e12:	d819      	bhi.n	5e48 <osThreadCreate+0x78>
    5e14:	68e1      	ldr	r1, [r4, #12]
    5e16:	2900      	cmp	r1, #0
    5e18:	d018      	beq.n	5e4c <osThreadCreate+0x7c>
    5e1a:	4e15      	ldr	r6, [pc, #84]	; (5e70 <osThreadCreate+0xa0>)
    5e1c:	0030      	movs	r0, r6
    5e1e:	f001 f9ed 	bl	71fc <rt_alloc_mem>
    5e22:	4680      	mov	r8, r0
    5e24:	2800      	cmp	r0, #0
    5e26:	d00f      	beq.n	5e48 <osThreadCreate+0x78>
    5e28:	6863      	ldr	r3, [r4, #4]
    5e2a:	6820      	ldr	r0, [r4, #0]
    5e2c:	1d19      	adds	r1, r3, #4
    5e2e:	68e3      	ldr	r3, [r4, #12]
    5e30:	4642      	mov	r2, r8
    5e32:	021b      	lsls	r3, r3, #8
    5e34:	4319      	orrs	r1, r3
    5e36:	002b      	movs	r3, r5
    5e38:	f002 faa8 	bl	838c <rt_tsk_create>
    5e3c:	2800      	cmp	r0, #0
    5e3e:	d10c      	bne.n	5e5a <osThreadCreate+0x8a>
    5e40:	4641      	mov	r1, r8
    5e42:	0030      	movs	r0, r6
    5e44:	f001 f9fc 	bl	7240 <rt_free_mem>
    5e48:	2000      	movs	r0, #0
    5e4a:	e7d3      	b.n	5df4 <osThreadCreate+0x24>
    5e4c:	1d19      	adds	r1, r3, #4
    5e4e:	2200      	movs	r2, #0
    5e50:	002b      	movs	r3, r5
    5e52:	f002 fa9b 	bl	838c <rt_tsk_create>
    5e56:	2800      	cmp	r0, #0
    5e58:	d0f6      	beq.n	5e48 <osThreadCreate+0x78>
    5e5a:	4b06      	ldr	r3, [pc, #24]	; (5e74 <osThreadCreate+0xa4>)
    5e5c:	3801      	subs	r0, #1
    5e5e:	0080      	lsls	r0, r0, #2
    5e60:	58c0      	ldr	r0, [r0, r3]
    5e62:	4a05      	ldr	r2, [pc, #20]	; (5e78 <osThreadCreate+0xa8>)
    5e64:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5e66:	635a      	str	r2, [r3, #52]	; 0x34
    5e68:	e7c4      	b.n	5df4 <osThreadCreate+0x24>
    5e6a:	46c0      	nop			; (mov r8, r8)
    5e6c:	20006079 	.word	0x20006079
    5e70:	200039f8 	.word	0x200039f8
    5e74:	20004cdc 	.word	0x20004cdc
    5e78:	000058d9 	.word	0x000058d9
    5e7c:	00005ca1 	.word	0x00005ca1

00005e80 <osThreadGetId>:
    5e80:	b590      	push	{r4, r7, lr}
    5e82:	f3ef 8405 	mrs	r4, IPSR
    5e86:	2c00      	cmp	r4, #0
    5e88:	d103      	bne.n	5e92 <osThreadGetId+0x12>
    5e8a:	4f03      	ldr	r7, [pc, #12]	; (5e98 <osThreadGetId+0x18>)
    5e8c:	46bc      	mov	ip, r7
    5e8e:	df00      	svc	0
    5e90:	bd90      	pop	{r4, r7, pc}
    5e92:	2000      	movs	r0, #0
    5e94:	e7fc      	b.n	5e90 <osThreadGetId+0x10>
    5e96:	0000      	.short	0x0000
    5e98:	00005d19 	.word	0x00005d19

00005e9c <osThreadTerminate>:
    5e9c:	b5b0      	push	{r4, r5, r7, lr}
    5e9e:	0005      	movs	r5, r0
    5ea0:	f3ef 8405 	mrs	r4, IPSR
    5ea4:	2082      	movs	r0, #130	; 0x82
    5ea6:	2c00      	cmp	r4, #0
    5ea8:	d000      	beq.n	5eac <osThreadTerminate+0x10>
    5eaa:	bdb0      	pop	{r4, r5, r7, pc}
    5eac:	0028      	movs	r0, r5
    5eae:	4f02      	ldr	r7, [pc, #8]	; (5eb8 <osThreadTerminate+0x1c>)
    5eb0:	46bc      	mov	ip, r7
    5eb2:	df00      	svc	0
    5eb4:	e7f9      	b.n	5eaa <osThreadTerminate+0xe>
    5eb6:	0000      	.short	0x0000
    5eb8:	00005d35 	.word	0x00005d35

00005ebc <osThreadYield>:
    5ebc:	b5b0      	push	{r4, r5, r7, lr}
    5ebe:	f3ef 8405 	mrs	r4, IPSR
    5ec2:	2582      	movs	r5, #130	; 0x82
    5ec4:	2c00      	cmp	r4, #0
    5ec6:	d001      	beq.n	5ecc <osThreadYield+0x10>
    5ec8:	0028      	movs	r0, r5
    5eca:	bdb0      	pop	{r4, r5, r7, pc}
    5ecc:	4f02      	ldr	r7, [pc, #8]	; (5ed8 <osThreadYield+0x1c>)
    5ece:	46bc      	mov	ip, r7
    5ed0:	df00      	svc	0
    5ed2:	0005      	movs	r5, r0
    5ed4:	e7f8      	b.n	5ec8 <osThreadYield+0xc>
    5ed6:	0000      	.short	0x0000
    5ed8:	00005d79 	.word	0x00005d79

00005edc <osThreadSetPriority>:
    5edc:	b5b0      	push	{r4, r5, r7, lr}
    5ede:	0005      	movs	r5, r0
    5ee0:	f3ef 8405 	mrs	r4, IPSR
    5ee4:	2082      	movs	r0, #130	; 0x82
    5ee6:	2c00      	cmp	r4, #0
    5ee8:	d000      	beq.n	5eec <osThreadSetPriority+0x10>
    5eea:	bdb0      	pop	{r4, r5, r7, pc}
    5eec:	0028      	movs	r0, r5
    5eee:	4f02      	ldr	r7, [pc, #8]	; (5ef8 <osThreadSetPriority+0x1c>)
    5ef0:	46bc      	mov	ip, r7
    5ef2:	df00      	svc	0
    5ef4:	e7f9      	b.n	5eea <osThreadSetPriority+0xe>
    5ef6:	0000      	.short	0x0000
    5ef8:	00005d85 	.word	0x00005d85

00005efc <osThreadGetPriority>:
    5efc:	b5b0      	push	{r4, r5, r7, lr}
    5efe:	0005      	movs	r5, r0
    5f00:	f3ef 8405 	mrs	r4, IPSR
    5f04:	2084      	movs	r0, #132	; 0x84
    5f06:	2c00      	cmp	r4, #0
    5f08:	d000      	beq.n	5f0c <osThreadGetPriority+0x10>
    5f0a:	bdb0      	pop	{r4, r5, r7, pc}
    5f0c:	0028      	movs	r0, r5
    5f0e:	4f02      	ldr	r7, [pc, #8]	; (5f18 <osThreadGetPriority+0x1c>)
    5f10:	46bc      	mov	ip, r7
    5f12:	df00      	svc	0
    5f14:	e7f9      	b.n	5f0a <osThreadGetPriority+0xe>
    5f16:	0000      	.short	0x0000
    5f18:	00005db9 	.word	0x00005db9

00005f1c <svcDelay>:
    5f1c:	b500      	push	{lr}
    5f1e:	b083      	sub	sp, #12
    5f20:	2800      	cmp	r0, #0
    5f22:	d019      	beq.n	5f58 <svcDelay+0x3c>
    5f24:	1c43      	adds	r3, r0, #1
    5f26:	d01c      	beq.n	5f62 <svcDelay+0x46>
    5f28:	4b10      	ldr	r3, [pc, #64]	; (5f6c <svcDelay+0x50>)
    5f2a:	4298      	cmp	r0, r3
    5f2c:	d817      	bhi.n	5f5e <svcDelay+0x42>
    5f2e:	4b10      	ldr	r3, [pc, #64]	; (5f70 <svcDelay+0x54>)
    5f30:	681b      	ldr	r3, [r3, #0]
    5f32:	9301      	str	r3, [sp, #4]
    5f34:	23fa      	movs	r3, #250	; 0xfa
    5f36:	009b      	lsls	r3, r3, #2
    5f38:	4358      	muls	r0, r3
    5f3a:	9b01      	ldr	r3, [sp, #4]
    5f3c:	9901      	ldr	r1, [sp, #4]
    5f3e:	3b01      	subs	r3, #1
    5f40:	18c0      	adds	r0, r0, r3
    5f42:	f7fe fb99 	bl	4678 <__aeabi_uidiv>
    5f46:	4b0b      	ldr	r3, [pc, #44]	; (5f74 <svcDelay+0x58>)
    5f48:	0002      	movs	r2, r0
    5f4a:	0018      	movs	r0, r3
    5f4c:	429a      	cmp	r2, r3
    5f4e:	d90a      	bls.n	5f66 <svcDelay+0x4a>
    5f50:	f001 fb34 	bl	75bc <rt_dly_wait>
    5f54:	2040      	movs	r0, #64	; 0x40
    5f56:	e000      	b.n	5f5a <svcDelay+0x3e>
    5f58:	2000      	movs	r0, #0
    5f5a:	b003      	add	sp, #12
    5f5c:	bd00      	pop	{pc}
    5f5e:	4805      	ldr	r0, [pc, #20]	; (5f74 <svcDelay+0x58>)
    5f60:	e7f6      	b.n	5f50 <svcDelay+0x34>
    5f62:	4805      	ldr	r0, [pc, #20]	; (5f78 <svcDelay+0x5c>)
    5f64:	e7f4      	b.n	5f50 <svcDelay+0x34>
    5f66:	b290      	uxth	r0, r2
    5f68:	e7f2      	b.n	5f50 <svcDelay+0x34>
    5f6a:	46c0      	nop			; (mov r8, r8)
    5f6c:	003d0900 	.word	0x003d0900
    5f70:	00008900 	.word	0x00008900
    5f74:	0000fffe 	.word	0x0000fffe
    5f78:	0000ffff 	.word	0x0000ffff

00005f7c <osDelay>:
    5f7c:	b5b0      	push	{r4, r5, r7, lr}
    5f7e:	0005      	movs	r5, r0
    5f80:	f3ef 8405 	mrs	r4, IPSR
    5f84:	2082      	movs	r0, #130	; 0x82
    5f86:	2c00      	cmp	r4, #0
    5f88:	d000      	beq.n	5f8c <osDelay+0x10>
    5f8a:	bdb0      	pop	{r4, r5, r7, pc}
    5f8c:	0028      	movs	r0, r5
    5f8e:	4f02      	ldr	r7, [pc, #8]	; (5f98 <osDelay+0x1c>)
    5f90:	46bc      	mov	ip, r7
    5f92:	df00      	svc	0
    5f94:	e7f9      	b.n	5f8a <osDelay+0xe>
    5f96:	0000      	.short	0x0000
    5f98:	00005f1d 	.word	0x00005f1d

00005f9c <osWait>:
    5f9c:	23ff      	movs	r3, #255	; 0xff
    5f9e:	6003      	str	r3, [r0, #0]
    5fa0:	4770      	bx	lr
    5fa2:	46c0      	nop			; (mov r8, r8)

00005fa4 <svcTimerCreate>:
    5fa4:	b510      	push	{r4, lr}
    5fa6:	2800      	cmp	r0, #0
    5fa8:	d016      	beq.n	5fd8 <svcTimerCreate+0x34>
    5faa:	6803      	ldr	r3, [r0, #0]
    5fac:	2b00      	cmp	r3, #0
    5fae:	d013      	beq.n	5fd8 <svcTimerCreate+0x34>
    5fb0:	6843      	ldr	r3, [r0, #4]
    5fb2:	2b00      	cmp	r3, #0
    5fb4:	d010      	beq.n	5fd8 <svcTimerCreate+0x34>
    5fb6:	2901      	cmp	r1, #1
    5fb8:	d80e      	bhi.n	5fd8 <svcTimerCreate+0x34>
    5fba:	4c08      	ldr	r4, [pc, #32]	; (5fdc <svcTimerCreate+0x38>)
    5fbc:	6824      	ldr	r4, [r4, #0]
    5fbe:	2c00      	cmp	r4, #0
    5fc0:	d00a      	beq.n	5fd8 <svcTimerCreate+0x34>
    5fc2:	791c      	ldrb	r4, [r3, #4]
    5fc4:	2c00      	cmp	r4, #0
    5fc6:	d107      	bne.n	5fd8 <svcTimerCreate+0x34>
    5fc8:	6158      	str	r0, [r3, #20]
    5fca:	0018      	movs	r0, r3
    5fcc:	601c      	str	r4, [r3, #0]
    5fce:	3401      	adds	r4, #1
    5fd0:	711c      	strb	r4, [r3, #4]
    5fd2:	7159      	strb	r1, [r3, #5]
    5fd4:	611a      	str	r2, [r3, #16]
    5fd6:	bd10      	pop	{r4, pc}
    5fd8:	2000      	movs	r0, #0
    5fda:	e7fc      	b.n	5fd6 <svcTimerCreate+0x32>
    5fdc:	20004cec 	.word	0x20004cec

00005fe0 <svcTimerStart>:
    5fe0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5fe2:	0004      	movs	r4, r0
    5fe4:	2080      	movs	r0, #128	; 0x80
    5fe6:	07a3      	lsls	r3, r4, #30
    5fe8:	d104      	bne.n	5ff4 <svcTimerStart+0x14>
    5fea:	2c00      	cmp	r4, #0
    5fec:	d002      	beq.n	5ff4 <svcTimerStart+0x14>
    5fee:	3006      	adds	r0, #6
    5ff0:	2900      	cmp	r1, #0
    5ff2:	d100      	bne.n	5ff6 <svcTimerStart+0x16>
    5ff4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5ff6:	22fa      	movs	r2, #250	; 0xfa
    5ff8:	4b2f      	ldr	r3, [pc, #188]	; (60b8 <svcTimerStart+0xd8>)
    5ffa:	0092      	lsls	r2, r2, #2
    5ffc:	681e      	ldr	r6, [r3, #0]
    5ffe:	0008      	movs	r0, r1
    6000:	2300      	movs	r3, #0
    6002:	2100      	movs	r1, #0
    6004:	f7fe fd78 	bl	4af8 <__aeabi_lmul>
    6008:	2700      	movs	r7, #0
    600a:	0002      	movs	r2, r0
    600c:	000b      	movs	r3, r1
    600e:	2001      	movs	r0, #1
    6010:	4240      	negs	r0, r0
    6012:	17c1      	asrs	r1, r0, #31
    6014:	1980      	adds	r0, r0, r6
    6016:	4179      	adcs	r1, r7
    6018:	1880      	adds	r0, r0, r2
    601a:	4159      	adcs	r1, r3
    601c:	003b      	movs	r3, r7
    601e:	0032      	movs	r2, r6
    6020:	f7fe fd4a 	bl	4ab8 <__aeabi_uldivmod>
    6024:	7923      	ldrb	r3, [r4, #4]
    6026:	2b01      	cmp	r3, #1
    6028:	d011      	beq.n	604e <svcTimerStart+0x6e>
    602a:	2b02      	cmp	r3, #2
    602c:	d10d      	bne.n	604a <svcTimerStart+0x6a>
    602e:	4d23      	ldr	r5, [pc, #140]	; (60bc <svcTimerStart+0xdc>)
    6030:	6829      	ldr	r1, [r5, #0]
    6032:	2900      	cmp	r1, #0
    6034:	d009      	beq.n	604a <svcTimerStart+0x6a>
    6036:	428c      	cmp	r4, r1
    6038:	d03a      	beq.n	60b0 <svcTimerStart+0xd0>
    603a:	000a      	movs	r2, r1
    603c:	e002      	b.n	6044 <svcTimerStart+0x64>
    603e:	429c      	cmp	r4, r3
    6040:	d028      	beq.n	6094 <svcTimerStart+0xb4>
    6042:	001a      	movs	r2, r3
    6044:	6813      	ldr	r3, [r2, #0]
    6046:	2b00      	cmp	r3, #0
    6048:	d1f9      	bne.n	603e <svcTimerStart+0x5e>
    604a:	2081      	movs	r0, #129	; 0x81
    604c:	e7d2      	b.n	5ff4 <svcTimerStart+0x14>
    604e:	2302      	movs	r3, #2
    6050:	4d1a      	ldr	r5, [pc, #104]	; (60bc <svcTimerStart+0xdc>)
    6052:	7123      	strb	r3, [r4, #4]
    6054:	6829      	ldr	r1, [r5, #0]
    6056:	60e0      	str	r0, [r4, #12]
    6058:	2900      	cmp	r1, #0
    605a:	d00b      	beq.n	6074 <svcTimerStart+0x94>
    605c:	688a      	ldr	r2, [r1, #8]
    605e:	4290      	cmp	r0, r2
    6060:	d204      	bcs.n	606c <svcTimerStart+0x8c>
    6062:	e00f      	b.n	6084 <svcTimerStart+0xa4>
    6064:	689a      	ldr	r2, [r3, #8]
    6066:	4282      	cmp	r2, r0
    6068:	d80e      	bhi.n	6088 <svcTimerStart+0xa8>
    606a:	0019      	movs	r1, r3
    606c:	680b      	ldr	r3, [r1, #0]
    606e:	1a80      	subs	r0, r0, r2
    6070:	2b00      	cmp	r3, #0
    6072:	d1f7      	bne.n	6064 <svcTimerStart+0x84>
    6074:	2300      	movs	r3, #0
    6076:	60a0      	str	r0, [r4, #8]
    6078:	6023      	str	r3, [r4, #0]
    607a:	2900      	cmp	r1, #0
    607c:	d015      	beq.n	60aa <svcTimerStart+0xca>
    607e:	600c      	str	r4, [r1, #0]
    6080:	2000      	movs	r0, #0
    6082:	e7b7      	b.n	5ff4 <svcTimerStart+0x14>
    6084:	000b      	movs	r3, r1
    6086:	2100      	movs	r1, #0
    6088:	60a0      	str	r0, [r4, #8]
    608a:	689a      	ldr	r2, [r3, #8]
    608c:	6023      	str	r3, [r4, #0]
    608e:	1a10      	subs	r0, r2, r0
    6090:	6098      	str	r0, [r3, #8]
    6092:	e7f2      	b.n	607a <svcTimerStart+0x9a>
    6094:	6823      	ldr	r3, [r4, #0]
    6096:	6013      	str	r3, [r2, #0]
    6098:	6823      	ldr	r3, [r4, #0]
    609a:	2b00      	cmp	r3, #0
    609c:	d0dc      	beq.n	6058 <svcTimerStart+0x78>
    609e:	68a6      	ldr	r6, [r4, #8]
    60a0:	689a      	ldr	r2, [r3, #8]
    60a2:	46b4      	mov	ip, r6
    60a4:	4462      	add	r2, ip
    60a6:	609a      	str	r2, [r3, #8]
    60a8:	e7d6      	b.n	6058 <svcTimerStart+0x78>
    60aa:	602c      	str	r4, [r5, #0]
    60ac:	2000      	movs	r0, #0
    60ae:	e7a1      	b.n	5ff4 <svcTimerStart+0x14>
    60b0:	6823      	ldr	r3, [r4, #0]
    60b2:	602b      	str	r3, [r5, #0]
    60b4:	0019      	movs	r1, r3
    60b6:	e7f0      	b.n	609a <svcTimerStart+0xba>
    60b8:	00008900 	.word	0x00008900
    60bc:	2000607c 	.word	0x2000607c

000060c0 <svcTimerStop>:
    60c0:	0003      	movs	r3, r0
    60c2:	2080      	movs	r0, #128	; 0x80
    60c4:	079a      	lsls	r2, r3, #30
    60c6:	d105      	bne.n	60d4 <svcTimerStop+0x14>
    60c8:	2b00      	cmp	r3, #0
    60ca:	d003      	beq.n	60d4 <svcTimerStop+0x14>
    60cc:	791a      	ldrb	r2, [r3, #4]
    60ce:	2a02      	cmp	r2, #2
    60d0:	d001      	beq.n	60d6 <svcTimerStop+0x16>
    60d2:	2081      	movs	r0, #129	; 0x81
    60d4:	4770      	bx	lr
    60d6:	2201      	movs	r2, #1
    60d8:	480e      	ldr	r0, [pc, #56]	; (6114 <svcTimerStop+0x54>)
    60da:	711a      	strb	r2, [r3, #4]
    60dc:	6801      	ldr	r1, [r0, #0]
    60de:	2900      	cmp	r1, #0
    60e0:	d0f7      	beq.n	60d2 <svcTimerStop+0x12>
    60e2:	428b      	cmp	r3, r1
    60e4:	d105      	bne.n	60f2 <svcTimerStop+0x32>
    60e6:	681a      	ldr	r2, [r3, #0]
    60e8:	6002      	str	r2, [r0, #0]
    60ea:	e009      	b.n	6100 <svcTimerStop+0x40>
    60ec:	4293      	cmp	r3, r2
    60ee:	d004      	beq.n	60fa <svcTimerStop+0x3a>
    60f0:	0011      	movs	r1, r2
    60f2:	680a      	ldr	r2, [r1, #0]
    60f4:	2a00      	cmp	r2, #0
    60f6:	d1f9      	bne.n	60ec <svcTimerStop+0x2c>
    60f8:	e7eb      	b.n	60d2 <svcTimerStop+0x12>
    60fa:	681a      	ldr	r2, [r3, #0]
    60fc:	600a      	str	r2, [r1, #0]
    60fe:	681a      	ldr	r2, [r3, #0]
    6100:	2a00      	cmp	r2, #0
    6102:	d004      	beq.n	610e <svcTimerStop+0x4e>
    6104:	6891      	ldr	r1, [r2, #8]
    6106:	689b      	ldr	r3, [r3, #8]
    6108:	468c      	mov	ip, r1
    610a:	4463      	add	r3, ip
    610c:	6093      	str	r3, [r2, #8]
    610e:	2000      	movs	r0, #0
    6110:	e7e0      	b.n	60d4 <svcTimerStop+0x14>
    6112:	46c0      	nop			; (mov r8, r8)
    6114:	2000607c 	.word	0x2000607c

00006118 <svcTimerDelete>:
    6118:	0002      	movs	r2, r0
    611a:	2080      	movs	r0, #128	; 0x80
    611c:	0793      	lsls	r3, r2, #30
    611e:	d117      	bne.n	6150 <svcTimerDelete+0x38>
    6120:	2a00      	cmp	r2, #0
    6122:	d015      	beq.n	6150 <svcTimerDelete+0x38>
    6124:	7913      	ldrb	r3, [r2, #4]
    6126:	2b01      	cmp	r3, #1
    6128:	d00f      	beq.n	614a <svcTimerDelete+0x32>
    612a:	2081      	movs	r0, #129	; 0x81
    612c:	2b02      	cmp	r3, #2
    612e:	d10f      	bne.n	6150 <svcTimerDelete+0x38>
    6130:	4810      	ldr	r0, [pc, #64]	; (6174 <svcTimerDelete+0x5c>)
    6132:	6801      	ldr	r1, [r0, #0]
    6134:	2900      	cmp	r1, #0
    6136:	d008      	beq.n	614a <svcTimerDelete+0x32>
    6138:	428a      	cmp	r2, r1
    613a:	d103      	bne.n	6144 <svcTimerDelete+0x2c>
    613c:	e017      	b.n	616e <svcTimerDelete+0x56>
    613e:	429a      	cmp	r2, r3
    6140:	d007      	beq.n	6152 <svcTimerDelete+0x3a>
    6142:	0019      	movs	r1, r3
    6144:	680b      	ldr	r3, [r1, #0]
    6146:	2b00      	cmp	r3, #0
    6148:	d1f9      	bne.n	613e <svcTimerDelete+0x26>
    614a:	2300      	movs	r3, #0
    614c:	2000      	movs	r0, #0
    614e:	7113      	strb	r3, [r2, #4]
    6150:	4770      	bx	lr
    6152:	6813      	ldr	r3, [r2, #0]
    6154:	600b      	str	r3, [r1, #0]
    6156:	6813      	ldr	r3, [r2, #0]
    6158:	2b00      	cmp	r3, #0
    615a:	d0f6      	beq.n	614a <svcTimerDelete+0x32>
    615c:	6890      	ldr	r0, [r2, #8]
    615e:	6899      	ldr	r1, [r3, #8]
    6160:	4684      	mov	ip, r0
    6162:	4461      	add	r1, ip
    6164:	6099      	str	r1, [r3, #8]
    6166:	2300      	movs	r3, #0
    6168:	2000      	movs	r0, #0
    616a:	7113      	strb	r3, [r2, #4]
    616c:	e7f0      	b.n	6150 <svcTimerDelete+0x38>
    616e:	6813      	ldr	r3, [r2, #0]
    6170:	6003      	str	r3, [r0, #0]
    6172:	e7f1      	b.n	6158 <svcTimerDelete+0x40>
    6174:	2000607c 	.word	0x2000607c

00006178 <svcTimerCall>:
    6178:	0003      	movs	r3, r0
    617a:	0782      	lsls	r2, r0, #30
    617c:	d105      	bne.n	618a <svcTimerCall+0x12>
    617e:	2800      	cmp	r0, #0
    6180:	d006      	beq.n	6190 <svcTimerCall+0x18>
    6182:	6942      	ldr	r2, [r0, #20]
    6184:	6919      	ldr	r1, [r3, #16]
    6186:	6810      	ldr	r0, [r2, #0]
    6188:	4770      	bx	lr
    618a:	2000      	movs	r0, #0
    618c:	2100      	movs	r1, #0
    618e:	e7fb      	b.n	6188 <svcTimerCall+0x10>
    6190:	2000      	movs	r0, #0
    6192:	0001      	movs	r1, r0
    6194:	e7f8      	b.n	6188 <svcTimerCall+0x10>
    6196:	46c0      	nop			; (mov r8, r8)

00006198 <sysTimerTick>:
    6198:	b5f0      	push	{r4, r5, r6, r7, lr}
    619a:	464e      	mov	r6, r9
    619c:	4657      	mov	r7, sl
    619e:	4645      	mov	r5, r8
    61a0:	b4e0      	push	{r5, r6, r7}
    61a2:	4e2a      	ldr	r6, [pc, #168]	; (624c <sysTimerTick+0xb4>)
    61a4:	6834      	ldr	r4, [r6, #0]
    61a6:	2c00      	cmp	r4, #0
    61a8:	d028      	beq.n	61fc <sysTimerTick+0x64>
    61aa:	2200      	movs	r2, #0
    61ac:	68a3      	ldr	r3, [r4, #8]
    61ae:	4f28      	ldr	r7, [pc, #160]	; (6250 <sysTimerTick+0xb8>)
    61b0:	3b01      	subs	r3, #1
    61b2:	60a3      	str	r3, [r4, #8]
    61b4:	4690      	mov	r8, r2
    61b6:	2b00      	cmp	r3, #0
    61b8:	d120      	bne.n	61fc <sysTimerTick+0x64>
    61ba:	6825      	ldr	r5, [r4, #0]
    61bc:	683b      	ldr	r3, [r7, #0]
    61be:	6035      	str	r5, [r6, #0]
    61c0:	4699      	mov	r9, r3
    61c2:	2b00      	cmp	r3, #0
    61c4:	d003      	beq.n	61ce <sysTimerTick+0x36>
    61c6:	781b      	ldrb	r3, [r3, #0]
    61c8:	469a      	mov	sl, r3
    61ca:	2b01      	cmp	r3, #1
    61cc:	d002      	beq.n	61d4 <sysTimerTick+0x3c>
    61ce:	2004      	movs	r0, #4
    61d0:	f7fb fbb2 	bl	1938 <os_error>
    61d4:	4648      	mov	r0, r9
    61d6:	f001 fb63 	bl	78a0 <rt_mbx_check>
    61da:	2800      	cmp	r0, #0
    61dc:	d0f7      	beq.n	61ce <sysTimerTick+0x36>
    61de:	0021      	movs	r1, r4
    61e0:	4648      	mov	r0, r9
    61e2:	f001 fb61 	bl	78a8 <isr_mbx_send>
    61e6:	7963      	ldrb	r3, [r4, #5]
    61e8:	2b01      	cmp	r3, #1
    61ea:	d00c      	beq.n	6206 <sysTimerTick+0x6e>
    61ec:	4653      	mov	r3, sl
    61ee:	7123      	strb	r3, [r4, #4]
    61f0:	2d00      	cmp	r5, #0
    61f2:	d003      	beq.n	61fc <sysTimerTick+0x64>
    61f4:	68ab      	ldr	r3, [r5, #8]
    61f6:	002c      	movs	r4, r5
    61f8:	2b00      	cmp	r3, #0
    61fa:	d0de      	beq.n	61ba <sysTimerTick+0x22>
    61fc:	bc1c      	pop	{r2, r3, r4}
    61fe:	4690      	mov	r8, r2
    6200:	4699      	mov	r9, r3
    6202:	46a2      	mov	sl, r4
    6204:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6206:	6830      	ldr	r0, [r6, #0]
    6208:	68e2      	ldr	r2, [r4, #12]
    620a:	2800      	cmp	r0, #0
    620c:	d00b      	beq.n	6226 <sysTimerTick+0x8e>
    620e:	6881      	ldr	r1, [r0, #8]
    6210:	4291      	cmp	r1, r2
    6212:	d904      	bls.n	621e <sysTimerTick+0x86>
    6214:	e00e      	b.n	6234 <sysTimerTick+0x9c>
    6216:	6899      	ldr	r1, [r3, #8]
    6218:	4291      	cmp	r1, r2
    621a:	d80d      	bhi.n	6238 <sysTimerTick+0xa0>
    621c:	0018      	movs	r0, r3
    621e:	6803      	ldr	r3, [r0, #0]
    6220:	1a52      	subs	r2, r2, r1
    6222:	2b00      	cmp	r3, #0
    6224:	d1f7      	bne.n	6216 <sysTimerTick+0x7e>
    6226:	4643      	mov	r3, r8
    6228:	60a2      	str	r2, [r4, #8]
    622a:	6023      	str	r3, [r4, #0]
    622c:	2800      	cmp	r0, #0
    622e:	d00a      	beq.n	6246 <sysTimerTick+0xae>
    6230:	6004      	str	r4, [r0, #0]
    6232:	e7dd      	b.n	61f0 <sysTimerTick+0x58>
    6234:	0003      	movs	r3, r0
    6236:	2000      	movs	r0, #0
    6238:	60a2      	str	r2, [r4, #8]
    623a:	6899      	ldr	r1, [r3, #8]
    623c:	6023      	str	r3, [r4, #0]
    623e:	1a8a      	subs	r2, r1, r2
    6240:	609a      	str	r2, [r3, #8]
    6242:	2800      	cmp	r0, #0
    6244:	d1f4      	bne.n	6230 <sysTimerTick+0x98>
    6246:	6034      	str	r4, [r6, #0]
    6248:	e7d2      	b.n	61f0 <sysTimerTick+0x58>
    624a:	46c0      	nop			; (mov r8, r8)
    624c:	2000607c 	.word	0x2000607c
    6250:	20004d10 	.word	0x20004d10

00006254 <sysUserTimerWakeupTime>:
    6254:	4b04      	ldr	r3, [pc, #16]	; (6268 <sysUserTimerWakeupTime+0x14>)
    6256:	681b      	ldr	r3, [r3, #0]
    6258:	2b00      	cmp	r3, #0
    625a:	d001      	beq.n	6260 <sysUserTimerWakeupTime+0xc>
    625c:	6898      	ldr	r0, [r3, #8]
    625e:	4770      	bx	lr
    6260:	2001      	movs	r0, #1
    6262:	4240      	negs	r0, r0
    6264:	e7fb      	b.n	625e <sysUserTimerWakeupTime+0xa>
    6266:	46c0      	nop			; (mov r8, r8)
    6268:	2000607c 	.word	0x2000607c

0000626c <sysUserTimerUpdate>:
    626c:	b570      	push	{r4, r5, r6, lr}
    626e:	4d0e      	ldr	r5, [pc, #56]	; (62a8 <sysUserTimerUpdate+0x3c>)
    6270:	0004      	movs	r4, r0
    6272:	682b      	ldr	r3, [r5, #0]
    6274:	2b00      	cmp	r3, #0
    6276:	d012      	beq.n	629e <sysUserTimerUpdate+0x32>
    6278:	2800      	cmp	r0, #0
    627a:	d010      	beq.n	629e <sysUserTimerUpdate+0x32>
    627c:	689a      	ldr	r2, [r3, #8]
    627e:	2601      	movs	r6, #1
    6280:	4290      	cmp	r0, r2
    6282:	d205      	bcs.n	6290 <sysUserTimerUpdate+0x24>
    6284:	e00c      	b.n	62a0 <sysUserTimerUpdate+0x34>
    6286:	2c00      	cmp	r4, #0
    6288:	d009      	beq.n	629e <sysUserTimerUpdate+0x32>
    628a:	689a      	ldr	r2, [r3, #8]
    628c:	42a2      	cmp	r2, r4
    628e:	d807      	bhi.n	62a0 <sysUserTimerUpdate+0x34>
    6290:	609e      	str	r6, [r3, #8]
    6292:	1aa4      	subs	r4, r4, r2
    6294:	f7ff ff80 	bl	6198 <sysTimerTick>
    6298:	682b      	ldr	r3, [r5, #0]
    629a:	2b00      	cmp	r3, #0
    629c:	d1f3      	bne.n	6286 <sysUserTimerUpdate+0x1a>
    629e:	bd70      	pop	{r4, r5, r6, pc}
    62a0:	1b14      	subs	r4, r2, r4
    62a2:	609c      	str	r4, [r3, #8]
    62a4:	e7fb      	b.n	629e <sysUserTimerUpdate+0x32>
    62a6:	46c0      	nop			; (mov r8, r8)
    62a8:	2000607c 	.word	0x2000607c

000062ac <osTimerCreate>:
    62ac:	b5b0      	push	{r4, r5, r7, lr}
    62ae:	f3ef 8405 	mrs	r4, IPSR
    62b2:	2c00      	cmp	r4, #0
    62b4:	d124      	bne.n	6300 <osTimerCreate+0x54>
    62b6:	f3ef 8414 	mrs	r4, CONTROL
    62ba:	2501      	movs	r5, #1
    62bc:	4225      	tst	r5, r4
    62be:	d003      	beq.n	62c8 <osTimerCreate+0x1c>
    62c0:	4f12      	ldr	r7, [pc, #72]	; (630c <osTimerCreate+0x60>)
    62c2:	46bc      	mov	ip, r7
    62c4:	df00      	svc	0
    62c6:	bdb0      	pop	{r4, r5, r7, pc}
    62c8:	4c0e      	ldr	r4, [pc, #56]	; (6304 <osTimerCreate+0x58>)
    62ca:	7824      	ldrb	r4, [r4, #0]
    62cc:	2c00      	cmp	r4, #0
    62ce:	d1f7      	bne.n	62c0 <osTimerCreate+0x14>
    62d0:	2800      	cmp	r0, #0
    62d2:	d015      	beq.n	6300 <osTimerCreate+0x54>
    62d4:	6803      	ldr	r3, [r0, #0]
    62d6:	2b00      	cmp	r3, #0
    62d8:	d012      	beq.n	6300 <osTimerCreate+0x54>
    62da:	6843      	ldr	r3, [r0, #4]
    62dc:	2b00      	cmp	r3, #0
    62de:	d00f      	beq.n	6300 <osTimerCreate+0x54>
    62e0:	2901      	cmp	r1, #1
    62e2:	d80d      	bhi.n	6300 <osTimerCreate+0x54>
    62e4:	4c08      	ldr	r4, [pc, #32]	; (6308 <osTimerCreate+0x5c>)
    62e6:	6824      	ldr	r4, [r4, #0]
    62e8:	2c00      	cmp	r4, #0
    62ea:	d009      	beq.n	6300 <osTimerCreate+0x54>
    62ec:	791c      	ldrb	r4, [r3, #4]
    62ee:	2c00      	cmp	r4, #0
    62f0:	d106      	bne.n	6300 <osTimerCreate+0x54>
    62f2:	6158      	str	r0, [r3, #20]
    62f4:	601c      	str	r4, [r3, #0]
    62f6:	711d      	strb	r5, [r3, #4]
    62f8:	7159      	strb	r1, [r3, #5]
    62fa:	611a      	str	r2, [r3, #16]
    62fc:	0018      	movs	r0, r3
    62fe:	e7e2      	b.n	62c6 <osTimerCreate+0x1a>
    6300:	2000      	movs	r0, #0
    6302:	e7e0      	b.n	62c6 <osTimerCreate+0x1a>
    6304:	20006079 	.word	0x20006079
    6308:	20004cec 	.word	0x20004cec
    630c:	00005fa5 	.word	0x00005fa5

00006310 <osTimerStart>:
    6310:	b5b0      	push	{r4, r5, r7, lr}
    6312:	0005      	movs	r5, r0
    6314:	f3ef 8405 	mrs	r4, IPSR
    6318:	2082      	movs	r0, #130	; 0x82
    631a:	2c00      	cmp	r4, #0
    631c:	d000      	beq.n	6320 <osTimerStart+0x10>
    631e:	bdb0      	pop	{r4, r5, r7, pc}
    6320:	0028      	movs	r0, r5
    6322:	4f02      	ldr	r7, [pc, #8]	; (632c <osTimerStart+0x1c>)
    6324:	46bc      	mov	ip, r7
    6326:	df00      	svc	0
    6328:	e7f9      	b.n	631e <osTimerStart+0xe>
    632a:	0000      	.short	0x0000
    632c:	00005fe1 	.word	0x00005fe1

00006330 <osTimerStop>:
    6330:	b5b0      	push	{r4, r5, r7, lr}
    6332:	0005      	movs	r5, r0
    6334:	f3ef 8405 	mrs	r4, IPSR
    6338:	2082      	movs	r0, #130	; 0x82
    633a:	2c00      	cmp	r4, #0
    633c:	d000      	beq.n	6340 <osTimerStop+0x10>
    633e:	bdb0      	pop	{r4, r5, r7, pc}
    6340:	0028      	movs	r0, r5
    6342:	4f02      	ldr	r7, [pc, #8]	; (634c <osTimerStop+0x1c>)
    6344:	46bc      	mov	ip, r7
    6346:	df00      	svc	0
    6348:	e7f9      	b.n	633e <osTimerStop+0xe>
    634a:	0000      	.short	0x0000
    634c:	000060c1 	.word	0x000060c1

00006350 <osTimerDelete>:
    6350:	b5b0      	push	{r4, r5, r7, lr}
    6352:	0005      	movs	r5, r0
    6354:	f3ef 8405 	mrs	r4, IPSR
    6358:	2082      	movs	r0, #130	; 0x82
    635a:	2c00      	cmp	r4, #0
    635c:	d000      	beq.n	6360 <osTimerDelete+0x10>
    635e:	bdb0      	pop	{r4, r5, r7, pc}
    6360:	0028      	movs	r0, r5
    6362:	4f02      	ldr	r7, [pc, #8]	; (636c <osTimerDelete+0x1c>)
    6364:	46bc      	mov	ip, r7
    6366:	df00      	svc	0
    6368:	e7f9      	b.n	635e <osTimerDelete+0xe>
    636a:	0000      	.short	0x0000
    636c:	00006119 	.word	0x00006119

00006370 <osTimerCall>:
    6370:	b590      	push	{r4, r7, lr}
    6372:	0004      	movs	r4, r0
    6374:	0008      	movs	r0, r1
    6376:	4f03      	ldr	r7, [pc, #12]	; (6384 <osTimerCall+0x14>)
    6378:	46bc      	mov	ip, r7
    637a:	df00      	svc	0
    637c:	6020      	str	r0, [r4, #0]
    637e:	6061      	str	r1, [r4, #4]
    6380:	0020      	movs	r0, r4
    6382:	bd90      	pop	{r4, r7, pc}
    6384:	00006179 	.word	0x00006179

00006388 <osTimerThread>:
    6388:	b5b0      	push	{r4, r5, r7, lr}
    638a:	4d0a      	ldr	r5, [pc, #40]	; (63b4 <osTimerThread+0x2c>)
    638c:	6828      	ldr	r0, [r5, #0]
    638e:	f3ef 8105 	mrs	r1, IPSR
    6392:	2900      	cmp	r1, #0
    6394:	d1fb      	bne.n	638e <osTimerThread+0x6>
    6396:	3901      	subs	r1, #1
    6398:	4f07      	ldr	r7, [pc, #28]	; (63b8 <osTimerThread+0x30>)
    639a:	46bc      	mov	ip, r7
    639c:	df00      	svc	0
    639e:	2810      	cmp	r0, #16
    63a0:	d1f4      	bne.n	638c <osTimerThread+0x4>
    63a2:	0008      	movs	r0, r1
    63a4:	4f05      	ldr	r7, [pc, #20]	; (63bc <osTimerThread+0x34>)
    63a6:	46bc      	mov	ip, r7
    63a8:	df00      	svc	0
    63aa:	1e04      	subs	r4, r0, #0
    63ac:	d0ee      	beq.n	638c <osTimerThread+0x4>
    63ae:	0008      	movs	r0, r1
    63b0:	47a0      	blx	r4
    63b2:	e7eb      	b.n	638c <osTimerThread+0x4>
    63b4:	20004d10 	.word	0x20004d10
    63b8:	00006b69 	.word	0x00006b69
    63bc:	00006179 	.word	0x00006179

000063c0 <svcSignalSet>:
    63c0:	b510      	push	{r4, lr}
    63c2:	2800      	cmp	r0, #0
    63c4:	d00e      	beq.n	63e4 <svcSignalSet+0x24>
    63c6:	0783      	lsls	r3, r0, #30
    63c8:	d10c      	bne.n	63e4 <svcSignalSet+0x24>
    63ca:	7803      	ldrb	r3, [r0, #0]
    63cc:	2b00      	cmp	r3, #0
    63ce:	d109      	bne.n	63e4 <svcSignalSet+0x24>
    63d0:	0c0b      	lsrs	r3, r1, #16
    63d2:	d107      	bne.n	63e4 <svcSignalSet+0x24>
    63d4:	78c3      	ldrb	r3, [r0, #3]
    63d6:	8b04      	ldrh	r4, [r0, #24]
    63d8:	b288      	uxth	r0, r1
    63da:	0019      	movs	r1, r3
    63dc:	f001 fcbe 	bl	7d5c <rt_evt_set>
    63e0:	0020      	movs	r0, r4
    63e2:	e001      	b.n	63e8 <svcSignalSet+0x28>
    63e4:	2080      	movs	r0, #128	; 0x80
    63e6:	0600      	lsls	r0, r0, #24
    63e8:	bd10      	pop	{r4, pc}
    63ea:	46c0      	nop			; (mov r8, r8)

000063ec <svcSignalClear>:
    63ec:	b510      	push	{r4, lr}
    63ee:	2800      	cmp	r0, #0
    63f0:	d00e      	beq.n	6410 <svcSignalClear+0x24>
    63f2:	0783      	lsls	r3, r0, #30
    63f4:	d10c      	bne.n	6410 <svcSignalClear+0x24>
    63f6:	7803      	ldrb	r3, [r0, #0]
    63f8:	2b00      	cmp	r3, #0
    63fa:	d109      	bne.n	6410 <svcSignalClear+0x24>
    63fc:	0c0b      	lsrs	r3, r1, #16
    63fe:	d107      	bne.n	6410 <svcSignalClear+0x24>
    6400:	78c3      	ldrb	r3, [r0, #3]
    6402:	8b04      	ldrh	r4, [r0, #24]
    6404:	b288      	uxth	r0, r1
    6406:	0019      	movs	r1, r3
    6408:	f001 fcd4 	bl	7db4 <rt_evt_clr>
    640c:	0020      	movs	r0, r4
    640e:	e001      	b.n	6414 <svcSignalClear+0x28>
    6410:	2080      	movs	r0, #128	; 0x80
    6412:	0600      	lsls	r0, r0, #24
    6414:	bd10      	pop	{r4, pc}
    6416:	46c0      	nop			; (mov r8, r8)

00006418 <svcSignalWait>:
    6418:	b5f0      	push	{r4, r5, r6, r7, lr}
    641a:	0c04      	lsrs	r4, r0, #16
    641c:	b083      	sub	sp, #12
    641e:	0006      	movs	r6, r0
    6420:	000d      	movs	r5, r1
    6422:	0424      	lsls	r4, r4, #16
    6424:	d149      	bne.n	64ba <svcSignalWait+0xa2>
    6426:	2800      	cmp	r0, #0
    6428:	d026      	beq.n	6478 <svcSignalWait+0x60>
    642a:	b287      	uxth	r7, r0
    642c:	2100      	movs	r1, #0
    642e:	2d00      	cmp	r5, #0
    6430:	d013      	beq.n	645a <svcSignalWait+0x42>
    6432:	1c6b      	adds	r3, r5, #1
    6434:	d05c      	beq.n	64f0 <svcSignalWait+0xd8>
    6436:	4b2f      	ldr	r3, [pc, #188]	; (64f4 <svcSignalWait+0xdc>)
    6438:	429d      	cmp	r5, r3
    643a:	d84f      	bhi.n	64dc <svcSignalWait+0xc4>
    643c:	20fa      	movs	r0, #250	; 0xfa
    643e:	4b2e      	ldr	r3, [pc, #184]	; (64f8 <svcSignalWait+0xe0>)
    6440:	0080      	lsls	r0, r0, #2
    6442:	4368      	muls	r0, r5
    6444:	681b      	ldr	r3, [r3, #0]
    6446:	9301      	str	r3, [sp, #4]
    6448:	3b01      	subs	r3, #1
    644a:	18c0      	adds	r0, r0, r3
    644c:	9901      	ldr	r1, [sp, #4]
    644e:	f7fe f913 	bl	4678 <__aeabi_uidiv>
    6452:	4b2a      	ldr	r3, [pc, #168]	; (64fc <svcSignalWait+0xe4>)
    6454:	0019      	movs	r1, r3
    6456:	4298      	cmp	r0, r3
    6458:	d946      	bls.n	64e8 <svcSignalWait+0xd0>
    645a:	2201      	movs	r2, #1
    645c:	0038      	movs	r0, r7
    645e:	f001 fc59 	bl	7d14 <rt_evt_wait>
    6462:	2802      	cmp	r0, #2
    6464:	d035      	beq.n	64d2 <svcSignalWait+0xba>
    6466:	0028      	movs	r0, r5
    6468:	1e45      	subs	r5, r0, #1
    646a:	41a8      	sbcs	r0, r5
    646c:	0180      	lsls	r0, r0, #6
    646e:	0021      	movs	r1, r4
    6470:	2200      	movs	r2, #0
    6472:	2300      	movs	r3, #0
    6474:	b003      	add	sp, #12
    6476:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6478:	2900      	cmp	r1, #0
    647a:	d021      	beq.n	64c0 <svcSignalWait+0xa8>
    647c:	1c4b      	adds	r3, r1, #1
    647e:	d035      	beq.n	64ec <svcSignalWait+0xd4>
    6480:	4b1c      	ldr	r3, [pc, #112]	; (64f4 <svcSignalWait+0xdc>)
    6482:	4299      	cmp	r1, r3
    6484:	d82c      	bhi.n	64e0 <svcSignalWait+0xc8>
    6486:	20fa      	movs	r0, #250	; 0xfa
    6488:	4b1b      	ldr	r3, [pc, #108]	; (64f8 <svcSignalWait+0xe0>)
    648a:	0080      	lsls	r0, r0, #2
    648c:	4348      	muls	r0, r1
    648e:	681b      	ldr	r3, [r3, #0]
    6490:	9301      	str	r3, [sp, #4]
    6492:	3b01      	subs	r3, #1
    6494:	18c0      	adds	r0, r0, r3
    6496:	9901      	ldr	r1, [sp, #4]
    6498:	f7fe f8ee 	bl	4678 <__aeabi_uidiv>
    649c:	4b17      	ldr	r3, [pc, #92]	; (64fc <svcSignalWait+0xe4>)
    649e:	0019      	movs	r1, r3
    64a0:	4298      	cmp	r0, r3
    64a2:	d91f      	bls.n	64e4 <svcSignalWait+0xcc>
    64a4:	2200      	movs	r2, #0
    64a6:	4816      	ldr	r0, [pc, #88]	; (6500 <svcSignalWait+0xe8>)
    64a8:	f001 fc34 	bl	7d14 <rt_evt_wait>
    64ac:	2802      	cmp	r0, #2
    64ae:	d113      	bne.n	64d8 <svcSignalWait+0xc0>
    64b0:	4b14      	ldr	r3, [pc, #80]	; (6504 <svcSignalWait+0xec>)
    64b2:	2008      	movs	r0, #8
    64b4:	681b      	ldr	r3, [r3, #0]
    64b6:	8b5c      	ldrh	r4, [r3, #26]
    64b8:	e7d9      	b.n	646e <svcSignalWait+0x56>
    64ba:	2086      	movs	r0, #134	; 0x86
    64bc:	2100      	movs	r1, #0
    64be:	e7d7      	b.n	6470 <svcSignalWait+0x58>
    64c0:	2200      	movs	r2, #0
    64c2:	2100      	movs	r1, #0
    64c4:	480e      	ldr	r0, [pc, #56]	; (6500 <svcSignalWait+0xe8>)
    64c6:	f001 fc25 	bl	7d14 <rt_evt_wait>
    64ca:	2802      	cmp	r0, #2
    64cc:	d0f0      	beq.n	64b0 <svcSignalWait+0x98>
    64ce:	2000      	movs	r0, #0
    64d0:	e7cd      	b.n	646e <svcSignalWait+0x56>
    64d2:	0034      	movs	r4, r6
    64d4:	2008      	movs	r0, #8
    64d6:	e7ca      	b.n	646e <svcSignalWait+0x56>
    64d8:	2040      	movs	r0, #64	; 0x40
    64da:	e7c8      	b.n	646e <svcSignalWait+0x56>
    64dc:	4907      	ldr	r1, [pc, #28]	; (64fc <svcSignalWait+0xe4>)
    64de:	e7bc      	b.n	645a <svcSignalWait+0x42>
    64e0:	4906      	ldr	r1, [pc, #24]	; (64fc <svcSignalWait+0xe4>)
    64e2:	e7df      	b.n	64a4 <svcSignalWait+0x8c>
    64e4:	b281      	uxth	r1, r0
    64e6:	e7dd      	b.n	64a4 <svcSignalWait+0x8c>
    64e8:	b281      	uxth	r1, r0
    64ea:	e7b6      	b.n	645a <svcSignalWait+0x42>
    64ec:	4904      	ldr	r1, [pc, #16]	; (6500 <svcSignalWait+0xe8>)
    64ee:	e7d9      	b.n	64a4 <svcSignalWait+0x8c>
    64f0:	4903      	ldr	r1, [pc, #12]	; (6500 <svcSignalWait+0xe8>)
    64f2:	e7b2      	b.n	645a <svcSignalWait+0x42>
    64f4:	003d0900 	.word	0x003d0900
    64f8:	00008900 	.word	0x00008900
    64fc:	0000fffe 	.word	0x0000fffe
    6500:	0000ffff 	.word	0x0000ffff
    6504:	200060b8 	.word	0x200060b8

00006508 <isrSignalSet>:
    6508:	b510      	push	{r4, lr}
    650a:	2800      	cmp	r0, #0
    650c:	d00e      	beq.n	652c <isrSignalSet+0x24>
    650e:	0783      	lsls	r3, r0, #30
    6510:	d10c      	bne.n	652c <isrSignalSet+0x24>
    6512:	7803      	ldrb	r3, [r0, #0]
    6514:	2b00      	cmp	r3, #0
    6516:	d109      	bne.n	652c <isrSignalSet+0x24>
    6518:	0c0b      	lsrs	r3, r1, #16
    651a:	d107      	bne.n	652c <isrSignalSet+0x24>
    651c:	78c3      	ldrb	r3, [r0, #3]
    651e:	8b04      	ldrh	r4, [r0, #24]
    6520:	b288      	uxth	r0, r1
    6522:	0019      	movs	r1, r3
    6524:	f001 fc52 	bl	7dcc <isr_evt_set>
    6528:	0020      	movs	r0, r4
    652a:	e001      	b.n	6530 <isrSignalSet+0x28>
    652c:	2080      	movs	r0, #128	; 0x80
    652e:	0600      	lsls	r0, r0, #24
    6530:	bd10      	pop	{r4, pc}
    6532:	46c0      	nop			; (mov r8, r8)

00006534 <osSignalSet>:
    6534:	b5b0      	push	{r4, r5, r7, lr}
    6536:	f3ef 8405 	mrs	r4, IPSR
    653a:	2c00      	cmp	r4, #0
    653c:	d103      	bne.n	6546 <osSignalSet+0x12>
    653e:	4f0c      	ldr	r7, [pc, #48]	; (6570 <osSignalSet+0x3c>)
    6540:	46bc      	mov	ip, r7
    6542:	df00      	svc	0
    6544:	bdb0      	pop	{r4, r5, r7, pc}
    6546:	2800      	cmp	r0, #0
    6548:	d00e      	beq.n	6568 <osSignalSet+0x34>
    654a:	0783      	lsls	r3, r0, #30
    654c:	d10c      	bne.n	6568 <osSignalSet+0x34>
    654e:	7803      	ldrb	r3, [r0, #0]
    6550:	2b00      	cmp	r3, #0
    6552:	d109      	bne.n	6568 <osSignalSet+0x34>
    6554:	0c0b      	lsrs	r3, r1, #16
    6556:	d107      	bne.n	6568 <osSignalSet+0x34>
    6558:	78c3      	ldrb	r3, [r0, #3]
    655a:	8b04      	ldrh	r4, [r0, #24]
    655c:	b288      	uxth	r0, r1
    655e:	0019      	movs	r1, r3
    6560:	f001 fc34 	bl	7dcc <isr_evt_set>
    6564:	0020      	movs	r0, r4
    6566:	e7ed      	b.n	6544 <osSignalSet+0x10>
    6568:	2080      	movs	r0, #128	; 0x80
    656a:	0600      	lsls	r0, r0, #24
    656c:	e7ea      	b.n	6544 <osSignalSet+0x10>
    656e:	0000      	.short	0x0000
    6570:	000063c1 	.word	0x000063c1

00006574 <osSignalClear>:
    6574:	b590      	push	{r4, r7, lr}
    6576:	f3ef 8405 	mrs	r4, IPSR
    657a:	2c00      	cmp	r4, #0
    657c:	d103      	bne.n	6586 <osSignalClear+0x12>
    657e:	4f03      	ldr	r7, [pc, #12]	; (658c <osSignalClear+0x18>)
    6580:	46bc      	mov	ip, r7
    6582:	df00      	svc	0
    6584:	bd90      	pop	{r4, r7, pc}
    6586:	2080      	movs	r0, #128	; 0x80
    6588:	0600      	lsls	r0, r0, #24
    658a:	e7fb      	b.n	6584 <osSignalClear+0x10>
    658c:	000063ed 	.word	0x000063ed

00006590 <osSignalWait>:
    6590:	b5f0      	push	{r4, r5, r6, r7, lr}
    6592:	0004      	movs	r4, r0
    6594:	f3ef 8505 	mrs	r5, IPSR
    6598:	2d00      	cmp	r5, #0
    659a:	d109      	bne.n	65b0 <osSignalWait+0x20>
    659c:	0008      	movs	r0, r1
    659e:	0011      	movs	r1, r2
    65a0:	4f05      	ldr	r7, [pc, #20]	; (65b8 <osSignalWait+0x28>)
    65a2:	46bc      	mov	ip, r7
    65a4:	df00      	svc	0
    65a6:	6020      	str	r0, [r4, #0]
    65a8:	6061      	str	r1, [r4, #4]
    65aa:	60a2      	str	r2, [r4, #8]
    65ac:	0020      	movs	r0, r4
    65ae:	bdf0      	pop	{r4, r5, r6, r7, pc}
    65b0:	2382      	movs	r3, #130	; 0x82
    65b2:	6003      	str	r3, [r0, #0]
    65b4:	e7fa      	b.n	65ac <osSignalWait+0x1c>
    65b6:	0000      	.short	0x0000
    65b8:	00006419 	.word	0x00006419

000065bc <svcMutexCreate>:
    65bc:	b510      	push	{r4, lr}
    65be:	2800      	cmp	r0, #0
    65c0:	d00a      	beq.n	65d8 <svcMutexCreate+0x1c>
    65c2:	6804      	ldr	r4, [r0, #0]
    65c4:	2c00      	cmp	r4, #0
    65c6:	d007      	beq.n	65d8 <svcMutexCreate+0x1c>
    65c8:	7823      	ldrb	r3, [r4, #0]
    65ca:	2b00      	cmp	r3, #0
    65cc:	d104      	bne.n	65d8 <svcMutexCreate+0x1c>
    65ce:	0020      	movs	r0, r4
    65d0:	f000 feb4 	bl	733c <rt_mut_init>
    65d4:	0020      	movs	r0, r4
    65d6:	bd10      	pop	{r4, pc}
    65d8:	2000      	movs	r0, #0
    65da:	e7fc      	b.n	65d6 <svcMutexCreate+0x1a>

000065dc <svcMutexWait>:
    65dc:	b510      	push	{r4, lr}
    65de:	0004      	movs	r4, r0
    65e0:	b082      	sub	sp, #8
    65e2:	2080      	movs	r0, #128	; 0x80
    65e4:	07a3      	lsls	r3, r4, #30
    65e6:	d104      	bne.n	65f2 <svcMutexWait+0x16>
    65e8:	2c00      	cmp	r4, #0
    65ea:	d002      	beq.n	65f2 <svcMutexWait+0x16>
    65ec:	7823      	ldrb	r3, [r4, #0]
    65ee:	2b03      	cmp	r3, #3
    65f0:	d001      	beq.n	65f6 <svcMutexWait+0x1a>
    65f2:	b002      	add	sp, #8
    65f4:	bd10      	pop	{r4, pc}
    65f6:	2900      	cmp	r1, #0
    65f8:	d01b      	beq.n	6632 <svcMutexWait+0x56>
    65fa:	1c4b      	adds	r3, r1, #1
    65fc:	d025      	beq.n	664a <svcMutexWait+0x6e>
    65fe:	4b16      	ldr	r3, [pc, #88]	; (6658 <svcMutexWait+0x7c>)
    6600:	4299      	cmp	r1, r3
    6602:	d824      	bhi.n	664e <svcMutexWait+0x72>
    6604:	20fa      	movs	r0, #250	; 0xfa
    6606:	4b15      	ldr	r3, [pc, #84]	; (665c <svcMutexWait+0x80>)
    6608:	0080      	lsls	r0, r0, #2
    660a:	4341      	muls	r1, r0
    660c:	681b      	ldr	r3, [r3, #0]
    660e:	9301      	str	r3, [sp, #4]
    6610:	3b01      	subs	r3, #1
    6612:	1858      	adds	r0, r3, r1
    6614:	9901      	ldr	r1, [sp, #4]
    6616:	f7fe f82f 	bl	4678 <__aeabi_uidiv>
    661a:	4b11      	ldr	r3, [pc, #68]	; (6660 <svcMutexWait+0x84>)
    661c:	0019      	movs	r1, r3
    661e:	4298      	cmp	r0, r3
    6620:	d917      	bls.n	6652 <svcMutexWait+0x76>
    6622:	0020      	movs	r0, r4
    6624:	f000 ff86 	bl	7534 <rt_mut_wait>
    6628:	0003      	movs	r3, r0
    662a:	2801      	cmp	r0, #1
    662c:	d108      	bne.n	6640 <svcMutexWait+0x64>
    662e:	20c1      	movs	r0, #193	; 0xc1
    6630:	e7df      	b.n	65f2 <svcMutexWait+0x16>
    6632:	2100      	movs	r1, #0
    6634:	0020      	movs	r0, r4
    6636:	f000 ff7d 	bl	7534 <rt_mut_wait>
    663a:	0003      	movs	r3, r0
    663c:	2801      	cmp	r0, #1
    663e:	d002      	beq.n	6646 <svcMutexWait+0x6a>
    6640:	2000      	movs	r0, #0
    6642:	2bff      	cmp	r3, #255	; 0xff
    6644:	d1d5      	bne.n	65f2 <svcMutexWait+0x16>
    6646:	2081      	movs	r0, #129	; 0x81
    6648:	e7d3      	b.n	65f2 <svcMutexWait+0x16>
    664a:	4906      	ldr	r1, [pc, #24]	; (6664 <svcMutexWait+0x88>)
    664c:	e7e9      	b.n	6622 <svcMutexWait+0x46>
    664e:	4904      	ldr	r1, [pc, #16]	; (6660 <svcMutexWait+0x84>)
    6650:	e7e7      	b.n	6622 <svcMutexWait+0x46>
    6652:	b281      	uxth	r1, r0
    6654:	e7e5      	b.n	6622 <svcMutexWait+0x46>
    6656:	46c0      	nop			; (mov r8, r8)
    6658:	003d0900 	.word	0x003d0900
    665c:	00008900 	.word	0x00008900
    6660:	0000fffe 	.word	0x0000fffe
    6664:	0000ffff 	.word	0x0000ffff

00006668 <svcMutexRelease>:
    6668:	b510      	push	{r4, lr}
    666a:	2380      	movs	r3, #128	; 0x80
    666c:	0782      	lsls	r2, r0, #30
    666e:	d104      	bne.n	667a <svcMutexRelease+0x12>
    6670:	2800      	cmp	r0, #0
    6672:	d002      	beq.n	667a <svcMutexRelease+0x12>
    6674:	7802      	ldrb	r2, [r0, #0]
    6676:	2a03      	cmp	r2, #3
    6678:	d001      	beq.n	667e <svcMutexRelease+0x16>
    667a:	0018      	movs	r0, r3
    667c:	bd10      	pop	{r4, pc}
    667e:	f000 fed5 	bl	742c <rt_mut_release>
    6682:	2381      	movs	r3, #129	; 0x81
    6684:	28ff      	cmp	r0, #255	; 0xff
    6686:	d0f8      	beq.n	667a <svcMutexRelease+0x12>
    6688:	2300      	movs	r3, #0
    668a:	e7f6      	b.n	667a <svcMutexRelease+0x12>

0000668c <svcMutexDelete>:
    668c:	b510      	push	{r4, lr}
    668e:	2380      	movs	r3, #128	; 0x80
    6690:	0782      	lsls	r2, r0, #30
    6692:	d104      	bne.n	669e <svcMutexDelete+0x12>
    6694:	2800      	cmp	r0, #0
    6696:	d002      	beq.n	669e <svcMutexDelete+0x12>
    6698:	7802      	ldrb	r2, [r0, #0]
    669a:	2a03      	cmp	r2, #3
    669c:	d001      	beq.n	66a2 <svcMutexDelete+0x16>
    669e:	0018      	movs	r0, r3
    66a0:	bd10      	pop	{r4, pc}
    66a2:	f000 fe53 	bl	734c <rt_mut_delete>
    66a6:	2300      	movs	r3, #0
    66a8:	e7f9      	b.n	669e <svcMutexDelete+0x12>
    66aa:	46c0      	nop			; (mov r8, r8)

000066ac <osMutexCreate>:
    66ac:	b5b0      	push	{r4, r5, r7, lr}
    66ae:	f3ef 8405 	mrs	r4, IPSR
    66b2:	2c00      	cmp	r4, #0
    66b4:	d119      	bne.n	66ea <osMutexCreate+0x3e>
    66b6:	f3ef 8414 	mrs	r4, CONTROL
    66ba:	07e4      	lsls	r4, r4, #31
    66bc:	d411      	bmi.n	66e2 <osMutexCreate+0x36>
    66be:	4c0c      	ldr	r4, [pc, #48]	; (66f0 <osMutexCreate+0x44>)
    66c0:	7824      	ldrb	r4, [r4, #0]
    66c2:	2c00      	cmp	r4, #0
    66c4:	d10d      	bne.n	66e2 <osMutexCreate+0x36>
    66c6:	2800      	cmp	r0, #0
    66c8:	d00f      	beq.n	66ea <osMutexCreate+0x3e>
    66ca:	6804      	ldr	r4, [r0, #0]
    66cc:	2c00      	cmp	r4, #0
    66ce:	d00c      	beq.n	66ea <osMutexCreate+0x3e>
    66d0:	7823      	ldrb	r3, [r4, #0]
    66d2:	2000      	movs	r0, #0
    66d4:	2b00      	cmp	r3, #0
    66d6:	d107      	bne.n	66e8 <osMutexCreate+0x3c>
    66d8:	0020      	movs	r0, r4
    66da:	f000 fe2f 	bl	733c <rt_mut_init>
    66de:	0020      	movs	r0, r4
    66e0:	e002      	b.n	66e8 <osMutexCreate+0x3c>
    66e2:	4f04      	ldr	r7, [pc, #16]	; (66f4 <osMutexCreate+0x48>)
    66e4:	46bc      	mov	ip, r7
    66e6:	df00      	svc	0
    66e8:	bdb0      	pop	{r4, r5, r7, pc}
    66ea:	2000      	movs	r0, #0
    66ec:	e7fc      	b.n	66e8 <osMutexCreate+0x3c>
    66ee:	46c0      	nop			; (mov r8, r8)
    66f0:	20006079 	.word	0x20006079
    66f4:	000065bd 	.word	0x000065bd

000066f8 <osMutexWait>:
    66f8:	b5b0      	push	{r4, r5, r7, lr}
    66fa:	0005      	movs	r5, r0
    66fc:	f3ef 8405 	mrs	r4, IPSR
    6700:	2082      	movs	r0, #130	; 0x82
    6702:	2c00      	cmp	r4, #0
    6704:	d000      	beq.n	6708 <osMutexWait+0x10>
    6706:	bdb0      	pop	{r4, r5, r7, pc}
    6708:	0028      	movs	r0, r5
    670a:	4f02      	ldr	r7, [pc, #8]	; (6714 <osMutexWait+0x1c>)
    670c:	46bc      	mov	ip, r7
    670e:	df00      	svc	0
    6710:	e7f9      	b.n	6706 <osMutexWait+0xe>
    6712:	0000      	.short	0x0000
    6714:	000065dd 	.word	0x000065dd

00006718 <osMutexRelease>:
    6718:	b5b0      	push	{r4, r5, r7, lr}
    671a:	0005      	movs	r5, r0
    671c:	f3ef 8405 	mrs	r4, IPSR
    6720:	2082      	movs	r0, #130	; 0x82
    6722:	2c00      	cmp	r4, #0
    6724:	d000      	beq.n	6728 <osMutexRelease+0x10>
    6726:	bdb0      	pop	{r4, r5, r7, pc}
    6728:	0028      	movs	r0, r5
    672a:	4f02      	ldr	r7, [pc, #8]	; (6734 <osMutexRelease+0x1c>)
    672c:	46bc      	mov	ip, r7
    672e:	df00      	svc	0
    6730:	e7f9      	b.n	6726 <osMutexRelease+0xe>
    6732:	0000      	.short	0x0000
    6734:	00006669 	.word	0x00006669

00006738 <osMutexDelete>:
    6738:	b5b0      	push	{r4, r5, r7, lr}
    673a:	0005      	movs	r5, r0
    673c:	f3ef 8405 	mrs	r4, IPSR
    6740:	2082      	movs	r0, #130	; 0x82
    6742:	2c00      	cmp	r4, #0
    6744:	d000      	beq.n	6748 <osMutexDelete+0x10>
    6746:	bdb0      	pop	{r4, r5, r7, pc}
    6748:	0028      	movs	r0, r5
    674a:	4f02      	ldr	r7, [pc, #8]	; (6754 <osMutexDelete+0x1c>)
    674c:	46bc      	mov	ip, r7
    674e:	df00      	svc	0
    6750:	e7f9      	b.n	6746 <osMutexDelete+0xe>
    6752:	0000      	.short	0x0000
    6754:	0000668d 	.word	0x0000668d

00006758 <svcSemaphoreCreate>:
    6758:	b510      	push	{r4, lr}
    675a:	2800      	cmp	r0, #0
    675c:	d00e      	beq.n	677c <svcSemaphoreCreate+0x24>
    675e:	6804      	ldr	r4, [r0, #0]
    6760:	2c00      	cmp	r4, #0
    6762:	d00b      	beq.n	677c <svcSemaphoreCreate+0x24>
    6764:	7823      	ldrb	r3, [r4, #0]
    6766:	2b00      	cmp	r3, #0
    6768:	d108      	bne.n	677c <svcSemaphoreCreate+0x24>
    676a:	4b05      	ldr	r3, [pc, #20]	; (6780 <svcSemaphoreCreate+0x28>)
    676c:	4299      	cmp	r1, r3
    676e:	dc05      	bgt.n	677c <svcSemaphoreCreate+0x24>
    6770:	0020      	movs	r0, r4
    6772:	b289      	uxth	r1, r1
    6774:	f000 ff4a 	bl	760c <rt_sem_init>
    6778:	0020      	movs	r0, r4
    677a:	bd10      	pop	{r4, pc}
    677c:	2000      	movs	r0, #0
    677e:	e7fc      	b.n	677a <svcSemaphoreCreate+0x22>
    6780:	0000ffff 	.word	0x0000ffff

00006784 <svcSemaphoreWait>:
    6784:	b510      	push	{r4, lr}
    6786:	0004      	movs	r4, r0
    6788:	b082      	sub	sp, #8
    678a:	0783      	lsls	r3, r0, #30
    678c:	d111      	bne.n	67b2 <svcSemaphoreWait+0x2e>
    678e:	2800      	cmp	r0, #0
    6790:	d00f      	beq.n	67b2 <svcSemaphoreWait+0x2e>
    6792:	7803      	ldrb	r3, [r0, #0]
    6794:	2b02      	cmp	r3, #2
    6796:	d10c      	bne.n	67b2 <svcSemaphoreWait+0x2e>
    6798:	2300      	movs	r3, #0
    679a:	2900      	cmp	r1, #0
    679c:	d10c      	bne.n	67b8 <svcSemaphoreWait+0x34>
    679e:	0019      	movs	r1, r3
    67a0:	0020      	movs	r0, r4
    67a2:	f000 ff83 	bl	76ac <rt_sem_wait>
    67a6:	2801      	cmp	r0, #1
    67a8:	d023      	beq.n	67f2 <svcSemaphoreWait+0x6e>
    67aa:	8860      	ldrh	r0, [r4, #2]
    67ac:	3001      	adds	r0, #1
    67ae:	b002      	add	sp, #8
    67b0:	bd10      	pop	{r4, pc}
    67b2:	2001      	movs	r0, #1
    67b4:	4240      	negs	r0, r0
    67b6:	e7fa      	b.n	67ae <svcSemaphoreWait+0x2a>
    67b8:	1c4b      	adds	r3, r1, #1
    67ba:	d01c      	beq.n	67f6 <svcSemaphoreWait+0x72>
    67bc:	4b0f      	ldr	r3, [pc, #60]	; (67fc <svcSemaphoreWait+0x78>)
    67be:	4299      	cmp	r1, r3
    67c0:	d810      	bhi.n	67e4 <svcSemaphoreWait+0x60>
    67c2:	20fa      	movs	r0, #250	; 0xfa
    67c4:	4b0e      	ldr	r3, [pc, #56]	; (6800 <svcSemaphoreWait+0x7c>)
    67c6:	0080      	lsls	r0, r0, #2
    67c8:	4341      	muls	r1, r0
    67ca:	681b      	ldr	r3, [r3, #0]
    67cc:	9301      	str	r3, [sp, #4]
    67ce:	3b01      	subs	r3, #1
    67d0:	1858      	adds	r0, r3, r1
    67d2:	9901      	ldr	r1, [sp, #4]
    67d4:	f7fd ff50 	bl	4678 <__aeabi_uidiv>
    67d8:	4a0a      	ldr	r2, [pc, #40]	; (6804 <svcSemaphoreWait+0x80>)
    67da:	0013      	movs	r3, r2
    67dc:	4290      	cmp	r0, r2
    67de:	d8de      	bhi.n	679e <svcSemaphoreWait+0x1a>
    67e0:	b283      	uxth	r3, r0
    67e2:	e7dc      	b.n	679e <svcSemaphoreWait+0x1a>
    67e4:	4b07      	ldr	r3, [pc, #28]	; (6804 <svcSemaphoreWait+0x80>)
    67e6:	0020      	movs	r0, r4
    67e8:	0019      	movs	r1, r3
    67ea:	f000 ff5f 	bl	76ac <rt_sem_wait>
    67ee:	2801      	cmp	r0, #1
    67f0:	d1db      	bne.n	67aa <svcSemaphoreWait+0x26>
    67f2:	2000      	movs	r0, #0
    67f4:	e7db      	b.n	67ae <svcSemaphoreWait+0x2a>
    67f6:	4b04      	ldr	r3, [pc, #16]	; (6808 <svcSemaphoreWait+0x84>)
    67f8:	e7d1      	b.n	679e <svcSemaphoreWait+0x1a>
    67fa:	46c0      	nop			; (mov r8, r8)
    67fc:	003d0900 	.word	0x003d0900
    6800:	00008900 	.word	0x00008900
    6804:	0000fffe 	.word	0x0000fffe
    6808:	0000ffff 	.word	0x0000ffff

0000680c <svcSemaphoreRelease>:
    680c:	b510      	push	{r4, lr}
    680e:	2380      	movs	r3, #128	; 0x80
    6810:	0782      	lsls	r2, r0, #30
    6812:	d104      	bne.n	681e <svcSemaphoreRelease+0x12>
    6814:	2800      	cmp	r0, #0
    6816:	d002      	beq.n	681e <svcSemaphoreRelease+0x12>
    6818:	7802      	ldrb	r2, [r0, #0]
    681a:	2a02      	cmp	r2, #2
    681c:	d001      	beq.n	6822 <svcSemaphoreRelease+0x16>
    681e:	0018      	movs	r0, r3
    6820:	bd10      	pop	{r4, pc}
    6822:	8841      	ldrh	r1, [r0, #2]
    6824:	4a03      	ldr	r2, [pc, #12]	; (6834 <svcSemaphoreRelease+0x28>)
    6826:	3301      	adds	r3, #1
    6828:	4291      	cmp	r1, r2
    682a:	d0f8      	beq.n	681e <svcSemaphoreRelease+0x12>
    682c:	f000 ff28 	bl	7680 <rt_sem_send>
    6830:	2300      	movs	r3, #0
    6832:	e7f4      	b.n	681e <svcSemaphoreRelease+0x12>
    6834:	0000ffff 	.word	0x0000ffff

00006838 <svcSemaphoreDelete>:
    6838:	b510      	push	{r4, lr}
    683a:	2380      	movs	r3, #128	; 0x80
    683c:	0782      	lsls	r2, r0, #30
    683e:	d104      	bne.n	684a <svcSemaphoreDelete+0x12>
    6840:	2800      	cmp	r0, #0
    6842:	d002      	beq.n	684a <svcSemaphoreDelete+0x12>
    6844:	7802      	ldrb	r2, [r0, #0]
    6846:	2a02      	cmp	r2, #2
    6848:	d001      	beq.n	684e <svcSemaphoreDelete+0x16>
    684a:	0018      	movs	r0, r3
    684c:	bd10      	pop	{r4, pc}
    684e:	f000 fee3 	bl	7618 <rt_sem_delete>
    6852:	2300      	movs	r3, #0
    6854:	e7f9      	b.n	684a <svcSemaphoreDelete+0x12>
    6856:	46c0      	nop			; (mov r8, r8)

00006858 <isrSemaphoreRelease>:
    6858:	b510      	push	{r4, lr}
    685a:	2380      	movs	r3, #128	; 0x80
    685c:	0782      	lsls	r2, r0, #30
    685e:	d104      	bne.n	686a <isrSemaphoreRelease+0x12>
    6860:	2800      	cmp	r0, #0
    6862:	d002      	beq.n	686a <isrSemaphoreRelease+0x12>
    6864:	7802      	ldrb	r2, [r0, #0]
    6866:	2a02      	cmp	r2, #2
    6868:	d001      	beq.n	686e <isrSemaphoreRelease+0x16>
    686a:	0018      	movs	r0, r3
    686c:	bd10      	pop	{r4, pc}
    686e:	8841      	ldrh	r1, [r0, #2]
    6870:	4a03      	ldr	r2, [pc, #12]	; (6880 <isrSemaphoreRelease+0x28>)
    6872:	3301      	adds	r3, #1
    6874:	4291      	cmp	r1, r2
    6876:	d0f8      	beq.n	686a <isrSemaphoreRelease+0x12>
    6878:	f000 ff3a 	bl	76f0 <isr_sem_send>
    687c:	2300      	movs	r3, #0
    687e:	e7f4      	b.n	686a <isrSemaphoreRelease+0x12>
    6880:	0000ffff 	.word	0x0000ffff

00006884 <osSemaphoreCreate>:
    6884:	b5b0      	push	{r4, r5, r7, lr}
    6886:	f3ef 8405 	mrs	r4, IPSR
    688a:	2c00      	cmp	r4, #0
    688c:	d11c      	bne.n	68c8 <osSemaphoreCreate+0x44>
    688e:	f3ef 8414 	mrs	r4, CONTROL
    6892:	07e4      	lsls	r4, r4, #31
    6894:	d503      	bpl.n	689e <osSemaphoreCreate+0x1a>
    6896:	4f0f      	ldr	r7, [pc, #60]	; (68d4 <osSemaphoreCreate+0x50>)
    6898:	46bc      	mov	ip, r7
    689a:	df00      	svc	0
    689c:	bdb0      	pop	{r4, r5, r7, pc}
    689e:	4c0b      	ldr	r4, [pc, #44]	; (68cc <osSemaphoreCreate+0x48>)
    68a0:	7824      	ldrb	r4, [r4, #0]
    68a2:	2c00      	cmp	r4, #0
    68a4:	d1f7      	bne.n	6896 <osSemaphoreCreate+0x12>
    68a6:	2800      	cmp	r0, #0
    68a8:	d00e      	beq.n	68c8 <osSemaphoreCreate+0x44>
    68aa:	6804      	ldr	r4, [r0, #0]
    68ac:	2c00      	cmp	r4, #0
    68ae:	d00b      	beq.n	68c8 <osSemaphoreCreate+0x44>
    68b0:	7823      	ldrb	r3, [r4, #0]
    68b2:	2b00      	cmp	r3, #0
    68b4:	d108      	bne.n	68c8 <osSemaphoreCreate+0x44>
    68b6:	4b06      	ldr	r3, [pc, #24]	; (68d0 <osSemaphoreCreate+0x4c>)
    68b8:	4299      	cmp	r1, r3
    68ba:	dc05      	bgt.n	68c8 <osSemaphoreCreate+0x44>
    68bc:	0020      	movs	r0, r4
    68be:	b289      	uxth	r1, r1
    68c0:	f000 fea4 	bl	760c <rt_sem_init>
    68c4:	0020      	movs	r0, r4
    68c6:	e7e9      	b.n	689c <osSemaphoreCreate+0x18>
    68c8:	2000      	movs	r0, #0
    68ca:	e7e7      	b.n	689c <osSemaphoreCreate+0x18>
    68cc:	20006079 	.word	0x20006079
    68d0:	0000ffff 	.word	0x0000ffff
    68d4:	00006759 	.word	0x00006759

000068d8 <osSemaphoreWait>:
    68d8:	b590      	push	{r4, r7, lr}
    68da:	f3ef 8405 	mrs	r4, IPSR
    68de:	2c00      	cmp	r4, #0
    68e0:	d103      	bne.n	68ea <osSemaphoreWait+0x12>
    68e2:	4f03      	ldr	r7, [pc, #12]	; (68f0 <osSemaphoreWait+0x18>)
    68e4:	46bc      	mov	ip, r7
    68e6:	df00      	svc	0
    68e8:	bd90      	pop	{r4, r7, pc}
    68ea:	2001      	movs	r0, #1
    68ec:	4240      	negs	r0, r0
    68ee:	e7fb      	b.n	68e8 <osSemaphoreWait+0x10>
    68f0:	00006785 	.word	0x00006785

000068f4 <osSemaphoreRelease>:
    68f4:	b5b0      	push	{r4, r5, r7, lr}
    68f6:	f3ef 8405 	mrs	r4, IPSR
    68fa:	2c00      	cmp	r4, #0
    68fc:	d105      	bne.n	690a <osSemaphoreRelease+0x16>
    68fe:	4f0c      	ldr	r7, [pc, #48]	; (6930 <osSemaphoreRelease+0x3c>)
    6900:	46bc      	mov	ip, r7
    6902:	df00      	svc	0
    6904:	0003      	movs	r3, r0
    6906:	0018      	movs	r0, r3
    6908:	bdb0      	pop	{r4, r5, r7, pc}
    690a:	2380      	movs	r3, #128	; 0x80
    690c:	0782      	lsls	r2, r0, #30
    690e:	d1fa      	bne.n	6906 <osSemaphoreRelease+0x12>
    6910:	2800      	cmp	r0, #0
    6912:	d0f8      	beq.n	6906 <osSemaphoreRelease+0x12>
    6914:	7802      	ldrb	r2, [r0, #0]
    6916:	2a02      	cmp	r2, #2
    6918:	d1f5      	bne.n	6906 <osSemaphoreRelease+0x12>
    691a:	8841      	ldrh	r1, [r0, #2]
    691c:	4a03      	ldr	r2, [pc, #12]	; (692c <osSemaphoreRelease+0x38>)
    691e:	3301      	adds	r3, #1
    6920:	4291      	cmp	r1, r2
    6922:	d0f0      	beq.n	6906 <osSemaphoreRelease+0x12>
    6924:	f000 fee4 	bl	76f0 <isr_sem_send>
    6928:	2300      	movs	r3, #0
    692a:	e7ec      	b.n	6906 <osSemaphoreRelease+0x12>
    692c:	0000ffff 	.word	0x0000ffff
    6930:	0000680d 	.word	0x0000680d

00006934 <osSemaphoreDelete>:
    6934:	b5b0      	push	{r4, r5, r7, lr}
    6936:	0005      	movs	r5, r0
    6938:	f3ef 8405 	mrs	r4, IPSR
    693c:	2082      	movs	r0, #130	; 0x82
    693e:	2c00      	cmp	r4, #0
    6940:	d000      	beq.n	6944 <osSemaphoreDelete+0x10>
    6942:	bdb0      	pop	{r4, r5, r7, pc}
    6944:	0028      	movs	r0, r5
    6946:	4f02      	ldr	r7, [pc, #8]	; (6950 <osSemaphoreDelete+0x1c>)
    6948:	46bc      	mov	ip, r7
    694a:	df00      	svc	0
    694c:	e7f9      	b.n	6942 <osSemaphoreDelete+0xe>
    694e:	0000      	.short	0x0000
    6950:	00006839 	.word	0x00006839

00006954 <svcPoolCreate>:
    6954:	b510      	push	{r4, lr}
    6956:	1e04      	subs	r4, r0, #0
    6958:	d011      	beq.n	697e <svcPoolCreate+0x2a>
    695a:	6801      	ldr	r1, [r0, #0]
    695c:	2900      	cmp	r1, #0
    695e:	d00e      	beq.n	697e <svcPoolCreate+0x2a>
    6960:	6842      	ldr	r2, [r0, #4]
    6962:	2a00      	cmp	r2, #0
    6964:	d00b      	beq.n	697e <svcPoolCreate+0x2a>
    6966:	6880      	ldr	r0, [r0, #8]
    6968:	2800      	cmp	r0, #0
    696a:	d008      	beq.n	697e <svcPoolCreate+0x2a>
    696c:	2303      	movs	r3, #3
    696e:	3203      	adds	r2, #3
    6970:	439a      	bics	r2, r3
    6972:	4351      	muls	r1, r2
    6974:	310c      	adds	r1, #12
    6976:	f000 fc81 	bl	727c <_init_box>
    697a:	68a0      	ldr	r0, [r4, #8]
    697c:	bd10      	pop	{r4, pc}
    697e:	2000      	movs	r0, #0
    6980:	e7fc      	b.n	697c <svcPoolCreate+0x28>
    6982:	46c0      	nop			; (mov r8, r8)

00006984 <sysPoolAlloc>:
    6984:	b510      	push	{r4, lr}
    6986:	2800      	cmp	r0, #0
    6988:	d002      	beq.n	6990 <sysPoolAlloc+0xc>
    698a:	f000 fca3 	bl	72d4 <rt_alloc_box>
    698e:	bd10      	pop	{r4, pc}
    6990:	2000      	movs	r0, #0
    6992:	e7fc      	b.n	698e <sysPoolAlloc+0xa>

00006994 <sysPoolFree>:
    6994:	b510      	push	{r4, lr}
    6996:	2380      	movs	r3, #128	; 0x80
    6998:	2800      	cmp	r0, #0
    699a:	d006      	beq.n	69aa <sysPoolFree+0x16>
    699c:	f000 fcba 	bl	7314 <rt_free_box>
    69a0:	1e42      	subs	r2, r0, #1
    69a2:	4190      	sbcs	r0, r2
    69a4:	2386      	movs	r3, #134	; 0x86
    69a6:	4240      	negs	r0, r0
    69a8:	4003      	ands	r3, r0
    69aa:	0018      	movs	r0, r3
    69ac:	bd10      	pop	{r4, pc}
    69ae:	46c0      	nop			; (mov r8, r8)

000069b0 <osPoolCreate>:
    69b0:	b5b0      	push	{r4, r5, r7, lr}
    69b2:	0004      	movs	r4, r0
    69b4:	f3ef 8005 	mrs	r0, IPSR
    69b8:	2800      	cmp	r0, #0
    69ba:	d120      	bne.n	69fe <osPoolCreate+0x4e>
    69bc:	f3ef 8014 	mrs	r0, CONTROL
    69c0:	07c0      	lsls	r0, r0, #31
    69c2:	d504      	bpl.n	69ce <osPoolCreate+0x1e>
    69c4:	0020      	movs	r0, r4
    69c6:	4f10      	ldr	r7, [pc, #64]	; (6a08 <osPoolCreate+0x58>)
    69c8:	46bc      	mov	ip, r7
    69ca:	df00      	svc	0
    69cc:	bdb0      	pop	{r4, r5, r7, pc}
    69ce:	480d      	ldr	r0, [pc, #52]	; (6a04 <osPoolCreate+0x54>)
    69d0:	7800      	ldrb	r0, [r0, #0]
    69d2:	2800      	cmp	r0, #0
    69d4:	d1f6      	bne.n	69c4 <osPoolCreate+0x14>
    69d6:	2c00      	cmp	r4, #0
    69d8:	d011      	beq.n	69fe <osPoolCreate+0x4e>
    69da:	6821      	ldr	r1, [r4, #0]
    69dc:	2900      	cmp	r1, #0
    69de:	d00e      	beq.n	69fe <osPoolCreate+0x4e>
    69e0:	6862      	ldr	r2, [r4, #4]
    69e2:	2a00      	cmp	r2, #0
    69e4:	d00b      	beq.n	69fe <osPoolCreate+0x4e>
    69e6:	68a0      	ldr	r0, [r4, #8]
    69e8:	2800      	cmp	r0, #0
    69ea:	d008      	beq.n	69fe <osPoolCreate+0x4e>
    69ec:	2303      	movs	r3, #3
    69ee:	3203      	adds	r2, #3
    69f0:	439a      	bics	r2, r3
    69f2:	4351      	muls	r1, r2
    69f4:	310c      	adds	r1, #12
    69f6:	f000 fc41 	bl	727c <_init_box>
    69fa:	68a0      	ldr	r0, [r4, #8]
    69fc:	e7e6      	b.n	69cc <osPoolCreate+0x1c>
    69fe:	2000      	movs	r0, #0
    6a00:	e7e4      	b.n	69cc <osPoolCreate+0x1c>
    6a02:	46c0      	nop			; (mov r8, r8)
    6a04:	20006079 	.word	0x20006079
    6a08:	00006955 	.word	0x00006955

00006a0c <osPoolAlloc>:
    6a0c:	b5b0      	push	{r4, r5, r7, lr}
    6a0e:	f3ef 8405 	mrs	r4, IPSR
    6a12:	2c00      	cmp	r4, #0
    6a14:	d103      	bne.n	6a1e <osPoolAlloc+0x12>
    6a16:	f3ef 8414 	mrs	r4, CONTROL
    6a1a:	07e4      	lsls	r4, r4, #31
    6a1c:	d404      	bmi.n	6a28 <osPoolAlloc+0x1c>
    6a1e:	2800      	cmp	r0, #0
    6a20:	d006      	beq.n	6a30 <osPoolAlloc+0x24>
    6a22:	f000 fc57 	bl	72d4 <rt_alloc_box>
    6a26:	bdb0      	pop	{r4, r5, r7, pc}
    6a28:	4f02      	ldr	r7, [pc, #8]	; (6a34 <osPoolAlloc+0x28>)
    6a2a:	46bc      	mov	ip, r7
    6a2c:	df00      	svc	0
    6a2e:	e7fa      	b.n	6a26 <osPoolAlloc+0x1a>
    6a30:	2000      	movs	r0, #0
    6a32:	e7f8      	b.n	6a26 <osPoolAlloc+0x1a>
    6a34:	00006985 	.word	0x00006985

00006a38 <osPoolCAlloc>:
    6a38:	b5b0      	push	{r4, r5, r7, lr}
    6a3a:	0004      	movs	r4, r0
    6a3c:	f3ef 8005 	mrs	r0, IPSR
    6a40:	2800      	cmp	r0, #0
    6a42:	d103      	bne.n	6a4c <osPoolCAlloc+0x14>
    6a44:	f3ef 8014 	mrs	r0, CONTROL
    6a48:	07c0      	lsls	r0, r0, #31
    6a4a:	d410      	bmi.n	6a6e <osPoolCAlloc+0x36>
    6a4c:	2c00      	cmp	r4, #0
    6a4e:	d015      	beq.n	6a7c <osPoolCAlloc+0x44>
    6a50:	0020      	movs	r0, r4
    6a52:	f000 fc3f 	bl	72d4 <rt_alloc_box>
    6a56:	2800      	cmp	r0, #0
    6a58:	d010      	beq.n	6a7c <osPoolCAlloc+0x44>
    6a5a:	68a3      	ldr	r3, [r4, #8]
    6a5c:	2b00      	cmp	r3, #0
    6a5e:	d005      	beq.n	6a6c <osPoolCAlloc+0x34>
    6a60:	0002      	movs	r2, r0
    6a62:	2100      	movs	r1, #0
    6a64:	3b04      	subs	r3, #4
    6a66:	c202      	stmia	r2!, {r1}
    6a68:	2b00      	cmp	r3, #0
    6a6a:	d1fb      	bne.n	6a64 <osPoolCAlloc+0x2c>
    6a6c:	bdb0      	pop	{r4, r5, r7, pc}
    6a6e:	0020      	movs	r0, r4
    6a70:	4f03      	ldr	r7, [pc, #12]	; (6a80 <osPoolCAlloc+0x48>)
    6a72:	46bc      	mov	ip, r7
    6a74:	df00      	svc	0
    6a76:	2c00      	cmp	r4, #0
    6a78:	d1ed      	bne.n	6a56 <osPoolCAlloc+0x1e>
    6a7a:	e7f7      	b.n	6a6c <osPoolCAlloc+0x34>
    6a7c:	2000      	movs	r0, #0
    6a7e:	e7f5      	b.n	6a6c <osPoolCAlloc+0x34>
    6a80:	00006985 	.word	0x00006985

00006a84 <osPoolFree>:
    6a84:	b5b0      	push	{r4, r5, r7, lr}
    6a86:	f3ef 8405 	mrs	r4, IPSR
    6a8a:	2c00      	cmp	r4, #0
    6a8c:	d103      	bne.n	6a96 <osPoolFree+0x12>
    6a8e:	f3ef 8414 	mrs	r4, CONTROL
    6a92:	07e4      	lsls	r4, r4, #31
    6a94:	d40a      	bmi.n	6aac <osPoolFree+0x28>
    6a96:	2800      	cmp	r0, #0
    6a98:	d00c      	beq.n	6ab4 <osPoolFree+0x30>
    6a9a:	f000 fc3b 	bl	7314 <rt_free_box>
    6a9e:	0003      	movs	r3, r0
    6aa0:	1e5a      	subs	r2, r3, #1
    6aa2:	4193      	sbcs	r3, r2
    6aa4:	2086      	movs	r0, #134	; 0x86
    6aa6:	425b      	negs	r3, r3
    6aa8:	4018      	ands	r0, r3
    6aaa:	bdb0      	pop	{r4, r5, r7, pc}
    6aac:	4f02      	ldr	r7, [pc, #8]	; (6ab8 <osPoolFree+0x34>)
    6aae:	46bc      	mov	ip, r7
    6ab0:	df00      	svc	0
    6ab2:	e7fa      	b.n	6aaa <osPoolFree+0x26>
    6ab4:	2080      	movs	r0, #128	; 0x80
    6ab6:	e7f8      	b.n	6aaa <osPoolFree+0x26>
    6ab8:	00006995 	.word	0x00006995

00006abc <svcMessageCreate>:
    6abc:	b510      	push	{r4, lr}
    6abe:	1e04      	subs	r4, r0, #0
    6ac0:	d00f      	beq.n	6ae2 <svcMessageCreate+0x26>
    6ac2:	6801      	ldr	r1, [r0, #0]
    6ac4:	2900      	cmp	r1, #0
    6ac6:	d00c      	beq.n	6ae2 <svcMessageCreate+0x26>
    6ac8:	6840      	ldr	r0, [r0, #4]
    6aca:	2800      	cmp	r0, #0
    6acc:	d009      	beq.n	6ae2 <svcMessageCreate+0x26>
    6ace:	7803      	ldrb	r3, [r0, #0]
    6ad0:	2b00      	cmp	r3, #0
    6ad2:	d106      	bne.n	6ae2 <svcMessageCreate+0x26>
    6ad4:	3104      	adds	r1, #4
    6ad6:	0089      	lsls	r1, r1, #2
    6ad8:	b289      	uxth	r1, r1
    6ada:	f000 fe2b 	bl	7734 <rt_mbx_init>
    6ade:	6860      	ldr	r0, [r4, #4]
    6ae0:	bd10      	pop	{r4, pc}
    6ae2:	2000      	movs	r0, #0
    6ae4:	e7fc      	b.n	6ae0 <svcMessageCreate+0x24>
    6ae6:	46c0      	nop			; (mov r8, r8)

00006ae8 <svcMessagePut>:
    6ae8:	b570      	push	{r4, r5, r6, lr}
    6aea:	0004      	movs	r4, r0
    6aec:	b082      	sub	sp, #8
    6aee:	000e      	movs	r6, r1
    6af0:	0015      	movs	r5, r2
    6af2:	2800      	cmp	r0, #0
    6af4:	d005      	beq.n	6b02 <svcMessagePut+0x1a>
    6af6:	7803      	ldrb	r3, [r0, #0]
    6af8:	2080      	movs	r0, #128	; 0x80
    6afa:	2b01      	cmp	r3, #1
    6afc:	d003      	beq.n	6b06 <svcMessagePut+0x1e>
    6afe:	b002      	add	sp, #8
    6b00:	bd70      	pop	{r4, r5, r6, pc}
    6b02:	2080      	movs	r0, #128	; 0x80
    6b04:	e7fb      	b.n	6afe <svcMessagePut+0x16>
    6b06:	2200      	movs	r2, #0
    6b08:	2d00      	cmp	r5, #0
    6b0a:	d014      	beq.n	6b36 <svcMessagePut+0x4e>
    6b0c:	1c6b      	adds	r3, r5, #1
    6b0e:	d01f      	beq.n	6b50 <svcMessagePut+0x68>
    6b10:	4b11      	ldr	r3, [pc, #68]	; (6b58 <svcMessagePut+0x70>)
    6b12:	429d      	cmp	r5, r3
    6b14:	d81e      	bhi.n	6b54 <svcMessagePut+0x6c>
    6b16:	20fa      	movs	r0, #250	; 0xfa
    6b18:	4b10      	ldr	r3, [pc, #64]	; (6b5c <svcMessagePut+0x74>)
    6b1a:	0080      	lsls	r0, r0, #2
    6b1c:	4368      	muls	r0, r5
    6b1e:	681b      	ldr	r3, [r3, #0]
    6b20:	9301      	str	r3, [sp, #4]
    6b22:	3b01      	subs	r3, #1
    6b24:	18c0      	adds	r0, r0, r3
    6b26:	9901      	ldr	r1, [sp, #4]
    6b28:	f7fd fda6 	bl	4678 <__aeabi_uidiv>
    6b2c:	4b0c      	ldr	r3, [pc, #48]	; (6b60 <svcMessagePut+0x78>)
    6b2e:	001a      	movs	r2, r3
    6b30:	4298      	cmp	r0, r3
    6b32:	d800      	bhi.n	6b36 <svcMessagePut+0x4e>
    6b34:	b282      	uxth	r2, r0
    6b36:	0031      	movs	r1, r6
    6b38:	0020      	movs	r0, r4
    6b3a:	f000 fe09 	bl	7750 <rt_mbx_send>
    6b3e:	0003      	movs	r3, r0
    6b40:	2000      	movs	r0, #0
    6b42:	2b01      	cmp	r3, #1
    6b44:	d1db      	bne.n	6afe <svcMessagePut+0x16>
    6b46:	30c1      	adds	r0, #193	; 0xc1
    6b48:	2d00      	cmp	r5, #0
    6b4a:	d1d8      	bne.n	6afe <svcMessagePut+0x16>
    6b4c:	3840      	subs	r0, #64	; 0x40
    6b4e:	e7d6      	b.n	6afe <svcMessagePut+0x16>
    6b50:	4a04      	ldr	r2, [pc, #16]	; (6b64 <svcMessagePut+0x7c>)
    6b52:	e7f0      	b.n	6b36 <svcMessagePut+0x4e>
    6b54:	4a02      	ldr	r2, [pc, #8]	; (6b60 <svcMessagePut+0x78>)
    6b56:	e7ee      	b.n	6b36 <svcMessagePut+0x4e>
    6b58:	003d0900 	.word	0x003d0900
    6b5c:	00008900 	.word	0x00008900
    6b60:	0000fffe 	.word	0x0000fffe
    6b64:	0000ffff 	.word	0x0000ffff

00006b68 <svcMessageGet>:
    6b68:	b510      	push	{r4, lr}
    6b6a:	0004      	movs	r4, r0
    6b6c:	b086      	sub	sp, #24
    6b6e:	2800      	cmp	r0, #0
    6b70:	d002      	beq.n	6b78 <svcMessageGet+0x10>
    6b72:	7803      	ldrb	r3, [r0, #0]
    6b74:	2b01      	cmp	r3, #1
    6b76:	d005      	beq.n	6b84 <svcMessageGet+0x1c>
    6b78:	2080      	movs	r0, #128	; 0x80
    6b7a:	2100      	movs	r1, #0
    6b7c:	2200      	movs	r2, #0
    6b7e:	2300      	movs	r3, #0
    6b80:	b006      	add	sp, #24
    6b82:	bd10      	pop	{r4, pc}
    6b84:	2900      	cmp	r1, #0
    6b86:	d01c      	beq.n	6bc2 <svcMessageGet+0x5a>
    6b88:	1c4b      	adds	r3, r1, #1
    6b8a:	d02a      	beq.n	6be2 <svcMessageGet+0x7a>
    6b8c:	4b16      	ldr	r3, [pc, #88]	; (6be8 <svcMessageGet+0x80>)
    6b8e:	4299      	cmp	r1, r3
    6b90:	d820      	bhi.n	6bd4 <svcMessageGet+0x6c>
    6b92:	20fa      	movs	r0, #250	; 0xfa
    6b94:	4b15      	ldr	r3, [pc, #84]	; (6bec <svcMessageGet+0x84>)
    6b96:	0080      	lsls	r0, r0, #2
    6b98:	4341      	muls	r1, r0
    6b9a:	681b      	ldr	r3, [r3, #0]
    6b9c:	9301      	str	r3, [sp, #4]
    6b9e:	3b01      	subs	r3, #1
    6ba0:	1858      	adds	r0, r3, r1
    6ba2:	9901      	ldr	r1, [sp, #4]
    6ba4:	f7fd fd68 	bl	4678 <__aeabi_uidiv>
    6ba8:	4b11      	ldr	r3, [pc, #68]	; (6bf0 <svcMessageGet+0x88>)
    6baa:	001a      	movs	r2, r3
    6bac:	4298      	cmp	r0, r3
    6bae:	d916      	bls.n	6bde <svcMessageGet+0x76>
    6bb0:	a904      	add	r1, sp, #16
    6bb2:	0020      	movs	r0, r4
    6bb4:	f000 fe18 	bl	77e8 <rt_mbx_wait>
    6bb8:	2801      	cmp	r0, #1
    6bba:	d00d      	beq.n	6bd8 <svcMessageGet+0x70>
    6bbc:	2010      	movs	r0, #16
    6bbe:	9904      	ldr	r1, [sp, #16]
    6bc0:	e7dc      	b.n	6b7c <svcMessageGet+0x14>
    6bc2:	2200      	movs	r2, #0
    6bc4:	a904      	add	r1, sp, #16
    6bc6:	f000 fe0f 	bl	77e8 <rt_mbx_wait>
    6bca:	2801      	cmp	r0, #1
    6bcc:	d1f6      	bne.n	6bbc <svcMessageGet+0x54>
    6bce:	2000      	movs	r0, #0
    6bd0:	9904      	ldr	r1, [sp, #16]
    6bd2:	e7d3      	b.n	6b7c <svcMessageGet+0x14>
    6bd4:	4a06      	ldr	r2, [pc, #24]	; (6bf0 <svcMessageGet+0x88>)
    6bd6:	e7eb      	b.n	6bb0 <svcMessageGet+0x48>
    6bd8:	2040      	movs	r0, #64	; 0x40
    6bda:	9904      	ldr	r1, [sp, #16]
    6bdc:	e7ce      	b.n	6b7c <svcMessageGet+0x14>
    6bde:	b282      	uxth	r2, r0
    6be0:	e7e6      	b.n	6bb0 <svcMessageGet+0x48>
    6be2:	4a04      	ldr	r2, [pc, #16]	; (6bf4 <svcMessageGet+0x8c>)
    6be4:	e7e4      	b.n	6bb0 <svcMessageGet+0x48>
    6be6:	46c0      	nop			; (mov r8, r8)
    6be8:	003d0900 	.word	0x003d0900
    6bec:	00008900 	.word	0x00008900
    6bf0:	0000fffe 	.word	0x0000fffe
    6bf4:	0000ffff 	.word	0x0000ffff

00006bf8 <isrMessagePut>:
    6bf8:	b570      	push	{r4, r5, r6, lr}
    6bfa:	0004      	movs	r4, r0
    6bfc:	000d      	movs	r5, r1
    6bfe:	2080      	movs	r0, #128	; 0x80
    6c00:	2c00      	cmp	r4, #0
    6c02:	d001      	beq.n	6c08 <isrMessagePut+0x10>
    6c04:	2a00      	cmp	r2, #0
    6c06:	d000      	beq.n	6c0a <isrMessagePut+0x12>
    6c08:	bd70      	pop	{r4, r5, r6, pc}
    6c0a:	7823      	ldrb	r3, [r4, #0]
    6c0c:	2b01      	cmp	r3, #1
    6c0e:	d1fb      	bne.n	6c08 <isrMessagePut+0x10>
    6c10:	0020      	movs	r0, r4
    6c12:	f000 fe45 	bl	78a0 <rt_mbx_check>
    6c16:	0003      	movs	r3, r0
    6c18:	2081      	movs	r0, #129	; 0x81
    6c1a:	2b00      	cmp	r3, #0
    6c1c:	d0f4      	beq.n	6c08 <isrMessagePut+0x10>
    6c1e:	0020      	movs	r0, r4
    6c20:	0029      	movs	r1, r5
    6c22:	f000 fe41 	bl	78a8 <isr_mbx_send>
    6c26:	2000      	movs	r0, #0
    6c28:	e7ee      	b.n	6c08 <isrMessagePut+0x10>
    6c2a:	46c0      	nop			; (mov r8, r8)

00006c2c <isrMessageGet>:
    6c2c:	b570      	push	{r4, r5, r6, lr}
    6c2e:	0004      	movs	r4, r0
    6c30:	b084      	sub	sp, #16
    6c32:	0008      	movs	r0, r1
    6c34:	0015      	movs	r5, r2
    6c36:	2900      	cmp	r1, #0
    6c38:	d004      	beq.n	6c44 <isrMessageGet+0x18>
    6c3a:	2a00      	cmp	r2, #0
    6c3c:	d102      	bne.n	6c44 <isrMessageGet+0x18>
    6c3e:	780b      	ldrb	r3, [r1, #0]
    6c40:	2b01      	cmp	r3, #1
    6c42:	d004      	beq.n	6c4e <isrMessageGet+0x22>
    6c44:	2380      	movs	r3, #128	; 0x80
    6c46:	6023      	str	r3, [r4, #0]
    6c48:	0020      	movs	r0, r4
    6c4a:	b004      	add	sp, #16
    6c4c:	bd70      	pop	{r4, r5, r6, pc}
    6c4e:	a902      	add	r1, sp, #8
    6c50:	ae01      	add	r6, sp, #4
    6c52:	f000 fe2f 	bl	78b4 <isr_mbx_receive>
    6c56:	2804      	cmp	r0, #4
    6c58:	d004      	beq.n	6c64 <isrMessageGet+0x38>
    6c5a:	0023      	movs	r3, r4
    6c5c:	9501      	str	r5, [sp, #4]
    6c5e:	ce07      	ldmia	r6!, {r0, r1, r2}
    6c60:	c307      	stmia	r3!, {r0, r1, r2}
    6c62:	e7f1      	b.n	6c48 <isrMessageGet+0x1c>
    6c64:	2310      	movs	r3, #16
    6c66:	9301      	str	r3, [sp, #4]
    6c68:	0023      	movs	r3, r4
    6c6a:	ce07      	ldmia	r6!, {r0, r1, r2}
    6c6c:	c307      	stmia	r3!, {r0, r1, r2}
    6c6e:	e7eb      	b.n	6c48 <isrMessageGet+0x1c>

00006c70 <osMessageCreate>:
    6c70:	b5b0      	push	{r4, r5, r7, lr}
    6c72:	0004      	movs	r4, r0
    6c74:	f3ef 8005 	mrs	r0, IPSR
    6c78:	2800      	cmp	r0, #0
    6c7a:	d11e      	bne.n	6cba <osMessageCreate+0x4a>
    6c7c:	f3ef 8014 	mrs	r0, CONTROL
    6c80:	07c0      	lsls	r0, r0, #31
    6c82:	d504      	bpl.n	6c8e <osMessageCreate+0x1e>
    6c84:	0020      	movs	r0, r4
    6c86:	4f0f      	ldr	r7, [pc, #60]	; (6cc4 <osMessageCreate+0x54>)
    6c88:	46bc      	mov	ip, r7
    6c8a:	df00      	svc	0
    6c8c:	bdb0      	pop	{r4, r5, r7, pc}
    6c8e:	480c      	ldr	r0, [pc, #48]	; (6cc0 <osMessageCreate+0x50>)
    6c90:	7800      	ldrb	r0, [r0, #0]
    6c92:	2800      	cmp	r0, #0
    6c94:	d1f6      	bne.n	6c84 <osMessageCreate+0x14>
    6c96:	2c00      	cmp	r4, #0
    6c98:	d00f      	beq.n	6cba <osMessageCreate+0x4a>
    6c9a:	6823      	ldr	r3, [r4, #0]
    6c9c:	2b00      	cmp	r3, #0
    6c9e:	d00c      	beq.n	6cba <osMessageCreate+0x4a>
    6ca0:	6860      	ldr	r0, [r4, #4]
    6ca2:	2800      	cmp	r0, #0
    6ca4:	d009      	beq.n	6cba <osMessageCreate+0x4a>
    6ca6:	7802      	ldrb	r2, [r0, #0]
    6ca8:	2a00      	cmp	r2, #0
    6caa:	d106      	bne.n	6cba <osMessageCreate+0x4a>
    6cac:	1d19      	adds	r1, r3, #4
    6cae:	008b      	lsls	r3, r1, #2
    6cb0:	b299      	uxth	r1, r3
    6cb2:	f000 fd3f 	bl	7734 <rt_mbx_init>
    6cb6:	6860      	ldr	r0, [r4, #4]
    6cb8:	e7e8      	b.n	6c8c <osMessageCreate+0x1c>
    6cba:	2000      	movs	r0, #0
    6cbc:	e7e6      	b.n	6c8c <osMessageCreate+0x1c>
    6cbe:	46c0      	nop			; (mov r8, r8)
    6cc0:	20006079 	.word	0x20006079
    6cc4:	00006abd 	.word	0x00006abd

00006cc8 <osMessagePut>:
    6cc8:	b5b0      	push	{r4, r5, r7, lr}
    6cca:	0004      	movs	r4, r0
    6ccc:	000d      	movs	r5, r1
    6cce:	f3ef 8105 	mrs	r1, IPSR
    6cd2:	2900      	cmp	r1, #0
    6cd4:	d008      	beq.n	6ce8 <osMessagePut+0x20>
    6cd6:	2080      	movs	r0, #128	; 0x80
    6cd8:	2c00      	cmp	r4, #0
    6cda:	d004      	beq.n	6ce6 <osMessagePut+0x1e>
    6cdc:	2a00      	cmp	r2, #0
    6cde:	d102      	bne.n	6ce6 <osMessagePut+0x1e>
    6ce0:	7823      	ldrb	r3, [r4, #0]
    6ce2:	2b01      	cmp	r3, #1
    6ce4:	d005      	beq.n	6cf2 <osMessagePut+0x2a>
    6ce6:	bdb0      	pop	{r4, r5, r7, pc}
    6ce8:	0029      	movs	r1, r5
    6cea:	4f08      	ldr	r7, [pc, #32]	; (6d0c <osMessagePut+0x44>)
    6cec:	46bc      	mov	ip, r7
    6cee:	df00      	svc	0
    6cf0:	e7f9      	b.n	6ce6 <osMessagePut+0x1e>
    6cf2:	0020      	movs	r0, r4
    6cf4:	f000 fdd4 	bl	78a0 <rt_mbx_check>
    6cf8:	0003      	movs	r3, r0
    6cfa:	2081      	movs	r0, #129	; 0x81
    6cfc:	2b00      	cmp	r3, #0
    6cfe:	d0f2      	beq.n	6ce6 <osMessagePut+0x1e>
    6d00:	0020      	movs	r0, r4
    6d02:	0029      	movs	r1, r5
    6d04:	f000 fdd0 	bl	78a8 <isr_mbx_send>
    6d08:	2000      	movs	r0, #0
    6d0a:	e7ec      	b.n	6ce6 <osMessagePut+0x1e>
    6d0c:	00006ae9 	.word	0x00006ae9

00006d10 <osMessageGet>:
    6d10:	b5f0      	push	{r4, r5, r6, r7, lr}
    6d12:	0004      	movs	r4, r0
    6d14:	b085      	sub	sp, #20
    6d16:	0008      	movs	r0, r1
    6d18:	0015      	movs	r5, r2
    6d1a:	f3ef 8105 	mrs	r1, IPSR
    6d1e:	2900      	cmp	r1, #0
    6d20:	d109      	bne.n	6d36 <osMessageGet+0x26>
    6d22:	0011      	movs	r1, r2
    6d24:	4f11      	ldr	r7, [pc, #68]	; (6d6c <osMessageGet+0x5c>)
    6d26:	46bc      	mov	ip, r7
    6d28:	df00      	svc	0
    6d2a:	6020      	str	r0, [r4, #0]
    6d2c:	6061      	str	r1, [r4, #4]
    6d2e:	60a2      	str	r2, [r4, #8]
    6d30:	0020      	movs	r0, r4
    6d32:	b005      	add	sp, #20
    6d34:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6d36:	2800      	cmp	r0, #0
    6d38:	d004      	beq.n	6d44 <osMessageGet+0x34>
    6d3a:	2a00      	cmp	r2, #0
    6d3c:	d102      	bne.n	6d44 <osMessageGet+0x34>
    6d3e:	7803      	ldrb	r3, [r0, #0]
    6d40:	2b01      	cmp	r3, #1
    6d42:	d002      	beq.n	6d4a <osMessageGet+0x3a>
    6d44:	2380      	movs	r3, #128	; 0x80
    6d46:	6023      	str	r3, [r4, #0]
    6d48:	e7f2      	b.n	6d30 <osMessageGet+0x20>
    6d4a:	a902      	add	r1, sp, #8
    6d4c:	ae01      	add	r6, sp, #4
    6d4e:	f000 fdb1 	bl	78b4 <isr_mbx_receive>
    6d52:	2804      	cmp	r0, #4
    6d54:	d004      	beq.n	6d60 <osMessageGet+0x50>
    6d56:	0023      	movs	r3, r4
    6d58:	9501      	str	r5, [sp, #4]
    6d5a:	ce07      	ldmia	r6!, {r0, r1, r2}
    6d5c:	c307      	stmia	r3!, {r0, r1, r2}
    6d5e:	e7e7      	b.n	6d30 <osMessageGet+0x20>
    6d60:	2310      	movs	r3, #16
    6d62:	9301      	str	r3, [sp, #4]
    6d64:	0023      	movs	r3, r4
    6d66:	ce07      	ldmia	r6!, {r0, r1, r2}
    6d68:	c307      	stmia	r3!, {r0, r1, r2}
    6d6a:	e7e1      	b.n	6d30 <osMessageGet+0x20>
    6d6c:	00006b69 	.word	0x00006b69

00006d70 <svcMailCreate>:
    6d70:	b570      	push	{r4, r5, r6, lr}
    6d72:	1e04      	subs	r4, r0, #0
    6d74:	d021      	beq.n	6dba <svcMailCreate+0x4a>
    6d76:	6801      	ldr	r1, [r0, #0]
    6d78:	2900      	cmp	r1, #0
    6d7a:	d01e      	beq.n	6dba <svcMailCreate+0x4a>
    6d7c:	6842      	ldr	r2, [r0, #4]
    6d7e:	2a00      	cmp	r2, #0
    6d80:	d01b      	beq.n	6dba <svcMailCreate+0x4a>
    6d82:	6883      	ldr	r3, [r0, #8]
    6d84:	2b00      	cmp	r3, #0
    6d86:	d018      	beq.n	6dba <svcMailCreate+0x4a>
    6d88:	6858      	ldr	r0, [r3, #4]
    6d8a:	681d      	ldr	r5, [r3, #0]
    6d8c:	2800      	cmp	r0, #0
    6d8e:	d014      	beq.n	6dba <svcMailCreate+0x4a>
    6d90:	2d00      	cmp	r5, #0
    6d92:	d012      	beq.n	6dba <svcMailCreate+0x4a>
    6d94:	782b      	ldrb	r3, [r5, #0]
    6d96:	2b00      	cmp	r3, #0
    6d98:	d10f      	bne.n	6dba <svcMailCreate+0x4a>
    6d9a:	3303      	adds	r3, #3
    6d9c:	3203      	adds	r2, #3
    6d9e:	439a      	bics	r2, r3
    6da0:	4351      	muls	r1, r2
    6da2:	310c      	adds	r1, #12
    6da4:	f000 fa6a 	bl	727c <_init_box>
    6da8:	6823      	ldr	r3, [r4, #0]
    6daa:	0028      	movs	r0, r5
    6dac:	1d19      	adds	r1, r3, #4
    6dae:	0089      	lsls	r1, r1, #2
    6db0:	b289      	uxth	r1, r1
    6db2:	f000 fcbf 	bl	7734 <rt_mbx_init>
    6db6:	68a0      	ldr	r0, [r4, #8]
    6db8:	bd70      	pop	{r4, r5, r6, pc}
    6dba:	2000      	movs	r0, #0
    6dbc:	e7fc      	b.n	6db8 <svcMailCreate+0x48>
    6dbe:	46c0      	nop			; (mov r8, r8)

00006dc0 <sysMailAlloc>:
    6dc0:	b530      	push	{r4, r5, lr}
    6dc2:	000d      	movs	r5, r1
    6dc4:	b083      	sub	sp, #12
    6dc6:	2800      	cmp	r0, #0
    6dc8:	d035      	beq.n	6e36 <sysMailAlloc+0x76>
    6dca:	6804      	ldr	r4, [r0, #0]
    6dcc:	6840      	ldr	r0, [r0, #4]
    6dce:	2800      	cmp	r0, #0
    6dd0:	d031      	beq.n	6e36 <sysMailAlloc+0x76>
    6dd2:	2c00      	cmp	r4, #0
    6dd4:	d02f      	beq.n	6e36 <sysMailAlloc+0x76>
    6dd6:	2a00      	cmp	r2, #0
    6dd8:	d007      	beq.n	6dea <sysMailAlloc+0x2a>
    6dda:	2900      	cmp	r1, #0
    6ddc:	d12b      	bne.n	6e36 <sysMailAlloc+0x76>
    6dde:	f000 fa79 	bl	72d4 <rt_alloc_box>
    6de2:	2800      	cmp	r0, #0
    6de4:	d027      	beq.n	6e36 <sysMailAlloc+0x76>
    6de6:	b003      	add	sp, #12
    6de8:	bd30      	pop	{r4, r5, pc}
    6dea:	f000 fa73 	bl	72d4 <rt_alloc_box>
    6dee:	2800      	cmp	r0, #0
    6df0:	d1f9      	bne.n	6de6 <sysMailAlloc+0x26>
    6df2:	2d00      	cmp	r5, #0
    6df4:	d01f      	beq.n	6e36 <sysMailAlloc+0x76>
    6df6:	6863      	ldr	r3, [r4, #4]
    6df8:	2b00      	cmp	r3, #0
    6dfa:	d020      	beq.n	6e3e <sysMailAlloc+0x7e>
    6dfc:	4b16      	ldr	r3, [pc, #88]	; (6e58 <sysMailAlloc+0x98>)
    6dfe:	0020      	movs	r0, r4
    6e00:	6819      	ldr	r1, [r3, #0]
    6e02:	f000 fdf1 	bl	79e8 <rt_put_prio>
    6e06:	1c6b      	adds	r3, r5, #1
    6e08:	d021      	beq.n	6e4e <sysMailAlloc+0x8e>
    6e0a:	4b14      	ldr	r3, [pc, #80]	; (6e5c <sysMailAlloc+0x9c>)
    6e0c:	429d      	cmp	r5, r3
    6e0e:	d814      	bhi.n	6e3a <sysMailAlloc+0x7a>
    6e10:	20fa      	movs	r0, #250	; 0xfa
    6e12:	4b13      	ldr	r3, [pc, #76]	; (6e60 <sysMailAlloc+0xa0>)
    6e14:	0080      	lsls	r0, r0, #2
    6e16:	4368      	muls	r0, r5
    6e18:	681b      	ldr	r3, [r3, #0]
    6e1a:	9301      	str	r3, [sp, #4]
    6e1c:	3b01      	subs	r3, #1
    6e1e:	18c0      	adds	r0, r0, r3
    6e20:	9901      	ldr	r1, [sp, #4]
    6e22:	f7fd fc29 	bl	4678 <__aeabi_uidiv>
    6e26:	4b0f      	ldr	r3, [pc, #60]	; (6e64 <sysMailAlloc+0xa4>)
    6e28:	0002      	movs	r2, r0
    6e2a:	0018      	movs	r0, r3
    6e2c:	429a      	cmp	r2, r3
    6e2e:	d910      	bls.n	6e52 <sysMailAlloc+0x92>
    6e30:	2108      	movs	r1, #8
    6e32:	f001 fa13 	bl	825c <rt_block>
    6e36:	2000      	movs	r0, #0
    6e38:	e7d5      	b.n	6de6 <sysMailAlloc+0x26>
    6e3a:	480a      	ldr	r0, [pc, #40]	; (6e64 <sysMailAlloc+0xa4>)
    6e3c:	e7f8      	b.n	6e30 <sysMailAlloc+0x70>
    6e3e:	4a06      	ldr	r2, [pc, #24]	; (6e58 <sysMailAlloc+0x98>)
    6e40:	6812      	ldr	r2, [r2, #0]
    6e42:	6062      	str	r2, [r4, #4]
    6e44:	6053      	str	r3, [r2, #4]
    6e46:	2303      	movs	r3, #3
    6e48:	6094      	str	r4, [r2, #8]
    6e4a:	7063      	strb	r3, [r4, #1]
    6e4c:	e7db      	b.n	6e06 <sysMailAlloc+0x46>
    6e4e:	4806      	ldr	r0, [pc, #24]	; (6e68 <sysMailAlloc+0xa8>)
    6e50:	e7ee      	b.n	6e30 <sysMailAlloc+0x70>
    6e52:	b290      	uxth	r0, r2
    6e54:	e7ec      	b.n	6e30 <sysMailAlloc+0x70>
    6e56:	46c0      	nop			; (mov r8, r8)
    6e58:	200060b8 	.word	0x200060b8
    6e5c:	003d0900 	.word	0x003d0900
    6e60:	00008900 	.word	0x00008900
    6e64:	0000fffe 	.word	0x0000fffe
    6e68:	0000ffff 	.word	0x0000ffff

00006e6c <sysMailFree>:
    6e6c:	b570      	push	{r4, r5, r6, lr}
    6e6e:	0016      	movs	r6, r2
    6e70:	2800      	cmp	r0, #0
    6e72:	d00e      	beq.n	6e92 <sysMailFree+0x26>
    6e74:	6804      	ldr	r4, [r0, #0]
    6e76:	2c00      	cmp	r4, #0
    6e78:	d00b      	beq.n	6e92 <sysMailFree+0x26>
    6e7a:	6845      	ldr	r5, [r0, #4]
    6e7c:	2080      	movs	r0, #128	; 0x80
    6e7e:	2d00      	cmp	r5, #0
    6e80:	d006      	beq.n	6e90 <sysMailFree+0x24>
    6e82:	0028      	movs	r0, r5
    6e84:	f000 fa46 	bl	7314 <rt_free_box>
    6e88:	0003      	movs	r3, r0
    6e8a:	2086      	movs	r0, #134	; 0x86
    6e8c:	2b00      	cmp	r3, #0
    6e8e:	d002      	beq.n	6e96 <sysMailFree+0x2a>
    6e90:	bd70      	pop	{r4, r5, r6, pc}
    6e92:	2080      	movs	r0, #128	; 0x80
    6e94:	e7fc      	b.n	6e90 <sysMailFree+0x24>
    6e96:	6863      	ldr	r3, [r4, #4]
    6e98:	2b00      	cmp	r3, #0
    6e9a:	d002      	beq.n	6ea2 <sysMailFree+0x36>
    6e9c:	7863      	ldrb	r3, [r4, #1]
    6e9e:	2b03      	cmp	r3, #3
    6ea0:	d001      	beq.n	6ea6 <sysMailFree+0x3a>
    6ea2:	2000      	movs	r0, #0
    6ea4:	e7f4      	b.n	6e90 <sysMailFree+0x24>
    6ea6:	2e00      	cmp	r6, #0
    6ea8:	d113      	bne.n	6ed2 <sysMailFree+0x66>
    6eaa:	0028      	movs	r0, r5
    6eac:	f000 fa12 	bl	72d4 <rt_alloc_box>
    6eb0:	1e05      	subs	r5, r0, #0
    6eb2:	d0f6      	beq.n	6ea2 <sysMailFree+0x36>
    6eb4:	0020      	movs	r0, r4
    6eb6:	f000 fdbd 	bl	7a34 <rt_get_first>
    6eba:	0004      	movs	r4, r0
    6ebc:	0029      	movs	r1, r5
    6ebe:	f000 f987 	bl	71d0 <rt_ret_val>
    6ec2:	0020      	movs	r0, r4
    6ec4:	f000 feee 	bl	7ca4 <rt_rmv_dly>
    6ec8:	0020      	movs	r0, r4
    6eca:	f001 f9a1 	bl	8210 <rt_dispatch>
    6ece:	2000      	movs	r0, #0
    6ed0:	e7de      	b.n	6e90 <sysMailFree+0x24>
    6ed2:	0020      	movs	r0, r4
    6ed4:	0029      	movs	r1, r5
    6ed6:	f000 fefb 	bl	7cd0 <rt_psq_enq>
    6eda:	f001 f8dd 	bl	8098 <rt_psh_req>
    6ede:	2000      	movs	r0, #0
    6ee0:	e7d6      	b.n	6e90 <sysMailFree+0x24>
    6ee2:	46c0      	nop			; (mov r8, r8)

00006ee4 <osMailCreate>:
    6ee4:	b5b0      	push	{r4, r5, r7, lr}
    6ee6:	0004      	movs	r4, r0
    6ee8:	f3ef 8005 	mrs	r0, IPSR
    6eec:	2800      	cmp	r0, #0
    6eee:	d130      	bne.n	6f52 <osMailCreate+0x6e>
    6ef0:	f3ef 8014 	mrs	r0, CONTROL
    6ef4:	07c0      	lsls	r0, r0, #31
    6ef6:	d504      	bpl.n	6f02 <osMailCreate+0x1e>
    6ef8:	0020      	movs	r0, r4
    6efa:	4f18      	ldr	r7, [pc, #96]	; (6f5c <osMailCreate+0x78>)
    6efc:	46bc      	mov	ip, r7
    6efe:	df00      	svc	0
    6f00:	bdb0      	pop	{r4, r5, r7, pc}
    6f02:	4815      	ldr	r0, [pc, #84]	; (6f58 <osMailCreate+0x74>)
    6f04:	7800      	ldrb	r0, [r0, #0]
    6f06:	2800      	cmp	r0, #0
    6f08:	d1f6      	bne.n	6ef8 <osMailCreate+0x14>
    6f0a:	2c00      	cmp	r4, #0
    6f0c:	d021      	beq.n	6f52 <osMailCreate+0x6e>
    6f0e:	6821      	ldr	r1, [r4, #0]
    6f10:	2900      	cmp	r1, #0
    6f12:	d01e      	beq.n	6f52 <osMailCreate+0x6e>
    6f14:	6862      	ldr	r2, [r4, #4]
    6f16:	2a00      	cmp	r2, #0
    6f18:	d01b      	beq.n	6f52 <osMailCreate+0x6e>
    6f1a:	68a3      	ldr	r3, [r4, #8]
    6f1c:	2b00      	cmp	r3, #0
    6f1e:	d018      	beq.n	6f52 <osMailCreate+0x6e>
    6f20:	6858      	ldr	r0, [r3, #4]
    6f22:	681d      	ldr	r5, [r3, #0]
    6f24:	2800      	cmp	r0, #0
    6f26:	d014      	beq.n	6f52 <osMailCreate+0x6e>
    6f28:	2d00      	cmp	r5, #0
    6f2a:	d012      	beq.n	6f52 <osMailCreate+0x6e>
    6f2c:	782b      	ldrb	r3, [r5, #0]
    6f2e:	2b00      	cmp	r3, #0
    6f30:	d10f      	bne.n	6f52 <osMailCreate+0x6e>
    6f32:	3303      	adds	r3, #3
    6f34:	3203      	adds	r2, #3
    6f36:	439a      	bics	r2, r3
    6f38:	4351      	muls	r1, r2
    6f3a:	310c      	adds	r1, #12
    6f3c:	f000 f99e 	bl	727c <_init_box>
    6f40:	6823      	ldr	r3, [r4, #0]
    6f42:	0028      	movs	r0, r5
    6f44:	1d19      	adds	r1, r3, #4
    6f46:	0089      	lsls	r1, r1, #2
    6f48:	b289      	uxth	r1, r1
    6f4a:	f000 fbf3 	bl	7734 <rt_mbx_init>
    6f4e:	68a0      	ldr	r0, [r4, #8]
    6f50:	e7d6      	b.n	6f00 <osMailCreate+0x1c>
    6f52:	2000      	movs	r0, #0
    6f54:	e7d4      	b.n	6f00 <osMailCreate+0x1c>
    6f56:	46c0      	nop			; (mov r8, r8)
    6f58:	20006079 	.word	0x20006079
    6f5c:	00006d71 	.word	0x00006d71

00006f60 <osMailAlloc>:
    6f60:	b580      	push	{r7, lr}
    6f62:	f3ef 8205 	mrs	r2, IPSR
    6f66:	2a00      	cmp	r2, #0
    6f68:	d104      	bne.n	6f74 <osMailAlloc+0x14>
    6f6a:	2200      	movs	r2, #0
    6f6c:	4f09      	ldr	r7, [pc, #36]	; (6f94 <osMailAlloc+0x34>)
    6f6e:	46bc      	mov	ip, r7
    6f70:	df00      	svc	0
    6f72:	bd80      	pop	{r7, pc}
    6f74:	2800      	cmp	r0, #0
    6f76:	d00a      	beq.n	6f8e <osMailAlloc+0x2e>
    6f78:	6803      	ldr	r3, [r0, #0]
    6f7a:	6840      	ldr	r0, [r0, #4]
    6f7c:	2800      	cmp	r0, #0
    6f7e:	d006      	beq.n	6f8e <osMailAlloc+0x2e>
    6f80:	2b00      	cmp	r3, #0
    6f82:	d004      	beq.n	6f8e <osMailAlloc+0x2e>
    6f84:	2900      	cmp	r1, #0
    6f86:	d102      	bne.n	6f8e <osMailAlloc+0x2e>
    6f88:	f000 f9a4 	bl	72d4 <rt_alloc_box>
    6f8c:	e7f1      	b.n	6f72 <osMailAlloc+0x12>
    6f8e:	2000      	movs	r0, #0
    6f90:	e7ef      	b.n	6f72 <osMailAlloc+0x12>
    6f92:	0000      	.short	0x0000
    6f94:	00006dc1 	.word	0x00006dc1

00006f98 <osMailCAlloc>:
    6f98:	b5b0      	push	{r4, r5, r7, lr}
    6f9a:	0004      	movs	r4, r0
    6f9c:	f3ef 8205 	mrs	r2, IPSR
    6fa0:	2a00      	cmp	r2, #0
    6fa2:	d112      	bne.n	6fca <osMailCAlloc+0x32>
    6fa4:	2200      	movs	r2, #0
    6fa6:	4f13      	ldr	r7, [pc, #76]	; (6ff4 <osMailCAlloc+0x5c>)
    6fa8:	46bc      	mov	ip, r7
    6faa:	df00      	svc	0
    6fac:	6863      	ldr	r3, [r4, #4]
    6fae:	2b00      	cmp	r3, #0
    6fb0:	d00a      	beq.n	6fc8 <osMailCAlloc+0x30>
    6fb2:	2800      	cmp	r0, #0
    6fb4:	d01b      	beq.n	6fee <osMailCAlloc+0x56>
    6fb6:	689b      	ldr	r3, [r3, #8]
    6fb8:	2b00      	cmp	r3, #0
    6fba:	d005      	beq.n	6fc8 <osMailCAlloc+0x30>
    6fbc:	0002      	movs	r2, r0
    6fbe:	2100      	movs	r1, #0
    6fc0:	3b04      	subs	r3, #4
    6fc2:	c202      	stmia	r2!, {r1}
    6fc4:	2b00      	cmp	r3, #0
    6fc6:	d1fb      	bne.n	6fc0 <osMailCAlloc+0x28>
    6fc8:	bdb0      	pop	{r4, r5, r7, pc}
    6fca:	2800      	cmp	r0, #0
    6fcc:	d00f      	beq.n	6fee <osMailCAlloc+0x56>
    6fce:	6803      	ldr	r3, [r0, #0]
    6fd0:	6840      	ldr	r0, [r0, #4]
    6fd2:	2800      	cmp	r0, #0
    6fd4:	d00b      	beq.n	6fee <osMailCAlloc+0x56>
    6fd6:	2b00      	cmp	r3, #0
    6fd8:	d009      	beq.n	6fee <osMailCAlloc+0x56>
    6fda:	2900      	cmp	r1, #0
    6fdc:	d107      	bne.n	6fee <osMailCAlloc+0x56>
    6fde:	f000 f979 	bl	72d4 <rt_alloc_box>
    6fe2:	2800      	cmp	r0, #0
    6fe4:	d003      	beq.n	6fee <osMailCAlloc+0x56>
    6fe6:	6863      	ldr	r3, [r4, #4]
    6fe8:	2b00      	cmp	r3, #0
    6fea:	d1e4      	bne.n	6fb6 <osMailCAlloc+0x1e>
    6fec:	e7ec      	b.n	6fc8 <osMailCAlloc+0x30>
    6fee:	2000      	movs	r0, #0
    6ff0:	e7ea      	b.n	6fc8 <osMailCAlloc+0x30>
    6ff2:	0000      	.short	0x0000
    6ff4:	00006dc1 	.word	0x00006dc1

00006ff8 <osMailFree>:
    6ff8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6ffa:	f3ef 8205 	mrs	r2, IPSR
    6ffe:	2a00      	cmp	r2, #0
    7000:	d106      	bne.n	7010 <osMailFree+0x18>
    7002:	2200      	movs	r2, #0
    7004:	4f13      	ldr	r7, [pc, #76]	; (7054 <osMailFree+0x5c>)
    7006:	46bc      	mov	ip, r7
    7008:	df00      	svc	0
    700a:	0004      	movs	r4, r0
    700c:	0020      	movs	r0, r4
    700e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7010:	2800      	cmp	r0, #0
    7012:	d01a      	beq.n	704a <osMailFree+0x52>
    7014:	6805      	ldr	r5, [r0, #0]
    7016:	2d00      	cmp	r5, #0
    7018:	d017      	beq.n	704a <osMailFree+0x52>
    701a:	6846      	ldr	r6, [r0, #4]
    701c:	2480      	movs	r4, #128	; 0x80
    701e:	2e00      	cmp	r6, #0
    7020:	d0f4      	beq.n	700c <osMailFree+0x14>
    7022:	0030      	movs	r0, r6
    7024:	f000 f976 	bl	7314 <rt_free_box>
    7028:	3406      	adds	r4, #6
    702a:	2800      	cmp	r0, #0
    702c:	d1ee      	bne.n	700c <osMailFree+0x14>
    702e:	686b      	ldr	r3, [r5, #4]
    7030:	2b00      	cmp	r3, #0
    7032:	d00c      	beq.n	704e <osMailFree+0x56>
    7034:	786b      	ldrb	r3, [r5, #1]
    7036:	2400      	movs	r4, #0
    7038:	2b03      	cmp	r3, #3
    703a:	d1e7      	bne.n	700c <osMailFree+0x14>
    703c:	0031      	movs	r1, r6
    703e:	0028      	movs	r0, r5
    7040:	f000 fe46 	bl	7cd0 <rt_psq_enq>
    7044:	f001 f828 	bl	8098 <rt_psh_req>
    7048:	e7e0      	b.n	700c <osMailFree+0x14>
    704a:	2480      	movs	r4, #128	; 0x80
    704c:	e7de      	b.n	700c <osMailFree+0x14>
    704e:	2400      	movs	r4, #0
    7050:	e7dc      	b.n	700c <osMailFree+0x14>
    7052:	0000      	.short	0x0000
    7054:	00006e6d 	.word	0x00006e6d

00007058 <osMailPut>:
    7058:	b5b0      	push	{r4, r5, r7, lr}
    705a:	0002      	movs	r2, r0
    705c:	000c      	movs	r4, r1
    705e:	2800      	cmp	r0, #0
    7060:	d00e      	beq.n	7080 <osMailPut+0x28>
    7062:	2086      	movs	r0, #134	; 0x86
    7064:	2900      	cmp	r1, #0
    7066:	d00a      	beq.n	707e <osMailPut+0x26>
    7068:	6815      	ldr	r5, [r2, #0]
    706a:	f3ef 8205 	mrs	r2, IPSR
    706e:	2a00      	cmp	r2, #0
    7070:	d008      	beq.n	7084 <osMailPut+0x2c>
    7072:	2d00      	cmp	r5, #0
    7074:	d004      	beq.n	7080 <osMailPut+0x28>
    7076:	782b      	ldrb	r3, [r5, #0]
    7078:	3806      	subs	r0, #6
    707a:	2b01      	cmp	r3, #1
    707c:	d008      	beq.n	7090 <osMailPut+0x38>
    707e:	bdb0      	pop	{r4, r5, r7, pc}
    7080:	2080      	movs	r0, #128	; 0x80
    7082:	e7fc      	b.n	707e <osMailPut+0x26>
    7084:	0028      	movs	r0, r5
    7086:	2200      	movs	r2, #0
    7088:	4f08      	ldr	r7, [pc, #32]	; (70ac <osMailPut+0x54>)
    708a:	46bc      	mov	ip, r7
    708c:	df00      	svc	0
    708e:	e7f6      	b.n	707e <osMailPut+0x26>
    7090:	0028      	movs	r0, r5
    7092:	f000 fc05 	bl	78a0 <rt_mbx_check>
    7096:	0003      	movs	r3, r0
    7098:	2081      	movs	r0, #129	; 0x81
    709a:	2b00      	cmp	r3, #0
    709c:	d0ef      	beq.n	707e <osMailPut+0x26>
    709e:	0028      	movs	r0, r5
    70a0:	0021      	movs	r1, r4
    70a2:	f000 fc01 	bl	78a8 <isr_mbx_send>
    70a6:	2000      	movs	r0, #0
    70a8:	e7e9      	b.n	707e <osMailPut+0x26>
    70aa:	0000      	.short	0x0000
    70ac:	00006ae9 	.word	0x00006ae9

000070b0 <osMailGet>:
    70b0:	b5b0      	push	{r4, r5, r7, lr}
    70b2:	0004      	movs	r4, r0
    70b4:	b084      	sub	sp, #16
    70b6:	2900      	cmp	r1, #0
    70b8:	d012      	beq.n	70e0 <osMailGet+0x30>
    70ba:	6808      	ldr	r0, [r1, #0]
    70bc:	f3ef 8105 	mrs	r1, IPSR
    70c0:	2900      	cmp	r1, #0
    70c2:	d113      	bne.n	70ec <osMailGet+0x3c>
    70c4:	0011      	movs	r1, r2
    70c6:	4f0d      	ldr	r7, [pc, #52]	; (70fc <osMailGet+0x4c>)
    70c8:	46bc      	mov	ip, r7
    70ca:	df00      	svc	0
    70cc:	2810      	cmp	r0, #16
    70ce:	d005      	beq.n	70dc <osMailGet+0x2c>
    70d0:	6020      	str	r0, [r4, #0]
    70d2:	6061      	str	r1, [r4, #4]
    70d4:	60a2      	str	r2, [r4, #8]
    70d6:	0020      	movs	r0, r4
    70d8:	b004      	add	sp, #16
    70da:	bdb0      	pop	{r4, r5, r7, pc}
    70dc:	3010      	adds	r0, #16
    70de:	e7f7      	b.n	70d0 <osMailGet+0x20>
    70e0:	2380      	movs	r3, #128	; 0x80
    70e2:	6003      	str	r3, [r0, #0]
    70e4:	2300      	movs	r3, #0
    70e6:	6043      	str	r3, [r0, #4]
    70e8:	6083      	str	r3, [r0, #8]
    70ea:	e7f4      	b.n	70d6 <osMailGet+0x26>
    70ec:	0001      	movs	r1, r0
    70ee:	a801      	add	r0, sp, #4
    70f0:	f7ff fd9c 	bl	6c2c <isrMessageGet>
    70f4:	9801      	ldr	r0, [sp, #4]
    70f6:	9902      	ldr	r1, [sp, #8]
    70f8:	9a03      	ldr	r2, [sp, #12]
    70fa:	e7e7      	b.n	70cc <osMailGet+0x1c>
    70fc:	00006b69 	.word	0x00006b69

00007100 <os_suspend>:
    7100:	b580      	push	{r7, lr}
    7102:	4f02      	ldr	r7, [pc, #8]	; (710c <os_suspend+0xc>)
    7104:	46bc      	mov	ip, r7
    7106:	df00      	svc	0
    7108:	bd80      	pop	{r7, pc}
    710a:	0000      	.short	0x0000
    710c:	00007e49 	.word	0x00007e49

00007110 <os_resume>:
    7110:	b580      	push	{r7, lr}
    7112:	4f02      	ldr	r7, [pc, #8]	; (711c <os_resume+0xc>)
    7114:	46bc      	mov	ip, r7
    7116:	df00      	svc	0
    7118:	bd80      	pop	{r7, pc}
    711a:	0000      	.short	0x0000
    711c:	00007ed9 	.word	0x00007ed9

00007120 <rt_init_stack>:
    7120:	b5f0      	push	{r4, r5, r6, r7, lr}
    7122:	464e      	mov	r6, r9
    7124:	4645      	mov	r5, r8
    7126:	4657      	mov	r7, sl
    7128:	b4e0      	push	{r5, r6, r7}
    712a:	4b26      	ldr	r3, [pc, #152]	; (71c4 <rt_init_stack+0xa4>)
    712c:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    712e:	b082      	sub	sp, #8
    7130:	4680      	mov	r8, r0
    7132:	4689      	mov	r9, r1
    7134:	08a4      	lsrs	r4, r4, #2
    7136:	681b      	ldr	r3, [r3, #0]
    7138:	d104      	bne.n	7144 <rt_init_stack+0x24>
    713a:	9301      	str	r3, [sp, #4]
    713c:	466b      	mov	r3, sp
    713e:	889c      	ldrh	r4, [r3, #4]
    7140:	9b01      	ldr	r3, [sp, #4]
    7142:	08a4      	lsrs	r4, r4, #2
    7144:	469a      	mov	sl, r3
    7146:	4643      	mov	r3, r8
    7148:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    714a:	00a5      	lsls	r5, r4, #2
    714c:	197d      	adds	r5, r7, r5
    714e:	076b      	lsls	r3, r5, #29
    7150:	d500      	bpl.n	7154 <rt_init_stack+0x34>
    7152:	3d04      	subs	r5, #4
    7154:	2280      	movs	r2, #128	; 0x80
    7156:	1f2b      	subs	r3, r5, #4
    7158:	002e      	movs	r6, r5
    715a:	0452      	lsls	r2, r2, #17
    715c:	601a      	str	r2, [r3, #0]
    715e:	464a      	mov	r2, r9
    7160:	3b04      	subs	r3, #4
    7162:	3e40      	subs	r6, #64	; 0x40
    7164:	601a      	str	r2, [r3, #0]
    7166:	2100      	movs	r1, #0
    7168:	2238      	movs	r2, #56	; 0x38
    716a:	0030      	movs	r0, r6
    716c:	f7fd fe30 	bl	4dd0 <memset>
    7170:	4643      	mov	r3, r8
    7172:	69db      	ldr	r3, [r3, #28]
    7174:	3d20      	subs	r5, #32
    7176:	602b      	str	r3, [r5, #0]
    7178:	464a      	mov	r2, r9
    717a:	4643      	mov	r3, r8
    717c:	629e      	str	r6, [r3, #40]	; 0x28
    717e:	631a      	str	r2, [r3, #48]	; 0x30
    7180:	4653      	mov	r3, sl
    7182:	00db      	lsls	r3, r3, #3
    7184:	d516      	bpl.n	71b4 <rt_init_stack+0x94>
    7186:	2c11      	cmp	r4, #17
    7188:	d914      	bls.n	71b4 <rt_init_stack+0x94>
    718a:	3c10      	subs	r4, #16
    718c:	0864      	lsrs	r4, r4, #1
    718e:	1e62      	subs	r2, r4, #1
    7190:	2a00      	cmp	r2, #0
    7192:	d00a      	beq.n	71aa <rt_init_stack+0x8a>
    7194:	0033      	movs	r3, r6
    7196:	490c      	ldr	r1, [pc, #48]	; (71c8 <rt_init_stack+0xa8>)
    7198:	3b08      	subs	r3, #8
    719a:	3a01      	subs	r2, #1
    719c:	6059      	str	r1, [r3, #4]
    719e:	6019      	str	r1, [r3, #0]
    71a0:	2a00      	cmp	r2, #0
    71a2:	d1f9      	bne.n	7198 <rt_init_stack+0x78>
    71a4:	00e4      	lsls	r4, r4, #3
    71a6:	1b36      	subs	r6, r6, r4
    71a8:	3608      	adds	r6, #8
    71aa:	3e04      	subs	r6, #4
    71ac:	42b7      	cmp	r7, r6
    71ae:	d201      	bcs.n	71b4 <rt_init_stack+0x94>
    71b0:	4b05      	ldr	r3, [pc, #20]	; (71c8 <rt_init_stack+0xa8>)
    71b2:	6033      	str	r3, [r6, #0]
    71b4:	4b05      	ldr	r3, [pc, #20]	; (71cc <rt_init_stack+0xac>)
    71b6:	603b      	str	r3, [r7, #0]
    71b8:	b002      	add	sp, #8
    71ba:	bc1c      	pop	{r2, r3, r4}
    71bc:	4690      	mov	r8, r2
    71be:	4699      	mov	r9, r3
    71c0:	46a2      	mov	sl, r4
    71c2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    71c4:	000088e0 	.word	0x000088e0
    71c8:	cccccccc 	.word	0xcccccccc
    71cc:	e25a2ea5 	.word	0xe25a2ea5

000071d0 <rt_ret_val>:
    71d0:	6a83      	ldr	r3, [r0, #40]	; 0x28
    71d2:	6219      	str	r1, [r3, #32]
    71d4:	4770      	bx	lr
    71d6:	46c0      	nop			; (mov r8, r8)

000071d8 <rt_ret_val2>:
    71d8:	6a83      	ldr	r3, [r0, #40]	; 0x28
    71da:	6219      	str	r1, [r3, #32]
    71dc:	625a      	str	r2, [r3, #36]	; 0x24
    71de:	4770      	bx	lr

000071e0 <rt_init_mem>:
    71e0:	0003      	movs	r3, r0
    71e2:	2001      	movs	r0, #1
    71e4:	2b00      	cmp	r3, #0
    71e6:	d008      	beq.n	71fa <rt_init_mem+0x1a>
    71e8:	2907      	cmp	r1, #7
    71ea:	d906      	bls.n	71fa <rt_init_mem+0x1a>
    71ec:	2200      	movs	r2, #0
    71ee:	2000      	movs	r0, #0
    71f0:	3904      	subs	r1, #4
    71f2:	1859      	adds	r1, r3, r1
    71f4:	6019      	str	r1, [r3, #0]
    71f6:	600a      	str	r2, [r1, #0]
    71f8:	605a      	str	r2, [r3, #4]
    71fa:	4770      	bx	lr

000071fc <rt_alloc_mem>:
    71fc:	b510      	push	{r4, lr}
    71fe:	2800      	cmp	r0, #0
    7200:	d018      	beq.n	7234 <rt_alloc_mem+0x38>
    7202:	2900      	cmp	r1, #0
    7204:	d016      	beq.n	7234 <rt_alloc_mem+0x38>
    7206:	2303      	movs	r3, #3
    7208:	310b      	adds	r1, #11
    720a:	4399      	bics	r1, r3
    720c:	6802      	ldr	r2, [r0, #0]
    720e:	e003      	b.n	7218 <rt_alloc_mem+0x1c>
    7210:	0010      	movs	r0, r2
    7212:	6812      	ldr	r2, [r2, #0]
    7214:	2a00      	cmp	r2, #0
    7216:	d00d      	beq.n	7234 <rt_alloc_mem+0x38>
    7218:	6844      	ldr	r4, [r0, #4]
    721a:	1a13      	subs	r3, r2, r0
    721c:	1b1b      	subs	r3, r3, r4
    721e:	4299      	cmp	r1, r3
    7220:	d8f6      	bhi.n	7210 <rt_alloc_mem+0x14>
    7222:	2c00      	cmp	r4, #0
    7224:	d008      	beq.n	7238 <rt_alloc_mem+0x3c>
    7226:	1904      	adds	r4, r0, r4
    7228:	6022      	str	r2, [r4, #0]
    722a:	6061      	str	r1, [r4, #4]
    722c:	6004      	str	r4, [r0, #0]
    722e:	0020      	movs	r0, r4
    7230:	3008      	adds	r0, #8
    7232:	e000      	b.n	7236 <rt_alloc_mem+0x3a>
    7234:	2000      	movs	r0, #0
    7236:	bd10      	pop	{r4, pc}
    7238:	6041      	str	r1, [r0, #4]
    723a:	3008      	adds	r0, #8
    723c:	e7fb      	b.n	7236 <rt_alloc_mem+0x3a>
    723e:	46c0      	nop			; (mov r8, r8)

00007240 <rt_free_mem>:
    7240:	2800      	cmp	r0, #0
    7242:	d015      	beq.n	7270 <rt_free_mem+0x30>
    7244:	2900      	cmp	r1, #0
    7246:	d013      	beq.n	7270 <rt_free_mem+0x30>
    7248:	3908      	subs	r1, #8
    724a:	4288      	cmp	r0, r1
    724c:	d012      	beq.n	7274 <rt_free_mem+0x34>
    724e:	6803      	ldr	r3, [r0, #0]
    7250:	2b00      	cmp	r3, #0
    7252:	d105      	bne.n	7260 <rt_free_mem+0x20>
    7254:	e00c      	b.n	7270 <rt_free_mem+0x30>
    7256:	681a      	ldr	r2, [r3, #0]
    7258:	0018      	movs	r0, r3
    725a:	2a00      	cmp	r2, #0
    725c:	d008      	beq.n	7270 <rt_free_mem+0x30>
    725e:	0013      	movs	r3, r2
    7260:	4299      	cmp	r1, r3
    7262:	d1f8      	bne.n	7256 <rt_free_mem+0x16>
    7264:	2800      	cmp	r0, #0
    7266:	d005      	beq.n	7274 <rt_free_mem+0x34>
    7268:	680b      	ldr	r3, [r1, #0]
    726a:	6003      	str	r3, [r0, #0]
    726c:	2000      	movs	r0, #0
    726e:	e000      	b.n	7272 <rt_free_mem+0x32>
    7270:	2001      	movs	r0, #1
    7272:	4770      	bx	lr
    7274:	2300      	movs	r3, #0
    7276:	2000      	movs	r0, #0
    7278:	604b      	str	r3, [r1, #4]
    727a:	e7fa      	b.n	7272 <rt_free_mem+0x32>

0000727c <_init_box>:
    727c:	b530      	push	{r4, r5, lr}
    727e:	2a00      	cmp	r2, #0
    7280:	db1e      	blt.n	72c0 <_init_box+0x44>
    7282:	2303      	movs	r3, #3
    7284:	3203      	adds	r2, #3
    7286:	439a      	bics	r2, r3
    7288:	3309      	adds	r3, #9
    728a:	2401      	movs	r4, #1
    728c:	2a00      	cmp	r2, #0
    728e:	d015      	beq.n	72bc <_init_box+0x40>
    7290:	18d5      	adds	r5, r2, r3
    7292:	428d      	cmp	r5, r1
    7294:	d812      	bhi.n	72bc <_init_box+0x40>
    7296:	1841      	adds	r1, r0, r1
    7298:	18c3      	adds	r3, r0, r3
    729a:	6041      	str	r1, [r0, #4]
    729c:	6003      	str	r3, [r0, #0]
    729e:	6082      	str	r2, [r0, #8]
    72a0:	1898      	adds	r0, r3, r2
    72a2:	1a89      	subs	r1, r1, r2
    72a4:	4281      	cmp	r1, r0
    72a6:	d201      	bcs.n	72ac <_init_box+0x30>
    72a8:	e011      	b.n	72ce <_init_box+0x52>
    72aa:	0020      	movs	r0, r4
    72ac:	1884      	adds	r4, r0, r2
    72ae:	6018      	str	r0, [r3, #0]
    72b0:	189b      	adds	r3, r3, r2
    72b2:	42a1      	cmp	r1, r4
    72b4:	d2f9      	bcs.n	72aa <_init_box+0x2e>
    72b6:	2300      	movs	r3, #0
    72b8:	2400      	movs	r4, #0
    72ba:	6003      	str	r3, [r0, #0]
    72bc:	0020      	movs	r0, r4
    72be:	bd30      	pop	{r4, r5, pc}
    72c0:	2307      	movs	r3, #7
    72c2:	0052      	lsls	r2, r2, #1
    72c4:	0852      	lsrs	r2, r2, #1
    72c6:	3207      	adds	r2, #7
    72c8:	439a      	bics	r2, r3
    72ca:	3309      	adds	r3, #9
    72cc:	e7dd      	b.n	728a <_init_box+0xe>
    72ce:	0018      	movs	r0, r3
    72d0:	e7f1      	b.n	72b6 <_init_box+0x3a>
    72d2:	46c0      	nop			; (mov r8, r8)

000072d4 <rt_alloc_box>:
    72d4:	f3ef 8310 	mrs	r3, PRIMASK
    72d8:	b672      	cpsid	i
    72da:	2201      	movs	r2, #1
    72dc:	4013      	ands	r3, r2
    72de:	6802      	ldr	r2, [r0, #0]
    72e0:	2a00      	cmp	r2, #0
    72e2:	d001      	beq.n	72e8 <rt_alloc_box+0x14>
    72e4:	6811      	ldr	r1, [r2, #0]
    72e6:	6001      	str	r1, [r0, #0]
    72e8:	2b00      	cmp	r3, #0
    72ea:	d100      	bne.n	72ee <rt_alloc_box+0x1a>
    72ec:	b662      	cpsie	i
    72ee:	0010      	movs	r0, r2
    72f0:	4770      	bx	lr
    72f2:	46c0      	nop			; (mov r8, r8)

000072f4 <_calloc_box>:
    72f4:	b510      	push	{r4, lr}
    72f6:	0004      	movs	r4, r0
    72f8:	f7fd fb49 	bl	498e <_alloc_box>
    72fc:	2800      	cmp	r0, #0
    72fe:	d008      	beq.n	7312 <_calloc_box+0x1e>
    7300:	68a3      	ldr	r3, [r4, #8]
    7302:	2b00      	cmp	r3, #0
    7304:	d005      	beq.n	7312 <_calloc_box+0x1e>
    7306:	0002      	movs	r2, r0
    7308:	2100      	movs	r1, #0
    730a:	3b04      	subs	r3, #4
    730c:	c202      	stmia	r2!, {r1}
    730e:	2b00      	cmp	r3, #0
    7310:	d1fb      	bne.n	730a <_calloc_box+0x16>
    7312:	bd10      	pop	{r4, pc}

00007314 <rt_free_box>:
    7314:	0003      	movs	r3, r0
    7316:	2001      	movs	r0, #1
    7318:	4299      	cmp	r1, r3
    731a:	d30b      	bcc.n	7334 <rt_free_box+0x20>
    731c:	685a      	ldr	r2, [r3, #4]
    731e:	4291      	cmp	r1, r2
    7320:	d208      	bcs.n	7334 <rt_free_box+0x20>
    7322:	f3ef 8210 	mrs	r2, PRIMASK
    7326:	b672      	cpsid	i
    7328:	4010      	ands	r0, r2
    732a:	681a      	ldr	r2, [r3, #0]
    732c:	600a      	str	r2, [r1, #0]
    732e:	6019      	str	r1, [r3, #0]
    7330:	d101      	bne.n	7336 <rt_free_box+0x22>
    7332:	b662      	cpsie	i
    7334:	4770      	bx	lr
    7336:	2000      	movs	r0, #0
    7338:	e7fc      	b.n	7334 <rt_free_box+0x20>
    733a:	46c0      	nop			; (mov r8, r8)

0000733c <rt_mut_init>:
    733c:	2303      	movs	r3, #3
    733e:	7003      	strb	r3, [r0, #0]
    7340:	2300      	movs	r3, #0
    7342:	8043      	strh	r3, [r0, #2]
    7344:	6043      	str	r3, [r0, #4]
    7346:	6083      	str	r3, [r0, #8]
    7348:	60c3      	str	r3, [r0, #12]
    734a:	4770      	bx	lr

0000734c <rt_mut_delete>:
    734c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    734e:	8843      	ldrh	r3, [r0, #2]
    7350:	0005      	movs	r5, r0
    7352:	2b00      	cmp	r3, #0
    7354:	d02c      	beq.n	73b0 <rt_mut_delete+0x64>
    7356:	6880      	ldr	r0, [r0, #8]
    7358:	6a04      	ldr	r4, [r0, #32]
    735a:	42a5      	cmp	r5, r4
    735c:	d05a      	beq.n	7414 <rt_mut_delete+0xc8>
    735e:	2c00      	cmp	r4, #0
    7360:	d01a      	beq.n	7398 <rt_mut_delete+0x4c>
    7362:	68e3      	ldr	r3, [r4, #12]
    7364:	429d      	cmp	r5, r3
    7366:	d050      	beq.n	740a <rt_mut_delete+0xbe>
    7368:	001a      	movs	r2, r3
    736a:	e003      	b.n	7374 <rt_mut_delete+0x28>
    736c:	68d1      	ldr	r1, [r2, #12]
    736e:	428d      	cmp	r5, r1
    7370:	d04c      	beq.n	740c <rt_mut_delete+0xc0>
    7372:	000a      	movs	r2, r1
    7374:	2a00      	cmp	r2, #0
    7376:	d1f9      	bne.n	736c <rt_mut_delete+0x20>
    7378:	2224      	movs	r2, #36	; 0x24
    737a:	5c81      	ldrb	r1, [r0, r2]
    737c:	6862      	ldr	r2, [r4, #4]
    737e:	2a00      	cmp	r2, #0
    7380:	d005      	beq.n	738e <rt_mut_delete+0x42>
    7382:	7892      	ldrb	r2, [r2, #2]
    7384:	1c14      	adds	r4, r2, #0
    7386:	428a      	cmp	r2, r1
    7388:	d200      	bcs.n	738c <rt_mut_delete+0x40>
    738a:	1c0c      	adds	r4, r1, #0
    738c:	b2e1      	uxtb	r1, r4
    738e:	2b00      	cmp	r3, #0
    7390:	d004      	beq.n	739c <rt_mut_delete+0x50>
    7392:	001c      	movs	r4, r3
    7394:	68db      	ldr	r3, [r3, #12]
    7396:	e7f1      	b.n	737c <rt_mut_delete+0x30>
    7398:	2324      	movs	r3, #36	; 0x24
    739a:	5cc1      	ldrb	r1, [r0, r3]
    739c:	7883      	ldrb	r3, [r0, #2]
    739e:	428b      	cmp	r3, r1
    73a0:	d006      	beq.n	73b0 <rt_mut_delete+0x64>
    73a2:	4b20      	ldr	r3, [pc, #128]	; (7424 <rt_mut_delete+0xd8>)
    73a4:	7081      	strb	r1, [r0, #2]
    73a6:	681b      	ldr	r3, [r3, #0]
    73a8:	4298      	cmp	r0, r3
    73aa:	d001      	beq.n	73b0 <rt_mut_delete+0x64>
    73ac:	f000 fb72 	bl	7a94 <rt_resort_prio>
    73b0:	686b      	ldr	r3, [r5, #4]
    73b2:	4e1d      	ldr	r6, [pc, #116]	; (7428 <rt_mut_delete+0xdc>)
    73b4:	2b00      	cmp	r3, #0
    73b6:	d012      	beq.n	73de <rt_mut_delete+0x92>
    73b8:	2701      	movs	r7, #1
    73ba:	0028      	movs	r0, r5
    73bc:	f000 fb3a 	bl	7a34 <rt_get_first>
    73c0:	0004      	movs	r4, r0
    73c2:	2100      	movs	r1, #0
    73c4:	f7ff ff04 	bl	71d0 <rt_ret_val>
    73c8:	0020      	movs	r0, r4
    73ca:	f000 fc6b 	bl	7ca4 <rt_rmv_dly>
    73ce:	7067      	strb	r7, [r4, #1]
    73d0:	0021      	movs	r1, r4
    73d2:	0030      	movs	r0, r6
    73d4:	f000 fb08 	bl	79e8 <rt_put_prio>
    73d8:	686b      	ldr	r3, [r5, #4]
    73da:	2b00      	cmp	r3, #0
    73dc:	d1ed      	bne.n	73ba <rt_mut_delete+0x6e>
    73de:	6873      	ldr	r3, [r6, #4]
    73e0:	2b00      	cmp	r3, #0
    73e2:	d00e      	beq.n	7402 <rt_mut_delete+0xb6>
    73e4:	4c0f      	ldr	r4, [pc, #60]	; (7424 <rt_mut_delete+0xd8>)
    73e6:	789a      	ldrb	r2, [r3, #2]
    73e8:	6821      	ldr	r1, [r4, #0]
    73ea:	788b      	ldrb	r3, [r1, #2]
    73ec:	429a      	cmp	r2, r3
    73ee:	d908      	bls.n	7402 <rt_mut_delete+0xb6>
    73f0:	0030      	movs	r0, r6
    73f2:	f000 faf9 	bl	79e8 <rt_put_prio>
    73f6:	2201      	movs	r2, #1
    73f8:	6823      	ldr	r3, [r4, #0]
    73fa:	2000      	movs	r0, #0
    73fc:	705a      	strb	r2, [r3, #1]
    73fe:	f000 ff07 	bl	8210 <rt_dispatch>
    7402:	2300      	movs	r3, #0
    7404:	2000      	movs	r0, #0
    7406:	702b      	strb	r3, [r5, #0]
    7408:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    740a:	0022      	movs	r2, r4
    740c:	68eb      	ldr	r3, [r5, #12]
    740e:	60d3      	str	r3, [r2, #12]
    7410:	68e3      	ldr	r3, [r4, #12]
    7412:	e7b1      	b.n	7378 <rt_mut_delete+0x2c>
    7414:	2324      	movs	r3, #36	; 0x24
    7416:	68ec      	ldr	r4, [r5, #12]
    7418:	6204      	str	r4, [r0, #32]
    741a:	5cc1      	ldrb	r1, [r0, r3]
    741c:	2c00      	cmp	r4, #0
    741e:	d0bd      	beq.n	739c <rt_mut_delete+0x50>
    7420:	68e3      	ldr	r3, [r4, #12]
    7422:	e7ab      	b.n	737c <rt_mut_delete+0x30>
    7424:	200060b8 	.word	0x200060b8
    7428:	20006084 	.word	0x20006084

0000742c <rt_mut_release>:
    742c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    742e:	8843      	ldrh	r3, [r0, #2]
    7430:	0004      	movs	r4, r0
    7432:	20ff      	movs	r0, #255	; 0xff
    7434:	2b00      	cmp	r3, #0
    7436:	d100      	bne.n	743a <rt_mut_release+0xe>
    7438:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    743a:	4d3c      	ldr	r5, [pc, #240]	; (752c <rt_mut_release+0x100>)
    743c:	68a1      	ldr	r1, [r4, #8]
    743e:	682a      	ldr	r2, [r5, #0]
    7440:	4291      	cmp	r1, r2
    7442:	d1f9      	bne.n	7438 <rt_mut_release+0xc>
    7444:	3b01      	subs	r3, #1
    7446:	b29b      	uxth	r3, r3
    7448:	8063      	strh	r3, [r4, #2]
    744a:	2b00      	cmp	r3, #0
    744c:	d140      	bne.n	74d0 <rt_mut_release+0xa4>
    744e:	6a0e      	ldr	r6, [r1, #32]
    7450:	42b4      	cmp	r4, r6
    7452:	d062      	beq.n	751a <rt_mut_release+0xee>
    7454:	2e00      	cmp	r6, #0
    7456:	d01a      	beq.n	748e <rt_mut_release+0x62>
    7458:	68f3      	ldr	r3, [r6, #12]
    745a:	429c      	cmp	r4, r3
    745c:	d03a      	beq.n	74d4 <rt_mut_release+0xa8>
    745e:	001a      	movs	r2, r3
    7460:	e003      	b.n	746a <rt_mut_release+0x3e>
    7462:	68d0      	ldr	r0, [r2, #12]
    7464:	4284      	cmp	r4, r0
    7466:	d036      	beq.n	74d6 <rt_mut_release+0xaa>
    7468:	0002      	movs	r2, r0
    746a:	2a00      	cmp	r2, #0
    746c:	d1f9      	bne.n	7462 <rt_mut_release+0x36>
    746e:	2224      	movs	r2, #36	; 0x24
    7470:	5c8f      	ldrb	r7, [r1, r2]
    7472:	6872      	ldr	r2, [r6, #4]
    7474:	2a00      	cmp	r2, #0
    7476:	d005      	beq.n	7484 <rt_mut_release+0x58>
    7478:	7892      	ldrb	r2, [r2, #2]
    747a:	1c10      	adds	r0, r2, #0
    747c:	42ba      	cmp	r2, r7
    747e:	d200      	bcs.n	7482 <rt_mut_release+0x56>
    7480:	1c38      	adds	r0, r7, #0
    7482:	b2c7      	uxtb	r7, r0
    7484:	2b00      	cmp	r3, #0
    7486:	d004      	beq.n	7492 <rt_mut_release+0x66>
    7488:	001e      	movs	r6, r3
    748a:	68db      	ldr	r3, [r3, #12]
    748c:	e7f1      	b.n	7472 <rt_mut_release+0x46>
    748e:	2324      	movs	r3, #36	; 0x24
    7490:	5ccf      	ldrb	r7, [r1, r3]
    7492:	708f      	strb	r7, [r1, #2]
    7494:	6863      	ldr	r3, [r4, #4]
    7496:	2b00      	cmp	r3, #0
    7498:	d030      	beq.n	74fc <rt_mut_release+0xd0>
    749a:	0020      	movs	r0, r4
    749c:	f000 faca 	bl	7a34 <rt_get_first>
    74a0:	0006      	movs	r6, r0
    74a2:	2100      	movs	r1, #0
    74a4:	f7ff fe94 	bl	71d0 <rt_ret_val>
    74a8:	0030      	movs	r0, r6
    74aa:	f000 fbfb 	bl	7ca4 <rt_rmv_dly>
    74ae:	2301      	movs	r3, #1
    74b0:	8063      	strh	r3, [r4, #2]
    74b2:	6a33      	ldr	r3, [r6, #32]
    74b4:	60a6      	str	r6, [r4, #8]
    74b6:	60e3      	str	r3, [r4, #12]
    74b8:	6234      	str	r4, [r6, #32]
    74ba:	4c1d      	ldr	r4, [pc, #116]	; (7530 <rt_mut_release+0x104>)
    74bc:	6829      	ldr	r1, [r5, #0]
    74be:	6863      	ldr	r3, [r4, #4]
    74c0:	788a      	ldrb	r2, [r1, #2]
    74c2:	789b      	ldrb	r3, [r3, #2]
    74c4:	2701      	movs	r7, #1
    74c6:	429a      	cmp	r2, r3
    74c8:	d309      	bcc.n	74de <rt_mut_release+0xb2>
    74ca:	0030      	movs	r0, r6
    74cc:	f000 fea0 	bl	8210 <rt_dispatch>
    74d0:	2000      	movs	r0, #0
    74d2:	e7b1      	b.n	7438 <rt_mut_release+0xc>
    74d4:	0032      	movs	r2, r6
    74d6:	68e3      	ldr	r3, [r4, #12]
    74d8:	60d3      	str	r3, [r2, #12]
    74da:	68f3      	ldr	r3, [r6, #12]
    74dc:	e7c7      	b.n	746e <rt_mut_release+0x42>
    74de:	0020      	movs	r0, r4
    74e0:	f000 fa82 	bl	79e8 <rt_put_prio>
    74e4:	0031      	movs	r1, r6
    74e6:	0020      	movs	r0, r4
    74e8:	f000 fa7e 	bl	79e8 <rt_put_prio>
    74ec:	682b      	ldr	r3, [r5, #0]
    74ee:	2000      	movs	r0, #0
    74f0:	705f      	strb	r7, [r3, #1]
    74f2:	7077      	strb	r7, [r6, #1]
    74f4:	f000 fe8c 	bl	8210 <rt_dispatch>
    74f8:	2000      	movs	r0, #0
    74fa:	e79d      	b.n	7438 <rt_mut_release+0xc>
    74fc:	480c      	ldr	r0, [pc, #48]	; (7530 <rt_mut_release+0x104>)
    74fe:	6843      	ldr	r3, [r0, #4]
    7500:	789b      	ldrb	r3, [r3, #2]
    7502:	42bb      	cmp	r3, r7
    7504:	d9e4      	bls.n	74d0 <rt_mut_release+0xa4>
    7506:	f000 fa6f 	bl	79e8 <rt_put_prio>
    750a:	2201      	movs	r2, #1
    750c:	682b      	ldr	r3, [r5, #0]
    750e:	2000      	movs	r0, #0
    7510:	705a      	strb	r2, [r3, #1]
    7512:	f000 fe7d 	bl	8210 <rt_dispatch>
    7516:	2000      	movs	r0, #0
    7518:	e78e      	b.n	7438 <rt_mut_release+0xc>
    751a:	2324      	movs	r3, #36	; 0x24
    751c:	68e6      	ldr	r6, [r4, #12]
    751e:	620e      	str	r6, [r1, #32]
    7520:	5ccf      	ldrb	r7, [r1, r3]
    7522:	2e00      	cmp	r6, #0
    7524:	d0b5      	beq.n	7492 <rt_mut_release+0x66>
    7526:	68f3      	ldr	r3, [r6, #12]
    7528:	e7a3      	b.n	7472 <rt_mut_release+0x46>
    752a:	46c0      	nop			; (mov r8, r8)
    752c:	200060b8 	.word	0x200060b8
    7530:	20006084 	.word	0x20006084

00007534 <rt_mut_wait>:
    7534:	b570      	push	{r4, r5, r6, lr}
    7536:	8843      	ldrh	r3, [r0, #2]
    7538:	0004      	movs	r4, r0
    753a:	000d      	movs	r5, r1
    753c:	2b00      	cmp	r3, #0
    753e:	d017      	beq.n	7570 <rt_mut_wait+0x3c>
    7540:	4e19      	ldr	r6, [pc, #100]	; (75a8 <rt_mut_wait+0x74>)
    7542:	6882      	ldr	r2, [r0, #8]
    7544:	6831      	ldr	r1, [r6, #0]
    7546:	428a      	cmp	r2, r1
    7548:	d026      	beq.n	7598 <rt_mut_wait+0x64>
    754a:	2001      	movs	r0, #1
    754c:	2d00      	cmp	r5, #0
    754e:	d00e      	beq.n	756e <rt_mut_wait+0x3a>
    7550:	788b      	ldrb	r3, [r1, #2]
    7552:	7890      	ldrb	r0, [r2, #2]
    7554:	4298      	cmp	r0, r3
    7556:	d319      	bcc.n	758c <rt_mut_wait+0x58>
    7558:	6863      	ldr	r3, [r4, #4]
    755a:	2b00      	cmp	r3, #0
    755c:	d012      	beq.n	7584 <rt_mut_wait+0x50>
    755e:	0020      	movs	r0, r4
    7560:	f000 fa42 	bl	79e8 <rt_put_prio>
    7564:	0028      	movs	r0, r5
    7566:	2109      	movs	r1, #9
    7568:	f000 fe78 	bl	825c <rt_block>
    756c:	2001      	movs	r0, #1
    756e:	bd70      	pop	{r4, r5, r6, pc}
    7570:	4b0d      	ldr	r3, [pc, #52]	; (75a8 <rt_mut_wait+0x74>)
    7572:	681b      	ldr	r3, [r3, #0]
    7574:	6a1a      	ldr	r2, [r3, #32]
    7576:	6083      	str	r3, [r0, #8]
    7578:	60c2      	str	r2, [r0, #12]
    757a:	6218      	str	r0, [r3, #32]
    757c:	2301      	movs	r3, #1
    757e:	8043      	strh	r3, [r0, #2]
    7580:	2000      	movs	r0, #0
    7582:	e7f4      	b.n	756e <rt_mut_wait+0x3a>
    7584:	6061      	str	r1, [r4, #4]
    7586:	604b      	str	r3, [r1, #4]
    7588:	608c      	str	r4, [r1, #8]
    758a:	e7eb      	b.n	7564 <rt_mut_wait+0x30>
    758c:	7093      	strb	r3, [r2, #2]
    758e:	68a0      	ldr	r0, [r4, #8]
    7590:	f000 fa80 	bl	7a94 <rt_resort_prio>
    7594:	6831      	ldr	r1, [r6, #0]
    7596:	e7df      	b.n	7558 <rt_mut_wait+0x24>
    7598:	4a04      	ldr	r2, [pc, #16]	; (75ac <rt_mut_wait+0x78>)
    759a:	20ff      	movs	r0, #255	; 0xff
    759c:	4293      	cmp	r3, r2
    759e:	d0e6      	beq.n	756e <rt_mut_wait+0x3a>
    75a0:	3301      	adds	r3, #1
    75a2:	8063      	strh	r3, [r4, #2]
    75a4:	2000      	movs	r0, #0
    75a6:	e7e2      	b.n	756e <rt_mut_wait+0x3a>
    75a8:	200060b8 	.word	0x200060b8
    75ac:	0000ffff 	.word	0x0000ffff

000075b0 <rt_time_get>:
    75b0:	4b01      	ldr	r3, [pc, #4]	; (75b8 <rt_time_get+0x8>)
    75b2:	6818      	ldr	r0, [r3, #0]
    75b4:	4770      	bx	lr
    75b6:	46c0      	nop			; (mov r8, r8)
    75b8:	20006080 	.word	0x20006080

000075bc <rt_dly_wait>:
    75bc:	b510      	push	{r4, lr}
    75be:	2103      	movs	r1, #3
    75c0:	f000 fe4c 	bl	825c <rt_block>
    75c4:	bd10      	pop	{r4, pc}
    75c6:	46c0      	nop			; (mov r8, r8)

000075c8 <rt_itv_set>:
    75c8:	4b03      	ldr	r3, [pc, #12]	; (75d8 <rt_itv_set+0x10>)
    75ca:	681a      	ldr	r2, [r3, #0]
    75cc:	4b03      	ldr	r3, [pc, #12]	; (75dc <rt_itv_set+0x14>)
    75ce:	82d0      	strh	r0, [r2, #22]
    75d0:	681b      	ldr	r3, [r3, #0]
    75d2:	18c0      	adds	r0, r0, r3
    75d4:	8290      	strh	r0, [r2, #20]
    75d6:	4770      	bx	lr
    75d8:	200060b8 	.word	0x200060b8
    75dc:	20006080 	.word	0x20006080

000075e0 <rt_itv_wait>:
    75e0:	b510      	push	{r4, lr}
    75e2:	4b08      	ldr	r3, [pc, #32]	; (7604 <rt_itv_wait+0x24>)
    75e4:	681a      	ldr	r2, [r3, #0]
    75e6:	4b08      	ldr	r3, [pc, #32]	; (7608 <rt_itv_wait+0x28>)
    75e8:	8a90      	ldrh	r0, [r2, #20]
    75ea:	681b      	ldr	r3, [r3, #0]
    75ec:	8ad1      	ldrh	r1, [r2, #22]
    75ee:	1ac3      	subs	r3, r0, r3
    75f0:	1841      	adds	r1, r0, r1
    75f2:	8291      	strh	r1, [r2, #20]
    75f4:	b298      	uxth	r0, r3
    75f6:	041b      	lsls	r3, r3, #16
    75f8:	d402      	bmi.n	7600 <rt_itv_wait+0x20>
    75fa:	2104      	movs	r1, #4
    75fc:	f000 fe2e 	bl	825c <rt_block>
    7600:	bd10      	pop	{r4, pc}
    7602:	46c0      	nop			; (mov r8, r8)
    7604:	200060b8 	.word	0x200060b8
    7608:	20006080 	.word	0x20006080

0000760c <rt_sem_init>:
    760c:	2302      	movs	r3, #2
    760e:	7003      	strb	r3, [r0, #0]
    7610:	2300      	movs	r3, #0
    7612:	8041      	strh	r1, [r0, #2]
    7614:	6043      	str	r3, [r0, #4]
    7616:	4770      	bx	lr

00007618 <rt_sem_delete>:
    7618:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    761a:	6843      	ldr	r3, [r0, #4]
    761c:	0005      	movs	r5, r0
    761e:	4e16      	ldr	r6, [pc, #88]	; (7678 <rt_sem_delete+0x60>)
    7620:	2b00      	cmp	r3, #0
    7622:	d012      	beq.n	764a <rt_sem_delete+0x32>
    7624:	2701      	movs	r7, #1
    7626:	0028      	movs	r0, r5
    7628:	f000 fa04 	bl	7a34 <rt_get_first>
    762c:	0004      	movs	r4, r0
    762e:	2100      	movs	r1, #0
    7630:	f7ff fdce 	bl	71d0 <rt_ret_val>
    7634:	0020      	movs	r0, r4
    7636:	f000 fb35 	bl	7ca4 <rt_rmv_dly>
    763a:	7067      	strb	r7, [r4, #1]
    763c:	0021      	movs	r1, r4
    763e:	0030      	movs	r0, r6
    7640:	f000 f9d2 	bl	79e8 <rt_put_prio>
    7644:	686b      	ldr	r3, [r5, #4]
    7646:	2b00      	cmp	r3, #0
    7648:	d1ed      	bne.n	7626 <rt_sem_delete+0xe>
    764a:	6873      	ldr	r3, [r6, #4]
    764c:	2b00      	cmp	r3, #0
    764e:	d00e      	beq.n	766e <rt_sem_delete+0x56>
    7650:	4c0a      	ldr	r4, [pc, #40]	; (767c <rt_sem_delete+0x64>)
    7652:	789a      	ldrb	r2, [r3, #2]
    7654:	6821      	ldr	r1, [r4, #0]
    7656:	788b      	ldrb	r3, [r1, #2]
    7658:	429a      	cmp	r2, r3
    765a:	d908      	bls.n	766e <rt_sem_delete+0x56>
    765c:	0030      	movs	r0, r6
    765e:	f000 f9c3 	bl	79e8 <rt_put_prio>
    7662:	2201      	movs	r2, #1
    7664:	6823      	ldr	r3, [r4, #0]
    7666:	2000      	movs	r0, #0
    7668:	705a      	strb	r2, [r3, #1]
    766a:	f000 fdd1 	bl	8210 <rt_dispatch>
    766e:	2300      	movs	r3, #0
    7670:	2000      	movs	r0, #0
    7672:	702b      	strb	r3, [r5, #0]
    7674:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7676:	46c0      	nop			; (mov r8, r8)
    7678:	20006084 	.word	0x20006084
    767c:	200060b8 	.word	0x200060b8

00007680 <rt_sem_send>:
    7680:	6843      	ldr	r3, [r0, #4]
    7682:	b510      	push	{r4, lr}
    7684:	2b00      	cmp	r3, #0
    7686:	d00d      	beq.n	76a4 <rt_sem_send+0x24>
    7688:	f000 f9d4 	bl	7a34 <rt_get_first>
    768c:	0004      	movs	r4, r0
    768e:	2101      	movs	r1, #1
    7690:	f7ff fd9e 	bl	71d0 <rt_ret_val>
    7694:	0020      	movs	r0, r4
    7696:	f000 fb05 	bl	7ca4 <rt_rmv_dly>
    769a:	0020      	movs	r0, r4
    769c:	f000 fdb8 	bl	8210 <rt_dispatch>
    76a0:	2000      	movs	r0, #0
    76a2:	bd10      	pop	{r4, pc}
    76a4:	8843      	ldrh	r3, [r0, #2]
    76a6:	3301      	adds	r3, #1
    76a8:	8043      	strh	r3, [r0, #2]
    76aa:	e7f9      	b.n	76a0 <rt_sem_send+0x20>

000076ac <rt_sem_wait>:
    76ac:	b510      	push	{r4, lr}
    76ae:	8843      	ldrh	r3, [r0, #2]
    76b0:	000c      	movs	r4, r1
    76b2:	2b00      	cmp	r3, #0
    76b4:	d110      	bne.n	76d8 <rt_sem_wait+0x2c>
    76b6:	2301      	movs	r3, #1
    76b8:	2900      	cmp	r1, #0
    76ba:	d00b      	beq.n	76d4 <rt_sem_wait+0x28>
    76bc:	6843      	ldr	r3, [r0, #4]
    76be:	2b00      	cmp	r3, #0
    76c0:	d00e      	beq.n	76e0 <rt_sem_wait+0x34>
    76c2:	4b0a      	ldr	r3, [pc, #40]	; (76ec <rt_sem_wait+0x40>)
    76c4:	6819      	ldr	r1, [r3, #0]
    76c6:	f000 f98f 	bl	79e8 <rt_put_prio>
    76ca:	2107      	movs	r1, #7
    76cc:	0020      	movs	r0, r4
    76ce:	f000 fdc5 	bl	825c <rt_block>
    76d2:	2301      	movs	r3, #1
    76d4:	0018      	movs	r0, r3
    76d6:	bd10      	pop	{r4, pc}
    76d8:	3b01      	subs	r3, #1
    76da:	8043      	strh	r3, [r0, #2]
    76dc:	2300      	movs	r3, #0
    76de:	e7f9      	b.n	76d4 <rt_sem_wait+0x28>
    76e0:	4a02      	ldr	r2, [pc, #8]	; (76ec <rt_sem_wait+0x40>)
    76e2:	6812      	ldr	r2, [r2, #0]
    76e4:	6042      	str	r2, [r0, #4]
    76e6:	6053      	str	r3, [r2, #4]
    76e8:	6090      	str	r0, [r2, #8]
    76ea:	e7ee      	b.n	76ca <rt_sem_wait+0x1e>
    76ec:	200060b8 	.word	0x200060b8

000076f0 <isr_sem_send>:
    76f0:	b510      	push	{r4, lr}
    76f2:	2100      	movs	r1, #0
    76f4:	f000 faec 	bl	7cd0 <rt_psq_enq>
    76f8:	f000 fcce 	bl	8098 <rt_psh_req>
    76fc:	bd10      	pop	{r4, pc}
    76fe:	46c0      	nop			; (mov r8, r8)

00007700 <rt_sem_psh>:
    7700:	6843      	ldr	r3, [r0, #4]
    7702:	b510      	push	{r4, lr}
    7704:	2b00      	cmp	r3, #0
    7706:	d00f      	beq.n	7728 <rt_sem_psh+0x28>
    7708:	f000 f994 	bl	7a34 <rt_get_first>
    770c:	0004      	movs	r4, r0
    770e:	f000 fac9 	bl	7ca4 <rt_rmv_dly>
    7712:	2301      	movs	r3, #1
    7714:	2101      	movs	r1, #1
    7716:	0020      	movs	r0, r4
    7718:	7063      	strb	r3, [r4, #1]
    771a:	f7ff fd59 	bl	71d0 <rt_ret_val>
    771e:	0021      	movs	r1, r4
    7720:	4803      	ldr	r0, [pc, #12]	; (7730 <rt_sem_psh+0x30>)
    7722:	f000 f961 	bl	79e8 <rt_put_prio>
    7726:	bd10      	pop	{r4, pc}
    7728:	8843      	ldrh	r3, [r0, #2]
    772a:	3301      	adds	r3, #1
    772c:	8043      	strh	r3, [r0, #2]
    772e:	e7fa      	b.n	7726 <rt_sem_psh+0x26>
    7730:	20006084 	.word	0x20006084

00007734 <rt_mbx_init>:
    7734:	2301      	movs	r3, #1
    7736:	7003      	strb	r3, [r0, #0]
    7738:	2300      	movs	r3, #0
    773a:	3910      	subs	r1, #16
    773c:	0889      	lsrs	r1, r1, #2
    773e:	7043      	strb	r3, [r0, #1]
    7740:	7083      	strb	r3, [r0, #2]
    7742:	6043      	str	r3, [r0, #4]
    7744:	8103      	strh	r3, [r0, #8]
    7746:	8143      	strh	r3, [r0, #10]
    7748:	8183      	strh	r3, [r0, #12]
    774a:	81c1      	strh	r1, [r0, #14]
    774c:	4770      	bx	lr
    774e:	46c0      	nop			; (mov r8, r8)

00007750 <rt_mbx_send>:
    7750:	6843      	ldr	r3, [r0, #4]
    7752:	b570      	push	{r4, r5, r6, lr}
    7754:	000d      	movs	r5, r1
    7756:	0016      	movs	r6, r2
    7758:	2b00      	cmp	r3, #0
    775a:	d002      	beq.n	7762 <rt_mbx_send+0x12>
    775c:	7842      	ldrb	r2, [r0, #1]
    775e:	2a01      	cmp	r2, #1
    7760:	d028      	beq.n	77b4 <rt_mbx_send+0x64>
    7762:	8982      	ldrh	r2, [r0, #12]
    7764:	89c4      	ldrh	r4, [r0, #14]
    7766:	42a2      	cmp	r2, r4
    7768:	d013      	beq.n	7792 <rt_mbx_send+0x42>
    776a:	8903      	ldrh	r3, [r0, #8]
    776c:	1d19      	adds	r1, r3, #4
    776e:	0089      	lsls	r1, r1, #2
    7770:	500d      	str	r5, [r1, r0]
    7772:	f3ef 8110 	mrs	r1, PRIMASK
    7776:	b672      	cpsid	i
    7778:	3201      	adds	r2, #1
    777a:	8182      	strh	r2, [r0, #12]
    777c:	b662      	cpsie	i
    777e:	3301      	adds	r3, #1
    7780:	b29b      	uxth	r3, r3
    7782:	429c      	cmp	r4, r3
    7784:	d003      	beq.n	778e <rt_mbx_send+0x3e>
    7786:	2200      	movs	r2, #0
    7788:	8103      	strh	r3, [r0, #8]
    778a:	0010      	movs	r0, r2
    778c:	bd70      	pop	{r4, r5, r6, pc}
    778e:	2300      	movs	r3, #0
    7790:	e7f9      	b.n	7786 <rt_mbx_send+0x36>
    7792:	2201      	movs	r2, #1
    7794:	2e00      	cmp	r6, #0
    7796:	d0f8      	beq.n	778a <rt_mbx_send+0x3a>
    7798:	2b00      	cmp	r3, #0
    779a:	d01a      	beq.n	77d2 <rt_mbx_send+0x82>
    779c:	4c11      	ldr	r4, [pc, #68]	; (77e4 <rt_mbx_send+0x94>)
    779e:	6821      	ldr	r1, [r4, #0]
    77a0:	f000 f922 	bl	79e8 <rt_put_prio>
    77a4:	6822      	ldr	r2, [r4, #0]
    77a6:	61d5      	str	r5, [r2, #28]
    77a8:	2108      	movs	r1, #8
    77aa:	0030      	movs	r0, r6
    77ac:	f000 fd56 	bl	825c <rt_block>
    77b0:	2201      	movs	r2, #1
    77b2:	e7ea      	b.n	778a <rt_mbx_send+0x3a>
    77b4:	f000 f93e 	bl	7a34 <rt_get_first>
    77b8:	0004      	movs	r4, r0
    77ba:	002a      	movs	r2, r5
    77bc:	2110      	movs	r1, #16
    77be:	f7ff fd0b 	bl	71d8 <rt_ret_val2>
    77c2:	0020      	movs	r0, r4
    77c4:	f000 fa6e 	bl	7ca4 <rt_rmv_dly>
    77c8:	0020      	movs	r0, r4
    77ca:	f000 fd21 	bl	8210 <rt_dispatch>
    77ce:	2200      	movs	r2, #0
    77d0:	e7db      	b.n	778a <rt_mbx_send+0x3a>
    77d2:	4a04      	ldr	r2, [pc, #16]	; (77e4 <rt_mbx_send+0x94>)
    77d4:	6812      	ldr	r2, [r2, #0]
    77d6:	6042      	str	r2, [r0, #4]
    77d8:	6053      	str	r3, [r2, #4]
    77da:	2302      	movs	r3, #2
    77dc:	6090      	str	r0, [r2, #8]
    77de:	7043      	strb	r3, [r0, #1]
    77e0:	e7e1      	b.n	77a6 <rt_mbx_send+0x56>
    77e2:	46c0      	nop			; (mov r8, r8)
    77e4:	200060b8 	.word	0x200060b8

000077e8 <rt_mbx_wait>:
    77e8:	b570      	push	{r4, r5, r6, lr}
    77ea:	0015      	movs	r5, r2
    77ec:	8982      	ldrh	r2, [r0, #12]
    77ee:	0004      	movs	r4, r0
    77f0:	2a00      	cmp	r2, #0
    77f2:	d018      	beq.n	7826 <rt_mbx_wait+0x3e>
    77f4:	8943      	ldrh	r3, [r0, #10]
    77f6:	1d18      	adds	r0, r3, #4
    77f8:	0080      	lsls	r0, r0, #2
    77fa:	5900      	ldr	r0, [r0, r4]
    77fc:	3301      	adds	r3, #1
    77fe:	6008      	str	r0, [r1, #0]
    7800:	89e1      	ldrh	r1, [r4, #14]
    7802:	b29b      	uxth	r3, r3
    7804:	8163      	strh	r3, [r4, #10]
    7806:	4299      	cmp	r1, r3
    7808:	d01e      	beq.n	7848 <rt_mbx_wait+0x60>
    780a:	6863      	ldr	r3, [r4, #4]
    780c:	2b00      	cmp	r3, #0
    780e:	d002      	beq.n	7816 <rt_mbx_wait+0x2e>
    7810:	7863      	ldrb	r3, [r4, #1]
    7812:	2b02      	cmp	r3, #2
    7814:	d025      	beq.n	7862 <rt_mbx_wait+0x7a>
    7816:	f3ef 8310 	mrs	r3, PRIMASK
    781a:	b672      	cpsid	i
    781c:	3a01      	subs	r2, #1
    781e:	81a2      	strh	r2, [r4, #12]
    7820:	b662      	cpsie	i
    7822:	2000      	movs	r0, #0
    7824:	bd70      	pop	{r4, r5, r6, pc}
    7826:	2001      	movs	r0, #1
    7828:	2d00      	cmp	r5, #0
    782a:	d0fb      	beq.n	7824 <rt_mbx_wait+0x3c>
    782c:	6863      	ldr	r3, [r4, #4]
    782e:	2b00      	cmp	r3, #0
    7830:	d010      	beq.n	7854 <rt_mbx_wait+0x6c>
    7832:	4b1a      	ldr	r3, [pc, #104]	; (789c <rt_mbx_wait+0xb4>)
    7834:	0020      	movs	r0, r4
    7836:	6819      	ldr	r1, [r3, #0]
    7838:	f000 f8d6 	bl	79e8 <rt_put_prio>
    783c:	0028      	movs	r0, r5
    783e:	2108      	movs	r1, #8
    7840:	f000 fd0c 	bl	825c <rt_block>
    7844:	2001      	movs	r0, #1
    7846:	e7ed      	b.n	7824 <rt_mbx_wait+0x3c>
    7848:	2300      	movs	r3, #0
    784a:	8163      	strh	r3, [r4, #10]
    784c:	6863      	ldr	r3, [r4, #4]
    784e:	2b00      	cmp	r3, #0
    7850:	d1de      	bne.n	7810 <rt_mbx_wait+0x28>
    7852:	e7e0      	b.n	7816 <rt_mbx_wait+0x2e>
    7854:	4a11      	ldr	r2, [pc, #68]	; (789c <rt_mbx_wait+0xb4>)
    7856:	6812      	ldr	r2, [r2, #0]
    7858:	6062      	str	r2, [r4, #4]
    785a:	6053      	str	r3, [r2, #4]
    785c:	6094      	str	r4, [r2, #8]
    785e:	7060      	strb	r0, [r4, #1]
    7860:	e7ec      	b.n	783c <rt_mbx_wait+0x54>
    7862:	0020      	movs	r0, r4
    7864:	f000 f8e6 	bl	7a34 <rt_get_first>
    7868:	0005      	movs	r5, r0
    786a:	2100      	movs	r1, #0
    786c:	f7ff fcb0 	bl	71d0 <rt_ret_val>
    7870:	8923      	ldrh	r3, [r4, #8]
    7872:	69e9      	ldr	r1, [r5, #28]
    7874:	1d1a      	adds	r2, r3, #4
    7876:	0092      	lsls	r2, r2, #2
    7878:	5111      	str	r1, [r2, r4]
    787a:	3301      	adds	r3, #1
    787c:	89e2      	ldrh	r2, [r4, #14]
    787e:	b29b      	uxth	r3, r3
    7880:	8123      	strh	r3, [r4, #8]
    7882:	429a      	cmp	r2, r3
    7884:	d101      	bne.n	788a <rt_mbx_wait+0xa2>
    7886:	2300      	movs	r3, #0
    7888:	8123      	strh	r3, [r4, #8]
    788a:	0028      	movs	r0, r5
    788c:	f000 fa0a 	bl	7ca4 <rt_rmv_dly>
    7890:	0028      	movs	r0, r5
    7892:	f000 fcbd 	bl	8210 <rt_dispatch>
    7896:	2000      	movs	r0, #0
    7898:	e7c4      	b.n	7824 <rt_mbx_wait+0x3c>
    789a:	46c0      	nop			; (mov r8, r8)
    789c:	200060b8 	.word	0x200060b8

000078a0 <rt_mbx_check>:
    78a0:	89c3      	ldrh	r3, [r0, #14]
    78a2:	8980      	ldrh	r0, [r0, #12]
    78a4:	1a18      	subs	r0, r3, r0
    78a6:	4770      	bx	lr

000078a8 <isr_mbx_send>:
    78a8:	b510      	push	{r4, lr}
    78aa:	f000 fa11 	bl	7cd0 <rt_psq_enq>
    78ae:	f000 fbf3 	bl	8098 <rt_psh_req>
    78b2:	bd10      	pop	{r4, pc}

000078b4 <isr_mbx_receive>:
    78b4:	b510      	push	{r4, lr}
    78b6:	8982      	ldrh	r2, [r0, #12]
    78b8:	0004      	movs	r4, r0
    78ba:	2000      	movs	r0, #0
    78bc:	2a00      	cmp	r2, #0
    78be:	d017      	beq.n	78f0 <isr_mbx_receive+0x3c>
    78c0:	8963      	ldrh	r3, [r4, #10]
    78c2:	1d18      	adds	r0, r3, #4
    78c4:	0080      	lsls	r0, r0, #2
    78c6:	5900      	ldr	r0, [r0, r4]
    78c8:	6008      	str	r0, [r1, #0]
    78ca:	6861      	ldr	r1, [r4, #4]
    78cc:	2900      	cmp	r1, #0
    78ce:	d002      	beq.n	78d6 <isr_mbx_receive+0x22>
    78d0:	7861      	ldrb	r1, [r4, #1]
    78d2:	2902      	cmp	r1, #2
    78d4:	d010      	beq.n	78f8 <isr_mbx_receive+0x44>
    78d6:	f3ef 8110 	mrs	r1, PRIMASK
    78da:	b672      	cpsid	i
    78dc:	3a01      	subs	r2, #1
    78de:	81a2      	strh	r2, [r4, #12]
    78e0:	b662      	cpsie	i
    78e2:	3301      	adds	r3, #1
    78e4:	89e2      	ldrh	r2, [r4, #14]
    78e6:	b29b      	uxth	r3, r3
    78e8:	8163      	strh	r3, [r4, #10]
    78ea:	2004      	movs	r0, #4
    78ec:	429a      	cmp	r2, r3
    78ee:	d000      	beq.n	78f2 <isr_mbx_receive+0x3e>
    78f0:	bd10      	pop	{r4, pc}
    78f2:	2300      	movs	r3, #0
    78f4:	8163      	strh	r3, [r4, #10]
    78f6:	e7fb      	b.n	78f0 <isr_mbx_receive+0x3c>
    78f8:	2100      	movs	r1, #0
    78fa:	0020      	movs	r0, r4
    78fc:	f000 f9e8 	bl	7cd0 <rt_psq_enq>
    7900:	f000 fbca 	bl	8098 <rt_psh_req>
    7904:	89a2      	ldrh	r2, [r4, #12]
    7906:	8963      	ldrh	r3, [r4, #10]
    7908:	e7e5      	b.n	78d6 <isr_mbx_receive+0x22>
    790a:	46c0      	nop			; (mov r8, r8)

0000790c <rt_mbx_psh>:
    790c:	6843      	ldr	r3, [r0, #4]
    790e:	b570      	push	{r4, r5, r6, lr}
    7910:	0004      	movs	r4, r0
    7912:	000e      	movs	r6, r1
    7914:	2b00      	cmp	r3, #0
    7916:	d04b      	beq.n	79b0 <rt_mbx_psh+0xa4>
    7918:	7845      	ldrb	r5, [r0, #1]
    791a:	2d02      	cmp	r5, #2
    791c:	d023      	beq.n	7966 <rt_mbx_psh+0x5a>
    791e:	2d03      	cmp	r5, #3
    7920:	d002      	beq.n	7928 <rt_mbx_psh+0x1c>
    7922:	2d01      	cmp	r5, #1
    7924:	d00f      	beq.n	7946 <rt_mbx_psh+0x3a>
    7926:	bd70      	pop	{r4, r5, r6, pc}
    7928:	0008      	movs	r0, r1
    792a:	f7ff fcd3 	bl	72d4 <rt_alloc_box>
    792e:	1e05      	subs	r5, r0, #0
    7930:	d0f9      	beq.n	7926 <rt_mbx_psh+0x1a>
    7932:	0020      	movs	r0, r4
    7934:	f000 f87e 	bl	7a34 <rt_get_first>
    7938:	0029      	movs	r1, r5
    793a:	0004      	movs	r4, r0
    793c:	f7ff fc48 	bl	71d0 <rt_ret_val>
    7940:	2301      	movs	r3, #1
    7942:	7063      	strb	r3, [r4, #1]
    7944:	e007      	b.n	7956 <rt_mbx_psh+0x4a>
    7946:	f000 f875 	bl	7a34 <rt_get_first>
    794a:	0004      	movs	r4, r0
    794c:	0032      	movs	r2, r6
    794e:	2110      	movs	r1, #16
    7950:	f7ff fc42 	bl	71d8 <rt_ret_val2>
    7954:	7065      	strb	r5, [r4, #1]
    7956:	0020      	movs	r0, r4
    7958:	f000 f9a4 	bl	7ca4 <rt_rmv_dly>
    795c:	0021      	movs	r1, r4
    795e:	4821      	ldr	r0, [pc, #132]	; (79e4 <rt_mbx_psh+0xd8>)
    7960:	f000 f842 	bl	79e8 <rt_put_prio>
    7964:	e7df      	b.n	7926 <rt_mbx_psh+0x1a>
    7966:	f000 f865 	bl	7a34 <rt_get_first>
    796a:	0005      	movs	r5, r0
    796c:	2100      	movs	r1, #0
    796e:	f7ff fc2f 	bl	71d0 <rt_ret_val>
    7972:	8923      	ldrh	r3, [r4, #8]
    7974:	69e9      	ldr	r1, [r5, #28]
    7976:	1d1a      	adds	r2, r3, #4
    7978:	0092      	lsls	r2, r2, #2
    797a:	5111      	str	r1, [r2, r4]
    797c:	f3ef 8210 	mrs	r2, PRIMASK
    7980:	b672      	cpsid	i
    7982:	89a2      	ldrh	r2, [r4, #12]
    7984:	3201      	adds	r2, #1
    7986:	81a2      	strh	r2, [r4, #12]
    7988:	b662      	cpsie	i
    798a:	3301      	adds	r3, #1
    798c:	89e2      	ldrh	r2, [r4, #14]
    798e:	b29b      	uxth	r3, r3
    7990:	8123      	strh	r3, [r4, #8]
    7992:	429a      	cmp	r2, r3
    7994:	d009      	beq.n	79aa <rt_mbx_psh+0x9e>
    7996:	2301      	movs	r3, #1
    7998:	0028      	movs	r0, r5
    799a:	706b      	strb	r3, [r5, #1]
    799c:	f000 f982 	bl	7ca4 <rt_rmv_dly>
    79a0:	0029      	movs	r1, r5
    79a2:	4810      	ldr	r0, [pc, #64]	; (79e4 <rt_mbx_psh+0xd8>)
    79a4:	f000 f820 	bl	79e8 <rt_put_prio>
    79a8:	e7bd      	b.n	7926 <rt_mbx_psh+0x1a>
    79aa:	2300      	movs	r3, #0
    79ac:	8123      	strh	r3, [r4, #8]
    79ae:	e7f2      	b.n	7996 <rt_mbx_psh+0x8a>
    79b0:	8981      	ldrh	r1, [r0, #12]
    79b2:	89c5      	ldrh	r5, [r0, #14]
    79b4:	42a9      	cmp	r1, r5
    79b6:	d20f      	bcs.n	79d8 <rt_mbx_psh+0xcc>
    79b8:	8902      	ldrh	r2, [r0, #8]
    79ba:	1d10      	adds	r0, r2, #4
    79bc:	0080      	lsls	r0, r0, #2
    79be:	5106      	str	r6, [r0, r4]
    79c0:	f3ef 8010 	mrs	r0, PRIMASK
    79c4:	b672      	cpsid	i
    79c6:	3101      	adds	r1, #1
    79c8:	81a1      	strh	r1, [r4, #12]
    79ca:	b662      	cpsie	i
    79cc:	3201      	adds	r2, #1
    79ce:	b292      	uxth	r2, r2
    79d0:	4295      	cmp	r5, r2
    79d2:	d005      	beq.n	79e0 <rt_mbx_psh+0xd4>
    79d4:	8122      	strh	r2, [r4, #8]
    79d6:	e7a6      	b.n	7926 <rt_mbx_psh+0x1a>
    79d8:	2003      	movs	r0, #3
    79da:	f7f9 ffad 	bl	1938 <os_error>
    79de:	e7a2      	b.n	7926 <rt_mbx_psh+0x1a>
    79e0:	8123      	strh	r3, [r4, #8]
    79e2:	e7a0      	b.n	7926 <rt_mbx_psh+0x1a>
    79e4:	20006084 	.word	0x20006084

000079e8 <rt_put_prio>:
    79e8:	b530      	push	{r4, r5, lr}
    79ea:	7805      	ldrb	r5, [r0, #0]
    79ec:	6842      	ldr	r2, [r0, #4]
    79ee:	3d01      	subs	r5, #1
    79f0:	b2ed      	uxtb	r5, r5
    79f2:	788c      	ldrb	r4, [r1, #2]
    79f4:	2a00      	cmp	r2, #0
    79f6:	d01a      	beq.n	7a2e <rt_put_prio+0x46>
    79f8:	7893      	ldrb	r3, [r2, #2]
    79fa:	42a3      	cmp	r3, r4
    79fc:	d204      	bcs.n	7a08 <rt_put_prio+0x20>
    79fe:	e00e      	b.n	7a1e <rt_put_prio+0x36>
    7a00:	7898      	ldrb	r0, [r3, #2]
    7a02:	4284      	cmp	r4, r0
    7a04:	d80d      	bhi.n	7a22 <rt_put_prio+0x3a>
    7a06:	001a      	movs	r2, r3
    7a08:	6853      	ldr	r3, [r2, #4]
    7a0a:	2b00      	cmp	r3, #0
    7a0c:	d1f8      	bne.n	7a00 <rt_put_prio+0x18>
    7a0e:	2300      	movs	r3, #0
    7a10:	604b      	str	r3, [r1, #4]
    7a12:	6051      	str	r1, [r2, #4]
    7a14:	2d02      	cmp	r5, #2
    7a16:	d900      	bls.n	7a1a <rt_put_prio+0x32>
    7a18:	2200      	movs	r2, #0
    7a1a:	608a      	str	r2, [r1, #8]
    7a1c:	bd30      	pop	{r4, r5, pc}
    7a1e:	0013      	movs	r3, r2
    7a20:	0002      	movs	r2, r0
    7a22:	604b      	str	r3, [r1, #4]
    7a24:	6051      	str	r1, [r2, #4]
    7a26:	2d02      	cmp	r5, #2
    7a28:	d8f6      	bhi.n	7a18 <rt_put_prio+0x30>
    7a2a:	6099      	str	r1, [r3, #8]
    7a2c:	e7f5      	b.n	7a1a <rt_put_prio+0x32>
    7a2e:	0002      	movs	r2, r0
    7a30:	e7ed      	b.n	7a0e <rt_put_prio+0x26>
    7a32:	46c0      	nop			; (mov r8, r8)

00007a34 <rt_get_first>:
    7a34:	6843      	ldr	r3, [r0, #4]
    7a36:	7802      	ldrb	r2, [r0, #0]
    7a38:	6859      	ldr	r1, [r3, #4]
    7a3a:	3a01      	subs	r2, #1
    7a3c:	6041      	str	r1, [r0, #4]
    7a3e:	2a02      	cmp	r2, #2
    7a40:	d808      	bhi.n	7a54 <rt_get_first+0x20>
    7a42:	2900      	cmp	r1, #0
    7a44:	d002      	beq.n	7a4c <rt_get_first+0x18>
    7a46:	2200      	movs	r2, #0
    7a48:	6088      	str	r0, [r1, #8]
    7a4a:	605a      	str	r2, [r3, #4]
    7a4c:	2200      	movs	r2, #0
    7a4e:	609a      	str	r2, [r3, #8]
    7a50:	0018      	movs	r0, r3
    7a52:	4770      	bx	lr
    7a54:	2200      	movs	r2, #0
    7a56:	605a      	str	r2, [r3, #4]
    7a58:	e7fa      	b.n	7a50 <rt_get_first+0x1c>
    7a5a:	46c0      	nop			; (mov r8, r8)

00007a5c <rt_put_rdy_first>:
    7a5c:	4b03      	ldr	r3, [pc, #12]	; (7a6c <rt_put_rdy_first+0x10>)
    7a5e:	685a      	ldr	r2, [r3, #4]
    7a60:	6042      	str	r2, [r0, #4]
    7a62:	2200      	movs	r2, #0
    7a64:	6058      	str	r0, [r3, #4]
    7a66:	6082      	str	r2, [r0, #8]
    7a68:	4770      	bx	lr
    7a6a:	46c0      	nop			; (mov r8, r8)
    7a6c:	20006084 	.word	0x20006084

00007a70 <rt_get_same_rdy_prio>:
    7a70:	4b06      	ldr	r3, [pc, #24]	; (7a8c <rt_get_same_rdy_prio+0x1c>)
    7a72:	4a07      	ldr	r2, [pc, #28]	; (7a90 <rt_get_same_rdy_prio+0x20>)
    7a74:	6858      	ldr	r0, [r3, #4]
    7a76:	6812      	ldr	r2, [r2, #0]
    7a78:	7881      	ldrb	r1, [r0, #2]
    7a7a:	7892      	ldrb	r2, [r2, #2]
    7a7c:	4291      	cmp	r1, r2
    7a7e:	d102      	bne.n	7a86 <rt_get_same_rdy_prio+0x16>
    7a80:	6842      	ldr	r2, [r0, #4]
    7a82:	605a      	str	r2, [r3, #4]
    7a84:	4770      	bx	lr
    7a86:	2000      	movs	r0, #0
    7a88:	e7fc      	b.n	7a84 <rt_get_same_rdy_prio+0x14>
    7a8a:	46c0      	nop			; (mov r8, r8)
    7a8c:	20006084 	.word	0x20006084
    7a90:	200060b8 	.word	0x200060b8

00007a94 <rt_resort_prio>:
    7a94:	6881      	ldr	r1, [r0, #8]
    7a96:	b530      	push	{r4, r5, lr}
    7a98:	2900      	cmp	r1, #0
    7a9a:	d030      	beq.n	7afe <rt_resort_prio+0x6a>
    7a9c:	780b      	ldrb	r3, [r1, #0]
    7a9e:	000a      	movs	r2, r1
    7aa0:	2b00      	cmp	r3, #0
    7aa2:	d103      	bne.n	7aac <rt_resort_prio+0x18>
    7aa4:	6892      	ldr	r2, [r2, #8]
    7aa6:	7813      	ldrb	r3, [r2, #0]
    7aa8:	2b00      	cmp	r3, #0
    7aaa:	d0fb      	beq.n	7aa4 <rt_resort_prio+0x10>
    7aac:	6843      	ldr	r3, [r0, #4]
    7aae:	604b      	str	r3, [r1, #4]
    7ab0:	6843      	ldr	r3, [r0, #4]
    7ab2:	2b00      	cmp	r3, #0
    7ab4:	d000      	beq.n	7ab8 <rt_resort_prio+0x24>
    7ab6:	6099      	str	r1, [r3, #8]
    7ab8:	7815      	ldrb	r5, [r2, #0]
    7aba:	6851      	ldr	r1, [r2, #4]
    7abc:	3d01      	subs	r5, #1
    7abe:	b2ed      	uxtb	r5, r5
    7ac0:	7884      	ldrb	r4, [r0, #2]
    7ac2:	2900      	cmp	r1, #0
    7ac4:	d029      	beq.n	7b1a <rt_resort_prio+0x86>
    7ac6:	788b      	ldrb	r3, [r1, #2]
    7ac8:	42a3      	cmp	r3, r4
    7aca:	d204      	bcs.n	7ad6 <rt_resort_prio+0x42>
    7acc:	e00e      	b.n	7aec <rt_resort_prio+0x58>
    7ace:	789a      	ldrb	r2, [r3, #2]
    7ad0:	4294      	cmp	r4, r2
    7ad2:	d80d      	bhi.n	7af0 <rt_resort_prio+0x5c>
    7ad4:	0019      	movs	r1, r3
    7ad6:	684b      	ldr	r3, [r1, #4]
    7ad8:	2b00      	cmp	r3, #0
    7ada:	d1f8      	bne.n	7ace <rt_resort_prio+0x3a>
    7adc:	2300      	movs	r3, #0
    7ade:	6043      	str	r3, [r0, #4]
    7ae0:	6048      	str	r0, [r1, #4]
    7ae2:	2d02      	cmp	r5, #2
    7ae4:	d909      	bls.n	7afa <rt_resort_prio+0x66>
    7ae6:	2300      	movs	r3, #0
    7ae8:	6083      	str	r3, [r0, #8]
    7aea:	bd30      	pop	{r4, r5, pc}
    7aec:	000b      	movs	r3, r1
    7aee:	0011      	movs	r1, r2
    7af0:	6043      	str	r3, [r0, #4]
    7af2:	6048      	str	r0, [r1, #4]
    7af4:	2d02      	cmp	r5, #2
    7af6:	d8f6      	bhi.n	7ae6 <rt_resort_prio+0x52>
    7af8:	6098      	str	r0, [r3, #8]
    7afa:	6081      	str	r1, [r0, #8]
    7afc:	e7f5      	b.n	7aea <rt_resort_prio+0x56>
    7afe:	7843      	ldrb	r3, [r0, #1]
    7b00:	2b01      	cmp	r3, #1
    7b02:	d1f2      	bne.n	7aea <rt_resort_prio+0x56>
    7b04:	4a06      	ldr	r2, [pc, #24]	; (7b20 <rt_resort_prio+0x8c>)
    7b06:	0013      	movs	r3, r2
    7b08:	e001      	b.n	7b0e <rt_resort_prio+0x7a>
    7b0a:	1e0b      	subs	r3, r1, #0
    7b0c:	d0d4      	beq.n	7ab8 <rt_resort_prio+0x24>
    7b0e:	6859      	ldr	r1, [r3, #4]
    7b10:	4288      	cmp	r0, r1
    7b12:	d1fa      	bne.n	7b0a <rt_resort_prio+0x76>
    7b14:	6841      	ldr	r1, [r0, #4]
    7b16:	6059      	str	r1, [r3, #4]
    7b18:	e7ce      	b.n	7ab8 <rt_resort_prio+0x24>
    7b1a:	0011      	movs	r1, r2
    7b1c:	e7de      	b.n	7adc <rt_resort_prio+0x48>
    7b1e:	46c0      	nop			; (mov r8, r8)
    7b20:	20006084 	.word	0x20006084

00007b24 <rt_put_dly>:
    7b24:	b530      	push	{r4, r5, lr}
    7b26:	4c17      	ldr	r4, [pc, #92]	; (7b84 <rt_put_dly+0x60>)
    7b28:	68e2      	ldr	r2, [r4, #12]
    7b2a:	2a00      	cmp	r2, #0
    7b2c:	d023      	beq.n	7b76 <rt_put_dly+0x52>
    7b2e:	8aa3      	ldrh	r3, [r4, #20]
    7b30:	4299      	cmp	r1, r3
    7b32:	d804      	bhi.n	7b3e <rt_put_dly+0x1a>
    7b34:	e022      	b.n	7b7c <rt_put_dly+0x58>
    7b36:	68d4      	ldr	r4, [r2, #12]
    7b38:	2c00      	cmp	r4, #0
    7b3a:	d013      	beq.n	7b64 <rt_put_dly+0x40>
    7b3c:	0022      	movs	r2, r4
    7b3e:	8a94      	ldrh	r4, [r2, #20]
    7b40:	191b      	adds	r3, r3, r4
    7b42:	4299      	cmp	r1, r3
    7b44:	d8f7      	bhi.n	7b36 <rt_put_dly+0x12>
    7b46:	68d5      	ldr	r5, [r2, #12]
    7b48:	60c5      	str	r5, [r0, #12]
    7b4a:	60d0      	str	r0, [r2, #12]
    7b4c:	68c4      	ldr	r4, [r0, #12]
    7b4e:	6102      	str	r2, [r0, #16]
    7b50:	2c00      	cmp	r4, #0
    7b52:	d000      	beq.n	7b56 <rt_put_dly+0x32>
    7b54:	6120      	str	r0, [r4, #16]
    7b56:	1a5b      	subs	r3, r3, r1
    7b58:	b29b      	uxth	r3, r3
    7b5a:	8283      	strh	r3, [r0, #20]
    7b5c:	8a91      	ldrh	r1, [r2, #20]
    7b5e:	1acb      	subs	r3, r1, r3
    7b60:	8293      	strh	r3, [r2, #20]
    7b62:	bd30      	pop	{r4, r5, pc}
    7b64:	b29b      	uxth	r3, r3
    7b66:	2400      	movs	r4, #0
    7b68:	1acb      	subs	r3, r1, r3
    7b6a:	60c4      	str	r4, [r0, #12]
    7b6c:	60d0      	str	r0, [r2, #12]
    7b6e:	6102      	str	r2, [r0, #16]
    7b70:	8293      	strh	r3, [r2, #20]
    7b72:	8284      	strh	r4, [r0, #20]
    7b74:	e7f5      	b.n	7b62 <rt_put_dly+0x3e>
    7b76:	2300      	movs	r3, #0
    7b78:	0022      	movs	r2, r4
    7b7a:	e7f4      	b.n	7b66 <rt_put_dly+0x42>
    7b7c:	0015      	movs	r5, r2
    7b7e:	0022      	movs	r2, r4
    7b80:	e7e2      	b.n	7b48 <rt_put_dly+0x24>
    7b82:	46c0      	nop			; (mov r8, r8)
    7b84:	2000609c 	.word	0x2000609c

00007b88 <rt_dec_dly>:
    7b88:	b5f0      	push	{r4, r5, r6, r7, lr}
    7b8a:	464e      	mov	r6, r9
    7b8c:	4657      	mov	r7, sl
    7b8e:	4645      	mov	r5, r8
    7b90:	b4e0      	push	{r5, r6, r7}
    7b92:	4e36      	ldr	r6, [pc, #216]	; (7c6c <rt_dec_dly+0xe4>)
    7b94:	68f0      	ldr	r0, [r6, #12]
    7b96:	2800      	cmp	r0, #0
    7b98:	d059      	beq.n	7c4e <rt_dec_dly+0xc6>
    7b9a:	8ab3      	ldrh	r3, [r6, #20]
    7b9c:	3b01      	subs	r3, #1
    7b9e:	b29b      	uxth	r3, r3
    7ba0:	82b3      	strh	r3, [r6, #20]
    7ba2:	2b00      	cmp	r3, #0
    7ba4:	d153      	bne.n	7c4e <rt_dec_dly+0xc6>
    7ba6:	4b32      	ldr	r3, [pc, #200]	; (7c70 <rt_dec_dly+0xe8>)
    7ba8:	2500      	movs	r5, #0
    7baa:	469c      	mov	ip, r3
    7bac:	781f      	ldrb	r7, [r3, #0]
    7bae:	4b31      	ldr	r3, [pc, #196]	; (7c74 <rt_dec_dly+0xec>)
    7bb0:	46e2      	mov	sl, ip
    7bb2:	881b      	ldrh	r3, [r3, #0]
    7bb4:	3f01      	subs	r7, #1
    7bb6:	4699      	mov	r9, r3
    7bb8:	2301      	movs	r3, #1
    7bba:	4698      	mov	r8, r3
    7bbc:	b2ff      	uxtb	r7, r7
    7bbe:	6883      	ldr	r3, [r0, #8]
    7bc0:	2b00      	cmp	r3, #0
    7bc2:	d007      	beq.n	7bd4 <rt_dec_dly+0x4c>
    7bc4:	6842      	ldr	r2, [r0, #4]
    7bc6:	605a      	str	r2, [r3, #4]
    7bc8:	6842      	ldr	r2, [r0, #4]
    7bca:	2a00      	cmp	r2, #0
    7bcc:	d001      	beq.n	7bd2 <rt_dec_dly+0x4a>
    7bce:	6093      	str	r3, [r2, #8]
    7bd0:	6045      	str	r5, [r0, #4]
    7bd2:	6085      	str	r5, [r0, #8]
    7bd4:	4663      	mov	r3, ip
    7bd6:	685a      	ldr	r2, [r3, #4]
    7bd8:	7884      	ldrb	r4, [r0, #2]
    7bda:	2a00      	cmp	r2, #0
    7bdc:	d03c      	beq.n	7c58 <rt_dec_dly+0xd0>
    7bde:	7893      	ldrb	r3, [r2, #2]
    7be0:	42a3      	cmp	r3, r4
    7be2:	d204      	bcs.n	7bee <rt_dec_dly+0x66>
    7be4:	e01c      	b.n	7c20 <rt_dec_dly+0x98>
    7be6:	7899      	ldrb	r1, [r3, #2]
    7be8:	428c      	cmp	r4, r1
    7bea:	d81b      	bhi.n	7c24 <rt_dec_dly+0x9c>
    7bec:	001a      	movs	r2, r3
    7bee:	6853      	ldr	r3, [r2, #4]
    7bf0:	2b00      	cmp	r3, #0
    7bf2:	d1f8      	bne.n	7be6 <rt_dec_dly+0x5e>
    7bf4:	6045      	str	r5, [r0, #4]
    7bf6:	6050      	str	r0, [r2, #4]
    7bf8:	2f02      	cmp	r7, #2
    7bfa:	d900      	bls.n	7bfe <rt_dec_dly+0x76>
    7bfc:	2200      	movs	r2, #0
    7bfe:	7843      	ldrb	r3, [r0, #1]
    7c00:	6082      	str	r2, [r0, #8]
    7c02:	8a82      	ldrh	r2, [r0, #20]
    7c04:	2b04      	cmp	r3, #4
    7c06:	d017      	beq.n	7c38 <rt_dec_dly+0xb0>
    7c08:	4643      	mov	r3, r8
    7c0a:	7043      	strb	r3, [r0, #1]
    7c0c:	68c3      	ldr	r3, [r0, #12]
    7c0e:	2b00      	cmp	r3, #0
    7c10:	d01a      	beq.n	7c48 <rt_dec_dly+0xc0>
    7c12:	611e      	str	r6, [r3, #16]
    7c14:	60c5      	str	r5, [r0, #12]
    7c16:	6105      	str	r5, [r0, #16]
    7c18:	2a00      	cmp	r2, #0
    7c1a:	d123      	bne.n	7c64 <rt_dec_dly+0xdc>
    7c1c:	0018      	movs	r0, r3
    7c1e:	e7ce      	b.n	7bbe <rt_dec_dly+0x36>
    7c20:	0013      	movs	r3, r2
    7c22:	4652      	mov	r2, sl
    7c24:	6043      	str	r3, [r0, #4]
    7c26:	6050      	str	r0, [r2, #4]
    7c28:	2f02      	cmp	r7, #2
    7c2a:	d8e7      	bhi.n	7bfc <rt_dec_dly+0x74>
    7c2c:	6098      	str	r0, [r3, #8]
    7c2e:	7843      	ldrb	r3, [r0, #1]
    7c30:	6082      	str	r2, [r0, #8]
    7c32:	8a82      	ldrh	r2, [r0, #20]
    7c34:	2b04      	cmp	r3, #4
    7c36:	d1e7      	bne.n	7c08 <rt_dec_dly+0x80>
    7c38:	8ac3      	ldrh	r3, [r0, #22]
    7c3a:	444b      	add	r3, r9
    7c3c:	8283      	strh	r3, [r0, #20]
    7c3e:	4643      	mov	r3, r8
    7c40:	7043      	strb	r3, [r0, #1]
    7c42:	68c3      	ldr	r3, [r0, #12]
    7c44:	2b00      	cmp	r3, #0
    7c46:	d1e4      	bne.n	7c12 <rt_dec_dly+0x8a>
    7c48:	82b2      	strh	r2, [r6, #20]
    7c4a:	60f3      	str	r3, [r6, #12]
    7c4c:	6103      	str	r3, [r0, #16]
    7c4e:	bc1c      	pop	{r2, r3, r4}
    7c50:	4690      	mov	r8, r2
    7c52:	4699      	mov	r9, r3
    7c54:	46a2      	mov	sl, r4
    7c56:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7c58:	4652      	mov	r2, sl
    7c5a:	6045      	str	r5, [r0, #4]
    7c5c:	6050      	str	r0, [r2, #4]
    7c5e:	2f02      	cmp	r7, #2
    7c60:	d8cc      	bhi.n	7bfc <rt_dec_dly+0x74>
    7c62:	e7cc      	b.n	7bfe <rt_dec_dly+0x76>
    7c64:	82b2      	strh	r2, [r6, #20]
    7c66:	60f3      	str	r3, [r6, #12]
    7c68:	e7f1      	b.n	7c4e <rt_dec_dly+0xc6>
    7c6a:	46c0      	nop			; (mov r8, r8)
    7c6c:	2000609c 	.word	0x2000609c
    7c70:	20006084 	.word	0x20006084
    7c74:	20006080 	.word	0x20006080

00007c78 <rt_rmv_list>:
    7c78:	6883      	ldr	r3, [r0, #8]
    7c7a:	2b00      	cmp	r3, #0
    7c7c:	d006      	beq.n	7c8c <rt_rmv_list+0x14>
    7c7e:	6842      	ldr	r2, [r0, #4]
    7c80:	605a      	str	r2, [r3, #4]
    7c82:	6842      	ldr	r2, [r0, #4]
    7c84:	2a00      	cmp	r2, #0
    7c86:	d000      	beq.n	7c8a <rt_rmv_list+0x12>
    7c88:	6093      	str	r3, [r2, #8]
    7c8a:	4770      	bx	lr
    7c8c:	4b04      	ldr	r3, [pc, #16]	; (7ca0 <rt_rmv_list+0x28>)
    7c8e:	e001      	b.n	7c94 <rt_rmv_list+0x1c>
    7c90:	1e13      	subs	r3, r2, #0
    7c92:	d0fa      	beq.n	7c8a <rt_rmv_list+0x12>
    7c94:	685a      	ldr	r2, [r3, #4]
    7c96:	4290      	cmp	r0, r2
    7c98:	d1fa      	bne.n	7c90 <rt_rmv_list+0x18>
    7c9a:	6842      	ldr	r2, [r0, #4]
    7c9c:	605a      	str	r2, [r3, #4]
    7c9e:	e7f4      	b.n	7c8a <rt_rmv_list+0x12>
    7ca0:	20006084 	.word	0x20006084

00007ca4 <rt_rmv_dly>:
    7ca4:	6903      	ldr	r3, [r0, #16]
    7ca6:	b510      	push	{r4, lr}
    7ca8:	2b00      	cmp	r3, #0
    7caa:	d00d      	beq.n	7cc8 <rt_rmv_dly+0x24>
    7cac:	68c2      	ldr	r2, [r0, #12]
    7cae:	60da      	str	r2, [r3, #12]
    7cb0:	68c1      	ldr	r1, [r0, #12]
    7cb2:	2900      	cmp	r1, #0
    7cb4:	d009      	beq.n	7cca <rt_rmv_dly+0x26>
    7cb6:	8a9c      	ldrh	r4, [r3, #20]
    7cb8:	8a82      	ldrh	r2, [r0, #20]
    7cba:	18a2      	adds	r2, r4, r2
    7cbc:	829a      	strh	r2, [r3, #20]
    7cbe:	610b      	str	r3, [r1, #16]
    7cc0:	2300      	movs	r3, #0
    7cc2:	60c3      	str	r3, [r0, #12]
    7cc4:	2300      	movs	r3, #0
    7cc6:	6103      	str	r3, [r0, #16]
    7cc8:	bd10      	pop	{r4, pc}
    7cca:	8299      	strh	r1, [r3, #20]
    7ccc:	e7fa      	b.n	7cc4 <rt_rmv_dly+0x20>
    7cce:	46c0      	nop			; (mov r8, r8)

00007cd0 <rt_psq_enq>:
    7cd0:	b570      	push	{r4, r5, r6, lr}
    7cd2:	4c0f      	ldr	r4, [pc, #60]	; (7d10 <rt_psq_enq+0x40>)
    7cd4:	78e5      	ldrb	r5, [r4, #3]
    7cd6:	f3ef 8310 	mrs	r3, PRIMASK
    7cda:	b672      	cpsid	i
    7cdc:	78a3      	ldrb	r3, [r4, #2]
    7cde:	429d      	cmp	r5, r3
    7ce0:	d907      	bls.n	7cf2 <rt_psq_enq+0x22>
    7ce2:	1c5a      	adds	r2, r3, #1
    7ce4:	7823      	ldrb	r3, [r4, #0]
    7ce6:	70a2      	strb	r2, [r4, #2]
    7ce8:	1c5a      	adds	r2, r3, #1
    7cea:	4295      	cmp	r5, r2
    7cec:	d00d      	beq.n	7d0a <rt_psq_enq+0x3a>
    7cee:	b2d2      	uxtb	r2, r2
    7cf0:	7022      	strb	r2, [r4, #0]
    7cf2:	b662      	cpsie	i
    7cf4:	429d      	cmp	r5, r3
    7cf6:	d904      	bls.n	7d02 <rt_psq_enq+0x32>
    7cf8:	00db      	lsls	r3, r3, #3
    7cfa:	18e3      	adds	r3, r4, r3
    7cfc:	6058      	str	r0, [r3, #4]
    7cfe:	6099      	str	r1, [r3, #8]
    7d00:	bd70      	pop	{r4, r5, r6, pc}
    7d02:	2002      	movs	r0, #2
    7d04:	f7f9 fe18 	bl	1938 <os_error>
    7d08:	e7fa      	b.n	7d00 <rt_psq_enq+0x30>
    7d0a:	2200      	movs	r2, #0
    7d0c:	7022      	strb	r2, [r4, #0]
    7d0e:	e7f0      	b.n	7cf2 <rt_psq_enq+0x22>
    7d10:	20004c58 	.word	0x20004c58

00007d14 <rt_evt_wait>:
    7d14:	4b10      	ldr	r3, [pc, #64]	; (7d58 <rt_evt_wait+0x44>)
    7d16:	b570      	push	{r4, r5, r6, lr}
    7d18:	681b      	ldr	r3, [r3, #0]
    7d1a:	000c      	movs	r4, r1
    7d1c:	2a00      	cmp	r2, #0
    7d1e:	d00b      	beq.n	7d38 <rt_evt_wait+0x24>
    7d20:	0005      	movs	r5, r0
    7d22:	8b1a      	ldrh	r2, [r3, #24]
    7d24:	2106      	movs	r1, #6
    7d26:	4015      	ands	r5, r2
    7d28:	42a8      	cmp	r0, r5
    7d2a:	d00a      	beq.n	7d42 <rt_evt_wait+0x2e>
    7d2c:	8358      	strh	r0, [r3, #26]
    7d2e:	0020      	movs	r0, r4
    7d30:	f000 fa94 	bl	825c <rt_block>
    7d34:	2001      	movs	r0, #1
    7d36:	e007      	b.n	7d48 <rt_evt_wait+0x34>
    7d38:	8b1a      	ldrh	r2, [r3, #24]
    7d3a:	0011      	movs	r1, r2
    7d3c:	4001      	ands	r1, r0
    7d3e:	d004      	beq.n	7d4a <rt_evt_wait+0x36>
    7d40:	8359      	strh	r1, [r3, #26]
    7d42:	4382      	bics	r2, r0
    7d44:	2002      	movs	r0, #2
    7d46:	831a      	strh	r2, [r3, #24]
    7d48:	bd70      	pop	{r4, r5, r6, pc}
    7d4a:	8358      	strh	r0, [r3, #26]
    7d4c:	2105      	movs	r1, #5
    7d4e:	0020      	movs	r0, r4
    7d50:	f000 fa84 	bl	825c <rt_block>
    7d54:	2001      	movs	r0, #1
    7d56:	e7f7      	b.n	7d48 <rt_evt_wait+0x34>
    7d58:	200060b8 	.word	0x200060b8

00007d5c <rt_evt_set>:
    7d5c:	3901      	subs	r1, #1
    7d5e:	4b14      	ldr	r3, [pc, #80]	; (7db0 <rt_evt_set+0x54>)
    7d60:	0089      	lsls	r1, r1, #2
    7d62:	b510      	push	{r4, lr}
    7d64:	58cc      	ldr	r4, [r1, r3]
    7d66:	2c00      	cmp	r4, #0
    7d68:	d008      	beq.n	7d7c <rt_evt_set+0x20>
    7d6a:	8b23      	ldrh	r3, [r4, #24]
    7d6c:	8b62      	ldrh	r2, [r4, #26]
    7d6e:	4318      	orrs	r0, r3
    7d70:	7863      	ldrb	r3, [r4, #1]
    7d72:	8320      	strh	r0, [r4, #24]
    7d74:	2b06      	cmp	r3, #6
    7d76:	d016      	beq.n	7da6 <rt_evt_set+0x4a>
    7d78:	2b05      	cmp	r3, #5
    7d7a:	d000      	beq.n	7d7e <rt_evt_set+0x22>
    7d7c:	bd10      	pop	{r4, pc}
    7d7e:	0013      	movs	r3, r2
    7d80:	4003      	ands	r3, r0
    7d82:	d0fb      	beq.n	7d7c <rt_evt_set+0x20>
    7d84:	8363      	strh	r3, [r4, #26]
    7d86:	4390      	bics	r0, r2
    7d88:	8320      	strh	r0, [r4, #24]
    7d8a:	0020      	movs	r0, r4
    7d8c:	f7ff ff8a 	bl	7ca4 <rt_rmv_dly>
    7d90:	2301      	movs	r3, #1
    7d92:	0020      	movs	r0, r4
    7d94:	7063      	strb	r3, [r4, #1]
    7d96:	8b62      	ldrh	r2, [r4, #26]
    7d98:	2108      	movs	r1, #8
    7d9a:	f7ff fa1d 	bl	71d8 <rt_ret_val2>
    7d9e:	0020      	movs	r0, r4
    7da0:	f000 fa36 	bl	8210 <rt_dispatch>
    7da4:	e7ea      	b.n	7d7c <rt_evt_set+0x20>
    7da6:	0013      	movs	r3, r2
    7da8:	4003      	ands	r3, r0
    7daa:	429a      	cmp	r2, r3
    7dac:	d1e6      	bne.n	7d7c <rt_evt_set+0x20>
    7dae:	e7ea      	b.n	7d86 <rt_evt_set+0x2a>
    7db0:	20004cdc 	.word	0x20004cdc

00007db4 <rt_evt_clr>:
    7db4:	3901      	subs	r1, #1
    7db6:	4b04      	ldr	r3, [pc, #16]	; (7dc8 <rt_evt_clr+0x14>)
    7db8:	0089      	lsls	r1, r1, #2
    7dba:	58cb      	ldr	r3, [r1, r3]
    7dbc:	2b00      	cmp	r3, #0
    7dbe:	d002      	beq.n	7dc6 <rt_evt_clr+0x12>
    7dc0:	8b1a      	ldrh	r2, [r3, #24]
    7dc2:	4382      	bics	r2, r0
    7dc4:	831a      	strh	r2, [r3, #24]
    7dc6:	4770      	bx	lr
    7dc8:	20004cdc 	.word	0x20004cdc

00007dcc <isr_evt_set>:
    7dcc:	3901      	subs	r1, #1
    7dce:	4b06      	ldr	r3, [pc, #24]	; (7de8 <isr_evt_set+0x1c>)
    7dd0:	0089      	lsls	r1, r1, #2
    7dd2:	58cb      	ldr	r3, [r1, r3]
    7dd4:	b510      	push	{r4, lr}
    7dd6:	2b00      	cmp	r3, #0
    7dd8:	d005      	beq.n	7de6 <isr_evt_set+0x1a>
    7dda:	0001      	movs	r1, r0
    7ddc:	0018      	movs	r0, r3
    7dde:	f7ff ff77 	bl	7cd0 <rt_psq_enq>
    7de2:	f000 f959 	bl	8098 <rt_psh_req>
    7de6:	bd10      	pop	{r4, pc}
    7de8:	20004cdc 	.word	0x20004cdc

00007dec <rt_evt_get>:
    7dec:	4b01      	ldr	r3, [pc, #4]	; (7df4 <rt_evt_get+0x8>)
    7dee:	681b      	ldr	r3, [r3, #0]
    7df0:	8b58      	ldrh	r0, [r3, #26]
    7df2:	4770      	bx	lr
    7df4:	200060b8 	.word	0x200060b8

00007df8 <rt_evt_psh>:
    7df8:	b510      	push	{r4, lr}
    7dfa:	8b03      	ldrh	r3, [r0, #24]
    7dfc:	0004      	movs	r4, r0
    7dfe:	4319      	orrs	r1, r3
    7e00:	7843      	ldrb	r3, [r0, #1]
    7e02:	8301      	strh	r1, [r0, #24]
    7e04:	8b42      	ldrh	r2, [r0, #26]
    7e06:	2b06      	cmp	r3, #6
    7e08:	d017      	beq.n	7e3a <rt_evt_psh+0x42>
    7e0a:	2b05      	cmp	r3, #5
    7e0c:	d000      	beq.n	7e10 <rt_evt_psh+0x18>
    7e0e:	bd10      	pop	{r4, pc}
    7e10:	0013      	movs	r3, r2
    7e12:	400b      	ands	r3, r1
    7e14:	d0fb      	beq.n	7e0e <rt_evt_psh+0x16>
    7e16:	8343      	strh	r3, [r0, #26]
    7e18:	4391      	bics	r1, r2
    7e1a:	8321      	strh	r1, [r4, #24]
    7e1c:	0020      	movs	r0, r4
    7e1e:	f7ff ff41 	bl	7ca4 <rt_rmv_dly>
    7e22:	2301      	movs	r3, #1
    7e24:	0020      	movs	r0, r4
    7e26:	7063      	strb	r3, [r4, #1]
    7e28:	8b62      	ldrh	r2, [r4, #26]
    7e2a:	2108      	movs	r1, #8
    7e2c:	f7ff f9d4 	bl	71d8 <rt_ret_val2>
    7e30:	0021      	movs	r1, r4
    7e32:	4804      	ldr	r0, [pc, #16]	; (7e44 <rt_evt_psh+0x4c>)
    7e34:	f7ff fdd8 	bl	79e8 <rt_put_prio>
    7e38:	e7e9      	b.n	7e0e <rt_evt_psh+0x16>
    7e3a:	0013      	movs	r3, r2
    7e3c:	400b      	ands	r3, r1
    7e3e:	429a      	cmp	r2, r3
    7e40:	d1e5      	bne.n	7e0e <rt_evt_psh+0x16>
    7e42:	e7e9      	b.n	7e18 <rt_evt_psh+0x20>
    7e44:	20006084 	.word	0x20006084

00007e48 <rt_suspend>:
    7e48:	4b1c      	ldr	r3, [pc, #112]	; (7ebc <rt_suspend+0x74>)
    7e4a:	b510      	push	{r4, lr}
    7e4c:	681b      	ldr	r3, [r3, #0]
    7e4e:	2b00      	cmp	r3, #0
    7e50:	db20      	blt.n	7e94 <rt_suspend+0x4c>
    7e52:	491b      	ldr	r1, [pc, #108]	; (7ec0 <rt_suspend+0x78>)
    7e54:	095a      	lsrs	r2, r3, #5
    7e56:	468c      	mov	ip, r1
    7e58:	211f      	movs	r1, #31
    7e5a:	400b      	ands	r3, r1
    7e5c:	391e      	subs	r1, #30
    7e5e:	0008      	movs	r0, r1
    7e60:	4098      	lsls	r0, r3
    7e62:	0092      	lsls	r2, r2, #2
    7e64:	4462      	add	r2, ip
    7e66:	6010      	str	r0, [r2, #0]
    7e68:	4816      	ldr	r0, [pc, #88]	; (7ec4 <rt_suspend+0x7c>)
    7e6a:	4a17      	ldr	r2, [pc, #92]	; (7ec8 <rt_suspend+0x80>)
    7e6c:	7001      	strb	r1, [r0, #0]
    7e6e:	6813      	ldr	r3, [r2, #0]
    7e70:	0f1b      	lsrs	r3, r3, #28
    7e72:	400b      	ands	r3, r1
    7e74:	7043      	strb	r3, [r0, #1]
    7e76:	06db      	lsls	r3, r3, #27
    7e78:	6013      	str	r3, [r2, #0]
    7e7a:	4b14      	ldr	r3, [pc, #80]	; (7ecc <rt_suspend+0x84>)
    7e7c:	68da      	ldr	r2, [r3, #12]
    7e7e:	2a00      	cmp	r2, #0
    7e80:	d019      	beq.n	7eb6 <rt_suspend+0x6e>
    7e82:	8a9c      	ldrh	r4, [r3, #20]
    7e84:	f7fe f9e6 	bl	6254 <sysUserTimerWakeupTime>
    7e88:	0003      	movs	r3, r0
    7e8a:	0020      	movs	r0, r4
    7e8c:	429c      	cmp	r4, r3
    7e8e:	d900      	bls.n	7e92 <rt_suspend+0x4a>
    7e90:	0018      	movs	r0, r3
    7e92:	bd10      	pop	{r4, pc}
    7e94:	2005      	movs	r0, #5
    7e96:	4b0e      	ldr	r3, [pc, #56]	; (7ed0 <rt_suspend+0x88>)
    7e98:	490a      	ldr	r1, [pc, #40]	; (7ec4 <rt_suspend+0x7c>)
    7e9a:	6018      	str	r0, [r3, #0]
    7e9c:	2301      	movs	r3, #1
    7e9e:	4a0a      	ldr	r2, [pc, #40]	; (7ec8 <rt_suspend+0x80>)
    7ea0:	700b      	strb	r3, [r1, #0]
    7ea2:	6813      	ldr	r3, [r2, #0]
    7ea4:	0e9b      	lsrs	r3, r3, #26
    7ea6:	4003      	ands	r3, r0
    7ea8:	704b      	strb	r3, [r1, #1]
    7eaa:	065b      	lsls	r3, r3, #25
    7eac:	6013      	str	r3, [r2, #0]
    7eae:	4b07      	ldr	r3, [pc, #28]	; (7ecc <rt_suspend+0x84>)
    7eb0:	68da      	ldr	r2, [r3, #12]
    7eb2:	2a00      	cmp	r2, #0
    7eb4:	d1e5      	bne.n	7e82 <rt_suspend+0x3a>
    7eb6:	4c07      	ldr	r4, [pc, #28]	; (7ed4 <rt_suspend+0x8c>)
    7eb8:	e7e4      	b.n	7e84 <rt_suspend+0x3c>
    7eba:	46c0      	nop			; (mov r8, r8)
    7ebc:	200060b4 	.word	0x200060b4
    7ec0:	e000e180 	.word	0xe000e180
    7ec4:	2000603d 	.word	0x2000603d
    7ec8:	e000ed04 	.word	0xe000ed04
    7ecc:	2000609c 	.word	0x2000609c
    7ed0:	e000e010 	.word	0xe000e010
    7ed4:	0000ffff 	.word	0x0000ffff

00007ed8 <rt_resume>:
    7ed8:	b5f0      	push	{r4, r5, r6, r7, lr}
    7eda:	4647      	mov	r7, r8
    7edc:	4b32      	ldr	r3, [pc, #200]	; (7fa8 <rt_resume+0xd0>)
    7ede:	b480      	push	{r7}
    7ee0:	0007      	movs	r7, r0
    7ee2:	6818      	ldr	r0, [r3, #0]
    7ee4:	2301      	movs	r3, #1
    7ee6:	7043      	strb	r3, [r0, #1]
    7ee8:	4698      	mov	r8, r3
    7eea:	f7ff fdb7 	bl	7a5c <rt_put_rdy_first>
    7eee:	2200      	movs	r2, #0
    7ef0:	4b2e      	ldr	r3, [pc, #184]	; (7fac <rt_resume+0xd4>)
    7ef2:	4e2f      	ldr	r6, [pc, #188]	; (7fb0 <rt_resume+0xd8>)
    7ef4:	601a      	str	r2, [r3, #0]
    7ef6:	68f3      	ldr	r3, [r6, #12]
    7ef8:	2b00      	cmp	r3, #0
    7efa:	d04f      	beq.n	7f9c <rt_resume+0xc4>
    7efc:	8ab3      	ldrh	r3, [r6, #20]
    7efe:	429f      	cmp	r7, r3
    7f00:	d336      	bcc.n	7f70 <rt_resume+0x98>
    7f02:	4d2c      	ldr	r5, [pc, #176]	; (7fb4 <rt_resume+0xdc>)
    7f04:	1afc      	subs	r4, r7, r3
    7f06:	682a      	ldr	r2, [r5, #0]
    7f08:	4694      	mov	ip, r2
    7f0a:	4463      	add	r3, ip
    7f0c:	602b      	str	r3, [r5, #0]
    7f0e:	4643      	mov	r3, r8
    7f10:	82b3      	strh	r3, [r6, #20]
    7f12:	e006      	b.n	7f22 <rt_resume+0x4a>
    7f14:	682b      	ldr	r3, [r5, #0]
    7f16:	3c01      	subs	r4, #1
    7f18:	3301      	adds	r3, #1
    7f1a:	602b      	str	r3, [r5, #0]
    7f1c:	68f3      	ldr	r3, [r6, #12]
    7f1e:	2b00      	cmp	r3, #0
    7f20:	d003      	beq.n	7f2a <rt_resume+0x52>
    7f22:	f7ff fe31 	bl	7b88 <rt_dec_dly>
    7f26:	2c00      	cmp	r4, #0
    7f28:	d1f4      	bne.n	7f14 <rt_resume+0x3c>
    7f2a:	0038      	movs	r0, r7
    7f2c:	f7fe f99e 	bl	626c <sysUserTimerUpdate>
    7f30:	4821      	ldr	r0, [pc, #132]	; (7fb8 <rt_resume+0xe0>)
    7f32:	f7ff fd7f 	bl	7a34 <rt_get_first>
    7f36:	f000 f963 	bl	8200 <rt_switch_req>
    7f3a:	4b20      	ldr	r3, [pc, #128]	; (7fbc <rt_resume+0xe4>)
    7f3c:	681b      	ldr	r3, [r3, #0]
    7f3e:	2b00      	cmp	r3, #0
    7f40:	db1d      	blt.n	7f7e <rt_resume+0xa6>
    7f42:	491f      	ldr	r1, [pc, #124]	; (7fc0 <rt_resume+0xe8>)
    7f44:	095a      	lsrs	r2, r3, #5
    7f46:	468c      	mov	ip, r1
    7f48:	211f      	movs	r1, #31
    7f4a:	400b      	ands	r3, r1
    7f4c:	391e      	subs	r1, #30
    7f4e:	4099      	lsls	r1, r3
    7f50:	0092      	lsls	r2, r2, #2
    7f52:	4462      	add	r2, ip
    7f54:	6011      	str	r1, [r2, #0]
    7f56:	2100      	movs	r1, #0
    7f58:	4a1a      	ldr	r2, [pc, #104]	; (7fc4 <rt_resume+0xec>)
    7f5a:	7011      	strb	r1, [r2, #0]
    7f5c:	7890      	ldrb	r0, [r2, #2]
    7f5e:	7853      	ldrb	r3, [r2, #1]
    7f60:	4303      	orrs	r3, r0
    7f62:	4819      	ldr	r0, [pc, #100]	; (7fc8 <rt_resume+0xf0>)
    7f64:	071b      	lsls	r3, r3, #28
    7f66:	6003      	str	r3, [r0, #0]
    7f68:	7091      	strb	r1, [r2, #2]
    7f6a:	bc04      	pop	{r2}
    7f6c:	4690      	mov	r8, r2
    7f6e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7f70:	4910      	ldr	r1, [pc, #64]	; (7fb4 <rt_resume+0xdc>)
    7f72:	1bdb      	subs	r3, r3, r7
    7f74:	680a      	ldr	r2, [r1, #0]
    7f76:	82b3      	strh	r3, [r6, #20]
    7f78:	19d2      	adds	r2, r2, r7
    7f7a:	600a      	str	r2, [r1, #0]
    7f7c:	e7d5      	b.n	7f2a <rt_resume+0x52>
    7f7e:	2207      	movs	r2, #7
    7f80:	2000      	movs	r0, #0
    7f82:	4910      	ldr	r1, [pc, #64]	; (7fc4 <rt_resume+0xec>)
    7f84:	4b11      	ldr	r3, [pc, #68]	; (7fcc <rt_resume+0xf4>)
    7f86:	601a      	str	r2, [r3, #0]
    7f88:	7008      	strb	r0, [r1, #0]
    7f8a:	788b      	ldrb	r3, [r1, #2]
    7f8c:	784a      	ldrb	r2, [r1, #1]
    7f8e:	009b      	lsls	r3, r3, #2
    7f90:	4313      	orrs	r3, r2
    7f92:	4a0d      	ldr	r2, [pc, #52]	; (7fc8 <rt_resume+0xf0>)
    7f94:	069b      	lsls	r3, r3, #26
    7f96:	6013      	str	r3, [r2, #0]
    7f98:	7088      	strb	r0, [r1, #2]
    7f9a:	e7e6      	b.n	7f6a <rt_resume+0x92>
    7f9c:	4a05      	ldr	r2, [pc, #20]	; (7fb4 <rt_resume+0xdc>)
    7f9e:	6813      	ldr	r3, [r2, #0]
    7fa0:	19db      	adds	r3, r3, r7
    7fa2:	6013      	str	r3, [r2, #0]
    7fa4:	e7c1      	b.n	7f2a <rt_resume+0x52>
    7fa6:	46c0      	nop			; (mov r8, r8)
    7fa8:	200060b8 	.word	0x200060b8
    7fac:	200060f4 	.word	0x200060f4
    7fb0:	2000609c 	.word	0x2000609c
    7fb4:	20006080 	.word	0x20006080
    7fb8:	20006084 	.word	0x20006084
    7fbc:	200060b4 	.word	0x200060b4
    7fc0:	e000e100 	.word	0xe000e100
    7fc4:	2000603d 	.word	0x2000603d
    7fc8:	e000ed04 	.word	0xe000ed04
    7fcc:	e000e010 	.word	0xe000e010

00007fd0 <rt_tsk_lock>:
    7fd0:	4b13      	ldr	r3, [pc, #76]	; (8020 <rt_tsk_lock+0x50>)
    7fd2:	681b      	ldr	r3, [r3, #0]
    7fd4:	2b00      	cmp	r3, #0
    7fd6:	db14      	blt.n	8002 <rt_tsk_lock+0x32>
    7fd8:	4912      	ldr	r1, [pc, #72]	; (8024 <rt_tsk_lock+0x54>)
    7fda:	095a      	lsrs	r2, r3, #5
    7fdc:	468c      	mov	ip, r1
    7fde:	211f      	movs	r1, #31
    7fe0:	400b      	ands	r3, r1
    7fe2:	391e      	subs	r1, #30
    7fe4:	0008      	movs	r0, r1
    7fe6:	4098      	lsls	r0, r3
    7fe8:	0092      	lsls	r2, r2, #2
    7fea:	4462      	add	r2, ip
    7fec:	6010      	str	r0, [r2, #0]
    7fee:	480e      	ldr	r0, [pc, #56]	; (8028 <rt_tsk_lock+0x58>)
    7ff0:	4a0e      	ldr	r2, [pc, #56]	; (802c <rt_tsk_lock+0x5c>)
    7ff2:	7001      	strb	r1, [r0, #0]
    7ff4:	6813      	ldr	r3, [r2, #0]
    7ff6:	0f1b      	lsrs	r3, r3, #28
    7ff8:	400b      	ands	r3, r1
    7ffa:	7043      	strb	r3, [r0, #1]
    7ffc:	06db      	lsls	r3, r3, #27
    7ffe:	6013      	str	r3, [r2, #0]
    8000:	4770      	bx	lr
    8002:	2005      	movs	r0, #5
    8004:	4b0a      	ldr	r3, [pc, #40]	; (8030 <rt_tsk_lock+0x60>)
    8006:	4908      	ldr	r1, [pc, #32]	; (8028 <rt_tsk_lock+0x58>)
    8008:	6018      	str	r0, [r3, #0]
    800a:	2301      	movs	r3, #1
    800c:	4a07      	ldr	r2, [pc, #28]	; (802c <rt_tsk_lock+0x5c>)
    800e:	700b      	strb	r3, [r1, #0]
    8010:	6813      	ldr	r3, [r2, #0]
    8012:	0e9b      	lsrs	r3, r3, #26
    8014:	4003      	ands	r3, r0
    8016:	704b      	strb	r3, [r1, #1]
    8018:	065b      	lsls	r3, r3, #25
    801a:	6013      	str	r3, [r2, #0]
    801c:	e7f0      	b.n	8000 <rt_tsk_lock+0x30>
    801e:	46c0      	nop			; (mov r8, r8)
    8020:	200060b4 	.word	0x200060b4
    8024:	e000e180 	.word	0xe000e180
    8028:	2000603d 	.word	0x2000603d
    802c:	e000ed04 	.word	0xe000ed04
    8030:	e000e010 	.word	0xe000e010

00008034 <rt_tsk_unlock>:
    8034:	4b13      	ldr	r3, [pc, #76]	; (8084 <rt_tsk_unlock+0x50>)
    8036:	681b      	ldr	r3, [r3, #0]
    8038:	2b00      	cmp	r3, #0
    803a:	db14      	blt.n	8066 <rt_tsk_unlock+0x32>
    803c:	4912      	ldr	r1, [pc, #72]	; (8088 <rt_tsk_unlock+0x54>)
    803e:	095a      	lsrs	r2, r3, #5
    8040:	468c      	mov	ip, r1
    8042:	211f      	movs	r1, #31
    8044:	400b      	ands	r3, r1
    8046:	391e      	subs	r1, #30
    8048:	4099      	lsls	r1, r3
    804a:	0092      	lsls	r2, r2, #2
    804c:	4462      	add	r2, ip
    804e:	6011      	str	r1, [r2, #0]
    8050:	2100      	movs	r1, #0
    8052:	4a0e      	ldr	r2, [pc, #56]	; (808c <rt_tsk_unlock+0x58>)
    8054:	7011      	strb	r1, [r2, #0]
    8056:	7890      	ldrb	r0, [r2, #2]
    8058:	7853      	ldrb	r3, [r2, #1]
    805a:	4303      	orrs	r3, r0
    805c:	480c      	ldr	r0, [pc, #48]	; (8090 <rt_tsk_unlock+0x5c>)
    805e:	071b      	lsls	r3, r3, #28
    8060:	6003      	str	r3, [r0, #0]
    8062:	7091      	strb	r1, [r2, #2]
    8064:	4770      	bx	lr
    8066:	2207      	movs	r2, #7
    8068:	2000      	movs	r0, #0
    806a:	4908      	ldr	r1, [pc, #32]	; (808c <rt_tsk_unlock+0x58>)
    806c:	4b09      	ldr	r3, [pc, #36]	; (8094 <rt_tsk_unlock+0x60>)
    806e:	601a      	str	r2, [r3, #0]
    8070:	7008      	strb	r0, [r1, #0]
    8072:	788b      	ldrb	r3, [r1, #2]
    8074:	784a      	ldrb	r2, [r1, #1]
    8076:	009b      	lsls	r3, r3, #2
    8078:	4313      	orrs	r3, r2
    807a:	4a05      	ldr	r2, [pc, #20]	; (8090 <rt_tsk_unlock+0x5c>)
    807c:	069b      	lsls	r3, r3, #26
    807e:	6013      	str	r3, [r2, #0]
    8080:	7088      	strb	r0, [r1, #2]
    8082:	e7ef      	b.n	8064 <rt_tsk_unlock+0x30>
    8084:	200060b4 	.word	0x200060b4
    8088:	e000e100 	.word	0xe000e100
    808c:	2000603d 	.word	0x2000603d
    8090:	e000ed04 	.word	0xe000ed04
    8094:	e000e010 	.word	0xe000e010

00008098 <rt_psh_req>:
    8098:	4b05      	ldr	r3, [pc, #20]	; (80b0 <rt_psh_req+0x18>)
    809a:	781a      	ldrb	r2, [r3, #0]
    809c:	2a00      	cmp	r2, #0
    809e:	d002      	beq.n	80a6 <rt_psh_req+0xe>
    80a0:	2201      	movs	r2, #1
    80a2:	709a      	strb	r2, [r3, #2]
    80a4:	4770      	bx	lr
    80a6:	2280      	movs	r2, #128	; 0x80
    80a8:	4b02      	ldr	r3, [pc, #8]	; (80b4 <rt_psh_req+0x1c>)
    80aa:	0552      	lsls	r2, r2, #21
    80ac:	601a      	str	r2, [r3, #0]
    80ae:	e7f9      	b.n	80a4 <rt_psh_req+0xc>
    80b0:	2000603d 	.word	0x2000603d
    80b4:	e000ed04 	.word	0xe000ed04

000080b8 <rt_pop_req>:
    80b8:	4b1c      	ldr	r3, [pc, #112]	; (812c <rt_pop_req+0x74>)
    80ba:	b570      	push	{r4, r5, r6, lr}
    80bc:	6818      	ldr	r0, [r3, #0]
    80be:	2301      	movs	r3, #1
    80c0:	7043      	strb	r3, [r0, #1]
    80c2:	f7ff fccb 	bl	7a5c <rt_put_rdy_first>
    80c6:	4d1a      	ldr	r5, [pc, #104]	; (8130 <rt_pop_req+0x78>)
    80c8:	78ab      	ldrb	r3, [r5, #2]
    80ca:	786c      	ldrb	r4, [r5, #1]
    80cc:	2b00      	cmp	r3, #0
    80ce:	d112      	bne.n	80f6 <rt_pop_req+0x3e>
    80d0:	e024      	b.n	811c <rt_pop_req+0x64>
    80d2:	2a01      	cmp	r2, #1
    80d4:	d01e      	beq.n	8114 <rt_pop_req+0x5c>
    80d6:	f7ff fb13 	bl	7700 <rt_sem_psh>
    80da:	78eb      	ldrb	r3, [r5, #3]
    80dc:	3401      	adds	r4, #1
    80de:	429c      	cmp	r4, r3
    80e0:	d016      	beq.n	8110 <rt_pop_req+0x58>
    80e2:	f3ef 8310 	mrs	r3, PRIMASK
    80e6:	b672      	cpsid	i
    80e8:	78ab      	ldrb	r3, [r5, #2]
    80ea:	3b01      	subs	r3, #1
    80ec:	b2db      	uxtb	r3, r3
    80ee:	70ab      	strb	r3, [r5, #2]
    80f0:	b662      	cpsie	i
    80f2:	2b00      	cmp	r3, #0
    80f4:	d012      	beq.n	811c <rt_pop_req+0x64>
    80f6:	00e3      	lsls	r3, r4, #3
    80f8:	18eb      	adds	r3, r5, r3
    80fa:	6858      	ldr	r0, [r3, #4]
    80fc:	7802      	ldrb	r2, [r0, #0]
    80fe:	2a00      	cmp	r2, #0
    8100:	d1e7      	bne.n	80d2 <rt_pop_req+0x1a>
    8102:	8919      	ldrh	r1, [r3, #8]
    8104:	f7ff fe78 	bl	7df8 <rt_evt_psh>
    8108:	78eb      	ldrb	r3, [r5, #3]
    810a:	3401      	adds	r4, #1
    810c:	429c      	cmp	r4, r3
    810e:	d1e8      	bne.n	80e2 <rt_pop_req+0x2a>
    8110:	2400      	movs	r4, #0
    8112:	e7e6      	b.n	80e2 <rt_pop_req+0x2a>
    8114:	6899      	ldr	r1, [r3, #8]
    8116:	f7ff fbf9 	bl	790c <rt_mbx_psh>
    811a:	e7de      	b.n	80da <rt_pop_req+0x22>
    811c:	706c      	strb	r4, [r5, #1]
    811e:	4805      	ldr	r0, [pc, #20]	; (8134 <rt_pop_req+0x7c>)
    8120:	f7ff fc88 	bl	7a34 <rt_get_first>
    8124:	f000 f86c 	bl	8200 <rt_switch_req>
    8128:	bd70      	pop	{r4, r5, r6, pc}
    812a:	46c0      	nop			; (mov r8, r8)
    812c:	200060b8 	.word	0x200060b8
    8130:	20004c58 	.word	0x20004c58
    8134:	20006084 	.word	0x20006084

00008138 <os_tick_init>:
    8138:	4b09      	ldr	r3, [pc, #36]	; (8160 <os_tick_init+0x28>)
    813a:	21ff      	movs	r1, #255	; 0xff
    813c:	681a      	ldr	r2, [r3, #0]
    813e:	4b09      	ldr	r3, [pc, #36]	; (8164 <os_tick_init+0x2c>)
    8140:	2001      	movs	r0, #1
    8142:	601a      	str	r2, [r3, #0]
    8144:	2200      	movs	r2, #0
    8146:	4b08      	ldr	r3, [pc, #32]	; (8168 <os_tick_init+0x30>)
    8148:	0609      	lsls	r1, r1, #24
    814a:	601a      	str	r2, [r3, #0]
    814c:	4b07      	ldr	r3, [pc, #28]	; (816c <os_tick_init+0x34>)
    814e:	3207      	adds	r2, #7
    8150:	601a      	str	r2, [r3, #0]
    8152:	4a07      	ldr	r2, [pc, #28]	; (8170 <os_tick_init+0x38>)
    8154:	4240      	negs	r0, r0
    8156:	6813      	ldr	r3, [r2, #0]
    8158:	430b      	orrs	r3, r1
    815a:	6013      	str	r3, [r2, #0]
    815c:	4770      	bx	lr
    815e:	46c0      	nop			; (mov r8, r8)
    8160:	000088f0 	.word	0x000088f0
    8164:	e000e014 	.word	0xe000e014
    8168:	e000e018 	.word	0xe000e018
    816c:	e000e010 	.word	0xe000e010
    8170:	e000ed20 	.word	0xe000ed20

00008174 <os_tick_val>:
    8174:	4b02      	ldr	r3, [pc, #8]	; (8180 <os_tick_val+0xc>)
    8176:	6818      	ldr	r0, [r3, #0]
    8178:	4b02      	ldr	r3, [pc, #8]	; (8184 <os_tick_val+0x10>)
    817a:	681b      	ldr	r3, [r3, #0]
    817c:	1a18      	subs	r0, r3, r0
    817e:	4770      	bx	lr
    8180:	e000e018 	.word	0xe000e018
    8184:	000088f0 	.word	0x000088f0

00008188 <os_tick_ovf>:
    8188:	4b02      	ldr	r3, [pc, #8]	; (8194 <os_tick_ovf+0xc>)
    818a:	6818      	ldr	r0, [r3, #0]
    818c:	0140      	lsls	r0, r0, #5
    818e:	0fc0      	lsrs	r0, r0, #31
    8190:	4770      	bx	lr
    8192:	46c0      	nop			; (mov r8, r8)
    8194:	e000ed04 	.word	0xe000ed04

00008198 <os_tick_irqack>:
    8198:	4770      	bx	lr
    819a:	46c0      	nop			; (mov r8, r8)

0000819c <rt_systick>:
    819c:	4b0b      	ldr	r3, [pc, #44]	; (81cc <rt_systick+0x30>)
    819e:	b510      	push	{r4, lr}
    81a0:	6818      	ldr	r0, [r3, #0]
    81a2:	2301      	movs	r3, #1
    81a4:	7043      	strb	r3, [r0, #1]
    81a6:	f7ff fc59 	bl	7a5c <rt_put_rdy_first>
    81aa:	f000 faeb 	bl	8784 <rt_chk_robin>
    81ae:	4a08      	ldr	r2, [pc, #32]	; (81d0 <rt_systick+0x34>)
    81b0:	6813      	ldr	r3, [r2, #0]
    81b2:	3301      	adds	r3, #1
    81b4:	6013      	str	r3, [r2, #0]
    81b6:	f7ff fce7 	bl	7b88 <rt_dec_dly>
    81ba:	f7fd ffed 	bl	6198 <sysTimerTick>
    81be:	4805      	ldr	r0, [pc, #20]	; (81d4 <rt_systick+0x38>)
    81c0:	f7ff fc38 	bl	7a34 <rt_get_first>
    81c4:	f000 f81c 	bl	8200 <rt_switch_req>
    81c8:	bd10      	pop	{r4, pc}
    81ca:	46c0      	nop			; (mov r8, r8)
    81cc:	200060b8 	.word	0x200060b8
    81d0:	20006080 	.word	0x20006080
    81d4:	20006084 	.word	0x20006084

000081d8 <rt_stk_check>:
    81d8:	4b07      	ldr	r3, [pc, #28]	; (81f8 <rt_stk_check+0x20>)
    81da:	b510      	push	{r4, lr}
    81dc:	681b      	ldr	r3, [r3, #0]
    81de:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    81e0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    81e2:	429a      	cmp	r2, r3
    81e4:	d803      	bhi.n	81ee <rt_stk_check+0x16>
    81e6:	4b05      	ldr	r3, [pc, #20]	; (81fc <rt_stk_check+0x24>)
    81e8:	6812      	ldr	r2, [r2, #0]
    81ea:	429a      	cmp	r2, r3
    81ec:	d002      	beq.n	81f4 <rt_stk_check+0x1c>
    81ee:	2001      	movs	r0, #1
    81f0:	f7f9 fba2 	bl	1938 <os_error>
    81f4:	bd10      	pop	{r4, pc}
    81f6:	46c0      	nop			; (mov r8, r8)
    81f8:	200060b8 	.word	0x200060b8
    81fc:	e25a2ea5 	.word	0xe25a2ea5

00008200 <rt_switch_req>:
    8200:	4b02      	ldr	r3, [pc, #8]	; (820c <rt_switch_req+0xc>)
    8202:	6058      	str	r0, [r3, #4]
    8204:	2302      	movs	r3, #2
    8206:	7043      	strb	r3, [r0, #1]
    8208:	4770      	bx	lr
    820a:	46c0      	nop			; (mov r8, r8)
    820c:	200060b8 	.word	0x200060b8

00008210 <rt_dispatch>:
    8210:	b570      	push	{r4, r5, r6, lr}
    8212:	1e04      	subs	r4, r0, #0
    8214:	d015      	beq.n	8242 <rt_dispatch+0x32>
    8216:	4d0f      	ldr	r5, [pc, #60]	; (8254 <rt_dispatch+0x44>)
    8218:	78a2      	ldrb	r2, [r4, #2]
    821a:	6828      	ldr	r0, [r5, #0]
    821c:	7883      	ldrb	r3, [r0, #2]
    821e:	429a      	cmp	r2, r3
    8220:	d806      	bhi.n	8230 <rt_dispatch+0x20>
    8222:	2301      	movs	r3, #1
    8224:	0021      	movs	r1, r4
    8226:	7063      	strb	r3, [r4, #1]
    8228:	480b      	ldr	r0, [pc, #44]	; (8258 <rt_dispatch+0x48>)
    822a:	f7ff fbdd 	bl	79e8 <rt_put_prio>
    822e:	bd70      	pop	{r4, r5, r6, pc}
    8230:	f7ff fc14 	bl	7a5c <rt_put_rdy_first>
    8234:	2301      	movs	r3, #1
    8236:	682a      	ldr	r2, [r5, #0]
    8238:	7053      	strb	r3, [r2, #1]
    823a:	3301      	adds	r3, #1
    823c:	606c      	str	r4, [r5, #4]
    823e:	7063      	strb	r3, [r4, #1]
    8240:	e7f5      	b.n	822e <rt_dispatch+0x1e>
    8242:	4805      	ldr	r0, [pc, #20]	; (8258 <rt_dispatch+0x48>)
    8244:	f7ff fbf6 	bl	7a34 <rt_get_first>
    8248:	4b02      	ldr	r3, [pc, #8]	; (8254 <rt_dispatch+0x44>)
    824a:	6058      	str	r0, [r3, #4]
    824c:	2302      	movs	r3, #2
    824e:	7043      	strb	r3, [r0, #1]
    8250:	e7ed      	b.n	822e <rt_dispatch+0x1e>
    8252:	46c0      	nop			; (mov r8, r8)
    8254:	200060b8 	.word	0x200060b8
    8258:	20006084 	.word	0x20006084

0000825c <rt_block>:
    825c:	b570      	push	{r4, r5, r6, lr}
    825e:	000d      	movs	r5, r1
    8260:	2800      	cmp	r0, #0
    8262:	d00f      	beq.n	8284 <rt_block+0x28>
    8264:	4b08      	ldr	r3, [pc, #32]	; (8288 <rt_block+0x2c>)
    8266:	4c09      	ldr	r4, [pc, #36]	; (828c <rt_block+0x30>)
    8268:	4298      	cmp	r0, r3
    826a:	d003      	beq.n	8274 <rt_block+0x18>
    826c:	0001      	movs	r1, r0
    826e:	6820      	ldr	r0, [r4, #0]
    8270:	f7ff fc58 	bl	7b24 <rt_put_dly>
    8274:	6823      	ldr	r3, [r4, #0]
    8276:	4806      	ldr	r0, [pc, #24]	; (8290 <rt_block+0x34>)
    8278:	705d      	strb	r5, [r3, #1]
    827a:	f7ff fbdb 	bl	7a34 <rt_get_first>
    827e:	2302      	movs	r3, #2
    8280:	6060      	str	r0, [r4, #4]
    8282:	7043      	strb	r3, [r0, #1]
    8284:	bd70      	pop	{r4, r5, r6, pc}
    8286:	46c0      	nop			; (mov r8, r8)
    8288:	0000ffff 	.word	0x0000ffff
    828c:	200060b8 	.word	0x200060b8
    8290:	20006084 	.word	0x20006084

00008294 <rt_tsk_pass>:
    8294:	b570      	push	{r4, r5, r6, lr}
    8296:	f7ff fbeb 	bl	7a70 <rt_get_same_rdy_prio>
    829a:	1e04      	subs	r4, r0, #0
    829c:	d00a      	beq.n	82b4 <rt_tsk_pass+0x20>
    829e:	4d06      	ldr	r5, [pc, #24]	; (82b8 <rt_tsk_pass+0x24>)
    82a0:	4806      	ldr	r0, [pc, #24]	; (82bc <rt_tsk_pass+0x28>)
    82a2:	6829      	ldr	r1, [r5, #0]
    82a4:	f7ff fba0 	bl	79e8 <rt_put_prio>
    82a8:	2301      	movs	r3, #1
    82aa:	682a      	ldr	r2, [r5, #0]
    82ac:	7053      	strb	r3, [r2, #1]
    82ae:	3301      	adds	r3, #1
    82b0:	606c      	str	r4, [r5, #4]
    82b2:	7063      	strb	r3, [r4, #1]
    82b4:	bd70      	pop	{r4, r5, r6, pc}
    82b6:	46c0      	nop			; (mov r8, r8)
    82b8:	200060b8 	.word	0x200060b8
    82bc:	20006084 	.word	0x20006084

000082c0 <rt_tsk_self>:
    82c0:	4b03      	ldr	r3, [pc, #12]	; (82d0 <rt_tsk_self+0x10>)
    82c2:	681b      	ldr	r3, [r3, #0]
    82c4:	2b00      	cmp	r3, #0
    82c6:	d001      	beq.n	82cc <rt_tsk_self+0xc>
    82c8:	78d8      	ldrb	r0, [r3, #3]
    82ca:	4770      	bx	lr
    82cc:	2000      	movs	r0, #0
    82ce:	e7fc      	b.n	82ca <rt_tsk_self+0xa>
    82d0:	200060b8 	.word	0x200060b8

000082d4 <rt_tsk_prio>:
    82d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    82d6:	2800      	cmp	r0, #0
    82d8:	d10c      	bne.n	82f4 <rt_tsk_prio+0x20>
    82da:	2224      	movs	r2, #36	; 0x24
    82dc:	4c27      	ldr	r4, [pc, #156]	; (837c <rt_tsk_prio+0xa8>)
    82de:	6823      	ldr	r3, [r4, #0]
    82e0:	7099      	strb	r1, [r3, #2]
    82e2:	5499      	strb	r1, [r3, r2]
    82e4:	4d26      	ldr	r5, [pc, #152]	; (8380 <rt_tsk_prio+0xac>)
    82e6:	686a      	ldr	r2, [r5, #4]
    82e8:	7892      	ldrb	r2, [r2, #2]
    82ea:	428a      	cmp	r2, r1
    82ec:	d82c      	bhi.n	8348 <rt_tsk_prio+0x74>
    82ee:	2200      	movs	r2, #0
    82f0:	0010      	movs	r0, r2
    82f2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    82f4:	4b23      	ldr	r3, [pc, #140]	; (8384 <rt_tsk_prio+0xb0>)
    82f6:	22ff      	movs	r2, #255	; 0xff
    82f8:	881b      	ldrh	r3, [r3, #0]
    82fa:	4298      	cmp	r0, r3
    82fc:	d8f8      	bhi.n	82f0 <rt_tsk_prio+0x1c>
    82fe:	1e43      	subs	r3, r0, #1
    8300:	4821      	ldr	r0, [pc, #132]	; (8388 <rt_tsk_prio+0xb4>)
    8302:	009b      	lsls	r3, r3, #2
    8304:	581d      	ldr	r5, [r3, r0]
    8306:	2d00      	cmp	r5, #0
    8308:	d0f2      	beq.n	82f0 <rt_tsk_prio+0x1c>
    830a:	2324      	movs	r3, #36	; 0x24
    830c:	4c1b      	ldr	r4, [pc, #108]	; (837c <rt_tsk_prio+0xa8>)
    830e:	70a9      	strb	r1, [r5, #2]
    8310:	54e9      	strb	r1, [r5, r3]
    8312:	6823      	ldr	r3, [r4, #0]
    8314:	429d      	cmp	r5, r3
    8316:	d0e5      	beq.n	82e4 <rt_tsk_prio+0x10>
    8318:	0028      	movs	r0, r5
    831a:	f7ff fbbb 	bl	7a94 <rt_resort_prio>
    831e:	786d      	ldrb	r5, [r5, #1]
    8320:	2d01      	cmp	r5, #1
    8322:	d1e4      	bne.n	82ee <rt_tsk_prio+0x1a>
    8324:	4f16      	ldr	r7, [pc, #88]	; (8380 <rt_tsk_prio+0xac>)
    8326:	0038      	movs	r0, r7
    8328:	f7ff fb84 	bl	7a34 <rt_get_first>
    832c:	1e06      	subs	r6, r0, #0
    832e:	d023      	beq.n	8378 <rt_tsk_prio+0xa4>
    8330:	6820      	ldr	r0, [r4, #0]
    8332:	78b2      	ldrb	r2, [r6, #2]
    8334:	7883      	ldrb	r3, [r0, #2]
    8336:	429a      	cmp	r2, r3
    8338:	d815      	bhi.n	8366 <rt_tsk_prio+0x92>
    833a:	7075      	strb	r5, [r6, #1]
    833c:	0031      	movs	r1, r6
    833e:	0038      	movs	r0, r7
    8340:	f7ff fb52 	bl	79e8 <rt_put_prio>
    8344:	2200      	movs	r2, #0
    8346:	e7d3      	b.n	82f0 <rt_tsk_prio+0x1c>
    8348:	0019      	movs	r1, r3
    834a:	0028      	movs	r0, r5
    834c:	f7ff fb4c 	bl	79e8 <rt_put_prio>
    8350:	2301      	movs	r3, #1
    8352:	0028      	movs	r0, r5
    8354:	6822      	ldr	r2, [r4, #0]
    8356:	7053      	strb	r3, [r2, #1]
    8358:	f7ff fb6c 	bl	7a34 <rt_get_first>
    835c:	2302      	movs	r3, #2
    835e:	6060      	str	r0, [r4, #4]
    8360:	2200      	movs	r2, #0
    8362:	7043      	strb	r3, [r0, #1]
    8364:	e7c4      	b.n	82f0 <rt_tsk_prio+0x1c>
    8366:	f7ff fb79 	bl	7a5c <rt_put_rdy_first>
    836a:	6823      	ldr	r3, [r4, #0]
    836c:	2200      	movs	r2, #0
    836e:	705d      	strb	r5, [r3, #1]
    8370:	2302      	movs	r3, #2
    8372:	6066      	str	r6, [r4, #4]
    8374:	7073      	strb	r3, [r6, #1]
    8376:	e7bb      	b.n	82f0 <rt_tsk_prio+0x1c>
    8378:	0038      	movs	r0, r7
    837a:	e7ed      	b.n	8358 <rt_tsk_prio+0x84>
    837c:	200060b8 	.word	0x200060b8
    8380:	20006084 	.word	0x20006084
    8384:	000088dc 	.word	0x000088dc
    8388:	20004cdc 	.word	0x20004cdc

0000838c <rt_tsk_create>:
    838c:	b5f0      	push	{r4, r5, r6, r7, lr}
    838e:	4647      	mov	r7, r8
    8390:	b480      	push	{r7}
    8392:	001f      	movs	r7, r3
    8394:	23ff      	movs	r3, #255	; 0xff
    8396:	400b      	ands	r3, r1
    8398:	4690      	mov	r8, r2
    839a:	001a      	movs	r2, r3
    839c:	4253      	negs	r3, r2
    839e:	4153      	adcs	r3, r2
    83a0:	0006      	movs	r6, r0
    83a2:	4831      	ldr	r0, [pc, #196]	; (8468 <rt_tsk_create+0xdc>)
    83a4:	18cc      	adds	r4, r1, r3
    83a6:	f7fe ff95 	bl	72d4 <rt_alloc_box>
    83aa:	1e05      	subs	r5, r0, #0
    83ac:	d032      	beq.n	8414 <rt_tsk_create+0x88>
    83ae:	4643      	mov	r3, r8
    83b0:	2101      	movs	r1, #1
    83b2:	62c3      	str	r3, [r0, #44]	; 0x2c
    83b4:	2300      	movs	r3, #0
    83b6:	0a22      	lsrs	r2, r4, #8
    83b8:	7041      	strb	r1, [r0, #1]
    83ba:	b2e4      	uxtb	r4, r4
    83bc:	3123      	adds	r1, #35	; 0x23
    83be:	b292      	uxth	r2, r2
    83c0:	7003      	strb	r3, [r0, #0]
    83c2:	84c2      	strh	r2, [r0, #38]	; 0x26
    83c4:	61c7      	str	r7, [r0, #28]
    83c6:	7084      	strb	r4, [r0, #2]
    83c8:	5444      	strb	r4, [r0, r1]
    83ca:	2100      	movs	r1, #0
    83cc:	6043      	str	r3, [r0, #4]
    83ce:	6083      	str	r3, [r0, #8]
    83d0:	60c3      	str	r3, [r0, #12]
    83d2:	6103      	str	r3, [r0, #16]
    83d4:	6203      	str	r3, [r0, #32]
    83d6:	8283      	strh	r3, [r0, #20]
    83d8:	82c3      	strh	r3, [r0, #22]
    83da:	8303      	strh	r3, [r0, #24]
    83dc:	8343      	strh	r3, [r0, #26]
    83de:	3325      	adds	r3, #37	; 0x25
    83e0:	54c1      	strb	r1, [r0, r3]
    83e2:	2a00      	cmp	r2, #0
    83e4:	d01a      	beq.n	841c <rt_tsk_create+0x90>
    83e6:	0031      	movs	r1, r6
    83e8:	0028      	movs	r0, r5
    83ea:	f7fe fe99 	bl	7120 <rt_init_stack>
    83ee:	4b1f      	ldr	r3, [pc, #124]	; (846c <rt_tsk_create+0xe0>)
    83f0:	8819      	ldrh	r1, [r3, #0]
    83f2:	2900      	cmp	r1, #0
    83f4:	d00e      	beq.n	8414 <rt_tsk_create+0x88>
    83f6:	481e      	ldr	r0, [pc, #120]	; (8470 <rt_tsk_create+0xe4>)
    83f8:	6803      	ldr	r3, [r0, #0]
    83fa:	2b00      	cmp	r3, #0
    83fc:	d02f      	beq.n	845e <rt_tsk_create+0xd2>
    83fe:	2201      	movs	r2, #1
    8400:	e005      	b.n	840e <rt_tsk_create+0x82>
    8402:	00a3      	lsls	r3, r4, #2
    8404:	3b04      	subs	r3, #4
    8406:	58c3      	ldr	r3, [r0, r3]
    8408:	2b00      	cmp	r3, #0
    840a:	d00c      	beq.n	8426 <rt_tsk_create+0x9a>
    840c:	0022      	movs	r2, r4
    840e:	1c54      	adds	r4, r2, #1
    8410:	428c      	cmp	r4, r1
    8412:	d9f6      	bls.n	8402 <rt_tsk_create+0x76>
    8414:	2000      	movs	r0, #0
    8416:	bc04      	pop	{r2}
    8418:	4690      	mov	r8, r2
    841a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    841c:	4815      	ldr	r0, [pc, #84]	; (8474 <rt_tsk_create+0xe8>)
    841e:	f7fe ff59 	bl	72d4 <rt_alloc_box>
    8422:	62e8      	str	r0, [r5, #44]	; 0x2c
    8424:	e7df      	b.n	83e6 <rt_tsk_create+0x5a>
    8426:	b2e3      	uxtb	r3, r4
    8428:	0092      	lsls	r2, r2, #2
    842a:	4e13      	ldr	r6, [pc, #76]	; (8478 <rt_tsk_create+0xec>)
    842c:	5085      	str	r5, [r0, r2]
    842e:	70eb      	strb	r3, [r5, #3]
    8430:	6830      	ldr	r0, [r6, #0]
    8432:	78aa      	ldrb	r2, [r5, #2]
    8434:	7883      	ldrb	r3, [r0, #2]
    8436:	429a      	cmp	r2, r3
    8438:	d807      	bhi.n	844a <rt_tsk_create+0xbe>
    843a:	2301      	movs	r3, #1
    843c:	480f      	ldr	r0, [pc, #60]	; (847c <rt_tsk_create+0xf0>)
    843e:	706b      	strb	r3, [r5, #1]
    8440:	0029      	movs	r1, r5
    8442:	f7ff fad1 	bl	79e8 <rt_put_prio>
    8446:	0020      	movs	r0, r4
    8448:	e7e5      	b.n	8416 <rt_tsk_create+0x8a>
    844a:	f7ff fb07 	bl	7a5c <rt_put_rdy_first>
    844e:	2301      	movs	r3, #1
    8450:	6832      	ldr	r2, [r6, #0]
    8452:	0020      	movs	r0, r4
    8454:	7053      	strb	r3, [r2, #1]
    8456:	3301      	adds	r3, #1
    8458:	6075      	str	r5, [r6, #4]
    845a:	706b      	strb	r3, [r5, #1]
    845c:	e7db      	b.n	8416 <rt_tsk_create+0x8a>
    845e:	2301      	movs	r3, #1
    8460:	2200      	movs	r2, #0
    8462:	2401      	movs	r4, #1
    8464:	e7e0      	b.n	8428 <rt_tsk_create+0x9c>
    8466:	46c0      	nop			; (mov r8, r8)
    8468:	20000908 	.word	0x20000908
    846c:	000088dc 	.word	0x000088dc
    8470:	20004cdc 	.word	0x20004cdc
    8474:	200009e8 	.word	0x200009e8
    8478:	200060b8 	.word	0x200060b8
    847c:	20006084 	.word	0x20006084

00008480 <rt_tsk_delete>:
    8480:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8482:	4644      	mov	r4, r8
    8484:	465f      	mov	r7, fp
    8486:	4656      	mov	r6, sl
    8488:	464d      	mov	r5, r9
    848a:	4b5a      	ldr	r3, [pc, #360]	; (85f4 <rt_tsk_delete+0x174>)
    848c:	b4f0      	push	{r4, r5, r6, r7}
    848e:	4698      	mov	r8, r3
    8490:	681c      	ldr	r4, [r3, #0]
    8492:	2800      	cmp	r0, #0
    8494:	d00e      	beq.n	84b4 <rt_tsk_delete+0x34>
    8496:	78e3      	ldrb	r3, [r4, #3]
    8498:	4298      	cmp	r0, r3
    849a:	d00b      	beq.n	84b4 <rt_tsk_delete+0x34>
    849c:	4b56      	ldr	r3, [pc, #344]	; (85f8 <rt_tsk_delete+0x178>)
    849e:	881a      	ldrh	r2, [r3, #0]
    84a0:	23ff      	movs	r3, #255	; 0xff
    84a2:	4290      	cmp	r0, r2
    84a4:	d952      	bls.n	854c <rt_tsk_delete+0xcc>
    84a6:	0018      	movs	r0, r3
    84a8:	bc3c      	pop	{r2, r3, r4, r5}
    84aa:	4690      	mov	r8, r2
    84ac:	4699      	mov	r9, r3
    84ae:	46a2      	mov	sl, r4
    84b0:	46ab      	mov	fp, r5
    84b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    84b4:	2300      	movs	r3, #0
    84b6:	7063      	strb	r3, [r4, #1]
    84b8:	f7fc fa57 	bl	496a <rt_get_PSP>
    84bc:	62a0      	str	r0, [r4, #40]	; 0x28
    84be:	f7ff fe8b 	bl	81d8 <rt_stk_check>
    84c2:	4643      	mov	r3, r8
    84c4:	681a      	ldr	r2, [r3, #0]
    84c6:	4f4d      	ldr	r7, [pc, #308]	; (85fc <rt_tsk_delete+0x17c>)
    84c8:	6a14      	ldr	r4, [r2, #32]
    84ca:	2c00      	cmp	r4, #0
    84cc:	d023      	beq.n	8516 <rt_tsk_delete+0x96>
    84ce:	2601      	movs	r6, #1
    84d0:	e016      	b.n	8500 <rt_tsk_delete+0x80>
    84d2:	0020      	movs	r0, r4
    84d4:	f7ff faae 	bl	7a34 <rt_get_first>
    84d8:	0005      	movs	r5, r0
    84da:	2100      	movs	r1, #0
    84dc:	f7fe fe78 	bl	71d0 <rt_ret_val>
    84e0:	0028      	movs	r0, r5
    84e2:	f7ff fbdf 	bl	7ca4 <rt_rmv_dly>
    84e6:	706e      	strb	r6, [r5, #1]
    84e8:	0029      	movs	r1, r5
    84ea:	0038      	movs	r0, r7
    84ec:	f7ff fa7c 	bl	79e8 <rt_put_prio>
    84f0:	68e3      	ldr	r3, [r4, #12]
    84f2:	6a2a      	ldr	r2, [r5, #32]
    84f4:	8066      	strh	r6, [r4, #2]
    84f6:	60a5      	str	r5, [r4, #8]
    84f8:	60e2      	str	r2, [r4, #12]
    84fa:	622c      	str	r4, [r5, #32]
    84fc:	1e1c      	subs	r4, r3, #0
    84fe:	d008      	beq.n	8512 <rt_tsk_delete+0x92>
    8500:	6863      	ldr	r3, [r4, #4]
    8502:	2b00      	cmp	r3, #0
    8504:	d1e5      	bne.n	84d2 <rt_tsk_delete+0x52>
    8506:	68e2      	ldr	r2, [r4, #12]
    8508:	8063      	strh	r3, [r4, #2]
    850a:	60a3      	str	r3, [r4, #8]
    850c:	60e3      	str	r3, [r4, #12]
    850e:	1e14      	subs	r4, r2, #0
    8510:	d1f6      	bne.n	8500 <rt_tsk_delete+0x80>
    8512:	4643      	mov	r3, r8
    8514:	681a      	ldr	r2, [r3, #0]
    8516:	2400      	movs	r4, #0
    8518:	78d3      	ldrb	r3, [r2, #3]
    851a:	4939      	ldr	r1, [pc, #228]	; (8600 <rt_tsk_delete+0x180>)
    851c:	3b01      	subs	r3, #1
    851e:	009b      	lsls	r3, r3, #2
    8520:	505c      	str	r4, [r3, r1]
    8522:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    8524:	4837      	ldr	r0, [pc, #220]	; (8604 <rt_tsk_delete+0x184>)
    8526:	f7fe fef5 	bl	7314 <rt_free_box>
    852a:	4643      	mov	r3, r8
    852c:	6819      	ldr	r1, [r3, #0]
    852e:	4836      	ldr	r0, [pc, #216]	; (8608 <rt_tsk_delete+0x188>)
    8530:	62cc      	str	r4, [r1, #44]	; 0x2c
    8532:	f7fe feef 	bl	7314 <rt_free_box>
    8536:	4643      	mov	r3, r8
    8538:	601c      	str	r4, [r3, #0]
    853a:	0038      	movs	r0, r7
    853c:	f7ff fa7a 	bl	7a34 <rt_get_first>
    8540:	4643      	mov	r3, r8
    8542:	6058      	str	r0, [r3, #4]
    8544:	2302      	movs	r3, #2
    8546:	7043      	strb	r3, [r0, #1]
    8548:	2300      	movs	r3, #0
    854a:	e7ac      	b.n	84a6 <rt_tsk_delete+0x26>
    854c:	4a2c      	ldr	r2, [pc, #176]	; (8600 <rt_tsk_delete+0x180>)
    854e:	1e46      	subs	r6, r0, #1
    8550:	4692      	mov	sl, r2
    8552:	00b2      	lsls	r2, r6, #2
    8554:	4693      	mov	fp, r2
    8556:	4652      	mov	r2, sl
    8558:	4659      	mov	r1, fp
    855a:	5856      	ldr	r6, [r2, r1]
    855c:	2e00      	cmp	r6, #0
    855e:	d0a2      	beq.n	84a6 <rt_tsk_delete+0x26>
    8560:	0030      	movs	r0, r6
    8562:	f7ff fb89 	bl	7c78 <rt_rmv_list>
    8566:	0030      	movs	r0, r6
    8568:	f7ff fb9c 	bl	7ca4 <rt_rmv_dly>
    856c:	2301      	movs	r3, #1
    856e:	6a34      	ldr	r4, [r6, #32]
    8570:	4f22      	ldr	r7, [pc, #136]	; (85fc <rt_tsk_delete+0x17c>)
    8572:	4699      	mov	r9, r3
    8574:	2c00      	cmp	r4, #0
    8576:	d11a      	bne.n	85ae <rt_tsk_delete+0x12e>
    8578:	e022      	b.n	85c0 <rt_tsk_delete+0x140>
    857a:	0020      	movs	r0, r4
    857c:	f7ff fa5a 	bl	7a34 <rt_get_first>
    8580:	0005      	movs	r5, r0
    8582:	2100      	movs	r1, #0
    8584:	f7fe fe24 	bl	71d0 <rt_ret_val>
    8588:	0028      	movs	r0, r5
    858a:	f7ff fb8b 	bl	7ca4 <rt_rmv_dly>
    858e:	464b      	mov	r3, r9
    8590:	0029      	movs	r1, r5
    8592:	706b      	strb	r3, [r5, #1]
    8594:	0038      	movs	r0, r7
    8596:	f7ff fa27 	bl	79e8 <rt_put_prio>
    859a:	464a      	mov	r2, r9
    859c:	68e3      	ldr	r3, [r4, #12]
    859e:	8062      	strh	r2, [r4, #2]
    85a0:	6a2a      	ldr	r2, [r5, #32]
    85a2:	60a5      	str	r5, [r4, #8]
    85a4:	60e2      	str	r2, [r4, #12]
    85a6:	622c      	str	r4, [r5, #32]
    85a8:	001c      	movs	r4, r3
    85aa:	2c00      	cmp	r4, #0
    85ac:	d008      	beq.n	85c0 <rt_tsk_delete+0x140>
    85ae:	6863      	ldr	r3, [r4, #4]
    85b0:	2b00      	cmp	r3, #0
    85b2:	d1e2      	bne.n	857a <rt_tsk_delete+0xfa>
    85b4:	68e2      	ldr	r2, [r4, #12]
    85b6:	8063      	strh	r3, [r4, #2]
    85b8:	60a3      	str	r3, [r4, #8]
    85ba:	60e3      	str	r3, [r4, #12]
    85bc:	0014      	movs	r4, r2
    85be:	e7f4      	b.n	85aa <rt_tsk_delete+0x12a>
    85c0:	4653      	mov	r3, sl
    85c2:	465a      	mov	r2, fp
    85c4:	2400      	movs	r4, #0
    85c6:	509c      	str	r4, [r3, r2]
    85c8:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    85ca:	480e      	ldr	r0, [pc, #56]	; (8604 <rt_tsk_delete+0x184>)
    85cc:	f7fe fea2 	bl	7314 <rt_free_box>
    85d0:	0031      	movs	r1, r6
    85d2:	62f4      	str	r4, [r6, #44]	; 0x2c
    85d4:	480c      	ldr	r0, [pc, #48]	; (8608 <rt_tsk_delete+0x188>)
    85d6:	f7fe fe9d 	bl	7314 <rt_free_box>
    85da:	4643      	mov	r3, r8
    85dc:	6819      	ldr	r1, [r3, #0]
    85de:	687b      	ldr	r3, [r7, #4]
    85e0:	789a      	ldrb	r2, [r3, #2]
    85e2:	788b      	ldrb	r3, [r1, #2]
    85e4:	429a      	cmp	r2, r3
    85e6:	d9af      	bls.n	8548 <rt_tsk_delete+0xc8>
    85e8:	2301      	movs	r3, #1
    85ea:	0038      	movs	r0, r7
    85ec:	704b      	strb	r3, [r1, #1]
    85ee:	f7ff f9fb 	bl	79e8 <rt_put_prio>
    85f2:	e7a2      	b.n	853a <rt_tsk_delete+0xba>
    85f4:	200060b8 	.word	0x200060b8
    85f8:	000088dc 	.word	0x000088dc
    85fc:	20006084 	.word	0x20006084
    8600:	20004cdc 	.word	0x20004cdc
    8604:	200009e8 	.word	0x200009e8
    8608:	20000908 	.word	0x20000908

0000860c <rt_sys_init>:
    860c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    860e:	4b2b      	ldr	r3, [pc, #172]	; (86bc <rt_sys_init+0xb0>)
    8610:	881a      	ldrh	r2, [r3, #0]
    8612:	2a00      	cmp	r2, #0
    8614:	d004      	beq.n	8620 <rt_sys_init+0x14>
    8616:	0092      	lsls	r2, r2, #2
    8618:	2100      	movs	r1, #0
    861a:	4829      	ldr	r0, [pc, #164]	; (86c0 <rt_sys_init+0xb4>)
    861c:	f7fc fbd8 	bl	4dd0 <memset>
    8620:	4b28      	ldr	r3, [pc, #160]	; (86c4 <rt_sys_init+0xb8>)
    8622:	2234      	movs	r2, #52	; 0x34
    8624:	8819      	ldrh	r1, [r3, #0]
    8626:	4828      	ldr	r0, [pc, #160]	; (86c8 <rt_sys_init+0xbc>)
    8628:	f7fe fe28 	bl	727c <_init_box>
    862c:	2280      	movs	r2, #128	; 0x80
    862e:	4b27      	ldr	r3, [pc, #156]	; (86cc <rt_sys_init+0xc0>)
    8630:	0612      	lsls	r2, r2, #24
    8632:	881b      	ldrh	r3, [r3, #0]
    8634:	4f26      	ldr	r7, [pc, #152]	; (86d0 <rt_sys_init+0xc4>)
    8636:	431a      	orrs	r2, r3
    8638:	4b26      	ldr	r3, [pc, #152]	; (86d4 <rt_sys_init+0xc8>)
    863a:	0038      	movs	r0, r7
    863c:	6819      	ldr	r1, [r3, #0]
    863e:	f7fe fe1d 	bl	727c <_init_box>
    8642:	4b25      	ldr	r3, [pc, #148]	; (86d8 <rt_sys_init+0xcc>)
    8644:	2208      	movs	r2, #8
    8646:	6818      	ldr	r0, [r3, #0]
    8648:	4b24      	ldr	r3, [pc, #144]	; (86dc <rt_sys_init+0xd0>)
    864a:	2600      	movs	r6, #0
    864c:	8819      	ldrh	r1, [r3, #0]
    864e:	f7fe fe15 	bl	727c <_init_box>
    8652:	23ff      	movs	r3, #255	; 0xff
    8654:	2500      	movs	r5, #0
    8656:	4c22      	ldr	r4, [pc, #136]	; (86e0 <rt_sys_init+0xd4>)
    8658:	0038      	movs	r0, r7
    865a:	70e3      	strb	r3, [r4, #3]
    865c:	3bfe      	subs	r3, #254	; 0xfe
    865e:	7063      	strb	r3, [r4, #1]
    8660:	3323      	adds	r3, #35	; 0x23
    8662:	54e6      	strb	r6, [r4, r3]
    8664:	3301      	adds	r3, #1
    8666:	54e6      	strb	r6, [r4, r3]
    8668:	84e5      	strh	r5, [r4, #38]	; 0x26
    866a:	7026      	strb	r6, [r4, #0]
    866c:	70a6      	strb	r6, [r4, #2]
    866e:	6065      	str	r5, [r4, #4]
    8670:	60a5      	str	r5, [r4, #8]
    8672:	60e5      	str	r5, [r4, #12]
    8674:	6125      	str	r5, [r4, #16]
    8676:	6225      	str	r5, [r4, #32]
    8678:	82a5      	strh	r5, [r4, #20]
    867a:	82e5      	strh	r5, [r4, #22]
    867c:	8325      	strh	r5, [r4, #24]
    867e:	8365      	strh	r5, [r4, #26]
    8680:	f7fe fe28 	bl	72d4 <rt_alloc_box>
    8684:	4917      	ldr	r1, [pc, #92]	; (86e4 <rt_sys_init+0xd8>)
    8686:	62e0      	str	r0, [r4, #44]	; 0x2c
    8688:	0020      	movs	r0, r4
    868a:	f7fe fd49 	bl	7120 <rt_init_stack>
    868e:	2204      	movs	r2, #4
    8690:	4b15      	ldr	r3, [pc, #84]	; (86e8 <rt_sys_init+0xdc>)
    8692:	701a      	strb	r2, [r3, #0]
    8694:	605d      	str	r5, [r3, #4]
    8696:	4b15      	ldr	r3, [pc, #84]	; (86ec <rt_sys_init+0xe0>)
    8698:	701a      	strb	r2, [r3, #0]
    869a:	60dd      	str	r5, [r3, #12]
    869c:	611d      	str	r5, [r3, #16]
    869e:	829d      	strh	r5, [r3, #20]
    86a0:	4b13      	ldr	r3, [pc, #76]	; (86f0 <rt_sys_init+0xe4>)
    86a2:	4a14      	ldr	r2, [pc, #80]	; (86f4 <rt_sys_init+0xe8>)
    86a4:	601c      	str	r4, [r3, #0]
    86a6:	2302      	movs	r3, #2
    86a8:	7812      	ldrb	r2, [r2, #0]
    86aa:	7063      	strb	r3, [r4, #1]
    86ac:	4b12      	ldr	r3, [pc, #72]	; (86f8 <rt_sys_init+0xec>)
    86ae:	701e      	strb	r6, [r3, #0]
    86b0:	705e      	strb	r6, [r3, #1]
    86b2:	70da      	strb	r2, [r3, #3]
    86b4:	f000 f85a 	bl	876c <rt_init_robin>
    86b8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    86ba:	46c0      	nop			; (mov r8, r8)
    86bc:	000088dc 	.word	0x000088dc
    86c0:	20004cdc 	.word	0x20004cdc
    86c4:	00008908 	.word	0x00008908
    86c8:	20000908 	.word	0x20000908
    86cc:	000088e0 	.word	0x000088e0
    86d0:	200009e8 	.word	0x200009e8
    86d4:	0000890c 	.word	0x0000890c
    86d8:	20004d18 	.word	0x20004d18
    86dc:	00008930 	.word	0x00008930
    86e0:	200060c0 	.word	0x200060c0
    86e4:	00001931 	.word	0x00001931
    86e8:	20006084 	.word	0x20006084
    86ec:	2000609c 	.word	0x2000609c
    86f0:	200060b8 	.word	0x200060b8
    86f4:	00008914 	.word	0x00008914
    86f8:	20004c58 	.word	0x20004c58

000086fc <rt_sys_start>:
    86fc:	21ff      	movs	r1, #255	; 0xff
    86fe:	4b16      	ldr	r3, [pc, #88]	; (8758 <rt_sys_start+0x5c>)
    8700:	0409      	lsls	r1, r1, #16
    8702:	681a      	ldr	r2, [r3, #0]
    8704:	b510      	push	{r4, lr}
    8706:	430a      	orrs	r2, r1
    8708:	601a      	str	r2, [r3, #0]
    870a:	681b      	ldr	r3, [r3, #0]
    870c:	4913      	ldr	r1, [pc, #76]	; (875c <rt_sys_start+0x60>)
    870e:	025b      	lsls	r3, r3, #9
    8710:	680a      	ldr	r2, [r1, #0]
    8712:	0e9b      	lsrs	r3, r3, #26
    8714:	069b      	lsls	r3, r3, #26
    8716:	4313      	orrs	r3, r2
    8718:	600b      	str	r3, [r1, #0]
    871a:	f7ff fd0d 	bl	8138 <os_tick_init>
    871e:	4c10      	ldr	r4, [pc, #64]	; (8760 <rt_sys_start+0x64>)
    8720:	6020      	str	r0, [r4, #0]
    8722:	2800      	cmp	r0, #0
    8724:	db17      	blt.n	8756 <rt_sys_start+0x5a>
    8726:	4a0f      	ldr	r2, [pc, #60]	; (8764 <rt_sys_start+0x68>)
    8728:	0883      	lsrs	r3, r0, #2
    872a:	4694      	mov	ip, r2
    872c:	2218      	movs	r2, #24
    872e:	00c0      	lsls	r0, r0, #3
    8730:	4010      	ands	r0, r2
    8732:	32e7      	adds	r2, #231	; 0xe7
    8734:	4082      	lsls	r2, r0
    8736:	009b      	lsls	r3, r3, #2
    8738:	4463      	add	r3, ip
    873a:	6819      	ldr	r1, [r3, #0]
    873c:	430a      	orrs	r2, r1
    873e:	490a      	ldr	r1, [pc, #40]	; (8768 <rt_sys_start+0x6c>)
    8740:	601a      	str	r2, [r3, #0]
    8742:	468c      	mov	ip, r1
    8744:	211f      	movs	r1, #31
    8746:	6822      	ldr	r2, [r4, #0]
    8748:	0953      	lsrs	r3, r2, #5
    874a:	400a      	ands	r2, r1
    874c:	391e      	subs	r1, #30
    874e:	4091      	lsls	r1, r2
    8750:	009b      	lsls	r3, r3, #2
    8752:	4463      	add	r3, ip
    8754:	6019      	str	r1, [r3, #0]
    8756:	bd10      	pop	{r4, pc}
    8758:	e000ed20 	.word	0xe000ed20
    875c:	e000ed1c 	.word	0xe000ed1c
    8760:	200060b4 	.word	0x200060b4
    8764:	e000e400 	.word	0xe000e400
    8768:	e000e100 	.word	0xe000e100

0000876c <rt_init_robin>:
    876c:	2200      	movs	r2, #0
    876e:	4b03      	ldr	r3, [pc, #12]	; (877c <rt_init_robin+0x10>)
    8770:	601a      	str	r2, [r3, #0]
    8772:	4a03      	ldr	r2, [pc, #12]	; (8780 <rt_init_robin+0x14>)
    8774:	6812      	ldr	r2, [r2, #0]
    8776:	80da      	strh	r2, [r3, #6]
    8778:	4770      	bx	lr
    877a:	46c0      	nop			; (mov r8, r8)
    877c:	200060f4 	.word	0x200060f4
    8780:	000088e4 	.word	0x000088e4

00008784 <rt_chk_robin>:
    8784:	b510      	push	{r4, lr}
    8786:	4a0f      	ldr	r2, [pc, #60]	; (87c4 <rt_chk_robin+0x40>)
    8788:	4c0f      	ldr	r4, [pc, #60]	; (87c8 <rt_chk_robin+0x44>)
    878a:	6811      	ldr	r1, [r2, #0]
    878c:	6863      	ldr	r3, [r4, #4]
    878e:	4299      	cmp	r1, r3
    8790:	d014      	beq.n	87bc <rt_chk_robin+0x38>
    8792:	6013      	str	r3, [r2, #0]
    8794:	4b0d      	ldr	r3, [pc, #52]	; (87cc <rt_chk_robin+0x48>)
    8796:	8819      	ldrh	r1, [r3, #0]
    8798:	88d3      	ldrh	r3, [r2, #6]
    879a:	3b01      	subs	r3, #1
    879c:	18cb      	adds	r3, r1, r3
    879e:	b29b      	uxth	r3, r3
    87a0:	8093      	strh	r3, [r2, #4]
    87a2:	4299      	cmp	r1, r3
    87a4:	d000      	beq.n	87a8 <rt_chk_robin+0x24>
    87a6:	bd10      	pop	{r4, pc}
    87a8:	2300      	movs	r3, #0
    87aa:	0020      	movs	r0, r4
    87ac:	6013      	str	r3, [r2, #0]
    87ae:	f7ff f941 	bl	7a34 <rt_get_first>
    87b2:	0001      	movs	r1, r0
    87b4:	0020      	movs	r0, r4
    87b6:	f7ff f917 	bl	79e8 <rt_put_prio>
    87ba:	e7f4      	b.n	87a6 <rt_chk_robin+0x22>
    87bc:	4b03      	ldr	r3, [pc, #12]	; (87cc <rt_chk_robin+0x48>)
    87be:	8819      	ldrh	r1, [r3, #0]
    87c0:	8893      	ldrh	r3, [r2, #4]
    87c2:	e7ee      	b.n	87a2 <rt_chk_robin+0x1e>
    87c4:	200060f4 	.word	0x200060f4
    87c8:	20006084 	.word	0x20006084
    87cc:	20006080 	.word	0x20006080

000087d0 <__eeprom_erase_page_veneer>:
    87d0:	b401      	push	{r0}
    87d2:	4802      	ldr	r0, [pc, #8]	; (87dc <__eeprom_erase_page_veneer+0xc>)
    87d4:	4684      	mov	ip, r0
    87d6:	bc01      	pop	{r0}
    87d8:	4760      	bx	ip
    87da:	bf00      	nop
    87dc:	2010002d 	.word	0x2010002d

000087e0 <__eeprom_read_word_veneer>:
    87e0:	b401      	push	{r0}
    87e2:	4802      	ldr	r0, [pc, #8]	; (87ec <__eeprom_read_word_veneer+0xc>)
    87e4:	4684      	mov	ip, r0
    87e6:	bc01      	pop	{r0}
    87e8:	4760      	bx	ip
    87ea:	bf00      	nop
    87ec:	20100229 	.word	0x20100229

000087f0 <__eeprom_program_word_veneer>:
    87f0:	b401      	push	{r0}
    87f2:	4802      	ldr	r0, [pc, #8]	; (87fc <__eeprom_program_word_veneer+0xc>)
    87f4:	4684      	mov	ip, r0
    87f6:	bc01      	pop	{r0}
    87f8:	4760      	bx	ip
    87fa:	bf00      	nop
    87fc:	20100151 	.word	0x20100151

00008800 <threadPacketParserDef>:
    8800:	00002f69 00000001 00000001 00000400     i/..............

00008810 <threadFSMProceedDef>:
    8810:	00000411 00000000 00000001 00000400     ................

00008820 <threadDUTProceedDef>:
    8820:	000002dd 00000000 00000001 00000400     ................

00008830 <message_def>:
    8830:	00000004 20000868                       ....h.. 

00008838 <os_mutex_def_MutexMdbReg>:
    8838:	2000088c 74697865 00000000 70616548     ... exit....Heap
    8848:	646e6120 61747320 63206b63 696c6c6f      and stack colli
    8858:	6e6f6973 0000000a 00001352 00001340     sion....R...@...
    8868:	0000135e 0000136a 0000136a 0000136a     ^...j...j...j...
    8878:	0000136a 0000136a 0000136a 0000136a     j...j...j...j...
    8888:	0000136a 0000136a 0000136a 00001358     j...j...j...X...
    8898:	0000136a 0000136a 0000136a 000012e4     j...j...j.......
    88a8:	0000136a 0000135e 0000136a 0000136a     j...^...j...j...
    88b8:	00001364 6c383025 00002058 32302520     d...%08lX .. %02
    88c8:	00000058 34302520 00000058 38302520     X... %04X... %08
    88d8:	0000584c                                LX..

000088dc <os_maxtaskrun>:
    88dc:	00000004                                ....

000088e0 <os_stackinfo>:
    88e0:	01021000                                ....

000088e4 <os_rrobin>:
    88e4:	00010005                                ....

000088e8 <os_tickfreq>:
    88e8:	04c4b400                                ....

000088ec <os_tickus_i>:
    88ec:	00000050                                         P.

000088ee <os_tickus_f>:
	...

000088f0 <os_trv>:
    88f0:	0001387f                                .8..

000088f4 <os_flags>:
    88f4:	00000001                                ....

000088f8 <CMSIS_RTOS_API_Version>:
    88f8:	00010002                                ....

000088fc <CMSIS_RTOS_RTX_Version>:
    88fc:	00040052                                R...

00008900 <os_clockrate>:
    8900:	000003e8                                ....

00008904 <os_timernum>:
    8904:	00000000                                ....

00008908 <mp_tcb_size>:
    8908:	000000dc                                ....

0000890c <mp_stk_size>:
    890c:	00003010                                .0..

00008910 <os_stack_sz>:
    8910:	00001260                                `...

00008914 <os_fifo_size>:
    8914:	00000010                                ....

00008918 <os_thread_def_osTimerThread>:
    8918:	00006389 00000002 00000001 00000200     .c..............

00008928 <os_messageQ_def_osTimerMessageQ>:
    8928:	00000004 20004cf0                       .....L. 

00008930 <mp_tmr_size>:
    8930:	00000000                                ....

00008934 <os_thread_def_main>:
    8934:	000001a5 00000000 00000001 00000040     ............@...

00008944 <os_mutex_def_readpackMutex>:
    8944:	2000531c                                .S. 

00008948 <os_mutex_def_sendpackMutex>:
    8948:	20005330                                0S. 

0000894c <crc_table>:
    894c:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    895c:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    896c:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    897c:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    898c:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    899c:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    89ac:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    89bc:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    89cc:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    89dc:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    89ec:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    89fc:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    8a0c:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    8a1c:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    8a2c:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    8a3c:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    8a4c:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    8a5c:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    8a6c:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    8a7c:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    8a8c:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    8a9c:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    8aac:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    8abc:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    8acc:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    8adc:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    8aec:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    8afc:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    8b0c:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    8b1c:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    8b2c:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    8b3c:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    8b4c:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    8b5c:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    8b6c:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    8b7c:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    8b8c:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    8b9c:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    8bac:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    8bbc:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    8bcc:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    8bdc:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    8bec:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    8bfc:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    8c0c:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    8c1c:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    8c2c:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    8c3c:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    8c4c:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    8c5c:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    8c6c:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    8c7c:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    8c8c:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    8c9c:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    8cac:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    8cbc:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    8ccc:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    8cdc:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    8cec:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    8cfc:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    8d0c:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    8d1c:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    8d2c:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    8d3c:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

00008d4c <crc_table_low>:
    8d4c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8d5c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8d6c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8d7c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8d8c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8d9c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8dac:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8dbc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8dcc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8ddc:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8dec:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8dfc:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8e0c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8e1c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8e2c:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8e3c:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

00008e4c <crc_table_high>:
    8e4c:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    8e5c:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    8e6c:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    8e7c:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    8e8c:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    8e9c:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    8eac:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    8ebc:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    8ecc:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    8edc:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    8eec:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    8efc:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    8f0c:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    8f1c:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    8f2c:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    8f3c:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

00008f4c <defBsiParam>:
    8f4c:	56789abc 00011234 00020a00 00000a00     ..xV4...........
    8f5c:	00000000                                ....

00008f60 <device_additional_info>:
    8f60:	31554153 6e6f6320 6f727472 72656c6c     SAU1 conrtroller
    8f70:	00000000                                ....

00008f74 <proc_PDU_table>:
    8f74:	00003f05 00003f05 00003f05 00003dc9     .?...?...?...=..
    8f84:	00003871 00003f05 00003f05 00003f05     q8...?...?...?..
    8f94:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8fa4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8fb4:	000039c1 000037d9 00003f05 00003f05     .9...7...?...?..
    8fc4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8fd4:	00003bc5 00003f05 00003f05 00003f05     .;...?...?...?..
    8fe4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    8ff4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9004:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9014:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9024:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9034:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9044:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9054:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9064:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9074:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9084:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9094:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90a4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90b4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90c4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90d4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90e4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    90f4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9104:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9114:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9124:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9134:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9144:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9154:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9164:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9174:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9184:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9194:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91a4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91b4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91c4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91d4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91e4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    91f4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9204:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9214:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9224:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9234:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9244:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9254:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9264:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9274:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9284:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9294:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92a4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92b4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92c4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92d4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92e4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    92f4:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9304:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9314:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9324:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9334:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9344:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9354:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..
    9364:	00003f05 00003f05 00003f05 00003f05     .?...?...?...?..

00009374 <_global_impure_ptr>:
    9374:	20000018                                ... 

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
