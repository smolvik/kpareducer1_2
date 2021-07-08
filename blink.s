
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 8d 04 00 00 1d 05 00 00 1d 05 00 00     ... ............
	...
      2c:	e7 4b 00 00 00 00 00 00 00 00 00 00 6d 4c 00 00     .K..........mL..
      3c:	b5 4c 00 00 1d 05 00 00 1d 05 00 00 1d 05 00 00     .L..............
      4c:	1d 05 00 00 1d 05 00 00 1d 05 00 00 b9 10 00 00     ................
      5c:	49 0a 00 00 1d 05 00 00 1d 05 00 00 1d 05 00 00     I...............
      6c:	1d 05 00 00 1d 05 00 00 1d 05 00 00 3d 02 00 00     ............=...
      7c:	61 02 00 00 1d 05 00 00 1d 05 00 00 65 25 00 00     a...........e%..
      8c:	1d 05 00 00 1d 05 00 00 1d 05 00 00 1d 05 00 00     ................
      9c:	1d 05 00 00 1d 05 00 00 00 00 00 00 00 00 00 00     ................
      ac:	1d 05 00 00 e1 02 00 00 1d 05 00 00 1d 05 00 00     ................
      bc:	1d 05 00 00                                         ....

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
     172:	121a      	asrs	r2, r3, #8
     174:	4b02      	ldr	r3, [pc, #8]	; (180 <dut_set_speed+0x18>)
     176:	601a      	str	r2, [r3, #0]
     178:	46c0      	nop			; (mov r8, r8)
     17a:	46bd      	mov	sp, r7
     17c:	b002      	add	sp, #8
     17e:	bd80      	pop	{r7, pc}
     180:	2000089c 	.word	0x2000089c

00000184 <dut_set_torque>:
     184:	b580      	push	{r7, lr}
     186:	b082      	sub	sp, #8
     188:	af00      	add	r7, sp, #0
     18a:	6078      	str	r0, [r7, #4]
     18c:	4b03      	ldr	r3, [pc, #12]	; (19c <dut_set_torque+0x18>)
     18e:	687a      	ldr	r2, [r7, #4]
     190:	601a      	str	r2, [r3, #0]
     192:	46c0      	nop			; (mov r8, r8)
     194:	46bd      	mov	sp, r7
     196:	b002      	add	sp, #8
     198:	bd80      	pop	{r7, pc}
     19a:	46c0      	nop			; (mov r8, r8)
     19c:	200008a0 	.word	0x200008a0

000001a0 <main>:
     1a0:	b580      	push	{r7, lr}
     1a2:	af00      	add	r7, sp, #0
     1a4:	f001 fe3a 	bl	1e1c <SystemInit>
     1a8:	f000 f9f6 	bl	598 <mdb485_init>
     1ac:	f000 fe10 	bl	dd0 <mdb232_init>
     1b0:	f001 fe68 	bl	1e84 <RemoteMacInit>
     1b4:	f001 ff16 	bl	1fe4 <EthernetConfig>
     1b8:	f7ff ffbe 	bl	138 <dut_reset_off>
     1bc:	4b15      	ldr	r3, [pc, #84]	; (214 <__UVISION_VERSION+0xb>)
     1be:	0018      	movs	r0, r3
     1c0:	f006 fb86 	bl	68d0 <osMutexCreate>
     1c4:	0002      	movs	r2, r0
     1c6:	4b14      	ldr	r3, [pc, #80]	; (218 <__UVISION_VERSION+0xf>)
     1c8:	601a      	str	r2, [r3, #0]
     1ca:	f005 fd81 	bl	5cd0 <osKernelInitialize>
     1ce:	4b13      	ldr	r3, [pc, #76]	; (21c <__UVISION_VERSION+0x13>)
     1d0:	2100      	movs	r1, #0
     1d2:	0018      	movs	r0, r3
     1d4:	f006 fe5e 	bl	6e94 <osMessageCreate>
     1d8:	0002      	movs	r2, r0
     1da:	4b11      	ldr	r3, [pc, #68]	; (220 <__GCC_VERSION+0x3>)
     1dc:	601a      	str	r2, [r3, #0]
     1de:	4b11      	ldr	r3, [pc, #68]	; (224 <__GCC_VERSION+0x7>)
     1e0:	2100      	movs	r1, #0
     1e2:	0018      	movs	r0, r3
     1e4:	f005 ff06 	bl	5ff4 <osThreadCreate>
     1e8:	0002      	movs	r2, r0
     1ea:	4b0f      	ldr	r3, [pc, #60]	; (228 <__GCC_VERSION+0xb>)
     1ec:	601a      	str	r2, [r3, #0]
     1ee:	4b0f      	ldr	r3, [pc, #60]	; (22c <__GCC_VERSION+0xf>)
     1f0:	2100      	movs	r1, #0
     1f2:	0018      	movs	r0, r3
     1f4:	f005 fefe 	bl	5ff4 <osThreadCreate>
     1f8:	0002      	movs	r2, r0
     1fa:	4b0d      	ldr	r3, [pc, #52]	; (230 <__GCC_VERSION+0x13>)
     1fc:	601a      	str	r2, [r3, #0]
     1fe:	4b0d      	ldr	r3, [pc, #52]	; (234 <__GCC_VERSION+0x17>)
     200:	2100      	movs	r1, #0
     202:	0018      	movs	r0, r3
     204:	f005 fef6 	bl	5ff4 <osThreadCreate>
     208:	0002      	movs	r2, r0
     20a:	4b0b      	ldr	r3, [pc, #44]	; (238 <__GCC_VERSION+0x1b>)
     20c:	601a      	str	r2, [r3, #0]
     20e:	f005 fdfb 	bl	5e08 <osKernelStart>
     212:	e7fe      	b.n	212 <__UVISION_VERSION+0x9>
     214:	00008a60 	.word	0x00008a60
     218:	20000888 	.word	0x20000888
     21c:	00008a58 	.word	0x00008a58
     220:	20000864 	.word	0x20000864
     224:	00008a28 	.word	0x00008a28
     228:	20000858 	.word	0x20000858
     22c:	00008a38 	.word	0x00008a38
     230:	2000085c 	.word	0x2000085c
     234:	00008a48 	.word	0x00008a48
     238:	20000860 	.word	0x20000860

0000023c <TIMER1_Handler>:
     23c:	b580      	push	{r7, lr}
     23e:	af00      	add	r7, sp, #0
     240:	4b05      	ldr	r3, [pc, #20]	; (258 <TIMER1_Handler+0x1c>)
     242:	2200      	movs	r2, #0
     244:	655a      	str	r2, [r3, #84]	; 0x54
     246:	4b05      	ldr	r3, [pc, #20]	; (25c <TIMER1_Handler+0x20>)
     248:	681b      	ldr	r3, [r3, #0]
     24a:	2101      	movs	r1, #1
     24c:	0018      	movs	r0, r3
     24e:	f006 fa83 	bl	6758 <osSignalSet>
     252:	46c0      	nop			; (mov r8, r8)
     254:	46bd      	mov	sp, r7
     256:	bd80      	pop	{r7, pc}
     258:	40070000 	.word	0x40070000
     25c:	20000860 	.word	0x20000860

00000260 <TIMER2_Handler>:
     260:	b580      	push	{r7, lr}
     262:	af00      	add	r7, sp, #0
     264:	4b18      	ldr	r3, [pc, #96]	; (2c8 <TIMER2_Handler+0x68>)
     266:	2200      	movs	r2, #0
     268:	655a      	str	r2, [r3, #84]	; 0x54
     26a:	4b18      	ldr	r3, [pc, #96]	; (2cc <TIMER2_Handler+0x6c>)
     26c:	681a      	ldr	r2, [r3, #0]
     26e:	4b18      	ldr	r3, [pc, #96]	; (2d0 <TIMER2_Handler+0x70>)
     270:	681b      	ldr	r3, [r3, #0]
     272:	18d3      	adds	r3, r2, r3
     274:	041b      	lsls	r3, r3, #16
     276:	0c1a      	lsrs	r2, r3, #16
     278:	4b14      	ldr	r3, [pc, #80]	; (2cc <TIMER2_Handler+0x6c>)
     27a:	601a      	str	r2, [r3, #0]
     27c:	4b15      	ldr	r3, [pc, #84]	; (2d4 <TIMER2_Handler+0x74>)
     27e:	681a      	ldr	r2, [r3, #0]
     280:	4b13      	ldr	r3, [pc, #76]	; (2d0 <TIMER2_Handler+0x70>)
     282:	681b      	ldr	r3, [r3, #0]
     284:	18d3      	adds	r3, r2, r3
     286:	041b      	lsls	r3, r3, #16
     288:	0c1a      	lsrs	r2, r3, #16
     28a:	4b12      	ldr	r3, [pc, #72]	; (2d4 <TIMER2_Handler+0x74>)
     28c:	601a      	str	r2, [r3, #0]
     28e:	4b0f      	ldr	r3, [pc, #60]	; (2cc <TIMER2_Handler+0x6c>)
     290:	681b      	ldr	r3, [r3, #0]
     292:	4a11      	ldr	r2, [pc, #68]	; (2d8 <TIMER2_Handler+0x78>)
     294:	4293      	cmp	r3, r2
     296:	d904      	bls.n	2a2 <TIMER2_Handler+0x42>
     298:	4b10      	ldr	r3, [pc, #64]	; (2dc <TIMER2_Handler+0x7c>)
     29a:	2280      	movs	r2, #128	; 0x80
     29c:	0152      	lsls	r2, r2, #5
     29e:	621a      	str	r2, [r3, #32]
     2a0:	e003      	b.n	2aa <TIMER2_Handler+0x4a>
     2a2:	4b0e      	ldr	r3, [pc, #56]	; (2dc <TIMER2_Handler+0x7c>)
     2a4:	2280      	movs	r2, #128	; 0x80
     2a6:	0152      	lsls	r2, r2, #5
     2a8:	625a      	str	r2, [r3, #36]	; 0x24
     2aa:	4b0a      	ldr	r3, [pc, #40]	; (2d4 <TIMER2_Handler+0x74>)
     2ac:	681b      	ldr	r3, [r3, #0]
     2ae:	4a0a      	ldr	r2, [pc, #40]	; (2d8 <TIMER2_Handler+0x78>)
     2b0:	4293      	cmp	r3, r2
     2b2:	d903      	bls.n	2bc <TIMER2_Handler+0x5c>
     2b4:	4b09      	ldr	r3, [pc, #36]	; (2dc <TIMER2_Handler+0x7c>)
     2b6:	2201      	movs	r2, #1
     2b8:	621a      	str	r2, [r3, #32]
     2ba:	e002      	b.n	2c2 <TIMER2_Handler+0x62>
     2bc:	4b07      	ldr	r3, [pc, #28]	; (2dc <TIMER2_Handler+0x7c>)
     2be:	2201      	movs	r2, #1
     2c0:	625a      	str	r2, [r3, #36]	; 0x24
     2c2:	46c0      	nop			; (mov r8, r8)
     2c4:	46bd      	mov	sp, r7
     2c6:	bd80      	pop	{r7, pc}
     2c8:	40078000 	.word	0x40078000
     2cc:	200008a4 	.word	0x200008a4
     2d0:	2000089c 	.word	0x2000089c
     2d4:	20000000 	.word	0x20000000
     2d8:	00007530 	.word	0x00007530
     2dc:	400b0000 	.word	0x400b0000

000002e0 <EXT_INT1_Handler>:
     2e0:	b580      	push	{r7, lr}
     2e2:	af00      	add	r7, sp, #0
     2e4:	201c      	movs	r0, #28
     2e6:	f7ff ff0b 	bl	100 <__NVIC_ClearPendingIRQ>
     2ea:	201c      	movs	r0, #28
     2ec:	f7ff fee8 	bl	c0 <__NVIC_DisableIRQ>
     2f0:	4b03      	ldr	r3, [pc, #12]	; (300 <EXT_INT1_Handler+0x20>)
     2f2:	681b      	ldr	r3, [r3, #0]
     2f4:	1c5a      	adds	r2, r3, #1
     2f6:	4b02      	ldr	r3, [pc, #8]	; (300 <EXT_INT1_Handler+0x20>)
     2f8:	601a      	str	r2, [r3, #0]
     2fa:	46c0      	nop			; (mov r8, r8)
     2fc:	46bd      	mov	sp, r7
     2fe:	bd80      	pop	{r7, pc}
     300:	200008a8 	.word	0x200008a8

00000304 <threadDUTProceed>:
     304:	b580      	push	{r7, lr}
     306:	b092      	sub	sp, #72	; 0x48
     308:	af00      	add	r7, sp, #0
     30a:	6078      	str	r0, [r7, #4]
     30c:	2300      	movs	r3, #0
     30e:	647b      	str	r3, [r7, #68]	; 0x44
     310:	2318      	movs	r3, #24
     312:	18fb      	adds	r3, r7, r3
     314:	2200      	movs	r2, #0
     316:	601a      	str	r2, [r3, #0]
     318:	2318      	movs	r3, #24
     31a:	18fb      	adds	r3, r7, r3
     31c:	2200      	movs	r2, #0
     31e:	605a      	str	r2, [r3, #4]
     320:	2318      	movs	r3, #24
     322:	18fb      	adds	r3, r7, r3
     324:	2200      	movs	r2, #0
     326:	609a      	str	r2, [r3, #8]
     328:	2318      	movs	r3, #24
     32a:	18fb      	adds	r3, r7, r3
     32c:	2200      	movs	r2, #0
     32e:	60da      	str	r2, [r3, #12]
     330:	2318      	movs	r3, #24
     332:	18fb      	adds	r3, r7, r3
     334:	2200      	movs	r2, #0
     336:	611a      	str	r2, [r3, #16]
     338:	2318      	movs	r3, #24
     33a:	18fb      	adds	r3, r7, r3
     33c:	2200      	movs	r2, #0
     33e:	615a      	str	r2, [r3, #20]
     340:	2318      	movs	r3, #24
     342:	18fb      	adds	r3, r7, r3
     344:	2200      	movs	r2, #0
     346:	619a      	str	r2, [r3, #24]
     348:	2318      	movs	r3, #24
     34a:	18fb      	adds	r3, r7, r3
     34c:	2200      	movs	r2, #0
     34e:	61da      	str	r2, [r3, #28]
     350:	230c      	movs	r3, #12
     352:	18f8      	adds	r0, r7, r3
     354:	2301      	movs	r3, #1
     356:	425b      	negs	r3, r3
     358:	001a      	movs	r2, r3
     35a:	2100      	movs	r1, #0
     35c:	f006 fa2a 	bl	67b4 <osSignalWait>
     360:	230c      	movs	r3, #12
     362:	18fb      	adds	r3, r7, r3
     364:	681b      	ldr	r3, [r3, #0]
     366:	2b08      	cmp	r3, #8
     368:	d1f2      	bne.n	350 <threadDUTProceed+0x4c>
     36a:	230c      	movs	r3, #12
     36c:	18fb      	adds	r3, r7, r3
     36e:	685b      	ldr	r3, [r3, #4]
     370:	2b02      	cmp	r3, #2
     372:	d033      	beq.n	3dc <threadDUTProceed+0xd8>
     374:	2b08      	cmp	r3, #8
     376:	d03c      	beq.n	3f2 <threadDUTProceed+0xee>
     378:	2b01      	cmp	r3, #1
     37a:	d15f      	bne.n	43c <_stack_size+0x3c>
     37c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     37e:	2b01      	cmp	r3, #1
     380:	d91f      	bls.n	3c2 <threadDUTProceed+0xbe>
     382:	4b2f      	ldr	r3, [pc, #188]	; (440 <_stack_size+0x40>)
     384:	681b      	ldr	r3, [r3, #0]
     386:	021a      	lsls	r2, r3, #8
     388:	2318      	movs	r3, #24
     38a:	18fb      	adds	r3, r7, r3
     38c:	609a      	str	r2, [r3, #8]
     38e:	4b2d      	ldr	r3, [pc, #180]	; (444 <_stack_size+0x44>)
     390:	681a      	ldr	r2, [r3, #0]
     392:	2318      	movs	r3, #24
     394:	18fb      	adds	r3, r7, r3
     396:	605a      	str	r2, [r3, #4]
     398:	f003 fe86 	bl	40a8 <fsm_get_cyccnt>
     39c:	0002      	movs	r2, r0
     39e:	2318      	movs	r3, #24
     3a0:	18fb      	adds	r3, r7, r3
     3a2:	619a      	str	r2, [r3, #24]
     3a4:	f003 fe76 	bl	4094 <fsm_get_mode>
     3a8:	0003      	movs	r3, r0
     3aa:	001a      	movs	r2, r3
     3ac:	2318      	movs	r3, #24
     3ae:	18fb      	adds	r3, r7, r3
     3b0:	61da      	str	r2, [r3, #28]
     3b2:	2318      	movs	r3, #24
     3b4:	18fb      	adds	r3, r7, r3
     3b6:	2120      	movs	r1, #32
     3b8:	0018      	movs	r0, r3
     3ba:	f003 f8b3 	bl	3524 <mdb_fifo_write>
     3be:	2300      	movs	r3, #0
     3c0:	647b      	str	r3, [r7, #68]	; 0x44
     3c2:	2301      	movs	r3, #1
     3c4:	647b      	str	r3, [r7, #68]	; 0x44
     3c6:	2204      	movs	r2, #4
     3c8:	2100      	movs	r1, #0
     3ca:	2001      	movs	r0, #1
     3cc:	f000 fd5a 	bl	e84 <mdb232_read_inputregs>
     3d0:	2202      	movs	r2, #2
     3d2:	2102      	movs	r1, #2
     3d4:	2010      	movs	r0, #16
     3d6:	f000 fa67 	bl	8a8 <mdb485_read_inputregs>
     3da:	e02f      	b.n	43c <_stack_size+0x3c>
     3dc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3de:	2202      	movs	r2, #2
     3e0:	4313      	orrs	r3, r2
     3e2:	647b      	str	r3, [r7, #68]	; 0x44
     3e4:	f000 fe12 	bl	100c <mdb232_bikm_get_torque>
     3e8:	0002      	movs	r2, r0
     3ea:	2318      	movs	r3, #24
     3ec:	18fb      	adds	r3, r7, r3
     3ee:	605a      	str	r2, [r3, #4]
     3f0:	e024      	b.n	43c <_stack_size+0x3c>
     3f2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3f4:	2204      	movs	r2, #4
     3f6:	4313      	orrs	r3, r2
     3f8:	647b      	str	r3, [r7, #68]	; 0x44
     3fa:	f000 facb 	bl	994 <mdb485_get_crc>
     3fe:	1e03      	subs	r3, r0, #0
     400:	d11b      	bne.n	43a <_stack_size+0x3a>
     402:	f000 fab3 	bl	96c <mdb485_get_func>
     406:	0003      	movs	r3, r0
     408:	643b      	str	r3, [r7, #64]	; 0x40
     40a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     40c:	2b04      	cmp	r3, #4
     40e:	d114      	bne.n	43a <_stack_size+0x3a>
     410:	f000 fade 	bl	9d0 <mdb485_si30_get_counter>
     414:	0003      	movs	r3, r0
     416:	63fb      	str	r3, [r7, #60]	; 0x3c
     418:	2318      	movs	r3, #24
     41a:	18fb      	adds	r3, r7, r3
     41c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     41e:	601a      	str	r2, [r3, #0]
     420:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     422:	021b      	lsls	r3, r3, #8
     424:	001a      	movs	r2, r3
     426:	2304      	movs	r3, #4
     428:	4313      	orrs	r3, r2
     42a:	63bb      	str	r3, [r7, #56]	; 0x38
     42c:	4b06      	ldr	r3, [pc, #24]	; (448 <_stack_size+0x48>)
     42e:	681b      	ldr	r3, [r3, #0]
     430:	6bb9      	ldr	r1, [r7, #56]	; 0x38
     432:	2200      	movs	r2, #0
     434:	0018      	movs	r0, r3
     436:	f006 fd59 	bl	6eec <osMessagePut>
     43a:	46c0      	nop			; (mov r8, r8)
     43c:	e788      	b.n	350 <threadDUTProceed+0x4c>
     43e:	46c0      	nop			; (mov r8, r8)
     440:	2000089c 	.word	0x2000089c
     444:	200008a0 	.word	0x200008a0
     448:	20000864 	.word	0x20000864

0000044c <threadFSMProceed>:
     44c:	b580      	push	{r7, lr}
     44e:	b086      	sub	sp, #24
     450:	af00      	add	r7, sp, #0
     452:	6078      	str	r0, [r7, #4]
     454:	4b0b      	ldr	r3, [pc, #44]	; (484 <threadFSMProceed+0x38>)
     456:	6819      	ldr	r1, [r3, #0]
     458:	2308      	movs	r3, #8
     45a:	18f8      	adds	r0, r7, r3
     45c:	2301      	movs	r3, #1
     45e:	425b      	negs	r3, r3
     460:	001a      	movs	r2, r3
     462:	f006 fd67 	bl	6f34 <osMessageGet>
     466:	2308      	movs	r3, #8
     468:	18fb      	adds	r3, r7, r3
     46a:	681b      	ldr	r3, [r3, #0]
     46c:	2b10      	cmp	r3, #16
     46e:	d1f1      	bne.n	454 <threadFSMProceed+0x8>
     470:	2308      	movs	r3, #8
     472:	18fb      	adds	r3, r7, r3
     474:	685b      	ldr	r3, [r3, #4]
     476:	617b      	str	r3, [r7, #20]
     478:	4b03      	ldr	r3, [pc, #12]	; (488 <threadFSMProceed+0x3c>)
     47a:	681b      	ldr	r3, [r3, #0]
     47c:	697a      	ldr	r2, [r7, #20]
     47e:	0010      	movs	r0, r2
     480:	4798      	blx	r3
     482:	e7e7      	b.n	454 <threadFSMProceed+0x8>
     484:	20000864 	.word	0x20000864
     488:	20000014 	.word	0x20000014

0000048c <handler_reset>:
     48c:	b580      	push	{r7, lr}
     48e:	b082      	sub	sp, #8
     490:	af00      	add	r7, sp, #0
     492:	4b1a      	ldr	r3, [pc, #104]	; (4fc <handler_reset+0x70>)
     494:	607b      	str	r3, [r7, #4]
     496:	4b1a      	ldr	r3, [pc, #104]	; (500 <handler_reset+0x74>)
     498:	603b      	str	r3, [r7, #0]
     49a:	e007      	b.n	4ac <handler_reset+0x20>
     49c:	683b      	ldr	r3, [r7, #0]
     49e:	1d1a      	adds	r2, r3, #4
     4a0:	603a      	str	r2, [r7, #0]
     4a2:	687a      	ldr	r2, [r7, #4]
     4a4:	1d11      	adds	r1, r2, #4
     4a6:	6079      	str	r1, [r7, #4]
     4a8:	6812      	ldr	r2, [r2, #0]
     4aa:	601a      	str	r2, [r3, #0]
     4ac:	683a      	ldr	r2, [r7, #0]
     4ae:	4b15      	ldr	r3, [pc, #84]	; (504 <handler_reset+0x78>)
     4b0:	429a      	cmp	r2, r3
     4b2:	d3f3      	bcc.n	49c <handler_reset+0x10>
     4b4:	4b14      	ldr	r3, [pc, #80]	; (508 <handler_reset+0x7c>)
     4b6:	607b      	str	r3, [r7, #4]
     4b8:	4b14      	ldr	r3, [pc, #80]	; (50c <handler_reset+0x80>)
     4ba:	603b      	str	r3, [r7, #0]
     4bc:	e007      	b.n	4ce <handler_reset+0x42>
     4be:	683b      	ldr	r3, [r7, #0]
     4c0:	1d1a      	adds	r2, r3, #4
     4c2:	603a      	str	r2, [r7, #0]
     4c4:	687a      	ldr	r2, [r7, #4]
     4c6:	1d11      	adds	r1, r2, #4
     4c8:	6079      	str	r1, [r7, #4]
     4ca:	6812      	ldr	r2, [r2, #0]
     4cc:	601a      	str	r2, [r3, #0]
     4ce:	683a      	ldr	r2, [r7, #0]
     4d0:	4b0f      	ldr	r3, [pc, #60]	; (510 <handler_reset+0x84>)
     4d2:	429a      	cmp	r2, r3
     4d4:	d3f3      	bcc.n	4be <handler_reset+0x32>
     4d6:	4b0f      	ldr	r3, [pc, #60]	; (514 <handler_reset+0x88>)
     4d8:	603b      	str	r3, [r7, #0]
     4da:	e004      	b.n	4e6 <handler_reset+0x5a>
     4dc:	683b      	ldr	r3, [r7, #0]
     4de:	1d1a      	adds	r2, r3, #4
     4e0:	603a      	str	r2, [r7, #0]
     4e2:	2200      	movs	r2, #0
     4e4:	601a      	str	r2, [r3, #0]
     4e6:	683a      	ldr	r2, [r7, #0]
     4e8:	4b0b      	ldr	r3, [pc, #44]	; (518 <handler_reset+0x8c>)
     4ea:	429a      	cmp	r2, r3
     4ec:	d3f6      	bcc.n	4dc <handler_reset+0x50>
     4ee:	f7ff fe57 	bl	1a0 <main>
     4f2:	46c0      	nop			; (mov r8, r8)
     4f4:	46bd      	mov	sp, r7
     4f6:	b002      	add	sp, #8
     4f8:	bd80      	pop	{r7, pc}
     4fa:	46c0      	nop			; (mov r8, r8)
     4fc:	000095a8 	.word	0x000095a8
     500:	20000000 	.word	0x20000000
     504:	20000858 	.word	0x20000858
     508:	00009e00 	.word	0x00009e00
     50c:	20100000 	.word	0x20100000
     510:	201002a0 	.word	0x201002a0
     514:	20000858 	.word	0x20000858
     518:	200060fc 	.word	0x200060fc

0000051c <default_handler>:
     51c:	b580      	push	{r7, lr}
     51e:	af00      	add	r7, sp, #0
     520:	e7fe      	b.n	520 <default_handler+0x4>
     522:	46c0      	nop			; (mov r8, r8)

00000524 <__NVIC_EnableIRQ>:
     524:	b580      	push	{r7, lr}
     526:	b082      	sub	sp, #8
     528:	af00      	add	r7, sp, #0
     52a:	0002      	movs	r2, r0
     52c:	1dfb      	adds	r3, r7, #7
     52e:	701a      	strb	r2, [r3, #0]
     530:	1dfb      	adds	r3, r7, #7
     532:	781b      	ldrb	r3, [r3, #0]
     534:	2b7f      	cmp	r3, #127	; 0x7f
     536:	d809      	bhi.n	54c <__NVIC_EnableIRQ+0x28>
     538:	4b06      	ldr	r3, [pc, #24]	; (554 <__NVIC_EnableIRQ+0x30>)
     53a:	1dfa      	adds	r2, r7, #7
     53c:	7812      	ldrb	r2, [r2, #0]
     53e:	0011      	movs	r1, r2
     540:	221f      	movs	r2, #31
     542:	400a      	ands	r2, r1
     544:	2101      	movs	r1, #1
     546:	4091      	lsls	r1, r2
     548:	000a      	movs	r2, r1
     54a:	601a      	str	r2, [r3, #0]
     54c:	46c0      	nop			; (mov r8, r8)
     54e:	46bd      	mov	sp, r7
     550:	b002      	add	sp, #8
     552:	bd80      	pop	{r7, pc}
     554:	e000e100 	.word	0xe000e100

00000558 <__NVIC_DisableIRQ>:
     558:	b580      	push	{r7, lr}
     55a:	b082      	sub	sp, #8
     55c:	af00      	add	r7, sp, #0
     55e:	0002      	movs	r2, r0
     560:	1dfb      	adds	r3, r7, #7
     562:	701a      	strb	r2, [r3, #0]
     564:	1dfb      	adds	r3, r7, #7
     566:	781b      	ldrb	r3, [r3, #0]
     568:	2b7f      	cmp	r3, #127	; 0x7f
     56a:	d80e      	bhi.n	58a <__NVIC_DisableIRQ+0x32>
     56c:	4909      	ldr	r1, [pc, #36]	; (594 <__NVIC_DisableIRQ+0x3c>)
     56e:	1dfb      	adds	r3, r7, #7
     570:	781b      	ldrb	r3, [r3, #0]
     572:	001a      	movs	r2, r3
     574:	231f      	movs	r3, #31
     576:	4013      	ands	r3, r2
     578:	2201      	movs	r2, #1
     57a:	409a      	lsls	r2, r3
     57c:	0013      	movs	r3, r2
     57e:	2280      	movs	r2, #128	; 0x80
     580:	508b      	str	r3, [r1, r2]
     582:	f3bf 8f4f 	dsb	sy
     586:	f3bf 8f6f 	isb	sy
     58a:	46c0      	nop			; (mov r8, r8)
     58c:	46bd      	mov	sp, r7
     58e:	b002      	add	sp, #8
     590:	bd80      	pop	{r7, pc}
     592:	46c0      	nop			; (mov r8, r8)
     594:	e000e100 	.word	0xe000e100

00000598 <mdb485_init>:
     598:	b580      	push	{r7, lr}
     59a:	af00      	add	r7, sp, #0
     59c:	4b14      	ldr	r3, [pc, #80]	; (5f0 <mdb485_init+0x58>)
     59e:	2234      	movs	r2, #52	; 0x34
     5a0:	625a      	str	r2, [r3, #36]	; 0x24
     5a2:	4b13      	ldr	r3, [pc, #76]	; (5f0 <mdb485_init+0x58>)
     5a4:	2205      	movs	r2, #5
     5a6:	629a      	str	r2, [r3, #40]	; 0x28
     5a8:	4b11      	ldr	r3, [pc, #68]	; (5f0 <mdb485_init+0x58>)
     5aa:	4a11      	ldr	r2, [pc, #68]	; (5f0 <mdb485_init+0x58>)
     5ac:	6b52      	ldr	r2, [r2, #52]	; 0x34
     5ae:	213f      	movs	r1, #63	; 0x3f
     5b0:	438a      	bics	r2, r1
     5b2:	635a      	str	r2, [r3, #52]	; 0x34
     5b4:	4b0e      	ldr	r3, [pc, #56]	; (5f0 <mdb485_init+0x58>)
     5b6:	4a0e      	ldr	r2, [pc, #56]	; (5f0 <mdb485_init+0x58>)
     5b8:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     5ba:	2110      	movs	r1, #16
     5bc:	430a      	orrs	r2, r1
     5be:	62da      	str	r2, [r3, #44]	; 0x2c
     5c0:	4b0b      	ldr	r3, [pc, #44]	; (5f0 <mdb485_init+0x58>)
     5c2:	4a0b      	ldr	r2, [pc, #44]	; (5f0 <mdb485_init+0x58>)
     5c4:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     5c6:	2160      	movs	r1, #96	; 0x60
     5c8:	430a      	orrs	r2, r1
     5ca:	62da      	str	r2, [r3, #44]	; 0x2c
     5cc:	4b08      	ldr	r3, [pc, #32]	; (5f0 <mdb485_init+0x58>)
     5ce:	4a08      	ldr	r2, [pc, #32]	; (5f0 <mdb485_init+0x58>)
     5d0:	6b12      	ldr	r2, [r2, #48]	; 0x30
     5d2:	4908      	ldr	r1, [pc, #32]	; (5f4 <mdb485_init+0x5c>)
     5d4:	430a      	orrs	r2, r1
     5d6:	631a      	str	r2, [r3, #48]	; 0x30
     5d8:	4b05      	ldr	r3, [pc, #20]	; (5f0 <mdb485_init+0x58>)
     5da:	4a05      	ldr	r2, [pc, #20]	; (5f0 <mdb485_init+0x58>)
     5dc:	6b92      	ldr	r2, [r2, #56]	; 0x38
     5de:	2140      	movs	r1, #64	; 0x40
     5e0:	430a      	orrs	r2, r1
     5e2:	639a      	str	r2, [r3, #56]	; 0x38
     5e4:	2007      	movs	r0, #7
     5e6:	f7ff ff9d 	bl	524 <__NVIC_EnableIRQ>
     5ea:	46c0      	nop			; (mov r8, r8)
     5ec:	46bd      	mov	sp, r7
     5ee:	bd80      	pop	{r7, pc}
     5f0:	40038000 	.word	0x40038000
     5f4:	00000301 	.word	0x00000301

000005f8 <mdb485_send>:
     5f8:	b580      	push	{r7, lr}
     5fa:	b084      	sub	sp, #16
     5fc:	af00      	add	r7, sp, #0
     5fe:	6078      	str	r0, [r7, #4]
     600:	6039      	str	r1, [r7, #0]
     602:	4b17      	ldr	r3, [pc, #92]	; (660 <mdb485_send+0x68>)
     604:	4a16      	ldr	r2, [pc, #88]	; (660 <mdb485_send+0x68>)
     606:	6812      	ldr	r2, [r2, #0]
     608:	2180      	movs	r1, #128	; 0x80
     60a:	0209      	lsls	r1, r1, #8
     60c:	430a      	orrs	r2, r1
     60e:	601a      	str	r2, [r3, #0]
     610:	2300      	movs	r3, #0
     612:	60fb      	str	r3, [r7, #12]
     614:	e00e      	b.n	634 <mdb485_send+0x3c>
     616:	46c0      	nop			; (mov r8, r8)
     618:	4b12      	ldr	r3, [pc, #72]	; (664 <mdb485_send+0x6c>)
     61a:	699b      	ldr	r3, [r3, #24]
     61c:	2220      	movs	r2, #32
     61e:	4013      	ands	r3, r2
     620:	d1fa      	bne.n	618 <mdb485_send+0x20>
     622:	4a10      	ldr	r2, [pc, #64]	; (664 <mdb485_send+0x6c>)
     624:	687b      	ldr	r3, [r7, #4]
     626:	1c59      	adds	r1, r3, #1
     628:	6079      	str	r1, [r7, #4]
     62a:	781b      	ldrb	r3, [r3, #0]
     62c:	6013      	str	r3, [r2, #0]
     62e:	68fb      	ldr	r3, [r7, #12]
     630:	3301      	adds	r3, #1
     632:	60fb      	str	r3, [r7, #12]
     634:	68fa      	ldr	r2, [r7, #12]
     636:	683b      	ldr	r3, [r7, #0]
     638:	429a      	cmp	r2, r3
     63a:	dbec      	blt.n	616 <mdb485_send+0x1e>
     63c:	46c0      	nop			; (mov r8, r8)
     63e:	4b09      	ldr	r3, [pc, #36]	; (664 <mdb485_send+0x6c>)
     640:	699b      	ldr	r3, [r3, #24]
     642:	2208      	movs	r2, #8
     644:	4013      	ands	r3, r2
     646:	d1fa      	bne.n	63e <mdb485_send+0x46>
     648:	4b05      	ldr	r3, [pc, #20]	; (660 <mdb485_send+0x68>)
     64a:	4a05      	ldr	r2, [pc, #20]	; (660 <mdb485_send+0x68>)
     64c:	6812      	ldr	r2, [r2, #0]
     64e:	4906      	ldr	r1, [pc, #24]	; (668 <mdb485_send+0x70>)
     650:	400a      	ands	r2, r1
     652:	601a      	str	r2, [r3, #0]
     654:	683b      	ldr	r3, [r7, #0]
     656:	0018      	movs	r0, r3
     658:	46bd      	mov	sp, r7
     65a:	b004      	add	sp, #16
     65c:	bd80      	pop	{r7, pc}
     65e:	46c0      	nop			; (mov r8, r8)
     660:	400c0000 	.word	0x400c0000
     664:	40038000 	.word	0x40038000
     668:	ffff7fff 	.word	0xffff7fff

0000066c <mdb485_putch>:
     66c:	b580      	push	{r7, lr}
     66e:	b082      	sub	sp, #8
     670:	af00      	add	r7, sp, #0
     672:	0002      	movs	r2, r0
     674:	1dfb      	adds	r3, r7, #7
     676:	701a      	strb	r2, [r3, #0]
     678:	46c0      	nop			; (mov r8, r8)
     67a:	4b06      	ldr	r3, [pc, #24]	; (694 <mdb485_putch+0x28>)
     67c:	699b      	ldr	r3, [r3, #24]
     67e:	2220      	movs	r2, #32
     680:	4013      	ands	r3, r2
     682:	d1fa      	bne.n	67a <mdb485_putch+0xe>
     684:	4b03      	ldr	r3, [pc, #12]	; (694 <mdb485_putch+0x28>)
     686:	1dfa      	adds	r2, r7, #7
     688:	7812      	ldrb	r2, [r2, #0]
     68a:	601a      	str	r2, [r3, #0]
     68c:	46c0      	nop			; (mov r8, r8)
     68e:	46bd      	mov	sp, r7
     690:	b002      	add	sp, #8
     692:	bd80      	pop	{r7, pc}
     694:	40038000 	.word	0x40038000

00000698 <mdb485_writeregs>:
     698:	b590      	push	{r4, r7, lr}
     69a:	b089      	sub	sp, #36	; 0x24
     69c:	af00      	add	r7, sp, #0
     69e:	0004      	movs	r4, r0
     6a0:	0008      	movs	r0, r1
     6a2:	0011      	movs	r1, r2
     6a4:	607b      	str	r3, [r7, #4]
     6a6:	230f      	movs	r3, #15
     6a8:	18fb      	adds	r3, r7, r3
     6aa:	1c22      	adds	r2, r4, #0
     6ac:	701a      	strb	r2, [r3, #0]
     6ae:	230c      	movs	r3, #12
     6b0:	18fb      	adds	r3, r7, r3
     6b2:	1c02      	adds	r2, r0, #0
     6b4:	801a      	strh	r2, [r3, #0]
     6b6:	230a      	movs	r3, #10
     6b8:	18fb      	adds	r3, r7, r3
     6ba:	1c0a      	adds	r2, r1, #0
     6bc:	801a      	strh	r2, [r3, #0]
     6be:	4b48      	ldr	r3, [pc, #288]	; (7e0 <mdb485_writeregs+0x148>)
     6c0:	61bb      	str	r3, [r7, #24]
     6c2:	230a      	movs	r3, #10
     6c4:	18fb      	adds	r3, r7, r3
     6c6:	881b      	ldrh	r3, [r3, #0]
     6c8:	005b      	lsls	r3, r3, #1
     6ca:	617b      	str	r3, [r7, #20]
     6cc:	69bb      	ldr	r3, [r7, #24]
     6ce:	1c5a      	adds	r2, r3, #1
     6d0:	61ba      	str	r2, [r7, #24]
     6d2:	220f      	movs	r2, #15
     6d4:	18ba      	adds	r2, r7, r2
     6d6:	7812      	ldrb	r2, [r2, #0]
     6d8:	701a      	strb	r2, [r3, #0]
     6da:	69bb      	ldr	r3, [r7, #24]
     6dc:	1c5a      	adds	r2, r3, #1
     6de:	61ba      	str	r2, [r7, #24]
     6e0:	2210      	movs	r2, #16
     6e2:	701a      	strb	r2, [r3, #0]
     6e4:	69bb      	ldr	r3, [r7, #24]
     6e6:	1c5a      	adds	r2, r3, #1
     6e8:	61ba      	str	r2, [r7, #24]
     6ea:	220c      	movs	r2, #12
     6ec:	18ba      	adds	r2, r7, r2
     6ee:	8812      	ldrh	r2, [r2, #0]
     6f0:	0a12      	lsrs	r2, r2, #8
     6f2:	b292      	uxth	r2, r2
     6f4:	b2d2      	uxtb	r2, r2
     6f6:	701a      	strb	r2, [r3, #0]
     6f8:	69bb      	ldr	r3, [r7, #24]
     6fa:	1c5a      	adds	r2, r3, #1
     6fc:	61ba      	str	r2, [r7, #24]
     6fe:	220c      	movs	r2, #12
     700:	18ba      	adds	r2, r7, r2
     702:	8812      	ldrh	r2, [r2, #0]
     704:	b2d2      	uxtb	r2, r2
     706:	701a      	strb	r2, [r3, #0]
     708:	69bb      	ldr	r3, [r7, #24]
     70a:	1c5a      	adds	r2, r3, #1
     70c:	61ba      	str	r2, [r7, #24]
     70e:	220a      	movs	r2, #10
     710:	18ba      	adds	r2, r7, r2
     712:	8812      	ldrh	r2, [r2, #0]
     714:	0a12      	lsrs	r2, r2, #8
     716:	b292      	uxth	r2, r2
     718:	b2d2      	uxtb	r2, r2
     71a:	701a      	strb	r2, [r3, #0]
     71c:	69bb      	ldr	r3, [r7, #24]
     71e:	1c5a      	adds	r2, r3, #1
     720:	61ba      	str	r2, [r7, #24]
     722:	220a      	movs	r2, #10
     724:	18ba      	adds	r2, r7, r2
     726:	8812      	ldrh	r2, [r2, #0]
     728:	b2d2      	uxtb	r2, r2
     72a:	701a      	strb	r2, [r3, #0]
     72c:	69bb      	ldr	r3, [r7, #24]
     72e:	1c5a      	adds	r2, r3, #1
     730:	61ba      	str	r2, [r7, #24]
     732:	697a      	ldr	r2, [r7, #20]
     734:	b2d2      	uxtb	r2, r2
     736:	701a      	strb	r2, [r3, #0]
     738:	697b      	ldr	r3, [r7, #20]
     73a:	3307      	adds	r3, #7
     73c:	2b10      	cmp	r3, #16
     73e:	dc4a      	bgt.n	7d6 <mdb485_writeregs+0x13e>
     740:	2300      	movs	r3, #0
     742:	61fb      	str	r3, [r7, #28]
     744:	e01b      	b.n	77e <mdb485_writeregs+0xe6>
     746:	687b      	ldr	r3, [r7, #4]
     748:	1c9a      	adds	r2, r3, #2
     74a:	607a      	str	r2, [r7, #4]
     74c:	2212      	movs	r2, #18
     74e:	18ba      	adds	r2, r7, r2
     750:	881b      	ldrh	r3, [r3, #0]
     752:	8013      	strh	r3, [r2, #0]
     754:	69bb      	ldr	r3, [r7, #24]
     756:	1c5a      	adds	r2, r3, #1
     758:	61ba      	str	r2, [r7, #24]
     75a:	2212      	movs	r2, #18
     75c:	18ba      	adds	r2, r7, r2
     75e:	8812      	ldrh	r2, [r2, #0]
     760:	0a12      	lsrs	r2, r2, #8
     762:	b292      	uxth	r2, r2
     764:	b2d2      	uxtb	r2, r2
     766:	701a      	strb	r2, [r3, #0]
     768:	69bb      	ldr	r3, [r7, #24]
     76a:	1c5a      	adds	r2, r3, #1
     76c:	61ba      	str	r2, [r7, #24]
     76e:	2212      	movs	r2, #18
     770:	18ba      	adds	r2, r7, r2
     772:	8812      	ldrh	r2, [r2, #0]
     774:	b2d2      	uxtb	r2, r2
     776:	701a      	strb	r2, [r3, #0]
     778:	69fb      	ldr	r3, [r7, #28]
     77a:	3301      	adds	r3, #1
     77c:	61fb      	str	r3, [r7, #28]
     77e:	230a      	movs	r3, #10
     780:	18fb      	adds	r3, r7, r3
     782:	881a      	ldrh	r2, [r3, #0]
     784:	69fb      	ldr	r3, [r7, #28]
     786:	429a      	cmp	r2, r3
     788:	dcdd      	bgt.n	746 <mdb485_writeregs+0xae>
     78a:	697b      	ldr	r3, [r7, #20]
     78c:	1dda      	adds	r2, r3, #7
     78e:	2310      	movs	r3, #16
     790:	18fc      	adds	r4, r7, r3
     792:	4b13      	ldr	r3, [pc, #76]	; (7e0 <mdb485_writeregs+0x148>)
     794:	0011      	movs	r1, r2
     796:	0018      	movs	r0, r3
     798:	f002 fca4 	bl	30e4 <crc16>
     79c:	0003      	movs	r3, r0
     79e:	8023      	strh	r3, [r4, #0]
     7a0:	69bb      	ldr	r3, [r7, #24]
     7a2:	1c5a      	adds	r2, r3, #1
     7a4:	61ba      	str	r2, [r7, #24]
     7a6:	2210      	movs	r2, #16
     7a8:	18ba      	adds	r2, r7, r2
     7aa:	8812      	ldrh	r2, [r2, #0]
     7ac:	b2d2      	uxtb	r2, r2
     7ae:	701a      	strb	r2, [r3, #0]
     7b0:	69bb      	ldr	r3, [r7, #24]
     7b2:	1c5a      	adds	r2, r3, #1
     7b4:	61ba      	str	r2, [r7, #24]
     7b6:	2210      	movs	r2, #16
     7b8:	18ba      	adds	r2, r7, r2
     7ba:	8812      	ldrh	r2, [r2, #0]
     7bc:	0a12      	lsrs	r2, r2, #8
     7be:	b292      	uxth	r2, r2
     7c0:	b2d2      	uxtb	r2, r2
     7c2:	701a      	strb	r2, [r3, #0]
     7c4:	697b      	ldr	r3, [r7, #20]
     7c6:	3309      	adds	r3, #9
     7c8:	001a      	movs	r2, r3
     7ca:	4b05      	ldr	r3, [pc, #20]	; (7e0 <mdb485_writeregs+0x148>)
     7cc:	0011      	movs	r1, r2
     7ce:	0018      	movs	r0, r3
     7d0:	f7ff ff12 	bl	5f8 <mdb485_send>
     7d4:	e000      	b.n	7d8 <mdb485_writeregs+0x140>
     7d6:	46c0      	nop			; (mov r8, r8)
     7d8:	46bd      	mov	sp, r7
     7da:	b009      	add	sp, #36	; 0x24
     7dc:	bd90      	pop	{r4, r7, pc}
     7de:	46c0      	nop			; (mov r8, r8)
     7e0:	200008bc 	.word	0x200008bc

000007e4 <mdb485_readregs>:
     7e4:	b590      	push	{r4, r7, lr}
     7e6:	b085      	sub	sp, #20
     7e8:	af00      	add	r7, sp, #0
     7ea:	0004      	movs	r4, r0
     7ec:	0008      	movs	r0, r1
     7ee:	0011      	movs	r1, r2
     7f0:	1dfb      	adds	r3, r7, #7
     7f2:	1c22      	adds	r2, r4, #0
     7f4:	701a      	strb	r2, [r3, #0]
     7f6:	1d3b      	adds	r3, r7, #4
     7f8:	1c02      	adds	r2, r0, #0
     7fa:	801a      	strh	r2, [r3, #0]
     7fc:	1cbb      	adds	r3, r7, #2
     7fe:	1c0a      	adds	r2, r1, #0
     800:	801a      	strh	r2, [r3, #0]
     802:	4b28      	ldr	r3, [pc, #160]	; (8a4 <mdb485_readregs+0xc0>)
     804:	60fb      	str	r3, [r7, #12]
     806:	68fb      	ldr	r3, [r7, #12]
     808:	1c5a      	adds	r2, r3, #1
     80a:	60fa      	str	r2, [r7, #12]
     80c:	1dfa      	adds	r2, r7, #7
     80e:	7812      	ldrb	r2, [r2, #0]
     810:	701a      	strb	r2, [r3, #0]
     812:	68fb      	ldr	r3, [r7, #12]
     814:	1c5a      	adds	r2, r3, #1
     816:	60fa      	str	r2, [r7, #12]
     818:	2203      	movs	r2, #3
     81a:	701a      	strb	r2, [r3, #0]
     81c:	68fb      	ldr	r3, [r7, #12]
     81e:	1c5a      	adds	r2, r3, #1
     820:	60fa      	str	r2, [r7, #12]
     822:	1d3a      	adds	r2, r7, #4
     824:	8812      	ldrh	r2, [r2, #0]
     826:	0a12      	lsrs	r2, r2, #8
     828:	b292      	uxth	r2, r2
     82a:	b2d2      	uxtb	r2, r2
     82c:	701a      	strb	r2, [r3, #0]
     82e:	68fb      	ldr	r3, [r7, #12]
     830:	1c5a      	adds	r2, r3, #1
     832:	60fa      	str	r2, [r7, #12]
     834:	1d3a      	adds	r2, r7, #4
     836:	8812      	ldrh	r2, [r2, #0]
     838:	b2d2      	uxtb	r2, r2
     83a:	701a      	strb	r2, [r3, #0]
     83c:	68fb      	ldr	r3, [r7, #12]
     83e:	1c5a      	adds	r2, r3, #1
     840:	60fa      	str	r2, [r7, #12]
     842:	1cba      	adds	r2, r7, #2
     844:	8812      	ldrh	r2, [r2, #0]
     846:	0a12      	lsrs	r2, r2, #8
     848:	b292      	uxth	r2, r2
     84a:	b2d2      	uxtb	r2, r2
     84c:	701a      	strb	r2, [r3, #0]
     84e:	68fb      	ldr	r3, [r7, #12]
     850:	1c5a      	adds	r2, r3, #1
     852:	60fa      	str	r2, [r7, #12]
     854:	1cba      	adds	r2, r7, #2
     856:	8812      	ldrh	r2, [r2, #0]
     858:	b2d2      	uxtb	r2, r2
     85a:	701a      	strb	r2, [r3, #0]
     85c:	230a      	movs	r3, #10
     85e:	18fc      	adds	r4, r7, r3
     860:	4b10      	ldr	r3, [pc, #64]	; (8a4 <mdb485_readregs+0xc0>)
     862:	2106      	movs	r1, #6
     864:	0018      	movs	r0, r3
     866:	f002 fc3d 	bl	30e4 <crc16>
     86a:	0003      	movs	r3, r0
     86c:	8023      	strh	r3, [r4, #0]
     86e:	68fb      	ldr	r3, [r7, #12]
     870:	1c5a      	adds	r2, r3, #1
     872:	60fa      	str	r2, [r7, #12]
     874:	220a      	movs	r2, #10
     876:	18ba      	adds	r2, r7, r2
     878:	8812      	ldrh	r2, [r2, #0]
     87a:	b2d2      	uxtb	r2, r2
     87c:	701a      	strb	r2, [r3, #0]
     87e:	68fb      	ldr	r3, [r7, #12]
     880:	1c5a      	adds	r2, r3, #1
     882:	60fa      	str	r2, [r7, #12]
     884:	220a      	movs	r2, #10
     886:	18ba      	adds	r2, r7, r2
     888:	8812      	ldrh	r2, [r2, #0]
     88a:	0a12      	lsrs	r2, r2, #8
     88c:	b292      	uxth	r2, r2
     88e:	b2d2      	uxtb	r2, r2
     890:	701a      	strb	r2, [r3, #0]
     892:	4b04      	ldr	r3, [pc, #16]	; (8a4 <mdb485_readregs+0xc0>)
     894:	2108      	movs	r1, #8
     896:	0018      	movs	r0, r3
     898:	f7ff feae 	bl	5f8 <mdb485_send>
     89c:	46c0      	nop			; (mov r8, r8)
     89e:	46bd      	mov	sp, r7
     8a0:	b005      	add	sp, #20
     8a2:	bd90      	pop	{r4, r7, pc}
     8a4:	200008bc 	.word	0x200008bc

000008a8 <mdb485_read_inputregs>:
     8a8:	b590      	push	{r4, r7, lr}
     8aa:	b085      	sub	sp, #20
     8ac:	af00      	add	r7, sp, #0
     8ae:	0004      	movs	r4, r0
     8b0:	0008      	movs	r0, r1
     8b2:	0011      	movs	r1, r2
     8b4:	1dfb      	adds	r3, r7, #7
     8b6:	1c22      	adds	r2, r4, #0
     8b8:	701a      	strb	r2, [r3, #0]
     8ba:	1d3b      	adds	r3, r7, #4
     8bc:	1c02      	adds	r2, r0, #0
     8be:	801a      	strh	r2, [r3, #0]
     8c0:	1cbb      	adds	r3, r7, #2
     8c2:	1c0a      	adds	r2, r1, #0
     8c4:	801a      	strh	r2, [r3, #0]
     8c6:	4b28      	ldr	r3, [pc, #160]	; (968 <mdb485_read_inputregs+0xc0>)
     8c8:	60fb      	str	r3, [r7, #12]
     8ca:	68fb      	ldr	r3, [r7, #12]
     8cc:	1c5a      	adds	r2, r3, #1
     8ce:	60fa      	str	r2, [r7, #12]
     8d0:	1dfa      	adds	r2, r7, #7
     8d2:	7812      	ldrb	r2, [r2, #0]
     8d4:	701a      	strb	r2, [r3, #0]
     8d6:	68fb      	ldr	r3, [r7, #12]
     8d8:	1c5a      	adds	r2, r3, #1
     8da:	60fa      	str	r2, [r7, #12]
     8dc:	2204      	movs	r2, #4
     8de:	701a      	strb	r2, [r3, #0]
     8e0:	68fb      	ldr	r3, [r7, #12]
     8e2:	1c5a      	adds	r2, r3, #1
     8e4:	60fa      	str	r2, [r7, #12]
     8e6:	1d3a      	adds	r2, r7, #4
     8e8:	8812      	ldrh	r2, [r2, #0]
     8ea:	0a12      	lsrs	r2, r2, #8
     8ec:	b292      	uxth	r2, r2
     8ee:	b2d2      	uxtb	r2, r2
     8f0:	701a      	strb	r2, [r3, #0]
     8f2:	68fb      	ldr	r3, [r7, #12]
     8f4:	1c5a      	adds	r2, r3, #1
     8f6:	60fa      	str	r2, [r7, #12]
     8f8:	1d3a      	adds	r2, r7, #4
     8fa:	8812      	ldrh	r2, [r2, #0]
     8fc:	b2d2      	uxtb	r2, r2
     8fe:	701a      	strb	r2, [r3, #0]
     900:	68fb      	ldr	r3, [r7, #12]
     902:	1c5a      	adds	r2, r3, #1
     904:	60fa      	str	r2, [r7, #12]
     906:	1cba      	adds	r2, r7, #2
     908:	8812      	ldrh	r2, [r2, #0]
     90a:	0a12      	lsrs	r2, r2, #8
     90c:	b292      	uxth	r2, r2
     90e:	b2d2      	uxtb	r2, r2
     910:	701a      	strb	r2, [r3, #0]
     912:	68fb      	ldr	r3, [r7, #12]
     914:	1c5a      	adds	r2, r3, #1
     916:	60fa      	str	r2, [r7, #12]
     918:	1cba      	adds	r2, r7, #2
     91a:	8812      	ldrh	r2, [r2, #0]
     91c:	b2d2      	uxtb	r2, r2
     91e:	701a      	strb	r2, [r3, #0]
     920:	230a      	movs	r3, #10
     922:	18fc      	adds	r4, r7, r3
     924:	4b10      	ldr	r3, [pc, #64]	; (968 <mdb485_read_inputregs+0xc0>)
     926:	2106      	movs	r1, #6
     928:	0018      	movs	r0, r3
     92a:	f002 fbdb 	bl	30e4 <crc16>
     92e:	0003      	movs	r3, r0
     930:	8023      	strh	r3, [r4, #0]
     932:	68fb      	ldr	r3, [r7, #12]
     934:	1c5a      	adds	r2, r3, #1
     936:	60fa      	str	r2, [r7, #12]
     938:	220a      	movs	r2, #10
     93a:	18ba      	adds	r2, r7, r2
     93c:	8812      	ldrh	r2, [r2, #0]
     93e:	b2d2      	uxtb	r2, r2
     940:	701a      	strb	r2, [r3, #0]
     942:	68fb      	ldr	r3, [r7, #12]
     944:	1c5a      	adds	r2, r3, #1
     946:	60fa      	str	r2, [r7, #12]
     948:	220a      	movs	r2, #10
     94a:	18ba      	adds	r2, r7, r2
     94c:	8812      	ldrh	r2, [r2, #0]
     94e:	0a12      	lsrs	r2, r2, #8
     950:	b292      	uxth	r2, r2
     952:	b2d2      	uxtb	r2, r2
     954:	701a      	strb	r2, [r3, #0]
     956:	4b04      	ldr	r3, [pc, #16]	; (968 <mdb485_read_inputregs+0xc0>)
     958:	2108      	movs	r1, #8
     95a:	0018      	movs	r0, r3
     95c:	f7ff fe4c 	bl	5f8 <mdb485_send>
     960:	46c0      	nop			; (mov r8, r8)
     962:	46bd      	mov	sp, r7
     964:	b005      	add	sp, #20
     966:	bd90      	pop	{r4, r7, pc}
     968:	200008bc 	.word	0x200008bc

0000096c <mdb485_get_func>:
     96c:	b580      	push	{r7, lr}
     96e:	b082      	sub	sp, #8
     970:	af00      	add	r7, sp, #0
     972:	2007      	movs	r0, #7
     974:	f7ff fdf0 	bl	558 <__NVIC_DisableIRQ>
     978:	4b05      	ldr	r3, [pc, #20]	; (990 <mdb485_get_func+0x24>)
     97a:	785b      	ldrb	r3, [r3, #1]
     97c:	607b      	str	r3, [r7, #4]
     97e:	2007      	movs	r0, #7
     980:	f7ff fdd0 	bl	524 <__NVIC_EnableIRQ>
     984:	687b      	ldr	r3, [r7, #4]
     986:	0018      	movs	r0, r3
     988:	46bd      	mov	sp, r7
     98a:	b002      	add	sp, #8
     98c:	bd80      	pop	{r7, pc}
     98e:	46c0      	nop			; (mov r8, r8)
     990:	200008ac 	.word	0x200008ac

00000994 <mdb485_get_crc>:
     994:	b590      	push	{r4, r7, lr}
     996:	b083      	sub	sp, #12
     998:	af00      	add	r7, sp, #0
     99a:	2007      	movs	r0, #7
     99c:	f7ff fddc 	bl	558 <__NVIC_DisableIRQ>
     9a0:	4b09      	ldr	r3, [pc, #36]	; (9c8 <mdb485_get_crc+0x34>)
     9a2:	681a      	ldr	r2, [r3, #0]
     9a4:	1dbc      	adds	r4, r7, #6
     9a6:	4b09      	ldr	r3, [pc, #36]	; (9cc <mdb485_get_crc+0x38>)
     9a8:	0011      	movs	r1, r2
     9aa:	0018      	movs	r0, r3
     9ac:	f002 fb9a 	bl	30e4 <crc16>
     9b0:	0003      	movs	r3, r0
     9b2:	8023      	strh	r3, [r4, #0]
     9b4:	2007      	movs	r0, #7
     9b6:	f7ff fdb5 	bl	524 <__NVIC_EnableIRQ>
     9ba:	1dbb      	adds	r3, r7, #6
     9bc:	881b      	ldrh	r3, [r3, #0]
     9be:	0018      	movs	r0, r3
     9c0:	46bd      	mov	sp, r7
     9c2:	b003      	add	sp, #12
     9c4:	bd90      	pop	{r4, r7, pc}
     9c6:	46c0      	nop			; (mov r8, r8)
     9c8:	200008cc 	.word	0x200008cc
     9cc:	200008ac 	.word	0x200008ac

000009d0 <mdb485_si30_get_counter>:
     9d0:	b580      	push	{r7, lr}
     9d2:	b082      	sub	sp, #8
     9d4:	af00      	add	r7, sp, #0
     9d6:	4b1a      	ldr	r3, [pc, #104]	; (a40 <mdb485_si30_get_counter+0x70>)
     9d8:	607b      	str	r3, [r7, #4]
     9da:	2007      	movs	r0, #7
     9dc:	f7ff fdbc 	bl	558 <__NVIC_DisableIRQ>
     9e0:	4b18      	ldr	r3, [pc, #96]	; (a44 <mdb485_si30_get_counter+0x74>)
     9e2:	681b      	ldr	r3, [r3, #0]
     9e4:	2b00      	cmp	r3, #0
     9e6:	d022      	beq.n	a2e <mdb485_si30_get_counter+0x5e>
     9e8:	687b      	ldr	r3, [r7, #4]
     9ea:	1c5a      	adds	r2, r3, #1
     9ec:	607a      	str	r2, [r7, #4]
     9ee:	781b      	ldrb	r3, [r3, #0]
     9f0:	061b      	lsls	r3, r3, #24
     9f2:	603b      	str	r3, [r7, #0]
     9f4:	687b      	ldr	r3, [r7, #4]
     9f6:	1c5a      	adds	r2, r3, #1
     9f8:	607a      	str	r2, [r7, #4]
     9fa:	781b      	ldrb	r3, [r3, #0]
     9fc:	041b      	lsls	r3, r3, #16
     9fe:	001a      	movs	r2, r3
     a00:	683b      	ldr	r3, [r7, #0]
     a02:	4313      	orrs	r3, r2
     a04:	603b      	str	r3, [r7, #0]
     a06:	687b      	ldr	r3, [r7, #4]
     a08:	1c5a      	adds	r2, r3, #1
     a0a:	607a      	str	r2, [r7, #4]
     a0c:	781b      	ldrb	r3, [r3, #0]
     a0e:	021b      	lsls	r3, r3, #8
     a10:	001a      	movs	r2, r3
     a12:	683b      	ldr	r3, [r7, #0]
     a14:	4313      	orrs	r3, r2
     a16:	603b      	str	r3, [r7, #0]
     a18:	687b      	ldr	r3, [r7, #4]
     a1a:	781b      	ldrb	r3, [r3, #0]
     a1c:	001a      	movs	r2, r3
     a1e:	683b      	ldr	r3, [r7, #0]
     a20:	4313      	orrs	r3, r2
     a22:	603b      	str	r3, [r7, #0]
     a24:	2007      	movs	r0, #7
     a26:	f7ff fd7d 	bl	524 <__NVIC_EnableIRQ>
     a2a:	683b      	ldr	r3, [r7, #0]
     a2c:	e003      	b.n	a36 <mdb485_si30_get_counter+0x66>
     a2e:	2007      	movs	r0, #7
     a30:	f7ff fd78 	bl	524 <__NVIC_EnableIRQ>
     a34:	2300      	movs	r3, #0
     a36:	0018      	movs	r0, r3
     a38:	46bd      	mov	sp, r7
     a3a:	b002      	add	sp, #8
     a3c:	bd80      	pop	{r7, pc}
     a3e:	46c0      	nop			; (mov r8, r8)
     a40:	200008af 	.word	0x200008af
     a44:	200008cc 	.word	0x200008cc

00000a48 <UART2_Handler>:
     a48:	b580      	push	{r7, lr}
     a4a:	b082      	sub	sp, #8
     a4c:	af00      	add	r7, sp, #0
     a4e:	4b16      	ldr	r3, [pc, #88]	; (aa8 <UART2_Handler+0x60>)
     a50:	2200      	movs	r2, #0
     a52:	601a      	str	r2, [r3, #0]
     a54:	4b15      	ldr	r3, [pc, #84]	; (aac <UART2_Handler+0x64>)
     a56:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     a58:	2240      	movs	r2, #64	; 0x40
     a5a:	4013      	ands	r3, r2
     a5c:	d016      	beq.n	a8c <UART2_Handler+0x44>
     a5e:	4b14      	ldr	r3, [pc, #80]	; (ab0 <UART2_Handler+0x68>)
     a60:	603b      	str	r3, [r7, #0]
     a62:	2300      	movs	r3, #0
     a64:	607b      	str	r3, [r7, #4]
     a66:	e009      	b.n	a7c <UART2_Handler+0x34>
     a68:	683b      	ldr	r3, [r7, #0]
     a6a:	1c5a      	adds	r2, r3, #1
     a6c:	603a      	str	r2, [r7, #0]
     a6e:	4a0f      	ldr	r2, [pc, #60]	; (aac <UART2_Handler+0x64>)
     a70:	6812      	ldr	r2, [r2, #0]
     a72:	b2d2      	uxtb	r2, r2
     a74:	701a      	strb	r2, [r3, #0]
     a76:	687b      	ldr	r3, [r7, #4]
     a78:	3301      	adds	r3, #1
     a7a:	607b      	str	r3, [r7, #4]
     a7c:	687b      	ldr	r3, [r7, #4]
     a7e:	2b0f      	cmp	r3, #15
     a80:	dc04      	bgt.n	a8c <UART2_Handler+0x44>
     a82:	4b0a      	ldr	r3, [pc, #40]	; (aac <UART2_Handler+0x64>)
     a84:	699b      	ldr	r3, [r3, #24]
     a86:	2210      	movs	r2, #16
     a88:	4013      	ands	r3, r2
     a8a:	d0ed      	beq.n	a68 <UART2_Handler+0x20>
     a8c:	4b06      	ldr	r3, [pc, #24]	; (aa8 <UART2_Handler+0x60>)
     a8e:	687a      	ldr	r2, [r7, #4]
     a90:	601a      	str	r2, [r3, #0]
     a92:	4b08      	ldr	r3, [pc, #32]	; (ab4 <UART2_Handler+0x6c>)
     a94:	681b      	ldr	r3, [r3, #0]
     a96:	2108      	movs	r1, #8
     a98:	0018      	movs	r0, r3
     a9a:	f005 fe5d 	bl	6758 <osSignalSet>
     a9e:	46c0      	nop			; (mov r8, r8)
     aa0:	46bd      	mov	sp, r7
     aa2:	b002      	add	sp, #8
     aa4:	bd80      	pop	{r7, pc}
     aa6:	46c0      	nop			; (mov r8, r8)
     aa8:	200008cc 	.word	0x200008cc
     aac:	40038000 	.word	0x40038000
     ab0:	200008ac 	.word	0x200008ac
     ab4:	20000860 	.word	0x20000860

00000ab8 <_exit>:
     ab8:	b580      	push	{r7, lr}
     aba:	b082      	sub	sp, #8
     abc:	af00      	add	r7, sp, #0
     abe:	6078      	str	r0, [r7, #4]
     ac0:	4b03      	ldr	r3, [pc, #12]	; (ad0 <_exit+0x18>)
     ac2:	2204      	movs	r2, #4
     ac4:	0019      	movs	r1, r3
     ac6:	2001      	movs	r0, #1
     ac8:	f000 f90c 	bl	ce4 <_write>
     acc:	e7fe      	b.n	acc <_exit+0x14>
     ace:	46c0      	nop			; (mov r8, r8)
     ad0:	00008a64 	.word	0x00008a64

00000ad4 <_close>:
     ad4:	b580      	push	{r7, lr}
     ad6:	b082      	sub	sp, #8
     ad8:	af00      	add	r7, sp, #0
     ada:	6078      	str	r0, [r7, #4]
     adc:	2301      	movs	r3, #1
     ade:	425b      	negs	r3, r3
     ae0:	0018      	movs	r0, r3
     ae2:	46bd      	mov	sp, r7
     ae4:	b002      	add	sp, #8
     ae6:	bd80      	pop	{r7, pc}

00000ae8 <_execve>:
     ae8:	b580      	push	{r7, lr}
     aea:	b084      	sub	sp, #16
     aec:	af00      	add	r7, sp, #0
     aee:	60f8      	str	r0, [r7, #12]
     af0:	60b9      	str	r1, [r7, #8]
     af2:	607a      	str	r2, [r7, #4]
     af4:	4b04      	ldr	r3, [pc, #16]	; (b08 <_execve+0x20>)
     af6:	220c      	movs	r2, #12
     af8:	601a      	str	r2, [r3, #0]
     afa:	2301      	movs	r3, #1
     afc:	425b      	negs	r3, r3
     afe:	0018      	movs	r0, r3
     b00:	46bd      	mov	sp, r7
     b02:	b004      	add	sp, #16
     b04:	bd80      	pop	{r7, pc}
     b06:	46c0      	nop			; (mov r8, r8)
     b08:	20006074 	.word	0x20006074

00000b0c <_fork>:
     b0c:	b580      	push	{r7, lr}
     b0e:	af00      	add	r7, sp, #0
     b10:	4b03      	ldr	r3, [pc, #12]	; (b20 <_fork+0x14>)
     b12:	220b      	movs	r2, #11
     b14:	601a      	str	r2, [r3, #0]
     b16:	2301      	movs	r3, #1
     b18:	425b      	negs	r3, r3
     b1a:	0018      	movs	r0, r3
     b1c:	46bd      	mov	sp, r7
     b1e:	bd80      	pop	{r7, pc}
     b20:	20006074 	.word	0x20006074

00000b24 <_fstat>:
     b24:	b580      	push	{r7, lr}
     b26:	b082      	sub	sp, #8
     b28:	af00      	add	r7, sp, #0
     b2a:	6078      	str	r0, [r7, #4]
     b2c:	6039      	str	r1, [r7, #0]
     b2e:	683b      	ldr	r3, [r7, #0]
     b30:	2280      	movs	r2, #128	; 0x80
     b32:	0192      	lsls	r2, r2, #6
     b34:	605a      	str	r2, [r3, #4]
     b36:	2300      	movs	r3, #0
     b38:	0018      	movs	r0, r3
     b3a:	46bd      	mov	sp, r7
     b3c:	b002      	add	sp, #8
     b3e:	bd80      	pop	{r7, pc}

00000b40 <_getpid>:
     b40:	b580      	push	{r7, lr}
     b42:	af00      	add	r7, sp, #0
     b44:	2301      	movs	r3, #1
     b46:	0018      	movs	r0, r3
     b48:	46bd      	mov	sp, r7
     b4a:	bd80      	pop	{r7, pc}

00000b4c <_isatty>:
     b4c:	b580      	push	{r7, lr}
     b4e:	b082      	sub	sp, #8
     b50:	af00      	add	r7, sp, #0
     b52:	6078      	str	r0, [r7, #4]
     b54:	687b      	ldr	r3, [r7, #4]
     b56:	3300      	adds	r3, #0
     b58:	2b02      	cmp	r3, #2
     b5a:	d801      	bhi.n	b60 <_isatty+0x14>
     b5c:	2301      	movs	r3, #1
     b5e:	e003      	b.n	b68 <_isatty+0x1c>
     b60:	4b03      	ldr	r3, [pc, #12]	; (b70 <_isatty+0x24>)
     b62:	2209      	movs	r2, #9
     b64:	601a      	str	r2, [r3, #0]
     b66:	2300      	movs	r3, #0
     b68:	0018      	movs	r0, r3
     b6a:	46bd      	mov	sp, r7
     b6c:	b002      	add	sp, #8
     b6e:	bd80      	pop	{r7, pc}
     b70:	20006074 	.word	0x20006074

00000b74 <_kill>:
     b74:	b580      	push	{r7, lr}
     b76:	b082      	sub	sp, #8
     b78:	af00      	add	r7, sp, #0
     b7a:	6078      	str	r0, [r7, #4]
     b7c:	6039      	str	r1, [r7, #0]
     b7e:	4b04      	ldr	r3, [pc, #16]	; (b90 <_kill+0x1c>)
     b80:	2216      	movs	r2, #22
     b82:	601a      	str	r2, [r3, #0]
     b84:	2301      	movs	r3, #1
     b86:	425b      	negs	r3, r3
     b88:	0018      	movs	r0, r3
     b8a:	46bd      	mov	sp, r7
     b8c:	b002      	add	sp, #8
     b8e:	bd80      	pop	{r7, pc}
     b90:	20006074 	.word	0x20006074

00000b94 <_link>:
     b94:	b580      	push	{r7, lr}
     b96:	b082      	sub	sp, #8
     b98:	af00      	add	r7, sp, #0
     b9a:	6078      	str	r0, [r7, #4]
     b9c:	6039      	str	r1, [r7, #0]
     b9e:	4b04      	ldr	r3, [pc, #16]	; (bb0 <_link+0x1c>)
     ba0:	221f      	movs	r2, #31
     ba2:	601a      	str	r2, [r3, #0]
     ba4:	2301      	movs	r3, #1
     ba6:	425b      	negs	r3, r3
     ba8:	0018      	movs	r0, r3
     baa:	46bd      	mov	sp, r7
     bac:	b002      	add	sp, #8
     bae:	bd80      	pop	{r7, pc}
     bb0:	20006074 	.word	0x20006074

00000bb4 <_lseek>:
     bb4:	b580      	push	{r7, lr}
     bb6:	b084      	sub	sp, #16
     bb8:	af00      	add	r7, sp, #0
     bba:	60f8      	str	r0, [r7, #12]
     bbc:	60b9      	str	r1, [r7, #8]
     bbe:	607a      	str	r2, [r7, #4]
     bc0:	2300      	movs	r3, #0
     bc2:	0018      	movs	r0, r3
     bc4:	46bd      	mov	sp, r7
     bc6:	b004      	add	sp, #16
     bc8:	bd80      	pop	{r7, pc}
     bca:	46c0      	nop			; (mov r8, r8)

00000bcc <_sbrk>:
     bcc:	b580      	push	{r7, lr}
     bce:	b086      	sub	sp, #24
     bd0:	af00      	add	r7, sp, #0
     bd2:	6078      	str	r0, [r7, #4]
     bd4:	4b16      	ldr	r3, [pc, #88]	; (c30 <_sbrk+0x64>)
     bd6:	681b      	ldr	r3, [r3, #0]
     bd8:	2b00      	cmp	r3, #0
     bda:	d102      	bne.n	be2 <_sbrk+0x16>
     bdc:	4b14      	ldr	r3, [pc, #80]	; (c30 <_sbrk+0x64>)
     bde:	4a15      	ldr	r2, [pc, #84]	; (c34 <_sbrk+0x68>)
     be0:	601a      	str	r2, [r3, #0]
     be2:	4b13      	ldr	r3, [pc, #76]	; (c30 <_sbrk+0x64>)
     be4:	681b      	ldr	r3, [r3, #0]
     be6:	617b      	str	r3, [r7, #20]
     be8:	f3ef 8308 	mrs	r3, MSP
     bec:	60fb      	str	r3, [r7, #12]
     bee:	68fb      	ldr	r3, [r7, #12]
     bf0:	613b      	str	r3, [r7, #16]
     bf2:	4b0f      	ldr	r3, [pc, #60]	; (c30 <_sbrk+0x64>)
     bf4:	681a      	ldr	r2, [r3, #0]
     bf6:	687b      	ldr	r3, [r7, #4]
     bf8:	18d2      	adds	r2, r2, r3
     bfa:	693b      	ldr	r3, [r7, #16]
     bfc:	429a      	cmp	r2, r3
     bfe:	d90b      	bls.n	c18 <_sbrk+0x4c>
     c00:	4b0d      	ldr	r3, [pc, #52]	; (c38 <_sbrk+0x6c>)
     c02:	2219      	movs	r2, #25
     c04:	0019      	movs	r1, r3
     c06:	2002      	movs	r0, #2
     c08:	f000 f86c 	bl	ce4 <_write>
     c0c:	4b0b      	ldr	r3, [pc, #44]	; (c3c <_sbrk+0x70>)
     c0e:	220c      	movs	r2, #12
     c10:	601a      	str	r2, [r3, #0]
     c12:	2301      	movs	r3, #1
     c14:	425b      	negs	r3, r3
     c16:	e006      	b.n	c26 <_sbrk+0x5a>
     c18:	4b05      	ldr	r3, [pc, #20]	; (c30 <_sbrk+0x64>)
     c1a:	681a      	ldr	r2, [r3, #0]
     c1c:	687b      	ldr	r3, [r7, #4]
     c1e:	18d2      	adds	r2, r2, r3
     c20:	4b03      	ldr	r3, [pc, #12]	; (c30 <_sbrk+0x64>)
     c22:	601a      	str	r2, [r3, #0]
     c24:	697b      	ldr	r3, [r7, #20]
     c26:	0018      	movs	r0, r3
     c28:	46bd      	mov	sp, r7
     c2a:	b006      	add	sp, #24
     c2c:	bd80      	pop	{r7, pc}
     c2e:	46c0      	nop			; (mov r8, r8)
     c30:	200008d4 	.word	0x200008d4
     c34:	200060fc 	.word	0x200060fc
     c38:	00008a6c 	.word	0x00008a6c
     c3c:	20006074 	.word	0x20006074

00000c40 <_read>:
     c40:	b580      	push	{r7, lr}
     c42:	b086      	sub	sp, #24
     c44:	af00      	add	r7, sp, #0
     c46:	60f8      	str	r0, [r7, #12]
     c48:	60b9      	str	r1, [r7, #8]
     c4a:	607a      	str	r2, [r7, #4]
     c4c:	2300      	movs	r3, #0
     c4e:	617b      	str	r3, [r7, #20]
     c50:	68fb      	ldr	r3, [r7, #12]
     c52:	2b00      	cmp	r3, #0
     c54:	d005      	beq.n	c62 <_read+0x22>
     c56:	4b06      	ldr	r3, [pc, #24]	; (c70 <_read+0x30>)
     c58:	2209      	movs	r2, #9
     c5a:	601a      	str	r2, [r3, #0]
     c5c:	2301      	movs	r3, #1
     c5e:	425b      	negs	r3, r3
     c60:	e001      	b.n	c66 <_read+0x26>
     c62:	46c0      	nop			; (mov r8, r8)
     c64:	697b      	ldr	r3, [r7, #20]
     c66:	0018      	movs	r0, r3
     c68:	46bd      	mov	sp, r7
     c6a:	b006      	add	sp, #24
     c6c:	bd80      	pop	{r7, pc}
     c6e:	46c0      	nop			; (mov r8, r8)
     c70:	20006074 	.word	0x20006074

00000c74 <_stat>:
     c74:	b580      	push	{r7, lr}
     c76:	b082      	sub	sp, #8
     c78:	af00      	add	r7, sp, #0
     c7a:	6078      	str	r0, [r7, #4]
     c7c:	6039      	str	r1, [r7, #0]
     c7e:	683b      	ldr	r3, [r7, #0]
     c80:	2280      	movs	r2, #128	; 0x80
     c82:	0192      	lsls	r2, r2, #6
     c84:	605a      	str	r2, [r3, #4]
     c86:	2300      	movs	r3, #0
     c88:	0018      	movs	r0, r3
     c8a:	46bd      	mov	sp, r7
     c8c:	b002      	add	sp, #8
     c8e:	bd80      	pop	{r7, pc}

00000c90 <_times>:
     c90:	b580      	push	{r7, lr}
     c92:	b082      	sub	sp, #8
     c94:	af00      	add	r7, sp, #0
     c96:	6078      	str	r0, [r7, #4]
     c98:	2301      	movs	r3, #1
     c9a:	425b      	negs	r3, r3
     c9c:	0018      	movs	r0, r3
     c9e:	46bd      	mov	sp, r7
     ca0:	b002      	add	sp, #8
     ca2:	bd80      	pop	{r7, pc}

00000ca4 <_unlink>:
     ca4:	b580      	push	{r7, lr}
     ca6:	b082      	sub	sp, #8
     ca8:	af00      	add	r7, sp, #0
     caa:	6078      	str	r0, [r7, #4]
     cac:	4b04      	ldr	r3, [pc, #16]	; (cc0 <_unlink+0x1c>)
     cae:	2202      	movs	r2, #2
     cb0:	601a      	str	r2, [r3, #0]
     cb2:	2301      	movs	r3, #1
     cb4:	425b      	negs	r3, r3
     cb6:	0018      	movs	r0, r3
     cb8:	46bd      	mov	sp, r7
     cba:	b002      	add	sp, #8
     cbc:	bd80      	pop	{r7, pc}
     cbe:	46c0      	nop			; (mov r8, r8)
     cc0:	20006074 	.word	0x20006074

00000cc4 <_wait>:
     cc4:	b580      	push	{r7, lr}
     cc6:	b082      	sub	sp, #8
     cc8:	af00      	add	r7, sp, #0
     cca:	6078      	str	r0, [r7, #4]
     ccc:	4b04      	ldr	r3, [pc, #16]	; (ce0 <_wait+0x1c>)
     cce:	220a      	movs	r2, #10
     cd0:	601a      	str	r2, [r3, #0]
     cd2:	2301      	movs	r3, #1
     cd4:	425b      	negs	r3, r3
     cd6:	0018      	movs	r0, r3
     cd8:	46bd      	mov	sp, r7
     cda:	b002      	add	sp, #8
     cdc:	bd80      	pop	{r7, pc}
     cde:	46c0      	nop			; (mov r8, r8)
     ce0:	20006074 	.word	0x20006074

00000ce4 <_write>:
     ce4:	b580      	push	{r7, lr}
     ce6:	b086      	sub	sp, #24
     ce8:	af00      	add	r7, sp, #0
     cea:	60f8      	str	r0, [r7, #12]
     cec:	60b9      	str	r1, [r7, #8]
     cee:	607a      	str	r2, [r7, #4]
     cf0:	68fb      	ldr	r3, [r7, #12]
     cf2:	2b01      	cmp	r3, #1
     cf4:	d002      	beq.n	cfc <_write+0x18>
     cf6:	2b02      	cmp	r3, #2
     cf8:	d00b      	beq.n	d12 <_write+0x2e>
     cfa:	e015      	b.n	d28 <_write+0x44>
     cfc:	2300      	movs	r3, #0
     cfe:	617b      	str	r3, [r7, #20]
     d00:	e002      	b.n	d08 <_write+0x24>
     d02:	697b      	ldr	r3, [r7, #20]
     d04:	3301      	adds	r3, #1
     d06:	617b      	str	r3, [r7, #20]
     d08:	697a      	ldr	r2, [r7, #20]
     d0a:	687b      	ldr	r3, [r7, #4]
     d0c:	429a      	cmp	r2, r3
     d0e:	dbf8      	blt.n	d02 <_write+0x1e>
     d10:	e010      	b.n	d34 <_write+0x50>
     d12:	2300      	movs	r3, #0
     d14:	617b      	str	r3, [r7, #20]
     d16:	e002      	b.n	d1e <_write+0x3a>
     d18:	697b      	ldr	r3, [r7, #20]
     d1a:	3301      	adds	r3, #1
     d1c:	617b      	str	r3, [r7, #20]
     d1e:	697a      	ldr	r2, [r7, #20]
     d20:	687b      	ldr	r3, [r7, #4]
     d22:	429a      	cmp	r2, r3
     d24:	dbf8      	blt.n	d18 <_write+0x34>
     d26:	e005      	b.n	d34 <_write+0x50>
     d28:	4b05      	ldr	r3, [pc, #20]	; (d40 <_write+0x5c>)
     d2a:	2209      	movs	r2, #9
     d2c:	601a      	str	r2, [r3, #0]
     d2e:	2301      	movs	r3, #1
     d30:	425b      	negs	r3, r3
     d32:	e000      	b.n	d36 <_write+0x52>
     d34:	687b      	ldr	r3, [r7, #4]
     d36:	0018      	movs	r0, r3
     d38:	46bd      	mov	sp, r7
     d3a:	b006      	add	sp, #24
     d3c:	bd80      	pop	{r7, pc}
     d3e:	46c0      	nop			; (mov r8, r8)
     d40:	20006074 	.word	0x20006074

00000d44 <_init>:
     d44:	b580      	push	{r7, lr}
     d46:	af00      	add	r7, sp, #0
     d48:	46c0      	nop			; (mov r8, r8)
     d4a:	46bd      	mov	sp, r7
     d4c:	bd80      	pop	{r7, pc}
     d4e:	46c0      	nop			; (mov r8, r8)

00000d50 <_fini>:
     d50:	b580      	push	{r7, lr}
     d52:	af00      	add	r7, sp, #0
     d54:	46c0      	nop			; (mov r8, r8)
     d56:	46bd      	mov	sp, r7
     d58:	bd80      	pop	{r7, pc}
     d5a:	46c0      	nop			; (mov r8, r8)

00000d5c <__NVIC_EnableIRQ>:
     d5c:	b580      	push	{r7, lr}
     d5e:	b082      	sub	sp, #8
     d60:	af00      	add	r7, sp, #0
     d62:	0002      	movs	r2, r0
     d64:	1dfb      	adds	r3, r7, #7
     d66:	701a      	strb	r2, [r3, #0]
     d68:	1dfb      	adds	r3, r7, #7
     d6a:	781b      	ldrb	r3, [r3, #0]
     d6c:	2b7f      	cmp	r3, #127	; 0x7f
     d6e:	d809      	bhi.n	d84 <__NVIC_EnableIRQ+0x28>
     d70:	4b06      	ldr	r3, [pc, #24]	; (d8c <__NVIC_EnableIRQ+0x30>)
     d72:	1dfa      	adds	r2, r7, #7
     d74:	7812      	ldrb	r2, [r2, #0]
     d76:	0011      	movs	r1, r2
     d78:	221f      	movs	r2, #31
     d7a:	400a      	ands	r2, r1
     d7c:	2101      	movs	r1, #1
     d7e:	4091      	lsls	r1, r2
     d80:	000a      	movs	r2, r1
     d82:	601a      	str	r2, [r3, #0]
     d84:	46c0      	nop			; (mov r8, r8)
     d86:	46bd      	mov	sp, r7
     d88:	b002      	add	sp, #8
     d8a:	bd80      	pop	{r7, pc}
     d8c:	e000e100 	.word	0xe000e100

00000d90 <__NVIC_DisableIRQ>:
     d90:	b580      	push	{r7, lr}
     d92:	b082      	sub	sp, #8
     d94:	af00      	add	r7, sp, #0
     d96:	0002      	movs	r2, r0
     d98:	1dfb      	adds	r3, r7, #7
     d9a:	701a      	strb	r2, [r3, #0]
     d9c:	1dfb      	adds	r3, r7, #7
     d9e:	781b      	ldrb	r3, [r3, #0]
     da0:	2b7f      	cmp	r3, #127	; 0x7f
     da2:	d80e      	bhi.n	dc2 <__NVIC_DisableIRQ+0x32>
     da4:	4909      	ldr	r1, [pc, #36]	; (dcc <__NVIC_DisableIRQ+0x3c>)
     da6:	1dfb      	adds	r3, r7, #7
     da8:	781b      	ldrb	r3, [r3, #0]
     daa:	001a      	movs	r2, r3
     dac:	231f      	movs	r3, #31
     dae:	4013      	ands	r3, r2
     db0:	2201      	movs	r2, #1
     db2:	409a      	lsls	r2, r3
     db4:	0013      	movs	r3, r2
     db6:	2280      	movs	r2, #128	; 0x80
     db8:	508b      	str	r3, [r1, r2]
     dba:	f3bf 8f4f 	dsb	sy
     dbe:	f3bf 8f6f 	isb	sy
     dc2:	46c0      	nop			; (mov r8, r8)
     dc4:	46bd      	mov	sp, r7
     dc6:	b002      	add	sp, #8
     dc8:	bd80      	pop	{r7, pc}
     dca:	46c0      	nop			; (mov r8, r8)
     dcc:	e000e100 	.word	0xe000e100

00000dd0 <mdb232_init>:
     dd0:	b580      	push	{r7, lr}
     dd2:	af00      	add	r7, sp, #0
     dd4:	4b15      	ldr	r3, [pc, #84]	; (e2c <mdb232_init+0x5c>)
     dd6:	229c      	movs	r2, #156	; 0x9c
     dd8:	0052      	lsls	r2, r2, #1
     dda:	625a      	str	r2, [r3, #36]	; 0x24
     ddc:	4b13      	ldr	r3, [pc, #76]	; (e2c <mdb232_init+0x5c>)
     dde:	2220      	movs	r2, #32
     de0:	629a      	str	r2, [r3, #40]	; 0x28
     de2:	4b12      	ldr	r3, [pc, #72]	; (e2c <mdb232_init+0x5c>)
     de4:	4a11      	ldr	r2, [pc, #68]	; (e2c <mdb232_init+0x5c>)
     de6:	6b52      	ldr	r2, [r2, #52]	; 0x34
     de8:	213f      	movs	r1, #63	; 0x3f
     dea:	438a      	bics	r2, r1
     dec:	635a      	str	r2, [r3, #52]	; 0x34
     dee:	4b0f      	ldr	r3, [pc, #60]	; (e2c <mdb232_init+0x5c>)
     df0:	4a0e      	ldr	r2, [pc, #56]	; (e2c <mdb232_init+0x5c>)
     df2:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     df4:	2110      	movs	r1, #16
     df6:	430a      	orrs	r2, r1
     df8:	62da      	str	r2, [r3, #44]	; 0x2c
     dfa:	4b0c      	ldr	r3, [pc, #48]	; (e2c <mdb232_init+0x5c>)
     dfc:	4a0b      	ldr	r2, [pc, #44]	; (e2c <mdb232_init+0x5c>)
     dfe:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     e00:	2160      	movs	r1, #96	; 0x60
     e02:	430a      	orrs	r2, r1
     e04:	62da      	str	r2, [r3, #44]	; 0x2c
     e06:	4b09      	ldr	r3, [pc, #36]	; (e2c <mdb232_init+0x5c>)
     e08:	4a08      	ldr	r2, [pc, #32]	; (e2c <mdb232_init+0x5c>)
     e0a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     e0c:	4908      	ldr	r1, [pc, #32]	; (e30 <mdb232_init+0x60>)
     e0e:	430a      	orrs	r2, r1
     e10:	631a      	str	r2, [r3, #48]	; 0x30
     e12:	4b06      	ldr	r3, [pc, #24]	; (e2c <mdb232_init+0x5c>)
     e14:	4a05      	ldr	r2, [pc, #20]	; (e2c <mdb232_init+0x5c>)
     e16:	6b92      	ldr	r2, [r2, #56]	; 0x38
     e18:	2140      	movs	r1, #64	; 0x40
     e1a:	430a      	orrs	r2, r1
     e1c:	639a      	str	r2, [r3, #56]	; 0x38
     e1e:	2006      	movs	r0, #6
     e20:	f7ff ff9c 	bl	d5c <__NVIC_EnableIRQ>
     e24:	46c0      	nop			; (mov r8, r8)
     e26:	46bd      	mov	sp, r7
     e28:	bd80      	pop	{r7, pc}
     e2a:	46c0      	nop			; (mov r8, r8)
     e2c:	40030000 	.word	0x40030000
     e30:	00000301 	.word	0x00000301

00000e34 <mdb232_send>:
     e34:	b580      	push	{r7, lr}
     e36:	b084      	sub	sp, #16
     e38:	af00      	add	r7, sp, #0
     e3a:	6078      	str	r0, [r7, #4]
     e3c:	6039      	str	r1, [r7, #0]
     e3e:	2300      	movs	r3, #0
     e40:	60fb      	str	r3, [r7, #12]
     e42:	e00e      	b.n	e62 <mdb232_send+0x2e>
     e44:	46c0      	nop			; (mov r8, r8)
     e46:	4b0e      	ldr	r3, [pc, #56]	; (e80 <mdb232_send+0x4c>)
     e48:	699b      	ldr	r3, [r3, #24]
     e4a:	2220      	movs	r2, #32
     e4c:	4013      	ands	r3, r2
     e4e:	d1fa      	bne.n	e46 <mdb232_send+0x12>
     e50:	4a0b      	ldr	r2, [pc, #44]	; (e80 <mdb232_send+0x4c>)
     e52:	687b      	ldr	r3, [r7, #4]
     e54:	1c59      	adds	r1, r3, #1
     e56:	6079      	str	r1, [r7, #4]
     e58:	781b      	ldrb	r3, [r3, #0]
     e5a:	6013      	str	r3, [r2, #0]
     e5c:	68fb      	ldr	r3, [r7, #12]
     e5e:	3301      	adds	r3, #1
     e60:	60fb      	str	r3, [r7, #12]
     e62:	68fa      	ldr	r2, [r7, #12]
     e64:	683b      	ldr	r3, [r7, #0]
     e66:	429a      	cmp	r2, r3
     e68:	dbec      	blt.n	e44 <mdb232_send+0x10>
     e6a:	46c0      	nop			; (mov r8, r8)
     e6c:	4b04      	ldr	r3, [pc, #16]	; (e80 <mdb232_send+0x4c>)
     e6e:	699b      	ldr	r3, [r3, #24]
     e70:	2208      	movs	r2, #8
     e72:	4013      	ands	r3, r2
     e74:	d1fa      	bne.n	e6c <mdb232_send+0x38>
     e76:	683b      	ldr	r3, [r7, #0]
     e78:	0018      	movs	r0, r3
     e7a:	46bd      	mov	sp, r7
     e7c:	b004      	add	sp, #16
     e7e:	bd80      	pop	{r7, pc}
     e80:	40030000 	.word	0x40030000

00000e84 <mdb232_read_inputregs>:
     e84:	b590      	push	{r4, r7, lr}
     e86:	b085      	sub	sp, #20
     e88:	af00      	add	r7, sp, #0
     e8a:	0004      	movs	r4, r0
     e8c:	0008      	movs	r0, r1
     e8e:	0011      	movs	r1, r2
     e90:	1dfb      	adds	r3, r7, #7
     e92:	1c22      	adds	r2, r4, #0
     e94:	701a      	strb	r2, [r3, #0]
     e96:	1d3b      	adds	r3, r7, #4
     e98:	1c02      	adds	r2, r0, #0
     e9a:	801a      	strh	r2, [r3, #0]
     e9c:	1cbb      	adds	r3, r7, #2
     e9e:	1c0a      	adds	r2, r1, #0
     ea0:	801a      	strh	r2, [r3, #0]
     ea2:	4b28      	ldr	r3, [pc, #160]	; (f44 <mdb232_read_inputregs+0xc0>)
     ea4:	60fb      	str	r3, [r7, #12]
     ea6:	68fb      	ldr	r3, [r7, #12]
     ea8:	1c5a      	adds	r2, r3, #1
     eaa:	60fa      	str	r2, [r7, #12]
     eac:	1dfa      	adds	r2, r7, #7
     eae:	7812      	ldrb	r2, [r2, #0]
     eb0:	701a      	strb	r2, [r3, #0]
     eb2:	68fb      	ldr	r3, [r7, #12]
     eb4:	1c5a      	adds	r2, r3, #1
     eb6:	60fa      	str	r2, [r7, #12]
     eb8:	2204      	movs	r2, #4
     eba:	701a      	strb	r2, [r3, #0]
     ebc:	68fb      	ldr	r3, [r7, #12]
     ebe:	1c5a      	adds	r2, r3, #1
     ec0:	60fa      	str	r2, [r7, #12]
     ec2:	1d3a      	adds	r2, r7, #4
     ec4:	8812      	ldrh	r2, [r2, #0]
     ec6:	0a12      	lsrs	r2, r2, #8
     ec8:	b292      	uxth	r2, r2
     eca:	b2d2      	uxtb	r2, r2
     ecc:	701a      	strb	r2, [r3, #0]
     ece:	68fb      	ldr	r3, [r7, #12]
     ed0:	1c5a      	adds	r2, r3, #1
     ed2:	60fa      	str	r2, [r7, #12]
     ed4:	1d3a      	adds	r2, r7, #4
     ed6:	8812      	ldrh	r2, [r2, #0]
     ed8:	b2d2      	uxtb	r2, r2
     eda:	701a      	strb	r2, [r3, #0]
     edc:	68fb      	ldr	r3, [r7, #12]
     ede:	1c5a      	adds	r2, r3, #1
     ee0:	60fa      	str	r2, [r7, #12]
     ee2:	1cba      	adds	r2, r7, #2
     ee4:	8812      	ldrh	r2, [r2, #0]
     ee6:	0a12      	lsrs	r2, r2, #8
     ee8:	b292      	uxth	r2, r2
     eea:	b2d2      	uxtb	r2, r2
     eec:	701a      	strb	r2, [r3, #0]
     eee:	68fb      	ldr	r3, [r7, #12]
     ef0:	1c5a      	adds	r2, r3, #1
     ef2:	60fa      	str	r2, [r7, #12]
     ef4:	1cba      	adds	r2, r7, #2
     ef6:	8812      	ldrh	r2, [r2, #0]
     ef8:	b2d2      	uxtb	r2, r2
     efa:	701a      	strb	r2, [r3, #0]
     efc:	230a      	movs	r3, #10
     efe:	18fc      	adds	r4, r7, r3
     f00:	4b10      	ldr	r3, [pc, #64]	; (f44 <mdb232_read_inputregs+0xc0>)
     f02:	2106      	movs	r1, #6
     f04:	0018      	movs	r0, r3
     f06:	f002 f8ed 	bl	30e4 <crc16>
     f0a:	0003      	movs	r3, r0
     f0c:	8023      	strh	r3, [r4, #0]
     f0e:	68fb      	ldr	r3, [r7, #12]
     f10:	1c5a      	adds	r2, r3, #1
     f12:	60fa      	str	r2, [r7, #12]
     f14:	220a      	movs	r2, #10
     f16:	18ba      	adds	r2, r7, r2
     f18:	8812      	ldrh	r2, [r2, #0]
     f1a:	b2d2      	uxtb	r2, r2
     f1c:	701a      	strb	r2, [r3, #0]
     f1e:	68fb      	ldr	r3, [r7, #12]
     f20:	1c5a      	adds	r2, r3, #1
     f22:	60fa      	str	r2, [r7, #12]
     f24:	220a      	movs	r2, #10
     f26:	18ba      	adds	r2, r7, r2
     f28:	8812      	ldrh	r2, [r2, #0]
     f2a:	0a12      	lsrs	r2, r2, #8
     f2c:	b292      	uxth	r2, r2
     f2e:	b2d2      	uxtb	r2, r2
     f30:	701a      	strb	r2, [r3, #0]
     f32:	4b04      	ldr	r3, [pc, #16]	; (f44 <mdb232_read_inputregs+0xc0>)
     f34:	2108      	movs	r1, #8
     f36:	0018      	movs	r0, r3
     f38:	f7ff ff7c 	bl	e34 <mdb232_send>
     f3c:	46c0      	nop			; (mov r8, r8)
     f3e:	46bd      	mov	sp, r7
     f40:	b005      	add	sp, #20
     f42:	bd90      	pop	{r4, r7, pc}
     f44:	200008e8 	.word	0x200008e8

00000f48 <mdb232_readregs>:
     f48:	b590      	push	{r4, r7, lr}
     f4a:	b085      	sub	sp, #20
     f4c:	af00      	add	r7, sp, #0
     f4e:	0004      	movs	r4, r0
     f50:	0008      	movs	r0, r1
     f52:	0011      	movs	r1, r2
     f54:	1dfb      	adds	r3, r7, #7
     f56:	1c22      	adds	r2, r4, #0
     f58:	701a      	strb	r2, [r3, #0]
     f5a:	1d3b      	adds	r3, r7, #4
     f5c:	1c02      	adds	r2, r0, #0
     f5e:	801a      	strh	r2, [r3, #0]
     f60:	1cbb      	adds	r3, r7, #2
     f62:	1c0a      	adds	r2, r1, #0
     f64:	801a      	strh	r2, [r3, #0]
     f66:	4b28      	ldr	r3, [pc, #160]	; (1008 <mdb232_readregs+0xc0>)
     f68:	60fb      	str	r3, [r7, #12]
     f6a:	68fb      	ldr	r3, [r7, #12]
     f6c:	1c5a      	adds	r2, r3, #1
     f6e:	60fa      	str	r2, [r7, #12]
     f70:	1dfa      	adds	r2, r7, #7
     f72:	7812      	ldrb	r2, [r2, #0]
     f74:	701a      	strb	r2, [r3, #0]
     f76:	68fb      	ldr	r3, [r7, #12]
     f78:	1c5a      	adds	r2, r3, #1
     f7a:	60fa      	str	r2, [r7, #12]
     f7c:	2203      	movs	r2, #3
     f7e:	701a      	strb	r2, [r3, #0]
     f80:	68fb      	ldr	r3, [r7, #12]
     f82:	1c5a      	adds	r2, r3, #1
     f84:	60fa      	str	r2, [r7, #12]
     f86:	1d3a      	adds	r2, r7, #4
     f88:	8812      	ldrh	r2, [r2, #0]
     f8a:	0a12      	lsrs	r2, r2, #8
     f8c:	b292      	uxth	r2, r2
     f8e:	b2d2      	uxtb	r2, r2
     f90:	701a      	strb	r2, [r3, #0]
     f92:	68fb      	ldr	r3, [r7, #12]
     f94:	1c5a      	adds	r2, r3, #1
     f96:	60fa      	str	r2, [r7, #12]
     f98:	1d3a      	adds	r2, r7, #4
     f9a:	8812      	ldrh	r2, [r2, #0]
     f9c:	b2d2      	uxtb	r2, r2
     f9e:	701a      	strb	r2, [r3, #0]
     fa0:	68fb      	ldr	r3, [r7, #12]
     fa2:	1c5a      	adds	r2, r3, #1
     fa4:	60fa      	str	r2, [r7, #12]
     fa6:	1cba      	adds	r2, r7, #2
     fa8:	8812      	ldrh	r2, [r2, #0]
     faa:	0a12      	lsrs	r2, r2, #8
     fac:	b292      	uxth	r2, r2
     fae:	b2d2      	uxtb	r2, r2
     fb0:	701a      	strb	r2, [r3, #0]
     fb2:	68fb      	ldr	r3, [r7, #12]
     fb4:	1c5a      	adds	r2, r3, #1
     fb6:	60fa      	str	r2, [r7, #12]
     fb8:	1cba      	adds	r2, r7, #2
     fba:	8812      	ldrh	r2, [r2, #0]
     fbc:	b2d2      	uxtb	r2, r2
     fbe:	701a      	strb	r2, [r3, #0]
     fc0:	230a      	movs	r3, #10
     fc2:	18fc      	adds	r4, r7, r3
     fc4:	4b10      	ldr	r3, [pc, #64]	; (1008 <mdb232_readregs+0xc0>)
     fc6:	2106      	movs	r1, #6
     fc8:	0018      	movs	r0, r3
     fca:	f002 f88b 	bl	30e4 <crc16>
     fce:	0003      	movs	r3, r0
     fd0:	8023      	strh	r3, [r4, #0]
     fd2:	68fb      	ldr	r3, [r7, #12]
     fd4:	1c5a      	adds	r2, r3, #1
     fd6:	60fa      	str	r2, [r7, #12]
     fd8:	220a      	movs	r2, #10
     fda:	18ba      	adds	r2, r7, r2
     fdc:	8812      	ldrh	r2, [r2, #0]
     fde:	b2d2      	uxtb	r2, r2
     fe0:	701a      	strb	r2, [r3, #0]
     fe2:	68fb      	ldr	r3, [r7, #12]
     fe4:	1c5a      	adds	r2, r3, #1
     fe6:	60fa      	str	r2, [r7, #12]
     fe8:	220a      	movs	r2, #10
     fea:	18ba      	adds	r2, r7, r2
     fec:	8812      	ldrh	r2, [r2, #0]
     fee:	0a12      	lsrs	r2, r2, #8
     ff0:	b292      	uxth	r2, r2
     ff2:	b2d2      	uxtb	r2, r2
     ff4:	701a      	strb	r2, [r3, #0]
     ff6:	4b04      	ldr	r3, [pc, #16]	; (1008 <mdb232_readregs+0xc0>)
     ff8:	2108      	movs	r1, #8
     ffa:	0018      	movs	r0, r3
     ffc:	f7ff ff1a 	bl	e34 <mdb232_send>
    1000:	46c0      	nop			; (mov r8, r8)
    1002:	46bd      	mov	sp, r7
    1004:	b005      	add	sp, #20
    1006:	bd90      	pop	{r4, r7, pc}
    1008:	200008e8 	.word	0x200008e8

0000100c <mdb232_bikm_get_torque>:
    100c:	b580      	push	{r7, lr}
    100e:	b084      	sub	sp, #16
    1010:	af00      	add	r7, sp, #0
    1012:	4b27      	ldr	r3, [pc, #156]	; (10b0 <mdb232_bikm_get_torque+0xa4>)
    1014:	60fb      	str	r3, [r7, #12]
    1016:	2006      	movs	r0, #6
    1018:	f7ff feba 	bl	d90 <__NVIC_DisableIRQ>
    101c:	4b25      	ldr	r3, [pc, #148]	; (10b4 <mdb232_bikm_get_torque+0xa8>)
    101e:	681b      	ldr	r3, [r3, #0]
    1020:	2b00      	cmp	r3, #0
    1022:	d03c      	beq.n	109e <mdb232_bikm_get_torque+0x92>
    1024:	68fb      	ldr	r3, [r7, #12]
    1026:	1c5a      	adds	r2, r3, #1
    1028:	60fa      	str	r2, [r7, #12]
    102a:	781b      	ldrb	r3, [r3, #0]
    102c:	041b      	lsls	r3, r3, #16
    102e:	60bb      	str	r3, [r7, #8]
    1030:	68fb      	ldr	r3, [r7, #12]
    1032:	1c5a      	adds	r2, r3, #1
    1034:	60fa      	str	r2, [r7, #12]
    1036:	781b      	ldrb	r3, [r3, #0]
    1038:	061b      	lsls	r3, r3, #24
    103a:	001a      	movs	r2, r3
    103c:	68bb      	ldr	r3, [r7, #8]
    103e:	4313      	orrs	r3, r2
    1040:	60bb      	str	r3, [r7, #8]
    1042:	68fb      	ldr	r3, [r7, #12]
    1044:	1c5a      	adds	r2, r3, #1
    1046:	60fa      	str	r2, [r7, #12]
    1048:	781b      	ldrb	r3, [r3, #0]
    104a:	001a      	movs	r2, r3
    104c:	68bb      	ldr	r3, [r7, #8]
    104e:	4313      	orrs	r3, r2
    1050:	60bb      	str	r3, [r7, #8]
    1052:	68fb      	ldr	r3, [r7, #12]
    1054:	781b      	ldrb	r3, [r3, #0]
    1056:	021b      	lsls	r3, r3, #8
    1058:	001a      	movs	r2, r3
    105a:	68bb      	ldr	r3, [r7, #8]
    105c:	4313      	orrs	r3, r2
    105e:	60bb      	str	r3, [r7, #8]
    1060:	2006      	movs	r0, #6
    1062:	f7ff fe7b 	bl	d5c <__NVIC_EnableIRQ>
    1066:	68bb      	ldr	r3, [r7, #8]
    1068:	0ddb      	lsrs	r3, r3, #23
    106a:	22ff      	movs	r2, #255	; 0xff
    106c:	4013      	ands	r3, r2
    106e:	3b7f      	subs	r3, #127	; 0x7f
    1070:	607b      	str	r3, [r7, #4]
    1072:	68bb      	ldr	r3, [r7, #8]
    1074:	025b      	lsls	r3, r3, #9
    1076:	0a5b      	lsrs	r3, r3, #9
    1078:	2280      	movs	r2, #128	; 0x80
    107a:	0412      	lsls	r2, r2, #16
    107c:	4313      	orrs	r3, r2
    107e:	603b      	str	r3, [r7, #0]
    1080:	687b      	ldr	r3, [r7, #4]
    1082:	220e      	movs	r2, #14
    1084:	1ad3      	subs	r3, r2, r3
    1086:	2201      	movs	r2, #1
    1088:	409a      	lsls	r2, r3
    108a:	0013      	movs	r3, r2
    108c:	001a      	movs	r2, r3
    108e:	683b      	ldr	r3, [r7, #0]
    1090:	18d2      	adds	r2, r2, r3
    1092:	687b      	ldr	r3, [r7, #4]
    1094:	210f      	movs	r1, #15
    1096:	1acb      	subs	r3, r1, r3
    1098:	40da      	lsrs	r2, r3
    109a:	0013      	movs	r3, r2
    109c:	e003      	b.n	10a6 <mdb232_bikm_get_torque+0x9a>
    109e:	2006      	movs	r0, #6
    10a0:	f7ff fe5c 	bl	d5c <__NVIC_EnableIRQ>
    10a4:	2300      	movs	r3, #0
    10a6:	0018      	movs	r0, r3
    10a8:	46bd      	mov	sp, r7
    10aa:	b004      	add	sp, #16
    10ac:	bd80      	pop	{r7, pc}
    10ae:	46c0      	nop			; (mov r8, r8)
    10b0:	200008db 	.word	0x200008db
    10b4:	200008f8 	.word	0x200008f8

000010b8 <UART1_Handler>:
    10b8:	b580      	push	{r7, lr}
    10ba:	b082      	sub	sp, #8
    10bc:	af00      	add	r7, sp, #0
    10be:	4b16      	ldr	r3, [pc, #88]	; (1118 <UART1_Handler+0x60>)
    10c0:	2200      	movs	r2, #0
    10c2:	601a      	str	r2, [r3, #0]
    10c4:	4b15      	ldr	r3, [pc, #84]	; (111c <UART1_Handler+0x64>)
    10c6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    10c8:	2240      	movs	r2, #64	; 0x40
    10ca:	4013      	ands	r3, r2
    10cc:	d016      	beq.n	10fc <UART1_Handler+0x44>
    10ce:	4b14      	ldr	r3, [pc, #80]	; (1120 <UART1_Handler+0x68>)
    10d0:	603b      	str	r3, [r7, #0]
    10d2:	2300      	movs	r3, #0
    10d4:	607b      	str	r3, [r7, #4]
    10d6:	e009      	b.n	10ec <UART1_Handler+0x34>
    10d8:	683b      	ldr	r3, [r7, #0]
    10da:	1c5a      	adds	r2, r3, #1
    10dc:	603a      	str	r2, [r7, #0]
    10de:	4a0f      	ldr	r2, [pc, #60]	; (111c <UART1_Handler+0x64>)
    10e0:	6812      	ldr	r2, [r2, #0]
    10e2:	b2d2      	uxtb	r2, r2
    10e4:	701a      	strb	r2, [r3, #0]
    10e6:	687b      	ldr	r3, [r7, #4]
    10e8:	3301      	adds	r3, #1
    10ea:	607b      	str	r3, [r7, #4]
    10ec:	687b      	ldr	r3, [r7, #4]
    10ee:	2b0f      	cmp	r3, #15
    10f0:	dc04      	bgt.n	10fc <UART1_Handler+0x44>
    10f2:	4b0a      	ldr	r3, [pc, #40]	; (111c <UART1_Handler+0x64>)
    10f4:	699b      	ldr	r3, [r3, #24]
    10f6:	2210      	movs	r2, #16
    10f8:	4013      	ands	r3, r2
    10fa:	d0ed      	beq.n	10d8 <UART1_Handler+0x20>
    10fc:	4b06      	ldr	r3, [pc, #24]	; (1118 <UART1_Handler+0x60>)
    10fe:	687a      	ldr	r2, [r7, #4]
    1100:	601a      	str	r2, [r3, #0]
    1102:	4b08      	ldr	r3, [pc, #32]	; (1124 <UART1_Handler+0x6c>)
    1104:	681b      	ldr	r3, [r3, #0]
    1106:	2102      	movs	r1, #2
    1108:	0018      	movs	r0, r3
    110a:	f005 fb25 	bl	6758 <osSignalSet>
    110e:	46c0      	nop			; (mov r8, r8)
    1110:	46bd      	mov	sp, r7
    1112:	b002      	add	sp, #8
    1114:	bd80      	pop	{r7, pc}
    1116:	46c0      	nop			; (mov r8, r8)
    1118:	200008f8 	.word	0x200008f8
    111c:	40030000 	.word	0x40030000
    1120:	200008d8 	.word	0x200008d8
    1124:	20000860 	.word	0x20000860

00001128 <xputc>:
    1128:	b580      	push	{r7, lr}
    112a:	b082      	sub	sp, #8
    112c:	af00      	add	r7, sp, #0
    112e:	0002      	movs	r2, r0
    1130:	1dfb      	adds	r3, r7, #7
    1132:	701a      	strb	r2, [r3, #0]
    1134:	1dfb      	adds	r3, r7, #7
    1136:	781b      	ldrb	r3, [r3, #0]
    1138:	2b0a      	cmp	r3, #10
    113a:	d102      	bne.n	1142 <xputc+0x1a>
    113c:	200d      	movs	r0, #13
    113e:	f7ff fff3 	bl	1128 <xputc>
    1142:	4b0d      	ldr	r3, [pc, #52]	; (1178 <xputc+0x50>)
    1144:	681b      	ldr	r3, [r3, #0]
    1146:	2b00      	cmp	r3, #0
    1148:	d008      	beq.n	115c <xputc+0x34>
    114a:	4b0b      	ldr	r3, [pc, #44]	; (1178 <xputc+0x50>)
    114c:	681b      	ldr	r3, [r3, #0]
    114e:	1c59      	adds	r1, r3, #1
    1150:	4a09      	ldr	r2, [pc, #36]	; (1178 <xputc+0x50>)
    1152:	6011      	str	r1, [r2, #0]
    1154:	1dfa      	adds	r2, r7, #7
    1156:	7812      	ldrb	r2, [r2, #0]
    1158:	701a      	strb	r2, [r3, #0]
    115a:	e009      	b.n	1170 <xputc+0x48>
    115c:	4b07      	ldr	r3, [pc, #28]	; (117c <xputc+0x54>)
    115e:	681b      	ldr	r3, [r3, #0]
    1160:	2b00      	cmp	r3, #0
    1162:	d005      	beq.n	1170 <xputc+0x48>
    1164:	4b05      	ldr	r3, [pc, #20]	; (117c <xputc+0x54>)
    1166:	681b      	ldr	r3, [r3, #0]
    1168:	1dfa      	adds	r2, r7, #7
    116a:	7812      	ldrb	r2, [r2, #0]
    116c:	0010      	movs	r0, r2
    116e:	4798      	blx	r3
    1170:	46bd      	mov	sp, r7
    1172:	b002      	add	sp, #8
    1174:	bd80      	pop	{r7, pc}
    1176:	46c0      	nop			; (mov r8, r8)
    1178:	20000900 	.word	0x20000900
    117c:	200008fc 	.word	0x200008fc

00001180 <xputs>:
    1180:	b580      	push	{r7, lr}
    1182:	b082      	sub	sp, #8
    1184:	af00      	add	r7, sp, #0
    1186:	6078      	str	r0, [r7, #4]
    1188:	e006      	b.n	1198 <xputs+0x18>
    118a:	687b      	ldr	r3, [r7, #4]
    118c:	1c5a      	adds	r2, r3, #1
    118e:	607a      	str	r2, [r7, #4]
    1190:	781b      	ldrb	r3, [r3, #0]
    1192:	0018      	movs	r0, r3
    1194:	f7ff ffc8 	bl	1128 <xputc>
    1198:	687b      	ldr	r3, [r7, #4]
    119a:	781b      	ldrb	r3, [r3, #0]
    119c:	2b00      	cmp	r3, #0
    119e:	d1f4      	bne.n	118a <xputs+0xa>
    11a0:	46c0      	nop			; (mov r8, r8)
    11a2:	46bd      	mov	sp, r7
    11a4:	b002      	add	sp, #8
    11a6:	bd80      	pop	{r7, pc}

000011a8 <xfputs>:
    11a8:	b580      	push	{r7, lr}
    11aa:	b084      	sub	sp, #16
    11ac:	af00      	add	r7, sp, #0
    11ae:	6078      	str	r0, [r7, #4]
    11b0:	6039      	str	r1, [r7, #0]
    11b2:	4b0c      	ldr	r3, [pc, #48]	; (11e4 <xfputs+0x3c>)
    11b4:	681b      	ldr	r3, [r3, #0]
    11b6:	60fb      	str	r3, [r7, #12]
    11b8:	4b0a      	ldr	r3, [pc, #40]	; (11e4 <xfputs+0x3c>)
    11ba:	687a      	ldr	r2, [r7, #4]
    11bc:	601a      	str	r2, [r3, #0]
    11be:	e006      	b.n	11ce <xfputs+0x26>
    11c0:	683b      	ldr	r3, [r7, #0]
    11c2:	1c5a      	adds	r2, r3, #1
    11c4:	603a      	str	r2, [r7, #0]
    11c6:	781b      	ldrb	r3, [r3, #0]
    11c8:	0018      	movs	r0, r3
    11ca:	f7ff ffad 	bl	1128 <xputc>
    11ce:	683b      	ldr	r3, [r7, #0]
    11d0:	781b      	ldrb	r3, [r3, #0]
    11d2:	2b00      	cmp	r3, #0
    11d4:	d1f4      	bne.n	11c0 <xfputs+0x18>
    11d6:	4b03      	ldr	r3, [pc, #12]	; (11e4 <xfputs+0x3c>)
    11d8:	68fa      	ldr	r2, [r7, #12]
    11da:	601a      	str	r2, [r3, #0]
    11dc:	46c0      	nop			; (mov r8, r8)
    11de:	46bd      	mov	sp, r7
    11e0:	b004      	add	sp, #16
    11e2:	bd80      	pop	{r7, pc}
    11e4:	200008fc 	.word	0x200008fc

000011e8 <xvprintf>:
    11e8:	b580      	push	{r7, lr}
    11ea:	b08e      	sub	sp, #56	; 0x38
    11ec:	af00      	add	r7, sp, #0
    11ee:	6078      	str	r0, [r7, #4]
    11f0:	6039      	str	r1, [r7, #0]
    11f2:	687b      	ldr	r3, [r7, #4]
    11f4:	1c5a      	adds	r2, r3, #1
    11f6:	607a      	str	r2, [r7, #4]
    11f8:	221f      	movs	r2, #31
    11fa:	18ba      	adds	r2, r7, r2
    11fc:	781b      	ldrb	r3, [r3, #0]
    11fe:	7013      	strb	r3, [r2, #0]
    1200:	231f      	movs	r3, #31
    1202:	18fb      	adds	r3, r7, r3
    1204:	781b      	ldrb	r3, [r3, #0]
    1206:	2b00      	cmp	r3, #0
    1208:	d100      	bne.n	120c <xvprintf+0x24>
    120a:	e172      	b.n	14f2 <xvprintf+0x30a>
    120c:	231f      	movs	r3, #31
    120e:	18fb      	adds	r3, r7, r3
    1210:	781b      	ldrb	r3, [r3, #0]
    1212:	2b25      	cmp	r3, #37	; 0x25
    1214:	d006      	beq.n	1224 <xvprintf+0x3c>
    1216:	231f      	movs	r3, #31
    1218:	18fb      	adds	r3, r7, r3
    121a:	781b      	ldrb	r3, [r3, #0]
    121c:	0018      	movs	r0, r3
    121e:	f7ff ff83 	bl	1128 <xputc>
    1222:	e165      	b.n	14f0 <xvprintf+0x308>
    1224:	2300      	movs	r3, #0
    1226:	627b      	str	r3, [r7, #36]	; 0x24
    1228:	687b      	ldr	r3, [r7, #4]
    122a:	1c5a      	adds	r2, r3, #1
    122c:	607a      	str	r2, [r7, #4]
    122e:	221f      	movs	r2, #31
    1230:	18ba      	adds	r2, r7, r2
    1232:	781b      	ldrb	r3, [r3, #0]
    1234:	7013      	strb	r3, [r2, #0]
    1236:	231f      	movs	r3, #31
    1238:	18fb      	adds	r3, r7, r3
    123a:	781b      	ldrb	r3, [r3, #0]
    123c:	2b30      	cmp	r3, #48	; 0x30
    123e:	d109      	bne.n	1254 <xvprintf+0x6c>
    1240:	2301      	movs	r3, #1
    1242:	627b      	str	r3, [r7, #36]	; 0x24
    1244:	687b      	ldr	r3, [r7, #4]
    1246:	1c5a      	adds	r2, r3, #1
    1248:	607a      	str	r2, [r7, #4]
    124a:	221f      	movs	r2, #31
    124c:	18ba      	adds	r2, r7, r2
    124e:	781b      	ldrb	r3, [r3, #0]
    1250:	7013      	strb	r3, [r2, #0]
    1252:	e00d      	b.n	1270 <xvprintf+0x88>
    1254:	231f      	movs	r3, #31
    1256:	18fb      	adds	r3, r7, r3
    1258:	781b      	ldrb	r3, [r3, #0]
    125a:	2b2d      	cmp	r3, #45	; 0x2d
    125c:	d108      	bne.n	1270 <xvprintf+0x88>
    125e:	2302      	movs	r3, #2
    1260:	627b      	str	r3, [r7, #36]	; 0x24
    1262:	687b      	ldr	r3, [r7, #4]
    1264:	1c5a      	adds	r2, r3, #1
    1266:	607a      	str	r2, [r7, #4]
    1268:	221f      	movs	r2, #31
    126a:	18ba      	adds	r2, r7, r2
    126c:	781b      	ldrb	r3, [r3, #0]
    126e:	7013      	strb	r3, [r2, #0]
    1270:	2300      	movs	r3, #0
    1272:	62bb      	str	r3, [r7, #40]	; 0x28
    1274:	e012      	b.n	129c <xvprintf+0xb4>
    1276:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1278:	0013      	movs	r3, r2
    127a:	009b      	lsls	r3, r3, #2
    127c:	189b      	adds	r3, r3, r2
    127e:	005b      	lsls	r3, r3, #1
    1280:	001a      	movs	r2, r3
    1282:	231f      	movs	r3, #31
    1284:	18fb      	adds	r3, r7, r3
    1286:	781b      	ldrb	r3, [r3, #0]
    1288:	18d3      	adds	r3, r2, r3
    128a:	3b30      	subs	r3, #48	; 0x30
    128c:	62bb      	str	r3, [r7, #40]	; 0x28
    128e:	687b      	ldr	r3, [r7, #4]
    1290:	1c5a      	adds	r2, r3, #1
    1292:	607a      	str	r2, [r7, #4]
    1294:	221f      	movs	r2, #31
    1296:	18ba      	adds	r2, r7, r2
    1298:	781b      	ldrb	r3, [r3, #0]
    129a:	7013      	strb	r3, [r2, #0]
    129c:	231f      	movs	r3, #31
    129e:	18fb      	adds	r3, r7, r3
    12a0:	781b      	ldrb	r3, [r3, #0]
    12a2:	2b2f      	cmp	r3, #47	; 0x2f
    12a4:	d904      	bls.n	12b0 <xvprintf+0xc8>
    12a6:	231f      	movs	r3, #31
    12a8:	18fb      	adds	r3, r7, r3
    12aa:	781b      	ldrb	r3, [r3, #0]
    12ac:	2b39      	cmp	r3, #57	; 0x39
    12ae:	d9e2      	bls.n	1276 <xvprintf+0x8e>
    12b0:	231f      	movs	r3, #31
    12b2:	18fb      	adds	r3, r7, r3
    12b4:	781b      	ldrb	r3, [r3, #0]
    12b6:	2b6c      	cmp	r3, #108	; 0x6c
    12b8:	d004      	beq.n	12c4 <xvprintf+0xdc>
    12ba:	231f      	movs	r3, #31
    12bc:	18fb      	adds	r3, r7, r3
    12be:	781b      	ldrb	r3, [r3, #0]
    12c0:	2b4c      	cmp	r3, #76	; 0x4c
    12c2:	d10a      	bne.n	12da <xvprintf+0xf2>
    12c4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    12c6:	2204      	movs	r2, #4
    12c8:	4313      	orrs	r3, r2
    12ca:	627b      	str	r3, [r7, #36]	; 0x24
    12cc:	687b      	ldr	r3, [r7, #4]
    12ce:	1c5a      	adds	r2, r3, #1
    12d0:	607a      	str	r2, [r7, #4]
    12d2:	221f      	movs	r2, #31
    12d4:	18ba      	adds	r2, r7, r2
    12d6:	781b      	ldrb	r3, [r3, #0]
    12d8:	7013      	strb	r3, [r2, #0]
    12da:	231f      	movs	r3, #31
    12dc:	18fb      	adds	r3, r7, r3
    12de:	781b      	ldrb	r3, [r3, #0]
    12e0:	2b00      	cmp	r3, #0
    12e2:	d100      	bne.n	12e6 <xvprintf+0xfe>
    12e4:	e107      	b.n	14f6 <xvprintf+0x30e>
    12e6:	231e      	movs	r3, #30
    12e8:	18fb      	adds	r3, r7, r3
    12ea:	221f      	movs	r2, #31
    12ec:	18ba      	adds	r2, r7, r2
    12ee:	7812      	ldrb	r2, [r2, #0]
    12f0:	701a      	strb	r2, [r3, #0]
    12f2:	231e      	movs	r3, #30
    12f4:	18fb      	adds	r3, r7, r3
    12f6:	781b      	ldrb	r3, [r3, #0]
    12f8:	2b60      	cmp	r3, #96	; 0x60
    12fa:	d906      	bls.n	130a <xvprintf+0x122>
    12fc:	231e      	movs	r3, #30
    12fe:	18fb      	adds	r3, r7, r3
    1300:	221e      	movs	r2, #30
    1302:	18ba      	adds	r2, r7, r2
    1304:	7812      	ldrb	r2, [r2, #0]
    1306:	3a20      	subs	r2, #32
    1308:	701a      	strb	r2, [r3, #0]
    130a:	231e      	movs	r3, #30
    130c:	18fb      	adds	r3, r7, r3
    130e:	781b      	ldrb	r3, [r3, #0]
    1310:	3b42      	subs	r3, #66	; 0x42
    1312:	2b16      	cmp	r3, #22
    1314:	d847      	bhi.n	13a6 <xvprintf+0x1be>
    1316:	009a      	lsls	r2, r3, #2
    1318:	4b79      	ldr	r3, [pc, #484]	; (1500 <xvprintf+0x318>)
    131a:	18d3      	adds	r3, r2, r3
    131c:	681b      	ldr	r3, [r3, #0]
    131e:	469f      	mov	pc, r3
    1320:	683b      	ldr	r3, [r7, #0]
    1322:	1d1a      	adds	r2, r3, #4
    1324:	603a      	str	r2, [r7, #0]
    1326:	681b      	ldr	r3, [r3, #0]
    1328:	61bb      	str	r3, [r7, #24]
    132a:	2300      	movs	r3, #0
    132c:	62fb      	str	r3, [r7, #44]	; 0x2c
    132e:	e002      	b.n	1336 <xvprintf+0x14e>
    1330:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1332:	3301      	adds	r3, #1
    1334:	62fb      	str	r3, [r7, #44]	; 0x2c
    1336:	69ba      	ldr	r2, [r7, #24]
    1338:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    133a:	18d3      	adds	r3, r2, r3
    133c:	781b      	ldrb	r3, [r3, #0]
    133e:	2b00      	cmp	r3, #0
    1340:	d1f6      	bne.n	1330 <xvprintf+0x148>
    1342:	e002      	b.n	134a <xvprintf+0x162>
    1344:	2020      	movs	r0, #32
    1346:	f7ff feef 	bl	1128 <xputc>
    134a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    134c:	2202      	movs	r2, #2
    134e:	4013      	ands	r3, r2
    1350:	d105      	bne.n	135e <xvprintf+0x176>
    1352:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1354:	1c5a      	adds	r2, r3, #1
    1356:	62fa      	str	r2, [r7, #44]	; 0x2c
    1358:	6aba      	ldr	r2, [r7, #40]	; 0x28
    135a:	4293      	cmp	r3, r2
    135c:	d3f2      	bcc.n	1344 <xvprintf+0x15c>
    135e:	69bb      	ldr	r3, [r7, #24]
    1360:	0018      	movs	r0, r3
    1362:	f7ff ff0d 	bl	1180 <xputs>
    1366:	e002      	b.n	136e <xvprintf+0x186>
    1368:	2020      	movs	r0, #32
    136a:	f7ff fedd 	bl	1128 <xputc>
    136e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1370:	1c5a      	adds	r2, r3, #1
    1372:	62fa      	str	r2, [r7, #44]	; 0x2c
    1374:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1376:	4293      	cmp	r3, r2
    1378:	d3f6      	bcc.n	1368 <xvprintf+0x180>
    137a:	e0b9      	b.n	14f0 <xvprintf+0x308>
    137c:	683b      	ldr	r3, [r7, #0]
    137e:	1d1a      	adds	r2, r3, #4
    1380:	603a      	str	r2, [r7, #0]
    1382:	681b      	ldr	r3, [r3, #0]
    1384:	b2db      	uxtb	r3, r3
    1386:	0018      	movs	r0, r3
    1388:	f7ff fece 	bl	1128 <xputc>
    138c:	e0b0      	b.n	14f0 <xvprintf+0x308>
    138e:	2302      	movs	r3, #2
    1390:	637b      	str	r3, [r7, #52]	; 0x34
    1392:	e00f      	b.n	13b4 <xvprintf+0x1cc>
    1394:	2308      	movs	r3, #8
    1396:	637b      	str	r3, [r7, #52]	; 0x34
    1398:	e00c      	b.n	13b4 <xvprintf+0x1cc>
    139a:	230a      	movs	r3, #10
    139c:	637b      	str	r3, [r7, #52]	; 0x34
    139e:	e009      	b.n	13b4 <xvprintf+0x1cc>
    13a0:	2310      	movs	r3, #16
    13a2:	637b      	str	r3, [r7, #52]	; 0x34
    13a4:	e006      	b.n	13b4 <xvprintf+0x1cc>
    13a6:	231f      	movs	r3, #31
    13a8:	18fb      	adds	r3, r7, r3
    13aa:	781b      	ldrb	r3, [r3, #0]
    13ac:	0018      	movs	r0, r3
    13ae:	f7ff febb 	bl	1128 <xputc>
    13b2:	e09d      	b.n	14f0 <xvprintf+0x308>
    13b4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13b6:	2204      	movs	r2, #4
    13b8:	4013      	ands	r3, r2
    13ba:	d004      	beq.n	13c6 <xvprintf+0x1de>
    13bc:	683b      	ldr	r3, [r7, #0]
    13be:	1d1a      	adds	r2, r3, #4
    13c0:	603a      	str	r2, [r7, #0]
    13c2:	681b      	ldr	r3, [r3, #0]
    13c4:	e00d      	b.n	13e2 <xvprintf+0x1fa>
    13c6:	231e      	movs	r3, #30
    13c8:	18fb      	adds	r3, r7, r3
    13ca:	781b      	ldrb	r3, [r3, #0]
    13cc:	2b44      	cmp	r3, #68	; 0x44
    13ce:	d104      	bne.n	13da <xvprintf+0x1f2>
    13d0:	683b      	ldr	r3, [r7, #0]
    13d2:	1d1a      	adds	r2, r3, #4
    13d4:	603a      	str	r2, [r7, #0]
    13d6:	681b      	ldr	r3, [r3, #0]
    13d8:	e003      	b.n	13e2 <xvprintf+0x1fa>
    13da:	683b      	ldr	r3, [r7, #0]
    13dc:	1d1a      	adds	r2, r3, #4
    13de:	603a      	str	r2, [r7, #0]
    13e0:	681b      	ldr	r3, [r3, #0]
    13e2:	623b      	str	r3, [r7, #32]
    13e4:	231e      	movs	r3, #30
    13e6:	18fb      	adds	r3, r7, r3
    13e8:	781b      	ldrb	r3, [r3, #0]
    13ea:	2b44      	cmp	r3, #68	; 0x44
    13ec:	d109      	bne.n	1402 <xvprintf+0x21a>
    13ee:	6a3b      	ldr	r3, [r7, #32]
    13f0:	2b00      	cmp	r3, #0
    13f2:	da06      	bge.n	1402 <xvprintf+0x21a>
    13f4:	6a3b      	ldr	r3, [r7, #32]
    13f6:	425b      	negs	r3, r3
    13f8:	623b      	str	r3, [r7, #32]
    13fa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13fc:	2208      	movs	r2, #8
    13fe:	4313      	orrs	r3, r2
    1400:	627b      	str	r3, [r7, #36]	; 0x24
    1402:	2300      	movs	r3, #0
    1404:	633b      	str	r3, [r7, #48]	; 0x30
    1406:	6a3b      	ldr	r3, [r7, #32]
    1408:	6b79      	ldr	r1, [r7, #52]	; 0x34
    140a:	0018      	movs	r0, r3
    140c:	f003 facc 	bl	49a8 <__aeabi_uidivmod>
    1410:	000b      	movs	r3, r1
    1412:	001a      	movs	r2, r3
    1414:	231e      	movs	r3, #30
    1416:	18fb      	adds	r3, r7, r3
    1418:	701a      	strb	r2, [r3, #0]
    141a:	6b79      	ldr	r1, [r7, #52]	; 0x34
    141c:	6a38      	ldr	r0, [r7, #32]
    141e:	f003 fa3d 	bl	489c <__aeabi_uidiv>
    1422:	0003      	movs	r3, r0
    1424:	623b      	str	r3, [r7, #32]
    1426:	231e      	movs	r3, #30
    1428:	18fb      	adds	r3, r7, r3
    142a:	781b      	ldrb	r3, [r3, #0]
    142c:	2b09      	cmp	r3, #9
    142e:	d90e      	bls.n	144e <xvprintf+0x266>
    1430:	231f      	movs	r3, #31
    1432:	18fb      	adds	r3, r7, r3
    1434:	781b      	ldrb	r3, [r3, #0]
    1436:	2b78      	cmp	r3, #120	; 0x78
    1438:	d101      	bne.n	143e <xvprintf+0x256>
    143a:	2327      	movs	r3, #39	; 0x27
    143c:	e000      	b.n	1440 <xvprintf+0x258>
    143e:	2307      	movs	r3, #7
    1440:	221e      	movs	r2, #30
    1442:	18ba      	adds	r2, r7, r2
    1444:	211e      	movs	r1, #30
    1446:	1879      	adds	r1, r7, r1
    1448:	7809      	ldrb	r1, [r1, #0]
    144a:	185b      	adds	r3, r3, r1
    144c:	7013      	strb	r3, [r2, #0]
    144e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1450:	1c5a      	adds	r2, r3, #1
    1452:	633a      	str	r2, [r7, #48]	; 0x30
    1454:	221e      	movs	r2, #30
    1456:	18ba      	adds	r2, r7, r2
    1458:	7812      	ldrb	r2, [r2, #0]
    145a:	3230      	adds	r2, #48	; 0x30
    145c:	b2d1      	uxtb	r1, r2
    145e:	2208      	movs	r2, #8
    1460:	18ba      	adds	r2, r7, r2
    1462:	54d1      	strb	r1, [r2, r3]
    1464:	6a3b      	ldr	r3, [r7, #32]
    1466:	2b00      	cmp	r3, #0
    1468:	d002      	beq.n	1470 <xvprintf+0x288>
    146a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    146c:	2b0f      	cmp	r3, #15
    146e:	d9ca      	bls.n	1406 <xvprintf+0x21e>
    1470:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1472:	2208      	movs	r2, #8
    1474:	4013      	ands	r3, r2
    1476:	d006      	beq.n	1486 <xvprintf+0x29e>
    1478:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    147a:	1c5a      	adds	r2, r3, #1
    147c:	633a      	str	r2, [r7, #48]	; 0x30
    147e:	2208      	movs	r2, #8
    1480:	18ba      	adds	r2, r7, r2
    1482:	212d      	movs	r1, #45	; 0x2d
    1484:	54d1      	strb	r1, [r2, r3]
    1486:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1488:	62fb      	str	r3, [r7, #44]	; 0x2c
    148a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    148c:	2201      	movs	r2, #1
    148e:	4013      	ands	r3, r2
    1490:	d001      	beq.n	1496 <xvprintf+0x2ae>
    1492:	2230      	movs	r2, #48	; 0x30
    1494:	e000      	b.n	1498 <xvprintf+0x2b0>
    1496:	2220      	movs	r2, #32
    1498:	231e      	movs	r3, #30
    149a:	18fb      	adds	r3, r7, r3
    149c:	701a      	strb	r2, [r3, #0]
    149e:	e005      	b.n	14ac <xvprintf+0x2c4>
    14a0:	231e      	movs	r3, #30
    14a2:	18fb      	adds	r3, r7, r3
    14a4:	781b      	ldrb	r3, [r3, #0]
    14a6:	0018      	movs	r0, r3
    14a8:	f7ff fe3e 	bl	1128 <xputc>
    14ac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    14ae:	2202      	movs	r2, #2
    14b0:	4013      	ands	r3, r2
    14b2:	d105      	bne.n	14c0 <xvprintf+0x2d8>
    14b4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14b6:	1c5a      	adds	r2, r3, #1
    14b8:	62fa      	str	r2, [r7, #44]	; 0x2c
    14ba:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14bc:	4293      	cmp	r3, r2
    14be:	d3ef      	bcc.n	14a0 <xvprintf+0x2b8>
    14c0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14c2:	3b01      	subs	r3, #1
    14c4:	633b      	str	r3, [r7, #48]	; 0x30
    14c6:	2308      	movs	r3, #8
    14c8:	18fa      	adds	r2, r7, r3
    14ca:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14cc:	18d3      	adds	r3, r2, r3
    14ce:	781b      	ldrb	r3, [r3, #0]
    14d0:	0018      	movs	r0, r3
    14d2:	f7ff fe29 	bl	1128 <xputc>
    14d6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14d8:	2b00      	cmp	r3, #0
    14da:	d1f1      	bne.n	14c0 <xvprintf+0x2d8>
    14dc:	e002      	b.n	14e4 <xvprintf+0x2fc>
    14de:	2020      	movs	r0, #32
    14e0:	f7ff fe22 	bl	1128 <xputc>
    14e4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14e6:	1c5a      	adds	r2, r3, #1
    14e8:	62fa      	str	r2, [r7, #44]	; 0x2c
    14ea:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14ec:	4293      	cmp	r3, r2
    14ee:	d3f6      	bcc.n	14de <xvprintf+0x2f6>
    14f0:	e67f      	b.n	11f2 <xvprintf+0xa>
    14f2:	46c0      	nop			; (mov r8, r8)
    14f4:	e000      	b.n	14f8 <xvprintf+0x310>
    14f6:	46c0      	nop			; (mov r8, r8)
    14f8:	46c0      	nop			; (mov r8, r8)
    14fa:	46bd      	mov	sp, r7
    14fc:	b00e      	add	sp, #56	; 0x38
    14fe:	bd80      	pop	{r7, pc}
    1500:	00008a88 	.word	0x00008a88

00001504 <xprintf>:
    1504:	b40f      	push	{r0, r1, r2, r3}
    1506:	b580      	push	{r7, lr}
    1508:	b082      	sub	sp, #8
    150a:	af00      	add	r7, sp, #0
    150c:	2314      	movs	r3, #20
    150e:	18fb      	adds	r3, r7, r3
    1510:	607b      	str	r3, [r7, #4]
    1512:	687a      	ldr	r2, [r7, #4]
    1514:	693b      	ldr	r3, [r7, #16]
    1516:	0011      	movs	r1, r2
    1518:	0018      	movs	r0, r3
    151a:	f7ff fe65 	bl	11e8 <xvprintf>
    151e:	46c0      	nop			; (mov r8, r8)
    1520:	46bd      	mov	sp, r7
    1522:	b002      	add	sp, #8
    1524:	bc80      	pop	{r7}
    1526:	bc08      	pop	{r3}
    1528:	b004      	add	sp, #16
    152a:	4718      	bx	r3

0000152c <xsprintf>:
    152c:	b40e      	push	{r1, r2, r3}
    152e:	b580      	push	{r7, lr}
    1530:	b085      	sub	sp, #20
    1532:	af00      	add	r7, sp, #0
    1534:	6078      	str	r0, [r7, #4]
    1536:	4b0d      	ldr	r3, [pc, #52]	; (156c <xsprintf+0x40>)
    1538:	687a      	ldr	r2, [r7, #4]
    153a:	601a      	str	r2, [r3, #0]
    153c:	2320      	movs	r3, #32
    153e:	18fb      	adds	r3, r7, r3
    1540:	60fb      	str	r3, [r7, #12]
    1542:	68fa      	ldr	r2, [r7, #12]
    1544:	69fb      	ldr	r3, [r7, #28]
    1546:	0011      	movs	r1, r2
    1548:	0018      	movs	r0, r3
    154a:	f7ff fe4d 	bl	11e8 <xvprintf>
    154e:	4b07      	ldr	r3, [pc, #28]	; (156c <xsprintf+0x40>)
    1550:	681b      	ldr	r3, [r3, #0]
    1552:	2200      	movs	r2, #0
    1554:	701a      	strb	r2, [r3, #0]
    1556:	4b05      	ldr	r3, [pc, #20]	; (156c <xsprintf+0x40>)
    1558:	2200      	movs	r2, #0
    155a:	601a      	str	r2, [r3, #0]
    155c:	46c0      	nop			; (mov r8, r8)
    155e:	46bd      	mov	sp, r7
    1560:	b005      	add	sp, #20
    1562:	bc80      	pop	{r7}
    1564:	bc08      	pop	{r3}
    1566:	b003      	add	sp, #12
    1568:	4718      	bx	r3
    156a:	46c0      	nop			; (mov r8, r8)
    156c:	20000900 	.word	0x20000900

00001570 <xfprintf>:
    1570:	b40e      	push	{r1, r2, r3}
    1572:	b580      	push	{r7, lr}
    1574:	b085      	sub	sp, #20
    1576:	af00      	add	r7, sp, #0
    1578:	6078      	str	r0, [r7, #4]
    157a:	4b0c      	ldr	r3, [pc, #48]	; (15ac <xfprintf+0x3c>)
    157c:	681b      	ldr	r3, [r3, #0]
    157e:	60fb      	str	r3, [r7, #12]
    1580:	4b0a      	ldr	r3, [pc, #40]	; (15ac <xfprintf+0x3c>)
    1582:	687a      	ldr	r2, [r7, #4]
    1584:	601a      	str	r2, [r3, #0]
    1586:	2320      	movs	r3, #32
    1588:	18fb      	adds	r3, r7, r3
    158a:	60bb      	str	r3, [r7, #8]
    158c:	68ba      	ldr	r2, [r7, #8]
    158e:	69fb      	ldr	r3, [r7, #28]
    1590:	0011      	movs	r1, r2
    1592:	0018      	movs	r0, r3
    1594:	f7ff fe28 	bl	11e8 <xvprintf>
    1598:	4b04      	ldr	r3, [pc, #16]	; (15ac <xfprintf+0x3c>)
    159a:	68fa      	ldr	r2, [r7, #12]
    159c:	601a      	str	r2, [r3, #0]
    159e:	46c0      	nop			; (mov r8, r8)
    15a0:	46bd      	mov	sp, r7
    15a2:	b005      	add	sp, #20
    15a4:	bc80      	pop	{r7}
    15a6:	bc08      	pop	{r3}
    15a8:	b003      	add	sp, #12
    15aa:	4718      	bx	r3
    15ac:	200008fc 	.word	0x200008fc

000015b0 <put_dump>:
    15b0:	b580      	push	{r7, lr}
    15b2:	b088      	sub	sp, #32
    15b4:	af00      	add	r7, sp, #0
    15b6:	60f8      	str	r0, [r7, #12]
    15b8:	60b9      	str	r1, [r7, #8]
    15ba:	607a      	str	r2, [r7, #4]
    15bc:	603b      	str	r3, [r7, #0]
    15be:	68ba      	ldr	r2, [r7, #8]
    15c0:	4b38      	ldr	r3, [pc, #224]	; (16a4 <put_dump+0xf4>)
    15c2:	0011      	movs	r1, r2
    15c4:	0018      	movs	r0, r3
    15c6:	f7ff ff9d 	bl	1504 <xprintf>
    15ca:	683b      	ldr	r3, [r7, #0]
    15cc:	2b02      	cmp	r3, #2
    15ce:	d03c      	beq.n	164a <put_dump+0x9a>
    15d0:	2b04      	cmp	r3, #4
    15d2:	d04d      	beq.n	1670 <put_dump+0xc0>
    15d4:	2b01      	cmp	r3, #1
    15d6:	d15d      	bne.n	1694 <put_dump+0xe4>
    15d8:	68fb      	ldr	r3, [r7, #12]
    15da:	613b      	str	r3, [r7, #16]
    15dc:	2300      	movs	r3, #0
    15de:	61fb      	str	r3, [r7, #28]
    15e0:	e00c      	b.n	15fc <put_dump+0x4c>
    15e2:	69fb      	ldr	r3, [r7, #28]
    15e4:	693a      	ldr	r2, [r7, #16]
    15e6:	18d3      	adds	r3, r2, r3
    15e8:	781b      	ldrb	r3, [r3, #0]
    15ea:	001a      	movs	r2, r3
    15ec:	4b2e      	ldr	r3, [pc, #184]	; (16a8 <put_dump+0xf8>)
    15ee:	0011      	movs	r1, r2
    15f0:	0018      	movs	r0, r3
    15f2:	f7ff ff87 	bl	1504 <xprintf>
    15f6:	69fb      	ldr	r3, [r7, #28]
    15f8:	3301      	adds	r3, #1
    15fa:	61fb      	str	r3, [r7, #28]
    15fc:	69fa      	ldr	r2, [r7, #28]
    15fe:	687b      	ldr	r3, [r7, #4]
    1600:	429a      	cmp	r2, r3
    1602:	dbee      	blt.n	15e2 <put_dump+0x32>
    1604:	2020      	movs	r0, #32
    1606:	f7ff fd8f 	bl	1128 <xputc>
    160a:	2300      	movs	r3, #0
    160c:	61fb      	str	r3, [r7, #28]
    160e:	e017      	b.n	1640 <put_dump+0x90>
    1610:	69fb      	ldr	r3, [r7, #28]
    1612:	693a      	ldr	r2, [r7, #16]
    1614:	18d3      	adds	r3, r2, r3
    1616:	781b      	ldrb	r3, [r3, #0]
    1618:	2b1f      	cmp	r3, #31
    161a:	d90a      	bls.n	1632 <put_dump+0x82>
    161c:	69fb      	ldr	r3, [r7, #28]
    161e:	693a      	ldr	r2, [r7, #16]
    1620:	18d3      	adds	r3, r2, r3
    1622:	781b      	ldrb	r3, [r3, #0]
    1624:	2b7e      	cmp	r3, #126	; 0x7e
    1626:	d804      	bhi.n	1632 <put_dump+0x82>
    1628:	69fb      	ldr	r3, [r7, #28]
    162a:	693a      	ldr	r2, [r7, #16]
    162c:	18d3      	adds	r3, r2, r3
    162e:	781b      	ldrb	r3, [r3, #0]
    1630:	e000      	b.n	1634 <put_dump+0x84>
    1632:	232e      	movs	r3, #46	; 0x2e
    1634:	0018      	movs	r0, r3
    1636:	f7ff fd77 	bl	1128 <xputc>
    163a:	69fb      	ldr	r3, [r7, #28]
    163c:	3301      	adds	r3, #1
    163e:	61fb      	str	r3, [r7, #28]
    1640:	69fa      	ldr	r2, [r7, #28]
    1642:	687b      	ldr	r3, [r7, #4]
    1644:	429a      	cmp	r2, r3
    1646:	dbe3      	blt.n	1610 <put_dump+0x60>
    1648:	e024      	b.n	1694 <put_dump+0xe4>
    164a:	68fb      	ldr	r3, [r7, #12]
    164c:	61bb      	str	r3, [r7, #24]
    164e:	69bb      	ldr	r3, [r7, #24]
    1650:	1c9a      	adds	r2, r3, #2
    1652:	61ba      	str	r2, [r7, #24]
    1654:	881b      	ldrh	r3, [r3, #0]
    1656:	001a      	movs	r2, r3
    1658:	4b14      	ldr	r3, [pc, #80]	; (16ac <put_dump+0xfc>)
    165a:	0011      	movs	r1, r2
    165c:	0018      	movs	r0, r3
    165e:	f7ff ff51 	bl	1504 <xprintf>
    1662:	687b      	ldr	r3, [r7, #4]
    1664:	3b01      	subs	r3, #1
    1666:	607b      	str	r3, [r7, #4]
    1668:	687b      	ldr	r3, [r7, #4]
    166a:	2b00      	cmp	r3, #0
    166c:	d1ef      	bne.n	164e <put_dump+0x9e>
    166e:	e011      	b.n	1694 <put_dump+0xe4>
    1670:	68fb      	ldr	r3, [r7, #12]
    1672:	617b      	str	r3, [r7, #20]
    1674:	697b      	ldr	r3, [r7, #20]
    1676:	1d1a      	adds	r2, r3, #4
    1678:	617a      	str	r2, [r7, #20]
    167a:	681a      	ldr	r2, [r3, #0]
    167c:	4b0c      	ldr	r3, [pc, #48]	; (16b0 <put_dump+0x100>)
    167e:	0011      	movs	r1, r2
    1680:	0018      	movs	r0, r3
    1682:	f7ff ff3f 	bl	1504 <xprintf>
    1686:	687b      	ldr	r3, [r7, #4]
    1688:	3b01      	subs	r3, #1
    168a:	607b      	str	r3, [r7, #4]
    168c:	687b      	ldr	r3, [r7, #4]
    168e:	2b00      	cmp	r3, #0
    1690:	d1f0      	bne.n	1674 <put_dump+0xc4>
    1692:	46c0      	nop			; (mov r8, r8)
    1694:	200a      	movs	r0, #10
    1696:	f7ff fd47 	bl	1128 <xputc>
    169a:	46c0      	nop			; (mov r8, r8)
    169c:	46bd      	mov	sp, r7
    169e:	b008      	add	sp, #32
    16a0:	bd80      	pop	{r7, pc}
    16a2:	46c0      	nop			; (mov r8, r8)
    16a4:	00008ae4 	.word	0x00008ae4
    16a8:	00008aec 	.word	0x00008aec
    16ac:	00008af4 	.word	0x00008af4
    16b0:	00008afc 	.word	0x00008afc

000016b4 <xgets>:
    16b4:	b580      	push	{r7, lr}
    16b6:	b084      	sub	sp, #16
    16b8:	af00      	add	r7, sp, #0
    16ba:	6078      	str	r0, [r7, #4]
    16bc:	6039      	str	r1, [r7, #0]
    16be:	4b24      	ldr	r3, [pc, #144]	; (1750 <xgets+0x9c>)
    16c0:	681b      	ldr	r3, [r3, #0]
    16c2:	2b00      	cmp	r3, #0
    16c4:	d101      	bne.n	16ca <xgets+0x16>
    16c6:	2300      	movs	r3, #0
    16c8:	e03e      	b.n	1748 <xgets+0x94>
    16ca:	2300      	movs	r3, #0
    16cc:	60fb      	str	r3, [r7, #12]
    16ce:	4b20      	ldr	r3, [pc, #128]	; (1750 <xgets+0x9c>)
    16d0:	681b      	ldr	r3, [r3, #0]
    16d2:	4798      	blx	r3
    16d4:	0003      	movs	r3, r0
    16d6:	60bb      	str	r3, [r7, #8]
    16d8:	68bb      	ldr	r3, [r7, #8]
    16da:	2b00      	cmp	r3, #0
    16dc:	d101      	bne.n	16e2 <xgets+0x2e>
    16de:	2300      	movs	r3, #0
    16e0:	e032      	b.n	1748 <xgets+0x94>
    16e2:	68bb      	ldr	r3, [r7, #8]
    16e4:	2b0d      	cmp	r3, #13
    16e6:	d025      	beq.n	1734 <xgets+0x80>
    16e8:	68bb      	ldr	r3, [r7, #8]
    16ea:	2b08      	cmp	r3, #8
    16ec:	d10b      	bne.n	1706 <xgets+0x52>
    16ee:	68fb      	ldr	r3, [r7, #12]
    16f0:	2b00      	cmp	r3, #0
    16f2:	d008      	beq.n	1706 <xgets+0x52>
    16f4:	68fb      	ldr	r3, [r7, #12]
    16f6:	3b01      	subs	r3, #1
    16f8:	60fb      	str	r3, [r7, #12]
    16fa:	68bb      	ldr	r3, [r7, #8]
    16fc:	b2db      	uxtb	r3, r3
    16fe:	0018      	movs	r0, r3
    1700:	f7ff fd12 	bl	1128 <xputc>
    1704:	e015      	b.n	1732 <xgets+0x7e>
    1706:	68bb      	ldr	r3, [r7, #8]
    1708:	2b1f      	cmp	r3, #31
    170a:	dde0      	ble.n	16ce <xgets+0x1a>
    170c:	683b      	ldr	r3, [r7, #0]
    170e:	1e5a      	subs	r2, r3, #1
    1710:	68fb      	ldr	r3, [r7, #12]
    1712:	429a      	cmp	r2, r3
    1714:	dddb      	ble.n	16ce <xgets+0x1a>
    1716:	68fb      	ldr	r3, [r7, #12]
    1718:	1c5a      	adds	r2, r3, #1
    171a:	60fa      	str	r2, [r7, #12]
    171c:	001a      	movs	r2, r3
    171e:	687b      	ldr	r3, [r7, #4]
    1720:	189b      	adds	r3, r3, r2
    1722:	68ba      	ldr	r2, [r7, #8]
    1724:	b2d2      	uxtb	r2, r2
    1726:	701a      	strb	r2, [r3, #0]
    1728:	68bb      	ldr	r3, [r7, #8]
    172a:	b2db      	uxtb	r3, r3
    172c:	0018      	movs	r0, r3
    172e:	f7ff fcfb 	bl	1128 <xputc>
    1732:	e7cc      	b.n	16ce <xgets+0x1a>
    1734:	46c0      	nop			; (mov r8, r8)
    1736:	68fb      	ldr	r3, [r7, #12]
    1738:	687a      	ldr	r2, [r7, #4]
    173a:	18d3      	adds	r3, r2, r3
    173c:	2200      	movs	r2, #0
    173e:	701a      	strb	r2, [r3, #0]
    1740:	200a      	movs	r0, #10
    1742:	f7ff fcf1 	bl	1128 <xputc>
    1746:	2301      	movs	r3, #1
    1748:	0018      	movs	r0, r3
    174a:	46bd      	mov	sp, r7
    174c:	b004      	add	sp, #16
    174e:	bd80      	pop	{r7, pc}
    1750:	20000904 	.word	0x20000904

00001754 <xfgets>:
    1754:	b580      	push	{r7, lr}
    1756:	b086      	sub	sp, #24
    1758:	af00      	add	r7, sp, #0
    175a:	60f8      	str	r0, [r7, #12]
    175c:	60b9      	str	r1, [r7, #8]
    175e:	607a      	str	r2, [r7, #4]
    1760:	4b0a      	ldr	r3, [pc, #40]	; (178c <xfgets+0x38>)
    1762:	681b      	ldr	r3, [r3, #0]
    1764:	617b      	str	r3, [r7, #20]
    1766:	4b09      	ldr	r3, [pc, #36]	; (178c <xfgets+0x38>)
    1768:	68fa      	ldr	r2, [r7, #12]
    176a:	601a      	str	r2, [r3, #0]
    176c:	687a      	ldr	r2, [r7, #4]
    176e:	68bb      	ldr	r3, [r7, #8]
    1770:	0011      	movs	r1, r2
    1772:	0018      	movs	r0, r3
    1774:	f7ff ff9e 	bl	16b4 <xgets>
    1778:	0003      	movs	r3, r0
    177a:	613b      	str	r3, [r7, #16]
    177c:	4b03      	ldr	r3, [pc, #12]	; (178c <xfgets+0x38>)
    177e:	697a      	ldr	r2, [r7, #20]
    1780:	601a      	str	r2, [r3, #0]
    1782:	693b      	ldr	r3, [r7, #16]
    1784:	0018      	movs	r0, r3
    1786:	46bd      	mov	sp, r7
    1788:	b006      	add	sp, #24
    178a:	bd80      	pop	{r7, pc}
    178c:	20000904 	.word	0x20000904

00001790 <xatoi>:
    1790:	b580      	push	{r7, lr}
    1792:	b084      	sub	sp, #16
    1794:	af00      	add	r7, sp, #0
    1796:	6078      	str	r0, [r7, #4]
    1798:	6039      	str	r1, [r7, #0]
    179a:	2309      	movs	r3, #9
    179c:	18fb      	adds	r3, r7, r3
    179e:	2200      	movs	r2, #0
    17a0:	701a      	strb	r2, [r3, #0]
    17a2:	683b      	ldr	r3, [r7, #0]
    17a4:	2200      	movs	r2, #0
    17a6:	601a      	str	r2, [r3, #0]
    17a8:	e004      	b.n	17b4 <xatoi+0x24>
    17aa:	687b      	ldr	r3, [r7, #4]
    17ac:	681b      	ldr	r3, [r3, #0]
    17ae:	1c5a      	adds	r2, r3, #1
    17b0:	687b      	ldr	r3, [r7, #4]
    17b2:	601a      	str	r2, [r3, #0]
    17b4:	687b      	ldr	r3, [r7, #4]
    17b6:	681a      	ldr	r2, [r3, #0]
    17b8:	230b      	movs	r3, #11
    17ba:	18fb      	adds	r3, r7, r3
    17bc:	7812      	ldrb	r2, [r2, #0]
    17be:	701a      	strb	r2, [r3, #0]
    17c0:	230b      	movs	r3, #11
    17c2:	18fb      	adds	r3, r7, r3
    17c4:	781b      	ldrb	r3, [r3, #0]
    17c6:	2b20      	cmp	r3, #32
    17c8:	d0ef      	beq.n	17aa <xatoi+0x1a>
    17ca:	230b      	movs	r3, #11
    17cc:	18fb      	adds	r3, r7, r3
    17ce:	781b      	ldrb	r3, [r3, #0]
    17d0:	2b2d      	cmp	r3, #45	; 0x2d
    17d2:	d10e      	bne.n	17f2 <xatoi+0x62>
    17d4:	2309      	movs	r3, #9
    17d6:	18fb      	adds	r3, r7, r3
    17d8:	2201      	movs	r2, #1
    17da:	701a      	strb	r2, [r3, #0]
    17dc:	687b      	ldr	r3, [r7, #4]
    17de:	681b      	ldr	r3, [r3, #0]
    17e0:	1c5a      	adds	r2, r3, #1
    17e2:	687b      	ldr	r3, [r7, #4]
    17e4:	601a      	str	r2, [r3, #0]
    17e6:	687b      	ldr	r3, [r7, #4]
    17e8:	681a      	ldr	r2, [r3, #0]
    17ea:	230b      	movs	r3, #11
    17ec:	18fb      	adds	r3, r7, r3
    17ee:	7812      	ldrb	r2, [r2, #0]
    17f0:	701a      	strb	r2, [r3, #0]
    17f2:	230b      	movs	r3, #11
    17f4:	18fb      	adds	r3, r7, r3
    17f6:	781b      	ldrb	r3, [r3, #0]
    17f8:	2b30      	cmp	r3, #48	; 0x30
    17fa:	d149      	bne.n	1890 <xatoi+0x100>
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
    1812:	230b      	movs	r3, #11
    1814:	18fb      	adds	r3, r7, r3
    1816:	781b      	ldrb	r3, [r3, #0]
    1818:	2b62      	cmp	r3, #98	; 0x62
    181a:	d011      	beq.n	1840 <xatoi+0xb0>
    181c:	2b78      	cmp	r3, #120	; 0x78
    181e:	d11f      	bne.n	1860 <xatoi+0xd0>
    1820:	230a      	movs	r3, #10
    1822:	18fb      	adds	r3, r7, r3
    1824:	2210      	movs	r2, #16
    1826:	701a      	strb	r2, [r3, #0]
    1828:	687b      	ldr	r3, [r7, #4]
    182a:	681b      	ldr	r3, [r3, #0]
    182c:	1c5a      	adds	r2, r3, #1
    182e:	687b      	ldr	r3, [r7, #4]
    1830:	601a      	str	r2, [r3, #0]
    1832:	687b      	ldr	r3, [r7, #4]
    1834:	681a      	ldr	r2, [r3, #0]
    1836:	230b      	movs	r3, #11
    1838:	18fb      	adds	r3, r7, r3
    183a:	7812      	ldrb	r2, [r2, #0]
    183c:	701a      	strb	r2, [r3, #0]
    183e:	e037      	b.n	18b0 <xatoi+0x120>
    1840:	230a      	movs	r3, #10
    1842:	18fb      	adds	r3, r7, r3
    1844:	2202      	movs	r2, #2
    1846:	701a      	strb	r2, [r3, #0]
    1848:	687b      	ldr	r3, [r7, #4]
    184a:	681b      	ldr	r3, [r3, #0]
    184c:	1c5a      	adds	r2, r3, #1
    184e:	687b      	ldr	r3, [r7, #4]
    1850:	601a      	str	r2, [r3, #0]
    1852:	687b      	ldr	r3, [r7, #4]
    1854:	681a      	ldr	r2, [r3, #0]
    1856:	230b      	movs	r3, #11
    1858:	18fb      	adds	r3, r7, r3
    185a:	7812      	ldrb	r2, [r2, #0]
    185c:	701a      	strb	r2, [r3, #0]
    185e:	e027      	b.n	18b0 <xatoi+0x120>
    1860:	230b      	movs	r3, #11
    1862:	18fb      	adds	r3, r7, r3
    1864:	781b      	ldrb	r3, [r3, #0]
    1866:	2b20      	cmp	r3, #32
    1868:	d801      	bhi.n	186e <xatoi+0xde>
    186a:	2301      	movs	r3, #1
    186c:	e079      	b.n	1962 <xatoi+0x1d2>
    186e:	230b      	movs	r3, #11
    1870:	18fb      	adds	r3, r7, r3
    1872:	781b      	ldrb	r3, [r3, #0]
    1874:	2b2f      	cmp	r3, #47	; 0x2f
    1876:	d904      	bls.n	1882 <xatoi+0xf2>
    1878:	230b      	movs	r3, #11
    187a:	18fb      	adds	r3, r7, r3
    187c:	781b      	ldrb	r3, [r3, #0]
    187e:	2b39      	cmp	r3, #57	; 0x39
    1880:	d901      	bls.n	1886 <xatoi+0xf6>
    1882:	2300      	movs	r3, #0
    1884:	e06d      	b.n	1962 <xatoi+0x1d2>
    1886:	230a      	movs	r3, #10
    1888:	18fb      	adds	r3, r7, r3
    188a:	2208      	movs	r2, #8
    188c:	701a      	strb	r2, [r3, #0]
    188e:	e00f      	b.n	18b0 <xatoi+0x120>
    1890:	230b      	movs	r3, #11
    1892:	18fb      	adds	r3, r7, r3
    1894:	781b      	ldrb	r3, [r3, #0]
    1896:	2b2f      	cmp	r3, #47	; 0x2f
    1898:	d904      	bls.n	18a4 <xatoi+0x114>
    189a:	230b      	movs	r3, #11
    189c:	18fb      	adds	r3, r7, r3
    189e:	781b      	ldrb	r3, [r3, #0]
    18a0:	2b39      	cmp	r3, #57	; 0x39
    18a2:	d901      	bls.n	18a8 <xatoi+0x118>
    18a4:	2300      	movs	r3, #0
    18a6:	e05c      	b.n	1962 <xatoi+0x1d2>
    18a8:	230a      	movs	r3, #10
    18aa:	18fb      	adds	r3, r7, r3
    18ac:	220a      	movs	r2, #10
    18ae:	701a      	strb	r2, [r3, #0]
    18b0:	2300      	movs	r3, #0
    18b2:	60fb      	str	r3, [r7, #12]
    18b4:	e044      	b.n	1940 <xatoi+0x1b0>
    18b6:	230b      	movs	r3, #11
    18b8:	18fb      	adds	r3, r7, r3
    18ba:	781b      	ldrb	r3, [r3, #0]
    18bc:	2b60      	cmp	r3, #96	; 0x60
    18be:	d906      	bls.n	18ce <xatoi+0x13e>
    18c0:	230b      	movs	r3, #11
    18c2:	18fb      	adds	r3, r7, r3
    18c4:	220b      	movs	r2, #11
    18c6:	18ba      	adds	r2, r7, r2
    18c8:	7812      	ldrb	r2, [r2, #0]
    18ca:	3a20      	subs	r2, #32
    18cc:	701a      	strb	r2, [r3, #0]
    18ce:	230b      	movs	r3, #11
    18d0:	18fb      	adds	r3, r7, r3
    18d2:	220b      	movs	r2, #11
    18d4:	18ba      	adds	r2, r7, r2
    18d6:	7812      	ldrb	r2, [r2, #0]
    18d8:	3a30      	subs	r2, #48	; 0x30
    18da:	701a      	strb	r2, [r3, #0]
    18dc:	230b      	movs	r3, #11
    18de:	18fb      	adds	r3, r7, r3
    18e0:	781b      	ldrb	r3, [r3, #0]
    18e2:	2b10      	cmp	r3, #16
    18e4:	d90d      	bls.n	1902 <xatoi+0x172>
    18e6:	230b      	movs	r3, #11
    18e8:	18fb      	adds	r3, r7, r3
    18ea:	220b      	movs	r2, #11
    18ec:	18ba      	adds	r2, r7, r2
    18ee:	7812      	ldrb	r2, [r2, #0]
    18f0:	3a07      	subs	r2, #7
    18f2:	701a      	strb	r2, [r3, #0]
    18f4:	230b      	movs	r3, #11
    18f6:	18fb      	adds	r3, r7, r3
    18f8:	781b      	ldrb	r3, [r3, #0]
    18fa:	2b09      	cmp	r3, #9
    18fc:	d801      	bhi.n	1902 <xatoi+0x172>
    18fe:	2300      	movs	r3, #0
    1900:	e02f      	b.n	1962 <xatoi+0x1d2>
    1902:	230b      	movs	r3, #11
    1904:	18fa      	adds	r2, r7, r3
    1906:	230a      	movs	r3, #10
    1908:	18fb      	adds	r3, r7, r3
    190a:	7812      	ldrb	r2, [r2, #0]
    190c:	781b      	ldrb	r3, [r3, #0]
    190e:	429a      	cmp	r2, r3
    1910:	d301      	bcc.n	1916 <xatoi+0x186>
    1912:	2300      	movs	r3, #0
    1914:	e025      	b.n	1962 <xatoi+0x1d2>
    1916:	230a      	movs	r3, #10
    1918:	18fb      	adds	r3, r7, r3
    191a:	781b      	ldrb	r3, [r3, #0]
    191c:	68fa      	ldr	r2, [r7, #12]
    191e:	435a      	muls	r2, r3
    1920:	230b      	movs	r3, #11
    1922:	18fb      	adds	r3, r7, r3
    1924:	781b      	ldrb	r3, [r3, #0]
    1926:	18d3      	adds	r3, r2, r3
    1928:	60fb      	str	r3, [r7, #12]
    192a:	687b      	ldr	r3, [r7, #4]
    192c:	681b      	ldr	r3, [r3, #0]
    192e:	1c5a      	adds	r2, r3, #1
    1930:	687b      	ldr	r3, [r7, #4]
    1932:	601a      	str	r2, [r3, #0]
    1934:	687b      	ldr	r3, [r7, #4]
    1936:	681a      	ldr	r2, [r3, #0]
    1938:	230b      	movs	r3, #11
    193a:	18fb      	adds	r3, r7, r3
    193c:	7812      	ldrb	r2, [r2, #0]
    193e:	701a      	strb	r2, [r3, #0]
    1940:	230b      	movs	r3, #11
    1942:	18fb      	adds	r3, r7, r3
    1944:	781b      	ldrb	r3, [r3, #0]
    1946:	2b20      	cmp	r3, #32
    1948:	d8b5      	bhi.n	18b6 <xatoi+0x126>
    194a:	2309      	movs	r3, #9
    194c:	18fb      	adds	r3, r7, r3
    194e:	781b      	ldrb	r3, [r3, #0]
    1950:	2b00      	cmp	r3, #0
    1952:	d002      	beq.n	195a <xatoi+0x1ca>
    1954:	68fb      	ldr	r3, [r7, #12]
    1956:	425b      	negs	r3, r3
    1958:	60fb      	str	r3, [r7, #12]
    195a:	68fa      	ldr	r2, [r7, #12]
    195c:	683b      	ldr	r3, [r7, #0]
    195e:	601a      	str	r2, [r3, #0]
    1960:	2301      	movs	r3, #1
    1962:	0018      	movs	r0, r3
    1964:	46bd      	mov	sp, r7
    1966:	b004      	add	sp, #16
    1968:	bd80      	pop	{r7, pc}
    196a:	46c0      	nop			; (mov r8, r8)

0000196c <os_idle_demon>:
    196c:	b580      	push	{r7, lr}
    196e:	af00      	add	r7, sp, #0
    1970:	e7fe      	b.n	1970 <os_idle_demon+0x4>
    1972:	46c0      	nop			; (mov r8, r8)

00001974 <os_error>:
    1974:	b580      	push	{r7, lr}
    1976:	b082      	sub	sp, #8
    1978:	af00      	add	r7, sp, #0
    197a:	6078      	str	r0, [r7, #4]
    197c:	687b      	ldr	r3, [r7, #4]
    197e:	2b02      	cmp	r3, #2
    1980:	d009      	beq.n	1996 <os_error+0x22>
    1982:	d802      	bhi.n	198a <os_error+0x16>
    1984:	2b01      	cmp	r3, #1
    1986:	d005      	beq.n	1994 <os_error+0x20>
    1988:	e008      	b.n	199c <os_error+0x28>
    198a:	2b03      	cmp	r3, #3
    198c:	d004      	beq.n	1998 <os_error+0x24>
    198e:	2b04      	cmp	r3, #4
    1990:	d003      	beq.n	199a <os_error+0x26>
    1992:	e003      	b.n	199c <os_error+0x28>
    1994:	e002      	b.n	199c <os_error+0x28>
    1996:	e001      	b.n	199c <os_error+0x28>
    1998:	e000      	b.n	199c <os_error+0x28>
    199a:	46c0      	nop			; (mov r8, r8)
    199c:	e7fe      	b.n	199c <os_error+0x28>
    199e:	46c0      	nop			; (mov r8, r8)

000019a0 <software_init_hook>:
    19a0:	2000      	movs	r0, #0
    19a2:	2100      	movs	r1, #0
    19a4:	4604      	mov	r4, r0
    19a6:	460d      	mov	r5, r1
    19a8:	4808      	ldr	r0, [pc, #32]	; (19cc <software_init_hook+0x2c>)
    19aa:	f003 facd 	bl	4f48 <atexit>
    19ae:	f003 fafd 	bl	4fac <__libc_init_array>
    19b2:	4620      	mov	r0, r4
    19b4:	4629      	mov	r1, r5
    19b6:	f004 f98b 	bl	5cd0 <osKernelInitialize>
    19ba:	4805      	ldr	r0, [pc, #20]	; (19d0 <software_init_hook+0x30>)
    19bc:	2100      	movs	r1, #0
    19be:	f004 fb19 	bl	5ff4 <osThreadCreate>
    19c2:	f004 fa21 	bl	5e08 <osKernelStart>
    19c6:	f003 fac7 	bl	4f58 <exit>
    19ca:	0000      	.short	0x0000
    19cc:	00004f79 	.word	0x00004f79
    19d0:	00008b5c 	.word	0x00008b5c

000019d4 <__NVIC_EnableIRQ>:
    19d4:	b580      	push	{r7, lr}
    19d6:	b082      	sub	sp, #8
    19d8:	af00      	add	r7, sp, #0
    19da:	0002      	movs	r2, r0
    19dc:	1dfb      	adds	r3, r7, #7
    19de:	701a      	strb	r2, [r3, #0]
    19e0:	1dfb      	adds	r3, r7, #7
    19e2:	781b      	ldrb	r3, [r3, #0]
    19e4:	2b7f      	cmp	r3, #127	; 0x7f
    19e6:	d809      	bhi.n	19fc <__NVIC_EnableIRQ+0x28>
    19e8:	4b06      	ldr	r3, [pc, #24]	; (1a04 <__NVIC_EnableIRQ+0x30>)
    19ea:	1dfa      	adds	r2, r7, #7
    19ec:	7812      	ldrb	r2, [r2, #0]
    19ee:	0011      	movs	r1, r2
    19f0:	221f      	movs	r2, #31
    19f2:	400a      	ands	r2, r1
    19f4:	2101      	movs	r1, #1
    19f6:	4091      	lsls	r1, r2
    19f8:	000a      	movs	r2, r1
    19fa:	601a      	str	r2, [r3, #0]
    19fc:	46c0      	nop			; (mov r8, r8)
    19fe:	46bd      	mov	sp, r7
    1a00:	b002      	add	sp, #8
    1a02:	bd80      	pop	{r7, pc}
    1a04:	e000e100 	.word	0xe000e100

00001a08 <__NVIC_ClearPendingIRQ>:
    1a08:	b580      	push	{r7, lr}
    1a0a:	b082      	sub	sp, #8
    1a0c:	af00      	add	r7, sp, #0
    1a0e:	0002      	movs	r2, r0
    1a10:	1dfb      	adds	r3, r7, #7
    1a12:	701a      	strb	r2, [r3, #0]
    1a14:	1dfb      	adds	r3, r7, #7
    1a16:	781b      	ldrb	r3, [r3, #0]
    1a18:	2b7f      	cmp	r3, #127	; 0x7f
    1a1a:	d80a      	bhi.n	1a32 <__NVIC_ClearPendingIRQ+0x2a>
    1a1c:	4907      	ldr	r1, [pc, #28]	; (1a3c <__NVIC_ClearPendingIRQ+0x34>)
    1a1e:	1dfb      	adds	r3, r7, #7
    1a20:	781b      	ldrb	r3, [r3, #0]
    1a22:	001a      	movs	r2, r3
    1a24:	231f      	movs	r3, #31
    1a26:	4013      	ands	r3, r2
    1a28:	2201      	movs	r2, #1
    1a2a:	409a      	lsls	r2, r3
    1a2c:	23c0      	movs	r3, #192	; 0xc0
    1a2e:	005b      	lsls	r3, r3, #1
    1a30:	50ca      	str	r2, [r1, r3]
    1a32:	46c0      	nop			; (mov r8, r8)
    1a34:	46bd      	mov	sp, r7
    1a36:	b002      	add	sp, #8
    1a38:	bd80      	pop	{r7, pc}
    1a3a:	46c0      	nop			; (mov r8, r8)
    1a3c:	e000e100 	.word	0xe000e100

00001a40 <__NVIC_SetPriority>:
    1a40:	b5b0      	push	{r4, r5, r7, lr}
    1a42:	b082      	sub	sp, #8
    1a44:	af00      	add	r7, sp, #0
    1a46:	0002      	movs	r2, r0
    1a48:	6039      	str	r1, [r7, #0]
    1a4a:	1dfb      	adds	r3, r7, #7
    1a4c:	701a      	strb	r2, [r3, #0]
    1a4e:	1dfb      	adds	r3, r7, #7
    1a50:	781b      	ldrb	r3, [r3, #0]
    1a52:	2b7f      	cmp	r3, #127	; 0x7f
    1a54:	d828      	bhi.n	1aa8 <__NVIC_SetPriority+0x68>
    1a56:	4c2f      	ldr	r4, [pc, #188]	; (1b14 <__NVIC_SetPriority+0xd4>)
    1a58:	1dfb      	adds	r3, r7, #7
    1a5a:	781b      	ldrb	r3, [r3, #0]
    1a5c:	b25b      	sxtb	r3, r3
    1a5e:	089b      	lsrs	r3, r3, #2
    1a60:	492c      	ldr	r1, [pc, #176]	; (1b14 <__NVIC_SetPriority+0xd4>)
    1a62:	1dfa      	adds	r2, r7, #7
    1a64:	7812      	ldrb	r2, [r2, #0]
    1a66:	b252      	sxtb	r2, r2
    1a68:	0892      	lsrs	r2, r2, #2
    1a6a:	32c0      	adds	r2, #192	; 0xc0
    1a6c:	0092      	lsls	r2, r2, #2
    1a6e:	5852      	ldr	r2, [r2, r1]
    1a70:	1df9      	adds	r1, r7, #7
    1a72:	7809      	ldrb	r1, [r1, #0]
    1a74:	0008      	movs	r0, r1
    1a76:	2103      	movs	r1, #3
    1a78:	4001      	ands	r1, r0
    1a7a:	00c9      	lsls	r1, r1, #3
    1a7c:	20ff      	movs	r0, #255	; 0xff
    1a7e:	4088      	lsls	r0, r1
    1a80:	0001      	movs	r1, r0
    1a82:	43c9      	mvns	r1, r1
    1a84:	4011      	ands	r1, r2
    1a86:	683a      	ldr	r2, [r7, #0]
    1a88:	0192      	lsls	r2, r2, #6
    1a8a:	20ff      	movs	r0, #255	; 0xff
    1a8c:	4010      	ands	r0, r2
    1a8e:	1dfa      	adds	r2, r7, #7
    1a90:	7812      	ldrb	r2, [r2, #0]
    1a92:	0015      	movs	r5, r2
    1a94:	2203      	movs	r2, #3
    1a96:	402a      	ands	r2, r5
    1a98:	00d2      	lsls	r2, r2, #3
    1a9a:	4090      	lsls	r0, r2
    1a9c:	0002      	movs	r2, r0
    1a9e:	430a      	orrs	r2, r1
    1aa0:	33c0      	adds	r3, #192	; 0xc0
    1aa2:	009b      	lsls	r3, r3, #2
    1aa4:	511a      	str	r2, [r3, r4]
    1aa6:	e031      	b.n	1b0c <__NVIC_SetPriority+0xcc>
    1aa8:	4c1b      	ldr	r4, [pc, #108]	; (1b18 <__NVIC_SetPriority+0xd8>)
    1aaa:	1dfb      	adds	r3, r7, #7
    1aac:	781b      	ldrb	r3, [r3, #0]
    1aae:	001a      	movs	r2, r3
    1ab0:	230f      	movs	r3, #15
    1ab2:	4013      	ands	r3, r2
    1ab4:	3b08      	subs	r3, #8
    1ab6:	0899      	lsrs	r1, r3, #2
    1ab8:	4a17      	ldr	r2, [pc, #92]	; (1b18 <__NVIC_SetPriority+0xd8>)
    1aba:	1dfb      	adds	r3, r7, #7
    1abc:	781b      	ldrb	r3, [r3, #0]
    1abe:	0018      	movs	r0, r3
    1ac0:	230f      	movs	r3, #15
    1ac2:	4003      	ands	r3, r0
    1ac4:	3b08      	subs	r3, #8
    1ac6:	089b      	lsrs	r3, r3, #2
    1ac8:	3306      	adds	r3, #6
    1aca:	009b      	lsls	r3, r3, #2
    1acc:	18d3      	adds	r3, r2, r3
    1ace:	3304      	adds	r3, #4
    1ad0:	681b      	ldr	r3, [r3, #0]
    1ad2:	1dfa      	adds	r2, r7, #7
    1ad4:	7812      	ldrb	r2, [r2, #0]
    1ad6:	0010      	movs	r0, r2
    1ad8:	2203      	movs	r2, #3
    1ada:	4002      	ands	r2, r0
    1adc:	00d2      	lsls	r2, r2, #3
    1ade:	20ff      	movs	r0, #255	; 0xff
    1ae0:	4090      	lsls	r0, r2
    1ae2:	0002      	movs	r2, r0
    1ae4:	43d2      	mvns	r2, r2
    1ae6:	401a      	ands	r2, r3
    1ae8:	683b      	ldr	r3, [r7, #0]
    1aea:	019b      	lsls	r3, r3, #6
    1aec:	20ff      	movs	r0, #255	; 0xff
    1aee:	4018      	ands	r0, r3
    1af0:	1dfb      	adds	r3, r7, #7
    1af2:	781b      	ldrb	r3, [r3, #0]
    1af4:	001d      	movs	r5, r3
    1af6:	2303      	movs	r3, #3
    1af8:	402b      	ands	r3, r5
    1afa:	00db      	lsls	r3, r3, #3
    1afc:	4098      	lsls	r0, r3
    1afe:	0003      	movs	r3, r0
    1b00:	431a      	orrs	r2, r3
    1b02:	1d8b      	adds	r3, r1, #6
    1b04:	009b      	lsls	r3, r3, #2
    1b06:	18e3      	adds	r3, r4, r3
    1b08:	3304      	adds	r3, #4
    1b0a:	601a      	str	r2, [r3, #0]
    1b0c:	46c0      	nop			; (mov r8, r8)
    1b0e:	46bd      	mov	sp, r7
    1b10:	b002      	add	sp, #8
    1b12:	bdb0      	pop	{r4, r5, r7, pc}
    1b14:	e000e100 	.word	0xe000e100
    1b18:	e000ed00 	.word	0xe000ed00

00001b1c <PortConfig>:
    1b1c:	b580      	push	{r7, lr}
    1b1e:	af00      	add	r7, sp, #0
    1b20:	4b43      	ldr	r3, [pc, #268]	; (1c30 <PortConfig+0x114>)
    1b22:	4a43      	ldr	r2, [pc, #268]	; (1c30 <PortConfig+0x114>)
    1b24:	68d2      	ldr	r2, [r2, #12]
    1b26:	21de      	movs	r1, #222	; 0xde
    1b28:	0209      	lsls	r1, r1, #8
    1b2a:	430a      	orrs	r2, r1
    1b2c:	60da      	str	r2, [r3, #12]
    1b2e:	4b40      	ldr	r3, [pc, #256]	; (1c30 <PortConfig+0x114>)
    1b30:	4a3f      	ldr	r2, [pc, #252]	; (1c30 <PortConfig+0x114>)
    1b32:	6812      	ldr	r2, [r2, #0]
    1b34:	493f      	ldr	r1, [pc, #252]	; (1c34 <PortConfig+0x118>)
    1b36:	400a      	ands	r2, r1
    1b38:	601a      	str	r2, [r3, #0]
    1b3a:	4b3d      	ldr	r3, [pc, #244]	; (1c30 <PortConfig+0x114>)
    1b3c:	4a3c      	ldr	r2, [pc, #240]	; (1c30 <PortConfig+0x114>)
    1b3e:	6852      	ldr	r2, [r2, #4]
    1b40:	21de      	movs	r1, #222	; 0xde
    1b42:	0209      	lsls	r1, r1, #8
    1b44:	430a      	orrs	r2, r1
    1b46:	605a      	str	r2, [r3, #4]
    1b48:	4b39      	ldr	r3, [pc, #228]	; (1c30 <PortConfig+0x114>)
    1b4a:	4a39      	ldr	r2, [pc, #228]	; (1c30 <PortConfig+0x114>)
    1b4c:	6992      	ldr	r2, [r2, #24]
    1b4e:	493a      	ldr	r1, [pc, #232]	; (1c38 <PortConfig+0x11c>)
    1b50:	430a      	orrs	r2, r1
    1b52:	619a      	str	r2, [r3, #24]
    1b54:	4b36      	ldr	r3, [pc, #216]	; (1c30 <PortConfig+0x114>)
    1b56:	4a36      	ldr	r2, [pc, #216]	; (1c30 <PortConfig+0x114>)
    1b58:	68d2      	ldr	r2, [r2, #12]
    1b5a:	4938      	ldr	r1, [pc, #224]	; (1c3c <PortConfig+0x120>)
    1b5c:	430a      	orrs	r2, r1
    1b5e:	60da      	str	r2, [r3, #12]
    1b60:	4b33      	ldr	r3, [pc, #204]	; (1c30 <PortConfig+0x114>)
    1b62:	4a33      	ldr	r2, [pc, #204]	; (1c30 <PortConfig+0x114>)
    1b64:	6812      	ldr	r2, [r2, #0]
    1b66:	0a52      	lsrs	r2, r2, #9
    1b68:	0252      	lsls	r2, r2, #9
    1b6a:	601a      	str	r2, [r3, #0]
    1b6c:	4b30      	ldr	r3, [pc, #192]	; (1c30 <PortConfig+0x114>)
    1b6e:	4a30      	ldr	r2, [pc, #192]	; (1c30 <PortConfig+0x114>)
    1b70:	6852      	ldr	r2, [r2, #4]
    1b72:	4932      	ldr	r1, [pc, #200]	; (1c3c <PortConfig+0x120>)
    1b74:	430a      	orrs	r2, r1
    1b76:	605a      	str	r2, [r3, #4]
    1b78:	4b2d      	ldr	r3, [pc, #180]	; (1c30 <PortConfig+0x114>)
    1b7a:	4a2d      	ldr	r2, [pc, #180]	; (1c30 <PortConfig+0x114>)
    1b7c:	6992      	ldr	r2, [r2, #24]
    1b7e:	4930      	ldr	r1, [pc, #192]	; (1c40 <PortConfig+0x124>)
    1b80:	430a      	orrs	r2, r1
    1b82:	619a      	str	r2, [r3, #24]
    1b84:	4b2f      	ldr	r3, [pc, #188]	; (1c44 <PortConfig+0x128>)
    1b86:	4a2f      	ldr	r2, [pc, #188]	; (1c44 <PortConfig+0x128>)
    1b88:	6892      	ldr	r2, [r2, #8]
    1b8a:	21a0      	movs	r1, #160	; 0xa0
    1b8c:	0549      	lsls	r1, r1, #21
    1b8e:	430a      	orrs	r2, r1
    1b90:	609a      	str	r2, [r3, #8]
    1b92:	4b2c      	ldr	r3, [pc, #176]	; (1c44 <PortConfig+0x128>)
    1b94:	4a2b      	ldr	r2, [pc, #172]	; (1c44 <PortConfig+0x128>)
    1b96:	68d2      	ldr	r2, [r2, #12]
    1b98:	21e0      	movs	r1, #224	; 0xe0
    1b9a:	0209      	lsls	r1, r1, #8
    1b9c:	430a      	orrs	r2, r1
    1b9e:	60da      	str	r2, [r3, #12]
    1ba0:	4b28      	ldr	r3, [pc, #160]	; (1c44 <PortConfig+0x128>)
    1ba2:	4a28      	ldr	r2, [pc, #160]	; (1c44 <PortConfig+0x128>)
    1ba4:	6992      	ldr	r2, [r2, #24]
    1ba6:	21fc      	movs	r1, #252	; 0xfc
    1ba8:	0609      	lsls	r1, r1, #24
    1baa:	430a      	orrs	r2, r1
    1bac:	619a      	str	r2, [r3, #24]
    1bae:	4b25      	ldr	r3, [pc, #148]	; (1c44 <PortConfig+0x128>)
    1bb0:	4a24      	ldr	r2, [pc, #144]	; (1c44 <PortConfig+0x128>)
    1bb2:	6812      	ldr	r2, [r2, #0]
    1bb4:	4924      	ldr	r1, [pc, #144]	; (1c48 <PortConfig+0x12c>)
    1bb6:	400a      	ands	r2, r1
    1bb8:	601a      	str	r2, [r3, #0]
    1bba:	4b22      	ldr	r3, [pc, #136]	; (1c44 <PortConfig+0x128>)
    1bbc:	4a21      	ldr	r2, [pc, #132]	; (1c44 <PortConfig+0x128>)
    1bbe:	6852      	ldr	r2, [r2, #4]
    1bc0:	2180      	movs	r1, #128	; 0x80
    1bc2:	0209      	lsls	r1, r1, #8
    1bc4:	430a      	orrs	r2, r1
    1bc6:	605a      	str	r2, [r3, #4]
    1bc8:	4b20      	ldr	r3, [pc, #128]	; (1c4c <PortConfig+0x130>)
    1bca:	4a20      	ldr	r2, [pc, #128]	; (1c4c <PortConfig+0x130>)
    1bcc:	6892      	ldr	r2, [r2, #8]
    1bce:	4920      	ldr	r1, [pc, #128]	; (1c50 <PortConfig+0x134>)
    1bd0:	400a      	ands	r2, r1
    1bd2:	609a      	str	r2, [r3, #8]
    1bd4:	4b1d      	ldr	r3, [pc, #116]	; (1c4c <PortConfig+0x130>)
    1bd6:	4a1d      	ldr	r2, [pc, #116]	; (1c4c <PortConfig+0x130>)
    1bd8:	6892      	ldr	r2, [r2, #8]
    1bda:	21a0      	movs	r1, #160	; 0xa0
    1bdc:	0049      	lsls	r1, r1, #1
    1bde:	430a      	orrs	r2, r1
    1be0:	609a      	str	r2, [r3, #8]
    1be2:	4b1a      	ldr	r3, [pc, #104]	; (1c4c <PortConfig+0x130>)
    1be4:	4a19      	ldr	r2, [pc, #100]	; (1c4c <PortConfig+0x130>)
    1be6:	68d2      	ldr	r2, [r2, #12]
    1be8:	2118      	movs	r1, #24
    1bea:	430a      	orrs	r2, r1
    1bec:	60da      	str	r2, [r3, #12]
    1bee:	4b17      	ldr	r3, [pc, #92]	; (1c4c <PortConfig+0x130>)
    1bf0:	4a16      	ldr	r2, [pc, #88]	; (1c4c <PortConfig+0x130>)
    1bf2:	6992      	ldr	r2, [r2, #24]
    1bf4:	21f0      	movs	r1, #240	; 0xf0
    1bf6:	0089      	lsls	r1, r1, #2
    1bf8:	430a      	orrs	r2, r1
    1bfa:	619a      	str	r2, [r3, #24]
    1bfc:	4b13      	ldr	r3, [pc, #76]	; (1c4c <PortConfig+0x130>)
    1bfe:	4a13      	ldr	r2, [pc, #76]	; (1c4c <PortConfig+0x130>)
    1c00:	6812      	ldr	r2, [r2, #0]
    1c02:	2118      	movs	r1, #24
    1c04:	438a      	bics	r2, r1
    1c06:	601a      	str	r2, [r3, #0]
    1c08:	4b10      	ldr	r3, [pc, #64]	; (1c4c <PortConfig+0x130>)
    1c0a:	4a10      	ldr	r2, [pc, #64]	; (1c4c <PortConfig+0x130>)
    1c0c:	68d2      	ldr	r2, [r2, #12]
    1c0e:	2120      	movs	r1, #32
    1c10:	430a      	orrs	r2, r1
    1c12:	60da      	str	r2, [r3, #12]
    1c14:	4b0d      	ldr	r3, [pc, #52]	; (1c4c <PortConfig+0x130>)
    1c16:	4a0d      	ldr	r2, [pc, #52]	; (1c4c <PortConfig+0x130>)
    1c18:	6892      	ldr	r2, [r2, #8]
    1c1a:	2180      	movs	r1, #128	; 0x80
    1c1c:	00c9      	lsls	r1, r1, #3
    1c1e:	430a      	orrs	r2, r1
    1c20:	609a      	str	r2, [r3, #8]
    1c22:	201c      	movs	r0, #28
    1c24:	f7ff fef0 	bl	1a08 <__NVIC_ClearPendingIRQ>
    1c28:	46c0      	nop			; (mov r8, r8)
    1c2a:	46bd      	mov	sp, r7
    1c2c:	bd80      	pop	{r7, pc}
    1c2e:	46c0      	nop			; (mov r8, r8)
    1c30:	400b0000 	.word	0x400b0000
    1c34:	ffff21ff 	.word	0xffff21ff
    1c38:	f3fc0000 	.word	0xf3fc0000
    1c3c:	000001ff 	.word	0x000001ff
    1c40:	0003ffff 	.word	0x0003ffff
    1c44:	400c0000 	.word	0x400c0000
    1c48:	ffff1fff 	.word	0xffff1fff
    1c4c:	400b8000 	.word	0x400b8000
    1c50:	fffffc3f 	.word	0xfffffc3f

00001c54 <ClkConfig>:
    1c54:	b580      	push	{r7, lr}
    1c56:	af00      	add	r7, sp, #0
    1c58:	4b4b      	ldr	r3, [pc, #300]	; (1d88 <ClkConfig+0x134>)
    1c5a:	2280      	movs	r2, #128	; 0x80
    1c5c:	0092      	lsls	r2, r2, #2
    1c5e:	619a      	str	r2, [r3, #24]
    1c60:	4b4a      	ldr	r3, [pc, #296]	; (1d8c <ClkConfig+0x138>)
    1c62:	4a4a      	ldr	r2, [pc, #296]	; (1d8c <ClkConfig+0x138>)
    1c64:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
    1c66:	2118      	movs	r1, #24
    1c68:	430a      	orrs	r2, r1
    1c6a:	63da      	str	r2, [r3, #60]	; 0x3c
    1c6c:	4b47      	ldr	r3, [pc, #284]	; (1d8c <ClkConfig+0x138>)
    1c6e:	4a48      	ldr	r2, [pc, #288]	; (1d90 <ClkConfig+0x13c>)
    1c70:	649a      	str	r2, [r3, #72]	; 0x48
    1c72:	4b46      	ldr	r3, [pc, #280]	; (1d8c <ClkConfig+0x138>)
    1c74:	2201      	movs	r2, #1
    1c76:	645a      	str	r2, [r3, #68]	; 0x44
    1c78:	4b43      	ldr	r3, [pc, #268]	; (1d88 <ClkConfig+0x134>)
    1c7a:	4a43      	ldr	r2, [pc, #268]	; (1d88 <ClkConfig+0x134>)
    1c7c:	6892      	ldr	r2, [r2, #8]
    1c7e:	2105      	movs	r1, #5
    1c80:	430a      	orrs	r2, r1
    1c82:	609a      	str	r2, [r3, #8]
    1c84:	46c0      	nop			; (mov r8, r8)
    1c86:	4b40      	ldr	r3, [pc, #256]	; (1d88 <ClkConfig+0x134>)
    1c88:	681b      	ldr	r3, [r3, #0]
    1c8a:	220c      	movs	r2, #12
    1c8c:	4013      	ands	r3, r2
    1c8e:	2b0c      	cmp	r3, #12
    1c90:	d1f9      	bne.n	1c86 <ClkConfig+0x32>
    1c92:	4b3d      	ldr	r3, [pc, #244]	; (1d88 <ClkConfig+0x134>)
    1c94:	4a3c      	ldr	r2, [pc, #240]	; (1d88 <ClkConfig+0x134>)
    1c96:	68d2      	ldr	r2, [r2, #12]
    1c98:	2102      	movs	r1, #2
    1c9a:	430a      	orrs	r2, r1
    1c9c:	60da      	str	r2, [r3, #12]
    1c9e:	4b3a      	ldr	r3, [pc, #232]	; (1d88 <ClkConfig+0x134>)
    1ca0:	4a3c      	ldr	r2, [pc, #240]	; (1d94 <ClkConfig+0x140>)
    1ca2:	605a      	str	r2, [r3, #4]
    1ca4:	46c0      	nop			; (mov r8, r8)
    1ca6:	4b38      	ldr	r3, [pc, #224]	; (1d88 <ClkConfig+0x134>)
    1ca8:	681b      	ldr	r3, [r3, #0]
    1caa:	2202      	movs	r2, #2
    1cac:	4013      	ands	r3, r2
    1cae:	d0fa      	beq.n	1ca6 <ClkConfig+0x52>
    1cb0:	4b35      	ldr	r3, [pc, #212]	; (1d88 <ClkConfig+0x134>)
    1cb2:	4a35      	ldr	r2, [pc, #212]	; (1d88 <ClkConfig+0x134>)
    1cb4:	69d2      	ldr	r2, [r2, #28]
    1cb6:	2108      	movs	r1, #8
    1cb8:	430a      	orrs	r2, r1
    1cba:	61da      	str	r2, [r3, #28]
    1cbc:	4b36      	ldr	r3, [pc, #216]	; (1d98 <ClkConfig+0x144>)
    1cbe:	4a36      	ldr	r2, [pc, #216]	; (1d98 <ClkConfig+0x144>)
    1cc0:	6812      	ldr	r2, [r2, #0]
    1cc2:	2118      	movs	r1, #24
    1cc4:	430a      	orrs	r2, r1
    1cc6:	601a      	str	r2, [r3, #0]
    1cc8:	4b2f      	ldr	r3, [pc, #188]	; (1d88 <ClkConfig+0x134>)
    1cca:	4a2f      	ldr	r2, [pc, #188]	; (1d88 <ClkConfig+0x134>)
    1ccc:	69d2      	ldr	r2, [r2, #28]
    1cce:	2108      	movs	r1, #8
    1cd0:	438a      	bics	r2, r1
    1cd2:	61da      	str	r2, [r3, #28]
    1cd4:	4b2c      	ldr	r3, [pc, #176]	; (1d88 <ClkConfig+0x134>)
    1cd6:	4a2c      	ldr	r2, [pc, #176]	; (1d88 <ClkConfig+0x134>)
    1cd8:	68d2      	ldr	r2, [r2, #12]
    1cda:	2180      	movs	r1, #128	; 0x80
    1cdc:	0049      	lsls	r1, r1, #1
    1cde:	430a      	orrs	r2, r1
    1ce0:	60da      	str	r2, [r3, #12]
    1ce2:	4b29      	ldr	r3, [pc, #164]	; (1d88 <ClkConfig+0x134>)
    1ce4:	4a28      	ldr	r2, [pc, #160]	; (1d88 <ClkConfig+0x134>)
    1ce6:	68d2      	ldr	r2, [r2, #12]
    1ce8:	2104      	movs	r1, #4
    1cea:	430a      	orrs	r2, r1
    1cec:	60da      	str	r2, [r3, #12]
    1cee:	4b26      	ldr	r3, [pc, #152]	; (1d88 <ClkConfig+0x134>)
    1cf0:	22e4      	movs	r2, #228	; 0xe4
    1cf2:	0592      	lsls	r2, r2, #22
    1cf4:	635a      	str	r2, [r3, #52]	; 0x34
    1cf6:	4b24      	ldr	r3, [pc, #144]	; (1d88 <ClkConfig+0x134>)
    1cf8:	4a23      	ldr	r2, [pc, #140]	; (1d88 <ClkConfig+0x134>)
    1cfa:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1cfc:	2180      	movs	r1, #128	; 0x80
    1cfe:	0449      	lsls	r1, r1, #17
    1d00:	430a      	orrs	r2, r1
    1d02:	625a      	str	r2, [r3, #36]	; 0x24
    1d04:	4b20      	ldr	r3, [pc, #128]	; (1d88 <ClkConfig+0x134>)
    1d06:	4a20      	ldr	r2, [pc, #128]	; (1d88 <ClkConfig+0x134>)
    1d08:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d0a:	21ff      	movs	r1, #255	; 0xff
    1d0c:	438a      	bics	r2, r1
    1d0e:	625a      	str	r2, [r3, #36]	; 0x24
    1d10:	4b1d      	ldr	r3, [pc, #116]	; (1d88 <ClkConfig+0x134>)
    1d12:	4a1d      	ldr	r2, [pc, #116]	; (1d88 <ClkConfig+0x134>)
    1d14:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d16:	2180      	movs	r1, #128	; 0x80
    1d18:	0489      	lsls	r1, r1, #18
    1d1a:	430a      	orrs	r2, r1
    1d1c:	625a      	str	r2, [r3, #36]	; 0x24
    1d1e:	4b1a      	ldr	r3, [pc, #104]	; (1d88 <ClkConfig+0x134>)
    1d20:	4a19      	ldr	r2, [pc, #100]	; (1d88 <ClkConfig+0x134>)
    1d22:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1d24:	491d      	ldr	r1, [pc, #116]	; (1d9c <ClkConfig+0x148>)
    1d26:	400a      	ands	r2, r1
    1d28:	625a      	str	r2, [r3, #36]	; 0x24
    1d2a:	4b17      	ldr	r3, [pc, #92]	; (1d88 <ClkConfig+0x134>)
    1d2c:	4a16      	ldr	r2, [pc, #88]	; (1d88 <ClkConfig+0x134>)
    1d2e:	69d2      	ldr	r2, [r2, #28]
    1d30:	491b      	ldr	r1, [pc, #108]	; (1da0 <ClkConfig+0x14c>)
    1d32:	430a      	orrs	r2, r1
    1d34:	61da      	str	r2, [r3, #28]
    1d36:	4b14      	ldr	r3, [pc, #80]	; (1d88 <ClkConfig+0x134>)
    1d38:	4a13      	ldr	r2, [pc, #76]	; (1d88 <ClkConfig+0x134>)
    1d3a:	69d2      	ldr	r2, [r2, #28]
    1d3c:	2180      	movs	r1, #128	; 0x80
    1d3e:	430a      	orrs	r2, r1
    1d40:	61da      	str	r2, [r3, #28]
    1d42:	4b11      	ldr	r3, [pc, #68]	; (1d88 <ClkConfig+0x134>)
    1d44:	4a10      	ldr	r2, [pc, #64]	; (1d88 <ClkConfig+0x134>)
    1d46:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d48:	2180      	movs	r1, #128	; 0x80
    1d4a:	0489      	lsls	r1, r1, #18
    1d4c:	430a      	orrs	r2, r1
    1d4e:	629a      	str	r2, [r3, #40]	; 0x28
    1d50:	4b0d      	ldr	r3, [pc, #52]	; (1d88 <ClkConfig+0x134>)
    1d52:	4a0d      	ldr	r2, [pc, #52]	; (1d88 <ClkConfig+0x134>)
    1d54:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d56:	4911      	ldr	r1, [pc, #68]	; (1d9c <ClkConfig+0x148>)
    1d58:	400a      	ands	r2, r1
    1d5a:	629a      	str	r2, [r3, #40]	; 0x28
    1d5c:	4b0a      	ldr	r3, [pc, #40]	; (1d88 <ClkConfig+0x134>)
    1d5e:	4a0a      	ldr	r2, [pc, #40]	; (1d88 <ClkConfig+0x134>)
    1d60:	69d2      	ldr	r2, [r2, #28]
    1d62:	2140      	movs	r1, #64	; 0x40
    1d64:	430a      	orrs	r2, r1
    1d66:	61da      	str	r2, [r3, #28]
    1d68:	4b07      	ldr	r3, [pc, #28]	; (1d88 <ClkConfig+0x134>)
    1d6a:	4a07      	ldr	r2, [pc, #28]	; (1d88 <ClkConfig+0x134>)
    1d6c:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d6e:	2180      	movs	r1, #128	; 0x80
    1d70:	0449      	lsls	r1, r1, #17
    1d72:	430a      	orrs	r2, r1
    1d74:	629a      	str	r2, [r3, #40]	; 0x28
    1d76:	4b04      	ldr	r3, [pc, #16]	; (1d88 <ClkConfig+0x134>)
    1d78:	4a03      	ldr	r2, [pc, #12]	; (1d88 <ClkConfig+0x134>)
    1d7a:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1d7c:	21ff      	movs	r1, #255	; 0xff
    1d7e:	438a      	bics	r2, r1
    1d80:	629a      	str	r2, [r3, #40]	; 0x28
    1d82:	46c0      	nop			; (mov r8, r8)
    1d84:	46bd      	mov	sp, r7
    1d86:	bd80      	pop	{r7, pc}
    1d88:	40020000 	.word	0x40020000
    1d8c:	400d8000 	.word	0x400d8000
    1d90:	000fffff 	.word	0x000fffff
    1d94:	00000b04 	.word	0x00000b04
    1d98:	40018000 	.word	0x40018000
    1d9c:	ffff00ff 	.word	0xffff00ff
    1da0:	03c0c000 	.word	0x03c0c000

00001da4 <TimerConfig>:
    1da4:	b580      	push	{r7, lr}
    1da6:	af00      	add	r7, sp, #0
    1da8:	4b19      	ldr	r3, [pc, #100]	; (1e10 <TimerConfig+0x6c>)
    1daa:	2200      	movs	r2, #0
    1dac:	601a      	str	r2, [r3, #0]
    1dae:	4b18      	ldr	r3, [pc, #96]	; (1e10 <TimerConfig+0x6c>)
    1db0:	225f      	movs	r2, #95	; 0x5f
    1db2:	605a      	str	r2, [r3, #4]
    1db4:	4b16      	ldr	r3, [pc, #88]	; (1e10 <TimerConfig+0x6c>)
    1db6:	4a17      	ldr	r2, [pc, #92]	; (1e14 <TimerConfig+0x70>)
    1db8:	609a      	str	r2, [r3, #8]
    1dba:	4b15      	ldr	r3, [pc, #84]	; (1e10 <TimerConfig+0x6c>)
    1dbc:	4a14      	ldr	r2, [pc, #80]	; (1e10 <TimerConfig+0x6c>)
    1dbe:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1dc0:	2102      	movs	r1, #2
    1dc2:	430a      	orrs	r2, r1
    1dc4:	659a      	str	r2, [r3, #88]	; 0x58
    1dc6:	4b12      	ldr	r3, [pc, #72]	; (1e10 <TimerConfig+0x6c>)
    1dc8:	4a11      	ldr	r2, [pc, #68]	; (1e10 <TimerConfig+0x6c>)
    1dca:	68d2      	ldr	r2, [r2, #12]
    1dcc:	2101      	movs	r1, #1
    1dce:	430a      	orrs	r2, r1
    1dd0:	60da      	str	r2, [r3, #12]
    1dd2:	200e      	movs	r0, #14
    1dd4:	f7ff fdfe 	bl	19d4 <__NVIC_EnableIRQ>
    1dd8:	4b0f      	ldr	r3, [pc, #60]	; (1e18 <TimerConfig+0x74>)
    1dda:	2200      	movs	r2, #0
    1ddc:	601a      	str	r2, [r3, #0]
    1dde:	4b0e      	ldr	r3, [pc, #56]	; (1e18 <TimerConfig+0x74>)
    1de0:	225f      	movs	r2, #95	; 0x5f
    1de2:	605a      	str	r2, [r3, #4]
    1de4:	4b0c      	ldr	r3, [pc, #48]	; (1e18 <TimerConfig+0x74>)
    1de6:	22ee      	movs	r2, #238	; 0xee
    1de8:	0092      	lsls	r2, r2, #2
    1dea:	609a      	str	r2, [r3, #8]
    1dec:	4b0a      	ldr	r3, [pc, #40]	; (1e18 <TimerConfig+0x74>)
    1dee:	4a0a      	ldr	r2, [pc, #40]	; (1e18 <TimerConfig+0x74>)
    1df0:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1df2:	2102      	movs	r1, #2
    1df4:	430a      	orrs	r2, r1
    1df6:	659a      	str	r2, [r3, #88]	; 0x58
    1df8:	4b07      	ldr	r3, [pc, #28]	; (1e18 <TimerConfig+0x74>)
    1dfa:	4a07      	ldr	r2, [pc, #28]	; (1e18 <TimerConfig+0x74>)
    1dfc:	68d2      	ldr	r2, [r2, #12]
    1dfe:	2101      	movs	r1, #1
    1e00:	430a      	orrs	r2, r1
    1e02:	60da      	str	r2, [r3, #12]
    1e04:	200f      	movs	r0, #15
    1e06:	f7ff fde5 	bl	19d4 <__NVIC_EnableIRQ>
    1e0a:	46c0      	nop			; (mov r8, r8)
    1e0c:	46bd      	mov	sp, r7
    1e0e:	bd80      	pop	{r7, pc}
    1e10:	40070000 	.word	0x40070000
    1e14:	0001869f 	.word	0x0001869f
    1e18:	40078000 	.word	0x40078000

00001e1c <SystemInit>:
    1e1c:	b580      	push	{r7, lr}
    1e1e:	af00      	add	r7, sp, #0
    1e20:	f7ff ff18 	bl	1c54 <ClkConfig>
    1e24:	f7ff fe7a 	bl	1b1c <PortConfig>
    1e28:	f7ff ffbc 	bl	1da4 <TimerConfig>
    1e2c:	2100      	movs	r1, #0
    1e2e:	2012      	movs	r0, #18
    1e30:	f7ff fe06 	bl	1a40 <__NVIC_SetPriority>
    1e34:	2101      	movs	r1, #1
    1e36:	200e      	movs	r0, #14
    1e38:	f7ff fe02 	bl	1a40 <__NVIC_SetPriority>
    1e3c:	2301      	movs	r3, #1
    1e3e:	425b      	negs	r3, r3
    1e40:	2103      	movs	r1, #3
    1e42:	0018      	movs	r0, r3
    1e44:	f7ff fdfc 	bl	1a40 <__NVIC_SetPriority>
    1e48:	46c0      	nop			; (mov r8, r8)
    1e4a:	46bd      	mov	sp, r7
    1e4c:	bd80      	pop	{r7, pc}
    1e4e:	46c0      	nop			; (mov r8, r8)

00001e50 <__NVIC_EnableIRQ>:
    1e50:	b580      	push	{r7, lr}
    1e52:	b082      	sub	sp, #8
    1e54:	af00      	add	r7, sp, #0
    1e56:	0002      	movs	r2, r0
    1e58:	1dfb      	adds	r3, r7, #7
    1e5a:	701a      	strb	r2, [r3, #0]
    1e5c:	1dfb      	adds	r3, r7, #7
    1e5e:	781b      	ldrb	r3, [r3, #0]
    1e60:	2b7f      	cmp	r3, #127	; 0x7f
    1e62:	d809      	bhi.n	1e78 <__NVIC_EnableIRQ+0x28>
    1e64:	4b06      	ldr	r3, [pc, #24]	; (1e80 <__NVIC_EnableIRQ+0x30>)
    1e66:	1dfa      	adds	r2, r7, #7
    1e68:	7812      	ldrb	r2, [r2, #0]
    1e6a:	0011      	movs	r1, r2
    1e6c:	221f      	movs	r2, #31
    1e6e:	400a      	ands	r2, r1
    1e70:	2101      	movs	r1, #1
    1e72:	4091      	lsls	r1, r2
    1e74:	000a      	movs	r2, r1
    1e76:	601a      	str	r2, [r3, #0]
    1e78:	46c0      	nop			; (mov r8, r8)
    1e7a:	46bd      	mov	sp, r7
    1e7c:	b002      	add	sp, #8
    1e7e:	bd80      	pop	{r7, pc}
    1e80:	e000e100 	.word	0xe000e100

00001e84 <RemoteMacInit>:
    1e84:	b580      	push	{r7, lr}
    1e86:	af00      	add	r7, sp, #0
    1e88:	4b0a      	ldr	r3, [pc, #40]	; (1eb4 <RemoteMacInit+0x30>)
    1e8a:	2200      	movs	r2, #0
    1e8c:	801a      	strh	r2, [r3, #0]
    1e8e:	4b09      	ldr	r3, [pc, #36]	; (1eb4 <RemoteMacInit+0x30>)
    1e90:	2200      	movs	r2, #0
    1e92:	805a      	strh	r2, [r3, #2]
    1e94:	4b07      	ldr	r3, [pc, #28]	; (1eb4 <RemoteMacInit+0x30>)
    1e96:	2200      	movs	r2, #0
    1e98:	809a      	strh	r2, [r3, #4]
    1e9a:	4b06      	ldr	r3, [pc, #24]	; (1eb4 <RemoteMacInit+0x30>)
    1e9c:	2200      	movs	r2, #0
    1e9e:	80da      	strh	r2, [r3, #6]
    1ea0:	4b04      	ldr	r3, [pc, #16]	; (1eb4 <RemoteMacInit+0x30>)
    1ea2:	2200      	movs	r2, #0
    1ea4:	811a      	strh	r2, [r3, #8]
    1ea6:	4b03      	ldr	r3, [pc, #12]	; (1eb4 <RemoteMacInit+0x30>)
    1ea8:	2200      	movs	r2, #0
    1eaa:	815a      	strh	r2, [r3, #10]
    1eac:	46c0      	nop			; (mov r8, r8)
    1eae:	46bd      	mov	sp, r7
    1eb0:	bd80      	pop	{r7, pc}
    1eb2:	46c0      	nop			; (mov r8, r8)
    1eb4:	20004d1c 	.word	0x20004d1c

00001eb8 <PHYInit>:
    1eb8:	b580      	push	{r7, lr}
    1eba:	b084      	sub	sp, #16
    1ebc:	af00      	add	r7, sp, #0
    1ebe:	0002      	movs	r2, r0
    1ec0:	1dfb      	adds	r3, r7, #7
    1ec2:	701a      	strb	r2, [r3, #0]
    1ec4:	1dbb      	adds	r3, r7, #6
    1ec6:	1c0a      	adds	r2, r1, #0
    1ec8:	701a      	strb	r2, [r3, #0]
    1eca:	23c0      	movs	r3, #192	; 0xc0
    1ecc:	059b      	lsls	r3, r3, #22
    1ece:	8e9b      	ldrh	r3, [r3, #52]	; 0x34
    1ed0:	b29b      	uxth	r3, r3
    1ed2:	60fb      	str	r3, [r7, #12]
    1ed4:	68fa      	ldr	r2, [r7, #12]
    1ed6:	23ee      	movs	r3, #238	; 0xee
    1ed8:	00db      	lsls	r3, r3, #3
    1eda:	4013      	ands	r3, r2
    1edc:	60fb      	str	r3, [r7, #12]
    1ede:	1dfb      	adds	r3, r7, #7
    1ee0:	781b      	ldrb	r3, [r3, #0]
    1ee2:	02da      	lsls	r2, r3, #11
    1ee4:	1dbb      	adds	r3, r7, #6
    1ee6:	781b      	ldrb	r3, [r3, #0]
    1ee8:	005b      	lsls	r3, r3, #1
    1eea:	4313      	orrs	r3, r2
    1eec:	001a      	movs	r2, r3
    1eee:	68fb      	ldr	r3, [r7, #12]
    1ef0:	4313      	orrs	r3, r2
    1ef2:	2201      	movs	r2, #1
    1ef4:	4313      	orrs	r3, r2
    1ef6:	60fb      	str	r3, [r7, #12]
    1ef8:	23c0      	movs	r3, #192	; 0xc0
    1efa:	059b      	lsls	r3, r3, #22
    1efc:	68fa      	ldr	r2, [r7, #12]
    1efe:	b292      	uxth	r2, r2
    1f00:	869a      	strh	r2, [r3, #52]	; 0x34
    1f02:	46c0      	nop			; (mov r8, r8)
    1f04:	23c0      	movs	r3, #192	; 0xc0
    1f06:	059b      	lsls	r3, r3, #22
    1f08:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    1f0a:	b29b      	uxth	r3, r3
    1f0c:	001a      	movs	r2, r3
    1f0e:	2310      	movs	r3, #16
    1f10:	4013      	ands	r3, r2
    1f12:	d0f7      	beq.n	1f04 <PHYInit+0x4c>
    1f14:	46c0      	nop			; (mov r8, r8)
    1f16:	46bd      	mov	sp, r7
    1f18:	b004      	add	sp, #16
    1f1a:	bd80      	pop	{r7, pc}

00001f1c <SetPHYReg>:
    1f1c:	b590      	push	{r4, r7, lr}
    1f1e:	b085      	sub	sp, #20
    1f20:	af00      	add	r7, sp, #0
    1f22:	0004      	movs	r4, r0
    1f24:	0008      	movs	r0, r1
    1f26:	0011      	movs	r1, r2
    1f28:	1dfb      	adds	r3, r7, #7
    1f2a:	1c22      	adds	r2, r4, #0
    1f2c:	701a      	strb	r2, [r3, #0]
    1f2e:	1dbb      	adds	r3, r7, #6
    1f30:	1c02      	adds	r2, r0, #0
    1f32:	701a      	strb	r2, [r3, #0]
    1f34:	1d3b      	adds	r3, r7, #4
    1f36:	1c0a      	adds	r2, r1, #0
    1f38:	801a      	strh	r2, [r3, #0]
    1f3a:	23c0      	movs	r3, #192	; 0xc0
    1f3c:	059b      	lsls	r3, r3, #22
    1f3e:	1d3a      	adds	r2, r7, #4
    1f40:	8812      	ldrh	r2, [r2, #0]
    1f42:	84da      	strh	r2, [r3, #38]	; 0x26
    1f44:	1dfb      	adds	r3, r7, #7
    1f46:	781b      	ldrb	r3, [r3, #0]
    1f48:	021a      	lsls	r2, r3, #8
    1f4a:	23f8      	movs	r3, #248	; 0xf8
    1f4c:	015b      	lsls	r3, r3, #5
    1f4e:	4013      	ands	r3, r2
    1f50:	22c0      	movs	r2, #192	; 0xc0
    1f52:	0212      	lsls	r2, r2, #8
    1f54:	431a      	orrs	r2, r3
    1f56:	1dbb      	adds	r3, r7, #6
    1f58:	781b      	ldrb	r3, [r3, #0]
    1f5a:	211f      	movs	r1, #31
    1f5c:	400b      	ands	r3, r1
    1f5e:	4313      	orrs	r3, r2
    1f60:	2220      	movs	r2, #32
    1f62:	4313      	orrs	r3, r2
    1f64:	60fb      	str	r3, [r7, #12]
    1f66:	23c0      	movs	r3, #192	; 0xc0
    1f68:	059b      	lsls	r3, r3, #22
    1f6a:	68fa      	ldr	r2, [r7, #12]
    1f6c:	b292      	uxth	r2, r2
    1f6e:	849a      	strh	r2, [r3, #36]	; 0x24
    1f70:	46c0      	nop			; (mov r8, r8)
    1f72:	23c0      	movs	r3, #192	; 0xc0
    1f74:	059b      	lsls	r3, r3, #22
    1f76:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1f78:	b29b      	uxth	r3, r3
    1f7a:	b21b      	sxth	r3, r3
    1f7c:	2b00      	cmp	r3, #0
    1f7e:	daf8      	bge.n	1f72 <SetPHYReg+0x56>
    1f80:	46c0      	nop			; (mov r8, r8)
    1f82:	46bd      	mov	sp, r7
    1f84:	b005      	add	sp, #20
    1f86:	bd90      	pop	{r4, r7, pc}

00001f88 <GetPHYReg>:
    1f88:	b580      	push	{r7, lr}
    1f8a:	b084      	sub	sp, #16
    1f8c:	af00      	add	r7, sp, #0
    1f8e:	0002      	movs	r2, r0
    1f90:	1dfb      	adds	r3, r7, #7
    1f92:	701a      	strb	r2, [r3, #0]
    1f94:	1dbb      	adds	r3, r7, #6
    1f96:	1c0a      	adds	r2, r1, #0
    1f98:	701a      	strb	r2, [r3, #0]
    1f9a:	1dfb      	adds	r3, r7, #7
    1f9c:	781b      	ldrb	r3, [r3, #0]
    1f9e:	021a      	lsls	r2, r3, #8
    1fa0:	23f8      	movs	r3, #248	; 0xf8
    1fa2:	015b      	lsls	r3, r3, #5
    1fa4:	4013      	ands	r3, r2
    1fa6:	4a0e      	ldr	r2, [pc, #56]	; (1fe0 <GetPHYReg+0x58>)
    1fa8:	431a      	orrs	r2, r3
    1faa:	1dbb      	adds	r3, r7, #6
    1fac:	781b      	ldrb	r3, [r3, #0]
    1fae:	211f      	movs	r1, #31
    1fb0:	400b      	ands	r3, r1
    1fb2:	4313      	orrs	r3, r2
    1fb4:	60fb      	str	r3, [r7, #12]
    1fb6:	23c0      	movs	r3, #192	; 0xc0
    1fb8:	059b      	lsls	r3, r3, #22
    1fba:	68fa      	ldr	r2, [r7, #12]
    1fbc:	b292      	uxth	r2, r2
    1fbe:	849a      	strh	r2, [r3, #36]	; 0x24
    1fc0:	46c0      	nop			; (mov r8, r8)
    1fc2:	23c0      	movs	r3, #192	; 0xc0
    1fc4:	059b      	lsls	r3, r3, #22
    1fc6:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    1fc8:	b29b      	uxth	r3, r3
    1fca:	b21b      	sxth	r3, r3
    1fcc:	2b00      	cmp	r3, #0
    1fce:	daf8      	bge.n	1fc2 <GetPHYReg+0x3a>
    1fd0:	23c0      	movs	r3, #192	; 0xc0
    1fd2:	059b      	lsls	r3, r3, #22
    1fd4:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
    1fd6:	b29b      	uxth	r3, r3
    1fd8:	0018      	movs	r0, r3
    1fda:	46bd      	mov	sp, r7
    1fdc:	b004      	add	sp, #16
    1fde:	bd80      	pop	{r7, pc}
    1fe0:	0000e020 	.word	0x0000e020

00001fe4 <EthernetConfig>:
    1fe4:	b580      	push	{r7, lr}
    1fe6:	b082      	sub	sp, #8
    1fe8:	af00      	add	r7, sp, #0
    1fea:	2103      	movs	r1, #3
    1fec:	201c      	movs	r0, #28
    1fee:	f7ff ff63 	bl	1eb8 <PHYInit>
    1ff2:	23c0      	movs	r3, #192	; 0xc0
    1ff4:	059b      	lsls	r3, r3, #22
    1ff6:	4a12      	ldr	r2, [pc, #72]	; (2040 <EthernetConfig+0x5c>)
    1ff8:	8812      	ldrh	r2, [r2, #0]
    1ffa:	805a      	strh	r2, [r3, #2]
    1ffc:	23c0      	movs	r3, #192	; 0xc0
    1ffe:	059b      	lsls	r3, r3, #22
    2000:	4a0f      	ldr	r2, [pc, #60]	; (2040 <EthernetConfig+0x5c>)
    2002:	8852      	ldrh	r2, [r2, #2]
    2004:	809a      	strh	r2, [r3, #4]
    2006:	23c0      	movs	r3, #192	; 0xc0
    2008:	059b      	lsls	r3, r3, #22
    200a:	4a0d      	ldr	r2, [pc, #52]	; (2040 <EthernetConfig+0x5c>)
    200c:	8892      	ldrh	r2, [r2, #4]
    200e:	80da      	strh	r2, [r3, #6]
    2010:	f000 f81e 	bl	2050 <MACReset>
    2014:	23c0      	movs	r3, #192	; 0xc0
    2016:	059b      	lsls	r3, r3, #22
    2018:	2207      	movs	r2, #7
    201a:	841a      	strh	r2, [r3, #32]
    201c:	2012      	movs	r0, #18
    201e:	f7ff ff17 	bl	1e50 <__NVIC_EnableIRQ>
    2022:	4b08      	ldr	r3, [pc, #32]	; (2044 <EthernetConfig+0x60>)
    2024:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    2026:	607b      	str	r3, [r7, #4]
    2028:	687b      	ldr	r3, [r7, #4]
    202a:	b29a      	uxth	r2, r3
    202c:	4b06      	ldr	r3, [pc, #24]	; (2048 <EthernetConfig+0x64>)
    202e:	801a      	strh	r2, [r3, #0]
    2030:	687b      	ldr	r3, [r7, #4]
    2032:	b29a      	uxth	r2, r3
    2034:	4b05      	ldr	r3, [pc, #20]	; (204c <EthernetConfig+0x68>)
    2036:	801a      	strh	r2, [r3, #0]
    2038:	46c0      	nop			; (mov r8, r8)
    203a:	46bd      	mov	sp, r7
    203c:	b002      	add	sp, #8
    203e:	bd80      	pop	{r7, pc}
    2040:	20000008 	.word	0x20000008
    2044:	400d8000 	.word	0x400d8000
    2048:	20004d30 	.word	0x20004d30
    204c:	20004d32 	.word	0x20004d32

00002050 <MACReset>:
    2050:	b580      	push	{r7, lr}
    2052:	af00      	add	r7, sp, #0
    2054:	23c0      	movs	r3, #192	; 0xc0
    2056:	059b      	lsls	r3, r3, #22
    2058:	22c0      	movs	r2, #192	; 0xc0
    205a:	0592      	lsls	r2, r2, #22
    205c:	8bd2      	ldrh	r2, [r2, #30]
    205e:	b292      	uxth	r2, r2
    2060:	2103      	movs	r1, #3
    2062:	430a      	orrs	r2, r1
    2064:	b292      	uxth	r2, r2
    2066:	83da      	strh	r2, [r3, #30]
    2068:	f000 f86a 	bl	2140 <ClearMemory>
    206c:	23c0      	movs	r3, #192	; 0xc0
    206e:	059b      	lsls	r3, r3, #22
    2070:	2280      	movs	r2, #128	; 0x80
    2072:	0152      	lsls	r2, r2, #5
    2074:	801a      	strh	r2, [r3, #0]
    2076:	23c0      	movs	r3, #192	; 0xc0
    2078:	059b      	lsls	r3, r3, #22
    207a:	2200      	movs	r2, #0
    207c:	811a      	strh	r2, [r3, #8]
    207e:	23c0      	movs	r3, #192	; 0xc0
    2080:	059b      	lsls	r3, r3, #22
    2082:	2200      	movs	r2, #0
    2084:	815a      	strh	r2, [r3, #10]
    2086:	23c0      	movs	r3, #192	; 0xc0
    2088:	059b      	lsls	r3, r3, #22
    208a:	2200      	movs	r2, #0
    208c:	819a      	strh	r2, [r3, #12]
    208e:	23c0      	movs	r3, #192	; 0xc0
    2090:	059b      	lsls	r3, r3, #22
    2092:	4a26      	ldr	r2, [pc, #152]	; (212c <MACReset+0xdc>)
    2094:	81da      	strh	r2, [r3, #14]
    2096:	23c0      	movs	r3, #192	; 0xc0
    2098:	059b      	lsls	r3, r3, #22
    209a:	2260      	movs	r2, #96	; 0x60
    209c:	821a      	strh	r2, [r3, #16]
    209e:	23c0      	movs	r3, #192	; 0xc0
    20a0:	059b      	lsls	r3, r3, #22
    20a2:	2250      	movs	r2, #80	; 0x50
    20a4:	825a      	strh	r2, [r3, #18]
    20a6:	23c0      	movs	r3, #192	; 0xc0
    20a8:	059b      	lsls	r3, r3, #22
    20aa:	2280      	movs	r2, #128	; 0x80
    20ac:	0092      	lsls	r2, r2, #2
    20ae:	829a      	strh	r2, [r3, #20]
    20b0:	23c0      	movs	r3, #192	; 0xc0
    20b2:	059b      	lsls	r3, r3, #22
    20b4:	2205      	movs	r2, #5
    20b6:	82da      	strh	r2, [r3, #22]
    20b8:	23c0      	movs	r3, #192	; 0xc0
    20ba:	059b      	lsls	r3, r3, #22
    20bc:	4a1c      	ldr	r2, [pc, #112]	; (2130 <MACReset+0xe0>)
    20be:	831a      	strh	r2, [r3, #24]
    20c0:	23c0      	movs	r3, #192	; 0xc0
    20c2:	059b      	lsls	r3, r3, #22
    20c4:	4a1b      	ldr	r2, [pc, #108]	; (2134 <MACReset+0xe4>)
    20c6:	835a      	strh	r2, [r3, #26]
    20c8:	23c0      	movs	r3, #192	; 0xc0
    20ca:	059b      	lsls	r3, r3, #22
    20cc:	2280      	movs	r2, #128	; 0x80
    20ce:	839a      	strh	r2, [r3, #28]
    20d0:	23c0      	movs	r3, #192	; 0xc0
    20d2:	059b      	lsls	r3, r3, #22
    20d4:	4a18      	ldr	r2, [pc, #96]	; (2138 <MACReset+0xe8>)
    20d6:	83da      	strh	r2, [r3, #30]
    20d8:	23c0      	movs	r3, #192	; 0xc0
    20da:	059b      	lsls	r3, r3, #22
    20dc:	2200      	movs	r2, #0
    20de:	841a      	strh	r2, [r3, #32]
    20e0:	23c0      	movs	r3, #192	; 0xc0
    20e2:	059b      	lsls	r3, r3, #22
    20e4:	2201      	movs	r2, #1
    20e6:	4252      	negs	r2, r2
    20e8:	845a      	strh	r2, [r3, #34]	; 0x22
    20ea:	23c0      	movs	r3, #192	; 0xc0
    20ec:	059b      	lsls	r3, r3, #22
    20ee:	2200      	movs	r2, #0
    20f0:	851a      	strh	r2, [r3, #40]	; 0x28
    20f2:	23c0      	movs	r3, #192	; 0xc0
    20f4:	059b      	lsls	r3, r3, #22
    20f6:	2280      	movs	r2, #128	; 0x80
    20f8:	0152      	lsls	r2, r2, #5
    20fa:	855a      	strh	r2, [r3, #42]	; 0x2a
    20fc:	23c0      	movs	r3, #192	; 0xc0
    20fe:	059b      	lsls	r3, r3, #22
    2100:	22c0      	movs	r2, #192	; 0xc0
    2102:	0592      	lsls	r2, r2, #22
    2104:	8b92      	ldrh	r2, [r2, #28]
    2106:	b292      	uxth	r2, r2
    2108:	490c      	ldr	r1, [pc, #48]	; (213c <MACReset+0xec>)
    210a:	400a      	ands	r2, r1
    210c:	b292      	uxth	r2, r2
    210e:	839a      	strh	r2, [r3, #28]
    2110:	23c0      	movs	r3, #192	; 0xc0
    2112:	059b      	lsls	r3, r3, #22
    2114:	22c0      	movs	r2, #192	; 0xc0
    2116:	0592      	lsls	r2, r2, #22
    2118:	8bd2      	ldrh	r2, [r2, #30]
    211a:	b292      	uxth	r2, r2
    211c:	2103      	movs	r1, #3
    211e:	438a      	bics	r2, r1
    2120:	b292      	uxth	r2, r2
    2122:	83da      	strh	r2, [r3, #30]
    2124:	46c0      	nop			; (mov r8, r8)
    2126:	46bd      	mov	sp, r7
    2128:	bd80      	pop	{r7, pc}
    212a:	46c0      	nop			; (mov r8, r8)
    212c:	ffff8000 	.word	0xffff8000
    2130:	ffff8606 	.word	0xffff8606
    2134:	ffff81fa 	.word	0xffff81fa
    2138:	00003003 	.word	0x00003003
    213c:	ffffbfff 	.word	0xffffbfff

00002140 <ClearMemory>:
    2140:	b580      	push	{r7, lr}
    2142:	b082      	sub	sp, #8
    2144:	af00      	add	r7, sp, #0
    2146:	23e0      	movs	r3, #224	; 0xe0
    2148:	059b      	lsls	r3, r3, #22
    214a:	603b      	str	r3, [r7, #0]
    214c:	2300      	movs	r3, #0
    214e:	607b      	str	r3, [r7, #4]
    2150:	e007      	b.n	2162 <ClearMemory+0x22>
    2152:	683b      	ldr	r3, [r7, #0]
    2154:	1d1a      	adds	r2, r3, #4
    2156:	603a      	str	r2, [r7, #0]
    2158:	2200      	movs	r2, #0
    215a:	601a      	str	r2, [r3, #0]
    215c:	687b      	ldr	r3, [r7, #4]
    215e:	3301      	adds	r3, #1
    2160:	607b      	str	r3, [r7, #4]
    2162:	687b      	ldr	r3, [r7, #4]
    2164:	4a03      	ldr	r2, [pc, #12]	; (2174 <ClearMemory+0x34>)
    2166:	4293      	cmp	r3, r2
    2168:	d9f3      	bls.n	2152 <ClearMemory+0x12>
    216a:	46c0      	nop			; (mov r8, r8)
    216c:	46bd      	mov	sp, r7
    216e:	b002      	add	sp, #8
    2170:	bd80      	pop	{r7, pc}
    2172:	46c0      	nop			; (mov r8, r8)
    2174:	000007ff 	.word	0x000007ff

00002178 <ReadPacket>:
    2178:	b580      	push	{r7, lr}
    217a:	b08a      	sub	sp, #40	; 0x28
    217c:	af00      	add	r7, sp, #0
    217e:	6078      	str	r0, [r7, #4]
    2180:	2316      	movs	r3, #22
    2182:	18fb      	adds	r3, r7, r3
    2184:	2200      	movs	r2, #0
    2186:	801a      	strh	r2, [r3, #0]
    2188:	2326      	movs	r3, #38	; 0x26
    218a:	18fb      	adds	r3, r7, r3
    218c:	2200      	movs	r2, #0
    218e:	801a      	strh	r2, [r3, #0]
    2190:	4b71      	ldr	r3, [pc, #452]	; (2358 <ReadPacket+0x1e0>)
    2192:	681a      	ldr	r2, [r3, #0]
    2194:	2301      	movs	r3, #1
    2196:	425b      	negs	r3, r3
    2198:	0019      	movs	r1, r3
    219a:	0010      	movs	r0, r2
    219c:	f004 fbbe 	bl	691c <osMutexWait>
    21a0:	23c0      	movs	r3, #192	; 0xc0
    21a2:	059a      	lsls	r2, r3, #22
    21a4:	2314      	movs	r3, #20
    21a6:	18fb      	adds	r3, r7, r3
    21a8:	8d92      	ldrh	r2, [r2, #44]	; 0x2c
    21aa:	801a      	strh	r2, [r3, #0]
    21ac:	23c0      	movs	r3, #192	; 0xc0
    21ae:	059a      	lsls	r2, r3, #22
    21b0:	2312      	movs	r3, #18
    21b2:	18fb      	adds	r3, r7, r3
    21b4:	8d12      	ldrh	r2, [r2, #40]	; 0x28
    21b6:	801a      	strh	r2, [r3, #0]
    21b8:	2314      	movs	r3, #20
    21ba:	18fa      	adds	r2, r7, r3
    21bc:	2312      	movs	r3, #18
    21be:	18fb      	adds	r3, r7, r3
    21c0:	8812      	ldrh	r2, [r2, #0]
    21c2:	881b      	ldrh	r3, [r3, #0]
    21c4:	429a      	cmp	r2, r3
    21c6:	d90e      	bls.n	21e6 <ReadPacket+0x6e>
    21c8:	2326      	movs	r3, #38	; 0x26
    21ca:	18fb      	adds	r3, r7, r3
    21cc:	2214      	movs	r2, #20
    21ce:	18b9      	adds	r1, r7, r2
    21d0:	2212      	movs	r2, #18
    21d2:	18ba      	adds	r2, r7, r2
    21d4:	8809      	ldrh	r1, [r1, #0]
    21d6:	8812      	ldrh	r2, [r2, #0]
    21d8:	1a8a      	subs	r2, r1, r2
    21da:	801a      	strh	r2, [r3, #0]
    21dc:	2316      	movs	r3, #22
    21de:	18fb      	adds	r3, r7, r3
    21e0:	2200      	movs	r2, #0
    21e2:	801a      	strh	r2, [r3, #0]
    21e4:	e00e      	b.n	2204 <ReadPacket+0x8c>
    21e6:	2326      	movs	r3, #38	; 0x26
    21e8:	18fb      	adds	r3, r7, r3
    21ea:	2212      	movs	r2, #18
    21ec:	18ba      	adds	r2, r7, r2
    21ee:	8812      	ldrh	r2, [r2, #0]
    21f0:	2180      	movs	r1, #128	; 0x80
    21f2:	0149      	lsls	r1, r1, #5
    21f4:	1a8a      	subs	r2, r1, r2
    21f6:	801a      	strh	r2, [r3, #0]
    21f8:	2316      	movs	r3, #22
    21fa:	18fb      	adds	r3, r7, r3
    21fc:	2214      	movs	r2, #20
    21fe:	18ba      	adds	r2, r7, r2
    2200:	8812      	ldrh	r2, [r2, #0]
    2202:	801a      	strh	r2, [r3, #0]
    2204:	2312      	movs	r3, #18
    2206:	18fb      	adds	r3, r7, r3
    2208:	881b      	ldrh	r3, [r3, #0]
    220a:	22e0      	movs	r2, #224	; 0xe0
    220c:	0592      	lsls	r2, r2, #22
    220e:	4694      	mov	ip, r2
    2210:	4463      	add	r3, ip
    2212:	623b      	str	r3, [r7, #32]
    2214:	687b      	ldr	r3, [r7, #4]
    2216:	61fb      	str	r3, [r7, #28]
    2218:	2308      	movs	r3, #8
    221a:	18fa      	adds	r2, r7, r3
    221c:	6a3b      	ldr	r3, [r7, #32]
    221e:	1d19      	adds	r1, r3, #4
    2220:	6239      	str	r1, [r7, #32]
    2222:	681b      	ldr	r3, [r3, #0]
    2224:	6013      	str	r3, [r2, #0]
    2226:	2308      	movs	r3, #8
    2228:	18fb      	adds	r3, r7, r3
    222a:	881b      	ldrh	r3, [r3, #0]
    222c:	3303      	adds	r3, #3
    222e:	2b00      	cmp	r3, #0
    2230:	da00      	bge.n	2234 <ReadPacket+0xbc>
    2232:	3303      	adds	r3, #3
    2234:	109b      	asrs	r3, r3, #2
    2236:	60fb      	str	r3, [r7, #12]
    2238:	2326      	movs	r3, #38	; 0x26
    223a:	18fb      	adds	r3, r7, r3
    223c:	2226      	movs	r2, #38	; 0x26
    223e:	18ba      	adds	r2, r7, r2
    2240:	8812      	ldrh	r2, [r2, #0]
    2242:	3a04      	subs	r2, #4
    2244:	801a      	strh	r2, [r3, #0]
    2246:	6a3b      	ldr	r3, [r7, #32]
    2248:	b29b      	uxth	r3, r3
    224a:	4a44      	ldr	r2, [pc, #272]	; (235c <ReadPacket+0x1e4>)
    224c:	4293      	cmp	r3, r2
    224e:	d902      	bls.n	2256 <ReadPacket+0xde>
    2250:	23e0      	movs	r3, #224	; 0xe0
    2252:	059b      	lsls	r3, r3, #22
    2254:	623b      	str	r3, [r7, #32]
    2256:	2308      	movs	r3, #8
    2258:	18fb      	adds	r3, r7, r3
    225a:	881b      	ldrh	r3, [r3, #0]
    225c:	2226      	movs	r2, #38	; 0x26
    225e:	18ba      	adds	r2, r7, r2
    2260:	8812      	ldrh	r2, [r2, #0]
    2262:	429a      	cmp	r2, r3
    2264:	d312      	bcc.n	228c <ReadPacket+0x114>
    2266:	2300      	movs	r3, #0
    2268:	61bb      	str	r3, [r7, #24]
    226a:	e00a      	b.n	2282 <ReadPacket+0x10a>
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
    2282:	69ba      	ldr	r2, [r7, #24]
    2284:	68fb      	ldr	r3, [r7, #12]
    2286:	429a      	cmp	r2, r3
    2288:	d3f0      	bcc.n	226c <ReadPacket+0xf4>
    228a:	e034      	b.n	22f6 <ReadPacket+0x17e>
    228c:	2326      	movs	r3, #38	; 0x26
    228e:	18fb      	adds	r3, r7, r3
    2290:	881b      	ldrh	r3, [r3, #0]
    2292:	089b      	lsrs	r3, r3, #2
    2294:	b29b      	uxth	r3, r3
    2296:	001a      	movs	r2, r3
    2298:	68fb      	ldr	r3, [r7, #12]
    229a:	1a9b      	subs	r3, r3, r2
    229c:	60fb      	str	r3, [r7, #12]
    229e:	2300      	movs	r3, #0
    22a0:	61bb      	str	r3, [r7, #24]
    22a2:	e00a      	b.n	22ba <ReadPacket+0x142>
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
    22ba:	2326      	movs	r3, #38	; 0x26
    22bc:	18fb      	adds	r3, r7, r3
    22be:	881b      	ldrh	r3, [r3, #0]
    22c0:	089b      	lsrs	r3, r3, #2
    22c2:	b29b      	uxth	r3, r3
    22c4:	001a      	movs	r2, r3
    22c6:	69bb      	ldr	r3, [r7, #24]
    22c8:	429a      	cmp	r2, r3
    22ca:	d8eb      	bhi.n	22a4 <ReadPacket+0x12c>
    22cc:	23e0      	movs	r3, #224	; 0xe0
    22ce:	059b      	lsls	r3, r3, #22
    22d0:	623b      	str	r3, [r7, #32]
    22d2:	2300      	movs	r3, #0
    22d4:	61bb      	str	r3, [r7, #24]
    22d6:	e00a      	b.n	22ee <ReadPacket+0x176>
    22d8:	69fb      	ldr	r3, [r7, #28]
    22da:	1d1a      	adds	r2, r3, #4
    22dc:	61fa      	str	r2, [r7, #28]
    22de:	6a3a      	ldr	r2, [r7, #32]
    22e0:	1d11      	adds	r1, r2, #4
    22e2:	6239      	str	r1, [r7, #32]
    22e4:	6812      	ldr	r2, [r2, #0]
    22e6:	601a      	str	r2, [r3, #0]
    22e8:	69bb      	ldr	r3, [r7, #24]
    22ea:	3301      	adds	r3, #1
    22ec:	61bb      	str	r3, [r7, #24]
    22ee:	69ba      	ldr	r2, [r7, #24]
    22f0:	68fb      	ldr	r3, [r7, #12]
    22f2:	429a      	cmp	r2, r3
    22f4:	d3f0      	bcc.n	22d8 <ReadPacket+0x160>
    22f6:	6a3b      	ldr	r3, [r7, #32]
    22f8:	b29b      	uxth	r3, r3
    22fa:	4a18      	ldr	r2, [pc, #96]	; (235c <ReadPacket+0x1e4>)
    22fc:	4293      	cmp	r3, r2
    22fe:	d902      	bls.n	2306 <ReadPacket+0x18e>
    2300:	23e0      	movs	r3, #224	; 0xe0
    2302:	059b      	lsls	r3, r3, #22
    2304:	623b      	str	r3, [r7, #32]
    2306:	23c0      	movs	r3, #192	; 0xc0
    2308:	059b      	lsls	r3, r3, #22
    230a:	6a3a      	ldr	r2, [r7, #32]
    230c:	b292      	uxth	r2, r2
    230e:	851a      	strh	r2, [r3, #40]	; 0x28
    2310:	23c0      	movs	r3, #192	; 0xc0
    2312:	059b      	lsls	r3, r3, #22
    2314:	22c0      	movs	r2, #192	; 0xc0
    2316:	0592      	lsls	r2, r2, #22
    2318:	8e12      	ldrh	r2, [r2, #48]	; 0x30
    231a:	b292      	uxth	r2, r2
    231c:	3a20      	subs	r2, #32
    231e:	b292      	uxth	r2, r2
    2320:	861a      	strh	r2, [r3, #48]	; 0x30
    2322:	687b      	ldr	r3, [r7, #4]
    2324:	88da      	ldrh	r2, [r3, #6]
    2326:	4b0e      	ldr	r3, [pc, #56]	; (2360 <ReadPacket+0x1e8>)
    2328:	801a      	strh	r2, [r3, #0]
    232a:	687b      	ldr	r3, [r7, #4]
    232c:	891a      	ldrh	r2, [r3, #8]
    232e:	4b0c      	ldr	r3, [pc, #48]	; (2360 <ReadPacket+0x1e8>)
    2330:	805a      	strh	r2, [r3, #2]
    2332:	687b      	ldr	r3, [r7, #4]
    2334:	895a      	ldrh	r2, [r3, #10]
    2336:	4b0a      	ldr	r3, [pc, #40]	; (2360 <ReadPacket+0x1e8>)
    2338:	809a      	strh	r2, [r3, #4]
    233a:	4b09      	ldr	r3, [pc, #36]	; (2360 <ReadPacket+0x1e8>)
    233c:	2201      	movs	r2, #1
    233e:	815a      	strh	r2, [r3, #10]
    2340:	4b05      	ldr	r3, [pc, #20]	; (2358 <ReadPacket+0x1e0>)
    2342:	681b      	ldr	r3, [r3, #0]
    2344:	0018      	movs	r0, r3
    2346:	f004 faf9 	bl	693c <osMutexRelease>
    234a:	2308      	movs	r3, #8
    234c:	18fb      	adds	r3, r7, r3
    234e:	881b      	ldrh	r3, [r3, #0]
    2350:	0018      	movs	r0, r3
    2352:	46bd      	mov	sp, r7
    2354:	b00a      	add	sp, #40	; 0x28
    2356:	bd80      	pop	{r7, pc}
    2358:	2000532c 	.word	0x2000532c
    235c:	00000fff 	.word	0x00000fff
    2360:	20004d1c 	.word	0x20004d1c

00002364 <SendPacket>:
    2364:	b580      	push	{r7, lr}
    2366:	b08a      	sub	sp, #40	; 0x28
    2368:	af00      	add	r7, sp, #0
    236a:	6078      	str	r0, [r7, #4]
    236c:	6039      	str	r1, [r7, #0]
    236e:	4b79      	ldr	r3, [pc, #484]	; (2554 <SendPacket+0x1f0>)
    2370:	681a      	ldr	r2, [r3, #0]
    2372:	2301      	movs	r3, #1
    2374:	425b      	negs	r3, r3
    2376:	0019      	movs	r1, r3
    2378:	0010      	movs	r0, r2
    237a:	f004 facf 	bl	691c <osMutexWait>
    237e:	23c0      	movs	r3, #192	; 0xc0
    2380:	059b      	lsls	r3, r3, #22
    2382:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
    2384:	b29b      	uxth	r3, r3
    2386:	61bb      	str	r3, [r7, #24]
    2388:	23c0      	movs	r3, #192	; 0xc0
    238a:	059b      	lsls	r3, r3, #22
    238c:	8d5b      	ldrh	r3, [r3, #42]	; 0x2a
    238e:	b29b      	uxth	r3, r3
    2390:	617b      	str	r3, [r7, #20]
    2392:	69ba      	ldr	r2, [r7, #24]
    2394:	697b      	ldr	r3, [r7, #20]
    2396:	429a      	cmp	r2, r3
    2398:	d90d      	bls.n	23b6 <SendPacket+0x52>
    239a:	69bb      	ldr	r3, [r7, #24]
    239c:	b29a      	uxth	r2, r3
    239e:	697b      	ldr	r3, [r7, #20]
    23a0:	b29b      	uxth	r3, r3
    23a2:	1ad3      	subs	r3, r2, r3
    23a4:	b29a      	uxth	r2, r3
    23a6:	230c      	movs	r3, #12
    23a8:	18fb      	adds	r3, r7, r3
    23aa:	801a      	strh	r2, [r3, #0]
    23ac:	230c      	movs	r3, #12
    23ae:	18fb      	adds	r3, r7, r3
    23b0:	2200      	movs	r2, #0
    23b2:	805a      	strh	r2, [r3, #2]
    23b4:	e011      	b.n	23da <SendPacket+0x76>
    23b6:	697b      	ldr	r3, [r7, #20]
    23b8:	b29b      	uxth	r3, r3
    23ba:	2280      	movs	r2, #128	; 0x80
    23bc:	0192      	lsls	r2, r2, #6
    23be:	1ad3      	subs	r3, r2, r3
    23c0:	b29a      	uxth	r2, r3
    23c2:	230c      	movs	r3, #12
    23c4:	18fb      	adds	r3, r7, r3
    23c6:	801a      	strh	r2, [r3, #0]
    23c8:	69bb      	ldr	r3, [r7, #24]
    23ca:	b29b      	uxth	r3, r3
    23cc:	4a62      	ldr	r2, [pc, #392]	; (2558 <SendPacket+0x1f4>)
    23ce:	4694      	mov	ip, r2
    23d0:	4463      	add	r3, ip
    23d2:	b29a      	uxth	r2, r3
    23d4:	230c      	movs	r3, #12
    23d6:	18fb      	adds	r3, r7, r3
    23d8:	805a      	strh	r2, [r3, #2]
    23da:	230c      	movs	r3, #12
    23dc:	18fb      	adds	r3, r7, r3
    23de:	881b      	ldrh	r3, [r3, #0]
    23e0:	001a      	movs	r2, r3
    23e2:	230c      	movs	r3, #12
    23e4:	18fb      	adds	r3, r7, r3
    23e6:	885b      	ldrh	r3, [r3, #2]
    23e8:	18d3      	adds	r3, r2, r3
    23ea:	3b08      	subs	r3, #8
    23ec:	001a      	movs	r2, r3
    23ee:	683b      	ldr	r3, [r7, #0]
    23f0:	429a      	cmp	r2, r3
    23f2:	da01      	bge.n	23f8 <SendPacket+0x94>
    23f4:	2300      	movs	r3, #0
    23f6:	e0a9      	b.n	254c <SendPacket+0x1e8>
    23f8:	683b      	ldr	r3, [r7, #0]
    23fa:	613b      	str	r3, [r7, #16]
    23fc:	687b      	ldr	r3, [r7, #4]
    23fe:	623b      	str	r3, [r7, #32]
    2400:	697b      	ldr	r3, [r7, #20]
    2402:	22e0      	movs	r2, #224	; 0xe0
    2404:	0592      	lsls	r2, r2, #22
    2406:	4694      	mov	ip, r2
    2408:	4463      	add	r3, ip
    240a:	61fb      	str	r3, [r7, #28]
    240c:	69fb      	ldr	r3, [r7, #28]
    240e:	1d1a      	adds	r2, r3, #4
    2410:	61fa      	str	r2, [r7, #28]
    2412:	693a      	ldr	r2, [r7, #16]
    2414:	601a      	str	r2, [r3, #0]
    2416:	230c      	movs	r3, #12
    2418:	18fb      	adds	r3, r7, r3
    241a:	881b      	ldrh	r3, [r3, #0]
    241c:	3b04      	subs	r3, #4
    241e:	b29a      	uxth	r2, r3
    2420:	230c      	movs	r3, #12
    2422:	18fb      	adds	r3, r7, r3
    2424:	801a      	strh	r2, [r3, #0]
    2426:	69fb      	ldr	r3, [r7, #28]
    2428:	b29b      	uxth	r3, r3
    242a:	4a4c      	ldr	r2, [pc, #304]	; (255c <SendPacket+0x1f8>)
    242c:	4293      	cmp	r3, r2
    242e:	d901      	bls.n	2434 <SendPacket+0xd0>
    2430:	4b4b      	ldr	r3, [pc, #300]	; (2560 <SendPacket+0x1fc>)
    2432:	61fb      	str	r3, [r7, #28]
    2434:	683b      	ldr	r3, [r7, #0]
    2436:	3303      	adds	r3, #3
    2438:	2b00      	cmp	r3, #0
    243a:	da00      	bge.n	243e <SendPacket+0xda>
    243c:	3303      	adds	r3, #3
    243e:	109b      	asrs	r3, r3, #2
    2440:	613b      	str	r3, [r7, #16]
    2442:	230c      	movs	r3, #12
    2444:	18fb      	adds	r3, r7, r3
    2446:	881b      	ldrh	r3, [r3, #0]
    2448:	001a      	movs	r2, r3
    244a:	683b      	ldr	r3, [r7, #0]
    244c:	429a      	cmp	r2, r3
    244e:	db1a      	blt.n	2486 <SendPacket+0x122>
    2450:	2326      	movs	r3, #38	; 0x26
    2452:	18fb      	adds	r3, r7, r3
    2454:	2200      	movs	r2, #0
    2456:	801a      	strh	r2, [r3, #0]
    2458:	e00e      	b.n	2478 <SendPacket+0x114>
    245a:	69fb      	ldr	r3, [r7, #28]
    245c:	1d1a      	adds	r2, r3, #4
    245e:	61fa      	str	r2, [r7, #28]
    2460:	6a3a      	ldr	r2, [r7, #32]
    2462:	1d11      	adds	r1, r2, #4
    2464:	6239      	str	r1, [r7, #32]
    2466:	6812      	ldr	r2, [r2, #0]
    2468:	601a      	str	r2, [r3, #0]
    246a:	2326      	movs	r3, #38	; 0x26
    246c:	18fb      	adds	r3, r7, r3
    246e:	881a      	ldrh	r2, [r3, #0]
    2470:	2326      	movs	r3, #38	; 0x26
    2472:	18fb      	adds	r3, r7, r3
    2474:	3201      	adds	r2, #1
    2476:	801a      	strh	r2, [r3, #0]
    2478:	2326      	movs	r3, #38	; 0x26
    247a:	18fb      	adds	r3, r7, r3
    247c:	881a      	ldrh	r2, [r3, #0]
    247e:	693b      	ldr	r3, [r7, #16]
    2480:	429a      	cmp	r2, r3
    2482:	d3ea      	bcc.n	245a <SendPacket+0xf6>
    2484:	e042      	b.n	250c <SendPacket+0x1a8>
    2486:	230c      	movs	r3, #12
    2488:	18fb      	adds	r3, r7, r3
    248a:	881b      	ldrh	r3, [r3, #0]
    248c:	089b      	lsrs	r3, r3, #2
    248e:	b29b      	uxth	r3, r3
    2490:	001a      	movs	r2, r3
    2492:	693b      	ldr	r3, [r7, #16]
    2494:	1a9b      	subs	r3, r3, r2
    2496:	613b      	str	r3, [r7, #16]
    2498:	2326      	movs	r3, #38	; 0x26
    249a:	18fb      	adds	r3, r7, r3
    249c:	2200      	movs	r2, #0
    249e:	801a      	strh	r2, [r3, #0]
    24a0:	e00e      	b.n	24c0 <SendPacket+0x15c>
    24a2:	69fb      	ldr	r3, [r7, #28]
    24a4:	1d1a      	adds	r2, r3, #4
    24a6:	61fa      	str	r2, [r7, #28]
    24a8:	6a3a      	ldr	r2, [r7, #32]
    24aa:	1d11      	adds	r1, r2, #4
    24ac:	6239      	str	r1, [r7, #32]
    24ae:	6812      	ldr	r2, [r2, #0]
    24b0:	601a      	str	r2, [r3, #0]
    24b2:	2326      	movs	r3, #38	; 0x26
    24b4:	18fb      	adds	r3, r7, r3
    24b6:	881a      	ldrh	r2, [r3, #0]
    24b8:	2326      	movs	r3, #38	; 0x26
    24ba:	18fb      	adds	r3, r7, r3
    24bc:	3201      	adds	r2, #1
    24be:	801a      	strh	r2, [r3, #0]
    24c0:	230c      	movs	r3, #12
    24c2:	18fb      	adds	r3, r7, r3
    24c4:	881b      	ldrh	r3, [r3, #0]
    24c6:	089b      	lsrs	r3, r3, #2
    24c8:	b29b      	uxth	r3, r3
    24ca:	2226      	movs	r2, #38	; 0x26
    24cc:	18ba      	adds	r2, r7, r2
    24ce:	8812      	ldrh	r2, [r2, #0]
    24d0:	429a      	cmp	r2, r3
    24d2:	d3e6      	bcc.n	24a2 <SendPacket+0x13e>
    24d4:	4b22      	ldr	r3, [pc, #136]	; (2560 <SendPacket+0x1fc>)
    24d6:	61fb      	str	r3, [r7, #28]
    24d8:	2326      	movs	r3, #38	; 0x26
    24da:	18fb      	adds	r3, r7, r3
    24dc:	2200      	movs	r2, #0
    24de:	801a      	strh	r2, [r3, #0]
    24e0:	e00e      	b.n	2500 <SendPacket+0x19c>
    24e2:	69fb      	ldr	r3, [r7, #28]
    24e4:	1d1a      	adds	r2, r3, #4
    24e6:	61fa      	str	r2, [r7, #28]
    24e8:	6a3a      	ldr	r2, [r7, #32]
    24ea:	1d11      	adds	r1, r2, #4
    24ec:	6239      	str	r1, [r7, #32]
    24ee:	6812      	ldr	r2, [r2, #0]
    24f0:	601a      	str	r2, [r3, #0]
    24f2:	2326      	movs	r3, #38	; 0x26
    24f4:	18fb      	adds	r3, r7, r3
    24f6:	881a      	ldrh	r2, [r3, #0]
    24f8:	2326      	movs	r3, #38	; 0x26
    24fa:	18fb      	adds	r3, r7, r3
    24fc:	3201      	adds	r2, #1
    24fe:	801a      	strh	r2, [r3, #0]
    2500:	2326      	movs	r3, #38	; 0x26
    2502:	18fb      	adds	r3, r7, r3
    2504:	881a      	ldrh	r2, [r3, #0]
    2506:	693b      	ldr	r3, [r7, #16]
    2508:	429a      	cmp	r2, r3
    250a:	d3ea      	bcc.n	24e2 <SendPacket+0x17e>
    250c:	69fb      	ldr	r3, [r7, #28]
    250e:	b29b      	uxth	r3, r3
    2510:	4a12      	ldr	r2, [pc, #72]	; (255c <SendPacket+0x1f8>)
    2512:	4293      	cmp	r3, r2
    2514:	d901      	bls.n	251a <SendPacket+0x1b6>
    2516:	4b12      	ldr	r3, [pc, #72]	; (2560 <SendPacket+0x1fc>)
    2518:	61fb      	str	r3, [r7, #28]
    251a:	2300      	movs	r3, #0
    251c:	613b      	str	r3, [r7, #16]
    251e:	69fb      	ldr	r3, [r7, #28]
    2520:	1d1a      	adds	r2, r3, #4
    2522:	61fa      	str	r2, [r7, #28]
    2524:	693a      	ldr	r2, [r7, #16]
    2526:	601a      	str	r2, [r3, #0]
    2528:	69fb      	ldr	r3, [r7, #28]
    252a:	b29b      	uxth	r3, r3
    252c:	4a0b      	ldr	r2, [pc, #44]	; (255c <SendPacket+0x1f8>)
    252e:	4293      	cmp	r3, r2
    2530:	d901      	bls.n	2536 <SendPacket+0x1d2>
    2532:	4b0b      	ldr	r3, [pc, #44]	; (2560 <SendPacket+0x1fc>)
    2534:	61fb      	str	r3, [r7, #28]
    2536:	23c0      	movs	r3, #192	; 0xc0
    2538:	059b      	lsls	r3, r3, #22
    253a:	69fa      	ldr	r2, [r7, #28]
    253c:	b292      	uxth	r2, r2
    253e:	855a      	strh	r2, [r3, #42]	; 0x2a
    2540:	4b04      	ldr	r3, [pc, #16]	; (2554 <SendPacket+0x1f0>)
    2542:	681b      	ldr	r3, [r3, #0]
    2544:	0018      	movs	r0, r3
    2546:	f004 f9f9 	bl	693c <osMutexRelease>
    254a:	683b      	ldr	r3, [r7, #0]
    254c:	0018      	movs	r0, r3
    254e:	46bd      	mov	sp, r7
    2550:	b00a      	add	sp, #40	; 0x28
    2552:	bd80      	pop	{r7, pc}
    2554:	20005340 	.word	0x20005340
    2558:	fffff000 	.word	0xfffff000
    255c:	00001ffc 	.word	0x00001ffc
    2560:	38001000 	.word	0x38001000

00002564 <ETHERNET_Handler>:
    2564:	b580      	push	{r7, lr}
    2566:	b082      	sub	sp, #8
    2568:	af00      	add	r7, sp, #0
    256a:	23c0      	movs	r3, #192	; 0xc0
    256c:	059a      	lsls	r2, r3, #22
    256e:	1dbb      	adds	r3, r7, #6
    2570:	8c52      	ldrh	r2, [r2, #34]	; 0x22
    2572:	801a      	strh	r2, [r3, #0]
    2574:	23c0      	movs	r3, #192	; 0xc0
    2576:	059b      	lsls	r3, r3, #22
    2578:	1dba      	adds	r2, r7, #6
    257a:	8812      	ldrh	r2, [r2, #0]
    257c:	845a      	strh	r2, [r3, #34]	; 0x22
    257e:	1dbb      	adds	r3, r7, #6
    2580:	881b      	ldrh	r3, [r3, #0]
    2582:	2201      	movs	r2, #1
    2584:	4013      	ands	r3, r2
    2586:	d008      	beq.n	259a <ETHERNET_Handler+0x36>
    2588:	4b0a      	ldr	r3, [pc, #40]	; (25b4 <ETHERNET_Handler+0x50>)
    258a:	2201      	movs	r2, #1
    258c:	601a      	str	r2, [r3, #0]
    258e:	4b0a      	ldr	r3, [pc, #40]	; (25b8 <ETHERNET_Handler+0x54>)
    2590:	681b      	ldr	r3, [r3, #0]
    2592:	2101      	movs	r1, #1
    2594:	0018      	movs	r0, r3
    2596:	f004 f8df 	bl	6758 <osSignalSet>
    259a:	1dbb      	adds	r3, r7, #6
    259c:	881b      	ldrh	r3, [r3, #0]
    259e:	2202      	movs	r2, #2
    25a0:	4013      	ands	r3, r2
    25a2:	d002      	beq.n	25aa <ETHERNET_Handler+0x46>
    25a4:	4b05      	ldr	r3, [pc, #20]	; (25bc <ETHERNET_Handler+0x58>)
    25a6:	2201      	movs	r2, #1
    25a8:	601a      	str	r2, [r3, #0]
    25aa:	46c0      	nop			; (mov r8, r8)
    25ac:	46bd      	mov	sp, r7
    25ae:	b002      	add	sp, #8
    25b0:	bd80      	pop	{r7, pc}
    25b2:	46c0      	nop			; (mov r8, r8)
    25b4:	20004d28 	.word	0x20004d28
    25b8:	20000858 	.word	0x20000858
    25bc:	20004d2c 	.word	0x20004d2c

000025c0 <network_config>:
    25c0:	b580      	push	{r7, lr}
    25c2:	af00      	add	r7, sp, #0
    25c4:	46c0      	nop			; (mov r8, r8)
    25c6:	46bd      	mov	sp, r7
    25c8:	bd80      	pop	{r7, pc}
    25ca:	46c0      	nop			; (mov r8, r8)

000025cc <Answear_ARP>:
    25cc:	b580      	push	{r7, lr}
    25ce:	b08c      	sub	sp, #48	; 0x30
    25d0:	af00      	add	r7, sp, #0
    25d2:	4b36      	ldr	r3, [pc, #216]	; (26ac <Answear_ARP+0xe0>)
    25d4:	88da      	ldrh	r2, [r3, #6]
    25d6:	1d3b      	adds	r3, r7, #4
    25d8:	801a      	strh	r2, [r3, #0]
    25da:	4b34      	ldr	r3, [pc, #208]	; (26ac <Answear_ARP+0xe0>)
    25dc:	891a      	ldrh	r2, [r3, #8]
    25de:	1d3b      	adds	r3, r7, #4
    25e0:	805a      	strh	r2, [r3, #2]
    25e2:	4b32      	ldr	r3, [pc, #200]	; (26ac <Answear_ARP+0xe0>)
    25e4:	895a      	ldrh	r2, [r3, #10]
    25e6:	1d3b      	adds	r3, r7, #4
    25e8:	809a      	strh	r2, [r3, #4]
    25ea:	23c0      	movs	r3, #192	; 0xc0
    25ec:	059b      	lsls	r3, r3, #22
    25ee:	885b      	ldrh	r3, [r3, #2]
    25f0:	b29a      	uxth	r2, r3
    25f2:	1d3b      	adds	r3, r7, #4
    25f4:	80da      	strh	r2, [r3, #6]
    25f6:	23c0      	movs	r3, #192	; 0xc0
    25f8:	059b      	lsls	r3, r3, #22
    25fa:	889b      	ldrh	r3, [r3, #4]
    25fc:	b29a      	uxth	r2, r3
    25fe:	1d3b      	adds	r3, r7, #4
    2600:	811a      	strh	r2, [r3, #8]
    2602:	23c0      	movs	r3, #192	; 0xc0
    2604:	059b      	lsls	r3, r3, #22
    2606:	88db      	ldrh	r3, [r3, #6]
    2608:	b29a      	uxth	r2, r3
    260a:	1d3b      	adds	r3, r7, #4
    260c:	815a      	strh	r2, [r3, #10]
    260e:	4b27      	ldr	r3, [pc, #156]	; (26ac <Answear_ARP+0xe0>)
    2610:	899a      	ldrh	r2, [r3, #12]
    2612:	1d3b      	adds	r3, r7, #4
    2614:	819a      	strh	r2, [r3, #12]
    2616:	4b25      	ldr	r3, [pc, #148]	; (26ac <Answear_ARP+0xe0>)
    2618:	89da      	ldrh	r2, [r3, #14]
    261a:	1d3b      	adds	r3, r7, #4
    261c:	81da      	strh	r2, [r3, #14]
    261e:	4b23      	ldr	r3, [pc, #140]	; (26ac <Answear_ARP+0xe0>)
    2620:	8a1a      	ldrh	r2, [r3, #16]
    2622:	1d3b      	adds	r3, r7, #4
    2624:	821a      	strh	r2, [r3, #16]
    2626:	4b21      	ldr	r3, [pc, #132]	; (26ac <Answear_ARP+0xe0>)
    2628:	8a5a      	ldrh	r2, [r3, #18]
    262a:	1d3b      	adds	r3, r7, #4
    262c:	825a      	strh	r2, [r3, #18]
    262e:	1d3b      	adds	r3, r7, #4
    2630:	2280      	movs	r2, #128	; 0x80
    2632:	0092      	lsls	r2, r2, #2
    2634:	829a      	strh	r2, [r3, #20]
    2636:	23c0      	movs	r3, #192	; 0xc0
    2638:	059b      	lsls	r3, r3, #22
    263a:	885b      	ldrh	r3, [r3, #2]
    263c:	b29a      	uxth	r2, r3
    263e:	1d3b      	adds	r3, r7, #4
    2640:	82da      	strh	r2, [r3, #22]
    2642:	23c0      	movs	r3, #192	; 0xc0
    2644:	059b      	lsls	r3, r3, #22
    2646:	889b      	ldrh	r3, [r3, #4]
    2648:	b29a      	uxth	r2, r3
    264a:	1d3b      	adds	r3, r7, #4
    264c:	831a      	strh	r2, [r3, #24]
    264e:	23c0      	movs	r3, #192	; 0xc0
    2650:	059b      	lsls	r3, r3, #22
    2652:	88db      	ldrh	r3, [r3, #6]
    2654:	b29a      	uxth	r2, r3
    2656:	1d3b      	adds	r3, r7, #4
    2658:	835a      	strh	r2, [r3, #26]
    265a:	4b15      	ldr	r3, [pc, #84]	; (26b0 <Answear_ARP+0xe4>)
    265c:	881a      	ldrh	r2, [r3, #0]
    265e:	1d3b      	adds	r3, r7, #4
    2660:	839a      	strh	r2, [r3, #28]
    2662:	4b13      	ldr	r3, [pc, #76]	; (26b0 <Answear_ARP+0xe4>)
    2664:	885a      	ldrh	r2, [r3, #2]
    2666:	1d3b      	adds	r3, r7, #4
    2668:	83da      	strh	r2, [r3, #30]
    266a:	4b10      	ldr	r3, [pc, #64]	; (26ac <Answear_ARP+0xe0>)
    266c:	88da      	ldrh	r2, [r3, #6]
    266e:	1d3b      	adds	r3, r7, #4
    2670:	841a      	strh	r2, [r3, #32]
    2672:	4b0e      	ldr	r3, [pc, #56]	; (26ac <Answear_ARP+0xe0>)
    2674:	891a      	ldrh	r2, [r3, #8]
    2676:	1d3b      	adds	r3, r7, #4
    2678:	845a      	strh	r2, [r3, #34]	; 0x22
    267a:	4b0c      	ldr	r3, [pc, #48]	; (26ac <Answear_ARP+0xe0>)
    267c:	895a      	ldrh	r2, [r3, #10]
    267e:	1d3b      	adds	r3, r7, #4
    2680:	849a      	strh	r2, [r3, #36]	; 0x24
    2682:	4b0a      	ldr	r3, [pc, #40]	; (26ac <Answear_ARP+0xe0>)
    2684:	8b9a      	ldrh	r2, [r3, #28]
    2686:	1d3b      	adds	r3, r7, #4
    2688:	84da      	strh	r2, [r3, #38]	; 0x26
    268a:	4b08      	ldr	r3, [pc, #32]	; (26ac <Answear_ARP+0xe0>)
    268c:	8bda      	ldrh	r2, [r3, #30]
    268e:	1d3b      	adds	r3, r7, #4
    2690:	851a      	strh	r2, [r3, #40]	; 0x28
    2692:	1d3b      	adds	r3, r7, #4
    2694:	2200      	movs	r2, #0
    2696:	855a      	strh	r2, [r3, #42]	; 0x2a
    2698:	1d3b      	adds	r3, r7, #4
    269a:	212a      	movs	r1, #42	; 0x2a
    269c:	0018      	movs	r0, r3
    269e:	f7ff fe61 	bl	2364 <SendPacket>
    26a2:	46c0      	nop			; (mov r8, r8)
    26a4:	46bd      	mov	sp, r7
    26a6:	b00c      	add	sp, #48	; 0x30
    26a8:	bd80      	pop	{r7, pc}
    26aa:	46c0      	nop			; (mov r8, r8)
    26ac:	20004d38 	.word	0x20004d38
    26b0:	20000010 	.word	0x20000010

000026b4 <CheckSum_UDP>:
    26b4:	b580      	push	{r7, lr}
    26b6:	b086      	sub	sp, #24
    26b8:	af00      	add	r7, sp, #0
    26ba:	0002      	movs	r2, r0
    26bc:	6039      	str	r1, [r7, #0]
    26be:	1dbb      	adds	r3, r7, #6
    26c0:	801a      	strh	r2, [r3, #0]
    26c2:	2300      	movs	r3, #0
    26c4:	613b      	str	r3, [r7, #16]
    26c6:	230d      	movs	r3, #13
    26c8:	617b      	str	r3, [r7, #20]
    26ca:	e019      	b.n	2700 <CheckSum_UDP+0x4c>
    26cc:	697b      	ldr	r3, [r7, #20]
    26ce:	005b      	lsls	r3, r3, #1
    26d0:	683a      	ldr	r2, [r7, #0]
    26d2:	18d3      	adds	r3, r2, r3
    26d4:	881b      	ldrh	r3, [r3, #0]
    26d6:	021b      	lsls	r3, r3, #8
    26d8:	041b      	lsls	r3, r3, #16
    26da:	0c1a      	lsrs	r2, r3, #16
    26dc:	697b      	ldr	r3, [r7, #20]
    26de:	005b      	lsls	r3, r3, #1
    26e0:	6839      	ldr	r1, [r7, #0]
    26e2:	18cb      	adds	r3, r1, r3
    26e4:	881b      	ldrh	r3, [r3, #0]
    26e6:	0a1b      	lsrs	r3, r3, #8
    26e8:	b29b      	uxth	r3, r3
    26ea:	0019      	movs	r1, r3
    26ec:	23ff      	movs	r3, #255	; 0xff
    26ee:	400b      	ands	r3, r1
    26f0:	18d3      	adds	r3, r2, r3
    26f2:	001a      	movs	r2, r3
    26f4:	693b      	ldr	r3, [r7, #16]
    26f6:	189b      	adds	r3, r3, r2
    26f8:	613b      	str	r3, [r7, #16]
    26fa:	697b      	ldr	r3, [r7, #20]
    26fc:	3301      	adds	r3, #1
    26fe:	617b      	str	r3, [r7, #20]
    2700:	697b      	ldr	r3, [r7, #20]
    2702:	2b10      	cmp	r3, #16
    2704:	d9e2      	bls.n	26cc <CheckSum_UDP+0x18>
    2706:	683b      	ldr	r3, [r7, #0]
    2708:	3316      	adds	r3, #22
    270a:	881b      	ldrh	r3, [r3, #0]
    270c:	0a1b      	lsrs	r3, r3, #8
    270e:	b29b      	uxth	r3, r3
    2710:	001a      	movs	r2, r3
    2712:	23ff      	movs	r3, #255	; 0xff
    2714:	4013      	ands	r3, r2
    2716:	693a      	ldr	r2, [r7, #16]
    2718:	18d3      	adds	r3, r2, r3
    271a:	613b      	str	r3, [r7, #16]
    271c:	1dbb      	adds	r3, r7, #6
    271e:	881b      	ldrh	r3, [r3, #0]
    2720:	693a      	ldr	r2, [r7, #16]
    2722:	18d3      	adds	r3, r2, r3
    2724:	613b      	str	r3, [r7, #16]
    2726:	683b      	ldr	r3, [r7, #0]
    2728:	3322      	adds	r3, #34	; 0x22
    272a:	881b      	ldrh	r3, [r3, #0]
    272c:	021b      	lsls	r3, r3, #8
    272e:	041b      	lsls	r3, r3, #16
    2730:	0c1a      	lsrs	r2, r3, #16
    2732:	683b      	ldr	r3, [r7, #0]
    2734:	3322      	adds	r3, #34	; 0x22
    2736:	881b      	ldrh	r3, [r3, #0]
    2738:	0a1b      	lsrs	r3, r3, #8
    273a:	b29b      	uxth	r3, r3
    273c:	0019      	movs	r1, r3
    273e:	23ff      	movs	r3, #255	; 0xff
    2740:	400b      	ands	r3, r1
    2742:	18d3      	adds	r3, r2, r3
    2744:	001a      	movs	r2, r3
    2746:	693b      	ldr	r3, [r7, #16]
    2748:	189b      	adds	r3, r3, r2
    274a:	613b      	str	r3, [r7, #16]
    274c:	683b      	ldr	r3, [r7, #0]
    274e:	3324      	adds	r3, #36	; 0x24
    2750:	881b      	ldrh	r3, [r3, #0]
    2752:	021b      	lsls	r3, r3, #8
    2754:	041b      	lsls	r3, r3, #16
    2756:	0c1a      	lsrs	r2, r3, #16
    2758:	683b      	ldr	r3, [r7, #0]
    275a:	3324      	adds	r3, #36	; 0x24
    275c:	881b      	ldrh	r3, [r3, #0]
    275e:	0a1b      	lsrs	r3, r3, #8
    2760:	b29b      	uxth	r3, r3
    2762:	0019      	movs	r1, r3
    2764:	23ff      	movs	r3, #255	; 0xff
    2766:	400b      	ands	r3, r1
    2768:	18d3      	adds	r3, r2, r3
    276a:	001a      	movs	r2, r3
    276c:	693b      	ldr	r3, [r7, #16]
    276e:	189b      	adds	r3, r3, r2
    2770:	613b      	str	r3, [r7, #16]
    2772:	1dbb      	adds	r3, r7, #6
    2774:	881b      	ldrh	r3, [r3, #0]
    2776:	693a      	ldr	r2, [r7, #16]
    2778:	18d3      	adds	r3, r2, r3
    277a:	613b      	str	r3, [r7, #16]
    277c:	683b      	ldr	r3, [r7, #0]
    277e:	3328      	adds	r3, #40	; 0x28
    2780:	881b      	ldrh	r3, [r3, #0]
    2782:	021b      	lsls	r3, r3, #8
    2784:	041b      	lsls	r3, r3, #16
    2786:	0c1a      	lsrs	r2, r3, #16
    2788:	683b      	ldr	r3, [r7, #0]
    278a:	3328      	adds	r3, #40	; 0x28
    278c:	881b      	ldrh	r3, [r3, #0]
    278e:	0a1b      	lsrs	r3, r3, #8
    2790:	b29b      	uxth	r3, r3
    2792:	0019      	movs	r1, r3
    2794:	23ff      	movs	r3, #255	; 0xff
    2796:	400b      	ands	r3, r1
    2798:	18d3      	adds	r3, r2, r3
    279a:	001a      	movs	r2, r3
    279c:	693b      	ldr	r3, [r7, #16]
    279e:	189b      	adds	r3, r3, r2
    27a0:	613b      	str	r3, [r7, #16]
    27a2:	683b      	ldr	r3, [r7, #0]
    27a4:	332a      	adds	r3, #42	; 0x2a
    27a6:	60fb      	str	r3, [r7, #12]
    27a8:	2300      	movs	r3, #0
    27aa:	617b      	str	r3, [r7, #20]
    27ac:	e017      	b.n	27de <CheckSum_UDP+0x12a>
    27ae:	697b      	ldr	r3, [r7, #20]
    27b0:	2201      	movs	r2, #1
    27b2:	4013      	ands	r3, r2
    27b4:	d008      	beq.n	27c8 <CheckSum_UDP+0x114>
    27b6:	68fb      	ldr	r3, [r7, #12]
    27b8:	1c5a      	adds	r2, r3, #1
    27ba:	60fa      	str	r2, [r7, #12]
    27bc:	781b      	ldrb	r3, [r3, #0]
    27be:	001a      	movs	r2, r3
    27c0:	693b      	ldr	r3, [r7, #16]
    27c2:	189b      	adds	r3, r3, r2
    27c4:	613b      	str	r3, [r7, #16]
    27c6:	e007      	b.n	27d8 <CheckSum_UDP+0x124>
    27c8:	68fb      	ldr	r3, [r7, #12]
    27ca:	1c5a      	adds	r2, r3, #1
    27cc:	60fa      	str	r2, [r7, #12]
    27ce:	781b      	ldrb	r3, [r3, #0]
    27d0:	021b      	lsls	r3, r3, #8
    27d2:	693a      	ldr	r2, [r7, #16]
    27d4:	18d3      	adds	r3, r2, r3
    27d6:	613b      	str	r3, [r7, #16]
    27d8:	697b      	ldr	r3, [r7, #20]
    27da:	3301      	adds	r3, #1
    27dc:	617b      	str	r3, [r7, #20]
    27de:	1dbb      	adds	r3, r7, #6
    27e0:	881b      	ldrh	r3, [r3, #0]
    27e2:	3b08      	subs	r3, #8
    27e4:	001a      	movs	r2, r3
    27e6:	697b      	ldr	r3, [r7, #20]
    27e8:	429a      	cmp	r2, r3
    27ea:	d8e0      	bhi.n	27ae <CheckSum_UDP+0xfa>
    27ec:	e006      	b.n	27fc <CheckSum_UDP+0x148>
    27ee:	693b      	ldr	r3, [r7, #16]
    27f0:	0c1a      	lsrs	r2, r3, #16
    27f2:	693b      	ldr	r3, [r7, #16]
    27f4:	041b      	lsls	r3, r3, #16
    27f6:	0c1b      	lsrs	r3, r3, #16
    27f8:	18d3      	adds	r3, r2, r3
    27fa:	613b      	str	r3, [r7, #16]
    27fc:	693b      	ldr	r3, [r7, #16]
    27fe:	0c1b      	lsrs	r3, r3, #16
    2800:	d1f5      	bne.n	27ee <CheckSum_UDP+0x13a>
    2802:	693b      	ldr	r3, [r7, #16]
    2804:	b29b      	uxth	r3, r3
    2806:	43db      	mvns	r3, r3
    2808:	b29b      	uxth	r3, r3
    280a:	0018      	movs	r0, r3
    280c:	46bd      	mov	sp, r7
    280e:	b006      	add	sp, #24
    2810:	bd80      	pop	{r7, pc}
    2812:	46c0      	nop			; (mov r8, r8)

00002814 <CheckSum_IP>:
    2814:	b580      	push	{r7, lr}
    2816:	b084      	sub	sp, #16
    2818:	af00      	add	r7, sp, #0
    281a:	6078      	str	r0, [r7, #4]
    281c:	2300      	movs	r3, #0
    281e:	60bb      	str	r3, [r7, #8]
    2820:	2300      	movs	r3, #0
    2822:	60fb      	str	r3, [r7, #12]
    2824:	e011      	b.n	284a <CheckSum_IP+0x36>
    2826:	68fb      	ldr	r3, [r7, #12]
    2828:	2b05      	cmp	r3, #5
    282a:	d00a      	beq.n	2842 <CheckSum_IP+0x2e>
    282c:	68fb      	ldr	r3, [r7, #12]
    282e:	3307      	adds	r3, #7
    2830:	005b      	lsls	r3, r3, #1
    2832:	687a      	ldr	r2, [r7, #4]
    2834:	18d3      	adds	r3, r2, r3
    2836:	881b      	ldrh	r3, [r3, #0]
    2838:	001a      	movs	r2, r3
    283a:	68bb      	ldr	r3, [r7, #8]
    283c:	189b      	adds	r3, r3, r2
    283e:	60bb      	str	r3, [r7, #8]
    2840:	e000      	b.n	2844 <CheckSum_IP+0x30>
    2842:	46c0      	nop			; (mov r8, r8)
    2844:	68fb      	ldr	r3, [r7, #12]
    2846:	3301      	adds	r3, #1
    2848:	60fb      	str	r3, [r7, #12]
    284a:	68fb      	ldr	r3, [r7, #12]
    284c:	2b09      	cmp	r3, #9
    284e:	d9ea      	bls.n	2826 <CheckSum_IP+0x12>
    2850:	68bb      	ldr	r3, [r7, #8]
    2852:	0c1a      	lsrs	r2, r3, #16
    2854:	68bb      	ldr	r3, [r7, #8]
    2856:	041b      	lsls	r3, r3, #16
    2858:	0c1b      	lsrs	r3, r3, #16
    285a:	18d3      	adds	r3, r2, r3
    285c:	60bb      	str	r3, [r7, #8]
    285e:	68bb      	ldr	r3, [r7, #8]
    2860:	b29b      	uxth	r3, r3
    2862:	43db      	mvns	r3, r3
    2864:	b29b      	uxth	r3, r3
    2866:	0018      	movs	r0, r3
    2868:	46bd      	mov	sp, r7
    286a:	b004      	add	sp, #16
    286c:	bd80      	pop	{r7, pc}
    286e:	46c0      	nop			; (mov r8, r8)

00002870 <CheckSum_ICMP>:
    2870:	b580      	push	{r7, lr}
    2872:	b084      	sub	sp, #16
    2874:	af00      	add	r7, sp, #0
    2876:	0002      	movs	r2, r0
    2878:	6039      	str	r1, [r7, #0]
    287a:	1dbb      	adds	r3, r7, #6
    287c:	801a      	strh	r2, [r3, #0]
    287e:	2300      	movs	r3, #0
    2880:	60bb      	str	r3, [r7, #8]
    2882:	2300      	movs	r3, #0
    2884:	60fb      	str	r3, [r7, #12]
    2886:	e011      	b.n	28ac <CheckSum_ICMP+0x3c>
    2888:	68fb      	ldr	r3, [r7, #12]
    288a:	2b01      	cmp	r3, #1
    288c:	d00a      	beq.n	28a4 <CheckSum_ICMP+0x34>
    288e:	68fb      	ldr	r3, [r7, #12]
    2890:	3311      	adds	r3, #17
    2892:	005b      	lsls	r3, r3, #1
    2894:	683a      	ldr	r2, [r7, #0]
    2896:	18d3      	adds	r3, r2, r3
    2898:	881b      	ldrh	r3, [r3, #0]
    289a:	001a      	movs	r2, r3
    289c:	68bb      	ldr	r3, [r7, #8]
    289e:	189b      	adds	r3, r3, r2
    28a0:	60bb      	str	r3, [r7, #8]
    28a2:	e000      	b.n	28a6 <CheckSum_ICMP+0x36>
    28a4:	46c0      	nop			; (mov r8, r8)
    28a6:	68fb      	ldr	r3, [r7, #12]
    28a8:	3301      	adds	r3, #1
    28aa:	60fb      	str	r3, [r7, #12]
    28ac:	1dbb      	adds	r3, r7, #6
    28ae:	881a      	ldrh	r2, [r3, #0]
    28b0:	68fb      	ldr	r3, [r7, #12]
    28b2:	429a      	cmp	r2, r3
    28b4:	d8e8      	bhi.n	2888 <CheckSum_ICMP+0x18>
    28b6:	68bb      	ldr	r3, [r7, #8]
    28b8:	0c1a      	lsrs	r2, r3, #16
    28ba:	68bb      	ldr	r3, [r7, #8]
    28bc:	041b      	lsls	r3, r3, #16
    28be:	0c1b      	lsrs	r3, r3, #16
    28c0:	18d3      	adds	r3, r2, r3
    28c2:	60bb      	str	r3, [r7, #8]
    28c4:	68bb      	ldr	r3, [r7, #8]
    28c6:	b29b      	uxth	r3, r3
    28c8:	43db      	mvns	r3, r3
    28ca:	b29b      	uxth	r3, r3
    28cc:	0018      	movs	r0, r3
    28ce:	46bd      	mov	sp, r7
    28d0:	b004      	add	sp, #16
    28d2:	bd80      	pop	{r7, pc}

000028d4 <Request_ICMP>:
    28d4:	b580      	push	{r7, lr}
    28d6:	b096      	sub	sp, #88	; 0x58
    28d8:	af00      	add	r7, sp, #0
    28da:	4b73      	ldr	r3, [pc, #460]	; (2aa8 <Request_ICMP+0x1d4>)
    28dc:	881a      	ldrh	r2, [r3, #0]
    28de:	1d3b      	adds	r3, r7, #4
    28e0:	801a      	strh	r2, [r3, #0]
    28e2:	4b71      	ldr	r3, [pc, #452]	; (2aa8 <Request_ICMP+0x1d4>)
    28e4:	885a      	ldrh	r2, [r3, #2]
    28e6:	1d3b      	adds	r3, r7, #4
    28e8:	805a      	strh	r2, [r3, #2]
    28ea:	4b6f      	ldr	r3, [pc, #444]	; (2aa8 <Request_ICMP+0x1d4>)
    28ec:	889a      	ldrh	r2, [r3, #4]
    28ee:	1d3b      	adds	r3, r7, #4
    28f0:	809a      	strh	r2, [r3, #4]
    28f2:	23c0      	movs	r3, #192	; 0xc0
    28f4:	059b      	lsls	r3, r3, #22
    28f6:	885b      	ldrh	r3, [r3, #2]
    28f8:	b29a      	uxth	r2, r3
    28fa:	1d3b      	adds	r3, r7, #4
    28fc:	80da      	strh	r2, [r3, #6]
    28fe:	23c0      	movs	r3, #192	; 0xc0
    2900:	059b      	lsls	r3, r3, #22
    2902:	889b      	ldrh	r3, [r3, #4]
    2904:	b29a      	uxth	r2, r3
    2906:	1d3b      	adds	r3, r7, #4
    2908:	811a      	strh	r2, [r3, #8]
    290a:	23c0      	movs	r3, #192	; 0xc0
    290c:	059b      	lsls	r3, r3, #22
    290e:	88db      	ldrh	r3, [r3, #6]
    2910:	b29a      	uxth	r2, r3
    2912:	1d3b      	adds	r3, r7, #4
    2914:	815a      	strh	r2, [r3, #10]
    2916:	1d3b      	adds	r3, r7, #4
    2918:	2208      	movs	r2, #8
    291a:	819a      	strh	r2, [r3, #12]
    291c:	1d3b      	adds	r3, r7, #4
    291e:	2245      	movs	r2, #69	; 0x45
    2920:	81da      	strh	r2, [r3, #14]
    2922:	1d3b      	adds	r3, r7, #4
    2924:	22f0      	movs	r2, #240	; 0xf0
    2926:	0192      	lsls	r2, r2, #6
    2928:	821a      	strh	r2, [r3, #16]
    292a:	4b60      	ldr	r3, [pc, #384]	; (2aac <Request_ICMP+0x1d8>)
    292c:	881a      	ldrh	r2, [r3, #0]
    292e:	1d3b      	adds	r3, r7, #4
    2930:	825a      	strh	r2, [r3, #18]
    2932:	1d3b      	adds	r3, r7, #4
    2934:	2200      	movs	r2, #0
    2936:	829a      	strh	r2, [r3, #20]
    2938:	1d3b      	adds	r3, r7, #4
    293a:	22c0      	movs	r2, #192	; 0xc0
    293c:	0052      	lsls	r2, r2, #1
    293e:	82da      	strh	r2, [r3, #22]
    2940:	1d3b      	adds	r3, r7, #4
    2942:	2200      	movs	r2, #0
    2944:	831a      	strh	r2, [r3, #24]
    2946:	4b5a      	ldr	r3, [pc, #360]	; (2ab0 <Request_ICMP+0x1dc>)
    2948:	881a      	ldrh	r2, [r3, #0]
    294a:	1d3b      	adds	r3, r7, #4
    294c:	835a      	strh	r2, [r3, #26]
    294e:	4b58      	ldr	r3, [pc, #352]	; (2ab0 <Request_ICMP+0x1dc>)
    2950:	885a      	ldrh	r2, [r3, #2]
    2952:	1d3b      	adds	r3, r7, #4
    2954:	839a      	strh	r2, [r3, #28]
    2956:	4b54      	ldr	r3, [pc, #336]	; (2aa8 <Request_ICMP+0x1d4>)
    2958:	88da      	ldrh	r2, [r3, #6]
    295a:	1d3b      	adds	r3, r7, #4
    295c:	83da      	strh	r2, [r3, #30]
    295e:	4b52      	ldr	r3, [pc, #328]	; (2aa8 <Request_ICMP+0x1d4>)
    2960:	891a      	ldrh	r2, [r3, #8]
    2962:	1d3b      	adds	r3, r7, #4
    2964:	841a      	strh	r2, [r3, #32]
    2966:	1d3b      	adds	r3, r7, #4
    2968:	0018      	movs	r0, r3
    296a:	f7ff ff53 	bl	2814 <CheckSum_IP>
    296e:	0003      	movs	r3, r0
    2970:	001a      	movs	r2, r3
    2972:	1d3b      	adds	r3, r7, #4
    2974:	831a      	strh	r2, [r3, #24]
    2976:	1d3b      	adds	r3, r7, #4
    2978:	2208      	movs	r2, #8
    297a:	845a      	strh	r2, [r3, #34]	; 0x22
    297c:	1d3b      	adds	r3, r7, #4
    297e:	2200      	movs	r2, #0
    2980:	849a      	strh	r2, [r3, #36]	; 0x24
    2982:	1d3b      	adds	r3, r7, #4
    2984:	2202      	movs	r2, #2
    2986:	84da      	strh	r2, [r3, #38]	; 0x26
    2988:	4b4a      	ldr	r3, [pc, #296]	; (2ab4 <Request_ICMP+0x1e0>)
    298a:	881a      	ldrh	r2, [r3, #0]
    298c:	1d3b      	adds	r3, r7, #4
    298e:	851a      	strh	r2, [r3, #40]	; 0x28
    2990:	2300      	movs	r3, #0
    2992:	657b      	str	r3, [r7, #84]	; 0x54
    2994:	2300      	movs	r3, #0
    2996:	653b      	str	r3, [r7, #80]	; 0x50
    2998:	e021      	b.n	29de <Request_ICMP+0x10a>
    299a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    299c:	b2db      	uxtb	r3, r3
    299e:	3361      	adds	r3, #97	; 0x61
    29a0:	b2da      	uxtb	r2, r3
    29a2:	003b      	movs	r3, r7
    29a4:	701a      	strb	r2, [r3, #0]
    29a6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29a8:	b2db      	uxtb	r3, r3
    29aa:	3362      	adds	r3, #98	; 0x62
    29ac:	b2da      	uxtb	r2, r3
    29ae:	003b      	movs	r3, r7
    29b0:	705a      	strb	r2, [r3, #1]
    29b2:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    29b4:	3315      	adds	r3, #21
    29b6:	001a      	movs	r2, r3
    29b8:	003b      	movs	r3, r7
    29ba:	785b      	ldrb	r3, [r3, #1]
    29bc:	021b      	lsls	r3, r3, #8
    29be:	b219      	sxth	r1, r3
    29c0:	003b      	movs	r3, r7
    29c2:	781b      	ldrb	r3, [r3, #0]
    29c4:	b21b      	sxth	r3, r3
    29c6:	430b      	orrs	r3, r1
    29c8:	b21b      	sxth	r3, r3
    29ca:	b299      	uxth	r1, r3
    29cc:	1d3b      	adds	r3, r7, #4
    29ce:	0052      	lsls	r2, r2, #1
    29d0:	52d1      	strh	r1, [r2, r3]
    29d2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29d4:	3302      	adds	r3, #2
    29d6:	657b      	str	r3, [r7, #84]	; 0x54
    29d8:	6d3b      	ldr	r3, [r7, #80]	; 0x50
    29da:	3301      	adds	r3, #1
    29dc:	653b      	str	r3, [r7, #80]	; 0x50
    29de:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    29e0:	2b1f      	cmp	r3, #31
    29e2:	d9da      	bls.n	299a <Request_ICMP+0xc6>
    29e4:	1d3b      	adds	r3, r7, #4
    29e6:	0019      	movs	r1, r3
    29e8:	2014      	movs	r0, #20
    29ea:	f7ff ff41 	bl	2870 <CheckSum_ICMP>
    29ee:	0003      	movs	r3, r0
    29f0:	001a      	movs	r2, r3
    29f2:	1d3b      	adds	r3, r7, #4
    29f4:	849a      	strh	r2, [r3, #36]	; 0x24
    29f6:	1d3b      	adds	r3, r7, #4
    29f8:	214a      	movs	r1, #74	; 0x4a
    29fa:	0018      	movs	r0, r3
    29fc:	f7ff fcb2 	bl	2364 <SendPacket>
    2a00:	4b2a      	ldr	r3, [pc, #168]	; (2aac <Request_ICMP+0x1d8>)
    2a02:	881b      	ldrh	r3, [r3, #0]
    2a04:	0a1b      	lsrs	r3, r3, #8
    2a06:	b29b      	uxth	r3, r3
    2a08:	b2da      	uxtb	r2, r3
    2a0a:	003b      	movs	r3, r7
    2a0c:	701a      	strb	r2, [r3, #0]
    2a0e:	4b27      	ldr	r3, [pc, #156]	; (2aac <Request_ICMP+0x1d8>)
    2a10:	881b      	ldrh	r3, [r3, #0]
    2a12:	b2da      	uxtb	r2, r3
    2a14:	003b      	movs	r3, r7
    2a16:	705a      	strb	r2, [r3, #1]
    2a18:	003b      	movs	r3, r7
    2a1a:	781b      	ldrb	r3, [r3, #0]
    2a1c:	3301      	adds	r3, #1
    2a1e:	b2da      	uxtb	r2, r3
    2a20:	003b      	movs	r3, r7
    2a22:	701a      	strb	r2, [r3, #0]
    2a24:	003b      	movs	r3, r7
    2a26:	781b      	ldrb	r3, [r3, #0]
    2a28:	2b00      	cmp	r3, #0
    2a2a:	d105      	bne.n	2a38 <Request_ICMP+0x164>
    2a2c:	003b      	movs	r3, r7
    2a2e:	785b      	ldrb	r3, [r3, #1]
    2a30:	3301      	adds	r3, #1
    2a32:	b2da      	uxtb	r2, r3
    2a34:	003b      	movs	r3, r7
    2a36:	705a      	strb	r2, [r3, #1]
    2a38:	003b      	movs	r3, r7
    2a3a:	781b      	ldrb	r3, [r3, #0]
    2a3c:	021b      	lsls	r3, r3, #8
    2a3e:	b21a      	sxth	r2, r3
    2a40:	003b      	movs	r3, r7
    2a42:	785b      	ldrb	r3, [r3, #1]
    2a44:	b21b      	sxth	r3, r3
    2a46:	4313      	orrs	r3, r2
    2a48:	b21b      	sxth	r3, r3
    2a4a:	b29a      	uxth	r2, r3
    2a4c:	4b17      	ldr	r3, [pc, #92]	; (2aac <Request_ICMP+0x1d8>)
    2a4e:	801a      	strh	r2, [r3, #0]
    2a50:	4b18      	ldr	r3, [pc, #96]	; (2ab4 <Request_ICMP+0x1e0>)
    2a52:	881b      	ldrh	r3, [r3, #0]
    2a54:	0a1b      	lsrs	r3, r3, #8
    2a56:	b29b      	uxth	r3, r3
    2a58:	b2da      	uxtb	r2, r3
    2a5a:	003b      	movs	r3, r7
    2a5c:	701a      	strb	r2, [r3, #0]
    2a5e:	4b15      	ldr	r3, [pc, #84]	; (2ab4 <Request_ICMP+0x1e0>)
    2a60:	881b      	ldrh	r3, [r3, #0]
    2a62:	b2da      	uxtb	r2, r3
    2a64:	003b      	movs	r3, r7
    2a66:	705a      	strb	r2, [r3, #1]
    2a68:	003b      	movs	r3, r7
    2a6a:	781b      	ldrb	r3, [r3, #0]
    2a6c:	3301      	adds	r3, #1
    2a6e:	b2da      	uxtb	r2, r3
    2a70:	003b      	movs	r3, r7
    2a72:	701a      	strb	r2, [r3, #0]
    2a74:	003b      	movs	r3, r7
    2a76:	781b      	ldrb	r3, [r3, #0]
    2a78:	2b00      	cmp	r3, #0
    2a7a:	d105      	bne.n	2a88 <Request_ICMP+0x1b4>
    2a7c:	003b      	movs	r3, r7
    2a7e:	785b      	ldrb	r3, [r3, #1]
    2a80:	3301      	adds	r3, #1
    2a82:	b2da      	uxtb	r2, r3
    2a84:	003b      	movs	r3, r7
    2a86:	705a      	strb	r2, [r3, #1]
    2a88:	003b      	movs	r3, r7
    2a8a:	781b      	ldrb	r3, [r3, #0]
    2a8c:	021b      	lsls	r3, r3, #8
    2a8e:	b21a      	sxth	r2, r3
    2a90:	003b      	movs	r3, r7
    2a92:	785b      	ldrb	r3, [r3, #1]
    2a94:	b21b      	sxth	r3, r3
    2a96:	4313      	orrs	r3, r2
    2a98:	b21b      	sxth	r3, r3
    2a9a:	b29a      	uxth	r2, r3
    2a9c:	4b05      	ldr	r3, [pc, #20]	; (2ab4 <Request_ICMP+0x1e0>)
    2a9e:	801a      	strh	r2, [r3, #0]
    2aa0:	46c0      	nop			; (mov r8, r8)
    2aa2:	46bd      	mov	sp, r7
    2aa4:	b016      	add	sp, #88	; 0x58
    2aa6:	bd80      	pop	{r7, pc}
    2aa8:	20004d1c 	.word	0x20004d1c
    2aac:	20004d30 	.word	0x20004d30
    2ab0:	20000010 	.word	0x20000010
    2ab4:	20004d32 	.word	0x20004d32

00002ab8 <Answear_ICMP>:
    2ab8:	b580      	push	{r7, lr}
    2aba:	b082      	sub	sp, #8
    2abc:	af00      	add	r7, sp, #0
    2abe:	4b53      	ldr	r3, [pc, #332]	; (2c0c <Answear_ICMP+0x154>)
    2ac0:	4a53      	ldr	r2, [pc, #332]	; (2c10 <Answear_ICMP+0x158>)
    2ac2:	5a9a      	ldrh	r2, [r3, r2]
    2ac4:	1cbb      	adds	r3, r7, #2
    2ac6:	3a26      	subs	r2, #38	; 0x26
    2ac8:	801a      	strh	r2, [r3, #0]
    2aca:	1cbb      	adds	r3, r7, #2
    2acc:	881b      	ldrh	r3, [r3, #0]
    2ace:	2201      	movs	r2, #1
    2ad0:	4013      	ands	r3, r2
    2ad2:	d017      	beq.n	2b04 <Answear_ICMP+0x4c>
    2ad4:	1cbb      	adds	r3, r7, #2
    2ad6:	881b      	ldrh	r3, [r3, #0]
    2ad8:	3301      	adds	r3, #1
    2ada:	105a      	asrs	r2, r3, #1
    2adc:	1cbb      	adds	r3, r7, #2
    2ade:	801a      	strh	r2, [r3, #0]
    2ae0:	1cbb      	adds	r3, r7, #2
    2ae2:	881b      	ldrh	r3, [r3, #0]
    2ae4:	3310      	adds	r3, #16
    2ae6:	001a      	movs	r2, r3
    2ae8:	1cbb      	adds	r3, r7, #2
    2aea:	881b      	ldrh	r3, [r3, #0]
    2aec:	3310      	adds	r3, #16
    2aee:	0019      	movs	r1, r3
    2af0:	4b46      	ldr	r3, [pc, #280]	; (2c0c <Answear_ICMP+0x154>)
    2af2:	0049      	lsls	r1, r1, #1
    2af4:	5acb      	ldrh	r3, [r1, r3]
    2af6:	21ff      	movs	r1, #255	; 0xff
    2af8:	400b      	ands	r3, r1
    2afa:	b299      	uxth	r1, r3
    2afc:	4b43      	ldr	r3, [pc, #268]	; (2c0c <Answear_ICMP+0x154>)
    2afe:	0052      	lsls	r2, r2, #1
    2b00:	52d1      	strh	r1, [r2, r3]
    2b02:	e004      	b.n	2b0e <Answear_ICMP+0x56>
    2b04:	1cbb      	adds	r3, r7, #2
    2b06:	1cba      	adds	r2, r7, #2
    2b08:	8812      	ldrh	r2, [r2, #0]
    2b0a:	0852      	lsrs	r2, r2, #1
    2b0c:	801a      	strh	r2, [r3, #0]
    2b0e:	4b3f      	ldr	r3, [pc, #252]	; (2c0c <Answear_ICMP+0x154>)
    2b10:	88da      	ldrh	r2, [r3, #6]
    2b12:	4b40      	ldr	r3, [pc, #256]	; (2c14 <Answear_ICMP+0x15c>)
    2b14:	801a      	strh	r2, [r3, #0]
    2b16:	4b3d      	ldr	r3, [pc, #244]	; (2c0c <Answear_ICMP+0x154>)
    2b18:	891a      	ldrh	r2, [r3, #8]
    2b1a:	4b3e      	ldr	r3, [pc, #248]	; (2c14 <Answear_ICMP+0x15c>)
    2b1c:	805a      	strh	r2, [r3, #2]
    2b1e:	4b3b      	ldr	r3, [pc, #236]	; (2c0c <Answear_ICMP+0x154>)
    2b20:	895a      	ldrh	r2, [r3, #10]
    2b22:	4b3c      	ldr	r3, [pc, #240]	; (2c14 <Answear_ICMP+0x15c>)
    2b24:	809a      	strh	r2, [r3, #4]
    2b26:	23c0      	movs	r3, #192	; 0xc0
    2b28:	059b      	lsls	r3, r3, #22
    2b2a:	885b      	ldrh	r3, [r3, #2]
    2b2c:	b29a      	uxth	r2, r3
    2b2e:	4b39      	ldr	r3, [pc, #228]	; (2c14 <Answear_ICMP+0x15c>)
    2b30:	80da      	strh	r2, [r3, #6]
    2b32:	23c0      	movs	r3, #192	; 0xc0
    2b34:	059b      	lsls	r3, r3, #22
    2b36:	889b      	ldrh	r3, [r3, #4]
    2b38:	b29a      	uxth	r2, r3
    2b3a:	4b36      	ldr	r3, [pc, #216]	; (2c14 <Answear_ICMP+0x15c>)
    2b3c:	811a      	strh	r2, [r3, #8]
    2b3e:	23c0      	movs	r3, #192	; 0xc0
    2b40:	059b      	lsls	r3, r3, #22
    2b42:	88db      	ldrh	r3, [r3, #6]
    2b44:	b29a      	uxth	r2, r3
    2b46:	4b33      	ldr	r3, [pc, #204]	; (2c14 <Answear_ICMP+0x15c>)
    2b48:	815a      	strh	r2, [r3, #10]
    2b4a:	4b30      	ldr	r3, [pc, #192]	; (2c0c <Answear_ICMP+0x154>)
    2b4c:	899a      	ldrh	r2, [r3, #12]
    2b4e:	4b31      	ldr	r3, [pc, #196]	; (2c14 <Answear_ICMP+0x15c>)
    2b50:	819a      	strh	r2, [r3, #12]
    2b52:	2307      	movs	r3, #7
    2b54:	607b      	str	r3, [r7, #4]
    2b56:	e00a      	b.n	2b6e <Answear_ICMP+0xb6>
    2b58:	4b2c      	ldr	r3, [pc, #176]	; (2c0c <Answear_ICMP+0x154>)
    2b5a:	687a      	ldr	r2, [r7, #4]
    2b5c:	0052      	lsls	r2, r2, #1
    2b5e:	5ad1      	ldrh	r1, [r2, r3]
    2b60:	4b2c      	ldr	r3, [pc, #176]	; (2c14 <Answear_ICMP+0x15c>)
    2b62:	687a      	ldr	r2, [r7, #4]
    2b64:	0052      	lsls	r2, r2, #1
    2b66:	52d1      	strh	r1, [r2, r3]
    2b68:	687b      	ldr	r3, [r7, #4]
    2b6a:	3301      	adds	r3, #1
    2b6c:	607b      	str	r3, [r7, #4]
    2b6e:	687b      	ldr	r3, [r7, #4]
    2b70:	2b0b      	cmp	r3, #11
    2b72:	d9f1      	bls.n	2b58 <Answear_ICMP+0xa0>
    2b74:	4b25      	ldr	r3, [pc, #148]	; (2c0c <Answear_ICMP+0x154>)
    2b76:	0018      	movs	r0, r3
    2b78:	f7ff fe4c 	bl	2814 <CheckSum_IP>
    2b7c:	0003      	movs	r3, r0
    2b7e:	001a      	movs	r2, r3
    2b80:	4b24      	ldr	r3, [pc, #144]	; (2c14 <Answear_ICMP+0x15c>)
    2b82:	831a      	strh	r2, [r3, #24]
    2b84:	4b21      	ldr	r3, [pc, #132]	; (2c0c <Answear_ICMP+0x154>)
    2b86:	8bda      	ldrh	r2, [r3, #30]
    2b88:	4b22      	ldr	r3, [pc, #136]	; (2c14 <Answear_ICMP+0x15c>)
    2b8a:	835a      	strh	r2, [r3, #26]
    2b8c:	4b1f      	ldr	r3, [pc, #124]	; (2c0c <Answear_ICMP+0x154>)
    2b8e:	8c1a      	ldrh	r2, [r3, #32]
    2b90:	4b20      	ldr	r3, [pc, #128]	; (2c14 <Answear_ICMP+0x15c>)
    2b92:	839a      	strh	r2, [r3, #28]
    2b94:	4b1d      	ldr	r3, [pc, #116]	; (2c0c <Answear_ICMP+0x154>)
    2b96:	8b5a      	ldrh	r2, [r3, #26]
    2b98:	4b1e      	ldr	r3, [pc, #120]	; (2c14 <Answear_ICMP+0x15c>)
    2b9a:	83da      	strh	r2, [r3, #30]
    2b9c:	4b1b      	ldr	r3, [pc, #108]	; (2c0c <Answear_ICMP+0x154>)
    2b9e:	8b9a      	ldrh	r2, [r3, #28]
    2ba0:	4b1c      	ldr	r3, [pc, #112]	; (2c14 <Answear_ICMP+0x15c>)
    2ba2:	841a      	strh	r2, [r3, #32]
    2ba4:	4b1b      	ldr	r3, [pc, #108]	; (2c14 <Answear_ICMP+0x15c>)
    2ba6:	2200      	movs	r2, #0
    2ba8:	845a      	strh	r2, [r3, #34]	; 0x22
    2baa:	4b18      	ldr	r3, [pc, #96]	; (2c0c <Answear_ICMP+0x154>)
    2bac:	2200      	movs	r2, #0
    2bae:	845a      	strh	r2, [r3, #34]	; 0x22
    2bb0:	4a16      	ldr	r2, [pc, #88]	; (2c0c <Answear_ICMP+0x154>)
    2bb2:	1cbb      	adds	r3, r7, #2
    2bb4:	881b      	ldrh	r3, [r3, #0]
    2bb6:	0011      	movs	r1, r2
    2bb8:	0018      	movs	r0, r3
    2bba:	f7ff fe59 	bl	2870 <CheckSum_ICMP>
    2bbe:	0003      	movs	r3, r0
    2bc0:	001a      	movs	r2, r3
    2bc2:	4b14      	ldr	r3, [pc, #80]	; (2c14 <Answear_ICMP+0x15c>)
    2bc4:	849a      	strh	r2, [r3, #36]	; 0x24
    2bc6:	2313      	movs	r3, #19
    2bc8:	607b      	str	r3, [r7, #4]
    2bca:	e00a      	b.n	2be2 <Answear_ICMP+0x12a>
    2bcc:	4b0f      	ldr	r3, [pc, #60]	; (2c0c <Answear_ICMP+0x154>)
    2bce:	687a      	ldr	r2, [r7, #4]
    2bd0:	0052      	lsls	r2, r2, #1
    2bd2:	5ad1      	ldrh	r1, [r2, r3]
    2bd4:	4b0f      	ldr	r3, [pc, #60]	; (2c14 <Answear_ICMP+0x15c>)
    2bd6:	687a      	ldr	r2, [r7, #4]
    2bd8:	0052      	lsls	r2, r2, #1
    2bda:	52d1      	strh	r1, [r2, r3]
    2bdc:	687b      	ldr	r3, [r7, #4]
    2bde:	3301      	adds	r3, #1
    2be0:	607b      	str	r3, [r7, #4]
    2be2:	1cbb      	adds	r3, r7, #2
    2be4:	881b      	ldrh	r3, [r3, #0]
    2be6:	3311      	adds	r3, #17
    2be8:	001a      	movs	r2, r3
    2bea:	687b      	ldr	r3, [r7, #4]
    2bec:	429a      	cmp	r2, r3
    2bee:	d8ed      	bhi.n	2bcc <Answear_ICMP+0x114>
    2bf0:	1cbb      	adds	r3, r7, #2
    2bf2:	881b      	ldrh	r3, [r3, #0]
    2bf4:	3311      	adds	r3, #17
    2bf6:	005a      	lsls	r2, r3, #1
    2bf8:	4b06      	ldr	r3, [pc, #24]	; (2c14 <Answear_ICMP+0x15c>)
    2bfa:	0011      	movs	r1, r2
    2bfc:	0018      	movs	r0, r3
    2bfe:	f7ff fbb1 	bl	2364 <SendPacket>
    2c02:	46c0      	nop			; (mov r8, r8)
    2c04:	46bd      	mov	sp, r7
    2c06:	b002      	add	sp, #8
    2c08:	bd80      	pop	{r7, pc}
    2c0a:	46c0      	nop			; (mov r8, r8)
    2c0c:	20004d38 	.word	0x20004d38
    2c10:	000005dc 	.word	0x000005dc
    2c14:	20005344 	.word	0x20005344

00002c18 <Send_UDP>:
    2c18:	b590      	push	{r4, r7, lr}
    2c1a:	b089      	sub	sp, #36	; 0x24
    2c1c:	af00      	add	r7, sp, #0
    2c1e:	6078      	str	r0, [r7, #4]
    2c20:	6039      	str	r1, [r7, #0]
    2c22:	4b86      	ldr	r3, [pc, #536]	; (2e3c <Send_UDP+0x224>)
    2c24:	881a      	ldrh	r2, [r3, #0]
    2c26:	4b86      	ldr	r3, [pc, #536]	; (2e40 <Send_UDP+0x228>)
    2c28:	801a      	strh	r2, [r3, #0]
    2c2a:	4b84      	ldr	r3, [pc, #528]	; (2e3c <Send_UDP+0x224>)
    2c2c:	885a      	ldrh	r2, [r3, #2]
    2c2e:	4b84      	ldr	r3, [pc, #528]	; (2e40 <Send_UDP+0x228>)
    2c30:	805a      	strh	r2, [r3, #2]
    2c32:	4b82      	ldr	r3, [pc, #520]	; (2e3c <Send_UDP+0x224>)
    2c34:	889a      	ldrh	r2, [r3, #4]
    2c36:	4b82      	ldr	r3, [pc, #520]	; (2e40 <Send_UDP+0x228>)
    2c38:	809a      	strh	r2, [r3, #4]
    2c3a:	23c0      	movs	r3, #192	; 0xc0
    2c3c:	059b      	lsls	r3, r3, #22
    2c3e:	885b      	ldrh	r3, [r3, #2]
    2c40:	b29a      	uxth	r2, r3
    2c42:	4b7f      	ldr	r3, [pc, #508]	; (2e40 <Send_UDP+0x228>)
    2c44:	80da      	strh	r2, [r3, #6]
    2c46:	23c0      	movs	r3, #192	; 0xc0
    2c48:	059b      	lsls	r3, r3, #22
    2c4a:	889b      	ldrh	r3, [r3, #4]
    2c4c:	b29a      	uxth	r2, r3
    2c4e:	4b7c      	ldr	r3, [pc, #496]	; (2e40 <Send_UDP+0x228>)
    2c50:	811a      	strh	r2, [r3, #8]
    2c52:	23c0      	movs	r3, #192	; 0xc0
    2c54:	059b      	lsls	r3, r3, #22
    2c56:	88db      	ldrh	r3, [r3, #6]
    2c58:	b29a      	uxth	r2, r3
    2c5a:	4b79      	ldr	r3, [pc, #484]	; (2e40 <Send_UDP+0x228>)
    2c5c:	815a      	strh	r2, [r3, #10]
    2c5e:	4b78      	ldr	r3, [pc, #480]	; (2e40 <Send_UDP+0x228>)
    2c60:	2208      	movs	r2, #8
    2c62:	819a      	strh	r2, [r3, #12]
    2c64:	4b76      	ldr	r3, [pc, #472]	; (2e40 <Send_UDP+0x228>)
    2c66:	2245      	movs	r2, #69	; 0x45
    2c68:	81da      	strh	r2, [r3, #14]
    2c6a:	4b75      	ldr	r3, [pc, #468]	; (2e40 <Send_UDP+0x228>)
    2c6c:	22f0      	movs	r2, #240	; 0xf0
    2c6e:	0192      	lsls	r2, r2, #6
    2c70:	821a      	strh	r2, [r3, #16]
    2c72:	4b74      	ldr	r3, [pc, #464]	; (2e44 <Send_UDP+0x22c>)
    2c74:	881a      	ldrh	r2, [r3, #0]
    2c76:	4b72      	ldr	r3, [pc, #456]	; (2e40 <Send_UDP+0x228>)
    2c78:	825a      	strh	r2, [r3, #18]
    2c7a:	4b71      	ldr	r3, [pc, #452]	; (2e40 <Send_UDP+0x228>)
    2c7c:	2200      	movs	r2, #0
    2c7e:	829a      	strh	r2, [r3, #20]
    2c80:	4b6f      	ldr	r3, [pc, #444]	; (2e40 <Send_UDP+0x228>)
    2c82:	228c      	movs	r2, #140	; 0x8c
    2c84:	0152      	lsls	r2, r2, #5
    2c86:	82da      	strh	r2, [r3, #22]
    2c88:	4b6d      	ldr	r3, [pc, #436]	; (2e40 <Send_UDP+0x228>)
    2c8a:	2200      	movs	r2, #0
    2c8c:	831a      	strh	r2, [r3, #24]
    2c8e:	4b6e      	ldr	r3, [pc, #440]	; (2e48 <Send_UDP+0x230>)
    2c90:	881a      	ldrh	r2, [r3, #0]
    2c92:	4b6b      	ldr	r3, [pc, #428]	; (2e40 <Send_UDP+0x228>)
    2c94:	835a      	strh	r2, [r3, #26]
    2c96:	4b6c      	ldr	r3, [pc, #432]	; (2e48 <Send_UDP+0x230>)
    2c98:	885a      	ldrh	r2, [r3, #2]
    2c9a:	4b69      	ldr	r3, [pc, #420]	; (2e40 <Send_UDP+0x228>)
    2c9c:	839a      	strh	r2, [r3, #28]
    2c9e:	4b67      	ldr	r3, [pc, #412]	; (2e3c <Send_UDP+0x224>)
    2ca0:	88da      	ldrh	r2, [r3, #6]
    2ca2:	4b67      	ldr	r3, [pc, #412]	; (2e40 <Send_UDP+0x228>)
    2ca4:	83da      	strh	r2, [r3, #30]
    2ca6:	4b65      	ldr	r3, [pc, #404]	; (2e3c <Send_UDP+0x224>)
    2ca8:	891a      	ldrh	r2, [r3, #8]
    2caa:	4b65      	ldr	r3, [pc, #404]	; (2e40 <Send_UDP+0x228>)
    2cac:	841a      	strh	r2, [r3, #32]
    2cae:	2316      	movs	r3, #22
    2cb0:	18fb      	adds	r3, r7, r3
    2cb2:	4a66      	ldr	r2, [pc, #408]	; (2e4c <Send_UDP+0x234>)
    2cb4:	801a      	strh	r2, [r3, #0]
    2cb6:	2316      	movs	r3, #22
    2cb8:	18fb      	adds	r3, r7, r3
    2cba:	2216      	movs	r2, #22
    2cbc:	18ba      	adds	r2, r7, r2
    2cbe:	8812      	ldrh	r2, [r2, #0]
    2cc0:	ba52      	rev16	r2, r2
    2cc2:	801a      	strh	r2, [r3, #0]
    2cc4:	4b62      	ldr	r3, [pc, #392]	; (2e50 <Send_UDP+0x238>)
    2cc6:	881a      	ldrh	r2, [r3, #0]
    2cc8:	2314      	movs	r3, #20
    2cca:	18fb      	adds	r3, r7, r3
    2ccc:	ba52      	rev16	r2, r2
    2cce:	801a      	strh	r2, [r3, #0]
    2cd0:	4b5b      	ldr	r3, [pc, #364]	; (2e40 <Send_UDP+0x228>)
    2cd2:	2216      	movs	r2, #22
    2cd4:	18ba      	adds	r2, r7, r2
    2cd6:	8812      	ldrh	r2, [r2, #0]
    2cd8:	845a      	strh	r2, [r3, #34]	; 0x22
    2cda:	4b59      	ldr	r3, [pc, #356]	; (2e40 <Send_UDP+0x228>)
    2cdc:	2214      	movs	r2, #20
    2cde:	18ba      	adds	r2, r7, r2
    2ce0:	8812      	ldrh	r2, [r2, #0]
    2ce2:	849a      	strh	r2, [r3, #36]	; 0x24
    2ce4:	4b56      	ldr	r3, [pc, #344]	; (2e40 <Send_UDP+0x228>)
    2ce6:	22c0      	movs	r2, #192	; 0xc0
    2ce8:	0112      	lsls	r2, r2, #4
    2cea:	84da      	strh	r2, [r3, #38]	; 0x26
    2cec:	4b54      	ldr	r3, [pc, #336]	; (2e40 <Send_UDP+0x228>)
    2cee:	2200      	movs	r2, #0
    2cf0:	851a      	strh	r2, [r3, #40]	; 0x28
    2cf2:	4b58      	ldr	r3, [pc, #352]	; (2e54 <Send_UDP+0x23c>)
    2cf4:	61bb      	str	r3, [r7, #24]
    2cf6:	683a      	ldr	r2, [r7, #0]
    2cf8:	23fe      	movs	r3, #254	; 0xfe
    2cfa:	005b      	lsls	r3, r3, #1
    2cfc:	429a      	cmp	r2, r3
    2cfe:	dd02      	ble.n	2d06 <Send_UDP+0xee>
    2d00:	23fe      	movs	r3, #254	; 0xfe
    2d02:	005b      	lsls	r3, r3, #1
    2d04:	603b      	str	r3, [r7, #0]
    2d06:	2300      	movs	r3, #0
    2d08:	61fb      	str	r3, [r7, #28]
    2d0a:	e00a      	b.n	2d22 <Send_UDP+0x10a>
    2d0c:	69bb      	ldr	r3, [r7, #24]
    2d0e:	1c5a      	adds	r2, r3, #1
    2d10:	61ba      	str	r2, [r7, #24]
    2d12:	687a      	ldr	r2, [r7, #4]
    2d14:	1c51      	adds	r1, r2, #1
    2d16:	6079      	str	r1, [r7, #4]
    2d18:	7812      	ldrb	r2, [r2, #0]
    2d1a:	701a      	strb	r2, [r3, #0]
    2d1c:	69fb      	ldr	r3, [r7, #28]
    2d1e:	3301      	adds	r3, #1
    2d20:	61fb      	str	r3, [r7, #28]
    2d22:	683b      	ldr	r3, [r7, #0]
    2d24:	69fa      	ldr	r2, [r7, #28]
    2d26:	429a      	cmp	r2, r3
    2d28:	d3f0      	bcc.n	2d0c <Send_UDP+0xf4>
    2d2a:	683b      	ldr	r3, [r7, #0]
    2d2c:	b29a      	uxth	r2, r3
    2d2e:	2312      	movs	r3, #18
    2d30:	18fb      	adds	r3, r7, r3
    2d32:	321c      	adds	r2, #28
    2d34:	801a      	strh	r2, [r3, #0]
    2d36:	2312      	movs	r3, #18
    2d38:	18fb      	adds	r3, r7, r3
    2d3a:	881b      	ldrh	r3, [r3, #0]
    2d3c:	021b      	lsls	r3, r3, #8
    2d3e:	b29a      	uxth	r2, r3
    2d40:	2312      	movs	r3, #18
    2d42:	18fb      	adds	r3, r7, r3
    2d44:	881b      	ldrh	r3, [r3, #0]
    2d46:	0a1b      	lsrs	r3, r3, #8
    2d48:	b29b      	uxth	r3, r3
    2d4a:	18d3      	adds	r3, r2, r3
    2d4c:	b29a      	uxth	r2, r3
    2d4e:	4b3c      	ldr	r3, [pc, #240]	; (2e40 <Send_UDP+0x228>)
    2d50:	821a      	strh	r2, [r3, #16]
    2d52:	4b3b      	ldr	r3, [pc, #236]	; (2e40 <Send_UDP+0x228>)
    2d54:	0018      	movs	r0, r3
    2d56:	f7ff fd5d 	bl	2814 <CheckSum_IP>
    2d5a:	0003      	movs	r3, r0
    2d5c:	001a      	movs	r2, r3
    2d5e:	4b38      	ldr	r3, [pc, #224]	; (2e40 <Send_UDP+0x228>)
    2d60:	831a      	strh	r2, [r3, #24]
    2d62:	683b      	ldr	r3, [r7, #0]
    2d64:	b29a      	uxth	r2, r3
    2d66:	2310      	movs	r3, #16
    2d68:	18fb      	adds	r3, r7, r3
    2d6a:	3208      	adds	r2, #8
    2d6c:	801a      	strh	r2, [r3, #0]
    2d6e:	2310      	movs	r3, #16
    2d70:	18fb      	adds	r3, r7, r3
    2d72:	881b      	ldrh	r3, [r3, #0]
    2d74:	021b      	lsls	r3, r3, #8
    2d76:	b29a      	uxth	r2, r3
    2d78:	2310      	movs	r3, #16
    2d7a:	18fb      	adds	r3, r7, r3
    2d7c:	881b      	ldrh	r3, [r3, #0]
    2d7e:	0a1b      	lsrs	r3, r3, #8
    2d80:	b29b      	uxth	r3, r3
    2d82:	18d3      	adds	r3, r2, r3
    2d84:	b29a      	uxth	r2, r3
    2d86:	4b2e      	ldr	r3, [pc, #184]	; (2e40 <Send_UDP+0x228>)
    2d88:	84da      	strh	r2, [r3, #38]	; 0x26
    2d8a:	683b      	ldr	r3, [r7, #0]
    2d8c:	b29b      	uxth	r3, r3
    2d8e:	3308      	adds	r3, #8
    2d90:	b29b      	uxth	r3, r3
    2d92:	220e      	movs	r2, #14
    2d94:	18bc      	adds	r4, r7, r2
    2d96:	4a2a      	ldr	r2, [pc, #168]	; (2e40 <Send_UDP+0x228>)
    2d98:	0011      	movs	r1, r2
    2d9a:	0018      	movs	r0, r3
    2d9c:	f7ff fc8a 	bl	26b4 <CheckSum_UDP>
    2da0:	0003      	movs	r3, r0
    2da2:	8023      	strh	r3, [r4, #0]
    2da4:	230e      	movs	r3, #14
    2da6:	18fb      	adds	r3, r7, r3
    2da8:	881b      	ldrh	r3, [r3, #0]
    2daa:	021b      	lsls	r3, r3, #8
    2dac:	b29a      	uxth	r2, r3
    2dae:	230e      	movs	r3, #14
    2db0:	18fb      	adds	r3, r7, r3
    2db2:	881b      	ldrh	r3, [r3, #0]
    2db4:	0a1b      	lsrs	r3, r3, #8
    2db6:	b29b      	uxth	r3, r3
    2db8:	18d3      	adds	r3, r2, r3
    2dba:	b29a      	uxth	r2, r3
    2dbc:	4b20      	ldr	r3, [pc, #128]	; (2e40 <Send_UDP+0x228>)
    2dbe:	851a      	strh	r2, [r3, #40]	; 0x28
    2dc0:	683b      	ldr	r3, [r7, #0]
    2dc2:	332a      	adds	r3, #42	; 0x2a
    2dc4:	001a      	movs	r2, r3
    2dc6:	4b1e      	ldr	r3, [pc, #120]	; (2e40 <Send_UDP+0x228>)
    2dc8:	0011      	movs	r1, r2
    2dca:	0018      	movs	r0, r3
    2dcc:	f7ff faca 	bl	2364 <SendPacket>
    2dd0:	4b1c      	ldr	r3, [pc, #112]	; (2e44 <Send_UDP+0x22c>)
    2dd2:	881b      	ldrh	r3, [r3, #0]
    2dd4:	0a1b      	lsrs	r3, r3, #8
    2dd6:	b29b      	uxth	r3, r3
    2dd8:	b2da      	uxtb	r2, r3
    2dda:	230c      	movs	r3, #12
    2ddc:	18fb      	adds	r3, r7, r3
    2dde:	701a      	strb	r2, [r3, #0]
    2de0:	4b18      	ldr	r3, [pc, #96]	; (2e44 <Send_UDP+0x22c>)
    2de2:	881b      	ldrh	r3, [r3, #0]
    2de4:	b2da      	uxtb	r2, r3
    2de6:	230c      	movs	r3, #12
    2de8:	18fb      	adds	r3, r7, r3
    2dea:	705a      	strb	r2, [r3, #1]
    2dec:	230c      	movs	r3, #12
    2dee:	18fb      	adds	r3, r7, r3
    2df0:	781b      	ldrb	r3, [r3, #0]
    2df2:	3301      	adds	r3, #1
    2df4:	b2da      	uxtb	r2, r3
    2df6:	230c      	movs	r3, #12
    2df8:	18fb      	adds	r3, r7, r3
    2dfa:	701a      	strb	r2, [r3, #0]
    2dfc:	230c      	movs	r3, #12
    2dfe:	18fb      	adds	r3, r7, r3
    2e00:	781b      	ldrb	r3, [r3, #0]
    2e02:	2b00      	cmp	r3, #0
    2e04:	d107      	bne.n	2e16 <Send_UDP+0x1fe>
    2e06:	230c      	movs	r3, #12
    2e08:	18fb      	adds	r3, r7, r3
    2e0a:	785b      	ldrb	r3, [r3, #1]
    2e0c:	3301      	adds	r3, #1
    2e0e:	b2da      	uxtb	r2, r3
    2e10:	230c      	movs	r3, #12
    2e12:	18fb      	adds	r3, r7, r3
    2e14:	705a      	strb	r2, [r3, #1]
    2e16:	230c      	movs	r3, #12
    2e18:	18fb      	adds	r3, r7, r3
    2e1a:	781b      	ldrb	r3, [r3, #0]
    2e1c:	021b      	lsls	r3, r3, #8
    2e1e:	b21a      	sxth	r2, r3
    2e20:	230c      	movs	r3, #12
    2e22:	18fb      	adds	r3, r7, r3
    2e24:	785b      	ldrb	r3, [r3, #1]
    2e26:	b21b      	sxth	r3, r3
    2e28:	4313      	orrs	r3, r2
    2e2a:	b21b      	sxth	r3, r3
    2e2c:	b29a      	uxth	r2, r3
    2e2e:	4b05      	ldr	r3, [pc, #20]	; (2e44 <Send_UDP+0x22c>)
    2e30:	801a      	strh	r2, [r3, #0]
    2e32:	46c0      	nop			; (mov r8, r8)
    2e34:	46bd      	mov	sp, r7
    2e36:	b009      	add	sp, #36	; 0x24
    2e38:	bd90      	pop	{r4, r7, pc}
    2e3a:	46c0      	nop			; (mov r8, r8)
    2e3c:	20004d1c 	.word	0x20004d1c
    2e40:	20005584 	.word	0x20005584
    2e44:	20004d30 	.word	0x20004d30
    2e48:	20000010 	.word	0x20000010
    2e4c:	00001234 	.word	0x00001234
    2e50:	20005318 	.word	0x20005318
    2e54:	200055ae 	.word	0x200055ae

00002e58 <PacketParser>:
    2e58:	b580      	push	{r7, lr}
    2e5a:	b082      	sub	sp, #8
    2e5c:	af00      	add	r7, sp, #0
    2e5e:	4b49      	ldr	r3, [pc, #292]	; (2f84 <PacketParser+0x12c>)
    2e60:	899b      	ldrh	r3, [r3, #12]
    2e62:	2b08      	cmp	r3, #8
    2e64:	d005      	beq.n	2e72 <PacketParser+0x1a>
    2e66:	22c1      	movs	r2, #193	; 0xc1
    2e68:	00d2      	lsls	r2, r2, #3
    2e6a:	4293      	cmp	r3, r2
    2e6c:	d100      	bne.n	2e70 <PacketParser+0x18>
    2e6e:	e06b      	b.n	2f48 <PacketParser+0xf0>
    2e70:	e084      	b.n	2f7c <PacketParser+0x124>
    2e72:	4b44      	ldr	r3, [pc, #272]	; (2f84 <PacketParser+0x12c>)
    2e74:	8b9a      	ldrh	r2, [r3, #28]
    2e76:	4b44      	ldr	r3, [pc, #272]	; (2f88 <PacketParser+0x130>)
    2e78:	811a      	strh	r2, [r3, #8]
    2e7a:	4b42      	ldr	r3, [pc, #264]	; (2f84 <PacketParser+0x12c>)
    2e7c:	8bda      	ldrh	r2, [r3, #30]
    2e7e:	4b42      	ldr	r3, [pc, #264]	; (2f88 <PacketParser+0x130>)
    2e80:	80da      	strh	r2, [r3, #6]
    2e82:	4b41      	ldr	r3, [pc, #260]	; (2f88 <PacketParser+0x130>)
    2e84:	895b      	ldrh	r3, [r3, #10]
    2e86:	2b00      	cmp	r3, #0
    2e88:	d100      	bne.n	2e8c <PacketParser+0x34>
    2e8a:	e072      	b.n	2f72 <PacketParser+0x11a>
    2e8c:	4b3d      	ldr	r3, [pc, #244]	; (2f84 <PacketParser+0x12c>)
    2e8e:	8bda      	ldrh	r2, [r3, #30]
    2e90:	4b3e      	ldr	r3, [pc, #248]	; (2f8c <PacketParser+0x134>)
    2e92:	881b      	ldrh	r3, [r3, #0]
    2e94:	429a      	cmp	r2, r3
    2e96:	d000      	beq.n	2e9a <PacketParser+0x42>
    2e98:	e06d      	b.n	2f76 <PacketParser+0x11e>
    2e9a:	4b3a      	ldr	r3, [pc, #232]	; (2f84 <PacketParser+0x12c>)
    2e9c:	8c1a      	ldrh	r2, [r3, #32]
    2e9e:	4b3b      	ldr	r3, [pc, #236]	; (2f8c <PacketParser+0x134>)
    2ea0:	885b      	ldrh	r3, [r3, #2]
    2ea2:	429a      	cmp	r2, r3
    2ea4:	d000      	beq.n	2ea8 <PacketParser+0x50>
    2ea6:	e066      	b.n	2f76 <PacketParser+0x11e>
    2ea8:	4b36      	ldr	r3, [pc, #216]	; (2f84 <PacketParser+0x12c>)
    2eaa:	0018      	movs	r0, r3
    2eac:	f7ff fcb2 	bl	2814 <CheckSum_IP>
    2eb0:	0003      	movs	r3, r0
    2eb2:	001a      	movs	r2, r3
    2eb4:	4b33      	ldr	r3, [pc, #204]	; (2f84 <PacketParser+0x12c>)
    2eb6:	8b1b      	ldrh	r3, [r3, #24]
    2eb8:	429a      	cmp	r2, r3
    2eba:	d15c      	bne.n	2f76 <PacketParser+0x11e>
    2ebc:	4b31      	ldr	r3, [pc, #196]	; (2f84 <PacketParser+0x12c>)
    2ebe:	8adb      	ldrh	r3, [r3, #22]
    2ec0:	001a      	movs	r2, r3
    2ec2:	23ff      	movs	r3, #255	; 0xff
    2ec4:	021b      	lsls	r3, r3, #8
    2ec6:	401a      	ands	r2, r3
    2ec8:	2380      	movs	r3, #128	; 0x80
    2eca:	005b      	lsls	r3, r3, #1
    2ecc:	429a      	cmp	r2, r3
    2ece:	d110      	bne.n	2ef2 <PacketParser+0x9a>
    2ed0:	4b2c      	ldr	r3, [pc, #176]	; (2f84 <PacketParser+0x12c>)
    2ed2:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ed4:	2b00      	cmp	r3, #0
    2ed6:	d105      	bne.n	2ee4 <PacketParser+0x8c>
    2ed8:	4b2d      	ldr	r3, [pc, #180]	; (2f90 <PacketParser+0x138>)
    2eda:	681b      	ldr	r3, [r3, #0]
    2edc:	1c5a      	adds	r2, r3, #1
    2ede:	4b2c      	ldr	r3, [pc, #176]	; (2f90 <PacketParser+0x138>)
    2ee0:	601a      	str	r2, [r3, #0]
    2ee2:	e048      	b.n	2f76 <PacketParser+0x11e>
    2ee4:	4b27      	ldr	r3, [pc, #156]	; (2f84 <PacketParser+0x12c>)
    2ee6:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2ee8:	2b08      	cmp	r3, #8
    2eea:	d144      	bne.n	2f76 <PacketParser+0x11e>
    2eec:	f7ff fde4 	bl	2ab8 <Answear_ICMP>
    2ef0:	e041      	b.n	2f76 <PacketParser+0x11e>
    2ef2:	4b24      	ldr	r3, [pc, #144]	; (2f84 <PacketParser+0x12c>)
    2ef4:	8adb      	ldrh	r3, [r3, #22]
    2ef6:	001a      	movs	r2, r3
    2ef8:	23ff      	movs	r3, #255	; 0xff
    2efa:	021b      	lsls	r3, r3, #8
    2efc:	401a      	ands	r2, r3
    2efe:	2388      	movs	r3, #136	; 0x88
    2f00:	015b      	lsls	r3, r3, #5
    2f02:	429a      	cmp	r2, r3
    2f04:	d137      	bne.n	2f76 <PacketParser+0x11e>
    2f06:	4b1f      	ldr	r3, [pc, #124]	; (2f84 <PacketParser+0x12c>)
    2f08:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2f0a:	021b      	lsls	r3, r3, #8
    2f0c:	b29a      	uxth	r2, r3
    2f0e:	4b1d      	ldr	r3, [pc, #116]	; (2f84 <PacketParser+0x12c>)
    2f10:	8c5b      	ldrh	r3, [r3, #34]	; 0x22
    2f12:	0a1b      	lsrs	r3, r3, #8
    2f14:	b29b      	uxth	r3, r3
    2f16:	18d3      	adds	r3, r2, r3
    2f18:	b29a      	uxth	r2, r3
    2f1a:	4b1e      	ldr	r3, [pc, #120]	; (2f94 <PacketParser+0x13c>)
    2f1c:	801a      	strh	r2, [r3, #0]
    2f1e:	4b19      	ldr	r3, [pc, #100]	; (2f84 <PacketParser+0x12c>)
    2f20:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2f22:	021b      	lsls	r3, r3, #8
    2f24:	b299      	uxth	r1, r3
    2f26:	4b17      	ldr	r3, [pc, #92]	; (2f84 <PacketParser+0x12c>)
    2f28:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
    2f2a:	0a1b      	lsrs	r3, r3, #8
    2f2c:	b29a      	uxth	r2, r3
    2f2e:	1dbb      	adds	r3, r7, #6
    2f30:	188a      	adds	r2, r1, r2
    2f32:	801a      	strh	r2, [r3, #0]
    2f34:	1dbb      	adds	r3, r7, #6
    2f36:	881b      	ldrh	r3, [r3, #0]
    2f38:	4a17      	ldr	r2, [pc, #92]	; (2f98 <PacketParser+0x140>)
    2f3a:	4293      	cmp	r3, r2
    2f3c:	d11b      	bne.n	2f76 <PacketParser+0x11e>
    2f3e:	4b17      	ldr	r3, [pc, #92]	; (2f9c <PacketParser+0x144>)
    2f40:	0018      	movs	r0, r3
    2f42:	f001 f829 	bl	3f98 <mdb_proc_adu>
    2f46:	e016      	b.n	2f76 <PacketParser+0x11e>
    2f48:	4b0e      	ldr	r3, [pc, #56]	; (2f84 <PacketParser+0x12c>)
    2f4a:	8a9a      	ldrh	r2, [r3, #20]
    2f4c:	2380      	movs	r3, #128	; 0x80
    2f4e:	005b      	lsls	r3, r3, #1
    2f50:	429a      	cmp	r2, r3
    2f52:	d112      	bne.n	2f7a <PacketParser+0x122>
    2f54:	4b0b      	ldr	r3, [pc, #44]	; (2f84 <PacketParser+0x12c>)
    2f56:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    2f58:	4b0c      	ldr	r3, [pc, #48]	; (2f8c <PacketParser+0x134>)
    2f5a:	881b      	ldrh	r3, [r3, #0]
    2f5c:	429a      	cmp	r2, r3
    2f5e:	d10c      	bne.n	2f7a <PacketParser+0x122>
    2f60:	4b08      	ldr	r3, [pc, #32]	; (2f84 <PacketParser+0x12c>)
    2f62:	8d1a      	ldrh	r2, [r3, #40]	; 0x28
    2f64:	4b09      	ldr	r3, [pc, #36]	; (2f8c <PacketParser+0x134>)
    2f66:	885b      	ldrh	r3, [r3, #2]
    2f68:	429a      	cmp	r2, r3
    2f6a:	d106      	bne.n	2f7a <PacketParser+0x122>
    2f6c:	f7ff fb2e 	bl	25cc <Answear_ARP>
    2f70:	e003      	b.n	2f7a <PacketParser+0x122>
    2f72:	46c0      	nop			; (mov r8, r8)
    2f74:	e002      	b.n	2f7c <PacketParser+0x124>
    2f76:	46c0      	nop			; (mov r8, r8)
    2f78:	e000      	b.n	2f7c <PacketParser+0x124>
    2f7a:	46c0      	nop			; (mov r8, r8)
    2f7c:	46c0      	nop			; (mov r8, r8)
    2f7e:	46bd      	mov	sp, r7
    2f80:	b002      	add	sp, #8
    2f82:	bd80      	pop	{r7, pc}
    2f84:	20004d38 	.word	0x20004d38
    2f88:	20004d1c 	.word	0x20004d1c
    2f8c:	20000010 	.word	0x20000010
    2f90:	20004d34 	.word	0x20004d34
    2f94:	20005318 	.word	0x20005318
    2f98:	00001234 	.word	0x00001234
    2f9c:	20004d62 	.word	0x20004d62

00002fa0 <threadPacketParser>:
    2fa0:	b580      	push	{r7, lr}
    2fa2:	b086      	sub	sp, #24
    2fa4:	af00      	add	r7, sp, #0
    2fa6:	6078      	str	r0, [r7, #4]
    2fa8:	4b31      	ldr	r3, [pc, #196]	; (3070 <threadPacketParser+0xd0>)
    2faa:	0018      	movs	r0, r3
    2fac:	f003 fc90 	bl	68d0 <osMutexCreate>
    2fb0:	0002      	movs	r2, r0
    2fb2:	4b30      	ldr	r3, [pc, #192]	; (3074 <threadPacketParser+0xd4>)
    2fb4:	601a      	str	r2, [r3, #0]
    2fb6:	4b30      	ldr	r3, [pc, #192]	; (3078 <threadPacketParser+0xd8>)
    2fb8:	0018      	movs	r0, r3
    2fba:	f003 fc89 	bl	68d0 <osMutexCreate>
    2fbe:	0002      	movs	r2, r0
    2fc0:	4b2e      	ldr	r3, [pc, #184]	; (307c <threadPacketParser+0xdc>)
    2fc2:	601a      	str	r2, [r3, #0]
    2fc4:	230c      	movs	r3, #12
    2fc6:	18f8      	adds	r0, r7, r3
    2fc8:	23fa      	movs	r3, #250	; 0xfa
    2fca:	005b      	lsls	r3, r3, #1
    2fcc:	001a      	movs	r2, r3
    2fce:	2100      	movs	r1, #0
    2fd0:	f003 fbf0 	bl	67b4 <osSignalWait>
    2fd4:	230c      	movs	r3, #12
    2fd6:	18fb      	adds	r3, r7, r3
    2fd8:	681b      	ldr	r3, [r3, #0]
    2fda:	2b08      	cmp	r3, #8
    2fdc:	d120      	bne.n	3020 <threadPacketParser+0x80>
    2fde:	230c      	movs	r3, #12
    2fe0:	18fb      	adds	r3, r7, r3
    2fe2:	685b      	ldr	r3, [r3, #4]
    2fe4:	2b01      	cmp	r3, #1
    2fe6:	d142      	bne.n	306e <threadPacketParser+0xce>
    2fe8:	4b25      	ldr	r3, [pc, #148]	; (3080 <threadPacketParser+0xe0>)
    2fea:	4a25      	ldr	r2, [pc, #148]	; (3080 <threadPacketParser+0xe0>)
    2fec:	6812      	ldr	r2, [r2, #0]
    2fee:	2180      	movs	r1, #128	; 0x80
    2ff0:	404a      	eors	r2, r1
    2ff2:	601a      	str	r2, [r3, #0]
    2ff4:	e00a      	b.n	300c <threadPacketParser+0x6c>
    2ff6:	4b23      	ldr	r3, [pc, #140]	; (3084 <threadPacketParser+0xe4>)
    2ff8:	0018      	movs	r0, r3
    2ffa:	f7ff f8bd 	bl	2178 <ReadPacket>
    2ffe:	0003      	movs	r3, r0
    3000:	b299      	uxth	r1, r3
    3002:	4b20      	ldr	r3, [pc, #128]	; (3084 <threadPacketParser+0xe4>)
    3004:	4a20      	ldr	r2, [pc, #128]	; (3088 <threadPacketParser+0xe8>)
    3006:	5299      	strh	r1, [r3, r2]
    3008:	f7ff ff26 	bl	2e58 <PacketParser>
    300c:	23c0      	movs	r3, #192	; 0xc0
    300e:	059b      	lsls	r3, r3, #22
    3010:	8e1b      	ldrh	r3, [r3, #48]	; 0x30
    3012:	b29b      	uxth	r3, r3
    3014:	001a      	movs	r2, r3
    3016:	23e0      	movs	r3, #224	; 0xe0
    3018:	4013      	ands	r3, r2
    301a:	d1ec      	bne.n	2ff6 <threadPacketParser+0x56>
    301c:	46c0      	nop			; (mov r8, r8)
    301e:	e026      	b.n	306e <threadPacketParser+0xce>
    3020:	230c      	movs	r3, #12
    3022:	18fb      	adds	r3, r7, r3
    3024:	681b      	ldr	r3, [r3, #0]
    3026:	2b40      	cmp	r3, #64	; 0x40
    3028:	d1cc      	bne.n	2fc4 <threadPacketParser+0x24>
    302a:	23c0      	movs	r3, #192	; 0xc0
    302c:	059b      	lsls	r3, r3, #22
    302e:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3030:	b29b      	uxth	r3, r3
    3032:	001a      	movs	r2, r3
    3034:	2302      	movs	r3, #2
    3036:	4013      	ands	r3, r2
    3038:	d104      	bne.n	3044 <threadPacketParser+0xa4>
    303a:	4b14      	ldr	r3, [pc, #80]	; (308c <threadPacketParser+0xec>)
    303c:	2280      	movs	r2, #128	; 0x80
    303e:	0212      	lsls	r2, r2, #8
    3040:	621a      	str	r2, [r3, #32]
    3042:	e003      	b.n	304c <threadPacketParser+0xac>
    3044:	4b11      	ldr	r3, [pc, #68]	; (308c <threadPacketParser+0xec>)
    3046:	2280      	movs	r2, #128	; 0x80
    3048:	0212      	lsls	r2, r2, #8
    304a:	625a      	str	r2, [r3, #36]	; 0x24
    304c:	23c0      	movs	r3, #192	; 0xc0
    304e:	059b      	lsls	r3, r3, #22
    3050:	8edb      	ldrh	r3, [r3, #54]	; 0x36
    3052:	b29b      	uxth	r3, r3
    3054:	001a      	movs	r2, r3
    3056:	2308      	movs	r3, #8
    3058:	4013      	ands	r3, r2
    305a:	d104      	bne.n	3066 <threadPacketParser+0xc6>
    305c:	4b0b      	ldr	r3, [pc, #44]	; (308c <threadPacketParser+0xec>)
    305e:	2280      	movs	r2, #128	; 0x80
    3060:	01d2      	lsls	r2, r2, #7
    3062:	621a      	str	r2, [r3, #32]
    3064:	e7ae      	b.n	2fc4 <threadPacketParser+0x24>
    3066:	4b09      	ldr	r3, [pc, #36]	; (308c <threadPacketParser+0xec>)
    3068:	2280      	movs	r2, #128	; 0x80
    306a:	01d2      	lsls	r2, r2, #7
    306c:	625a      	str	r2, [r3, #36]	; 0x24
    306e:	e7a9      	b.n	2fc4 <threadPacketParser+0x24>
    3070:	00008b6c 	.word	0x00008b6c
    3074:	2000532c 	.word	0x2000532c
    3078:	00008b70 	.word	0x00008b70
    307c:	20005340 	.word	0x20005340
    3080:	400c0000 	.word	0x400c0000
    3084:	20004d38 	.word	0x20004d38
    3088:	000005dc 	.word	0x000005dc
    308c:	400b0000 	.word	0x400b0000

00003090 <crc32>:
    3090:	b580      	push	{r7, lr}
    3092:	b084      	sub	sp, #16
    3094:	af00      	add	r7, sp, #0
    3096:	6078      	str	r0, [r7, #4]
    3098:	6039      	str	r1, [r7, #0]
    309a:	2301      	movs	r3, #1
    309c:	425b      	negs	r3, r3
    309e:	60bb      	str	r3, [r7, #8]
    30a0:	2300      	movs	r3, #0
    30a2:	60fb      	str	r3, [r7, #12]
    30a4:	e012      	b.n	30cc <crc32+0x3c>
    30a6:	68bb      	ldr	r3, [r7, #8]
    30a8:	0a1a      	lsrs	r2, r3, #8
    30aa:	68fb      	ldr	r3, [r7, #12]
    30ac:	6879      	ldr	r1, [r7, #4]
    30ae:	18cb      	adds	r3, r1, r3
    30b0:	781b      	ldrb	r3, [r3, #0]
    30b2:	0019      	movs	r1, r3
    30b4:	68bb      	ldr	r3, [r7, #8]
    30b6:	404b      	eors	r3, r1
    30b8:	21ff      	movs	r1, #255	; 0xff
    30ba:	4019      	ands	r1, r3
    30bc:	4b08      	ldr	r3, [pc, #32]	; (30e0 <crc32+0x50>)
    30be:	0089      	lsls	r1, r1, #2
    30c0:	58cb      	ldr	r3, [r1, r3]
    30c2:	4053      	eors	r3, r2
    30c4:	60bb      	str	r3, [r7, #8]
    30c6:	68fb      	ldr	r3, [r7, #12]
    30c8:	3301      	adds	r3, #1
    30ca:	60fb      	str	r3, [r7, #12]
    30cc:	68fa      	ldr	r2, [r7, #12]
    30ce:	683b      	ldr	r3, [r7, #0]
    30d0:	429a      	cmp	r2, r3
    30d2:	d3e8      	bcc.n	30a6 <crc32+0x16>
    30d4:	68bb      	ldr	r3, [r7, #8]
    30d6:	0018      	movs	r0, r3
    30d8:	46bd      	mov	sp, r7
    30da:	b004      	add	sp, #16
    30dc:	bd80      	pop	{r7, pc}
    30de:	46c0      	nop			; (mov r8, r8)
    30e0:	00008b74 	.word	0x00008b74

000030e4 <crc16>:
    30e4:	b580      	push	{r7, lr}
    30e6:	b086      	sub	sp, #24
    30e8:	af00      	add	r7, sp, #0
    30ea:	6078      	str	r0, [r7, #4]
    30ec:	6039      	str	r1, [r7, #0]
    30ee:	2317      	movs	r3, #23
    30f0:	18fb      	adds	r3, r7, r3
    30f2:	22ff      	movs	r2, #255	; 0xff
    30f4:	701a      	strb	r2, [r3, #0]
    30f6:	2316      	movs	r3, #22
    30f8:	18fb      	adds	r3, r7, r3
    30fa:	22ff      	movs	r2, #255	; 0xff
    30fc:	701a      	strb	r2, [r3, #0]
    30fe:	2300      	movs	r3, #0
    3100:	613b      	str	r3, [r7, #16]
    3102:	e01e      	b.n	3142 <crc16+0x5e>
    3104:	693b      	ldr	r3, [r7, #16]
    3106:	687a      	ldr	r2, [r7, #4]
    3108:	18d3      	adds	r3, r2, r3
    310a:	781a      	ldrb	r2, [r3, #0]
    310c:	2317      	movs	r3, #23
    310e:	18fb      	adds	r3, r7, r3
    3110:	781b      	ldrb	r3, [r3, #0]
    3112:	4053      	eors	r3, r2
    3114:	b2db      	uxtb	r3, r3
    3116:	60fb      	str	r3, [r7, #12]
    3118:	4a14      	ldr	r2, [pc, #80]	; (316c <crc16+0x88>)
    311a:	68fb      	ldr	r3, [r7, #12]
    311c:	18d3      	adds	r3, r2, r3
    311e:	7819      	ldrb	r1, [r3, #0]
    3120:	2317      	movs	r3, #23
    3122:	18fb      	adds	r3, r7, r3
    3124:	2216      	movs	r2, #22
    3126:	18ba      	adds	r2, r7, r2
    3128:	7812      	ldrb	r2, [r2, #0]
    312a:	404a      	eors	r2, r1
    312c:	701a      	strb	r2, [r3, #0]
    312e:	2316      	movs	r3, #22
    3130:	18fb      	adds	r3, r7, r3
    3132:	490f      	ldr	r1, [pc, #60]	; (3170 <crc16+0x8c>)
    3134:	68fa      	ldr	r2, [r7, #12]
    3136:	188a      	adds	r2, r1, r2
    3138:	7812      	ldrb	r2, [r2, #0]
    313a:	701a      	strb	r2, [r3, #0]
    313c:	693b      	ldr	r3, [r7, #16]
    313e:	3301      	adds	r3, #1
    3140:	613b      	str	r3, [r7, #16]
    3142:	693a      	ldr	r2, [r7, #16]
    3144:	683b      	ldr	r3, [r7, #0]
    3146:	429a      	cmp	r2, r3
    3148:	dbdc      	blt.n	3104 <crc16+0x20>
    314a:	2316      	movs	r3, #22
    314c:	18fb      	adds	r3, r7, r3
    314e:	781b      	ldrb	r3, [r3, #0]
    3150:	021b      	lsls	r3, r3, #8
    3152:	b21a      	sxth	r2, r3
    3154:	2317      	movs	r3, #23
    3156:	18fb      	adds	r3, r7, r3
    3158:	781b      	ldrb	r3, [r3, #0]
    315a:	b21b      	sxth	r3, r3
    315c:	4313      	orrs	r3, r2
    315e:	b21b      	sxth	r3, r3
    3160:	b29b      	uxth	r3, r3
    3162:	0018      	movs	r0, r3
    3164:	46bd      	mov	sp, r7
    3166:	b006      	add	sp, #24
    3168:	bd80      	pop	{r7, pc}
    316a:	46c0      	nop			; (mov r8, r8)
    316c:	00008f74 	.word	0x00008f74
    3170:	00009074 	.word	0x00009074

00003174 <eeprom_on>:
    3174:	b580      	push	{r7, lr}
    3176:	af00      	add	r7, sp, #0
    3178:	b672      	cpsid	i
    317a:	4b04      	ldr	r3, [pc, #16]	; (318c <eeprom_on+0x18>)
    317c:	4a03      	ldr	r2, [pc, #12]	; (318c <eeprom_on+0x18>)
    317e:	69d2      	ldr	r2, [r2, #28]
    3180:	2108      	movs	r1, #8
    3182:	430a      	orrs	r2, r1
    3184:	61da      	str	r2, [r3, #28]
    3186:	46c0      	nop			; (mov r8, r8)
    3188:	46bd      	mov	sp, r7
    318a:	bd80      	pop	{r7, pc}
    318c:	40020000 	.word	0x40020000

00003190 <eeprom_off>:
    3190:	b580      	push	{r7, lr}
    3192:	af00      	add	r7, sp, #0
    3194:	b662      	cpsie	i
    3196:	4b04      	ldr	r3, [pc, #16]	; (31a8 <eeprom_off+0x18>)
    3198:	4a03      	ldr	r2, [pc, #12]	; (31a8 <eeprom_off+0x18>)
    319a:	69d2      	ldr	r2, [r2, #28]
    319c:	2108      	movs	r1, #8
    319e:	438a      	bics	r2, r1
    31a0:	61da      	str	r2, [r3, #28]
    31a2:	46c0      	nop			; (mov r8, r8)
    31a4:	46bd      	mov	sp, r7
    31a6:	bd80      	pop	{r7, pc}
    31a8:	40020000 	.word	0x40020000

000031ac <par_default>:
    31ac:	b580      	push	{r7, lr}
    31ae:	af00      	add	r7, sp, #0
    31b0:	4b13      	ldr	r3, [pc, #76]	; (3200 <par_default+0x54>)
    31b2:	0018      	movs	r0, r3
    31b4:	2314      	movs	r3, #20
    31b6:	001a      	movs	r2, r3
    31b8:	2100      	movs	r1, #0
    31ba:	f001 ff1b 	bl	4ff4 <memset>
    31be:	4b10      	ldr	r3, [pc, #64]	; (3200 <par_default+0x54>)
    31c0:	22bc      	movs	r2, #188	; 0xbc
    31c2:	701a      	strb	r2, [r3, #0]
    31c4:	4b0e      	ldr	r3, [pc, #56]	; (3200 <par_default+0x54>)
    31c6:	229a      	movs	r2, #154	; 0x9a
    31c8:	705a      	strb	r2, [r3, #1]
    31ca:	4b0d      	ldr	r3, [pc, #52]	; (3200 <par_default+0x54>)
    31cc:	2278      	movs	r2, #120	; 0x78
    31ce:	709a      	strb	r2, [r3, #2]
    31d0:	4b0b      	ldr	r3, [pc, #44]	; (3200 <par_default+0x54>)
    31d2:	2256      	movs	r2, #86	; 0x56
    31d4:	70da      	strb	r2, [r3, #3]
    31d6:	4b0a      	ldr	r3, [pc, #40]	; (3200 <par_default+0x54>)
    31d8:	2234      	movs	r2, #52	; 0x34
    31da:	711a      	strb	r2, [r3, #4]
    31dc:	4b08      	ldr	r3, [pc, #32]	; (3200 <par_default+0x54>)
    31de:	2212      	movs	r2, #18
    31e0:	715a      	strb	r2, [r3, #5]
    31e2:	4b07      	ldr	r3, [pc, #28]	; (3200 <par_default+0x54>)
    31e4:	2201      	movs	r2, #1
    31e6:	719a      	strb	r2, [r3, #6]
    31e8:	4b05      	ldr	r3, [pc, #20]	; (3200 <par_default+0x54>)
    31ea:	220a      	movs	r2, #10
    31ec:	725a      	strb	r2, [r3, #9]
    31ee:	4b04      	ldr	r3, [pc, #16]	; (3200 <par_default+0x54>)
    31f0:	2202      	movs	r2, #2
    31f2:	729a      	strb	r2, [r3, #10]
    31f4:	4b02      	ldr	r3, [pc, #8]	; (3200 <par_default+0x54>)
    31f6:	220a      	movs	r2, #10
    31f8:	735a      	strb	r2, [r3, #13]
    31fa:	46c0      	nop			; (mov r8, r8)
    31fc:	46bd      	mov	sp, r7
    31fe:	bd80      	pop	{r7, pc}
    3200:	20005b60 	.word	0x20005b60

00003204 <par_save>:
    3204:	b580      	push	{r7, lr}
    3206:	b084      	sub	sp, #16
    3208:	af00      	add	r7, sp, #0
    320a:	f7ff ffb3 	bl	3174 <eeprom_on>
    320e:	f005 fbf3 	bl	89f8 <__eeprom_erase_page_veneer>
    3212:	1e03      	subs	r3, r0, #0
    3214:	d01b      	beq.n	324e <par_save+0x4a>
    3216:	4b11      	ldr	r3, [pc, #68]	; (325c <par_save+0x58>)
    3218:	60bb      	str	r3, [r7, #8]
    321a:	2305      	movs	r3, #5
    321c:	603b      	str	r3, [r7, #0]
    321e:	2300      	movs	r3, #0
    3220:	607b      	str	r3, [r7, #4]
    3222:	2300      	movs	r3, #0
    3224:	60fb      	str	r3, [r7, #12]
    3226:	e00e      	b.n	3246 <par_save+0x42>
    3228:	68bb      	ldr	r3, [r7, #8]
    322a:	1d1a      	adds	r2, r3, #4
    322c:	60ba      	str	r2, [r7, #8]
    322e:	681a      	ldr	r2, [r3, #0]
    3230:	687b      	ldr	r3, [r7, #4]
    3232:	0011      	movs	r1, r2
    3234:	0018      	movs	r0, r3
    3236:	f005 fbef 	bl	8a18 <__eeprom_program_word_veneer>
    323a:	687b      	ldr	r3, [r7, #4]
    323c:	3304      	adds	r3, #4
    323e:	607b      	str	r3, [r7, #4]
    3240:	68fb      	ldr	r3, [r7, #12]
    3242:	3301      	adds	r3, #1
    3244:	60fb      	str	r3, [r7, #12]
    3246:	68fa      	ldr	r2, [r7, #12]
    3248:	683b      	ldr	r3, [r7, #0]
    324a:	429a      	cmp	r2, r3
    324c:	dbec      	blt.n	3228 <par_save+0x24>
    324e:	f7ff ff9f 	bl	3190 <eeprom_off>
    3252:	46c0      	nop			; (mov r8, r8)
    3254:	46bd      	mov	sp, r7
    3256:	b004      	add	sp, #16
    3258:	bd80      	pop	{r7, pc}
    325a:	46c0      	nop			; (mov r8, r8)
    325c:	20005b60 	.word	0x20005b60

00003260 <par_verify>:
    3260:	b590      	push	{r4, r7, lr}
    3262:	b087      	sub	sp, #28
    3264:	af00      	add	r7, sp, #0
    3266:	2301      	movs	r3, #1
    3268:	617b      	str	r3, [r7, #20]
    326a:	f7ff ff83 	bl	3174 <eeprom_on>
    326e:	4b13      	ldr	r3, [pc, #76]	; (32bc <par_verify+0x5c>)
    3270:	60fb      	str	r3, [r7, #12]
    3272:	2305      	movs	r3, #5
    3274:	607b      	str	r3, [r7, #4]
    3276:	2300      	movs	r3, #0
    3278:	60bb      	str	r3, [r7, #8]
    327a:	2300      	movs	r3, #0
    327c:	613b      	str	r3, [r7, #16]
    327e:	e012      	b.n	32a6 <par_verify+0x46>
    3280:	68fb      	ldr	r3, [r7, #12]
    3282:	1d1a      	adds	r2, r3, #4
    3284:	60fa      	str	r2, [r7, #12]
    3286:	681c      	ldr	r4, [r3, #0]
    3288:	68bb      	ldr	r3, [r7, #8]
    328a:	0018      	movs	r0, r3
    328c:	f005 fbbc 	bl	8a08 <__eeprom_read_word_veneer>
    3290:	0003      	movs	r3, r0
    3292:	429c      	cmp	r4, r3
    3294:	d001      	beq.n	329a <par_verify+0x3a>
    3296:	2300      	movs	r3, #0
    3298:	617b      	str	r3, [r7, #20]
    329a:	68bb      	ldr	r3, [r7, #8]
    329c:	3304      	adds	r3, #4
    329e:	60bb      	str	r3, [r7, #8]
    32a0:	693b      	ldr	r3, [r7, #16]
    32a2:	3301      	adds	r3, #1
    32a4:	613b      	str	r3, [r7, #16]
    32a6:	693a      	ldr	r2, [r7, #16]
    32a8:	687b      	ldr	r3, [r7, #4]
    32aa:	429a      	cmp	r2, r3
    32ac:	dbe8      	blt.n	3280 <par_verify+0x20>
    32ae:	f7ff ff6f 	bl	3190 <eeprom_off>
    32b2:	697b      	ldr	r3, [r7, #20]
    32b4:	0018      	movs	r0, r3
    32b6:	46bd      	mov	sp, r7
    32b8:	b007      	add	sp, #28
    32ba:	bd90      	pop	{r4, r7, pc}
    32bc:	20005b60 	.word	0x20005b60

000032c0 <par_read>:
    32c0:	b590      	push	{r4, r7, lr}
    32c2:	b085      	sub	sp, #20
    32c4:	af00      	add	r7, sp, #0
    32c6:	f7ff ff55 	bl	3174 <eeprom_on>
    32ca:	4b16      	ldr	r3, [pc, #88]	; (3324 <par_read+0x64>)
    32cc:	60bb      	str	r3, [r7, #8]
    32ce:	2305      	movs	r3, #5
    32d0:	603b      	str	r3, [r7, #0]
    32d2:	2300      	movs	r3, #0
    32d4:	607b      	str	r3, [r7, #4]
    32d6:	2300      	movs	r3, #0
    32d8:	60fb      	str	r3, [r7, #12]
    32da:	e00e      	b.n	32fa <par_read+0x3a>
    32dc:	68bc      	ldr	r4, [r7, #8]
    32de:	1d23      	adds	r3, r4, #4
    32e0:	60bb      	str	r3, [r7, #8]
    32e2:	687b      	ldr	r3, [r7, #4]
    32e4:	0018      	movs	r0, r3
    32e6:	f005 fb8f 	bl	8a08 <__eeprom_read_word_veneer>
    32ea:	0003      	movs	r3, r0
    32ec:	6023      	str	r3, [r4, #0]
    32ee:	687b      	ldr	r3, [r7, #4]
    32f0:	3304      	adds	r3, #4
    32f2:	607b      	str	r3, [r7, #4]
    32f4:	68fb      	ldr	r3, [r7, #12]
    32f6:	3301      	adds	r3, #1
    32f8:	60fb      	str	r3, [r7, #12]
    32fa:	68fa      	ldr	r2, [r7, #12]
    32fc:	683b      	ldr	r3, [r7, #0]
    32fe:	429a      	cmp	r2, r3
    3300:	dbec      	blt.n	32dc <par_read+0x1c>
    3302:	f7ff ff45 	bl	3190 <eeprom_off>
    3306:	4b07      	ldr	r3, [pc, #28]	; (3324 <par_read+0x64>)
    3308:	2114      	movs	r1, #20
    330a:	0018      	movs	r0, r3
    330c:	f7ff fec0 	bl	3090 <crc32>
    3310:	1e03      	subs	r3, r0, #0
    3312:	d001      	beq.n	3318 <par_read+0x58>
    3314:	2300      	movs	r3, #0
    3316:	e000      	b.n	331a <par_read+0x5a>
    3318:	2301      	movs	r3, #1
    331a:	0018      	movs	r0, r3
    331c:	46bd      	mov	sp, r7
    331e:	b005      	add	sp, #20
    3320:	bd90      	pop	{r4, r7, pc}
    3322:	46c0      	nop			; (mov r8, r8)
    3324:	20005b60 	.word	0x20005b60

00003328 <par_update>:
    3328:	b580      	push	{r7, lr}
    332a:	b088      	sub	sp, #32
    332c:	af00      	add	r7, sp, #0
    332e:	6078      	str	r0, [r7, #4]
    3330:	687b      	ldr	r3, [r7, #4]
    3332:	1c5a      	adds	r2, r3, #1
    3334:	607a      	str	r2, [r7, #4]
    3336:	781b      	ldrb	r3, [r3, #0]
    3338:	617b      	str	r3, [r7, #20]
    333a:	687b      	ldr	r3, [r7, #4]
    333c:	1c5a      	adds	r2, r3, #1
    333e:	607a      	str	r2, [r7, #4]
    3340:	781b      	ldrb	r3, [r3, #0]
    3342:	613b      	str	r3, [r7, #16]
    3344:	687b      	ldr	r3, [r7, #4]
    3346:	1c5a      	adds	r2, r3, #1
    3348:	607a      	str	r2, [r7, #4]
    334a:	781b      	ldrb	r3, [r3, #0]
    334c:	60fb      	str	r3, [r7, #12]
    334e:	687b      	ldr	r3, [r7, #4]
    3350:	1c5a      	adds	r2, r3, #1
    3352:	607a      	str	r2, [r7, #4]
    3354:	781b      	ldrb	r3, [r3, #0]
    3356:	021b      	lsls	r3, r3, #8
    3358:	001a      	movs	r2, r3
    335a:	68fb      	ldr	r3, [r7, #12]
    335c:	189b      	adds	r3, r3, r2
    335e:	60fb      	str	r3, [r7, #12]
    3360:	68fb      	ldr	r3, [r7, #12]
    3362:	2201      	movs	r2, #1
    3364:	4013      	ands	r3, r2
    3366:	60bb      	str	r3, [r7, #8]
    3368:	697a      	ldr	r2, [r7, #20]
    336a:	693b      	ldr	r3, [r7, #16]
    336c:	18d3      	adds	r3, r2, r3
    336e:	2b14      	cmp	r3, #20
    3370:	d82c      	bhi.n	33cc <par_update+0xa4>
    3372:	68bb      	ldr	r3, [r7, #8]
    3374:	2b00      	cmp	r3, #0
    3376:	d126      	bne.n	33c6 <par_update+0x9e>
    3378:	697a      	ldr	r2, [r7, #20]
    337a:	4b16      	ldr	r3, [pc, #88]	; (33d4 <par_update+0xac>)
    337c:	18d3      	adds	r3, r2, r3
    337e:	61bb      	str	r3, [r7, #24]
    3380:	2300      	movs	r3, #0
    3382:	61fb      	str	r3, [r7, #28]
    3384:	e00a      	b.n	339c <par_update+0x74>
    3386:	69bb      	ldr	r3, [r7, #24]
    3388:	1c5a      	adds	r2, r3, #1
    338a:	61ba      	str	r2, [r7, #24]
    338c:	687a      	ldr	r2, [r7, #4]
    338e:	1c51      	adds	r1, r2, #1
    3390:	6079      	str	r1, [r7, #4]
    3392:	7812      	ldrb	r2, [r2, #0]
    3394:	701a      	strb	r2, [r3, #0]
    3396:	69fb      	ldr	r3, [r7, #28]
    3398:	3301      	adds	r3, #1
    339a:	61fb      	str	r3, [r7, #28]
    339c:	69fa      	ldr	r2, [r7, #28]
    339e:	693b      	ldr	r3, [r7, #16]
    33a0:	429a      	cmp	r2, r3
    33a2:	d3f0      	bcc.n	3386 <par_update+0x5e>
    33a4:	4b0b      	ldr	r3, [pc, #44]	; (33d4 <par_update+0xac>)
    33a6:	2110      	movs	r1, #16
    33a8:	0018      	movs	r0, r3
    33aa:	f7ff fe71 	bl	3090 <crc32>
    33ae:	0002      	movs	r2, r0
    33b0:	4b08      	ldr	r3, [pc, #32]	; (33d4 <par_update+0xac>)
    33b2:	611a      	str	r2, [r3, #16]
    33b4:	f7ff ff26 	bl	3204 <par_save>
    33b8:	f7ff ff52 	bl	3260 <par_verify>
    33bc:	1e03      	subs	r3, r0, #0
    33be:	d106      	bne.n	33ce <par_update+0xa6>
    33c0:	f7ff fef4 	bl	31ac <par_default>
    33c4:	e003      	b.n	33ce <par_update+0xa6>
    33c6:	f7ff ff7b 	bl	32c0 <par_read>
    33ca:	e000      	b.n	33ce <par_update+0xa6>
    33cc:	46c0      	nop			; (mov r8, r8)
    33ce:	46bd      	mov	sp, r7
    33d0:	b008      	add	sp, #32
    33d2:	bd80      	pop	{r7, pc}
    33d4:	20005b60 	.word	0x20005b60

000033d8 <par_mac>:
    33d8:	b580      	push	{r7, lr}
    33da:	b084      	sub	sp, #16
    33dc:	af00      	add	r7, sp, #0
    33de:	6078      	str	r0, [r7, #4]
    33e0:	4b0b      	ldr	r3, [pc, #44]	; (3410 <par_mac+0x38>)
    33e2:	60fb      	str	r3, [r7, #12]
    33e4:	2300      	movs	r3, #0
    33e6:	60bb      	str	r3, [r7, #8]
    33e8:	e00a      	b.n	3400 <par_mac+0x28>
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
    3402:	2b05      	cmp	r3, #5
    3404:	ddf1      	ble.n	33ea <par_mac+0x12>
    3406:	46c0      	nop			; (mov r8, r8)
    3408:	46bd      	mov	sp, r7
    340a:	b004      	add	sp, #16
    340c:	bd80      	pop	{r7, pc}
    340e:	46c0      	nop			; (mov r8, r8)
    3410:	20005b65 	.word	0x20005b65

00003414 <par_iploc>:
    3414:	b580      	push	{r7, lr}
    3416:	b084      	sub	sp, #16
    3418:	af00      	add	r7, sp, #0
    341a:	6078      	str	r0, [r7, #4]
    341c:	4b0b      	ldr	r3, [pc, #44]	; (344c <par_iploc+0x38>)
    341e:	60fb      	str	r3, [r7, #12]
    3420:	2300      	movs	r3, #0
    3422:	60bb      	str	r3, [r7, #8]
    3424:	e00a      	b.n	343c <par_iploc+0x28>
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
    3440:	ddf1      	ble.n	3426 <par_iploc+0x12>
    3442:	46c0      	nop			; (mov r8, r8)
    3444:	46bd      	mov	sp, r7
    3446:	b004      	add	sp, #16
    3448:	bd80      	pop	{r7, pc}
    344a:	46c0      	nop			; (mov r8, r8)
    344c:	20005b69 	.word	0x20005b69

00003450 <par_iprem>:
    3450:	b580      	push	{r7, lr}
    3452:	b084      	sub	sp, #16
    3454:	af00      	add	r7, sp, #0
    3456:	6078      	str	r0, [r7, #4]
    3458:	4b0b      	ldr	r3, [pc, #44]	; (3488 <par_iprem+0x38>)
    345a:	60fb      	str	r3, [r7, #12]
    345c:	2300      	movs	r3, #0
    345e:	60bb      	str	r3, [r7, #8]
    3460:	e00a      	b.n	3478 <par_iprem+0x28>
    3462:	687b      	ldr	r3, [r7, #4]
    3464:	1c5a      	adds	r2, r3, #1
    3466:	607a      	str	r2, [r7, #4]
    3468:	68fa      	ldr	r2, [r7, #12]
    346a:	1e51      	subs	r1, r2, #1
    346c:	60f9      	str	r1, [r7, #12]
    346e:	7812      	ldrb	r2, [r2, #0]
    3470:	701a      	strb	r2, [r3, #0]
    3472:	68bb      	ldr	r3, [r7, #8]
    3474:	3301      	adds	r3, #1
    3476:	60bb      	str	r3, [r7, #8]
    3478:	68bb      	ldr	r3, [r7, #8]
    347a:	2b03      	cmp	r3, #3
    347c:	ddf1      	ble.n	3462 <par_iprem+0x12>
    347e:	46c0      	nop			; (mov r8, r8)
    3480:	46bd      	mov	sp, r7
    3482:	b004      	add	sp, #16
    3484:	bd80      	pop	{r7, pc}
    3486:	46c0      	nop			; (mov r8, r8)
    3488:	20005b6d 	.word	0x20005b6d

0000348c <mdb_fifo_read>:
    348c:	b580      	push	{r7, lr}
    348e:	b086      	sub	sp, #24
    3490:	af00      	add	r7, sp, #0
    3492:	6078      	str	r0, [r7, #4]
    3494:	6039      	str	r1, [r7, #0]
    3496:	4b1f      	ldr	r3, [pc, #124]	; (3514 <mdb_fifo_read+0x88>)
    3498:	681a      	ldr	r2, [r3, #0]
    349a:	2301      	movs	r3, #1
    349c:	425b      	negs	r3, r3
    349e:	0019      	movs	r1, r3
    34a0:	0010      	movs	r0, r2
    34a2:	f003 fa3b 	bl	691c <osMutexWait>
    34a6:	4b1c      	ldr	r3, [pc, #112]	; (3518 <mdb_fifo_read+0x8c>)
    34a8:	681a      	ldr	r2, [r3, #0]
    34aa:	4b1c      	ldr	r3, [pc, #112]	; (351c <mdb_fifo_read+0x90>)
    34ac:	681b      	ldr	r3, [r3, #0]
    34ae:	1ad3      	subs	r3, r2, r3
    34b0:	05db      	lsls	r3, r3, #23
    34b2:	0ddb      	lsrs	r3, r3, #23
    34b4:	613b      	str	r3, [r7, #16]
    34b6:	693b      	ldr	r3, [r7, #16]
    34b8:	2280      	movs	r2, #128	; 0x80
    34ba:	0092      	lsls	r2, r2, #2
    34bc:	1ad3      	subs	r3, r2, r3
    34be:	60fb      	str	r3, [r7, #12]
    34c0:	683a      	ldr	r2, [r7, #0]
    34c2:	693b      	ldr	r3, [r7, #16]
    34c4:	429a      	cmp	r2, r3
    34c6:	d819      	bhi.n	34fc <mdb_fifo_read+0x70>
    34c8:	2300      	movs	r3, #0
    34ca:	617b      	str	r3, [r7, #20]
    34cc:	e011      	b.n	34f2 <mdb_fifo_read+0x66>
    34ce:	687b      	ldr	r3, [r7, #4]
    34d0:	1c5a      	adds	r2, r3, #1
    34d2:	607a      	str	r2, [r7, #4]
    34d4:	4a11      	ldr	r2, [pc, #68]	; (351c <mdb_fifo_read+0x90>)
    34d6:	6812      	ldr	r2, [r2, #0]
    34d8:	4911      	ldr	r1, [pc, #68]	; (3520 <mdb_fifo_read+0x94>)
    34da:	5c8a      	ldrb	r2, [r1, r2]
    34dc:	701a      	strb	r2, [r3, #0]
    34de:	4b0f      	ldr	r3, [pc, #60]	; (351c <mdb_fifo_read+0x90>)
    34e0:	681b      	ldr	r3, [r3, #0]
    34e2:	3301      	adds	r3, #1
    34e4:	05db      	lsls	r3, r3, #23
    34e6:	0dda      	lsrs	r2, r3, #23
    34e8:	4b0c      	ldr	r3, [pc, #48]	; (351c <mdb_fifo_read+0x90>)
    34ea:	601a      	str	r2, [r3, #0]
    34ec:	697b      	ldr	r3, [r7, #20]
    34ee:	3301      	adds	r3, #1
    34f0:	617b      	str	r3, [r7, #20]
    34f2:	697a      	ldr	r2, [r7, #20]
    34f4:	683b      	ldr	r3, [r7, #0]
    34f6:	429a      	cmp	r2, r3
    34f8:	dbe9      	blt.n	34ce <mdb_fifo_read+0x42>
    34fa:	e001      	b.n	3500 <mdb_fifo_read+0x74>
    34fc:	2300      	movs	r3, #0
    34fe:	603b      	str	r3, [r7, #0]
    3500:	4b04      	ldr	r3, [pc, #16]	; (3514 <mdb_fifo_read+0x88>)
    3502:	681b      	ldr	r3, [r3, #0]
    3504:	0018      	movs	r0, r3
    3506:	f003 fa19 	bl	693c <osMutexRelease>
    350a:	683b      	ldr	r3, [r7, #0]
    350c:	0018      	movs	r0, r3
    350e:	46bd      	mov	sp, r7
    3510:	b006      	add	sp, #24
    3512:	bd80      	pop	{r7, pc}
    3514:	20000888 	.word	0x20000888
    3518:	20005d74 	.word	0x20005d74
    351c:	20005d78 	.word	0x20005d78
    3520:	20005b74 	.word	0x20005b74

00003524 <mdb_fifo_write>:
    3524:	b580      	push	{r7, lr}
    3526:	b086      	sub	sp, #24
    3528:	af00      	add	r7, sp, #0
    352a:	6078      	str	r0, [r7, #4]
    352c:	6039      	str	r1, [r7, #0]
    352e:	4b1c      	ldr	r3, [pc, #112]	; (35a0 <mdb_fifo_write+0x7c>)
    3530:	681a      	ldr	r2, [r3, #0]
    3532:	2301      	movs	r3, #1
    3534:	425b      	negs	r3, r3
    3536:	0019      	movs	r1, r3
    3538:	0010      	movs	r0, r2
    353a:	f003 f9ef 	bl	691c <osMutexWait>
    353e:	4b19      	ldr	r3, [pc, #100]	; (35a4 <mdb_fifo_write+0x80>)
    3540:	681a      	ldr	r2, [r3, #0]
    3542:	4b19      	ldr	r3, [pc, #100]	; (35a8 <mdb_fifo_write+0x84>)
    3544:	681b      	ldr	r3, [r3, #0]
    3546:	1ad3      	subs	r3, r2, r3
    3548:	05db      	lsls	r3, r3, #23
    354a:	0ddb      	lsrs	r3, r3, #23
    354c:	613b      	str	r3, [r7, #16]
    354e:	693b      	ldr	r3, [r7, #16]
    3550:	2280      	movs	r2, #128	; 0x80
    3552:	0092      	lsls	r2, r2, #2
    3554:	1ad3      	subs	r3, r2, r3
    3556:	60fb      	str	r3, [r7, #12]
    3558:	2300      	movs	r3, #0
    355a:	617b      	str	r3, [r7, #20]
    355c:	e011      	b.n	3582 <mdb_fifo_write+0x5e>
    355e:	4b11      	ldr	r3, [pc, #68]	; (35a4 <mdb_fifo_write+0x80>)
    3560:	681a      	ldr	r2, [r3, #0]
    3562:	687b      	ldr	r3, [r7, #4]
    3564:	1c59      	adds	r1, r3, #1
    3566:	6079      	str	r1, [r7, #4]
    3568:	7819      	ldrb	r1, [r3, #0]
    356a:	4b10      	ldr	r3, [pc, #64]	; (35ac <mdb_fifo_write+0x88>)
    356c:	5499      	strb	r1, [r3, r2]
    356e:	4b0d      	ldr	r3, [pc, #52]	; (35a4 <mdb_fifo_write+0x80>)
    3570:	681b      	ldr	r3, [r3, #0]
    3572:	3301      	adds	r3, #1
    3574:	05db      	lsls	r3, r3, #23
    3576:	0dda      	lsrs	r2, r3, #23
    3578:	4b0a      	ldr	r3, [pc, #40]	; (35a4 <mdb_fifo_write+0x80>)
    357a:	601a      	str	r2, [r3, #0]
    357c:	697b      	ldr	r3, [r7, #20]
    357e:	3301      	adds	r3, #1
    3580:	617b      	str	r3, [r7, #20]
    3582:	697a      	ldr	r2, [r7, #20]
    3584:	683b      	ldr	r3, [r7, #0]
    3586:	429a      	cmp	r2, r3
    3588:	dbe9      	blt.n	355e <mdb_fifo_write+0x3a>
    358a:	4b05      	ldr	r3, [pc, #20]	; (35a0 <mdb_fifo_write+0x7c>)
    358c:	681b      	ldr	r3, [r3, #0]
    358e:	0018      	movs	r0, r3
    3590:	f003 f9d4 	bl	693c <osMutexRelease>
    3594:	683b      	ldr	r3, [r7, #0]
    3596:	0018      	movs	r0, r3
    3598:	46bd      	mov	sp, r7
    359a:	b006      	add	sp, #24
    359c:	bd80      	pop	{r7, pc}
    359e:	46c0      	nop			; (mov r8, r8)
    35a0:	20000888 	.word	0x20000888
    35a4:	20005d74 	.word	0x20005d74
    35a8:	20005d78 	.word	0x20005d78
    35ac:	20005b74 	.word	0x20005b74

000035b0 <mdb_get_testparam>:
    35b0:	b5b0      	push	{r4, r5, r7, lr}
    35b2:	b086      	sub	sp, #24
    35b4:	af00      	add	r7, sp, #0
    35b6:	6078      	str	r0, [r7, #4]
    35b8:	4b84      	ldr	r3, [pc, #528]	; (37cc <mdb_get_testparam+0x21c>)
    35ba:	885b      	ldrh	r3, [r3, #2]
    35bc:	041b      	lsls	r3, r3, #16
    35be:	4a83      	ldr	r2, [pc, #524]	; (37cc <mdb_get_testparam+0x21c>)
    35c0:	8892      	ldrh	r2, [r2, #4]
    35c2:	4313      	orrs	r3, r2
    35c4:	001a      	movs	r2, r3
    35c6:	687b      	ldr	r3, [r7, #4]
    35c8:	21ff      	movs	r1, #255	; 0xff
    35ca:	4011      	ands	r1, r2
    35cc:	000c      	movs	r4, r1
    35ce:	7819      	ldrb	r1, [r3, #0]
    35d0:	2000      	movs	r0, #0
    35d2:	4001      	ands	r1, r0
    35d4:	1c08      	adds	r0, r1, #0
    35d6:	1c21      	adds	r1, r4, #0
    35d8:	4301      	orrs	r1, r0
    35da:	7019      	strb	r1, [r3, #0]
    35dc:	0a11      	lsrs	r1, r2, #8
    35de:	20ff      	movs	r0, #255	; 0xff
    35e0:	4001      	ands	r1, r0
    35e2:	000c      	movs	r4, r1
    35e4:	7859      	ldrb	r1, [r3, #1]
    35e6:	2000      	movs	r0, #0
    35e8:	4001      	ands	r1, r0
    35ea:	1c08      	adds	r0, r1, #0
    35ec:	1c21      	adds	r1, r4, #0
    35ee:	4301      	orrs	r1, r0
    35f0:	7059      	strb	r1, [r3, #1]
    35f2:	0c11      	lsrs	r1, r2, #16
    35f4:	20ff      	movs	r0, #255	; 0xff
    35f6:	4001      	ands	r1, r0
    35f8:	000c      	movs	r4, r1
    35fa:	7899      	ldrb	r1, [r3, #2]
    35fc:	2000      	movs	r0, #0
    35fe:	4001      	ands	r1, r0
    3600:	1c08      	adds	r0, r1, #0
    3602:	1c21      	adds	r1, r4, #0
    3604:	4301      	orrs	r1, r0
    3606:	7099      	strb	r1, [r3, #2]
    3608:	0e10      	lsrs	r0, r2, #24
    360a:	78da      	ldrb	r2, [r3, #3]
    360c:	2100      	movs	r1, #0
    360e:	400a      	ands	r2, r1
    3610:	1c11      	adds	r1, r2, #0
    3612:	1c02      	adds	r2, r0, #0
    3614:	430a      	orrs	r2, r1
    3616:	70da      	strb	r2, [r3, #3]
    3618:	4b6c      	ldr	r3, [pc, #432]	; (37cc <mdb_get_testparam+0x21c>)
    361a:	88db      	ldrh	r3, [r3, #6]
    361c:	041b      	lsls	r3, r3, #16
    361e:	4a6b      	ldr	r2, [pc, #428]	; (37cc <mdb_get_testparam+0x21c>)
    3620:	8912      	ldrh	r2, [r2, #8]
    3622:	4313      	orrs	r3, r2
    3624:	001a      	movs	r2, r3
    3626:	687b      	ldr	r3, [r7, #4]
    3628:	21ff      	movs	r1, #255	; 0xff
    362a:	4011      	ands	r1, r2
    362c:	000c      	movs	r4, r1
    362e:	7919      	ldrb	r1, [r3, #4]
    3630:	2000      	movs	r0, #0
    3632:	4001      	ands	r1, r0
    3634:	1c08      	adds	r0, r1, #0
    3636:	1c21      	adds	r1, r4, #0
    3638:	4301      	orrs	r1, r0
    363a:	7119      	strb	r1, [r3, #4]
    363c:	0a11      	lsrs	r1, r2, #8
    363e:	20ff      	movs	r0, #255	; 0xff
    3640:	4001      	ands	r1, r0
    3642:	000c      	movs	r4, r1
    3644:	7959      	ldrb	r1, [r3, #5]
    3646:	2000      	movs	r0, #0
    3648:	4001      	ands	r1, r0
    364a:	1c08      	adds	r0, r1, #0
    364c:	1c21      	adds	r1, r4, #0
    364e:	4301      	orrs	r1, r0
    3650:	7159      	strb	r1, [r3, #5]
    3652:	0c11      	lsrs	r1, r2, #16
    3654:	20ff      	movs	r0, #255	; 0xff
    3656:	4001      	ands	r1, r0
    3658:	000c      	movs	r4, r1
    365a:	7999      	ldrb	r1, [r3, #6]
    365c:	2000      	movs	r0, #0
    365e:	4001      	ands	r1, r0
    3660:	1c08      	adds	r0, r1, #0
    3662:	1c21      	adds	r1, r4, #0
    3664:	4301      	orrs	r1, r0
    3666:	7199      	strb	r1, [r3, #6]
    3668:	0e10      	lsrs	r0, r2, #24
    366a:	79da      	ldrb	r2, [r3, #7]
    366c:	2100      	movs	r1, #0
    366e:	400a      	ands	r2, r1
    3670:	1c11      	adds	r1, r2, #0
    3672:	1c02      	adds	r2, r0, #0
    3674:	430a      	orrs	r2, r1
    3676:	71da      	strb	r2, [r3, #7]
    3678:	4b54      	ldr	r3, [pc, #336]	; (37cc <mdb_get_testparam+0x21c>)
    367a:	895b      	ldrh	r3, [r3, #10]
    367c:	041b      	lsls	r3, r3, #16
    367e:	4a53      	ldr	r2, [pc, #332]	; (37cc <mdb_get_testparam+0x21c>)
    3680:	8992      	ldrh	r2, [r2, #12]
    3682:	4313      	orrs	r3, r2
    3684:	001a      	movs	r2, r3
    3686:	687b      	ldr	r3, [r7, #4]
    3688:	21ff      	movs	r1, #255	; 0xff
    368a:	4011      	ands	r1, r2
    368c:	000c      	movs	r4, r1
    368e:	7a19      	ldrb	r1, [r3, #8]
    3690:	2000      	movs	r0, #0
    3692:	4001      	ands	r1, r0
    3694:	1c08      	adds	r0, r1, #0
    3696:	1c21      	adds	r1, r4, #0
    3698:	4301      	orrs	r1, r0
    369a:	7219      	strb	r1, [r3, #8]
    369c:	0a11      	lsrs	r1, r2, #8
    369e:	20ff      	movs	r0, #255	; 0xff
    36a0:	4001      	ands	r1, r0
    36a2:	000c      	movs	r4, r1
    36a4:	7a59      	ldrb	r1, [r3, #9]
    36a6:	2000      	movs	r0, #0
    36a8:	4001      	ands	r1, r0
    36aa:	1c08      	adds	r0, r1, #0
    36ac:	1c21      	adds	r1, r4, #0
    36ae:	4301      	orrs	r1, r0
    36b0:	7259      	strb	r1, [r3, #9]
    36b2:	0c11      	lsrs	r1, r2, #16
    36b4:	20ff      	movs	r0, #255	; 0xff
    36b6:	4001      	ands	r1, r0
    36b8:	000c      	movs	r4, r1
    36ba:	7a99      	ldrb	r1, [r3, #10]
    36bc:	2000      	movs	r0, #0
    36be:	4001      	ands	r1, r0
    36c0:	1c08      	adds	r0, r1, #0
    36c2:	1c21      	adds	r1, r4, #0
    36c4:	4301      	orrs	r1, r0
    36c6:	7299      	strb	r1, [r3, #10]
    36c8:	0e10      	lsrs	r0, r2, #24
    36ca:	7ada      	ldrb	r2, [r3, #11]
    36cc:	2100      	movs	r1, #0
    36ce:	400a      	ands	r2, r1
    36d0:	1c11      	adds	r1, r2, #0
    36d2:	1c02      	adds	r2, r0, #0
    36d4:	430a      	orrs	r2, r1
    36d6:	72da      	strb	r2, [r3, #11]
    36d8:	4b3c      	ldr	r3, [pc, #240]	; (37cc <mdb_get_testparam+0x21c>)
    36da:	89db      	ldrh	r3, [r3, #14]
    36dc:	041b      	lsls	r3, r3, #16
    36de:	4a3b      	ldr	r2, [pc, #236]	; (37cc <mdb_get_testparam+0x21c>)
    36e0:	8a12      	ldrh	r2, [r2, #16]
    36e2:	4313      	orrs	r3, r2
    36e4:	001a      	movs	r2, r3
    36e6:	687b      	ldr	r3, [r7, #4]
    36e8:	21ff      	movs	r1, #255	; 0xff
    36ea:	4011      	ands	r1, r2
    36ec:	000c      	movs	r4, r1
    36ee:	7b19      	ldrb	r1, [r3, #12]
    36f0:	2000      	movs	r0, #0
    36f2:	4001      	ands	r1, r0
    36f4:	1c08      	adds	r0, r1, #0
    36f6:	1c21      	adds	r1, r4, #0
    36f8:	4301      	orrs	r1, r0
    36fa:	7319      	strb	r1, [r3, #12]
    36fc:	0a11      	lsrs	r1, r2, #8
    36fe:	20ff      	movs	r0, #255	; 0xff
    3700:	4001      	ands	r1, r0
    3702:	000c      	movs	r4, r1
    3704:	7b59      	ldrb	r1, [r3, #13]
    3706:	2000      	movs	r0, #0
    3708:	4001      	ands	r1, r0
    370a:	1c08      	adds	r0, r1, #0
    370c:	1c21      	adds	r1, r4, #0
    370e:	4301      	orrs	r1, r0
    3710:	7359      	strb	r1, [r3, #13]
    3712:	0c11      	lsrs	r1, r2, #16
    3714:	20ff      	movs	r0, #255	; 0xff
    3716:	4001      	ands	r1, r0
    3718:	000c      	movs	r4, r1
    371a:	7b99      	ldrb	r1, [r3, #14]
    371c:	2000      	movs	r0, #0
    371e:	4001      	ands	r1, r0
    3720:	1c08      	adds	r0, r1, #0
    3722:	1c21      	adds	r1, r4, #0
    3724:	4301      	orrs	r1, r0
    3726:	7399      	strb	r1, [r3, #14]
    3728:	0e10      	lsrs	r0, r2, #24
    372a:	7bda      	ldrb	r2, [r3, #15]
    372c:	2100      	movs	r1, #0
    372e:	400a      	ands	r2, r1
    3730:	1c11      	adds	r1, r2, #0
    3732:	1c02      	adds	r2, r0, #0
    3734:	430a      	orrs	r2, r1
    3736:	73da      	strb	r2, [r3, #15]
    3738:	4b25      	ldr	r3, [pc, #148]	; (37d0 <mdb_get_testparam+0x220>)
    373a:	613b      	str	r3, [r7, #16]
    373c:	4b25      	ldr	r3, [pc, #148]	; (37d4 <mdb_get_testparam+0x224>)
    373e:	60fb      	str	r3, [r7, #12]
    3740:	2300      	movs	r3, #0
    3742:	617b      	str	r3, [r7, #20]
    3744:	e03a      	b.n	37bc <mdb_get_testparam+0x20c>
    3746:	693b      	ldr	r3, [r7, #16]
    3748:	1c9a      	adds	r2, r3, #2
    374a:	613a      	str	r2, [r7, #16]
    374c:	8819      	ldrh	r1, [r3, #0]
    374e:	687a      	ldr	r2, [r7, #4]
    3750:	697b      	ldr	r3, [r7, #20]
    3752:	3308      	adds	r3, #8
    3754:	005b      	lsls	r3, r3, #1
    3756:	20ff      	movs	r0, #255	; 0xff
    3758:	4008      	ands	r0, r1
    375a:	0005      	movs	r5, r0
    375c:	5c98      	ldrb	r0, [r3, r2]
    375e:	2400      	movs	r4, #0
    3760:	4020      	ands	r0, r4
    3762:	1c04      	adds	r4, r0, #0
    3764:	1c28      	adds	r0, r5, #0
    3766:	4320      	orrs	r0, r4
    3768:	5498      	strb	r0, [r3, r2]
    376a:	0a09      	lsrs	r1, r1, #8
    376c:	b288      	uxth	r0, r1
    376e:	18d3      	adds	r3, r2, r3
    3770:	785a      	ldrb	r2, [r3, #1]
    3772:	2100      	movs	r1, #0
    3774:	400a      	ands	r2, r1
    3776:	1c11      	adds	r1, r2, #0
    3778:	1c02      	adds	r2, r0, #0
    377a:	430a      	orrs	r2, r1
    377c:	705a      	strb	r2, [r3, #1]
    377e:	68fb      	ldr	r3, [r7, #12]
    3780:	1c9a      	adds	r2, r3, #2
    3782:	60fa      	str	r2, [r7, #12]
    3784:	881a      	ldrh	r2, [r3, #0]
    3786:	6879      	ldr	r1, [r7, #4]
    3788:	697b      	ldr	r3, [r7, #20]
    378a:	330c      	adds	r3, #12
    378c:	005b      	lsls	r3, r3, #1
    378e:	18cb      	adds	r3, r1, r3
    3790:	21ff      	movs	r1, #255	; 0xff
    3792:	4011      	ands	r1, r2
    3794:	000c      	movs	r4, r1
    3796:	7899      	ldrb	r1, [r3, #2]
    3798:	2000      	movs	r0, #0
    379a:	4001      	ands	r1, r0
    379c:	1c08      	adds	r0, r1, #0
    379e:	1c21      	adds	r1, r4, #0
    37a0:	4301      	orrs	r1, r0
    37a2:	7099      	strb	r1, [r3, #2]
    37a4:	0a12      	lsrs	r2, r2, #8
    37a6:	b290      	uxth	r0, r2
    37a8:	78da      	ldrb	r2, [r3, #3]
    37aa:	2100      	movs	r1, #0
    37ac:	400a      	ands	r2, r1
    37ae:	1c11      	adds	r1, r2, #0
    37b0:	1c02      	adds	r2, r0, #0
    37b2:	430a      	orrs	r2, r1
    37b4:	70da      	strb	r2, [r3, #3]
    37b6:	697b      	ldr	r3, [r7, #20]
    37b8:	3301      	adds	r3, #1
    37ba:	617b      	str	r3, [r7, #20]
    37bc:	697b      	ldr	r3, [r7, #20]
    37be:	2b04      	cmp	r3, #4
    37c0:	ddc1      	ble.n	3746 <mdb_get_testparam+0x196>
    37c2:	46c0      	nop			; (mov r8, r8)
    37c4:	46bd      	mov	sp, r7
    37c6:	b006      	add	sp, #24
    37c8:	bdb0      	pop	{r4, r5, r7, pc}
    37ca:	46c0      	nop			; (mov r8, r8)
    37cc:	20005d7c 	.word	0x20005d7c
    37d0:	20005d8e 	.word	0x20005d8e
    37d4:	20005d98 	.word	0x20005d98

000037d8 <mdb_get_holding_register>:
    37d8:	b580      	push	{r7, lr}
    37da:	b084      	sub	sp, #16
    37dc:	af00      	add	r7, sp, #0
    37de:	6078      	str	r0, [r7, #4]
    37e0:	687b      	ldr	r3, [r7, #4]
    37e2:	2b00      	cmp	r3, #0
    37e4:	db02      	blt.n	37ec <mdb_get_holding_register+0x14>
    37e6:	687b      	ldr	r3, [r7, #4]
    37e8:	2b17      	cmp	r3, #23
    37ea:	dd01      	ble.n	37f0 <mdb_get_holding_register+0x18>
    37ec:	2300      	movs	r3, #0
    37ee:	e009      	b.n	3804 <mdb_get_holding_register+0x2c>
    37f0:	230e      	movs	r3, #14
    37f2:	18fb      	adds	r3, r7, r3
    37f4:	4a05      	ldr	r2, [pc, #20]	; (380c <mdb_get_holding_register+0x34>)
    37f6:	6879      	ldr	r1, [r7, #4]
    37f8:	0049      	lsls	r1, r1, #1
    37fa:	5a8a      	ldrh	r2, [r1, r2]
    37fc:	801a      	strh	r2, [r3, #0]
    37fe:	230e      	movs	r3, #14
    3800:	18fb      	adds	r3, r7, r3
    3802:	881b      	ldrh	r3, [r3, #0]
    3804:	0018      	movs	r0, r3
    3806:	46bd      	mov	sp, r7
    3808:	b004      	add	sp, #16
    380a:	bd80      	pop	{r7, pc}
    380c:	20005d7c 	.word	0x20005d7c

00003810 <pdu_report_server_id>:
    3810:	b580      	push	{r7, lr}
    3812:	b086      	sub	sp, #24
    3814:	af00      	add	r7, sp, #0
    3816:	6078      	str	r0, [r7, #4]
    3818:	2311      	movs	r3, #17
    381a:	60fb      	str	r3, [r7, #12]
    381c:	4b1f      	ldr	r3, [pc, #124]	; (389c <pdu_report_server_id+0x8c>)
    381e:	681a      	ldr	r2, [r3, #0]
    3820:	687b      	ldr	r3, [r7, #4]
    3822:	18d2      	adds	r2, r2, r3
    3824:	230b      	movs	r3, #11
    3826:	18fb      	adds	r3, r7, r3
    3828:	7812      	ldrb	r2, [r2, #0]
    382a:	701a      	strb	r2, [r3, #0]
    382c:	687b      	ldr	r3, [r7, #4]
    382e:	617b      	str	r3, [r7, #20]
    3830:	697b      	ldr	r3, [r7, #20]
    3832:	1c5a      	adds	r2, r3, #1
    3834:	617a      	str	r2, [r7, #20]
    3836:	4a1a      	ldr	r2, [pc, #104]	; (38a0 <pdu_report_server_id+0x90>)
    3838:	210b      	movs	r1, #11
    383a:	1879      	adds	r1, r7, r1
    383c:	7809      	ldrb	r1, [r1, #0]
    383e:	54d1      	strb	r1, [r2, r3]
    3840:	697b      	ldr	r3, [r7, #20]
    3842:	1c5a      	adds	r2, r3, #1
    3844:	617a      	str	r2, [r7, #20]
    3846:	68fa      	ldr	r2, [r7, #12]
    3848:	b2d2      	uxtb	r2, r2
    384a:	3202      	adds	r2, #2
    384c:	b2d1      	uxtb	r1, r2
    384e:	4a14      	ldr	r2, [pc, #80]	; (38a0 <pdu_report_server_id+0x90>)
    3850:	54d1      	strb	r1, [r2, r3]
    3852:	697b      	ldr	r3, [r7, #20]
    3854:	1c5a      	adds	r2, r3, #1
    3856:	617a      	str	r2, [r7, #20]
    3858:	4a11      	ldr	r2, [pc, #68]	; (38a0 <pdu_report_server_id+0x90>)
    385a:	2111      	movs	r1, #17
    385c:	54d1      	strb	r1, [r2, r3]
    385e:	697b      	ldr	r3, [r7, #20]
    3860:	1c5a      	adds	r2, r3, #1
    3862:	617a      	str	r2, [r7, #20]
    3864:	4a0e      	ldr	r2, [pc, #56]	; (38a0 <pdu_report_server_id+0x90>)
    3866:	21ff      	movs	r1, #255	; 0xff
    3868:	54d1      	strb	r1, [r2, r3]
    386a:	2300      	movs	r3, #0
    386c:	613b      	str	r3, [r7, #16]
    386e:	e00b      	b.n	3888 <pdu_report_server_id+0x78>
    3870:	697b      	ldr	r3, [r7, #20]
    3872:	1c5a      	adds	r2, r3, #1
    3874:	617a      	str	r2, [r7, #20]
    3876:	490b      	ldr	r1, [pc, #44]	; (38a4 <pdu_report_server_id+0x94>)
    3878:	693a      	ldr	r2, [r7, #16]
    387a:	188a      	adds	r2, r1, r2
    387c:	7811      	ldrb	r1, [r2, #0]
    387e:	4a08      	ldr	r2, [pc, #32]	; (38a0 <pdu_report_server_id+0x90>)
    3880:	54d1      	strb	r1, [r2, r3]
    3882:	693b      	ldr	r3, [r7, #16]
    3884:	3301      	adds	r3, #1
    3886:	613b      	str	r3, [r7, #16]
    3888:	693a      	ldr	r2, [r7, #16]
    388a:	68fb      	ldr	r3, [r7, #12]
    388c:	429a      	cmp	r2, r3
    388e:	dbef      	blt.n	3870 <pdu_report_server_id+0x60>
    3890:	697b      	ldr	r3, [r7, #20]
    3892:	0018      	movs	r0, r3
    3894:	46bd      	mov	sp, r7
    3896:	b006      	add	sp, #24
    3898:	bd80      	pop	{r7, pc}
    389a:	46c0      	nop			; (mov r8, r8)
    389c:	20005db8 	.word	0x20005db8
    38a0:	20005dbc 	.word	0x20005dbc
    38a4:	00009188 	.word	0x00009188

000038a8 <pdu_read_input_registers>:
    38a8:	b580      	push	{r7, lr}
    38aa:	b086      	sub	sp, #24
    38ac:	af00      	add	r7, sp, #0
    38ae:	6078      	str	r0, [r7, #4]
    38b0:	4b4e      	ldr	r3, [pc, #312]	; (39ec <pdu_read_input_registers+0x144>)
    38b2:	681a      	ldr	r2, [r3, #0]
    38b4:	687b      	ldr	r3, [r7, #4]
    38b6:	18d2      	adds	r2, r2, r3
    38b8:	230f      	movs	r3, #15
    38ba:	18fb      	adds	r3, r7, r3
    38bc:	7812      	ldrb	r2, [r2, #0]
    38be:	701a      	strb	r2, [r3, #0]
    38c0:	4b4a      	ldr	r3, [pc, #296]	; (39ec <pdu_read_input_registers+0x144>)
    38c2:	681a      	ldr	r2, [r3, #0]
    38c4:	687b      	ldr	r3, [r7, #4]
    38c6:	3301      	adds	r3, #1
    38c8:	18d3      	adds	r3, r2, r3
    38ca:	781b      	ldrb	r3, [r3, #0]
    38cc:	021b      	lsls	r3, r3, #8
    38ce:	b21a      	sxth	r2, r3
    38d0:	4b46      	ldr	r3, [pc, #280]	; (39ec <pdu_read_input_registers+0x144>)
    38d2:	6819      	ldr	r1, [r3, #0]
    38d4:	687b      	ldr	r3, [r7, #4]
    38d6:	3302      	adds	r3, #2
    38d8:	18cb      	adds	r3, r1, r3
    38da:	781b      	ldrb	r3, [r3, #0]
    38dc:	b21b      	sxth	r3, r3
    38de:	4313      	orrs	r3, r2
    38e0:	b21a      	sxth	r2, r3
    38e2:	230c      	movs	r3, #12
    38e4:	18fb      	adds	r3, r7, r3
    38e6:	801a      	strh	r2, [r3, #0]
    38e8:	4b40      	ldr	r3, [pc, #256]	; (39ec <pdu_read_input_registers+0x144>)
    38ea:	681a      	ldr	r2, [r3, #0]
    38ec:	687b      	ldr	r3, [r7, #4]
    38ee:	3303      	adds	r3, #3
    38f0:	18d3      	adds	r3, r2, r3
    38f2:	781b      	ldrb	r3, [r3, #0]
    38f4:	021b      	lsls	r3, r3, #8
    38f6:	b21a      	sxth	r2, r3
    38f8:	4b3c      	ldr	r3, [pc, #240]	; (39ec <pdu_read_input_registers+0x144>)
    38fa:	6819      	ldr	r1, [r3, #0]
    38fc:	687b      	ldr	r3, [r7, #4]
    38fe:	3304      	adds	r3, #4
    3900:	18cb      	adds	r3, r1, r3
    3902:	781b      	ldrb	r3, [r3, #0]
    3904:	b21b      	sxth	r3, r3
    3906:	4313      	orrs	r3, r2
    3908:	b21a      	sxth	r2, r3
    390a:	230a      	movs	r3, #10
    390c:	18fb      	adds	r3, r7, r3
    390e:	801a      	strh	r2, [r3, #0]
    3910:	230c      	movs	r3, #12
    3912:	18fb      	adds	r3, r7, r3
    3914:	881b      	ldrh	r3, [r3, #0]
    3916:	2bff      	cmp	r3, #255	; 0xff
    3918:	d90a      	bls.n	3930 <pdu_read_input_registers+0x88>
    391a:	230c      	movs	r3, #12
    391c:	18fb      	adds	r3, r7, r3
    391e:	881a      	ldrh	r2, [r3, #0]
    3920:	230a      	movs	r3, #10
    3922:	18fb      	adds	r3, r7, r3
    3924:	881b      	ldrh	r3, [r3, #0]
    3926:	18d2      	adds	r2, r2, r3
    3928:	2304      	movs	r3, #4
    392a:	33ff      	adds	r3, #255	; 0xff
    392c:	429a      	cmp	r2, r3
    392e:	dd15      	ble.n	395c <pdu_read_input_registers+0xb4>
    3930:	687b      	ldr	r3, [r7, #4]
    3932:	613b      	str	r3, [r7, #16]
    3934:	693b      	ldr	r3, [r7, #16]
    3936:	1c5a      	adds	r2, r3, #1
    3938:	613a      	str	r2, [r7, #16]
    393a:	220f      	movs	r2, #15
    393c:	18ba      	adds	r2, r7, r2
    393e:	7812      	ldrb	r2, [r2, #0]
    3940:	2180      	movs	r1, #128	; 0x80
    3942:	4249      	negs	r1, r1
    3944:	430a      	orrs	r2, r1
    3946:	b2d1      	uxtb	r1, r2
    3948:	4a29      	ldr	r2, [pc, #164]	; (39f0 <pdu_read_input_registers+0x148>)
    394a:	54d1      	strb	r1, [r2, r3]
    394c:	693b      	ldr	r3, [r7, #16]
    394e:	1c5a      	adds	r2, r3, #1
    3950:	613a      	str	r2, [r7, #16]
    3952:	4a27      	ldr	r2, [pc, #156]	; (39f0 <pdu_read_input_registers+0x148>)
    3954:	2102      	movs	r1, #2
    3956:	54d1      	strb	r1, [r2, r3]
    3958:	693b      	ldr	r3, [r7, #16]
    395a:	e042      	b.n	39e2 <pdu_read_input_registers+0x13a>
    395c:	687b      	ldr	r3, [r7, #4]
    395e:	613b      	str	r3, [r7, #16]
    3960:	693b      	ldr	r3, [r7, #16]
    3962:	1c5a      	adds	r2, r3, #1
    3964:	613a      	str	r2, [r7, #16]
    3966:	4a22      	ldr	r2, [pc, #136]	; (39f0 <pdu_read_input_registers+0x148>)
    3968:	210f      	movs	r1, #15
    396a:	1879      	adds	r1, r7, r1
    396c:	7809      	ldrb	r1, [r1, #0]
    396e:	54d1      	strb	r1, [r2, r3]
    3970:	693b      	ldr	r3, [r7, #16]
    3972:	1c5a      	adds	r2, r3, #1
    3974:	613a      	str	r2, [r7, #16]
    3976:	220a      	movs	r2, #10
    3978:	18ba      	adds	r2, r7, r2
    397a:	8812      	ldrh	r2, [r2, #0]
    397c:	b2d2      	uxtb	r2, r2
    397e:	1892      	adds	r2, r2, r2
    3980:	b2d1      	uxtb	r1, r2
    3982:	4a1b      	ldr	r2, [pc, #108]	; (39f0 <pdu_read_input_registers+0x148>)
    3984:	54d1      	strb	r1, [r2, r3]
    3986:	2300      	movs	r3, #0
    3988:	617b      	str	r3, [r7, #20]
    398a:	e023      	b.n	39d4 <pdu_read_input_registers+0x12c>
    398c:	230c      	movs	r3, #12
    398e:	18fb      	adds	r3, r7, r3
    3990:	881b      	ldrh	r3, [r3, #0]
    3992:	1e5a      	subs	r2, r3, #1
    3994:	3aff      	subs	r2, #255	; 0xff
    3996:	697b      	ldr	r3, [r7, #20]
    3998:	18d1      	adds	r1, r2, r3
    399a:	2308      	movs	r3, #8
    399c:	18fb      	adds	r3, r7, r3
    399e:	4a15      	ldr	r2, [pc, #84]	; (39f4 <pdu_read_input_registers+0x14c>)
    39a0:	0049      	lsls	r1, r1, #1
    39a2:	5a8a      	ldrh	r2, [r1, r2]
    39a4:	801a      	strh	r2, [r3, #0]
    39a6:	693b      	ldr	r3, [r7, #16]
    39a8:	1c5a      	adds	r2, r3, #1
    39aa:	613a      	str	r2, [r7, #16]
    39ac:	2208      	movs	r2, #8
    39ae:	18ba      	adds	r2, r7, r2
    39b0:	8812      	ldrh	r2, [r2, #0]
    39b2:	0a12      	lsrs	r2, r2, #8
    39b4:	b292      	uxth	r2, r2
    39b6:	b2d1      	uxtb	r1, r2
    39b8:	4a0d      	ldr	r2, [pc, #52]	; (39f0 <pdu_read_input_registers+0x148>)
    39ba:	54d1      	strb	r1, [r2, r3]
    39bc:	693b      	ldr	r3, [r7, #16]
    39be:	1c5a      	adds	r2, r3, #1
    39c0:	613a      	str	r2, [r7, #16]
    39c2:	2208      	movs	r2, #8
    39c4:	18ba      	adds	r2, r7, r2
    39c6:	8812      	ldrh	r2, [r2, #0]
    39c8:	b2d1      	uxtb	r1, r2
    39ca:	4a09      	ldr	r2, [pc, #36]	; (39f0 <pdu_read_input_registers+0x148>)
    39cc:	54d1      	strb	r1, [r2, r3]
    39ce:	697b      	ldr	r3, [r7, #20]
    39d0:	3301      	adds	r3, #1
    39d2:	617b      	str	r3, [r7, #20]
    39d4:	230a      	movs	r3, #10
    39d6:	18fb      	adds	r3, r7, r3
    39d8:	881a      	ldrh	r2, [r3, #0]
    39da:	697b      	ldr	r3, [r7, #20]
    39dc:	429a      	cmp	r2, r3
    39de:	dcd5      	bgt.n	398c <pdu_read_input_registers+0xe4>
    39e0:	693b      	ldr	r3, [r7, #16]
    39e2:	0018      	movs	r0, r3
    39e4:	46bd      	mov	sp, r7
    39e6:	b006      	add	sp, #24
    39e8:	bd80      	pop	{r7, pc}
    39ea:	46c0      	nop			; (mov r8, r8)
    39ec:	20005db8 	.word	0x20005db8
    39f0:	20005dbc 	.word	0x20005dbc
    39f4:	20005dac 	.word	0x20005dac

000039f8 <pdu_write_multiply_registers>:
    39f8:	b580      	push	{r7, lr}
    39fa:	b088      	sub	sp, #32
    39fc:	af00      	add	r7, sp, #0
    39fe:	6078      	str	r0, [r7, #4]
    3a00:	4b5a      	ldr	r3, [pc, #360]	; (3b6c <pdu_write_multiply_registers+0x174>)
    3a02:	681a      	ldr	r2, [r3, #0]
    3a04:	687b      	ldr	r3, [r7, #4]
    3a06:	18d2      	adds	r2, r2, r3
    3a08:	2317      	movs	r3, #23
    3a0a:	18fb      	adds	r3, r7, r3
    3a0c:	7812      	ldrb	r2, [r2, #0]
    3a0e:	701a      	strb	r2, [r3, #0]
    3a10:	4b56      	ldr	r3, [pc, #344]	; (3b6c <pdu_write_multiply_registers+0x174>)
    3a12:	681a      	ldr	r2, [r3, #0]
    3a14:	687b      	ldr	r3, [r7, #4]
    3a16:	3301      	adds	r3, #1
    3a18:	18d3      	adds	r3, r2, r3
    3a1a:	781b      	ldrb	r3, [r3, #0]
    3a1c:	021b      	lsls	r3, r3, #8
    3a1e:	b21a      	sxth	r2, r3
    3a20:	4b52      	ldr	r3, [pc, #328]	; (3b6c <pdu_write_multiply_registers+0x174>)
    3a22:	6819      	ldr	r1, [r3, #0]
    3a24:	687b      	ldr	r3, [r7, #4]
    3a26:	3302      	adds	r3, #2
    3a28:	18cb      	adds	r3, r1, r3
    3a2a:	781b      	ldrb	r3, [r3, #0]
    3a2c:	b21b      	sxth	r3, r3
    3a2e:	4313      	orrs	r3, r2
    3a30:	b21a      	sxth	r2, r3
    3a32:	2314      	movs	r3, #20
    3a34:	18fb      	adds	r3, r7, r3
    3a36:	801a      	strh	r2, [r3, #0]
    3a38:	4b4c      	ldr	r3, [pc, #304]	; (3b6c <pdu_write_multiply_registers+0x174>)
    3a3a:	681a      	ldr	r2, [r3, #0]
    3a3c:	687b      	ldr	r3, [r7, #4]
    3a3e:	3303      	adds	r3, #3
    3a40:	18d3      	adds	r3, r2, r3
    3a42:	781b      	ldrb	r3, [r3, #0]
    3a44:	021b      	lsls	r3, r3, #8
    3a46:	b21a      	sxth	r2, r3
    3a48:	4b48      	ldr	r3, [pc, #288]	; (3b6c <pdu_write_multiply_registers+0x174>)
    3a4a:	6819      	ldr	r1, [r3, #0]
    3a4c:	687b      	ldr	r3, [r7, #4]
    3a4e:	3304      	adds	r3, #4
    3a50:	18cb      	adds	r3, r1, r3
    3a52:	781b      	ldrb	r3, [r3, #0]
    3a54:	b21b      	sxth	r3, r3
    3a56:	4313      	orrs	r3, r2
    3a58:	b21a      	sxth	r2, r3
    3a5a:	2312      	movs	r3, #18
    3a5c:	18fb      	adds	r3, r7, r3
    3a5e:	801a      	strh	r2, [r3, #0]
    3a60:	4b42      	ldr	r3, [pc, #264]	; (3b6c <pdu_write_multiply_registers+0x174>)
    3a62:	681a      	ldr	r2, [r3, #0]
    3a64:	687b      	ldr	r3, [r7, #4]
    3a66:	3305      	adds	r3, #5
    3a68:	18d2      	adds	r2, r2, r3
    3a6a:	2311      	movs	r3, #17
    3a6c:	18fb      	adds	r3, r7, r3
    3a6e:	7812      	ldrb	r2, [r2, #0]
    3a70:	701a      	strb	r2, [r3, #0]
    3a72:	2314      	movs	r3, #20
    3a74:	18fb      	adds	r3, r7, r3
    3a76:	881a      	ldrh	r2, [r3, #0]
    3a78:	2312      	movs	r3, #18
    3a7a:	18fb      	adds	r3, r7, r3
    3a7c:	881b      	ldrh	r3, [r3, #0]
    3a7e:	18d3      	adds	r3, r2, r3
    3a80:	2b18      	cmp	r3, #24
    3a82:	dd14      	ble.n	3aae <pdu_write_multiply_registers+0xb6>
    3a84:	687b      	ldr	r3, [r7, #4]
    3a86:	61bb      	str	r3, [r7, #24]
    3a88:	69bb      	ldr	r3, [r7, #24]
    3a8a:	1c5a      	adds	r2, r3, #1
    3a8c:	61ba      	str	r2, [r7, #24]
    3a8e:	2217      	movs	r2, #23
    3a90:	18ba      	adds	r2, r7, r2
    3a92:	7812      	ldrb	r2, [r2, #0]
    3a94:	2180      	movs	r1, #128	; 0x80
    3a96:	4249      	negs	r1, r1
    3a98:	430a      	orrs	r2, r1
    3a9a:	b2d1      	uxtb	r1, r2
    3a9c:	4a34      	ldr	r2, [pc, #208]	; (3b70 <pdu_write_multiply_registers+0x178>)
    3a9e:	54d1      	strb	r1, [r2, r3]
    3aa0:	69bb      	ldr	r3, [r7, #24]
    3aa2:	1c5a      	adds	r2, r3, #1
    3aa4:	61ba      	str	r2, [r7, #24]
    3aa6:	4a32      	ldr	r2, [pc, #200]	; (3b70 <pdu_write_multiply_registers+0x178>)
    3aa8:	2102      	movs	r1, #2
    3aaa:	54d1      	strb	r1, [r2, r3]
    3aac:	e04b      	b.n	3b46 <pdu_write_multiply_registers+0x14e>
    3aae:	687b      	ldr	r3, [r7, #4]
    3ab0:	3306      	adds	r3, #6
    3ab2:	61bb      	str	r3, [r7, #24]
    3ab4:	2300      	movs	r3, #0
    3ab6:	61fb      	str	r3, [r7, #28]
    3ab8:	e028      	b.n	3b0c <pdu_write_multiply_registers+0x114>
    3aba:	4b2c      	ldr	r3, [pc, #176]	; (3b6c <pdu_write_multiply_registers+0x174>)
    3abc:	681a      	ldr	r2, [r3, #0]
    3abe:	69bb      	ldr	r3, [r7, #24]
    3ac0:	1c59      	adds	r1, r3, #1
    3ac2:	61b9      	str	r1, [r7, #24]
    3ac4:	18d3      	adds	r3, r2, r3
    3ac6:	781b      	ldrb	r3, [r3, #0]
    3ac8:	b29a      	uxth	r2, r3
    3aca:	230e      	movs	r3, #14
    3acc:	18fb      	adds	r3, r7, r3
    3ace:	0212      	lsls	r2, r2, #8
    3ad0:	801a      	strh	r2, [r3, #0]
    3ad2:	4b26      	ldr	r3, [pc, #152]	; (3b6c <pdu_write_multiply_registers+0x174>)
    3ad4:	681a      	ldr	r2, [r3, #0]
    3ad6:	69bb      	ldr	r3, [r7, #24]
    3ad8:	1c59      	adds	r1, r3, #1
    3ada:	61b9      	str	r1, [r7, #24]
    3adc:	18d3      	adds	r3, r2, r3
    3ade:	781b      	ldrb	r3, [r3, #0]
    3ae0:	b299      	uxth	r1, r3
    3ae2:	230e      	movs	r3, #14
    3ae4:	18fb      	adds	r3, r7, r3
    3ae6:	220e      	movs	r2, #14
    3ae8:	18ba      	adds	r2, r7, r2
    3aea:	8812      	ldrh	r2, [r2, #0]
    3aec:	430a      	orrs	r2, r1
    3aee:	801a      	strh	r2, [r3, #0]
    3af0:	2314      	movs	r3, #20
    3af2:	18fb      	adds	r3, r7, r3
    3af4:	881a      	ldrh	r2, [r3, #0]
    3af6:	69fb      	ldr	r3, [r7, #28]
    3af8:	18d2      	adds	r2, r2, r3
    3afa:	4b1e      	ldr	r3, [pc, #120]	; (3b74 <pdu_write_multiply_registers+0x17c>)
    3afc:	0052      	lsls	r2, r2, #1
    3afe:	210e      	movs	r1, #14
    3b00:	1879      	adds	r1, r7, r1
    3b02:	8809      	ldrh	r1, [r1, #0]
    3b04:	52d1      	strh	r1, [r2, r3]
    3b06:	69fb      	ldr	r3, [r7, #28]
    3b08:	3301      	adds	r3, #1
    3b0a:	61fb      	str	r3, [r7, #28]
    3b0c:	2312      	movs	r3, #18
    3b0e:	18fb      	adds	r3, r7, r3
    3b10:	881a      	ldrh	r2, [r3, #0]
    3b12:	69fb      	ldr	r3, [r7, #28]
    3b14:	429a      	cmp	r2, r3
    3b16:	dcd0      	bgt.n	3aba <pdu_write_multiply_registers+0xc2>
    3b18:	687b      	ldr	r3, [r7, #4]
    3b1a:	61bb      	str	r3, [r7, #24]
    3b1c:	687b      	ldr	r3, [r7, #4]
    3b1e:	61fb      	str	r3, [r7, #28]
    3b20:	e00c      	b.n	3b3c <pdu_write_multiply_registers+0x144>
    3b22:	69bb      	ldr	r3, [r7, #24]
    3b24:	1c5a      	adds	r2, r3, #1
    3b26:	61ba      	str	r2, [r7, #24]
    3b28:	4a10      	ldr	r2, [pc, #64]	; (3b6c <pdu_write_multiply_registers+0x174>)
    3b2a:	6811      	ldr	r1, [r2, #0]
    3b2c:	69fa      	ldr	r2, [r7, #28]
    3b2e:	188a      	adds	r2, r1, r2
    3b30:	7811      	ldrb	r1, [r2, #0]
    3b32:	4a0f      	ldr	r2, [pc, #60]	; (3b70 <pdu_write_multiply_registers+0x178>)
    3b34:	54d1      	strb	r1, [r2, r3]
    3b36:	69fb      	ldr	r3, [r7, #28]
    3b38:	3301      	adds	r3, #1
    3b3a:	61fb      	str	r3, [r7, #28]
    3b3c:	687b      	ldr	r3, [r7, #4]
    3b3e:	1d5a      	adds	r2, r3, #5
    3b40:	69fb      	ldr	r3, [r7, #28]
    3b42:	429a      	cmp	r2, r3
    3b44:	dced      	bgt.n	3b22 <pdu_write_multiply_registers+0x12a>
    3b46:	2314      	movs	r3, #20
    3b48:	18fb      	adds	r3, r7, r3
    3b4a:	881b      	ldrh	r3, [r3, #0]
    3b4c:	2b00      	cmp	r3, #0
    3b4e:	d107      	bne.n	3b60 <pdu_write_multiply_registers+0x168>
    3b50:	4b09      	ldr	r3, [pc, #36]	; (3b78 <pdu_write_multiply_registers+0x180>)
    3b52:	6818      	ldr	r0, [r3, #0]
    3b54:	4b07      	ldr	r3, [pc, #28]	; (3b74 <pdu_write_multiply_registers+0x17c>)
    3b56:	881b      	ldrh	r3, [r3, #0]
    3b58:	2200      	movs	r2, #0
    3b5a:	0019      	movs	r1, r3
    3b5c:	f003 f9c6 	bl	6eec <osMessagePut>
    3b60:	69bb      	ldr	r3, [r7, #24]
    3b62:	0018      	movs	r0, r3
    3b64:	46bd      	mov	sp, r7
    3b66:	b008      	add	sp, #32
    3b68:	bd80      	pop	{r7, pc}
    3b6a:	46c0      	nop			; (mov r8, r8)
    3b6c:	20005db8 	.word	0x20005db8
    3b70:	20005dbc 	.word	0x20005dbc
    3b74:	20005d7c 	.word	0x20005d7c
    3b78:	20000864 	.word	0x20000864

00003b7c <u16tobe>:
    3b7c:	b580      	push	{r7, lr}
    3b7e:	b082      	sub	sp, #8
    3b80:	af00      	add	r7, sp, #0
    3b82:	0002      	movs	r2, r0
    3b84:	6039      	str	r1, [r7, #0]
    3b86:	1dbb      	adds	r3, r7, #6
    3b88:	801a      	strh	r2, [r3, #0]
    3b8a:	683b      	ldr	r3, [r7, #0]
    3b8c:	1c5a      	adds	r2, r3, #1
    3b8e:	603a      	str	r2, [r7, #0]
    3b90:	1dba      	adds	r2, r7, #6
    3b92:	8812      	ldrh	r2, [r2, #0]
    3b94:	0a12      	lsrs	r2, r2, #8
    3b96:	b292      	uxth	r2, r2
    3b98:	b2d2      	uxtb	r2, r2
    3b9a:	701a      	strb	r2, [r3, #0]
    3b9c:	683b      	ldr	r3, [r7, #0]
    3b9e:	1c5a      	adds	r2, r3, #1
    3ba0:	603a      	str	r2, [r7, #0]
    3ba2:	1dba      	adds	r2, r7, #6
    3ba4:	8812      	ldrh	r2, [r2, #0]
    3ba6:	b2d2      	uxtb	r2, r2
    3ba8:	701a      	strb	r2, [r3, #0]
    3baa:	46c0      	nop			; (mov r8, r8)
    3bac:	46bd      	mov	sp, r7
    3bae:	b002      	add	sp, #8
    3bb0:	bd80      	pop	{r7, pc}
    3bb2:	46c0      	nop			; (mov r8, r8)

00003bb4 <u32tobe>:
    3bb4:	b580      	push	{r7, lr}
    3bb6:	b082      	sub	sp, #8
    3bb8:	af00      	add	r7, sp, #0
    3bba:	6078      	str	r0, [r7, #4]
    3bbc:	6039      	str	r1, [r7, #0]
    3bbe:	683b      	ldr	r3, [r7, #0]
    3bc0:	1c5a      	adds	r2, r3, #1
    3bc2:	603a      	str	r2, [r7, #0]
    3bc4:	687a      	ldr	r2, [r7, #4]
    3bc6:	0e12      	lsrs	r2, r2, #24
    3bc8:	b2d2      	uxtb	r2, r2
    3bca:	701a      	strb	r2, [r3, #0]
    3bcc:	683b      	ldr	r3, [r7, #0]
    3bce:	1c5a      	adds	r2, r3, #1
    3bd0:	603a      	str	r2, [r7, #0]
    3bd2:	687a      	ldr	r2, [r7, #4]
    3bd4:	0c12      	lsrs	r2, r2, #16
    3bd6:	b2d2      	uxtb	r2, r2
    3bd8:	701a      	strb	r2, [r3, #0]
    3bda:	683b      	ldr	r3, [r7, #0]
    3bdc:	1c5a      	adds	r2, r3, #1
    3bde:	603a      	str	r2, [r7, #0]
    3be0:	687a      	ldr	r2, [r7, #4]
    3be2:	0a12      	lsrs	r2, r2, #8
    3be4:	b2d2      	uxtb	r2, r2
    3be6:	701a      	strb	r2, [r3, #0]
    3be8:	683b      	ldr	r3, [r7, #0]
    3bea:	1c5a      	adds	r2, r3, #1
    3bec:	603a      	str	r2, [r7, #0]
    3bee:	687a      	ldr	r2, [r7, #4]
    3bf0:	b2d2      	uxtb	r2, r2
    3bf2:	701a      	strb	r2, [r3, #0]
    3bf4:	46c0      	nop			; (mov r8, r8)
    3bf6:	46bd      	mov	sp, r7
    3bf8:	b002      	add	sp, #8
    3bfa:	bd80      	pop	{r7, pc}

00003bfc <pdu_read_fifo_queue>:
    3bfc:	b580      	push	{r7, lr}
    3bfe:	b090      	sub	sp, #64	; 0x40
    3c00:	af00      	add	r7, sp, #0
    3c02:	6078      	str	r0, [r7, #4]
    3c04:	2336      	movs	r3, #54	; 0x36
    3c06:	18fb      	adds	r3, r7, r3
    3c08:	2203      	movs	r2, #3
    3c0a:	801a      	strh	r2, [r3, #0]
    3c0c:	4b7c      	ldr	r3, [pc, #496]	; (3e00 <pdu_read_fifo_queue+0x204>)
    3c0e:	681a      	ldr	r2, [r3, #0]
    3c10:	687b      	ldr	r3, [r7, #4]
    3c12:	18d2      	adds	r2, r2, r3
    3c14:	2335      	movs	r3, #53	; 0x35
    3c16:	18fb      	adds	r3, r7, r3
    3c18:	7812      	ldrb	r2, [r2, #0]
    3c1a:	701a      	strb	r2, [r3, #0]
    3c1c:	4b78      	ldr	r3, [pc, #480]	; (3e00 <pdu_read_fifo_queue+0x204>)
    3c1e:	681a      	ldr	r2, [r3, #0]
    3c20:	687b      	ldr	r3, [r7, #4]
    3c22:	3301      	adds	r3, #1
    3c24:	18d3      	adds	r3, r2, r3
    3c26:	781b      	ldrb	r3, [r3, #0]
    3c28:	021b      	lsls	r3, r3, #8
    3c2a:	b21a      	sxth	r2, r3
    3c2c:	4b74      	ldr	r3, [pc, #464]	; (3e00 <pdu_read_fifo_queue+0x204>)
    3c2e:	6819      	ldr	r1, [r3, #0]
    3c30:	687b      	ldr	r3, [r7, #4]
    3c32:	3302      	adds	r3, #2
    3c34:	18cb      	adds	r3, r1, r3
    3c36:	781b      	ldrb	r3, [r3, #0]
    3c38:	b21b      	sxth	r3, r3
    3c3a:	4313      	orrs	r3, r2
    3c3c:	b21a      	sxth	r2, r3
    3c3e:	2332      	movs	r3, #50	; 0x32
    3c40:	18fb      	adds	r3, r7, r3
    3c42:	801a      	strh	r2, [r3, #0]
    3c44:	2332      	movs	r3, #50	; 0x32
    3c46:	18fb      	adds	r3, r7, r3
    3c48:	881a      	ldrh	r2, [r3, #0]
    3c4a:	2380      	movs	r3, #128	; 0x80
    3c4c:	009b      	lsls	r3, r3, #2
    3c4e:	429a      	cmp	r2, r3
    3c50:	d014      	beq.n	3c7c <pdu_read_fifo_queue+0x80>
    3c52:	687b      	ldr	r3, [r7, #4]
    3c54:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c56:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c58:	1c5a      	adds	r2, r3, #1
    3c5a:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c5c:	2235      	movs	r2, #53	; 0x35
    3c5e:	18ba      	adds	r2, r7, r2
    3c60:	7812      	ldrb	r2, [r2, #0]
    3c62:	2180      	movs	r1, #128	; 0x80
    3c64:	4249      	negs	r1, r1
    3c66:	430a      	orrs	r2, r1
    3c68:	b2d1      	uxtb	r1, r2
    3c6a:	4a66      	ldr	r2, [pc, #408]	; (3e04 <pdu_read_fifo_queue+0x208>)
    3c6c:	54d1      	strb	r1, [r2, r3]
    3c6e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c70:	1c5a      	adds	r2, r3, #1
    3c72:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c74:	4a63      	ldr	r2, [pc, #396]	; (3e04 <pdu_read_fifo_queue+0x208>)
    3c76:	2102      	movs	r1, #2
    3c78:	54d1      	strb	r1, [r2, r3]
    3c7a:	e0bb      	b.n	3df4 <pdu_read_fifo_queue+0x1f8>
    3c7c:	687b      	ldr	r3, [r7, #4]
    3c7e:	63fb      	str	r3, [r7, #60]	; 0x3c
    3c80:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c82:	1c5a      	adds	r2, r3, #1
    3c84:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c86:	4a5f      	ldr	r2, [pc, #380]	; (3e04 <pdu_read_fifo_queue+0x208>)
    3c88:	2135      	movs	r1, #53	; 0x35
    3c8a:	1879      	adds	r1, r7, r1
    3c8c:	7809      	ldrb	r1, [r1, #0]
    3c8e:	54d1      	strb	r1, [r2, r3]
    3c90:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c92:	1c5a      	adds	r2, r3, #1
    3c94:	63fa      	str	r2, [r7, #60]	; 0x3c
    3c96:	4a5b      	ldr	r2, [pc, #364]	; (3e04 <pdu_read_fifo_queue+0x208>)
    3c98:	2100      	movs	r1, #0
    3c9a:	54d1      	strb	r1, [r2, r3]
    3c9c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3c9e:	1c5a      	adds	r2, r3, #1
    3ca0:	63fa      	str	r2, [r7, #60]	; 0x3c
    3ca2:	4a58      	ldr	r2, [pc, #352]	; (3e04 <pdu_read_fifo_queue+0x208>)
    3ca4:	2100      	movs	r1, #0
    3ca6:	54d1      	strb	r1, [r2, r3]
    3ca8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3caa:	1c5a      	adds	r2, r3, #1
    3cac:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cae:	4a55      	ldr	r2, [pc, #340]	; (3e04 <pdu_read_fifo_queue+0x208>)
    3cb0:	2100      	movs	r1, #0
    3cb2:	54d1      	strb	r1, [r2, r3]
    3cb4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cb6:	1c5a      	adds	r2, r3, #1
    3cb8:	63fa      	str	r2, [r7, #60]	; 0x3c
    3cba:	4a52      	ldr	r2, [pc, #328]	; (3e04 <pdu_read_fifo_queue+0x208>)
    3cbc:	2100      	movs	r1, #0
    3cbe:	54d1      	strb	r1, [r2, r3]
    3cc0:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3cc2:	62fb      	str	r3, [r7, #44]	; 0x2c
    3cc4:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3cc6:	4b4f      	ldr	r3, [pc, #316]	; (3e04 <pdu_read_fifo_queue+0x208>)
    3cc8:	18d3      	adds	r3, r2, r3
    3cca:	63bb      	str	r3, [r7, #56]	; 0x38
    3ccc:	e06e      	b.n	3dac <pdu_read_fifo_queue+0x1b0>
    3cce:	2300      	movs	r3, #0
    3cd0:	62bb      	str	r3, [r7, #40]	; 0x28
    3cd2:	2308      	movs	r3, #8
    3cd4:	18fb      	adds	r3, r7, r3
    3cd6:	2120      	movs	r1, #32
    3cd8:	0018      	movs	r0, r3
    3cda:	f7ff fbd7 	bl	348c <mdb_fifo_read>
    3cde:	0003      	movs	r3, r0
    3ce0:	62bb      	str	r3, [r7, #40]	; 0x28
    3ce2:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3ce4:	2b00      	cmp	r3, #0
    3ce6:	d069      	beq.n	3dbc <pdu_read_fifo_queue+0x1c0>
    3ce8:	2308      	movs	r3, #8
    3cea:	18fb      	adds	r3, r7, r3
    3cec:	681b      	ldr	r3, [r3, #0]
    3cee:	001a      	movs	r2, r3
    3cf0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cf2:	0019      	movs	r1, r3
    3cf4:	0010      	movs	r0, r2
    3cf6:	f7ff ff5d 	bl	3bb4 <u32tobe>
    3cfa:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3cfc:	3304      	adds	r3, #4
    3cfe:	63bb      	str	r3, [r7, #56]	; 0x38
    3d00:	2308      	movs	r3, #8
    3d02:	18fb      	adds	r3, r7, r3
    3d04:	685b      	ldr	r3, [r3, #4]
    3d06:	001a      	movs	r2, r3
    3d08:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d0a:	0019      	movs	r1, r3
    3d0c:	0010      	movs	r0, r2
    3d0e:	f7ff ff51 	bl	3bb4 <u32tobe>
    3d12:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d14:	3304      	adds	r3, #4
    3d16:	63bb      	str	r3, [r7, #56]	; 0x38
    3d18:	2308      	movs	r3, #8
    3d1a:	18fb      	adds	r3, r7, r3
    3d1c:	689b      	ldr	r3, [r3, #8]
    3d1e:	001a      	movs	r2, r3
    3d20:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d22:	0019      	movs	r1, r3
    3d24:	0010      	movs	r0, r2
    3d26:	f7ff ff45 	bl	3bb4 <u32tobe>
    3d2a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d2c:	3304      	adds	r3, #4
    3d2e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d30:	2308      	movs	r3, #8
    3d32:	18fb      	adds	r3, r7, r3
    3d34:	68db      	ldr	r3, [r3, #12]
    3d36:	001a      	movs	r2, r3
    3d38:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d3a:	0019      	movs	r1, r3
    3d3c:	0010      	movs	r0, r2
    3d3e:	f7ff ff39 	bl	3bb4 <u32tobe>
    3d42:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d44:	3304      	adds	r3, #4
    3d46:	63bb      	str	r3, [r7, #56]	; 0x38
    3d48:	2308      	movs	r3, #8
    3d4a:	18fb      	adds	r3, r7, r3
    3d4c:	691b      	ldr	r3, [r3, #16]
    3d4e:	001a      	movs	r2, r3
    3d50:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d52:	0019      	movs	r1, r3
    3d54:	0010      	movs	r0, r2
    3d56:	f7ff ff2d 	bl	3bb4 <u32tobe>
    3d5a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d5c:	3304      	adds	r3, #4
    3d5e:	63bb      	str	r3, [r7, #56]	; 0x38
    3d60:	2308      	movs	r3, #8
    3d62:	18fb      	adds	r3, r7, r3
    3d64:	695b      	ldr	r3, [r3, #20]
    3d66:	001a      	movs	r2, r3
    3d68:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d6a:	0019      	movs	r1, r3
    3d6c:	0010      	movs	r0, r2
    3d6e:	f7ff ff21 	bl	3bb4 <u32tobe>
    3d72:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d74:	3304      	adds	r3, #4
    3d76:	63bb      	str	r3, [r7, #56]	; 0x38
    3d78:	2308      	movs	r3, #8
    3d7a:	18fb      	adds	r3, r7, r3
    3d7c:	699b      	ldr	r3, [r3, #24]
    3d7e:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d80:	0011      	movs	r1, r2
    3d82:	0018      	movs	r0, r3
    3d84:	f7ff ff16 	bl	3bb4 <u32tobe>
    3d88:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3d8a:	3304      	adds	r3, #4
    3d8c:	63bb      	str	r3, [r7, #56]	; 0x38
    3d8e:	2308      	movs	r3, #8
    3d90:	18fb      	adds	r3, r7, r3
    3d92:	69db      	ldr	r3, [r3, #28]
    3d94:	6bba      	ldr	r2, [r7, #56]	; 0x38
    3d96:	0011      	movs	r1, r2
    3d98:	0018      	movs	r0, r3
    3d9a:	f7ff ff0b 	bl	3bb4 <u32tobe>
    3d9e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    3da0:	3304      	adds	r3, #4
    3da2:	63bb      	str	r3, [r7, #56]	; 0x38
    3da4:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3da6:	6abb      	ldr	r3, [r7, #40]	; 0x28
    3da8:	18d3      	adds	r3, r2, r3
    3daa:	63fb      	str	r3, [r7, #60]	; 0x3c
    3dac:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dae:	3320      	adds	r3, #32
    3db0:	001a      	movs	r2, r3
    3db2:	23fc      	movs	r3, #252	; 0xfc
    3db4:	33ff      	adds	r3, #255	; 0xff
    3db6:	429a      	cmp	r2, r3
    3db8:	d989      	bls.n	3cce <pdu_read_fifo_queue+0xd2>
    3dba:	e000      	b.n	3dbe <pdu_read_fifo_queue+0x1c2>
    3dbc:	46c0      	nop			; (mov r8, r8)
    3dbe:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3dc0:	b29a      	uxth	r2, r3
    3dc2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3dc4:	b29b      	uxth	r3, r3
    3dc6:	1ad3      	subs	r3, r2, r3
    3dc8:	b29b      	uxth	r3, r3
    3dca:	3302      	adds	r3, #2
    3dcc:	b298      	uxth	r0, r3
    3dce:	687b      	ldr	r3, [r7, #4]
    3dd0:	1c5a      	adds	r2, r3, #1
    3dd2:	4b0c      	ldr	r3, [pc, #48]	; (3e04 <pdu_read_fifo_queue+0x208>)
    3dd4:	18d3      	adds	r3, r2, r3
    3dd6:	0019      	movs	r1, r3
    3dd8:	f7ff fed0 	bl	3b7c <u16tobe>
    3ddc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    3dde:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    3de0:	1ad3      	subs	r3, r2, r3
    3de2:	105b      	asrs	r3, r3, #1
    3de4:	b298      	uxth	r0, r3
    3de6:	687b      	ldr	r3, [r7, #4]
    3de8:	1cda      	adds	r2, r3, #3
    3dea:	4b06      	ldr	r3, [pc, #24]	; (3e04 <pdu_read_fifo_queue+0x208>)
    3dec:	18d3      	adds	r3, r2, r3
    3dee:	0019      	movs	r1, r3
    3df0:	f7ff fec4 	bl	3b7c <u16tobe>
    3df4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    3df6:	0018      	movs	r0, r3
    3df8:	46bd      	mov	sp, r7
    3dfa:	b010      	add	sp, #64	; 0x40
    3dfc:	bd80      	pop	{r7, pc}
    3dfe:	46c0      	nop			; (mov r8, r8)
    3e00:	20005db8 	.word	0x20005db8
    3e04:	20005dbc 	.word	0x20005dbc

00003e08 <pdu_read_holding_registers>:
    3e08:	b580      	push	{r7, lr}
    3e0a:	b086      	sub	sp, #24
    3e0c:	af00      	add	r7, sp, #0
    3e0e:	6078      	str	r0, [r7, #4]
    3e10:	4b49      	ldr	r3, [pc, #292]	; (3f38 <pdu_read_holding_registers+0x130>)
    3e12:	681a      	ldr	r2, [r3, #0]
    3e14:	687b      	ldr	r3, [r7, #4]
    3e16:	18d2      	adds	r2, r2, r3
    3e18:	230f      	movs	r3, #15
    3e1a:	18fb      	adds	r3, r7, r3
    3e1c:	7812      	ldrb	r2, [r2, #0]
    3e1e:	701a      	strb	r2, [r3, #0]
    3e20:	4b45      	ldr	r3, [pc, #276]	; (3f38 <pdu_read_holding_registers+0x130>)
    3e22:	681a      	ldr	r2, [r3, #0]
    3e24:	687b      	ldr	r3, [r7, #4]
    3e26:	3301      	adds	r3, #1
    3e28:	18d3      	adds	r3, r2, r3
    3e2a:	781b      	ldrb	r3, [r3, #0]
    3e2c:	021b      	lsls	r3, r3, #8
    3e2e:	b21a      	sxth	r2, r3
    3e30:	4b41      	ldr	r3, [pc, #260]	; (3f38 <pdu_read_holding_registers+0x130>)
    3e32:	6819      	ldr	r1, [r3, #0]
    3e34:	687b      	ldr	r3, [r7, #4]
    3e36:	3302      	adds	r3, #2
    3e38:	18cb      	adds	r3, r1, r3
    3e3a:	781b      	ldrb	r3, [r3, #0]
    3e3c:	b21b      	sxth	r3, r3
    3e3e:	4313      	orrs	r3, r2
    3e40:	b21a      	sxth	r2, r3
    3e42:	230c      	movs	r3, #12
    3e44:	18fb      	adds	r3, r7, r3
    3e46:	801a      	strh	r2, [r3, #0]
    3e48:	4b3b      	ldr	r3, [pc, #236]	; (3f38 <pdu_read_holding_registers+0x130>)
    3e4a:	681a      	ldr	r2, [r3, #0]
    3e4c:	687b      	ldr	r3, [r7, #4]
    3e4e:	3303      	adds	r3, #3
    3e50:	18d3      	adds	r3, r2, r3
    3e52:	781b      	ldrb	r3, [r3, #0]
    3e54:	021b      	lsls	r3, r3, #8
    3e56:	b21a      	sxth	r2, r3
    3e58:	4b37      	ldr	r3, [pc, #220]	; (3f38 <pdu_read_holding_registers+0x130>)
    3e5a:	6819      	ldr	r1, [r3, #0]
    3e5c:	687b      	ldr	r3, [r7, #4]
    3e5e:	3304      	adds	r3, #4
    3e60:	18cb      	adds	r3, r1, r3
    3e62:	781b      	ldrb	r3, [r3, #0]
    3e64:	b21b      	sxth	r3, r3
    3e66:	4313      	orrs	r3, r2
    3e68:	b21a      	sxth	r2, r3
    3e6a:	230a      	movs	r3, #10
    3e6c:	18fb      	adds	r3, r7, r3
    3e6e:	801a      	strh	r2, [r3, #0]
    3e70:	230c      	movs	r3, #12
    3e72:	18fb      	adds	r3, r7, r3
    3e74:	881a      	ldrh	r2, [r3, #0]
    3e76:	230a      	movs	r3, #10
    3e78:	18fb      	adds	r3, r7, r3
    3e7a:	881b      	ldrh	r3, [r3, #0]
    3e7c:	18d3      	adds	r3, r2, r3
    3e7e:	2b18      	cmp	r3, #24
    3e80:	dd14      	ble.n	3eac <pdu_read_holding_registers+0xa4>
    3e82:	687b      	ldr	r3, [r7, #4]
    3e84:	613b      	str	r3, [r7, #16]
    3e86:	693b      	ldr	r3, [r7, #16]
    3e88:	1c5a      	adds	r2, r3, #1
    3e8a:	613a      	str	r2, [r7, #16]
    3e8c:	220f      	movs	r2, #15
    3e8e:	18ba      	adds	r2, r7, r2
    3e90:	7812      	ldrb	r2, [r2, #0]
    3e92:	2180      	movs	r1, #128	; 0x80
    3e94:	4249      	negs	r1, r1
    3e96:	430a      	orrs	r2, r1
    3e98:	b2d1      	uxtb	r1, r2
    3e9a:	4a28      	ldr	r2, [pc, #160]	; (3f3c <pdu_read_holding_registers+0x134>)
    3e9c:	54d1      	strb	r1, [r2, r3]
    3e9e:	693b      	ldr	r3, [r7, #16]
    3ea0:	1c5a      	adds	r2, r3, #1
    3ea2:	613a      	str	r2, [r7, #16]
    3ea4:	4a25      	ldr	r2, [pc, #148]	; (3f3c <pdu_read_holding_registers+0x134>)
    3ea6:	2102      	movs	r1, #2
    3ea8:	54d1      	strb	r1, [r2, r3]
    3eaa:	e03f      	b.n	3f2c <pdu_read_holding_registers+0x124>
    3eac:	687b      	ldr	r3, [r7, #4]
    3eae:	613b      	str	r3, [r7, #16]
    3eb0:	693b      	ldr	r3, [r7, #16]
    3eb2:	1c5a      	adds	r2, r3, #1
    3eb4:	613a      	str	r2, [r7, #16]
    3eb6:	4a21      	ldr	r2, [pc, #132]	; (3f3c <pdu_read_holding_registers+0x134>)
    3eb8:	210f      	movs	r1, #15
    3eba:	1879      	adds	r1, r7, r1
    3ebc:	7809      	ldrb	r1, [r1, #0]
    3ebe:	54d1      	strb	r1, [r2, r3]
    3ec0:	693b      	ldr	r3, [r7, #16]
    3ec2:	1c5a      	adds	r2, r3, #1
    3ec4:	613a      	str	r2, [r7, #16]
    3ec6:	220a      	movs	r2, #10
    3ec8:	18ba      	adds	r2, r7, r2
    3eca:	8812      	ldrh	r2, [r2, #0]
    3ecc:	b2d2      	uxtb	r2, r2
    3ece:	1892      	adds	r2, r2, r2
    3ed0:	b2d1      	uxtb	r1, r2
    3ed2:	4a1a      	ldr	r2, [pc, #104]	; (3f3c <pdu_read_holding_registers+0x134>)
    3ed4:	54d1      	strb	r1, [r2, r3]
    3ed6:	2300      	movs	r3, #0
    3ed8:	617b      	str	r3, [r7, #20]
    3eda:	e021      	b.n	3f20 <pdu_read_holding_registers+0x118>
    3edc:	230c      	movs	r3, #12
    3ede:	18fb      	adds	r3, r7, r3
    3ee0:	881a      	ldrh	r2, [r3, #0]
    3ee2:	697b      	ldr	r3, [r7, #20]
    3ee4:	18d1      	adds	r1, r2, r3
    3ee6:	2308      	movs	r3, #8
    3ee8:	18fb      	adds	r3, r7, r3
    3eea:	4a15      	ldr	r2, [pc, #84]	; (3f40 <pdu_read_holding_registers+0x138>)
    3eec:	0049      	lsls	r1, r1, #1
    3eee:	5a8a      	ldrh	r2, [r1, r2]
    3ef0:	801a      	strh	r2, [r3, #0]
    3ef2:	693b      	ldr	r3, [r7, #16]
    3ef4:	1c5a      	adds	r2, r3, #1
    3ef6:	613a      	str	r2, [r7, #16]
    3ef8:	2208      	movs	r2, #8
    3efa:	18ba      	adds	r2, r7, r2
    3efc:	8812      	ldrh	r2, [r2, #0]
    3efe:	0a12      	lsrs	r2, r2, #8
    3f00:	b292      	uxth	r2, r2
    3f02:	b2d1      	uxtb	r1, r2
    3f04:	4a0d      	ldr	r2, [pc, #52]	; (3f3c <pdu_read_holding_registers+0x134>)
    3f06:	54d1      	strb	r1, [r2, r3]
    3f08:	693b      	ldr	r3, [r7, #16]
    3f0a:	1c5a      	adds	r2, r3, #1
    3f0c:	613a      	str	r2, [r7, #16]
    3f0e:	2208      	movs	r2, #8
    3f10:	18ba      	adds	r2, r7, r2
    3f12:	8812      	ldrh	r2, [r2, #0]
    3f14:	b2d1      	uxtb	r1, r2
    3f16:	4a09      	ldr	r2, [pc, #36]	; (3f3c <pdu_read_holding_registers+0x134>)
    3f18:	54d1      	strb	r1, [r2, r3]
    3f1a:	697b      	ldr	r3, [r7, #20]
    3f1c:	3301      	adds	r3, #1
    3f1e:	617b      	str	r3, [r7, #20]
    3f20:	230a      	movs	r3, #10
    3f22:	18fb      	adds	r3, r7, r3
    3f24:	881a      	ldrh	r2, [r3, #0]
    3f26:	697b      	ldr	r3, [r7, #20]
    3f28:	429a      	cmp	r2, r3
    3f2a:	dcd7      	bgt.n	3edc <pdu_read_holding_registers+0xd4>
    3f2c:	693b      	ldr	r3, [r7, #16]
    3f2e:	0018      	movs	r0, r3
    3f30:	46bd      	mov	sp, r7
    3f32:	b006      	add	sp, #24
    3f34:	bd80      	pop	{r7, pc}
    3f36:	46c0      	nop			; (mov r8, r8)
    3f38:	20005db8 	.word	0x20005db8
    3f3c:	20005dbc 	.word	0x20005dbc
    3f40:	20005d7c 	.word	0x20005d7c

00003f44 <pdu_illegal_function_error>:
    3f44:	b580      	push	{r7, lr}
    3f46:	b084      	sub	sp, #16
    3f48:	af00      	add	r7, sp, #0
    3f4a:	6078      	str	r0, [r7, #4]
    3f4c:	4b10      	ldr	r3, [pc, #64]	; (3f90 <pdu_illegal_function_error+0x4c>)
    3f4e:	681a      	ldr	r2, [r3, #0]
    3f50:	687b      	ldr	r3, [r7, #4]
    3f52:	18d2      	adds	r2, r2, r3
    3f54:	230f      	movs	r3, #15
    3f56:	18fb      	adds	r3, r7, r3
    3f58:	7812      	ldrb	r2, [r2, #0]
    3f5a:	701a      	strb	r2, [r3, #0]
    3f5c:	687b      	ldr	r3, [r7, #4]
    3f5e:	60bb      	str	r3, [r7, #8]
    3f60:	68bb      	ldr	r3, [r7, #8]
    3f62:	1c5a      	adds	r2, r3, #1
    3f64:	60ba      	str	r2, [r7, #8]
    3f66:	220f      	movs	r2, #15
    3f68:	18ba      	adds	r2, r7, r2
    3f6a:	7812      	ldrb	r2, [r2, #0]
    3f6c:	2180      	movs	r1, #128	; 0x80
    3f6e:	4249      	negs	r1, r1
    3f70:	430a      	orrs	r2, r1
    3f72:	b2d1      	uxtb	r1, r2
    3f74:	4a07      	ldr	r2, [pc, #28]	; (3f94 <pdu_illegal_function_error+0x50>)
    3f76:	54d1      	strb	r1, [r2, r3]
    3f78:	68bb      	ldr	r3, [r7, #8]
    3f7a:	1c5a      	adds	r2, r3, #1
    3f7c:	60ba      	str	r2, [r7, #8]
    3f7e:	4a05      	ldr	r2, [pc, #20]	; (3f94 <pdu_illegal_function_error+0x50>)
    3f80:	2101      	movs	r1, #1
    3f82:	54d1      	strb	r1, [r2, r3]
    3f84:	68bb      	ldr	r3, [r7, #8]
    3f86:	0018      	movs	r0, r3
    3f88:	46bd      	mov	sp, r7
    3f8a:	b004      	add	sp, #16
    3f8c:	bd80      	pop	{r7, pc}
    3f8e:	46c0      	nop			; (mov r8, r8)
    3f90:	20005db8 	.word	0x20005db8
    3f94:	20005dbc 	.word	0x20005dbc

00003f98 <mdb_proc_adu>:
    3f98:	b580      	push	{r7, lr}
    3f9a:	b086      	sub	sp, #24
    3f9c:	af00      	add	r7, sp, #0
    3f9e:	6078      	str	r0, [r7, #4]
    3fa0:	4b39      	ldr	r3, [pc, #228]	; (4088 <mdb_proc_adu+0xf0>)
    3fa2:	687a      	ldr	r2, [r7, #4]
    3fa4:	601a      	str	r2, [r3, #0]
    3fa6:	4b38      	ldr	r3, [pc, #224]	; (4088 <mdb_proc_adu+0xf0>)
    3fa8:	681b      	ldr	r3, [r3, #0]
    3faa:	781b      	ldrb	r3, [r3, #0]
    3fac:	021b      	lsls	r3, r3, #8
    3fae:	b21a      	sxth	r2, r3
    3fb0:	4b35      	ldr	r3, [pc, #212]	; (4088 <mdb_proc_adu+0xf0>)
    3fb2:	681b      	ldr	r3, [r3, #0]
    3fb4:	3301      	adds	r3, #1
    3fb6:	781b      	ldrb	r3, [r3, #0]
    3fb8:	b21b      	sxth	r3, r3
    3fba:	4313      	orrs	r3, r2
    3fbc:	b21a      	sxth	r2, r3
    3fbe:	2312      	movs	r3, #18
    3fc0:	18fb      	adds	r3, r7, r3
    3fc2:	801a      	strh	r2, [r3, #0]
    3fc4:	4b30      	ldr	r3, [pc, #192]	; (4088 <mdb_proc_adu+0xf0>)
    3fc6:	681b      	ldr	r3, [r3, #0]
    3fc8:	3302      	adds	r3, #2
    3fca:	781b      	ldrb	r3, [r3, #0]
    3fcc:	021b      	lsls	r3, r3, #8
    3fce:	b21a      	sxth	r2, r3
    3fd0:	4b2d      	ldr	r3, [pc, #180]	; (4088 <mdb_proc_adu+0xf0>)
    3fd2:	681b      	ldr	r3, [r3, #0]
    3fd4:	3303      	adds	r3, #3
    3fd6:	781b      	ldrb	r3, [r3, #0]
    3fd8:	b21b      	sxth	r3, r3
    3fda:	4313      	orrs	r3, r2
    3fdc:	b21a      	sxth	r2, r3
    3fde:	2310      	movs	r3, #16
    3fe0:	18fb      	adds	r3, r7, r3
    3fe2:	801a      	strh	r2, [r3, #0]
    3fe4:	4b28      	ldr	r3, [pc, #160]	; (4088 <mdb_proc_adu+0xf0>)
    3fe6:	681b      	ldr	r3, [r3, #0]
    3fe8:	3304      	adds	r3, #4
    3fea:	781b      	ldrb	r3, [r3, #0]
    3fec:	021b      	lsls	r3, r3, #8
    3fee:	b21a      	sxth	r2, r3
    3ff0:	4b25      	ldr	r3, [pc, #148]	; (4088 <mdb_proc_adu+0xf0>)
    3ff2:	681b      	ldr	r3, [r3, #0]
    3ff4:	3305      	adds	r3, #5
    3ff6:	781b      	ldrb	r3, [r3, #0]
    3ff8:	b21b      	sxth	r3, r3
    3ffa:	4313      	orrs	r3, r2
    3ffc:	b21a      	sxth	r2, r3
    3ffe:	230e      	movs	r3, #14
    4000:	18fb      	adds	r3, r7, r3
    4002:	801a      	strh	r2, [r3, #0]
    4004:	4b20      	ldr	r3, [pc, #128]	; (4088 <mdb_proc_adu+0xf0>)
    4006:	681a      	ldr	r2, [r3, #0]
    4008:	230d      	movs	r3, #13
    400a:	18fb      	adds	r3, r7, r3
    400c:	7992      	ldrb	r2, [r2, #6]
    400e:	701a      	strb	r2, [r3, #0]
    4010:	4b1d      	ldr	r3, [pc, #116]	; (4088 <mdb_proc_adu+0xf0>)
    4012:	681a      	ldr	r2, [r3, #0]
    4014:	230c      	movs	r3, #12
    4016:	18fb      	adds	r3, r7, r3
    4018:	79d2      	ldrb	r2, [r2, #7]
    401a:	701a      	strb	r2, [r3, #0]
    401c:	230d      	movs	r3, #13
    401e:	18fb      	adds	r3, r7, r3
    4020:	781b      	ldrb	r3, [r3, #0]
    4022:	2b11      	cmp	r3, #17
    4024:	d12b      	bne.n	407e <mdb_proc_adu+0xe6>
    4026:	230c      	movs	r3, #12
    4028:	18fb      	adds	r3, r7, r3
    402a:	781a      	ldrb	r2, [r3, #0]
    402c:	4b17      	ldr	r3, [pc, #92]	; (408c <mdb_proc_adu+0xf4>)
    402e:	0092      	lsls	r2, r2, #2
    4030:	58d3      	ldr	r3, [r2, r3]
    4032:	2007      	movs	r0, #7
    4034:	4798      	blx	r3
    4036:	0003      	movs	r3, r0
    4038:	60bb      	str	r3, [r7, #8]
    403a:	2300      	movs	r3, #0
    403c:	617b      	str	r3, [r7, #20]
    403e:	e00c      	b.n	405a <mdb_proc_adu+0xc2>
    4040:	4b11      	ldr	r3, [pc, #68]	; (4088 <mdb_proc_adu+0xf0>)
    4042:	681a      	ldr	r2, [r3, #0]
    4044:	697b      	ldr	r3, [r7, #20]
    4046:	18d3      	adds	r3, r2, r3
    4048:	7819      	ldrb	r1, [r3, #0]
    404a:	4a11      	ldr	r2, [pc, #68]	; (4090 <mdb_proc_adu+0xf8>)
    404c:	697b      	ldr	r3, [r7, #20]
    404e:	18d3      	adds	r3, r2, r3
    4050:	1c0a      	adds	r2, r1, #0
    4052:	701a      	strb	r2, [r3, #0]
    4054:	697b      	ldr	r3, [r7, #20]
    4056:	3301      	adds	r3, #1
    4058:	617b      	str	r3, [r7, #20]
    405a:	697b      	ldr	r3, [r7, #20]
    405c:	2b06      	cmp	r3, #6
    405e:	ddef      	ble.n	4040 <mdb_proc_adu+0xa8>
    4060:	4b0b      	ldr	r3, [pc, #44]	; (4090 <mdb_proc_adu+0xf8>)
    4062:	2200      	movs	r2, #0
    4064:	711a      	strb	r2, [r3, #4]
    4066:	68bb      	ldr	r3, [r7, #8]
    4068:	b2db      	uxtb	r3, r3
    406a:	3b06      	subs	r3, #6
    406c:	b2da      	uxtb	r2, r3
    406e:	4b08      	ldr	r3, [pc, #32]	; (4090 <mdb_proc_adu+0xf8>)
    4070:	715a      	strb	r2, [r3, #5]
    4072:	68ba      	ldr	r2, [r7, #8]
    4074:	4b06      	ldr	r3, [pc, #24]	; (4090 <mdb_proc_adu+0xf8>)
    4076:	0011      	movs	r1, r2
    4078:	0018      	movs	r0, r3
    407a:	f7fe fdcd 	bl	2c18 <Send_UDP>
    407e:	46c0      	nop			; (mov r8, r8)
    4080:	46bd      	mov	sp, r7
    4082:	b006      	add	sp, #24
    4084:	bd80      	pop	{r7, pc}
    4086:	46c0      	nop			; (mov r8, r8)
    4088:	20005db8 	.word	0x20005db8
    408c:	0000919c 	.word	0x0000919c
    4090:	20005dbc 	.word	0x20005dbc

00004094 <fsm_get_mode>:
    4094:	b580      	push	{r7, lr}
    4096:	af00      	add	r7, sp, #0
    4098:	4b02      	ldr	r3, [pc, #8]	; (40a4 <fsm_get_mode+0x10>)
    409a:	781b      	ldrb	r3, [r3, #0]
    409c:	0018      	movs	r0, r3
    409e:	46bd      	mov	sp, r7
    40a0:	bd80      	pop	{r7, pc}
    40a2:	46c0      	nop			; (mov r8, r8)
    40a4:	2000603c 	.word	0x2000603c

000040a8 <fsm_get_cyccnt>:
    40a8:	b580      	push	{r7, lr}
    40aa:	af00      	add	r7, sp, #0
    40ac:	4b02      	ldr	r3, [pc, #8]	; (40b8 <fsm_get_cyccnt+0x10>)
    40ae:	681b      	ldr	r3, [r3, #0]
    40b0:	0018      	movs	r0, r3
    40b2:	46bd      	mov	sp, r7
    40b4:	bd80      	pop	{r7, pc}
    40b6:	46c0      	nop			; (mov r8, r8)
    40b8:	20006008 	.word	0x20006008

000040bc <fsm_idle>:
    40bc:	b580      	push	{r7, lr}
    40be:	b084      	sub	sp, #16
    40c0:	af00      	add	r7, sp, #0
    40c2:	6078      	str	r0, [r7, #4]
    40c4:	230b      	movs	r3, #11
    40c6:	18fb      	adds	r3, r7, r3
    40c8:	687a      	ldr	r2, [r7, #4]
    40ca:	701a      	strb	r2, [r3, #0]
    40cc:	230b      	movs	r3, #11
    40ce:	18fb      	adds	r3, r7, r3
    40d0:	781b      	ldrb	r3, [r3, #0]
    40d2:	2b01      	cmp	r3, #1
    40d4:	d000      	beq.n	40d8 <fsm_idle+0x1c>
    40d6:	e098      	b.n	420a <fsm_idle+0x14e>
    40d8:	4b4e      	ldr	r3, [pc, #312]	; (4214 <fsm_idle+0x158>)
    40da:	0018      	movs	r0, r3
    40dc:	f7ff fa68 	bl	35b0 <mdb_get_testparam>
    40e0:	4b4c      	ldr	r3, [pc, #304]	; (4214 <fsm_idle+0x158>)
    40e2:	681a      	ldr	r2, [r3, #0]
    40e4:	4b4c      	ldr	r3, [pc, #304]	; (4218 <fsm_idle+0x15c>)
    40e6:	601a      	str	r2, [r3, #0]
    40e8:	4b4b      	ldr	r3, [pc, #300]	; (4218 <fsm_idle+0x15c>)
    40ea:	681b      	ldr	r3, [r3, #0]
    40ec:	2b00      	cmp	r3, #0
    40ee:	d100      	bne.n	40f2 <fsm_idle+0x36>
    40f0:	e08b      	b.n	420a <fsm_idle+0x14e>
    40f2:	4b4a      	ldr	r3, [pc, #296]	; (421c <fsm_idle+0x160>)
    40f4:	4a4a      	ldr	r2, [pc, #296]	; (4220 <fsm_idle+0x164>)
    40f6:	601a      	str	r2, [r3, #0]
    40f8:	4b4a      	ldr	r3, [pc, #296]	; (4224 <fsm_idle+0x168>)
    40fa:	2201      	movs	r2, #1
    40fc:	701a      	strb	r2, [r3, #0]
    40fe:	4b4a      	ldr	r3, [pc, #296]	; (4228 <fsm_idle+0x16c>)
    4100:	2200      	movs	r2, #0
    4102:	601a      	str	r2, [r3, #0]
    4104:	4b49      	ldr	r3, [pc, #292]	; (422c <fsm_idle+0x170>)
    4106:	2200      	movs	r2, #0
    4108:	601a      	str	r2, [r3, #0]
    410a:	2300      	movs	r3, #0
    410c:	60fb      	str	r3, [r7, #12]
    410e:	e032      	b.n	4176 <fsm_idle+0xba>
    4110:	4b40      	ldr	r3, [pc, #256]	; (4214 <fsm_idle+0x158>)
    4112:	689b      	ldr	r3, [r3, #8]
    4114:	4a3f      	ldr	r2, [pc, #252]	; (4214 <fsm_idle+0x158>)
    4116:	68f9      	ldr	r1, [r7, #12]
    4118:	3108      	adds	r1, #8
    411a:	0049      	lsls	r1, r1, #1
    411c:	5a8a      	ldrh	r2, [r1, r2]
    411e:	435a      	muls	r2, r3
    4120:	0013      	movs	r3, r2
    4122:	009b      	lsls	r3, r3, #2
    4124:	189b      	adds	r3, r3, r2
    4126:	00db      	lsls	r3, r3, #3
    4128:	189b      	adds	r3, r3, r2
    412a:	2280      	movs	r2, #128	; 0x80
    412c:	0112      	lsls	r2, r2, #4
    412e:	4694      	mov	ip, r2
    4130:	4463      	add	r3, ip
    4132:	0b1b      	lsrs	r3, r3, #12
    4134:	0019      	movs	r1, r3
    4136:	4b3e      	ldr	r3, [pc, #248]	; (4230 <fsm_idle+0x174>)
    4138:	68fa      	ldr	r2, [r7, #12]
    413a:	0092      	lsls	r2, r2, #2
    413c:	50d1      	str	r1, [r2, r3]
    413e:	4b35      	ldr	r3, [pc, #212]	; (4214 <fsm_idle+0x158>)
    4140:	68db      	ldr	r3, [r3, #12]
    4142:	4934      	ldr	r1, [pc, #208]	; (4214 <fsm_idle+0x158>)
    4144:	68fa      	ldr	r2, [r7, #12]
    4146:	320c      	adds	r2, #12
    4148:	0052      	lsls	r2, r2, #1
    414a:	188a      	adds	r2, r1, r2
    414c:	3202      	adds	r2, #2
    414e:	8812      	ldrh	r2, [r2, #0]
    4150:	435a      	muls	r2, r3
    4152:	0013      	movs	r3, r2
    4154:	009b      	lsls	r3, r3, #2
    4156:	189b      	adds	r3, r3, r2
    4158:	00db      	lsls	r3, r3, #3
    415a:	189b      	adds	r3, r3, r2
    415c:	2280      	movs	r2, #128	; 0x80
    415e:	0112      	lsls	r2, r2, #4
    4160:	4694      	mov	ip, r2
    4162:	4463      	add	r3, ip
    4164:	0b1b      	lsrs	r3, r3, #12
    4166:	0019      	movs	r1, r3
    4168:	4b32      	ldr	r3, [pc, #200]	; (4234 <fsm_idle+0x178>)
    416a:	68fa      	ldr	r2, [r7, #12]
    416c:	0092      	lsls	r2, r2, #2
    416e:	50d1      	str	r1, [r2, r3]
    4170:	68fb      	ldr	r3, [r7, #12]
    4172:	3301      	adds	r3, #1
    4174:	60fb      	str	r3, [r7, #12]
    4176:	68fb      	ldr	r3, [r7, #12]
    4178:	2b04      	cmp	r3, #4
    417a:	ddc9      	ble.n	4110 <fsm_idle+0x54>
    417c:	2300      	movs	r3, #0
    417e:	60fb      	str	r3, [r7, #12]
    4180:	e020      	b.n	41c4 <fsm_idle+0x108>
    4182:	68fb      	ldr	r3, [r7, #12]
    4184:	1c5a      	adds	r2, r3, #1
    4186:	4b2b      	ldr	r3, [pc, #172]	; (4234 <fsm_idle+0x178>)
    4188:	0092      	lsls	r2, r2, #2
    418a:	58d2      	ldr	r2, [r2, r3]
    418c:	4b29      	ldr	r3, [pc, #164]	; (4234 <fsm_idle+0x178>)
    418e:	68f9      	ldr	r1, [r7, #12]
    4190:	0089      	lsls	r1, r1, #2
    4192:	58cb      	ldr	r3, [r1, r3]
    4194:	1ad3      	subs	r3, r2, r3
    4196:	0098      	lsls	r0, r3, #2
    4198:	68fb      	ldr	r3, [r7, #12]
    419a:	1c5a      	adds	r2, r3, #1
    419c:	4b24      	ldr	r3, [pc, #144]	; (4230 <fsm_idle+0x174>)
    419e:	0092      	lsls	r2, r2, #2
    41a0:	58d2      	ldr	r2, [r2, r3]
    41a2:	4b23      	ldr	r3, [pc, #140]	; (4230 <fsm_idle+0x174>)
    41a4:	68f9      	ldr	r1, [r7, #12]
    41a6:	0089      	lsls	r1, r1, #2
    41a8:	58cb      	ldr	r3, [r1, r3]
    41aa:	1ad3      	subs	r3, r2, r3
    41ac:	0019      	movs	r1, r3
    41ae:	f000 fbff 	bl	49b0 <__aeabi_idiv>
    41b2:	0003      	movs	r3, r0
    41b4:	0019      	movs	r1, r3
    41b6:	4b20      	ldr	r3, [pc, #128]	; (4238 <fsm_idle+0x17c>)
    41b8:	68fa      	ldr	r2, [r7, #12]
    41ba:	0092      	lsls	r2, r2, #2
    41bc:	50d1      	str	r1, [r2, r3]
    41be:	68fb      	ldr	r3, [r7, #12]
    41c0:	3301      	adds	r3, #1
    41c2:	60fb      	str	r3, [r7, #12]
    41c4:	68fb      	ldr	r3, [r7, #12]
    41c6:	2b03      	cmp	r3, #3
    41c8:	dddb      	ble.n	4182 <fsm_idle+0xc6>
    41ca:	4b19      	ldr	r3, [pc, #100]	; (4230 <fsm_idle+0x174>)
    41cc:	681a      	ldr	r2, [r3, #0]
    41ce:	4b1b      	ldr	r3, [pc, #108]	; (423c <fsm_idle+0x180>)
    41d0:	601a      	str	r2, [r3, #0]
    41d2:	4b17      	ldr	r3, [pc, #92]	; (4230 <fsm_idle+0x174>)
    41d4:	685a      	ldr	r2, [r3, #4]
    41d6:	4b1a      	ldr	r3, [pc, #104]	; (4240 <fsm_idle+0x184>)
    41d8:	601a      	str	r2, [r3, #0]
    41da:	4b16      	ldr	r3, [pc, #88]	; (4234 <fsm_idle+0x178>)
    41dc:	681a      	ldr	r2, [r3, #0]
    41de:	4b19      	ldr	r3, [pc, #100]	; (4244 <fsm_idle+0x188>)
    41e0:	601a      	str	r2, [r3, #0]
    41e2:	4b14      	ldr	r3, [pc, #80]	; (4234 <fsm_idle+0x178>)
    41e4:	685a      	ldr	r2, [r3, #4]
    41e6:	4b18      	ldr	r3, [pc, #96]	; (4248 <fsm_idle+0x18c>)
    41e8:	601a      	str	r2, [r3, #0]
    41ea:	4b13      	ldr	r3, [pc, #76]	; (4238 <fsm_idle+0x17c>)
    41ec:	681a      	ldr	r2, [r3, #0]
    41ee:	4b17      	ldr	r3, [pc, #92]	; (424c <fsm_idle+0x190>)
    41f0:	601a      	str	r2, [r3, #0]
    41f2:	f7fb ffad 	bl	150 <dut_reset_on>
    41f6:	4b07      	ldr	r3, [pc, #28]	; (4214 <fsm_idle+0x158>)
    41f8:	685b      	ldr	r3, [r3, #4]
    41fa:	0018      	movs	r0, r3
    41fc:	f7fb ffb4 	bl	168 <dut_set_speed>
    4200:	4b10      	ldr	r3, [pc, #64]	; (4244 <fsm_idle+0x188>)
    4202:	681b      	ldr	r3, [r3, #0]
    4204:	0018      	movs	r0, r3
    4206:	f7fb ffbd 	bl	184 <dut_set_torque>
    420a:	46c0      	nop			; (mov r8, r8)
    420c:	46bd      	mov	sp, r7
    420e:	b004      	add	sp, #16
    4210:	bd80      	pop	{r7, pc}
    4212:	46c0      	nop			; (mov r8, r8)
    4214:	20006014 	.word	0x20006014
    4218:	20006008 	.word	0x20006008
    421c:	20000014 	.word	0x20000014
    4220:	00004251 	.word	0x00004251
    4224:	2000603c 	.word	0x2000603c
    4228:	2000600c 	.word	0x2000600c
    422c:	20006010 	.word	0x20006010
    4230:	20005fcc 	.word	0x20005fcc
    4234:	20005fe0 	.word	0x20005fe0
    4238:	20005ff4 	.word	0x20005ff4
    423c:	20005fbc 	.word	0x20005fbc
    4240:	20005fc0 	.word	0x20005fc0
    4244:	20005fc4 	.word	0x20005fc4
    4248:	20005fc8 	.word	0x20005fc8
    424c:	20005fb8 	.word	0x20005fb8

00004250 <fsm_work>:
    4250:	b580      	push	{r7, lr}
    4252:	b086      	sub	sp, #24
    4254:	af00      	add	r7, sp, #0
    4256:	6078      	str	r0, [r7, #4]
    4258:	2313      	movs	r3, #19
    425a:	18fb      	adds	r3, r7, r3
    425c:	687a      	ldr	r2, [r7, #4]
    425e:	701a      	strb	r2, [r3, #0]
    4260:	687b      	ldr	r3, [r7, #4]
    4262:	121b      	asrs	r3, r3, #8
    4264:	60fb      	str	r3, [r7, #12]
    4266:	2313      	movs	r3, #19
    4268:	18fb      	adds	r3, r7, r3
    426a:	781b      	ldrb	r3, [r3, #0]
    426c:	2b04      	cmp	r3, #4
    426e:	d000      	beq.n	4272 <fsm_work+0x22>
    4270:	e0fc      	b.n	446c <fsm_work+0x21c>
    4272:	68fb      	ldr	r3, [r7, #12]
    4274:	617b      	str	r3, [r7, #20]
    4276:	f7fb ff5f 	bl	138 <dut_reset_off>
    427a:	4b8d      	ldr	r3, [pc, #564]	; (44b0 <fsm_work+0x260>)
    427c:	689b      	ldr	r3, [r3, #8]
    427e:	001a      	movs	r2, r3
    4280:	697b      	ldr	r3, [r7, #20]
    4282:	429a      	cmp	r2, r3
    4284:	dc29      	bgt.n	42da <fsm_work+0x8a>
    4286:	4b8b      	ldr	r3, [pc, #556]	; (44b4 <fsm_work+0x264>)
    4288:	2201      	movs	r2, #1
    428a:	601a      	str	r2, [r3, #0]
    428c:	4b8a      	ldr	r3, [pc, #552]	; (44b8 <fsm_work+0x268>)
    428e:	2200      	movs	r2, #0
    4290:	601a      	str	r2, [r3, #0]
    4292:	4b8a      	ldr	r3, [pc, #552]	; (44bc <fsm_work+0x26c>)
    4294:	681a      	ldr	r2, [r3, #0]
    4296:	4b8a      	ldr	r3, [pc, #552]	; (44c0 <fsm_work+0x270>)
    4298:	601a      	str	r2, [r3, #0]
    429a:	4b88      	ldr	r3, [pc, #544]	; (44bc <fsm_work+0x26c>)
    429c:	685a      	ldr	r2, [r3, #4]
    429e:	4b89      	ldr	r3, [pc, #548]	; (44c4 <fsm_work+0x274>)
    42a0:	601a      	str	r2, [r3, #0]
    42a2:	4b89      	ldr	r3, [pc, #548]	; (44c8 <fsm_work+0x278>)
    42a4:	681b      	ldr	r3, [r3, #0]
    42a6:	425a      	negs	r2, r3
    42a8:	4b88      	ldr	r3, [pc, #544]	; (44cc <fsm_work+0x27c>)
    42aa:	601a      	str	r2, [r3, #0]
    42ac:	4b86      	ldr	r3, [pc, #536]	; (44c8 <fsm_work+0x278>)
    42ae:	685b      	ldr	r3, [r3, #4]
    42b0:	425a      	negs	r2, r3
    42b2:	4b87      	ldr	r3, [pc, #540]	; (44d0 <fsm_work+0x280>)
    42b4:	601a      	str	r2, [r3, #0]
    42b6:	4b87      	ldr	r3, [pc, #540]	; (44d4 <fsm_work+0x284>)
    42b8:	681b      	ldr	r3, [r3, #0]
    42ba:	425a      	negs	r2, r3
    42bc:	4b86      	ldr	r3, [pc, #536]	; (44d8 <fsm_work+0x288>)
    42be:	601a      	str	r2, [r3, #0]
    42c0:	4b7b      	ldr	r3, [pc, #492]	; (44b0 <fsm_work+0x260>)
    42c2:	685b      	ldr	r3, [r3, #4]
    42c4:	425b      	negs	r3, r3
    42c6:	0018      	movs	r0, r3
    42c8:	f7fb ff4e 	bl	168 <dut_set_speed>
    42cc:	4b7f      	ldr	r3, [pc, #508]	; (44cc <fsm_work+0x27c>)
    42ce:	681b      	ldr	r3, [r3, #0]
    42d0:	425b      	negs	r3, r3
    42d2:	0018      	movs	r0, r3
    42d4:	f7fb ff56 	bl	184 <dut_set_torque>
    42d8:	e0e7      	b.n	44aa <fsm_work+0x25a>
    42da:	4b76      	ldr	r3, [pc, #472]	; (44b4 <fsm_work+0x264>)
    42dc:	681b      	ldr	r3, [r3, #0]
    42de:	2b00      	cmp	r3, #0
    42e0:	d03f      	beq.n	4362 <fsm_work+0x112>
    42e2:	697b      	ldr	r3, [r7, #20]
    42e4:	2b00      	cmp	r3, #0
    42e6:	dc3c      	bgt.n	4362 <fsm_work+0x112>
    42e8:	4b7c      	ldr	r3, [pc, #496]	; (44dc <fsm_work+0x28c>)
    42ea:	681b      	ldr	r3, [r3, #0]
    42ec:	1e5a      	subs	r2, r3, #1
    42ee:	4b7b      	ldr	r3, [pc, #492]	; (44dc <fsm_work+0x28c>)
    42f0:	601a      	str	r2, [r3, #0]
    42f2:	4b70      	ldr	r3, [pc, #448]	; (44b4 <fsm_work+0x264>)
    42f4:	2200      	movs	r2, #0
    42f6:	601a      	str	r2, [r3, #0]
    42f8:	4b6f      	ldr	r3, [pc, #444]	; (44b8 <fsm_work+0x268>)
    42fa:	2200      	movs	r2, #0
    42fc:	601a      	str	r2, [r3, #0]
    42fe:	4b77      	ldr	r3, [pc, #476]	; (44dc <fsm_work+0x28c>)
    4300:	681b      	ldr	r3, [r3, #0]
    4302:	2b00      	cmp	r3, #0
    4304:	d10e      	bne.n	4324 <fsm_work+0xd4>
    4306:	4b76      	ldr	r3, [pc, #472]	; (44e0 <fsm_work+0x290>)
    4308:	4a76      	ldr	r2, [pc, #472]	; (44e4 <fsm_work+0x294>)
    430a:	601a      	str	r2, [r3, #0]
    430c:	4b76      	ldr	r3, [pc, #472]	; (44e8 <fsm_work+0x298>)
    430e:	2204      	movs	r2, #4
    4310:	701a      	strb	r2, [r3, #0]
    4312:	2000      	movs	r0, #0
    4314:	f7fb ff28 	bl	168 <dut_set_speed>
    4318:	2000      	movs	r0, #0
    431a:	f7fb ff33 	bl	184 <dut_set_torque>
    431e:	f7fb ff17 	bl	150 <dut_reset_on>
    4322:	e0c2      	b.n	44aa <fsm_work+0x25a>
    4324:	4b65      	ldr	r3, [pc, #404]	; (44bc <fsm_work+0x26c>)
    4326:	681a      	ldr	r2, [r3, #0]
    4328:	4b65      	ldr	r3, [pc, #404]	; (44c0 <fsm_work+0x270>)
    432a:	601a      	str	r2, [r3, #0]
    432c:	4b63      	ldr	r3, [pc, #396]	; (44bc <fsm_work+0x26c>)
    432e:	685a      	ldr	r2, [r3, #4]
    4330:	4b64      	ldr	r3, [pc, #400]	; (44c4 <fsm_work+0x274>)
    4332:	601a      	str	r2, [r3, #0]
    4334:	4b64      	ldr	r3, [pc, #400]	; (44c8 <fsm_work+0x278>)
    4336:	681a      	ldr	r2, [r3, #0]
    4338:	4b64      	ldr	r3, [pc, #400]	; (44cc <fsm_work+0x27c>)
    433a:	601a      	str	r2, [r3, #0]
    433c:	4b62      	ldr	r3, [pc, #392]	; (44c8 <fsm_work+0x278>)
    433e:	685a      	ldr	r2, [r3, #4]
    4340:	4b63      	ldr	r3, [pc, #396]	; (44d0 <fsm_work+0x280>)
    4342:	601a      	str	r2, [r3, #0]
    4344:	4b63      	ldr	r3, [pc, #396]	; (44d4 <fsm_work+0x284>)
    4346:	681a      	ldr	r2, [r3, #0]
    4348:	4b63      	ldr	r3, [pc, #396]	; (44d8 <fsm_work+0x288>)
    434a:	601a      	str	r2, [r3, #0]
    434c:	4b58      	ldr	r3, [pc, #352]	; (44b0 <fsm_work+0x260>)
    434e:	685b      	ldr	r3, [r3, #4]
    4350:	0018      	movs	r0, r3
    4352:	f7fb ff09 	bl	168 <dut_set_speed>
    4356:	4b5d      	ldr	r3, [pc, #372]	; (44cc <fsm_work+0x27c>)
    4358:	681b      	ldr	r3, [r3, #0]
    435a:	0018      	movs	r0, r3
    435c:	f7fb ff12 	bl	184 <dut_set_torque>
    4360:	e0a3      	b.n	44aa <fsm_work+0x25a>
    4362:	4b54      	ldr	r3, [pc, #336]	; (44b4 <fsm_work+0x264>)
    4364:	681b      	ldr	r3, [r3, #0]
    4366:	2b00      	cmp	r3, #0
    4368:	d03c      	beq.n	43e4 <fsm_work+0x194>
    436a:	4b51      	ldr	r3, [pc, #324]	; (44b0 <fsm_work+0x260>)
    436c:	689b      	ldr	r3, [r3, #8]
    436e:	001a      	movs	r2, r3
    4370:	697b      	ldr	r3, [r7, #20]
    4372:	1ad3      	subs	r3, r2, r3
    4374:	617b      	str	r3, [r7, #20]
    4376:	4b53      	ldr	r3, [pc, #332]	; (44c4 <fsm_work+0x274>)
    4378:	681b      	ldr	r3, [r3, #0]
    437a:	697a      	ldr	r2, [r7, #20]
    437c:	429a      	cmp	r2, r3
    437e:	db64      	blt.n	444a <fsm_work+0x1fa>
    4380:	4b4d      	ldr	r3, [pc, #308]	; (44b8 <fsm_work+0x268>)
    4382:	681b      	ldr	r3, [r3, #0]
    4384:	1c5a      	adds	r2, r3, #1
    4386:	4b4c      	ldr	r3, [pc, #304]	; (44b8 <fsm_work+0x268>)
    4388:	601a      	str	r2, [r3, #0]
    438a:	4b4b      	ldr	r3, [pc, #300]	; (44b8 <fsm_work+0x268>)
    438c:	681b      	ldr	r3, [r3, #0]
    438e:	2b03      	cmp	r3, #3
    4390:	d85b      	bhi.n	444a <fsm_work+0x1fa>
    4392:	4b49      	ldr	r3, [pc, #292]	; (44b8 <fsm_work+0x268>)
    4394:	681a      	ldr	r2, [r3, #0]
    4396:	4b49      	ldr	r3, [pc, #292]	; (44bc <fsm_work+0x26c>)
    4398:	0092      	lsls	r2, r2, #2
    439a:	58d2      	ldr	r2, [r2, r3]
    439c:	4b48      	ldr	r3, [pc, #288]	; (44c0 <fsm_work+0x270>)
    439e:	601a      	str	r2, [r3, #0]
    43a0:	4b45      	ldr	r3, [pc, #276]	; (44b8 <fsm_work+0x268>)
    43a2:	681b      	ldr	r3, [r3, #0]
    43a4:	1c5a      	adds	r2, r3, #1
    43a6:	4b45      	ldr	r3, [pc, #276]	; (44bc <fsm_work+0x26c>)
    43a8:	0092      	lsls	r2, r2, #2
    43aa:	58d2      	ldr	r2, [r2, r3]
    43ac:	4b45      	ldr	r3, [pc, #276]	; (44c4 <fsm_work+0x274>)
    43ae:	601a      	str	r2, [r3, #0]
    43b0:	4b41      	ldr	r3, [pc, #260]	; (44b8 <fsm_work+0x268>)
    43b2:	681a      	ldr	r2, [r3, #0]
    43b4:	4b44      	ldr	r3, [pc, #272]	; (44c8 <fsm_work+0x278>)
    43b6:	0092      	lsls	r2, r2, #2
    43b8:	58d3      	ldr	r3, [r2, r3]
    43ba:	425a      	negs	r2, r3
    43bc:	4b43      	ldr	r3, [pc, #268]	; (44cc <fsm_work+0x27c>)
    43be:	601a      	str	r2, [r3, #0]
    43c0:	4b3d      	ldr	r3, [pc, #244]	; (44b8 <fsm_work+0x268>)
    43c2:	681b      	ldr	r3, [r3, #0]
    43c4:	1c5a      	adds	r2, r3, #1
    43c6:	4b40      	ldr	r3, [pc, #256]	; (44c8 <fsm_work+0x278>)
    43c8:	0092      	lsls	r2, r2, #2
    43ca:	58d3      	ldr	r3, [r2, r3]
    43cc:	425a      	negs	r2, r3
    43ce:	4b40      	ldr	r3, [pc, #256]	; (44d0 <fsm_work+0x280>)
    43d0:	601a      	str	r2, [r3, #0]
    43d2:	4b39      	ldr	r3, [pc, #228]	; (44b8 <fsm_work+0x268>)
    43d4:	681a      	ldr	r2, [r3, #0]
    43d6:	4b3f      	ldr	r3, [pc, #252]	; (44d4 <fsm_work+0x284>)
    43d8:	0092      	lsls	r2, r2, #2
    43da:	58d3      	ldr	r3, [r2, r3]
    43dc:	425a      	negs	r2, r3
    43de:	4b3e      	ldr	r3, [pc, #248]	; (44d8 <fsm_work+0x288>)
    43e0:	601a      	str	r2, [r3, #0]
    43e2:	e032      	b.n	444a <fsm_work+0x1fa>
    43e4:	4b37      	ldr	r3, [pc, #220]	; (44c4 <fsm_work+0x274>)
    43e6:	681b      	ldr	r3, [r3, #0]
    43e8:	697a      	ldr	r2, [r7, #20]
    43ea:	429a      	cmp	r2, r3
    43ec:	db2d      	blt.n	444a <fsm_work+0x1fa>
    43ee:	4b32      	ldr	r3, [pc, #200]	; (44b8 <fsm_work+0x268>)
    43f0:	681b      	ldr	r3, [r3, #0]
    43f2:	1c5a      	adds	r2, r3, #1
    43f4:	4b30      	ldr	r3, [pc, #192]	; (44b8 <fsm_work+0x268>)
    43f6:	601a      	str	r2, [r3, #0]
    43f8:	4b2f      	ldr	r3, [pc, #188]	; (44b8 <fsm_work+0x268>)
    43fa:	681b      	ldr	r3, [r3, #0]
    43fc:	2b03      	cmp	r3, #3
    43fe:	d824      	bhi.n	444a <fsm_work+0x1fa>
    4400:	4b2d      	ldr	r3, [pc, #180]	; (44b8 <fsm_work+0x268>)
    4402:	681a      	ldr	r2, [r3, #0]
    4404:	4b2d      	ldr	r3, [pc, #180]	; (44bc <fsm_work+0x26c>)
    4406:	0092      	lsls	r2, r2, #2
    4408:	58d2      	ldr	r2, [r2, r3]
    440a:	4b2d      	ldr	r3, [pc, #180]	; (44c0 <fsm_work+0x270>)
    440c:	601a      	str	r2, [r3, #0]
    440e:	4b2a      	ldr	r3, [pc, #168]	; (44b8 <fsm_work+0x268>)
    4410:	681b      	ldr	r3, [r3, #0]
    4412:	1c5a      	adds	r2, r3, #1
    4414:	4b29      	ldr	r3, [pc, #164]	; (44bc <fsm_work+0x26c>)
    4416:	0092      	lsls	r2, r2, #2
    4418:	58d2      	ldr	r2, [r2, r3]
    441a:	4b2a      	ldr	r3, [pc, #168]	; (44c4 <fsm_work+0x274>)
    441c:	601a      	str	r2, [r3, #0]
    441e:	4b26      	ldr	r3, [pc, #152]	; (44b8 <fsm_work+0x268>)
    4420:	681a      	ldr	r2, [r3, #0]
    4422:	4b29      	ldr	r3, [pc, #164]	; (44c8 <fsm_work+0x278>)
    4424:	0092      	lsls	r2, r2, #2
    4426:	58d2      	ldr	r2, [r2, r3]
    4428:	4b28      	ldr	r3, [pc, #160]	; (44cc <fsm_work+0x27c>)
    442a:	601a      	str	r2, [r3, #0]
    442c:	4b22      	ldr	r3, [pc, #136]	; (44b8 <fsm_work+0x268>)
    442e:	681b      	ldr	r3, [r3, #0]
    4430:	1c5a      	adds	r2, r3, #1
    4432:	4b25      	ldr	r3, [pc, #148]	; (44c8 <fsm_work+0x278>)
    4434:	0092      	lsls	r2, r2, #2
    4436:	58d2      	ldr	r2, [r2, r3]
    4438:	4b25      	ldr	r3, [pc, #148]	; (44d0 <fsm_work+0x280>)
    443a:	601a      	str	r2, [r3, #0]
    443c:	4b1e      	ldr	r3, [pc, #120]	; (44b8 <fsm_work+0x268>)
    443e:	681a      	ldr	r2, [r3, #0]
    4440:	4b24      	ldr	r3, [pc, #144]	; (44d4 <fsm_work+0x284>)
    4442:	0092      	lsls	r2, r2, #2
    4444:	58d2      	ldr	r2, [r2, r3]
    4446:	4b24      	ldr	r3, [pc, #144]	; (44d8 <fsm_work+0x288>)
    4448:	601a      	str	r2, [r3, #0]
    444a:	4b20      	ldr	r3, [pc, #128]	; (44cc <fsm_work+0x27c>)
    444c:	681b      	ldr	r3, [r3, #0]
    444e:	009a      	lsls	r2, r3, #2
    4450:	4b1b      	ldr	r3, [pc, #108]	; (44c0 <fsm_work+0x270>)
    4452:	681b      	ldr	r3, [r3, #0]
    4454:	6979      	ldr	r1, [r7, #20]
    4456:	1ac9      	subs	r1, r1, r3
    4458:	4b1f      	ldr	r3, [pc, #124]	; (44d8 <fsm_work+0x288>)
    445a:	681b      	ldr	r3, [r3, #0]
    445c:	434b      	muls	r3, r1
    445e:	18d3      	adds	r3, r2, r3
    4460:	60bb      	str	r3, [r7, #8]
    4462:	68bb      	ldr	r3, [r7, #8]
    4464:	109b      	asrs	r3, r3, #2
    4466:	0018      	movs	r0, r3
    4468:	f7fb fe8c 	bl	184 <dut_set_torque>
    446c:	2313      	movs	r3, #19
    446e:	18fb      	adds	r3, r7, r3
    4470:	781b      	ldrb	r3, [r3, #0]
    4472:	2b03      	cmp	r3, #3
    4474:	d10e      	bne.n	4494 <fsm_work+0x244>
    4476:	4b1a      	ldr	r3, [pc, #104]	; (44e0 <fsm_work+0x290>)
    4478:	4a1a      	ldr	r2, [pc, #104]	; (44e4 <fsm_work+0x294>)
    447a:	601a      	str	r2, [r3, #0]
    447c:	4b1a      	ldr	r3, [pc, #104]	; (44e8 <fsm_work+0x298>)
    447e:	2204      	movs	r2, #4
    4480:	701a      	strb	r2, [r3, #0]
    4482:	2000      	movs	r0, #0
    4484:	f7fb fe70 	bl	168 <dut_set_speed>
    4488:	2000      	movs	r0, #0
    448a:	f7fb fe7b 	bl	184 <dut_set_torque>
    448e:	f7fb fe5f 	bl	150 <dut_reset_on>
    4492:	e00a      	b.n	44aa <fsm_work+0x25a>
    4494:	2313      	movs	r3, #19
    4496:	18fb      	adds	r3, r7, r3
    4498:	781b      	ldrb	r3, [r3, #0]
    449a:	2b02      	cmp	r3, #2
    449c:	d105      	bne.n	44aa <fsm_work+0x25a>
    449e:	4b10      	ldr	r3, [pc, #64]	; (44e0 <fsm_work+0x290>)
    44a0:	4a12      	ldr	r2, [pc, #72]	; (44ec <fsm_work+0x29c>)
    44a2:	601a      	str	r2, [r3, #0]
    44a4:	4b10      	ldr	r3, [pc, #64]	; (44e8 <fsm_work+0x298>)
    44a6:	2202      	movs	r2, #2
    44a8:	701a      	strb	r2, [r3, #0]
    44aa:	46bd      	mov	sp, r7
    44ac:	b006      	add	sp, #24
    44ae:	bd80      	pop	{r7, pc}
    44b0:	20006014 	.word	0x20006014
    44b4:	20006010 	.word	0x20006010
    44b8:	2000600c 	.word	0x2000600c
    44bc:	20005fcc 	.word	0x20005fcc
    44c0:	20005fbc 	.word	0x20005fbc
    44c4:	20005fc0 	.word	0x20005fc0
    44c8:	20005fe0 	.word	0x20005fe0
    44cc:	20005fc4 	.word	0x20005fc4
    44d0:	20005fc8 	.word	0x20005fc8
    44d4:	20005ff4 	.word	0x20005ff4
    44d8:	20005fb8 	.word	0x20005fb8
    44dc:	20006008 	.word	0x20006008
    44e0:	20000014 	.word	0x20000014
    44e4:	000044f1 	.word	0x000044f1
    44e8:	2000603c 	.word	0x2000603c
    44ec:	0000454d 	.word	0x0000454d

000044f0 <fsm_clean>:
    44f0:	b580      	push	{r7, lr}
    44f2:	b084      	sub	sp, #16
    44f4:	af00      	add	r7, sp, #0
    44f6:	6078      	str	r0, [r7, #4]
    44f8:	230f      	movs	r3, #15
    44fa:	18fb      	adds	r3, r7, r3
    44fc:	687a      	ldr	r2, [r7, #4]
    44fe:	701a      	strb	r2, [r3, #0]
    4500:	230f      	movs	r3, #15
    4502:	18fb      	adds	r3, r7, r3
    4504:	781b      	ldrb	r3, [r3, #0]
    4506:	2b04      	cmp	r3, #4
    4508:	d110      	bne.n	452c <fsm_clean+0x3c>
    450a:	4b0a      	ldr	r3, [pc, #40]	; (4534 <fsm_clean+0x44>)
    450c:	4a0a      	ldr	r2, [pc, #40]	; (4538 <fsm_clean+0x48>)
    450e:	601a      	str	r2, [r3, #0]
    4510:	4b0a      	ldr	r3, [pc, #40]	; (453c <fsm_clean+0x4c>)
    4512:	2200      	movs	r2, #0
    4514:	701a      	strb	r2, [r3, #0]
    4516:	f7fb fe0f 	bl	138 <dut_reset_off>
    451a:	4b09      	ldr	r3, [pc, #36]	; (4540 <fsm_clean+0x50>)
    451c:	2200      	movs	r2, #0
    451e:	601a      	str	r2, [r3, #0]
    4520:	4b08      	ldr	r3, [pc, #32]	; (4544 <fsm_clean+0x54>)
    4522:	2200      	movs	r2, #0
    4524:	601a      	str	r2, [r3, #0]
    4526:	4b08      	ldr	r3, [pc, #32]	; (4548 <fsm_clean+0x58>)
    4528:	2200      	movs	r2, #0
    452a:	601a      	str	r2, [r3, #0]
    452c:	46c0      	nop			; (mov r8, r8)
    452e:	46bd      	mov	sp, r7
    4530:	b004      	add	sp, #16
    4532:	bd80      	pop	{r7, pc}
    4534:	20000014 	.word	0x20000014
    4538:	000040bd 	.word	0x000040bd
    453c:	2000603c 	.word	0x2000603c
    4540:	20006008 	.word	0x20006008
    4544:	2000600c 	.word	0x2000600c
    4548:	20006010 	.word	0x20006010

0000454c <fsm_complete>:
    454c:	b580      	push	{r7, lr}
    454e:	b086      	sub	sp, #24
    4550:	af00      	add	r7, sp, #0
    4552:	6078      	str	r0, [r7, #4]
    4554:	2313      	movs	r3, #19
    4556:	18fb      	adds	r3, r7, r3
    4558:	687a      	ldr	r2, [r7, #4]
    455a:	701a      	strb	r2, [r3, #0]
    455c:	687b      	ldr	r3, [r7, #4]
    455e:	121b      	asrs	r3, r3, #8
    4560:	60fb      	str	r3, [r7, #12]
    4562:	2313      	movs	r3, #19
    4564:	18fb      	adds	r3, r7, r3
    4566:	781b      	ldrb	r3, [r3, #0]
    4568:	2b04      	cmp	r3, #4
    456a:	d000      	beq.n	456e <fsm_complete+0x22>
    456c:	e0ea      	b.n	4744 <fsm_complete+0x1f8>
    456e:	68fb      	ldr	r3, [r7, #12]
    4570:	617b      	str	r3, [r7, #20]
    4572:	f7fb fde1 	bl	138 <dut_reset_off>
    4576:	4b84      	ldr	r3, [pc, #528]	; (4788 <fsm_complete+0x23c>)
    4578:	689b      	ldr	r3, [r3, #8]
    457a:	001a      	movs	r2, r3
    457c:	697b      	ldr	r3, [r7, #20]
    457e:	429a      	cmp	r2, r3
    4580:	dc29      	bgt.n	45d6 <fsm_complete+0x8a>
    4582:	4b82      	ldr	r3, [pc, #520]	; (478c <fsm_complete+0x240>)
    4584:	2201      	movs	r2, #1
    4586:	601a      	str	r2, [r3, #0]
    4588:	4b81      	ldr	r3, [pc, #516]	; (4790 <fsm_complete+0x244>)
    458a:	2200      	movs	r2, #0
    458c:	601a      	str	r2, [r3, #0]
    458e:	4b81      	ldr	r3, [pc, #516]	; (4794 <fsm_complete+0x248>)
    4590:	681a      	ldr	r2, [r3, #0]
    4592:	4b81      	ldr	r3, [pc, #516]	; (4798 <fsm_complete+0x24c>)
    4594:	601a      	str	r2, [r3, #0]
    4596:	4b7f      	ldr	r3, [pc, #508]	; (4794 <fsm_complete+0x248>)
    4598:	685a      	ldr	r2, [r3, #4]
    459a:	4b80      	ldr	r3, [pc, #512]	; (479c <fsm_complete+0x250>)
    459c:	601a      	str	r2, [r3, #0]
    459e:	4b80      	ldr	r3, [pc, #512]	; (47a0 <fsm_complete+0x254>)
    45a0:	681b      	ldr	r3, [r3, #0]
    45a2:	425a      	negs	r2, r3
    45a4:	4b7f      	ldr	r3, [pc, #508]	; (47a4 <fsm_complete+0x258>)
    45a6:	601a      	str	r2, [r3, #0]
    45a8:	4b7d      	ldr	r3, [pc, #500]	; (47a0 <fsm_complete+0x254>)
    45aa:	685b      	ldr	r3, [r3, #4]
    45ac:	425a      	negs	r2, r3
    45ae:	4b7e      	ldr	r3, [pc, #504]	; (47a8 <fsm_complete+0x25c>)
    45b0:	601a      	str	r2, [r3, #0]
    45b2:	4b7e      	ldr	r3, [pc, #504]	; (47ac <fsm_complete+0x260>)
    45b4:	681b      	ldr	r3, [r3, #0]
    45b6:	425a      	negs	r2, r3
    45b8:	4b7d      	ldr	r3, [pc, #500]	; (47b0 <fsm_complete+0x264>)
    45ba:	601a      	str	r2, [r3, #0]
    45bc:	4b72      	ldr	r3, [pc, #456]	; (4788 <fsm_complete+0x23c>)
    45be:	685b      	ldr	r3, [r3, #4]
    45c0:	425b      	negs	r3, r3
    45c2:	0018      	movs	r0, r3
    45c4:	f7fb fdd0 	bl	168 <dut_set_speed>
    45c8:	4b76      	ldr	r3, [pc, #472]	; (47a4 <fsm_complete+0x258>)
    45ca:	681b      	ldr	r3, [r3, #0]
    45cc:	425b      	negs	r3, r3
    45ce:	0018      	movs	r0, r3
    45d0:	f7fb fdd8 	bl	184 <dut_set_torque>
    45d4:	e0d5      	b.n	4782 <fsm_complete+0x236>
    45d6:	4b6d      	ldr	r3, [pc, #436]	; (478c <fsm_complete+0x240>)
    45d8:	681b      	ldr	r3, [r3, #0]
    45da:	2b00      	cmp	r3, #0
    45dc:	d02d      	beq.n	463a <fsm_complete+0xee>
    45de:	697b      	ldr	r3, [r7, #20]
    45e0:	2b00      	cmp	r3, #0
    45e2:	dc2a      	bgt.n	463a <fsm_complete+0xee>
    45e4:	4b73      	ldr	r3, [pc, #460]	; (47b4 <fsm_complete+0x268>)
    45e6:	681b      	ldr	r3, [r3, #0]
    45e8:	1e5a      	subs	r2, r3, #1
    45ea:	4b72      	ldr	r3, [pc, #456]	; (47b4 <fsm_complete+0x268>)
    45ec:	601a      	str	r2, [r3, #0]
    45ee:	4b67      	ldr	r3, [pc, #412]	; (478c <fsm_complete+0x240>)
    45f0:	2200      	movs	r2, #0
    45f2:	601a      	str	r2, [r3, #0]
    45f4:	4b66      	ldr	r3, [pc, #408]	; (4790 <fsm_complete+0x244>)
    45f6:	2200      	movs	r2, #0
    45f8:	601a      	str	r2, [r3, #0]
    45fa:	4b6e      	ldr	r3, [pc, #440]	; (47b4 <fsm_complete+0x268>)
    45fc:	681b      	ldr	r3, [r3, #0]
    45fe:	2b00      	cmp	r3, #0
    4600:	d10e      	bne.n	4620 <fsm_complete+0xd4>
    4602:	4b6d      	ldr	r3, [pc, #436]	; (47b8 <fsm_complete+0x26c>)
    4604:	4a6d      	ldr	r2, [pc, #436]	; (47bc <fsm_complete+0x270>)
    4606:	601a      	str	r2, [r3, #0]
    4608:	4b6d      	ldr	r3, [pc, #436]	; (47c0 <fsm_complete+0x274>)
    460a:	2204      	movs	r2, #4
    460c:	701a      	strb	r2, [r3, #0]
    460e:	2000      	movs	r0, #0
    4610:	f7fb fdaa 	bl	168 <dut_set_speed>
    4614:	2000      	movs	r0, #0
    4616:	f7fb fdb5 	bl	184 <dut_set_torque>
    461a:	f7fb fd99 	bl	150 <dut_reset_on>
    461e:	e0b0      	b.n	4782 <fsm_complete+0x236>
    4620:	2000      	movs	r0, #0
    4622:	f7fb fda1 	bl	168 <dut_set_speed>
    4626:	2000      	movs	r0, #0
    4628:	f7fb fdac 	bl	184 <dut_set_torque>
    462c:	4b62      	ldr	r3, [pc, #392]	; (47b8 <fsm_complete+0x26c>)
    462e:	4a65      	ldr	r2, [pc, #404]	; (47c4 <fsm_complete+0x278>)
    4630:	601a      	str	r2, [r3, #0]
    4632:	4b63      	ldr	r3, [pc, #396]	; (47c0 <fsm_complete+0x274>)
    4634:	2203      	movs	r2, #3
    4636:	701a      	strb	r2, [r3, #0]
    4638:	e0a3      	b.n	4782 <fsm_complete+0x236>
    463a:	4b54      	ldr	r3, [pc, #336]	; (478c <fsm_complete+0x240>)
    463c:	681b      	ldr	r3, [r3, #0]
    463e:	2b00      	cmp	r3, #0
    4640:	d03c      	beq.n	46bc <fsm_complete+0x170>
    4642:	4b51      	ldr	r3, [pc, #324]	; (4788 <fsm_complete+0x23c>)
    4644:	689b      	ldr	r3, [r3, #8]
    4646:	001a      	movs	r2, r3
    4648:	697b      	ldr	r3, [r7, #20]
    464a:	1ad3      	subs	r3, r2, r3
    464c:	617b      	str	r3, [r7, #20]
    464e:	4b53      	ldr	r3, [pc, #332]	; (479c <fsm_complete+0x250>)
    4650:	681b      	ldr	r3, [r3, #0]
    4652:	697a      	ldr	r2, [r7, #20]
    4654:	429a      	cmp	r2, r3
    4656:	db64      	blt.n	4722 <fsm_complete+0x1d6>
    4658:	4b4d      	ldr	r3, [pc, #308]	; (4790 <fsm_complete+0x244>)
    465a:	681b      	ldr	r3, [r3, #0]
    465c:	1c5a      	adds	r2, r3, #1
    465e:	4b4c      	ldr	r3, [pc, #304]	; (4790 <fsm_complete+0x244>)
    4660:	601a      	str	r2, [r3, #0]
    4662:	4b4b      	ldr	r3, [pc, #300]	; (4790 <fsm_complete+0x244>)
    4664:	681b      	ldr	r3, [r3, #0]
    4666:	2b03      	cmp	r3, #3
    4668:	d85b      	bhi.n	4722 <fsm_complete+0x1d6>
    466a:	4b49      	ldr	r3, [pc, #292]	; (4790 <fsm_complete+0x244>)
    466c:	681a      	ldr	r2, [r3, #0]
    466e:	4b49      	ldr	r3, [pc, #292]	; (4794 <fsm_complete+0x248>)
    4670:	0092      	lsls	r2, r2, #2
    4672:	58d2      	ldr	r2, [r2, r3]
    4674:	4b48      	ldr	r3, [pc, #288]	; (4798 <fsm_complete+0x24c>)
    4676:	601a      	str	r2, [r3, #0]
    4678:	4b45      	ldr	r3, [pc, #276]	; (4790 <fsm_complete+0x244>)
    467a:	681b      	ldr	r3, [r3, #0]
    467c:	1c5a      	adds	r2, r3, #1
    467e:	4b45      	ldr	r3, [pc, #276]	; (4794 <fsm_complete+0x248>)
    4680:	0092      	lsls	r2, r2, #2
    4682:	58d2      	ldr	r2, [r2, r3]
    4684:	4b45      	ldr	r3, [pc, #276]	; (479c <fsm_complete+0x250>)
    4686:	601a      	str	r2, [r3, #0]
    4688:	4b41      	ldr	r3, [pc, #260]	; (4790 <fsm_complete+0x244>)
    468a:	681a      	ldr	r2, [r3, #0]
    468c:	4b44      	ldr	r3, [pc, #272]	; (47a0 <fsm_complete+0x254>)
    468e:	0092      	lsls	r2, r2, #2
    4690:	58d3      	ldr	r3, [r2, r3]
    4692:	425a      	negs	r2, r3
    4694:	4b43      	ldr	r3, [pc, #268]	; (47a4 <fsm_complete+0x258>)
    4696:	601a      	str	r2, [r3, #0]
    4698:	4b3d      	ldr	r3, [pc, #244]	; (4790 <fsm_complete+0x244>)
    469a:	681b      	ldr	r3, [r3, #0]
    469c:	1c5a      	adds	r2, r3, #1
    469e:	4b40      	ldr	r3, [pc, #256]	; (47a0 <fsm_complete+0x254>)
    46a0:	0092      	lsls	r2, r2, #2
    46a2:	58d3      	ldr	r3, [r2, r3]
    46a4:	425a      	negs	r2, r3
    46a6:	4b40      	ldr	r3, [pc, #256]	; (47a8 <fsm_complete+0x25c>)
    46a8:	601a      	str	r2, [r3, #0]
    46aa:	4b39      	ldr	r3, [pc, #228]	; (4790 <fsm_complete+0x244>)
    46ac:	681a      	ldr	r2, [r3, #0]
    46ae:	4b3f      	ldr	r3, [pc, #252]	; (47ac <fsm_complete+0x260>)
    46b0:	0092      	lsls	r2, r2, #2
    46b2:	58d3      	ldr	r3, [r2, r3]
    46b4:	425a      	negs	r2, r3
    46b6:	4b3e      	ldr	r3, [pc, #248]	; (47b0 <fsm_complete+0x264>)
    46b8:	601a      	str	r2, [r3, #0]
    46ba:	e032      	b.n	4722 <fsm_complete+0x1d6>
    46bc:	4b37      	ldr	r3, [pc, #220]	; (479c <fsm_complete+0x250>)
    46be:	681b      	ldr	r3, [r3, #0]
    46c0:	697a      	ldr	r2, [r7, #20]
    46c2:	429a      	cmp	r2, r3
    46c4:	db2d      	blt.n	4722 <fsm_complete+0x1d6>
    46c6:	4b32      	ldr	r3, [pc, #200]	; (4790 <fsm_complete+0x244>)
    46c8:	681b      	ldr	r3, [r3, #0]
    46ca:	1c5a      	adds	r2, r3, #1
    46cc:	4b30      	ldr	r3, [pc, #192]	; (4790 <fsm_complete+0x244>)
    46ce:	601a      	str	r2, [r3, #0]
    46d0:	4b2f      	ldr	r3, [pc, #188]	; (4790 <fsm_complete+0x244>)
    46d2:	681b      	ldr	r3, [r3, #0]
    46d4:	2b03      	cmp	r3, #3
    46d6:	d824      	bhi.n	4722 <fsm_complete+0x1d6>
    46d8:	4b2d      	ldr	r3, [pc, #180]	; (4790 <fsm_complete+0x244>)
    46da:	681a      	ldr	r2, [r3, #0]
    46dc:	4b2d      	ldr	r3, [pc, #180]	; (4794 <fsm_complete+0x248>)
    46de:	0092      	lsls	r2, r2, #2
    46e0:	58d2      	ldr	r2, [r2, r3]
    46e2:	4b2d      	ldr	r3, [pc, #180]	; (4798 <fsm_complete+0x24c>)
    46e4:	601a      	str	r2, [r3, #0]
    46e6:	4b2a      	ldr	r3, [pc, #168]	; (4790 <fsm_complete+0x244>)
    46e8:	681b      	ldr	r3, [r3, #0]
    46ea:	1c5a      	adds	r2, r3, #1
    46ec:	4b29      	ldr	r3, [pc, #164]	; (4794 <fsm_complete+0x248>)
    46ee:	0092      	lsls	r2, r2, #2
    46f0:	58d2      	ldr	r2, [r2, r3]
    46f2:	4b2a      	ldr	r3, [pc, #168]	; (479c <fsm_complete+0x250>)
    46f4:	601a      	str	r2, [r3, #0]
    46f6:	4b26      	ldr	r3, [pc, #152]	; (4790 <fsm_complete+0x244>)
    46f8:	681a      	ldr	r2, [r3, #0]
    46fa:	4b29      	ldr	r3, [pc, #164]	; (47a0 <fsm_complete+0x254>)
    46fc:	0092      	lsls	r2, r2, #2
    46fe:	58d2      	ldr	r2, [r2, r3]
    4700:	4b28      	ldr	r3, [pc, #160]	; (47a4 <fsm_complete+0x258>)
    4702:	601a      	str	r2, [r3, #0]
    4704:	4b22      	ldr	r3, [pc, #136]	; (4790 <fsm_complete+0x244>)
    4706:	681b      	ldr	r3, [r3, #0]
    4708:	1c5a      	adds	r2, r3, #1
    470a:	4b25      	ldr	r3, [pc, #148]	; (47a0 <fsm_complete+0x254>)
    470c:	0092      	lsls	r2, r2, #2
    470e:	58d2      	ldr	r2, [r2, r3]
    4710:	4b25      	ldr	r3, [pc, #148]	; (47a8 <fsm_complete+0x25c>)
    4712:	601a      	str	r2, [r3, #0]
    4714:	4b1e      	ldr	r3, [pc, #120]	; (4790 <fsm_complete+0x244>)
    4716:	681a      	ldr	r2, [r3, #0]
    4718:	4b24      	ldr	r3, [pc, #144]	; (47ac <fsm_complete+0x260>)
    471a:	0092      	lsls	r2, r2, #2
    471c:	58d2      	ldr	r2, [r2, r3]
    471e:	4b24      	ldr	r3, [pc, #144]	; (47b0 <fsm_complete+0x264>)
    4720:	601a      	str	r2, [r3, #0]
    4722:	4b20      	ldr	r3, [pc, #128]	; (47a4 <fsm_complete+0x258>)
    4724:	681b      	ldr	r3, [r3, #0]
    4726:	009a      	lsls	r2, r3, #2
    4728:	4b1b      	ldr	r3, [pc, #108]	; (4798 <fsm_complete+0x24c>)
    472a:	681b      	ldr	r3, [r3, #0]
    472c:	6979      	ldr	r1, [r7, #20]
    472e:	1ac9      	subs	r1, r1, r3
    4730:	4b1f      	ldr	r3, [pc, #124]	; (47b0 <fsm_complete+0x264>)
    4732:	681b      	ldr	r3, [r3, #0]
    4734:	434b      	muls	r3, r1
    4736:	18d3      	adds	r3, r2, r3
    4738:	60bb      	str	r3, [r7, #8]
    473a:	68bb      	ldr	r3, [r7, #8]
    473c:	109b      	asrs	r3, r3, #2
    473e:	0018      	movs	r0, r3
    4740:	f7fb fd20 	bl	184 <dut_set_torque>
    4744:	2313      	movs	r3, #19
    4746:	18fb      	adds	r3, r7, r3
    4748:	781b      	ldrb	r3, [r3, #0]
    474a:	2b03      	cmp	r3, #3
    474c:	d10e      	bne.n	476c <fsm_complete+0x220>
    474e:	4b1a      	ldr	r3, [pc, #104]	; (47b8 <fsm_complete+0x26c>)
    4750:	4a1a      	ldr	r2, [pc, #104]	; (47bc <fsm_complete+0x270>)
    4752:	601a      	str	r2, [r3, #0]
    4754:	4b1a      	ldr	r3, [pc, #104]	; (47c0 <fsm_complete+0x274>)
    4756:	2204      	movs	r2, #4
    4758:	701a      	strb	r2, [r3, #0]
    475a:	2000      	movs	r0, #0
    475c:	f7fb fd04 	bl	168 <dut_set_speed>
    4760:	2000      	movs	r0, #0
    4762:	f7fb fd0f 	bl	184 <dut_set_torque>
    4766:	f7fb fcf3 	bl	150 <dut_reset_on>
    476a:	e00a      	b.n	4782 <fsm_complete+0x236>
    476c:	2313      	movs	r3, #19
    476e:	18fb      	adds	r3, r7, r3
    4770:	781b      	ldrb	r3, [r3, #0]
    4772:	2b02      	cmp	r3, #2
    4774:	d105      	bne.n	4782 <fsm_complete+0x236>
    4776:	4b10      	ldr	r3, [pc, #64]	; (47b8 <fsm_complete+0x26c>)
    4778:	4a13      	ldr	r2, [pc, #76]	; (47c8 <fsm_complete+0x27c>)
    477a:	601a      	str	r2, [r3, #0]
    477c:	4b10      	ldr	r3, [pc, #64]	; (47c0 <fsm_complete+0x274>)
    477e:	2202      	movs	r2, #2
    4780:	701a      	strb	r2, [r3, #0]
    4782:	46bd      	mov	sp, r7
    4784:	b006      	add	sp, #24
    4786:	bd80      	pop	{r7, pc}
    4788:	20006014 	.word	0x20006014
    478c:	20006010 	.word	0x20006010
    4790:	2000600c 	.word	0x2000600c
    4794:	20005fcc 	.word	0x20005fcc
    4798:	20005fbc 	.word	0x20005fbc
    479c:	20005fc0 	.word	0x20005fc0
    47a0:	20005fe0 	.word	0x20005fe0
    47a4:	20005fc4 	.word	0x20005fc4
    47a8:	20005fc8 	.word	0x20005fc8
    47ac:	20005ff4 	.word	0x20005ff4
    47b0:	20005fb8 	.word	0x20005fb8
    47b4:	20006008 	.word	0x20006008
    47b8:	20000014 	.word	0x20000014
    47bc:	000044f1 	.word	0x000044f1
    47c0:	2000603c 	.word	0x2000603c
    47c4:	000047cd 	.word	0x000047cd
    47c8:	0000454d 	.word	0x0000454d

000047cc <fsm_wait>:
    47cc:	b580      	push	{r7, lr}
    47ce:	b084      	sub	sp, #16
    47d0:	af00      	add	r7, sp, #0
    47d2:	6078      	str	r0, [r7, #4]
    47d4:	230f      	movs	r3, #15
    47d6:	18fb      	adds	r3, r7, r3
    47d8:	687a      	ldr	r2, [r7, #4]
    47da:	701a      	strb	r2, [r3, #0]
    47dc:	230f      	movs	r3, #15
    47de:	18fb      	adds	r3, r7, r3
    47e0:	781b      	ldrb	r3, [r3, #0]
    47e2:	2b01      	cmp	r3, #1
    47e4:	d12b      	bne.n	483e <fsm_wait+0x72>
    47e6:	4b1e      	ldr	r3, [pc, #120]	; (4860 <fsm_wait+0x94>)
    47e8:	4a1e      	ldr	r2, [pc, #120]	; (4864 <fsm_wait+0x98>)
    47ea:	601a      	str	r2, [r3, #0]
    47ec:	4b1e      	ldr	r3, [pc, #120]	; (4868 <fsm_wait+0x9c>)
    47ee:	2201      	movs	r2, #1
    47f0:	701a      	strb	r2, [r3, #0]
    47f2:	4b1e      	ldr	r3, [pc, #120]	; (486c <fsm_wait+0xa0>)
    47f4:	2200      	movs	r2, #0
    47f6:	601a      	str	r2, [r3, #0]
    47f8:	4b1d      	ldr	r3, [pc, #116]	; (4870 <fsm_wait+0xa4>)
    47fa:	2200      	movs	r2, #0
    47fc:	601a      	str	r2, [r3, #0]
    47fe:	4b1d      	ldr	r3, [pc, #116]	; (4874 <fsm_wait+0xa8>)
    4800:	681a      	ldr	r2, [r3, #0]
    4802:	4b1d      	ldr	r3, [pc, #116]	; (4878 <fsm_wait+0xac>)
    4804:	601a      	str	r2, [r3, #0]
    4806:	4b1b      	ldr	r3, [pc, #108]	; (4874 <fsm_wait+0xa8>)
    4808:	685a      	ldr	r2, [r3, #4]
    480a:	4b1c      	ldr	r3, [pc, #112]	; (487c <fsm_wait+0xb0>)
    480c:	601a      	str	r2, [r3, #0]
    480e:	4b1c      	ldr	r3, [pc, #112]	; (4880 <fsm_wait+0xb4>)
    4810:	681a      	ldr	r2, [r3, #0]
    4812:	4b1c      	ldr	r3, [pc, #112]	; (4884 <fsm_wait+0xb8>)
    4814:	601a      	str	r2, [r3, #0]
    4816:	4b1a      	ldr	r3, [pc, #104]	; (4880 <fsm_wait+0xb4>)
    4818:	685a      	ldr	r2, [r3, #4]
    481a:	4b1b      	ldr	r3, [pc, #108]	; (4888 <fsm_wait+0xbc>)
    481c:	601a      	str	r2, [r3, #0]
    481e:	4b1b      	ldr	r3, [pc, #108]	; (488c <fsm_wait+0xc0>)
    4820:	681a      	ldr	r2, [r3, #0]
    4822:	4b1b      	ldr	r3, [pc, #108]	; (4890 <fsm_wait+0xc4>)
    4824:	601a      	str	r2, [r3, #0]
    4826:	4b1b      	ldr	r3, [pc, #108]	; (4894 <fsm_wait+0xc8>)
    4828:	685b      	ldr	r3, [r3, #4]
    482a:	0018      	movs	r0, r3
    482c:	f7fb fc9c 	bl	168 <dut_set_speed>
    4830:	4b14      	ldr	r3, [pc, #80]	; (4884 <fsm_wait+0xb8>)
    4832:	681b      	ldr	r3, [r3, #0]
    4834:	0018      	movs	r0, r3
    4836:	f7fb fca5 	bl	184 <dut_set_torque>
    483a:	f7fb fc89 	bl	150 <dut_reset_on>
    483e:	230f      	movs	r3, #15
    4840:	18fb      	adds	r3, r7, r3
    4842:	781b      	ldrb	r3, [r3, #0]
    4844:	2b03      	cmp	r3, #3
    4846:	d107      	bne.n	4858 <fsm_wait+0x8c>
    4848:	4b05      	ldr	r3, [pc, #20]	; (4860 <fsm_wait+0x94>)
    484a:	4a13      	ldr	r2, [pc, #76]	; (4898 <fsm_wait+0xcc>)
    484c:	601a      	str	r2, [r3, #0]
    484e:	4b06      	ldr	r3, [pc, #24]	; (4868 <fsm_wait+0x9c>)
    4850:	2204      	movs	r2, #4
    4852:	701a      	strb	r2, [r3, #0]
    4854:	f7fb fc7c 	bl	150 <dut_reset_on>
    4858:	46c0      	nop			; (mov r8, r8)
    485a:	46bd      	mov	sp, r7
    485c:	b004      	add	sp, #16
    485e:	bd80      	pop	{r7, pc}
    4860:	20000014 	.word	0x20000014
    4864:	00004251 	.word	0x00004251
    4868:	2000603c 	.word	0x2000603c
    486c:	2000600c 	.word	0x2000600c
    4870:	20006010 	.word	0x20006010
    4874:	20005fcc 	.word	0x20005fcc
    4878:	20005fbc 	.word	0x20005fbc
    487c:	20005fc0 	.word	0x20005fc0
    4880:	20005fe0 	.word	0x20005fe0
    4884:	20005fc4 	.word	0x20005fc4
    4888:	20005fc8 	.word	0x20005fc8
    488c:	20005ff4 	.word	0x20005ff4
    4890:	20005fb8 	.word	0x20005fb8
    4894:	20006014 	.word	0x20006014
    4898:	000044f1 	.word	0x000044f1

0000489c <__aeabi_uidiv>:
    489c:	2200      	movs	r2, #0
    489e:	0843      	lsrs	r3, r0, #1
    48a0:	428b      	cmp	r3, r1
    48a2:	d374      	bcc.n	498e <__aeabi_uidiv+0xf2>
    48a4:	0903      	lsrs	r3, r0, #4
    48a6:	428b      	cmp	r3, r1
    48a8:	d35f      	bcc.n	496a <__aeabi_uidiv+0xce>
    48aa:	0a03      	lsrs	r3, r0, #8
    48ac:	428b      	cmp	r3, r1
    48ae:	d344      	bcc.n	493a <__aeabi_uidiv+0x9e>
    48b0:	0b03      	lsrs	r3, r0, #12
    48b2:	428b      	cmp	r3, r1
    48b4:	d328      	bcc.n	4908 <__aeabi_uidiv+0x6c>
    48b6:	0c03      	lsrs	r3, r0, #16
    48b8:	428b      	cmp	r3, r1
    48ba:	d30d      	bcc.n	48d8 <__aeabi_uidiv+0x3c>
    48bc:	22ff      	movs	r2, #255	; 0xff
    48be:	0209      	lsls	r1, r1, #8
    48c0:	ba12      	rev	r2, r2
    48c2:	0c03      	lsrs	r3, r0, #16
    48c4:	428b      	cmp	r3, r1
    48c6:	d302      	bcc.n	48ce <__aeabi_uidiv+0x32>
    48c8:	1212      	asrs	r2, r2, #8
    48ca:	0209      	lsls	r1, r1, #8
    48cc:	d065      	beq.n	499a <__aeabi_uidiv+0xfe>
    48ce:	0b03      	lsrs	r3, r0, #12
    48d0:	428b      	cmp	r3, r1
    48d2:	d319      	bcc.n	4908 <__aeabi_uidiv+0x6c>
    48d4:	e000      	b.n	48d8 <__aeabi_uidiv+0x3c>
    48d6:	0a09      	lsrs	r1, r1, #8
    48d8:	0bc3      	lsrs	r3, r0, #15
    48da:	428b      	cmp	r3, r1
    48dc:	d301      	bcc.n	48e2 <__aeabi_uidiv+0x46>
    48de:	03cb      	lsls	r3, r1, #15
    48e0:	1ac0      	subs	r0, r0, r3
    48e2:	4152      	adcs	r2, r2
    48e4:	0b83      	lsrs	r3, r0, #14
    48e6:	428b      	cmp	r3, r1
    48e8:	d301      	bcc.n	48ee <__aeabi_uidiv+0x52>
    48ea:	038b      	lsls	r3, r1, #14
    48ec:	1ac0      	subs	r0, r0, r3
    48ee:	4152      	adcs	r2, r2
    48f0:	0b43      	lsrs	r3, r0, #13
    48f2:	428b      	cmp	r3, r1
    48f4:	d301      	bcc.n	48fa <__aeabi_uidiv+0x5e>
    48f6:	034b      	lsls	r3, r1, #13
    48f8:	1ac0      	subs	r0, r0, r3
    48fa:	4152      	adcs	r2, r2
    48fc:	0b03      	lsrs	r3, r0, #12
    48fe:	428b      	cmp	r3, r1
    4900:	d301      	bcc.n	4906 <__aeabi_uidiv+0x6a>
    4902:	030b      	lsls	r3, r1, #12
    4904:	1ac0      	subs	r0, r0, r3
    4906:	4152      	adcs	r2, r2
    4908:	0ac3      	lsrs	r3, r0, #11
    490a:	428b      	cmp	r3, r1
    490c:	d301      	bcc.n	4912 <__aeabi_uidiv+0x76>
    490e:	02cb      	lsls	r3, r1, #11
    4910:	1ac0      	subs	r0, r0, r3
    4912:	4152      	adcs	r2, r2
    4914:	0a83      	lsrs	r3, r0, #10
    4916:	428b      	cmp	r3, r1
    4918:	d301      	bcc.n	491e <__aeabi_uidiv+0x82>
    491a:	028b      	lsls	r3, r1, #10
    491c:	1ac0      	subs	r0, r0, r3
    491e:	4152      	adcs	r2, r2
    4920:	0a43      	lsrs	r3, r0, #9
    4922:	428b      	cmp	r3, r1
    4924:	d301      	bcc.n	492a <__aeabi_uidiv+0x8e>
    4926:	024b      	lsls	r3, r1, #9
    4928:	1ac0      	subs	r0, r0, r3
    492a:	4152      	adcs	r2, r2
    492c:	0a03      	lsrs	r3, r0, #8
    492e:	428b      	cmp	r3, r1
    4930:	d301      	bcc.n	4936 <__aeabi_uidiv+0x9a>
    4932:	020b      	lsls	r3, r1, #8
    4934:	1ac0      	subs	r0, r0, r3
    4936:	4152      	adcs	r2, r2
    4938:	d2cd      	bcs.n	48d6 <__aeabi_uidiv+0x3a>
    493a:	09c3      	lsrs	r3, r0, #7
    493c:	428b      	cmp	r3, r1
    493e:	d301      	bcc.n	4944 <__aeabi_uidiv+0xa8>
    4940:	01cb      	lsls	r3, r1, #7
    4942:	1ac0      	subs	r0, r0, r3
    4944:	4152      	adcs	r2, r2
    4946:	0983      	lsrs	r3, r0, #6
    4948:	428b      	cmp	r3, r1
    494a:	d301      	bcc.n	4950 <__aeabi_uidiv+0xb4>
    494c:	018b      	lsls	r3, r1, #6
    494e:	1ac0      	subs	r0, r0, r3
    4950:	4152      	adcs	r2, r2
    4952:	0943      	lsrs	r3, r0, #5
    4954:	428b      	cmp	r3, r1
    4956:	d301      	bcc.n	495c <__aeabi_uidiv+0xc0>
    4958:	014b      	lsls	r3, r1, #5
    495a:	1ac0      	subs	r0, r0, r3
    495c:	4152      	adcs	r2, r2
    495e:	0903      	lsrs	r3, r0, #4
    4960:	428b      	cmp	r3, r1
    4962:	d301      	bcc.n	4968 <__aeabi_uidiv+0xcc>
    4964:	010b      	lsls	r3, r1, #4
    4966:	1ac0      	subs	r0, r0, r3
    4968:	4152      	adcs	r2, r2
    496a:	08c3      	lsrs	r3, r0, #3
    496c:	428b      	cmp	r3, r1
    496e:	d301      	bcc.n	4974 <__aeabi_uidiv+0xd8>
    4970:	00cb      	lsls	r3, r1, #3
    4972:	1ac0      	subs	r0, r0, r3
    4974:	4152      	adcs	r2, r2
    4976:	0883      	lsrs	r3, r0, #2
    4978:	428b      	cmp	r3, r1
    497a:	d301      	bcc.n	4980 <__aeabi_uidiv+0xe4>
    497c:	008b      	lsls	r3, r1, #2
    497e:	1ac0      	subs	r0, r0, r3
    4980:	4152      	adcs	r2, r2
    4982:	0843      	lsrs	r3, r0, #1
    4984:	428b      	cmp	r3, r1
    4986:	d301      	bcc.n	498c <__aeabi_uidiv+0xf0>
    4988:	004b      	lsls	r3, r1, #1
    498a:	1ac0      	subs	r0, r0, r3
    498c:	4152      	adcs	r2, r2
    498e:	1a41      	subs	r1, r0, r1
    4990:	d200      	bcs.n	4994 <__aeabi_uidiv+0xf8>
    4992:	4601      	mov	r1, r0
    4994:	4152      	adcs	r2, r2
    4996:	4610      	mov	r0, r2
    4998:	4770      	bx	lr
    499a:	e7ff      	b.n	499c <__aeabi_uidiv+0x100>
    499c:	b501      	push	{r0, lr}
    499e:	2000      	movs	r0, #0
    49a0:	f000 f8f0 	bl	4b84 <__aeabi_idiv0>
    49a4:	bd02      	pop	{r1, pc}
    49a6:	46c0      	nop			; (mov r8, r8)

000049a8 <__aeabi_uidivmod>:
    49a8:	2900      	cmp	r1, #0
    49aa:	d0f7      	beq.n	499c <__aeabi_uidiv+0x100>
    49ac:	e776      	b.n	489c <__aeabi_uidiv>
    49ae:	4770      	bx	lr

000049b0 <__aeabi_idiv>:
    49b0:	4603      	mov	r3, r0
    49b2:	430b      	orrs	r3, r1
    49b4:	d47f      	bmi.n	4ab6 <__aeabi_idiv+0x106>
    49b6:	2200      	movs	r2, #0
    49b8:	0843      	lsrs	r3, r0, #1
    49ba:	428b      	cmp	r3, r1
    49bc:	d374      	bcc.n	4aa8 <__aeabi_idiv+0xf8>
    49be:	0903      	lsrs	r3, r0, #4
    49c0:	428b      	cmp	r3, r1
    49c2:	d35f      	bcc.n	4a84 <__aeabi_idiv+0xd4>
    49c4:	0a03      	lsrs	r3, r0, #8
    49c6:	428b      	cmp	r3, r1
    49c8:	d344      	bcc.n	4a54 <__aeabi_idiv+0xa4>
    49ca:	0b03      	lsrs	r3, r0, #12
    49cc:	428b      	cmp	r3, r1
    49ce:	d328      	bcc.n	4a22 <__aeabi_idiv+0x72>
    49d0:	0c03      	lsrs	r3, r0, #16
    49d2:	428b      	cmp	r3, r1
    49d4:	d30d      	bcc.n	49f2 <__aeabi_idiv+0x42>
    49d6:	22ff      	movs	r2, #255	; 0xff
    49d8:	0209      	lsls	r1, r1, #8
    49da:	ba12      	rev	r2, r2
    49dc:	0c03      	lsrs	r3, r0, #16
    49de:	428b      	cmp	r3, r1
    49e0:	d302      	bcc.n	49e8 <__aeabi_idiv+0x38>
    49e2:	1212      	asrs	r2, r2, #8
    49e4:	0209      	lsls	r1, r1, #8
    49e6:	d065      	beq.n	4ab4 <__aeabi_idiv+0x104>
    49e8:	0b03      	lsrs	r3, r0, #12
    49ea:	428b      	cmp	r3, r1
    49ec:	d319      	bcc.n	4a22 <__aeabi_idiv+0x72>
    49ee:	e000      	b.n	49f2 <__aeabi_idiv+0x42>
    49f0:	0a09      	lsrs	r1, r1, #8
    49f2:	0bc3      	lsrs	r3, r0, #15
    49f4:	428b      	cmp	r3, r1
    49f6:	d301      	bcc.n	49fc <__aeabi_idiv+0x4c>
    49f8:	03cb      	lsls	r3, r1, #15
    49fa:	1ac0      	subs	r0, r0, r3
    49fc:	4152      	adcs	r2, r2
    49fe:	0b83      	lsrs	r3, r0, #14
    4a00:	428b      	cmp	r3, r1
    4a02:	d301      	bcc.n	4a08 <__aeabi_idiv+0x58>
    4a04:	038b      	lsls	r3, r1, #14
    4a06:	1ac0      	subs	r0, r0, r3
    4a08:	4152      	adcs	r2, r2
    4a0a:	0b43      	lsrs	r3, r0, #13
    4a0c:	428b      	cmp	r3, r1
    4a0e:	d301      	bcc.n	4a14 <__aeabi_idiv+0x64>
    4a10:	034b      	lsls	r3, r1, #13
    4a12:	1ac0      	subs	r0, r0, r3
    4a14:	4152      	adcs	r2, r2
    4a16:	0b03      	lsrs	r3, r0, #12
    4a18:	428b      	cmp	r3, r1
    4a1a:	d301      	bcc.n	4a20 <__aeabi_idiv+0x70>
    4a1c:	030b      	lsls	r3, r1, #12
    4a1e:	1ac0      	subs	r0, r0, r3
    4a20:	4152      	adcs	r2, r2
    4a22:	0ac3      	lsrs	r3, r0, #11
    4a24:	428b      	cmp	r3, r1
    4a26:	d301      	bcc.n	4a2c <__aeabi_idiv+0x7c>
    4a28:	02cb      	lsls	r3, r1, #11
    4a2a:	1ac0      	subs	r0, r0, r3
    4a2c:	4152      	adcs	r2, r2
    4a2e:	0a83      	lsrs	r3, r0, #10
    4a30:	428b      	cmp	r3, r1
    4a32:	d301      	bcc.n	4a38 <__aeabi_idiv+0x88>
    4a34:	028b      	lsls	r3, r1, #10
    4a36:	1ac0      	subs	r0, r0, r3
    4a38:	4152      	adcs	r2, r2
    4a3a:	0a43      	lsrs	r3, r0, #9
    4a3c:	428b      	cmp	r3, r1
    4a3e:	d301      	bcc.n	4a44 <__aeabi_idiv+0x94>
    4a40:	024b      	lsls	r3, r1, #9
    4a42:	1ac0      	subs	r0, r0, r3
    4a44:	4152      	adcs	r2, r2
    4a46:	0a03      	lsrs	r3, r0, #8
    4a48:	428b      	cmp	r3, r1
    4a4a:	d301      	bcc.n	4a50 <__aeabi_idiv+0xa0>
    4a4c:	020b      	lsls	r3, r1, #8
    4a4e:	1ac0      	subs	r0, r0, r3
    4a50:	4152      	adcs	r2, r2
    4a52:	d2cd      	bcs.n	49f0 <__aeabi_idiv+0x40>
    4a54:	09c3      	lsrs	r3, r0, #7
    4a56:	428b      	cmp	r3, r1
    4a58:	d301      	bcc.n	4a5e <__aeabi_idiv+0xae>
    4a5a:	01cb      	lsls	r3, r1, #7
    4a5c:	1ac0      	subs	r0, r0, r3
    4a5e:	4152      	adcs	r2, r2
    4a60:	0983      	lsrs	r3, r0, #6
    4a62:	428b      	cmp	r3, r1
    4a64:	d301      	bcc.n	4a6a <__aeabi_idiv+0xba>
    4a66:	018b      	lsls	r3, r1, #6
    4a68:	1ac0      	subs	r0, r0, r3
    4a6a:	4152      	adcs	r2, r2
    4a6c:	0943      	lsrs	r3, r0, #5
    4a6e:	428b      	cmp	r3, r1
    4a70:	d301      	bcc.n	4a76 <__aeabi_idiv+0xc6>
    4a72:	014b      	lsls	r3, r1, #5
    4a74:	1ac0      	subs	r0, r0, r3
    4a76:	4152      	adcs	r2, r2
    4a78:	0903      	lsrs	r3, r0, #4
    4a7a:	428b      	cmp	r3, r1
    4a7c:	d301      	bcc.n	4a82 <__aeabi_idiv+0xd2>
    4a7e:	010b      	lsls	r3, r1, #4
    4a80:	1ac0      	subs	r0, r0, r3
    4a82:	4152      	adcs	r2, r2
    4a84:	08c3      	lsrs	r3, r0, #3
    4a86:	428b      	cmp	r3, r1
    4a88:	d301      	bcc.n	4a8e <__aeabi_idiv+0xde>
    4a8a:	00cb      	lsls	r3, r1, #3
    4a8c:	1ac0      	subs	r0, r0, r3
    4a8e:	4152      	adcs	r2, r2
    4a90:	0883      	lsrs	r3, r0, #2
    4a92:	428b      	cmp	r3, r1
    4a94:	d301      	bcc.n	4a9a <__aeabi_idiv+0xea>
    4a96:	008b      	lsls	r3, r1, #2
    4a98:	1ac0      	subs	r0, r0, r3
    4a9a:	4152      	adcs	r2, r2
    4a9c:	0843      	lsrs	r3, r0, #1
    4a9e:	428b      	cmp	r3, r1
    4aa0:	d301      	bcc.n	4aa6 <__aeabi_idiv+0xf6>
    4aa2:	004b      	lsls	r3, r1, #1
    4aa4:	1ac0      	subs	r0, r0, r3
    4aa6:	4152      	adcs	r2, r2
    4aa8:	1a41      	subs	r1, r0, r1
    4aaa:	d200      	bcs.n	4aae <__aeabi_idiv+0xfe>
    4aac:	4601      	mov	r1, r0
    4aae:	4152      	adcs	r2, r2
    4ab0:	4610      	mov	r0, r2
    4ab2:	4770      	bx	lr
    4ab4:	e05d      	b.n	4b72 <__aeabi_idiv+0x1c2>
    4ab6:	0fca      	lsrs	r2, r1, #31
    4ab8:	d000      	beq.n	4abc <__aeabi_idiv+0x10c>
    4aba:	4249      	negs	r1, r1
    4abc:	1003      	asrs	r3, r0, #32
    4abe:	d300      	bcc.n	4ac2 <__aeabi_idiv+0x112>
    4ac0:	4240      	negs	r0, r0
    4ac2:	4053      	eors	r3, r2
    4ac4:	2200      	movs	r2, #0
    4ac6:	469c      	mov	ip, r3
    4ac8:	0903      	lsrs	r3, r0, #4
    4aca:	428b      	cmp	r3, r1
    4acc:	d32d      	bcc.n	4b2a <__aeabi_idiv+0x17a>
    4ace:	0a03      	lsrs	r3, r0, #8
    4ad0:	428b      	cmp	r3, r1
    4ad2:	d312      	bcc.n	4afa <__aeabi_idiv+0x14a>
    4ad4:	22fc      	movs	r2, #252	; 0xfc
    4ad6:	0189      	lsls	r1, r1, #6
    4ad8:	ba12      	rev	r2, r2
    4ada:	0a03      	lsrs	r3, r0, #8
    4adc:	428b      	cmp	r3, r1
    4ade:	d30c      	bcc.n	4afa <__aeabi_idiv+0x14a>
    4ae0:	0189      	lsls	r1, r1, #6
    4ae2:	1192      	asrs	r2, r2, #6
    4ae4:	428b      	cmp	r3, r1
    4ae6:	d308      	bcc.n	4afa <__aeabi_idiv+0x14a>
    4ae8:	0189      	lsls	r1, r1, #6
    4aea:	1192      	asrs	r2, r2, #6
    4aec:	428b      	cmp	r3, r1
    4aee:	d304      	bcc.n	4afa <__aeabi_idiv+0x14a>
    4af0:	0189      	lsls	r1, r1, #6
    4af2:	d03a      	beq.n	4b6a <__aeabi_idiv+0x1ba>
    4af4:	1192      	asrs	r2, r2, #6
    4af6:	e000      	b.n	4afa <__aeabi_idiv+0x14a>
    4af8:	0989      	lsrs	r1, r1, #6
    4afa:	09c3      	lsrs	r3, r0, #7
    4afc:	428b      	cmp	r3, r1
    4afe:	d301      	bcc.n	4b04 <__aeabi_idiv+0x154>
    4b00:	01cb      	lsls	r3, r1, #7
    4b02:	1ac0      	subs	r0, r0, r3
    4b04:	4152      	adcs	r2, r2
    4b06:	0983      	lsrs	r3, r0, #6
    4b08:	428b      	cmp	r3, r1
    4b0a:	d301      	bcc.n	4b10 <__aeabi_idiv+0x160>
    4b0c:	018b      	lsls	r3, r1, #6
    4b0e:	1ac0      	subs	r0, r0, r3
    4b10:	4152      	adcs	r2, r2
    4b12:	0943      	lsrs	r3, r0, #5
    4b14:	428b      	cmp	r3, r1
    4b16:	d301      	bcc.n	4b1c <__aeabi_idiv+0x16c>
    4b18:	014b      	lsls	r3, r1, #5
    4b1a:	1ac0      	subs	r0, r0, r3
    4b1c:	4152      	adcs	r2, r2
    4b1e:	0903      	lsrs	r3, r0, #4
    4b20:	428b      	cmp	r3, r1
    4b22:	d301      	bcc.n	4b28 <__aeabi_idiv+0x178>
    4b24:	010b      	lsls	r3, r1, #4
    4b26:	1ac0      	subs	r0, r0, r3
    4b28:	4152      	adcs	r2, r2
    4b2a:	08c3      	lsrs	r3, r0, #3
    4b2c:	428b      	cmp	r3, r1
    4b2e:	d301      	bcc.n	4b34 <__aeabi_idiv+0x184>
    4b30:	00cb      	lsls	r3, r1, #3
    4b32:	1ac0      	subs	r0, r0, r3
    4b34:	4152      	adcs	r2, r2
    4b36:	0883      	lsrs	r3, r0, #2
    4b38:	428b      	cmp	r3, r1
    4b3a:	d301      	bcc.n	4b40 <__aeabi_idiv+0x190>
    4b3c:	008b      	lsls	r3, r1, #2
    4b3e:	1ac0      	subs	r0, r0, r3
    4b40:	4152      	adcs	r2, r2
    4b42:	d2d9      	bcs.n	4af8 <__aeabi_idiv+0x148>
    4b44:	0843      	lsrs	r3, r0, #1
    4b46:	428b      	cmp	r3, r1
    4b48:	d301      	bcc.n	4b4e <__aeabi_idiv+0x19e>
    4b4a:	004b      	lsls	r3, r1, #1
    4b4c:	1ac0      	subs	r0, r0, r3
    4b4e:	4152      	adcs	r2, r2
    4b50:	1a41      	subs	r1, r0, r1
    4b52:	d200      	bcs.n	4b56 <__aeabi_idiv+0x1a6>
    4b54:	4601      	mov	r1, r0
    4b56:	4663      	mov	r3, ip
    4b58:	4152      	adcs	r2, r2
    4b5a:	105b      	asrs	r3, r3, #1
    4b5c:	4610      	mov	r0, r2
    4b5e:	d301      	bcc.n	4b64 <__aeabi_idiv+0x1b4>
    4b60:	4240      	negs	r0, r0
    4b62:	2b00      	cmp	r3, #0
    4b64:	d500      	bpl.n	4b68 <__aeabi_idiv+0x1b8>
    4b66:	4249      	negs	r1, r1
    4b68:	4770      	bx	lr
    4b6a:	4663      	mov	r3, ip
    4b6c:	105b      	asrs	r3, r3, #1
    4b6e:	d300      	bcc.n	4b72 <__aeabi_idiv+0x1c2>
    4b70:	4240      	negs	r0, r0
    4b72:	b501      	push	{r0, lr}
    4b74:	2000      	movs	r0, #0
    4b76:	f000 f805 	bl	4b84 <__aeabi_idiv0>
    4b7a:	bd02      	pop	{r1, pc}

00004b7c <__aeabi_idivmod>:
    4b7c:	2900      	cmp	r1, #0
    4b7e:	d0f8      	beq.n	4b72 <__aeabi_idiv+0x1c2>
    4b80:	e716      	b.n	49b0 <__aeabi_idiv>
    4b82:	4770      	bx	lr

00004b84 <__aeabi_idiv0>:
    4b84:	4770      	bx	lr
    4b86:	46c0      	nop			; (mov r8, r8)

00004b88 <rt_set_PSP>:
    4b88:	f380 8809 	msr	PSP, r0
    4b8c:	4770      	bx	lr

00004b8e <rt_get_PSP>:
    4b8e:	f3ef 8009 	mrs	r0, PSP
    4b92:	4770      	bx	lr

00004b94 <os_set_env>:
    4b94:	4668      	mov	r0, sp
    4b96:	f380 8809 	msr	PSP, r0
    4b9a:	484a      	ldr	r0, [pc, #296]	; (4cc4 <OS_Tick_Handler+0xa>)
    4b9c:	7800      	ldrb	r0, [r0, #0]
    4b9e:	07c0      	lsls	r0, r0, #31
    4ba0:	d103      	bne.n	4baa <PrivilegedE>
    4ba2:	2003      	movs	r0, #3
    4ba4:	f380 8814 	msr	CONTROL, r0
    4ba8:	4770      	bx	lr

00004baa <PrivilegedE>:
    4baa:	2002      	movs	r0, #2
    4bac:	f380 8814 	msr	CONTROL, r0
    4bb0:	4770      	bx	lr

00004bb2 <_alloc_box>:
    4bb2:	4b45      	ldr	r3, [pc, #276]	; (4cc8 <OS_Tick_Handler+0xe>)
    4bb4:	469c      	mov	ip, r3
    4bb6:	f3ef 8305 	mrs	r3, IPSR
    4bba:	061b      	lsls	r3, r3, #24
    4bbc:	d105      	bne.n	4bca <PrivilegedA>
    4bbe:	f3ef 8314 	mrs	r3, CONTROL
    4bc2:	07db      	lsls	r3, r3, #31
    4bc4:	d001      	beq.n	4bca <PrivilegedA>
    4bc6:	df00      	svc	0
    4bc8:	4770      	bx	lr

00004bca <PrivilegedA>:
    4bca:	4760      	bx	ip

00004bcc <_free_box>:
    4bcc:	4b3f      	ldr	r3, [pc, #252]	; (4ccc <OS_Tick_Handler+0x12>)
    4bce:	469c      	mov	ip, r3
    4bd0:	f3ef 8305 	mrs	r3, IPSR
    4bd4:	061b      	lsls	r3, r3, #24
    4bd6:	d105      	bne.n	4be4 <PrivilegedF>
    4bd8:	f3ef 8314 	mrs	r3, CONTROL
    4bdc:	07db      	lsls	r3, r3, #31
    4bde:	d001      	beq.n	4be4 <PrivilegedF>
    4be0:	df00      	svc	0
    4be2:	4770      	bx	lr

00004be4 <PrivilegedF>:
    4be4:	4760      	bx	ip

00004be6 <SVC_Handler>:
    4be6:	f3ef 8009 	mrs	r0, PSP
    4bea:	6981      	ldr	r1, [r0, #24]
    4bec:	3902      	subs	r1, #2
    4bee:	7809      	ldrb	r1, [r1, #0]
    4bf0:	2900      	cmp	r1, #0
    4bf2:	d12b      	bne.n	4c4c <SVC_User>
    4bf4:	46a6      	mov	lr, r4
    4bf6:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4bf8:	46a4      	mov	ip, r4
    4bfa:	4674      	mov	r4, lr
    4bfc:	47e0      	blx	ip
    4bfe:	f3ef 8309 	mrs	r3, PSP
    4c02:	c307      	stmia	r3!, {r0, r1, r2}
    4c04:	4b32      	ldr	r3, [pc, #200]	; (4cd0 <OS_Tick_Handler+0x16>)
    4c06:	cb06      	ldmia	r3!, {r1, r2}
    4c08:	4291      	cmp	r1, r2
    4c0a:	d01c      	beq.n	4c46 <SVC_Exit>
    4c0c:	3b08      	subs	r3, #8
    4c0e:	2900      	cmp	r1, #0
    4c10:	d00d      	beq.n	4c2e <SVC_Next>
    4c12:	f3ef 8009 	mrs	r0, PSP
    4c16:	3820      	subs	r0, #32
    4c18:	6288      	str	r0, [r1, #40]	; 0x28
    4c1a:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4c1c:	4644      	mov	r4, r8
    4c1e:	464d      	mov	r5, r9
    4c20:	4656      	mov	r6, sl
    4c22:	465f      	mov	r7, fp
    4c24:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4c26:	b40c      	push	{r2, r3}
    4c28:	f003 fbe8 	bl	83fc <rt_stk_check>
    4c2c:	bc0c      	pop	{r2, r3}

00004c2e <SVC_Next>:
    4c2e:	601a      	str	r2, [r3, #0]
    4c30:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4c32:	3010      	adds	r0, #16
    4c34:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4c36:	46a0      	mov	r8, r4
    4c38:	46a9      	mov	r9, r5
    4c3a:	46b2      	mov	sl, r6
    4c3c:	46bb      	mov	fp, r7
    4c3e:	f380 8809 	msr	PSP, r0
    4c42:	3820      	subs	r0, #32
    4c44:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004c46 <SVC_Exit>:
    4c46:	2002      	movs	r0, #2
    4c48:	43c0      	mvns	r0, r0
    4c4a:	4700      	bx	r0

00004c4c <SVC_User>:
    4c4c:	b510      	push	{r4, lr}
    4c4e:	4a21      	ldr	r2, [pc, #132]	; (4cd4 <OS_Tick_Handler+0x1a>)
    4c50:	6812      	ldr	r2, [r2, #0]
    4c52:	4291      	cmp	r1, r2
    4c54:	d809      	bhi.n	4c6a <SVC_Done>
    4c56:	4c20      	ldr	r4, [pc, #128]	; (4cd8 <OS_Tick_Handler+0x1e>)
    4c58:	0089      	lsls	r1, r1, #2
    4c5a:	5864      	ldr	r4, [r4, r1]
    4c5c:	46a6      	mov	lr, r4
    4c5e:	c81f      	ldmia	r0, {r0, r1, r2, r3, r4}
    4c60:	46a4      	mov	ip, r4
    4c62:	47f0      	blx	lr
    4c64:	f3ef 8409 	mrs	r4, PSP
    4c68:	c40f      	stmia	r4!, {r0, r1, r2, r3}

00004c6a <SVC_Done>:
    4c6a:	bd10      	pop	{r4, pc}

00004c6c <PendSV_Handler>:
    4c6c:	f003 fb36 	bl	82dc <rt_pop_req>

00004c70 <Sys_Switch>:
    4c70:	4b17      	ldr	r3, [pc, #92]	; (4cd0 <OS_Tick_Handler+0x16>)
    4c72:	cb06      	ldmia	r3!, {r1, r2}
    4c74:	4291      	cmp	r1, r2
    4c76:	d01a      	beq.n	4cae <Sys_Exit>
    4c78:	3b08      	subs	r3, #8
    4c7a:	f3ef 8009 	mrs	r0, PSP
    4c7e:	3820      	subs	r0, #32
    4c80:	6288      	str	r0, [r1, #40]	; 0x28
    4c82:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4c84:	4644      	mov	r4, r8
    4c86:	464d      	mov	r5, r9
    4c88:	4656      	mov	r6, sl
    4c8a:	465f      	mov	r7, fp
    4c8c:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    4c8e:	b40c      	push	{r2, r3}
    4c90:	f003 fbb4 	bl	83fc <rt_stk_check>
    4c94:	bc0c      	pop	{r2, r3}
    4c96:	601a      	str	r2, [r3, #0]
    4c98:	6a90      	ldr	r0, [r2, #40]	; 0x28
    4c9a:	3010      	adds	r0, #16
    4c9c:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    4c9e:	46a0      	mov	r8, r4
    4ca0:	46a9      	mov	r9, r5
    4ca2:	46b2      	mov	sl, r6
    4ca4:	46bb      	mov	fp, r7
    4ca6:	f380 8809 	msr	PSP, r0
    4caa:	3820      	subs	r0, #32
    4cac:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}

00004cae <Sys_Exit>:
    4cae:	2002      	movs	r0, #2
    4cb0:	43c0      	mvns	r0, r0
    4cb2:	4700      	bx	r0

00004cb4 <SysTick_Handler>:
    4cb4:	f003 fb84 	bl	83c0 <rt_systick>
    4cb8:	e7da      	b.n	4c70 <Sys_Switch>

00004cba <OS_Tick_Handler>:
    4cba:	f003 fb7f 	bl	83bc <os_tick_irqack>
    4cbe:	f003 fb7f 	bl	83c0 <rt_systick>
    4cc2:	e7d5      	b.n	4c70 <Sys_Switch>
    4cc4:	00008b1c 	.word	0x00008b1c
    4cc8:	000074f9 	.word	0x000074f9
    4ccc:	00007539 	.word	0x00007539
    4cd0:	200060b8 	.word	0x200060b8
    4cd4:	00000000 	.word	0x00000000
    4cd8:	fffffffc 	.word	0xfffffffc

00004cdc <__aeabi_uldivmod>:
    4cdc:	2b00      	cmp	r3, #0
    4cde:	d111      	bne.n	4d04 <__aeabi_uldivmod+0x28>
    4ce0:	2a00      	cmp	r2, #0
    4ce2:	d10f      	bne.n	4d04 <__aeabi_uldivmod+0x28>
    4ce4:	2900      	cmp	r1, #0
    4ce6:	d100      	bne.n	4cea <__aeabi_uldivmod+0xe>
    4ce8:	2800      	cmp	r0, #0
    4cea:	d002      	beq.n	4cf2 <__aeabi_uldivmod+0x16>
    4cec:	2100      	movs	r1, #0
    4cee:	43c9      	mvns	r1, r1
    4cf0:	1c08      	adds	r0, r1, #0
    4cf2:	b407      	push	{r0, r1, r2}
    4cf4:	4802      	ldr	r0, [pc, #8]	; (4d00 <__aeabi_uldivmod+0x24>)
    4cf6:	a102      	add	r1, pc, #8	; (adr r1, 4d00 <__aeabi_uldivmod+0x24>)
    4cf8:	1840      	adds	r0, r0, r1
    4cfa:	9002      	str	r0, [sp, #8]
    4cfc:	bd03      	pop	{r0, r1, pc}
    4cfe:	46c0      	nop			; (mov r8, r8)
    4d00:	fffffe85 	.word	0xfffffe85
    4d04:	b403      	push	{r0, r1}
    4d06:	4668      	mov	r0, sp
    4d08:	b501      	push	{r0, lr}
    4d0a:	9802      	ldr	r0, [sp, #8]
    4d0c:	f000 f832 	bl	4d74 <__udivmoddi4>
    4d10:	9b01      	ldr	r3, [sp, #4]
    4d12:	469e      	mov	lr, r3
    4d14:	b002      	add	sp, #8
    4d16:	bc0c      	pop	{r2, r3}
    4d18:	4770      	bx	lr
    4d1a:	46c0      	nop			; (mov r8, r8)

00004d1c <__aeabi_lmul>:
    4d1c:	b5f0      	push	{r4, r5, r6, r7, lr}
    4d1e:	464f      	mov	r7, r9
    4d20:	4646      	mov	r6, r8
    4d22:	b4c0      	push	{r6, r7}
    4d24:	0416      	lsls	r6, r2, #16
    4d26:	0c36      	lsrs	r6, r6, #16
    4d28:	4699      	mov	r9, r3
    4d2a:	0033      	movs	r3, r6
    4d2c:	0405      	lsls	r5, r0, #16
    4d2e:	0c2c      	lsrs	r4, r5, #16
    4d30:	0c07      	lsrs	r7, r0, #16
    4d32:	0c15      	lsrs	r5, r2, #16
    4d34:	4363      	muls	r3, r4
    4d36:	437e      	muls	r6, r7
    4d38:	436f      	muls	r7, r5
    4d3a:	4365      	muls	r5, r4
    4d3c:	0c1c      	lsrs	r4, r3, #16
    4d3e:	19ad      	adds	r5, r5, r6
    4d40:	1964      	adds	r4, r4, r5
    4d42:	469c      	mov	ip, r3
    4d44:	42a6      	cmp	r6, r4
    4d46:	d903      	bls.n	4d50 <__aeabi_lmul+0x34>
    4d48:	2380      	movs	r3, #128	; 0x80
    4d4a:	025b      	lsls	r3, r3, #9
    4d4c:	4698      	mov	r8, r3
    4d4e:	4447      	add	r7, r8
    4d50:	4663      	mov	r3, ip
    4d52:	0c25      	lsrs	r5, r4, #16
    4d54:	19ef      	adds	r7, r5, r7
    4d56:	041d      	lsls	r5, r3, #16
    4d58:	464b      	mov	r3, r9
    4d5a:	434a      	muls	r2, r1
    4d5c:	4343      	muls	r3, r0
    4d5e:	0c2d      	lsrs	r5, r5, #16
    4d60:	0424      	lsls	r4, r4, #16
    4d62:	1964      	adds	r4, r4, r5
    4d64:	1899      	adds	r1, r3, r2
    4d66:	19c9      	adds	r1, r1, r7
    4d68:	0020      	movs	r0, r4
    4d6a:	bc0c      	pop	{r2, r3}
    4d6c:	4690      	mov	r8, r2
    4d6e:	4699      	mov	r9, r3
    4d70:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4d72:	46c0      	nop			; (mov r8, r8)

00004d74 <__udivmoddi4>:
    4d74:	b5f0      	push	{r4, r5, r6, r7, lr}
    4d76:	464d      	mov	r5, r9
    4d78:	4656      	mov	r6, sl
    4d7a:	4644      	mov	r4, r8
    4d7c:	465f      	mov	r7, fp
    4d7e:	b4f0      	push	{r4, r5, r6, r7}
    4d80:	4692      	mov	sl, r2
    4d82:	b083      	sub	sp, #12
    4d84:	0004      	movs	r4, r0
    4d86:	000d      	movs	r5, r1
    4d88:	4699      	mov	r9, r3
    4d8a:	428b      	cmp	r3, r1
    4d8c:	d82f      	bhi.n	4dee <__udivmoddi4+0x7a>
    4d8e:	d02c      	beq.n	4dea <__udivmoddi4+0x76>
    4d90:	4649      	mov	r1, r9
    4d92:	4650      	mov	r0, sl
    4d94:	f000 f8ae 	bl	4ef4 <__clzdi2>
    4d98:	0029      	movs	r1, r5
    4d9a:	0006      	movs	r6, r0
    4d9c:	0020      	movs	r0, r4
    4d9e:	f000 f8a9 	bl	4ef4 <__clzdi2>
    4da2:	1a33      	subs	r3, r6, r0
    4da4:	4698      	mov	r8, r3
    4da6:	3b20      	subs	r3, #32
    4da8:	469b      	mov	fp, r3
    4daa:	d500      	bpl.n	4dae <__udivmoddi4+0x3a>
    4dac:	e074      	b.n	4e98 <__udivmoddi4+0x124>
    4dae:	4653      	mov	r3, sl
    4db0:	465a      	mov	r2, fp
    4db2:	4093      	lsls	r3, r2
    4db4:	001f      	movs	r7, r3
    4db6:	4653      	mov	r3, sl
    4db8:	4642      	mov	r2, r8
    4dba:	4093      	lsls	r3, r2
    4dbc:	001e      	movs	r6, r3
    4dbe:	42af      	cmp	r7, r5
    4dc0:	d829      	bhi.n	4e16 <__udivmoddi4+0xa2>
    4dc2:	d026      	beq.n	4e12 <__udivmoddi4+0x9e>
    4dc4:	465b      	mov	r3, fp
    4dc6:	1ba4      	subs	r4, r4, r6
    4dc8:	41bd      	sbcs	r5, r7
    4dca:	2b00      	cmp	r3, #0
    4dcc:	da00      	bge.n	4dd0 <__udivmoddi4+0x5c>
    4dce:	e079      	b.n	4ec4 <__udivmoddi4+0x150>
    4dd0:	2200      	movs	r2, #0
    4dd2:	2300      	movs	r3, #0
    4dd4:	9200      	str	r2, [sp, #0]
    4dd6:	9301      	str	r3, [sp, #4]
    4dd8:	2301      	movs	r3, #1
    4dda:	465a      	mov	r2, fp
    4ddc:	4093      	lsls	r3, r2
    4dde:	9301      	str	r3, [sp, #4]
    4de0:	2301      	movs	r3, #1
    4de2:	4642      	mov	r2, r8
    4de4:	4093      	lsls	r3, r2
    4de6:	9300      	str	r3, [sp, #0]
    4de8:	e019      	b.n	4e1e <__udivmoddi4+0xaa>
    4dea:	4282      	cmp	r2, r0
    4dec:	d9d0      	bls.n	4d90 <__udivmoddi4+0x1c>
    4dee:	2200      	movs	r2, #0
    4df0:	2300      	movs	r3, #0
    4df2:	9200      	str	r2, [sp, #0]
    4df4:	9301      	str	r3, [sp, #4]
    4df6:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4df8:	2b00      	cmp	r3, #0
    4dfa:	d001      	beq.n	4e00 <__udivmoddi4+0x8c>
    4dfc:	601c      	str	r4, [r3, #0]
    4dfe:	605d      	str	r5, [r3, #4]
    4e00:	9800      	ldr	r0, [sp, #0]
    4e02:	9901      	ldr	r1, [sp, #4]
    4e04:	b003      	add	sp, #12
    4e06:	bc3c      	pop	{r2, r3, r4, r5}
    4e08:	4690      	mov	r8, r2
    4e0a:	4699      	mov	r9, r3
    4e0c:	46a2      	mov	sl, r4
    4e0e:	46ab      	mov	fp, r5
    4e10:	bdf0      	pop	{r4, r5, r6, r7, pc}
    4e12:	42a3      	cmp	r3, r4
    4e14:	d9d6      	bls.n	4dc4 <__udivmoddi4+0x50>
    4e16:	2200      	movs	r2, #0
    4e18:	2300      	movs	r3, #0
    4e1a:	9200      	str	r2, [sp, #0]
    4e1c:	9301      	str	r3, [sp, #4]
    4e1e:	4643      	mov	r3, r8
    4e20:	2b00      	cmp	r3, #0
    4e22:	d0e8      	beq.n	4df6 <__udivmoddi4+0x82>
    4e24:	07fb      	lsls	r3, r7, #31
    4e26:	0872      	lsrs	r2, r6, #1
    4e28:	431a      	orrs	r2, r3
    4e2a:	4646      	mov	r6, r8
    4e2c:	087b      	lsrs	r3, r7, #1
    4e2e:	e00e      	b.n	4e4e <__udivmoddi4+0xda>
    4e30:	42ab      	cmp	r3, r5
    4e32:	d101      	bne.n	4e38 <__udivmoddi4+0xc4>
    4e34:	42a2      	cmp	r2, r4
    4e36:	d80c      	bhi.n	4e52 <__udivmoddi4+0xde>
    4e38:	1aa4      	subs	r4, r4, r2
    4e3a:	419d      	sbcs	r5, r3
    4e3c:	2001      	movs	r0, #1
    4e3e:	1924      	adds	r4, r4, r4
    4e40:	416d      	adcs	r5, r5
    4e42:	2100      	movs	r1, #0
    4e44:	3e01      	subs	r6, #1
    4e46:	1824      	adds	r4, r4, r0
    4e48:	414d      	adcs	r5, r1
    4e4a:	2e00      	cmp	r6, #0
    4e4c:	d006      	beq.n	4e5c <__udivmoddi4+0xe8>
    4e4e:	42ab      	cmp	r3, r5
    4e50:	d9ee      	bls.n	4e30 <__udivmoddi4+0xbc>
    4e52:	3e01      	subs	r6, #1
    4e54:	1924      	adds	r4, r4, r4
    4e56:	416d      	adcs	r5, r5
    4e58:	2e00      	cmp	r6, #0
    4e5a:	d1f8      	bne.n	4e4e <__udivmoddi4+0xda>
    4e5c:	465b      	mov	r3, fp
    4e5e:	9800      	ldr	r0, [sp, #0]
    4e60:	9901      	ldr	r1, [sp, #4]
    4e62:	1900      	adds	r0, r0, r4
    4e64:	4169      	adcs	r1, r5
    4e66:	2b00      	cmp	r3, #0
    4e68:	db22      	blt.n	4eb0 <__udivmoddi4+0x13c>
    4e6a:	002b      	movs	r3, r5
    4e6c:	465a      	mov	r2, fp
    4e6e:	40d3      	lsrs	r3, r2
    4e70:	002a      	movs	r2, r5
    4e72:	4644      	mov	r4, r8
    4e74:	40e2      	lsrs	r2, r4
    4e76:	001c      	movs	r4, r3
    4e78:	465b      	mov	r3, fp
    4e7a:	0015      	movs	r5, r2
    4e7c:	2b00      	cmp	r3, #0
    4e7e:	db2c      	blt.n	4eda <__udivmoddi4+0x166>
    4e80:	0026      	movs	r6, r4
    4e82:	409e      	lsls	r6, r3
    4e84:	0033      	movs	r3, r6
    4e86:	0026      	movs	r6, r4
    4e88:	4647      	mov	r7, r8
    4e8a:	40be      	lsls	r6, r7
    4e8c:	0032      	movs	r2, r6
    4e8e:	1a80      	subs	r0, r0, r2
    4e90:	4199      	sbcs	r1, r3
    4e92:	9000      	str	r0, [sp, #0]
    4e94:	9101      	str	r1, [sp, #4]
    4e96:	e7ae      	b.n	4df6 <__udivmoddi4+0x82>
    4e98:	4642      	mov	r2, r8
    4e9a:	2320      	movs	r3, #32
    4e9c:	1a9b      	subs	r3, r3, r2
    4e9e:	4652      	mov	r2, sl
    4ea0:	40da      	lsrs	r2, r3
    4ea2:	4641      	mov	r1, r8
    4ea4:	0013      	movs	r3, r2
    4ea6:	464a      	mov	r2, r9
    4ea8:	408a      	lsls	r2, r1
    4eaa:	0017      	movs	r7, r2
    4eac:	431f      	orrs	r7, r3
    4eae:	e782      	b.n	4db6 <__udivmoddi4+0x42>
    4eb0:	4642      	mov	r2, r8
    4eb2:	2320      	movs	r3, #32
    4eb4:	1a9b      	subs	r3, r3, r2
    4eb6:	002a      	movs	r2, r5
    4eb8:	4646      	mov	r6, r8
    4eba:	409a      	lsls	r2, r3
    4ebc:	0023      	movs	r3, r4
    4ebe:	40f3      	lsrs	r3, r6
    4ec0:	4313      	orrs	r3, r2
    4ec2:	e7d5      	b.n	4e70 <__udivmoddi4+0xfc>
    4ec4:	4642      	mov	r2, r8
    4ec6:	2320      	movs	r3, #32
    4ec8:	2100      	movs	r1, #0
    4eca:	1a9b      	subs	r3, r3, r2
    4ecc:	2200      	movs	r2, #0
    4ece:	9100      	str	r1, [sp, #0]
    4ed0:	9201      	str	r2, [sp, #4]
    4ed2:	2201      	movs	r2, #1
    4ed4:	40da      	lsrs	r2, r3
    4ed6:	9201      	str	r2, [sp, #4]
    4ed8:	e782      	b.n	4de0 <__udivmoddi4+0x6c>
    4eda:	4642      	mov	r2, r8
    4edc:	2320      	movs	r3, #32
    4ede:	0026      	movs	r6, r4
    4ee0:	1a9b      	subs	r3, r3, r2
    4ee2:	40de      	lsrs	r6, r3
    4ee4:	002f      	movs	r7, r5
    4ee6:	46b4      	mov	ip, r6
    4ee8:	4097      	lsls	r7, r2
    4eea:	4666      	mov	r6, ip
    4eec:	003b      	movs	r3, r7
    4eee:	4333      	orrs	r3, r6
    4ef0:	e7c9      	b.n	4e86 <__udivmoddi4+0x112>
    4ef2:	46c0      	nop			; (mov r8, r8)

00004ef4 <__clzdi2>:
    4ef4:	b510      	push	{r4, lr}
    4ef6:	2900      	cmp	r1, #0
    4ef8:	d103      	bne.n	4f02 <__clzdi2+0xe>
    4efa:	f000 f807 	bl	4f0c <__clzsi2>
    4efe:	3020      	adds	r0, #32
    4f00:	e002      	b.n	4f08 <__clzdi2+0x14>
    4f02:	1c08      	adds	r0, r1, #0
    4f04:	f000 f802 	bl	4f0c <__clzsi2>
    4f08:	bd10      	pop	{r4, pc}
    4f0a:	46c0      	nop			; (mov r8, r8)

00004f0c <__clzsi2>:
    4f0c:	211c      	movs	r1, #28
    4f0e:	2301      	movs	r3, #1
    4f10:	041b      	lsls	r3, r3, #16
    4f12:	4298      	cmp	r0, r3
    4f14:	d301      	bcc.n	4f1a <__clzsi2+0xe>
    4f16:	0c00      	lsrs	r0, r0, #16
    4f18:	3910      	subs	r1, #16
    4f1a:	0a1b      	lsrs	r3, r3, #8
    4f1c:	4298      	cmp	r0, r3
    4f1e:	d301      	bcc.n	4f24 <__clzsi2+0x18>
    4f20:	0a00      	lsrs	r0, r0, #8
    4f22:	3908      	subs	r1, #8
    4f24:	091b      	lsrs	r3, r3, #4
    4f26:	4298      	cmp	r0, r3
    4f28:	d301      	bcc.n	4f2e <__clzsi2+0x22>
    4f2a:	0900      	lsrs	r0, r0, #4
    4f2c:	3904      	subs	r1, #4
    4f2e:	a202      	add	r2, pc, #8	; (adr r2, 4f38 <__clzsi2+0x2c>)
    4f30:	5c10      	ldrb	r0, [r2, r0]
    4f32:	1840      	adds	r0, r0, r1
    4f34:	4770      	bx	lr
    4f36:	46c0      	nop			; (mov r8, r8)
    4f38:	02020304 	.word	0x02020304
    4f3c:	01010101 	.word	0x01010101
	...

00004f48 <atexit>:
    4f48:	b510      	push	{r4, lr}
    4f4a:	0001      	movs	r1, r0
    4f4c:	2300      	movs	r3, #0
    4f4e:	2200      	movs	r2, #0
    4f50:	2000      	movs	r0, #0
    4f52:	f000 f8ed 	bl	5130 <__register_exitproc>
    4f56:	bd10      	pop	{r4, pc}

00004f58 <exit>:
    4f58:	b510      	push	{r4, lr}
    4f5a:	2100      	movs	r1, #0
    4f5c:	0004      	movs	r4, r0
    4f5e:	f000 f95d 	bl	521c <__call_exitprocs>
    4f62:	4b04      	ldr	r3, [pc, #16]	; (4f74 <exit+0x1c>)
    4f64:	6818      	ldr	r0, [r3, #0]
    4f66:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    4f68:	2b00      	cmp	r3, #0
    4f6a:	d000      	beq.n	4f6e <exit+0x16>
    4f6c:	4798      	blx	r3
    4f6e:	0020      	movs	r0, r4
    4f70:	f7fb fda2 	bl	ab8 <_exit>
    4f74:	0000959c 	.word	0x0000959c

00004f78 <__libc_fini_array>:
    4f78:	b570      	push	{r4, r5, r6, lr}
    4f7a:	4b09      	ldr	r3, [pc, #36]	; (4fa0 <__libc_fini_array+0x28>)
    4f7c:	4c09      	ldr	r4, [pc, #36]	; (4fa4 <__libc_fini_array+0x2c>)
    4f7e:	1ae4      	subs	r4, r4, r3
    4f80:	10a4      	asrs	r4, r4, #2
    4f82:	d009      	beq.n	4f98 <__libc_fini_array+0x20>
    4f84:	4a08      	ldr	r2, [pc, #32]	; (4fa8 <__libc_fini_array+0x30>)
    4f86:	18a5      	adds	r5, r4, r2
    4f88:	00ad      	lsls	r5, r5, #2
    4f8a:	18ed      	adds	r5, r5, r3
    4f8c:	682b      	ldr	r3, [r5, #0]
    4f8e:	3c01      	subs	r4, #1
    4f90:	4798      	blx	r3
    4f92:	3d04      	subs	r5, #4
    4f94:	2c00      	cmp	r4, #0
    4f96:	d1f9      	bne.n	4f8c <__libc_fini_array+0x14>
    4f98:	f7fb feda 	bl	d50 <_fini>
    4f9c:	bd70      	pop	{r4, r5, r6, pc}
    4f9e:	46c0      	nop			; (mov r8, r8)
	...
    4fa8:	3fffffff 	.word	0x3fffffff

00004fac <__libc_init_array>:
    4fac:	b570      	push	{r4, r5, r6, lr}
    4fae:	4e0d      	ldr	r6, [pc, #52]	; (4fe4 <__libc_init_array+0x38>)
    4fb0:	4d0d      	ldr	r5, [pc, #52]	; (4fe8 <__libc_init_array+0x3c>)
    4fb2:	2400      	movs	r4, #0
    4fb4:	1bad      	subs	r5, r5, r6
    4fb6:	10ad      	asrs	r5, r5, #2
    4fb8:	d005      	beq.n	4fc6 <__libc_init_array+0x1a>
    4fba:	00a3      	lsls	r3, r4, #2
    4fbc:	58f3      	ldr	r3, [r6, r3]
    4fbe:	3401      	adds	r4, #1
    4fc0:	4798      	blx	r3
    4fc2:	42a5      	cmp	r5, r4
    4fc4:	d1f9      	bne.n	4fba <__libc_init_array+0xe>
    4fc6:	f7fb febd 	bl	d44 <_init>
    4fca:	4e08      	ldr	r6, [pc, #32]	; (4fec <__libc_init_array+0x40>)
    4fcc:	4d08      	ldr	r5, [pc, #32]	; (4ff0 <__libc_init_array+0x44>)
    4fce:	2400      	movs	r4, #0
    4fd0:	1bad      	subs	r5, r5, r6
    4fd2:	10ad      	asrs	r5, r5, #2
    4fd4:	d005      	beq.n	4fe2 <__libc_init_array+0x36>
    4fd6:	00a3      	lsls	r3, r4, #2
    4fd8:	58f3      	ldr	r3, [r6, r3]
    4fda:	3401      	adds	r4, #1
    4fdc:	4798      	blx	r3
    4fde:	42a5      	cmp	r5, r4
    4fe0:	d1f9      	bne.n	4fd6 <__libc_init_array+0x2a>
    4fe2:	bd70      	pop	{r4, r5, r6, pc}
	...

00004ff4 <memset>:
    4ff4:	b570      	push	{r4, r5, r6, lr}
    4ff6:	0783      	lsls	r3, r0, #30
    4ff8:	d03f      	beq.n	507a <memset+0x86>
    4ffa:	1e54      	subs	r4, r2, #1
    4ffc:	2a00      	cmp	r2, #0
    4ffe:	d03b      	beq.n	5078 <memset+0x84>
    5000:	b2ce      	uxtb	r6, r1
    5002:	0003      	movs	r3, r0
    5004:	2503      	movs	r5, #3
    5006:	e003      	b.n	5010 <memset+0x1c>
    5008:	1e62      	subs	r2, r4, #1
    500a:	2c00      	cmp	r4, #0
    500c:	d034      	beq.n	5078 <memset+0x84>
    500e:	0014      	movs	r4, r2
    5010:	3301      	adds	r3, #1
    5012:	1e5a      	subs	r2, r3, #1
    5014:	7016      	strb	r6, [r2, #0]
    5016:	422b      	tst	r3, r5
    5018:	d1f6      	bne.n	5008 <memset+0x14>
    501a:	2c03      	cmp	r4, #3
    501c:	d924      	bls.n	5068 <memset+0x74>
    501e:	25ff      	movs	r5, #255	; 0xff
    5020:	400d      	ands	r5, r1
    5022:	022a      	lsls	r2, r5, #8
    5024:	4315      	orrs	r5, r2
    5026:	042a      	lsls	r2, r5, #16
    5028:	4315      	orrs	r5, r2
    502a:	2c0f      	cmp	r4, #15
    502c:	d911      	bls.n	5052 <memset+0x5e>
    502e:	0026      	movs	r6, r4
    5030:	3e10      	subs	r6, #16
    5032:	0936      	lsrs	r6, r6, #4
    5034:	3601      	adds	r6, #1
    5036:	0136      	lsls	r6, r6, #4
    5038:	001a      	movs	r2, r3
    503a:	199b      	adds	r3, r3, r6
    503c:	6015      	str	r5, [r2, #0]
    503e:	6055      	str	r5, [r2, #4]
    5040:	6095      	str	r5, [r2, #8]
    5042:	60d5      	str	r5, [r2, #12]
    5044:	3210      	adds	r2, #16
    5046:	4293      	cmp	r3, r2
    5048:	d1f8      	bne.n	503c <memset+0x48>
    504a:	220f      	movs	r2, #15
    504c:	4014      	ands	r4, r2
    504e:	2c03      	cmp	r4, #3
    5050:	d90a      	bls.n	5068 <memset+0x74>
    5052:	1f26      	subs	r6, r4, #4
    5054:	08b6      	lsrs	r6, r6, #2
    5056:	3601      	adds	r6, #1
    5058:	00b6      	lsls	r6, r6, #2
    505a:	001a      	movs	r2, r3
    505c:	199b      	adds	r3, r3, r6
    505e:	c220      	stmia	r2!, {r5}
    5060:	4293      	cmp	r3, r2
    5062:	d1fc      	bne.n	505e <memset+0x6a>
    5064:	2203      	movs	r2, #3
    5066:	4014      	ands	r4, r2
    5068:	2c00      	cmp	r4, #0
    506a:	d005      	beq.n	5078 <memset+0x84>
    506c:	b2c9      	uxtb	r1, r1
    506e:	191c      	adds	r4, r3, r4
    5070:	7019      	strb	r1, [r3, #0]
    5072:	3301      	adds	r3, #1
    5074:	429c      	cmp	r4, r3
    5076:	d1fb      	bne.n	5070 <memset+0x7c>
    5078:	bd70      	pop	{r4, r5, r6, pc}
    507a:	0014      	movs	r4, r2
    507c:	0003      	movs	r3, r0
    507e:	e7cc      	b.n	501a <memset+0x26>

00005080 <cleanup_glue>:
    5080:	b570      	push	{r4, r5, r6, lr}
    5082:	000c      	movs	r4, r1
    5084:	6809      	ldr	r1, [r1, #0]
    5086:	0005      	movs	r5, r0
    5088:	2900      	cmp	r1, #0
    508a:	d001      	beq.n	5090 <cleanup_glue+0x10>
    508c:	f7ff fff8 	bl	5080 <cleanup_glue>
    5090:	0028      	movs	r0, r5
    5092:	0021      	movs	r1, r4
    5094:	f000 f990 	bl	53b8 <_free_r>
    5098:	bd70      	pop	{r4, r5, r6, pc}
    509a:	46c0      	nop			; (mov r8, r8)

0000509c <_reclaim_reent>:
    509c:	4b23      	ldr	r3, [pc, #140]	; (512c <_reclaim_reent+0x90>)
    509e:	b570      	push	{r4, r5, r6, lr}
    50a0:	681b      	ldr	r3, [r3, #0]
    50a2:	0005      	movs	r5, r0
    50a4:	4283      	cmp	r3, r0
    50a6:	d034      	beq.n	5112 <_reclaim_reent+0x76>
    50a8:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    50aa:	2b00      	cmp	r3, #0
    50ac:	d011      	beq.n	50d2 <_reclaim_reent+0x36>
    50ae:	2600      	movs	r6, #0
    50b0:	5999      	ldr	r1, [r3, r6]
    50b2:	2900      	cmp	r1, #0
    50b4:	d006      	beq.n	50c4 <_reclaim_reent+0x28>
    50b6:	680c      	ldr	r4, [r1, #0]
    50b8:	0028      	movs	r0, r5
    50ba:	f000 f97d 	bl	53b8 <_free_r>
    50be:	1e21      	subs	r1, r4, #0
    50c0:	d1f9      	bne.n	50b6 <_reclaim_reent+0x1a>
    50c2:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    50c4:	3604      	adds	r6, #4
    50c6:	2e80      	cmp	r6, #128	; 0x80
    50c8:	d1f2      	bne.n	50b0 <_reclaim_reent+0x14>
    50ca:	0019      	movs	r1, r3
    50cc:	0028      	movs	r0, r5
    50ce:	f000 f973 	bl	53b8 <_free_r>
    50d2:	6c29      	ldr	r1, [r5, #64]	; 0x40
    50d4:	2900      	cmp	r1, #0
    50d6:	d002      	beq.n	50de <_reclaim_reent+0x42>
    50d8:	0028      	movs	r0, r5
    50da:	f000 f96d 	bl	53b8 <_free_r>
    50de:	23a4      	movs	r3, #164	; 0xa4
    50e0:	005b      	lsls	r3, r3, #1
    50e2:	58e9      	ldr	r1, [r5, r3]
    50e4:	2900      	cmp	r1, #0
    50e6:	d00b      	beq.n	5100 <_reclaim_reent+0x64>
    50e8:	002e      	movs	r6, r5
    50ea:	364d      	adds	r6, #77	; 0x4d
    50ec:	36ff      	adds	r6, #255	; 0xff
    50ee:	42b1      	cmp	r1, r6
    50f0:	d006      	beq.n	5100 <_reclaim_reent+0x64>
    50f2:	680c      	ldr	r4, [r1, #0]
    50f4:	0028      	movs	r0, r5
    50f6:	f000 f95f 	bl	53b8 <_free_r>
    50fa:	0021      	movs	r1, r4
    50fc:	42a6      	cmp	r6, r4
    50fe:	d1f8      	bne.n	50f2 <_reclaim_reent+0x56>
    5100:	6d69      	ldr	r1, [r5, #84]	; 0x54
    5102:	2900      	cmp	r1, #0
    5104:	d002      	beq.n	510c <_reclaim_reent+0x70>
    5106:	0028      	movs	r0, r5
    5108:	f000 f956 	bl	53b8 <_free_r>
    510c:	6bab      	ldr	r3, [r5, #56]	; 0x38
    510e:	2b00      	cmp	r3, #0
    5110:	d100      	bne.n	5114 <_reclaim_reent+0x78>
    5112:	bd70      	pop	{r4, r5, r6, pc}
    5114:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    5116:	0028      	movs	r0, r5
    5118:	4798      	blx	r3
    511a:	23b8      	movs	r3, #184	; 0xb8
    511c:	009b      	lsls	r3, r3, #2
    511e:	58e9      	ldr	r1, [r5, r3]
    5120:	2900      	cmp	r1, #0
    5122:	d0f6      	beq.n	5112 <_reclaim_reent+0x76>
    5124:	0028      	movs	r0, r5
    5126:	f7ff ffab 	bl	5080 <cleanup_glue>
    512a:	e7f2      	b.n	5112 <_reclaim_reent+0x76>
    512c:	20000440 	.word	0x20000440

00005130 <__register_exitproc>:
    5130:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5132:	4644      	mov	r4, r8
    5134:	465f      	mov	r7, fp
    5136:	4656      	mov	r6, sl
    5138:	464d      	mov	r5, r9
    513a:	469b      	mov	fp, r3
    513c:	4b2f      	ldr	r3, [pc, #188]	; (51fc <__register_exitproc+0xcc>)
    513e:	b4f0      	push	{r4, r5, r6, r7}
    5140:	681c      	ldr	r4, [r3, #0]
    5142:	23a4      	movs	r3, #164	; 0xa4
    5144:	005b      	lsls	r3, r3, #1
    5146:	0005      	movs	r5, r0
    5148:	58e0      	ldr	r0, [r4, r3]
    514a:	000e      	movs	r6, r1
    514c:	4690      	mov	r8, r2
    514e:	2800      	cmp	r0, #0
    5150:	d04b      	beq.n	51ea <__register_exitproc+0xba>
    5152:	6843      	ldr	r3, [r0, #4]
    5154:	2b1f      	cmp	r3, #31
    5156:	dc0d      	bgt.n	5174 <__register_exitproc+0x44>
    5158:	1c5c      	adds	r4, r3, #1
    515a:	2d00      	cmp	r5, #0
    515c:	d121      	bne.n	51a2 <__register_exitproc+0x72>
    515e:	3302      	adds	r3, #2
    5160:	009b      	lsls	r3, r3, #2
    5162:	6044      	str	r4, [r0, #4]
    5164:	501e      	str	r6, [r3, r0]
    5166:	2000      	movs	r0, #0
    5168:	bc3c      	pop	{r2, r3, r4, r5}
    516a:	4690      	mov	r8, r2
    516c:	4699      	mov	r9, r3
    516e:	46a2      	mov	sl, r4
    5170:	46ab      	mov	fp, r5
    5172:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5174:	4b22      	ldr	r3, [pc, #136]	; (5200 <__register_exitproc+0xd0>)
    5176:	2b00      	cmp	r3, #0
    5178:	d03c      	beq.n	51f4 <__register_exitproc+0xc4>
    517a:	20c8      	movs	r0, #200	; 0xc8
    517c:	0040      	lsls	r0, r0, #1
    517e:	e000      	b.n	5182 <__register_exitproc+0x52>
    5180:	bf00      	nop
    5182:	2800      	cmp	r0, #0
    5184:	d036      	beq.n	51f4 <__register_exitproc+0xc4>
    5186:	22a4      	movs	r2, #164	; 0xa4
    5188:	2300      	movs	r3, #0
    518a:	0052      	lsls	r2, r2, #1
    518c:	58a1      	ldr	r1, [r4, r2]
    518e:	6043      	str	r3, [r0, #4]
    5190:	6001      	str	r1, [r0, #0]
    5192:	50a0      	str	r0, [r4, r2]
    5194:	3240      	adds	r2, #64	; 0x40
    5196:	5083      	str	r3, [r0, r2]
    5198:	3204      	adds	r2, #4
    519a:	5083      	str	r3, [r0, r2]
    519c:	2401      	movs	r4, #1
    519e:	2d00      	cmp	r5, #0
    51a0:	d0dd      	beq.n	515e <__register_exitproc+0x2e>
    51a2:	009a      	lsls	r2, r3, #2
    51a4:	4691      	mov	r9, r2
    51a6:	4481      	add	r9, r0
    51a8:	4642      	mov	r2, r8
    51aa:	2188      	movs	r1, #136	; 0x88
    51ac:	464f      	mov	r7, r9
    51ae:	507a      	str	r2, [r7, r1]
    51b0:	22c4      	movs	r2, #196	; 0xc4
    51b2:	0052      	lsls	r2, r2, #1
    51b4:	4690      	mov	r8, r2
    51b6:	4480      	add	r8, r0
    51b8:	4642      	mov	r2, r8
    51ba:	3987      	subs	r1, #135	; 0x87
    51bc:	4099      	lsls	r1, r3
    51be:	6812      	ldr	r2, [r2, #0]
    51c0:	468a      	mov	sl, r1
    51c2:	430a      	orrs	r2, r1
    51c4:	4694      	mov	ip, r2
    51c6:	4642      	mov	r2, r8
    51c8:	4661      	mov	r1, ip
    51ca:	6011      	str	r1, [r2, #0]
    51cc:	2284      	movs	r2, #132	; 0x84
    51ce:	4649      	mov	r1, r9
    51d0:	465f      	mov	r7, fp
    51d2:	0052      	lsls	r2, r2, #1
    51d4:	508f      	str	r7, [r1, r2]
    51d6:	2d02      	cmp	r5, #2
    51d8:	d1c1      	bne.n	515e <__register_exitproc+0x2e>
    51da:	0002      	movs	r2, r0
    51dc:	4655      	mov	r5, sl
    51de:	328d      	adds	r2, #141	; 0x8d
    51e0:	32ff      	adds	r2, #255	; 0xff
    51e2:	6811      	ldr	r1, [r2, #0]
    51e4:	430d      	orrs	r5, r1
    51e6:	6015      	str	r5, [r2, #0]
    51e8:	e7b9      	b.n	515e <__register_exitproc+0x2e>
    51ea:	0020      	movs	r0, r4
    51ec:	304d      	adds	r0, #77	; 0x4d
    51ee:	30ff      	adds	r0, #255	; 0xff
    51f0:	50e0      	str	r0, [r4, r3]
    51f2:	e7ae      	b.n	5152 <__register_exitproc+0x22>
    51f4:	2001      	movs	r0, #1
    51f6:	4240      	negs	r0, r0
    51f8:	e7b6      	b.n	5168 <__register_exitproc+0x38>
    51fa:	46c0      	nop			; (mov r8, r8)
    51fc:	0000959c 	.word	0x0000959c
    5200:	00000000 	.word	0x00000000

00005204 <register_fini>:
    5204:	4b03      	ldr	r3, [pc, #12]	; (5214 <register_fini+0x10>)
    5206:	b510      	push	{r4, lr}
    5208:	2b00      	cmp	r3, #0
    520a:	d002      	beq.n	5212 <register_fini+0xe>
    520c:	4802      	ldr	r0, [pc, #8]	; (5218 <register_fini+0x14>)
    520e:	f7ff fe9b 	bl	4f48 <atexit>
    5212:	bd10      	pop	{r4, pc}
    5214:	00000000 	.word	0x00000000
    5218:	00004f79 	.word	0x00004f79

0000521c <__call_exitprocs>:
    521c:	b5f0      	push	{r4, r5, r6, r7, lr}
    521e:	465f      	mov	r7, fp
    5220:	4656      	mov	r6, sl
    5222:	464d      	mov	r5, r9
    5224:	4644      	mov	r4, r8
    5226:	b4f0      	push	{r4, r5, r6, r7}
    5228:	000f      	movs	r7, r1
    522a:	4b39      	ldr	r3, [pc, #228]	; (5310 <__call_exitprocs+0xf4>)
    522c:	b085      	sub	sp, #20
    522e:	681b      	ldr	r3, [r3, #0]
    5230:	9001      	str	r0, [sp, #4]
    5232:	9302      	str	r3, [sp, #8]
    5234:	3349      	adds	r3, #73	; 0x49
    5236:	33ff      	adds	r3, #255	; 0xff
    5238:	9303      	str	r3, [sp, #12]
    523a:	22a4      	movs	r2, #164	; 0xa4
    523c:	9b02      	ldr	r3, [sp, #8]
    523e:	0052      	lsls	r2, r2, #1
    5240:	589e      	ldr	r6, [r3, r2]
    5242:	2e00      	cmp	r6, #0
    5244:	d04e      	beq.n	52e4 <__call_exitprocs+0xc8>
    5246:	9b03      	ldr	r3, [sp, #12]
    5248:	4699      	mov	r9, r3
    524a:	23c4      	movs	r3, #196	; 0xc4
    524c:	005b      	lsls	r3, r3, #1
    524e:	4698      	mov	r8, r3
    5250:	3304      	adds	r3, #4
    5252:	469a      	mov	sl, r3
    5254:	6874      	ldr	r4, [r6, #4]
    5256:	44b0      	add	r8, r6
    5258:	00a5      	lsls	r5, r4, #2
    525a:	1975      	adds	r5, r6, r5
    525c:	44b2      	add	sl, r6
    525e:	3c01      	subs	r4, #1
    5260:	d508      	bpl.n	5274 <__call_exitprocs+0x58>
    5262:	e02d      	b.n	52c0 <__call_exitprocs+0xa4>
    5264:	1d6b      	adds	r3, r5, #5
    5266:	33ff      	adds	r3, #255	; 0xff
    5268:	681b      	ldr	r3, [r3, #0]
    526a:	429f      	cmp	r7, r3
    526c:	d004      	beq.n	5278 <__call_exitprocs+0x5c>
    526e:	3d04      	subs	r5, #4
    5270:	3c01      	subs	r4, #1
    5272:	d325      	bcc.n	52c0 <__call_exitprocs+0xa4>
    5274:	2f00      	cmp	r7, #0
    5276:	d1f5      	bne.n	5264 <__call_exitprocs+0x48>
    5278:	6873      	ldr	r3, [r6, #4]
    527a:	686a      	ldr	r2, [r5, #4]
    527c:	3b01      	subs	r3, #1
    527e:	42a3      	cmp	r3, r4
    5280:	d039      	beq.n	52f6 <__call_exitprocs+0xda>
    5282:	2300      	movs	r3, #0
    5284:	606b      	str	r3, [r5, #4]
    5286:	2a00      	cmp	r2, #0
    5288:	d0f1      	beq.n	526e <__call_exitprocs+0x52>
    528a:	6873      	ldr	r3, [r6, #4]
    528c:	4641      	mov	r1, r8
    528e:	469b      	mov	fp, r3
    5290:	2301      	movs	r3, #1
    5292:	40a3      	lsls	r3, r4
    5294:	6809      	ldr	r1, [r1, #0]
    5296:	4219      	tst	r1, r3
    5298:	d02b      	beq.n	52f2 <__call_exitprocs+0xd6>
    529a:	4651      	mov	r1, sl
    529c:	6809      	ldr	r1, [r1, #0]
    529e:	4219      	tst	r1, r3
    52a0:	d12b      	bne.n	52fa <__call_exitprocs+0xde>
    52a2:	002b      	movs	r3, r5
    52a4:	3384      	adds	r3, #132	; 0x84
    52a6:	6819      	ldr	r1, [r3, #0]
    52a8:	9801      	ldr	r0, [sp, #4]
    52aa:	4790      	blx	r2
    52ac:	6873      	ldr	r3, [r6, #4]
    52ae:	455b      	cmp	r3, fp
    52b0:	d1c3      	bne.n	523a <__call_exitprocs+0x1e>
    52b2:	464b      	mov	r3, r9
    52b4:	681b      	ldr	r3, [r3, #0]
    52b6:	42b3      	cmp	r3, r6
    52b8:	d1bf      	bne.n	523a <__call_exitprocs+0x1e>
    52ba:	3d04      	subs	r5, #4
    52bc:	3c01      	subs	r4, #1
    52be:	d2d9      	bcs.n	5274 <__call_exitprocs+0x58>
    52c0:	4b14      	ldr	r3, [pc, #80]	; (5314 <__call_exitprocs+0xf8>)
    52c2:	2b00      	cmp	r3, #0
    52c4:	d00e      	beq.n	52e4 <__call_exitprocs+0xc8>
    52c6:	6873      	ldr	r3, [r6, #4]
    52c8:	2b00      	cmp	r3, #0
    52ca:	d11b      	bne.n	5304 <__call_exitprocs+0xe8>
    52cc:	6833      	ldr	r3, [r6, #0]
    52ce:	2b00      	cmp	r3, #0
    52d0:	d01c      	beq.n	530c <__call_exitprocs+0xf0>
    52d2:	464a      	mov	r2, r9
    52d4:	0030      	movs	r0, r6
    52d6:	6013      	str	r3, [r2, #0]
    52d8:	e000      	b.n	52dc <__call_exitprocs+0xc0>
    52da:	bf00      	nop
    52dc:	464b      	mov	r3, r9
    52de:	681e      	ldr	r6, [r3, #0]
    52e0:	2e00      	cmp	r6, #0
    52e2:	d1b2      	bne.n	524a <__call_exitprocs+0x2e>
    52e4:	b005      	add	sp, #20
    52e6:	bc3c      	pop	{r2, r3, r4, r5}
    52e8:	4690      	mov	r8, r2
    52ea:	4699      	mov	r9, r3
    52ec:	46a2      	mov	sl, r4
    52ee:	46ab      	mov	fp, r5
    52f0:	bdf0      	pop	{r4, r5, r6, r7, pc}
    52f2:	4790      	blx	r2
    52f4:	e7da      	b.n	52ac <__call_exitprocs+0x90>
    52f6:	6074      	str	r4, [r6, #4]
    52f8:	e7c5      	b.n	5286 <__call_exitprocs+0x6a>
    52fa:	002b      	movs	r3, r5
    52fc:	3384      	adds	r3, #132	; 0x84
    52fe:	6818      	ldr	r0, [r3, #0]
    5300:	4790      	blx	r2
    5302:	e7d3      	b.n	52ac <__call_exitprocs+0x90>
    5304:	6833      	ldr	r3, [r6, #0]
    5306:	46b1      	mov	r9, r6
    5308:	001e      	movs	r6, r3
    530a:	e7e9      	b.n	52e0 <__call_exitprocs+0xc4>
    530c:	2300      	movs	r3, #0
    530e:	e7fa      	b.n	5306 <__call_exitprocs+0xea>
    5310:	0000959c 	.word	0x0000959c
    5314:	00000000 	.word	0x00000000

00005318 <_malloc_trim_r>:
    5318:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    531a:	000c      	movs	r4, r1
    531c:	0006      	movs	r6, r0
    531e:	f000 fbd7 	bl	5ad0 <__malloc_lock>
    5322:	4f20      	ldr	r7, [pc, #128]	; (53a4 <_malloc_trim_r+0x8c>)
    5324:	68bb      	ldr	r3, [r7, #8]
    5326:	685d      	ldr	r5, [r3, #4]
    5328:	2303      	movs	r3, #3
    532a:	439d      	bics	r5, r3
    532c:	4b1e      	ldr	r3, [pc, #120]	; (53a8 <_malloc_trim_r+0x90>)
    532e:	1b2c      	subs	r4, r5, r4
    5330:	469c      	mov	ip, r3
    5332:	4464      	add	r4, ip
    5334:	0b24      	lsrs	r4, r4, #12
    5336:	4b1d      	ldr	r3, [pc, #116]	; (53ac <_malloc_trim_r+0x94>)
    5338:	3c01      	subs	r4, #1
    533a:	0324      	lsls	r4, r4, #12
    533c:	429c      	cmp	r4, r3
    533e:	dd07      	ble.n	5350 <_malloc_trim_r+0x38>
    5340:	2100      	movs	r1, #0
    5342:	0030      	movs	r0, r6
    5344:	f000 fbc8 	bl	5ad8 <_sbrk_r>
    5348:	68bb      	ldr	r3, [r7, #8]
    534a:	195b      	adds	r3, r3, r5
    534c:	4298      	cmp	r0, r3
    534e:	d004      	beq.n	535a <_malloc_trim_r+0x42>
    5350:	0030      	movs	r0, r6
    5352:	f000 fbbf 	bl	5ad4 <__malloc_unlock>
    5356:	2000      	movs	r0, #0
    5358:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    535a:	4261      	negs	r1, r4
    535c:	0030      	movs	r0, r6
    535e:	f000 fbbb 	bl	5ad8 <_sbrk_r>
    5362:	1c43      	adds	r3, r0, #1
    5364:	d00d      	beq.n	5382 <_malloc_trim_r+0x6a>
    5366:	2301      	movs	r3, #1
    5368:	1b2d      	subs	r5, r5, r4
    536a:	68ba      	ldr	r2, [r7, #8]
    536c:	431d      	orrs	r5, r3
    536e:	4b10      	ldr	r3, [pc, #64]	; (53b0 <_malloc_trim_r+0x98>)
    5370:	6055      	str	r5, [r2, #4]
    5372:	681a      	ldr	r2, [r3, #0]
    5374:	0030      	movs	r0, r6
    5376:	1b14      	subs	r4, r2, r4
    5378:	601c      	str	r4, [r3, #0]
    537a:	f000 fbab 	bl	5ad4 <__malloc_unlock>
    537e:	2001      	movs	r0, #1
    5380:	e7ea      	b.n	5358 <_malloc_trim_r+0x40>
    5382:	2100      	movs	r1, #0
    5384:	0030      	movs	r0, r6
    5386:	f000 fba7 	bl	5ad8 <_sbrk_r>
    538a:	68bb      	ldr	r3, [r7, #8]
    538c:	1ac2      	subs	r2, r0, r3
    538e:	2a0f      	cmp	r2, #15
    5390:	ddde      	ble.n	5350 <_malloc_trim_r+0x38>
    5392:	4908      	ldr	r1, [pc, #32]	; (53b4 <_malloc_trim_r+0x9c>)
    5394:	6809      	ldr	r1, [r1, #0]
    5396:	1a40      	subs	r0, r0, r1
    5398:	4905      	ldr	r1, [pc, #20]	; (53b0 <_malloc_trim_r+0x98>)
    539a:	6008      	str	r0, [r1, #0]
    539c:	2101      	movs	r1, #1
    539e:	430a      	orrs	r2, r1
    53a0:	605a      	str	r2, [r3, #4]
    53a2:	e7d5      	b.n	5350 <_malloc_trim_r+0x38>
    53a4:	20000444 	.word	0x20000444
    53a8:	00000fef 	.word	0x00000fef
    53ac:	00000fff 	.word	0x00000fff
    53b0:	2000604c 	.word	0x2000604c
    53b4:	20000850 	.word	0x20000850

000053b8 <_free_r>:
    53b8:	b5f0      	push	{r4, r5, r6, r7, lr}
    53ba:	4647      	mov	r7, r8
    53bc:	0005      	movs	r5, r0
    53be:	b480      	push	{r7}
    53c0:	1e0c      	subs	r4, r1, #0
    53c2:	d03e      	beq.n	5442 <_free_r+0x8a>
    53c4:	f000 fb84 	bl	5ad0 <__malloc_lock>
    53c8:	2301      	movs	r3, #1
    53ca:	0021      	movs	r1, r4
    53cc:	4698      	mov	r8, r3
    53ce:	3908      	subs	r1, #8
    53d0:	684e      	ldr	r6, [r1, #4]
    53d2:	4642      	mov	r2, r8
    53d4:	0033      	movs	r3, r6
    53d6:	2003      	movs	r0, #3
    53d8:	4393      	bics	r3, r2
    53da:	18cc      	adds	r4, r1, r3
    53dc:	6862      	ldr	r2, [r4, #4]
    53de:	4382      	bics	r2, r0
    53e0:	4860      	ldr	r0, [pc, #384]	; (5564 <_free_r+0x1ac>)
    53e2:	6887      	ldr	r7, [r0, #8]
    53e4:	42bc      	cmp	r4, r7
    53e6:	d05a      	beq.n	549e <_free_r+0xe6>
    53e8:	4647      	mov	r7, r8
    53ea:	6062      	str	r2, [r4, #4]
    53ec:	4237      	tst	r7, r6
    53ee:	d10b      	bne.n	5408 <_free_r+0x50>
    53f0:	2708      	movs	r7, #8
    53f2:	46bc      	mov	ip, r7
    53f4:	680e      	ldr	r6, [r1, #0]
    53f6:	4484      	add	ip, r0
    53f8:	1b89      	subs	r1, r1, r6
    53fa:	199b      	adds	r3, r3, r6
    53fc:	688e      	ldr	r6, [r1, #8]
    53fe:	4566      	cmp	r6, ip
    5400:	d066      	beq.n	54d0 <_free_r+0x118>
    5402:	68cf      	ldr	r7, [r1, #12]
    5404:	60f7      	str	r7, [r6, #12]
    5406:	60be      	str	r6, [r7, #8]
    5408:	2601      	movs	r6, #1
    540a:	18a7      	adds	r7, r4, r2
    540c:	687f      	ldr	r7, [r7, #4]
    540e:	4237      	tst	r7, r6
    5410:	d036      	beq.n	5480 <_free_r+0xc8>
    5412:	4a55      	ldr	r2, [pc, #340]	; (5568 <_free_r+0x1b0>)
    5414:	431e      	orrs	r6, r3
    5416:	604e      	str	r6, [r1, #4]
    5418:	50cb      	str	r3, [r1, r3]
    541a:	4293      	cmp	r3, r2
    541c:	d814      	bhi.n	5448 <_free_r+0x90>
    541e:	08db      	lsrs	r3, r3, #3
    5420:	3aff      	subs	r2, #255	; 0xff
    5422:	109c      	asrs	r4, r3, #2
    5424:	3aff      	subs	r2, #255	; 0xff
    5426:	40a2      	lsls	r2, r4
    5428:	6844      	ldr	r4, [r0, #4]
    542a:	00db      	lsls	r3, r3, #3
    542c:	4322      	orrs	r2, r4
    542e:	6042      	str	r2, [r0, #4]
    5430:	1818      	adds	r0, r3, r0
    5432:	6883      	ldr	r3, [r0, #8]
    5434:	60c8      	str	r0, [r1, #12]
    5436:	608b      	str	r3, [r1, #8]
    5438:	6081      	str	r1, [r0, #8]
    543a:	60d9      	str	r1, [r3, #12]
    543c:	0028      	movs	r0, r5
    543e:	f000 fb49 	bl	5ad4 <__malloc_unlock>
    5442:	bc04      	pop	{r2}
    5444:	4690      	mov	r8, r2
    5446:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5448:	0a5a      	lsrs	r2, r3, #9
    544a:	2a04      	cmp	r2, #4
    544c:	d84f      	bhi.n	54ee <_free_r+0x136>
    544e:	099c      	lsrs	r4, r3, #6
    5450:	0026      	movs	r6, r4
    5452:	3439      	adds	r4, #57	; 0x39
    5454:	3638      	adds	r6, #56	; 0x38
    5456:	0064      	lsls	r4, r4, #1
    5458:	00a4      	lsls	r4, r4, #2
    545a:	1904      	adds	r4, r0, r4
    545c:	3c08      	subs	r4, #8
    545e:	68a2      	ldr	r2, [r4, #8]
    5460:	2703      	movs	r7, #3
    5462:	4294      	cmp	r4, r2
    5464:	d04a      	beq.n	54fc <_free_r+0x144>
    5466:	6850      	ldr	r0, [r2, #4]
    5468:	43b8      	bics	r0, r7
    546a:	4283      	cmp	r3, r0
    546c:	d202      	bcs.n	5474 <_free_r+0xbc>
    546e:	6892      	ldr	r2, [r2, #8]
    5470:	4294      	cmp	r4, r2
    5472:	d1f8      	bne.n	5466 <_free_r+0xae>
    5474:	68d4      	ldr	r4, [r2, #12]
    5476:	60cc      	str	r4, [r1, #12]
    5478:	608a      	str	r2, [r1, #8]
    547a:	60a1      	str	r1, [r4, #8]
    547c:	60d1      	str	r1, [r2, #12]
    547e:	e7dd      	b.n	543c <_free_r+0x84>
    5480:	189b      	adds	r3, r3, r2
    5482:	4f3a      	ldr	r7, [pc, #232]	; (556c <_free_r+0x1b4>)
    5484:	68a2      	ldr	r2, [r4, #8]
    5486:	42ba      	cmp	r2, r7
    5488:	d040      	beq.n	550c <_free_r+0x154>
    548a:	68e4      	ldr	r4, [r4, #12]
    548c:	431e      	orrs	r6, r3
    548e:	60d4      	str	r4, [r2, #12]
    5490:	60a2      	str	r2, [r4, #8]
    5492:	4a35      	ldr	r2, [pc, #212]	; (5568 <_free_r+0x1b0>)
    5494:	604e      	str	r6, [r1, #4]
    5496:	50cb      	str	r3, [r1, r3]
    5498:	4293      	cmp	r3, r2
    549a:	d8d5      	bhi.n	5448 <_free_r+0x90>
    549c:	e7bf      	b.n	541e <_free_r+0x66>
    549e:	189b      	adds	r3, r3, r2
    54a0:	4642      	mov	r2, r8
    54a2:	4232      	tst	r2, r6
    54a4:	d106      	bne.n	54b4 <_free_r+0xfc>
    54a6:	680a      	ldr	r2, [r1, #0]
    54a8:	1a89      	subs	r1, r1, r2
    54aa:	688c      	ldr	r4, [r1, #8]
    54ac:	189b      	adds	r3, r3, r2
    54ae:	68ca      	ldr	r2, [r1, #12]
    54b0:	60e2      	str	r2, [r4, #12]
    54b2:	6094      	str	r4, [r2, #8]
    54b4:	2401      	movs	r4, #1
    54b6:	4a2e      	ldr	r2, [pc, #184]	; (5570 <_free_r+0x1b8>)
    54b8:	431c      	orrs	r4, r3
    54ba:	6812      	ldr	r2, [r2, #0]
    54bc:	604c      	str	r4, [r1, #4]
    54be:	6081      	str	r1, [r0, #8]
    54c0:	4293      	cmp	r3, r2
    54c2:	d3bb      	bcc.n	543c <_free_r+0x84>
    54c4:	4b2b      	ldr	r3, [pc, #172]	; (5574 <_free_r+0x1bc>)
    54c6:	0028      	movs	r0, r5
    54c8:	6819      	ldr	r1, [r3, #0]
    54ca:	f7ff ff25 	bl	5318 <_malloc_trim_r>
    54ce:	e7b5      	b.n	543c <_free_r+0x84>
    54d0:	4646      	mov	r6, r8
    54d2:	18a0      	adds	r0, r4, r2
    54d4:	6840      	ldr	r0, [r0, #4]
    54d6:	4230      	tst	r0, r6
    54d8:	d13e      	bne.n	5558 <_free_r+0x1a0>
    54da:	68a0      	ldr	r0, [r4, #8]
    54dc:	18d3      	adds	r3, r2, r3
    54de:	68e2      	ldr	r2, [r4, #12]
    54e0:	60c2      	str	r2, [r0, #12]
    54e2:	6090      	str	r0, [r2, #8]
    54e4:	4642      	mov	r2, r8
    54e6:	431a      	orrs	r2, r3
    54e8:	604a      	str	r2, [r1, #4]
    54ea:	50cb      	str	r3, [r1, r3]
    54ec:	e7a6      	b.n	543c <_free_r+0x84>
    54ee:	2a14      	cmp	r2, #20
    54f0:	d814      	bhi.n	551c <_free_r+0x164>
    54f2:	0016      	movs	r6, r2
    54f4:	325c      	adds	r2, #92	; 0x5c
    54f6:	365b      	adds	r6, #91	; 0x5b
    54f8:	0054      	lsls	r4, r2, #1
    54fa:	e7ad      	b.n	5458 <_free_r+0xa0>
    54fc:	2301      	movs	r3, #1
    54fe:	10b6      	asrs	r6, r6, #2
    5500:	40b3      	lsls	r3, r6
    5502:	6842      	ldr	r2, [r0, #4]
    5504:	4313      	orrs	r3, r2
    5506:	6043      	str	r3, [r0, #4]
    5508:	0022      	movs	r2, r4
    550a:	e7b4      	b.n	5476 <_free_r+0xbe>
    550c:	431e      	orrs	r6, r3
    550e:	60d1      	str	r1, [r2, #12]
    5510:	6091      	str	r1, [r2, #8]
    5512:	60ca      	str	r2, [r1, #12]
    5514:	608a      	str	r2, [r1, #8]
    5516:	604e      	str	r6, [r1, #4]
    5518:	50cb      	str	r3, [r1, r3]
    551a:	e78f      	b.n	543c <_free_r+0x84>
    551c:	2a54      	cmp	r2, #84	; 0x54
    551e:	d805      	bhi.n	552c <_free_r+0x174>
    5520:	0b1c      	lsrs	r4, r3, #12
    5522:	0026      	movs	r6, r4
    5524:	346f      	adds	r4, #111	; 0x6f
    5526:	366e      	adds	r6, #110	; 0x6e
    5528:	0064      	lsls	r4, r4, #1
    552a:	e795      	b.n	5458 <_free_r+0xa0>
    552c:	24aa      	movs	r4, #170	; 0xaa
    552e:	0064      	lsls	r4, r4, #1
    5530:	42a2      	cmp	r2, r4
    5532:	d805      	bhi.n	5540 <_free_r+0x188>
    5534:	0bdc      	lsrs	r4, r3, #15
    5536:	0026      	movs	r6, r4
    5538:	3478      	adds	r4, #120	; 0x78
    553a:	3677      	adds	r6, #119	; 0x77
    553c:	0064      	lsls	r4, r4, #1
    553e:	e78b      	b.n	5458 <_free_r+0xa0>
    5540:	4c0d      	ldr	r4, [pc, #52]	; (5578 <_free_r+0x1c0>)
    5542:	42a2      	cmp	r2, r4
    5544:	d805      	bhi.n	5552 <_free_r+0x19a>
    5546:	0c9c      	lsrs	r4, r3, #18
    5548:	0026      	movs	r6, r4
    554a:	347d      	adds	r4, #125	; 0x7d
    554c:	367c      	adds	r6, #124	; 0x7c
    554e:	0064      	lsls	r4, r4, #1
    5550:	e782      	b.n	5458 <_free_r+0xa0>
    5552:	24fe      	movs	r4, #254	; 0xfe
    5554:	267e      	movs	r6, #126	; 0x7e
    5556:	e77f      	b.n	5458 <_free_r+0xa0>
    5558:	4642      	mov	r2, r8
    555a:	431a      	orrs	r2, r3
    555c:	604a      	str	r2, [r1, #4]
    555e:	50cb      	str	r3, [r1, r3]
    5560:	e76c      	b.n	543c <_free_r+0x84>
    5562:	46c0      	nop			; (mov r8, r8)
    5564:	20000444 	.word	0x20000444
    5568:	000001ff 	.word	0x000001ff
    556c:	2000044c 	.word	0x2000044c
    5570:	2000084c 	.word	0x2000084c
    5574:	20006048 	.word	0x20006048
    5578:	00000554 	.word	0x00000554

0000557c <_malloc_r>:
    557c:	b5f0      	push	{r4, r5, r6, r7, lr}
    557e:	465f      	mov	r7, fp
    5580:	464d      	mov	r5, r9
    5582:	4656      	mov	r6, sl
    5584:	4644      	mov	r4, r8
    5586:	b4f0      	push	{r4, r5, r6, r7}
    5588:	000d      	movs	r5, r1
    558a:	350b      	adds	r5, #11
    558c:	b083      	sub	sp, #12
    558e:	0007      	movs	r7, r0
    5590:	2d16      	cmp	r5, #22
    5592:	d800      	bhi.n	5596 <_malloc_r+0x1a>
    5594:	e0a8      	b.n	56e8 <_malloc_r+0x16c>
    5596:	2307      	movs	r3, #7
    5598:	439d      	bics	r5, r3
    559a:	d500      	bpl.n	559e <_malloc_r+0x22>
    559c:	e0ce      	b.n	573c <_malloc_r+0x1c0>
    559e:	42a9      	cmp	r1, r5
    55a0:	d900      	bls.n	55a4 <_malloc_r+0x28>
    55a2:	e0cb      	b.n	573c <_malloc_r+0x1c0>
    55a4:	f000 fa94 	bl	5ad0 <__malloc_lock>
    55a8:	23f8      	movs	r3, #248	; 0xf8
    55aa:	33ff      	adds	r3, #255	; 0xff
    55ac:	429d      	cmp	r5, r3
    55ae:	d800      	bhi.n	55b2 <_malloc_r+0x36>
    55b0:	e284      	b.n	5abc <_malloc_r+0x540>
    55b2:	0a6b      	lsrs	r3, r5, #9
    55b4:	d100      	bne.n	55b8 <_malloc_r+0x3c>
    55b6:	e0c5      	b.n	5744 <_malloc_r+0x1c8>
    55b8:	2b04      	cmp	r3, #4
    55ba:	d900      	bls.n	55be <_malloc_r+0x42>
    55bc:	e16c      	b.n	5898 <_malloc_r+0x31c>
    55be:	2338      	movs	r3, #56	; 0x38
    55c0:	09a9      	lsrs	r1, r5, #6
    55c2:	469c      	mov	ip, r3
    55c4:	3301      	adds	r3, #1
    55c6:	4698      	mov	r8, r3
    55c8:	4488      	add	r8, r1
    55ca:	4643      	mov	r3, r8
    55cc:	448c      	add	ip, r1
    55ce:	0059      	lsls	r1, r3, #1
    55d0:	4ec9      	ldr	r6, [pc, #804]	; (58f8 <_malloc_r+0x37c>)
    55d2:	0089      	lsls	r1, r1, #2
    55d4:	1871      	adds	r1, r6, r1
    55d6:	3908      	subs	r1, #8
    55d8:	68cc      	ldr	r4, [r1, #12]
    55da:	42a1      	cmp	r1, r4
    55dc:	d017      	beq.n	560e <_malloc_r+0x92>
    55de:	2303      	movs	r3, #3
    55e0:	6862      	ldr	r2, [r4, #4]
    55e2:	439a      	bics	r2, r3
    55e4:	0013      	movs	r3, r2
    55e6:	1b52      	subs	r2, r2, r5
    55e8:	2a0f      	cmp	r2, #15
    55ea:	dd00      	ble.n	55ee <_malloc_r+0x72>
    55ec:	e0b0      	b.n	5750 <_malloc_r+0x1d4>
    55ee:	2003      	movs	r0, #3
    55f0:	2a00      	cmp	r2, #0
    55f2:	db09      	blt.n	5608 <_malloc_r+0x8c>
    55f4:	e08d      	b.n	5712 <_malloc_r+0x196>
    55f6:	6863      	ldr	r3, [r4, #4]
    55f8:	4383      	bics	r3, r0
    55fa:	1b5a      	subs	r2, r3, r5
    55fc:	2a0f      	cmp	r2, #15
    55fe:	dd00      	ble.n	5602 <_malloc_r+0x86>
    5600:	e0a6      	b.n	5750 <_malloc_r+0x1d4>
    5602:	2a00      	cmp	r2, #0
    5604:	db00      	blt.n	5608 <_malloc_r+0x8c>
    5606:	e084      	b.n	5712 <_malloc_r+0x196>
    5608:	68e4      	ldr	r4, [r4, #12]
    560a:	42a1      	cmp	r1, r4
    560c:	d1f3      	bne.n	55f6 <_malloc_r+0x7a>
    560e:	4643      	mov	r3, r8
    5610:	9300      	str	r3, [sp, #0]
    5612:	0032      	movs	r2, r6
    5614:	6934      	ldr	r4, [r6, #16]
    5616:	3208      	adds	r2, #8
    5618:	4294      	cmp	r4, r2
    561a:	d100      	bne.n	561e <_malloc_r+0xa2>
    561c:	e18f      	b.n	593e <_malloc_r+0x3c2>
    561e:	2303      	movs	r3, #3
    5620:	6861      	ldr	r1, [r4, #4]
    5622:	4399      	bics	r1, r3
    5624:	000b      	movs	r3, r1
    5626:	1b48      	subs	r0, r1, r5
    5628:	280f      	cmp	r0, #15
    562a:	dd00      	ble.n	562e <_malloc_r+0xb2>
    562c:	e176      	b.n	591c <_malloc_r+0x3a0>
    562e:	6172      	str	r2, [r6, #20]
    5630:	6132      	str	r2, [r6, #16]
    5632:	2800      	cmp	r0, #0
    5634:	da71      	bge.n	571a <_malloc_r+0x19e>
    5636:	4ab1      	ldr	r2, [pc, #708]	; (58fc <_malloc_r+0x380>)
    5638:	4291      	cmp	r1, r2
    563a:	d900      	bls.n	563e <_malloc_r+0xc2>
    563c:	e134      	b.n	58a8 <_malloc_r+0x32c>
    563e:	2301      	movs	r3, #1
    5640:	08c8      	lsrs	r0, r1, #3
    5642:	1082      	asrs	r2, r0, #2
    5644:	4093      	lsls	r3, r2
    5646:	6872      	ldr	r2, [r6, #4]
    5648:	431a      	orrs	r2, r3
    564a:	00c3      	lsls	r3, r0, #3
    564c:	199b      	adds	r3, r3, r6
    564e:	6898      	ldr	r0, [r3, #8]
    5650:	6072      	str	r2, [r6, #4]
    5652:	60e3      	str	r3, [r4, #12]
    5654:	60a0      	str	r0, [r4, #8]
    5656:	609c      	str	r4, [r3, #8]
    5658:	0013      	movs	r3, r2
    565a:	60c4      	str	r4, [r0, #12]
    565c:	2001      	movs	r0, #1
    565e:	9900      	ldr	r1, [sp, #0]
    5660:	108a      	asrs	r2, r1, #2
    5662:	4090      	lsls	r0, r2
    5664:	4298      	cmp	r0, r3
    5666:	d900      	bls.n	566a <_malloc_r+0xee>
    5668:	e075      	b.n	5756 <_malloc_r+0x1da>
    566a:	4203      	tst	r3, r0
    566c:	d10c      	bne.n	5688 <_malloc_r+0x10c>
    566e:	2203      	movs	r2, #3
    5670:	4391      	bics	r1, r2
    5672:	1d0a      	adds	r2, r1, #4
    5674:	0040      	lsls	r0, r0, #1
    5676:	9200      	str	r2, [sp, #0]
    5678:	4203      	tst	r3, r0
    567a:	d105      	bne.n	5688 <_malloc_r+0x10c>
    567c:	9a00      	ldr	r2, [sp, #0]
    567e:	0040      	lsls	r0, r0, #1
    5680:	3204      	adds	r2, #4
    5682:	9200      	str	r2, [sp, #0]
    5684:	4203      	tst	r3, r0
    5686:	d0f9      	beq.n	567c <_malloc_r+0x100>
    5688:	2303      	movs	r3, #3
    568a:	4698      	mov	r8, r3
    568c:	9a00      	ldr	r2, [sp, #0]
    568e:	00d3      	lsls	r3, r2, #3
    5690:	4699      	mov	r9, r3
    5692:	44b1      	add	r9, r6
    5694:	46cc      	mov	ip, r9
    5696:	4692      	mov	sl, r2
    5698:	4663      	mov	r3, ip
    569a:	68dc      	ldr	r4, [r3, #12]
    569c:	45a4      	cmp	ip, r4
    569e:	d107      	bne.n	56b0 <_malloc_r+0x134>
    56a0:	e14f      	b.n	5942 <_malloc_r+0x3c6>
    56a2:	2a00      	cmp	r2, #0
    56a4:	db00      	blt.n	56a8 <_malloc_r+0x12c>
    56a6:	e15f      	b.n	5968 <_malloc_r+0x3ec>
    56a8:	68e4      	ldr	r4, [r4, #12]
    56aa:	45a4      	cmp	ip, r4
    56ac:	d100      	bne.n	56b0 <_malloc_r+0x134>
    56ae:	e148      	b.n	5942 <_malloc_r+0x3c6>
    56b0:	4642      	mov	r2, r8
    56b2:	6863      	ldr	r3, [r4, #4]
    56b4:	4393      	bics	r3, r2
    56b6:	1b5a      	subs	r2, r3, r5
    56b8:	2a0f      	cmp	r2, #15
    56ba:	ddf2      	ble.n	56a2 <_malloc_r+0x126>
    56bc:	2101      	movs	r1, #1
    56be:	1963      	adds	r3, r4, r5
    56c0:	430d      	orrs	r5, r1
    56c2:	6065      	str	r5, [r4, #4]
    56c4:	68e0      	ldr	r0, [r4, #12]
    56c6:	68a5      	ldr	r5, [r4, #8]
    56c8:	3608      	adds	r6, #8
    56ca:	60e8      	str	r0, [r5, #12]
    56cc:	4311      	orrs	r1, r2
    56ce:	6085      	str	r5, [r0, #8]
    56d0:	60f3      	str	r3, [r6, #12]
    56d2:	60b3      	str	r3, [r6, #8]
    56d4:	0038      	movs	r0, r7
    56d6:	60de      	str	r6, [r3, #12]
    56d8:	609e      	str	r6, [r3, #8]
    56da:	6059      	str	r1, [r3, #4]
    56dc:	509a      	str	r2, [r3, r2]
    56de:	f000 f9f9 	bl	5ad4 <__malloc_unlock>
    56e2:	0020      	movs	r0, r4
    56e4:	3008      	adds	r0, #8
    56e6:	e022      	b.n	572e <_malloc_r+0x1b2>
    56e8:	2910      	cmp	r1, #16
    56ea:	d827      	bhi.n	573c <_malloc_r+0x1c0>
    56ec:	0038      	movs	r0, r7
    56ee:	f000 f9ef 	bl	5ad0 <__malloc_lock>
    56f2:	2510      	movs	r5, #16
    56f4:	2306      	movs	r3, #6
    56f6:	2102      	movs	r1, #2
    56f8:	4e7f      	ldr	r6, [pc, #508]	; (58f8 <_malloc_r+0x37c>)
    56fa:	009b      	lsls	r3, r3, #2
    56fc:	18f3      	adds	r3, r6, r3
    56fe:	001a      	movs	r2, r3
    5700:	685c      	ldr	r4, [r3, #4]
    5702:	3a08      	subs	r2, #8
    5704:	4294      	cmp	r4, r2
    5706:	d100      	bne.n	570a <_malloc_r+0x18e>
    5708:	e127      	b.n	595a <_malloc_r+0x3de>
    570a:	2303      	movs	r3, #3
    570c:	6862      	ldr	r2, [r4, #4]
    570e:	439a      	bics	r2, r3
    5710:	0013      	movs	r3, r2
    5712:	68e2      	ldr	r2, [r4, #12]
    5714:	68a1      	ldr	r1, [r4, #8]
    5716:	60ca      	str	r2, [r1, #12]
    5718:	6091      	str	r1, [r2, #8]
    571a:	2201      	movs	r2, #1
    571c:	18e3      	adds	r3, r4, r3
    571e:	6859      	ldr	r1, [r3, #4]
    5720:	0038      	movs	r0, r7
    5722:	430a      	orrs	r2, r1
    5724:	605a      	str	r2, [r3, #4]
    5726:	f000 f9d5 	bl	5ad4 <__malloc_unlock>
    572a:	0020      	movs	r0, r4
    572c:	3008      	adds	r0, #8
    572e:	b003      	add	sp, #12
    5730:	bc3c      	pop	{r2, r3, r4, r5}
    5732:	4690      	mov	r8, r2
    5734:	4699      	mov	r9, r3
    5736:	46a2      	mov	sl, r4
    5738:	46ab      	mov	fp, r5
    573a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    573c:	230c      	movs	r3, #12
    573e:	2000      	movs	r0, #0
    5740:	603b      	str	r3, [r7, #0]
    5742:	e7f4      	b.n	572e <_malloc_r+0x1b2>
    5744:	2340      	movs	r3, #64	; 0x40
    5746:	4698      	mov	r8, r3
    5748:	3b01      	subs	r3, #1
    574a:	2180      	movs	r1, #128	; 0x80
    574c:	469c      	mov	ip, r3
    574e:	e73f      	b.n	55d0 <_malloc_r+0x54>
    5750:	4663      	mov	r3, ip
    5752:	9300      	str	r3, [sp, #0]
    5754:	e75d      	b.n	5612 <_malloc_r+0x96>
    5756:	2303      	movs	r3, #3
    5758:	68b4      	ldr	r4, [r6, #8]
    575a:	6862      	ldr	r2, [r4, #4]
    575c:	439a      	bics	r2, r3
    575e:	4690      	mov	r8, r2
    5760:	42aa      	cmp	r2, r5
    5762:	d303      	bcc.n	576c <_malloc_r+0x1f0>
    5764:	1b52      	subs	r2, r2, r5
    5766:	2a0f      	cmp	r2, #15
    5768:	dd00      	ble.n	576c <_malloc_r+0x1f0>
    576a:	e087      	b.n	587c <_malloc_r+0x300>
    576c:	0023      	movs	r3, r4
    576e:	4443      	add	r3, r8
    5770:	4a63      	ldr	r2, [pc, #396]	; (5900 <_malloc_r+0x384>)
    5772:	9301      	str	r3, [sp, #4]
    5774:	4b63      	ldr	r3, [pc, #396]	; (5904 <_malloc_r+0x388>)
    5776:	4693      	mov	fp, r2
    5778:	681b      	ldr	r3, [r3, #0]
    577a:	6812      	ldr	r2, [r2, #0]
    577c:	18eb      	adds	r3, r5, r3
    577e:	3201      	adds	r2, #1
    5780:	d100      	bne.n	5784 <_malloc_r+0x208>
    5782:	e157      	b.n	5a34 <_malloc_r+0x4b8>
    5784:	4a60      	ldr	r2, [pc, #384]	; (5908 <_malloc_r+0x38c>)
    5786:	4694      	mov	ip, r2
    5788:	4463      	add	r3, ip
    578a:	0b1b      	lsrs	r3, r3, #12
    578c:	031b      	lsls	r3, r3, #12
    578e:	9300      	str	r3, [sp, #0]
    5790:	9900      	ldr	r1, [sp, #0]
    5792:	0038      	movs	r0, r7
    5794:	f000 f9a0 	bl	5ad8 <_sbrk_r>
    5798:	0003      	movs	r3, r0
    579a:	4681      	mov	r9, r0
    579c:	3301      	adds	r3, #1
    579e:	d061      	beq.n	5864 <_malloc_r+0x2e8>
    57a0:	9b01      	ldr	r3, [sp, #4]
    57a2:	4283      	cmp	r3, r0
    57a4:	d900      	bls.n	57a8 <_malloc_r+0x22c>
    57a6:	e0fd      	b.n	59a4 <_malloc_r+0x428>
    57a8:	4b58      	ldr	r3, [pc, #352]	; (590c <_malloc_r+0x390>)
    57aa:	9a00      	ldr	r2, [sp, #0]
    57ac:	469a      	mov	sl, r3
    57ae:	681b      	ldr	r3, [r3, #0]
    57b0:	469c      	mov	ip, r3
    57b2:	4653      	mov	r3, sl
    57b4:	4462      	add	r2, ip
    57b6:	601a      	str	r2, [r3, #0]
    57b8:	9b01      	ldr	r3, [sp, #4]
    57ba:	0011      	movs	r1, r2
    57bc:	454b      	cmp	r3, r9
    57be:	d100      	bne.n	57c2 <_malloc_r+0x246>
    57c0:	e143      	b.n	5a4a <_malloc_r+0x4ce>
    57c2:	465b      	mov	r3, fp
    57c4:	681b      	ldr	r3, [r3, #0]
    57c6:	3301      	adds	r3, #1
    57c8:	d100      	bne.n	57cc <_malloc_r+0x250>
    57ca:	e14f      	b.n	5a6c <_malloc_r+0x4f0>
    57cc:	464b      	mov	r3, r9
    57ce:	9a01      	ldr	r2, [sp, #4]
    57d0:	1a9b      	subs	r3, r3, r2
    57d2:	1859      	adds	r1, r3, r1
    57d4:	4653      	mov	r3, sl
    57d6:	6019      	str	r1, [r3, #0]
    57d8:	2307      	movs	r3, #7
    57da:	464a      	mov	r2, r9
    57dc:	4013      	ands	r3, r2
    57de:	d100      	bne.n	57e2 <_malloc_r+0x266>
    57e0:	e117      	b.n	5a12 <_malloc_r+0x496>
    57e2:	2108      	movs	r1, #8
    57e4:	4689      	mov	r9, r1
    57e6:	494a      	ldr	r1, [pc, #296]	; (5910 <_malloc_r+0x394>)
    57e8:	1ad2      	subs	r2, r2, r3
    57ea:	4491      	add	r9, r2
    57ec:	1ac9      	subs	r1, r1, r3
    57ee:	9b00      	ldr	r3, [sp, #0]
    57f0:	0038      	movs	r0, r7
    57f2:	444b      	add	r3, r9
    57f4:	051b      	lsls	r3, r3, #20
    57f6:	0d1b      	lsrs	r3, r3, #20
    57f8:	1acb      	subs	r3, r1, r3
    57fa:	0019      	movs	r1, r3
    57fc:	469b      	mov	fp, r3
    57fe:	f000 f96b 	bl	5ad8 <_sbrk_r>
    5802:	1c43      	adds	r3, r0, #1
    5804:	d100      	bne.n	5808 <_malloc_r+0x28c>
    5806:	e135      	b.n	5a74 <_malloc_r+0x4f8>
    5808:	464b      	mov	r3, r9
    580a:	1ac0      	subs	r0, r0, r3
    580c:	2301      	movs	r3, #1
    580e:	4458      	add	r0, fp
    5810:	4318      	orrs	r0, r3
    5812:	4653      	mov	r3, sl
    5814:	681b      	ldr	r3, [r3, #0]
    5816:	445b      	add	r3, fp
    5818:	0019      	movs	r1, r3
    581a:	4653      	mov	r3, sl
    581c:	6019      	str	r1, [r3, #0]
    581e:	464b      	mov	r3, r9
    5820:	60b3      	str	r3, [r6, #8]
    5822:	6058      	str	r0, [r3, #4]
    5824:	42b4      	cmp	r4, r6
    5826:	d013      	beq.n	5850 <_malloc_r+0x2d4>
    5828:	4643      	mov	r3, r8
    582a:	2b0f      	cmp	r3, #15
    582c:	d800      	bhi.n	5830 <_malloc_r+0x2b4>
    582e:	e0e1      	b.n	59f4 <_malloc_r+0x478>
    5830:	4643      	mov	r3, r8
    5832:	2207      	movs	r2, #7
    5834:	6860      	ldr	r0, [r4, #4]
    5836:	3b0c      	subs	r3, #12
    5838:	4393      	bics	r3, r2
    583a:	3a06      	subs	r2, #6
    583c:	4002      	ands	r2, r0
    583e:	2005      	movs	r0, #5
    5840:	431a      	orrs	r2, r3
    5842:	6062      	str	r2, [r4, #4]
    5844:	18e2      	adds	r2, r4, r3
    5846:	6050      	str	r0, [r2, #4]
    5848:	6090      	str	r0, [r2, #8]
    584a:	2b0f      	cmp	r3, #15
    584c:	d900      	bls.n	5850 <_malloc_r+0x2d4>
    584e:	e115      	b.n	5a7c <_malloc_r+0x500>
    5850:	4b30      	ldr	r3, [pc, #192]	; (5914 <_malloc_r+0x398>)
    5852:	681a      	ldr	r2, [r3, #0]
    5854:	4291      	cmp	r1, r2
    5856:	d900      	bls.n	585a <_malloc_r+0x2de>
    5858:	6019      	str	r1, [r3, #0]
    585a:	4b2f      	ldr	r3, [pc, #188]	; (5918 <_malloc_r+0x39c>)
    585c:	681a      	ldr	r2, [r3, #0]
    585e:	4291      	cmp	r1, r2
    5860:	d900      	bls.n	5864 <_malloc_r+0x2e8>
    5862:	6019      	str	r1, [r3, #0]
    5864:	2303      	movs	r3, #3
    5866:	68b4      	ldr	r4, [r6, #8]
    5868:	6862      	ldr	r2, [r4, #4]
    586a:	439a      	bics	r2, r3
    586c:	0013      	movs	r3, r2
    586e:	1b52      	subs	r2, r2, r5
    5870:	429d      	cmp	r5, r3
    5872:	d900      	bls.n	5876 <_malloc_r+0x2fa>
    5874:	e0c1      	b.n	59fa <_malloc_r+0x47e>
    5876:	2a0f      	cmp	r2, #15
    5878:	dc00      	bgt.n	587c <_malloc_r+0x300>
    587a:	e0be      	b.n	59fa <_malloc_r+0x47e>
    587c:	2301      	movs	r3, #1
    587e:	0029      	movs	r1, r5
    5880:	1965      	adds	r5, r4, r5
    5882:	4319      	orrs	r1, r3
    5884:	4313      	orrs	r3, r2
    5886:	6061      	str	r1, [r4, #4]
    5888:	0038      	movs	r0, r7
    588a:	60b5      	str	r5, [r6, #8]
    588c:	606b      	str	r3, [r5, #4]
    588e:	f000 f921 	bl	5ad4 <__malloc_unlock>
    5892:	0020      	movs	r0, r4
    5894:	3008      	adds	r0, #8
    5896:	e74a      	b.n	572e <_malloc_r+0x1b2>
    5898:	2b14      	cmp	r3, #20
    589a:	d974      	bls.n	5986 <_malloc_r+0x40a>
    589c:	2b54      	cmp	r3, #84	; 0x54
    589e:	d900      	bls.n	58a2 <_malloc_r+0x326>
    58a0:	e0b0      	b.n	5a04 <_malloc_r+0x488>
    58a2:	0b29      	lsrs	r1, r5, #12
    58a4:	236e      	movs	r3, #110	; 0x6e
    58a6:	e68c      	b.n	55c2 <_malloc_r+0x46>
    58a8:	0a4a      	lsrs	r2, r1, #9
    58aa:	2a04      	cmp	r2, #4
    58ac:	d974      	bls.n	5998 <_malloc_r+0x41c>
    58ae:	2a14      	cmp	r2, #20
    58b0:	d900      	bls.n	58b4 <_malloc_r+0x338>
    58b2:	e0c2      	b.n	5a3a <_malloc_r+0x4be>
    58b4:	0010      	movs	r0, r2
    58b6:	325c      	adds	r2, #92	; 0x5c
    58b8:	305b      	adds	r0, #91	; 0x5b
    58ba:	0052      	lsls	r2, r2, #1
    58bc:	2108      	movs	r1, #8
    58be:	4249      	negs	r1, r1
    58c0:	468c      	mov	ip, r1
    58c2:	0092      	lsls	r2, r2, #2
    58c4:	18b2      	adds	r2, r6, r2
    58c6:	4494      	add	ip, r2
    58c8:	4662      	mov	r2, ip
    58ca:	6892      	ldr	r2, [r2, #8]
    58cc:	310b      	adds	r1, #11
    58ce:	4688      	mov	r8, r1
    58d0:	4594      	cmp	ip, r2
    58d2:	d100      	bne.n	58d6 <_malloc_r+0x35a>
    58d4:	e0a0      	b.n	5a18 <_malloc_r+0x49c>
    58d6:	4641      	mov	r1, r8
    58d8:	6850      	ldr	r0, [r2, #4]
    58da:	4388      	bics	r0, r1
    58dc:	4283      	cmp	r3, r0
    58de:	d202      	bcs.n	58e6 <_malloc_r+0x36a>
    58e0:	6892      	ldr	r2, [r2, #8]
    58e2:	4594      	cmp	ip, r2
    58e4:	d1f7      	bne.n	58d6 <_malloc_r+0x35a>
    58e6:	68d3      	ldr	r3, [r2, #12]
    58e8:	469c      	mov	ip, r3
    58ea:	6873      	ldr	r3, [r6, #4]
    58ec:	4661      	mov	r1, ip
    58ee:	60a2      	str	r2, [r4, #8]
    58f0:	60e1      	str	r1, [r4, #12]
    58f2:	608c      	str	r4, [r1, #8]
    58f4:	60d4      	str	r4, [r2, #12]
    58f6:	e6b1      	b.n	565c <_malloc_r+0xe0>
    58f8:	20000444 	.word	0x20000444
    58fc:	000001ff 	.word	0x000001ff
    5900:	20000850 	.word	0x20000850
    5904:	20006048 	.word	0x20006048
    5908:	0000100f 	.word	0x0000100f
    590c:	2000604c 	.word	0x2000604c
    5910:	00001008 	.word	0x00001008
    5914:	20006044 	.word	0x20006044
    5918:	20006040 	.word	0x20006040
    591c:	2101      	movs	r1, #1
    591e:	1963      	adds	r3, r4, r5
    5920:	430d      	orrs	r5, r1
    5922:	4301      	orrs	r1, r0
    5924:	6065      	str	r5, [r4, #4]
    5926:	6173      	str	r3, [r6, #20]
    5928:	6133      	str	r3, [r6, #16]
    592a:	60da      	str	r2, [r3, #12]
    592c:	609a      	str	r2, [r3, #8]
    592e:	6059      	str	r1, [r3, #4]
    5930:	5018      	str	r0, [r3, r0]
    5932:	0038      	movs	r0, r7
    5934:	f000 f8ce 	bl	5ad4 <__malloc_unlock>
    5938:	0020      	movs	r0, r4
    593a:	3008      	adds	r0, #8
    593c:	e6f7      	b.n	572e <_malloc_r+0x1b2>
    593e:	6873      	ldr	r3, [r6, #4]
    5940:	e68c      	b.n	565c <_malloc_r+0xe0>
    5942:	2308      	movs	r3, #8
    5944:	469b      	mov	fp, r3
    5946:	3b07      	subs	r3, #7
    5948:	44dc      	add	ip, fp
    594a:	469b      	mov	fp, r3
    594c:	44da      	add	sl, fp
    594e:	4643      	mov	r3, r8
    5950:	4652      	mov	r2, sl
    5952:	4213      	tst	r3, r2
    5954:	d000      	beq.n	5958 <_malloc_r+0x3dc>
    5956:	e69f      	b.n	5698 <_malloc_r+0x11c>
    5958:	e033      	b.n	59c2 <_malloc_r+0x446>
    595a:	68dc      	ldr	r4, [r3, #12]
    595c:	1c8a      	adds	r2, r1, #2
    595e:	9200      	str	r2, [sp, #0]
    5960:	42a3      	cmp	r3, r4
    5962:	d100      	bne.n	5966 <_malloc_r+0x3ea>
    5964:	e655      	b.n	5612 <_malloc_r+0x96>
    5966:	e6d0      	b.n	570a <_malloc_r+0x18e>
    5968:	2201      	movs	r2, #1
    596a:	18e3      	adds	r3, r4, r3
    596c:	6859      	ldr	r1, [r3, #4]
    596e:	0038      	movs	r0, r7
    5970:	430a      	orrs	r2, r1
    5972:	605a      	str	r2, [r3, #4]
    5974:	68e3      	ldr	r3, [r4, #12]
    5976:	68a2      	ldr	r2, [r4, #8]
    5978:	60d3      	str	r3, [r2, #12]
    597a:	609a      	str	r2, [r3, #8]
    597c:	f000 f8aa 	bl	5ad4 <__malloc_unlock>
    5980:	0020      	movs	r0, r4
    5982:	3008      	adds	r0, #8
    5984:	e6d3      	b.n	572e <_malloc_r+0x1b2>
    5986:	225b      	movs	r2, #91	; 0x5b
    5988:	4694      	mov	ip, r2
    598a:	3201      	adds	r2, #1
    598c:	4690      	mov	r8, r2
    598e:	4498      	add	r8, r3
    5990:	449c      	add	ip, r3
    5992:	4643      	mov	r3, r8
    5994:	0059      	lsls	r1, r3, #1
    5996:	e61b      	b.n	55d0 <_malloc_r+0x54>
    5998:	098a      	lsrs	r2, r1, #6
    599a:	0010      	movs	r0, r2
    599c:	3239      	adds	r2, #57	; 0x39
    599e:	3038      	adds	r0, #56	; 0x38
    59a0:	0052      	lsls	r2, r2, #1
    59a2:	e78b      	b.n	58bc <_malloc_r+0x340>
    59a4:	42b4      	cmp	r4, r6
    59a6:	d000      	beq.n	59aa <_malloc_r+0x42e>
    59a8:	e75c      	b.n	5864 <_malloc_r+0x2e8>
    59aa:	e6fd      	b.n	57a8 <_malloc_r+0x22c>
    59ac:	9b00      	ldr	r3, [sp, #0]
    59ae:	3b01      	subs	r3, #1
    59b0:	9300      	str	r3, [sp, #0]
    59b2:	2308      	movs	r3, #8
    59b4:	425b      	negs	r3, r3
    59b6:	469c      	mov	ip, r3
    59b8:	44e1      	add	r9, ip
    59ba:	464b      	mov	r3, r9
    59bc:	689b      	ldr	r3, [r3, #8]
    59be:	4599      	cmp	r9, r3
    59c0:	d17a      	bne.n	5ab8 <_malloc_r+0x53c>
    59c2:	4643      	mov	r3, r8
    59c4:	9a00      	ldr	r2, [sp, #0]
    59c6:	4213      	tst	r3, r2
    59c8:	d1f0      	bne.n	59ac <_malloc_r+0x430>
    59ca:	6873      	ldr	r3, [r6, #4]
    59cc:	4383      	bics	r3, r0
    59ce:	6073      	str	r3, [r6, #4]
    59d0:	0040      	lsls	r0, r0, #1
    59d2:	4298      	cmp	r0, r3
    59d4:	d900      	bls.n	59d8 <_malloc_r+0x45c>
    59d6:	e6be      	b.n	5756 <_malloc_r+0x1da>
    59d8:	2800      	cmp	r0, #0
    59da:	d100      	bne.n	59de <_malloc_r+0x462>
    59dc:	e6bb      	b.n	5756 <_malloc_r+0x1da>
    59de:	4203      	tst	r3, r0
    59e0:	d170      	bne.n	5ac4 <_malloc_r+0x548>
    59e2:	4652      	mov	r2, sl
    59e4:	9200      	str	r2, [sp, #0]
    59e6:	9a00      	ldr	r2, [sp, #0]
    59e8:	0040      	lsls	r0, r0, #1
    59ea:	3204      	adds	r2, #4
    59ec:	9200      	str	r2, [sp, #0]
    59ee:	4203      	tst	r3, r0
    59f0:	d0f9      	beq.n	59e6 <_malloc_r+0x46a>
    59f2:	e64b      	b.n	568c <_malloc_r+0x110>
    59f4:	2301      	movs	r3, #1
    59f6:	464a      	mov	r2, r9
    59f8:	6053      	str	r3, [r2, #4]
    59fa:	0038      	movs	r0, r7
    59fc:	f000 f86a 	bl	5ad4 <__malloc_unlock>
    5a00:	2000      	movs	r0, #0
    5a02:	e694      	b.n	572e <_malloc_r+0x1b2>
    5a04:	22aa      	movs	r2, #170	; 0xaa
    5a06:	0052      	lsls	r2, r2, #1
    5a08:	4293      	cmp	r3, r2
    5a0a:	d80d      	bhi.n	5a28 <_malloc_r+0x4ac>
    5a0c:	0be9      	lsrs	r1, r5, #15
    5a0e:	2377      	movs	r3, #119	; 0x77
    5a10:	e5d7      	b.n	55c2 <_malloc_r+0x46>
    5a12:	2180      	movs	r1, #128	; 0x80
    5a14:	0149      	lsls	r1, r1, #5
    5a16:	e6ea      	b.n	57ee <_malloc_r+0x272>
    5a18:	2301      	movs	r3, #1
    5a1a:	1080      	asrs	r0, r0, #2
    5a1c:	4083      	lsls	r3, r0
    5a1e:	6872      	ldr	r2, [r6, #4]
    5a20:	4313      	orrs	r3, r2
    5a22:	6073      	str	r3, [r6, #4]
    5a24:	4662      	mov	r2, ip
    5a26:	e761      	b.n	58ec <_malloc_r+0x370>
    5a28:	4a28      	ldr	r2, [pc, #160]	; (5acc <_malloc_r+0x550>)
    5a2a:	4293      	cmp	r3, r2
    5a2c:	d818      	bhi.n	5a60 <_malloc_r+0x4e4>
    5a2e:	0ca9      	lsrs	r1, r5, #18
    5a30:	237c      	movs	r3, #124	; 0x7c
    5a32:	e5c6      	b.n	55c2 <_malloc_r+0x46>
    5a34:	3310      	adds	r3, #16
    5a36:	9300      	str	r3, [sp, #0]
    5a38:	e6aa      	b.n	5790 <_malloc_r+0x214>
    5a3a:	2a54      	cmp	r2, #84	; 0x54
    5a3c:	d826      	bhi.n	5a8c <_malloc_r+0x510>
    5a3e:	0b0a      	lsrs	r2, r1, #12
    5a40:	0010      	movs	r0, r2
    5a42:	326f      	adds	r2, #111	; 0x6f
    5a44:	306e      	adds	r0, #110	; 0x6e
    5a46:	0052      	lsls	r2, r2, #1
    5a48:	e738      	b.n	58bc <_malloc_r+0x340>
    5a4a:	051b      	lsls	r3, r3, #20
    5a4c:	d000      	beq.n	5a50 <_malloc_r+0x4d4>
    5a4e:	e6b8      	b.n	57c2 <_malloc_r+0x246>
    5a50:	9b00      	ldr	r3, [sp, #0]
    5a52:	68b2      	ldr	r2, [r6, #8]
    5a54:	4443      	add	r3, r8
    5a56:	0018      	movs	r0, r3
    5a58:	2301      	movs	r3, #1
    5a5a:	4303      	orrs	r3, r0
    5a5c:	6053      	str	r3, [r2, #4]
    5a5e:	e6f7      	b.n	5850 <_malloc_r+0x2d4>
    5a60:	237f      	movs	r3, #127	; 0x7f
    5a62:	4698      	mov	r8, r3
    5a64:	3b01      	subs	r3, #1
    5a66:	21fe      	movs	r1, #254	; 0xfe
    5a68:	469c      	mov	ip, r3
    5a6a:	e5b1      	b.n	55d0 <_malloc_r+0x54>
    5a6c:	465b      	mov	r3, fp
    5a6e:	464a      	mov	r2, r9
    5a70:	601a      	str	r2, [r3, #0]
    5a72:	e6b1      	b.n	57d8 <_malloc_r+0x25c>
    5a74:	2300      	movs	r3, #0
    5a76:	2001      	movs	r0, #1
    5a78:	469b      	mov	fp, r3
    5a7a:	e6ca      	b.n	5812 <_malloc_r+0x296>
    5a7c:	0021      	movs	r1, r4
    5a7e:	0038      	movs	r0, r7
    5a80:	3108      	adds	r1, #8
    5a82:	f7ff fc99 	bl	53b8 <_free_r>
    5a86:	4653      	mov	r3, sl
    5a88:	6819      	ldr	r1, [r3, #0]
    5a8a:	e6e1      	b.n	5850 <_malloc_r+0x2d4>
    5a8c:	20aa      	movs	r0, #170	; 0xaa
    5a8e:	0040      	lsls	r0, r0, #1
    5a90:	4282      	cmp	r2, r0
    5a92:	d805      	bhi.n	5aa0 <_malloc_r+0x524>
    5a94:	0bca      	lsrs	r2, r1, #15
    5a96:	0010      	movs	r0, r2
    5a98:	3278      	adds	r2, #120	; 0x78
    5a9a:	3077      	adds	r0, #119	; 0x77
    5a9c:	0052      	lsls	r2, r2, #1
    5a9e:	e70d      	b.n	58bc <_malloc_r+0x340>
    5aa0:	480a      	ldr	r0, [pc, #40]	; (5acc <_malloc_r+0x550>)
    5aa2:	4282      	cmp	r2, r0
    5aa4:	d805      	bhi.n	5ab2 <_malloc_r+0x536>
    5aa6:	0c8a      	lsrs	r2, r1, #18
    5aa8:	0010      	movs	r0, r2
    5aaa:	327d      	adds	r2, #125	; 0x7d
    5aac:	307c      	adds	r0, #124	; 0x7c
    5aae:	0052      	lsls	r2, r2, #1
    5ab0:	e704      	b.n	58bc <_malloc_r+0x340>
    5ab2:	22fe      	movs	r2, #254	; 0xfe
    5ab4:	207e      	movs	r0, #126	; 0x7e
    5ab6:	e701      	b.n	58bc <_malloc_r+0x340>
    5ab8:	6873      	ldr	r3, [r6, #4]
    5aba:	e789      	b.n	59d0 <_malloc_r+0x454>
    5abc:	08e9      	lsrs	r1, r5, #3
    5abe:	1c4b      	adds	r3, r1, #1
    5ac0:	005b      	lsls	r3, r3, #1
    5ac2:	e619      	b.n	56f8 <_malloc_r+0x17c>
    5ac4:	4653      	mov	r3, sl
    5ac6:	9300      	str	r3, [sp, #0]
    5ac8:	e5e0      	b.n	568c <_malloc_r+0x110>
    5aca:	46c0      	nop			; (mov r8, r8)
    5acc:	00000554 	.word	0x00000554

00005ad0 <__malloc_lock>:
    5ad0:	4770      	bx	lr
    5ad2:	46c0      	nop			; (mov r8, r8)

00005ad4 <__malloc_unlock>:
    5ad4:	4770      	bx	lr
    5ad6:	46c0      	nop			; (mov r8, r8)

00005ad8 <_sbrk_r>:
    5ad8:	2300      	movs	r3, #0
    5ada:	b570      	push	{r4, r5, r6, lr}
    5adc:	4c06      	ldr	r4, [pc, #24]	; (5af8 <_sbrk_r+0x20>)
    5ade:	0005      	movs	r5, r0
    5ae0:	0008      	movs	r0, r1
    5ae2:	6023      	str	r3, [r4, #0]
    5ae4:	f7fb f872 	bl	bcc <_sbrk>
    5ae8:	1c43      	adds	r3, r0, #1
    5aea:	d000      	beq.n	5aee <_sbrk_r+0x16>
    5aec:	bd70      	pop	{r4, r5, r6, pc}
    5aee:	6823      	ldr	r3, [r4, #0]
    5af0:	2b00      	cmp	r3, #0
    5af2:	d0fb      	beq.n	5aec <_sbrk_r+0x14>
    5af4:	602b      	str	r3, [r5, #0]
    5af6:	e7f9      	b.n	5aec <_sbrk_r+0x14>
    5af8:	20006074 	.word	0x20006074

00005afc <osThreadExit>:
    5afc:	b580      	push	{r7, lr}
    5afe:	4f03      	ldr	r7, [pc, #12]	; (5b0c <osThreadExit+0x10>)
    5b00:	46bc      	mov	ip, r7
    5b02:	df00      	svc	0
    5b04:	4f02      	ldr	r7, [pc, #8]	; (5b10 <osThreadExit+0x14>)
    5b06:	46bc      	mov	ip, r7
    5b08:	df00      	svc	0
    5b0a:	e7fe      	b.n	5b0a <osThreadExit+0xe>
    5b0c:	00005f3d 	.word	0x00005f3d
    5b10:	00005f59 	.word	0x00005f59

00005b14 <svcKernelInitialize>:
    5b14:	b570      	push	{r4, r5, r6, lr}
    5b16:	4c39      	ldr	r4, [pc, #228]	; (5bfc <svcKernelInitialize+0xe8>)
    5b18:	b084      	sub	sp, #16
    5b1a:	7823      	ldrb	r3, [r4, #0]
    5b1c:	2b00      	cmp	r3, #0
    5b1e:	d00b      	beq.n	5b38 <svcKernelInitialize+0x24>
    5b20:	22ff      	movs	r2, #255	; 0xff
    5b22:	4b37      	ldr	r3, [pc, #220]	; (5c00 <svcKernelInitialize+0xec>)
    5b24:	681b      	ldr	r3, [r3, #0]
    5b26:	709a      	strb	r2, [r3, #2]
    5b28:	2301      	movs	r3, #1
    5b2a:	2200      	movs	r2, #0
    5b2c:	2000      	movs	r0, #0
    5b2e:	7023      	strb	r3, [r4, #0]
    5b30:	4b34      	ldr	r3, [pc, #208]	; (5c04 <svcKernelInitialize+0xf0>)
    5b32:	701a      	strb	r2, [r3, #0]
    5b34:	b004      	add	sp, #16
    5b36:	bd70      	pop	{r4, r5, r6, pc}
    5b38:	4b33      	ldr	r3, [pc, #204]	; (5c08 <svcKernelInitialize+0xf4>)
    5b3a:	4e34      	ldr	r6, [pc, #208]	; (5c0c <svcKernelInitialize+0xf8>)
    5b3c:	6819      	ldr	r1, [r3, #0]
    5b3e:	0030      	movs	r0, r6
    5b40:	f001 fc60 	bl	7404 <rt_init_mem>
    5b44:	0003      	movs	r3, r0
    5b46:	2085      	movs	r0, #133	; 0x85
    5b48:	2b00      	cmp	r3, #0
    5b4a:	d1f3      	bne.n	5b34 <svcKernelInitialize+0x20>
    5b4c:	f002 fe70 	bl	8830 <rt_sys_init>
    5b50:	21ff      	movs	r1, #255	; 0xff
    5b52:	4a2b      	ldr	r2, [pc, #172]	; (5c00 <svcKernelInitialize+0xec>)
    5b54:	7823      	ldrb	r3, [r4, #0]
    5b56:	6812      	ldr	r2, [r2, #0]
    5b58:	7091      	strb	r1, [r2, #2]
    5b5a:	2b00      	cmp	r3, #0
    5b5c:	d1e4      	bne.n	5b28 <svcKernelInitialize+0x14>
    5b5e:	4b2c      	ldr	r3, [pc, #176]	; (5c10 <svcKernelInitialize+0xfc>)
    5b60:	681a      	ldr	r2, [r3, #0]
    5b62:	9201      	str	r2, [sp, #4]
    5b64:	2a00      	cmp	r2, #0
    5b66:	d047      	beq.n	5bf8 <svcKernelInitialize+0xe4>
    5b68:	685d      	ldr	r5, [r3, #4]
    5b6a:	2d00      	cmp	r5, #0
    5b6c:	d044      	beq.n	5bf8 <svcKernelInitialize+0xe4>
    5b6e:	782b      	ldrb	r3, [r5, #0]
    5b70:	2b00      	cmp	r3, #0
    5b72:	d141      	bne.n	5bf8 <svcKernelInitialize+0xe4>
    5b74:	0011      	movs	r1, r2
    5b76:	3104      	adds	r1, #4
    5b78:	0089      	lsls	r1, r1, #2
    5b7a:	b289      	uxth	r1, r1
    5b7c:	0028      	movs	r0, r5
    5b7e:	f001 feeb 	bl	7958 <rt_mbx_init>
    5b82:	4b24      	ldr	r3, [pc, #144]	; (5c14 <svcKernelInitialize+0x100>)
    5b84:	601d      	str	r5, [r3, #0]
    5b86:	4b24      	ldr	r3, [pc, #144]	; (5c18 <svcKernelInitialize+0x104>)
    5b88:	681a      	ldr	r2, [r3, #0]
    5b8a:	9201      	str	r2, [sp, #4]
    5b8c:	2a00      	cmp	r2, #0
    5b8e:	d01e      	beq.n	5bce <svcKernelInitialize+0xba>
    5b90:	685a      	ldr	r2, [r3, #4]
    5b92:	9202      	str	r2, [sp, #8]
    5b94:	3203      	adds	r2, #3
    5b96:	2a06      	cmp	r2, #6
    5b98:	d819      	bhi.n	5bce <svcKernelInitialize+0xba>
    5b9a:	68db      	ldr	r3, [r3, #12]
    5b9c:	9303      	str	r3, [sp, #12]
    5b9e:	2b00      	cmp	r3, #0
    5ba0:	d019      	beq.n	5bd6 <svcKernelInitialize+0xc2>
    5ba2:	0019      	movs	r1, r3
    5ba4:	0030      	movs	r0, r6
    5ba6:	f001 fc3b 	bl	7420 <rt_alloc_mem>
    5baa:	1e05      	subs	r5, r0, #0
    5bac:	d00f      	beq.n	5bce <svcKernelInitialize+0xba>
    5bae:	9b03      	ldr	r3, [sp, #12]
    5bb0:	9902      	ldr	r1, [sp, #8]
    5bb2:	021b      	lsls	r3, r3, #8
    5bb4:	3104      	adds	r1, #4
    5bb6:	4319      	orrs	r1, r3
    5bb8:	0002      	movs	r2, r0
    5bba:	2300      	movs	r3, #0
    5bbc:	9801      	ldr	r0, [sp, #4]
    5bbe:	f002 fcf7 	bl	85b0 <rt_tsk_create>
    5bc2:	2800      	cmp	r0, #0
    5bc4:	d110      	bne.n	5be8 <svcKernelInitialize+0xd4>
    5bc6:	0029      	movs	r1, r5
    5bc8:	0030      	movs	r0, r6
    5bca:	f001 fc4b 	bl	7464 <rt_free_mem>
    5bce:	2300      	movs	r3, #0
    5bd0:	4a12      	ldr	r2, [pc, #72]	; (5c1c <svcKernelInitialize+0x108>)
    5bd2:	6013      	str	r3, [r2, #0]
    5bd4:	e7a8      	b.n	5b28 <svcKernelInitialize+0x14>
    5bd6:	9902      	ldr	r1, [sp, #8]
    5bd8:	2300      	movs	r3, #0
    5bda:	3104      	adds	r1, #4
    5bdc:	2200      	movs	r2, #0
    5bde:	9801      	ldr	r0, [sp, #4]
    5be0:	f002 fce6 	bl	85b0 <rt_tsk_create>
    5be4:	2800      	cmp	r0, #0
    5be6:	d0f2      	beq.n	5bce <svcKernelInitialize+0xba>
    5be8:	3801      	subs	r0, #1
    5bea:	4b0d      	ldr	r3, [pc, #52]	; (5c20 <svcKernelInitialize+0x10c>)
    5bec:	0080      	lsls	r0, r0, #2
    5bee:	58c3      	ldr	r3, [r0, r3]
    5bf0:	490c      	ldr	r1, [pc, #48]	; (5c24 <svcKernelInitialize+0x110>)
    5bf2:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5bf4:	6351      	str	r1, [r2, #52]	; 0x34
    5bf6:	e7eb      	b.n	5bd0 <svcKernelInitialize+0xbc>
    5bf8:	2500      	movs	r5, #0
    5bfa:	e7c2      	b.n	5b82 <svcKernelInitialize+0x6e>
    5bfc:	20006078 	.word	0x20006078
    5c00:	200060b8 	.word	0x200060b8
    5c04:	20006079 	.word	0x20006079
    5c08:	00008b38 	.word	0x00008b38
    5c0c:	200039f8 	.word	0x200039f8
    5c10:	00008b50 	.word	0x00008b50
    5c14:	20004d10 	.word	0x20004d10
    5c18:	00008b40 	.word	0x00008b40
    5c1c:	20004cec 	.word	0x20004cec
    5c20:	20004cdc 	.word	0x20004cdc
    5c24:	00005afd 	.word	0x00005afd

00005c28 <svcKernelStart>:
    5c28:	b570      	push	{r4, r5, r6, lr}
    5c2a:	4c10      	ldr	r4, [pc, #64]	; (5c6c <svcKernelStart+0x44>)
    5c2c:	7823      	ldrb	r3, [r4, #0]
    5c2e:	2b00      	cmp	r3, #0
    5c30:	d001      	beq.n	5c36 <svcKernelStart+0xe>
    5c32:	2000      	movs	r0, #0
    5c34:	bd70      	pop	{r4, r5, r6, pc}
    5c36:	4d0e      	ldr	r5, [pc, #56]	; (5c70 <svcKernelStart+0x48>)
    5c38:	3324      	adds	r3, #36	; 0x24
    5c3a:	682a      	ldr	r2, [r5, #0]
    5c3c:	2000      	movs	r0, #0
    5c3e:	5cd1      	ldrb	r1, [r2, r3]
    5c40:	f002 fc5a 	bl	84f8 <rt_tsk_prio>
    5c44:	682b      	ldr	r3, [r5, #0]
    5c46:	78da      	ldrb	r2, [r3, #3]
    5c48:	2aff      	cmp	r2, #255	; 0xff
    5c4a:	d007      	beq.n	5c5c <svcKernelStart+0x34>
    5c4c:	686a      	ldr	r2, [r5, #4]
    5c4e:	2a00      	cmp	r2, #0
    5c50:	d009      	beq.n	5c66 <svcKernelStart+0x3e>
    5c52:	f002 fe65 	bl	8920 <rt_sys_start>
    5c56:	2301      	movs	r3, #1
    5c58:	7023      	strb	r3, [r4, #0]
    5c5a:	e7ea      	b.n	5c32 <svcKernelStart+0xa>
    5c5c:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5c5e:	3220      	adds	r2, #32
    5c60:	f382 8809 	msr	PSP, r2
    5c64:	e7f2      	b.n	5c4c <svcKernelStart+0x24>
    5c66:	c50c      	stmia	r5!, {r2, r3}
    5c68:	e7f3      	b.n	5c52 <svcKernelStart+0x2a>
    5c6a:	46c0      	nop			; (mov r8, r8)
    5c6c:	20006079 	.word	0x20006079
    5c70:	200060b8 	.word	0x200060b8

00005c74 <svcKernelRunning>:
    5c74:	4b01      	ldr	r3, [pc, #4]	; (5c7c <svcKernelRunning+0x8>)
    5c76:	7818      	ldrb	r0, [r3, #0]
    5c78:	4770      	bx	lr
    5c7a:	46c0      	nop			; (mov r8, r8)
    5c7c:	20006079 	.word	0x20006079

00005c80 <svcKernelSysTick>:
    5c80:	b510      	push	{r4, lr}
    5c82:	b082      	sub	sp, #8
    5c84:	f002 fb88 	bl	8398 <os_tick_val>
    5c88:	0004      	movs	r4, r0
    5c8a:	f002 fb8f 	bl	83ac <os_tick_ovf>
    5c8e:	2800      	cmp	r0, #0
    5c90:	d109      	bne.n	5ca6 <svcKernelSysTick+0x26>
    5c92:	4b0d      	ldr	r3, [pc, #52]	; (5cc8 <svcKernelSysTick+0x48>)
    5c94:	681b      	ldr	r3, [r3, #0]
    5c96:	1c58      	adds	r0, r3, #1
    5c98:	9301      	str	r3, [sp, #4]
    5c9a:	4b0c      	ldr	r3, [pc, #48]	; (5ccc <svcKernelSysTick+0x4c>)
    5c9c:	681b      	ldr	r3, [r3, #0]
    5c9e:	4358      	muls	r0, r3
    5ca0:	1900      	adds	r0, r0, r4
    5ca2:	b002      	add	sp, #8
    5ca4:	bd10      	pop	{r4, pc}
    5ca6:	f002 fb77 	bl	8398 <os_tick_val>
    5caa:	4284      	cmp	r4, r0
    5cac:	d809      	bhi.n	5cc2 <svcKernelSysTick+0x42>
    5cae:	4b06      	ldr	r3, [pc, #24]	; (5cc8 <svcKernelSysTick+0x48>)
    5cb0:	4a06      	ldr	r2, [pc, #24]	; (5ccc <svcKernelSysTick+0x4c>)
    5cb2:	681b      	ldr	r3, [r3, #0]
    5cb4:	6810      	ldr	r0, [r2, #0]
    5cb6:	9301      	str	r3, [sp, #4]
    5cb8:	3001      	adds	r0, #1
    5cba:	3301      	adds	r3, #1
    5cbc:	4358      	muls	r0, r3
    5cbe:	1900      	adds	r0, r0, r4
    5cc0:	e7ef      	b.n	5ca2 <svcKernelSysTick+0x22>
    5cc2:	0004      	movs	r4, r0
    5cc4:	e7f3      	b.n	5cae <svcKernelSysTick+0x2e>
    5cc6:	46c0      	nop			; (mov r8, r8)
    5cc8:	00008b18 	.word	0x00008b18
    5ccc:	20006080 	.word	0x20006080

00005cd0 <osKernelInitialize>:
    5cd0:	b5f0      	push	{r4, r5, r6, r7, lr}
    5cd2:	b085      	sub	sp, #20
    5cd4:	f3ef 8405 	mrs	r4, IPSR
    5cd8:	2582      	movs	r5, #130	; 0x82
    5cda:	2c00      	cmp	r4, #0
    5cdc:	d002      	beq.n	5ce4 <osKernelInitialize+0x14>
    5cde:	0028      	movs	r0, r5
    5ce0:	b005      	add	sp, #20
    5ce2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5ce4:	f3ef 8414 	mrs	r4, CONTROL
    5ce8:	07e4      	lsls	r4, r4, #31
    5cea:	d504      	bpl.n	5cf6 <osKernelInitialize+0x26>
    5cec:	4f45      	ldr	r7, [pc, #276]	; (5e04 <osKernelInitialize+0x134>)
    5cee:	46bc      	mov	ip, r7
    5cf0:	df00      	svc	0
    5cf2:	0005      	movs	r5, r0
    5cf4:	e7f3      	b.n	5cde <osKernelInitialize+0xe>
    5cf6:	4c38      	ldr	r4, [pc, #224]	; (5dd8 <osKernelInitialize+0x108>)
    5cf8:	7823      	ldrb	r3, [r4, #0]
    5cfa:	2b00      	cmp	r3, #0
    5cfc:	d00a      	beq.n	5d14 <osKernelInitialize+0x44>
    5cfe:	22ff      	movs	r2, #255	; 0xff
    5d00:	4b36      	ldr	r3, [pc, #216]	; (5ddc <osKernelInitialize+0x10c>)
    5d02:	681b      	ldr	r3, [r3, #0]
    5d04:	709a      	strb	r2, [r3, #2]
    5d06:	2301      	movs	r3, #1
    5d08:	2200      	movs	r2, #0
    5d0a:	7023      	strb	r3, [r4, #0]
    5d0c:	4b34      	ldr	r3, [pc, #208]	; (5de0 <osKernelInitialize+0x110>)
    5d0e:	2500      	movs	r5, #0
    5d10:	701a      	strb	r2, [r3, #0]
    5d12:	e7e4      	b.n	5cde <osKernelInitialize+0xe>
    5d14:	4e33      	ldr	r6, [pc, #204]	; (5de4 <osKernelInitialize+0x114>)
    5d16:	4b34      	ldr	r3, [pc, #208]	; (5de8 <osKernelInitialize+0x118>)
    5d18:	0030      	movs	r0, r6
    5d1a:	6819      	ldr	r1, [r3, #0]
    5d1c:	f001 fb72 	bl	7404 <rt_init_mem>
    5d20:	3503      	adds	r5, #3
    5d22:	2800      	cmp	r0, #0
    5d24:	d1db      	bne.n	5cde <osKernelInitialize+0xe>
    5d26:	f002 fd83 	bl	8830 <rt_sys_init>
    5d2a:	21ff      	movs	r1, #255	; 0xff
    5d2c:	4a2b      	ldr	r2, [pc, #172]	; (5ddc <osKernelInitialize+0x10c>)
    5d2e:	7823      	ldrb	r3, [r4, #0]
    5d30:	6812      	ldr	r2, [r2, #0]
    5d32:	7091      	strb	r1, [r2, #2]
    5d34:	2b00      	cmp	r3, #0
    5d36:	d1e6      	bne.n	5d06 <osKernelInitialize+0x36>
    5d38:	4b2c      	ldr	r3, [pc, #176]	; (5dec <osKernelInitialize+0x11c>)
    5d3a:	681a      	ldr	r2, [r3, #0]
    5d3c:	9201      	str	r2, [sp, #4]
    5d3e:	2a00      	cmp	r2, #0
    5d40:	d047      	beq.n	5dd2 <osKernelInitialize+0x102>
    5d42:	685d      	ldr	r5, [r3, #4]
    5d44:	2d00      	cmp	r5, #0
    5d46:	d044      	beq.n	5dd2 <osKernelInitialize+0x102>
    5d48:	782b      	ldrb	r3, [r5, #0]
    5d4a:	2b00      	cmp	r3, #0
    5d4c:	d141      	bne.n	5dd2 <osKernelInitialize+0x102>
    5d4e:	0011      	movs	r1, r2
    5d50:	3104      	adds	r1, #4
    5d52:	0089      	lsls	r1, r1, #2
    5d54:	b289      	uxth	r1, r1
    5d56:	0028      	movs	r0, r5
    5d58:	f001 fdfe 	bl	7958 <rt_mbx_init>
    5d5c:	4b24      	ldr	r3, [pc, #144]	; (5df0 <osKernelInitialize+0x120>)
    5d5e:	601d      	str	r5, [r3, #0]
    5d60:	4b24      	ldr	r3, [pc, #144]	; (5df4 <osKernelInitialize+0x124>)
    5d62:	681a      	ldr	r2, [r3, #0]
    5d64:	9201      	str	r2, [sp, #4]
    5d66:	2a00      	cmp	r2, #0
    5d68:	d01e      	beq.n	5da8 <osKernelInitialize+0xd8>
    5d6a:	685a      	ldr	r2, [r3, #4]
    5d6c:	9202      	str	r2, [sp, #8]
    5d6e:	3203      	adds	r2, #3
    5d70:	2a06      	cmp	r2, #6
    5d72:	d819      	bhi.n	5da8 <osKernelInitialize+0xd8>
    5d74:	68db      	ldr	r3, [r3, #12]
    5d76:	9303      	str	r3, [sp, #12]
    5d78:	2b00      	cmp	r3, #0
    5d7a:	d019      	beq.n	5db0 <osKernelInitialize+0xe0>
    5d7c:	0019      	movs	r1, r3
    5d7e:	0030      	movs	r0, r6
    5d80:	f001 fb4e 	bl	7420 <rt_alloc_mem>
    5d84:	1e05      	subs	r5, r0, #0
    5d86:	d00f      	beq.n	5da8 <osKernelInitialize+0xd8>
    5d88:	9902      	ldr	r1, [sp, #8]
    5d8a:	9b03      	ldr	r3, [sp, #12]
    5d8c:	3104      	adds	r1, #4
    5d8e:	021b      	lsls	r3, r3, #8
    5d90:	4319      	orrs	r1, r3
    5d92:	0002      	movs	r2, r0
    5d94:	2300      	movs	r3, #0
    5d96:	9801      	ldr	r0, [sp, #4]
    5d98:	f002 fc0a 	bl	85b0 <rt_tsk_create>
    5d9c:	2800      	cmp	r0, #0
    5d9e:	d110      	bne.n	5dc2 <osKernelInitialize+0xf2>
    5da0:	0029      	movs	r1, r5
    5da2:	0030      	movs	r0, r6
    5da4:	f001 fb5e 	bl	7464 <rt_free_mem>
    5da8:	2300      	movs	r3, #0
    5daa:	4a13      	ldr	r2, [pc, #76]	; (5df8 <osKernelInitialize+0x128>)
    5dac:	6013      	str	r3, [r2, #0]
    5dae:	e7aa      	b.n	5d06 <osKernelInitialize+0x36>
    5db0:	9902      	ldr	r1, [sp, #8]
    5db2:	2300      	movs	r3, #0
    5db4:	3104      	adds	r1, #4
    5db6:	2200      	movs	r2, #0
    5db8:	9801      	ldr	r0, [sp, #4]
    5dba:	f002 fbf9 	bl	85b0 <rt_tsk_create>
    5dbe:	2800      	cmp	r0, #0
    5dc0:	d0f2      	beq.n	5da8 <osKernelInitialize+0xd8>
    5dc2:	3801      	subs	r0, #1
    5dc4:	4b0d      	ldr	r3, [pc, #52]	; (5dfc <osKernelInitialize+0x12c>)
    5dc6:	0080      	lsls	r0, r0, #2
    5dc8:	58c3      	ldr	r3, [r0, r3]
    5dca:	490d      	ldr	r1, [pc, #52]	; (5e00 <osKernelInitialize+0x130>)
    5dcc:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    5dce:	6351      	str	r1, [r2, #52]	; 0x34
    5dd0:	e7eb      	b.n	5daa <osKernelInitialize+0xda>
    5dd2:	2500      	movs	r5, #0
    5dd4:	e7c2      	b.n	5d5c <osKernelInitialize+0x8c>
    5dd6:	46c0      	nop			; (mov r8, r8)
    5dd8:	20006078 	.word	0x20006078
    5ddc:	200060b8 	.word	0x200060b8
    5de0:	20006079 	.word	0x20006079
    5de4:	200039f8 	.word	0x200039f8
    5de8:	00008b38 	.word	0x00008b38
    5dec:	00008b50 	.word	0x00008b50
    5df0:	20004d10 	.word	0x20004d10
    5df4:	00008b40 	.word	0x00008b40
    5df8:	20004cec 	.word	0x20004cec
    5dfc:	20004cdc 	.word	0x20004cdc
    5e00:	00005afd 	.word	0x00005afd
    5e04:	00005b15 	.word	0x00005b15

00005e08 <osKernelStart>:
    5e08:	b5b0      	push	{r4, r5, r7, lr}
    5e0a:	b088      	sub	sp, #32
    5e0c:	f3ef 8405 	mrs	r4, IPSR
    5e10:	2582      	movs	r5, #130	; 0x82
    5e12:	2c00      	cmp	r4, #0
    5e14:	d002      	beq.n	5e1c <osKernelStart+0x14>
    5e16:	0028      	movs	r0, r5
    5e18:	b008      	add	sp, #32
    5e1a:	bdb0      	pop	{r4, r5, r7, pc}
    5e1c:	f3ef 8414 	mrs	r4, CONTROL
    5e20:	3d7f      	subs	r5, #127	; 0x7f
    5e22:	402c      	ands	r4, r5
    5e24:	2c02      	cmp	r4, #2
    5e26:	d01c      	beq.n	5e62 <osKernelStart+0x5a>
    5e28:	2c03      	cmp	r4, #3
    5e2a:	d014      	beq.n	5e56 <osKernelStart+0x4e>
    5e2c:	2c01      	cmp	r4, #1
    5e2e:	d020      	beq.n	5e72 <osKernelStart+0x6a>
    5e30:	ac08      	add	r4, sp, #32
    5e32:	f384 8809 	msr	PSP, r4
    5e36:	4c10      	ldr	r4, [pc, #64]	; (5e78 <osKernelStart+0x70>)
    5e38:	7824      	ldrb	r4, [r4, #0]
    5e3a:	07e4      	lsls	r4, r4, #31
    5e3c:	d515      	bpl.n	5e6a <osKernelStart+0x62>
    5e3e:	2402      	movs	r4, #2
    5e40:	f384 8814 	msr	CONTROL, r4
    5e44:	f3bf 8f4f 	dsb	sy
    5e48:	f3bf 8f6f 	isb	sy
    5e4c:	4f0b      	ldr	r7, [pc, #44]	; (5e7c <osKernelStart+0x74>)
    5e4e:	46bc      	mov	ip, r7
    5e50:	df00      	svc	0
    5e52:	0005      	movs	r5, r0
    5e54:	e7df      	b.n	5e16 <osKernelStart+0xe>
    5e56:	4c08      	ldr	r4, [pc, #32]	; (5e78 <osKernelStart+0x70>)
    5e58:	25ff      	movs	r5, #255	; 0xff
    5e5a:	7824      	ldrb	r4, [r4, #0]
    5e5c:	07e4      	lsls	r4, r4, #31
    5e5e:	d4da      	bmi.n	5e16 <osKernelStart+0xe>
    5e60:	e7f4      	b.n	5e4c <osKernelStart+0x44>
    5e62:	4c05      	ldr	r4, [pc, #20]	; (5e78 <osKernelStart+0x70>)
    5e64:	7824      	ldrb	r4, [r4, #0]
    5e66:	07e4      	lsls	r4, r4, #31
    5e68:	d4f0      	bmi.n	5e4c <osKernelStart+0x44>
    5e6a:	2403      	movs	r4, #3
    5e6c:	f384 8814 	msr	CONTROL, r4
    5e70:	e7e8      	b.n	5e44 <osKernelStart+0x3c>
    5e72:	25ff      	movs	r5, #255	; 0xff
    5e74:	e7cf      	b.n	5e16 <osKernelStart+0xe>
    5e76:	46c0      	nop			; (mov r8, r8)
    5e78:	00008b1c 	.word	0x00008b1c
    5e7c:	00005c29 	.word	0x00005c29

00005e80 <osKernelRunning>:
    5e80:	b590      	push	{r4, r7, lr}
    5e82:	f3ef 8405 	mrs	r4, IPSR
    5e86:	2c00      	cmp	r4, #0
    5e88:	d107      	bne.n	5e9a <osKernelRunning+0x1a>
    5e8a:	f3ef 8414 	mrs	r4, CONTROL
    5e8e:	07e4      	lsls	r4, r4, #31
    5e90:	d503      	bpl.n	5e9a <osKernelRunning+0x1a>
    5e92:	4f04      	ldr	r7, [pc, #16]	; (5ea4 <osKernelRunning+0x24>)
    5e94:	46bc      	mov	ip, r7
    5e96:	df00      	svc	0
    5e98:	e001      	b.n	5e9e <osKernelRunning+0x1e>
    5e9a:	4b01      	ldr	r3, [pc, #4]	; (5ea0 <osKernelRunning+0x20>)
    5e9c:	7818      	ldrb	r0, [r3, #0]
    5e9e:	bd90      	pop	{r4, r7, pc}
    5ea0:	20006079 	.word	0x20006079
    5ea4:	00005c75 	.word	0x00005c75

00005ea8 <osKernelSysTick>:
    5ea8:	b5b0      	push	{r4, r5, r7, lr}
    5eaa:	f3ef 8405 	mrs	r4, IPSR
    5eae:	2500      	movs	r5, #0
    5eb0:	2c00      	cmp	r4, #0
    5eb2:	d103      	bne.n	5ebc <osKernelSysTick+0x14>
    5eb4:	4f02      	ldr	r7, [pc, #8]	; (5ec0 <osKernelSysTick+0x18>)
    5eb6:	46bc      	mov	ip, r7
    5eb8:	df00      	svc	0
    5eba:	0005      	movs	r5, r0
    5ebc:	0028      	movs	r0, r5
    5ebe:	bdb0      	pop	{r4, r5, r7, pc}
    5ec0:	00005c81 	.word	0x00005c81

00005ec4 <svcThreadCreate>:
    5ec4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    5ec6:	0004      	movs	r4, r0
    5ec8:	000d      	movs	r5, r1
    5eca:	2800      	cmp	r0, #0
    5ecc:	d01f      	beq.n	5f0e <svcThreadCreate+0x4a>
    5ece:	6800      	ldr	r0, [r0, #0]
    5ed0:	2800      	cmp	r0, #0
    5ed2:	d01c      	beq.n	5f0e <svcThreadCreate+0x4a>
    5ed4:	6863      	ldr	r3, [r4, #4]
    5ed6:	1cda      	adds	r2, r3, #3
    5ed8:	2a06      	cmp	r2, #6
    5eda:	d818      	bhi.n	5f0e <svcThreadCreate+0x4a>
    5edc:	68e1      	ldr	r1, [r4, #12]
    5ede:	2900      	cmp	r1, #0
    5ee0:	d017      	beq.n	5f12 <svcThreadCreate+0x4e>
    5ee2:	4e13      	ldr	r6, [pc, #76]	; (5f30 <svcThreadCreate+0x6c>)
    5ee4:	0030      	movs	r0, r6
    5ee6:	f001 fa9b 	bl	7420 <rt_alloc_mem>
    5eea:	1e07      	subs	r7, r0, #0
    5eec:	d00f      	beq.n	5f0e <svcThreadCreate+0x4a>
    5eee:	6863      	ldr	r3, [r4, #4]
    5ef0:	6820      	ldr	r0, [r4, #0]
    5ef2:	1d19      	adds	r1, r3, #4
    5ef4:	68e3      	ldr	r3, [r4, #12]
    5ef6:	003a      	movs	r2, r7
    5ef8:	021b      	lsls	r3, r3, #8
    5efa:	4319      	orrs	r1, r3
    5efc:	002b      	movs	r3, r5
    5efe:	f002 fb57 	bl	85b0 <rt_tsk_create>
    5f02:	2800      	cmp	r0, #0
    5f04:	d10c      	bne.n	5f20 <svcThreadCreate+0x5c>
    5f06:	0039      	movs	r1, r7
    5f08:	0030      	movs	r0, r6
    5f0a:	f001 faab 	bl	7464 <rt_free_mem>
    5f0e:	2000      	movs	r0, #0
    5f10:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5f12:	1d19      	adds	r1, r3, #4
    5f14:	2200      	movs	r2, #0
    5f16:	002b      	movs	r3, r5
    5f18:	f002 fb4a 	bl	85b0 <rt_tsk_create>
    5f1c:	2800      	cmp	r0, #0
    5f1e:	d0f6      	beq.n	5f0e <svcThreadCreate+0x4a>
    5f20:	4b04      	ldr	r3, [pc, #16]	; (5f34 <svcThreadCreate+0x70>)
    5f22:	3801      	subs	r0, #1
    5f24:	0080      	lsls	r0, r0, #2
    5f26:	58c0      	ldr	r0, [r0, r3]
    5f28:	4a03      	ldr	r2, [pc, #12]	; (5f38 <svcThreadCreate+0x74>)
    5f2a:	6a83      	ldr	r3, [r0, #40]	; 0x28
    5f2c:	635a      	str	r2, [r3, #52]	; 0x34
    5f2e:	e7ef      	b.n	5f10 <svcThreadCreate+0x4c>
    5f30:	200039f8 	.word	0x200039f8
    5f34:	20004cdc 	.word	0x20004cdc
    5f38:	00005afd 	.word	0x00005afd

00005f3c <svcThreadGetId>:
    5f3c:	b510      	push	{r4, lr}
    5f3e:	f002 fad1 	bl	84e4 <rt_tsk_self>
    5f42:	2800      	cmp	r0, #0
    5f44:	d004      	beq.n	5f50 <svcThreadGetId+0x14>
    5f46:	3801      	subs	r0, #1
    5f48:	4b02      	ldr	r3, [pc, #8]	; (5f54 <svcThreadGetId+0x18>)
    5f4a:	0080      	lsls	r0, r0, #2
    5f4c:	58c0      	ldr	r0, [r0, r3]
    5f4e:	bd10      	pop	{r4, pc}
    5f50:	2000      	movs	r0, #0
    5f52:	e7fc      	b.n	5f4e <svcThreadGetId+0x12>
    5f54:	20004cdc 	.word	0x20004cdc

00005f58 <svcThreadTerminate>:
    5f58:	0003      	movs	r3, r0
    5f5a:	b510      	push	{r4, lr}
    5f5c:	2080      	movs	r0, #128	; 0x80
    5f5e:	2b00      	cmp	r3, #0
    5f60:	d017      	beq.n	5f92 <svcThreadTerminate+0x3a>
    5f62:	079a      	lsls	r2, r3, #30
    5f64:	d115      	bne.n	5f92 <svcThreadTerminate+0x3a>
    5f66:	781a      	ldrb	r2, [r3, #0]
    5f68:	2a00      	cmp	r2, #0
    5f6a:	d112      	bne.n	5f92 <svcThreadTerminate+0x3a>
    5f6c:	8cda      	ldrh	r2, [r3, #38]	; 0x26
    5f6e:	2400      	movs	r4, #0
    5f70:	2a00      	cmp	r2, #0
    5f72:	d000      	beq.n	5f76 <svcThreadTerminate+0x1e>
    5f74:	6adc      	ldr	r4, [r3, #44]	; 0x2c
    5f76:	78d8      	ldrb	r0, [r3, #3]
    5f78:	f002 fb94 	bl	86a4 <rt_tsk_delete>
    5f7c:	0003      	movs	r3, r0
    5f7e:	2081      	movs	r0, #129	; 0x81
    5f80:	2bff      	cmp	r3, #255	; 0xff
    5f82:	d006      	beq.n	5f92 <svcThreadTerminate+0x3a>
    5f84:	2c00      	cmp	r4, #0
    5f86:	d005      	beq.n	5f94 <svcThreadTerminate+0x3c>
    5f88:	0021      	movs	r1, r4
    5f8a:	4803      	ldr	r0, [pc, #12]	; (5f98 <svcThreadTerminate+0x40>)
    5f8c:	f001 fa6a 	bl	7464 <rt_free_mem>
    5f90:	2000      	movs	r0, #0
    5f92:	bd10      	pop	{r4, pc}
    5f94:	2000      	movs	r0, #0
    5f96:	e7fc      	b.n	5f92 <svcThreadTerminate+0x3a>
    5f98:	200039f8 	.word	0x200039f8

00005f9c <svcThreadYield>:
    5f9c:	b510      	push	{r4, lr}
    5f9e:	f002 fa8b 	bl	84b8 <rt_tsk_pass>
    5fa2:	2000      	movs	r0, #0
    5fa4:	bd10      	pop	{r4, pc}
    5fa6:	46c0      	nop			; (mov r8, r8)

00005fa8 <svcThreadSetPriority>:
    5fa8:	0003      	movs	r3, r0
    5faa:	b510      	push	{r4, lr}
    5fac:	2080      	movs	r0, #128	; 0x80
    5fae:	2b00      	cmp	r3, #0
    5fb0:	d008      	beq.n	5fc4 <svcThreadSetPriority+0x1c>
    5fb2:	079a      	lsls	r2, r3, #30
    5fb4:	d106      	bne.n	5fc4 <svcThreadSetPriority+0x1c>
    5fb6:	781a      	ldrb	r2, [r3, #0]
    5fb8:	2a00      	cmp	r2, #0
    5fba:	d103      	bne.n	5fc4 <svcThreadSetPriority+0x1c>
    5fbc:	1cca      	adds	r2, r1, #3
    5fbe:	2086      	movs	r0, #134	; 0x86
    5fc0:	2a06      	cmp	r2, #6
    5fc2:	d900      	bls.n	5fc6 <svcThreadSetPriority+0x1e>
    5fc4:	bd10      	pop	{r4, pc}
    5fc6:	3104      	adds	r1, #4
    5fc8:	78d8      	ldrb	r0, [r3, #3]
    5fca:	b2c9      	uxtb	r1, r1
    5fcc:	f002 fa94 	bl	84f8 <rt_tsk_prio>
    5fd0:	0003      	movs	r3, r0
    5fd2:	2081      	movs	r0, #129	; 0x81
    5fd4:	2bff      	cmp	r3, #255	; 0xff
    5fd6:	d0f5      	beq.n	5fc4 <svcThreadSetPriority+0x1c>
    5fd8:	2000      	movs	r0, #0
    5fda:	e7f3      	b.n	5fc4 <svcThreadSetPriority+0x1c>

00005fdc <svcThreadGetPriority>:
    5fdc:	0003      	movs	r3, r0
    5fde:	2084      	movs	r0, #132	; 0x84
    5fe0:	2b00      	cmp	r3, #0
    5fe2:	d006      	beq.n	5ff2 <svcThreadGetPriority+0x16>
    5fe4:	079a      	lsls	r2, r3, #30
    5fe6:	d104      	bne.n	5ff2 <svcThreadGetPriority+0x16>
    5fe8:	781a      	ldrb	r2, [r3, #0]
    5fea:	2a00      	cmp	r2, #0
    5fec:	d101      	bne.n	5ff2 <svcThreadGetPriority+0x16>
    5fee:	7898      	ldrb	r0, [r3, #2]
    5ff0:	3804      	subs	r0, #4
    5ff2:	4770      	bx	lr

00005ff4 <osThreadCreate>:
    5ff4:	b5f0      	push	{r4, r5, r6, r7, lr}
    5ff6:	4647      	mov	r7, r8
    5ff8:	0004      	movs	r4, r0
    5ffa:	b480      	push	{r7}
    5ffc:	000d      	movs	r5, r1
    5ffe:	f3ef 8105 	mrs	r1, IPSR
    6002:	2900      	cmp	r1, #0
    6004:	d132      	bne.n	606c <osThreadCreate+0x78>
    6006:	f3ef 8114 	mrs	r1, CONTROL
    600a:	07c9      	lsls	r1, r1, #31
    600c:	d507      	bpl.n	601e <osThreadCreate+0x2a>
    600e:	0020      	movs	r0, r4
    6010:	0029      	movs	r1, r5
    6012:	4f23      	ldr	r7, [pc, #140]	; (60a0 <osThreadCreate+0xac>)
    6014:	46bc      	mov	ip, r7
    6016:	df00      	svc	0
    6018:	bc04      	pop	{r2}
    601a:	4690      	mov	r8, r2
    601c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    601e:	491c      	ldr	r1, [pc, #112]	; (6090 <osThreadCreate+0x9c>)
    6020:	7809      	ldrb	r1, [r1, #0]
    6022:	2900      	cmp	r1, #0
    6024:	d1f3      	bne.n	600e <osThreadCreate+0x1a>
    6026:	2800      	cmp	r0, #0
    6028:	d020      	beq.n	606c <osThreadCreate+0x78>
    602a:	6800      	ldr	r0, [r0, #0]
    602c:	2800      	cmp	r0, #0
    602e:	d01d      	beq.n	606c <osThreadCreate+0x78>
    6030:	6863      	ldr	r3, [r4, #4]
    6032:	1cda      	adds	r2, r3, #3
    6034:	2a06      	cmp	r2, #6
    6036:	d819      	bhi.n	606c <osThreadCreate+0x78>
    6038:	68e1      	ldr	r1, [r4, #12]
    603a:	2900      	cmp	r1, #0
    603c:	d018      	beq.n	6070 <osThreadCreate+0x7c>
    603e:	4e15      	ldr	r6, [pc, #84]	; (6094 <osThreadCreate+0xa0>)
    6040:	0030      	movs	r0, r6
    6042:	f001 f9ed 	bl	7420 <rt_alloc_mem>
    6046:	4680      	mov	r8, r0
    6048:	2800      	cmp	r0, #0
    604a:	d00f      	beq.n	606c <osThreadCreate+0x78>
    604c:	6863      	ldr	r3, [r4, #4]
    604e:	6820      	ldr	r0, [r4, #0]
    6050:	1d19      	adds	r1, r3, #4
    6052:	68e3      	ldr	r3, [r4, #12]
    6054:	4642      	mov	r2, r8
    6056:	021b      	lsls	r3, r3, #8
    6058:	4319      	orrs	r1, r3
    605a:	002b      	movs	r3, r5
    605c:	f002 faa8 	bl	85b0 <rt_tsk_create>
    6060:	2800      	cmp	r0, #0
    6062:	d10c      	bne.n	607e <osThreadCreate+0x8a>
    6064:	4641      	mov	r1, r8
    6066:	0030      	movs	r0, r6
    6068:	f001 f9fc 	bl	7464 <rt_free_mem>
    606c:	2000      	movs	r0, #0
    606e:	e7d3      	b.n	6018 <osThreadCreate+0x24>
    6070:	1d19      	adds	r1, r3, #4
    6072:	2200      	movs	r2, #0
    6074:	002b      	movs	r3, r5
    6076:	f002 fa9b 	bl	85b0 <rt_tsk_create>
    607a:	2800      	cmp	r0, #0
    607c:	d0f6      	beq.n	606c <osThreadCreate+0x78>
    607e:	4b06      	ldr	r3, [pc, #24]	; (6098 <osThreadCreate+0xa4>)
    6080:	3801      	subs	r0, #1
    6082:	0080      	lsls	r0, r0, #2
    6084:	58c0      	ldr	r0, [r0, r3]
    6086:	4a05      	ldr	r2, [pc, #20]	; (609c <osThreadCreate+0xa8>)
    6088:	6a83      	ldr	r3, [r0, #40]	; 0x28
    608a:	635a      	str	r2, [r3, #52]	; 0x34
    608c:	e7c4      	b.n	6018 <osThreadCreate+0x24>
    608e:	46c0      	nop			; (mov r8, r8)
    6090:	20006079 	.word	0x20006079
    6094:	200039f8 	.word	0x200039f8
    6098:	20004cdc 	.word	0x20004cdc
    609c:	00005afd 	.word	0x00005afd
    60a0:	00005ec5 	.word	0x00005ec5

000060a4 <osThreadGetId>:
    60a4:	b590      	push	{r4, r7, lr}
    60a6:	f3ef 8405 	mrs	r4, IPSR
    60aa:	2c00      	cmp	r4, #0
    60ac:	d103      	bne.n	60b6 <osThreadGetId+0x12>
    60ae:	4f03      	ldr	r7, [pc, #12]	; (60bc <osThreadGetId+0x18>)
    60b0:	46bc      	mov	ip, r7
    60b2:	df00      	svc	0
    60b4:	bd90      	pop	{r4, r7, pc}
    60b6:	2000      	movs	r0, #0
    60b8:	e7fc      	b.n	60b4 <osThreadGetId+0x10>
    60ba:	0000      	.short	0x0000
    60bc:	00005f3d 	.word	0x00005f3d

000060c0 <osThreadTerminate>:
    60c0:	b5b0      	push	{r4, r5, r7, lr}
    60c2:	0005      	movs	r5, r0
    60c4:	f3ef 8405 	mrs	r4, IPSR
    60c8:	2082      	movs	r0, #130	; 0x82
    60ca:	2c00      	cmp	r4, #0
    60cc:	d000      	beq.n	60d0 <osThreadTerminate+0x10>
    60ce:	bdb0      	pop	{r4, r5, r7, pc}
    60d0:	0028      	movs	r0, r5
    60d2:	4f02      	ldr	r7, [pc, #8]	; (60dc <osThreadTerminate+0x1c>)
    60d4:	46bc      	mov	ip, r7
    60d6:	df00      	svc	0
    60d8:	e7f9      	b.n	60ce <osThreadTerminate+0xe>
    60da:	0000      	.short	0x0000
    60dc:	00005f59 	.word	0x00005f59

000060e0 <osThreadYield>:
    60e0:	b5b0      	push	{r4, r5, r7, lr}
    60e2:	f3ef 8405 	mrs	r4, IPSR
    60e6:	2582      	movs	r5, #130	; 0x82
    60e8:	2c00      	cmp	r4, #0
    60ea:	d001      	beq.n	60f0 <osThreadYield+0x10>
    60ec:	0028      	movs	r0, r5
    60ee:	bdb0      	pop	{r4, r5, r7, pc}
    60f0:	4f02      	ldr	r7, [pc, #8]	; (60fc <osThreadYield+0x1c>)
    60f2:	46bc      	mov	ip, r7
    60f4:	df00      	svc	0
    60f6:	0005      	movs	r5, r0
    60f8:	e7f8      	b.n	60ec <osThreadYield+0xc>
    60fa:	0000      	.short	0x0000
    60fc:	00005f9d 	.word	0x00005f9d

00006100 <osThreadSetPriority>:
    6100:	b5b0      	push	{r4, r5, r7, lr}
    6102:	0005      	movs	r5, r0
    6104:	f3ef 8405 	mrs	r4, IPSR
    6108:	2082      	movs	r0, #130	; 0x82
    610a:	2c00      	cmp	r4, #0
    610c:	d000      	beq.n	6110 <osThreadSetPriority+0x10>
    610e:	bdb0      	pop	{r4, r5, r7, pc}
    6110:	0028      	movs	r0, r5
    6112:	4f02      	ldr	r7, [pc, #8]	; (611c <osThreadSetPriority+0x1c>)
    6114:	46bc      	mov	ip, r7
    6116:	df00      	svc	0
    6118:	e7f9      	b.n	610e <osThreadSetPriority+0xe>
    611a:	0000      	.short	0x0000
    611c:	00005fa9 	.word	0x00005fa9

00006120 <osThreadGetPriority>:
    6120:	b5b0      	push	{r4, r5, r7, lr}
    6122:	0005      	movs	r5, r0
    6124:	f3ef 8405 	mrs	r4, IPSR
    6128:	2084      	movs	r0, #132	; 0x84
    612a:	2c00      	cmp	r4, #0
    612c:	d000      	beq.n	6130 <osThreadGetPriority+0x10>
    612e:	bdb0      	pop	{r4, r5, r7, pc}
    6130:	0028      	movs	r0, r5
    6132:	4f02      	ldr	r7, [pc, #8]	; (613c <osThreadGetPriority+0x1c>)
    6134:	46bc      	mov	ip, r7
    6136:	df00      	svc	0
    6138:	e7f9      	b.n	612e <osThreadGetPriority+0xe>
    613a:	0000      	.short	0x0000
    613c:	00005fdd 	.word	0x00005fdd

00006140 <svcDelay>:
    6140:	b500      	push	{lr}
    6142:	b083      	sub	sp, #12
    6144:	2800      	cmp	r0, #0
    6146:	d019      	beq.n	617c <svcDelay+0x3c>
    6148:	1c43      	adds	r3, r0, #1
    614a:	d01c      	beq.n	6186 <svcDelay+0x46>
    614c:	4b10      	ldr	r3, [pc, #64]	; (6190 <svcDelay+0x50>)
    614e:	4298      	cmp	r0, r3
    6150:	d817      	bhi.n	6182 <svcDelay+0x42>
    6152:	4b10      	ldr	r3, [pc, #64]	; (6194 <svcDelay+0x54>)
    6154:	681b      	ldr	r3, [r3, #0]
    6156:	9301      	str	r3, [sp, #4]
    6158:	23fa      	movs	r3, #250	; 0xfa
    615a:	009b      	lsls	r3, r3, #2
    615c:	4358      	muls	r0, r3
    615e:	9b01      	ldr	r3, [sp, #4]
    6160:	9901      	ldr	r1, [sp, #4]
    6162:	3b01      	subs	r3, #1
    6164:	18c0      	adds	r0, r0, r3
    6166:	f7fe fb99 	bl	489c <__aeabi_uidiv>
    616a:	4b0b      	ldr	r3, [pc, #44]	; (6198 <svcDelay+0x58>)
    616c:	0002      	movs	r2, r0
    616e:	0018      	movs	r0, r3
    6170:	429a      	cmp	r2, r3
    6172:	d90a      	bls.n	618a <svcDelay+0x4a>
    6174:	f001 fb34 	bl	77e0 <rt_dly_wait>
    6178:	2040      	movs	r0, #64	; 0x40
    617a:	e000      	b.n	617e <svcDelay+0x3e>
    617c:	2000      	movs	r0, #0
    617e:	b003      	add	sp, #12
    6180:	bd00      	pop	{pc}
    6182:	4805      	ldr	r0, [pc, #20]	; (6198 <svcDelay+0x58>)
    6184:	e7f6      	b.n	6174 <svcDelay+0x34>
    6186:	4805      	ldr	r0, [pc, #20]	; (619c <svcDelay+0x5c>)
    6188:	e7f4      	b.n	6174 <svcDelay+0x34>
    618a:	b290      	uxth	r0, r2
    618c:	e7f2      	b.n	6174 <svcDelay+0x34>
    618e:	46c0      	nop			; (mov r8, r8)
    6190:	003d0900 	.word	0x003d0900
    6194:	00008b28 	.word	0x00008b28
    6198:	0000fffe 	.word	0x0000fffe
    619c:	0000ffff 	.word	0x0000ffff

000061a0 <osDelay>:
    61a0:	b5b0      	push	{r4, r5, r7, lr}
    61a2:	0005      	movs	r5, r0
    61a4:	f3ef 8405 	mrs	r4, IPSR
    61a8:	2082      	movs	r0, #130	; 0x82
    61aa:	2c00      	cmp	r4, #0
    61ac:	d000      	beq.n	61b0 <osDelay+0x10>
    61ae:	bdb0      	pop	{r4, r5, r7, pc}
    61b0:	0028      	movs	r0, r5
    61b2:	4f02      	ldr	r7, [pc, #8]	; (61bc <osDelay+0x1c>)
    61b4:	46bc      	mov	ip, r7
    61b6:	df00      	svc	0
    61b8:	e7f9      	b.n	61ae <osDelay+0xe>
    61ba:	0000      	.short	0x0000
    61bc:	00006141 	.word	0x00006141

000061c0 <osWait>:
    61c0:	23ff      	movs	r3, #255	; 0xff
    61c2:	6003      	str	r3, [r0, #0]
    61c4:	4770      	bx	lr
    61c6:	46c0      	nop			; (mov r8, r8)

000061c8 <svcTimerCreate>:
    61c8:	b510      	push	{r4, lr}
    61ca:	2800      	cmp	r0, #0
    61cc:	d016      	beq.n	61fc <svcTimerCreate+0x34>
    61ce:	6803      	ldr	r3, [r0, #0]
    61d0:	2b00      	cmp	r3, #0
    61d2:	d013      	beq.n	61fc <svcTimerCreate+0x34>
    61d4:	6843      	ldr	r3, [r0, #4]
    61d6:	2b00      	cmp	r3, #0
    61d8:	d010      	beq.n	61fc <svcTimerCreate+0x34>
    61da:	2901      	cmp	r1, #1
    61dc:	d80e      	bhi.n	61fc <svcTimerCreate+0x34>
    61de:	4c08      	ldr	r4, [pc, #32]	; (6200 <svcTimerCreate+0x38>)
    61e0:	6824      	ldr	r4, [r4, #0]
    61e2:	2c00      	cmp	r4, #0
    61e4:	d00a      	beq.n	61fc <svcTimerCreate+0x34>
    61e6:	791c      	ldrb	r4, [r3, #4]
    61e8:	2c00      	cmp	r4, #0
    61ea:	d107      	bne.n	61fc <svcTimerCreate+0x34>
    61ec:	6158      	str	r0, [r3, #20]
    61ee:	0018      	movs	r0, r3
    61f0:	601c      	str	r4, [r3, #0]
    61f2:	3401      	adds	r4, #1
    61f4:	711c      	strb	r4, [r3, #4]
    61f6:	7159      	strb	r1, [r3, #5]
    61f8:	611a      	str	r2, [r3, #16]
    61fa:	bd10      	pop	{r4, pc}
    61fc:	2000      	movs	r0, #0
    61fe:	e7fc      	b.n	61fa <svcTimerCreate+0x32>
    6200:	20004cec 	.word	0x20004cec

00006204 <svcTimerStart>:
    6204:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    6206:	0004      	movs	r4, r0
    6208:	2080      	movs	r0, #128	; 0x80
    620a:	07a3      	lsls	r3, r4, #30
    620c:	d104      	bne.n	6218 <svcTimerStart+0x14>
    620e:	2c00      	cmp	r4, #0
    6210:	d002      	beq.n	6218 <svcTimerStart+0x14>
    6212:	3006      	adds	r0, #6
    6214:	2900      	cmp	r1, #0
    6216:	d100      	bne.n	621a <svcTimerStart+0x16>
    6218:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    621a:	22fa      	movs	r2, #250	; 0xfa
    621c:	4b2f      	ldr	r3, [pc, #188]	; (62dc <svcTimerStart+0xd8>)
    621e:	0092      	lsls	r2, r2, #2
    6220:	681e      	ldr	r6, [r3, #0]
    6222:	0008      	movs	r0, r1
    6224:	2300      	movs	r3, #0
    6226:	2100      	movs	r1, #0
    6228:	f7fe fd78 	bl	4d1c <__aeabi_lmul>
    622c:	2700      	movs	r7, #0
    622e:	0002      	movs	r2, r0
    6230:	000b      	movs	r3, r1
    6232:	2001      	movs	r0, #1
    6234:	4240      	negs	r0, r0
    6236:	17c1      	asrs	r1, r0, #31
    6238:	1980      	adds	r0, r0, r6
    623a:	4179      	adcs	r1, r7
    623c:	1880      	adds	r0, r0, r2
    623e:	4159      	adcs	r1, r3
    6240:	003b      	movs	r3, r7
    6242:	0032      	movs	r2, r6
    6244:	f7fe fd4a 	bl	4cdc <__aeabi_uldivmod>
    6248:	7923      	ldrb	r3, [r4, #4]
    624a:	2b01      	cmp	r3, #1
    624c:	d011      	beq.n	6272 <svcTimerStart+0x6e>
    624e:	2b02      	cmp	r3, #2
    6250:	d10d      	bne.n	626e <svcTimerStart+0x6a>
    6252:	4d23      	ldr	r5, [pc, #140]	; (62e0 <svcTimerStart+0xdc>)
    6254:	6829      	ldr	r1, [r5, #0]
    6256:	2900      	cmp	r1, #0
    6258:	d009      	beq.n	626e <svcTimerStart+0x6a>
    625a:	428c      	cmp	r4, r1
    625c:	d03a      	beq.n	62d4 <svcTimerStart+0xd0>
    625e:	000a      	movs	r2, r1
    6260:	e002      	b.n	6268 <svcTimerStart+0x64>
    6262:	429c      	cmp	r4, r3
    6264:	d028      	beq.n	62b8 <svcTimerStart+0xb4>
    6266:	001a      	movs	r2, r3
    6268:	6813      	ldr	r3, [r2, #0]
    626a:	2b00      	cmp	r3, #0
    626c:	d1f9      	bne.n	6262 <svcTimerStart+0x5e>
    626e:	2081      	movs	r0, #129	; 0x81
    6270:	e7d2      	b.n	6218 <svcTimerStart+0x14>
    6272:	2302      	movs	r3, #2
    6274:	4d1a      	ldr	r5, [pc, #104]	; (62e0 <svcTimerStart+0xdc>)
    6276:	7123      	strb	r3, [r4, #4]
    6278:	6829      	ldr	r1, [r5, #0]
    627a:	60e0      	str	r0, [r4, #12]
    627c:	2900      	cmp	r1, #0
    627e:	d00b      	beq.n	6298 <svcTimerStart+0x94>
    6280:	688a      	ldr	r2, [r1, #8]
    6282:	4290      	cmp	r0, r2
    6284:	d204      	bcs.n	6290 <svcTimerStart+0x8c>
    6286:	e00f      	b.n	62a8 <svcTimerStart+0xa4>
    6288:	689a      	ldr	r2, [r3, #8]
    628a:	4282      	cmp	r2, r0
    628c:	d80e      	bhi.n	62ac <svcTimerStart+0xa8>
    628e:	0019      	movs	r1, r3
    6290:	680b      	ldr	r3, [r1, #0]
    6292:	1a80      	subs	r0, r0, r2
    6294:	2b00      	cmp	r3, #0
    6296:	d1f7      	bne.n	6288 <svcTimerStart+0x84>
    6298:	2300      	movs	r3, #0
    629a:	60a0      	str	r0, [r4, #8]
    629c:	6023      	str	r3, [r4, #0]
    629e:	2900      	cmp	r1, #0
    62a0:	d015      	beq.n	62ce <svcTimerStart+0xca>
    62a2:	600c      	str	r4, [r1, #0]
    62a4:	2000      	movs	r0, #0
    62a6:	e7b7      	b.n	6218 <svcTimerStart+0x14>
    62a8:	000b      	movs	r3, r1
    62aa:	2100      	movs	r1, #0
    62ac:	60a0      	str	r0, [r4, #8]
    62ae:	689a      	ldr	r2, [r3, #8]
    62b0:	6023      	str	r3, [r4, #0]
    62b2:	1a10      	subs	r0, r2, r0
    62b4:	6098      	str	r0, [r3, #8]
    62b6:	e7f2      	b.n	629e <svcTimerStart+0x9a>
    62b8:	6823      	ldr	r3, [r4, #0]
    62ba:	6013      	str	r3, [r2, #0]
    62bc:	6823      	ldr	r3, [r4, #0]
    62be:	2b00      	cmp	r3, #0
    62c0:	d0dc      	beq.n	627c <svcTimerStart+0x78>
    62c2:	68a6      	ldr	r6, [r4, #8]
    62c4:	689a      	ldr	r2, [r3, #8]
    62c6:	46b4      	mov	ip, r6
    62c8:	4462      	add	r2, ip
    62ca:	609a      	str	r2, [r3, #8]
    62cc:	e7d6      	b.n	627c <svcTimerStart+0x78>
    62ce:	602c      	str	r4, [r5, #0]
    62d0:	2000      	movs	r0, #0
    62d2:	e7a1      	b.n	6218 <svcTimerStart+0x14>
    62d4:	6823      	ldr	r3, [r4, #0]
    62d6:	602b      	str	r3, [r5, #0]
    62d8:	0019      	movs	r1, r3
    62da:	e7f0      	b.n	62be <svcTimerStart+0xba>
    62dc:	00008b28 	.word	0x00008b28
    62e0:	2000607c 	.word	0x2000607c

000062e4 <svcTimerStop>:
    62e4:	0003      	movs	r3, r0
    62e6:	2080      	movs	r0, #128	; 0x80
    62e8:	079a      	lsls	r2, r3, #30
    62ea:	d105      	bne.n	62f8 <svcTimerStop+0x14>
    62ec:	2b00      	cmp	r3, #0
    62ee:	d003      	beq.n	62f8 <svcTimerStop+0x14>
    62f0:	791a      	ldrb	r2, [r3, #4]
    62f2:	2a02      	cmp	r2, #2
    62f4:	d001      	beq.n	62fa <svcTimerStop+0x16>
    62f6:	2081      	movs	r0, #129	; 0x81
    62f8:	4770      	bx	lr
    62fa:	2201      	movs	r2, #1
    62fc:	480e      	ldr	r0, [pc, #56]	; (6338 <svcTimerStop+0x54>)
    62fe:	711a      	strb	r2, [r3, #4]
    6300:	6801      	ldr	r1, [r0, #0]
    6302:	2900      	cmp	r1, #0
    6304:	d0f7      	beq.n	62f6 <svcTimerStop+0x12>
    6306:	428b      	cmp	r3, r1
    6308:	d105      	bne.n	6316 <svcTimerStop+0x32>
    630a:	681a      	ldr	r2, [r3, #0]
    630c:	6002      	str	r2, [r0, #0]
    630e:	e009      	b.n	6324 <svcTimerStop+0x40>
    6310:	4293      	cmp	r3, r2
    6312:	d004      	beq.n	631e <svcTimerStop+0x3a>
    6314:	0011      	movs	r1, r2
    6316:	680a      	ldr	r2, [r1, #0]
    6318:	2a00      	cmp	r2, #0
    631a:	d1f9      	bne.n	6310 <svcTimerStop+0x2c>
    631c:	e7eb      	b.n	62f6 <svcTimerStop+0x12>
    631e:	681a      	ldr	r2, [r3, #0]
    6320:	600a      	str	r2, [r1, #0]
    6322:	681a      	ldr	r2, [r3, #0]
    6324:	2a00      	cmp	r2, #0
    6326:	d004      	beq.n	6332 <svcTimerStop+0x4e>
    6328:	6891      	ldr	r1, [r2, #8]
    632a:	689b      	ldr	r3, [r3, #8]
    632c:	468c      	mov	ip, r1
    632e:	4463      	add	r3, ip
    6330:	6093      	str	r3, [r2, #8]
    6332:	2000      	movs	r0, #0
    6334:	e7e0      	b.n	62f8 <svcTimerStop+0x14>
    6336:	46c0      	nop			; (mov r8, r8)
    6338:	2000607c 	.word	0x2000607c

0000633c <svcTimerDelete>:
    633c:	0002      	movs	r2, r0
    633e:	2080      	movs	r0, #128	; 0x80
    6340:	0793      	lsls	r3, r2, #30
    6342:	d117      	bne.n	6374 <svcTimerDelete+0x38>
    6344:	2a00      	cmp	r2, #0
    6346:	d015      	beq.n	6374 <svcTimerDelete+0x38>
    6348:	7913      	ldrb	r3, [r2, #4]
    634a:	2b01      	cmp	r3, #1
    634c:	d00f      	beq.n	636e <svcTimerDelete+0x32>
    634e:	2081      	movs	r0, #129	; 0x81
    6350:	2b02      	cmp	r3, #2
    6352:	d10f      	bne.n	6374 <svcTimerDelete+0x38>
    6354:	4810      	ldr	r0, [pc, #64]	; (6398 <svcTimerDelete+0x5c>)
    6356:	6801      	ldr	r1, [r0, #0]
    6358:	2900      	cmp	r1, #0
    635a:	d008      	beq.n	636e <svcTimerDelete+0x32>
    635c:	428a      	cmp	r2, r1
    635e:	d103      	bne.n	6368 <svcTimerDelete+0x2c>
    6360:	e017      	b.n	6392 <svcTimerDelete+0x56>
    6362:	429a      	cmp	r2, r3
    6364:	d007      	beq.n	6376 <svcTimerDelete+0x3a>
    6366:	0019      	movs	r1, r3
    6368:	680b      	ldr	r3, [r1, #0]
    636a:	2b00      	cmp	r3, #0
    636c:	d1f9      	bne.n	6362 <svcTimerDelete+0x26>
    636e:	2300      	movs	r3, #0
    6370:	2000      	movs	r0, #0
    6372:	7113      	strb	r3, [r2, #4]
    6374:	4770      	bx	lr
    6376:	6813      	ldr	r3, [r2, #0]
    6378:	600b      	str	r3, [r1, #0]
    637a:	6813      	ldr	r3, [r2, #0]
    637c:	2b00      	cmp	r3, #0
    637e:	d0f6      	beq.n	636e <svcTimerDelete+0x32>
    6380:	6890      	ldr	r0, [r2, #8]
    6382:	6899      	ldr	r1, [r3, #8]
    6384:	4684      	mov	ip, r0
    6386:	4461      	add	r1, ip
    6388:	6099      	str	r1, [r3, #8]
    638a:	2300      	movs	r3, #0
    638c:	2000      	movs	r0, #0
    638e:	7113      	strb	r3, [r2, #4]
    6390:	e7f0      	b.n	6374 <svcTimerDelete+0x38>
    6392:	6813      	ldr	r3, [r2, #0]
    6394:	6003      	str	r3, [r0, #0]
    6396:	e7f1      	b.n	637c <svcTimerDelete+0x40>
    6398:	2000607c 	.word	0x2000607c

0000639c <svcTimerCall>:
    639c:	0003      	movs	r3, r0
    639e:	0782      	lsls	r2, r0, #30
    63a0:	d105      	bne.n	63ae <svcTimerCall+0x12>
    63a2:	2800      	cmp	r0, #0
    63a4:	d006      	beq.n	63b4 <svcTimerCall+0x18>
    63a6:	6942      	ldr	r2, [r0, #20]
    63a8:	6919      	ldr	r1, [r3, #16]
    63aa:	6810      	ldr	r0, [r2, #0]
    63ac:	4770      	bx	lr
    63ae:	2000      	movs	r0, #0
    63b0:	2100      	movs	r1, #0
    63b2:	e7fb      	b.n	63ac <svcTimerCall+0x10>
    63b4:	2000      	movs	r0, #0
    63b6:	0001      	movs	r1, r0
    63b8:	e7f8      	b.n	63ac <svcTimerCall+0x10>
    63ba:	46c0      	nop			; (mov r8, r8)

000063bc <sysTimerTick>:
    63bc:	b5f0      	push	{r4, r5, r6, r7, lr}
    63be:	464e      	mov	r6, r9
    63c0:	4657      	mov	r7, sl
    63c2:	4645      	mov	r5, r8
    63c4:	b4e0      	push	{r5, r6, r7}
    63c6:	4e2a      	ldr	r6, [pc, #168]	; (6470 <sysTimerTick+0xb4>)
    63c8:	6834      	ldr	r4, [r6, #0]
    63ca:	2c00      	cmp	r4, #0
    63cc:	d028      	beq.n	6420 <sysTimerTick+0x64>
    63ce:	2200      	movs	r2, #0
    63d0:	68a3      	ldr	r3, [r4, #8]
    63d2:	4f28      	ldr	r7, [pc, #160]	; (6474 <sysTimerTick+0xb8>)
    63d4:	3b01      	subs	r3, #1
    63d6:	60a3      	str	r3, [r4, #8]
    63d8:	4690      	mov	r8, r2
    63da:	2b00      	cmp	r3, #0
    63dc:	d120      	bne.n	6420 <sysTimerTick+0x64>
    63de:	6825      	ldr	r5, [r4, #0]
    63e0:	683b      	ldr	r3, [r7, #0]
    63e2:	6035      	str	r5, [r6, #0]
    63e4:	4699      	mov	r9, r3
    63e6:	2b00      	cmp	r3, #0
    63e8:	d003      	beq.n	63f2 <sysTimerTick+0x36>
    63ea:	781b      	ldrb	r3, [r3, #0]
    63ec:	469a      	mov	sl, r3
    63ee:	2b01      	cmp	r3, #1
    63f0:	d002      	beq.n	63f8 <sysTimerTick+0x3c>
    63f2:	2004      	movs	r0, #4
    63f4:	f7fb fabe 	bl	1974 <os_error>
    63f8:	4648      	mov	r0, r9
    63fa:	f001 fb63 	bl	7ac4 <rt_mbx_check>
    63fe:	2800      	cmp	r0, #0
    6400:	d0f7      	beq.n	63f2 <sysTimerTick+0x36>
    6402:	0021      	movs	r1, r4
    6404:	4648      	mov	r0, r9
    6406:	f001 fb61 	bl	7acc <isr_mbx_send>
    640a:	7963      	ldrb	r3, [r4, #5]
    640c:	2b01      	cmp	r3, #1
    640e:	d00c      	beq.n	642a <sysTimerTick+0x6e>
    6410:	4653      	mov	r3, sl
    6412:	7123      	strb	r3, [r4, #4]
    6414:	2d00      	cmp	r5, #0
    6416:	d003      	beq.n	6420 <sysTimerTick+0x64>
    6418:	68ab      	ldr	r3, [r5, #8]
    641a:	002c      	movs	r4, r5
    641c:	2b00      	cmp	r3, #0
    641e:	d0de      	beq.n	63de <sysTimerTick+0x22>
    6420:	bc1c      	pop	{r2, r3, r4}
    6422:	4690      	mov	r8, r2
    6424:	4699      	mov	r9, r3
    6426:	46a2      	mov	sl, r4
    6428:	bdf0      	pop	{r4, r5, r6, r7, pc}
    642a:	6830      	ldr	r0, [r6, #0]
    642c:	68e2      	ldr	r2, [r4, #12]
    642e:	2800      	cmp	r0, #0
    6430:	d00b      	beq.n	644a <sysTimerTick+0x8e>
    6432:	6881      	ldr	r1, [r0, #8]
    6434:	4291      	cmp	r1, r2
    6436:	d904      	bls.n	6442 <sysTimerTick+0x86>
    6438:	e00e      	b.n	6458 <sysTimerTick+0x9c>
    643a:	6899      	ldr	r1, [r3, #8]
    643c:	4291      	cmp	r1, r2
    643e:	d80d      	bhi.n	645c <sysTimerTick+0xa0>
    6440:	0018      	movs	r0, r3
    6442:	6803      	ldr	r3, [r0, #0]
    6444:	1a52      	subs	r2, r2, r1
    6446:	2b00      	cmp	r3, #0
    6448:	d1f7      	bne.n	643a <sysTimerTick+0x7e>
    644a:	4643      	mov	r3, r8
    644c:	60a2      	str	r2, [r4, #8]
    644e:	6023      	str	r3, [r4, #0]
    6450:	2800      	cmp	r0, #0
    6452:	d00a      	beq.n	646a <sysTimerTick+0xae>
    6454:	6004      	str	r4, [r0, #0]
    6456:	e7dd      	b.n	6414 <sysTimerTick+0x58>
    6458:	0003      	movs	r3, r0
    645a:	2000      	movs	r0, #0
    645c:	60a2      	str	r2, [r4, #8]
    645e:	6899      	ldr	r1, [r3, #8]
    6460:	6023      	str	r3, [r4, #0]
    6462:	1a8a      	subs	r2, r1, r2
    6464:	609a      	str	r2, [r3, #8]
    6466:	2800      	cmp	r0, #0
    6468:	d1f4      	bne.n	6454 <sysTimerTick+0x98>
    646a:	6034      	str	r4, [r6, #0]
    646c:	e7d2      	b.n	6414 <sysTimerTick+0x58>
    646e:	46c0      	nop			; (mov r8, r8)
    6470:	2000607c 	.word	0x2000607c
    6474:	20004d10 	.word	0x20004d10

00006478 <sysUserTimerWakeupTime>:
    6478:	4b04      	ldr	r3, [pc, #16]	; (648c <sysUserTimerWakeupTime+0x14>)
    647a:	681b      	ldr	r3, [r3, #0]
    647c:	2b00      	cmp	r3, #0
    647e:	d001      	beq.n	6484 <sysUserTimerWakeupTime+0xc>
    6480:	6898      	ldr	r0, [r3, #8]
    6482:	4770      	bx	lr
    6484:	2001      	movs	r0, #1
    6486:	4240      	negs	r0, r0
    6488:	e7fb      	b.n	6482 <sysUserTimerWakeupTime+0xa>
    648a:	46c0      	nop			; (mov r8, r8)
    648c:	2000607c 	.word	0x2000607c

00006490 <sysUserTimerUpdate>:
    6490:	b570      	push	{r4, r5, r6, lr}
    6492:	4d0e      	ldr	r5, [pc, #56]	; (64cc <sysUserTimerUpdate+0x3c>)
    6494:	0004      	movs	r4, r0
    6496:	682b      	ldr	r3, [r5, #0]
    6498:	2b00      	cmp	r3, #0
    649a:	d012      	beq.n	64c2 <sysUserTimerUpdate+0x32>
    649c:	2800      	cmp	r0, #0
    649e:	d010      	beq.n	64c2 <sysUserTimerUpdate+0x32>
    64a0:	689a      	ldr	r2, [r3, #8]
    64a2:	2601      	movs	r6, #1
    64a4:	4290      	cmp	r0, r2
    64a6:	d205      	bcs.n	64b4 <sysUserTimerUpdate+0x24>
    64a8:	e00c      	b.n	64c4 <sysUserTimerUpdate+0x34>
    64aa:	2c00      	cmp	r4, #0
    64ac:	d009      	beq.n	64c2 <sysUserTimerUpdate+0x32>
    64ae:	689a      	ldr	r2, [r3, #8]
    64b0:	42a2      	cmp	r2, r4
    64b2:	d807      	bhi.n	64c4 <sysUserTimerUpdate+0x34>
    64b4:	609e      	str	r6, [r3, #8]
    64b6:	1aa4      	subs	r4, r4, r2
    64b8:	f7ff ff80 	bl	63bc <sysTimerTick>
    64bc:	682b      	ldr	r3, [r5, #0]
    64be:	2b00      	cmp	r3, #0
    64c0:	d1f3      	bne.n	64aa <sysUserTimerUpdate+0x1a>
    64c2:	bd70      	pop	{r4, r5, r6, pc}
    64c4:	1b14      	subs	r4, r2, r4
    64c6:	609c      	str	r4, [r3, #8]
    64c8:	e7fb      	b.n	64c2 <sysUserTimerUpdate+0x32>
    64ca:	46c0      	nop			; (mov r8, r8)
    64cc:	2000607c 	.word	0x2000607c

000064d0 <osTimerCreate>:
    64d0:	b5b0      	push	{r4, r5, r7, lr}
    64d2:	f3ef 8405 	mrs	r4, IPSR
    64d6:	2c00      	cmp	r4, #0
    64d8:	d124      	bne.n	6524 <osTimerCreate+0x54>
    64da:	f3ef 8414 	mrs	r4, CONTROL
    64de:	2501      	movs	r5, #1
    64e0:	4225      	tst	r5, r4
    64e2:	d003      	beq.n	64ec <osTimerCreate+0x1c>
    64e4:	4f12      	ldr	r7, [pc, #72]	; (6530 <osTimerCreate+0x60>)
    64e6:	46bc      	mov	ip, r7
    64e8:	df00      	svc	0
    64ea:	bdb0      	pop	{r4, r5, r7, pc}
    64ec:	4c0e      	ldr	r4, [pc, #56]	; (6528 <osTimerCreate+0x58>)
    64ee:	7824      	ldrb	r4, [r4, #0]
    64f0:	2c00      	cmp	r4, #0
    64f2:	d1f7      	bne.n	64e4 <osTimerCreate+0x14>
    64f4:	2800      	cmp	r0, #0
    64f6:	d015      	beq.n	6524 <osTimerCreate+0x54>
    64f8:	6803      	ldr	r3, [r0, #0]
    64fa:	2b00      	cmp	r3, #0
    64fc:	d012      	beq.n	6524 <osTimerCreate+0x54>
    64fe:	6843      	ldr	r3, [r0, #4]
    6500:	2b00      	cmp	r3, #0
    6502:	d00f      	beq.n	6524 <osTimerCreate+0x54>
    6504:	2901      	cmp	r1, #1
    6506:	d80d      	bhi.n	6524 <osTimerCreate+0x54>
    6508:	4c08      	ldr	r4, [pc, #32]	; (652c <osTimerCreate+0x5c>)
    650a:	6824      	ldr	r4, [r4, #0]
    650c:	2c00      	cmp	r4, #0
    650e:	d009      	beq.n	6524 <osTimerCreate+0x54>
    6510:	791c      	ldrb	r4, [r3, #4]
    6512:	2c00      	cmp	r4, #0
    6514:	d106      	bne.n	6524 <osTimerCreate+0x54>
    6516:	6158      	str	r0, [r3, #20]
    6518:	601c      	str	r4, [r3, #0]
    651a:	711d      	strb	r5, [r3, #4]
    651c:	7159      	strb	r1, [r3, #5]
    651e:	611a      	str	r2, [r3, #16]
    6520:	0018      	movs	r0, r3
    6522:	e7e2      	b.n	64ea <osTimerCreate+0x1a>
    6524:	2000      	movs	r0, #0
    6526:	e7e0      	b.n	64ea <osTimerCreate+0x1a>
    6528:	20006079 	.word	0x20006079
    652c:	20004cec 	.word	0x20004cec
    6530:	000061c9 	.word	0x000061c9

00006534 <osTimerStart>:
    6534:	b5b0      	push	{r4, r5, r7, lr}
    6536:	0005      	movs	r5, r0
    6538:	f3ef 8405 	mrs	r4, IPSR
    653c:	2082      	movs	r0, #130	; 0x82
    653e:	2c00      	cmp	r4, #0
    6540:	d000      	beq.n	6544 <osTimerStart+0x10>
    6542:	bdb0      	pop	{r4, r5, r7, pc}
    6544:	0028      	movs	r0, r5
    6546:	4f02      	ldr	r7, [pc, #8]	; (6550 <osTimerStart+0x1c>)
    6548:	46bc      	mov	ip, r7
    654a:	df00      	svc	0
    654c:	e7f9      	b.n	6542 <osTimerStart+0xe>
    654e:	0000      	.short	0x0000
    6550:	00006205 	.word	0x00006205

00006554 <osTimerStop>:
    6554:	b5b0      	push	{r4, r5, r7, lr}
    6556:	0005      	movs	r5, r0
    6558:	f3ef 8405 	mrs	r4, IPSR
    655c:	2082      	movs	r0, #130	; 0x82
    655e:	2c00      	cmp	r4, #0
    6560:	d000      	beq.n	6564 <osTimerStop+0x10>
    6562:	bdb0      	pop	{r4, r5, r7, pc}
    6564:	0028      	movs	r0, r5
    6566:	4f02      	ldr	r7, [pc, #8]	; (6570 <osTimerStop+0x1c>)
    6568:	46bc      	mov	ip, r7
    656a:	df00      	svc	0
    656c:	e7f9      	b.n	6562 <osTimerStop+0xe>
    656e:	0000      	.short	0x0000
    6570:	000062e5 	.word	0x000062e5

00006574 <osTimerDelete>:
    6574:	b5b0      	push	{r4, r5, r7, lr}
    6576:	0005      	movs	r5, r0
    6578:	f3ef 8405 	mrs	r4, IPSR
    657c:	2082      	movs	r0, #130	; 0x82
    657e:	2c00      	cmp	r4, #0
    6580:	d000      	beq.n	6584 <osTimerDelete+0x10>
    6582:	bdb0      	pop	{r4, r5, r7, pc}
    6584:	0028      	movs	r0, r5
    6586:	4f02      	ldr	r7, [pc, #8]	; (6590 <osTimerDelete+0x1c>)
    6588:	46bc      	mov	ip, r7
    658a:	df00      	svc	0
    658c:	e7f9      	b.n	6582 <osTimerDelete+0xe>
    658e:	0000      	.short	0x0000
    6590:	0000633d 	.word	0x0000633d

00006594 <osTimerCall>:
    6594:	b590      	push	{r4, r7, lr}
    6596:	0004      	movs	r4, r0
    6598:	0008      	movs	r0, r1
    659a:	4f03      	ldr	r7, [pc, #12]	; (65a8 <osTimerCall+0x14>)
    659c:	46bc      	mov	ip, r7
    659e:	df00      	svc	0
    65a0:	6020      	str	r0, [r4, #0]
    65a2:	6061      	str	r1, [r4, #4]
    65a4:	0020      	movs	r0, r4
    65a6:	bd90      	pop	{r4, r7, pc}
    65a8:	0000639d 	.word	0x0000639d

000065ac <osTimerThread>:
    65ac:	b5b0      	push	{r4, r5, r7, lr}
    65ae:	4d0a      	ldr	r5, [pc, #40]	; (65d8 <osTimerThread+0x2c>)
    65b0:	6828      	ldr	r0, [r5, #0]
    65b2:	f3ef 8105 	mrs	r1, IPSR
    65b6:	2900      	cmp	r1, #0
    65b8:	d1fb      	bne.n	65b2 <osTimerThread+0x6>
    65ba:	3901      	subs	r1, #1
    65bc:	4f07      	ldr	r7, [pc, #28]	; (65dc <osTimerThread+0x30>)
    65be:	46bc      	mov	ip, r7
    65c0:	df00      	svc	0
    65c2:	2810      	cmp	r0, #16
    65c4:	d1f4      	bne.n	65b0 <osTimerThread+0x4>
    65c6:	0008      	movs	r0, r1
    65c8:	4f05      	ldr	r7, [pc, #20]	; (65e0 <osTimerThread+0x34>)
    65ca:	46bc      	mov	ip, r7
    65cc:	df00      	svc	0
    65ce:	1e04      	subs	r4, r0, #0
    65d0:	d0ee      	beq.n	65b0 <osTimerThread+0x4>
    65d2:	0008      	movs	r0, r1
    65d4:	47a0      	blx	r4
    65d6:	e7eb      	b.n	65b0 <osTimerThread+0x4>
    65d8:	20004d10 	.word	0x20004d10
    65dc:	00006d8d 	.word	0x00006d8d
    65e0:	0000639d 	.word	0x0000639d

000065e4 <svcSignalSet>:
    65e4:	b510      	push	{r4, lr}
    65e6:	2800      	cmp	r0, #0
    65e8:	d00e      	beq.n	6608 <svcSignalSet+0x24>
    65ea:	0783      	lsls	r3, r0, #30
    65ec:	d10c      	bne.n	6608 <svcSignalSet+0x24>
    65ee:	7803      	ldrb	r3, [r0, #0]
    65f0:	2b00      	cmp	r3, #0
    65f2:	d109      	bne.n	6608 <svcSignalSet+0x24>
    65f4:	0c0b      	lsrs	r3, r1, #16
    65f6:	d107      	bne.n	6608 <svcSignalSet+0x24>
    65f8:	78c3      	ldrb	r3, [r0, #3]
    65fa:	8b04      	ldrh	r4, [r0, #24]
    65fc:	b288      	uxth	r0, r1
    65fe:	0019      	movs	r1, r3
    6600:	f001 fcbe 	bl	7f80 <rt_evt_set>
    6604:	0020      	movs	r0, r4
    6606:	e001      	b.n	660c <svcSignalSet+0x28>
    6608:	2080      	movs	r0, #128	; 0x80
    660a:	0600      	lsls	r0, r0, #24
    660c:	bd10      	pop	{r4, pc}
    660e:	46c0      	nop			; (mov r8, r8)

00006610 <svcSignalClear>:
    6610:	b510      	push	{r4, lr}
    6612:	2800      	cmp	r0, #0
    6614:	d00e      	beq.n	6634 <svcSignalClear+0x24>
    6616:	0783      	lsls	r3, r0, #30
    6618:	d10c      	bne.n	6634 <svcSignalClear+0x24>
    661a:	7803      	ldrb	r3, [r0, #0]
    661c:	2b00      	cmp	r3, #0
    661e:	d109      	bne.n	6634 <svcSignalClear+0x24>
    6620:	0c0b      	lsrs	r3, r1, #16
    6622:	d107      	bne.n	6634 <svcSignalClear+0x24>
    6624:	78c3      	ldrb	r3, [r0, #3]
    6626:	8b04      	ldrh	r4, [r0, #24]
    6628:	b288      	uxth	r0, r1
    662a:	0019      	movs	r1, r3
    662c:	f001 fcd4 	bl	7fd8 <rt_evt_clr>
    6630:	0020      	movs	r0, r4
    6632:	e001      	b.n	6638 <svcSignalClear+0x28>
    6634:	2080      	movs	r0, #128	; 0x80
    6636:	0600      	lsls	r0, r0, #24
    6638:	bd10      	pop	{r4, pc}
    663a:	46c0      	nop			; (mov r8, r8)

0000663c <svcSignalWait>:
    663c:	b5f0      	push	{r4, r5, r6, r7, lr}
    663e:	0c04      	lsrs	r4, r0, #16
    6640:	b083      	sub	sp, #12
    6642:	0006      	movs	r6, r0
    6644:	000d      	movs	r5, r1
    6646:	0424      	lsls	r4, r4, #16
    6648:	d149      	bne.n	66de <svcSignalWait+0xa2>
    664a:	2800      	cmp	r0, #0
    664c:	d026      	beq.n	669c <svcSignalWait+0x60>
    664e:	b287      	uxth	r7, r0
    6650:	2100      	movs	r1, #0
    6652:	2d00      	cmp	r5, #0
    6654:	d013      	beq.n	667e <svcSignalWait+0x42>
    6656:	1c6b      	adds	r3, r5, #1
    6658:	d05c      	beq.n	6714 <svcSignalWait+0xd8>
    665a:	4b2f      	ldr	r3, [pc, #188]	; (6718 <svcSignalWait+0xdc>)
    665c:	429d      	cmp	r5, r3
    665e:	d84f      	bhi.n	6700 <svcSignalWait+0xc4>
    6660:	20fa      	movs	r0, #250	; 0xfa
    6662:	4b2e      	ldr	r3, [pc, #184]	; (671c <svcSignalWait+0xe0>)
    6664:	0080      	lsls	r0, r0, #2
    6666:	4368      	muls	r0, r5
    6668:	681b      	ldr	r3, [r3, #0]
    666a:	9301      	str	r3, [sp, #4]
    666c:	3b01      	subs	r3, #1
    666e:	18c0      	adds	r0, r0, r3
    6670:	9901      	ldr	r1, [sp, #4]
    6672:	f7fe f913 	bl	489c <__aeabi_uidiv>
    6676:	4b2a      	ldr	r3, [pc, #168]	; (6720 <svcSignalWait+0xe4>)
    6678:	0019      	movs	r1, r3
    667a:	4298      	cmp	r0, r3
    667c:	d946      	bls.n	670c <svcSignalWait+0xd0>
    667e:	2201      	movs	r2, #1
    6680:	0038      	movs	r0, r7
    6682:	f001 fc59 	bl	7f38 <rt_evt_wait>
    6686:	2802      	cmp	r0, #2
    6688:	d035      	beq.n	66f6 <svcSignalWait+0xba>
    668a:	0028      	movs	r0, r5
    668c:	1e45      	subs	r5, r0, #1
    668e:	41a8      	sbcs	r0, r5
    6690:	0180      	lsls	r0, r0, #6
    6692:	0021      	movs	r1, r4
    6694:	2200      	movs	r2, #0
    6696:	2300      	movs	r3, #0
    6698:	b003      	add	sp, #12
    669a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    669c:	2900      	cmp	r1, #0
    669e:	d021      	beq.n	66e4 <svcSignalWait+0xa8>
    66a0:	1c4b      	adds	r3, r1, #1
    66a2:	d035      	beq.n	6710 <svcSignalWait+0xd4>
    66a4:	4b1c      	ldr	r3, [pc, #112]	; (6718 <svcSignalWait+0xdc>)
    66a6:	4299      	cmp	r1, r3
    66a8:	d82c      	bhi.n	6704 <svcSignalWait+0xc8>
    66aa:	20fa      	movs	r0, #250	; 0xfa
    66ac:	4b1b      	ldr	r3, [pc, #108]	; (671c <svcSignalWait+0xe0>)
    66ae:	0080      	lsls	r0, r0, #2
    66b0:	4348      	muls	r0, r1
    66b2:	681b      	ldr	r3, [r3, #0]
    66b4:	9301      	str	r3, [sp, #4]
    66b6:	3b01      	subs	r3, #1
    66b8:	18c0      	adds	r0, r0, r3
    66ba:	9901      	ldr	r1, [sp, #4]
    66bc:	f7fe f8ee 	bl	489c <__aeabi_uidiv>
    66c0:	4b17      	ldr	r3, [pc, #92]	; (6720 <svcSignalWait+0xe4>)
    66c2:	0019      	movs	r1, r3
    66c4:	4298      	cmp	r0, r3
    66c6:	d91f      	bls.n	6708 <svcSignalWait+0xcc>
    66c8:	2200      	movs	r2, #0
    66ca:	4816      	ldr	r0, [pc, #88]	; (6724 <svcSignalWait+0xe8>)
    66cc:	f001 fc34 	bl	7f38 <rt_evt_wait>
    66d0:	2802      	cmp	r0, #2
    66d2:	d113      	bne.n	66fc <svcSignalWait+0xc0>
    66d4:	4b14      	ldr	r3, [pc, #80]	; (6728 <svcSignalWait+0xec>)
    66d6:	2008      	movs	r0, #8
    66d8:	681b      	ldr	r3, [r3, #0]
    66da:	8b5c      	ldrh	r4, [r3, #26]
    66dc:	e7d9      	b.n	6692 <svcSignalWait+0x56>
    66de:	2086      	movs	r0, #134	; 0x86
    66e0:	2100      	movs	r1, #0
    66e2:	e7d7      	b.n	6694 <svcSignalWait+0x58>
    66e4:	2200      	movs	r2, #0
    66e6:	2100      	movs	r1, #0
    66e8:	480e      	ldr	r0, [pc, #56]	; (6724 <svcSignalWait+0xe8>)
    66ea:	f001 fc25 	bl	7f38 <rt_evt_wait>
    66ee:	2802      	cmp	r0, #2
    66f0:	d0f0      	beq.n	66d4 <svcSignalWait+0x98>
    66f2:	2000      	movs	r0, #0
    66f4:	e7cd      	b.n	6692 <svcSignalWait+0x56>
    66f6:	0034      	movs	r4, r6
    66f8:	2008      	movs	r0, #8
    66fa:	e7ca      	b.n	6692 <svcSignalWait+0x56>
    66fc:	2040      	movs	r0, #64	; 0x40
    66fe:	e7c8      	b.n	6692 <svcSignalWait+0x56>
    6700:	4907      	ldr	r1, [pc, #28]	; (6720 <svcSignalWait+0xe4>)
    6702:	e7bc      	b.n	667e <svcSignalWait+0x42>
    6704:	4906      	ldr	r1, [pc, #24]	; (6720 <svcSignalWait+0xe4>)
    6706:	e7df      	b.n	66c8 <svcSignalWait+0x8c>
    6708:	b281      	uxth	r1, r0
    670a:	e7dd      	b.n	66c8 <svcSignalWait+0x8c>
    670c:	b281      	uxth	r1, r0
    670e:	e7b6      	b.n	667e <svcSignalWait+0x42>
    6710:	4904      	ldr	r1, [pc, #16]	; (6724 <svcSignalWait+0xe8>)
    6712:	e7d9      	b.n	66c8 <svcSignalWait+0x8c>
    6714:	4903      	ldr	r1, [pc, #12]	; (6724 <svcSignalWait+0xe8>)
    6716:	e7b2      	b.n	667e <svcSignalWait+0x42>
    6718:	003d0900 	.word	0x003d0900
    671c:	00008b28 	.word	0x00008b28
    6720:	0000fffe 	.word	0x0000fffe
    6724:	0000ffff 	.word	0x0000ffff
    6728:	200060b8 	.word	0x200060b8

0000672c <isrSignalSet>:
    672c:	b510      	push	{r4, lr}
    672e:	2800      	cmp	r0, #0
    6730:	d00e      	beq.n	6750 <isrSignalSet+0x24>
    6732:	0783      	lsls	r3, r0, #30
    6734:	d10c      	bne.n	6750 <isrSignalSet+0x24>
    6736:	7803      	ldrb	r3, [r0, #0]
    6738:	2b00      	cmp	r3, #0
    673a:	d109      	bne.n	6750 <isrSignalSet+0x24>
    673c:	0c0b      	lsrs	r3, r1, #16
    673e:	d107      	bne.n	6750 <isrSignalSet+0x24>
    6740:	78c3      	ldrb	r3, [r0, #3]
    6742:	8b04      	ldrh	r4, [r0, #24]
    6744:	b288      	uxth	r0, r1
    6746:	0019      	movs	r1, r3
    6748:	f001 fc52 	bl	7ff0 <isr_evt_set>
    674c:	0020      	movs	r0, r4
    674e:	e001      	b.n	6754 <isrSignalSet+0x28>
    6750:	2080      	movs	r0, #128	; 0x80
    6752:	0600      	lsls	r0, r0, #24
    6754:	bd10      	pop	{r4, pc}
    6756:	46c0      	nop			; (mov r8, r8)

00006758 <osSignalSet>:
    6758:	b5b0      	push	{r4, r5, r7, lr}
    675a:	f3ef 8405 	mrs	r4, IPSR
    675e:	2c00      	cmp	r4, #0
    6760:	d103      	bne.n	676a <osSignalSet+0x12>
    6762:	4f0c      	ldr	r7, [pc, #48]	; (6794 <osSignalSet+0x3c>)
    6764:	46bc      	mov	ip, r7
    6766:	df00      	svc	0
    6768:	bdb0      	pop	{r4, r5, r7, pc}
    676a:	2800      	cmp	r0, #0
    676c:	d00e      	beq.n	678c <osSignalSet+0x34>
    676e:	0783      	lsls	r3, r0, #30
    6770:	d10c      	bne.n	678c <osSignalSet+0x34>
    6772:	7803      	ldrb	r3, [r0, #0]
    6774:	2b00      	cmp	r3, #0
    6776:	d109      	bne.n	678c <osSignalSet+0x34>
    6778:	0c0b      	lsrs	r3, r1, #16
    677a:	d107      	bne.n	678c <osSignalSet+0x34>
    677c:	78c3      	ldrb	r3, [r0, #3]
    677e:	8b04      	ldrh	r4, [r0, #24]
    6780:	b288      	uxth	r0, r1
    6782:	0019      	movs	r1, r3
    6784:	f001 fc34 	bl	7ff0 <isr_evt_set>
    6788:	0020      	movs	r0, r4
    678a:	e7ed      	b.n	6768 <osSignalSet+0x10>
    678c:	2080      	movs	r0, #128	; 0x80
    678e:	0600      	lsls	r0, r0, #24
    6790:	e7ea      	b.n	6768 <osSignalSet+0x10>
    6792:	0000      	.short	0x0000
    6794:	000065e5 	.word	0x000065e5

00006798 <osSignalClear>:
    6798:	b590      	push	{r4, r7, lr}
    679a:	f3ef 8405 	mrs	r4, IPSR
    679e:	2c00      	cmp	r4, #0
    67a0:	d103      	bne.n	67aa <osSignalClear+0x12>
    67a2:	4f03      	ldr	r7, [pc, #12]	; (67b0 <osSignalClear+0x18>)
    67a4:	46bc      	mov	ip, r7
    67a6:	df00      	svc	0
    67a8:	bd90      	pop	{r4, r7, pc}
    67aa:	2080      	movs	r0, #128	; 0x80
    67ac:	0600      	lsls	r0, r0, #24
    67ae:	e7fb      	b.n	67a8 <osSignalClear+0x10>
    67b0:	00006611 	.word	0x00006611

000067b4 <osSignalWait>:
    67b4:	b5f0      	push	{r4, r5, r6, r7, lr}
    67b6:	0004      	movs	r4, r0
    67b8:	f3ef 8505 	mrs	r5, IPSR
    67bc:	2d00      	cmp	r5, #0
    67be:	d109      	bne.n	67d4 <osSignalWait+0x20>
    67c0:	0008      	movs	r0, r1
    67c2:	0011      	movs	r1, r2
    67c4:	4f05      	ldr	r7, [pc, #20]	; (67dc <osSignalWait+0x28>)
    67c6:	46bc      	mov	ip, r7
    67c8:	df00      	svc	0
    67ca:	6020      	str	r0, [r4, #0]
    67cc:	6061      	str	r1, [r4, #4]
    67ce:	60a2      	str	r2, [r4, #8]
    67d0:	0020      	movs	r0, r4
    67d2:	bdf0      	pop	{r4, r5, r6, r7, pc}
    67d4:	2382      	movs	r3, #130	; 0x82
    67d6:	6003      	str	r3, [r0, #0]
    67d8:	e7fa      	b.n	67d0 <osSignalWait+0x1c>
    67da:	0000      	.short	0x0000
    67dc:	0000663d 	.word	0x0000663d

000067e0 <svcMutexCreate>:
    67e0:	b510      	push	{r4, lr}
    67e2:	2800      	cmp	r0, #0
    67e4:	d00a      	beq.n	67fc <svcMutexCreate+0x1c>
    67e6:	6804      	ldr	r4, [r0, #0]
    67e8:	2c00      	cmp	r4, #0
    67ea:	d007      	beq.n	67fc <svcMutexCreate+0x1c>
    67ec:	7823      	ldrb	r3, [r4, #0]
    67ee:	2b00      	cmp	r3, #0
    67f0:	d104      	bne.n	67fc <svcMutexCreate+0x1c>
    67f2:	0020      	movs	r0, r4
    67f4:	f000 feb4 	bl	7560 <rt_mut_init>
    67f8:	0020      	movs	r0, r4
    67fa:	bd10      	pop	{r4, pc}
    67fc:	2000      	movs	r0, #0
    67fe:	e7fc      	b.n	67fa <svcMutexCreate+0x1a>

00006800 <svcMutexWait>:
    6800:	b510      	push	{r4, lr}
    6802:	0004      	movs	r4, r0
    6804:	b082      	sub	sp, #8
    6806:	2080      	movs	r0, #128	; 0x80
    6808:	07a3      	lsls	r3, r4, #30
    680a:	d104      	bne.n	6816 <svcMutexWait+0x16>
    680c:	2c00      	cmp	r4, #0
    680e:	d002      	beq.n	6816 <svcMutexWait+0x16>
    6810:	7823      	ldrb	r3, [r4, #0]
    6812:	2b03      	cmp	r3, #3
    6814:	d001      	beq.n	681a <svcMutexWait+0x1a>
    6816:	b002      	add	sp, #8
    6818:	bd10      	pop	{r4, pc}
    681a:	2900      	cmp	r1, #0
    681c:	d01b      	beq.n	6856 <svcMutexWait+0x56>
    681e:	1c4b      	adds	r3, r1, #1
    6820:	d025      	beq.n	686e <svcMutexWait+0x6e>
    6822:	4b16      	ldr	r3, [pc, #88]	; (687c <svcMutexWait+0x7c>)
    6824:	4299      	cmp	r1, r3
    6826:	d824      	bhi.n	6872 <svcMutexWait+0x72>
    6828:	20fa      	movs	r0, #250	; 0xfa
    682a:	4b15      	ldr	r3, [pc, #84]	; (6880 <svcMutexWait+0x80>)
    682c:	0080      	lsls	r0, r0, #2
    682e:	4341      	muls	r1, r0
    6830:	681b      	ldr	r3, [r3, #0]
    6832:	9301      	str	r3, [sp, #4]
    6834:	3b01      	subs	r3, #1
    6836:	1858      	adds	r0, r3, r1
    6838:	9901      	ldr	r1, [sp, #4]
    683a:	f7fe f82f 	bl	489c <__aeabi_uidiv>
    683e:	4b11      	ldr	r3, [pc, #68]	; (6884 <svcMutexWait+0x84>)
    6840:	0019      	movs	r1, r3
    6842:	4298      	cmp	r0, r3
    6844:	d917      	bls.n	6876 <svcMutexWait+0x76>
    6846:	0020      	movs	r0, r4
    6848:	f000 ff86 	bl	7758 <rt_mut_wait>
    684c:	0003      	movs	r3, r0
    684e:	2801      	cmp	r0, #1
    6850:	d108      	bne.n	6864 <svcMutexWait+0x64>
    6852:	20c1      	movs	r0, #193	; 0xc1
    6854:	e7df      	b.n	6816 <svcMutexWait+0x16>
    6856:	2100      	movs	r1, #0
    6858:	0020      	movs	r0, r4
    685a:	f000 ff7d 	bl	7758 <rt_mut_wait>
    685e:	0003      	movs	r3, r0
    6860:	2801      	cmp	r0, #1
    6862:	d002      	beq.n	686a <svcMutexWait+0x6a>
    6864:	2000      	movs	r0, #0
    6866:	2bff      	cmp	r3, #255	; 0xff
    6868:	d1d5      	bne.n	6816 <svcMutexWait+0x16>
    686a:	2081      	movs	r0, #129	; 0x81
    686c:	e7d3      	b.n	6816 <svcMutexWait+0x16>
    686e:	4906      	ldr	r1, [pc, #24]	; (6888 <svcMutexWait+0x88>)
    6870:	e7e9      	b.n	6846 <svcMutexWait+0x46>
    6872:	4904      	ldr	r1, [pc, #16]	; (6884 <svcMutexWait+0x84>)
    6874:	e7e7      	b.n	6846 <svcMutexWait+0x46>
    6876:	b281      	uxth	r1, r0
    6878:	e7e5      	b.n	6846 <svcMutexWait+0x46>
    687a:	46c0      	nop			; (mov r8, r8)
    687c:	003d0900 	.word	0x003d0900
    6880:	00008b28 	.word	0x00008b28
    6884:	0000fffe 	.word	0x0000fffe
    6888:	0000ffff 	.word	0x0000ffff

0000688c <svcMutexRelease>:
    688c:	b510      	push	{r4, lr}
    688e:	2380      	movs	r3, #128	; 0x80
    6890:	0782      	lsls	r2, r0, #30
    6892:	d104      	bne.n	689e <svcMutexRelease+0x12>
    6894:	2800      	cmp	r0, #0
    6896:	d002      	beq.n	689e <svcMutexRelease+0x12>
    6898:	7802      	ldrb	r2, [r0, #0]
    689a:	2a03      	cmp	r2, #3
    689c:	d001      	beq.n	68a2 <svcMutexRelease+0x16>
    689e:	0018      	movs	r0, r3
    68a0:	bd10      	pop	{r4, pc}
    68a2:	f000 fed5 	bl	7650 <rt_mut_release>
    68a6:	2381      	movs	r3, #129	; 0x81
    68a8:	28ff      	cmp	r0, #255	; 0xff
    68aa:	d0f8      	beq.n	689e <svcMutexRelease+0x12>
    68ac:	2300      	movs	r3, #0
    68ae:	e7f6      	b.n	689e <svcMutexRelease+0x12>

000068b0 <svcMutexDelete>:
    68b0:	b510      	push	{r4, lr}
    68b2:	2380      	movs	r3, #128	; 0x80
    68b4:	0782      	lsls	r2, r0, #30
    68b6:	d104      	bne.n	68c2 <svcMutexDelete+0x12>
    68b8:	2800      	cmp	r0, #0
    68ba:	d002      	beq.n	68c2 <svcMutexDelete+0x12>
    68bc:	7802      	ldrb	r2, [r0, #0]
    68be:	2a03      	cmp	r2, #3
    68c0:	d001      	beq.n	68c6 <svcMutexDelete+0x16>
    68c2:	0018      	movs	r0, r3
    68c4:	bd10      	pop	{r4, pc}
    68c6:	f000 fe53 	bl	7570 <rt_mut_delete>
    68ca:	2300      	movs	r3, #0
    68cc:	e7f9      	b.n	68c2 <svcMutexDelete+0x12>
    68ce:	46c0      	nop			; (mov r8, r8)

000068d0 <osMutexCreate>:
    68d0:	b5b0      	push	{r4, r5, r7, lr}
    68d2:	f3ef 8405 	mrs	r4, IPSR
    68d6:	2c00      	cmp	r4, #0
    68d8:	d119      	bne.n	690e <osMutexCreate+0x3e>
    68da:	f3ef 8414 	mrs	r4, CONTROL
    68de:	07e4      	lsls	r4, r4, #31
    68e0:	d411      	bmi.n	6906 <osMutexCreate+0x36>
    68e2:	4c0c      	ldr	r4, [pc, #48]	; (6914 <osMutexCreate+0x44>)
    68e4:	7824      	ldrb	r4, [r4, #0]
    68e6:	2c00      	cmp	r4, #0
    68e8:	d10d      	bne.n	6906 <osMutexCreate+0x36>
    68ea:	2800      	cmp	r0, #0
    68ec:	d00f      	beq.n	690e <osMutexCreate+0x3e>
    68ee:	6804      	ldr	r4, [r0, #0]
    68f0:	2c00      	cmp	r4, #0
    68f2:	d00c      	beq.n	690e <osMutexCreate+0x3e>
    68f4:	7823      	ldrb	r3, [r4, #0]
    68f6:	2000      	movs	r0, #0
    68f8:	2b00      	cmp	r3, #0
    68fa:	d107      	bne.n	690c <osMutexCreate+0x3c>
    68fc:	0020      	movs	r0, r4
    68fe:	f000 fe2f 	bl	7560 <rt_mut_init>
    6902:	0020      	movs	r0, r4
    6904:	e002      	b.n	690c <osMutexCreate+0x3c>
    6906:	4f04      	ldr	r7, [pc, #16]	; (6918 <osMutexCreate+0x48>)
    6908:	46bc      	mov	ip, r7
    690a:	df00      	svc	0
    690c:	bdb0      	pop	{r4, r5, r7, pc}
    690e:	2000      	movs	r0, #0
    6910:	e7fc      	b.n	690c <osMutexCreate+0x3c>
    6912:	46c0      	nop			; (mov r8, r8)
    6914:	20006079 	.word	0x20006079
    6918:	000067e1 	.word	0x000067e1

0000691c <osMutexWait>:
    691c:	b5b0      	push	{r4, r5, r7, lr}
    691e:	0005      	movs	r5, r0
    6920:	f3ef 8405 	mrs	r4, IPSR
    6924:	2082      	movs	r0, #130	; 0x82
    6926:	2c00      	cmp	r4, #0
    6928:	d000      	beq.n	692c <osMutexWait+0x10>
    692a:	bdb0      	pop	{r4, r5, r7, pc}
    692c:	0028      	movs	r0, r5
    692e:	4f02      	ldr	r7, [pc, #8]	; (6938 <osMutexWait+0x1c>)
    6930:	46bc      	mov	ip, r7
    6932:	df00      	svc	0
    6934:	e7f9      	b.n	692a <osMutexWait+0xe>
    6936:	0000      	.short	0x0000
    6938:	00006801 	.word	0x00006801

0000693c <osMutexRelease>:
    693c:	b5b0      	push	{r4, r5, r7, lr}
    693e:	0005      	movs	r5, r0
    6940:	f3ef 8405 	mrs	r4, IPSR
    6944:	2082      	movs	r0, #130	; 0x82
    6946:	2c00      	cmp	r4, #0
    6948:	d000      	beq.n	694c <osMutexRelease+0x10>
    694a:	bdb0      	pop	{r4, r5, r7, pc}
    694c:	0028      	movs	r0, r5
    694e:	4f02      	ldr	r7, [pc, #8]	; (6958 <osMutexRelease+0x1c>)
    6950:	46bc      	mov	ip, r7
    6952:	df00      	svc	0
    6954:	e7f9      	b.n	694a <osMutexRelease+0xe>
    6956:	0000      	.short	0x0000
    6958:	0000688d 	.word	0x0000688d

0000695c <osMutexDelete>:
    695c:	b5b0      	push	{r4, r5, r7, lr}
    695e:	0005      	movs	r5, r0
    6960:	f3ef 8405 	mrs	r4, IPSR
    6964:	2082      	movs	r0, #130	; 0x82
    6966:	2c00      	cmp	r4, #0
    6968:	d000      	beq.n	696c <osMutexDelete+0x10>
    696a:	bdb0      	pop	{r4, r5, r7, pc}
    696c:	0028      	movs	r0, r5
    696e:	4f02      	ldr	r7, [pc, #8]	; (6978 <osMutexDelete+0x1c>)
    6970:	46bc      	mov	ip, r7
    6972:	df00      	svc	0
    6974:	e7f9      	b.n	696a <osMutexDelete+0xe>
    6976:	0000      	.short	0x0000
    6978:	000068b1 	.word	0x000068b1

0000697c <svcSemaphoreCreate>:
    697c:	b510      	push	{r4, lr}
    697e:	2800      	cmp	r0, #0
    6980:	d00e      	beq.n	69a0 <svcSemaphoreCreate+0x24>
    6982:	6804      	ldr	r4, [r0, #0]
    6984:	2c00      	cmp	r4, #0
    6986:	d00b      	beq.n	69a0 <svcSemaphoreCreate+0x24>
    6988:	7823      	ldrb	r3, [r4, #0]
    698a:	2b00      	cmp	r3, #0
    698c:	d108      	bne.n	69a0 <svcSemaphoreCreate+0x24>
    698e:	4b05      	ldr	r3, [pc, #20]	; (69a4 <svcSemaphoreCreate+0x28>)
    6990:	4299      	cmp	r1, r3
    6992:	dc05      	bgt.n	69a0 <svcSemaphoreCreate+0x24>
    6994:	0020      	movs	r0, r4
    6996:	b289      	uxth	r1, r1
    6998:	f000 ff4a 	bl	7830 <rt_sem_init>
    699c:	0020      	movs	r0, r4
    699e:	bd10      	pop	{r4, pc}
    69a0:	2000      	movs	r0, #0
    69a2:	e7fc      	b.n	699e <svcSemaphoreCreate+0x22>
    69a4:	0000ffff 	.word	0x0000ffff

000069a8 <svcSemaphoreWait>:
    69a8:	b510      	push	{r4, lr}
    69aa:	0004      	movs	r4, r0
    69ac:	b082      	sub	sp, #8
    69ae:	0783      	lsls	r3, r0, #30
    69b0:	d111      	bne.n	69d6 <svcSemaphoreWait+0x2e>
    69b2:	2800      	cmp	r0, #0
    69b4:	d00f      	beq.n	69d6 <svcSemaphoreWait+0x2e>
    69b6:	7803      	ldrb	r3, [r0, #0]
    69b8:	2b02      	cmp	r3, #2
    69ba:	d10c      	bne.n	69d6 <svcSemaphoreWait+0x2e>
    69bc:	2300      	movs	r3, #0
    69be:	2900      	cmp	r1, #0
    69c0:	d10c      	bne.n	69dc <svcSemaphoreWait+0x34>
    69c2:	0019      	movs	r1, r3
    69c4:	0020      	movs	r0, r4
    69c6:	f000 ff83 	bl	78d0 <rt_sem_wait>
    69ca:	2801      	cmp	r0, #1
    69cc:	d023      	beq.n	6a16 <svcSemaphoreWait+0x6e>
    69ce:	8860      	ldrh	r0, [r4, #2]
    69d0:	3001      	adds	r0, #1
    69d2:	b002      	add	sp, #8
    69d4:	bd10      	pop	{r4, pc}
    69d6:	2001      	movs	r0, #1
    69d8:	4240      	negs	r0, r0
    69da:	e7fa      	b.n	69d2 <svcSemaphoreWait+0x2a>
    69dc:	1c4b      	adds	r3, r1, #1
    69de:	d01c      	beq.n	6a1a <svcSemaphoreWait+0x72>
    69e0:	4b0f      	ldr	r3, [pc, #60]	; (6a20 <svcSemaphoreWait+0x78>)
    69e2:	4299      	cmp	r1, r3
    69e4:	d810      	bhi.n	6a08 <svcSemaphoreWait+0x60>
    69e6:	20fa      	movs	r0, #250	; 0xfa
    69e8:	4b0e      	ldr	r3, [pc, #56]	; (6a24 <svcSemaphoreWait+0x7c>)
    69ea:	0080      	lsls	r0, r0, #2
    69ec:	4341      	muls	r1, r0
    69ee:	681b      	ldr	r3, [r3, #0]
    69f0:	9301      	str	r3, [sp, #4]
    69f2:	3b01      	subs	r3, #1
    69f4:	1858      	adds	r0, r3, r1
    69f6:	9901      	ldr	r1, [sp, #4]
    69f8:	f7fd ff50 	bl	489c <__aeabi_uidiv>
    69fc:	4a0a      	ldr	r2, [pc, #40]	; (6a28 <svcSemaphoreWait+0x80>)
    69fe:	0013      	movs	r3, r2
    6a00:	4290      	cmp	r0, r2
    6a02:	d8de      	bhi.n	69c2 <svcSemaphoreWait+0x1a>
    6a04:	b283      	uxth	r3, r0
    6a06:	e7dc      	b.n	69c2 <svcSemaphoreWait+0x1a>
    6a08:	4b07      	ldr	r3, [pc, #28]	; (6a28 <svcSemaphoreWait+0x80>)
    6a0a:	0020      	movs	r0, r4
    6a0c:	0019      	movs	r1, r3
    6a0e:	f000 ff5f 	bl	78d0 <rt_sem_wait>
    6a12:	2801      	cmp	r0, #1
    6a14:	d1db      	bne.n	69ce <svcSemaphoreWait+0x26>
    6a16:	2000      	movs	r0, #0
    6a18:	e7db      	b.n	69d2 <svcSemaphoreWait+0x2a>
    6a1a:	4b04      	ldr	r3, [pc, #16]	; (6a2c <svcSemaphoreWait+0x84>)
    6a1c:	e7d1      	b.n	69c2 <svcSemaphoreWait+0x1a>
    6a1e:	46c0      	nop			; (mov r8, r8)
    6a20:	003d0900 	.word	0x003d0900
    6a24:	00008b28 	.word	0x00008b28
    6a28:	0000fffe 	.word	0x0000fffe
    6a2c:	0000ffff 	.word	0x0000ffff

00006a30 <svcSemaphoreRelease>:
    6a30:	b510      	push	{r4, lr}
    6a32:	2380      	movs	r3, #128	; 0x80
    6a34:	0782      	lsls	r2, r0, #30
    6a36:	d104      	bne.n	6a42 <svcSemaphoreRelease+0x12>
    6a38:	2800      	cmp	r0, #0
    6a3a:	d002      	beq.n	6a42 <svcSemaphoreRelease+0x12>
    6a3c:	7802      	ldrb	r2, [r0, #0]
    6a3e:	2a02      	cmp	r2, #2
    6a40:	d001      	beq.n	6a46 <svcSemaphoreRelease+0x16>
    6a42:	0018      	movs	r0, r3
    6a44:	bd10      	pop	{r4, pc}
    6a46:	8841      	ldrh	r1, [r0, #2]
    6a48:	4a03      	ldr	r2, [pc, #12]	; (6a58 <svcSemaphoreRelease+0x28>)
    6a4a:	3301      	adds	r3, #1
    6a4c:	4291      	cmp	r1, r2
    6a4e:	d0f8      	beq.n	6a42 <svcSemaphoreRelease+0x12>
    6a50:	f000 ff28 	bl	78a4 <rt_sem_send>
    6a54:	2300      	movs	r3, #0
    6a56:	e7f4      	b.n	6a42 <svcSemaphoreRelease+0x12>
    6a58:	0000ffff 	.word	0x0000ffff

00006a5c <svcSemaphoreDelete>:
    6a5c:	b510      	push	{r4, lr}
    6a5e:	2380      	movs	r3, #128	; 0x80
    6a60:	0782      	lsls	r2, r0, #30
    6a62:	d104      	bne.n	6a6e <svcSemaphoreDelete+0x12>
    6a64:	2800      	cmp	r0, #0
    6a66:	d002      	beq.n	6a6e <svcSemaphoreDelete+0x12>
    6a68:	7802      	ldrb	r2, [r0, #0]
    6a6a:	2a02      	cmp	r2, #2
    6a6c:	d001      	beq.n	6a72 <svcSemaphoreDelete+0x16>
    6a6e:	0018      	movs	r0, r3
    6a70:	bd10      	pop	{r4, pc}
    6a72:	f000 fee3 	bl	783c <rt_sem_delete>
    6a76:	2300      	movs	r3, #0
    6a78:	e7f9      	b.n	6a6e <svcSemaphoreDelete+0x12>
    6a7a:	46c0      	nop			; (mov r8, r8)

00006a7c <isrSemaphoreRelease>:
    6a7c:	b510      	push	{r4, lr}
    6a7e:	2380      	movs	r3, #128	; 0x80
    6a80:	0782      	lsls	r2, r0, #30
    6a82:	d104      	bne.n	6a8e <isrSemaphoreRelease+0x12>
    6a84:	2800      	cmp	r0, #0
    6a86:	d002      	beq.n	6a8e <isrSemaphoreRelease+0x12>
    6a88:	7802      	ldrb	r2, [r0, #0]
    6a8a:	2a02      	cmp	r2, #2
    6a8c:	d001      	beq.n	6a92 <isrSemaphoreRelease+0x16>
    6a8e:	0018      	movs	r0, r3
    6a90:	bd10      	pop	{r4, pc}
    6a92:	8841      	ldrh	r1, [r0, #2]
    6a94:	4a03      	ldr	r2, [pc, #12]	; (6aa4 <isrSemaphoreRelease+0x28>)
    6a96:	3301      	adds	r3, #1
    6a98:	4291      	cmp	r1, r2
    6a9a:	d0f8      	beq.n	6a8e <isrSemaphoreRelease+0x12>
    6a9c:	f000 ff3a 	bl	7914 <isr_sem_send>
    6aa0:	2300      	movs	r3, #0
    6aa2:	e7f4      	b.n	6a8e <isrSemaphoreRelease+0x12>
    6aa4:	0000ffff 	.word	0x0000ffff

00006aa8 <osSemaphoreCreate>:
    6aa8:	b5b0      	push	{r4, r5, r7, lr}
    6aaa:	f3ef 8405 	mrs	r4, IPSR
    6aae:	2c00      	cmp	r4, #0
    6ab0:	d11c      	bne.n	6aec <osSemaphoreCreate+0x44>
    6ab2:	f3ef 8414 	mrs	r4, CONTROL
    6ab6:	07e4      	lsls	r4, r4, #31
    6ab8:	d503      	bpl.n	6ac2 <osSemaphoreCreate+0x1a>
    6aba:	4f0f      	ldr	r7, [pc, #60]	; (6af8 <osSemaphoreCreate+0x50>)
    6abc:	46bc      	mov	ip, r7
    6abe:	df00      	svc	0
    6ac0:	bdb0      	pop	{r4, r5, r7, pc}
    6ac2:	4c0b      	ldr	r4, [pc, #44]	; (6af0 <osSemaphoreCreate+0x48>)
    6ac4:	7824      	ldrb	r4, [r4, #0]
    6ac6:	2c00      	cmp	r4, #0
    6ac8:	d1f7      	bne.n	6aba <osSemaphoreCreate+0x12>
    6aca:	2800      	cmp	r0, #0
    6acc:	d00e      	beq.n	6aec <osSemaphoreCreate+0x44>
    6ace:	6804      	ldr	r4, [r0, #0]
    6ad0:	2c00      	cmp	r4, #0
    6ad2:	d00b      	beq.n	6aec <osSemaphoreCreate+0x44>
    6ad4:	7823      	ldrb	r3, [r4, #0]
    6ad6:	2b00      	cmp	r3, #0
    6ad8:	d108      	bne.n	6aec <osSemaphoreCreate+0x44>
    6ada:	4b06      	ldr	r3, [pc, #24]	; (6af4 <osSemaphoreCreate+0x4c>)
    6adc:	4299      	cmp	r1, r3
    6ade:	dc05      	bgt.n	6aec <osSemaphoreCreate+0x44>
    6ae0:	0020      	movs	r0, r4
    6ae2:	b289      	uxth	r1, r1
    6ae4:	f000 fea4 	bl	7830 <rt_sem_init>
    6ae8:	0020      	movs	r0, r4
    6aea:	e7e9      	b.n	6ac0 <osSemaphoreCreate+0x18>
    6aec:	2000      	movs	r0, #0
    6aee:	e7e7      	b.n	6ac0 <osSemaphoreCreate+0x18>
    6af0:	20006079 	.word	0x20006079
    6af4:	0000ffff 	.word	0x0000ffff
    6af8:	0000697d 	.word	0x0000697d

00006afc <osSemaphoreWait>:
    6afc:	b590      	push	{r4, r7, lr}
    6afe:	f3ef 8405 	mrs	r4, IPSR
    6b02:	2c00      	cmp	r4, #0
    6b04:	d103      	bne.n	6b0e <osSemaphoreWait+0x12>
    6b06:	4f03      	ldr	r7, [pc, #12]	; (6b14 <osSemaphoreWait+0x18>)
    6b08:	46bc      	mov	ip, r7
    6b0a:	df00      	svc	0
    6b0c:	bd90      	pop	{r4, r7, pc}
    6b0e:	2001      	movs	r0, #1
    6b10:	4240      	negs	r0, r0
    6b12:	e7fb      	b.n	6b0c <osSemaphoreWait+0x10>
    6b14:	000069a9 	.word	0x000069a9

00006b18 <osSemaphoreRelease>:
    6b18:	b5b0      	push	{r4, r5, r7, lr}
    6b1a:	f3ef 8405 	mrs	r4, IPSR
    6b1e:	2c00      	cmp	r4, #0
    6b20:	d105      	bne.n	6b2e <osSemaphoreRelease+0x16>
    6b22:	4f0c      	ldr	r7, [pc, #48]	; (6b54 <osSemaphoreRelease+0x3c>)
    6b24:	46bc      	mov	ip, r7
    6b26:	df00      	svc	0
    6b28:	0003      	movs	r3, r0
    6b2a:	0018      	movs	r0, r3
    6b2c:	bdb0      	pop	{r4, r5, r7, pc}
    6b2e:	2380      	movs	r3, #128	; 0x80
    6b30:	0782      	lsls	r2, r0, #30
    6b32:	d1fa      	bne.n	6b2a <osSemaphoreRelease+0x12>
    6b34:	2800      	cmp	r0, #0
    6b36:	d0f8      	beq.n	6b2a <osSemaphoreRelease+0x12>
    6b38:	7802      	ldrb	r2, [r0, #0]
    6b3a:	2a02      	cmp	r2, #2
    6b3c:	d1f5      	bne.n	6b2a <osSemaphoreRelease+0x12>
    6b3e:	8841      	ldrh	r1, [r0, #2]
    6b40:	4a03      	ldr	r2, [pc, #12]	; (6b50 <osSemaphoreRelease+0x38>)
    6b42:	3301      	adds	r3, #1
    6b44:	4291      	cmp	r1, r2
    6b46:	d0f0      	beq.n	6b2a <osSemaphoreRelease+0x12>
    6b48:	f000 fee4 	bl	7914 <isr_sem_send>
    6b4c:	2300      	movs	r3, #0
    6b4e:	e7ec      	b.n	6b2a <osSemaphoreRelease+0x12>
    6b50:	0000ffff 	.word	0x0000ffff
    6b54:	00006a31 	.word	0x00006a31

00006b58 <osSemaphoreDelete>:
    6b58:	b5b0      	push	{r4, r5, r7, lr}
    6b5a:	0005      	movs	r5, r0
    6b5c:	f3ef 8405 	mrs	r4, IPSR
    6b60:	2082      	movs	r0, #130	; 0x82
    6b62:	2c00      	cmp	r4, #0
    6b64:	d000      	beq.n	6b68 <osSemaphoreDelete+0x10>
    6b66:	bdb0      	pop	{r4, r5, r7, pc}
    6b68:	0028      	movs	r0, r5
    6b6a:	4f02      	ldr	r7, [pc, #8]	; (6b74 <osSemaphoreDelete+0x1c>)
    6b6c:	46bc      	mov	ip, r7
    6b6e:	df00      	svc	0
    6b70:	e7f9      	b.n	6b66 <osSemaphoreDelete+0xe>
    6b72:	0000      	.short	0x0000
    6b74:	00006a5d 	.word	0x00006a5d

00006b78 <svcPoolCreate>:
    6b78:	b510      	push	{r4, lr}
    6b7a:	1e04      	subs	r4, r0, #0
    6b7c:	d011      	beq.n	6ba2 <svcPoolCreate+0x2a>
    6b7e:	6801      	ldr	r1, [r0, #0]
    6b80:	2900      	cmp	r1, #0
    6b82:	d00e      	beq.n	6ba2 <svcPoolCreate+0x2a>
    6b84:	6842      	ldr	r2, [r0, #4]
    6b86:	2a00      	cmp	r2, #0
    6b88:	d00b      	beq.n	6ba2 <svcPoolCreate+0x2a>
    6b8a:	6880      	ldr	r0, [r0, #8]
    6b8c:	2800      	cmp	r0, #0
    6b8e:	d008      	beq.n	6ba2 <svcPoolCreate+0x2a>
    6b90:	2303      	movs	r3, #3
    6b92:	3203      	adds	r2, #3
    6b94:	439a      	bics	r2, r3
    6b96:	4351      	muls	r1, r2
    6b98:	310c      	adds	r1, #12
    6b9a:	f000 fc81 	bl	74a0 <_init_box>
    6b9e:	68a0      	ldr	r0, [r4, #8]
    6ba0:	bd10      	pop	{r4, pc}
    6ba2:	2000      	movs	r0, #0
    6ba4:	e7fc      	b.n	6ba0 <svcPoolCreate+0x28>
    6ba6:	46c0      	nop			; (mov r8, r8)

00006ba8 <sysPoolAlloc>:
    6ba8:	b510      	push	{r4, lr}
    6baa:	2800      	cmp	r0, #0
    6bac:	d002      	beq.n	6bb4 <sysPoolAlloc+0xc>
    6bae:	f000 fca3 	bl	74f8 <rt_alloc_box>
    6bb2:	bd10      	pop	{r4, pc}
    6bb4:	2000      	movs	r0, #0
    6bb6:	e7fc      	b.n	6bb2 <sysPoolAlloc+0xa>

00006bb8 <sysPoolFree>:
    6bb8:	b510      	push	{r4, lr}
    6bba:	2380      	movs	r3, #128	; 0x80
    6bbc:	2800      	cmp	r0, #0
    6bbe:	d006      	beq.n	6bce <sysPoolFree+0x16>
    6bc0:	f000 fcba 	bl	7538 <rt_free_box>
    6bc4:	1e42      	subs	r2, r0, #1
    6bc6:	4190      	sbcs	r0, r2
    6bc8:	2386      	movs	r3, #134	; 0x86
    6bca:	4240      	negs	r0, r0
    6bcc:	4003      	ands	r3, r0
    6bce:	0018      	movs	r0, r3
    6bd0:	bd10      	pop	{r4, pc}
    6bd2:	46c0      	nop			; (mov r8, r8)

00006bd4 <osPoolCreate>:
    6bd4:	b5b0      	push	{r4, r5, r7, lr}
    6bd6:	0004      	movs	r4, r0
    6bd8:	f3ef 8005 	mrs	r0, IPSR
    6bdc:	2800      	cmp	r0, #0
    6bde:	d120      	bne.n	6c22 <osPoolCreate+0x4e>
    6be0:	f3ef 8014 	mrs	r0, CONTROL
    6be4:	07c0      	lsls	r0, r0, #31
    6be6:	d504      	bpl.n	6bf2 <osPoolCreate+0x1e>
    6be8:	0020      	movs	r0, r4
    6bea:	4f10      	ldr	r7, [pc, #64]	; (6c2c <osPoolCreate+0x58>)
    6bec:	46bc      	mov	ip, r7
    6bee:	df00      	svc	0
    6bf0:	bdb0      	pop	{r4, r5, r7, pc}
    6bf2:	480d      	ldr	r0, [pc, #52]	; (6c28 <osPoolCreate+0x54>)
    6bf4:	7800      	ldrb	r0, [r0, #0]
    6bf6:	2800      	cmp	r0, #0
    6bf8:	d1f6      	bne.n	6be8 <osPoolCreate+0x14>
    6bfa:	2c00      	cmp	r4, #0
    6bfc:	d011      	beq.n	6c22 <osPoolCreate+0x4e>
    6bfe:	6821      	ldr	r1, [r4, #0]
    6c00:	2900      	cmp	r1, #0
    6c02:	d00e      	beq.n	6c22 <osPoolCreate+0x4e>
    6c04:	6862      	ldr	r2, [r4, #4]
    6c06:	2a00      	cmp	r2, #0
    6c08:	d00b      	beq.n	6c22 <osPoolCreate+0x4e>
    6c0a:	68a0      	ldr	r0, [r4, #8]
    6c0c:	2800      	cmp	r0, #0
    6c0e:	d008      	beq.n	6c22 <osPoolCreate+0x4e>
    6c10:	2303      	movs	r3, #3
    6c12:	3203      	adds	r2, #3
    6c14:	439a      	bics	r2, r3
    6c16:	4351      	muls	r1, r2
    6c18:	310c      	adds	r1, #12
    6c1a:	f000 fc41 	bl	74a0 <_init_box>
    6c1e:	68a0      	ldr	r0, [r4, #8]
    6c20:	e7e6      	b.n	6bf0 <osPoolCreate+0x1c>
    6c22:	2000      	movs	r0, #0
    6c24:	e7e4      	b.n	6bf0 <osPoolCreate+0x1c>
    6c26:	46c0      	nop			; (mov r8, r8)
    6c28:	20006079 	.word	0x20006079
    6c2c:	00006b79 	.word	0x00006b79

00006c30 <osPoolAlloc>:
    6c30:	b5b0      	push	{r4, r5, r7, lr}
    6c32:	f3ef 8405 	mrs	r4, IPSR
    6c36:	2c00      	cmp	r4, #0
    6c38:	d103      	bne.n	6c42 <osPoolAlloc+0x12>
    6c3a:	f3ef 8414 	mrs	r4, CONTROL
    6c3e:	07e4      	lsls	r4, r4, #31
    6c40:	d404      	bmi.n	6c4c <osPoolAlloc+0x1c>
    6c42:	2800      	cmp	r0, #0
    6c44:	d006      	beq.n	6c54 <osPoolAlloc+0x24>
    6c46:	f000 fc57 	bl	74f8 <rt_alloc_box>
    6c4a:	bdb0      	pop	{r4, r5, r7, pc}
    6c4c:	4f02      	ldr	r7, [pc, #8]	; (6c58 <osPoolAlloc+0x28>)
    6c4e:	46bc      	mov	ip, r7
    6c50:	df00      	svc	0
    6c52:	e7fa      	b.n	6c4a <osPoolAlloc+0x1a>
    6c54:	2000      	movs	r0, #0
    6c56:	e7f8      	b.n	6c4a <osPoolAlloc+0x1a>
    6c58:	00006ba9 	.word	0x00006ba9

00006c5c <osPoolCAlloc>:
    6c5c:	b5b0      	push	{r4, r5, r7, lr}
    6c5e:	0004      	movs	r4, r0
    6c60:	f3ef 8005 	mrs	r0, IPSR
    6c64:	2800      	cmp	r0, #0
    6c66:	d103      	bne.n	6c70 <osPoolCAlloc+0x14>
    6c68:	f3ef 8014 	mrs	r0, CONTROL
    6c6c:	07c0      	lsls	r0, r0, #31
    6c6e:	d410      	bmi.n	6c92 <osPoolCAlloc+0x36>
    6c70:	2c00      	cmp	r4, #0
    6c72:	d015      	beq.n	6ca0 <osPoolCAlloc+0x44>
    6c74:	0020      	movs	r0, r4
    6c76:	f000 fc3f 	bl	74f8 <rt_alloc_box>
    6c7a:	2800      	cmp	r0, #0
    6c7c:	d010      	beq.n	6ca0 <osPoolCAlloc+0x44>
    6c7e:	68a3      	ldr	r3, [r4, #8]
    6c80:	2b00      	cmp	r3, #0
    6c82:	d005      	beq.n	6c90 <osPoolCAlloc+0x34>
    6c84:	0002      	movs	r2, r0
    6c86:	2100      	movs	r1, #0
    6c88:	3b04      	subs	r3, #4
    6c8a:	c202      	stmia	r2!, {r1}
    6c8c:	2b00      	cmp	r3, #0
    6c8e:	d1fb      	bne.n	6c88 <osPoolCAlloc+0x2c>
    6c90:	bdb0      	pop	{r4, r5, r7, pc}
    6c92:	0020      	movs	r0, r4
    6c94:	4f03      	ldr	r7, [pc, #12]	; (6ca4 <osPoolCAlloc+0x48>)
    6c96:	46bc      	mov	ip, r7
    6c98:	df00      	svc	0
    6c9a:	2c00      	cmp	r4, #0
    6c9c:	d1ed      	bne.n	6c7a <osPoolCAlloc+0x1e>
    6c9e:	e7f7      	b.n	6c90 <osPoolCAlloc+0x34>
    6ca0:	2000      	movs	r0, #0
    6ca2:	e7f5      	b.n	6c90 <osPoolCAlloc+0x34>
    6ca4:	00006ba9 	.word	0x00006ba9

00006ca8 <osPoolFree>:
    6ca8:	b5b0      	push	{r4, r5, r7, lr}
    6caa:	f3ef 8405 	mrs	r4, IPSR
    6cae:	2c00      	cmp	r4, #0
    6cb0:	d103      	bne.n	6cba <osPoolFree+0x12>
    6cb2:	f3ef 8414 	mrs	r4, CONTROL
    6cb6:	07e4      	lsls	r4, r4, #31
    6cb8:	d40a      	bmi.n	6cd0 <osPoolFree+0x28>
    6cba:	2800      	cmp	r0, #0
    6cbc:	d00c      	beq.n	6cd8 <osPoolFree+0x30>
    6cbe:	f000 fc3b 	bl	7538 <rt_free_box>
    6cc2:	0003      	movs	r3, r0
    6cc4:	1e5a      	subs	r2, r3, #1
    6cc6:	4193      	sbcs	r3, r2
    6cc8:	2086      	movs	r0, #134	; 0x86
    6cca:	425b      	negs	r3, r3
    6ccc:	4018      	ands	r0, r3
    6cce:	bdb0      	pop	{r4, r5, r7, pc}
    6cd0:	4f02      	ldr	r7, [pc, #8]	; (6cdc <osPoolFree+0x34>)
    6cd2:	46bc      	mov	ip, r7
    6cd4:	df00      	svc	0
    6cd6:	e7fa      	b.n	6cce <osPoolFree+0x26>
    6cd8:	2080      	movs	r0, #128	; 0x80
    6cda:	e7f8      	b.n	6cce <osPoolFree+0x26>
    6cdc:	00006bb9 	.word	0x00006bb9

00006ce0 <svcMessageCreate>:
    6ce0:	b510      	push	{r4, lr}
    6ce2:	1e04      	subs	r4, r0, #0
    6ce4:	d00f      	beq.n	6d06 <svcMessageCreate+0x26>
    6ce6:	6801      	ldr	r1, [r0, #0]
    6ce8:	2900      	cmp	r1, #0
    6cea:	d00c      	beq.n	6d06 <svcMessageCreate+0x26>
    6cec:	6840      	ldr	r0, [r0, #4]
    6cee:	2800      	cmp	r0, #0
    6cf0:	d009      	beq.n	6d06 <svcMessageCreate+0x26>
    6cf2:	7803      	ldrb	r3, [r0, #0]
    6cf4:	2b00      	cmp	r3, #0
    6cf6:	d106      	bne.n	6d06 <svcMessageCreate+0x26>
    6cf8:	3104      	adds	r1, #4
    6cfa:	0089      	lsls	r1, r1, #2
    6cfc:	b289      	uxth	r1, r1
    6cfe:	f000 fe2b 	bl	7958 <rt_mbx_init>
    6d02:	6860      	ldr	r0, [r4, #4]
    6d04:	bd10      	pop	{r4, pc}
    6d06:	2000      	movs	r0, #0
    6d08:	e7fc      	b.n	6d04 <svcMessageCreate+0x24>
    6d0a:	46c0      	nop			; (mov r8, r8)

00006d0c <svcMessagePut>:
    6d0c:	b570      	push	{r4, r5, r6, lr}
    6d0e:	0004      	movs	r4, r0
    6d10:	b082      	sub	sp, #8
    6d12:	000e      	movs	r6, r1
    6d14:	0015      	movs	r5, r2
    6d16:	2800      	cmp	r0, #0
    6d18:	d005      	beq.n	6d26 <svcMessagePut+0x1a>
    6d1a:	7803      	ldrb	r3, [r0, #0]
    6d1c:	2080      	movs	r0, #128	; 0x80
    6d1e:	2b01      	cmp	r3, #1
    6d20:	d003      	beq.n	6d2a <svcMessagePut+0x1e>
    6d22:	b002      	add	sp, #8
    6d24:	bd70      	pop	{r4, r5, r6, pc}
    6d26:	2080      	movs	r0, #128	; 0x80
    6d28:	e7fb      	b.n	6d22 <svcMessagePut+0x16>
    6d2a:	2200      	movs	r2, #0
    6d2c:	2d00      	cmp	r5, #0
    6d2e:	d014      	beq.n	6d5a <svcMessagePut+0x4e>
    6d30:	1c6b      	adds	r3, r5, #1
    6d32:	d01f      	beq.n	6d74 <svcMessagePut+0x68>
    6d34:	4b11      	ldr	r3, [pc, #68]	; (6d7c <svcMessagePut+0x70>)
    6d36:	429d      	cmp	r5, r3
    6d38:	d81e      	bhi.n	6d78 <svcMessagePut+0x6c>
    6d3a:	20fa      	movs	r0, #250	; 0xfa
    6d3c:	4b10      	ldr	r3, [pc, #64]	; (6d80 <svcMessagePut+0x74>)
    6d3e:	0080      	lsls	r0, r0, #2
    6d40:	4368      	muls	r0, r5
    6d42:	681b      	ldr	r3, [r3, #0]
    6d44:	9301      	str	r3, [sp, #4]
    6d46:	3b01      	subs	r3, #1
    6d48:	18c0      	adds	r0, r0, r3
    6d4a:	9901      	ldr	r1, [sp, #4]
    6d4c:	f7fd fda6 	bl	489c <__aeabi_uidiv>
    6d50:	4b0c      	ldr	r3, [pc, #48]	; (6d84 <svcMessagePut+0x78>)
    6d52:	001a      	movs	r2, r3
    6d54:	4298      	cmp	r0, r3
    6d56:	d800      	bhi.n	6d5a <svcMessagePut+0x4e>
    6d58:	b282      	uxth	r2, r0
    6d5a:	0031      	movs	r1, r6
    6d5c:	0020      	movs	r0, r4
    6d5e:	f000 fe09 	bl	7974 <rt_mbx_send>
    6d62:	0003      	movs	r3, r0
    6d64:	2000      	movs	r0, #0
    6d66:	2b01      	cmp	r3, #1
    6d68:	d1db      	bne.n	6d22 <svcMessagePut+0x16>
    6d6a:	30c1      	adds	r0, #193	; 0xc1
    6d6c:	2d00      	cmp	r5, #0
    6d6e:	d1d8      	bne.n	6d22 <svcMessagePut+0x16>
    6d70:	3840      	subs	r0, #64	; 0x40
    6d72:	e7d6      	b.n	6d22 <svcMessagePut+0x16>
    6d74:	4a04      	ldr	r2, [pc, #16]	; (6d88 <svcMessagePut+0x7c>)
    6d76:	e7f0      	b.n	6d5a <svcMessagePut+0x4e>
    6d78:	4a02      	ldr	r2, [pc, #8]	; (6d84 <svcMessagePut+0x78>)
    6d7a:	e7ee      	b.n	6d5a <svcMessagePut+0x4e>
    6d7c:	003d0900 	.word	0x003d0900
    6d80:	00008b28 	.word	0x00008b28
    6d84:	0000fffe 	.word	0x0000fffe
    6d88:	0000ffff 	.word	0x0000ffff

00006d8c <svcMessageGet>:
    6d8c:	b510      	push	{r4, lr}
    6d8e:	0004      	movs	r4, r0
    6d90:	b086      	sub	sp, #24
    6d92:	2800      	cmp	r0, #0
    6d94:	d002      	beq.n	6d9c <svcMessageGet+0x10>
    6d96:	7803      	ldrb	r3, [r0, #0]
    6d98:	2b01      	cmp	r3, #1
    6d9a:	d005      	beq.n	6da8 <svcMessageGet+0x1c>
    6d9c:	2080      	movs	r0, #128	; 0x80
    6d9e:	2100      	movs	r1, #0
    6da0:	2200      	movs	r2, #0
    6da2:	2300      	movs	r3, #0
    6da4:	b006      	add	sp, #24
    6da6:	bd10      	pop	{r4, pc}
    6da8:	2900      	cmp	r1, #0
    6daa:	d01c      	beq.n	6de6 <svcMessageGet+0x5a>
    6dac:	1c4b      	adds	r3, r1, #1
    6dae:	d02a      	beq.n	6e06 <svcMessageGet+0x7a>
    6db0:	4b16      	ldr	r3, [pc, #88]	; (6e0c <svcMessageGet+0x80>)
    6db2:	4299      	cmp	r1, r3
    6db4:	d820      	bhi.n	6df8 <svcMessageGet+0x6c>
    6db6:	20fa      	movs	r0, #250	; 0xfa
    6db8:	4b15      	ldr	r3, [pc, #84]	; (6e10 <svcMessageGet+0x84>)
    6dba:	0080      	lsls	r0, r0, #2
    6dbc:	4341      	muls	r1, r0
    6dbe:	681b      	ldr	r3, [r3, #0]
    6dc0:	9301      	str	r3, [sp, #4]
    6dc2:	3b01      	subs	r3, #1
    6dc4:	1858      	adds	r0, r3, r1
    6dc6:	9901      	ldr	r1, [sp, #4]
    6dc8:	f7fd fd68 	bl	489c <__aeabi_uidiv>
    6dcc:	4b11      	ldr	r3, [pc, #68]	; (6e14 <svcMessageGet+0x88>)
    6dce:	001a      	movs	r2, r3
    6dd0:	4298      	cmp	r0, r3
    6dd2:	d916      	bls.n	6e02 <svcMessageGet+0x76>
    6dd4:	a904      	add	r1, sp, #16
    6dd6:	0020      	movs	r0, r4
    6dd8:	f000 fe18 	bl	7a0c <rt_mbx_wait>
    6ddc:	2801      	cmp	r0, #1
    6dde:	d00d      	beq.n	6dfc <svcMessageGet+0x70>
    6de0:	2010      	movs	r0, #16
    6de2:	9904      	ldr	r1, [sp, #16]
    6de4:	e7dc      	b.n	6da0 <svcMessageGet+0x14>
    6de6:	2200      	movs	r2, #0
    6de8:	a904      	add	r1, sp, #16
    6dea:	f000 fe0f 	bl	7a0c <rt_mbx_wait>
    6dee:	2801      	cmp	r0, #1
    6df0:	d1f6      	bne.n	6de0 <svcMessageGet+0x54>
    6df2:	2000      	movs	r0, #0
    6df4:	9904      	ldr	r1, [sp, #16]
    6df6:	e7d3      	b.n	6da0 <svcMessageGet+0x14>
    6df8:	4a06      	ldr	r2, [pc, #24]	; (6e14 <svcMessageGet+0x88>)
    6dfa:	e7eb      	b.n	6dd4 <svcMessageGet+0x48>
    6dfc:	2040      	movs	r0, #64	; 0x40
    6dfe:	9904      	ldr	r1, [sp, #16]
    6e00:	e7ce      	b.n	6da0 <svcMessageGet+0x14>
    6e02:	b282      	uxth	r2, r0
    6e04:	e7e6      	b.n	6dd4 <svcMessageGet+0x48>
    6e06:	4a04      	ldr	r2, [pc, #16]	; (6e18 <svcMessageGet+0x8c>)
    6e08:	e7e4      	b.n	6dd4 <svcMessageGet+0x48>
    6e0a:	46c0      	nop			; (mov r8, r8)
    6e0c:	003d0900 	.word	0x003d0900
    6e10:	00008b28 	.word	0x00008b28
    6e14:	0000fffe 	.word	0x0000fffe
    6e18:	0000ffff 	.word	0x0000ffff

00006e1c <isrMessagePut>:
    6e1c:	b570      	push	{r4, r5, r6, lr}
    6e1e:	0004      	movs	r4, r0
    6e20:	000d      	movs	r5, r1
    6e22:	2080      	movs	r0, #128	; 0x80
    6e24:	2c00      	cmp	r4, #0
    6e26:	d001      	beq.n	6e2c <isrMessagePut+0x10>
    6e28:	2a00      	cmp	r2, #0
    6e2a:	d000      	beq.n	6e2e <isrMessagePut+0x12>
    6e2c:	bd70      	pop	{r4, r5, r6, pc}
    6e2e:	7823      	ldrb	r3, [r4, #0]
    6e30:	2b01      	cmp	r3, #1
    6e32:	d1fb      	bne.n	6e2c <isrMessagePut+0x10>
    6e34:	0020      	movs	r0, r4
    6e36:	f000 fe45 	bl	7ac4 <rt_mbx_check>
    6e3a:	0003      	movs	r3, r0
    6e3c:	2081      	movs	r0, #129	; 0x81
    6e3e:	2b00      	cmp	r3, #0
    6e40:	d0f4      	beq.n	6e2c <isrMessagePut+0x10>
    6e42:	0020      	movs	r0, r4
    6e44:	0029      	movs	r1, r5
    6e46:	f000 fe41 	bl	7acc <isr_mbx_send>
    6e4a:	2000      	movs	r0, #0
    6e4c:	e7ee      	b.n	6e2c <isrMessagePut+0x10>
    6e4e:	46c0      	nop			; (mov r8, r8)

00006e50 <isrMessageGet>:
    6e50:	b570      	push	{r4, r5, r6, lr}
    6e52:	0004      	movs	r4, r0
    6e54:	b084      	sub	sp, #16
    6e56:	0008      	movs	r0, r1
    6e58:	0015      	movs	r5, r2
    6e5a:	2900      	cmp	r1, #0
    6e5c:	d004      	beq.n	6e68 <isrMessageGet+0x18>
    6e5e:	2a00      	cmp	r2, #0
    6e60:	d102      	bne.n	6e68 <isrMessageGet+0x18>
    6e62:	780b      	ldrb	r3, [r1, #0]
    6e64:	2b01      	cmp	r3, #1
    6e66:	d004      	beq.n	6e72 <isrMessageGet+0x22>
    6e68:	2380      	movs	r3, #128	; 0x80
    6e6a:	6023      	str	r3, [r4, #0]
    6e6c:	0020      	movs	r0, r4
    6e6e:	b004      	add	sp, #16
    6e70:	bd70      	pop	{r4, r5, r6, pc}
    6e72:	a902      	add	r1, sp, #8
    6e74:	ae01      	add	r6, sp, #4
    6e76:	f000 fe2f 	bl	7ad8 <isr_mbx_receive>
    6e7a:	2804      	cmp	r0, #4
    6e7c:	d004      	beq.n	6e88 <isrMessageGet+0x38>
    6e7e:	0023      	movs	r3, r4
    6e80:	9501      	str	r5, [sp, #4]
    6e82:	ce07      	ldmia	r6!, {r0, r1, r2}
    6e84:	c307      	stmia	r3!, {r0, r1, r2}
    6e86:	e7f1      	b.n	6e6c <isrMessageGet+0x1c>
    6e88:	2310      	movs	r3, #16
    6e8a:	9301      	str	r3, [sp, #4]
    6e8c:	0023      	movs	r3, r4
    6e8e:	ce07      	ldmia	r6!, {r0, r1, r2}
    6e90:	c307      	stmia	r3!, {r0, r1, r2}
    6e92:	e7eb      	b.n	6e6c <isrMessageGet+0x1c>

00006e94 <osMessageCreate>:
    6e94:	b5b0      	push	{r4, r5, r7, lr}
    6e96:	0004      	movs	r4, r0
    6e98:	f3ef 8005 	mrs	r0, IPSR
    6e9c:	2800      	cmp	r0, #0
    6e9e:	d11e      	bne.n	6ede <osMessageCreate+0x4a>
    6ea0:	f3ef 8014 	mrs	r0, CONTROL
    6ea4:	07c0      	lsls	r0, r0, #31
    6ea6:	d504      	bpl.n	6eb2 <osMessageCreate+0x1e>
    6ea8:	0020      	movs	r0, r4
    6eaa:	4f0f      	ldr	r7, [pc, #60]	; (6ee8 <osMessageCreate+0x54>)
    6eac:	46bc      	mov	ip, r7
    6eae:	df00      	svc	0
    6eb0:	bdb0      	pop	{r4, r5, r7, pc}
    6eb2:	480c      	ldr	r0, [pc, #48]	; (6ee4 <osMessageCreate+0x50>)
    6eb4:	7800      	ldrb	r0, [r0, #0]
    6eb6:	2800      	cmp	r0, #0
    6eb8:	d1f6      	bne.n	6ea8 <osMessageCreate+0x14>
    6eba:	2c00      	cmp	r4, #0
    6ebc:	d00f      	beq.n	6ede <osMessageCreate+0x4a>
    6ebe:	6823      	ldr	r3, [r4, #0]
    6ec0:	2b00      	cmp	r3, #0
    6ec2:	d00c      	beq.n	6ede <osMessageCreate+0x4a>
    6ec4:	6860      	ldr	r0, [r4, #4]
    6ec6:	2800      	cmp	r0, #0
    6ec8:	d009      	beq.n	6ede <osMessageCreate+0x4a>
    6eca:	7802      	ldrb	r2, [r0, #0]
    6ecc:	2a00      	cmp	r2, #0
    6ece:	d106      	bne.n	6ede <osMessageCreate+0x4a>
    6ed0:	1d19      	adds	r1, r3, #4
    6ed2:	008b      	lsls	r3, r1, #2
    6ed4:	b299      	uxth	r1, r3
    6ed6:	f000 fd3f 	bl	7958 <rt_mbx_init>
    6eda:	6860      	ldr	r0, [r4, #4]
    6edc:	e7e8      	b.n	6eb0 <osMessageCreate+0x1c>
    6ede:	2000      	movs	r0, #0
    6ee0:	e7e6      	b.n	6eb0 <osMessageCreate+0x1c>
    6ee2:	46c0      	nop			; (mov r8, r8)
    6ee4:	20006079 	.word	0x20006079
    6ee8:	00006ce1 	.word	0x00006ce1

00006eec <osMessagePut>:
    6eec:	b5b0      	push	{r4, r5, r7, lr}
    6eee:	0004      	movs	r4, r0
    6ef0:	000d      	movs	r5, r1
    6ef2:	f3ef 8105 	mrs	r1, IPSR
    6ef6:	2900      	cmp	r1, #0
    6ef8:	d008      	beq.n	6f0c <osMessagePut+0x20>
    6efa:	2080      	movs	r0, #128	; 0x80
    6efc:	2c00      	cmp	r4, #0
    6efe:	d004      	beq.n	6f0a <osMessagePut+0x1e>
    6f00:	2a00      	cmp	r2, #0
    6f02:	d102      	bne.n	6f0a <osMessagePut+0x1e>
    6f04:	7823      	ldrb	r3, [r4, #0]
    6f06:	2b01      	cmp	r3, #1
    6f08:	d005      	beq.n	6f16 <osMessagePut+0x2a>
    6f0a:	bdb0      	pop	{r4, r5, r7, pc}
    6f0c:	0029      	movs	r1, r5
    6f0e:	4f08      	ldr	r7, [pc, #32]	; (6f30 <osMessagePut+0x44>)
    6f10:	46bc      	mov	ip, r7
    6f12:	df00      	svc	0
    6f14:	e7f9      	b.n	6f0a <osMessagePut+0x1e>
    6f16:	0020      	movs	r0, r4
    6f18:	f000 fdd4 	bl	7ac4 <rt_mbx_check>
    6f1c:	0003      	movs	r3, r0
    6f1e:	2081      	movs	r0, #129	; 0x81
    6f20:	2b00      	cmp	r3, #0
    6f22:	d0f2      	beq.n	6f0a <osMessagePut+0x1e>
    6f24:	0020      	movs	r0, r4
    6f26:	0029      	movs	r1, r5
    6f28:	f000 fdd0 	bl	7acc <isr_mbx_send>
    6f2c:	2000      	movs	r0, #0
    6f2e:	e7ec      	b.n	6f0a <osMessagePut+0x1e>
    6f30:	00006d0d 	.word	0x00006d0d

00006f34 <osMessageGet>:
    6f34:	b5f0      	push	{r4, r5, r6, r7, lr}
    6f36:	0004      	movs	r4, r0
    6f38:	b085      	sub	sp, #20
    6f3a:	0008      	movs	r0, r1
    6f3c:	0015      	movs	r5, r2
    6f3e:	f3ef 8105 	mrs	r1, IPSR
    6f42:	2900      	cmp	r1, #0
    6f44:	d109      	bne.n	6f5a <osMessageGet+0x26>
    6f46:	0011      	movs	r1, r2
    6f48:	4f11      	ldr	r7, [pc, #68]	; (6f90 <osMessageGet+0x5c>)
    6f4a:	46bc      	mov	ip, r7
    6f4c:	df00      	svc	0
    6f4e:	6020      	str	r0, [r4, #0]
    6f50:	6061      	str	r1, [r4, #4]
    6f52:	60a2      	str	r2, [r4, #8]
    6f54:	0020      	movs	r0, r4
    6f56:	b005      	add	sp, #20
    6f58:	bdf0      	pop	{r4, r5, r6, r7, pc}
    6f5a:	2800      	cmp	r0, #0
    6f5c:	d004      	beq.n	6f68 <osMessageGet+0x34>
    6f5e:	2a00      	cmp	r2, #0
    6f60:	d102      	bne.n	6f68 <osMessageGet+0x34>
    6f62:	7803      	ldrb	r3, [r0, #0]
    6f64:	2b01      	cmp	r3, #1
    6f66:	d002      	beq.n	6f6e <osMessageGet+0x3a>
    6f68:	2380      	movs	r3, #128	; 0x80
    6f6a:	6023      	str	r3, [r4, #0]
    6f6c:	e7f2      	b.n	6f54 <osMessageGet+0x20>
    6f6e:	a902      	add	r1, sp, #8
    6f70:	ae01      	add	r6, sp, #4
    6f72:	f000 fdb1 	bl	7ad8 <isr_mbx_receive>
    6f76:	2804      	cmp	r0, #4
    6f78:	d004      	beq.n	6f84 <osMessageGet+0x50>
    6f7a:	0023      	movs	r3, r4
    6f7c:	9501      	str	r5, [sp, #4]
    6f7e:	ce07      	ldmia	r6!, {r0, r1, r2}
    6f80:	c307      	stmia	r3!, {r0, r1, r2}
    6f82:	e7e7      	b.n	6f54 <osMessageGet+0x20>
    6f84:	2310      	movs	r3, #16
    6f86:	9301      	str	r3, [sp, #4]
    6f88:	0023      	movs	r3, r4
    6f8a:	ce07      	ldmia	r6!, {r0, r1, r2}
    6f8c:	c307      	stmia	r3!, {r0, r1, r2}
    6f8e:	e7e1      	b.n	6f54 <osMessageGet+0x20>
    6f90:	00006d8d 	.word	0x00006d8d

00006f94 <svcMailCreate>:
    6f94:	b570      	push	{r4, r5, r6, lr}
    6f96:	1e04      	subs	r4, r0, #0
    6f98:	d021      	beq.n	6fde <svcMailCreate+0x4a>
    6f9a:	6801      	ldr	r1, [r0, #0]
    6f9c:	2900      	cmp	r1, #0
    6f9e:	d01e      	beq.n	6fde <svcMailCreate+0x4a>
    6fa0:	6842      	ldr	r2, [r0, #4]
    6fa2:	2a00      	cmp	r2, #0
    6fa4:	d01b      	beq.n	6fde <svcMailCreate+0x4a>
    6fa6:	6883      	ldr	r3, [r0, #8]
    6fa8:	2b00      	cmp	r3, #0
    6faa:	d018      	beq.n	6fde <svcMailCreate+0x4a>
    6fac:	6858      	ldr	r0, [r3, #4]
    6fae:	681d      	ldr	r5, [r3, #0]
    6fb0:	2800      	cmp	r0, #0
    6fb2:	d014      	beq.n	6fde <svcMailCreate+0x4a>
    6fb4:	2d00      	cmp	r5, #0
    6fb6:	d012      	beq.n	6fde <svcMailCreate+0x4a>
    6fb8:	782b      	ldrb	r3, [r5, #0]
    6fba:	2b00      	cmp	r3, #0
    6fbc:	d10f      	bne.n	6fde <svcMailCreate+0x4a>
    6fbe:	3303      	adds	r3, #3
    6fc0:	3203      	adds	r2, #3
    6fc2:	439a      	bics	r2, r3
    6fc4:	4351      	muls	r1, r2
    6fc6:	310c      	adds	r1, #12
    6fc8:	f000 fa6a 	bl	74a0 <_init_box>
    6fcc:	6823      	ldr	r3, [r4, #0]
    6fce:	0028      	movs	r0, r5
    6fd0:	1d19      	adds	r1, r3, #4
    6fd2:	0089      	lsls	r1, r1, #2
    6fd4:	b289      	uxth	r1, r1
    6fd6:	f000 fcbf 	bl	7958 <rt_mbx_init>
    6fda:	68a0      	ldr	r0, [r4, #8]
    6fdc:	bd70      	pop	{r4, r5, r6, pc}
    6fde:	2000      	movs	r0, #0
    6fe0:	e7fc      	b.n	6fdc <svcMailCreate+0x48>
    6fe2:	46c0      	nop			; (mov r8, r8)

00006fe4 <sysMailAlloc>:
    6fe4:	b530      	push	{r4, r5, lr}
    6fe6:	000d      	movs	r5, r1
    6fe8:	b083      	sub	sp, #12
    6fea:	2800      	cmp	r0, #0
    6fec:	d035      	beq.n	705a <sysMailAlloc+0x76>
    6fee:	6804      	ldr	r4, [r0, #0]
    6ff0:	6840      	ldr	r0, [r0, #4]
    6ff2:	2800      	cmp	r0, #0
    6ff4:	d031      	beq.n	705a <sysMailAlloc+0x76>
    6ff6:	2c00      	cmp	r4, #0
    6ff8:	d02f      	beq.n	705a <sysMailAlloc+0x76>
    6ffa:	2a00      	cmp	r2, #0
    6ffc:	d007      	beq.n	700e <sysMailAlloc+0x2a>
    6ffe:	2900      	cmp	r1, #0
    7000:	d12b      	bne.n	705a <sysMailAlloc+0x76>
    7002:	f000 fa79 	bl	74f8 <rt_alloc_box>
    7006:	2800      	cmp	r0, #0
    7008:	d027      	beq.n	705a <sysMailAlloc+0x76>
    700a:	b003      	add	sp, #12
    700c:	bd30      	pop	{r4, r5, pc}
    700e:	f000 fa73 	bl	74f8 <rt_alloc_box>
    7012:	2800      	cmp	r0, #0
    7014:	d1f9      	bne.n	700a <sysMailAlloc+0x26>
    7016:	2d00      	cmp	r5, #0
    7018:	d01f      	beq.n	705a <sysMailAlloc+0x76>
    701a:	6863      	ldr	r3, [r4, #4]
    701c:	2b00      	cmp	r3, #0
    701e:	d020      	beq.n	7062 <sysMailAlloc+0x7e>
    7020:	4b16      	ldr	r3, [pc, #88]	; (707c <sysMailAlloc+0x98>)
    7022:	0020      	movs	r0, r4
    7024:	6819      	ldr	r1, [r3, #0]
    7026:	f000 fdf1 	bl	7c0c <rt_put_prio>
    702a:	1c6b      	adds	r3, r5, #1
    702c:	d021      	beq.n	7072 <sysMailAlloc+0x8e>
    702e:	4b14      	ldr	r3, [pc, #80]	; (7080 <sysMailAlloc+0x9c>)
    7030:	429d      	cmp	r5, r3
    7032:	d814      	bhi.n	705e <sysMailAlloc+0x7a>
    7034:	20fa      	movs	r0, #250	; 0xfa
    7036:	4b13      	ldr	r3, [pc, #76]	; (7084 <sysMailAlloc+0xa0>)
    7038:	0080      	lsls	r0, r0, #2
    703a:	4368      	muls	r0, r5
    703c:	681b      	ldr	r3, [r3, #0]
    703e:	9301      	str	r3, [sp, #4]
    7040:	3b01      	subs	r3, #1
    7042:	18c0      	adds	r0, r0, r3
    7044:	9901      	ldr	r1, [sp, #4]
    7046:	f7fd fc29 	bl	489c <__aeabi_uidiv>
    704a:	4b0f      	ldr	r3, [pc, #60]	; (7088 <sysMailAlloc+0xa4>)
    704c:	0002      	movs	r2, r0
    704e:	0018      	movs	r0, r3
    7050:	429a      	cmp	r2, r3
    7052:	d910      	bls.n	7076 <sysMailAlloc+0x92>
    7054:	2108      	movs	r1, #8
    7056:	f001 fa13 	bl	8480 <rt_block>
    705a:	2000      	movs	r0, #0
    705c:	e7d5      	b.n	700a <sysMailAlloc+0x26>
    705e:	480a      	ldr	r0, [pc, #40]	; (7088 <sysMailAlloc+0xa4>)
    7060:	e7f8      	b.n	7054 <sysMailAlloc+0x70>
    7062:	4a06      	ldr	r2, [pc, #24]	; (707c <sysMailAlloc+0x98>)
    7064:	6812      	ldr	r2, [r2, #0]
    7066:	6062      	str	r2, [r4, #4]
    7068:	6053      	str	r3, [r2, #4]
    706a:	2303      	movs	r3, #3
    706c:	6094      	str	r4, [r2, #8]
    706e:	7063      	strb	r3, [r4, #1]
    7070:	e7db      	b.n	702a <sysMailAlloc+0x46>
    7072:	4806      	ldr	r0, [pc, #24]	; (708c <sysMailAlloc+0xa8>)
    7074:	e7ee      	b.n	7054 <sysMailAlloc+0x70>
    7076:	b290      	uxth	r0, r2
    7078:	e7ec      	b.n	7054 <sysMailAlloc+0x70>
    707a:	46c0      	nop			; (mov r8, r8)
    707c:	200060b8 	.word	0x200060b8
    7080:	003d0900 	.word	0x003d0900
    7084:	00008b28 	.word	0x00008b28
    7088:	0000fffe 	.word	0x0000fffe
    708c:	0000ffff 	.word	0x0000ffff

00007090 <sysMailFree>:
    7090:	b570      	push	{r4, r5, r6, lr}
    7092:	0016      	movs	r6, r2
    7094:	2800      	cmp	r0, #0
    7096:	d00e      	beq.n	70b6 <sysMailFree+0x26>
    7098:	6804      	ldr	r4, [r0, #0]
    709a:	2c00      	cmp	r4, #0
    709c:	d00b      	beq.n	70b6 <sysMailFree+0x26>
    709e:	6845      	ldr	r5, [r0, #4]
    70a0:	2080      	movs	r0, #128	; 0x80
    70a2:	2d00      	cmp	r5, #0
    70a4:	d006      	beq.n	70b4 <sysMailFree+0x24>
    70a6:	0028      	movs	r0, r5
    70a8:	f000 fa46 	bl	7538 <rt_free_box>
    70ac:	0003      	movs	r3, r0
    70ae:	2086      	movs	r0, #134	; 0x86
    70b0:	2b00      	cmp	r3, #0
    70b2:	d002      	beq.n	70ba <sysMailFree+0x2a>
    70b4:	bd70      	pop	{r4, r5, r6, pc}
    70b6:	2080      	movs	r0, #128	; 0x80
    70b8:	e7fc      	b.n	70b4 <sysMailFree+0x24>
    70ba:	6863      	ldr	r3, [r4, #4]
    70bc:	2b00      	cmp	r3, #0
    70be:	d002      	beq.n	70c6 <sysMailFree+0x36>
    70c0:	7863      	ldrb	r3, [r4, #1]
    70c2:	2b03      	cmp	r3, #3
    70c4:	d001      	beq.n	70ca <sysMailFree+0x3a>
    70c6:	2000      	movs	r0, #0
    70c8:	e7f4      	b.n	70b4 <sysMailFree+0x24>
    70ca:	2e00      	cmp	r6, #0
    70cc:	d113      	bne.n	70f6 <sysMailFree+0x66>
    70ce:	0028      	movs	r0, r5
    70d0:	f000 fa12 	bl	74f8 <rt_alloc_box>
    70d4:	1e05      	subs	r5, r0, #0
    70d6:	d0f6      	beq.n	70c6 <sysMailFree+0x36>
    70d8:	0020      	movs	r0, r4
    70da:	f000 fdbd 	bl	7c58 <rt_get_first>
    70de:	0004      	movs	r4, r0
    70e0:	0029      	movs	r1, r5
    70e2:	f000 f987 	bl	73f4 <rt_ret_val>
    70e6:	0020      	movs	r0, r4
    70e8:	f000 feee 	bl	7ec8 <rt_rmv_dly>
    70ec:	0020      	movs	r0, r4
    70ee:	f001 f9a1 	bl	8434 <rt_dispatch>
    70f2:	2000      	movs	r0, #0
    70f4:	e7de      	b.n	70b4 <sysMailFree+0x24>
    70f6:	0020      	movs	r0, r4
    70f8:	0029      	movs	r1, r5
    70fa:	f000 fefb 	bl	7ef4 <rt_psq_enq>
    70fe:	f001 f8dd 	bl	82bc <rt_psh_req>
    7102:	2000      	movs	r0, #0
    7104:	e7d6      	b.n	70b4 <sysMailFree+0x24>
    7106:	46c0      	nop			; (mov r8, r8)

00007108 <osMailCreate>:
    7108:	b5b0      	push	{r4, r5, r7, lr}
    710a:	0004      	movs	r4, r0
    710c:	f3ef 8005 	mrs	r0, IPSR
    7110:	2800      	cmp	r0, #0
    7112:	d130      	bne.n	7176 <osMailCreate+0x6e>
    7114:	f3ef 8014 	mrs	r0, CONTROL
    7118:	07c0      	lsls	r0, r0, #31
    711a:	d504      	bpl.n	7126 <osMailCreate+0x1e>
    711c:	0020      	movs	r0, r4
    711e:	4f18      	ldr	r7, [pc, #96]	; (7180 <osMailCreate+0x78>)
    7120:	46bc      	mov	ip, r7
    7122:	df00      	svc	0
    7124:	bdb0      	pop	{r4, r5, r7, pc}
    7126:	4815      	ldr	r0, [pc, #84]	; (717c <osMailCreate+0x74>)
    7128:	7800      	ldrb	r0, [r0, #0]
    712a:	2800      	cmp	r0, #0
    712c:	d1f6      	bne.n	711c <osMailCreate+0x14>
    712e:	2c00      	cmp	r4, #0
    7130:	d021      	beq.n	7176 <osMailCreate+0x6e>
    7132:	6821      	ldr	r1, [r4, #0]
    7134:	2900      	cmp	r1, #0
    7136:	d01e      	beq.n	7176 <osMailCreate+0x6e>
    7138:	6862      	ldr	r2, [r4, #4]
    713a:	2a00      	cmp	r2, #0
    713c:	d01b      	beq.n	7176 <osMailCreate+0x6e>
    713e:	68a3      	ldr	r3, [r4, #8]
    7140:	2b00      	cmp	r3, #0
    7142:	d018      	beq.n	7176 <osMailCreate+0x6e>
    7144:	6858      	ldr	r0, [r3, #4]
    7146:	681d      	ldr	r5, [r3, #0]
    7148:	2800      	cmp	r0, #0
    714a:	d014      	beq.n	7176 <osMailCreate+0x6e>
    714c:	2d00      	cmp	r5, #0
    714e:	d012      	beq.n	7176 <osMailCreate+0x6e>
    7150:	782b      	ldrb	r3, [r5, #0]
    7152:	2b00      	cmp	r3, #0
    7154:	d10f      	bne.n	7176 <osMailCreate+0x6e>
    7156:	3303      	adds	r3, #3
    7158:	3203      	adds	r2, #3
    715a:	439a      	bics	r2, r3
    715c:	4351      	muls	r1, r2
    715e:	310c      	adds	r1, #12
    7160:	f000 f99e 	bl	74a0 <_init_box>
    7164:	6823      	ldr	r3, [r4, #0]
    7166:	0028      	movs	r0, r5
    7168:	1d19      	adds	r1, r3, #4
    716a:	0089      	lsls	r1, r1, #2
    716c:	b289      	uxth	r1, r1
    716e:	f000 fbf3 	bl	7958 <rt_mbx_init>
    7172:	68a0      	ldr	r0, [r4, #8]
    7174:	e7d6      	b.n	7124 <osMailCreate+0x1c>
    7176:	2000      	movs	r0, #0
    7178:	e7d4      	b.n	7124 <osMailCreate+0x1c>
    717a:	46c0      	nop			; (mov r8, r8)
    717c:	20006079 	.word	0x20006079
    7180:	00006f95 	.word	0x00006f95

00007184 <osMailAlloc>:
    7184:	b580      	push	{r7, lr}
    7186:	f3ef 8205 	mrs	r2, IPSR
    718a:	2a00      	cmp	r2, #0
    718c:	d104      	bne.n	7198 <osMailAlloc+0x14>
    718e:	2200      	movs	r2, #0
    7190:	4f09      	ldr	r7, [pc, #36]	; (71b8 <osMailAlloc+0x34>)
    7192:	46bc      	mov	ip, r7
    7194:	df00      	svc	0
    7196:	bd80      	pop	{r7, pc}
    7198:	2800      	cmp	r0, #0
    719a:	d00a      	beq.n	71b2 <osMailAlloc+0x2e>
    719c:	6803      	ldr	r3, [r0, #0]
    719e:	6840      	ldr	r0, [r0, #4]
    71a0:	2800      	cmp	r0, #0
    71a2:	d006      	beq.n	71b2 <osMailAlloc+0x2e>
    71a4:	2b00      	cmp	r3, #0
    71a6:	d004      	beq.n	71b2 <osMailAlloc+0x2e>
    71a8:	2900      	cmp	r1, #0
    71aa:	d102      	bne.n	71b2 <osMailAlloc+0x2e>
    71ac:	f000 f9a4 	bl	74f8 <rt_alloc_box>
    71b0:	e7f1      	b.n	7196 <osMailAlloc+0x12>
    71b2:	2000      	movs	r0, #0
    71b4:	e7ef      	b.n	7196 <osMailAlloc+0x12>
    71b6:	0000      	.short	0x0000
    71b8:	00006fe5 	.word	0x00006fe5

000071bc <osMailCAlloc>:
    71bc:	b5b0      	push	{r4, r5, r7, lr}
    71be:	0004      	movs	r4, r0
    71c0:	f3ef 8205 	mrs	r2, IPSR
    71c4:	2a00      	cmp	r2, #0
    71c6:	d112      	bne.n	71ee <osMailCAlloc+0x32>
    71c8:	2200      	movs	r2, #0
    71ca:	4f13      	ldr	r7, [pc, #76]	; (7218 <osMailCAlloc+0x5c>)
    71cc:	46bc      	mov	ip, r7
    71ce:	df00      	svc	0
    71d0:	6863      	ldr	r3, [r4, #4]
    71d2:	2b00      	cmp	r3, #0
    71d4:	d00a      	beq.n	71ec <osMailCAlloc+0x30>
    71d6:	2800      	cmp	r0, #0
    71d8:	d01b      	beq.n	7212 <osMailCAlloc+0x56>
    71da:	689b      	ldr	r3, [r3, #8]
    71dc:	2b00      	cmp	r3, #0
    71de:	d005      	beq.n	71ec <osMailCAlloc+0x30>
    71e0:	0002      	movs	r2, r0
    71e2:	2100      	movs	r1, #0
    71e4:	3b04      	subs	r3, #4
    71e6:	c202      	stmia	r2!, {r1}
    71e8:	2b00      	cmp	r3, #0
    71ea:	d1fb      	bne.n	71e4 <osMailCAlloc+0x28>
    71ec:	bdb0      	pop	{r4, r5, r7, pc}
    71ee:	2800      	cmp	r0, #0
    71f0:	d00f      	beq.n	7212 <osMailCAlloc+0x56>
    71f2:	6803      	ldr	r3, [r0, #0]
    71f4:	6840      	ldr	r0, [r0, #4]
    71f6:	2800      	cmp	r0, #0
    71f8:	d00b      	beq.n	7212 <osMailCAlloc+0x56>
    71fa:	2b00      	cmp	r3, #0
    71fc:	d009      	beq.n	7212 <osMailCAlloc+0x56>
    71fe:	2900      	cmp	r1, #0
    7200:	d107      	bne.n	7212 <osMailCAlloc+0x56>
    7202:	f000 f979 	bl	74f8 <rt_alloc_box>
    7206:	2800      	cmp	r0, #0
    7208:	d003      	beq.n	7212 <osMailCAlloc+0x56>
    720a:	6863      	ldr	r3, [r4, #4]
    720c:	2b00      	cmp	r3, #0
    720e:	d1e4      	bne.n	71da <osMailCAlloc+0x1e>
    7210:	e7ec      	b.n	71ec <osMailCAlloc+0x30>
    7212:	2000      	movs	r0, #0
    7214:	e7ea      	b.n	71ec <osMailCAlloc+0x30>
    7216:	0000      	.short	0x0000
    7218:	00006fe5 	.word	0x00006fe5

0000721c <osMailFree>:
    721c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    721e:	f3ef 8205 	mrs	r2, IPSR
    7222:	2a00      	cmp	r2, #0
    7224:	d106      	bne.n	7234 <osMailFree+0x18>
    7226:	2200      	movs	r2, #0
    7228:	4f13      	ldr	r7, [pc, #76]	; (7278 <osMailFree+0x5c>)
    722a:	46bc      	mov	ip, r7
    722c:	df00      	svc	0
    722e:	0004      	movs	r4, r0
    7230:	0020      	movs	r0, r4
    7232:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7234:	2800      	cmp	r0, #0
    7236:	d01a      	beq.n	726e <osMailFree+0x52>
    7238:	6805      	ldr	r5, [r0, #0]
    723a:	2d00      	cmp	r5, #0
    723c:	d017      	beq.n	726e <osMailFree+0x52>
    723e:	6846      	ldr	r6, [r0, #4]
    7240:	2480      	movs	r4, #128	; 0x80
    7242:	2e00      	cmp	r6, #0
    7244:	d0f4      	beq.n	7230 <osMailFree+0x14>
    7246:	0030      	movs	r0, r6
    7248:	f000 f976 	bl	7538 <rt_free_box>
    724c:	3406      	adds	r4, #6
    724e:	2800      	cmp	r0, #0
    7250:	d1ee      	bne.n	7230 <osMailFree+0x14>
    7252:	686b      	ldr	r3, [r5, #4]
    7254:	2b00      	cmp	r3, #0
    7256:	d00c      	beq.n	7272 <osMailFree+0x56>
    7258:	786b      	ldrb	r3, [r5, #1]
    725a:	2400      	movs	r4, #0
    725c:	2b03      	cmp	r3, #3
    725e:	d1e7      	bne.n	7230 <osMailFree+0x14>
    7260:	0031      	movs	r1, r6
    7262:	0028      	movs	r0, r5
    7264:	f000 fe46 	bl	7ef4 <rt_psq_enq>
    7268:	f001 f828 	bl	82bc <rt_psh_req>
    726c:	e7e0      	b.n	7230 <osMailFree+0x14>
    726e:	2480      	movs	r4, #128	; 0x80
    7270:	e7de      	b.n	7230 <osMailFree+0x14>
    7272:	2400      	movs	r4, #0
    7274:	e7dc      	b.n	7230 <osMailFree+0x14>
    7276:	0000      	.short	0x0000
    7278:	00007091 	.word	0x00007091

0000727c <osMailPut>:
    727c:	b5b0      	push	{r4, r5, r7, lr}
    727e:	0002      	movs	r2, r0
    7280:	000c      	movs	r4, r1
    7282:	2800      	cmp	r0, #0
    7284:	d00e      	beq.n	72a4 <osMailPut+0x28>
    7286:	2086      	movs	r0, #134	; 0x86
    7288:	2900      	cmp	r1, #0
    728a:	d00a      	beq.n	72a2 <osMailPut+0x26>
    728c:	6815      	ldr	r5, [r2, #0]
    728e:	f3ef 8205 	mrs	r2, IPSR
    7292:	2a00      	cmp	r2, #0
    7294:	d008      	beq.n	72a8 <osMailPut+0x2c>
    7296:	2d00      	cmp	r5, #0
    7298:	d004      	beq.n	72a4 <osMailPut+0x28>
    729a:	782b      	ldrb	r3, [r5, #0]
    729c:	3806      	subs	r0, #6
    729e:	2b01      	cmp	r3, #1
    72a0:	d008      	beq.n	72b4 <osMailPut+0x38>
    72a2:	bdb0      	pop	{r4, r5, r7, pc}
    72a4:	2080      	movs	r0, #128	; 0x80
    72a6:	e7fc      	b.n	72a2 <osMailPut+0x26>
    72a8:	0028      	movs	r0, r5
    72aa:	2200      	movs	r2, #0
    72ac:	4f08      	ldr	r7, [pc, #32]	; (72d0 <osMailPut+0x54>)
    72ae:	46bc      	mov	ip, r7
    72b0:	df00      	svc	0
    72b2:	e7f6      	b.n	72a2 <osMailPut+0x26>
    72b4:	0028      	movs	r0, r5
    72b6:	f000 fc05 	bl	7ac4 <rt_mbx_check>
    72ba:	0003      	movs	r3, r0
    72bc:	2081      	movs	r0, #129	; 0x81
    72be:	2b00      	cmp	r3, #0
    72c0:	d0ef      	beq.n	72a2 <osMailPut+0x26>
    72c2:	0028      	movs	r0, r5
    72c4:	0021      	movs	r1, r4
    72c6:	f000 fc01 	bl	7acc <isr_mbx_send>
    72ca:	2000      	movs	r0, #0
    72cc:	e7e9      	b.n	72a2 <osMailPut+0x26>
    72ce:	0000      	.short	0x0000
    72d0:	00006d0d 	.word	0x00006d0d

000072d4 <osMailGet>:
    72d4:	b5b0      	push	{r4, r5, r7, lr}
    72d6:	0004      	movs	r4, r0
    72d8:	b084      	sub	sp, #16
    72da:	2900      	cmp	r1, #0
    72dc:	d012      	beq.n	7304 <osMailGet+0x30>
    72de:	6808      	ldr	r0, [r1, #0]
    72e0:	f3ef 8105 	mrs	r1, IPSR
    72e4:	2900      	cmp	r1, #0
    72e6:	d113      	bne.n	7310 <osMailGet+0x3c>
    72e8:	0011      	movs	r1, r2
    72ea:	4f0d      	ldr	r7, [pc, #52]	; (7320 <osMailGet+0x4c>)
    72ec:	46bc      	mov	ip, r7
    72ee:	df00      	svc	0
    72f0:	2810      	cmp	r0, #16
    72f2:	d005      	beq.n	7300 <osMailGet+0x2c>
    72f4:	6020      	str	r0, [r4, #0]
    72f6:	6061      	str	r1, [r4, #4]
    72f8:	60a2      	str	r2, [r4, #8]
    72fa:	0020      	movs	r0, r4
    72fc:	b004      	add	sp, #16
    72fe:	bdb0      	pop	{r4, r5, r7, pc}
    7300:	3010      	adds	r0, #16
    7302:	e7f7      	b.n	72f4 <osMailGet+0x20>
    7304:	2380      	movs	r3, #128	; 0x80
    7306:	6003      	str	r3, [r0, #0]
    7308:	2300      	movs	r3, #0
    730a:	6043      	str	r3, [r0, #4]
    730c:	6083      	str	r3, [r0, #8]
    730e:	e7f4      	b.n	72fa <osMailGet+0x26>
    7310:	0001      	movs	r1, r0
    7312:	a801      	add	r0, sp, #4
    7314:	f7ff fd9c 	bl	6e50 <isrMessageGet>
    7318:	9801      	ldr	r0, [sp, #4]
    731a:	9902      	ldr	r1, [sp, #8]
    731c:	9a03      	ldr	r2, [sp, #12]
    731e:	e7e7      	b.n	72f0 <osMailGet+0x1c>
    7320:	00006d8d 	.word	0x00006d8d

00007324 <os_suspend>:
    7324:	b580      	push	{r7, lr}
    7326:	4f02      	ldr	r7, [pc, #8]	; (7330 <os_suspend+0xc>)
    7328:	46bc      	mov	ip, r7
    732a:	df00      	svc	0
    732c:	bd80      	pop	{r7, pc}
    732e:	0000      	.short	0x0000
    7330:	0000806d 	.word	0x0000806d

00007334 <os_resume>:
    7334:	b580      	push	{r7, lr}
    7336:	4f02      	ldr	r7, [pc, #8]	; (7340 <os_resume+0xc>)
    7338:	46bc      	mov	ip, r7
    733a:	df00      	svc	0
    733c:	bd80      	pop	{r7, pc}
    733e:	0000      	.short	0x0000
    7340:	000080fd 	.word	0x000080fd

00007344 <rt_init_stack>:
    7344:	b5f0      	push	{r4, r5, r6, r7, lr}
    7346:	464e      	mov	r6, r9
    7348:	4645      	mov	r5, r8
    734a:	4657      	mov	r7, sl
    734c:	b4e0      	push	{r5, r6, r7}
    734e:	4b26      	ldr	r3, [pc, #152]	; (73e8 <rt_init_stack+0xa4>)
    7350:	8cc4      	ldrh	r4, [r0, #38]	; 0x26
    7352:	b082      	sub	sp, #8
    7354:	4680      	mov	r8, r0
    7356:	4689      	mov	r9, r1
    7358:	08a4      	lsrs	r4, r4, #2
    735a:	681b      	ldr	r3, [r3, #0]
    735c:	d104      	bne.n	7368 <rt_init_stack+0x24>
    735e:	9301      	str	r3, [sp, #4]
    7360:	466b      	mov	r3, sp
    7362:	889c      	ldrh	r4, [r3, #4]
    7364:	9b01      	ldr	r3, [sp, #4]
    7366:	08a4      	lsrs	r4, r4, #2
    7368:	469a      	mov	sl, r3
    736a:	4643      	mov	r3, r8
    736c:	6adf      	ldr	r7, [r3, #44]	; 0x2c
    736e:	00a5      	lsls	r5, r4, #2
    7370:	197d      	adds	r5, r7, r5
    7372:	076b      	lsls	r3, r5, #29
    7374:	d500      	bpl.n	7378 <rt_init_stack+0x34>
    7376:	3d04      	subs	r5, #4
    7378:	2280      	movs	r2, #128	; 0x80
    737a:	1f2b      	subs	r3, r5, #4
    737c:	002e      	movs	r6, r5
    737e:	0452      	lsls	r2, r2, #17
    7380:	601a      	str	r2, [r3, #0]
    7382:	464a      	mov	r2, r9
    7384:	3b04      	subs	r3, #4
    7386:	3e40      	subs	r6, #64	; 0x40
    7388:	601a      	str	r2, [r3, #0]
    738a:	2100      	movs	r1, #0
    738c:	2238      	movs	r2, #56	; 0x38
    738e:	0030      	movs	r0, r6
    7390:	f7fd fe30 	bl	4ff4 <memset>
    7394:	4643      	mov	r3, r8
    7396:	69db      	ldr	r3, [r3, #28]
    7398:	3d20      	subs	r5, #32
    739a:	602b      	str	r3, [r5, #0]
    739c:	464a      	mov	r2, r9
    739e:	4643      	mov	r3, r8
    73a0:	629e      	str	r6, [r3, #40]	; 0x28
    73a2:	631a      	str	r2, [r3, #48]	; 0x30
    73a4:	4653      	mov	r3, sl
    73a6:	00db      	lsls	r3, r3, #3
    73a8:	d516      	bpl.n	73d8 <rt_init_stack+0x94>
    73aa:	2c11      	cmp	r4, #17
    73ac:	d914      	bls.n	73d8 <rt_init_stack+0x94>
    73ae:	3c10      	subs	r4, #16
    73b0:	0864      	lsrs	r4, r4, #1
    73b2:	1e62      	subs	r2, r4, #1
    73b4:	2a00      	cmp	r2, #0
    73b6:	d00a      	beq.n	73ce <rt_init_stack+0x8a>
    73b8:	0033      	movs	r3, r6
    73ba:	490c      	ldr	r1, [pc, #48]	; (73ec <rt_init_stack+0xa8>)
    73bc:	3b08      	subs	r3, #8
    73be:	3a01      	subs	r2, #1
    73c0:	6059      	str	r1, [r3, #4]
    73c2:	6019      	str	r1, [r3, #0]
    73c4:	2a00      	cmp	r2, #0
    73c6:	d1f9      	bne.n	73bc <rt_init_stack+0x78>
    73c8:	00e4      	lsls	r4, r4, #3
    73ca:	1b36      	subs	r6, r6, r4
    73cc:	3608      	adds	r6, #8
    73ce:	3e04      	subs	r6, #4
    73d0:	42b7      	cmp	r7, r6
    73d2:	d201      	bcs.n	73d8 <rt_init_stack+0x94>
    73d4:	4b05      	ldr	r3, [pc, #20]	; (73ec <rt_init_stack+0xa8>)
    73d6:	6033      	str	r3, [r6, #0]
    73d8:	4b05      	ldr	r3, [pc, #20]	; (73f0 <rt_init_stack+0xac>)
    73da:	603b      	str	r3, [r7, #0]
    73dc:	b002      	add	sp, #8
    73de:	bc1c      	pop	{r2, r3, r4}
    73e0:	4690      	mov	r8, r2
    73e2:	4699      	mov	r9, r3
    73e4:	46a2      	mov	sl, r4
    73e6:	bdf0      	pop	{r4, r5, r6, r7, pc}
    73e8:	00008b08 	.word	0x00008b08
    73ec:	cccccccc 	.word	0xcccccccc
    73f0:	e25a2ea5 	.word	0xe25a2ea5

000073f4 <rt_ret_val>:
    73f4:	6a83      	ldr	r3, [r0, #40]	; 0x28
    73f6:	6219      	str	r1, [r3, #32]
    73f8:	4770      	bx	lr
    73fa:	46c0      	nop			; (mov r8, r8)

000073fc <rt_ret_val2>:
    73fc:	6a83      	ldr	r3, [r0, #40]	; 0x28
    73fe:	6219      	str	r1, [r3, #32]
    7400:	625a      	str	r2, [r3, #36]	; 0x24
    7402:	4770      	bx	lr

00007404 <rt_init_mem>:
    7404:	0003      	movs	r3, r0
    7406:	2001      	movs	r0, #1
    7408:	2b00      	cmp	r3, #0
    740a:	d008      	beq.n	741e <rt_init_mem+0x1a>
    740c:	2907      	cmp	r1, #7
    740e:	d906      	bls.n	741e <rt_init_mem+0x1a>
    7410:	2200      	movs	r2, #0
    7412:	2000      	movs	r0, #0
    7414:	3904      	subs	r1, #4
    7416:	1859      	adds	r1, r3, r1
    7418:	6019      	str	r1, [r3, #0]
    741a:	600a      	str	r2, [r1, #0]
    741c:	605a      	str	r2, [r3, #4]
    741e:	4770      	bx	lr

00007420 <rt_alloc_mem>:
    7420:	b510      	push	{r4, lr}
    7422:	2800      	cmp	r0, #0
    7424:	d018      	beq.n	7458 <rt_alloc_mem+0x38>
    7426:	2900      	cmp	r1, #0
    7428:	d016      	beq.n	7458 <rt_alloc_mem+0x38>
    742a:	2303      	movs	r3, #3
    742c:	310b      	adds	r1, #11
    742e:	4399      	bics	r1, r3
    7430:	6802      	ldr	r2, [r0, #0]
    7432:	e003      	b.n	743c <rt_alloc_mem+0x1c>
    7434:	0010      	movs	r0, r2
    7436:	6812      	ldr	r2, [r2, #0]
    7438:	2a00      	cmp	r2, #0
    743a:	d00d      	beq.n	7458 <rt_alloc_mem+0x38>
    743c:	6844      	ldr	r4, [r0, #4]
    743e:	1a13      	subs	r3, r2, r0
    7440:	1b1b      	subs	r3, r3, r4
    7442:	4299      	cmp	r1, r3
    7444:	d8f6      	bhi.n	7434 <rt_alloc_mem+0x14>
    7446:	2c00      	cmp	r4, #0
    7448:	d008      	beq.n	745c <rt_alloc_mem+0x3c>
    744a:	1904      	adds	r4, r0, r4
    744c:	6022      	str	r2, [r4, #0]
    744e:	6061      	str	r1, [r4, #4]
    7450:	6004      	str	r4, [r0, #0]
    7452:	0020      	movs	r0, r4
    7454:	3008      	adds	r0, #8
    7456:	e000      	b.n	745a <rt_alloc_mem+0x3a>
    7458:	2000      	movs	r0, #0
    745a:	bd10      	pop	{r4, pc}
    745c:	6041      	str	r1, [r0, #4]
    745e:	3008      	adds	r0, #8
    7460:	e7fb      	b.n	745a <rt_alloc_mem+0x3a>
    7462:	46c0      	nop			; (mov r8, r8)

00007464 <rt_free_mem>:
    7464:	2800      	cmp	r0, #0
    7466:	d015      	beq.n	7494 <rt_free_mem+0x30>
    7468:	2900      	cmp	r1, #0
    746a:	d013      	beq.n	7494 <rt_free_mem+0x30>
    746c:	3908      	subs	r1, #8
    746e:	4288      	cmp	r0, r1
    7470:	d012      	beq.n	7498 <rt_free_mem+0x34>
    7472:	6803      	ldr	r3, [r0, #0]
    7474:	2b00      	cmp	r3, #0
    7476:	d105      	bne.n	7484 <rt_free_mem+0x20>
    7478:	e00c      	b.n	7494 <rt_free_mem+0x30>
    747a:	681a      	ldr	r2, [r3, #0]
    747c:	0018      	movs	r0, r3
    747e:	2a00      	cmp	r2, #0
    7480:	d008      	beq.n	7494 <rt_free_mem+0x30>
    7482:	0013      	movs	r3, r2
    7484:	4299      	cmp	r1, r3
    7486:	d1f8      	bne.n	747a <rt_free_mem+0x16>
    7488:	2800      	cmp	r0, #0
    748a:	d005      	beq.n	7498 <rt_free_mem+0x34>
    748c:	680b      	ldr	r3, [r1, #0]
    748e:	6003      	str	r3, [r0, #0]
    7490:	2000      	movs	r0, #0
    7492:	e000      	b.n	7496 <rt_free_mem+0x32>
    7494:	2001      	movs	r0, #1
    7496:	4770      	bx	lr
    7498:	2300      	movs	r3, #0
    749a:	2000      	movs	r0, #0
    749c:	604b      	str	r3, [r1, #4]
    749e:	e7fa      	b.n	7496 <rt_free_mem+0x32>

000074a0 <_init_box>:
    74a0:	b530      	push	{r4, r5, lr}
    74a2:	2a00      	cmp	r2, #0
    74a4:	db1e      	blt.n	74e4 <_init_box+0x44>
    74a6:	2303      	movs	r3, #3
    74a8:	3203      	adds	r2, #3
    74aa:	439a      	bics	r2, r3
    74ac:	3309      	adds	r3, #9
    74ae:	2401      	movs	r4, #1
    74b0:	2a00      	cmp	r2, #0
    74b2:	d015      	beq.n	74e0 <_init_box+0x40>
    74b4:	18d5      	adds	r5, r2, r3
    74b6:	428d      	cmp	r5, r1
    74b8:	d812      	bhi.n	74e0 <_init_box+0x40>
    74ba:	1841      	adds	r1, r0, r1
    74bc:	18c3      	adds	r3, r0, r3
    74be:	6041      	str	r1, [r0, #4]
    74c0:	6003      	str	r3, [r0, #0]
    74c2:	6082      	str	r2, [r0, #8]
    74c4:	1898      	adds	r0, r3, r2
    74c6:	1a89      	subs	r1, r1, r2
    74c8:	4281      	cmp	r1, r0
    74ca:	d201      	bcs.n	74d0 <_init_box+0x30>
    74cc:	e011      	b.n	74f2 <_init_box+0x52>
    74ce:	0020      	movs	r0, r4
    74d0:	1884      	adds	r4, r0, r2
    74d2:	6018      	str	r0, [r3, #0]
    74d4:	189b      	adds	r3, r3, r2
    74d6:	42a1      	cmp	r1, r4
    74d8:	d2f9      	bcs.n	74ce <_init_box+0x2e>
    74da:	2300      	movs	r3, #0
    74dc:	2400      	movs	r4, #0
    74de:	6003      	str	r3, [r0, #0]
    74e0:	0020      	movs	r0, r4
    74e2:	bd30      	pop	{r4, r5, pc}
    74e4:	2307      	movs	r3, #7
    74e6:	0052      	lsls	r2, r2, #1
    74e8:	0852      	lsrs	r2, r2, #1
    74ea:	3207      	adds	r2, #7
    74ec:	439a      	bics	r2, r3
    74ee:	3309      	adds	r3, #9
    74f0:	e7dd      	b.n	74ae <_init_box+0xe>
    74f2:	0018      	movs	r0, r3
    74f4:	e7f1      	b.n	74da <_init_box+0x3a>
    74f6:	46c0      	nop			; (mov r8, r8)

000074f8 <rt_alloc_box>:
    74f8:	f3ef 8310 	mrs	r3, PRIMASK
    74fc:	b672      	cpsid	i
    74fe:	2201      	movs	r2, #1
    7500:	4013      	ands	r3, r2
    7502:	6802      	ldr	r2, [r0, #0]
    7504:	2a00      	cmp	r2, #0
    7506:	d001      	beq.n	750c <rt_alloc_box+0x14>
    7508:	6811      	ldr	r1, [r2, #0]
    750a:	6001      	str	r1, [r0, #0]
    750c:	2b00      	cmp	r3, #0
    750e:	d100      	bne.n	7512 <rt_alloc_box+0x1a>
    7510:	b662      	cpsie	i
    7512:	0010      	movs	r0, r2
    7514:	4770      	bx	lr
    7516:	46c0      	nop			; (mov r8, r8)

00007518 <_calloc_box>:
    7518:	b510      	push	{r4, lr}
    751a:	0004      	movs	r4, r0
    751c:	f7fd fb49 	bl	4bb2 <_alloc_box>
    7520:	2800      	cmp	r0, #0
    7522:	d008      	beq.n	7536 <_calloc_box+0x1e>
    7524:	68a3      	ldr	r3, [r4, #8]
    7526:	2b00      	cmp	r3, #0
    7528:	d005      	beq.n	7536 <_calloc_box+0x1e>
    752a:	0002      	movs	r2, r0
    752c:	2100      	movs	r1, #0
    752e:	3b04      	subs	r3, #4
    7530:	c202      	stmia	r2!, {r1}
    7532:	2b00      	cmp	r3, #0
    7534:	d1fb      	bne.n	752e <_calloc_box+0x16>
    7536:	bd10      	pop	{r4, pc}

00007538 <rt_free_box>:
    7538:	0003      	movs	r3, r0
    753a:	2001      	movs	r0, #1
    753c:	4299      	cmp	r1, r3
    753e:	d30b      	bcc.n	7558 <rt_free_box+0x20>
    7540:	685a      	ldr	r2, [r3, #4]
    7542:	4291      	cmp	r1, r2
    7544:	d208      	bcs.n	7558 <rt_free_box+0x20>
    7546:	f3ef 8210 	mrs	r2, PRIMASK
    754a:	b672      	cpsid	i
    754c:	4010      	ands	r0, r2
    754e:	681a      	ldr	r2, [r3, #0]
    7550:	600a      	str	r2, [r1, #0]
    7552:	6019      	str	r1, [r3, #0]
    7554:	d101      	bne.n	755a <rt_free_box+0x22>
    7556:	b662      	cpsie	i
    7558:	4770      	bx	lr
    755a:	2000      	movs	r0, #0
    755c:	e7fc      	b.n	7558 <rt_free_box+0x20>
    755e:	46c0      	nop			; (mov r8, r8)

00007560 <rt_mut_init>:
    7560:	2303      	movs	r3, #3
    7562:	7003      	strb	r3, [r0, #0]
    7564:	2300      	movs	r3, #0
    7566:	8043      	strh	r3, [r0, #2]
    7568:	6043      	str	r3, [r0, #4]
    756a:	6083      	str	r3, [r0, #8]
    756c:	60c3      	str	r3, [r0, #12]
    756e:	4770      	bx	lr

00007570 <rt_mut_delete>:
    7570:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7572:	8843      	ldrh	r3, [r0, #2]
    7574:	0005      	movs	r5, r0
    7576:	2b00      	cmp	r3, #0
    7578:	d02c      	beq.n	75d4 <rt_mut_delete+0x64>
    757a:	6880      	ldr	r0, [r0, #8]
    757c:	6a04      	ldr	r4, [r0, #32]
    757e:	42a5      	cmp	r5, r4
    7580:	d05a      	beq.n	7638 <rt_mut_delete+0xc8>
    7582:	2c00      	cmp	r4, #0
    7584:	d01a      	beq.n	75bc <rt_mut_delete+0x4c>
    7586:	68e3      	ldr	r3, [r4, #12]
    7588:	429d      	cmp	r5, r3
    758a:	d050      	beq.n	762e <rt_mut_delete+0xbe>
    758c:	001a      	movs	r2, r3
    758e:	e003      	b.n	7598 <rt_mut_delete+0x28>
    7590:	68d1      	ldr	r1, [r2, #12]
    7592:	428d      	cmp	r5, r1
    7594:	d04c      	beq.n	7630 <rt_mut_delete+0xc0>
    7596:	000a      	movs	r2, r1
    7598:	2a00      	cmp	r2, #0
    759a:	d1f9      	bne.n	7590 <rt_mut_delete+0x20>
    759c:	2224      	movs	r2, #36	; 0x24
    759e:	5c81      	ldrb	r1, [r0, r2]
    75a0:	6862      	ldr	r2, [r4, #4]
    75a2:	2a00      	cmp	r2, #0
    75a4:	d005      	beq.n	75b2 <rt_mut_delete+0x42>
    75a6:	7892      	ldrb	r2, [r2, #2]
    75a8:	1c14      	adds	r4, r2, #0
    75aa:	428a      	cmp	r2, r1
    75ac:	d200      	bcs.n	75b0 <rt_mut_delete+0x40>
    75ae:	1c0c      	adds	r4, r1, #0
    75b0:	b2e1      	uxtb	r1, r4
    75b2:	2b00      	cmp	r3, #0
    75b4:	d004      	beq.n	75c0 <rt_mut_delete+0x50>
    75b6:	001c      	movs	r4, r3
    75b8:	68db      	ldr	r3, [r3, #12]
    75ba:	e7f1      	b.n	75a0 <rt_mut_delete+0x30>
    75bc:	2324      	movs	r3, #36	; 0x24
    75be:	5cc1      	ldrb	r1, [r0, r3]
    75c0:	7883      	ldrb	r3, [r0, #2]
    75c2:	428b      	cmp	r3, r1
    75c4:	d006      	beq.n	75d4 <rt_mut_delete+0x64>
    75c6:	4b20      	ldr	r3, [pc, #128]	; (7648 <rt_mut_delete+0xd8>)
    75c8:	7081      	strb	r1, [r0, #2]
    75ca:	681b      	ldr	r3, [r3, #0]
    75cc:	4298      	cmp	r0, r3
    75ce:	d001      	beq.n	75d4 <rt_mut_delete+0x64>
    75d0:	f000 fb72 	bl	7cb8 <rt_resort_prio>
    75d4:	686b      	ldr	r3, [r5, #4]
    75d6:	4e1d      	ldr	r6, [pc, #116]	; (764c <rt_mut_delete+0xdc>)
    75d8:	2b00      	cmp	r3, #0
    75da:	d012      	beq.n	7602 <rt_mut_delete+0x92>
    75dc:	2701      	movs	r7, #1
    75de:	0028      	movs	r0, r5
    75e0:	f000 fb3a 	bl	7c58 <rt_get_first>
    75e4:	0004      	movs	r4, r0
    75e6:	2100      	movs	r1, #0
    75e8:	f7ff ff04 	bl	73f4 <rt_ret_val>
    75ec:	0020      	movs	r0, r4
    75ee:	f000 fc6b 	bl	7ec8 <rt_rmv_dly>
    75f2:	7067      	strb	r7, [r4, #1]
    75f4:	0021      	movs	r1, r4
    75f6:	0030      	movs	r0, r6
    75f8:	f000 fb08 	bl	7c0c <rt_put_prio>
    75fc:	686b      	ldr	r3, [r5, #4]
    75fe:	2b00      	cmp	r3, #0
    7600:	d1ed      	bne.n	75de <rt_mut_delete+0x6e>
    7602:	6873      	ldr	r3, [r6, #4]
    7604:	2b00      	cmp	r3, #0
    7606:	d00e      	beq.n	7626 <rt_mut_delete+0xb6>
    7608:	4c0f      	ldr	r4, [pc, #60]	; (7648 <rt_mut_delete+0xd8>)
    760a:	789a      	ldrb	r2, [r3, #2]
    760c:	6821      	ldr	r1, [r4, #0]
    760e:	788b      	ldrb	r3, [r1, #2]
    7610:	429a      	cmp	r2, r3
    7612:	d908      	bls.n	7626 <rt_mut_delete+0xb6>
    7614:	0030      	movs	r0, r6
    7616:	f000 faf9 	bl	7c0c <rt_put_prio>
    761a:	2201      	movs	r2, #1
    761c:	6823      	ldr	r3, [r4, #0]
    761e:	2000      	movs	r0, #0
    7620:	705a      	strb	r2, [r3, #1]
    7622:	f000 ff07 	bl	8434 <rt_dispatch>
    7626:	2300      	movs	r3, #0
    7628:	2000      	movs	r0, #0
    762a:	702b      	strb	r3, [r5, #0]
    762c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    762e:	0022      	movs	r2, r4
    7630:	68eb      	ldr	r3, [r5, #12]
    7632:	60d3      	str	r3, [r2, #12]
    7634:	68e3      	ldr	r3, [r4, #12]
    7636:	e7b1      	b.n	759c <rt_mut_delete+0x2c>
    7638:	2324      	movs	r3, #36	; 0x24
    763a:	68ec      	ldr	r4, [r5, #12]
    763c:	6204      	str	r4, [r0, #32]
    763e:	5cc1      	ldrb	r1, [r0, r3]
    7640:	2c00      	cmp	r4, #0
    7642:	d0bd      	beq.n	75c0 <rt_mut_delete+0x50>
    7644:	68e3      	ldr	r3, [r4, #12]
    7646:	e7ab      	b.n	75a0 <rt_mut_delete+0x30>
    7648:	200060b8 	.word	0x200060b8
    764c:	20006084 	.word	0x20006084

00007650 <rt_mut_release>:
    7650:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    7652:	8843      	ldrh	r3, [r0, #2]
    7654:	0004      	movs	r4, r0
    7656:	20ff      	movs	r0, #255	; 0xff
    7658:	2b00      	cmp	r3, #0
    765a:	d100      	bne.n	765e <rt_mut_release+0xe>
    765c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    765e:	4d3c      	ldr	r5, [pc, #240]	; (7750 <rt_mut_release+0x100>)
    7660:	68a1      	ldr	r1, [r4, #8]
    7662:	682a      	ldr	r2, [r5, #0]
    7664:	4291      	cmp	r1, r2
    7666:	d1f9      	bne.n	765c <rt_mut_release+0xc>
    7668:	3b01      	subs	r3, #1
    766a:	b29b      	uxth	r3, r3
    766c:	8063      	strh	r3, [r4, #2]
    766e:	2b00      	cmp	r3, #0
    7670:	d140      	bne.n	76f4 <rt_mut_release+0xa4>
    7672:	6a0e      	ldr	r6, [r1, #32]
    7674:	42b4      	cmp	r4, r6
    7676:	d062      	beq.n	773e <rt_mut_release+0xee>
    7678:	2e00      	cmp	r6, #0
    767a:	d01a      	beq.n	76b2 <rt_mut_release+0x62>
    767c:	68f3      	ldr	r3, [r6, #12]
    767e:	429c      	cmp	r4, r3
    7680:	d03a      	beq.n	76f8 <rt_mut_release+0xa8>
    7682:	001a      	movs	r2, r3
    7684:	e003      	b.n	768e <rt_mut_release+0x3e>
    7686:	68d0      	ldr	r0, [r2, #12]
    7688:	4284      	cmp	r4, r0
    768a:	d036      	beq.n	76fa <rt_mut_release+0xaa>
    768c:	0002      	movs	r2, r0
    768e:	2a00      	cmp	r2, #0
    7690:	d1f9      	bne.n	7686 <rt_mut_release+0x36>
    7692:	2224      	movs	r2, #36	; 0x24
    7694:	5c8f      	ldrb	r7, [r1, r2]
    7696:	6872      	ldr	r2, [r6, #4]
    7698:	2a00      	cmp	r2, #0
    769a:	d005      	beq.n	76a8 <rt_mut_release+0x58>
    769c:	7892      	ldrb	r2, [r2, #2]
    769e:	1c10      	adds	r0, r2, #0
    76a0:	42ba      	cmp	r2, r7
    76a2:	d200      	bcs.n	76a6 <rt_mut_release+0x56>
    76a4:	1c38      	adds	r0, r7, #0
    76a6:	b2c7      	uxtb	r7, r0
    76a8:	2b00      	cmp	r3, #0
    76aa:	d004      	beq.n	76b6 <rt_mut_release+0x66>
    76ac:	001e      	movs	r6, r3
    76ae:	68db      	ldr	r3, [r3, #12]
    76b0:	e7f1      	b.n	7696 <rt_mut_release+0x46>
    76b2:	2324      	movs	r3, #36	; 0x24
    76b4:	5ccf      	ldrb	r7, [r1, r3]
    76b6:	708f      	strb	r7, [r1, #2]
    76b8:	6863      	ldr	r3, [r4, #4]
    76ba:	2b00      	cmp	r3, #0
    76bc:	d030      	beq.n	7720 <rt_mut_release+0xd0>
    76be:	0020      	movs	r0, r4
    76c0:	f000 faca 	bl	7c58 <rt_get_first>
    76c4:	0006      	movs	r6, r0
    76c6:	2100      	movs	r1, #0
    76c8:	f7ff fe94 	bl	73f4 <rt_ret_val>
    76cc:	0030      	movs	r0, r6
    76ce:	f000 fbfb 	bl	7ec8 <rt_rmv_dly>
    76d2:	2301      	movs	r3, #1
    76d4:	8063      	strh	r3, [r4, #2]
    76d6:	6a33      	ldr	r3, [r6, #32]
    76d8:	60a6      	str	r6, [r4, #8]
    76da:	60e3      	str	r3, [r4, #12]
    76dc:	6234      	str	r4, [r6, #32]
    76de:	4c1d      	ldr	r4, [pc, #116]	; (7754 <rt_mut_release+0x104>)
    76e0:	6829      	ldr	r1, [r5, #0]
    76e2:	6863      	ldr	r3, [r4, #4]
    76e4:	788a      	ldrb	r2, [r1, #2]
    76e6:	789b      	ldrb	r3, [r3, #2]
    76e8:	2701      	movs	r7, #1
    76ea:	429a      	cmp	r2, r3
    76ec:	d309      	bcc.n	7702 <rt_mut_release+0xb2>
    76ee:	0030      	movs	r0, r6
    76f0:	f000 fea0 	bl	8434 <rt_dispatch>
    76f4:	2000      	movs	r0, #0
    76f6:	e7b1      	b.n	765c <rt_mut_release+0xc>
    76f8:	0032      	movs	r2, r6
    76fa:	68e3      	ldr	r3, [r4, #12]
    76fc:	60d3      	str	r3, [r2, #12]
    76fe:	68f3      	ldr	r3, [r6, #12]
    7700:	e7c7      	b.n	7692 <rt_mut_release+0x42>
    7702:	0020      	movs	r0, r4
    7704:	f000 fa82 	bl	7c0c <rt_put_prio>
    7708:	0031      	movs	r1, r6
    770a:	0020      	movs	r0, r4
    770c:	f000 fa7e 	bl	7c0c <rt_put_prio>
    7710:	682b      	ldr	r3, [r5, #0]
    7712:	2000      	movs	r0, #0
    7714:	705f      	strb	r7, [r3, #1]
    7716:	7077      	strb	r7, [r6, #1]
    7718:	f000 fe8c 	bl	8434 <rt_dispatch>
    771c:	2000      	movs	r0, #0
    771e:	e79d      	b.n	765c <rt_mut_release+0xc>
    7720:	480c      	ldr	r0, [pc, #48]	; (7754 <rt_mut_release+0x104>)
    7722:	6843      	ldr	r3, [r0, #4]
    7724:	789b      	ldrb	r3, [r3, #2]
    7726:	42bb      	cmp	r3, r7
    7728:	d9e4      	bls.n	76f4 <rt_mut_release+0xa4>
    772a:	f000 fa6f 	bl	7c0c <rt_put_prio>
    772e:	2201      	movs	r2, #1
    7730:	682b      	ldr	r3, [r5, #0]
    7732:	2000      	movs	r0, #0
    7734:	705a      	strb	r2, [r3, #1]
    7736:	f000 fe7d 	bl	8434 <rt_dispatch>
    773a:	2000      	movs	r0, #0
    773c:	e78e      	b.n	765c <rt_mut_release+0xc>
    773e:	2324      	movs	r3, #36	; 0x24
    7740:	68e6      	ldr	r6, [r4, #12]
    7742:	620e      	str	r6, [r1, #32]
    7744:	5ccf      	ldrb	r7, [r1, r3]
    7746:	2e00      	cmp	r6, #0
    7748:	d0b5      	beq.n	76b6 <rt_mut_release+0x66>
    774a:	68f3      	ldr	r3, [r6, #12]
    774c:	e7a3      	b.n	7696 <rt_mut_release+0x46>
    774e:	46c0      	nop			; (mov r8, r8)
    7750:	200060b8 	.word	0x200060b8
    7754:	20006084 	.word	0x20006084

00007758 <rt_mut_wait>:
    7758:	b570      	push	{r4, r5, r6, lr}
    775a:	8843      	ldrh	r3, [r0, #2]
    775c:	0004      	movs	r4, r0
    775e:	000d      	movs	r5, r1
    7760:	2b00      	cmp	r3, #0
    7762:	d017      	beq.n	7794 <rt_mut_wait+0x3c>
    7764:	4e19      	ldr	r6, [pc, #100]	; (77cc <rt_mut_wait+0x74>)
    7766:	6882      	ldr	r2, [r0, #8]
    7768:	6831      	ldr	r1, [r6, #0]
    776a:	428a      	cmp	r2, r1
    776c:	d026      	beq.n	77bc <rt_mut_wait+0x64>
    776e:	2001      	movs	r0, #1
    7770:	2d00      	cmp	r5, #0
    7772:	d00e      	beq.n	7792 <rt_mut_wait+0x3a>
    7774:	788b      	ldrb	r3, [r1, #2]
    7776:	7890      	ldrb	r0, [r2, #2]
    7778:	4298      	cmp	r0, r3
    777a:	d319      	bcc.n	77b0 <rt_mut_wait+0x58>
    777c:	6863      	ldr	r3, [r4, #4]
    777e:	2b00      	cmp	r3, #0
    7780:	d012      	beq.n	77a8 <rt_mut_wait+0x50>
    7782:	0020      	movs	r0, r4
    7784:	f000 fa42 	bl	7c0c <rt_put_prio>
    7788:	0028      	movs	r0, r5
    778a:	2109      	movs	r1, #9
    778c:	f000 fe78 	bl	8480 <rt_block>
    7790:	2001      	movs	r0, #1
    7792:	bd70      	pop	{r4, r5, r6, pc}
    7794:	4b0d      	ldr	r3, [pc, #52]	; (77cc <rt_mut_wait+0x74>)
    7796:	681b      	ldr	r3, [r3, #0]
    7798:	6a1a      	ldr	r2, [r3, #32]
    779a:	6083      	str	r3, [r0, #8]
    779c:	60c2      	str	r2, [r0, #12]
    779e:	6218      	str	r0, [r3, #32]
    77a0:	2301      	movs	r3, #1
    77a2:	8043      	strh	r3, [r0, #2]
    77a4:	2000      	movs	r0, #0
    77a6:	e7f4      	b.n	7792 <rt_mut_wait+0x3a>
    77a8:	6061      	str	r1, [r4, #4]
    77aa:	604b      	str	r3, [r1, #4]
    77ac:	608c      	str	r4, [r1, #8]
    77ae:	e7eb      	b.n	7788 <rt_mut_wait+0x30>
    77b0:	7093      	strb	r3, [r2, #2]
    77b2:	68a0      	ldr	r0, [r4, #8]
    77b4:	f000 fa80 	bl	7cb8 <rt_resort_prio>
    77b8:	6831      	ldr	r1, [r6, #0]
    77ba:	e7df      	b.n	777c <rt_mut_wait+0x24>
    77bc:	4a04      	ldr	r2, [pc, #16]	; (77d0 <rt_mut_wait+0x78>)
    77be:	20ff      	movs	r0, #255	; 0xff
    77c0:	4293      	cmp	r3, r2
    77c2:	d0e6      	beq.n	7792 <rt_mut_wait+0x3a>
    77c4:	3301      	adds	r3, #1
    77c6:	8063      	strh	r3, [r4, #2]
    77c8:	2000      	movs	r0, #0
    77ca:	e7e2      	b.n	7792 <rt_mut_wait+0x3a>
    77cc:	200060b8 	.word	0x200060b8
    77d0:	0000ffff 	.word	0x0000ffff

000077d4 <rt_time_get>:
    77d4:	4b01      	ldr	r3, [pc, #4]	; (77dc <rt_time_get+0x8>)
    77d6:	6818      	ldr	r0, [r3, #0]
    77d8:	4770      	bx	lr
    77da:	46c0      	nop			; (mov r8, r8)
    77dc:	20006080 	.word	0x20006080

000077e0 <rt_dly_wait>:
    77e0:	b510      	push	{r4, lr}
    77e2:	2103      	movs	r1, #3
    77e4:	f000 fe4c 	bl	8480 <rt_block>
    77e8:	bd10      	pop	{r4, pc}
    77ea:	46c0      	nop			; (mov r8, r8)

000077ec <rt_itv_set>:
    77ec:	4b03      	ldr	r3, [pc, #12]	; (77fc <rt_itv_set+0x10>)
    77ee:	681a      	ldr	r2, [r3, #0]
    77f0:	4b03      	ldr	r3, [pc, #12]	; (7800 <rt_itv_set+0x14>)
    77f2:	82d0      	strh	r0, [r2, #22]
    77f4:	681b      	ldr	r3, [r3, #0]
    77f6:	18c0      	adds	r0, r0, r3
    77f8:	8290      	strh	r0, [r2, #20]
    77fa:	4770      	bx	lr
    77fc:	200060b8 	.word	0x200060b8
    7800:	20006080 	.word	0x20006080

00007804 <rt_itv_wait>:
    7804:	b510      	push	{r4, lr}
    7806:	4b08      	ldr	r3, [pc, #32]	; (7828 <rt_itv_wait+0x24>)
    7808:	681a      	ldr	r2, [r3, #0]
    780a:	4b08      	ldr	r3, [pc, #32]	; (782c <rt_itv_wait+0x28>)
    780c:	8a90      	ldrh	r0, [r2, #20]
    780e:	681b      	ldr	r3, [r3, #0]
    7810:	8ad1      	ldrh	r1, [r2, #22]
    7812:	1ac3      	subs	r3, r0, r3
    7814:	1841      	adds	r1, r0, r1
    7816:	8291      	strh	r1, [r2, #20]
    7818:	b298      	uxth	r0, r3
    781a:	041b      	lsls	r3, r3, #16
    781c:	d402      	bmi.n	7824 <rt_itv_wait+0x20>
    781e:	2104      	movs	r1, #4
    7820:	f000 fe2e 	bl	8480 <rt_block>
    7824:	bd10      	pop	{r4, pc}
    7826:	46c0      	nop			; (mov r8, r8)
    7828:	200060b8 	.word	0x200060b8
    782c:	20006080 	.word	0x20006080

00007830 <rt_sem_init>:
    7830:	2302      	movs	r3, #2
    7832:	7003      	strb	r3, [r0, #0]
    7834:	2300      	movs	r3, #0
    7836:	8041      	strh	r1, [r0, #2]
    7838:	6043      	str	r3, [r0, #4]
    783a:	4770      	bx	lr

0000783c <rt_sem_delete>:
    783c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    783e:	6843      	ldr	r3, [r0, #4]
    7840:	0005      	movs	r5, r0
    7842:	4e16      	ldr	r6, [pc, #88]	; (789c <rt_sem_delete+0x60>)
    7844:	2b00      	cmp	r3, #0
    7846:	d012      	beq.n	786e <rt_sem_delete+0x32>
    7848:	2701      	movs	r7, #1
    784a:	0028      	movs	r0, r5
    784c:	f000 fa04 	bl	7c58 <rt_get_first>
    7850:	0004      	movs	r4, r0
    7852:	2100      	movs	r1, #0
    7854:	f7ff fdce 	bl	73f4 <rt_ret_val>
    7858:	0020      	movs	r0, r4
    785a:	f000 fb35 	bl	7ec8 <rt_rmv_dly>
    785e:	7067      	strb	r7, [r4, #1]
    7860:	0021      	movs	r1, r4
    7862:	0030      	movs	r0, r6
    7864:	f000 f9d2 	bl	7c0c <rt_put_prio>
    7868:	686b      	ldr	r3, [r5, #4]
    786a:	2b00      	cmp	r3, #0
    786c:	d1ed      	bne.n	784a <rt_sem_delete+0xe>
    786e:	6873      	ldr	r3, [r6, #4]
    7870:	2b00      	cmp	r3, #0
    7872:	d00e      	beq.n	7892 <rt_sem_delete+0x56>
    7874:	4c0a      	ldr	r4, [pc, #40]	; (78a0 <rt_sem_delete+0x64>)
    7876:	789a      	ldrb	r2, [r3, #2]
    7878:	6821      	ldr	r1, [r4, #0]
    787a:	788b      	ldrb	r3, [r1, #2]
    787c:	429a      	cmp	r2, r3
    787e:	d908      	bls.n	7892 <rt_sem_delete+0x56>
    7880:	0030      	movs	r0, r6
    7882:	f000 f9c3 	bl	7c0c <rt_put_prio>
    7886:	2201      	movs	r2, #1
    7888:	6823      	ldr	r3, [r4, #0]
    788a:	2000      	movs	r0, #0
    788c:	705a      	strb	r2, [r3, #1]
    788e:	f000 fdd1 	bl	8434 <rt_dispatch>
    7892:	2300      	movs	r3, #0
    7894:	2000      	movs	r0, #0
    7896:	702b      	strb	r3, [r5, #0]
    7898:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    789a:	46c0      	nop			; (mov r8, r8)
    789c:	20006084 	.word	0x20006084
    78a0:	200060b8 	.word	0x200060b8

000078a4 <rt_sem_send>:
    78a4:	6843      	ldr	r3, [r0, #4]
    78a6:	b510      	push	{r4, lr}
    78a8:	2b00      	cmp	r3, #0
    78aa:	d00d      	beq.n	78c8 <rt_sem_send+0x24>
    78ac:	f000 f9d4 	bl	7c58 <rt_get_first>
    78b0:	0004      	movs	r4, r0
    78b2:	2101      	movs	r1, #1
    78b4:	f7ff fd9e 	bl	73f4 <rt_ret_val>
    78b8:	0020      	movs	r0, r4
    78ba:	f000 fb05 	bl	7ec8 <rt_rmv_dly>
    78be:	0020      	movs	r0, r4
    78c0:	f000 fdb8 	bl	8434 <rt_dispatch>
    78c4:	2000      	movs	r0, #0
    78c6:	bd10      	pop	{r4, pc}
    78c8:	8843      	ldrh	r3, [r0, #2]
    78ca:	3301      	adds	r3, #1
    78cc:	8043      	strh	r3, [r0, #2]
    78ce:	e7f9      	b.n	78c4 <rt_sem_send+0x20>

000078d0 <rt_sem_wait>:
    78d0:	b510      	push	{r4, lr}
    78d2:	8843      	ldrh	r3, [r0, #2]
    78d4:	000c      	movs	r4, r1
    78d6:	2b00      	cmp	r3, #0
    78d8:	d110      	bne.n	78fc <rt_sem_wait+0x2c>
    78da:	2301      	movs	r3, #1
    78dc:	2900      	cmp	r1, #0
    78de:	d00b      	beq.n	78f8 <rt_sem_wait+0x28>
    78e0:	6843      	ldr	r3, [r0, #4]
    78e2:	2b00      	cmp	r3, #0
    78e4:	d00e      	beq.n	7904 <rt_sem_wait+0x34>
    78e6:	4b0a      	ldr	r3, [pc, #40]	; (7910 <rt_sem_wait+0x40>)
    78e8:	6819      	ldr	r1, [r3, #0]
    78ea:	f000 f98f 	bl	7c0c <rt_put_prio>
    78ee:	2107      	movs	r1, #7
    78f0:	0020      	movs	r0, r4
    78f2:	f000 fdc5 	bl	8480 <rt_block>
    78f6:	2301      	movs	r3, #1
    78f8:	0018      	movs	r0, r3
    78fa:	bd10      	pop	{r4, pc}
    78fc:	3b01      	subs	r3, #1
    78fe:	8043      	strh	r3, [r0, #2]
    7900:	2300      	movs	r3, #0
    7902:	e7f9      	b.n	78f8 <rt_sem_wait+0x28>
    7904:	4a02      	ldr	r2, [pc, #8]	; (7910 <rt_sem_wait+0x40>)
    7906:	6812      	ldr	r2, [r2, #0]
    7908:	6042      	str	r2, [r0, #4]
    790a:	6053      	str	r3, [r2, #4]
    790c:	6090      	str	r0, [r2, #8]
    790e:	e7ee      	b.n	78ee <rt_sem_wait+0x1e>
    7910:	200060b8 	.word	0x200060b8

00007914 <isr_sem_send>:
    7914:	b510      	push	{r4, lr}
    7916:	2100      	movs	r1, #0
    7918:	f000 faec 	bl	7ef4 <rt_psq_enq>
    791c:	f000 fcce 	bl	82bc <rt_psh_req>
    7920:	bd10      	pop	{r4, pc}
    7922:	46c0      	nop			; (mov r8, r8)

00007924 <rt_sem_psh>:
    7924:	6843      	ldr	r3, [r0, #4]
    7926:	b510      	push	{r4, lr}
    7928:	2b00      	cmp	r3, #0
    792a:	d00f      	beq.n	794c <rt_sem_psh+0x28>
    792c:	f000 f994 	bl	7c58 <rt_get_first>
    7930:	0004      	movs	r4, r0
    7932:	f000 fac9 	bl	7ec8 <rt_rmv_dly>
    7936:	2301      	movs	r3, #1
    7938:	2101      	movs	r1, #1
    793a:	0020      	movs	r0, r4
    793c:	7063      	strb	r3, [r4, #1]
    793e:	f7ff fd59 	bl	73f4 <rt_ret_val>
    7942:	0021      	movs	r1, r4
    7944:	4803      	ldr	r0, [pc, #12]	; (7954 <rt_sem_psh+0x30>)
    7946:	f000 f961 	bl	7c0c <rt_put_prio>
    794a:	bd10      	pop	{r4, pc}
    794c:	8843      	ldrh	r3, [r0, #2]
    794e:	3301      	adds	r3, #1
    7950:	8043      	strh	r3, [r0, #2]
    7952:	e7fa      	b.n	794a <rt_sem_psh+0x26>
    7954:	20006084 	.word	0x20006084

00007958 <rt_mbx_init>:
    7958:	2301      	movs	r3, #1
    795a:	7003      	strb	r3, [r0, #0]
    795c:	2300      	movs	r3, #0
    795e:	3910      	subs	r1, #16
    7960:	0889      	lsrs	r1, r1, #2
    7962:	7043      	strb	r3, [r0, #1]
    7964:	7083      	strb	r3, [r0, #2]
    7966:	6043      	str	r3, [r0, #4]
    7968:	8103      	strh	r3, [r0, #8]
    796a:	8143      	strh	r3, [r0, #10]
    796c:	8183      	strh	r3, [r0, #12]
    796e:	81c1      	strh	r1, [r0, #14]
    7970:	4770      	bx	lr
    7972:	46c0      	nop			; (mov r8, r8)

00007974 <rt_mbx_send>:
    7974:	6843      	ldr	r3, [r0, #4]
    7976:	b570      	push	{r4, r5, r6, lr}
    7978:	000d      	movs	r5, r1
    797a:	0016      	movs	r6, r2
    797c:	2b00      	cmp	r3, #0
    797e:	d002      	beq.n	7986 <rt_mbx_send+0x12>
    7980:	7842      	ldrb	r2, [r0, #1]
    7982:	2a01      	cmp	r2, #1
    7984:	d028      	beq.n	79d8 <rt_mbx_send+0x64>
    7986:	8982      	ldrh	r2, [r0, #12]
    7988:	89c4      	ldrh	r4, [r0, #14]
    798a:	42a2      	cmp	r2, r4
    798c:	d013      	beq.n	79b6 <rt_mbx_send+0x42>
    798e:	8903      	ldrh	r3, [r0, #8]
    7990:	1d19      	adds	r1, r3, #4
    7992:	0089      	lsls	r1, r1, #2
    7994:	500d      	str	r5, [r1, r0]
    7996:	f3ef 8110 	mrs	r1, PRIMASK
    799a:	b672      	cpsid	i
    799c:	3201      	adds	r2, #1
    799e:	8182      	strh	r2, [r0, #12]
    79a0:	b662      	cpsie	i
    79a2:	3301      	adds	r3, #1
    79a4:	b29b      	uxth	r3, r3
    79a6:	429c      	cmp	r4, r3
    79a8:	d003      	beq.n	79b2 <rt_mbx_send+0x3e>
    79aa:	2200      	movs	r2, #0
    79ac:	8103      	strh	r3, [r0, #8]
    79ae:	0010      	movs	r0, r2
    79b0:	bd70      	pop	{r4, r5, r6, pc}
    79b2:	2300      	movs	r3, #0
    79b4:	e7f9      	b.n	79aa <rt_mbx_send+0x36>
    79b6:	2201      	movs	r2, #1
    79b8:	2e00      	cmp	r6, #0
    79ba:	d0f8      	beq.n	79ae <rt_mbx_send+0x3a>
    79bc:	2b00      	cmp	r3, #0
    79be:	d01a      	beq.n	79f6 <rt_mbx_send+0x82>
    79c0:	4c11      	ldr	r4, [pc, #68]	; (7a08 <rt_mbx_send+0x94>)
    79c2:	6821      	ldr	r1, [r4, #0]
    79c4:	f000 f922 	bl	7c0c <rt_put_prio>
    79c8:	6822      	ldr	r2, [r4, #0]
    79ca:	61d5      	str	r5, [r2, #28]
    79cc:	2108      	movs	r1, #8
    79ce:	0030      	movs	r0, r6
    79d0:	f000 fd56 	bl	8480 <rt_block>
    79d4:	2201      	movs	r2, #1
    79d6:	e7ea      	b.n	79ae <rt_mbx_send+0x3a>
    79d8:	f000 f93e 	bl	7c58 <rt_get_first>
    79dc:	0004      	movs	r4, r0
    79de:	002a      	movs	r2, r5
    79e0:	2110      	movs	r1, #16
    79e2:	f7ff fd0b 	bl	73fc <rt_ret_val2>
    79e6:	0020      	movs	r0, r4
    79e8:	f000 fa6e 	bl	7ec8 <rt_rmv_dly>
    79ec:	0020      	movs	r0, r4
    79ee:	f000 fd21 	bl	8434 <rt_dispatch>
    79f2:	2200      	movs	r2, #0
    79f4:	e7db      	b.n	79ae <rt_mbx_send+0x3a>
    79f6:	4a04      	ldr	r2, [pc, #16]	; (7a08 <rt_mbx_send+0x94>)
    79f8:	6812      	ldr	r2, [r2, #0]
    79fa:	6042      	str	r2, [r0, #4]
    79fc:	6053      	str	r3, [r2, #4]
    79fe:	2302      	movs	r3, #2
    7a00:	6090      	str	r0, [r2, #8]
    7a02:	7043      	strb	r3, [r0, #1]
    7a04:	e7e1      	b.n	79ca <rt_mbx_send+0x56>
    7a06:	46c0      	nop			; (mov r8, r8)
    7a08:	200060b8 	.word	0x200060b8

00007a0c <rt_mbx_wait>:
    7a0c:	b570      	push	{r4, r5, r6, lr}
    7a0e:	0015      	movs	r5, r2
    7a10:	8982      	ldrh	r2, [r0, #12]
    7a12:	0004      	movs	r4, r0
    7a14:	2a00      	cmp	r2, #0
    7a16:	d018      	beq.n	7a4a <rt_mbx_wait+0x3e>
    7a18:	8943      	ldrh	r3, [r0, #10]
    7a1a:	1d18      	adds	r0, r3, #4
    7a1c:	0080      	lsls	r0, r0, #2
    7a1e:	5900      	ldr	r0, [r0, r4]
    7a20:	3301      	adds	r3, #1
    7a22:	6008      	str	r0, [r1, #0]
    7a24:	89e1      	ldrh	r1, [r4, #14]
    7a26:	b29b      	uxth	r3, r3
    7a28:	8163      	strh	r3, [r4, #10]
    7a2a:	4299      	cmp	r1, r3
    7a2c:	d01e      	beq.n	7a6c <rt_mbx_wait+0x60>
    7a2e:	6863      	ldr	r3, [r4, #4]
    7a30:	2b00      	cmp	r3, #0
    7a32:	d002      	beq.n	7a3a <rt_mbx_wait+0x2e>
    7a34:	7863      	ldrb	r3, [r4, #1]
    7a36:	2b02      	cmp	r3, #2
    7a38:	d025      	beq.n	7a86 <rt_mbx_wait+0x7a>
    7a3a:	f3ef 8310 	mrs	r3, PRIMASK
    7a3e:	b672      	cpsid	i
    7a40:	3a01      	subs	r2, #1
    7a42:	81a2      	strh	r2, [r4, #12]
    7a44:	b662      	cpsie	i
    7a46:	2000      	movs	r0, #0
    7a48:	bd70      	pop	{r4, r5, r6, pc}
    7a4a:	2001      	movs	r0, #1
    7a4c:	2d00      	cmp	r5, #0
    7a4e:	d0fb      	beq.n	7a48 <rt_mbx_wait+0x3c>
    7a50:	6863      	ldr	r3, [r4, #4]
    7a52:	2b00      	cmp	r3, #0
    7a54:	d010      	beq.n	7a78 <rt_mbx_wait+0x6c>
    7a56:	4b1a      	ldr	r3, [pc, #104]	; (7ac0 <rt_mbx_wait+0xb4>)
    7a58:	0020      	movs	r0, r4
    7a5a:	6819      	ldr	r1, [r3, #0]
    7a5c:	f000 f8d6 	bl	7c0c <rt_put_prio>
    7a60:	0028      	movs	r0, r5
    7a62:	2108      	movs	r1, #8
    7a64:	f000 fd0c 	bl	8480 <rt_block>
    7a68:	2001      	movs	r0, #1
    7a6a:	e7ed      	b.n	7a48 <rt_mbx_wait+0x3c>
    7a6c:	2300      	movs	r3, #0
    7a6e:	8163      	strh	r3, [r4, #10]
    7a70:	6863      	ldr	r3, [r4, #4]
    7a72:	2b00      	cmp	r3, #0
    7a74:	d1de      	bne.n	7a34 <rt_mbx_wait+0x28>
    7a76:	e7e0      	b.n	7a3a <rt_mbx_wait+0x2e>
    7a78:	4a11      	ldr	r2, [pc, #68]	; (7ac0 <rt_mbx_wait+0xb4>)
    7a7a:	6812      	ldr	r2, [r2, #0]
    7a7c:	6062      	str	r2, [r4, #4]
    7a7e:	6053      	str	r3, [r2, #4]
    7a80:	6094      	str	r4, [r2, #8]
    7a82:	7060      	strb	r0, [r4, #1]
    7a84:	e7ec      	b.n	7a60 <rt_mbx_wait+0x54>
    7a86:	0020      	movs	r0, r4
    7a88:	f000 f8e6 	bl	7c58 <rt_get_first>
    7a8c:	0005      	movs	r5, r0
    7a8e:	2100      	movs	r1, #0
    7a90:	f7ff fcb0 	bl	73f4 <rt_ret_val>
    7a94:	8923      	ldrh	r3, [r4, #8]
    7a96:	69e9      	ldr	r1, [r5, #28]
    7a98:	1d1a      	adds	r2, r3, #4
    7a9a:	0092      	lsls	r2, r2, #2
    7a9c:	5111      	str	r1, [r2, r4]
    7a9e:	3301      	adds	r3, #1
    7aa0:	89e2      	ldrh	r2, [r4, #14]
    7aa2:	b29b      	uxth	r3, r3
    7aa4:	8123      	strh	r3, [r4, #8]
    7aa6:	429a      	cmp	r2, r3
    7aa8:	d101      	bne.n	7aae <rt_mbx_wait+0xa2>
    7aaa:	2300      	movs	r3, #0
    7aac:	8123      	strh	r3, [r4, #8]
    7aae:	0028      	movs	r0, r5
    7ab0:	f000 fa0a 	bl	7ec8 <rt_rmv_dly>
    7ab4:	0028      	movs	r0, r5
    7ab6:	f000 fcbd 	bl	8434 <rt_dispatch>
    7aba:	2000      	movs	r0, #0
    7abc:	e7c4      	b.n	7a48 <rt_mbx_wait+0x3c>
    7abe:	46c0      	nop			; (mov r8, r8)
    7ac0:	200060b8 	.word	0x200060b8

00007ac4 <rt_mbx_check>:
    7ac4:	89c3      	ldrh	r3, [r0, #14]
    7ac6:	8980      	ldrh	r0, [r0, #12]
    7ac8:	1a18      	subs	r0, r3, r0
    7aca:	4770      	bx	lr

00007acc <isr_mbx_send>:
    7acc:	b510      	push	{r4, lr}
    7ace:	f000 fa11 	bl	7ef4 <rt_psq_enq>
    7ad2:	f000 fbf3 	bl	82bc <rt_psh_req>
    7ad6:	bd10      	pop	{r4, pc}

00007ad8 <isr_mbx_receive>:
    7ad8:	b510      	push	{r4, lr}
    7ada:	8982      	ldrh	r2, [r0, #12]
    7adc:	0004      	movs	r4, r0
    7ade:	2000      	movs	r0, #0
    7ae0:	2a00      	cmp	r2, #0
    7ae2:	d017      	beq.n	7b14 <isr_mbx_receive+0x3c>
    7ae4:	8963      	ldrh	r3, [r4, #10]
    7ae6:	1d18      	adds	r0, r3, #4
    7ae8:	0080      	lsls	r0, r0, #2
    7aea:	5900      	ldr	r0, [r0, r4]
    7aec:	6008      	str	r0, [r1, #0]
    7aee:	6861      	ldr	r1, [r4, #4]
    7af0:	2900      	cmp	r1, #0
    7af2:	d002      	beq.n	7afa <isr_mbx_receive+0x22>
    7af4:	7861      	ldrb	r1, [r4, #1]
    7af6:	2902      	cmp	r1, #2
    7af8:	d010      	beq.n	7b1c <isr_mbx_receive+0x44>
    7afa:	f3ef 8110 	mrs	r1, PRIMASK
    7afe:	b672      	cpsid	i
    7b00:	3a01      	subs	r2, #1
    7b02:	81a2      	strh	r2, [r4, #12]
    7b04:	b662      	cpsie	i
    7b06:	3301      	adds	r3, #1
    7b08:	89e2      	ldrh	r2, [r4, #14]
    7b0a:	b29b      	uxth	r3, r3
    7b0c:	8163      	strh	r3, [r4, #10]
    7b0e:	2004      	movs	r0, #4
    7b10:	429a      	cmp	r2, r3
    7b12:	d000      	beq.n	7b16 <isr_mbx_receive+0x3e>
    7b14:	bd10      	pop	{r4, pc}
    7b16:	2300      	movs	r3, #0
    7b18:	8163      	strh	r3, [r4, #10]
    7b1a:	e7fb      	b.n	7b14 <isr_mbx_receive+0x3c>
    7b1c:	2100      	movs	r1, #0
    7b1e:	0020      	movs	r0, r4
    7b20:	f000 f9e8 	bl	7ef4 <rt_psq_enq>
    7b24:	f000 fbca 	bl	82bc <rt_psh_req>
    7b28:	89a2      	ldrh	r2, [r4, #12]
    7b2a:	8963      	ldrh	r3, [r4, #10]
    7b2c:	e7e5      	b.n	7afa <isr_mbx_receive+0x22>
    7b2e:	46c0      	nop			; (mov r8, r8)

00007b30 <rt_mbx_psh>:
    7b30:	6843      	ldr	r3, [r0, #4]
    7b32:	b570      	push	{r4, r5, r6, lr}
    7b34:	0004      	movs	r4, r0
    7b36:	000e      	movs	r6, r1
    7b38:	2b00      	cmp	r3, #0
    7b3a:	d04b      	beq.n	7bd4 <rt_mbx_psh+0xa4>
    7b3c:	7845      	ldrb	r5, [r0, #1]
    7b3e:	2d02      	cmp	r5, #2
    7b40:	d023      	beq.n	7b8a <rt_mbx_psh+0x5a>
    7b42:	2d03      	cmp	r5, #3
    7b44:	d002      	beq.n	7b4c <rt_mbx_psh+0x1c>
    7b46:	2d01      	cmp	r5, #1
    7b48:	d00f      	beq.n	7b6a <rt_mbx_psh+0x3a>
    7b4a:	bd70      	pop	{r4, r5, r6, pc}
    7b4c:	0008      	movs	r0, r1
    7b4e:	f7ff fcd3 	bl	74f8 <rt_alloc_box>
    7b52:	1e05      	subs	r5, r0, #0
    7b54:	d0f9      	beq.n	7b4a <rt_mbx_psh+0x1a>
    7b56:	0020      	movs	r0, r4
    7b58:	f000 f87e 	bl	7c58 <rt_get_first>
    7b5c:	0029      	movs	r1, r5
    7b5e:	0004      	movs	r4, r0
    7b60:	f7ff fc48 	bl	73f4 <rt_ret_val>
    7b64:	2301      	movs	r3, #1
    7b66:	7063      	strb	r3, [r4, #1]
    7b68:	e007      	b.n	7b7a <rt_mbx_psh+0x4a>
    7b6a:	f000 f875 	bl	7c58 <rt_get_first>
    7b6e:	0004      	movs	r4, r0
    7b70:	0032      	movs	r2, r6
    7b72:	2110      	movs	r1, #16
    7b74:	f7ff fc42 	bl	73fc <rt_ret_val2>
    7b78:	7065      	strb	r5, [r4, #1]
    7b7a:	0020      	movs	r0, r4
    7b7c:	f000 f9a4 	bl	7ec8 <rt_rmv_dly>
    7b80:	0021      	movs	r1, r4
    7b82:	4821      	ldr	r0, [pc, #132]	; (7c08 <rt_mbx_psh+0xd8>)
    7b84:	f000 f842 	bl	7c0c <rt_put_prio>
    7b88:	e7df      	b.n	7b4a <rt_mbx_psh+0x1a>
    7b8a:	f000 f865 	bl	7c58 <rt_get_first>
    7b8e:	0005      	movs	r5, r0
    7b90:	2100      	movs	r1, #0
    7b92:	f7ff fc2f 	bl	73f4 <rt_ret_val>
    7b96:	8923      	ldrh	r3, [r4, #8]
    7b98:	69e9      	ldr	r1, [r5, #28]
    7b9a:	1d1a      	adds	r2, r3, #4
    7b9c:	0092      	lsls	r2, r2, #2
    7b9e:	5111      	str	r1, [r2, r4]
    7ba0:	f3ef 8210 	mrs	r2, PRIMASK
    7ba4:	b672      	cpsid	i
    7ba6:	89a2      	ldrh	r2, [r4, #12]
    7ba8:	3201      	adds	r2, #1
    7baa:	81a2      	strh	r2, [r4, #12]
    7bac:	b662      	cpsie	i
    7bae:	3301      	adds	r3, #1
    7bb0:	89e2      	ldrh	r2, [r4, #14]
    7bb2:	b29b      	uxth	r3, r3
    7bb4:	8123      	strh	r3, [r4, #8]
    7bb6:	429a      	cmp	r2, r3
    7bb8:	d009      	beq.n	7bce <rt_mbx_psh+0x9e>
    7bba:	2301      	movs	r3, #1
    7bbc:	0028      	movs	r0, r5
    7bbe:	706b      	strb	r3, [r5, #1]
    7bc0:	f000 f982 	bl	7ec8 <rt_rmv_dly>
    7bc4:	0029      	movs	r1, r5
    7bc6:	4810      	ldr	r0, [pc, #64]	; (7c08 <rt_mbx_psh+0xd8>)
    7bc8:	f000 f820 	bl	7c0c <rt_put_prio>
    7bcc:	e7bd      	b.n	7b4a <rt_mbx_psh+0x1a>
    7bce:	2300      	movs	r3, #0
    7bd0:	8123      	strh	r3, [r4, #8]
    7bd2:	e7f2      	b.n	7bba <rt_mbx_psh+0x8a>
    7bd4:	8981      	ldrh	r1, [r0, #12]
    7bd6:	89c5      	ldrh	r5, [r0, #14]
    7bd8:	42a9      	cmp	r1, r5
    7bda:	d20f      	bcs.n	7bfc <rt_mbx_psh+0xcc>
    7bdc:	8902      	ldrh	r2, [r0, #8]
    7bde:	1d10      	adds	r0, r2, #4
    7be0:	0080      	lsls	r0, r0, #2
    7be2:	5106      	str	r6, [r0, r4]
    7be4:	f3ef 8010 	mrs	r0, PRIMASK
    7be8:	b672      	cpsid	i
    7bea:	3101      	adds	r1, #1
    7bec:	81a1      	strh	r1, [r4, #12]
    7bee:	b662      	cpsie	i
    7bf0:	3201      	adds	r2, #1
    7bf2:	b292      	uxth	r2, r2
    7bf4:	4295      	cmp	r5, r2
    7bf6:	d005      	beq.n	7c04 <rt_mbx_psh+0xd4>
    7bf8:	8122      	strh	r2, [r4, #8]
    7bfa:	e7a6      	b.n	7b4a <rt_mbx_psh+0x1a>
    7bfc:	2003      	movs	r0, #3
    7bfe:	f7f9 feb9 	bl	1974 <os_error>
    7c02:	e7a2      	b.n	7b4a <rt_mbx_psh+0x1a>
    7c04:	8123      	strh	r3, [r4, #8]
    7c06:	e7a0      	b.n	7b4a <rt_mbx_psh+0x1a>
    7c08:	20006084 	.word	0x20006084

00007c0c <rt_put_prio>:
    7c0c:	b530      	push	{r4, r5, lr}
    7c0e:	7805      	ldrb	r5, [r0, #0]
    7c10:	6842      	ldr	r2, [r0, #4]
    7c12:	3d01      	subs	r5, #1
    7c14:	b2ed      	uxtb	r5, r5
    7c16:	788c      	ldrb	r4, [r1, #2]
    7c18:	2a00      	cmp	r2, #0
    7c1a:	d01a      	beq.n	7c52 <rt_put_prio+0x46>
    7c1c:	7893      	ldrb	r3, [r2, #2]
    7c1e:	42a3      	cmp	r3, r4
    7c20:	d204      	bcs.n	7c2c <rt_put_prio+0x20>
    7c22:	e00e      	b.n	7c42 <rt_put_prio+0x36>
    7c24:	7898      	ldrb	r0, [r3, #2]
    7c26:	4284      	cmp	r4, r0
    7c28:	d80d      	bhi.n	7c46 <rt_put_prio+0x3a>
    7c2a:	001a      	movs	r2, r3
    7c2c:	6853      	ldr	r3, [r2, #4]
    7c2e:	2b00      	cmp	r3, #0
    7c30:	d1f8      	bne.n	7c24 <rt_put_prio+0x18>
    7c32:	2300      	movs	r3, #0
    7c34:	604b      	str	r3, [r1, #4]
    7c36:	6051      	str	r1, [r2, #4]
    7c38:	2d02      	cmp	r5, #2
    7c3a:	d900      	bls.n	7c3e <rt_put_prio+0x32>
    7c3c:	2200      	movs	r2, #0
    7c3e:	608a      	str	r2, [r1, #8]
    7c40:	bd30      	pop	{r4, r5, pc}
    7c42:	0013      	movs	r3, r2
    7c44:	0002      	movs	r2, r0
    7c46:	604b      	str	r3, [r1, #4]
    7c48:	6051      	str	r1, [r2, #4]
    7c4a:	2d02      	cmp	r5, #2
    7c4c:	d8f6      	bhi.n	7c3c <rt_put_prio+0x30>
    7c4e:	6099      	str	r1, [r3, #8]
    7c50:	e7f5      	b.n	7c3e <rt_put_prio+0x32>
    7c52:	0002      	movs	r2, r0
    7c54:	e7ed      	b.n	7c32 <rt_put_prio+0x26>
    7c56:	46c0      	nop			; (mov r8, r8)

00007c58 <rt_get_first>:
    7c58:	6843      	ldr	r3, [r0, #4]
    7c5a:	7802      	ldrb	r2, [r0, #0]
    7c5c:	6859      	ldr	r1, [r3, #4]
    7c5e:	3a01      	subs	r2, #1
    7c60:	6041      	str	r1, [r0, #4]
    7c62:	2a02      	cmp	r2, #2
    7c64:	d808      	bhi.n	7c78 <rt_get_first+0x20>
    7c66:	2900      	cmp	r1, #0
    7c68:	d002      	beq.n	7c70 <rt_get_first+0x18>
    7c6a:	2200      	movs	r2, #0
    7c6c:	6088      	str	r0, [r1, #8]
    7c6e:	605a      	str	r2, [r3, #4]
    7c70:	2200      	movs	r2, #0
    7c72:	609a      	str	r2, [r3, #8]
    7c74:	0018      	movs	r0, r3
    7c76:	4770      	bx	lr
    7c78:	2200      	movs	r2, #0
    7c7a:	605a      	str	r2, [r3, #4]
    7c7c:	e7fa      	b.n	7c74 <rt_get_first+0x1c>
    7c7e:	46c0      	nop			; (mov r8, r8)

00007c80 <rt_put_rdy_first>:
    7c80:	4b03      	ldr	r3, [pc, #12]	; (7c90 <rt_put_rdy_first+0x10>)
    7c82:	685a      	ldr	r2, [r3, #4]
    7c84:	6042      	str	r2, [r0, #4]
    7c86:	2200      	movs	r2, #0
    7c88:	6058      	str	r0, [r3, #4]
    7c8a:	6082      	str	r2, [r0, #8]
    7c8c:	4770      	bx	lr
    7c8e:	46c0      	nop			; (mov r8, r8)
    7c90:	20006084 	.word	0x20006084

00007c94 <rt_get_same_rdy_prio>:
    7c94:	4b06      	ldr	r3, [pc, #24]	; (7cb0 <rt_get_same_rdy_prio+0x1c>)
    7c96:	4a07      	ldr	r2, [pc, #28]	; (7cb4 <rt_get_same_rdy_prio+0x20>)
    7c98:	6858      	ldr	r0, [r3, #4]
    7c9a:	6812      	ldr	r2, [r2, #0]
    7c9c:	7881      	ldrb	r1, [r0, #2]
    7c9e:	7892      	ldrb	r2, [r2, #2]
    7ca0:	4291      	cmp	r1, r2
    7ca2:	d102      	bne.n	7caa <rt_get_same_rdy_prio+0x16>
    7ca4:	6842      	ldr	r2, [r0, #4]
    7ca6:	605a      	str	r2, [r3, #4]
    7ca8:	4770      	bx	lr
    7caa:	2000      	movs	r0, #0
    7cac:	e7fc      	b.n	7ca8 <rt_get_same_rdy_prio+0x14>
    7cae:	46c0      	nop			; (mov r8, r8)
    7cb0:	20006084 	.word	0x20006084
    7cb4:	200060b8 	.word	0x200060b8

00007cb8 <rt_resort_prio>:
    7cb8:	6881      	ldr	r1, [r0, #8]
    7cba:	b530      	push	{r4, r5, lr}
    7cbc:	2900      	cmp	r1, #0
    7cbe:	d030      	beq.n	7d22 <rt_resort_prio+0x6a>
    7cc0:	780b      	ldrb	r3, [r1, #0]
    7cc2:	000a      	movs	r2, r1
    7cc4:	2b00      	cmp	r3, #0
    7cc6:	d103      	bne.n	7cd0 <rt_resort_prio+0x18>
    7cc8:	6892      	ldr	r2, [r2, #8]
    7cca:	7813      	ldrb	r3, [r2, #0]
    7ccc:	2b00      	cmp	r3, #0
    7cce:	d0fb      	beq.n	7cc8 <rt_resort_prio+0x10>
    7cd0:	6843      	ldr	r3, [r0, #4]
    7cd2:	604b      	str	r3, [r1, #4]
    7cd4:	6843      	ldr	r3, [r0, #4]
    7cd6:	2b00      	cmp	r3, #0
    7cd8:	d000      	beq.n	7cdc <rt_resort_prio+0x24>
    7cda:	6099      	str	r1, [r3, #8]
    7cdc:	7815      	ldrb	r5, [r2, #0]
    7cde:	6851      	ldr	r1, [r2, #4]
    7ce0:	3d01      	subs	r5, #1
    7ce2:	b2ed      	uxtb	r5, r5
    7ce4:	7884      	ldrb	r4, [r0, #2]
    7ce6:	2900      	cmp	r1, #0
    7ce8:	d029      	beq.n	7d3e <rt_resort_prio+0x86>
    7cea:	788b      	ldrb	r3, [r1, #2]
    7cec:	42a3      	cmp	r3, r4
    7cee:	d204      	bcs.n	7cfa <rt_resort_prio+0x42>
    7cf0:	e00e      	b.n	7d10 <rt_resort_prio+0x58>
    7cf2:	789a      	ldrb	r2, [r3, #2]
    7cf4:	4294      	cmp	r4, r2
    7cf6:	d80d      	bhi.n	7d14 <rt_resort_prio+0x5c>
    7cf8:	0019      	movs	r1, r3
    7cfa:	684b      	ldr	r3, [r1, #4]
    7cfc:	2b00      	cmp	r3, #0
    7cfe:	d1f8      	bne.n	7cf2 <rt_resort_prio+0x3a>
    7d00:	2300      	movs	r3, #0
    7d02:	6043      	str	r3, [r0, #4]
    7d04:	6048      	str	r0, [r1, #4]
    7d06:	2d02      	cmp	r5, #2
    7d08:	d909      	bls.n	7d1e <rt_resort_prio+0x66>
    7d0a:	2300      	movs	r3, #0
    7d0c:	6083      	str	r3, [r0, #8]
    7d0e:	bd30      	pop	{r4, r5, pc}
    7d10:	000b      	movs	r3, r1
    7d12:	0011      	movs	r1, r2
    7d14:	6043      	str	r3, [r0, #4]
    7d16:	6048      	str	r0, [r1, #4]
    7d18:	2d02      	cmp	r5, #2
    7d1a:	d8f6      	bhi.n	7d0a <rt_resort_prio+0x52>
    7d1c:	6098      	str	r0, [r3, #8]
    7d1e:	6081      	str	r1, [r0, #8]
    7d20:	e7f5      	b.n	7d0e <rt_resort_prio+0x56>
    7d22:	7843      	ldrb	r3, [r0, #1]
    7d24:	2b01      	cmp	r3, #1
    7d26:	d1f2      	bne.n	7d0e <rt_resort_prio+0x56>
    7d28:	4a06      	ldr	r2, [pc, #24]	; (7d44 <rt_resort_prio+0x8c>)
    7d2a:	0013      	movs	r3, r2
    7d2c:	e001      	b.n	7d32 <rt_resort_prio+0x7a>
    7d2e:	1e0b      	subs	r3, r1, #0
    7d30:	d0d4      	beq.n	7cdc <rt_resort_prio+0x24>
    7d32:	6859      	ldr	r1, [r3, #4]
    7d34:	4288      	cmp	r0, r1
    7d36:	d1fa      	bne.n	7d2e <rt_resort_prio+0x76>
    7d38:	6841      	ldr	r1, [r0, #4]
    7d3a:	6059      	str	r1, [r3, #4]
    7d3c:	e7ce      	b.n	7cdc <rt_resort_prio+0x24>
    7d3e:	0011      	movs	r1, r2
    7d40:	e7de      	b.n	7d00 <rt_resort_prio+0x48>
    7d42:	46c0      	nop			; (mov r8, r8)
    7d44:	20006084 	.word	0x20006084

00007d48 <rt_put_dly>:
    7d48:	b530      	push	{r4, r5, lr}
    7d4a:	4c17      	ldr	r4, [pc, #92]	; (7da8 <rt_put_dly+0x60>)
    7d4c:	68e2      	ldr	r2, [r4, #12]
    7d4e:	2a00      	cmp	r2, #0
    7d50:	d023      	beq.n	7d9a <rt_put_dly+0x52>
    7d52:	8aa3      	ldrh	r3, [r4, #20]
    7d54:	4299      	cmp	r1, r3
    7d56:	d804      	bhi.n	7d62 <rt_put_dly+0x1a>
    7d58:	e022      	b.n	7da0 <rt_put_dly+0x58>
    7d5a:	68d4      	ldr	r4, [r2, #12]
    7d5c:	2c00      	cmp	r4, #0
    7d5e:	d013      	beq.n	7d88 <rt_put_dly+0x40>
    7d60:	0022      	movs	r2, r4
    7d62:	8a94      	ldrh	r4, [r2, #20]
    7d64:	191b      	adds	r3, r3, r4
    7d66:	4299      	cmp	r1, r3
    7d68:	d8f7      	bhi.n	7d5a <rt_put_dly+0x12>
    7d6a:	68d5      	ldr	r5, [r2, #12]
    7d6c:	60c5      	str	r5, [r0, #12]
    7d6e:	60d0      	str	r0, [r2, #12]
    7d70:	68c4      	ldr	r4, [r0, #12]
    7d72:	6102      	str	r2, [r0, #16]
    7d74:	2c00      	cmp	r4, #0
    7d76:	d000      	beq.n	7d7a <rt_put_dly+0x32>
    7d78:	6120      	str	r0, [r4, #16]
    7d7a:	1a5b      	subs	r3, r3, r1
    7d7c:	b29b      	uxth	r3, r3
    7d7e:	8283      	strh	r3, [r0, #20]
    7d80:	8a91      	ldrh	r1, [r2, #20]
    7d82:	1acb      	subs	r3, r1, r3
    7d84:	8293      	strh	r3, [r2, #20]
    7d86:	bd30      	pop	{r4, r5, pc}
    7d88:	b29b      	uxth	r3, r3
    7d8a:	2400      	movs	r4, #0
    7d8c:	1acb      	subs	r3, r1, r3
    7d8e:	60c4      	str	r4, [r0, #12]
    7d90:	60d0      	str	r0, [r2, #12]
    7d92:	6102      	str	r2, [r0, #16]
    7d94:	8293      	strh	r3, [r2, #20]
    7d96:	8284      	strh	r4, [r0, #20]
    7d98:	e7f5      	b.n	7d86 <rt_put_dly+0x3e>
    7d9a:	2300      	movs	r3, #0
    7d9c:	0022      	movs	r2, r4
    7d9e:	e7f4      	b.n	7d8a <rt_put_dly+0x42>
    7da0:	0015      	movs	r5, r2
    7da2:	0022      	movs	r2, r4
    7da4:	e7e2      	b.n	7d6c <rt_put_dly+0x24>
    7da6:	46c0      	nop			; (mov r8, r8)
    7da8:	2000609c 	.word	0x2000609c

00007dac <rt_dec_dly>:
    7dac:	b5f0      	push	{r4, r5, r6, r7, lr}
    7dae:	464e      	mov	r6, r9
    7db0:	4657      	mov	r7, sl
    7db2:	4645      	mov	r5, r8
    7db4:	b4e0      	push	{r5, r6, r7}
    7db6:	4e36      	ldr	r6, [pc, #216]	; (7e90 <rt_dec_dly+0xe4>)
    7db8:	68f0      	ldr	r0, [r6, #12]
    7dba:	2800      	cmp	r0, #0
    7dbc:	d059      	beq.n	7e72 <rt_dec_dly+0xc6>
    7dbe:	8ab3      	ldrh	r3, [r6, #20]
    7dc0:	3b01      	subs	r3, #1
    7dc2:	b29b      	uxth	r3, r3
    7dc4:	82b3      	strh	r3, [r6, #20]
    7dc6:	2b00      	cmp	r3, #0
    7dc8:	d153      	bne.n	7e72 <rt_dec_dly+0xc6>
    7dca:	4b32      	ldr	r3, [pc, #200]	; (7e94 <rt_dec_dly+0xe8>)
    7dcc:	2500      	movs	r5, #0
    7dce:	469c      	mov	ip, r3
    7dd0:	781f      	ldrb	r7, [r3, #0]
    7dd2:	4b31      	ldr	r3, [pc, #196]	; (7e98 <rt_dec_dly+0xec>)
    7dd4:	46e2      	mov	sl, ip
    7dd6:	881b      	ldrh	r3, [r3, #0]
    7dd8:	3f01      	subs	r7, #1
    7dda:	4699      	mov	r9, r3
    7ddc:	2301      	movs	r3, #1
    7dde:	4698      	mov	r8, r3
    7de0:	b2ff      	uxtb	r7, r7
    7de2:	6883      	ldr	r3, [r0, #8]
    7de4:	2b00      	cmp	r3, #0
    7de6:	d007      	beq.n	7df8 <rt_dec_dly+0x4c>
    7de8:	6842      	ldr	r2, [r0, #4]
    7dea:	605a      	str	r2, [r3, #4]
    7dec:	6842      	ldr	r2, [r0, #4]
    7dee:	2a00      	cmp	r2, #0
    7df0:	d001      	beq.n	7df6 <rt_dec_dly+0x4a>
    7df2:	6093      	str	r3, [r2, #8]
    7df4:	6045      	str	r5, [r0, #4]
    7df6:	6085      	str	r5, [r0, #8]
    7df8:	4663      	mov	r3, ip
    7dfa:	685a      	ldr	r2, [r3, #4]
    7dfc:	7884      	ldrb	r4, [r0, #2]
    7dfe:	2a00      	cmp	r2, #0
    7e00:	d03c      	beq.n	7e7c <rt_dec_dly+0xd0>
    7e02:	7893      	ldrb	r3, [r2, #2]
    7e04:	42a3      	cmp	r3, r4
    7e06:	d204      	bcs.n	7e12 <rt_dec_dly+0x66>
    7e08:	e01c      	b.n	7e44 <rt_dec_dly+0x98>
    7e0a:	7899      	ldrb	r1, [r3, #2]
    7e0c:	428c      	cmp	r4, r1
    7e0e:	d81b      	bhi.n	7e48 <rt_dec_dly+0x9c>
    7e10:	001a      	movs	r2, r3
    7e12:	6853      	ldr	r3, [r2, #4]
    7e14:	2b00      	cmp	r3, #0
    7e16:	d1f8      	bne.n	7e0a <rt_dec_dly+0x5e>
    7e18:	6045      	str	r5, [r0, #4]
    7e1a:	6050      	str	r0, [r2, #4]
    7e1c:	2f02      	cmp	r7, #2
    7e1e:	d900      	bls.n	7e22 <rt_dec_dly+0x76>
    7e20:	2200      	movs	r2, #0
    7e22:	7843      	ldrb	r3, [r0, #1]
    7e24:	6082      	str	r2, [r0, #8]
    7e26:	8a82      	ldrh	r2, [r0, #20]
    7e28:	2b04      	cmp	r3, #4
    7e2a:	d017      	beq.n	7e5c <rt_dec_dly+0xb0>
    7e2c:	4643      	mov	r3, r8
    7e2e:	7043      	strb	r3, [r0, #1]
    7e30:	68c3      	ldr	r3, [r0, #12]
    7e32:	2b00      	cmp	r3, #0
    7e34:	d01a      	beq.n	7e6c <rt_dec_dly+0xc0>
    7e36:	611e      	str	r6, [r3, #16]
    7e38:	60c5      	str	r5, [r0, #12]
    7e3a:	6105      	str	r5, [r0, #16]
    7e3c:	2a00      	cmp	r2, #0
    7e3e:	d123      	bne.n	7e88 <rt_dec_dly+0xdc>
    7e40:	0018      	movs	r0, r3
    7e42:	e7ce      	b.n	7de2 <rt_dec_dly+0x36>
    7e44:	0013      	movs	r3, r2
    7e46:	4652      	mov	r2, sl
    7e48:	6043      	str	r3, [r0, #4]
    7e4a:	6050      	str	r0, [r2, #4]
    7e4c:	2f02      	cmp	r7, #2
    7e4e:	d8e7      	bhi.n	7e20 <rt_dec_dly+0x74>
    7e50:	6098      	str	r0, [r3, #8]
    7e52:	7843      	ldrb	r3, [r0, #1]
    7e54:	6082      	str	r2, [r0, #8]
    7e56:	8a82      	ldrh	r2, [r0, #20]
    7e58:	2b04      	cmp	r3, #4
    7e5a:	d1e7      	bne.n	7e2c <rt_dec_dly+0x80>
    7e5c:	8ac3      	ldrh	r3, [r0, #22]
    7e5e:	444b      	add	r3, r9
    7e60:	8283      	strh	r3, [r0, #20]
    7e62:	4643      	mov	r3, r8
    7e64:	7043      	strb	r3, [r0, #1]
    7e66:	68c3      	ldr	r3, [r0, #12]
    7e68:	2b00      	cmp	r3, #0
    7e6a:	d1e4      	bne.n	7e36 <rt_dec_dly+0x8a>
    7e6c:	82b2      	strh	r2, [r6, #20]
    7e6e:	60f3      	str	r3, [r6, #12]
    7e70:	6103      	str	r3, [r0, #16]
    7e72:	bc1c      	pop	{r2, r3, r4}
    7e74:	4690      	mov	r8, r2
    7e76:	4699      	mov	r9, r3
    7e78:	46a2      	mov	sl, r4
    7e7a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    7e7c:	4652      	mov	r2, sl
    7e7e:	6045      	str	r5, [r0, #4]
    7e80:	6050      	str	r0, [r2, #4]
    7e82:	2f02      	cmp	r7, #2
    7e84:	d8cc      	bhi.n	7e20 <rt_dec_dly+0x74>
    7e86:	e7cc      	b.n	7e22 <rt_dec_dly+0x76>
    7e88:	82b2      	strh	r2, [r6, #20]
    7e8a:	60f3      	str	r3, [r6, #12]
    7e8c:	e7f1      	b.n	7e72 <rt_dec_dly+0xc6>
    7e8e:	46c0      	nop			; (mov r8, r8)
    7e90:	2000609c 	.word	0x2000609c
    7e94:	20006084 	.word	0x20006084
    7e98:	20006080 	.word	0x20006080

00007e9c <rt_rmv_list>:
    7e9c:	6883      	ldr	r3, [r0, #8]
    7e9e:	2b00      	cmp	r3, #0
    7ea0:	d006      	beq.n	7eb0 <rt_rmv_list+0x14>
    7ea2:	6842      	ldr	r2, [r0, #4]
    7ea4:	605a      	str	r2, [r3, #4]
    7ea6:	6842      	ldr	r2, [r0, #4]
    7ea8:	2a00      	cmp	r2, #0
    7eaa:	d000      	beq.n	7eae <rt_rmv_list+0x12>
    7eac:	6093      	str	r3, [r2, #8]
    7eae:	4770      	bx	lr
    7eb0:	4b04      	ldr	r3, [pc, #16]	; (7ec4 <rt_rmv_list+0x28>)
    7eb2:	e001      	b.n	7eb8 <rt_rmv_list+0x1c>
    7eb4:	1e13      	subs	r3, r2, #0
    7eb6:	d0fa      	beq.n	7eae <rt_rmv_list+0x12>
    7eb8:	685a      	ldr	r2, [r3, #4]
    7eba:	4290      	cmp	r0, r2
    7ebc:	d1fa      	bne.n	7eb4 <rt_rmv_list+0x18>
    7ebe:	6842      	ldr	r2, [r0, #4]
    7ec0:	605a      	str	r2, [r3, #4]
    7ec2:	e7f4      	b.n	7eae <rt_rmv_list+0x12>
    7ec4:	20006084 	.word	0x20006084

00007ec8 <rt_rmv_dly>:
    7ec8:	6903      	ldr	r3, [r0, #16]
    7eca:	b510      	push	{r4, lr}
    7ecc:	2b00      	cmp	r3, #0
    7ece:	d00d      	beq.n	7eec <rt_rmv_dly+0x24>
    7ed0:	68c2      	ldr	r2, [r0, #12]
    7ed2:	60da      	str	r2, [r3, #12]
    7ed4:	68c1      	ldr	r1, [r0, #12]
    7ed6:	2900      	cmp	r1, #0
    7ed8:	d009      	beq.n	7eee <rt_rmv_dly+0x26>
    7eda:	8a9c      	ldrh	r4, [r3, #20]
    7edc:	8a82      	ldrh	r2, [r0, #20]
    7ede:	18a2      	adds	r2, r4, r2
    7ee0:	829a      	strh	r2, [r3, #20]
    7ee2:	610b      	str	r3, [r1, #16]
    7ee4:	2300      	movs	r3, #0
    7ee6:	60c3      	str	r3, [r0, #12]
    7ee8:	2300      	movs	r3, #0
    7eea:	6103      	str	r3, [r0, #16]
    7eec:	bd10      	pop	{r4, pc}
    7eee:	8299      	strh	r1, [r3, #20]
    7ef0:	e7fa      	b.n	7ee8 <rt_rmv_dly+0x20>
    7ef2:	46c0      	nop			; (mov r8, r8)

00007ef4 <rt_psq_enq>:
    7ef4:	b570      	push	{r4, r5, r6, lr}
    7ef6:	4c0f      	ldr	r4, [pc, #60]	; (7f34 <rt_psq_enq+0x40>)
    7ef8:	78e5      	ldrb	r5, [r4, #3]
    7efa:	f3ef 8310 	mrs	r3, PRIMASK
    7efe:	b672      	cpsid	i
    7f00:	78a3      	ldrb	r3, [r4, #2]
    7f02:	429d      	cmp	r5, r3
    7f04:	d907      	bls.n	7f16 <rt_psq_enq+0x22>
    7f06:	1c5a      	adds	r2, r3, #1
    7f08:	7823      	ldrb	r3, [r4, #0]
    7f0a:	70a2      	strb	r2, [r4, #2]
    7f0c:	1c5a      	adds	r2, r3, #1
    7f0e:	4295      	cmp	r5, r2
    7f10:	d00d      	beq.n	7f2e <rt_psq_enq+0x3a>
    7f12:	b2d2      	uxtb	r2, r2
    7f14:	7022      	strb	r2, [r4, #0]
    7f16:	b662      	cpsie	i
    7f18:	429d      	cmp	r5, r3
    7f1a:	d904      	bls.n	7f26 <rt_psq_enq+0x32>
    7f1c:	00db      	lsls	r3, r3, #3
    7f1e:	18e3      	adds	r3, r4, r3
    7f20:	6058      	str	r0, [r3, #4]
    7f22:	6099      	str	r1, [r3, #8]
    7f24:	bd70      	pop	{r4, r5, r6, pc}
    7f26:	2002      	movs	r0, #2
    7f28:	f7f9 fd24 	bl	1974 <os_error>
    7f2c:	e7fa      	b.n	7f24 <rt_psq_enq+0x30>
    7f2e:	2200      	movs	r2, #0
    7f30:	7022      	strb	r2, [r4, #0]
    7f32:	e7f0      	b.n	7f16 <rt_psq_enq+0x22>
    7f34:	20004c58 	.word	0x20004c58

00007f38 <rt_evt_wait>:
    7f38:	4b10      	ldr	r3, [pc, #64]	; (7f7c <rt_evt_wait+0x44>)
    7f3a:	b570      	push	{r4, r5, r6, lr}
    7f3c:	681b      	ldr	r3, [r3, #0]
    7f3e:	000c      	movs	r4, r1
    7f40:	2a00      	cmp	r2, #0
    7f42:	d00b      	beq.n	7f5c <rt_evt_wait+0x24>
    7f44:	0005      	movs	r5, r0
    7f46:	8b1a      	ldrh	r2, [r3, #24]
    7f48:	2106      	movs	r1, #6
    7f4a:	4015      	ands	r5, r2
    7f4c:	42a8      	cmp	r0, r5
    7f4e:	d00a      	beq.n	7f66 <rt_evt_wait+0x2e>
    7f50:	8358      	strh	r0, [r3, #26]
    7f52:	0020      	movs	r0, r4
    7f54:	f000 fa94 	bl	8480 <rt_block>
    7f58:	2001      	movs	r0, #1
    7f5a:	e007      	b.n	7f6c <rt_evt_wait+0x34>
    7f5c:	8b1a      	ldrh	r2, [r3, #24]
    7f5e:	0011      	movs	r1, r2
    7f60:	4001      	ands	r1, r0
    7f62:	d004      	beq.n	7f6e <rt_evt_wait+0x36>
    7f64:	8359      	strh	r1, [r3, #26]
    7f66:	4382      	bics	r2, r0
    7f68:	2002      	movs	r0, #2
    7f6a:	831a      	strh	r2, [r3, #24]
    7f6c:	bd70      	pop	{r4, r5, r6, pc}
    7f6e:	8358      	strh	r0, [r3, #26]
    7f70:	2105      	movs	r1, #5
    7f72:	0020      	movs	r0, r4
    7f74:	f000 fa84 	bl	8480 <rt_block>
    7f78:	2001      	movs	r0, #1
    7f7a:	e7f7      	b.n	7f6c <rt_evt_wait+0x34>
    7f7c:	200060b8 	.word	0x200060b8

00007f80 <rt_evt_set>:
    7f80:	3901      	subs	r1, #1
    7f82:	4b14      	ldr	r3, [pc, #80]	; (7fd4 <rt_evt_set+0x54>)
    7f84:	0089      	lsls	r1, r1, #2
    7f86:	b510      	push	{r4, lr}
    7f88:	58cc      	ldr	r4, [r1, r3]
    7f8a:	2c00      	cmp	r4, #0
    7f8c:	d008      	beq.n	7fa0 <rt_evt_set+0x20>
    7f8e:	8b23      	ldrh	r3, [r4, #24]
    7f90:	8b62      	ldrh	r2, [r4, #26]
    7f92:	4318      	orrs	r0, r3
    7f94:	7863      	ldrb	r3, [r4, #1]
    7f96:	8320      	strh	r0, [r4, #24]
    7f98:	2b06      	cmp	r3, #6
    7f9a:	d016      	beq.n	7fca <rt_evt_set+0x4a>
    7f9c:	2b05      	cmp	r3, #5
    7f9e:	d000      	beq.n	7fa2 <rt_evt_set+0x22>
    7fa0:	bd10      	pop	{r4, pc}
    7fa2:	0013      	movs	r3, r2
    7fa4:	4003      	ands	r3, r0
    7fa6:	d0fb      	beq.n	7fa0 <rt_evt_set+0x20>
    7fa8:	8363      	strh	r3, [r4, #26]
    7faa:	4390      	bics	r0, r2
    7fac:	8320      	strh	r0, [r4, #24]
    7fae:	0020      	movs	r0, r4
    7fb0:	f7ff ff8a 	bl	7ec8 <rt_rmv_dly>
    7fb4:	2301      	movs	r3, #1
    7fb6:	0020      	movs	r0, r4
    7fb8:	7063      	strb	r3, [r4, #1]
    7fba:	8b62      	ldrh	r2, [r4, #26]
    7fbc:	2108      	movs	r1, #8
    7fbe:	f7ff fa1d 	bl	73fc <rt_ret_val2>
    7fc2:	0020      	movs	r0, r4
    7fc4:	f000 fa36 	bl	8434 <rt_dispatch>
    7fc8:	e7ea      	b.n	7fa0 <rt_evt_set+0x20>
    7fca:	0013      	movs	r3, r2
    7fcc:	4003      	ands	r3, r0
    7fce:	429a      	cmp	r2, r3
    7fd0:	d1e6      	bne.n	7fa0 <rt_evt_set+0x20>
    7fd2:	e7ea      	b.n	7faa <rt_evt_set+0x2a>
    7fd4:	20004cdc 	.word	0x20004cdc

00007fd8 <rt_evt_clr>:
    7fd8:	3901      	subs	r1, #1
    7fda:	4b04      	ldr	r3, [pc, #16]	; (7fec <rt_evt_clr+0x14>)
    7fdc:	0089      	lsls	r1, r1, #2
    7fde:	58cb      	ldr	r3, [r1, r3]
    7fe0:	2b00      	cmp	r3, #0
    7fe2:	d002      	beq.n	7fea <rt_evt_clr+0x12>
    7fe4:	8b1a      	ldrh	r2, [r3, #24]
    7fe6:	4382      	bics	r2, r0
    7fe8:	831a      	strh	r2, [r3, #24]
    7fea:	4770      	bx	lr
    7fec:	20004cdc 	.word	0x20004cdc

00007ff0 <isr_evt_set>:
    7ff0:	3901      	subs	r1, #1
    7ff2:	4b06      	ldr	r3, [pc, #24]	; (800c <isr_evt_set+0x1c>)
    7ff4:	0089      	lsls	r1, r1, #2
    7ff6:	58cb      	ldr	r3, [r1, r3]
    7ff8:	b510      	push	{r4, lr}
    7ffa:	2b00      	cmp	r3, #0
    7ffc:	d005      	beq.n	800a <isr_evt_set+0x1a>
    7ffe:	0001      	movs	r1, r0
    8000:	0018      	movs	r0, r3
    8002:	f7ff ff77 	bl	7ef4 <rt_psq_enq>
    8006:	f000 f959 	bl	82bc <rt_psh_req>
    800a:	bd10      	pop	{r4, pc}
    800c:	20004cdc 	.word	0x20004cdc

00008010 <rt_evt_get>:
    8010:	4b01      	ldr	r3, [pc, #4]	; (8018 <rt_evt_get+0x8>)
    8012:	681b      	ldr	r3, [r3, #0]
    8014:	8b58      	ldrh	r0, [r3, #26]
    8016:	4770      	bx	lr
    8018:	200060b8 	.word	0x200060b8

0000801c <rt_evt_psh>:
    801c:	b510      	push	{r4, lr}
    801e:	8b03      	ldrh	r3, [r0, #24]
    8020:	0004      	movs	r4, r0
    8022:	4319      	orrs	r1, r3
    8024:	7843      	ldrb	r3, [r0, #1]
    8026:	8301      	strh	r1, [r0, #24]
    8028:	8b42      	ldrh	r2, [r0, #26]
    802a:	2b06      	cmp	r3, #6
    802c:	d017      	beq.n	805e <rt_evt_psh+0x42>
    802e:	2b05      	cmp	r3, #5
    8030:	d000      	beq.n	8034 <rt_evt_psh+0x18>
    8032:	bd10      	pop	{r4, pc}
    8034:	0013      	movs	r3, r2
    8036:	400b      	ands	r3, r1
    8038:	d0fb      	beq.n	8032 <rt_evt_psh+0x16>
    803a:	8343      	strh	r3, [r0, #26]
    803c:	4391      	bics	r1, r2
    803e:	8321      	strh	r1, [r4, #24]
    8040:	0020      	movs	r0, r4
    8042:	f7ff ff41 	bl	7ec8 <rt_rmv_dly>
    8046:	2301      	movs	r3, #1
    8048:	0020      	movs	r0, r4
    804a:	7063      	strb	r3, [r4, #1]
    804c:	8b62      	ldrh	r2, [r4, #26]
    804e:	2108      	movs	r1, #8
    8050:	f7ff f9d4 	bl	73fc <rt_ret_val2>
    8054:	0021      	movs	r1, r4
    8056:	4804      	ldr	r0, [pc, #16]	; (8068 <rt_evt_psh+0x4c>)
    8058:	f7ff fdd8 	bl	7c0c <rt_put_prio>
    805c:	e7e9      	b.n	8032 <rt_evt_psh+0x16>
    805e:	0013      	movs	r3, r2
    8060:	400b      	ands	r3, r1
    8062:	429a      	cmp	r2, r3
    8064:	d1e5      	bne.n	8032 <rt_evt_psh+0x16>
    8066:	e7e9      	b.n	803c <rt_evt_psh+0x20>
    8068:	20006084 	.word	0x20006084

0000806c <rt_suspend>:
    806c:	4b1c      	ldr	r3, [pc, #112]	; (80e0 <rt_suspend+0x74>)
    806e:	b510      	push	{r4, lr}
    8070:	681b      	ldr	r3, [r3, #0]
    8072:	2b00      	cmp	r3, #0
    8074:	db20      	blt.n	80b8 <rt_suspend+0x4c>
    8076:	491b      	ldr	r1, [pc, #108]	; (80e4 <rt_suspend+0x78>)
    8078:	095a      	lsrs	r2, r3, #5
    807a:	468c      	mov	ip, r1
    807c:	211f      	movs	r1, #31
    807e:	400b      	ands	r3, r1
    8080:	391e      	subs	r1, #30
    8082:	0008      	movs	r0, r1
    8084:	4098      	lsls	r0, r3
    8086:	0092      	lsls	r2, r2, #2
    8088:	4462      	add	r2, ip
    808a:	6010      	str	r0, [r2, #0]
    808c:	4816      	ldr	r0, [pc, #88]	; (80e8 <rt_suspend+0x7c>)
    808e:	4a17      	ldr	r2, [pc, #92]	; (80ec <rt_suspend+0x80>)
    8090:	7001      	strb	r1, [r0, #0]
    8092:	6813      	ldr	r3, [r2, #0]
    8094:	0f1b      	lsrs	r3, r3, #28
    8096:	400b      	ands	r3, r1
    8098:	7043      	strb	r3, [r0, #1]
    809a:	06db      	lsls	r3, r3, #27
    809c:	6013      	str	r3, [r2, #0]
    809e:	4b14      	ldr	r3, [pc, #80]	; (80f0 <rt_suspend+0x84>)
    80a0:	68da      	ldr	r2, [r3, #12]
    80a2:	2a00      	cmp	r2, #0
    80a4:	d019      	beq.n	80da <rt_suspend+0x6e>
    80a6:	8a9c      	ldrh	r4, [r3, #20]
    80a8:	f7fe f9e6 	bl	6478 <sysUserTimerWakeupTime>
    80ac:	0003      	movs	r3, r0
    80ae:	0020      	movs	r0, r4
    80b0:	429c      	cmp	r4, r3
    80b2:	d900      	bls.n	80b6 <rt_suspend+0x4a>
    80b4:	0018      	movs	r0, r3
    80b6:	bd10      	pop	{r4, pc}
    80b8:	2005      	movs	r0, #5
    80ba:	4b0e      	ldr	r3, [pc, #56]	; (80f4 <rt_suspend+0x88>)
    80bc:	490a      	ldr	r1, [pc, #40]	; (80e8 <rt_suspend+0x7c>)
    80be:	6018      	str	r0, [r3, #0]
    80c0:	2301      	movs	r3, #1
    80c2:	4a0a      	ldr	r2, [pc, #40]	; (80ec <rt_suspend+0x80>)
    80c4:	700b      	strb	r3, [r1, #0]
    80c6:	6813      	ldr	r3, [r2, #0]
    80c8:	0e9b      	lsrs	r3, r3, #26
    80ca:	4003      	ands	r3, r0
    80cc:	704b      	strb	r3, [r1, #1]
    80ce:	065b      	lsls	r3, r3, #25
    80d0:	6013      	str	r3, [r2, #0]
    80d2:	4b07      	ldr	r3, [pc, #28]	; (80f0 <rt_suspend+0x84>)
    80d4:	68da      	ldr	r2, [r3, #12]
    80d6:	2a00      	cmp	r2, #0
    80d8:	d1e5      	bne.n	80a6 <rt_suspend+0x3a>
    80da:	4c07      	ldr	r4, [pc, #28]	; (80f8 <rt_suspend+0x8c>)
    80dc:	e7e4      	b.n	80a8 <rt_suspend+0x3c>
    80de:	46c0      	nop			; (mov r8, r8)
    80e0:	200060b4 	.word	0x200060b4
    80e4:	e000e180 	.word	0xe000e180
    80e8:	2000603d 	.word	0x2000603d
    80ec:	e000ed04 	.word	0xe000ed04
    80f0:	2000609c 	.word	0x2000609c
    80f4:	e000e010 	.word	0xe000e010
    80f8:	0000ffff 	.word	0x0000ffff

000080fc <rt_resume>:
    80fc:	b5f0      	push	{r4, r5, r6, r7, lr}
    80fe:	4647      	mov	r7, r8
    8100:	4b32      	ldr	r3, [pc, #200]	; (81cc <rt_resume+0xd0>)
    8102:	b480      	push	{r7}
    8104:	0007      	movs	r7, r0
    8106:	6818      	ldr	r0, [r3, #0]
    8108:	2301      	movs	r3, #1
    810a:	7043      	strb	r3, [r0, #1]
    810c:	4698      	mov	r8, r3
    810e:	f7ff fdb7 	bl	7c80 <rt_put_rdy_first>
    8112:	2200      	movs	r2, #0
    8114:	4b2e      	ldr	r3, [pc, #184]	; (81d0 <rt_resume+0xd4>)
    8116:	4e2f      	ldr	r6, [pc, #188]	; (81d4 <rt_resume+0xd8>)
    8118:	601a      	str	r2, [r3, #0]
    811a:	68f3      	ldr	r3, [r6, #12]
    811c:	2b00      	cmp	r3, #0
    811e:	d04f      	beq.n	81c0 <rt_resume+0xc4>
    8120:	8ab3      	ldrh	r3, [r6, #20]
    8122:	429f      	cmp	r7, r3
    8124:	d336      	bcc.n	8194 <rt_resume+0x98>
    8126:	4d2c      	ldr	r5, [pc, #176]	; (81d8 <rt_resume+0xdc>)
    8128:	1afc      	subs	r4, r7, r3
    812a:	682a      	ldr	r2, [r5, #0]
    812c:	4694      	mov	ip, r2
    812e:	4463      	add	r3, ip
    8130:	602b      	str	r3, [r5, #0]
    8132:	4643      	mov	r3, r8
    8134:	82b3      	strh	r3, [r6, #20]
    8136:	e006      	b.n	8146 <rt_resume+0x4a>
    8138:	682b      	ldr	r3, [r5, #0]
    813a:	3c01      	subs	r4, #1
    813c:	3301      	adds	r3, #1
    813e:	602b      	str	r3, [r5, #0]
    8140:	68f3      	ldr	r3, [r6, #12]
    8142:	2b00      	cmp	r3, #0
    8144:	d003      	beq.n	814e <rt_resume+0x52>
    8146:	f7ff fe31 	bl	7dac <rt_dec_dly>
    814a:	2c00      	cmp	r4, #0
    814c:	d1f4      	bne.n	8138 <rt_resume+0x3c>
    814e:	0038      	movs	r0, r7
    8150:	f7fe f99e 	bl	6490 <sysUserTimerUpdate>
    8154:	4821      	ldr	r0, [pc, #132]	; (81dc <rt_resume+0xe0>)
    8156:	f7ff fd7f 	bl	7c58 <rt_get_first>
    815a:	f000 f963 	bl	8424 <rt_switch_req>
    815e:	4b20      	ldr	r3, [pc, #128]	; (81e0 <rt_resume+0xe4>)
    8160:	681b      	ldr	r3, [r3, #0]
    8162:	2b00      	cmp	r3, #0
    8164:	db1d      	blt.n	81a2 <rt_resume+0xa6>
    8166:	491f      	ldr	r1, [pc, #124]	; (81e4 <rt_resume+0xe8>)
    8168:	095a      	lsrs	r2, r3, #5
    816a:	468c      	mov	ip, r1
    816c:	211f      	movs	r1, #31
    816e:	400b      	ands	r3, r1
    8170:	391e      	subs	r1, #30
    8172:	4099      	lsls	r1, r3
    8174:	0092      	lsls	r2, r2, #2
    8176:	4462      	add	r2, ip
    8178:	6011      	str	r1, [r2, #0]
    817a:	2100      	movs	r1, #0
    817c:	4a1a      	ldr	r2, [pc, #104]	; (81e8 <rt_resume+0xec>)
    817e:	7011      	strb	r1, [r2, #0]
    8180:	7890      	ldrb	r0, [r2, #2]
    8182:	7853      	ldrb	r3, [r2, #1]
    8184:	4303      	orrs	r3, r0
    8186:	4819      	ldr	r0, [pc, #100]	; (81ec <rt_resume+0xf0>)
    8188:	071b      	lsls	r3, r3, #28
    818a:	6003      	str	r3, [r0, #0]
    818c:	7091      	strb	r1, [r2, #2]
    818e:	bc04      	pop	{r2}
    8190:	4690      	mov	r8, r2
    8192:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8194:	4910      	ldr	r1, [pc, #64]	; (81d8 <rt_resume+0xdc>)
    8196:	1bdb      	subs	r3, r3, r7
    8198:	680a      	ldr	r2, [r1, #0]
    819a:	82b3      	strh	r3, [r6, #20]
    819c:	19d2      	adds	r2, r2, r7
    819e:	600a      	str	r2, [r1, #0]
    81a0:	e7d5      	b.n	814e <rt_resume+0x52>
    81a2:	2207      	movs	r2, #7
    81a4:	2000      	movs	r0, #0
    81a6:	4910      	ldr	r1, [pc, #64]	; (81e8 <rt_resume+0xec>)
    81a8:	4b11      	ldr	r3, [pc, #68]	; (81f0 <rt_resume+0xf4>)
    81aa:	601a      	str	r2, [r3, #0]
    81ac:	7008      	strb	r0, [r1, #0]
    81ae:	788b      	ldrb	r3, [r1, #2]
    81b0:	784a      	ldrb	r2, [r1, #1]
    81b2:	009b      	lsls	r3, r3, #2
    81b4:	4313      	orrs	r3, r2
    81b6:	4a0d      	ldr	r2, [pc, #52]	; (81ec <rt_resume+0xf0>)
    81b8:	069b      	lsls	r3, r3, #26
    81ba:	6013      	str	r3, [r2, #0]
    81bc:	7088      	strb	r0, [r1, #2]
    81be:	e7e6      	b.n	818e <rt_resume+0x92>
    81c0:	4a05      	ldr	r2, [pc, #20]	; (81d8 <rt_resume+0xdc>)
    81c2:	6813      	ldr	r3, [r2, #0]
    81c4:	19db      	adds	r3, r3, r7
    81c6:	6013      	str	r3, [r2, #0]
    81c8:	e7c1      	b.n	814e <rt_resume+0x52>
    81ca:	46c0      	nop			; (mov r8, r8)
    81cc:	200060b8 	.word	0x200060b8
    81d0:	200060f4 	.word	0x200060f4
    81d4:	2000609c 	.word	0x2000609c
    81d8:	20006080 	.word	0x20006080
    81dc:	20006084 	.word	0x20006084
    81e0:	200060b4 	.word	0x200060b4
    81e4:	e000e100 	.word	0xe000e100
    81e8:	2000603d 	.word	0x2000603d
    81ec:	e000ed04 	.word	0xe000ed04
    81f0:	e000e010 	.word	0xe000e010

000081f4 <rt_tsk_lock>:
    81f4:	4b13      	ldr	r3, [pc, #76]	; (8244 <rt_tsk_lock+0x50>)
    81f6:	681b      	ldr	r3, [r3, #0]
    81f8:	2b00      	cmp	r3, #0
    81fa:	db14      	blt.n	8226 <rt_tsk_lock+0x32>
    81fc:	4912      	ldr	r1, [pc, #72]	; (8248 <rt_tsk_lock+0x54>)
    81fe:	095a      	lsrs	r2, r3, #5
    8200:	468c      	mov	ip, r1
    8202:	211f      	movs	r1, #31
    8204:	400b      	ands	r3, r1
    8206:	391e      	subs	r1, #30
    8208:	0008      	movs	r0, r1
    820a:	4098      	lsls	r0, r3
    820c:	0092      	lsls	r2, r2, #2
    820e:	4462      	add	r2, ip
    8210:	6010      	str	r0, [r2, #0]
    8212:	480e      	ldr	r0, [pc, #56]	; (824c <rt_tsk_lock+0x58>)
    8214:	4a0e      	ldr	r2, [pc, #56]	; (8250 <rt_tsk_lock+0x5c>)
    8216:	7001      	strb	r1, [r0, #0]
    8218:	6813      	ldr	r3, [r2, #0]
    821a:	0f1b      	lsrs	r3, r3, #28
    821c:	400b      	ands	r3, r1
    821e:	7043      	strb	r3, [r0, #1]
    8220:	06db      	lsls	r3, r3, #27
    8222:	6013      	str	r3, [r2, #0]
    8224:	4770      	bx	lr
    8226:	2005      	movs	r0, #5
    8228:	4b0a      	ldr	r3, [pc, #40]	; (8254 <rt_tsk_lock+0x60>)
    822a:	4908      	ldr	r1, [pc, #32]	; (824c <rt_tsk_lock+0x58>)
    822c:	6018      	str	r0, [r3, #0]
    822e:	2301      	movs	r3, #1
    8230:	4a07      	ldr	r2, [pc, #28]	; (8250 <rt_tsk_lock+0x5c>)
    8232:	700b      	strb	r3, [r1, #0]
    8234:	6813      	ldr	r3, [r2, #0]
    8236:	0e9b      	lsrs	r3, r3, #26
    8238:	4003      	ands	r3, r0
    823a:	704b      	strb	r3, [r1, #1]
    823c:	065b      	lsls	r3, r3, #25
    823e:	6013      	str	r3, [r2, #0]
    8240:	e7f0      	b.n	8224 <rt_tsk_lock+0x30>
    8242:	46c0      	nop			; (mov r8, r8)
    8244:	200060b4 	.word	0x200060b4
    8248:	e000e180 	.word	0xe000e180
    824c:	2000603d 	.word	0x2000603d
    8250:	e000ed04 	.word	0xe000ed04
    8254:	e000e010 	.word	0xe000e010

00008258 <rt_tsk_unlock>:
    8258:	4b13      	ldr	r3, [pc, #76]	; (82a8 <rt_tsk_unlock+0x50>)
    825a:	681b      	ldr	r3, [r3, #0]
    825c:	2b00      	cmp	r3, #0
    825e:	db14      	blt.n	828a <rt_tsk_unlock+0x32>
    8260:	4912      	ldr	r1, [pc, #72]	; (82ac <rt_tsk_unlock+0x54>)
    8262:	095a      	lsrs	r2, r3, #5
    8264:	468c      	mov	ip, r1
    8266:	211f      	movs	r1, #31
    8268:	400b      	ands	r3, r1
    826a:	391e      	subs	r1, #30
    826c:	4099      	lsls	r1, r3
    826e:	0092      	lsls	r2, r2, #2
    8270:	4462      	add	r2, ip
    8272:	6011      	str	r1, [r2, #0]
    8274:	2100      	movs	r1, #0
    8276:	4a0e      	ldr	r2, [pc, #56]	; (82b0 <rt_tsk_unlock+0x58>)
    8278:	7011      	strb	r1, [r2, #0]
    827a:	7890      	ldrb	r0, [r2, #2]
    827c:	7853      	ldrb	r3, [r2, #1]
    827e:	4303      	orrs	r3, r0
    8280:	480c      	ldr	r0, [pc, #48]	; (82b4 <rt_tsk_unlock+0x5c>)
    8282:	071b      	lsls	r3, r3, #28
    8284:	6003      	str	r3, [r0, #0]
    8286:	7091      	strb	r1, [r2, #2]
    8288:	4770      	bx	lr
    828a:	2207      	movs	r2, #7
    828c:	2000      	movs	r0, #0
    828e:	4908      	ldr	r1, [pc, #32]	; (82b0 <rt_tsk_unlock+0x58>)
    8290:	4b09      	ldr	r3, [pc, #36]	; (82b8 <rt_tsk_unlock+0x60>)
    8292:	601a      	str	r2, [r3, #0]
    8294:	7008      	strb	r0, [r1, #0]
    8296:	788b      	ldrb	r3, [r1, #2]
    8298:	784a      	ldrb	r2, [r1, #1]
    829a:	009b      	lsls	r3, r3, #2
    829c:	4313      	orrs	r3, r2
    829e:	4a05      	ldr	r2, [pc, #20]	; (82b4 <rt_tsk_unlock+0x5c>)
    82a0:	069b      	lsls	r3, r3, #26
    82a2:	6013      	str	r3, [r2, #0]
    82a4:	7088      	strb	r0, [r1, #2]
    82a6:	e7ef      	b.n	8288 <rt_tsk_unlock+0x30>
    82a8:	200060b4 	.word	0x200060b4
    82ac:	e000e100 	.word	0xe000e100
    82b0:	2000603d 	.word	0x2000603d
    82b4:	e000ed04 	.word	0xe000ed04
    82b8:	e000e010 	.word	0xe000e010

000082bc <rt_psh_req>:
    82bc:	4b05      	ldr	r3, [pc, #20]	; (82d4 <rt_psh_req+0x18>)
    82be:	781a      	ldrb	r2, [r3, #0]
    82c0:	2a00      	cmp	r2, #0
    82c2:	d002      	beq.n	82ca <rt_psh_req+0xe>
    82c4:	2201      	movs	r2, #1
    82c6:	709a      	strb	r2, [r3, #2]
    82c8:	4770      	bx	lr
    82ca:	2280      	movs	r2, #128	; 0x80
    82cc:	4b02      	ldr	r3, [pc, #8]	; (82d8 <rt_psh_req+0x1c>)
    82ce:	0552      	lsls	r2, r2, #21
    82d0:	601a      	str	r2, [r3, #0]
    82d2:	e7f9      	b.n	82c8 <rt_psh_req+0xc>
    82d4:	2000603d 	.word	0x2000603d
    82d8:	e000ed04 	.word	0xe000ed04

000082dc <rt_pop_req>:
    82dc:	4b1c      	ldr	r3, [pc, #112]	; (8350 <rt_pop_req+0x74>)
    82de:	b570      	push	{r4, r5, r6, lr}
    82e0:	6818      	ldr	r0, [r3, #0]
    82e2:	2301      	movs	r3, #1
    82e4:	7043      	strb	r3, [r0, #1]
    82e6:	f7ff fccb 	bl	7c80 <rt_put_rdy_first>
    82ea:	4d1a      	ldr	r5, [pc, #104]	; (8354 <rt_pop_req+0x78>)
    82ec:	78ab      	ldrb	r3, [r5, #2]
    82ee:	786c      	ldrb	r4, [r5, #1]
    82f0:	2b00      	cmp	r3, #0
    82f2:	d112      	bne.n	831a <rt_pop_req+0x3e>
    82f4:	e024      	b.n	8340 <rt_pop_req+0x64>
    82f6:	2a01      	cmp	r2, #1
    82f8:	d01e      	beq.n	8338 <rt_pop_req+0x5c>
    82fa:	f7ff fb13 	bl	7924 <rt_sem_psh>
    82fe:	78eb      	ldrb	r3, [r5, #3]
    8300:	3401      	adds	r4, #1
    8302:	429c      	cmp	r4, r3
    8304:	d016      	beq.n	8334 <rt_pop_req+0x58>
    8306:	f3ef 8310 	mrs	r3, PRIMASK
    830a:	b672      	cpsid	i
    830c:	78ab      	ldrb	r3, [r5, #2]
    830e:	3b01      	subs	r3, #1
    8310:	b2db      	uxtb	r3, r3
    8312:	70ab      	strb	r3, [r5, #2]
    8314:	b662      	cpsie	i
    8316:	2b00      	cmp	r3, #0
    8318:	d012      	beq.n	8340 <rt_pop_req+0x64>
    831a:	00e3      	lsls	r3, r4, #3
    831c:	18eb      	adds	r3, r5, r3
    831e:	6858      	ldr	r0, [r3, #4]
    8320:	7802      	ldrb	r2, [r0, #0]
    8322:	2a00      	cmp	r2, #0
    8324:	d1e7      	bne.n	82f6 <rt_pop_req+0x1a>
    8326:	8919      	ldrh	r1, [r3, #8]
    8328:	f7ff fe78 	bl	801c <rt_evt_psh>
    832c:	78eb      	ldrb	r3, [r5, #3]
    832e:	3401      	adds	r4, #1
    8330:	429c      	cmp	r4, r3
    8332:	d1e8      	bne.n	8306 <rt_pop_req+0x2a>
    8334:	2400      	movs	r4, #0
    8336:	e7e6      	b.n	8306 <rt_pop_req+0x2a>
    8338:	6899      	ldr	r1, [r3, #8]
    833a:	f7ff fbf9 	bl	7b30 <rt_mbx_psh>
    833e:	e7de      	b.n	82fe <rt_pop_req+0x22>
    8340:	706c      	strb	r4, [r5, #1]
    8342:	4805      	ldr	r0, [pc, #20]	; (8358 <rt_pop_req+0x7c>)
    8344:	f7ff fc88 	bl	7c58 <rt_get_first>
    8348:	f000 f86c 	bl	8424 <rt_switch_req>
    834c:	bd70      	pop	{r4, r5, r6, pc}
    834e:	46c0      	nop			; (mov r8, r8)
    8350:	200060b8 	.word	0x200060b8
    8354:	20004c58 	.word	0x20004c58
    8358:	20006084 	.word	0x20006084

0000835c <os_tick_init>:
    835c:	4b09      	ldr	r3, [pc, #36]	; (8384 <os_tick_init+0x28>)
    835e:	21ff      	movs	r1, #255	; 0xff
    8360:	681a      	ldr	r2, [r3, #0]
    8362:	4b09      	ldr	r3, [pc, #36]	; (8388 <os_tick_init+0x2c>)
    8364:	2001      	movs	r0, #1
    8366:	601a      	str	r2, [r3, #0]
    8368:	2200      	movs	r2, #0
    836a:	4b08      	ldr	r3, [pc, #32]	; (838c <os_tick_init+0x30>)
    836c:	0609      	lsls	r1, r1, #24
    836e:	601a      	str	r2, [r3, #0]
    8370:	4b07      	ldr	r3, [pc, #28]	; (8390 <os_tick_init+0x34>)
    8372:	3207      	adds	r2, #7
    8374:	601a      	str	r2, [r3, #0]
    8376:	4a07      	ldr	r2, [pc, #28]	; (8394 <os_tick_init+0x38>)
    8378:	4240      	negs	r0, r0
    837a:	6813      	ldr	r3, [r2, #0]
    837c:	430b      	orrs	r3, r1
    837e:	6013      	str	r3, [r2, #0]
    8380:	4770      	bx	lr
    8382:	46c0      	nop			; (mov r8, r8)
    8384:	00008b18 	.word	0x00008b18
    8388:	e000e014 	.word	0xe000e014
    838c:	e000e018 	.word	0xe000e018
    8390:	e000e010 	.word	0xe000e010
    8394:	e000ed20 	.word	0xe000ed20

00008398 <os_tick_val>:
    8398:	4b02      	ldr	r3, [pc, #8]	; (83a4 <os_tick_val+0xc>)
    839a:	6818      	ldr	r0, [r3, #0]
    839c:	4b02      	ldr	r3, [pc, #8]	; (83a8 <os_tick_val+0x10>)
    839e:	681b      	ldr	r3, [r3, #0]
    83a0:	1a18      	subs	r0, r3, r0
    83a2:	4770      	bx	lr
    83a4:	e000e018 	.word	0xe000e018
    83a8:	00008b18 	.word	0x00008b18

000083ac <os_tick_ovf>:
    83ac:	4b02      	ldr	r3, [pc, #8]	; (83b8 <os_tick_ovf+0xc>)
    83ae:	6818      	ldr	r0, [r3, #0]
    83b0:	0140      	lsls	r0, r0, #5
    83b2:	0fc0      	lsrs	r0, r0, #31
    83b4:	4770      	bx	lr
    83b6:	46c0      	nop			; (mov r8, r8)
    83b8:	e000ed04 	.word	0xe000ed04

000083bc <os_tick_irqack>:
    83bc:	4770      	bx	lr
    83be:	46c0      	nop			; (mov r8, r8)

000083c0 <rt_systick>:
    83c0:	4b0b      	ldr	r3, [pc, #44]	; (83f0 <rt_systick+0x30>)
    83c2:	b510      	push	{r4, lr}
    83c4:	6818      	ldr	r0, [r3, #0]
    83c6:	2301      	movs	r3, #1
    83c8:	7043      	strb	r3, [r0, #1]
    83ca:	f7ff fc59 	bl	7c80 <rt_put_rdy_first>
    83ce:	f000 faeb 	bl	89a8 <rt_chk_robin>
    83d2:	4a08      	ldr	r2, [pc, #32]	; (83f4 <rt_systick+0x34>)
    83d4:	6813      	ldr	r3, [r2, #0]
    83d6:	3301      	adds	r3, #1
    83d8:	6013      	str	r3, [r2, #0]
    83da:	f7ff fce7 	bl	7dac <rt_dec_dly>
    83de:	f7fd ffed 	bl	63bc <sysTimerTick>
    83e2:	4805      	ldr	r0, [pc, #20]	; (83f8 <rt_systick+0x38>)
    83e4:	f7ff fc38 	bl	7c58 <rt_get_first>
    83e8:	f000 f81c 	bl	8424 <rt_switch_req>
    83ec:	bd10      	pop	{r4, pc}
    83ee:	46c0      	nop			; (mov r8, r8)
    83f0:	200060b8 	.word	0x200060b8
    83f4:	20006080 	.word	0x20006080
    83f8:	20006084 	.word	0x20006084

000083fc <rt_stk_check>:
    83fc:	4b07      	ldr	r3, [pc, #28]	; (841c <rt_stk_check+0x20>)
    83fe:	b510      	push	{r4, lr}
    8400:	681b      	ldr	r3, [r3, #0]
    8402:	6ada      	ldr	r2, [r3, #44]	; 0x2c
    8404:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    8406:	429a      	cmp	r2, r3
    8408:	d803      	bhi.n	8412 <rt_stk_check+0x16>
    840a:	4b05      	ldr	r3, [pc, #20]	; (8420 <rt_stk_check+0x24>)
    840c:	6812      	ldr	r2, [r2, #0]
    840e:	429a      	cmp	r2, r3
    8410:	d002      	beq.n	8418 <rt_stk_check+0x1c>
    8412:	2001      	movs	r0, #1
    8414:	f7f9 faae 	bl	1974 <os_error>
    8418:	bd10      	pop	{r4, pc}
    841a:	46c0      	nop			; (mov r8, r8)
    841c:	200060b8 	.word	0x200060b8
    8420:	e25a2ea5 	.word	0xe25a2ea5

00008424 <rt_switch_req>:
    8424:	4b02      	ldr	r3, [pc, #8]	; (8430 <rt_switch_req+0xc>)
    8426:	6058      	str	r0, [r3, #4]
    8428:	2302      	movs	r3, #2
    842a:	7043      	strb	r3, [r0, #1]
    842c:	4770      	bx	lr
    842e:	46c0      	nop			; (mov r8, r8)
    8430:	200060b8 	.word	0x200060b8

00008434 <rt_dispatch>:
    8434:	b570      	push	{r4, r5, r6, lr}
    8436:	1e04      	subs	r4, r0, #0
    8438:	d015      	beq.n	8466 <rt_dispatch+0x32>
    843a:	4d0f      	ldr	r5, [pc, #60]	; (8478 <rt_dispatch+0x44>)
    843c:	78a2      	ldrb	r2, [r4, #2]
    843e:	6828      	ldr	r0, [r5, #0]
    8440:	7883      	ldrb	r3, [r0, #2]
    8442:	429a      	cmp	r2, r3
    8444:	d806      	bhi.n	8454 <rt_dispatch+0x20>
    8446:	2301      	movs	r3, #1
    8448:	0021      	movs	r1, r4
    844a:	7063      	strb	r3, [r4, #1]
    844c:	480b      	ldr	r0, [pc, #44]	; (847c <rt_dispatch+0x48>)
    844e:	f7ff fbdd 	bl	7c0c <rt_put_prio>
    8452:	bd70      	pop	{r4, r5, r6, pc}
    8454:	f7ff fc14 	bl	7c80 <rt_put_rdy_first>
    8458:	2301      	movs	r3, #1
    845a:	682a      	ldr	r2, [r5, #0]
    845c:	7053      	strb	r3, [r2, #1]
    845e:	3301      	adds	r3, #1
    8460:	606c      	str	r4, [r5, #4]
    8462:	7063      	strb	r3, [r4, #1]
    8464:	e7f5      	b.n	8452 <rt_dispatch+0x1e>
    8466:	4805      	ldr	r0, [pc, #20]	; (847c <rt_dispatch+0x48>)
    8468:	f7ff fbf6 	bl	7c58 <rt_get_first>
    846c:	4b02      	ldr	r3, [pc, #8]	; (8478 <rt_dispatch+0x44>)
    846e:	6058      	str	r0, [r3, #4]
    8470:	2302      	movs	r3, #2
    8472:	7043      	strb	r3, [r0, #1]
    8474:	e7ed      	b.n	8452 <rt_dispatch+0x1e>
    8476:	46c0      	nop			; (mov r8, r8)
    8478:	200060b8 	.word	0x200060b8
    847c:	20006084 	.word	0x20006084

00008480 <rt_block>:
    8480:	b570      	push	{r4, r5, r6, lr}
    8482:	000d      	movs	r5, r1
    8484:	2800      	cmp	r0, #0
    8486:	d00f      	beq.n	84a8 <rt_block+0x28>
    8488:	4b08      	ldr	r3, [pc, #32]	; (84ac <rt_block+0x2c>)
    848a:	4c09      	ldr	r4, [pc, #36]	; (84b0 <rt_block+0x30>)
    848c:	4298      	cmp	r0, r3
    848e:	d003      	beq.n	8498 <rt_block+0x18>
    8490:	0001      	movs	r1, r0
    8492:	6820      	ldr	r0, [r4, #0]
    8494:	f7ff fc58 	bl	7d48 <rt_put_dly>
    8498:	6823      	ldr	r3, [r4, #0]
    849a:	4806      	ldr	r0, [pc, #24]	; (84b4 <rt_block+0x34>)
    849c:	705d      	strb	r5, [r3, #1]
    849e:	f7ff fbdb 	bl	7c58 <rt_get_first>
    84a2:	2302      	movs	r3, #2
    84a4:	6060      	str	r0, [r4, #4]
    84a6:	7043      	strb	r3, [r0, #1]
    84a8:	bd70      	pop	{r4, r5, r6, pc}
    84aa:	46c0      	nop			; (mov r8, r8)
    84ac:	0000ffff 	.word	0x0000ffff
    84b0:	200060b8 	.word	0x200060b8
    84b4:	20006084 	.word	0x20006084

000084b8 <rt_tsk_pass>:
    84b8:	b570      	push	{r4, r5, r6, lr}
    84ba:	f7ff fbeb 	bl	7c94 <rt_get_same_rdy_prio>
    84be:	1e04      	subs	r4, r0, #0
    84c0:	d00a      	beq.n	84d8 <rt_tsk_pass+0x20>
    84c2:	4d06      	ldr	r5, [pc, #24]	; (84dc <rt_tsk_pass+0x24>)
    84c4:	4806      	ldr	r0, [pc, #24]	; (84e0 <rt_tsk_pass+0x28>)
    84c6:	6829      	ldr	r1, [r5, #0]
    84c8:	f7ff fba0 	bl	7c0c <rt_put_prio>
    84cc:	2301      	movs	r3, #1
    84ce:	682a      	ldr	r2, [r5, #0]
    84d0:	7053      	strb	r3, [r2, #1]
    84d2:	3301      	adds	r3, #1
    84d4:	606c      	str	r4, [r5, #4]
    84d6:	7063      	strb	r3, [r4, #1]
    84d8:	bd70      	pop	{r4, r5, r6, pc}
    84da:	46c0      	nop			; (mov r8, r8)
    84dc:	200060b8 	.word	0x200060b8
    84e0:	20006084 	.word	0x20006084

000084e4 <rt_tsk_self>:
    84e4:	4b03      	ldr	r3, [pc, #12]	; (84f4 <rt_tsk_self+0x10>)
    84e6:	681b      	ldr	r3, [r3, #0]
    84e8:	2b00      	cmp	r3, #0
    84ea:	d001      	beq.n	84f0 <rt_tsk_self+0xc>
    84ec:	78d8      	ldrb	r0, [r3, #3]
    84ee:	4770      	bx	lr
    84f0:	2000      	movs	r0, #0
    84f2:	e7fc      	b.n	84ee <rt_tsk_self+0xa>
    84f4:	200060b8 	.word	0x200060b8

000084f8 <rt_tsk_prio>:
    84f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    84fa:	2800      	cmp	r0, #0
    84fc:	d10c      	bne.n	8518 <rt_tsk_prio+0x20>
    84fe:	2224      	movs	r2, #36	; 0x24
    8500:	4c27      	ldr	r4, [pc, #156]	; (85a0 <rt_tsk_prio+0xa8>)
    8502:	6823      	ldr	r3, [r4, #0]
    8504:	7099      	strb	r1, [r3, #2]
    8506:	5499      	strb	r1, [r3, r2]
    8508:	4d26      	ldr	r5, [pc, #152]	; (85a4 <rt_tsk_prio+0xac>)
    850a:	686a      	ldr	r2, [r5, #4]
    850c:	7892      	ldrb	r2, [r2, #2]
    850e:	428a      	cmp	r2, r1
    8510:	d82c      	bhi.n	856c <rt_tsk_prio+0x74>
    8512:	2200      	movs	r2, #0
    8514:	0010      	movs	r0, r2
    8516:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8518:	4b23      	ldr	r3, [pc, #140]	; (85a8 <rt_tsk_prio+0xb0>)
    851a:	22ff      	movs	r2, #255	; 0xff
    851c:	881b      	ldrh	r3, [r3, #0]
    851e:	4298      	cmp	r0, r3
    8520:	d8f8      	bhi.n	8514 <rt_tsk_prio+0x1c>
    8522:	1e43      	subs	r3, r0, #1
    8524:	4821      	ldr	r0, [pc, #132]	; (85ac <rt_tsk_prio+0xb4>)
    8526:	009b      	lsls	r3, r3, #2
    8528:	581d      	ldr	r5, [r3, r0]
    852a:	2d00      	cmp	r5, #0
    852c:	d0f2      	beq.n	8514 <rt_tsk_prio+0x1c>
    852e:	2324      	movs	r3, #36	; 0x24
    8530:	4c1b      	ldr	r4, [pc, #108]	; (85a0 <rt_tsk_prio+0xa8>)
    8532:	70a9      	strb	r1, [r5, #2]
    8534:	54e9      	strb	r1, [r5, r3]
    8536:	6823      	ldr	r3, [r4, #0]
    8538:	429d      	cmp	r5, r3
    853a:	d0e5      	beq.n	8508 <rt_tsk_prio+0x10>
    853c:	0028      	movs	r0, r5
    853e:	f7ff fbbb 	bl	7cb8 <rt_resort_prio>
    8542:	786d      	ldrb	r5, [r5, #1]
    8544:	2d01      	cmp	r5, #1
    8546:	d1e4      	bne.n	8512 <rt_tsk_prio+0x1a>
    8548:	4f16      	ldr	r7, [pc, #88]	; (85a4 <rt_tsk_prio+0xac>)
    854a:	0038      	movs	r0, r7
    854c:	f7ff fb84 	bl	7c58 <rt_get_first>
    8550:	1e06      	subs	r6, r0, #0
    8552:	d023      	beq.n	859c <rt_tsk_prio+0xa4>
    8554:	6820      	ldr	r0, [r4, #0]
    8556:	78b2      	ldrb	r2, [r6, #2]
    8558:	7883      	ldrb	r3, [r0, #2]
    855a:	429a      	cmp	r2, r3
    855c:	d815      	bhi.n	858a <rt_tsk_prio+0x92>
    855e:	7075      	strb	r5, [r6, #1]
    8560:	0031      	movs	r1, r6
    8562:	0038      	movs	r0, r7
    8564:	f7ff fb52 	bl	7c0c <rt_put_prio>
    8568:	2200      	movs	r2, #0
    856a:	e7d3      	b.n	8514 <rt_tsk_prio+0x1c>
    856c:	0019      	movs	r1, r3
    856e:	0028      	movs	r0, r5
    8570:	f7ff fb4c 	bl	7c0c <rt_put_prio>
    8574:	2301      	movs	r3, #1
    8576:	0028      	movs	r0, r5
    8578:	6822      	ldr	r2, [r4, #0]
    857a:	7053      	strb	r3, [r2, #1]
    857c:	f7ff fb6c 	bl	7c58 <rt_get_first>
    8580:	2302      	movs	r3, #2
    8582:	6060      	str	r0, [r4, #4]
    8584:	2200      	movs	r2, #0
    8586:	7043      	strb	r3, [r0, #1]
    8588:	e7c4      	b.n	8514 <rt_tsk_prio+0x1c>
    858a:	f7ff fb79 	bl	7c80 <rt_put_rdy_first>
    858e:	6823      	ldr	r3, [r4, #0]
    8590:	2200      	movs	r2, #0
    8592:	705d      	strb	r5, [r3, #1]
    8594:	2302      	movs	r3, #2
    8596:	6066      	str	r6, [r4, #4]
    8598:	7073      	strb	r3, [r6, #1]
    859a:	e7bb      	b.n	8514 <rt_tsk_prio+0x1c>
    859c:	0038      	movs	r0, r7
    859e:	e7ed      	b.n	857c <rt_tsk_prio+0x84>
    85a0:	200060b8 	.word	0x200060b8
    85a4:	20006084 	.word	0x20006084
    85a8:	00008b04 	.word	0x00008b04
    85ac:	20004cdc 	.word	0x20004cdc

000085b0 <rt_tsk_create>:
    85b0:	b5f0      	push	{r4, r5, r6, r7, lr}
    85b2:	4647      	mov	r7, r8
    85b4:	b480      	push	{r7}
    85b6:	001f      	movs	r7, r3
    85b8:	23ff      	movs	r3, #255	; 0xff
    85ba:	400b      	ands	r3, r1
    85bc:	4690      	mov	r8, r2
    85be:	001a      	movs	r2, r3
    85c0:	4253      	negs	r3, r2
    85c2:	4153      	adcs	r3, r2
    85c4:	0006      	movs	r6, r0
    85c6:	4831      	ldr	r0, [pc, #196]	; (868c <rt_tsk_create+0xdc>)
    85c8:	18cc      	adds	r4, r1, r3
    85ca:	f7fe ff95 	bl	74f8 <rt_alloc_box>
    85ce:	1e05      	subs	r5, r0, #0
    85d0:	d032      	beq.n	8638 <rt_tsk_create+0x88>
    85d2:	4643      	mov	r3, r8
    85d4:	2101      	movs	r1, #1
    85d6:	62c3      	str	r3, [r0, #44]	; 0x2c
    85d8:	2300      	movs	r3, #0
    85da:	0a22      	lsrs	r2, r4, #8
    85dc:	7041      	strb	r1, [r0, #1]
    85de:	b2e4      	uxtb	r4, r4
    85e0:	3123      	adds	r1, #35	; 0x23
    85e2:	b292      	uxth	r2, r2
    85e4:	7003      	strb	r3, [r0, #0]
    85e6:	84c2      	strh	r2, [r0, #38]	; 0x26
    85e8:	61c7      	str	r7, [r0, #28]
    85ea:	7084      	strb	r4, [r0, #2]
    85ec:	5444      	strb	r4, [r0, r1]
    85ee:	2100      	movs	r1, #0
    85f0:	6043      	str	r3, [r0, #4]
    85f2:	6083      	str	r3, [r0, #8]
    85f4:	60c3      	str	r3, [r0, #12]
    85f6:	6103      	str	r3, [r0, #16]
    85f8:	6203      	str	r3, [r0, #32]
    85fa:	8283      	strh	r3, [r0, #20]
    85fc:	82c3      	strh	r3, [r0, #22]
    85fe:	8303      	strh	r3, [r0, #24]
    8600:	8343      	strh	r3, [r0, #26]
    8602:	3325      	adds	r3, #37	; 0x25
    8604:	54c1      	strb	r1, [r0, r3]
    8606:	2a00      	cmp	r2, #0
    8608:	d01a      	beq.n	8640 <rt_tsk_create+0x90>
    860a:	0031      	movs	r1, r6
    860c:	0028      	movs	r0, r5
    860e:	f7fe fe99 	bl	7344 <rt_init_stack>
    8612:	4b1f      	ldr	r3, [pc, #124]	; (8690 <rt_tsk_create+0xe0>)
    8614:	8819      	ldrh	r1, [r3, #0]
    8616:	2900      	cmp	r1, #0
    8618:	d00e      	beq.n	8638 <rt_tsk_create+0x88>
    861a:	481e      	ldr	r0, [pc, #120]	; (8694 <rt_tsk_create+0xe4>)
    861c:	6803      	ldr	r3, [r0, #0]
    861e:	2b00      	cmp	r3, #0
    8620:	d02f      	beq.n	8682 <rt_tsk_create+0xd2>
    8622:	2201      	movs	r2, #1
    8624:	e005      	b.n	8632 <rt_tsk_create+0x82>
    8626:	00a3      	lsls	r3, r4, #2
    8628:	3b04      	subs	r3, #4
    862a:	58c3      	ldr	r3, [r0, r3]
    862c:	2b00      	cmp	r3, #0
    862e:	d00c      	beq.n	864a <rt_tsk_create+0x9a>
    8630:	0022      	movs	r2, r4
    8632:	1c54      	adds	r4, r2, #1
    8634:	428c      	cmp	r4, r1
    8636:	d9f6      	bls.n	8626 <rt_tsk_create+0x76>
    8638:	2000      	movs	r0, #0
    863a:	bc04      	pop	{r2}
    863c:	4690      	mov	r8, r2
    863e:	bdf0      	pop	{r4, r5, r6, r7, pc}
    8640:	4815      	ldr	r0, [pc, #84]	; (8698 <rt_tsk_create+0xe8>)
    8642:	f7fe ff59 	bl	74f8 <rt_alloc_box>
    8646:	62e8      	str	r0, [r5, #44]	; 0x2c
    8648:	e7df      	b.n	860a <rt_tsk_create+0x5a>
    864a:	b2e3      	uxtb	r3, r4
    864c:	0092      	lsls	r2, r2, #2
    864e:	4e13      	ldr	r6, [pc, #76]	; (869c <rt_tsk_create+0xec>)
    8650:	5085      	str	r5, [r0, r2]
    8652:	70eb      	strb	r3, [r5, #3]
    8654:	6830      	ldr	r0, [r6, #0]
    8656:	78aa      	ldrb	r2, [r5, #2]
    8658:	7883      	ldrb	r3, [r0, #2]
    865a:	429a      	cmp	r2, r3
    865c:	d807      	bhi.n	866e <rt_tsk_create+0xbe>
    865e:	2301      	movs	r3, #1
    8660:	480f      	ldr	r0, [pc, #60]	; (86a0 <rt_tsk_create+0xf0>)
    8662:	706b      	strb	r3, [r5, #1]
    8664:	0029      	movs	r1, r5
    8666:	f7ff fad1 	bl	7c0c <rt_put_prio>
    866a:	0020      	movs	r0, r4
    866c:	e7e5      	b.n	863a <rt_tsk_create+0x8a>
    866e:	f7ff fb07 	bl	7c80 <rt_put_rdy_first>
    8672:	2301      	movs	r3, #1
    8674:	6832      	ldr	r2, [r6, #0]
    8676:	0020      	movs	r0, r4
    8678:	7053      	strb	r3, [r2, #1]
    867a:	3301      	adds	r3, #1
    867c:	6075      	str	r5, [r6, #4]
    867e:	706b      	strb	r3, [r5, #1]
    8680:	e7db      	b.n	863a <rt_tsk_create+0x8a>
    8682:	2301      	movs	r3, #1
    8684:	2200      	movs	r2, #0
    8686:	2401      	movs	r4, #1
    8688:	e7e0      	b.n	864c <rt_tsk_create+0x9c>
    868a:	46c0      	nop			; (mov r8, r8)
    868c:	20000908 	.word	0x20000908
    8690:	00008b04 	.word	0x00008b04
    8694:	20004cdc 	.word	0x20004cdc
    8698:	200009e8 	.word	0x200009e8
    869c:	200060b8 	.word	0x200060b8
    86a0:	20006084 	.word	0x20006084

000086a4 <rt_tsk_delete>:
    86a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    86a6:	4644      	mov	r4, r8
    86a8:	465f      	mov	r7, fp
    86aa:	4656      	mov	r6, sl
    86ac:	464d      	mov	r5, r9
    86ae:	4b5a      	ldr	r3, [pc, #360]	; (8818 <rt_tsk_delete+0x174>)
    86b0:	b4f0      	push	{r4, r5, r6, r7}
    86b2:	4698      	mov	r8, r3
    86b4:	681c      	ldr	r4, [r3, #0]
    86b6:	2800      	cmp	r0, #0
    86b8:	d00e      	beq.n	86d8 <rt_tsk_delete+0x34>
    86ba:	78e3      	ldrb	r3, [r4, #3]
    86bc:	4298      	cmp	r0, r3
    86be:	d00b      	beq.n	86d8 <rt_tsk_delete+0x34>
    86c0:	4b56      	ldr	r3, [pc, #344]	; (881c <rt_tsk_delete+0x178>)
    86c2:	881a      	ldrh	r2, [r3, #0]
    86c4:	23ff      	movs	r3, #255	; 0xff
    86c6:	4290      	cmp	r0, r2
    86c8:	d952      	bls.n	8770 <rt_tsk_delete+0xcc>
    86ca:	0018      	movs	r0, r3
    86cc:	bc3c      	pop	{r2, r3, r4, r5}
    86ce:	4690      	mov	r8, r2
    86d0:	4699      	mov	r9, r3
    86d2:	46a2      	mov	sl, r4
    86d4:	46ab      	mov	fp, r5
    86d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    86d8:	2300      	movs	r3, #0
    86da:	7063      	strb	r3, [r4, #1]
    86dc:	f7fc fa57 	bl	4b8e <rt_get_PSP>
    86e0:	62a0      	str	r0, [r4, #40]	; 0x28
    86e2:	f7ff fe8b 	bl	83fc <rt_stk_check>
    86e6:	4643      	mov	r3, r8
    86e8:	681a      	ldr	r2, [r3, #0]
    86ea:	4f4d      	ldr	r7, [pc, #308]	; (8820 <rt_tsk_delete+0x17c>)
    86ec:	6a14      	ldr	r4, [r2, #32]
    86ee:	2c00      	cmp	r4, #0
    86f0:	d023      	beq.n	873a <rt_tsk_delete+0x96>
    86f2:	2601      	movs	r6, #1
    86f4:	e016      	b.n	8724 <rt_tsk_delete+0x80>
    86f6:	0020      	movs	r0, r4
    86f8:	f7ff faae 	bl	7c58 <rt_get_first>
    86fc:	0005      	movs	r5, r0
    86fe:	2100      	movs	r1, #0
    8700:	f7fe fe78 	bl	73f4 <rt_ret_val>
    8704:	0028      	movs	r0, r5
    8706:	f7ff fbdf 	bl	7ec8 <rt_rmv_dly>
    870a:	706e      	strb	r6, [r5, #1]
    870c:	0029      	movs	r1, r5
    870e:	0038      	movs	r0, r7
    8710:	f7ff fa7c 	bl	7c0c <rt_put_prio>
    8714:	68e3      	ldr	r3, [r4, #12]
    8716:	6a2a      	ldr	r2, [r5, #32]
    8718:	8066      	strh	r6, [r4, #2]
    871a:	60a5      	str	r5, [r4, #8]
    871c:	60e2      	str	r2, [r4, #12]
    871e:	622c      	str	r4, [r5, #32]
    8720:	1e1c      	subs	r4, r3, #0
    8722:	d008      	beq.n	8736 <rt_tsk_delete+0x92>
    8724:	6863      	ldr	r3, [r4, #4]
    8726:	2b00      	cmp	r3, #0
    8728:	d1e5      	bne.n	86f6 <rt_tsk_delete+0x52>
    872a:	68e2      	ldr	r2, [r4, #12]
    872c:	8063      	strh	r3, [r4, #2]
    872e:	60a3      	str	r3, [r4, #8]
    8730:	60e3      	str	r3, [r4, #12]
    8732:	1e14      	subs	r4, r2, #0
    8734:	d1f6      	bne.n	8724 <rt_tsk_delete+0x80>
    8736:	4643      	mov	r3, r8
    8738:	681a      	ldr	r2, [r3, #0]
    873a:	2400      	movs	r4, #0
    873c:	78d3      	ldrb	r3, [r2, #3]
    873e:	4939      	ldr	r1, [pc, #228]	; (8824 <rt_tsk_delete+0x180>)
    8740:	3b01      	subs	r3, #1
    8742:	009b      	lsls	r3, r3, #2
    8744:	505c      	str	r4, [r3, r1]
    8746:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
    8748:	4837      	ldr	r0, [pc, #220]	; (8828 <rt_tsk_delete+0x184>)
    874a:	f7fe fef5 	bl	7538 <rt_free_box>
    874e:	4643      	mov	r3, r8
    8750:	6819      	ldr	r1, [r3, #0]
    8752:	4836      	ldr	r0, [pc, #216]	; (882c <rt_tsk_delete+0x188>)
    8754:	62cc      	str	r4, [r1, #44]	; 0x2c
    8756:	f7fe feef 	bl	7538 <rt_free_box>
    875a:	4643      	mov	r3, r8
    875c:	601c      	str	r4, [r3, #0]
    875e:	0038      	movs	r0, r7
    8760:	f7ff fa7a 	bl	7c58 <rt_get_first>
    8764:	4643      	mov	r3, r8
    8766:	6058      	str	r0, [r3, #4]
    8768:	2302      	movs	r3, #2
    876a:	7043      	strb	r3, [r0, #1]
    876c:	2300      	movs	r3, #0
    876e:	e7ac      	b.n	86ca <rt_tsk_delete+0x26>
    8770:	4a2c      	ldr	r2, [pc, #176]	; (8824 <rt_tsk_delete+0x180>)
    8772:	1e46      	subs	r6, r0, #1
    8774:	4692      	mov	sl, r2
    8776:	00b2      	lsls	r2, r6, #2
    8778:	4693      	mov	fp, r2
    877a:	4652      	mov	r2, sl
    877c:	4659      	mov	r1, fp
    877e:	5856      	ldr	r6, [r2, r1]
    8780:	2e00      	cmp	r6, #0
    8782:	d0a2      	beq.n	86ca <rt_tsk_delete+0x26>
    8784:	0030      	movs	r0, r6
    8786:	f7ff fb89 	bl	7e9c <rt_rmv_list>
    878a:	0030      	movs	r0, r6
    878c:	f7ff fb9c 	bl	7ec8 <rt_rmv_dly>
    8790:	2301      	movs	r3, #1
    8792:	6a34      	ldr	r4, [r6, #32]
    8794:	4f22      	ldr	r7, [pc, #136]	; (8820 <rt_tsk_delete+0x17c>)
    8796:	4699      	mov	r9, r3
    8798:	2c00      	cmp	r4, #0
    879a:	d11a      	bne.n	87d2 <rt_tsk_delete+0x12e>
    879c:	e022      	b.n	87e4 <rt_tsk_delete+0x140>
    879e:	0020      	movs	r0, r4
    87a0:	f7ff fa5a 	bl	7c58 <rt_get_first>
    87a4:	0005      	movs	r5, r0
    87a6:	2100      	movs	r1, #0
    87a8:	f7fe fe24 	bl	73f4 <rt_ret_val>
    87ac:	0028      	movs	r0, r5
    87ae:	f7ff fb8b 	bl	7ec8 <rt_rmv_dly>
    87b2:	464b      	mov	r3, r9
    87b4:	0029      	movs	r1, r5
    87b6:	706b      	strb	r3, [r5, #1]
    87b8:	0038      	movs	r0, r7
    87ba:	f7ff fa27 	bl	7c0c <rt_put_prio>
    87be:	464a      	mov	r2, r9
    87c0:	68e3      	ldr	r3, [r4, #12]
    87c2:	8062      	strh	r2, [r4, #2]
    87c4:	6a2a      	ldr	r2, [r5, #32]
    87c6:	60a5      	str	r5, [r4, #8]
    87c8:	60e2      	str	r2, [r4, #12]
    87ca:	622c      	str	r4, [r5, #32]
    87cc:	001c      	movs	r4, r3
    87ce:	2c00      	cmp	r4, #0
    87d0:	d008      	beq.n	87e4 <rt_tsk_delete+0x140>
    87d2:	6863      	ldr	r3, [r4, #4]
    87d4:	2b00      	cmp	r3, #0
    87d6:	d1e2      	bne.n	879e <rt_tsk_delete+0xfa>
    87d8:	68e2      	ldr	r2, [r4, #12]
    87da:	8063      	strh	r3, [r4, #2]
    87dc:	60a3      	str	r3, [r4, #8]
    87de:	60e3      	str	r3, [r4, #12]
    87e0:	0014      	movs	r4, r2
    87e2:	e7f4      	b.n	87ce <rt_tsk_delete+0x12a>
    87e4:	4653      	mov	r3, sl
    87e6:	465a      	mov	r2, fp
    87e8:	2400      	movs	r4, #0
    87ea:	509c      	str	r4, [r3, r2]
    87ec:	6af1      	ldr	r1, [r6, #44]	; 0x2c
    87ee:	480e      	ldr	r0, [pc, #56]	; (8828 <rt_tsk_delete+0x184>)
    87f0:	f7fe fea2 	bl	7538 <rt_free_box>
    87f4:	0031      	movs	r1, r6
    87f6:	62f4      	str	r4, [r6, #44]	; 0x2c
    87f8:	480c      	ldr	r0, [pc, #48]	; (882c <rt_tsk_delete+0x188>)
    87fa:	f7fe fe9d 	bl	7538 <rt_free_box>
    87fe:	4643      	mov	r3, r8
    8800:	6819      	ldr	r1, [r3, #0]
    8802:	687b      	ldr	r3, [r7, #4]
    8804:	789a      	ldrb	r2, [r3, #2]
    8806:	788b      	ldrb	r3, [r1, #2]
    8808:	429a      	cmp	r2, r3
    880a:	d9af      	bls.n	876c <rt_tsk_delete+0xc8>
    880c:	2301      	movs	r3, #1
    880e:	0038      	movs	r0, r7
    8810:	704b      	strb	r3, [r1, #1]
    8812:	f7ff f9fb 	bl	7c0c <rt_put_prio>
    8816:	e7a2      	b.n	875e <rt_tsk_delete+0xba>
    8818:	200060b8 	.word	0x200060b8
    881c:	00008b04 	.word	0x00008b04
    8820:	20006084 	.word	0x20006084
    8824:	20004cdc 	.word	0x20004cdc
    8828:	200009e8 	.word	0x200009e8
    882c:	20000908 	.word	0x20000908

00008830 <rt_sys_init>:
    8830:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8832:	4b2b      	ldr	r3, [pc, #172]	; (88e0 <rt_sys_init+0xb0>)
    8834:	881a      	ldrh	r2, [r3, #0]
    8836:	2a00      	cmp	r2, #0
    8838:	d004      	beq.n	8844 <rt_sys_init+0x14>
    883a:	0092      	lsls	r2, r2, #2
    883c:	2100      	movs	r1, #0
    883e:	4829      	ldr	r0, [pc, #164]	; (88e4 <rt_sys_init+0xb4>)
    8840:	f7fc fbd8 	bl	4ff4 <memset>
    8844:	4b28      	ldr	r3, [pc, #160]	; (88e8 <rt_sys_init+0xb8>)
    8846:	2234      	movs	r2, #52	; 0x34
    8848:	8819      	ldrh	r1, [r3, #0]
    884a:	4828      	ldr	r0, [pc, #160]	; (88ec <rt_sys_init+0xbc>)
    884c:	f7fe fe28 	bl	74a0 <_init_box>
    8850:	2280      	movs	r2, #128	; 0x80
    8852:	4b27      	ldr	r3, [pc, #156]	; (88f0 <rt_sys_init+0xc0>)
    8854:	0612      	lsls	r2, r2, #24
    8856:	881b      	ldrh	r3, [r3, #0]
    8858:	4f26      	ldr	r7, [pc, #152]	; (88f4 <rt_sys_init+0xc4>)
    885a:	431a      	orrs	r2, r3
    885c:	4b26      	ldr	r3, [pc, #152]	; (88f8 <rt_sys_init+0xc8>)
    885e:	0038      	movs	r0, r7
    8860:	6819      	ldr	r1, [r3, #0]
    8862:	f7fe fe1d 	bl	74a0 <_init_box>
    8866:	4b25      	ldr	r3, [pc, #148]	; (88fc <rt_sys_init+0xcc>)
    8868:	2208      	movs	r2, #8
    886a:	6818      	ldr	r0, [r3, #0]
    886c:	4b24      	ldr	r3, [pc, #144]	; (8900 <rt_sys_init+0xd0>)
    886e:	2600      	movs	r6, #0
    8870:	8819      	ldrh	r1, [r3, #0]
    8872:	f7fe fe15 	bl	74a0 <_init_box>
    8876:	23ff      	movs	r3, #255	; 0xff
    8878:	2500      	movs	r5, #0
    887a:	4c22      	ldr	r4, [pc, #136]	; (8904 <rt_sys_init+0xd4>)
    887c:	0038      	movs	r0, r7
    887e:	70e3      	strb	r3, [r4, #3]
    8880:	3bfe      	subs	r3, #254	; 0xfe
    8882:	7063      	strb	r3, [r4, #1]
    8884:	3323      	adds	r3, #35	; 0x23
    8886:	54e6      	strb	r6, [r4, r3]
    8888:	3301      	adds	r3, #1
    888a:	54e6      	strb	r6, [r4, r3]
    888c:	84e5      	strh	r5, [r4, #38]	; 0x26
    888e:	7026      	strb	r6, [r4, #0]
    8890:	70a6      	strb	r6, [r4, #2]
    8892:	6065      	str	r5, [r4, #4]
    8894:	60a5      	str	r5, [r4, #8]
    8896:	60e5      	str	r5, [r4, #12]
    8898:	6125      	str	r5, [r4, #16]
    889a:	6225      	str	r5, [r4, #32]
    889c:	82a5      	strh	r5, [r4, #20]
    889e:	82e5      	strh	r5, [r4, #22]
    88a0:	8325      	strh	r5, [r4, #24]
    88a2:	8365      	strh	r5, [r4, #26]
    88a4:	f7fe fe28 	bl	74f8 <rt_alloc_box>
    88a8:	4917      	ldr	r1, [pc, #92]	; (8908 <rt_sys_init+0xd8>)
    88aa:	62e0      	str	r0, [r4, #44]	; 0x2c
    88ac:	0020      	movs	r0, r4
    88ae:	f7fe fd49 	bl	7344 <rt_init_stack>
    88b2:	2204      	movs	r2, #4
    88b4:	4b15      	ldr	r3, [pc, #84]	; (890c <rt_sys_init+0xdc>)
    88b6:	701a      	strb	r2, [r3, #0]
    88b8:	605d      	str	r5, [r3, #4]
    88ba:	4b15      	ldr	r3, [pc, #84]	; (8910 <rt_sys_init+0xe0>)
    88bc:	701a      	strb	r2, [r3, #0]
    88be:	60dd      	str	r5, [r3, #12]
    88c0:	611d      	str	r5, [r3, #16]
    88c2:	829d      	strh	r5, [r3, #20]
    88c4:	4b13      	ldr	r3, [pc, #76]	; (8914 <rt_sys_init+0xe4>)
    88c6:	4a14      	ldr	r2, [pc, #80]	; (8918 <rt_sys_init+0xe8>)
    88c8:	601c      	str	r4, [r3, #0]
    88ca:	2302      	movs	r3, #2
    88cc:	7812      	ldrb	r2, [r2, #0]
    88ce:	7063      	strb	r3, [r4, #1]
    88d0:	4b12      	ldr	r3, [pc, #72]	; (891c <rt_sys_init+0xec>)
    88d2:	701e      	strb	r6, [r3, #0]
    88d4:	705e      	strb	r6, [r3, #1]
    88d6:	70da      	strb	r2, [r3, #3]
    88d8:	f000 f85a 	bl	8990 <rt_init_robin>
    88dc:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    88de:	46c0      	nop			; (mov r8, r8)
    88e0:	00008b04 	.word	0x00008b04
    88e4:	20004cdc 	.word	0x20004cdc
    88e8:	00008b30 	.word	0x00008b30
    88ec:	20000908 	.word	0x20000908
    88f0:	00008b08 	.word	0x00008b08
    88f4:	200009e8 	.word	0x200009e8
    88f8:	00008b34 	.word	0x00008b34
    88fc:	20004d18 	.word	0x20004d18
    8900:	00008b58 	.word	0x00008b58
    8904:	200060c0 	.word	0x200060c0
    8908:	0000196d 	.word	0x0000196d
    890c:	20006084 	.word	0x20006084
    8910:	2000609c 	.word	0x2000609c
    8914:	200060b8 	.word	0x200060b8
    8918:	00008b3c 	.word	0x00008b3c
    891c:	20004c58 	.word	0x20004c58

00008920 <rt_sys_start>:
    8920:	21ff      	movs	r1, #255	; 0xff
    8922:	4b16      	ldr	r3, [pc, #88]	; (897c <rt_sys_start+0x5c>)
    8924:	0409      	lsls	r1, r1, #16
    8926:	681a      	ldr	r2, [r3, #0]
    8928:	b510      	push	{r4, lr}
    892a:	430a      	orrs	r2, r1
    892c:	601a      	str	r2, [r3, #0]
    892e:	681b      	ldr	r3, [r3, #0]
    8930:	4913      	ldr	r1, [pc, #76]	; (8980 <rt_sys_start+0x60>)
    8932:	025b      	lsls	r3, r3, #9
    8934:	680a      	ldr	r2, [r1, #0]
    8936:	0e9b      	lsrs	r3, r3, #26
    8938:	069b      	lsls	r3, r3, #26
    893a:	4313      	orrs	r3, r2
    893c:	600b      	str	r3, [r1, #0]
    893e:	f7ff fd0d 	bl	835c <os_tick_init>
    8942:	4c10      	ldr	r4, [pc, #64]	; (8984 <rt_sys_start+0x64>)
    8944:	6020      	str	r0, [r4, #0]
    8946:	2800      	cmp	r0, #0
    8948:	db17      	blt.n	897a <rt_sys_start+0x5a>
    894a:	4a0f      	ldr	r2, [pc, #60]	; (8988 <rt_sys_start+0x68>)
    894c:	0883      	lsrs	r3, r0, #2
    894e:	4694      	mov	ip, r2
    8950:	2218      	movs	r2, #24
    8952:	00c0      	lsls	r0, r0, #3
    8954:	4010      	ands	r0, r2
    8956:	32e7      	adds	r2, #231	; 0xe7
    8958:	4082      	lsls	r2, r0
    895a:	009b      	lsls	r3, r3, #2
    895c:	4463      	add	r3, ip
    895e:	6819      	ldr	r1, [r3, #0]
    8960:	430a      	orrs	r2, r1
    8962:	490a      	ldr	r1, [pc, #40]	; (898c <rt_sys_start+0x6c>)
    8964:	601a      	str	r2, [r3, #0]
    8966:	468c      	mov	ip, r1
    8968:	211f      	movs	r1, #31
    896a:	6822      	ldr	r2, [r4, #0]
    896c:	0953      	lsrs	r3, r2, #5
    896e:	400a      	ands	r2, r1
    8970:	391e      	subs	r1, #30
    8972:	4091      	lsls	r1, r2
    8974:	009b      	lsls	r3, r3, #2
    8976:	4463      	add	r3, ip
    8978:	6019      	str	r1, [r3, #0]
    897a:	bd10      	pop	{r4, pc}
    897c:	e000ed20 	.word	0xe000ed20
    8980:	e000ed1c 	.word	0xe000ed1c
    8984:	200060b4 	.word	0x200060b4
    8988:	e000e400 	.word	0xe000e400
    898c:	e000e100 	.word	0xe000e100

00008990 <rt_init_robin>:
    8990:	2200      	movs	r2, #0
    8992:	4b03      	ldr	r3, [pc, #12]	; (89a0 <rt_init_robin+0x10>)
    8994:	601a      	str	r2, [r3, #0]
    8996:	4a03      	ldr	r2, [pc, #12]	; (89a4 <rt_init_robin+0x14>)
    8998:	6812      	ldr	r2, [r2, #0]
    899a:	80da      	strh	r2, [r3, #6]
    899c:	4770      	bx	lr
    899e:	46c0      	nop			; (mov r8, r8)
    89a0:	200060f4 	.word	0x200060f4
    89a4:	00008b0c 	.word	0x00008b0c

000089a8 <rt_chk_robin>:
    89a8:	b510      	push	{r4, lr}
    89aa:	4a0f      	ldr	r2, [pc, #60]	; (89e8 <rt_chk_robin+0x40>)
    89ac:	4c0f      	ldr	r4, [pc, #60]	; (89ec <rt_chk_robin+0x44>)
    89ae:	6811      	ldr	r1, [r2, #0]
    89b0:	6863      	ldr	r3, [r4, #4]
    89b2:	4299      	cmp	r1, r3
    89b4:	d014      	beq.n	89e0 <rt_chk_robin+0x38>
    89b6:	6013      	str	r3, [r2, #0]
    89b8:	4b0d      	ldr	r3, [pc, #52]	; (89f0 <rt_chk_robin+0x48>)
    89ba:	8819      	ldrh	r1, [r3, #0]
    89bc:	88d3      	ldrh	r3, [r2, #6]
    89be:	3b01      	subs	r3, #1
    89c0:	18cb      	adds	r3, r1, r3
    89c2:	b29b      	uxth	r3, r3
    89c4:	8093      	strh	r3, [r2, #4]
    89c6:	4299      	cmp	r1, r3
    89c8:	d000      	beq.n	89cc <rt_chk_robin+0x24>
    89ca:	bd10      	pop	{r4, pc}
    89cc:	2300      	movs	r3, #0
    89ce:	0020      	movs	r0, r4
    89d0:	6013      	str	r3, [r2, #0]
    89d2:	f7ff f941 	bl	7c58 <rt_get_first>
    89d6:	0001      	movs	r1, r0
    89d8:	0020      	movs	r0, r4
    89da:	f7ff f917 	bl	7c0c <rt_put_prio>
    89de:	e7f4      	b.n	89ca <rt_chk_robin+0x22>
    89e0:	4b03      	ldr	r3, [pc, #12]	; (89f0 <rt_chk_robin+0x48>)
    89e2:	8819      	ldrh	r1, [r3, #0]
    89e4:	8893      	ldrh	r3, [r2, #4]
    89e6:	e7ee      	b.n	89c6 <rt_chk_robin+0x1e>
    89e8:	200060f4 	.word	0x200060f4
    89ec:	20006084 	.word	0x20006084
    89f0:	20006080 	.word	0x20006080
    89f4:	00000000 	.word	0x00000000

000089f8 <__eeprom_erase_page_veneer>:
    89f8:	b401      	push	{r0}
    89fa:	4802      	ldr	r0, [pc, #8]	; (8a04 <__eeprom_erase_page_veneer+0xc>)
    89fc:	4684      	mov	ip, r0
    89fe:	bc01      	pop	{r0}
    8a00:	4760      	bx	ip
    8a02:	bf00      	nop
    8a04:	2010002d 	.word	0x2010002d

00008a08 <__eeprom_read_word_veneer>:
    8a08:	b401      	push	{r0}
    8a0a:	4802      	ldr	r0, [pc, #8]	; (8a14 <__eeprom_read_word_veneer+0xc>)
    8a0c:	4684      	mov	ip, r0
    8a0e:	bc01      	pop	{r0}
    8a10:	4760      	bx	ip
    8a12:	bf00      	nop
    8a14:	20100229 	.word	0x20100229

00008a18 <__eeprom_program_word_veneer>:
    8a18:	b401      	push	{r0}
    8a1a:	4802      	ldr	r0, [pc, #8]	; (8a24 <__eeprom_program_word_veneer+0xc>)
    8a1c:	4684      	mov	ip, r0
    8a1e:	bc01      	pop	{r0}
    8a20:	4760      	bx	ip
    8a22:	bf00      	nop
    8a24:	20100151 	.word	0x20100151

00008a28 <threadPacketParserDef>:
    8a28:	00002fa1 00000001 00000001 00000400     ./..............

00008a38 <threadFSMProceedDef>:
    8a38:	0000044d 00000000 00000001 00000400     M...............

00008a48 <threadDUTProceedDef>:
    8a48:	00000305 00000000 00000001 00000400     ................

00008a58 <message_def>:
    8a58:	00000004 20000868                       ....h.. 

00008a60 <os_mutex_def_MutexMdbReg>:
    8a60:	2000088c 74697865 00000000 70616548     ... exit....Heap
    8a70:	646e6120 61747320 63206b63 696c6c6f      and stack colli
    8a80:	6e6f6973 0000000a 0000138e 0000137c     sion........|...
    8a90:	0000139a 000013a6 000013a6 000013a6     ................
    8aa0:	000013a6 000013a6 000013a6 000013a6     ................
    8ab0:	000013a6 000013a6 000013a6 00001394     ................
    8ac0:	000013a6 000013a6 000013a6 00001320     ............ ...
    8ad0:	000013a6 0000139a 000013a6 000013a6     ................
    8ae0:	000013a0 6c383025 00002058 32302520     ....%08lX .. %02
    8af0:	00000058 34302520 00000058 38302520     X... %04X... %08
    8b00:	0000584c                                LX..

00008b04 <os_maxtaskrun>:
    8b04:	00000004                                ....

00008b08 <os_stackinfo>:
    8b08:	01021000                                ....

00008b0c <os_rrobin>:
    8b0c:	00010005                                ....

00008b10 <os_tickfreq>:
    8b10:	04c4b400                                ....

00008b14 <os_tickus_i>:
    8b14:	00000050                                         P.

00008b16 <os_tickus_f>:
	...

00008b18 <os_trv>:
    8b18:	0001387f                                .8..

00008b1c <os_flags>:
    8b1c:	00000001                                ....

00008b20 <CMSIS_RTOS_API_Version>:
    8b20:	00010002                                ....

00008b24 <CMSIS_RTOS_RTX_Version>:
    8b24:	00040052                                R...

00008b28 <os_clockrate>:
    8b28:	000003e8                                ....

00008b2c <os_timernum>:
    8b2c:	00000000                                ....

00008b30 <mp_tcb_size>:
    8b30:	000000dc                                ....

00008b34 <mp_stk_size>:
    8b34:	00003010                                .0..

00008b38 <os_stack_sz>:
    8b38:	00001260                                `...

00008b3c <os_fifo_size>:
    8b3c:	00000010                                ....

00008b40 <os_thread_def_osTimerThread>:
    8b40:	000065ad 00000002 00000001 00000200     .e..............

00008b50 <os_messageQ_def_osTimerMessageQ>:
    8b50:	00000004 20004cf0                       .....L. 

00008b58 <mp_tmr_size>:
    8b58:	00000000                                ....

00008b5c <os_thread_def_main>:
    8b5c:	000001a1 00000000 00000001 00000040     ............@...

00008b6c <os_mutex_def_readpackMutex>:
    8b6c:	2000531c                                .S. 

00008b70 <os_mutex_def_sendpackMutex>:
    8b70:	20005330                                0S. 

00008b74 <crc_table>:
    8b74:	00000000 77073096 ee0e612c 990951ba     .....0.w,a...Q..
    8b84:	076dc419 706af48f e963a535 9e6495a3     ..m...jp5.c...d.
    8b94:	0edb8832 79dcb8a4 e0d5e91e 97d2d988     2......y........
    8ba4:	09b64c2b 7eb17cbd e7b82d07 90bf1d91     +L...|.~.-......
    8bb4:	1db71064 6ab020f2 f3b97148 84be41de     d.... .jHq...A..
    8bc4:	1adad47d 6ddde4eb f4d4b551 83d385c7     }......mQ.......
    8bd4:	136c9856 646ba8c0 fd62f97a 8a65c9ec     V.l...kdz.b...e.
    8be4:	14015c4f 63066cd9 fa0f3d63 8d080df5     O\...l.cc=......
    8bf4:	3b6e20c8 4c69105e d56041e4 a2677172     . n;^.iL.A`.rqg.
    8c04:	3c03e4d1 4b04d447 d20d85fd a50ab56b     ...<G..K....k...
    8c14:	35b5a8fa 42b2986c dbbbc9d6 acbcf940     ...5l..B....@...
    8c24:	32d86ce3 45df5c75 dcd60dcf abd13d59     .l.2u\.E....Y=..
    8c34:	26d930ac 51de003a c8d75180 bfd06116     .0.&:..Q.Q...a..
    8c44:	21b4f4b5 56b3c423 cfba9599 b8bda50f     ...!#..V........
    8c54:	2802b89e 5f058808 c60cd9b2 b10be924     ...(..._....$...
    8c64:	2f6f7c87 58684c11 c1611dab b6662d3d     .|o/.LhX..a.=-f.
    8c74:	76dc4190 01db7106 98d220bc efd5102a     .A.v.q... ..*...
    8c84:	71b18589 06b6b51f 9fbfe4a5 e8b8d433     ...q........3...
    8c94:	7807c9a2 0f00f934 9609a88e e10e9818     ...x4...........
    8ca4:	7f6a0dbb 086d3d2d 91646c97 e6635c01     ..j.-=m..ld..\c.
    8cb4:	6b6b51f4 1c6c6162 856530d8 f262004e     .Qkkbal..0e.N.b.
    8cc4:	6c0695ed 1b01a57b 8208f4c1 f50fc457     ...l{.......W...
    8cd4:	65b0d9c6 12b7e950 8bbeb8ea fcb9887c     ...eP.......|...
    8ce4:	62dd1ddf 15da2d49 8cd37cf3 fbd44c65     ...bI-...|..eL..
    8cf4:	4db26158 3ab551ce a3bc0074 d4bb30e2     Xa.M.Q.:t....0..
    8d04:	4adfa541 3dd895d7 a4d1c46d d3d6f4fb     A..J...=m.......
    8d14:	4369e96a 346ed9fc ad678846 da60b8d0     j.iC..n4F.g...`.
    8d24:	44042d73 33031de5 aa0a4c5f dd0d7cc9     s-.D...3_L...|..
    8d34:	5005713c 270241aa be0b1010 c90c2086     <q.P.A.'..... ..
    8d44:	5768b525 206f85b3 b966d409 ce61e49f     %.hW..o ..f...a.
    8d54:	5edef90e 29d9c998 b0d09822 c7d7a8b4     ...^...)".......
    8d64:	59b33d17 2eb40d81 b7bd5c3b c0ba6cad     .=.Y....;\...l..
    8d74:	edb88320 9abfb3b6 03b6e20c 74b1d29a      ..............t
    8d84:	ead54739 9dd277af 04db2615 73dc1683     9G...w...&.....s
    8d94:	e3630b12 94643b84 0d6d6a3e 7a6a5aa8     ..c..;d.>jm..Zjz
    8da4:	e40ecf0b 9309ff9d 0a00ae27 7d079eb1     ........'......}
    8db4:	f00f9344 8708a3d2 1e01f268 6906c2fe     D.......h......i
    8dc4:	f762575d 806567cb 196c3671 6e6b06e7     ]Wb..ge.q6l...kn
    8dd4:	fed41b76 89d32be0 10da7a5a 67dd4acc     v....+..Zz...J.g
    8de4:	f9b9df6f 8ebeeff9 17b7be43 60b08ed5     o.......C......`
    8df4:	d6d6a3e8 a1d1937e 38d8c2c4 4fdff252     ....~......8R..O
    8e04:	d1bb67f1 a6bc5767 3fb506dd 48b2364b     .g..gW.....?K6.H
    8e14:	d80d2bda af0a1b4c 36034af6 41047a60     .+..L....J.6`z.A
    8e24:	df60efc3 a867df55 316e8eef 4669be79     ..`.U.g...n1y.iF
    8e34:	cb61b38c bc66831a 256fd2a0 5268e236     ..a...f...o%6.hR
    8e44:	cc0c7795 bb0b4703 220216b9 5505262f     .w...G....."/&.U
    8e54:	c5ba3bbe b2bd0b28 2bb45a92 5cb36a04     .;..(....Z.+.j.\
    8e64:	c2d7ffa7 b5d0cf31 2cd99e8b 5bdeae1d     ....1......,...[
    8e74:	9b64c2b0 ec63f226 756aa39c 026d930a     ..d.&.c...ju..m.
    8e84:	9c0906a9 eb0e363f 72076785 05005713     ....?6...g.r.W..
    8e94:	95bf4a82 e2b87a14 7bb12bae 0cb61b38     .J...z...+.{8...
    8ea4:	92d28e9b e5d5be0d 7cdcefb7 0bdbdf21     ...........|!...
    8eb4:	86d3d2d4 f1d4e242 68ddb3f8 1fda836e     ....B......hn...
    8ec4:	81be16cd f6b9265b 6fb077e1 18b74777     ....[&...w.owG..
    8ed4:	88085ae6 ff0f6a70 66063bca 11010b5c     .Z..pj...;.f\...
    8ee4:	8f659eff f862ae69 616bffd3 166ccf45     ..e.i.b...kaE.l.
    8ef4:	a00ae278 d70dd2ee 4e048354 3903b3c2     x.......T..N...9
    8f04:	a7672661 d06016f7 4969474d 3e6e77db     a&g...`.MGiI.wn>
    8f14:	aed16a4a d9d65adc 40df0b66 37d83bf0     Jj...Z..f..@.;.7
    8f24:	a9bcae53 debb9ec5 47b2cf7f 30b5ffe9     S..........G...0
    8f34:	bdbdf21c cabac28a 53b39330 24b4a3a6     ........0..S...$
    8f44:	bad03605 cdd70693 54de5729 23d967bf     .6......)W.T.g.#
    8f54:	b3667a2e c4614ab8 5d681b02 2a6f2b94     .zf..Ja...h].+o*
    8f64:	b40bbe37 c30c8ea1 5a05df1b 2d02ef8d     7..........Z...-

00008f74 <crc_table_low>:
    8f74:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8f84:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8f94:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8fa4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8fb4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8fc4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8fd4:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    8fe4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    8ff4:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    9004:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    9014:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    9024:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    9034:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@
    9044:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    9054:	4180c001 4081c100 4081c100 4180c001     ...A...@...@...A
    9064:	4081c100 4180c001 4180c001 4081c100     ...@...A...A...@

00009074 <crc_table_high>:
    9074:	01c1c000 c20203c3 c70706c6 04c4c505     ................
    9084:	cd0d0ccc 0ececf0f 0bcbca0a c80809c9     ................
    9094:	d91918d8 1adadb1b 1fdfde1e dc1c1ddd     ................
    90a4:	15d5d414 d61617d7 d31312d2 10d0d111     ................
    90b4:	f13130f0 32f2f333 37f7f636 f43435f5     .01.3..26..7.54.
    90c4:	3dfdfc3c fe3e3fff fb3b3afa 38f8f939     <..=.?>..:;.9..8
    90d4:	29e9e828 ea2a2beb ef2f2eee 2ceced2d     (..).+*.../.-..,
    90e4:	e52524e4 26e6e727 23e3e222 e02021e1     .$%.'..&"..#.! .
    90f4:	a16160a0 62a2a363 67a7a666 a46465a5     .`a.c..bf..g.ed.
    9104:	6dadac6c ae6e6faf ab6b6aaa 68a8a969     l..m.on..jk.i..h
    9114:	79b9b878 ba7a7bbb bf7f7ebe 7cbcbd7d     x..y.{z..~..}..|
    9124:	b57574b4 76b6b777 73b3b272 b07071b1     .tu.w..vr..s.qp.
    9134:	51919050 92525393 97575696 54949555     P..Q.SR..VW.U..T
    9144:	9d5d5c9c 5e9e9f5f 5b9b9a5a 98585999     .\]._..^Z..[.YX.
    9154:	89494888 4a8a8b4b 4f8f8e4e 8c4c4d8d     .HI.K..JN..O.ML.
    9164:	45858444 86464787 83434282 40808141     D..E.GF..BC.A..@

00009174 <defBsiParam>:
    9174:	56789abc 00011234 00020a00 00000a00     ..xV4...........
    9184:	00000000                                ....

00009188 <device_additional_info>:
    9188:	31554153 6e6f6320 6f727472 72656c6c     SAU1 conrtroller
    9198:	00000000                                ....

0000919c <proc_PDU_table>:
    919c:	00003f45 00003f45 00003f45 00003e09     E?..E?..E?...>..
    91ac:	000038a9 00003f45 00003f45 00003f45     .8..E?..E?..E?..
    91bc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    91cc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    91dc:	000039f9 00003811 00003f45 00003f45     .9...8..E?..E?..
    91ec:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    91fc:	00003bfd 00003f45 00003f45 00003f45     .;..E?..E?..E?..
    920c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    921c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    922c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    923c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    924c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    925c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    926c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    927c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    928c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    929c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    92ac:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    92bc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    92cc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    92dc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    92ec:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    92fc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    930c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    931c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    932c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    933c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    934c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    935c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    936c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    937c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    938c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    939c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    93ac:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    93bc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    93cc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    93dc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    93ec:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    93fc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    940c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    941c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    942c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    943c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    944c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    945c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    946c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    947c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    948c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    949c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    94ac:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    94bc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    94cc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    94dc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    94ec:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    94fc:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    950c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    951c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    952c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    953c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    954c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    955c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    956c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    957c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..
    958c:	00003f45 00003f45 00003f45 00003f45     E?..E?..E?..E?..

0000959c <_global_impure_ptr>:
    959c:	20000018                                ... 

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
